unit CreditorAccountsSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, ExtCtrls,
  NumberEdit, OracleUniProvider, Uni, DBAccess, ToolWin, ImgList,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, dxBar,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxButtons, cxTextEdit,
  cxGroupBox, cxContainer, cxRadioGroup, cxPC, Menus, cxPCdxBarPopupMenu,
  cxLookAndFeels, MemDS, dxCore, cxNavigator, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmCreditorAccountsSearch = class(TForm)
    qryAccounts: TUniQuery;
    dsAccounts: TUniDataSource;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
    tabFilters: TcxTabSheet;
    rgOwing: TcxRadioGroup;
    fraIncludes: TcxGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    gbLess: TcxGroupBox;
    gbGreater: TcxGroupBox;
    tbCreditor: TcxTextEdit;
    tbDesc: TcxTextEdit;
    tbInvoiceNumber: TcxTextEdit;
    tbAmount: TcxCurrencyEdit;
    Label12: TLabel;
    dtpDue: TDateTimePicker;
    Label13: TLabel;
    neOwingLess: TcxCurrencyEdit;
    Label14: TLabel;
    neOwingGreater: TcxCurrencyEdit;
    btnClear: TcxButton;
    dbgrAccounts: TcxGrid;
    dbgrAccountsLevel1: TcxGridLevel;
    tvAccounts: TcxGridDBTableView;
    tvAccountsDUE_DATE: TcxGridDBColumn;
    tvAccountsREFNO: TcxGridDBColumn;
    tvAccountsCREDITOR: TcxGridDBColumn;
    tvAccountsDESCR: TcxGridDBColumn;
    tvAccountsOWING: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    dxBarManager1: TdxBarManager;
    tbtnRefresh: TdxBarButton;
    tbtnClearAll: TdxBarButton;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrAccountsDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tvAccountsDblClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure tvAccountsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    { Private declarations }
    FInvoiceNo: string;
    procedure MakeSQL;
  public
    { Public declarations }
    property InvoiceNo: string read FInvoiceNo write FInvoiceNo;
  end;

var
  frmCreditorAccountsSearch: TfrmCreditorAccountsSearch;
  sSQL : string;
  sWhereClause : string;
  sOrderBy : string;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}


procedure TfrmCreditorAccountsSearch.btnClearAllClick(Sender: TObject);
begin
  dtpDue.Date := Date;
  rgOwing.ItemIndex := 0;
  tbCreditor.Text := '';
  tbDesc.Text := '';
  tbInvoiceNumber.Text:= '';
  tbAmount.Text:= '';
  neOwingLess.Value := 0;
  neOwingGreater.Value := 0;
end;

procedure TfrmCreditorAccountsSearch.FormShow(Sender: TObject);
var
  sTmp : string;
begin
  rgOwing.ItemIndex := SettingLoadInteger('Account Search', 'Owing');
  if tbCreditor.Text = '' then
     tbCreditor.Text := SettingLoadString('Account Search', 'Creditor');
  tbDesc.Text := SettingLoadString('Account Search', 'Descr');
  sTmp := SettingLoadString('Account Search', 'Owing Less');
  if (sTmp <> '') then
    neOwingLess.Value := StrToCurr(sTmp);
  sTmp := SettingLoadString('Account Search', 'Owing Greater');
  if (sTmp <> '') then
    neOwingGreater.Value := StrToCurr(sTmp);
  pageSearch.ActivePage := tabGrid;
  dbgrAccounts.SetFocus;
  if FInvoiceNo <> '' then
  begin
     tbInvoiceNumber.EditValue := FInvoiceNo;
     dtpDue.Checked := False;
  end;
  MakeSQL;
end;


procedure TfrmCreditorAccountsSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
    end;
  end;
end;


procedure TfrmCreditorAccountsSearch.dbgrAccountsDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;


procedure TfrmCreditorAccountsSearch.MakeSQL;
var
  sAND : string;
