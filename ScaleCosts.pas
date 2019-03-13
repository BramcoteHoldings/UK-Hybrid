unit ScaleCosts;

interface

uses
  ComObj, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Grids, DBGrids, Menus, Buttons,
  ExtCtrls, DBCtrls, ToolWin, DateChangeButton, ImgList,
  OracleUniProvider, Uni, DBAccess, MemDS, NumberEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit,
  cxTextEdit, dxBar, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, cxDBLookupComboBox, cxCheckBox, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGridLnk, cxPC, cxGridExportLink,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxDBEditorLnks, dxPSTextLnk,
  dxPScxSchedulerLnk, cxNavigator, dxSkinsCore, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxContainer,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

type
  TfrmScaleCosts = class(TForm)
    dsScaleCosts: TUniDataSource;
    ilstToolbar: TImageList;
    qryScaleCosts: TUniQuery;
    dxBarManager1: TdxBarManager;
    mnuFileNew: TdxBarButton;
    mnuFileOpen: TdxBarButton;
    mnuFilePrint: TdxBarButton;
    mnuFileExit: TdxBarButton;
    File1: TdxBarSubItem;
    Help2: TdxBarButton;
    Help1: TdxBarSubItem;
    barbtnRefresh: TdxBarButton;
    dxBarButton2: TdxBarButton;
    barbtnDelete: TdxBarButton;
    barbtnUse: TdxBarButton;
    qryMatterType: TUniQuery;
    dsMatterType: TUniDataSource;
    pagCashbook: TcxPageControl;
    tabScaleCosts: TcxTabSheet;
    dbgrScaleCosts: TcxGrid;
    tvScaleCosts: TcxGridDBTableView;
    tvScaleCostsCODE: TcxGridDBColumn;
    tvScaleCostsTYPE: TcxGridDBColumn;
    tvScaleCostsAMOUNT: TcxGridDBColumn;
    tvScaleCostsRATE: TcxGridDBColumn;
    tvScaleCostsUNIT: TcxGridDBColumn;
    tvScaleCostsDESCR: TcxGridDBColumn;
    tvScaleCostsBILLTYPE: TcxGridDBColumn;
    tvScaleCostsZERO_FEE: TcxGridDBColumn;
    tvScaleCostsACTIVE: TcxGridDBColumn;
    dbgrScaleCostsLevel1: TcxGridLevel;
    tabFilter: TcxTabSheet;
    lblBank: TLabel;
    Label1: TLabel;
    edtCode: TEdit;
    neAmount: TNumberEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtDescription: TEdit;
    btnClearAll: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnExportToXL: TdxBarButton;
    OpenDialog: TOpenDialog;
    chkActiveOnly: TCheckBox;
    tvScaleCostsAUTO_TIMER: TcxGridDBColumn;
    tvScaleCostsUTBMS_CODE: TcxGridDBColumn;
    tvScaleCostsColumnDFLT_TIME_UNITS: TcxGridDBColumn;
    tvScaleCostsColumnDEFAULTTIME: TcxGridDBColumn;
    tvScaleCostsPARENT: TcxGridDBColumn;
    tvScaleCostsDAYS: TcxGridDBColumn;
    tvScaleCostsBUDGET_LOW: TcxGridDBColumn;
    tvScaleCostsBUDGET_HIGH: TcxGridDBColumn;
    cbType: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure qryScaleCostsAfterScroll(DataSet: TDataSet);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnOpenClick(Sender: TObject);
    procedure dbgrScaleCostsDblClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure qryScaleCostsDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure tbtnClearClick(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure barbtnUseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControl1Change(Sender: TObject);
    procedure mnuFilePrintClick(Sender: TObject);
    procedure btnExportToXLClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MakeSQL;
  end;

implementation

uses
  AxiomData, MiscFunc, ScaleCostNew;

{$R *.DFM}

procedure TfrmScaleCosts.FormShow(Sender: TObject);
begin
//  StringPopulate(cbType.Items, 'MATTERTYPE', 'CODE');
  MakeSQL;
end;

procedure TfrmScaleCosts.MakeSQL;
var
  sSQLWhere : string;
  sAND : string;
begin
  // Build the SQL Filter query
  qryScaleCosts.Close;
  sAND := ' WHERE ';
  if cbType.Text <> '' then
  begin
    sSQLWhere := sSQLWhere + sAND + 'TYPE = ''' + cbType.EditValue + '''';
    sAND := ' AND ';
  end;
  if edtCode.Text <> '' then
  begin
    sSQLWhere := sSQLWhere + sAND + 'upper(CODE) like ''%' + uppercase(edtCode.Text) + '%''';
    sAND := ' AND ';
  end;
  if edtDescription.Text <> '' then
  begin
    sSQLWhere := sSQLWhere + sAND + 'upper(DESCR) like ''%' + uppercase(edtDescription.Text) + '%''';
    sAND := ' AND ';
  end;
  if (neAmount.Text <> '') and (neAmount.AsCurrency <> 0) then
  begin
    sSQLWhere := sSQLWhere + sAND + 'AMOUNT = ' + neAmount.EditText;
    sAND := ' AND ';
  end;
  if (chkActiveOnly.Checked = True) then
  begin
    sSQLWhere := sSQLWhere + sAND + ' ACTIVE = ''Y'' ';
    sAND := ' AND ';
  end;

  qryScaleCosts.SQL.Clear;
  qryScaleCosts.SQL.Add('SELECT * ');
  qryScaleCosts.SQL.Add(' FROM SCALECOST ');
  qryScaleCosts.SQL.Add(sSQLWhere);
  qryScaleCosts.SQL.Add(' ORDER BY CODE');
  qryScaleCosts.Open;
end;


procedure TfrmScaleCosts.btnClearAllClick(Sender: TObject);
begin
   cbType.Text := '';
   cbType.EditValue := varNull;
   edtCode.Text := '';
   edtDescription.Text := '';
   neAmount.EditText := '0';
end;


procedure TfrmScaleCosts.qryScaleCostsAfterScroll(DataSet: TDataSet);
begin
  if not qryScaleCosts.EOF then
  begin
    mnuFileOpen.Enabled := True;
    mnuFilePrint.Enabled := True;
  end
  else
  begin
    mnuFileOpen.Enabled := False;
    mnuFilePrint.Enabled := False;
  end;
end;


procedure TfrmScaleCosts.tbtnNewClick(Sender: TObject);
begin
  with TfrmScaleCostNew.Create(Self) do
    InsertScaleCost;
end;


procedure TfrmScaleCosts.tbtnOpenClick(Sender: TObject);
begin
  with TfrmScaleCostNew.Create(Self) do
    DisplayScaleCost(qryScaleCosts.FieldByName('CODE').AsString);
end;


procedure TfrmScaleCosts.dbgrScaleCostsDblClick(Sender: TObject);
begin
//  ModalResult := mrOK;
end;

procedure TfrmScaleCosts.mnuFileExitClick(Sender: TObject);
begin
//   ModalResult := mrCancel;
   Self.Close;
//   RemoveFromDesktop(Self);
end;


procedure TfrmScaleCosts.qryScaleCostsDESCRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryScaleCosts.FieldByName('DESCR').AsString;
end;

procedure TfrmScaleCosts.tbtnClearClick(Sender: TObject);
begin
  qryScaleCosts.Close;
  btnClearAll.Click;
  qryScaleCosts.Open;
end;

procedure TfrmScaleCosts.tbtnRefreshClick(Sender: TObject);
begin
  qryScaleCosts.Close;
  qryScaleCosts.Open;
end;

procedure TfrmScaleCosts.tbtnDeleteClick(Sender: TObject);
begin
  if not qryScaleCosts.IsEmpty then
    if MsgAsk('Do you want to delete the ' + qryScaleCosts.FieldByName('CODE').AsString + ' Scale Cost?') = mrYes then
      qryScaleCosts.Delete;
end;

procedure TfrmScaleCosts.barbtnUseClick(Sender: TObject);
begin
//   ModalResult := mrOK;
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmScaleCosts.FormCreate(Sender: TObject);
begin
   qryMatterType.Open;
end;

procedure TfrmScaleCosts.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmScaleCosts.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   qryMatterType.Close;
end;

procedure TfrmScaleCosts.cxPageControl1Change(Sender: TObject);
begin
   btnExportToXL.Enabled := (pagCashbook.ActivePageIndex = 0);
   barbtnUse.Enabled := (pagCashbook.ActivePageIndex = 0);
   mnuFileOpen.Enabled := (pagCashbook.ActivePageIndex = 0);
   barbtnDelete.Enabled := (pagCashbook.ActivePageIndex = 0);
   barbtnRefresh.Enabled := (pagCashbook.ActivePageIndex = 0);
   if pagCashbook.ActivePage.TabIndex = tabScaleCosts.TabIndex then
      MakeSQL;
end;

procedure TfrmScaleCosts.mnuFilePrintClick(Sender: TObject);
begin
    dxComponentPrinter1.Preview();
end;

procedure TfrmScaleCosts.btnExportToXLClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrScaleCosts, True, True,True,'xls');
   end;
end;

end.

