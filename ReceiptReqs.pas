unit ReceiptReqs;

(*
  Change History
  ==============



*)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Grids, DBGrids, Menus, Buttons, Math, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxCheckBox,
  cxTextEdit, cxCurrencyEdit, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxLabel,
  DateChangeButton, cxButtons, JvExComCtrls, JvComCtrls, dxPSCore, dxPScxCommon,
  ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, cxClasses, System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls,
  Vcl.ActnMan, Vcl.ImgList, dxBar, Uni, MemDS, DBAccess, cxProgressBar,
  dxStatusBar, ppIniStorage, ppFileUtils, cxGridStrs, cxGridDBDataDefinitions,
  Variants, dxPSDBTCLnk, dxPScxSchedulerLnk,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  cxPC, cxRadioGroup, cxBarEditItem, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

const
  isREQUISITION = 0;
  isFILTER = 1;
  isPRESENT = 2;

  BTNGREENLIGHT = 2;
  BTNREDLIGHT = 3;
  BTNGROUP = 4;
  BTNUNGROUP = 5;

  CM_EXPANDGROUPS = WM_USER + 1002;

  UM_CHECK = WM_USER + 10000;
type
  TfrmReceiptReqs = class(TForm)
    dsReceiptReqs: TUniDataSource;
    qryReceiptReqs: TUniQuery;
    qryUpdate: TUniQuery;
    qryBill: TUniQuery;
    qryDetails: TUniQuery;
    dsData: TUniDataSource;
    pmCheqreqs: TPopupMenu;
    miViewCheqreqHistoryforMatter: TMenuItem;
    dxBarManager1: TdxBarManager;
    mnuFileDelete: TdxBarButton;
    mnuFilePrint: TdxBarButton;
    mnuFileReprint: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuFile: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    btnRefresh: TdxBarButton;
    bbtnRev: TdxBarButton;
    pmReports: TdxBarPopupMenu;
    miReportChequeRequests: TdxBarButton;
    miReportEffectofRequests: TdxBarButton;
    ilstToolbar: TImageList;
    ActionManager1: TActionManager;
    actCreditNote: TAction;
    actReverse: TAction;
    cxStyleRepository3: TcxStyleRepository;
    cxStyleW: TcxStyle;
    cxStyleN: TcxStyle;
    cxStyleY: TcxStyle;
    cxStyleD: TcxStyle;
    cxStyleGroupHeader: TcxStyle;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    qryCheque: TUniQuery;
    qryBank: TUniQuery;
    qryBankBalance: TUniQuery;
    qryAllocs: TUniQuery;
    qryTmp: TUniQuery;
    qryTransItem: TUniQuery;
    actConvert: TAction;
    actConvertAll: TAction;
    actCheqReqEdit: TAction;
    actHold: TAction;
    sbarInfo: TdxStatusBar;
    qryCheqReqsSelected: TUniQuery;
    popGrid: TdxBarPopupMenu;
    qryPrinter: TUniQuery;
    rpCheqReqs: TppReport;
    plCheqReqs: TppDBPipeline;
    actPrint: TAction;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppVariable1: TppVariable;
    ppVariable5: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppVariable6: TppVariable;
    ppVariable7: TppVariable;
    raCodeModule1: TraCodeModule;
    btnPrintGrid: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    dsCheqReqRpt: TUniDataSource;
    qryCheqReqRpt: TUniQuery;
    qryCheqReqsEffect: TUniQuery;
    dsCheqReqsEffect: TUniDataSource;
    plCheqReqsEffect: TppDBPipeline;
    rptCheqReqsEffect: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel16: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine4: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppVariable8: TppVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppLabel30: TppLabel;
    ppDBCalc7: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppVariable9: TppVariable;
    ppVariable10: TppVariable;
    ppVariable11: TppVariable;
    qryBillNotPaid: TUniQuery;
    qryTrustReqs: TUniQuery;
    dbgrReceiptReq: TcxGrid;
    tvReceiptReq: TcxGridDBTableView;
    tvReceiptReqCREATED: TcxGridDBColumn;
    tvReceiptReqFILEID: TcxGridDBColumn;
    tvReceiptReqSHORTDESCR: TcxGridDBColumn;
    tvReceiptReqDESCR: TcxGridDBColumn;
    tvReceiptReqCREFNO: TcxGridDBColumn;
    tvReceiptReqTITLE: TcxGridDBColumn;
    dbgrReceiptReqLevel1: TcxGridLevel;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    edFilter: TcxTextEdit;
    rbPreparing: TcxRadioButton;
    rbAwaitingAuthorisation: TcxRadioButton;
    rbAuthorised: TcxRadioButton;
    cxLabel2: TcxLabel;
    dtSince: TcxDateEdit;
    btnSearch: TcxButton;
    cxLabel3: TcxLabel;
    cmbEmployees: TcxLookupComboBox;
    tvReceiptReqAMOUNT: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure popGridDeleteClick(Sender: TObject);
    procedure popGridPrintClick(Sender: TObject);
    procedure mnuFilePrintClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnHoldClick(Sender: TObject);
    procedure tbtnGroupClick(Sender: TObject);
    procedure dbgrCheqReqDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
