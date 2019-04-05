unit FeeEnquiry;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Menus, Buttons,
  ExtCtrls, DBCtrls, ToolWin, DateChangeButton,
  TeEngine, Series, TeeProcs, Chart, DBChart, ImgList, NumberEdit,
  MemDS, OracleUniProvider, Uni, DBAccess, Variants, ActnList, ActnMan,
  ActnCtrls, ActnMenus,  VirtualTrees, VTEditors,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxPropertiesStore, dxBar,
  cxGroupBox, cxRadioGroup, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppTypes, ppViewr,
  cxCalendar, cxCurrencyEdit, cxPC, cxSplitter, cxMemo, dxPSGlbl, dxPSUtl,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSEngn, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGridLnk, dxPgsDlg, cxGridChartView,
  cxGridDBChartView, cxGridExportLink, cxLookAndFeelPainters,
  cxLookAndFeels, XPStyleActnCtrls,
  cxPCdxBarPopupMenu, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxDBEditorLnks, dxPSTextLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, ppParameter,
  dxPScxSchedulerLnk, ppDesignLayer, ppStrtch, ppMemo, dxBarExtItems,
  cxNavigator, cxRichEdit, System.Actions, cxBarEditItem, dxCore,
  ppRegion, dxSkinsCore, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog,dxSpellCheckerCore,
  dxSpellChecker, VclTee.TeeGDIPlus, System.ImageList, dxDateRanges,
  JvExComCtrls, JvDateTimePicker;

