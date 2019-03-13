unit CreditorSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons,  OracleUniProvider, Uni, MemDS, ExtCtrls,
  DBAccess, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCalendar, cxTextEdit, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxLookAndFeelPainters,
  cxButtons, cxMaskEdit, cxDropDownEdit, cxGroupBox, cxContainer,
  cxRadioGroup, cxPC, Menus, cxLookAndFeels, cxPCdxBarPopupMenu, cxCheckBox,
  cxNavigator, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TLookup = (luUnassigned, luSearch, luCode);

  TfrmCreditorSearch = class(TForm)
    dsCreditors: TUniDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    styAltRow: TcxStyle;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
    Panel1: TPanel;
    Label8: TLabel;
    Label5: TLabel;
    dbgrCreditors: TcxGrid;
    tvCreditors: TcxGridDBTableView;
    tvCreditorsSEARCH: TcxGridDBColumn;
    tvCreditorsCODE: TcxGridDBColumn;
    tvCreditorsGenderDesc: TcxGridDBColumn;
    dbgrCreditorsLevel1: TcxGridLevel;
    tabFilters: TcxTabSheet;
    fraActive: TcxRadioGroup;
    fraEqual: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    tbCreditorCode: TcxTextEdit;
    cbGender: TcxComboBox;
    fraIncludes: TcxGroupBox;
    fraInvoiceSearch: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    tbCreditor: TcxTextEdit;
    tbInvoiceNumber: TcxTextEdit;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    tbCreditorSearch: TcxTextEdit;
    tbCreditorCodeSearch: TcxTextEdit;
    tmrSearch: TTimer;
    tvCreditorsPAY_BY_EFT: TcxGridDBColumn;
    qryCreditors: TUniQuery;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrCreditorsDblClick(Sender: TObject);
    procedure dbgrCreditorsColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure qryCreditorsCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbCreditorSearchChange(Sender: TObject);
    procedure tbCreditorSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbCreditorCodeSearchChange(Sender: TObject);
    procedure tabGridShow(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
  private
    FLookup: TLookup;
    procedure MakeSQL;
    procedure EnableTimer(Sender: TObject);
  public
    { Public declarations }
    sWhereClause: string;
    sOrderBy: string;
    procedure RefreshSearch(Search: string);
  end;

var
  frmCreditorSearch: TfrmCreditorSearch;
  sSQL : string;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}


procedure TfrmCreditorSearch.btnClearAllClick(Sender: TObject);
begin
  tbCreditorCode.Text := '';
  cbGender.Text := '';
  tbCreditor.Text := '';
  tbInvoiceNumber.Text:= '';
{
  Added 17.12.2002 GG

  Set Active filter to Checked
}
  fraActive.ItemIndex:= 0
end;

procedure TfrmCreditorSearch.FormShow(Sender: TObject);
begin
  qryCreditors.Close;
  tbCreditorCode.Text := SettingLoadString('Creditor Search', 'Code');
  cbGender.Text := SettingLoadString('Creditor Search', 'Gender');
  tbCreditor.Text := SettingLoadString('Creditor Search', 'Name');
  case SettingLoadInteger('Creditor Search', 'Lookup') of
    0 : FLookup := luUnassigned;
    1 : FLookup := luSearch;
    2 : FLookup := luCode;
  end;

  MakeSQL;

  pageSearch.ActivePage := tabGrid;
  case FLookup of
    luUnassigned, luSearch : tbCreditorSearch.SetFocus;
    luCode : tbCreditorCodeSearch.SetFocus;
  end;
end;


procedure TfrmCreditorSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
    end;
  end;
end;

procedure TfrmCreditorSearch.dbgrCreditorsDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmCreditorSearch.MakeSQL;
var
  sAND : string;
begin
   // Build the SQL Filter query
   qryCreditors.Close;
   sWhereClause := '';
   sAND := ' WHERE ';
   if tbCreditorSearch.Text <> '' then
   begin
      if SystemString('MATTER_ONLY_SEARCH') = 'N' then
         sWhereClause := sWhereClause + sAND + ' CONTAINS(dummy,'+ QuotedStr('%' + uppercase(tbCreditorSearch.Text) + '%') + ', 1) > 0 '
      else
         sWhereClause := sWhereClause + sAND + 'upper(SEARCH) LIKE ' + QuotedStr('%' + uppercase(tbCreditorSearch.Text) + '%');

      sAND := ' AND ';
   end;
   if tbCreditorCodeSearch.Text <> '' then
   begin
//      sWhereClause := sWhereClause + sAND + 'CODE LIKE ' + QuotedStr('%' + tbCreditorCodeSearch.Text + '%');
//      sAND := ' AND ';
   end;
   if tbCreditorCode.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'CODE = ''' + tbCreditorCode.Text + '''';
     sAND := ' AND ';
   end;
   if cbGender.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'GENDER = ''' + cbGender.Text + '''';
     sAND := ' AND ';
   end;
   if tbCreditor.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'SEARCH LIKE ' + QuotedStr('%' + tbCreditor.Text + '%');
     sAND := ' AND ';
   end;

//   AES 8/12/2010
//   sWhereClause := sWhereClause + sAND + 'creditor.entity = ' + quotedStr(dmAxiom.Entity);
//   sAND := ' AND ';

{
   Added 5.12.2002 GG

   New Invoice Search capability to find creditors via invoice numbers
}
   if tbInvoiceNumber.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'NCREDITOR IN (SELECT NCREDITOR FROM INVOICE WHERE REFNO LIKE ' +
                     QuotedStr('%' + tbInvoiceNumber.Text + '%') + ')';
     sAND := ' AND ';
   end;

{
   Added 5.12.2002 GG

   New Invoice Search capability to find creditors via active status
}
   case fraActive.ItemIndex of
     0: begin
          sWhereClause := sWhereClause + sAND + 'ACTIVE = ''Y''';
          sAND := ' AND ';
        end;
     1: begin
          sWhereClause := sWhereClause + sAND + 'ACTIVE = ''N''';
          sAND := ' AND ';
        end;
   end;

   qryCreditors.SQL.Clear;
   qryCreditors.SQL.Add(sSQL + sWhereClause + sOrderBy);
   qryCreditors.Open;
