unit TimeSht;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxCheckBox, cxCalendar, cxDBLookupComboBox, cxDropDownEdit,
  cxTextEdit, cxRichEdit, cxSpinEdit, cxCurrencyEdit, cxLabel, cxProgressBar,
  cxMemo, cxDateUtils, dxBarBuiltInMenu, Vcl.ExtCtrls, Uni, ppDB,
  ppDBPipe, ppParameter, ppDesignLayer, raCodMod, ppModule, ppVar, ppCtrls,
  ppBands, ppMemo, ppStrtch, ppRegion, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, cxGridCustomPopupMenu, cxGridPopupMenu, dxBar,
  cxBarEditItem, dxBarExtItems, cxClasses, System.ImageList, Vcl.ImgList, MemDS,
  DBAccess, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxButtons, ppTypes, DateUtils, ppFileUtils, ppIniStorage,
  cxDBEdit, dxCore, dxScrollbarAnnotations;


const
  colCREATED = 0;
  colFILE = 1;
  colAUTHOR = 2;
  colREASON = 3;
  colUNITS = 4;
  colRATE = 5;
  colAMOUNT = 6;
  colTAXCODE = 7;
  colTAX = 8;
  SBARCOUNT = 0;
  SBARTIME = 1;
  SBARBILLUNITS = 2;
  SBARAMOUNT = 3;
  days: array[1..7] of string = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
  WM_REFRESHGRID = WM_USER + 2;
  WM_MYWIP = WM_USER + 3;
  cRed = $000C1DFC;
  cOrange = $003684FA;
  cGreen = $002CCB73;

type
  TcxLookupComboBoxAccess = class(TcxLookupComboBox);

  TfrmTimeSheet = class(TForm)
    dsFeeTmp: TUniDataSource;
    qryScaleCost: TUniQuery;
    qryTmp: TUniQuery;
    qryFeeInsert: TUniQuery;
    sbarStatus: TStatusBar;
    qFeeEarners: TUniQuery;
    qFeeEarnersCODE: TStringField;
    qFeeEarnersNAME: TStringField;
    dsFeeEarners: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    stySelection: TcxStyle;
    qryTaxCode: TUniQuery;
    dsTaxCode: TUniDataSource;
    qryMSearch: TUniQuery;
    qryTempFeeInsert: TUniQuery;
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    qryFeeTmp: TUniQuery;
    ImageList1: TImageList;
    qryBillType: TUniQuery;
    barManager: TdxBarManager;
    btnSave: TdxBarButton;
    btnTimer: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    qryScaleCostsList: TUniQuery;
    dsScaleCostsList: TUniDataSource;
    popGrid: TdxBarPopupMenu;
    popCopyCurrentLine: TdxBarButton;
    popRemove: TdxBarButton;
    popEdit: TdxBarButton;
    popGridDateStamp: TdxBarButton;
    popDescription: TdxBarButton;
    popQuickCode: TdxBarButton;
    popMatter: TdxBarButton;
    qryFeeTempUpdate: TUniQuery;
    styFeeColour: TcxStyle;
    styDefault: TcxStyle;
    tbFeeEnquiry: TdxBarButton;
    qryUnpostedTotals: TUniQuery;
    qryUnPostedAmountTotals: TUniQuery;
    bbFeeBasis: TdxBarButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    bbtnRefresh: TdxBarButton;
    qryTodayTotal: TUniQuery;
    dxBarStatic1: TdxBarStatic;
    qryEmployeeList: TUniQuery;
    dsEmployeeList: TUniDataSource;
    styMatter: TcxStyle;
    styOverhead: TcxStyle;
    styHeld: TcxStyle;
    rptFeeTmp: TppReport;
    plFeeTmpRpt: TppDBPipeline;
    qryFeeTmpRpt: TUniQuery;
    dsFeeTmpRpt: TUniDataSource;
    ppParameterList1: TppParameterList;
    dxBarSubItem1: TdxBarSubItem;
    ppHeaderBand1: TppHeaderBand;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppRegion1: TppRegion;
    ppDBMemo1: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppVariable1: TppVariable;
    ppLabel16: TppLabel;
    raCodeModule1: TraCodeModule;
    Panel1: TPanel;
    chkNoExit: TcxCheckBox;
    lblTotalUnits: TcxLabel;
    btnOk: TcxButton;
    lblTimerDisp: TcxLabel;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    dtpDate: TcxDateEdit;
    cbAuthor: TcxLookupComboBox;
    lblDay: TcxLabel;
    lblNext: TcxLabel;
    lblPrev: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    lblUnPostedMatters: TcxLabel;
    lblUnPostedOverhead: TcxLabel;
    lblUnPostedHeld: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    lblNonBillableMatters: TcxLabel;
    cxLabel2: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    lblPostedMatters: TcxLabel;
    lblPostedOverhead: TcxLabel;
    lblNonBillableAmount: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    Panel3: TPanel;
    dbgrFeeTmp: TcxGrid;
    tvFeeTmp: TcxGridDBTableView;
    tvFeeTmpCREATED: TcxGridDBColumn;
    tvFeeTmpFILEID: TcxGridDBColumn;
    tvFeeTmpTYPE: TcxGridDBColumn;
    tvFeeTmpMATTERDETAILS: TcxGridDBColumn;
    tvFeeTmpAUTHOR: TcxGridDBColumn;
    tvFeeTmpFEE_TEMPLATE: TcxGridDBColumn;
    tvFeeTmpITEMS: TcxGridDBColumn;
    tvFeeTmpUNITS: TcxGridDBColumn;
    tvFeeTmpRATE: TcxGridDBColumn;
    tvFeeTmpAMOUNT: TcxGridDBColumn;
    tvFeeTmpELAPSED: TcxGridDBColumn;
    tvFeeTmpNMATTER: TcxGridDBColumn;
    tvFeeTmpNFEE: TcxGridDBColumn;
    tvFeeTmpUNIT: TcxGridDBColumn;
    tvFeeTmpTAXCODE: TcxGridDBColumn;
    tvFeeTmpBILLTYPE: TcxGridDBColumn;
    tvFeeTmpNew: TcxGridDBTableView;
    tvFeeTmpNewCREATED: TcxGridDBColumn;
    tvFeeTmpNewFILEID: TcxGridDBColumn;
    tvFeeTmpNewTYPE: TcxGridDBColumn;
    tvFeeTmpNewMATTERDETAILS: TcxGridDBColumn;
    tvFeeTmpNewFEE_TEMPLATE: TcxGridDBColumn;
    tvFeeTmpNewREASON: TcxGridDBColumn;
    tvFeeTmpNewITEMS: TcxGridDBColumn;
    tvFeeTmpNewUNITS: TcxGridDBColumn;
    tvFeeTmpNewRATE: TcxGridDBColumn;
    tvFeeTmpNewAMOUNT: TcxGridDBColumn;
    tvFeeTmpNewBILLTYPE: TcxGridDBColumn;
    tvFeeTmpNewNFEE: TcxGridDBColumn;
    lvFeeTmp: TcxGridLevel;
    tvFeeTmpNewAUTHOR: TcxGridDBColumn;
    tvFeeTmpNewNMATTER: TcxGridDBColumn;
    tvFeeTmpNewUNIT: TcxGridDBColumn;
    tvFeeTmpNewTAXCODE: TcxGridDBColumn;
    tvFeeTmpREASON: TcxGridDBColumn;
    dxButtonInsertAbove: TdxBarButton;
    dxbtnDeselectAll: TdxBarButton;
    tvFeeTmpPROCESS: TcxGridDBColumn;
    tvFeeTmpNewPROCESS: TcxGridDBColumn;
    tvFeeTmpUNIQUEID: TcxGridDBColumn;
    tvFeeTmpNewUNIQUEID: TcxGridDBColumn;
    btnRemoveSort: TdxBarButton;
    tvFeeTmpNOTES: TcxGridDBColumn;
    tvFeeTmpNewNOTES: TcxGridDBColumn;
    btnAddRow: TdxBarButton;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    dxBarButton1: TdxBarButton;
    dxBarButtonSave: TdxBarButton;
    procDailyBudget: TUniStoredProc;
    qryDailyTotal: TUniQuery;
    qryMonthlyTotal: TUniQuery;
    cxLabel1: TcxLabel;
    lblDailyBudgetUnits: TcxLabel;
    tvFeeTmptotal_fee_amt_pct: TcxGridDBColumn;
    cbTimeSheetViewByRecorder: TcxCheckBox;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    bbtnCompleteTask: TdxBarButton;
    tvFeeTmpNewIS_TASK: TcxGridDBColumn;
    tvFeeTmpIS_TASK: TcxGridDBColumn;
    tvFeeTmpNewTASK_COMPLETED: TcxGridDBColumn;
    tvFeeTmpTASK_COMPLETED: TcxGridDBColumn;
    styTaskCompColour: TcxStyle;
    styTaskInCompColour: TcxStyle;
    qryGetSeq: TUniQuery;
    tvFeeTmpNeWTIME_CODE: TcxGridDBColumn;
    tvFeeTmpNewTASK_AMOUNT: TcxGridDBColumn;
    cxBarEditItem1: TcxBarEditItem;
    cbShowTasks: TcxBarEditItem;
    cbShowFees: TcxBarEditItem;
    cbShowTime: TcxBarEditItem;
    cbSpecificDate: TcxBarEditItem;
    ppFileNoteRpt: TppReport;
    ppHeaderBand2: TppHeaderBand;
    pplblTransTitle: TppLabel;
    ppLabel18: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    pplblClient: TppLabel;
    ppRegion2: TppRegion;
    ppLabel25: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    pplblFooter: TppLabel;
    ppLine4: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    tmrAutocost: TTimer;
    tvFeeTmpNewELAPSED: TcxGridDBColumn;
    plTmpProcess: TppDBPipeline;
    qryTmpProcess: TUniQuery;
    dsTmpProcess: TUniDataSource;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    pplblMatterDesc: TppLabel;
    ppLine5: TppLine;
    pnlBudgets: TPanel;
    lblTimeToday: TcxLabel;
    lblTimeMonth: TcxLabel;
    lblTimeYear: TcxLabel;
    progbarMyYearlyTotal: TcxProgressBar;
    progBarMyMonthlyTotal: TcxProgressBar;
    progBarMyDailyTotal: TcxProgressBar;
    lblMyDailyBudget: TcxLabel;
    lblMyMonthlyBudget: TcxLabel;
    lblMyYearlyBudget: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrFeeTmpExit(Sender: TObject);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure qryFeeTmp1AfterPost(DataSet: TDataSet);
    procedure qryFeeTmp1AfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryFeeTmpRATEChange(Sender: TField);
    procedure qryFeeTmpUNITSChange(Sender: TField);
    procedure popGridDateStampClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbDescExit(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure btnPrintClick(Sender: TObject);
    procedure btnTimerClick(Sender: TObject);
    procedure tmrAutocostTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Reason1Click(Sender: TObject);
    procedure QuickCode1Click(Sender: TObject);
    procedure cxGrid1DBTableView1REFNOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1REASONPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure tvFeeTmpREFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvFeeTmpUNITSPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbAuthorPropertiesChange(Sender: TObject);
    procedure tvFeeTmpREASONPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvFeeTmpTYPEPropertiesCloseUp(Sender: TObject);
    procedure tvFeeTmpTYPEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvFeeTmpFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure tvFeeTmpFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dtpDatePropertiesChange(Sender: TObject);
    procedure tvFeeTmpFILEIDPropertiesInitPopup(Sender: TObject);
    procedure tvFeeTmpEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure tvFeeTmpFEE_TEMPLATEPropertiesCloseUp(Sender: TObject);
    procedure tvFeeTmpFEE_TEMPLATEPropertiesChange(Sender: TObject);
    procedure tvFeeTmpITEMSPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvFeeTmpFEE_TEMPLATEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvFeeTmpRATEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure CopyCurrentline1Click(Sender: TObject);
    procedure cbShowFeesClick(Sender: TObject);
    procedure tbFeeEnquiryClick(Sender: TObject);
    procedure popGridPopup(Sender: TObject);
    procedure tvFeeTmpEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure bbFeeBasisClick(Sender: TObject);
    procedure tvFeeTmpFILEIDPropertiesEditValueChanged(Sender: TObject);
    procedure bbtnRefreshClick(Sender: TObject);
    procedure tvFeeTmpUNITSPropertiesEditValueChanged(Sender: TObject);
    procedure tvFeeTmpFEE_TEMPLATEPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxDBMemo1Enter(Sender: TObject);
    procedure cxDBMemo1PropertiesChange(Sender: TObject);
    procedure tvFeeTmpREASONPropertiesCloseUp(Sender: TObject);
    procedure tvFeeTmpInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure memoDescriptionEnter(Sender: TObject);
    procedure tvFeeTmpREASONPropertiesPopup(Sender: TObject);
    procedure qryFeeTmpBeforePost(DataSet: TDataSet);
    procedure tvFeeTmpFEE_TEMPLATEPropertiesInitPopup(Sender: TObject);
    procedure tvFeeTmpTYPEPropertiesEditValueChanged(Sender: TObject);
    procedure tvFeeTmpFILEIDPropertiesCloseUp(Sender: TObject);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure popMatterClick(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure lblPrevClick(Sender: TObject);
    procedure memoDescriptionKeyPress(Sender: TObject; var Key: Char);
    procedure tvFeeTmpNewInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure dbgrFeeTmpEnter(Sender: TObject);
    procedure tvFeeTmpColumn1PropertiesChange(Sender: TObject);
    procedure tvFeeTmpREASONPropertiesInitPopup(Sender: TObject);
    procedure tvFeeTmpNewEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonInsertAboveClick(Sender: TObject);
    procedure RichEdit1Enter(Sender: TObject);
    procedure RichEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxbtnDeselectAllClick(Sender: TObject);
    procedure tvFeeTmpNewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AddictDBRichEdit1Enter(Sender: TObject);
    procedure AddictDBRichEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RichEdit1Exit(Sender: TObject);
    procedure tvFeeTmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvFeeTmpEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoveSortClick(Sender: TObject);
    procedure memoDescriptionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure memoDescriptionExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvFeeTmpStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tvFeeTmpNewBILLTYPEStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tvFeeTmpNewAMOUNTPropertiesChange(Sender: TObject);
    procedure tvFeeTmpRATEPropertiesEditValueChanged(Sender: TObject);
    procedure btnAddRowClick(Sender: TObject);
    procedure cbTimeSheetViewByRecorderClick(Sender: TObject);
    procedure tvFeeTmpNewPROCESSHeaderClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure qryFeeTmpAfterEdit(DataSet: TDataSet);
    procedure dxBarButtonSaveClick(Sender: TObject);
    procedure qryFeeTmpNewRecord(DataSet: TDataSet);
    procedure qryFeeTmpUpdateRecord(DataSet: TDataSet; UpdateKind: TUpdateKind;
      var UpdateAction: TUpdateAction);
    procedure tvFeeTmpNewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure bbtnCompleteTaskClick(Sender: TObject);
    procedure tvFeeTmpNewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cbShowFeesPropertiesChange(Sender: TObject);
    procedure cbShowTasksPropertiesChange(Sender: TObject);
    procedure cbShowTasksClick(Sender: TObject);
    procedure cxBarEditItem2Click(Sender: TObject);
    procedure cbShowTimeClick(Sender: TObject);
    procedure cbShowTimePropertiesChange(Sender: TObject);
    procedure cbShowTimePropertiesEditValueChanged(Sender: TObject);
    procedure cbShowFeesPropertiesEditValueChanged(Sender: TObject);
    procedure cbShowTasksPropertiesEditValueChanged(Sender: TObject);
    procedure cbSpecificDatePropertiesChange(Sender: TObject);
    procedure cbSpecificDatePropertiesEditValueChanged(Sender: TObject);
    procedure ppFileNoteRptBeforePrint(Sender: TObject);
    procedure l(DataSet: TDataSet);
    procedure tvFeeTmpNewAUTHORPropertiesEditValueChanged(Sender: TObject);
    procedure tvFeeTmpNewNOTESPropertiesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    FTotalAmount:       currency;
    FTotalUnits:        integer;
    DefaultTax:         string;
    FileID :            string;
    FOrigUnits:         double;
    FLineCopied:        boolean;
    FPopupForm:         TCustomForm;
    FMenuInsert:        boolean;
    FCurrentDateStamp:  TDateTime;
    FUNIQUEID:          integer;
    FDailyBudget:       currency;
    FMonthlyBudget:     currency;
    FYearlyBudget:      currency;
    FDocId:             integer;
    FOrderBy:           string;
    bLocalUpdate:       boolean;
    iUnits:             integer;
    bMatterValidated:   boolean;

//    procedure SetMyWIP;
    function GetEmpDailyBudget: currency;
    function GetEmpMonthlyBudget: currency;
    function GetEmpYearlyBudget: currency;
    function OKtoPost: Boolean;
    procedure CalcAmount;
    procedure CalcTax;
    procedure CalcStatusbar(AElapsedUnits: double);
//    procedure Save;
    function CalcAmount2(iSecs : integer; cRate : currency; sType : string) : currency;
    procedure SaveColumnData;
    procedure LoadColumnData;
    procedure MakeSQL;
    procedure DoBillType(FileId: string);
    procedure CalcUnpostedTotals;
    procedure CalcUnpostedAmountTotals;
    procedure CalcDailyTotal;
    function CheckReqdFields : Boolean;
    procedure ProcessTimeEntry(AUniqueID: integer; AAuthor: string);
    procedure RefreshGrid(var Message: TMessage); message WM_REFRESHGRID;
    procedure SetProcessFlag;
    procedure cbAuthorMouseWheelHandler(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    property DailyBudget: currency read GetEmpDailyBudget write FDailyBudget;
    property MonthlyBudget: currency read GetEmpMonthlyBudget write FMonthlyBudget;
    property YearlyBudget: currency read GetEmpYearlyBudget write FYearlyBudget;
    function GetEmpDailyUnitsBudget(ADate: TDateTime): integer;
    procedure SetBudgetCaption;
    procedure StartStopTimer(APrevUniqueID: integer = -1);
    procedure ProcessTimeSheet(APrevUniqueID: integer = -1);
//    property MyWIP: currency read SetMyWIP write FMyWIP;
    procedure SetMyWIP(var Message: TMessage); message WM_MYWIP;
  public
    { Public declarations }
  end;

implementation

uses
  AxiomData, MiscFunc, MSearch, Desktop, ScaleCosts, citfunc,
  Variants, FeeEnquiry, cxSchedulerUtils, SetFeeBasis, cxLookupDBGrid,
  cxGridDBDataDefinitions, Matters, HelpForm, dxSpellCheckerCore,
  dxSpellChecker, QuickCodeSearch;

{$R *.DFM}


var
{
  Modified 25.10.2002 GG
  Removed compiler hint
  iActiveTimer : integer;
}
  iMinsPerUnit :     integer;
  iRecords :         integer;
  cHelpMsg :         string;
  FElapsedUnits:     double;
  ClosingForm:       boolean;


procedure TfrmTimeSheet.cbAuthorMouseWheelHandler(Sender: TObject; Shift: TShiftState;
                                                  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
   Handled := True;
end;

procedure TfrmTimeSheet.FormShow(Sender: TObject);
begin
//  Self.Caption := Self.Caption + ' - ' + dmAxiom.UserName; //  dmAxiom.EntityName;

//  frmDesktop.dxBarWindowList.Items.AddObject(Self.Caption, Self);

  // 14/12/04 TH - To allow for viewing of time sheet entries from other
  // employees
  // Query is now opened in the cbAuthor.OnChange event
  //qryFeeTmp.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
  //qryFeeTmp.Open;
  // iRecords := qryFeeTmp.RecordCount;



{  dmAxiom.qrySql.Close();
  dmAxiom.qrySql.SQL.Text := 'SELECT M.FILEID,M.TITLE,M.SHORTDESCR ' +
              'FROM MATTER M,OPENLIST O ' +
              'WHERE O.AUTHOR = :P_Author ' +
              'AND O.TYPE = :P_Type ' +
              'AND O.CODE = M.FILEID ' +
              'ORDER BY O.IDX';
  dmAxiom.qrySql.ParamByName('P_TYPE').AsString := 'MATTER';
  dmAxiom.qrySql.ParamByName('P_Author').AsString := dmAxiom.UserID;

  dmAxiom.qrySql.Open();

  while not dmAxiom.qrySql.EOF do
  begin
    TcxComboBoxProperties(tvFeeTmpREFNO.Properties).Items.Add(
        dmAxiom.qrySql.FieldByName('FILEID').AsString + ' ' +
        dmAxiom.qrySql.FieldByName('TITLE').AsString);
    // mnuNewItem.OnClick := LoadMatter;
    dmAxiom.qrySql.Next();
  end;
  TcxComboBoxProperties(tvFeeTmpREFNO.Properties).Items.Add('(Search)');  }
//   dtpDate.Properties.MaxDate := Date + 180;
//   dtpDate.Properties.DateOnError := deToday;
end;

procedure TfrmTimeSheet.btnAddRowClick(Sender: TObject);
var
   bEnabled,
   btimerWasOn:   boolean;
   aBillType:  string;
   I:          string;
   tv:         TcxGridDBTableView;
begin
   try
      btimerWasOn := False;
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      lblTimerDisp.Visible := True;
      if tmrAutocost.Enabled then
      begin
         btimerWasOn := True;
         btnTimer.Click;
      end;
      FElapsedUnits := 0;
      tv := tvFeeTmpNew;
      tv.DataController.Append;
      if btimerWasOn = True then
         btnTimer.Click;
   finally
      tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   end;
end;

procedure TfrmTimeSheet.btnCancelClick(Sender: TObject);
begin
   tvFeeTmpNew.OnFocusedRecordChanged := nil;
{  if tmrAutocost.Enabled then
    MessageDlg('You must stop autocosting before you exit',mtWarning, [mbOK], 0)
  else
    if MsgAsk('Are you sure you want to exit Fee Batch?') = mrYes then   }
   Self.Close;
//   RemoveFromDesktop(Self);
end;

function TfrmTimeSheet.OKtoPost : Boolean;
var
  sTmp : String;
  bOKtoPost : boolean;
begin
  bOKtoPost := True;
  sTmp := '';
  if tmrAutocost.Enabled then
    sTmp := 'You must stop autocosting before you can process this batch';

  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Fee Batch details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False
  end;
  OKtoPost := bOKtoPost;
end;

procedure TfrmTimeSheet.ppFileNoteRptBeforePrint(Sender: TObject);
begin
  pplblFooter.Caption := 'Fee entry dated ' + FormatDateTime('dd/mm/yyyy hh:nn:ss',qryTmpProcess.FieldByName('Created').AsDateTime) +
                         ' entered for ' + cbAuthor.EditValue + ' (' + cbAuthor.EditText+')';
  pplblTransTitle.Caption := dmAxiom.EntityName;
  pplblClient.Caption := TableString('MATTER','NMATTER',qryTmpProcess.FieldByName('nmatter').AsInteger,'TITLE');
  pplblMatterDesc.Caption := TableString('MATTER','NMATTER',qryTmpProcess.FieldByName('nmatter').AsInteger,'SHORTDESCR');
end;

function TfrmTimeSheet.CheckReqdFields: Boolean;
var
   bOKtoPost: boolean;
begin
   bOKtoPost := False;
   bOKtoPost := CheckReqFieldsNew('FEETMP',qryFeeTmp);
   Result := bOKtoPost;
end;

procedure TfrmTimeSheet.btnOKClick(Sender: TObject);
begin
   try
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      ProcessTimeSheet();
   finally
      if ClosingForm = False then
         tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   end;
end;

procedure TfrmTimeSheet.ProcessTimeSheet(APrevUniqueID: integer = -1);
   procedure UpdateElapsed;
   var
      tv:                     TcxGridDBTableView;
      Data:                   TcxCustomDataController;
      tView:                  TcxGridViewData;
      I,
      iElapsed,
      iUnique:                integer;
      ADataSet:               TDataSet;
      iUnits:                 double;
   begin
      tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
      Data := tv.DataController;
      tView := tv.ViewData;
      ADataSet := Tv.DataController.DataSet;
      if (Data.RowCount > 0) then
      begin
         try
            tv.BeginUpdate();
            for I := 0 to Data.RecordCount - 1 do
            begin
               tView.Records[I].Focused  := True;
               if VarIsNull(tView.GetRecordByIndex(i).Values[tvFeeTmpNewNFEE.Index]) then
               begin
                  iUnique := tView.GetRecordByIndex(I).Values[tvFeeTmpNewUNIQUEID.Index];
                  qryTmp.Close;
                  qryTmp.SQL.Text := 'select elapsed, units from  feetmp where uniqueid = :p_uniqueid and nvl(elapsed,0) > 0' ;
                  qryTmp.ParamByName('p_uniqueid').AsInteger := iUnique;
                  qryTmp.Open;
                  if not qryTmp.Eof then
                  begin
                     iUnits := qryTmp.FieldByName('UNITS').AsFloat;
                     iElapsed := qryTmp.FieldByName('ELAPSED').AsInteger;
                     qryTmp.Close;
                     if (iElapsed <> 0) then
                     begin
                        if ADataset.State <> dsEdit then
                           ADataset.Edit;
                        ADataSet.FieldByName('UNITS').AsFloat := iUnits;
                        ADataSet.FieldByName('ELAPSED').AsInteger := iElapsed;
                     end;
                  end;
               end;
            end;
            try
               if ADataSet.State <> dsBrowse then
                  ADataSet.Post;
            except
               raise;
            end;
         finally
            tv.EndUpdate;
         end;
      end;
   end;
var
   LRecCount,
   Row,
   ARowIndex,
   iCtr:                   integer;
   tv:                     TcxGridDBTableView;
   Data:                   TcxCustomDataController;
   DC:                     TcxGridTableController;
   tView:                  TcxGridViewData;
   bContinue,
   bAlreadyPosted,
   bPostingFailed:         Boolean;
   ATimeType,
   AReason,
   ANFee,
   AUniqueID,
   AFileID,
   bSelected:              variant;
   lsMattersNotProcessed:  TStringList;
begin
   if (tmrAutocost.Enabled = True) then
      btnTimer.Click;  // tmrAutocost.Enabled := False;

   if (APrevUniqueID <> -1) and (dmAxiom.auto_process_timesheet = 'Y') then
   begin
      ProcessTimeEntry(APrevUniqueID, cbAuthor.EditValue);
   end
   else
   begin
      tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
      Data := tv.DataController;
      if (Data.RowCount > 0) then
      begin
 {        if dmAxiom.TimeSheetViewLayout <> 'Classic Grid' then
         begin
           Data.BeginUpdate();
           // clean up grid prior to doing anything.
           for Row := 0 to tv.DataController.RecordCount - 1 do
           begin
              tv.DataController.FocusedRowIndex := Row;
              if (tv.DataController.GetDisplayText(Row, tvFeeTmpNewTYPE.Index) = 'O') and
                 (tv.DataController.GetDisplayText(Row, tvFeeTmpNewFILEID.Index).IsEmpty) and
                 (tv.DataController.GetDisplayText(Row, tvFeeTmpNewREASON.Index) = '')
                { (tv.DataController.GetDisplayText(Row,tvFeeTmpREASON) = '')
                 (tv.DataController.GetDisplayText(Row,tvFeeTmpREASON) = '')
                 (tv.DataController.GetDisplayText(Row,tvFeeTmpREASON) = '') } {then
                 tv.DataController.DeleteFocused;
           end;
           Data.Endupdate;
           tv.DataController.FocusedRowIndex := 0;
         end;   }

         Screen.Cursor := crSQLWait;
         if tv.NewItemRow.Visible then
         begin
            if tvFeeTmp.Controller.IsNewItemRowFocused then
            begin
               Row := tvFeeTmp.Controller.FocusedRowIndex;
               if VarIsNull(tvFeeTmp.DataController.GetValue(Row, tvFeeTmpTYPE.Index)) and
                  VarIsNull(tvFeeTmp.DataController.GetValue(Row, tvFeeTmpCREATED.Index)) and
                  VarIsNull(tvFeeTmp.DataController.GetValue(Row, tvFeeTmpFILEID.Index)) and
                  VarIsNull(tvFeeTmp.DataController.GetValue(Row, tvFeeTmpFEE_TEMPLATE.Index)) then
               begin
                  try
                     tvFeeTmp.DataController.Cancel;
                     qryFeeTmp.Cancel;
                  except
                     //
                  end;
//                  Abort;
               end
               else
               if VarIsNull(tvFeeTmp.DataController.GetValue(Row, tvFeeTmpTYPE.Index)) then
               begin
                  qryFeeTmp.FieldByName('TIME_TYPE').AsString := 'O';
                  qryFeeTmp.FieldByName('MATLOCATE').AsString := 'Overhead Time';
               end;
//          AES 13-03-2014
{               if not VarIsNull(tvFeeTmp.DataController.GetValue(Row, tvFeeTmpREASON.Index)) then
               begin
                  if RichEdit1.Modified then
                  begin
                     if qryFeeTmp.State = dsBrowse then
                        qryFeeTmp.Edit;
//                     qryFeeTmp.FieldByName('REASON').AsString := Trim(RichEdit1.Lines.Text);
                     if SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y' then
                        qryFeeTmp.FieldByName('REASON').AsString := UpperCase(Trim(RichEdit1.Lines.Text))
                     else
                        qryFeeTmp.FieldByName('REASON').AsString := Trim(RichEdit1.Lines.Text);
                     qryFeeTmp.Post;
                     RichEdit1.Modified := False;
                  end
                  else
                     qryFeeTmp.Post;
               end;  }
            end;
         end;

//         UpdateElapsed;

         try
            if ((qryFeeTmp.Active = True) and (qryFeeTmp.State <> dsBrowse)) then
               qryFeeTmp.Post;
         except
           //
         end;

         //09/10/17 AES - moved the following line from above.
         UpdateElapsed;

         bContinue := True;

//         tv.DataController.Cancel;

//         qryTempFeeInsert.Close;
         // 20/12/04 TH - Using AUTHOR to access feetmp records
         //qryTempFeeInsert.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
//         qryTempFeeInsert.ParambyName('AUTHOR').AsString := String(cbAuthor.EditValue);
//         qryTempFeeInsert.ParambyName('CREATED').AsDateTime := dtpDate.Date;
//         qryTempFeeInsert.Open;

         if (boolean(cbShowTime.EditValue) and boolean(cbSpecificDate.EditValue) and (boolean(cbShowFees.EditValue)) and
             (boolean(cbShowTasks.EditValue))) then
            bContinue := (MsgAsk('You have the "Show All Fees", "Show All Time", "Show All Tasks" and the "Show All Dates" option selected.'+
                         ' This will slow down the processing.'+ chr(13)+ 'Would you like to continue?') = mrYes);

         if bContinue then
         begin
            if OKtoPost then
            begin
               try
                  //test if in middle of transaction
                  if dmAxiom.uniInsight.InTransaction then
                     dmAxiom.uniInsight.Rollback;

                  dmAxiom.uniInsight.StartTransaction;
                  Data := tv.DataController;
                  DC := tv.Controller;
                  tView := tv.ViewData;

                  tv.BeginUpdate;
                  try
                     bPostingFailed := False;
                     LRecCount := 0;
                     // check if any rows selected
                     bSelected := False;
                     for iCtr := 0 to Data.RecordCount - 1 do
                     begin
                        tView.Records[iCtr].Focused  := True;
                        try
                           if VarIsNull(tView.GetRecordByIndex(iCtr).Values[0]) then
                              bSelected := False
                           else
                              bSelected := tView.GetRecordByIndex(iCtr).Values[0];
                        except
                           bSelected := False;
                        end;
                        if bSelected then Break;
                     end;
                  finally
                     tv.endupdate;
                  end;

                  if bSelected then
                  begin
                     try
                        lsMattersNotProcessed := TStringList.Create;
                        tv.BeginUpdate;
                        for iCtr := 0 to Data.RecordCount - 1 do
                        begin
                           bSelected := False;
                           tView.Records[iCtr].Focused  := True;

                           try
                              if VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpPROCESS.Index]) then
                                 bSelected := False
                              else
                                 bSelected := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpPROCESS.Index];
                           except
                              bSelected := False;
                           end;

                           if bSelected then
                           begin
                              bAlreadyPosted := False;
                              with qryFeeTmp do
                              begin
//                                 First;
                                 AReason     := null;
                                 AFileID     := null;
                                 ANFee       := null;
                                 ATimeType   := null;
                                 AUniqueID   := null;
                                 if dmAxiom.TimeSheetViewLayout = 'Classic Grid' then
                                 begin
                                    ATimeType := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpTYPE.Index];
                                    ANFee := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNFEE.Index];
                                    AUniqueID := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpUNIQUEID.Index];
                                    if (tView.GetRecordByIndex(iCtr).Values[tvFeeTmpREASON.Index] <> '') then
                                       AReason :=  tView.GetRecordByIndex(iCtr).Values[tvFeeTmpREASON.Index];
                                    if (tView.GetRecordByIndex(iCtr).Values[tvFeeTmpFILEID.Index] <> '') then
                                       AFileID := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpFILEID.Index];
                                 end
                                 else
                                 begin
                                    ATimeType := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewTYPE.Index];
                                    ANFee := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewNFEE.Index];
                                    AUniqueID := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewUNIQUEID.Index];
                                    if (VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewREASON.Index]) = False) then
                                       AReason :=  tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewREASON.Index];
                                    if (VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewFILEID.Index]) = False) then
                                       AFileID := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewFILEID.Index];
                                 end;

                                 if (((ATimeType = 'M') or (ATimeType = 'O')) and
                                    (VarIsNull(ANFee))) then
                                 begin
                                    // last check to make sure time entry was not posted by someone else or
                                    // by another instance of Insight.
                                    with dmAxiom.qryTmp do
                                    begin
                                       close;
                                       SQL.Text := 'select nvl(nfee,-1) from feetmp where uniqueid = :nuniqueid';
                                       Prepare;
                                       ParamByName('nuniqueid').AsString := AUniqueID;  //Data.Values[iCtr,18];
                                       Open;
                                       DC.GridView.Styles.Selection := styDefault;
                                       if Fields.Fields[0].AsInteger > 0 then
                                       begin
                                          if qryFeeTmp.State = dsBrowse then
                                             qryFeeTmp.Edit;
                                          qryFeeTmp.FieldByName('nfee').AsInteger := Fields.Fields[0].AsInteger;
                                          DC.GridView.Styles.Selection := styFeeColour;
                                          bAlreadyPosted := True;
                                       end;
                                       Close;
                                    end;
                                    if (not bAlreadyPosted) then
                                    begin
                                       if CheckReqdFields then
                                    begin
                                       if VarIsNull(AFileID) and (ATimeType = 'M') then
                                       begin
                                           MsgErr('A Matter needs to be selected when using type M');
                                           Break;
                                       end
                                       else
                                       begin
                                          if ((VarIsNull(AFileID)) and (ATimeType = 'O') AND
                                             (VarIsNull(AReason))) then
                                          begin
                                              break;
                                          end
                                          else
                                          begin
                                             if ((VarIsNull(AFileID)) and (ATimeType = 'O') AND
                                                (not VarIsNull(AReason))) then
                                             begin
                                                ProcessTimeEntry(AUniqueID, cbAuthor.EditValue);
                                                Inc(LRecCount);
                                             end
                                             else
                                             if ((MatterIsCurrent(AFileID)) and
                                                (IsMatterArchived(AFileID) = False)) then
                                             begin
                                                if (not VarIsNull(ATimeType)) and (ATimeType = 'M') then
                                                begin
                                                   ProcessTimeEntry(AUniqueID, cbAuthor.EditValue);
                                                   Inc(LRecCount);
                                                end;
                                             end
                                             else
                                             begin
