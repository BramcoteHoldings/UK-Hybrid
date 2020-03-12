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
  cxCalendar, dxDateRanges, dxScrollbarAnnotations;

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
  sOrderBy,
  sGroupBy : string;

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
   sWhereClause := ' AND a.ACCT = ' + QuotedStr(dmAxiom.Entity);

   if tbDesc.Text <> '' then
      sWhereClause := sWhereClause + ' AND a.DESCR LIKE ' + QuotedStr('%' + tbDesc.Text + '%');
   if tbBalanceGreater.Text <> '' then
      sWhereClause := sWhereClause + ' AND a.AMOUNT > ' + tbBalanceGreater.Text;
   if tbBalanceLess.Text <> '' then
      sWhereClause := sWhereClause + ' AND a.AMOUNT > ' + tbBalanceLess.Text;


   if tbLedgerSearch.Text <> '' then
      sWhereClause := sWhereClause + ' AND a.FILEID like ' + QuotedStr('%' + tbLedgerSearch.Text + '%');

   if TaxFreeOnly then
      sWhereClause := sWhereClause + ' AND a.TAX = 0';

   qryLedgers.SQL.Clear;
   qryLedgers.SQL.Add(sSQL + sWhereClause + sGroupBy + sOrderBy);
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
   sSQL := 'SELECT   MIN (a.descr) AS descr, MIN (a.created) AS created, a.acct, '+
           '    a.nmatter, a.payer AS payer, a.fileid fileid, '+
           '    a.client_name client_name, a.matter_desc matter_desc,'+
           '    a.taxcode taxcode, SUM (a.amount + NVL (b.amount, 0)) AS amount,'+
           '    SUM (a.tax + NVL (b.tax, 0)) AS tax, a.refno, a.nalloc '+
           ' FROM (SELECT descr, created, acct, nmatter, refno, payer, trust, billed, '+
           '            fileid, client_name, matter_desc, taxcode, nalloc,'+
           '            NVL (amount * -1, 0) AS amount, NVL (tax * -1, 0) AS tax, '+
           '            0 AS disb_nalloc_receipt '+
           '       FROM alloc  '+
           '      WHERE ((billed = ''N'') or (nalloc in (select disb_nalloc_receipt from alloc))) '+
           '        AND nmemo IS NULL '+
           '        AND ncheque IS NOT NULL '+
           '        AND trust = ''G'' '+
           '        AND rv_nalloc IS NULL '+
           '        AND ninvoice IS NULL  '+
           '        AND (   NVL (ncheque, 0) > 0 '+
           '             OR (NVL (njournal, 0) > 0 AND TYPE = ''J2'')  '+
           '            )) a,  '+
           '    (SELECT NVL (SUM(amount) * -1, 0) AS amount, NVL (SUM(tax), 0) AS tax,'+
           '            disb_nalloc_receipt '+
           '       FROM alloc '+
           '      WHERE nreceipt IS NOT NULL  '+
           '        AND trust = ''G'' '+
           '        AND rv_nalloc IS NULL '+
           '        AND ninvoice IS NULL '+
           '        AND disb_nalloc_receipt IS NOT NULL '+
           '        AND (NVL (nreceipt, 0) > 0) '+
           '      GROUP BY disb_nalloc_receipt) b '+
           ' WHERE a.nalloc = b.disb_nalloc_receipt(+) ';

   {'SELECT DESCR, CREATED, ACCT, NMATTER, REFNO, PAYER, TRUST, BILLED, '+
           ' FILEID, CLIENT_NAME, MATTER_DESC, TAXCODE, '+
           ' NALLOC, nvl(amount * -1,0) as amount, nvl(tax * -1,0) as tax '+
           ' FROM ALLOC WHERE BILLED = ''N'' AND NMEMO IS NULL AND '+
           ' NCHEQUE IS NOT NULL AND TRUST = ''G'' AND RV_NALLOC IS NULL AND ninvoice is null AND (nvl(ncheque,0) > 0 '+
           ' or (nvl(njournal,0) > 0 and type = ''J2''))';  }

   sGroupBy := ' GROUP BY a.nmatter, a.fileid, a.client_name, a.matter_desc, a.taxcode, '+
               ' a.descr, a.acct, a.payer, a.taxcode, a.refno, a.nalloc ' +
               ' having SUM (a.amount + NVL (b.amount, 0)) <> 0 ';

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
