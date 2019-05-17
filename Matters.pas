unit Matters;

interface

uses
  fmxutils, Windows, SysUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer,  VCL.Graphics,
  cxEdit, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalendar, cxTextEdit, cxDBLookupComboBox, cxCurrencyEdit, cxCheckBox,
  cxRichEdit, cxMemo, cxImageComboBox, cxHyperLinkEdit, cxColorComboBox,
  cxProgressBar, Vcl.Menus, cxPC, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerAgendaView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor, cxSchedulerTreeListBrowser, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, IPPeerClient, dxGDIPlusClasses, ppCtrls,
  cxSchedulercxGridConnection, cxSchedulerDBStorage,
  cxImageList, Data.Bind.Components, Data.Bind.ObjectScope, DAScript, UniScript,
  Uni, DBAccess, uRwMAPIMsgStoreEvents, uRwMAPIFormManager, JvBaseDlg,
  JvSelectDirectory, dxPSGraphicLnk, dxPSTCLnk, dxDockControl, dxBar,
  dxBarDBNav, cxBarEditItem, cxClasses, dxPSCore, dxPScxCommon, Vcl.Dialogs,
  ppMemo, ppStrtch, ppRegion, MemDS, ppRichTx, raCodMod, ppModule, ppParameter,
  ppDesignLayer, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan, System.ImageList,
  Vcl.ImgList, Vcl.Controls, Vcl.ExtCtrls, cxSplitter, Vcl.StdCtrls,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.ComCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, dxDockPanel, cxGridChartView, cxGridDBChartView,
  cxDBNavigator, cxGroupBox, cxRadioGroup, cxButtons, VirtualTrees,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxDBEdit, cxImage, Vcl.Mask,
  Vcl.DBCtrls, cxButtonEdit, cxDBLabel, cxLabel, cxDBRichEdit, Vcl.Buttons,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, VCL.Forms, uRwMapiInterfaces,
  Variants,  {uHostPreview,} Registry, ComObj, ppFileUtils,
  ppInistorage, cxSchedulerEventEditor, cxGridExportLink, ITrackMatterDetails,
  vcl.Themes, vcl.styles, vcl.Styles.Ext, DateUtils, StrUtils, dxNavBarCollns,
  cxSchedulerDialogs, cxGridDBDataDefinitions, Messages, AxiomData,
  RestClientt, RestUtils, REST.Client, Vcl.Grids,
  dxPScxEditorLnks, JamFilePreview, cxTL, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxTLData, cxDBTL;


const
  iMaxRow = 9;
  iMaxCol = 8;

  imgWORD = 26;
  imgWP   = 27;

  OBPRECEDENTS = 0;
  OBDOCUMENTS = 1;

  rowFEES = 0;
  rowDISB = 1;
  rowSUND = 2;
  rowACTUAL = 3;
  rowCREQ = 4;
  rowUPCRED = 5;
  rowANT = 6;
  rowTTL = 7;
  rowGTTL = 8;

  colUNBILL = 0;
  colBILL = 1;
  colTAX = 2;
  colRECVD = 3;
  colWOFF = 4;
  colDISC = 5;
  colOWING = 6;
  colEXP = 7;

  C_DOCTYPEPARTY  = 'P';
  C_DOCTYPECLIENT = 'O';
  C_DOCTYPEADMIN  = 'A';

  UM_MYMESSAGE = WM_USER + 1001;
  UM_PREVIEWPANEL = WM_USER + 1002;
  UM_OPENDOCUMENT = WM_USER + 1003;


type
   PFolderData = ^TFolderData;
   TFolderData = record
      Text: WideString;
      ImageIndex: Integer;
      FolderID: integer;
      FolderLvl: integer;
   end;

type
  TDocSearchType = (dstPrecedent, dstDocument);

type
  TcxCustomSchedulerAccess = class(TcxCustomScheduler);

  TfrmMatters = class(TForm)
    tmrRefresh: TTimer;
    popPrecCategory: TPopupMenu;
    mnuPrecCatSearch: TMenuItem;
    ilstDataForms: TImageList;
    pmCheqreqs: TPopupMenu;
    miViewCheqreqHistoryforMatter: TMenuItem;
    ActionManager: TActionManager;
    aDataFormsEdit: TAction;
    aDataFormsClear: TAction;
    aDataFormsPost: TAction;
    aDataFormsCancel: TAction;
    aShowFieldNames: TAction;
    popTransit: TPopupMenu;
    mnuEditTransit: TMenuItem;
    mnuRemoveTransit: TMenuItem;
    aWorkFlow: TAction;
    aActingForAdd: TAction;
    aActingForDelete: TAction;
    aDeleteParty: TAction;
    ppUnconCheqReq: TppDBPipeline;
    rbRptUnconCheqReq: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel29: TppLabel;
    pplblMatter: TppLabel;
    pplblDescription: TppLabel;
    ppMatter: TppLabel;
    ppDescription: TppLabel;
    pplblClient: TppLabel;
    ppClient: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    pplblFor: TppLabel;
    pplblBank: TppLabel;
    pplblPayeeDesc: TppLabel;
    pplblReqBy: TppLabel;
    pplblBill: TppLabel;
    pplblStatus: TppLabel;
    pplblAmount: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    pplblBilled: TppLabel;
    pplblOwing: TppLabel;
    pplblPayable: TppLabel;
    pplblTax: TppLabel;
    pplblPaid: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppBank: TppDBText;
    ppDesc: TppDBText;
    ppAuthor: TppDBText;
    ppBillNo: TppDBText;
    ppAmount: TppDBText;
    ppReqDate: TppDBText;
    ppTax: TppDBText;
    ppPaid: TppDBText;
    ppStatus: TppDBText;
    ppInvoiceDate: TppDBText;
    ppOwing: TppVariable;
    ppPayable: TppVariable;
    ppDBPayable: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel30: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppTotalAmount: TppDBCalc;
    ppTotalTax: TppDBCalc;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppTotal: TppVariable;
    ppDBText16: TppDBText;
    cxStyleRepository1: TcxStyleRepository;
    styAgedCol: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyleR: TcxStyle;
    cxStyleG: TcxStyle;
    cxStyleB: TcxStyle;
    cxStyleD: TcxStyle;
    styBillTotals: TcxStyle;
    ppDBText21: TppDBText;
    ppLabel39: TppLabel;
    pmCriticalDate: TPopupMenu;
    NoLongerRequired1: TMenuItem;
    rptMatterNotes: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine7: TppLine;
    ppSystemVariable4: TppSystemVariable;
    ppLabel42: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLabel43: TppLabel;
    ppLine8: TppLine;
    ppLabel64: TppLabel;
    ppLabel67: TppLabel;
    ppLabel54: TppLabel;
    plMatterDetails: TppDBPipeline;
    ppDBText22: TppDBText;
    ppLabel44: TppLabel;
    ppDBText23: TppDBText;
    ppLabel45: TppLabel;
    ppRichText1: TppRichText;
    raCodeModule1: TraCodeModule;
    styRed: TcxStyle;
    styGreen: TcxStyle;
    styDefault: TcxStyle;
    Add1: TMenuItem;
    rptDocList: TppReport;
    ppDocList: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppShape4: TppShape;
    ppShape5: TppShape;
    rbUnpresentedCheques: TppReport;
    plUnpresentedCheques: TppDBPipeline;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLine1: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppShape6: TppShape;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    raCodeModule3: TraCodeModule;
    ppShape7: TppShape;
    ppLabel74: TppLabel;
    ilstDocuments: TImageList;
    procStartTasks: TUniStoredProc;
    aDeleteDataformField: TAction;
    rpMatterNotes: TppReport;
    plMatterNotes: TppDBPipeline;
    ppHeaderBand6: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText48: TppDBText;
    ppRegion1: TppRegion;
    ppLine13: TppLine;
    ppSystemVariable8: TppSystemVariable;
    ppLine14: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    OpenDialog: TOpenDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    ilstToolbar: TImageList;
    popPrecedents: TPopupMenu;
    miPrecEdit: TMenuItem;
    miPrecNew: TMenuItem;
    MatterBarManager: TdxBarManager;
    mnuFile: TdxBarSubItem;
    mnuFileNew: TdxBarSubItem;
    mnuFileNewFee: TdxBarButton;
    mnuFileNewSundry: TdxBarButton;
    mnuFileNewCheque: TdxBarButton;
    mnuFileNewCheqReq: TdxBarButton;
    mnuFileNewReceipt: TdxBarButton;
    mnuFileNewInvoice: TdxBarButton;
    mnuFileNewTask: TdxBarButton;
    mnuFileNewDiary: TdxBarButton;
    mnuFileReopen: TdxBarButton;
    mnuFileAssoc: TdxBarSubItem;
    mnuFileAssocEdit: TdxBarButton;
    mnuFileSnapshot: TdxBarButton;
    mnuFileAutocost: TdxBarButton;
    mnuFilePrint: TdxBarSubItem;
    mnuFilePrintLabel: TdxBarButton;
    mnuFilePrintDetails: TdxBarButton;
    Position1: TdxBarButton;
    mnuFileLedgers: TdxBarSubItem;
    mnuFileLedgerFees: TdxBarButton;
    mnuFileLedgerSundry: TdxBarButton;
    mnuFileLedgerDisb: TdxBarButton;
    mnuFileLedgerDebtors: TdxBarButton;
    mnuFileLedgerTrust: TdxBarButton;
    mnuFileLedgerCombo: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuSearch: TdxBarSubItem;
    mnuSearchFind: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    mnuHelpContents: TdxBarButton;
    mnuHelpSearch: TdxBarButton;
    miShowFieldNames: TdxBarButton;
    dxbtnDisbDebtJournal: TdxBarButton;
    dxbtnTask: TdxBarButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxbtnRefresh: TdxBarButton;
    dxbtnMAtterEdit: TdxBarButton;
    dxbtnCloseMatter: TdxBarButton;
    dxbtnReopenMatter: TdxBarButton;
    dxbtnPrint: TdxBarButton;
    dxbtnClient: TdxBarButton;
    dxbtnTransit: TdxBarButton;
    barbtnAccountPayable: TdxBarButton;
    bbtnEditDataForm: TdxBarButton;
    bbtnClearDataForm: TdxBarButton;
    bbtnPostDataForm: TdxBarButton;
    bbtnCancelDataForm: TdxBarButton;
    bbtnWorkFlow: TdxBarButton;
    bbtnMatterNotes: TdxBarButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    bbtnEMail: TdxBarButton;
    bbtnMSWord: TdxBarButton;
    btnForward: TdxBarButton;
    bbtnDeleteDocument: TdxBarButton;
    bbtnEditDocDescription: TdxBarButton;
    btnAuthorise: TdxBarButton;
    btnUnpresentedCheques: TdxBarButton;
    btnOpenDocument: TdxBarButton;
    bbtnForwadAsLink: TdxBarButton;
    dxBarButton2: TdxBarButton;
    navMatter: TdxBarDBNavigator;
    popReceipt: TdxBarPopupMenu;
    navMatterDetails: TdxBarDBNavigator;
    dxDockingManager1: TdxDockingManager;
    tmrSearch: TTimer;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    plReceipts: TppDBPipeline;
    popCheque: TdxBarPopupMenu;
    aContactEmail: TAction;
    tmrDocSearch: TTimer;
    dxComponentPrinter2: TdxComponentPrinter;
    compPrnFeePie: TdxDBTeeChartReportLink;
    compPrnTimePie: TdxDBTeeChartReportLink;
    popFeeGraphs: TPopupMenu;
    PrintFeeDistributionGraph1: TMenuItem;
    popDistributionGraph: TPopupMenu;
    MenuItem2: TMenuItem;
    dxBarPopupMenuBills: TdxBarPopupMenu;
    btnViewBill: TdxBarButton;
    pmSMS: TPopupMenu;
    SendSMS1: TMenuItem;
    btnSendSMS: TdxBarButton;
    ppDBMemo1: TppDBMemo;
    SendEmail1: TMenuItem;
    btnResearch: TdxBarSubItem;
    btnPrintArchiveLAbel: TdxBarButton;
    pnlTop: TPanel;
    lblMatterNo: TLabel;
    lblClient: TLabel;
    lblDesc: TLabel;
    lblPartner: TLabel;
    lblControl: TLabel;
    lblAuthor: TLabel;
    lblOpCap: TLabel;
    lblPartnerName: TLabel;
    lblAuthorName: TLabel;
    lblControllerName: TLabel;
    lblOperatorName: TLabel;
    lblNoEstFees: TLabel;
    dbmmoLongDescr: TDBMemo;
    progBarFeeTotal: TcxProgressBar;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand8: TppHeaderBand;
    ppDetailBand9: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    pmResetArchiveNum: TPopupMenu;
    ResetArchivedNumber1: TMenuItem;
    JvSelectDirectory1: TJvSelectDirectory;
    FormMgr: TRwMAPIFormManager;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    RwMAPIMsgStoreEvents1: TRwMAPIMsgStoreEvents;
    lblNoEstDisbs: TLabel;
    progBarDisbTotal: TcxProgressBar;
    tmrAutocost: TTimer;
    btnAutoTimer: TdxBarButton;
    cmbAutoTimerTask: TcxDBLookupComboBox;
    lblAutoTimerTask: TLabel;
    bbtnForwardAsPDF: TdxBarButton;
    Label76: TLabel;
    bbtnChangeCreatedDate: TdxBarButton;
    barmgrControlledMonies: TdxBar;
    ilstControlledToolbar: TImageList;
    btnNewControlledMoney: TdxBarButton;
    dxbReceipt: TdxBarButton;
    dxbPayment: TdxBarButton;
    dxBFee: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Report: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppParameterList9: TppParameterList;
    plDep: TppDBPipeline;
    plDepppField1: TppField;
    plDepppField2: TppField;
    plDepppField3: TppField;
    plDepppField4: TppField;
    plDepppField5: TppField;
    plDepppField6: TppField;
    plDepppField7: TppField;
    plDepppField8: TppField;
    plDepppField9: TppField;
    plDepppField10: TppField;
    plDepppField11: TppField;
    plDepppField12: TppField;
    plDepppField13: TppField;
    plDepppField14: TppField;
    plDepppField15: TppField;
    plDepppField16: TppField;
    plDepppField17: TppField;
    rpReceipt: TppReport;
    ppDetailBand11: TppDetailBand;
    ppShape8: TppShape;
    ppLabel92: TppLabel;
    ppDBText47: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppSystemVariable10: TppSystemVariable;
    ppDBImage1: TppDBImage;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppParameterList10: TppParameterList;
    plSystem: TppDBPipeline;
    plSystemppField1: TppField;
    plSystemppField2: TppField;
    plSystemppField3: TppField;
    plSystemppField4: TppField;
    plSystemppField5: TppField;
    plSystemppField6: TppField;
    plSystemppField7: TppField;
    btnCopyDoc: TdxBarButton;
    dxbReversal: TdxBarButton;
    dxbbtnCreateReceipt: TdxBarButton;
    dxBarSubItemNew: TdxBarSubItem;
    dxBarBtnRenameFile: TdxBarButton;
    popEmailDoc: TdxBarPopupMenu;
    qryFeeTmp: TUniQuery;
    qryControlledTotal: TUniQuery;
    dsArchiveLocation: TUniDataSource;
    dsWorkflowTemplates: TUniDataSource;
    qryArchiveType: TUniQuery;
    qryAutoTimerTask: TUniQuery;
    dsAutoTimerTask: TUniDataSource;
    dsTransit: TUniDataSource;
    qryUnconCheqReq: TUniQuery;
    qryUnconCheqReqREQDATE: TDateTimeField;
    qryUnconCheqReqBANK: TStringField;
    qryUnconCheqReqPAYEE: TStringField;
    qryUnconCheqReqDESCR: TStringField;
    qryUnconCheqReqINVOICEDATE: TDateTimeField;
    qryUnconCheqReqBILLED: TStringField;
    qryUnconCheqReqAUTHOR: TStringField;
    qryUnconCheqReqHELD: TStringField;
    qryUnconCheqReqCONVERTED: TStringField;
    qryUnconCheqReqNOTE: TStringField;
    qryUnconCheqReqAMOUNT: TFloatField;
    qryUnconCheqReqTAX: TFloatField;
    qryUnconCheqReqBILLNO: TStringField;
    qryUnconCheqReqSTATUS: TStringField;
    qryUnconCheqReqPAID: TFloatField;
    qryUnconCheqReqPAYABLE: TFloatField;
    qryUnconCheqReqTAXCODE: TStringField;
    qryMatterStatus: TUniQuery;
    qryMatterStatusCODE: TStringField;
    qryMatterStatusDESCR: TStringField;
    dsMatterStatus: TUniDataSource;
    qryArchiveLocation: TUniQuery;
    qryLastTrust: TUniQuery;
    dsCriticalDates: TUniDataSource;
    dsInvoices: TUniDataSource;
    qryInvoices: TUniQuery;
    qryCriticalDates: TUniQuery;
    qryPopDetails: TUniQuery;
    dsReceipts: TUniDataSource;
    qryReceipts: TUniQuery;
    dsMatter: TUniDataSource;
    qryTasks: TUniQuery;
    dsTasks: TUniDataSource;
    tDebtorStatus: TUniTable;
    dsPhonebook: TUniDataSource;
    dsMatterParty: TUniDataSource;
    qryPhoneBook: TUniQuery;
    qryDocList: TUniQuery;
    dsDocList: TUniDataSource;
    qryMatterParty: TUniQuery;
    dsDiary: TUniDataSource;
    qryDocEmails: TUniQuery;
    dsDocEmails: TUniDataSource;
    qrySubBill: TUniQuery;
    dsSubBill: TUniDataSource;
    dsDocs: TUniDataSource;
    qryDocs: TUniQuery;
    qryMatterNotes: TUniQuery;
    qryDebtorNotes: TUniQuery;
    qryPrecCategories: TUniQuery;
    qryGenDocParties: TUniQuery;
    qryTmp: TUniQuery;
    qryPhonebookParty2: TUniQuery;
    qryPhonebookParty3: TUniQuery;
    qMatterDataFields: TUniQuery;
    qListChildren: TUniQuery;
    qryGetSeq: TUniQuery;
    qryPhonebookParty1: TUniQuery;
    qrySingleDoc: TUniQuery;
    qryUnpresentedCheques: TUniQuery;
    qryCreditors: TUniQuery;
    qryCreditorsCREDAMOUNT: TFloatField;
    qryCreditorsCREDAMOUNTNOGST: TFloatField;
    qryAllocs: TUniQuery;
    qryAllocsSPEC_PURPOSE: TFloatField;
    qryTransit: TUniQuery;
    qryNotional: TUniQuery;
    qryCreateDocCopy: TUniQuery;
    qryWorkflowTemplates: TUniQuery;
    dsGenDocParties: TUniDataSource;
    dsAgedDebtors90: TUniDataSource;
    qryBenchmark: TUniQuery;
    qryDep: TUniQuery;
    dsPrecendents: TUniDataSource;
    qryPrecedents: TUniQuery;
    qryAgedDebtors90: TUniQuery;
    dsLedgerBalances: TUniDataSource;
    qryTime: TUniQuery;
    dsArchiveType: TUniDataSource;
    qryMatterWorkflowTasks: TUniQuery;
    dsInvestmentTransactions: TUniDataSource;
    qryInvestmentTransactions: TUniQuery;
    dsDep: TUniDataSource;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    dsUnpresentedCheques: TUniDataSource;
    qryLedgerBalances: TUniQuery;
    dsUnconCheqReq: TDataSource;
    qryDiary: TUniQuery;
    qryMatter: TUniQuery;
    dsMatterAgedDebtors: TUniDataSource;
    prcDeleteDBill: TUniStoredProc;
    qryFees: TUniQuery;
    tblArchiveType: TUniTable;
    dsDebtorStatus: TUniDataSource;
    dsListChildren: TDataSource;
    qryMatterAgedDebtors: TUniQuery;
    srpUpdateBal: TUniScript;
    qrySystem: TUniQuery;
    dsControlledTotal: TUniDataSource;
    dsDebtorNotes: TDataSource;
    dsMatterDataFields: TUniDataSource;
    dsMatterNotes: TDataSource;
    dsSystem: TUniDataSource;
    ppHeaderBand4: TppHeaderBand;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine11: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBRichText2: TppDBRichText;
    ppLine21: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine10: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    raCodeModule2: TraCodeModule;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    qryDocChildren: TUniQuery;
    dsDocChildren: TUniDataSource;
    qryEmailTemplate: TUniQuery;
    pmDocFolders: TPopupMenu;
    AddFolder1: TMenuItem;
    dxbtnAddDoc2Folder: TdxBarButton;
    DeleteFolder1: TMenuItem;
    N1: TMenuItem;
    EditFolder1: TMenuItem;
    dxBarButton1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    btnControlledStatement: TdxBarButton;
    BitBtn2: TBitBtn;
    memoNotesMain: TcxDBRichEdit;
    PrinterLinkBills: TdxGridReportLink;
    progBarFeeCredit: TcxProgressBar;
    btnDelete: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    qryDocVersions: TUniQuery;
    dsDocVersions: TUniDataSource;
    qryCreateDocVersion: TUniQuery;
    qrySearchesList: TUniQuery;
    dsSearchesList: TUniDataSource;
    lblWIPCreditLimit: TLabel;
    lblTotalFeesRecorded: TLabel;
    rptDebtorStmnt: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppDetailBand12: TppDetailBand;
    ppFooterBand8: TppFooterBand;
    ppDesignLayers11: TppDesignLayers;
    ppDesignLayer11: TppDesignLayer;
    ppParameterList11: TppParameterList;
    cxImageList1: TcxImageList;
    dxBarButton4: TdxBarButton;
    cxStyle5: TcxStyle;
    lblClientCode: TcxLabel;
    dblblTitle: TcxDBLabel;
    dblblFileID: TcxDBTextEdit;
    lblClientPhone: TcxLabel;
    dblblPartner: TcxDBLabel;
    dblblController: TcxDBLabel;
    dblblAuthor: TcxDBLabel;
    lblOperator: TcxDBLabel;
    qryDebtorContactDtls: TUniQuery;
    dsDebtorContactDtls: TUniDataSource;
    qryReceiptReqs: TUniQuery;
    dsReceiptReqs: TUniDataSource;
    btnShowProject: TdxBarButton;
    qryProjectScaleLinks: TUniQuery;
    dsProjectScaleLinks: TUniDataSource;
    dsProjectMatter: TUniDataSource;
    qryProjectMatter: TUniQuery;
    dsProjectTemplate: TUniDataSource;
    qryProjectTemplate: TUniQuery;
    qryProjectTasks: TUniQuery;
    dsProjectTasks: TUniDataSource;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    ProjSchedulerDBStorage: TcxSchedulerDBStorage;
    pageMatter: TcxPageControl;
    tabClient: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    lblContact: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    dbtbContact: TcxDBButtonEdit;
    dbtbRefBy: TcxDBButtonEdit;
    dbtbBillTo: TcxDBButtonEdit;
    cxGroupBox1: TcxGroupBox;
    lblPhoneBookKey: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    lInternetEMail: TLabel;
    lInternetWWW: TLabel;
    Label23: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    Label34: TLabel;
    DBText2: TDBText;
    lDateOfBirth: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label87: TLabel;
    dbtbKeyName: TDBEdit;
    dbtbPBName: TDBEdit;
    dbtbTitle: TDBEdit;
    dbmmoNotes: TDBMemo;
    pbEditClient: TBitBtn;
    dbtbMobile: TDBEdit;
    dbtbHomePhone: TDBEdit;
    dbtbFax: TDBEdit;
    dbtbWorkPhone: TDBEdit;
    eInternetEmail: TcxDBButtonEdit;
    eInternetWWW: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    DBEdit5: TDBEdit;
    cxGroupBox2: TcxGroupBox;
    imgClientID: TcxDBImage;
    pagAddress: TcxPageControl;
    tabStreetAddress: TcxTabSheet;
    Label35: TLabel;
    Label36: TLabel;
    lStreetState: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    dbtbCountry: TDBEdit;
    dbtbState: TDBEdit;
    dbtbSuburb: TDBEdit;
    dbmmoAddress: TDBMemo;
    dbtbPostcode: TDBEdit;
    tabPostalAddress: TcxTabSheet;
    Label40: TLabel;
    Label41: TLabel;
    lPostalState: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    dbtbPostalCountry: TDBEdit;
    dbtbPostalState: TDBEdit;
    dbtbPostalSuburb: TDBEdit;
    dbmmoPostalAddress: TDBMemo;
    dbtbPostalPostcode: TDBEdit;
    tabCustomAddress: TcxTabSheet;
    Label55: TLabel;
    lCustomSuburb: TLabel;
    lCustomState: TLabel;
    Label65: TLabel;
    Label64: TLabel;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    tabDX: TcxTabSheet;
    Label25: TLabel;
    Label24: TLabel;
    dbtbDX: TDBEdit;
    dbtbDXloc: TDBEdit;
    tabOverview: TcxTabSheet;
    Label77: TLabel;
    lblsBillFees: TLabel;
    lblsClearTrust: TLabel;
    lblsCreditors: TLabel;
    lblsDebtors: TLabel;
    lblsInvestments: TLabel;
    lblsTrust: TLabel;
    lblsUnbillAntd: TLabel;
    lblsUnbillDisb: TLabel;
    lblsUnbillSundry: TLabel;
    lblsUnconvCheqReq: TLabel;
    lblsWIP: TLabel;
    Label9: TLabel;
    pnlMatterStatus: TPanel;
    Label16: TLabel;
    lblStatus: TLabel;
    lblSubStatus: TLabel;
    Label6: TLabel;
    dblsledate: TDBText;
    Label10: TLabel;
    dblJurisDesc: TLabel;
    dblJuris: TDBText;
    Label62: TLabel;
    dblSubJurisDesc: TLabel;
    dblSubJuris: TDBText;
    Label29: TLabel;
    dblfeebasisDesc: TLabel;
    dblfeebasis: TDBText;
    Label53: TLabel;
    dblfeetemplateDesc: TLabel;
    DBText1: TDBText;
    Label73: TLabel;
    dblfeeCodeDesc: TLabel;
    DBText3: TDBText;
    lblOpened: TLabel;
    lbltbOpened: TLabel;
    lblLastTrustTx: TLabel;
    Label13: TLabel;
    lblCompleted: TLabel;
    lblBranch: TLabel;
    dblblBranch: TDBText;
    Label68: TLabel;
    lblDebtorStatus: TDBText;
    Label78: TLabel;
    DBText4: TDBText;
    lblType: TLabel;
    dblblType: TDBText;
    lblOPRef: TLabel;
    lblTypeDesc: TLabel;
    Label8: TLabel;
    lblExpCompletion: TLabel;
    lblsLastTrans: TLabel;
    lblsLastTrust: TLabel;
    lblFeeRate: TLabel;
    gbCreditLimits: TcxGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label14: TLabel;
    Label32: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    dbtbOPRef: TDBEdit;
    btnAntdLedger: TBitBtn;
    btnCheqreqsLedger: TBitBtn;
    btnComboLedger: TBitBtn;
    btnCreditorRpt: TBitBtn;
    btnDebtLedger: TBitBtn;
    btnDisbLedger: TBitBtn;
    btnFeeLedger: TBitBtn;
    btnSundLedger: TBitBtn;
    btnTransit: TBitBtn;
    btnTrustLedger: TBitBtn;
    btnWIPLedger: TBitBtn;
    cbUnbillBalanceswithGST: TCheckBox;
    pbMatterDetails: TBitBtn;
    cbShowMatterDetails: TCheckBox;
    btnWIPItems: TBitBtn;
    lblUnbillDisb: TcxLabel;
    lblUnbillAntd: TcxLabel;
    lblUnconvertedCheqReq: TcxLabel;
    lblUnbillSund: TcxLabel;
    lblItems: TcxLabel;
    lblWIP: TcxLabel;
    lblCreditors: TcxLabel;
    lblDebtors: TcxLabel;
    lblBillFees: TcxLabel;
    lblNonBillableFees: TcxLabel;
    lblTrust: TcxLabel;
    lblClearTrust1: TcxLabel;
    lblInvestments: TcxLabel;
    lblTotalFeeAlert: TcxLabel;
    tabArchive: TcxTabSheet;
    Label54: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label63: TLabel;
    Label74: TLabel;
    lblArchiveNo: TLabel;
    Label72: TLabel;
    cmbMatterStatus: TcxDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    dbtDateArchived: TcxDBLabel;
    dfArchiveReview: TcxDBDateEdit;
    grdArchiveLocation: TcxGrid;
    tvArchiveLocation: TcxGridDBTableView;
    tvArchiveLocationCREATED: TcxGridDBColumn;
    tvArchiveLocationBARCODE: TcxGridDBColumn;
    tvArchiveLocationFOLDER_DTLS: TcxGridDBColumn;
    tvArchiveLocationARCHIVEBOX: TcxGridDBColumn;
    tvArchiveLocationBOX_DESTROY_DATE: TcxGridDBColumn;
    tvArchiveLocationAUTHORISED_BY: TcxGridDBColumn;
    tvArchiveLocationCHECKED_BY_1: TcxGridDBColumn;
    tvArchiveLocationCHECKED_BY_2: TcxGridDBColumn;
    tvArchiveLocationARCHVLOCN: TcxGridDBColumn;
    tvArchiveLocationNMATTER: TcxGridDBColumn;
    tvArchiveLocationNARCH_LOC: TcxGridDBColumn;
    lvArchiveLocation: TcxGridLevel;
    mlArchiveNotes: TcxDBRichEdit;
    pnlArchiveType: TPanel;
    Label52: TLabel;
    cmbArchiveCode: TcxDBLookupComboBox;
    pnlDestroyedDate: TPanel;
    Label60: TLabel;
    dfArchiveDest: TcxDBDateEdit;
    cxDBLabel9: TcxDBLabel;
    tabBalances: TcxTabSheet;
    Label7: TLabel;
    lblCleared: TLabel;
    lblClearTrust: TLabel;
    Label66: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    btnMaister: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1ADJ0: TcxGridDBColumn;
    cxGrid1DBTableView1ADJ1: TcxGridDBColumn;
    cxGrid1DBTableView1ADJ2: TcxGridDBColumn;
    cxGrid1DBTableView1ADJ3: TcxGridDBColumn;
    cxGrid1DBTableView1ADJ10: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    sgBalance: TStringGrid;
    Label69: TLabel;
    lblRequisitionedTrust: TLabel;
    lblSpecPurpose: TLabel;
    lblTrustBal: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label27: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label46: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label45: TLabel;
    tabParties: TcxTabSheet;
    Panel2: TPanel;
    btnPartyDelete: TBitBtn;
    btnPartyOpen: TBitBtn;
    btnMatterPartyNew: TBitBtn;
    btnPartyRelate: TBitBtn;
    bnWorkflow: TBitBtn;
    bnAddActingFor: TBitBtn;
    bnDeleteActingFor: TBitBtn;
    BitBtn1: TBitBtn;
    tabInvoices: TcxTabSheet;
    Panel3: TPanel;
    btnInvWord: TBitBtn;
    btnInvOpen: TBitBtn;
    btnAutoReceipt: TBitBtn;
    btnDeleteDraft: TBitBtn;
    btnNewInvoice: TBitBtn;
    btnEmailBill: TBitBtn;
    pbViewBill: TBitBtn;
    chkExcludeBillReversals: TcxCheckBox;
    btnDebtorStatement: TBitBtn;
    dbgrInvoices: TcxGrid;
    tvInvoices: TcxGridDBTableView;
    tvInvoicesDISPATCHED: TcxGridDBColumn;
    tvInvoicesREFNO: TcxGridDBColumn;
    tvInvoicesOwing: TcxGridDBColumn;
    tvInvoicesFEES: TcxGridDBColumn;
    tvInvoicesDISB: TcxGridDBColumn;
    tvInvoicesUPCRED: TcxGridDBColumn;
    tvInvoicesANTD: TcxGridDBColumn;
    tvInvoicesSUND: TcxGridDBColumn;
    tvInvoicesTAX: TcxGridDBColumn;
    tvInvoicesTotal: TcxGridDBColumn;
    tvInvoicesTRUST: TcxGridDBColumn;
    tvInvoicesFEES_PAID: TcxGridDBColumn;
    tvInvoicesDISB_PAID: TcxGridDBColumn;
    tvInvoicesUPCRED_PAID: TcxGridDBColumn;
    tvInvoicesANTD_PAID: TcxGridDBColumn;
    tvInvoicesSUND_PAID: TcxGridDBColumn;
    tvInvoicesGENERATED: TcxGridDBColumn;
    tvInvoicesBILL_TO: TcxGridDBColumn;
    tvInvoicesRV_TYPE: TcxGridDBColumn;
    tvInvoicesSPLIT_BILL: TcxGridDBColumn;
    tvInvoicesEXPPAYMENT: TcxGridDBColumn;
    tvInvoicesINV_NOTE: TcxGridDBColumn;
    tvInvoicesNMEMO: TcxGridDBColumn;
    tvInvoicesPATH: TcxGridDBColumn;
    tvSubBills: TcxGridDBTableView;
    tvSubBillsDEBTOR_NAME: TcxGridDBColumn;
    tvSubBillsPERCENTAGE: TcxGridDBColumn;
    tvSubBillsOWING: TcxGridDBColumn;
    tvSubBillsFEES: TcxGridDBColumn;
    tvSubBillsDISB: TcxGridDBColumn;
    tvSubBillsUPCRED: TcxGridDBColumn;
    tvSubBillsANTD: TcxGridDBColumn;
    tvSubBillsSUND: TcxGridDBColumn;
    tvSubBillsTAX: TcxGridDBColumn;
    tvSubBillsTOTAL: TcxGridDBColumn;
    dbgrInvoicesLevel1: TcxGridLevel;
    dbgrInvoicesLevel2: TcxGridLevel;
    tabMatterNotes: TcxTabSheet;
    Panel10: TPanel;
    btnDeleteMatterNote: TcxButton;
    btnEditMatterNote: TcxButton;
    btnAddMatterNotes: TcxButton;
    cxButton5: TcxButton;
    btnMatterNotesRefresh: TcxButton;
    grdMatterNotes: TcxGrid;
    tvMatterNotes: TcxGridDBTableView;
    tvMatterNotesCREATEDBY: TcxGridDBColumn;
    tvMatterNotesCREATED: TcxGridDBColumn;
    tvMatterNotesNOTES: TcxGridDBColumn;
    tvMatterNotesSEQUENCE: TcxGridDBColumn;
    tvMatterNotesDESCR: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    tabFields: TcxTabSheet;
    cxPageControl1: TcxPageControl;
    tabFormData: TcxTabSheet;
    vtMatterData: TVirtualStringTree;
    dxBarDockControl3: TdxBarDockControl;
    tabCalculationData: TcxTabSheet;
    tabDebtorNotes: TcxTabSheet;
    cxgrdDebtorNotes: TcxGrid;
    tvDebtorNotes: TcxGridDBTableView;
    tvDebtorNotesCREATEDBY: TcxGridDBColumn;
    tvDebtorNotesCREATED: TcxGridDBColumn;
    tvDebtorNotesREFNO: TcxGridDBColumn;
    tvDebtorNotesNOTES: TcxGridDBColumn;
    tvDebtorNotesSEQUENCE: TcxGridDBColumn;
    tvDebtorNotesTYPE: TcxGridDBColumn;
    tvDebtorNotesOWING: TcxGridDBColumn;
    cxgrdDebtorNotesLevel1: TcxGridLevel;
    Panel9: TPanel;
    lDebtorStatusCaption: TLabel;
    Label61: TLabel;
    Label37: TLabel;
    Label42: TLabel;
    Label56: TLabel;
    btnDeleteDebtorNotes: TcxButton;
    btnEditDebtorNotes: TcxButton;
    btnAddDebtorNotes: TcxButton;
    btnRefresh: TcxButton;
    btnDebtorNotesPrint: TcxButton;
    cbDebtorStatus: TcxDBLookupComboBox;
    dbtxtExpectedPaymentDate: TDBMemo;
    btnAddFeeNotes: TcxButton;
    rgDisplayOption: TcxRadioGroup;
    eDebtorEmail: TcxDBButtonEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    tabReceipts: TcxTabSheet;
    pageReceipts: TcxPageControl;
    tabReceiptList: TcxTabSheet;
    dbgrReceipts: TcxGrid;
    tvReceipts: TcxGridDBTableView;
    tvReceiptsCREATED: TcxGridDBColumn;
    tvReceiptsACCT: TcxGridDBColumn;
    tvReceiptsREFNO: TcxGridDBColumn;
    tvReceiptsPAYOR: TcxGridDBColumn;
    tvReceiptsDESCR: TcxGridDBColumn;
    tvReceiptsDebit: TcxGridDBColumn;
    tvReceiptsCredit: TcxGridDBColumn;
    tvReceiptsTYPE: TcxGridDBColumn;
    tvReceiptsCLEARANCE: TcxGridDBColumn;
    tvReceiptsNMEMO: TcxGridDBColumn;
    tvReceiptsDBREVERSED: TcxGridDBColumn;
    tvReceiptsDBRCPTNO: TcxGridDBColumn;
    dbgrReceiptsLevel1: TcxGridLevel;
    Panel5: TPanel;
    cxButton2: TcxButton;
    btnPrintGrid: TcxButton;
    btnExportReceiptsToExcel: TcxButton;
    tabReceiptReqs: TcxTabSheet;
    Panel12: TPanel;
    btnReceiptReqCreate: TcxButton;
    btnReceiptReqEdit: TcxButton;
    grdReceiptReqs: TcxGrid;
    tvReceiptReqs: TcxGridDBTableView;
    tvReceiptReqsEXP_DATE: TcxGridDBColumn;
    tvReceiptReqsDESCR: TcxGridDBColumn;
    tvReceiptReqsPAYOR: TcxGridDBColumn;
    tvReceiptReqsAMOUNT: TcxGridDBColumn;
    tvReceiptReqsWHO: TcxGridDBColumn;
    tvReceiptReqsBANK: TcxGridDBColumn;
    tvReceiptReqsCREFNO: TcxGridDBColumn;
    tvReceiptReqsCONVERTED: TcxGridDBColumn;
    tvReceiptReqsNNAME: TcxGridDBColumn;
    tvReceiptReqsNMATTER: TcxGridDBColumn;
    tvReceiptReqsNRECEIPTREQ: TcxGridDBColumn;
    tvReceiptReqsSOURCE_OF_FUNDS_OK: TcxGridDBColumn;
    grdReceiptReqsLevel1: TcxGridLevel;
    tabControlledMoney: TcxTabSheet;
    dxBarDockControl1: TdxBarDockControl;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    Label82: TLabel;
    DBText5: TDBText;
    Label81: TLabel;
    DBText6: TDBText;
    Label80: TLabel;
    Label83: TLabel;
    DBText8: TDBText;
    DBText7: TDBText;
    cxDBNavigator1: TcxDBNavigator;
    dbgrTransactions: TcxGrid;
    tvTransactions: TcxGridDBTableView;
    tvTransactionsNINVTRAN: TcxGridDBColumn;
    tvTransactionsCREATED: TcxGridDBColumn;
    tvTransactionsDESCR: TcxGridDBColumn;
    tvTransactionsTYPE: TcxGridDBColumn;
    tvTransactionsREFERENCE: TcxGridDBColumn;
    tvTransactionsCREDIT: TcxGridDBColumn;
    tvTransactionsDEBIT: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    tabGraph: TcxTabSheet;
    tabByAuthor: TcxPageControl;
    tabBenchmark: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
    tabPrecedents: TcxTabSheet;
    DockSiteMenu: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dockpnlPrecedents: TdxDockPanel;
    lvPrecedentList: TListView;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite5: TdxLayoutDockSite;
    DockPanelPecGrid: TdxDockPanel;
    dbgTemplates: TcxGrid;
    tvTemplates: TcxGridDBTableView;
    tvTemplatesFileName: TcxGridDBColumn;
    tvTemplatesPATH: TcxGridDBColumn;
    tvTemplatesNAME: TcxGridDBColumn;
    tvTemplatesDESCR: TcxGridDBColumn;
    dbgTemplatesLevel1: TcxGridLevel;
    JvPanel1: TJvPanel;
    Label79: TLabel;
    cxLabel2: TcxLabel;
    cmbWorkflowType: TcxLookupComboBox;
    lblCategory: TcxLabel;
    cbUngroupDocList: TcxCheckBox;
    edSearchFileName: TcxTextEdit;
    tabDocs: TcxTabSheet;
    dxDockSite3: TdxDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxLayoutDockSite4: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    Splitter1: TSplitter;
    pageDocuments: TcxPageControl;
    tabGenerated: TcxTabSheet;
    pGenDocuments1: TcxTabSheet;
    DockPanelFolderList: TdxDockPanel;
    tabTransit: TcxTabSheet;
    dbgrTransit: TcxGrid;
    tvTransit: TcxGridDBTableView;
    tvTransitCREATED: TcxGridDBColumn;
    tvTransitRCVD_DATE: TcxGridDBColumn;
    tvTransitRCVD_FROM: TcxGridDBColumn;
    tvTransitPAID_DATE: TcxGridDBColumn;
    tvTransitPAID_TO: TcxGridDBColumn;
    tvTransitAMOUNT: TcxGridDBColumn;
    tvTransitDESCR: TcxGridDBColumn;
    dbgrTransitLevel1: TcxGridLevel;
    Panel8: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    tabSubNames: TcxTabSheet;
    grdSubNames: TcxGrid;
    tvSubNames: TcxGridDBTableView;
    tvSubNamesNNAME: TcxGridDBColumn;
    tvSubNamesSALUTATION: TcxGridDBColumn;
    tvSubNamesSEARCH: TcxGridDBColumn;
    tvSubNamesNAME: TcxGridDBColumn;
    grdSubNamesLevel1: TcxGridLevel;
    tabSearches: TcxTabSheet;
    Panel11: TPanel;
    btnTitleSearch: TBitBtn;
    btnRefreshSearch: TBitBtn;
    grdSearches: TcxGrid;
    tvSearches: TcxGridDBTableView;
    tvSearchesDESCRIPTION: TcxGridDBColumn;
    tvSearchesSTATUS: TcxGridDBColumn;
    tvSearchesDATEORDERED: TcxGridDBColumn;
    tvSearchesORDEREDBY: TcxGridDBColumn;
    tvSearchesTOTALFEETOTAL: TcxGridDBColumn;
    tvSearchesView: TcxGridDBColumn;
    tvSearchesPDF: TcxGridDBColumn;
    tvSearchesONLINEURL: TcxGridDBColumn;
    tvSearchesOnline: TcxGridDBColumn;
    tvSearchesSEARCH_ID: TcxGridDBColumn;
    tvSearchesREFERENCE: TcxGridDBColumn;
    tvSearchesCLIENTID: TcxGridDBColumn;
    tvSearchesSEQUENCENUMBER: TcxGridDBColumn;
    tvSearchesORDERID: TcxGridDBColumn;
    grdSearchesLevel1: TcxGridLevel;
    tabProject: TcxTabSheet;
    pageProjectTasks: TcxPageControl;
    tsGanttChart: TcxTabSheet;
    ProjectsScheduler: TcxScheduler;
    tsProjectTaskGrid: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    tabDiary: TcxTabSheet;
    Panel4: TPanel;
    btnNewDiary: TcxButton;
    dbgrDiary: TcxGrid;
    tvDiary: TcxGridDBTableView;
    tvDiarySTART_DT: TcxGridDBColumn;
    tvDiaryREMINDER_FOR: TcxGridDBColumn;
    tvDiaryDESCR: TcxGridDBColumn;
    tvDiaryPRIORITY: TcxGridDBColumn;
    dbgrDiaryLevel1: TcxGridLevel;
    tabEmails: TcxTabSheet;
    grdEmails: TcxGrid;
    tvEmails: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tabTasks: TcxTabSheet;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    btnTaskEdit: TBitBtn;
    btnDeleteTask: TBitBtn;
    grdTasks: TcxGrid;
    tvTasks: TcxGridDBTableView;
    tvTasksAUTHOR: TcxGridDBColumn;
    tvTasksSTATUS: TcxGridDBColumn;
    tvTasksDESCR: TcxGridDBColumn;
    tvTasksDAYS: TcxGridDBColumn;
    tvTasksCOMMENCE: TcxGridDBColumn;
    tvTasksDUE: TcxGridDBColumn;
    tvTasksSTARTED: TcxGridDBColumn;
    tvTasksFINISHED: TcxGridDBColumn;
    tvTasksSKIPPED: TcxGridDBColumn;
    tvTasksCODE: TcxGridDBColumn;
    tvTasksNTASK: TcxGridDBColumn;
    tvTasksNMATTER: TcxGridDBColumn;
    lvTasks: TcxGridLevel;
    tabCriticalDates: TcxTabSheet;
    dbgrCriticalDates: TcxGrid;
    tvCriticalDates: TcxGridDBTableView;
    tvCriticalDatesDescr: TcxGridDBColumn;
    tvCriticalDatesDBDate: TcxGridDBColumn;
    dbgrCriticalDatesLevel1: TcxGridLevel;
    Panel13: TPanel;
    vtContacts: TVirtualStringTree;
    pnlProjectStats: TPanel;
    lblTotalProjTime: TcxLabel;
    lblTotalProjValue: TcxLabel;
    tvProjectTaskItems1AUTHOR: TcxGridDBColumn;
    pnlDocsGenerated: TPanel;
    cxButton1: TcxButton;
    dbgrDocs: TcxGrid;
    tvEmailAttachments: TcxGridDBTableView;
    tvEmailAttachmentsColumn1: TcxGridDBColumn;
    tvEmailAttachmentsDOCID: TcxGridDBColumn;
    tvEmailAttachmentsDOC_NAME: TcxGridDBColumn;
    tvEmailAttachmentsD_CREATE: TcxGridDBColumn;
    tvEmailAttachmentsAUTH1: TcxGridDBColumn;
    tvEmailAttachmentsDESCR: TcxGridDBColumn;
    tvEmailAttachmentsOT_VERSION: TcxGridDBColumn;
    tvEmailAttachmentsD_MODIF: TcxGridDBColumn;
    tvEmailAttachmentsAUTH2: TcxGridDBColumn;
    tvEmailAttachmentsEMAIL_SENT_TO: TcxGridDBColumn;
    tvEmailAttachmentsNPRECCATEGORY: TcxGridDBColumn;
    tvEmailAttachmentsNPRECCLASSIFICATION: TcxGridDBColumn;
    tvEmailAttachmentsDOC_NOTES: TcxGridDBColumn;
    tvParties: TcxGridDBTableView;
    tvPartiesPARTYTYPE: TcxGridDBColumn;
    tvPartiesSEARCH: TcxGridDBColumn;
    tvPartiesTASKSEQUENCE: TcxGridDBColumn;
    tvPartiesTASKDESCRIPTION: TcxGridDBColumn;
    tvPartiesWORKFLOWGENDOCUMENT: TcxGridDBColumn;
    tvDocs: TcxGridDBBandedTableView;
    tvDocsColumn1: TcxGridDBBandedColumn;
    tvDocsDOCID: TcxGridDBBandedColumn;
    tvDocsDOC_NAME: TcxGridDBBandedColumn;
    tvDocsOT_VERSION: TcxGridDBBandedColumn;
    tvDocsD_CREATE: TcxGridDBBandedColumn;
    tvDocsAUTH1: TcxGridDBBandedColumn;
    tvDocsDESCR: TcxGridDBBandedColumn;
    tvDocsAUTH2: TcxGridDBBandedColumn;
    tvDocsD_MODIF: TcxGridDBBandedColumn;
    tvDocsEMAIL_SENT_TO: TcxGridDBBandedColumn;
    tvDocsEMAIL_FROM: TcxGridDBBandedColumn;
    tvDocsURL: TcxGridDBBandedColumn;
    tvDocsNPRECCATEGORY: TcxGridDBBandedColumn;
    tvDocsNPRECCLASSIFICATION: TcxGridDBBandedColumn;
    tvDocsDOC_NOTES: TcxGridDBBandedColumn;
    tvDocsEXTERNAL_ACCESS: TcxGridDBBandedColumn;
    tvDocsPRINT: TcxGridDBBandedColumn;
    tvDocsFILEID: TcxGridDBBandedColumn;
    tvDocsDISPLAY_PATH: TcxGridDBBandedColumn;
    tvDocsPATH: TcxGridDBBandedColumn;
    tvDocsPARENTDOCID: TcxGridDBBandedColumn;
    tvDocsFILE_EXTENSION: TcxGridDBBandedColumn;
    dbgrDocsDBTableView1: TcxGridDBTableView;
    tvDocsVersion: TcxGridDBTableView;
    tvDocsVersionDOCID: TcxGridDBColumn;
    tvDocsVersionD_CREATE: TcxGridDBColumn;
    tvDocsVersionDOC_NAME: TcxGridDBColumn;
    tvDocsVersionOT_VERSION: TcxGridDBColumn;
    tvDocsVersionAUTH1: TcxGridDBColumn;
    tvDocsVersionD_MODIF: TcxGridDBColumn;
    tvDocsVersionAUTH2: TcxGridDBColumn;
    tvDocsVersionDESCR: TcxGridDBColumn;
    tvDocsVersionPRECEDENT_DETAILS: TcxGridDBColumn;
    tvDocsVersionNPRECCLASSIFICATION: TcxGridDBColumn;
    tvDocsVersionNMATTER: TcxGridDBColumn;
    dbgrDocsLevel1: TcxGridLevel;
    dbgrDocsLevel3: TcxGridLevel;
    dbgrDocsLevel2: TcxGridLevel;
    pnlDocGeneratedBtns: TPanel;
    CheckBox1: TCheckBox;
    btnPrecSearch: TBitBtn;
    btnDocAdd: TBitBtn;
    cxLabel3: TcxLabel;
    edDocSearch: TcxTextEdit;
    cbGroupExpanded: TcxCheckBox;
    btnDocumentImport: TBitBtn;
    btnDocPrint: TBitBtn;
    btnCreateBrief: TBitBtn;
    chkPreviewPane: TCheckBox;
    pnlProject: TPanel;
    gedProjects: TcxGrid;
    tvProjects: TcxGridDBTableView;
    tvProjectsNPROJECTTEMPL: TcxGridDBColumn;
    tvProjectsSTART_DATE: TcxGridDBColumn;
    lvProjects: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    pnlQuoteGrid: TPanel;
    gridTaskQuoting: TcxGrid;
    tvTaskQuoting: TcxGridTableView;
    tvTaskQuotingDESCR: TcxGridColumn;
    tvTaskQuotingMIN_EST: TcxGridColumn;
    tvTaskQuotingMAX_EST: TcxGridColumn;
    lvTaskQuoting: TcxGridLevel;
    btnGenerateQuote: TcxButton;
    popEmailAttachments: TPopupMenu;
    popEmailAsAttachment: TMenuItem;
    qryProjectMatterQuote: TUniQuery;
    cxSchedulerGridConnection1: TcxSchedulerGridConnection;
    popEmaildAttchDocs: TdxBarPopupMenu;
    dxbtn: TdxBarButton;
    tvEmailAttachmentsPATH: TcxGridDBColumn;
    dxBarEmailAsAttach: TdxBarButton;
    dxBarEmailAttchAsPDF: TdxBarButton;
    ProjSchedulerDBStorageTasks: TcxSchedulerDBStorage;
    qryFeeTasks: TUniQuery;
    dsFeeTasks: TUniDataSource;
    popTasksView: TPopupMenu;
    pmNewTask: TMenuItem;
    E1: TMenuItem;
    N3: TMenuItem;
    DeleteEntry1: TMenuItem;
    qryScalecostDocCount: TUniQuery;
    tvProjectTaskItems: TcxGridTableView;
    cxScheduler: TcxSchedulerStorage;
    dxbtnDocsAsZip: TdxBarButton;
    qryCompleteTask: TUniQuery;
    tvProjectTaskItemscxGridColumn1: TcxGridColumn;
    tvProjectTaskItemscxGridColumn2: TcxGridColumn;
    tvProjectTaskItemscxGridColumn3: TcxGridColumn;
    tvProjectTaskItemscxGridColumn4: TcxGridColumn;
    tvProjectTaskItemscxGridColumn5: TcxGridColumn;
    tvProjectTaskItemscxGridColumn6: TcxGridColumn;
    tvProjectTaskItemscxGridColumn7: TcxGridColumn;
    tvProjectTaskItemscxGridColumn8: TcxGridColumn;
    tvProjectTaskItemscxGridColumn9: TcxGridColumn;
    tvProjectTaskItemscxGridColumn10: TcxGridColumn;
    tvProjectTaskItemscxGridColumn11: TcxGridColumn;
    tvProjectTaskItemscxGridColumn12: TcxGridColumn;
    tvProjectTaskItemscxGridColumn13: TcxGridColumn;
    tvProjectTaskItemscxGridColumn14: TcxGridColumn;
    tvProjectTaskItemscxGridColumn15: TcxGridColumn;
    tvProjectTaskItemscxGridColumn16: TcxGridColumn;
    tvProjectTaskItemscxGridColumn17: TcxGridColumn;
    tvProjectTaskItemscxGridColumn18: TcxGridColumn;
    tvProjectTaskItemscxGridColumn19: TcxGridColumn;
    tvProjectTaskItemscxGridColumn20: TcxGridColumn;
    tvProjectTaskItemscxGridColumn21: TcxGridColumn;
    tvProjectTaskItemscxGridColumn22: TcxGridColumn;
    tvProjectTaskItemscxGridColumn23: TcxGridColumn;
    tvProjectTaskItemscxGridColumn24: TcxGridColumn;
    tvProjectTaskItemscxGridColumn25: TcxGridColumn;
    tvProjectTaskItemscxGridColumn26: TcxGridColumn;
    tvProjectTaskItemscxGridColumn27: TcxGridColumn;
    tvProjectTaskItemscxGridColumn28: TcxGridColumn;
    tvProjectTaskItemscxGridColumn29: TcxGridColumn;
    tvProjectTaskItemscxGridColumn30: TcxGridColumn;
    tvProjectTaskItemscxGridColumn31: TcxGridColumn;
    tvProjectTaskItemscxGridColumn32: TcxGridColumn;
    tvProjectTaskItemscxGridColumn33: TcxGridColumn;
    tvProjectTaskItemscxGridColumn34: TcxGridColumn;
    tvProjectTaskItemscxGridColumn35: TcxGridColumn;
    tvProjectTaskItemscxGridColumn36: TcxGridColumn;
    tvProjectTaskItemscxGridColumn37: TcxGridColumn;
    tvProjectTaskItemscxGridColumn38: TcxGridColumn;
    tvProjectTaskItemscxGridColumn39: TcxGridColumn;
    tvProjectTaskItemscxGridColumn40: TcxGridColumn;
    tvProjectTaskItemscxGridColumn41: TcxGridColumn;
    tvProjectTaskItemscxGridColumn42: TcxGridColumn;
    tvProjectTaskItemscxGridColumn43: TcxGridColumn;
    tvProjectTaskItemscxGridColumn44: TcxGridColumn;
    tvProjectTaskItemscxGridColumn45: TcxGridColumn;
    tvProjectTaskItemscxGridColumn46: TcxGridColumn;
    tvProjectTaskItemscxGridColumn47: TcxGridColumn;
    tvProjectTaskItemscxGridColumn48: TcxGridColumn;
    tvProjectTaskItemscxGridColumn49: TcxGridColumn;
    tvProjectTaskItemscxGridColumn50: TcxGridColumn;
    tvProjectTaskItemscxGridColumn51: TcxGridColumn;
    tvProjectTaskItemscxGridColumn52: TcxGridColumn;
    tvProjectTaskItemscxGridColumn53: TcxGridColumn;
    tvProjectTaskItemscxGridColumn54: TcxGridColumn;
    tvProjectTaskItemscxGridColumn55: TcxGridColumn;
    tvProjectTaskItemscxGridColumn56: TcxGridColumn;
    tvProjectTaskItemscxGridColumn57: TcxGridColumn;
    tvProjectTaskItemscxGridColumn58: TcxGridColumn;
    tvProjectTaskItemscxGridColumn59: TcxGridColumn;
    tvProjectTaskItemscxGridColumn60: TcxGridColumn;
    tvProjectTaskItemscxGridColumn61: TcxGridColumn;
    tvProjectTaskItemscxGridColumn62: TcxGridColumn;
    lblProspectiveMatter: TcxLabel;
    qryReceiptRpt: TUniQuery;
    dsReceiptRpt: TUniDataSource;
    rptReceipt: TppReport;
    ppParameterList12: TppParameterList;
    ppDesignLayers12: TppDesignLayers;
    ppDesignLayer12: TppDesignLayer;
    ppHeaderBand11: TppHeaderBand;
    ppDetailBand13: TppDetailBand;
    ppFooterBand9: TppFooterBand;
    ppLine22: TppLine;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppDBText35: TppDBText;
    ppLabel104: TppLabel;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppLine23: TppLine;
    ppSystemVariable12: TppSystemVariable;
    ppSystemVariable13: TppSystemVariable;
    actRelate: TAction;
    tabAuthorChange: TcxTabSheet;
    dbgrMatterAuthor: TcxGrid;
    tvMatterAuthor: TcxGridDBTableView;
    tvMatterAuthor_AuthorNew: TcxGridDBColumn;
    tvMatterAuthor_AuthorOld: TcxGridDBColumn;
    tvMatterAuthor_Modified: TcxGridDBColumn;
    tvMatterAuthor_MODBY: TcxGridDBColumn;
    dbgrMatterAuthorLevel1: TcxGridLevel;
    Panel6: TPanel;
    cxButton3: TcxButton;
    qryMatterAuthor: TUniQuery;
    dsMatterAuthor: TUniDataSource;
    rptMatterAuthor: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppImage1: TppImage;
    ppLine16: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLine15: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppLabel80: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel81: TppLabel;
    ppDesignLayers10: TppDesignLayers;
    ppDesignLayer10: TppDesignLayer;
    ppParameterList7: TppParameterList;
    plMatterAuthor: TppDBPipeline;
    plMatterAuthorppField1: TppField;
    plMatterAuthorppField2: TppField;
    plMatterAuthorppField3: TppField;
    plMatterAuthorppField4: TppField;
    Label57: TLabel;
    lblOpenedBy: TLabel;
    RemoveDocsfromFolder1: TMenuItem;
    qryFldTmp: TUniQuery;
    cxLabel4: TcxLabel;
    cxDBLabel11: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxLabel5: TcxLabel;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBChartView1: TcxGridDBChartView;
    cxGrid2DBChartView2: TcxGridDBChartView;
    dsFees: TUniDataSource;
    cxGrid2DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBChartView1: TcxGridDBChartView;
    dsTimePieChart: TUniDataSource;
    cxGrid3DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBChartView1: TcxGridDBChartView;
    dsBenchmarkGraph: TUniDataSource;
    cxGrid4DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBChartView1: TcxGridDBChartView;
    dsNotionalGraph: TUniDataSource;
    cxGrid5DBChartView1Series1: TcxGridDBChartSeries;
    cxLabel6: TcxLabel;
    aProject: TAction;
    chkDataFormsExpanded: TcxBarEditItem;
    lblConflictCheckCompleted: TLabel;
    dxSelectConflict: TdxBarButton;
    RestClientt: TRestClientt;
    pnlPreview: TJamFilePreview;
    lvFolders: TcxDBTreeList;
    qryFolders: TUniQuery;
    dsFolders: TUniDataSource;
    cxDBTreeList1DESCR: TcxDBTreeListColumn;
    cxDBTreeList1FOLDER_ID: TcxDBTreeListColumn;
    cxDBTreeList1PARENT_ID: TcxDBTreeListColumn;
    cxDBTreeList1FOLDER_LEVEL: TcxDBTreeListColumn;
    procedure tbtnFindClick(Sender: TObject);
    procedure pageMatterChange(Sender: TObject);
    procedure tbtnSnapshotClick(Sender: TObject);
    procedure dbgrDocsDblClick(Sender: TObject);
    procedure tbtnFeeClick(Sender: TObject);
    procedure tbtnDiaryClick(Sender: TObject);
    procedure tbtnSundryClick(Sender: TObject);
    procedure tbtnInvoiceClick(Sender: TObject);
    procedure btnFeeLedgerClick(Sender: TObject);
    procedure btnSundLedgerClick(Sender: TObject);
    procedure btnDisbLedgerClick(Sender: TObject);
    procedure btnTrustLedgerClick(Sender: TObject);
    procedure tbtnCheqReqClick(Sender: TObject);
    procedure btnDebtLedgerClick(Sender: TObject);
    procedure btnComboLedgerClick(Sender: TObject);
    procedure mnuFileOpenClick(Sender: TObject);
    procedure mnuFileNewFeeClick(Sender: TObject);
    procedure mnuFileNewSundryClick(Sender: TObject);
    procedure mnuFileNewCheqReqClick(Sender: TObject);
    procedure mnuFileNewInvoiceClick(Sender: TObject);
    procedure mnuFileNewDiaryClick(Sender: TObject);
    procedure mnuFileSnapshotClick(Sender: TObject);
    procedure mnuFileLedgerFeesClick(Sender: TObject);
    procedure mnuFileLedgerSundryClick(Sender: TObject);
    procedure mnuFileLedgerDisbClick(Sender: TObject);
    procedure mnuFileLedgerDebtorsClick(Sender: TObject);
    procedure mnuFileLedgerTrustClick(Sender: TObject);
    procedure mnuFileLedgerComboClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure mnuSearchFindClick(Sender: TObject);
    procedure mnuReopen(Sender: TObject);
    procedure mnuOpenAssociated(Sender: TObject);
    procedure qryInvoicesCalcFields(DataSet: TDataSet);
    procedure btnNewInvoiceClick(Sender: TObject);
    procedure btnInvOpenClick(Sender: TObject);
    procedure dbgrInvoicesDblClick(Sender: TObject);
    procedure qryMatterAfterScroll(DataSet: TDataSet);
    procedure btnNewDiaryClick(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure btnInvWordClick(Sender: TObject);
    procedure tmrRefreshTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuFilePrintLabelClick(Sender: TObject);
    procedure mnuFilePrintDetailsClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tbtnAssociateClick(Sender: TObject);
    procedure mnuFileAssocEditClick(Sender: TObject);
    procedure dbgrMatterPartyDblClick(Sender: TObject);
    procedure btnPartyOpenClick(Sender: TObject);
    procedure btnMatterPartyNewClick(Sender: TObject);
    procedure btnAutoReceiptClick(Sender: TObject);
    procedure qryReceiptsCalcFields(DataSet: TDataSet);
    procedure dbgrDiaryDblClick(Sender: TObject);
    procedure qryDiaryDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryMatterBeforeScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryMatterBeforeClose(DataSet: TDataSet);
    procedure btnContactClick(Sender: TObject);
    procedure btnOParty1Click(Sender: TObject);
    procedure btnOParty2Click(Sender: TObject);
    procedure btnOParty3Click(Sender: TObject);
    procedure btnRefByClick(Sender: TObject);
    procedure btnBillToClick(Sender: TObject);
{    procedure dbgrInvoicesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);   }
    procedure qryMatterCalcFields(DataSet: TDataSet);
    procedure btnAntdLedgerClick(Sender: TObject);
    procedure pagPartiesChange(Sender: TObject);
    procedure btnMaisterClick(Sender: TObject);
    procedure tbtnChequeClick(Sender: TObject);
    procedure tbtnReceiptClick(Sender: TObject);
    procedure tbtnMatterEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryInvoicesAfterScroll(DataSet: TDataSet);
    procedure btnDeleteDraftClick(Sender: TObject);
    procedure tbnCloseMatterClick(Sender: TObject);
    procedure btnModifyCreateNewClick(Sender: TObject);
    procedure btnWIPLedgerClick(Sender: TObject);
    procedure btnCreateNewDFClick(Sender: TObject);
    procedure qryDocsAfterScroll(DataSet: TDataSet);
    procedure ChequeClick(Sender: TObject);
    procedure ReceiptClick(Sender: TObject);
    procedure tbtnDisbDebtJournalClick(Sender: TObject);
    procedure tbtnClientClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrecSearchClick(Sender: TObject);
//    procedure obarDocumentsItemClick(Sender: TObject);
//    procedure obarDocumentsChange(Sender: TObject);
    procedure qryPrecedentsCalcFields(DataSet: TDataSet);
    procedure dbgTemplatesDblClick(Sender: TObject);
    procedure miPrecEditClick(Sender: TObject);
    procedure miPrecNewClick(Sender: TObject);
    procedure mnuPrecCatSearchClick(Sender: TObject);
    procedure tbtnAutoCostClick(Sender: TObject);
    procedure btnCategoriesClick(Sender: TObject);
    procedure btnDocAddClick(Sender: TObject);
    procedure btnClientEditClick(Sender: TObject);
    procedure btnCreditorRptClick(Sender: TObject);
    procedure tbtnTransitClick(Sender: TObject);
    procedure sgBalanceDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsMatterDataChange(Sender: TObject; Field: TField);
    procedure dbgrTransitDblClick(Sender: TObject);
    procedure btnReopenMatterClick(Sender: TObject);
    procedure btnTransitClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure miViewCheqreqHistoryforMatterClick(Sender: TObject);
    procedure pmCheqreqsPopup(Sender: TObject);
    procedure qryMatterPartyAfterOpen(DataSet: TDataSet);
    procedure qryMatterPartyAfterRefresh(DataSet: TDataSet);
    procedure vtContactsGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vtContactsPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure vtContactsCollapsing(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var Allowed: Boolean);
    procedure qMatterDataFieldsAfterOpen(DataSet: TDataSet);
    procedure qMatterDataFieldsBeforeClose(DataSet: TDataSet);
    procedure qMatterDataFieldsAfterRefresh(DataSet: TDataSet);
    procedure vtMatterDataGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);

    procedure aDataFormsEditExecute(Sender: TObject);
    procedure aDataFormsEditUpdate(Sender: TObject);
    procedure aDataFormsClearExecute(Sender: TObject);
    procedure aDataFormsClearUpdate(Sender: TObject);
    procedure aDataFormsCancelExecute(Sender: TObject);
    procedure aDataFormsCancelUpdate(Sender: TObject);
    procedure aDataFormsPostExecute(Sender: TObject);
    procedure vtMatterDataExit(Sender: TObject);
    procedure vtMatterDataEnter(Sender: TObject);
    procedure vtMatterDataEditing(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure vtMatterDataCreateEditor(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
    procedure vtMatterDataColumnClick(Sender: TBaseVirtualTree;
      Column: TColumnIndex; Shift: TShiftState);
    procedure vtMatterDataPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure aShowFieldNamesUpdate(Sender: TObject);
    procedure aShowFieldNamesExecute(Sender: TObject);
    procedure btnAddDebtorNotesClick(Sender: TObject);
    procedure btnDebtorNotesPrintClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure lvDiaryDblClick(Sender: TObject);
    procedure tcDiaryChange(Sender: TObject);
    procedure pageMatterChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure mnuRemoveTransitClick(Sender: TObject);
    procedure aWorkFlowExecute(Sender: TObject);
    procedure vtContactsGetHint(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure aActingForAddUpdate(Sender: TObject);
    procedure aActingForDeleteUpdate(Sender: TObject);
    procedure aActingForAddExecute(Sender: TObject);
    procedure aActingForDeleteExecute(Sender: TObject);
    procedure pbEditClientClick(Sender: TObject);
    procedure CMDialogKey(Var Msg: TWMKey); message CM_DIALOGKEY;
    procedure vtMatterDataChange(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure aDeletePartyExecute(Sender: TObject);
    procedure aDeletePartyUpdate(Sender: TObject);
    procedure tabDebtorNotesShow(Sender: TObject);
    procedure Position1Click(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel24GetText(Sender: TObject; var Text: String);
    procedure ppLabel25GetText(Sender: TObject; var Text: String);
    procedure ppLabel26GetText(Sender: TObject; var Text: String);
    procedure ppLabel27GetText(Sender: TObject; var Text: String);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure btnCheqreqsLedgerClick(Sender: TObject);
    procedure lblUnderlineEnter(Sender: TObject);
    procedure lblUnderlineLeave(Sender: TObject);
    procedure lblHelpMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure qryMatterAfterEdit(DataSet: TDataSet);
    procedure rbRptUnconCheqReqBeforePrint(Sender: TObject);
    procedure ppTotalCalc(Sender: TObject; var Value: Variant);
    procedure ppOwingCalc(Sender: TObject; var Value: Variant);
    procedure ppPayableCalc(Sender: TObject; var Value: Variant);
    procedure tvSubNamesDblClick(Sender: TObject);
    procedure dxbtnRefreshClick(Sender: TObject);
    procedure dxbtnMAtterEditClick(Sender: TObject);
    procedure dxbtnCloseMatterClick(Sender: TObject);
    procedure dxbtnReopenMatterClick(Sender: TObject);
    procedure dxbtnClientClick(Sender: TObject);
    procedure dxbtnPrintClick(Sender: TObject);
    procedure mnuFileAutocostClick(Sender: TObject);
    procedure dxbtnTransitClick(Sender: TObject);
    procedure popChequePopup(Sender: TObject);
    procedure mnuFileNewReceiptClick(Sender: TObject);
    procedure popReceiptPopup(Sender: TObject);
    procedure dxbtnTaskClick(Sender: TObject);
    procedure dxBarDBNavPrev1Click(Sender: TObject);
    procedure dxBarDBNavFirst1Click(Sender: TObject);
    procedure dxBarDBNavLast1Click(Sender: TObject);
    procedure dxBarDBNavNext1Click(Sender: TObject);
    procedure tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems8GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure barbtnAccountPayableClick(Sender: TObject);
    procedure btnEditDebtorNotesClick(Sender: TObject);
    procedure tvDebtorNotesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteDebtorNotesClick(Sender: TObject);
    procedure CRTemp_qryCriticalDatesCRITICAL_DATEValidate(Sender: TField);
    procedure NoLongerRequired1Click(Sender: TObject);
    procedure showCriticalDateTab;
    procedure CRTemp_qryCriticalDatesFINISHEDChange(Sender: TField);
    procedure bbtnMatterNotesClick(Sender: TObject);
    procedure ppLabel40GetText(Sender: TObject; var Text: String);
    procedure dxBarDBNavPost1Click(Sender: TObject);
    procedure dxNavBar1ActiveGroupChanged(Sender: TObject);
    procedure tvTemplatesDblClick(Sender: TObject);
    procedure Label33Click(Sender: TObject);
    procedure bbtnEMailClick(Sender: TObject);
    procedure dxNavBar1LinkClick(Sender: TObject;
      ALink: TdxNavBarItemLink);
    procedure btnDocEditClick(Sender: TObject);
    procedure bbtnMSWordClick(Sender: TObject);
    procedure tabDocsShow(Sender: TObject);
    procedure btnForwardClick(Sender: TObject);
    procedure tvDocsKeyPress(Sender: TObject; var Key: Char);
    procedure cmbWorkflowTypePropertiesChange(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure popTransitPopup(Sender: TObject);
    procedure lvPrecedentListClick(Sender: TObject);
    procedure cbUngroupDocListClick(Sender: TObject);
    procedure edSearchFileNamePropertiesChange(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure pagPartiesPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure pageMatterPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure tvDocsStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure bbtnEditDocDescriptionClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvInvoicesDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure popEmailDocPopup(Sender: TObject);
    procedure btnAuthoriseClick(Sender: TObject);
    procedure popBillsPopup(Sender: TObject);
    procedure btnDocPrintClick(Sender: TObject);
    procedure ppLabel56GetText(Sender: TObject; var Text: String);
    procedure tvEmailsDblClick(Sender: TObject);
    procedure lblsWIPClick(Sender: TObject);
    procedure btnUnpresentedChequesClick(Sender: TObject);
    procedure ppLabel74GetText(Sender: TObject; var Text: String);
    procedure tvCriticalDatesDBDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvCriticalDatesFinishedPropertiesChange(Sender: TObject);
    procedure bbtnForwadAsLinkClick(Sender: TObject);
    procedure dbtbBillToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbContactPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbRefByPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure aDeleteDataformFieldExecute(Sender: TObject);
    procedure eInternetEmailPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eInternetWWWPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAddMatterNotesClick(Sender: TObject);
    procedure btnEditMatterNoteClick(Sender: TObject);
    procedure btnDeleteMatterNoteClick(Sender: TObject);
    procedure btnMatterNotesRefreshClick(Sender: TObject);
    procedure tvMatterNotesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton5Click(Sender: TObject);
    procedure btnExportReceiptsToExcelClick(Sender: TObject);
    procedure btnPrintGridClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
//    procedure tvDocs1DblClick(Sender: TObject);
    procedure tvDocsDblClick(Sender: TObject);
    procedure edDocSearchPropertiesChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure aContactEmailExecute(Sender: TObject);
    procedure aContactEmailUpdate(Sender: TObject);
    procedure tmrDocSearchTimer(Sender: TObject);
    procedure tvDocsDataControllerGroupingChanged(Sender: TObject);
    procedure PrintFeeDistributionGraph1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure btnViewBillClick(Sender: TObject);
    procedure qryArchiveLocationAfterInsert(DataSet: TDataSet);
    procedure qryArchiveLocationAfterEdit(DataSet: TDataSet);
    procedure tvDebtorNotesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSendSMSClick(Sender: TObject);
    procedure qryPopDetailsNewRecord(DataSet: TDataSet);
    procedure SendSMS1Click(Sender: TObject);
    procedure btnEmailBillClick(Sender: TObject);
    procedure dxBarPopupMenuBillsPopup(Sender: TObject);
    procedure pbViewBillClick(Sender: TObject);
    procedure btnPrintArchiveLAbelClick(Sender: TObject);
    procedure pmSMSPopup(Sender: TObject);
    procedure btnReceiptReqCreateClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure ResetArchivedNumber1Click(Sender: TObject);
    procedure btnDocumentImportClick(Sender: TObject);
    procedure FormMgrBeforeSubmitMessage(Sender: TObject;
      const MessageSite: IRwMapiMessageSite);
    procedure FormMgrCreateMessage(Sender: TObject;
      const MessageSite: IRwMapiMessageSite);
    procedure tvReceiptsStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tvInvoicesStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure vtContactsGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vtMatterDataGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vtMatterDataNewText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; NewText: string);
    procedure cmbWorkflowTypePropertiesEditValueChanged(Sender: TObject);
    procedure cbUnbillBalanceswithGSTClick(Sender: TObject);
    procedure FormMgrNewMessage(Sender: TObject;
      const MessageSite: IRwMAPIMessageSite);
    procedure FormMgrBeforeSaveMessage(Sender: TObject;
      const MessageSite: IRwMAPIMessageSite);
    procedure BitBtn3Click(Sender: TObject);
    procedure tmrAutocostTimer(Sender: TObject);
    procedure qryFeeTmpAfterInsert(DataSet: TDataSet);
    procedure btnAutoTimerClick(Sender: TObject);
    procedure cmbAutoTimerTaskPropertiesCloseUp(Sender: TObject);
    procedure bbtnForwardAsPDFClick(Sender: TObject);
    procedure btnCreateBriefClick(Sender: TObject);
    procedure btnOpenDocumentClick(Sender: TObject);
    procedure bbtnChangeCreatedDateClick(Sender: TObject);
    procedure bbtnDeleteDocumentClick(Sender: TObject);
    procedure chkPreviewPaneClick(Sender: TObject);
    procedure btnNewControlledMoneyClick(Sender: TObject);
    procedure dxbReceiptClick(Sender: TObject);
    procedure qryControlledTotalAfterOpen(DataSet: TDataSet);
    procedure dxbPaymentClick(Sender: TObject);
    procedure dxBFeeClick(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure qryInvestmentTransactionsAfterOpen(DataSet: TDataSet);
    procedure btnCopyDocClick(Sender: TObject);
    procedure cbGroupExpandedClick(Sender: TObject);
    procedure dxbReversalClick(Sender: TObject);
    procedure btnTaskEditClick(Sender: TObject);
    procedure tvTasksDblClick(Sender: TObject);
    procedure chkExcludeBillReversalsClick(Sender: TObject);
    procedure dxBarBtnRenameFileClick(Sender: TObject);
    procedure btnDeleteTaskClick(Sender: TObject);
    procedure tvTasksCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure qryControlledTotalAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure tabGraphResize(Sender: TObject);
    procedure cbShowMatterDetailsClick(Sender: TObject);
    procedure qryArchiveLocationBeforePost(DataSet: TDataSet);
    procedure tvDocsCustomization(Sender: TObject);
    procedure imgClientIDClick(Sender: TObject);
    procedure tvEmailAttachmentsDblClick(Sender: TObject);
    procedure btnWIPItemsClick(Sender: TObject);
    procedure lvFoldersGetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
    procedure AddFolder1Click(Sender: TObject);
    procedure lvFoldersClick(Sender: TObject);
    procedure dxbtnAddDoc2FolderClick(Sender: TObject);
    procedure DeleteFolder1Click(Sender: TObject);
    procedure EditFolder1Click(Sender: TObject);
    procedure btnControlledStatementClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnTitleSearchClick(Sender: TObject);
    procedure btnRefreshSearchClick(Sender: TObject);
    procedure btnDebtorStatementClick(Sender: TObject);
    procedure tvSearchesEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure tvSearchesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure tvDocsVersionDblClick(Sender: TObject);
    procedure btnAddFeeNotesClick(Sender: TObject);
    procedure rgDisplayOptionClick(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bbtnReceiptRequestClick(Sender: TObject);
    procedure tabReceiptReqsShow(Sender: TObject);
    procedure btnReceiptReqEditClick(Sender: TObject);
    procedure tvProjectsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tabPartiesPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure btnGenerateQuoteClick(Sender: TObject);
    procedure popEmailAttachmentsPopup(Sender: TObject);
    procedure dxbtnClick(Sender: TObject);
    procedure dxBarEmailAsAttachClick(Sender: TObject);
    procedure cxSchedulerGridConnection1GridPopupMenuPopup(
      Sender: TcxSchedulerGridBuildInPopupMenu; ABuiltInMenu: TPopupMenu;
      var AHandled: Boolean);
    procedure ProjectsSchedulerAfterSizingEvent(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Accept: Boolean);
    procedure ProjectsSchedulerAfterEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
    procedure cxSchedulerEventModified(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure dxbtnDocsAsZipClick(Sender: TObject);
    procedure ProjectsSchedulerBeforeEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
    procedure cxSchedulerGridConnection1NewEvent(
      Sender: TcxSchedulerGridConnection; var AEvent: TcxSchedulerControlEvent;
      var AHandled: Boolean);
    procedure actRelateExecute(Sender: TObject);
    procedure actRelateUpdate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure RemoveDocsfromFolder1Click(Sender: TObject);
    procedure cxGrid2DBChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGrid4DBChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure aProjectExecute(Sender: TObject);
    procedure aProjectUpdate(Sender: TObject);
    procedure cxBarEditItem1PropertiesEditValueChanged(Sender: TObject);
    procedure tabGraphShow(Sender: TObject);
    procedure cxTabSheet16Show(Sender: TObject);
    procedure dxSelectConflictClick(Sender: TObject);
    procedure cxDBTreeList1Click(Sender: TObject);
    procedure pmDocFoldersPopup(Sender: TObject);
    procedure lvFoldersDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lvFoldersDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lvFoldersMoveTo(Sender: TcxCustomTreeList;
      AttachNode: TcxTreeListNode; AttachMode: TcxTreeListNodeAttachMode;
      Nodes: TList; var IsCopy, Done: Boolean);
    procedure tvDocsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvMatterNotesDblClick(Sender: TObject);
  protected
      procedure RefreshSearch(var Message: TMessage); message SEARCH_REFRESH;
  private
    { Private declarations }
    FDocTabSetup: Boolean;
    FDataFormTabSetup: Boolean;
    FShowFieldNames: Boolean;

    FDebtorNotesModified: Boolean;
    FMatters: integer;
    FAttachFileName: TStringList;  //string;

    FPRECCATEGORY: integer;
    FWorkflowType: string;
    FRowIndex: integer;


//    LfrmInvoice: TfrmInvoice;

    FExpanding: Boolean;

    FAttachDoc: Boolean;

    FFileAttachList: string;

    FMatterReset: boolean;

    FDocID: integer;

    nFeeTmpID: integer;
    AFormCaption: string;

    AEmailTemplate: ansistring;

//    FPreview : THostPreviewHandler;

    FEvent: TcxSchedulerEvent;
    FRecipientsList: TStringList;
    FBillSubject: string;

    procedure CalcFields;
    procedure setDisplayNames;
    procedure SetReopenList;
    procedure NavigateMatter;
    procedure SetAssociations;
    procedure GraphResize;
    procedure ConfirmSave;
    procedure SetupDocTab;
    procedure SetupGrid;
    procedure SetupDocFolderTab;
    //procedure SetGridValue(var sgTmp : TStringGrid; qryTmp : TUniQuery; iRow, iCol : integer; sField, sAddWith : string);
    //procedure SetGridTotal(var sgTmp : TStringGrid; iRow, iCol : integer; dValue : double);
    procedure SetGridValue(var sgTmp : TStringGrid; qryTmp : TUniQuery; iCol, iRow : integer; sField, sAddWith : string);
    procedure SetGridTotal(var sgTmp : TStringGrid; iCol, iRow : integer; dValue : double);
    procedure RefreshGrid;
    procedure SetupMatterBalances;

    procedure UpdateDebtorNotes;
    procedure UpdateTransitList(Sender : TObject);

    procedure SetControls;
    procedure SetControlsForClosedMatter;
    procedure SetControlsForClosedArchivedMatter;
    procedure SetControlsForOpenedMatter;
    procedure SetControlsFor(bEnabled : Boolean);

    function  IsClosedMatter : Boolean;
    function  IsClosedArchivedMatter : Boolean;

    procedure SetControlsForMatterNotForThisEntity;
    function MatterClosedNotArchived: boolean;

    procedure MergeFormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnUpdateWindowEvent(Sender: TObject);
    procedure EditWorkflowDoc;
    procedure MakePrecSQL;
    function GetAttachFile(var ADocIDList: TStringList): TStringList;
    procedure SelectPrecedents(pIndex: integer);
    procedure RestoreSelectedItems;
    procedure SaveSelectedItems;
    procedure UpdateModBy(sDocId: string);
    procedure AddConflictToMatter(ADocID, ANMatter: Integer; AFileID: String);
    function MatterHasAssociatedConflictChecks: Boolean;
    property  FileAttachList: string read FFileAttachList write FFileAttachList;
    procedure MakeDocSearch;
    property MatterReset: boolean read FMatterReset write FMatterReset;
    procedure ViewAttacheInvoice;
    function GetAttachbillFile(var ADocIDList: TStringList): TStringList;
    procedure PopulateResearch(mnuReopen: TdxBarSubItem);
    procedure LoadResearchSite(Sender: TObject);
    procedure CalcStatusbar;
    function CalcAmount2(iSecs : integer; cRate : currency; sType : string) : currency;
    procedure CreateTmeEntry;
    procedure DocDelete;
    procedure newTransaction(sType : String);
    procedure PrintInvReceipt(AInvReceipt: integer);
    function AddNodeData(AVST: TCustomVirtualStringTree; ANode: PVirtualNode;
                                    ARecord: TFolderData): PVirtualNode;
    procedure SaveDebtorStatement(ADoc_Name, AAuth, APath, ADescr, APrecCategory,
                                  APrecedentDetails, APrecClass: string; ANMatter: integer);
    function GetEmailAttachFile(var ADocIDList: TStringList): TStringList;
    procedure CompleteTask(Sender: TObject);
    procedure MergeTaskDocument(Sender: TObject);
    procedure ReAssignTask(Sender: TObject);
    procedure AttachTaskDocument(Sender: TObject);

    procedure CreateGantt;
    procedure ResizeTabGraph;

  public
    property WorkflowType: string read FWorkflowType write FWorkflowType;

    function DisplayMatter(sFile : string): boolean;
    function ChooseMatter: boolean;
    procedure SetCaption;

    function GetSiteStatus: TRwMAPISiteStatus;
    function GetViewStatus: TRwMAPIViewStatus;
    function GetSelectedFolder(AMsgStore: IRwMAPIMsgStore): IRwMAPIFolder;

    procedure umMyMessage(var Message: TMessage); message UM_MYMESSAGE;
    procedure umPreviewPanel(var Message: TMessage); message UM_PREVIEWPANEL;
    procedure umOpenDocument(var Message: TMessage); message UM_OPENDOCUMENT;
  end;

type
  TCoganArray = array[0..iMaxCol, 0.. iMaxRow] of Double;

var
  arrayData : TCoganArray;
  frmMatters: TfrmMatters;

implementation

{$R *.DFM}

uses
  AutoCost, CheqReqNew, Cheque, Desktop, DiaryNew, DocNew, FeeNew,
  MaisterAnalysis, VTCurrencyEdit, VTEditors,
  MatterAssociate, MatterDataForm, MatterNew, MatterPartyRelate,
  MSearch, NSearch, Phonebook, SundryNew, Receipt,
  RptLedgerFees, RptLedgerDisb, RptLedgerDebt, RptLedgerSundry, RptLedgerTrust,
  RptLedgerCombo, RptLedgerCheqReq, RptLedgerUnconCheqReq,
  MiscClasses, JournalDisbDebt, GenericSearch, PrecNew,
  RptLedgerTransit, TransitNew, citfunc, PhoneBookNew,{ CheqreqHistoryForm,}
  OptionsUser, ShellAPI, RptLedgerCreditors, AccountNew, DebtorNotes,
  WorkFlowTask, Clients, matternotes, uRwDateTimeUtils,
  uRwMapiUtils, uRwBoxes, uRwMapiMessage, DocSearch,
  WorkFlowAddDocTemplateDialog, WorkFlowDataModuleDocs,
  WorkFlowAddAdminDocTemplateDialog, DocDescrEdit, cxGridStrs,
  MatterNotesAdd, MatterNotesRptFrm, Math, Office2000, ActiveX,
  word2000, SendSMS, DocMatterLoad, uRwMapiDefsH, uRwMapiProps,
  uRwMapiSession, DocumentImportDirSelection, Vcl.Styles.FormStyleHooks,
  BillCreateAsk, DateEditDialog, DepositAccount, InvestmentTransactionNew,
  Reports, daDataModule, daSQL, DocumentCopyAsk, DocCopyMoveFileDialog,
  WorkFlowDataModule, client_img_view, doc_folder_sel, CopyMoveFileDialog,
  GenEditor, FeeNotes, ReceiptReqNew, ProjectMatter, MiscFunc, NewTaskNew,
  PrecedentSearchList, EmployeeFindDialog, System.UITypes, ConflictSelect,
  MatterPositionRpt, LoggingSnippet, BillNew, MatterLabel,
  WorkFlowMergeDocument, WorkFlowDocumentMerge, WorkFlowMatterTasks,
  Ora, WorkFlowGenDocuments, matternotesfrm, ppTypes, MSOpenReadOnly;

var
   iMinsPerUnit: integer;
   formatSettings : TFormatSettings;
   aMinRate,
   aMaxRate,
   aTotalMinRate,
   aTotalMaxRate,
   aEstHourlyCost,
   aEmpNetCostHour,
   aEmpCostPerHour,
   aTotalEstHourlyCost,
   aTotalEmpNetCostHour,
   aTotalEmpCostPerHour,
   aCalcMinTotal,
   aCalcMaxTotal: double;
   Extensions : array[1..18] of string = ('DOT', 'DOC', 'DOTX', 'DOCX', 'DOTM', 'DOCM', 'PPT', 'PPTX' ,'PPTM', 'POTX', 'POTM', 'PPSX', 'PPSM', 'XLS', 'XLSX' , 'XLT', 'XLTX', 'XLTM');
   LfrmInvoice: TfrmInvoice;
   MatterLabel: TMatterLabel;
   LMT: TfmWorkflowMatterTasks;
   FWorkFlowMergeDocument: TfmWorkFlowMergeDocument;
   FMergeType: TMergeDocumentClass;
   FGenDocumentsForm: TfmWorkFlowGenDocuments;



// MGD Data Record For Contacts Virtual Tree (vtContacts)
type
  PContactData = ^TContactData;
  TContactData = record
    NName: Integer;
    PartyType,
    Search,
    Name,
    Salutation,
    GivenNames,
    LastName,
    Phone,
    ParentName: String;
    ActingFor: Boolean;
    Through: Boolean;
    ThroughNName,
    ActingForNName,
    ParentNName: Integer;
    MobilePhone,
    HomePhone,
    FAX: string;
    Email: string;
  end;

  // records for data virtual tree..
  TEditFieldType = (efCurrency, efDate, efInteger, efText, efList, efBoolean, efMemo);
  PFieldData = ^TFieldData;
  TFieldData = record
    DataForm: String;
    DataFormCaption: String;
    FieldName: String;
    FieldCaption: String;
    FieldValue: String;
    FieldType: TEditFieldType;
    New, Modified, Cleared: Boolean;
    LookUpList: TStringList;
    NumLines: integer;
    ID: Integer;
    PbGroup: String;
    CharCase: boolean;
    TextLength: integer;
  end;


 // THostPreviewHandlerClass=class(THostPreviewHandler);


procedure TfrmMatters.setDisplayNames;
var
   iMaxLength : integer;
   sCriticalDate : String;
begin
   iMaxLength := 0;
   GetLabel(lblPartner,'MATTER','PARTNER',imaxLength);
   GetLabel(lblOpCap,'MATTER','OPERATOR',imaxLength);
   GetLabel(lblAuthor,'MATTER','AUTHOR',imaxLength);
   GetLabel(lblControl,'MATTER','CONTROLLER',imaxLength);
   GetLabel(lblArchiveNo, 'MATTER', 'ARCHIVENUM', imaxLength, 'Archived/Closed Number');
   sCriticalDate := GetDisplayName('MATTER','CRITICAL_DATE');
//   getLabelValueByCode(

//   if tabProject.tabVisible = True then
//      tvProjectTaskItemsAUTHOR.Caption := getLabelValue('MATTER', 'AUTHOR', imaxLength );


  // now work out the length
//  dblblPartner.Left := dblblPartner.Left + (imaxLength-44);
//  lblPartnerName.Left := lblPartnerName.Left + (imaxLength-44);
//  dblblController.Left := dblblController.Left + (imaxLength-44);
//  lblControllerName.Left := lblControllerName.Left + (imaxLength-44);
//  dblblAuthor.Left := dblblAuthor.Left + (imaxLength-44);
//  lblAuthorName.Left := lblAuthorName.Left + (imaxLength-44);
//  lblOperator.Left := lblOperator.Left + (imaxLength-44);
//  lblOperatorName.Left := lblOperatorName.Left + (imaxLength-44);
//  dblblType.Left := dblblType.Left + (imaxLength-44);
//  lblTypeDesc.Left := lblTypeDesc.Left + (imaxLength-44);
//  dblblBranch.Left := dblblBranch.Left + (imaxLength-44);

  if sCriticalDate <> '' then
     tabCriticalDates.Caption := sCriticalDate;
end;

procedure TfrmMatters.DeleteFolder1Click(Sender: TObject);
//var
//   Node: PVirtualNode;
//   Data: PFolderData;
//   LFolderId: integer;
//   lParentID: integer;
begin
//   Node := lvFolders.FocusedNode;
//   if not Assigned(Node) then
//      Exit;

//   Data := lvFolders.GetNodeData(Node);
   if cxDBTreeList1DESCR.Value = 'All Files' then
   begin
      MsgErr('The ''All Files'' directory cannot be deleted');
      Exit;
   end;

   if cxDBTreeList1DESCR.Value = 'Unallocated Files' then
   begin
      MsgErr('The ''Unallocated Files'' directory cannot be deleted');
      Exit;
   end;

   if MsgAsk('Delete directory ' + cxDBTreeList1DESCR.Value) = mrYes then
   begin
      qryFldTmp.Close;
      qryFldTmp.SQL.Clear;
      qryFldTmp.SQL.Text := 'select count(*) as foldercount from doc where folder_id = '+ IntToStr(cxDBTreeList1FOLDER_ID.Value);
      qryFldTmp.Open;
      // 25 April 2018 DW changed count from 1 to 0 to prevent orphaning on singular doc in folder
      if (qryFldTmp.FieldByName('foldercount').AsInteger > 0) then
      begin
         MsgErr('This folder currently has attached documents.  It cannot be deleted.');
         Exit;
      end;
      // 25 April 2018 DW prevent parent folder from being deleted
      qryFldTmp.Close;
      qryFldTmp.SQL.Clear;
      qryFldTmp.SQL.Text := 'select count(*) as foldercount from document_folders where parent_id = '+ IntToStr(cxDBTreeList1FOLDER_ID.Value);
      qryFldTmp.Open;
      if (qryFldTmp.FieldByName('foldercount').AsInteger > 0) then
      begin
         MsgErr('This folder currently has sub-folders.  It cannot be deleted.');
         Exit;
      end;
      // end of change
      qryFldTmp.Close;
      qryFldTmp.Sql.Text := 'delete from document_folders where folder_id = :folder_id and nmatter = :nmatter';
      qryFldTmp.ParamByName('folder_id').AsInteger := integer(cxDBTreeList1FOLDER_ID.Value);
      qryFldTmp.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryFldTmp.ExecSQL;
      qryFldTmp.Close;
      // 25 April 2018 DW refresh folder list after deleting
      SetupDocFolderTab;
      // end of change
   end;
end;

function TfrmMatters.DisplayMatter(sFile : string): boolean;
var
   ARowColour,
   i,
   nStartPos,
   imaxLength: integer;
   ASearch,
   AShortDescr,
   tmpStr: string;
   bFeeAlert,
   bValidMatter: boolean;
   sMatter,
   sArchive,
   sNewArchive: string;
   sSeparator: char;
begin
   Screen.Cursor := crSQLWait;
   bFeeAlert := False;
   Enabled := False;
   bValidMatter := True;

   qryProjectTemplate.Close;
   qryProjectTemplate.Open;

   btnDeleteTask.Enabled := False;
   btnTaskEdit.Enabled := False;
   tabArchive.TabVisible := False;
   try
      sArchive := 'Archive #';
      sSeparator := ' ';
      nStartPos := 1;

      if not dmAxiom.WANEnabled then
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      qryMatter.Close;
      // Commented out until further review (T.H. 22/03/2004)
      // Recalculate the matter fees for display
      {
      recalculateAllMatterFees(StrToInt(sFile));
      }
      if (sFile <> '') then
      begin
         if IsMatterPrivate(StrToInt(MatterString(sFile, 'NMATTER')),MatterString(sFile, 'RESTRICT_ACCESS')) then
         begin
            MsgInfo('This matter is marked as private. You do not have permission to view it.');
            bValidMatter := False;
            Exit;
         end;
      end;

      if (sFile <> '') then
      begin
         qryMatter.Close;
         qryMatter.ParamByName('P_File').AsString := MatterString(sFile,'NMATTER');
         qryMatter.Open;

         if (SystemString('docs_reg') <> C_DOCUMENTPASSWORD) and
            (SystemString('email_reg') = C_EMAILPASSWORD) then
         begin
            tabEmails.TabVisible := True;
            with qryDocEmails do
            begin
               Close;
               ParamByName('P_FileID').AsString :=  sFile;
               Open;
            end;
         end;

         // PROSPECTIVE MATTER
         lblProspectiveMatter.Visible := qryMatter.FieldByName('PROSPECTIVE').AsString = 'Y';
         tabInvoices.Enabled := qryMatter.FieldByName('PROSPECTIVE').AsString = 'N';
         tabReceipts.Enabled := qryMatter.FieldByName('PROSPECTIVE').AsString = 'N';

//         if qryLedgerBalances.Active then
         try
            qryLedgerBalances.Close;
         except
            //
         end;

         if (not qryMatter.IsEmpty) then
         begin
            ReopenListUpdate('MATTER', sFile);
            ASearch := qryMatter.FieldByName('SEARCH').AsString;
            for i := 1 to Length(ASearch) do
            begin
               tmpStr := tmpStr + ASearch[i];
               if ASearch[i] = '&' then
                  tmpStr := tmpStr + '&';
            end;
            ASearch := tmpStr;

            tmpStr := '';
            AShortDescr := qryMatter.FieldByName('SHORTDESCR').AsString;
            for i := 1 to Length(AShortDescr) do
            begin
               tmpStr := tmpStr + AShortDescr[i];
               if AShortDescr[i] = '&' then
                  tmpStr := tmpStr + '&';
            end;
            AShortDescr := tmpStr;


            Self.Caption := 'Matter: ' + ASearch + ' ' + AShortDescr + ' ' + qryMatter.FieldByName('FILEID').AsString;
            AFormCaption := Self.Caption;
            if (not qryMatter.FieldByName('ARCHIVENUM').IsNull) {and (qryMatter.FieldByName('CLOSED').AsInteger = 1) } then
            begin
               sArchive := GetLabelValue('MATTER', 'ARCHIVENUM', imaxLength, 'Archived #');
               if Pos('#', sArchive) = 0 then
               begin
                  sNewArchive := GetNextToken(sArchive,sSeparator,nStartPos);
                  sNewArchive := sNewArchive + ' #';
               end
               else
                  sNewArchive := sArchive;

               Self.Caption := Self.Caption + '; ' + sNewArchive +': '+ Trim(qryMatter.FieldByName('ARCHIVETYPECODE').AsString) + ' ' + qryMatter.FieldByName('ARCHIVENUM').AsString;
               tabArchive.TabVisible := True;
               with qryArchiveLocation do
               begin
                  Close;
                  ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                  Open;
               end;
//AES               pageMatter.ActivePageIndex := 1;
            end;

            tabDocs.OnShow := nil;
            tabDocs.TabVisible := ((MatterDocAccess(qryMatter.FieldByName('NMATTER').AsString, dmAxiom.UserID)) and (dmAxiom.Security.Matter.Tabs.Documents) and
                                  (SystemString('docs_reg') = C_DOCUMENTPASSWORD));
            tabDocs.OnShow := tabDocsShow;

            qryAllocs.Close;
            qryAllocs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
            qryAllocs.open;

            //refresh the grid values here

            if not dmAxiom.WANEnabled then
            begin
               SetupMatterBalances;
               RefreshGrid;
            end
            else
            begin
               lblClientCode.Caption := TableString('CLIENT', 'NCLIENT', qryMatter.FieldByName('NCLIENT').AsInteger, 'CODE');
               pageMatterChange(Self);
            end;

            ARowColour := TableInteger('debtorstatus','debtorstatus', qryMatter.FieldByName('debtorstatus').AsString ,'row_colour');
            if ARowColour > 0 then
               lblDebtorStatus.Font.Color := ARowColour;

            CalcFields;
            SetAssociations;
     //      SetReopenList;
            tmrRefresh.Interval := dmAxiom.RefreshRate * 1000;
            tmrRefresh.Enabled := True;

            if tabDocs.TabVisible = True then
            begin
               if qryDocs.Active = True then
               begin
                  qryDocChildren.Close;
                  qryDocVersions.Close;
                  qryDocs.Close;
                  qryDocs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                  qryDocs.Open;

                  qryDocChildren.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                  qryDocChildren.Open;

                  qryDocVersions.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                  qryDocVersions.Open;
               end;
            end;


            qryControlledTotal.Close;
            qryControlledTotal.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
            qryControlledTotal.Open;
            btnNewControlledMoney.Enabled := (qryControlledTotal.Eof = True);
            tabControlledMoney.TabVisible := (qryControlledTotal.Eof = False);
            qryControlledTotal.Close;
         end
         else
         begin
     //      ReopenListDelete('MATTER', sFile);
           MessageDlg('There is no such matter with FileID: ' + sFile, mtInformation, [mbOk], 0);
           bValidMatter := False;
           Close();
           Exit;
         end;



      end;


       if bValidMatter then
       begin
          showCriticalDateTab;
          lblNoEstFees.Visible := False;
          progBarFeeTotal.Visible := False;
          progBarDisbTotal.Visible := False;
          bFeeAlert := dmAxiom.CheckFeeTotalInstalled;
          if bFeeAlert then
          begin
            if qryMatter.FieldByName('ESTIMATEDFEE').AsCurrency > 0 then
            begin
               progBarFeeTotal.Visible := bFeeAlert;
               lblNoEstFees.Visible := False;
               lblTotalFeeAlert.Visible := bFeeAlert;
               dxBarPopupMenuBills.ItemLinks.Items[0].Visible := bFeeAlert;
            end
            else
            begin
               lblNoEstFees.Visible := True;
               progBarFeeTotal.Visible := False;
            end;
          end;

          if (progBarFeeTotal.Visible = True) then
          begin
            if qryMatter.FieldByName('FEE_ALERT_LIMIT').AsInteger > 0 then
            begin
//               progBarFeeTotal.Properties.OverloadValue := qryMatter.FieldByName('FEE_ALERT_LIMIT').AsInteger;
               try
                  progBarFeeTotal.Properties.BeginColor := clLime;
                  progBarFeeTotal.Properties.EndColor := clGreen;
                  progBarFeeTotal.Position := dmAxiom.GetFeeTotal(qryMatter.FieldByName('NMATTER').AsInteger);
                  if progBarFeeTotal.Position > qryMatter.FieldByName('FEE_ALERT_LIMIT').AsInteger then
                  begin
                     progBarFeeTotal.Properties.OverloadValue := qryMatter.FieldByName('FEE_ALERT_LIMIT').AsInteger;
                     progBarFeeTotal.Properties.BeginColor := clRed;
                     progBarFeeTotal.Properties.EndColor := clRed;
                  end;
                  lblTotalFeeAlert.Caption := 'Total WIP and Fees recorded so far is ' + FormatCurr(GetCurrencySymbol+'0.00',dmAxiom.GetFeeTotalAmount(qryMatter.FieldByName('NMATTER').AsInteger)) + '. Fee Estimate is ' + FormatCurr(GetCurrencySymbol+'0.00',qryMatter.FieldByName('ESTIMATEDFEE').AsCurrency);
               except
                  progBarFeeTotal.Position := 0;
               end;
            end
            else
               progBarFeeTotal.Position := 0;
          end;

          if qryMatter.FieldByName('BUDGET_FEES').AsCurrency > 0 then
          begin
             progBarFeeCredit.Visible := True;
             lblWIPCreditLimit.Visible := True;
          end
          else
          begin
             progBarFeeCredit.Visible := False;
             lblWIPCreditLimit.Visible := False;
          end;

          if (progBarFeeCredit.visible = True) then
          begin
             if qryMatter.FieldByName('BUDGET_FEES').AsInteger > 0 then
             begin
                try
                  progBarFeeCredit.Properties.BeginColor := clLime;
                  progBarFeeCredit.Properties.EndColor := clGreen;
                  progBarFeeCredit.Position := dmAxiom.GetMonthlyFeeTotal(qryMatter.FieldByName('NMATTER').AsInteger);
                  if progBarFeeCredit.Position > qryMatter.FieldByName('FEE_ALERT_LIMIT').AsInteger then
                  begin
                     progBarFeeCredit.Properties.OverloadValue := qryMatter.FieldByName('FEE_ALERT_LIMIT').AsInteger;
                     progBarFeeCredit.Properties.BeginColor := clRed;
                     progBarFeeCredit.Properties.EndColor := clRed;
                  end;
               except
                  progBarFeeCredit.Position := 0;
               end;
             end;
          end;
      end;
   finally
      if bValidMatter = True then
      begin
         pageMatter.OnChange(Self);
         if cbGroupExpanded.Checked then
            dbgrDocs.FocusedView.DataController.Groups.FullExpand;
         Enabled := True;
         Self.Invalidate;
         Screen.Cursor := crDefault;
      end;
   end;
   Result := bValidMatter;
end;

function TfrmMatters.ChooseMatter: boolean;
begin
//  mnuSearchFind.Click;
   ChooseMatter := True;
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      if (dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '') then
      begin
         if IsMatterPrivate(dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger,MatterString(dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger, 'RESTRICT_ACCESS')) then
         begin
            MsgInfo('This matter is marked as private. You do not have permission to view it.');
            ChooseMatter := False;
         end
         else
         begin
            DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);

         end;
      end
      else
         ChooseMatter := False;
   end
   else
     ChooseMatter := False;

   if not qryMatter.Active then
      Self.Close;
end;

procedure TfrmMatters.tbtnFindClick(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
end;

procedure TfrmMatters.SetupMatterBalances;
var
   BillRate: Double;
begin
   Screen.Cursor := crSQLWait;
   if (qryLedgerBalances.Active = False) then
   begin
      qryLedgerBalances.ParamByName('p_file').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryLedgerBalances.Open;
   end;

   if qryLedgerBalances.Active then
   begin
      lblFeeRate.Caption := Format('%.2m', [qryMatter.FieldByName('RATEDESCR').AsCurrency]);

      // Work In Progress Original
      {
      lblWIP.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_UNBILL_FEES').AsCurrency + qryMatter.FieldByName('TaxUnbillWIP').AsCurrency]);
      if (qryMatter.FieldByName('UNBILL_FEES').AsCurrency + qryMatter.FieldByName('TaxUnbillWIP').AsCurrency) < 0 then
        lblWIP.Font.Color := clRed
      else
        lblWIP.Font.Color := clBlue;
      }

      if qryMatter.FieldByName('FEE_TAX_BASIS').IsNull then
         MessageWarning('This Matter does not have a Fee Tax Basis.  Please Edit matter and add Fee Tax Basis.')
      else
         BillRate := StrToFloat(TableString('TAXRATE','TAXCODE',qryMatter.FieldByName('FEE_TAX_BASIS').AsString, 'RATE'));

      // WIP with recalculateAllMatterFees() being called
      // or stored procedures being called (no recalculateAllMatterFees())
      if cbUnbillBalanceswithGST.Checked and (BillRate <> 0) then
      begin
         lblWIP.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNBILL_FEES').AsCurrency]);

         lblItems.Caption := Format('%.2m', [0.00]);
         if qryLedgerBalances.FieldByName('UNBILL_ITEMS').AsCurrency <> 0 then
            lblItems.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('unbill_items').AsCurrency]);

         if (qryLedgerBalances.FieldByName('UNBILL_FEES').AsCurrency) < 0 then
            lblWIP.Style.Font.Color := clRed
         else
            lblWIP.Style.Font.Color := clBlue;

         // Unbilled Disbursements with either recalculateAllMatterFees() being
         // called or just stored procedures
         lblUnbillDisb.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNBILL_DISB').AsCurrency]);
         if (qryLedgerBalances.FieldByName('UNBILL_DISB').AsCurrency) < 0 then
            lblUnbillDisb.Style.Font.Color := clRed
         else
            lblUnbillDisb.Style.Font.Color := clBlue;

         lblUnbillAntd.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNBILL_ANTD').AsCurrency]);
         if (qryLedgerBalances.FieldByName('UNBILL_ANTD').AsCurrency) < 0 then
            lblUnbillAntD.Style.Font.Color := clRed
         else
            lblUnbillAntD.Style.Font.Color := clBlue;

         // Sundries with either recalculateAllMatterFees() being
         // called or just stored procedures
         lblUnbillSund.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNBILL_SUND').AsCurrency]);
         if (qryLedgerBalances.FieldByName('UNBILL_SUND').AsCurrency) < 0 then
            lblUnbillSund.Style.Font.Color := clRed
         else
            lblUnbillSund.Style.Font.Color := clBlue;

         lblCreditors.Caption := Format('%.2m', [qryCreditors.FieldByName('CREDAMOUNT').AsCurrency]);
         if qryCreditors.FieldByName('CREDAMOUNT').AsCurrency < 0 then
            lblCreditors.Style.Font.Color := clRed
         else
            lblCreditors.Style.Font.Color := clBlue;
      end
      else
      begin
         lblWIP.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('unbill_fees_no_gst').AsCurrency]);

         lblItems.Caption := Format('%.2m', [0.00]);
         if qryLedgerBalances.FieldByName('UNBILL_ITEMS_NO_GST').AsCurrency <> 0 then
            lblItems.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNBILL_ITEMS_NO_GST').AsCurrency]);

         if (qryLedgerBalances.FieldByName('unbill_fees_no_gst').AsCurrency) < 0 then
            lblWIP.Style.Font.Color := clRed
         else
            lblWIP.Style.Font.Color := clBlue;

         // Unbilled Disbursements with either recalculateAllMatterFees() being
         // called or just stored procedures
         lblUnbillDisb.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNBILL_DISB_no_gst').AsCurrency]);
         if (qryLedgerBalances.FieldByName('UNBILL_DISB_no_gst').AsCurrency) < 0 then
            lblUnbillDisb.Style.Font.Color := clRed
         else
            lblUnbillDisb.Style.Font.Color := clBlue;

         // Unbilled Ant Disbursement with either recalculateAllMatterFees() being
         // called or just stored procedures
         lblUnbillAntd.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNBILL_ANTD_no_gst').AsCurrency]);
         if (qryLedgerBalances.FieldByName('UNBILL_ANTD_no_gst').AsCurrency) < 0 then
            lblUnbillAntD.Style.Font.Color := clRed
         else
            lblUnbillAntD.Style.Font.Color := clBlue;

         // Sundries with either recalculateAllMatterFees() being
         // called or just stored procedures
         lblUnbillSund.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNBILL_SUND_no_gst').AsCurrency]);
         if (qryLedgerBalances.FieldByName('UNBILL_SUND_no_gst').AsCurrency) < 0 then
            lblUnbillSund.Style.Font.Color := clRed
         else
            lblUnbillSund.Style.Font.Color := clBlue;

         lblCreditors.Caption := Format('%.2m', [qryCreditors.FieldByName('CredAmountNoGST').AsCurrency]);
         if qryCreditors.FieldByName('CredAmountNoGST').AsCurrency < 0 then
            lblCreditors.Style.Font.Color := clRed
         else
            lblCreditors.Style.Font.Color := clBlue;
      end;

      // Unbilled Disbursement Original
      {
      lblUnbillDisb.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_UNBILL_DISB').AsCurrency + qryMatter.FieldByName('TaxunbillDisb').AsCurrency]);
      if (qryMatter.FieldByName('CAL_UNBILL_DISB').AsCurrency + qryMatter.FieldByName('TaxunbillDisb').AsCurrency) < 0 then
        lblUnbillDisb.Font.Color := clRed
      else
        lblUnbillDisb.Font.Color := clBlue;
      }



      // Unbilled Ant Disbursement Original
      {
      lblUnbillAntd.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_UNBILL_ANTD').AsCurrency + qryMatter.FieldByName('TaxunbillAntd').AsCurrency]);
      if (qryMatter.FieldByName('CAL_UNBILL_ANTD').AsCurrency + qryMatter.FieldByName('TaxunbillAntd').AsCurrency) < 0 then
        lblUnbillAntD.Font.Color := clRed
      else
        lblUnbillAntD.Font.Color := clBlue;
      }



      // Uncoverted Cheque Original
      {
      lblUnconvertedCheqReq.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_UC_ANTD').AsCurrency + qryMatter.FieldByName('CAL_UC_ANTD_TAX').AsCurrency]);
      if (qryMatter.FieldByName('CAL_UC_ANTD').AsCurrency + qryMatter.FieldByName('CAL_UC_ANTD_TAX').AsCurrency) < 0 then
        lblUnconvertedCheqReq.Font.Color := clRed
      else
        lblUnconvertedCheqReq.Font.Color := clBlue;
      }

      // Uncoverted Cheque with recalculateAllMatterFees() being called
      {
      lblUnconvertedCheqReq.Caption := Format('%.2m', [qryMatter.FieldByName('UNBILL_CREQ').AsCurrency]);
      if (qryMatter.FieldByName('UNBILL_CREQ').AsCurrency) < 0 then
        lblUnconvertedCheqReq.Font.Color := clRed
      else
        lblUnconvertedCheqReq.Font.Color := clBlue;
      }

      // Uncoverted Cheque with stored procedure being called
      lblUnconvertedCheqReq.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('UNCON_CHEQREQ').AsCurrency]);
      if (qryLedgerBalances.FieldByName('UNCON_CHEQREQ').AsCurrency) < 0 then
        lblUnconvertedCheqReq.Style.Font.Color := clRed
      else
        lblUnconvertedCheqReq.Style.Font.Color := clBlue;


      // Sundries Original
      {
      lblUnbillSund.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_UNBILL_SUND').AsCurrency + qryMatter.FieldByName('TaxunbillSund').AsCurrency]);
      if (qryMatter.FieldByName('UNBILL_SUND').AsCurrency + qryMatter.FieldByName('TaxunbillSund').AsCurrency) < 0 then
        lblUnbillSund.Font.Color := clRed
      else
        lblUnbillSund.Font.Color := clBlue;
      }



      // Trust Balance Original
      {
      lblTrust.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_TRUST_BAL').AsCurrency]);
      lblTrustBal.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_TRUST_BAL').AsCurrency]);
      if qryMatter.FieldByName('TRUST_BAL').AsCurrency < 0 then
        lblTrust.Font.Color := clRed
      else
        lblTrust.Font.Color := clBlue;
      }

      // Trust Balance with either recalculateAllMatterFees() being
      // called or just stored procedures
      lblTrust.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency]);
      lblTrustBal.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency]);
      if qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency < 0 then
      begin
//         TFormStyleHookBackground.BackGroundSettings.Enabled := True;
//         TFormStyleHookBackground.BackGroundSettings.UseColor := True;
//         TFormStyleHookBackground.BackGroundSettings.Color := clRed;
//         TCustomStyleExt(TStyleManager.ActiveStyle).SetStyleColor(lblTrust, clRed);
         lblTrust.Style.Font.Color := clRed;
         Self.Invalidate;
         Self.Perform(WM_PAINT, 0, 0);
      end
      else
        lblTrust.Style.Font.Color := clBlue;

      lblRequisitionedTrust.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('trust_uncon_cheqreq_amt').AsCurrency]);
      lblRequisitionedTrust.Font.Color := clBlue;

      // investments

      lblInvestments.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('investment_balance').AsCurrency]);
      lblInvestments.Style.Font.Color := clBlue;


      // Cleared Trust Balance
      {
      lblClearTrust.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_CL_TRUST_BAL').AsCurrency]);
      if qryMatter.FieldByName('CL_TRUST_BAL').AsCurrency < 0 then
        lblClearTrust.Font.Color := clRed
      else
        lblClearTrust.Font.Color := clBlue;
      lblClearTrust1.Caption := lblClearTrust.Caption;
      lblClearTrust1.Font.Color := lblClearTrust.Font.Color;

      if qryMatter.FieldByName('CL_TRUST_BAL').AsCurrency > qryMatter.FieldByName('TRUST_BAL').AsCurrency then
        begin
          lblClearTrust1.Font.Color := clRed;
          lblClearTrust1.Font.Color := clRed;
        end;

      if qryMatter.FieldByName('CL_TRUST_BAL').AsCurrency < qryMatter.FieldByName('TRUST_BAL').AsCurrency then
        begin
          lblClearTrust1.Font.Color := clGreen;
          lblClearTrust1.Font.Color := clGreen;
        end;
      }

      // Cleared Trust Balance with either recalculateAllMatterFees() being
      // called or just stored procedures
      if SystemString('show_net_trust') = 'Y' then
      begin
         if qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency = 0 then
            lblClearTrust.Caption := Format('%.2m',[0.00])
         else
            lblClearTrust.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency - qryLedgerBalances.FieldByName('trust_uncon_cheqreq_amt').AsCurrency] )
      end
      else
      begin
         if qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency = 0 then
            lblClearTrust.Caption := Format('%.2m',[0.00])
         else
            lblClearTrust.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency] );
      end;

      if qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency < 0 then
        lblClearTrust.Font.Color := clRed
      else
        lblClearTrust.Font.Color := clBlue;
      lblClearTrust1.Caption := lblClearTrust.Caption;
      lblClearTrust1.Style.Font.Color := lblClearTrust.Font.Color;

      if SystemString('show_net_trust') = 'Y' then
      begin
         if (qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency -
             qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency -
             qryLedgerBalances.FieldByName('trust_uncon_cheqreq_amt').AsCurrency) >
             qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency then
           begin
             lblClearTrust1.Style.Font.Color := clRed;
             lblClearTrust1.Style.Font.Color := clRed;
           end;

         if (qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency -
             qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency -
             qryLedgerBalances.FieldByName('trust_uncon_cheqreq_amt').AsCurrency) <
             qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency then
           begin
             lblClearTrust1.Style.Font.Color := clGreen;
             lblClearTrust1.Style.Font.Color := clGreen;
           end;
      end
      else
      begin
         if qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency <> 0 then
         begin
            if (qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency -
                qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency) >
                qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency then
              begin
                lblClearTrust1.Style.Font.Color := clRed;
                lblClearTrust1.Style.Font.Color := clRed;
              end;

            if (qryLedgerBalances.FieldByName('CL_TRUST_BAL').AsCurrency -
                qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency) <
                qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency then
              begin
                lblClearTrust1.Style.Font.Color := clGreen;
                lblClearTrust1.Style.Font.Color := clGreen;
              end;
            end
            else
            begin
               lblClearTrust1.Caption := Format('%.2m',[0.00]);
               lblClearTrust.Caption := Format('%.2m',[0.00]);
            end;
      end;

      // Spec Purpose
      lblSpecPurpose.Caption := Format('%.2m', [qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency]);
      if qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency < 0 then
        lblSpecPurpose.Font.Color := clRed
      else
        lblSpecPurpose.Font.Color := clBlue;

      // Debtors Original
      {
      if qryMatter.FieldByName('CAL_DEBTORS').AsCurrency < 0 then
        lblDebtors.Caption := Format('%.2m', [0-qryMatter.FieldByName('CAL_DEBTORS').AsCurrency])
      else
        lblDebtors.Caption := Format('%.2m', [qryMatter.FieldByName('CAL_DEBTORS').AsCurrency]);

      if qryMatter.FieldByName('CAL_DEBTORS').AsCurrency > 0 then
        begin
          lblDebtors.Caption := Format('%.2m', [0-qryMatter.FieldByName('CAL_DEBTORS').AsCurrency]);
          lblDebtors.Font.Color := clRed
        end
      else
        lblDebtors.Font.Color := clBlue;
      }

      // Debtors with either recalculateAllMatterFees() being
      // called or just stored procedures
      if qryLedgerBalances.FieldByName('DEBTORS').AsCurrency < 0 then
        lblDebtors.Caption := Format('%.2m', [0-qryLedgerBalances.FieldByName('DEBTORS').AsCurrency])
      else
        lblDebtors.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('DEBTORS').AsCurrency]);
      if qryLedgerBalances.FieldByName('DEBTORS').AsCurrency > 0 then
        begin
          lblDebtors.Caption := Format('%.2m', [0-qryLedgerBalances.FieldByName('DEBTORS').AsCurrency]);
          lblDebtors.Style.Font.Color := clRed
        end
      else
        lblDebtors.Style.Font.Color := clBlue;

      // Bill Fees Original
      {
      lblBillFees.Caption := Format('%.2m', [qryMatter.FieldByName('CL_BILL_FEES').AsCurrency]);
      if qryMatter.FieldByName('BILL_FEES').AsCurrency < 0 then
        lblBillFees.Font.Color := clRed
      else
        lblBillFees.Font.Color := clBlue;
      }

      // Bill Fees with either recalculateAllMatterFees() being
      // called or just stored procedures
      lblBillFees.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('BILL_FEES').AsCurrency]);
      if qryLedgerBalances.FieldByName('BILL_FEES').AsCurrency < 0 then
        lblBillFees.Style.Font.Color := clRed
      else
        lblBillFees.Style.Font.Color := clBlue;

      lblNonBillableFees.Caption := Format('%.2m', [qryLedgerBalances.FieldByName('NonBillableFees').AsCurrency]);
      if qryLedgerBalances.FieldByName('NonBillableFees').AsCurrency < 0 then
        lblNonBillableFees.Style.Font.Color := clRed
      else
        lblNonBillableFees.Style.Font.Color := clBlue;

      // Creditors
//      lblCreditors.Caption := Format('%.2m', [qryCreditors.FieldByName('CREDAMOUNT').AsCurrency]);
//      if qryCreditors.FieldByName('CREDAMOUNT').AsCurrency < 0 then
//        lblCreditors.Font.Color := clRed
//      else
//        lblCreditors.Font.Color := clBlue;

//      if not qryMatter.FieldbyName('LASTTRUST').IsNull then
//        lblLastTrust.Caption := FormatDateTime('ddddd', qryMatter.FieldbyName('LASTTRUST').AsDateTime)
//      else
//        lblLastTrust.Caption := '';
//      if not qryMatter.FieldbyName('LASTTRANS').IsNull then
//        lblLastTrans.Caption := FormatDateTime('ddddd', qryMatter.FieldbyName('LASTTRANS').AsDateTime)
//      else
//        lblLastTrans.Caption := '';

      if not qryMatter.FieldbyName('COMPLETED').IsNull then
        lblCompleted.Caption := FormatDateTime('ddddd', qryMatter.FieldbyName('COMPLETED').AsDateTime)
      else
        lblCompleted.Caption := '';
      if not qryMatter.FieldbyName('OPENED').IsNull then
        lbltbOpened.Caption := FormatDateTime('ddddd', qryMatter.FieldbyName('OPENED').AsDateTime)
      else
        lbltbOpened.Caption := '';

      if not qryMatter.FieldbyName('EXP_COMPLETION').IsNull then
        lblExpCompletion.Caption := FormatDateTime('ddddd', qryMatter.FieldbyName('EXP_COMPLETION').AsDateTime)
      else
        lblExpCompletion.Caption := '';
  end;
//****  show 120+ debtors
{    qryAgedDebtors90.Close;
    qryAgedDebtors90.ParamByName('p4').AsInteger := 119;
    qryAgedDebtors90.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    qryAgedDebtors90.Open;

    if qryAgedDebtors90.FieldByName('adj10').AsCurrency <> 0 then
       lblDebtors90.Caption := Format('%.2m', [qryAgedDebtors90.FieldByName('adj10').AsCurrency]);  }

  Screen.Cursor := crDefault;
end;

procedure TfrmMatters.pageMatterChange(Sender: TObject);
var
   L_DefaultWorkFlow,
   sCustomAddress,
   sWhichAddress: string;
   I: integer;
   ADC: TcxGridDBDataController;
begin
  cxEventEditorClass := nil;

  if qryMatter.Active then
  begin
      Screen.Cursor := crSQLWait;
      qryFees.Close;
      qryTime.Close;
      qryDiary.Close;
//      qryDocs.Close;
      qryInvoices.Close;
      qrySubBill.Close;
      qryReceipts.Close;
      qryMatterParty.Close;
//      qryPhonebook.Close;
      qryTransit.Close;
//      qMatterDataFields.Close();
      qryBenchmark.Close();
      qryNotional.Close();
      qryCriticalDates.close;
      qryGenDocParties.Close;

      L_DefaultWorkFlow := SystemString('DFLT_MATTER_PREC_WORKFLOW');

      if pageMatter.ActivePage = tabClient then
      begin
         try
            begin
               if qryPhoneBook.Active = False then
               begin
                  sCustomAddress := GetDisplayName('PHONEBOOK', 'CUSTOM ADDRESS');
                  if sCustomAddress <> '' then
                     tabCustomAddress.Caption := sCustomAddress;
                  qryPhoneBook.Open;
                  sWhichAddress := qryPhoneBook.FieldByName('WHICHADDRESS').AsString;
                  if sWhichAddress = 'S' then
                     tabStreetAddress.Highlighted := True
                  else if sWhichAddress = 'P' then
                     tabPostalAddress.Highlighted := True
                  else if sWhichAddress = 'C' then
                     tabCustomAddress.Highlighted := True
                  else if sWhichAddress = 'D' then
                     tabDX.Highlighted := True;
               end;
            end;
         except

         end;
      end
      else if pageMatter.ActivePage = tabBalances then
      begin
         RefreshGrid;
      end
      else if pageMatter.ActivePage = tabSubNames then
      begin
         qListChildren.Close;
         qListChildren.ParamByName('nclient').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
         qListChildren.Open();
      end
      else if pageMatter.ActivePage = tabOverview then
      begin
          qryCreditors.Close;
          qryCreditors.Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
          qryCreditors.Open;

          qryLastTrust.Close;
          qryLastTrust.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
          qryLastTrust.Open;
          lblLastTrustTx.Caption := qryLastTrust.FieldByName('last_trust_tx').AsString;

          SetupMatterBalances;
      end
      else if pageMatter.ActivePage = tabParties then
      begin
         qryMatterParty.Close;
         qryMatterParty.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
         qryMatterParty.Open;
      end
      else if pageMatter.ActivePage = tabInvoices then
      begin
          qryInvoices.ParamByName('P_Matter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
          qryInvoices.Open;

          qrySubBill.ParamByName('P_Matter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
          qrySubBill.Open;

          if (not IsClosedMatter) then
          begin
             btnInvOpen.Enabled := not qryInvoices.EOF;
             btnInvWord.Enabled := not qryInvoices.EOF;
          end;    //  end if
          SetupMatterBalances;
          if chkExcludeBillReversals.Checked then
            qryInvoices.Filtered := True
      end
      else if pageMatter.ActivePage = tabReceipts then
      begin
          if pageReceipts.ActivePage = tabReceiptList then
          begin
            qryReceipts.Close;
            qryReceipts.ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
            qryReceipts.Open;
          end
          else if pageReceipts.ActivePage = tabReceiptReqs then
          begin
             qryReceiptReqs.Close;
             qryReceiptReqs.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
             qryReceiptReqs.Open;
          end;
      end else if pageMatter.ActivePage = tabGraph then
      begin
          GraphResize;
          qryFees.ParamByName('P_Matter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
          qryFees.Open;
          qryTime.ParamByName('P_Matter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
          qryTime.Open;
          qryBenchmark.ParamByName('P_Matter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
          qryBenchmark.Open;
          qryNotional.ParamByName('P_Matter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
          qryNotional.Open;
      end else if pageMatter.ActivePage = tabDiary then
      begin
        qryDiary.ParamByName('P_FileID').AsString := qryMatter.FieldByName('FILEID').AsString;
        qryDiary.Open;

      end else if pageMatter.ActivePage = tabDocs then
      begin
        if SystemString('docs_reg') <> C_DOCUMENTPASSWORD then
        begin
    //       tabPrecedents.Enabled := False;
           tabGenerated.Enabled := False;
           btndocAdd.Enabled := False;
//           btndocDelete.Enabled := False;
           btnPrecSearch.Enabled := False;
//           btnModifycreateNew.Enabled := False;
//           btnCreateNew.Enabled := False;
    //       btnCategories.Enabled := False;
    //       dxNavBar1.Enabled := False;
           PageDocuments.ActivePageIndex := 2;
           if cbGroupExpanded.Checked then
              dbgrDocs.FocusedView.DataController.Groups.FullExpand;
        end;
        SetupDocFolderTab;

{        else
        begin
            btndocDelete.Enabled := dmAxiom.Security.Document.DeleteDocument;

            qryDocs.ParamByName('NMATTER').AsString := qryMatter.FieldByName('NMATTER').AsString;
            qryDocs.Open;
            qryGenDocParties.ParamByName('NMATTER').AsString := qryMatter.FieldByName('NMATTER').AsString;
            qryGenDocParties.Open;
            if (FWorkflowType = '') and (FWorkflowType <> cmbWorkflowType.EditValue) then
            begin
               if L_DefaultWorkFlow <> '' then
                  cmbWorkflowType.EditValue := L_DefaultWorkFlow
               else
                  cmbWorkflowType.EditValue := qryMatter.FieldByName('WORKFLOW').AsString; // 'ZZZ';
          //    obarDocumentsChange(Self);
            end;
            SelectPrecedents(0);
            if cbGroupExpanded.Checked then
               dbgrDocs.FocusedView.DataController.Groups.FullExpand;
        end;  }

        if SystemString('HIDE_MATTER_WORKFLOW') = 'N' then
        begin
          if(Assigned(FGenDocumentsForm)) then
          begin
             if qryMatter.Active then
             begin
               FGenDocumentsForm.NMatter := qryMatter.FieldByName('NMATTER').AsInteger;
               PostMessage(FGenDocumentsForm.Handle, AXM_POPULATE,0,0);
             end;
          end;
        end;
      end else if pageMatter.ActivePage = tabPrecedents then
      begin
        if SystemString('docs_reg') <> C_DOCUMENTPASSWORD then
        begin
           tabPrecedents.Visible := (SystemString('precedents_reg') = C_PRECEDENTPASSWORD);
    //       tabGenerated.Enabled := False;
           btndocAdd.Enabled := False;
//           btndocDelete.Enabled := False;
           btnPrecSearch.Enabled := False;
//           btnModifycreateNew.Enabled := False;
//           btnCreateNewDF.Enabled := False;
    //       btnCategories.Enabled := False;
    //       dxNavBar1.Enabled := False;
           PageDocuments.ActivePageIndex := 2;
        end
        else
        begin
           if qryMatter.Active then
           begin
              if not FDocTabSetup then
                SetupDocTab;

       //       tvTemplatesDESCR.GroupIndex := 0;
       //       tvTemplatesNAME.GroupIndex := 1;
 //             btndocDelete.Enabled := dmAxiom.Security.Document.DeleteDocument;
//              if (qryPrecedents.active = False) then
//                 qryPrecedents.Open;
       //       qryDocs.ParamByName('NMATTER').AsString := qryMatter.FieldByName('NMATTER').AsString;
       //       qryDocs.Open;

//              qryGenDocParties.ParamByName('NMATTER').AsString := qryMatter.FieldByName('NMATTER').AsString;
//              qryGenDocParties.Open;

              try
                 cmbWorkflowType.Properties.OnChange := nil;
                 if (FWorkflowType = '') and (FWorkflowType <> cmbWorkflowType.EditValue) then
                 begin
                    if L_DefaultWorkFlow <> '' then
                      cmbWorkflowType.EditValue := L_DefaultWorkFlow
                    else
                      cmbWorkflowType.EditValue := qryMatter.FieldByName('WORKFLOW').AsString; // 'ZZZ';

                    cmbWorkflowType.Properties.OnChange := cmbWorkflowTypePropertiesChange;

                    cmbWorkflowTypePropertiesChange(Sender);
                 end;
              finally
                 cmbWorkflowType.Properties.OnChange := cmbWorkflowTypePropertiesChange;
                 SelectPrecedents(0);
              end;

          //    obarDocumentsChange(Self);

          end
        end;
        if(Assigned(FGenDocumentsForm)) then
        begin
           FGenDocumentsForm.NMatter := qryMatter.FieldByName('NMATTER').AsInteger;
           PostMessage(FGenDocumentsForm.Handle, AXM_POPULATE,0,0);
        end;
      end else if pageMatter.ActivePage = tabFields then
      begin
        qMatterDataFields.Close();

        qMatterDataFields.ParamByName('nunique').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;

        qMatterDataFields.Open();
        if boolean(chkDataFormsExpanded.EditValue) = True then
           vtMatterData.FullExpand();
      end else if pageMatter.ActivePage = tabTransit then
      begin
        qryTransit.ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
        qryTransit.Open;
{      end else if pageMatter.ActivePage = tsGenDocuments then
      begin
        if(Assigned(FGenDocumentsForm)) then
          FGenDocumentsForm.NMatter := qryMatter.FieldByName('NMATTER').AsInteger;
          PostMessage(FGenDocumentsForm.Handle, AXM_POPULATE,0,0);  }
      end else if pageMatter.ActivePage = tabDebtorNotes then
        UpdateDebtorNotes()
      else if pageMatter.ActivePage = tabCriticalDates then
      begin
        qryCriticalDates.Close;
        qryCriticalDates.ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
        qryCriticalDates.Open;
      end
      else if pageMatter.ActivePage = tabMatterNotes then
      begin
         qryMatterNotes.Close;
         qryMatterNotes.ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryMatterNotes.Open;
      end
      else if pageMatter.ActivePage = tabTasks then
      begin
         qryTasks.Close;
         qryTasks.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryTasks.Open;
      end
      else if pageMatter.ActivePage = tabControlledMoney then
      begin
         qryControlledTotal.Close;
         qryControlledTotal.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryControlledTotal.Open;

         qryInvestmentTransactions.Close;
         qryInvestmentTransactions.ParamByName('ndepositaccount').AsInteger := qryControlledTotal.FieldByName('ndepositaccount').AsInteger;
         qryInvestmentTransactions.Open;
      end
      else if pageMatter.ActivePage = tabSearches then
      begin
         try
            tvSearches.BeginUpdate();
            ADC := tvSearches.DataController;
            qrySearchesList.Close;
            qrySearchesList.ParamByName('fileid').AsString := qryMatter.FieldByName('FILEID').AsString;
            qrySearchesList.Open;
         finally
//            for I := 0 to ADC.RecordCount - 1 do
 //              ADC.Values[I, tvSearchesColumn1.Index] := 0;
            tvSearches.EndUpdate;
         end;
      end
      else if pageMatter.ActivePage = tabProject then
      begin
         try
            cxEventEditorClass := TfrmNewTaskNew; // indicate that the
            //  new Event modal dialog will be invoked at runtime
            tvProjects.BeginUpdate();
            qryProjectMatter.Close;
            qryProjectMatter.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
            qryProjectMatter.Open;
         finally
            tvProjects.EndUpdate;
         end;
      end
      else if pageMatter.ActivePage = tabAuthorChange then
      begin
          qryMatterAuthor.Close;
          qryMatterAuthor.ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
          qryMatterAuthor.Open;
      end;
      Screen.Cursor := crDefault;
   end;
end;

procedure TfrmMatters.GraphResize;
begin
{  dbchFeePie.Width := (tabGraph.Width div 2) - 2;
  dbchTime.Left := dbchFeePie.Width + 2;
  dbchTime.Width := dbchFeePie.Width;
  dbchFeePie.Height := tabGraph.Height;
  dbchTime.Height := tabGraph.Height;}
end;


procedure TfrmMatters.imgClientIDClick(Sender: TObject);
var
   frmClient_img_view: tfrmClient_img_view;
begin
   try
      frmClient_img_view := TfrmClient_img_view.Create(Self);
      with frmClient_img_view do
      begin
         qryPhoneBook.Close;
         qryPhonebook.ParamByName('nclient').asinteger := frmMatters.qryMatter.FieldByName('nclient').AsInteger;
         qryPhonebook.Open;
         Showmodal;
      end;
   finally
      frmClient_img_view.Free;
   end;
end;

procedure TfrmMatters.CalcFields;
begin
  lblClientPhone.Caption := PhonebookString(qryMatter.FieldByName('NNAME').AsInteger, 'PHONE');
  lblPartnerName.Caption := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('PARTNER').AsString, 'NAME');
  lblControllerName.Caption := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('CONTROLLER').AsString, 'NAME');
  lblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('AUTHOR').AsString, 'NAME');
  lblOperatorName.Caption := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('OPERATOR').AsString, 'NAME');
  lblTypeDesc.Caption := TableString('MATTERTYPE', 'CODE', qryMatter.FieldByName('TYPE').AsString, 'DESCR');
  lblOpenedBy.Caption := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('CREATED_BY').AsString, 'NAME');
end;


procedure TfrmMatters.tbtnSnapshotClick(Sender: TObject);
begin
  frmDesktop.AddSnapshot(69, qryMatter.FieldByName('FILEID').AsString + ' ' + qryMatter.FieldByName('SEARCH').AsString + ' ' + qryMatter.FieldByName('SHORTDESCR').AsString);
end;


procedure TfrmMatters.dbgrDocsDblClick(Sender: TObject);
begin
  btnModifyCreateNewClick(Self);
end;


procedure TfrmMatters.tbtnFeeClick(Sender: TObject);
var
  LfrmFeeNew: TfrmFeeNew;
begin
  LfrmFeeNew := TfrmFeeNew.Create(Self, False);
  LfrmFeeNew.Show;
  LfrmFeeNew.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;


procedure TfrmMatters.tbtnDiaryClick(Sender: TObject);
var
  LfrmDiaryNew: TfrmDiaryNew;
begin
//  if(not Assigned(FOutlookIntegrator)) then
//    FOutlookIntegrator := TOutlookIntegrator.Create();

{  if(FOutlookIntegrator.UseOutlook) then
  begin
    if(FOutlookIntegrator.NewAppointment(qryMatter.FieldByName('NMATTER').AsInteger,tcDiary.TabIndex = 0, Trim(tcDiary.Tabs[tcDiary.TabIndex]))) then
      FOutlookIntegrator.ListMatterAppointments(lvDiary,qryMatter.FieldByName('NMATTER').AsInteger, tcDiary.TabIndex = 0, Trim(tcDiary.Tabs[tcDiary.TabIndex]));
  end else
  begin }
    LfrmDiaryNew := TfrmDiaryNew.Create(Self);
    LfrmDiaryNew.Show;
    LfrmDiaryNew.DisplayFile(qryMatter.FieldByName('FILEID').AsString, qryMatter.FieldByName('NNAME').AsInteger);
//  end;
end;

procedure TfrmMatters.tbtnSundryClick(Sender: TObject);
var
  frmNewSundryNew : TfrmSundryNew;
begin
  frmNewSundryNew := TfrmSundryNew.Create(Self);
{  Code Modified 11.9.2002 GG

   Moved the next line of code lower down to solve a display problem

  frmNewSundryNew.Show;}
  frmNewSundryNew.DisplayMatter(qryMatter.FieldByName('NMATTER').AsInteger);
  frmNewSundryNew.Show;
end;

procedure TfrmMatters.tbtnInvoiceClick(Sender: TObject);
var
  iOpenInvoice : integer;
  LfrmInvoice: TfrmInvoice;
  sDiscount: string;
begin
  if dmAxiom.Security.Bill.ConfirmCreate then
  begin
    if MsgAsk('Do you want to create a bill for Matter ' + qryMatter.FieldByName('FILEID').AsString + #13 + qryMatter.FieldByName('SEARCH').AsString + #13 + qryMatter.FieldByName('SHORTDESCR').AsString + '?') = mrNo then
      Exit;
  end;

  // Check if they want to open an existing, undispatched invoice
  iOpenInvoice := 0;
  qryTmp.SQL.Text := 'SELECT NMEMO FROM NMEMO WHERE DISPATCHED IS NULL AND FILEID = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString);
  qryTmp.Open;
  if not qryTmp.EOF then
    iOpenInvoice := qryTmp.FieldByName('NMEMO').AsInteger;
  qryTmp.Close;

  if iOpenInvoice <> 0 then
  begin
    // Open an existing invoice?
    if MsgAsk('A draft bill already exists for this matter.' + chr(13) + chr(13) + 'Do you want to edit this bill instead of creating a new one?') <> mrYes then
      iOpenInvoice := 0;
  end;
  // Open or create the invoice
  LfrmInvoice := TfrmInvoice.Create(Application);
  if iOpenInvoice = 0 then
  begin
    LfrmInvoice.OwnerForm := Self;
    CreateInvoice(qryMatter.FieldByName('NMATTER').AsInteger, qryMatter.FieldByName('NCLIENT').AsInteger, Now, sDiscount);
  end
  else
    LfrmInvoice.DisplayInvoice(iOpenInvoice, Self);

   LfrmInvoice.tbtnDebtorTask.Enabled := false;
   LfrmInvoice.dtpInterim.DateTime := Now;
   LfrmInvoice.dtpInterim.Checked := False;

  if qryInvoices.Active then
    qryInvoices.Refresh;
end;


procedure TfrmMatters.btnFeeLedgerClick(Sender: TObject);
var
  LfrmRptLedgerFees: TfrmRptLedgerFees;
begin
  LfrmRptLedgerFees := TfrmRptLedgerFees.Create(Self);
  LfrmRptLedgerFees.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.btnSundLedgerClick(Sender: TObject);
var
  LfrmRptLedgerSundry: TfrmRptLedgerSundry;
begin
  LfrmRptLedgerSundry := TfrmRptLedgerSundry.Create(Self);
  LfrmRptLedgerSundry.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.btnDisbLedgerClick(Sender: TObject);
var
  LfrmRptLedgerDisb: TfrmRptLedgerDisb;
begin
  LfrmRptLedgerDisb := TfrmRptLedgerDisb.Create(Self);
  LfrmRptLedgerDisb.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.btnTrustLedgerClick(Sender: TObject);
var
  LfrmRptLedgerTrust: TfrmRptLedgerTrust;
begin
   LfrmRptLedgerTrust := TfrmRptLedgerTrust.Create(Self);
   LfrmRptLedgerTrust.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.tbtnCheqReqClick(Sender: TObject);
var
   LfrmCheqReqNew: TfrmCheqReqNew;
begin
   LfrmCheqReqNew := TfrmCheqReqNew.Create(Self);
   LfrmCheqReqNew.DisplayFile(qryMatter.FieldByName('FILEID').AsString);
   LfrmCheqReqNew.Show;
end;


procedure TfrmMatters.btnDebtLedgerClick(Sender: TObject);
var
  LfrmRptLedgerDebt: TfrmRptLedgerDebt;
begin
  LfrmRptLedgerDebt := TfrmRptLedgerDebt.Create(Self);
  LfrmRptLedgerDebt.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;


procedure TfrmMatters.btnComboLedgerClick(Sender: TObject);
var
  LfrmRptLedgerCombo: TfrmRptLedgerCombo;
begin
  LfrmRptLedgerCombo := TfrmRptLedgerCombo.Create(Self);
  LfrmRptLedgerCombo.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;


procedure TfrmMatters.mnuFileOpenClick(Sender: TObject);
begin
  mnuSearchFind.Click;
end;

procedure TfrmMatters.mnuFileNewFeeClick(Sender: TObject);
var
  LfrmFeeNew: TfrmFeeNew;
begin
   if (DebtorStopWork(qryMatter.FieldByName('debtorstatus').AsString) = False) then
   begin
      LfrmFeeNew := TfrmFeeNew.Create(Self, False);
      LfrmFeeNew.Show;
      LfrmFeeNew.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
   end
   else
      MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded');
end;

procedure TfrmMatters.mnuFileNewSundryClick(Sender: TObject);
var
  frmNewSundryNew : TfrmSundryNew;
begin
  frmNewSundryNew := TfrmSundryNew.Create(Self);
{  Code Modified 11.9.2002 GG

   Moved the next line of code lower down to solve a display problem

  frmNewSundryNew.Show;}
  frmNewSundryNew.DisplayMatter(qryMatter.FieldByName('NMATTER').AsInteger);
  frmNewSundryNew.ShowModal;
end;

procedure TfrmMatters.mnuFileNewCheqReqClick(Sender: TObject);
var
  LfrmCheqReqNew: TfrmCheqReqNew;
begin
  LfrmCheqReqNew := TfrmCheqReqNew.Create(Self);
  LfrmCheqReqNew.FromMatter := True;
  LfrmCheqReqNew.DisplayFile(qryMatter.FieldByName('FILEID').AsString);
  LfrmCheqReqNew.Show;
end;

procedure TfrmMatters.mnuFileNewInvoiceClick(Sender: TObject);
var
  iOpenInvoice,
  iInvoice : integer;
//  LfrmInvoice: TfrmInvoice;
  LfrmBillCreateAsk: TfrmBillCreateAsk;
  sDiscount: string;
begin
  if dmAxiom.Security.Bill.ConfirmCreate then
  begin
    if MsgAsk('Do you want to create a bill for Matter ' + qryMatter.FieldByName('FILEID').AsString + #13 + qryMatter.FieldByName('SEARCH').AsString + #13 + qryMatter.FieldByName('SHORTDESCR').AsString + '?') = mrNo then
      Exit;
  end;

  // Check if they want to open an existing, undispatched invoice
  iOpenInvoice := 0;
  qryTmp.SQL.Text := 'SELECT NMEMO FROM NMEMO WHERE DISPATCHED IS NULL AND FILEID = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString);
  qryTmp.Open;
  if not qryTmp.EOF then
    iOpenInvoice := qryTmp.FieldByName('NMEMO').AsInteger;
  qryTmp.Close;

  if iOpenInvoice <> 0 then
  begin
    // Open an existing invoice?
    LfrmBillCreateAsk := TfrmBillCreateAsk.Create(Self);
    try
      with LfrmBillCreateAsk do
      begin
         Label1.Caption := 'A draft bill already exists for this matter.' + chr(13) + chr(13) + 'Do you want to edit this bill instead of creating a new one?';
//      if MsgAsk('A draft bill already exists for this matter.' + chr(13) + chr(13) + 'Do you want to edit this bill instead of creating a new one?') <> mrYes then
         if ShowModal = mrYes then
            iOpenInvoice := 0;
      end;
    finally
      FreeAndNil(LfrmBillCreateAsk);
    end;
  end;
  // Open or create the invoice
  if iOpenInvoice <> 0 then
  begin
     if FormExists(LfrmInvoice) then
        LfrmInvoice.Show
     else
     begin
        if Assigned(LfrmInvoice) then
        begin
           LfrmInvoice := nil;
        end;
        LfrmInvoice := TfrmInvoice.Create(Application);
     end;
  end
  else
     LfrmInvoice := TfrmInvoice.Create(Application);

  if iOpenInvoice = 0 then
  begin
    LfrmInvoice.OwnerForm := Self;
    iInvoice := CreateInvoice(qryMatter.FieldByName('NMATTER').AsInteger,
                              qryMatter.FieldByName('NCLIENT').AsInteger, Now, sDiscount, False, Self);
    LfrmInvoice.edtDiscount.Text := sDiscount;
    LfrmInvoice.lblDiscount.Caption := LfrmInvoice.edtDiscount.Text;

    LfrmInvoice.lblFeesAvail.Visible := True;
    LfrmInvoice.lblDisbAvail.Visible := True;
    LfrmInvoice.lblAntdAvail.Visible := True;
    LfrmInvoice.lblUnPaidAvail.Visible := True;
    LfrmInvoice.lblSundAvail.Visible := True;
    LfrmInvoice.DisplayInvoice(iInvoice, Self);
  end
  else
    LfrmInvoice.DisplayInvoice(iOpenInvoice, Self);

  if qryInvoices.Active then
    qryInvoices.Refresh;
end;

procedure TfrmMatters.mnuFileNewDiaryClick(Sender: TObject);
var
  LfrmDiaryNew: TfrmDiaryNew;
begin
//  if(not Assigned(FOutlookIntegrator)) then
//    FOutlookIntegrator := TOutlookIntegrator.Create();

{  if(FOutlookIntegrator.UseOutlook) then
  begin
    if(FOutlookIntegrator.NewAppointment(qryMatter.FieldByName('NMATTER').AsInteger,tcDiary.TabIndex = 0, Trim(tcDiary.Tabs[tcDiary.TabIndex]))) then
      FOutlookIntegrator.ListMatterAppointments(lvDiary,qryMatter.FieldByName('NMATTER').AsInteger, tcDiary.TabIndex = 0, Trim(tcDiary.Tabs[tcDiary.TabIndex]));
  end else
  begin     }
    LfrmDiaryNew := TfrmDiaryNew.Create(Self);
    LfrmDiaryNew.Show;
    LfrmDiaryNew.DisplayFile(qryMatter.FieldByName('FILEID').AsString, qryMatter.FieldByName('NNAME').AsInteger);
//  end;
end;

procedure TfrmMatters.mnuFileSnapshotClick(Sender: TObject);
begin
    frmDesktop.AddSnapshot(69, qryMatter.FieldByName('FILEID').AsString + ' ' + qryMatter.FieldByName('SEARCH').AsString + ' ' + qryMatter.FieldByName('SHORTDESCR').AsString);
end;

procedure TfrmMatters.mnuFileLedgerFeesClick(Sender: TObject);
begin
  btnFeeLedger.Click;
end;

procedure TfrmMatters.mnuFileLedgerSundryClick(Sender: TObject);
begin
  btnSundLedger.Click;
end;

procedure TfrmMatters.mnuFileLedgerDisbClick(Sender: TObject);
begin
  btnDisbLedger.Click;
end;

procedure TfrmMatters.mnuFileLedgerDebtorsClick(Sender: TObject);
begin
  btnDebtLedger.Click;
end;

procedure TfrmMatters.mnuFileLedgerTrustClick(Sender: TObject);
begin
  btnTrustLedger.Click;
end;

procedure TfrmMatters.mnuFileLedgerComboClick(Sender: TObject);
begin
  btnComboLedger.Click;
end;

procedure TfrmMatters.mnuFileExitClick(Sender: TObject);
begin
  Self.Close;
//  RemoveFromDesktop(Self);
end;


procedure TfrmMatters.SetReopenList;
var
  iCtr : integer;
begin
{  ReopenListSet('MATTER', mnuFileReopen);
  for iCtr := 0 to mnuFileReopen.Count - 1 do
    mnuFileReopen.Items[iCtr].OnClick := mnuReopen;  }
end;


procedure TfrmMatters.mnuReopen(Sender: TObject);
var
  sFileID : string;
begin
  sFileID := Copy((Sender as TMenuItem).Caption, 1, Pos(' ', (Sender as TMenuItem).Caption)-1);
  if Pos('&', sFileID) > 0 then
    sFileID := Copy(sFileID, 1, Pos('&', sFileID) - 1);

  if frmMatterSearch.FindMatter(sFileID) then
    NavigateMatter
  else
  begin
    DisplayMatter(sFileID);
    SetReopenList;
  end;
end;


procedure TfrmMatters.mnuOpenAssociated(Sender: TObject);
begin
  DisplayMatter((Sender as TMenuItem).Caption);
  SetReopenList;
end;


procedure TfrmMatters.NavigateMatter;
begin
  DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
  //needs to be removed
  //ReopenListUpdate('MATTER', frmMatterSearch.qryMatters.FieldByName('FILEID').AsString);
  SetReopenList;
end;

procedure TfrmMatters.SetAssociations;
var
  iCtr : integer;
  mnuSubItem : TMenuItem;
begin
  if dmAxiom.Security.Matter.Associate then
  begin
{    spdAssoc.Visible := False;
//    mnuFileAssocLine1.Visible := False;
    for iCtr := 2 to mnuFileAssoc.Count - 1 do
      mnuFileAssoc.Delete(2);

    qryTmp.Close;
    qryTmp.SQL.Text := 'SELECT ASSOCMATTER, MASTER FROM MATTERASSOC WHERE MAINMATTER = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString) + ' ORDER BY ASSOCMATTER';
    qryTmp.Open;
    if not qryTmp.IsEmpty then
    begin
      spdAssoc.Visible := True;
      mnuFileAssocLine1.Visible := True;
      while not qryTmp.EOF do
      begin
        mnuSubItem := TMenuItem.Create(mnuFileAssoc);
        mnuFileAssoc.Add(mnuSubItem);
        mnuSubItem.Caption := qryTmp.FieldByName('ASSOCMATTER').AsString;
        if qryTmp.FieldByName('MASTER').AsString = 'Y' then
        begin
          mnuSubItem.ImageIndex := 17;
          mnuSubItem.Default := True;
        end;
        mnuSubItem.OnClick := mnuOpenAssociated;

        qryTmp.Next;
      end;
    end;  }
  end;
end;


procedure TfrmMatters.mnuSearchFindClick(Sender: TObject);
//var
//   LfrmMatters: TfrmMatters;
begin
   ChooseMatter;
   SetCaption;
   dxbtnRefresh.Click;
    //if FindorCreate(TfrmMatterSearch, 0).ShowModal = mrOK then

{   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
//      Application.CreateForm(TfrmMatters, LfrmMatters);
//      LfrmMatters.DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
//      if (frmDesktop.pagMainControl.ActivePageIndex = 0) and (FMatters = 0) then
//      begin
//         Application.CreateForm(TfrmMatters, LfrmMatters);
//         FMatters := frmDesktop.fdTab.AddForm(LfrmMatters, True);
//      end;
      if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
      begin
         if IsMatterPrivate(dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger) then
         begin
            MessageWarning('This matter is marked as private. You do not have permission to view it.');
//            ChooseMatter := False;
         end;
         else
         begin
            DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
            SetCaption;
            SetControls;
            if (not Visible) then
               Show;
         end;
      end;
  end;      }
end;

procedure TfrmMatters.SetCaption;
begin
   if frmDesktop.pagMainControl.ActivePageIndex = 0 then
//      if frmDesktop.fdTab.ActiveFormIndex <> 0 then
         Caption:='Matter: ' +
                               qryMatter.FieldByName('SEARCH').AsString + ' ' +
                               qryMatter.FieldByName('SHORTDESCR').AsString + ' ' +
                               qryMatter.FieldByName('FILEID').AsString;
end;

procedure TfrmMatters.qryInvoicesCalcFields(DataSet: TDataSet);
begin
   qryInvoices.FieldByName('Total').AsCurrency := qryInvoices.FieldByName('FEES').AsCurrency + qryInvoices.FieldByName('DISB').AsCurrency + qryInvoices.FieldByName('ANTD').AsCurrency + qryInvoices.FieldByName('SUND').AsCurrency + qryInvoices.FieldByName('TAX').AsCurrency;
   qryInvoices.FieldByName('Owing').AsCurrency := qryInvoices.FieldByName('Total').AsCurrency - qryInvoices.FieldByName('FEES_PAID').AsCurrency - qryInvoices.FieldByName('DISB_PAID').AsCurrency - qryInvoices.FieldByName('ANTD_PAID').AsCurrency - qryInvoices.FieldByName('SUND_PAID').AsCurrency - qryInvoices.FieldByName('TAX_PAID').AsCurrency;
end;

procedure TfrmMatters.btnNewInvoiceClick(Sender: TObject);
begin
  mnuFileNewInvoice.Click;
end;

procedure TfrmMatters.btnInvOpenClick(Sender: TObject);
begin
   if FormExists(LfrmInvoice) then
      LfrmInvoice.Show
   else
   begin
      LfrmInvoice := TfrmInvoice.Create(Application);
      LfrmInvoice.DisplayInvoice(qryInvoices.FieldByname('NMEMO').AsInteger, Self);
      LfrmInvoice.Show;
   end;
{ Modified 21.11.2002 GG

  This doesn't work now that the form is not modal, so we'll try doing it
  another way.  Refresh the whole matter details from the Invoice code

  qryInvoices.Refresh;
}
end;

procedure TfrmMatters.dbgrInvoicesDblClick(Sender: TObject);
begin
  btnInvOpen.Click;
end;

procedure TfrmMatters.qryMatterAfterScroll(DataSet: TDataSet);
begin
   try
      if not dmAxiom.WANEnabled then
      begin
         lblClientCode.Caption := TableString('CLIENT', 'NCLIENT', qryMatter.FieldByName('NCLIENT').AsInteger, 'CODE');
//      qMatterDataFields.ParamByName('nunique').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;

         pageMatter.OnChange(Self);
      end;
   finally
      SetControls;
   end;
end;

procedure TfrmMatters.btnNewControlledMoneyClick(Sender: TObject);
Var
   frmDepositAccount: TfrmDepositAccount;
begin
   frmDepositAccount := TfrmDepositAccount.Create(Self);
   try
      with frmDepositAccount do
      begin
         qrySource.Insert;
//         FileID := qryMatter.FieldByName('FILEID').AsString;
         ShowModal;
      end;
   finally
      frmDepositAccount.Free;
   end;

end;

procedure TfrmMatters.btnNewDiaryClick(Sender: TObject);
begin
  mnuFileNewDiary.Click;
end;

procedure TfrmMatters.tbtnPrintClick(Sender: TObject);
begin
  if not Assigned(MatterLabel) then
    MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
  if not MatterLabel.Cancelled then
    MatterLabel.Print(qryMatter.FieldByName('NMATTER').AsInteger);
end;

procedure TfrmMatters.tbtnRefreshClick(Sender: TObject);
begin
   if qryMatter.Active = False then
      qryMatter.Open;
   if qryMatter.Active = True then
      DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.btnInvWordClick(Sender: TObject);
begin
   if (tvInvoices.Controller.SelectedRowCount > 0) then
      InvoiceMerge(qryInvoices.FieldByName('NMEMO').AsInteger,qryMatter.FieldByName('NMATTER').AsInteger);
end;

procedure TfrmMatters.tmrRefreshTimer(Sender: TObject);
begin
   if dmAxiom.bShutDown = False then
   begin
      try
         if (qryMatter.Active = True) then
         begin
            if RefreshNeededMatter(qryMatter.FieldByName('FILEID').AsString, qryMatter.FieldByName('REFRESH').AsInteger) then
               dxbtnRefresh.Click;
         end;
      except
         tmrRefresh.Enabled := False;
      end;
   end;
end;

procedure TfrmMatters.FormClose(Sender: TObject; var Action: TCloseAction);
var
   ASaveViewName: string;
begin
   if qryMatter.UpdatesPending then
   begin
      if MessageDlg('Save changes ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         qryMatter.ApplyUpdates;
   end;
//  FreeAndNil(FOutlookIntegrator);
   MatterLabel.Free;
   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
   begin
      if Self.WindowState = wsMaximized then
         SettingSave('MATTERS', 'MAXIMIZED', True)
      else
      begin
         SettingDelete('MATTERS', 'MAXIMIZED');
         SettingSave('MATTERS', 'WIDTH', Self.Width);
         SettingSave('MATTERS', 'HEIGHT', Self.Height);
      end;
   end;

   SettingSaveStream(dmAxiom.UserID,'MATTER_PREC_VIEW',tvTemplates);

   SettingSaveStream(dmAxiom.UserID,'MATTER_BILLS',tvInvoices);
   SettingSaveStream(dmAxiom.UserID,'MATTER_SUBBILLS',tvSubBills);
   SettingSaveStream(dmAxiom.UserID,'M_ARCHIVE_LOC',tvArchiveLocation);
   SettingSaveStream(dmAxiom.UserID,'M_DOC_VERSION',tvDocsVersion);
   SettingSaveStream(dmAxiom.UserID,'M_EMAIL_ATTACH',tvEmailAttachments);
   SettingSaveStream(dmAxiom.UserID,'MATTER_SEARCHES',tvSearches);

   SettingSave(dmAxiom.UserID, 'MATTER', 'OPENTAB', pageMatter.ActivePageIndex);

   SettingSaveBoolean('MATTERS','UNBILLEDBALANCESWITHGST',cbUnbillBalanceswithGST.Checked);

   SettingSaveBoolean('MATTERS','DOCUMENTGROUPEXP', cbGroupExpanded.Checked);

   SettingSaveBoolean('MATTERS','SHOWMATTERDETAILSPANEL', cbShowMatterDetails.Checked);

   if tabPrecedents.TabVisible then
   begin
      SettingSave('MATTER_PREC_MENU',  'PanelWidth',docksiteMenu.width{ dockpnlPrecedents.Width});
//     SettingSaveStream(dmAxiom.UserID,'MATTER_PREC_MENU', dockpnlPrecedents);
     SettingSaveStream(dmAxiom.UserID,'MATTER_PREC_VIEW',tvTemplates);
   end;

   if (tabDocs.Visible = True) then
   begin
      ASaveViewName := 'tvDocs Layout';
      SettingSaveStream(dmAxiom.UserID, ASaveViewName, tvDocs);
      // 19 April 2018 DW save matter folder setting
      SettingSaveBoolean('Matter_Doc','DocFolderPanelAutoHide',DockPanelFolderList.Showing);
      SettingSave('Matter_Doc','DocFolderPanelHeight',DockPanelFolderList.height);
      SettingSave('Matter_Doc','DocFolderPanelWidth',DockPanelFolderList.width);
   end;

 //  if FPreview <> nil then
 //     FPreview.Free;

   qryPhonebookParty1.Close;
   qryPhonebookParty2.Close;
   qryPhonebookParty3.Close;
   qryInvoices.Close;
   qryTime.Close;
   qryMatter.Close;
   qryDiary.Close;
   qryPhonebook.Close;
   qryDocs.Close;
   qryTmp.Close;
   qryFees.Close;
   qryMatterParty.Close;
   qryReceipts.Close;
   qryBenchmark.Close();
   qryNotional.Close();
   qryMatterStatus.Close;
   tblArchiveType.Close;
   qryGenDocParties.Close;
   qryMatterNotes.Close;
   qryGetSeq.Close;
   qryArchiveLocation.Close;
   qryEmployee.Close;
   qryAutoTimerTask.Close;
   qryFeeTasks.Close;
   qryProjectTasks.Close;
   qryProjectMatter.Close;
   qryMatterAuthor.Close;

//  if OpWord1.Connected then
//      OpWord1.Connected := False;

   qMatterDataFields.Close();
   qryProjectTemplate.Close;

//   frmDesktop.lblTimer.Caption := '00:00:00';

  //try
   if (LMT <> nil) then
      RemoveFromDesktop(LMT);
  //except
  //  ;
  //end;

   if FRecipientsList <> nil then
      FreeAndNil(FRecipientsList);

   if FAttachFileName <> nil then
      FreeAndNil(FAttachFileName);

   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Action := caFree
   else
      RemoveFromDesktop(Self);
end;

procedure TfrmMatters.mnuFilePrintLabelClick(Sender: TObject);
begin
   if not Assigned(MatterLabel) then
      MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
   if not MatterLabel.Cancelled then
      MatterLabel.Print(qryMatter.FieldByName('NMATTER').AsInteger,'MATTERLABEL');
end;

procedure TfrmMatters.mnuFilePrintDetailsClick(Sender: TObject);
begin
//  TfrmRptMatterDetails.Print(qrymatter.FieldByName('NMATTER').AsInteger);
end;

procedure TfrmMatters.FormDeactivate(Sender: TObject);
begin
   if Assigned(tmrRefresh) then
      tmrRefresh.Enabled := False;
   cxEventEditorClass := nil;
//  SettingSave(dmAxiom.UserID, 'MATTER', 'OPENTAB', pageMatter.ActivePageIndex);
end;

procedure TfrmMatters.FormDestroy(Sender: TObject);
begin
   try
      if (Assigned(tmrRefresh) and tmrRefresh.Enabled = true) then
         tmrRefresh.Enabled := False;
      if (Assigned(tmrSearch) and tmrSearch.Enabled = true) then
         tmrSearch.Enabled := False;
      if (Assigned(tmrDocSearch) and tmrDocSearch.Enabled = True) then
         tmrDocSearch.Enabled := False;
      if (Assigned(tmrAutoCost) and tmrAutoCost.Enabled = True) then
         tmrAutoCost.Enabled := False;
   finally
       If (Assigned(tmrRefresh)) then tmrRefresh.Free;
       If (Assigned(tmrSearch)) then tmrSearch.Free;
       If (Assigned(tmrDocSearch)) then tmrDocSearch.Free;
       If (Assigned(tmrAutoCost)) then tmrAutoCost.Free;
   end;
end;

procedure TfrmMatters.FormActivate(Sender: TObject);
begin
   cxEventEditorClass := TfrmNewTaskNew; // indicate that the
   //  new Event modal dialog will be invoked at runtime
   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := clBtnFace;
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

   if not qryMatter.IsEmpty then
   begin
      if RefreshNeededMatter(qryMatter.FieldByName('FILEID').AsString, qryMatter.FieldByName('REFRESH').AsInteger) then
         dxbtnRefresh.Click;
      tmrRefresh.Enabled := True;
   end;

end;

procedure TfrmMatters.tbtnAssociateClick(Sender: TObject);
var
  LfrmMatterAssociate: TfrmMatterAssociate;
begin
  LfrmMatterAssociate := TfrmMatterAssociate.Create(Self);
  LfrmMatterAssociate.SetupAssociations(qryMatter.FieldByName('FILEID').AsString);
  LfrmMatterAssociate.Show;
end;

procedure TfrmMatters.mnuFileAssocEditClick(Sender: TObject);
var
  LfrmMatterAssociate: TfrmMatterAssociate;
begin
  LfrmMatterAssociate := TfrmMatterAssociate.Create(Self);
  LfrmMatterAssociate.SetupAssociations(qryMatter.FieldByName('FILEID').AsString);
  LfrmMatterAssociate.Show;
end;

procedure TfrmMatters.dbgrMatterPartyDblClick(Sender: TObject);
begin
  btnPartyOpen.Click;
end;

procedure TfrmMatters.btnPartyOpenClick(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
  LData: PContactData;
begin
  if not qryMatterParty.IsEmpty then
  begin
    if(not Assigned(vtContacts.FocusedNode)) then
      Exit;
    LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
    if(LData.NName < 0) then
      Exit;

    LfrmPhonebook := TfrmPhonebook.Create(Self);
    LfrmPhonebook.Search := IntToStr(LData.NName);  //   LData.Search;
    LfrmPhonebook.ShowMatterSpecific := True;
    LfrmPhonebook.LimitToNMatter := qryMatter.FieldByName('nmatter').AsInteger;
    LfrmPhonebook.ShowDataOnlyGroup := LData.PartyType;
    LfrmPhonebook.Show();
  end;
end;

procedure TfrmMatters.btnMatterPartyNewClick(Sender: TObject);
var
  LFieldName,
  LSearch,
  LParty: String;
  LData: PContactData;
  LfrmPhoneBookSearch: TfrmPhoneBookSearch;
  nRowCount, ARowIndex: integer;
begin
   if not FormExists(frmPhoneBookSearch) then
      LfrmPhoneBookSearch := TfrmPhoneBookSearch.Create(Self)
   else
      LfrmPhoneBookSearch := frmPhoneBookSearch;
//      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

   LfrmPhoneBookSearch.tvPhoneBook.OptionsSelection.MultiSelect := True;
   if(vtContacts.RootNodeCount > 0) then
   begin
      LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
      if(Assigned(LData)) then
         LfrmPhoneBookSearch.Party := LData.PartyType;
   end;
   LfrmPhoneBookSearch.LimitToPartySelection := True;

   try
      if(LfrmPhoneBookSearch.ShowModal() = mrOk) then
      begin
         LParty     := LfrmPhoneBookSearch.Party;
         for nRowCount := 0 to LfrmPhoneBookSearch.tvPhoneBook.DataController.GetSelectedCount - 1 do
         begin
            ARowIndex := LfrmPhoneBookSearch.tvPhoneBook.DataController.GetSelectedRowIndex(nRowCount);
            LfrmPhoneBookSearch.tvPhoneBook.ViewData.Records[ARowIndex].Focused := True;

            LSearch    := LfrmPhoneBookSearch.tvPhoneBookSEARCH1.EditValue; // LfrmPhoneBookSearch.Search;

            if(LParty = '') then
            begin
              MessageDlg('A party (group) must be selected.', mtError, [mbOK], 0);
              Exit;
            end;

            if(LSearch = '') then
            begin
              MessageDlg('A phone book entry must be selected.', mtError, [mbOK], 0);
              Exit;
            end;

            LFieldName := TableString('PBGROUP', 'CATEGORY', LParty, 'FIELDNAME');
            try
              qryTmp.SQL.Clear;
              qryTmp.SQL.Add('select count(*) as cnt from matterparty where nname = :nname and nmatter = :nmatter and category = :category');
              qryTmp.ParamByName('nmatter').AsInteger   := qryMatter.FieldByName('nmatter').AsInteger;
              qryTmp.ParamByName('CATEGORY').AsString := LParty;
              qryTmp.ParamByName('NNAME').AsInteger   := LfrmPhoneBookSearch.tvPhoneBookNNAME.EditValue;  //  LfrmPhoneBookSearch.NName;
              qryTmp.Open();

              if(qryTmp.FieldByName('cnt').AsInteger = 0) then
              begin
                qryTmp.Close();

                qryTmp.SQL.Clear;
                qryTmp.SQL.Add('INSERT INTO MATTERPARTY');
                qryTmp.SQL.Add('(nmatter, CATEGORY, NNAME)');
                qryTmp.SQL.Add('VALUES (:nmatter, :CATEGORY, :NNAME)');

                qryTmp.ParamByName('nmatter').AsInteger   := qryMatter.FieldByName('nmatter').AsInteger;
                qryTmp.ParamByName('CATEGORY').AsString := LParty;
                qryTmp.ParamByName('NNAME').AsInteger   := LfrmPhoneBookSearch.tvPhoneBookNNAME.EditValue;  //LfrmPhoneBookSearch.NName;

                qryTmp.ExecSQL();

              end else
                qryTmp.Close();
            except
              on E: Exception do
              begin
                MsgErr('Error adding Other Party:'#13#13 + E.Message);
                Exit;
              end;
            end;
         end;
         LfrmPhoneBookSearch.LimitToPartySelection := False;
      end;
   finally
//    LfrmPhoneBookSearch.LimitToPartySelection := False;
      LfrmPhoneBookSearch.tvPhoneBook.OptionsSelection.MultiSelect := false;
      qryMatterParty.Close();
      qryMatterParty.Open();
   end;
end;

procedure TfrmMatters.btnAutoReceiptClick(Sender: TObject);
var
   I, iCtr, RecIdx, ColIdx: Integer;
   NMemoVal: Variant;
begin
   if tvInvoices.Controller.SelectedRowCount <= 1 then
   begin
      if not qryInvoices.FieldByName('DISPATCHED').IsNull then
         (FindOrCreateClassic(TfrmReceipt, 31) as TfrmReceipt).AutoReceipt(qryInvoices.FieldByName('NMEMO').AsInteger)
   end else
   begin
      for I := 0 to tvInvoices.Controller.SelectedRecordCount - 1 do
      begin
         // RecordIndex provides the absolute index
         RecIdx := tvInvoices.Controller.SelectedRecords[I].RecordIndex;
         // Gets the column index of the Description field
         ColIdx := tvInvoices.DataController.GetItemByFieldName('NMEMO').Index;
         // Obtains the value of the required field
         NMemoVal := tvInvoices.DataController.Values[RecIdx, ColIdx];
         VarCast(NMemoVal, NMemoVal, varInteger);
         if not qryInvoices.FieldByName('DISPATCHED').IsNull then
            (FindOrCreateClassic(TfrmReceipt, 31) as TfrmReceipt).AutoReceipt(NMemoVal);
      end;
   end;
end;


procedure TfrmMatters.qryReceiptsCalcFields(DataSet: TDataSet);
begin
{
  with qryReceipts do
  begin
    if FieldByName('TYPE').AsString = 'RV' then
      FieldByName('Clearance').AsString := 'Reversal'
    else if FieldByName('REVERSED').AsString = 'Y' then
      FieldByName('Clearance').AsString := 'Reversed'
    else if FieldByName('CLEARED').AsString = 'Y' then
      FieldByName('Clearance').AsString := 'Cleared'
    else if not FieldByName('DCLEARDATE').IsNull then
      FieldByName('Clearance').AsString := FormatDateTime('ddddd', FieldByName('DCLEARDATE').AsDateTime);
    if FieldByName('AMOUNT').AsCurrency >= 0 then
      FieldByName('Credit').AsCurrency := FieldByName('AMOUNT').AsCurrency
    else
      FieldByName('Debit').AsCurrency := Abs(FieldByName('AMOUNT').AsCurrency);
  end;
}
end;

procedure TfrmMatters.dbgrDiaryDblClick(Sender: TObject);
var
  LfrmDiaryNew: TfrmDiaryNew;
begin
  LfrmDiaryNew := TfrmDiaryNew.Create(Self);
  LfrmDiaryNew.LoadDiary(qryDiary.FieldByName('NDIARY').AsInteger);
  LfrmDiaryNew.Show;
end;

procedure TfrmMatters.qryDiaryDESCRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryDiary.FieldByName('CAPTION').AsString;
end;

procedure TfrmMatters.qryMatterBeforeScroll(DataSet: TDataSet);
begin
  ConfirmSave;
end;


procedure TfrmMatters.ConfirmSave;
begin
  // Set focus to short description field in the case that the user is in the
  // the 'Expected Payment Details' field under the Debtors Note, in order
  // to save on exit via the windows 'X' close button.
//  if dbtbShortDescr.Enabled then
//    dbtbShortDescr.SetFocus;

  if (qryMatter.Modified) or (FDebtorNotesModified) then
  begin
    if MsgAsk('Do you want to save your changes?') = mrYes then
    begin
      qryMatter.ApplyUpdates;
      FDebtorNotesModified := False;
    end
    else
      qryMatter.CancelUpdates;
  end;
end;

procedure TfrmMatters.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ConfirmSave;
end;

procedure TfrmMatters.qryMatterBeforeClose(DataSet: TDataSet);
begin
  ConfirmSave;
end;

procedure TfrmMatters.btnContactClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not qryMatter.Modified then
      qryMatter.Edit;
    qryMatter.FieldByName('CONTACT').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatters.btnControlledStatementClick(Sender: TObject);
var
   regAxiom: TRegistry;
   sNetworkDir: string;
   OldDir: string;
   slReportName,
   DocErrMsg: string;
begin
   SettingSave('CONTROLLEDMONIESSTATEMENT', 'FileID', qryMatter.FieldByName('NMATTER').AsString);

   OldDir := GetCurrentDir;
   SetCurrentDir(ExtractFilePath(Application.EXEName));

   regAxiom := TRegistry.Create;
   regAxiom.RootKey := HKEY_CURRENT_USER;
   sNetworkDir := regAxiom.ReadString('NetworkDir');
   if regAxiom.OpenKey(dmAxiom.RegistryRoot, False) then
      ExecuteFile(sNetworkDir + 'Reports\ControlledMoniesStmt.exe', dmAxiom.UserID, '', SW_SHOW,DocErrMsg);

   regAxiom.Free;
   SetCurrentDir(OldDir);
//   Self.close;
end;

procedure TfrmMatters.btnCopyDocClick(Sender: TObject);
var
   LfrmDocumentCopyAsk :TfrmDocumentCopyAsk;
   LfrmDocNew: TfrmDocNew;
   LDocName,
   LDocPath,
   LNewPath,
   LTmpName,
   NewVersion,
   CurrVersion: string;
   MRValue: integer;
begin
    LfrmDocumentCopyAsk := TfrmDocumentCopyAsk.Create(Self);
    try
      with LfrmDocumentCopyAsk do
      begin
         Label1.Caption := 'Would you like to: ';
         MRValue := ShowModal;
         case MRValue of
            mrYes:
               begin
                  try
                     LfrmDocNew := TfrmDocNew.Create(Self);
//                     LfrmDocNew.Editing := True;
                     LfrmDocNew.NewCopyDoc := True;
                     LfrmDocNew.ADocId := tvDocsDOCID.EditValue; // qryDocs.FieldByName('docid').AsInteger;
                     LfrmDocNew.FileID :=  qryMatter.FieldByName('FILEID').AsString; //tvDocsFILEID.EditValue;
                     if LfrmDocNew.ShowModal = mrOk then
                     begin
//                        with qryCreateDocCopy do
//                        begin
//                           ParamByName('DOCID').AsInteger := tvDocsDOCID.EditValue;
//                           ExecSQL;
                           LDocName := string(LfrmDocNew.edtPath.Text);
                           MoveMatterDoc(LDocName, lfrmDocNew.OrigDocPath, False);
//                        end;
                     end;
                  finally
                     LfrmDocNew.Free;
                  end;
               end;
            mrNo:
               begin
                  LDocPath := tvDocsDISPLAY_PATH.EditValue;

                  with qryCreateDocVersion do
                  begin
                     if tvDocsOT_VERSION.EditValue > 1 then
                     begin
                        NewVersion := 'V' + IntToStr(StrToInt(tvDocsOT_VERSION.EditValue) + 1);
                        CurrVersion := 'V'+tvDocsOT_VERSION.EditValue;
                        LNewPath := AnsiReplaceStr(tvDocsDISPLAY_PATH.EditValue, CurrVersion, NewVersion);
                        ParamByName('DOC_NAME').AsString := ExtractFileName(LNewPath);
                     end
                     else
                     begin
                        LTmpName := copy(ExtractFileName(tvDocsDISPLAY_PATH.EditValue), 1,
                                    length(ExtractFileName(tvDocsDISPLAY_PATH.EditValue)) -
                                    length(ExtractFileExt(tvDocsDISPLAY_PATH.EditValue))) + ' V' +
                                    IntToStr(StrToInt(tvDocsOT_VERSION.EditValue) + 1);

                        LNewPath := ExtractFilePath(tvDocsDISPLAY_PATH.EditValue)+
                                    LTmpName +
                                    ExtractFileExt(tvDocsDISPLAY_PATH.EditValue);
                        ParamByName('DOC_NAME').AsString := LTmpName + ExtractFileExt(tvDocsDISPLAY_PATH.EditValue);
                     end;

                     ParamByName('PATH').AsString := LNewPath;
                     ParamByName('DISPLAY_PATH').AsString := LNewPath;
//                     ParamByName('PARENTDOCID').AsInteger := tvDocsPARENTDOCID.EditValue;
                     ParamByName('DOCID').AsInteger := tvDocsDOCID.EditValue;
                     ExecSQL;
                     MoveMatterDoc(LNewPath, LDocPath, False);
                  end;
               end;
         end;
      end;
    finally
      LfrmDocumentCopyAsk.Release;
//      tvDocs.BeginUpdate();
      qryDocChildren.Close;
      qryDocVersions.Close;
      qryDocs.Close;
      qryDocs.Open;
      qryDocChildren.Open;
      qryDocVersions.Open;
//      tvDocs.EndUpdate;
    end;
end;

procedure TfrmMatters.btnOParty1Click(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not qryMatter.Modified then
      qryMatter.Edit;
    qryMatter.FieldByName('PARTY1').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatters.btnOParty2Click(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not qryMatter.Modified then
      qryMatter.Edit;
    qryMatter.FieldByName('PARTY2').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatters.btnOParty3Click(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not qryMatter.Modified then
      qryMatter.Edit;
    qryMatter.FieldByName('PARTY3').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatters.btnOpenDocumentClick(Sender: TObject);
var
   sFileName: string;
   OpenFileErr: integer;
begin
   if VarIsNull(tvDocsDISPLAY_PATH.EditValue) then
      exit;

   try
//      if gtDocumentViewer.IsLoaded then
//         gtDocumentViewer.CloseDocument;

      // load the document in external application
      sFileName := string(tvDocsDISPLAY_PATH.EditValue);
      OpenFileErr := ShellExecute(Handle,'open',PChar(sFileName),nil,nil,SW_SHOWNORMAL);
      if OpenFileErr = SE_ERR_NOASSOC then
         MsgInfo('There is no application associated with the given filename extension.');
   except
      Raise;
   end;
end;

procedure TfrmMatters.btnRefByClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not qryMatter.Modified then
      qryMatter.Edit;
    qryMatter.FieldByName('REFERREDBY').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatters.btnBillToClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not qryMatter.Modified then
      qryMatter.Edit;
    qryMatter.FieldByName('BILL_TO').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatters.qryMatterCalcFields(DataSet: TDataSet);
//var
  //qryTax: TUniQuery;
begin
{ RB
 if qryMatter.FieldByName('RATE').AsCurrency <> 0 then
    qryMatter.FieldByName('RateDescr').AsString := Format('%m', [qryMatter.FieldByName('RATE').AsCurrency])
  else
    qryMatter.FieldByName('RateDescr').AsString := qryMatter.FieldByName('FEECODE').AsString;
  qryMatter.FieldByName('BranchDescr').AsString := TableString('BRANCH', 'CODE', qryMatter.FieldByName('BRANCH').AsString, 'DESCR');
  qryTax := TUniQuery.Create(Self);
 with qryTax do
  begin
    Session := dmAxiom.uniInsight;
    SQL.Clear;
    SQL.Add('SELECT SUM(TAX) AS TAX');
    SQL.Add('FROM FEE');
    SQL.Add('WHERE NMATTER = :NMATTER');
   //pb-SQL.Add('  AND BILLED = ''N''');
    SQL.Add('  AND BILLED = ''Y''');
    Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    Open;
    qryMatter.FieldByName('TaxWip').AsFloat := FieldByName('TAX').AsFloat;
    qryMatter.FieldByName('TaxTotal').AsFloat := FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;

    SQL.Clear;
    SQL.Add('SELECT SUM(TAX) AS TAX');
    SQL.Add('FROM FEE');
    SQL.Add('WHERE NMATTER = :NMATTER');
    SQL.Add('  AND BILLED = ''N''');
    Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    Open;
    qryMatter.FieldByName('TaxUnbillWIP').AsFloat := FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;

    SQL.Add('SELECT SUM(0 - TAX) AS TAX');
    SQL.Add('FROM ALLOC');
    SQL.Add('WHERE NMATTER = :NMATTER');
    //pb-SQL.Add('  AND BILLED = ''N''');
    SQL.Add('  AND BILLED = ''Y''');
    SQL.Add('  AND NINVOICE IS NULL');
    Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    Open;
    qryMatter.FieldByName('TaxDisb').AsFloat := FieldByName('TAX').AsFloat;
    qryMatter.FieldByName('TaxTotal').AsFloat := qryMatter.FieldByName('TaxTotal').AsFloat + FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;

    SQL.Add('SELECT SUM(0 - TAX) AS TAX');
    SQL.Add('FROM ALLOC');
    SQL.Add('WHERE NMATTER = :NMATTER');
    SQL.Add('  AND BILLED = ''N''');
    SQL.Add('  AND NINVOICE IS NULL');
    Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    Open;
    qryMatter.FieldByName('TaxUnBillDisb').AsFloat := FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;
  //for creditor invoice allocations
    SQL.Add('SELECT SUM(0 - TAX) AS TAX');
    SQL.Add('FROM ALLOC');
    SQL.Add('WHERE NMATTER = :NMATTER');
    //pb-SQL.Add('  AND BILLED = ''N''');
    SQL.Add('  AND BILLED = ''Y''');
    SQL.Add('  AND NINVOICE IS NOT NULL');
    Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    Open;
    qryMatter.FieldByName('TaxUPCred').AsFloat := FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;

    SQL.Add('SELECT SUM(0 - TAX) AS TAX');
    SQL.Add('FROM ALLOC');
    SQL.Add('WHERE NMATTER = :NMATTER');
    SQL.Add('  AND BILLED = ''N''');
    SQL.Add('  AND NINVOICE IS NOT NULL');
    Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    Open;
    qryMatter.FieldByName('TaxUnBillUPCred').AsFloat := FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;

    SQL.Add('SELECT SUM(TAX) AS TAX');
    SQL.Add('FROM CHEQREQ');
    SQL.Add('WHERE FILEID = :FILEID');
    //pb-SQL.Add('  AND BILLED = ''N''');
    SQL.Add('  AND BILLED = ''Y''');
    Params[0].AsString := qryMatter.FieldByName('FILEID').AsString;
    Open;
    qryMatter.FieldByName('TaxAntd').AsFloat := FieldByName('TAX').AsFloat;
    qryMatter.FieldByName('TaxTotal').AsFloat := qryMatter.FieldByName('TaxTotal').AsFloat + FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;

   SQL.Add('SELECT SUM(TAX) AS TAX');
    SQL.Add('FROM CHEQREQ');
    SQL.Add('WHERE FILEID = :FILEID');
    SQL.Add('  AND BILLED = ''N''');
    Params[0].AsString := qryMatter.FieldByName('FILEID').AsString;
    Open;
    qryMatter.FieldByName('TaxUnBillAntd').AsFloat := FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;

    SQL.Add('SELECT SUM(TAX) AS TAX');
    SQL.Add('FROM SUNDRY');
    SQL.Add('WHERE NMATTER = :NMATTER');
    //pb-SQL.Add('  AND BILLED = ''N''');
    SQL.Add('  AND BILLED = ''Y''');
    Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    Open;
    qryMatter.FieldByName('TaxSund').AsFloat := FieldByName('TAX').AsFloat;
    qryMatter.FieldByName('TaxTotal').AsFloat := qryMatter.FieldByName('TaxTotal').AsFloat + FieldByName('TAX').AsFloat;
    Close;
    SQL.Clear;

    SQL.Add('SELECT SUM(TAX) AS TAX');
    SQL.Add('FROM SUNDRY');
    SQL.Add('WHERE NMATTER = :NMATTER');
    SQL.Add('  AND BILLED = ''N''');
    Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    Open;
    qryMatter.FieldByName('TaxUnBillSund').AsFloat := FieldByName('TAX').AsFloat;
    Close;
  end;
  qryTax.Free;
  }
end;

procedure TfrmMatters.btnAntdLedgerClick(Sender: TObject);
var
  LfrmRptLedgerCheqReq: TfrmRptLedgerCheqReq;
begin
  LfrmRptLedgerCheqReq := TfrmRptLedgerCheqReq.Create(Self);
  LfrmRptLedgerCheqReq.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;


procedure TfrmMatters.pagPartiesChange(Sender: TObject);
var
   sCustomAddress, sWhichAddress: string;
begin
{   try
      if pagParties.ActivePage = tabPartiesVariable then
      begin
         qryMatterParty.Close;
         qryMatterParty.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
         qryMatterParty.Open;
      end
      else if pagParties.ActivePage = tabPartiesStatic then
      begin
//         lblSparty1Desc.Caption := TypeString(qryMatter.FieldByName('TYPE').AsString, 'PARTY1_DESC');
//         lblSparty2Desc.Caption := TypeString(qryMatter.FieldByName('TYPE').AsString, 'PARTY2_DESC');
//         lblSparty3Desc.Caption := TypeString(qryMatter.FieldByName('TYPE').AsString, 'PARTY3_DESC');
      end
      else if pagParties.ActivePage = tabPartiesClient then
      begin
         sCustomAddress := GetDisplayName('PHONEBOOK', 'CUSTOM ADDRESS');
         if sCustomAddress <> '' then
            tabCustomAddress.Caption := sCustomAddress;
         qryPhoneBook.Open;
         sWhichAddress := qryPhoneBook.FieldByName('WHICHADDRESS').AsString;
         if sWhichAddress = 'S' then
            tabStreetAddress.Highlighted := True
         else if sWhichAddress = 'P' then
            tabPostalAddress.Highlighted := True
         else if sWhichAddress = 'C' then
            tabCustomAddress.Highlighted := True
         else if sWhichAddress = 'D' then
            tabDX.Highlighted := True;
      end;
   except
   end;   }
end;


procedure TfrmMatters.btnMaisterClick(Sender: TObject);
var
  LfrmMaisterAnalysis: TfrmMaisterAnalysis;
begin
  LfrmMaisterAnalysis := TfrmMaisterAnalysis.Create(Self);
  LfrmMaisterAnalysis.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.tbtnChequeClick(Sender: TObject);
var
  LfrmCheque: TfrmCheque;
begin
  LfrmCheque := TfrmCheque.Create(Self);
  LfrmCheque.Show;
  LfrmCheque.AutoCheque(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'), '', '', qryMatter.FieldByName('FILEID').AsString,
      '', dmAxiom.UserID, 'N', 0, 0);
end;

procedure TfrmMatters.tbtnReceiptClick(Sender: TObject);
var
  LfrmReceipt: TfrmReceipt;
begin
   if FormExists(frmReceipt) = False then
      Application.CreateForm(TfrmReceipt, frmReceipt);

   frmReceipt.AutoReceiptMatter(qryMatter.FieldByName('FILEID').AsString);
   frmReceipt.Show;

//  LfrmReceipt := TfrmReceipt.Create(Self);
//  LfrmReceipt.Show;
//  LfrmReceipt.AutoReceiptMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.tbtnMatterEditClick(Sender: TObject);
var
  LfrmMatterNew: TfrmMatterNew;
begin
  if not qryMatter.IsEmpty then
  begin
    LfrmMatterNew := TfrmMatterNew.Create(Self);
    LfrmMatterNew.FromDisplayMatter := True;
    LfrmMatterNew.MatterDisplay(qryMatter.FieldByName('NMATTER').AsInteger);
    if LfrmMatterNew.ShowModal = mrOK then
      DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
  end;
end;

procedure TfrmMatters.FormCreate(Sender: TObject);
var
  iCtr: Integer;
  ASaveViewName: string;
//  nPrecMenuWidth: integer;
  pnlWidth, pnlHeight: integer;
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);

//   cxEventEditorClass := nil;

//   cxEventEditorClass := TfrmNewTaskNew; // indicate that the
   //  new Event modal dialog will be invoked at runtime

   pageMatter.MultiLine := (dmAxiom.MatterTabsMultiLine = 'Y');

   iMinsPerUnit := SystemInteger('TIME_UNITS');

   qryAutoTimerTask.Open;

   MatterReset := True;
   qryMatter.UpdatingTable := 'MATTER';
{   if dmAxiom.DictionaryInstalled then
   begin
      memoNotes.AddictSpell := dmAxiom.Addict;
      dmAxiom.Addict.AddControl(memoNotesMain);
//      memoNotesMain.AddictSpell := dmAxiom.Addict;
   end;
}
   // matter toolbar buttons
   if dmAxiom.MATTER_FEE_BTN = 'N' then
      mnuFileNewFee.Visible := ivNever;
   if dmAxiom.MATTER_TIMER_BTN = 'N' then
      btnAutoTimer.Visible := ivNever;
   if dmAxiom.MATTER_SUNDRY_BTN = 'N' then
      mnuFileNewSundry.Visible := ivNever;
   if dmAxiom.MATTER_PAYMENT_BTN = 'N' then
      mnuFileNewCheque.Visible := ivNever;
   if dmAxiom.MATTER_CHEQREQ_BTN = 'N' then
      mnuFileNewCheqReq.Visible := ivNever;
   if dmAxiom.MATTER_RECEIPT_BTN = 'N' then
      mnuFileNewReceipt.Visible := ivNever;
   if dmAxiom.MATTER_ACC_PAYABLE_BTN = 'N' then
      barbtnAccountPayable.Visible := ivNever;
   if dmAxiom.MATTER_NEW_BILL_BTN = 'N' then
      mnuFileNewInvoice.Visible := ivNever;
   if dmAxiom.MATTER_EMAIL_BTN = 'N' then
      bbtnEMail.Visible := ivNever;
   if dmAxiom.MATTER_SMS_BTN = 'N' then
      btnSendSMS.Visible := ivNever;
   if dmAxiom.MATTER_SEARCH_BTN = 'N' then
      mnuSearchFind.Visible := ivNever;
   if dmAxiom.MATTER_SNAPSHOT_BTN = 'N' then
      mnuFileSnapshot.Visible := ivNever;
   if dmAxiom.MATTER_MASTER_BTN = 'N' then
      mnuFileAssocEdit.Visible := ivNever;
   if dmAxiom.MATTER_EDIT_BTN = 'N' then
      dxbtnMAtterEdit.Visible := ivNever;
   if dmAxiom.MATTER_RESEARCH_BTN = 'N' then
      btnResearch.Visible := ivNever;
   if dmAxiom.MATTER_CLOSE_BTN = 'N' then
      dxbtnCloseMatter.Visible := ivNever;
   if dmAxiom.MATTER_EDIT_CLIENT_BTN = 'N' then
      dxbtnClient.Visible := ivNever;
   if dmAxiom.MATTER_WKFLOW_BTN = 'N' then
      dxbtnTask.Visible := ivNever;
   if dmAxiom.MATTER_REOPEN_BTN = 'N' then
      dxbtnReopenMatter.Visible := ivNever;

//   nPrecMenuWidth := 0;
   // qryMatter.SQL.Text := SQL_MATTER;
   Screen.Cursor := crSQLWait;
   mnuFileNewFee.Enabled               := dmAxiom.Security.Fee.Create;
   mnuFileAutocost.Enabled             := dmAxiom.Security.Fee.Create;
//   mnuFileNewFee.Enabled             := dmAxiom.Security.Fee.Create;
   mnuFileAutocost.Enabled             := dmAxiom.Security.Fee.Create;
   mnuFileNewSundry.Enabled            := dmAxiom.Security.Sundry.Create;
   dxbtnTransit.Enabled                := dmAxiom.Security.Transit.Create;
   mnuFileNewSundry.Enabled            := dmAxiom.Security.Sundry.Create;
   mnuFileNewCheqReq.Enabled           := dmAxiom.Security.CheqReq.Create;
   mnuFileNewCheque.Enabled            := dmAxiom.Security.Cheque.Create;
   mnuFileNewReceipt.Enabled           := dmAxiom.Security.Receipt.Create;
   dxbtnDisbDebtJournal.Enabled        := dmAxiom.Security.Matter.DisbDebtJournal;
   mnuFileNewInvoice.Enabled           := dmAxiom.Security.Bill.Create;
   btnInvOpen.Enabled                  := dmAxiom.Security.Bill.Edit;
   btnNewInvoice.Enabled               := dmAxiom.Security.Bill.Create;
   btnAutoReceipt.Enabled              := dmAxiom.Security.Receipt.Create;
   dxbtnMAtterEdit.Enabled             := dmAxiom.Security.Matter.Edit;
   btnMaister.Enabled                  := dmAxiom.Security.Matter.FeeAnalysis;
   dxbtnReopenMatter.Enabled           := dmAxiom.Security.Matter.Reopen;
   dxbtnCloseMatter.Enabled            := dmAxiom.Security.Matter.Close;
   mnuFileAssocEdit.Enabled            := dmAxiom.Security.Matter.Associate;
   miPrecEdit.Enabled                  := dmAxiom.Security.Precedent.Edit;
   miPrecNew.Enabled                   := dmAxiom.Security.Precedent.Create;
   btnDelete.Enabled                   := dmAxiom.Security.Matter.Delete;
//   tabPartiesStatic.TabVisible       := not dmAxiom.Security.Matter.HideStaticOP;
   // disable buttons if tabs disabled
   mnuFileNewDiary.Enabled             := dmAxiom.Security.Matter.Tabs.Diary;
   dxbtnTask.Enabled                   := dmAxiom.Security.Matter.Tabs.WorkFlow;
   // Tabs visibility
   tabBalances.TabVisible              := dmAxiom.Security.Matter.Tabs.Balances;
   tabParties.TabVisible               := dmAxiom.Security.Matter.Tabs.Contacts;
   tabFields.TabVisible                := dmAxiom.Security.Matter.Tabs.Data;
   tabInvoices.TabVisible              := dmAxiom.Security.Matter.Tabs.Bills;
   tabReceipts.TabVisible              := dmAxiom.Security.Matter.Tabs.Receipts;
   tabGraph.TabVisible                 := dmAxiom.Security.Matter.Tabs.Graphs;
   tabTransit.TabVisible               := dmAxiom.Security.Matter.Tabs.Transit;
   tabSubNames.TabVisible              := dmAxiom.Security.Matter.Tabs.OtherNames;
   //tabDiary.TabVisible                 := False;  //dmAxiom.Security.Matter.Tabs.Diary;
   tabDiary.TabVisible                 := dmAxiom.Security.Matter.Tabs.Diary;
   pbEditClient.Enabled                := dmAxiom.Security.Client.Edit;
   grdArchiveLocation.Enabled          := dmAxiom.Security.Matter.Archive;
//   dfArchiveBox.Enabled              := dmAxiom.Security.Matter.Archive;
//   dfArchiveLocation.Enabled         := dmAxiom.Security.Matter.Archive;
   btnTransit.Visible                  := dmAxiom.Security.Matter.Tabs.Transit;

   dfArchiveReview.Enabled             := dmAxiom.Security.Matter.Archive;
   dfArchiveDest.Enabled               := dmAxiom.Security.Matter.Archive;
   mlArchiveNotes.Enabled              := dmAxiom.Security.Matter.Archive;
   tabCriticalDates.Enabled            := dmAxiom.Security.Matter.Tabs.CriticalDates;
   tvArchiveLocation.OptionsData.Deleting := dmAxiom.Security.Matter.CanDeleteArchiveBox.CanDeleteBox;
   btnAutoTimer.Enabled                := (dmAxiom.UserAutoTimer = 'Y');
   tvDocs.OptionsCustomize.ColumnsQuickCustomization := dmAxiom.Security.System.GridColumnCustomizing;
   tvArchiveLocation.OptionsCustomize.ColumnsQuickCustomization := dmAxiom.Security.System.GridColumnCustomizing;
   tvInvoices.OptionsCustomize.ColumnsQuickCustomization := dmAxiom.Security.System.GridColumnCustomizing;
   btnReceiptReqCreate.Enabled         := dmAxiom.Security.Receipt.Request;
   btnReceiptReqEdit.Enabled           := dmAxiom.Security.Receipt.Request;
   tabProject.TabVisible               := dmAxiom.Security.Matter.Tabs.Project;
   // 13 April 2018 added Matter Author tab
   tabAuthorChange.TabVisible             := dmAxiom.Security.Matter.Tabs.AuthorAudit;

{   tbtnFirst.Visible := not dmAxiom.WANEnabled;
   tbtnPrev.Visible := not dmAxiom.WANEnabled;
   tbtnNext.Visible := not dmAxiom.WANEnabled;
   tbtnLast.Visible := not dmAxiom.WANEnabled;   }

   FMatters := 0;

   if(dmAxiom.Security.Matter.Tabs.Documents) then
   begin
//      tsGenDocuments.TabVisible := False;
//     if(Assigned(GetWorkFlowMergeTypeClass())) then
 //       tsGenDocuments.TabVisible := (moSaveToDB in GetWorkFlowMergeTypeClass().Options);
      tabPrecedents.TabVisible := (SystemString('precedents_reg') = C_PRECEDENTPASSWORD);
      tabDocs.TabVisible := True;

      ASaveViewName := 'tvDocs Layout';
      SettingLoadStream(dmAxiom.UserID, ASaveViewName, tvDocs );
//         SettingLoadStream(dmAxiom.UserID,'MATTER_DOCS',tvDocs);
      btnCreateBrief.Enabled := (tvDocsPRINT.Visible = True);

      if SystemString('docs_reg') <> C_DOCUMENTPASSWORD then
      begin
//         tabPrecedents.Visible := False;
         tabGenerated.Visible := False;
         btndocAdd.Enabled := False;
//         btndocDelete.Enabled := False;
         btnPrecSearch.Enabled := False;
//         btnModifycreateNew.Enabled := False;
//         btnCreateNewDF.Enabled := False;
//         btnCategories.Enabled := False;
//         dxNavBar1.Enabled := False;
         bbtnMSWord.Enabled := False;
         if cbGroupExpanded.Checked then
            dbgrDocs.FocusedView.DataController.Groups.FullExpand;
      end;
      if tabPrecedents.TabVisible then
      begin
//         {dockpnlPrecedents.Width} docksiteMenu.width := SettingLoadInteger('MATTER_PREC_MENU',  'PanelWidth');

//         if SettingLoadInteger('MATTER_PREC_MENU', 'PanelWidth') = 28 then
//         begin
//            dockpnlPrecedents.AutoHide := True;
//            dockpnlPrecedents.Focused := False;
//         end;
//
//         SettingLoadStream(dmAxiom.UserID,'MATTER_PREC_MENU', dxDockingManager1);
         SettingLoadStream(dmAxiom.UserID,'MATTER_PREC_VIEW',tvTemplates);
       end;
       // not tsGenDocuments.TabVisible;

//     if(tsGenDocuments.TabVisible) then
//     begin

// *******************************
{        FGenDocumentsForm := TfmWorkFlowGenDocuments.Create(pGenDocuments);
        FGenDocumentsForm.Parent := pGenDocuments1;
        FGenDocumentsForm.BorderStyle := bsNone;
        FGenDocumentsForm.Align := alClient;
        FGenDocumentsForm.Attached := True;
        FGenDocumentsForm.Visible := True;
        if assigned(FGenDocumentsForm) then
        begin
//           FGenDocumentsForm.NMatter := qryMatter.FieldByName('NMATTER').AsInteger;
           PostMessage(FGenDocumentsForm.Handle, AXM_POPULATE,0,0);
        end;

        }
//     end;

       // 19 April 2018 DW enable remember Folders tab pinned
      pnlWidth := SettingLoadInteger(dmAxiom.UserID, 'Matter_Doc',  'DocFolderPanelWidth');
      pnlHeight := SettingLoadInteger(dmAxiom.UserID, 'Matter_Doc',  'DocFolderPanelHeight');

      if SettingLoadBooleanTrueWhenEmpty(dmAxiom.UserID, 'Matter_Doc', 'DocFolderPanelAutoHide') = True then
      begin
         DockPanelFolderList.AutoHide := False;
         DockPanelFolderList.show;
      end
      else
      begin
         DockPanelFolderList.AutoHide := True;
//         DockPanelFolderList.Hide;
      end;
      if pnlWidth > 0 then
      begin
         if pnlWidth > 1000 then
            pnlWidth := 150;
         DockPanelFolderList.width := pnlWidth;
      end;

     if pnlHeight > 0 then
         DockPanelFolderList.Height := pnlHeight;
     /// end of 19 April change
     ///
   end else
   begin
      tabDocs.TabVisible          := False;
//      tsGenDocuments.TabVisible   := False;
   end;

   // some default button settings
   btnDeleteDraft.Enabled            := False;
//   btnDocDelete.Enabled              := False;

// btnInvWord.Glyph.LoadFromResourceName(HInstance, SystemString('WORDPROC'));
//   btnModifyCreateNew.Glyph.LoadFromResourceName(HInstance, SystemString('WORDPROC'));
   if SystemString('WORDPROC') = 'WORDPERFECT8' then
      tabDocs.ImageIndex := imgWP;
//   pageMatter.ActivePageIndex := SettingLoadInteger(dmAxiom.UserID, 'MATTER', 'OPENTAB');

   pGenDocuments1.TabVisible := (SystemString('HIDE_MATTER_WORKFLOW') = 'N');
   pageDocuments.HideTabs := (not (SystemString('HIDE_MATTER_WORKFLOW') = 'N'));

   dbtbOPRef.ReadOnly := False;
   dbtbOPRef.Color := clWindow;
   if SystemString('DIS_MATTER_CLI_REF') = 'Y' then
   begin
      dbtbOPRef.ReadOnly := True;
      dbtbOPRef.Color := clBtnFace;
   end;

   SettingLoadStream(dmAxiom.UserID, 'MATTER_BILLS',tvInvoices );
   SettingLoadStream(dmAxiom.UserID, 'MATTER_SUBBILLS',tvSubBills );
   SettingLoadStream(dmAxiom.UserID,'M_ARCHIVE_LOC',tvArchiveLocation);
   SettingLoadStream(dmAxiom.UserID,'M_DOC_VERSION',tvDocsVersion);
   SettingLoadStream(dmAxiom.UserID,'M_EMAIL_ATTACH',tvEmailAttachments);
   SettingLoadStream(dmAxiom.UserID,'MATTER_SEARCHES',tvSearches);

   if dbgrDocs.Font.Size <> dmAxiom.GridFont then
      dbgrDocs.Font.Size := dmAxiom.GridFont;

   if dbgrInvoices.Font.Size <> dmAxiom.GridFont then
      dbgrInvoices.Font.Size := dmAxiom.GridFont;

   if dbgrReceipts.Font.Size <> dmAxiom.GridFont then
      dbgrReceipts.Font.Size := dmAxiom.GridFont;

   if dbgrDiary.Font.Size <> dmAxiom.GridFont then
      dbgrDiary.Font.Size := dmAxiom.GridFont;

   if dbgTemplates.Font.Size <> dmAxiom.GridFont then
      dbgTemplates.Font.Size := dmAxiom.GridFont;

   if dbgrTransit.Font.Size <> dmAxiom.GridFont then
      dbgrTransit.Font.Size := dmAxiom.GridFont;

   if vtMatterData.Font.Size <> dmAxiom.GridFont then
      vtMatterData.Font.Size := dmAxiom.GridFont;

   (* make all the tabs in the pageDocuments control invisible *)
//   for iCtr := 0 to pageDocuments.PageCount-1 do
//      pageDocuments.Pages[iCtr].TabVisible := False;

   FDocTabSetup := False;
   FDataFormTabSetup := False;
{   if SettingLoadBoolean(dmAxiom.UserID, 'MATTERS', 'MAXIMIZED') then
      Self.WindowState := wsMaximized
   else
   begin
      iCtr := SettingLoadInteger(dmAxiom.UserID, 'MATTERS', 'WIDTH');
      if iCtr <> 0 then
        Self.Width := iCtr;
      iCtr := SettingLoadInteger(dmAxiom.UserID, 'MATTERS', 'HEIGHT');
      if iCtr <> 0 then
        Self.Height := iCtr;
   end;    }
   setDisplayNames;
   qryMatterStatus.Open;
   tblArchiveType.Open;
   qryWorkflowTemplates.Open;
   qryEmployee.Open;
   qryMatterAuthor.Open;

   FMergeType := GetWorkFlowMergeTypeClass('');
//   dmAxiom.Addict.ch
//   if SystemString('MATTER_CONTACT_TAB_DEFAULT') = 'Y' then
//      tabPartiesClient.PageIndex := 2;

   nFeeTmpID := 0;

  // FPreview := nil;

   FAttachFileName := TStringList.Create;
   FRecipientsList   := TStringList.Create;

   pageMatter.Invalidate();
   // AES 22/09/2017  set formatting of bills footers
   for iCtr := 0 to tvInvoices.DataController.Summary.FooterSummaryItems.Count - 1 do
      tvInvoices.DataController.Summary.FooterSummaryItems[iCtr].Format := GetCurrencySymbol+',0.00';

  //localization 3/10/2017
   if SystemString('LOCALE_NAME') <> '' then
   begin
      lStreetState.Caption := 'County';
      lPostalState.Caption := 'County';
      lCustomState.Caption := 'County';
      lblsTrust.Caption := 'Total Client Funds';
      lblsClearTrust.Caption := 'Cleared Client funds';
   end;
   btnCreateBrief.Visible := SystemString('HIDE_CREATE_BRIEF_BTN') = 'N';
   qryProjectTemplate.Open;

//   ocWorkflowChart.WidthFieldName  := 'Width';
//   ocWorkflowChart.HeightFieldName := 'Height';
//   ocWorkflowChart.ChAlignFieldName := 'Align_num';
//   ocWorkflowChart.ImAlignFieldName := 'ImageAlign_num';
//   ocWorkflowChart.ShapeFieldName := 'Type_num';
//   ocWorkflowChart.ColorFieldName := 'Colour';

   // Furnish the locale format settings record
   GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formatSettings);

   Screen.Cursor := crDefault;
end;

procedure TfrmMatters.qryInvestmentTransactionsAfterOpen(DataSet: TDataSet);
begin
   dxbPayment.Enabled := (DataSet.RecordCount > 0) and dmAxiom.Security.Matter.ControlledMonies.CanAddWithdrawl;
   dxBFee.Enabled := (DataSet.RecordCount > 0) and dmAxiom.Security.Matter.ControlledMonies.CanAddCharges;
   dxbReversal.Enabled := (DataSet.RecordCount > 0) and dmAxiom.Security.Matter.ControlledMonies.CanReverseDeposit;
end;

procedure TfrmMatters.qryInvoicesAfterScroll(DataSet: TDataSet);
begin
   if (not IsClosedArchivedMatter) then
   begin
      // check if this Invoice has been paid and disable AutoReceipt button appropriately
      if (DataSet.FieldByName('Owing').AsInteger <= 0) then
        btnAutoReceipt.Enabled := False
      else
      begin
         if (DataSet.FieldByName('IS_DRAFT').AsString = 'N') then
            btnAutoReceipt.Enabled := True
         else
            btnAutoReceipt.Enabled := False;
      end;

      // Check if the Bill is a draft and enable the delete button
      if ((DataSet.FieldByName('IS_DRAFT').AsString = 'Y') and (dmAxiom.Security.Bill.Delete)) then
        btnDeleteDraft.Enabled := True
      else
        btnDeleteDraft.Enabled := False;
   end;
   btnEmailBill.Enabled := False;
   pbViewBill.Enabled := False;
//   btnInvWord.Enabled := False;
   if (DataSet.FieldByName('IS_DRAFT').AsString = 'N') then
   begin
      if (DataSet.FieldByName('PATH').IsNull = False) then
          pbViewBill.Enabled := True;
      if (TableString('PHONEBOOK','NNAME', DataSet.FieldByName('NBILL_TO').AsInteger, 'EMAIL') <> '') AND
         (not DataSet.FieldByName('PATH').IsNull) then
      begin
         btnEmailBill.Enabled := True;
      end;
   end;
end;

procedure TfrmMatters.btnDeleteDraftClick(Sender: TObject);
begin
   if MessageDlg('Are you sure you want to delete this DRAFT Bill?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
   begin
      try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      prcDeleteDBill.ParamByName('MEMONUMBER').AsInteger := qryInvoices.FieldByName('NMEMO').AsInteger;
      prcDeleteDBill.ExecProc;
      dmAxiom.uniInsight.Commit;
      PlaySound('Delete');
      qryInvoices.Close;
      qryInvoices.Open;
    except
      dmAxiom.uniInsight.Rollback;
    end;
  end;
end;

procedure TfrmMatters.tbnCloseMatterClick(Sender: TObject);
begin
  if CloseMatter(qryMatter.FieldByName('FILEID').AsString, Now()) then
    DisplayMatter(qryMatter.FieldByName('FILEID').AsString);

  SetControls;
end;

{procedure TfrmMatters.obarDocumentsChange(Sender: TObject);
begin
  case obarDocuments.SelectedButton of
    OBPRECEDENTS:
    begin
      btnModifyCreateNew.Caption := '&Merge';
      btnCreateNewDF.Visible := True;
      btnDocDelete.Visible := False;
      btnDocAdd.Visible := False;
      pageDocuments.ActivePage := tabPrecedents;
    end;
    OBDOCUMENTS:
    begin
      btnModifyCreateNew.Caption := '&Open';
      btnCreateNewDF.Visible := False;
      btnDocAdd.Visible := True;
      btnDocDelete.Visible := True;
      pageDocuments.ActivePage := tabGenerated;
    end;
  end;
end;  }

procedure TfrmMatters.btnModifyCreateNewClick(Sender: TObject);
var
  PrecInfo: TPrecInfo;
  varWord: Variant;
begin
{   if (tvTemplates.ViewData.Records[tvTemplates.Controller.FocusedRowIndex].Level = 0) then
      Exit;
}
   try
      if(not Assigned(FWorkFlowMergeDocument)) then
         FWorkFlowMergeDocument                  := TfmWorkFlowMergeDocument.Create(Application);
      
      FWorkFlowMergeDocument.DocID               := Self.qryPrecedents.FieldByName('DOCID').AsInteger;
      FWorkFlowMergeDocument.ShowNoTaskDocuments := True;
      FWorkFlowMergeDocument.NMatter             := Self.qryMatter.FieldByName('NMATTER').AsInteger;
      FWorkFlowMergeDocument.WorkFlow            := Self.qryPrecedents.FieldByName('CODE').AsString;
      FWorkFlowMergeDocument.Task                := nil;
      FWorkFlowMergeDocument.OnClose             := MergeFormClose;
      FWorkFlowMergeDocument.UpdateWindowEvent   := OnUpdateWindowEvent;

      dmAxiom.qryTmp.SQL.Text := 'select DOCID, DOCTYPE from workflowdoctemplates where '+
                                 'DOCID = :DOCID ';
      dmAxiom.qryTmp.ParamByName('DOCID').AsInteger := Self.qryPrecedents.FieldByName('DOCID').AsInteger;
      dmAxiom.qryTmp.open;

      if (dmAxiom.qryTmp.FieldByName('DOCTYPE').AsString <> 'A') then
         FWorkFlowMergeDocument.ShowModal();

     // AES 19-apr-2010 i don't know what this does.  
     { if FMergeType.ExportDescription =  'Generic MS-Word Mail-Merge' then
      begin
         try
            varWord := null;
            varWord := GetActiveOleObject('Word.Application');
         except
           // ;
         end;
         try
            varWord.Documents.Item(1).Activate;
         except
               //
         end;
      end;  }
   except
      on E: exception do
      begin
         MessageDlg(E.Message, mtError, [mbOK], 0);
         FreeAndNil(FWorkFlowMergeDocument);
      end;
   end;
end;

procedure TfrmMatters.btnCreateNewDFClick(Sender: TObject);
var
  sDataFormToLoad: string;
  LfrmMatterDataForm: TfrmMatterDataForm;

 procedure PrecedentMake;
 var
   PrecInfo: TPrecInfo;
 begin
   PrecInfo.PrecPath        := qryPrecedents.FieldByName('PATH').AsString;
   PrecInfo.PrecCategory    := qryPrecedents.FieldByName('NPRECCATEGORY').AsString;
   PrecInfo.PrecSavePath    := qryPrecedents.FieldByName('SAVEPATH').AsString;
   PrecInfo.PrecDescription := qryPrecedents.FieldByName('DESCR').AsString;
   (* previously we used to get the workflowtype from the precedent, now we need
      to get it from the matter as it better reflects the way that the precedent
      generation occurs based on the current workflow type of the matter *)
   PrecInfo.WorkflowType    := qryPrecedents.FieldByName('MTRWORKFLOWTYPE').AsString;
   PrecInfo.ControlMacro    := qryPrecedents.FieldByName('CONTROLMACRO').AsString;
   PrecInfo.AfterMacro      := qryPrecedents.FieldByName('AFTERMACRO').AsString;
   PrecInfo.MainDataFile    := qryPrecedents.FieldByName('MAINDATAFILE').AsString;
   PrecInfo.MergeFile       := qryPrecedents.FieldByName('MERGEFILE').AsString;
   PrecInfo.DataFilePath    := qryPrecedents.FieldByName('DATAFILEPATH').AsString;
   PrecInfo.PrecClassification    := qryPrecedents.FieldByName('NPRECCLASSIFICATION').AsString;
   MakePrecedent(Self.qryMatter.FieldByName('FILEID').AsString, PrecInfo)
 end;

begin
   // check to see if this is a multiselection precedent template
   if UpperCase(Trim(qryPrecedents.FieldByName('PATH').AsString)) = 'NULL' then
   begin
      ShowMessage('Module not available.'); //???
      {$IFNDEF NOMULTISELECT}
      LoadMultiSelectionProcess(qryMatter.FieldByName('FILEID').AsString, qryPrecedents.FieldByName('DATAFORM').AsString);
      {$ENDIF}
   end else
   begin
      if not Assigned(LfrmMatterDataForm) then
           LfrmMatterDataForm := TfrmMatterDataForm.Create(Application);
      if Self.qryPrecedents.FieldByName('DATAFORM').AsString <> '' then
         sDataFormToLoad := Self.qryPrecedents.FieldByName('DATAFORM').AsString
//    else if Self.qryPrecedents.FieldByName('GENERICDATAFORM').AsString <> '' then
//      sDataFormToLoad := Self.qryPrecedents.FieldByName('GENERICDATAFORM').AsString
      else
         sDataFormToLoad := '';
      if LfrmMatterDataForm.LoadForm(sDataFormToLoad, Self.qryMatter.FieldByName('FILEID').AsString) then
      begin
         if LfrmMatterDataForm.ShowModal = mrOk then
            PrecedentMake();
      end else
         MessageDlg('There is no Data Form associated with this precedent, use '+
                     #39'Create '#13#10'New'#39' instead.', mtInformation, [mbOK], 0);
   end;
   qryDocs.Refresh;
end;

procedure TfrmMatters.DocDelete;
var
  sRenamedFile,
  sFileToDelete,
  sSource,
  sSQL,
  sExtToDelete: string;
  bDeleteFile: boolean;
  I,
  RecIdx,
  iDocIDToDelete: integer;
begin
   case pageDocuments.ActivePageIndex of
      0: begin
//  			   sFileToDelete := qryDocs.FieldByName('DISPLAY_PATH').AsWideString;
//            sSource := qryDocs.FieldByName('SOURCE').AsString;
            if (tvDocs.Controller.SelectedRowCount > 0) then
            begin
  			      if MsgAsk('Delete selected document(s)? ') = mrYes then
  			      begin
                  try
                     dmAxiom.uniInsight.StartTransaction;
                     bDeleteFile := (MsgAsk('Do you wish to remove the associated document(s) from the file system?') = mrYes);
                     tvdocs.BeginUpdate();
                     for I := 0 to tvDocs.Controller.SelectedRowCount - 1 do
    			         begin
                        RecIdx := tvDocs.Controller.SelectedRecords[I].RecordIndex;
                        sFileToDelete := tvDocs.DataController.GetValue(RecIdx, tvDocsPATH.Index);
                        iDocIDToDelete := tvDocs.DataController.GetValue(RecIdx, tvDocsDOCID.Index);
                        sExtToDelete :=  UpperCase(tvDocs.DataController.GetValue(RecIdx, tvDocsFILE_EXTENSION.Index));
                        if dmAxiom.Security.Document.DeleteFile and bDeleteFile then
                        begin
                           if FileExists(sFileToDelete) = True then
                              DeleteFile(sFileToDelete);
    //    		     	            MsgErr('Could not delete '+sFileToDelete +'. Please check that the file is not open in another application!');
                           // 09/08/2018 AES now delete attachments if they exist
                           if (UpperCase(tvDocsFILE_EXTENSION.EditValue) = 'MSG') then
                           begin
                              with dmAxiom.qryTmp do
                              begin
                                 Close;
                                 SQL.Text := 'select path from doc where parentdocid = :parentdocid';
                                 ParamByName('parentdocid').AsInteger := iDocIDToDelete;
                                 Open;
                                 while not eof do
                                 begin
                                    sFileToDelete := FieldByName('path').AsString;
                                    DeleteFile(sFileToDelete);
                                    next;
                                 end;
                              end;
                           end;
                        end
                        else
                        begin
                           sRenamedFile := sFileToDelete + '.del-'+ FormatDateTime('d_mm_yyyyhhmm', Now);
                           RenameFile(sFileToDelete, sRenamedFile);
                        end;

//                     if sSource = 'FROMDOC' then
                        sSQL := 'DELETE FROM DOC WHERE DOCID = :DOCID';
//                      else if sSource = 'FROMWGT' then
                        with dmAxiom.qryTmp do
                        begin
                           SQL.Clear;
                           SQL.Text := sSQL;
                           ParamByName('docid').AsInteger := iDocIDToDelete;
                           Execute;
                        end;

                        if (sExtToDelete = 'MSG') then
                        begin
                           sSQL := 'DELETE FROM DOC WHERE PARENTDOCID = :DOCID';
                           with dmAxiom.qryTmp do
                           begin
                              SQL.Clear;
                              SQL.Text := sSQL;
                              ParamByName('docid').AsInteger := iDocIDToDelete;
                              Execute;
                           end;
                        end;

                        sSQL := 'DELETE FROM WORKFLOWGENDOCUMENTS WHERE WORKFLOWGENDOCUMENT = :DOCID';
                        with dmAxiom.qryTmp do
                        begin
                           SQL.Clear;
                           SQL.Text := sSQL;
                           ParamByName('docid').AsInteger := iDocIDToDelete;
                           Execute;
                        end;
                     end;
                  finally
                     dmAxiom.uniInsight.Commit;
                     if (chkPreviewPane.Checked = True) then
                     begin
                        pnlPreview.Path.Empty;
                     end;
                     tvdocs.EndUpdate;
                     qryDocs.Close;
                     qryDocs.Open;
                  end;
               end;
            end;

            if cbGroupExpanded.Checked then
              dbgrDocs.FocusedView.DataController.Groups.FullExpand;
  		   end;
	end;
end;

procedure TfrmMatters.btnWIPItemsClick(Sender: TObject);
var
  LfrmRptLedgerFees: TfrmRptLedgerFees;
begin
  LfrmRptLedgerFees := TfrmRptLedgerFees.Create(Self);
  LfrmRptLedgerFees.DisplayWIPItems(Self.qryMatter.FieldByName('FILEID').AsString, cbUnbillBalanceswithGST.Checked);
end;

procedure TfrmMatters.btnWIPLedgerClick(Sender: TObject);
var
  LfrmRptLedgerFees: TfrmRptLedgerFees;
begin
  LfrmRptLedgerFees := TfrmRptLedgerFees.Create(Self);
  LfrmRptLedgerFees.DisplayWIP(Self.qryMatter.FieldByName('FILEID').AsString, cbUnbillBalanceswithGST.Checked);
end;

procedure TfrmMatters.qryDocsAfterScroll(DataSet: TDataSet);
begin
//   btnDocDelete.Enabled := ((qryDocs.FieldByName('AUTH1').AsString = dmAxiom.UserID) or ((dmAxiom.Security.Matter.Edit) and (dmAxiom.Security.Document.DeleteDocument)));
//   btnDocEdit.Enabled := (qryDocs.FieldByName('SOURCE').AsString <> 'FROMWGT');
end;

procedure TfrmMatters.qryFeeTmpAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('UNIQUEID').AsString := dmAxiom.GetSeqNumber('SQNC_FEETMP');
   nFeeTmpID := DataSet.FieldByName('UNIQUEID').AsInteger;
end;

procedure TfrmMatters.cbGroupExpandedClick(Sender: TObject);
begin
   if cbGroupExpanded.Checked then
      dbgrDocs.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfrmMatters.cbShowMatterDetailsClick(Sender: TObject);
begin
   pnlMatterStatus.Visible := cbshowMatterDetails.Checked;
   SettingSaveBoolean('MATTERS','SHOWMATTERDETAILSPANEL', cbShowMatterDetails.Checked);
end;

procedure TfrmMatters.cbUnbillBalanceswithGSTClick(Sender: TObject);
begin
   SetupMatterBalances;
end;

procedure TfrmMatters.ChequeClick(Sender: TObject);
var
  LfrmCheque: TfrmCheque;
begin
  LfrmCheque := TfrmCheque.Create(Self);
  LfrmCheque.Show;
  LfrmCheque.AutoCheque(TableString('BANK', 'NAME', (Sender as TdxBarButton).Caption, 'ACCT'), '', '', qryMatter.FieldByName('FILEID').AsString,
      '', dmAxiom.UserID, 'N', 0, 0);
end;

procedure TfrmMatters.chkPreviewPaneClick(Sender: TObject);
begin
   if chkPreviewPane.Checked = True then
   begin
      pnlPreview.Width := 380;
      pnlPreview.Enabled := True;
   end
   else
   begin
      pnlPreview.Enabled := False;
      pnlPreview.Width := 0;
//      if FPreview <> nil then
//         FPreview := nil;
//      gtDocumentViewer.CloseDocument;
   end;
   SettingSaveBoolean('MATTERS', 'DOCPREVIEWPANE', chkPreviewPane.Checked);
end;

procedure TfrmMatters.ReceiptClick(Sender: TObject);
var
  LfrmReceipt: TfrmReceipt;
  MenuCaption: string;
begin
   if FormExists(frmReceipt) = False then
      Application.CreateForm(TfrmReceipt, frmReceipt);

//  LfrmReceipt := TfrmReceipt.Create(Self);
//  LfrmReceipt.Show;
   with (Sender as TdxBarButton) do
      MenuCaption := Caption;
   frmReceipt.AutoReceiptMatter(qryMatter.FieldByName('FILEID').AsString,
                                tablestring('bank', 'name', MenuCaption, 'acct') );
   frmReceipt.Show;
end;


procedure TfrmMatters.tbtnDisbDebtJournalClick(Sender: TObject);
var
  LfrmJournalDisbDebt: TfrmJournalDisbDebt;
begin
  LfrmJournalDisbDebt := TfrmJournalDisbDebt.Create(Self);
  LfrmJournalDisbDebt.DisplayMatter(qrymatter.FieldByName('NMATTER').AsInteger);
end;

procedure TfrmMatters.tbtnClientClick(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
  LfrmClients := TfrmClients.Create(Application);
  LfrmClients.DisplayClient(qryMatter.FieldByName('NCLIENT').AsInteger);
end;

procedure TfrmMatters.FormShow(Sender: TObject);
var
   bFeeAlert: boolean;
begin
   Screen.Cursor := crSQLWait;
   FExpanding := False;

 //  Self.WindowState := wsMaximized;
//    if pageMatter.ActivePage = tabDocs then
//       obarDocumentsChange(Self);

   SetupGrid;
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'select nvl(mainmatter, 0) as parent from matterassoc where assocmatter = '+ quotedstr(qrymatter.FieldByName('FILEID').AsString);
      Open;
      if not EOF then
      begin
         mnuFileAssocEdit.Enabled := False;
         mnuFileAssocEdit.Hint := 'This matters Parent Matter is '+ FieldByName('parent').AsString;
      end
      else
      begin
         mnuFileAssocEdit.Enabled := True;
      end;
      Close;
   end;

 { Added 1.11.2002 GG
   Enable View Chequereq history menu item if user security level allows it}
   miViewCheqreqHistoryforMatter.Enabled:= dmAxiom.Security.CheqReq.History;

   if not dmAxiom.WANEnabled then
   begin
 {      tbtnFirst.Enabled := dmAxiom.qryMSearch.Active;
       tbtnPrev.Enabled := dmAxiom.qryMSearch.Active;
       tbtnNext.Enabled := dmAxiom.qryMSearch.Active;
       tbtnLast.Enabled := dmAxiom.qryMSearch.Active;}
   end;

   FDebtorNotesModified := False;

//   pageMatterChange(Self);
//      cbUnbillBalanceswithGST.Checked := SettingLoadBoolean(dmAxiom.UserID, 'MATTERS','UNBILLEDBALANCESWITHGST');

   cbUnbillBalanceswithGST.Checked := (dmAxiom.UserMatterGSTDefault = 'Y');

   lblNoEstFees.Visible := False;
   progBarFeeTotal.Visible := False;
   bFeeAlert := dmAxiom.CheckFeeTotalInstalled;
   if bFeeAlert then
   begin
      if qryMatter.FieldByName('ESTIMATEDFEE').AsCurrency > 0 then
      begin
         progBarFeeTotal.Visible := bFeeAlert;
         lblNoEstFees.Visible := False;
         lblTotalFeeAlert.Visible := bFeeAlert;
         dxBarPopupMenuBills.ItemLinks.Items[0].Visible := bFeeAlert;
         lblTotalFeesRecorded.Visible := True;
      end
      else
      begin
         lblNoEstFees.Visible := True;
         progBarFeeTotal.Visible := False;
         lblTotalFeesRecorded.Visible := False;
      end;
   end;

   if qryMatter.FieldByName('BUDGET_FEES').AsCurrency > 0 then
   begin
      progBarFeeCredit.Visible := True;
      lblWIPCreditLimit.Visible := True;
   end
   else
   begin
      progBarFeeCredit.Visible := False;
      lblWIPCreditLimit.Visible := False;
   end;

//   pagParties.ActivePageIndex := 0;
   pageMatter.Invalidate();

   pageMatter.ActivePageIndex := 2;

//   pageMatter.ActivePageIndex := SettingLoadInteger(dmAxiom.UserID, 'MATTER', 'OPENTAB');

   try
      if (not pageMatter.ActivePage.TabVisible) then
         pageMatter.ActivePageIndex := pageMatter.ActivePageIndex - 1;
   except
      pageMatter.ActivePageIndex := 1;
   end;

   if MatterReset then
   begin
      if tabArchive.Visible and (SystemString('DFLT_MATTER_ARCH_TAB') = 'N') then
          pageMatter.ActivePageIndex := SettingLoadInteger(dmAxiom.UserID, 'MATTER', 'OPENTAB');
      MatterReset := False;
   end;

   chkPreviewPane.Checked := SettingLoadBoolean(dmAxiom.UserID, 'MATTERS', 'DOCPREVIEWPANE');
   cbGroupExpanded.Checked := SettingLoadBoolean(dmAxiom.UserID, 'MATTERS','DOCUMENTGROUPEXP');
   cbShowMatterDetails.Checked := SettingLoadBoolean(dmAxiom.UserID, 'MATTERS','SHOWMATTERDETAILSPANEL');

   tabDX.TabVisible := (SystemString('HideDXPanel') = 'N');
   tvArchiveLocationCREATED.Visible := (SystemString('HIDE_DATE_COL_ARCHIVE') = 'N');
   tvArchiveLocationARCHVLOCN.Visible := (SystemString('HIDE_LOCATION_COL_ARCHIVE') = 'N');
   pnlArchiveType.Visible := (SystemString('HIDE_ARCHIVE_TYPE') = 'N');

   PopulateResearch(btnResearch);

   Self.Repaint;
   Self.Invalidate;
   Self.Update;
   Self.Refresh;
//   frmMatters.WindowState := wsNormal;
   frmDesktop.pnlTimeTrack.Visible := True;

   cmbAutoTimerTask.Visible := (dmAxiom.UserAutoTimer = 'Y');
   lblAutoTimerTask.Visible := (dmAxiom.UserAutoTimer = 'Y');

   if (dmAxiom.UserAutoTimer = 'Y') and (frmDesktop.btnAutoTimer.Down = True) then
   begin
      if (nFeeTmpID = 0) then
         CreateTmeEntry
      else
      begin
         qryFeeTmp.ParamByName('UNIQUEID').AsInteger := nFeeTmpID;
         qryFeeTmp.Open;
         qryFeeTmp.Edit;
      end;
      tmrAutocost.Enabled := True;
   end;

   lblConflictCheckCompleted.Visible := MatterHasAssociatedConflictChecks;

   chkDataFormsExpanded.EditValue := SettingLoadBoolean(dmAxiom.UserID, 'MatterData','Expanded');
// AES 26/09/2016 commented the following line.  causing unnecessary refresh and thus
// ecxessive network traffic and drop in performance.
   //   dxbtnRefresh.Click();
   Screen.Cursor := crDefault;

end;

function TfrmMatters.MatterHasAssociatedConflictChecks: Boolean;
begin
  try
    dmAxiom.qryTmp.SQL.Text :=
      'Select count(*) ConflictCount ' +
      'from ' +
      'doc d ' +
      'where d.docid in (select docid from conflict) ' +
      'and d.nmatter = :nmatter ' +
      'and d.is_conflict = ''Y''';
    dmAxiom.qryTmp.Prepare;
    dmAxiom.qryTmp.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMatter').AsInteger;
    dmAxiom.qryTmp.Open;
    Result := dmAxiom.qryTmp.FieldByName('ConflictCount').AsInteger > 0;
  except
    Result := false;
  end;
end;

procedure TfrmMatters.SetupDocFolderTab;
var
   LTFolderData: TFolderData;
   //Node: PVirtualNode;
   RootNode: PVirtualNode;
   SubNode: PVirtualNode;
   LMaxLevel: integer;
   lTmp: integer;
   lParentID: integer;
   lFolderID: integer;
   lFolderLvl: integer;
   lSubFolderID: integer;
   lTmpFolderID: integer;
   Data: PFolderData;
begin
   lTmpFolderID := 0;
//   lvFolders.Clear;
   lvFolders.BeginUpdate;
{   lvFolders.NodeDataSize := SizeOf(TFolderData);
   qryFolders.Close;
   qryFolders.SQL.Clear;
   qryFolders.SQL.Text := 'SELECT NVL(MAX(FOLDER_LEVEL),0) AS MAX_LEVEL FROM DOCUMENT_FOLDERS WHERE NMATTER = :MATTER';
   qryFolders.ParamByName('MATTER').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
   qryFolders.Open;
   qryFolders.Execute;
   LMaxLevel := qryFolders.FieldByName('MAX_LEVEL').AsInteger;

   qryFolders.Close;
   qryFolders.SQL.Clear;
   qryFolders.SQL.Text := 'SELECT ''All Files'' as descr, -1 as FOLDER_ID, 0 as PARENT_ID, -1 as FOLDER_LEVEL '+  '  FROM DUAL '+
                  'UNION '+
                  'SELECT ''Unallocated Files'' as descr, 0 as FOLDER_ID, 0 as PARENT_ID, 0 AS FOLDER_LEVEL ' + '  FROM DUAL '+
                  'UNION '+
                  'SELECT descr, FOLDER_ID, PARENT_ID, FOLDER_LEVEL ' + '  FROM document_folders '+
                  //'WHERE nmatter = ' + quotedstr(qryMatter.FieldByName('NMATTER').AsString) +
                  // 22 April 2018 DW exclude subfolders from main level
                  'WHERE nmatter = :NMATTER ' + ' ORDER BY 4, 2 asc';
    qryFolders.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
    qryFolders.Open;
    qryFolders.First;
    while (not qryFolders.eof) do
    begin
         lParentID := qryFolders.FieldByName('PARENT_ID').AsInteger;
         lFolderID := qryFolders.FieldByName('FOLDER_ID').AsInteger;
         lFolderLvl := qryFolders.FieldByName('FOLDER_LEVEL').AsInteger;
         //RootNode := AddNodeData(lvFolders, nil, LTFolderData);
         // 22 April 2018 DW Add SubFolders
         if (lFolderLvl < 1) then
         begin
             LTFolderData.Text := qryFolders.FieldByName('DESCR').AsString;
             LTFolderData.ImageIndex := 69;
             LTFolderData.FolderID := qryFolders.FieldByName('FOLDER_ID').AsInteger;
             LTFolderData.FolderLvl := qryFolders.FieldByName('FOLDER_LEVEL').AsInteger;
             RootNode := AddNodeData(lvFolders, nil, LTFolderData);
         end
         else
         begin
             RootNode := lvFolders.GetFirst(False);
             Data := lvFolders.GetNodeData(RootNode);
             lTmpFolderID :=  Data.FolderID;
             while (lTmpFolderID <> lParentID) do
             begin
                RootNode := lvFolders.GetNext(RootNode);
                if not Assigned(RootNode) then
                begin
                    qryFolders.Close;
                    lvFolders.EndUpdate;
                    Exit;
                end;
                Data := lvFolders.GetNodeData(RootNode);
                lTmpFolderID :=  Data.FolderID;
             end;
             LTFolderData.Text := qryFolders.FieldByName('DESCR').AsString;
             LTFolderData.ImageIndex := 69;
             LTFolderData.FolderID := qryFolders.FieldByName('FOLDER_ID').AsInteger;
             LTFolderData.FolderLvl := qryFolders.FieldByName('FOLDER_LEVEL').AsInteger;
             SubNode := AddNodeData(lvFolders, RootNode, LTFolderData);
         end;
         // end of sub-folders add
         qryFolders.Next;
    end;   }
//    qryFolders.Close;
    qryFolders.Close;
    qryFolders.ParamByName('nmatter').asinteger := qryMatter.FieldByName('nmatter').AsInteger;
    qryFolders.Open;
    lvFolders.EndUpdate;
end;

procedure TfrmMatters.SetupDocTab;
var
  i,x : Integer;
//  Categories: TGXOutlookItem;
begin
   if dmAxiom.bShutdown = False then
   begin
      i := 1;
      lvPrecedentList.Items.Clear;
      with lvPrecedentList.Items.Add do
      begin
         Caption := 'All Precedents';
         ImageIndex := 0;
         StateIndex := 999;
      end;
      qryPrecCategories.Open;
      lvPrecedentList.Items.BeginUpdate;
      while not qryPrecCategories.Eof do
      begin
         with lvPrecedentList{ dxNavBar1} do
         begin
            //Create items
            with Items.Add do
            begin
               Caption := qryPrecCategories.FieldByName('NAME').AsString;
               ImageIndex := qryPrecCategories.FieldByName('IMAGEINDEX').AsInteger;
//               LargeImageIndex := qryPrecCategories.FieldByName('IMAGEINDEX').AsInteger;
//               SmallImageIndex := qryPrecCategories.FieldByName('IMAGEINDEX').AsInteger;
//               Tag := qryPrecCategories.FieldByName('GROUPID').AsInteger;
               StateIndex := qryPrecCategories.FieldByName('GROUPID').AsInteger;
               Tag := qryPrecCategories.FieldByName('GROUPID').AsInteger;
            end;
         end;
         Inc(i);
         qryPrecCategories.Next;
      end;
      qryPrecCategories.Close;
      lvPrecedentList.Items.EndUpdate;
//  obarDocuments.SelectedItem := 0;
      FDocTabSetup := True;
   end;
end;


procedure TfrmMatters.btnPrecSearchClick(Sender: TObject);
var
   frmDocSearch: TfrmDocSearch;
begin
   frmDocSearch := TfrmDocSearch.Create(Self);
   frmDocSearch.edFileID.Text := qryMatter.FieldByName('FILEID').AsString;
   frmDocSearch.Show;

{   if dxNavBar1.ActiveGroupIndex = OBPRECEDENTS  then
      PrecedentSearch('SELECT PATH AS CODE, DESCR FROM PREC ORDER BY PATH', dstPrecedent, 'PREC')
   else
      PrecedentSearch('SELECT DOC_NAME AS CODE, DESCR FROM DOC ORDER BY DOC_NAME', dstDocument); }
end;

{procedure TfrmMatters.obarDocumentsItemClick(Sender: TObject);
begin
  tpPrecedents.Caption := obarDocuments.Items[obarDocuments.SelectedButton].Items[obarDocuments.SelectedItem].Caption;
  case obarDocuments.SelectedButton of
    OBPRECEDENTS:
    begin
      if (obarDocuments.SelectedItem = 0) then
      begin
        qryPrecedents.Close;
        qryPrecedents.SQL.Clear;
        qryPrecedents.SQL.Add('SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFORM AS GENERICDATAFORM, M.WORKFLOWTYPE');
        qryPrecedents.SQL.Add('FROM PREC P, MATTERTYPE M');
        qryPrecedents.SQL.Add('WHERE M.CODE = :TYPE');
        qryPrecedents.SQL.Add('  AND P.NPREC IN (SELECT NPREC FROM WORKFLOWTYPELINK WHERE WORKFLOWTYPE = M.WORKFLOWTYPE)');
        qryPrecedents.SQL.Add('ORDER BY UPPER(P.PATH)');
(*          SQL.Add('SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFORM AS GENERICDATAFORM');
        SQL.Add('FROM PREC P, MATTERTYPE M');
        SQL.Add('WHERE M.CODE = :TYPE');
        SQL.Add('ORDER BY P.PATH');*)
        qryPrecedents.Open;
      end else
      begin
        qryPrecedents.Close;
        qryPrecedents.SQL.Clear;
        qryPrecedents.SQL.Add('SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFORM AS GENERICDATAFORM, M.WORKFLOWTYPE');
        qryPrecedents.SQL.Add('FROM PREC P, MATTERTYPE M');
        qryPrecedents.SQL.Add('WHERE M.CODE = :TYPE');
        qryPrecedents.SQL.Add('  AND P.NPREC IN (SELECT NPREC FROM WORKFLOWTYPELINK WHERE WORKFLOWTYPE = M.WORKFLOWTYPE)');
        qryPrecedents.SQL.Add('  AND P.NPRECCATEGORY = '+
                IntToStr(obarDocuments.Items[obarDocuments.SelectedButton].Items[
                obarDocuments.SelectedItem].Tag));
        qryPrecedents.SQL.Add('ORDER BY UPPER(P.PATH)');
(*          SQL.Add('SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFORM AS GENERICDATAFORM');
        SQL.Add('FROM PREC P, MATTERTYPE M');
        SQL.Add('WHERE P.NPRECCATEGORY = '+IntToStr(obarDocuments.SelectedItem));
        SQL.Add('  AND M.CODE = :TYPE');
        SQL.Add('ORDER BY P.PATH');*)
        qryPrecedents.Open;
      end;
    end;
    OBDOCUMENTS:
    begin
      if (obarDocuments.SelectedItem = 0) then
      begin
        qryDocs.Close;
        qryDocs.SQL.Clear;
        qryDocs.SQL.Add('SELECT D.*, D.ROWID');
        qryDocs.SQL.Add('FROM DOC D');
        qryDocs.SQL.Add('WHERE D.FILEID = :P_FileID');
        qryDocs.SQL.Add('ORDER BY D.D_MODIF DESC');
        qryDocs.ParamByName('P_FileID').AsString := qryMatter.FieldByName('FILEID').AsString;
        qryDocs.Open;
      end else
      begin
        qryDocs.Close;
        qryDocs.SQL.Clear;
        qryDocs.SQL.Add('SELECT D.*, D.ROWID');
        qryDocs.SQL.Add('FROM DOC D');
        qryDocs.SQL.Add('WHERE D.FILEID = :P_FileID');
        qryDocs.SQL.Add('  AND D.NPRECCATEGORY = '+
                IntToStr(obarDocuments.Items[obarDocuments.SelectedButton].Items[
                obarDocuments.SelectedItem].Tag));
        qryDocs.ParamByName('P_FileID').AsString := qryMatter.FieldByName('FILEID').AsString;
        qryDocs.SQL.Add('ORDER BY D.D_MODIF DESC');
        qryDocs.Open;
      end;
    end;
  end;
end; }

procedure TfrmMatters.qryPrecedentsCalcFields(DataSet: TDataSet);
begin
   qryPrecedents.FieldByName('FileName').AsString :=
      ExtractFileName(qryPrecedents.FieldByName('PATH').AsString);
end;

procedure TfrmMatters.dbgTemplatesDblClick(Sender: TObject);
begin
//  btnModifyCreateNew.Click;
end;

procedure TfrmMatters.miPrecEditClick(Sender: TObject);
begin
//  SaveTreeExpanded();
//  LNodeData := vtDocs.GetNodeData(vtDocs.FocusedNode);
   dmWorkFlowDataModuleDocs.tbDocTemplates.Open();
   try
      dmWorkFlowDataModuleDocs.tbDocTemplates.First();
      if(dmWorkFlowDataModuleDocs.tbDocTemplates.Locate('docid',qryPrecedents.FieldByName('DocId').AsInteger,[])) then
      begin
         dmWorkFlowDataModuleDocs.qPhoneGroupings.Open();
         dmWorkFlowDataModuleDocs.tbDocTemplates.Edit();
//         if(AdminDocs) then
//            EditAdminDoc()
//         else
            EditWorkflowDoc()
      end;
   finally
     dmWorkFlowDataModuleDocs.tbDocTemplates.Close();
   end;

{var
  PlaceHolder: TBookmark;
  LfrmPrecNew: TfrmPrecNew;
begin
  PlaceHolder := qryPrecedents.GetBookmark;

  LfrmPrecNew := TfrmPrecNew.Create(Self);
  LfrmPrecNew.DisplayPrecedent(qryPrecedents.FieldByName('DESCR').AsString);
  qryPrecedents.Refresh;
  qryPrecedents.GotoBookmark(PlaceHolder);
  qryPrecedents.FreeBookmark(PlaceHolder);  }
end;

procedure TfrmMatters.miPrecNewClick(Sender: TObject);
var
  LfrmPrecNew: TfrmPrecNew;
begin
  LfrmPrecNew := TfrmPrecNew.Create(Self);
//  LfrmPrecNew.Category := obarDocuments.Items[obarDocuments.SelectedButton].Items[
//                obarDocuments.SelectedItem].Tag;
  LfrmPrecNew.ShowModal;
end;

procedure TfrmMatters.mnuPrecCatSearchClick(Sender: TObject);
var
  iCtr: Integer;
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT NPRECCATEGORY AS CODE, DESCR FROM PRECCATEGORY ORDER BY CODE';
    SearchField := sfDescription;
    if ShowModal = mrOK then
    begin
//      for iCtr := 0 to obarDocuments.Items[obarDocuments.SelectedButton].Count do
//      begin
//        if obarDocuments.Items[obarDocuments.SelectedButton].Items[iCtr].Caption =
//           qrySource.FieldByName('DESCR').AsString then
//        begin
//          obarDocuments.SelectedItem := iCtr;
//          obarDocumentsItemClick(Self);
//          Break;
//        end;
//      end;
    end;
  end;
end;

procedure TfrmMatters.tbtnAutoCostClick(Sender: TObject);
var
  LfrmAutoCost: TfrmAutoCost;
begin
  LfrmAutoCost := TfrmAutoCost(FindorCreate(TfrmAutoCost, IDXAUTOCOST));
  LfrmAutoCost.Show;
  LfrmAutoCost.CreateTimer(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.btnCategoriesClick(Sender: TObject);
begin
  mnuPrecCatSearch.Click;
end;

procedure TfrmMatters.btnDocAddClick(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
   CurrDir: string;
begin
   try
      CurrDir := GetCurrentDir;
      LfrmDocNew := TfrmDocNew.Create(Self);
      LfrmDocNew.NewCopyDoc := False;
      LfrmDocNew.FileID := qryMatter.FieldByName('FILEID').AsString;
      LfrmDocNew.AMatter := qryMatter.FieldByName('NMATTER').AsInteger;
      if LfrmDocNew.ShowModal = mrOk then
      begin
         if cbGroupExpanded.Checked then
            dbgrDocs.FocusedView.DataController.Groups.FullExpand;
//      TfrmDocNew.Create(Self).FileID := qryMatter.FieldByName('FILEID').AsString;
      end;
   finally
      LfrmDocNew.Free;
      SetCurrentDir(CurrDir);
   end;
end;

procedure TfrmMatters.btnClientEditClick(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
  LfrmPhonebook := TfrmPhonebook.Create(Self);
  LfrmPhonebook.Tag := imgPHONEBOOK;
  LfrmPhonebook.Search := qryMatter.FieldByName('SEARCH').AsString;
  LfrmPhonebook.Show();
end;

procedure TfrmMatters.btnCreditorRptClick(Sender: TObject);
{ 11/05/2004 Tony Unknown code for BitBtn1 which seemed to be removed
var
  LfrmRptTransitRegister: TfrmRptTransitRegister;
}
var
  LfrmRptLedgerCreditors: TfrmRptLedgerCreditors;
begin

  { 11/05/2004 Tony Unknown code for BitBtn1 which seemed to be removed
  LfrmRptTransitRegister := TfrmRptTransitRegister.Create(Self);
  LfrmRptTransitRegister.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
  }

  LfrmRptLedgerCreditors := TfrmRptLedgerCreditors.Create(Self);
  LfrmRptLedgerCreditors.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
{
  with qryCreditorRpt do
   begin
      Close;
      ParamByName('P_NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      Open;
      ppCredMatter.SetText(qryMatter.FieldByName('FILEID').AsString);
      ppCredClient.SetText(qryMatter.FieldByName('TITLE').AsString);
      // ppDescription.SetText(qryMatter.FieldByName('LONGDESCR').AsString);
      try
         rbRptCreditor.Print;
      except

      end;
   end;
}
end;

procedure TfrmMatters.tbtnTransitClick(Sender: TObject);
{var
  frmNewTransitNew : TfrmTransitNew;
begin
  frmNewTransitNew := TfrmTransitNew.Create(Self);
  frmNewTransitNew.Show;
  frmNewTransitNew.DisplayMatter(qryMatter.FieldByName('NMATTER').AsInteger);
end;
}

var
  frmNewTransitNew : TfrmTransitNew;
begin
  frmNewTransitNew := TfrmTransitNew.Create(Self);
  frmNewTransitNew.Show;
  frmNewTransitNew.DisplayMatter(qryMatter.FieldByName('NMATTER').AsInteger);

end;

function XCenter(rect:  TRect; canvas: TCanvas; sTmp: string) : integer;
begin
  result := ((rect.Left + rect.Right) - canvas.TextWidth(sTmp)) DIV 2
end {XCenter};

{Top of text is its origin, so adjust by half-height of text to center}
function YCenter (rect:  TRect; canvas:  TCanvas; sTmp:  string) : integer;
begin
  result := ((rect.Top + rect.Bottom) - canvas.TextHeight(sTmp)) DIV 2
end {YCenter};

procedure TfrmMatters.sgBalanceDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  sTmp : string;
  dTmp : double;
begin
  sTmp := (Sender as TStringGrid).Cells[ACol,ARow];
  if (sTmp <> '') then
    //if not (sTmp[1] in ['A'..'Z']) then
      begin
        dTmp := arrayData[ACol, ARow];
        if (dTmp < 0) then
          (Sender as TStringGrid).Canvas.Font.Color := clRed
        else
          (Sender as TStringGrid).Canvas.Font.Color := clBlue;
      end;
{
    if (ARow = rowACTUAL) or (ARow = rowANT) or (ARow = rowGTTL) then
      begin
        (Sender as TStringGrid).Canvas.Font.Style := [fsBold];
      end;
{
  if (ACol = 1) and (ARow = 1) then
    (Sender as TStringGrid).Canvas.Brush.Color := clYellow;
  if (ACol = 2) and (ARow = 2) then
    (Sender as TStringGrid).Canvas.Brush.Color := clGreen;
  if (ACol = 0) and (ARow = 8) then
    (Sender as TStringGrid).Canvas.Font.Color := clRed;
  if (ACol = 0) and (ARow = 6) then
    (Sender as TStringGrid).Canvas.Font.Color := clBlue;
}
  //(Sender as TStringGrid).Canvas.FillRect(Rect);

  //if (ARow = 0)
    //center
{    (Sender as TStringGrid).Canvas.TextRect(Rect,
                XCenter(Rect, (Sender as TStringGrid).Canvas, sTmp),
                YCenter(Rect, (Sender as TStringGrid).Canvas, sTmp), sTmp)
}

  //else
//  if ACol <> 0 then
   (Sender as TStringGrid).Canvas.TextRect(Rect, Rect.Right - 2 - Canvas.TextWidth((Sender as TStringGrid).Cells[ACol, ARow]), Rect.Top + 2, (Sender as TStringGrid).Cells[ACol, ARow])
  //else
{       left
   (Sender as TStringGrid).Canvas.TextRect(Rect,
                   Rect.Left + (Sender as TStringGrid).Canvas.TextWidth('X') DIV 2,
                   YCenter(Rect, (Sender as TStringGrid).Canvas, sTmp), sTmp)
}
end;

procedure TfrmMatters.SetupGrid;
begin
  sgBalance.ColCount := iMaxCol;
  sgBalance.RowCount := iMaxRow;
end;

procedure TfrmMatters.SetGridValue(var sgTmp : TStringGrid; qryTmp : TUniQuery; iCol, iRow : integer; sField, sAddWith : string);
begin
  if qryTmp.Active then
  begin
    sgTmp.Cells[iCol,iRow] := '';
    if not (qryTmp.FieldbyName(sField).IsNull) then
    begin
      if sAddWith = '' then
        sgTmp.Cells[iCol,iRow] := CurrtoStrF(qryTmp.FieldbyName(sField).AsCurrency, ffCurrency, 2)
      else
        sgTmp.Cells[iCol,iRow] := CurrtoStrF(qryTmp.FieldbyName(sField).AsCurrency + qryTmp.FieldbyName(sAddWith).AsCurrency, ffCurrency, 2)
    end;
    if sAddWith = '' then
      arrayData[iCol,iRow] := qryTmp.FieldbyName(sField).AsFloat
    else
      arrayData[iCol,iRow] := qryTmp.FieldbyName(sField).AsFloat + qryTmp.FieldbyName(sAddWith).AsFloat;
  end;
end;

procedure TfrmMatters.SetGridTotal(var sgTmp : TStringGrid; iCol, iRow : integer; dValue : double);
begin
  sgTmp.Cells[iCol,iRow] := CurrtoStrF(dValue, ffCurrency, 2);
  arrayData[iCol,iRow] := dValue;
end;

procedure TfrmMatters.RefreshGrid;
begin
  if not qryLedgerBalances.Active then
   begin
      qryLedgerBalances.ParamByName('p_file').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryLedgerBalances.Execute;
   end;

  {
  colUNBILL = 0;
  colBILL = 1;
  colTAX = 2;
  colRECVD = 3;
  colWOFF = 4;
  colOWING = 5;
  colEXP = 6;

  rowFEES = 0;
  rowDISB = 1;
  rowSUND = 2;
  rowACTUAL = 3;
  rowCREQ = 4;
  rowUPCRED = 5;
  rowANT = 6;
  rowTTL = 7;
  rowGTTL = 8;
  }

  // Unbilled
  // SetGridValue(sgBalance, qryMatter, colUNBILL, rowFEES, 'CAL_UNBILL_FEES','TaxUnbillWIP');
  SetGridValue(sgBalance, qryLedgerBalances, colUNBILL, rowFEES, 'unbill_fees_no_gst','');
  // SetGridValue(sgBalance, qryMatter, colUNBILL, rowDISB, 'CAL_UNBILL_DISB','TaxunbillDisb');
  SetGridValue(sgBalance, qryLedgerBalances, colUNBILL, rowDISB, 'unbill_disb_no_gst','');
  // SetGridValue(sgBalance, qryMatter, colUNBILL, rowSUND, 'CAL_UNBILL_SUND','TaxunbillSund');
  SetGridValue(sgBalance, qryLedgerBalances, colUNBILL, rowSUND, 'UNBILL_SUND','');
  // SetGridValue(sgBalance, qryMatter, colUNBILL, rowCREQ, 'UNBILL_CREQ','TaxunbillAntd');

  SetGridValue(sgBalance, qryLedgerBalances, colUNBILL, rowCREQ, 'unbilled_cheqreq','');
//  sgBalance.Cells[colUNBILL,rowCREQ] := '$0.00';
//  SetGridValue(sgBalance, qryLedgerBalances, colUNBILL, rowUPCRED, 'UNBILL_UPCRED','TaxunbillUPCred');
//  sgBalance.Cells[colUNBILL,rowUPCRED] := '$0.00';
  SetGridValue(sgBalance, qryLedgerBalances, colUNBILL, rowUPCRED, 'UNBILL_CRED','');
  // Billed
  // SetGridValue(sgBalance, qryMatter, colBILL, rowFEES, 'CAL_BILL_FEES','');
  SetGridValue(sgBalance, qryLedgerBalances, colBILL, rowFEES, 'BILL_FEES','');

//  SetGridValue(sgBalance, qryMatter, colBILL, rowDISB, 'CAL_BILL_DISB','');

  SetGridValue(sgBalance, qryLedgerBalances, colBILL, rowDISB, 'BILL_DISB','');
//  sgBalance.Cells[colBILL,rowDISB] := '$0.00';

  SetGridValue(sgBalance, qryLedgerBalances, colBILL, rowSUND, 'BILL_SUND','');
//  sgBalance.Cells[colBILL,rowSUND] := '$0.00';

  SetGridValue(sgBalance, qryLedgerBalances, colBILL, rowCREQ, 'BILL_CREQ','');
//  sgBalance.Cells[colBILL,rowCREQ] := '$0.00';


//  SetGridValue(sgBalance, qryMatter, colBILL, rowUPCRED, 'BILL_UPCRED','');
   SetGridValue(sgBalance, qryLedgerBalances, colBILL, rowUPCRED, 'BILL_CRED','');
//  sgBalance.Cells[colBILL,rowUPCRED] := '$0.00';
  sgBalance.Cells[colBILL,rowActual] := '$0.00';

  // Tax
  SetGridValue(sgBalance, qryLedgerBalances, colTAX, rowFEES, 'BILL_FEE_TAX','');
  SetGridValue(sgBalance, qryLedgerBalances, colTAX, rowDISB, 'TAXDISB','');
  SetGridValue(sgBalance, qryLedgerBalances, colTAX, rowSUND, 'TAXSUND','');
  // SetGridValue(sgBalance, qryMatter, colTAX, rowCREQ, 'TAXANTD',''); I think this is a mistake
  SetGridValue(sgBalance, qryLedgerBalances, colTAX, rowCREQ, 'BILL_CREQ_TAX','');
//  sgBalance.Cells[colTAX,rowCREQ] := '$0.00';
//  SetGridValue(sgBalance, qryLedgerBalances, colTAX, rowUPCRED, 'TAXUPCRED','');
//  sgBalance.Cells[colTAX,rowUPCRED] := '$0.00';
  SetGridValue(sgBalance, qryLedgerBalances, colTAX, rowUPCRED, 'UNBILL_CRED_TAX','BILL_CRED_TAX');
  sgBalance.Cells[colTAX,rowActual] := '$0.00';

  // Recovered
  SetGridValue(sgBalance, qryLedgerBalances, colRECVD, rowFEES, 'RECVD_FEES','');
  SetGridValue(sgBalance, qryLedgerBalances, colRECVD, rowDISB, 'RECVD_DISB','');
  SetGridValue(sgBalance, qryLedgerBalances, colRECVD, rowSUND, 'RECVD_SUND','');
  SetGridValue(sgBalance, qryLedgerBalances, colRECVD, rowCREQ, 'RECVD_CREQ','');
  SetGridValue(sgBalance, qryLedgerBalances, colRECVD, rowUPCRED, 'RECVD_UPCRED','');
{  sgBalance.Cells[colRECVD,rowFEES] := '$0.00';
  sgBalance.Cells[colRECVD,rowDISB] := '$0.00';
  sgBalance.Cells[colRECVD,rowSUND] := '$0.00';
  sgBalance.Cells[colRECVD,rowCREQ] := '$0.00';
  sgBalance.Cells[colRECVD,rowUPCRED] := '$0.00';  }

  // Written Off
  SetGridValue(sgBalance, qryLedgerBalances, colWOFF, rowFEES, 'WIPWOFF','');
  SetGridValue(sgBalance, qryLedgerBalances, colWOFF, rowDISB, 'DISBSWOFF','');
  SetGridValue(sgBalance, qryLedgerBalances, colWOFF, rowSUND, 'SUNDWOFF','');
  SetGridValue(sgBalance, qryLedgerBalances, colWOFF, rowCREQ, 'CREQWOFF','');
  SetGridValue(sgBalance, qryLedgerBalances, colWOFF, rowUPCRED, 'UPCREDWOFF','');

  //SetGridValue(sgBalance, qryMatter, 4, 8, 'DEBTORS');
{  sgBalance.Cells[colWOFF,rowFEES] := '$0.00';
  sgBalance.Cells[colWOFF,rowDISB] := '$0.00';
  sgBalance.Cells[colWOFF,rowSUND] := '$0.00';
  sgBalance.Cells[colWOFF,rowCREQ] := '$0.00';
  sgBalance.Cells[colWOFF,rowUPCRED] := '$0.00';  }

  // Discount
  SetGridValue(sgBalance, qryLedgerBalances, colDISC, rowFEES, 'DISCOUNT','');
  SetGridValue(sgBalance, qryLedgerBalances, colDISC, rowDISB, 'dflt_value','');
  SetGridValue(sgBalance, qryLedgerBalances, colDISC, rowSUND, 'dflt_value','');
  SetGridValue(sgBalance, qryLedgerBalances, colDISC, rowCREQ, 'dflt_value','');
  SetGridValue(sgBalance, qryLedgerBalances, colDISC, rowUPCRED, 'dflt_value','');
  SetGridValue(sgBalance, qryLedgerBalances, colWOFF, rowANT, 'dflt_value','');

  // totals for OWING
  SetGridTotal(sgBalance, colOWING, rowFEES, arrayData[colBILL,rowFEES] + arrayData[colTAX,rowFEES]
                - arrayData[colRECVD,rowFEES] - arrayData[colWOFF,rowFEES] + arrayData[colDISC,rowFEES]);
  SetGridTotal(sgBalance, colOWING, rowDISB, arrayData[colBILL,rowDISB] + arrayData[colTAX,rowDISB]
                - arrayData[colRECVD,rowDISB] - arrayData[colWOFF,rowDISB]);
  SetGridTotal(sgBalance, colOWING, rowSUND, arrayData[colBILL,rowSUND] + arrayData[colTAX,rowSUND]
                - arrayData[colRECVD,rowSUND] - arrayData[colWOFF,rowSUND]);
  SetGridTotal(sgBalance, colOWING, rowCREQ, arrayData[colBILL,rowCREQ] + arrayData[colTAX,rowCREQ]
                - arrayData[colRECVD,rowCREQ] - arrayData[colWOFF,rowCREQ]);
  SetGridTotal(sgBalance, colOWING, rowUPCRED, arrayData[colBILL,rowUPCRED] + arrayData[colTAX,rowUPCRED]
                - arrayData[colRECVD,rowUPCRED] - arrayData[colWOFF,rowUPCRED]);

 { sgBalance.Cells[colOWING, rowFEES] := '$0.00';
  sgBalance.Cells[colOWING, rowDISB] := '$0.00';
  sgBalance.Cells[colOWING, rowSUND] := '$0.00';
  sgBalance.Cells[colOWING, rowCREQ] := '$0.00';
  sgBalance.Cells[colOWING, rowUPCRED] := '$0.00';  }


  // totals for EXPOSURE
  SetGridTotal(sgBalance, colEXP, rowFEES, arrayData[colOWING,rowFEES] +
                                           arrayData[colUNBILL,rowFEES] +
                                           arrayData[colDISC,rowFEES]);
  SetGridTotal(sgBalance, colEXP, rowDISB, arrayData[colOWING,rowDISB] + arrayData[colUNBILL,rowDISB]);
  SetGridTotal(sgBalance, colEXP, rowSUND, arrayData[colOWING,rowSUND] + arrayData[colUNBILL,rowSUND]);
//  SetGridTotal(sgBalance, colEXP, rowACTUAL, arrayData[colOWING,rowACTUAL] + arrayData[colUNBILL,rowACTUAL]);
  SetGridTotal(sgBalance, colEXP, rowCREQ, arrayData[colOWING,rowCREQ] + arrayData[colUNBILL,rowCREQ]);
  SetGridTotal(sgBalance, colEXP, rowUPCRED, arrayData[colOWING,rowUPCRED] + arrayData[colUNBILL,rowUPCRED]);
  SetGridTotal(sgBalance, colEXP, rowANT, arrayData[colOWING,rowANT] + arrayData[colUNBILL,rowANT]);

  // totals for ACTUAL EXPENDITURE
  SetGridTotal(sgBalance, colUNBILL, rowACTUAL, arrayData[colUNBILL,rowDISB] + arrayData[colUNBILL,rowSUND]);
  SetGridTotal(sgBalance, colBILL, rowACTUAL, arrayData[colBILL,rowDISB] + arrayData[colBILL,rowSUND]);
  SetGridTotal(sgBalance, colTAX, rowACTUAL, arrayData[colTAX,rowDISB] + arrayData[colTAX,rowSUND]);
  SetGridTotal(sgBalance, colRECVD, rowACTUAL, arrayData[colRECVD,rowDISB] + arrayData[colRECVD,rowSUND]);
  SetGridTotal(sgBalance, colWOFF, rowACTUAL, arrayData[colWOFF,rowDISB] + arrayData[colWOFF,rowSUND]);
  SetGridTotal(sgBalance, colOWING, rowACTUAL, arrayData[colOWING,rowDISB] + arrayData[colOWING,rowSUND]);
  SetGridTotal(sgBalance, colEXP, rowACTUAL, arrayData[colEXP,rowDISB] + arrayData[colEXP,rowSUND]);

//   sgBalance.Cells[colUNBILL, rowACTUAL] := '$0.00';
//   sgBalance.Cells[colBILL, rowACTUAL] := '$0.00';
//   sgBalance.Cells[colTAX, rowACTUAL] := '$0.00';
//   sgBalance.Cells[colRECVD, rowACTUAL] := '$0.00';
//   sgBalance.Cells[colWOFF, rowACTUAL] := '$0.00';
//   sgBalance.Cells[colOWING, rowACTUAL] := '$0.00';
//   sgBalance.Cells[colEXP, rowACTUAL] := '$0.00';

  // totals for ANTICIPATED EXPENDITURE
  SetGridTotal(sgBalance, colUNBILL, rowANT, arrayData[colUNBILL,rowCREQ] + arrayData[colUNBILL,rowUPCRED]);
  SetGridTotal(sgBalance, colBILL, rowANT, arrayData[colBILL,rowCREQ] + arrayData[colBILL,rowUPCRED]);
  SetGridTotal(sgBalance, colTAX, rowANT, arrayData[colTAX,rowCREQ] + arrayData[colTAX,rowUPCRED]);
  SetGridTotal(sgBalance, colRECVD, rowANT, arrayData[colRECVD,rowCREQ] + arrayData[colRECVD,rowUPCRED]);
  SetGridTotal(sgBalance, colWOFF, rowANT, arrayData[colWOFF,rowCREQ] + arrayData[colWOFF,rowUPCRED]);
  SetGridTotal(sgBalance, colOWING, rowANT, arrayData[colOWING,rowCREQ] + arrayData[colOWING,rowUPCRED]);
  SetGridTotal(sgBalance, colEXP, rowANT, arrayData[colEXP,rowCREQ] + arrayData[colEXP,rowUPCRED]);

  // totals for TOTAL EXPENDITURE
  SetGridTotal(sgBalance, colUNBILL, rowTTL, arrayData[colUNBILL,rowACTUAL] + arrayData[colUNBILL,rowANT]);
  SetGridTotal(sgBalance, colBILL, rowTTL, arrayData[colBILL,rowACTUAL] + arrayData[colBILL,rowANT]);
  SetGridTotal(sgBalance, colTAX, rowTTL, arrayData[colTAX,rowACTUAL] + arrayData[colTAX,rowANT]);
  SetGridTotal(sgBalance, colRECVD, rowTTL, arrayData[colRECVD,rowACTUAL] + arrayData[colRECVD,rowANT]);
  SetGridTotal(sgBalance, colWOFF, rowTTL, arrayData[colWOFF,rowACTUAL] + arrayData[colWOFF,rowANT]);
  SetGridTotal(sgBalance, colOWING, rowTTL, arrayData[colOWING,rowACTUAL] + arrayData[colOWING,rowANT]);
  SetGridTotal(sgBalance, colEXP, rowTTL, arrayData[colEXP,rowACTUAL] + arrayData[colEXP,rowANT]);

  //totals for GRAND TOTAL EXPENDITURE
  SetGridTotal(sgBalance, colUNBILL, rowGTTL, arrayData[colUNBILL,rowFEES] + arrayData[colUNBILL,rowTTL]);
  SetGridTotal(sgBalance, colBILL, rowGTTL, arrayData[colBILL,rowFEES] + arrayData[colBILL,rowTTL]);
  SetGridTotal(sgBalance, colTAX, rowGTTL, arrayData[colTAX,rowFEES] + arrayData[colTAX,rowTTL]);
   SetGridValue(sgBalance, qryLedgerBalances, colRECVD, rowGTTL, 'RECVD','');
//  SetGridTotal(sgBalance, colRECVD, rowGTTL, arrayData[colRECVD,rowFEES] + arrayData[colRECVD,rowTTL]);
  SetGridTotal(sgBalance, colWOFF, rowGTTL, arrayData[colWOFF,rowFEES] + arrayData[colWOFF,rowTTL]);
  SetGridTotal(sgBalance, colOWING, rowGTTL, arrayData[colOWING,rowFEES] + arrayData[colOWING,rowTTL]);
  //SetGridTotal(sgBalance, colEXP, rowGTTL, arrayData[colEXP,rowFEES] + arrayData[colEXP,rowTTL]);
  //SetGridTotal(sgBalance, colEXP, rowGTTL, arrayData[colUNBILL,rowGTTL] + arrayData[colOWING,rowGTTL]);

  // totals for OWING (have to be added down - not across)
  SetGridTotal(sgBalance, colOWING, rowTTL, arrayData[colOWING,rowACTUAL] + arrayData[colOWING,rowANT]);
//  SetGridTotal(sgBalance, colOWING, rowGTTL, arrayData[colOWING,rowTTL] + arrayData[colOWING,rowFEES]);
  //sgBalance.Cells[colOWING, rowGTTL] := CurrToStrF(0-qryLedgerBalances.FieldByName('DEBTORS').AsCurrency, ffCurrency, 2);
  SetGridTotal(sgBalance, colOWING, rowGTTL, 0-qryLedgerBalances.FieldByName('DEBTORS').AsCurrency);
  SetGridTotal(sgBalance, colDISC, rowGTTL, arrayData[colDISC ,rowFEES]);

  // totals for EXPOSURE (have to be added down - not across)
  SetGridTotal(sgBalance, colEXP, rowTTL, arrayData[colUNBILL,rowTTL] + arrayData[colOWING,rowTTL]);
  SetGridTotal(sgBalance, colEXP, rowGTTL, arrayData[colUNBILL,rowGTTL] + arrayData[colOWING,rowGTTL]);

  SetGridTotal(sgBalance, colEXP, rowGTTL, arrayData[colUNBILL,rowGTTL] +
                                           arrayData[colOWING,rowGTTL] +
                                           arrayData[colDISC,rowGTTL]);


//****** populate aged debtors grid
   qryMatterAgedDebtors.Close;
   qryMatterAgedDebtors.ParamByName('p1').AsInteger := 29;
   qryMatterAgedDebtors.ParamByName('p2').AsInteger := 59;
   qryMatterAgedDebtors.ParamByName('p3').AsInteger := 89;
   qryMatterAgedDebtors.ParamByName('p4').AsInteger := 119;
   qryMatterAgedDebtors.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryMatterAgedDebtors.Open;
end;

procedure TfrmMatters.SpeedButton1Click(Sender: TObject);
begin
  //recalc matter totals
  srpUpdateBal.Execute;
end;

procedure TfrmMatters.dsMatterDataChange(Sender: TObject; Field: TField);
begin
   dblJurisDesc.Caption       := JurisdictionString(qryMatter.FieldByName('JURISDICTION').AsString,'DESCR');
   dblSubJurisDesc.Caption    := SubJurisdictionString(qryMatter.FieldByName('SUBJURISDICTION').AsString,'DESCR');
   dblfeebasisDesc.Caption    := FeeBasisString(qryMatter.FieldByName('FEEBASIS').AsString,'DESCR');
   lblStatus.Caption          := TableString('MATTERSTATUS','CODE',qryMatter.FieldByName('STATUS').AsString,'DESCR');  //  MatterStatusString(qryMatter.FieldByName('STATUS').AsString,'DESCR');
   lblSubStatus.Caption       := MatterSubStatusString(qryMatter.FieldByName('STATUS').AsString,'DESCR');
   dblfeetemplateDesc.Caption := TableString('TAXTYPE', 'CODE',qryMatter.FieldByName('FEE_TAX_BASIS').AsString,'DESCR');
   dblfeeCodeDesc.Caption     := TableString('FEECODE', 'CODE',qryMatter.FieldByName('FEECODE').AsString,'DESCR');
   lblExpCompletion.Caption   := qryMatter.FieldByName('exp_completion').AsString;
end;

procedure TfrmMatters.dbgrTransitDblClick(Sender: TObject);
var
  LfrmTransitNew: TfrmTransitNew;
begin
   if (not qryTransit.FieldByName('NTRANSIT').IsNull) then
   begin
      LfrmTransitNew := TfrmTransitNew.Create(Self);
      LfrmTransitNew.DisplayTransit(qryTransit.FieldByName('NTRANSIT').AsInteger);
      LfrmTransitNew.OnTransitFormClose := UpdateTransitList;
      LfrmTransitNew.Show;
   end;
end;


procedure TfrmMatters.UpdateTransitList(Sender : TObject);
begin
  qryTransit.Close;
  qryTransit.ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
  qryTransit.Open;

end;

procedure TfrmMatters.btnReopenMatterClick(Sender: TObject);
var
  LQuery: TUniQuery;
begin
  LQuery := TUniQuery.Create(Self);
  LQuery.SQL.Text := 'UPDATE MATTER SET CLOSED = 0 WHERE NMATTER = :FILEID ';
  LQuery.ParamByName('FILEID').AsString := qryMatter.FieldByName('NMATTER').AsString;
  LQuery.Execute;
  LQuery.Close;
  FreeAndNil(LQuery);
  DisplayMatter(qryMatter.FieldByName('FILEID').AsString);

  SetControls;
end;

procedure TfrmMatters.btnTaskEditClick(Sender: TObject);
//var
//   frmTaskNew: TfrmTaskNew;
begin
{   try
      frmTaskNew := TfrmTaskNew.Create(Self);
      frmTaskNew.FindTask(tvTasksNTASK.EditValue);
      if frmTaskNew.Visible = False then
         frmTaskNew.ShowModal;
   finally
      frmTaskNew.Free;
      qryTasks.Refresh;
   end;}
end;

procedure TfrmMatters.btnTransitClick(Sender: TObject);
var
  LfrmRptTransitRegister: TfrmRptTransitRegister;
begin
  LfrmRptTransitRegister := TfrmRptTransitRegister.Create(Self);
  LfrmRptTransitRegister.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.btnSaveClick(Sender: TObject);
begin
  if qryMatter.Active then
    qryMatter.ApplyUpdates;
end;

{
  Added 1.11.2002 GG

  Added link to cheqreq history for the current matter
}

procedure TfrmMatters.miViewCheqreqHistoryforMatterClick(Sender: TObject);
//var
//  frmCheqreqHistory: TfrmCheqreqHistory;
begin
{  if qryMatter.IsEmpty then
    MessageDlg('Nothing to look at!', mtInformation, [mbOK], 0)
  else
  begin
    if (LogIntoCheqReqTool) then
      begin
        // show cheqreq history for the current matter number
        frmCheqreqHistory:= TfrmCheqreqHistory.Create(Self);
        frmCheqreqHistory.qryMatterDetails.ParamByName('NMATTER').AsInteger:=
          qryMatter.FieldByName('NMATTER').AsInteger;
        frmCheqreqHistory.qryMatterDetails.Open;
        frmCheqreqHistory.Show
      end;    //  end if
  end;    }
end;

procedure TfrmMatters.pmCheqreqsPopup(Sender: TObject);
begin
  if (dmAxiom.Security.CheqReq.History) then
  begin
    if qryMatter.IsEmpty then
      miViewCheqreqHistoryforMatter.Caption:= 'Nothing to look at!'
    else
      miViewCheqreqHistoryforMatter.Caption:= Format('View Cheqreq History for Matter #%s...', [qryMatter.FieldByName('NMATTER').AsString])
  end else
    miViewCheqreqHistoryforMatter.Visible:= False
end;

procedure TfrmMatters.pmDocFoldersPopup(Sender: TObject);
begin
   EditFolder1.Enabled := (cxDBTreeList1DESCR.Value <> 'All Files')
                          and (cxDBTreeList1DESCR.Value <> 'Unallocated Files');
   DeleteFolder1.Enabled := (cxDBTreeList1DESCR.Value <> 'All Files')
                          and (cxDBTreeList1DESCR.Value <> 'Unallocated Files');
end;

procedure TfrmMatters.qryMatterPartyAfterOpen(DataSet: TDataSet);
var
  LPartyType: String;
  LParentNode, LNode, LAFNode: PVirtualNode;
  LParentData, LData, LAFData: PContactData;
  LLastNName: Integer;
  LSelectedNName: Integer;
  LSelectedPartyType: String;
begin
  vtContacts.BeginUpdate();
  try
    if(Assigned(vtContacts.FocusedNode)) then
    begin
      LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
      LSelectedNName     := LData.NName;
      LSelectedPartyType := LData.PartyType;
    end else
    begin
      LSelectedNName     := -1;
      LSelectedPartyType := '';
    end;

    vtContacts.Clear();

    LParentNode := nil;
    LLastNName := -1;
    LData := nil;
    LNode := nil;
    DataSet.First();
    while(not DataSet.Eof) do
    begin
      if(LPartyType <> DataSet.FieldByName('category').AsString) then
      begin
        LPartyType  := DataSet.FieldByName('category').AsString;
        LParentNode := vtContacts.AddChild(nil);
        LParentData := vtContacts.GetNodeData(LParentNode);

        LParentData.NName     := -1;
        LParentData.PartyType := LPartyType;
        LLastNName := 0;

        if(LParentData.NName = LSelectedNName) and (LParentData.PartyType = LSelectedPartyType) then
        begin
          vtContacts.FocusedNode := LParentNode;
          vtContacts.Selected[LParentNode] := True;
        end;
      end;

      if(Assigned(LParentNode)) then
      begin
        if(DataSet.FieldByName('nname').AsInteger <> LLastNName) then
        begin
          LLastNName       := DataSet.FieldByName('nname').AsInteger;
          LNode            := vtContacts.AddChild(LParentNode);
          LData            := vtContacts.GetNodeData(LNode);
          LData.PartyType  := LPartyType;
          LData.NName      := DataSet.FieldByName('nname').AsInteger;
          LData.Search     := DataSet.FieldByName('search').AsString;
          LData.Name       := DataSet.FieldByName('name').AsString;
          LData.Salutation := DataSet.FieldByName('salutation').AsString;
          LData.GivenNames := DataSet.FieldByName('givennames').AsString;
          LData.LastName   := DataSet.FieldByName('lastname').AsString;
          LData.Phone      := DataSet.FieldByName('phone').AsString;
          LData.ParentName := DataSet.FieldByName('parentname').AsString;
          LData.ParentNName:= DataSet.FieldByName('parentnname').AsInteger;
          LData.MobilePhone:= DataSet.FieldByName('mobile').AsString;
          LData.HomePhone  := DataSet.FieldByName('homephone').AsString;
          LData.FAX        := DataSet.FieldByName('fax').AsString;
          LData.Email      := DataSet.FieldByName('email').AsString;
          LData.ActingFor  := False;
          LData.Through    := False;

          vtContacts.Expanded[LParentNode] := True;

          if(LData.NName = LSelectedNName) and (LData.PartyType = LSelectedPartyType) then
          begin
            vtContacts.FocusedNode := LNode;
            vtContacts.Selected[LNode] := True;
          end;
        end;

        if(not DataSet.FieldByName('actingfornname').IsNull) then
        begin
          LAFNode            := vtContacts.AddChild(LNode);
          LAFData            := vtContacts.GetNodeData(LAFNode);
          LAFData.PartyType  := LPartyType;
          LAFData.NName      := DataSet.FieldByName('actingfornname').AsInteger;
          LAFData.Search     := DataSet.FieldByName('actingforsearch').AsString;
          LAFData.Name       := DataSet.FieldByName('actingforname').AsString;
          LAFData.Salutation := DataSet.FieldByName('actingforsalutation').AsString;
          LAFData.GivenNames := DataSet.FieldByName('actingforgivennames').AsString;
          LAFData.LastName   := DataSet.FieldByName('actingforlastname').AsString;
          LAFData.Phone      := DataSet.FieldByName('actingforphone').AsString;
          LAFData.PartyType  := DataSet.FieldByName('actingforcategory').AsString;
          LAFData.ThroughNName := LData.NName;
          LData.ActingFor    := True;

          vtContacts.Expanded[LNode] := True;
        end;
        if(not DataSet.FieldByName('throughnname').IsNull) then
        begin
          LAFNode            := vtContacts.AddChild(LNode);
          LAFData            := vtContacts.GetNodeData(LAFNode);
          LAFData.PartyType  := LPartyType;
          LAFData.NName      := DataSet.FieldByName('throughnname').AsInteger;
          LAFData.Search     := DataSet.FieldByName('throughsearch').AsString;
          LAFData.Name       := DataSet.FieldByName('throughname').AsString;
          LAFData.Salutation := DataSet.FieldByName('throughsalutation').AsString;
          LAFData.GivenNames := DataSet.FieldByName('throughgivennames').AsString;
          LAFData.LastName   := DataSet.FieldByName('throughlastname').AsString;
          LAFData.Phone      := DataSet.FieldByName('throughphone').AsString;
          LAFData.PartyType  := DataSet.FieldByName('throughcategory').AsString;
          LAFData.ActingForNName := LData.NName;
          LData.Through      := True;

          vtContacts.Expanded[LNode] := True;
        end;

      end;
      DataSet.Next();
    end;
    vtContacts.ScrollIntoView(vtContacts.FocusedNode,True);
  finally
    vtContacts.EndUpdate();
  end;
end;

procedure TfrmMatters.qryMatterPartyAfterRefresh(DataSet: TDataSet);
begin
//  qryMatterPartyAfterOpen(DataSet);
end;

procedure TfrmMatters.vtContactsGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TContactData);
end;



procedure TfrmMatters.vtContactsGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PContactData;
begin
  CellText := '';
  LData := Sender.GetNodeData(Node);
  if(TextType = ttNormal) then
  begin
    if(LData.NName < 0) then
    begin
      if(Column = 0) then
        CellText := LData.PartyType;
    end else
    begin
      case Column of
        0: CellText := LData.Name;
        1: CellText := Trim(LData.Salutation + ' ' + LData.GivenNames + ' ' + LData.LastName);
        2: CellText := LData.Phone;
        3: CellText := LData.MobilePhone;
        4: CellText := LData.HomePhone;
        5: CellText := LData.Fax;
        6: CellText := LData.Email;
      end;
    end;
  end else if(TextType = ttStatic) and (Column = 1) then
  begin
    if(LData.ParentName <> '') then
      CellText := ' (' + LData.ParentName + ')';
    CellText := AndReplace(CellText);
  end else if(TextType = ttStatic) and (Column = 0) then
  begin
    if(LData.ActingFor) then
      CellText := 'Acting For'
    else if(LData.Through) then
      CellText := 'Through'
    else if(Node.Parent.Parent.Parent = Sender.RootNode) then
      CellText := LData.PartyType;
    CellText := AndReplace(CellText);
  end;
end;

procedure TfrmMatters.vtContactsPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
begin
  if(TextType = ttNormal) then
  begin
    if(Node.Parent = Sender.RootNode) then
      TargetCanvas.Font.Style := [fsBold]
    else
      TargetCanvas.Font.Style := [];
  end else if(TextType = ttStatic) then
  begin
    if(Node.Parent.Parent.Parent = Sender.RootNode) then
      TargetCanvas.Font.Color := clGreen
    else
      TargetCanvas.Font.Color := clBlue;
  end;
end;

procedure TfrmMatters.vtContactsCollapsing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var Allowed: Boolean);
begin
   Allowed := True;
end;

procedure TfrmMatters.qMatterDataFieldsAfterOpen(DataSet: TDataSet);
var
   LForm, LNode: PVirtualNode;
   LData: PFieldData;
   LDataForm: String;
   qryLookup: TUniQuery;
begin
  LDataForm := '';
  LForm   := nil;
  vtMatterData.BeginUpdate();
  try
    vtMatterData.Clear();
    qMatterDataFields.First();
    while(not qMatterDataFields.Eof) do
    begin

      if(LDataForm <> qMatterDataFields.FieldByName('DATAFORM').AsString) then
      begin
        LDataForm             := qMatterDataFields.FieldByName('DATAFORM').AsString;
        LForm                 := vtMatterData.AddChild(nil);
        LData                 := vtMatterData.GetNodeData(LForm);
        LData.DataForm        := LDataForm;
        LData.DataFormCaption := qMatterDataFields.FieldByName('DATAFORMCAPTION').AsString;
      end;

      LNode := vtMatterData.AddChild(LForm);
      vtMatterData.Multiline[LNode] := True;
      LData := vtMatterData.GetNodeData(LNode);
      LData.DataForm     := LDataForm;
      LData.FieldName    := qMatterDataFields.FieldByName('FIELDNAME').AsString;
      LData.FieldCaption := qMatterDataFields.FieldByName('CAPTION').AsString;
      LData.FieldValue   := qMatterDataFields.FieldByName('TEXTVALUE').AsString;
      LData.Modified     := False;
      LData.New          := qMatterDataFields.FieldByName('NEW').Value = 'T';
      LData.NumLines     := qMatterDataFields.FieldByName('DISPLAYLINECOUNT').AsInteger;
      LData.PbGroup      := qMatterDataFields.FieldByName('PHONEBOOKGROUP').AsString;
      LData.CharCase     := (qMatterDataFields.FieldByName('constraint_uppercase').AsString = 'Y');
      LData.TextLength   := qMatterDataFields.FieldByName('constraint_width').AsInteger;
      if (qMatterDataFields.FieldByName('DISPLAYLINECOUNT').AsInteger > 0) then
          LNode.NodeHeight  := qMatterDataFields.FieldByName('DISPLAYLINECOUNT').AsInteger * 20
      else
          LNode.NodeHeight  := 20;
      if(Length(qMatterDataFields.FieldByName('FIELDTYPE').AsString) = 1) then
      begin
        case qMatterDataFields.FieldByName('FIELDTYPE').AsString[1] of
          'C': begin
                  LData.FieldType := efCurrency;
                  LData.FieldValue := qMatterDataFields.FieldByName('NUMBERVALUE').AsString;
               end;
          'D': begin
                 LData.FieldType := efDate;
                 LData.FieldValue := qMatterDataFields.FieldByName('DATEVALUE').AsString;
               end;
          'I': LData.FieldType := efInteger;
          'B': LData.FieldType := efBoolean;
          else begin
                 if qMatterDataFields.FieldByName('LOOKUPFIELD').AsString = 'Y' then
                 begin
                   LData.FieldType := efList;
                   LData.LookUpList := TStringList.Create;
                   TableStringList('fieldtypelookup','fieldname',LData.FieldName,'lookupvalue', LData.LookUpList);
                 end
                 else if qMatterDataFields.FieldByName('DISPLAYLINECOUNT').AsInteger > 1 then
                 begin
                   LData.FieldType := efMemo;
                 end
                 else
                   LData.FieldType := efText; // 'T' or something else
                end;
        end;
      end else
         case qMatterDataFields.FieldByName('FIELDTYPE').AsString[1] of
           'O':begin
                  LData.FieldType := efList;
                  LData.LookUpList := TStringList.Create;
                  qryLookup := TUniQuery.Create(nil);
                  qryLookup.Connection := dmAxiom.uniInsight;
                  with qryLookup do
                  begin
                     SQL.Text := 'SELECT NAME FROM PHONEBOOK, PBGROUPINGS WHERE '+
                                 'PHONEBOOK.NNAME = PBGROUPINGS.NNAME AND CATEGORY = :CATEGORY ORDER BY 1';
                     Params[0].AsString := LData.PbGroup;
                     Open;
                     While not Eof do
                     begin
                        LData.LookUpList.Add(Fields[0].AsString);
                        Next;
                     end;
                     Close;
                  end;
                  qryLookup.Free;
                end;
           else
               LData.FieldType := efText;
         end;

      vtMatterData.Expanded[LForm] := (SystemString('EXPANDED_MTR_DATA') = 'Y');

      qMatterDataFields.Next();
    end;
  finally
    vtMatterData.UpdateVerticalScrollBar(True);
    vtMatterData.EndUpdate();
    LData := nil;
//    ResizeColumns(vtMatterData);
  end;   
end;

procedure TfrmMatters.qMatterDataFieldsBeforeClose(DataSet: TDataSet);
begin
  vtMatterData.Clear();
end;

procedure TfrmMatters.qMatterDataFieldsAfterRefresh(DataSet: TDataSet);
begin
  qMatterDataFieldsAfterOpen(DataSet);
end;

procedure TfrmMatters.vtMatterDataGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TFieldData);
end;



procedure TfrmMatters.vtMatterDataGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PFieldData;
begin
  LData := Sender.GetNodeData(Node);
  case Column of
    0: begin;
      if(Node.Parent = Sender.RootNode) then
        CellText := LData.DataFormCaption
      else
        CellText := LData.FieldCaption;
    end;
    1: CellText := LData.FieldValue;
  end;
//  CellText := AndReplace(CellText);
end;

procedure TfrmMatters.vtMatterDataNewText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; NewText: string);
var
  LData: PFieldData;
begin
  if(Column = 1) then
  begin
    LData := Sender.GetNodeData(Node);
    if(LData.FieldValue <> NewText) then
    begin
      LData.FieldValue := NewText;
      LData.Modified   := True;
      LData.Cleared    := False;
    end;
  end;
end;

procedure TfrmMatters.aDataFormsEditExecute(Sender: TObject);
var
  LMO: TVTMiscOptions;
begin
  LMO := vtMatterData.TreeOptions.MiscOptions;
  Include(LMO,toEditable);
  vtMatterData.TreeOptions.MiscOptions := LMO;

  if(not Assigned(vtMatterData.FocusedNode)) then
    vtMatterData.FocusedNode := vtMatterData.RootNode.FirstChild;

  if(vtMatterData.FocusedNode.ChildCount > 0) then
    vtMatterData.FocusedNode := vtMatterData.FocusedNode.FirstChild;
  vtMatterData.EditNode(vtMatterData.FocusedNode,1);
end;

procedure TfrmMatters.aDataFormsEditUpdate(Sender: TObject);
var
  LMO: TVTMiscOptions;
begin
  LMO := vtMatterData.TreeOptions.MiscOptions;
  TAction(Sender).Enabled := (not (toEditable in LMO)) and  (vtMatterData.RootNodeCount > 0) AND (qryMatter.FieldByName('CLOSED').AsInteger = 0);
end;

procedure TfrmMatters.aDataFormsClearExecute(Sender: TObject);
var
  LData: PFieldData;
begin
  LData := vtMatterData.GetNodeData(vtMatterData.FocusedNode);
  LData.FieldValue := '';
  LData.Modified := True;
  LData.Cleared  := True;
  vtMatterData.CancelEditNode;
  vtMatterData.RepaintNode(vtMatterData.FocusedNode);
end;

procedure TfrmMatters.aDataFormsClearUpdate(Sender: TObject);
var
  LMO: TVTMiscOptions;
begin
  LMO := vtMatterData.TreeOptions.MiscOptions;
  TAction(Sender).Enabled := (toEditable in LMO) and (vtMatterData.RootNodeCount > 0) AND (qryMatter.FieldByName('CLOSED').AsInteger = 0);
end;

procedure TfrmMatters.aDataFormsCancelExecute(Sender: TObject);
var
  LMO: TVTMiscOptions;
begin
  LMO := vtMatterData.TreeOptions.MiscOptions;
  Exclude(LMO,toEditable);
  vtMatterData.TreeOptions.MiscOptions := LMO;
  qMatterDataFields.Refresh();
end;

procedure TfrmMatters.aDataFormsCancelUpdate(Sender: TObject);
var
  LMO: TVTMiscOptions;
begin
  LMO := vtMatterData.TreeOptions.MiscOptions;
  TAction(Sender).Enabled := (toEditable in LMO);
end;

procedure TfrmMatters.aDataFormsPostExecute(Sender: TObject);
var
  LMO: TVTMiscOptions;

  LForm,
  LNode: PVirtualNode;
  LData: PFieldData;
  qTmp: TUniQuery;
begin
  vtMatterData.EndEditNode();
  LMO := vtMatterData.TreeOptions.MiscOptions;
  Exclude(LMO,toEditable);
  vtMatterData.TreeOptions.MiscOptions := LMO;

  qTmp := TUniQuery.Create(Self);
  qTmp.Connection := dmAxiom.uniInsight;
  try

    LForm := vtMatterData.RootNode.FirstChild;
    while(Assigned(LForm)) do
    begin

      LNode := lForm.FirstChild;
      while(Assigned(LNode)) do
      begin
        LData := vtMatterData.GetNodeData(LNode);
        if(LData.Modified) then
        begin
          qTmp.SQL.Clear();
          try
            if(not LData.Cleared) then
            begin
              if(LData.New) then
              begin
                qTmp.SQL.Add('INSERT INTO fieldtypelink');
                qTmp.SQL.Add(' (nunique, linktable, fieldname, textvalue, datevalue, modified, numbervalue, type, nmatter)');
                qTmp.SQL.Add(' VALUES (:nunique, :linktable, :fieldname, :textvalue, :datevalue, SYSDATE, :numbervalue, ''M'', :nmatter)');
              end else
              begin
                qTmp.SQL.Add('UPDATE fieldtypelink SET');
                qTmp.SQL.Add('textvalue = :textvalue, datevalue = :datevalue, modified = SYSDATE, numbervalue = :numbervalue, type = ''M'', nmatter = :nmatter ');
                qTmp.SQL.Add('WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');
              end;

              if(LData.FieldType = efDate) then
              begin
                if VarIsNull(LData.FieldValue) or (LData.FieldValue = '') then
                  LData.FieldValue := DateToStr(trunc(Now));
                qTmp.ParamByName('datevalue').AsDate := VarToDateTime(LData.FieldValue);
              end
              else
                qTmp.ParamByName('datevalue').Clear();

              if(LData.FieldType = efInteger) then
                qTmp.ParamByName('numbervalue').AsString := LData.FieldValue
              else
                qTmp.ParamByName('numbervalue').Clear();

              if(LData.FieldType = efCurrency) then
              begin
                qTmp.ParamByName('numbervalue').AsString := StringReplace(StringReplace(LData.FieldValue,FormatSettings.CurrencyString,'',[rfReplaceAll]),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
                qTmp.ParamByName('textvalue').AsString := FormatCurr('$,0.00',qTmp.ParamByName('numbervalue').AsCurrency);
                LData.FieldValue := qTmp.ParamByName('textvalue').AsString;
              end else
                qTmp.ParamByName('textvalue').AsString := LData.FieldValue;

            end else if (not LData.New) then
            begin
              qTmp.SQL.Add('DELETE FROM fieldtypelink ');
              qTmp.SQL.Add('WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');
            end;

            if(qTmp.SQL.Text <> '') then
            begin
              qTmp.ParamByName('nunique').AsInteger := qMatterDataFields.ParamByName('nunique').AsInteger;
              qTmp.ParamByName('linktable').AsString := LData.DataForm;
              qTmp.ParamByName('fieldname').AsString := LData.FieldName;
              qTmp.ParamByName('nmatter').AsInteger := qMatterDataFields.ParamByName('nunique').AsInteger;

              qTmp.ExecSQL();
            end;
            LData.New := False;
            LData.Modified := False;
            LData.Cleared := False;
          except
            on e: Exception do
            begin
              MessageDlg('Error updating Other Party:'#13#13 + E.Message, mtError, [mbOK], 0);
              Exit;
            end;
          end;
        end;
        LNode := LNode.NextSibling;
      end;
      LForm := LForm.NextSibling;
    end;
  finally
    FreeAndNil(qTmp);
    vtMatterData.Repaint();
  end;
end;



procedure TfrmMatters.vtMatterDataExit(Sender: TObject);
begin
  if(tsEditing in TBaseVirtualTree(Sender).TreeStates) then
    TBaseVirtualTree(Sender).CancelEditNode();
end;

procedure TfrmMatters.vtMatterDataEnter(Sender: TObject);
var
  LTree: TVirtualStringTree;
begin
  LTree := TVirtualStringTree(Sender);
  if(toEditable in LTree.TreeOptions.MiscOptions) then
  begin
    if(not Assigned(LTree.FocusedNode)) then
    begin
      LTree.FocusedNode := LTree.RootNode.FirstChild;
      if(Assigned(LTree.FocusedNode)) then
      begin
        LTree.FocusedColumn := 1;
        LTree.EditNode(LTree.FocusedNode,1);
      end;
    end;
  end;
end;

procedure TfrmMatters.vtMatterDataEditing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  if(toEditable in TVirtualStringTree(Sender).TreeOptions.MiscOptions) then
    Allowed := (Column = 1) and (Node.ChildCount = 0)
  else
    Allowed := False;
end;

procedure TfrmMatters.vtMatterDataCreateEditor(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
var
  LData: PFieldData;
  LookupList:TStrings;
  BLookupList:TStrings;
  ASize: TRect;
  EditEditLink: TEditEditLink;
begin
   if(Column = 1) then
   begin
      LData := Sender.GetNodeData(Node);
      case LData.FieldType of
         efCurrency:  EditLink := TCurrencyEditLink.Create;
         efDate:      EditLink := TDateEditLink.Create(dtkDate);
         efInteger:   EditLink := TSpinEditLink.Create();
         efText:      begin
                         if (LData.NumLines > 1) then
                         begin
                            EditLink  := TMemoEditLink.Create();
//                            ASize := Rect(0, 20,50, 100);
//                            EditLink.SetBounds(ASize);
                         end
                         else
                         begin
                           EditLink := TEditEditLink.Create();
//                           EditEditLink.SetLength(LData.TextLength);
//                           EditEditLink.SetCase(LData.CharCase);
//                           EditLink := EditEditLink;
                         end;
                      end;
         efList:      EditLink := TComboEditLink.Create(LData.LookUpList, csDropDownList,False);
         efBoolean:   begin
                        try
                           BLookupList := TStringList.Create;
                           BLookupList.Add('Y');
                           BLookupList.Add('N');
                           EditLink := TComboEditLink.Create(BLookupList,csDropDownList,False);
                        finally
                           BLookupList.Free;
                        end;
                      end;
      end;
      LData.Modified := True;
   end;
end;

procedure TfrmMatters.vtMatterDataColumnClick(Sender: TBaseVirtualTree;
  Column: TColumnIndex; Shift: TShiftState);
begin
  if(toEditable in TVirtualStringTree(Sender).TreeOptions.MiscOptions) then
  begin
    if(Assigned(Sender.FocusedNode)) then
    begin
      Sender.CancelEditNode();
      Sender.EditNode(Sender.FocusedNode,1);
    end;
  end;
end;

procedure TfrmMatters.vtMatterDataPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  LData: PFieldData;
begin
  if(Column = 0) then
  begin
    if(Node.ChildCount > 0) then
      TargetCanvas.Font.Style := [fsBold]
    else
      TargetCanvas.Font.Style := [];
  end else if(Column = 1) then
  begin
    LData := Sender.GetNodeData(Node);
    if(LData.Modified) then
      TargetCanvas.Font.Color := clBlue;
  end;
end;

procedure TfrmMatters.aShowFieldNamesUpdate(Sender: TObject);
begin
  TAction(Sender).Checked := FShowFieldNames;
end;

procedure TfrmMatters.aShowFieldNamesExecute(Sender: TObject);
begin
  if(FShowFieldNames) then
  begin
    FShowFieldNames := False;
    ResetDataFieldHints(Self);
  end else
  begin
    FShowFieldNames := True;
    SetDataFieldHints(Self,'MATTER.');
  end;
end;

procedure TfrmMatters.btnAddDebtorNotesClick(Sender: TObject);
var
  LDate : TDateTime;
  lsUserName : String;
begin
{  if(not Assigned(foTfrmMatterNotes)) then
    foTfrmMatterNotes := TfrmMatterNotes.Create(self);

  foTfrmMatterNotes.Session := dmAxiom.uniInsight;
  foTfrmMatterNotes.Matter := qryMatter.FieldByName('NMATTER').AsInteger;
  foTfrmMatterNotes.MatterDesc := qryMatter.FieldByName('SHORTDESCR').AsString;
  foTfrmMatterNotes.Lawyer := qryMatter.FieldByName('AUTHOR').AsString;
  foTfrmMatterNotes.PracticeArea := TableString('MATTERTYPE', 'CODE', qryMatter.FieldByName('TYPE').AsString, 'DESCR');
  foTfrmMatterNotes.FileID := qryMatter.FieldByName('FILEID').AsString;
  foTfrmMatterNotes.Client := qryMatter.FieldByName('SEARCH').AsString;
  foTfrmMatterNotes.OnNotesFormClose := NotesFormClose;

  foTfrmMatterNotes.Show;   }

  frmDebtorNotes := TfrmDebtorNotes.Create(Self);

  lsUserName := dmAxiom.GetUserName;

  try
    LDate := Now();
    frmDebtorNotes.EntryDate := LDate;
    frmDebtorNotes.By        := lsUserName;
    frmDebtorNotes.Note      := '';
    frmDebtorNotes.Refno     := '';
    frmDebtorNotes.NMemo     := 0;
    frmDebtorNotes.NMatter   := qryMatter.FieldByName('NMATTER').AsInteger;
    frmDebtorNotes.Editing   := False;

    frmDebtorNotes.qryNMemo.Close;
    frmDebtorNotes.qryNMemo.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    frmDebtorNotes.qryNMemo.Open;

//    frmDebtorNotes.qryDebtorNotes.Open;
//    frmDebtorNotes.qryDebtorNotes.Insert;

    if(frmDebtorNotes.ShowModal <> mrOk) then
      Exit;

//    frmDebtorNotes.qryDebtorNotes.ApplyUpdates;

    qryDebtorNotes.Refresh;
  finally
    FreeAndNil(frmDebtorNotes);
//    dmAxiom.uniInsight.Commit;
  end;
end;

procedure TfrmMatters.btnAddFeeNotesClick(Sender: TObject);
var
  LDateStart,
  LDateEnd : TDateTime;
  lsUserName : String;
  lYear, lMonth, lDay : Word;
begin
   frmFeeNotes := TfrmFeeNotes.Create(Self);

  lsUserName := dmAxiom.GetUserName;

  try
    LDateStart := Now();
    LDateEnd := Now();
    with dmAxiom.qryTmp do
    begin
       Close;
       SQL.Text := 'select min(created) as start_date, max(created) as end_date '+
                   '  from fee '+
                   '  where nmemo is null and type = ''N'' '+
                   '  and nmatter = :nmatter ';
       ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
       Open;
       LDateStart := FieldByName('start_date').AsDateTime;
       LDateEnd   := FieldByName('end_date').AsDateTime;
       Close;
    end;
    if ((LDateStart = null) or (FormatDateTime('DD/MM/YYY',LDateStart) = '30/12/1899')) then
       LDateStart := Now();
    if ((LDateEnd = null) or (FormatDateTime('DD/MM/YYY',LDateEnd) = '30/12/1899')) then
       LDateEnd := Now();

    with frmFeeNotes do
    begin
      EntryDate := LDateStart;
      EndDate   := LDateEnd;
      By        := lsUserName;
      Note      := '';
      Refno     := '';
      NMemo     := 0;
      NMatter   := qryMatter.FieldByName('NMATTER').AsInteger;
      Editing   := False;
      DecodeDate(Date, lYear, lMonth, lDay);
      BillDate  := EndOfAMonth(lYear, lMonth);

      qryAuthors.Close;
      qryAuthors.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryAuthors.Open;

      if(ShowModal <> mrOk) then
         Exit;
    end;
    qryDebtorNotes.Refresh;
  finally
    FreeAndNil(frmDebtorNotes);
  end;
end;

procedure TfrmMatters.btnDebtorNotesPrintClick(Sender: TObject);
var
  loTfrmRptMatterNotes : TfrmRptMatterNotes;
begin
  loTfrmRptMatterNotes := TfrmRptMatterNotes.Create(Self);

  try
    loTfrmRptMatterNotes.MatterDesc  := qryMatter.FieldByName('SHORTDESCR').AsString;
    loTfrmRptMatterNotes.Session := dmAxiom.uniInsight;
    loTfrmRptMatterNotes.Matter := qryMatter.FieldByName('NMATTER').AsInteger;
    loTfrmRptMatterNotes.Lawyer := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('AUTHOR').AsString, 'NAME');
    loTfrmRptMatterNotes.PracticeArea := TableString('MATTERTYPE', 'CODE', qryMatter.FieldByName('TYPE').AsString, 'DESCR');
    loTfrmRptMatterNotes.FileID :=  qryMatter.FieldByName('FILEID').AsString;
    loTfrmRptMatterNotes.Client :=  qryMatter.FieldByName('SEARCH').AsString;

    loTfrmRptMatterNotes.ShowModal;

  finally
    FreeAndNil(loTfrmRptMatterNotes);
  end;    //  end try-finally
end;

procedure TfrmMatters.btnDebtorStatementClick(Sender: TObject);
var
   lTemplate: string;
   ANewDocName,
   AParsedDocName,
   AParsedDir,
   aFileDate: string;
begin
   lTemplate := SystemString('DR_Matter_Template');
   if (lTemplate <> '' ) then
   begin
      dmAxiom.qryRB_Items.Close;
      rptDebtorStmnt.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      rptDebtorStmnt.Template.DatabaseSettings.NameField := 'ITEM_Name';
      rptDebtorStmnt.Template.DatabaseSettings.TemplateField := 'Template';
      rptDebtorStmnt.Template.DatabaseSettings.Name := lTemplate;
      rptDebtorStmnt.Template.LoadFromDatabase;

      if (rptDebtorStmnt.Parameters.Count > 0) then
      begin
         with rptDebtorStmnt.Parameters do
         begin
            Items['NMATTER'].Value := qryMatter.FieldByName('nmatter').AsInteger;
            Items['ENTITY'].Value := dmAxiom.Entity;
         end;
      end;
      DateTimeToString(aFileDate,'ddmmyyyy',Now);
      ANewDocName := IncludeTrailingPathDelimiter(SystemString('DRAG_DEFAULT_DIRECTORY'))+
                     'Debtor_Statement_'+ aFileDate + '.pdf';
      AParsedDocName := ParseMacros(ANewDocName, qryMatter.FieldByName('NMATTER').AsInteger);
      AParsedDocName := StringReplace(AParsedDocName, '/', '_', [rfReplaceAll, rfIgnoreCase]);
      AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
      // check directory exists, if not create it
      if (DirectoryExists(AParsedDir) = False) then
         ForceDirectories(AParsedDir);

      rptDebtorStmnt.AllowPrintToFile := True;
      rptDebtorStmnt.ShowPrintDialog := False;
      rptDebtorStmnt.DeviceType := dtPDF;
      rptDebtorStmnt.PDFSettings.OpenPDFFile := True;
      rptDebtorStmnt.TextFileName := AParsedDocName;
      try
         dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
         dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
         dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
         dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
         dmAxiom.orsAxiom.Connect;
         rptDebtorStmnt.Print;
      finally
         SaveDebtorStatement('Debtor Statement '+ DateToStr(Now), dmAxiom.UserID,
                              AParsedDocName,'Debtor Statement','','','', qryMatter.FieldByName('NMATTER').AsInteger );
         dmAxiom.orsAxiom.Disconnect;
      end;
   end
   else
     MsgInfo('Debtor Template not defined.'+chr(13)+'Please add Template through "Launch->Maintenance->System"');
end;

procedure TfrmMatters.btnRefreshClick(Sender: TObject);
begin
  UpdateDebtorNotes;
end;

procedure TfrmMatters.btnRefreshSearchClick(Sender: TObject);
begin
   qrySearchesList.Close;
   qrySearchesList.Open;
end;


procedure TfrmMatters.UpdateDebtorNotes;
var
   sSQL: string;
begin
   case rgDisplayOption.itemindex of
      0: sSQL := 'SELECT   e.NAME AS createdby, m.created AS created, m.note AS notes, m.nmemo, '+
                 ' n.refno, m.SEQUENCE, 1 as note_type, n.owing '+
                 ' FROM nmemo n, debtornotes m, employee e '+
                 ' WHERE m.nmatter = :nmatter AND e.code = m.createdby AND m.nmemo = n.nmemo(+) '+
                 ' UNION '+
                 ' SELECT   e.NAME AS createdby, m.created AS created, m.note AS notes, 0, ''WIP Note'','+
                 ' m.NFEE_DEBTORNOTES as sequence, 2 as note_type, m.bill_amount'+
                 ' FROM fee_debtornotes m, employee e '+
                 ' WHERE m.nmatter = :nmatter AND e.code = m.createdby '+
                 ' ORDER BY 2 DESC ';
       1: sSQL := 'SELECT   e.NAME AS createdby, m.created AS created, m.note AS notes, m.nmemo, '+
                 ' n.refno, m.SEQUENCE, 1 as note_type, n.owing '+
                 ' FROM nmemo n, debtornotes m, employee e '+
                 ' WHERE m.nmatter = :nmatter AND e.code = m.createdby AND m.nmemo = n.nmemo(+) '+
                 ' ORDER BY 2 DESC ';
       2: sSQL := ' SELECT   e.NAME AS createdby, m.created AS created, m.note AS notes, 0, ''WIP Note'' as refno,'+
                 ' m.NFEE_DEBTORNOTES as sequence, 2 as note_type, m.bill_amount as owing '+
                 ' FROM fee_debtornotes m, employee e '+
                 ' WHERE m.nmatter = :nmatter AND e.code = m.createdby '+
                 ' ORDER BY 2 DESC ';
   end;

   with qryDebtorNotes do
   begin
      Close;
      SQL.Text := sSQL;
      ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      Open;
   end;
   btnDebtorNotesPrint.Enabled := (qryDebtorNotes.RecordCount <> 0);

   with qryDebtorContactDtls do
   begin
      Close;
      ParamByName('nclient').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
      Open;
   end;
end;

procedure TfrmMatters.lvDiaryDblClick(Sender: TObject);
begin
{  if(Not Assigned(lvDiary.Selected)) then
    Exit;
  if(not Assigned(FOutlookIntegrator)) then
    FOutlookIntegrator := TOutlookIntegrator.Create();

  if(FOutlookIntegrator.UseOutlook) then
  begin
    FOutlookIntegrator.OpenAppointment(lvDiary.Selected.SubItems[C_OUTLOOKENTRYID]);
    FOutlookIntegrator.ListMatterAppointments(lvDiary,qryMatter.FieldByName('NMATTER').AsInteger, tcDiary.TabIndex = 0, Trim(tcDiary.Tabs[tcDiary.TabIndex]));
  end;  }
end;

procedure TfrmMatters.lvFoldersClick(Sender: TObject);
var
   Node: PVirtualNode;
   Data: PFolderData;
   LFolderId: integer;
begin
{   Node := lvFolders.FocusedNode;
   if not Assigned(Node) then
      Exit;

   Data := lvFolders.GetNodeData(Node);
   if Data.Text = 'All Files' then
   begin
      LFolderId := Data.FolderID;
      if qryDocs.Active = True then
      begin
         qryDocChildren.Close;
         qryDocVersions.Close;
         qryDocs.Close;
         qryDocs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocs.ParamByName('folder_id').AsInteger := -1;
         qryDocs.Open;

         qryDocChildren.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocChildren.Open;

         qryDocVersions.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocVersions.Open;
      end;
   end
   else
   if Data.Text = 'Unallocated Files' then
   begin
      if qryDocs.Active = True then
      begin
         qryDocChildren.Close;
         qryDocs.Close;
         qryDocVersions.Close;
         qryDocs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocs.ParamByName('folder_id').AsInteger := 0;
         qryDocs.Open;

         qryDocChildren.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocChildren.Open;

         qryDocVersions.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocVersions.Open;
      end;
   end
   else
   if Data.Text <> 'All Files' then
   begin
      LFolderId := Data.FolderID;
      if qryDocs.Active = True then
      begin
         qryDocChildren.Close;
         qryDocVersions.Close;
         qryDocs.Close;
         qryDocs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocs.ParamByName('folder_id').AsInteger := LFolderId;
         qryDocs.Open;

         qryDocChildren.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocChildren.Open;

         qryDocVersions.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocVersions.Open;
      end;
   end;      }
end;

procedure TfrmMatters.lvFoldersGetImageIndex(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
  var Ghosted: Boolean; var ImageIndex: Integer);
var
   Data: PFolderData;
begin
   Data := Sender.GetNodeData(Node);
   ImageIndex := Data^.ImageIndex;
end;

procedure TfrmMatters.lvFoldersMoveTo(Sender: TcxCustomTreeList;
  AttachNode: TcxTreeListNode; AttachMode: TcxTreeListNodeAttachMode;
  Nodes: TList; var IsCopy, Done: Boolean);
var
   ANode: TcxTreeListNode;
begin
   if ((AttachNode.Texts[0] = 'Unallocated Files') or (AttachNode.Texts[0] = 'All Files')) then
      Done := True;
end;

procedure TfrmMatters.tcDiaryChange(Sender: TObject);
begin
{  if(not Assigned(FOutlookIntegrator)) then
    FOutlookIntegrator := TOutlookIntegrator.Create();

  FOutlookIntegrator.ListMatterAppointments(lvDiary,qryMatter.FieldByName('NMATTER').AsInteger, tcDiary.TabIndex = 0, Trim(tcDiary.Tabs[tcDiary.TabIndex]));
  }
  end;

procedure TfrmMatters.pageMatterChanging(Sender: TObject;
  var AllowChange: Boolean);
var
  LResult: Integer;
begin
  if(pageMatter.ActivePage = tabFields) then
  begin
    if(aDataFormsPost.Enabled) then
    begin
      LResult := MessageDlg('You have modified data on this page and have not saved.'#13#10'Do you want to save before leaving this page?', mtWarning, [mbYes,mbNo,mbCancel], 0);
      case LResult of
        mrYes: aDataFormsPost.Execute();
        mrNo:  aDataFormsCancel.Execute();
        else
          AllowChange := False;
      end;
    end;
  end;
end;

procedure TfrmMatters.mnuRemoveTransitClick(Sender: TObject);
begin
  if ((MessageDlg('Are you sure you want to delete this transit item?', mtConfirmation, [mbYes, mbNo], 0)) = mrYes) then
  begin
    qryTmp.SQL.Clear;
    qryTmp.SQL.Text := 'DELETE FROM TRANSIT WHERE NTRANSIT = ' + qryTransit.FieldByName('NTRANSIT').AsString;
    qryTmp.ExecSQL;

    PlaySound('Delete');

    qryTransit.Close;
    qryTransit.Open;

  end;    //  end if

end;

procedure TfrmMatters.SetControls;
begin
  // changed the following call from passing nmatter to passing fileid.
   if (not IsValidMatterForEntity(qryMatter.FieldByName('FILEID').AsString)) then
     SetControlsForMatterNotForThisEntity
   else if (IsClosedArchivedMatter) then
      SetControlsForClosedArchivedMatter
   else if (IsClosedMatter) then
        SetControlsForClosedMatter
   else
      SetControlsForOpenedMatter;
end;


procedure TfrmMatters.SetControlsForClosedMatter;
begin
  SetControlsFor(FALSE);
end;


procedure TfrmMatters.SetControlsForClosedArchivedMatter;
var
  I: Integer;
begin
  SetControlsFor(FALSE);
end;


procedure TfrmMatters.SetControlsForOpenedMatter;
var
  ControllingEntity : String;
  ControllingBranch : String;
begin
  mnuFileNewFee.Enabled           := (dmAxiom.Security.Fee.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  mnuFileAutocost.Enabled      := (dmAxiom.Security.Fee.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  mnuFileNewSundry.Enabled        := (dmAxiom.Security.Sundry.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  dxbtnTransit.Enabled       := (dmAxiom.Security.Transit.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  mnuFileNewCheque.Enabled        := (dmAxiom.Security.Cheque.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  mnuFileNewCheqReq.Enabled       := (dmAxiom.Security.CheqReq.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  mnuFileNewReceipt.Enabled       := (dmAxiom.Security.Receipt.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  mnuFileNewInvoice.Enabled       := (dmAxiom.Security.Bill.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  dxbtnTask.Enabled          := dmAxiom.Security.Matter.Tabs.WorkFlow;
  dxbtnCloseMatter.Enabled    := dmAxiom.Security.Matter.Close;;
  dxbtnReopenMatter.Enabled   := dmAxiom.Security.Matter.Reopen;  //  bEnabled;
  btnInvOpen.Enabled        := (dmAxiom.Security.Bill.Edit and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  btnAutoReceipt.Enabled    := dmAxiom.Security.Receipt.Create;
  btnNewInvoice.Enabled     := (dmAxiom.Security.Bill.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  btnAutoTimer.Enabled      := (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N');
  dxbtnMAtterEdit.Enabled    := dmAxiom.Security.Matter.Edit;
  mnuFileNewDiary.Enabled         := dmAxiom.Security.Matter.Tabs.Diary;
//  mnuFileSnapshot.Enabled      := bEnabled;
  mnuFileAssocEdit.Enabled     := dmAxiom.Security.Matter.Associate;;
  dxbtnClient.Enabled        := dmAxiom.Security.Client.Edit;;
//  dbtbBudgetFees.Enabled    := dmAxiom.Security.Ledger.
//  dbtbExpValue.Enabled      := bEnabled;
//  dbtbBudgetDisb.Enabled    := bEnabled;
//  dbtbBudgetTotal.Enabled   := bEnabled;
  pbMatterDetails.Enabled   := dmAxiom.Security.Matter.Edit;
  btnMaister.Enabled        := True;
  vtContacts.Enabled        := True;
  btnPartyDelete.Enabled    := True;
  btnPartyRelate.Enabled    := True;
  btnPartyOpen.Enabled      := True;
  btnMatterPartyNew.Enabled := True;
  vtMatterData.Enabled      := True;
  bbtnEditDataForm.Enabled  := True;
  bbtnClearDataForm.Enabled := True;
  bbtnPostDataForm.Enabled  := True;
  bbtnCancelDataForm.Enabled:= True;
  bbtnWorkFlow.Enabled      := True;
  btnInvWord.Enabled        := True;
  // 05/02/2012 AES changed to allow scrolling when many bills
  tvInvoices.OptionsData.Editing := True;
//  dbgrInvoices.Enabled      := True;
  dbtxtExpectedPaymentDate.Enabled := True; //MatterClosedNotArchived;
  btnAddDebtorNotes.Enabled := True; // MatterClosedNotArchived;
  btnDebtorNotesPrint.Enabled := MatterClosedNotArchived;
  btnRefresh.Enabled        := MatterClosedNotArchived;
  btnEditDebtorNotes.Enabled := MatterClosedNotArchived;

  dbgrReceipts.Enabled      := True;
//  btnModifyCreateNew.Enabled := True;
//  btnCreateNewDF.Enabled    := True;
  btnDocAdd.Enabled         := True;
//  btndocDelete.Enabled := dmAxiom.Security.Document.DeleteDocument;
  btnPrecSearch.Enabled     := True;
  dbgTemplates.Enabled      := True;
  dbgrTransit.Enabled       := True;
  btnNewDiary.Enabled       := dmAxiom.Security.Diary.Create;
  pmCheqreqs.AutoPopup      := dmAxiom.Security.CheqReq.Access;
  mnuFileNewDiary.Enabled   := dmAxiom.Security.Diary.Create;;
//  mnuFileAssocEdit.Enabled  := bEnabled;
//  mnuFileSnapshot.Enabled   := bEnabled;
//  mnuFileAutocost.Enabled   := bEnabled;
  dbtbOPRef.Enabled         := True;
//  dbtbShortDescr.Enabled    := True;
  dbmmoLongDescr.Enabled    := True;
//  dbtbContact.Enabled       := True;
//  dbtbOtherParty1.Enabled   := True;
//  dbtbOtherParty2.Enabled   := True;
//  dbtbOtherParty3.Enabled   := True;

//******************** AES
//  dbtbRefBy.Enabled         := True;
//  dbtbBillTo.Enabled        := True;
//  dbtbContact.Properties.Buttons.Items[0].Enabled := True;
//  btnOParty1.Enabled        := True;
//  btnOParty2.Enabled        := True;
//  btnOParty3.Enabled        := True;
//  dbtbRefBy.Properties.Buttons.Items[0].Enabled := True;
//  dbtbBillTo.Properties.Buttons.Items[0].Enabled  := True;
//**************************************************

  bnWorkFlow.Enabled        := True;
  barbtnAccountPayable.Enabled := (dmAxiom.Security.Invoice.Create and (qryMatter.FieldByName('PROSPECTIVE').AsString = 'N'));
  if ((qryMatter.FieldByName('PROSPECTIVE').AsString = 'Y')) then
       mnuFileNewFee.Enabled := (ProspectiveFeesAllowed(qryMatter.FieldByName('FILEID').AsString));
  dbgrCriticalDates.Enabled := True;

  if (True) then
  begin
      {
      Added 14.10.2002 GG

      Disable the matter edit button if the matter's controlling entity is not the
      same as the current entity.
      }
      ControllingBranch       := MatterString(qryMatter.FieldByName('FILEID').AsString, 'BRANCH');
      ControllingEntity       := TableString('BRANCH', 'CODE', ControllingBranch, 'ENTITY');
      dxbtnMAtterEdit.Enabled := (dmAxiom.Entity = ControllingEntity) and dmAxiom.Security.Matter.Edit;
      pbMatterDetails.Enabled := (dmAxiom.Entity = ControllingEntity) and dmAxiom.Security.Matter.Edit;
  end;    //  end if


{//  SetControlsFor(TRUE);
   mnuFileNewFee.Enabled                   := dmAxiom.Security.Fee.Create;
   mnuFileAutocost.Enabled              := dmAxiom.Security.Fee.Create;
//   mnuFileNewFee.Enabled             := dmAxiom.Security.Fee.Create;
//   mnuFileAutocost.Enabled           := dmAxiom.Security.Fee.Create;
   mnuFileNewSundry.Enabled                := dmAxiom.Security.Sundry.Create;
   dxbtnTransit.Enabled               := dmAxiom.Security.Transit.Create;
   mnuFileNewSundry.Enabled          := dmAxiom.Security.Sundry.Create;
   mnuFileNewCheqReq.Enabled                := dmAxiom.Security.CheqReq.Create;
   mnuFileNewCheque.Enabled          := dmAxiom.Security.Cheque.Create;
   mnuFileNewReceipt.Enabled         := dmAxiom.Security.Receipt.Create;
   dxbtnDisbDebtJournal.Enabled       := dmAxiom.Security.Matter.DisbDebtJournal;
   mnuFileNewInvoice.Enabled         := dmAxiom.Security.Bill.Create;
   btnInvOpen.Enabled                := dmAxiom.Security.Bill.Edit;
   btnNewInvoice.Enabled             := dmAxiom.Security.Bill.Create;
   btnAutoReceipt.Enabled            := dmAxiom.Security.Receipt.Create;
   dxbtnMAtterEdit.Enabled            := dmAxiom.Security.Matter.Edit;
   btnMaister.Enabled                := dmAxiom.Security.Matter.FeeAnalysis;
   dxbtnReopenMatter.Enabled           := dmAxiom.Security.Matter.Close;
   dxbtnCloseMatter.Enabled            := dmAxiom.Security.Matter.Close;
   mnuFileAssocEdit.Enabled              := dmAxiom.Security.Matter.Associate;
   miPrecEdit.Enabled                := dmAxiom.Security.Precedent.Edit;
   miPrecNew.Enabled                 :=  dmAxiom.Security.Precedent.Create;
   tabPartiesStatic.TabVisible       := not dmAxiom.Security.Matter.HideStaticOP;
   // disable buttons if tabs disabled
   mnuFileNewDiary.Enabled           := dmAxiom.Security.Matter.Tabs.Diary;
   dxbtnTask.Enabled                  := dmAxiom.Security.Matter.Tabs.WorkFlow;
   // Tabs visibility
   tabBalances.TabVisible            := dmAxiom.Security.Matter.Tabs.Balances;
   tabParties.TabVisible             := dmAxiom.Security.Matter.Tabs.Contacts;
   tabBalances.TabVisible            := dmAxiom.Security.Matter.Tabs.Balances;
   tabFields.TabVisible              := dmAxiom.Security.Matter.Tabs.Data;
   tabInvoices.TabVisible            := dmAxiom.Security.Matter.Tabs.Bills;
   tabReceipts.TabVisible            := dmAxiom.Security.Matter.Tabs.Receipts;
   tabGraph.TabVisible               := dmAxiom.Security.Matter.Tabs.Graphs;
   tabDiary.TabVisible               := dmAxiom.Security.Matter.Tabs.Diary;
   pbEditClient.Enabled              := dmAxiom.Security.Client.Edit;
   dfArchiveBox.Enabled              := dmAxiom.Security.Matter.Archive;
   dfArchiveLocation.Enabled         := dmAxiom.Security.Matter.Archive;
   dfArchiveReview.Enabled           := dmAxiom.Security.Matter.Archive;
   dfArchiveDest.Enabled             := dmAxiom.Security.Matter.Archive;
   mlArchiveNotes.Enabled            := dmAxiom.Security.Matter.Archive;
   barbtnAccountPayable.Enabled      := dmAxiom.Security.Invoice.Create;
//   btnDeleteDebtorNotes.Enabled      := dmAxiom.Security.Matter.Debtors.CanDeleteDebtorNotes;

   if dmAxiom.Security.Matter.Close then
      if MatterIsCurrent(qryMatter.FieldByName('FILEID').AsString) then
      begin
         dxbtnReopenMatter.Enabled := dmAxiom.Security.Matter.Reopen;
         dxbtnCloseMatter.Enabled := True;
      end
      else
      begin
         dxbtnReopenMatter.Enabled := dmAxiom.Security.Matter.Reopen;
         dxbtnCloseMatter.Enabled := False;
      end;   }
end;

procedure TfrmMatters.SetControlsFor(bEnabled : Boolean);
var
  ControllingEntity : String;
  ControllingBranch : String;
begin
  //  The Original
  mnuFileNewFee.Enabled       := bEnabled;
  mnuFileAutocost.Enabled     := bEnabled;
  mnuFileNewSundry.Enabled    := bEnabled;
  dxbtnTransit.Enabled        := bEnabled;
  mnuFileNewCheque.Enabled    := bEnabled;
  mnuFileNewCheqReq.Enabled   := bEnabled;
  mnuFileNewReceipt.Enabled   := bEnabled;
  mnuFileNewInvoice.Enabled   := bEnabled;
  dxbtnTask.Enabled           := bEnabled;
  dxbtnCloseMatter.Enabled    := bEnabled;
  // AES 15/08/2003
  // added this test to disable toolbar buttons when a matter does not
  // belong to the current entity.
//  if IsValidMatterForEntity(qryMatter.FieldByName('FILEID').AsString) then
//     dxbtnReopenMatter.Enabled   := not  bEnabled
//  else
     dxbtnReopenMatter.Enabled   := dmAxiom.Security.Matter.Reopen;  //  bEnabled;
  btnInvOpen.Enabled        := bEnabled;
  btnAutoReceipt.Enabled    := bEnabled;
  btnNewInvoice.Enabled     := bEnabled;
  btnAutoTimer.Enabled       := bEnabled;


  //  The New
  dxbtnMAtterEdit.Enabled    := bEnabled;
  mnuFileNewDiary.Enabled         := bEnabled;
  mnuFileSnapshot.Enabled      := bEnabled;
  mnuFileAssocEdit.Enabled     := bEnabled;
  // shouldn't client still be enabled irrespective of matter state
  // AES 29-Apr-2009 
  dxbtnClient.Enabled        := dmAxiom.Security.Client.Edit;   //bEnabled;
//  dbtbBudgetFees.Enabled    := bEnabled;
//  dbtbExpValue.Enabled      := bEnabled;
//  dbtbBudgetDisb.Enabled    := bEnabled;
//  dbtbBudgetTotal.Enabled   := bEnabled;
//  dbmNotes.Enabled          := bEnabled;
  pbMatterDetails.Enabled   := bEnabled;
  btnMaister.Enabled        := bEnabled;
  vtContacts.Enabled        := bEnabled;
  btnPartyDelete.Enabled    := bEnabled;
  btnPartyRelate.Enabled    := bEnabled;
  btnPartyOpen.Enabled      := bEnabled;
  btnMatterPartyNew.Enabled := bEnabled;
  vtMatterData.Enabled      := bEnabled;
  bbtnEditDataForm.Enabled  := bEnabled;
  bbtnClearDataForm.Enabled := bEnabled;
  bbtnPostDataForm.Enabled  := bEnabled;
  bbtnCancelDataForm.Enabled:= bEnabled;
  bbtnWorkFlow.Enabled      := bEnabled;
  btnInvWord.Enabled        := bEnabled;
  // 05/02/2012 AES changed to allow scrolling when many bills
  tvInvoices.OptionsData.Editing := True;
//  dbgrInvoices.Enabled      := bEnabled;
//  grdDebtorNotes.Enabled       := bEnabled;
// all the debtor stuff needs to be enabled if the matter is not archived.
//  grdDebtorNotes.Enabled    := MatterClosedNotArchived;
  dbtxtExpectedPaymentDate.Enabled := MatterClosedNotArchived;
  btnAddDebtorNotes.Enabled := bEnabled; //  MatterClosedNotArchived;
  btnDebtorNotesPrint.Enabled := MatterClosedNotArchived;
  btnRefresh.Enabled        := MatterClosedNotArchived;
  btnEditDebtorNotes.Enabled := MatterClosedNotArchived;

  dbgrReceipts.Enabled      := bEnabled;
//  lvDiary.Enabled           := bEnabled;
//  obarDocuments.Enabled     := bEnabled;
//  btnModifyCreateNew.Enabled := bEnabled;
//  btnCreateNewDF.Enabled    := bEnabled;
  btnDocAdd.Enabled         := bEnabled;
//  btnDocDelete.Enabled      := bEnabled;
  btnPrecSearch.Enabled     := bEnabled;
  dbgTemplates.Enabled      := bEnabled;
  dbgrTransit.Enabled       := bEnabled;
//  btnCategories.Enabled     := bEnabled;
  // documents should be accessible even if matter archived.
//  pageDocuments.Enabled     := bEnabled;
  btnNewDiary.Enabled       := bEnabled;
  pmCheqreqs.AutoPopup      := bEnabled;
  mnuFileNewDiary.Enabled   := bEnabled;
  mnuFileAssocEdit.Enabled  := bEnabled;
  mnuFileSnapshot.Enabled   := bEnabled;
  mnuFileAutocost.Enabled   := bEnabled;
  dbtbOPRef.Enabled         := bEnabled;
//  dbtbShortDescr.Enabled    := bEnabled;
  dbmmoLongDescr.Enabled    := bEnabled;
//  dbtbContact.Enabled       := bEnabled;
//  dbtbOtherParty1.Enabled   := bEnabled;
//  dbtbOtherParty2.Enabled   := bEnabled;
//  dbtbOtherParty3.Enabled   := bEnabled;
//  dbtbRefBy.Enabled         := bEnabled;
//  dbtbBillTo.Enabled        := bEnabled;
//  btnContact.Enabled        := bEnabled;
//  btnOParty1.Enabled        := bEnabled;
//  btnOParty2.Enabled        := bEnabled;
//  btnOParty3.Enabled        := bEnabled;
//  btnRefBy.Enabled          := bEnabled;
//  btnBillTo.Enabled         := bEnabled;
//   dbtbContact.Properties.Buttons.Items[0].Enabled := bEnabled;
//  dbtbRefBy.Properties.Buttons.Items[0].Enabled := bEnabled;
//  dbtbBillTo.Properties.Buttons.Items[0].Enabled  := bEnabled;
  bnWorkFlow.Enabled        := bEnabled;
  barbtnAccountPayable.Enabled := bEnabled;
  dbgrCriticalDates.Enabled := bEnabled;

  if (bEnabled) then
    begin
      {
      Added 14.10.2002 GG

      Disable the matter edit button if the matter's controlling entity is not the
      same as the current entity.
      }
      ControllingBranch       := MatterString(qryMatter.FieldByName('FILEID').AsString, 'BRANCH');
      ControllingEntity       := TableString('BRANCH', 'CODE', ControllingBranch, 'ENTITY');
      dxbtnMAtterEdit.Enabled  := dmAxiom.Entity = ControllingEntity;
    end;    //  end if
end;

function  TfrmMatters.IsClosedMatter : Boolean;
begin
  Result := (qryMatter.FieldByName('CLOSED').AsInteger = 1);
end;

function  TfrmMatters.IsClosedArchivedMatter : Boolean;
begin
  Result := ((qryMatter.FieldByName('CLOSED').AsInteger = 1) AND
             (not qryMatter.FieldByName('ARCHIVENUM').IsNull));
end;

procedure TfrmMatters.SetControlsForMatterNotForThisEntity;
begin
  SetControlsFor(FALSE);
end;

procedure TfrmMatters.aWorkFlowExecute(Sender: TObject);
var
  LMT: TfmWorkflowMatterTasks;
  i: Integer;
  LNMatter: Integer;
begin
   LNMatter := qryMatter.FieldByname('NMatter').AsInteger;

{   for i := 0 to frmDesktop.fdTab.FormCount - 1 do
   begin
      if(frmDesktop.fdTab.Forms[i] is TfmWorkflowMatterTasks) then
      begin
         LMT := TfmWorkflowMatterTasks(frmDesktop.fdTab.Forms[i]);
         if(LMT.NMatter = LNMatter) then
         begin
            frmDesktop.fdTab.ActiveFormIndex := i;
            LMT.Show();
            Exit;
         end;
      end;
   end;  }
   Application.CreateForm(TfmWorkflowMatterTasks, LMT);
   LMT.NMatter := LNMatter;
   frmDesktop.AddFormToTab(LMT, 1);
   LMT.Show;

//  LMT.MatterDesc := qryMatter.FieldByname('SHORTDESCR').AsString;
//  LMT.WorkflowType := lblTypeDesc.Caption;
//  LMT.WorkflowTypeCode := qryMatter.FieldByName('WORKFLOW').AsString;

//  with TfrmTaskExplorer.Create(Application) do
//    FileID := Self.qryMatter.FieldByName('FILEID').AsString;
end;

procedure TfrmMatters.vtContactsGetHint(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  LData: PContactData;
begin
  LData := Sender.GetNodeData(Node);
  CellText := LData.Search;
end;

procedure TfrmMatters.aActingForAddUpdate(Sender: TObject);
var
  LData: PContactData;
begin
  if(Assigned(vtContacts.FocusedNode)) then
  begin
    LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
    TAction(Sender).Enabled := Assigned(vtContacts.FocusedNode) and
       (vtContacts.FocusedNode.Parent.Parent = vtContacts.RootNode) and
        (not LData.Through);
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfrmMatters.aActingForDeleteUpdate(Sender: TObject);
var
  LData: PContactData;
begin
  if(Assigned(vtContacts.FocusedNode)) then
  begin
    LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
    TAction(Sender).Enabled := (LData.ActingForNName > 0) or (LData.ThroughNName > 0);
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfrmMatters.aActingForAddExecute(Sender: TObject);
var
  LFieldName,
  LSearch,
  LParty: String;
  LData: PContactData;
begin
  if(not Assigned(vtContacts.FocusedNode)) then
    Exit;

  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

  LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
  frmPhoneBookSearch.Party := LData.PartyType;
  frmPhoneBookSearch.LimitToPartySelection := True;

  try
    if(frmPhoneBookSearch.ShowModal() = mrOk) then
    begin
      LParty     := frmPhoneBookSearch.Party;
      LSearch    := frmPhoneBookSearch.Search;

      if(LParty = '') then
      begin
        MessageDlg('A party (group) must be selected.', mtError, [mbOK], 0);
        Exit;
      end;

      if(LSearch = '') then
      begin
        MessageDlg('A phone book entry must be selected.', mtError, [mbOK], 0);
        Exit;
      end;
      if(frmPhonebookSearch.NName = LData.NName) then
      begin
        MessageDlg('You can not have someone acting for themselves.', mtError, [mbOK], 0);
        Exit;
      end;

      LFieldName := TableString('PBGROUP', 'CATEGORY', LParty, 'FIELDNAME');
      try
        // check to see if link exists already.
        qryTmp.SQL.Text := 'select count(*) as cnt from mattercontactactingfor where nmatter = :nmatter and nname = :nname and actingfornname = :actingfornname';
        qryTmp.ParamByName('nmatter').AsInteger          := qryMatter.FieldByName('nmatter').AsInteger;
        qryTmp.ParamByName('actingfornname').AsInteger   := frmPhonebookSearch.NName;
        qryTmp.ParamByName('nname').AsInteger            := LData.NName;
        qryTmp.Open();
        try
          if(qryTmp.FieldByName('cnt').AsInteger > 0) then
          begin
            MessageDlg('The acting for link already exists for this matter between the selected contacts!', mtError, [mbOK], 0);
            Exit;
          end;
        finally
          qryTmp.Close();
        end;

        // is the contact acting for someone else on the matter
        qryTmp.SQL.Text := 'select count(*) as cnt from mattercontactactingfor where nmatter = :nmatter and nname = :nname';
        qryTmp.ParamByName('nmatter').AsInteger          := qryMatter.FieldByName('nmatter').AsInteger;
        qryTmp.ParamByName('nname').AsInteger            := frmPhonebookSearch.NName;
        qryTmp.Open();
        try
          if(qryTmp.FieldByName('cnt').AsInteger > 0) then
          begin
            MessageDlg('The contact you selected is already acting for another contact on this matter!', mtError, [mbOK], 0);
            Exit;
          end;
        finally
          qryTmp.Close();
        end;

        qryTmp.SQL.Clear;
        qryTmp.SQL.Add('select count(*) as cnt from matterparty where nname = :nname and nmatter = :nmatter and category = :category');
        qryTmp.ParamByName('nmatter').AsInteger   := qryMatter.FieldByName('nmatter').AsInteger;
        qryTmp.ParamByName('CATEGORY').AsString := LParty;
        qryTmp.ParamByName('NNAME').AsInteger   := frmPhonebookSearch.NName;
        qryTmp.Open();

        if(qryTmp.FieldByName('cnt').AsInteger = 0) then
        begin
          qryTmp.Close();

          qryTmp.SQL.Clear;
          qryTmp.SQL.Add('INSERT INTO MATTERPARTY');
          qryTmp.SQL.Add('(nmatter, CATEGORY, NNAME)');
          qryTmp.SQL.Add('VALUES (:nmatter, :CATEGORY, :NNAME)');

          qryTmp.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
          qryTmp.ParamByName('CATEGORY').AsString := LParty;
          qryTmp.ParamByName('NNAME').AsInteger   := frmPhonebookSearch.NName;

          qryTmp.ExecSQL();
        end else
          qryTmp.Close();

        qryTmp.SQL.Clear();


        qryTmp.SQL.Text := 'insert into mattercontactactingfor values (:nmatter,:nname,:actingfornname)';
        qryTmp.ParamByName('actingfornname').AsInteger   := frmPhonebookSearch.NName;
        qryTmp.ParamByName('nname').AsInteger   := LData.NName;
        qryTmp.ParamByName('nmatter').AsInteger   := qryMatter.FieldByName('nmatter').AsInteger;
        qryTmp.ExecSQL();
      except
        on E: Exception do
        begin
          MsgErr('Error adding Other Party:'#13#13 + E.Message);
          Exit;
        end;
      end;
    end;
  finally
    frmPhoneBookSearch.LimitToPartySelection := False;
    qryMatterParty.Close();
    qryMatterParty.Open();
  end;
end;

procedure TfrmMatters.aActingForDeleteExecute(Sender: TObject);
var
  LParentData, LData: PContactData;
begin
  LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
  LParentData := vtContacts.GetNodeData(vtContacts.FocusedNode.Parent);

  qryTmp.SQL.Clear();
  qryTmp.SQL.Add('delete from mattercontactactingfor ');
  qryTmp.SQL.Add('where nmatter = :nmatter and nname = :nname and actingfornname = :actingfornname');

  qryTmp.ParamByName('nmatter').AsInteger       := qryMatter.FieldByName('nmatter').AsInteger;

  if(LData.ActingForNName > 0) then
  begin
    if MessageDlg('Are you sure you want to show that ' + LData.Name + ' is no longer acting for ' + LParentData.Name + '?', mtConfirmation, [mbYes,mbNo], 0) <> mrYes then
      Exit;

    qryTmp.ParamByName('nname').AsInteger          := LData.NName;
    qryTmp.ParamByName('actingfornname').AsInteger := LData.ActingForNName;
  end else if(LData.ThroughNName > 0) then
  begin
    if MessageDlg('Are you sure you want to show that ' + LParentData.Name + ' is no longer acting for ' + LData.Name + '?', mtConfirmation, [mbYes,mbNo], 0) <> mrYes then
      Exit;

    qryTmp.ParamByName('nname').AsInteger          := LData.ThroughNName;
    qryTmp.ParamByName('actingfornname').AsInteger := LData.NName;
  end else
    Exit; // should never happen..

  qryTmp.ExecSQL();

  vtContacts.FocusedNode := vtContacts.FocusedNode.Parent;

  qryMatterParty.Close();
  qryMatterParty.Open();
end;

procedure TfrmMatters.pbEditClientClick(Sender: TObject);
var
  LForm:TfrmPhoneBookNew;
begin
   try
      LForm := TfrmPhoneBookNew.Create(Self);
      LForm.SetupForClient(qryPhoneBook.FieldByName('NCLIENT').AsInteger);
      LForm.bDoShow := True;
      LForm.ShowModal();
   finally
      qryPhoneBook.Refresh;
      LForm.Release;
   end;
end;

procedure TfrmMatters.CMDialogKey(var Msg: TWMKey);
var
  LState: DWORD;
  function GetNextChild(ANode: PVirtualNode): PVirtualNode;
  begin
    Result := ANode.Parent.FirstChild;

    if(Assigned(ANode.Parent.NextSibling)) then
    begin
      if(Assigned(ANode.Parent.NextSibling.FirstChild)) then
        Result := ANode.Parent.NextSibling.FirstChild;
    end else if(not Assigned(ANode.Parent.NextSibling)) then
    begin
      if(Assigned(ANode.Parent.Parent.FirstChild.FirstChild)) then
        Result := ANode.Parent.Parent.FirstChild.FirstChild;
    end;
  end;

  function GetPrevChild(ANode: PVirtualNode): PVirtualNode;
  begin
    Result := ANode.Parent.LastChild;
    if(Assigned(ANode.Parent.PrevSibling)) then
    begin
      if(Assigned(ANode.Parent.PrevSibling.LastChild)) then
        Result := ANode.Parent.PrevSibling.LastChild;
    end else if(not Assigned(ANode.Parent.PrevSibling)) then
    begin
      if(Assigned(ANode.Parent.Parent.LastChild.LastChild)) then
        Result := ANode.Parent.Parent.LastChild.LastChild;
    end;
  end;

  procedure DoTreeTabbing(AVirtualTree: TVirtualStringTree; var Msg: TWMKey);
  begin
    if(Msg.CharCode = VK_TAB) then
    begin
      if(AVirtualTree.IsEditing) then
      begin
        Msg.CharCode := 0;
        AVirtualTree.EndEditNode();

        LState := GetKeyState(VK_SHIFT);
        if(LState <= 1) then
        begin
          AVirtualTree.FocusedColumn := 1;

          if(Assigned(AVirtualTree.FocusedNode.NextSibling)) then
            AVirtualTree.FocusedNode := AVirtualTree.FocusedNode.NextSibling
          else
            AVirtualTree.FocusedNode := GetNextChild(AVirtualTree.FocusedNode);
        end else
        begin
          if(Assigned(AVirtualTree.FocusedNode.PrevSibling)) then
            AVirtualTree.FocusedNode := AVirtualTree.FocusedNode.PrevSibling
          else
            AVirtualTree.FocusedNode := GetPrevChild(AVirtualTree.FocusedNode);
        end;
        AVirtualTree.EditNode(AVirtualTree.FocusedNode,AVirtualTree.FocusedColumn);
      end;
    end;
  end;
begin
  if(Assigned(ActiveControl) and (ActiveControl.Parent = vtMatterData)) then
    DoTreeTabbing(vtMatterData, Msg)
  else
    inherited;
end;

procedure TfrmMatters.vtMatterDataChange(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
// nothing
end;

procedure TfrmMatters.aDeletePartyExecute(Sender: TObject);
var
  LData: PContactData;
begin
  if not qryMatterParty.IsEmpty then
  begin
    LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
    if(LData.NName < 0) then
      Exit;
    if MsgAsk('Are you sure you want to remove the link to ' + LData.PartyType + ' ' + LData.Search + '?') = mrYes then
    begin
      qryTmp.SQL.Text := 'DELETE FROM MATTERPARTY WHERE nmatter = :nmatter and nname = :nname and category = :category';
      qryTmp.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
      qryTmp.ParamByName('nname').AsInteger := LData.NName;
      qryTmp.ParamByName('category').AsString := LData.PartyType;
      qryTmp.ExecSQL;

      qryTmp.SQL.Text := 'DELETE FROM mattercontactactingfor WHERE nmatter = :nmatter and nname = :nname';
      qryTmp.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
      qryTmp.ParamByName('nname').AsInteger := LData.NName;
      qryTmp.ExecSQL;

      qryTmp.SQL.Text := 'DELETE FROM mattercontactactingfor WHERE nmatter = :nmatter and actingfornname = :nname';
      qryTmp.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
      qryTmp.ParamByName('nname').AsInteger := LData.NName;
      qryTmp.ExecSQL;

      PlaySound('Delete');
      vtContacts.FocusedNode := vtContacts.FocusedNode.Parent;

      qryMatterParty.Close;
      qryMatterParty.Open;
    end;
  end;
end;

procedure TfrmMatters.aDeletePartyUpdate(Sender: TObject);
begin
  if(Assigned(vtContacts.FocusedNode)) then
    TAction(Sender).Enabled := vtContacts.FocusedNode.Parent.Parent = vtContacts.RootNode
  else
    TAction(Sender).Enabled := False;
end;

procedure TfrmMatters.tabDebtorNotesShow(Sender: TObject);
begin
   cbDebtorStatus.Enabled := dmAxiom.Security.Matter.CanChangeDebtorStatus;
   if tDebtorStatus.Active = False then
      tDebtorStatus.Open();
end;

procedure TfrmMatters.Position1Click(Sender: TObject);
var
   frmPositionReport: TfrmPositionReport;
begin
   try
      frmPositionReport := TfrmPositionReport.Create(Self);
      with frmPositionReport do
      begin
         WithGST  := frmMatters.cbUnbillBalanceswithGST.Checked;
         NMatter  := frmMatters.qryMatter.FieldByName('nmatter').AsInteger;
         NClient  := frmMatters.qryMatter.FieldByName('NCLIENT').AsInteger;
         PrintPositionRpt;
      end;
   finally
      FreeAndNil(frmPositionReport);
   end;
end;

procedure TfrmMatters.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmMatters.ppLabel23GetText(Sender: TObject; var Text: String);
begin
   Text := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('CONTROLLER').AsString, 'NAME');
end;

procedure TfrmMatters.ppLabel24GetText(Sender: TObject; var Text: String);
begin
   Text := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('AUTHOR').AsString, 'NAME');
end;

procedure TfrmMatters.ppLabel25GetText(Sender: TObject; var Text: String);
begin
   Text := qryMatter.FieldByName('LONGDESCR').AsString;
end;

procedure TfrmMatters.ppLabel26GetText(Sender: TObject; var Text: String);
begin
   Text := lblControl.Caption;
end;

procedure TfrmMatters.ppLabel27GetText(Sender: TObject; var Text: String);
begin
   Text := lblAuthor.Caption;
end;

procedure TfrmMatters.tbtnFirstClick(Sender: TObject);
begin
   dmAxiom.qryMSearch.First;
   NavigateMatter;
end;

procedure TfrmMatters.tbtnPrevClick(Sender: TObject);
begin
  if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> qryMatter.FieldByName('FILEID').AsString then
  begin
    dmAxiom.qryMSearch.Close;
    dmAxiom.qryMSearch.Open;
    dmAxiom.qryMSearch.Locate('FILEID', qryMatter.FieldByName('FILEID').AsString, []);
  end;
  dmAxiom.qryMSearch.Prior;
  NavigateMatter;
end;

procedure TfrmMatters.tbtnLastClick(Sender: TObject);
begin
  dmAxiom.qryMSearch.Last;
  NavigateMatter;
end;

procedure TfrmMatters.tbtnNextClick(Sender: TObject);
begin
   if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> qryMatter.FieldByName('FILEID').AsString then
    dmAxiom.qryMSearch.Locate('FILEID', qryMatter.FieldByName('FILEID').AsString, []);
  dmAxiom.qryMSearch.Next;
  NavigateMatter;
end;

procedure TfrmMatters.btnCheqreqsLedgerClick(Sender: TObject);
var
  LfrmRptLedgerUnconCheqReq: TfrmRptLedgerUnconCheqReq;
begin
//  LfrmRptLedgerUnconCheqReq := TfrmRptLedgerUnconCheqReq.Create(Self);
//  LfrmRptLedgerUnconCheqReq.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
  with qryUnconCheqReq do
   begin
      Close;
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      Open;
      ppMatter.SetText(qryMatter.FieldByName('FILEID').AsString);
      ppClient.SetText(qryMatter.FieldByName('SEARCH').AsString);
      ppDescription.SetText(qryMatter.FieldByName('LONGDESCR').AsString);
      try
         rbRptUnconCheqReq.Print;
      except

      end;
   end;
end;

// Procedures for hints and help tips
// Called as the mouse cursor moves over the label (entering)
procedure TfrmMatters.lblUnderlineEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [fsUnderline];
end;

// Called as the mouse cursor moves over the label (exiting)
procedure TfrmMatters.lblUnderlineLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [];
end;

// Called when label is clicked on to invoke help message on
// selected text
procedure TfrmMatters.lblHelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   helpMsg1, helpMsg2: string;
begin
   helpMsg1 := '';
   helpMsg2 := '';

   if TLabel(Sender).Name = 'lblsUnconvCheqReq' then
   begin
     helpMsg1 := 'The value of cheque requisitions shown here is the total of cheque requisitions that have not yet been converted to cheques.';
     helpMsg2 := '  Cheque Requisitions are entered by users usually from the toolbar of the matter screen and are processed as required by the accounts department.';
     TLabel(Sender).Hint := helpMsg1 + helpMsg2;
   end
   else if TLabel(Sender).Name = 'lblsWIP' then
   begin
     helpMsg1 := 'Work In Progress (Unbilled Fees)';
     TLabel(Sender).Hint := helpMsg1 + helpMsg2;
   end
//   else
 //  Application.MessageBox(PChar(helpMsg1 + helpMsg2), PChar(TLabel(Sender).Caption), MB_OK);

end;

procedure TfrmMatters.qryMatterAfterEdit(DataSet: TDataSet);
begin
   FDebtorNotesModified := True;
end;

procedure TfrmMatters.rbRptUnconCheqReqBeforePrint(Sender: TObject);
begin
  rbRptUnconCheqReq.PreviewForm.WindowState := wsMaximized;
//  TppViewer(rbRptUnconCheqReq.PreviewForm.Viewer).ZoomSetting := zs100percent;
end;

procedure TfrmMatters.ppTotalCalc(Sender: TObject; var Value: Variant);
begin
   Value := ppTotalAmount.Value + ppTotalTax.Value;
end;

procedure TfrmMatters.ppOwingCalc(Sender: TObject; var Value: Variant);
begin
   if not (VarIsNull(ppAmount.FieldValue) or VarIsNull(ppTax.FieldValue) or
          VarIsNull(ppPaid.FieldValue)) then
      Value := ppAmount.FieldValue + ppTax.FieldValue - ABS(ppPaid.FieldValue)
   else
      Value := 0;
end;

procedure TfrmMatters.ppPayableCalc(Sender: TObject; var Value: Variant);
begin
   if not (VarIsNull(ppDBPayable.FieldValue) or VarIsNull(ppPaid.FieldValue)) then
      Value := ppDBPayable.FieldValue - ABS(ppPaid.FieldValue)
   else
      Value := 0;
end;

procedure TfrmMatters.tvSearchesCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
   ACol,
   ARow,
   AHandle: Integer;
   tmpFloat: Double;
   DocErrMsg,
   url,
   lURL,
   lUser,
   lPassword,
   lResponse,
   TokenID,
   MappingID: string;
   vResponse: TResource;
   vSearch,
   vResult: TMatterDetails;
   List: TStrings;
begin
   with TcxCustomGridTableView(Sender) do
   begin
      ACol := ACellViewInfo.Item.Index;
      ARow := DataController.GetFocusedRowIndex;

      case ACol of
         6: begin
               if (not VarIsNull(tvSearchesView.EditValue)) then
               begin
                  AHandle := ExecuteFile(tvSearchesView.EditValue, '', '.', SW_SHOWNORMAL, DocErrMsg);
                  if AHandle < 33 then
                     MsgInfo('Unable to open Document. - '+ DocErrMsg);
               end;
            end;
         8: begin
               if (not VarIsNull(tvSearchesONLINEURL.EditValue)) then
               begin
                  url := tvSearchesONLINEURL.EditValue;
                  if (dmAxiom.INFOTRACK_USER = '') then
                     lUser := SystemString('INFOTRACK_USER')
                  else
                     lUser := dmAxiom.INFOTRACK_USER;

                  if (dmAxiom.INFOTRACK_PASSWORD = '') then
                     lPassword := SystemString('INFOTRACK_PASSWORD')
                  else
                     lPassword := dmAxiom.INFOTRACK_PASSWORD;

 //                 HTTPBasicAuthenticator1.Username := lUser;
 //                 HTTPBasicAuthenticator1.Password := lPassword;

                  lURL := SystemString('INFOTRACK_URL');
                  vSearch := TMatterDetails.NewFrom(qryMatter.FieldByName('nmatter').AsString,
                                                      qryMatter.FieldByName('nmatter').AsString);

                  vResponse := RestClientt.Resource(lURL)
                           .Accept(RestUtils.MediaType_Json)
                           .ContentType(RestUtils.MediaType_Json);

                  vResult := vResponse.Post<TMatterDetails>(vSearch);
                 lResponse := RestClientt.ResponseRecord;
                  if (lResponse <> '') then
                  begin
                     List := TStringList.Create;
                     try
                        ExtractStrings([':'], [], PChar(lResponse), List);
                        TokenID := Copy(List[1], 2, length(List[1]) - 14);
                        MappingID := Copy(List[2], 2, length(List[2]) - 8);
                     finally
                        List.Free;
                     end;
                  end;
                  //url := Format('%s&token=%s&mappingid=%s', [url, TokenID, MappingID]);
                  url := Format('%s?token=%s?mappingid=%s', [url, TokenID, MappingID]);
                  AHandle := ExecuteFile(URL, '', '.', SW_SHOWNORMAL, DocErrMsg);
                  if AHandle <= 32 then
                     MsgInfo('Unable to open Link. The Link may no longer exist.');
               end;
            end;
      end;
   end;
end;

procedure TfrmMatters.tvSearchesEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
   if AItem = tvSearchesPDF then
      AAllow := False;
   if AItem = tvSearchesOnline then
      AAllow := False;
end;

procedure TfrmMatters.tvSubNamesDblClick(Sender: TObject);
var
  LForm: TfrmPhoneBookNew;
begin
  LForm := TfrmPhoneBookNew.Create(Self);
  try
    LForm.NName := qListChildren.FieldByName('NNAME').AsInteger;
    LForm.Left := LForm.Left + 10;
    LForm.Top := LForm.Top + 10;
    LForm.ShowModal();
    qListChildren.Refresh;
  finally
    FreeAndNil(LForm);
  end;
end;

procedure TfrmMatters.dxbtnRefreshClick(Sender: TObject);
begin
   DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.dxbtnMAtterEditClick(Sender: TObject);
var
  LfrmMatterNew: TfrmMatterNew;
begin
   if not qryMatter.IsEmpty then
   begin
      LfrmMatterNew := TfrmMatterNew.Create(Self);
      LfrmMatterNew.FromDisplayMatter := True;
      LfrmMatterNew.MatterDisplay(qryMatter.FieldByName('NMATTER').AsInteger);
      if LfrmMatterNew.ShowModal = mrOK then
      begin
         qryMatter.Refresh;
         if DisplayMatter(qryMatter.FieldByName('FILEID').AsString) = False then
            Self.Close;
         frmDesktop.tvTaskList.BeginUpdate();
         frmDesktop.qryDiary.Close;
         frmDesktop.qryDiary.Open;
         frmDesktop.tvTaskList.EndUpdate;
         tvProjectTaskItems.DataController.RecordCount := 0;
      end;
   end;
end;

procedure TfrmMatters.dxbtnCloseMatterClick(Sender: TObject);
begin
   if (dxBarDBNavPost1.Enabled = True) then
   begin
      if MsgAsk('There are unsaved changes. Save changes now?') = IDYes then
         dxBarDBNavPost1.Click;
   end;

   if CloseMatter(qryMatter.FieldByName('FILEID').AsString, Now()) then
   begin
      try
         MsgInfo('REMINDER!' + chr(13) + 'Have you printed a Trust Statement?');
         if not Assigned(MatterLabel) then
            MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
         MatterLabel.ArchiveMode := True;
         if not MatterLabel.Cancelled then
            MatterLabel.Print(qryMatter.FieldByName('NMATTER').AsInteger,'ARCHIVELABEL');
      finally
         DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
      end;
   end;
   SetControls;
end;

procedure TfrmMatters.dxbtnDocsAsZipClick(Sender: TObject);
begin
//
end;

procedure TfrmMatters.dxbtnReopenMatterClick(Sender: TObject);
var
  LQuery: TUniQuery;
begin
   LQuery := TUniQuery.Create(Self);
   try
     LQuery.Connection := dmAxiom.uniInsight;
     if SystemString('REMOVE_ARCHIVE_DATE') = 'Y' then
        LQuery.SQL.Text := 'UPDATE MATTER SET CLOSED = 0, ARCHIVED = null WHERE NMATTER = :NMATTER '
     else
        LQuery.SQL.Text := 'UPDATE MATTER SET CLOSED = 0 WHERE NMATTER = :NMATTER ';
     LQuery.ParamByName('NMATTER').AsString := qryMatter.FieldByName('NMATTER').AsString;
     LQuery.Execute;
     LQuery.Close;
   finally
     FreeAndNil(LQuery);
   end;
   DisplayMatter(qryMatter.FieldByName('FILEID').AsString);

   SetControls;
end;

procedure TfrmMatters.dxbtnAddDoc2FolderClick(Sender: TObject);
var
   LDocID,
   iCtr,
   LFolderID,
   Count,
   ARowIndex: integer;
   fmdoc_folder_sel: Tfrmdoc_folder_sel;
   lFolderName: string;
begin
  fmdoc_folder_sel := nil;
   try
      iCtr := 0;
      fmdoc_folder_sel := Tfrmdoc_folder_sel.Create(Self);
      fmdoc_folder_sel.Matter := qryMatter.FieldByName('NMATTER').AsInteger;
      if (fmDoc_folder_sel.ShowModal = mrOk) then
      begin
         try
            lFolderName := fmDoc_folder_sel.cmbFolderList.Text;
            LFolderID := fmDoc_folder_sel.cmbFolderList.EditValue;
            dmAxiom.uniInsight.StartTransaction;

            tvDocs.BeginUpdate;

            tvDocs.DataController.FocusedRowIndex := 0;
            for iCtr := 0 to tvDocs.Controller.SelectedRowCount - 1 do
            begin
               ARowIndex := tvDocs.DataController.GetSelectedRowIndex(iCtr);
               tvDocs.ViewData.Records[ARowIndex].Focused  := True;
               if tvDocs.Controller.FocusedRow.IsData then
               begin
                  LDocID := tvDocsDOCID.EditValue;
                  with dmAxiom.qryTmp do
                  begin
                     SQL.Clear;
                     SQL.Add('update doc set folder_id = :folder_id where docid = :docid');
                     ParamByName('docid').AsInteger := LDocID;
                     ParamByName('folder_id').AsInteger := LFolderID;
                     ExecSql;
                     Count := iCtr;
                  end;
               end;
            end;
         finally
            dmAxiom.uniInsight.Commit;
            tvDocs.EndUpdate;
         end;
      end

   finally
      fmdoc_folder_sel.Free;
      MsgInfo(IntToStr(Count) + ' Documents Added ' + lFolderName);
   end;
end;

procedure TfrmMatters.dxbtnClick(Sender: TObject);
var
  LNewFile,
  LOldFile: String;
begin
  LOldFile := tvEmailAttachmentsPATH.EditValue;
  fmDocCopyMoveFileDialog := TfmDocCopyMoveFileDialog.Create(Self);
  try
    fmDocCopyMoveFileDialog.Operation              := cmfDocRename;

    fmDocCopyMoveFileDialog.FileName               := LOldFile;
    fmDocCopyMoveFileDialog.Destination            := LOldFile;  //ExtractFileName(LData.TemplatePath);
    fmDocCopyMoveFileDialog.NewFileName            := ExtractFileName(LOldFile);
    if(fmDocCopyMoveFileDialog.ShowModal() <> mrOk) then
      Exit;

    if(ExtractFilePath(fmDocCopyMoveFileDialog.Destination) = '') then
      LNewFile := ExtractFilePath(LOldFile) + fmDocCopyMoveFileDialog.Destination
    else
    begin
      LNewFile := fmDocCopyMoveFileDialog.Destination;
        dmAxiom.qryTmp.SQL.Text :=
          'UPDATE doc SET display_path = :docpath, path = :path, doc_name = :doc_name, search = :search WHERE docid = :docid';
        dmAxiom.qryTmp.ParamByName('docpath').AsString := LNewFile;
        dmAxiom.qryTmp.ParamByName('PATH').AsString := IndexPath(LNewFile, ExtractFilePath(LNewFile));
        dmAxiom.qryTmp.ParamByName('docid').AsInteger  := tvEmailAttachmentsDOCID.EditValue;
        dmAxiom.qryTmp.ParamByName('doc_name').AsString := fmDocCopyMoveFileDialog.NewFileName;
        dmAxiom.qryTmp.ParamByName('search').AsString := fmDocCopyMoveFileDialog.NewFileName;
        dmAxiom.qryTmp.ExecSQL();
      end;
  finally
    FreeAndNil(fmDocCopyMoveFileDialog);
    tvdocs.BeginUpdate;
    qryDocs.Close;
    qryDocs.Open;
    tvdocs.EndUpdate;
  end;
end;

procedure TfrmMatters.dxbtnClientClick(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
   LfrmClients := TfrmClients.Create(Application);
   try
      if frmDesktop.pagMainControl.ActivePageIndex = 0 then
         frmDesktop.AddFormToTab(LfrmClients,1);
      LfrmClients.actNewClient.Enabled := False;
   finally
      LfrmClients.DisplayClient(qryMatter.FieldByName('NCLIENT').AsInteger);
   end;
end;

procedure TfrmMatters.dxbtnPrintClick(Sender: TObject);
begin
 if not Assigned(MatterLabel) then
    MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
  if not MatterLabel.Cancelled then
    MatterLabel.Print(qryMatter.FieldByName('NMATTER').AsInteger);
end;

procedure TfrmMatters.mnuFileAutocostClick(Sender: TObject);
var
  LfrmAutoCost: TfrmAutoCost;
begin
//  LfrmAutoCost := TfrmAutoCost(FindorCreate(TfrmAutoCost, IDXAUTOCOST));
  LfrmAutoCost := TfrmAutoCost.Create(Self);
//  LfrmAutoCost.CreateTimer(qryMatter.FieldByName('FILEID').AsString);
  LfrmAutoCost.Show;
  LfrmAutoCost.CreateTimer(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatters.dxbtnTransitClick(Sender: TObject);
var
  frmNewTransitNew : TfrmTransitNew;
begin
  frmNewTransitNew := TfrmTransitNew.Create(Self);
  frmNewTransitNew.Show;
  frmNewTransitNew.DisplayMatter(qryMatter.FieldByName('NMATTER').AsInteger);
end;

procedure TfrmMatters.popChequePopup(Sender: TObject);
var
   mnuBank: TdxBarButton;
   strBanks: TStringList;
   iCtr: integer;
   TotalItems: integer;
begin
   TotalItems := popCheque.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 0 do
      popCheque.ItemLinks.Delete(iCtr);

   strBanks := TStringList.Create;
   StringPopulate(strBanks, 'BANK', 'NAME', 'TRUST IN (''G'',''T'') AND ENTITY = ' + QuotedStr(dmAxiom.Entity));
   for iCtr := 0 to strBanks.Count - 1 do
   begin
      mnuBank :=  TdxBarButton.Create(nil);;
      mnuBank.Caption := strBanks[iCtr];
      mnuBank.OnClick := ChequeClick;
      popCheque.ItemLinks.Add.Item := mnuBank;
   end;
   strBanks.Free;
end;

procedure TfrmMatters.mnuFileNewReceiptClick(Sender: TObject);
var
   LfrmReceipt: TfrmReceipt;
   LDefaultBank: string;
begin
   LDefaultBank := dmAxiom.DefaultBank;
   LfrmReceipt := TfrmReceipt.Create(Self);
   LfrmReceipt.AutoReceiptMatter(qryMatter.FieldByName('FILEID').AsString, LDefaultBank);
   LfrmReceipt.Show;
end;


procedure TfrmMatters.popReceiptPopup(Sender: TObject);
var
   mnuBank: TdxBarButton;
   strBanks: TStringList;
   iCtr: integer;
   TotalItems: integer;
begin
   TotalItems := popReceipt.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 0 do
      popReceipt.ItemLinks.Delete(iCtr);

   strBanks := TStringList.Create;
   StringPopulate(strBanks, 'BANK', 'NAME', 'TRUST IN (''G'',''T'') AND ENTITY = ' + QuotedStr(dmAxiom.Entity));
   for iCtr := 0 to strBanks.Count - 1 do
   begin
      mnuBank :=  TdxBarButton.Create(nil);
      mnuBank.Caption := strBanks[iCtr];
      mnuBank.OnClick := ReceiptClick;
      popReceipt.ItemLinks.Add.Item := mnuBank;
   end;
   strBanks.Free;
end;

procedure TfrmMatters.dxbtnTaskClick(Sender: TObject);
//var
//   LMT: TfmWorkflowMatterTasks;
//   i: Integer;
//   LNMatter: Integer;
begin
   if (tabFields.TabVisible = True) then
      bnWorkflow.Click;
{  LNMatter := qryMatter.FieldByname('NMatter').AsInteger;
   for i := 0 to frmDesktop.fdTab.FormCount - 1 do
   begin
      if(frmDesktop.fdTab.Forms[i] is TfmWorkflowMatterTasks) then
      begin
         LMT := TfmWorkflowMatterTasks(frmDesktop.fdTab.Forms[i]);
         if(LMT.NMatter = LNMatter) then
         begin
//            frmDesktop.fdTab.SetActiveFormByName('TfmWorkflowMatterTasks');
            frmDesktop.fdTab.ActiveFormIndex := i;
            LMT.Show();
            Exit;
         end;
      end;
   end;
   LMT := TfmWorkflowMatterTasks.Create(frmMatters);
   LMT.NMatter := LNMatter;
   frmDesktop.fdTab.AddForm(LMT, true);
//   LMT.Show;

{   LMT := TfmWorkflowMatterTasks.Create(Application);
   LMT.NMatter := LNMatter;
   LMT.ShowModal();  }
end;

procedure TfrmMatters.dxBarDBNavPrev1Click(Sender: TObject);
begin
   if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> qryMatter.FieldByName('FILEID').AsString then
   begin
      dmAxiom.qryMSearch.Close;
      dmAxiom.qryMSearch.Open;
      dmAxiom.qryMSearch.Locate('FILEID', qryMatter.FieldByName('FILEID').AsString, []);
   end;
   dmAxiom.qryMSearch.Prior;
   NavigateMatter;
   SetCaption;
end;

procedure TfrmMatters.dxBarEmailAsAttachClick(Sender: TObject);
var
   tmpFileName: string;
   Msg : IRwMAPIMailMessage;
   OldCursor: TCursor;
   i,
   x: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   sSubject,
   FileID,
   lSubject,
   slEmail: string;
   AAttachList,
   AAttachDocID,
   ARecipientsList: TStringList;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      ARecipientsList := TStringList.Create;
      GetEmailAddresses(ARecipientsList, qryMatter.FieldByName('nmatter').AsInteger, qryMatter.FieldByName('nclient').AsInteger);

      FAttachDoc := True;
      AAttachDocID := TStringList.Create;
      WriteLog('bbtnEmailBillClick: Error setting up message ');
      AAttachList := GetEmailAttachFile(AAttachDocID);;

      WriteLog('dxBarEmailAsAttachClick: Establishing MAPI Session ');

      if not dmAxiom.MapiSession.Active then
      begin
         OldCursor := Screen.Cursor;
         Screen.Cursor := crHourGlass;
         try
            try
                dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;
                dmAxiom.MapiSession.LogonInfo.Password           := '';
                dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                dmAxiom.MapiSession.LogonInfo.NewSession         := False;
                dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
                dmAxiom.MapiSession.Active                       := True;
            except on e:exception do
                WriteLog('dxBarEmailAsAttachClick: Error establishing MAPI Session ' + E.Message);
            end;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

      //dw 19 sep 2018 assigned in isolated method
      FAttachFileName.text := AAttachList.text;
      // dw 19 sep 18 assigning in an isolated method
      FRecipientsList.text := ARecipientsList.text;
      try
         MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
         Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
         Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;

         sSubject := Msg.Subject; //  Msg.PropByName(PR_SUBJECT).AsString;
         for i := 1 to length(sSubject) do
         begin
            if sSubject[i] = '#' then
            begin
               for x := i + 1 to length(sSubject) do
               begin
                  if (sSubject[x] <> ' ') and (sSubject[x] <> ']') then
                      FileID := FileID + sSubject[x];
               end;
            end;
         end;

         for i := 0 to AAttachList.Count - 1 do
         begin
            if tmpFileName <> '' then
               tmpFileName := tmpFileName + ',';
            tmpFileName := tmpFileName + ExtractFileName(AAttachList.Strings[i]);
         end;
         FileAttachList := tmpFileName;

         if (FileID = '') then
         begin
            if VarIsNull(Msg.Subject) then
               lSubject := tmpFileName +
                            ' [Matter#' + qryMatter.FieldByName('fileid').AsString+']'
            else
               lSubject := Msg.Subject +
                            tmpFileName +
                            ' [Matter#' + qryMatter.FieldByName('fileid').AsString+']';
            Msg.Subject := lSubject;
         end
         else
            Msg.Subject := Msg.Subject + tmpFileName;
         WriteLog('dxBarEmailAsAttachClick: message subject is: ' + Msg.Subject);
         if ARecipientsList.Count > 0 then
         begin
            try
               for I := 0 to ARecipientsList.Count - 1 do
               begin
                  Msg.AddRecipients(ARecipientsList.Strings[i], rtTo, True);
               end;
            except on e:exception do
               WriteLog('dxBarEmailAsAttachClick: Failed to add recipients to the message: ' + E.Message);
            end;
         end;
         try
              FormMgr.ShowMessage(Msg);
         except on e:exception do
              WriteLog('dxBarEmailAsAttachClick: Failed to Formmgr the message: ' + E.Message);
         end;
         WriteLog('dxBarEmailAsAttachClick: Message sent fileid ' + qryMatter.FieldByName('fileid').AsString);
      finally
         AAttachList.Free;
         AAttachDocID.Free;
         ARecipientsList.Free;
      end;
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;


procedure TfrmMatters.dxBarDBNavFirst1Click(Sender: TObject);
begin
   dmAxiom.qryMSearch.First;
   NavigateMatter;
   SetCaption;
end;

procedure TfrmMatters.dxBarDBNavLast1Click(Sender: TObject);
begin
   dmAxiom.qryMSearch.Last;
   NavigateMatter;
   SetCaption;
end;

procedure TfrmMatters.dxBarDBNavNext1Click(Sender: TObject);
begin
   if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> qryMatter.FieldByName('FILEID').AsString then
      dmAxiom.qryMSearch.Locate('FILEID', qryMatter.FieldByName('FILEID').AsString, []);
   dmAxiom.qryMSearch.Next;
   NavigateMatter;
   setCaption;
end;



procedure TfrmMatters.tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems8GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
//   if qryLedgerBalances.State <> dsInactive then
   try
      AText := 'Trust: ' + Format('%.2m', [qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency]);
   except
      //
   end;
end;

function TfrmMatters.MatterClosedNotArchived: boolean;
begin
   MatterClosedNotArchived := ((qryMatter.FieldByName('CLOSED').AsInteger = 1) AND
                              (qryMatter.FieldByName('ARCHIVENUM').IsNull) AND
                              (qryMatter.FieldByName('ARCHIVED').IsNull) OR
                              (qryMatter.FieldByName('ARCHIVENUM').IsNull));
end;

procedure TfrmMatters.barbtnAccountPayableClick(Sender: TObject);
var
   LfrmAccountNew: TfrmAccountNew;
begin
   LfrmAccountNew := TfrmAccountNew.Create(Self);
   LfrmAccountNew.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
   LfrmAccountNew.Show;
end;

procedure TfrmMatters.btnEditDebtorNotesClick(Sender: TObject);
var
   lsUserName : String;
   LDate : TDateTime;
begin
   if tvDebtorNotesTYPE.EditValue = 1 then
   begin
      frmDebtorNotes := TfrmDebtorNotes.Create(Self);

      lsUserName := dmAxiom.GetUserName;

      try

         LDate := Now();
         frmDebtorNotes.EntryDate := LDate;
         frmDebtorNotes.By        := lsUserName;
         frmDebtorNotes.Note      := '';
         frmDebtorNotes.Refno     := '';
         frmDebtorNotes.NMemo     := Self.qryDebtorNotes.FieldByName('NMEMO').AsInteger;
         frmDebtorNotes.NMatter   := qryMatter.FieldByName('NMATTER').AsInteger;
         frmDebtorNotes.Editing   := True;

         frmDebtorNotes.qryNMemo.Close;
         frmDebtorNotes.qryNMemo.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         frmDebtorNotes.qryNMemo.Open;

         frmDebtorNotes.qryDebtorNotes.Close;
         frmDebtorNotes.qryDebtorNotes.SQL.Clear;
         frmDebtorNotes.qryDebtorNotes.SQL.Text := 'SELECT Debtornotes.* '+
                                                   'FROM Debtornotes where nmatter = :nmatter '+
                                                   'and sequence = :seqno';
         frmDebtorNotes.qryDebtorNotes.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         frmDebtorNotes.qryDebtorNotes.ParamByName('seqno').AsInteger := Self.qryDebtorNotes.FieldByName('sequence').AsInteger;
         frmDebtorNotes.qryDebtorNotes.Open;

         frmDebtorNotes.EntryDate := frmDebtorNotes.qryDebtorNotes.FieldByName('created').AsDateTime;
         frmDebtorNotes.By        := frmDebtorNotes.qryDebtorNotes.FieldByName('createdby').AsString;
         frmDebtorNotes.Note      := frmDebtorNotes.qryDebtorNotes.FieldByName('note').AsString;
         frmDebtorNotes.Refno     := frmDebtorNotes.qryDebtorNotes.FieldByName('refno').AsString;
         frmDebtorNotes.NMemo     := frmDebtorNotes.qryDebtorNotes.FieldByName('NMEMO').AsInteger;
         frmDebtorNotes.NMatter   := frmDebtorNotes.qryDebtorNotes.FieldByName('NMATTER').AsInteger;
         frmDebtorNotes.Sequence  := frmDebtorNotes.qryDebtorNotes.FieldByName('sequence').AsInteger;

         if(frmDebtorNotes.ShowModal <> mrOk) then
            Exit;


         qryDebtorNotes.Refresh;
      finally
         FreeAndNil(frmDebtorNotes);
      end;
   end
   else if tvDebtorNotesTYPE.EditValue = 2 then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         Sql.Text := 'SELECT F.NFEE_DEBTORNOTES, F.NMATTER, F.CREATED, F.CREATEDBY, F.NOTE, F.REVIEW_DATE,'+
                     'F.SEQUENCE, F.REFNO, F.SYSTEM_DATE, F.SEARCH_DATE_FROM, F.SEARCH_DATE_TO, F.SEARCH_AUTHOR,'+
                     'F.BILL_DATE, F.BILL_AMOUNT, F.DEBTOR_TASK_CODE FROM AXIOM.FEE_DEBTORNOTES F WHERE F.NFEE_DEBTORNOTES = :NFEE_DEBTORNOTES '+
                     ' AND NMATTER = :NMATTER' ;
         ParamByName('NFEE_DEBTORNOTES').AsInteger := tvDebtorNotesSEQUENCE.EditValue;
         ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         Open;
      end;

      frmFeeNotes := TfrmFeeNotes.Create(Self);

      lsUserName := TableString('EMPLOYEE','CODE', dmAxiom.qryTmp.FieldByName('createdby').AsString, 'NAME');

      try
         LDate := dmAxiom.qryTmp.FieldByName('created').AsDateTime;
         frmFeeNotes.EntryDate := LDate;
         frmFeeNotes.By        := lsUserName;
         frmFeeNotes.Note      := dmAxiom.qryTmp.FieldByName('note').AsString;
         frmFeeNotes.Refno     := '';
         frmFeeNotes.NMemo     := 0;
         frmFeeNotes.NMatter   := qryMatter.FieldByName('NMATTER').AsInteger;
         frmFeeNotes.Editing   := True;
         frmFeeNotes.Sequence  := tvDebtorNotesSEQUENCE.EditValue;
         frmFeeNotes.EndDate   := dmAxiom.qryTmp.FieldByName('search_date_to').AsDateTime;
         frmFeeNotes.BillDate  := dmAxiom.qryTmp.FieldByName('bill_date').AsDateTime;
         frmFeeNotes.BillAmount:= dmAxiom.qryTmp.FieldByName('bill_amount').AsCurrency;
         frmFeeNotes.TaskCode  := dmAxiom.qryTmp.FieldByName('DEBTOR_TASK_CODE').AsString;

         if(frmFeeNotes.ShowModal <> mrOk) then
            Exit;

          qryDebtorNotes.Refresh;
      finally
          FreeAndNil(frmFeeNotes);
      end;
   end;
end;

procedure TfrmMatters.tvDebtorNotesCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnEditDebtorNotes.Enabled := True;
   btnDeleteDebtorNotes.Enabled := dmAxiom.Security.Matter.Debtors.CanDeleteDebtorNotes;
end;

procedure TfrmMatters.CRTemp_qryCriticalDatesCRITICAL_DATEValidate(
  Sender: TField);
var
   WFT : TWorkFlowTask;
   nWorkFlowTask: integer;
begin
  nWorkFlowTask := -1;
  qryMatterWorkflowTasks.Close;
  qryMatterWorkflowTasks.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
  qryMatterWorkflowTasks.ParamByName('TEMPLATELINEID').AsInteger := qryCriticalDates.FieldByName('templatelineid').AsInteger;
  qryMatterWorkflowTasks.Open;
  if qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger <> 0 then
    nWorkFlowTask := qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger;

  WFT := TWorkFlowTask.Create(nWorkFlowTask, qryMatter.FieldByName('NMATTER').AsInteger);
  try
    if not WFT.Started then
    begin
      WFT.StartTask(Sender.AsDateTime);
      WFT.updateStartedTree(now);
    end
    else
      WFT.CompleteByDate := Sender.AsDateTime;
  finally
    WFT.Free;
  end;
end;


procedure TfrmMatters.NoLongerRequired1Click(Sender: TObject);
var
   WFT : TWorkFlowTask;
begin
   WFT := TWorkFlowTask.Create(qryCriticalDates.FieldByName('workflowtask').AsInteger,
   qryMatter.FieldByName('NMATTER').AsInteger);
   if WFT.Started then
     WFT.CompleteTask(now);
   WFT.Free;

   qryCriticalDates.Edit;
   qryCriticalDates.FieldByName('finished').AsString := 'Y';
   qryCriticalDates.post;
   showCriticalDateTab;
end;

procedure TfrmMatters.showCriticalDateTab;
begin
   qryCriticalDates.Close;
   qryCriticalDates.ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryCriticalDates.Open;
   qryCriticalDates.First;
   tabCriticalDates.TabVisible := (not qryCriticalDates.Eof);
   if pageMatter.ActivePage <> tabCriticalDates then
      qryCriticalDates.Close;
end;

procedure TfrmMatters.btnDeleteClick(Sender: TObject);
var
   sMessage: string;
begin
   if MsgAsk('Delete this matter?') = IDYES then
   begin
      with dmAxiom.qryTmp do
      begin
         if(not checkChildRecords('MATTER',  sMessage, qryMatter.FieldByName('NMATTER').AsInteger)) then
            MessageDlg('This matter can not be deleted.'#13#10'''' + sMessage, mtWarning, [mbOK], 0)
         else
         begin
            if MessageDlg('Are you sure you want to delete the matter entry:'#13#10'''' + qryMatter.FieldByName('FILEID').AsString +'''?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
            begin
               pageMatter.OnChange := nil;
               with dmAxiom.qryTmp do
               begin
                  Close;
                  SQL.Text := 'delete from matter where nmatter = '+ quotedstr(qryMatter.FieldByName('NMATTER').AsString);
                  Execute;
               end;
               pageMatter.OnChange := pageMatterChange;
               Self.Close;
            end;
         end;
      end;
   end;
end;

procedure TfrmMatters.btnDeleteDebtorNotesClick(Sender: TObject);
begin
   if MsgAsk('Delete selected Note?') = IDYES then
   begin
      if tvDebtorNotesTYPE.EditValue = 1 then
      begin
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Clear;
            SQL.Add('delete FROM Debtornotes where nmatter = :nmatter and sequence = :seqno');
            ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
            ParamByName('seqno').AsInteger := Self.qryDebtorNotes.FieldByName('sequence').AsInteger;
            try
               ExecSQL;
            finally
               UpdateDebtorNotes;
               btnEditDebtorNotes.Enabled := False;
               btnDeleteDebtorNotes.Enabled := False;
            end;
         end;
      end
      else if tvDebtorNotesTYPE.EditValue = 2 then
      begin
         MsgInfo('This functionality not enabled currently');
      end;
   end;
end;

procedure TfrmMatters.CRTemp_qryCriticalDatesFINISHEDChange(Sender: TField);
var
   WFT : TWorkFlowTask;
begin
   WFT := TWorkFlowTask.Create(qryCriticalDates.FieldByName('workflowtask').AsInteger,
   qryMatter.FieldByName('NMATTER').AsInteger);

   if qryCriticalDates.FieldByName('finished').AsString = 'Y' then
   begin
      if WFT.Started then
         WFT.CompleteTask(now);
      WFT.Free;
   end
   else
   begin
      if WFT.Started then
      begin
         WFT.uncomplete;
         WFT.CompleteByDate := qryCriticalDates.FieldByName('CRITICAL_DATE').AsDateTime;
      end;
      WFT.Free;
   end;
      //qryCriticalDates.Edit;
      //qryCriticalDates.FieldByName('finished').AsString := 'Y';
      //qryCriticalDates.post;
      //showCriticalDateTab;       }
end;

procedure TfrmMatters.bbtnMatterNotesClick(Sender: TObject);
begin
   try
      with qryMatterNotes do
      begin
         close;
         ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         Open;
      end;
      rptMatterNotes.Print;
   except
         // error
   end;
end;

procedure TfrmMatters.ppLabel40GetText(Sender: TObject; var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmMatters.dxBarDBNavPost1Click(Sender: TObject);
begin
//   qryMatter.Post;
   qryMatter.ApplyUpdates;

   try
      if qryArchiveLocation.State in [dsEdit,dsInsert] then
      begin
//         qryArchiveLocation.Post;
         qryArchiveLocation.ApplyUpdates();
      end;
   except
   //
   end;

//   dmAxiom.uniInsight.Commit;

   FDebtorNotesModified := False;
   qryMatter.Refresh;
end;

procedure TfrmMatters.dxNavBar1ActiveGroupChanged(Sender: TObject);
begin
//   pagPrecedents.ActivePageIndex := dxNavBar1.ActiveGroupIndex;
end;

procedure TfrmMatters.tvTasksCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnDeleteTask.Enabled := True;
   btnTaskEdit.Enabled := True;
end;

procedure TfrmMatters.tvTasksDblClick(Sender: TObject);
begin
   btnTaskEdit.Click;
end;

procedure TfrmMatters.tvTemplatesDblClick(Sender: TObject);
begin
//   btnModifyCreateNew.Click;
end;

procedure TfrmMatters.tvDocsDblClick(Sender: TObject);
var
   bStream: TStream;
   tmpFileName: string;
   Msg : IRwMapiMessage;
   OldCursor: TCursor;
   SelRec, SelRec1: integer;
   MsgStore: IRwMapiMsgStore;
   Folder  : IRwMapiFolder;
   RandFile,
   DocErrMsg, AExt: string;
   AHandle: THandle;
begin
//   PostMessage(Handle, UM_OPENDOCUMENT, 0, 0);

//   if (chkPreviewPane.Checked = False) then
//   begin
      SaveSelectedItems;

      with qryDocs do
      begin
         if (not IsEmpty) then
         begin
            if (not FieldByName('URL').IsNull) then
            begin
               AHandle := ExecuteFile(FieldByName('URL').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
               if AHandle <= 32 then
                  MsgInfo('Unable to open Link. The Link may no longer exist.');
               UpdateModBy(InttoStr(SelRec));
            end
            else
            if FieldByName('PATH').IsNull then
            begin
               SelRec := FieldByName('DOCID').AsInteger;
               qrySingleDoc.Close;
               qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
               qrySingleDoc.Open;
               Randomize;
               RandFile := IntToStr(RandomRange(100, 100000));
               bStream := qrySingleDoc.CreateBlobStream(qrySingleDoc.FieldByName('DOCUMENT'),bmRead);
               try
                  if ExtractFileExt(qrySingleDoc.FieldByName('DOC_NAME').AsString) = '' then
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + qrySingleDoc.FieldByName('DOC_NAME').AsString + '.'+ qrySingleDoc.FieldByName('file_extension').AsString
                  else
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + qrySingleDoc.FieldByName('DOC_NAME').AsString;

                  if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ 'axeml' + RandFile + '.msg';
                  // in case file still sitting in tmp directory
                  DeleteFile(tmpFileName);

                  bStream.Seek(0, soFromBeginning);

                  with TFileStream.Create(tmpFileName, fmCreate) do
                  try
                     CopyFrom(bStream, bStream.Size)
                  finally
                     Free
                  end;
               finally
                  bStream.Free
               end;
               if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
               begin
                  if not dmAxiom.MapiSession.Active then
                  begin
                     OldCursor := Screen.Cursor;
                     Screen.Cursor := crHourGlass;
                     try
                        dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                        dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;  //'Outlook';
                        dmAxiom.MapiSession.LogonInfo.Password           := '';
                        dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                        dmAxiom.MapiSession.LogonInfo.NewSession         := True;
                        dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                        dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
                        dmAxiom.MapiSession.Active                       := True;
                     finally
                        Screen.Cursor := OldCursor;
                     end;
                  end;
                  try
                     Msg := dmAxiom.MapiSession.OpenDefaultMsgStore.OpenSavedMessage(tmpFileName);
//                     Msg.DisplayProperties;
                     begin
                        MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
                        Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
                        // Display the message in a Form Manager form.
                        // A Form Manager Form is more flexible than the default mapi form

                        // get a form manager
//                        FormMgr := dmAxiom.MapiSession.GetFormMgr;
//                        FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);

                  //      FormMgr.ShowMessage(Msg, FormRect, SiteStatus);
                        FormMgr.ShowMessage(Msg);
                     end;
                     DeleteFile(tmpFileName);
                  except
                     // error
                  end;
              end
              else
              begin
                 ExecuteFile(tmpFileName, '', '.', SW_SHOWNORMAL, DocErrMsg);
                 UpdateModBy(InttoStr(SelRec));
              end;
            end
            else
            begin
                AExt := UPPERCASE(qryDocs.FieldByName('FILE_EXTENSION').AsString);
                if ((IsNotMatterTeam(qryMatter.FieldByName('NMATTER').AsInteger) = True) AND (SystemString('RESTRICT_DOC_ALTER_TO_TEAM') = 'Y')
                    AND (MatchStr(AExt, Extensions))) then
                begin
                     ReadDocument(qryDocs.FieldByName('PATH').AsString);
                end
                else
                begin
                   AHandle := ExecuteFile(qryDocs.FieldByName('PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
                   if AHandle < 33 then
                      AHandle := ExecuteFile(qryDocs.FieldByName('Display_PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
                      if (AHandle < 33) and (DocErrMsg <> '') then
                         MsgInfo('Unable to open Document. - '+DocErrMsg);
                   UpdateModBy(InttoStr(SelRec));
                end;
                ReopenListUpdate('DOCUMENT', qryDocs.FieldByName('DOCID').AsString);
            end;
         end;
         Refresh; // Close;
         if cbGroupExpanded.Checked then
            dbgrDocs.FocusedView.DataController.Groups.FullExpand;
         RestoreSelectedItems;
      end;
//   end;
end;

procedure TfrmMatters.Label33Click(Sender: TObject);
var
   LfrmNotesMatter: TfrmNotesMatter;
begin
   LfrmNotesMatter := TfrmNotesMatter.Create(Self);
   // AES 16/09/2009  changed to use nmatter
   LfrmNotesMatter.DisplayMatterNotes(qryMatter.FieldByName('NMATTER').AsInteger);
   if LfrmNotesMatter.ShowModal = mrOK then
      dxbtnRefresh.Click;
   LfrmNotesMatter.Free;
end;

procedure TfrmMatters.bbtnEMailClick(Sender: TObject);
var
   Msg: IRwMAPIMailMessage;
   OldCursor: TCursor;
   FormRect: TRect;
   SiteStatus, ViewStatus: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   x,
   i,
   RecIdx,
   nEmailSel,
   lnEmailTempID: integer;
   ARecipientsList: TStringList;
   //AMailTemplate: TStringList;
   ARowInfo: TcxRowInfo;
   bStream: TStream;
   tmpFileName,
   RandFile: string;
   frmGenericSearch : TfrmGenericSearch;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      try
      // list of emails addresses
      ARecipientsList := TStringList.Create;
      GetEmailAddresses(ARecipientsList, qryMatter.FieldByName('nmatter').AsInteger, qryMatter.FieldByName('nclient').AsInteger);

      FAttachDoc := True;
      WriteLog('EmailClick: establish MAPI Session');
      if not dmAxiom.MapiSession.Active then
      begin
         OldCursor := Screen.Cursor;
         Screen.Cursor := crHourGlass;
         try
            try
              dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
              dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault; // 'Outlook';
              dmAxiom.MapiSession.LogonInfo.Password           := '';
              dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
              dmAxiom.MapiSession.LogonInfo.NewSession         := False;
              dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
              dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
              dmAxiom.MapiSession.Active                       := True;
            except on e:exception do
 	            WriteLog('EmailClick: Failed to establish MAPI Session: ' + E.Message);
            end;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

      try
         begin
            {dmAxiom.qryTmp.Close;
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
//                        DeleteFile(tmpFileName);
                     end;

                     AEmailTemplate := tmpFileName;
                  end;
               finally
                  qryEmailTemplate.Close;
               end;
            end;  }

            // dw changed 19 sep 18 to isolate list from list
            FRecipientsList.text := ARecipientsList.text;

            //MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
            //Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
            try
                MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
            except on e:exception do
 	              WriteLog('EmailClick: Failed to connect to msgstore: ' + E.Message);
            end;
            try
                // 07 Mar 2019 DW open folder offline for O365 issue
                Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite, False);
            except on e:exception do
 	              WriteLog('EmailClick: Failed to connect to open folder: ' + E.Message);
            end;
            // 07 Mar 2019 to use old method
            Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;

            if SystemString('matter_email_subject') <> '' then
            begin
               Msg.Subject := ParseMacros(SystemString('matter_email_subject'),qryMatter.FieldByName('nmatter').AsInteger)
            end
            else
               Msg.Subject := 'Our Ref #' + trim(qryMatter.FieldByName('fileid').AsString);

            try
                //FormMgr.NewMessage(Folder);
                FormMgr.ShowMessage(Msg);
            except on e:exception do
 	              WriteLog('EmailClick: Failed to Formmgr the message: ' + E.Message);
            end;
            WriteLog('EmailClick: message sent' + qryMatter.FieldByName('nmatter').AsString);

           { // create a new message in the drafts folder
            Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;

            if (AEmailTemplate <> '') then
            begin
               AMailTemplate := TStringList.Create;
               AMailTemplate.LoadFromFile(tmpFileName);
               Msg.HTMLBody := AMailTemplate.Text;
               AMailTemplate.Free;
            end;
            if SystemString('matter_email_subject') <> '' then
            begin
               Msg.Subject := ParseMacros(SystemString('matter_email_subject'),qryMatter.FieldByName('nmatter').AsInteger)
            end
            else
               Msg.Subject := 'Our Ref #' + trim(qryMatter.FieldByName('fileid').AsString);

            if ARecipientsList.Count > 0 then
            begin
               try
                  for I := 0 to ARecipientsList.Count - 1 do
                  begin
                    Msg.AddRecipients(ARecipientsList.Strings[i], rtTo, True);
                  end;
                finally
                  //
                end;
            end;
            FormMgr.ShowMessage(Msg);
//            FormMgr.NewMessage(Folder, GetSiteStatus, GetViewStatus);  }
         end;
       except on e:exception do
        	 WriteLog('bbtnEmailClick: Error setting up message ' + E.Message);
       end;

      finally
          ARecipientsList.Free;
      end
   end  // password
   else
      MsgInfo(dmAxiom.Registered_Message);
end;

procedure TfrmMatters.dxNavBar1LinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
//   tpPrecedents.Caption := ALink.Item.Caption;
   lblCategory.Caption := ALink.Item.Caption;
//   tpGenerated.Caption := ALink.Item.Caption;
   case Alink.Group.Tag of
    OBPRECEDENTS:
    begin
      if (ALink.Item.Index = 0) then
      begin
        qryPrecedents.Close;
        qryPrecedents.SQL.Clear;
   {     qryPrecedents.SQL.Add('SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFORM AS GENERICDATAFORM, M.WORKFLOWTYPE');
        qryPrecedents.SQL.Add('FROM PREC P, MATTERTYPE M');
        qryPrecedents.SQL.Add('WHERE M.CODE = :TYPE');
        qryPrecedents.SQL.Add('  AND P.NPREC IN (SELECT NPREC FROM WORKFLOWTYPELINK WHERE WORKFLOWTYPE = M.WORKFLOWTYPE)');
        qryPrecedents.SQL.Add('ORDER BY UPPER(P.PATH)'); }

        qryPrecedents.SQL.Add('SELECT DISTINCT p.nprec, p.descr AS filename, p.PATH, 1 AS prec, ');
        qryPrecedents.SQL.Add('        p.nprec AS docid, ''Precedents'' AS NAME, NULL AS descr,');
        qryPrecedents.SQL.Add('        NULL AS code, NULL AS doctype, NULL AS npreccategory,');
        qryPrecedents.SQL.Add('        NULL AS nprecclassification ');
        qryPrecedents.SQL.Add('   FROM prec p CROSS JOIN mattertype m ');
        qryPrecedents.SQL.Add('  WHERE (p.nprec IN (SELECT workflowtypelink.nprec ');
        qryPrecedents.SQL.Add('                       FROM workflowtypelink ');
        qryPrecedents.SQL.Add('                      WHERE workflowtype = m.workflowtype)) ');
        qryPrecedents.SQL.Add(' union ');
        qryPrecedents.SQL.Add(' SELECT   wdt.docid, wdt.documentname AS filename, ');
        qryPrecedents.SQL.Add(' workflowdocparties (wdt.docid), 2 AS prec, wdt.docid AS docid, nvl(NAME, ''None'') as name,');
        qryPrecedents.SQL.Add(' wdt.description, wt.code, wdt.doctype, wdt.npreccategory,');
        qryPrecedents.SQL.Add(' wdt.nprecclassification ');
        qryPrecedents.SQL.Add('FROM workflowdocgroups wdg RIGHT OUTER JOIN workflowdoctemplates wdt ');
        qryPrecedents.SQL.Add(' ON (wdg.groupid = wdt.groupid) ');
        qryPrecedents.SQL.Add(' JOIN workflowtype wt ON (wdt.workflowtypecode = wt.code) ');
        qryPrecedents.SQL.Add(' WHERE (    wdt.workflow_only = ''N'' and wdt.active = ''Y'' ');
        qryPrecedents.SQL.Add('  AND wdt.workflowtypecode = NVL (:workflowtypecode, workflowtypecode)) ');

{
        qryPrecedents.SQL.Add('SELECT DISTINCT p.nprec,P.descr AS FILENAME,p.path,1 as prec, P.NPREC AS DOCID, ');
        qryPrecedents.SQL.Add(' ''NAME'' AS NAME, null as descr, -1 as groupid, ''No Party'' as PARTYTYPE ');
        qryPrecedents.SQL.Add('FROM PREC P, MATTERTYPE M ');
        qryPrecedents.SQL.Add('WHERE ');
//        qryPrecedents.SQL.Add('M.CODE = :TYPE AND ');
        qryPrecedents.SQL.Add('P.NPREC IN (SELECT NPREC FROM WORKFLOWTYPELINK WHERE WORKFLOWTYPE = M.WORKFLOWTYPE)');
        qryPrecedents.SQL.Add('union ');
        qryPrecedents.SQL.Add('select  wdt.docid, wdt.documentname AS FILENAME, WorkflowDocParties(wdt.docid) , 2 as Prec, WDT.DOCID AS DOCID, NAME, WT.DESCR, ');

        qryPrecedents.SQL.Add('from WORKFLOWTYPE WT, WORKFLOWDOCTEMPLATES WDT, WORKFLOWDOCGROUPS WDG ');
        qryPrecedents.SQL.Add('where  WDG.groupid = WDT.groupid ');
        qryPrecedents.SQL.Add('and workflowtypecode = nvl(:workflowtypecode, workflowtypecode) ');
        qryPrecedents.SQL.Add('and workflowtypecode = WT.CODE ');
        }
        if cmbWorkFlowType.Text <> '- All -' then
        begin
           qryPrecedents.ParamByName('workflowtypecode').AsString := cmbWorkFlowType.EditValue;
           qryPrecedents.SQL.Add('ORDER BY 2');
//           tvTemplatesDESCR.GroupIndex := -1;
//           tvTemplatesNAME.GroupIndex := 0;
        end
        else
        begin
           qryPrecedents.SQL.Add('ORDER BY 7, 2');
//           tvTemplatesDESCR.GroupIndex := 0;
//           tvTemplatesNAME.GroupIndex := 1;
        end;

(*          SQL.Add('SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFORM AS GENERICDATAFORM');
        SQL.Add('FROM PREC P, MATTERTYPE M');
        SQL.Add('WHERE M.CODE = :TYPE');
        SQL.Add('ORDER BY P.PATH');*)
        qryPrecedents.Open;
      end else
      begin
        qryPrecedents.Close;
        qryPrecedents.SQL.Clear;
 {       qryPrecedents.SQL.Add('SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFORM AS GENERICDATAFORM, M.WORKFLOWTYPE');
        qryPrecedents.SQL.Add('FROM PREC P, MATTERTYPE M');
        qryPrecedents.SQL.Add('WHERE M.CODE = :TYPE');
        qryPrecedents.SQL.Add('  AND P.NPREC IN (SELECT NPREC FROM WORKFLOWTYPELINK WHERE WORKFLOWTYPE = M.WORKFLOWTYPE)');
        qryPrecedents.SQL.Add('  AND P.NPRECCATEGORY = '+
                IntToStr(ALink.Item.Tag));
        qryPrecedents.SQL.Add('ORDER BY UPPER(P.PATH)');  }

        qryPrecedents.SQL.Add('SELECT DISTINCT p.nprec,P.descr AS FILENAME,p.path,1 as prec, P.NPREC AS DOCID, ''NAME'' AS NAME, null as descr ');
        qryPrecedents.SQL.Add('FROM PREC P, MATTERTYPE M ');
        qryPrecedents.SQL.Add('WHERE ');
//        qryPrecedents.SQL.Add('M.CODE = :TYPE AND ');
        qryPrecedents.SQL.Add('P.NPREC IN (SELECT NPREC FROM WORKFLOWTYPELINK WHERE WORKFLOWTYPE = M.WORKFLOWTYPE)');
        qryPrecedents.SQL.Add('AND P.NPRECCATEGORY = '+
                        IntToStr(ALink.Item.Tag));
        qryPrecedents.SQL.Add('union ');
        qryPrecedents.SQL.Add('select  wdt.docid, wdt.documentname AS FILENAME, WorkflowDocParties(wdt.docid) , 2 as Prec, WDT.DOCID AS DOCID, NAME, WDT.DESCRiption ');
        qryPrecedents.SQL.Add('from WORKFLOWTYPE WT, WORKFLOWDOCTEMPLATES WDT, WORKFLOWDOCGROUPS WDG ');
        qryPrecedents.SQL.Add('where  WDG.groupid = WDT.groupid ');
        qryPrecedents.SQL.Add('and workflowtypecode = nvl(:workflowtypecode, workflowtypecode) ');
        qryPrecedents.SQL.Add('and workflowtypecode = WT.CODE and wdt.active = ''Y'' ');
        qryPrecedents.SQL.Add('AND WDT.GROUPID = '+
                        IntToStr(ALink.Item.Tag));
        if cmbWorkFlowType.Text <> '- All -' then
        begin
          qryPrecedents.ParamByName('workflowtypecode').AsString := cmbWorkFlowType.EditValue;
          qryPrecedents.SQL.Add('ORDER BY 2');
//          tvTemplatesDESCR.GroupIndex := -1;
//          tvTemplatesNAME.GroupIndex := 0;
        end
        else
        begin
           qryPrecedents.SQL.Add('ORDER BY 7, 2');
//           tvTemplatesDESCR.GroupIndex := 0;
//           tvTemplatesNAME.GroupIndex := 1;
        end;

(*          SQL.Add('SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFORM AS GENERICDATAFORM');
        SQL.Add('FROM PREC P, MATTERTYPE M');
        SQL.Add('WHERE P.NPRECCATEGORY = '+IntToStr(obarDocuments.SelectedItem));
        SQL.Add('  AND M.CODE = :TYPE');
        SQL.Add('ORDER BY P.PATH');*)
        qryPrecedents.Open;
      end;
    end;
    OBDOCUMENTS:
    begin
      if (ALink.Item.Index = 0) then
      begin
        qryDocs.Close;
        qryDocs.SQL.Clear;
//        qryDocs.SQL.Add('SELECT D.*, D.ROWID');
//        qryDocs.SQL.Add('FROM DOC D');
//        qryDocs.SQL.Add('WHERE D.FILEID = :P_FileID');
//        qryDocs.SQL.Add('ORDER BY D.D_MODIF DESC');


        qryDocs.SQL.Add('SELECT  DOCid, NMATTER,DOC_NAME as documentname,');
        qryDocs.SQL.Add('D_CREATE, AUTH1, D_MODIF,');
        qryDocs.SQL.Add('PATH,DESCR, FILEID, DOC_CODE,');
        qryDocs.SQL.Add('NPRECCATEGORY,');
        qryDocs.SQL.Add('IMAGEINDEX, FILE_EXTENSION, EMAIL_SENT_TO,''DATAFILEPATH'',null as DATAFORM, null as TEMPLATELINEID, AUTH2, URL, ');
        qryDocs.SQL.Add('tablevalue(''preccategory'',''npreccategory'', nvl(npreccategory,0),''descr'') as preccategory ,');
        qryDocs.SQL.Add('tablevalue(''precclassification'',''nprecclassification'',nvl(nprecclassification,0),''descr'') as precclassification ');
        qryDocs.SQL.Add('FROM DOC ');
        qryDocs.SQL.Add('where nmatter = :nmatter ');
        qryDocs.SQL.Add('and nvl(folder_id,0) = nvl(:folder_id, 0) ');
        qryDocs.SQL.Add('and nvl(parentdocid,0) = docid');

{        if SystemString('hide_matter_workflow') = 'Y' then
        begin
           qryDocs.SQL.Add(' union  ');
           qryDocs.SQL.Add('SELECT  ');
           qryDocs.SQL.Add('WORKFLOWGENDOCUMENT AS DOCID, NMATTER, get_filename(FILEPATH) as filepath,');
           qryDocs.SQL.Add('WHENGENERATED, WHO,sysdate, ');
           qryDocs.SQL.Add('get_filename(FILEPATH) as filepath,wdt.DOCUMENTNAME ,to_char(nmatter),to_char(wgt.DOCID), ');
           qryDocs.SQL.Add('1,1,''doc'',null,  wgt.DATAFILEPATH, ');
           qryDocs.SQL.Add('wgt.DATAFORM, TEMPLATELINEID, WHO ');
           qryDocs.SQL.Add('FROM WORKFLOWDOCTEMPLATES wdt, WORKFLOWGENDOCUMENTS wgt ');
           qryDocs.SQL.Add('where nmatter = :nmater  ');
           qryDocs.SQL.Add('and wdt.docid = wgt.docid  ');
        end;      }
        qryDocs.SQL.Add('order by 4 desc ');
        qryDocs.ParamByName('nmatter').AsString := qryMatter.FieldByName('NMATTER').AsString;
        qryDocs.Open;
      end else
      begin
        qryDocs.Close;
        qryDocs.SQL.Clear;
{        qryDocs.SQL.Add('SELECT D.*, D.ROWID');
        qryDocs.SQL.Add('FROM DOC D');
        qryDocs.SQL.Add('WHERE D.FILEID = :P_FileID');
        qryDocs.SQL.Add('  AND D.NPRECCATEGORY = '+
                IntToStr(ALink.Item.Tag));   }

        qryDocs.SQL.Add('SELECT  DOCid, NMATTER,DOC_NAME,');
        qryDocs.SQL.Add('D_CREATE, AUTH1, D_MODIF,');
        qryDocs.SQL.Add('PATH,DESCR, FILEID, DOC_CODE,');
        qryDocs.SQL.Add('NPRECCATEGORY,');
        qryDocs.SQL.Add('IMAGEINDEX, FILE_EXTENSION, EMAIL_SENT_TO,''DATAFILEPATH'',null as DATAFORM, null as TEMPLATELINEID, AUTH2, URL, ');
        qryDocs.SQL.Add('tablevalue(''preccategory'',''npreccategory'',nvl(npreccategory,0),''descr'') as preccategory ,');
        qryDocs.SQL.Add('tablevalue(''precclassification'',''nprecclassification'',nvl(nprecclassification,0),''descr'') as precclassification ');
        qryDocs.SQL.Add('FROM DOC ');
        qryDocs.SQL.Add('where nmatter = :nmatter ');
        qryDocs.SQL.Add('and nvl(folder_id,0) = nvl(:folder_id, 0) ');
        qryDocs.SQL.Add('and nvl(parentdocid,0) = docid ');
        qryDocs.SQL.Add('  AND D.NPRECCATEGORY = '+ IntToStr(ALink.Item.Tag));
{        if SystemString('hide_matter_workflow') = 'Y' then
        begin
           qryDocs.SQL.Add(' union  ');
           qryDocs.SQL.Add('SELECT  ');
           qryDocs.SQL.Add('WORKFLOWGENDOCUMENT as DOCID, NMATTER, get_filename(FILEPATH) as filepath,');
           qryDocs.SQL.Add('WHENGENERATED, WHO,sysdate, ');
           qryDocs.SQL.Add('get_filename(FILEPATH) as filepath,wdt.DOCUMENTNAME ,to_char(nmatter),to_char(wgt.DOCID), ');
           qryDocs.SQL.Add('1,1,''doc'',null,  wgt.DATAFILEPATH, ');
           qryDocs.SQL.Add('wgt.DATAFORM, TEMPLATELINEID, WHO ');
           qryDocs.SQL.Add('FROM WORKFLOWDOCTEMPLATES wdt, WORKFLOWGENDOCUMENTS wgt ');
           qryDocs.SQL.Add('where nmatter = :nmatter  ');
           qryDocs.SQL.Add('and wdt.docid = wgt.docid  ');
        end;   }
        qryDocs.SQL.Add('order by 4 desc ');
        qryDocs.ParamByName('nmatter').AsString := qryMatter.FieldByName('NMATTER').AsString;
//        qryDocs.SQL.Add('ORDER BY D.D_MODIF DESC');
        qryDocs.Open;

      end;
    end;
  end;
end;

procedure TfrmMatters.AddConflictToMatter(ADocID, ANMatter: Integer; AFileID: String);
begin
  try
    dmAxiom.qryTmp.SQL.Text :=
      'update doc set fileid = :fileid, nmatter = :nmatter ' +
      'where docid = :docid';
    dmAxiom.qryTmp.Prepare;
    dmAxiom.qryTmp.ParamByName('docID').AsInteger :=  ADocID;
    dmAxiom.qryTmp.ParamByName('fileID').AsString := AFileID;
    dmAxiom.qryTmp.ParamByName('nmatter').AsInteger := ANMatter;
    dmAxiom.qryTmp.ExecSQL;
    lblConflictCheckCompleted.Visible := true;
  except
    lblConflictCheckCompleted.Visible := false;
  end;
end;

procedure TfrmMatters.dxSelectConflictClick(Sender: TObject);
var
  frmConflictSelect: TFrmConflictSelect;
begin
  frmConflictSelect := TFrmConflictSelect.Create(nil);
  try
    if frmConflictSelect.ShowModal = mrOk then
    begin
    // Add the conflict document to the matter.
      AddConflictToMatter(frmConflictSelect.ConflictDocID,
        qryMatter.FieldByName('NMATTER').AsInteger,
        qryMatter.FieldByName('FileID').AsString);
    end;
  finally
    frmConflictSelect.release;
  end;
end;

procedure TfrmMatters.btnDocEditClick(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
begin
   if tvDocs.Controller.SelectedRowCount = 1 then
   begin
      try
         LfrmDocNew := TfrmDocNew.Create(Self);
         LfrmDocNew.Editing := True;
         LfrmDocNew.ADocId := tvDocsDOCID.EditValue; // qryDocs.FieldByName('docid').AsInteger;
         LfrmDocNew.FileID :=  qryMatter.FieldByName('FILEID').AsString; //tvDocsFILEID.EditValue;
         LfrmDocNew.ShowModal;
      finally
         tvDocs.BeginUpdate();
         qryDocs.Close;
         qryDocs.Open;
         tvDocs.EndUpdate;
         if cbGroupExpanded.Checked then
            dbgrDocs.FocusedView.DataController.Groups.FullExpand;
      end;
   end;

{var
   LfrmNotesMatter: TfrmNotesMatter;
begin
   LfrmNotesMatter := TfrmNotesMatter.Create(frmMatters);
   LfrmNotesMatter.DisplayDocDescription(qryDocs.FieldByName('DOCID').AsInteger);
   if LfrmNotesMatter.ShowModal = mrOK then
   begin
      qryDocs.Refresh;
//      qryDocs.Open;
   end;
   LfrmNotesMatter.Free;   }

end;

procedure TfrmMatters.bbtnMSWordClick(Sender: TObject);
var
  varWord, varDoc : OleVariant;
  DocName,
  FileID,
  DocErrMsg: string;
begin

   try
       varWord := GetActiveOleObject('Word.Application');
   except
      on EOleSysError do
      begin
         try
            varWord := CreateOleObject('Word.Application');
            varWord := GetActiveOleObject('Word.Application');
         except
            on e: Exception do
            begin
               MessageDlg('Error Starting MS Word: ' + E.Message, mtError, [mbOK], 0);
               varWord := null;
            end;
         end;
      end;
   end;

   if(not VarIsNull(varWord)) then
   begin
//      opWord1.NewDocument;
      varWord.Visible := True;
      varDoc := varWord.Documents.Add;

//      DocName := opWord1.ActiveDocument.Name;
      DocName := varWord.ActiveDocument.Name;
      varDoc := varWord.ActiveDocument;

//      opWord1.WindowState := wdWindowStateMaximize;
      varDoc.Application.Activate;
      varDoc.Activewindow.WindowState := wdWindowStateMaximize;

      FileID := qryMatter.FieldByName('fileid').AsString;
      try
         varDoc.CustomDocumentProperties.Add('MatterNo', False, msoPropertyTypeString, FileID,'');
      except
        // silent means property already there
      end;

      try
//         varDoc.BuiltInDocumentProperties('Category').Value := FileID;
         varDoc.BuiltIndocumentProperties(wdPropertyCategory) := FileID;
      except
          //
      end;
      if SystemString('doc_prompt_descr') = 'Y' then
         ExecuteFile('DocToDBSave.exe', dmAxiom.UserID, '', SW_SHOW, DocErrMsg)
   end;
end;

procedure TfrmMatters.bbtnReceiptRequestClick(Sender: TObject);
var
  LfrmReceiptReqNew: TfrmReceiptReqNew;
begin
  LfrmReceiptReqNew := TfrmReceiptReqNew.Create(Self);
  LfrmReceiptReqNew.FromMatter := True;
  LfrmReceiptReqNew.DisplayFile(qryMatter.FieldByName('FILEID').AsString);
  LfrmReceiptReqNew.Show;
end;

procedure TfrmMatters.tabDocsShow(Sender: TObject);
begin
   MakeDocSearch;
   if cbGroupExpanded.Checked then
      dbgrDocs.FocusedView.DataController.Groups.FullExpand;
end;

function TfrmMatters.AddNodeData(AVST: TCustomVirtualStringTree; ANode: PVirtualNode;
                                    ARecord: TFolderData): PVirtualNode;
var
   Data: PFolderData;
begin
   Result := AVST.AddChild(ANode);
   Data := AVST.GetNodeData(Result);
   AVST.ValidateNode(Result, False);
   Data^.Text := ARecord.Text;
   Data^.ImageIndex := Arecord.ImageIndex;
   Data^.FolderID := ARecord.FolderID;
   Data^.FolderLvl := ARecord.FolderLvl;
end;

procedure TfrmMatters.tabGraphResize(Sender: TObject);
begin
   ResizeTabGraph;
end;

procedure TfrmMatters.ResizeTabGraph;
begin
   cxGrid2.Width := round(tabBenchmark.Width/2);
   cxGrid3.Left := cxGrid2.Width + 1;
   cxGrid3.Width := round(tabBenchmark.Width/2);
   cxGrid2.Height := tabBenchmark.Height;
   cxGrid3.Height := tabBenchmark.Height;

   cxGrid5.Width := round(tabBenchmark.Width/2);
   cxGrid4.Left := cxGrid5.Width + 1;
   cxGrid4.Width := round(tabBenchmark.Width/2);
   cxGrid5.Height := tabBenchmark.Height;
   cxGrid4.Height := tabBenchmark.Height;
end;

procedure TfrmMatters.tabGraphShow(Sender: TObject);
begin
   ResizeTabGraph;
end;

procedure TfrmMatters.btnForwardClick(Sender: TObject);
var
   OldCursor: TCursor;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   sSubject, zipFileName, FILEID, aFILEID, FileName, tmpFileName, ContentID, lSubject: string;
   AAttachList,
   AAttachDocID,
   ARecipientsList: TStringList;
   wCompress: word;
   i,x : integer;
   Msg : IRwMAPIMailMessage;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      ARecipientsList := TStringList.Create;
      GetEmailAddresses(ARecipientsList, qryMatter.FieldByName('nmatter').AsInteger, qryMatter.FieldByName('nclient').AsInteger);

      FAttachDoc := True;
      AAttachDocID := TStringList.Create;

      AAttachList := GetAttachFile(AAttachDocID);

      // if outlook not running, start it
      if IsObjectActive('Outlook.Application') = False then
         CreateOleObject('Outlook.Application');

      if dmAxiom.MapiSession.Active = False then
      begin
         OldCursor := Screen.Cursor;
         Screen.Cursor := crHourGlass;
         try
            try
              dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
              dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;
              dmAxiom.MapiSession.LogonInfo.Password           := '';
              dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
              dmAxiom.MapiSession.LogonInfo.NewSession         := False;
              dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
              dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := False;
              dmAxiom.MapiSession.Active                       := True;
            except on e:exception do
              WriteLog('ForwardClick: error connecting to MAPI session: ' + e.Message);
            end;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

      // dw 19 sep 2018 assigned in isolated method
      FAttachFileName.text := AAttachList.text;
      //dw 19 Sep 2018 assigning in an isolated method
 //     FRecipientsList.text := ARecipientsList.text;
      try
         try
            MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore(alReadWrite, False);
         except on e:exception do
              WriteLog('ForwardClick: error connecting to MsgStore: ' + e.Message);
         end;

         try
            // 07 Mar 2019 dw attach offline to resolve message send with O365
            Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite, False);
         except on e:exception do
              WriteLog('ForwardClick: error connecting to Folder: ' + e.Message);
         end;

         Msg := Folder.CreateMessage('IPM.Note') As IRwMapiMailMessage;

         if SystemString('MATTER_EMAIL_SUBJECT') = '' then
            Msg.PropByName(PR_SUBJECT).AsString := 'Our Ref #'+AFileID
         else
            Msg.PropByName(PR_SUBJECT).AsString := ParseMacros(SystemString('matter_email_subject'),qryMatter.FieldByName('nmatter').AsInteger);

         sSubject := Msg.PropByName(PR_SUBJECT).AsString;
         for i := 1 to length(sSubject) do
         begin
            if sSubject[i] = '#' then
            begin
               for x := i + 1 to length(sSubject) do
               begin
                  if (sSubject[x] <> ' ') and (sSubject[x] <> ']') then
                      FileID := FileID + sSubject[x];
               end;
            end;
         end;

         try
            AFileID := Msg.PropByName(MATTER).AsString;
         except
            try
               Msg.PropByName(MATTER).AsString := qryMatter.FieldByName('fileid').AsString;
            except
               //
            end;
         end;
         if AFileID = '' then
            AFileID := qryMatter.FieldByName('fileid').AsString;

         Msg.PropByName(MATTER).AsString := qryMatter.FieldByName('fileid').AsString;

         zipFileName := '';
         wCompress := mrNo;
         if (AAttachList.Count > 1) {and (wCompress = high(word))} then
               wCompress := MsgAsk('You have selected '+ IntToStr(AAttachList.Count)+
                                   ' files. Would you like to send as a compressed archive (zip) file instead?');
         case wCompress of
            mrYes: begin
                     try
                        zipFileName := GetTempDirectory + qryMatter.FieldByName('fileid').AsString+'.zip';
                        zipFile(zipFileName ,AAttachList);
                     finally
                        Msg.AddFileAttachment(zipFileName);
//                        Msg.AddAttachment.LoadFromFile(zipFileName);
                        FileAttachList := zipFileName;
                        DeleteFile(zipFileName);
                     end;
                   end;
            mrNo: begin
                     for i := 0 to AAttachList.Count - 1 do
                     begin
                        if tmpFileName <> '' then
                           tmpFileName := tmpFileName + ',';
                        tmpFileName := tmpFileName + ExtractFileName(AAttachList.Strings[i]);

                        Msg.Attachments.AddFileAttachment(AAttachList.Strings[i]);
                     end;
                  end;
         end;

         if (FileID = '') then
         begin
            if (sSubject = '') then
               lSubject := //tmpFileName +
                            ' [Matter#' + qryMatter.FieldByName('fileid').AsString+']'
            else
               lSubject := sSubject +
               //             tmpFileName +
                            ' [Matter#' + qryMatter.FieldByName('fileid').AsString+']';
            Msg.PropByName(PR_SUBJECT).AsString := lSubject;
         end
         else
            Msg.PropByName(PR_SUBJECT).AsString := Msg.PropByName(PR_SUBJECT).AsString {+ tmpFileName};

         if ARecipientsList.Count > 0 then
         begin
            try
               for I := 0 to ARecipientsList.Count - 1 do
               begin
                  Msg.AddRecipients(ARecipientsList.Strings[i], rtTo, True);
               end;
            finally

            end;
         end;
         Msg.SaveChanges(smKeepOpenReadWrite);

         Msg.ShowForm;
//         FormMgr.ShowMessage(Msg);

      finally
         ARecipientsList.Free;
         AAttachList.Free;
         AAttachDocID.Free;
      end;
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;

procedure TfrmMatters.tvDocsKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = 'DEL' then
      DocDelete;
end;

procedure TfrmMatters.tvDocsMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   PostMessage(Handle, UM_PREVIEWPANEL, 0, 0);
end;

// the merge form close event, free and set pointer to nil
procedure TfrmMatters.MergeFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FWorkFlowMergeDocument := Nil;
end;

procedure TfrmMatters.umOpenDocument(var Message: TMessage);
begin
   btnOpenDocument.Click;
end;

procedure TfrmMatters.OnUpdateWindowEvent(Sender: TObject);
begin
//  vtTasks.Invalidate();
//  UpdateToDoWindow();
end;

procedure TfrmMatters.cmbAutoTimerTaskPropertiesCloseUp(Sender: TObject);
begin
   if (cmbAutoTimerTask.Text <> '') then
   begin
      if qryFeeTmp.State = dsBrowse then
         qryFeeTmp.Edit;
      qryFeeTmp.FieldByName('fee_template').AsString := cmbAutoTimerTask.EditValue;
      qryFeeTmp.Post;
   end;
end;

procedure TfrmMatters.cmbWorkflowTypePropertiesChange(Sender: TObject);
begin
   if dmAxiom.bShutDown = False then
   begin
      qryPrecedents.Close;
      qryPrecedents.ParamByName('workflowtypecode').Clear;
      if cmbWorkflowType.EditValue <> 'ZZZ' then
      begin
         with qryPrecedents do
         begin
            if ( not cbUngroupDocList.Checked ) then
            begin
//               tvTemplatesDESCR.GroupIndex := -1;
//               tvTemplatesNAME.GroupIndex := 0;
            end;
            ParamByName('workflowtypecode').AsString := cmbWorkflowType.EditValue;
            qryPrecCategories.Close;
            qryPrecCategories.ParamByName('workflowtypecode').AsString := cmbWorkflowType.EditValue;
            SetupDocTab;
            WorkflowType := cmbWorkflowType.EditValue;
         end;
      end
      else
      begin
         if ( not cbUngroupDocList.Checked ) then
         begin
//            tvTemplatesDESCR.GroupIndex := 0;
//            tvTemplatesNAME.GroupIndex := 1;
         end;
         qryPrecCategories.ParamByName('workflowtypecode').Clear;
         SetupDocTab;
         WorkflowType := cmbWorkflowType.EditValue;
      end;

      qryPrecedents.Open;
      lblCategory.Caption := 'All Precedents';
      lvPrecedentList.ItemIndex := 0;
//      lvPrecedentList.Selected := 0;
      SelectPrecedents(0)
//      lvPrecedentList.OnClick(Sender);
   end;
end;

procedure TfrmMatters.cmbWorkflowTypePropertiesEditValueChanged(
  Sender: TObject);
begin
   qryPrecedents.Close;
   qryPrecedents.ParamByName('workflowtypecode').Clear;
   if cmbWorkflowType.EditValue <> 'ZZZ' then
   begin
      with qryPrecedents do
      begin
         if ( not cbUngroupDocList.Checked ) then
         begin
//            tvTemplatesDESCR.GroupIndex := -1;
//            tvTemplatesNAME.GroupIndex := 0;
         end;
         ParamByName('workflowtypecode').AsString := cmbWorkflowType.EditValue;
         qryPrecCategories.Close;
         qryPrecCategories.ParamByName('workflowtypecode').AsString := cmbWorkflowType.EditValue;
         SetupDocTab;
         WorkflowType := cmbWorkflowType.EditValue;
      end;
   end
   else
   begin
      if ( not cbUngroupDocList.Checked ) then
      begin
//         tvTemplatesDESCR.GroupIndex := 0;
//         tvTemplatesNAME.GroupIndex := 1;
      end;
      qryPrecCategories.ParamByName('workflowtypecode').Clear;
      SetupDocTab;
      WorkflowType := cmbWorkflowType.EditValue;
   end;

   qryPrecedents.Open;
   lblCategory.Caption := 'All Precedents';
   lvPrecedentList.ItemIndex := 0;
//   lvPrecedentList.Selected := 0;
   SelectPrecedents(0)
//   lvPrecedentList.OnClick(Sender);
end;

procedure TfrmMatters.EditFolder1Click(Sender: TObject);
var
   AValue: string;
//   Node: PVirtualNode;
//   Data: PFolderData;
   LFolderId: integer;
begin
//   Node := lvFolders.FocusedNode;
//   if not Assigned(Node) then
//      Exit;

//   Data := lvFolders.GetNodeData(Node);
   LFolderId := cxDBTreeList1FOLDER_ID.Value;
   AValue := cxDBTreeList1DESCR.Value;
   if ((AValue <> 'All Files') and (AValue <> 'Unallocated Files')) then
   begin
      if InputQueryString('Edit Folder','Edit Folder name','Folder',AValue) = True then
      begin
         try
            with dmAxiom.qryTmp do
            begin
               Close;
               SQL.Clear;
               SQL.Text := 'update document_folders set descr = ' + quotedstr(AValue) +
                           ' where nmatter = '+ quotedstr(qryMatter.FieldByName('nmatter').AsString) +
                           ' and folder_id = ' + IntToStr(LFolderId);
               Execute;
            end;
         finally
            dmAxiom.qryTmp.Close;
            SetupDocFolderTab;
         end;
      end;
   end;
end;

procedure TfrmMatters.EditWorkflowDoc();
var
  LOPID, LOPOrder,LOPLastOrder: Integer;
  LOPPartyType: String;
  i: Integer;
begin
  fmWorkFlowAddDocTemplateDialog := TfmWorkFlowAddDocTemplateDialog.Create(Self);
  try
    dmWorkFlowDataModuleDocs.qDocTemplOtherParties.ParamByName('docid').AsInteger := 1; //FSelectedNode.DocID;
    dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Open();
    try
      while(not dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Eof) do
      begin
        fmWorkFlowAddDocTemplateDialog.AddPartyType(
          dmWorkFlowDataModuleDocs.qDocTemplOtherParties.FieldByName('ID').AsInteger,
          dmWorkFlowDataModuleDocs.qDocTemplOtherParties.FieldByName('LISTORDER').AsInteger,
          dmWorkFlowDataModuleDocs.qDocTemplOtherParties.FieldByName('PARTYTYPE').AsString);

        dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Next();
      end;
    finally
      dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Close();
    end;

    fmWorkFlowAddDocTemplateDialog.Caption := 'Edit Document Template';
    fmWorkFlowAddDocTemplateDialog.feTemplatePath.Enabled := moNeedsTemplatePath in FMergeType.Options;
    fmWorkFlowAddDocTemplateDialog.feDataFilePath.Enabled := moNeedsDataFilePath in FMergeType.Options;
    fmWorkFlowAddDocTemplateDialog.feDocumentName.Enabled := moNeedsDocumentPath in FMergeType.Options;

    if(fmWorkFlowAddDocTemplateDialog.ShowModal() = mrOk) then
    begin
      dmWorkFlowDataModuleDocs.tbDocTemplates.Post();

      // save other parties..
      LOPLastOrder := 0;
      while(fmWorkFlowAddDocTemplateDialog.GetNextParty(LOPLastOrder,LOPID, LOPOrder, LOPPartyType)) do
      begin
        if(LOPID = 0) then
        begin
          // insert
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('docid').AsInteger     := dmWorkFlowDataModuleDocs.tbDocTemplates.FieldByName('DOCID').AsInteger;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('listorder').AsInteger := LOPOrder;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('partytype').AsString  := LOPPartyType;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ExecSQL();
        end else
        begin
          // update.
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesUpdate.ParamByName('id').AsInteger     :=    LOPID;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesUpdate.ParamByName('listorder').AsInteger := LOPOrder;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesUpdate.ParamByName('partytype').AsString  := LOPPartyType;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesUpdate.ExecSQL();
        end;

        LOPLastOrder := LOPOrder;
      end;

      // delete the deleted ones.
      for i := 0 to Length(fmWorkFlowAddDocTemplateDialog.FDeleted) - 1 do
      begin
        dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesDelete.ParamByName('id').AsInteger := fmWorkFlowAddDocTemplateDialog.FDeleted[i];
        dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesDelete.ExecSQL();
      end;

    end else
      dmWorkFlowDataModuleDocs.tbDocTemplates.Cancel();
    dmWorkFlowDataModuleDocs.qPhoneGroupings.Close();
  finally
    FreeAndNil(fmWorkFlowAddDocTemplateDialog);
  end;
end;


procedure TfrmMatters.Add1Click(Sender: TObject);
var
  LfrmTransitNew: TfrmTransitNew;
begin
   LfrmTransitNew := TfrmTransitNew.Create(Self);
   LfrmTransitNew.DisplayMatter(qryMatter.FieldByName('NMATTER').AsInteger);
   LfrmTransitNew.OnTransitFormClose := UpdateTransitList;
   LfrmTransitNew.Show;

end;

procedure TfrmMatters.AddFolder1Click(Sender: TObject);
var
   AValue: string;
//   Node: PVirtualNode;
//   Data: PFolderData;
   LFolderId,
   lFolderParentId: integer;
   lFolderlvl: integer;
   mbResponse: word;
begin
//   Node := lvFolders.FocusedNode;
   if (cxDBTreeList1FOLDER_ID.Value = -2) or (cxDBTreeList1FOLDER_ID.Value = -1 )then
   begin
      LFolderID := 0;
      LFolderLvl := 0;
      lFolderParentId := -1;
   end
   else
   begin
      mbResponse := MsgAsk('Would you like to add Folder as Child of "'+ cxDBTreeList1DESCR.Value + '" (YES) or at the same level as "'+cxDBTreeList1DESCR.Value + '"(NO)');
      if mbResponse = mrYes then
      begin
         LFolderId := cxDBTreeList1FOLDER_ID.Value;
         lFolderlvl := cxDBTreeList1FOLDER_LEVEL.Value + 1;
         lFolderParentId := -2;
      end
      else if mbResponse = mrNo then
      begin
         LFolderId := cxDBTreeList1FOLDER_ID.Value;
         lFolderlvl := cxDBTreeList1FOLDER_LEVEL.Value;
         lFolderParentId := cxDBTreeList1PARENT_ID.Value;
      end;
   end;

   if InputQueryString('Add Folder','Enter Folder name to create','Folder',AValue) = True then
   begin
      try
 {        if not Assigned(Node) then
         begin
           LFolderID := 0;
           LFolderLvl := 0;
         end
         else
         begin
           Data := lvFolders.GetNodeData(Node);
           LFolderId := Data.FolderID;
           lFolderlvl := Data.FolderLvl + 1;
         end;  }

         with dmAxiom.qryTmp do
         begin
           Close;
           SQL.Clear;
           SQL.Text := 'insert into document_folders (descr, parent_id, nmatter, folder_level) values (:descr, :parent_id, :nmatter, :folder_level)';
           if (lFolderParentId = -1) then
              ParamByName('parent_id').AsInteger := 0
           else if (lFolderParentId = -2) then
              ParamByName('parent_id').AsInteger := LFolderID
           else
              ParamByName('parent_id').AsInteger := lFolderParentId;

           ParamByName('descr').AsString := Trim(AValue);
           ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
           ParamByName('folder_level').AsInteger := LFolderLvl;
//           SQL.Text := SQL.Text + '(' + quotedstr(AValue) + ', ' + inttostr(LFolderID) + ', ';
//           SQL.Text := SQL.Text + quotedstr(qryMatter.FieldByName('nmatter').AsString) + ', ' + inttostr(LFolderLvl) + ')';
           Execute;
         end;
      finally
         dmAxiom.qryTmp.Close;
         SetupDocFolderTab;
      end;
   end;
end;

procedure TfrmMatters.popTransitPopup(Sender: TObject);
begin
   mnuEditTransit.Enabled := (not qryTransit.FieldByName('NTRANSIT').IsNull);
   mnuRemoveTransit.Enabled := (not qryTransit.FieldByName('NTRANSIT').IsNull);
end;

procedure TfrmMatters.lvPrecedentListClick(Sender: TObject);
begin
   try
      if (lvPrecedentList.SelCount > 0) then
         SelectPrecedents(lvPrecedentList.Selected.Index);
   except
      // silent
   end;
end;

procedure TfrmMatters.SelectPrecedents(pIndex: integer);
var
   lGroupId: integer;
begin
   try
      //AES 26/09/2017 sometimes th elist box is empty so should check if any items
      if lvPrecedentList.Items.Count > 0 then
      begin
         lblCategory.Caption := lvPrecedentList.Items.Item[pIndex].Caption;
         lGroupId := lvPrecedentList.Items.Item[pIndex].StateIndex;
      end
      else
      begin
         SetupDocTab;
      end;

      FPRECCATEGORY := -1;
      if (pIndex = 0) then
      begin
         qryPrecedents.Close;
         qryPrecedents.SQL.Clear;

        qryPrecedents.SQL.Add('SELECT DISTINCT p.nprec, p.descr AS filename, p.PATH, 1 AS prec, ');
        qryPrecedents.SQL.Add('        p.nprec AS docid, ''Precedents'' AS NAME, NULL AS descr,');
        qryPrecedents.SQL.Add('        NULL AS code, NULL AS doctype, NULL AS npreccategory,');
        qryPrecedents.SQL.Add('        NULL AS nprecclassification ');
        qryPrecedents.SQL.Add('   FROM prec p CROSS JOIN mattertype m ');
        qryPrecedents.SQL.Add('  WHERE p.nprec IN (SELECT workflowtypelink.nprec ');
        qryPrecedents.SQL.Add('                       FROM workflowtypelink ');
        qryPrecedents.SQL.Add('                      WHERE workflowtype = m.workflowtype) ');
        if edSearchFileName.Text <> '' then
            qryPrecedents.SQL.Add(' AND upper(P.descr) like '+ QuotedStr('%'+UpperCase(edSearchFileName.Text)+'%') );
        qryPrecedents.SQL.Add(' union ');
        qryPrecedents.SQL.Add(' SELECT   wdt.docid, wdt.documentname AS filename, ');
        qryPrecedents.SQL.Add(' workflowdocparties (wdt.docid), 2 AS prec, wdt.docid AS docid, NAME,');
        qryPrecedents.SQL.Add(' wdt.description, wt.code, wdt.doctype, wdt.npreccategory,');
        qryPrecedents.SQL.Add(' wdt.nprecclassification ');
        qryPrecedents.SQL.Add('FROM workflowdocgroups wdg RIGHT OUTER JOIN workflowdoctemplates wdt ');
        qryPrecedents.SQL.Add(' ON (wdg.groupid = wdt.groupid) ');
        qryPrecedents.SQL.Add(' JOIN workflowtype wt ON (wdt.workflowtypecode = wt.code) ');
        qryPrecedents.SQL.Add(' WHERE     wdt.workflow_only = ''N'' ');
        qryPrecedents.SQL.Add('  AND wdt.workflowtypecode = NVL (:workflowtypecode, workflowtypecode) ');

         if edSearchFileName.Text <> '' then
         begin
            qryPrecedents.SQL.Add(' AND wdt.groupid = :groupid');
            qryPrecedents.ParamByName('groupid').AsInteger := lGroupId;
         end;

         if cmbWorkFlowType.Text <> '- All -' then
         begin
            qryPrecedents.ParamByName('workflowtypecode').AsString := cmbWorkFlowType.EditValue;
            qryPrecedents.SQL.Add('ORDER BY 2');
         end
         else
         begin
            qryPrecedents.SQL.Add('ORDER BY 7, 2');
         end;

         qryPrecedents.Open;
      end else
      begin
         FPRECCATEGORY := lvPrecedentList.Items.Item[pIndex].StateIndex;
         qryPrecedents.Close;
         qryPrecedents.SQL.Clear;

        qryPrecedents.SQL.Add('SELECT DISTINCT p.nprec, p.descr AS filename, p.PATH, 1 AS prec, ');
        qryPrecedents.SQL.Add('        p.nprec AS docid, ''Precedents'' AS NAME, NULL AS descr,');
        qryPrecedents.SQL.Add('        NULL AS code, NULL AS doctype, NULL AS npreccategory,');
        qryPrecedents.SQL.Add('        NULL AS nprecclassification ');
        qryPrecedents.SQL.Add('   FROM prec p CROSS JOIN mattertype m ');
        qryPrecedents.SQL.Add('  WHERE p.nprec IN (SELECT workflowtypelink.nprec ');
        qryPrecedents.SQL.Add('                       FROM workflowtypelink ');
        qryPrecedents.SQL.Add('                      WHERE workflowtype = m.workflowtype) ');
        qryPrecedents.SQL.Add('AND P.NPRECCATEGORY = ' + IntToStr(FPRECCATEGORY) );
        if edSearchFileName.Text <> '' then
            qryPrecedents.SQL.Add(' AND upper(P.descr) like '+ QuotedStr('%'+UpperCase(edSearchFileName.Text)+'%') );
        qryPrecedents.SQL.Add(' union ');
        qryPrecedents.SQL.Add(' SELECT   wdt.docid, wdt.documentname AS filename, ');
        qryPrecedents.SQL.Add(' workflowdocparties (wdt.docid), 2 AS prec, wdt.docid AS docid, NAME,');
        qryPrecedents.SQL.Add(' wdt.description, wt.code, wdt.doctype, wdt.npreccategory,');
        qryPrecedents.SQL.Add(' wdt.nprecclassification ');
        qryPrecedents.SQL.Add('FROM workflowdocgroups wdg RIGHT OUTER JOIN workflowdoctemplates wdt ');
        qryPrecedents.SQL.Add(' ON (wdg.groupid = wdt.groupid) ');
        qryPrecedents.SQL.Add(' JOIN workflowtype wt ON (wdt.workflowtypecode = wt.code) ');
        qryPrecedents.SQL.Add(' WHERE     wdt.workflow_only = ''N'' and active = ''Y'' ');
        qryPrecedents.SQL.Add(' AND wdt.workflowtypecode = NVL (:workflowtypecode, workflowtypecode) ');

        qryPrecedents.SQL.Add(' AND WDT.GROUPID = ' + IntToStr(FPRECCATEGORY) );
        if edSearchFileName.Text <> '' then
            qryPrecedents.SQL.Add(' AND upper(wdt.documentname) like '+ QuotedStr('%'+UpperCase(edSearchFileName.Text)+'%') );
         if cmbWorkFlowType.Text <> '- All -' then
         begin
           qryPrecedents.ParamByName('workflowtypecode').AsString := cmbWorkFlowType.EditValue;
           qryPrecedents.SQL.Add('ORDER BY 2');

         end
         else
         begin
            qryPrecedents.SQL.Add('ORDER BY 7, 2');

         end;
         qryPrecedents.Open;
      end;
   except
     // silent
   end;
end;

procedure TfrmMatters.cbUngroupDocListClick(Sender: TObject);
begin
   if TcxCheckBox(Sender).Checked then
   begin
       tvTemplatesDESCR.GroupIndex := -1;
       tvTemplatesNAME.GroupIndex := -1;
   end
   else
   begin
      if cmbWorkflowType.EditValue <> 'ZZZ' then
      begin
         tvTemplatesDESCR.GroupIndex := -1;
         tvTemplatesNAME.GroupIndex := 0;
      end
      else
      begin
         tvTemplatesDESCR.GroupIndex := 0;
         tvTemplatesNAME.GroupIndex := 1;
      end;
   end;
end;

procedure TfrmMatters.edSearchFileNamePropertiesChange(Sender: TObject);
begin
   tmrSearch.Enabled := true;
end;

procedure TfrmMatters.tmrSearchTimer(Sender: TObject);
begin
   tmrSearch.Enabled := false;
   MakePrecSQL;
end;

procedure TfrmMatters.MakePrecSQL;
begin
   qryPrecedents.Close;
   qryPrecedents.SQL.Clear;

   qryPrecedents.SQL.Add('SELECT DISTINCT p.nprec, p.descr AS filename, p.PATH, 1 AS prec, ');
   qryPrecedents.SQL.Add('        p.nprec AS docid, ''Precedents'' AS NAME, NULL AS descr,');
   qryPrecedents.SQL.Add('        NULL AS code, NULL AS doctype, NULL AS npreccategory,');
   qryPrecedents.SQL.Add('        NULL AS nprecclassification ');
   qryPrecedents.SQL.Add('   FROM prec p CROSS JOIN mattertype m ');
   qryPrecedents.SQL.Add('  WHERE p.nprec IN (SELECT workflowtypelink.nprec ');
   qryPrecedents.SQL.Add('                       FROM workflowtypelink ');
   qryPrecedents.SQL.Add('                      WHERE workflowtype = m.workflowtype) ');
   qryPrecedents.SQL.Add('AND P.NPRECCATEGORY = ' + IntToStr(FPRECCATEGORY) );
   if edSearchFileName.Text <> '' then
      qryPrecedents.SQL.Add(' AND upper(P.descr) like '+ QuotedStr('%'+UpperCase(edSearchFileName.Text)+'%') );
   qryPrecedents.SQL.Add(' union ');
   qryPrecedents.SQL.Add(' SELECT   wdt.docid, wdt.documentname AS filename, ');
   qryPrecedents.SQL.Add(' workflowdocparties (wdt.docid), 2 AS prec, wdt.docid AS docid, NAME,');
   qryPrecedents.SQL.Add(' wdt.description, wt.code, wdt.doctype, wdt.npreccategory,');
   qryPrecedents.SQL.Add(' wdt.nprecclassificationwt ');
   qryPrecedents.SQL.Add('FROM workflowdocgroups wdg RIGHT OUTER JOIN workflowdoctemplates wdt ');
   qryPrecedents.SQL.Add(' ON (wdg.groupid = wdt.groupid) ');
   qryPrecedents.SQL.Add(' JOIN workflowtype wt ON (wdt.workflowtypecode = wt.code) ');
   qryPrecedents.SQL.Add(' WHERE     wdt.workflow_only = ''N'' and active = ''Y'' ');
   qryPrecedents.SQL.Add(' AND wdt.workflowtypecode = NVL (:workflowtypecode, workflowtypecode) ');
   if FPRECCATEGORY >= 0 then
      qryPrecedents.SQL.Add('AND WDT.GROUPID = ' + IntToStr(FPRECCATEGORY) );
   if edSearchFileName.Text <> '' then
      qryPrecedents.SQL.Add(' AND upper(wdt.documentname) like '+ QuotedStr('%'+UpperCase(edSearchFileName.Text)+'%') );
   if cmbWorkFlowType.Text <> '- All -' then
   begin
     qryPrecedents.ParamByName('workflowtypecode').AsString := cmbWorkFlowType.EditValue;
     qryPrecedents.SQL.Add('ORDER BY 2');
     tvTemplatesDESCR.GroupIndex := -1;
     tvTemplatesNAME.GroupIndex := 0;
   end
   else
   begin
      qryPrecedents.SQL.Add('ORDER BY 7, 2');
      tvTemplatesDESCR.GroupIndex := 0;
      tvTemplatesNAME.GroupIndex := 1;
   end;
   qryPrecedents.Open;
end;

procedure TfrmMatters.pagPartiesPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  qryMatterParty.Close;
  qryPhonebook.Close;
end;

procedure TfrmMatters.pageMatterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
var
  LResult: Integer;
begin
  if(pageMatter.ActivePage = tabFields) then
  begin
    if(aDataFormsPost.Enabled) then
    begin
      LResult := MessageDlg('You have modified data on this page and have not saved.'#13#10'Do you want to save before leaving this page?', mtWarning, [mbYes,mbNo,mbCancel], 0);
      case LResult of
        mrYes: aDataFormsPost.Execute();
        mrNo:  aDataFormsCancel.Execute();
        else
          AllowChange := False;
      end;
    end;
  end;
end;

procedure TfrmMatters.tvDocsStartDrag(Sender: TObject;
  var DragObject: TDragObject);
var
   LAttachDocID: TStringList;
begin
   LAttachDocID := TStringList.Create;
   GetAttachFile(LAttachDocID);
end;

procedure TfrmMatters.tvDocsVersionDblClick(Sender: TObject);
var
   bStream: TStream;
   tmpFileName: string;
   Msg : IRwMapiMessage;
   FormRect: TRect;
   OldCursor: TCursor;
   SelRec: integer;
   MsgStore: IRwMapiMsgStore;
   Folder  : IRwMapiFolder;
   SiteStatus, ViewStatus: Integer;
   RandFile,
   DocErrMsg: string;
   AHandle: THandle;
begin
  SelRec := 0;
   with qryDocVersions do
   begin
      if (not IsEmpty) then
      begin
         if (not FieldByName('URL').IsNull) then
         begin
            AHandle := ExecuteFile(FieldByName('URL').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
            if AHandle <= 32 then
               MsgInfo('Unable to open Link. The Link may no longer exist.');
            UpdateModBy(InttoStr(SelRec));
         end
         else
         if FieldByName('PATH').IsNull then
         begin
            SelRec := FieldByName('DOCID').AsInteger;
            qrySingleDoc.Close;
            qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
            qrySingleDoc.Open;
            Randomize;
            RandFile := IntToStr(RandomRange(100, 100000));
            bStream := qrySingleDoc.CreateBlobStream(qrySingleDoc.FieldByName('DOCUMENT'),bmRead);
            try
               if ExtractFileExt(qrySingleDoc.FieldByName('DOC_NAME').AsString) = '' then
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + qrySingleDoc.FieldByName('DOC_NAME').AsString + '.'+ qrySingleDoc.FieldByName('file_extension').AsString
               else
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + qrySingleDoc.FieldByName('DOC_NAME').AsString;

               if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ 'axeml' + RandFile + '.msg';
               // in case file still sitting in tmp directory
               DeleteFile(tmpFileName);

               bStream.Seek(0, soFromBeginning);

               with TFileStream.Create(tmpFileName, fmCreate) do
               try
                  CopyFrom(bStream, bStream.Size)
               finally
                  Free
               end;
            finally
               bStream.Free
            end;
            if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
            begin
               if not dmAxiom.MapiSession.Active then
               begin
                  OldCursor := Screen.Cursor;
                  Screen.Cursor := crHourGlass;
                  try
                     dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                     dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;  //'Outlook';
                     dmAxiom.MapiSession.LogonInfo.Password           := '';
                     dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                     dmAxiom.MapiSession.LogonInfo.NewSession         := True;
                     dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                     dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
                     dmAxiom.MapiSession.Active                       := True;
                  finally
                     Screen.Cursor := OldCursor;
                  end;
               end;
               try
                  Msg := dmAxiom.MapiSession.OpenDefaultMsgStore.OpenSavedMessage(tmpFileName);
//                  Msg.DisplayProperties;
                  begin
                     MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
                     Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
                     // Display the message in a Form Manager form.

                     FormMgr.ShowMessage(Msg{,FormRect});
                  end;
                  DeleteFile(tmpFileName);
               except
                  // error
               end;
           end
           else
           begin
              ExecuteFile(tmpFileName, '', '.', SW_SHOWNORMAL, DocErrMsg);
              UpdateModBy(InttoStr(SelRec));
              ReopenListUpdate('DOCUMENT', qryDocVersions.FieldByName('DOCID').AsString);
           end;
         end
         else
         begin
            try
               AHandle := ExecuteFile(qryDocVersions.FieldByName('PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
               if AHandle < 33 then
                  AHandle := ExecuteFile(qryDocVersions.FieldByName('Display_PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
                  if AHandle < 33 then
                     MsgInfo('Unable to open Document. - '+DocErrMsg);
            finally
               if AHandle >= 33 then
               begin
                  UpdateModBy(InttoStr(SelRec));
                  ReopenListUpdate('DOCUMENT', qryDocVersions.FieldByName('DOCID').AsString);
               end;
            end;
         end;
      end;
      Refresh; // Close;

   end;
end;

function TfrmMatters.GetAttachFile(var ADocIDList: TStringList): TStringList;  //string;
var
   bStream: TStream;
   tmpFileName: string;
   ARowIndex, SelRec, SelRec1, i: integer;
   AAttachList, LAttachDocID: TStringList;
begin
   AAttachList := TStringList.Create;
   LAttachDocID := TStringList.Create;
   if tvDocs.Controller.SelectedRowCount > 0 then
   begin
      for i :=0 to tvDocs.Controller.SelectedRowCount - 1 do
      begin
         ARowIndex := tvDocs.DataController.GetSelectedRowIndex(i);
         tvDocs.ViewData.Records[ARowIndex].Focused  := True;
         if (not qryDocs.IsEmpty) then
         begin
            if qryDocs.FieldByName('PATH').IsNull then
            begin
               SelRec := qryDocs.FieldByName('DOCID').AsInteger;
               qrySingleDoc.Close;
               qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
               qrySingleDoc.Open;
               bStream := qrySingleDoc.CreateBlobStream(qrySingleDoc.FieldByName('DOCUMENT'),bmRead);
               try
                  if ExtractFileExt(qrySingleDoc.FieldByName('DOC_NAME').AsString) = '' then
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qrySingleDoc.FieldByName('DOC_NAME').AsString +'.'+ qrySingleDoc.FieldByName('file_extension').AsString
                  else
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qrySingleDoc.FieldByName('DOC_NAME').AsString;
                  // in case file still sitting in tmp directory
                  DeleteFile(tmpFileName);

                  bStream.Seek(0, soFromBeginning);

                  with TFileStream.Create(tmpFileName, fmCreate) do
                  try
                     CopyFrom(bStream, bStream.Size)
                  finally
                     Free;
                  end;
               finally
                  bStream.Free
               end;
            end
            else
            begin
               SelRec := qryDocs.FieldByName('DOCID').AsInteger;
               with qrySingleDoc do
               begin
                  Close;
                  SQL.Clear;
                  SQL.Text := 'SELECT doc.doc_name, doc.search, doc.doc_code, doc.d_create, doc.auth1, ' +
                              'doc.d_modif, doc.auth2, doc.PATH, doc.descr, doc.fileid, doc.docid, ' +
                              'doc.npreccategory, doc.nmatter, doc.imageindex, doc.file_extension, ' +
                              'doc.display_path, doc.precedent_details, doc.document, doc.rowid ' +
                              'FROM doc ' +
                              'WHERE doc.docid = :docid ';
                  ParamByName('docid').AsInteger := SelRec;
                  Open;
                  tmpFileName := FieldByName('DISPLAY_PATH').AsString;
                  Close;
               end;
            end;
            AAttachList.Add(tmpFileName);
            LAttachDocID.Add(IntToStr(SelRec));
         end;
      end;
      Result := AAttachList;
      ADocIDList := LAttachDocID;
   end;
end;

procedure TfrmMatters.bbtnDeleteDocumentClick(Sender: TObject);
begin
   DocDelete;
end;

procedure TfrmMatters.bbtnEditDocDescriptionClick(Sender: TObject);
var
   LfrmNotesMatter: TfrmDocDescription;
begin
   try
      LfrmNotesMatter := TfrmDocDescription.Create(frmMatters);
      try
         LfrmNotesMatter.DisplayDocDescription(qryDocs.FieldByName('DOCID').AsInteger, qryDocs.FieldByName('SOURCE').AsString);
         if LfrmNotesMatter.ShowModal = mrOK then
         begin
            qryDocs.Refresh;
         end;
      except
         ;
      end;
   finally
      LfrmNotesMatter.Free;
   end;
end;

procedure TfrmMatters.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if dmAxiom.DictionaryInstalled then
   begin
      if (key = VK_F7) then
//         dmAxiom.Addict.CheckWinControl( memoNotes, ctAll );
   end;
end;

procedure TfrmMatters.tvInvoicesDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
   try
      if qryLedgerBalances.Active then
         ASender.FooterSummaryValues[8] := 'Trust: ' + Format('%.2m', [qryLedgerBalances.FieldByName('TRUST_BAL').AsCurrency]);
   except
      //
   end;
end;

procedure TfrmMatters.tvInvoicesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('RV_TYPE');
   if VarToStr(ARecord.Values[AColumn.Index]) = 'R' then
      AStyle := cxStyleR
   else if VarToStr(ARecord.Values[AColumn.Index]) = 'C' then
      AStyle := cxStyleG
   else if VarToStr(ARecord.Values[AColumn.Index]) = 'X' then
      AStyle := cxStyleB
   else
      AStyle := cxStyleD;
end;

procedure TfrmMatters.popEmailAttachmentsPopup(Sender: TObject);
begin
   popEmailAsAttachment.Enabled := tvEmailAttachments.Controller.SelectedRowCount > 0;
end;

procedure TfrmMatters.popEmailDocPopup(Sender: TObject);
begin
   bbtnEditDocDescription.Enabled := (qryDocs.FieldByName('SOURCE').AsString <> 'FROMWGT') and
                                     (tvDocs.Controller.SelectedRowCount = 1) ;

   btnOpenDocument.Enabled := tvDocs.Controller.SelectedRowCount = 1;
   bbtnDeleteDocument.Enabled := (tvDocs.Controller.SelectedRowCount > 0) and
                                 (dmAxiom.Security.Document.DeleteDocument = True);
   btnForward.Enabled := tvDocs.Controller.SelectedRowCount > 0;
   bbtnForwadAsLink.Enabled := tvDocs.Controller.SelectedRowCount > 0;
   bbtnForwardAsPDF.Enabled := tvDocs.Controller.SelectedRowCount > 0;
   dxBarBtnRenameFile.Enabled := tvDocs.Controller.SelectedRowCount = 1;
   bbtnChangeCreatedDate.Enabled := tvDocs.Controller.SelectedRowCount = 1;
   btnCopyDoc.Enabled := (tvDocs.Controller.SelectedRowCount = 1) and (tvDocsFILE_EXTENSION.EditValue <> 'msg');
end;

procedure TfrmMatters.RestoreSelectedItems();
var
   rowIndex: integer;
begin
   try
      with tvDocs do
         begin
            rowindex := DataController.GetRowIndexByRecordIndex(FRowIndex, False);
            if ( rowIndex >= 0 ) then
            begin
               DataController.ChangeRowSelection(rowIndex, True);
               Controller.FocusedRowIndex := rowIndex;
            end;
         end;
   except
     ;
   end;
end;

procedure TfrmMatters.SaveSelectedItems();
var
   rowIndex: integer;
begin
   try
      with tvDocs do
      begin
         rowIndex := Controller.FocusedRowIndex;
         FRowIndex := DataController.GetRowInfo(rowIndex).RecordIndex;
      end;
   except
     ;
   end;
end;

procedure TfrmMatters.UpdateModBy( sDocId: string);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'update doc set auth2 = ' + QuotedStr(dmAxiom.UserID)+ ' where docid = ' + sDocId;
      Execute;
   end;
end;

procedure TfrmMatters.btnAuthoriseClick(Sender: TObject);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('update nmemo set authorised = ''Y'' where nmemo = :nmemo');
      ParamByName('nmemo').AsInteger := qryInvoices.fieldByName('NMEMO').AsInteger;
      ExecSQL;
      dmAxiom.uniInsight.Commit;
      qryInvoices.Refresh;
   end;
end;

procedure TfrmMatters.popBillsPopup(Sender: TObject);
begin
   btnAuthorise.Enabled := (qryInvoices.fieldByName('Authorised').AsString = 'N');
end;

procedure TfrmMatters.btnDocPrintClick(Sender: TObject);
begin
   qryDocList.Close;
   qrydocList.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryDocList.Open;
   rptDocList.Print;
end;

procedure TfrmMatters.ppLabel56GetText(Sender: TObject; var Text: String);
begin
   Text := Matterstring(qryMatter.FieldByName('NMATTER').AsInteger, 'FILEID') +
           ' - ' +Matterstring(qryMatter.FieldByName('NMATTER').AsInteger, 'SHORTDESCR');
end;

procedure TfrmMatters.tvEmailsDblClick(Sender: TObject);
var
   bStream: TStream;
   tmpFileName: string;
   Msg : IRwMapiMessage;
   OldCursor: TCursor;
   SelRec, SelRec1: integer;
   MsgStore: IRwMapiMsgStore;
   Folder  : IRwMapiFolder;
   SiteStatus, ViewStatus: Integer;
   RandFile,
   DocErrMsg: string;
begin
  SelRec := 0;
   SaveSelectedItems;
   with qryDocEmails do
   begin
      if (not IsEmpty) then
      begin
         if FieldByName('PATH').IsNull then
         begin
            SelRec := FieldByName('DOCID').AsInteger;
            qrySingleDoc.Close;
            qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
            qrySingleDoc.Open;
            Randomize;
            RandFile := IntToStr(RandomRange(100, 10000));
            bStream := qrySingleDoc.CreateBlobStream(qrySingleDoc.FieldByName('DOCUMENT'),bmRead);
            try
               if ExtractFileExt(qrySingleDoc.FieldByName('DOC_NAME').AsString) = '' then
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qrySingleDoc.FieldByName('DOC_NAME').AsString +'.'+ qrySingleDoc.FieldByName('file_extension').AsString
               else
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qrySingleDoc.FieldByName('DOC_NAME').AsString;

               if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ 'axeml' + RandFile + '.msg';
               // in case file still sitting in tmp directory
               DeleteFile(tmpFileName);

               bStream.Seek(0, soFromBeginning);

               with TFileStream.Create(tmpFileName, fmCreate) do
               try
                  CopyFrom(bStream, bStream.Size)
               finally
                  Free
               end;
            finally
               bStream.Free
            end;
            if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
            begin
               if not dmAxiom.MapiSession.Active then
               begin
                  OldCursor := Screen.Cursor;
                  Screen.Cursor := crHourGlass;
                  try
                     dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                     dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;  //'Outlook';
                     dmAxiom.MapiSession.LogonInfo.Password           := '';
                     dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                     dmAxiom.MapiSession.LogonInfo.NewSession         := True;
                     dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                     dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
                     dmAxiom.MapiSession.Active                       := True;
                  finally
                     Screen.Cursor := OldCursor;
                  end;
               end;
               try
                  Msg := dmAxiom.MapiSession. OpenDefaultMsgStore.OpenSavedMessage(tmpFileName);


                  begin
                     MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
                     Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
                     // Display the message in a Form Manager form.
                     // A Form Manager Form is more flexible than the default mapi form


                     FormMgr.ShowMessage(Msg{,FormRect});
                  end;
                  DeleteFile(tmpFileName);
               except
                  // error
               end;
           end
           else
           begin
              ExecuteFile(tmpFileName, '', '.', SW_SHOWNORMAL, DocErrMsg);
              UpdateModBy(InttoStr(SelRec));
           end;
         end
         else
         begin
            ExecuteFile(FieldByName('PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
            UpdateModBy(InttoStr(SelRec));
         end;
      end;
      Refresh; // Close;
      RestoreSelectedItems;
   end;
end;

procedure TfrmMatters.lblsWIPClick(Sender: TObject);
var
   helpMsg1, helpMsg2: string;
begin
   helpMsg1 := '';
   helpMsg2 := '';

   if TLabel(Sender).Name = 'lblsUnconvCheqReq' then
   begin
      helpMsg1 := 'The value of cheque requisitions shown here is the total of cheque requisitions that have not yet been converted to cheques.';
      helpMsg2 := '  Cheque Requisitions are entered by users usually from the toolbar of the matter screen and are processed as required by the accounts department.';
      TLabel(Sender).Hint := helpMsg1 + helpMsg2;
   end
   else if TLabel(Sender).Name = 'lblsWIP' then
   begin
      helpMsg1 := 'Work In Progress (Unbilled Fees)';
      TLabel(Sender).Hint := helpMsg1 + helpMsg2;
   end;
end;

procedure TfrmMatters.btnUnpresentedChequesClick(Sender: TObject);
begin
   qryUnpresentedCheques.Close;
   qryUnpresentedCheques.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
   qryUnpresentedCheques.Open;
   rbUnpresentedCheques.Print;
end;

procedure TfrmMatters.ppLabel74GetText(Sender: TObject; var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmMatters.tvCriticalDatesDBDatePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
   WFT : TWorkFlowTask;
   nWorkFlowTask: integer;
   ADate: TDateTime;
   x: string;
begin
   qryMatterWorkflowTasks.Close;
   qryMatterWorkflowTasks.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryMatterWorkflowTasks.ParamByName('TEMPLATELINEID').AsInteger := qryCriticalDates.FieldByName('templatelineid').AsInteger;
   qryMatterWorkflowTasks.Open;
   if qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger <> 0 then
      nWorkFlowTask := qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger;

   ADate := strtodate(string(Displayvalue));

   WFT := TWorkFlowTask.Create(nWorkFlowTask, qryMatter.FieldByName('NMATTER').AsInteger);
   x := DisplayValue;
   ADate := strtodate(string(Displayvalue)); //  tvCriticalDatesDBDate.EditValue;

   if not WFT.Started then
   begin
      WFT.StartTask(ADate);
      WFT.updateStartedTree(now);
   end
   else
      WFT.CompleteByDate := ADate;

   WFT.Free;
end;

procedure TfrmMatters.tvCriticalDatesFinishedPropertiesChange(
  Sender: TObject);
var
   WFT : TWorkFlowTask;
begin
   WFT := TWorkFlowTask.Create(qryCriticalDates.FieldByName('workflowtask').AsInteger,
   qryMatter.FieldByName('NMATTER').AsInteger);

   if qryCriticalDates.FieldByName('finished').AsString = 'Y' then
   begin
      if WFT.Started then
         WFT.CompleteTask(now);
      WFT.Free;
   end
   else
   begin
      if WFT.Started then
      begin
         WFT.uncomplete;
         WFT.CompleteByDate := qryCriticalDates.FieldByName('CRITICAL_DATE').AsDateTime;
      end;
      WFT.Free;
   end;
end;

procedure TfrmMatters.dxBarBtnRenameFileClick(Sender: TObject);
var
  LNewFile,
  LOldFile: String;

begin
  LOldFile := tvDocsDISPLAY_PATH.EditValue;
  fmDocCopyMoveFileDialog := TfmDocCopyMoveFileDialog.Create(Self);
  try
    fmDocCopyMoveFileDialog.Operation              := cmfDocRename;
//    fmDocCopyMoveFileDialog.ShowOptions            := [cmfThisTemplate, cmfAllTemplates, cmfNoTemplate];
//    fmDocCopyMoveFileDialog.Option                 := cmfThisTemplate;
    fmDocCopyMoveFileDialog.FileName               := LOldFile;
    fmDocCopyMoveFileDialog.Destination            := LOldFile;  //ExtractFileName(LData.TemplatePath);
    fmDocCopyMoveFileDialog.NewFileName            := ExtractFileName(LOldFile);
    if(fmDocCopyMoveFileDialog.ShowModal() <> mrOk) then
      Exit;

    if(ExtractFilePath(fmDocCopyMoveFileDialog.Destination) = '') then
      LNewFile := ExtractFilePath(LOldFile) + fmDocCopyMoveFileDialog.Destination
    else
    begin
      LNewFile := fmDocCopyMoveFileDialog.Destination;
        dmAxiom.qryTmp.SQL.Text :=
          'UPDATE doc SET display_path = :docpath, path = :path, doc_name = :doc_name, search = :search, d_modif = :d_modif, auth2 = :auth2 WHERE docid = :docid';
        dmAxiom.qryTmp.ParamByName('docpath').AsString := LNewFile;
        dmAxiom.qryTmp.ParamByName('PATH').AsString := IndexPath(LNewFile, ExtractFilePath(LNewFile));
        dmAxiom.qryTmp.ParamByName('docid').AsInteger  := tvDocsDOCID.EditValue;
        dmAxiom.qryTmp.ParamByName('doc_name').AsString := fmDocCopyMoveFileDialog.NewFileName;
        dmAxiom.qryTmp.ParamByName('search').AsString := fmDocCopyMoveFileDialog.NewFileName;
        dmAxiom.qryTmp.ParamByName('d_modif').AsDateTime := now;
        dmAxiom.qryTmp.ParamByName('auth2').AsString := dmAxiom.UserID;
        dmAxiom.qryTmp.ExecSQL();
      end;
  finally
    FreeAndNil(fmDocCopyMoveFileDialog);
    tvdocs.BeginUpdate;
    qryDocs.Close;
    qryDocs.Open;
    tvdocs.EndUpdate;
  end;

end;

procedure TfrmMatters.bbtnForwadAsLinkClick(Sender: TObject);
var
   tmpFileName: string;
   Msg : IRwMAPIMailMessage;
   OldCursor: TCursor;
   i: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   sSubject: string;
   AAttachFile, AAttachDocID: TStringList;
   MsgBody, ADisp_Path: string;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      try
         FAttachDoc := False;
         AAttachDocID := TStringList.Create;
         AAttachFile := GetAttachFile(AAttachDocID);

               // if outlook not running, start it
         if IsObjectActive('Outlook.Application') = False then
            CreateOleObject('Outlook.Application');

         if (not dmAxiom.MapiSession.Active) then
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

         try
            begin
               try
                  //dw 19 sep 2018 assign in isolated method
                  FAttachFileName.text := AAttachFile.text;
                  MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
                  Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite, False);
                  Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;

                  sSubject := Msg.PropByName(PR_SUBJECT).AsString;

                  MsgBody := '<html><head></head><h1>Documents for action</h1><body>';
                  for i := 0 to FAttachFileName.Count - 1 do
                  begin
                     if tmpFileName <> '' then
                        tmpFileName := tmpFileName + ', ';
                     ADisp_Path := TableString('doc','docid',StrToInt(AAttachDocID.Strings[i]) ,'display_path');

                     tmpFileName := tmpFileName + TableString('phonebook','nclient', qryMatter.FieldByName('nclient').AsInteger,'search') +' - ' + ExtractFileName(ADisp_Path);

                     ADisp_Path := TableString('doc','docid',StrToInt(AAttachDocID.Strings[i]) ,'display_path');
                     MsgBody := MsgBody + '<p><a href="file:///' + ADisp_Path+ '">'+ ExtractFileName(ADisp_Path) +'</a></p>';
                  end;
                  MsgBody := MsgBody + '</body></html>';
                  Msg.SetMessageText(MsgBody, fmtHTML);

               {   if (FileID = '') then
                     Msg.PropByName(PR_SUBJECT).Value :=
                          Msg.PropByName(PR_SUBJECT).Value +
                           tmpFileName
                  else }
                     Msg.Subject := Msg.Subject + tmpFileName;

                  FormMgr.ShowMessage(Msg);
               except
                  MsgInfo('There was an error generating this eMail.  Try doing a Send/Receive in Outlook and then trying again.');
               end;
            end;
         finally
            AAttachFile.Free;
            AAttachDocID.Free;
         end;
      except
         MsgInfo('There was an error generating this eMail.  Try doing a Send/Receive in Outlook and then trying again.');
      end;
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;

procedure TfrmMatters.bbtnForwardAsPDFClick(Sender: TObject);
var
   tmpFileName,
   sFileName,
   sSubject,
   FileName,
   FILEID,
   AFileID,
   ContentID,
   zipFileName: string;
   OldCursor: TCursor;
   i, x: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   Msg : IRwMAPIMailMessage;
   TestMsg: string;
   AAttachList,
   AAttachDocID,
   ConvAAttachList,
   ARecipientsList: TStringList;
//   PDFLibrary: TDebenuPDFLibrary1014;
   UnlockResult: Integer;
   wCompress: word;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      ARecipientsList := TStringList.Create;
      GetEmailAddresses(ARecipientsList, qryMatter.FieldByName('nmatter').AsInteger, qryMatter.FieldByName('nclient').AsInteger);

      FAttachDoc := True;
      AAttachDocID := TStringList.Create;
      ConvAAttachList := TStringList.Create;
      AAttachList := GetAttachFile(AAttachDocID);
 //     WriteLog('MatterForwardAsPDFClick: sending email with converted file to PDF');
      // if outlook not running, start it
      if IsObjectActive('Outlook.Application') = False then
         CreateOleObject('Outlook.Application');
      if (dmAxiom.MapiSession.Active = False) then
      begin
         OldCursor := Screen.Cursor;
         Screen.Cursor := crHourGlass;
         try
             try
                dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;
                dmAxiom.MapiSession.LogonInfo.Password           := '';
                dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                dmAxiom.MapiSession.LogonInfo.NewSession         := False;
                dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
                dmAxiom.MapiSession.Active                       := True;
             except on e:exception do
                WriteLog('MatterForwardAsPDFClick: error connecting to Folder: ' + e.Message);
             end;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

      try
         begin
            for I := 0 to (AAttachList.Count - 1) do
            begin
               TestMsg := copy(AAttachList.strings[i], 1, length(AAttachList.strings[i]) - length(ExtractFileExt(AAttachList.strings[i]))) +'.pdf';
               ConvAAttachList.Add(TestMsg);
               if ExtractFileExt(AAttachList.strings[i]) <> '.pdf' then
               begin
                  if ExtractFileExt(AAttachList.strings[i]) = '.msg' then
                     ConvertMsg(AAttachList.strings[i])
                  else
                     if (ExtractFileExt(AAttachList.strings[i]) = '.doc') or
                        (ExtractFileExt(AAttachList.strings[i]) = '.docx') then
                        ConvertDOCFiles(AAttachList.strings[i])
                     else if (ExtractFileExt(AAttachList.strings[i]) = '.xls') or
                        (ExtractFileExt(AAttachList.strings[i]) = '.xlsx') then
                        ConvertXLFiles(AAttachList.strings[i])
{                     else
                     begin
                        try
                           PDFLibrary := TDebenuPDFLibrary1014.Create;
                           UnlockResult := PDFLibrary.UnlockKey(DebenuPDFKey);
                           if (UnlockResult = 1) then
                           begin
                              PDFLibrary.LoadFromFile(AAttachList.strings[i],'');
                              PDFLibrary.SaveToFile(TestMsg);
                           end
                           else
                              ShowMessage('Invalid license key for PDF file creation');
                        finally
                           PDFLibrary.Free;
                        end;
                     end; }
               end;
            end;
         end;

         tmpFileName := sFileName;
         //dw 19 sep 19 assigning in isolated method
         FAttachFileName.text := ConvAAttachList.text;
         FRecipientsList.text := ARecipientsList.text;
         try
             MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore(alReadWrite, False);;
         except on e:exception do
             WriteLog('MatterForwardAsPDFClick: error opening the Message Store: ' + e.Message);
         end;

         try
             // 07 Mar 2019 DW open the folder offline to resolve O365 issue
             Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite, False);
         except on e:exception do
             WriteLog('MatterForwardAsPDFClick: error opening the message folder: ' + e.Message);
         end;
         Try
             Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;
         except on e:exception do
             WriteLog('MatterForwardAsPDFClick: error opening the message folder: ' + e.Message);
         end;

         if SystemString('MATTER_EMAIL_SUBJECT') = '' then
            Msg.PropByName(PR_SUBJECT).AsString := 'Our Ref #'+AFileID
         else
            Msg.PropByName(PR_SUBJECT).AsString := ParseMacros(SystemString('matter_email_subject'),qryMatter.FieldByName('nmatter').AsInteger);

         sSubject := Msg.PropByName(PR_SUBJECT).AsString;
         for i := 1 to length(sSubject) do
         begin
            if sSubject[i] = '#' then
            begin
               for x := i + 1 to length(sSubject) do
               begin
                  if (sSubject[x] <> ' ') and (sSubject[x] <> ']') then
                     FileID := FileID + sSubject[x];
               end;
            end;
         end;
         try
            AFileID := Msg.PropByName(MATTER).AsString;
         except

            try
               Msg.PropByName(MATTER).AsString := qryMatter.FieldByName('fileid').AsString;
            except
            //
            end;
         end;

         if AFileID = '' then
            AFileID := qryMatter.FieldByName('fileid').AsString;

 //         Msg.PropByName(PR_SUBJECT).AsString := 'Our Ref #'+AFileID;
         Msg.PropByName(MATTER).AsString := qryMatter.FieldByName('fileid').AsString;

       {   for i := 0 to FAttachFileName.Count - 1 do
          begin
              FileName  := FAttachFileName.Strings[i];

          // check for embedded image
          //   ContentID := lowercase(ChangeFileExt(ExtractFileName(FileName),''));
   //      if Pos('cid:'+ContentID, HtmlSource) > 0 then
   //         ASender.MapiMessage.AddEmbeddedImage(FileName)
   //      else

              Msg.AddFileAttachment(FileName);
          end; }

 //       if (FAttachFileName.Count > 0) then

         zipFileName := '';
         wCompress := mrNo;
         if (FAttachFileName.Count > 1) {and (wCompress = high(word))} then
               wCompress := MsgAsk('You have selected '+ IntToStr(AAttachList.Count)+
                                   ' files. Would you like to send as a compressed archive (zip) file instead?');
         case wCompress of
            mrYes: begin
                     try
                        zipFileName := GetTempDirectory + qryMatter.FieldByName('fileid').AsString+'.zip';
                        zipFile(zipFileName ,FAttachFileName);
                     finally
                        Msg.AddFileAttachment(zipFileName);
                        FileAttachList := zipFileName;
                        DeleteFile(zipFileName);
                     end;
                   end;
            mrNo: begin
                     for i := 0 to FAttachFileName.Count - 1 do
                     begin
                        if tmpFileName <> '' then
                           tmpFileName := tmpFileName + ',';
                        tmpFileName := tmpFileName + ExtractFileName(FAttachFileName.Strings[i]);

                        Msg.Attachments.AddFileAttachment(FAttachFileName.Strings[i]);
                     end;
                  end;
         end;

         if ARecipientsList.Count > 0 then
         begin
            try
               for I := 0 to ARecipientsList.Count - 1 do
               begin
                  Msg.AddRecipients(ARecipientsList.Strings[i], rtTo, True);
               end;
            finally

            end;
         end;

         Msg.SaveChanges(smKeepOpenReadWrite);

         try
//             FormMgr.ShowMessage(Msg);
            Msg.ShowForm;
         except on e:exception do
             WriteLog('MatterForwardAsPDFClick: error creating the new message in Formmgr: ' + e.Message);
         end;
//          WriteLog('MatterForwardAsPDFClick: message sent with converted file to pdf');
      finally
         FreeAndNil(AAttachList);
         FreeAndNil(AAttachDocID);
         FreeAndNil(ARecipientsList);
         FreeAndNil(ConvAAttachList);
      end;
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;


procedure TfrmMatters.bbtnChangeCreatedDateClick(Sender: TObject);
var
  LDate: TDate;
begin
   if(tvDocs.Controller.SelectedRowCount = 1) then
   begin
      try
         LDate := tvDocsD_CREATE.EditValue;
         if(LDate = 0) then
            LDate := Date();
         if(EditDateDialog(Self,LDate)) then
         begin
            with dmAxiom.qryTmp do
            begin
               SQL.Text := 'update doc set d_create = :d_create where docid = :docid';
               ParamByName('d_create').AsDateTime := LDate;
               ParamByName('docid').AsInteger := tvDocsDOCID.EditValue;
               ExecSQL;
            end;
         end;
      finally
         tvDocs.BeginUpdate();
         qryDocs.Close;
         qryDocs.Open;
         tvDocs.EndUpdate;
      end;
   end;
end;

procedure TfrmMatters.dxBarButton4Click(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToXLSX(filename, dbgrInvoices);
   end;
end;

procedure TfrmMatters.dxBarButton5Click(Sender: TObject);
var
   frmReports :TfrmReports;
begin
   frmReports := TfrmReports.create(self);
   try
      frmReports.LaunchReport('Controlled Monies');
   finally
      frmReports.Close;
   end;
end;

procedure TfrmMatters.dxBarButton6Click(Sender: TObject);
begin
    PrintInvReceipt(qryInvestmentTransactions.fieldByname('ninvtran').AsInteger);
end;

procedure TfrmMatters.dxbReversalClick(Sender: TObject);
begin
   newTransaction(cniREVERSAL);
end;

procedure TfrmMatters.dxbPaymentClick(Sender: TObject);
begin
   newTransaction(cniWITHDRAWAL);
end;

procedure TfrmMatters.dxbReceiptClick(Sender: TObject);
begin
   newTransaction(cnIDEPOSIT);
end;

procedure TfrmMatters.btnAutoTimerClick(Sender: TObject);
begin
   if (frmDesktop.btnAutoTimer.Down = True) then
   begin
      if (tmrAutoCost.Enabled = true) then
      begin
         tmrAutoCost.Enabled := False;
         qryFeeTmp.Post;
         frmDesktop.lblTimer.Caption := '00:00:00';
         btnAutoTimer.Hint := 'Start Auto Timer';
         Self.Caption := AFormCaption;
         frmDesktop.pageForms.ActivePage.Caption := AFormCaption;
          nFeeTmpID := 0;
      end
      else
      begin
         CreateTmeEntry;
         btnAutoTimer.Hint := 'Stop Auto Timer';
         tmrAutoCost.Enabled := True;
      end;
   end
   else
   begin
      MsgInfo('Auto Timer is off.  If you want to use the Auto Timer please turn on by Clicking on the ''Auto Timer Off'' button on the toolbar');
      tmrAutoCost.Enabled := False;
      if qryFeeTmp.State in [dsInsert, dsEdit] then
         qryFeeTmp.Post;
      frmDesktop.lblTimer.Caption := '00:00:00';
      btnAutoTimer.Hint := 'Start Auto Timer';
      Self.Caption := AFormCaption;
      frmDesktop.pageForms.ActivePage.Caption := AFormCaption;
      nFeeTmpID := 0;
   end;
end;

procedure TfrmMatters.dbtbBillToPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      if not Self.qryMatter.Modified then
         Self.qryMatter.Edit;
      qryMatter.FieldByName('NBILL_TO').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
      qryMatter.FieldByName('BILL_TO').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
   end;
end;

procedure TfrmMatters.dbtbContactPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('CONTACT').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
    qryMatter.FieldByName('NCONTACT').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
  end;
end;

procedure TfrmMatters.dbtbRefByPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('REFERREDBY').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
    qryMatter.FieldByName('NREFERRED_BY').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
  end;
end;

procedure TfrmMatters.aDeleteDataformFieldExecute(Sender: TObject);
var
  LMO: TVTMiscOptions;
  LData: PFieldData;
  qTmp: TUniQuery;
begin
   vtMatterData.EndEditNode();
   LMO := vtMatterData.TreeOptions.MiscOptions;
   Exclude(LMO,toEditable);
   vtMatterData.TreeOptions.MiscOptions := LMO;

   qTmp := TUniQuery.Create(Self);
   qTmp.Connection := dmAxiom.uniInsight;
   try
      if(not Assigned(vtMatterData.FocusedNode)) then
         vtMatterData.FocusedNode := vtMatterData.RootNode.FirstChild;

      if(vtMatterData.FocusedNode.ChildCount > 0) then
         vtMatterData.FocusedNode := vtMatterData.FocusedNode.FirstChild;

      LData := vtMatterData.GetNodeData(vtMatterData.FocusedNode);
      qTmp.SQL.Clear();
      try
         qTmp.SQL.Add('DELETE FROM fieldtypelink ');
         qTmp.SQL.Add('WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');

         qTmp.ParamByName('nunique').AsInteger := qMatterDataFields.ParamByName('nunique').AsInteger;
         qTmp.ParamByName('linktable').AsString := LData.DataForm;
         qTmp.ParamByName('fieldname').AsString := LData.FieldName;
//         qTmp.ParamByName('id').AsInteger := LData.ID;

         qTmp.ExecSQL();

         LData.New := False;
         LData.Modified := False;
         LData.Cleared := False;
      except
         on e: Exception do
         begin
            MessageDlg('Error deleting Other Party:'#13#13 + E.Message, mtError, [mbOK], 0);
            Exit;
         end;
      end;
   finally
      FreeAndNil(qTmp);
      qMatterDataFields.Refresh;
      vtMatterData.Refresh();  //  Repaint();
   end;

end;

procedure TfrmMatters.eInternetEmailPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if (TcxDBButtonEdit(Sender).Text <> '') then
      ShellExecute(Handle,'open',PChar('mailto:' + TcxDBButtonEdit(Sender).Text +
                                       '?Subject=#' + qryMatter.FieldByName('FILEID').AsString) ,nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMatters.eInternetWWWPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   ShellExecute(Handle,'open',PChar(eInternetWWW.Text),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMatters.btnAddMatterNotesClick(Sender: TObject);
var
  LDate : TDateTime;
  lsUserName : String;
begin
   frmMatterNotesAdd := TfrmMatterNotesAdd.Create(Self);

   lsUserName := dmAxiom.GetUserName;

   try
      LDate := Now();
      frmMatterNotesAdd.EntryDate := LDate;
      frmMatterNotesAdd.By        := lsUserName;
      frmMatterNotesAdd.Note      := '';
      frmMatterNotesAdd.NMatter   := qryMatter.FieldByName('NMATTER').AsInteger;

      frmMatterNotesAdd.qryMatterNotes.Open;
      frmMatterNotesAdd.qryMatterNotes.Insert;

      if(frmMatterNotesAdd.ShowModal <> mrOk) then
         Exit;

      frmMatterNotesAdd.qryMatterNotes.ApplyUpdates;

      qryMatterNotes.Refresh;
   finally
      frmMatterNotesAdd.qryMatterNotesType.Close;
      frmMatterNotesAdd.qryMatterNotes.Close;
      FreeAndNil(frmMatterNotesAdd);
   end;
end;

procedure TfrmMatters.btnEditMatterNoteClick(Sender: TObject);
var
   lsUserName : String;
   LDate : TDateTime;
begin
   frmMatterNotesAdd := TfrmMatterNotesAdd.Create(Self);

   lsUserName := dmAxiom.GetUserName;

   try

      LDate := Now();
      frmMatterNotesAdd.EntryDate := LDate;
      frmMatterNotesAdd.By        := lsUserName;
      frmMatterNotesAdd.Note      := '';
      frmMatterNotesAdd.NoteType  := '';
      frmMatterNotesAdd.NMatter   := qryMatter.FieldByName('NMATTER').AsInteger;

      frmMatterNotesAdd.qryMatterNotes.Close;
      frmMatterNotesAdd.qryMatterNotes.SQL.Clear;
      frmMatterNotesAdd.qryMatterNotes.SQL.Text := 'SELECT Matternotes.*, Matternotes.ROWID '+
                                                   'FROM Matternotes where nmatter = :nmatter '+
                                                   'and sequence = :seqno';
      frmMatterNotesAdd.qryMatterNotes.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      frmMatterNotesAdd.qryMatterNotes.ParamByName('seqno').AsInteger := Self.qryMatterNotes.FieldByName('sequence').AsInteger;
      frmMatterNotesAdd.qryMatterNotes.Open;
      frmMatterNotesAdd.qryMatterNotes.Edit;

      if(frmMatterNotesAdd.ShowModal <> mrOk) then
         Exit;

      frmMatterNotesAdd.qryMatterNotes.ApplyUpdates;

      qryMatterNotes.Refresh;
   finally
      FreeAndNil(frmMatterNotesAdd);
   end; 
end;

procedure TfrmMatters.btnDeleteMatterNoteClick(Sender: TObject);
begin
   if MsgAsk('Delete selected Matter Note?') = IDYES then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete FROM Matternotes where nmatter = :nmatter and sequence = :seqno');
         ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         ParamByName('seqno').AsInteger := Self.qryMatterNotes.FieldByName('sequence').AsInteger;
         try
            ExecSQL;
         finally
            qryMatterNotes.Refresh;
            btnEditMatterNote.Enabled := False;
            btnDeleteMatterNote.Enabled := False;
         end;
      end;
   end;
end;

procedure TfrmMatters.btnDeleteTaskClick(Sender: TObject);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('delete FROM task where ntask = :ntask');
      ParamByName('task').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      try
         ExecSQL;
      finally
         qryTasks.Refresh;
         btnDeleteMatterNote.Enabled := False;
      end;
   end;
end;

procedure TfrmMatters.btnMatterNotesRefreshClick(Sender: TObject);
begin
   qryMatterNotes.Refresh;
end;

procedure TfrmMatters.tvMatterNotesCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnEditMatterNote.Enabled := True;
   btnDeleteMatterNote.Enabled := True;
end;

procedure TfrmMatters.tvMatterNotesDblClick(Sender: TObject);
begin
   if btnEditMatterNote.Enabled = True then
      btnEditMatterNote.Click;
end;

procedure TfrmMatters.tvProjectsCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   CreateGantt;
end;

procedure TfrmMatters.CreateGantt;
var
   lStr,
   AAuthor: string;
   I,
   iSystemMins,
   AMaxTimeEstimate,
   ATimeEstimate: integer;
   aMaxEmpCostPerHour,
   aTotalMaxEmpCostPerHour: double;
   APreEvent, AEvent: TcxSchedulerEvent;
begin
   with qryFeeTasks do
   begin
      Close;
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
      Open;
      ProjectsScheduler.Storage.Clear;
      while eof = False do
      begin
         APreEvent := nil;
         AEvent := ProjectsScheduler.Storage.createEvent;
         with AEvent do
         begin
            Caption := qryFeeTasks.FieldByName('REASON').AsString;
            Start := qryFeeTasks.FieldByName('start_date').AsDateTime;
            Duration := qryFeeTasks.FieldByName('end_date').AsDateTime - qryFeeTasks.FieldByName('start_date').AsDateTime;
            TaskComplete := qryFeeTasks.FieldByName('TASK_COMPLETED').AsInteger;
            ID := qryFeeTasks.FieldByName('UNIQUEID').AsInteger;
            Post;
            TaskLinks.Add(APreEvent, TcxSchedulerEventRelation(RandomRange(0, 3)));
         end;
         aEvent.SetCustomFieldValueByName('FILEID', qryFeeTasks.FieldByName('FILEID').AsString);
         aEvent.SetCustomFieldValueByName('NOTES', qryFeeTasks.FieldByName('NOTES').AsString);
         aEvent.SetCustomFieldValueByName('AUTHOR', qryFeeTasks.FieldByName('AUTHOR').AsString);
         aEvent.SetCustomFieldValueByName('MINUTES', qryFeeTasks.FieldByName('MINS').AsFloat);
         aEvent.SetCustomFieldValueByName('CREATED', qryFeeTasks.FieldByName('CREATED').AsDateTime);
         aEvent.SetCustomFieldValueByName('BILLTYPE', qryFeeTasks.FieldByName('BILLTYPE').AsString);
         aEvent.SetCustomFieldValueByName('TYPE', qryFeeTasks.FieldByName('TIME_TYPE').AsString);
         aEvent.SetCustomFieldValueByName('TEMPLATE', qryFeeTasks.FieldByName('FEE_TEMPLATE').AsString);
         Next;
      end;
   end;

   with qryProjectTasks do
   begin
      Close;
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
      Open;
   end;

      // get project totals to display
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'select sum(nvl(days,1)) as days_total from feetmp where is_task = ''Y'' and nmatter = :nmatter and NVL(NPROJECTTEMPL, :NPROJECTTEMPL) = :NPROJECTTEMPL';
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
      Open;
      lblTotalProjTime.Caption := 'Total Time :' + chr(13) + FieldByName('days_total').AsString + ' days';
      Close;
   end;

   with dmAxiom.qryTmp do
   begin
      Close;

      SQL.Text := 'SELECT tasktmp.created, tasktmp.nscalecost, code, descr, author, tasktmp.amount, nvl(scalecost.amount,0) as task_amount, '+
                  'tasktmp.budget_low, tasktmp.budget_high, tasktmp.time_estimate, tasktmp.max_time_estimate '+
                  'FROM scalecost, tasktmp '+
                  'WHERE ' +
                  'nmatter = :nmatter '+
                  'AND tasktmp.fee_template = scalecost.code '+
                  'AND NVL (nprojecttempl, :nprojecttempl) = :nprojecttempl ';
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
      Open;
      aTotalMinRate := 0;
      aTotalMaxRate := 0;
      aTotalEstHourlyCost := 0;
      aTotalEmpNetCostHour := 0;
      aTotalEmpCostPerHour := 0;
      tvTaskQuoting.DataController.RecordCount := 0;
      iSystemMins := SystemInteger('TIME_UNITS');
      while (eof = False) do
      begin
         AAuthor := dmAxiom.qryTmp.FieldByName('author').AsString;
         ATimeEstimate := dmAxiom.qryTmp.FieldByName('time_estimate').AsInteger;
         AMaxTimeEstimate := dmAxiom.qryTmp.FieldByName('max_time_estimate').AsInteger;
         aMinRate := 0;
         aMaxRate := 0;
         if (dmAxiom.qryTmp.FieldByName('budget_low').AsFloat = 0) then
            TaskRevenueRate(qryMatter.FieldByName('FILEID').AsString, dmAxiom.qryTmp.FieldByName('author').AsString, dmAxiom.qryTmp.FieldByName('created').AsDateTime,
                     dmAxiom.qryTmp.FieldByName('nscalecost').AsInteger, dmAxiom.qryTmp.FieldByName('time_estimate').AsInteger,
                     AMaxTimeEstimate, aMinRate, aMaxRate, aEstHourlyCost, aEmpNetCostHour, aEmpCostPerHour)
         else
         begin
            aMinRate := dmAxiom.qryTmp.FieldByName('BUDGET_LOW').AsFloat;
            aMaxRate := dmAxiom.qryTmp.FieldByName('BUDGET_HIGH').AsFloat;
         end;

         if (dmAxiom.qryTmp.FieldByName('budget_high').AsFloat = 0) then
            TaskRevenueRate(qryMatter.FieldByName('FILEID').AsString, dmAxiom.qryTmp.FieldByName('author').AsString, dmAxiom.qryTmp.FieldByName('created').AsDateTime,
                        dmAxiom.qryTmp.FieldByName('nscalecost').AsInteger, dmAxiom.qryTmp.FieldByName('time_estimate').AsInteger,
                        AMaxTimeEstimate, aMinRate, aMaxRate, aEstHourlyCost, aEmpNetCostHour, aEmpCostPerHour)
         else
         begin
           aMinRate := dmAxiom.qryTmp.FieldByName('budget_low').AsFloat;
           aMaxRate := dmAxiom.qryTmp.FieldByName('budget_high').AsFloat;
         end;


         lStr := lStr + dmAxiom.qryTmp.FieldByName('code').AsString +'-'+ dmAxiom.qryTmp.FieldByName('descr').AsString +chr(9)+
                 CurrToStrF(aMinRate, ffCurrency, 2, formatSettings) + chr(9) + CurrToStrF(aMaxRate, ffCurrency, 2, formatSettings) + chr(13);

         with dmAxiom.qryTmp2 do
         begin
            Close;
            SQL.Text := 'SELECT EMPLOYEE.RATE, COST_PER_HOUR, NET_COST_HOUR FROM EMPLOYEE WHERE '+
                                 ' employee.code = :empcode';
            ParamByName('empcode').AsString := AAuthor;
            Open;
            aEmpCostPerHour := FieldByName('COST_PER_HOUR').AsFloat * (ATimeEstimate * iSystemMins)/60;
            aMaxEmpCostPerHour := FieldByName('COST_PER_HOUR').AsFloat * (AMaxTimeEstimate * iSystemMins)/60;
         end;

         aTotalMinRate           := aTotalMinRate + aMinRate;
         aTotalMaxRate           := aTotalMaxRate + aMaxRate;
         aTotalEstHourlyCost     := aTotalEstHourlyCost + aEstHourlyCost;
         aTotalEmpCostPerHour    := aTotalEmpCostPerHour + aEmpCostPerHour;
         aTotalMaxEmpCostPerHour := aTotalMaxEmpCostPerHour + aMaxEmpCostPerHour;
         Next;
      end;

      qryProjectMatterQuote.Close;
      qryProjectMatterQuote.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryProjectMatterQuote.ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
      qryProjectMatterQuote.Open;
      if qryProjectMatterQuote.Eof = True then
         qryProjectMatterQuote.Insert
      else
         qryProjectMatterQuote.Edit;

      qryProjectMatterQuote.FieldByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryProjectMatterQuote.FieldByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;

      I := tvTaskQuoting.DataController.AppendRecord;
      tvTaskQuoting.DataController.Values[I, 0] := 'Revenue';
      tvTaskQuoting.DataController.Values[I, 1] := aTotalMinRate;
      tvTaskQuoting.DataController.Values[I, 2] := aTotalMaxRate;

      qryProjectMatterQuote.FieldByName('TotalMinRate').AsFloat := aTotalMinRate;
      qryProjectMatterQuote.FieldByName('TotalMaxRate').AsFloat := aTotalMaxRate;

      I := tvTaskQuoting.DataController.AppendRecord;
      tvTaskQuoting.DataController.Values[I, 0] := 'Cost';

      aCalcMinTotal := aTotalEmpCostPerHour;
      aCalcMaxTotal := aTotalMaxEmpCostPerHour;
      tvTaskQuoting.DataController.Values[I, 1] := aCalcMinTotal;
      tvTaskQuoting.DataController.Values[I, 2] := aCalcMaxTotal;

      qryProjectMatterQuote.FieldByName('TOTALEMPNETCOSTHOUR').AsFloat := aCalcMinTotal;
      qryProjectMatterQuote.FieldByName('TOTALEMPNETCOSTHOUR').AsFloat := aCalcMaxTotal;


      I := tvTaskQuoting.DataController.AppendRecord;
      tvTaskQuoting.DataController.Values[I, 0] := 'Profit';

      tvTaskQuoting.DataController.Values[I, 1] := aTotalMinRate - aCalcMinTotal;
      tvTaskQuoting.DataController.Values[I, 2] := aTotalMaxRate - aCalcMaxTotal;

      qryProjectMatterQuote.Post;
      Close;
   end;
   btnGenerateQuote.Enabled := True;
end;

procedure TfrmMatters.tvReceiptsStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
   AColumn2: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('REVERSED');
   AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('RCPTNO');
   if VarToStr(ARecord.Values[AColumn.Index]) = 'Y' then
   begin
      if Pos('RV', VarToStr(ARecord.Values[AColumn2.Index])) > 0 then
         // Reversal entry
         AStyle := styRed
      else
         // Reversed entry
         AStyle := styGreen;
    end
    else
      AStyle := styDefault;
end;

procedure TfrmMatters.cxButton5Click(Sender: TObject);
begin
   rpMatterNotes.Print;
end;

procedure TfrmMatters.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if (TcxDBButtonEdit(Sender).Text <> '') then
      ShellExecute(Handle,'open',PChar('mailto:' + TcxDBButtonEdit(Sender).Text +
                                       '?Subject=#' + qryMatter.FieldByName('FILEID').AsString) ,nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMatters.cxDBTreeList1Click(Sender: TObject);
var
   LFolderId: integer;
begin
   LFolderId := cxDBTreeList1FOLDER_ID.Value;
   if cxDBTreeList1DESCR.Value = 'All Files' then
   begin
      if qryDocs.Active = True then
      begin
         qryDocChildren.Close;
         qryDocVersions.Close;
         qryDocs.Close;
         qryDocs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocs.ParamByName('folder_id').AsInteger := LFolderId;  //-2
         qryDocs.Open;

         qryDocChildren.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocChildren.Open;

         qryDocVersions.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocVersions.Open;
      end;
   end
   else
   if cxDBTreeList1DESCR.Value = 'Unallocated Files' then
   begin
      if qryDocs.Active = True then
      begin
         qryDocChildren.Close;
         qryDocs.Close;
         qryDocVersions.Close;
         qryDocs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocs.ParamByName('folder_id').AsInteger := LFolderId;    //-1
         qryDocs.Open;

         qryDocChildren.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocChildren.Open;

         qryDocVersions.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocVersions.Open;
      end;
   end
   else
   if cxDBTreeList1DESCR.Value <> 'All Files' then
   begin
      if qryDocs.Active = True then
      begin
         qryDocChildren.Close;
         qryDocVersions.Close;
         qryDocs.Close;
         qryDocs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocs.ParamByName('folder_id').AsInteger := LFolderId;
         qryDocs.Open;

         qryDocChildren.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocChildren.Open;

         qryDocVersions.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocVersions.Open;
      end;
   end;
end;

procedure TfrmMatters.lvFoldersDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
   ANode: TcxTreeListNode;
begin
{   ANode := TcxTreeList(Sender).GetNodeAt(X,Y);
   if ((ANode.Texts[0] <> 'Unallocated Files') and (ANode.Texts[0] <> 'All Files')) then
      PostMessage(Handle, UM_MYMESSAGE, 0, 1);}
end;

procedure TfrmMatters.lvFoldersDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  Src,
  Dst: TcxTreeListNode;
begin
   Accept:= false;
   if not (Source = Sender) then
   begin
      lvFolders.OptionsView.DropNodeIndicator:= Accept;
      Exit;
   end;
   Dst := TcxTreeList(Sender).GetNodeAt(X,Y);

   if Dst <> nil then
      Accept := ((Dst.level >= 0));

   lvFolders.OptionsView.DropNodeIndicator:= Accept;
end;

procedure TfrmMatters.umMyMessage(var Message: TMessage);
begin
   if (lvFolders.FocusedNode.Parent <> lvFolders.Root) and (Message.LParam = 1) then
      Caption := lvFolders.FocusedNode.Parent.Values[0]
   else
      Caption := 'nil';
end;

procedure TfrmMatters.umPreviewPanel(var Message: TMessage);
var
   LsFile,
   LsTMPFile: string;
begin
   if chkPreviewPane.Checked then
   begin
      try
         if (VarIsNull(tvDocsDISPLAY_PATH.EditValue) = False) then
         begin
            LsFile := string(tvDocsDISPLAY_PATH.EditValue);
            if ((LsFile <> '') and (FileExists(LsFile) = True)) then
            begin
               pnlPreview.Enabled := False;
               pnlPreview.Path := LsFile;
               pnlPreview.Enabled := True;
               pnlPreview.Invalidate;
            end;
         end;
      except on E:Exception do
         ShowMessage(E.Message);
      end;
   end;
end;

procedure TfrmMatters.cxGrid2DBChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
begin
   ADisplayText := Format('%.2m',[currency(AValue)]);
end;

procedure TfrmMatters.cxGrid4DBChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
begin
   ADisplayText := Format('%.2m',[currency(AValue)]);
end;

procedure TfrmMatters.cxSchedulerEventModified(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
   FEvent := AEvent;
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'UPDATE TASKTMP SET CREATED = :CREATED, START_DATE = :START_DATE, END_DATE = :END_DATE WHERE UNIQUEID = :UNIQUEID';
      ParamByName('START_DATE').AsDateTime := AEvent.Start;
      ParamByName('END_DATE').AsDateTime := AEvent.Finish;
      ParamByName('CREATED').AsDateTime := AEvent.Start;
      ParamByName('UNIQUEID').AsInteger := integer(AEvent.id);
      Execute;
   end;
end;

procedure TfrmMatters.cxSchedulerGridConnection1GridPopupMenuPopup(
  Sender: TcxSchedulerGridBuildInPopupMenu; ABuiltInMenu: TPopupMenu;
  var AHandled: Boolean);
var
  AItem: TMenuItem;
begin
   if (tvProjectTaskItems.DataController.RowCount > 0) and
      (tvProjectTaskItems.Controller.SelectedRowCount = 1) then
   begin
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Re Assign Task to another Employee';
      AItem.OnClick := ReassignTask;
//     AItem.ImageIndex := 5;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(0, AItem);
      ABuiltInMenu.Items.Insert(1, NewLine);
      //-------------------------------
{      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Re Assign Task to another Matter';
      AItem.OnClick := ReassignTasktoMatter;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(2, AItem);
      ABuiltInMenu.Items.Insert(3, NewLine); }
      //-----------------------------------------
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Attach Document to Task';
      AItem.OnClick := AttachTaskDocument;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(4, AItem);
      ABuiltInMenu.Items.Insert(5, NewLine);
      //-----------------------------------------
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Merge Document(s)';
      AItem.OnClick := MergeTaskDocument;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(4, AItem);
      ABuiltInMenu.Items.Insert(5, NewLine);
{
      //-----------------------------------------
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Link Task';
      AItem.OnClick := LinkTask;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(6, AItem);
      ABuiltInMenu.Items.Insert(7, NewLine);
  }
      //-----------------------------------------
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Complete Task';
      AItem.OnClick := CompleteTask;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(6, AItem);
      ABuiltInMenu.Items.Insert(7, NewLine);

   end;
end;

procedure TfrmMatters.cxSchedulerGridConnection1NewEvent(
  Sender: TcxSchedulerGridConnection; var AEvent: TcxSchedulerControlEvent;
  var AHandled: Boolean);
var
   ARate: Currency;
begin
//   AHandled := True;
   AEvent.SetCustomFieldValueByName('FILEID', qryMatter.FieldByName('FILEID').AsString);
   AEvent.SetCustomFieldValueByName('AUTHOR', qryMatter.FieldByName('AUTHOR').AsString);
   ARate := FeeRate('N', qryMatter.FieldByName('FILEID').AsString, qryMatter.FieldByName('AUTHOR').AsString, now);
   AEvent.SetCustomFieldValueByName('RATE', ARate);
   AEvent.SetCustomFieldValueByName('NPROJECTTEMPL', tvProjectsNPROJECTTEMPL.EditValue);
end;

procedure TfrmMatters.cxTabSheet16Show(Sender: TObject);
begin
   ResizeTabGraph;
end;

procedure TfrmMatters.CompleteTask(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   eventID: variant;
begin
   try
      eventID := tvProjectTaskItems.Controller.FocusedRecord.Values[tvProjectTaskItemscxGridColumn47.Index];

      eEvent := ProjSchedulerDBStorage.GetEventByID(eventID);

      if (eEvent <> nil) and (VarIsNull(eEvent.GetCustomFieldValueByName('NSCALECOST')) = False) then
      begin
         try
            qryScalecostDocCount.Close;
            qryScalecostDocCount.ParamByName('nscalecost').AsInteger := eEvent.GetCustomFieldValueByName('NSCALECOST');
            qryScalecostDocCount.Open;
            if (qryScalecostDocCount.FieldByName('doc_count').AsInteger > 0) then
            begin
               if VarIsNull(eEvent.GetCustomFieldValueByName('NSCALECOST')) = False then
               begin
                  if(not Assigned(FWorkFlowMergeDocument)) then
                     FWorkFlowMergeDocument                  := TfmWorkFlowMergeDocument.Create(Application);

                  FWorkFlowMergeDocument.DocIDProject        := eEvent.GetCustomFieldValueByName('NSCALECOST');
                  FWorkFlowMergeDocument.ShowNoTaskDocuments := True;
                  FWorkFlowMergeDocument.NMatter             := eEvent.GetCustomFieldValueByName('NMATTER');
                  FWorkFlowMergeDocument.WorkFlow            := '';
                  FWorkFlowMergeDocument.Task                := nil;
                  FWorkFlowMergeDocument.OnClose             := MergeFormClose;
                  FWorkFlowMergeDocument.UpdateWindowEvent   := OnUpdateWindowEvent;

                  dmAxiom.qryTmp.SQL.Text := 'select DOCID, DOCTYPE from workflowdoctemplates where '+
                                             'DOCID = :DOCID ';

                  FWorkFlowMergeDocument.ShowModal();
               end;
            end;
            qryScalecostDocCount.Close;
         except
            on E: exception do
            begin
               MessageDlg(E.Message, mtError, [mbOK], 0);
               FreeAndNil(FWorkFlowMergeDocument);
            end;
         end;
         eEvent.BeginEditing;
         eEvent.SetCustomFieldValueByName('TASK_COMPLETED', 100);
//         eEvent.SetCustomFieldValueByName('CREATED', NOW());
         eEvent.EndEditing;
         eEvent.Post;
         ProjSchedulerDBStorage.DataSource.DataSet.Refresh;

         qryCompleteTask.Close;
         qryCompleteTask.ParamByName('uniqueid').AsInteger := eEvent.GetCustomFieldValueByName('UNIQUEID');
         qryCompleteTask.Prepare;
         qryCompleteTask.Execute;
      end;
   finally
      CreateGantt;
   end;
end;

procedure TfrmMatters.MergeTaskDocument(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   eventID: variant;
begin
   eventID := tvProjectTaskItems.Controller.FocusedRecord.Values[tvProjectTaskItemscxGridColumn47.Index];

   eEvent := ProjSchedulerDBStorage.GetEventByID(eventID);

   if (eEvent <> nil) and (VarIsNull(eEvent.GetCustomFieldValueByName('NSCALECOST')) = False)  then
   begin
      try
         if VarIsNull(eEvent.GetCustomFieldValueByName('NSCALECOST')) = False then
         begin
            if(not Assigned(FWorkFlowMergeDocument)) then
               FWorkFlowMergeDocument                  := TfmWorkFlowMergeDocument.Create(Application);

            FWorkFlowMergeDocument.DocIDProject        := eEvent.GetCustomFieldValueByName('NSCALECOST');
            FWorkFlowMergeDocument.ShowNoTaskDocuments := True;
            FWorkFlowMergeDocument.NMatter             := eEvent.GetCustomFieldValueByName('NMATTER');
            FWorkFlowMergeDocument.WorkFlow            := '';
            FWorkFlowMergeDocument.Task                := nil;
            FWorkFlowMergeDocument.OnClose             := MergeFormClose;
            FWorkFlowMergeDocument.UpdateWindowEvent   := OnUpdateWindowEvent;

            dmAxiom.qryTmp.SQL.Text := 'select DOCID, DOCTYPE from workflowdoctemplates where '+
                                       'DOCID = :DOCID ';
            FWorkFlowMergeDocument.ShowModal();
         end;
      except
         on E: exception do
         begin
            MessageDlg(E.Message, mtError, [mbOK], 0);
            FreeAndNil(FWorkFlowMergeDocument);
         end;
      end;
   end;
end;

procedure TfrmMatters.ReAssignTask(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   selectCode,
   eventID: variant;
   AEmpRate: double;
begin
   try
      if not FormExists(fmEmployeeFindDialog) then
         fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(self);

      if fmEmployeeFindDialog.ShowModal = mrOK then
      begin
         selectCode := fmEmployeeFindDialog.lbEmployees.EditValue;

         eventID := tvProjectTaskItems.Controller.FocusedRecord.Values[tvProjectTaskItemscxGridColumn47.Index];

         eEvent := ProjSchedulerDBStorage.GetEventByID(eventID);
         AEmpRate := FeeRate('N', eEvent.GetCustomFieldValueByName('FILEID') , selectCode, eEvent.GetCustomFieldValueByName('CREATED'));

         if eEvent <> nil then
         begin
            eEvent.BeginEditing;
            eEvent.SetCustomFieldValueByName('AUTHOR', selectCode);
            eEvent.SetCustomFieldValueByName('RATE', AEmpRate);
            eEvent.EndEditing;
            eEvent.Post;
            ProjSchedulerDBStorage.DataSource.DataSet.Refresh;
         end;
      end;
   finally
      CreateGantt;
   end;
end;

procedure TfrmMatters.AttachTaskDocument(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   eventID: variant;
   fmPrecedentSearch: TfrmPrecedentSearch;
begin
   eventID := tvProjectTaskItems.Controller.FocusedRecord.Values[tvProjectTaskItemscxGridColumn47.Index];

   eEvent := ProjSchedulerDBStorage.GetEventByID(eventID);

   if (eEvent <> nil) then
   begin
      try
         fmPrecedentSearch := TfrmPrecedentSearch.Create(Self);
         with fmPrecedentSearch do
         begin
            dmAxiom.qryPrecedentList.Open;
            if ShowModal = mrOk then
            begin
               eEvent.BeginEditing;
               eEvent.SetCustomFieldValueByName('PREC_ID', tvPrecedentListDOCID.EditValue);
               eEvent.EndEditing;
               eEvent.Post;
               ProjSchedulerDBStorage.DataSource.DataSet.Refresh;
            end;
         end;
      finally
         FreeAndNil(fmPrecedentSearch);
      end;
   end;
end;


procedure TfrmMatters.tabPartiesPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
var
  LResult: Integer;
begin
  if(pageMatter.ActivePage = tabFields) then
  begin
    if(aDataFormsPost.Enabled) then
    begin
      LResult := MessageDlg('You have modified data on this page and have not saved.'#13#10'Do you want to save before leaving this page?', mtWarning, [mbYes,mbNo,mbCancel], 0);
      case LResult of
        mrYes: aDataFormsPost.Execute();
        mrNo:  aDataFormsCancel.Execute();
        else
          AllowChange := False;
      end;
    end;
  end;

end;

procedure TfrmMatters.tabReceiptReqsShow(Sender: TObject);
begin
   with qryReceiptReqs do
   begin
      Close;
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      Open;
   end;
end;

procedure TfrmMatters.rgDisplayOptionClick(Sender: TObject);
begin
   UpdateDebtorNotes;
end;

procedure TfrmMatters.chkExcludeBillReversalsClick(Sender: TObject);
begin
   if chkExcludeBillReversals.Checked then
      qryInvoices.Filtered := True
   else
      qryInvoices.Filtered := False;
end;

procedure TfrmMatters.btnExportReceiptsToExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrReceipts, True, True,True,'xls');
   end;
end;

procedure TfrmMatters.btnPrintGridClick(Sender: TObject);
begin
   try
      compPrnTimePie.Active := True;
      compPrnFeePie.Active := True;
      dxComponentPrinter1.Preview();
   finally
      compPrnTimePie.Active := False;
      compPrnFeePie.Active := False;
   end;
end;

procedure TfrmMatters.cxBarEditItem1PropertiesEditValueChanged(Sender: TObject);
begin
   if Boolean(chkDataFormsExpanded.EditValue) = True then
      vtMatterData.FullExpand
   else
      vtMatterData.FullCollapse();
   SettingSaveBoolean('MatterData','Expanded', Boolean(chkDataFormsExpanded.EditValue));
end;

procedure TfrmMatters.cxButton2Click(Sender: TObject);
begin
   try
      with qryReceiptRpt do
      begin
         Close;
         ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         Open;
      end;
   finally
      rptReceipt.Print;
      qryReceiptRpt.Close;
   end;
end;

procedure TfrmMatters.cxButton3Click(Sender: TObject);
begin
   try
      with qryMatterAuthor do
      begin
         Close;
         ParamByName('FILEID').AsInteger := qryMatter.FieldByName('FILEID').AsInteger;
         Open;
      end;
   finally
      rptMatterAuthor.Print;
   end;
end;

procedure TfrmMatters.btnGenerateQuoteClick(Sender: TObject);
var
   lTemplateCode: string;
   frmGenericSearch : TfrmGenericSearch;
begin
   frmGenericSearch := TfrmGenericSearch.Create(Self);
   with frmGenericSearch do
   begin
      tvLookupDEFAULTITEM.Visible := True;
      SQL := 'SELECT CODE, DESCR, DEFAULTBILL AS DEFAULTITEM, ITEM_BILL FROM BILLTEMPLATE WHERE QUOTE = ''Y'' ORDER BY CODE';
      if ShowModal = mrOK then
      begin
         lTemplateCode := frmGenericSearch.qrySource.FieldByName('CODE').AsString;
         if VarIsNull(tvProjectsNPROJECTTEMPL.EditValue) = False then
            InvoiceMerge(tvProjectsNPROJECTTEMPL.EditValue, qryMatter.FieldByName('NMATTER').AsInteger, True, True, False, True, lTemplateCode);
      end;
   end;
end;

procedure TfrmMatters.edDocSearchPropertiesChange(Sender: TObject);
begin
   tmrDocSearch.Enabled := True;
end;

procedure TfrmMatters.FormResize(Sender: TObject);
begin
   Self.Invalidate
end;

procedure TfrmMatters.aContactEmailExecute(Sender: TObject);
var
   LData: PContactData;
   em_subject, em_mail:  string;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      if(Assigned(vtContacts.FocusedNode)) then
      begin
         LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
         em_subject := 'Our Ref #' + qryMatter.FieldByName('FILEID').AsString;

         em_mail := 'mailto:'+LData.Email+'?subject=' + em_subject;
         ShellExecute(Handle,'open',PChar(em_mail),nil,nil,SW_SHOWNORMAL);
      end;
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;


procedure TfrmMatters.aContactEmailUpdate(Sender: TObject);
var
  LData: PContactData;
begin
  if(Assigned(vtContacts.FocusedNode)) then
  begin
    LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
    TAction(Sender).Enabled := (LData.Email <> '');
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfrmMatters.aProjectExecute(Sender: TObject);
var
  LMT: TfrmProjectMatter;
  LNMatter: Integer;
begin
  LNMatter := qryMatter.FieldByname('NMatter').AsInteger;

  Application.CreateForm(TfrmProjectMatter, LMT);
  LMT.NMatter := LNMatter;
  LMT.Show;
end;

procedure TfrmMatters.aProjectUpdate(Sender: TObject);
begin
   if qryMatter.Active then
      aProject.Enabled := qryMatter.FieldByName('CLOSED').AsInteger = 0;
end;

procedure TfrmMatters.actRelateExecute(Sender: TObject);
begin
  if not qryMatterParty.IsEmpty then
    TfrmMatterPartyRelate.Create(Self).NMatter := qryMatter.FieldByName('NMATTER').AsInteger;
end;

procedure TfrmMatters.actRelateUpdate(Sender: TObject);
begin
   actRelate.Enabled := (qryMatterParty.IsEmpty = False);
end;

procedure TfrmMatters.tmrAutocostTimer(Sender: TObject);
var
  iTmp,
  iUnits: integer;
begin
   if qryFeeTmp.Active then
   begin
      qryFeeTmp.Edit;
      if qryFeeTmp.FieldbyName('ELAPSED').IsNull then
      begin
         if qryFeeTmp.FieldbyName('UNITS').AsInteger > 1 then
            qryFeeTmp.FieldbyName('ELAPSED').AsInteger := (qryFeeTmp.FieldbyName('UNITS').AsInteger * SystemInteger('TIME_UNITS'))*60
         else
            qryFeeTmp.FieldbyName('ELAPSED').AsInteger := 0;
      end;
      qryFeeTmp.FieldbyName('ELAPSED').AsInteger := qryFeeTmp.FieldbyName('ELAPSED').AsInteger + 1;

      iTmp := qryFeeTmp.FieldbyName('ELAPSED').AsInteger div 60;
      if iTmp > 0 then
         iTmp := qryFeeTmp.FieldbyName('ELAPSED').AsInteger mod 60;

      if (not qryFeeTmp.FieldbyName('UNITS').IsNull) and
         (qryFeeTmp.FieldbyName('UNITS').AsInteger <> 0 ) then
         iUnits := qryFeeTmp.FieldbyName('UNITS').AsInteger
      else
         iUnits := 1;

      if (iMinsPerUnit > 0) then
         iUnits := {FOrigUnits + } (((qryFeeTmp.FieldbyName('ELAPSED').AsInteger div 60) div iMinsPerUnit));

      if (qryFeeTmp.FieldbyName('ELAPSED').AsInteger mod 60) > 0 then
         iUnits := iUnits + 1;

      if qryFeeTmp.FieldbyName('UNITS').AsInteger <> iUnits then
      begin
         qryFeeTmp.Edit;
         qryFeeTmp.FieldbyName('UNITS').AsInteger := iUnits;
//         btnSave.Click;
      end;
      if (frmDesktop.btnAutoTimer.Down = False) then
      begin
         tmrAutocost.Enabled := False;
         btnAutoTimer.Hint := 'Start Auto Timer';
      end;
   end;
   CalcStatusBar;
end;

procedure TfrmMatters.CalcStatusbar;
var
  iTotalElapsed : integer;
  iHours, iMins, iSecs, iUnits : integer;
  sElapsed : string;
  cAmount : currency;
begin
  cAmount := 0;
  iTotalElapsed := 0;
    begin
//      for iCtr := 0 to (qryFeeTmp.RecordCount - 1) do
//      begin
        iUnits := qryFeeTmp.FieldbyName('UNITS').AsInteger;
        iTotalElapsed := iTotalElapsed + qryFeeTmp.FieldbyName('ELAPSED').AsInteger;
        //if (rTimers[iCtr].sType = 'N') and (iMinsPerUnit > 0) then
        if (iMinsPerUnit > 0) then
          iUnits := {FOrigUnits + }(((iTotalElapsed div 60) div iMinsPerUnit));
        cAmount := cAmount + CalcAmount2(iTotalElapsed, qryFeeTmp.FieldbyName('RATE').AsInteger, '');
//      end;

      if (iTotalElapsed mod 60) > 0 then
         iUnits := iUnits + 1;

 //     sElapsed := 'Total Time = ';
      // Do the minutes
      iMins := iTotalElapsed div 60;
      if iMins > 0 then
      begin
        if iMins > 59 then
        begin
          iHours := iMins div 60;
          iMins := iMins mod 60;
          if iHours = 1 then
            sElapsed := '01: '
          else
          begin
            if iHours < 10 then
               sElapsed := '0'+IntToStr(iHours)+':'
            else
               sElapsed := '0'+IntToStr(iHours)+':'
          end;
        end
        else
        if iMins < 10 then
          sElapsed := '00:';
      end
      else
         sElapsed := '00:';

      if iMins < 10 then
        sElapsed := sElapsed + '0'+ IntToStr(iMins) + ':'
      else
        sElapsed := sElapsed + IntToStr(iMins) + ':';
      // and now the seconds
      iSecs := iTotalElapsed mod 60;
      if iSecs < 10 then
        sElapsed := sElapsed + '0'+ IntToStr(iSecs)
      else
        sElapsed := sElapsed + IntToStr(iSecs);

      frmDesktop.lblTimer.Caption := qryMatter.FieldByName('FILEID').AsString +' - '+ sElapsed;

      qryFeeTmp.FieldbyName('ELAPSED').AsInteger := iTotalElapsed;
      frmMatters.Caption := AFormCaption + ' - ' + sElapsed;
      frmDesktop.pageForms.ActivePage.Caption := AFormCaption + ' - ' + sElapsed;

  end;
end;

procedure TfrmMatters.tmrDocSearchTimer(Sender: TObject);
begin
   tmrDocSearch.Enabled := False;
   MakeDocSearch;
end;

procedure TfrmMatters.MakeDocSearch;
var
   Node: PVirtualNode;
begin
   with qryDocs do
   begin
      qryDocVersions.Close;
      qryDocChildren.Close;
      Close;
      Sql.Clear;
      Sql.Text := 'SELECT docidver AS docidver, docid, nmatter nmatter, ' +
                  'doc_name doc_name, d_create d_create, system_date, auth1 auth1,' +
                  'd_modif d_modif, PATH PATH, descr descr,' +
                  'fileid fileid, doc_code doc_code,' +
                  'imageindex imageindex, file_extension file_extension,' +
                  'email_sent_to email_sent_to, ''DATAFILEPATH'', NULL AS dataform, ' +
                  'NULL AS templatelineid, ''FROMDOC'' AS SOURCE, auth2 auth2,' +
                  'display_path display_path, url url,' +
                  ' preccategory, precclassification, '+
                  'external_access external_access, doc_notes doc_notes,' +
                  'email_from email_from, ot_version ot_version, parentdocid ' +

                  ' from '+
                  '(SELECT docidver AS docidver, docid, nmatter nmatter, ' +
                  'doc_name doc_name, d_create d_create, system_date, auth1 auth1,' +
                  'd_modif d_modif, PATH PATH, descr descr,' +
                  'fileid fileid, doc_code doc_code,' +
                  'imageindex imageindex, file_extension file_extension,' +
                  'email_sent_to email_sent_to, ''DATAFILEPATH'', NULL AS dataform, ' +
                  'NULL AS templatelineid, ''FROMDOC'' AS SOURCE, auth2 auth2,' +
                  'display_path display_path, url url,' +
                  'tablevalue (''preccategory'', ''npreccategory'', NVL (npreccategory, 0), ''descr'')  AS preccategory, '+
                  'tablevalue (''precclassification'',''nprecclassification'',NVL (nprecclassification, 0),''descr'') AS precclassification, '+
                  'external_access external_access, doc_notes doc_notes,' +
                  'email_from email_from, ot_version , parentdocid, ' +
                  ' max(ot_version) over (partition by parentdocid) max_ot_version ' +
                  'FROM DOC '+
                  ' WHERE nmatter = :nmatter '+
                  ' AND is_attachment = ''N'' '+
                  '  AND CASE '+
                  '         WHEN (:folder_id = -2) '+
                  '            THEN 1  '+                                         // all filess
                  '         WHEN (:folder_id = -1) AND (folder_id IS NULL) '+
                  '            THEN 1 '+                                  // unallocated files
                  '         WHEN (:folder_id > 0) AND (folder_id = :folder_id) '+
                  '            THEN 1 '+
                  '         ELSE 0 '+
                  '      END = 1 ';
//                  'and nvl(parentdocid,0) = 0';
      if edDocSearch.Text <> '' then
         SQL.Text := Sql.Text + ' and CONTAINS(dummy,'+ QuotedStr('%'+ edDocSearch.Text + '%') + ', 1) > 0 ';
      SQL.Text := SQL.Text + ')';
      SQL.Text := SQL.Text + ' where ot_version = max_ot_version ';
//      Sql.Text := Sql.Text + ' GROUP BY docid, parentdocid ';
      Sql.Text := Sql.Text + ' order by 6 desc, 4 ';
      ParamByName('NMATTER').AsString := qryMatter.FieldByName('NMATTER').AsString;
      ParamByName('FOLDER_ID').AsInteger := -2;
      try
         qryDocChildren.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocChildren.Open;

         qryDocVersions.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryDocVersions.Open;

         Open;
//         Node := lvFolders.GetFirst;
//         lvFolders.Selected[Node] := True;
      except
      //
      end;
      if cbGroupExpanded.Checked then
         dbgrDocs.FocusedView.DataController.Groups.FullExpand;
   end;
end;

procedure TfrmMatters.tvEmailAttachmentsDblClick(Sender: TObject);
var
   bStream: TStream;
   tmpFileName: string;
   Msg : IRwMapiMessage;
//   FormMgr : IRwMapiFormMgr;
   FormRect: TRect;
   OldCursor: TCursor;
//   MsgForm: TFrmMessage;
   ARowIndex, SelRec, SelRec1: integer;
   MsgStore: IRwMapiMsgStore;
   Folder  : IRwMapiFolder;
   SiteStatus, ViewStatus: Integer;
   MsgClass: string;
   RandFile,
   DocErrMsg: string;
   ADataSet: TDataSet;
   AHandle: THandle;
begin
//   SaveSelectedItems;
   AHandle := 0;
   with qryDocChildren do
   begin
      if (not IsEmpty) then
      begin
         if (not FieldByName('URL').IsNull) then
         begin
            AHandle := ExecuteFile(FieldByName('URL').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
            if AHandle <= 32 then
               MsgInfo('Unable to open Link. The Link may no longer exist.');
            UpdateModBy(InttoStr(SelRec));
         end
         else
         if FieldByName('PATH').IsNull then
         begin
            SelRec := FieldByName('DOCID').AsInteger;
            qrySingleDoc.Close;
            qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
            qrySingleDoc.Open;
            Randomize;
            RandFile := IntToStr(RandomRange(100, 100000));
            bStream := qrySingleDoc.CreateBlobStream(qrySingleDoc.FieldByName('DOCUMENT'),bmRead);
            try
               if ExtractFileExt(qrySingleDoc.FieldByName('DOC_NAME').AsString) = '' then
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + qrySingleDoc.FieldByName('DOC_NAME').AsString + '.'+ qrySingleDoc.FieldByName('file_extension').AsString
               else
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + qrySingleDoc.FieldByName('DOC_NAME').AsString;

               if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ 'axeml' + RandFile + '.msg';
               // in case file still sitting in tmp directory
               DeleteFile(tmpFileName);

               bStream.Seek(0, soFromBeginning);

               with TFileStream.Create(tmpFileName, fmCreate) do
               try
                  CopyFrom(bStream, bStream.Size)
               finally
                  Free
               end;
            finally
               bStream.Free
            end;
            if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
            begin
               if not dmAxiom.MapiSession.Active then
               begin
                  OldCursor := Screen.Cursor;
                  Screen.Cursor := crHourGlass;
                  try
                     dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                     dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;  //'Outlook';
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
               try
                  Msg := dmAxiom.MapiSession.OpenDefaultMsgStore.OpenSavedMessage(tmpFileName);
//                  Msg.DisplayProperties;
                  begin
                     MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
                     Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
                     // Display the message in a Form Manager form.

                     FormMgr.ShowMessage(Msg{,FormRect});
                  end;
                  DeleteFile(tmpFileName);
               except
                  // error
               end;
           end
           else
           begin
              ExecuteFile(tmpFileName, '', '.', SW_SHOWNORMAL, DocErrMsg);
              UpdateModBy(InttoStr(SelRec));
              ReopenListUpdate('DOCUMENT', qryDocChildren.FieldByName('DOCID').AsString);
           end;
         end
         else
         begin
            try
               AHandle := ExecuteFile(qryDocChildren.FieldByName('PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
               if AHandle < 33 then
                  AHandle := ExecuteFile(qryDocChildren.FieldByName('Display_PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
                  if AHandle < 33 then
                     MsgInfo('Unable to open Document. - '+DocErrMsg);
            finally
               if AHandle >= 33 then
               begin
                  UpdateModBy(InttoStr(SelRec));
                  ReopenListUpdate('DOCUMENT', qryDocChildren.FieldByName('DOCID').AsString);
               end;
            end;
         end;
      end;
      Refresh; // Close;
//      RestoreSelectedItems;
   end;
end;

procedure TfrmMatters.tvDocsCustomization(Sender: TObject);
begin
   btnCreateBrief.Enabled := (tvDocsPRINT.Visible = True);
end;

procedure TfrmMatters.tvDocsDataControllerGroupingChanged(Sender: TObject);
begin
   if cbGroupExpanded.Checked then
      dbgrDocs.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfrmMatters.PrintFeeDistributionGraph1Click(Sender: TObject);

begin
  dxComponentPrinter2.CurrentLink := compPrnFeePie;
  dxComponentPrinter2.PrintTitle := 'Fee Distribution';
  dxComponentPrinter2.Preview();
end;

procedure TfrmMatters.MenuItem2Click(Sender: TObject);
begin
  dxComponentPrinter2.CurrentLink := compPrnTimePie;
  dxComponentPrinter2.PrintTitle := 'Time Distribution';
  dxComponentPrinter2.Preview();
end;

procedure TfrmMatters.ViewAttacheInvoice;
var
   sFileName: string;
   OpenFileErr: integer;
begin
  if qryInvoices.fieldByname('PATH').IsNull then
    exit;

  // load the image in external application
  sFileName := qryInvoices.fieldByname('PATH').AsString;
  OpenFileErr := ShellExecute(Handle,'open',PChar(sFileName),nil,nil,SW_SHOWNORMAL);
  if OpenFileErr = SE_ERR_NOASSOC then
     MsgInfo('There is no application associated with the given filename extension.');

end;


procedure TfrmMatters.btnViewBillClick(Sender: TObject);
begin
   ViewAttacheInvoice;
end;

procedure TfrmMatters.qryArchiveLocationAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
   DataSet.FieldByName('created').AsDateTime := Now();
   qryMatter.Edit;
end;

procedure TfrmMatters.qryArchiveLocationBeforePost(DataSet: TDataSet);
begin
   DataSet.FieldByName('narch_loc').AsInteger   := GetSequenceNumber('SEQ_ARCH_LOC');
   DataSet.FieldByName('nmatter').AsInteger     := qryMatter.FieldByName('nmatter').AsInteger;
end;

procedure TfrmMatters.qryControlledTotalAfterOpen(DataSet: TDataSet);
begin
//   dxBDepositEdit.Enabled := (not DataSet.fieldByName('ndepositAccount').IsNull);
   dxbReceipt.Enabled := (not DataSet.fieldByName('ndepositAccount').IsNull) and dmaxiom.Security.Matter.ControlledMonies.CanAddDeposit;
end;

procedure TfrmMatters.qryControlledTotalAfterScroll(DataSet: TDataSet);
begin
   qryInvestmentTransactions.Close;
   qryInvestmentTransactions.ParamByName('ndepositaccount').AsInteger := DataSet.FieldByName('ndepositaccount').AsInteger;
   qryInvestmentTransactions.Open;
end;

procedure TfrmMatters.qryArchiveLocationAfterEdit(DataSet: TDataSet);
begin
   qryMatter.Edit;
end;

procedure TfrmMatters.tvDebtorNotesCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnEditDebtorNotes.Click;
end;

procedure TfrmMatters.btnSendSMSClick(Sender: TObject);
var
   frmSendSMS: TfrmSendSMS;
   LMobile, LFileID: string;
   blobF : TBlobField;
   bs : TStream;
begin
   if SystemString('sms_reg') = C_SMSPASSWORD then
   begin
      if (SystemString('sms_url') <> '') then
      begin
         LMobile := PhonebookString(qryMatter.FieldByName('NNAME').AsInteger, 'mobile');
         LFileID := qryMatter.FieldByName('FILEID').AsString;
         if (LMobile <> '') then
         begin
            frmSendSMS := TfrmSendSMS.Create(Self);
            try
               frmSendSMS.ARecipient := LMobile;
               frmSendSMS.AFileID := LFileID;
               if frmSendSMS.ShowModal = mrOK then
               begin
                  with qryPopDetails do
                  begin
                    Open;
                    Insert;
                    ParamByName('docid').AsInteger := FDocID;

                    FieldByName('DOC_NAME').AsString := 'SMS - ' + LMobile;
                    FieldByName('SEARCH').AsString := 'SMS - ' + LMobile;
                    FieldByName('FileID').AsString := qryMatter.FieldByName('FILEID').AsString;
                    FieldByName('AUTH1').AsString := dmAxiom.UserID;
                    FieldByName('DESCR').AsString := 'SMS - ' + LMobile;
                    FieldByName('NMATTER').AsString := qryMatter.FieldByName('NMATTER').AsString;
                    FieldByName('KEYWORDS').AsString := 'SMS';
                    FieldByName('DOC_NOTES').AsString := 'SMS - ' + LMobile;

                    FieldByName('EXTERNAL_ACCESS').AsString := 'N';

                    FieldByName('FILE_EXTENSION').AsString := 'txt';

                    blobF := qryPopDetails.FieldByName('DOCUMENT') as TBLobField;
                    bs := qryPopDetails.CreateBlobStream(blobF, bmWrite) ;
                    try
                       frmSendSMS.memoMessage.Lines.SaveToStream(bs);
                    finally
                       FieldByName('IMAGEINDEX').AsInteger := 7;
                       Post;
                       close;
                       blobF.Free;
                       bs.Free;
                    end;
                  end;
               end;
            finally
               frmSendSMS.Free;
            end;
         end
         else
            MsgInfo('Mobile Number not setup.');
      end
      else
         MsgInfo('SMS not setup.');
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;

procedure TfrmMatters.qryPopDetailsNewRecord(DataSet: TDataSet);
begin
   qryGetSeq.ExecSQL;
   FDocID := qryGetSeq.FieldByName('nextdoc').AsInteger;
   DataSet.FieldByName('docid').AsInteger := FDocID;
end;

procedure TfrmMatters.SendSMS1Click(Sender: TObject);
var
   LData: PContactData;
   frmSendSMS: TfrmSendSMS;
   LMobile, LFileID: string;
   blobF : TBlobField;
   bs : TStream;
begin
   if SystemString('sms_reg') = C_SMSPASSWORD then
   begin
      if(not Assigned(vtContacts.FocusedNode)) then
         Exit;
      LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
      if(LData.NName < 0) then
         Exit;

      if (SystemString('sms_url') <> '') then
      begin
         LMobile := LData.MobilePhone;  //   PhonebookString(qryMatter.FieldByName('SEARCH').AsString, 'mobile');
         LFileID := qryMatter.FieldByName('FILEID').AsString;
         if (LMobile <> '') then
         begin

           frmSendSMS := TfrmSendSMS.Create(Self);
            try
               frmSendSMS.ARecipient := LMobile;
               frmSendSMS.AFileID := LFileID;
               if frmSendSMS.ShowModal = mrOK then
               begin
                  with qryPopDetails do
                  begin
                    Open;
                    Insert;
                    ParamByName('docid').AsInteger := FDocID;

                    FieldByName('DOC_NAME').AsString := 'SMS - ' + LMobile;
                    FieldByName('SEARCH').AsString := 'SMS - ' + LMobile;
                    FieldByName('FileID').AsString := qryMatter.FieldByName('FILEID').AsString;
                    FieldByName('AUTH1').AsString := dmAxiom.UserID;
                    FieldByName('DESCR').AsString := 'SMS - ' + LMobile;
                    FieldByName('NMATTER').AsString := qryMatter.FieldByName('NMATTER').AsString;
                    FieldByName('KEYWORDS').AsString := 'SMS';
                    FieldByName('DOC_NOTES').AsString := 'SMS - ' + LMobile;

                    FieldByName('EXTERNAL_ACCESS').AsString := 'N';

                    FieldByName('FILE_EXTENSION').AsString := 'txt';

                    blobF := qryPopDetails.FieldByName('DOCUMENT') as TBLobField;
                    bs := qryPopDetails.CreateBlobStream(blobF, bmWrite) ;
                    try
                       frmSendSMS.memoMessage.Lines.SaveToStream(bs);
                    finally
                       FieldByName('IMAGEINDEX').AsInteger := 7;
                       Post;
                       close;
                       blobF.Free;
                       bs.Free;
                    end;
                  end;
               end;
            finally
               frmSendSMS.Free;
            end;
         end
         else
            MsgInfo('Mobile Number not setup.');
      end
      else
         MsgInfo('SMS not setup.');
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;

procedure TfrmMatters.btnEmailBillClick(Sender: TObject);
var
   OldCursor: TCursor;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   AAttachList,
   AAttachDocID,
   ARecipientsList: TStringList;
   sSubject,
   tmpFileName: string;
   Msg: IRwMAPIMailMessage;
   i: integer;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      FAttachDoc := True;
      AAttachDocID := TStringList.Create;
      AAttachList := GetAttachbillFile(AAttachDocID);
      ARecipientsList := TStringList.Create;
      GetEmailAddresses(ARecipientsList, qryMatter.FieldByName('nclient').AsInteger);

            // if outlook not running, start it
      if IsObjectActive('Outlook.Application') = False then
         CreateOleObject('Outlook.Application');

      if (dmAxiom.MapiSession.Active = False) then
      begin
         WriteLog('EmailBillClick: Establishing MAPI session ');
         OldCursor := Screen.Cursor;
         Screen.Cursor := crHourGlass;
         try
            try
                dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;    //'Outlook';
                dmAxiom.MapiSession.LogonInfo.Password           := '';
                dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                dmAxiom.MapiSession.LogonInfo.NewSession         := False;
                dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := False;
                dmAxiom.MapiSession.Active                       := True;
            except on e:exception do
	              WriteLog('Failed to establish MAPI session: ' + e.message);
            end;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

      try
         begin
            // dw 20 Sep 2018 handle where user does not select an email
            if (AAttachList = nil) then
                 exit;
            // dw 19 sep 2018 assign in isolated method
            WriteLog('There are attachments to send ');

            FAttachFileName.text := AAttachList.text;
            FRecipientsList.text := ARecipientsList.text;
            try
               MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore(alReadWrite, False);
            except on e:exception do
               WriteLog('Formgr failed to send message: ' + e.message);
            end;
            try
               // 07 Mar 2017 DW open folder offline for O365 issue
               Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite, False);
            except on e:exception do
               WriteLog('Formgr failed to send message: ' + e.message);
            end;

            Msg := Folder.CreateMessage('IPM.Note') As IRwMapiMailMessage;

            if SystemString('BILL_EMAIL_SUBJECT') <> '' then
               FBillSubject := ParseMacros(SystemString('BILL_EMAIL_SUBJECT'),qryMatter.FieldByName('nmatter').AsInteger, -1, '', integer(tvInvoicesNMEMO.EditValue))
            else
               FBillSubject := dmAxiom.EntityName + ' Invoice ' + tvInvoicesREFNO.EditValue;

            Msg.PropByName(PR_SUBJECT).AsString := FBillSubject;
            // create a new message in the drafts folder
//            Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;

{            WriteLog('Message subject is: ' + FBillSubject);
            try
               FormMgr.NewMessage(Folder);
            except on e:exception do
               WriteLog('Formgr failed to send message: ' + e.message);
            end;
 }

            for i := 0 to AAttachList.Count - 1 do
            begin
               if tmpFileName <> '' then
                  tmpFileName := tmpFileName + ',';
               tmpFileName := tmpFileName + ExtractFileName(AAttachList.Strings[i]);
               Msg.AddFileAttachment(AAttachList.Strings[i]);
            end;
            FileAttachList := tmpFileName;

            if ARecipientsList.Count > 0 then
            begin
               try
                  for I := 0 to ARecipientsList.Count - 1 do
                  begin
                     Msg.AddRecipients(ARecipientsList.Strings[i], rtTo, True);
                  end;
               finally
               end;
            end;

//            dmAxiom.qryEmailTemplates.Open;
//            Msg.SetMessageText(dmAxiom.qryEmailTemplates.FieldByName('body_text').AsString, fmtHTML );
//            dmAxiom.qryEmailTemplates.Close;
            Msg.SaveChanges(smKeepOpenReadWrite);

            Msg.ShowForm;
//            FormMgr.ShowMessage(Msg);
         end;
      finally
         if (AAttachList <> nil) then
            AAttachList.Free;
         ARecipientsList.Free;
         //FreeAndNil(FRecipientsList);     dw 19 sept 2018 this gets freed on formclose
         AAttachDocID.Free;
      end;
   end
   else
      MsgInfo(dmAxiom.Registered_Message);
end;

procedure TfrmMatters.dxBarPopupMenuBillsPopup(Sender: TObject);
begin
  btnViewBill.Enabled := (not qryInvoices.fieldByname('PATH').IsNull);
  dxbbtnCreateReceipt.Enabled := (dmAxiom.Security.Receipt.Create and (qryInvoices.FieldByName('Owing').AsInteger > 0));
end;


procedure TfrmMatters.dxBFeeClick(Sender: TObject);
begin
   newTransaction(cniCharge);
end;

function TfrmMatters.GetAttachBillFile(var ADocIDList: TStringList): TStringList;  //string;
var
   tmpFileName: string;
   ARowIndex, SelRec, i: integer;
   AAttachList, LAttachDocID: TStringList;
begin
  Result := nil;
   AAttachList := TStringList.Create;
   LAttachDocID := TStringList.Create;
   if tvInvoices.Controller.SelectedRowCount > 0 then
   begin
      for i :=0 to tvInvoices.Controller.SelectedRowCount - 1 do
      begin
         ARowIndex := tvInvoices.DataController.GetSelectedRowIndex(i);
         tvInvoices.ViewData.Records[ARowIndex].Focused  := True;
         if (not qryInvoices.IsEmpty) then
         begin
            SelRec := qryInvoices.FieldByName('NMEMO').AsInteger;
            with qrySingleDoc do
            begin
               Close;
               SQL.Clear;
               SQL.Text := 'select nmemo.nmemo, nmemo.path from nmemo where nmemo = :nmemo';
               ParamByName('nmemo').AsInteger := SelRec;
               Open;
               tmpFileName := FieldByName('PATH').AsString;
               Close;
            end;
            AAttachList.Add(tmpFileName);
            LAttachDocID.Add(IntToStr(SelRec));
         end;
      end;
      Result := AAttachList;
      ADocIDList := LAttachDocID;
   end;
end;

procedure TfrmMatters.PopulateResearch(mnuReopen: TdxBarSubItem);
var
  iCtr: integer;
  TotalItems: integer;
  menuReopen: TdxBarButton;
  NewItemLink : TdxBarItemLink;
begin
   TotalItems := mnuReopen.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 1 do
      mnuReopen.ItemLinks.Delete(iCtr);

   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM research_list ORDER BY 1';
      Open;

      if not EOF then
      begin
         NewItemLink := mnuReopen.ItemLinks.Add;
         NewItemLink.BeginGroup :=True;
      end;

      while not EOF do
      begin
         menuReopen := TdxBarButton.Create(nil);
         menuReopen.Caption := FieldByName('descr').AsString;
         try
            menuReopen.Tag := FieldByName('ID').AsInteger;
         except
                //
         end;
         menuReopen.OnClick := LoadResearchSite;

         mnuReopen.ItemLinks.Add.Item := menuReopen;
         Next;
      end;
      Close;
   end;
end;

procedure TfrmMatters.LoadResearchSite(Sender: TObject);
var
   AId: integer;
begin
   try
     if (sender is TdxBarButton) then
     begin
        AId := (Sender as TdxBarButton).Tag;
        with dmAxiom.qryTmp do
        begin
           Close;
           SQL.Clear;
           SQL.Text := 'SELECT * FROM research_list where id = :AId ';
           ParamByName('AId').AsInteger := AId;
           Open;
           if (not eof) then
              ShellExecute(Handle, nil, PChar(FieldByName('URL').AsString), nil, nil, SW_SHOWNORMAL);
           Close;
        end;
        SundryInsert(qryMatter.FieldByName('NMATTER').AsInteger,'RESEA',(Sender as TdxBarButton).Caption, 1, 1);
     end;
   except
     //
   end;
end;

procedure TfrmMatters.pbViewBillClick(Sender: TObject);
begin
  ViewAttacheInvoice;
end;

procedure TfrmMatters.btnPrintArchiveLAbelClick(Sender: TObject);
begin
   if not Assigned(MatterLabel) then
      MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
   MatterLabel.ArchiveMode := True;
   if not MatterLabel.Cancelled then
      MatterLabel.Print(qryMatter.FieldByName('NMATTER').AsInteger,'ARCHIVELABEL');
end;

procedure TfrmMatters.pmSMSPopup(Sender: TObject);
var
   LData: PContactData;
begin
   if (not Assigned(vtContacts.FocusedNode)) then
      Exit;
   LData := vtContacts.GetNodeData(vtContacts.FocusedNode);
   SendSMS1.Enabled := (LData.MobilePhone <> '');
end;

procedure TfrmMatters.btnReceiptReqCreateClick(Sender: TObject);
var
  LfrmReceiptReqNew: TfrmReceiptReqNew;
begin
  LfrmReceiptReqNew := TfrmReceiptReqNew.Create(Self);
  LfrmReceiptReqNew.FromMatter := True;
  LfrmReceiptReqNew.DisplayFile(qryMatter.FieldByName('FILEID').AsString);
  LfrmReceiptReqNew.Show;
end;

procedure TfrmMatters.btnReceiptReqEditClick(Sender: TObject);
var
  LfrmReceiptReqNew: TfrmReceiptReqNew;
begin
   if tvReceiptReqs.Controller.SelectedRowCount > 0 then
   begin

      LfrmReceiptReqNew := TfrmReceiptReqNew.Create(Self);
      LfrmReceiptReqNew.FromMatter := True;
      LfrmReceiptReqNew.DisplayFile(qryMatter.FieldByName('FILEID').AsString, tvReceiptReqsNRECEIPTREQ.EditValue);

      LfrmReceiptReqNew.ShowModal;
      qryReceiptReqs.Close;
      qryReceiptReqs.Open;
   end;

end;

procedure TfrmMatters.FormHide(Sender: TObject);
begin
   //SettingSave(dmAxiom.UserID, 'MATTER', 'OPENTAB', pageMatter.ActivePageIndex);
   if (frmDesktop.btnAutoTimer.Down = True) or (Assigned(tmrAutocost) and tmrAutocost.Enabled = True) then
   begin
      tmrAutocost.Enabled := False;
      if qryFeeTmp.State in [dsEdit, dsInsert] then
         qryFeeTmp.Post;
      frmDesktop.lblTimer.Caption := '00:00:00';
      frmDesktop.pnlTimeTrack.Visible := False;
   end;
end;

procedure TfrmMatters.ResetArchivedNumber1Click(Sender: TObject);
var
   iArchive: integer;
begin
  iArchive := 0;
  try
    if cmbArchiveCode.Text <> '' then
    begin
       with qryArchiveType do
       begin
          CLOSE;
          sql.Text := 'SELECT NEXTARCHIVE FROM ARCHIVETYPE WHERE CODE = :CODE';
          ParamByName('CODE').AsString := cmbArchiveCode.EditValue;

          open;
          iArchive := FieldByName('NEXTARCHIVE').AsInteger;
          Close;

          SQL.Text := 'UPDATE ARCHIVETYPE SET NEXTARCHIVE = ' + IntToStr(iArchive + 1) + ' WHERE CODE = :CODE';
          ParamByName('CODE').AsString := cmbArchiveCode.EditValue;
          ExecSQL;
          close;
       end;
    end;
  finally
    qryMatter.Edit;
    qryMatter.FieldByName('ARCHIVENUM').AsInteger := iArchive;
    dxBarDBNavPost1.Click;
  end;
end;

procedure TfrmMatters.btnDocumentImportClick(Sender: TObject);
var
   lfrmSelectDirectory: TfrmSelectDirectory;
   lCat,
   lClass,
   LRetFileCount,
   lFolder: integer;
   bCancelled: boolean;
   CurrDir,
   lFolderName: string;
begin
   CurrDir := GetCurrentDir;
   lfrmSelectDirectory := TfrmSelectDirectory.Create(Self);
   LRetFileCount := -1;
   try
      lfrmSelectDirectory.MatterNo := qryMatter.FieldByName('NMATTER').AsInteger;
      with lfrmSelectDirectory do
      begin
         if (ShowModal = mrOk) then
         begin
            Cursor := crHourGlass;
            bCancelled := False;
            if (VarIsNull(lfrmSelectDirectory.cmbCategory.EditValue))  then
               lCat := -1
            else
               lCat := lfrmSelectDirectory.cmbCategory.EditValue;

            if (VarIsNull(lfrmSelectDirectory.cmbClassification.EditValue))  then
               lClass := -1
            else
               lClass := lfrmSelectDirectory.cmbClassification.EditValue;

            if (VarIsNull(lfrmSelectDirectory.cmbFolderList.EditValue))  then
            begin
               lFolder := -1;
               lFolderName := '';
            end
            else
            begin
               lFolderName := lfrmSelectDirectory.cmbFolderList.Text;
               lFolder := lfrmSelectDirectory.cmbFolderList.EditValue;
            end;

//            Application.ProcessMessages;

            LRetFileCount := DoFileScan(Directory, qryMatter.FieldByName('NMATTER').AsInteger,
                                        lCat, lClass, lFolder, rgCopyDocuments.ItemIndex,
                                        lfrmSelectDirectory.cbEmailSplit.Checked, cbCreateFolders.Checked,
                                        lFolderName);
         end
         else
            bCancelled := True;
      end;
   finally
      SetCurrentDir(CurrDir);
      Application.ProcessMessages;
      lfrmSelectDirectory.Free;
      if qryDocs.state <> dsInactive then
         qryDocs.Refresh;
      Cursor := crDefault;
      dxbtnRefresh.Click;
      if bCancelled = True then
         MsgInfo('File Copy cancelled')
      else
         MsgInfo(IntToStr(LRetFileCount)+ ' Files Copied');
   end;
end;

procedure TfrmMatters.BitBtn2Click(Sender: TObject);
var
   LfrmNotesMatter: TfrmGenEditor; {TfrmNotesMatter;}
begin
   LfrmNotesMatter := TfrmGenEditor.Create(Self);
   // AES 16/09/2009  changed to use nmatter
   LfrmNotesMatter.DisplayMatterNotes(qryMatter.FieldByName('NMATTER').AsInteger);
   if LfrmNotesMatter.ShowModal = mrOK then
      dxbtnRefresh.Click;
   LfrmNotesMatter.Free;
end;

procedure TfrmMatters.BitBtn3Click(Sender: TObject);
//var
//   frmTaskNew: TfrmTaskNew;
begin
{   try
      frmTaskNew := TfrmTaskNew.Create(Self);
      frmTaskNew.FileID := qryMatter.FieldByName('fileid').AsString;
      frmTaskNew.ShowModal;
   finally
      frmTaskNew.Free;
   end; }
end;

procedure TfrmMatters.btnTitleSearchClick(Sender: TObject);
var
   vSearch: TMatterDetails;
   vResult: TMatterDetails;
   vResponse: TResource;
   lResponse,
   lRetURL,
   lURL,
   lUser,
   lPassword,
   NewDocPath,
   AParsedDocName: string;
   List: TStrings;
begin
  vSearch := nil;
   try
      if (dmAxiom.INFOTRACK_USER = '') then
         lUser := SystemString('INFOTRACK_USER')
      else
         lUser := dmAxiom.INFOTRACK_USER;

      if (dmAxiom.INFOTRACK_PASSWORD = '') then
         lPassword := SystemString('INFOTRACK_PASSWORD')
      else
         lPassword := dmAxiom.INFOTRACK_PASSWORD;

      RestClientt.SetCredentials(lUser,lPassword);

      lURL := SystemString('INFOTRACK_URL');
      vSearch := TMatterDetails.NewFrom(qryMatter.FieldByName('fileid').AsString, lUser);
      vResponse := RestClientt.Resource(lURL)
                  .Accept(RestUtils.MediaType_Json)
                  .ContentType(RestUtils.MediaType_Json);


      vResult := vResponse.Post<TMatterDetails>(vSearch);
      lResponse := RestClientt.ResponseRecord;
   finally
      NewDocPath := IncludeTrailingPathDelimiter(SystemString('DRAG_DEFAULT_DIRECTORY'));
      AParsedDocName := ParseMacros(NewDocPath, qryMatter.FieldByName('nmatter').AsInteger);
      if (DirectoryExists(AParsedDocName) = False) then
         ForceDirectories(AParsedDocName);

      if (lResponse <> '') then
      begin
         List := TStringList.Create;
         try
            ExtractStrings([':'], [], PChar(lResponse), List);
            lRetURL := Copy(List[3], 2, length(List[3]) - 3);
         finally
            List.Free;
         end;
      end
      else
         MsgErr('There was an error connecting to the InfoTrack site.');
      vSearch.Free;
   end;
   if (lRetURL <> '') then
      ShellExecute(Handle,'open',PChar(lRetURL),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMatters.btnCreateBriefClick(Sender: TObject);
var
   iCtr : Integer;
   docToConvert,
   LFileDir,
   AParsedDocName,
   aFileDate    : String;
//   gtPDFDocument1: TgtPDFDocument;
   DocStringList: TStrings;
begin
   // Create a document object
   DateTimeToString(aFileDate,'ddmmyyyy',Now);
   LFileDir := SystemString('DRAG_DEFAULT_DIRECTORY');
   LFileDir := IncludeTrailingPathDelimiter(LFileDir) + 'Matter Brief_[docsequence]' + '.pdf';
   AParsedDocName := ParseMacros(LFileDir, qryMatter.FieldByName('NMATTER').AsInteger);

//   gtPDFDocument1 := TgtPDFDocument.Create(Nil);
   DocStringList := TStringList.Create();
   tvDocs.BeginUpdate();
   tvDocs.DataController.FocusedRowIndex := 0;
   for iCtr := 0 to (tvDocs.ViewData.RowCount -1) do
   begin
      tvDocs.ViewData.Records[iCtr].Focused := True;
      if tvDocs.Controller.FocusedRow.IsData then
      begin
         if (tvDocs.ViewData.GetRecordByIndex(iCtr).Values[tvDocsPRINT.Index] = True) then
         begin
            // Load a list with names of the
            // documents that need to be merged
            if (VarIsNull(tvDocsDISPLAY_PATH.EditValue) = False) then
            begin
               docToConvert := tvDocsDISPLAY_PATH.EditValue;
               if (LFileDir = '') then
                  LFileDir := ExtractFileDir(docToConvert);
               DocStringList.Add(ConvertdocToPDF(docToConvert));
            end;
         end;
      end;
   end;
{   if (DocStringList.Count > 0) then
   begin
      try
         // Merge the documents
         gtPDFDocument1.MergeDocs(DocStringList);
         // Save the merged document to file

         gtPDFDocument1.SaveToFile(AParsedDocName);
         gtPDFDocument1.OpenAfterSave := True;
      finally
         gtPDFDocument1.Free;
         SaveDocument(Now, qryMatter.FieldByName('FILEID').AsString, dmAxiom.UserID, AParsedDocName, 'brief','', 5);
      end;
   end;   }
   tvDocs.EndUpdate;
end;

procedure TfrmMatters.FormMgrBeforeSaveMessage(Sender: TObject;
  const MessageSite: IRwMAPIMessageSite);
var
   sSubject: string;
   x, i: integer;
   AFileID, FileID: string;
begin
{   if FAttachDoc then
   begin  }
{     //this was commented out before 7 mar 2019
      try
         AFileID := MessageSite.MapiMessage.PropByName(NPRFILEID).AsString;
      except
         try
            MessageSite.MapiMessage.PropByName(NPRFILEID).AsString := qryMatter.FieldByName('fileid').AsString;
         except
            //
         end;
      end;}

 {     sSubject := MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString;
      for i := 1 to length(sSubject) do
      begin
         if sSubject[i] = '#' then
         begin
            for x := i + 1 to length(sSubject) do
            begin
               if ((sSubject[x] <> ' ') and (sSubject[x] <> ']')) then
                  FileID := FileID + sSubject[x]
               else
                  exit;
            end;
         end;
      end;

      if FileID = '' then
         MessageSite.MapiMessage.PropByName(PR_SUBJECT).Value :=
                      MessageSite.MapiMessage.PropByName(PR_SUBJECT).Value +
                      ' Our Ref #'+AFileID+']';
      MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);
   end;
//   MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);
   MessageSite.Reload;  }
end;

procedure TfrmMatters.FormMgrBeforeSubmitMessage(Sender: TObject;
  const MessageSite: IRwMapiMessageSite);
var
   sSubject: string;
   x, i: integer;
   AFileID, FileID: string;
begin
{   if FAttachDoc then
   begin     }
 {    //this was commented out before 7 mar 2019
      try
         AFileID := MessageSite.MapiMessage.PropByName(NPRFILEID).AsString;
      except
         try
            MessageSite.MapiMessage.PropByName(NPRFILEID).AsString := qryMatter.FieldByName('fileid').AsString;
         except
            //
         end;
      end;
      MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);   }

  {    sSubject := MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString;
      for i := 1 to length(sSubject) do
      begin
         if sSubject[i] = '#' then
         begin
            for x := i + 1 to length(sSubject) do
            begin
               if ((sSubject[x] <> ' ') and (sSubject[x] <> ']')) then
                  FileID := FileID + sSubject[x]
               else
                  exit;
            end;
         end;
      end;

      if FileID = '' then
      begin
         MessageSite.MapiMessage.PropByName(PR_SUBJECT).Value :=
                      MessageSite.MapiMessage.PropByName(PR_SUBJECT).Value +
                      ' Our Ref #'+AFileID+']';
//         MessageSite.MapiMessage.PropByName(NPRFILEID).AsString := qryMatter.FieldByName('fileid').AsString;
      end;
   end;
   MessageSite.Reload; }
end;

procedure TfrmMatters.FormMgrCreateMessage(Sender: TObject;
  const MessageSite: IRwMapiMessageSite);
var
  ContentID, FileName : string;
  sSubject: string;
   x, i: integer;
   AFileID, FileID: string;
begin
 {  if FAttachDoc then
   begin
      try
         AFileID := MessageSite.MapiMessage.PropByName(MATTER).AsString;
      except
         try
            MessageSite.MapiMessage.PropByName(MATTER).AsString := qryMatter.FieldByName('fileid').AsString;
         except
            //
         end;
      end;

      sSubject := MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString;
      for i := 1 to length(sSubject) do
      begin
         if sSubject[i] = '#' then
         begin
            for x := i + 1 to length(sSubject) do
            begin
               if ((sSubject[x] <> ' ') and (sSubject[x] <> ']')) then
                  FileID := FileID + sSubject[x]
               else
                  exit;
            end;
         end;
      end;

      if AFileID = '' then
         AFileID := qryMatter.FieldByName('fileid').AsString;
      MessageSite.MAPIMessage.PropByName(PR_SUBJECT).AsString := 'Our Ref #'+AFileID;
      MessageSite.MapiMessage.PropByName(MATTER).AsString := qryMatter.FieldByName('fileid').AsString;

      for i := 0 to FAttachFileName.Count - 1 do
      begin
         FileName  := FAttachFileName.Strings[i];

         // check for embedded image
         ContentID := lowercase(ChangeFileExt(ExtractFileName(FileName),''));
   //      if Pos('cid:'+ContentID, HtmlSource) > 0 then
   //         ASender.MapiMessage.AddEmbeddedImage(FileName)
   //      else

            MessageSite.MapiMessage.AddFileAttachment(FileName);
       end;
 //     if (FAttachFileName.Count > 0) then
         MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);
   end;     }
end;

procedure TfrmMatters.FormMgrNewMessage(Sender: TObject;
  const MessageSite: IRwMAPIMessageSite);
var
   sSubject,
   AFileID, FileID,
   zipFileName,
   tmpFileName: string;
   x, i: integer;
   lEmailTemp: TStrings;
   wCompress: word;
   MailMsg: IRwMAPIMailMessage;
begin
 {  try
      if FAttachDoc then
      begin
         try
            MessageSite.MapiMessage.Properties.Add(MATTER);
//            MessageSite.MapiMessage.PropByName(NPRFILEID).AsString := qryMatter.FieldByName('fileid').AsString;
//            AFileID := MessageSite.MapiMessage.PropByName(NPRFILEID).AsString;
//            MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);
         except
//            try
//               MessageSite.MapiMessage.PropByName(NPRFILEID).AsString := qryMatter.FieldByName('fileid').AsString;
//            except
               //
//            end;
         end;

         sSubject := MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString;
         for i := 1 to length(sSubject) do
         begin
            if sSubject[i] = '#' then
            begin
               for x := i + 1 to length(sSubject) do
               begin
                  if ((sSubject[x] <> ' ') and (sSubject[x] <> ']')) then
                     FileID := FileID + sSubject[x]
                  else
                     break;
               end;
            end;
         end;

         if AFileID = '' then
            AFileID := qryMatter.FieldByName('fileid').AsString;

         if SystemString('matter_email_subject') <> '' then
         begin
            MessageSite.MAPIMessage.PropByName(PR_SUBJECT).AsString := ParseMacros(SystemString('matter_email_subject'),qryMatter.FieldByName('nmatter').AsInteger)
         end
         else
         begin
            if (FBillSubject <> '') then
               MessageSite.MAPIMessage.PropByName(PR_SUBJECT).AsString :=
                  MessageSite.MAPIMessage.PropByName(PR_SUBJECT).AsString + FBillSubject;

            if Ansipos(AFileId, sSubject) = 0 then
               MessageSite.MAPIMessage.PropByName(PR_SUBJECT).AsString :=
                  MessageSite.MAPIMessage.PropByName(PR_SUBJECT).AsString + ' Our Ref #'+AFileID;
         end;

         MessageSite.MapiMessage.PropByName(MATTER).AsString := qryMatter.FieldByName('fileid').AsString;

         zipFileName := '';
         for i := 0 to FAttachFileName.Count - 1 do
         begin
            if FileExists(FAttachFileName.Strings[i]) = True then
            begin
               if tmpFileName <> '' then
                  tmpFileName := tmpFileName + ',';
               tmpFileName := tmpFileName + ExtractFileName(FAttachFileName.Strings[i]);
               if (FAttachFileName.Count > 1) and (wCompress = high(word)) then
                  wCompress := MsgAsk('You have selected '+ IntToStr(FAttachFileName.Count)+
                                      ' files. Would you like to send as a compressed archive (zip) file instead?');
               if wCompress = mrYes then
               begin
                  try
                     zipFileName := GetTempDirectory + qryMatter.FieldByName('fileid').AsString+'.zip';
                     zipFile(zipFileName ,FAttachFileName);
                  finally
                     MessageSite.MapiMessage.Attachments.AddFileAttachment(zipFileName);
                     FileAttachList := zipFileName;
                     DeleteFile(zipFileName);
                  end;
                  break;
               end
               else
                  MessageSite.MapiMessage.Attachments.AddFileAttachment(FAttachFileName.Strings[i]);
            end;
         end;

         if FAttachFileName.Count > 0 then
            MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);

         if FRecipientsList.Count > 0 then
         begin
            if MessageSite.MAPIMessage.QueryInterface(IRwMAPIMailMessage, MailMsg) = S_OK then
            begin
               try
                  for I := 0 to FRecipientsList.Count - 1 do
                  begin
                     MailMsg.AddRecipients(FRecipientsList.Strings[i], rtTo, True);
                  end;
               finally

               end;
            end;
         end;

         if (AEmailTemplate <> '') then
         begin
            try
               lEmailTemp := TStringList.Create;
               lEmailTemp.LoadFromFile(AEmailTemplate);
               MessageSite.MAPIMessage.HTMLBody := ParseEmailMacros(qryMatter.FieldByName('NMATTER').AsiNTEGER,
                                                                    qryMatter.FieldByName('NNAME').AsiNTEGER, lEmailTemp.Text);
            finally
               lEmailTemp.Free;
            end;

            DeleteFile(AEmailTemplate);
         end;
      end;
   finally
      FBillSubject := '';
      MessageSite.Reload;
   end;      }
end;

function TfrmMatters.GetViewStatus: TRwMAPIViewStatus;
begin
  Result := 0;
//  if chBxVsInteractive.Checked  then Result := Result + vsInteractive;
//  if chBxVsModal.Checked        then Result := Result + vsModal;
//  if chBxVsReadOnly.Checked     then Result := Result + vsReadOnly;
//  if chBxVsDelete.Checked       then Result := Result + vsDelete;
end;

function TfrmMatters.GetSiteStatus: TRwMAPISiteStatus;
begin
  Result := 0;
//  if chBxStDelete.Checked       then Result := Result + stDelete;
//  if chBxStCopy.Checked         then Result := Result + stCopy;
//  if chBxStMove.Checked         then Result := Result + stMove;
//  if chBxStSubmit.Checked       then Result := Result + stSubmit;
//  if chBxStDeleteIsMove.Checked then Result := Result + stDeleteIsMove;
//  if chBxStSave.Checked         then Result := Result + stSave;
//  if chBxStNewMessage.Checked   then Result := Result + stNewMessage;
end;

function TfrmMatters.GetSelectedFolder(AMsgStore: IRwMAPIMsgStore): IRwMAPIFolder;
begin
   Result := AMsgStore.OpenFolderByType(ftDraft);
end;

function TfrmMatters.CalcAmount2(iSecs : integer; cRate : currency; sType : string) : currency;
begin
   begin
      if iMinsPerUnit > 0 then
         CalcAmount2 := (((iSecs div 60) div iMinsPerUnit) + 1) * cRate / 60 * iMinsPerUnit
      else
         CalcAmount2 := iSecs * cRate / 3600;
   end
end;

procedure TfrmMatters.CreateTmeEntry;
begin
   nFeeTmpID := 0;
   with qryFeeTmp do
   begin
      Open;
      Insert;
      ParamByName('UNIQUEID').AsInteger := nFeeTmpID;
      FieldByName('created').AsDateTime := Now;
      FieldByName('author').AsString := dmAxiom.UserID;
      FieldByName('empcode').AsString := dmAxiom.UserID;
      FieldByName('nmatter').AsInteger := qrymatter.FieldByName('NMATTER').AsInteger;
      FieldByName('fileid').AsString := qrymatter.FieldByName('fileid').AsString;
      FieldByName('TAXCODE').AsString := 'GST';
      FieldbyName('UNIT').AsString := 'Units';
      FieldbyName('UNITS').AsInteger := 1;
      FieldbyName('EMP_TYPE').AsString := TableString('EMPLOYEE','CODE',String(qrymatter.FieldByName('author').AsString),'TYPE');
      // ToDo: Either fill version with something useful or don't save it.
      //FieldbyName('VERSION').AsString := dmAxiom.Version + '.' + IntToStr(dmAxiom.BuildNumber);
      FieldbyName('time_type').AsString := 'M';
      FieldByName('start_date').AsDateTime := Now;
      FieldByName('caption').AsString := qrymatter.FieldByName('fileid').AsString + ' - '+ qrymatter.FieldByName('shortdescr').AsString;
      FieldbyName('fee_template').AsString := dmAxiom.UserDfltAutoTimerTask;
      FieldByName('reason').AsString := TableString('SCALECOST','CODE', dmAxiom.UserDfltAutoTimerTask ,'DESCR') + ' - ' + '***';
      if (dmAxiom.UserDfltAutoTimerTask = '') or (TableCurrency('SCALECOST','CODE', dmAxiom.UserDfltAutoTimerTask ,'AMOUNT') = 0) then
         FieldByName('RATE').AsCurrency := FeeRate('N', qryMatter.FieldByName('FILEID').AsString, dmAxiom.UserID, FieldByName('CREATED').AsDateTime);
      FieldByName('reason').AsString := TableString('SCALECOST','CODE', dmAxiom.UserDfltAutoTimerTask ,'DESCR') + ' - ' + '***';
   end;
end;

procedure TfrmMatters.newTransaction(sType : String);
var
   frmNewTransaction : TfrmInvestmentTransactionNew;
   iDeposit,iMatter, iTransId : integer;
   sOldType, lsBank: string;
begin
   iTransId := 0;
   sOldType := '';
   iDeposit := qryControlledTotal.fieldByName('NDEPOSITACCOUNT').AsInteger;
   lsBank := qryControlledTotal.FieldByName('bank').AsString;
   iMatter := qrymatter.FieldByName('NMATTER').AsInteger;
   if qryInvestmentTransactions.Active  then
   begin
      iTransId := qryInvestmentTransactions.FieldByName('ninvtran').AsInteger;
      sOldType := qryInvestmentTransactions.fieldByName('currType').AsString;
   end;
   frmNewTransaction := TfrmInvestmentTransactionNew.Create(self);
   frmNewTransaction.setUp(iDeposit,iMatter,iTransId, sType, sOldType, lsBank);
   if frmNewTransaction.showModal = mrOk then
   begin
      qryInvestmentTransactions.Close;
      qryInvestmentTransactions.ParamByName('nmatter').AsInteger := iMatter;
      qryInvestmentTransactions.Open;


      qryControlledTotal.Close;
      qryControlledTotal.ParamByName('nmatter').AsInteger := iMatter;
      qryControlledTotal.Open;
   end;
//      makeSql;
end;

procedure TfrmMatters.PrintInvReceipt(AInvReceipt: integer);
var
   sReceipt, nAInvReceipt, NewChar: string;
   acct, Buffer, Dest, sSQL, Bind: string;
   x,i: integer;
   lDataModule: TdaDataModule;
   CompCount, CompTotal: integer;
   lSQL: TdaSQL;
   bNoTemplate: boolean;
begin
  CompTotal := 0;
   dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
   dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
   dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
   dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
   dmAxiom.orsAxiom.Connect;

   sReceipt := 'RECEIPT_INV';
   nAInvReceipt:= IntToStr(AInvReceipt);
   acct := dmAxiom.Entity;
   bNoTemplate := False;

   try
      dmAxiom.qryRB_Items.Close;
      Report.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      Report.Template.DatabaseSettings.NameField := 'ITEM_Name';
      Report.Template.DatabaseSettings.TemplateField := 'Template';
      Report.Template.DatabaseSettings.Name := sReceipt;
      Report.Template.LoadFromDatabase;
   except
      bNoTemplate := True;
   end;

   if bNoTemplate then
   begin
      qryDep.Close;
      qryDep.ParamByName('ninvtran').AsInteger := AInvReceipt;
      qryDep.open;
      qrySystem.Close;
      qrySystem.ParamByName('entity').AsString := dmAxiom.Entity;
      qrySystem.Open;

      if not dmAxiom.runningide then
         rpReceipt.DeviceType := 'Printer'
      else
         rpReceipt.DeviceType := 'Screen';
      rpReceipt.Print;
   end
   else
   begin

      lDataModule := daGetDataModule(Report);


      if (lDataModule <> nil) then
          CompTotal := lDataModule.DataViewCount;

      Dest := '';
      Buffer := '';
      sSQL := '';
      for CompCount := 0 to CompTotal - 1 do
      begin
          {get SQL object}
          Dest := '';
          Buffer := '';
          sSQL := '';
          i := 0;
          if (GetSQLObject(Report, lSQL, CompCount)) then
          begin
             sSQL := lSQL.SQLText.Text;

             while i < Length(sSQL) do
             begin
                if (sSQL[i] <> ':') then
                begin
                   if sSQL[i] = #10 then
                      Dest := Dest + ' ';
                   if ((sSQL[i] > chr(64)) and (sSQL[i] < chr(91))) or
                      ((sSQL[i] > chr(96)) and (sSQL[i] < chr(123))) or
                      (sSQL[i] = chr(46)) or (sSQL[i] = chr(124)) or (sSQL[i] = chr(40)) or
                      (sSQL[i] = chr(41)) or (sSQL[i] = chr(43)) or (sSQL[i] = chr(45)) or
                      (sSQL[i] = chr(42)) or (sSQL[i] = chr(47)) or
                      ((sSQL[i] > chr(47)) and (sSQL[i] < chr(58)) or
                      (sSQL[i] = chr(60)) or (sSQL[i] = chr(61)) or (sSQL[i] = chr(62))) or
                      (sSQL[i] = chr(32)) or (sSQL[i] = chr(44)) or (sSQL[i] = chr(39)) or
                      (sSQL[i] = chr(95)) or (sSQL[i] = chr(38)) then
                      Dest := Dest + sSQL[i];
                   inc(i);
                end
                else
                begin
                   if (sSQL[i+1] <> ' ') and (sSQL[i+1] <> chr(39)) then
                   begin
                      Buffer := Dest;
                      x := i;
                      Bind := '';
                      NewChar := sSQL[x];
                      while (NewChar <> ' ') and (NewChar <> #10) do
                      begin
                         Bind := Bind + NewChar;
                         inc(x);
                         NewChar := sSQL[x];
                      end;
                      if Trim(UpperCase(Bind)) = ':NINVTRAN' then
                      begin
                         if nAInvReceipt = '' then nAInvReceipt := '0';
                         Dest := Dest + nAInvReceipt + ' ';
                      end;
                      if Trim(UpperCase(Bind)) = ':ENTITY' then
                      begin
                         Dest := Dest + '''' + acct + ''' ';
                      end;
                      i := x;
                   end
                   else
                   begin
                      Dest := Dest + ':';
                      inc(i);
                   end;
                end;
             end;
         end;
         lSQL.DatabaseName := dmAxiom.orsAxiom.Name;
         lSQL.SQLText.Text := Dest;
      end;

      if not dmAxiom.runningide then
         Report.DeviceType := 'Printer'
      else
         Report.DeviceType := 'Screen';
      Report.Print;
   end;
   dmAxiom.orsAxiom.Disconnect;
end;

procedure TfrmMatters.ProjectsSchedulerAfterEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent);
begin
   with dmAxiom.qryTmp do
   begin
      Close;

      SQL.Text := 'UPDATE TASKTMP SET START_DATE = :START_DATE, END_DATE = :END_DATE, CREATED = :CREATED, '+
                  ' NOTES = :NOTES, MINS = :MINS, REASON = :REASON, RATE = :RATE, AMOUNT = :AMOUNT, '+
                  ' UNITS = :UNITS, TAX = :TAX '+
                  ' WHERE UNIQUEID = :UNIQUEID';
      ParamByName('START_DATE').AsDateTime := AEvent.Start;
      ParamByName('END_DATE').AsDateTime := AEvent.Finish;
      ParamByName('CREATED').AsDateTime := AEvent.Start;
      ParamByName('UNIQUEID').AsInteger := AEvent.id;
      //
      ParamByName('NOTES').AsString := AEvent.GetCustomFieldValueByName('NOTES');
      ParamByName('MINS').AsFloat:= AEvent.GetCustomFieldValueByName('MINUTES');
      ParamByName('REASON').AsString := AEvent.Caption;
      ParamByName('RATE').AsFloat := AEvent.GetCustomFieldValueByName('RATE');
      ParamByName('AMOUNT').AsFloat := AEvent.GetCustomFieldValueByName('AMOUNT');
      ParamByName('UNITS').AsFloat := AEvent.GetCustomFieldValueByName('UNITS');
      ParamByName('TAX').AsFloat := AEvent.GetCustomFieldValueByName('TAX');
      Execute;
   end;
end;

procedure TfrmMatters.ProjectsSchedulerAfterSizingEvent(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; X, Y: Integer;
  var Accept: Boolean);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'UPDATE TASKTMP SET START_DATE = :START_DATE, END_DATE = :END_DATE WHERE UNIQUEID = :UNIQUEID';
      ParamByName('START_DATE').AsDateTime := AEvent.Start;
      ParamByName('END_DATE').AsDateTime := AEvent.Finish;
      ParamByName('UNIQUEID').AsInteger := AEvent.id;
      Execute;
   end;
end;

procedure TfrmMatters.ProjectsSchedulerBeforeEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
begin
   Allow := False;
end;

procedure TfrmMatters.RefreshSearch(var Message: TMessage);
begin
   DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
   inherited;
end;

procedure TfrmMatters.RemoveDocsfromFolder1Click(Sender: TObject);
//var
//   Node: PVirtualNode;
//   Data: PFolderData;
begin
//   Node := lvFolders.FocusedNode;
//   if not Assigned(Node) then
//      Exit;

//   Data := lvFolders.GetNodeData(Node);

   if MsgAsk('Remove documents from folder ' + cxDBTreeList1DESCR.Value + ' and unassign them?') = mrYes then
   begin
         qryFldTmp.Close;
         qryFldTmp.SQL.Clear;
         qryFldTmp.SQL.Text := 'select count(*) as doccount from doc where folder_id = '+ IntToStr(cxDBTreeList1FOLDER_ID.Value);
         qryFldTmp.Open;
         if (qryFldTmp.FieldByName('doccount').AsInteger = 0) then
         begin
            MsgErr('There are no documents to remove from the folder ' + cxDBTreeList1DESCR.Value);
            Exit;
         end;
         qryFldTmp.Close;
         qryFldTmp.Sql.Text := 'update doc set folder_id = null where folder_id = :folder_id and nmatter = :nmatter';
         qryFldTmp.ParamByName('folder_id').AsInteger := cxDBTreeList1FOLDER_ID.Value;
         qryFldTmp.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         qryFldTmp.ExecSQL;
         qryFldTmp.Close;
   end;
end;

procedure TfrmMatters.SaveDebtorStatement(ADoc_Name, AAuth, APath, ADescr, APrecCategory,
                                          APrecedentDetails, APrecClass: string; ANMatter: integer);
var
  qryLookup: TOraQuery;
  AExt: string;
  ADocID: integer;
  bDocExits: boolean;
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'select 1 from doc pd, doc d where '+
                  'd.doc_name = :doc_name and pd.docid = d.docid and '+
                  ' pd.nmatter = :nmatter';
      ParamByName('doc_name').AsString := ADoc_Name;
      ParamByName('nmatter').AsInteger := ANMatter;
      Open;
      bDocExits := (not EOF);
      Close;
   end;
   if bDocExits = False then
   begin
      qryLookup := TOraQuery.Create(nil);
      qryLookup.Connection := dmAxiom.uniInsight;
      with qryLookup do
      begin
         ADocID := GetSequenceNumber('DOC_DOCID');
         SQL.Text := 'INSERT INTO doc '+
                     '(DOCID, DOC_NAME, AUTH1, PATH, DESCR, NMATTER,'+
                     'NPRECCATEGORY, IMAGEINDEX, FILE_EXTENSION, FILEID, '+
                     ' KEYWORDS, PRECEDENT_DETAILS, NPRECCLASSIFICATION, DISPLAY_PATH) '+
                     'VALUES '+
                     '(:DOCID, :DOC_NAME, :AUTH1, :PATH, :DESCR, :NMATTER, '+
                     ' :NPRECCATEGORY, :IMAGEINDEX, :FILE_EXTENSION, :FILEID, '+
                     ' :KEYWORDS, :PRECEDENT_DETAILS, :NPRECCLASSIFICATION, :DISPLAY_PATH)';

         ParamByName('DOCID').AsInteger := ADocID;
         ParamByName('DOC_NAME').AsString := ADoc_Name;
         ParamByName('AUTH1').AsString := AAuth;
         ParamByName('DESCR').AsString := ADescr;
         ParamByName('KEYWORDS').AsString := 'Debtor Statement';
         ParamByName('PRECEDENT_DETAILS').AsString := APrecedentDetails;
         AExt := UpperCase(Copy(ExtractFileExt(APath),2, Length(ExtractFileExt(APath))));
         ParamByName('FILE_EXTENSION').AsString := AExt;
         ParamByName('PATH').AsString := IndexPath(APath, 'DOC_SHARE_PATH');  //  NewPath;
         ParamByName('DISPLAY_PATH').AsString := APath;
         ParamByName('NMATTER').AsInteger := ANMatter;
         ParamByName('FILEID').AsString := qryMatter.FieldByName('fileid').AsString;

         ParamByName('IMAGEINDEX').AsInteger := 5;

         ParamByName('NPRECCATEGORY').AsString := APrecCategory;

         ParamByName('NPRECCLASSIFICATION').AsString := APrecClass;
         ExecSQL;

      end;
      qryLookup.Free();
   end;
end;

function TfrmMatters.GetEmailAttachFile(var ADocIDList: TStringList): TStringList;  //string;
var
   bStream: TStream;
   tmpFileName: string;
   ARowIndex, SelRec, i: integer;
   AAttachList, LAttachDocID: TStringList;
begin
   AAttachList := TStringList.Create;
   LAttachDocID := TStringList.Create;
   if dbgrDocs.FocusedView.DataController.GetRecordCount > 0 then
   begin
      for i :=0 to tvEmailAttachments.Controller.SelectedRecordCount - 1 do
      begin
         ARowIndex := tvEmailAttachments.DataController.GetSelectedRowIndex(i);
         tvEmailAttachments.ViewData.Records[ARowIndex].Focused  := True;
         if (not qryDocChildren.IsEmpty) then
         begin
            if qryDocChildren.FieldByName('PATH').IsNull then
            begin
               SelRec := qryDocChildren.FieldByName('DOCID').AsInteger;
               qrySingleDoc.Close;
               qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
               qrySingleDoc.Open;
               bStream := qrySingleDoc.CreateBlobStream(qrySingleDoc.FieldByName('DOCUMENT'),bmRead);
               try
                  if ExtractFileExt(qrySingleDoc.FieldByName('DOC_NAME').AsString) = '' then
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qrySingleDoc.FieldByName('DOC_NAME').AsString +'.'+ qrySingleDoc.FieldByName('file_extension').AsString
                  else
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qrySingleDoc.FieldByName('DOC_NAME').AsString;
                  // in case file still sitting in tmp directory
                  DeleteFile(tmpFileName);

                  bStream.Seek(0, soFromBeginning);

                  with TFileStream.Create(tmpFileName, fmCreate) do
                  try
                     CopyFrom(bStream, bStream.Size)
                  finally
                     Free;
                  end;
               finally
                  bStream.Free
               end;
            end
            else
            begin
               SelRec := qryDocChildren.FieldByName('DOCID').AsInteger;
               with qrySingleDoc do
               begin
                  Close;
                  SQL.Clear;
                  SQL.Text := 'SELECT doc.doc_name, doc.search, doc.doc_code, doc.d_create, doc.auth1, ' +
                              'doc.d_modif, doc.auth2, doc.PATH, doc.descr, doc.fileid, doc.docid, ' +
                              'doc.npreccategory, doc.nmatter, doc.imageindex, doc.file_extension, ' +
                              'doc.display_path, doc.precedent_details, doc.document, doc.rowid ' +
                              'FROM doc ' +
                              'WHERE doc.docid = :docid ';
                  ParamByName('docid').AsInteger := SelRec;
                  Open;
                  tmpFileName := FieldByName('DISPLAY_PATH').AsString;
                  Close;
               end;
            end;
            AAttachList.Add(tmpFileName);
            LAttachDocID.Add(IntToStr(SelRec));
         end;
      end;
      Result := AAttachList;
      ADocIDList := LAttachDocID;
   end
   else
      Result := AAttachList;
end;


end.