//                                                tv.EndUpdate;
                                                lsMattersNotProcessed.Add('Matter: ' + AFileID + ' - not found or is closed');
                                             end;
                                          end;
                                       end
                                    end

                                      { if CheckReqdFields then
                                       begin
                                          if (VarIsNull(AFileID) = False) and ((ATimeType = 'O') or (ATimeType = 'M')) AND
                                             (VarIsNull(AReason) = False) then
                                          begin
                                             if (MatterIsCurrent(AFileID)) and
                                                (IsMatterArchived(AFileID) = False) then
                                             begin
                                                ProcessTimeEntry(AUniqueID, cbAuthor.EditValue);
                                                Inc(LRecCount);
                                             end;
                                          end
                                          else
                                          begin
                                             tv.EndUpdate;
//                                             raise Exception.Create('Matter: ' + FieldByName('FILEID').AsString + ' is closed');
                                             MsgErr('Matter: ' + FieldByName('FILEID').AsString + ' not found or is closed');
                                             tv.BeginUpdate();
                                          end;
                                       end }
                                       else
                                       begin
                                          bPostingFailed := True;
                                          dmAxiom.uniInsight.Rollback;
                                          tv.EndUpdate;
                                          exit;
                                       end;
                                    end;
                                 end;
                              end;
                           end;
                        end;
                     finally
                        tv.EndUpdate;
                        if lsMattersNotProcessed.Count > 0 then
                           MsgErr('The following time entries were not processed: ' + chr(13) + lsMattersNotProcessed.Text );
                        dmAxiom.qryDeleteOrphans.ParamByName('author').AsString := cbAuthor.EditValue;
                        dmAxiom.qryDeleteOrphans.Prepare;
                        dmAxiom.qryDeleteOrphans.Execute;
                        FreeAndNil(lsMattersNotProcessed);
                     end;
                  end
                  else
                  begin
                     dmAxiom.qryDeleteOrphans.ParamByName('author').AsString := cbAuthor.EditValue;
                     dmAxiom.qryDeleteOrphans.Prepare;
                     dmAxiom.qryDeleteOrphans.Execute;

                     try
                        tv.BeginUpdate;
                        MakeSql();
                     finally
                        tv.EndUpdate;
                     end;

                     try
                        lsMattersNotProcessed := TStringList.Create;
                        tv.BeginUpdate;
                        for iCtr := 0 to Data.RecordCount - 1 do
                        begin
                           AReason     := null;
                           AFileID     := null;
                           ANFee       := null;
                           ATimeType   := null;
                           AUniqueID   := null;
                           tView.Records[iCtr].Focused  := True;
                           if dmAxiom.TimeSheetViewLayout = 'Classic Grid' then
                           begin
                              ATimeType := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpTYPE.Index];
                              ANFee := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNFEE.Index];
                              AUniqueID := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpUNIQUEID.Index];
                              if (not VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpREASON.Index])) then
                                 AReason :=  tView.GetRecordByIndex(iCtr).Values[tvFeeTmpREASON.Index];
                              if (not VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpFILEID.Index])) then
                                 AFileID := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpFILEID.Index];
                           end
                           else
                           begin
                              ATimeType := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewTYPE.Index];
                              ANFee := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewNFEE.Index];
                              AUniqueID := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewUNIQUEID.Index];
                              if (not VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewREASON.Index])) then
                                 AReason :=  tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewREASON.Index];
                              if (not VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewFILEID.Index])) then
                                 AFileID := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewFILEID.Index];
                           end;

                           if VarIsNull(ANFee) then
                           begin
                              if (((ATimeType = 'O') or (ATimeType = 'M')) AND
                                 (not VarIsNull(AReason))) then
                              begin
                                 if CheckReqdFields then
                                 begin
                                    if VarIsNull(AFileID) and (ATimeType = 'M') then
                                    begin
                                        MsgErr('A Matter needs to be selected when using type M');
                                        Break;
                                    end
                                    else
                                    begin
                                       if ((VarIsNull(AFileID)) and (ATimeType = 'O') AND
                                          (VarIsNull(AReason))) then
                                       begin
                                           break;
                                       end
                                       else
                                       begin
                                          if ((VarIsNull(AFileID)) and (ATimeType = 'O') AND
                                             (not VarIsNull(AReason))) then
                                          begin
                                             ProcessTimeEntry(AUniqueID, cbAuthor.EditValue);
                                             Inc(LRecCount);
                                          end
                                          else
                                          if ((MatterIsCurrent(AFileID)) and
                                             (IsMatterArchived(AFileID) = False)) then
                                          begin
                                             if (not VarIsNull(ATimeType)) and (ATimeType = 'M') then
                                             begin
                                                ProcessTimeEntry(AUniqueID, cbAuthor.EditValue);
                                                Inc(LRecCount);
                                             end;
                                          end
                                          else
                                          begin
//                                             tv.EndUpdate;
//                                             MsgErr('Matter: ' + AFileID + ' not found or is closed');
                                             lsMattersNotProcessed.Add('Matter: ' + AFileID + ' - not found or is closed');
//                                             tv.BeginUpdate();
                                          end;
                                       end;
                                    end
                                 end
                                 else
                                    begin
                                       bPostingFailed := True;
                                       if dmAxiom.uniInsight.InTransaction then
                                          dmAxiom.uniInsight.Rollback;
                                       tv.EndUpdate;
                                       exit;
                                    end
                              end;
                           end;
                        end;
                     finally
                        if lsMattersNotProcessed.Count > 0 then
                           MsgErr('The following time entries were not processed: ' + chr(13) + lsMattersNotProcessed.Text );
                        tv.EndUpdate;
                        lsMattersNotProcessed.Free;
                     end;

            {         with qryFeeTmp do
                     begin
                        First;
                        while not EOF and (not bPostingFailed) do
                        begin
                           if FieldByName('NFEE').IsNull then
                           begin
                              if ((FieldByName('TIME_TYPE').AsString = 'M') OR
                                 (FieldByName('TIME_TYPE').AsString = 'O')) and
                                 (not FieldByName('REASON').IsNull) then
                              begin
                                 if CheckReqdFields then
                                 begin
                                    if (FieldByName('FILEID').IsNull) and (FieldByName('TIME_TYPE').AsString = 'M') then
                                    begin
                                       MsgErr('A Matter needs to be selected when using type M');
                                       Break;
                                    end
                                    else
                                    if ((FieldByName('FILEID').IsNull) and (FieldByName('TIME_TYPE').AsString = 'O') AND
                                       (FieldByName('REASON').IsNull)) then
                                     begin
                                        Next;
                                        Continue;
                                     end
                                    else if ((FieldByName('FILEID').IsNull) and (FieldByName('TIME_TYPE').AsString = 'O') AND
                                       (FieldByName('REASON').IsNull = False)) then
                                    begin
                                       if (FieldByName('TIME_TYPE').AsString <> '') then
                                       begin
                                          ProcessTimeEntry(FieldByName('uniqueid').AsInteger, cbAuthor.EditValue);
                                          Inc(LRecCount);
                                       end;
                                    end
                                    else if ((MatterIsCurrent(FieldByName('FILEID').AsString)) and
                                       (IsMatterArchived(FieldByName('FILEID').AsString) = False)) then
                                    begin
                                       if ((FieldByName('TIME_TYPE').AsString <> '')) then
                                       begin
                                          ProcessTimeEntry(FieldByName('uniqueid').AsInteger, cbAuthor.EditValue);
                                          Inc(LRecCount);
                                       end;
                                    end
                                    else
                                    begin
//                                       tv.EndUpdate;
//                                        raise Exception.Create('Matter: ' + FieldByName('FILEID').AsString + ' not found or is closed');
                                        MsgErr('Matter: ' + FieldByName('FILEID').AsString + ' not found or is closed');
                                    end;
                                 end
                                 else
                                 begin
                                    bPostingFailed := True;
//                                    if qryFeeTmp.UpdatesPending then
//                                       qryFeeTmp.CancelUpdates;
                                    dmAxiom.uniInsight.Rollback;
//                                    tv.EndUpdate;
                                    exit;
                                 end;
                              end;
                           end;
                           Next;
                        end;
                     end;}
                  end;
//                  CheckLedgerTotal;
               except
                  on E: Exception do
                  begin
//                     if qryFeeTmp.UpdatesPending then
//                        qryFeeTmp.CancelUpdates;
                     tv.EndUpdate;
                     if (dmAxiom.uniInsight.InTransaction = True) then
                        dmAxiom.uniInsight.Rollback;
                     bPostingFailed := True;
                     Screen.Cursor := crDefault;
                     MsgErr('Fee Batch posting failed:'#13#13 + E.Message);
                  end;
               end;

               if not bPostingFailed then
               begin
                  dmAxiom.uniInsight.Commit;
//         ***************************************************
//           weird.  is this doublely needed   AES 22/01/2010
//                  if qryFeeTmp.UpdatesPending then
//                     qryFeeTmp.CancelUpdates;
//         ***************************************************
//                 qryFeeTmp.Open;
                  // 20/12/04 TH - Using AUTHOR to access feetmp records
                  //qryFeeTmp.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
//                 qryFeeTmp.ParambyName('AUTHOR').AsString := dmAxiom.UserId;
//                 qryFeeTmp.Open;
                  Screen.Cursor := crDefault;
                  Application.ProcessMessages;
                  if LRecCount = 0 then
                     MsgInfo('There were no Time entrie(s) to process.  This could be due to the filter settings being used.'+ chr(13)+' Please check that the filter settings are set correctly.')
                  else
                     MsgInfo(IntToStr(LRecCount) + ' Time entrie(s) processed.');
                  if (not chkNoExit.Checked) then
                  begin
                     Self.Close;
                  end
                  else
                     MakeSQL;
               end;
            end;
         end;
      end;
   end;
end;

procedure TfrmTimeSheet.ProcessTimeEntry(AUniqueID: integer; AAuthor: string);
var
   nFee,
   ANewDocName,
   AParsedDocName,
   AParsedDir:        string;
   dAmount,
   dAmountTask: double;
begin
   try
      with qryTmpProcess do
      begin

         SQL.Text := 'select * from feetmp where uniqueid = :uniqueid';
         ParamByName('uniqueid').AsInteger := AUniqueID;
         Open;

         //AES 24-Nov-2017 added additional test prior to processing time entry
         if (qryTmpProcess.FieldByName('NFEE').IsNull = True) then
         begin
            nFee := dmAxiom.GetSeqNumber('SQNC_NFEE');

//            if FieldByName('START_DATE').IsNull then
            qryFeeInsert.ParamByName('CREATED').AsDateTime := FieldByName('CREATED').AsDateTime;

//            else
//               qryFeeInsert.ParamByName('CREATED').AsDateTime := FieldByName('START_DATE').AsDateTime;
            qryFeeInsert.ParamByName('DESCR').AsString := Trim(FieldByName('REASON').AsString);
            qryFeeInsert.ParamByName('UNITS').AsFloat := FieldByName('UNITS').AsFloat;
            if FieldByName('UNIT').AsString <> '' then
            begin
               qryFeeInsert.ParamByName('UNIT').AsString := FieldByName('UNIT').AsString;
               qryFeeInsert.ParamByName('TASK_AMOUNT').AsCurrency := FieldByName('TASK_AMOUNT').AsCurrency;
               if iMinsPerUnit > 0 then
                  qryFeeInsert.ParamByName('MINS').AsFloat := FieldByName('UNITS').AsFloat * iMinsPerUnit
               else
                  qryFeeInsert.ParamByName('MINS').AsFloat := FieldByName('UNITS').AsFloat;
            end
            else
            begin
              if iMinsPerUnit > 0 then
                begin
                   qryFeeInsert.ParamByName('MINS').AsFloat := FieldByName('UNITS').AsFloat * iMinsPerUnit;
                   qryFeeInsert.ParamByName('UNIT').AsString := 'Units';
                end
                else
                begin
                   qryFeeInsert.ParamByName('MINS').AsFloat := FieldByName('UNITS').AsFloat;
                   qryFeeInsert.ParamByName('UNIT').AsString := 'Mins';
                end;
            end;
            qryFeeInsert.ParamByName('NFEE').AsString := nFee;
            qryFeeInsert.ParamByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
            qryFeeInsert.ParamByName('RATE').AsFloat := FieldByName('RATE').AsCurrency;
            qryFeeInsert.ParamByName('NMATTER').Clear;
            qryFeeInsert.ParamByName('NCLIENT').Clear;
            qryFeeInsert.ParamByName('PARTNER').Clear;
            qryFeeInsert.ParamByName('FILEID').Clear;
            if FieldByName('FILEID').IsNull = False then
            begin
               qryFeeInsert.ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NMATTER');
               qryFeeInsert.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NCLIENT');
               qryFeeInsert.ParamByName('PARTNER').AsString := MatterString(FieldByName('FILEID').AsString, 'PARTNER');
               qryFeeInsert.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
            end;
            qryFeeInsert.ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
            qryFeeInsert.ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', AAuthor, 'DEPT');
            if FieldByName('FILEID').AsString <> '' then
                qryFeeInsert.ParamByName('TAXCODE').AsString := matterString(FieldByName('FILEID').AsString,'FEE_TAX_BASIS')
            else
                qryFeeInsert.ParamByName('TAXCODE').AsString :=  dmAxiom.DefaultTax;
            dAmount := FieldByName('AMOUNT').AsCurrency;
            qryFeeInsert.ParamByName('TAX').AsFloat := TaxCalc(dAmount, 'FEE', qryFeeInsert.ParamByName('TAXCODE').AsString, FieldByName('CREATED').AsDateTime);
            qryFeeInsert.ParamByName('AMOUNT').AsFloat := dAmount;
            qryFeeInsert.ParamByName('VALUE').AsFloat := dAmount;
            qryFeeInsert.ParamByName('DISCOUNT').AsFloat := 0;
            qryFeeInsert.ParamByName('TIME_TYPE').AsString := FieldByName('TIME_TYPE').AsString;
            qryFeeInsert.ParamByName('ITEMS').AsInteger := FieldByName('ITEMS').AsInteger;
            qryFeeInsert.ParamByName('LABELCOLOUR').AsInteger := $000C1DFC;  //EventLabelColors[5];  RED
            qryFeeInsert.ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', AAuthor, 'TYPE');
            qryFeeInsert.ParamByName('PROGRAM_NAME').AsString := 'Time Sheet';
            qryFeeInsert.ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;
            qryFeeInsert.ParamByName('EMPCODE').AsString := FieldByName('EMPCODE').AsString;
            qryFeeInsert.ParamByName('START_DATE').AsDateTime := FieldByName('START_DATE').AsDateTime;
            qryFeeInsert.ParamByName('END_DATE').AsDateTime := FieldByName('END_DATE').AsDateTime;
            qryFeeInsert.ParamByName('ITEM_AMOUNT').AsCurrency := FieldByName('ITEM_AMOUNT').AsCurrency;
            qryFeeInsert.ParamByName('UNIT').AsString := FieldByName('UNIT').AsString;
            qryFeeInsert.ParamByName('PROCESSING_UNIT').AsString := 'TimeSheet';
            dAmount := FieldByName('TASK_AMOUNT').AsCurrency;
            qryFeeInsert.ParamByName('TASK_TAX').AsFloat := TaxCalc(dAmount, 'FEE', qryFeeInsert.ParamByName('TAXCODE').AsString, FieldByName('CREATED').AsDateTime);

//            if FieldByName('BillType').IsNull then
//                FieldByName('BillType').AsString := 'Billable';
            if FieldByName('TIME_TYPE').AsString = 'O' then
               qryFeeInsert.ParamByName('BILLTYPE').AsString := 'NonBillable'
            else
            begin
               if FieldByName('BillType').IsNull then
                  qryFeeInsert.ParamByName('BILLTYPE').AsString := 'Billable'
               else
                  qryFeeInsert.ParamByName('BILLTYPE').AsString := FieldByName('BillType').AsString;
            end;

            qryFeeInsert.ParamByName('TASK').AsString := FieldByName('FEE_TEMPLATE').AsString;
            qryFeeInsert.ParamByName('NOTES').AsString := FieldByName('NOTES').AsString;
            qryFeeInsert.ExecSQL;

            MatterUpdate(qryFeeInsert.ParamByName('NMATTER').AsInteger, 'UNBILL_FEES', dAmount + FieldByName('TAX').AsCurrency);

            qryFeeTempUpdate.ParamByName('nfee').AsString := nFee;
            qryFeeTempUpdate.ParamByName('labelcolour').AsInteger := $000C1DFC;   //EventLabelColors[5];   RED
            qryFeeTempUpdate.ParamByName('uniqueid').AsInteger := FieldByName('UNIQUEID').AsInteger;

            if ((dmAxiom.Fee_file_notes = 'Y') and (not FieldByName('NOTES').IsNull)) then
            begin
               ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\File Note - ' + nfee + '_' + AAuthor + '.pdf';
               AParsedDocName := ParseMacros(ANewDocName, FieldByName('NMATTER').AsInteger);
               AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
               // check directory exists, if not create it
               if not DirectoryExists(AParsedDir) then
                  ForceDirectories(AParsedDir);

               ppFileNoteRpt.AllowPrintToFile := True;
               ppFileNoteRpt.ShowPrintDialog := False;
               ppFileNoteRpt.DeviceType := dtPDF;
               ppFileNoteRpt.PDFSettings.OpenPDFFile := False;
               ppFileNoteRpt.TextFileName := AParsedDocName;

               try
                  ppFileNoteRpt.Print;
               finally
                  SaveFileNotesToDoc(qryTmpProcess.FieldByName('CREATED').AsDateTime, qryTmpProcess.FieldByName('NOTES').AsString,
                                     qryTmpProcess.FieldByName('REASON').AsString,
                                     qryTmpProcess.FieldByName('FILEID').AsString, qryTmpProcess.FieldByName('AUTHOR').AsString,
                                     AParsedDocName, StrToInt(nFee));
               end;
            end;

            qryFeeTempUpdate.ExecSQL;
            Close;
         end;
      end;
   except
      on e:exception do
         raise exception.create(e.message + #13+#10
               + 'Error processing Time Sheet.');
   end;
end;

procedure TfrmTimeSheet.CalcDailyTotal;
begin
   try
      qryTodayTotal.Close;
      qryTodayTotal.ParamByName('created').AsDate := dtpDate.Date;
      qryTodayTotal.ParamByName('author').AsString := cbAuthor.EditValue;
      qryTodayTotal.Open;
      lblTotalUnits.Caption := ' Total for ' +DateToStr(dtpDate.Date)+': '+ qryTodayTotal.FieldByName('totalunits').AsString + ' Units ';
   finally
      qryTodayTotal.Close;
   end;
end;

procedure TfrmTimeSheet.CalcAmount;
var
   bRateItem: boolean;
begin
   try
      if qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString <> '' then
      begin
         if (qryScaleCost.Active = false) then
         begin
            qryScaleCost.close;
            qryScaleCost.ParambyName('p_code').AsString := qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString;
            qryScaleCost.Open();
         end;
         try
            bRateItem := ((qryScaleCost.FieldByName('RATE').AsCurrency <> 0) and
//                       (qryScaleCost.FieldByName('AMOUNT').AsCurrency <> 0) and
                       (qryScaleCost.FieldByName('DEFAULTTIME').AsInteger <> 0));
         finally
//          qryScaleCost.Close;
         end;
      end;

      if (qryFeeTmp.FieldByName('RATE').AsCurrency <> 0.0) then
      begin
         if not qryFeeTmp.Modified then
            qryFeeTmp.Edit;

         if (SystemInteger('TIME_UNITS') > 0) then
         begin
            if ((TableString('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'UNIT') = 'Units') or (qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString = '') or
               (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString, 'RATE') = 0)) and
               (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString, 'AMOUNT') = 0) then
            begin
               try
                     qryFeeTmp.FieldByName('AMOUNT').AsCurrency := qryFeeTmp.FieldByName('UNITS').AsFloat  *
                                                                qryFeeTmp.FieldByName('RATE').AsCurrency / (60 / SystemInteger('TIME_UNITS'));
               except
                  qryFeeTmp.FieldByName('AMOUNT').AsCurrency  := 0.00;
               end;
            end
            else if (TableString('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'UNIT') = 'Mins') or
                    (qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString = '') or
                    (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString, 'RATE') = 0) then
            begin
               try
                  if (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString, 'AMOUNT') = 0) then
                     qryFeeTmp.FieldByName('AMOUNT').AsCurrency  := qryFeeTmp.FieldByName('UNITS').AsFloat * qryFeeTmp.FieldByName('RATE').AsCurrency / 60
                  else
                     if (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString, 'AMOUNT') > 0) then
                        qryFeeTmp.FieldByName('AMOUNT').AsCurrency  := qryFeeTmp.FieldByName('UNITS').AsFloat * TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString, 'AMOUNT');
               except
                  qryFeeTmp.FieldByName('AMOUNT').AsCurrency  := 0.00;
               end;
            end
            else if (TableString('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'UNIT') <> 'Units') and
                    (qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString <> '') then
            begin
               if bRateItem then
               begin
                  qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := qryFeeTmp.FieldByName('ITEMS').AsInteger * TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString, 'RATE'); // qryFeeTmp.FieldByName('RATE').AsCurrency;
//                  neValue.Value := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, String(cbAuthor.EditValue), qryFeeTmp.FieldByName('CREATED').AsDateTime);
                  qryFeeTmp.FieldByName('AMOUNT').AsCurrency := qryFeeTmp.FieldByName('UNITS').AsFloat * qryFeeTmp.FieldByName('RATE').AsCurrency / (60 / SystemInteger('TIME_UNITS'));
               end
               else
               begin
                  try
                     qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency  := qryFeeTmp.FieldByName('ITEMS').AsInteger * qryFeeTmp.FieldByName('RATE').AsCurrency;
                  except
                     qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency  := 0.00;
                  end;
               end;
            end
            else
            begin
               try
                  qryFeeTmp.FieldByName('AMOUNT').AsCurrency  := qryFeeTmp.FieldByName('UNITS').AsFloat * qryFeeTmp.FieldByName('RATE').AsCurrency;
               except
                  qryFeeTmp.FieldByName('AMOUNT').AsCurrency  := 0.00;
               end;
            end;
         end;
      end
      else
      begin
         if not qryFeeTmp.IsEmpty then
         begin
            try
               if not qryFeeTmp.Modified then
                  qryFeeTmp.Edit;
               qryFeeTmp.FieldByName('AMOUNT').AsCurrency  := 0.00;
            except
               on e:exception do
                  raise Exception.Create('Error collecting default rate.');
            end;
         end;
      end;
   finally
      CalcDailyTotal;
   end;
end;


{    if iMinsPerUnit > 0 then
      qryFeeTmp.FieldByName('AMOUNT').AsCurrency := (qryFeeTmp.FieldByName('UNITS').AsInteger * iMinsPerUnit / 60) * qryFeeTmp.FieldByName('RATE').AsCurrency
    else
      qryFeeTmp.FieldByName('AMOUNT').AsCurrency := (qryFeeTmp.FieldByName('UNITS').AsInteger / 60) * qryFeeTmp.FieldByName('RATE').AsCurrency;
    UpdateTotals;
  end;
end;  }


procedure TfrmTimeSheet.CalcTax;
var
  dAmount: double;
begin
   if not qryFeeTmp.Modified then
      qryFeeTmp.Edit;
   dAmount := qryFeeTmp.FieldByName('AMOUNT').AsCurrency;
   qryFeeTmp.FieldByName('TAX').AsCurrency := TaxCalc(dAmount, '', qryFeeTmp.FieldByName('TAXCODE').AsString, dtpDate.Date);
   qryFeeTmp.FieldByName('AMOUNT').AsCurrency := dAmount;

   dAmount := qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency;
   qryFeeTmp.FieldByName('TASK_TAX').AsCurrency := TaxCalc(dAmount, '', qryFeeTmp.FieldByName('TAXCODE').AsString, dtpDate.Date);
   qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := dAmount;
end;

procedure TfrmTimeSheet.dbgrFeeTmpExit(Sender: TObject);
begin
//  UpdateTotals;
   if tvFeeTmp.Controller.IsNewItemRowFocused then
      tvFeeTmp.Controller.NewItemRecordFocused := False;
end;

procedure TfrmTimeSheet.popRemoveClick(Sender: TObject);
{
  Modified 25.10.2002 GG
  Removed compiler hint
var icount : integer;
}
var
   iCtr:                   integer;
   tv:                     TcxGridDBTableView;
   Data:                   TcxCustomDataController;
   DC:                     TcxGridTableController;
   tView:                  TcxGridViewData;
   ANFee: variant;
   bSelected: boolean;
begin
{
  Modified 25.10.2002 GG
  Removed compiler hint
icount := qryFeeTmp.RecordCount;
}
   if tmrAutocost.Enabled then
   begin
      MessageDlg('You must stop the Timer before you can Remove an entry.',mtWarning, [mbOK], 0);
      Exit;
   end
   else
   begin
      if not qryFeeTmp.IsEmpty then
      begin
         tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
         tv.BeginUpdate;
         dmAxiom.uniInsight.StartTransaction;
         Data := tv.DataController;
         DC := tv.Controller;
         tView := tv.ViewData;
         try
            for iCtr := 0 to Data.RecordCount - 1 do
            begin
               bSelected := False;
               tView.Records[iCtr].Focused  := True;
               ANFee := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpNewNFEE.Index];

               if (VarIsNull(ANFee) = True) then
               begin
                  try
                     if VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpPROCESS.Index]) then
                        bSelected := False
                     else
                        bSelected := tView.GetRecordByIndex(iCtr).Values[tvFeeTmpPROCESS.Index];
                  except
                     bSelected := False;
                  end;

                  if bSelected then
                  begin
                     qryFeeTmp.Delete;
                  end;
               end;
            end;
         finally
            dmAxiom.uniInsight.Commit;
            MakeSql;
            tv.EndUpdate;
            if tvFeeTmpNew.DataController.RowCount = 0 then
               lblTimerDisp.Visible := False;
         end;
      end;

 {    if not qryFeeTmp.IsEmpty then
     begin
        qryFeeTmp.Delete;
//       CalcAmount;
//       CalcUnpostedTotals;
//       CalcUnpostedAmountTotals;
        MakeSql;
        if tvFeeTmpNew.DataController.RowCount = 0 then
           lblTimerDisp.Visible := False;
      end;  }
   end;