type
  TBudgetShowType = (bstYear, bstQuarter, bstMonth, bstAuthor, bstDepartment);
  TBudgetShowTypes = set of TBudgetShowType;

  TSortDirection = (sdNone, sdAscending, sdDescending);
  TTotalType     = (ttNone, ttMax, ttMin, ttAverage, ttSum);
  TColumnTreeColumns = (ctcColumnDisplay = 0, ctcVisible = 1, ctcSortOrder = 2,
      ctcSortDirection = 3, ctcGroup = 4, ctcGroupOrder = 5, ctcTotalType = 6);

  TfrmFeeListNew = class(TForm)
    ilstToolbar: TImageList;
    pmFees: TPopupMenu;
    miNewFee: TMenuItem;
    miOpenFee: TMenuItem;
    miDeleteFee: TMenuItem;
    ActionManager: TActionManager;
    aNewFee: TAction;
    aOpenFee: TAction;
    aOpenMatter: TAction;
    aDeleteFee: TAction;
    aRefresh: TAction;
    aClearAll: TAction;
    aReportFeeListSummary: TAction;
    aExit: TAction;
    aReportAuthorSummary: TAction;
    aReportGroupedList: TAction;
    aGraphFeesByDate: TAction;
    aGraphAuthorFees: TAction;
    aGraphFeeTypes: TAction;
    aGraphDepartments: TAction;
    aClear: TAction;
    aMatterSearch: TAction;
    aClientSearch: TAction;
    aToday: TAction;
    aStatisticsReport: TAction;
    aColumnDown: TAction;
    aColumnUp: TAction;
    pmColumns: TPopupMenu;
    miUp: TMenuItem;
    miDown: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    styHeader: TcxStyle;
    styFooter: TcxStyle;
    cxStyle3: TcxStyle;
    styGroupHeader: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxPropertiesStore: TcxPropertiesStore;
    actExpGroups: TAction;
    actCollapseGroups: TAction;
    qryNotional: TUniQuery;
    qryBenchmark: TUniQuery;
    qryFees: TUniQuery;
    qryTime: TUniQuery;
    cxStyle1: TcxStyle;
    dxBarManager1: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    tbtnFeeEdit: TdxBarButton;
    tbtnOpenMatter: TdxBarButton;
    tbtnDeleteFee: TdxBarButton;
    tbtnReports: TdxBarSubItem;
    tbtnGraphs: TdxBarSubItem;
    tbtnRefresh: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    bbtnPrintStats: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dbpipeFeeRpt: TppDBPipeline;
    qryFeeRpt: TUniQuery;
    dsFeeRpt: TUniDataSource;
    feeRpt: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel29: TppLabel;
    ppReportPeriod: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    pplblDate: TppLabel;
    pplblAuthor: TppLabel;
    pplblClient: TppLabel;
    pplblDescr: TppLabel;
    pplblShortDescr: TppLabel;
    pplblMatterNo: TppLabel;
    pplblInvoiceDate: TppLabel;
    pplblInvoiceNo: TppLabel;
    pplblUnits: TppLabel;
    pplblMinutes: TppLabel;
    pplblAmounts: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBTotalUnits: TppDBCalc;
    ppDBTotalMins: TppDBCalc;
    ppDBTotalAmount: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    pplblTotal: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    pplblGrpAuthor: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBGrpAmounts: TppDBCalc;
    ppDBGrpMins: TppDBCalc;
    ppDBGrpUnits: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    dxBarButton17: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    GridReportLink: TdxGridReportLink;
    tbtnPrintGrid: TdxBarButton;
    qryEmployeeList: TUniQuery;
    dsEmployeeList: TUniDataSource;
    cxStyle2: TcxStyle;
    btnExportToXL: TdxBarButton;
    OpenDialog: TOpenDialog;
    dxBarPopupMenu1: TdxBarPopupMenu;
    aQuickEdit: TAction;
    tbtnQuickEdit: TdxBarButton;
    btnMoveMultiFees: TdxBarButton;
    qryUpdateFees: TUniQuery;
    Panel1: TPanel;
    pcFeeList: TcxPageControl;
    tsFeeList: TcxTabSheet;
    grdFees: TcxGrid;
    tvFees: TcxGridDBTableView;
    tvFeesNFEE: TcxGridDBColumn;
    tvFeesCREATED: TcxGridDBColumn;
    tvFeesAUTHOR: TcxGridDBColumn;
    tvFeesPARTNERNAME: TcxGridDBColumn;
    tvFeesFILEID: TcxGridDBColumn;
    tvFeesDESCR: TcxGridDBColumn;
    tvFeesAMOUNT: TcxGridDBColumn;
    tvFeesUNITS: TcxGridDBColumn;
    tvFeesMINS: TcxGridDBColumn;
    tvFeesRATE: TcxGridDBColumn;
    tvFeesINVOICEDATE: TcxGridDBColumn;
    tvFeesBILLED: TcxGridDBColumn;
    tvFeesTYPE: TcxGridDBColumn;
    tvFeesTASK: TcxGridDBColumn;
    tvFeesBILLNO: TcxGridDBColumn;
    tvFeesTITLE: TcxGridDBColumn;
    tvFeesBRANCH: TcxGridDBColumn;
    tvFeesDEPARTMENT: TcxGridDBColumn;
    tvFeesPARTNERDEPARTMENT: TcxGridDBColumn;
    tvFeesBILLTYPE: TcxGridDBColumn;
    tvFeesMATTER_TYPE: TcxGridDBColumn;
    tvFeesTIME_TYPE: TcxGridDBColumn;
    tvFeesSTANDARD_COST: TcxGridDBColumn;
    tvFeesNOTIONAL_COST: TcxGridDBColumn;
    tvFeesFEES_POS: TcxGridDBColumn;
    tvFeesFEES_NEG: TcxGridDBColumn;
    tvFeesFEES_ZERO: TcxGridDBColumn;
    tvFeesPROFORMA: TcxGridDBColumn;
    tvFeesEMPCODE: TcxGridDBColumn;
    tvFeesChart: TcxGridDBChartView;
    Amount: TcxGridDBChartSeries;
    grdFeesLevel1: TcxGridLevel;
    grdFeesLevel2: TcxGridLevel;
    tsStats: TcxTabSheet;
    pagStats: TcxPageControl;
    tabStats: TcxTabSheet;
    gbStats: TcxGroupBox;
    lAuthorUnitsMoneyMsg: TLabel;
    lAuthorUnitsMoney: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    lBilledTotal: TLabel;
    lUnbilledTotal: TLabel;
    lTotalTotal: TLabel;
    lTotalNumber: TLabel;
    lUnbilledNumber: TLabel;
    lBilledNumber: TLabel;
    lBilledAverage: TLabel;
    lUnbilledAverage: TLabel;
    lTotalAverage: TLabel;
    lTotalPercent: TLabel;
    lUnbilledPercent: TLabel;
    lBilledPercent: TLabel;
    lBilledUnits: TLabel;
    lUnbilledUnits: TLabel;
    lTotalUnits: TLabel;
    lTotalUnitsMoney: TLabel;
    lUnbilledUnitsMoney: TLabel;
    lBilledUnitsMoney: TLabel;
    lBilledMins: TLabel;
    lUnbilledMins: TLabel;
    lTotalMins: TLabel;
    lTotalMinsMoney: TLabel;
    lTotalHours: TLabel;
    lUnbilledHours: TLabel;
    lUnbilledMinsMoney: TLabel;
    lBilledMinsMoney: TLabel;
    lBilledHours: TLabel;
    Label18: TLabel;
    lblActualUnits: TLabel;
    Label13: TLabel;
    lblUnit: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    gbBillUnbilled: TcxGroupBox;
    chBilledvsUnBilled: TChart;
    Series1: TPieSeries;
    gbWork: TcxGroupBox;
    Label16: TLabel;
    lDaysWorked: TLabel;
    Label17: TLabel;
    lHoursWorked: TLabel;
    Label21: TLabel;
    lUnitsWorked: TLabel;
    lblCurrencyDay: TLabel;
    lMoneyWorked: TLabel;
    cxTabSheet3: TcxTabSheet;
    dbchFeePie: TDBChart;
    PieSeries1: TPieSeries;
    dbchTime: TDBChart;
    PieSeries2: TPieSeries;
    cxSplitter1: TcxSplitter;
    cxTabSheet1: TcxTabSheet;
    DBChart1: TDBChart;
    PieSeries3: TPieSeries;
    Benchmark: TDBChart;
    BarSeries1: TBarSeries;
    cxSplitter2: TcxSplitter;
    tsBudget: TcxTabSheet;
    pcBudgetGraphs: TcxPageControl;
    tsBudgetMonth: TcxTabSheet;
    pagBudgetMonthYear: TcxPageControl;
    tsWIPBudgetMonth: TcxTabSheet;
    chBudgetMonth: TDBChart;
    BarSeries2: TBarSeries;
    BarSeries3: TBarSeries;
    LineSeries1: TBarSeries;
    tsFeesBudgetMonth: TcxTabSheet;
    chFeeBudgetMonth: TDBChart;
    BarSeries8: TBarSeries;
    BarSeries10: TBarSeries;
    tsTimeBudgetMonth: TcxTabSheet;
    chTimeBudgetMonth: TDBChart;
    BarSeries9: TBarSeries;
    Series2: TBarSeries;
    BarSeries11: TBarSeries;
    tsBudgetQuarter: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    tsWIPBudgetQtr: TcxTabSheet;
    chWIPBudgetQuarter: TDBChart;
    BarSeries4: TBarSeries;
    BarSeries5: TBarSeries;
    LineSeries2: TBarSeries;
    tsFeeBudgetQtr: TcxTabSheet;
    chFeesBudgetQuarter: TDBChart;
    Series3: TBarSeries;
    Series4: TBarSeries;
    tsBudgetHoursQtr: TcxTabSheet;
    chHoursBudgetQuarter: TDBChart;
    BarSeries12: TBarSeries;
    Series5: TBarSeries;
    BarSeries14: TBarSeries;
    tsBudgetYear: TcxTabSheet;
    cxPageControl4: TcxPageControl;
    tsWIPBudgetYr: TcxTabSheet;
    chBudgetYear: TDBChart;
    BarSeries6: TBarSeries;
    BarSeries7: TBarSeries;
    LineSeries3: TBarSeries;
    tsFeeBudgetYr: TcxTabSheet;
    chBudgetYearFee: TDBChart;
    BarSeries13: TBarSeries;
    BarSeries16: TBarSeries;
    tsTimeBudgetYr: TcxTabSheet;
    chBudgetYearTime: TDBChart;
    BarSeries15: TBarSeries;
    BarSeries17: TBarSeries;
    BarSeries18: TBarSeries;
    tsFilter: TcxTabSheet;
    lblAuthor: TLabel;
    lblPartner: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label20: TLabel;
    Label31: TLabel;
    cbAuthor: TcxLookupComboBox;
    cbPartner: TcxLookupComboBox;
    eMatter: TcxButtonEdit;
    cbDept: TcxLookupComboBox;
    cbEntity: TcxLookupComboBox;
    cbBranch: TcxLookupComboBox;
    cbFeeType: TcxLookupComboBox;
    edClientCode: TcxButtonEdit;
    edBillNum: TcxTextEdit;
    cbAuthorType: TcxLookupComboBox;
    cbScale: TcxLookupComboBox;
    rgBilled: TcxRadioGroup;
    rgValue: TcxRadioGroup;
    rgWriteOffs: TcxRadioGroup;
    ppReportAuthorSummary: TppReport;
    plAuthorSummary: TppDBPipeline;
    qAuthorSummary: TUniQuery;
    dsAuthorSummary: TUniDataSource;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine8: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    ppLabel6: TppLabel;
    tvFeesNMEMO: TcxGridDBColumn;
    rptFeeListStatsReport: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel7: TppLabel;
    ppStatsTitle: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppAuthorUnitsMoneyMsg: TppLabel;
    ppAuthorUnitsMoney: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppBilledAmount: TppLabel;
    ppBilledNumber: TppLabel;
    ppUnbilledAmount: TppLabel;
    ppTotalAmount: TppLabel;
    ppUnbilledNumber: TppLabel;
    ppTotalNumber: TppLabel;
    ppBilledAverage: TppLabel;
    ppBilledPercent: TppLabel;
    ppBilledUnits: TppLabel;
    ppBilledUnitMoney: TppLabel;
    ppBilledMins: TppLabel;
    ppBilledMinsMoney: TppLabel;
    ppBilledHours: TppLabel;
    ppUnbilledAverage: TppLabel;
    ppUnbilledPercent: TppLabel;
    ppUnbilledUnits: TppLabel;
    ppUnbilledUnitMoney: TppLabel;
    ppUnbilledMins: TppLabel;
    ppUnbilledMinsMoney: TppLabel;
    ppUnbilledHours: TppLabel;
    ppTotalAverage: TppLabel;
    ppTotalPercent: TppLabel;
    ppTotalUnits: TppLabel;
    ppTotalUnitMoney: TppLabel;
    ppTotalMins: TppLabel;
    ppTotalMinsMoney: TppLabel;
    ppTotalHours: TppLabel;
    ppDaysWorked: TppLabel;
    ppHoursWorked: TppLabel;
    ppUnitsWorked: TppLabel;
    ppMoneyWorked: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    Label22: TLabel;
    edDescription: TEdit;
    tvFeesNOTES: TcxGridDBColumn;
    tvFeesSYSTEM_DATE: TcxGridDBColumn;
    tvFeesColumnTASK_AMOUNT: TcxGridDBColumn;
    tvFeesColumnITEMS: TcxGridDBColumn;
    cbGroupExpanded: TcxBarEditItem;
    ppLine9: TppLine;
    ppRegion1: TppRegion;
    ppDBCreated: TppDBText;
    ppDBAuthor: TppDBText;
    ppDBTitle: TppDBText;
    ppDBShortDescr: TppDBText;
    ppDBMatterNo: TppDBText;
    ppDBInvoiceDate: TppDBText;
    ppDBInvoiceNo: TppDBText;
    ppDBUnits: TppDBText;
    ppDBMins: TppDBText;
    ppDBAmounts: TppDBText;
    ppDBMemo1: TppDBMemo;
    Panel2: TPanel;
    chkDateFrom: TCheckBox;
    chkDateTo: TCheckBox;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    dcToday: TDateChangeButton;
    dtpDateFrom: TJvDateTimePicker;
    dtpDateTo: TJvDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    rgTimeType: TcxRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qFeesDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure neSortColumnsExit(Sender: TObject);
    procedure aNewFeeExecute(Sender: TObject);
    procedure aNewFeeUpdate(Sender: TObject);
    procedure aOpenFeeExecute(Sender: TObject);
    procedure aOpenFeeUpdate(Sender: TObject);
    procedure aOpenMatterExecute(Sender: TObject);
    procedure aOpenMatterUpdate(Sender: TObject);
    procedure aDeleteFeeExecute(Sender: TObject);
    procedure aDeleteFeeUpdate(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aClearAllExecute(Sender: TObject);
    procedure aReportFeeListSummaryExecute(Sender: TObject);
    procedure aReportAuthorSummaryExecute(Sender: TObject);
    procedure aReportGroupedListExecute(Sender: TObject);
    procedure aGraphFeesByDateExecute(Sender: TObject);
    procedure aGraphAuthorFeesExecute(Sender: TObject);
    procedure aGraphFeeTypesExecute(Sender: TObject);
    procedure aGraphDepartmentsExecute(Sender: TObject);
    procedure aGraphAuthorFeesUpdate(Sender: TObject);
    procedure aGraphDepartmentsUpdate(Sender: TObject);
    procedure aMatterSearchExecute(Sender: TObject);
    procedure aClientSearchExecute(Sender: TObject);
    procedure cbEntityChange(Sender: TObject);
    procedure aTodayExecute(Sender: TObject);
    procedure aStatisticsReportExecute(Sender: TObject);
    procedure tsStatsHide(Sender: TObject);
    procedure aReportAuthorSummaryUpdate(Sender: TObject);
    procedure tsBudgetShow(Sender: TObject);
    procedure rbBudgetViewMonthClick(Sender: TObject);
    procedure rbBudgetViewQuarterClick(Sender: TObject);
    procedure rbBudgetViewYearClick(Sender: TObject);
    procedure vtDrillDownExpanded(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vtDrillDownCollapsed(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure tvFeesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure FormCreate(Sender: TObject);
    procedure eMatterPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edClientCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbAuthorPropertiesEditValueChanged(Sender: TObject);
    procedure tvFeesTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure actExpGroupsExecute(Sender: TObject);
    procedure tvFeesTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure actCollapseGroupsExecute(Sender: TObject);
    procedure actExpGroupsUpdate(Sender: TObject);
    procedure actCollapseGroupsUpdate(Sender: TObject);
    procedure pplblGrpAuthorPrint(Sender: TObject);
    procedure feeRptBeforePrint(Sender: TObject);
    procedure eMatterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dxBarButton17Click(Sender: TObject);
    procedure tsFeesBudgetMonthShow(Sender: TObject);
    procedure tsTimeBudgetMonthShow(Sender: TObject);
    procedure tsWIPBudgetMonthShow(Sender: TObject);
    procedure tsBudgetHoursQtrShow(Sender: TObject);
    procedure tsFeeBudgetQtrShow(Sender: TObject);
    procedure tsWIPBudgetYrShow(Sender: TObject);
    procedure tsTimeBudgetYrShow(Sender: TObject);
    procedure tsFeeBudgetYrShow(Sender: TObject);
    procedure tsWIPBudgetQtrShow(Sender: TObject);
    procedure tsBudgetMonthShow(Sender: TObject);
    procedure tbtnPrintGridClick(Sender: TObject);
    procedure tvFeesCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure GridReportLinkCustomDrawCell(Sender: TdxGridReportLink;
      ACanvas: TCanvas; AView: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AColumn: TcxGridColumn;
      AnItem: TAbstractdxReportCellData; var ADone: Boolean);
    procedure tvFeesSelectionChanged(Sender: TcxCustomGridTableView);
    procedure tvFeesCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure tvFeesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvFeesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvFeesFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure edtDescrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvFeesDESCRPropertiesPopup(Sender: TObject);
    procedure edtDescrEnter(Sender: TObject);
    procedure tbtnDeleteFeeClick(Sender: TObject);
    procedure btnExportToXLClick(Sender: TObject);
    procedure pcFeeListChange(Sender: TObject);
    procedure tbtnQuickEditClick(Sender: TObject);
    procedure tvFeesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbAuthorPropertiesInitPopup(Sender: TObject);
    procedure btnMoveMultiFeesClick(Sender: TObject);
    procedure chkDateFromClick(Sender: TObject);
    procedure chkDateToClick(Sender: TObject);
    procedure tbtnOpenMatterClick(Sender: TObject);
    procedure tvFeesAUTHORStylesGetHeaderStyle(Sender: TcxGridTableView;
      AColumn: TcxGridColumn; var AStyle: TcxStyle);
    procedure tvFeesPARTNERNAMEStylesGetHeaderStyle(Sender: TcxGridTableView;
      AColumn: TcxGridColumn; var AStyle: TcxStyle);
    procedure tbtnReportsPopup(Sender: TObject);
    procedure cbGroupExpandedPropertiesChange(Sender: TObject);
    procedure tvFeesColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    FOrderBy: String;
    FDontChange: Boolean;
    FBudgetGraphView: TBudgetShowTypes;
    FExpanding: Boolean;
    FClientCode: string;
    FMatterNo: String;

    FDrillGroupingColumns: array of String;
    FDrillColumnTotalTypes: array of TTotalType;
    FDrillColumns: array of String;
    FDrillColumnDataTypes: array of TFieldType;

    FLastKey: Word;    
    FPopupForm: TCustomForm;
    { Private declarations }
    procedure GetSQLWhereFrom(var AWhere, AFrom, AGroupField: String; InitialWhere: string);
    procedure MakeSQL(AOrderGroup: Boolean = False);
    function MakeTitle: string;
    procedure SetOrderByLocal(ADontAddORDER: Boolean = False);
    procedure SetOrderByAndRefresh;
    procedure CloseBudgetQueries;
    procedure setDisplayNames;

    procedure LoadColumnData();
    procedure SaveColumnData();

    procedure ResizeColumns(ATree: TVirtualStringTree);
    procedure padDate(var sDate : String;iLen : integer);
  public
    { Public declarations }

  end;

  implementation

uses
  FeeNew, Matters, MiscFunc, AxiomData, MSearch, Desktop, CSearch, citfunc,
  {FeeListStatsReport, FeeListPieReport, FeeListBarReport, FeeListAuthorSummaryReport, }
  {FeeListGroupedReport,} DateUtils, FeeListDataModule, cxGridStrs,
  FeeEditQuick;

{$R *.DFM}

const
  C_NEWFEELIST          = 'NewFeeList';
  C_COLUMNNAME          = 'ColumnName';
  C_COLUMNVISIBLE       = 'ColumnVisible';
  C_COLUMNSORTORDER     = 'ColumnSortOrder';
  C_COLUMNSORTDIRECTION = 'ColumnSortDirection';
  C_COLUMNGROUP         = 'ColumnGroup';
  C_COLUMNGROUPORDER    = 'ColumnGroupOrder';
  C_COLUMNTOTALTYPE     = 'ColumnTotalType';
  C_COLUMNWIDTH         = 'ColumnWidth';
  C_COLUMNPOSITION      = 'ColumnPosition';


procedure TfrmFeeListNew.FormShow(Sender: TObject);
begin
   dmFeeList.qBranch.Close;
   dmFeeList.qBranch.ParamByName('entity').AsString := dmAxiom.Entity;
   dmFeeList.qBranch.Open;

  if TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y' then
    cbAuthor.EditValue := dmAxiom.UserID
  else
    cbAuthor.EditValue := dmFeeList.qFeeEarners.FieldByName('CODE').AsString;

//  cbEntity.EditValue := varNull;
//  if(dmFeeList.qBranch.Active) then
//    cbBranch.EditValue := varNull;

  dtpDateFrom.Date :=  Now;
  dtpDateTo.Date :=  Now;

  cbAuthor.Enabled := (TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'FEE_ENQUIRY_ACCESS') = 'Y');
  cbAuthorType.Enabled := (TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'FEE_ENQUIRY_ACCESS') = 'Y');

//  if TableInteger('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ACCESSLEVEL') > 5 then
//  begin
//    cbAuthor.Enabled := False;
//    cbAuthorType.Enabled := False;
//  end;

//  LoadColumnData();

  SetOrderByLocal;
end;


procedure TfrmFeeListNew.GetSQLWhereFrom(var AWhere, AFrom, AGroupField: String; InitialWhere: string);
var
  LWhere, LFrom: TStringList;
begin
  LWhere := TStringList.Create();
  LFrom  := TStringList.Create();
  try
    // Build the SQL Filter query

    if InitialWhere <> '' then
    begin
      LWhere.Add('WHERE');
      LWhere.Add(InitialWhere);
    end else
      LWhere.Add('WHERE 1=1 ');

    LFrom.Add('FEE');

    if (cbAuthor.EditValue <> '') then
       LWhere.Add('AND FEE.AUTHOR = ' + QuotedStr(String(cbAuthor.EditValue)))
    else
      if SystemString('Use_Fee_Authority') = 'Y' then
         LWhere.Add('AND MATTER.author in (SELECT distinct e.CODE FROM  employee e where '+
                    ' isauthor = ''Y'' and e.NFEE_AUTHORITY in '+
                    ' (select distinct nfee_authority from fee_authority_relation '+
                    ' start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authority from employee where code = ' + QuotedStr(dmAxiom.UserID) + ')'+
                    ' connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO  '+
                    ' and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to))');

    if  (cbPartner.EditValue <> '') then
      LWhere.Add('AND FEE.PARTNER = ' + QuotedStr(cbPartner.EditValue));

    if eMatter.Text <> '' then
      LWhere.Add('AND FEE.FILEID = ' + QuotedStr(FMatterNo));

    AGroupField := 'FEE.CREATED';
    case rgBilled.ItemIndex of
      1: // Unbilled
         LWhere.Add('AND FEE.BILLED = ''N'' AND FEE.billtype = ''Billable''');
      2: // Billed
        begin
         LWhere.Add('AND FEE.BILLED = ''Y''');
         AGroupField := 'FEE.INVOICEDATE';
        end;
      3: // Billings by Invoicedate
        begin
         LWhere.Add('AND FEE.billtype = ''NonBillable''');
        end;
      4: // exclude non billable
        begin
         LWhere.Add('AND FEE.billtype <> ''NonBillable''');
        end;
    end;

    case rgValue.ItemIndex of
      1: // Positive Only
        LWhere.Add('AND FEE.AMOUNT > 0');
      2: // Negative Only
        LWhere.Add('AND FEE.AMOUNT < 0');
      3: // Zero Only
        LWhere.Add('AND FEE.AMOUNT = 0');
    end;

    case rgWriteOffs.ItemIndex of
      0: // Exclude wo
        LWhere.Add('AND FEE.TYPE <> ''wo'' ');
      2: // wo Only
        LWhere.Add('AND FEE.TYPE = ''wo'' ');
    end;

    case rgTimeType.ItemIndex of
       1:// Matter only
         LWhere.Add('AND FEE.TIME_TYPE = ''M'' ');
       2:// Overhead time
         LWhere.Add('AND FEE.TIME_TYPE = ''O'' ');
       3:// Held time
         LWhere.Add('AND FEE.TIME_TYPE = ''H'' ');
    end;

    if (cbFeeType.EditValue <> '')  then
      LWhere.Add('AND FEE.TYPE = ' + QuotedStr(cbFeeType.EditValue));

    if (cbDept.EditValue <> '') then
      LWhere.Add('AND FEE.DEPT = ' + QuotedStr(cbDept.EditValue));

    if (cbAuthorType.EditValue <> '') then
      LWhere.Add('AND FEE.EMP_TYPE = ' + QuotedStr(cbAuthorType.EditValue));

    if (cbBranch.EditValue <> '') then
    begin
      LWhere.Add('AND MATTER.BRANCH = ' + QuotedStr(cbBranch.EditValue));
      LWhere.Add('AND FEE.NMATTER = MATTER.NMATTER');
      LFrom.Add('MATTER');
    end;

    if (cbScale.EditValue <> '') then
      LWhere.Add('AND FEE.TASK = ' + QuotedStr(cbScale.EditValue));

    if chkDateFrom.Checked then
      LWhere.Add('AND ' + AGroupField + ' >= :P_DateFrom');

    if chkDateTo.Checked then
      LWhere.Add('AND ' + AGroupField + ' < :P_DateTo ');

    if (edDescription.Text <> '') then
       LWhere.Add('AND CONTAINS(FEE.descr,'+QuotedStr(edDescription.Text)+', 1) > 0 ');

    if edClientCode.Text <> '' then
    begin
      LWhere.Add('AND CLIENT.CODE = ' + QuotedStr(FClientCode));
      LWhere.Add('AND FEE.NCLIENT = CLIENT.NCLIENT');
      LFrom.Add('CLIENT');
    end;

    if (cbEntity.EditValue <> '') then
      LWhere.Add('AND FEE.BANK_ACCT = ' + QuotedStr(cbEntity.EditValue));

    if edBillNum.Text <> '' then
    begin
      LWhere.Add('AND NMEMO.REFNO = ' + QuotedStr(edBillNum.Text));
      LWhere.Add('AND NMEMO.NMEMO = FEE.NMEMO');
      LFrom.Add('NMEMO');
    end;

    AWhere := LWhere.Text;
    AFrom  := LFrom.CommaText;
  finally
    FreeAndNil(LWhere);
    FreeAndNil(LFrom);
  end;
end;

procedure TfrmFeeListNew.MakeSQL(AOrderGroup: Boolean);
var
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStr: String;
  i: Integer;
begin
  dmFeeList.qFees.Close;
//  dmFeeList.qFees.Debug := true;
  dmFeeList.qFees.SQL.Clear;

  GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField, 'FEE.NMATTER = MATTER.NMATTER(+) AND '+
                                                    'FEE.NMEMO = NMEMO.NMEMO(+) AND '+
                                                    'FEE.TYPE = FEETYPE.CODE(+) AND '+
                                                    'MATTER.BRANCH = BR.CODE(+) AND ' +
                                                    'MATTER.NCLIENT = PHONEBOOK.NCLIENT(+)');

  dmFeeList.qFees.SQL.Add('SELECT /*+ ORDERED */FEE.NFEE, /*+ ORDERED */FEE.CREATED "CREATED" ');
  dmFeeList.qFees.SQL.Add(', FEE.AUTHOR, FEE.FILEID, FEE.NMATTER');
  dmFeeList.qFees.SQL.Add(', FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS');
  dmFeeList.qFees.SQL.Add(', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK');
  dmFeeList.qFees.SQL.Add(', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, PHONEBOOK.SEARCH AS TITLE');
  dmFeeList.qFees.SQL.Add(', MATTER.SHORTDESCR, BR.DESCR "BRANCH", FEETYPE.DESCR AS FEETYPE');
  dmFeeList.qFees.SQL.Add(', GET_AUTHORNAME(FEE.PARTNER) AS PARTNERNAME, GET_AUTHORNAME(FEE.AUTHOR) AS AUTHORNAME');
  dmFeeList.qFees.SQL.Add(', Get_AuthorDept(FEE.AUTHOR) AS DEPT, Get_AuthorDept(FEE.PARTNER) AS PARTDEPT');
  dmFeeList.qFees.SQL.Add(', BILLTYPE, TIME_TYPE, FEE.NOTIONAL_COST, FEE.STANDARD_COST');
  dmFeeList.qFees.SQL.Add(', case when FEE.AMOUNT > 0 then FEE.AMOUNT else 0 end as FEES_POS ');
  dmFeeList.qFees.SQL.Add(', case when FEE.AMOUNT < 0 then FEE.AMOUNT else 0 end as FEES_NEG ');
  dmFeeList.qFees.SQL.Add(', case when FEE.AMOUNT = 0 then FEE.AMOUNT else 0 end as FEES_ZERO ');
  dmFeeList.qFees.SQL.Add(', case when nvl(get_IsProforma(FEE.NFEE),0) > 0 then FEE.AMOUNT else 0 end as PROFORMA');
  dmFeeList.qFees.SQL.Add(', matter.TYPE AS matter_type, FEE.EMPCODE, FEE.NMEMO, FEE.NOTES, FEE.SYSTEM_DATE');
  dmFeeList.qFees.SQL.Add(', FEE.ITEMS, FEE.TASK_AMOUNT, FEE.TASK_TAX, FEE.ROWID ');

  if(Pos('MATTER',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',MATTER';
  if(Pos('NMEMO',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',NMEMO';

  dmFeeList.qFees.SQL.Add('FROM ' + LSQLFrom);
  dmFeeList.qFees.SQL.Add(',PHONEBOOK, FEETYPE, BRANCH BR ');
  dmFeeList.qFees.SQL.Add(LSqlWhere);

  if(AOrderGroup) then
  begin
    SetOrderByLocal(True);
    LStr := '';
    for i := 0 to Length(FDrillGroupingColumns) - 1 do
    begin
      if(LStr <> '') then
        LStr := LStr + ',' + FDrillGroupingColumns[i]
      else
        LStr := FDrillGroupingColumns[i];
    end;
    if(Trim(LStr) <> '') then
      LStr := LStr + ',' + FOrderBy
    else
      LStr := FOrderBy;
    if(Trim(LStr) <> '') then
      dmFeeList.qFees.SQL.Add('ORDER BY ' + LStr);
  end else
  begin
    SetOrderByLocal(False);
    if (FOrderBy <> '') then
       dmFeeList.qFees.SQL.Add(' ORDER BY ' + FOrderBy);
  end;  
  
  if chkDateFrom.Checked then
  begin
     dmFeeList.qFees.ParamByName('P_DateFrom').Clear;
     dmFeeList.qFees.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
  end;
  if chkDateTo.Checked then
  begin
     dmFeeList.qFees.ParamByName('P_DateTo').Clear;
     dmFeeList.qFees.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  end;

  dmFeeList.qFees.Open;
end;


function TfrmFeeListNew.MakeTitle : string;
var
  sTitle : string;
begin
  if dtpDateFrom.Date = dtpDateTo.Date then
    sTitle := 'For ' + FormatDateTime('dddddd', dtpDateFrom.Date)
  else
    sTitle := 'For the period ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date);
  if not VarIsNull(cbAuthor.EditValue) then
    if cbAuthor.EditValue <> '' then
      sTitle := sTitle + ', for Author ' + cbAuthor.Text + ' (' + cbAuthor.EditValue + ')';
      //sTitle := sTitle + ', for Author ' + dmFeeList.qFeeEarnersNAME.AsString + ' (' + dmFeeList.qFeeEarnersCODE.AsString + ')';

  if eMatter.Text <> '' then
    sTitle := sTitle + ', for Matter ' + eMatter.Text;

  if not VarIsNull(cbFeeType.EditValue) then
    if cbFeeType.EditValue <> '' then
      sTitle := sTitle + ', for Fee Type ' + cbFeeType.Text + ' (' + cbFeeType.EditValue + ')';
      //sTitle := sTitle + ', for Fee Type ' + dmFeeList.qFeeTypeDESCR.AsString + ' (' + dmFeeList.qFeeTypeCODE.AsString + ')';

  if not VarIsNull(cbDept.EditValue) then
    if cbDept.EditValue <> '' then
      sTitle := sTitle + ', for Department ' + cbDept.Text + ' (' + cbDept.EditValue + ')';
      //sTitle := sTitle + ', for Department ' + dmFeeList.qDepartmentDESCR.AsString + ' (' + dmFeeList.qDepartmentCODE.AsString + ')';

  if not VarIsNull(cbAuthor.EditValue) then
    if cbAuthorType.EditValue <> '' then
      sTitle := sTitle + ', for Author Type ' + cbAuthorType.Text + ' (' + cbAuthorType.EditValue + ')';
      //sTitle := sTitle + ', for Author Type ' + dmFeeList.qAuthorTypeDESCR.AsString + ' (' + dmFeeList.qAuthorTypeCODE.AsString + ')';

  if not VarIsNull(cbBranch.EditValue) then
    if cbBranch.EditValue <> '' then
      sTitle := sTitle + ', for Branch ' + cbBranch.Text + ' (' + cbBranch.EditValue + ')';
      //sTitle := sTitle + ', for Branch ' + dmFeeList.qBranchDESCR.AsString + ' (' + dmFeeList.qBranchCODE.AsString + ')';

  if not VarIsNull(cbScale.EditValue) then
    if cbScale.EditValue <> '' then
      sTitle := sTitle + ', for Scale ' + cbScale.Text + ' (' + cbScale.EditValue + ')';
      //sTitle := sTitle + ', for Scale ' + dmFeeList.qScaleCostDESCR.AsString + ' (' + dmFeeList.qScaleCostCODE.AsString + ')';

  case rgBilled.ItemIndex of
    1: // Unbilled
      sTitle := sTitle + ', for unbilled entries';
    2: // Billed
      sTitle := sTitle + ', for billed entries';
    3: // Billings by invoice date
      sTitle := sTitle + ', by invoice date';
    4: // Positive Only
      sTitle := sTitle + ', for positive entries';
    5: // Negative Only
      sTitle := sTitle + ', for negative entries';
    6: // Zero Only
      sTitle := sTitle + ', for zero value entries';
  end;
  MakeTitle := sTitle;
end;

procedure TfrmFeeListNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   SaveColumnData();
   SettingSaveStream(dmAxiom.UserID,'lvFees Layout',tvFees);
//   SaveColumnWidths;

   dmFeeList.qWorked.Close;
   dmFeeList.qUnbilled.Close;
   dmFeeList.qBilled.Close;
   dmFeeList.qFees.Close;
   qryEmployeeList.Close;
   RemoveFromDesktop(Self);
//   Action := caFree;
end;

procedure TfrmFeeListNew.qFeesDESCRGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := dmFeeList.qFees.FieldByName('DESCR').AsString;
end;


procedure TfrmFeeListNew.SetOrderByAndRefresh;
begin
  SetOrderByLocal;
  MakeSQL;
end;

procedure TfrmFeeListNew.SetOrderByLocal(ADontAddORDER: Boolean);
begin

end;

procedure TfrmFeeListNew.neSortColumnsExit(Sender: TObject);
begin
  SetOrderByAndRefresh;
end;

procedure TfrmFeeListNew.aNewFeeExecute(Sender: TObject);
var
  frmNewFeeNew : TfrmFeeNew;
begin
  frmNewFeeNew := TfrmFeeNew.Create(Self, False);
  if frmNewFeeNew.ShowModal = mrOk then
  begin
     dmFeeList.qFees.Close;
     dmFeeList.qFees.Open;
     if boolean(cbGroupExpanded.EditValue) then
         grdFees.FocusedView.DataController.Groups.FullExpand;
  end;
end;

procedure TfrmFeeListNew.aNewFeeUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := dmAxiom.Security.Fee.Create
end;

procedure TfrmFeeListNew.aOpenFeeExecute(Sender: TObject);
var
  LFeeNew: TfrmFeeNew;
begin
   // Open the fee
   if tbtnFeeEdit.Enabled then
   begin
      LFeeNew := TfrmFeeNew.Create(Self, True) ;

      LFeeNew.DisplayFee(dmFeeList.qFees.FieldByName('NFEE').AsInteger, True);
      if LFeeNew.ShowModal() > 0 then
      begin
         dmFeeList.qFees.Refresh;
//         dmFeeList.qFees.Open;
      end;
   end;
   if boolean(cbGroupExpanded.EditValue) then
      grdFees.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfrmFeeListNew.aOpenFeeUpdate(Sender: TObject);
begin
   if tvFees.Controller.FocusedRowIndex <> -1 then
      TAction(Sender).Enabled :=(((grdFees.FocusedView.DataController.Groups.GroupingItemCount > 0) and
                                (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex))) AND
                                (pcFeelist.ActivePage = tsFeeList) AND dmAxiom.Security.Fee.Edit);
//  TAction(Sender).Enabled := dmAxiom.Security.Fee.Edit and (not dmFeeList.qFees.IsEmpty);
end;

procedure TfrmFeeListNew.aOpenMatterExecute(Sender: TObject);
var
  LMatters: TfrmMatters;
begin
   LMatters := TfrmMatters.Create(frmDesktop);
   LMatters.DisplayMatter(dmFeeList.qFees.FieldByName('FILEID').AsString);
   frmDesktop.AddFormToTab(LMatters, 1);
   if (not frmMatters.Visible) then
     frmMatters.Show;
end;

procedure TfrmFeeListNew.aOpenMatterUpdate(Sender: TObject);
begin
   if tvFees.Controller.FocusedRowIndex <> -1 then
      TAction(Sender).Enabled := (((grdFees.FocusedView.DataController.Groups.GroupingItemCount > 0) and
                              (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex))) AND
                              (pcFeelist.ActivePage = tsFeeList));
//  TAction(Sender).Enabled := not dmFeeList.qFees.EOF;
end;

procedure TfrmFeeListNew.aDeleteFeeExecute(Sender: TObject);
var
  i: integer;
  LPostingFailed: boolean;
  RecIdx, NFEE : Integer;
  FeeList: TStringList;
  ARowInfo: TcxRowInfo;
begin
  Screen.Cursor := crSQLWait;
  if (grdFees.Views[0].DataController.GetSelectedCount > 0) then
  begin
    if MsgAsk('This will DELETE all unbilled fees selected.'#13#13'Are you sure you want to do this?') = mrYes then
    begin
      LPostingFailed := False;
      FeeList := TStringList.Create;
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;
        // Automatically delete the selected items
        for i := 0 to grdFees.Views[0].DataController.GetSelectedCount - 1 do
        begin
           RecIdx := tvFees.DataController.GetSelectedRowIndex(i);
           ARowInfo := tvFees.DataController.GetRowInfo(RecIdx);
           NFEE :=  tvFees.DataController.Values[ARowInfo.RecordIndex, tvFeesNFEE.Index];

           if tvFeesBILLED.EditValue <> 'Y' then
           begin
              FeeList.Add(IntToStr(NFEE));
           end;
        end;

        for i := 0 to FeeList.Count - 1 do
        begin
           dmFeeList.qDelete.SQL.Text := 'DELETE FROM FEE WHERE NFEE = ' + FeeList.Strings[i];
           dmFeeList.qDelete.ExecSQL;
           PlaySound('Delete');
        end;

      except
        on E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          LPostingFailed := True;
          MsgErr('Fee deletion failed:' + #13#13 + E.Message);
        end;
      end;
      if not LPostingFailed then
      begin
        dmAxiom.uniInsight.Commit;
        MakeSQL;
      end;
    end;
  end else
    MessageDlg('No items have been selected to delete',mtInformation,[mbOK], 0);

  FeeList.Free;
  Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.aDeleteFeeUpdate(Sender: TObject);
begin
   if tvFees.Controller.FocusedRowIndex <> -1 then
     TAction(Sender).Enabled := (((grdFees.FocusedView.DataController.Groups.GroupingItemCount > 0) and
                                (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex))) AND
                                (pcFeelist.ActivePage = tsFeeList) and
                                (tvFeesBilled.DataBinding.Field.AsString = 'N'));

//  TAction(Sender).Enabled := dmAxiom.Security.Fee.Delete and (not dmFeeList.qFees.IsEmpty) and
//                             (tvFeesBilled.DataBinding.Field.AsString = 'N') ;
end;

procedure TfrmFeeListNew.aExitExecute(Sender: TObject);
begin
  Close();
end;

procedure TfrmFeeListNew.aRefreshExecute(Sender: TObject);
begin
  if pcFeeList.ActivePage = tsFilter then
    MakeSQL
  else
  begin
    dmFeeList.qFees.Close;
    dmFeeList.qFees.Open;
  end;
  pcFeeList.ActivePage := tsFeeList;
end;

procedure TfrmFeeListNew.aClearAllExecute(Sender: TObject);
begin
  if cbAuthor.Enabled then
  begin
    cbAuthor.EditValue := '';
  end;
  dcToday.Click;
  eMatter.Text := '';
  FMatterNo := '';
  edClientCode.Text := '';
  FClientCode := '';
  rgBilled.ItemIndex := 0;
  rgValue.ItemIndex := 0;
  cbDept.EditValue := '';
  cbPartner.EditValue := '';
  cbFeeType.EditValue := '';
  cbBranch.EditValue := '';
  cbScale.EditValue := '';
  cbAuthorType.EditValue := '';
  dtpDateFrom.Date := Date;
  chkDateFrom.Checked := False;
  dtpDateTo.Date := Date;
  chkDateTo.Checked := False;
  edDescription.Clear;

  pcFeeList.ActivePage := tsFilter;
//  MakeSql;
end;

procedure TfrmFeeListNew.aReportFeeListSummaryExecute(Sender: TObject);
var
  LSQL: TStringList;
  LSqlWhere, LSqlFrom, LGroupField, LStr: String;
  i: integer;
begin
  // qrFeeListSummaryReport := TqrFeeListSummaryReport.Create(Self);

  LSQL := TStringList.Create();
  try

  GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField, 'FEE.NMATTER = MATTER.NMATTER(+) AND FEE.NMEMO = NMEMO.NMEMO(+) AND MATTER.NCLIENT = PHONEBOOK.NCLIENT(+)');

  LSQL.Add('SELECT /*+ ORDERED */FEE.NMEMO, FEE.CREATED, FEE.AUTHOR, FEE.FILEID, FEE.NMATTER');
  LSQL.Add(', FEE.DESCR, FEE.NFEE, FEE.AMOUNT, FEE.UNITS, FEE.MINS');
  LSQL.Add(', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK');
  LSQL.Add(', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, PHONEBOOK.SEARCH AS TITLE');
  LSQL.Add(', MATTER.SHORTDESCR, MATTER.BRANCH, EMPLOYEE.NAME AS EMP');

  if(Pos('MATTER',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',MATTER,PHONEBOOK';
  if(Pos('NMEMO',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',NMEMO';
  if(Pos('EMPLOYEE',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',EMPLOYEE';

  LSqlWhere := LSqlWhere + 'AND EMPLOYEE.CODE = FEE.AUTHOR';
  LSQL.Add('FROM ' + LSQLFrom);
  LSQL.Add(LSqlWhere);

  LSQL.Add(' ORDER BY AUTHOR ');
  if FOrderBy <> '' then
     LSQL.Add(',' + FOrderBy);

  {
   if dtpDateFrom.Checked then
    qrFeeListSummaryReport.DateFrom := Trunc(dtpDateFrom.Date)
  else
    qrFeeListSummaryReport.DateFrom := 0;

  if dtpDateTo.Checked then
    qrFeeListSummaryReport.DateTo := Trunc(dtpDateTo.Date) + 1
  else
    qrFeeListSummaryReport.DateTo := 0;

    qrFeeListSummaryReport.SQL := LSQL.Text;
    qrFeeListSummaryReport.Title := MakeTitle();
    qrFeeListSummaryReport.PreviewModal();
  }
    qryFeeRpt.Close;
    qryFeeRpt.SQL.Text := LSQL.Text;

    if chkDateFrom.Checked then
      qryFeeRpt.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);

    if chkDateTo.Checked then
      qryFeeRpt.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;

    qryFeeRpt.Open;
    feeRpt.DeviceType := dtScreen;
    feeRpt.Print;
  finally
    //FreeAndNil(qrFeeListSummaryReport);
    FreeAndNil(LSQL);
  end;
end;

procedure TfrmFeeListNew.aReportAuthorSummaryExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin

  LSql := TStringList.Create();
  try
    LStartDate := Trunc(dtpDateFrom.Date);
    LEndDate := Trunc(dtpDateTo.Date) + 1;

    GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');

    LSql.Add('SELECT fee.author AS author, employee.name AS name, SUM(fee.units) AS units, SUM(fee.mins) AS mins, SUM(fee.amount) AS amount ');
    LSql.Add('FROM employee, ' + LSqlFrom);
    LSql.Add(LSqlWhere);
    LSql.Add('AND fee.author = employee.code(+)');
    LSql.Add('GROUP BY fee.author, employee.name');
    LSql.Add('ORDER BY employee.name');

    qAuthorSummary.SQL.Text := LSQL.Text;
    ppReportAuthorSummary.Print();

  finally
    FreeAndNil(LSql);
  end;
end;

procedure TfrmFeeListNew.aReportGroupedListExecute(Sender: TObject);
var
  LStartDate,LEndDate: TDateTime;
begin
{  qrFeeListGroupedReport := TqrFeeListGroupedReport.Create(self);
  try
    LStartDate := Trunc(dtpDateFrom.Date);
    LEndDate := Trunc(dtpDateTo.Date) + 1;

    qrFeeListGroupedReport.Title := MakeTitle;

    if chkDateFrom.Checked then
      qrFeeListGroupedReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListGroupedReport.DateFrom := 0;


    if chkDateTo.Checked then
      qrFeeListGroupedReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListGroupedReport.DateTo := 0;

    qrFeeListGroupedReport.SQL := dmFeeList.qFees.SQL.Text;
//    qrFeeListGroupedReport.GroupField := grdFees.Columns[0].FieldName;
//    qrFeeListGroupedReport.GroupCaption := grdFees.Columns[0].Title.Caption;
    qrFeeListGroupedReport.Preview();
  finally
    FreeAndNil(qrFeeListGroupedReport);
  end; }
end;

procedure TfrmFeeListNew.aGraphFeesByDateExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
{  LSql := TStringList.Create();
  qrFeeListBarReport := TqrFeeListBarReport.Create(Self);
  try
    LStartDate := Trunc(dtpDateFrom.Date);
    LEndDate := Trunc(dtpDateTo.Date) + 1;

    qrFeeListBarReport.ReportTitle := 'Author Fees By Date';

    GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');

    LSql.Add('SELECT TRUNC(' + LGroupField + ') AS LABELS, SUM(AMOUNT) AS PIE ');
    LSql.Add('FROM ' + LSqlFrom);
    LSql.Add(LSqlWhere);
    LSql.Add('GROUP BY TRUNC(' + LGroupField + ')');
    LSql.Add('ORDER BY TRUNC(' + LGroupField + ')');

    if chkDateFrom.Checked then
      qrFeeListBarReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListBarReport.DateFrom := 0;


    if chkDateTo.Checked then
      qrFeeListBarReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListBarReport.DateTo := 0;

    qrFeeListBarReport.SQL := LSQL.Text;
    qrFeeListBarReport.Preview();

  finally
    FreeAndNil(qrFeeListBarReport);
    FreeAndNil(LSql);
  end;    }
end;

procedure TfrmFeeListNew.aGraphAuthorFeesExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
{  LSql := TStringList.Create();
  qrFeeListPieReport := TqrFeeListPieReport.Create(Self);
  try
    LStartDate := Trunc(dtpDateFrom.Date);
    LEndDate := Trunc(dtpDateTo.Date) + 1;

    qrFeeListPieReport.ReportTitle := 'Author Fees';

    GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');

    LSql.Add('SELECT FEE.AUTHOR AS LABELS, SUM(AMOUNT) AS PIE ');
    LSql.Add('FROM ' + LSqlFrom);
    LSql.Add(LSqlWhere);
    LSql.Add('GROUP BY FEE.AUTHOR');
    LSql.Add('ORDER BY PIE');

    if chkDateFrom.Checked then
      qrFeeListPieReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListPieReport.DateFrom := 0;


    if chkDateTo.Checked then
      qrFeeListPieReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListPieReport.DateTo := 0;

    qrFeeListPieReport.SQL := LSQL.Text;
    qrFeeListPieReport.Preview();

  finally
    FreeAndNil(qrFeeListPieReport);
    FreeAndNil(LSql);
  end;    }
end;

procedure TfrmFeeListNew.aGraphFeeTypesExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
{  LSql := TStringList.Create();
  qrFeeListPieReport := TqrFeeListPieReport.Create(Self);
  try
    LStartDate := Trunc(dtpDateFrom.Date);
    LEndDate := Trunc(dtpDateTo.Date) + 1;

    qrFeeListPieReport.ReportTitle := 'Fees By Type';

    GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');

    LSql.Add('SELECT FEETYPE.DESCR AS LABELS, SUM(AMOUNT) AS PIE ');
    LSql.Add('FROM FEETYPE, ' + LSqlFrom);
    LSql.Add(LSqlWhere);
    LSql.Add('AND FEE.TYPE = FEETYPE.CODE');
    LSql.Add('GROUP BY FEETYPE.DESCR');
    LSql.Add('ORDER BY PIE');

    if chkDateFrom.Checked then
      qrFeeListPieReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListPieReport.DateFrom := 0;


    if chkDateTo.Checked then
      qrFeeListPieReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListPieReport.DateTo := 0;

    qrFeeListPieReport.SQL := LSQL.Text;
    qrFeeListPieReport.Preview();

  finally
    FreeAndNil(qrFeeListPieReport);
    FreeAndNil(LSql);
  end;  }
end;

procedure TfrmFeeListNew.aGraphDepartmentsExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
{  LSql := TStringList.Create();
  qrFeeListPieReport := TqrFeeListPieReport.Create(Self);
  try
    LStartDate := Trunc(dtpDateFrom.Date);
    LEndDate := Trunc(dtpDateTo.Date) + 1;

    qrFeeListPieReport.ReportTitle := 'Fees By Department';

    GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');

    LSql.Add('SELECT DEPT AS LABELS, SUM(AMOUNT) AS PIE ');
    LSql.Add('FROM ' + LSqlFrom);
    LSql.Add(LSqlWhere);
    LSql.Add('GROUP BY DEPT');
    LSql.Add('ORDER BY PIE');

    if chkDateFrom.Checked then
      qrFeeListPieReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListPieReport.DateFrom := 0;


    if chkDateTo.Checked then
      qrFeeListPieReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListPieReport.DateTo := 0;

    qrFeeListPieReport.SQL := LSQL.Text;
    qrFeeListPieReport.Preview();

  finally
    FreeAndNil(qrFeeListPieReport);
    FreeAndNil(LSql);
  end;  }
end;

procedure TfrmFeeListNew.aGraphAuthorFeesUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := VarIsNull(cbAuthor.EditValue);
end;

procedure TfrmFeeListNew.aGraphDepartmentsUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := VarIsNull(cbDept.EditValue);
end;

procedure TfrmFeeListNew.aMatterSearchExecute(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOk then
    FMatterNo := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    eMatter.Text := dmAxiom.qryMSearch.FieldByName('TITLE').AsString;
end;

procedure TfrmFeeListNew.aClientSearchExecute(Sender: TObject);
begin
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);
  if frmClientSearch.ShowModal = mrOk then
  begin
    FClientCode := frmClientSearch.qryClientList.FieldByName('CODE').AsString;
    edClientCode.Text := frmClientSearch.qryClientList.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmFeeListNew.cbEntityChange(Sender: TObject);
begin
  dmFeeList.qBranch.close();
  if(not VarIsNull(cbEntity.EditValue)) then
  begin
    dmFeeList.qBranch.ParamByName('entity').AsString := cbEntity.EditValue;
    dmFeeList.qBranch.Open();
    cbBranch.EditValue := varNull;
  end;
end;

procedure TfrmFeeListNew.aTodayExecute(Sender: TObject);
begin
  aClearAll.Execute();
  cbAuthor.EditValue := dmAxiom.UserID;
  dtpDateFrom.Date := Date();
  dtpDateTo.Date   := Date();
  pcFeeList.ActivePage := tsFeeList;
//  pcFeeList.ActivePage := tsStats;
end;

procedure TfrmFeeListNew.aStatisticsReportExecute(Sender: TObject);
begin
   with rptFeeListStatsReport do
   begin
      try
         ppStatsTitle.Caption           := MakeTitle;

         ppAuthorUnitsMoneyMsg.Caption  := lAuthorUnitsMoneyMsg.Caption;
         ppAuthorUnitsMoney.Caption     := lAuthorUnitsMoney.Caption;

         ppBilledAmount.Caption         := lBilledTotal.Caption;
         ppUnbilledAmount.Caption       := lUnbilledTotal.Caption;
         ppTotalAmount.Caption          := lTotalTotal.Caption;
         ppBilledNumber.Caption         := lBilledNumber.Caption;
         ppUnbilledNumber.Caption       := lUnbilledNumber.Caption;
         ppTotalNumber.Caption          := lTotalNumber.Caption;
         ppBilledAverage.Caption        := lBilledAverage.Caption;
         ppUnbilledAverage.Caption      := lUnbilledAverage.Caption;
         ppTotalAverage.Caption         :=  lTotalAverage.Caption;
         ppBilledPercent.Caption        := lBilledPercent.Caption;
         ppUnbilledPercent.Caption      := lUnbilledPercent.Caption;
         ppTotalPercent.Caption         := lTotalPercent.Caption;
         ppBilledUnits.Caption          := lBilledUnits.Caption;
         ppUnbilledUnits.Caption        := lUnbilledUnits.Caption;
         ppTotalUnits.Caption           := lTotalUnits.Caption;
         ppBilledUnitMoney.Caption      := lBilledUnitsMoney.Caption;
         ppUnbilledUnitMoney.Caption    := lUnbilledUnitsMoney.Caption;
         ppTotalUnitMoney.Caption       := lTotalUnitsMoney.Caption;
         ppBilledMins.Caption           := lBilledMins.Caption;
         ppUnbilledMins.Caption         := lUnbilledMins.Caption;
         ppTotalMins.Caption            := lTotalMins.Caption;
         ppBilledMinsMoney.Caption      := lBilledMinsMoney.Caption;
         ppUnbilledMinsMoney.Caption    := lUnbilledMinsMoney.Caption;
         ppTotalMinsMoney.Caption       := lTotalMinsMoney.Caption;
         ppBilledHours.Caption          := lBilledHours.Caption;
         ppUnbilledHours.Caption        := lUnbilledHours.Caption;
         ppTotalHours.Caption           := lTotalHours.Caption;

         ppDaysWorked.Caption           := lDaysWorked.Caption;
         ppHoursWorked.Caption          := lHoursWorked.Caption;
         ppUnitsWorked.Caption          := lUnitsWorked.Caption;
         ppMoneyWorked.Caption          := lMoneyWorked.Caption;
      finally
         Print();
      end;
   end;
end;

procedure TfrmFeeListNew.tsStatsHide(Sender: TObject);
begin
  dmFeeList.qBilled.Close;
  dmFeeList.qUnbilled.Close;
end;

procedure TfrmFeeListNew.aReportAuthorSummaryUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := VarIsNull(cbAuthor.EditValue);
end;

procedure TfrmFeeListNew.padDate(var sDate : String;iLen : integer);
begin
   if length(sDate) < iLen then
   begin
      sDate := '0' + sDate;
   end;
end;

procedure TfrmFeeListNew.tsBudgetShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;
begin

   Screen.Cursor := crHourGlass;
  CloseBudgetQueries();
  LDateFirst := DateOf(dtpDateFrom.Date);
  LDateLast  := DateOf(dtpDateTo.Date);

  if(LDateFirst > LDateLast) then
    Exit;

//  rbBudgetViewMonth.Checked := False;
//  rbBudgetViewQuarter.Checked := False;
//  rbBudgetViewYear.Checked := False;

  DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
  DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);

  // fix the date lengths



  FDontChange := True;
//  rbBudgetViewYear.Enabled    := (LDateLastYear - LDateFirstYear > 0);
//  rbBudgetViewQuarter.Enabled := ((LDateLastYear = LDateFirstYear) and (LDateLastMonth - LDateFirstMonth > 6)) or
//                                 (LDateLastYear - LDateFirstYear > 0);
//  rbBudgetViewMonth.Enabled   := (LDateLastYear - LDateFirstYear < 2);
  FDontChange := False;

  FBudgetGraphView := [];
//  if(rbBudgetViewMonth.Enabled) and (LDateLastYear - LDateFirstYear < 1) then
    Include(FBudgetGraphView,bstMonth);
//  else if(rbBudgetViewQuarter.Enabled) and (LDateLastYear - LDateFirstYear < 2) then
//    Include(FBudgetGraphView,bstQuarter)
//  else
//    Include(FBudgetGraphView,bstYear);

  if (not VarIsNull(cbAuthor.EditValue)) then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) then
    Include(FBudgetGraphView,bstDepartment)
  else
    Exit;

  if(bstAuthor in FBudgetGraphView) then
  begin
    dmFeeList.qBudgetGraphAuthMonthWIP.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
    dmFeeList.qBudgetGraphAuthMonthWIP.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
    dmFeeList.qBudgetGraphAuthMonthWIP.ParamByName('author').AsString    := cbAuthor.EditValue;

{    dmFeeList.qBudgetGraphAuthQuarter.ParamByName('firstyear').AsInteger := LDateFirstYear;
    dmFeeList.qBudgetGraphAuthQuarter.ParamByName('lastyear').AsInteger  := LDateLastYear;
    dmFeeList.qBudgetGraphAuthQuarter.ParamByName('author').AsString    := cbAuthor.EditValue;

    dmFeeList.qBudgetGraphAuthYear.ParamByName('firstyear').AsInteger := LDateFirstYear;
    dmFeeList.qBudgetGraphAuthYear.ParamByName('lastyear').AsInteger  := LDateLastYear;
    dmFeeList.qBudgetGraphAuthYear.ParamByName('author').AsString    := cbAuthor.EditValue;  }
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
    dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
    dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('dept').AsString      := cbDept.EditValue;

{    dmFeeList.qBudgetGraphDeptQuarter.ParamByName('firstyear').AsInteger := LDateFirstYear;
    dmFeeList.qBudgetGraphDeptQuarter.ParamByName('lastyear').AsInteger  := LDateLastYear;
    dmFeeList.qBudgetGraphDeptQuarter.ParamByName('dept').AsString    := cbDept.EditValue;

    dmFeeList.qBudgetGraphDeptYear.ParamByName('firstyear').AsInteger := LDateFirstYear;
    dmFeeList.qBudgetGraphDeptYear.ParamByName('lastyear').AsInteger  := LDateLastYear;
    dmFeeList.qBudgetGraphDeptYear.ParamByName('dept').AsString    := cbDept.EditValue;   }
  end;


  {  qGraphQuery.Close();
  qGraphQuery.ParamByName('author').AsString := cbAuthor.KeyValue;
  qGraphQuery.ParamByName('year').AsInteger  := 2002;
  qGraphQuery.Open();

  if(bstMonth in FBudgetGraphView) then
    rbBudgetViewMonth.Checked := True
  else if(bstQuarter in FBudgetGraphView) then
    rbBudgetViewQuarter.Checked := True
  else if(bstYear in FBudgetGraphView) then
    rbBudgetViewYear.Checked := Trueprocedure TfrmFeeListNew.tsBudgetShow(Sender: TObject);  }


   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetMonth.Series[0].DataSource := dmFeeList.qBudgetGraphAuthMonthWIP;
      chBudgetMonth.Series[0].YValues.ValueSource := 'BILLED';
      chBudgetMonth.Series[0].XValues.ValueSource := 'VIEWDATE';

      // bar for unbilled
      chBudgetMonth.Series[1].DataSource := dmFeeList.qBudgetGraphAuthMonthWIP;
      chBudgetMonth.Series[1].YValues.ValueSource := 'UNBILLED';
      chBudgetMonth.Series[1].XValues.ValueSource := 'VIEWDATE';

      // line for budget
      chBudgetMonth.Series[2].DataSource := dmFeeList.qBudgetGraphAuthMonthWIP;
      chBudgetMonth.Series[2].YValues.ValueSource := 'WIPBUDGET';
      chBudgetMonth.Series[2].XValues.ValueSource := 'VIEWDATE';

      dmFeeList.qBudgetGraphAuthMonthWIP.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetMonth.Series[0].DataSource := dmFeeList.qBudgetGraphDeptMthWIP;
      chBudgetMonth.Series[0].YValues.ValueSource := 'BILLED';
      chBudgetMonth.Series[0].XValues.ValueSource := 'VIEWDATE';

      // bar for unbilled
      chBudgetMonth.Series[1].DataSource := dmFeeList.qBudgetGraphDeptMthWIP;
      chBudgetMonth.Series[1].YValues.ValueSource := 'UNBILLED';
      chBudgetMonth.Series[1].XValues.ValueSource := 'VIEWDATE';

      // line for budget
      chBudgetMonth.Series[2].DataSource := dmFeeList.qBudgetGraphDeptMthWIP;
      chBudgetMonth.Series[2].YValues.ValueSource := 'WIPBUDGET';
      chBudgetMonth.Series[2].XValues.ValueSource := 'VIEWDATE';

      dmFeeList.qBudgetGraphDeptMthWIP.Open();
   end;
   chBudgetMonth.BottomAxis.Title.Caption := 'Month';
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.rbBudgetViewMonthClick(Sender: TObject);
begin
{  if(FDontChange) or (FBudgetGraphView = []) then
    Exit;

  CloseBudgetQueries();
  if(bstAuthor in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := dmFeeList.qBudgetGraphAuthMonth;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := dmFeeList.qBudgetGraphAuthMonth;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := dmFeeList.qBudgetGraphAuthMonth;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'VIEWDATE';

    dmFeeList.qBudgetGraphAuthMonth.Open();
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := dmFeeList.qBudgetGraphDeptMonth;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := dmFeeList.qBudgetGraphDeptMonth;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := dmFeeList.qBudgetGraphDeptMonth;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'VIEWDATE';

    dmFeeList.qBudgetGraphDeptMonth.Open();
  end;
  chBudget.BottomAxis.Title.Caption := 'Month';  }
end;


procedure TfrmFeeListNew.rbBudgetViewQuarterClick(Sender: TObject);
begin
{  if(FDontChange) or (FBudgetGraphView = []) then
    Exit;

  CloseBudgetQueries();
  if(bstAuthor in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := dmFeeList.qBudgetGraphAuthQuarter;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'XFIELD';
    chBudget.Series[0].XLabelsSource       := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := dmFeeList.qBudgetGraphAuthQuarter;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'XFIELD';
    chBudget.Series[1].XLabelsSource       := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := dmFeeList.qBudgetGraphAuthQuarter;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'XFIELD';
    chBudget.Series[2].XLabelsSource       := 'VIEWDATE';

    dmFeeList.qBudgetGraphAuthQuarter.Open();
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := dmFeeList.qBudgetGraphDeptQuarter;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'XFIELD';
    chBudget.Series[0].XLabelsSource       := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := dmFeeList.qBudgetGraphDeptQuarter;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'XFIELD';
    chBudget.Series[1].XLabelsSource       := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := dmFeeList.qBudgetGraphDeptQuarter;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'XFIELD';
    chBudget.Series[2].XLabelsSource       := 'VIEWDATE';

    dmFeeList.qBudgetGraphDeptQuarter.Open();
  end;
  chBudget.BottomAxis.Title.Caption := 'Quarter'; }
end;

procedure TfrmFeeListNew.rbBudgetViewYearClick(Sender: TObject);
begin
{  if(FDontChange) or (FBudgetGraphView = []) then
    Exit;

  CloseBudgetQueries();
  if(bstAuthor in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := dmFeeList.qBudgetGraphAuthYear;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := dmFeeList.qBudgetGraphAuthYear;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := dmFeeList.qBudgetGraphAuthYear;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'VIEWDATE';

    dmFeeList.qBudgetGraphAuthYear.Open();
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := dmFeeList.qBudgetGraphDeptYear;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := dmFeeList.qBudgetGraphDeptYear;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := dmFeeList.qBudgetGraphDeptYear;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'VIEWDATE';

    dmFeeList.qBudgetGraphDeptYear.Open();
  end;
  chBudget.BottomAxis.Title.Caption := 'Year';  }
end;

procedure TfrmFeeListNew.CloseBudgetQueries();
begin
  dmFeeList.qBudgetGraphAuthMonthWIP.Close();
  dmFeeList.qBudgetGraphAuthQtrWIP.Close();
  dmFeeList.qBudgetGraphAuthYrWIP.Close();

  dmFeeList.qBudgetGraphDeptMthWIP.Close();
  dmFeeList.qBudgetGraphDeptQtrWIP.Close();
  dmFeeList.qBudgetGraphDeptYrWIP.Close();

end;

procedure TfrmFeeListNew.cbGroupExpandedPropertiesChange(Sender: TObject);
begin
   if boolean(cbGroupExpanded.EditValue) then
      grdFees.FocusedView.DataController.Groups.FullExpand
   else
      grdFees.FocusedView.DataController.Groups.FullCollapse;
end;

procedure TfrmFeeListNew.SaveColumnData;
{var
   LNumFields: integer;
   GroupIndex: integer; }
begin
   SettingSaveStream(dmAxiom.UserID,C_NEWFEELIST, tvFees);
{   for LNumFields := 0 to tvFees.ColumnCount - 1 do
   begin
      SettingSave(C_NEWFEELIST,C_COLUMNNAME          + IntToStr(LNumFields),tvFees.Columns[LNumFields].Name);
      SettingSaveBoolean(C_NEWFEELIST,C_COLUMNVISIBLE + IntToStr(LNumFields),tvFees.Columns[LNumFields].Visible);
      SettingSave(C_NEWFEELIST,C_COLUMNSORTORDER     + IntToStr(LNumFields),tvFees.Columns[LNumFields].SortOrder);
      if tvFees.Columns[LNumFields].Options.Grouping then
      begin
         if tvFees.Columns[LNumFields].GroupIndex >= 0 then
            GroupIndex := tvFees.Columns[LNumFields].GroupIndex
         else
            GroupIndex := -1;
      end
      else
         GroupIndex := -1;
      SettingSave(C_NEWFEELIST,C_COLUMNGROUPORDER    + IntToStr(LNumFields),tvFees.Columns[LNumFields].GroupIndex);
      SettingSave(C_NEWFEELIST,C_COLUMNWIDTH         + IntToStr(LNumFields),Integer(tvFees.Columns[LNumFields].Width));
      SettingSave(C_NEWFEELIST, C_COLUMNPOSITION     + IntToStr(LNumFields),Integer(tvFees.Columns[LNumFields].Index));
  end;
  SettingSave(C_NEWFEELIST,'ColumnCount',LNumFields); }
end;

procedure TfrmFeeListNew.LoadColumnData;
{var
   LNumFields: integer;
   i: integer;
   LVisibleIndex: integer; }
begin
   SettingLoadStream(dmAxiom.UserID, C_NEWFEELIST, tvFees);
   {for LNumFields := 0 to tvFees.ColumnCount - 1 do
   begin
      tvFees.Columns[LNumFields].Visible    := SettingLoadGridBoolean(C_NEWFEELIST,C_COLUMNVISIBLE  + IntToStr(LNumFields));
      tvFees.Columns[LNumFields].SortOrder  := SettingLoadSort(C_NEWFEELIST,C_COLUMNSORTORDER + IntToStr(LNumFields));
      if tvFees.Columns[LNumFields].Options.Grouping then
         tvFees.Columns[LNumFields].GroupIndex := SettingLoadGroup(C_NEWFEELIST,C_COLUMNGROUPORDER + IntToStr(LNumFields))
      else
         tvFees.Columns[LNumFields].GroupIndex := -1;
      if SettingLoadInteger(C_NEWFEELIST,C_COLUMNWIDTH + IntToStr(LNumFields)) > 0 then
         tvFees.Columns[LNumFields].Width := SettingLoadInteger(C_NEWFEELIST,C_COLUMNWIDTH + IntToStr(LNumFields));

      if tvFees.Columns[LNumFields].Visible then
         for i := 0 to tvFees.ColumnCount - 1 do
         begin
            if SettingLoadString(C_NEWFEELIST,C_COLUMNNAME + IntToStr(i)) = tvFees.Columns[LNumFields].Name then
               if SettingLoadInteger(C_NEWFEELIST, C_COLUMNPOSITION + IntToStr(i)) = 0 then
               begin
                  tvFees.Columns[LNumFields].Index := LVisibleIndex;
                  inc(LVisibleIndex);
                  break;
               end
               else
               begin
                  tvFees.Columns[LNumFields].Index := SettingLoadInteger(C_NEWFEELIST, C_COLUMNPOSITION + IntToStr(i));
                  break;
               end;
         end;
  end;                                                  }
  grdFees.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfrmFeeListNew.ResizeColumns(ATree: TVirtualStringTree);
var
  i: Integer;
  LColumn: TVirtualTreeColumn;
  LWidth: Integer;
  LFont: TFont;
begin
  if(FExpanding) then
    Exit;
  ATree.BeginUpdate();
  try
    ATree.Header.AutoFitColumns();

     LFont := Canvas.Font;
    try
      Canvas.Font := ATree.Header.Font;
      for i := 0 to ATree.Header.Columns.Count - 1 do
      begin
        LColumn := ATree.Header.Columns[i];
        LWidth  := Canvas.TextWidth(LColumn.Text) + 20;
        if(LWidth > LColumn.Width) then
          LColumn.Width := LWidth;
      end;
    finally
      Canvas.Font := LFont;
    end;
  finally
    ATree.EndUpdate();
  end;
end;

procedure TfrmFeeListNew.vtDrillDownExpanded(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
  ResizeColumns(TVirtualStringTree(Sender));
end;

procedure TfrmFeeListNew.vtDrillDownCollapsed(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
  ResizeColumns(TVirtualStringTree(Sender));
end;


procedure TfrmFeeListNew.tvFeesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
   if Atext <> '' then
      AText := FloatToStrF((StrToFloat(AText)/60),ffFixed,5,2) + ' Hours';
end;

procedure TfrmFeeListNew.FormCreate(Sender: TObject);
var
   iCtr,iTmp: integer;
begin
 {  if dmAxiom.DictionaryInstalled then
   begin
      edtDescr.AddictSpell := dmAxiom.Addict;
   end; }

   if grdFees.Font.Size <> dmAxiom.GridFont then
      grdFees.Font.Size := dmAxiom.GridFont;

   if(not Assigned(dmFeeList)) then
      dmFeeList := TdmFeeList.Create(Application);
   dmFeeList.qAuthorType.Open;
   dmFeeList.qBranch.Open;
   dmFeeList.qPartner.Open;
   dmFeeList.qEntity.Open;
   dmFeeList.qScaleCost.Open;
   dmFeeList.qDepartment.Open;
   dmFeeList.qFeeType.Open;
   if SystemString('Use_Fee_Authority') = 'Y' then
   begin
      cbAuthor.Properties.ListSource := dsEmployeeList;
      qryEmployeeList.ParamByName('code').AsString := dmAxiom.UserID;
      qryEmployeeList.Open;
   end
   else
   begin
      cbAuthor.Properties.ListSource := dmFeeList.dsFeeEarners;
      dmFeeList.qFeeEarners.Open;
   end;
   grdFees.FocusedView.DataController.Groups.FullExpand;
   setDisplayNames;
   SettingLoadStream(dmAxiom.UserID, 'lvFees Layout',tvFees );
   FLastKey := VK_NONAME;
//   LoadColumnData();
end;

procedure TfrmFeeListNew.setDisplayNames;
var
   imaxLength : integer;
begin
  imaxLength := 0;
  lblPartner.Caption := getLabelValue('MATTER','PARTNER',imaxLength, 'Partner');
//  lblAuthor.Caption := getLabelValue('MATTER','AUTHOR',imaxLength, 'Author');
end;

procedure TfrmFeeListNew.eMatterPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOk then
   begin
      FMatterNo := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      eMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString; //  dmAxiom.qryMSearch.FieldByName('TITLE').AsString;
   end;
end;

procedure TfrmFeeListNew.edClientCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);
  if frmClientSearch.ShowModal = mrOk then
  begin
    FClientCode := frmClientSearch.qryClientList.FieldByName('CLIENTID').AsString;
    edClientCode.Text := frmClientSearch.qryClientList.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmFeeListNew.cbAuthorPropertiesEditValueChanged(Sender: TObject);
begin
   if TcxLookupComboBox(Sender).Text = '' then
      TcxLookupComboBox(Sender).EditValue := '';
end;


procedure TfrmFeeListNew.tvFeesTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
   if Atext <> '' then
      Atext := 'Hours: ' + FloatToStrF((StrToFloat(AText)/60),ffFixed,5,2);
//      Atext := 'Total Hours: ' + FloatToStrF((StrToFloat(AText)/60),ffFixed,5,2);
end;



procedure TfrmFeeListNew.actExpGroupsExecute(Sender: TObject);
begin
   grdFees.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfrmFeeListNew.tvFeesTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
   if Atext <> '' then
      AText := AText + ' Fee(s)';
end;

procedure TfrmFeeListNew.actCollapseGroupsExecute(Sender: TObject);
begin
   grdFees.FocusedView.DataController.Groups.FullCollapse;
end;

procedure TfrmFeeListNew.actExpGroupsUpdate(Sender: TObject);
begin
   actExpGroups.Enabled := ((grdFees.FocusedView.DataController.Groups.GroupingItemCount > 0) AND
                           (pcFeelist.ActivePage = tsFeeList));
end;

procedure TfrmFeeListNew.actCollapseGroupsUpdate(Sender: TObject);
begin
   actCollapseGroups.Enabled := ((grdFees.FocusedView.DataController.Groups.GroupingItemCount > 0) AND
                           (pcFeelist.ActivePage = tsFeeList));
end;

// Report procedure/functions
procedure TfrmFeeListNew.pplblGrpAuthorPrint(Sender: TObject);
begin
  //TppLabel(Sender).Text := 'Author ' + EmpString(qryMatter.FieldByName('AUTHOR').AsString, 'NAME') + ' (' + qryMatter.FieldByName('AUTHOR').AsString + ')';
  TppLabel(Sender).Text := 'Author: ' + qryFeeRpt.FieldByName('EMP').AsString;
end;

procedure TfrmFeeListNew.feeRptBeforePrint(Sender: TObject);
begin
  feeRpt.PreviewForm.WindowState := wsMaximized;
  TppViewer(feeRpt.PreviewForm.Viewer).ZoomSetting := zs100percent;

  ppReportPeriod.Text := MakeTitle();
end;

procedure TfrmFeeListNew.eMatterPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   ARefNo: string;
begin
   if string(DisplayValue) <> '' then
   begin
      ARefNo := PadFileID(DisplayValue);
   	FMatterNo := ARefNo;
      DisplayValue := ARefNo + ' - ' + TableString('MATTER','FILEID',String(ARefNo),'TITLE');
   end;
end;

procedure TfrmFeeListNew.dxBarButton17Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmFeeListNew.tsFeesBudgetMonthShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;

begin
   //** Fees by Month Graph
   Screen.Cursor := crHourGlass;
//  CloseBudgetQueries();

   dmFeeList.qBudgetGraphAuthMonthFee.Close;
   dmFeeList.qBudgetGraphDeptMonthFee.Close;

   LDateFirst := DateOf(dtpDateFrom.Date);
   LDateLast  := DateOf(dtpDateTo.Date);

   if(LDateFirst > LDateLast) then
      Exit;

   DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
   DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);


   FBudgetGraphView := [];
      Include(FBudgetGraphView,bstMonth);

   if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
   else
      Exit;

   if(bstAuthor in FBudgetGraphView) then
   begin
      dmFeeList.qBudgetGraphAuthMonthFee.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
      dmFeeList.qBudgetGraphAuthMonthFee.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
      dmFeeList.qBudgetGraphAuthMonthFee.ParamByName('author').AsString    := cbAuthor.EditValue;

   end else if(bstDepartment in FBudgetGraphView) then
   begin
      dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
      dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
      dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('dept').AsString      := cbDept.EditValue;
   end;

   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chFeeBudgetMonth.Series[0].DataSource := dmFeeList.qBudgetGraphAuthMonthFee;
      chFeeBudgetMonth.Series[0].YValues.ValueSource := 'BILLED';
      chFeeBudgetMonth.Series[0].XValues.ValueSource := 'VIEWDATE';

      // line for budget
      chFeeBudgetMonth.Series[1].DataSource := dmFeeList.qBudgetGraphAuthMonthFee;
      chFeeBudgetMonth.Series[1].YValues.ValueSource := 'FEEBUDGET';
      chFeeBudgetMonth.Series[1].XValues.ValueSource := 'VIEWDATE';

      dmFeeList.qBudgetGraphAuthMonthFee.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chFeeBudgetMonth.Series[0].DataSource := dmFeeList.qBudgetGraphDeptMonthFee;
      chFeeBudgetMonth.Series[0].YValues.ValueSource := 'BILLED';
      chFeeBudgetMonth.Series[0].XValues.ValueSource := 'VIEWDATE';

      // line for budget
      chFeeBudgetMonth.Series[1].DataSource := dmFeeList.qBudgetGraphDeptMonthFee;
      chFeeBudgetMonth.Series[1].YValues.ValueSource := 'FEEBUDGET';
      chFeeBudgetMonth.Series[1].XValues.ValueSource := 'VIEWDATE';

      dmFeeList.qBudgetGraphDeptMonthFee.Open();
   end;
   chFeeBudgetMonth.BottomAxis.Title.Caption := 'Month';
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.tsTimeBudgetMonthShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;

begin
//**** Time by Month Graph ***********//
   Screen.Cursor := crHourGlass;
//  CloseBudgetQueries();

  dmFeeList.qBdgtGraphDeptMthHr.Close();
  dmFeeList.qBudgetGraphAuthMthHr.Close();

  LDateFirst := DateOf(dtpDateFrom.Date);
  LDateLast  := DateOf(dtpDateTo.Date);

  if(LDateFirst > LDateLast) then
    Exit;

  DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
  DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);

  FBudgetGraphView := [];
    Include(FBudgetGraphView,bstMonth);

  if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
  else
    Exit;

  if(bstAuthor in FBudgetGraphView) then
  begin
    dmFeeList.qBudgetGraphAuthMthHr.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
    dmFeeList.qBudgetGraphAuthMthHr.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
    dmFeeList.qBudgetGraphAuthMthHr.ParamByName('author').AsString    := cbAuthor.EditValue;
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    dmFeeList.qBdgtGraphDeptMthHr.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
    dmFeeList.qBdgtGraphDeptMthHr.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
    dmFeeList.qBdgtGraphDeptMthHr.ParamByName('dept').AsString      := cbDept.EditValue;
  end;

   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chTimeBudgetMonth.Series[0].DataSource := dmFeeList.qBudgetGraphAuthMthHr;
      chTimeBudgetMonth.Series[0].YValues.ValueSource := 'MTIME';
      chTimeBudgetMonth.Series[0].XValues.ValueSource := 'VIEWDATE';

      // bar for unbilled
      chTimeBudgetMonth.Series[1].DataSource := dmFeeList.qBudgetGraphAuthMthHr;
      chTimeBudgetMonth.Series[1].YValues.ValueSource := 'OTIME';
      chTimeBudgetMonth.Series[1].XValues.ValueSource := 'VIEWDATE';

      // line for budget
      chTimeBudgetMonth.Series[2].DataSource := dmFeeList.qBudgetGraphAuthMthHr;
      chTimeBudgetMonth.Series[2].YValues.ValueSource := 'TIMEBUDGET';
      chTimeBudgetMonth.Series[2].XValues.ValueSource := 'VIEWDATE';

      dmFeeList.qBudgetGraphAuthMthHr.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chTimeBudgetMonth.Series[0].DataSource := dmFeeList.qBdgtGraphDeptMthHr;
      chTimeBudgetMonth.Series[0].YValues.ValueSource := 'MTIME';
      chTimeBudgetMonth.Series[0].XValues.ValueSource := 'VIEWDATE';

      // bar for unbilled
      chTimeBudgetMonth.Series[1].DataSource := dmFeeList.qBdgtGraphDeptMthHr;
      chTimeBudgetMonth.Series[1].YValues.ValueSource := 'OTIME';
      chTimeBudgetMonth.Series[1].XValues.ValueSource := 'VIEWDATE';

      // line for budget
      chTimeBudgetMonth.Series[2].DataSource := dmFeeList.qBdgtGraphDeptMthHr;
      chTimeBudgetMonth.Series[2].YValues.ValueSource := 'TIMEBUDGET';
      chTimeBudgetMonth.Series[2].XValues.ValueSource := 'VIEWDATE';

      dmFeeList.qBdgtGraphDeptMthHr.Open();
   end;
   chTimeBudgetMonth.BottomAxis.Title.Caption := 'Month';
   Screen.Cursor := crDefault;

end;

procedure TfrmFeeListNew.tsWIPBudgetMonthShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;
begin
   //*** WIP by Month graph
   Screen.Cursor := crHourGlass;
//  CloseBudgetQueries();
   dmFeeList.qBudgetGraphAuthMonthWIP.Close;
   dmFeeList.qBudgetGraphDeptMthWIP.Close;

  LDateFirst := DateOf(dtpDateFrom.Date);
  LDateLast  := DateOf(dtpDateTo.Date);

  if(LDateFirst > LDateLast) then
    Exit;

  DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
  DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);  

  FBudgetGraphView := [];
    Include(FBudgetGraphView,bstMonth);

  if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
  else
    Exit;

  if(bstAuthor in FBudgetGraphView) then
  begin
    dmFeeList.qBudgetGraphAuthMonthWIP.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
    dmFeeList.qBudgetGraphAuthMonthWIP.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
    dmFeeList.qBudgetGraphAuthMonthWIP.ParamByName('author').AsString    := cbAuthor.EditValue;

  end else if(bstDepartment in FBudgetGraphView) then
  begin
    dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
    dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
    dmFeeList.qBudgetGraphDeptMthWIP.ParamByName('dept').AsString      := cbDept.EditValue;
  end;

   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetMonth.Series[0].DataSource := dmFeeList.qBudgetGraphAuthMonthWIP;
      chBudgetMonth.Series[0].YValues.ValueSource := 'BILLED';
      chBudgetMonth.Series[0].XValues.ValueSource := 'VIEWDATE';

       // bar for unbilled
      chBudgetMonth.Series[1].DataSource := dmFeeList.qBudgetGraphAuthMonthWIP;
      chBudgetMonth.Series[1].YValues.ValueSource := 'UNBILLED';
      chBudgetMonth.Series[1].  XValues.ValueSource := 'VIEWDATE';

      // line for budget
      chBudgetMonth.Series[2].DataSource := dmFeeList.qBudgetGraphAuthMonthWIP;
      chBudgetMonth.Series[2].YValues.ValueSource := 'WIPBUDGET';
      chBudgetMonth.Series[2].XValues.ValueSource := 'VIEWDATE';

      dmFeeList.qBudgetGraphAuthMonthWIP.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetMonth.Series[0].DataSource := dmFeeList.qBudgetGraphDeptMthWIP;
      chBudgetMonth.Series[0].YValues.ValueSource := 'BILLED';
      chBudgetMonth.Series[0].XValues.ValueSource := 'VIEWDATE';

        // bar for unbilled
      chBudgetMonth.Series[1].DataSource := dmFeeList.qBudgetGraphDeptMthWIP;
      chBudgetMonth.Series[1].YValues.ValueSource := 'UNBILLED';
      chBudgetMonth.Series[1].  XValues.ValueSource := 'VIEWDATE';

      // line for budget
      chBudgetMonth.Series[2].DataSource := dmFeeList.qBudgetGraphDeptMthWIP;
      chBudgetMonth.Series[2].YValues.ValueSource := 'WIPBUDGET';
      chBudgetMonth.Series[2].XValues.ValueSource := 'VIEWDATE';

      dmFeeList.qBudgetGraphDeptMthWIP.Open();
   end;
   chBudgetMonth.BottomAxis.Title.Caption := 'Month';
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.tsBudgetHoursQtrShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;

begin
  // hours quarter
   Screen.Cursor := crHourGlass;

  dmFeeList.qBdgtGraphAuthQtrHr.Close();
  dmFeeList.qBdgtGraphDeptQtrHr.Close();

  LDateFirst := DateOf(dtpDateFrom.Date);
  LDateLast  := DateOf(dtpDateTo.Date);

  if(LDateFirst > LDateLast) then
    Exit;

  DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
  DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);

  if LDateFirstMonth > 6 then
        inc(LDateFirstYear);

   if LDateLastMonth > 6 then
        inc(LDateLastYear);

  FBudgetGraphView := [];
    Include(FBudgetGraphView,bstQuarter);

 if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
  else
    Exit;

  if(bstAuthor in FBudgetGraphView) then
  begin
    dmFeeList.qBdgtGraphAuthQtrHr.ParamByName('firstyear').AsInteger := LDateFirstYear;
    dmFeeList.qBdgtGraphAuthQtrHr.ParamByName('lastyear').AsInteger  := LDateLastYear;
    dmFeeList.qBdgtGraphAuthQtrHr.ParamByName('author').AsString    := cbAuthor.EditValue;
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    dmFeeList.qBdgtGraphDeptQtrHr.ParamByName('firstyear').AsInteger := LDateFirstYear;
    dmFeeList.qBdgtGraphDeptQtrHr.ParamByName('lastyear').AsInteger  := LDateLastYear;
    dmFeeList.qBdgtGraphDeptQtrHr.ParamByName('dept').AsString      := cbDept.EditValue;
  end;

   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chHoursBudgetQuarter.Series[0].DataSource := dmFeeList.qBdgtGraphAuthQtrHr;
      chHoursBudgetQuarter.Series[0].YValues.ValueSource := 'MTIME';
      chHoursBudgetQuarter.Series[0].XValues.ValueSource := 'QUARTER';

      // bar for unbilled
      chHoursBudgetQuarter.Series[1].DataSource := dmFeeList.qBdgtGraphAuthQtrHr;
      chHoursBudgetQuarter.Series[1].YValues.ValueSource := 'OTIME';
      chHoursBudgetQuarter.Series[1].XValues.ValueSource := 'QUARTER';

      // line for budget
      chHoursBudgetQuarter.Series[2].DataSource := dmFeeList.qBdgtGraphAuthQtrHr;
      chHoursBudgetQuarter.Series[2].YValues.ValueSource := 'TIMEBUDGET';
      chHoursBudgetQuarter.Series[2].XValues.ValueSource := 'QUARTER';

      dmFeeList.qBdgtGraphAuthQtrHr.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chHoursBudgetQuarter.Series[0].DataSource := dmFeeList.qBdgtGraphDeptQtrHr;
      chHoursBudgetQuarter.Series[0].YValues.ValueSource := 'MTIME';
      chHoursBudgetQuarter.Series[0].XValues.ValueSource := 'QUARTER';

      // bar for unbilled
      chHoursBudgetQuarter.Series[1].DataSource := dmFeeList.qBdgtGraphDeptQtrHr;
      chHoursBudgetQuarter.Series[1].YValues.ValueSource := 'OTIME';
      chHoursBudgetQuarter.Series[1].XValues.ValueSource := 'QUARTER';

      // line for budget
      chHoursBudgetQuarter.Series[2].DataSource := dmFeeList.qBdgtGraphDeptQtrHr;
      chHoursBudgetQuarter.Series[2].YValues.ValueSource := 'TIMEBUDGET';
      chHoursBudgetQuarter.Series[2].XValues.ValueSource := 'QUARTER';

      dmFeeList.qBdgtGraphDeptQtrHr.Open();
   end;
   chHoursBudgetQuarter.BottomAxis.Title.Caption := 'Quarter';
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.tsFeeBudgetQtrShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word; 
begin
// fees quarter
   Screen.Cursor := crHourGlass;

   dmFeeList.qBdgtGraphAuthQtrFee.Close();
   dmFeeList.qBdgtGraphDeptQtrFee.Close();

  LDateFirst := DateOf(dtpDateFrom.Date);
  LDateLast  := DateOf(dtpDateTo.Date);

  if(LDateFirst > LDateLast) then
    Exit;

  DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
  DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay); 

  if LDateFirstMonth > 6 then
        inc(LDateFirstYear);

   if LDateLastMonth > 6 then
        inc(LDateLastYear);

  FBudgetGraphView := [];
    Include(FBudgetGraphView,bstQuarter);

  if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
  else
    Exit;

  if(bstAuthor in FBudgetGraphView) then
  begin
    dmFeeList.qBdgtGraphAuthQtrFee.ParamByName('firstyear').AsInteger := LDateFirstYear;
    dmFeeList.qBdgtGraphAuthQtrFee.ParamByName('lastyear').AsInteger  := LDateLastYear;
    dmFeeList.qBdgtGraphAuthQtrFee.ParamByName('author').AsString    := cbAuthor.EditValue;

  end else if(bstDepartment in FBudgetGraphView) then
  begin
    dmFeeList.qBdgtGraphDeptQtrFee.ParamByName('firstyear').AsInteger := LDateFirstYear;
    dmFeeList.qBdgtGraphDeptQtrFee.ParamByName('lastyear').AsInteger  := LDateLastYear;
    dmFeeList.qBdgtGraphDeptQtrFee.ParamByName('dept').AsString      := cbDept.EditValue;
  end;

   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chFeesBudgetQuarter.Series[0].DataSource := dmFeeList.qBdgtGraphAuthQtrFee;
      chFeesBudgetQuarter.Series[0].YValues.ValueSource := 'BILLED';
      chFeesBudgetQuarter.Series[0].XValues.ValueSource := 'QUARTER';

      // line for budget
      chFeesBudgetQuarter.Series[1].DataSource := dmFeeList.qBdgtGraphAuthQtrFee;
      chFeesBudgetQuarter.Series[1].YValues.ValueSource := 'FEEBUDGET';
      chFeesBudgetQuarter.Series[1].XValues.ValueSource := 'QUARTER';

      dmFeeList.qBdgtGraphAuthQtrFee.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chFeesBudgetQuarter.Series[0].DataSource := dmFeeList.qBdgtGraphDeptQtrFee;
      chFeesBudgetQuarter.Series[0].YValues.ValueSource := 'BILLED';
      chFeesBudgetQuarter.Series[0].XValues.ValueSource := 'QUARTER';

      // line for budget
      chFeesBudgetQuarter.Series[1].DataSource := dmFeeList.qBdgtGraphDeptQtrFee;
      chFeesBudgetQuarter.Series[1].YValues.ValueSource := 'FEEBUDGET';
      chFeesBudgetQuarter.Series[1].XValues.ValueSource := 'QUARTER';

      dmFeeList.qBdgtGraphDeptQtrFee.Open();
   end;
   chFeesBudgetQuarter.BottomAxis.Title.Caption := 'Quarter';
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.tsWIPBudgetYrShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;
begin
   Screen.Cursor := crHourGlass;
//   CloseBudgetQueries();

   dmFeeList.qBudgetGraphAuthYrWIP.Close;
   dmFeeList.qBudgetGraphDeptYrWIP.Close;

   LDateFirst := DateOf(dtpDateFrom.Date);
   LDateLast  := DateOf(dtpDateTo.Date);

   if(LDateFirst > LDateLast) then
      Exit;

   DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
   DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);

   if LDateFirstMonth > 6 then
        inc(LDateFirstYear);

   if LDateLastMonth > 6 then
        inc(LDateLastYear);

   FDontChange := True;
//  rbBudgetViewYear.Enabled    := (LDateLastYear - LDateFirstYear > 0);
//  rbBudgetViewQuarter.Enabled := ((LDateLastYear = LDateFirstYear) and (LDateLastMonth - LDateFirstMonth > 6)) or
//                                 (LDateLastYear - LDateFirstYear > 0);
//  rbBudgetViewMonth.Enabled   := (LDateLastYear - LDateFirstYear < 2);
   FDontChange := False;

   FBudgetGraphView := [];
   Include(FBudgetGraphView,bstYear);

   if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
   else
      Exit;

   if(bstAuthor in FBudgetGraphView) then
   begin
      dmFeeList.qBudgetGraphAuthYrWIP.ParamByName('firstyear').AsInteger := LDateFirstYear;
      dmFeeList.qBudgetGraphAuthYrWIP.ParamByName('lastyear').AsInteger  := LDateLastYear;
      dmFeeList.qBudgetGraphAuthYrWIP.ParamByName('author').AsString    := cbAuthor.EditValue;
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      dmFeeList.qBudgetGraphDeptYrWIP.ParamByName('firstyear').AsInteger := LDateFirstYear;
      dmFeeList.qBudgetGraphDeptYrWIP.ParamByName('lastyear').AsInteger  := LDateLastYear;
      dmFeeList.qBudgetGraphDeptYrWIP.ParamByName('dept').AsString    := cbDept.EditValue;
   end;

   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetYear.Series[0].DataSource := dmFeeList.qBudgetGraphAuthYrWIP;
      chBudgetYear.Series[0].YValues.ValueSource := 'BILLED';
      chBudgetYear.Series[0].XValues.ValueSource := 'YEAR';

      // bar for unbilled
      chBudgetYear.Series[1].DataSource := dmFeeList.qBudgetGraphAuthYrWIP;
      chBudgetYear.Series[1].YValues.ValueSource := 'UNBILLED';
      chBudgetYear.Series[1].XValues.ValueSource := 'YEAR';

      // line for budget
      chBudgetYear.Series[2].DataSource := dmFeeList.qBudgetGraphAuthYrWIP;
      chBudgetYear.Series[2].YValues.ValueSource := 'WIPBUDGET';
      chBudgetYear.Series[2].XValues.ValueSource := 'YEAR';

      dmFeeList.qBudgetGraphAuthYrWIP.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetYear.Series[0].DataSource := dmFeeList.qBudgetGraphDeptYrWIP;
      chBudgetYear.Series[0].YValues.ValueSource := 'BILLED';
      chBudgetYear.Series[0].XValues.ValueSource := 'YEAR';

      // bar for unbilled
      chBudgetYear.Series[1].DataSource := dmFeeList.qBudgetGraphDeptYrWIP;
      chBudgetYear.Series[1].YValues.ValueSource := 'UNBILLED';
      chBudgetYear.Series[1].XValues.ValueSource := 'YEAR';

      // line for budget
      chBudgetYear.Series[2].DataSource := dmFeeList.qBudgetGraphDeptYrWIP;
      chBudgetYear.Series[2].YValues.ValueSource := 'WIPBUDGET';
      chBudgetYear.Series[2].XValues.ValueSource := 'YEAR';

      dmFeeList.qBudgetGraphDeptYrWIP.Open();
   end;
   chBudgetYear.BottomAxis.Title.Caption := 'Year';
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.tsTimeBudgetYrShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;

begin
   Screen.Cursor := crHourGlass;
//   CloseBudgetQueries();

   dmFeeList.qBdgtGraphAuthYrHr.Close();
   dmFeeList.qBdgtGraphDeptYrHr.Close();

   LDateFirst := DateOf(dtpDateFrom.Date);
   LDateLast  := DateOf(dtpDateTo.Date);

   if(LDateFirst > LDateLast) then
      Exit;

   DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
   DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);

   if LDateFirstMonth > 6 then
        inc(LDateFirstYear);

   if LDateLastMonth > 6 then
        inc(LDateLastYear);

   FDontChange := True;
//  rbBudgetViewYear.Enabled    := (LDateLastYear - LDateFirstYear > 0);
//  rbBudgetViewQuarter.Enabled := ((LDateLastYear = LDateFirstYear) and (LDateLastMonth - LDateFirstMonth > 6)) or
//                                 (LDateLastYear - LDateFirstYear > 0);
//  rbBudgetViewMonth.Enabled   := (LDateLastYear - LDateFirstYear < 2);
   FDontChange := False;

   FBudgetGraphView := [];
   Include(FBudgetGraphView,bstYear);

   if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
   else
      Exit;

   if(bstAuthor in FBudgetGraphView) then
   begin
      dmFeeList.qBdgtGraphAuthYrHr.ParamByName('firstyear').AsInteger := LDateFirstYear;
      dmFeeList.qBdgtGraphAuthYrHr.ParamByName('lastyear').AsInteger  := LDateLastYear;
      dmFeeList.qBdgtGraphAuthYrHr.ParamByName('author').AsString    := cbAuthor.EditValue;
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      dmFeeList.qBdgtGraphDeptYrHr.ParamByName('firstyear').AsInteger := LDateFirstYear;
      dmFeeList.qBdgtGraphDeptYrHr.ParamByName('lastyear').AsInteger  := LDateLastYear;
      dmFeeList.qBdgtGraphDeptYrHr.ParamByName('dept').AsString    := cbDept.EditValue;
   end;

   if(bstAuthor in FBudgetGraphView) then
   begin                                
      // Bar for billed
      chBudgetYearTime.Series[0].DataSource := dmFeeList.qBdgtGraphAuthYrHr;
      chBudgetYearTime.Series[0].YValues.ValueSource := 'MTIME';
      chBudgetYearTime.Series[0].XValues.ValueSource := 'YEAR';

      // bar for unbilled
      chBudgetYearTime.Series[1].DataSource := dmFeeList.qBdgtGraphAuthYrHr;
      chBudgetYearTime.Series[1].YValues.ValueSource := 'OTIME';
      chBudgetYearTime.Series[1].XValues.ValueSource := 'YEAR';

      // line for budget
      chBudgetYearTime.Series[2].DataSource := dmFeeList.qBdgtGraphAuthYrHr;
      chBudgetYearTime.Series[2].YValues.ValueSource := 'TIMEBUDGET';
      chBudgetYearTime.Series[2].XValues.ValueSource := 'YEAR';

      dmFeeList.qBdgtGraphAuthYrHr.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetYearTime.Series[0].DataSource := dmFeeList.qBdgtGraphDeptYrHr;
      chBudgetYearTime.Series[0].YValues.ValueSource := 'MTIME';
      chBudgetYearTime.Series[0].XValues.ValueSource := 'YEAR';

      // bar for unbilled
      chBudgetYearTime.Series[1].DataSource := dmFeeList.qBdgtGraphDeptYrHr;
      chBudgetYearTime.Series[1].YValues.ValueSource := 'OTIME';
      chBudgetYearTime.Series[1].XValues.ValueSource := 'YEAR';

      // line for budget
      chBudgetYearTime.Series[2].DataSource := dmFeeList.qBdgtGraphDeptYrHr;
      chBudgetYearTime.Series[2].YValues.ValueSource := 'TIMEBUDGET';
      chBudgetYearTime.Series[2].XValues.ValueSource := 'YEAR';

      dmFeeList.qBdgtGraphDeptYrHr.Open();
   end;
   chBudgetYearTime.BottomAxis.Title.Caption := 'Year';
   Screen.Cursor := crDefault;

end;

procedure TfrmFeeListNew.tsFeeBudgetYrShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;

begin
   Screen.Cursor := crHourGlass;
//   CloseBudgetQueries();

   dmFeeList.qBdgtGraphAuthYrFee.Close();
   dmFeeList.qBdgtGraphDeptYrFee.Close();

   LDateFirst := DateOf(dtpDateFrom.Date);
   LDateLast  := DateOf(dtpDateTo.Date);

   if(LDateFirst > LDateLast) then
      Exit;

   DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
   DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);

   if LDateFirstMonth > 6 then
        inc(LDateFirstYear);

   if LDateLastMonth > 6 then
        inc(LDateLastYear);

   FDontChange := True;
//  rbBudgetViewYear.Enabled    := (LDateLastYear - LDateFirstYear > 0);
//  rbBudgetViewQuarter.Enabled := ((LDateLastYear = LDateFirstYear) and (LDateLastMonth - LDateFirstMonth > 6)) or
//                                 (LDateLastYear - LDateFirstYear > 0);
//  rbBudgetViewMonth.Enabled   := (LDateLastYear - LDateFirstYear < 2);
   FDontChange := False;

   FBudgetGraphView := [];
   Include(FBudgetGraphView,bstYear);

   if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
   else
      Exit;

   if(bstAuthor in FBudgetGraphView) then
   begin
      dmFeeList.qBdgtGraphAuthYrFee.ParamByName('firstyear').AsInteger := LDateFirstYear;
      dmFeeList.qBdgtGraphAuthYrFee.ParamByName('lastyear').AsInteger  := LDateLastYear;
      dmFeeList.qBdgtGraphAuthYrFee.ParamByName('author').AsString    := cbAuthor.EditValue;
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      dmFeeList.qBdgtGraphDeptYrFee.ParamByName('firstyear').AsInteger := LDateFirstYear;
      dmFeeList.qBdgtGraphDeptYrFee.ParamByName('lastyear').AsInteger  := LDateLastYear;
      dmFeeList.qBdgtGraphDeptYrFee.ParamByName('dept').AsString    := cbDept.EditValue;
   end;

   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetYearFee.Series[0].DataSource := dmFeeList.qBdgtGraphAuthYrFee;
      chBudgetYearFee.Series[0].YValues.ValueSource := 'BILLED';
      chBudgetYearFee.Series[0].XValues.ValueSource := 'YEAR';

    // line for budget
      chBudgetYearFee.Series[1].DataSource := dmFeeList.qBdgtGraphAuthYrFee;
      chBudgetYearFee.Series[1].YValues.ValueSource := 'FEEBUDGET';
      chBudgetYearFee.Series[1].XValues.ValueSource := 'YEAR';

      dmFeeList.qBdgtGraphAuthYrFee.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chBudgetYearFee.Series[0].DataSource := dmFeeList.qBdgtGraphDeptYrFee;
      chBudgetYearFee.Series[0].YValues.ValueSource := 'BILLED';
      chBudgetYearFee.Series[0].XValues.ValueSource := 'YEAR';

      // line for budget
      chBudgetYearFee.Series[1].DataSource := dmFeeList.qBdgtGraphDeptYrFee;
      chBudgetYearFee.Series[1].YValues.ValueSource := 'FEEBUDGET';
      chBudgetYearFee.Series[1].XValues.ValueSource := 'YEAR';

      dmFeeList.qBdgtGraphDeptYrFee.Open();
   end;
   chBudgetYearFee.BottomAxis.Title.Caption := 'Year';
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.tsWIPBudgetQtrShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;
begin
   Screen.Cursor := crHourGlass;
//   CloseBudgetQueries();

   dmFeeList.qBudgetGraphAuthQtrWIP.Close;
   dmFeeList.qBudgetGraphDeptQtrWIP.Close;

   LDateFirst := DateOf(dtpDateFrom.Date);
   LDateLast  := DateOf(dtpDateTo.Date);

   if(LDateFirst > LDateLast) then
    Exit;

   DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
   DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);

   if LDateFirstMonth > 6 then
        inc(LDateFirstYear);

   if LDateLastMonth > 6 then
        inc(LDateLastYear);


   FBudgetGraphView := [];
   Include(FBudgetGraphView,bstQuarter);

   if (not VarIsNull(cbAuthor.EditValue)) and (cbAuthor.EditValue <> '') then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.EditValue)) and (cbDept.EditValue <> '') then
    Include(FBudgetGraphView,bstDepartment)
   else
    Exit;

   if(bstAuthor in FBudgetGraphView) then
   begin
      dmFeeList.qBudgetGraphAuthQtrWIP.ParamByName('firstyear').AsInteger := LDateFirstYear;
      dmFeeList.qBudgetGraphAuthQtrWIP.ParamByName('lastyear').AsInteger  := LDateLastYear;
      dmFeeList.qBudgetGraphAuthQtrWIP.ParamByName('author').AsString    := cbAuthor.EditValue;
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      dmFeeList.qBudgetGraphDeptQtrWIP.ParamByName('firstyear').AsInteger := LDateFirstYear;
      dmFeeList.qBudgetGraphDeptQtrWIP.ParamByName('lastyear').AsInteger  := LDateLastYear;
      dmFeeList.qBudgetGraphDeptQtrWIP.ParamByName('dept').AsString    := cbDept.EditValue;
   end;

   if(bstAuthor in FBudgetGraphView) then
   begin
      // Bar for billed
      chWIPBudgetQuarter.Series[0].DataSource := dmFeeList.qBudgetGraphAuthQtrWIP;
      chWIPBudgetQuarter.Series[0].YValues.ValueSource := 'BILLED';
      chWIPBudgetQuarter.Series[0].XValues.ValueSource := 'QUARTER';

      // bar for unbilled
      chWIPBudgetQuarter.Series[1].DataSource := dmFeeList.qBudgetGraphAuthQtrWIP;
      chWIPBudgetQuarter.Series[1].YValues.ValueSource := 'UNBILLED';
      chWIPBudgetQuarter.Series[1].XValues.ValueSource := 'QUARTER';

      // line for budget
      chWIPBudgetQuarter.Series[2].DataSource := dmFeeList.qBudgetGraphAuthQtrWIP;
      chWIPBudgetQuarter.Series[2].YValues.ValueSource := 'WIPBUDGET';
      chWIPBudgetQuarter.Series[2].XValues.ValueSource := 'QUARTER';

      dmFeeList.qBudgetGraphAuthQtrWIP.Open();
   end else if(bstDepartment in FBudgetGraphView) then
   begin
      // Bar for billed
      chWIPBudgetQuarter.Series[0].DataSource := dmFeeList.qBudgetGraphDeptQtrWIP;
      chWIPBudgetQuarter.Series[0].YValues.ValueSource := 'BILLED';
      chWIPBudgetQuarter.Series[0].XValues.ValueSource := 'QUARTER';

      // bar for unbilled
      chWIPBudgetQuarter.Series[1].DataSource := dmFeeList.qBudgetGraphDeptQtrWIP;
      chWIPBudgetQuarter.Series[1].YValues.ValueSource := 'UNBILLED';
      chWIPBudgetQuarter.Series[1].XValues.ValueSource := 'QUARTER';

      // line for budget
      chWIPBudgetQuarter.Series[2].DataSource := dmFeeList.qBudgetGraphDeptQtrWIP;
      chWIPBudgetQuarter.Series[2].YValues.ValueSource := 'WIPBUDGET';
      chWIPBudgetQuarter.Series[2].XValues.ValueSource := 'QUARTER';

      dmFeeList.qBudgetGraphDeptQtrWIP.Open();
   end;
   chWIPBudgetQuarter.BottomAxis.Title.Caption := 'Quarter';
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.tsBudgetMonthShow(Sender: TObject);
begin
//   tsWIPBudgetMonthShow(Sender);
end;