//    procedure qrCheqReqsBeforePrint(Sender: TCustomQuickRep;
//      var PrintReport: Boolean);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure dbgrCheqReqColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure pmCheqreqsPopup(Sender: TObject);
    procedure bbtnGroupClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure actCreditNoteUpdate(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure tvCheqReqDataControllerGroupingChanged(Sender: TObject);
    procedure tvReceiptReqCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure tvReceiptReqFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvReceiptReqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbtnAuthoriseClick(Sender: TObject);
    procedure tabFilterShow(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure btnPrintGridClick(Sender: TObject);
    procedure ppVariable9Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable8Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable10Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable11Calc(Sender: TObject; var Value: Variant);
    procedure tvCheqReqSELECTEDPropertiesEditValueChanged(Sender: TObject);
    procedure dtSincePropertiesChange(Sender: TObject);
    procedure cmbEmployeesPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    LastKey: Word;
    bConversionOn: boolean;
    FNumOverdrawn: integer;
    FTotalOverdrawn: currency;
    procedure CMExpandGroups(var Msg: TMessage); message CM_EXPANDGROUPS;
    procedure SetGroup;
    function GetDefaultTax(sType : String; sDefaultTax : String) : String;

  public
    { Public declarations }
    procedure UmCheck(var Message: TMessage); message UM_CHECK;
    procedure Check(AGridView: TcxGridDBTableView);
    procedure MakeSQL;
  end;

var
  frmReceiptReqs: TfrmReceiptReqs;
  sSql : String;
  sOrderBy : String;
implementation

uses
  MiscFunc, Process, AxiomData;

{$R *.DFM}


procedure TfrmReceiptReqs.FormShow(Sender: TObject);
begin
   cmbEmployees.EditValue := dmAxiom.UserID;
   MakeSQL;
   dtSince.Date := Now;
end;

function TfrmReceiptReqs.GetDefaultTax(sType : String; sDefaultTax : String) : String;
var
  lsDefaultTax : String;
begin
   lsDefaultTax := Get_Default_GST(sType);
   if (lsDefaultTax = '') then
      lsDefaultTax := sDefaultTax;
   Result := lsDefaultTax;
end;

procedure TfrmReceiptReqs.MakeSQL;
var
  sSQLWhere,sGroupBy, sHaving : string;
  sAND : string;
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
begin
  // Build the SQL Filter query
   Screen.Cursor := crHourGlass;
   if tvReceiptReq.GroupedColumnCount > 0 then
      tvReceiptReq.GroupedColumns[0].GroupIndex := -1;
   qryReceiptReqs.Close;
   sAND := ' AND ';


   sSql := 'SELECT c.trust, c.fileid, c.nmatter, c.amount, c.payor, c.exp_date, c.descr,' +
       'c.bank, c.who, c.fileid AS crefno, c.converted, c.nname, ' +
       'c.fileid, m.shortdescr, m.title, c.ROWID  '+

   'FROM receipt_req C, matter m ' +

   'where c.nmatter = m.nmatter '+
   ' and trunc(c.exp_date) >= trunc(:expdate)' +
   ' and WHO = :emp_code ';

   sSql := sSql + sSQLWhere;

   sGroupBy := '';

    sHaving:= '';

   sComma := ' ';
   bFinished := False;
   iCtr := 0;

   sOrderBy := ' ORDER BY C.EXP_DATE';
   qryReceiptReqs.SQL.Text := sSql + sGroupBy + sHaving + sOrderBy;

   qryReceiptReqs.ParamByName('expdate').AsDate := dtSince.Date;
   qryReceiptReqs.ParamByName('emp_code').AsString := cmbEmployees.EditValue;

   if dmAxiom.runningide then
      qryReceiptReqs.SQL.SaveToFile('c:\tmp\receiptreqs.sql');

   try
      qryReceiptReqs.Open;

   finally
      Screen.Cursor := crDefault;
   end;
end;


procedure TfrmReceiptReqs.popGridDeleteClick(Sender: TObject);
begin
   mnuFileDelete.Click;
end;

procedure TfrmReceiptReqs.popGridPrintClick(Sender: TObject);
begin
   mnuFilePrint.Click;
end;

procedure TfrmReceiptReqs.mnuFilePrintClick(Sender: TObject);
begin
//  qrCheqreqs.PreviewModal;
   rpCheqReqs.Print;
end;

procedure TfrmReceiptReqs.mnuFileExitClick(Sender: TObject);
begin
  Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmReceiptReqs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryReceiptReqs.Close;
   dmAxiom.qryEmplyeeList.Close;
   RemoveFromDesktop(Self);
//   Self.Release;
end;

procedure TfrmReceiptReqs.SetGroup;
begin

end;

procedure TfrmReceiptReqs.tbtnHoldClick(Sender: TObject);
var
ictr : Integer;

begin
(*
  // do for multiple items
  for iCtr := 0 to dbgrCheqReq.SelectedRows.Count - 1 do
  begin
    dbgrCheqReq.DataSource.DataSet.GotoBookmark(Pointer(dbgrCheqReq.SelectedRows.Items[iCtr]));
    with qryReceiptReqs do
    begin
      Edit;
      if (FieldByName('HELD').AsString = 'Y') or (FieldByName('HELD').AsString = 'W') then
      begin
        FieldByName('HELD').AsString := 'N';
        //FieldByName('Hold').AsString := '';
      end
      else
      begin
        FieldByName('HELD').AsString := 'Y';
        //FieldByName('Hold').AsString := 'Held';
      end;
      Post;
      ApplyUpdates;
    end;
    SetHeld;
  end;
*)
  // do for multiple items
  if tvReceiptReq.DataController.GetSelectedCount > 0 then
  begin
    for iCtr := 0 to tvReceiptReq.DataController.GetSelectedCount - 1 do
    begin
//      dbgrCheqReq.DataSource.DataSet.GotoBookmark(Pointer(dbgrCheqReq.SelectedRows.Items[iCtr]));
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

      with qryReceiptReqs do
      begin
        Edit;
        if (FieldByName('HELD').AsString = 'Y') or (FieldByName('HELD').AsString = 'W') then
        begin
          //FieldByName('HELD').AsString := 'N';
          qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''N'' WHERE NCHEQREQ =' + FieldByName('NCHEQREQ').AsString;
          qryUpdate.ExecSQL;
          qryUpdate.Close;
        end
        else
        begin
          //FieldByName('HELD').AsString := 'Y';
          qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''Y'' WHERE NCHEQREQ =' + FieldByName('NCHEQREQ').AsString;
          qryUpdate.ExecSQL;
          qryUpdate.Close;
        end;
        //Post;
        //ApplyUpdates;
      end;
}
      qryReceiptReqs.Edit;
      if (qryReceiptReqs.FieldByName('HELD').AsString = 'Y') or (qryReceiptReqs.FieldByName('HELD').AsString = 'W') then
      begin
        //FieldByName('HELD').AsString := 'N';
        qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''N'' WHERE NCHEQREQ =' + qryReceiptReqs.FieldByName('NCHEQREQ').AsString;
        qryUpdate.ExecSQL;
        qryUpdate.Close;
      end
      else
      begin
        //FieldByName('HELD').AsString := 'Y';
        qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''Y'' WHERE NCHEQREQ =' + qryReceiptReqs.FieldByName('NCHEQREQ').AsString;
        qryUpdate.ExecSQL;
        qryUpdate.Close;
      end;
    end;
    qryReceiptReqs.Close;
    qryReceiptReqs.Open;
  end
  else
    MessageDlg('No items selected', mtInformation, [mbOK], 0);
end;

procedure TfrmReceiptReqs.tbtnGroupClick(Sender: TObject);
begin
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

  with qryReceiptReqs do
  begin
    Edit;
    if FieldByName('GROUPABLE').AsString = 'Y' then
      FieldByName('GROUPABLE').AsString := 'N'
    else
      FieldByName('GROUPABLE').AsString := 'Y';
    Post;
    ApplyUpdates;
  end;
}
  qryReceiptReqs.Edit;
  if qryReceiptReqs.FieldByName('GROUPABLE').AsString = 'Y' then
    qryReceiptReqs.FieldByName('GROUPABLE').AsString := 'N'
  else
    qryReceiptReqs.FieldByName('GROUPABLE').AsString := 'Y';
  qryReceiptReqs.Post;
  qryReceiptReqs.ApplyUpdates;
  SetGroup;