begin
  // Build the SQL Filter query
  qryAccounts.Close;
  sSQL:= 'SELECT REFNO, CREDITOR, DESCR, OWING, DUE_DATE, NINVOICE, TYPE FROM INVOICE ';

  sWhereClause := '';
  sAND := ' WHERE ';
  if dtpDue.Checked then
  begin
    //SQL.Add('WHERE DUE_DATE <= :P_DueDate');
    sWhereClause := sWhereClause + sAND + 'DUE_DATE <= :P_DueDate ';
    sAND := ' AND ';
  end;

  case rgOwing.ItemIndex of
    0: //if neOwingGreater.Value <> 0.0 then
       begin
         sWhereClause := sWhereClause + sAND + 'OWING > 0';
         sAND := ' AND ';
       end;
    1: begin
         sWhereClause := sWhereClause + sAND + 'OWING = 0';
         sAND := ' AND ';
       end
  end;
  if tbCreditor.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'UPPER(CREDITOR) LIKE ' + QuotedStr('%' + Uppercase(tbCreditor.Text) + '%');
    sAND := ' AND ';
  end;
  if tbDesc.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'UPPER(DESCR) LIKE ' + QuotedStr('%' + Uppercase(tbDesc.Text) + '%');
    sAND := ' AND ';
  end;
  if tbInvoiceNumber.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'UPPER(REFNO) LIKE ' + QuotedStr('%' + Uppercase(tbInvoiceNumber.Text) + '%');
    sAND := ' AND ';
  end;
  if tbAmount.Value <> 0 then
  begin
    sWhereClause := sWhereClause + sAND + 'AMOUNT =  ' + tbAmount.Text + '';
    sAND := ' AND ';
  end;
  if neOwingGreater.Value <> 0.0 then
  begin
    sWhereClause := sWhereClause + sAND + 'OWING > ' + FloatToStr(neOwingGreater.Value);
    sAND := ' AND ';
  end;
  if neOwingLess.Value <> 0.0 then
  begin
    sWhereClause := sWhereClause + sAND + 'OWING < ' + FloatToStr(neOwingLess.Value);
    sAND := ' AND ';
  end;
  if sOrderBy = '' then sOrderBy:= ' ORDER BY DUE_DATE';

  qryAccounts.SQL.Text := sSQL + sWhereClause + sOrderBy;

  if dtpDue.Checked then
    qryAccounts.ParamByName('P_DueDate').AsDate := Trunc(dtpDue.Date) + 1;

  //qryAccounts.SQL.SaveToFile('C:\tmp\tmp\qryAccounts.sql');

  qryAccounts.Open;
  
end;

procedure TfrmCreditorAccountsSearch.FormCreate(Sender: TObject);
begin
  sSQL := 'SELECT REFNO, CREDITOR, DESCR, OWING, DUE_DATE, NINVOICE FROM INVOICE WHERE TYPE <> ''CN'''; // AND DUE_DATE < :P_DueDate ';
  sOrderBy := ' ORDER BY DUE_DATE ';
  dtpDue.Date := Date;
end;


procedure TfrmCreditorAccountsSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('Account Search', 'Owing', rgOwing.ItemIndex);
  SettingSave('Account Search', 'Creditor', tbCreditor.Text);
  SettingSave('Account Search', 'Descr', tbDesc.Text);
  SettingSave('Account Search', 'Owing Less', FloatToStr(neOwingLess.Value));
  SettingSave('Account Search', 'Owing Greater', FloatToStr(neOwingGreater.Value));
end;

procedure TfrmCreditorAccountsSearch.tbtnRefreshClick(Sender: TObject);
begin
  dtpDue.Checked := false;
  qryAccounts.Close;
  MakeSQL;
end;

procedure TfrmCreditorAccountsSearch.tvAccountsDblClick(
  Sender: TObject);
begin
   ModalResult := mrOK;
end;

procedure TfrmCreditorAccountsSearch.dxBarButton1Click(Sender: TObject);
begin
 dtpDue.Checked := false;
  qryAccounts.Close;
  MakeSQL;
end;

procedure TfrmCreditorAccountsSearch.dxBarButton2Click(Sender: TObject);
begin
   qryAccounts.Close;
  dtpDue.Date := Trunc(Now);
  dtpDue.Checked := true;
  neOwingGreater.Value := 0;
  neOwingLess.Value := 0;
  tbCreditor.Text := '';
  tbDesc.Text := '';
  MakeSQL;
end;

procedure TfrmCreditorAccountsSearch.tvAccountsColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   qryAccounts.Close;
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
