unit LSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, OracleUniProvider, Uni, DBAccess, MemDS,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, cxCurrencyEdit, cxCalendar,
  glComponentFilterGroup,glComponentUtil, GLComponentFilterCxGroup,
  cxContainer, cxGroupBox, cxPC, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxNavigator,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  Vcl.ExtCtrls;

type
  TfrmLedgerSearch = class(TForm)
    qryLedgers: TUniQuery;
    dsMatters: TUniDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
    grdChart: TcxGrid;
    tvChart: TcxGridDBTableView;
    tvChartCODE: TcxGridDBColumn;
    tvChartREPORT_DESC: TcxGridDBColumn;
    tvChartTYPE: TcxGridDBColumn;
    tvChartREPORT_LEVEL: TcxGridDBColumn;
    tvChartADDTO: TcxGridDBColumn;
    tvChartBALANCE: TcxGridDBColumn;
    grdChartLevel1: TcxGridLevel;
    tabFilters: TcxTabSheet;
    fraEqual: TcxGroupBox;
    Label4: TLabel;
    tbType: TEdit;
    Label6: TLabel;
    fraIncludes: TcxGroupBox;
    Label5: TLabel;
    tbDesc: TEdit;
    gbLess: TcxGroupBox;
    Label3: TLabel;
    tbBalanceLess: TEdit;
    tbBalanceGreater: TEdit;
    Label2: TLabel;
    glLedger: TGLComponentFilterCxGroup;
    btnClear: TBitBtn;
    Panel1: TPanel;
    Label7: TLabel;
    tbLedgerSearch: TEdit;
    btnNew: TBitBtn;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrLedgersDblClick(Sender: TObject);
    procedure dbgrLedgersColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewClick(Sender: TObject);
    procedure tbLedgerSearchChange(Sender: TObject);
    procedure tbLedgerSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    
    procedure MakeSQL;

  public
    { Public declarations }
  end;

var
  frmLedgerSearch: TfrmLedgerSearch;
  sSQL : string;
  sWhereClause : string;
  sOrderBy : string;
  glComponentSetup : TglComponentSetup;

implementation

uses
  AxiomData, LedgerNew, MiscFunc;

{$R *.DFM}


procedure TfrmLedgerSearch.btnClearAllClick(Sender: TObject);
begin
  tbType.Text := '';
  tbDesc.Text := '';
  tbBalanceLess.Text := '';
  tbBalanceGreater.Text := '';
  glLedger.clearFields;
end;

procedure TfrmLedgerSearch.FormShow(Sender: TObject);
begin
  tbType.Text := SettingLoadString('Ledger Search', 'Type');
  tbDesc.Text := SettingLoadString('Ledger Search', 'Descr');
  tbBalanceLess.Text := SettingLoadString('Ledger Search', 'Balance Less');
  tbBalanceGreater.Text := SettingLoadString('Ledger Search', 'Balance Greater');
  pageSearch.ActivePage := tabGrid;
//  dbgrLedgers.SetFocus;
  MakeSQL;
  if tbLedgerSearch.Visible then
    tbLedgerSearch.SetFocus;
end;


procedure TfrmLedgerSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
      tbLedgerSearch.SetFocus;
    end;
  end;
end;

procedure TfrmLedgerSearch.dbgrLedgersDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;


procedure TfrmLedgerSearch.MakeSQL;
var
  iCtr : integer;
  sOR : string;
  sChartWhere : String;