end;

procedure TfrmReceiptReqs.dbgrCheqReqDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  dbGrid: TDBGrid;
  lCANP: string;
  lTPAY: string;
begin
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

  with (Sender as TDBGrid) do
  begin
    if (gdSelected in State) and
       ( (gdFocused in State) or
       (not (gdFocused in State) and (dgAlwaysShowSelection in Options)) ) then
      Canvas.Font.Color := clHighlightText
    else
    begin
      if DataSource.DataSet.FieldByName('HELD').AsString = 'W' then
        Canvas.Font.Color := $0000FF
      else if DataSource.DataSet.FieldByName('HELD').AsString = 'Y' then
        Canvas.Font.Color := $FF00FF
      else if DataSource.DataSet.FieldByName('HELD').AsString = 'N' then
        Canvas.Font.Color := clGreen
      else
        Canvas.Font.Color := clWindowText;
    end;
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
}
  dbGrid:= Sender as TDBGrid;

  if (gdSelected in State) and
     ( (gdFocused in State) or
     (not (gdFocused in State) and (dgAlwaysShowSelection in dbGrid.Options)) ) then
    dbGrid.Canvas.Font.Color := clHighlightText
  else
  begin
    lCANP := dbGrid.DataSource.DataSet.FieldByName('CAN_PAY').AsString;
    lTPAY := dbGrid.DataSource.DataSet.FieldByName('TPAY').AsString;
    if dbGrid.DataSource.DataSet.FieldByName('HELD').AsString = 'W' then
      dbGrid.Canvas.Font.Color := $0000FF
    else if dbGrid.DataSource.DataSet.FieldByName('HELD').AsString = 'Y' then
      dbGrid.Canvas.Font.Color := $FF00FF
    else if (dbGrid.DataSource.DataSet.FieldByName('HELD').AsString = 'N') and (lCANP = 'Y') and (lTPAY = 'Y') then
      dbGrid.Canvas.Font.Color := clGreen
    else if (lCANP = 'N') or (lTPAY = 'N') then
      dbGrid.Canvas.Font.Color := clYellow
    else
      dbGrid.Canvas.Font.Color := clWindowText;
  end;
  dbGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TfrmReceiptReqs.dtSincePropertiesChange(Sender: TObject);