end;

procedure TfrmTimeSheet.popEditClick(Sender: TObject);
begin
  if not qryFeeTmp.IsEmpty then
    qryFeeTmp.Edit;
end;

procedure TfrmTimeSheet.qryFeeTmp1AfterPost(DataSet: TDataSet);
begin
  DefaultTax := qryFeeTmp.FieldByName('TAXCODE').AsString;

  CalcUnpostedTotals;
  CalcUnpostedAmountTotals;
  CalcDailyTotal;
  FLineCopied := False;
  PostMessage(Self.Handle, WM_MYWIP , 1, 0);
//  SetMyWIP;
  dxBarButtonSave.Enabled := False;
end;

procedure TfrmTimeSheet.qryFeeTmp1AfterInsert(DataSet: TDataSet);
begin
   if not FLineCopied then
   begin
      if Dataset.State = dsBrowse then
         DataSet.Edit;
      if FMenuInsert then
         DataSet.FieldByname('CREATED').AsDateTime := IncSecond(FCurrentDateStamp,SystemInteger('TIMESHEET_DEC_VALUE'))
      else
      begin
         if trunc(dtpDate.Date) = trunc(Now()) then
            DataSet.FieldByname('CREATED').AsDateTime := Now()
         else
            DataSet.FieldByname('CREATED').AsDateTime := dtpDate.Date;
      end;
      DataSet.FieldByName('UNIQUEID').AsInteger := GetSequenceNumber('sqnc_feetmp');
      DataSet.FieldByname('FILEID').AsString := FileID;
      DataSet.FieldByname('AUTHOR').AsString := String(cbAuthor.EditValue);
      DataSet.FieldByName('NMATTER').AsInteger := 0;
    //  qryFeeTmp.FieldByname('REASON').AsString := tbDesc.Text;
    //  qryFeeTmp.FieldByName('UNITS').AsInteger := StrToInt(neUnits.Text);
      DataSet.FieldByName('TAXCODE').AsString := DefaultTax;
      DataSet.FieldByName('EMPCODE').AsString := dmAxiom.UserId;
//      qryFeeTmp.FieldbyName('TIME_TYPE').AsString := 'M';
      DataSet.FieldbyName('UNIT').AsString := 'Units';
      DataSet.FieldbyName('EMP_TYPE').AsString := TableString('EMPLOYEE','CODE',String(cbAuthor.EditValue),'TYPE');
      DataSet.FieldbyName('VERSION').AsString :=  dmAxiom.GetVersionInfo;  //  dmAxiom.Version + '.' + IntToStr(dmAxiom.BuildNumber);
      DataSet.FieldByName('ELAPSED').AsInteger := 0;
{      qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[1];
      qryFeeTmp.FieldByName('STATE').AsInteger := 2;
      qryFeeTmp.FieldByName('RESOURCEID').AsInteger := 7;
      qryFeeTmp.FieldByName('OPTIONS').AsInteger  := 2;
      qryFeeTmp.FieldByName('EVENT_TYPE').AsInteger := 0;  }


      if lvFeeTmp.GridView = tvFeeTmp then
         tvFeeTmpTYPE.Options.Focusing := True
      else
         tvFeeTmpNewTYPE.Options.Focusing := True;
// AES 13-03-2014
//      RichEdit1.Lines.Clear;
      dxBarButtonSave.Enabled := True;
   end
   else
      DataSet.FieldByName('UNIQUEID').AsInteger := GetSequenceNumber('sqnc_feetmp');
end;

procedure TfrmTimeSheet.FormActivate(Sender: TObject);
var
   MaxLog: TDateTime;
begin
   if tvFeeTmpNew.DataController.RowCount > 1 then
   BEGIN
      with dmAxiom.qryTmp2 do
      begin
         Close;
         SQL.Clear;
         SQL.Add('select trunc(max(logon_time)) as max_log from v$session ');
         SQL.Add('where username is not null ');
         SQL.Add('and username = :IUser and and upper(program) = ''INSIGHT.EXE'' ');
         ParamByName('IUser').AsString := dmAxiom.UserID;
         Open;
         MaxLog := FieldByName('max_log').AsDateTime;
         Close;
         if MaxLog < Date then
            MakeSQL;
      end;
   END;

{   if tvFeeTmpNew.DataController.RowCount > 0 then
   begin
      try
         tvFeeTmpNew.DataController.BeginUpdate;
         tvFeeTmpNew.DataController.RefreshExternalData;
      finally
         tvFeeTmpNew.DataController.EndUpdate;
      end;
   end;  }
end;

procedure TfrmTimeSheet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   tvFeeTmpNew.OnFocusedRecordChanged := nil;
   ClosingForm := True;
   if (tmrAutocost.Enabled = True) then
   begin
      btnTimer.Click;
//      MessageDlg('You must stop autocosting before you exit',mtWarning, [mbOK], 0);
//      Action := caNone;
   end;
//   else
   begin
{      if Sender is TcxButton then
      begin
         if (Sender as TcxButton).Name = 'btnCancel' then
         begin
            if qryFeeTmp.Modified then
               qryFeeTmp.Post;
            qryScaleCost.Close;
            Save;
            qryFeeTmp.Close;
            qryMRUList.Close;
            qryMSearch.Close;
            SettingSaveStream(dmAxiom.UserID, 'tvFeeTmp Layout', tvFeeTmp );
//            SaveColumnData;
         end;
      end
      else
      begin }
      if qryFeeTmp.Modified then
         qryFeeTmp.Post;
      qryScaleCost.Close;
      qryFeeTmp.Close;
      qryMRUList.Close;
      qryMSearch.Close;
      qryFeeTmp.Close;
//         SettingSaveStream(dmAxiom.UserID, 'tvFeeTmp Layout', tvFeeTmp );
//         SaveColumnData;
//      end;
      qFeeEarners.Close();
      if chkNoExit.Checked then
         SettingSave('FEEBATCH','NOEXIT',1)
      else
         SettingSave('FEEBATCH','NOEXIT',0);

      if boolean(cbShowFees.EditValue) = True then
         SettingSave('FEEBATCH','SHOWALLENTRIES',1)
      else
         SettingSave('FEEBATCH','SHOWALLENTRIES',0);

      if boolean(cbShowTime.EditValue) then
         SettingSave('FEEBATCH','SHOWTIMEENTRIES',1)
      else
         SettingSave('FEEBATCH','SHOWTIMEENTRIES',0);

      if boolean(cbShowTasks.EditValue) = True then
         SettingSave('FEEBATCH','SHOWTASKENTRIES',1)
      else
         SettingSave('FEEBATCH','SHOWTASKENTRIES',0);

      SettingSaveBoolean('FEEBATCH','SHOWDAYONLYENTRIES',cbSpecificDate.EditValue);

      SettingSaveBoolean('FEEBATCH','TIMESHEETVIEWBYRECORDER',cbTimeSheetViewByRecorder.Checked);

      if dmAxiom.TimeSheetViewLayout = 'Classic Grid' then
         SettingSaveStream(dmAxiom.UserID, 'tvFeeTmp Layout', tvFeeTmp )
      else
         SettingSaveStream(dmAxiom.UserID, 'tvFeeTmp Layout', tvFeeTmpNew );

      if frmDesktop.pagMainControl.ActivePageIndex = 1 then
         Action := caFree
      else
         RemoveFromDesktop(Self);
   end;
end;

procedure TfrmTimeSheet.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   tvFeeTmpNew.OnFocusedRecordChanged := nil;
   ClosingForm := True;
end;

procedure TfrmTimeSheet.qryFeeTmpRATEChange(Sender: TField);
begin
  CalcAmount;
end;

procedure TfrmTimeSheet.qryFeeTmpUNITSChange(Sender: TField);
begin
  CalcAmount;
end;


procedure TfrmTimeSheet.qryFeeTmpUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
   dxBarButtonSave.Enabled := True;
end;

procedure TfrmTimeSheet.popGridDateStampClick(Sender: TObject);
begin
   if tmrAutocost.Enabled then
   begin
      MessageDlg('You must stop the Timer before you can Timestamp an entry.',mtWarning, [mbOK], 0);
      Exit;
   end
   else
   begin
      if not qryFeeTmp.Modified then
         qryFeeTmp.Edit;
      qryFeeTmp.FieldByName('CREATED').AsDateTime := Now();
   end;
end;

procedure TfrmTimeSheet.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);
   tvFeeTmpNew.OnFocusedRecordChanged := nil;
   ClosingForm := False;

   cHelpMsg := 'Tick the checkbox on the left if you want to process a specific '+
               'time entry. ' +chr(13)+ chr(13)+
               'Using the Ctrl or Shift key in conjunction with the mouse '+
               'will allow selection of a range of entries.  If any entries are ticked '+
               'and you wish to process all entries, deselect all entries prior to processing. '+ chr(13)+
               'All entries can be selected/deselected by clicking on the header of the first column in the grid. '+
               chr(13) + chr(13) + 'To Cancel transaction, please use the Esc key.';
   // load saved view

   cbTimeSheetViewByRecorder.Checked := SettingLoadBoolean('FEEBATCH', 'TIMESHEETVIEWBYRECORDER');

   TcxLookupComboBoxAccess(cbAuthor).OnMouseWheel := cbAuthorMouseWheelHandler;

   if dmAxiom.TimeSheetViewLayout = 'Classic Grid' then
   begin
      SettingLoadStream(dmAxiom.UserID, 'tvFeeTmp Layout', tvFeeTmp );
      lvFeeTmp.GridView := tvFeeTmp;
      btnAddRow.Visible := ivNever;
      if dmAxiom.HideFeeNotes = 'Y' then
      begin
         tvFeeTmpNOTES.VisibleForCustomization := False;
         tvFeeTmpNOTES.Visible := False;
      end;
      with tvFeeTmpREASON do
      begin
