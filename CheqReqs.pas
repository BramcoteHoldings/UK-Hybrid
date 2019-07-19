unit CheqReqs;

(*
  Change History
  ==============

  9.1.26 10.11.2017 DW
      Fixed join issue restricting billed and receipted unconverted cheque reqs

  9.1.26  28.10.2017 DW
      Added to stop subsequent trust cheq requests from overdrawing trust account

  9.1.26  23.10.2017 DW
      added code to stop Trust cheq request from being converted if bill alreay paid

  4.8.2004 TH

   Added Date From filter to improve search speed.

  1.9 3.10.2002 GG

   Added checkbox to filter so that users can view converted cheqreqs.

   Fixed up the tab order on the filter page.

  1.8 30.9.2002 GG

   Change History started.

   The Payable Cheque Request feature now filters out payable cheqreqs more
   accurately.  Specifically, in cases where cheques are drawn where the cheque
   entry does not differentiate the amount of GST in the cheque total, the
   cheqreq will not show up as waiting for payment any longer.

   This was an issue, because previously the processable cheque requests feature
   was not taking into consideration that the GST component of the cheqreq is
   accounted for at the time the cheqreq is billed, not at the time the cheque
   is drawn.  When cheques are drawn on unbilled cheqreqs, the GST component
   needs to be considered at the time the cheque is drawn.

   Also cleaned out with statements to improve code readability.

*)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxSchedulerLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxBarBuiltInMenu, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxCheckBox,
  cxTextEdit, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  cxLabel, DateChangeButton, cxButtons, cxPC, dxPSCore, dxPScxCommon, ppDB,
  ppDBPipe, ppParameter, ppDesignLayer, ppModule, raCodMod, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan, Vcl.ImgList,
  dxBar, cxClasses, Uni, MemDS, DBAccess, cxProgressBar, dxStatusBar, ppFileUtils,
  ppIniStorage, Variants, cxGridDBDataDefinitions, dxDateRanges,
  dxPScxEditorLnks, System.ImageList, dxPSDBTCLnk, ppStrtch, ppMemo;

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
  TfrmCheqReqs = class(TForm)
    dsCheqReq: TUniDataSource;
    qryCheqReq: TUniQuery;
    qryUpdate: TUniQuery;
    qryBill: TUniQuery;
    procBillCreate: TUniStoredProc;
    qryDetails: TUniQuery;
    dsData: TUniDataSource;
    pmCheqreqs: TPopupMenu;
    miViewCheqreqHistoryforMatter: TMenuItem;
    dxBarManager1: TdxBarManager;
    mnuFileNewCheque: TdxBarButton;
    mnuFileOpen: TdxBarButton;
    mnuFileDelete: TdxBarButton;
    mnuFileConvertReq: TdxBarButton;
    mnuFileConvertAll: TdxBarButton;
    mnuFilePrint: TdxBarButton;
    mnuFileReprint: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuFile: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    bbtnHold: TdxBarButton;
    bbtnGroup: TdxBarButton;
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
    qryCheqreqUpdate: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    qryCheque: TUniQuery;
    qryBank: TUniQuery;
    qryBankBalance: TUniQuery;
    qryAllocs: TUniQuery;
    qryTmp: TUniQuery;
    qryTransItem: TUniQuery;
    qryInvoiceCRAmount: TUniQuery;
    qryInvoiceUpdate: TUniQuery;
    actConvert: TAction;
    actConvertAll: TAction;
    actCheqReqEdit: TAction;
    actHold: TAction;
    qryCheqReqBal: TUniQuery;
    sbarInfo: TdxStatusBar;
    dxStatusBar1Container2: TdxStatusBarContainerControl;
    progBarProcess: TcxProgressBar;
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
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
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
    raCodeModule1: TraCodeModule;
    btnPrintGrid: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnCreditNote: TdxBarButton;
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
    pagCashbook: TcxPageControl;
    tabCashbook: TcxTabSheet;
    tabFilter: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    lblAmountFrom: TLabel;
    lblBank: TLabel;
    lblDateFrom: TLabel;
    lblShowOnly: TLabel;
    Memo: TLabel;
    btnClearAll: TcxButton;
    btnTrust: TButton;
    cbAuthor: TComboBox;
    cbBank: TComboBox;
    cbBilledUnconverted: TcxCheckBox;
    cbConverted: TcxCheckBox;
    cbExcludeTrust: TcxCheckBox;
    cbIncludeNegative: TcxCheckBox;
    cbIncludeTrust: TcxCheckBox;
    cbToBeBilled: TcxCheckBox;
    cbTrustCreditorPayments: TcxCheckBox;
    chkDateFrom: TCheckBox;
    chkDateTo: TCheckBox;
    chkHeld: TcxCheckBox;
    chkOwing: TcxCheckBox;
    chkProcessable: TcxCheckBox;
    chkRev: TcxCheckBox;
    chkUnpresented: TcxCheckBox;
    chkUnprinted: TcxCheckBox;
    chkUrgent: TcxCheckBox;
    chkWaiting: TcxCheckBox;
    DateChangeButton1: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    dtpDateFrom: TDateTimePicker;
    dtpDateTo: TDateTimePicker;
    lblAuthorName: TcxLabel;
    lblBankName: TcxLabel;
    tbAmountFrom: TEdit;
    tbAmountTo: TEdit;
    tbDesc: TEdit;
    tbFileID: TEdit;
    tbmemo: TEdit;
    tbPayee: TEdit;
    Splitter1: TSplitter;
    Panel1: TPanel;
    dbgrCheqReq: TcxGrid;
    tvCheqReq: TcxGridDBTableView;
    tvCheqReqSELECTED: TcxGridDBColumn;
    tvCheqReqHold: TcxGridDBColumn;
    tvCheqReqPAYEE: TcxGridDBColumn;
    tvCheqReqNNAME: TcxGridDBColumn;
    tvCheqReqREQDATE: TcxGridDBColumn;
    tvCheqReqDESCR: TcxGridDBColumn;
    tvCheqReqCREFNO: TcxGridDBColumn;
    tvCheqReqTotal: TcxGridDBColumn;
    tvCheqReqBANK: TcxGridDBColumn;
    tvCheqReqAUTHOR: TcxGridDBColumn;
    tvCheqReqURGENT: TcxGridDBColumn;
    tvCheqReqPAYABLE: TcxGridDBColumn;
    tvCheqReqHELD: TcxGridDBColumn;
    tvCheqReqFORCEPAY: TcxGridDBColumn;
    tvCheqReqTAX: TcxGridDBColumn;
    tvCheqReqNINVOICE: TcxGridDBColumn;
    tvCheqReqCAN_PAY: TcxGridDBColumn;
    tvCheqReqTPAY: TcxGridDBColumn;
    dbgrCheqReqLevel1: TcxGridLevel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1CREATED: TcxGridDBColumn;
    cxGrid1DBTableView1REFNO: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tvCheqReqNCHEQREQ: TcxGridDBColumn;
    ppDBText16: TppDBText;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppDBText17: TppDBText;
    ppLabel31: TppLabel;
    ppDBText10: TppDBText;
    ppDBText14: TppDBText;
    ppDBMemo1: TppDBMemo;
    procedure FormShow(Sender: TObject);
    procedure cbAuthorClick(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure pagCashbookChange(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure mnuFilePrintCashBookClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure popGridNewClick(Sender: TObject);
    procedure popGridDeleteClick(Sender: TObject);
    procedure popGridConvertClick(Sender: TObject);
    procedure popGridConvertAllClick(Sender: TObject);
    procedure popGridPrintClick(Sender: TObject);
    procedure mnuFileNewChequeClick(Sender: TObject);
    procedure mnuFileConvertReqClick(Sender: TObject);
    procedure mnuFileConvertAllClick(Sender: TObject);
    procedure mnuFilePrintClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCheqReqAfterScroll(DataSet: TDataSet);
    procedure tbtnHoldClick(Sender: TObject);
    procedure tbtnGroupClick(Sender: TObject);
    procedure tbtnOpenClick(Sender: TObject);
    procedure dbgrCheqReqDblClick(Sender: TObject);
//    procedure qrCheqReqsBeforePrint(Sender: TCustomQuickRep;
//      var PrintReport: Boolean);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mnuFileOpenClick(Sender: TObject);
    procedure mnuFileDeleteClick(Sender: TObject);
    procedure mnuFileReprintClick(Sender: TObject);
    procedure dbgrCheqReqColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure btnTrustClick(Sender: TObject);
    procedure tbtnrevClick(Sender: TObject);
//    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
//      var PrintBand: Boolean);
    procedure qryCheqReqBeforeScroll(DataSet: TDataSet);
    procedure miReportChequeRequestsClick(Sender: TObject);
    procedure miReportEffectofRequestsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure pmCheqreqsPopup(Sender: TObject);
    procedure miViewCheqreqHistoryforMatterClick(Sender: TObject);
    procedure qryCheqReqBeforeClose(DataSet: TDataSet);
    procedure qryCheqReqAfterOpen(DataSet: TDataSet);
    procedure bbtnHoldClick(Sender: TObject);
    procedure bbtnGroupClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure bbtnRevClick(Sender: TObject);
    procedure actCreditNoteExecute(Sender: TObject);
    procedure actCreditNoteUpdate(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure tvCheqReqDataControllerGroupingChanged(Sender: TObject);
    procedure tvCheqReqCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure tvCheqReqFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvCheqReqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvCheqReqMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actConvertUpdate(Sender: TObject);
    procedure actConvertAllUpdate(Sender: TObject);
    procedure bbtnAuthoriseClick(Sender: TObject);
    procedure tabFilterShow(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure actPrintUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure btnPrintGridClick(Sender: TObject);
    procedure chkDateToClick(Sender: TObject);
    procedure chkDateFromClick(Sender: TObject);
    procedure ppVariable9Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable8Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable10Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable11Calc(Sender: TObject; var Value: Variant);
    procedure tvCheqReqStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tvCheqReqSELECTEDPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    LastKey: Word;
    bConversionOn: boolean;
    FNumOverdrawn: integer;
    FTotalOverdrawn: currency;
    procedure CMExpandGroups(var Msg: TMessage); message CM_EXPANDGROUPS;
    procedure ConvertTagCheqReq;
    procedure SetHeld;
    procedure SetButtons;
    procedure SetGroup;
    procedure CreateCreditNote;
    function GetDefaultTax(sType : String; sDefaultTax : String) : String;
    function PostCheques(DefaultPrinter: string; AuthBy: string; bPrint: boolean): boolean;

  public
    { Public declarations }
    procedure UmCheck(var Message: TMessage); message UM_CHECK;
    procedure Check(AGridView: TcxGridDBTableView);
    procedure MakeSQL;
  end;

var
  frmCheqReqs: TfrmCheqReqs;
  sSql : String;
  sOrderBy : String;
implementation

uses
  MiscFunc, CheqReqNew, CheqReqPrint, Cheque, Process, AxiomData,
  {CheqreqHistoryForm,} CheqReqReverse, CheqReqInvoiceDebit,
  BulkCheques,glComponentUtil, ChequePrint, System.UITypes;

{$R *.DFM}


procedure TfrmCheqReqs.FormShow(Sender: TObject);
begin
//   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   if (pagCashbook.ActivePage = tabFilter) then
   begin
      cbAuthor.Items := dmAxiom.Employees;
      AddBanks(cbBank, 'G,T,C');
      dtpDateFrom.Date := Int(Now);
      chkDateFrom.Checked := True;
      chkDateTo.Checked := True;
      dtpDateTo.Date :=  Int(Now);
      chkDateFrom.Checked := SettingLoadBoolean(dmAxiom.UserID, 'CHEQREQS', 'DATEFROMFILTER');
      chkOwing.Checked := SettingLoadBoolean(dmAxiom.UserID,'CHEQREQS','ONLYPAYABLE');
      cbExcludeTrust.Checked := SettingLoadBoolean(dmAxiom.UserID,'CHEQREQS','UNPAIDTHIRDPARTY');
      cbIncludeTrust.Checked := SettingLoadBoolean(dmAxiom.UserID,'CHEQREQS','INCLUDEUNPAIDTHIRDPARTY');
   end;
   //****** AES 26/04/2005
 //  if pagCashbook.ActivePage = tabCashbook then
 //    MakeSQL;
end;

function TfrmCheqReqs.GetDefaultTax(sType : String; sDefaultTax : String) : String;
var
  lsDefaultTax : String;
begin
   lsDefaultTax := Get_Default_GST(sType);
   if (lsDefaultTax = '') then
      lsDefaultTax := sDefaultTax;
   Result := lsDefaultTax;
end;

procedure TfrmCheqReqs.cbAuthorClick(Sender: TObject);
begin
  lblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'NAME');
end;


procedure TfrmCheqReqs.cbBankClick(Sender: TObject);
begin
  lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
end;


procedure TfrmCheqReqs.MakeSQL;
var
  sSQLWhere,sGroupBy, sHaving : string;
  sAND : string;
  sComma : string;
begin
  // Build the SQL Filter query
   Screen.Cursor := crHourGlass;
   if tvCheqReq.GroupedColumnCount > 0 then
      tvCheqReq.GroupedColumns[0].GroupIndex := -1;
   qryCheqReq.Close;
   sAND := ' AND ';

   if cbBank.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.BANK = ' + QuotedStr(cbBank.Text);
   if cbAuthor.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.AUTHOR = ' + QuotedStr(cbAuthor.Text);
   if tbFileID.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.FILEID = ' + QuotedStr(tbFileID.Text);
   if tbMemo.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.NMEMO = ' + QuotedStr(tbMemo.Text);
   if tbPayee.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'UPPER(C.PAYEE) LIKE ' + QuotedStr('%' + Uppercase(tbPayee.Text) + '%');
   if tbDesc.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'UPPER(C.DESCR) LIKE ' + QuotedStr('%' + Uppercase(tbDesc.Text) + '%');
   if tbAmountFrom.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.AMOUNT >= ' + tbAmountFrom.Text
   else if (not cbIncludeNegative.Checked) then
     sSQLWhere := sSQLWhere + sAND + 'C.AMOUNT > 0';
   if tbAmountTo.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.AMOUNT <= ' + tbAmountTo.Text;

   if cbTrustCreditorPayments.Checked then
      sSQLWhere := sSQLWhere + sAND + 'C.NINVOICE IS NOT NULL';
 {
   Modified 3.10.2002 GG

   Select converted cheqreqs if user asks to see them
 }
   if cbConverted.Checked then
     sSQLWhere := sSQLWhere + sAND + 'C.CONVERTED <> ''N'' '
   else
     sSQLWhere := sSQLWhere + sAND + 'C.CONVERTED = ''N'' ';

   if cbToBeBilled.Checked then
      sSQLWhere := sSQLWhere + sAND + 'C.ANTICIPATED = ''Y'' ';
//   else
//     sSQLWhere := sSQLWhere + sAND + 'C.ANTICIPATED = ''N'' ';

   if dmAxiom.VIEW_EMP_CHEQREQS_ONLY = 'Y' then
      sSQLWhere := sSQLWhere + sAND + 'C.AUTHOR = ' + QuotedStr(dmAxiom.UserID);
//      sSQLWhere := sSQLWhere + sAND + 'C.ENTITY = ' + QuotedStr(dmAxiom.Entity);

   if cbBilledUnconverted.Checked then
      sSQLWhere := sSQLWhere + sAND + 'C.CONVERTED = ''N'' AND NMEMO IS NOT NULL ';

 { Select on HELD using OR as per the following table (blank is no selection)
   Checked Values                           Select
   WAIT=TRUE    HELD=TRUE    PROC=TRUE
   WAIT=TRUE    HELD=TRUE    PROC=FALSE     WY
   WAIT=TRUE    HELD=FALSE   PROC=TRUE      WN
   WAIT=TRUE    HELD=FALSE   PROC=FALSE     W
   WAIT=FALSE   HELD=TRUE    PROC=TRUE      YN
   WAIT=FALSE   HELD=TRUE    PROC=FALSE     Y
   WAIT=FALSE   HELD=FALSE   PROC=TRUE      N
   WAIT=FALSE   HELD=FALSE   PROC=FALSE
 }

   if chkWaiting.Checked and chkHeld.Checked and not chkProcessable.Checked then
     sSQLWhere := sSQLWhere + sAND + '((C.HELD = ''W'') OR (C.HELD = ''Y''))'

   else if chkWaiting.Checked and not chkHeld.Checked and chkProcessable.Checked then
     sSQLWhere := sSQLWhere + sAND + '((C.HELD = ''W'') OR (C.HELD = ''N''))'

   else if chkWaiting.Checked and not chkHeld.Checked and not chkProcessable.Checked then
     sSQLWhere := sSQLWhere + sAND + 'C.HELD = ''W'''

   else if not chkWaiting.Checked and chkHeld.Checked and chkProcessable.Checked then
     sSQLWhere := sSQLWhere + sAND + '((C.HELD = ''Y'') OR (C.HELD = ''N''))'

   else if not chkWaiting.Checked and chkHeld.Checked and not chkProcessable.Checked then
     sSQLWhere := sSQLWhere + sAND + 'C.HELD = ''Y'''

   else if not chkWaiting.Checked and not chkHeld.Checked and chkProcessable.Checked then
     sSQLWhere := sSQLWhere + sAND + 'C.HELD = ''N''';
   //rb
   if chkUrgent.Checked then
     sSQLWhere := sSqlWhere + sAND + 'C.URGENT = ''Y''';
   if not chkRev.Checked then
     sSQLWhere := sSqlWhere + sAND + 'C.REV_NCHEQREQ IS NULL ';


   if (cbExcludeTrust.Checked) and (not cbIncludeTrust.Checked) then
   begin
         sSQLWhere := sSQLWhere + sAND +
         '  not exists  (select ncheqreq from cheqreq nc ' +
         ' WHERE TRUST = ''T'' and ncheqreq = C.ncheqreq and NMEMO IS NOT NULL ' +
         ' AND (exists (select * from invoice i, alloc a where a.nmemo = nc.nmemo  and  a.ninvoice = i.ninvoice and owing <> 0) ' +
         ' OR exists (select * from cheqreq where nmemo = nc.nmemo and anticipated = ''Y'' and converted = ''N'' and ncheque is null)))';
   end;

   if (cbIncludeTrust.Checked) and (not cbExcludeTrust.Checked) then
   begin
         sSQLWhere := sSQLWhere + sAND +
         '  exists  (select ncheqreq from cheqreq nc ' +
         ' WHERE TRUST = ''T'' and ncheqreq = C.ncheqreq and NMEMO IS NOT NULL ' +
         ' AND (exists (select * from invoice i, alloc a where a.nmemo = nc.nmemo  and  a.ninvoice = i.ninvoice and owing <> 0) ' +
         ' OR exists (select * from cheqreq where nmemo = nc.nmemo and anticipated = ''Y'' and converted = ''N'' and ncheque is null)))';
   end;

 {
   Code modified 30.9.2002 GG

   This code does not realise the desired effect of taking out results with no
   payable amount.  It has been replaced later by a having clause on this query.

   if chkOwing.Checked then
     sSQLWhere := sSQLWhere + sAND + ' (tr.amount-get_tax(tr.amount,c.TAXCODE)) - nvl(cheq.amount,0) <> 0 ';
 }

 //  if qryCheqReq.FieldByName('FILEID').AsString <> '' then
 //    qryCheqReq.FieldByName('Refno').AsString := qryCheqReq.FieldByName('FILEID').AsString
 //  else
 //    qryCheqReq.FieldByName('Refno').AsString := qryCheqReq.FieldByName('LEDGER').AsString;
 //  qryCheqReq.FieldByName('Total').AsCurrency := qryCheqReq.FieldByName('AMOUNT').AsCurrency + qryCheqReq.FieldByName('TAX').AsCurrency;


 (* PB-24/05/2002
   sSql := 'SELECT C.*, C.ROWID, ' +
           'decode(C.HELD,''Y'',''Held'',''W'',''Waiting'',null) as HOLD,' +
           'decode(C.FILEID,NULL,C.LEDGER,C.FILEID) as cREFNO,' +
           'nvl(C.AMOUNT,0) + nvl(C.TAX,0) as TOTAL ' +
           'FROM CHEQREQ C WHERE C.REQDATE < :P_DateTo AND C.CONVERTED = ''N''' + sSQLWhere;
 *)
 //(MAX(REC)-MAX(PAID)) + (MAX(REC_TAX) -MAX(PAID_TAX))

   sSql := 'SELECT C.NMEMO,C.TAXCODE,C.TRUST, C.FILEID,C.TAX,C.BILLED,C.ANTICIPATED,'+
   'C.NMATTER,C.AMOUNT,C.NCHEQREQ,C.HELD,C.NOTE,C.PAYEE,C.REQDATE,c.DESCR,'+
   'C.BANK,c.AUTHOR,c.URGENT,decode(C.HELD,''Y'',''Held'',''W'',''Waiting'',null) as HOLD,'+
   'DECODE (c.fileid, NULL, tablevalue(''chart'',''code'',''''''''||c.ledger||'''''''',''component_code_display''), c.fileid) AS crefno, '+
   'C.CONVERTED, C.INVOICESUPPLIED, C.REFNO, C.BILLNO, C.NCHEQUE,C.REV_NCHEQREQ, ' +
   'forcepay, C.GROUPABLE, C.LEDGER, C.INVOICEDATE, C.PRIVATE, C.SUNDRYTYPE, '+
   'nvl(C.AMOUNT,0) + nvl(C.TAX,0) as TOTAL, nvl(tr.amount-get_tax(tr.amount,c.TAXCODE, C.REQDATE),0) as rec, get_tax(tr.amount,c.TAXCODE,C.REQDATE) as rec_tax ' +
   ',nvl(cheq.amount,0) as paid, nvl(cheq.tax,0) as paid_tax, nvl(tr.amount,0) - (nvl(cheq.amount,0)+nvl(cheq.tax,0)) as payable ' +
   ',nname, reqdate, c.FILEID, C.CHEQUE_GROUP_ID, C.AUTHORISED, C.AUTHORISED_BY, C.NINVOICE, chq.chqno, ' +
   { Modified  23.10.2017 DW  -  to allow for checking if a bill has already been paid  }
   ' CANP.CAN_PAY, '+
   {Modified 28.10.2017 DW - to prevent subsequent Trust cheq reqs from overdrawing trust account}
   'case when ((nvl(C.AMOUNT,0) + nvl(C.TAX,0)) > at.t_amount) and c.TRUST = ''T'' then ''N'' else ''Y'' END as TPAY, '+
   'C.ROWID ' +

   //',nvl(sum(tr.amount-get_tax(tr.amount,c.TAXCODE)),0) - sum(get_tax(tr.amount,c.TAXCODE)) + nvl(sum(cheq.amount),0) - nvl(sum(cheq.tax),0) as bal1 ' +

   'FROM CHEQREQ C ' +

  { ',(SELECT SUM(AMOUNT) *-1  as amount, NMATTER from ' +
   '(SELECT NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)  as AMOUNT, nmatter ' +
   'FROM ALLOC ' +
   'where ALLOC.TRUST <> ''T'' AND ALLOC.TYPE <> ''DR'' AND (ALLOC.NRECEIPT <> 0 OR ALLOC.TYPE = ''J1'' OR ALLOC.TYPE = ''RF'') ' +
   'UNION ALL ' +
   'SELECT (NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(TAX,0)) *-1 as AMOUNT, nmatter ' +
   'FROM NMEMO ' +
   'where DISPATCHED IS NOT NULL AND RV_TYPE <> ''D'')GROUP BY NMATTER) DEB ' +  }

   { uncommented 08/06/2006 }
   { 10 Nov 2017 - modified to fix join issue }
   'left outer join (SELECT /*+ INDEX(alloc.ncheqreq)*/ SUM(AMOUNT)*-1 as AMOUNT, SUM(TAX)*-1 AS TAX , NCHEQREQ '+
       'FROM ALLOC WHERE NCHEQREQ IS NOT NULL GROUP BY NCHEQREQ) CHEQ on c.ncheqreq = cheq.ncheqreq ' +
   'left outer join (select sum(amount) as amount,ncheqreq from cheqreq_trans group by ncheqreq) tr on c.ncheqreq = tr.ncheqreq ' +

   { Modified  23.10.2017 DW - to allow for checking if a bill has already been paid }
   'left outer join (select ncheqreq, case when (n.total - (nvl(n.fees_paid,0) + nvl(n.disb_paid,0) + nvl(n.antd_paid,0) + nvl(n.sund_paid,0) + ' +
       'nvl(n.upcred_paid,0) + nvl(n.tax_paid,0))) < c.amount and c.TRUST = ''T'' then ''N'' else ''Y'' end as CAN_PAY ' +
       ' from cheqreq c left outer join nmemo n on c.nmemo = n.nmemo) CANP on c.NCHEQREQ = CANP.NCHEQREQ ' +

   { Modified 28.10.2017 DW - to prevent second trust cheq req from overdrawing trust account }
   'left outer join (select ab.nmatter, SUM(ab.AMOUNT) as T_AMOUNT from ALLOC ab where ab.TRUST = ''T'' group by ab.nmatter) at on c.nmatter = at.nmatter '+

   {modified 21.06.2019 DW - to provide cheque number for report}
   'left outer join (select chq.ncheque, chq.chqno from cheque chq) chq on c.ncheque = chq.ncheque ' +
//   ',TAXRATE rr ' + //, cheqreq_trans tr, alloc cheq  ' +

 //        'where c.nmatter = deb.nmatter (+) ' +

   'where 1 = 1 ';
//   'and c.TAXCODE = rr.TAXCODE (+) '+
//   'and RR.COMMENCE <= TRUNC(c.reqdate) ';
 {
   Modified 3.10.2002 GG

   Converted Cheqreqs can mow be viewed by checking the cbConverted Check Box.
   See above for ths code.

   'and C.REQDATE < :P_DateTo AND C.CONVERTED = ''N'' AND C.AMOUNT > 0 AND C.REV_NCHEQREQ IS NULL ' +
 }

   // 24/08/2004 TH - Added date checks
   if (chkDateFrom.Checked) then
      sSql := sSql + 'and C.REQDATE >= :P_DateFrom ';
   if (chkDateTo.Checked) then
      sSql := sSql + 'and C.REQDATE <= :P_DateTo ';
   if (chkOwing.Checked) then
   begin
   sSql := sSql + ' and ((nvl(tr.amount,0) - (nvl(cheq.AMOUNT,0)+ nvl(cheq.tax,0)) > 0)'  +
                ' or (C.CONVERTED = ''N'' and C.FORCEPAY = 1)) ';
   end;

   sSql := sSql + sSQLWhere;

   sGroupBy := ' GROUP BY c.NMEMO,C.TAXCODE,C.TRUST,C.FILEID,C.TAX,C.BILLED,C.ANTICIPATED,C.NMATTER,C.AMOUNT,C.NCHEQREQ,C.HELD,C.NOTE,C.PAYEE,C.REQDATE,c.DESCR,' +
   'C.BANK,c.AUTHOR,c.URGENT,decode(C.HELD,''Y'',''Held'',''W'',''Waiting'',null) ,decode(C.FILEID,NULL,C.LEDGER,C.FILEID), ' +
   'nvl(C.AMOUNT,0) + nvl(C.TAX,0), C.CONVERTED, C.FORCEPAY, C.GROUPABLE, C.LEDGER, C.INVOICEDATE, C.CONVERTED, C.PRIVATE, '+
   'C.SUNDRYTYPE, C.INVOICESUPPLIED, C.REFNO, C.BILLNO, C.NCHEQUE,C.REV_NCHEQREQ, NNAME, reqdate, c.FILEID, C.CHEQUE_GROUP_ID, C.AUTHORISED, C.AUTHORISED_BY, CANP.CAN_PAY, c.rowid ';

   sGroupBy := '';

 {
   Code modified 30.9.2002 GG

   This code corrects the problem noted by myself earlier (about a page up) and
   makes use of a having clause to determine the results that have an amount owing.
 }
  { if chkOwing.Checked then
      sHaving:= 'having (nvl(sum(tr.amount),0) - (nvl(SUM(cheq.AMOUNT),0)+ nvl(sum(cheq.tax),0)) > 0) '+
                'or (C.CONVERTED = ''N'' and C.FORCEPAY = 1) '
   else
      sHaving:= '';
                      }
    sHaving:= '';

   //'ORDER BY  HOLD, PAYEE, REQDATE, DESCR, CREFNO, TOTAL, BANK, AUTHOR, URGENT ';

//   sOrderBy := 'ORDER BY ';
   sComma := ' ';

{   while (iCtr < dbgrCheqReq.Columns.Count) and (not bFinished) do
   begin
      sOrderBy := sOrderBy + sComma + dbgrCheqReq.Columns[iCtr].FieldName;
      //if (dbgrCheqReq.Columns[iCtr].FieldName = 'FILEID') or (dbgrCheqReq.Columns[iCtr].FieldName = 'NMATTER') then
      //  bFinished := True;
      iCtr := iCtr + 1;
      sComma := ', ';
   end;  }

   sOrderBy := ' ORDER BY C.REQDATE';
   qryCheqReq.SQL.Text := sSql + sGroupBy + sHaving + sOrderBy;
   if chkDateFrom.Checked then
      qryCheqReq.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
   if chkDateTo.Checked then
      qryCheqReq.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);

   if dmAxiom.runningide then
      qryCheqReq.SQL.SaveToFile('c:\tmp\cheqreqs.sql');
   //ShowMessage(qryCheqReq.SQL.Text);

   try
      qryCheqReq.Open;
      // qryBillNotPaid.Close;
      //qryBillNotPaid.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
      //qryBillNotPaid.Open;
   finally
      Screen.Cursor := crDefault;
   end;
   SetButtons;
end;

procedure TfrmCheqReqs.SetButtons;
begin
   bbtnGroup.Enabled := not qryCheqReq.IsEmpty;
   mnuFileDelete.Enabled := ((not qryCheqReq.IsEmpty) and dmAxiom.Security.CheqReq.Delete);
   bbtnrev.Enabled := ((not qryCheqReq.IsEmpty) and dmAxiom.Security.CheqReq.Reverse and (qryCheqReq.FieldByName('NCHEQUE').IsNull)
                        and (qryCheqReq.FieldByName('REV_NCHEQREQ').IsNull) and (qryCheqReq.FieldByName('NMEMO').IsNull))
                        or (qryCheqReq.FieldByName('TRUST').AsString <> 'G')
                        ;
//   mnuFileConvertReq.Enabled := (not qryCheqReq.IsEmpty) and (qryCheqReq.FieldByName('REV_NCHEQREQ').IsNull);

   mnuFileConvertReq.Enabled := dmAxiom.Security.Cheque.Create and (tabCashbook.Visible
                              and (not qryCheqReq.IsEmpty) and
                              (not chkRev.Checked) and (not cbConverted.Checked))

    { Modified  23.10.2017 DW - to allow for checking if a bill has already been paid}
                              and (qryCheqReq.FieldByName('CAN_PAY').asString = 'Y')

    { Modified  28.10.2017 DW - to prevent subsequent trust cheq reqs from overdrawing the trust account}
                              and (qryCheqReq.FieldByName('TPAY').asString = 'Y')
   ;

   mnuFileConvertAll.Enabled := dmAxiom.Security.Cheque.Create and (tabCashbook.Visible
                              and (not qryCheqReq.IsEmpty) and
                              (not chkRev.Checked) and (not cbConverted.Checked));

//   mnuFileConvertAll.Enabled := not qryCheqReq.IsEmpty;
   mnuFilePrint.Enabled := not qryCheqReq.IsEmpty;
 { Added 8.9.2002 GG

   Enable View Chequereq history menu item if user security level allows it}
   miViewCheqreqHistoryforMatter.Enabled:= dmAxiom.Security.CheqReq.History;
//   bbtnAuthorise.Enabled := ((not qryCheqReq.IsEmpty) and dmAxiom.Security.CheqReq.Authorise);
{   with qryIsCheqreqReversed do
   begin
      close;
      ParamByName('ncheqreq').AsInteger := qryCheqReq.FieldByName('ncheqreq').AsInteger;
      open;
      mnuFileConvertReq.Enabled := Eof;
      bbtnrev.Enabled := Eof;
      mnuFileConvertReq.Enabled := Eof;
      bbtnAuthorise.Enabled :=  Eof;
      mnuFileOpen.Enabled := Eof;
      bbtnHold.Enabled := Eof;
      btnCreditNote.Enabled := EOF;
   end;         }
   SetHeld;
end;

procedure TfrmCheqReqs.pagCashbookChange(Sender: TObject);
begin
   case pagCashbook.ActivePage.TabIndex of
      isREQUISITION: // Back to the Grid page
      begin
         MakeSQL;
         btnRefresh.Enabled := True;
         if (chkOwing.Checked) or
            (cbConverted.Checked) then
            bbtnRev.Enabled := False;
      end;
      isFILTER:
       begin
          TdxStatusBarStateIndicatorPanelStyle(sBarInfo.Panels[1].PanelStyle).Indicators.Items[0].IndicatorType := sitOff;
          TdxStatusBarStateIndicatorPanelStyle(sBarInfo.Panels[1].PanelStyle).Indicators.Items[1].IndicatorType := sitOff;
          sBarInfo.Panels[0].Text := '';
          mnuFileConvertReq.Enabled := False;
          mnuFileConvertAll.Enabled := False;
          btnCreditNote.Enabled := False;
          btnRefresh.Enabled := False;
       end;
   end;
end;  

procedure TfrmCheqReqs.btnClearAllClick(Sender: TObject);
begin
  dtpDateFrom.Date := Int(Now);
//  dtpDateFrom.Checked := False;
  dtpDateTo.Date := Int(Now);
  chkDateTo.Checked := True;
  cbBank.Text := '';
  chkHeld.Checked := False;
  chkWaiting.Checked := False;
  chkProcessable.Checked := False;
  tbFileID.Text := '';
  tbPayee.Text := '';
  tbMemo.Text := '';
  tbDesc.Text := '';
  tbAmountFrom.Text := '';
  tbAmountTo.Text := '';
  cbAuthor.Text := '';
end;

procedure TfrmCheqReqs.mnuFilePrintCashBookClick(Sender: TObject);
begin
//  qrCheqReqs.PreviewModal;
end;


procedure TfrmCheqReqs.tbtnNewClick(Sender: TObject);
var
  frmNewCheqReqNew : TfrmCheqReqNew;
begin
  frmNewCheqReqNew := TfrmCheqReqNew.Create(Self);
  frmNewCheqReqNew.ShowModal;
  qryCheqReq.Close;
  qryCheqReq.Open;
end;

procedure TfrmCheqReqs.tbtnDeleteClick(Sender: TObject);
var
  bOKtoPost: Boolean;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}

  glComponentSetup := dmAxiom.getGlComponents;

  bOKtoPost:= (PostIntoLockedPeriod(dtpDateTo.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    if qryCheqReq.FieldByName('ANTICIPATED').AsString = 'N' then
    begin

          if MsgAsk('Do you want delete this Cheque Requisition?') = mrYes then
          begin
            // It was just a request - simply delete it
            qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = NULL WHERE REV_NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
            qryUpdate.ExecSQL;
            qryUpdate.Close;

            qryUpdate.SQL.Text := 'DELETE FROM CHEQREQ WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
            qryCheqReq.Close;
            qryUpdate.ExecSQL;
            qryUpdate.Close;
            qryCheqReq.Open;
          end;

    end
    else if (MsgAsk('Do you want to mark this Cheque Requisition as converted?') = mrYes) then
        ConvertTagCheqReq
    else if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and
            (MsgAsk('Do you want delete this Cheque Requisition?') = mrYes) then
    begin
      // reverse the ledgers for the cheqreq
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try

           {post components}
           sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');


           PostLedger(Date
             , qryCheqReq.FieldByName('AMOUNT').AsCurrency
             , qryCheqReq.FieldByName('TAX').AsCurrency
             , qryCheqReq.FieldByName('FILEID').AsString
             , 'CHEQREQ'
             , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
             , qryCheqReq.FieldByName('DESCR').AsString
             , sLedgerKey
             , ''
             , -1
             , ''
             , qryCheqReq.FieldByName('TAXCODE').AsString
             , FALSE
             , '0'
             , 0
             , qryCheqReq.FieldByName('NMATTER').AsInteger);
        // Debit the GST Input Tax Credits ledger the tax amount
        if qryCheqReq.FieldByName('TAX').AsCurrency <> 0 then
        begin

          {post components}
          sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReq.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');


          PostLedger(Date
            , qryCheqReq.FieldByName('TAX').AsCurrency
            , 0
            , qryCheqReq.FieldByName('FILEID').AsString
            , 'CHEQREQ'
            , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
            , qryCheqReq.FieldByName('DESCR').AsString
            , sLedgerKey
            , ''
            , -1
            , ''
            , qryCheqReq.FieldByName('TAXCODE').AsString
            , FALSE
            , '0'
            , 0
            , qryCheqReq.FieldByName('NMATTER').AsInteger);
        end;
        // Credit Anticipated disbursements liability the full amount

        {post components}
        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');


        PostLedger(Date
          , 0-(qryCheqReq.FieldByName('AMOUNT').AsCurrency + qryCheqReq.FieldByName('TAX').AsCurrency)
          , 0
          , qryCheqReq.FieldByName('FILEID').AsString
          , 'CHEQREQ'
          , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
          , qryCheqReq.FieldByName('DESCR').AsString
          , sLedgerKey
          , TableString('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'AUTHOR')
          , -1
          , ''
          , qryCheqReq.FieldByName('TAXCODE').AsString
          , FALSE
          , '0'
          , 0
          , qryCheqReq.FieldByName('NMATTER').AsInteger );

          // delete the cheqreq
          qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = NULL WHERE REV_NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
          qryUpdate.ExecSQL;
          qryUpdate.Close;
          qryUpdate.SQL.Text := 'DELETE FROM CHEQREQ WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
          qryCheqReq.Close;
          qryUpdate.ExecSQL;
          qryUpdate.Close;
          qryCheqReq.Open;


      CheckLedgerTotal;

      except

        on Exception do
          begin
              dmAxiom.uniInsight.RollBack;
              //re raise the exception
              raise;

          end
      end;

      dmAxiom.uniInsight.Commit;
    end
  end;

end;


procedure TfrmCheqReqs.ConvertTagCheqReq;
var
  iNCheqreq: integer;
  bOKtoPost: Boolean;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}

  glComponentSetup := dmAxiom.getGlComponents;

  bOKtoPost:= (PostIntoLockedPeriod(dtpDateTo.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    try
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      if (qryCheqReq.FieldByName('FILEID').AsString <> '') then
      begin
        // Reverse the original transaction
        if qryCheqReq.FieldByName('BILLED').AsString = 'N' then
        begin
          // Create a deleted CheqReq for the ledger card
          qryUpdate.SQL.Clear;
          qryUpdate.SQL.Add('INSERT INTO CHEQREQ');
          qryUpdate.SQL.Add('(FILEID, LEDGER, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, TAX, SUNDRYTYPE, NMATTER)');
          qryUpdate.SQL.Add('SELECT FILEID, LEDGER, PAYEE, ''Deleted - '' || DESCR, 0-AMOUNT, AUTHOR, SysDate, BANK, ''N'', GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, ''Y'', TRUST, ''N'', TAXCODE, 0-TAX, SUNDRYTYPE, NMATTER');
          qryUpdate.SQL.Add('FROM CHEQREQ');
          qryUpdate.SQL.Add('WHERE NCHEQREQ = ' + qryCheqreq.FieldByName('NCHEQREQ').AsString);
          qryUpdate.ParamByName('NCHEQREQ').AsInteger := GetSequenceNumber('sqnc_ncheqreq');  // GetSeqnum('NCHEQREQ');
          qryUpdate.ExecSQL;
          qryUpdate.Close;
          if qryCheqReq.FieldByName('NMEMO').AsInteger <> 0 then
          begin
            // if it is on a draft bill, alter the amount of the bill
            qryUpdate.SQL.Text := 'UPDATE NMEMO SET ANTD = ANTD - :ADJUST WHERE NMEMO = ' + qryCheqReq.FieldByName('NMEMO').AsString;
            qryUpdate.ParamByName('ADJUST').AsFloat := qryCheqReq.FieldByName('AMOUNT').AsCurrency;
            qryUpdate.ExecSQL;
            qryUpdate.Close;
          end;
          MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_ANTD', 0 - qryCheqReq.FieldByName('AMOUNT').AsCurrency);
        end
        else
          if qryCheqreq .FieldByName('NMEMO').AsInteger > 0 then
            MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_DISB', qryCheqReq.FieldByName('AMOUNT').AsCurrency);
        // Debit Anticipated creditors liability the full amount
        {post components}
        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');

        PostLedger(qryCheqReq.FieldByName('REQDATE').AsDateTime
          , 0 - (qryCheqReq.FieldByName('AMOUNT').AsFloat + qryCheqReq.FieldByName('TAX').AsFloat)
          , qryCheqReq.FieldByName('TAX').AsFloat
          , qryCheqReq.FieldByName('FILEID').AsString, 'CHEQREQ'
          , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
          , qryCheqReq.FieldByName('DESCR').AsString
          , sLedgerKey
          , ''
          , -1
          , ''
          , qryCheqReq.FieldByName('TAXCODE').AsString
          , FALSE
          , '0'
          , 0
          , qryCheqReq.FieldByName('NMATTER').AsInteger);
        // Credit the Unbilled Anticipated Disbursements ledger the tax free amount
        {post components}
        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');

        PostLedger(qryCheqReq.FieldByName('REQDATE').AsDateTime
          , qryCheqReq.FieldByName('AMOUNT').AsFloat
          , 0
          , qryCheqReq.FieldByName('FILEID').AsString
          , 'CHEQREQ'
          , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
          , qryCheqReq.FieldByName('DESCR').AsString
          , sLedgerKey
          , ''
          , -1
          , ''
          , qryCheqReq.FieldByName('TAXCODE').AsString
          , FALSE
          , '0'
          , 0
          , qryCheqReq.FieldByName('NMATTER').AsInteger);
        // Credit the Tax Adjustment ledger the tax amount
        if qryCheqReq.FieldByName('TAX').AsFloat <> 0 then
        begin
          {post components}
          sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReq.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

          PostLedger(qryCheqReq.FieldByName('REQDATE').AsDateTime
            , qryCheqReq.FieldByName('TAX').AsFloat
            , 0
            , qryCheqReq.FieldByName('FILEID').AsString
            , 'CHEQREQ'
            , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
            , qryCheqReq.FieldByName('DESCR').AsString
            , sLedgerKey
            , ''
            , -1
            , ''
            , qryCheqReq.FieldByName('TAXCODE').AsString
            , FALSE
            , '0'
            , 0
            , qryCheqReq.FieldByName('NMATTER').AsInteger);
		end;
        // If it was billed, then they might want to put through an automatic credit note for it
        if qryCheqReq.FieldByName('BILLED').AsString = 'Y' then
        begin
  {
    Code Modified 30.9.2002 GG

    Recoded with clause to make for better readability

          with qryBill do
          begin
            SQL.Text := 'SELECT REFNO, (ANTD-ANTD_PAID) AS OWING FROM NMEMO WHERE NMEMO = ' + qryCheqReq.FieldByName('NMEMO').AsString;
            Open;
            if not IsEmpty then
              if qryCheqReq.FieldByName('AMOUNT').AsCurrency <= FieldByName('OWING').AsCurrency then
                if MsgAsk('Do you want to create a Credit Note against Bill ' + FieldByName('REFNO').AsString + ' for this?') = mrYes then
                  CreateCreditNote;
            Close;
          end;
  }
          qryBill.SQL.Text := 'SELECT REFNO, (ANTD-ANTD_PAID) AS OWING FROM NMEMO WHERE NMEMO = ' + qryCheqReq.FieldByName('NMEMO').AsString;
          qryBill.Open;
          if not qryBill.IsEmpty then
            if qryCheqReq.FieldByName('AMOUNT').AsCurrency <= qryBill.FieldByName('OWING').AsCurrency then
              if MsgAsk('Do you want to create a Credit Note against Bill ' + qryBill.FieldByName('REFNO').AsString + ' for this?') = mrYes then
                CreateCreditNote;
          qryBill.Close;
        end;
      end;

      iNCheqreq := qryCheqReq.FieldByName('NCHEQREQ').AsInteger;
      qryCheqReq.Close;
      qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET CONVERTED = ''Y'', HELD = ''N'' WHERE NCHEQREQ = ' + IntToStr(iNCheqReq);
      qryUpdate.ExecSQL;
      qryUpdate.Close;

      CheckLedgerTotal;
      dmAxiom.uniInsight.Commit;
    except
      on E:Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        MsgErr('Deletion failed' + #13#13 + E.Message);
      end;
    end;
    if not qryCheqReq.Active then
      qryCheqReq.Open;
  end
end;


procedure TfrmCheqReqs.popGridNewClick(Sender: TObject);
begin
  mnuFileNewCheque.Click;
end;

procedure TfrmCheqReqs.popGridDeleteClick(Sender: TObject);
begin
   mnuFileDelete.Click;
end;

procedure TfrmCheqReqs.popGridConvertClick(Sender: TObject);
begin
   mnuFileConvertReq.Click;
end;

procedure TfrmCheqReqs.popGridConvertAllClick(Sender: TObject);
begin
   mnuFileConvertAll.Click;
end;

procedure TfrmCheqReqs.popGridPrintClick(Sender: TObject);
begin
   mnuFilePrint.Click;
end;

procedure TfrmCheqReqs.mnuFileNewChequeClick(Sender: TObject);
var
  frmNewCheqReqNew : TfrmCheqReqNew;
begin
   frmNewCheqReqNew := TfrmCheqReqNew.Create(Self);
   if frmNewCheqReqNew.ShowModal = mrOK then
   begin
      qryCheqReq.Close;
      qryCheqReq.Open;
   end;
end;

procedure TfrmCheqReqs.mnuFileConvertReqClick(Sender: TObject);
var
  sBank: string;
  sDefaultBank: string;
  bOneBank, bNoneHeld, bFirst: boolean;
  iCtr: integer;
  x: Integer;
  frmNewCheque: TfrmCheque;
  frmBulkCheques: TfrmBulkCheques;
  nRowCount, iNCheque: integer;
  iCheqreqAmount,iCheqreqTax, iCheqreqBalTax, iCheqreqBalAmount : Currency;
  lsDefaultTax : String;
  lsNCheqReq_List: String;
  ARowIndex: Integer;

begin
  iCheqreqTax := 0;
  X := 0;
  iCheqReqAmount := 0;
  iNcheque := 0;

   if tvCheqReq.GroupedColumnCount > 0 then
   begin
      bConversionOn := True;
      TdxStatusBarStateIndicatorPanelStyle(sBarInfo.Panels[1].PanelStyle).Indicators.Items[0].IndicatorType := sitOff;
      TdxStatusBarStateIndicatorPanelStyle(sBarInfo.Panels[1].PanelStyle).Indicators.Items[1].IndicatorType := sitOff;
      qryDetails.close;
      dbgrCheqReq.FocusedView.DataController.Groups.FullExpand;
      progBarProcess.Position := 0;
      progBarProcess.Visible := True;
      qryLedger.Open;

      progBarProcess.Properties.Max := tvCheqReq.DataController.RowCount;
      for nRowCount := 0 to (tvCheqReq.DataController.RowCount - 1) do
      begin
         if (tvCheqReq.ViewData.Records[nRowCount].Level = 0) or
            ((sBank <> qryCheqReq.FieldByName('BANK').AsString) and (sBank <> '')) then
         begin
            if nRowCount > 0 then
            begin
               qryLedger.Insert;

               if qryCheqReq.FieldByName('FILEID').AsString <> '' then
               begin
                  qryLedger.FieldByName('TYPE').AsString := 'Matter';
                  qryLedger.FieldByName('REFNO').AsString := IntToStr(iNcheque); // qryCheqReq.FieldByName('FILEID').AsString;
                  qryLedger.FieldByName('LONGDESC').AsString := MatterString(qryCheqReq.FieldByName('FILEID').AsString, 'MATLOCATE');
               end
               else
               begin
                  qryLedger.FieldByName('TYPE').AsString := 'Ledger';
                  qryLedger.FieldByName('REFNO').AsString := IntToStr(iNcheque); //qryCheqReq.FieldByName('LEDGER').AsString;
                  qryLedger.FieldByName('LONGDESC').AsString := LedgerString(qryCheqReq.FieldByName('LEDGER').AsString, 'REPORT_DESC');
               end;
               qryLedger.FieldByName('REASON').AsString := qryCheqReq.FieldByName('DESCR').AsString;
               qryLedger.FieldByName('SUNDRYTYPE').AsString := qryCheqReq.FieldByName('SUNDRYTYPE').AsString;

               if (qryCheqReq.FieldByName('BILLED').AsString = 'Y') and (qryCheqReq.FieldByName('NMEMO').AsInteger > 0) then
               begin
                  qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount + iCheqreqTax;

                  lsDefaultTax := GetDefaultTax('ChequeAntDisb', 'NOTAX');

                  qryLedger.FieldByName('TAXCODE').AsString := lsDefaultTax;
                  qryLedger.FieldByName('TAX').AsFloat := 0;
                  qryLedger.FieldByName('BILLED').AsString := 'Y';
               end
               else
               begin
                  qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount;
                  qryLedger.FieldByName('TAXCODE').AsString := qryCheqReq.FieldByName('TAXCODE').AsString;
                  qryLedger.FieldByName('TAX').AsFloat :=  iCheqreqTax;
                  qryLedger.FieldByName('BILLED').AsString := 'N';
               end;
               qryLedger.FieldByName('CHEQUE_GROUP_ID').AsInteger := X;
               qryLedger.FieldByName('PAYEE').AsString := qryCheqReq.FieldByName('PAYEE').AsString;
               qryLedger.FieldByName('BANK').AsString := sBank;
               qryLedger.FieldByName('NNAME').AsString := qryCheqReq.FieldByName('NNAME').AsString;
               qryLedger.FieldByName('NCHEQUE').AsInteger := iNcheque;
               qryLedger.FieldByName('FILEID').AsString := qryCheqReq.FieldByName('FILEID').AsString;
               qryLedger.FieldByName('CREATED').AsDateTime := Date;
               qryLedger.FieldByName('NCHEQREQ_LIST').AsString := lsNCheqReq_List;
               qryLedger.FieldByName('PROCESS').AsString := 'N';

               qryLedger.Post;
               if qryCheqReq.Modified then
                  qryCheqReq.Post;
            end;
            X := GetNextSequence('SEQ_CHEQUE_GROUP_ID');
//       14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
            iNcheque := GetSequenceNumber('SQNC_NCHEQUE');  //GetSeqnum('NCHEQUE');
            sBank := '';
            iCheqreqAmount := 0;
            iCheqreqTax := 0;
            lsNCheqReq_List := '';
            progBarProcess.Position := nRowCount;
            Application.ProcessMessages;
         end
         else
         begin
            tvCheqReq.ViewData.Records[nRowCount].Focused := True;
            sBank := qryCheqReq.FieldByName('BANK').AsString;
            if (((sBank = sDefaultBank) or (sDefaultBank = '')) and
               ((sBank = qryCheqReq.FieldByName('BANK').AsString) or
               (sBank = ''))) then
            begin
               qryCheqreqBal.Close;
               qryCheqreqBal.ParamByName('NCHEQREQ').AsInteger := qryCheqReq.FieldByName('NCHEQREQ').AsInteger;
               qryCheqreqBal.open;

               qryTrustReqs.Close;
               qryTrustReqs.ParamByName('NCHEQREQ').AsInteger := qryCheqReq.FieldByName('NCHEQREQ').AsInteger;
               qryTrustReqs.ParamByName('NMATTER').AsInteger := qryCheqReq.FieldByName('NMATTER').AsInteger;
               qryTrustReqs.Open;

               iCheqreqBalAmount := qryCheqreqBal.FieldByName('AMOUNT').AsCurrency;
               iCheqreqBalTax := qryCheqreqBal.FieldByName('TAX').AsCurrency;
               qryCheqReqBal.Close;

               if iCheqreqBalAmount = 0.00 then
               begin
                  iCheqreqAmount := iCheqreqAmount + qryCheqReq.FieldByName('AMOUNT').AsCurrency;
                  iCheqreqTax := iCheqreqTax + qryCheqReq.FieldByName('Tax').AsCurrency;
               end
               else
               begin
                  iCheqreqAmount := iCheqreqAmount + iCheqreqBalAmount;
                  iCheqreqTax := iCheqreqTax + iCheqreqBalTax;
               end;

               if UpperCase(qryCheqReq.FieldByName('TAXCODE').AsString) = 'GSTNC' then
                  iCheqreqTax := 0;

 {              if qryCheqReq.FieldByName('PAYABLE').AsFloat = 0 then
               begin
                  iCheqreqAmount := iCheqreqAmount + qryCheqReq.FieldByName('AMOUNT').AsFloat;
                  iCheqreqTax := iCheqreqTax + qryCheqReq.FieldByName('Tax').AsFloat;
               end
               else
               begin
                  iCheqreqAmount := iCheqreqAmount + qryCheqReq.FieldByName('PAYABLE').AsFloat;
                  iCheqreqTax := iCheqreqTax + qryCheqReq.FieldByName('Tax').AsFloat;
               end;    }

               sBank := qryCheqReq.FieldByName('BANK').AsString;
               if qryCheqReq.State <> dsEdit then
                  qryCheqReq.Edit;
               qryCheqReq.FieldByName('CHEQUE_GROUP_ID').AsInteger := X;
               If lsNCheqReq_List <> '' then
                  lsNCheqReq_List := lsNCheqReq_List + ',';
               lsNCheqReq_List := lsNCheqReq_List + '''' + qryCheqReq.FieldByName('NCHEQREQ').AsString + '''';
            end;
            if sDefaultBank = '' then
               sDefaultBank := sBank;
            progBarProcess.Position := nRowCount;
            Application.ProcessMessages;
         end;
      end;

      if (sBank = sDefaultBank) then
      begin
         // this is here to handle the last row in the grid
         qryLedger.Insert;

         if qryCheqReq.FieldByName('FILEID').AsString <> '' then
         begin
            qryLedger.FieldByName('TYPE').AsString := 'Matter';
            qryLedger.FieldByName('REFNO').AsString := qryCheqReq.FieldByName('FILEID').AsString;
            qryLedger.FieldByName('LONGDESC').AsString := MatterString(qryCheqReq.FieldByName('FILEID').AsString, 'MATLOCATE');
         end
         else
         begin
            qryLedger.FieldByName('TYPE').AsString := 'Ledger';
            qryLedger.FieldByName('REFNO').AsString := qryCheqReq.FieldByName('LEDGER').AsString;
            qryLedger.FieldByName('LONGDESC').AsString := LedgerString(qryCheqReq.FieldByName('LEDGER').AsString, 'REPORT_DESC');
         end;
         qryLedger.FieldByName('REASON').AsString := qryCheqReq.FieldByName('DESCR').AsString;
         qryLedger.FieldByName('SUNDRYTYPE').AsString := qryCheqReq.FieldByName('SUNDRYTYPE').AsString;

         if (qryCheqReq.FieldByName('BILLED').AsString = 'Y') and (qryCheqReq.FieldByName('NMEMO').AsInteger > 0) then
         begin
            qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount + iCheqreqTax;

            lsDefaultTax := GetDefaultTax('ChequeAntDisb', 'NOTAX');

            qryLedger.FieldByName('TAXCODE').AsString := lsDefaultTax;
            qryLedger.FieldByName('TAX').AsFloat := 0;
            qryLedger.FieldByName('BILLED').AsString := 'Y';
         end
         else
         begin
            qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount;
            qryLedger.FieldByName('TAXCODE').AsString := qryCheqReq.FieldByName('TAXCODE').AsString;
            qryLedger.FieldByName('TAX').AsFloat :=  iCheqreqTax;
            qryLedger.FieldByName('BILLED').AsString := 'N';
         end;
         qryLedger.FieldByName('CHEQUE_GROUP_ID').AsInteger := X;
         qryLedger.FieldByName('PAYEE').AsString := qryCheqReq.FieldByName('PAYEE').AsString;
         qryLedger.FieldByName('BANK').AsString := sBank;
         qryLedger.FieldByName('NNAME').AsInteger := qryCheqReq.FieldByName('NNAME').AsInteger;
         qryLedger.FieldByName('NCHEQUE').AsInteger := iNcheque;
         qryLedger.FieldByName('FILEID').AsString := qryCheqReq.FieldByName('FILEID').AsString;
         qryLedger.FieldByName('CREATED').AsDateTime := Date;
         qryLedger.FieldByName('NCHEQREQ_LIST').AsString := lsNCheqReq_List;
         qryLedger.FieldByName('PROCESS').AsString := 'N';

         qryLedger.Post;
         if qryCheqReq.Modified then
            qryCheqReq.Post;
         progBarProcess.Visible := False;
      end;
      // Now lets show the list of cheques created
      frmBulkCheques:= TfrmBulkCheques.Create(frmCheqReqs);
      try
         frmBulkCheques.DefaultBank := sDefaultBank;
         frmBulkCheques.CreateCheque := True;
         if frmBulkCheques.ShowModal = mrOk then
         begin
            // let's create them
            if PostCheques(frmBulkCheques.cmbPrinter.Text, frmBulkCheques.cbAuthBy.EditValue, frmBulkCheques.cbPrint.Checked ) then
            begin
               tvCheqReq.GroupedColumns[0].GroupIndex := -1;
               MakeSQL;
            end;
         end;
      finally
         qryLedger.Close;
         frmBulkCheques.Free;
         bConversionOn := False;
         progBarProcess.Visible := False;
      end;
   end
   else
   begin
      // normal cheque creation starts
      case tvCheqReq.DataController.GetSelectedCount of
         0, 1:
         begin
            frmNewCheque:= TfrmCheque.Create(Self);
            frmNewCheque.Show;
//            if tvCheqReqNINVOICE.EditValue <> '' then
//               frmNewCheque.ChequeFromInvoice(integer(tvCheqReqNINVOICE.EditValue))
//            else
               frmNewCheque.AutoChequeFromCheqReq(qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
            MakeSQL;
         end
      else
         begin
            bFirst := True;
            bOneBank := True;
            bNoneHeld := True;
         // Make sure none are held or waiting, and they are all the one bank
            for iCtr := 0 to tvCheqReq.DataController.GetSelectedCount - 1 do
            begin
               ARowIndex := tvCheqReq.DataController.GetSelectedRowIndex(iCtr);
               tvCheqReq.ViewData.Records[ARowIndex].Focused := True;
               if qryCheqReq.FieldByName('HELD').AsString <> 'N' then bNoneHeld := False;
               if bFirst then
               begin
                  sBank := qryCheqReq.FieldByName('BANK').AsString;
                  bFirst := False;
               end
               else
                  if sBank <> qryCheqReq.FieldByName('BANK').AsString then bOneBank := False;
            end;
            if not bOneBank then
               MsgErr('Selected items must be for the one bank account')
            else if not bNoneHeld then
               MsgErr('Selected items must not be Held or Waiting')
            else
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

        with TfrmCheque.Create(Self) do
        begin
          Show;
          if dbgrCheqReq.SelectedRows.Count = 1 then
            AutoChequeFromCheqReq(qryCheqReq.FieldByName('NCHEQREQ').AsInteger)
          else
          begin
            with dbgrCheqReq.DataSource.DataSet do
            begin
              for iCtr := 0 to dbgrCheqReq.SelectedRows.Count - 1 do
              begin
                GotoBookmark(Pointer(dbgrCheqReq.SelectedRows.Items[iCtr]));
                AutoChequeFromCheqReq(qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
              end;
            end;
          end;
        end;
}
            begin
               frmNewCheque:= TfrmCheque.Create(Self);
               frmNewCheque.Show;
               if tvCheqReq.DataController.GetSelectedCount = 1 then
               begin
//                  if tvCheqReqNINVOICE.EditValue <> '' then
//                     frmNewCheque.ChequeFromInvoice(qryCheqReq.FieldByName('NINVOICE').AsInteger)
//                  else
                     frmNewCheque.AutoChequeFromCheqReq(qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
               end
               else
               begin
                  for iCtr := 0 to tvCheqReq.DataController.GetSelectedCount - 1 do
                  begin
      //            dbgrCheqReq.DataSource.DataSet.GotoBookmark(Pointer(dbgrCheqReq.SelectedRows.Items[iCtr]));
                     ARowIndex := tvCheqReq.DataController.GetSelectedRowIndex(iCtr);
                     tvCheqReq.ViewData.Records[ARowIndex].Focused := True;
//                     if tvCheqReqNINVOICE.EditValue <> '' then
//                        frmNewCheque.ChequeFromInvoice(qryCheqReq.FieldByName('NINVOICE').AsInteger)
//                     else
                        frmNewCheque.AutoChequeFromCheqReq(qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
                  end;
               end;
               MakeSQL;
            end;
         end; // else for case
      end; // case
   end;
end;

procedure TfrmCheqReqs.mnuFileConvertAllClick(Sender: TObject);
var
  frmNewCheque : TfrmCheque;
{  frmProcess : TfrmProcess;
  sBilled : string;
}

begin
  {//frmProcess := TfrmProcess.Create(Self);
  //frmProcess.lblProcess.Caption := 'Posting Cheque Requisitions';
  with qryCheqReq do
  begin
    //Last;
    //frmProcess.pbProcess.Max := qryCheqReq.RecNo;
    //frmProcess.Show;
    //Application.ProcessMessages;
    First;
    while not EOF do
    begin
      if FieldByName('HELD').AsString = 'N' then
      begin
        //sBilled := 'N';
        if FieldByName('NMEMO').AsInteger <> 0 then
          //sBilled := 'Y';
        //frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
        frmNewCheque := TfrmCheque.Create(Self);
        frmNewCheque.AutoChequeFromCheqReq(FieldByName('NCHEQREQ).AsInteger);
        frmNewCheque.btnOK.Click;
        frmNewCheque.Destroy;
        DeleteCheqReq;
      end;
    end;
  end;
  //frmProcess.Destroy;   }

{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

  with TfrmCheque.Create(Self) do
  begin

  show;

  qryCheqreq.First;
  while not qryCheqreq.EOF do
  begin
   AutoChequeFromCheqReq(qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
  qryCheqReq.Next;
  end;
  end;
}
  frmNewCheque:= TfrmCheque.Create(Self);
  frmNewCheque.Show;

  qryCheqreq.First;
  while not qryCheqreq.EOF do
  begin
    if (qryCheqReq.FieldByName('CAN_PAY').AsString <> 'N') and (qryCheqReq.FieldByName('TPAY').AsString <> 'N') then
        frmNewCheque.AutoChequeFromCheqReq(qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
    qryCheqReq.Next;
  end;
end;

procedure TfrmCheqReqs.mnuFilePrintClick(Sender: TObject);
begin
//  qrCheqreqs.PreviewModal;
   rpCheqReqs.Print;
end;

procedure TfrmCheqReqs.mnuFileExitClick(Sender: TObject);
begin
  Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCheqReqs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SettingSaveBoolean('CHEQREQS','DATEFROMFILTER',chkDateFrom.Checked);
   SettingSaveBoolean('CHEQREQS','ONLYPAYABLE',chkOwing.Checked);
   SettingSaveBoolean('CHEQREQS','UNPAIDTHIRDPARTY',cbExcludeTrust.Checked);
   SettingSaveBoolean('CHEQREQS','INCLUDEUNPAIDTHIRDPARTY',cbIncludeTrust.Checked);
   qryCheqreq.Close;
   RemoveFromDesktop(Self);
//   Self.Release;
end;

procedure TfrmCheqReqs.qryCheqReqAfterScroll(DataSet: TDataSet);
begin
//   mnuFileConvertReq.Enabled := dmAxiom.Security.Cheque.Create {or (tabCashbook.Visible
 //                             and (not qryCheqReq.IsEmpty) and
//                              (not chkRev.Checked) and (not cbConverted.Checked))};
   mnuFileConvertAll.Enabled :=  dmAxiom.Security.Cheque.Create {or (tabCashbook.Visible
                               and (tvCheqReq.GroupedColumnCount = 0)
                               and (not qryCheqReq.IsEmpty) and (not chkRev.Checked)
                               and (not cbConverted.Checked))};
   if not bConversionOn then
   begin
      sbarInfo.Panels[0].Text := qryCheqReq.FieldByName('NOTE').AsString;
      if not qryCheqReq.IsEmpty then
      begin
        {if qryCheqReq.FieldByName('FILEID').AsString <> '' then
        begin
          if qryCheqReq.FieldByName('TRUST').AsString = 'T' then
            sbarInfo.Panels[1].Text := 'Trust = ' + Format('%m', [TableCurrency('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'TRUST_BAL')])
          else
            sbarInfo.Panels[1].Text := 'Debtors = ' + Format('%m', [TableCurrency('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'DEBTORS')]);
        end
        else
          sbarInfo.Panels[1].Text := 'Ledger = ' + LedgerValue(dmAxiom.Entity, qryCheqReq.FieldByName('LEDGER').AsString, 'BALANCE');
      end
      else
        sbarInfo.Panels[1].Text := '';
        }
      end;
      SetButtons;

      // populate the grid
      qryDetails.Open;
   end; 
end;


procedure TfrmCheqReqs.SetHeld;
begin
  if (qryCheqReq.FieldByName('HELD').AsString = 'Y') or (qryCheqReq.FieldByName('HELD').AsString = 'W') then
  begin
    bbtnHold.ImageIndex := BTNREDLIGHT;
    TdxStatusBarStateIndicatorPanelStyle(sBarInfo.Panels[1].PanelStyle).Indicators.Items[0].IndicatorType := sitRed;
    TdxStatusBarStateIndicatorPanelStyle(sBarInfo.Panels[1].PanelStyle).Indicators.Items[1].IndicatorType := sitOff;
    bbtnHold.Hint := 'Change to allow requisition to proceed';
  end
  else
  begin
    bbtnHold.ImageIndex := BTNGREENLIGHT;
    TdxStatusBarStateIndicatorPanelStyle(sBarInfo.Panels[1].PanelStyle).Indicators.Items[0].IndicatorType := sitOff;
    TdxStatusBarStateIndicatorPanelStyle(sBarInfo.Panels[1].PanelStyle).Indicators.Items[1].IndicatorType := sitGreen;
    bbtnHold.Hint := 'Change to hold requisition';
  end;
end;


procedure TfrmCheqReqs.SetGroup;
begin
  if qryCheqReq.FieldByName('GROUPABLE').AsString = 'Y' then
  begin
    bbtnGroup.ImageIndex := BTNGROUP;
    bbtnGroup.Hint := 'Change to require single cheque';
  end
  else
  begin
    bbtnGroup.ImageIndex := BTNUNGROUP;
    bbtnGroup.Hint := 'Change to allow cheque to be grouped';
  end;
//  bbtnGroup.Invalidate;
end;

procedure TfrmCheqReqs.tbtnHoldClick(Sender: TObject);
var
ictr : Integer;

begin
(*
  // do for multiple items
  for iCtr := 0 to dbgrCheqReq.SelectedRows.Count - 1 do
  begin
    dbgrCheqReq.DataSource.DataSet.GotoBookmark(Pointer(dbgrCheqReq.SelectedRows.Items[iCtr]));
    with qryCheqReq do
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
  if tvCheqReq.DataController.GetSelectedCount > 0 then
  begin
    for iCtr := 0 to tvCheqReq.DataController.GetSelectedCount - 1 do
    begin
//      dbgrCheqReq.DataSource.DataSet.GotoBookmark(Pointer(dbgrCheqReq.SelectedRows.Items[iCtr]));
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

      with qryCheqReq do
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
      qryCheqReq.Edit;
      if (qryCheqReq.FieldByName('HELD').AsString = 'Y') or (qryCheqReq.FieldByName('HELD').AsString = 'W') then
      begin
        //FieldByName('HELD').AsString := 'N';
        qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''N'' WHERE NCHEQREQ =' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
        qryUpdate.ExecSQL;
        qryUpdate.Close;
      end
      else
      begin
        //FieldByName('HELD').AsString := 'Y';
        qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''Y'' WHERE NCHEQREQ =' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
        qryUpdate.ExecSQL;
        qryUpdate.Close;
      end;
      //Post;
      //ApplyUpdates;
      SetHeld;
    end;
    qryCheqReq.Close;
    qryCheqReq.Open;
  end
  else
    MessageDlg('No items selected', mtInformation, [mbOK], 0);
end;

procedure TfrmCheqReqs.tbtnGroupClick(Sender: TObject);
begin
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

  with qryCheqReq do
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
  qryCheqReq.Edit;
  if qryCheqReq.FieldByName('GROUPABLE').AsString = 'Y' then
    qryCheqReq.FieldByName('GROUPABLE').AsString := 'N'
  else
    qryCheqReq.FieldByName('GROUPABLE').AsString := 'Y';
  qryCheqReq.Post;
  qryCheqReq.ApplyUpdates;
  SetGroup;
end;

procedure TfrmCheqReqs.tbtnOpenClick(Sender: TObject);
var
  frmCheqReqNew: TfrmCheqReqNew;
begin
  if not qryCheqReq.IsEmpty then
  begin
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

    with TfrmCheqReqNew.Create(Self) do
    begin
      DisplayCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
      ShowModal;
    end;
}
    frmCheqReqNew:= TfrmCheqReqNew.Create(Self);
    frmCheqReqNew.DisplayCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
    if frmCheqReqNew.ShowModal = mrOk then
      MakeSQL;
  end;
end;


procedure TfrmCheqReqs.dbgrCheqReqDblClick(Sender: TObject);
begin
//  tbtnOpen.Click;
end;


{
procedure TfrmCheqReqs.qrCheqReqsBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  sTmp : string;
begin
{  qrlblCompany.Caption := SystemString('COMPANY');
  sTmp := '';
  if (chkHeld.Checked and chkWaiting.Checked and chkProcessable.Checked) or (not chkHeld.Checked and not chkWaiting.Checked and not chkProcessable.Checked) then
    sTmp := 'All'
  else
  begin
    if chkHeld.Checked then
      sTmp := sTmp + 'Held/';
    if chkWaiting.Checked then
      sTmp := sTmp + 'Waiting/';
    if chkProcessable.Checked then
      sTmp := sTmp + 'Processable/';
    sTmp := Copy(sTmp, 1, Length(sTmp) - 1);
  end;
  qrlblTitle.Caption := sTmp + ' Cheque Requests from ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date);
  if cbBank.Text <> '' then
    qrlblTitle.Caption := qrlblTitle.Caption + ' for Bank ' + cbBank.Text;
  if cbAuthor.Text <> '' then
    qrlblTitle.Caption := qrlblTitle.Caption + ' requested by ' + cbAuthor.Text;
  if tbPayee.Text <> '' then
    qrlblTitle.Caption := qrlblTitle.Caption + ' for Payee including ' + tbPayee.Text;
  if tbDesc.Text <> '' then
    qrlblTitle.Caption := qrlblTitle.Caption + ' for Description including ' + tbDesc.Text;
  if tbAmountFrom.Text <> '' then
    qrlblTitle.Caption := qrlblTitle.Caption + ' for Amount more than ' + tbAmountFrom.Text;
  if tbAmountTo.Text <> '' then
    qrlblTitle.Caption := qrlblTitle.Caption + ' for Amount less than ' + tbAmountTo.Text;    }
{end; }

procedure TfrmCheqReqs.tbtnRefreshClick(Sender: TObject);
begin
  qryCheqreq.Close;
  qryCheqreq.Open;
end;

procedure TfrmCheqReqs.FormActivate(Sender: TObject);
begin
//   if pagCashbook.ActivePage = tabCashbook then
//      MakeSQL;
end;


procedure TfrmCheqReqs.CreateCreditNote;
var
  iNMemo, iNMatter: integer;
  cDebtors: currency;
  sRefno: string;
  bOKtoPost: Boolean;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}

  glComponentSetup := dmAxiom.getGlComponents;

  bOKtoPost:= (PostIntoLockedPeriod(dtpDateTo.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    cDebtors := TableCurrency('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'DEBTORS');

    iNMatter := TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER');
  {
    Code Modified 30.9.2002 GG

    Recoded with clause to make for better readability

    with procBillCreate do
    begin
      ParamByName('Entity').AsString := dmAxiom.Entity;
      ParamByName('NMatter').AsInteger := iNMatter;
      Execute;
      iNMemo := ParamByName('NMemo').AsInteger;
    end;
  }
    procBillCreate.ParamByName('P_Entity').AsString := dmAxiom.Entity;
    procBillCreate.ParamByName('P_NMatter').AsInteger := iNMatter;
    procBillCreate.Execute;
    iNMemo := procBillCreate.ParamByName('Result').AsInteger;

    // Debtors

    {post components}
    sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_ANTD_DR'),'',true,'');

    PostLedger(Date
      , qryCheqReq.FieldByName('AMOUNT').AsCurrency + qryCheqReq.FieldByName('TAX').AsCurrency
      , qryCheqReq.FieldByName('TAX').AsCurrency
      , qryCheqReq.FieldByName('FILEID').AsString
      , 'NMEMO'
      , iNMemo
      , 'Cheque request cancelled'
      , sLedgerKey
      , ''
      , -1
      , ''
      , qryCheqReq.FieldByName('TAXCODE').AsString
      , FALSE
      , '0'
      , 0
      , qryCheqReq.FieldByName('NMATTER').AsInteger);
    // Anticipated Disbursements

    {post components}
    sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');

    PostLedger(Date
      , 0 - qryCheqReq.FieldByName('AMOUNT').AsCurrency
      , 0
      , qryCheqReq.FieldByName('FILEID').AsString
      , 'NMEMO'
      , iNMemo
      , 'Cheque request cancelled'
      , sLedgerKey
      , ''
      , -1
      , ''
      , qryCheqReq.FieldByName('TAXCODE').AsString
      , FALSE
      , '0'
      , 0
      , qryCheqReq.FieldByName('NMATTER').AsInteger );
    // Tax
    if qryCheqReq.FieldByName('TAX').AsCurrency <> 0 then
    begin

    {post components}
    sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReq.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER'),'',true,'');


      PostLedger(Date
        , 0 - qryCheqReq.FieldByName('TAX').AsCurrency
        , 0
        , qryCheqreq.FieldByName('FILEID').AsString
        , 'NMEMO'
        , iNMemo
        , 'Cheque request cancelled'
        , sLedgerKey
        , ''
        , -1
        , ''
        , qryCheqReq.FieldByName('TAXCODE').AsString
        , FALSE
        , '0'
        , 0
        , qryCheqReq.FieldByName('NMATTER').AsInteger);
      end;

  {
    Code Modified 30.9.2002 GG

    Recoded with clause to make for better readability

    with qryBill do
    begin
      SQL.Text := 'UPDATE NMEMO SET ANTD_PAID = ANTD_PAID + :ANTD, ANTDTAX_PAID = ANTDTAX_PAID + :ANTDTAX, TAX_PAID = TAX_PAID + :ANTDTAX WHERE NMEMO = ' + qryCheqreq.FieldByName('NMEMO').AsString;
      ParamByName('ANTD').AsFloat := qryCheqReq.FieldByName('AMOUNT').AsFloat;
      ParamByName('ANTDTAX').AsFloat := qryCheqReq.FieldByName('TAX').AsFloat;
      ExecSQL;
    end;
  }
    qryBill.SQL.Text := 'UPDATE NMEMO SET ANTD_PAID = ANTD_PAID + :ANTD, ANTDTAX_PAID = ANTDTAX_PAID + :ANTDTAX, TAX_PAID = TAX_PAID + :ANTDTAX WHERE NMEMO = ' + qryCheqreq.FieldByName('NMEMO').AsString;
    qryBill.ParamByName('ANTD').AsFloat := qryCheqReq.FieldByName('AMOUNT').AsFloat;
    qryBill.ParamByName('ANTDTAX').AsFloat := qryCheqReq.FieldByName('TAX').AsFloat;
    qryBill.ExecSQL;

    MatterUpdate(iNMatter, 'DEBTORS', 0 - (qryCheqReq.FieldByName('AMOUNT').AsCurrency+qryCheqReq.FieldByName('TAX').AsCurrency));

    // We have to commit here so that we can update the bill credit note via the NMemo


    CheckLedgerTotal;

    dmAxiom.uniInsight.Commit;

    dmAxiom.uniInsight.StartTransaction;

  {
    Code Modified 30.9.2002 GG

    Recoded with clause to make for better readability

    with qryBill do
    begin
      SQL.Clear;
      SQL.Add('UPDATE NMEMO');
      SQL.Add('   SET DISPATCHED = :DISPATCHED,');
      SQL.Add('       ANTD = :ANTD,');
      SQL.Add('       ANTD_PAID = :ANTD,');
      SQL.Add('       ANTDTAX = :ANTDTAX,');
      SQL.Add('       ANTDTAX_PAID = :ANTDTAX,');
      SQL.Add('       TAX = :ANTDTAX,');
      SQL.Add('       TAX_PAID = :ANTDTAX,');
      SQL.Add('       DEBTORS = :DEBTORS,');
      SQL.Add('       RV_TYPE = ''C'',');
      SQL.Add('       RV_NMEMO = :RV_NMEMO,');
      SQL.Add('       REFNO = :REFNO,');
      SQL.Add('       FEES_PAID = 0, DISB_PAID = 0, SUND_PAID = 0, TRUST = 0,');
      SQL.Add('       FEESTAX = 0, DISBTAX = 0, SUNDTAX = 0,');
      SQL.Add('       FEESTAX_PAID = 0, DISBTAX_PAID = 0, SUNDTAX_PAID = 0');
      SQL.Add('WHERE NMEMO = ' + IntToStr(iNMemo));
      ParamByName('DISPATCHED').AsDateTime := Now;
      ParamByName('ANTD').AsFloat := 0 - qryCheqReq.FieldByName('AMOUNT').AsCurrency;
      ParamByName('ANTDTAX').AsFloat := 0 - qryCheqReq.FieldByName('TAX').AsCurrency;
      ParamByName('DEBTORS').AsFloat := cDebtors;
      ParamByName('REFNO').AsString := NextRefno(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'LASTCREDITNOTE'));
      ParamByName('RV_NMEMO').AsInteger := qryCheqReq.FieldByName('NMEMO').AsInteger;
      ExecSQL;

      // Update the last credit note number
      SQL.Text := 'UPDATE ENTITY SET LASTCREDITNOTE = ' + QuotedStr(sRefno) + ' WHERE CODE = ' + QuotedStr(dmAxiom.Entity);
      ExecSQL;
    end;
  }
    qryBill.SQL.Clear;
    qryBill.SQL.Add('UPDATE NMEMO');
    qryBill.SQL.Add('   SET DISPATCHED = :DISPATCHED,');
    qryBill.SQL.Add('       ANTD = :ANTD,');
    qryBill.SQL.Add('       ANTD_PAID = :ANTD,');
    qryBill.SQL.Add('       ANTDTAX = :ANTDTAX,');
    qryBill.SQL.Add('       ANTDTAX_PAID = :ANTDTAX,');
    qryBill.SQL.Add('       TAX = :ANTDTAX,');
    qryBill.SQL.Add('       TAX_PAID = :ANTDTAX,');
    qryBill.SQL.Add('       DEBTORS = :DEBTORS,');
    qryBill.SQL.Add('       RV_TYPE = ''C'',');
    qryBill.SQL.Add('       RV_NMEMO = :RV_NMEMO,');
    qryBill.SQL.Add('       REFNO = :REFNO,');
    qryBill.SQL.Add('       FEES_PAID = 0, DISB_PAID = 0, SUND_PAID = 0, TRUST = 0,');
    qryBill.SQL.Add('       FEESTAX = 0, DISBTAX = 0, SUNDTAX = 0,');
    qryBill.SQL.Add('       FEESTAX_PAID = 0, DISBTAX_PAID = 0, SUNDTAX_PAID = 0');
    qryBill.SQL.Add('WHERE NMEMO = ' + IntToStr(iNMemo));
    qryBill.ParamByName('DISPATCHED').AsDateTime := Now;
    qryBill.ParamByName('ANTD').AsFloat := 0 - qryCheqReq.FieldByName('AMOUNT').AsCurrency;
    qryBill.ParamByName('ANTDTAX').AsFloat := 0 - qryCheqReq.FieldByName('TAX').AsCurrency;
    qryBill.ParamByName('DEBTORS').AsFloat := cDebtors;
    qryBill.ParamByName('REFNO').AsString := NextRefno(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'LASTCREDITNOTE'));
    qryBill.ParamByName('RV_NMEMO').AsInteger := qryCheqReq.FieldByName('NMEMO').AsInteger;
    qryBill.ExecSQL;

    // Update the last credit note number
    qryBill.SQL.Text := 'UPDATE ENTITY SET LASTCREDITNOTE = ' + QuotedStr(sRefno) + ' WHERE CODE = ' + QuotedStr(dmAxiom.Entity);
    qryBill.ExecSQL;
  end
end;


procedure TfrmCheqReqs.mnuFileOpenClick(Sender: TObject);
var
  frmCheqReqNew: TfrmCheqReqNew;
begin
  if not qryCheqReq.IsEmpty then
  begin
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

    with TfrmCheqReqNew.Create(Self) do
    begin
      DisplayCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
      ShowModal;
    end;
}
    frmCheqReqNew:= TfrmCheqReqNew.Create(Self);
    frmCheqReqNew.DisplayCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
    if frmCheqReqNew.ShowModal = mrOk then
      MakeSQL;
  end;
end;

procedure TfrmCheqReqs.mnuFileDeleteClick(Sender: TObject);
var
  bOKtoPost: Boolean;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}

   glComponentSetup := dmAxiom.getGlComponents;

   bOKtoPost:= (PostIntoLockedPeriod(dtpDateTo.Date) in [prNotLocked, prOKToProceed]);

   if bOKtoPost then
   begin
     if qryCheqReq.FieldByName('ANTICIPATED').AsString = 'N' then
     begin

           if MsgAsk('Do you want delete this Cheque Requisition?') = mrYes then
           begin
             // It was just a request - simply delete it
             qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = NULL WHERE REV_NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
             qryUpdate.ExecSQL;
             qryUpdate.Close;

             qryUpdate.SQL.Text := 'DELETE FROM CHEQREQ WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
             qryCheqReq.Close;
             qryUpdate.ExecSQL;
             qryUpdate.Close;
             qryCheqReq.Open;
           end;

     end
     else if (MsgAsk('Do you want to mark this Cheque Requisition as converted?') = mrYes) then
         ConvertTagCheqReq
     else if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and
             (MsgAsk('Do you want delete this Cheque Requisition?') = mrYes) then
     begin
       // reverse the ledgers for the cheqreq
       if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
       dmAxiom.uniInsight.StartTransaction;
       try

           {post components}
           sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');

            PostLedger(Date
              , qryCheqReq.FieldByName('AMOUNT').AsCurrency
              , qryCheqReq.FieldByName('TAX').AsCurrency
              , qryCheqReq.FieldByName('FILEID').AsString
              , 'CHEQREQ'
              , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
              , qryCheqReq.FieldByName('DESCR').AsString
              , sLedgerKey
              , ''
              , -1
              , ''
              , qryCheqReq.FieldByName('TAXCODE').AsString
              , FALSE
              , '0'
              , 0
              , qryCheqReq.FieldByName('NMATTER').AsInteger);
         // Debit the GST Input Tax Credits ledger the tax amount
         if qryCheqReq.FieldByName('TAX').AsCurrency <> 0 then
         begin

           {post components}
           sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReq.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');


           PostLedger(Date
             , qryCheqReq.FieldByName('TAX').AsCurrency
             , 0
             , qryCheqReq.FieldByName('FILEID').AsString
             , 'CHEQREQ'
             , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
             , qryCheqReq.FieldByName('DESCR').AsString
             , sLedgerKey
             , ''
             , -1
             , ''
             , qryCheqReq.FieldByName('TAXCODE').AsString
             , FALSE
             , '0'
             , 0
             , qryCheqReq.FieldByName('NMATTER').AsInteger);
           end;
         // Credit Anticipated disbursements liability the full amount
         {post components}
         sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');

         PostLedger(Date
           , 0-(qryCheqReq.FieldByName('AMOUNT').AsCurrency + qryCheqReq.FieldByName('TAX').AsCurrency)
           , 0
           , qryCheqReq.FieldByName('FILEID').AsString
           , 'CHEQREQ'
           , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
           , qryCheqReq.FieldByName('DESCR').AsString
           , sLedgerKey
           , TableString('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'AUTHOR')
           , -1
           , ''
           , qryCheqReq.FieldByName('TAXCODE').AsString
           , FALSE
           , '0'
           , 0
           , qryCheqReq.FieldByName('NMATTER').AsInteger );

           // delete the cheqreq
           qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = NULL WHERE REV_NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
           qryUpdate.ExecSQL;
           qryUpdate.Close;
           qryUpdate.SQL.Text := 'DELETE FROM CHEQREQ WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
           qryCheqReq.Close;
           qryUpdate.ExecSQL;
           qryUpdate.Close;
           qryCheqReq.Open;

       CheckLedgerTotal;

       except

         on Exception do
           begin
               dmAxiom.uniInsight.RollBack;
               //re raise the exception
               raise;

           end
       end;

       dmAxiom.uniInsight.Commit;
     end
   end;
end;

procedure TfrmCheqReqs.mnuFileReprintClick(Sender: TObject);
var
  frmCheqReqPrint :TfrmCheqReqPrint;
begin
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

  with TfrmCheqReqPrint.Create(Self) do
    PrintCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
}
  frmCheqReqPrint:= TfrmCheqReqPrint.Create(Self);
  frmCheqReqPrint.PrintCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
end;

procedure TfrmCheqReqs.dbgrCheqReqColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  MakeSql;
end;

procedure TfrmCheqReqs.btnTrustClick(Sender: TObject);
begin
  tbDesc.Text := 'Trust to Office Transfer';
end;

procedure TfrmCheqReqs.tbtnrevClick(Sender: TObject);
var
  bOKtoPost: Boolean;
  // variable used to store cheqreq value from sequence in order to
  // use it for posting purposes.
  LfrmCheqReqReverse: TfrmCheqReqReverse;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  glComponentSetup := dmAxiom.getGlComponents;

  bbtnrev.Enabled := False;
  bOKtoPost:= (PostIntoLockedPeriod(Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    if (qryCheqReq.FieldByName('BILLED').AsString = 'Y') AND
       (not qryCheqReq.FieldByName('NMEMO').IsNull ) then
       MsgErr('Cheque Requisition has been billed, cannot be reversed.')
    else
    if IsMatterArchived(qryCheqreq.FieldByName('CREFNO').AsString) then
       MsgErr('Cheque Requisition cannot be reversed for an archived matter.')
    else
    if qryCheqReq.FieldByName('ANTICIPATED').AsString = 'N' then
    begin
       if MsgAsk('Do you want reverse this Cheque Requisition?') = mrYes then
       begin
         LfrmCheqReqReverse := TfrmCheqReqReverse.Create(frmCheqReqs);
         LfrmCheqReqReverse.DisplayInvoice(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
         try
            if LfrmCheqReqReverse.ShowModal = mrOk then
            begin
               qryCheqReq.Close;
               qryCheqReq.Open;
            end
            else
               bbtnrev.Enabled := True;
         finally
               LfrmCheqReqReverse.Free;
         end;
         //*****************************************************
         // AES 13/9/2004
         // following code commented out as it is now handled in the cheque reversal
         // dialog
         //*****************************************************
         {
         nCheqReq := GetSeqnum('NCHEQREQ');
         // It was just a request - simply delete it
         qryUpdate.SQL.Clear;
         qryUpdate.SQL.Add('INSERT INTO CHEQREQ');
         qryUpdate.SQL.Add('(REV_NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, TAX, SUNDRYTYPE)');
         qryUpdate.SQL.Add('SELECT NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, ''Deleted - '' || DESCR, 0-AMOUNT, AUTHOR, SysDate, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, 0-TAX, SUNDRYTYPE');
         qryUpdate.SQL.Add('FROM CHEQREQ');
         qryUpdate.SQL.Add('WHERE NCHEQREQ = ' + qryCheqreq.FieldByName('NCHEQREQ').AsString);
         qryUpdate.ParamByName('NCHEQREQ').AsInteger := nCheqReq;
         qryUpdate.ExecSQL;
         qryUpdate.Close;

         qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = ' + qryUpdate.ParamByName('NCHEQREQ').AsString + ' WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
         qryUpdate.ExecSQL;
         qryUpdate.Close;      }

{         qryUpdate.SQL.Text := 'UPDATE TRANSITEM SET NOWNER = ' + qryUpdate.ParamByName('NCHEQREQ').AsString + ' WHERE NOWNER = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
         qryCheqReq.Close;
         qryUpdate.ExecSQL;
         qryUpdate.Close;  }

       end;

    end
    else if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and
            (MsgAsk('Do you want reverse this Cheque Requisition?') = mrYes) then
    begin
      // reverse the ledgers for the cheqreq

      LfrmCheqReqReverse := TfrmCheqReqReverse.Create(Self);
      LfrmCheqReqReverse.DisplayInvoice(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
      try
         if LfrmCheqReqReverse.ShowModal = mrOk then
         begin
            if dmAxiom.uniInsight.InTransaction then
                dmAxiom.uniInsight.Commit;
            dmAxiom.uniInsight.StartTransaction;
            try
                 {post components}
                 sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');

                 PostLedger(Date
                   , qryCheqReq.FieldByName('AMOUNT').AsCurrency
                   , qryCheqReq.FieldByName('TAX').AsCurrency
                   , qryCheqReq.FieldByName('FILEID').AsString
                   , 'CHEQREQ'
                   , LfrmCheqReqReverse.nCheqReq
                   , LfrmCheqReqReverse.mlReason.Text          //  qryCheqReq.FieldByName('DESCR').AsString
                   , sLedgerKey
                   , ''
                   , -1
                   , ''
                   , qryCheqReq.FieldByName('TAXCODE').AsString
                   , FALSE
                   , '0'
                   , 0
                   , qryCheqReq.FieldByName('NMATTER').AsInteger
                   , 0
                   , TRUE );

              // Debit the GST Input Tax Credits ledger the tax amount
              if qryCheqReq.FieldByName('TAX').AsCurrency <> 0 then
              begin
                {post components}
                sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReq.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                PostLedger(Date
                  , qryCheqReq.FieldByName('TAX').AsCurrency
                  , 0
                  , qryCheqReq.FieldByName('FILEID').AsString
                  , 'CHEQREQ'
                  , LfrmCheqReqReverse.nCheqReq
                  , LfrmCheqReqReverse.mlReason.Text    //  qryCheqReq.FieldByName('DESCR').AsString
                  , sLedgerKey
                  , ''
                  , -1
                  , ''
                  , qryCheqReq.FieldByName('TAXCODE').AsString
                  , FALSE
                  , '0'
                  , 0
                  , qryCheqReq.FieldByName('NMATTER').AsInteger
                  , 0
                  , TRUE );
              end;
              // Credit Anticipated disbursements liability the full amount

              {post components}
              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');

              PostLedger(Date
                , 0-(qryCheqReq.FieldByName('AMOUNT').AsCurrency + qryCheqReq.FieldByName('TAX').AsCurrency)
                , 0
                , qryCheqReq.FieldByName('FILEID').AsString
                , 'CHEQREQ'
                , LfrmCheqReqReverse.nCheqReq
                , LfrmCheqReqReverse.mlReason.Text    //  qryCheqReq.FieldByName('DESCR').AsString
                , sLedgerKey
                , TableString('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'AUTHOR')
                , -1
                , ''
                , qryCheqReq.FieldByName('TAXCODE').AsString
                , FALSE
                , '0'
                , 0
                , qryCheqReq.FieldByName('NMATTER').AsInteger
                , 0
                , TRUE );

         //*****************************************************
         // AES 13/9/2004
         // following code commented out as it is now handled in the cheque reversal
         // dialog
         //*****************************************************

                // delete the cheqreq
   //             qryUpdate.SQL.Clear;
   //             qryUpdate.SQL.Add('INSERT INTO CHEQREQ');
   //             qryUpdate.SQL.Add('(REV_NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, TAX, SUNDRYTYPE)');
   //             qryUpdate.SQL.Add('SELECT NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, ''Deleted - '' || DESCR, 0-AMOUNT, AUTHOR, SysDate, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, 0-TAX, SUNDRYTYPE');
   //             qryUpdate.SQL.Add('FROM CHEQREQ');
   //             qryUpdate.SQL.Add('WHERE NCHEQREQ = ' + qryCheqreq.FieldByName('NCHEQREQ').AsString);
   //             qryUpdate.ParamByName('NCHEQREQ').AsInteger := nCheqReq;
   //             qryUpdate.ExecSQL;
   //             qryUpdate.Close;

   //             nRVCheqReq := qryUpdate.ParamByName('NCHEQREQ').AsString;
   //             qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = ' + nRVCheqReq + ' WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
      //          qryCheqReq.Close;
   //             qryUpdate.ExecSQL;
   //             qryUpdate.Close;

   //             qryUpdate.SQL.Text := 'UPDATE TRANSITEM SET NOWNER = ' + nRVCheqReq + ' WHERE RVDATE IS NOT NULL AND NOWNER = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
   //             qryCheqReq.Close;
   //             qryUpdate.ExecSQL;
   //             qryUpdate.Close;

                qryCheqReq.Open;

            CheckLedgerTotal;

            except
            on Exception do
                begin
                    dmAxiom.uniInsight.RollBack;
                    bbtnrev.Enabled := True;
                    //re raise the exception
                    raise;
                end;
            end;
         end
         else
            bbtnrev.Enabled := True;
      finally
         LfrmCheqReqReverse.Free;
         dmAxiom.uniInsight.Commit;
      end;
    end
    else begin
       ShowMessage('Cheque Requisition has been billed, cannot be reversed');
       bbtnrev.Enabled := True;
    end;
  end;
end;

{procedure TfrmCheqReqs.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (cbBank.Text = '') then
    begin
//      qrlblBankLabel.Font.Color := clBlack;
//      qrlblBank.Font.Color := clBlack
    end
  else
    begin
//      qrlblBankLabel.Font.Color := clWhite;
//      qrlblBank.Font.Color := clWhite;
    end;
end; }

procedure TfrmCheqReqs.qryCheqReqBeforeScroll(DataSet: TDataSet);
begin
   if not bConversionOn then
      qryDetails.Close;
end;

procedure TfrmCheqReqs.miReportChequeRequestsClick(Sender: TObject);
begin
//  qrCheqreqs.PreviewModal;
      try
      with qryCheqReqRpt do
      begin
         Close;
         SQL.Clear;
         SQL.Text := qryCheqReq.SQL.Text;
         if chkDateFrom.Checked then
            qryCheqReqRpt.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
         if chkDateTo.Checked then
            qryCheqReqRpt.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
         Open;
      end;
   finally
      rpCheqReqs.Print;
   end;
end;

procedure TfrmCheqReqs.miReportEffectofRequestsClick(Sender: TObject);
begin
   FNumOverdrawn     := 0;
   FTotalOverdrawn   := 0;

   try
      with qryCheqReqsEffect do
      begin
         Close;
         SQL.Clear;
         SQL.Text := qryCheqReq.SQL.Text;
         if chkDateFrom.Checked then
            qryCheqReqsEffect.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
         if chkDateTo.Checked then
            qryCheqReqsEffect.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
         Open;
      end;
   finally
      rptCheqReqsEffect.Print;
   end;
end;

procedure TfrmCheqReqs.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);

//  cxSetResourceString(@scxGridGroupByBoxCaption, 'Drag Payee or Payee Code to group cheqreqs into individual cheques');
  pagCashbook.ActivePageIndex := 1;
end;

procedure TfrmCheqReqs.tbtnPrintClick(Sender: TObject);
begin
//  qrCheqreqs.PreviewModal;
end;

procedure TfrmCheqReqs.pmCheqreqsPopup(Sender: TObject);
begin
  if (dmAxiom.Security.CheqReq.History) then
  begin
    if qryCheqReq.IsEmpty then
      miViewCheqreqHistoryforMatter.Caption:= 'Nothing to look at!'
    else
      miViewCheqreqHistoryforMatter.Caption:= Format('View Cheqreq History for Matter #%s...', [qryCheqreq.FieldByName('CREFNO').AsString])
  end
  else
    miViewCheqreqHistoryforMatter.Visible:= False
end;

procedure TfrmCheqReqs.miViewCheqreqHistoryforMatterClick(Sender: TObject);
//var
//  frmCheqreqHistory: TfrmCheqreqHistory;
begin
{  if qryCheqReq.IsEmpty then
    MessageDlg('Nothing to look at!', mtInformation, [mbOK], 0)
  else
  begin
    if (LogIntoCheqReqTool) then
      begin
        // show cheqreq history for matter number contained in selected cheqreq refno
        frmCheqreqHistory:= TfrmCheqreqHistory.Create(Self);
        frmCheqreqHistory.qryMatterDetails.ParamByName('FILEID').AsString:= qryCheqreq.FieldByName('CREFNO').AsString;
//        frmCheqreqHistory.qryMatterDetails.ParamByName('NMATTER').AsString:= qryCheqreq.FieldByName('CREFNO').AsString;
        frmCheqreqHistory.qryMatterDetails.Open;
        frmCheqreqHistory.Show;
      end;    //  end if
  end;    //  end if-else   }
end;

procedure TfrmCheqReqs.qryCheqReqBeforeClose(DataSet: TDataSet);
begin
  qryDetails.Close
end;

procedure TfrmCheqReqs.qryCheqReqAfterOpen(DataSet: TDataSet);
begin
  qryDetails.Open
end;

procedure TfrmCheqReqs.bbtnHoldClick(Sender: TObject);
var
ictr : Integer;

begin
(*
  // do for multiple items
  for iCtr := 0 to dbgrCheqReq.SelectedRows.Count - 1 do
  begin
    dbgrCheqReq.DataSource.DataSet.GotoBookmark(Pointer(dbgrCheqReq.SelectedRows.Items[iCtr]));
    with qryCheqReq do
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
  if tvCheqReq.DataController.GetSelectedCount > 0 then
  begin
    for iCtr := 0 to tvCheqReq.DataController.GetSelectedCount - 1 do
    begin
//      dbgrCheqReq.DataSource.DataSet.GotoBookmark(Pointer(dbgrCheqReq.SelectedRows.Items[iCtr]));
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

      with qryCheqReq do
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
      qryCheqReq.Edit;
      if (qryCheqReq.FieldByName('HELD').AsString = 'Y') or (qryCheqReq.FieldByName('HELD').AsString = 'W') then
      begin
        //FieldByName('HELD').AsString := 'N';
        qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''N'' WHERE NCHEQREQ =' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
        qryUpdate.ExecSQL;
        qryUpdate.Close;
      end
      else
      begin
        //FieldByName('HELD').AsString := 'Y';
        qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''Y'' WHERE NCHEQREQ =' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
        qryUpdate.ExecSQL;
        qryUpdate.Close;
      end;
      //Post;
      //ApplyUpdates;
      SetHeld;
    end;
    qryCheqReq.Close;
    qryCheqReq.Open;
  end
  else
    MessageDlg('No items selected', mtInformation, [mbOK], 0);
end;

procedure TfrmCheqReqs.bbtnGroupClick(Sender: TObject);
begin
{
  Code Modified 30.9.2002 GG

  Recoded with clause to make for better readability

  with qryCheqReq do
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
  qryCheqReq.Edit;
  if qryCheqReq.FieldByName('GROUPABLE').AsString = 'Y' then
    qryCheqReq.FieldByName('GROUPABLE').AsString := 'N'
  else
    qryCheqReq.FieldByName('GROUPABLE').AsString := 'Y';
  qryCheqReq.Post;
  qryCheqReq.ApplyUpdates;
  SetGroup;
end;

procedure TfrmCheqReqs.btnRefreshClick(Sender: TObject);
begin
  qryCheqreq.Close;
  qryCheqreq.Open;
end;

procedure TfrmCheqReqs.bbtnRevClick(Sender: TObject);
var
  bOKtoPost: Boolean;
  // variable used to store cheqreq value from sequence in order to
  // use it for posting purposes.
  LfrmCheqReqReverse: TfrmCheqReqReverse;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  glComponentSetup := dmAxiom.getGlComponents;

  bbtnrev.Enabled := False;
  bOKtoPost:= (PostIntoLockedPeriod(Date) in [prNotLocked, prOKToProceed]);

   if bOKtoPost then
   begin
      if IsMatterArchived(qryCheqreq.FieldByName('CREFNO').AsString) then
         MsgErr('Cheque Requisition cannot be reversed for an archived matter.')
      else
      if ((not qryCheqReq.FieldByName('NMEMO').IsNull) and
         (qryCheqReq.FieldByName('TRUST').AsString = 'G'))  then
         MsgErr('Cheque Requisition has been billed. It cannot be reversed.')
      else
      if (not qryCheqReq.FieldByName('REV_NCHEQREQ').IsNull) then
         MsgErr('Cheque Requisition has already been reversed.')
      else
      if (qryCheqReq.FieldByName('ANTICIPATED').AsString = 'N') then
      begin
         if MsgAsk('Do you want reverse this Cheque Requisition?') = mrYes then
         begin
           LfrmCheqReqReverse := TfrmCheqReqReverse.Create(frmCheqReqs);
           LfrmCheqReqReverse.DisplayInvoice(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
           try
              if LfrmCheqReqReverse.ShowModal = mrOk then
              begin
                 qryCheqReq.Close;
                 qryCheqReq.Open;
              end
              else
                 bbtnrev.Enabled := True;
           finally
                 LfrmCheqReqReverse.Free;
           end;
           //*****************************************************
           // AES 13/9/2004
           // following code commented out as it is now handled in the cheque reversal
           // dialog
           //*****************************************************
           {
           nCheqReq := GetSeqnum('NCHEQREQ');
           // It was just a request - simply delete it
           qryUpdate.SQL.Clear;
           qryUpdate.SQL.Add('INSERT INTO CHEQREQ');
           qryUpdate.SQL.Add('(REV_NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, TAX, SUNDRYTYPE)');
           qryUpdate.SQL.Add('SELECT NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, ''Deleted - '' || DESCR, 0-AMOUNT, AUTHOR, SysDate, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, 0-TAX, SUNDRYTYPE');
           qryUpdate.SQL.Add('FROM CHEQREQ');
           qryUpdate.SQL.Add('WHERE NCHEQREQ = ' + qryCheqreq.FieldByName('NCHEQREQ').AsString);
           qryUpdate.ParamByName('NCHEQREQ').AsInteger := nCheqReq;
           qryUpdate.ExecSQL;
           qryUpdate.Close;

           qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = ' + qryUpdate.ParamByName('NCHEQREQ').AsString + ' WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
           qryUpdate.ExecSQL;
           qryUpdate.Close;      }

  {         qryUpdate.SQL.Text := 'UPDATE TRANSITEM SET NOWNER = ' + qryUpdate.ParamByName('NCHEQREQ').AsString + ' WHERE NOWNER = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
           qryCheqReq.Close;
           qryUpdate.ExecSQL;
           qryUpdate.Close;  }

         end;
      end
      else
      if (((qryCheqReq.FieldByName('BILLED').AsString = 'N') and (qryCheqReq.FieldByName('NMEMO').IsNull))
         or (qryCheqReq.FieldByName('TRUST').AsString = 'T')) then
      begin
         if (MsgAsk('Do you want reverse this Cheque Requisition?') = mrYes) then
         begin
          // reverse the ledgers for the cheqreq
            LfrmCheqReqReverse := TfrmCheqReqReverse.Create(Self);
            LfrmCheqReqReverse.DisplayInvoice(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
            try
               if LfrmCheqReqReverse.ShowModal = mrOk then
               begin
                  if dmAxiom.uniInsight.InTransaction then
                    dmAxiom.uniInsight.Commit;
                  dmAxiom.uniInsight.StartTransaction;
                  try
                     {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');


                     PostLedger(Date
                       , qryCheqReq.FieldByName('AMOUNT').AsCurrency
                       , qryCheqReq.FieldByName('TAX').AsCurrency
                       , qryCheqReq.FieldByName('FILEID').AsString
                       , 'CHEQREQ'
                       , LfrmCheqReqReverse.nCheqReq
                       , LfrmCheqReqReverse.mlReason.Text          //  qryCheqReq.FieldByName('DESCR').AsString
                       , sLedgerKey
                       , ''
                       , -1
                       , ''
                       , qryCheqReq.FieldByName('TAXCODE').AsString
                       , FALSE
                       , '0'
                       , 0
                       , qryCheqReq.FieldByName('NMATTER').AsInteger
                       , 0
                       , TRUE );

                     // Debit the GST Input Tax Credits ledger the tax amount
                     if qryCheqReq.FieldByName('TAX').AsCurrency <> 0 then
                     begin
                       {post components}
                       sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReq.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                       PostLedger(Date
                        , qryCheqReq.FieldByName('TAX').AsCurrency
                        , 0
                        , qryCheqReq.FieldByName('FILEID').AsString
                        , 'CHEQREQ'
                        , LfrmCheqReqReverse.nCheqReq
                        , LfrmCheqReqReverse.mlReason.Text    //  qryCheqReq.FieldByName('DESCR').AsString
                        , sLedgerKey
                        , ''
                        , -1
                        , ''
                        , qryCheqReq.FieldByName('TAXCODE').AsString
                        , FALSE
                        , '0'
                        , 0
                        , qryCheqReq.FieldByName('NMATTER').AsInteger
                        , 0
                        , TRUE );
                     end;
                    // Credit Anticipated disbursements liability the full amount

                    {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');

                     PostLedger(Date
                      , 0-(qryCheqReq.FieldByName('AMOUNT').AsCurrency + qryCheqReq.FieldByName('TAX').AsCurrency)
                      , 0
                      , qryCheqReq.FieldByName('FILEID').AsString
                      , 'CHEQREQ'
                      , LfrmCheqReqReverse.nCheqReq
                      , LfrmCheqReqReverse.mlReason.Text    //  qryCheqReq.FieldByName('DESCR').AsString
                      , sLedgerKey
                      , TableString('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'AUTHOR')
                      , -1
                      , ''
                      , qryCheqReq.FieldByName('TAXCODE').AsString
                      , FALSE
                      , '0'
                      , 0
                      , qryCheqReq.FieldByName('NMATTER').AsInteger
                      , 0
                      , TRUE );

               //*****************************************************
               // AES 13/9/2004
               // following code commented out as it is now handled in the cheque reversal
               // dialog
               //*****************************************************

                      // delete the cheqreq
     //                 qryUpdate.SQL.Clear;
     //                 qryUpdate.SQL.Add('INSERT INTO CHEQREQ');
     //                 qryUpdate.SQL.Add('(REV_NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, TAX, SUNDRYTYPE)');
     //                 qryUpdate.SQL.Add('SELECT NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, ''Deleted - '' || DESCR, 0-AMOUNT, AUTHOR, SysDate, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, 0-TAX, SUNDRYTYPE');
     //                 qryUpdate.SQL.Add('FROM CHEQREQ');
     //                 qryUpdate.SQL.Add('WHERE NCHEQREQ = ' + qryCheqreq.FieldByName('NCHEQREQ').AsString);
     //                 qryUpdate.ParamByName('NCHEQREQ').AsInteger := nCheqReq;
     //                 qryUpdate.ExecSQL;
     //                 qryUpdate.Close;

     //                 nRVCheqReq := qryUpdate.ParamByName('NCHEQREQ').AsString;
     //                 qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = ' + nRVCheqReq + ' WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
            //          qryCheqReq.Close;
     //                 qryUpdate.ExecSQL;
     //                 qryUpdate.Close;

     //                 qryUpdate.SQL.Text := 'UPDATE TRANSITEM SET NOWNER = ' + nRVCheqReq + ' WHERE RVDATE IS NOT NULL AND NOWNER = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
     //                 qryCheqReq.Close;
     //                 qryUpdate.ExecSQL;
     //                 qryUpdate.Close;

                      qryCheqReq.Close;
                      qryCheqReq.Open;

                      CheckLedgerTotal;
                  except
                     on Exception do
                     begin
                        dmAxiom.uniInsight.RollBack;
                        bbtnrev.Enabled := True;
                          //re raise the exception
                        raise;
                     end;
                  end;
               end
               else
                  bbtnrev.Enabled := True;
            finally
               LfrmCheqReqReverse.Free;
               dmAxiom.uniInsight.Commit;
            end;
         end;
      end
      else
      begin
         ShowMessage('Cheque Requisition has been billed, cannot be reversed');
         bbtnrev.Enabled := True;
      end;
   end;
end;

procedure TfrmCheqReqs.actCreditNoteExecute(Sender: TObject);
var
  frmCheqReqInvoiceDebit: TfrmCheqReqInvoiceDebit;
begin
   frmCheqReqInvoiceDebit:= TfrmCheqReqInvoiceDebit.Create(Self);
   frmCheqReqInvoiceDebit.DisplayCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
   frmCheqReqInvoiceDebit.Show;
end;

procedure TfrmCheqReqs.actCreditNoteUpdate(Sender: TObject);
begin
   actCreditNote.Enabled := ((tvCheqReq.DataController.GetSelectedCount = 1) and
                            (not qryCheqReq.FieldByName('FILEID').IsNull) and
                            (qryCheqReq.FieldByName('BILLED').AsString = 'Y') and
                            (qryCheqReq.FieldByName('REV_NCHEQREQ').IsNull));
end;

procedure TfrmCheqReqs.actReverseUpdate(Sender: TObject);
begin
   if (qryCheqReq.State <> (dsInactive)) and dmAxiom.Security.CheqReq.Reverse then
      actReverse.Enabled := (qryCheqReq.FieldByName('BILLED').AsString = 'N');
end;

procedure TfrmCheqReqs.actReverseExecute(Sender: TObject);
var
  bOKtoPost: Boolean;
  // variable used to store cheqreq value from sequence in order to
  // use it for posting purposes.
  LfrmCheqReqReverse: TfrmCheqReqReverse;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}

  glComponentSetup := dmAxiom.getGlComponents;

  bbtnrev.Enabled := False;
  bOKtoPost:= (PostIntoLockedPeriod(Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    if IsMatterArchived(qryCheqreq.FieldByName('CREFNO').AsString) then
       MsgErr('Cheque Requisition cannot be reversed for an archived matter.')
    else
    if qryCheqReq.FieldByName('ANTICIPATED').AsString = 'N' then
    begin
       if MsgAsk('Do you want reverse this Cheque Requisition?') = mrYes then
       begin
         LfrmCheqReqReverse := TfrmCheqReqReverse.Create(frmCheqReqs);
         LfrmCheqReqReverse.DisplayInvoice(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
         try
            if LfrmCheqReqReverse.ShowModal = mrOk then
            begin
               qryCheqReq.Close;
               qryCheqReq.Open;
            end
            else
               bbtnrev.Enabled := True;
         finally
               LfrmCheqReqReverse.Free;
         end;
         //*****************************************************
         // AES 13/9/2004
         // following code commented out as it is now handled in the cheque reversal
         // dialog
         //*****************************************************
         {
         nCheqReq := GetSeqnum('NCHEQREQ');
         // It was just a request - simply delete it
         qryUpdate.SQL.Clear;
         qryUpdate.SQL.Add('INSERT INTO CHEQREQ');
         qryUpdate.SQL.Add('(REV_NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, TAX, SUNDRYTYPE)');
         qryUpdate.SQL.Add('SELECT NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, ''Deleted - '' || DESCR, 0-AMOUNT, AUTHOR, SysDate, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, 0-TAX, SUNDRYTYPE');
         qryUpdate.SQL.Add('FROM CHEQREQ');
         qryUpdate.SQL.Add('WHERE NCHEQREQ = ' + qryCheqreq.FieldByName('NCHEQREQ').AsString);
         qryUpdate.ParamByName('NCHEQREQ').AsInteger := nCheqReq;
         qryUpdate.ExecSQL;
         qryUpdate.Close;

         qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = ' + qryUpdate.ParamByName('NCHEQREQ').AsString + ' WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
         qryUpdate.ExecSQL;
         qryUpdate.Close;      }

{         qryUpdate.SQL.Text := 'UPDATE TRANSITEM SET NOWNER = ' + qryUpdate.ParamByName('NCHEQREQ').AsString + ' WHERE NOWNER = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
         qryCheqReq.Close;
         qryUpdate.ExecSQL;
         qryUpdate.Close;  }

       end;

    end
    else if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and
            (MsgAsk('Do you want reverse this Cheque Requisition?') = mrYes) then
    begin
      // reverse the ledgers for the cheqreq

      LfrmCheqReqReverse := TfrmCheqReqReverse.Create(Self);
      LfrmCheqReqReverse.DisplayInvoice(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);
      try
         if LfrmCheqReqReverse.ShowModal = mrOk then
         begin
            if dmAxiom.uniInsight.InTransaction then
              dmAxiom.uniInsight.Commit;
            dmAxiom.uniInsight.StartTransaction;
            try

                {post components}
                 sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');


                 PostLedger(Date
                   , qryCheqReq.FieldByName('AMOUNT').AsCurrency
                   , qryCheqReq.FieldByName('TAX').AsCurrency
                   , qryCheqReq.FieldByName('FILEID').AsString
                   , 'CHEQREQ'
                   , LfrmCheqReqReverse.nCheqReq
                   , LfrmCheqReqReverse.mlReason.Text          //  qryCheqReq.FieldByName('DESCR').AsString
                   , sLedgerKey
                   , ''
                   , -1
                   , ''
                   , qryCheqReq.FieldByName('TAXCODE').AsString
                   , FALSE
                   , '0'
                   , 0
                   , qryCheqReq.FieldByName('NMATTER').AsInteger
                   , 0
                   , TRUE );

              // Debit the GST Input Tax Credits ledger the tax amount
              if qryCheqReq.FieldByName('TAX').AsCurrency <> 0 then
              begin
                {post components}
                sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReq.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                PostLedger(Date
                  , qryCheqReq.FieldByName('TAX').AsCurrency
                  , 0
                  , qryCheqReq.FieldByName('FILEID').AsString
                  , 'CHEQREQ'
                  , LfrmCheqReqReverse.nCheqReq
                  , LfrmCheqReqReverse.mlReason.Text    //  qryCheqReq.FieldByName('DESCR').AsString
                  , sLedgerKey
                  , ''
                  , -1
                  , ''
                  , qryCheqReq.FieldByName('TAXCODE').AsString
                  , FALSE
                  , '0'
                  , 0
                  , qryCheqReq.FieldByName('NMATTER').AsInteger
                  , 0
                  , TRUE );
                end;
              // Credit Anticipated disbursements liability the full amount

              {post components}
              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');

              PostLedger(Date
                , 0-(qryCheqReq.FieldByName('AMOUNT').AsCurrency + qryCheqReq.FieldByName('TAX').AsCurrency)
                , 0
                , qryCheqReq.FieldByName('FILEID').AsString
                , 'CHEQREQ'
                , LfrmCheqReqReverse.nCheqReq
                , LfrmCheqReqReverse.mlReason.Text    //  qryCheqReq.FieldByName('DESCR').AsString
                , sLedgerKey
                , TableString('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'AUTHOR')
                , -1
                , ''
                , qryCheqReq.FieldByName('TAXCODE').AsString
                , FALSE
                , '0'
                , 0
                , qryCheqReq.FieldByName('NMATTER').AsInteger
                , 0
                , TRUE );

         //*****************************************************
         // AES 13/9/2004
         // following code commented out as it is now handled in the cheque reversal
         // dialog
         //*****************************************************

                // delete the cheqreq
   //             qryUpdate.SQL.Clear;
   //             qryUpdate.SQL.Add('INSERT INTO CHEQREQ');
   //             qryUpdate.SQL.Add('(REV_NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, TAX, SUNDRYTYPE)');
   //             qryUpdate.SQL.Add('SELECT NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, ''Deleted - '' || DESCR, 0-AMOUNT, AUTHOR, SysDate, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, 0-TAX, SUNDRYTYPE');
   //             qryUpdate.SQL.Add('FROM CHEQREQ');
   //             qryUpdate.SQL.Add('WHERE NCHEQREQ = ' + qryCheqreq.FieldByName('NCHEQREQ').AsString);
   //             qryUpdate.ParamByName('NCHEQREQ').AsInteger := nCheqReq;
   //             qryUpdate.ExecSQL;
   //             qryUpdate.Close;

   //             nRVCheqReq := qryUpdate.ParamByName('NCHEQREQ').AsString;
   //             qryUpdate.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = ' + nRVCheqReq + ' WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
      //          qryCheqReq.Close;
   //             qryUpdate.ExecSQL;
   //             qryUpdate.Close;

   //             qryUpdate.SQL.Text := 'UPDATE TRANSITEM SET NOWNER = ' + nRVCheqReq + ' WHERE RVDATE IS NOT NULL AND NOWNER = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
   //             qryCheqReq.Close;
   //             qryUpdate.ExecSQL;
   //             qryUpdate.Close;

                qryCheqReq.Open;

            CheckLedgerTotal;

            except
            on Exception do
                begin
                    dmAxiom.uniInsight.RollBack;
                    bbtnrev.Enabled := True;
                    //re raise the exception
                    raise;
                end;
            end;
         end
         else
            bbtnrev.Enabled := True;
      finally
         LfrmCheqReqReverse.Free;
         dmAxiom.uniInsight.Commit;
      end;
    end
    else begin
       ShowMessage('Cheque Requisition has been billed, cannot be reversed');
       bbtnrev.Enabled := True;
    end;
  end;
end;

procedure TfrmCheqReqs.CMExpandGroups(var Msg: TMessage);
begin
  TcxGridDBDataController(Msg.WParam).Groups.FullExpand;
end;

procedure TfrmCheqReqs.tvCheqReqDataControllerGroupingChanged(
  Sender: TObject);
begin
   if tvCheqReq.GroupedColumnCount > 1 then
      tvCheqReq.GroupedColumns[0].GroupIndex := -1;

   PostMessage(Handle, CM_EXPANDGROUPS, Integer(Sender), 0);
end;

function IsGroupedRecord(ARecord: TcxCustomGridRecord): Boolean;
begin
  Result := not (ARecord.Level = ARecord.GridView.DataController.Groups.GroupingItemCount);
end;

procedure TfrmCheqReqs.tvCheqReqCanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
   AAllow := not IsGroupedRecord(ARecord);
end;

procedure TfrmCheqReqs.tvCheqReqFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  GroupItemCount: Integer;
  Data: TcxCustomDataController;
  I: Integer;
begin
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

procedure TfrmCheqReqs.tvCheqReqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   LastKey := Key;
end;

procedure TfrmCheqReqs.tvCheqReqMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  AView: TcxGridDBTableView;
  I, J: integer;
begin
   AView := TcxGridDBTableView(TcxGridSite(Sender).GridView);
   AHitTest := AView.ViewInfo.GetHitTest(X,Y);
   if AHitTest is TcxGridRowIndicatorHitTest then
   begin
      I := TcxGridRowIndicatorHitTest(AHitTest).GridRecord.Index;
      J := tvCheqReqSELECTED.Index;
      AView.DataController.Values[I, J] := True;
      Check(AView);
   end;

   // Note that the Sender parameter is a Site
//   AHitTest := (Sender as TcxGridSite).GridView.ViewInfo.GetHitTest(X, Y);
   // The point belongs to a record
   if (AHitTest is TcxGridRecordHitTest) and
      IsGroupedRecord(TcxGridRecordHitTest(AHitTest).GridRecord) then
   begin
      LastKey := VK_NONAME;
   end;
end;

procedure TfrmCheqReqs.tvCheqReqSELECTEDPropertiesEditValueChanged(
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

procedure TfrmCheqReqs.tvCheqReqStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
   BColumn: TcxCustomGridTableItem;
   CColumn: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('HELD');
   BColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('CAN_PAY');
   CColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('TPAY');
   if (VarToStr(ARecord.Values[AColumn.Index]) = 'W') or (VarToStr(ARecord.Values[BColumn.Index]) = 'N')  or (VarToStr(ARecord.Values[CColumn.Index]) = 'N') then
      AStyle := cxStyleW
   else if VarToStr(ARecord.Values[AColumn.Index]) = 'Y' then
      AStyle := cxStyleY
   else if VarToStr(ARecord.Values[AColumn.Index]) = 'N' then
      AStyle := cxStyleN
   else
      AStyle := cxStyleD;
end;

function TfrmCheqReqs.PostCheques(DefaultPrinter: string; AuthBy: string; bPrint: boolean): boolean;
var
   iNcheque, n, LTries: integer;
   nAccount, I: integer;
   LEntered, LMsg,
   sSQL, sSQLWhere, sLedger, sLegalCode, sNCreditor, sLedgerCode: string;
   MatterList,AmountList, CheqReqUpdate: TStringList;
   bProceed, bPostingFailed, bAccumulate: Boolean;
   cTrust, cProtected, cAmount, iCheqReqAmount, iCheqReqTax, cMatterAmount,
   TotalAmt, WithholdTax: Currency;
   cMatterTotal, cTradeTotal : Double;
   RowsUpdated: integer;
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
   sLedgerKey, ChequeNo,
   LTrustODPasswd: String;
begin
  CheqReqUpdate := nil;
  WithHoldTax := 0;
  try
      Screen.Cursor := crHourGlass;

      glComponentSetup := dmAxiom.getGlComponents;

      LTrustODPasswd := SystemString('TRUST_OD_PASSWD');
      if LTrustODPasswd = '' then
         LTrustODPasswd := C_OVERDRAWPASSWORD;

      // load printer values
      qryPrinter.Close;
      qryPrinter.ParamByName('CODE').AsString := DefaultPrinter;
      qryPrinter.Open;

      CheqReqUpdate := TStringList.Create;
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

      // 20 Sep 2018 dw create prior to entering the process so it can be cleaned up
      MatterList := TStringList.Create;
      AmountList := TStringList.Create;


      // Create the Cheque entry - as we are using Cached Updates
      // this won't save until we explicitly ApplyUpdates
      try
          with qryLedger do
          begin
             First;
             while not eof do
             begin
                if FieldByName('PROCESS').AsString = 'Y' then
                begin
                   qryBank.Close;
                   qryBank.ParamByName('P_CODE').AsString := FieldByName('BANK').AsString;
                   qryBank.ParamByName('P_ENTITY').AsString := dmAxiom.Entity;
                   qryBank.Open;

                   iNcheque := FieldByName('NCHEQUE').AsInteger;
                   qryCheque.ParamByName('P_Ncheque').AsInteger := iNcheque;
                   qryCheque.Open;

                   TotalAmt := FieldByName('AMOUNT').AsCurrency + FieldByName('TAX').AsCurrency;

                   qryCheque.Insert;
                   qryCheque.FieldByName('NCHEQUE').AsInteger := iNcheque;
                   qryCheque.FieldByName('PRINTER').AsString := DefaultPrinter;
                   qryCheque.FieldByName('CREATED').AsDateTime := FieldByName('CREATED').AsDateTime;
       //            qryCheque.FieldByName('CHQNO').AsString := tbChqno.Text;
                   qryCheque.FieldByName('TYPE').AsString := 'PY';
                   qryCheque.FieldByName('BANKED').AsString := 'N';

                   qryCheque.FieldByName('SYSTEM_DATE').AsDateTime := Date;
                   qryCheque.FieldByName('ACCT').AsString := FieldByName('BANK').AsString;
                   qryCheque.FieldByName('REQBY').AsString := Authby;
                   qryCheque.FieldByName('PAYEE').AsString := FieldByName('PAYEE').AsString;
                   qryCheque.FieldByName('DESCR').AsString := 'PAYMENT OF ACCOUNT';
                   qryCheque.FieldByName('AMOUNT').AsCurrency := TotalAmt - WithholdTax;
                   qryCheque.FieldByName('TRUST').AsString := qryBank.FieldByName('TRUST').AsString;
                   qryCheque.FieldByName('REVERSED').AsString := 'N';
                   qryCheque.FieldByName('PRINTED').AsString := 'N';
                   qryCheque.FieldByName('CHEQUE_GROUP_ID').AsInteger := FieldByName('CHEQUE_GROUP_ID').AsInteger;
                   if FieldByName('NNAME').AsInteger > 0 then
                      qryCheque.FieldbyName('NNAME').AsInteger := FieldByName('NNAME').AsInteger;

                   qryCheque.Post; // Puts cheque into cached buffer

                   // Create Cash At Bank Entry
                   nAccount := StrToInt(dmAxiom.GetSeqNumber('sqnc_naccount'));  //  GetSeqnum('NACCOUNT');
                   if qryCheque.FieldByName('TRUST').AsString <> 'T' then
                     // If it's a Ledger cheque, need to save chart used on posting
                     if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
                     begin
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',qryBank.FieldByName('CASH_AT_BANK').AsString,'',true,'');
                        PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                          , TotalAmt - WithholdTax
                          , 0
                          , qryCheque.FieldByName('CHQNO').AsString
                          , 'CHEQUE'
                          , qryCheque.FieldByName('NCHEQUE').AsInteger
                          , qryCheque.FieldByName('DESCR').AsString
                          , sLedgerKey    // qryBank.FieldByName('CASH_AT_BANK').AsString
                          , qryCheque.FieldByName('REQBY').AsString
                          , -1
                          , ''
                          , qryLedger.FieldByName('TAXCODE').AsString
                          , False
                          , qryLedger.FieldByName('REFNO').AsString
                          , 0
                          , 0
                          , nAccount);
                     end
                     else
                     begin
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',qryBank.FieldByName('CASH_AT_BANK').AsString,'',true,'');

                        PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                          , TotalAmt - WithholdTax
                          , 0
                          , qryCheque.FieldByName('CHQNO').AsString
                          , 'CHEQUE'
                          , qryCheque.FieldByName('NCHEQUE').AsInteger
                          , qryCheque.FieldByName('DESCR').AsString
                          , sLedgerKey
                          , qryCheque.FieldByName('REQBY').AsString
                          , -1
                          , ''
                          , qryLedger.FieldByName('TAXCODE').AsString
                          , False
                          , '0'
                          , 0
                          , 0
                          , nAccount );
                     end;
                   // END: Create Cash At Bank Entry

                   // Update the last cheque number and balance
                   with qryBankBalance do
                   begin
                     sSQL := 'UPDATE BANK SET BALANCE = ' + CurrToStrF(qryBank.FieldByName('BALANCE').AsCurrency + qryCheque.FieldByName('AMOUNT').AsCurrency, ffFixed, 15) + ', CL_BALANCE = ' + CurrToStrF(qryBank.FieldByName('CL_BALANCE').AsCurrency + qryCheque.FieldByName('AMOUNT').AsCurrency, ffFixed, 15);
                     sSQL := sSQL + ', LASTCHQ = ''' + qryCheque.FieldByName('CHQNO').AsString + '''';
                     sSQLWhere := ' WHERE ACCT = ''' + qryCheque.FieldByName('ACCT').AsString + '''';
                     Close;
                     SQL.Text := sSQL + sSQLWhere;
                     ExecSQL;
                     Close;
                   end;
                   //dbw move create out and wrap in a finally to properly cleanup
                   //MatterList := TStringList.Create;
                   //AmountList := TStringList.Create;

                   qryCheqReqsSelected.Close;
                   qryCheqReqsSelected.SQL.Text := 'SELECT * '+
                                                   'FROM cheqreq WHERE '+
                                                   'NCHEQREQ IN (' + qryLedger.FieldByName('NCHEQREQ_LIST').AsString +')';
                   qryCheqReqsSelected.Open;

     {              if MatterList.Count > 0 then
                   begin
                      for n :=0 to MatterList.Count - 1 do
                      begin
                         if qryCheqReqsSelected.FieldByName('FILEID').AsString = MatterList.Strings[n] then
                         begin
                            AmountList.Strings[n] := floattostr(strtofloat(AmountList.Strings[n]) +
                                                     qryCheqReqsSelected.FieldByName('AMOUNT').AsCurrency );
                            bAccumulate := True;
                            break;
                         end
                      end;
                      if not bAccumulate then
                      begin
                         MatterList.Add(qryCheqReqsSelected.FieldByName('FILEID').AsString);
                         AmountList.Add(qryCheqReqsSelected.FieldByName('AMOUNT').AsString);
                      end;
                   end
                   else
                   begin
                      MatterList.Add(qryCheqReqsSelected.FieldByName('FILEID').AsString);
                      AmountList.Add(qryCheqReqsSelected.FieldByName('AMOUNT').AsString);
                   end;     }

                   qryCheqReqsSelected.First;
                   qryAllocs.Open;
                   While not qryCheqReqsSelected.Eof do
                   begin
                      // its a matter
                      if (qryCheqReqsSelected.FieldByName('FILEID').AsString <> '') then
                         if MatterIsCurrent(qryCheqReqsSelected.FieldByName('fileid').AsString) then
                         begin
                            bAccumulate := False;
                            if MatterList.Count > 0 then
                            begin
                               for n := 0 to (MatterList.Count - 1) do
                               begin
                                  if qryCheqReqsSelected.FieldByName('FILEID').AsString = MatterList.Strings[n] then
                                  begin
                                     AmountList.Strings[n] := floattostr(strtofloat(AmountList.Strings[n]) +
                                                              qryCheqReqsSelected.FieldByName('AMOUNT').AsCurrency );
                                     bAccumulate := True;
                                     break;
                                  end
                               end;
                               if not bAccumulate then
                               begin
                                  MatterList.Add(qryCheqReqsSelected.FieldByName('FILEID').AsString);
                                  AmountList.Add(qryCheqReqsSelected.FieldByName('AMOUNT').AsString);
                               end;
                            end
                            else
                            begin
                               MatterList.Add(qryCheqReqsSelected.FieldByName('FILEID').AsString);
                               AmountList.Add(qryCheqReqsSelected.FieldByName('AMOUNT').AsString);
                            end;

                            qryAllocs.Insert;
                            qryAllocs.FieldByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
                            qryAllocs.FieldByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryCheqReqsSelected.FieldByName('FILEID').AsString, 'NMATTER');
                            qryAllocs.FieldByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryCheqReqsSelected.FieldByName('FILEID').AsString, 'NCLIENT');
                            qryAllocs.FieldByName('FILEID').AsString := qryCheqReqsSelected.FieldByName('REFNO').AsString;
                            qryAllocs.FieldByName('DESCR').AsString := qryCheqReqsSelected.FieldByName('DESCR').AsString;
                            qryAllocs.FieldByName('CLIENT_NAME').AsString := MatterString(qryCheqReqsSelected.FieldByName('FILEID').AsString, 'TITLE');
                            qryAllocs.FieldByName('MATTER_DESC').AsString := MatterString(qryCheqReqsSelected.FieldByName('FILEID').AsString, 'SHORTDESCR');
                            qryAllocs.FieldByName('CLEARED').AsString := 'Y';
                            qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
                            qryAllocs.FieldByName('SYSTEM_DATE').AsDateTime := Date;
                            qryAllocs.FieldByName('TAXCODE').AsString := qryCheqReqsSelected.FieldByName('TAXCODE').AsString;
                            qryAllocs.FieldByName('TAX').AsCurrency := 0 - qryCheqReqsSelected.FieldByName('TAX').AsCurrency;
                            qryAllocs.FieldByName('AMOUNT').AsCurrency := 0 - qryCheqReqsSelected.FieldByName('AMOUNT').AsCurrency;
                            qryAllocs.FieldByName('SUNDRYTYPE').AsString := qryCheqReqsSelected.FieldByName('SUNDRYTYPE').AsString;
                            qryAllocs.FieldByName('REFNO').AsString := qryCheqReqsSelected.FieldByName('REFNO').AsString;

                            // Check we won't overdraw trust
                            qryAllocs.FieldByName('TRUST').AsString := qryCheque.FieldByName('TRUST').AsString;
                            if qryAllocs.FieldByName('TRUST').AsString = 'T' then
                            begin
                              qryAllocs.FieldByName('PRIORBALANCE').AsCurrency := TableCurrency('MATTER', 'FILEID', qryCheqReqsSelected.FieldByName('REFNO').AsString, 'TRUST_BAL');

                              // Remove Compiler warning. This value is not used.
                              //cTrust := ClearTrust(qryCheqReqsSelected.FieldByName('FILEID').AsString);


                              cProtected := TableCurrency('MATTER', 'FILEID', qryCheqReqsSelected.FieldByName('FILEID').AsString, 'SPEC_PURPOSE');
                              if (qryCheqReqsSelected.FieldByName('FILEID').AsString <> '') then
                              begin
                                for n := 0 to (MatterList.Count - 1) do
                                begin
                                   if MatterList.Strings[n] = qryCheqReqsSelected.FieldByName('FILEID').AsString then break;
                                end;

                                cTrust := ClearTrust(MatterList.Strings[n]);
                                if ((StrToCurr(AmountList.Strings[n]) * -1) + cTrust) < 0 then
                                begin
                                  // Does this person have enough access to overdraw trust?
    //                              if TableInteger('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ACCESSLEVEL') = 0 then
                                  if dmAxiom.Security.Trust.PasswdOverdraw then
                                  begin
                                    LTries := 0;
                                    while(LTries < 3) do
                                    begin
                                       LEntered := '';
                                       if(cTrust >= 0) then
                                          LMsg := Format('There is %m in cleared Trust funds on File %s'#13#10'Continuing will result in the Trust funds being overdrawn by %m',
                                                        [cTrust,qryCheqReqsSelected.FieldByName('FILEID').AsString, -(cTrust - StrToCurr(AmountList.Strings[n]) )])
                                       else
                                          LMsg := Format('The Trust funds for File %s is overdrawn by %m.'#13#10'Continuing will result in the Trust funds being overdrawn by %m',
                                                        [qryCheqReqsSelected.FieldByName('FILEID').AsString, -(cTrust), -(cTrust - StrToCurr(AmountList.Strings[n]) )]);
                                       if(InputQueryPassword(CN_PROGRAM_NAME, LMsg + #13#10'To continue, please enter the password',LEntered)) then
                                       begin
                                          if(LEntered = LTrustODPasswd) then
                                             Break;
                                       end
                                       else
                                          Break;
                                       Inc(LTries);
                                    end;

                                    if(LEntered <> LTrustODPasswd) then
                                      raise ETrustOverDraw.Create('Cleared Trust would have overdrawn on File ' + qryCheqReqsSelected.FieldByName('REFNO').AsString)
                                    else
                                      qryAllocs.FieldByName('OVERDRAWN').AsString := 'Y';
                                  end
                                  else
                                    raise ETrustOverDraw.Create('Trust would have overdrawn on File ' + qryCheqReqsSelected.FieldByName('REFNO').AsString + #13 + #13 + 'You do not have sufficient access to overdraw Trust Accounts');
                                  // END: Does this person have enough access to overdraw trust?
                                end
                                else
                                if ((cTrust - Abs(StrToCurr(AmountList.Strings[n]))) - cProtected) < -0.001 then
                                begin
                                  //check to see if it's a stat deposit transaction
                                  if not (TableInteger('BANK', 'ACCT', cbBank.Text, 'STAT_DEP_MATTER') = qryAllocs.FieldbyName('NMATTER').AsInteger) then
                                     raise ETrustOverDraw.Create('Not enough unprotected Trust funds on File ' + qryCheqReqsSelected.FieldByName('FILEID').AsString);
                                end
                                // end ?
                                else if qryLedger.FieldByName('TYPE').AsString = 'Protected' then
                                begin
                                   if Abs(StrToCurr(AmountList.Strings[n])) > cProtected then
                                     raise ETrustOverDraw.Create('There is only ' + Format('%m', [cProtected]) + ' in the Protected Trust Balance of File ' + qryLedger.FieldByName('REFNO').AsString);
                                end;
                                // END: if ((StrToCurr(AmountList.Strings[n]) * -1) + cTrust) < 0 then
                              end;
                              // END: if (qryLedger.FieldByName('TYPE').AsString = 'Matter') then
                            end;
                            // END: if qryAllocs.FieldByName('TRUST').AsString = 'T' then

                            qryAllocs.FieldByName('PAYER').AsString := qryCheque.FieldByName('PAYEE').AsString;

                            qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
                            qryAllocs.FieldByName('BANK').AsString := qryCheque.FieldByName('ACCT').AsString;  //cbBank.Text;

                            qryAllocs.FieldByName('TYPE').AsString := qryCheque.FieldByName('TYPE').AsString;
                            qryAllocs.FieldByName('NCHEQUE').AsInteger := qryCheque.FieldByName('NCHEQUE').AsInteger;
                            qryAllocs.FieldByName('REFNO').AsString := qryCheque.FieldByName('CHQNO').AsString;
                            qryAllocs.FieldByName('BILLED').AsString := qryLedger.FieldByName('BILLED').AsString;
                            qryAllocs.FieldByName('CREATED').AsDateTime := qryCheque.FieldByName('CREATED').AsDateTime;
                            if qryLedger.FieldByName('TYPE').AsString = 'Protected' then
                              qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency := 0 - qryCheqReqsSelected.FieldByName('AMOUNT').AsCurrency;

                            if nAccount > 0 then begin
                              TransItemUpdate(nAccount, qryAllocs.FieldByName('NMATTER').AsInteger,qryAllocs.FieldByName('NALLOC').AsInteger);
                              nAccount := 0;
                            end;

                            if qryAllocs.FieldByName('TRUST').AsString = 'G' then
                            begin
                              if qryLedger.FieldByName('TYPE').AsString = 'Debtors' then
                                begin
                                  qryAllocs.FieldByName('PRIORBALANCE').AsCurrency := TableCurrency('MATTER', 'FILEID', qryCheqReqsSelected.FieldByName('FILEID').AsString, 'DEBTORS');
                                  qryAllocs.FieldByName('TYPE').AsString := 'RF';
                                  qryAllocs.FieldByName('BILLED').AsString := 'Y';
                                end
                                else
                                  qryAllocs.FieldByName('PRIORBALANCE').AsCurrency := 0 - TableCurrency('MATTER', 'FILEID', qryCheqReqsSelected.FieldByName('FILEID').AsString, 'UNBILL_DISB');
                            end;

                            // update the ncheqreq field here....
                            if (qryAllocs.FieldByName('TRUST').AsString = 'G') and (qryCheqReqsSelected.FieldByName('NCHEQREQ').AsInteger > 0) then
                              qryAllocs.FieldbyName('NCHEQREQ').AsInteger := qryCheqReqsSelected.FieldByName('NCHEQREQ').AsInteger;

                            qryAllocs.Post;  // Put it into the cached buffer

                            if qryAllocs.FieldByName('TRUST').AsString = 'G' then
                            begin
                              if qryLedger.FieldByName('TYPE').AsString = 'Debtors' then
                              begin
                                sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_DR'),'',true,'');
                                // Now make the General Ledger entry
                                PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                                    , 0 - qryCheqReqsSelected.FieldByName('AMOUNT').AsCurrency
                                    , 0
                                    , '0' // qryCheque.FieldByName('CHQNO').AsString
                                    , 'CHEQUE'
                                    , qryCheque.FieldByName('NCHEQUE').AsInteger
                                    , qryCheqReqsSelected.FieldByName('DESCR').AsString
                                    , sLedgerKey
                                    , qryCheque.FieldByName('REQBY').AsString
                                    , -1
                                    , ''
                                    , qryCheqReqsSelected.FieldByName('TAXCODE').AsString
                                    , FALSE
                                    , '0'
                                    , qryAllocs.FieldByName('NALLOC').AsInteger
                                    , qryAllocs.FieldByName('NMATTER').AsInteger );
                              end
                              else
                              begin
                                // Now make the General Ledger entry
                                sLedger := 'NEW_DISB_DR';
                                if TableString('TAXTYPE', 'CODE', qryCheqReqsSelected.FieldByName('TAXCODE').AsString, 'WITHHOLDING') = 'Y' then
                                  cAmount := 0 - (qryLedger.FieldByName('AMOUNT').AsCurrency
                                      + qryLedger.FieldByName('TAX').AsCurrency)
                                else
                                  cAmount := 0 - qryCheqReqsSelected.FieldByName('AMOUNT').AsCurrency;

                                if qryCheqReqsSelected.FieldByName('NCHEQREQ').AsInteger > 0 then
                                begin
                                  // It is a CheqReq
                                  if TableString('CHEQREQ','NCHEQREQ',qryCheqReqsSelected.FieldByName('NCHEQREQ').AsInteger,'ANTICIPATED') = 'Y' then
                                  begin
                                    // Pretend the anticipated disbursement never happened
       //                             ConvertTagCheqreq(iNcheque);
                                    if qryCheqReqsSelected.FieldByName('BILLED').AsString = 'Y' then
                                      sLedger := 'NEW_ANTD_CR';
                                  end;
                                  // If this allocation is not for the same amount as the original CheqReq, we must adjust the ledgers
                                  qryTmp.Close;
                                  qryTmp.SQL.Text := 'SELECT AMOUNT, TAX, TAXCODE FROM CHEQREQ WHERE NCHEQREQ = ' + qryCheqReqsSelected.FieldByName('NCHEQREQ').AsString;
                                  qryTmp.Open;

                                  qryTmp.Close;
                                end;

                                sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, sLedger),'',true,'');

                                PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                                    , cAmount
                                    , 0 - qryCheqReqsSelected.FieldByName('TAX').AsCurrency
                                    , '0'  //qryCheque.FieldByName('CHQNO').AsString
                                    , 'CHEQUE'
                                    , qryCheque.FieldByName('NCHEQUE').AsInteger
                                    , qryCheqReqsSelected.FieldByName('DESCR').AsString
                                    , sLedgerKey
                                    , qryCheque.FieldByName('REQBY').AsString
                                    , -1
                                    , ''
                                    , qryCheqReqsSelected.FieldByName('TAXCODE').AsString
                                    , FALSE
                                    , '0'
                                    , qryAllocs.FieldByName('NALLOC').AsInteger
                                    , qryAllocs.FieldByName('NMATTER').AsInteger );
                              end;
                              // END: if qryLedger.FieldByName('TYPE').AsString = 'Debtors' then
                            end;
                            // END: if qryAllocs.FieldByName('TRUST').AsString = 'G' then
                          // end; ?
                         end // END ELSE: if MatterIsCurrent(qryLedger.FieldByName('REFNO').AsString) then
                         else // Matter does not exist
                            raise EInvalidMatter.Create('Matter ' + qryCheqReqsSelected.FieldByName('REFNO').AsString + ' is not current');
                        // end; ?
                          // END: if MatterIsCurrent(qryLedger.FieldByName('REFNO').AsString) then => old note: End of Type = 'Matter'
                          //////////////////////////////////////////////////////////////////

                          // Or is it a General Ledger Allocation?
                        if qryCheqReqsSelected.FieldByName('LEDGER').AsString <> '' then
                        begin
                          if TableString('TAXTYPE', 'CODE', qryCheqReqsSelected.FieldByName('TAXCODE').AsString, 'WITHHOLDING') = 'Y' then
                            cAmount := 0 - (qryCheqReqsSelected.FieldByName('AMOUNT').AsCurrency + qryCheqReqsSelected.FieldByName('TAX').AsCurrency)
                          else
                            cAmount := 0 - qryCheqReqsSelected.FieldByName('AMOUNT').AsCurrency;

                          glInstance := dmAxiom.getGlComponents.parseString(qryCheqReqsSelected.FieldByName('LEDGER').AsString,true);

                          if not glInstance.valid then
                               begin
                               // something has gone very wrong !
                               raise Exception.create('Error invalid ledger key');
                          end;

                          PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                              , cAmount
                              , 0 - qryCheqReqsSelected.FieldByName('TAX').AsCurrency
                              , '0'  //qryCheque.FieldByName('CHQNO').AsString
                              , 'CHEQUE'
                              , qryCheque.FieldByName('NCHEQUE').AsInteger
                              , qryCheqReqsSelected.FieldByName('DESCR').AsString
                              , glInstance.ledgerKey
                              , qryCheque.FieldByName('REQBY').AsString
                              , -1
                              , ''
                              , qryCheqReqsSelected.FieldByName('TAXCODE').AsString);

                        end;
                        // END: Or is it a General Ledger Allocation?

                        CheqReqUpdate.Add('UPDATE CHEQREQ SET ' +
                                          'CONVERTED = ''Y'', BILLED = ''Y'', NCHEQUE = ' + IntToStr(iNcheque) +
                                          ' WHERE NCHEQREQ = ' + qryCheqReqsSelected.FieldByName('NCHEQREQ').AsString );  // IN (' + qryLedger.FieldByName('NCHEQREQ_LIST').AsString + ')');

                        if qryCheqReqsSelected.FieldByName('TAX').AsFloat <> 0 then
                        begin
                          // For ledger cheque, need to store chart used when posting
                          // LEDGER
                          if qryCheqReqsSelected.FieldByName('LEDGER').AsString <> '' then
                          begin
                            if TableString('TAXTYPE', 'CODE', qryCheqReqsSelected.FieldByName('TAXCODE').AsString, 'WITHHOLDING') = 'Y' then
                            begin
                              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReqsSelected.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                              PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                                   , qryCheqReqsSelected.FieldByName('TAX').AsCurrency
                                   , 0
                                   , '0' // tbChqno.Text
                                   , 'CHEQUE'
                                   , qryCheque.FieldByName('NCHEQUE').AsInteger
                                   , qryCheqReqsSelected.FieldByName('DESCR').AsString
                                   , sLedgerKey  // TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                                   , ''
                                   , -1
                                   , ''
                                   , qryCheqReqsSelected.FieldByName('TAXCODE').AsString
                                   , FALSE
                                   , qryCheqReqsSelected.FieldByName('REFNO').AsString
                                   , qryAllocs.FieldByName('NALLOC').AsInteger
                                   , qryAllocs.FieldByName('NMATTER').AsInteger );
                            end
                            else
                            begin
                              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReqsSelected.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                              PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                                   , 0 - qryCheqReqsSelected.FieldByName('TAX').AsCurrency
                                   , 0
                                   , '0'  // tbChqno.Text
                                   , 'CHEQUE'
                                   , qryCheque.FieldByName('NCHEQUE').AsInteger
                                   , qryCheqReqsSelected.FieldByName('DESCR').AsString
                                   , sLedgerKey  // TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                                   , ''
                                   , -1
                                   , ''
                                   , qryCheqReqsSelected.FieldByName('TAXCODE').AsString
                                   , FALSE
                                   , qryCheqReqsSelected.FieldByName('REFNO').AsString
                                   , qryAllocs.FieldByName('NALLOC').AsInteger
                                   , qryAllocs.FieldByName('NMATTER').AsInteger );
                            end;
                          end // END ELSE: For ledger cheque, need to store chart used when posting
                          else
                          begin
                            if TableString('TAXTYPE', 'CODE', qryCheqReqsSelected.FieldByName('TAXCODE').AsString, 'WITHHOLDING') = 'Y' then
                            begin
                              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReqsSelected.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                              PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                                   , qryCheqReqsSelected.FieldByName('TAX').AsCurrency
                                   , 0
                                   , '0'  //tbChqno.Text
                                   , 'CHEQUE'
                                   , qryCheque.FieldByName('NCHEQUE').AsInteger
                                   , qryCheqReqsSelected.FieldByName('DESCR').AsString
                                   , sLedgerKey   // TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                                   , ''
                                   , -1
                                   , ''
                                   , qryCheqReqsSelected.FieldByName('TAXCODE').AsString
                                   , FALSE
                                   , '0'
                                   , qryAllocs.FieldByName('NALLOC').AsInteger
                                   , qryAllocs.FieldByName('NMATTER').AsInteger );
                            end
                            else
                            begin
                              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryCheqReqsSelected.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                              PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                                   , 0 - qryCheqReqsSelected.FieldByName('TAX').AsCurrency
                                   , 0
                                   , '0'  // tbChqno.Text
                                   , 'CHEQUE'
                                   , qryCheque.FieldByName('NCHEQUE').AsInteger
                                   , qryCheqReqsSelected.FieldByName('DESCR').AsString
                                   , sLedgerKey    // TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                                   , ''
                                   , -1
                                   , ''
                                   , qryCheqReqsSelected.FieldByName('TAXCODE').AsString
                                   , FALSE
                                   , '0'
                                   , qryAllocs.FieldByName('NALLOC').AsInteger
                                   , qryAllocs.FieldByName('NMATTER').AsInteger );
                              end;
                          end;
                          // END:
                        end;
                        // END:
                        // print the cheque if set
                        try
                           if bPrint then
                              with TfrmChequePrint.Create(Self) do
                              begin;
                                 PrinterPath := DefaultPrinter;
                                 // generate cheqno from printer
                                 ChequeNo := NextRefno(Self.qryPrinter.FieldByName('NUM_LAST').AsString);
                                 //update printer with chqno
                                 Self.qryPrinter.Edit;
                                 Self.qryPrinter.FieldByName('NUM_LAST').AsString :=  ChequeNo;
                                 Self.qryPrinter.Post;
                                 // update cheque with chqno
                                 qryTmp.Close;
                                 qryTmp.SQL.Text := 'UPDATE CHEQUE SET CHQNO = ' + ChequeNo + ' WHERE NCHEQUE = ' + IntToStr(iNcheque);
                                 qryTmp.ExecSQL;
                                 // update transitem.refno with chqno
                                 qryTmp.Close;
                                 qryTmp.SQL.Text := 'UPDATE TRANSITEM SET REFNO = ' + ChequeNo + ' WHERE NCHEQUE = ' + IntToStr(iNcheque);
                                 qryTmp.ExecSQL;
                                 // update alloc.refno with chqno
                                 qryTmp.Close;
                                 qryTmp.SQL.Text := 'UPDATE ALLOC SET REFNO = ' + ChequeNo + ' WHERE NCHEQUE = ' + IntToStr(iNcheque);
                                 qryTmp.ExecSQL;

                                 Self.qryPrinter.ApplyUpdates;
                                 PrintCheque(iNcheque);
                              end;
                        except
                           on E: Exception do
                                MsgErr('Printing failed:' + #13 + E.Message + #13#13 + 'You may print this cheque by locating it in the Cheques screen');
                        end;
                      qryCheqReqsSelected.Next;
                   end; // end of cheqreq selected loop
                end; // end of PROCESS = Y
                qryLedger.Next;
             end; // end of ledger loop

         // ***************   end of loop through G/L entries
         // END:  while not qryLedger.EOF do

         qryCheque.ApplyUpdates;
         qryAllocs.ApplyUpdates;
         qryCheqReq.ApplyUpdates;

         with qryCheqreqUpdate do
         begin
            for I := 0 to CheqReqUpdate.Count -1 do
            begin
               SQL.Clear;
               SQL.Text := CheqReqUpdate.Strings[I];
               ExecSQL;
            end;
         end;

         CheckLedgerTotal;
      end;
      finally
         MatterList.Free;
         AmountList.Free;
      end;
      except
         on E: Exception do
         begin
            dmAxiom.uniInsight.Rollback;
            if qryAllocs.UpdatesPending then
               qryAllocs.CancelUpdates;
            if qryCheque.UpdatesPending then
               qryCheque.CancelUpdates;
            if qryCheqreqUpdate.UpdatesPending then
               qryCheqreqUpdate.CancelUpdates;
            bPostingFailed := True;
            Screen.Cursor := crDefault;
            MsgErr('Posting failed:' + #13#13 + E.Message);
            Result := False;
         end;
      end;

       if not bPostingFailed then
       begin
         dmAxiom.uniInsight.Commit;

         qryAllocs.Close;
         qryCheque.Close;
         qryCheqReq.Close;
         qryPrinter.Close;
         CheqReqUpdate.Free;
         Screen.Cursor := crDefault;
         Result := True;
      end;
end;

procedure TfrmCheqReqs.actConvertUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := dmAxiom.Security.Cheque.Create and tabCashbook.Visible
                              and (not qryCheqReq.IsEmpty) and
                              (not chkRev.Checked) and (not cbConverted.Checked);
end;

procedure TfrmCheqReqs.actConvertAllUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := dmAxiom.Security.Cheque.Create and tabCashbook.Visible
                               and (tvCheqReq.GroupedColumnCount = 0)
                               and (not qryCheqReq.IsEmpty) and (not chkRev.Checked)
                               and (not cbConverted.Checked);
end;

procedure TfrmCheqReqs.bbtnAuthoriseClick(Sender: TObject);
var
   iCtr, ARowIndex: integer;
begin
   qryCheqReq.Edit;
   case tvCheqReq.DataController.GetSelectedCount of
      0, 1:
      begin
         if qryCheqReq.FieldByName('authorised').AsString = 'Y' then
         begin
            qryCheqReq.FieldByName('authorised_by').Clear;
            qryCheqReq.FieldByName('authorised').AsString := 'N';
         end
         else
         begin
            qryCheqReq.FieldByName('authorised').AsString := 'Y';
            qryCheqReq.FieldByName('authorised_by').AsString := dmAxiom.UserID
         end;
      end;
   else
      begin
         for iCtr := 0 to tvCheqReq.DataController.GetSelectedCount - 1 do
         begin
            ARowIndex := tvCheqReq.DataController.GetSelectedRowIndex(iCtr);
            tvCheqReq.DataController.FocusedRowIndex := ARowIndex;
 //           tvCheqReq.ViewData.Records[ARowIndex].Focused := True;
            if qryCheqReq.State <> dsEdit then
               qryCheqReq.Edit;
            if tvCheqReq.DataController.GetValue(ARowIndex, tvCheqReqHELD.Index) = 'N' then
            begin
               if qryCheqReq.FieldByName('authorised').AsString = 'Y' then
               begin
                  qryCheqReq.FieldByName('authorised_by').Clear;
                  qryCheqReq.FieldByName('authorised').AsString := 'N';
               end
               else
               begin
                  qryCheqReq.FieldByName('authorised').AsString := 'Y';
                  qryCheqReq.FieldByName('authorised_by').AsString := dmAxiom.UserID
               end;
            end;
         end;
      end;
   end;
   qryCheqReq.Post;
   qryCheqReq.ApplyUpdates;
   dmAxiom.uniInsight.Commit;
end;

procedure TfrmCheqReqs.tabFilterShow(Sender: TObject);
begin
   bbtnGroup.Enabled := False;
   mnuFileDelete.Enabled := False;
   bbtnrev.Enabled := False;
   mnuFileConvertReq.Enabled := False;
   mnuFilePrint.Enabled := False;
   miViewCheqreqHistoryforMatter.Enabled:= False;
   btnCreditNote.Enabled := False;
end;

procedure TfrmCheqReqs.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := SystemString('COMPANY');
end;

procedure TfrmCheqReqs.ppLabel3GetText(Sender: TObject; var Text: String);
var
  sTmp : string;
begin
   sTmp := '';
   if (chkHeld.Checked and chkWaiting.Checked and chkProcessable.Checked and cbBilledUnconverted.Checked) or
      (not chkHeld.Checked and not chkWaiting.Checked and not chkProcessable.Checked and not cbBilledUnconverted.Checked) then
      sTmp := 'All'
   else
   begin
      if chkHeld.Checked then
         sTmp := sTmp + 'Held/';
      if chkWaiting.Checked then
         sTmp := sTmp + 'Waiting/';
      if chkProcessable.Checked then
         sTmp := sTmp + 'Processable/';
      if cbBilledUnconverted.Checked then
         sTmp := sTmp + 'Billed and UnConverted/';
      sTmp := Copy(sTmp, 1, Length(sTmp) - 1);
   end;
   sTmp := sTmp + ' Cheque Requests from ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date);
   if cbBank.Text <> '' then
      sTmp := sTmp + ' for Bank ' + cbBank.Text;
   if cbAuthor.Text <> '' then
      sTmp := sTmp + ' requested by ' + cbAuthor.Text;
   if tbPayee.Text <> '' then
      sTmp := sTmp + ' for Payee including ' + tbPayee.Text;
   if tbDesc.Text <> '' then
      sTmp := sTmp + ' for Description including ' + tbDesc.Text;
   if tbAmountFrom.Text <> '' then
      sTmp := sTmp + ' for Amount more than ' + tbAmountFrom.Text;
   if tbAmountTo.Text <> '' then
      sTmp := sTmp + ' for Amount less than ' + tbAmountTo.Text;
   Text := sTmp;
end;

procedure TfrmCheqReqs.actPrintUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := (tabCashbook.Visible);
end;

procedure TfrmCheqReqs.actPrintExecute(Sender: TObject);
begin
   try
      with qryCheqReqRpt do
      begin
         Close;
         SQL.Clear;
         SQL.Text := qryCheqReq.SQL.Text;
         if chkDateFrom.Checked then
            qryCheqReqRpt.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
         if chkDateTo.Checked then
            qryCheqReqRpt.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
         Open;
      end;
   finally
      rpCheqReqs.Print;
   end;
end;

procedure TfrmCheqReqs.btnPrintGridClick(Sender: TObject);
begin
   dxComponentPrinter1.Preview();
end;

procedure TfrmCheqReqs.chkDateToClick(Sender: TObject);
begin
  dtpDateTo.Enabled := chkDateTo.Checked;
end;

procedure TfrmCheqReqs.chkDateFromClick(Sender: TObject);
begin
   dtpDateFrom.Enabled := chkDateFrom.Checked;
end;

procedure TfrmCheqReqs.ppVariable9Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := ClearTrust(ppDBText12.FieldValue);
end;

procedure TfrmCheqReqs.ppVariable8Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := ppVariable9.Value - ppDBText23.FieldValue;
   if Value < 0 then
   begin
      Inc(FNumOverDrawn);
      FTotalOverdrawn := FTotalOverdrawn + Value;
   end;
end;

procedure TfrmCheqReqs.ppVariable10Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := FNumOverdrawn;
end;

procedure TfrmCheqReqs.ppVariable11Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := -FTotalOverdrawn;
end;

procedure TfrmCheqReqs.Check(AGridView: TcxGridDBTableView);
var
  i: integer;
begin
   for i:= 0 to AGridView.DataController.RecordCount - 1 do
   begin
      if AGridView.DataController.Values[i, tvCheqReqSELECTED.Index] = True then
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True),true)
      else
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True), false);
   end;
end;

procedure TfrmCheqReqs.UmCheck(var Message: TMessage);
begin
   Check(TcxGridDBTableView(Message.WParam));
end;

end.