begin
   makesql;
end;

procedure TfrmReceiptReqs.tbtnRefreshClick(Sender: TObject);
begin
  qryReceiptReqs.Close;
  qryReceiptReqs.Open;
end;

procedure TfrmReceiptReqs.dbgrCheqReqColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  MakeSql;
end;

procedure TfrmReceiptReqs.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);
   dmAxiom.qryEmplyeeList.Open;
   cmbEmployees.Enabled := (dmAxiom.AUTH_CLIENT_PAYMENT_LIMIT <> 0);
end;

procedure TfrmReceiptReqs.tbtnPrintClick(Sender: TObject);
begin
//  qrCheqreqs.PreviewModal;
end;

procedure TfrmReceiptReqs.pmCheqreqsPopup(Sender: TObject);
begin
  if (dmAxiom.Security.CheqReq.History) then
  begin
    if qryReceiptReqs.IsEmpty then
      miViewCheqreqHistoryforMatter.Caption:= 'Nothing to look at!'
    else
      miViewCheqreqHistoryforMatter.Caption:= Format('View Cheqreq History for Matter #%s...', [qryReceiptReqs.FieldByName('CREFNO').AsString])
  end
  else
    miViewCheqreqHistoryforMatter.Visible:= False
end;

procedure TfrmReceiptReqs.bbtnGroupClick(Sender: TObject);
begin
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

  with qryReceiptReqs do
  begin
    Edit;
    if FieldByName('GROUPABLE').AsString = 'Y' then
      FieldByName('GROUPABLE').AsString := 'N'
    else
      FieldByName('GROUPABLE').AsString := 'Y';
    Post;
    ApplyUpdates;
  end;
}
  qryReceiptReqs.Edit;
  if qryReceiptReqs.FieldByName('GROUPABLE').AsString = 'Y' then
    qryReceiptReqs.FieldByName('GROUPABLE').AsString := 'N'
  else
    qryReceiptReqs.FieldByName('GROUPABLE').AsString := 'Y';
  qryReceiptReqs.Post;
  qryReceiptReqs.ApplyUpdates;
  SetGroup;