//         PropertiesClass := TcxCustomRichEditProperties;
//         TcxCustomRichEditProperties(Properties).CharCase := ecNormal;
//         TDBRichEdit(tvFeeTmpREASON).c
//         if (SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y') then
//            TcxCustomRichEditProperties(Properties).CharCase := ecUpperCase;
      end;
   end
   else
   begin
      SettingLoadStream(dmAxiom.UserID, 'tvFeeTmp Layout', tvFeeTmpNew );
      lvFeeTmp.GridView := tvFeeTmpNew;
      btnAddRow.Visible := ivAlways;
      if dmAxiom.HideFeeNotes = 'Y' then
      begin
         tvFeeTmpNewNOTES.VisibleForCustomization := False;
         tvFeeTmpNewNOTES.Visible := False;
      end;
      with tvFeeTmpNewReason do
      begin
         PropertiesClass := TcxMemoProperties;
         TcxMemoProperties(Properties).CharCase := ecNormal;
         if (SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y') then
            TcxMemoProperties(Properties).CharCase := ecUpperCase;
      end;
      tvFeeTmpNewAUTHOR.Options.Editing := SystemString('ALLOW_TIMESHEET_AUTH_EDIT') = 'Y';
      tvFeeTmpNewAUTHOR.Options.Focusing := SystemString('ALLOW_TIMESHEET_AUTH_EDIT') = 'Y';
   end;

   //if dmAxiom.DictionaryInstalled then
   //begin
// AES 13-03-2014
{      if dmAxiom.TimeSheetViewLayout = 'Classic Grid' then
         dmAxiom.AddictLiveSpell.AddControl(RichEdit1)
      else   }
         //dmAxiom.AddictLiveSpell.AddControl(TcxRichEdit(tvFeeTmpNewReason));
         //dmAxiom.AddictLiveSpell.LiveSpelling := True;
//     memoDescription.AddictSpell := dmAxiom.Addict;
//     memoDescription.LiveSpelling := true;
   //end;

   if SystemString('Use_Fee_Authority') = 'Y' then
   begin
      cbAuthor.Properties.ListSource := dsEmployeeList;
      qryEmployeeList.ParamByName('code').AsString := dmAxiom.UserID;
      qryEmployeeList.Open;
   end
   else
   begin
      cbAuthor.Properties.ListSource := dsFeeEarners;
      qFeeEarners.Open;
   end;

   cbAuthor.Enabled := (dmAxiom.FEE_ENQUIRY_ACCESS = 'Y');

   if dbgrFeeTmp.Font.Size <> dmAxiom.GridFont then
      dbgrFeeTmp.Font.Size := dmAxiom.GridFont;

   qryScaleCostsList.Open;
   FileID := '';
   FTotalAmount := 0;
   FTotalUnits := 0;
   FOrderBy := '';

   DefaultTax := get_default_gst('Fee');

   if DefaultTax = '' then
      DefaultTax := dmAxiom.DefaultTax;
   dtpDate.Properties.OnChange := nil;
   dtpDate.Date := Today; //Now;
   dtpDate.Properties.MaxDate := Date + 180;
   dtpDate.Properties.DateOnError := deToday;
   dtpDate.Properties.OnChange := dtpDatePropertiesChange;

   lblDay.Caption := days[DayOfWeek(dtpDate.Date)];

   //if not dmAxiom.runningide then
     //btnTimer.Visible := false;

   chkNoExit.Checked := SettingLoadBoolean('FEEBATCH','NOEXIT');
   iMinsPerUnit := SystemInteger('TIME_UNITS');
//   qryFeeTmpAMOUNT.OnChange := qryFeeTmpAMOUNTChange;
//   qryFeeTmpRATE.OnChange := qryFeeTmpRATEChange;
//   qryFeeTmpUNITS.OnChange := qryFeeTmpUNITSChange;

   cbAuthor.Properties.OnChange := nil;
   if ((TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y') or
       (TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISTIME_RECORDER') = 'Y')) then
       cbAuthor.EditValue := dmAxiom.UserID
   else
       cbAuthor.EditValue := qFeeEarnersCODE.AsString;
   cbAuthor.Properties.OnChange := cbAuthorPropertiesChange;

   iRecords := qryFeeTmp.RecordCount;

   if Self.Visible then
      cbAuthor.SetFocus;

   qryMRUList.Close;
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
   qryMRUList.Open;

   cbShowFees.EditValue := SettingLoadBoolean('FEEBATCH','SHOWALLENTRIES');
   cbShowTime.EditValue := SettingLoadBoolean('FEEBATCH','SHOWTIMEENTRIES');
   cbShowTasks.EditValue := SettingLoadBoolean('FEEBATCH','SHOWTASKENTRIES');
   cbSpecificDate.EditValue := SettingLoadBoolean('FEEBATCH','SHOWDAYONLYENTRIES');


   TcxCustomPopupEditProperties(tvFeeTmpREASON).ImmediateDropDown := (dmAxiom.TimeSheetDescAutoDrop = 'Y');
   TcxCustomPopupEditProperties(tvFeeTmpREASON).ImmediateDropDownWhenActivated := (dmAxiom.TimeSheetDescAutoDrop = 'Y');

   if (lvFeeTmp.GridView = tvFeeTmp) then
   begin
      tvFeeTmpAMOUNT.Options.Focusing := (dmAxiom.TimeSheet_Amount_Edit = 'Y');
      tvFeeTmpAMOUNT.Options.Editing := (dmAxiom.TimeSheet_Amount_Edit = 'Y');

      tvFeeTmpRATE.Options.Focusing := (dmAxiom.TimeSheet_Rate_Edit = 'Y');
      tvFeeTmpRATE.Options.Editing := (dmAxiom.TimeSheet_Rate_Edit = 'Y');

      if dmAxiom.SaveTSTimeStamp = 'Y' then
         TcxDateEditProperties(tvFeeTmpCREATED.Properties).Kind := ckDateTime
      else
         TcxDateEditProperties(tvFeeTmpCREATED.Properties).Kind := ckDate;

      TcxDateEditProperties(tvFeeTmpCREATED.Properties).ShowTime := (dmAxiom.SaveTSTimeStamp = 'Y');
//      TcxDateEditProperties(tvFeeTmpCREATED).SaveTime := (dmAxiom.SaveTSTimeStamp = 'Y');
      TcxSpinEditProperties(tvFeeTmpUNITS.Properties).AssignedValues.MinValue := True;
   end
   else
   begin
      tvFeeTmpNewAMOUNT.Options.Focusing := (dmAxiom.TimeSheet_Amount_Edit = 'Y');
      tvFeeTmpNewAMOUNT.Options.Editing := (dmAxiom.TimeSheet_Amount_Edit = 'Y');

      tvFeeTmpNewRATE.Options.Focusing := (dmAxiom.TimeSheet_Rate_Edit = 'Y');
      tvFeeTmpNewRATE.Options.Editing := (dmAxiom.TimeSheet_Rate_Edit = 'Y');

      if dmAxiom.SaveTSTimeStamp = 'Y' then
         TcxDateEditProperties(tvFeeTmpNewCREATED.Properties).Kind := ckDateTime
      else
         TcxDateEditProperties(tvFeeTmpNewCREATED.Properties).Kind := ckDate;

      TcxDateEditProperties(tvFeeTmpNewCREATED.Properties).ShowTime := (dmAxiom.SaveTSTimeStamp = 'Y');
//      TcxDateEditProperties(tvFeeTmpNewCREATED).SaveTime := (dmAxiom.SaveTSTimeStamp = 'Y');
      TcxSpinEditProperties(tvFeeTmpNewUNITS.Properties).AssignedValues.MinValue := True;

      if (SystemString('USE_DECIMAL_UNITS') = 'Y') then
      begin
         If (dmAxiom.EMP_USE_DECIMAL_UNITS = 'N') then
         begin
            TcxSpinEditProperties(tvFeeTmpNewUNITS.Properties).Increment := 1;
         end
         else
         begin
            TcxSpinEditProperties(tvFeeTmpNewUNITS.Properties).Increment := 0.5;
         end;
      end
      else
      begin
         TcxSpinEditProperties(tvFeeTmpNewUNITS.Properties).Increment := 1;
      end;
   end;
   tvFeeTmp.OnFocusedRecordChanged := nil;
   MakeSQL;
   tvFeeTmp.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   // 14 Sept 2018
//   TdxUserSpellCheckerDictionary(dmAxiom.TSSpellChecker.Dictionaries[1]).DictionaryPath := '.\Spelling\USER_' + dmAxiom.UserID + '.DIC';
   dmAxiom.TSSpellChecker.Check(TcxRichEdit(tvFeeTmpNewReason));

   lblMyDailyBudget.Caption := 'Daily budget: '+FloatToStrF(DailyBudget, ffCurrency, 8,2);
   lblMyMonthlyBudget.Caption := 'Monthly budget to date: '+FloatToStrF(MonthlyBudget, ffCurrency, 8,2);
   lblMyYearlyBudget.Caption := 'Annual budget to date: '+FloatToStrF(YearlyBudget, ffCurrency, 8,2);

   // AES 07/09/2017 added these lines to cater for regional settings for currency
   tvFeeTmpNew.DataController.Summary.FooterSummaryItems[0].Format := GetCurrencySymbol+',0.00';
   tvFeeTmpNew.DataController.Summary.FooterSummaryItems[3].Format := GetCurrencySymbol+',0.00';
   tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   PostMessage(Self.Handle, WM_MYWIP , 1, 0);
//   SetMyWIP;
//   CalcAmount;
end;

procedure TfrmTimeSheet.tbDescExit(Sender: TObject);
begin
  QuickCode(Sender);
end;

procedure TfrmTimeSheet.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    QuickCode(Sender);
end;

procedure TfrmTimeSheet.qryFeeTmpAfterEdit(DataSet: TDataSet);
begin
   dxBarButtonSave.Enabled := True;
end;

procedure TfrmTimeSheet.btnPrintClick(Sender: TObject);
//var
//    LfrmFeeBatchPrint: TfrmFeeBatchPrint;
begin
    qryFeeTmpRpt.Close;
    qryFeeTmpRpt.SQL.Text := qryFeeTmp.SQL.Text + FOrderBy;
    qryFeeTmpRpt.ParambyName('AUTHOR').AsString := String(cbAuthor.EditValue);
    if (boolean(cbSpecificDate.EditValue) = False) then
         qryFeeTmpRpt.ParambyName('CREATED').AsDateTime := dtpDate.Date;
    rptFeeTmp.Print;
{   LfrmFeeBatchPrint := TfrmFeeBatchPrint.Create(Self);
   LfrmFeeBatchPrint.DisplayReport(qryFeeTmp, dtpDate.Date, String(cbAuthor.EditValue));
   LfrmFeeBatchPrint.Release; // Free;
//   LfrmFeeBatchPrint := nil;     }
end;

procedure TfrmTimeSheet.btnTimerClick(Sender: TObject);
begin
   StartStopTimer;
end;

procedure TfrmTimeSheet.StartStopTimer(APrevUniqueID: integer = -1);

   function CalcUnits: double;
   var
      iunits: double;
      iFracUnits: double;
   begin
      if iUnits = 0 then
         iUnits := 1;

      if (iMinsPerUnit = 0) then
      begin
         if ((iUnits * (iMinsPerUnit*60)) > FElapsedUnits) then
             FElapsedUnits := (iUnits * iMinsPerUnit)
         else
 //            iUnits := (((FElapsedUnits div 60) div iMinsPerUnit));
      end;
      iFracUnits := frac(((FElapsedUnits / 60) / iMinsPerUnit));
      iUnits := trunc((FElapsedUnits / 60) / iMinsPerUnit);
      if iFracUnits > 0 then
         iUnits := iUnits + 1;
      Result := iUnits;
   end;
var
   iUnits:  double;
   iUnique, AIndex, AFocusedIndex: Integer;
   iFracUnits: double;
begin
   try
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      if qryFeeTmp.State <> dsBrowse then
         qryFeeTmp.Post;

      if (not qryFeeTmp.FieldByName('NFEE').IsNull) then
      begin
         if APrevUniqueID <> -1 then
         begin
            iUnits := CalcUnits;
            qryTmp.Close;
            qryTmp.SQL.Text := 'update feetmp set elapsed = :p_elapsed, units = :p_units where uniqueid = :p_uniqueid';
            qryTmp.ParamByName('p_elapsed').AsFloat := FElapsedUnits;
            qryTmp.ParamByName('p_units').AsFloat := iUnits;
            qryTmp.ParamByName('p_uniqueid').AsInteger := APrevUniqueID;
            qryTmp.Execute;
         end;
         tmrAutoCost.Enabled := False;
         btnTimer.Caption := 'Start Timer';
         MessageDlg('You must select a current un-posted time entry to start/stop the timer', mtError, [mbOK], 0);
         exit;
      end;

      if (tvFeeTmpNew.DataController.RowCount = 0) then
      begin
         btnAddRow.Click;
      end;

      tmrAutoCost.Enabled := not tmrAutocost.Enabled;

      if qryFeeTmp.Active then
      begin
//         if qryFeeTmp.State <> dsBrowse then
//            qryFeeTmp.Post;

         if qryFeeTmp.State = dsBrowse then
            qryFeeTmp.Edit;

         if tvFeeTmp.Controller.FocusedRow = tvFeeTmp.ViewData.NewItemRecord then
         begin
//            MessageDlg('The timer cannot be used on this record.  Please finish entering all relevant information for this transaction and then start the Timer.', mtError, [mbOK], 0)
            if qryFeeTmp.FieldByName('TIME_TYPE').IsNull then
            begin
               qryFeeTmp.FieldByName('TIME_TYPE').AsString := 'O';
               qryFeeTmp.FieldByName('MATLOCATE').AsString := 'Overhead Time';
            end;
            qryFeeTmp.Post;
         end;

         if (qryFeeTmp.FieldByName('NFEE').IsNull) then
         begin
//            tmrAutoCost.Enabled := not tmrAutocost.Enabled;
            if tmrAutoCost.Enabled then
            begin
                 //ilstTimers.GetBitmap(1,btnTimer.Glyph);
//                 barManager.Bars[0].btnTimer.
               if (qryFeeTmp.State <> dsBrowse) and (qryFeeTmp.Modified = True) then
                   qryFeeTmp.Post;

               try
                  iUnique := qryFeeTmp.FieldbyName('UNIQUEID').AsInteger;
                  qryTmp.Close;
                  qryTmp.SQL.Text := 'select elapsed, units from  feetmp where uniqueid = :p_uniqueid';
                  qryTmp.ParamByName('p_uniqueid').AsInteger := iUnique;
                  qryTmp.Open;

                  if (qryTmp.FieldByName('units').AsFloat > 1) and
                     (qryTmp.FieldByName('Elapsed').AsInteger = 0) then
                     FElapsedUnits := (qryTmp.FieldByName('units').AsFloat * SystemInteger('TIME_UNITS')) * 60
                  else
                     FElapsedUnits := qryTmp.FieldByName('Elapsed').AsInteger;
               finally
                  qryTmp.Close;
                  CalcStatusBar(FElapsedUnits);
               end;

               btnTimer.Caption := 'Stop Timer';
            end
            else
            begin
                 //ilstTimers.GetBitmap(0,btnTimer.Glyph);
               btnTimer.Caption := 'Start Timer';
               FOrigUnits := qryFeeTmp.FieldbyName('UNITS').AsFloat;

               iUnique := qryFeeTmp.FieldbyName('UNIQUEID').AsInteger;

               iUnits := CalcUnits;

               qryTmp.Close;
               qryTmp.SQL.Text := 'update feetmp set elapsed = :p_elapsed, units = :p_units where uniqueid = :p_uniqueid';
               qryTmp.ParamByName('p_elapsed').AsFloat := FElapsedUnits;
               qryTmp.ParamByName('p_units').AsFloat := iUnits;
               qryTmp.ParamByName('p_uniqueid').AsInteger := iUnique;
               qryTmp.Execute;

               qryFeeTmp.FieldbyName('ELAPSED').AsFloat := FElapsedUnits;
               qryFeeTmp.FieldbyName('UNITS').AsFloat := iUnits;
               if tvFeeTmpNewUNITS.EditValue <> iUnits then
                  tvFeeTmpNewUNITS.EditValue := iUnits;
            end;
         end;
      end;

      if (tmrAutoCost.Enabled = True) then
         dxBarButtonSave.Visible := ivNever
      else
      begin
         AFocusedIndex := tvFeeTmpNew.Controller.FocusedRowIndex;
         AIndex := tvFeeTmpNew.Controller.TopRowIndex;
         dxBarButtonSave.Visible := ivAlways;
         MakeSQL;
         tvFeeTmpNew.Controller.FocusedRowIndex := AFocusedIndex;
         tvFeeTmpNew.Controller.TopRowIndex := AIndex;
      end;
   finally
      tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   end;
end;

procedure TfrmTimeSheet.tmrAutocostTimer(Sender: TObject);

   function CalcUnits: double;
   var
      iunits: double;
      iFracUnits: double;
   begin
      if iUnits = 0 then
         iUnits := 1;

      if (iMinsPerUnit = 0) then
      begin
         if ((iUnits * (iMinsPerUnit*60)) > FElapsedUnits) then
             FElapsedUnits := (iUnits * iMinsPerUnit);
      end;
      iFracUnits := frac(((FElapsedUnits / 60) / iMinsPerUnit));
      iUnits := trunc((FElapsedUnits / 60) / iMinsPerUnit);
      if iFracUnits > 0 then
         iUnits := iUnits + 1;
      Result := iUnits;
   end;
var
  iTmp,
  iUnits,
  iElapsedUnits
{  ,iOrigUnits }: double;
{
  Modified 25.10.2002 GG
  Removed compiler hint
  cAmount : currency;
}
begin
   if tvFeeTmp.Controller.FocusedRow = tvFeeTmp.ViewData.NewItemRecord then
   begin
      btnTimer.Caption := 'Start Timer';
      tmrAutocost.Enabled := False;
      try
         if qryFeeTmp.Modified then
            qryFeeTmp.Post;
      except
      //
      end;
      tvFeeTmp.ViewData.NewItemRow.Focused := True;
   end
   else
   begin
      FElapsedUnits := FElapsedUnits + 1;
      iElapsedUnits := FElapsedUnits;
      iUnits := CalcUnits;
      if (tvFeeTmpNewUNITS.EditValue <> iUnits) and (iUnits > 0) then
         tvFeeTmpNewUNITS.EditValue := iUnits;
{      if qryFeeTmp.Active then
      begin
//         if qryFeeTmp.Modified then
//            qryFeeTmp.Post;
         if qryFeeTmp.State = dsBrowse then
            qryFeeTmp.Edit;
         if qryFeeTmp.FieldbyName('ELAPSED').IsNull then
         begin
            if qryFeeTmp.FieldbyName('UNITS').AsInteger > 1 then
               qryFeeTmp.FieldbyName('ELAPSED').AsInteger := (qryFeeTmp.FieldbyName('UNITS').AsInteger * SystemInteger('TIME_UNITS'))*60
            else
               qryFeeTmp.FieldbyName('ELAPSED').AsInteger := 0;

         end;
         qryFeeTmp.FieldbyName('ELAPSED').AsInteger := qryFeeTmp.FieldbyName('ELAPSED').AsInteger + 1;
      end;

    //    lblElapsed.Text := '';
      iTmp := qryFeeTmp.FieldbyName('ELAPSED').AsInteger div 60;
      if iTmp > 0 then
         iTmp := qryFeeTmp.FieldbyName('ELAPSED').AsInteger mod 60;

      if (not qryFeeTmp.FieldbyName('UNITS').IsNull) and
         (qryFeeTmp.FieldbyName('UNITS').AsInteger <> 0 ) then
         iUnits := qryFeeTmp.FieldbyName('UNITS').AsInteger
      else
         iUnits := 1;

      if (iMinsPerUnit > 0) then
         iUnits := (((qryFeeTmp.FieldbyName('ELAPSED').AsInteger div 60) div iMinsPerUnit));

      if (qryFeeTmp.FieldbyName('ELAPSED').AsInteger mod 60) > 0 then
         iUnits := iUnits + 1;

      if qryFeeTmp.FieldbyName('UNITS').AsInteger <> iUnits then
      begin
         if qryFeeTmp.State = dsBrowse then
            qryFeeTmp.Edit;
         qryFeeTmp.FieldbyName('UNITS').AsInteger := iUnits;
         CalcAmount;
      end; }
   end;
   CalcStatusBar(iElapsedUnits);
end;

procedure TfrmTimeSheet.CalcStatusbar(AElapsedUnits: double);
var
  iTotalElapsed : double;
  iCtr : integer;
  iHours, iMins, iSecs : integer;
  sElapsed : string;
  cAmount : currency;
begin
   iUnits   := 0;
   cAmount  := 0;
   iHours   := 0;
   iTotalElapsed := AElapsedUnits;
   if (tvFeeTmp.DataController.RowCount > 0) or
      (tvFeeTmp.Controller.NewItemRecordFocused) or
      (lvfeeTmp.GridView = tvFeeTmpNew) then
      begin
//         iUnits := qryFeeTmp.FieldbyName('UNITS').AsInteger;
//         iTotalElapsed := iTotalElapsed + qryFeeTmp.FieldbyName('ELAPSED').AsInteger;
//         if (iMinsPerUnit > 0) then
//            iUnits := {FOrigUnits + }(((qryFeeTmp.FieldbyName('ELAPSED').AsInteger div 60) div iMinsPerUnit));

//         cAmount := cAmount + CalcAmount2(qryFeeTmp.FieldbyName('ELAPSED').AsInteger, qryFeeTmp.FieldbyName('RATE').AsInteger, '');

//         if (qryFeeTmp.FieldbyName('ELAPSED').AsInteger mod 60) > 0 then
//            iUnits := iUnits + 1;

         if iUnits = 0 then iUnits := 1;
 //        if iTotalElapsed = 0 then iTotalElapsed

         sElapsed := 'Total Time = ';
         // Do the minutes
         if iTotalElapsed > 59 then
            iMins := round(iTotalElapsed) div 60
         else if iTotalElapsed <= 59 then
            iMins := 0
         else
            iMins := round(iTotalElapsed);

         if iMins > 0 then
         begin
            if (iMins > 59) then
            begin
               iHours := iMins div 60;
               iMins := iMins mod 60;
               if iHours = 1 then
                  sElapsed := '1 hour, '
            end;
         end;
         if iHours > 1 then
            sElapsed := IntToStr(iHours) + ' hours, ';

         if iMins = 1 then
            sElapsed := sElapsed + '1 min, '
         else
            sElapsed := sElapsed + IntToStr(iMins) + ' mins, ';
         // and now the seconds
         iSecs := round(iTotalElapsed) mod 60;
         if iSecs = 1 then
            sElapsed := sElapsed + '1 sec'
         else
            sElapsed := sElapsed + IntToStr(iSecs) + ' secs';
      lblTimerDisp.Caption := sElapsed;
   end;
end;

function TfrmTimeSheet.CalcAmount2(iSecs : integer; cRate : currency; sType : string) : currency;
begin
  //if rTimers[iActiveTimer].bBillable then
  begin
    if iMinsPerUnit > 0 then
      CalcAmount2 := (((iSecs div 60) div iMinsPerUnit) + 1) * cRate / 60 * iMinsPerUnit
    else
      CalcAmount2 := iSecs * cRate / 3600;
  end
  //else  // Non-billable
    //CalcAmount := 0.0;
end;


procedure TfrmTimeSheet.FormDestroy(Sender: TObject);
begin
   try
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      if tmrAutoCost.Enabled = True then
         tmrAutoCost.Enabled := False;
      if (qryFeeTmp.State in [dsEdit, dsInsert]) then
         qryFeeTmp.Post;
   finally
      tmrAutoCost.Free;
   end;
//   SaveColumnData;
end;

{
procedure TfrmTimeSheet.Save;
begin
   if qryFeeTmp.Active then
   begin
      if qryFeeTmp.State in [dsInsert] then
      begin
          //showmessage('POST');
         qryFeeTmp.Post;
      end;
      if qryFeeTmp.UpdatesPending then
      //if not ((qryFeeTmp.RecordCount = 0) and (iRecords = 0)) then
      begin
          //qryFeeTmp.Close;
          //qryFeeTmp.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
          //qryFeeTmp.Open;
         try
            dmAxiom.orsAxiom.StartTransaction;
            qryFeeTmp.ApplyUpdates;
            dmAxiom.orsAxiom.Commit;
         except
            dmAxiom.orsAxiom.Rollback;
         end;
      end;
      //if not ((qryFeeTmp.RecordCount = 0) and (iRecords = 0)) then
        {qryFeeTmp.ApplyUpdates;
        qryFeeTmp.Close;
        qryFeeTmp.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
        qryFeeTmp.Open;}
{   end;
end;
}

procedure TfrmTimeSheet.Reason1Click(Sender: TObject);
begin
{ begin
    with TfrmScaleCosts.Create(Self) do
    begin
      if ShowModal = mrOk then
      begin
        if not qryFeeTmp.Modified then
          qryFeeTmp.Edit;
        qryFeeTmp.FieldByName('REASON').AsString := qryScaleCosts.FieldByName('DESCR').AsString;
        if qryScaleCosts.FieldByName('AMOUNT').AsCurrency > 0 then
        begin
          qryFeeTmp.FieldByName('AMOUNT').AsCurrency := qryScaleCosts.FieldByName('AMOUNT').AsCurrency;
          qryFeeTmp.FieldByName('RATE').AsCurrency := 0.0;
          UpdateTotals;
        end
        else
        begin
          qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCosts.FieldByName('RATE').AsCurrency;
          CalcAmount;
        end;
      end;
    end;
    end; }
end;

procedure TfrmTimeSheet.QuickCode1Click(Sender: TObject);
begin
   with TfrmQuickCodeSearch.Create(Self) do
   begin
      if ShowModal = mrOk then
         qryFeeTmp.FieldByName('REASON').AsString := qryFeeTmp.FieldByName('REASON').AsString + qryQuickCode.FieldByName('DESCR').AsString;
      Free;
   end;
end;

procedure TfrmTimeSheet.cxGrid1DBTableView1REFNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
{ 30/09/2004 TH - Commented out button click event and replaced with combobox
   if not FormExists(frmMatterSearch) then
     Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOk then
   begin
     if not qryFeeTmp.Modified then
       qryFeeTmp.Edit;
     qryFeeTmp.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
     qryFeeTmp.FieldByName('NMATTER').AsInteger := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
     tvFeeTmpMATTERDETAILS.DataBinding.Field.AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' '+
                                                 dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString;
     qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('REFNO').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString);
     CalcAmount
   end;
}
end;

procedure TfrmTimeSheet.cxGrid1DBTableView1REASONPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   with TfrmScaleCosts.Create(Self) do
   begin
      if ShowModal = mrOk then
      begin
         if not qryFeeTmp.Modified then
            qryFeeTmp.Edit;
         qryFeeTmp.FieldByName('REASON').AsString := qryScaleCosts.FieldByName('DESCR').AsString;
         if qryScaleCosts.FieldByName('AMOUNT').AsCurrency > 0 then
         begin
            qryFeeTmp.FieldByName('AMOUNT').AsCurrency := qryScaleCosts.FieldByName('AMOUNT').AsCurrency;
            qryFeeTmp.FieldByName('RATE').AsCurrency := 0.0;
            qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := qryScaleCosts.FieldByName('CODE').AsString;
//            UpdateTotals;
         end
         else
         begin
            qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCosts.FieldByName('RATE').AsCurrency;
            qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := qryScaleCosts.FieldByName('CODE').AsString;
            CalcAmount;
         end;
      end;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpREFNOPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   LBillType,
   LMATLOCATE,
   sDisplayValue: string;
begin
   if bMatterValidated = False then
   begin
      bMatterValidated := True;
      LMATLOCATE := 'M.TITLE ||'' ''|| SHORTDESCR AS MATLOCATE';
      Error := False;
      sDisplayValue := DisplayValue;
      if (UpperCase(sDisplayValue) = 'SEARCH...') then
      begin
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
         if frmMatterSearch.ShowModal = mrOk then
         begin
            if (dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '') then
            begin
               if DebtorStopWork(MatterString(dmAxiom.qryMSearch.FieldByName('FILEID').AsString,'DEBTORSTATUS')) then
               begin
                  Error := True;
                  ErrorText := 'This matter has been flagged as "Stop Work". No time can be recorded'; // MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded')
                  DisplayValue := '';
                  qryFeeTmp.FieldbyName('TIME_TYPE').AsString := 'O';
                  bMatterValidated := False;
               end
//                  MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded')
               else
               begin
                  DisplayValue := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
                  sDisplayValue := DisplayValue;
                  if not qryFeeTmp.Modified then
                     qryFeeTmp.Edit;
//                  tvFeeTmpTYPE.Options.Focusing := False;
                  if (qryFeeTmp.FieldbyName('TIME_TYPE').IsNull or
                     (qryFeeTmp.FieldbyName('TIME_TYPE').AsString = dmAxiom.DefaultTimeType)) then
                     qryFeeTmp.FieldbyName('TIME_TYPE').AsString := 'M';

//                  qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable';
                  LBillType := TableString('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'BILLTYPE');
                  if LBillType = '' then
                     LBillType := 'Billable';
                  qryFeeTmp.FieldByName('BILLTYPE').AsString := LBillType;
                  qryFeeTmp.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
                  qryFeeTmp.FieldByName('NMATTER').AsInteger := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;

                  if qryFeeTmp.FieldByName('FEE_TEMPLATE').IsNull or (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'AMOUNT') = 0) then
                     qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);

                  if lvFeeTmp.GridView = tvFeeTmp then
                  begin
                     if qryFeeTmp.FieldbyName('TIME_TYPE').AsString = 'M' then
                        tvFeeTmpTYPE.Options.Focusing := False;
                     tvFeeTmpMATTERDETAILS.DataBinding.Field.AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' '+
                                                          dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString;
                     if tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString = '' then
                        DoBillType(qryFeeTmp.FieldByName('FILEID').AsString);
                  end
                  else
                  begin
                     if qryFeeTmp.FieldbyName('TIME_TYPE').AsString = 'M' then
                        tvFeeTmpNewTYPE.Options.Focusing := False;
                     tvFeeTmpNewMATTERDETAILS.DataBinding.Field.AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' '+
                                                          dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString;
                     if tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString = '' then
                        DoBillType(qryFeeTmp.FieldByName('FILEID').AsString);
                  end;

                  CalcAmount;
                  ReopenListUpdate('MATTER', qryFeeTmp.FieldByName('FILEID').AsString);
               end;
            end;
         end
         else
         begin
            DisplayValue := '';
            sDisplayValue := '';
            qryFeeTmp.FieldByName('FILEID').Clear;
            qryFeeTmp.FieldByName('NMATTER').Clear;

            if lvFeeTmp.GridView = tvFeeTmp then
            begin
               tvFeeTmpMATTERDETAILS.DataBinding.Field.Clear;
                tvFeeTmpTYPE.Options.Focusing := True;
            end
            else
            begin
               tvFeeTmpNewMATTERDETAILS.DataBinding.Field.Clear;
               tvFeeTmpNewTYPE.Options.Focusing := True;
            end;
            TcxLookupComboBox(Sender).Text := '';

            qryFeeTmp.FieldByName('ITEMS').AsString := '0';
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
         end;
      end
      else

      if (Trim(sDisplayValue) <> '') then
      begin
         sDisplayValue := PadFileID(sDisplayValue);
         if (MatterExists(UpperCase(sDisplayValue))) then
         begin
            DisplayValue := sDisplayValue;
            if DebtorStopWork(MatterString(UpperCase(sDisplayValue),'DEBTORSTATUS')) then
            begin
               Error := True;
               ErrorText := 'This matter has been flagged as "Stop Work". No time can be recorded'; // MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded')
               DisplayValue := '';
               bMatterValidated := False;
            end
            else if (MatterString(sDisplayValue, 'PROSPECTIVE') = 'Y') then
            begin
               If not (ProspectiveFeesAllowed(sDisplayValue)) then
               begin
                 Error := True;
                 ErrorText := 'This matter has been flagged as "Prospective". No time can be recorded'; // MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded')
                 DisplayValue := '';
                 bMatterValidated := False;
               end;
            end
            else
            begin
               if not qryFeeTmp.Modified then
                  qryFeeTmp.Edit;
               if (qryFeeTmp.FieldbyName('TIME_TYPE').IsNull  or
                  (qryFeeTmp.FieldbyName('TIME_TYPE').AsString = dmAxiom.DefaultTimeType))then
                  qryFeeTmp.FieldbyName('TIME_TYPE').AsString := 'M';

               if qryFeeTmp.FieldbyName('TIME_TYPE').AsString <> 'M' then
               begin
                  if lvFeeTmp.GridView = tvFeeTmp then
                     tvFeeTmpTYPE.Options.Focusing := False
                  else
                     tvFeeTmpNewTYPE.Options.Focusing := False;
               end;

               LBillType := TableString('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'BILLTYPE');
               if LBillType = '' then
                  LBillType := 'Billable';
               qryFeeTmp.FieldByName('BILLTYPE').AsString := LBillType;
               qryFeeTmp.FieldByName('FILEID').AsString := UpperCase(sDisplayValue);
               qryFeeTmp.FieldByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryFeeTmp.FieldByName('FILEID').AsString, 'NMATTER');

               qryFeeTmp.FieldByName('MATLOCATE').AsString := MatterString(UpperCase(string(DisplayValue)), LMATLOCATE);
               if qryFeeTmp.FieldByName('FEE_TEMPLATE').IsNull or
                  (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'AMOUNT') = 0)  and
                  (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'RATE') = 0)then
                  qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);

               if qryFeeTmp.FieldbyName('TIME_TYPE').AsString <> 'M' then
               begin
                  if tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString = '' then
                     DoBillType(sDisplayValue);
               end
               else
               begin
                  if tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString = '' then
                     DoBillType(sDisplayValue);
               end;

               CalcAmount;
               ReopenListUpdate('MATTER', qryFeeTmp.FieldByName('FILEID').AsString);
            end;
         end
         else
         begin
            DisplayValue := '';
            sDisplayValue := '';
            ErrorText := 'Matter does not exist!';
            Error := True;
            bMatterValidated := False;
         end;
      end
      else
      if ((Trim(sDisplayValue) = '') and (qryFeeTmp.State in [dsEdit, dsInsert])) then
      begin
         qryFeeTmp.FieldByName('FILEID').Clear;
         qryFeeTmp.FieldByName('NMATTER').Clear;

         if qryFeeTmp.FieldbyName('TIME_TYPE').AsString <> 'M' then
         begin
            tvFeeTmpMATTERDETAILS.DataBinding.Field.Clear;
            tvFeeTmpTYPE.Options.Focusing := True;
         end
         else
         begin
            tvFeeTmpNewMATTERDETAILS.DataBinding.Field.Clear;
            tvFeeTmpNewTYPE.Options.Focusing := True;
         end;

         qryFeeTmp.FieldByName('ITEMS').AsString := '0';
         if qryFeeTmp.FieldByName('FEE_TEMPLATE').IsNull or
               (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'AMOUNT') = 0)  and
               (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'RATE') = 0) then
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);

         if qryFeeTmp.FieldbyName('TIME_TYPE').AsString <> 'M' then
         begin
            if tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString = '' then
               DoBillType(qryFeeTmp.FieldByName('FILEID').AsString);
         end
         else
         begin
            if tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString = '' then
               DoBillType(qryFeeTmp.FieldByName('FILEID').AsString);
         end;

         CalcAmount;
         ReopenListUpdate('MATTER', qryFeeTmp.FieldByName('FILEID').AsString);
      end;
   end;
end;



procedure TfrmTimeSheet.tvFeeTmpStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn,
   AColumn1,
   AColumn2: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('NFEE');
   AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('TASK_COMPLETED');
   AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('IS_TASK');

   if (VarToStr(ARecord.Values[AColumn2.Index]) = 'N') then
   begin
      if (VarToStr(ARecord.Values[AColumn.Index]) <> '') then
      begin
         AStyle := styFeeColour;
      end
      else
      begin
         AStyle := styDefault;
{         AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('TIME_TYPE');
         if VarToStr(ARecord.Values[AColumn.Index]) = 'M' then
         begin
            AStyle := styMatter;
         end
         else if VarToStr(ARecord.Values[AColumn.Index]) = 'O' then
         begin
            AStyle := styOverhead;
         end
         else if VarToStr(ARecord.Values[AColumn.Index]) = 'H' then
         begin
            AStyle := styHeld;
         end
         else
         begin
            AStyle := styDefault;
         end; }
      end;
   end;

   if (VarToStr(ARecord.Values[AColumn2.Index]) = 'Y') then
   begin
      if (VarToStr(ARecord.Values[AColumn1.Index]) <> '') then
         AStyle := styTaskCompColour
      else
         AStyle := styTaskInCompColour;
   end;
end;

procedure TfrmTimeSheet.DoBillType(FileId: string);
begin
   qryBillType.Close;
   qryBillType.ParamByName('p_nmatter').AsInteger := TableInteger('MATTER', 'FILEID', FileId, 'NMATTER');
   qryBillType.Open;
   if not qryBillType.Eof then
      qryFeeTmp.FieldByName('BILLTYPE').AsString := qryBillType.FieldByName('BillType').AsString
   else
      qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable';
end;

procedure TfrmTimeSheet.tvFeeTmpUNITSPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   DispValue: Double;
begin
   if (VarIsNull(DisplayValue) = False) and (DisplayValue <> '') then
   begin
      DispValue := DisplayValue;
{      if qryFeeTmp.State = dsInactive then
      begin
         qryFeeTmp.Open;
         qryFeeTmp.Edit;
      end;  }
      qryFeeTmp.FieldByName('UNITS').AsFloat := DispValue;
      CalcAmount;
   end;
end;

procedure TfrmTimeSheet.cbAuthorPropertiesChange(Sender: TObject);
begin
   if dmAxiom.bShutDown = False then
   begin
      try
         tvFeeTmpNew.OnFocusedRecordChanged := nil;
         if tmrAutocost.Enabled then
         begin
            MessageDlg('You must stop the Timer before you can select an Author.',mtWarning, [mbOK], 0);
            Exit;
         end
         else
         begin
            tvFeeTmpNew.OnFocusedRecordChanged := nil;
            if qryFeeTmp.Active = True then
            begin
               if qryFeeTmp.Modified then
                  qryFeeTmp.Post;
               if (dmAxiom.uniInsight.InTransaction = True) then
                  dmAxiom.uniInsight.Commit;
               qryFeeTmp.Close;
            end;

            //qryFeeTmp.ParambyName('EMPCODE').AsString := String(cbAuthor.EditValue);
      //      qryFeeTmp.ParambyName('AUTHOR').AsString := String(cbAuthor.EditValue);
      //      qryFeeTmp.Open;
            MakeSQL;

            if qryFeeTmp.State in [dsInsert,dsEdit] then
               qryFeeTmp.FieldByname('AUTHOR').AsString := String(cbAuthor.EditValue);
            CalcDailyTotal;
            SetBudgetCaption;
            tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
         end;
      finally
         tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
      end;
   end;
end;

procedure TfrmTimeSheet.MakeSQL;
var
   LSql, LOrderBy: string;
begin
   if dmAxiom.bShutDown = False then
   begin
      Screen.Cursor := crHourglass;
      LSql := 'SELECT FT.ROWID, FT.CREATED, FT.FILEID, FT.AUTHOR,'+
              'FT.REASON, FT.UNITS, FT.RATE, FT.AMOUNT, FT.TAXCODE, FT.TAX, '+
              'FT.TAXRATE, FT.ELAPSED, FT.EMPCODE, FT.UNIQUEID,FT.NFEE, '+
              'case when FT.BILLTYPE = ''Billable'' then ''Yes'' else ''No'' end as billable, '+
              'FT.MATLOCATE, FT.BILLTYPE, '+
//              'decode(FT.TIME_TYPE, ''M'',P.SEARCH || '' '' || M.SHORTDESCR,''O'', '+
//              ' ''Overhead Time'',''H'', NVL(TRIM(P.SEARCH || '' '' || M.SHORTDESCR),''Hold Time'') ) AS MATLOCATE,'+
              'FT.NMATTER, FT.FEEBASIS,FT.TIME_TYPE, FT.FEE_TEMPLATE, FT.ITEMS,'+
              'FT.UNIT, FT.TASK_AMOUNT, FT.LABELCOLOUR, FT.EMP_TYPE, FT.VERSION, FT.MINS, FT.NOTES, '+
              'FT.STATE, FT.RESOURCEID, FT.OPTIONS, FT.EVENT_TYPE, FT.CAPTION, FT.total_fee_amt_pct, FT.IS_TASK, '+
              'FT.TASK_COMPLETED, FT.TIME_CODE, FT.ITEM_AMOUNT, FT.PROGRAM_NAME '+
              'FROM MATTER M, PHONEBOOK P, FEETMP FT '+
              'WHERE ';
              if cbTimeSheetViewByRecorder.Checked then
                  LSql := LSql + ' FT.EMPCODE = ' + QuotedStr(dmAxiom.UserID)
              else
                  LSql := LSql + 'FT.AUTHOR = :AUTHOR ';

      LSql := LSql +' AND FT.FILEID = M.FILEID (+) '+
              ' AND M.NCLIENT = P.NCLIENT (+)  ';

      if boolean(cbShowTasks.EditValue) and boolean(cbShowFees.EditValue) and boolean(cbShowTime.EditValue) then
         LSql := LSql + ' AND (FT.IS_TASK = ''Y'' OR FT.NFEE IS NOT NULL OR FT.NFEE IS NULL) '
      else
      begin
         if boolean(cbShowTasks.EditValue) and boolean(cbShowFees.EditValue) then
            LSql := LSql + ' AND (FT.IS_TASK = ''Y'' OR FT.NFEE IS NOT NULL) ';

         if boolean(cbShowTasks.EditValue) and boolean(cbShowTime.EditValue) then
            LSql := LSql + ' AND (FT.IS_TASK = ''Y'' OR FT.NFEE IS NULL) ';

         if boolean(cbShowTime.EditValue) and boolean(cbShowFees.EditValue) then
            LSql := LSql + ' AND (FT.NFEE IS NULL OR FT.NFEE IS NOT NULL) ';

         if boolean(cbShowTasks.EditValue) and (boolean(cbShowTime.EditValue) = False) and (boolean(cbShowFees.EditValue) = False) then
            LSql := LSql + ' AND FT.IS_TASK = ''Y'' ';


         if boolean(cbShowFees.EditValue) and (boolean(cbShowTasks.EditValue) = False) and (boolean(cbShowTime.EditValue) = False) then
            LSql := LSql + ' AND (FT.NFEE IS NOT NULL) AND (FT.IS_TASK = ''N'')';

         if boolean(cbShowTime.EditValue) and (boolean(cbShowTasks.EditValue) = False) and (boolean(cbShowFees.EditValue) = False) then
            LSql := LSql + ' AND (FT.NFEE IS NULL) AND (FT.IS_TASK = ''N'')';
      end;

      if (boolean(cbSpecificDate.EditValue) = False) then
         LSql := LSql + ' AND trunc(FT.CREATED) = trunc(:CREATED) ';

      if lvFeeTmp.GridView = tvFeeTmp then
         LOrderBy :=       ' order by FT.uniqueid desc ';
{      else
         LOrderBy :=       ' order by FT.created asc ';   }

      if VarIsNull(cbAuthor.EditValue) = False then
      begin
      with qryFeeTmp do
         begin
            Close;
            SQL.Clear;
            SQL.Text := LSql + LOrderBy;
            if (cbTimeSheetViewByRecorder.Checked = False) then
               ParambyName('AUTHOR').AsString := String(cbAuthor.EditValue);
            if (boolean(cbSpecificDate.EditValue) = False) then
               ParambyName('CREATED').AsDateTime := dtpDate.Date;
            Open;
         end;

         CalcUnpostedTotals;
         CalcUnpostedAmountTotals;
         PostMessage(Self.Handle, WM_MYWIP , 1, 0);
