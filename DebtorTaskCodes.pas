unit DebtorTaskCodes;

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
  dxPScxSchedulerLnk, cxNavigator, cxBarEditItem, dxBarDBNav;

type
  TfrmDebtorTaskCodes = class(TForm)
    dsDebtoTaskCodes: TUniDataSource;
    ilstToolbar: TImageList;
    qryDebtoTaskCodes: TUniQuery;
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
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnExportToXL: TdxBarButton;
    OpenDialog: TOpenDialog;
    grdDebtorTaskCodes: TcxGrid;
    tvDebtorTaskCodes: TcxGridDBTableView;
    lvDebtorTaskCodes: TcxGridLevel;
    tvDebtorTaskCodesCODE: TcxGridDBColumn;
    tvDebtorTaskCodesDESCR: TcxGridDBColumn;
    tvDebtorTaskCodesNOTES: TcxGridDBColumn;
    tvDebtorTaskCodesACTIVE: TcxGridDBColumn;
    chkActiveOnly: TcxBarEditItem;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    procedure FormShow(Sender: TObject);
    procedure qryDebtoTaskCodesAfterScroll(DataSet: TDataSet);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnOpenClick(Sender: TObject);
    procedure dbgrScaleCostsDblClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure qryDebtoTaskCodesDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure tbtnClearClick(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure barbtnUseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuFilePrintClick(Sender: TObject);
    procedure btnExportToXLClick(Sender: TObject);
    procedure qryDebtoTaskCodesAfterPost(DataSet: TDataSet);
    procedure chkActiveOnlyClick(Sender: TObject);
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

procedure TfrmDebtorTaskCodes.FormShow(Sender: TObject);
begin
  MakeSQL;
end;

procedure TfrmDebtorTaskCodes.MakeSQL;
var
  sSQLWhere : string;
  sAND : string;
begin
  // Build the SQL Filter query
  qryDebtoTaskCodes.Close;
  sSQLWhere := ' WHERE ';
 
  if (boolean(chkActiveOnly.EditValue) = False) then
  begin
    sSQLWhere := sSQLWhere + sAND + ' ACTIVE = ''Y'' ';
  end;


  qryDebtoTaskCodes.SQL.Clear;
  qryDebtoTaskCodes.SQL.Add('SELECT debtor_task_codes.*, debtor_task_codes.rowid ');
  qryDebtoTaskCodes.SQL.Add(' FROM debtor_task_codes ');
  qryDebtoTaskCodes.SQL.Add(sSQLWhere);
  qryDebtoTaskCodes.SQL.Add(' ORDER BY CODE');
  qryDebtoTaskCodes.Open;
end;


procedure TfrmDebtorTaskCodes.qryDebtoTaskCodesAfterPost(DataSet: TDataSet);
begin
   if dmAxiom.uniInsight.InTransaction then
      dmAxiom.uniInsight.Commit;
end;

procedure TfrmDebtorTaskCodes.qryDebtoTaskCodesAfterScroll(DataSet: TDataSet);
begin
  if not qryDebtoTaskCodes.EOF then
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


procedure TfrmDebtorTaskCodes.tbtnNewClick(Sender: TObject);
begin
   tvdebtortaskcodes.DataController.Insert;
end;


procedure TfrmDebtorTaskCodes.tbtnOpenClick(Sender: TObject);
begin
  with TfrmScaleCostNew.Create(Self) do
    DisplayScaleCost(qryDebtoTaskCodes.FieldByName('CODE').AsString);
end;


procedure TfrmDebtorTaskCodes.dbgrScaleCostsDblClick(Sender: TObject);
begin
//  ModalResult := mrOK;
end;

procedure TfrmDebtorTaskCodes.mnuFileExitClick(Sender: TObject);
begin
//   ModalResult := mrCancel;
   Self.Close;
//   RemoveFromDesktop(Self);
end;


procedure TfrmDebtorTaskCodes.qryDebtoTaskCodesDESCRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryDebtoTaskCodes.FieldByName('DESCR').AsString;
end;

procedure TfrmDebtorTaskCodes.tbtnClearClick(Sender: TObject);
begin
  qryDebtoTaskCodes.Close;
  qryDebtoTaskCodes.Open;
end;

procedure TfrmDebtorTaskCodes.tbtnRefreshClick(Sender: TObject);
begin
  qryDebtoTaskCodes.Close;
  qryDebtoTaskCodes.Open;
end;

procedure TfrmDebtorTaskCodes.tbtnDeleteClick(Sender: TObject);
begin
  if not qryDebtoTaskCodes.IsEmpty then
    if MsgAsk('Do you want to delete the ' + qryDebtoTaskCodes.FieldByName('CODE').AsString + ' Scale Cost?') = mrYes then
      qryDebtoTaskCodes.Delete;
end;

procedure TfrmDebtorTaskCodes.barbtnUseClick(Sender: TObject);
begin
//   ModalResult := mrOK;
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmDebtorTaskCodes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmDebtorTaskCodes.mnuFilePrintClick(Sender: TObject);
begin
    dxComponentPrinter1.Preview();
end;

procedure TfrmDebtorTaskCodes.btnExportToXLClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,grdDebtorTaskCodes, True, True,True,'xls');
   end;
end;

procedure TfrmDebtorTaskCodes.chkActiveOnlyClick(Sender: TObject);
begin
   MakeSQL;
end;

end.

