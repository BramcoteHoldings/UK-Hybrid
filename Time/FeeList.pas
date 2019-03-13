unit FeeList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Grids, DBGrids, Menus, Buttons,
  ExtCtrls, DBCtrls, Qrctrls, quickrpt, ToolWin, DateChangeButton,
  TeEngine, Series, TeeProcs, Chart, DBChart, ImgList, NumberEdit,
  MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, QRExport, DBAccess, Variants, ActnList, ActnMan, 
  OraSmart, ActnCtrls, ActnMenus, VirtualTrees, VTEditors, RxLookup,
  RXDBCtrl;

type
  TBudgetShowType = (bstYear, bstQuarter, bstMonth, bstAuthor, bstDepartment);
  TBudgetShowTypes = set of TBudgetShowType;

  TSortDirection = (sdNone, sdAscending, sdDescending);
  TTotalType     = (ttNone, ttMax, ttMin, ttAverage, ttSum);
  TColumnTreeColumns = (ctcColumnDisplay = 0, ctcVisible = 1, ctcSortOrder = 2,
      ctcSortDirection = 3, ctcGroup = 4, ctcGroupOrder = 5, ctcTotalType = 6);

  TfrmFeeList = class(TForm)
    pcFeeList: TPageControl;
    tsFeeList: TTabSheet;
    tsFilter: TTabSheet;
    lAuthor: TLabel;
    dsFees: TUniDataSource;
    qFees: TUniQuery;
    ilstToolbar: TImageList;
    Label3: TLabel;
    eMatter: TEdit;
    btnMatter: TBitBtn;
    tsStats: TTabSheet;
    qBilled: TUniQuery;
    qUnbilled: TUniQuery;
    gbStats: TGroupBox;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    lTotalTotal: TLabel;
    lTotalNumber: TLabel;
    lTotalAverage: TLabel;
    lTotalPercent: TLabel;
    lTotalUnits: TLabel;
    lTotalUnitsMoney: TLabel;
    lTotalMins: TLabel;
    lTotalMinsMoney: TLabel;
    lUnbilledTotal: TLabel;
    lUnbilledNumber: TLabel;
    lUnbilledAverage: TLabel;
    lUnbilledPercent: TLabel;
    lUnbilledUnits: TLabel;
    lUnbilledUnitsMoney: TLabel;
    lUnbilledMins: TLabel;
    lUnbilledMinsMoney: TLabel;
    lBilledMinsMoney: TLabel;
    lBilledMins: TLabel;
    lBilledUnitsMoney: TLabel;
    lBilledUnits: TLabel;
    lBilledPercent: TLabel;
    lBilledAverage: TLabel;
    lBilledNumber: TLabel;
    lBilledTotal: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lAuthorUnitsMoneyMsg: TLabel;
    lAuthorUnitsMoney: TLabel;
    gbWork: TGroupBox;
    Label16: TLabel;
    lDaysWorked: TLabel;
    Label17: TLabel;
    lHoursWorked: TLabel;
    Label18: TLabel;
    lBilledHours: TLabel;
    lUnbilledHours: TLabel;
    lTotalHours: TLabel;
    Label19: TLabel;
    lMoneyWorked: TLabel;
    lUnitsWorked: TLabel;
    Label21: TLabel;
    qWorked: TUniQuery;
    Label5: TLabel;
    Label20: TLabel;
    pmFees: TPopupMenu;
    miNewFee: TMenuItem;
    miOpenFee: TMenuItem;
    miDeleteFee: TMenuItem;
    qDelete: TUniQuery;
    tsColumns: TTabSheet;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edClientCode: TEdit;
    btnClientCode: TBitBtn;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edBillNum: TEdit;
    qWorkedDAYS: TFloatField;
    qBilledAMT: TFloatField;
    qBilledUNITS: TFloatField;
    qBilledMINS: TFloatField;
    qBilledCNT: TFloatField;
    qUnbilledAMT: TFloatField;
    qUnbilledUNITS: TFloatField;
    qUnbilledMINS: TFloatField;
    qUnbilledCNT: TFloatField;
    gbPercentBilledUnBilled: TGroupBox;
    chBilledvsUnBilled: TChart;
    Series1: TPieSeries;
    qFeesCREATED: TDateTimeField;
    qFeesAUTHOR: TStringField;
    qFeesFILEID: TStringField;
    qFeesNMATTER: TFloatField;
    qFeesDESCR: TStringField;
    qFeesNFEE: TFloatField;
    qFeesAMOUNT: TFloatField;
    qFeesUNITS: TIntegerField;
    qFeesMINS: TIntegerField;
    qFeesRATE: TFloatField;
    qFeesINVOICEDATE: TDateTimeField;
    qFeesBILLED: TStringField;
    qFeesTYPE: TStringField;
    qFeesTASK: TStringField;
    qFeesTASK_AMOUNT: TFloatField;
    qFeesBILLNO: TStringField;
    qFeesTITLE: TStringField;
    qFeesSHORTDESCR: TStringField;
    qFeesBRANCH: TStringField;
    ActionManager: TActionManager;
    aNewFee: TAction;
    aOpenFee: TAction;
    dsFeeEarners: TDataSource;
    qFeeEarners: TUniQuery;
    qFeeEarnersCODE: TStringField;
    qFeeEarnersNAME: TStringField;
    cbAuthor: TRxDBLookupCombo;
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
    ActionToolBar: TActionToolBar;
    ActionMainMenuBar: TActionMainMenuBar;
    aClear: TAction;
    sbClearAuthor: TSpeedButton;
    aMatterSearch: TAction;
    aClientSearch: TAction;
    qFeeType: TUniQuery;
    qFeeTypeCODE: TStringField;
    qFeeTypeDESCR: TStringField;
    qFeeTypeBILLABLE: TStringField;
    qFeeTypeTAXCODE: TStringField;
    qFeeTypeRATE: TFloatField;
    dsFeeType: TDataSource;
    cbFeeType: TRxDBLookupCombo;
    qDepartment: TUniQuery;
    dsDepartment: TDataSource;
    cbDept: TRxDBLookupCombo;
    qBranch: TUniQuery;
    dsBranch: TDataSource;
    cbBranch: TRxDBLookupCombo;
    qEntity: TUniQuery;
    dsEntity: TDataSource;
    cbEntity: TRxDBLookupCombo;
    sbClearEntity: TSpeedButton;
    sbClearBranch: TSpeedButton;
    sbClearDepartment: TSpeedButton;
    sbClearMatter: TSpeedButton;
    sbClearFeeType: TSpeedButton;
    qBranchCODE: TStringField;
    qBranchENTITY: TStringField;
    qBranchADD1: TStringField;
    qBranchDESCR: TStringField;
    qBranchADD2: TStringField;
    qBranchSUBURB: TStringField;
    qBranchSTATE: TStringField;
    qBranchPOSTCODE: TStringField;
    qBranchDXADDRESS: TStringField;
    qBranchPHONE: TStringField;
    qBranchFAX: TStringField;
    qEntityCOMPANY: TStringField;
    qEntityNEXTMATTER: TFloatField;
    qEntityCODE: TStringField;
    qEntityNAME: TStringField;
    qEntityTYPE: TStringField;
    qEntityACTIVE: TStringField;
    qEntitySEARCH: TStringField;
    qEntityACN: TStringField;
    qEntitySTARTED: TDateTimeField;
    qEntitySTOPPED: TDateTimeField;
    qEntityDEFAULT_ENTITY: TStringField;
    qEntityDEFAULT_BANK: TStringField;
    qEntityCASH_OR_ACCRUAL: TStringField;
    qEntityNEW_FEE_DR: TStringField;
    qEntityNEW_FEE_CR: TStringField;
    qEntityNEW_SUND_DR: TStringField;
    qEntityNEXTARCHIVE: TFloatField;
    qEntityNEW_SUND_CR: TStringField;
    qEntityNEW_DISB_DR: TStringField;
    qEntityNEW_DISB_CR: TStringField;
    qEntityNEW_ANTD_DR: TStringField;
    qEntityNEW_ANTD_CR: TStringField;
    qEntityBILL_FEE_DR: TStringField;
    qEntityBILL_FEE_CR: TStringField;
    qEntityBILL_OVERFEE_DR: TStringField;
    qEntityBILL_OVERFEE_CR: TStringField;
    qEntityBILL_DISCFEE_DR: TStringField;
    qEntityBILL_DISCFEE_CR: TStringField;
    qEntityBILL_SUND_DR: TStringField;
    qEntityBILL_SUND_CR: TStringField;
    qEntityBILL_DISB_DR: TStringField;
    qEntityBILL_DISB_CR: TStringField;
    qEntityBILL_ANTD_DR: TStringField;
    qEntityBILL_ANTD_CR: TStringField;
    qEntityREC_FEE_CR: TStringField;
    qEntityREC_SUND_CR: TStringField;
    qEntityREC_DISB_CR: TStringField;
    qEntityREC_UNDISB_CR: TStringField;
    qEntityREC_ANTD_CR: TStringField;
    qEntityWOFF_FEE_DR: TStringField;
    qEntityWOFF_FEE_CR: TStringField;
    qEntityWOFF_UNSUND_DR: TStringField;
    qEntityWOFF_UNSUND_CR: TStringField;
    qEntityWOFF_SUND_DR: TStringField;
    qEntityWOFF_SUND_CR: TStringField;
    qEntityWOFF_UNDISB_DR: TStringField;
    qEntityWOFF_UNDISB_CR: TStringField;
    qEntityWOFF_DISB_DR: TStringField;
    qEntityWOFF_DISB_CR: TStringField;
    qEntityWOFF_ANTD_DR: TStringField;
    qEntityWOFF_ANTD_CR: TStringField;
    qEntityCREDITORS: TStringField;
    qEntityNJOURNAL: TFloatField;
    qEntityWPDIR: TStringField;
    qEntityLASTBILL: TStringField;
    qEntityLASTCREDITNOTE: TStringField;
    qEntityCLIENTCODE: TStringField;
    qEntityCLIENTPAD: TIntegerField;
    qEntityCLIENTLENGTH: TIntegerField;
    qEntityCLIENTACRONYM: TStringField;
    qEntityMATTERCODE: TStringField;
    qEntityMATTERPAD: TIntegerField;
    qEntityMATTERSEPERATOR: TStringField;
    qEntityCREDITORCODE: TStringField;
    qEntityCREDITORPAD: TStringField;
    qEntityCREDITORLENGTH: TIntegerField;
    qEntityCREDITORACRONYM: TStringField;
    qEntityABN: TStringField;
    qEntityLOCKDATE: TDateTimeField;
    qEntityFINANCIALYEARENDING: TDateTimeField;
    qEntityNEW_UPCRED_DR: TStringField;
    qEntityNEW_UPCRED_CR: TStringField;
    qEntityBILL_UPCRED_DR: TStringField;
    qEntityBILL_UPCRED_CR: TStringField;
    qEntityREC_UPCRED_CR: TStringField;
    qEntityWOFF_UPCRED_DR: TStringField;
    qEntityWOFF_UPCRED_CR: TStringField;
    qEntityCLOSE_ARCHIVE: TStringField;
    qDepartmentCODE: TStringField;
    qDepartmentDESCR: TStringField;
    qDepartmentCOSTCENTRE: TStringField;
    qAuthorType: TUniQuery;
    dsAuthorType: TDataSource;
    cbAuthorType: TRxDBLookupCombo;
    qScaleCost: TUniQuery;
    dsScaleCost: TDataSource;
    qScaleCostCODE: TStringField;
    qScaleCostTYPE: TStringField;
    qScaleCostCREATED: TDateTimeField;
    qScaleCostDESCR: TStringField;
    qScaleCostNOTES: TStringField;
    qScaleCostUNIT: TStringField;
    qScaleCostPARENT: TStringField;
    qScaleCostDAYS: TIntegerField;
    qScaleCostDEFAULTTIME: TFloatField;
    qScaleCostAMOUNT: TFloatField;
    qScaleCostRATE: TFloatField;
    qAuthorTypeCODE: TStringField;
    qAuthorTypeDESCR: TStringField;
    qAuthorTypeREPORTGROUP: TIntegerField;
    cbScale: TRxDBLookupCombo;
    sbClearClient: TSpeedButton;
    sbClearAuthorType: TSpeedButton;
    sbClearPartner: TSpeedButton;
    sbClearScale: TSpeedButton;
    sbClearBillNumber: TSpeedButton;
    cbPartner: TRxDBLookupCombo;
    qPartner: TUniQuery;
    dsPartner: TDataSource;
    qPartnerCODE: TStringField;
    qPartnerNAME: TStringField;
    pDate: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtpDateTo: TDateTimePicker;
    dtpDateFrom: TDateTimePicker;
    dcToday: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    pSelect: TPanel;
    rgBilled: TRadioGroup;
    rgValue: TRadioGroup;
    aToday: TAction;
    aStatisticsReport: TAction;
    qBudgetGraphAuthMonth: TUniQuery;
    tsBudget: TTabSheet;
    chBudget: TDBChart;
    Series2: TBarSeries;
    Series4: TBarSeries;
    Series3: TLineSeries;
    qBudgetGraphAuthQuarter: TUniQuery;
    qBudgetGraphAuthYear: TUniQuery;
    qBudgetGraphDeptYear: TUniQuery;
    qBudgetGraphDeptQuarter: TUniQuery;
    qBudgetGraphDeptMonth: TUniQuery;
    qBudgetGraphAuthMonthAUTHOR: TStringField;
    qBudgetGraphAuthMonthBILLED: TFloatField;
    qBudgetGraphAuthMonthUNBILLED: TFloatField;
    qBudgetGraphAuthMonthBUDGET: TFloatField;
    qBudgetGraphAuthMonthWIP: TFloatField;
    qBudgetGraphAuthMonthMONTH: TFloatField;
    qBudgetGraphAuthMonthYEAR: TFloatField;
    qBudgetGraphAuthMonthQUARTER: TFloatField;
    qBudgetGraphAuthMonthVIEWDATE: TDateTimeField;
    qBudgetGraphAuthQuarterAUTHOR: TStringField;
    qBudgetGraphAuthQuarterBILLED: TFloatField;
    qBudgetGraphAuthQuarterUNBILLED: TFloatField;
    qBudgetGraphAuthQuarterBUDGET: TFloatField;
    qBudgetGraphAuthQuarterWIP: TFloatField;
    qBudgetGraphAuthQuarterQUARTER: TFloatField;
    qBudgetGraphAuthQuarterYEAR: TFloatField;
    qBudgetGraphAuthQuarterVIEWDATE: TStringField;
    qBudgetGraphAuthYearAUTHOR: TStringField;
    qBudgetGraphAuthYearBILLED: TFloatField;
    qBudgetGraphAuthYearUNBILLED: TFloatField;
    qBudgetGraphAuthYearBUDGET: TFloatField;
    qBudgetGraphAuthYearWIP: TFloatField;
    qBudgetGraphAuthYearYEAR: TFloatField;
    qBudgetGraphAuthYearVIEWDATE: TFloatField;
    qBudgetGraphDeptMonthDEPT: TStringField;
    qBudgetGraphDeptMonthBILLED: TFloatField;
    qBudgetGraphDeptMonthUNBILLED: TFloatField;
    qBudgetGraphDeptMonthBUDGET: TFloatField;
    qBudgetGraphDeptMonthWIP: TFloatField;
    qBudgetGraphDeptMonthMONTH: TFloatField;
    qBudgetGraphDeptMonthYEAR: TFloatField;
    qBudgetGraphDeptMonthQUARTER: TFloatField;
    qBudgetGraphDeptMonthVIEWDATE: TDateTimeField;
    qBudgetGraphDeptQuarterDEPT: TStringField;
    qBudgetGraphDeptQuarterBILLED: TFloatField;
    qBudgetGraphDeptQuarterUNBILLED: TFloatField;
    qBudgetGraphDeptQuarterBUDGET: TFloatField;
    qBudgetGraphDeptQuarterWIP: TFloatField;
    qBudgetGraphDeptQuarterQUARTER: TFloatField;
    qBudgetGraphDeptQuarterYEAR: TFloatField;
    qBudgetGraphDeptQuarterVIEWDATE: TStringField;
    qBudgetGraphDeptYearDEPT: TStringField;
    qBudgetGraphDeptYearBILLED: TFloatField;
    qBudgetGraphDeptYearUNBILLED: TFloatField;
    qBudgetGraphDeptYearBUDGET: TFloatField;
    qBudgetGraphDeptYearWIP: TFloatField;
    qBudgetGraphDeptYearYEAR: TFloatField;
    qBudgetGraphDeptYearVIEWDATE: TFloatField;
    pBudgetView: TPanel;
    rbBudgetViewMonth: TRadioButton;
    rbBudgetViewQuarter: TRadioButton;
    rbBudgetViewYear: TRadioButton;
    qBudgetGraphAuthQuarterXFIELD: TDateTimeField;
    qBudgetGraphDeptQuarterXFIELD: TDateTimeField;
    tsDrillDown: TTabSheet;
    vtDrillDown: TVirtualStringTree;
    vtColumns: TVirtualStringTree;
    Shape1: TShape;
    Label32: TLabel;
    aColumnDown: TAction;
    aColumnUp: TAction;
    pmColumns: TPopupMenu;
    miUp: TMenuItem;
    miDown: TMenuItem;
    dbgFees: TRxDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qFeesDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure neSortColumnsExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure aClearExecute(Sender: TObject);
    procedure aMatterSearchExecute(Sender: TObject);
    procedure aClientSearchExecute(Sender: TObject);
    procedure cbEntityChange(Sender: TObject);
    procedure aTodayExecute(Sender: TObject);
    procedure aStatisticsReportExecute(Sender: TObject);
    procedure tsStatsShow(Sender: TObject);
    procedure tsStatsHide(Sender: TObject);
    procedure tsFeeListShow(Sender: TObject);
    procedure aReportAuthorSummaryUpdate(Sender: TObject);
    procedure tsBudgetHide(Sender: TObject);
    procedure tsBudgetShow(Sender: TObject);
    procedure rbBudgetViewMonthClick(Sender: TObject);
    procedure rbBudgetViewQuarterClick(Sender: TObject);
    procedure rbBudgetViewYearClick(Sender: TObject);
    procedure vtColumnsNewText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; NewText: WideString);
    procedure vtColumnsGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure vtColumnsCreateEditor(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
    procedure vtColumnsEdited(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex);
    procedure vtColumnsEditing(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure vtColumnsClick(Sender: TObject);
    procedure vtColumnsPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure tsDrillDownShow(Sender: TObject);
    procedure vtDrillDownGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure vtDrillDownExpanded(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vtDrillDownCollapsed(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vtDrillDownPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure aColumnUpUpdate(Sender: TObject);
    procedure aColumnUpExecute(Sender: TObject);
    procedure aColumnDownUpdate(Sender: TObject);
    procedure aColumnDownExecute(Sender: TObject);
    procedure tsFeeListHide(Sender: TObject);
  private
    FOrderBy: String;
    FDontChange: Boolean;
    FBudgetGraphView: TBudgetShowTypes;
    FExpanding: Boolean;

    FDrillGroupingColumns: array of String;
    FDrillColumnTotalTypes: array of TTotalType;
    FDrillColumns: array of String;
    FDrillColumnDataTypes: array of TFieldType;

    { Private declarations }
    procedure GetSQLWhereFrom(var AWhere, AFrom, AGroupField: String; InitialWhere: string);
    procedure MakeSQL(AOrderGroup: Boolean = False);
    function MakeTitle: string;
    procedure SetOrderByLocal(ADontAddORDER: Boolean = False);
    procedure SetOrderByAndRefresh;
    procedure CloseBudgetQueries;

    procedure LoadColumnData();
    procedure SaveColumnData();

    function GetColumnData(AFieldName: String): Pointer;
//    function GetColumnNode(AFieldName: String): PVirtualNode;

    procedure LoadDrillDown();
    function NumGroupColumns: Integer;
    function NumVisColumns: Integer;
    procedure ResizeColumns(ATree: TVirtualStringTree);
    procedure SaveColumnWidths;
  public
    { Public declarations }
  end;

// our own checkeditlink..
  TAXCheckEditLink = class(TCustomEditLink)
  private
    FValueFalse: string;
    FValueTrue: string;
    FValueGrayed: string;
    FAllowGrayed: Boolean;
  protected
  protected
    function CreateEditControl: TWinControl; override;
    procedure PrepareEditControl; override;
    function GetEditText: WideString; override;
    procedure SetEditText(const Value: WideString); override;
  public
    constructor Create(AOwner: TPersistent); override;
  published
    property AllowGrayed: Boolean read FAllowGrayed write FAllowGrayed default False;
  end;


implementation

uses
  FeeNew, Matters, MiscFunc, AxiomData, MSearch, Desktop, CSearch, citfunc,
  FeeListStatsReport, FeeListSummaryReport,
  FeeListPieReport, FeeListBarReport, FeeListAuthorSummaryReport,
  FeeListGroupedReport, DateUtils;

{$R *.DFM}

const
  TSortDirectionCaption: array [TSortDirection] of String = ('None','Asc','Desc');
  TTotalTypeCaption    : array [TTotalType]     of String = ('None','Max','Min','Average','Sum');

  C_NEWFEELIST          = 'NewFeeList';
  C_COLUMNNAME          = 'ColumnName';
  C_COLUMNVISIBLE       = 'ColumnVisible';
  C_COLUMNSORTORDER     = 'ColumnSortOrder';
  C_COLUMNSORTDIRECTION = 'ColumnSortDirection';
  C_COLUMNGROUP         = 'ColumnGroup';
  C_COLUMNGROUPORDER    = 'ColumnGroupOrder';
  C_COLUMNTOTALTYPE     = 'ColumnTotalType';
  C_COLUMNWIDTH         = 'ColumnWidth';

  C_NUMDATAFIELDS = 20;
  C_GRANDTOTALTEXT = 'Grand Total';
type
  PColumnData = ^TColumnData;
  TColumnData = record
    ColumnName,
    ColumnDisplay: String;
    Visible: Boolean;
    SortOrder: Integer;
    SortDirection: TSortDirection;
    Group: Boolean;
    GroupOrder: Integer;
    TotalType: TTotalType;
    Width: Integer;
  end;

  PDrillData = ^TDrillData;
  TDrillData = record
    DataStr: array[0..C_NUMDATAFIELDS] of String;
    DataNum: array[0..C_NUMDATAFIELDS] of Double;
  end;

procedure TfrmFeeList.FormShow(Sender: TObject);
begin
  if TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y' then
    cbAuthor.KeyValue := dmAxiom.UserID
  else
    cbAuthor.KeyValue := qFeeEarnersCODE.AsString;

  cbEntity.KeyValue := varNull;
  if(qBranch.Active) then
    cbBranch.KeyValue := varNull;


  dtpDateFrom.Date :=  Int(Now);
  dtpDateTo.Date :=  Int(Now);

  if TableInteger('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ACCESSLEVEL') > 5 then
  begin
    cbAuthor.Enabled := False;
    cbAuthorType.Enabled := False;
  end;

  LoadColumnData();

  SetOrderByLocal;
end;


procedure TfrmFeeList.GetSQLWhereFrom(var AWhere, AFrom, AGroupField: String; InitialWhere: string);
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

    if not VarIsNull(cbAuthor.KeyValue) then
      LWhere.Add('AND FEE.AUTHOR = ' + QuotedStr(String(cbAuthor.KeyValue)));

    if not VarIsNull(cbPartner.KeyValue) then
      LWhere.Add('AND FEE.PARTNER = ' + QuotedStr(cbPartner.KeyValue));

    if eMatter.Text <> '' then
      LWhere.Add('AND FEE.FILEID = ' + QuotedStr(eMatter.Text));

    AGroupField := 'FEE.CREATED';
    case rgBilled.ItemIndex of
      1: // Unbilled
        LWhere.Add('AND BILLED = ''N''');
      2: // Billed
        LWhere.Add('AND BILLED = ''Y''');
      3: // Billings by Invoicedate
        AGroupField := 'FEE.INVOICEDATE';
    end;

    case rgValue.ItemIndex of
      1: // Positive Only
        LWhere.Add('AND FEE.AMOUNT > 0');
      2: // Negative Only
        LWhere.Add('AND FEE.AMOUNT < 0');
      3: // Zero Only
        LWhere.Add('AND FEE.AMOUNT = 0');
    end;

    if not VarIsNull(cbFeeType.KeyValue) then
      LWhere.Add('AND FEE.TYPE = ' + QuotedStr(cbFeeType.KeyValue));

    if not VarIsNull(cbDept.KeyValue) then
      LWhere.Add('AND FEE.DEPT = ' + QuotedStr(cbDept.KeyValue));

    if not VarIsNull(cbAuthorType.KeyValue) then
      LWhere.Add('AND FEE.EMP_TYPE = ' + QuotedStr(cbAuthorType.KeyValue));

    if not VarIsNull(cbBranch.KeyValue) then
    begin
      LWhere.Add('AND MATTER.BRANCH = ' + QuotedStr(cbBranch.KeyValue));
      LWhere.Add('AND FEE.NMATTER = MATTER.NMATTER');
      LFrom.Add('MATTER');
    end;

    if not VarIsNull(cbScale.KeyValue) then
      LWhere.Add('AND FEE.TASK = ' + QuotedStr(cbScale.KeyValue));

    if dtpDateFrom.Checked then
      LWhere.Add('AND ' + AGroupField + ' >= :P_DateFrom');

    if dtpDateTo.Checked then
      LWhere.Add('AND ' + AGroupField + ' < :P_DateTo ');

    if edClientCode.Text <> '' then
    begin
      LWhere.Add('AND CLIENT.CODE = ' + QuotedStr(edClientCode.Text));
      LWhere.Add('AND FEE.NCLIENT = CLIENT.NCLIENT');
      LFrom.Add('CLIENT');
    end;

    if not VarIsNull(cbEntity.KeyValue) then
      LWhere.Add('AND FEE.BANK_ACCT = ' + QuotedStr(cbEntity.KeyValue));

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


procedure TfrmFeeList.MakeSQL(AOrderGroup: Boolean);
var
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStr: String;
  i: Integer;
begin
  qFees.Close;
  qFees.Debug := true;
  qFees.SQL.Clear;

  GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField, 'FEE.NMATTER = MATTER.NMATTER AND FEE.NMEMO = NMEMO.NMEMO(+)');

  qFees.SQL.Add('SELECT /*+ ORDERED */FEE.CREATED, FEE.AUTHOR, FEE.FILEID, FEE.NMATTER');
  qFees.SQL.Add(', FEE.DESCR, FEE.NFEE, FEE.AMOUNT, FEE.UNITS, FEE.MINS');
  qFees.SQL.Add(', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK');
  qFees.SQL.Add(', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, MATTER.TITLE');
  qFees.SQL.Add(', MATTER.SHORTDESCR, MATTER.BRANCH');

  if(Pos('MATTER',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',MATTER';
  if(Pos('NMEMO',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',NMEMO';

  qFees.SQL.Add('FROM ' + LSQLFrom);
  qFees.SQL.Add(LSqlWhere);

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
      qFees.SQL.Add('ORDER BY ' + LStr);
  end else
  begin
    SetOrderByLocal(False);
    qFees.SQL.Add(FOrderBy);
  end;

  if dtpDateFrom.Checked then
    qFees.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
  if dtpDateTo.Checked then
    qFees.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;


  qFees.Open;
end;


function TfrmFeeList.MakeTitle : string;
var
  sTitle : string;
begin
  if dtpDateFrom.Date = dtpDateTo.Date then
    sTitle := 'For ' + FormatDateTime('dddddd', dtpDateFrom.Date)
  else
    sTitle := 'For the period ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date);
  if not VarIsNull(cbAuthor.KeyValue) then
    sTitle := sTitle + ', for Author ' + qFeeEarnersNAME.AsString + ' (' + qFeeEarnersCODE.AsString + ')';
  if eMatter.Text <> '' then
    sTitle := sTitle + ', for Matter ' + eMatter.Text;
  if not VarIsNull(cbFeeType.KeyValue) then
    sTitle := sTitle + ', for Fee Type ' + qFeeTypeDESCR.AsString + ' (' + qFeeTypeCODE.AsString + ')';
  if not VarIsNull(cbDept.KeyValue) then
    sTitle := sTitle + ', for Department ' + qDepartmentDESCR.AsString + ' (' + qDepartmentCODE.AsString + ')';
  if cbAuthorType.Text <> '' then
    sTitle := sTitle + ', for Author Type ' + qAuthorTypeDESCR.AsString + ' (' + qAuthorTypeCODE.AsString + ')';
  if not VarIsNull(cbBranch.KeyValue) then
    sTitle := sTitle + ', for Branch ' + qBranchDESCR.AsString + ' (' + qBranchCODE.AsString + ')';
  if not VarIsNull(cbScale.KeyValue) then
    sTitle := sTitle + ', for Scale ' + qScaleCostDESCR.AsString + ' (' + qScaleCostCODE.AsString + ')';
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


procedure TfrmFeeList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SaveColumnData();

  qWorked.Close;
  qUnbilled.Close;
  qBilled.Close;
  qFees.Close;

  Action := caFree;
end;


procedure TfrmFeeList.qFeesDESCRGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := qFees.FieldByName('DESCR').AsString;
end;


procedure TfrmFeeList.SetOrderByAndRefresh;
begin
  SetOrderByLocal;
  MakeSQL;
end;

procedure TfrmFeeList.SetOrderByLocal(ADontAddORDER: Boolean);
var
  i : Integer;
  LNode: PVirtualNode;
  LData: PColumnData;
  LColumns: TStringList;
begin
  LColumns := TStringList.Create;
  try
    for i := 0 to qFees.Fields.Count - 1 do
      LColumns.Add(' ');

    LNode := vtColumns.RootNode.FirstChild;
    while(Assigned(LNode)) do
    begin
      LData := vtColumns.GetNodeData(LNode);
      if(LData.SortOrder > 0) then
        LColumns[LData.SortOrder] := LData.ColumnName + ' ' + TSortDirectionCaption[LData.SortDirection];
      LNode := LNode.NextSibling;
    end;
    FOrderBy := '';

    for i := 0 to LColumns.Count - 1 do
    begin
      if(Trim(LColumns[i]) <> '') then
      begin
        if(FOrderBy <> '') then
          FOrderBy := FOrderBy + ', ' + LColumns[i]
        else
          FOrderBy := LColumns[i];
      end;
    end;
    if((not ADontAddORDER) and (Trim(FOrderBy) <> '')) then
      FOrderBy := 'ORDER BY ' + FOrderBy;
  finally
    FreeAndNil(LColumns);
  end;

end;

procedure TfrmFeeList.neSortColumnsExit(Sender: TObject);
begin
  SetOrderByAndRefresh;
end;

procedure TfrmFeeList.FormCreate(Sender: TObject);
begin
  vtColumns.NodeDataSize := SizeOf(TColumnData);
  vtDrillDown.NodeDataSize := SizeOf(TDrillData);
  pcFeeList.ActivePage := tsFilter;
  qFeeEarners.Open();
  qEntity.Open();
  qEntity.Locate('code',dmAxiom.Entity,[]);
  qDepartment.Open();
  qFeeType.Open();
  qAuthorType.Open();
  qScaleCost.Open();
  qPartner.Open();
end;

procedure TfrmFeeList.aNewFeeExecute(Sender: TObject);
var
  frmNewFeeNew : TfrmFeeNew;
begin
  frmNewFeeNew := TfrmFeeNew.Create(Self);
  frmNewFeeNew.ShowModal;
  qFees.Close;
  qFees.Open;
end;

procedure TfrmFeeList.aNewFeeUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := dmAxiom.Security.Fee.Create
end;

procedure TfrmFeeList.aOpenFeeExecute(Sender: TObject);
var
  LFeeNew: TfrmFeeNew;
begin
  // Open the fee
  LFeeNew := TfrmFeeNew.Create(Self) ;

  LFeeNew.DisplayFee(qFees.FieldByName('NFEE').AsInteger);
  LFeeNew.ShowModal();

  qFees.Close;
  qFees.Open;
end;

procedure TfrmFeeList.aOpenFeeUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := dmAxiom.Security.Fee.Edit and (not qFees.IsEmpty);
end;

procedure TfrmFeeList.aOpenMatterExecute(Sender: TObject);
var
  LMatters: TfrmMatters;
begin
  LMatters := TfrmMatters.Create(Self);
  LMatters.DisplayMatter(qFees.FieldByName('FILEID').AsString);
end;

procedure TfrmFeeList.aOpenMatterUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not qFees.EOF;
end;

procedure TfrmFeeList.aDeleteFeeExecute(Sender: TObject);
var
  i: integer;
  LPostingFailed: boolean;
begin
  if (dbgFees.SelectedRows.Count > 0) then
  begin
    if MsgAsk('This will DELETE all unbilled fees selected.'#13#13'Are you sure you want to do this?') = mrYes then
    begin
      LPostingFailed := False;
      try
        dmAxiom.uniInsight.StartTransaction;
        // Automatically delete the selected items
//          with dbgFees.DataSource.DataSet do
        for i := 0 to dbgFees.SelectedRows.Count - 1 do
        begin
          dbgFees.DataSource.DataSet.GotoBookmark(Pointer(dbgFees.SelectedRows.Items[i]));
          if qFees.FieldByName('BILLED').AsString <> 'Y' then
          begin
            //MatterUpdate(qFees.FieldByName('NMATTER').AsInteger, 'UNBILL_FEES', 0 - (qFees.FieldByName('AMOUNT').AsCurrency + qFees.FieldByName('TAX').AsCurrency));
            qDelete.SQL.Text := 'DELETE FROM FEE WHERE NFEE = ' + IntToStr(qFees.FieldByName('NFEE').AsInteger);
            qDelete.ExecSQL;
            PlaySound('Delete');
          end;
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
end;

procedure TfrmFeeList.aDeleteFeeUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := dmAxiom.Security.Fee.Delete and (not qFees.IsEmpty);
end;

procedure TfrmFeeList.aExitExecute(Sender: TObject);
begin
  Close();
end;

procedure TfrmFeeList.aRefreshExecute(Sender: TObject);
begin
  if pcFeeList.ActivePage = tsFilter then
    MakeSQL
  else
  begin
    qFees.Close;
    qFees.Open;
  end;
  pcFeeList.ActivePage := tsFeeList;
end;

procedure TfrmFeeList.aClearAllExecute(Sender: TObject);
begin
  if cbAuthor.Enabled then
  begin
    cbAuthor.KeyValue := VarNull;
  end;
  dcToday.Click;
  eMatter.Text := '';
  edClientCode.Text := '';
  rgBilled.ItemIndex := 0;
  cbDept.KeyValue := VarNull;
  cbPartner.KeyValue := VarNull;
  cbFeeType.KeyValue := VarNull;
  cbBranch.KeyValue := VarNull;
  cbScale.KeyValue := VarNull;
  cbAuthorType.KeyValue := varNull;
  dtpDateFrom.Date := Date;
  dtpDateFrom.Checked := False;
  dtpDateTo.Date := Date;
  dtpDateTo.Checked := False;

  pcFeeList.ActivePage := tsFilter;
//  MakeSql;
end;

procedure TfrmFeeList.aReportFeeListSummaryExecute(Sender: TObject);
var
  LSQL: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
begin
   qrFeeListSummaryReport := TqrFeeListSummaryReport.Create(Self);
   LSQL := TStringList.Create();
   try

      GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField, 'FEE.NMATTER = MATTER.NMATTER AND FEE.NMEMO = NMEMO.NMEMO(+)');

      LSQL.Add('SELECT /*+ ORDERED */FEE.NMEMO, FEE.CREATED, FEE.AUTHOR, FEE.FILEID, FEE.NMATTER');
      LSQL.Add(', FEE.DESCR, FEE.NFEE, FEE.AMOUNT, FEE.UNITS, FEE.MINS');
      LSQL.Add(', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK');
      LSQL.Add(', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, MATTER.TITLE');
      LSQL.Add(', MATTER.SHORTDESCR, MATTER.BRANCH');

      if(Pos('MATTER',LSqlFrom) = 0) then
        LSQLFrom := LSQLFrom + ',MATTER';
      if(Pos('NMEMO',LSqlFrom) = 0) then
        LSQLFrom := LSQLFrom + ',NMEMO';

      LSQL.Add('FROM ' + LSQLFrom);
      LSQL.Add(LSqlWhere);
      LSQL.Add(FOrderBy);

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
   finally
      FreeAndNil(qrFeeListSummaryReport);
      FreeAndNil(LSQL);
   end;
end;

procedure TfrmFeeList.aReportAuthorSummaryExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
  LSql := TStringList.Create();
  qrFeeListAuthorSummaryReport := TqrFeeListAuthorSummaryReport.Create(Self);
  try
    LStartDate := Trunc(dtpDateFrom.Date);
    LEndDate := Trunc(dtpDateTo.Date) + 1;

    qrFeeListAuthorSummaryReport.Title := MakeTitle();

    GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');

    LSql.Add('SELECT fee.author AS author, employee.name AS name, SUM(fee.units) AS units, SUM(fee.mins) AS mins, SUM(fee.amount) AS amount ');
    LSql.Add('FROM employee, ' + LSqlFrom);
    LSql.Add(LSqlWhere);
    LSql.Add('AND fee.author = employee.code(+)');
    LSql.Add('GROUP BY fee.author, employee.name');
    LSql.Add('ORDER BY employee.name');

    if dtpDateFrom.Checked then
      qrFeeListAuthorSummaryReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListAuthorSummaryReport.DateFrom := 0;


    if dtpDateTo.Checked then
      qrFeeListAuthorSummaryReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListAuthorSummaryReport.DateTo := 0;

    qrFeeListAuthorSummaryReport.SQL := LSQL.Text;
    qrFeeListAuthorSummaryReport.Preview();

  finally
    FreeAndNil(qrFeeListAuthorSummaryReport);
    FreeAndNil(LSql);
  end;
end;

procedure TfrmFeeList.aReportGroupedListExecute(Sender: TObject);
var
  LStartDate,LEndDate: TDateTime;
begin
  qrFeeListGroupedReport := TqrFeeListGroupedReport.Create(self);
  try
    LStartDate := Trunc(dtpDateFrom.Date);
    LEndDate := Trunc(dtpDateTo.Date) + 1;

    qrFeeListGroupedReport.Title := MakeTitle;

    if dtpDateFrom.Checked then
      qrFeeListGroupedReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListGroupedReport.DateFrom := 0;


    if dtpDateTo.Checked then
      qrFeeListGroupedReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListGroupedReport.DateTo := 0;

    qrFeeListGroupedReport.SQL := qFees.SQL.Text;
    qrFeeListGroupedReport.GroupField := dbgFees.Columns[0].FieldName;
    qrFeeListGroupedReport.GroupCaption := dbgFees.Columns[0].Title.Caption;
    qrFeeListGroupedReport.Preview();
  finally
    FreeAndNil(qrFeeListGroupedReport);
  end;
end;

procedure TfrmFeeList.aGraphFeesByDateExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
  LSql := TStringList.Create();
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

    if dtpDateFrom.Checked then
      qrFeeListBarReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListBarReport.DateFrom := 0;


    if dtpDateTo.Checked then
      qrFeeListBarReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListBarReport.DateTo := 0;

    qrFeeListBarReport.SQL := LSQL.Text;
    qrFeeListBarReport.Preview();

  finally
    FreeAndNil(qrFeeListBarReport);
    FreeAndNil(LSql);
  end;
end;

procedure TfrmFeeList.aGraphAuthorFeesExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
  LSql := TStringList.Create();
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

    if dtpDateFrom.Checked then
      qrFeeListPieReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListPieReport.DateFrom := 0;


    if dtpDateTo.Checked then
      qrFeeListPieReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListPieReport.DateTo := 0;

    qrFeeListPieReport.SQL := LSQL.Text;
    qrFeeListPieReport.Preview();

  finally
    FreeAndNil(qrFeeListPieReport);
    FreeAndNil(LSql);
  end;
end;

procedure TfrmFeeList.aGraphFeeTypesExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
  LSql := TStringList.Create();
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

    if dtpDateFrom.Checked then
      qrFeeListPieReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListPieReport.DateFrom := 0;


    if dtpDateTo.Checked then
      qrFeeListPieReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListPieReport.DateTo := 0;

    qrFeeListPieReport.SQL := LSQL.Text;
    qrFeeListPieReport.Preview();

  finally
    FreeAndNil(qrFeeListPieReport);
    FreeAndNil(LSql);
  end;
end;

procedure TfrmFeeList.aGraphDepartmentsExecute(Sender: TObject);
var
  LSql: TStringList;
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStartDate,LEndDate: TDateTime;
begin
  LSql := TStringList.Create();
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

    if dtpDateFrom.Checked then
      qrFeeListPieReport.DateFrom := Trunc(LStartDate)
    else
      qrFeeListPieReport.DateFrom := 0;


    if dtpDateTo.Checked then
      qrFeeListPieReport.DateTo := Trunc(LEndDate)
    else
      qrFeeListPieReport.DateTo := 0;

    qrFeeListPieReport.SQL := LSQL.Text;
    qrFeeListPieReport.Preview();

  finally
    FreeAndNil(qrFeeListPieReport);
    FreeAndNil(LSql);
  end;
end;

procedure TfrmFeeList.aGraphAuthorFeesUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := VarIsNull(cbAuthor.KeyValue);
end;

procedure TfrmFeeList.aGraphDepartmentsUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := VarIsNull(cbDept.KeyValue);
end;

procedure TfrmFeeList.aClearExecute(Sender: TObject);
begin
  if TAction(Sender).ActionComponent = sbClearAuthor then
    cbAuthor.KeyValue := varNull;
  if TAction(Sender).ActionComponent = sbClearEntity then
    cbEntity.KeyValue := varNull;
  if TAction(Sender).ActionComponent = sbClearBranch then
    cbBranch.KeyValue := varNull;
  if TAction(Sender).ActionComponent = sbClearDepartment then
    cbDept.KeyValue := varNull;
  if TAction(Sender).ActionComponent = sbClearMatter then
    eMatter.Text := '';
  if TAction(Sender).ActionComponent = sbClearFeeType then
    cbFeeType.KeyValue := varNull;
  if TAction(Sender).ActionComponent = sbClearClient then
    edClientCode.Text := '';
  if TAction(Sender).ActionComponent = sbClearAuthor then
    cbAuthor.KeyValue :=  varNull;
  if TAction(Sender).ActionComponent = sbClearPartner then
    cbPartner.KeyValue :=  varNull;
  if TAction(Sender).ActionComponent = sbClearScale then
    cbScale.KeyValue :=  varNull;
  if TAction(Sender).ActionComponent = sbClearBillNumber then
    edBillNum.Text := '';

end;

procedure TfrmFeeList.aMatterSearchExecute(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOk then
    eMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
end;

procedure TfrmFeeList.aClientSearchExecute(Sender: TObject);
begin
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);
  if frmClientSearch.ShowModal = mrOk then
    edClientCode.Text := frmClientSearch.qryClientList.FieldByName('CODE').AsString;
end;

procedure TfrmFeeList.cbEntityChange(Sender: TObject);
begin
  qBranch.close();
  if(not VarIsNull(cbEntity.KeyValue)) then
  begin
    qBranch.ParamByName('entity').AsString := cbEntity.KeyValue;
    qBranch.Open();
    cbBranch.KeyValue := varNull;
  end;
end;

procedure TfrmFeeList.aTodayExecute(Sender: TObject);
begin
  aClearAll.Execute();
  cbAuthor.KeyValue := dmAxiom.UserID;
  dtpDateFrom.Date := Date();
  dtpDateTo.Date   := Date();
  pcFeeList.ActivePage := tsStats;
end;

procedure TfrmFeeList.aStatisticsReportExecute(Sender: TObject);
begin
  qrFeeListStatsReport := TqrFeeListStatsReport.Create(Self);
  try

    qrFeeListStatsReport.qlStatsTitle.Caption           := MakeTitle;

    qrFeeListStatsReport.qlAuthorUnitsMoneyMsg.Caption  := lAuthorUnitsMoneyMsg.Caption;
    qrFeeListStatsReport.qlAuthorUnitsMoney.Caption     := lAuthorUnitsMoney.Caption;

    qrFeeListStatsReport.qlBilledAmount.Caption         := lBilledTotal.Caption;
    qrFeeListStatsReport.qlUnbilledAmount.Caption       := lUnbilledTotal.Caption;
    qrFeeListStatsReport.qlTotalAmount.Caption          := lTotalTotal.Caption;
    qrFeeListStatsReport.qlBilledNumber.Caption         := lBilledNumber.Caption;
    qrFeeListStatsReport.qlUnbilledNumber.Caption       := lUnbilledNumber.Caption;
    qrFeeListStatsReport.qlTotalNumber.Caption          := lTotalNumber.Caption;
    qrFeeListStatsReport.qlBilledAverage.Caption        := lBilledAverage.Caption;
    qrFeeListStatsReport.qlUnbilledAverage.Caption      := lUnbilledAverage.Caption;
    qrFeeListStatsReport.qlTotalAverage.Caption         :=  lTotalAverage.Caption;
    qrFeeListStatsReport.qlBilledPercent.Caption        := lBilledPercent.Caption;
    qrFeeListStatsReport.qlUnbilledPercent.Caption      := lUnbilledPercent.Caption;
    qrFeeListStatsReport.qlTotalPercent.Caption         := lTotalPercent.Caption;
    qrFeeListStatsReport.qlBilledUnits.Caption          := lBilledUnits.Caption;
    qrFeeListStatsReport.qlUnbilledUnits.Caption        := lUnbilledUnits.Caption;
    qrFeeListStatsReport.qlTotalUnits.Caption           := lTotalUnits.Caption;
    qrFeeListStatsReport.qlBilledUnitMoney.Caption      := lBilledUnitsMoney.Caption;
    qrFeeListStatsReport.qlUnbilledUnitMoney.Caption    := lUnbilledUnitsMoney.Caption;
    qrFeeListStatsReport.qlTotalUnitMoney.Caption       := lTotalUnitsMoney.Caption;
    qrFeeListStatsReport.qlBilledMins.Caption           := lBilledMins.Caption;
    qrFeeListStatsReport.qlUnbilledMins.Caption         := lUnbilledMins.Caption;
    qrFeeListStatsReport.qlTotalMins.Caption            := lTotalMins.Caption;
    qrFeeListStatsReport.qlBilledMinsMoney.Caption      := lBilledMinsMoney.Caption;
    qrFeeListStatsReport.qlUnbilledMinsMoney.Caption    := lUnbilledMinsMoney.Caption;
    qrFeeListStatsReport.qlTotalMinsMoney.Caption       := lTotalMinsMoney.Caption;
    qrFeeListStatsReport.qlBilledHours.Caption          := lBilledHours.Caption;
    qrFeeListStatsReport.qlUnbilledHours.Caption        := lUnbilledHours.Caption;
    qrFeeListStatsReport.qlTotalHours.Caption           := lTotalHours.Caption;

    qrFeeListStatsReport.qlDaysWorked.Caption           := lDaysWorked.Caption;
    qrFeeListStatsReport.qlHoursWorked.Caption          := lHoursWorked.Caption;
    qrFeeListStatsReport.qlUnitsWorked.Caption          := lUnitsWorked.Caption;
    qrFeeListStatsReport.qlMoneyWorked.Caption          := lMoneyWorked.Caption;


    qrFeeListStatsReport.Preview();
  finally
    FreeAndNil(qrFeeListStatsReport);
  end;
end;

procedure TfrmFeeList.tsStatsShow(Sender: TObject);
var
  LMinsPerUnit: integer;
  LTotalUnit, LTotalHour, LTotalMin: Currency;
  LTotalMoney: Currency;
  LEndDate, LStartDate: TDateTime;

  LSqlWhere, LSqlFrom, LGroupField: String;
begin
  qBilled.Close;
  qUnbilled.Close;

  // Dates are from midnight to midnight
  LStartDate := Trunc(dtpDateFrom.Date);
  LEndDate := Trunc(dtpDateTo.Date) + 1;

  GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'');
  qWorked.SQL.Clear;
  qWorked.SQL.Add('SELECT COUNT(CNT) AS DAYS FROM (SELECT COUNT(AMOUNT) AS CNT');
  qWorked.SQL.Add('FROM ' + LSqlFrom);
  qWorked.SQL.Add(LSqlWhere);
  qWorked.SQL.Add('GROUP BY TRUNC(' + LGroupField + '))');
  if dtpDateFrom.Checked then
    qWorked.ParamByName('P_DateFrom').AsDate := LStartDate;
  if dtpDateTo.Checked then
    qWorked.ParamByName('P_DateTo').AsDate := LEndDate;
  qWorked.Open;

  GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'BILLED = ''Y''');
  qBilled.SQL.Clear;
  qBilled.SQL.Add('SELECT SUM(AMOUNT) AS AMT, SUM(UNITS) AS UNITS, SUM(MINS) AS MINS, COUNT(AMOUNT) AS CNT');
  qBilled.SQL.Add('FROM ' + LSqlFrom);
  qBilled.SQL.Add(LSqlWhere);
  if dtpDateFrom.Checked then
    qBilled.ParamByName('P_DateFrom').AsDate := LStartDate;
  if dtpDateTo.Checked then
    qBilled.ParamByName('P_DateTo').AsDate := LEndDate;
  qBilled.Open;


  GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField,'BILLED <> ''Y''');
  qUnbilled.SQL.Clear;
  qUnbilled.SQL.Add('SELECT SUM(AMOUNT) AS AMT, SUM(UNITS) AS UNITS, SUM(MINS) AS MINS, COUNT(AMOUNT) AS CNT');
  qUnbilled.SQL.Add('FROM ' + LSqlFrom);
  qUnbilled.SQL.Add(LSqlWhere);
  if dtpDateFrom.Checked then
    qUnbilled.ParamByName('P_DateFrom').AsDate := LStartDate;
  if dtpDateTo.Checked then
    qUnbilled.ParamByName('P_DateTo').AsDate := LEndDate;
  qUnbilled.Open;

  LMinsPerUnit := SystemInteger('TIME_UNITS');
  if LMinsPerUnit = 0 then
    LMinsPerUnit := 1;

  // Total Billed
  lBilledTotal.Caption              := Format('%m', [qBilledAMT.AsCurrency]);
  lUnbilledTotal.Caption            := Format('%m', [qUnbilledAMT.AsCurrency]);
  LTotalMoney                         := qBilledAMT.AsCurrency + qUnbilledAMT.AsCurrency;
  lTotalTotal.Caption               := Format('%m', [LTotalMoney]);

  // Number Billed.
  lBilledNumber.Caption             := Format('%d', [qBilledCNT.AsInteger]);
  lUnbilledNumber.Caption           := Format('%d', [qUnbilledCNT.AsInteger]);
  lTotalNumber.Caption              := Format('%d', [qBilledCNT.AsInteger + qUnbilledCNT.AsInteger]);

  // setup chart.
  chBilledvsUnBilled.Series[0].Clear();
  chBilledvsUnBilled.Series[0].Add(qBilledAMT.AsCurrency,'Billed');
  chBilledvsUnBilled.Series[0].Add(qUnBilledAMT.AsCurrency,'UnBilled');

  // Billed Average
  if qBilledCNT.AsInteger <> 0 then
    lBilledAverage.Caption          := Format('%m', [qBilledAMT.AsCurrency / qBilledCNT.AsInteger])
  else
    lBilledAverage.Caption          := '';
  if qUnbilledCNT.AsInteger <> 0 then
    lUnbilledAverage.Caption        := Format('%m', [qUnbilledAMT.AsCurrency / qUnbilledCNT.AsInteger])
  else
    lUnbilledAverage.Caption        := '';
  if (qBilledCNT.AsInteger + qUnbilledCNT.AsInteger) <> 0 then
    lTotalAverage.Caption           := Format('%m', [LTotalMoney / (qBilledCNT.AsInteger + qUnbilledCNT.AsInteger)])
  else
    lTotalAverage.Caption           := '';

  // Percent Billed.
  if (LTotalMoney <> 0) then
  begin
    lBilledPercent.Caption          := Format('%5.2n', [qBilledAMT.AsCurrency / LTotalMoney * 100]);
    lUnbilledPercent.Caption        := Format('%5.2n', [qUnbilledAMT.AsCurrency / LTotalMoney * 100]);
    lTotalPercent.Caption           := '100.00';
  end else
  begin
    lBilledPercent.Caption          := '';
    lUnbilledPercent.Caption        := '';
    lTotalPercent.Caption           := '';
  end;

  // Billed Units.
  lBilledUnits.Caption              := Format('%d', [qBilledUNITS.AsInteger]);
  lUnbilledUnits.Caption            := Format('%d', [qUnbilledUNITS.AsInteger]);
  LTotalUnit                       := qBilledUNITS.AsInteger + qUnbilledUNITS.AsInteger;
  lTotalUnits.Caption               := Format('%8.0n', [LTotalUnit]);

  // Billed Units Money
  if qBilledUNITS.AsInteger <> 0 then
    lBilledUnitsMoney.Caption       := Format('%m', [qBilledAMT.AsCurrency / qBilledUNITS.AsInteger])
  else
    lBilledUnitsMoney.Caption       := '';
  if qUnbilledUNITS.AsInteger <> 0 then
    lUnbilledUnitsMoney.Caption     := Format('%m', [qUnbilledAMT.AsCurrency / qUnbilledUNITS.AsInteger])
  else
    lUnbilledUnitsMoney.Caption     := '';
  if (LTotalUnit <> 0) then
    lTotalUnitsMoney.Caption          := Format('%m', [LTotalMoney / LTotalUnit])
  else
    lTotalUnitsMoney.Caption        := '';

  // Billed Minutes
  lBilledMins.Caption               := Format('%8.0n', [qBilledMINS.AsInteger / LMinsPerUnit]);
  lUnbilledMins.Caption             := Format('%8.0n', [qUnbilledMINS.AsInteger / LMinsPerUnit]);
  LTotalMin                          := Round((qBilledMINS.AsInteger + qUnbilledMINS.AsInteger) / LMinsPerUnit);
  lTotalMins.Caption                := Format('%8.0n', [LTotalMin]);

  // Billed Minutes Money
  if qBilledMINS.AsInteger <> 0 then
    lBilledMinsMoney.Caption        := Format('%m', [qBilledAMT.AsCurrency / (qBilledMINS.AsInteger / LMinsPerUnit)])
  else
    lBilledMinsMoney.Caption        := '';
  if qUnbilledMINS.AsInteger <> 0 then
    lUnbilledMinsMoney.Caption      := Format('%m', [qUnbilledAMT.AsCurrency / (qUnbilledMINS.AsInteger / LMinsPerUnit)])
  else
    lUnbilledMinsMoney.Caption      := '';
  if (LTotalMin <> 0) then
    lTotalMinsMoney.Caption         := Format('%m', [LTotalMoney / (LTotalMin / LMinsPerUnit)])
  else
    lTotalMinsMoney.Caption         := '';

  // Billed Hours
  lBilledHours.Caption              := Format('%8.2n', [qBilledMINS.AsInteger / 60]);
  lUnbilledHours.Caption            := Format('%8.2n', [qUnbilledMINS.AsInteger / 60]);
  LTotalHour                         := Round(LTotalMin / 60);
  lTotalHours.Caption               := Format('%8.2n', [LTotalHour]);

  qBilled.Close;
  qUnbilled.Close;

  if not VarIsNull(cbAuthor.KeyValue) then
  begin
    lAuthorUnitsMoneyMsg.Caption := String(cbAuthor.KeyValue) + ' $/Unit';
    lAuthorUnitsMoney.Caption := Format('%m', [TableCurrency('EMPLOYEE', 'CODE', String(cbAuthor.KeyValue), 'RATE') / 60 * LMinsPerUnit]);
  end else
  begin
    lAuthorUnitsMoneyMsg.Caption := '$/Unit';
    lAuthorUnitsMoney.Caption := 'Unknown';
  end;

  // Now work out the days worked
  lDaysWorked.Caption := IntToStr(qWorkedDAYS.AsInteger);
  lHoursWorked.Caption := '';
  lUnitsWorked.Caption := '';
  lMoneyWorked.Caption := '';
  if not qWorked.EOF then
  begin
    if qWorkedDAYS.AsInteger <> 0 then
    begin
      lHoursWorked.Caption := Format('%8.2n', [LTotalHour / qWorkedDAYS.AsInteger]);
      lUnitsWorked.Caption := Format('%8.0n', [LTotalUnit / qWorkedDAYS.AsInteger]);
      lMoneyWorked.Caption := Format('%m',    [LTotalMoney / qWorkedDAYS.AsInteger]);
    end;
  end;
  qWorked.Close();
end;

procedure TfrmFeeList.tsStatsHide(Sender: TObject);
begin
  qBilled.Close;
  qUnbilled.Close;
end;

procedure TfrmFeeList.tsFeeListShow(Sender: TObject);
var
  LNode: PVirtualNode;
  LData: PColumnData;
  LColumn: TColumn;
begin
  MakeSQL();

  // make sure columns follow whats visible on columns page..
  dbgFees.Columns.Clear();
  LNode := vtColumns.RootNode.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtColumns.GetNodeData(LNode);
    if(LData.Visible) then
    begin
      LColumn := dbgFees.Columns.Add();
      LColumn.FieldName := LData.ColumnName;
      LColumn.Width     := LData.Width;
    end;
    LNode := LNode.NextSibling;
  end;

end;

procedure TfrmFeeList.aReportAuthorSummaryUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := VarIsNull(cbAuthor.KeyValue);
end;

procedure TfrmFeeList.tsBudgetHide(Sender: TObject);
begin
  CloseBudgetQueries();
end;

procedure TfrmFeeList.tsBudgetShow(Sender: TObject);
var
  LDateFirst, LDateLast: TDate;
  LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
  LDateLastYear, LDateLastMonth, LDateLastDay: Word;

begin
  CloseBudgetQueries();
  LDateFirst := DateOf(dtpDateFrom.Date);
  LDateLast  := DateOf(dtpDateTo.Date);

  if(LDateFirst > LDateLast) then
    Exit;

  rbBudgetViewMonth.Checked := False;
  rbBudgetViewQuarter.Checked := False;
  rbBudgetViewYear.Checked := False;

  DecodeDate(LDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
  DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);

  FDontChange := True;
  rbBudgetViewYear.Enabled    := (LDateLastYear - LDateFirstYear > 0);
  rbBudgetViewQuarter.Enabled := ((LDateLastYear = LDateFirstYear) and (LDateLastMonth - LDateFirstMonth > 6)) or
                                 (LDateLastYear - LDateFirstYear > 0);
  rbBudgetViewMonth.Enabled   := (LDateLastYear - LDateFirstYear < 2);
  FDontChange := False;

  FBudgetGraphView := [];
  if(rbBudgetViewMonth.Enabled) and (LDateLastYear - LDateFirstYear < 1) then
    Include(FBudgetGraphView,bstMonth)
  else if(rbBudgetViewQuarter.Enabled) and (LDateLastYear - LDateFirstYear < 2) then
    Include(FBudgetGraphView,bstQuarter)
  else
    Include(FBudgetGraphView,bstYear);

  if (not VarIsNull(cbAuthor.KeyValue)) then
    Include(FBudgetGraphView,bstAuthor)
  else if(not VarIsNull(cbDept.KeyValue)) then
    Include(FBudgetGraphView,bstDepartment)
  else
    Exit;

  if(bstAuthor in FBudgetGraphView) then
  begin
    qBudgetGraphAuthMonth.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
    qBudgetGraphAuthMonth.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
    qBudgetGraphAuthMonth.ParamByName('author').AsString    := cbAuthor.KeyValue;

    qBudgetGraphAuthQuarter.ParamByName('firstyear').AsInteger := LDateFirstYear;
    qBudgetGraphAuthQuarter.ParamByName('lastyear').AsInteger  := LDateLastYear;
    qBudgetGraphAuthQuarter.ParamByName('author').AsString    := cbAuthor.KeyValue;

    qBudgetGraphAuthYear.ParamByName('firstyear').AsInteger := LDateFirstYear;
    qBudgetGraphAuthYear.ParamByName('lastyear').AsInteger  := LDateLastYear;
    qBudgetGraphAuthYear.ParamByName('author').AsString    := cbAuthor.KeyValue;
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    qBudgetGraphDeptMonth.ParamByName('firstdate').AsString := IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
    qBudgetGraphDeptMonth.ParamByName('lastdate').AsString  := IntToStr(LDateLastMonth) + '-' + IntToStr(LDateLastYear);
    qBudgetGraphDeptMonth.ParamByName('dept').AsString      := cbDept.KeyValue;

    qBudgetGraphDeptQuarter.ParamByName('firstyear').AsInteger := LDateFirstYear;
    qBudgetGraphDeptQuarter.ParamByName('lastyear').AsInteger  := LDateLastYear;
    qBudgetGraphDeptQuarter.ParamByName('dept').AsString    := cbDept.KeyValue;

    qBudgetGraphDeptYear.ParamByName('firstyear').AsInteger := LDateFirstYear;
    qBudgetGraphDeptYear.ParamByName('lastyear').AsInteger  := LDateLastYear;
    qBudgetGraphDeptYear.ParamByName('dept').AsString    := cbDept.KeyValue;
  end;


  {  qGraphQuery.Close();
  qGraphQuery.ParamByName('author').AsString := cbAuthor.KeyValue;
  qGraphQuery.ParamByName('year').AsInteger  := 2002;
  qGraphQuery.Open();
}
  if(bstMonth in FBudgetGraphView) then
    rbBudgetViewMonth.Checked := True
  else if(bstQuarter in FBudgetGraphView) then
    rbBudgetViewQuarter.Checked := True
  else if(bstYear in FBudgetGraphView) then
    rbBudgetViewYear.Checked := True
end;

procedure TfrmFeeList.rbBudgetViewMonthClick(Sender: TObject);
begin
  if(FDontChange) or (FBudgetGraphView = []) then
    Exit;

  CloseBudgetQueries();
  if(bstAuthor in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := qBudgetGraphAuthMonth;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := qBudgetGraphAuthMonth;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := qBudgetGraphAuthMonth;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'VIEWDATE';

    qBudgetGraphAuthMonth.Open();
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := qBudgetGraphDeptMonth;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := qBudgetGraphDeptMonth;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := qBudgetGraphDeptMonth;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'VIEWDATE';

    qBudgetGraphDeptMonth.Open();
  end;
  chBudget.BottomAxis.Title.Caption := 'Month';
end;


procedure TfrmFeeList.rbBudgetViewQuarterClick(Sender: TObject);
begin
  if(FDontChange) or (FBudgetGraphView = []) then
    Exit;

  CloseBudgetQueries();
  if(bstAuthor in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := qBudgetGraphAuthQuarter;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'XFIELD';
    chBudget.Series[0].XLabelsSource       := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := qBudgetGraphAuthQuarter;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'XFIELD';
    chBudget.Series[1].XLabelsSource       := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := qBudgetGraphAuthQuarter;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'XFIELD';
    chBudget.Series[2].XLabelsSource       := 'VIEWDATE';

    qBudgetGraphAuthQuarter.Open();
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := qBudgetGraphDeptQuarter;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'XFIELD';
    chBudget.Series[0].XLabelsSource       := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := qBudgetGraphDeptQuarter;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'XFIELD';
    chBudget.Series[1].XLabelsSource       := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := qBudgetGraphDeptQuarter;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'XFIELD';
    chBudget.Series[2].XLabelsSource       := 'VIEWDATE';

    qBudgetGraphDeptQuarter.Open();
  end;
  chBudget.BottomAxis.Title.Caption := 'Quarter';
end;

procedure TfrmFeeList.rbBudgetViewYearClick(Sender: TObject);
begin
  if(FDontChange) or (FBudgetGraphView = []) then
    Exit;

  CloseBudgetQueries();
  if(bstAuthor in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := qBudgetGraphAuthYear;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := qBudgetGraphAuthYear;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := qBudgetGraphAuthYear;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'VIEWDATE';

    qBudgetGraphAuthYear.Open();
  end else if(bstDepartment in FBudgetGraphView) then
  begin
    // Bar for billed
    chBudget.Series[0].DataSource := qBudgetGraphDeptYear;
    chBudget.Series[0].YValues.ValueSource := 'BILLED';
    chBudget.Series[0].XValues.ValueSource := 'VIEWDATE';

    // bar for unbilled
    chBudget.Series[1].DataSource := qBudgetGraphDeptYear;
    chBudget.Series[1].YValues.ValueSource := 'UNBILLED';
    chBudget.Series[1].XValues.ValueSource := 'VIEWDATE';

    // line for budget
    chBudget.Series[2].DataSource := qBudgetGraphDeptYear;
    chBudget.Series[2].YValues.ValueSource := 'BUDGET';
    chBudget.Series[2].XValues.ValueSource := 'VIEWDATE';

    qBudgetGraphDeptYear.Open();
  end;
  chBudget.BottomAxis.Title.Caption := 'Year';
end;

procedure TfrmFeeList.CloseBudgetQueries();
begin
  qBudgetGraphAuthMonth.Close();
  qBudgetGraphAuthQuarter.Close();
  qBudgetGraphAuthYear.Close();

  qBudgetGraphDeptMonth.Close();
  qBudgetGraphDeptQuarter.Close();
  qBudgetGraphDeptYear.Close();

end;

procedure TfrmFeeList.LoadColumnData;
  function GridHasColumn(AFieldName: String): Boolean;
  var
    i: Integer;
  begin
    Result := True;
    for i := 0 to dbgFees.Columns.Count - 1 do
    begin
      if(dbgFees.Columns.Items[i].FieldName = AFieldName) then
        Exit;
    end;
    Result := False;
  end;
var
  LNode: PVirtualNode;
  LData: PColumnData;
  i, LNumFields: Integer;
begin
  vtColumns.BeginUpdate();
  try
    vtColumns.Clear();

    LNumFields := SettingLoadInteger(C_NEWFEELIST,'ColumnCount');
    if(LNumFields > 0) and (LNumfields = qFees.Fields.Count) then
    begin
      for i := 1 to LNumFields do
      begin
        LNode := vtColumns.AddChild(nil);
        LData := vtColumns.GetNodeData(LNode);
        LData.ColumnName    := SettingLoadString(C_NEWFEELIST,C_COLUMNNAME + IntToStr(i));
        if(LData.ColumnName <> '') then
        begin
          LData.ColumnDisplay := qFees.FieldByName(LData.ColumnName).DisplayLabel;
          LData.Visible       := SettingLoadBoolean(C_NEWFEELIST,C_COLUMNVISIBLE + IntToStr(i));
          LData.SortOrder     := SettingLoadInteger(C_NEWFEELIST,C_COLUMNSORTORDER + IntToStr(i));
          LData.SortDirection := TSortDirection(SettingLoadInteger(C_NEWFEELIST,C_COLUMNSORTDIRECTION + IntToStr(i)));
          LData.Group         := SettingLoadBoolean(C_NEWFEELIST,C_COLUMNGROUP + IntToStr(i));
          LData.GroupOrder    := SettingLoadInteger(C_NEWFEELIST,C_COLUMNGROUPORDER + IntToStr(i));
          LData.TotalType     := TTotalType(SettingLoadInteger(C_NEWFEELIST,C_COLUMNTOTALTYPE + IntToStr(i)));
          LData.Width         := SettingLoadInteger(C_NEWFEELIST,C_COLUMNWIDTH + IntToStr(i));
          if(LData.Width = 0) then
            LData.Width := -1;
        end else
          vtColumns.DeleteNode(LNode);
      end;
    end else
    begin
      for i := 0 to qFees.Fields.Count - 1 do
      begin
        if(qFees.Fields[i].FieldName <> qFees.Fields[i].DisplayLabel) then
        begin
          LNode := vtColumns.AddChild(nil);
          LData := vtColumns.GetNodeData(LNode);
          LData.ColumnName    := qFees.Fields[i].FieldName;
          LData.ColumnDisplay := qFees.Fields[i].DisplayLabel;
          LData.Visible       := GridHasColumn(LData.ColumnName);
          if(LData.ColumnName = 'AUTHOR') then
          begin
            LData.SortOrder     := 1;
            LData.SortDirection := sdDescending;
            LData.Group         := True;
            LData.GroupOrder    := 1;
            LData.TotalType     := ttNone;
          end else if(LData.ColumnName = 'AMOUNT') then
          begin
            LData.SortOrder     := 0;
            LData.SortDirection := sdNone;
            LData.Group         := False;
            LData.GroupOrder    := 0;
            LData.TotalType     := ttSum;
          end else
          begin
            LData.SortOrder     := 0;
            LData.SortDirection := sdNone;
            LData.Group         := False;
            LData.GroupOrder    := 0;
            LData.TotalType     := ttNone;
          end;
        end;
      end;

    end;

{  lbHidden.Clear;
  for i := 0 to qFees.FieldCount - 1 do
    lbHidden.Items.Add(qFees.Fields[i].DisplayName);

  LNumFields := SettingLoadInteger('FeeList','ColumnCount');
  for i := 0 to LNumfields - 1 do
  begin
    LFieldName := SettingLoadString('FeeList', 'Column' + IntToStr(i));
    LDisplayLabel := qFees.FieldByName(LFieldName).DisplayLabel;
    lbDisplay.Items.Add(LDisplayLabel);
    lbHidden.Items.Delete(lbHidden.Items.IndexOf(LDisplayLabel));
  end;

  neSortColumns.AsInteger := SettingLoadInteger('FeeList', 'SortColumns');
  if neSortColumns.AsInteger = 0 then
    neSortColumns.AsInteger := 3;

  if lbDisplay.Items.Count > 0 then
    ColumnReset()
  else if(lbDisplay.Items.Count = 0) then
  begin
    for i := 0 to dbgFees.Columns.Count - 1 do
    begin
      LFieldName := dbgFees.Columns[i].FieldName;
      LDisplayLabel := qFees.FieldByName(LFieldName).DisplayLabel;
      lbDisplay.Items.Add(LDisplayLabel);
      lbHidden.Items.Delete(lbHidden.Items.IndexOf(LDisplayLabel));
    end;
  end;
 }


  finally
    vtColumns.EndUpdate();
  end;
end;

procedure TfrmFeeList.vtColumnsNewText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; NewText: WideString);
var
  LData: PColumnData;

  function GetSortDirection(AText: String): TSortDirection;
  begin
    for Result := High(TSortDirection) downto Low(TSortDirection) do
    begin
      if(TSortDirectionCaption[Result] = AText) then
        Exit;
    end;
    Result := sdNone;
  end;
  function GetTotalType(AText: String): TTotalType;
  begin
    for Result := High(TTotalType) downto Low(TTotalType) do
    begin
      if(TTotalTypeCaption[Result] = AText) then
        Exit;
    end;
    Result := ttNone;
  end;
begin
  SetLength(TrueBoolStrs,1);
  TrueBoolStrs[0] := 'Yes';

  SetLength(FalseBoolStrs,1);
  FalseBoolStrs[0] := 'No';

  LData := Sender.GetNodeData(Node);
  case TColumnTreeColumns(Column) of
    ctcVisible:       LData.Visible       := StrToBool(NewText);
    ctcSortOrder:     LData.SortOrder     := StrToIntDef(NewText,0);
    ctcSortDirection: LData.SortDirection := GetSortDirection(NewText);
    ctcGroup:         LData.Group         := StrToBool(NewText);
    ctcGroupOrder:    LData.GroupOrder    := StrToIntDef(NewText,0);
    ctcTotalType:     LData.TotalType     := GetTotalType(NewText);
  end;
end;

procedure TfrmFeeList.vtColumnsGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  LData: PColumnData;
begin
  SetLength(TrueBoolStrs,1);
  TrueBoolStrs[0] := 'Yes';

  SetLength(FalseBoolStrs,1);
  FalseBoolStrs[0] := 'No';

  CellText := '';
  LData := Sender.GetNodeData(Node);
  case TColumnTreeColumns(Column) of
    ctcColumnDisplay: CellText := LData.ColumnDisplay;
    ctcVisible:       CellText := BoolToStr(LData.Visible,True);
    ctcSortOrder:     if(LData.SortOrder > 0) then
                        CellText := IntToStr(LData.SortOrder);
    ctcSortDirection: CellText := TSortDirectionCaption[LData.SortDirection];
    ctcGroup:         CellText := BoolToStr(LData.Group,True);
    ctcGroupOrder:    if(LData.GroupOrder > 0) then
                        CellText := IntToStr(LData.GroupOrder);
    ctcTotalType:     CellText := TTotalTypeCaption[LData.TotalType];
  end;
end;

procedure TfrmFeeList.vtColumnsCreateEditor(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
begin
  case TColumnTreeColumns(Column) of
    ctcVisible:       EditLink := TAXCheckEditLink.Create();
    ctcSortOrder:     EditLink := TSpinEditLink.Create(True,1,0,10);
    ctcSortDirection: EditLink := TComboEditLink.Create(TSortDirectionCaption[sdNone] + ',' + TSortDirectionCaption[sdAscending] + ',' + TSortDirectionCaption[sdDescending],csDropDownList);
    ctcGroup:         EditLink := TAXCheckEditLink.Create();
    ctcGroupOrder:    EditLink := TSpinEditLink.Create(True,1,0,10);
    ctcTotalType:     EditLink := TComboEditLink.Create(
      TTotalTypeCaption[ttNone]    + ',' + TTotalTypeCaption[ttMax] + ',' +
      TTotalTypeCaption[ttMin]     + ',' + TTotalTypeCaption[ttAverage] + ',' +
      TTotalTypeCaption[ttSum],csDropDownList);
  end;
end;

procedure TfrmFeeList.vtColumnsEdited(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex);
begin
//
end;

procedure TfrmFeeList.vtColumnsEditing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  Allowed := Column > 0;
end;

procedure TfrmFeeList.vtColumnsClick(Sender: TObject);
begin
  if(Assigned(vtColumns.FocusedNode) and (vtColumns.FocusedColumn > 0)) then
    vtColumns.EditNode(vtColumns.FocusedNode,vtColumns.FocusedColumn);
end;

procedure TfrmFeeList.vtColumnsPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  LData: PColumnData;
begin
  LData := Sender.GetNodeData(Node);
  if(not LData.Visible) then
    TargetCanvas.Font.Color := clGray;

  case TColumnTreeColumns(Column) of
    ctcSortOrder:     if(LData.SortOrder > 0) then
      TargetCanvas.Font.Style := [fsBold];
    ctcSortDirection: if(LData.SortDirection <> sdNone) then
      TargetCanvas.Font.Style := [fsBold];
    ctcGroup:         if(LData.Group) then
      TargetCanvas.Font.Style := [fsBold];
    ctcGroupOrder:    if(LData.GroupOrder > 0) then
      TargetCanvas.Font.Style := [fsBold];
    ctcTotalType:     if(LData.TotalType <> ttNone) then
      TargetCanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmFeeList.SaveColumnData;
var
  LNumFields: Integer;
  LNode: PVirtualNode;
  LData: PColumnData;
begin
  if(tsFeeList.Visible) then
    SaveColumnWidths();

  LNumFields := 1;
  LNode := vtColumns.RootNode.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtColumns.GetNodeData(LNode);

    SettingSave(C_NEWFEELIST,C_COLUMNNAME          + IntToStr(LNumFields),LData.ColumnName);
    SettingSave(C_NEWFEELIST,C_COLUMNVISIBLE       + IntToStr(LNumFields),LData.Visible);
    SettingSave(C_NEWFEELIST,C_COLUMNSORTORDER     + IntToStr(LNumFields),LData.SortOrder);
    SettingSave(C_NEWFEELIST,C_COLUMNSORTDIRECTION + IntToStr(LNumFields),Integer(LData.SortDirection));
    SettingSave(C_NEWFEELIST,C_COLUMNGROUP         + IntToStr(LNumFields),LData.Group);
    SettingSave(C_NEWFEELIST,C_COLUMNGROUPORDER    + IntToStr(LNumFields),LData.GroupOrder);
    SettingSave(C_NEWFEELIST,C_COLUMNTOTALTYPE     + IntToStr(LNumFields),Integer(LData.TotalType));
    SettingSave(C_NEWFEELIST,C_COLUMNWIDTH         + IntToStr(LNumFields),Integer(LData.Width));

    LNode := LNode.NextSibling;
    Inc(LNumFields);
  end;
  SettingSave(C_NEWFEELIST,'ColumnCount',LNumFields);
end;

{ TAXCheckEditLink }

constructor TAXCheckEditLink.Create(AOwner: TPersistent);
begin
  inherited;
  inherited Create(AOwner);
  FValueFalse := 'No';
  FValueTrue := 'Yes';

end;

function TAXCheckEditLink.CreateEditControl: TWinControl;
begin
  Result := TCheckbox.Create(nil);
end;

function TAXCheckEditLink.GetEditText: WideString;
begin
  case TCheckbox(EditControl).State of
    cbChecked: Result := FValueTrue;
    cbUnchecked: Result := FValueFalse;
  else
    Result := FValueGrayed;
  end;
end;

procedure TAXCheckEditLink.PrepareEditControl;
begin
  inherited;
  TCheckbox(EditControl).AllowGrayed := FAllowGrayed;
end;

procedure TAXCheckEditLink.SetEditText(const Value: WideString);
begin
  if SameText(Value, FValueFalse) then
    TCheckbox(EditControl).Checked := False
  else if SameText(Value, FValueTrue) then
    TCheckbox(EditControl).Checked := True
  else if FAllowGrayed then
    TCheckbox(EditControl).State := cbGrayed
  else
    TCheckbox(EditControl).Checked := False;
end;

function TfrmFeeList.GetColumnData(AFieldName: String): Pointer;
var
  LNode: PVirtualNode;
  LData: PColumnData;
begin
  LNode := vtColumns.RootNode.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtColumns.GetNodeData(LNode);
    if(LData.ColumnName = AFieldName) then
    begin
      Result := LData;
      Exit;
    end;
    LNode := LNode.NextSibling;
  end;
  Result := Nil;
end;

function TfrmFeeList.NumVisColumns(): Integer;
var
  LNode: PVirtualNode;
  LData: PColumnData;
begin
  Result := 0;
  LNode := vtColumns.RootNode.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtColumns.GetNodeData(LNode);
    if(LData.Visible) then
      Inc(Result);
    LNode := LNode.NextSibling;
  end;
end;

function TfrmFeeList.NumGroupColumns(): Integer;
var
  LNode: PVirtualNode;
  LData: PColumnData;
begin
  Result := 0;
  LNode := vtColumns.RootNode.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtColumns.GetNodeData(LNode);
    if(LData.Visible and LData.Group) then
      Inc(Result);
    LNode := LNode.NextSibling;
  end;
end;

procedure TfrmFeeList.LoadDrillDown;
var
  LNumGrouped, LNumVisible: Integer;

  LParentNode,
  LGroupNode,
  LNode: PVirtualNode;
  LData: PColumnData;
  LStrings: TStringList;
  i,y,g: Integer;
  LCol: TVirtualTreeColumn;
  LField: TField;
  LGroupData, LLastGroupData: String;
  LNodeData,
  LGroupNodeData: PDrillData;

  LGroupNodes: TNodeArray;
  LGroupValues: array of String;

  procedure ClearStrings();
  var
    i: Integer;
  begin
    LStrings.Clear();
    for i := 0 to C_NUMDATAFIELDS do
      LStrings.Add('  ');
  end;

  procedure CalcGroupTotals(AGroupNode: PVirtualNode; AGroupData: PDrillData);
  var
    LChildData: PDrillData;
//    LGroupData: PDrillData;
    LChild: PVirtualNode;
    i: Integer;
  begin
//    LGroupData := vtDrillDown.GetNodeData(AGroupNode);

    // first set to zero..
    for i := 1 to Length(AGroupData.DataNum) - 1 do
      AGroupData.DataNum[i] := 0;

    LChild := AGroupNode.FirstChild;
    while(Assigned(LChild)) do
    begin
      LChildData := vtDrillDown.GetNodeData(LChild);
      if(LChildData.DataStr[0] <> C_GRANDTOTALTEXT) then
      begin
        for i := 1 to Length(AGroupData.DataNum) - 1 do
        begin
          if(FDrillColumnDataTypes[i] in [ftInteger, ftLargeInt, ftWord, ftFloat, ftCurrency, ftBCD]) then
          begin
            case FDrillColumnTotalTypes[i] of
              ttMax:     if(LChildData.DataNum[i] > AGroupData.DataNum[i]) then
                AGroupData.DataNum[i] := LChildData.DataNum[i];
              ttMin:     if(LChildData.DataNum[i] < AGroupData.DataNum[i]) then
                AGroupData.DataNum[i] := LChildData.DataNum[i];
              ttAverage: AGroupData.DataNum[i] := AGroupData.DataNum[i] + LChildData.DataNum[i];
              ttSum:     AGroupData.DataNum[i] := AGroupData.DataNum[i] + LChildData.DataNum[i];
            end;
          end;
        end;

      end;
      LChild := LChild.NextSibling;
    end;

    // now fix averages and generate nice display numbers
    for i := 1 to Length(AGroupData.DataNum) - 1 do
    begin
      if(FDrillColumnTotalTypes[i] = ttAverage) then
        AGroupData.DataNum[i] := AGroupData.DataNum[i] / LGroupNode.ChildCount;

      case FDrillColumnDataTypes[i] of
        ftSmallint, ftInteger, ftWord: AGroupData.DataStr[i] := FormatFloat(',#0',AGroupData.DataNum[i]);
        ftFloat:                       AGroupData.DataStr[i] := FormatFloat(',#0.00',AGroupData.DataNum[i]);
        ftCurrency:                    AGroupData.DataStr[i] := FormatCurr('$,#0.00',AGroupData.DataNum[i]);
      end;
    end;
  end;


  procedure RecurseGenerateTotals(ANode: PVirtualNode);
  var
    LNode: PVirtualNode;
    LGroupData: PDrillData;
  begin
    LNode := ANode.FirstChild;
    while(Assigned(LNode)) do
    begin
      RecurseGenerateTotals(LNode);
      LNode := LNode.NextSibling;
    end;

    if((ANode <> vtDrillDown.RootNode) and (ANode.ChildCount > 0)) then // must be group
    begin
      LGroupData := vtDrillDown.GetNodeData(ANode);
      CalcGroupTotals(ANode, LGroupData);
    end;
  end;
begin
  LStrings := TStringList.Create();
  vtDrillDown.BeginUpdate();
  try
    vtDrillDown.Clear();
    vtDrillDown.Header.Columns.Clear();

    ClearStrings();
    LNumGrouped := NumGroupColumns();
    LNumVisible := NumVisColumns();

    SetLength(FDrillGroupingColumns,LNumGrouped);
    SetLength(LGroupNodes,LNumGrouped);
    SetLength(LGroupValues,LNumGrouped);

    SetLength(FDrillColumnTotalTypes,LNumVisible - LNumGrouped);
    SetLength(FDrillColumns,LNumVisible - LNumGrouped);
    SetLength(FDrillColumnDataTypes,LNumVisible - LNumGrouped);

    // now get the group columns in order.
    LNode := vtColumns.RootNode.FirstChild;
    while(Assigned(LNode)) do
    begin
      LData := vtColumns.GetNodeData(LNode);
      if(LData.Visible and LData.Group) then
        LStrings[LData.GroupOrder] := LData.ColumnName;
      LNode := LNode.NextSibling;
    end;

    y := 0;
    for i := 0 to C_NUMDATAFIELDS do
    begin
      if(Trim(LStrings[i]) <> '') then
      begin
        FDrillGroupingColumns[y] := LStrings[i];
        Inc(y);
      end;
    end;

    // now get the columns minus groupings..
    y := 0;
    LNode := vtColumns.RootNode.FirstChild;
    while(Assigned(LNode)) do
    begin
      LData := vtColumns.GetNodeData(LNode);
      if(LData.Visible and (not LData.Group)) then
      begin
        FDrillColumns[y]          := LData.ColumnName;
        FDrillColumnTotalTypes[y] := LData.TotalType;
        Inc(y);
      end;
      LNode := LNode.NextSibling;
    end;

    // now to build the screen....
    MakeSQL(True); // ensure query is run and ordered by gropuing first.

    LCol := vtDrillDown.Header.Columns.Add();
    LCol.Text := 'Groups';


    for i := 1 to Length(FDrillColumns) - 1 do
    begin
      LField := qFees.FindField(FDrillColumns[i]);
      if(Assigned(LField)) then
      begin
        LData := GetColumnData(FDrillColumns[i]);
        LCol := vtDrillDown.Header.Columns.Add();
        LCol.Text := LData.ColumnDisplay;
        FDrillColumnDataTypes[i] := LField.DataType;
        if((LField.DataType = ftFloat) and TFloatField(LField).Currency) then
          FDrillColumnDataTypes[i] := ftCurrency;

        if(FDrillColumnDataTypes[i] in [ftInteger, ftLargeInt, ftWord, ftBoolean, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime, ftTimeStamp]) then
          LCol.Alignment := taRightJustify;
      end;
    end;

    // now time to load the data..
    LLastGroupData := '';
    qFees.First();
//    LParentNode := nil;
    LGroupNode  := nil;
    while(not qFees.Eof) do
    begin
      for g := 0 to LNumGrouped - 1 do
      begin
        LGroupData := qFees.FieldByName(FDrillGroupingColumns[g]).DisplayText;
        if(LGroupData <> LGroupValues[g]) then
        begin
          // calculate totals for the current groupnode

          if(g > 0) then
          begin
            LParentNode               := LGroupNodes[g - 1];
          end else
            LParentNode               := nil;

          LGroupNode                := vtDrillDown.AddChild(LParentNode);
          LGroupNodeData            := vtDrillDown.GetNodeData(LGroupNode);
          LGroupNodeData.DataStr[0] := LGroupData;
          LGroupValues[g]           := LGroupData;
          LGroupNodes[g]            := LGroupNode;
        end;
      end;

      LNode := vtDrillDown.AddChild(LGroupNode);
      LNodeData := vtDrillDown.GetNodeData(LNode);
      for i := 0 to LNumVisible - LNumGrouped - 1 do
      begin
        if(FDrillColumns[i] <> '') then
        begin
          LNodeData.DataStr[i] := qFees.FieldByName(FDrillColumns[i]).DisplayText;
          if(FDrillColumnDataTypes[i] in [ftInteger, ftLargeInt, ftWord, ftFloat, ftCurrency]) then
            LNodeData.DataNum[i] := qFees.FieldByName(FDrillColumns[i]).AsFloat
          else
            LNodeData.DataNum[i] := 0;
        end;
      end;
      qFees.Next();
    end;

    RecurseGenerateTotals(vtDrillDown.RootNode);

    // now generate a grand total at the bottom..
    LNode := vtDrillDown.AddChild(nil);
    LNodeData := vtDrillDown.GetNodeData(LNode);
    LNodeData.DataStr[0] := C_GRANDTOTALTEXT;
    CalcGroupTotals(vtDrillDown.RootNode,LNodeData);

    ResizeColumns(vtDrillDown);
  finally
    vtDrillDown.EndUpdate();
    FreeAndNil(LStrings);
  end;

end;

procedure TfrmFeeList.tsDrillDownShow(Sender: TObject);
begin
  LoadDrillDown();
end;

procedure TfrmFeeList.vtDrillDownGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  LData: PDrillData;
begin
  if(Column > -1) then
  begin
    LData := Sender.GetNodeData(Node);
    if(Assigned(LData) and (Column < C_NUMDATAFIELDS)) then
      CellText := LData.DataStr[Column];
  end;
end;

procedure TfrmFeeList.ResizeColumns(ATree: TVirtualStringTree);
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


procedure TfrmFeeList.vtDrillDownExpanded(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
  ResizeColumns(TVirtualStringTree(Sender));
end;

procedure TfrmFeeList.vtDrillDownCollapsed(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
  ResizeColumns(TVirtualStringTree(Sender));
end;

procedure TfrmFeeList.vtDrillDownPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  LData: PDrillData;
begin
  if(Node.ChildCount > 0) and (Sender.Expanded[Node]) then
    TargetCanvas.Font.Style := [fsBold]
  else
  begin
    LData := Sender.GetNodeData(Node);
    if(LData.DataStr[0] = C_GRANDTOTALTEXT) then
    begin
      TargetCanvas.Font.Style := [fsBold];
      TargetCanvas.Font.Color := clRed;
    end;
  end;
end;

procedure TfrmFeeList.aColumnUpUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtColumns.FocusedNode) and
    Assigned(vtColumns.FocusedNode.PrevSibling);
end;

procedure TfrmFeeList.aColumnUpExecute(Sender: TObject);
begin
  vtColumns.MoveTo(vtColumns.FocusedNode,vtColumns.FocusedNode.PrevSibling,amInsertBefore,False);
end;

procedure TfrmFeeList.aColumnDownUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtColumns.FocusedNode) and
    Assigned(vtColumns.FocusedNode.NextSibling);
end;

procedure TfrmFeeList.aColumnDownExecute(Sender: TObject);
begin
  vtColumns.MoveTo(vtColumns.FocusedNode,vtColumns.FocusedNode.NextSibling,amInsertAfter,False);
end;

procedure TfrmFeeList.tsFeeListHide(Sender: TObject);
begin
  SaveColumnWidths();
end;

procedure TfrmFeeList.SaveColumnWidths();
var
  LData: PColumnData;
  LColumn: TColumn;
  i: Integer;
begin
  for i := 0 to dbgFees.Columns.Count - 1 do
  begin
    LColumn := dbgFees.Columns[i];
    LData := GetColumnData(LColumn.FieldName);
    LData.Width := LColumn.Width;
  end;
end;

{function TfrmFeeList.GetColumnNode(AFieldName: String): PVirtualNode;
var
  LNode: PVirtualNode;
  LData: PColumnData;
begin
  Result := Nil;
  LNode := vtColumns.RootNode.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtColumns.GetNodeData(LNode);
    if(LData.ColumnName = AFieldName) then
    begin
      Result := LNode;
      Exit;
    end;
    LNode := LNode.NextSibling;
  end;
end;
}
end.