//         SetMyWIP;
         lblDailyBudgetUnits.Caption := IntToStr(GetEmpDailyUnitsBudget(dtpDate.Date));

//         lblTimeToday.Caption := cbAuthor.EditValue + ' - time today';
//         lblTimeMonth.Caption := cbAuthor.EditValue + ' - time this month';
//         lblTimeYear.Caption := cbAuthor.EditValue + ' - time this year';
      end;
   end;
   Screen.Cursor := crDefault;
end;

procedure TfrmTimeSheet.tvFeeTmpREASONPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
//   if Pos('\', DisplayValue)> 0 then
//   begin
//      qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := Copy(DisplayValue,1,3);
//      QuickCode(tvFeeTmpREASON.DataBinding.Field, DisplayValue);
//   end;
   if SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y' then
      qryFeeTmp.FieldByName('REASON').AsString := UpperCase(Trim(DisplayValue))
   else
      qryFeeTmp.FieldByName('REASON').AsString := Trim(DisplayValue);
end;

{ 30/09/2004 TH - Changed edit button to combobox for matter selection }
procedure TfrmTimeSheet.tvFeeTmpTYPEPropertiesCloseUp(Sender: TObject);
begin
   if qryFeeTmp.State = dsBrowse then
      qryFeeTmp.Edit;
   if TcxComboBox(Sender).Text = 'M' then
   begin
      try
         if string(tvFeeTmpFILEID.EditValue) = '' then
            qryFeeTmp.FieldByName('MATLOCATE').AsString := '';
      except
         //
      end;
      qryFeeTmp.FieldByName('TIME_TYPE').AsString := TcxComboBox(Sender).Text;
      qryFeetmp.FieldByName('BILLTYPE').AsString := 'Billable';
      if not VarIsNull(tvFeeTmpFEE_TEMPLATE.EditValue) then
      begin
         qryScaleCost.Close();
         qryScaleCost.ParambyName('p_code').AsString := tvFeeTmpFEE_TEMPLATE.EditValue;
         qryScaleCost.Open();
         qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString;
      end;
      qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[5];
   end
   else
   if TcxComboBox(Sender).Text = 'O' then
   begin
      qryFeeTmp.FieldByName('TIME_TYPE').AsString := TcxComboBox(Sender).Text;

      qryFeeTmp.FieldByName('MATLOCATE').AsString := 'Overhead Time';
      qryFeeTmp.FieldByName('FILEID').Clear;
      qryFeetmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
      qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[2];
      qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
   end
   else
   if TcxComboBox(Sender).Text = 'H' then
   begin
      qryFeeTmp.FieldByName('TIME_TYPE').AsString := TcxComboBox(Sender).Text;
      if (qryFeeTmp.FieldByName('FILEID').AsString = '') then
         qryFeeTmp.FieldByName('MATLOCATE').AsString := 'Held Time';
//      qryFeeTmp.FieldByName('FILEID').Clear;
      qryFeetmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
      qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[3];
   end;
//   qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
   CalcAmount;
//   qryFeeTmp.Post;
end;

procedure TfrmTimeSheet.tvFeeTmpTYPEPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if DisplayValue = '' then
   begin
      ErrorText := 'Type cannot be blank.';
      Error := True;
   end
   else
   begin
//      qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
      CalcAmount;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
   if (AFocusedItem.Caption = 'Type') and
      (APrevFocusedItem.Caption = 'Matter') then
   begin
      if (AFocusedItem.DataBinding.Item.EditValue = 'M') and
         (tvFeeTmpNewFILEID.EditValue <> '')  then
      begin
         tvFeeTmpNewTYPE.Options.Focusing := True;
         tvFeeTmpNewFEE_TEMPLATE.Focused := True;
      end
      else
      begin
         if not qryFeeTmp.Modified then
            qryFeeTmp.Edit;
         if qryFeeTmp.FieldbyName('TIME_TYPE').IsNull then
         begin
            qryFeeTmp.FieldbyName('TIME_TYPE').AsString := 'O';
            qryFeeTmp.FieldByName('MATLOCATE').AsString := 'Overhead Time';
         end;
         if (AFocusedItem.Caption = 'Type') and (AFocusedItem.DataBinding.Item.EditValue = 'O') then
         begin
            qryFeeTmp.FieldByName('FILEID').Clear;
            qryFeetmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
            qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[2];
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
         end;
      end;
   end
   else
   if AFocusedItem.Caption = 'Matter' then
   begin
      tvFeeTmpNewTYPE.Options.Focusing := True;
      bMatterValidated := False;
   end
   else
   if AFocusedItem.Caption = 'Items' then
   begin
{       tvFeeTmpITEMS.Options.Focusing := ((tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString <> '') and
                                     ((TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'AMOUNT') = 0) or
                                     (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0)));   }

      tvFeeTmpNewITEMS.Options.Focusing := ((tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString <> '') and
                                     ((TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'AMOUNT') = 0) or
                                     (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0)));
       tvFeeTmpNewITEMS.Focused := tvFeeTmpNewITEMS.Options.Focusing;
   end;

   if APrevFocusedItem.Caption = 'Date' then
   begin
      if (not VarIsNull(APrevFocusedItem.DataBinding.Item.EditValue)) then
      begin
         if (qryFeeTmp.FieldbyName('CREATED').AsDateTime > (now + 365)) or
            (qryFeeTmp.FieldbyName('CREATED').AsDateTime < (now - 180)) and
            (qryFeeTmp.FieldbyName('TIME_TYPE').AsString <> 'H') then
         begin
            if MsgWarn('Date entered is greater than 1 year in the future or older than 6 months. Set Date to Todays'' date?') = mrYes then
               qryFeeTmp.FieldbyName('CREATED').AsDateTime := Now;
         end;
      end;
   end;

   if AFocusedItem.Caption = 'Description' then
   begin
//       TcxPopupEdit(tvFeeTmpREASON).DroppedDown := True;
      if lvFeeTmp.GridView = tvFeeTmp then
      begin
         if (dmAxiom.TimeSheetDescAutoDrop = 'Y') then
            tvFeeTmp.Controller.EditingController.ShowEdit(tvFeeTmpREASON);
      end
      else
      begin
         if (dmAxiom.TimeSheetDescAutoDrop = 'Y') then
            tvFeeTmpNew.Controller.EditingController.ShowEdit(tvFeeTmpREASON);
      end;
   end;

   if (APrevFocusedItem.Caption = 'Description') then
   begin
// AES 13-03-2014
//      if RichEdit1.Modified then
//      begin
         if qryFeeTmp.State = dsBrowse then
            qryFeeTmp.Edit;
         if (SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y') then
         begin
            if lvFeeTmp.GridView = tvFeeTmp then
//               qryFeeTmp.FieldByName('REASON').AsString := UpperCase(Trim(memoDescription.Text))
            else
               qryFeeTmp.FieldByName('REASON').AsString := UpperCase(Trim(qryFeeTmp.FieldByName('REASON').AsString));
         end
         else
            if (lvFeeTmp.GridView = tvFeeTmp) then
//               qryFeeTmp.FieldByName('REASON').AsString := Trim(memoDescription.Text);
//      end;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
   iUnits,
   fUnits,
   iFracUnits: double;
//   iElapsed,
//   iElapsedNew,
   iUnique: variant;
   ADataSet: TDataset;
begin
   if dmAxiom.bShutDown = False then
   begin
      if qryFeeTmp.State = dsEdit then
         qryFeeTmp.Post;
      ADataSet := TcxGridDBTableView(Sender).DataController.DataSet;

      if (ADataSet.FieldByName('NFEE').IsNull = False) then
      begin
         if (tmrAutocost.Enabled = True) then
            StartStopTimer(APrevFocusedRecord.Values[tvFeeTmpNewUNIQUEID.Index]);  // btnTimer.Click;
      end;

      if (APrevFocusedRecord <> nil) and (tmrAutocost.Enabled = True) then
      begin
         iUnique := APrevFocusedRecord.Values[ tvFeeTmpNewUNIQUEID.Index ];

//         if ADataSet <> nil then
//            iElapsedNew := ADataSet.FieldByName('ELAPSED').AsInteger;

            qryTmp.Close;
            qryTmp.SQL.Text := 'select elapsed, units from  feetmp where uniqueid = :p_uniqueid';
            qryTmp.ParamByName('p_uniqueid').AsInteger := iUnique;
            qryTmp.Open;
            iUnits := qryTmp.FieldByName('UNITS').AsFloat;
            qryTmp.Close;
//         iElapsedNew := tvFeeTmpNew.DataController.DataSet.Lookup('uniqueid',iUnique, 'Elapsed');

//         iElapsed := APrevFocusedRecord.Values[ tvFeeTmpNewELAPSED.Index ];
//         iElapsedNew := AFocusedRecord.Values[ tvFeeTmpNewELAPSED.Index ];
         if (FElapsedUnits > 0 {VarIsNull(iElapsed) = False}) and
            (tmrAutocost.Enabled = True) and (bLocalUpdate = False) then
         begin
            bLocalUpdate := False;
            if iUnits = 0 then
               iUnits := 1;

            if (iMinsPerUnit = 0) then
            begin
               if ((iUnits * (iMinsPerUnit*60)) > FElapsedUnits) then
                   FElapsedUnits := (iUnits * iMinsPerUnit)
               else
 //                  iUnits := (((FElapsedUnits div 60) div iMinsPerUnit));
            end;
            iFracUnits := frac(((FElapsedUnits / 60) / iMinsPerUnit));
            iUnits := ((round(FElapsedUnits) div 60) div iMinsPerUnit);

            if (iFracUnits > 0) and (iFracUnits <> 5) then
               iUnits := iUnits + 1;

//             if (FElapsedUnits mod 60) > 0 then
//                iUnits := iUnits + 1;

            qryTmp.Close;
            qryTmp.SQL.Text := 'update feetmp set elapsed = :p_elapsed, units = :p_units where uniqueid = :p_uniqueid';
            qryTmp.ParamByName('p_elapsed').AsFloat := FElapsedUnits;
            qryTmp.ParamByName('p_units').AsFloat := iUnits;
            qryTmp.ParamByName('p_uniqueid').AsInteger := iUnique;
            qryTmp.Execute;

            bLocalUpdate := True;
//             ADataSet.Post;

//             if iElapsedNew > 0 then
//                FElapsedUnits := iElapsedNew;

            CalcAmount;
         end;
         CalcStatusBar(FElapsedUnits);
         bLocalUpdate := False;
      end;

      if (AFocusedRecord <> nil) and (tmrAutocost.Enabled = True) then
      begin
         try
            iUnique := AFocusedRecord.Values[ tvFeeTmpNewUNIQUEID.Index ];
            qryTmp.Close;
            qryTmp.SQL.Text := 'select elapsed, units from  feetmp where uniqueid = :p_uniqueid';
            qryTmp.ParamByName('p_uniqueid').AsInteger := iUnique;
            qryTmp.Open;

            FElapsedUnits := qryTmp.FieldByName('Elapsed').AsInteger;
         finally
            qryTmp.Close;
            CalcStatusBar(FElapsedUnits);
         end;
      end;

      if (tmrAutocost.Enabled = False) and (tvFeeTmpNew.ViewData.RowCount > 0) and
         (AFocusedRecord <> nil) then
      begin
         try
            iUnique := AFocusedRecord.Values[ tvFeeTmpNewUNIQUEID.Index ];
            if VarIsNull(iUnique) = False then
            begin
               qryTmp.Close;
               qryTmp.SQL.Text := 'select elapsed, units from  feetmp where uniqueid = :p_uniqueid';
               qryTmp.ParamByName('p_uniqueid').AsInteger := iUnique;
               qryTmp.Open;

               FElapsedUnits := qryTmp.FieldByName('Elapsed').AsInteger;
            end;
         finally
            qryTmp.Close;
            CalcStatusBar(FElapsedUnits);
         end;
      end;

{      if (APrevFocusedRecord <> nil) and (AFocusedRecord <> nil) then
      begin
         if (VarIsNull(APrevFocusedRecord.Values[tvFeeTmpNewNFEE.Index]) = True) and (dmAxiom.auto_process_timesheet = 'Y') and
            (APrevFocusedRecord <> nil) or (APrevFocusedRecord.Values[tvFeeTmpNewUNIQUEID.Index] <> AFocusedRecord.Values[tvFeeTmpNewUNIQUEID.Index] or (AFocusedRecord <> nil)) then
            ProcessTimeSheet(APrevFocusedRecord.Values[tvFeeTmpNewUNIQUEID.Index]);
      end;      }

      if (Sender.DataController.RowCount > 1) then
      begin
         if TcxCustomGridTableView(Sender).Name = 'tvFeeTmp' then
         begin
            tvFeeTmpTYPE.Options.Focusing := True;
            tvFeeTmpITEMS.Options.Focusing := ((tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString <> '') and
                                              ((TableInteger('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'DFLT_TIME_UNITS') <> 0) or
                                              (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0)));
         end
         else
         begin
            tvFeeTmpNewTYPE.Options.Focusing := True;
            tvFeeTmpNewITEMS.Options.Focusing := ((tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString <> '') and
                                                 ((TableInteger('SCALECOST','CODE',tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString, 'DEFAULTTIME') <> 0) or         //DFLT_TIME_UNITS
                                                 (TableCurrency('SCALECOST','CODE',tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0)));
         end;
      end;
   end;
end;

procedure TfrmTimeSheet.dtpDatePropertiesChange(Sender: TObject);
begin
   try
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
//      qryFeeTmp.ApplyUpdates();
      if qryFeeTmp.Modified then
         qryFeeTmp.Post;
      MakeSQL;
      if dtpDate.Date > (trunc(Today)+ 180) then
         dtpDate.Date := Today;
      lblDay.Style.Font.Color := clDefault;
      lblDay.Style.Font.Style := [];
      if dtpDate.Date <> Today then
      begin
         lblDay.Style.Font.Color := clRed;
         lblDay.Style.Font.Style := [fsBold];
      end
      else
      begin
         lblDay.Style.Font.Color := clDefault;
         lblDay.Style.Font.Style := [];
      end;
      lblDay.Caption := days[DayOfWeek(dtpDate.Date)];
      CalcDailyTotal;
      PostMessage(Self.Handle, WM_MYWIP , 1, 0);
//      SetMyWIP;
   finally
      tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpFILEIDPropertiesInitPopup(Sender: TObject);
var
   ASort: string;
   ASortColumn: integer;
begin
   if (qryMRUList.Active = False) then
      qryMRUList.Open;
   qryMRUList.Refresh;
   ASort := SettingLoadString('TIME_SHEET','MATTER_ORDER_TYPE');
   ASortColumn := SettingLoadInteger('TIME_SHEET','MATTER_ORDER_COLUMN');
   if Asort <> '' then
   begin
      if ASort = 'Asc' then
         TcxLookupComboBox(Sender).Properties.ListColumns[ASortColumn].SortOrder := soAscending
      else
         TcxLookupComboBox(Sender).Properties.ListColumns[ASortColumn].SortOrder := soDescending;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpEditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
var
   lFileID,
   lFoundFileID: string;
begin
   if AItem = tvFeeTmpNewREASON then
   begin
      if Key = ' ' then
         QuickCode(TcxMemo(AEdit), TcxMemo(AEdit).Text);
   end;

   if Aitem = tvFeeTmpNewFILEID then
   begin
      if (key = #$D) then
      begin
         lFileID := PadFileID(TcxTextEdit(AEdit).Text);
         dmAxiom.FindMatter(lFoundFileID, lFileID);
         TcxTextEdit(AEdit).Text := lFoundFileID;
         TcxTextEdit(AEdit).ValidateEdit();
      end;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpFEE_TEMPLATEPropertiesCloseUp(
  Sender: TObject);
var
  selectedValue : String;
  bRateItem: boolean;
begin
   try
      selectedValue := TcxLookupComboBox(Sender).Text;
      if (selectedValue <> '') then
      begin
         if not qryFeeTmp.Modified then
            qryFeeTmp.Edit;
         qryScaleCost.Close();
         qryScaleCost.ParambyName('p_code').AsString := selectedValue;
         qryScaleCost.Open();
         bRateItem := ((qryScaleCost.FieldByName('RATE').AsCurrency <> 0) and
                       (qryScaleCost.FieldByName('DEFAULTTIME').AsInteger <> 0));
         qryFeeTmp.FieldByName('REASON').AsString := qryScaleCost.FieldByName('DESCR').AsString;
         qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := qryScaleCost.FieldByName('CODE').AsString;
         qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := 0;
         qryFeeTmp.FieldByName('ITEM_AMOUNT').AsCurrency := 0;
         if bRateItem then
         begin
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, String(cbAuthor.EditValue), qryFeeTmp.FieldByName('CREATED').AsDateTime);  //qryScaleCost.FieldByName('RATE').AsCurrency;
            if qryScaleCost.FieldByName('DEFAULTTIME').AsFloat > 0 then
               qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency * qryScaleCost.FieldByName('DEFAULTTIME').AsFloat
            else
               qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency;
            qryFeeTmp.FieldByName('ITEM_AMOUNT').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency;
            qryFeeTmp.FieldByName('UNIT').AsString := qryScaleCost.FieldByName('UNIT').AsString;
            qryFeeTmp.FieldByName('TIME_CODE').AsString := qryScaleCost.FieldByName('UNIT').AsString;
            qryFeeTmp.FieldByName('ITEMS').AsString := qryScaleCost.FieldByName('DEFAULTTIME').AsString;
            if (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'M') or
               (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'H') then
               qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString
            else
               qryFeeTmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
         end
         else
         if (qryScaleCost.FieldByName('AMOUNT').AsCurrency > 0) then
         begin
            qryFeeTmp.FieldByName('AMOUNT').AsCurrency := qryScaleCost.FieldByName('AMOUNT').AsCurrency;
            qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCost.FieldByName('AMOUNT').AsCurrency;  //0.0;
            if (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'M') or
               (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'H') then
               qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString
            else
               qryFeeTmp.FieldByName('BILLTYPE').AsString := 'NonBillable';

            qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := selectedValue;
            qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := 0;

            if lvFeeTmp.GridView = tvFeeTmp then
               tvFeeTmpITEMS.Options.Focusing := False
            else
               tvFeeTmpNewITEMS.Options.Focusing := False;
//            UpdateTotals;
         end
         else
         begin
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);

            if (qryScaleCost.FieldByName('RATE').AsCurrency > 0) then
            begin
//               qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency;
               if (qryFeeTmp.FieldByName('RATE').AsCurrency = 0) and (qryScaleCost.FieldByName('ZERO_FEE').AsString = 'N') then
                  qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString,qryFeeTmp.FieldByName('CREATED').AsDateTime);
               qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency;
               qryFeeTmp.FieldByName('UNIT').AsString := qryScaleCost.FieldByName('UNIT').AsString;
            end;

            if (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'M') or
               (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'H') then
               qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString
            else
               qryFeeTmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
            if qryScaleCost.FieldByName('UNIT').AsString <> '' then
               qryFeeTmp.FieldByName('ITEMS').AsString := '1'
            else
               qryFeeTmp.FieldByName('ITEMS').AsString := '0';

            if lvFeeTmp.GridView = tvFeeTmp then
               tvFeeTmpITEMS.Options.Focusing := True
            else
               tvFeeTmpNewITEMS.Options.Focusing := True;

            CalcAmount;
         end;

         if qryScaleCost.FieldByName('ZERO_FEE').AsString = 'Y' then
         begin
            qryFeeTmp.FieldByName('AMOUNT').AsCurrency := 0;
            qryFeeTmp.FieldByName('RATE').AsCurrency := 0;
            qryFeeTmp.FieldByName('TAX').AsCurrency := 0;
         end;

        if lvFeeTmp.GridView = tvFeeTmp then
        begin
           tvFeeTmpREASON.Focused := True;
           if (dmAxiom.TimeSheetDescAutoDrop = 'Y') then
              TcxCustomPopupEditProperties(tvFeeTmpREASON).ImmediatePopup := True;
        end
        else
        begin
           tvFeeTmpNewREASON.Focused := True;

        end;
//         if (neAmount.Value <> FEnterAmount) then
//            CalcTax;
//         tvFeeTmpREASON.Focused := True;
      end
      else
      begin
//         qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString;
         if not qryFeeTmp.Modified then
            qryFeeTmp.Edit;
         if (qryFeeTmp.FieldbyName('TIME_TYPE').AsString = 'M') then
            qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable'
         else
         if (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'O') or
            (qryFeeTmp.FieldbyName('TIME_TYPE').AsString = 'H') then
            qryFeeTmp.FieldByName('BILLTYPE').AsString := 'NonBillable'
         else
            qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable';
         qryFeeTmp.FieldByName('FEE_TEMPLATE').Clear;

        if lvFeeTmp.GridView = tvFeeTmp then
           tvFeeTmpREASON.Focused := True
        else
//           tvFeeTmpNewREASON.Focused := True;
      end;
   except
      //
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpFEE_TEMPLATEPropertiesChange(
  Sender: TObject);
var
   selectedCell: string;
begin
   selectedCell := TcxLookupComboBox(Sender).Text;
   if selectedCell <> '' then
   begin
      qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := selectedCell;
      qryFeeTmp.FieldByName('UNIT').AsString := TableString('SCALECOST', 'CODE', selectedCell, 'UNIT');
      qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := TableCurrency('SCALECOST', 'CODE', selectedCell, 'RATE');
      qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString;
      if lvFeeTmp.GridView = tvFeeTmp then
         tvFeeTmpITEMS.Options.Focusing := True
      else
         tvFeeTmpNewItems.Options.Focusing := True;

      qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency;
      if (qryFeeTmp.FieldByName('RATE').AsCurrency = 0) and (qryScaleCost.FieldByName('ZERO_FEE').AsString = 'N') then
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString,qryFeeTmp.FieldByName('CREATED').AsDateTime);
//      qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString);
      if TableString('SCALECOST', 'CODE', selectedCell, 'trim(UNIT)') <> '' then
         qryFeeTmp.FieldByName('ITEMS').AsString := '1'
      else
         qryFeeTmp.FieldByName('ITEMS').AsString := '0';
   end
   else
   begin
      qryFeeTmp.FieldByName('FEE_TEMPLATE').Clear;
      qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := 0;
      qryFeeTmp.FieldByName('ITEMS').AsString := '0';

      if lvFeetmp.GridView = tvFeeTmp then
         tvFeeTmpITEMS.Options.Focusing := False
      else
         tvFeeTmpNewITEMS.Options.Focusing := False;
      qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
      CalcAmount;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpITEMSPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if (VarIsNull(DisplayValue) = False) and (DisplayValue <> '') then
   begin
      qryFeeTmp.FieldByName('ITEMS').AsString := DisplayValue;
      CalcAmount;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpFEE_TEMPLATEPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if lvFeeTmp.GridView = tvFeeTmp then
      tvFeeTmpITEMS.Options.Focusing := ((DisplayValue <> '') and
                  ((TableInteger('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'DFLT_TIME_UNITS') <> 0) or
                  (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0)))
   else
      tvFeeTmpNewITEMS.Options.Focusing := ((DisplayValue <> '') and
                                          ((TableInteger('SCALECOST','CODE',tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString, 'DEFAULTTIME') <> 0) or          //DFLT_TIME_UNITS
                                          (TableCurrency('SCALECOST','CODE',tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0)));
end;

procedure TfrmTimeSheet.tvFeeTmpRATEPropertiesEditValueChanged(Sender: TObject);
begin
   CalcAmount;
end;

procedure TfrmTimeSheet.tvFeeTmpRATEPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if (VarIsNull(DisplayValue) = False) and (DisplayValue <> '') then
   begin
      qryFeeTmp.FieldByName('RATE').AsCurrency := DisplayValue;
      CalcAmount;
   end;
end;

procedure TfrmTimeSheet.SaveColumnData;
begin

end;

procedure TfrmTimeSheet.LoadColumnData;
begin

end;

procedure TfrmTimeSheet.CopyCurrentline1Click(Sender: TObject);
var
   dCreated: TDateTime;
   sFileId, sType,
   sMatterDetails, sAuthor,
   sFeeTemplate,
   sReason, sTaxcode,
   sUnit, sBillType,
   sColBillType:           string;
   nNMatter,
   Row:                    integer;
   cRate,
   nUnits,
   cAmount:                double;
   tv:                     TcxGridDBTableView;
   Data:                   TcxCustomDataController;
   DC:                     TcxGridTableController;
   tView:                  TcxGridViewData;

begin
   if tmrAutocost.Enabled then
   begin
      MessageDlg('You must stop the Timer before you can Copy an entry.',mtWarning, [mbOK], 0);
      Exit;
   end
   else
   begin
      // AES 19/09/2017 changed code from using dataset values to using values on the grid.
      tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
      Data := tv.DataController;
      DC := tv.Controller;
      tView := tv.ViewData;
      Row := DC.FocusedRowIndex;
      cRate := 0;
      cAmount := 0;
      if lvFeeTmp.GridView = tvFeeTmp then
      begin
         dCreated       := tView.GetRecordByIndex(Row).Values[tvFeeTmpCREATED.Index];
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpFILEID.Index]) then
            sFileId        := tView.GetRecordByIndex(Row).Values[tvFeeTmpFILEID.Index];  //tvFeeTmpNewFILEID.DataBinding.Field.AsString;
         sType          := tView.GetRecordByIndex(Row).Values[tvFeetmpTYPE.Index];  //tvFeetmpNewTYPE.DataBinding.Field.AsString;
         sMatterDetails := tView.GetRecordByIndex(Row).Values[tvFeeTmpMATTERDETAILS.Index];  //tvFeeTmpNewMATTERDETAILS.DataBinding.Field.AsString;
         sAuthor        := tView.GetRecordByIndex(Row).Values[tvFeeTmpAUTHOR.Index];  //tvFeeTmpNewAUTHOR.DataBinding.Field.AsString;
         nNMatter       := tView.GetRecordByIndex(Row).Values[tvFeeTmpNMATTER.Index];  //tvFeeTmpNewNMATTER.DataBinding.Field.AsInteger;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpFEE_TEMPLATE.Index]) then
            sFeeTemplate   := tView.GetRecordByIndex(Row).Values[tvFeeTmpFEE_TEMPLATE.Index];  //tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString;
         sReason        := tView.GetRecordByIndex(Row).Values[tvFeeTmpREASON.Index];  //tvFeeTmpNewREASON.DataBinding.Field.AsString;
         sUnit          := tView.GetRecordByIndex(Row).Values[tvFeeTmpUNIT.Index];  //tvFeeTmpNewUNIT.DataBinding.Field.AsString;
         sTaxcode       := tView.GetRecordByIndex(Row).Values[tvFeeTmpTAXCODE.Index];  //tvFeeTmpNewTAXCODE.DataBinding.Field.AsString;
         cRate          := tView.GetRecordByIndex(Row).Values[tvFeeTmpRATE.Index];  //tvFeeTmpNewRATE.DataBinding.Field.AsCurrency;
         cAmount        := tView.GetRecordByIndex(Row).Values[tvFeeTmpAMOUNT.Index];
         sColBillType   := tView.GetRecordByIndex(Row).Values[tvFeeTmpBILLTYPE.Index];

         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpBILLTYPE.Index]) then
         begin
            sColBillType   := tView.GetRecordByIndex(Row).Values[tvFeeTmpBILLTYPE.Index];
            if (sColBillType {tvFeeTmpNewBILLTYPE.DataBinding.Field.AsString} = 'Yes') then
               sBillType   := 'Billable'
            else
               sBillType   := 'NonBillable';
         end;
         if (sBillType = '') then
            sBillType   := 'Billable';

         nUnits         := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewUNITS.Index];  //tvFeeTmpNewUNITS.DataBinding.Field.AsFloat;

{         dCreated       := tvFeeTmpCREATED.DataBinding.Field.AsDateTime;
         sFileId        := tvFeeTmpFILEID.DataBinding.Field.AsString;
         sType          := tvFeetmpTYPE.DataBinding.Field.AsString;
         sMatterDetails := tvFeeTmpMATTERDETAILS.DataBinding.Field.AsString;
         sAuthor        := tvFeeTmpAUTHOR.DataBinding.Field.AsString;
         nNMatter       := tvFeeTmpNMATTER.DataBinding.Field.AsInteger;
         sFeeTemplate   := tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString;
         sReason        := tvFeeTmpREASON.DataBinding.Field.AsString;
         sUnit          := tvFeeTmpUNIT.DataBinding.Field.AsString;
         sTaxcode       := tvFeeTmpTAXCODE.DataBinding.Field.AsString;
         cRate          := tvFeeTmpRATE.DataBinding.Field.AsCurrency;
         if (tvFeeTmpBILLTYPE.DataBinding.Field.AsString = 'Yes') then
            sBillType   := 'Billable'
         else
            sBillType   := 'NonBillable';
         nUnits         := tvFeeTmpUNITS.DataBinding.Field.AsFloat;  }
      end
      else
      begin