end;

procedure TfrmReceiptReqs.btnRefreshClick(Sender: TObject);
begin
  qryReceiptReqs.Close;
  qryReceiptReqs.Open;
end;

procedure TfrmReceiptReqs.actCreditNoteUpdate(Sender: TObject);
begin
   actCreditNote.Enabled := ((tvReceiptReq.DataController.GetSelectedCount = 1) and
                            (not qryReceiptReqs.FieldByName('FILEID').IsNull) and
                            (qryReceiptReqs.FieldByName('BILLED').AsString = 'Y') and
                            (qryReceiptReqs.FieldByName('REV_NCHEQREQ').IsNull));
end;

procedure TfrmReceiptReqs.actReverseUpdate(Sender: TObject);
begin
   if (qryReceiptReqs.State <> (dsInactive)) and dmAxiom.Security.CheqReq.Reverse then
      actReverse.Enabled := (qryReceiptReqs.FieldByName('BILLED').AsString = 'N');
end;

procedure TfrmReceiptReqs.CMExpandGroups(var Msg: TMessage);
begin
  TcxGridDBDataController(Msg.WParam).Groups.FullExpand;
end;

procedure TfrmReceiptReqs.tvCheqReqDataControllerGroupingChanged(
  Sender: TObject);
begin
   if tvReceiptReq.GroupedColumnCount > 1 then
      tvReceiptReq.GroupedColumns[0].GroupIndex := -1;

   PostMessage(Handle, CM_EXPANDGROUPS, Integer(Sender), 0);
end;

function IsGroupedRecord(ARecord: TcxCustomGridRecord): Boolean;
begin
  Result := not (ARecord.Level = ARecord.GridView.DataController.Groups.GroupingItemCount);
end;

procedure TfrmReceiptReqs.tvReceiptReqCanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
   AAllow := not IsGroupedRecord(ARecord);
end;

procedure TfrmReceiptReqs.tvReceiptReqFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  GroupItemCount: Integer;
  Data: TcxCustomDataController;
  I: Integer;
  AView: TcxGridDBTableView;
begin
   AView := Sender as TcxGridDBTableView;

   if (AFocusedRecord = nil) or (APrevFocusedRecord = nil) then
      Exit;

   if IsGroupedRecord(AFocusedRecord) then
   begin
      Data := Sender.DataController;
      GroupItemCount := Data.Groups.GroupingItemCount;

      if (LastKey = VK_NONAME) or  // record is clicked by mouse
         (APrevFocusedRecord.Index < AFocusedRecord.Index) then  // move down
      begin
         Data.FocusedRowIndex := AFocusedRecord.Index + (GroupItemCount - AFocusedRecord.Level);
      end
      else  // move up
      begin
         if AFocusedRecord.Index < GroupItemCount then
            Data.FocusedRowIndex := AFocusedRecord.Index + (GroupItemCount - AFocusedRecord.Level)
         else
            for I := AFocusedRecord.Index - 1 downto 0 do
            begin
               if not IsGroupedRecord(Sender.ViewData.Records[I]) then
               begin
                  Sender.ViewData.Records[I].Focused := True;
                  Break;
               end;
               if I = 0 then
                  APrevFocusedRecord.Focused := True;
            end;
      end;
   end;
