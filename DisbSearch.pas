unit DisbSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, OracleUniProvider, Uni, DBAccess, MemDS,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, cxCurrencyEdit,cxContainer, cxGroupBox, cxPC, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxNavigator, Vcl.ExtCtrls,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxCalendar, dxDateRanges;

type
  TfrmDisbSearch = class(TForm)
    qryLedgers: TUniQuery;
    dsLedgers: TUniDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
    grdDisbSearch: TcxGrid;
    tvDisbSearch: TcxGridDBTableView;
    tvDisbSearchCREATED: TcxGridDBColumn;
    tvDisbSearchREPORT_DESC: TcxGridDBColumn;
    tvDisbSearchFILEID: TcxGridDBColumn;
    tvDisbSearchPAYER: TcxGridDBColumn;
    tvDisbSearchAMOUNT: TcxGridDBColumn;
    grdDisbSearchLevel1: TcxGridLevel;
    tabFilters: TcxTabSheet;
    fraIncludes: TcxGroupBox;
    Label5: TLabel;
    tbDesc: TEdit;
    gbLess: TcxGroupBox;
    Label3: TLabel;
    tbBalanceLess: TEdit;
    tbBalanceGreater: TEdit;
    Label2: TLabel;
    btnClear: TBitBtn;
    tvDisbSearchNALLOC: TcxGridDBColumn;
    Panel1: TPanel;
    Label7: TLabel;
    tbLedgerSearch: TEdit;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    tvDisbSearchTAX: TcxGridDBColumn;
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
    TaxFreeOnly: boolean;
  end;

var
  frmDisbSearch: TfrmDisbSearch;
  sSQL : string;
  sWhereClause : string;
  sOrderBy : string;

implementation

uses
  AxiomData, LedgerNew, MiscFunc;

{$R *.DFM}


procedure TfrmDisbSearch.btnClearAllClick(Sender: TObject);
begin

  tbDesc.Text := '';
  tbBalanceLess.Text := '';
  tbBalanceGreater.Text := '';

end;

procedure TfrmDisbSearch.FormShow(Sender: TObject);
begin
  tbDesc.Text := SettingLoadString('Disb Search', 'Descr');
  tbBalanceLess.Text := SettingLoadString('Disb Search', 'Balance Less');
  tbBalanceGreater.Text := SettingLoadString('Disb Search', 'Balance Greater');
  pageSearch.ActivePage := tabGrid;
//  dbgrLedgers.SetFocus;
  MakeSQL;
  if tbLedgerSearch.Visible then
    tbLedgerSearch.SetFocus;
end;


procedure TfrmDisbSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
      tbLedgerSearch.SetFocus;
    end;
  end;
end;

procedure TfrmDisbSearch.dbgrLedgersDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;


procedure TfrmDisbSearch.MakeSQL;
var
  iCtr : integer;
  sOR : string;
  sChartWhere : String;
begin
   // Build the SQL Filter query
   qryLedgers.Close;
   sWhereClause := ' AND ACCT = ' + QuotedStr(dmAxiom.Entity);


   if tbDesc.Text <> '' then
      sWhereClause := sWhereClause + ' AND DESCR LIKE ' + QuotedStr('%' + tbDesc.Text + '%');
   if tbBalanceGreater.Text <> '' then
      sWhereClause := sWhereClause + ' AND AMOUNT > ' + tbBalanceGreater.Text;
   if tbBalanceLess.Text <> '' then
      sWhereClause := sWhereClause + ' AND AMOUNT > ' + tbBalanceLess.Text;


   if tbLedgerSearch.Text <> '' then
      sWhereClause := sWhereClause + ' AND FILEID like ' + QuotedStr('%' + tbLedgerSearch.Text + '%');

   if TaxFreeOnly then
      sWhereClause := sWhereClause + ' AND TAX = 0';

   qryLedgers.SQL.Clear;
   qryLedgers.SQL.Add(sSQL + sWhereClause + sOrderBy);
   qryLedgers.Open;

end;


procedure TfrmDisbSearch.dbgrLedgersColumnMoved(Sender: TObject;
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

procedure TfrmDisbSearch.FormCreate(Sender: TObject);
begin
  sSQL := 'SELECT DESCR, CREATED, ACCT, NMATTER, REFNO, PAYER, TRUST, BILLED, '+
           ' FILEID, CLIENT_NAME, MATTER_DESC, TAXCODE, '+
           ' NALLOC, nvl(amount * -1,0) as amount, nvl(tax * -1,0) as tax '+
           ' FROM ALLOC WHERE BILLED = ''N'' AND NMEMO IS NULL AND '+
           ' NCHEQUE IS NOT NULL AND TRUST = ''G'' AND RV_NALLOC IS NULL AND ninvoice is null AND (nvl(ncheque,0) > 0 '+
           ' or (nvl(njournal,0) > 0 and type = ''J2''))';
  sOrderBy := ' ORDER BY created ';
  TaxFreeOnly := False;

  SettingLoadStream(dmAxiom.UserID, 'tvDisbSearch Layout', tvDisbSearch);

end;


procedure TfrmDisbSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('Disb Search', 'Descr', tbDesc.Text);
  SettingSave('Disb Search', 'Balance Less', tbBalanceLess.Text);
  SettingSave('Disb Search', 'Balance Greater', tbBalanceGreater.Text);

  SettingSaveStream(dmAxiom.UserID, 'tvDisbSearch Layout', tvDisbSearch);
end;

procedure TfrmDisbSearch.btnNewClick(Sender: TObject);
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

procedure TfrmDisbSearch.tbLedgerSearchChange(Sender: TObject);
begin
//  if tbLedgerSearch.Text <> '' then
//    qryLedgers.Locate('CODE', tbLedgerSearch.Text, [loPartialKey]);
  makesql;

end;


procedure TfrmDisbSearch.tbLedgerSearchKeyDown(Sender: TObject;
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

procedure TfrmDisbSearch.cxPageControl1Change(Sender: TObject);
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