//         VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeeTmpPROCESS.Index]);
         dCreated       := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewCREATED.Index];  //tvFeeTmpNewCREATED.DataBinding.Field.AsDateTime;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewFILEID.Index]) then
            sFileId        := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewFILEID.Index];  //tvFeeTmpNewFILEID.DataBinding.Field.AsString;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeetmpNewTYPE.Index]) then
            sType          := tView.GetRecordByIndex(Row).Values[tvFeetmpNewTYPE.Index];  //tvFeetmpNewTYPE.DataBinding.Field.AsString;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewMATTERDETAILS.Index]) then
            sMatterDetails := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewMATTERDETAILS.Index];  //tvFeeTmpNewMATTERDETAILS.DataBinding.Field.AsString;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewAUTHOR.Index]) then
            sAuthor        := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewAUTHOR.Index];  //tvFeeTmpNewAUTHOR.DataBinding.Field.AsString;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewNMATTER.Index]) then
            nNMatter       := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewNMATTER.Index];  //tvFeeTmpNewNMATTER.DataBinding.Field.AsInteger;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewFEE_TEMPLATE.Index]) then
            sFeeTemplate   := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewFEE_TEMPLATE.Index];  //tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewREASON.Index]) then
            sReason        := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewREASON.Index];  //tvFeeTmpNewREASON.DataBinding.Field.AsString;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewUNIT.Index]) then
            sUnit          := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewUNIT.Index];  //tvFeeTmpNewUNIT.DataBinding.Field.AsString;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewTAXCODE.Index]) then
            sTaxcode       := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewTAXCODE.Index];  //tvFeeTmpNewTAXCODE.DataBinding.Field.AsString;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewRATE.Index]) then
            cRate          := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewRATE.Index];  //tvFeeTmpNewRATE.DataBinding.Field.AsCurrency;
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewAMOUNT.Index]) then
            cAmount        := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewAMOUNT.Index];

         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewBILLTYPE.Index]) then
         begin
            sColBillType   := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewBILLTYPE.Index];
            if (sColBillType {tvFeeTmpNewBILLTYPE.DataBinding.Field.AsString} = 'Yes') then
               sBillType   := 'Billable'
            else
               sBillType   := 'NonBillable';
         end;
         if (sBillType = '') then
            sBillType   := 'Billable';
         if not VarIsNull(tView.GetRecordByIndex(Row).Values[tvFeeTmpNewUNITS.Index]) then
            nUnits         := tView.GetRecordByIndex(Row).Values[tvFeeTmpNewUNITS.Index];  //tvFeeTmpNewUNITS.DataBinding.Field.AsFloat;
      end;

      FLineCopied := True;
      if lvFeeTmp.GridView = tvFeeTmp then
         qryFeeTmp.Insert
      else
         qryFeeTmp.Append;
      qryFeeTmp.FieldByname('CREATED').AsDateTime := dCreated;
      qryFeeTmp.FieldByname('FILEID').AsString := sFileId;
      qryFeeTmp.FieldByname('AUTHOR').AsString := sAuthor;
      qryFeeTmp.FieldByName('NMATTER').AsInteger := nNMatter;
      qryFeeTmp.FieldByname('REASON').AsString := sReason;
      qryFeeTmp.FieldByName('MATLOCATE').AsString := sMatterDetails;
 //     qryFeeTmp.FieldByName('UNITS').AsInteger := StrToInt(neUnits.Text);
      qryFeeTmp.FieldByName('TAXCODE').AsString := sTaxcode;
      qryFeeTmp.FieldbyName('TIME_TYPE').AsString := sType;
      qryFeeTmp.FieldbyName('BILLTYPE').AsString := sBillType;
      if sType = 'M' then
         qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[1]
      else if sType = 'O' then
         qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[2]
      else if sType = 'O' then
         qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[3];

      if sFeeTemplate <> '' then
      begin
         qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := sFeeTemplate;
         if TableString('SCALECOST', 'CODE', sFeeTemplate, 'UNIT') <> '' then
            qryFeeTmp.FieldByName('ITEMS').AsInteger := 1
         else
            qryFeeTmp.FieldByName('ITEMS').AsInteger := 0;
         qryFeeTmp.FieldByName('UNIT').AsString := sUnit;

         if lvFeeTmp.GridView = tvFeeTmp then
            tvFeeTmpITEMS.Options.Focusing := True
         else
            tvFeeTmpNewITEMS.Options.Focusing := True;
      end
      else
      begin
         if lvFeeTmp.GridView = tvFeeTmp then
            tvFeeTmpITEMS.Options.Focusing := False
         else
            tvFeeTmpNewITEMS.Options.Focusing := False;
         qryFeeTmp.FieldByName('ITEMS').AsInteger := 0;
      end;
      qryFeeTmp.FieldByName('UNITS').AsFloat := nUnits;
      qryFeeTmp.FieldByName('RATE').AsCurrency := cRate;
      qryFeeTmp.FieldByName('EMPCODE').AsString := dmAxiom.UserId;
      qryFeeTmp.FieldbyName('EMP_TYPE').AsString := TableString('EMPLOYEE','CODE',String(cbAuthor.EditValue),'TYPE');
      qryFeeTmp.FieldbyName('VERSION').AsString := dmAxiom.GetVersionInfo; // dmAxiom.Version + '.' + IntToStr(dmAxiom.BuildNumber);
      qryFeeTmp.FieldbyName('AMOUNT').AsFloat := cAmount;
      if lvFeeTmp.GridView = tvFeeTmp then
         tvFeeTmpTYPE.Options.Focusing := True
      else
         tvFeeTmpNewTYPE.Options.Focusing := True;
   end;
end;

procedure TfrmTimeSheet.cbShowFeesClick(Sender: TObject);
var
   bCheckedValue: boolean;
begin
   bCheckedValue := TcxCheckBox(Sender).Checked;
   if tmrAutocost.Enabled then
   begin
      MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
//      TcxCheckBox(Sender).Checked := not bCheckedValue;
      Exit;
   end
   else
   begin
      if qryFeeTmp.Modified then
         qryFeeTmp.Post;
      MakeSQL;
   end;
end;

procedure TfrmTimeSheet.cbShowFeesPropertiesChange(Sender: TObject);
var
   bCheckedValue: boolean;
begin
//   bCheckedValue := TcxCheckBox(Sender).Checked;
   try
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      if tmrAutocost.Enabled then
      begin
         MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
//         TcxCheckBox(Sender).Checked := not bCheckedValue;
         Exit;
      end
      else
      begin
         if qryFeeTmp.Modified then
            qryFeeTmp.Post;
         MakeSQL;
      end;
   finally
      tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   end;
end;

procedure TfrmTimeSheet.cbShowFeesPropertiesEditValueChanged(Sender: TObject);
begin
   if boolean(cbShowTime.EditValue) then
      SettingSave('FEEBATCH','SHOWALLENTRIES',1)
   else
      SettingSave('FEEBATCH','SHOWALLENTRIES',0);
end;

procedure TfrmTimeSheet.cbShowTasksPropertiesChange(Sender: TObject);
var
   bCheckedValue: boolean;
begin
//   bCheckedValue := TcxCheckBox(Sender).Checked;
   try
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      if tmrAutocost.Enabled then
      begin
         MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
//         TcxCheckBox(Sender).Checked := not bCheckedValue;
         Exit;
      end
      else
      begin
         if qryFeeTmp.Modified then
            qryFeeTmp.Post;
         MakeSQL;
      end;
   finally
      tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   end;
end;

procedure TfrmTimeSheet.cbShowTasksPropertiesEditValueChanged(Sender: TObject);
begin
   if boolean(cbShowTasks.EditValue) then
      SettingSave('FEEBATCH','SHOWTASKENTRIES',1)
   else
      SettingSave('FEEBATCH','SHOWTASKENTRIES',0);
end;

procedure TfrmTimeSheet.cbShowTimeClick(Sender: TObject);
var
   bCheckedValue: boolean;
begin
   if boolean(cbShowTime.EditValue) then
      SettingSave('FEEBATCH','SHOWALLENTRIES',1)
   else
      SettingSave('FEEBATCH','SHOWALLENTRIES',0);

//   bCheckedValue := TcxCheckBox(Sender).Checked;
   if tmrAutocost.Enabled then
   begin
      MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
//      TcxCheckBox(Sender).Checked := not bCheckedValue;
      Exit;
   end
   else
   begin
      if qryFeeTmp.Modified then
         qryFeeTmp.Post;
      MakeSQL;
   end;
end;

procedure TfrmTimeSheet.cbShowTimePropertiesChange(Sender: TObject);
var
   bCheckedValue: boolean;
begin
//   bCheckedValue := TcxCheckBox(Sender).Checked;
   try
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      if tmrAutocost.Enabled then
      begin
         MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
//         TcxCheckBox(Sender).Checked := not bCheckedValue;
         Exit;
      end
      else
      begin
         if qryFeeTmp.Modified then
            qryFeeTmp.Post;
         MakeSQL;
      end;
   finally
      tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   end;
end;

procedure TfrmTimeSheet.cbShowTimePropertiesEditValueChanged(Sender: TObject);
begin
   if boolean(cbShowTime.EditValue) then
      SettingSave('FEEBATCH','SHOWALLENTRIES',1)
   else
      SettingSave('FEEBATCH','SHOWALLENTRIES',0);
end;

procedure TfrmTimeSheet.cbSpecificDatePropertiesChange(Sender: TObject);
begin
   try
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      if tmrAutocost.Enabled then
      begin
         MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
         Exit;
      end
      else
         MakeSQL;
   finally
      tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
   end;
end;

procedure TfrmTimeSheet.cbSpecificDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  if boolean(cbSpecificDate.EditValue) then
     SettingSave('FEEBATCH','SHOWDAYONLYENTRIES',1)
  else
     SettingSave('FEEBATCH','SHOWDAYONLYENTRIES',0);

   if qryFeeTmp.Modified then
      qryFeeTmp.Post;
end;

procedure TfrmTimeSheet.cbTimeSheetViewByRecorderClick(Sender: TObject);
begin
   if qryFeeTmp.Modified then
      qryFeeTmp.Post;
   MakeSQL;
end;

procedure TfrmTimeSheet.tbFeeEnquiryClick(Sender: TObject);
var
   frmFeeListNew: TfrmFeeListNew;
begin
//   Application.CreateForm(TfrmFeeListNew, frmFeeListNew);
//   frmDesktop.fdTab.AddForm(frmFeeListNew, true);
   frmDesktop.FindorCreate(TfrmFeeListNew, 111).Show;
end;

procedure TfrmTimeSheet.popGridPopup(Sender: TObject);
var
   bEnabled,
   bSelected:  boolean;
   aBillType:  string;
   I:          string;
   tv:         TcxGridDBTableView;
   tView:      TcxGridViewData;
begin
   tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
   tView := tv.ViewData;
   if (lvFeeTmp.GridView = tvFeeTmp) then
   begin
      bEnabled    := (tvFeeTmpNFEE.DataBinding.Field.AsString = '');
      aBillType   := tvFeeTmpTYPE.DataBinding.Field.AsString;
      dxButtonInsertAbove.Enabled := False;
      bbtnCompleteTask.Enabled := (tvFeeTmpIS_TASK.DataBinding.Field.AsString = 'Y');
   end
   else
   begin
      bEnabled    := (tvFeeTmpNewNFEE.DataBinding.Field.AsString = '');
      aBillType   :=  tvFeeTmpNewTYPE.DataBinding.Field.AsString;
      bbtnCompleteTask.Enabled := (tvFeeTmpNewIS_TASK.DataBinding.Field.AsString = 'Y');
   end;

   if VarIsNull(tView.GetRecordByIndex(tv.Controller.FocusedRowIndex).Values[tvFeeTmpPROCESS.Index]) then
      bSelected := False
   else
      bSelected := tView.GetRecordByIndex(tv.Controller.FocusedRowIndex).Values[tvFeeTmpPROCESS.Index];

   popRemove.Enabled := bEnabled and (tv.DataController.RecordCount > 0) and (tv.Controller.SelectedRowCount > 0) and bSelected;
   popEdit.Enabled := bEnabled;
   popGridDateStamp.Enabled := bEnabled and (tv.DataController.RecordCount > 0) and (tv.Controller.SelectedRowCount > 0);
   popDescription.Enabled := bEnabled;
   popQuickCode.Enabled := bEnabled;
   bbFeeBasis.Enabled := (bEnabled and
                         (aBillType = 'M'));
//   popMatter.Enabled := (bEnabled and
//                        (aBillType = 'M'));
   dxButtonInsertAbove.Enabled := (tv.DataController.RecordCount > 0) and (tv.Controller.SelectedRowCount > 0);
//   for I := 0 to tvFeeTmp.SortedItemCount - 1 do


   btnRemoveSort.Enabled := (tv.SortedItemCount > 0); // SortedItems[I].Name <> '');
   popCopyCurrentLine.Enabled := (tv.Controller.SelectedRowCount > 0) and (tv.DataController.RecordCount > 0);
end;

procedure TfrmTimeSheet.CalcUnpostedTotals;
begin
   with qryUnpostedTotals do
   begin
      close;
      ParambyName('CREATED').Clear;
      ParamByName('alltrans').AsInteger := 1;
      ParambyName('AUTHOR').AsString := String(cbAuthor.EditValue);
      if (boolean(cbSpecificDate.EditValue) = False) then
         ParambyName('CREATED').AsDate := dtpDate.Date;
      if boolean(cbShowFees.EditValue) and boolean(cbShowTime.EditValue) then
         ParamByName('alltrans').AsInteger := 1;
      Open;
      while not Eof do
      begin
         if FieldByName('TYPE').AsString = 'MB' then
            lblUnPostedMatters.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'MN' then
            lblNonBillableMatters.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'O' then
            lblUnPostedOverhead.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'H' then
            lblUnPostedHeld.Caption := FieldByName('UNITS').AsString;
         next;
      end;
   end;
end;

procedure TfrmTimeSheet.CalcUnpostedAmountTotals;
begin
   with qryUnPostedAmountTotals do
   begin
      close;
      ParambyName('CREATED').Clear;
      ParamByName('alltrans').AsInteger := 1;
      ParambyName('AUTHOR').AsString := String(cbAuthor.EditValue);
      if (boolean(cbSpecificDate.EditValue) = False) then
         ParambyName('CREATED').AsDate := dtpDate.Date;
      if boolean(cbShowFees.EditValue) and boolean(cbShowTime.EditValue) then
         ParamByName('alltrans').AsInteger := 1;
      Open;
      while not Eof do
      begin
         if FieldByName('TYPE').AsString = 'MB' then
            lblPostedMatters.Caption := Format('%.2m', [FieldByName('TOTAL').AsCurrency]);
         if FieldByName('TYPE').AsString = 'O' then
            lblPostedOverhead.Caption := Format('%.2m', [FieldByName('TOTAL').AsCurrency]);
         if FieldByName('TYPE').AsString = 'MN' then
            lblNonBillableAmount.Caption := Format('%.2m', [FieldByName('TOTAL').AsCurrency]);
         next;
      end;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
   if dmAxiom.bShutdown = False then
   begin
 {  if lvFeeTmp.GridView = tvFeeTmp then
   begin
      if ((VarIsNull(tvFeeTmpNFEE.EditValue) or
         (tvFeeTmpNFEE.EditValue = '')) and
         (VarIsNull(tvFeeTmpTASK_COMPLETED.EditValue) or
         (tvFeeTmpTASK_COMPLETED.EditValue = ''))) then
         AAllow := True
      else
         AAllow := False;
   end
   else
   begin  }
      if ((VarIsNull(tvFeeTmpNewNFEE.EditValue) or
         (tvFeeTmpNewNFEE.EditValue = '')) and
         (not VarIsNull(tvFeeTmpNewTASK_COMPLETED.EditValue) or
         (tvFeeTmpNewTASK_COMPLETED.EditValue <> ''))) then
         AAllow := True
      else
         AAllow := False;
   end;

  { if Sender.Controller.FocusedRecord.IsNewItemRecord then
   begin
      if qryFeeTmp.State <> dsInsert then
         qryFeeTmp.Insert;
   end;  }
end;

procedure TfrmTimeSheet.bbFeeBasisClick(Sender: TObject);
begin
   if lvFeeTmp.GridView = tvFeeTmp then
   begin
      try
         Application.CreateForm(TfrmSetFeeBasis, frmSetFeeBasis);
         with frmSetFeeBasis do
         begin
            frmSetFeeBasis.lblMatter.Caption := tvFeeTmpFILEID.EditValue;
            frmSetFeeBasis.lblDate.Caption := tvFeeTmpCREATED.EditValue;
            frmSetFeeBasis.cbFeeBasis.EditValue := qryFeeTmp.FieldByName('FEEBASIS').AsString;
            if ShowModal = mrOK then
            begin
               if qryFeeTmp.State = dsBrowse then qryFeeTmp.Edit;
               if VarIsNull(cbFeeBasis.EditValue) then
               begin
                  qryBillType.ParamByName('p_nmatter').AsString := tvFeeTmpFILEID.EditValue;
                  qryBillType.Open;
                  if not qryBillType.Eof then
                    qryFeeTmp.FieldByName('BILLTYPE').AsString := qryBillType.FieldByName('BillType').AsString
                  else
                    qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable';
               end
               else
               begin
                  qryFeeTmp.FieldByName('FEEBASIS').AsString := cbFeeBasis.EditValue;
                  qryFeeTmp.FieldByName('BILLTYPE').AsString := TableString('FEEBASIS','CODE',string(cbFeeBasis.EditValue),'BILLTYPE');
               end;
            end;
         end;
      finally
         frmSetFeeBasis.Free;
         if qryFeeTmp.Modified then qryFeeTmp.Post;
         CalcUnpostedTotals;
         CalcUnpostedAmountTotals;
      end;
   end
   else
   begin
      try
         Application.CreateForm(TfrmSetFeeBasis, frmSetFeeBasis);
         with frmSetFeeBasis do
         begin
            frmSetFeeBasis.lblMatter.Caption := tvFeeTmpNewFILEID.EditValue;
            frmSetFeeBasis.lblDate.Caption := tvFeeTmpNewCREATED.EditValue;
            frmSetFeeBasis.cbFeeBasis.EditValue := qryFeeTmp.FieldByName('FEEBASIS').AsString;
            if ShowModal = mrOK then
            begin
               if qryFeeTmp.State = dsBrowse then qryFeeTmp.Edit;
               if VarIsNull(cbFeeBasis.EditValue) then
               begin
                  qryBillType.ParamByName('p_nmatter').AsString := tvFeeTmpNewFILEID.EditValue;
                  qryBillType.Open;
                  if not qryBillType.Eof then
                    qryFeeTmp.FieldByName('BILLTYPE').AsString := qryBillType.FieldByName('BillType').AsString
                  else
                    qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable';
               end
               else
               begin
                  qryFeeTmp.FieldByName('FEEBASIS').AsString := cbFeeBasis.EditValue;
                  qryFeeTmp.FieldByName('BILLTYPE').AsString := TableString('FEEBASIS','CODE',string(cbFeeBasis.EditValue),'BILLTYPE');
               end;
            end;
         end;
      finally
         frmSetFeeBasis.Free;
         if qryFeeTmp.Modified then qryFeeTmp.Post;
         CalcUnpostedTotals;
         CalcUnpostedAmountTotals;
      end;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpFILEIDPropertiesEditValueChanged(
  Sender: TObject);
var
  selectedRow : String;
  LBillType: string;
begin
   if bMatterValidated = False then
   begin
      bMatterValidated := True;
      selectedRow := UpperCase(TcxLookupComboBox(Sender).Text);

      // If search selected, open matter search screen
      if selectedRow = 'SEARCH...' then
      begin
         TcxCustomDropDownEdit(Sender).DroppedDown := False;

         TcxLookupComboBox(Sender).Properties.IncrementalFiltering := False;
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

         if frmMatterSearch.ShowModal = mrOk then
         begin
            if (dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '') then
            begin
               frmMatterSearch.Invalidate;
               if not qryFeeTmp.Modified then
                  qryFeeTmp.Edit;
               if (qryFeeTmp.FieldbyName('TIME_TYPE').IsNull) or
                  (qryFeeTmp.FieldbyName('TIME_TYPE').AsString = dmAxiom.DefaultTimeType) then
                  qryFeeTmp.FieldbyName('TIME_TYPE').AsString := 'M';
               LBillType := TableString('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'BILLTYPE');
               if LBillType = '' then
                  LBillType := 'Billable';
               qryFeeTmp.FieldByName('BILLTYPE').AsString := LBillType;
               qryFeeTmp.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
               qryFeeTmp.FieldByName('NMATTER').AsInteger := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;

               if lvFeeTmp.GridView = tvFeeTmp then
                  tvFeeTmpMATTERDETAILS.DataBinding.Field.AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' '+
                                                                      dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString
               else
                  tvFeeTmpNewMATTERDETAILS.DataBinding.Field.AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' '+
                                                                      dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString;
               if qryFeeTmp.FieldByName('FEE_TEMPLATE').IsNull or
                  (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'AMOUNT') = 0)  and
                  (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'RATE') = 0)then
                  qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);

               if lvFeeTmp.GridView = tvFeeTmp then
               begin
                  if tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString = '' then
                     DoBillType(qryFeeTmp.FieldByName('FILEID').AsString);
               end
               else
               begin
                  if tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString = '' then
                     DoBillType(qryFeeTmp.FieldByName('FILEID').AsString);
               end;

               CalcAmount;
               TcxLookupComboBox(Sender).Properties.IncrementalFiltering := True;
               ReopenListUpdate('MATTER', qryFeeTmp.FieldByName('FILEID').AsString)
            end;
         end
         else begin
            qryFeeTmp.FieldByName('FILEID').Clear;
            qryFeeTmp.FieldByName('NMATTER').Clear;

            if lvFeeTmp.GridView = tvFeeTmp then
            begin
               tvFeeTmpMATTERDETAILS.DataBinding.Field.Clear;
               tvFeeTmpTYPE.Options.Focusing := True;
            end
            else
            begin
               tvFeeTmpNewMATTERDETAILS.DataBinding.Field.Clear;
               tvFeeTmpNewTYPE.Options.Focusing := True;
            end;

            TcxLookupComboBox(Sender).Text := '';
            selectedRow := '';
            if qryFeeTmp.FieldbyName('TIME_TYPE').IsNull then
               qryFeeTmp.FieldByName('ITEMS').AsString := dmAxiom.DefaultTimeType;
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
         end;
      end
      // If recent matter selected, obtain matter details
      else
      if selectedRow <> '' then
      begin
         selectedRow := PadFileID(selectedRow);
         if DebtorStopWork(MatterString(selectedRow,'DEBTORSTATUS')) then
         begin
            MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded');
            selectedRow := '';
            qryFeeTmp.FieldByName('FILEID').Clear;
            qryFeeTmp.FieldByName('NMATTER').Clear;
            qryFeeTmp.FieldbyName('TIME_TYPE').AsString := 'O';
         end
         else
         begin
            qryMSearch.Close;
            qryMSearch.ParamByName('P_FILEID').AsString :=  selectedRow;
            qryMSearch.Open;

            if not qryFeeTmp.Modified then
              qryFeeTmp.Edit;

            if (qryFeeTmp.FieldbyName('TIME_TYPE').IsNull or
               (qryFeeTmp.FieldbyName('TIME_TYPE').AsString = dmAxiom.DefaultTimeType ))then
               qryFeeTmp.FieldbyName('TIME_TYPE').AsString := 'M';

            if qryFeeTmp.FieldbyName('TIME_TYPE').AsString = 'M' then
            begin
               if lvFeeTmp.GridView = tvFeeTmp then
                  tvFeeTmpTYPE.Options.Focusing := False
               else
                  tvFeeTmpNewTYPE.Options.Focusing := False;
            end
            else
            begin
               if lvFeeTmp.GridView = tvFeeTmp then
                  tvFeeTmpTYPE.Options.Focusing := True
               else
                  tvFeeTmpNewTYPE.Options.Focusing := True;
            end;
//            qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable';
            LBillType := TableString('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'BILLTYPE');
            if LBillType = '' then
               LBillType := 'Billable';
            qryFeeTmp.FieldByName('BILLTYPE').AsString := LBillType;
            qryFeeTmp.FieldByName('FILEID').AsString := qryMSearch.FieldByName('FILEID').AsString;
            qryFeeTmp.FieldByName('NMATTER').AsInteger := qryMSearch.FieldByName('NMATTER').AsInteger;
            if lvFeeTmp.GridView = tvFeeTmp then
               tvFeeTmpMATTERDETAILS.DataBinding.Field.AsString := qryMSearch.FieldByName('TITLE').AsString + ' '+
                                                                  qryMSearch.FieldByName('SHORTDESCR').AsString
            else
               tvFeeTmpNewMATTERDETAILS.DataBinding.Field.AsString := qryMSearch.FieldByName('TITLE').AsString + ' '+
                                                                  qryMSearch.FieldByName('SHORTDESCR').AsString;

            if (qryScaleCost.Active = False) and not VarIsNull(tvFeeTmpNewFEE_TEMPLATE.EditValue) then
            begin
               qryScaleCost.Close();
               qryScaleCost.ParambyName('p_code').AsString := tvFeeTmpNewFEE_TEMPLATE.EditValue;
               qryScaleCost.Open();
            end;

            if qryFeeTmp.FieldByName('FEE_TEMPLATE').IsNull or
               (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'AMOUNT') = 0) and
               (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'RATE') = 0) and
               (qryScaleCost.FieldByName('ZERO_FEE').AsString = 'N') then
               qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
            if lvFeeTmp.GridView = tvFeeTmp then
            begin
               if tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString = '' then
                  DoBillType(selectedRow);
            end
            else
            begin
               if tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString = '' then
                  DoBillType(selectedRow);
            end;
            CalcAmount;
            ReopenListUpdate('MATTER', qryFeeTmp.FieldByName('FILEID').AsString);
         end;
      end
      else
      if ((selectedRow = '') and (qryFeeTmp.State in [dsEdit, dsInsert])) then
      begin
         qryFeeTmp.FieldByName('FILEID').Clear;
         qryFeeTmp.FieldByName('NMATTER').Clear;
         if lvFeeTmp.GridView = tvFeeTmp then
         begin
            tvFeeTmpMATTERDETAILS.DataBinding.Field.Clear;
            tvFeeTmpTYPE.Options.Focusing := True;
         end
         else
         begin
            tvFeeTmpNewMATTERDETAILS.DataBinding.Field.Clear;
            tvFeeTmpNewTYPE.Options.Focusing := True;
         end;
         if qryFeeTmp.FieldbyName('TIME_TYPE').IsNull then
            qryFeeTmp.FieldByName('ITEMS').AsString := dmAxiom.DefaultTimeType;
         if qryFeeTmp.FieldByName('FEE_TEMPLATE').IsNull or
            (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'AMOUNT') = 0) and
            (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'RATE') = 0) and
            (qryScaleCost.FieldByName('ZERO_FEE').AsString = 'N') then
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);

         if lvFeeTmp.GridView = tvFeeTmp then
         begin
            if tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString = '' then
               DoBillType(qryFeeTmp.FieldByName('FILEID').AsString);
         end
         else
         begin
            if tvFeeTmpNewFEE_TEMPLATE.DataBinding.Field.AsString = '' then
               DoBillType(qryFeeTmp.FieldByName('FILEID').AsString);
         end;
         CalcAmount;
         ReopenListUpdate('MATTER', qryFeeTmp.FieldByName('FILEID').AsString);
      end;
   end;
end;

procedure TfrmTimeSheet.bbtnCompleteTaskClick(Sender: TObject);
begin
   try
      if not qryFeeTmp.Modified then
         qryFeeTmp.Edit;
      qryFeeTmp.FieldByName('Task_completed').AsDateTime := Date();
   finally
      qryFeeTmp.Post;
   end;
end;

procedure TfrmTimeSheet.bbtnRefreshClick(Sender: TObject);
var
   bitmap: TBitmap;