procedure TfrmFeeListNew.tbtnPrintGridClick(Sender: TObject);
begin
//   dxComponentPrinter1.Preview(True, GridReportLink);
   dxComponentPrinter1.Preview();
end;

type
  TcxDataSummaryAccess = class(TcxDataSummary);

procedure TfrmFeeListNew.tvFeesCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
var
  ARect: TRect;
  I: Integer;
  AText: string;
  ALevel, ASummaryItemIndex, ADataGroupIndex: Integer;
  ASummaryItems: TcxDataSummaryItems;
  AGridRecord: TcxCustomGridRow;
  ASummary: TcxDataSummaryAccess;
  ARight: Integer;
  AColumn: TcxGridDBColumn;
  ATextWidth: Integer;
begin
  with TcxGridDBTableView(Sender) do
  begin
    AGridRecord := TcxCustomGridRow(AViewInfo.GridRecord);
    ALevel := AGridRecord.Level;
    ADataGroupIndex := DataController.Groups.DataGroupIndexByRowIndex[AGridRecord.Index];
    if ADataGroupIndex <> -1 then
    begin
      ASummary := TcxDataSummaryAccess(DataController.Summary);
      ASummaryItems := ASummary.GroupSummaryItems[ALevel];
    end;
    ARight := ViewInfo.Bounds.Right;
    ACanvas.FillRect(AViewinfo.Bounds);
    with ViewInfo do
      for I := HeaderViewInfo.Count - 1 downto 0 do
      begin
        AColumn := TcxGridDBColumn(HeaderViewInfo.Items[I].Column);
        ASummaryItemIndex := ASummaryItems.IndexOfItemLink(HeaderViewInfo.Items[I].Column);
        AText := DataController.Summary.GroupFooterSummaryTexts[AGridRecord.Index, ALevel, ASummaryItemIndex];
        if AColumn.IsLeft {and (AColumn.Position.BandIndex = 0)} then
          AText := ' ' + AViewInfo.Text;  // eliminate the most-left summary painting ( Summary + group record text!)
        ARect := HeaderViewInfo.Items[I].Bounds;
        ARect.Top := AViewInfo.Bounds.Top;
        ARect.Bottom := AViewInfo.Bounds.Bottom;
        if AColumn.IsLeft {and (AColumn.Position.BandIndex = 0)} then
        begin
          ARect.Right := ARight;
          ARect.Left := ARect.Left + (ALevel + 1) * (Painter.LookAndFeelPainter.ExpandButtonSize + 3) + 2 * ALevel;
        end;
        ATextWidth := ACanvas.TextWidth(AText);
        if {(((HeaderViewInfo.BandsViewInfo[0].Bounds.Right <= HeaderViewInfo[I].Bounds.Left) and
        (HeaderViewInfo.BandsViewInfo[2].Bounds.Left >= HeaderViewInfo[I].Bounds.Left + ATextWidth)) or (AColumn.Position.Band.FixedKind <> fkNone)) and} (AText <> '') then
        begin
          ARect.Right := ARect.Left + ATextWidth + 4;
          Dec(ARect.Bottom);
