unit Bills;

interface

uses
  ComObj, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Menus, Buttons, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxCurrencyEdit, cxCalendar, cxCheckBox, cxTextEdit, cxContainer, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPSContainerLnk, cxGridCustomPopupMenu,
  cxGridPopupMenu, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppModule,
  raCodMod, ppCtrls, ppBands, ppMemo, ppStrtch, ppRegion, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, dxBar, cxBarEditItem,
  dxBarExtItems, cxClasses, Uni, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  MemDS, DBAccess, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, cxRadioGroup, DateChangeButton, NumberEdit,
  NumberLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, OracleUniProvider,
  uRwMAPIMsgStoreEvents, uRwMAPIInterfaces, Variants, dxCore, ppFileUtils,
  ppIniStorage, cxGridExportLink, ShellAPI, DateUtils;

const
 NMEMOSEARCHDATES: array[0..2] of string = ('GENERATED','DISPATCHED','EXPPAYMENT');
 CM_REFRESHBILLSGRID = WM_USER + 1003;

type
                  
  TSelection = (bsCurrent, bsSelected, bsAll);


  TfrmBills = class(TForm)
    dsBills: TUniDataSource;
    qryTotal: TUniQuery;
    ilstToolbar: TImageList;
    qryBills: TUniQuery;
    qryBillsCount: TUniQuery;
    tmrSearch: TTimer;
    prcDeleteDBill: TUniStoredProc;
    procBillReverse: TUniStoredProc;
    qryTmp: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    dxBarManager1: TdxBarManager;
    tbtnOpen: TdxBarButton;
    mnuFilePostCurrent: TdxBarButton;
    mnuFilePostSelected: TdxBarButton;
    mnuFilePostAll: TdxBarButton;
    tbtnPost: TdxBarSubItem;
    tbtnAutoReceipt: TdxBarButton;
    mnuFilePrintReport: TdxBarButton;
    mnuFilePrintCurrent: TdxBarButton;
    mnuFilePrintSelected: TdxBarButton;
    mnuFilePrintAll: TdxBarButton;
    tbtnPrint: TdxBarSubItem;
    mnuFileMergeCurrent: TdxBarButton;
    mnuFileMergeSelected: TdxBarButton;
    mnuFileMergeAll: TdxBarButton;
    tbtnMerge: TdxBarSubItem;
    tbtnReverse: TdxBarButton;
    mnuFileExit: TdxBarButton;
    File1: TdxBarSubItem;
    Help2: TdxBarButton;
    Help1: TdxBarSubItem;
    tbtnDelete: TdxBarButton;
    popDelete: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    barContMatterSearch: TdxBarControlContainerItem;
    lblMatterSearch: TdxBarStatic;
    popPost: TdxBarPopupMenu;
    btnPost: TdxBarButton;
    popPrint: TdxBarPopupMenu;
    btnPrint: TdxBarButton;
    popMerge: TdxBarPopupMenu;
    btnMerge: TdxBarButton;
	btnDebtorTask: TdxBarButton;
    tbnOpenMatter: TdxBarButton;
    rptBills: TppReport;
    plBills: TppDBPipeline;
    qryBillRpt: TUniQuery;
    dsBillRpt: TUniDataSource;
    btnAddMasterBill: TdxBarButton;
    dxBarButton7: TdxBarButton;
    btnEditMasterBill: TdxBarButton;
    btnSubBill: TdxBarButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    stySubBill: TcxStyle;
    qrySubBill: TUniQuery;
    dsSubBill: TUniDataSource;
    tbtnRefresh: TdxBarButton;
    styDefault: TcxStyle;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
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
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppRegion1: TppRegion;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText4: TppDBText;
    ppDBText16: TppDBText;
    ppRegion2: TppRegion;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText17: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    raCodeModule1: TraCodeModule;
    qryTotalBill: TUniQuery;
    popAuthorise: TdxBarPopupMenu;
    btnAuthorise: TdxBarButton;
    btnDispatched: TdxBarButton;
    btnChangePayDate: TdxBarButton;
    dxBarButton1: TdxBarButton;
    btnExportToExcel: TdxBarButton;
    OpenDialog: TOpenDialog;
    btnViewBill: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    dxBarButton5: TdxBarButton;
    btnTotals: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxCustomContainerReportLink;
    barbtnRemoveDiscount: TdxBarButton;
    procBillDiscReverse: TUniStoredProc;
    cxbarPrintAll: TcxBarEditItem;
    dxBarEdit1: TdxBarEdit;
    tbtnCalculateInterest: TdxBarButton;
    UniStoredProc1: TUniStoredProc;
    tbtnClearAll: TdxBarButton;
    ppDBMemo1: TppDBMemo;
    bbtnCreditNote: TdxBarButton;
    dxbtnSpellCheck: TdxBarButton;
    pagBills: TcxPageControl;
    tabBills: TcxTabSheet;
    dbgrBills: TcxGrid;
    tvBills: TcxGridDBTableView;
    tvBillsNSUBBILL: TcxGridDBColumn;
    tvBillsREFNO: TcxGridDBColumn;
    tvBillsTOTAL: TcxGridDBColumn;
    tvBillsDISPATCHED: TcxGridDBColumn;
    tvBillsGENERATED: TcxGridDBColumn;
    tvBillsOWING: TcxGridDBColumn;
    tvBillsFILEID: TcxGridDBColumn;
    tvBillsTITLE: TcxGridDBColumn;
    tvBillsFEES: TcxGridDBColumn;
    tvBillsDISB: TcxGridDBColumn;
    tvBillsANTD: TcxGridDBColumn;
    tvBillsSUND: TcxGridDBColumn;
    tvBillsUPCRED: TcxGridDBColumn;
    tvBillsTAX: TcxGridDBColumn;
    tvBillsTRUST: TcxGridDBColumn;
    tvBillsFEES_PAID: TcxGridDBColumn;
    tvBillsDISB_PAID: TcxGridDBColumn;
    tvBillsANTD_PAID: TcxGridDBColumn;
    tvBillsSUND_PAID: TcxGridDBColumn;
    tvBillsUPCRED_PAID: TcxGridDBColumn;
    tvBillsDATE_LAST_RECPT: TcxGridDBColumn;
    tvBillsBILL_TO: TcxGridDBColumn;
    tvBillsAUTHORISED: TcxGridDBColumn;
    tvBillsNMEMO: TcxGridDBColumn;
    tvBillsSPLIT_BILL: TcxGridDBColumn;
    tvBillsMASTER_DESCR: TcxGridDBColumn;
    tvBillsAUTHOR: TcxGridDBColumn;
    tvBillsPARTNER: TcxGridDBColumn;
    tvBillsEXPPAYMENT: TcxGridDBColumn;
    tvBillsNMATTER: TcxGridDBColumn;
    tvBillsINV_NOTE: TcxGridDBColumn;
    tvBillsMOD_BY: TcxGridDBColumn;
    tvBillsCREATEDBY: TcxGridDBColumn;
    tvBillsSPELL_CHK_DONE: TcxGridDBColumn;
    tvBillsORIGINAL_FEES: TcxGridDBColumn;
    tvBillsVARIANCE: TcxGridDBColumn;
    tvBillsDIFF: TcxGridDBColumn;
    dbgrBillsDBTableView1: TcxGridDBTableView;
    dbgrBillsDBTableView1DBColumn2: TcxGridDBColumn;
    dbgrBillsDBTableView1DBColumn1: TcxGridDBColumn;
    dbgrBillsDBTableView1DBColumn3: TcxGridDBColumn;
    tvSubBills: TcxGridDBTableView;
    tvSubBillsDEBTOR_NAME: TcxGridDBColumn;
    tvSubBillsTOTAL: TcxGridDBColumn;
    tvSubBillsOWING: TcxGridDBColumn;
    tvSubBillsFEES: TcxGridDBColumn;
    tvSubBillsDISB: TcxGridDBColumn;
    tvSubBillsANTD: TcxGridDBColumn;
    tvSubBillsSUND: TcxGridDBColumn;
    tvSubBillsUPCRED: TcxGridDBColumn;
    tvSubBillsTAX: TcxGridDBColumn;
    tvSubBillsNSUBBILL_ID: TcxGridDBColumn;
    dbgrBillsLevel1: TcxGridLevel;
    dbgrBillsLevel2: TcxGridLevel;
    tabTotals: TcxTabSheet;
    tabFilter: TcxTabSheet;
    nlFees: TNumberLabel;
    nlDisbPaid: TNumberLabel;
    nlOwing: TNumberLabel;
    nlFeesPaid: TNumberLabel;
    nlAntdPaid: TNumberLabel;
    nlAntd: TNumberLabel;
    nlDisb: TNumberLabel;
    nlBalance: TNumberLabel;
    nlTrust: TNumberLabel;
    nlTotal: TNumberLabel;
    nlupcred_paid: TNumberLabel;
    nlUpCred: TNumberLabel;
    nlSundPaid: TNumberLabel;
    nlSund: TNumberLabel;
    nlTaxPaid: TNumberLabel;
    nlTax: TNumberLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label28: TLabel;
    Label23: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label20: TLabel;
    edRefnoFrom: TEdit;
    dtpDateTo: TDateTimePicker;
    dtpDateFrom: TDateTimePicker;
    rgAuthorised: TRadioGroup;
    neSearchRefresh: TNumberEdit;
    edRefnoTo: TEdit;
    dcThisWeek: TDateChangeButton;
    dcThisMonth: TDateChangeButton;
    dcLastYear: TDateChangeButton;
    dcYesterday: TDateChangeButton;
    dcYearToDate: TDateChangeButton;
    dcToday: TDateChangeButton;
    rgDispatched: TRadioGroup;
    tbMasterBill: TEdit;
    tbFileID: TEdit;
    tbClientName: TEdit;
    cxGroupBox1: TcxGroupBox;
    chkShowReducedBills: TcxCheckBox;
    cbEmployees: TComboBox;
    tbMatterSearch: TcxTextEdit;
    tbAmountOwingFrom: TEdit;
    tbAmountFrom: TEdit;
    rgSearchBy: TcxRadioGroup;
    tbBilledName: TEdit;
    tbAmountTo: TEdit;
    tbAmountOwingTo: TEdit;
    dcLastWeek: TDateChangeButton;
    Label5: TLabel;
    lblPartner: TLabel;
    Label27: TLabel;
    lblAuthor: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label21: TLabel;
    Label18: TLabel;
    Label10: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    lblAmountFrom: TLabel;
    chkDateFrom: TCheckBox;
    cbPartner: TComboBox;
    cbAuthor: TComboBox;
    dcLastMonth: TDateChangeButton;
    chkExcludeReversals: TcxCheckBox;
    chkDateTo: TCheckBox;
    lblDateTo: TLabel;
    lblDateFrom: TLabel;
    lblAuthorName: TLabel;
    btnClearAll: TBitBtn;
    Label3: TLabel;
    lblPartnerName: TLabel;
    tvBillsColumn1: TcxGridDBColumn;
    tvBillsCONTROLLER: TcxGridDBColumn;
    lblController: TLabel;
    cbController: TcxLookupComboBox;
    qryControllers: TUniQuery;
    dsControllers: TUniDataSource;
    tvBillsEMAIL: TcxGridDBColumn;
    dxBarBtnEmail: TdxBarButton;
    tvBillsPATH: TcxGridDBColumn;
    tvBillsNBILL_TO: TcxGridDBColumn;
    qryEmailTemplate: TUniQuery;
    popEmailBills: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    tvBillsIS_DRAFT: TcxGridDBColumn;
    tvBillsSTATUS: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cbAuthorClick(Sender: TObject);
    procedure pagBillsChange(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure qryBillsAfterScroll(DataSet: TDataSet);
    procedure cbPartnerClick(Sender: TObject);
    procedure tbtnPostClick(Sender: TObject);
    procedure tbtnOpenClick(Sender: TObject);
    procedure mnuFileAutoReceiptClick(Sender: TObject);
    procedure mnuFileReverseClick(Sender: TObject);
    procedure mnuFileOpenClick(Sender: TObject);
    procedure tbtnAutoReceiptClick(Sender: TObject);
    procedure tbtnMergeClick(Sender: TObject);
    procedure dbgrBillsDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgSearchByClick(Sender: TObject);
    procedure tbtnReverseClick(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryBillsCalcFields(DataSet: TDataSet);
    procedure popPrintReportClick(Sender: TObject);
    procedure popMergeCurrentClick(Sender: TObject);
    procedure popMergeSelectedClick(Sender: TObject);
    procedure popMergeAllClick(Sender: TObject);
    procedure popPrintCurrentClick(Sender: TObject);
    procedure popPrintSelectedClick(Sender: TObject);
    procedure popPrintAllClick(Sender: TObject);
    procedure popPostCurrentClick(Sender: TObject);
    procedure popPostSelectedClick(Sender: TObject);
    procedure popPostAllClick(Sender: TObject);
    procedure rgDispatchedClick(Sender: TObject);
    procedure tbMatterSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmrSearchTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tbMatterSearchKeyPress(Sender: TObject; var Key: Char);
    procedure popDeleteCurrentClick(Sender: TObject);
    procedure popDeleteSelectedClick(Sender: TObject);
    procedure popDeleteAllClick(Sender: TObject);
    procedure qryBillsAfterOpen(DataSet: TDataSet);
    procedure ToolButton2Click(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
	procedure btnDebtorTaskClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure tbnOpenMatterClick(Sender: TObject);
    procedure neSearchRefreshExit(Sender: TObject);
    procedure edRefnoToEnter(Sender: TObject);
    procedure edRefnoFromKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure rptBillsBeforePrint(Sender: TObject);
    procedure btnAddMasterBillClick(Sender: TObject);
    procedure btnSubBillClick(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tvBillsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure tvBillsDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure btnAuthoriseClick(Sender: TObject);
    procedure popAuthorisePopup(Sender: TObject);
    procedure btnDispatchedClick(Sender: TObject);
    procedure btnChangePayDateClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btnExportToExcelClick(Sender: TObject);
    procedure btnViewBillClick(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure tvBillsStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnTotalsClick(Sender: TObject);
    procedure popPrintPopup(Sender: TObject);
    procedure barbtnRemoveDiscountClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tbtnCalculateInterestClick(Sender: TObject);
    procedure bbtnCreditNoteClick(Sender: TObject);
    procedure dxbtnSpellCheckClick(Sender: TObject);
    procedure dxBarBtnEmailClick(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
  private
    { Private declarations }
    FNmemoFrom, FNmemoTo: integer;
    sSQL, sRPTSQL: string;
    FOrderBy: string;

    FAttachDoc: Boolean;
    FRecipientsList: TStringList;
    FAttachFileName: TStringList;
    FFileID: string;
    FBillSubject: string;
    FEmailTemplate: ansistring;
    
    procedure ShowTotal;
    procedure GetTotals;
    function GetBillTotal: Currency;
    function NumberOfBills: Integer;
    function WhereClause(Passive: Boolean = False): string;
    function MakeTitle: string;
    procedure Delete(Selection: TSelection);
    procedure DeleteDraft(NMemo: integer);
    function GetBillOwing: Currency;

    procedure LoadColumnData();
    procedure SaveColumnData();

    procedure SetButtons(bEnabled: boolean);

    function GetAntdOwing: Currency;
    function GetDisbOwing: Currency;
    function GetFeesOwing: Currency;
    function GetSundOwing: Currency;
    function GetCredsOwing: Currency;

    procedure ViewAttacheInvoice;
    procedure CreateInterestBill();
    procedure SendBills;
    procedure GetEmailTemplate(var AEmailTemplate: string);

    procedure CMRefreshBills(var Msg: TMessage); message CM_REFRESHBILLSGRID;
  public
    { Public declarations }
    procedure DisplayRange(iBillMin, iBillMax: integer);
    procedure Merge(Selection: TSelection; Print: Boolean = False);
    procedure Print(Selection: TSelection);
    procedure Post(Selection: TSelection);
    procedure MakeSQL(FromGrid: Boolean = False);
  end;

implementation

uses
  MiscFunc, BillNew, {InvoicePrint,} InvPost, Receipt, AxiomData, Process,
  DebtorTaskNew,Matters,MasterBill,SubBill, Desktop, DebtorNotes, BillGLPosting,
  billfeelist, cxGridDBDataDefinitions, uRwMapiUtils, uRwBoxes, uRwMapiMessage,
  uRwMAPIProps, uRwMAPIBase, uRwMAPILib, GenericSearch, Math;

{$R *.DFM}

const
  C_BILLSLIST           = 'BillsList';
  C_SUBBILLSLIST        = 'SubBillsList';
  C_COLUMNNAME          = 'ColumnName';
  C_COLUMNVISIBLE       = 'ColumnVisible';
  C_COLUMNSORTORDER     = 'ColumnSortOrder';
  C_COLUMNSORTDIRECTION = 'ColumnSortDirection';
  C_COLUMNGROUP         = 'ColumnGroup';
  C_COLUMNGROUPORDER    = 'ColumnGroupOrder';
  C_COLUMNTOTALTYPE     = 'ColumnTotalType';
  C_COLUMNWIDTH         = 'ColumnWidth';
  C_COLUMNPOSITION      = 'ColumnPosition';



procedure TfrmBills.FormShow(Sender: TObject);
begin
   Self.Caption := Self.Caption; // + ' - ' + dmAxiom.EntityName;

//   if pagBills.ActivePage = tabBills then
//      GetBills;
end;

procedure TfrmBills.ShowTotal;
begin
   if not qryTotal.EOF then
   begin
   //    sbarInfo.Panels.Items[0].Text := Format('%d Bill(s)', [NumberOfBills]);
   //    sbarInfo.Panels.Items[1].Text := Format('%.2n', [GetBillTotal]);
   end
   else
   begin
   //    sbarInfo.Panels.Items[0].Text := '';
   //    sbarInfo.Panels.Items[1].Text := '';
   end;

   nlFees.AsCurrency := qryTotal.FieldByName('FEES').AsCurrency;
   nlDisb.AsCurrency := qryTotal.FieldByName('DISB').AsCurrency;
   nlAntd.AsCurrency := qryTotal.FieldByName('ANTD').AsCurrency;
   nlSund.AsCurrency := qryTotal.FieldByName('SUND').AsCurrency;
   nlUpcred.AsCurrency := qryTotal.FieldByName('UPCRED').AsCurrency;
   nlTax.AsCurrency := qryTotal.FieldByName('TAX').AsCurrency;
   nlTotal.AsCurrency := qryTotal.FieldByName('FEES').AsCurrency + qryTotal.FieldByName('DISB').AsCurrency + qryTotal.FieldByName('ANTD').AsCurrency + qryTotal.FieldByName('SUND').AsCurrency + qryTotal.FieldByName('UPCRED').AsCurrency + qryTotal.FieldByName('TAX').AsCurrency;
   nlTrust.AsCurrency := qryTotal.FieldByName('TRUST').AsCurrency;
   nlBalance.AsCurrency := nlTotal.AsCurrency - qryTotal.FieldByName('TRUST').AsCurrency;
   nlFeesPaid.AsCurrency := qryTotal.FieldByName('FEES_PAID').AsCurrency + qryTotal.FieldByName('FEES_WOFF').AsCurrency;
   nlDisbPaid.AsCurrency := qryTotal.FieldByName('DISB_PAID').AsCurrency + qryTotal.FieldByName('DISB_WOFF').AsCurrency;
   nlAntdPaid.AsCurrency := qryTotal.FieldByName('ANTD_PAID').AsCurrency + qryTotal.FieldByName('ANTD_WOFF').AsCurrency;
   nlUpcred_Paid.AsCurrency := qryTotal.FieldByName('UPCRED_PAID').AsCurrency + qryTotal.FieldByName('UPCRED_WOFF').AsCurrency;
   nlSundPaid.AsCurrency := qryTotal.FieldByName('SUND_PAID').AsCurrency + qryTotal.FieldByName('SUND_WOFF').AsCurrency;
   nlTaxPaid.AsCurrency := qryTotal.FieldByName('TAX_PAID').AsCurrency + qryTotal.FieldByName('TAX_WOFF').AsCurrency;
   nlOwing.AsCurrency := nlBalance.AsCurrency - qryTotal.FieldByName('FEES_PAID').AsCurrency -
                        qryTotal.FieldByName('DISB_PAID').AsCurrency - qryTotal.FieldByName('ANTD_PAID').AsCurrency -
                        qryTotal.FieldByName('SUND_PAID').AsCurrency - qryTotal.FieldByName('TAX_PAID').AsCurrency -
                        qryTotal.FieldByName('UPCRED_PAID').AsCurrency - qryTotal.FieldByName('FEES_WOFF').AsCurrency -
                        qryTotal.FieldByName('DISB_WOFF').AsCurrency - qryTotal.FieldByName('ANTD_WOFF').AsCurrency -
                        qryTotal.FieldByName('SUND_WOFF').AsCurrency - qryTotal.FieldByName('TAX_WOFF').AsCurrency -
                        qryTotal.FieldByName('UPCRED_WOFF').AsCurrency ;
end;

procedure TfrmBills.cbAuthorClick(Sender: TObject);
begin
  lblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'NAME');
end;

function TfrmBills.WhereClause(Passive: Boolean = False): string;
var
  sSQLWhere : string;
  sAND : string;
begin
  // Build the SQL Filter query
  if not(Passive) then
  begin
    qryBills.Active := False;
    qryTotal.Active := False;
  end;
  sAND := ' AND ';
  sSQLWhere := '';
  if trim(tbMatterSearch.text) <> '' then
    sSQLWhere := sSQLWhere + sAND + 'NMEMO.FILEID LIKE ' + QuotedStr(tbMatterSearch.Text + '%');
  if cbAuthor.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'MATTER.AUTHOR = ''' + cbAuthor.Text + '''';
  if cbPartner.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'MATTER.PARTNER = ''' + cbPartner.Text + '''';
  if trim(edRefnoFrom.Text) <> '' then
    sSQLWhere := sSQLWhere + sAND + 'NMEMO.REFNO >= ''' + edRefnoFrom.Text + '''';
  if trim(edRefnoTo.Text) <> '' then
    sSQLWhere := sSQLWhere + sAND + 'NMEMO.REFNO <= ''' + edRefnoTo.Text + '''';
  if trim(tbClientName.Text) <> '' then
    sSQLWhere := sSQLWhere + sAND + 'UPPER(MATTER.TITLE) LIKE ' + QuotedStr('%' + UpperCase(tbClientName.Text) + '%');
  if trim(tbBilledName.Text) <> '' then
    sSQLWhere := sSQLWhere + sAND + 'UPPER(NMEMO.BILL_TO) LIKE ' + QuotedStr('%' + UpperCase(tbBilledName.Text) + '%');
  if trim(tbFileID.Text) <> '' then
    sSQLWhere := sSQLWhere + sAND + 'NMEMO.FILEID LIKE ' + QuotedStr(tbFileID.Text + '%');
  if trim(tbAmountFrom.Text) <> '' then
    sSQLWhere := sSQLWhere + sAND + 'NMEMO.FEES >= ' + tbAmountFrom.Text;
  if trim(tbAmountTo.Text) <> '' then
    sSQLWhere := sSQLWhere + sAND + 'NMEMO.FEES <= ' + tbAmountTo.Text;
  if trim(tbAmountOwingFrom.Text) <> '' then
     sSQLWhere := sSQLWhere + sAND + 'NMEMO.OWING >= ' + tbAmountOwingFrom.Text;
//    sSQLWhere := sSQLWhere + sAND + '(NMEMO.FEES + NMEMO.DISB + NMEMO.ANTD + NMEMO.SUND + NMEMO.TAX - NMEMO.FEES_PAID - NMEMO.DISB_PAID - NMEMO.ANTD_PAID - NMEMO.SUND_PAID - NMEMO.TAX_PAID) >= ' + tbAmountOwingFrom.Text;
  if trim(tbAmountOwingTo.Text) <> '' then
     sSQLWhere := sSQLWhere + sAND + 'NMEMO.OWING <= ' + tbAmountOwingTo.Text;
  if trim(tbMasterBill.Text) <> '' then
     sSQLWhere := sSQLWhere + sAND + 'MASTERBILLS.DESCR = '''  + tbMasterBill.Text + '''';
  //    sSQLWhere := sSQLWhere + sAND + '(NMEMO.FEES + NMEMO.DISB + NMEMO.ANTD + NMEMO.SUND + NMEMO.TAX - NMEMO.FEES_PAID - NMEMO.DISB_PAID - NMEMO.ANTD_PAID - NMEMO.SUND_PAID - NMEMO.TAX_PAID) <= ' + tbAmountOwingTo.Text;
  if chkExcludeReversals.Checked then
     sSQLWhere := sSQLWhere + sAND + 'NMEMO.RV_NMEMO is null ';
  if cbEmployees.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'NMEMO.CREATEDBY in (SELECT USER_NAME FROM EMPLOYEE WHERE CODE = '''+cbEmployees.Text+ ''')' ;

  case rgDispatched.ItemIndex of
    1: // Undispatched only
      sSQLWhere := sSQLWhere + sAND + 'NMEMO.DISPATCHED is null';
    2: // Dispatched only
      sSQLWhere := sSQLWhere + sAND + 'NMEMO.DISPATCHED is not null';
    3: // Owing only Outstanding
      sSQLWhere := sSQLWhere + sAND + 'NMEMO.OWING > 0 and RV_NMEMO is NULL and IS_DRAFT = ''N'' ';
//      sSQLWhere := sSQLWhere + sAND + '(NMEMO.FEES + NMEMO.DISB + NMEMO.ANTD + NMEMO.SUND + NMEMO.TAX - NMEMO.FEES_PAID - NMEMO.DISB_PAID - NMEMO.ANTD_PAID - NMEMO.SUND_PAID - NMEMO.TAX_PAID) > 0';
    4:  // Assessed only
      sSQLWhere := sSQLWhere + sAND + 'NMEMO.ASSESSED_BILL = ''Y'' ';
    5: // credit Notes
      sSQLWhere := sSQLWhere + sAND + 'NMEMO.RV_TYPE = ''X'' ';
  end;

  case rgAuthorised.ItemIndex of
    0: // ALL
      sSQLWhere := sSQLWhere + sAND + '((NMEMO.AUTHORISED = ''Y'') or (NMEMO.AUTHORISED = ''N'')) ';
    1: // AUTHORISED only
      sSQLWhere := sSQLWhere + sAND + 'NMEMO.AUTHORISED = ''Y'' ';
    2: // NOT AUTHORISED only
      sSQLWhere := sSQLWhere + sAND + 'NMEMO.AUTHORISED = ''N''';
  end;

  if FNmemoFrom <> 0 then
    sSQLWhere := sSQLWhere + sAND + 'NMEMO.NMEMO >= ' + IntToStr(FNmemoFrom);
  if FNmemoTo <> 0 then
    sSQLWhere := sSQLWhere + sAND + 'NMEMO.NMEMO <= ' + IntToStr(FNmemoTo);

  if (chkShowReducedBills.Checked = True) then
     sSQLWhere := sSQLWhere + sAND + 'NMEMO.ORIGINAL_FEES > NMEMO.FEES';

  if cbController.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'MATTER.CONTROLLER = ''' + cbController.EditValue + '''';

  WhereClause := sSQLWhere;
end;

function TfrmBills.MakeTitle : string;
var
  sTitle : string;
  sComma : string;
begin
  // Build the title
  sComma := ', ';
  sTitle := '';
  if chkDateFrom.Checked or chkDateTo.Checked then
    if dtpDateFrom.Date <> dtpDateTo.Date then
      sTitle := 'From ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date)
    else
      sTitle := 'For ' + FormatDateTime('ddddd', dtpDateTo.Date);
  if cbAuthor.Text <> '' then
    sTitle := sTitle + sComma + 'Author = ' + cbAuthor.Text;
  if cbPartner.Text <> '' then
    sTitle := sTitle + sComma + 'Partner = ' + cbPartner.Text;
  if edRefnoFrom.Text <> '' then
    sTitle := sTitle + sComma + 'Bill number  >= ' + edRefnoFrom.Text;
  if edRefnoTo.Text <> '' then
    sTitle := sTitle + sComma + 'Bill number <= ' + edRefnoTo.Text;
  if tbAmountFrom.Text <> '' then
    sTitle := sTitle + sComma + 'Fees >= ' + tbAmountFrom.Text;
  if tbAmountTo.Text <> '' then
    sTitle := sTitle + sComma + 'Fees <= ' + tbAmountTo.Text;
  case rgDispatched.ItemIndex of
    1: // Undispatched only
      sTitle := sTitle + sComma + 'NOT Dispatched';
    2: // Dispatched only
      sTitle := sTitle + sComma + 'Dispatched';
    3: // Outstanding
      sTitle := sTitle + sComma + 'Outstanding';
    4: // assessed
      sTitle := sTitle + sComma + 'Assessed';
  end;
  MakeTitle := sTitle;
end;

procedure TfrmBills.MakeSQL(FromGrid: Boolean = False);
var
   sSubWhere,sWhere  : String;
begin
  with qryBills do
  begin

    sSubWhere := '';
    if chkDateFrom.Checked then
    begin
      sSubWhere := sSubWhere + '  AND NMEMO.' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom';
    end;
    if chkDateTo.Checked then
    begin
      sSubWhere := sSubWhere + '  AND NMEMO.' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ';
    end;

    sWhere := WhereClause;

    SQL.Clear;
    sSql :=  'SELECT NMEMO.REFNO as SORT_REFNO,0 as nsubbill,NMEMO.NMASTER,NMEMO.BILL_TO,';
    sSQL := sSql + 'NMEMO.DISPATCHED, NMEMO.GENERATED, NMEMO.NMEMO, NMEMO.REFNO, NMEMO.FEES,';
    sSQL := sSql + 'NMEMO.DISB, NMEMO.ANTD, NMEMO.SUND, NMEMO.TAX, NMEMO.TRUST, ';
    sSQL := sSql + 'NMEMO.FEES_PAID, NMEMO.DISB_PAID, NMEMO.ANTD_PAID, NMEMO.SUND_PAID,';
    sSQL := sSql + 'NMEMO.TAX_PAID, NMEMO.RV_NMEMO, NMEMO.RV_TYPE, ';
    sSQL := sSql + 'NMEMO.TOTAL, NMEMO.OWING, NMEMO.FEES_WOFF, NMEMO.DISB_WOFF, ';
    sSQL := sSql + 'NMEMO.ANTD_WOFF, NMEMO.SUND_WOFF, NMEMO.UPCRED_WOFF, ';
    sSQL := sSql + 'UPCRED, UPCRED_PAID, Matter.TITLE, NMEMO.FILEID,MASTERBILLS.DESCR as MASTER_DESCR,';
    sSQL := sSql + 'NMEMO.SPLIT_BILL, Matter.NMATTER, MATTER.AUTHOR, MATTER.PARTNER, ';
    sSQL := sSQL + 'NMEMO.TAKE_ON, EXPPAYMENT, NMEMO.INV_NOTE, NMEMO.AUTHORISED, ';
    sSQL := sSQL + 'NMEMO.INVOICE_COPY, NMEMO.INVOICE_COPY_EXT, NMEMO.PATH, ';
    sSQL := sSQL + 'NMEMO.MODBY, NMEMO.CREATEDBY, NMEMO.DISCOUNT, NMEMO.SPELL_CHK_DONE, ';
    sSQL := sSQL + 'NMEMO.Original_fees, case when (NVL(NMEMO.Original_Fees,0) > 0) then((NMEMO.Fees - NMEMO.Original_Fees)/NMEMO.Original_Fees)*100  else 0 end as Variance , ';
    sSQL := sSQL + '(NMEMO.Fees - NVL(NMEMO.Original_Fees,0)) Diff, MATTER.SHORTDESCR, ';
    sSQL := sSQL + ' MATTER.CONTROLLER, PHONEBOOK.EMAIL, NMEMO.NBILL_TO, IS_DRAFT, ';
    sSQL := sSQL + 'NMEMO.AUTHORISED_BY, NMEMO.AUTHORISED_DATE, NMEMO.DISPATCHED_BY, ';

    ssql := sSql + ' CASE  ';
    { WHEN NMEMO.REJECTED = ''Y'' then ''Rejected''';
    ssql := sSql + ' WHEN NMEMO.REJECTED = ''N'' and NMEMO.PRIVATE = ''Y'' then ''Private''';  }
    ssql := sSql + ' WHEN NMEMO.PRIVATE = ''N'' and NMEMO.IS_DRAFT = ''Y'' then ''Draft''';
    ssql := sSql + ' WHEN NMEMO.PRIVATE = ''N'' and NMEMO.REFNO = ''AUTH'' then ''Authorised''';
    ssql := sSql + ' WHEN NMEMO.IS_DRAFT = ''N'' then ''Posted'' ';
    ssql := sSql + ' END as STATUS ';

 //   ssql := sSql + ' ,ENTITY.NAME as ENTITY_NAME ';
    sSQL := sSql + 'FROM NMEMO, MATTER, MASTERBILLS, PHONEBOOK ';
    sSQL := sSql + 'WHERE NMEMO.NMATTER  = Matter.NMATTER ';
    sSQL := sSql + 'AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ';
    sSQL := sSQL + 'AND NMEMO.NBILL_TO = PHONEBOOK.NNAME ';
    sSQL := sSql + '  AND NMEMO.BANK_ACCT = ''' + dmAxiom.Entity + '''';
    sSQL := sSql + sSubWhere + sWhere;

    SQL.Add(sSQL);

    if FromGrid then
      SQL.Add(FOrderBy)
    else
      SQL.Add(' ORDER BY SORT_REFNO');

    if chkDateFrom.Checked then
    begin
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    sRPTSQL := sSQL;
    Open;
  end;

  with qrySubBill do
  begin
    close;
    SQL.Clear;
    sSQL :=  'SELECT SUBBILLS.NSUBBILL_ID,NMEMO.REFNO as SORT_REFNO,SUBBILLS.NSUBBILL,NMEMO.NMASTER,SUBBILLS.DEBTOR_NAME,NMEMO.DISPATCHED, NMEMO.GENERATED,';
    sSQL := sSql +' NMEMO.NMEMO, ''(subbill)'' as REFNO, SUBBILLS.FEES, SUBBILLS.DISB, SUBBILLS.ANTD, SUBBILLS.SUND, SUBBILLS.TAX, SUBBILLS.TRUST, ';
    sSQL := sSql + 'SUBBILLS.FEES_PAID, SUBBILLS.DISB_PAID, SUBBILLS.ANTD_PAID, SUBBILLS.SUND_PAID, SUBBILLS.TAX_PAID, NMEMO.RV_NMEMO, NMEMO.RV_TYPE, ';
    sSQL := sSql + 'SUBBILLS.TOTAL, SUBBILLS.OWING, SUBBILLS.FEES_WOFF, SUBBILLS.DISB_WOFF, SUBBILLS.ANTD_WOFF, SUBBILLS.SUND_WOFF, SUBBILLS.UPCRED_WOFF, ';
    sSQL := sSql + 'SUBBILLS.UPCRED, SUBBILLS.UPCRED_PAID, Matter.TITLE, NMEMO.FILEID,MASTERBILLS.DESCR as MASTER_DESCR,';
    sSQL := sSql + 'NMEMO.SPLIT_BILL, Matter.NMATTER, MATTER.AUTHOR, MATTER.PARTNER, NMEMO.TAKE_ON, NULL, ';
    sSQL := sSQL + 'subbills.INVOICE_COPY, subbills.INVOICE_COPY_EXT, subbills.PATH, MATTER.SHORTDESCR, MATTER.CONTROLLER ';
    sSQL := sSql + 'FROM NMEMO, MATTER,MASTERBILLS,subbills  ';
    sSQL := sSql + 'WHERE NMEMO.NMATTER  = Matter.NMATTER ';
    sSQL := sSql + 'AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ';
    sSQL := sSql + 'AND NMEMO.NMEMO = SUBBILLS.NMEMO  ';
    sSQL := sSql + '  AND NMEMO.BANK_ACCT = ''' + dmAxiom.Entity + '''';
    sSQL := sSql + sSubWhere + sWhere;

    SQL.Add(sSQL);
    SQL.Add(' ORDER BY NMEMO');

    if chkDateFrom.Checked then
    begin
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;

    Open;
  end;
//  GetTotals;
end;

function TfrmBills.NumberOfBills: Integer;
begin
   if dmAxiom.bShutDown = False then
   begin
     with qryBillsCount do
     begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(*) AS BILLCOUNT');
        SQL.Add('FROM NMEMO, Matter,MASTERBILLS');
        SQL.Add('WHERE NMEMO.NMATTER = Matter.NMATTER AND NMEMO.BANK_ACCT = ' + quotedStr(dmAxiom.Entity) );
//        SQL.Add(' AND NMEMO.' + rgSearchBy.Items.Strings[rgSearchBy.ItemIndex] + ' >= :P_DateFrom AND NMEMO.' + rgSearchBy.Items.Strings[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
        SQL.Add(' AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
        SQL.Add(WhereClause(True));
        if chkDateFrom.Checked then
      begin
        SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
        ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
      end;
      if chkDateTo.Checked then
      begin
        SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
        ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
      end;
        Open;
        Result := FieldByName('BILLCOUNT').AsInteger;
        Close;
     end;
   end;
end;

function TfrmBills.GetBillTotal: Currency;
begin
  with qryTotalBill do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(TOTAL) as Total');
    SQL.Add('FROM NMEMO, MATTER,MASTERBILLS ');
    SQL.Add('WHERE NMEMO.NMATTER = Matter.NMATTER AND NMEMO.BANK_ACCT = ' + QuotedStr(dmAxiom.Entity) );
//    SQL.Add(' AND NMEMO.' + rgSearchBy.Items.Strings[rgSearchBy.ItemIndex] + ' >= :P_DateFrom AND NMEMO.' + rgSearchBy.Items.Strings[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
    SQL.Add(' AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
    SQL.Add(WhereClause(True));
    if chkDateFrom.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    Open;
    Result := FieldByName('TOTAL').AsCurrency;
    Close;
  end;
end;

procedure TfrmBills.GetTotals;
begin
  with qryTotal do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(FEES) as FEES, SUM(DISB) AS DISB, SUM(ANTD) AS ANTD, SUM(SUND) AS SUND,SUM(UPCRED) AS UPCRED, SUM(TAX) AS TAX');
    SQL.Add(',      SUM(TRUST) AS TRUST, SUM(FEES_PAID) AS FEES_PAID, SUM(DISB_PAID) AS DISB_PAID, SUM(ANTD_PAID) AS ANTD_PAID, SUM(SUND_PAID) AS SUND_PAID, SUM(TAX_PAID) AS TAX_PAID, SUM(UPCRED_PAID) as UPCRED_PAID');
    SQL.Add(',      SUM(FEES_WOFF) AS FEES_WOFF, SUM(DISB_WOFF) AS DISB_WOFF, SUM(ANTD_WOFF) AS ANTD_WOFF, SUM(SUND_WOFF) AS SUND_WOFF, SUM(TAX_WOFF) AS TAX_WOFF, SUM(UPCRED_WOFF) as UPCRED_WOFF');
    SQL.Add(',      COUNT(NMEMO.NMEMO) AS CNT, SUM(FEESTAX_PAID) AS FEESTAX_PAID');
    SQL.Add('FROM NMEMO, MATTER, MASTERBILLS ');
    SQL.Add('WHERE NMEMO.NMATTER  = MATTER.NMATTER ');
    SQL.Add('AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
    SQL.Add('AND NMEMO.BANK_ACCT = ''' + dmAxiom.Entity + '''');
    if chkDateFrom.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    SQL.Add(WhereClause);
    Open;
  end;
  ShowTotal;
end;

procedure TfrmBills.pagBillsChange(Sender: TObject);
begin
   barContMatterSearch.Visible := ivNever;
   lblMatterSearch.Visible := ivNever;
   tbtnClearAll.Enabled := False;
   FOrderBy := ' ORDER BY SORT_REFNO';
   if pagBills.ActivePage = tabBills then
   begin
      tbMatterSearch.Text := '';
      tmrSearch.Enabled := False;
      MakeSQL;
      barContMatterSearch.Visible := ivAlways;
      lblMatterSearch.Visible := ivAlways;
      btnDispatched.Enabled := dmAxiom.Security.Bill.ChangeDispatchedDate;
      cxbarPrintAll.Enabled := True;
      tbtnClearAll.Enabled := False;
      dxbtnSpellCheck.Enabled := (rgDispatched.ItemIndex = 1);
//      tvBillsSelect.Visible := (rgDispatched.ItemIndex = 1);
//      cbPrintAll.Enabled := True;
//    tbMatterSearch.SetFocus;
   end
   else if pagBills.ActivePage = tabTotals then
   begin
      GetTotals;
      SetButtons(False);
//      cbPrintAll.Enabled := False;
      cxbarPrintAll.Enabled := False;
      tbtnClearAll.Enabled := False;
      dxbtnSpellCheck.Enabled := False;
//      tvBillsSelect.Visible := False;
   end
   else if pagBills.ActivePage = tabFilter then
   begin
//      sbarInfo.Panels.Items[0].Text := '';
//      sbarInfo.Panels.Items[1].Text := '';
      SetButtons(False);
      cxbarPrintAll.Enabled := False;
      tbtnClearAll.Enabled := True;
      dxbtnSpellCheck.Enabled := False;
//      tvBillsSelect.Visible := False;
  end;
end;

procedure TfrmBills.btnClearAllClick(Sender: TObject);
begin
  edRefnoFrom.Text := '';
  edRefnoTo.Text := '';
  tbAmountFrom.Text := '';
  tbAmountTo.Text := '';
  cbAuthor.Text := '';
  lblAuthorName.Caption := '';
  cbPartner.Text := '';
  lblPartnerName.Caption := '';
  rgDispatched.ItemIndex := 0;
  FNmemoFrom := 0;
  FNmemoTo := 0;
  tbAmountOwingFrom.Text := '';
  tbAmountOwingTo.Text := '';
end;

procedure TfrmBills.qryBillsAfterScroll(DataSet: TDataSet);
begin
   if pagBills.ActivePageIndex = 0 then
      SetButtons(not qryBills.IsEmpty)
   else
      SetButtons(False);

   if (DataSet.FieldByName('IS_DRAFT').AsString = 'Y') and (dmAxiom.Security.Bill.Delete) then
      tbtnDelete.Enabled := True
   else
      tbtnDelete.Enabled := False;

   btnDispatched.Enabled := dmAxiom.Security.Bill.ChangeDispatchedDate;
   try
      btnAuthorise.Enabled := (qryBills.fieldByName('Authorised').AsString = 'N') and
                              ((qryBills.fieldByName('rv_type').AsString <> 'C') and
                              (qryBills.fieldByName('rv_type').AsString <> 'R'));
   except
      ;
   end;

   tbMatterSearch.ShowHint := dmAxiom.Security.Receipt.Create;
   if not qryBills.IsEmpty then
   begin
     btnSubBill.Enabled := qryBills.FieldByName('SPLIT_BILL').AsString = 'Y';

     if ((qryBills.FieldByName('RV_TYPE').AsString = 'R') or
        (qryBills.FieldByName('RV_TYPE').AsString = 'C') or
		  (qryBills.FieldByName('TAKE_ON').AsString = 'Y')) then
     begin
       tbtnReverse.Enabled := False;
       tbtnAutoReceipt.Enabled := False;
     end
     else
     if qryBills.FieldByName('DISPATCHED').IsNull then
     begin
       tbtnReverse.Enabled := False;
       tbtnAutoReceipt.Enabled := False;
     end
     else
     begin
       if (qryBills.FieldByName('RV_TYPE').AsString = 'X') then
          tbtnReverse.Enabled := (dmAxiom.Security.Bill.BillCreditNoteReversal)
       else if (qryBills.FieldByName('OWING').AsCurrency = qryBills.FieldByName('TOTAL').AsCurrency)  then
          tbtnReverse.Enabled := ((dmAxiom.Security.Bill.Reverse) AND (dmAxiom.Security.Bill.BillCreditNoteReversal))
       else
          tbtnReverse.Enabled := False;

       tbtnAutoReceipt.Enabled := ((qryBills.FieldByName('RV_TYPE').AsString = 'N') and (qryBills.FieldByName('OWING').AsFloat > 0.0)) and
                                   dmAxiom.Security.Receipt.Create;
     end;
   end;

   barbtnRemoveDiscount.Enabled := dmAxiom.Security.Bill.Discount.Remove and
                                   (qryBills.FieldByName('OWING').AsCurrency = qryBills.FieldByName('TOTAL').AsCurrency) AND
                                   (qryBills.FieldByName('DISCOUNT').AsCurrency <> 0);
   tbtnCalculateInterest.Enabled := dmAxiom.Security.Bill.Interest.Create and (qryBills.FieldByName('OWING').AsCurrency <> 0);
end;

procedure TfrmBills.cbPartnerClick(Sender: TObject);
begin
  lblPartnerName.Caption := TableString('EMPLOYEE', 'CODE', cbPartner.Text, 'NAME');
end;

procedure TfrmBills.tbtnPostClick(Sender: TObject);
begin
  Post(bsSelected);
end;

procedure TfrmBills.tbtnOpenClick(Sender: TObject);
begin
   with TfrmInvoice.Create(Self) do
   begin
      DisplayInvoice(qryBills.FieldByname('NMEMO').AsInteger, nil, True);
//      MakeSQL;
   end;
end;

procedure TfrmBills.DisplayRange(iBillMin, iBillMax: integer);
begin
  btnClearAll.Click;
  FNmemoFrom := iBillMin;
  FNmemoTo := iBillMax;
  dtpDateFrom.Date := Now;
  dtpDateTo.Date := Now;
  MakeSQL;
end;

procedure TfrmBills.mnuFileAutoReceiptClick(Sender: TObject);
begin
  tbtnAutoReceipt.Click;
end;

procedure TfrmBills.mnuFileReverseClick(Sender: TObject);
begin
  tbtnReverse.Click;
end;

procedure TfrmBills.mnuFileOpenClick(Sender: TObject);
begin
  tbtnOpen.Click;
end;

procedure TfrmBills.tbtnAutoReceiptClick(Sender: TObject);
{var
  iCtr: integer;
begin
  if tvBills.Controller.SelectedRowCount <= 1 then
    (FindOrCreateClassic(TfrmReceipt, 31) as TfrmReceipt).AutoReceipt(qryBills.FieldByName('NMEMO').AsInteger)
  else
  begin
    with tvBills.DataController.DataSource.DataSet do
      for iCtr := 0 to tvBills.Controller.SelectedRowCount - 1 do
      begin
        GotoBookmark(Pointer(tvBills.Controller.SelectedRows[iCtr]));
        (FindOrCreateClassic(TfrmReceipt, 31) as TfrmReceipt).AutoReceipt(qryBills.FieldByName('NMEMO').AsInteger)
      end;
  end;}
var
   I, iCtr, RecIdx, ColIdx: Integer;
   NMemoVal: Variant;
begin
   try
      if tvBills.Controller.SelectedRowCount <= 1 then
      begin
         if not qryBills.FieldByName('DISPATCHED').IsNull then
            (FindOrCreateClassic(TfrmReceipt, 31) as TfrmReceipt).AutoReceipt(qryBills.FieldByName('NMEMO').AsInteger)
      end else
      begin
         for I := 0 to tvBills.Controller.SelectedRecordCount - 1 do
         begin
            // RecordIndex provides the absolute index
            RecIdx := tvBills.Controller.SelectedRecords[I].RecordIndex;
            // Gets the column index of the Description field
            ColIdx := tvBills.DataController.GetItemByFieldName('NMEMO').Index;
            // Obtains the value of the required field
            NMemoVal := tvBills.DataController.Values[RecIdx, ColIdx];
            VarCast(NMemoVal, NMemoVal, varInteger);
            if not qryBills.FieldByName('DISPATCHED').IsNull then
               (FindOrCreateClassic(TfrmReceipt, 31) as TfrmReceipt).AutoReceipt(NMemoVal);
         end;
      end;
   finally
//      PostMessage(Handle, CM_REFRESHBILLSGRID, 0, 0);
   end;
end;

procedure TfrmBills.tbtnCalculateInterestClick(Sender: TObject);
begin
   CreateInterestBill();
end;

procedure TfrmBills.CreateInterestBill();
var
   iNMemo,
   lNClient,
   iCtr,
   I,
   ARowIndex,
   lNMemo,
   lNMatter: integer;
   tmpRefNo,
   lRefno,
   lFileID,
   lDRAFT_BILL_NO,
   lBPAY_REFERENCE: string;
   ALoop,
   bPost,
   bShowInvPost: boolean;
   cTax,
   cTaxFree,
   nlFees,
   nlFeesTax,
   cTotalTax: Currency;
   ARowInfo: TcxRowInfo;
begin
   if MsgAsk('This process will create interest bill on the outstanding amount.'+ chr(13)+ 'Continue?') = mrYes  then
   begin
      with tvBills.DataController do
      begin
         BeginUpdate;
         try
            for I := 0 to GetSelectedCount - 1 do
            begin
               ARowIndex := GetSelectedRowIndex(I);
               ARowInfo := GetRowInfo(ARowIndex);
               lNMatter := integer(Values[ARowInfo.RecordIndex, tvBillsNMATTER.Index]);
               lNMemo := integer(Values[ARowInfo.RecordIndex, tvBillsNMEMO.Index]);
               with dmAxiom.procBillCreate do
               begin
                  ParamByName('P_Entity').AsString := dmAxiom.Entity;
                  ParamByName('P_NMatter').AsInteger := lNMatter;
                  ParamByName('P_ADDFEES').AsInteger := 0;
                  ParamByName('P_ADDFEES').AsInteger := 0;
                  ParamByName('P_ADDDISB').AsInteger := 0;
                  ParamByName('P_ADDANTD').AsInteger := 0;
                  ParamByName('P_ADDSUND').AsInteger := 0;
                  ParamByName('P_ADDUPCRED').AsInteger := 0;
                  ParamByName('P_ADDFEESUNDRIES').AsInteger := 0;
                  if SystemString('DFLT_DISB_SUNDRY') <> '' then
                     ParamByName('P_ADDDISBSUNDRIES').AsInteger := 0;
                  Execute;
                  iNMemo := ParambyName('RESULT').AsInteger;

                  if PreassignBill() then
                  begin
                     lDRAFT_BILL_NO := NextRefno();
                     if SystemInteger('BPAY_CODE_DEFAULT') = 0 then
                        lBPAY_REFERENCE := CreateBPayReference(lDRAFT_BILL_NO);
                     SQL.Text := 'update nmemo set DRAFT_BILL_NO = :draft_bill_no, '+
                                 'BPAY_REFERENCE = :BPAY_REFERENCE '+
                                 'where nmemo = :nmemo';
                     ParamByName('nmemo').AsInteger := iNMemo;
                     ParamByName('draft_bill_no').AsString := lDRAFT_BILL_NO;
                     ParamByName('BPAY_REFERENCE').AsString := lBPAY_REFERENCE;
                     ExecSQL;
                  end;

                  lRefno := TableString('NMEMO','NMEMO', lNMemo, 'REFNO');
                  lNClient := StrToInt(MatterString(lNMatter, 'NCLIENT'));
                  lFileID := MatterString(lNMatter, 'FILEID');

                  if SystemFloat('ACCOUNT_INTEREST') > 0 then
                  begin
                     dmAxiom.uniInsight.StartTransaction;
                     try
                        with dmAxiom.qryTmp do
                        begin
                           {Close;
                           SQL.Text := 'select fees, feestax from nmemo where nmemo = :nmemo';
                           ParamByName('nmemo').AsInteger := lNMemo;
                           Open;
                           nlFees := FieldByName('Fees').AsCurrency;
                           nlFeesTax := FieldByName('Feestax').AsCurrency;
                           Close; }
                           nlFees := Currency(Values[ARowInfo.RecordIndex, tvBillsOWING.Index]);
                           if (nlFees > 0) then
                           begin
                              SQL.Text := 'insert into sundry (acct, created, billed, descr, nmatter,'+
                                          'nclient, units, nmemo, type, private, fileid, taxcode, amount,'+
                                          'tax, created_from_fee ) values (:acct, sysdate, :billed, :descr, :nmatter,'+
                                          ':nclient, 1, :nmemo, :type, ''N'', :fileid, ''GST'', :amount,'+
                                          ':tax, ''Y'' )';
                              ParamByName('acct').AsString := dmAxiom.entity;
                              ParamByName('billed').AsString := 'Y';
                              ParamByName('descr').AsString := 'Interest for bill '+lRefno;
                              ParamByName('nmatter').AsInteger := lNMatter;
                              ParamByName('nclient').AsInteger := lNClient;
                              ParamByName('nmemo').AsInteger := iNMemo;
                              ParamByName('type').AsString := 'INT';
                              ParamByName('fileid').AsString := lFileID;
                              ParamByName('amount').AsCurrency := ((nlFees + nlFeesTax) * (SystemFloat('ACCOUNT_INTEREST'))/100);
                              ParamByName('tax').AsCurrency := ((nlFees + nlFeesTax) * (SystemFloat('ACCOUNT_INTEREST'))/100) * 0.1;
                              ExecSQL;

                              SQL.Text := 'update nmemo set sund = :sund, sundtax = :sund_tax, '+
                                          'tax = :tax where nmemo = :nmemo';
                              ParamByName('nmemo').AsInteger := iNMemo;
                              ParamByName('sund').AsCurrency := ((nlFees + nlFeesTax) * (SystemFloat('ACCOUNT_INTEREST'))/100);;
                              ParamByName('sund_tax').AsCurrency := ((nlFees + nlFeesTax) * (SystemFloat('ACCOUNT_INTEREST'))/100) * 0.1;
                              ParamByName('tax').AsCurrency := ((nlFees + nlFeesTax) * (SystemFloat('ACCOUNT_INTEREST'))/100) * 0.1;
                              ExecSQL;
                           end;
                        end;
                     finally
                        with TfrmInvPost.Create(Self) do
                        begin
//                           bShowInvPost := (boolean(cxbarPrintAll.EditValue)) or
//                                             (SystemString('AUTO_PRINT_BILL')='N');
                           bShowInvPost := False;
                           DisplayInvoice(iNMemo, bShowInvPost, True);
                           btnPost.Click;
                        end;
                        if dmAxiom.uniInsight.InTransaction then
                           dmAxiom.uniInsight.Commit;
                        MsgInfo('Interest transaction created.');
                     end;
                  end;
               end;
            end;
         finally
            EndUpdate;
            MakeSQL;
         end;
      end;
   end;
end;

procedure TfrmBills.Merge(Selection: TSelection; Print: Boolean = False);
var
  iNMemo: Integer;
  iNumBills: Integer;
  frmProgress: TfrmProcess;
   I, iCtr, RecIdx, ColIdx: Integer;
   NMatterVal, NMemoVal, nSubBillVal: Variant;
begin
   frmProgress := nil;
   iNMemo := qryBills.FieldByName('NMEMO').AsInteger;

   case Selection of
      bsCurrent:
         begin
{
            nSubBillVal := -1;
            VarCast(nSubBillVal, nSubBillVal, varInteger);

//            if tvSubBills.IsDetail then
//            begin
               // RecordIndex provides the absolute index
               RecIdx := tvSubBills.Controller.FocusedRecordIndex;
               // Gets the column index of the Description field
               ColIdx := tvSubBills.DataController.GetItemByFieldName('NSUBBILL_ID').Index;
               // Obtains the value of the required field
               nSubBillVal := tvSubBills.DataController.Values[RecIdx, ColIdx];

               VarCast(nSubBillVal, nSubBillVal, varInteger);
//            end;
}
            InvoiceMerge(qryBills.FieldByName('NMEMO').AsInteger, qryBills.FieldByName('NMATTER').AsInteger, False, boolean(cxbarPrintAll.EditValue));
         end;
      bsSelected:
         begin
            // Merge the selected items
            for I := 0 to tvBills.Controller.SelectedRecordCount - 1 do
            begin
                // RecordIndex provides the absolute index
                RecIdx := tvBills.Controller.SelectedRecords[I].RecordIndex;
                // Gets the column index of the Description field
                ColIdx := tvBills.DataController.GetItemByFieldName('NMEMO').Index;
                // Obtains the value of the required field
                NMemoVal := tvBills.DataController.Values[RecIdx, ColIdx];
                // Gets the column index of the Description field
                ColIdx := tvBills.DataController.GetItemByFieldName('NMATTER').Index;
                NMatterVal := tvBills.DataController.Values[RecIdx, ColIdx];
                VarCast(NMemoVal, NMemoVal, varInteger);
                VarCast(NMatterVal, NMatterVal, varInteger);
                InvoiceMerge(NMemoVal, NMatterVal, False, boolean(cxbarPrintAll.EditValue));
              end;
         end;
      bsAll:
         begin
            // Merge all items
            iNumBills := NumberOfBills;
            try
               frmProgress := TfrmProcess.Create(Self, True);
               frmProgress.Show;
               frmProgress.SetProgress(0, 'Merging and printing bills...');
               with qryBills do
               begin
                  iCtr := 1;
                  First;
                  while not EOF do
                  begin
                     if frmProgress.SetProgress(iCtr/iNumBills, 'Merging and printing bills... Bill '+IntToStr(iCtr)+' of '+IntToStr(iNumBills)) then
                     begin
                        InvoiceMerge(FieldByName('NMEMO').AsInteger, qryBills.FieldByName('NMATTER').AsInteger, Print, boolean(cxbarPrintAll.EditValue));
                        Next;
                        Inc(iCtr);
                     end
                     else
                     begin
                        frmProgress.Free;
                        Break;
                     end;
                  end;
               end;
            except
               frmProgress.Free;
            end;
         end;
   end;
//   qryBills.Locate('NMEMO', iNMemo, []);
end;

procedure TfrmBills.tbtnMergeClick(Sender: TObject);
begin
  Merge(bsSelected);
end;

procedure TfrmBills.dbgrBillsDblClick(Sender: TObject);
begin
  tbtnOpen.Click;
end;

procedure TfrmBills.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SettingSaveStream(dmAxiom.UserID, C_BILLSLIST, tvBills );
   SettingSaveStream(dmAxiom.UserID, C_SUBBILLSLIST, tvSubBills );

//   SaveColumnData();
   SettingSave('BILLS', 'SEARCHREFRESH', neSearchRefresh.AsInteger);
   qryBills.Close;
   qryBillsCount.Close;
   qryTotal.Close;
   qryControllers.Close;

   RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmBills.rgSearchByClick(Sender: TObject);
begin
  lblDateFrom.Caption := NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' from';
  lblDateTo.Caption := NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' to';
end;

procedure TfrmBills.tbtnReverseClick(Sender: TObject);
var
   iRecordCount : integer;
   dTmp         : TDateTime;
   bOKtoPost    : Boolean;
begin
   with qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHEQREQ WHERE NMEMO=:NMEMO AND BILLNO IS NOT NULL AND TRUST = ''Y'' AND CONVERTED = ''Y''');
      ParambyName('NMEMO').AsString := qryBills.FieldByName('NMEMO').AsString;
      Open;
      iRecordCount := RecordCount;
      Close;
   end;

   if (tvBills.Controller.SelectedRowCount > 1) then
      MessageDlg('Multiple bills cannot be reversed. Please ensure that only one bill is selected.', mtError,[mbOK], 0)
   else
   begin
      if iRecordCount = 0 then
      begin
         if not qryBills.IsEmpty then
         begin
//            if MsgAsk('Do you want to reverse Bill ' + qryBills.FieldByName('REFNO').AsString + '?') = mrYes then
//            begin
               dTmp := qryBills.FieldByName('DISPATCHED').AsDateTime;
               if (SystemString('DFLT_BILL_DISPATCHED_DATE') <> '') then
                  dTmp := SystemDate('DFLT_BILL_DISPATCHED_DATE');

               if (SystemString('DFLT_BILL_DISPATCHED_DATE') <> '') then
               begin
                   if (DateOf(qryBills.FieldByName('DISPATCHED').AsDateTime) > DateOf(dTmp)) then
                      dTmp := Now;
               end;
               if (InputQueryDate('Bill Reversal', 'Do you want to reverse Bill ' + qryBills.FieldByName('REFNO').AsString + '?',  dTmp)) then
               begin
                  bOKtoPost:= (PostIntoLockedPeriod(dTmp) in [prNotLocked, prOKToProceed]);
                  if bOKtoPost then
                  begin
                     with procBillReverse do
                     begin
                        ParamByName('P_NMEMO').AsInteger := qryBills.FieldByName('NMEMO').AsInteger;
                        ParamByName('P_RVDATE').AsDateTime := dTmp;
    {
      Added 29.10.2002 GG

      Stored Procedure BILL_REVERSE now has a 'WHO' parameter
    }
                        ParamByName('P_WHO').AsString:= dmAxiom.UserID;
                        Execute;
                     end;
                     MakeSQL;
                  end;
               end;
//            end;
         end;
      end
      else
         MessageDlg('This bill cannot be reversed as it has a cheque requisition which has been converted into a cheque', mtError,[mbOK], 0);
    end;
end;

procedure TfrmBills.tbtnPrintClick(Sender: TObject);
//var
//  loTqrBillsRpt : TqrBillsRpt;
begin
   qryBillRpt.Close;
   qryBillRpt.SQL.Clear;
   qryBillRpt.SQL.Text := sRPTSQL;
   if (tvBills.SortedItemCount > 0) and
      (tvBills.SortedItems[0].DataBinding.FilterFieldName <> '') then
   begin
      qryBillRpt.SQL.Add(' ORDER BY ' + tvBills.SortedItems[0].DataBinding.FilterFieldName);
      if tvBills.SortedItems[0].SortOrder = soAscending then
         qryBillRpt.SQL.Add(' ASC ')
      else if tvBills.SortedItems[0].SortOrder = soDescending then
         qryBillRpt.SQL.Add(' DESC ');
   end;

   if chkDateFrom.Checked then
      qryBillRpt.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);

    if chkDateTo.Checked then
      qryBillRpt.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;

   qryBillRpt.Open;
   rptBills.Print;

{  loTqrBillsRpt := nil;

  try
    loTqrBillsRpt := TqrBillsRpt.Create(self);

    loTqrBillsRpt.Session := dmAxiom.uniInsight;
    loTqrBillsRpt.Title := MakeTitle;
    loTqrBillsRpt.Sql := qryBills.SQL.Text;
    loTqrBillsRpt.FromDate := Trunc(dtpDateFrom.Date);
    loTqrBillsRpt.ToDate := Trunc(dtpDateTo.Date);

    loTqrBillsRpt.PreviewModal;


  finally
    FreeAndNil(loTqrBillsRpt);

  end;    //  end try-finally   }
end;

procedure TfrmBills.FormCreate(Sender: TObject);
var
   imaxLength,
   iCtr : integer;
   lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);

   imaxLength := 0;
//   if SystemString('WORDPROC') = 'WORDPERFECT8' then
//      tbtnMerge.ImageIndex := 7;
   FNmemoFrom := 0;
   FNmemoTo := 0;

   if dbgrBills.Font.Size <> dmAxiom.GridFont then
      dbgrBills.Font.Size := dmAxiom.GridFont;

   tvBillsAUTHOR.Caption := GetLabel('MATTER','AUTHOR');
   tvBillsPartner.Caption := GetLabel('MATTER','PARTNER');
   tvBillsCONTROLLER.Caption := GetLabel('MATTER','CONTROLLER');

   lblAuthor.Caption := GetLabel('MATTER','AUTHOR');
   lblPartner.Caption := GetLabel('MATTER','PARTNER');
   lblController.Caption := GetLabel('MATTER','CONTROLLER');

//  tbtnReverse.Enabled := dmAxiom.Security.Bill.Reverse;
//  tbtnAutoReceipt.Enabled := dmAxiom.Security.Receipt.Create;
  tbMatterSearch.ShowHint := dmAxiom.Security.Receipt.Create;

  neSearchRefresh.AsInteger := SettingLoadInteger('BILLS', 'SEARCHREFRESH');
  if neSearchRefresh.AsInteger = 0 then
    neSearchRefresh.AsInteger := 1;

  SettingLoadStream(dmAxiom.UserID, C_BILLSLIST, tvBills );
  SettingLoadStream(dmAxiom.UserID, C_SUBBILLSLIST, tvSubBills );
//  LoadColumnData();
  cbAuthor.Items := dmAxiom.Authors;
  cbPartner.Items := dmAxiom.Partners;
  cbEmployees.Items := dmAxiom.Employees;
  qryControllers.Open;

  // AES 22/09/2017  set formatting of bills footers
 for iCtr := 0 to tvBills.DataController.Summary.FooterSummaryItems.Count - 1 do
     tvBills.DataController.Summary.FooterSummaryItems[iCtr].Format := GetCurrencySymbol+',0.00';

  dcToday.Click;
end;

procedure TfrmBills.FormDestroy(Sender: TObject);
begin
   try
      if tmrSearch.Enabled = True then
         tmrSearch.Enabled := false;
   finally
        tmrSearch.Free;
   end;
end;

procedure TfrmBills.Print(Selection: TSelection);
var
   iNMemo: integer;
   I, iCtr, RecIdx, ColIdx: Integer;
   NMemoVal: Variant;
begin
{   iNMemo := qryBills.FieldByName('NMEMO').AsInteger;
   case Selection of
      bsCurrent:
         with TfrmInvoicePrint.Create(Self) do
            PrintInvoice(qryBills.FieldByName('NMEMO').AsInteger, False);
      bsSelected:
         begin
             // Merge the selected items
             for I := 0 to tvBills.Controller.SelectedRecordCount - 1 do
             begin
                // RecordIndex provides the absolute index
                RecIdx := tvBills.Controller.SelectedRecords[I].RecordIndex;
                // Gets the column index of the Description field
                ColIdx := tvBills.DataController.GetItemByFieldName('NMEMO').Index;
                // Obtains the value of the required field
                NMemoVal := tvBills.DataController.Values[RecIdx, ColIdx];
                // Gets the column index of the Description field
                VarCast(NMemoVal, NMemoVal, varInteger);
                with TfrmInvoicePrint.Create(Self) do
                   PrintInvoice(NMemoVal, False);
             end;
          end;
      bsAll:
         begin
            // Print all items
            with qryBills do
            begin
               First;
               while not EOF do
               begin
                 with TfrmInvoicePrint.Create(Self) do
                   PrintInvoice(FieldByName('NMEMO').AsInteger, False);
                 Next;
               end;
            end;
         end;
   end;

   qryBills.Locate('NMEMO', iNMemo, []);     }
end;

procedure TfrmBills.Post(Selection: TSelection);
var
  iCtr, I: integer;
  iNMemo: integer;
  bPost, bShowInvPost: boolean;
  ARowIndex: Integer;
  ARowInfo: TcxRowInfo;
  dtTmp: TDateTime;
begin
   iNMemo := qryBills.FieldByName('NMEMO').AsInteger;
   case Selection of
     bsCurrent:
       if qryBills.FieldByName('DISPATCHED').IsNull then
         with TfrmInvPost.Create(Self) do
         begin
           DisplayInvoice(Self.qryBills.FieldByname('NMEMO').AsInteger, False, True);
           btnPost.Click;
           qryBills.Refresh;
         end;
     bsSelected:
       begin
         bPost := True;
         if Self.Visible then
           bPost := MsgAsk('This will AUTOMATICALLY post all unposted bills SELECTED.' + #13 + #13 + 'Are you sure you want to do this?') = mrYes;
         if bPost then
         begin
           // Automatically post the selected items
           dtTmp := now;
            if InputQueryDate('Bill Post Date', 'Please enter the date that you would like the selected bills to be posted as:', dtTmp) then
            begin
               with tvBills.DataController do
               begin
                  BeginUpdate;
                  try
                     for I := 0 to GetSelectedCount - 1 do
                     begin
                        ARowIndex := GetSelectedRowIndex(I);
                        ARowInfo := GetRowInfo(ARowIndex);
                        if VarIsNull(Values[ARowInfo.RecordIndex, tvBillsDISPATCHED.Index]) then
                        begin
                           with TfrmInvPost.Create(Self) do
                           begin
                              bShowInvPost := (boolean(cxbarPrintAll.EditValue)) or (SystemString('AUTO_PRINT_BILL')='N');
                              DisplayInvoice(integer(Values[ARowInfo.RecordIndex, tvBillsNMEMO.Index]), bShowInvPost, True, dtTmp);
                              btnPost.Click;
                           end;
                        end;
                     end;
                  finally
                     EndUpdate;
                     MakeSQL;
                  end;
               end;
            end;
         end;
       end;
     bsAll:
       begin
         bPost := True;
         if Self.Visible then
           bPost := MsgAsk('This will AUTOMATICALLY post ALL unposted bills displayed.' + #13 + #13 + 'Are you sure you want to do this?') = mrYes;
         if bPost then
         begin
           // Automatically post all bills
           dtTmp := now;
           if InputQueryDate('Bill Post Date', 'Please enter the date that you would like All of the bills to be posted as:', dtTmp) then
           begin
              with qryBills do
              begin
                First;
                while not EOF do
                begin
                   if FieldByName('DISPATCHED').IsNull then
                   begin
                     with TfrmInvPost.Create(Self) do
                     begin
                       bShowInvPost := (boolean(cxbarPrintAll.EditValue)) or (SystemString('AUTO_PRINT_BILL')='Y');
                       DisplayInvoice(Self.qryBills.FieldByname('NMEMO').AsInteger, bShowInvPost, True, dtTmp);
                       btnPost.Click;
                     end;
                   end;
                   Next;
                end;
              end;
           end;
           MakeSQL;
         end;
       end;
   end;

//  qryBills.Close;
//  qryBills.Open;
//  GetBills;
  qryBills.Locate('NMEMO', iNMemo, []);
end;

procedure TfrmBills.qryBillsCalcFields(DataSet: TDataSet);
begin
   if qryBills.FieldByName('DISPATCHED').AsString = '' then
      qryBills.FieldByName('Delay').AsInteger := -1
   else
   begin
      if qryBills.FieldByName('DATE_LAST_RECPT').AsString = '' then
         qryBills.FieldByName('Delay').AsInteger := -1
      else
         qryBills.FieldByName('Delay').AsInteger := Trunc(qryBills.FieldByName('DATE_LAST_RECPT').AsDateTime) - Trunc(qryBills.FieldByName('DISPATCHED').AsDateTime);
   end;
//   qryBills.FieldByName('Total').AsCurrency := qryBills.FieldByName('FEES').AsCurrency + qryBills.FieldByName('DISB').AsCurrency + qryBills.FieldByName('ANTD').AsCurrency + qryBills.FieldByName('SUND').AsCurrency + qryBills.FieldByName('TAX').AsCurrency;
//   qryBills.FieldByName('Owing').AsCurrency := qryBills.FieldByName('Total').AsCurrency - qryBills.FieldByName('FEES_PAID').AsCurrency - qryBills.FieldByName('DISB_PAID').AsCurrency - qryBills.FieldByName('ANTD_PAID').AsCurrency - qryBills.FieldByName('SUND_PAID').AsCurrency - qryBills.FieldByName('TAX_PAID').AsCurrency;
end;

procedure TfrmBills.popPrintReportClick(Sender: TObject);
begin
  tbtnPrint.Click;
end;

procedure TfrmBills.popMergeCurrentClick(Sender: TObject);
begin
  Merge(bsCurrent);
end;

procedure TfrmBills.popMergeSelectedClick(Sender: TObject);
begin
  Merge(bsSelected);
end;

procedure TfrmBills.popMergeAllClick(Sender: TObject);
begin
  Merge(bsAll);
end;

procedure TfrmBills.popPrintCurrentClick(Sender: TObject);
begin
  Print(bsCurrent);
end;

procedure TfrmBills.popPrintPopup(Sender: TObject);
begin
   btnTotals.Enabled := tabTotals.Showing;
   mnuFilePrintReport.Enabled := tabBills.Showing;
   btnExportToExcel.Enabled := tabBills.Showing;
end;

procedure TfrmBills.popPrintSelectedClick(Sender: TObject);
begin
  Print(bsSelected);
end;

procedure TfrmBills.popPrintAllClick(Sender: TObject);
begin
  Print(bsAll);
end;

procedure TfrmBills.popPostCurrentClick(Sender: TObject);
begin
  Post(bsCurrent);
end;

procedure TfrmBills.popPostSelectedClick(Sender: TObject);
begin
  Post(bsSelected);
end;

procedure TfrmBills.popPostAllClick(Sender: TObject);
begin
  Post(bsAll);
end;

procedure TfrmBills.rgDispatchedClick(Sender: TObject);
begin
   chkExcludeReversals.Checked := True;
   case rgDispatched.ItemIndex of
      0: rgSearchBy.ItemIndex := 0;
      1: rgSearchBy.ItemIndex := 0;
      2: rgSearchBy.ItemIndex := 1;
      3: rgSearchBy.ItemIndex := 1;
      4: rgSearchBy.ItemIndex := 1;
      5: begin
            rgSearchBy.ItemIndex := 1;
            chkExcludeReversals.Checked := False;
         end;
   end;
end;

procedure TfrmBills.tbMatterSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{  case Key of
    VK_DOWN : qryBills.Next;
    VK_UP : qryBills.Prior;
  end;    }
end;

procedure TfrmBills.tmrSearchTimer(Sender: TObject);
begin
   tmrSearch.Enabled := False;
   if pagBills.ActivePage = tabBills then
      MakeSQL;
   tbMatterSearch.SelectAll;
end;

procedure TfrmBills.FormActivate(Sender: TObject);
begin
  if Self.Visible then
  begin
//    tbMatterSearch.SetFocus;
    tbMatterSearch.SelectAll;
  end;
end;

procedure TfrmBills.tbMatterSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) and dmAxiom.Security.Receipt.Create then
  begin
    tbtnAutoReceipt.Click;
    Key := #0;
  end;
end;

procedure TfrmBills.popDeleteCurrentClick(Sender: TObject);
begin
  Delete(bsCurrent);
end;

procedure TfrmBills.Delete(Selection: TSelection);
var
  iCtr: integer;
  iNMemo,
  ARowIndex: integer;
  ARowInfo: TcxRowInfo;
begin
  iNMemo := qryBills.FieldByName('NMEMO').AsInteger;
  case Selection of
    bsCurrent:
      if qryBills.FieldByName('DISPATCHED').IsNull then
      begin
        if MsgAsk('Are you sure you want to delete this Bill?') = mrYes then
        begin
          DeleteDraft(qryBills.FieldByName('NMEMO').AsInteger);
          PlaySound('Delete');
        end;
      end
      else
        MsgErr('This Bill has been dispatched. You can not delete it, you must reverse it.');
    bsSelected:
      begin
        if MsgAsk('This will DELETE all draft bills selected.' + #13 + #13 + 'Are you sure you want to do this?') = mrYes then
        begin
          // Automatically delete the selected items
           with tvBills.DataController do
           begin
             BeginUpdate;
             try
               for iCtr := 0 to GetSelectedCount - 1 do
               begin
                  ARowIndex := GetSelectedRowIndex(iCtr);
                  ARowInfo := GetRowInfo(ARowIndex);
                  if (VarIsNull(Values[ARowInfo.RecordIndex, tvBillsDISPATCHED.Index])) then
                  begin
                     DeleteDraft(integer(Values[ARowInfo.RecordIndex, tvBillsNMEMO.Index]));
                     PlaySound('Delete');
                  end;
               end;
             finally
               EndUpdate;
             end;
           end;
        end;
      end;
    bsAll:
      begin
        if MsgAsk('This will DELETE all draft bills displayed.' + #13 + #13 + 'Are you sure you want to do this?') = mrYes then
        begin
          // Automatically post all bills
          with qryBills do
          begin
            First;
            while not EOF do
            begin
              if FieldByName('DISPATCHED').IsNull then
                DeleteDraft(FieldByName('NMEMO').AsInteger);
              Next;
            end;
          end;
          PlaySound('Delete All');
        end;
      end;
  end;

  qryBills.Close;
  qryBills.Open;
  qryBills.Locate('NMEMO', iNMemo, []); // Probably won't work - left in in case of deletion failure
end;

procedure TfrmBills.DeleteDraft(NMemo: integer);
begin
  try
    if dmAxiom.uniInsight.InTransaction then
       dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
    prcDeleteDBill.ParamByName('MEMONUMBER').AsInteger := NMemo;
    prcDeleteDBill.ExecProc;
    dmAxiom.uniInsight.Commit;
  except
    dmAxiom.uniInsight.Rollback;
  end;
end;

procedure TfrmBills.popDeleteSelectedClick(Sender: TObject);
begin
  Delete(bsSelected);
end;

procedure TfrmBills.popDeleteAllClick(Sender: TObject);
begin
  Delete(bsAll);
end;

procedure TfrmBills.qryBillsAfterOpen(DataSet: TDataSet);
begin
  if qryBills.IsEmpty then
    qryBills.AfterScroll(qryBills);
end;

procedure TfrmBills.ToolButton2Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmBills.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmBills.btnDebtorTaskClick(Sender: TObject);
var debtorTask : TfrmDebtorTasknew;
begin
   debtorTask := TfrmDebtorTasknew.create(self);
   debtorTask.init(qryBills.fieldByname('NMEMO').ASInteger);
   debtorTask.ShowModal;
   debtorTask.Close;
end;

procedure TfrmBills.cxTextEdit1PropertiesChange(Sender: TObject);
begin
   // Reset the timer
   tmrSearch.Enabled := False;
   tmrSearch.Enabled := True;
   tbFileID.Text := '';
end;

procedure TfrmBills.tbnOpenMatterClick(Sender: TObject);
begin
   if tvBills.Controller.SelectedRowCount = 1 then
   begin
      if IsMatterPrivate(qryBills.FieldByName('NMATTER').AsInteger,MatterString(qryBills.FieldByName('NMATTER').AsInteger, 'RESTRICT_ACCESS')) then
      begin
         MsgInfo('This matter is marked as private. You do not have permission to view it.');
      end
      else
      begin
         Application.CreateForm(TfrmMatters, frmMatters);
         if frmMatters.DisplayMatter(qryBills.FieldByname('FILEID').AsString) then
         begin
            if frmDesktop.pagMainControl.ActivePageIndex = 0 then
               frmDesktop.AddFormToTab(frmMatters,1);
            if (not frmMatters.Visible) then
               frmMatters.Show;
         end;
      end;
   end;
//  fMatter.Visible := true;
end;

procedure TfrmBills.neSearchRefreshExit(Sender: TObject);
begin
   tmrSearch.Interval := neSearchRefresh.AsInteger * 1000
end;

procedure TfrmBills.edRefnoToEnter(Sender: TObject);
begin
   if edRefnoFrom.Text <> '' then
   begin
      edRefnoTo.Text := edRefnoFrom.Text;
      edRefnoTo.SelectAll;
   end;
end;

procedure TfrmBills.edRefnoFromKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   edRefnoTo.Text := edRefnoFrom.Text;
end;

procedure TfrmBills.ppLabel3GetText(Sender: TObject; var Text: String);
begin
//   Text := 'From ' + DateToStr(Trunc(dtpDateFrom.Date)) + ' to ' + DateToStr(Trunc(dtpDateTo.Date));
   Text := MakeTitle;
end;

procedure TfrmBills.rptBillsBeforePrint(Sender: TObject);
begin
//   rptBills.PreviewForm.WindowState := wsMaximized;
//   TppViewer(rptBills.PreviewForm.Viewer).ZoomPercentage := 88;
//   TppViewer(rptBills.PreviewForm.Viewer).ZoomSetting := zsPercentage;
end;

procedure TfrmBills.barbtnRemoveDiscountClick(Sender: TObject);
var
   bOKtoPost    : Boolean;
begin
   if not qryBills.IsEmpty then
   begin
      if MsgAsk('Do you want to remove the discount from invoice ' + tvBillsNMEMO.EditValue + '?') = mrYes then
      begin
         bOKtoPost:= (PostIntoLockedPeriod(now) in [prNotLocked, prOKToProceed]);
         if bOKtoPost then
         begin
            try
               with procBillDiscReverse do
               begin
                  ParamByName('P_NMEMO').AsInteger := tvBillsNMEMO.EditValue;
                  ParamByName('P_RVDATE').AsDateTime := Now;

                  ParamByName('P_WHO').AsString:= dmAxiom.UserID;
                  Execute;
               end;
               qryBills.Refresh;
               MessageDlg('Bill Discount Reversed',mtInformation, [mbOk], 0);
            except
       //       on Error  do
               begin
                  if Error  = 20100 then
                     MessageDlg('Error Bill has been paid',mtError, [mbOk], 0)
                  else if Error = 20101 then
                     MessageDlg('Error Bill has trust cheques',mtError, [mbOk], 0)
                  else raise;
               end;
            end;
         end;
      end;
   end;
end;

procedure TfrmBills.bbtnCreditNoteClick(Sender: TObject);
begin
   InvoiceMerge(Integer(tvBillsNMEMO.EditValue), qryBills.FieldByName('NMATTER').AsInteger, False, False, True);
end;

procedure TfrmBills.btnAddMasterBillClick(Sender: TObject);
var frmMasterBill : TfrmMasterBill;
iLoop,iSelectCount : integer;
sValue : String;
bAdd,bEdit  : boolean;
begin
   iSelectCount := 0;
   for iLoop := 0 to tvBills.ViewData.RowCount-1 do
   if tvBills.ViewData.Rows[iLoop].Selected then
   begin
      inc(iSelectCount);
      if tvBills.ViewData.Rows[iLoop].DisplayTexts[tvBillsMASTER_DESCR.Index] = '' then
         bAdd := true
      else
         bEdit := true;
   end;

   if iSelectCount = 0 then
      exit;

   if (bEdit and bAdd)  then
   begin
      MsgErr('If you wish to create a Master Bill you can only select bills that don''t contain a Master ');
      exit;
   end;
   if (bEdit and (iSelectCount > 1)) then
   begin
      MsgErr('If you wish to edit a Master bill you can only select one Bill');
      exit;
   end;

   if bAdd then
   begin
      frmMasterBill := TfrmMasterBill.Create(self);
      frmMasterBill.newMaster;
      for iLoop := 0 to tvBills.ViewData.RowCount-1 do
      begin
         if tvBills.ViewData.Rows[iLoop].Selected then
            frmMasterBill.addBill(tvBills.ViewData.Rows[iLoop].Values[tvBillsNMEMO.Index]);
      end;
      frmMasterBill.ShowModal;
      frmMasterBill.free;
   end;
   if bEdit then
   begin
      frmMasterBill := TfrmMasterBill.Create(self);
      frmMasterBill.loadMaster(qryBills.FieldByName('NMASTER').asInteger);
      frmMasterBill.ShowModal;
      frmMasterBill.free;
   end;
end;

procedure TfrmBills.btnSubBillClick(Sender: TObject);
begin
   with TfrmSubBill.Create(self) do
   begin
      displaySubBill(qryBills.fieldByName('NMEMO').AsInteger, qryBills.fieldByName('TOTAL').AsFloat);
      totals := true;
      ShowModal;
      free;
   end;
end;

procedure TfrmBills.btnTotalsClick(Sender: TObject);
begin
   with dxComponentPrinter1 do
   begin
//      dxComponentPrinter1Link1.ReportTitle.Text := 'Time Diary for - '+ cmbAuthors.Text;
//      dxComponentPrinter1
      Preview();
   end;
end;

procedure TfrmBills.SaveColumnData;
var
   LNumFields: integer;
   GroupIndex: integer;
begin
 {   for LNumFields := 0 to tvBills.ColumnCount - 1 do
   begin
      SettingSave(C_BILLSLIST,C_COLUMNNAME          + IntToStr(LNumFields),tvBills.Columns[LNumFields].Name);
      SettingSaveBoolean(C_BILLSLIST,C_COLUMNVISIBLE + IntToStr(LNumFields),tvBills.Columns[LNumFields].Visible);
      SettingSave(C_BILLSLIST,C_COLUMNSORTORDER     + IntToStr(LNumFields),tvBills.Columns[LNumFields].SortOrder);
      if tvBills.Columns[LNumFields].Options.Grouping then
      begin
         if tvBills.Columns[LNumFields].GroupIndex >= 0 then
            GroupIndex := tvBills.Columns[LNumFields].GroupIndex
         else
            GroupIndex := -1;
      end
      else
         GroupIndex := -1;
      SettingSave(C_BILLSLIST,C_COLUMNGROUPORDER    + IntToStr(LNumFields),tvBills.Columns[LNumFields].GroupIndex);
      SettingSave(C_BILLSLIST,C_COLUMNWIDTH         + IntToStr(LNumFields),Integer(tvBills.Columns[LNumFields].Width));
      SettingSave(C_BILLSLIST, C_COLUMNPOSITION     + IntToStr(LNumFields),Integer(tvBills.Columns[LNumFields].Index));
  end;
  SettingSave(C_BILLSLIST,'ColumnCount',LNumFields);  }
end;

procedure TfrmBills.LoadColumnData;
var
   LNumFields: integer;
   i: integer;
   LVisibleIndex: integer;
begin
 {  if SettingLoadInteger(C_BILLSLIST,'ColumnCount') > 0 then
   begin
      for LNumFields := 0 to tvBills.ColumnCount - 1 do
      begin
         tvBills.Columns[LNumFields].Visible    := SettingLoadGridBoolean(C_BILLSLIST,C_COLUMNVISIBLE  + IntToStr(LNumFields));
         tvBills.Columns[LNumFields].SortOrder  := SettingLoadSort(C_BILLSLIST,C_COLUMNSORTORDER + IntToStr(LNumFields));
         if tvBills.Columns[LNumFields].Options.Grouping then
            tvBills.Columns[LNumFields].GroupIndex := SettingLoadGroup(C_BILLSLIST,C_COLUMNGROUPORDER + IntToStr(LNumFields))
         else
            tvBills.Columns[LNumFields].GroupIndex := -1;
         if SettingLoadInteger(C_BILLSLIST,C_COLUMNWIDTH + IntToStr(LNumFields)) > 0 then
            tvBills.Columns[LNumFields].Width := SettingLoadInteger(C_BILLSLIST,C_COLUMNWIDTH + IntToStr(LNumFields));

         if tvBills.Columns[LNumFields].Visible then
            for i := 0 to tvBills.ColumnCount - 1 do
            begin
               if SettingLoadString(C_BILLSLIST,C_COLUMNNAME + IntToStr(i)) = tvBills.Columns[LNumFields].Name then
                  if SettingLoadInteger(C_BILLSLIST, C_COLUMNPOSITION + IntToStr(i)) = 0 then
                  begin
                     tvBills.Columns[LNumFields].Index := LVisibleIndex;
                     inc(LVisibleIndex);
                     break;
                  end
                  else
                  begin
                     tvBills.Columns[LNumFields].Index := SettingLoadInteger(C_BILLSLIST, C_COLUMNPOSITION + IntToStr(i));
                     break;
                  end;
            end;
     end;
//     dbgrBills.FocusedView.DataController.Groups.FullExpand;
   end;                   }
end;

procedure TfrmBills.SetButtons(bEnabled: boolean);
begin
   tbtnPost.Enabled := bEnabled;
   tbtnOpen.Enabled := bEnabled;
   tbnOpenMatter.Enabled := bEnabled;
   tbtnDelete.Enabled := bEnabled;
   tbtnReverse.Enabled := bEnabled;
   tbtnPrint.Enabled := bEnabled;
   tbtnMerge.Enabled := bEnabled;
   tbtnAutoReceipt.Enabled := bEnabled;
   btnAddMasterBill.Enabled := bEnabled;
   btnEditMasterBill.Enabled := bEnabled;
   btnSubBill.Enabled := bEnabled;
//   btnPrint.Enabled := bEnabled;
   tbtnRefresh.Enabled := bEnabled;
   btnDebtorTask.Enabled := bEnabled;
   btnPost.Enabled := bEnabled;
   btnMerge.Enabled := bEnabled;
//   btnPrint.Enabled := bEnabled;
   btnDebtorTask.Enabled := bEnabled;
   btnDispatched.Enabled := bEnabled;
   btnAuthorise.Enabled := bEnabled;
end;

procedure TfrmBills.tbtnRefreshClick(Sender: TObject);
begin
   MakeSQL;
end;

procedure TfrmBills.tvBillsColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
   qryBills.Close;
   FOrderBy := ' ORDER BY ';

   FOrderBy := FOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      FOrderBy := FOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      FOrderBy := FOrderBy + ' ASC';
   end
   else
   begin
      FOrderBy := FOrderBy + ' DESC';
   end;

   MakeSQL(True);
//   qryBills.SQL.Text := FSQL + FWhereClause + FOrderBy;
//   qryBills.Open();
end;

procedure TfrmBills.tvBillsDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
   if dmAxiom.bShutDown = False then
   begin
     ASender.FooterSummaryValues[0] := NumberOfBills;
     ASender.FooterSummaryValues[1] := GetBillTotal;
     ASender.FooterSummaryValues[2] := GetBillOwing;
     ASender.FooterSummaryValues[3] := GetAntdOwing;
     ASender.FooterSummaryValues[4] := GetDisbOwing;
     ASender.FooterSummaryValues[5] := GetFeesOwing;
     ASender.FooterSummaryValues[6] := GetSundOwing;
     ASender.FooterSummaryValues[7] := GetCredsOwing;
   end;
end;

procedure TfrmBills.tvBillsStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('SPLIT_BILL');
   if VarToStr(ARecord.Values[AColumn.Index]) = 'Y' then
      AStyle := stySubBill
   else
      AStyle := styDefault;
end;

function TfrmBills.GetBillOwing: Currency;
begin
  with qryTotalBill do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(OWING) as Owing');
    SQL.Add('FROM NMEMO, MATTER,MASTERBILLS ');
    SQL.Add('WHERE NMEMO.NMATTER = Matter.NMATTER AND NMEMO.BANK_ACCT = ' + QuotedStr(dmAxiom.Entity) );
    SQL.Add(' AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
    SQL.Add(WhereClause(True));
    if chkDateFrom.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    Open;
    Result := FieldByName('OWING').AsCurrency;
    Close;
  end;
end;

function TfrmBills.GetAntdOwing: Currency;
begin
  with qryTotalBill do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(ANTD) as Owing');
    SQL.Add('FROM NMEMO, MATTER,MASTERBILLS ');
    SQL.Add('WHERE NMEMO.NMATTER = Matter.NMATTER AND NMEMO.BANK_ACCT = ' + QuotedStr(dmAxiom.Entity) );
    SQL.Add(' AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
    SQL.Add(WhereClause(True));
    if chkDateFrom.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    Open;
    Result := FieldByName('OWING').AsCurrency;
    Close;
  end;
end;

function TfrmBills.GetFeesOwing: Currency;
begin
  with qryTotalBill do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(FEES) as Owing');
    SQL.Add('FROM NMEMO, MATTER,MASTERBILLS ');
    SQL.Add('WHERE NMEMO.NMATTER = Matter.NMATTER AND NMEMO.BANK_ACCT = ' + QuotedStr(dmAxiom.Entity) );
    SQL.Add(' AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
    SQL.Add(WhereClause(True));
    if chkDateFrom.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    Open;
    Result := FieldByName('OWING').AsCurrency;
    Close;
  end;
end;

function TfrmBills.GetDisbOwing: Currency;
begin
  with qryTotalBill do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(DISB) as Owing');
    SQL.Add('FROM NMEMO, MATTER,MASTERBILLS ');
    SQL.Add('WHERE NMEMO.NMATTER = Matter.NMATTER AND NMEMO.BANK_ACCT = ' + QuotedStr(dmAxiom.Entity) );
    SQL.Add(' AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
    SQL.Add(WhereClause(True));
    if chkDateFrom.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    Open;
    Result := FieldByName('OWING').AsCurrency;
    Close;
  end;
end;

function TfrmBills.GetSundOwing: Currency;
begin
  with qryTotalBill do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(SUND) as Owing');
    SQL.Add('FROM NMEMO, MATTER,MASTERBILLS ');
    SQL.Add('WHERE NMEMO.NMATTER = Matter.NMATTER AND NMEMO.BANK_ACCT = ' + QuotedStr(dmAxiom.Entity) );
    SQL.Add(' AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
    SQL.Add(WhereClause(True));
    if chkDateFrom.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    Open;
    Result := FieldByName('OWING').AsCurrency;
    Close;
  end;
end;

function TfrmBills.GetCredsOwing: Currency;
begin
  with qryTotalBill do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(UPCRED) as Owing');
    SQL.Add('FROM NMEMO, MATTER,MASTERBILLS ');
    SQL.Add('WHERE NMEMO.NMATTER = Matter.NMATTER AND NMEMO.BANK_ACCT = ' + QuotedStr(dmAxiom.Entity) );
    SQL.Add(' AND MASTERBILLS.NMASTER (+) = NMEMO.NMASTER  ');
    SQL.Add(WhereClause(True));
    if chkDateFrom.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' >= :P_DateFrom');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    end;
    if chkDateTo.Checked then
    begin
      SQL.Add('  AND ' + NMEMOSEARCHDATES[rgSearchBy.ItemIndex] + ' < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    end;
    Open;
    Result := FieldByName('OWING').AsCurrency;
    Close;
  end;
end;

procedure TfrmBills.btnAuthoriseClick(Sender: TObject);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('update nmemo set authorised = ''Y'' where nmemo = :nmemo');
      ParamByName('nmemo').AsInteger := qryBills.fieldByName('NMEMO').AsInteger;
      ExecSQL;
      dmAxiom.uniInsight.Commit;
   end;
end;

procedure TfrmBills.popAuthorisePopup(Sender: TObject);
begin
   btnAuthorise.Enabled := (qryBills.fieldByName('Authorised').AsString = 'N') and
                           ((qryBills.fieldByName('rv_type').AsString <> 'C') and
                           (qryBills.fieldByName('rv_type').AsString <> 'R') and
                           (qryBills.fieldByName('rv_type').AsString <> 'X'));
   btnDispatched.Enabled := dmAxiom.Security.Bill.ChangeDispatchedDate;
   btnChangePayDate.Enabled := ((dmAxiom.Security.Bill.ChangePaymentDueDate) and
                               (qryBills.fieldByName('OWING').AsCurrency > 0) and
                               (qryBills.fieldByName('rv_type').AsString <> 'C') and
                               (qryBills.fieldByName('rv_type').AsString <> 'R') and
                               (qryBills.fieldByName('rv_type').AsString <> 'X'));
   dxBarButton5.Enabled := (tvBillsIS_DRAFT.EditValue = 'N');
   btnDispatched.Enabled := (qryBills.fieldByName('OWING').AsCurrency > 0) and
                               (qryBills.fieldByName('rv_type').AsString <> 'C') and
                               (qryBills.fieldByName('rv_type').AsString <> 'R') and
                               (qryBills.fieldByName('rv_type').AsString <> 'X') and
                               (tvBillsIS_DRAFT.EditValue = 'N');
   bbtnCreditNote.Enabled := (qryBills.fieldByName('rv_type').AsString = 'X');
//   mnuFileMergeCurrent
end;

procedure TfrmBills.btnDispatchedClick(Sender: TObject);
var
  dTmp, dGenerated, olddTmp, dDueTmp: TDateTime;
begin
   dTmp := qryBills.FieldbyName('DISPATCHED').AsDateTime;
   olddTmp := dTmp;
   if (InputQueryDate('Change Dispatched Date', 'Please enter the new dispatched date: ',  dTmp)) then
   begin
      try
         dGenerated := TableDateTime('NMEMO', 'NMEMO', qryBills.FieldbyName('NMEMO').AsInteger, 'GENERATED');
         with qryTmp do
         begin
            if (trunc(dTmp) < trunc(dGenerated)) then
            begin
               // AES 12/05/2009
               // changed this from a restriction to a warning
               MsgInfo('Dispatched Date is less than Generated Date (' + DateToStr(dTmp) + ') ');
//               exit;
            end;
            if (trunc(dTmp) < trunc(dmAxiom.LockDate)) then
            begin
               MsgErr('Dispatched Date cannot be set into a Locked Period (' + DateToStr(dmAxiom.LockDate) + ') ');
               exit;
            end;
            Close;

            SQL.Text := 'UPDATE NMEMO SET DISPATCHED =:DISPATCHED WHERE NMEMO =:NMEMO';
            ParambyName('DISPATCHED').AsDateTime := dTmp;
            ParambyName('NMEMO').AsInteger := qryBills.FieldbyName('NMEMO').AsInteger;
            ExecSQL;
            Close;

            // DW 09/12/2017  update due date to be payment days greater than new dispatch date
            dDueTmp := dTmp  + SystemInteger('DR_PAYMENT_DAYS');

            SQL.Text := 'UPDATE NMEMO SET EXPPAYMENT =:EXPPAYMENT WHERE NMEMO =:NMEMO';
            ParambyName('EXPPAYMENT').AsDateTime := dDueTmp;
            ParambyName('NMEMO').AsInteger := qryBills.FieldbyName('NMEMO').AsInteger;
            ExecSQL;
            Close;

            SQL.Text := 'UPDATE FEE SET INVOICEDATE =:DISPATCHED WHERE NMEMO =:NMEMO';
            ParambyName('DISPATCHED').AsDateTime := dTmp;
            ParambyName('NMEMO').AsInteger := qryBills.FieldbyName('NMEMO').AsInteger;
            ExecSQL;
            Close;

            SQL.Text := 'UPDATE TRANSITEM SET CREATED =:DISPATCHED, CREATE_INDEXDATE = TRUNC(:DISPATCHED) '+
                        ' WHERE OWNER_CODE = ''NMEMO'' AND NOWNER =:NMEMO AND CREATED = :OLD_CREATED ';
            ParambyName('DISPATCHED').AsDateTime := dTmp;
            ParambyName('OLD_CREATED').AsDateTime := olddTmp;
            ParambyName('NMEMO').AsInteger := qryBills.FieldbyName('NMEMO').AsInteger;
            ExecSQL;
            Close;

            SQL.Text := 'UPDATE FEEDIST SET CREATED_DATE =:DISPATCHED '+
                        ' WHERE NMEMO =:NMEMO AND FEE_AMT <> 0 AND CREATED_DATE = :OLD_CREATED ';
            ParambyName('DISPATCHED').AsDateTime := dTmp;
            ParambyName('OLD_CREATED').AsDateTime := olddTmp;
            ParambyName('NMEMO').AsInteger := qryBills.FieldbyName('NMEMO').AsInteger;
            ExecSQL;
            Close;

            ShowMessage('Dispatched Date successfully changed');
            qryBills.Close;
            qryBills.Open;
         end;
      except
         ;
      end;
   end;
end;

procedure TfrmBills.btnChangePayDateClick(Sender: TObject);
var
  dTmp, dGenerated, olddTmp: TDateTime;
begin
   dTmp := qryBills.FieldbyName('EXPPAYMENT').AsDateTime;
   olddTmp := dTmp;
   if (InputQueryDate('Change Payment Due Date', 'Please enter the new Payment due date: ',  dTmp)) then
   begin
      try
         dGenerated := TableDateTime('NMEMO', 'NMEMO', qryBills.FieldbyName('NMEMO').AsInteger, 'GENERATED');
         with qryTmp do
         begin
            if (dTmp < dGenerated) then
            begin
               MsgErr('Payment Due Date cannot be less than Generated Date (' + DateToStr(dTmp) + ') ');
               exit;
            end;
            if (dTmp < dmAxiom.LockDate) then
            begin
               MsgErr('Payment Due Date cannot be set into a Locked Period (' + DateToStr(dmAxiom.LockDate) + ') ');
               exit;
            end;
            Close;
            SQL.Text := 'UPDATE NMEMO SET EXPPAYMENT =:EXPPAYMENT WHERE NMEMO =:NMEMO';
            ParambyName('EXPPAYMENT').AsDateTime := dTmp;
            ParambyName('NMEMO').AsInteger := qryBills.FieldbyName('NMEMO').AsInteger;
            ExecSQL;
            Close;
            ShowMessage('Payment Due Date successfully changed');
            qryBills.Close;
            qryBills.Open;
         end;
      except
         ;
      end;
   end;
end;

procedure TfrmBills.dxBarBtnEmailClick(Sender: TObject);
begin

   SendBills;
end;

procedure TfrmBills.dxBarButton1Click(Sender: TObject);
var
   lsUserName : String;
   LDate : TDateTime;
   Row: Integer;
begin
   frmDebtorNotes := TfrmDebtorNotes.Create(Self);

   lsUserName := dmAxiom.GetUserName;

   try
      LDate := Now();
      frmDebtorNotes.EntryDate  := LDate;
      frmDebtorNotes.By         := lsUserName;
      frmDebtorNotes.Note       := '';
      frmDebtorNotes.Refno      := qryBills.FieldByName('REFNO').AsString;
      frmDebtorNotes.NMemo      := qryBills.FieldByName('NMEMO').AsInteger;
      frmDebtorNotes.NMatter    := qryBills.FieldByName('NMATTER').AsInteger;

      frmDebtorNotes.qryNMemo.Close;
      frmDebtorNotes.qryNMemo.ParamByName('nmatter').AsInteger := qryBills.FieldByName('NMATTER').AsInteger;
      frmDebtorNotes.qryNMemo.Open;

      frmDebtorNotes.cmbBillRef.Visible := False;
      frmDebtorNotes.edBillNo.Visible := True;
      frmDebtorNotes.edBillNo.Text := qryBills.FieldByName('REFNO').AsString;

      frmDebtorNotes.qryDebtorNotes.Open;
      frmDebtorNotes.qryDebtorNotes.Insert;


      if(frmDebtorNotes.ShowModal <> mrOk) then
        Exit;

      frmDebtorNotes.qryDebtorNotes.ApplyUpdates;
   finally
      FreeAndNil(frmDebtorNotes);
   end;
end;

procedure TfrmBills.btnExportToExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrBills, True, True,True,'xls');
   end;
end;

procedure TfrmBills.ViewAttacheInvoice;
var
   sFileName: string;
   bStream, fStream: TStream;
   OpenFileErr: integer;
begin
   if qryBills.fieldByname('PATH').IsNull then
      exit;
   try
      // load the image in external application
      sFileName := qryBills.fieldByname('PATH').AsString;
      OpenFileErr := ShellExecute(Handle,'open',PChar(sFileName),nil,nil,SW_SHOWNORMAL);
      if OpenFileErr = SE_ERR_NOASSOC then
         MsgInfo('There is no application associated with the given filename extension.');
   except
      Raise;
   end;
{
   try
      // load the image in external application
      try
         bStream := qryBills.CreateBlobStream(qryBills.fieldByname('INVOICE_COPY'), bmRead);

         sFileName := dmAxiom.GetEnvVar('TMP')+'\';  //'c:\tmp\';
         sFileName := sFileName + qryBills.fieldByName('nmemo').AsString+ '_nmemo.' + qryBills.FieldByName('INVOICE_COPY_EXT').AsString;
         try
            fStream := TFileStream.Create(sFileName, fmCreate);
            fStream.CopyFrom(bStream,bStream.Size);
         finally
            FreeAndNil(fStream);
         end;
      finally
         FreeAndNil(bStream);
      end;

      OpenFileErr := ShellExecute(Handle,'open',PChar(sFileName),nil,nil,SW_SHOWNORMAL);
      if OpenFileErr = SE_ERR_NOASSOC then
         MsgInfo('There is no application associated with the given filename extension.');
   except
      Raise;
   end;    }
end;

procedure TfrmBills.btnViewBillClick(Sender: TObject);
begin
  ViewAttacheInvoice;
end;

procedure TfrmBills.dxBarButton5Click(Sender: TObject);
var
   frmBillGLPostings : TfrmBillGLPostings;
begin
   try
      frmBillGLPostings := TfrmBillGLPostings.Create(Self);
      with frmBillGLPostings do
      begin
         qryBillGLPostings.Close;
         qryBillGLPostings.ParamByName('nmemo').asinteger := tvBillsNMEMO.EditValue;
         qryBillGLPostings.ParamByName('entity').AsString := dmAxiom.Entity;
         qryBillGLPostings.Open;
         qryBillTotal.Close;
         qryBillTotal.ParamByName('nmemo').asinteger := tvBillsNMEMO.EditValue;
         qryBillTotal.Open;
         ShowModal;
      end;
   finally
      frmBillGLPostings.Free;
   end;
end;

procedure TfrmBills.dxBarButton6Click(Sender: TObject);
var
   bSend: boolean;
   ARowIndex,
   I: integer;
   ARowInfo: TcxRowInfo;
begin
   bSend := True;
   if Self.Visible then
     bSend := MsgAsk('This will email ALL bills SELECTED.' + #13 + #13 + 'Are you sure you want to do this?') = mrYes;
   if bSend then
   begin
      // Automatically email the selected items
      with tvBills.DataController do
      begin
         BeginUpdate;
         try
            for I := 0 to GetSelectedCount - 1 do
            begin
               ARowIndex := GetSelectedRowIndex(I);
               ARowInfo := GetRowInfo(ARowIndex);
               if (VarIsNull(Values[ARowInfo.RecordIndex, tvBillsPATH.Index]) = False) then
               begin
                  SendBills;
               end;
            end;
         finally
            EndUpdate;
         end;
      end;
   end;
end;

procedure TfrmBills.dxBarButton8Click(Sender: TObject);
var
   bSend: boolean;
begin
   bSend := MsgAsk('This will email ALL bills displayed.' + #13 + #13 + 'Are you sure you want to do this?') = mrYes;
   if bSend then
   begin
     // Automatically email all bills
      with qryBills do
      begin
         First;
          while not EOF do
          begin
             if (FieldByName('PATH').IsNull = False) then
             begin
               SendBills;
             end;
             Next;
          end;
      end;
   end;
end;

procedure TfrmBills.dxBarButton9Click(Sender: TObject);
begin
   if tvBills.Controller.SelectedRowCount = 1 then
      SendBills;
end;

procedure TfrmBills.dxbtnSpellCheckClick(Sender: TObject);
var
   LFeeNew: TfrmBillFeeList;
   LUnique,
   LReturn,
   I,
   colBillIndex,
   colFeesIndex,
   colSpellCheck: Integer;
   DC: TcxGridDBDataController;
   GV: TcxGridDBTableView;
   LFeesAmount: variant;
   LSpellCheck: string;
begin
   tvBills.BeginUpdate();
   try
      LFeeNew := TfrmBillFeeList.Create(Self);
      LFeeNew.FromBills := True;
      DC := tvBills.DataController;
      GV := tvBills;
      GV.ViewData.Records[0].Focused := True;
      for I := 0 to (DC.RowCount - 1) do
      begin
         GV.ViewData.Records[I].Focused := True;
         colBillIndex   := DC.GetItemByFieldName('NMEMO').Index;
         colFeesIndex   := DC.GetItemByFieldName('FEES').Index;
         colSpellCheck  := DC.GetItemByFieldName('SPELL_CHK_DONE').Index;
         LUnique        := DC.Values[DC.FocusedRecordIndex, colBillIndex];
         LFeesAmount    := DC.Values[DC.FocusedRecordIndex, colFeesIndex];
         LSpellCheck    := DC.Values[DC.FocusedRecordIndex, colSpellCheck];
         if ((LFeesAmount <> 0) and (LSpellCheck = 'N')) then
         begin
            LFeeNew.DisplayFees(LUnique);

            LReturn := LFeeNew.ShowModal();
            if LReturn = mrCancel then
               break;
         end;
      end;
   finally
      tvBills.EndUpdate;
      LFeeNew.Free;
      tbtnRefresh.Click;
   end;
end;

procedure TfrmBills.SendBills;
var
   OldCursor: TCursor;
   MsgStore: IRwMapiMsgStore;
   Outbox : IRwMAPIFolder;
   NewMessage: IRwMAPIMailMessage;
   sSubject,
   tmpFileName,
   LEmailTemplate: string;
   lEmailTemp: TStrings;
   LNMatter,
   LNBillTo: integer;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      FAttachDoc := True;
      GetEmailTemplate(LEmailTemplate);

      if dmAxiom.MapiSession.Active = False then
      begin
         OldCursor := Screen.Cursor;
         Screen.Cursor := crHourGlass;
         try
            dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
            dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;
            dmAxiom.MapiSession.LogonInfo.Password           := '';
            dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
            dmAxiom.MapiSession.LogonInfo.NewSession         := False;
            dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
            dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
            dmAxiom.MapiSession.Active                       := True;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

      FFileID := tvBillsFILEID.EditValue;
      LNMatter := tvBillsNMATTER.EditValue;
      LNBillTo := tvBillsNBILL_TO.EditValue;

      MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
      Outbox := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
      try
         NewMessage := OutBox.CreateMessage('IPM.Note') as IRwMAPIMailMessage;
         try
            tmpFileName := tmpFileName + ExtractFileName(tvBillsPATH.EditValue);
//       !   ! specify a recipient below
            NewMessage.Recipients.AddRecipients(tvBillsEMAIL.EditValue, rtTo, True);

            sSubject := NewMessage.Subject;
            NewMessage.AddFileAttachment(tvBillsPATH.EditValue);

            if (sSubject = '') then
                sSubject := tmpFileName +
                            ' [Matter#' + FFileID+']'
            else
                sSubject := sSubject +
                            tmpFileName +
                            ' [Matter#' + FFileID+']';
            NewMessage.Subject := sSubject;

            if (LEmailTemplate <> '') then
            begin
               try
                  lEmailTemp := TStringList.Create;
                  lEmailTemp.LoadFromFile(LEmailTemplate);
                  NewMessage.HTMLBody := ParseEmailMacros(LNMatter, LNBillTo, lEmailTemp.Text);
               finally
                  FreeAndNil(lEmailTemp);
               end;
               DeleteFile(LEmailTemplate);
            end
            else
               NewMessage.HTMLBody := 'Please find attached bill for your attention.';

            NewMessage.SubmitMessage(astMoveToSentItems);
         finally
            NewMessage := nil;
         end;
      finally
         Outbox := nil;
      end;
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;

procedure TfrmBills.GetEmailTemplate(var AEmailTemplate: string);
var
   lnEmailTempID: integer;
   bStream: TStream;
   RandFile,
   tmpFileName: string;
begin
   try
      dmAxiom.qryTmp.Close;
      dmAxiom.qryTmp.SQL.Text := 'select count(*) as em_count from email_templates';
      dmAxiom.qryTmp.Open;
      if dmAxiom.qryTmp.FieldByName('em_count').AsInteger > 0 then
      begin
         try
            lnEmailTempID := -1;
            frmGenericSearch := TfrmGenericSearch.Create(Self);
            with frmGenericSearch do
            begin
               SQL := 'SELECT id AS CODE, DESCR, body_text FROM EMAIL_TEMPLATES ORDER BY ID';
               if ShowModal = mrOK then
                  lnEmailTempID := qrySource.FieldByName('CODE').AsInteger;
               Release;
            end;
            if lnEmailTempID <> -1 then
            begin
               qryEmailTemplate.Close;
               qryEmailTemplate.ParamByName('id').AsInteger := lnEmailTempID;
               qryEmailTemplate.Open;
               Randomize;
               RandFile := IntToStr(RandomRange(100, 100000));
               bStream := qryEmailTemplate.CreateBlobStream(qryEmailTemplate.FieldByName('BODY_TEXT'),bmRead);
               try
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + '_email_template.HTML';

                  bStream.Seek(0, soFromBeginning);

                  with TFileStream.Create(tmpFileName, fmCreate) do
                  try
                     CopyFrom(bStream, bStream.Size)
                  finally
                     Free
                  end;
               finally
                  bStream.Free;
                  // in case file still sitting in tmp directory
//                  DeleteFile(tmpFileName);
               end;

               AEmailTemplate := tmpFileName;
            end;
         finally
            qryEmailTemplate.Close;
         end;
      end;
   finally

   end;
end;

procedure TfrmBills.CMRefreshBills(var Msg: TMessage);
begin
   MakeSQL;
end;

end.