end;

procedure TfrmCreditorSearch.dbgrCreditorsColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
  sTmp : string;
begin
{  qryCreditors.Close;
  sOrderBy := 'ORDER BY';
  sComma := ' ';
  bFinished := False;
  iCtr := 0;
  while (iCtr < dbgrCreditors.Columns.Count) and (not bFinished) do
  begin
    sTmp := dbgrCreditors.Columns[iCtr].FieldName;
    if dbgrCreditors.Columns[iCtr].FieldName = 'GenderDesc' then
      sTmp := 'GENDER';
    sOrderBy := sOrderBy + sComma + sTmp;
    if dbgrCreditors.Columns[iCtr].FieldName = 'SEARCH' then
      bFinished := True;
    iCtr := iCtr + 1;
    sComma := ', ';
  end;
  qryCreditors.Close;
  qryCreditors.SQL.Clear;
  qryCreditors.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryCreditors.Open;   }
end;

procedure TfrmCreditorSearch.FormCreate(Sender: TObject);
begin
   if dbgrCreditors.Font.Size <> dmAxiom.GridFont then
      dbgrCreditors.Font.Size := dmAxiom.GridFont;

   sSQL := 'SELECT SEARCH, CODE, CREDGROUP, GENDER, NCREDITOR, NAME, PAY_BY_EFT,'+
           'case when (gender = ''C'') then ''Company'' when (gender = ''M'') then ''Male'' '+
           'when (gender = ''F'') then ''Female'' when (gender = ''P'') then ''Partnership'' end as GenderDesc FROM CREDITOR ';
   sWhereClause := '';
   sOrderBy := ' ORDER BY SEARCH';
   FLookup := luUnassigned;
end;

procedure TfrmCreditorSearch.qryCreditorsCalcFields(DataSet: TDataSet);
begin
  if qryCreditors.FieldByName('GENDER').AsString = 'C' then
    qryCreditors.FieldByName('GenderDesc').AsString := 'Company'
  else if qryCreditors.FieldByName('GENDER').AsString = 'M' then
    qryCreditors.FieldByName('GenderDesc').AsString := 'Male'
  else if qryCreditors.FieldByName('GENDER').AsString = 'F' then
    qryCreditors.FieldByName('GenderDesc').AsString := 'Female'
  else if qryCreditors.FieldByName('GENDER').AsString = 'P' then
    qryCreditors.FieldByName('GenderDesc').AsString := 'Partnership'
end;


procedure TfrmCreditorSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('Creditor Search', 'Code', tbCreditorCode.Text);
  SettingSave('Creditor Search', 'Gender', cbGender.Text);
  SettingSave('Creditor Search', 'Name', tbCreditor.Text);
  SettingSave('Creditor Search', 'Lookup', Ord(FLookup));
end;

procedure TfrmCreditorSearch.tbCreditorSearchChange(Sender: TObject);
var
  iSel : integer;
begin
   EnableTimer(Sender);
   FLookup := luSearch;
{  if tbCreditorSearch.Text <> '' then
  begin
    iSel := tbCreditorSearch.SelStart;
    tbCreditorSearch.Text := FirstCap(tbCreditorSearch.Text);
    tbCreditorSearch.SelStart := iSel;
    qryCreditors.Locate('SEARCH', tbCreditorSearch.Text, [loPartialKey]);
  end;   }
end;

procedure TfrmCreditorSearch.tbCreditorSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryCreditors.Next;
    VK_UP: qryCreditors.Prior;
    VK_NEXT: qryCreditors.MoveBy(10);
    VK_PRIOR: qryCreditors.MoveBy(-10);
    VK_HOME: qryCreditors.First;
    VK_END: qryCreditors.Last;
  end;
end;

procedure TfrmCreditorSearch.tbCreditorCodeSearchChange(Sender: TObject);
begin
  FLookup := luCode;
  if tbCreditorCodeSearch.Text <> '' then
    qryCreditors.Locate('CODE', tbCreditorCodeSearch.Text, [loPartialKey]);
end;

procedure TfrmCreditorSearch.tabGridShow(Sender: TObject);
begin
  case FLookup of
    luUnassigned, luSearch : tbCreditorSearch.SetFocus;
    luCode : tbCreditorCodeSearch.SetFocus;
  end;
end;

procedure TfrmCreditorSearch.RefreshSearch(Search: string);
begin
   try
      if not qryCreditors.Locate('SEARCH', Search, []) then
      begin
         MakeSQL;
         qryCreditors.Locate('SEARCH', Search, [])
      end;
   except
     //
   end;
end;


procedure TfrmCreditorSearch.tmrSearchTimer(Sender: TObject);
begin
   tmrSearch.Enabled := false;
//   if ((tbCreditorSearch.Text <> '') or (tbCreditorCodeSearch.Text <> '')) then
      MakeSQL();
end;

procedure TfrmCreditorSearch.EnableTimer(Sender: TObject);
begin
//   SaveFilter := True;
   tmrSearch.Enabled := true;
end;
end.