//          ACanvas.Canvas.Brush.Color := clGreen;
          if not (AColumn.IsLeft {and (AColumn.Position.BandIndex = 0)} and (AText <> '')) then
//            ACanvas.Canvas.FrameRect(ARect);
          ACanvas.Brush.Color := AViewInfo.Params.Color;
          InflateRect(ARect, -1, -1);
          ACanvas.DrawText(AText, ARect, cxAlignLeft or cxAlignVCenter);
        end;
        if not AColumn.IsLeft and (AText <> '') {!} then  // <<<<< this line :(
          ARight := ARect.Left + 2;
      end;
  end;
  ADone := True;
end;

procedure TfrmFeeListNew.GridReportLinkCustomDrawCell(
  Sender: TdxGridReportLink; ACanvas: TCanvas;
  AView: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AColumn: TcxGridColumn; AnItem: TAbstractdxReportCellData;
  var ADone: Boolean);
var
  ARect: TRect;
  I: Integer;
  AText: string;
  ALevel, ASummaryItemIndex, ADataGroupIndex: Integer;
  ASummaryItems: TcxDataSummaryItems;
  ASummary: TcxDataSummaryAccess;
  ARight {$IFDEF PS3}, ALeft {$ENDIF}: Integer;
  ANom, ADenom: Integer;
  AGridRecord: TcxCustomGridRow;