end;

procedure TfrmReceiptReqs.tvReceiptReqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   LastKey := Key;
end;

procedure TfrmReceiptReqs.tvCheqReqSELECTEDPropertiesEditValueChanged(
  Sender: TObject);
var
   ACheck: TcxCheckBox;
   AGridSite: TcxGridSite;
   AGridView: TcxGridDBTableView;
begin
   ACheck := Sender as TcxCheckBox;
   AGridSite := ACheck.Parent as TcxGridSite;
   AGridView := AGridSite.GridView as TcxGridDBTableView;
   Check(AGridView);
end;

procedure TfrmReceiptReqs.bbtnAuthoriseClick(Sender: TObject);
var
   iCtr, ARowIndex: integer;
begin
   qryReceiptReqs.Edit;
   case tvReceiptReq.DataController.GetSelectedCount of
      0, 1:
      begin
         if qryReceiptReqs.FieldByName('authorised').AsString = 'Y' then
         begin
            qryReceiptReqs.FieldByName('authorised_by').Clear;
            qryReceiptReqs.FieldByName('authorised').AsString := 'N';
         end
         else
         begin
            qryReceiptReqs.FieldByName('authorised').AsString := 'Y';
            qryReceiptReqs.FieldByName('authorised_by').AsString := dmAxiom.UserID
         end;
      end;
   else
      begin
         for iCtr := 0 to tvReceiptReq.DataController.GetSelectedCount - 1 do
         begin
            ARowIndex := tvReceiptReq.DataController.GetSelectedRowIndex(iCtr);
            tvReceiptReq.DataController.FocusedRowIndex := ARowIndex;
 //           tvReceiptReq.ViewData.Records[ARowIndex].Focused := True;
            if qryReceiptReqs.State <> dsEdit then
               qryReceiptReqs.Edit;
            
         end;
      end;
   end;
   qryReceiptReqs.Post;
   qryReceiptReqs.ApplyUpdates;
   dmAxiom.uniInsight.Commit;
end;

procedure TfrmReceiptReqs.tabFilterShow(Sender: TObject);
begin
   mnuFileDelete.Enabled := False;
   bbtnrev.Enabled := False;
   mnuFilePrint.Enabled := False;
   miViewCheqreqHistoryforMatter.Enabled:= False;
end;

procedure TfrmReceiptReqs.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := SystemString('COMPANY');
end;

procedure TfrmReceiptReqs.btnPrintGridClick(Sender: TObject);
begin
   dxComponentPrinter1.Preview();
end;

procedure TfrmReceiptReqs.ppVariable9Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := ClearTrust(ppDBText12.FieldValue);
end;

procedure TfrmReceiptReqs.ppVariable8Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := ppVariable9.Value - ppDBText23.FieldValue;
   if Value < 0 then
   begin
      Inc(FNumOverDrawn);
      FTotalOverdrawn := FTotalOverdrawn + Value;
   end;
end;

procedure TfrmReceiptReqs.ppVariable10Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := FNumOverdrawn;
end;

procedure TfrmReceiptReqs.ppVariable11Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := -FTotalOverdrawn;
end;

procedure TfrmReceiptReqs.Check(AGridView: TcxGridDBTableView);
var
  i: integer;
begin
{   for i:= 0 to AGridView.DataController.RecordCount - 1 do
   begin
      if AGridView.DataController.Values[i, tvReceiptReqSELECTED.Index] = True then
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True),true)
      else
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True), false);
   end;   }
end;

procedure TfrmReceiptReqs.cmbEmployeesPropertiesCloseUp(Sender: TObject);
begin
   if cmbEmployees.Text <> '' then
      MakeSQL;
end;

procedure TfrmReceiptReqs.UmCheck(var Message: TMessage);
begin
   Check(TcxGridDBTableView(Message.WParam));
end;

end.