begin
   try
      Bitmap:= TBitmap.Create;
      tvFeeTmpNew.OnFocusedRecordChanged := nil;
      if tmrAutocost.Enabled then
      begin
         if (MessageDlg('The Timer is currently running. Would you like to Stop the Timer and refresh the grid.', mtConfirmation , [mbYes, mbNo], 0, mbYes) = mrNo) then
            Exit
         else
         begin
            btnTimer.Click;
            MakeSQL;
         end;
      end
      else
         MakeSQL;
   finally
      tvFeeTmpNew.OnFocusedRecordChanged := tvFeeTmpFocusedRecordChanged;
      Bitmap.LoadFromFile(ExtractFilePath(Application.EXEName)+'\images\CHECKBOXTICK.bmp');
      tvFeeTmpNewPROCESS.HeaderGlyph.Assign(Bitmap);
      Bitmap.Free;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpUNITSPropertiesEditValueChanged(Sender: TObject);
begin
   CalcAmount;
end;

procedure TfrmTimeSheet.tvFeeTmpFEE_TEMPLATEPropertiesEditValueChanged(Sender: TObject);
var
   selectedCell: string;
   bRateItem: boolean;
begin
   try
      try
         SelectedCell := TcxLookupComboBox(Sender).EditValue;   //tvFeeTmpFEE_TEMPLATE.EditValue;
      except
      //
      end;
      if qryFeeTmp.FieldByName('FILEID').AsString = '' then
      begin
         if qryFeeTmp.FieldbyName('TIME_TYPE').IsNull then
         begin
            qryFeeTmp.FieldByName('TIME_TYPE').AsString := 'O';
            qryFeeTmp.FieldByName('MATLOCATE').AsString := 'Overhead Time';
            qryFeeTmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
         end;
      end;
      if selectedCell <> '' then
      begin
         if not qryFeeTmp.Modified then
            qryFeeTmp.Edit;
         qryScaleCost.Close();
         qryScaleCost.ParambyName('p_code').AsString := selectedCell;
         qryScaleCost.Open();
// AES 13-03-2014
//         RichEdit1.Lines.Clear;
//         RichEdit1.Lines.Text := qryScaleCost.FieldByName('DESCR').AsString;
         bRateItem := ((qryScaleCost.FieldByName('RATE').AsCurrency <> 0) and
                       (qryScaleCost.FieldByName('DFLT_TIME_UNITS').AsInteger <> 0));
         qryFeeTmp.FieldByName('REASON').AsString := qryScaleCost.FieldByName('DESCR').AsString;
         qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := qryScaleCost.FieldByName('CODE').AsString;
         if bRateItem then
         begin
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, String(cbAuthor.EditValue), qryFeeTmp.FieldByName('CREATED').AsDateTime);  //qryScaleCost.FieldByName('RATE').AsCurrency;
            qryFeeTmp.FieldByName('ITEM_AMOUNT').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency;
            qryFeeTmp.FieldByName('UNIT').AsString := qryScaleCost.FieldByName('UNIT').AsString;
            qryFeeTmp.FieldByName('TIME_CODE').AsString := qryScaleCost.FieldByName('UNIT').AsString;
         end
         else
         qryFeeTmp.FieldByName('REASON').AsString := qryScaleCost.FieldByName('DESCR').AsString;
         qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := qryScaleCost.FieldByName('CODE').AsString;
         if qryScaleCost.FieldByName('AMOUNT').AsCurrency > 0 then
         begin
            qryFeeTmp.FieldByName('AMOUNT').AsCurrency := qryScaleCost.FieldByName('AMOUNT').AsCurrency;
            qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCost.FieldByName('AMOUNT').AsCurrency;  //0.0;
            if (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'M') or
               (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'H') then
               qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString
            else
               qryFeeTmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
            qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := selectedCell;
            qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := 0;
            tvFeeTmpITEMS.Options.Focusing := False;
   //         UpdateTotals;
         end
         else
         begin
            qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);

            if (qryScaleCost.FieldByName('RATE').AsCurrency > 0) then
            begin
               qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency;
               qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString,qryFeeTmp.FieldByName('CREATED').AsDateTime);

               {            if qryFeeTmp.FieldByName('FEE_TEMPLATE').IsNull or
               (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'AMOUNT') = 0) and
               (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'RATE') = 0) and
               (qryScaleCost.FieldByName('ZERO_FEE').AsString = 'N') then
               qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString,qryFeeTmp.FieldByName('CREATED').AsDateTime);
}
//               qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := qryScaleCost.FieldByName('CODE').AsString;
               qryFeeTmp.FieldByName('TASK_AMOUNT').AsCurrency := qryScaleCost.FieldByName('RATE').AsCurrency;
               qryFeeTmp.FieldByName('UNIT').AsString := qryScaleCost.FieldByName('UNIT').AsString;
            end;
            if (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'M') or
               (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'H') then
               qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString
            else
               qryFeeTmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
            if qryScaleCost.FieldByName('UNIT').AsString <> '' then
               qryFeeTmp.FieldByName('ITEMS').AsString := '1'
            else
               qryFeeTmp.FieldByName('ITEMS').AsString := '0';
            tvFeeTmpITEMS.Options.Focusing := True;
            CalcAmount;
         end;

         if qryScaleCost.FieldByName('ZERO_FEE').AsString = 'Y' then
         begin
            qryFeeTmp.FieldByName('AMOUNT').AsCurrency := 0;
            qryFeeTmp.FieldByName('RATE').AsCurrency := 0;
            qryFeeTmp.FieldByName('TAX').AsCurrency := 0;
         end;
      end
      else
      begin
   	  if (qryFeeTmp.FieldbyName('TIME_TYPE').AsString = 'M') then
            qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable'
   	  else
         if (qryFeeTmp.FieldByName('TIME_TYPE').AsString = 'O') or
            (qryFeeTmp.FieldbyName('TIME_TYPE').AsString = 'H') then
            qryFeeTmp.FieldByName('BILLTYPE').AsString := 'NonBillable'
   	  else
            qryFeeTmp.FieldByName('BILLTYPE').AsString := 'Billable';
         qryFeeTmp.FieldByName('FEE_TEMPLATE').Clear;
      end;
   except
      //
   end;
end;

procedure TfrmTimeSheet.cbShowTasksClick(Sender: TObject);
var
   bCheckedValue: boolean;
begin
   if boolean(cbShowTasks.EditValue) then
      SettingSave('FEEBATCH','SHOWTASKENTRIES',1)
   else
      SettingSave('FEEBATCH','SHOWTASKENTRIES',0);

//   bCheckedValue := TcxCheckBox(Sender).Checked;
   if tmrAutocost.Enabled then
   begin
      MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
//      TcxCheckBox(Sender).Checked := not bCheckedValue;
      Exit;
   end
   else
   begin
      if qryFeeTmp.Modified then
         qryFeeTmp.Post;
      MakeSQL;
   end;
end;

procedure TfrmTimeSheet.cxBarEditItem2Click(Sender: TObject);
var
   bCheckedValue: boolean;
begin
   bCheckedValue := TcxCheckBox(Sender).Checked;
   if tmrAutocost.Enabled then
   begin
      MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
//      TcxCheckBox(Sender).Checked := not bCheckedValue;
      Exit;
   end
   else
   begin
      if qryFeeTmp.Modified then
         qryFeeTmp.Post;
      MakeSQL;
   end;

end;

procedure TfrmTimeSheet.cxDBMemo1Enter(Sender: TObject);
begin
   TcxDBMemo(Sender).SetSelection(Length(TcxDBMemo(Sender).Lines.Text) ,0);
end;

procedure TfrmTimeSheet.cxDBMemo1PropertiesChange(Sender: TObject);
begin
//   if (qryTmp.State <> dsEdit) and (qryTmp.Active) then
//      qryTmp.Edit;
end;

procedure TfrmTimeSheet.tvFeeTmpREASONPropertiesCloseUp(Sender: TObject);
begin
//   qryTmp.Post;
// AES 13-03-2014
{   if lvFeetmp.GridView = tvFeeTmp then
   begin
      if tvFeeTmp.Controller.FocusedRow <> tvFeeTmp.ViewData.NewItemRecord then
      begin
         if RichEdit1.Modified then
         begin
            if FUNIQUEID = tvFeeTmpUNIQUEID.EditValue then
            begin
               if qryFeeTmp.State = dsBrowse then
                  qryFeeTmp.Edit;
               qryFeeTmp.FieldByName('REASON').AsString := Trim(RichEdit1.Lines.Text);
               qryFeeTmp.Post;
            end;
            RichEdit1.Modified := False;
         end;
      end
      else
      begin
         if RichEdit1.Modified then
         begin
            if qryFeeTmp.State = dsBrowse then
               qryFeeTmp.Edit;
            qryFeeTmp.FieldByName('REASON').AsString := Trim(RichEdit1.Lines.Text);
            qryFeeTmp.Post;
         end;
         RichEdit1.Modified := False;
      end;
   end; }

{   if qryFeeTmp.State = dsEdit then
      qryFeeTmp.Post; }
end;

procedure TfrmTimeSheet.tvFeeTmpInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
var
  MatterValue, TaskValue: Variant;
  colMatterIndex, colTaskIndex: Integer;

  DC: TcxGridDBDataController;
  LookupProp: TcxLookupComboBoxProperties;

  LGrid: TcxCustomLookupDBGrid;
  colMatterID, colTaskID: TcxLookupDBGridColumn;
    InnerControl: TWinControl;
begin
   If AEdit is TcxLookupComboBox then
      TcxLookupComboBox(AEdit).Properties.UseMouseWheel := False;

   If (TcxCustomPopupEdit(AEdit).Properties.ImmediateDropDown = False) then
   begin
      InnerControl:= (AEdit as TcxCustomPopupEdit).InnerControl;
      if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
         PostMessage(InnerControl.Handle, EM_SETSEL, 0, MaxInt)
      else
         PostMessage(InnerControl.Handle, EM_SETSEL, MaxInt, MaxInt);
   end;


{   if (AItem = tvFeeTmpFEE_TEMPLATE) and
      (tvFeeTmpTYPE.EditValue = 'O') then
   begin
      if qryScaleCostsList.Active then
         qryScaleCostsList.Close;
      qryScaleCostsList.SQL.Clear;
      if SystemString('LIMIT_SCALECOST_NONBILLABLE') = 'Y' then
      begin
         qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND BILLTYPE = ''NonBillable'' ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
      end
      else
      begin
         qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
      end;
      qryScaleCostsList.Open;
   end
   else
      if (not VarIsNull(tvFeeTmpFILEID.EditValue)) and
         (MatterString(string(tvFeeTmpFILEID.EditValue),'RESTRICT_WIP_TO_TASK') = 'Y') then
      begin
         DC := TcxGridDBDataController(Sender.DataController);
         colMatterIndex := DC.GetItemByFieldName('NMATTER').Index;
         MatterValue := DC.Values[DC.FocusedRecordIndex, colMatterIndex];
         colTaskIndex := DC.GetItemByFieldName('FEE_TEMPLATE').Index;
         TaskValue := DC.Values[DC.FocusedRecordIndex, colTaskIndex];

         if AItem = tvFeeTmpFEE_TEMPLATE then
         begin
            if qryScaleCostsList.Active then
               qryScaleCostsList.Close;

            qryScaleCostsList.SQL.Clear;
            qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM MATTER_BUDGETS MB, SCALECOST S ');
            qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND MB.TASK = S.CODE AND ');
            qryScaleCostsList.SQL.Add('MB.NMATTER = :NMATTER ORDER BY S.CODE');

            qryScaleCostsList.ParamByName('NMATTER').Value := MatterValue;

            LookupProp := TcxLookupComboBox(AEdit).Properties;
            LookupProp.ListSource := dsScaleCostsList;
            qryScaleCostsList.Open;
         end;
      end
      else
      begin
         if AItem = tvFeeTmpFEE_TEMPLATE then
         begin
            if qryScaleCostsList.Active then
                  qryScaleCostsList.Close;
            qryScaleCostsList.SQL.Clear;
            qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM SCALECOST S ');
            qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' ');
            qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
            qryScaleCostsList.Open;
         end;
      end;  }
end;

procedure TfrmTimeSheet.memoDescriptionEnter(Sender: TObject);
begin
//  PostKeyEx32(VK_ESCAPE, [], False) ;

 { if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
       TAddictDBRichEdit(Sender).SelStart := Length(TAddictDBRichEdit(Sender).Text) + 1
  else
      TAddictDBRichEdit(Sender).SelectAll;  }
end;

procedure TfrmTimeSheet.tvFeeTmpREASONPropertiesPopup(Sender: TObject);
begin
//   FPopupForm := GetParentForm(TControl(Sender));
//   FPopupForm.Refresh;
end;

procedure TfrmTimeSheet.qryFeeTmpBeforePost(DataSet: TDataSet);
var
   LMATLOCATE: string;
begin
   LMATLOCATE := 'M.TITLE AS MATLOCATE';
   if (Dataset.FieldByName('fileid').IsNull and
      Dataset.FieldByName('time_type').IsNull) then
   begin
      if (Dataset.State = dsEdit) or (DataSet.State = dsInsert) then
      begin
         DataSet.Cancel;
         Abort;
      end;
   end;

   if (Dataset.State = dsEdit) or (DataSet.State = dsInsert) then
      Dataset.FieldByName('mins').AsInteger := Round(DataSet.FieldByName('UNITS').AsFloat *
                                               SystemInteger('TIME_UNITS'));

   if (not DataSet.FieldByName('fileid').IsNull) then
      DataSet.FieldByName('CAPTION').AsString := Dataset.FieldByName('fileid').AsString+' - '+
                                                 MatterString(UpperCase(string(Dataset.FieldByName('fileid').AsString)), LMATLOCATE);

end;

procedure TfrmTimeSheet.l(DataSet: TDataSet);
var
   iElapsedNew,
   iUNIQUEID,
   iUnits: integer;
begin
{   iElapsedNew := DataSet.FieldByName('ELAPSED').AsInteger;
   iUNIQUEID := DataSet.FieldByName('UNIQUEID').AsInteger;
   iUnits := 1;
   if (iMinsPerUnit > 0) then
      iUnits := (((FElapsedUnits div 60) div iMinsPerUnit));

   if (FElapsedUnits mod 60) > 0 then
      iUnits := iUnits + 1;
   if (DataSet.Active = True) then
   begin
      if DataSet.State = dsBrowse then
         DataSet.Edit;     }

//      DataSet.FieldByName('ELAPSED').AsInteger := FElapsedUnits;
//      DataSet.FieldByName('units').AsInteger := iUnits;
//      DataSet.FieldByName('REASON').AsString := tvFeeTmpNewREASON.EditValue;
//   end;
end;

procedure TfrmTimeSheet.qryFeeTmpNewRecord(DataSet: TDataSet);
begin
   with Dataset do
   begin
//      FieldbyName('UNIQUEID').AsString := dmAxiom.GetSeqNumber('SQNC_FEETMP');
      FieldbyName('TIME_TYPE').AsString := dmAxiom.DefaultTimeType;
      FieldByName('UNITS').AsFloat := 1.0;
      FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[1];
      FieldByName('STATE').AsInteger := 2;
      FieldByName('RESOURCEID').AsInteger := 7;
      FieldByName('OPTIONS').AsInteger  := 2;
      FieldByName('EVENT_TYPE').AsInteger := 0;
      FieldByName('PROGRAM_NAME').AsString := 'Time Sheet';
// AES 13-03-2014
//      RichEdit1.Lines.Clear;
   end;
   if lvFeeTmp.GridView = tvFeeTmp then
      tvFeeTmpTYPE.Options.Focusing := True
   else
      tvFeeTmpNewTYPE.Options.Focusing := True;

   bMatterValidated := False;
   dxBarButtonSave.Enabled := True;
end;

procedure TfrmTimeSheet.tvFeeTmpFEE_TEMPLATEPropertiesInitPopup(
  Sender: TObject);