begin
{   if ARecord.IsData then
      Exit;
   with TcxGridDBTableView(AView) do
   begin
     AGridRecord := TcxCustomGridRow(ARecord);
     ALevel := AGridRecord.Level;
     ADataGroupIndex := DataController.Groups.DataGroupIndexByRowIndex[AGridRecord.Index];
     if ADataGroupIndex <> -1 then
     begin
       ASummary := TcxDataSummaryAccess(DataController.Summary);
       ASummaryItems := ASummary.GroupSummaryItems[ALevel];
     end;
     ANom := PixelsNumerator;
     ADenom := PixelsDenominator;
     ARight := MulDiv(ViewInfo.Bounds.Right, Anom, Adenom);
     ACanvas.FillRect(anItem.BoundsRect);
     {$IFDEF PS3}
{       ALeft := AnItem.BoundsRect.Right;
     {$ENDIF}
{     with ViewInfo do
       for I := HeaderViewInfo.Count - 1 downto 0 do
       begin
         AColumn := TcxGridDBColumn(HeaderViewInfo.Items[I].Column);
         ASummaryItemIndex := ASummaryItems.IndexOfItemLink(HeaderViewInfo.Items[I].Column);
         AText := DataController.Summary.GroupFooterSummaryTexts[AGridRecord.Index, ALevel, ASummaryItemIndex];
{         if AColumn.IsLeft {and (TcxGridDBColumn(AColumn).Position.BandIndex = 0)} {then
{           if AnITem is TdxReportCellString then
             AText := ' ' + TdxReportCellString(AnItem).Text;
         {$IFDEF PS3}
{         ARect := Rect(ALeft - MulDiv(AColumn.Width, ANom, ADenom), 0, ALeft, 0);
         {$ELSE}
{         ARect := HeaderViewInfo.Items[I].Bounds;
         ARect := ScaleRect(ARect, ANom, ADenom, ANom, ADenom);
         {$ENDIF}
{         ARect.Top := AnItem.BoundsRect.Top;
         ARect.Bottom := AnItem.BoundsRect.Bottom;
         if AColumn.IsLeft {and (TcxGridDBColumn(AColumn).Position.BandIndex = 0)} {then
{         begin
            ARect.Right := ARight;
            ARect.Left := ARect.Left + MulDiv((ALevel + 1) * (Painter.LookAndFeelPainter.ExpandButtonSize + 3) + 2 * ALevel, ANom, ADenom);
         end;
         Sender.DrawText(ACanvas, ARect, 0, AText, AnItem.Font, clBtnFace,
            taLeft, taCenterY, False, False, False);
         if not AColumn.IsLeft and (AText <> '') {!} {then  // <<<<< this line :(
{           ARight := ARect.Left + MulDiv(2, Anom, Adenom);;
         {$IFDEF PS3}
{         ALeft := ALeft - MulDiv(AColumn.Width, ANom, ADenom);
         {$ENDIF}
{       end;
   end;
   ADone := True;
}
end;

procedure TfrmFeeListNew.tvFeesSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
   try
      if (tvFees.Controller.FocusedRowIndex <> -1) then
      begin
         tbtnFeeEdit.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                                (pcFeelist.ActivePage = tsFeeList) AND dmAxiom.Security.Fee.Edit);

         tbtnOpenMatter.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                                   (pcFeelist.ActivePage = tsFeeList));

         tbtnDeleteFee.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                                  (pcFeelist.ActivePage = tsFeeList) and
                                  (tvFeesBilled.DataBinding.Field.AsString = 'N'));

         tbtnQuickEdit.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                                  (pcFeelist.ActivePage = tsFeeList) AND dmAxiom.Security.Fee.QuickEdit);

         btnMoveMultiFees.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                                (pcFeelist.ActivePage = tsFeeList) AND dmAxiom.Security.Fee.Edit);
      end;
   except
     // silent
   end;
end;

function IsGroupedRecord(ARecord: TcxCustomGridRecord): Boolean;
begin
  Result := not (ARecord.Level = ARecord.GridView.DataController.Groups.GroupingItemCount);
end;

procedure TfrmFeeListNew.tvFeesAUTHORStylesGetHeaderStyle(
  Sender: TcxGridTableView; AColumn: TcxGridColumn; var AStyle: TcxStyle);
var
   imaxLength : integer;
begin
//   AColumn.Caption := getLabelValue('MATTER','AUTHOR',imaxLength, 'Author');
end;

procedure TfrmFeeListNew.tvFeesCanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
   AAllow := not IsGroupedRecord(ARecord);
end;

procedure TfrmFeeListNew.tvFeesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   FLastKey := Key;
end;

procedure TfrmFeeListNew.tvFeesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  HitTest: TcxCustomGridHitTest;
begin
   // Note that the Sender parameter is a Site
   HitTest := (Sender as TcxGridSite).GridView.ViewInfo.GetHitTest(X, Y);
   // The point belongs to a record
   if (HitTest is TcxGridRecordHitTest) and
     IsGroupedRecord(TcxGridRecordHitTest(HitTest).GridRecord) then
   begin
      FLastKey := VK_NONAME;
   end;
end;

procedure TfrmFeeListNew.tvFeesPARTNERNAMEStylesGetHeaderStyle(
  Sender: TcxGridTableView; AColumn: TcxGridColumn; var AStyle: TcxStyle);
var
   imaxLength : integer;
begin
   AColumn.Caption := getLabelValue('MATTER','PARTNER',imaxLength, 'Partner');
end;

procedure TfrmFeeListNew.tvFeesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  GroupItemCount: Integer;
  Data: TcxCustomDataController; //TcxGridDataController;
  I: Integer;
begin
   if (AFocusedRecord = nil) or (APrevFocusedRecord = nil) then
      Exit;

   try
      if dmFeeList.qFees.State <> dsBrowse then
         dmFeeList.qFees.Post;
   except
    // silent
   end;

   if IsGroupedRecord(AFocusedRecord) then
   begin
      Data := Sender.DataController;
      GroupItemCount := Data.Groups.GroupingItemCount;

      if (FLastKey = VK_NONAME) or  // record is clicked by mouse
         (APrevFocusedRecord.Index < AFocusedRecord.Index) then  // move down
      begin
         Data.FocusedRowIndex := AFocusedRecord.Index + (GroupItemCount - AFocusedRecord.Level);
      end
      else  // move up
      begin
         if AFocusedRecord.Index < GroupItemCount then
            Data.FocusedRowIndex := AFocusedRecord.Index + (GroupItemCount - AFocusedRecord.Level)
         else
         begin
            for I := AFocusedRecord.Index - 1 downto 0 do
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
{   else
   begin
      if tvFeesBILLED.EditValue = 'N' then
      begin
//        dmFeeList.qFees.Edit;
         tvFeesDESCR.Options.Editing := True;
         tvFeesDESCR.Options.Focusing := True;
      end
      else
      begin
         tvFeesDESCR.Options.Editing := False;
         tvFeesDESCR.Options.Focusing := False;
      end
   end; }
end;

procedure TfrmFeeListNew.edtDescrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_SPACE then
      QuickCode(Sender);

   if Key = VK_Tab then
   begin
      if FPopupForm is TcxCustomEditPopupWindow then
         (FPopupForm as TcxCustomEditPopupWindow).Edit.DroppedDown := False;

//      tvFeesDESCR.EditValue := Trim(TAddictDBRichEdit(Sender).Text);
      tvFeesDESCR.Options.Focusing := False;

      if dmFeeList.qFees.State in [dsInsert, dsEdit] then
         dmFeeList.qFees.Post;
   end;
end;

procedure TfrmFeeListNew.tvFeesDESCRPropertiesPopup(Sender: TObject);
begin
   FPopupForm := GetParentForm(TControl(Sender));
   dmFeeList.qFees.Edit;
end;

procedure TfrmFeeListNew.edtDescrEnter(Sender: TObject);
begin
{   if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
      TAddictDBRichEdit(Sender).SelStart := Length(TAddictDBRichEdit(Sender).Text) + 1
   else
      TAddictDBRichEdit(Sender).SelectAll;}
end;

procedure TfrmFeeListNew.tbtnDeleteFeeClick(Sender: TObject);
var
  i: integer;
  LPostingFailed: boolean;
  RecIdx, NFEE : Integer;
  FeeList: TStringList;
  ARowInfo: TcxRowInfo;
begin
   Screen.Cursor := crSQLWait;
   if (grdFees.Views[0].DataController.GetSelectedCount > 0) then
   begin
      if MsgAsk('This will DELETE all unbilled fees selected.'#13#13'Are you sure you want to do this?') = mrYes then
      begin
         LPostingFailed := False;
         FeeList := TStringList.Create;
         try
            if dmAxiom.uniInsight.InTransaction then
               dmAxiom.uniInsight.Commit;
            dmAxiom.uniInsight.StartTransaction;
            // Automatically delete the selected items
            for i := 0 to grdFees.Views[0].DataController.GetSelectedCount - 1 do
            begin
               RecIdx := tvFees.DataController.GetSelectedRowIndex(i);
               ARowInfo := tvFees.DataController.GetRowInfo(RecIdx);
               NFEE :=  tvFees.DataController.Values[ARowInfo.RecordIndex, tvFeesNFEE.Index];

               if tvFeesBILLED.EditValue <> 'Y' then
               begin
                  FeeList.Add(IntToStr(NFEE));
               end;
            end;

            try
               tvFees.OnFocusedRecordChanged := nil;
               for i := 0 to FeeList.Count - 1 do
               begin
                  dmFeeList.qDelete.SQL.Text := 'DELETE FROM FEE WHERE NFEE = ' + FeeList.Strings[i];
                  dmFeeList.qDelete.ExecSQL;
                  PlaySound('Delete');
               end;
            finally
               tvFees.OnFocusedRecordChanged := tvFeesFocusedRecordChanged;
            end;

         except
            on E: Exception do
            begin
               dmAxiom.uniInsight.Rollback;
               LPostingFailed := True;
               MsgErr('Fee deletion failed:' + #13#13 + E.Message);
            end;
         end;
         if not LPostingFailed then
         begin
            dmAxiom.uniInsight.Commit;
            MakeSQL;
         end;
      end;
   end
   else
      MessageDlg('No items have been selected to delete',mtInformation,[mbOK], 0);

   if boolean(cbGroupExpanded.EditValue) then
      grdFees.FocusedView.DataController.Groups.FullExpand;

   FeeList.Free;
   Screen.Cursor := crDefault;
end;

procedure TfrmFeeListNew.btnExportToXLClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,grdFees, True, True,True,'xls');
   end;
end;

procedure TfrmFeeListNew.pcFeeListChange(Sender: TObject);
var
  LMinsPerUnit: integer;
  LTotalUnit, LTotalHour, LTotalMin: Currency;
  LTotalMoney: Currency;
  LEndDate, LStartDate: TDateTime;

  LSqlWhere, LSqlFrom, LGroupField: String;

  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;
begin
   btnExportToXL.Enabled := (pcFeeList.ActivePageIndex = 0);
   case pcFeeList.ActivePageIndex of
      0: begin
            MakeSQL();
            grdFees.FocusedView.DataController.Groups.FullExpand;
            tbtnRefresh.Enabled := true;
            btnExportToXL.Enabled := True;
         end;
      1: begin
            dmFeeList.qBilled.Close;
            dmFeeList.qUnbilled.Close;

            // Dates are from midnight to midnight
            LStartDate := Trunc(dtpDateFrom.Date);
            LEndDate := Trunc(dtpDateTo.Date) + 1;

            GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');
            dmFeeList.qWorked.SQL.Clear;
            dmFeeList.qWorked.SQL.Add('SELECT COUNT(CNT) AS DAYS FROM (SELECT COUNT(AMOUNT) AS CNT');
            dmFeeList.qWorked.SQL.Add('FROM ' + LSqlFrom);
            dmFeeList.qWorked.SQL.Add(LSqlWhere);
            dmFeeList.qWorked.SQL.Add('GROUP BY TRUNC(' + LGroupField + '))');
            if chkDateFrom.Checked then
             dmFeeList.qWorked.ParamByName('P_DateFrom').AsDate := LStartDate;
            if chkDateTo.Checked then
             dmFeeList.qWorked.ParamByName('P_DateTo').AsDate := LEndDate;
            dmFeeList.qWorked.Open;

            GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'BILLED = ''Y''');
            dmFeeList.qBilled.SQL.Clear;
            dmFeeList.qBilled.SQL.Add('SELECT SUM(AMOUNT) AS AMT, SUM(UNITS) AS UNITS, SUM(MINS) AS MINS, COUNT(AMOUNT) AS CNT');
            dmFeeList.qBilled.SQL.Add('FROM ' + LSqlFrom);
            dmFeeList.qBilled.SQL.Add(LSqlWhere);
            if chkDateFrom.Checked then
             dmFeeList.qBilled.ParamByName('P_DateFrom').AsDate := LStartDate;
            if chkDateTo.Checked then
             dmFeeList.qBilled.ParamByName('P_DateTo').AsDate := LEndDate;
            dmFeeList.qBilled.Open;


            GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'BILLED <> ''Y''');
            dmFeeList.qUnbilled.SQL.Clear;
            dmFeeList.qUnbilled.SQL.Add('SELECT SUM(AMOUNT) AS AMT, SUM(UNITS) AS UNITS, SUM(MINS) AS MINS, COUNT(AMOUNT) AS CNT');
            dmFeeList.qUnbilled.SQL.Add('FROM ' + LSqlFrom);
            dmFeeList.qUnbilled.SQL.Add(LSqlWhere);
            if chkDateFrom.Checked then
             dmFeeList.qUnbilled.ParamByName('P_DateFrom').AsDate := LStartDate;
            if chkDateTo.Checked then
             dmFeeList.qUnbilled.ParamByName('P_DateTo').AsDate := LEndDate;
            dmFeeList.qUnbilled.Open;

            LMinsPerUnit := SystemInteger('TIME_UNITS');
            if LMinsPerUnit = 0 then
             LMinsPerUnit := 1;

            // Total Billed
            lBilledTotal.Caption              := Format('%m', [dmFeeList.qBilled.FieldByName('AMT').AsCurrency]);
            lUnbilledTotal.Caption            := Format('%m', [dmFeeList.qUnbilled.FieldByName('AMT').AsCurrency]);
            LTotalMoney                         := dmFeeList.qBilled.FieldByName('AMT').AsCurrency + dmFeeList.qUnbilled.FieldByName('AMT').AsCurrency;
            lTotalTotal.Caption               := Format('%m', [LTotalMoney]);

            // Number Billed.
            lBilledNumber.Caption             := Format('%d', [dmFeeList.qBilled.FieldByName('CNT').AsInteger]);
            lUnbilledNumber.Caption           := Format('%d', [dmFeeList.qUnbilled.FieldByName('CNT').AsInteger]);
            lTotalNumber.Caption              := Format('%d', [dmFeeList.qBilled.FieldByName('CNT').AsInteger + dmFeeList.qUnbilled.FieldByName('CNT').AsInteger]);

            // setup chart.
            chBilledvsUnBilled.Series[0].Clear();
            chBilledvsUnBilled.Series[0].Add(dmFeeList.qBilled.FieldByName('AMT').AsCurrency,'Billed');
            chBilledvsUnBilled.Series[0].Add(dmFeeList.qUnbilled.FieldByName('AMT').AsCurrency,'UnBilled');

            // Billed Average
            if dmFeeList.qBilled.FieldByName('CNT').AsInteger <> 0 then
             lBilledAverage.Caption          := Format('%m', [dmFeeList.qBilled.FieldByName('AMT').AsCurrency / dmFeeList.qBilled.FieldByName('CNT').AsInteger])
            else
             lBilledAverage.Caption          := '';
            if dmFeeList.qUnbilled.FieldByName('CNT').AsInteger <> 0 then
             lUnbilledAverage.Caption        := Format('%m', [dmFeeList.qUnbilled.FieldByName('AMT').AsCurrency / dmFeeList.qUnbilled.FieldByName('CNT').AsInteger])
            else
             lUnbilledAverage.Caption        := '';
            if (dmFeeList.qBilled.FieldByName('CNT').AsInteger + dmFeeList.qUnbilled.FieldByName('CNT').AsInteger) <> 0 then
             lTotalAverage.Caption           := Format('%m', [LTotalMoney / (dmFeeList.qBilled.FieldByName('CNT').AsInteger + dmFeeList.qUnbilled.FieldByName('CNT').AsInteger)])
            else
             lTotalAverage.Caption           := '';

            // Percent Billed.
            if (LTotalMoney <> 0) then
            begin
             lBilledPercent.Caption          := Format('%5.2n', [dmFeeList.qBilled.FieldByName('AMT').AsCurrency / LTotalMoney * 100]);
             lUnbilledPercent.Caption        := Format('%5.2n', [dmFeeList.qUnbilled.FieldByName('AMT').AsCurrency / LTotalMoney * 100]);
             lTotalPercent.Caption           := '100.00';
            end else
            begin
             lBilledPercent.Caption          := '';
             lUnbilledPercent.Caption        := '';
             lTotalPercent.Caption           := '';
            end;

            // Billed Units.
            lBilledUnits.Caption              := Format('%d', [dmFeeList.qBilled.FieldByName('UNITS').AsInteger]);
            lUnbilledUnits.Caption            := Format('%d', [dmFeeList.qUnbilled.FieldByName('UNITS').AsInteger]);
            LTotalUnit                       := dmFeeList.qBilled.FieldByName('UNITS').AsInteger + dmFeeList.qUnbilled.FieldByName('UNITS').AsInteger;
            lTotalUnits.Caption               := Format('%8.0n', [LTotalUnit]);

            // Billed Units Money
            if dmFeeList.qBilled.FieldByName('UNITS').AsInteger <> 0 then
             lBilledUnitsMoney.Caption       := Format('%m', [dmFeeList.qBilled.FieldByName('AMT').AsCurrency / dmFeeList.qBilled.FieldByName('UNITS').AsInteger])
            else
             lBilledUnitsMoney.Caption       := '';
            if dmFeeList.qUnbilled.FieldByName('UNITS').AsInteger <> 0 then
             lUnbilledUnitsMoney.Caption     := Format('%m', [dmFeeList.qUnbilled.FieldByName('AMT').AsCurrency / dmFeeList.qUnbilled.FieldByName('UNITS').AsInteger])
            else
             lUnbilledUnitsMoney.Caption     := '';
            if (LTotalUnit <> 0) then
             lTotalUnitsMoney.Caption          := Format('%m', [LTotalMoney / LTotalUnit])
            else
             lTotalUnitsMoney.Caption        := '';

            // Billed Minutes
            lBilledMins.Caption               := Format('%8.0n', [dmFeeList.qBilled.FieldByName('MINS').AsInteger / LMinsPerUnit]);
            lUnbilledMins.Caption             := Format('%8.0n', [dmFeeList.qUnbilled.FieldByName('MINS').AsInteger / LMinsPerUnit]);
            LTotalMin                         := Round(dmFeeList.qBilled.FieldByName('MINS').AsInteger + dmFeeList.qUnbilled.FieldByName('MINS').AsInteger);
            lTotalMins.Caption                := Format('%8.0n', [LTotalMin / LMinsPerUnit]);

            // Billed Minutes Money
            if dmFeeList.qBilled.FieldByName('MINS').AsInteger <> 0 then
             lBilledMinsMoney.Caption        := Format('%m', [dmFeeList.qBilled.FieldByName('AMT').AsCurrency / (dmFeeList.qBilled.FieldByName('MINS').AsInteger / LMinsPerUnit)])
            else
             lBilledMinsMoney.Caption        := '';
            if dmFeeList.qUnbilled.FieldByName('UNITS').AsInteger <> 0 then
             lUnbilledMinsMoney.Caption      := Format('%m', [dmFeeList.qUnbilled.FieldByName('AMT').AsCurrency / (dmFeeList.qUnbilled.FieldByName('MINS').AsInteger / LMinsPerUnit)])
            else
             lUnbilledMinsMoney.Caption      := '';
            if (LTotalMin <> 0) then
             lTotalMinsMoney.Caption         := Format('%m', [LTotalMoney / (LTotalMin / LMinsPerUnit)])
            else
             lTotalMinsMoney.Caption         := '';

            // Billed Hours
            lBilledHours.Caption              := Format('%8.2n', [dmFeeList.qBilled.FieldByName('MINS').AsInteger / 60]);
            lUnbilledHours.Caption            := Format('%8.2n', [dmFeeList.qUnbilled.FieldByName('MINS').AsInteger / 60]);
            LTotalHour                        := Round(LTotalMin / 60);
            lTotalHours.Caption               := Format('%8.2n', [LTotalHour]);

            dmFeeList.qBilled.Close;
            dmFeeList.qUnbilled.Close;

            if not VarIsNull(cbAuthor.EditValue) then
            begin
             lAuthorUnitsMoneyMsg.Caption := String(cbAuthor.EditValue) + ' '+ GetCurrencySymbol + '/Unit';
             lAuthorUnitsMoney.Caption := Format('%m', [TableCurrency('EMPLOYEE', 'CODE', String(cbAuthor.EditValue), 'RATE') / 60 * LMinsPerUnit]);
            end else
            begin
             lAuthorUnitsMoneyMsg.Caption := GetCurrencySymbol+'/Unit';
             lAuthorUnitsMoney.Caption := 'Unknown';
            end;

            // AES 07/09/2017 added these lines to cater for regional settings for currency
            lblActualUnits.Caption :=  GetCurrencySymbol + '/Actual Unit';
            lblUnit.Caption := GetCurrencySymbol + '/Unit';
            lblCurrencyDay.Caption := GetCurrencySymbol + '/Day';

            // Now work out the days worked
            lDaysWorked.Caption := IntToStr(dmFeeList.qWorked.FieldByName('DAYS').AsInteger);
            lHoursWorked.Caption := '';
            lUnitsWorked.Caption := '';
            lMoneyWorked.Caption := '';
            if not dmFeeList.qWorked.EOF then
            begin
             if dmFeeList.qWorked.FieldByName('DAYS').AsInteger <> 0 then
             begin
               lHoursWorked.Caption := Format('%8.2n', [LTotalHour / dmFeeList.qWorked.FieldByName('DAYS').AsInteger]);
               lUnitsWorked.Caption := Format('%8.0n', [LTotalUnit / dmFeeList.qWorked.FieldByName('DAYS').AsInteger]);
               lMoneyWorked.Caption := Format('%m',    [LTotalMoney / dmFeeList.qWorked.FieldByName('DAYS').AsInteger]);
             end;
            end;
            dmFeeList.qWorked.Close();

            LStartDate := Trunc(dtpDateFrom.Date);
            LEndDate := Trunc(dtpDateTo.Date) + 1;

            GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');

            qryFees.SQL.Clear;
            qryFees.SQL.Add('SELECT FEE.AUTHOR, SUM(AMOUNT) AS AMT ');
            qryFees.SQL.Add('FROM ' + LSqlFrom);
//            FROM FEE WHERE ');
            qryFees.SQL.Add( LSqlWhere );
//            qryFees.SQL.Add('AUTHOR = :P_Author ');
            qryFees.SQL.Add(' GROUP BY FEE.AUTHOR');
            if chkDateFrom.Checked then
               qryFees.ParamByName('P_DateFrom').AsDate := LStartDate;
            if chkDateTo.Checked then
               qryFees.ParamByName('P_DateTo').AsDate := LEndDate;

//            qryFees.SQL.Add('GROUP BY AUTHOR');
//            qryFees.ParamByName('P_Author').AsString := cbAuthor.EditValue;
            qryFees.Open();

            qryTime.SQL.Clear;
            qryTime.SQL.Add('SELECT FEE.AUTHOR, SUM(UNITS) AS AMT ');
            qryTime.SQL.Add('FROM ' + LSqlFrom);
//            FROM FEE WHERE ');
            qryTime.SQL.Add(LSqlWhere);

            qryTime.SQL.Add(' GROUP BY FEE.AUTHOR');
            if chkDateFrom.Checked then
               qryTime.ParamByName('P_DateFrom').AsDate := LStartDate;
            if chkDateTo.Checked then
               qryTime.ParamByName('P_DateTo').AsDate := LEndDate;
            qryTime.Open();

            GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'BILLED = ''Y''');

            qryNotional.SQL.Clear;
            qryNotional.SQL.Add('select round(sum(NOTIONAL_COST)),''Cost'' as Legend ');
            qryNotional.SQL.Add('from ( ');
            qryNotional.SQL.Add('SELECT nvl(notional_cost,0) as notional_cost ');

            qryNotional.SQL.Add('FROM ' + LSqlFrom);
            qryNotional.SQL.Add( LSqlWhere );
            qryNotional.SQL.Add(' ) ');

            qryNotional.SQL.Add('union ');
            qryNotional.SQL.Add('select round(sum(notional_profit)), ''Profit'' ');
            qryNotional.SQL.Add('from ( ');
            qryNotional.SQL.Add('SELECT AMOUNT - nvl(notional_cost,0) AS notional_profit ');

            qryNotional.SQL.Add('FROM ' + LSqlFrom);
            qryNotional.SQL.Add( LSqlWhere );
            qryNotional.SQL.Add(' ) ');

            if chkDateFrom.Checked then
               qryNotional.ParamByName('P_DateFrom').AsDate := LStartDate;
            if chkDateTo.Checked then
               qryNotional.ParamByName('P_DateTo').AsDate := LEndDate;

            qryNotional.Open();

            qryBenchmark.Close;
            qryBenchmark.SQL.Clear;
            qryBenchmark.SQL.Add('select round(sum(bench_fee)),''Standard Fees'' as Legend ');
            qryBenchmark.SQL.Add('from ( ');
            qryBenchmark.SQL.Add('SELECT STANDARD_COST AS BENCH_FEE ');

            qryBenchmark.SQL.Add('FROM ' + LSqlFrom);
            qryBenchmark.SQL.Add( LSqlWhere );
            qryBenchmark.SQL.Add(' ) ');

            qryBenchmark.SQL.Add('union ');
            qryBenchmark.SQL.Add('select round(sum(act_fees)), ''Actual Fees'' ');
            qryBenchmark.SQL.Add('from ( ');
            qryBenchmark.SQL.Add('SELECT AMOUNT AS ACT_FEES ');

            qryBenchmark.SQL.Add('FROM ' + LSqlFrom);
            qryBenchmark.SQL.Add( LSqlWhere );
            qryBenchmark.SQL.Add(' ) ');
            if chkDateFrom.Checked then
               qryBenchmark.ParamByName('P_DateFrom').AsDate := LStartDate;
            if chkDateTo.Checked then
               qryBenchmark.ParamByName('P_DateTo').AsDate := LEndDate;

            qryBenchmark.Open();
         end;
      3: tbtnRefresh.Enabled := False;
   end;
end;

procedure TfrmFeeListNew.tbtnQuickEditClick(Sender: TObject);
var
   LFeeNew: TfrmFeeEditQuick;
   LReturn: integer;
   LEditing: boolean;
begin
   LFeeNew := TfrmFeeEditQuick.Create(Self) ;
   LEditing := (dmFeeList.qFees.FieldByName('Billed').AsString = 'N');

   LFeeNew.DisplayFee(dmFeeList.qFees.FieldByName('NFEE').AsInteger, LEditing);
   LReturn :=  LFeeNew.ShowModal();
   if LReturn <> mrCancel then
   begin
      dmFeeList.qFees.Close;
      dmFeeList.qFees.Open;
   end;
end;

procedure TfrmFeeListNew.tbtnReportsPopup(Sender: TObject);
begin
   bbtnPrintStats.Enabled := tabStats.Showing;
end;

procedure TfrmFeeListNew.tvFeesCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   try
      tbtnFeeEdit.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                             (pcFeelist.ActivePage = tsFeeList) AND dmAxiom.Security.Fee.Edit);

      tbtnOpenMatter.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                                (pcFeelist.ActivePage = tsFeeList));

      tbtnDeleteFee.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                               (pcFeelist.ActivePage = tsFeeList) and
                               (tvFeesBilled.DataBinding.Field.AsString = 'N'));

      tbtnQuickEdit.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                               (pcFeelist.ActivePage = tsFeeList) AND dmAxiom.Security.Fee.QuickEdit);

      btnMoveMultiFees.Enabled := (grdFees.FocusedView.DataController.IsRowSelected(tvFees.Controller.FocusedRowIndex) AND
                             (pcFeelist.ActivePage = tsFeeList) AND dmAxiom.Security.Fee.Edit);
   except
     // silent
   end;
end;

procedure TfrmFeeListNew.tvFeesColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  sOrderBy: string;
begin
   sOrderBy := sOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      sOrderBy := sOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      sOrderBy := sOrderBy + ' DESC';
   end
   else
   begin
      sOrderBy := sOrderBy + ' ASC';
   end;
   if Length(trim(sOrderBy)) > 8 then
      FOrderBy := sOrderBy;
end;

procedure TfrmFeeListNew.cbAuthorPropertiesInitPopup(Sender: TObject);
begin
   try
      if qryEmployeeList.Active then
         qryEmployeeList.Refresh;
   except
     //
   end;
end;

procedure TfrmFeeListNew.btnMoveMultiFeesClick(Sender: TObject);
var
   iCtr, ARowIndex: integer;
   ARowInfo: TcxRowInfo;
   bReAssigned: boolean;
begin
   bReAssigned := False;
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if (frmMatterSearch.ShowModal = mrOk) then
   begin
      with tvFees.DataController do
      begin
         BeginUpdate;
         try
            for iCtr := 0 to (GetSelectedCount - 1) do
            begin
               ARowIndex := GetSelectedRowIndex(iCtr);
               ARowInfo := GetRowInfo(ARowIndex);
               if ARowInfo.Level < Groups.GroupingItemCount then
                  Continue
               else
               begin
                  if ((Values[ARowInfo.RecordIndex, tvFeesBILLED.Index] = 'N') and
                     (VarIsNull(Values[ARowInfo.RecordIndex, tvFeesNMEMO.Index]))) then    // (dmFeeList.qFees.FieldByName('BILLED').AsString = 'N') then
                  begin
                     with qryUpdateFees do
                     begin
                        ParamByName('NMATTER').AsInteger := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
                        ParamByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
                        ParamByName('NCLIENT').AsInteger := dmAxiom.qryMSearch.FieldByName('NCLIENT').AsInteger;

                        ParamByName('NFEE').AsInteger := Integer(Values[ARowInfo.RecordIndex, tvFeesNFEE.Index]);    // dmFeeList.qFees.FieldByName('NFEE').AsInteger;
//                        ParamByName('OLD_NMATTER').AsInteger := dmFeeList.qFees.FieldByName('NMATTER').AsInteger;

                        ExecSQL();
                        Close;
                        bReAssigned := True;
                     end;
                  end;
               end;
            end;
         finally
            EndUpdate;
            if bReAssigned = False then
               MsgErr('The selected time entry cannot be re-assigned.  It is attched to a bill.');
         end;
      end;
   end;
   tvFees.Controller.ClearSelection;
   dmFeeList.qFees.Refresh();
end;

procedure TfrmFeeListNew.chkDateFromClick(Sender: TObject);
begin
   dtpDateFrom.Enabled := chkdateFrom.Checked;
end;

procedure TfrmFeeListNew.chkDateToClick(Sender: TObject);
begin
  dtpDateTo.Enabled := chkDateTo.Checked;
end;

procedure TfrmFeeListNew.tbtnOpenMatterClick(Sender: TObject);
begin
  Application.CreateForm(TfrmMatters, frmMatters);
  frmMatters.DisplayMatter(dmFeeList.qFees.FieldByname('FILEID').AsString);
  if frmDesktop.pagMainControl.ActivePageIndex = 0 then
     frmDesktop.AddFormToTab(frmMatters, 1);
  if (not frmMatters.Visible) then
     frmMatters.Show;
end;

//initialization
//   cxSetResourceString(@scxGridNoDataInfoText, '');

end.

