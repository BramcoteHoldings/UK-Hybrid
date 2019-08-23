unit InvoiceSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, OracleUniProvider, Uni, DBAccess, MemDS,
  ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxCalendar, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxContainer,
  cxGroupBox, cxPC, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  dxCore, cxNavigator, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

type
  TfrmInvoiceSearch = class(TForm)
    qryInvoices: TUniQuery;
    dsInvoices: TUniDataSource;
    tmrSearch: TTimer;
    cxStyleRepository1: TcxStyleRepository;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
    tabFilters: TcxTabSheet;
    dbgrInvoices: TcxGrid;
    tvInvoices: TcxGridDBTableView;
    tvInvoicesREFNO: TcxGridDBColumn;
    tvInvoicesTOTAL: TcxGridDBColumn;
    tvInvoicesOWING: TcxGridDBColumn;
    tvInvoicesDISPATCHED: TcxGridDBColumn;
    tvInvoicesFILEID: TcxGridDBColumn;
    tvInvoicesTITLE: TcxGridDBColumn;
    tvInvoicesSHORTDESCR: TcxGridDBColumn;
    tvInvoicesPARTNER: TcxGridDBColumn;
    tvInvoicesAUTHOR: TcxGridDBColumn;
    tvInvoicesTYPE: TcxGridDBColumn;
    dbgrInvoicesLevel1: TcxGridLevel;
    cbShowAll: TCheckBox;
    tbMatterSearch: TEdit;
    tbBillNo: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnClearAll: TBitBtn;
    fraLike: TcxGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    tbClient: TEdit;
    tbFile: TEdit;
    fraEqual: TcxGroupBox;
    lblPartner: TLabel;
    Label3: TLabel;
    lblAuthor: TLabel;
    cbPartner: TComboBox;
    cbAuthor: TComboBox;
    cbType: TComboBox;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrInvoicesDblClick(Sender: TObject);
    procedure dbgrInvoicesColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbMatterSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbMatterSearchChange(Sender: TObject);
    procedure tbBillNoChange(Sender: TObject);
    procedure cbShowAllClick(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure EnableTimer(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvInvoicesColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure pageSearchChange(Sender: TObject);
  private
    { Private declarations }
    bShowAll: boolean;
    FBillsForMatter: boolean;
    procedure MakeSQL;
  public
    { Public declarations }
    property BillsForMatter: boolean write FBillsForMatter;
    constructor Create(AOwner:TComponent; AParam:boolean = True); overload;
  end;

var
  frmInvoiceSearch: TfrmInvoiceSearch;
  sSQL : string;
  sWhereClause : string;
  sOrderBy : string;
  sHaving : string;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}


procedure TfrmInvoiceSearch.btnClearAllClick(Sender: TObject);
begin
  cbPartner.Text := '';
  cbAuthor.Text := '';
  cbType.Text := '';
  tbFile.Text := '';
end;

procedure TfrmInvoiceSearch.FormShow(Sender: TObject);
begin
//  Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   cbAuthor.Items := dmAxiom.Employees;
   cbPartner.Items := dmAxiom.Employees;
   StringPopulate(cbType.Items, 'MATTERTYPE', 'CODE');
   cbPartner.Text := SettingLoadString('Invoice Search', 'Partner');
   cbAuthor.Text := SettingLoadString('Invoice Search', 'Author');
   cbType.Text := SettingLoadString('Invoice Search', 'Type');
   tbClient.Text := SettingLoadString('Invoice Search', 'Client');
   tbFile.Text := SettingLoadString('Invoice Search', 'FileID');
   tmrSearch.Enabled := False;
   if FBillsForMatter then
   begin
      tbMatterSearch.Enabled := False;
      tbBillNo.Enabled := False;
   end
   else
      begin
      tbMatterSearch.Enabled := True;
      tbBillNo.Enabled := True;
   end;
   if bShowAll then
   begin
      MakeSQL;
      cbShowAll.Visible := False;
   end;

  pageSearch.  ActivePage := tabGrid;
  pageSearchChange(Sender);
end;


procedure TfrmInvoiceSearch.dbgrInvoicesDblClick(Sender: TObject);
begin
  btnOK.Click;
end;


procedure TfrmInvoiceSearch.MakeSQL;
var
  sAND : string;
begin
  // Build the SQL Filter query
  qryInvoices.Close;

  sWhereClause := ' WHERE NMEMO.NMATTER = MATTER.NMATTER AND MATTER.NCLIENT = PHONEBOOK.NCLIENT AND NMEMO.DISPATCHED IS NOT NULL AND MATTER.ENTITY = ' + QuotedStr(dmAxiom.Entity);
  sAND := ' AND  ';

  if cbPartner.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'MATTER.PARTNER = ''' + cbPartner.Text + '''';
//    sAND := ' AND ';
  end;
  if cbAuthor.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'MATTER.AUTHOR = ''' + cbAuthor.Text + '''';
//    sAND := ' AND ';
  end;
  if cbType.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'MATTER.TYPE = ''' + cbType.Text + '''';
//    sAND := ' AND ';
  end;
  if tbClient.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + ' UPPER(PHONEBOOK.NAME) LIKE UPPER(' + QuotedStr('%' + QuoteFix(tbClient.Text) + '%') + ')';
//    sAND := ' AND ';
  end;
  if tbFile.Text <> '' then
  begin
    if FBillsForMatter then
       sWhereClause := sWhereClause + sAND + 'NMEMO.FILEID = ' + QuotedStr(tbFile.Text)
    else
       sWhereClause := sWhereClause + sAND + 'NMEMO.FILEID LIKE ' + QuotedStr(tbFile.Text + '%');
  end;
  if tbBillNo.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + ' contains (refno, ' + QuotedStr('%' + tbBillNo.Text + '%') +') > 0';
//    sWhereClause := sWhereClause + sAND + 'NMEMO.REFNO LIKE ' + QuotedStr('%' + tbBillNo.Text + '%');
//    sAND := ' AND ';
  end;
  if tbMatterSearch.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'MATTER.FILEID LIKE ' + QuotedStr(tbMatterSearch.Text + '%');
//    sAND := ' AND ';
  end;
  qryInvoices.SQL.Text := sSQL + sWhereClause + sHaving + sOrderBy;
  qryInvoices.Open;
end;

procedure TfrmInvoiceSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
    end;
  end;
end;

procedure TfrmInvoiceSearch.dbgrInvoicesColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
begin
{  qryInvoices.Close;
  sOrderBy := 'ORDER BY';
  sComma := ' ';
  bFinished := False;
  iCtr := 0;
  while (iCtr < dbgrInvoices.Columns.Count) and (not bFinished) do
  begin
    sOrderBy := sOrderBy + sComma + dbgrInvoices.Columns[iCtr].FieldName;
    if dbgrInvoices.Columns[iCtr].FieldName = 'NMEMO' then
      bFinished := True;
    iCtr := iCtr + 1;
    sComma := ', ';
  end;

  qryInvoices.SQL.Text := sSQL + sWhereClause + sOrderBy;
  qryInvoices.Open; }
end;

constructor TfrmInvoiceSearch.Create(AOwner:TComponent; AParam:boolean = True);
begin
   inherited Create(AOwner);
   //  sOrderBy := ' ORDER BY NMEMO';
   bShowAll := AParam;
   if bShowAll then
      cbShowAll.Visible := True;
   FBillsForMatter := False;
   tbMatterSearch.Enabled := AParam;
   tbBillNo.Enabled := Aparam;
end;


procedure TfrmInvoiceSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('Invoice Search', 'Partner', cbPartner.Text);
  SettingSave('Invoice Search', 'Author', cbAuthor.Text);
  SettingSave('Invoice Search', 'Type', cbType.Text);
  SettingSave('Invoice Search', 'FileID', tbFile.Text);
end;

procedure TfrmInvoiceSearch.tbMatterSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryInvoices.Next;
    VK_UP: qryInvoices.Prior;
    VK_NEXT: qryInvoices.MoveBy(10);
    VK_PRIOR: qryInvoices.MoveBy(-10);
    VK_HOME: qryInvoices.First;
    VK_END: qryInvoices.Last;
  end;
end;

procedure TfrmInvoiceSearch.tbMatterSearchChange(Sender: TObject);
begin
{  if not qryInvoices.Active then
    cbShowAll.checked := True;
  if (tbMatterSearch.Text <> '') then
    qryInvoices.Locate('FILEID', tbMatterSearch.Text, [loPartialKey]);  }
end;

procedure TfrmInvoiceSearch.tbBillNoChange(Sender: TObject);
begin
{  if not qryInvoices.Active then
      cbShowAll.checked := True;
  if (tbBillNo.Text <> '') then
    qryInvoices.Locate('REFNO', tbBillNo.Text, [loPartialKey]); }
end;

procedure TfrmInvoiceSearch.cbShowAllClick(Sender: TObject);
begin
   if cbShowAll.checked then
   begin
      tbBillNo.Text := '';
      tbMatterSearch.Text := '';
      MakeSQL();
   end
   else
      qryInvoices.Close();
//      dbgrInvoices.Enabled := True;
end;

procedure TfrmInvoiceSearch.tmrSearchTimer(Sender: TObject);
begin
   tmrSearch.Enabled := False;
   MakeSQL();
end;

procedure TfrmInvoiceSearch.EnableTimer(Sender: TObject);
begin
  tmrSearch.Enabled := true;
end;

procedure TfrmInvoiceSearch.btnCancelClick(Sender: TObject);
begin
   Close();
end;

procedure TfrmInvoiceSearch.FormCreate(Sender: TObject);
var
   imaxLength: integer;
begin
   if dbgrInvoices.Font.Size <> dmAxiom.GridFont then
      dbgrInvoices.Font.Size := dmAxiom.GridFont;

   GetLabel(lblPartner,'MATTER','PARTNER',imaxLength);
   GetLabel(lblAuthor,'MATTER','AUTHOR',imaxLength);

   tvInvoicesPARTNER.Caption := lblPartner.Caption;
   tvInvoicesAUTHOR.Caption := lblAuthor.Caption;

 {  sSQL := 'SELECT MATTER.ACCT,NMEMO.REFNO,NMEMO.NMEMO,NMEMO.DISPATCHED,'+
           'nvl(NMEMO.FEES+NMEMO.DISB+NMEMO.UPCRED+NMEMO.SUND+NMEMO.ANTD+NMEMO.TAX, 0) AS TOTAL,'+
           'NMEMO.FILEID,MATTER.TITLE,MATTER.SHORTDESCR,' +
           'MATTER.PARTNER,MATTER.AUTHOR,MATTER.TYPE,'+
           'nvl(NMEMO.FEES-NMEMO.FEES_PAID-NMEMO.FEES_WOFF+  '+
           'NMEMO.DISB-NMEMO.DISB_PAID-NMEMO.DISB_WOFF+ '+
           'NMEMO.UPCRED-NMEMO.UPCRED_PAID-NMEMO.UPCRED_WOFF + '+
           'NMEMO.ANTD-NMEMO.ANTD_PAID-NMEMO.ANTD_WOFF+ '+
           'NMEMO.SUND-NMEMO.SUND_PAID-NMEMO.SUND_WOFF, 0) AS OWING '+
           'FROM NMEMO, MATTER';   }

   sSQL := 'SELECT NMEMO.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, FEES, DISB, ANTD, '+
           'SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PAID, SUND_PAID, TAX_PAID, '+
           'RV_NMEMO, RV_TYPE,NMEMO.TOTAL , NMEMO.OWING,'+
           'UPCRED, UPCRED_PAID, MATTER.ACCT, PHONEBOOK.NAME AS TITLE, MATTER.SHORTDESCR, NMEMO.PARTNER, '+
           'NMEMO.AUTHOR, MATTER.TYPE, MATTER.FILEID '+
           'FROM PHONEBOOK, NMEMO, MATTER ';

   sHaving := ' AND nvl(NMEMO.OWING, 0) > 0 '+
             ' AND (REFNO not like (''%CN'') AND REFNO not like (''%RV''))';

  { sHaving := ' AND nvl(NMEMO.FEES-NMEMO.FEES_PAID-NMEMO.FEES_WOFF+ '+
             ' NMEMO.DISB-NMEMO.DISB_PAID-NMEMO.DISB_WOFF+ '+
             ' NMEMO.UPCRED-NMEMO.UPCRED_PAID-NMEMO.UPCRED_WOFF + '+
             ' NMEMO.ANTD-NMEMO.ANTD_PAID-NMEMO.ANTD_WOFF+ '+
             ' NMEMO.SUND-NMEMO.SUND_PAID-NMEMO.SUND_WOFF, 0) > 0 '+
             ' AND REFNO not like (''%CN'')'; }
end;

procedure TfrmInvoiceSearch.tvInvoicesColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   qryInvoices.Close;
   sOrderBy := ' ORDER BY ';

   sOrderBy := sOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      sOrderBy := sOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      sOrderBy := sOrderBy + ' ASC';
   end
   else
   begin
      sOrderBy := sOrderBy + ' DESC';
   end;

   MakeSql();
end;

end.