begin
   // Build the SQL Filter query
   qryLedgers.Close;
   sWhereClause := ' WHERE BANK = ' + QuotedStr(dmAxiom.Entity);
   sWhereClause := sWhereClause + ' AND ALLOW_DIRECT_POSTING = ''Y'' ';
   if Length(tbType.Text) > 0 then
   begin
      sOR := '';
      sWhereClause := sWhereClause + ' AND (';
      for iCtr := 1 to Length(tbType.Text) do
      begin
         sWhereClause := sWhereClause + sOR + '(TYPE = ''' + Uppercase(Copy(tbType.Text, iCtr, 1)) + ''')';
         sOR := ' OR '
      end;
      sWhereClause := sWhereClause + ')';
   end;

   if tbDesc.Text <> '' then
      sWhereClause := sWhereClause + ' AND REPORT_DESC LIKE ' + QuotedStr('%' + tbDesc.Text + '%');
   if tbBalanceGreater.Text <> '' then
      sWhereClause := sWhereClause + ' AND BALANCE > ' + tbBalanceGreater.Text;
   if tbBalanceLess.Text <> '' then
      sWhereClause := sWhereClause + ' AND BALANCE > ' + tbBalanceLess.Text;

   sChartWhere := glLedger.getChartWhereClause('');
   if sChartWhere <> '' then
      sWhereClause := sWhereClause + ' and ' + sChartWhere;

   if tbLedgerSearch.Text <> '' then
      sWhereClause := sWhereClause + ' AND contains(dummy,' + QuotedStr('%' + tbLedgerSearch.Text + '%') + ',1) > 0';

   qryLedgers.SQL.Clear;
   qryLedgers.SQL.Add(sSQL + sWhereClause + sOrderBy);
   qryLedgers.Open;
end;


procedure TfrmLedgerSearch.dbgrLedgersColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
begin
{  qryLedgers.Close;
  sOrderBy := 'ORDER BY';
  sComma := ' ';
  bFinished := False;
  iCtr := 0;
  while (iCtr < dbgrLedgers.Columns.Count) and (not bFinished) do
  begin
    sOrderBy := sOrderBy + sComma + dbgrLedgers.Columns[iCtr].FieldName;
    if (dbgrLedgers.Columns[iCtr].FieldName = 'CODE') then
      bFinished := True;
    iCtr := iCtr + 1;
    sComma := ', ';
  end;
  qryLedgers.SQL.Clear;
  qryLedgers.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryLedgers.Open;  }
end;

procedure TfrmLedgerSearch.FormCreate(Sender: TObject);
begin
  sSQL := 'SELECT BANK,  nvl(COMPONENT_CODE_DISPLAY,CODE) AS CODE, REPORT_DESC, TYPE, REPORT_LEVEL, BALANCE, ADDTO, CODE as CHART FROM CHART ';
  sOrderBy := ' ORDER BY  nvl(COMPONENT_CODE_DISPLAY,CODE) ';
  // add the component filter
  //glComponentFilter := TglComponentFilter.create(gbComponent,dmAxiom.getGlComponents);
  glLedger.glComponentSetup := dmAxiom.getGlComponents;
end;


procedure TfrmLedgerSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('Ledger Search', 'Type', tbType.Text);
  SettingSave('Ledger Search', 'Descr', tbDesc.Text);
  SettingSave('Ledger Search', 'Balance Less', tbBalanceLess.Text);
  SettingSave('Ledger Search', 'Balance Greater', tbBalanceGreater.Text);
end;

procedure TfrmLedgerSearch.btnNewClick(Sender: TObject);
var
  loTfrmLedgerNew : TfrmLedgerNew;
begin
  loTfrmLedgerNew := nil;

  try
    loTfrmLedgerNew := TfrmLedgerNew.Create(Self);
    loTfrmLedgerNew.ShowModal;
    MakeSQL;

  finally
    FreeAndNil(loTfrmLedgerNew);

  end;    //  end try-finally

end;

procedure TfrmLedgerSearch.tbLedgerSearchChange(Sender: TObject);
begin
//  if tbLedgerSearch.Text <> '' then
//    qryLedgers.Locate('CODE', tbLedgerSearch.Text, [loPartialKey]);
  makesql;

end;


procedure TfrmLedgerSearch.tbLedgerSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryLedgers.Next;
    VK_UP: qryLedgers.Prior;
    VK_NEXT: qryLedgers.MoveBy(10);
    VK_PRIOR: qryLedgers.MoveBy(-10);
    VK_HOME: qryLedgers.First;
    VK_END: qryLedgers.Last;
  end;
end;

procedure TfrmLedgerSearch.cxPageControl1Change(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
      tbLedgerSearch.SetFocus;
    end;
  end;
end;

end.