begin
   if (tvFeeTmpTYPE.EditValue = 'O') or
      VarIsNull(tvFeeTmpTYPE.EditValue) then
   begin
      if qryScaleCostsList.Active then
         qryScaleCostsList.Close;
      qryScaleCostsList.SQL.Clear;
      if SystemString('LIMIT_SCALECOST_NONBILLABLE') = 'Y' then
      begin
         qryScaleCostsList.SQL.Add('SELECT distinct S.CODE, S.DESCR, S.BILLTYPE FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND BILLTYPE = ''NonBillable'' ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
      end
      else
      begin
         qryScaleCostsList.SQL.Add('SELECT distinct S.CODE, S.DESCR, S.BILLTYPE FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
      end;
      qryScaleCostsList.Open;
   end
   else
      if (not VarIsNull(tvFeeTmpFILEID.EditValue)) and
         (MatterString(string(tvFeeTmpFILEID.EditValue),'RESTRICT_WIP_TO_TASK') = 'Y') then
      begin
         if qryScaleCostsList.Active then
            qryScaleCostsList.Close;

         qryScaleCostsList.SQL.Clear;
         qryScaleCostsList.SQL.Add('SELECT distinct S.CODE, S.DESCR, S.BILLTYPE FROM MATTER_BUDGETS MB, SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND MB.TASK = S.CODE AND ');
         qryScaleCostsList.SQL.Add('MB.NMATTER = :NMATTER ORDER BY S.CODE');

         qryScaleCostsList.ParamByName('NMATTER').Value := MatterString(string(tvFeeTmpFILEID.EditValue), 'NMATTER');

//         LookupProp := TcxLookupComboBox(AEdit).Properties;
//         LookupProp.ListSource := dsScaleCostsList;
         qryScaleCostsList.Open;
      end
      else
      if (tvFeeTmpTYPE.EditValue = 'M') and (SystemString('LIMIT_SCALECOST_BILLABLE') = 'Y') then
      begin
         if qryScaleCostsList.Active then
               qryScaleCostsList.Close;
         qryScaleCostsList.SQL.Clear;
         qryScaleCostsList.SQL.Add('SELECT distinct S.CODE, S.DESCR, S.BILLTYPE FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND BILLTYPE = ''Billable''  ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
         qryScaleCostsList.Open;
      end
      else
      begin
         if qryScaleCostsList.Active then
               qryScaleCostsList.Close;
         qryScaleCostsList.SQL.Clear;
         qryScaleCostsList.SQL.Add('SELECT distinct S.CODE, S.DESCR, S.BILLTYPE FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
         qryScaleCostsList.Open;
      end;
end;

procedure TfrmTimeSheet.tvFeeTmpTYPEPropertiesEditValueChanged(
  Sender: TObject);
begin
   if qryFeeTmp.State = dsBrowse then
      qryFeeTmp.Edit;

   if TcxComboBox(Sender).Text = 'M' then
   begin
      try
         if lvFeeTmp.GridView = tvFeeTmp then
         begin
            if VarIsNull(tvFeeTmpFILEID.EditValue)  then
               qryFeeTmp.FieldByName('MATLOCATE').AsString := '';
         end
         else
         begin
            if VarIsNull(tvFeeTmpNewFILEID.EditValue) then
               qryFeeTmp.FieldByName('MATLOCATE').AsString := '';
         end;
      except
         //
      end;
      qryFeeTmp.FieldByName('TIME_TYPE').AsString := TcxComboBox(Sender).Text;
      qryFeetmp.FieldByName('BILLTYPE').AsString := 'Billable';

      if lvFeeTmp.GridView = tvFeeTmp then
      begin
         if not VarIsNull(tvFeeTmpFEE_TEMPLATE.EditValue) then
         begin
            qryScaleCost.Close();
            qryScaleCost.ParambyName('p_code').AsString := tvFeeTmpFEE_TEMPLATE.EditValue;
            qryScaleCost.Open();
            qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString;
         end;
      end
      else
      begin
         if not VarIsNull(tvFeeTmpNewFEE_TEMPLATE.EditValue) then
         begin
            qryScaleCost.Close();
            qryScaleCost.ParambyName('p_code').AsString := tvFeeTmpNewFEE_TEMPLATE.EditValue;
            qryScaleCost.Open();
            qryFeeTmp.FieldByName('BILLTYPE').AsString := qryScaleCost.FieldByName('BILLTYPE').AsString;
         end;
      end;
      qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[5];
   end
   else
   if TcxComboBox(Sender).Text = 'O' then
   begin
      qryFeeTmp.FieldByName('TIME_TYPE').AsString := TcxComboBox(Sender).Text;

      qryFeeTmp.FieldByName('MATLOCATE').AsString := 'Overhead Time';
      qryFeeTmp.FieldByName('FILEID').Clear;
      qryFeetmp.FieldByName('BILLTYPE').AsString := 'NonBillable';
      qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[2];
      qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
   end
   else
   if TcxComboBox(Sender).Text = 'H' then
   begin
      qryFeeTmp.FieldByName('TIME_TYPE').AsString := TcxComboBox(Sender).Text;
      if (qryFeeTmp.FieldByName('FILEID').AsString = '') then
         qryFeeTmp.FieldByName('MATLOCATE').AsString := 'Held Time';
//      qryFeeTmp.FieldByName('FILEID').Clear;
      if not VarIsNull(tvFeeTmpFEE_TEMPLATE.EditValue) then
         qryFeetmp.FieldByName('BILLTYPE').AsString := TableString('scalecost','code',string(tvFeeTmpFEE_TEMPLATE.EditValue),'billtype'); //'NonBillable';
      qryFeeTmp.FieldByName('LABELCOLOUR').AsInteger := EventLabelColors[3];
   end;
//   qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);
   CalcAmount;
//   qryFeeTmp.Post;
end;

{procedure TfrmTimeSheet.tvFeeTmpBILLTYPEStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('TIME_TYPE');
   if VarToStr(ARecord.Values[AColumn.Index]) = 'M' then
   begin
      AStyle := styMatter;
   end
   else if VarToStr(ARecord.Values[AColumn.Index]) = 'O' then
   begin
      AStyle := styOverhead;
   end
   else if VarToStr(ARecord.Values[AColumn.Index]) = 'H' then
   begin
      AStyle := styHeld;
   end
   else
   begin
      AStyle := styDefault;
   end;
end;  }

procedure TfrmTimeSheet.tvFeeTmpFILEIDPropertiesCloseUp(Sender: TObject);
var
   i: integer;
   ASortOrder: TcxDataSortOrder;
   ASort: string;
begin
   ASort := '';
   for i := 0 to (TcxLookupComboBox(Sender).Properties.ListColumns.Count - 1) do
   begin
      ASortOrder := TcxLookupComboBox(Sender).Properties.ListColumns[i].SortOrder;
      if ASortOrder in [soAscending, soDescending] then
      begin
         if ASortOrder = soAscending then
            ASort := 'Asc'
         else
            ASort := 'Desc';
         break;
      end;
   end;
   if Asort <> '' then
   begin
      SettingSave('TIME_SHEET','MATTER_ORDER_TYPE',ASort);
      SettingSave('TIME_SHEET','MATTER_ORDER_COLUMN',i);
   end;
end;

procedure TfrmTimeSheet.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
   Text := FormatDateTime('dddddd', dtpDate.Date);
end;

procedure TfrmTimeSheet.ppLabel15GetText(Sender: TObject;
  var Text: String);
begin
   Text := TableString('EMPLOYEE', 'CODE', string(cbAuthor.EditValue), 'NAME') + ' (' + string(cbAuthor.EditValue) + ')';
end;

procedure TfrmTimeSheet.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmTimeSheet.popMatterClick(Sender: TObject);
var
     LfrmMatters: TfrmMatters;
begin
   LfrmMatters := TfrmMatters.Create(frmDesktop);
   LfrmMatters.DisplayMatter(qryFeeTmp.FieldByName('FILEID').AsString);
//   LfrmMatters.ShowModal;
   frmDesktop.AddFormToTab(LfrmMatters, 1);
end;

procedure TfrmTimeSheet.lblNextClick(Sender: TObject);
begin
   if qryFeeTmp.Modified then
      qryFeeTmp.Post;
   dtpDate.Date := dtpDate.Date + 1;
end;

procedure TfrmTimeSheet.lblPrevClick(Sender: TObject);
begin
   if qryFeeTmp.Modified then
      qryFeeTmp.Post;
   dtpDate.Date := dtpDate.Date - 1;
end;

procedure TfrmTimeSheet.memoDescriptionKeyPress(Sender: TObject;
  var Key: Char);
begin
//   MessageDlg(Key + ' has been pressed', mtInformation, [mbOK], 0)
{   if Key in ['A'..'Z', 'a'..'z'] then
   begin
      if (SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y') then
         TAddictDBRichEdit(Sender).Text := UpperCase(TAddictDBRichEdit(Sender).Text);
   end;   }
end;

procedure TfrmTimeSheet.tvFeeTmpNewInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
var
   InnerControl: TWinControl;
   LStrLen: integer;
begin
   try

 {     if lvFeeTmp.GridView = tvFeeTmp then
      begin
         if (AItem = tvFeeTmpREASON) then
         begin
            InnerControl := (AEdit as TcxCustomTextEdit).InnerControl;
            if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
            begin
               PostMessage(InnerControl.Handle, EM_SETSEL, MaxInt, MaxInt)
            end
            else
               PostMessage(InnerControl.Handle, EM_SETSEL, 0, -1);
         end;
      end;  }

      if lvFeeTmp.GridView = tvFeeTmpNew then
      begin
         if (AItem = tvFeeTmpNewREASON) then
         begin
            InnerControl := (AEdit as TcxCustomTextEdit).InnerControl;
            if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
            begin
               LStrLen := Length(TcxRichEdit(AEdit).Text);
               PostMessage(InnerControl.Handle, EM_SETSEL, MaxInt, MaxInt)
            end
            else
               PostMessage(InnerControl.Handle, EM_SETSEL, 0, -1);
         end;
         If (AEdit is TcxSpinEdit) then
            TcxSpinEdit(AEdit).Properties.UseMouseWheel := False;
         If (AEdit is TcxLookupComboBox) then
            TcxLookupComboBox(AEdit).Properties.UseMouseWheel := False;
      end;
   except
   //
   end;


{      if lvFeeTmp.GridView = tvFeeTmpNew then
   begin
      if (AFocusedItem.Caption = 'Description') then
      begin

         if (TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N') then
             (AFocusedItem as TcxRichEdit).SelStart := Length(Trim((AFocusedItem as TcxRichEdit).Text)) + 1
         else
             TcxRichEdit(AFocusedItem).SelectAll;
       end;
   end;   }
end;

procedure TfrmTimeSheet.dbgrFeeTmpEnter(Sender: TObject);
begin
   if lvFeetmp.GridView = tvFeeTmpNew then
   begin
      if tvFeeTmpNew.DataController.RowCount = 0 then
      begin
         if (qryFeeTmp.State = dsInactive) then
              qryFeeTmp.Open;
         qryFeeTmp.Insert;
      end;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpColumn1PropertiesChange(Sender: TObject);
begin
//   if Pos('\', DisplayValue)> 0 then
//   begin
//      qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString := Copy(DisplayValue,1,3);
//      QuickCode(tvFeeTmpREASON.DataBinding.Field, DisplayValue);
//   end;
{   if SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y' then
      qryFeeTmp.FieldByName('REASON').AsString := UpperCase(Trim(DisplayValue))
   else
      qryFeeTmp.FieldByName('REASON').AsString := Trim(DisplayValue);   }
end;

procedure TfrmTimeSheet.tvFeeTmpREASONPropertiesInitPopup(Sender: TObject);
var
   tv:               TcxGridDBTableView;
   Data:             TcxCustomDataController;
   DC:               TcxGridTableController;
begin
// AES 13-03-2014
{   tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
//   Data := tv.DataController;
   DC := tv.Controller;

   if (DC.FocusedRecord.IsNewItemRecord) then
//      RichEdit1.Lines.Clear
   begin
      if (tvFeeTmpFEE_TEMPLATE.EditValue = '') then
         RichEdit1.Clear;
   end
   else
   begin
      try
         RichEdit1.Lines.Clear;
         if (not VarIsNull(tv.DataController.DataSet.FieldValues['Reason'])) then
            RichEdit1.Lines.Text := tv.DataController.DataSet.FieldValues['Reason'];  //   Trim(qryFeeTmp.FieldByName('REASON').AsString);
         RichEdit1.Modified := False;
      except
      //
      end;
   end; }
end;

procedure TfrmTimeSheet.tvFeeTmpNewAMOUNTPropertiesChange(Sender: TObject);
begin
//   CalcTax;
end;

procedure TfrmTimeSheet.tvFeeTmpNewAUTHORPropertiesEditValueChanged(
  Sender: TObject);
var
  selectedRow : String;
  LBillType: string;
begin
   selectedRow := UpperCase(TcxLookupComboBox(Sender).Text);

   if selectedRow <> '' then
   begin
      if not qryFeeTmp.Modified then
        qryFeeTmp.Edit;

      if qryFeeTmp.FieldByName('FEE_TEMPLATE').IsNull or
         (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'AMOUNT') = 0)  and
         (TableCurrency('SCALECOST','CODE',qryFeeTmp.FieldByName('FEE_TEMPLATE').AsString,'RATE') = 0)then
               qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString, qryFeeTmp.FieldByName('CREATED').AsDateTime);

      CalcAmount;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpNewBILLTYPEStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('TIME_TYPE');
   if VarToStr(ARecord.Values[AColumn.Index]) = 'M' then
   begin
      AStyle := styMatter;
   end
   else if VarToStr(ARecord.Values[AColumn.Index]) = 'O' then
   begin
      AStyle := styOverhead;
   end
   else if VarToStr(ARecord.Values[AColumn.Index]) = 'H' then
   begin
      AStyle := styHeld;
   end
   else
   begin
      AStyle := styDefault;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpNewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if lblTimerDisp.Visible then
   begin
//      if qryFeeTmp.State <> dsBrowse then
//         qryFeeTmp.Post;
      if (VarIsNull(tvFeeTmpNewELAPSED.EditValue) = False) then
      begin
//         if FElapsedUnits <> tvFeeTmpNewELAPSED.EditValue then
//            FElapsedUnits := tvFeeTmpNewELAPSED.EditValue;
         CalcStatusbar(FElapsedUnits);
      end;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpNewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
   AFieldName,
   AOrder: string;
begin
   if AColumn.Index > 0 then
   begin
      AFieldName := TcxGridDBColumn(AColumn).DataBinding.FieldName;
      case TcxGridDBColumn(AColumn).SortOrder of
          soNone: FOrderBy := ' order by '+ AFieldName;
          soAscending: FOrderBy := ' order by '+ AFieldName + ' desc';
          soDescending: FOrderBy := ' order by '+ AFieldName + ' asc';
      end;
   end;
end;

procedure TfrmTimeSheet.tvFeeTmpNewEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
// this only applies to the new style grid.
   if key = VK_INSERT then
      qryFeeTmp.Append;

   if (Key = VK_SPACE) and (AItem = tvFeeTmpNewREASON) then
      QuickCode(Sender);

   if (Key = VK_Tab) and (AItem = tvFeeTmpNewNOTES) then
   begin
      tvFeeTmpNewITEMS.Options.Focusing := (((VarIsNull(tvFeeTmpNewFEE_TEMPLATE.EditValue) = False)) and
                                     ((TableInteger('SCALECOST','CODE',string(tvFeeTmpNewFEE_TEMPLATE.EditValue), 'DEFAULTTIME') <> 0) or       //DFLT_TIME_UNITS
                                     (TableCurrency('SCALECOST','CODE',string(tvFeeTmpNewFEE_TEMPLATE.EditValue), 'RATE') > 0)));

      if (tvFeeTmpNewITEMS.Options.Focusing = TRUE) then
         tvFeeTmpNewITEMS.Focused := True
      else
         tvFeeTmpNewUNITS.Focused := True;
   end;
end;

procedure TfrmTimeSheet.dxButtonInsertAboveClick(Sender: TObject);
begin
   FMenuInsert := True;
   FCurrentDateStamp := qryFeeTmp.FieldByName('CREATED').AsDateTime;
   qryFeeTmp.Insert;
   FMenuInsert := False;
end;

procedure TfrmTimeSheet.RichEdit1Enter(Sender: TObject);
begin
// AES 13-03-2014
{   if lvFeeTmp.GridView = tvFeeTmp then
   begin
      if (tvFeeTmp.Controller.FocusedRow <> tvFeeTmp.ViewData.NewItemRecord) then
         FUNIQUEID := tvFeeTmpUNIQUEID.EditValue;
//      Label3.Caption := IntToStr(tvFeeTmpUNIQUEID.EditValue);
      if (tvFeeTmp.Controller.FocusedRow = tvFeeTmp.ViewData.NewItemRecord) then
      begin
         if VarIsNull(tvFeeTmpFEE_TEMPLATE.EditValue) and VarIsNull(tvFeeTmpFILEID.EditValue)and
            (tvFeeTmpTYPE.EditValue <> 'O') then
             RichEdit1.Lines.Clear;
      end;
   end;
   if (TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N') then
      TRichEdit(Sender).SelStart := Length(Trim(TRichEdit(Sender).Text)) + 1
   else
      TRichEdit(Sender).SelectAll;}
end;

procedure TfrmTimeSheet.RichEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_SPACE then
      QuickCode(Sender);

   if Key = VK_Tab then
   begin
      if FPopupForm is TcxCustomEditPopupWindow then
         (FPopupForm as TcxCustomEditPopupWindow).Edit.DroppedDown := False;

      tvFeeTmpREASON.EditValue := Trim(TRichEdit(Sender).Text);
      tvFeeTmpITEMS.Options.Focusing := ((tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString <> '') and
                                     (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'AMOUNT') = 0) and
                                     (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0));

      if tvFeeTmpITEMS.Options.Focusing then
         tvFeeTmpITEMS.Focused := True
      else
         tvFeeTmpUNITS.Focused := True;
   end;
end;

procedure TfrmTimeSheet.dxBarButton1Click(Sender: TObject);
begin
  fmHelpForm := TfmHelpForm.Create(Application);
  fmHelpForm.HelpMsg := cHelpMsg;
  fmHelpForm.Show();
end;

procedure TfrmTimeSheet.dxBarButtonSaveClick(Sender: TObject);
begin
   if qryFeeTmp.State <> dsBrowse then
      qryFeeTmp.Post;
end;

procedure TfrmTimeSheet.dxbtnDeselectAllClick(Sender: TObject);
var
   tv:               TcxGridDBTableView;
   Data:             TcxCustomDataController;
   DC:               TcxGridTableController;
   i:                integer;
begin
    tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
    DC := tv.Controller;
    Data := tv.DataController;

   tv.BeginUpdate;
   try
      if dxbtnDeselectAll.Caption = 'DeSelect All' then
      begin
         for i :=0 to Data.GetRecordCount - 1 do
         begin
            Data.Values[i,0] := False;
            tv.ViewData.Records[i].Selected  := False;
         end;
         dxbtnDeselectAll.Caption := 'Select All';
         dxbtnDeselectAll.Hint := 'Select All selected Time entries';
      end
      else
      if dxbtnDeselectAll.Caption = 'Select All' then
      begin
         for i :=0 to Data.GetRecordCount - 1 do
         begin
            Data.Values[i,0] := True;
            tv.ViewData.Records[i].Selected  := True;
         end;
         dxbtnDeselectAll.Caption := 'DeSelect All';
         dxbtnDeselectAll.Hint := 'DeSelect All selected Time entries';
      end
   finally
      tv.EndUpdate;
   end; 
end;

procedure TfrmTimeSheet.tvFeeTmpNewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   LRecCount:        integer;
   ARowIndex, iCtr:  integer;
   tv:               TcxGridDBTableView;
   Data:             TcxCustomDataController;
   DC:               TcxGridTableController;
begin
{   if ssShift in Shift  then
   begin
       tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
       tv.BeginUpdate;
       Data := tv.DataController;
       DC := tv.Controller;
       if (DC.SelectedRowCount > 0) then
       begin
          for iCtr := 0 to DC.SelectedRecordCount - 1 do
          begin
             ARowIndex := Data.GetSelectedRowIndex(iCtr);
             tv.ViewData.Records[ARowIndex].Focused  := True;
             Data.Values[ARowIndex,0] := True;
          end;
       end;
       tv.EndUpdate;
   end;
// pressed the Ctrl
   if ssCtrl in Shift  then
   begin
       tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
       tv.BeginUpdate;
       Data := tv.DataController;
       DC := tv.Controller;

       ARowIndex := Data.GetFocusedRowIndex;
       tv.ViewData.Records[ARowIndex].Focused  := True;
       Data.Values[ARowIndex,0] := True;

       tv.EndUpdate;
   end;    }
end;

procedure TfrmTimeSheet.tvFeeTmpNewNOTESPropertiesChange(Sender: TObject);
begin
   qryFeeTmp.Edit;
end;

procedure TfrmTimeSheet.tvFeeTmpNewPROCESSHeaderClick(Sender: TObject);
begin
   if tmrAutocost.Enabled then
   begin
      MessageDlg('You must stop the Timer before you can choose this option.',mtWarning, [mbOK], 0);
      Exit;
   end
   else
      SetProcessFlag;
end;

procedure TfrmTimeSheet.AddictDBRichEdit1Enter(Sender: TObject);
begin
  { if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
      TAddictDBRichEdit(Sender).SelStart := Length(Trim(TAddictDBRichEdit(Sender).Text)) + 1
  else
      TAddictDBRichEdit(Sender).SelectAll; }
end;

procedure TfrmTimeSheet.AddictDBRichEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 {  if Key = VK_SPACE then
      QuickCode(Sender);

   if Key = VK_Tab then
   begin
      if FPopupForm is TcxCustomEditPopupWindow then
         (FPopupForm as TcxCustomEditPopupWindow).Edit.DroppedDown := False;

      tvFeeTmpREASON.EditValue := Trim(TAddictDBRichEdit(Sender).Text);
      tvFeeTmpITEMS.Options.Focusing := ((tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString <> '') and
                                     (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'AMOUNT') = 0) and
                                     (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0));

      if tvFeeTmpITEMS.Options.Focusing then
         tvFeeTmpITEMS.Focused := True
      else
         tvFeeTmpUNITS.Focused := True;
   end; }
end;

procedure TfrmTimeSheet.RichEdit1Exit(Sender: TObject);
begin
// AES 13-03-2014
{   if lvFeetmp.GridView = tvFeeTmp then
   begin
      if tvFeeTmp.Controller.FocusedRow <> tvFeeTmp.ViewData.NewItemRecord then
      begin
         if RichEdit1.Modified then
         begin
            if qryFeeTmp.State = dsBrowse then
               qryFeeTmp.Edit;
//            qryFeeTmp.FieldByName('REASON').AsString := Trim(RichEdit1.Lines.Text);
            if SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y' then
               qryFeeTmp.FieldByName('REASON').AsString := UpperCase(Trim(RichEdit1.Lines.Text))
            else
               qryFeeTmp.FieldByName('REASON').AsString := Trim(RichEdit1.Lines.Text);
            qryFeeTmp.Post;
            RichEdit1.Modified := False;
         end;
      end;
   end;  }
end;

procedure TfrmTimeSheet.tvFeeTmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_Insert then
   begin
      if tvFeeTmp.Controller.FocusedRow = tvFeeTmp.ViewData.NewItemRecord then
      begin
         if qryFeeTmp.Modified then
            qryFeeTmp.Post;
//         PostMessage(Self.Handle, WM_REFRESHGRID, 1, 0);
      end
   end;
end;

procedure TfrmTimeSheet.RefreshGrid(var Message: TMessage);
begin
   tvFeeTmp.DataController.UpdateItems(False);
   tvFeeTmp.ViewData.NewItemRow.Focused := True;
   tvFeeTmpFILEID.Focused := True;
end;

procedure TfrmTimeSheet.tvFeeTmpEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_Insert then
   begin
      if tvFeeTmp.Controller.FocusedRow = tvFeeTmp.ViewData.NewItemRecord then
      begin
         if qryFeeTmp.Modified then
            qryFeeTmp.Post;
          tvFeeTmp.DataController.UpdateItems(False);
          tvFeeTmp.ViewData.NewItemRow.Focused := True;
//          qryFeeTmp.Insert;
          tvFeeTmpFILEID.Focused := True;
//         PostMessage(Self.Handle, WM_REFRESHGRID, 1, 0);
      end
   end;
end;

procedure TfrmTimeSheet.btnRemoveSortClick(Sender: TObject);
var
   I:    integer;
   tv:   TcxGridDBTableView;
begin
   tv := dbgrFeeTmp.FocusedView as TcxGridDBTableView;
   for I := 0 to tv.SortedItemCount - 1 do
      tv.SortedItems[I].SortOrder := soNone;
end;

procedure TfrmTimeSheet.memoDescriptionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 {  if Key = VK_SPACE then
      QuickCode(Sender);

   if Key = VK_Tab then
   begin
      if FPopupForm is TcxCustomEditPopupWindow then
         (FPopupForm as TcxCustomEditPopupWindow).Edit.DroppedDown := False;

      tvFeeTmpREASON.EditValue := Trim(TAddictDBRichEdit(Sender).Text);
      tvFeeTmpITEMS.Options.Focusing := ((tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString <> '') and
                                     (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'AMOUNT') = 0) and
                                     (TableCurrency('SCALECOST','CODE',tvFeeTmpFEE_TEMPLATE.DataBinding.Field.AsString, 'RATE') > 0));
      if tvFeeTmpITEMS.Options.Focusing then
         tvFeeTmpITEMS.Focused := True
      else
         tvFeeTmpUNITS.Focused := True;
   end; }
end;

procedure TfrmTimeSheet.memoDescriptionExit(Sender: TObject);
begin
{   if lvFeetmp.GridView = tvFeeTmp then
   begin
      if tvFeeTmp.Controller.FocusedRow <> tvFeeTmp.ViewData.NewItemRecord then
      begin
         if memoDescription.Modified then
         begin
            if qryFeeTmp.State = dsBrowse then
               qryFeeTmp.Edit;
//            qryFeeTmp.FieldByName('REASON').AsString := Trim(RichEdit1.Lines.Text);
            if SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y' then
               qryFeeTmp.FieldByName('REASON').AsString := UpperCase(Trim(memoDescription.Lines.Text))
            else
               qryFeeTmp.FieldByName('REASON').AsString := Trim(memoDescription.Lines.Text);
            qryFeeTmp.Post;
            memoDescription.Modified := False;
         end;
      end;
   end;    }
end;

procedure TfrmTimeSheet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = VK_ESCAPE) then
   begin
      if tvFeeTmp.Controller.IsNewItemRowFocused then
      begin
         tvFeeTmp.Controller.DoCancelMode;
         qryFeeTmp.Cancel;
      end
   end;
end;

procedure TfrmTimeSheet.SetProcessFlag;
var
   Idx, I: Integer;
   ABookmark: TBookmark;
   DC: TcxDBDataController;
   GV: TcxGridDBTableView;
   bitmap: TBitmap;
begin
   if qryFeeTmp.State in [dsInsert, dsEdit] then
      qryFeeTmp.Post;

   GV := dbgrFeeTmp.ActiveView as TcxGridDBTableView;
   DC := GV.DataController;
   DC.BeginUpdate;
   Idx := DC.FocusedRowIndex;

   SetCurrentDir(ExtractFilePath(Application.EXEName));
   try
      if GV.DataController.RowCount > 0 then
      begin
         Bitmap:= TBitmap.Create;
         if tvFeeTmpNewPROCESS.Tag = 0 then
         begin
            Bitmap.LoadFromFile(ExtractFilePath(Application.EXEName)+'\images\CHECKBOXUNTICK.bmp');
//            Bitmap.LoadFromResourceName(HInstance,'CHECKBOXUNTICK');
            tvFeeTmpNewPROCESS.HeaderGlyph.Assign(Bitmap);
            tvFeeTmpNewPROCESS.Tag := 1;
            GV.ViewData.Records[0].Focused := True;
            for I := 0 to GV.ViewData.RowCount - 1 do
            begin
               GV.ViewData.Records[I].Focused := True;
               if VarIsNull(tvFeeTmpNewNFEE.EditValue) then
               begin
                  tvFeeTmpNewPROCESS.EditValue := true;
               end;
            end;
         end
         else
         begin
            Bitmap.LoadFromFile(ExtractFilePath(Application.EXEName)+'\images\CHECKBOXTICK.bmp');
//           Bitmap.LoadFromResourceName(HInstance,'CHECKBOXTICK');
            tvFeeTmpNewPROCESS.HeaderGlyph.Assign(Bitmap);
            tvFeeTmpNewPROCESS.Tag := 0;
            GV.ViewData.Records[0].Focused := True;
            for I := 0 to GV.ViewData.RowCount - 1 do
            begin
               GV.ViewData.Records[I].Focused := True;
               if VarIsNull(tvFeeTmpNewNFEE.EditValue) then
               begin
                  tvFeeTmpNewPROCESS.EditValue := false;
               end;
            end;
         end;
         Bitmap.Free;
      end;
   finally
      DC.FocusedRowIndex := Idx;
      DC.EndUpdate;
      SetCurrentDir(ExtractFilePath(Application.EXEName));
   end;
end;

function TfrmTimeSheet.GetEmpDailyBudget: currency;
begin
   with procDailyBudget do
   begin
      ParamByName('p_employee').AsString := cbAuthor.EditValue;
      ParamByName('p_fromdate').AsDate := StartOfTheMonth(dtpDate.Date);
      ParamByName('p_todate').AsDate := EndOfTheMonth(dtpDate.Date);
      Execute;
      Result := ParamByName('result').AsFloat;
   end;
end;

function TfrmTimeSheet.GetEmpMonthlyBudget: currency;
var
   lNumOfDays: Double;
   lTotalNumOfDays: integer;
begin
   try
      with dmAxiom.qryTmp do
      begin
         close;
         SQL.Text := 'SELECT NVL(wip,0) as wip, NVL(DAYS_PER_MONTH,0) as days_per_month FROM budget WHERE MONTH = TO_CHAR (:rpt_date, ''MM'') '+
                     'AND calendar_year = TO_CHAR (:rpt_date, ''YYYY'') '+
                     'AND employee = :employee';
         ParamByName('employee').AsString := cbAuthor.EditValue;
         ParamByName('rpt_date').AsDateTime := dtpDate.Date;
         open;
         lNumOfDays := ProcInteger('get_Num_of_days', StartOfTheMonth(dtpDate.Date), dtpDate.Date, dmAxiom.UserID);
         if FieldByName('days_per_month').AsFloat = 0 then
         begin
            lTotalNumOfDays := ProcInteger('get_Num_of_days', StartOfTheMonth(dtpDate.Date), EndOfTheMonth(dtpDate.Date), dmAxiom.UserID);
            Result := FieldByName('wip').AsFloat * ((lNumOfDays/lTotalNumOfDays));
         end
         else
         begin
            if (lNumOfDays > FieldByName('days_per_month').AsFloat) then
                lNumOfDays := FieldByName('days_per_month').AsFloat;
            Result := FieldByName('wip').AsFloat * ((lNumOfDays/FieldByName('days_per_month').AsFloat));
         end;
      end;
   finally
      dmAxiom.qryTmp.Close;
   end;
end;

function TfrmTimeSheet.GetEmpYearlyBudget: currency;
var
   lBudgetTotal,
   lBudgetMonth: currency;
   lNumOfDays: double;
   lTotalNumOfDays: integer;
   LFinDateFirst: TDate;
begin
   try
      with dmAxiom.qryTmp do
      begin
         close;
         SQL.Text := 'SELECT NVL(SUM (wip),0) AS tot_wip, NVL(SUM(DAYS_PER_MONTH),0) as days_per_month FROM budget WHERE financial_year = get_fin_year(:rpt_date) '+
                     'AND employee = :employee AND period >= 1 AND period <= '+
                     'CASE WHEN get_fin_period (TO_CHAR (:rpt_date, ''MM'')) = 1 THEN 1 '+
                     'ELSE get_fin_period (TO_CHAR (:rpt_date, ''MM'')) END';
         ParamByName('employee').AsString := cbAuthor.EditValue;
         ParamByName('rpt_date').AsDateTime := dtpDate.Date;
//         ParamByName('fin_year').AsInteger :=  dtpDate.Date;
         open;
         lBudgetTotal := FieldByName('tot_wip').AsFloat;
//         close;

{         SQL.Text := 'SELECT SUM (wip) AS tot_wip FROM budget WHERE financial_year = :fin_year '+
                     'AND employee = :employee AND period = get_fin_period (TO_CHAR (:rpt_date, ''MM''))';
         ParamByName('employee').AsString := cbAuthor.EditValue;
         ParamByName('rpt_date').AsDateTime := dtpDate.Date;
         ParamByName('fin_year').AsInteger := ProcInteger('get_fin_year', dtpDate.Date);
         open;
         lBudgetMonth := FieldByName('tot_wip').AsFloat;
         close;  }

         LFinDateFirst := EncodeDate(YearOf(dtpDate.Date),7,1);

         lNumOfDays := ProcInteger('get_Num_of_days', LFinDateFirst {StartOfTheMonth(dtpDate.Date)}, dtpDate.Date, dmAxiom.UserID);

         if FieldByName('days_per_month').AsFloat = 0 then
         begin
            lTotalNumOfDays := ProcInteger('get_Num_of_days', LFinDateFirst, EndOfTheMonth(dtpDate.Date), dmAxiom.UserID);
            //lTotalNumOfDays := ProcInteger('get_Num_of_days', StartOfTheMonth(dtpDate.Date), EndOfTheMonth(dtpDate.Date), dmAxiom.UserID);
            Result := lBudgetTotal * ((lNumOfDays/lTotalNumOfDays));
         end
         else
         begin
            if (lNumOfDays > FieldByName('days_per_month').AsFloat) then
                lNumOfDays := FieldByName('days_per_month').AsFloat;
            Result := lBudgetTotal * ((lNumOfDays/FieldByName('days_per_month').AsFloat));
         end;
      end;
   finally
      dmAxiom.qryTmp.Close;
   end;
end;

procedure TfrmTimeSheet.SetMyWIP(var Message: TMessage);
var
   lDailyTotal_Wip,
   lDailyWIP_Ratio,
   lMonthlyWIP_Ratio,
   lMonthlyTotal_Wip,
   lTotalYearBudget,
   lTotalMonthBudget: double;
   lFinPeriod: integer;
   LFinDateFirst: TDate;
begin
   progbarMyYearlyTotal.Position := 0;
   progBarMyDailyTotal.Position := 0;
   progBarMyMonthlyTotal.Position := 0;
   if GetEmpYearlyBudget > 0 then
   begin
      // daily total
      with qryDailyTotal do
      begin
         Close;
         ParamByName('author').AsString := cbAuthor.EditValue;
         ParamByName('created').AsDate := dtpDate.Date;  // Now();
         open;
         lDailyTotal_Wip := FieldByName('total_wip').AsFloat;

         // daily budget
         lDailyWIP_Ratio := (lDailyTotal_Wip/GetEmpDailyBudget)*100;
         progBarMyDailyTotal.Position := lDailyWIP_Ratio;
         if ((lDailyWIP_Ratio > 0) and (lDailyWIP_Ratio <= 50)) then
         begin
            progBarMyDailyTotal.Properties.BeginColor := cRed;
            progBarMyDailyTotal.Properties. EndColor := cRed;
         end
         else
         if ((lDailyWIP_Ratio > 50) and (lDailyWIP_Ratio <= 80)) then
         begin
            progBarMyDailyTotal.Properties.BeginColor := cOrange;
            progBarMyDailyTotal.Properties. EndColor := cOrange;
         end
         else
         begin
            progBarMyDailyTotal.Properties.BeginColor := cGreen;
            progBarMyDailyTotal.Properties. EndColor := cGreen;
         end;
         close;
      end;

        // monthly budget
      with dmAxiom.qryTmp do
      begin
         close;
         SQL.Text := 'select sum(wip) as year_wip from budget where financial_year = get_fin_year(sysdate) '+
                     'and employee = :author and period = get_fin_period(to_char(:budgetdate,''MM''))';
         ParamByName('author').AsString := cbAuthor.EditValue;
         ParamByName('budgetdate').AsDateTime := dtpDate.Date;
         open;
         lTotalMonthBudget := FieldByName('year_wip').AsFloat;
         close;
      end;

      progBarMyMonthlyTotal.Properties.PeakValue := (MonthlyBudget/lTotalMonthBudget)*100;
      with qryMonthlyTotal do
      begin
         Close;
         ParamByName('author').AsString := cbAuthor.EditValue;
         ParamByName('date_from').AsDate := StartOfTheMonth(dtpDate.Date);
         ParamByName('date_to').AsDate := EndOfTheMonth(dtpDate.Date);
         open;
         lMonthlyTotal_Wip := FieldByName('total_wip').AsFloat;

         lMonthlyWIP_Ratio := (lMonthlyTotal_Wip/lTotalMonthBudget {GetEmpMonthlyBudget})*100;
         progBarMyMonthlyTotal.Position := lMonthlyWIP_Ratio;
         if ((lMonthlyWIP_Ratio > 0) and (lMonthlyWIP_Ratio <= 50)) then
         begin
            progBarMyMonthlyTotal.Properties.BeginColor := cRed;
            progBarMyMonthlyTotal.Properties. EndColor := cRed;
         end
         else
         if ((lMonthlyWIP_Ratio > 50) and (lMonthlyWIP_Ratio <= 80)) then
         begin
            progBarMyMonthlyTotal.Properties.BeginColor := cOrange;
            progBarMyMonthlyTotal.Properties. EndColor := cOrange;
         end
         else
         begin
            progBarMyMonthlyTotal.Properties.BeginColor := cGreen;
            progBarMyMonthlyTotal.Properties. EndColor := cGreen;
         end;
         Close;
      end;

      // yearly budget
      with dmAxiom.qryTmp do
      begin
         close;
         SQL.Text := 'select sum(wip) as year_wip from budget where financial_year = get_fin_year(:budgetdate) '+
                     'and employee = :author ';
         ParamByName('author').AsString := cbAuthor.EditValue;
         ParamByName('budgetdate').AsDateTime := dtpDate.Date;
         open;
         lTotalYearBudget := FieldByName('year_wip').AsFloat;
         close;
      end;

//      lFinPeriod := ProcInteger('get_fin_period', MonthOfTheYear(Now()));

      progbarMyYearlyTotal.Properties.PeakValue := (YearlyBudget/lTotalYearBudget)*100;  //(lFinPeriod/12)*100;
      with qryMonthlyTotal do
      begin
         Close;
         if (MonthOfTheYear(dtpDate.Date{Date()}) > 6) and (MonthOfTheYear(dtpDate.Date{Date()}) <= 12) then
         begin
            LFinDateFirst := EncodeDate(YearOf(dtpDate.Date{Date()}),7,1);
         end
         else
         begin
            LFinDateFirst := EncodeDate(YearOf(IncYear(dtpDate.Date{Date()},-1)),7,1);
         end;

         ParamByName('author').AsString := cbAuthor.EditValue;
         ParamByName('date_from').AsDate := LFinDateFirst;
         ParamByName('date_to').AsDate := dtpDate.Date;
         open;
         lMonthlyTotal_Wip := FieldByName('total_wip').AsFloat;

         lMonthlyWIP_Ratio := (lMonthlyTotal_Wip/lTotalYearBudget {GetEmpYearlyBudget})*100;
         progbarMyYearlyTotal.Position := lMonthlyWIP_Ratio;
         if ((lMonthlyWIP_Ratio > 0) and (lMonthlyWIP_Ratio <= 50)) then
         begin
            progbarMyYearlyTotal.Properties.BeginColor := cRed;
            progbarMyYearlyTotal.Properties. EndColor := cRed;
         end
         else
         if ((lMonthlyWIP_Ratio > 50) and (lMonthlyWIP_Ratio <= 80)) then
         begin
            progbarMyYearlyTotal.Properties.BeginColor := cOrange;
            progbarMyYearlyTotal.Properties. EndColor := cOrange;
         end
         else
         begin
            progbarMyYearlyTotal.Properties.BeginColor := cGreen;
            progbarMyYearlyTotal.Properties. EndColor := cGreen;
         end;
         Close;
      end;
   end;
   SetBudgetCaption;
end;

function TfrmTimeSheet.GetEmpDailyUnitsBudget(ADate: TDateTime): integer;
var
   lStartDate,
   lEndDate: TDateTime;
begin
   lStartDate := StartOfTheMonth(ADate);
   lEndDate := EndOfTheMonth(ADate);
   with dmAxiom.qryDailyUnitsBudget do
   begin
      Close;
      ParamByName('employee').AsString := cbAuthor.EditValue;
      ParamByName('rpt_date').AsDateTime := ADate;
      ParamByName('start_date').AsDateTime := lStartDate;
      ParamByName('end_date').AsDateTime := lEndDate;
      Open;
      Result := FieldByName('time').AsInteger;
      Close;
   end;
end;

procedure TfrmTimeSheet.SetBudgetCaption;
var
   lDailyBudget,
   lMonthlyBudget,
   lYearlyBudget: currency;
begin
   lDailyBudget := DailyBudget;
   lMonthlyBudget := MonthlyBudget;
   lYearlyBudget := YearlyBudget;
   if lDailyBudget = 0 then
      lblMyDailyBudget.Caption := 'No budget set.'
   else
      lblMyDailyBudget.Caption := 'Daily budget: '+FloatToStrF(lDailyBudget, ffCurrency, 8,2);

   if lMonthlyBudget = 0 then
      lblMyMonthlyBudget.Caption := 'No budget set.'
   else
      lblMyMonthlyBudget.Caption := 'Monthly budget to date: '+FloatToStrF(lMonthlyBudget, ffCurrency, 8,2);

   if lYearlyBudget = 0 then
      lblMyYearlyBudget.Caption := 'No budget set.'
   else
      lblMyYearlyBudget.Caption := 'Annual budget to date: '+FloatToStrF(lYearlyBudget, ffCurrency, 8,2);
end;


end.
