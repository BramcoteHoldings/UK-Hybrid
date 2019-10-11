unit MatterNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, DBCtrls, Mask, Buttons, OracleUniProvider, Uni, MemDS,
  TableCache, MatterLabel, DBAccess, Variants,DateUtils,ImgList,
  Menus, iLink_TLB, WorkFlowDocumentMerge,ExtCtrls, DB, VirtualTable, WorkFlowMergeDocument,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxCalendar, cxDBLookupComboBox,
  cxCheckBox, cxListBox, cxDropDownEdit, cxDBLabel, cxGridLevel, cxGrid,
  cxDBEdit, cxSpinEdit, cxGroupBox, cxCurrencyEdit, cxButtonEdit, dxBarDBNav,
  dxBar, cxClasses, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxDBExtLookupComboBox, cxTreeView, cxLabel, cxButtons,
  cxMemo, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxProgressBar,
  cxDateUtils, cxRichEdit, cxDBRichEdit, System.Actions, Vcl.ActnList,
  dxBarExtItems, cxRichEditUtils, dxStatusBar, Vcl.StdActns, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ExtActns, Vcl.PlatformDefaultStyleActnCtrls,
  dxCore, dxSkinsCore, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxCustomListBox,
  dxBarBuiltInMenu, cxPC, cxColorComboBox, dxNumericWheelPicker, dxGDIPlusClasses,
  dxDPIAwareUtils, System.ImageList, dxDateRanges;

  
type
  TfrmMatterNew = class(TForm)
    lblMatterNo: TLabel;
    lblClient: TLabel;    
    lblType: TLabel;
    lblDesc: TLabel;
    qryMatter: TUniQuery;
    dsMatter: TUniDataSource;
    qryMatterCheck: TUniQuery;
    Label6: TLabel;
    qryClient: TUniQuery;
    dsSource: TUniDataSource;
    Label9: TLabel;
    qryTmp: TUniQuery;
    qryClientUpdate: TUniQuery;
    qryCodeRules: TUniQuery;
    lblLabelCode: TLabel;
    Label18: TLabel;
    dsEntityBranches: TUniDataSource;
    Label4: TLabel;
    dsFeeBasis: TUniDataSource;
    OraDataSource1: TUniDataSource;
    dsMatterStatus: TUniDataSource;
    dsMatterType: TUniDataSource;
    lblSubType: TLabel;
    qWorkFlowType: TUniQuery;
    qWorkFlowTypeCODE: TStringField;
    qWorkFlowTypeDESCR: TStringField;
    dsWorkFlowType: TUniDataSource;
    qSubJuris: TUniQuery;
    qSubJurisCODE: TStringField;
    qSubJurisJURISDICTION: TStringField;
    qSubJurisDESCR: TStringField;
    qSubJurisROWID: TStringField;
    dsSubJuris: TDataSource;
    qJuris1: TUniQuery;
    dsJuris: TDataSource;
    qJuris1CODE: TStringField;
    qJuris1DESCR: TStringField;
    qJuris1ROWID: TStringField;
    qEntityBranches: TUniQuery;
    cbType: TcxDBLookupComboBox;
    qryMatterType: TUniQuery;
    cxEditStyleController1: TcxEditStyleController;
    cmbSubType: TcxDBLookupComboBox;
    qryMatterSubType: TUniQuery;
    dsMatterSubType: TUniDataSource;
    dbcbluBranch: TcxDBLookupComboBox;
    dbtbOPRef: TcxDBTextEdit;
    dbtbShortDescr: TcxDBTextEdit;
    dbmmoLongDescr: TcxDBMemo;
    dbtbLabelCode: TcxDBTextEdit;
    dtpOpen: TcxDBDateEdit;
    dbtbFileID: TcxDBTextEdit;
    tbEmployeePartner: TUniTable;
    dsEmployeePartner: TUniDataSource;
    tblFeeCode: TUniTable;
    dsFeeCode: TUniDataSource;
    tblFeeBasis: TUniTable;
    qryBanks: TUniQuery;
    dsBanks: TUniDataSource;
    tblMatterStatus: TUniTable;
    qJuris: TUniQuery;
    qJurisCODE: TStringField;
    qJurisDESCR: TStringField;
    tbEmployeeAuthor: TUniTable;
    dsEmployeeAuthor: TUniDataSource;
    tbEmployeeController: TUniTable;
    dsEmployeeController: TUniDataSource;
    tbEmployeeOperator: TUniTable;
    dsEmployeeOperator: TUniDataSource;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    tblEmployeeParaLegal: TUniTable;
    dsEmployeeParaLegal: TUniDataSource;
    lblDept: TLabel;
    qryDepartment: TUniQuery;
    dsDepartment: TUniDataSource;
    cbDepartment: TcxDBLookupComboBox;
    lblClientName: TcxLabel;
    btnClients: TcxButton;
    qryDebtorWorkflowTemplate: TUniQuery;
    dsDebtorWorkflowTemplate: TUniDataSource;
    tblTeam: TUniTable;
    dsTeam: TUniDataSource;
    qryEmployeeCode: TUniQuery;
    dsEmployeeCode: TUniDataSource;
    lvteam_employees: TcxTreeView;
    ImageList1: TImageList;
    qryEmployeeCodeTEAM_CODE: TStringField;
    qryEmployeeCodeDESCR: TStringField;
    qryEmployeeCodeNAME: TStringField;
    qryEmployeeCodeCODE: TStringField;
    dsCriticalDates: TUniDataSource;
    qryCriticalDates: TUniQuery;
    qryCriticalDatesCRITICAL_DATE: TDateTimeField;
    qryCriticalDatesDESCR: TStringField;
    qryCriticalDatesFINISHED: TStringField;
    qryMatterBudgets: TUniQuery;
    dsMatterBudgets: TUniDataSource;
    vtYear: TVirtualTable;
    vtPeriod: TVirtualTable;
    dsPeriod: TUniDataSource;
    dsYear: TUniDataSource;
    vtPeriodYEAR: TStringField;
    vtPeriodDESCR: TStringField;
    qryTaxRate: TUniQuery;
    dsTaxRate: TUniDataSource;
    qryWorkflowCriticalDates: TUniQuery;
    qryMatterWorkflowTasks: TUniQuery;
    dsScaleCosts: TUniDataSource;
    qryScaleCosts: TUniQuery;
    qEntityBranchesCODE: TStringField;
    qEntityBranchesENTITY: TStringField;
    qEntityBranchesDESCR: TStringField;
    tbEmployee: TUniTable;
    dsEmployee: TUniDataSource;
    procFileUpdate: TUniStoredProc;
    qryEmployees: TUniQuery;
    qryEmployeesAttached: TUniQuery;
    qryMatterSecurity: TUniQuery;
    qryMatterSecEmps: TUniQuery;
    qryUpdate: TUniQuery;
    YEAR: TIntegerField;
    DESCR: TStringField;
    qryWorkflowDoctemplate: TUniQuery;
    dsWorkflowDoctemplate: TUniDataSource;
    qryScaleCostsList: TUniQuery;
    dsScaleCostsList: TUniDataSource;
    qPostCodeSearchSuburb: TUniQuery;
    qPostCodeSearchSuburbSUBURB: TStringField;
    qPostCodeSearchSuburbPCODE: TStringField;
    qPostCodeSearchSuburbSTATE: TStringField;
    qryCriticalDatesNMATTER: TLargeintField;
    qryCriticalDatesTEMPLATELINEID: TLargeintField;
    qryAdvSource: TUniQuery;
    dsAdvSource: TUniDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    tvAdvertSource: TcxGridDBTableView;
    tvAdvertSourceADID: TcxGridDBColumn;
    tvAdvertSourceCODE: TcxGridDBColumn;
    tvAdvertSourceDESCR: TcxGridDBColumn;
    tvAdvertSourceDATE_START: TcxGridDBColumn;
    tvAdvertSourceDATE_END: TcxGridDBColumn;
    tvAdvertSourceREGION: TcxGridDBColumn;
    tvAdvertSourceSUPPLIER: TcxGridDBColumn;
    dsControlledMoney: TUniDataSource;
    ilstToolbar: TImageList;
    qryControlledMoney: TUniQuery;
    qryBank: TUniQuery;
    dsBank: TUniDataSource;
    qryAccountType: TUniQuery;
    dsAccountType: TUniDataSource;
    qryControlledTotal: TUniQuery;
    dsControlledTotal: TUniDataSource;
    procGetNewFileid: TUniStoredProc;
    Label29: TLabel;
    Label32: TLabel;
    cbPrintLabel: TCheckBox;
    qBillTemplate: TUniQuery;
    qBillTemplateCODE: TStringField;
    qBillTemplateDESCR: TStringField;
    dsBillTemplate: TDataSource;
    BarManager: TdxBarManager;
    BarManagerBar1: TdxBar;
    BarManagerBar2: TdxBar;
    BarManagerBar3: TdxBar;
    BarManagerBar4: TdxBar;
    dxBarButtonNew: TdxBarLargeButton;
    dxBarButtonOpen: TdxBarLargeButton;
    dxBarButtonClose: TdxBarLargeButton;
    dxBarButtonSave: TdxBarLargeButton;
    dxBarButtonSaveAs: TdxBarLargeButton;
    dxBarButtonPrint: TdxBarLargeButton;
    dxBarButtonExit: TdxBarLargeButton;
    dxBarMRUFiles: TdxBarMRUListItem;
    dxBarButtonUndo: TdxBarLargeButton;
    dxBarButtonCut: TdxBarLargeButton;
    dxBarButtonCopy: TdxBarLargeButton;
    dxBarButtonPaste: TdxBarLargeButton;
    dxBarButtonClear: TdxBarLargeButton;
    dxBarButtonSelectAll: TdxBarLargeButton;
    dxBarButtonFind: TdxBarLargeButton;
    dxBarButtonReplace: TdxBarLargeButton;
    dxBarComboFontSize: TdxBarCombo;
    dxBarButtonBold: TdxBarLargeButton;
    dxBarButtonItalic: TdxBarLargeButton;
    dxBarButtonUnderline: TdxBarLargeButton;
    dxBarButtonBullets: TdxBarLargeButton;
    dxBarButtonAlignLeft: TdxBarLargeButton;
    dxBarButtonCenter: TdxBarLargeButton;
    dxBarButtonAlignRight: TdxBarLargeButton;
    dxBarButtonProtected: TdxBarLargeButton;
    dxBarButtonFont: TdxBarLargeButton;
    dxBarComboFontColor: TdxBarColorCombo;
    dxBarComboFontName: TdxBarFontNameCombo;
    dxBarButtonNewWindow: TdxBarLargeButton;
    dxBarButtonArrangeAll: TdxBarLargeButton;
    dxBarButtonNextWindow: TdxBarLargeButton;
    dxBarButtonPreviousWindow: TdxBarLargeButton;
    dxBarListWindows: TdxBarListItem;
    dxBarSubItemFile: TdxBarSubItem;
    dxBarSubItemEdit: TdxBarSubItem;
    dxBarSubItemFormat: TdxBarSubItem;
    dxBarSubItemWindow: TdxBarSubItem;
    dxBarSubItemHelp: TdxBarSubItem;
    dxBarGroup1: TdxBarGroup;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    FontDialog: TFontDialog;
    alMain: TActionList;
    actHelp: TAction;
    actRateDemo: TAction;
    actDownloads: TAction;
    actForum: TAction;
    actDXOnTheWeb: TAction;
    actProducts: TAction;
    actAbout: TAction;
    actShowDemoDescription: TAction;
    Images: TImageList;
    ilDisabledImages: TImageList;
    ilHotImages: TImageList;
    ilStatusBarImages: TImageList;
    FindDialog: TFindDialog;
    ReplaceDialog: TReplaceDialog;
    dxBarPopupMenu: TdxBarPopupMenu;
    ActionManager1: TActionManager;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditStrikeOut1: TRichEditStrikeOut;
    FormatRichEditBullets1: TRichEditBullets;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    pnlBarcode: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label43: TLabel;
    qryProjectTemplate: TUniQuery;
    dsProjectTemplate: TUniDataSource;
    qryProjectScaleLinks: TUniQuery;
    actAddProjectDtls: TAction;
    qryProjectScaleLinksMatter: TUniQuery;
    qryProjectMatter: TUniQuery;
    dsProjectMatter: TUniDataSource;
    pageMatter: TcxPageControl;
    tabProject: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Project: TcxLabel;
    cxLabel2: TcxLabel;
    btnAddTasks: TcxButton;
    gedProjects: TcxGrid;
    tvProjects: TcxGridDBTableView;
    tvProjectsNPROJECTTEMPL: TcxGridDBColumn;
    tvProjectsSTART_DATE: TcxGridDBColumn;
    lvProjects: TcxGridLevel;
    cmbProjects: TcxLookupComboBox;
    dtStartDate: TcxDateEdit;
    cxGrid1: TcxGrid;
    tvScaleCost: TcxGridTableView;
    tvScaleCostCODE: TcxGridColumn;
    tvScaleCostDESCR: TcxGridColumn;
    tvScaleCostASSIGNEDTO: TcxGridColumn;
    tvScaleCostNPROJECTTEMPL: TcxGridColumn;
    tvScaleCostNSCALECOST: TcxGridColumn;
    tvScaleCostDAYS: TcxGridColumn;
    tvScaleCostSHAPE: TcxGridColumn;
    tvScaleCostID: TcxGridColumn;
    tvScaleCostPARENT_ID: TcxGridColumn;
    tvScaleCostCOLOUR: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    tabStaff: TcxTabSheet;
    tabCarriageAdditional: TcxPageControl;
    tabMatterCarriage: TcxTabSheet;
    tabMatterWorkflowCarriage: TcxTabSheet;
    tabMatterAdditionalCarriage: TcxTabSheet;
    cmbOperator: TcxDBLookupComboBox;
    cmbParaLegal: TcxDBLookupComboBox;
    cmbAuthor: TcxDBLookupComboBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxLabel1: TcxLabel;
    cmbTeam: TcxPopupEdit;
    cmbController: TcxDBLookupComboBox;
    lblOperator: TLabel;
    lblContro: TLabel;
    lblPartner: TLabel;
    cmbPartner: TcxDBLookupComboBox;
    lblAuthor: TLabel;
    lblParaLegal: TLabel;
    lblMember1: TLabel;
    lblMember10: TLabel;
    lblMember9: TLabel;
    lblMember8: TLabel;
    lblMember7: TLabel;
    lblMember6: TLabel;
    lblMember5: TLabel;
    lblMember4: TLabel;
    lblMember2: TLabel;
    lblMember3: TLabel;
    cmbMember1: TcxDBLookupComboBox;
    cmbMember2: TcxDBLookupComboBox;
    cmbMember3: TcxDBLookupComboBox;
    cmbMember4: TcxDBLookupComboBox;
    cmbMember5: TcxDBLookupComboBox;
    cmbMember6: TcxDBLookupComboBox;
    cmbMember7: TcxDBLookupComboBox;
    cmbMember8: TcxDBLookupComboBox;
    cmbMember9: TcxDBLookupComboBox;
    cmbMember10: TcxDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Editor: TcxDBRichEdit;
    tabContacts: TcxTabSheet;
    Label12: TLabel;
    Label11: TLabel;
    lblContact: TLabel;
    Bevel2: TBevel;
    Label30: TLabel;
    lStreetAddress: TLabel;
    lStreetSuburb: TLabel;
    lStreetState: TLabel;
    lStreetCountry: TLabel;
    lStreetPostCode: TLabel;
    Bevel1: TBevel;
    Label42: TLabel;
    dbtbContact: TcxDBButtonEdit;
    dbtbRefBy: TcxDBButtonEdit;
    dbtbBillTo: TcxDBButtonEdit;
    mStreetAddress: TDBRichEdit;
    eStreetSuburb: TcxDBButtonEdit;
    cbStreetState: TcxDBComboBox;
    eStreetPostCode: TDBEdit;
    cbStreetCountry: TcxDBLookupComboBox;
    gbOtherParties: TcxGroupBox;
    lblSpartyDesc: TLabel;
    lblSparty3Desc: TLabel;
    lblSparty2Desc: TLabel;
    dbtbOtherParty1: TcxDBButtonEdit;
    dbtbOtherParty2: TcxDBButtonEdit;
    dbtbOtherParty3: TcxDBButtonEdit;
    cbClientBillTemplate: TcxDBLookupComboBox;
    tabWorkflow: TcxTabSheet;
    cmbMatterStatus: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cmbSubJurisdiction: TcxDBLookupComboBox;
    dblWorkFlow: TcxDBLookupComboBox;
    grpCriticalDates: TcxGroupBox;
    grdSLEDates: TcxGrid;
    tvSLEDates: TcxGridTableView;
    tvSLEDatesDescription: TcxGridColumn;
    tvSLEDatesDate: TcxGridColumn;
    tvSLEDatesLineID: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    dtpSLEDate: TcxDBDateEdit;
    dtpCompleted: TcxDBDateEdit;
    cbSecureDocs: TcxDBCheckBox;
    cmbJurisdiction: TcxDBLookupComboBox;
    Label3: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lblCompletedWarning: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    lblCompleted: TLabel;
    tabDebtor: TcxTabSheet;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo1: TcxDBMemo;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cmbDebtorTemplate: TcxDBLookupComboBox;
    Label62: TLabel;
    Label61: TLabel;
    Label25: TLabel;
    Label5: TLabel;
    tabMatterBudgets: TcxTabSheet;
    cxGridBatterBudgets: TcxGrid;
    tvBatterBudgets: TcxGridDBTableView;
    tvBatterBudgetsYEAR: TcxGridDBColumn;
    tvBatterBudgetsPERIOD: TcxGridDBColumn;
    tvBatterBudgetsFEE_AMOUNT: TcxGridDBColumn;
    tvBatterBudgetsDESCR: TcxGridDBColumn;
    tvBatterBudgetsTASK: TcxGridDBColumn;
    tvBatterBudgetsCOMPLETED: TcxGridDBColumn;
    cxGridBatterBudgetsLevel1: TcxGridLevel;
    tabSecureDocs: TcxTabSheet;
    Panel1: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    lbAllEmployees: TcxListBox;
    lbSelectedEmployees: TcxListBox;
    btnLaunchAll: TcxButton;
    btnLaunchSelect: TcxButton;
    btnRemove: TcxButton;
    btnLaunchNone: TcxButton;
    tabNotes: TcxTabSheet;
    memoNotesMain: TcxDBRichEdit;
    tabAuthority: TcxTabSheet;
    chkAuthorityRecvd: TcxDBCheckBox;
    chkCostAgreement: TcxDBCheckBox;
    chkbTrustAuthority: TcxDBCheckBox;
    dtdbTrustAuthority: TcxDBDateEdit;
    dtdbDestroyAuthority: TcxDBDateEdit;
    dtdbCostAgreementReceived: TcxDBDateEdit;
    tabBalances: TcxTabSheet;
    cbFeeCode: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cmbBank: TcxDBLookupComboBox;
    cmbFeeBasis: TcxDBLookupComboBox;
    lblFeeCode: TLabel;
    lblFeeBasis: TLabel;
    lblTrustBank: TLabel;
    Label14: TLabel;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    tabEstimates: TcxTabSheet;
    tabRecurringFees: TcxTabSheet;
    spDefaultInt: TcxDBSpinEdit;
    gbCreditLimits: TcxGroupBox;
    lblFees: TLabel;
    lblOverallLimit: TLabel;
    lblDisbursements: TLabel;
    Label2: TLabel;
    dbtbBudgetFees: TcxDBTextEdit;
    dbtbBudgetTotal: TcxDBTextEdit;
    dbtbBudgetDisb: TcxDBTextEdit;
    dbsePercentCom: TcxDBSpinEdit;
    Label38: TLabel;
    gbEstimates: TcxGroupBox;
    lblEstFee: TLabel;
    lblEstDisbPrinc: TLabel;
    Label1: TLabel;
    lblEstCred: TLabel;
    lblEstDisbAgent: TLabel;
    lblPercent2: TLabel;
    lblxpectedCompletion: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label33: TLabel;
    lblTotalFeesRecorded: TLabel;
    dbtbEstFee: TcxDBTextEdit;
    dbtbEstDisbPrinc: TcxDBTextEdit;
    dbseProbSuccess: TcxDBSpinEdit;
    dbtbEstCred: TcxDBTextEdit;
    dbtbEstDisbAgent: TcxDBTextEdit;
    spinFeeAlertLimit: TcxDBSpinEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dtpExpCompletion: TcxDBDateEdit;
    progBarFeeTotal: TcxProgressBar;
    Label21: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label17: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    cmbTasks: TcxDBLookupComboBox;
    dtStart: TcxDBDateEdit;
    spinNoOfPayments: TcxDBSpinEdit;
    dfPaymentAmt: TcxDBCurrencyEdit;
    cmbFrequency: TcxDBComboBox;
    cmbRecFeeAuthor: TcxDBLookupComboBox;
    btnRecurringFees: TcxButton;
    tabContolledMoney: TcxTabSheet;
    editNotes: TcxDBTextEdit;
    cxCBBank: TcxDBLookupComboBox;
    Label41: TLabel;
    cxCBAccountType: TcxDBLookupComboBox;
    btnControlledMoneyNew: TBitBtn;
    cxTEAccount: TcxDBTextEdit;
    cxTEAccountName: TcxDBTextEdit;
    Label40: TLabel;
    Label34: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label35: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    tvScaleCostSEQ_ORDER: TcxGridColumn;
    qryCheckParent: TUniQuery;
    tvScaleCostPREC_ID: TcxGridColumn;
    qryProjectScaleLinksMatterID: TUniQuery;
    tabTrustBanks: TcxTabSheet;
    tvTrustBanks: TcxGridDBTableView;
    gridTrustBanksLevel1: TcxGridLevel;
    gridTrustBanks: TcxGrid;
    qryAdditionalTrustBanks: TUniQuery;
    dsAdditionalTrustBanks: TUniDataSource;
    tvTrustBanksNMATTER: TcxGridDBColumn;
    tvTrustBanksBANK: TcxGridDBColumn;
    Panel3: TPanel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxButton1: TcxButton;
    actDelProjectDtls: TAction;
    chkProspectiveMatter: TcxDBCheckBox;
    tvScaleCostBUDGET_LOW: TcxGridColumn;
    tvScaleCostBUDGET_HIGH: TcxGridColumn;
    tvScaleCostTIME_ESTIMATE: TcxGridColumn;
    tvScaleCostMAX_TIME_ESTIMATE: TcxGridColumn;
    dbtxtSourceOfFunds: TcxDBTextEdit;
    chkSourceOfFunds: TcxDBCheckBox;
    lblCostsAgreement: TLabel;
    cmbCostsAgreement: TcxDBLookupComboBox;
    chkPrintCostsAgreement: TCheckBox;
    pnlBillPlan: TPanel;
    lblRate: TLabel;
    lblBillingPlan: TLabel;
    dbtbRate: TcxDBCurrencyEdit;
    dbtbBillingPlan: TcxDBTextEdit;
    lblWIPCreditLimit: TLabel;
    progBarFeeCredit: TcxProgressBar;
    lblNoEstFees: TLabel;
    lblDisbCreditLimit: TLabel;
    progBarDisbTotal: TcxProgressBar;
    lblNoEstDisbs: TLabel;
    Label31: TLabel;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    Label13: TLabel;
    eDebtorEmail: TcxDBButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure sbtnContactClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure sbtnOParty1Click(Sender: TObject);
    procedure sbtnOParty2Click(Sender: TObject);
    procedure sbtnOParty3Click(Sender: TObject);
    procedure sbtnRefByClick(Sender: TObject);
    procedure sbtnBillToClick(Sender: TObject);
    procedure cbTypeClick(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure btnClientsClick(Sender: TObject);
    procedure dbmmoLongDescrEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtpCompletedExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cmbJurisdictionsChange(Sender: TObject);
    procedure cmbFeeBasisChange(Sender: TObject);
    procedure qryMatterAfterScroll(DataSet: TDataSet);
    procedure qJurisAfterScroll(DataSet: TDataSet);
    procedure dbtbBillToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbContactPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbRefByPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbOtherParty1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbOtherParty2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbOtherParty3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbFileIDEnter(Sender: TObject);
    procedure dbtbFileIDExit(Sender: TObject);
    procedure cmbJurisdictionPropertiesCloseUp(Sender: TObject);
    procedure cmbJurisdictionPropertiesChange(Sender: TObject);
    procedure cxDBDateEdit1PropertiesChange(Sender: TObject);
    procedure dbseProbSuccessPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure pageMatterChange(Sender: TObject);
    procedure cxDBPopupEdit1PropertiesInitPopup(Sender: TObject);
    procedure lvteam_employeesClick(Sender: TObject);
    procedure cmbTeamPropertiesInitPopup(Sender: TObject);
    procedure lvteam_employeesExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure lvteam_employeesCollapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure qryCriticalDatesCRITICAL_DATEValidate(Sender: TField);
    procedure qryMatterBudgetsNewRecord(DataSet: TDataSet);
    procedure dblWorkFlowPropertiesCloseUp(Sender: TObject);
    procedure dtpSLEDatePropertiesCloseUp(Sender: TObject);
    procedure tvBatterBudgetsTASKPropertiesInitPopup(Sender: TObject);
    procedure dbcbluBranchPropertiesCloseUp(Sender: TObject);
    procedure dbcbluBranchPropertiesChange(Sender: TObject);
    procedure cxDBSpinEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tabSecureDocsShow(Sender: TObject);
    procedure btnLaunchAllClick(Sender: TObject);
    procedure btnLaunchSelectClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnLaunchNoneClick(Sender: TObject);
    procedure cbSecureDocsClick(Sender: TObject);
    procedure cmbCostsAgreementPropertiesInitPopup(Sender: TObject);
    procedure dbtbEstFeePropertiesChange(Sender: TObject);
    procedure qryMatterEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure btnRecurringFeesClick(Sender: TObject);
    procedure tabRecurringFeesShow(Sender: TObject);
    procedure dbtbShortDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dbtbEstFeeExit(Sender: TObject);
    procedure eStreetSuburbPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eStreetSuburbPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnControlledMoneyNewClick(Sender: TObject);
    procedure qryControlledMoneyAfterInsert(DataSet: TDataSet);
    procedure cxCBBankPropertiesChange(Sender: TObject);
    procedure qryControlledMoneyBeforePost(DataSet: TDataSet);
    procedure EditorPropertiesChange(Sender: TObject);
    procedure dxBarButtonOpenClick(Sender: TObject);
    procedure tabMatterAdditionalCarriageShow(Sender: TObject);
    procedure ReplaceDialogReplace(Sender: TObject);
    procedure FindDialogFind(Sender: TObject);
    procedure dxBarButtonFontClick(Sender: TObject);
    procedure EditorEnter(Sender: TObject);
    procedure FontDialogApply(Sender: TObject; Wnd: HWND);
    procedure dxBarComboFontSizeChange(Sender: TObject);
    procedure dxBarComboFontSizeClick(Sender: TObject);
    procedure dxBarComboFontColorChange(Sender: TObject);
    procedure dxBarComboFontNameChange(Sender: TObject);
    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure dbtbBudgetFeesExit(Sender: TObject);
    procedure chkAuthorityRecvdClick(Sender: TObject);
    procedure chkCostAgreementClick(Sender: TObject);
    procedure actAddProjectDtlsExecute(Sender: TObject);
    procedure actAddProjectDtlsUpdate(Sender: TObject);
    procedure qryProjectScaleLinksMatterBeforeInsert(DataSet: TDataSet);
    procedure tvProjectsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cmbProjectsPropertiesCloseUp(Sender: TObject);
    procedure qryAdditionalTrustBanksNewRecord(DataSet: TDataSet);
    procedure actDelProjectDtlsUpdate(Sender: TObject);
    procedure actDelProjectDtlsExecute(Sender: TObject);
    procedure chkbTrustAuthorityClick(Sender: TObject);
  private
    { Private declarations }
    bneedSLEDate : boolean;
    bExpanding: Boolean;
    bEditing: Boolean;
    FNMatter: Integer;
    sWorkFlow: string;
    MatterLabel: TMatterLabel;
    FCriticalDateSeq: integer;
    oInforms: TclsLink;
    FFromDisplayMatter: boolean;
    FFileID: string;
    FWorkFlowMergeDocument: TfmWorkFlowMergeDocument;
    FbNewControlledMoney: boolean;
    FNClient: integer;
    FEditorValue: TMemoryStream;
    FileName: string;
    FUpdating: Boolean;
    lActivecontrol: TObject;

    function OKtoSave: Boolean;
    procedure PrintLabel(MatterId: Integer);
    procedure TransferMatter();
    procedure SetDisplayNames();
    procedure UpdateEmployeeNames();
    procedure SubJurisdictionState;
    procedure createWorkflowTasks(NMatter : integer);
    function checkCritcalDates(NMatter : integer) : boolean;
    function checkSLEDateEntered : boolean;
    procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
    function CheckCriticalDates(workflowtypecode: string): boolean;
    function GetRecordValue(ARecordIndex, AItemIndex: Integer): Variant;
    procedure StartCriticalTasks(NMatter: integer);
    procedure LoadSecureMatters(sCode : string);
    procedure SaveMatters(sCode : string);
    procedure SecureMatterDelete(sCode : string);

    procedure MergeFormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnUpdateWindowEvent(Sender: TObject);
    procedure PopulateProjectTasks(ANProjectTempl: integer);
  public
    { Public declarations }
    property FromDisplayMatter: boolean read FFromDisplayMatter write FFromDisplayMatter;
    property NClient: integer read FNClient write FNClient;
    procedure DisplayClient(iClient: integer);
    procedure MatterDisplay(iNMatter: integer);
    procedure SetModified(Value: Boolean);

  end;

implementation

{$R *.DFM}

uses
  CSearch, MatterDataForm, AxiomData, MiscFunc, PostcodeSearch,
  NSearch, Process, Desktop, MiscClasses, OptionsUser, citfunc,
  EmployeeFindDialog, WorkFlowToDo, WorkFlowMatterTasks, SystemFile,
  WorkFlowDataModuleRun, WorkFlowDataModule,WorkFlowTask, recurring_fees,
  Investment_Request;

procedure TfrmMatterNew.SetDisplayNames();
var
   imaxLength : integer;
   sCriticalDate : String;
begin
   imaxLength := 0;

   GetLabel(lblPartner,'MATTER','PARTNER',imaxLength, 'Partner');
   lblPartner.Caption := lblPartner.Caption + '*';

   GetLabel(lblOperator,'MATTER','OPERATOR',imaxLength, 'Operator');
//   lblOperator.Caption := lblOperator.Caption + '*';

   GetLabel(lblAuthor,'MATTER','AUTHOR',imaxLength, 'Author');
   lblAuthor.Caption := lblAuthor.Caption + '*';

   GetLabel(lblContro,'MATTER','CONTROLLER',imaxLength, 'Controller');
   GetLabel(lblParaLegal,'MATTER','PARA LEGAL',imaxLength, 'Para Legal');

   GetLabel(lblMember1,'MATTER','MEMBER1',imaxLength, 'Member1');
   GetLabel(lblMember2,'MATTER','MEMBER2',imaxLength, 'Member2');
   GetLabel(lblMember3,'MATTER','MEMBER3',imaxLength, 'Member3');
   GetLabel(lblMember4,'MATTER','MEMBER4',imaxLength, 'Member4');
   GetLabel(lblMember5,'MATTER','MEMBER5',imaxLength, 'Member5');

   GetLabel(lblMember6,'MATTER','MEMBER6',imaxLength, 'Member6');
   GetLabel(lblMember7,'MATTER','MEMBER7',imaxLength, 'Member7');
   GetLabel(lblMember8,'MATTER','MEMBER8',imaxLength, 'Member8');
   GetLabel(lblMember9,'MATTER','MEMBER9',imaxLength, 'Member9');
   GetLabel(lblMember10,'MATTER','MEMBER10',imaxLength, 'Member10');

   GetLabel(lblEstDisbPrinc,'MATTER','ESTIMATEDDISBPRINC',imaxLength, 'Est. Disb. (Principal)');
   GetLabel(lblEstCred,'MATTER','ESTIMATEDCREDITORS',imaxLength, 'Est. Creditors');
   GetLabel(lblEstDisbAgent,'MATTER','ESTIMATEDDISBAGENT',imaxLength, 'Est. Disb (Agent)');

   sCriticalDate := GetDisplayName('MATTER','CRITICAL_DATE');
   if sCriticalDate <> '' then
        grpCriticalDates.Caption := sCriticalDate;
end;

procedure TfrmMatterNew.FormShow(Sender: TObject);
var
   bFeeAlert: boolean;
begin
   qryCodeRules.ParamByName('ENTITY').AsString := dmAxiom.Entity;
   qryCodeRules.Open;

   // Default open date to today if not set, where -700000 is empty date
   if dtpOpen.Date = -700000 then
      dtpOpen.Date := Now;

   // read the auto print label setting
   cbPrintLabel.Checked := SettingLoadBoolean('MATTERLABEL', 'PRINTONCREATE');

   // store the workflow field for later
 //  sWorkFlow := dbtbTask.Text;

   dtpOpen.Properties.MaxDate := Date;

   dbtbOPRef.Enabled := (SystemString('DIS_MATTER_CLI_REF') = 'N');

   qWorkFlowType.Open();
   qEntityBranches.ParamByName('entity').AsString := dmAxiom.Entity;
   qEntityBranches.Open();

   if(not bEditing) then
   begin
      spDefaultInt.Value := SystemFloat('dflt_disb_interest');
      if qEntityBranches.RecordCount = 1 then
      begin
  //      dbcbluBranch.Properties.  KeyValue := qEntityBranchesCODE.AsString;
         if qryMatter.State <> dsEdit then
            qryMatter.Edit;
          qryMatter.FieldByName('BRANCH').AsString := qEntityBranchesCODE.AsString;
      end;
      try
         dblWorkflow.EditValue := dmAxiom.WorkPrecFlowDefault;
      except
        // nothing there
      end;
      dtStart.Date := Now();
      cmbFrequency.EditValue := 'Monthly';
      if qEntityBranches.RecordCount = 1 then
      begin
         dbcbluBranch.ItemIndex := 0;
         dbcbluBranch.Enabled := False;
      end;
      try
         {if qryBanks.RecordCount = 1 then }
         cmbBank.EditValue := dmAxiom.DefaultTrustBank;
      except
         //  nothing there
      end;
      //if TableString('PHONEBOOK', 'NCLIENT', qryClient.FieldByName('NCLIENT').AsInteger, 'PROSPECTIVE') = 'Y' then
         //chkProspectiveMatter.Checked := True
      qryMatter.FieldByName('PROSPECTIVE').AsString := TableString('PHONEBOOK', 'NCLIENT', qryClient.FieldByName('NCLIENT').AsInteger, 'PROSPECTIVE');
   end
   else
   begin
      if chkProspectiveMatter.Checked = True then
         chkProspectiveMatter.Enabled := dmAxiom.Security.Matter.Prospective
      else
         chkProspectiveMatter.Enabled := False;
   end;

   if not VarIsNull(dblWorkflow.EditValue) then
   begin
      with qryWorkflowDoctemplate do
      begin
         Close;
         try
            ParamByName('workflowtypecode').AsString := dblWorkflow.EditValue;
         except
           // silent
         end;
         Open;
      end;
   end;

   if FNClient <> 0 then
      btnClients.Enabled := bEditing;
   // estimated fees
   lblNoEstFees.Visible := False;
   progBarFeeTotal.Visible := False;
   bFeeAlert := dmAxiom.CheckFeeTotalInstalled;
   if bFeeAlert then
   begin
      if (qryMatter.FieldByName('ESTIMATEDFEE').AsCurrency > 0) then
      begin
         progBarFeeTotal.Visible := bFeeAlert;
         lblNoEstFees.Visible := False;
      end
      else
      begin
         lblNoEstFees.Visible := True;
         progBarFeeTotal.Visible := False;
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

   lblCostsAgreement.Visible := bFeeAlert;
   cmbCostsAgreement.Visible := bFeeAlert;
   chkPrintCostsAgreement.Visible := bFeeAlert;

   // estimated disbursements
   lblNoEstDisbs.Visible := False;
   progBarDisbTotal.Visible := False;
   lblDisbCreditLimit.Visible := False;
   bFeeAlert := dmAxiom.CheckDisbTotalInstalled;
   if bFeeAlert then
   begin
      if (qryMatter.FieldByName('ESTIMATEDDISBPRINC').AsCurrency > 0) then
      begin
         progBarDisbTotal.Visible := bFeeAlert;
         lblNoEstDisbs.Visible := False;
         lblDisbCreditLimit.Visible := True;
      end
      else
      begin
         lblNoEstDisbs.Visible := True;
         progBarDisbTotal.Visible := False;
         lblDisbCreditLimit.Visible := False;
      end;
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

//   if cbSecureDocs.Visible then
end;

procedure TfrmMatterNew.MatterDisplay(iNMatter: integer);
var
   nRowCount: integer;
begin
   bEditing := True;

   Self.Caption := 'Matter Edit';

   btnClients.Visible := True;

   qryMatter.Close;
   qryMatter.ParamByName('NMATTER').AsInteger := iNMatter;
   qryMatter.Open;

   FFileID := qryMatter.FieldByName('FILEID').AsString;

   tabRecurringFees.Enabled := (qryMatter.FieldByName('NMATTER').AsInteger > 0);

   qryAdditionalTrustBanks.Close;
   qryAdditionalTrustBanks.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryAdditionalTrustBanks.Open;

   with dmAxiom.qryMatterTrustBankList do
   begin
      Close;
      ParamByName('ENTITY').AsString := dmAxiom.Entity;
      ParamByName('ACCT').AsString := qryMatter.FieldByName('ACCT').AsString;
      Open;
   end;

   tabContolledMoney.TabVisible := True;
   cxCBBank.Properties.OnChange := nil;
   qryControlledMoney.Close;
   qryControlledMoney.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryControlledMoney.Open;
   btnControlledMoneyNew.Enabled := (qryControlledMoney.FieldByName('NDEPOSITACCOUNT').IsNull = True) and dmAxiom.Security.Matter.ControlledMonies.CanAdd;
   cxCBBank.Properties.OnChange := cxCBBankPropertiesChange;
   qryControlledTotal.Close;
   qryControlledTotal.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryControlledTotal.Open;
   if (qryControlledMoney.FieldByName('NDEPOSITACCOUNT').IsNull = True) then
   begin
      cxTEAccount.Enabled := False;
      cxCBBank.Enabled := False;
      cxTEAccountName.Enabled := False;
      cxCBAccountType.Enabled := False;
      editNotes.Enabled := False;
   end
   else
   begin
      cxTEAccount.Enabled := (qryControlledTotal.FieldByName('balanceamt').AsCurrency <> 0) and
                              dmAxiom.Security.Matter.ControlledMonies.CanEdit and
                           (qryControlledMoney.FieldByName('NDEPOSITACCOUNT').IsNull = True);
      cxCBBank.Enabled := (qryControlledTotal.FieldByName('balanceamt').AsCurrency <> 0) and
                       dmAxiom.Security.Matter.ControlledMonies.CanEdit and
                       (qryControlledMoney.FieldByName('NDEPOSITACCOUNT').IsNull = True);
   end;

   lblClientName.Caption := TableString('PHONEBOOK','NCLIENT',qryMatter.FieldByName('nclient').AsInteger,'SEARCH');

   cmbTeam.Text := TableString('TEAM','CODE',qryMatter.FieldByName('TEAM').AsString,'DESCR');

   qryClient.Close;
   qryClient.ParamByName('P_NClient').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
   qryClient.Open;

   dbtbFileID.Style.Color := clWindow;
   dbtbFileID.Enabled := dmAxiom.Security.Matter.AllowEditMatterNo;

 {  qryEmployeeCode.Close;
   if qryMatter.FieldByName('team').AsString = '' then
   begin
      qryEmployeeCode.SQL.Text := 'select * from team_employee t, employee e where t.emp_code = e.code ';
      qryEmployeeCode.Open;
   end
   else
   begin
     qryEmployeeCode.ParamByName('code').AsString := qryMatter.FieldByName('team').AsString;
     qryEmployeeCode.Open;
   end;   }

   if qryMatter.FieldByName('EXP_COMPLETION').AsString <> '' then
   begin
 //    dtpExpCompletion.Checked := True;
      dtpExpCompletion.Date := qryMatter.FieldByName('EXP_COMPLETION').AsDateTime;
   end;

 //  dtpOpen.Date := qryMatter.FieldByName('OPENED').AsDateTime;
     // Since we are editing, allow them to see and change the completion date
   lblCompleted.Visible := True;
   dtpCompleted.Visible := True;
 //  dtpExpCompletion.Date := Now;
     //lblCompletedWarning.Visible := True;
 //  if qryMatter.FieldByName('COMPLETED').AsString <> '' then
 //  begin
 //**********************************************************************
 //    dtpCompleted.Checked := True;
 //    dtpCompleted.Date := qryMatter.FieldByName('COMPLETED').AsDateTime;
       //lblCompletedWarning.Caption := '(Unchecking this will re-open the Matter)';
 //  end;

 //  dtpSLEDate.Checked := not qryMatter.FieldByName('SLEDATE').IsNull;
 //  if(dtpSLEDate.Checked) then
 //    dtpSLEDate.Date := qryMatter.FieldByName('SLEDATE').AsDateTime;

   {md display employee full names}
 //  UpdateEmployeeNames();

   //dblWorkFlow.ReadOnly := not VarIsNull(dblWorkFlow.KeyValue);
   cmbPartner.Enabled    := dmAxiom.Security.Matter.Carriage.CanChangePartner;
   cmbController.Enabled := dmAxiom.Security.Matter.Carriage.CanChangeController;
   cmbAuthor.Enabled     := dmAxiom.Security.Matter.Carriage.CanChangeAuthor;
   cmbOperator.Enabled   := dmAxiom.Security.Matter.Carriage.CanChangeOperator;
   cmbParaLegal.Enabled  := dmAxiom.Security.Matter.Carriage.CanChangeParalegal;


//   qryCriticalDates.Close;
//   qryCriticalDates.ParamByName('nmatter').AsInteger := iNMatter;
//   qryCriticalDates.Open;
   qryWorkflowCriticalDates.close;
//   qryWorkflowCriticalDates.paramByName('workflowtypecode').AsInteger := dblWorkFlow.EditValue;
   qryWorkflowCriticalDates.paramByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryWorkflowCriticalDates.open;


   grpCriticalDates.Visible := (not qryWorkflowCriticalDates.Eof);
   if (grpCriticalDates.Visible = True) then
   begin
      nRowCount := 0;
      tvSLEDates.BeginUpdate;

      tvSLEDates.DataController.RecordCount := 0;

      while (qryWorkflowCriticalDates.eof = False ) do
      begin
         try
            tvSLEDates.DataController.AppendRecord;
            begin
               SetRecordValue(nRowCount, tvSLEDatesDescription.Index, qryWorkflowCriticalDates.FieldByName('TASKDESCRIPTION').AsString);
               if qryWorkflowCriticalDates.FieldByName('DATETOCOMPLETE').AsDateTime <> 0 then
                  SetRecordValue(nRowCount, tvSLEDatesDate.Index, qryWorkflowCriticalDates.FieldByName('DATETOCOMPLETE').AsDateTime);
//               else
//                  SetRecordValue(nRowCount, tvSLEDatesDate.Index, NullDate);
               SetRecordValue(nRowCount, tvSLEDatesLineID.Index, qryWorkflowCriticalDates.FieldByName('templatelineid').AsInteger);
            end;
         except
            ;
         end;
         qryWorkflowCriticalDates.Next;
         Inc(nRowCount)
      end;
      tvSLEDates.EndUpdate;
   end;

   tabsecureDocs.TabVisible := (cbSecureDocs.Enabled) and (cbSecureDocs.Checked);

   qryMatterBudgets.Close;
   qryMatterBudgets.ParamByName('nmatter').AsInteger :=  iNMatter;
   qryMatterBudgets.open;

   SetReqFieldsColour('MATTER',qryMatter, Self);

   pageMatter.ActivePage := tabBalances;
   SetReqFieldsColour('MATTER',qryMatter, tabBalances);
   SetReqFieldsColour('MATTER',qryMatter, tabEstimates);

   tabMatterWorkflowCarriage.TabVisible := (SystemString('HIDE_MAT_WKFLOW_CARRIAGE_TAB') = 'N');
   tabWorkflow.TabVisible := (SystemString('HIDE_MATTER_WORKFLOW_TAB') = 'N');
   tabMatterBudgets.TabVisible := (SystemString('HIDE_MATTER_BUDGETS_TAB') = 'N');

   cmbOperator.Visible :=  (SystemString('HIDE_CARRIAGE_OPERATOR') = 'N');
   cmbParaLegal.Visible := (SystemString('HIDE_CARRIAGE_PARALEGAL') = 'N');
   cmbTeam.Visible :=      (SystemString('HIDE_CARRIAGE_TEAM') = 'N');

   if progBarFeeTotal.Visible then
   begin
      if spinFeeAlertLimit.Value > 0 then
      begin
//         progBarFeeTotal.Properties.OverloadValue := spinFeeAlertLimit.Value;
//         progBarFeeTotal.Properties.PeakValue := spinFeeAlertLimit.Value;
         try
            progBarFeeTotal.Properties.BeginColor := clLime;
            progBarFeeTotal.Properties.EndColor := clGreen;
            progBarFeeTotal.Position := dmAxiom.GetFeeTotal(iNMatter);
            if progBarFeeTotal.Position > spinFeeAlertLimit.Value then
            begin
               progBarFeeTotal.Properties.OverloadValue := spinFeeAlertLimit.Value;
               progBarFeeTotal.Properties.BeginColor := clRed;
               progBarFeeTotal.Properties.EndColor := clRed;
            end;
         except
            progBarFeeTotal.Position := 0;
         end;
      end
      else
         progBarFeeTotal.Position := 0;
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
   qryProjectMatter.Close;
   qryProjectMatter.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryProjectMatter.Open;
//   cmbBank.Enabled := False;
end;


procedure TfrmMatterNew.PrintLabel(MatterId: Integer);
begin
   if cbPrintLabel.Checked then
   begin
      if not assigned(MatterLabel) then
         MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
      if not MatterLabel.Cancelled then
         MatterLabel.Print(MatterId);
  end;
end;


procedure TfrmMatterNew.TransferMatter;
var
  frmProcess: TfrmProcess;
begin
  // Transfer this matter from the client in qryClient to the one on the Matter
  frmProcess := TfrmProcess.Create(Self);
  try
    if dmAxiom.uniInsight.InTransaction then
       dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;

    frmProcess.lblProcess.Caption := 'Transferring Matter';
    frmProcess.pbProcess.Max := 7;
    frmProcess.Show;
    Application.ProcessMessages;

    // Adjust the old Client's balances down
    frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
    Application.ProcessMessages;
    qryClientUpdate.ParamByName('NCLIENT').AsInteger := qryClient.FieldByName('NCLIENT').AsInteger;
    qryClientUpdate.ParamByName('MATTERS').AsInteger := -1;
    qryClientUpdate.ParamByName('UNBILL_FEES').AsFloat := 0 - qryMatter.FieldByName('UNBILL_FEES').AsCurrency;
    qryClientUpdate.ParamByName('DEBTORS').AsFloat := 0 - qryMatter.FieldByName('DEBTORS').AsCurrency;
    qryClientUpdate.ParamByName('UNBILL_DISB').AsFloat := 0 - qryMatter.FieldByName('UNBILL_DISB').AsCurrency;
    qryClientUpdate.ParamByName('BILL_FEES').AsFloat := 0 - qryMatter.FieldByName('BILL_FEES').AsCurrency;
    qryClientUpdate.ParamByName('BILL_DISB').AsFloat := 0 - qryMatter.FieldByName('BILL_DISB').AsCurrency;
    qryClientUpdate.ParamByName('TRUST_BAL').AsFloat := 0 - qryMatter.FieldByName('TRUST_BAL').AsCurrency;
    qryClientUpdate.ParamByName('CL_TRUST_BAL').AsFloat := 0 - qryMatter.FieldByName('CL_TRUST_BAL').AsCurrency;
    qryClientUpdate.ExecSQL;
    // Adjust the new Client's balances up
    frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
    Application.ProcessMessages;
    qryClientUpdate.ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
    qryClientUpdate.ParamByName('MATTERS').AsInteger := 0; // Will be adjusted up in the normal posting routine
    qryClientUpdate.ParamByName('UNBILL_FEES').AsFloat := qryMatter.FieldByName('UNBILL_FEES').AsCurrency;
    qryClientUpdate.ParamByName('DEBTORS').AsFloat := qryMatter.FieldByName('DEBTORS').AsCurrency;
    qryClientUpdate.ParamByName('UNBILL_DISB').AsFloat := qryMatter.FieldByName('UNBILL_DISB').AsCurrency;
    qryClientUpdate.ParamByName('BILL_FEES').AsFloat := qryMatter.FieldByName('BILL_FEES').AsCurrency;
    qryClientUpdate.ParamByName('BILL_DISB').AsFloat := qryMatter.FieldByName('BILL_DISB').AsCurrency;
    qryClientUpdate.ParamByName('TRUST_BAL').AsFloat := qryMatter.FieldByName('TRUST_BAL').AsCurrency;
    qryClientUpdate.ParamByName('CL_TRUST_BAL').AsFloat := qryMatter.FieldByName('CL_TRUST_BAL').AsCurrency;
    qryClientUpdate.ExecSQL;

    frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
    Application.ProcessMessages;

    qryTmp.SQL.Text := 'UPDATE ALLOC SET NCLIENT = ' + IntToStr(qryMatter.FieldByName('NCLIENT').AsInteger) + ' WHERE NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger);
    qryTmp.ExecSQL;

    frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
    Application.ProcessMessages;

    qryTmp.SQL.Text := 'UPDATE FEE SET NCLIENT = ' + IntToStr(qryMatter.FieldByName('NCLIENT').AsInteger) + ' WHERE NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger);
    qryTmp.ExecSQL;

    frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
    Application.ProcessMessages;

    qryTmp.SQL.Text := 'UPDATE NMEMO SET NCLIENT = ' + IntToStr(qryMatter.FieldByName('NCLIENT').AsInteger) + ' WHERE NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger);
    qryTmp.ExecSQL;

    frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
    Application.ProcessMessages;

    qryTmp.SQL.Text := 'UPDATE SUNDRY SET NCLIENT = ' + IntToStr(qryMatter.FieldByName('NCLIENT').AsInteger) + ' WHERE NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger);
    qryTmp.ExecSQL;

    frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
    Application.ProcessMessages;

    qryClient.Close;
    qryClient.ParamByName('P_NClient').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
    qryClient.Open;

    dmAxiom.uniInsight.Commit;
  except
    On E: Exception do
    begin
      dmAxiom.uniInsight.Rollback;
      MsgErr('Matter transfer failed' + #13 + #13 + E.Message);
    end;
  end;

  frmProcess.Release;
end;

procedure TfrmMatterNew.sbtnContactClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('CONTACT').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatterNew.DisplayClient(iClient: integer);
begin
   begin
      with qryClient do
      begin
         dbtbFileID.Enabled := dmAxiom.Security.Matter.AllowEditMatterNo;
         Close;
         ParamByName('P_NClient').AsInteger := iClient;
         Open;
         if iClient = 0 then FNClient := iClient;

{         if IsEmpty then
            qryClient.Close
         else      }
         begin
//           AddBanks(cmtmp, 'T');
           lblClientName.Caption := TableString('PHONEBOOK','NCLIENT',iClient,'SEARCH');

           qryMatter.Close;
           qryMatter.ParamByName('NMATTER').AsInteger := -1;
           qryMatter.Open;
           qryMatter.Insert;
           qryMatter.FieldByName('OPENED').AsDateTime := Now;
           qryMatter.FieldByName('created').AsDateTime := Now;
           qryMatter.FieldByName('TITLE').AsString := FieldByName('SEARCH').AsString;
           qryMatter.FieldByName('CLIENT_NAME').AsString := FieldByName('SEARCH').AsString;
           qryMatter.FieldByName('NBILL_TO').AsString := TableString('PHONEBOOK','NCLIENT',iClient,'NNAME'); //   FieldByName('NCLIENT').AsString;
           qryMatter.FieldByName('BILL_TO').AsString := FieldByName('SEARCH').AsString;
           qryMatter.FieldByName('NCLIENT').AsInteger := FieldByName('NCLIENT').AsInteger;
           qryMatter.FieldByName('CLIENTID').AsString := FieldByName('CODE').AsString;
           if FieldByName('FEECODE').AsString <> '' then
           begin
              //cbFeeCode.ItemIndex := cbFeeCode.Items.IndexOf(FieldByName('FEECODE').AsString);
              qryMatter.FieldByName('FEECODE').AsString := FieldByName('FEECODE').AsString;
              //cbFeeCode.OnClick(Self);
           end;
           if qryMatter.FieldByName('FEECODE').IsNull and (SystemString('DFLT_MATTER_FEE_RATE') <> '') then
              qryMatter.FieldByName('FEECODE').AsString := SystemString('DFLT_MATTER_FEE_RATE');

           if FieldByName('PARTNER').AsString <> '' then
           begin
              qryMatter.FieldByName('PARTNER').AsString := FieldByName('PARTNER').AsString;
              qryMatter.FieldByName('CONTROLLER').AsString := FieldByName('PARTNER').AsString;
              //cbController.ItemIndex := cbController.Items.IndexOf(FieldByName('PARTNER').AsString);
           end
           else
           begin
              //cbPartner.ItemIndex := cbPartner.Items.IndexOf(SettingLoadString('Matter New', 'Partner'));
              //cbController.ItemIndex := cbController.Items.IndexOf(SettingLoadString('Matter New', 'Controller'));
              qryMatter.FieldByName('PARTNER').AsString := SettingLoadString('Matter New', 'Partner');
              qryMatter.FieldByName('CONTROLLER').AsString := SettingLoadString('Matter New', 'Controller');
           end;

           //cbAuthor.ItemIndex := cbAuthor.Items.IndexOf(SettingLoadString('Matter New', 'Author'));
           qryMatter.FieldByName('AUTHOR').AsString := SettingLoadString('Matter New', 'Author');

           //cbType.ItemIndex := cbType.Items.IndexOf(SettingLoadString('Matter New', 'Type'));
           qryMatter.FieldByName('TYPE').AsString := SettingLoadString('Matter New', 'Type');


           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_1').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_1').AsString := SettingLoadString('Matter New', 'Member1');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_2').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_2').AsString := SettingLoadString('Matter New', 'Member2');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_3').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_3').AsString := SettingLoadString('Matter New', 'Member3');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_4').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_4').AsString := SettingLoadString('Matter New', 'Member4');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_5').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_5').AsString := SettingLoadString('Matter New', 'Member5');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_6').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_6').AsString := SettingLoadString('Matter New', 'Member6');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_7').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_7').AsString := SettingLoadString('Matter New', 'Member7');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_8').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_8').AsString := SettingLoadString('Matter New', 'Member8');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_9').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_9').AsString := SettingLoadString('Matter New', 'Member9');

           if qryMatter.FieldByName('WKFLOW_PER_LEVEL_10').AsString = '' then
              qryMatter.FieldByName('WKFLOW_PER_LEVEL_10').AsString := SettingLoadString('Matter New', 'Member10');

           qryMatter.FieldByName('FILEID').AsString := AUTO_CAPTION;
           qryMatter.FieldByName('TRUSTAUTH').AsString := 'N';
           qryMatter.FieldByName('AGENCY').AsString := 'N';
           qryMatter.FieldByName('GRATIS').AsString := 'N';
           qryMatter.FieldByName('LITIGATION').AsString := 'N';
           qryMatter.FieldByName('SPECULATION').AsString := 'N';
           qryMatter.FieldByName('NDEBTORTASKTEMPLATE').AsInteger := FieldByName('NDEBTORTASKTEMPLATE').AsInteger;
           qryMatter.FieldByName('FEE_TAX_BASIS').AsString := FieldByName('FEE_TAX_BASIS').AsString;
           qryMatter.FieldByName('FEEBASIS').AsString := SystemString('DEFLT_MATTER_FEE_BASIS');

           qryMatter.FieldByName('CREATED_BY').AsString := dmAxiom.UserID;
           {display employee names here somewhere}
           UpdateEmployeeNames();

           tabRecurringFees.Enabled := False;
           tabProject.Enabled := False;

           qryMatterBudgets.Close;
           qryMatterBudgets.ParamByName('NMATTER').AsInteger := qryMatter.ParamByName('NMATTER').AsInteger;
           qryMatterBudgets.open;
           SetReqFieldsColour('MATTER',qryMatter, TForm(Self));
         end;
      end;
   end;
end;

procedure TfrmMatterNew.btnControlledMoneyNewClick(Sender: TObject);
begin
   qryControlledMoney.Insert;
   btnControlledMoneyNew.Enabled := False;
   cxTEAccount.Enabled := dmAxiom.Security.Matter.ControlledMonies.CanAdd;
   cxCBBank.Enabled := dmAxiom.Security.Matter.ControlledMonies.CanAdd;
   cxTEAccountName.Enabled := True;
   cxCBAccountType.Enabled := True;
   editNotes.Enabled := True;
end;

procedure TfrmMatterNew.actAddProjectDtlsExecute(Sender: TObject);
var
   I: integer;
begin
// Load this assigned scalecosts
   tvScaleCost.DataController.RecordCount := 0;
   qryProjectScaleLinks.ParamByName('P_val').AsInteger := cmbProjects.EditValue;
   qryProjectScaleLinks.ParamByName('nmatter').AsInteger := qryMatter.ParamByName('NMATTER').AsInteger;
   qryProjectScaleLinks.Open;
   qryProjectScaleLinks.Last;
   qryProjectScaleLinks.First;
   tvScaleCost.BeginUpdate();
   tvScaleCost.DataController.RecordCount := qryProjectScaleLinks.RecordCount;
   I := 0;
   while not qryProjectScaleLinks.EOF do
   begin
      tvScaleCost.DataController.Values[I, 0] := qryProjectScaleLinks.FieldByName('CODE').AsString;
      tvScaleCost.DataController.Values[I, 1] := qryProjectScaleLinks.FieldByName('DESCR').AsString;
      tvScaleCost.DataController.Values[I, 2] := qryProjectScaleLinks.FieldByName('empcode').AsString;
      tvScaleCost.DataController.Values[I, 3] := integer(cmbProjects.EditValue);
      tvScaleCost.DataController.Values[I, 4] := qryProjectScaleLinks.FieldByName('NSCALECOST').AsInteger;
      tvScaleCost.DataController.Values[I, 5] := qryProjectScaleLinks.FieldByName('DAYS').AsInteger;
      tvScaleCost.DataController.Values[I, 6] := qryProjectScaleLinks.FieldByName('TYPE').AsString;
      tvScaleCost.DataController.Values[I, 7] := qryProjectScaleLinks.FieldByName('ID').AsInteger;
      tvScaleCost.DataController.Values[I, 8] := qryProjectScaleLinks.FieldByName('PARENT_ID').AsInteger;
      tvScaleCost.DataController.Values[I, 9] := qryProjectScaleLinks.FieldByName('COLOUR').AsInteger;
      tvScaleCost.DataController.Values[I, 10] := qryProjectScaleLinks.FieldByName('SEQ_ORDER').AsInteger;
      tvScaleCost.DataController.Values[I, 12] := qryProjectScaleLinks.FieldByName('BUDGET_LOW').AsFloat;
      tvScaleCost.DataController.Values[I, 13] := qryProjectScaleLinks.FieldByName('BUDGET_HIGH').AsFloat;
      tvScaleCost.DataController.Values[I, 14] := qryProjectScaleLinks.FieldByName('TIME_ESTIMATE').AsFloat;
      tvScaleCost.DataController.Values[I, 15] := qryProjectScaleLinks.FieldByName('MAX_TIME_ESTIMATE').AsFloat;

      qryProjectScaleLinks.Next;
      Inc(I);
   end;
   tvScaleCost.EndUpdate;
   qryProjectScaleLinks.Close;

end;

procedure TfrmMatterNew.actAddProjectDtlsUpdate(Sender: TObject);
begin
   actAddProjectDtls.Enabled := ((dtStartDate.Date <> NULLDate) and (cmbProjects.Text <> ''));
end;

procedure TfrmMatterNew.actDelProjectDtlsExecute(Sender: TObject);
var
   AprojectTempl: integer;
begin
   if MsgAsk('This action will delete the selected project and associated tasks. Continue?') = mrYes then
   begin
      try
         AprojectTempl := tvProjectsNPROJECTTEMPL.EditValue;
         with dmAxiom.qryTmp do
         begin
            Close;
            // delete feetmps
            SQL.Text := 'delete from feetmp where NPROJECTTEMPL = :NPROJECTTEMPL and nmatter = :nmatter';
            ParamByName('nmatter').asinteger := qryMatter.ParamByName('NMATTER').AsInteger;
            ParamByName('NPROJECTTEMPL').AsInteger := AprojectTempl;
            Execute;
            Close;
            // delete tasktmps
            SQL.Text := 'delete from tasktmp where NPROJECTTEMPL = :NPROJECTTEMPL and nmatter = :nmatter';
            ParamByName('nmatter').asinteger := qryMatter.ParamByName('NMATTER').AsInteger;
            ParamByName('NPROJECTTEMPL').AsInteger := AprojectTempl;
            Execute;
            tvScaleCost.DataController.RecordCount := 0;
            //delete project from matter
            Close;
            SQL.Text := 'delete from PROJECT_TEMPLATE_MATTER where NPROJECTTEMPL = :NPROJECTTEMPL and nmatter = :nmatter';
            ParamByName('nmatter').asinteger := qryMatter.ParamByName('NMATTER').AsInteger;
            ParamByName('NPROJECTTEMPL').AsInteger := AprojectTempl;
            Execute;
         end;
      finally
         qryProjectMatter.Close;
         qryProjectMatter.Open;
      end;
   end;
end;

procedure TfrmMatterNew.actDelProjectDtlsUpdate(Sender: TObject);
begin
   actDelProjectDtls.Enabled := (tvProjects.DataController.RowCount > 0);
end;

procedure TfrmMatterNew.btnCancelClick(Sender: TObject);
begin
   try
      if qryMatter.Modified {dmAxiom.uniInsight.TransactionCount > 0} then
         qryMatter.CancelUpdates;
//         dmAxiom.uniInsight.Rollback;
   except
      //
   end;
   ModalResult := mrCancel;
end;

procedure TfrmMatterNew.btnOKClick(Sender: TObject);
var
   bInserted, bModified: boolean;
   sMatterCode,
   sTmp,
   sWorkflowCode,
   LMergeType,
   NewSearch,
   sBpayCode,
   sDfltUnit: string;
   i, x,
   iCtr: Integer;
   LForm: TForm;
   s1,s2,s3,s4: WideString;
   nRet: integer;
   ANewMatterSeq,
   nDays,
   nParentDays: integer;
   LfrmMatterDataForm: TfrmMatterDataForm;
   FileIDNotFound: boolean;
   dtActionDate, AEnd_Date: TDateTime;
   myYear, myMonth, myDay,
   myHour, myMin, mySec, myMilli : Word;
   AMins: double;
   dAmount: double;

   label lsaveOk;
begin
   bModified := False;
   if dbmmoLongDescr.Text = '' then
      qryMatter.FieldByName('LONGDESCR').AsString := dbtbShortDescr.Text;
   if {bneedSLEDate or }  OKtoSave then
   begin
      try

      { if this is the second save then every thing else is ok
        and we just need to make sure the SLE dates have been input
        If these are ok you jump to label lsaveOk

      }
 {     if bneedSLEDate then
      begin
           if checkSLEDateEntered then
                   goto lsaveOk
           else
           begin
               MsgErr('You need to enter at least one ' + tabCriticalDate.Caption);
               exit;
           end;

      end;     }

         if (qryClient.FieldByName('NCLIENT').AsInteger <> qryMatter.FieldByName('NCLIENT').AsInteger) and
            (FNClient <> 0) then
              TransferMatter;

         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         bInserted := False;
         with qryMatter do
         begin
           if bEditing then
           begin
//             sWorkflowCode := dbtbTask.Text;
               Edit;
//             FieldByName('TASK').AsString := sWorkflowCode;
           end
           else
           begin
             if (dbtbFileID.Text = AUTO_CAPTION) then
                FNMATTER := GetMatter(dbcbluBranch.EditValue)
             else
                FNMATTER := GetSequenceNumber('SQNC_NMATTER');

             createWorkflowTasks(FNMATTER);

             FieldByName('NMATTER').AsInteger := FNMATTER;
             bInserted := True;
           end;
           FNMatter := FieldByName('NMATTER').AsInteger;

           FieldByName('NNAME').AsInteger := TableInteger('PHONEBOOK','NCLIENT',FieldByName('nclient').AsInteger,'NNAME');
           FieldByName('CLIENTID').AsString := TableString('CLIENT','NCLIENT',FieldByName('nclient').AsInteger,'CODE');
           // AES 15-02-2010 added test to check bill to text
           if (dbtbBillTo.Text = '') then
           begin
              FieldByName('BILL_TO').AsString := TableString('PHONEBOOK','NCLIENT',FieldByName('nclient').AsInteger,'SEARCH');
              FieldByName('NBILL_TO').AsString := TableString('PHONEBOOK','NCLIENT',FieldByName('nclient').AsInteger,'NNAME');
           end;

           SettingDelete('Matter New', 'Partner');
           SettingDelete('Matter New', 'Controller');
           SettingDelete('Matter New', 'Author');
           SettingDelete('Matter New', 'Operator');
           SettingDelete('Matter New', 'ParaLegal');
           SettingDelete('Matter New', 'Member1');
           SettingDelete('Matter New', 'Member2');
           SettingDelete('Matter New', 'Member3');
           SettingDelete('Matter New', 'Member4');
           SettingDelete('Matter New', 'Member5');
           SettingDelete('Matter New', 'Member6');
           SettingDelete('Matter New', 'Member7');
           SettingDelete('Matter New', 'Member8');
           SettingDelete('Matter New', 'Member9');
           SettingDelete('Matter New', 'Member10');

           if trim(cmbPartner.Text) <> '' then
              SettingSave('Matter New', 'Partner', string(cmbPartner.EditValue));
           if trim(cmbController.Text) <> '' then
              SettingSave('Matter New', 'Controller', string(cmbController.EditValue));
           if trim(cmbAuthor.Text) <> '' then
              SettingSave('Matter New', 'Author', string(cmbAuthor.EditValue));
           if trim(cmbOperator.Text) <> '' then
              SettingSave('Matter New', 'Operator', string(cmbOperator.EditValue));
           if trim(cmbParaLegal.Text) <> '' then
              SettingSave('Matter New', 'ParaLegal', string(cmbParaLegal.EditValue));
           SettingSave('Matter New', 'Type', cbType.Text);

           if trim(cmbMember1.Text) <> '' then
              SettingSave('Matter New', 'Member1', string(cmbMember1.EditValue));
           if trim(cmbMember2.Text) <> '' then
              SettingSave('Matter New', 'Member2', string(cmbMember2.EditValue));
           if trim(cmbMember3.Text) <> '' then
              SettingSave('Matter New', 'Member3', string(cmbMember3.EditValue));
           if trim(cmbMember4.Text) <> '' then
              SettingSave('Matter New', 'Member4', string(cmbMember4.EditValue));
           if trim(cmbMember5.Text) <> '' then
              SettingSave('Matter New', 'Member5', string(cmbMember5.EditValue));
           if trim(cmbMember6.Text) <> '' then
              SettingSave('Matter New', 'Member6', string(cmbMember6.EditValue));
           if trim(cmbMember7.Text) <> '' then
              SettingSave('Matter New', 'Member7', string(cmbMember7.EditValue));
           if trim(cmbMember8.Text) <> '' then
              SettingSave('Matter New', 'Member8', string(cmbMember8.EditValue));
           if trim(cmbMember9.Text) <> '' then
              SettingSave('Matter New', 'Member9', string(cmbMember9.EditValue));
           if trim(cmbMember10.Text) <> '' then
              SettingSave('Matter New', 'Member10', string(cmbMember10.EditValue));


           if trim(dbtbOtherParty1.Text) = '' then
              FieldByName('NOTHERPARTY1').Clear;
           if trim(dbtbOtherParty2.Text) = '' then
              FieldByName('NOTHERPARTY2').Clear;
           if trim(dbtbOtherParty3.Text) = '' then
              FieldByName('NOTHERPARTY3').Clear;

           if cmbTeam.Text <> '' then
           begin
              FieldByName('TEAM').AsString := TableString('TEAM','DESCR',cmbTeam.Text,'CODE');
           end
           else
              FieldByName('TEAM').Clear;

           //if FieldByName('PARTNER').AsString <> cbPartner.Text then
           //  FieldByName('PARTNER').AsString := cbPartner.Text;
           //if FieldByName('CONTROLLER').AsString <> cbController.Text then
           //  FieldByName('CONTROLLER').AsString := cbController.Text;
           //if FieldByName('AUTHOR').AsString <> cbAuthor.Text then
           //  FieldByName('AUTHOR').AsString := cbAuthor.Text;
           //if FieldByName('OPERATOR').AsString <> cbOperator.Text then
           //  FieldByName('OPERATOR').AsString := cbOperator.Text;
           //if FieldByName('FEECODE').AsString <> cbFeeCode.Text then
           //  FieldByName('FEECODE').AsString := cbFeeCode.Text;
           //if FieldByName('TYPE').AsString <> cbType.Text then
           //  FieldByName('TYPE').AsString := cbType.Text;
           //if FieldByName('ACCT').AsString <> cbBank.Text then
           //  FieldByName('ACCT').AsString := cbBank.Text;
          if dtpExpCompletion.Date > 0 then
             FieldByName('EXP_COMPLETION').AsDateTime := dtpExpCompletion.Date;
          if dtpCompleted.Date > 0 then
             FieldByName('COMPLETED').AsDateTime := dtpCompleted.Date;
//           if dtpSLEDate.Checked then
//           begin
          if(dtpSLEDate.Date > 0) then
             FieldByName('SLEDATE').AsDateTime := dtpSLEDate.Date;
//               FieldByName('SLEDATE').Clear()
//             else

//           end else
//             FieldByName('SLEDATE').Clear();
           //if FieldByName('OPERATOR').AsString <> cbOperator.text then
           //   FieldByName('OPERATOR').AsString := cbOperator.text;

           FieldByName('ACCT').AsString := string(cmbBank.EditValue);
           FieldByName('ENTITY').AsString := dmAxiom.Entity;
           FieldByName('CLOSED').AsInteger := 0;
           //ShowMessage(dmTableCache.VGetString(dmTableCache.vtMatterSubTYPE,'DESCR',cmbSubType.Text,'CODE'));

//           FieldByName('SUBTYPE').AsString := dmTableCache.VGetString(dmTableCache.vtMatterSubTYPE,['DESCR','MATTERTYPE',''],[cmbSubType.Text,FieldByName('TYPE').AsString],'CODE');

           //FieldByName('SUBSTATUS').AsString := dmTableCache.VGetString(dmTableCache.vtMatterSubStatus,'DESCR',cmbSubStatus.Text,'CODE');
           sBpayCode := '';
           if (dbtbFileID.Text = AUTO_CAPTION) then
           begin
             with procGetNewFileid do
             begin
                ParamByName('p_entity').AsString := dmAxiom.Entity;
                ParamByName('p_nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                ParamByName('p_nclient').AsInteger := qryMatter.FieldByName('nclient').AsInteger;
                ParamByName('p_client_code').AsString := qryClient.FieldByName('CODE').AsString;
                ParamByName('p_matter_partner').AsString := qryMatter.FieldByName('PARTNER').AsString;
                ParamByName('p_matter_author').AsString := qryMatter.FieldByName('AUTHOR').AsString;
                ParamByName('p_matter_type').AsString := qryMatter.FieldByName('TYPE').AsString;
                ParamByName('p_bpay_code').AsString := sBpayCode;
                ParamByName('p_branch').AsString := qryMatter.FieldByName('BRANCH').AsString;
                execute;
                sMatterCode := ParamByName('RESULT').AsString;
                qryMatter.FieldByName('BPAY_REFERENCE').AsString := ParamByName('p_bpay_code').AsString;
                Close;
             end;

             FieldByName('FILEID').AsString := sMatterCode;
             dbtbFileID.Text := sMatterCode;
             bModified := True;
           end;

 {          if dbtbFileID.Text = AUTO_CAPTION then
           begin
             // Create the Matter Code
             sMatterCode := IntToStr(qryMatter.FieldByName('NMATTER').AsInteger);
             if qryCodeRules.FieldByName('MatterCODE').AsString = 'N' then
             begin
               // Pad the system number
               if Length(sMatterCode) < qryCodeRules.FieldByName('MatterPAD').AsInteger then
                 sMatterCode := Copy('000000' + sMatterCode, Length(sMatterCode) + 7 - qryCodeRules.FieldByName('MatterPAD').AsInteger, qryCodeRules.FieldByName('MatterPAD').AsInteger);
               if qryCodeRules.FieldByName('MATTERSEPERATOR').AsString <> '' then
                 sMatterCode := qryCodeRules.FieldByName('MATTERSEPERATOR').AsString + sMatterCode;
               if SystemInteger('BPAY_CODE_DEFAULT') = 1 then
                  FieldByName('BPAY_REFERENCE').AsString  := CreateBPayReference(sMatterCode);
             end
             else
             if qryCodeRules.FieldByName('MatterCODE').AsString = 'C' then
             begin
               // Pad the client matters
               sTmp := qryClient.FieldByName('SEARCH').AsString;
               for x := 1 to length(sTmp) do
               begin
                  if sTmp[x] <> ' ' then
                     NewSearch := NewSearch + sTmp[x];
               end;
               sTmp := '';

               ANewMatterSeq := TableInteger('CLIENT', 'nclient', qryMatter.FieldByName('nclient').AsInteger, 'MATTERSEQ'); // + 1;

               sTmp := IntToStr(ANewMatterSeq);   // TableInteger('CLIENT', 'SEARCH', NewSearch, 'MATTERSEQ') + 1);
               if Length(sTmp) < qryCodeRules.FieldByName('MatterPAD').AsInteger then
                 sTmp := Copy('000000' + sTmp, Length(sTmp) + 7 - qryCodeRules.FieldByName('MatterPAD').AsInteger, qryCodeRules.FieldByName('MatterPAD').AsInteger);
               // Use the system number
               sMatterCode := qryClient.FieldByName('CODE').AsString + qryCodeRules.FieldByName('MatterSEPERATOR').AsString + sTmp;

               with dmAxiom.qryTmp do
               begin
                  FileIDNotFound := True;
                  Close;
                  SQL.Clear;
                  SQL.Add('select ''x'' from matter where fileid = :fileid');
                  while FileIDNotFound do
                  begin
                     sTmp := '';
                     Close;
                     ParamByName('fileid').AsString := sMatterCode;
                     Open;
                     if (not EOF) then
                     begin
                        INC(ANewMatterSeq);
                        sTmp := IntToStr(ANewMatterSeq);   // TableInteger('CLIENT', 'SEARCH', NewSearch, 'MATTERSEQ') + 1);
                        if Length(sTmp) < qryCodeRules.FieldByName('MatterPAD').AsInteger then
                           sTmp := Copy('000000' + sTmp, Length(sTmp) + 7 - qryCodeRules.FieldByName('MatterPAD').AsInteger, qryCodeRules.FieldByName('MatterPAD').AsInteger);
                        // Use the system number
                        sMatterCode := qryClient.FieldByName('CODE').AsString + qryCodeRules.FieldByName('MatterSEPERATOR').AsString + sTmp;
                     end
                     else
                        FileIDNotFound := False;
                  end;
               end;

               with dmAxiom.qryTmp do
               begin
                  Close;
                  SQL.Clear;
                  SQL.Add('update client set matterseq = :matterseq where nclient = :nclient');
                  ParamByName('matterseq').AsInteger := ANewMatterSeq;
                  ParamByName('nclient').AsInteger := qryMatter.FieldByName('nclient').AsInteger;
                  Execute;
               end;
             end;

             if not qryCodeRules.FieldByName('MATTERPREFIX').IsNull then
                sMatterCode := qryCodeRules.FieldByName('MATTERPREFIX').AsString + sMatterCode;

             FieldByName('FILEID').AsString := sMatterCode;
             dbtbFileID.Text := sMatterCode;
             bModified := True;
//             dbtbFileID.DataBinding.Field.  Modified := True;
           end;}

           if (FFileID <> '') and (FFileID <> FieldByName('FILEID').AsString) then
           begin
              procFileUpdate.ParamByName('afileid').AsString := FieldByName('FILEID').AsString;
              procFileUpdate.ParamByName('anmatter').AsInteger := FieldByName('NMATTER').AsInteger;
              procFileUpdate.ParamByName('aoldfileid').AsString := FFileID;
              procFileUpdate.Execute;
           end;

           if FieldByName('OPENED').AsDateTime <> dtpOpen.Date then
             FieldByName('OPENED').AsDateTime := dtpOpen.Date;
           if FieldByName('TASK').AsString <> '' then
             FieldByName('TASK_DATE').AsDateTime := Date;
           FieldByName('MODBY').AsString := dmAxiom.UserID;
           FieldByName('REFRESH').AsInteger := 1;

           if(bModified and SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_USEEVOCHECKDIGIT)) then
             FieldByName('FILEID').AsString := AddEvoCheckDigit(StrToInt(dbtbFileID.Text));

           ApplyUpdates;
         end;

         if qryControlledMoney.Modified = True then
         begin
            qryControlledMoney.ApplyUpdates();
            if (SystemString('GENERATE_INV_FILE') = 'Y') then
               Request_Acct_Create_File(qryMatter.FieldByName('NMATTER').AsInteger, qryMatter.FieldByName('NNAME').AsInteger);
         end;

         qryMatterBudgets.first;
         while not qryMatterBudgets.eof do
         begin
            if qryMatterBudgets.FieldByName('NMATTER').AsInteger = -1 then
            begin
               qryMatterBudgets.edit;
               qryMatterBudgets.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
            end;
            qryMatterBudgets.next;
         end;
         qryMatterBudgets.ApplyUpdates;

//         if grpCriticalDates.Visible then
//            createWorkflowTasks(qryMatter.FieldByName('NMATTER').AsInteger);


         // check if there are any critical Dates

//         if checkCritcalDates(qryMatter.FieldByName('NMATTER').AsInteger) then
//         begin
//           bneedSLEDate := true;
//           exit;
//         end;

         lsaveOk:

         dmAxiom.uniInsight.Commit;

         // lets save project scale costs
         if (tvScaleCost.DataController.RowCount > 0) then
         begin
            with dmAxiom.qryTmp do
            begin
               Close;
               SQL.Text := 'select 1 from project_template_matter where NPROJECTTEMPL = :NPROJECTTEMPL and nmatter = :nmatter';
               ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
               ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
               Open;
               if EOF = True then
               begin
                  Close;
                  SQL.Text := 'insert into project_template_matter(NPROJECTTEMPL, nmatter, start_date) values (:NPROJECTTEMPL, :nmatter, :start_date)';
                  ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                  ParamByName('NPROJECTTEMPL').AsInteger := cmbProjects.EditValue;
                  ParamByName('start_date').AsDateTime := dtStartDate.Date;
                  Execute;
                  dtActionDate := dtStartDate.Date;
                  with qryProjectScaleLinksMatter do
                  begin
                     Open;
                     for iCtr := 0 to (tvScaleCost.DataController.RowCount - 1) do
                     begin
                        Insert;
             //           FieldByName('nprojecttempl').AsInteger := tvScaleCost.DataController.GetValue(iCtr, 3);
             //           FieldByName('NSCALECOST').AsInteger := tvScaleCost.DataController.GetValue(iCtr,2);

  //                      if (VarIsNull(tvScaleCost.DataController.GetValue(iCtr,5)) or
 //                          (tvScaleCost.DataController.GetValue(iCtr,5) = 0)) then
 //                          nDays := 1
 //                       else
                        nDays := tvScaleCost.DataController.GetValue(iCtr,5);
                        dtActionDate := IncDay(dtActionDate, nDays);

                        FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                        FieldByName('STATE').AsInteger := 2;
                        FieldByName('RESOURCEID').AsInteger := 7;
                        FieldByName('EVENT_TYPE').AsInteger := 0;
                        FieldByName('OPTIONS').AsInteger := 2;
                        FieldByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
                        FieldByName('REASON').AsString := TableString('SCALECOST','NSCALECOST', integer(tvScaleCost.DataController.GetValue(iCtr,4)), 'DESCR');

  {                      with qryCheckParent do
                        begin
                           Close;
                           ParamByName('NPROJECTTEMPL').AsInteger := tvScaleCost.DataController.GetValue(iCtr,3);
                           ParamByName('ID').AsInteger := tvScaleCost.DataController.GetValue(iCtr,7);
                           ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                           Prepare;
                           Open;
                           if EOF then  // its a top level
                              dtActionDate := dtStartDate.Date;
                              //dtActionDate + nDays;

                           if FieldByName('parent_id').AsInteger <> tvScaleCost.DataController.GetValue(iCtr,7) then
                           begin
                              nParentDays := FieldByName('days').AsInteger;
                              dtActionDate := dtActionDate + nDays;
                           end;
                        end;  }

//                        FieldByName('parent_id').AsInteger := tvScaleCost.DataController.GetValue(iCtr,7);
                        if DayOfTheWeek(dtActionDate) = 6 then
                           AEnd_Date := IncDay(dtActionDate,2);     // it's a saturday
                        if DayOfTheWeek(dtActionDate) = 7 then
                           AEnd_Date := IncDay(dtActionDate,1);    // it's a sunday

                        FieldByName('CREATED').AsDateTime := dtActionDate;
                        if (tvScaleCost.DataController.GetValue(iCtr,2) = '') or
                           VarIsNull(tvScaleCost.DataController.GetValue(iCtr,2))   then
                           FieldByName('AUTHOR').AsString := qryMatter.FieldByName('AUTHOR').AsString
                        else
                        begin
                           FieldByName('AUTHOR').AsString := tvScaleCost.DataController.GetValue(iCtr,2);
                        end;
                        FieldByName('TIME_TYPE').AsString := 'M';
                        FieldByName('FEE_TEMPLATE').AsString := TableString('SCALECOST','NSCALECOST', integer(tvScaleCost.DataController.GetValue(iCtr,4)), 'CODE');
                        FieldByName('IS_TASK').AsString := 'Y';
                        FieldByName('LABELCOLOUR').AsInteger := 8689404;
                        FieldByName('MATLOCATE').AsString := qryMatter.FieldByName('SHORTDESCR').AsString;
                        FieldByName('CAPTION').AsString := qryMatter.FieldByName('FILEID').AsString + ' - ' + qryMatter.FieldByName('SHORTDESCR').AsString;
                        FieldByName('PROGRAM_NAME').AsString := 'Task';
                        FieldByName('VERSION').AsString := dmAxiom.GetVersionInfo;
                        FieldByName('BILLTYPE').AsString := 'Billable';
                        FieldByName('EMP_TYPE').AsString := dmAxiom.UserType;

                        with dmAxiom.qryTmp do
                        begin
                           Close;
                           SQL.Text := 'select TIME_ESTIMATE from PROJ_TEMPL_SCALECOST_LINK where nscalecost = :nscalecost and NPROJECTTEMPL = :NPROJECTTEMPL';
                           ParamByName('nscalecost').AsInteger := integer(tvScaleCost.DataController.GetValue(iCtr,4));
                           ParamByName('NPROJECTTEMPL').AsInteger := integer(tvScaleCost.DataController.GetValue(iCtr,3));
                           Open;
                           sDfltUnit := FieldByName('TIME_ESTIMATE').AsString;
                           Close;
                        end;
//                        sDfltUnit := TableString('PROJ_TEMPL_SCALECOST_LINK','NSCALECOST', integer(tvScaleCost.DataController.GetValue(iCtr,4)), 'TIME_ESTIMATE');
                        if sDfltUnit = '' then
                           sDfltUnit := '1';
                        FieldByName('UNITS').AsFloat := StrToFloat(sDfltUnit);
                        AMins := StrToFloat(sDfltUnit) * SystemInteger('TIME_UNITS');
                        FieldByName('MINS').AsFloat := AMins;

                        if DayOfTheWeek(dtActionDate) = 6 then
                           dtActionDate := IncDay(dtActionDate, 2);
                        if DayOfTheWeek(dtActionDate) = 7 then
                           dtActionDate := IncDay(dtActionDate, 1);

                        DecodeDateTime(dtActionDate, myYear, myMonth, myDay, myHour, myMin, mySec, myMilli);
                        dtActionDate := EncodeDateTime(myYear, myMonth, myDay, 8, 0, 0, 0);
                        FieldByName('START_DATE').AsDateTime := dtActionDate;

                        if nDays > 1 then
                           AEnd_Date := IncDay(dtActionDate, nDays)
                        else
                           AEnd_Date := dtActionDate;

                        if DayOfTheWeek(AEnd_Date) = 6 then
                           AEnd_Date := IncDay(AEnd_Date, 2);
                        if DayOfTheWeek(AEnd_Date) = 7 then
                           AEnd_Date := IncDay(AEnd_Date, 1);
                        dtActionDate := AEnd_Date;

                        FieldByName('END_DATE').AsDateTime := IncMinute(AEnd_Date, Round(AMins));   //IncMinute(dtStartDate.Date, 6) ;
                        FieldByName('EMPCODE').AsString := dmAxiom.UserID;

                        FieldByName('RATE').AsFloat := FeeRate('N', qryMatter.FieldByName('FILEID').AsString, FieldByName('AUTHOR').AsString, now);
                        FieldByName('AMOUNT').AsFloat := FieldByName('UNITS').AsFloat * FieldByName('RATE').AsFloat / (60 / SystemInteger('TIME_UNITS'));
                        FieldByName('TAXCODE').AsString := 'GST';
                        dAmount := FieldByName('AMOUNT').AsFloat;
                        FieldByName('TAX').AsFloat := TaxCalc(dAmount,'', 'GST', now);
                        FieldByName('NPROJECTTEMPL').AsInteger := cmbProjects.EditValue;
                        FieldbyName('UNIQUEID').AsString := dmAxiom.GetSeqNumber('SQNC_TASKTMP');
                        FieldbyName('ID').AsString := tvScaleCost.DataController.GetValue(iCtr,7);
                        FieldbyName('PARENT_ID').AsString := tvScaleCost.DataController.GetValue(iCtr,8);
                        FieldbyName('TASK_TYPE').AsString := tvScaleCost.DataController.GetValue(iCtr,6);
                        FieldbyName('COLOUR').AsString := tvScaleCost.DataController.GetValue(iCtr,9);
                        FieldbyName('SEQ_ORDER').AsInteger := tvScaleCost.DataController.GetValue(iCtr,10);
                        FieldbyName('DAYS').AsInteger := tvScaleCost.DataController.GetValue(iCtr,5);
                        if VarIsNull(tvScaleCost.DataController.GetValue(iCtr,11)) = False then
                           FieldbyName('PREC_ID').AsInteger := tvScaleCost.DataController.GetValue(iCtr,11);
                        FieldbyName('NSCALECOST').AsInteger := tvScaleCost.DataController.GetValue(iCtr,4);
                        FieldByName('BUDGET_LOW').AsFloat := tvScaleCost.DataController.GetValue(iCtr,12);;
                        FieldByName('BUDGET_HIGH').AsFloat := tvScaleCost.DataController.GetValue(iCtr,13);;
                        FieldByName('TIME_ESTIMATE').AsFloat := tvScaleCost.DataController.GetValue(iCtr,14);;
                        FieldByName('MAX_TIME_ESTIMATE').AsFloat := tvScaleCost.DataController.GetValue(iCtr,15);;


  {                      if TableString('SCALECOST','NSCALECOST', integer(tvScaleCost.DataController.GetValue(iCtr,4)), 'DEFAULTTIME') = '' then

                        Else
                           FieldByName('MINS').AsFloat := StrToFloat(TableString('SCALECOST','NSCALECOST', integer(tvScaleCost.DataController.GetValue(iCtr,4)), 'DEFAULTTIME')) * SystemInteger('TIME_UNITS');}

                        Post;

//                        dtActionDate := dtActionDate + nDays;
                     end;
                  end;
               end
               else
               begin
                  with dmAxiom.qryTmp do
                  begin
                     Close;
                     SQL.Text := 'select min(created) as min_created from tasktmp where nmatter = :nmatter and NPROJECTTEMPL = :NPROJECTTEMPL';
                     ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
                     ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
                     Open;
                     dtActionDate := FieldByName('min_created').AsDateTime;
                     Close;
                  end;

                  with qryProjectScaleLinksMatter do
                  begin
                     Open;
                     for iCtr := 0 to tvScaleCost.DataController.RowCount - 1 do
                     begin
                        Edit;
                        nDays := tvScaleCost.DataController.GetValue(iCtr,5);

  //                      FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
  //                      FieldByName('STATE').AsInteger := 2;
  //                      FieldByName('RESOURCEID').AsInteger := 7;
  //                      FieldByName('EVENT_TYPE').AsInteger := 0;
  //                      FieldByName('OPTIONS').AsInteger := 2;
  //                      FieldByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
  //                      FieldByName('REASON').AsString := TableString('SCALECOST','NSCALECOST', integer(tvScaleCost.DataController.GetValue(iCtr,4)), 'DESCR');
 {                       with qryCheckParent do
                        begin
                           Close;
                           ParamByName('NPROJECTTEMPL').AsInteger := tvScaleCost.DataController.GetValue(iCtr,3);
                           ParamByName('ID').AsInteger := tvScaleCost.DataController.GetValue(iCtr,7);
                           Prepare;
                           Open;
                           if EOF then  // its a top level
                              dtActionDate := dtStartDate.Date;
                              //dtActionDate + nDays;

                           if FieldByName('parent_id').AsInteger <> tvScaleCost.DataController.GetValue(iCtr,7) then
                           begin
                              nParentDays := FieldByName('days').AsInteger;
                              dtActionDate := dtActionDate + nDays;
                           end;
                        end;   }
//                        FieldByName('CREATED').AsDateTime := dtActionDate;
                        if DayOfTheWeek(dtActionDate) = 6 then
                           AEnd_Date := IncDay(dtActionDate,2);     // it's a saturday
                        if DayOfTheWeek(dtActionDate) = 7 then
                           AEnd_Date := IncDay(dtActionDate,1);    // it's a sunday

                        FieldByName('CREATED').AsDateTime := dtActionDate;

                        FieldByName('AUTHOR').AsString := qryMatter.FieldByName('AUTHOR').AsString;;
//                        FieldByName('TIME_TYPE').AsString := 'M';
                        FieldByName('FEE_TEMPLATE').AsString := TableString('SCALECOST','NSCALECOST', integer(tvScaleCost.DataController.GetValue(iCtr,4)), 'CODE');
                        FieldByName('IS_TASK').AsString := 'Y';
                        FieldByName('LABELCOLOUR').AsInteger := 8689404;
//                        FieldByName('MATLOCATE').AsString := qryMatter.FieldByName('SHORTDESCR').AsString;
                        FieldByName('CAPTION').AsString := qryMatter.FieldByName('FILEID').AsString + ' - ' + qryMatter.FieldByName('SHORTDESCR').AsString;
                        FieldByName('PROGRAM_NAME').AsString := 'Task';
                        FieldByName('VERSION').AsString := dmAxiom.GetVersionInfo;
                        FieldByName('BILLTYPE').AsString := 'Billable';
                        FieldByName('EMP_TYPE').AsString := dmAxiom.UserType;

                        sDfltUnit := TableString('PROJ_TEMPL_SCALECOST_LINK','NSCALECOST', integer(tvScaleCost.DataController.GetValue(iCtr,4)), 'TIME_ESTIMATE');
                        if sDfltUnit = '' then
                           sDfltUnit := '1';
                        FieldByName('UNITS').AsFloat := StrToFloat(sDfltUnit);
                        AMins := StrToFloat(sDfltUnit) * SystemInteger('TIME_UNITS');
                        FieldByName('MINS').AsFloat := AMins;

                        if DayOfTheWeek(dtActionDate) = 6 then
                           dtActionDate := IncDay(dtActionDate, 2);
                        if DayOfTheWeek(dtActionDate) = 7 then
                           dtActionDate := IncDay(dtActionDate, 1);

                        DecodeDateTime(dtActionDate, myYear, myMonth, myDay, myHour, myMin, mySec, myMilli);
                        dtActionDate := EncodeDateTime(myYear, myMonth, myDay, 8, 0, 0, 0);
                        FieldByName('START_DATE').AsDateTime := dtActionDate;

                        if nDays > 1 then
                           AEnd_Date := IncDay(dtActionDate, nDays)
                        else
                           AEnd_Date := dtActionDate;

                        if DayOfTheWeek(AEnd_Date) = 6 then
                           AEnd_Date := IncDay(AEnd_Date, 2);
                        if DayOfTheWeek(AEnd_Date) = 7 then
                           AEnd_Date := IncDay(AEnd_Date, 1);
                        dtActionDate := AEnd_Date;

                        FieldByName('END_DATE').AsDateTime := IncMinute(AEnd_Date, Round(AMins));

//                        FieldByName('START_DATE').AsDateTime := dtActionDate; //tartDate.Date;
//                        FieldByName('END_DATE').AsDateTime := IncDay(dtActionDate, nDays);   //IncMinute(dtStartDate.Date, 6) ;
                        FieldByName('EMPCODE').AsString := dmAxiom.UserID;
                        FieldByName('NPROJECTTEMPL').AsInteger := tvScaleCostNPROJECTTEMPL.EditValue;
 //                       FieldbyName('UNIQUEID').AsString := dmAxiom.GetSeqNumber('SQNC_FEETMP');
                        FieldbyName('ID').AsString := tvScaleCost.DataController.GetValue(iCtr,7);
                        FieldbyName('PARENT_ID').AsString := tvScaleCost.DataController.GetValue(iCtr,8);
                        FieldbyName('TASK_TYPE').AsString := tvScaleCost.DataController.GetValue(iCtr,6);
                        FieldbyName('COLOUR').AsString := tvScaleCost.DataController.GetValue(iCtr,9);
                        FieldbyName('SEQ_ORDER').AsInteger := tvScaleCost.DataController.GetValue(iCtr,10);
                        FieldbyName('DAYS').AsInteger := tvScaleCost.DataController.GetValue(iCtr,5);
                        if VarIsNull(tvScaleCost.DataController.GetValue(iCtr,11)) = False then
                           FieldbyName('PREC_ID').AsInteger := tvScaleCost.DataController.GetValue(iCtr,11);

//                        FieldByName('BUDGET_LOW').AsFloat := tvScaleCost.DataController.GetValue(iCtr,12);;
//                        FieldByName('BUDGET_HIGH').AsFloat := tvScaleCost.DataController.GetValue(iCtr,13);;
//                        FieldByName('TIME_ESTIMATE').AsFloat := tvScaleCost.DataController.GetValue(iCtr,14);;
//                        FieldByName('MAX_TIME_ESTIMATE').AsFloat := tvScaleCost.DataController.GetValue(iCtr,15);;

                        Post;

                        dtActionDate := dtActionDate + nDays;
                     end;
                  end;
               end;
            end;
         end;

//         if ((dbtbTask.Text <> sWorkFlow) and bEditing) or not(bEditing) then
         //if (dbtbTask.Text <> sWorkFlow) then ????
//           if qryMatter.FieldByName('TASK').AsString <> '' then
//             TaskProcess(qryMatter.FieldByName('TASK').AsString, qryMatter.FieldByName('FILEID').AsString, qryMatter.FieldByName('AUTHOR').AsString, 0, taBegin);
         if cbSecureDocs.Enabled then
            SaveMatters(qryMatter.FieldByName('NMATTER').AsString);

         if grpCriticalDates.Visible then
         begin
            createWorkflowTasks(qryMatter.FieldByName('NMATTER').AsInteger);
            StartCriticalTasks(qryMatter.FieldByName('NMATTER').AsInteger);

         end;

         if bInserted then
         begin
            try
               LMergeType := GlobalSettingLoadString(C_WKF,C_WORKFLOW,C_MERGETYPE);
               if LMergeType = 'Informs Precedents' then
               begin
                  try
                     s1 := qryMatter.FieldByName('FILEID').AsString;
                     s2 := TableString('PHONEBOOK','NCLIENT',qryMatter.FieldByName('nclient').AsInteger,'NAME');
                     s3 := qryMatter.FieldByName('SHORTDESCR').AsString;
                     s4 := dmAxiom.UserName;
                     nRet := oInforms.OpenFile(s1,s2,s3,s4);
                     case nRet of
                        1: MsgErr('File Locked');
                        2: MsgErr('Error');
                     end;
                  finally
                     oInforms.SaveFile;
                  end;
               end;
            except
               //
            end;
            MsgInfo('Matter created as Matter Number ' + qryMatter.FieldByName('FILEID').AsString);
         end;

         if TypeString(cbType.Text, 'DATAFORM') <> '' then
         begin
            if not Assigned(LfrmMatterDataForm) then
               LfrmMatterDataForm := TfrmMatterDataForm.Create(Application);
            with LfrmMatterDataForm do
            begin
               LoadForm(TypeString(cbType.Text, 'DATAFORM'), Self.qryMatter.FieldByName('FILEID').AsString);
               ShowModal;
            end;
         end;

         ReopenListUpdate('MATTER', qryMatter.FieldByName('FILEID').AsString);

         if (chkPrintCostsAgreement.Checked = True) then
         begin
            if (not Assigned(FWorkFlowMergeDocument)) then
               FWorkFlowMergeDocument                    := TfmWorkFlowMergeDocument.Create(Application);
            FWorkFlowMergeDocument.ShowNoTaskDocuments   := True;
            FWorkFlowMergeDocument.NMatter               := qryMatter.FieldByName('NMatter').AsInteger;
            FWorkFlowMergeDocument.DocID                 := qryMatter.FieldByName('WKFLOW_DOC_TEMPL_ID').AsInteger;
            FWorkFlowMergeDocument.Task                  := nil;
            FWorkFlowMergeDocument.OnClose               := MergeFormClose;
            FWorkFlowMergeDocument.UpdateWindowEvent     := OnUpdateWindowEvent;
            FWorkFlowMergeDocument.vtDocs.FullExpand;
//            FWorkFlowMergeDocument.vtDocs.Selected;
            FWorkFlowMergeDocument.ShowModal;
         end;

         if qryAdditionalTrustBanks.Modified = True then
            qryAdditionalTrustBanks.ApplyUpdates();
         ModalResult := mrOK;

         FbNewControlledMoney := False;

         // refresh todo and workflow windows.
         for i := 0 to Screen.FormCount - 1 do
         begin
           LForm := Screen.Forms[i];
           if(LForm is TfmWorkFlowToDo) then
             TfmWorkFlowToDo(LForm).RefreshTree()
           else if(LForm is TfmWorkFlowMatterTasks) then
           begin
             if(TfmWorkFlowMatterTasks(LForm).NMatter = qryMatter.FieldByName('NMATTER').AsInteger) then
               TfmWorkFlowMatterTasks(LForm).ReloadTree();
           end;
         end;
       except
         on E: Exception do
         begin
           if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Rollback;
           MsgErr('Matter creation failed' + #13#13 + E.Message);
         end;
       end;
   end;
end;

function TfrmMatterNew.OKtoSave: Boolean;
var
  sTmp: String;
  bOKtoSave,bSLEOk: boolean;
  nRowCount : integer;
begin
   sTmp := '';
   Result := False;
   bOKtoSave := CheckReqFields('MATTER',qryMatter);
   if not bOKtoSave then
      exit;

   if (not qryClient.Active) or (lblClientName.Caption = '') then
      sTmp := '       Client must be selected from search form' + #13;
   if dbtbShortDescr.Text = '' then
      sTmp := sTmp + '       Short Matter Description' + #13;
   if dbmmoLongDescr.Text = '' then
      sTmp := sTmp + '       Long Matter Description' + #13;
   if VarIsNull(cmbPartner.EditValue) then
      sTmp := sTmp + '       ' + lblPartner.caption + #13;
   // 17 Oct 2018 remove obligation on filing in Controller
   //if VarIsNull(cmbController.EditValue) then
   //   sTmp := sTmp + '       ' + lblContro.caption + #13;
   if VarIsNull(cmbAuthor.EditValue) then
      sTmp := sTmp + '       ' + lblAuthor.caption  + #13;
   if cbType.Text = '' then
      sTmp := sTmp + '       Matter Type' + #13;
   if cbSecureDocs.Checked and (lbSelectedEmployees.Items.Count = 0) then
      sTmp := sTmp + '       You must select at least one employee for a matter to be secure.' + #13;

  { 18/11/04 TH - if there is no subtype, then make it no mandatory.
  if cmbSubType.Text = '' then
    sTmp := sTmp + '       Matter Subtype' + #13;
  }
   if not (qryMatterSubType.State = dsInactive) then
   begin
      qryMatterSubType.First;
      if not qryMatterSubType.Eof then
         if cmbSubType.Text = '' then
            sTmp := sTmp + '       Matter Subtype' + #13;
   end;

   if cmbBank.Text = '' then
      sTmp := sTmp + '       Trust Bank' + #13;

   if(SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_SLEDATEREQUIRED)) then
      if (dtpSLEDate.Date = 0) then
         sTmp := sTmp + '       SLE Date' + #13;
// this is now done in a generic way!
// S&G Fields
// to-do, add this to the database     cmbFeeBasis
//  if cmbJurisdiction.Text = '' then
//    sTmp := sTmp + '       Jurisdiction' + #13;
//  if cmbFeeBasis.Text = '' then
//    sTmp := sTmp + '       Fee Basis ' + #13;
//  if dbcbluBranch.Text = '' then
//    sTmp := sTmp + '       Branch ' + #13;
//  if dbtbRefBy.Text = '' then
//    sTmp := sTmp + '       Referred By ' + #13;
//  if cbOperator.Text = '' then
//    sTmp := sTmp + '       ' + lblopp.caption  + #13;

{
  Re-instated 13.11.2002 GG

  Users need to provide a branch code when they open an new matter
}
   if (dbcbluBranch.Enabled) and
      (dbcbluBranch.Text = '') then
      sTmp := sTmp + '       Branch ' + #13;

{
  Re-instated 6.12.2002 GG

  Users need to provide a referal source when they open an new matter or edit an
  existing one
}
{  if dbtbRefBy.Text = '' then
    sTmp := sTmp + '       Referred By ' + #13;}

    // Now handled by required fields functionality
//  if (VarIsNull(dblWorkFlow.EditValue))then
//    sTmp := sTmp + '       Workflow Type ' + #13;

   if sTmp <> '' then
   begin
      MsgInfo('Please complete the following Matter details before posting:    ' + #13#13 + sTmp);
      bOKtoSave := False
   end;

   if (not bEditing) and bOkToSave then
   begin
      bSLEOk := (tvSLEDates.DataController.RowCount = 0);
      for nRowCount := 0 to tvSLEDates.DataController.RowCount - 1 do
        if not bSLEOk then
                bSLEOk := GetRecordValue(nRowCount, tvSLEDatesDate.Index) <> null;

        if not bSLEOk then
        begin
            bOkToSave := false;
            MsgInfo('Please complete at least one critial date');
        end;
   end;

   if (not bEditing) and (bOktoSave) and (dbtbFileID.Text <> AUTO_CAPTION) then
   begin
      with qryMatterCheck do
      begin
         Close;
         if(SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_USEEVOCHECKDIGIT)) then
            ParamByName('P_File').AsString := AddEvoCheckDigit(StrToInt(dbtbFileID.Text))
         else
            ParamByName('P_File').AsString := dbtbFileID.Text;
         Open;
         if not EOF then
         begin
            MsgErr('A Matter with this File Number already exists');
            bOKtoSave := False;
         end;
         Close;
      end;
   end;
   result:= bOKtoSave;
end;

procedure TfrmMatterNew.sbtnOParty1Click(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('PARTY1').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
    qryMatter.FieldByName('NOTHERPARTY1').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatterNew.sbtnOParty2Click(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('PARTY2').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatterNew.sbtnOParty3Click(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('PARTY3').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatterNew.sbtnRefByClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('REFERREDBY').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatterNew.sbtnBillToClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('BILL_TO').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmMatterNew.cbTypeClick(Sender: TObject);
VAR
   lWorkflowType,
   lBillTemplate: string;
begin
   //lblTypeDesc.Caption := TypeString(cbType.Text, 'DESCR');

   if Self.Visible then  // only change if user changed it, not when loading form
   begin
      if cbType.EditValue <> Null then
      begin
          qryMatter.Edit;
          qryMatter.FieldByName('TASK').AsString := TypeString(cbType.Text, 'TASK');
          qryMatter.FieldByName('EXPECTED_VALUE').AsCurrency := TableCurrency('MATTERTYPE', 'CODE', cbType.Text, 'WORD_RATE');
          lWorkflowType := TableString('MATTERTYPE', 'CODE', string(cbType.EditValue), 'WORKFLOWTYPE');
          if lWorkflowType <> '' then
          begin
             qryMatter.FieldByName('WORKFLOW').AsString := lWorkflowType;
             dblWorkFlow.EditValue := lWorkflowType;
          end;
          lBillTemplate := TableString('MATTERTYPE', 'CODE', string(cbType.EditValue), 'BILLTEMPLATE');
          if lBillTemplate <> '' then
          begin
             qryMatter.FieldByName('BILLTEMPLATE').AsString := lBillTemplate;
             cbClientBillTemplate.EditValue := lBillTemplate;
          end;
      end;
   end;

   if cbType.EditValue <> Null then
   begin
      lblSpartyDesc.Caption := TypeString(cbType.EditValue, 'PARTY1_DESC');
      lblSparty2Desc.Caption := TypeString(cbType.EditValue, 'PARTY2_DESC');
      lblSparty3Desc.Caption := TypeString(cbType.EditValue, 'PARTY3_DESC');
      qryMatterSubType.Close;
      qryMatterSubType.ParamByName('mattertype').AsString := cbType.EditValue;
      qryMatterSubType.Open;
      // disable subtype combo box if no records
      cmbSubType.Enabled := (qryMatterSubType.RecordCount > 0);
   end;
 //  dmTableCache.StringPopulate(cmbSubType.Items,dmTableCache.vtMatterSubType,'DESCR','MATTERTYPE',qryMatter.FieldByName('TYPE').AsString);
end;

procedure TfrmMatterNew.cbBankClick(Sender: TObject);
begin
  //lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
end;

procedure TfrmMatterNew.btnClientsClick(Sender: TObject);
var
  bOktoUpdate: boolean;
begin
  bOktoUpdate := True;
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);
  if frmClientSearch.ShowModal = mrOK then
  begin
    if bEditing then
    begin
      if MsgAsk('Do you want to change this Matter''s Client?') = mrNo then
        bOKtoUpdate := False
      else
        if not qryMatter.Modified then
          qryMatter.Edit;
    end;
    if bOKtoUpdate then
    begin
      if qryMatter.FieldByName('NNAME').AsInteger = qryMatter.FieldByName('NBILL_TO').AsInteger then   // if qryMatter.FieldByName('NCLIENT').AsInteger = qryMatter.FieldByName('NBILL_TO').AsInteger then
         qryMatter.FieldByName('NBILL_TO').AsString := TableString('PHONEBOOK','NCLIENT',frmClientSearch.qryClientList.FieldByName('NCLIENT').AsInteger,'NNAME');  //frmClientSearch.qryClients.FieldByName('NCLIENT').AsInteger;
      lblClientName.Caption := frmClientSearch.qryClientList.FieldByName('SEARCH').AsString;
      qryMatter.FieldByName('NCLIENT').AsInteger := frmClientSearch.qryClientList.FieldByName('NCLIENT').AsInteger;
      qryMatter.FieldByName('TITLE').AsString := frmClientSearch.qryClientList.FieldByName('SEARCH').AsString;
    end;
  end;
end;

procedure TfrmMatterNew.dbmmoLongDescrEnter(Sender: TObject);
begin
  if dbmmoLongDescr.Text = '' then
    qryMatter.FieldByName('LONGDESCR').AsString := dbtbShortDescr.Text;
end;

procedure TfrmMatterNew.FormCreate(Sender: TObject);
begin
   bEditing := False;
   FbNewControlledMoney := False;
   if dmAxiom.DictionaryInstalled then
   begin
//      dmAxiom.AddictLiveSpell.AddControl(dbtbShortDescr);
//      dmAxiom.AddictLiveSpell.AddControl(dbmmoLongDescr);
//      dmAxiom.AddictLiveSpell.AddControl(cxDBMemo1);
//      dmAxiom.AddictLiveSpell.AddControl(cxDBMemo2);
//      dmAxiom.AddictLiveSpell.AddControl(Editor);
   end;

   tabProject.TabVisible := dmAxiom.Security.Matter.Tabs.Project;

   qryBanks.Close;
   qryBanks.ParamByName('entity').AsString := dmAxiom.Entity;
   qryBanks.Open;

   dtpOpen.Date := Now;
   dtpCompleted.Enabled := dmAxiom.Security.Matter.Close;
//  gbStaticOP.Visible := not dmAxiom.Security.Matter.HideStaticOP;
   SetDisplayNames;
   if(SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_SLEDATEREQUIRED)) then
      dtpSLEDate.Date := Date()
   else
   begin
      dtpSLEDate.Date := Date();
   end;

  // populate virtual tables
//  dmTableCache.LoadVirtualTable(dmTableCache.vtJurisdiction,'JURISDICTION','DESCR IS NOT NULL','DESCR');
//  dmTableCache.LoadVirtualTable(dmTableCache.vtBranches,'BRANCH','DESCR IS NOT NULL ','DESCR');
//  dmTableCache.LoadVirtualTable(dmTableCache.vtFeeBasis,'FEEBASIS','DESCR IS NOT NULL','DESCR');
//  dmTableCache.LoadVirtualTable(dmTableCache.vtMatterStatus,'MATTERSTATUS','DESCR IS NOT NULL ','DESCR');
  //dmTableCache.LoadVirtualTable(dmTableCache.vtMatterSubStatus,'MATTERSUBSTATUS','DESCR IS NOT NULL','DESCR');
//  dmTableCache.LoadVirtualTable(dmTableCache.vtMatterType,'MATTERTYPE','DESCR IS NOT NULL','DESCR');
//  dmTableCache.LoadVirtualTable(dmTableCache.vtMatterSUBType,'MATTERSUBTYPE','DESCR IS NOT NULL','DESCR');

   qryMatterType.Open;
   qJuris.Open();
   tbEmployeePartner.Open();
   tbEmployeeController.Open();
   tbEmployeeAuthor.Open();
   tbEmployeeOperator.Open();
   tblFeeCode.Open;
   tblFeeBasis.Open;
   tblTeam.Open;
   tblMatterStatus.Open;
   tblEmployeeParaLegal.Open;
   qryScaleCosts.Open;
   tbEmployee.Open;
   qryScaleCostsList.Open;
   pageMatter.ActivePageIndex := 0;
   qryDepartment.Open;
   qryAdvSource.Open();
   qryBank.Open;
   qryAccountType.Open;
   qryTaxRate.open;
   qBilltemplate.Open;
   dmAxiom.tblCountryList.Open;
   cmbDebtorTemplate.Enabled := dmAxiom.Security.CollectionsManagement.ChangeTemplate;
   qryProjectTemplate.Open;

   if(not Assigned(dmWorkFlowDataModule)) then
      dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);

   bneedSLEDate := false;
   grpCriticalDates.Visible := false;

   cbSecureDocs.Enabled := ((SystemString('SECURE_DOCS_KEY') = C_SECUREDOCSPASSWORD) and (dmAxiom.Security.Matter.SecureDocs));

   dtpOpen.ParentFont             := True;
   cbType.ParentFont              := True;
   dbtbLabelCode.ParentFont       := True;
   cmbSubType.ParentFont          := True;
   dbcbluBranch.ParentFont        := True;
   dbtbOPRef.ParentFont           := True;
   dbtbShortDescr.ParentFont      := True;
   dbmmoLongDescr.ParentFont      := True;
   cmbPartner.ParentFont          := True;
   cmbAuthor.ParentFont           := True;
   cmbOperator.ParentFont         := True;
   cmbParaLegal.ParentFont        := True;
   cmbMember1.ParentFont          := True;
   cmbMember3.ParentFont          := True;
   cmbMember4.ParentFont          := True;
   cmbMember5.ParentFont          := True;
   cmbMember6.ParentFont          := True;
   cmbMember8.ParentFont          := True;
   cmbMember9.ParentFont          := True;
   cmbMember10.ParentFont         := True;
   dbtbContact.ParentFont         := True;
   dbtbRefBy.ParentFont           := True;
   cbFeeCode.ParentFont           := True;
   cxDBLookupComboBox1.ParentFont := True;
   dtpExpCompletion.ParentFont    := True;
   dbtbBudgetFees.ParentFont      := True;
   dbtbBudgetTotal.ParentFont     := True;
   dbtbBudgetDisb.ParentFont      := True;
   chkbTrustAuthority.ParentFont  := True;
   cmbJurisdiction.ParentFont     := True;
   cmbSubJurisdiction.ParentFont  := True;
   dblWorkFlow.ParentFont         := True;
   cmbMatterStatus.ParentFont     := True;
   dtpSLEDate.ParentFont          := True;

   if (SystemString('enforce_upper_suburb') = 'Y') then
   begin
      eStreetSuburb.Properties.CharCase := ecUpperCase;
   end
   else
   begin
      eStreetSuburb.Properties.CharCase := ecNormal;
   end;

   if SystemString('MATTER_DESCR_UPPER') = 'Y' then
   begin
      dbtbShortDescr.Properties.CharCase := ecUpperCase;
      dbmmoLongDescr.Properties.CharCase := ecUpperCase;
   end
   else
   begin
      dbtbShortDescr.Properties.CharCase := ecNormal;
      dbmmoLongDescr.Properties.CharCase := ecNormal;
   end;

   lblLabelCode.Visible := (SystemString('hide_matter_label_code') = 'N');
   dbtbLabelCode.Visible := (SystemString('hide_matter_label_code') = 'N');
   tabMatterAdditionalCarriage.tabVisible := (SystemString('HIDEMATTERCARRIAGEADDITIONAL') = 'N');
   pnlBarcode.Visible := (SystemString('SHOW_BARCODE') = 'Y');
   chkProspectiveMatter.Enabled := dmAxiom.Security.Matter.Prospective;
   try
      oInforms := TclsLink.Create(Application);
   except
   //
   end;
end;

procedure TfrmMatterNew.FontDialogApply(Sender: TObject; Wnd: HWND);
begin
   with lActiveControl as TcxDBRichEdit do
      SelAttributes.Assign(TFontDialog(Sender).Font);
end;

procedure TfrmMatterNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   MatterLabel.Free;
   if dmAxiom.DictionaryInstalled then
   begin
//      dmAxiom.AddictLiveSpell.RemoveControl(dbtbShortDescr);
//      dmAxiom.AddictLiveSpell.RemoveControl(dbmmoLongDescr);
//      dmAxiom.AddictLiveSpell.RemoveControl(cxDBMemo1);
//      dmAxiom.AddictLiveSpell.RemoveControl(cxDBMemo2);
//      dmAxiom.AddictLiveSpell.RemoveControl(Editor);
   end;
//  qryMatter.Close;
   try
      qWorkFlowType.Close();
      qryClient.Close;
      qryMatterCheck.Close;
      qryMatterType.Close();
      qJuris.Open();
      tbEmployeePartner.Open();
      tbEmployeeController.Open();
      tbEmployeeAuthor.Open();
      tbEmployeeOperator.Open();
      tblFeeCode.Close;
      tblFeeBasis.Close;
      tblMatterStatus.Close;
      tblTeam.Close;
      tbEmployee.Close;
      qryScaleCostsList.Close;
      qryAdvSource.Close;
      qryBank.Close;
      qryAccountType.Close;
      qryControlledTotal.Close;
      qryControlledMoney.Close;
      qryTaxRate.Close;
      qBilltemplate.Close;
      dmAxiom.tblCountryList.Close;
      qryProjectTemplate.Close;
      qryProjectMatter.Close;
   finally
      // print the matter label (if configured to do so) before exiting
      if ModalResult = mrOk then
         PrintLabel(FNMatter);

      try
         oInforms.Free;
      except
         //
      end;
      Action := caFree;
   end;
//  dmAxiom.uniInsight.Rollback;
end;

procedure TfrmMatterNew.dtpCompletedExit(Sender: TObject);
begin
  if bEditing then
  begin
    if not qryMatter.Modified then
      qryMatter.Edit;
    if dtpCompleted.Date > 0 then
    begin
      if not(CloseMatter(qryMatter.FieldByName('FILEID').AsString, dtpCompleted.Date)) then
        dtpCompleted.Date := Null;
    end
    else
      qryMatter.FieldByName('COMPLETED').Value := Null;
  end;
end;

procedure TfrmMatterNew.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   try
      if (qryMatter.Modified = True) or (qryControlledMoney.Modified = True) then
         CanClose := MsgAsk('Do you want to cancel your changes?') = mrYes;
   except
      //
   end;
end;

procedure TfrmMatterNew.cmbJurisdictionsChange(Sender: TObject);
begin
   //ldlJurisdiction.Caption := JurisdictionString(cmbJurisdiction.Text,'DESCR');
end;

procedure TfrmMatterNew.cmbProjectsPropertiesCloseUp(Sender: TObject);
begin
   tvScaleCost.DataController.RecordCount := 0;
end;

procedure TfrmMatterNew.cmbFeeBasisChange(Sender: TObject);
begin
   //lblFeeBasis.Caption := FeeBasisString(cmbFeeBasis.Text,'DESCR');
end;

procedure TfrmMatterNew.qryMatterAfterScroll(DataSet: TDataSet);
var stmp : string;
begin
    //dblMatterStatusClick(self);
    cbTypeClick(SELF);
    //cmbSubStatus.Text := dmTableCache.VGetString(dmTableCache.vtMatterSubStatus,'CODE',qryMatter.FieldByName('SUBSTATUS').AsString,'DESCR');
//    stmp := dmTableCache.VGetString(dmTableCache.vtMatterSubType,['CODE','MATTERTYPE',''],[qryMatter.FieldByName('SUBTYPE').AsString,qryMatter.FieldByName('TYPE').AsString],'DESCR');
//    cmbSubType.Text := dmTableCache.VGetString(dmTableCache.vtMatterSubType,['CODE','MATTERTYPE',''],[qryMatter.FieldByName('SUBTYPE').AsString,qryMatter.FieldByName('TYPE').AsString],'DESCR');
end;

procedure TfrmMatterNew.UpdateEmployeeNames;
begin
   qryMatter.FieldByName('Partner').AsString := SettingLoadString('Matter New', 'Partner');
   qryMatter.FieldByName('Controller').AsString := SettingLoadString('Matter New', 'Controller');
   qryMatter.FieldByName('Author').AsString := SettingLoadString('Matter New', 'Author');
   qryMatter.FieldByName('Operator').AsString := SettingLoadString('Matter New', 'Operator');
   qryMatter.FieldByName('Paralegal').AsString := SettingLoadString('Matter New', 'ParaLegal');
end;

procedure TfrmMatterNew.qJurisAfterScroll(DataSet: TDataSet);
begin
//  qSubJuris.Close();
//  qSubJuris.ParamByName('code').AsString := qJurisCODE.AsString;
//  qSubJuris.Open();
end;

procedure TfrmMatterNew.dbtbBillToPropertiesButtonClick(Sender: TObject;
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

procedure TfrmMatterNew.dbtbBudgetFeesExit(Sender: TObject);
begin
   if dbtbBudgetFees.EditValue > 0 then
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

procedure TfrmMatterNew.dbtbContactPropertiesButtonClick(Sender: TObject;
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

procedure TfrmMatterNew.dbtbRefByPropertiesButtonClick(Sender: TObject;
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

procedure TfrmMatterNew.dbtbOtherParty1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('PARTY1').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
    qryMatter.FieldByName('NOTHERPARTY1').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
  end;
end;

procedure TfrmMatterNew.dbtbOtherParty2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('PARTY2').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
    qryMatter.FieldByName('NOTHERPARTY2').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
  end;
end;

procedure TfrmMatterNew.dbtbOtherParty3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not Self.qryMatter.Modified then
      Self.qryMatter.Edit;
    qryMatter.FieldByName('PARTY3').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
    qryMatter.FieldByName('NOTHERPARTY3').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
  end;
end;

procedure TfrmMatterNew.dbtbFileIDEnter(Sender: TObject);
begin
   dbtbFileID.Style.Color := clWindow;
   if (dbtbFileID.Text = AUTO_CAPTION) then
   begin
      dbtbFileID.Text := '';
      qryMatter.FieldByName('fileid').AsString := '';
   end;
end;

procedure TfrmMatterNew.dbtbFileIDExit(Sender: TObject);
begin
  if (dbtbFileID.Text = '') then
  begin
    dbtbFileID.Text := AUTO_CAPTION;
    dbtbFileID.Style.Color := clInactiveCaption;
  end;
end;

procedure TfrmMatterNew.cmbJurisdictionPropertiesCloseUp(Sender: TObject);
begin
   SubJurisdictionState;
end;

procedure TfrmMatterNew.cmbJurisdictionPropertiesChange(Sender: TObject);
begin
   SubJurisdictionState;
end;

procedure TfrmMatterNew.cxCBBankPropertiesChange(Sender: TObject);
begin
  if (qryControlledMoney.state <> dsInactive) and
     (qryControlledMoney.state <> dsBrowse) then
  begin
     if (cxTEAccountName.Text = '') then
        qryControlledMoney.FieldByName('ACCOUNT_NAME').AsString := cxCBBank.Text;
     qryControlledMoney.FieldByName('ACCOUNT_NUMBER').AsString :=
         TableString('BANK','ACCT',string(cxCBBank.EditValue) ,'BSB') + '-'+ qryMatter.FieldByName('FILEID').AsString;
  end;
end;

procedure TfrmMatterNew.cxDBDateEdit1PropertiesChange(Sender: TObject);
begin
   if (bEditing and (not FromDisplayMatter)) then
   begin
      if not qryMatter.Modified then
         qryMatter.Edit;
      if (dtpCompleted.Date > 0) then
      begin
         if not(CloseMatter(qryMatter.FieldByName('FILEID').AsString, dtpCompleted.Date)) then
            dtpCompleted.Date := NullDate;
      end
      else
         qryMatter.FieldByName('COMPLETED').Clear;
   end;
end;

procedure TfrmMatterNew.SubJurisdictionState;
begin
   if cmbJurisdiction.Text <> '' then
   begin
      cmbSubJurisdiction.Enabled := True;

      qSubJuris.Close();
      qSubJuris.ParamByName('CODE').AsString :=  cmbJurisdiction.EditValue;
      qSubJuris.Open();
   end;
   if cmbJurisdiction.Text = '' then
      cmbSubJurisdiction.Enabled := False;
end;

// For the success probability and percentage completed fields
// Uses the Express DBEditors 4 SpinEdit object, when value is over 100, set value to 100
procedure TfrmMatterNew.dbseProbSuccessPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if DisplayValue  > 100 then
   begin
      Error := False;
      DisplayValue := 100;
   end;
end;

procedure TfrmMatterNew.pageMatterChange(Sender: TObject);
var
   I: integer;
begin
   qryDebtorWorkflowTemplate.Close;
   qryTaxRate.close;
   if pageMatter.ActivePage = tabStaff then
      SetReqFieldsColour('MATTER',qryMatter, tabStaff);

   if pageMatter.ActivePage = tabWorkflow then
   begin
      SetReqFieldsColour('MATTER',qryMatter, tabWorkflow);
      qryDebtorWorkflowTemplate.Open;
   end;

   if pageMatter.ActivePage = tabDebtor then
   begin
      qryDebtorWorkflowTemplate.open;
      SetReqFieldsColour('MATTER',qryMatter, tabDebtor);
   end;

   if pageMatter.ActivePage = tabContacts then
   begin
      gbOtherParties.Visible := (SystemString('COMPANY' ) = 'Slater & Gordon Pty Ltd');
      SetReqFieldsColour('MATTER',qryMatter, tabContacts);
   end;

   if pageMatter.ActivePage = tabBalances then
   begin
      qryTaxRate.Open;
      SetReqFieldsColour('MATTER',qryMatter, tabBalances);
   end;

   if pageMatter.ActivePage = tabMatterBudgets then
      SetReqFieldsColour('MATTER',qryMatter, tabMatterBudgets);

   if pageMatter.ActivePage = tabProject then
   begin

   end;

end;

procedure TfrmMatterNew.cxDBPopupEdit1PropertiesInitPopup(Sender: TObject);
var
   i : integer;
   team_code: string;
   tnParent, tnChild: TTreeNode;
begin
   qryEmployeeCode.Close;
   qryEmployeeCode.Open;
   for i := 0 to lvteam_employees.Items.Count -1 do
      lvteam_employees.Items.Clear;

   tnParent := lvteam_employees.Items.Add(nil, qryEmployeeCode.FieldByName('DESCR').AsString);
   tnParent.ImageIndex := 0;
   tnParent.SelectedIndex := 0;
   team_code := qryEmployeeCode.FieldByName('team_code').AsString;
   while not qryEmployeeCode.EOF do
   begin
     if team_code <>  qryEmployeeCode.FieldByName('team_code').AsString then
     begin
        tnParent := lvteam_employees.Items.Add(nil, qryEmployeeCode.FieldByName('DESCR').AsString);
        team_code := qryEmployeeCode.FieldByName('team_code').AsString;
        tnParent.ImageIndex := 0;
        tnParent.SelectedIndex := 0;
     end;
     tnChild := lvteam_employees.Items.AddChild(tnParent,qryEmployeeCode.FieldByName('NAME').AsString);
     tnChild.ImageIndex := 1;
     tnChild.SelectedIndex := 1;
     qryEmployeeCode.Next;
   end;
   qryEmployeeCode.Close;
end;

procedure TfrmMatterNew.lvteam_employeesClick(Sender: TObject);
begin
   if (lvteam_employees.Selected.HasChildren) and (not bExpanding)  then
   begin
      cmbTeam.Text := lvteam_employees.Selected.Text;
      cmbTeam.DroppedDown := False;
   end;
   bExpanding := False;
end;

procedure TfrmMatterNew.cmbTeamPropertiesInitPopup(Sender: TObject);
var
   i : integer;
   team_code: string;
   tnParent, tnChild: TTreeNode;
begin
   qryEmployeeCode.Close;
   qryEmployeeCode.Open;
   if qryEmployeeCode.RecordCount > 0 then
   begin
      for i := 0 to lvteam_employees.Items.Count -1 do
         lvteam_employees.Items.Clear;

      tnParent := lvteam_employees.Items.Add(nil, qryEmployeeCode.FieldByName('DESCR').AsString);
      tnParent.ImageIndex := 0;
      tnParent.SelectedIndex := 0;
      team_code := qryEmployeeCode.FieldByName('team_code').AsString;
      while not qryEmployeeCode.EOF do
      begin
        if team_code <>  qryEmployeeCode.FieldByName('team_code').AsString then
        begin
           tnParent := lvteam_employees.Items.Add(nil, qryEmployeeCode.FieldByName('DESCR').AsString);
           team_code := qryEmployeeCode.FieldByName('team_code').AsString;
           tnParent.ImageIndex := 0;
           tnParent.SelectedIndex := 0;
        end;
        tnChild := lvteam_employees.Items.AddChild(tnParent,qryEmployeeCode.FieldByName('NAME').AsString);
        tnChild.ImageIndex := 1;
        tnChild.SelectedIndex := 1;
        qryEmployeeCode.Next;
      end;
   end;
   qryEmployeeCode.Close;

end;

procedure TfrmMatterNew.lvteam_employeesExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
   bExpanding := True;
end;

procedure TfrmMatterNew.lvteam_employeesCollapsing(Sender: TObject;
  Node: TTreeNode; var AllowCollapse: Boolean);
begin
   bExpanding := True;
end;

procedure TfrmMatterNew.createWorkflowTasks(NMatter : integer);
var
   nRowCount: integer;
   SLEDate: TDateTime;
   bResult : boolean;
   nWorkFlowTask, nTemplateLineId: integer;
   Updates: Boolean;
begin
   dmWorkFlowDataModuleRun.qCheckWorkflowTasks.close;
   dmWorkFlowDataModuleRun.qCheckWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
   dmWorkFlowDataModuleRun.qCheckWorkflowTasks.Open();

   if(dmWorkFlowDataModuleRun.qCheckWorkflowTasks.Eof) then
   begin
      try
 {         with dmAxiom.qryTmp do
          begin
              Close;
              SQL.Text := 'Delete from workflowtasks where nmatter = :nmatter';
              ParamByName('nmatter').AsInteger := NMatter;
              Execute;
          end; }
          dmWorkFlowDataModuleRun.qCreateWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
          dmWorkFlowDataModuleRun.qCreateWorkflowTasks.Execute();
      except
          ;
      end;
   end;
      // critical dates
   with dmWorkFlowDataModuleRun.qCreateCriticalDates do
   begin
      for nRowCount := 0 to tvSLEDates.DataController.RowCount - 1 do
      begin
         tvSLEDates.ViewData.Records[nRowCount].Focused := True;
         SQL.Clear;
         SQL.Text := 'update critical_dates set critical_date =:critical_date where nmatter = :nmatter and TEMPLATELINEID = :TEMPLATELINEID';
//           SQL.Text := 'update critical_dates set critical_date =:critical_date where nmatter = :nmatter and workflowtask = :workflowtask';

         ParamByName('nmatter').AsInteger := NMatter;
         ParamByName('TEMPLATELINEID').AsInteger := GetRecordValue(nRowCount, tvSLEDatesLineID.Index);
         nTemplateLineId := GetRecordValue(nRowCount, tvSLEDatesLineID.Index);
//                nWorkFlowTask := GetRecordValue(nRowCount, tvSLEDatesLineID.Index);
         if GetRecordValue(nRowCount, tvSLEDatesDate.Index) = null then
            SLEDate := NullDate
         else
         begin
            try
               SLEDate := StrToDate(GetRecordValue(nRowCount, tvSLEDatesDate.Index));
            except
               on EConvertError do
               begin
                  with dmAxiom.qryTmp do
                  begin
                     close;
                     SQL.Clear;
                     SQL.Text := 'select to_date('''+GetRecordValue(nRowCount, tvSLEDatesDate.Index)+''') as sledate from dual';
                     Open;
                     SLEDate := FieldByName('sledate').AsDateTime;
                  end;
               end;
            end;
         end;
         if SLEDate = nullDate then
            ParamByName('critical_date').Value := null
         else
            ParamByName('critical_date').AsDateTime := SLEDate;
         Execute();
         Updates := (RowsAffected > 0);
         if not Updates then
         begin
            dmWorkFlowDataModuleRun.qCreateCriticalDates.SQL.Clear;
            dmWorkFlowDataModuleRun.qCreateCriticalDates.SQL.Text := 'insert into critical_dates(nmatter,templatelineid,descr,finished, critical_date) values (:nmatter, :templatelineid, :descr, ''N'', :critical_date)';

            tvSLEDates.ViewData.Records[nRowCount].Focused := True;
            nTemplateLineId := GetRecordValue(nRowCount, tvSLEDatesLineID.Index);

            if GetRecordValue(nRowCount, tvSLEDatesDate.Index) = null then
               SLEDate := NullDate
            else
            begin
               try
                  SLEDate := StrToDate(GetRecordValue(nRowCount, tvSLEDatesDate.Index));
               except
                  on EConvertError do
                  begin
                     with dmAxiom.qryTmp do
                     begin
                        close;
                        SQL.Clear;
                        SQL.Text := 'select to_date('''+GetRecordValue(nRowCount, tvSLEDatesDate.Index)+''') as sledate from dual';
                        Open;
                        SLEDate := FieldByName('sledate').AsDateTime;
                     end;
                  end;
               end;
            end;

            if SLEDate = nullDate then
               dmWorkFlowDataModuleRun.qCreateCriticalDates.ParamByName('critical_date').Value := null
            else
               dmWorkFlowDataModuleRun.qCreateCriticalDates.ParamByName('critical_date').AsDateTime := SLEDate;

         // /         SLEDate := {StrToDate(}GetRecordValue(nRowCount, tvSLEDatesDate.Index){)};
   //      begin
            dmWorkFlowDataModuleRun.qCreateCriticalDates.ParamByName('nmatter').AsInteger := NMatter;
            dmWorkFlowDataModuleRun.qCreateCriticalDates.ParamByName('templatelineid').AsInteger :=   nTemplateLineId;   //qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger;
            dmWorkFlowDataModuleRun.qCreateCriticalDates.ParamByName('descr').AsString := GetRecordValue(nRowCount, tvSLEDatesDescription.Index);
            if SLEDate = nullDate then
               dmWorkFlowDataModuleRun.qCreateCriticalDates.ParamByName('critical_date').Value := null
            else
               dmWorkFlowDataModuleRun.qCreateCriticalDates.ParamByName('critical_date').AsDateTime := SLEDate;
            dmWorkFlowDataModuleRun.qCreateCriticalDates.Execute();

         end;
      end;
   end;
   dmWorkFlowDataModuleRun.qCheckWorkflowTasks.close;
end;

function TfrmMatterNew.checkCritcalDates(NMatter : integer) : boolean;
var iloop : integer;
begin
    qryCriticalDates.close;
    qryCriticalDates.paramByName('NMATTER').AsInteger := NMatter;
    qryCriticalDates.open;

    if qryCriticalDates.eof then
    begin
       qryCriticalDates.close;
       checkCritcalDates := false;
       exit;
    end;
    checkCritcalDates := true;

    grpCriticalDates.Visible := true;

 {   for iloop := 0 to pageMatter.PageCount-1 do
    begin
    if pageMatter.Pages[iloop] <> tabcriticalDate then
        pageMatter.Pages[iloop].Enabled := false;
    end;   }

    for iloop := 0 to Self.ControlCount  -1 do
    begin
        if (Self.Controls[iloop] <> pageMatter) and
           (Self.Controls[iloop] <> btnOK) and
           (Self.Controls[iloop] <> btnCancel)
        then
           Self.Controls[iloop].Enabled := false;
    end;
end;

function TfrmMatterNew.checkSLEDateEntered : boolean;
begin
  checkSLEDateEntered := false;
  qryCriticalDates.first;
  while not qryCriticalDates.eof do
  begin
      if not qryCriticalDates.fieldByName('CRITICAL_DATE').IsNull then
      begin
        checkSLEDateEntered := true;
        exit;
      end;
      qryCriticalDates.next;
  end;
end;

procedure TfrmMatterNew.qryAdditionalTrustBanksNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
end;

procedure TfrmMatterNew.qryControlledMoneyAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   FbNewControlledMoney := True;
end;

procedure TfrmMatterNew.qryControlledMoneyBeforePost(DataSet: TDataSet);
begin
   DataSet.FieldByName('NDEPOSITACCOUNT').AsString := dmAxiom.GetSeqNumber('SQNC_NDEPOSITACCOUNT');
end;

procedure TfrmMatterNew.qryCriticalDatesCRITICAL_DATEValidate(
  Sender: TField);
var
   WFT : TWorkFlowTask;
   nWorkFlowTask: integer;
begin
   qryMatterWorkflowTasks.Close;
   qryMatterWorkflowTasks.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryMatterWorkflowTasks.ParamByName('TEMPLATELINEID').AsInteger := qryCriticalDates.FieldByName('templatelineid').AsInteger;
   qryMatterWorkflowTasks.Open;
   if qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger <> 0 then
      nWorkFlowTask := qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger;

   WFT := TWorkFlowTask.Create(nWorkFlowTask, qryMatter.FieldByName('NMATTER').AsInteger);

   if not WFT.Started then
   begin
     WFT.StartTask(Sender.AsDateTime);
     WFT.updateStartedTree(now);
   end
   else
   begin
     WFT.CompleteByDate := Sender.AsDateTime;
     WFT.updateStartedTree(Sender.AsDateTime);
   end;

   WFT.Free;
end;

procedure TfrmMatterNew.dblWorkFlowPropertiesCloseUp(Sender: TObject);
var
   nRowCount: integer;
begin
   // stop error if row not selected
   if dblWorkFlow.EditValue = null then
        exit;

   grpCriticalDates.Visible := CheckCriticalDates(dblWorkFlow.EditValue);

   tvSLEDates.DataController.RecordCount := 0;

   if grpCriticalDates.Visible = True then
   begin
      nRowCount := 0;
     tvSLEDates.BeginUpdate;
      try
         if (qryWorkflowCriticalDates.Active = False) then
         begin
            qryWorkflowCriticalDates.close;
            qryWorkflowCriticalDates.paramByName('workflowtypecode').AsInteger := dblWorkFlow.EditValue;
            qryWorkflowCriticalDates.paramByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
            qryWorkflowCriticalDates.open;
         end;
         while (qryWorkflowCriticalDates.Eof = False) do
         begin
            tvSLEDates.DataController.AppendRecord;
            begin
               SetRecordValue(nRowCount, tvSLEDatesDescription.Index, qryWorkflowCriticalDates.FieldByName('TASKDESCRIPTION').AsString);
               SetRecordValue(nRowCount, tvSLEDatesLineID.Index, qryWorkflowCriticalDates.FieldByName('TEMPLATELINEID').AsString);
               if qryWorkflowCriticalDates.FieldByName('DATETOCOMPLETE').IsNull = False then
                  SetRecordValue(nRowCount, tvSLEDatesDate.Index, qryWorkflowCriticalDates.FieldByName('DATETOCOMPLETE').AsDateTime)
               else if (dtpSLEDate.Text <> '') then
                  SetRecordValue(nRowCount, tvSLEDatesDate.Index, dtpSLEDate.Date);
            end;
            qryWorkflowCriticalDates.Next;
            Inc(nRowCount);
         end;
      finally
         tvSLEDates.EndUpdate;
      end;
   end;
end;

procedure TfrmMatterNew.SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
begin
   tvSLEDates.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
end;

function TfrmMatterNew.GetRecordValue(ARecordIndex, AItemIndex: Integer): Variant;
begin
   Result := tvSLEDates.DataController.GetValue(ARecordIndex, AItemIndex);
end;

procedure TfrmMatterNew.dtpSLEDatePropertiesCloseUp(Sender: TObject);
var
   nRowCount: integer;
begin
   try
      if dtpSLEDate.Date <> NullDate then
      begin
         if grpCriticalDates.Visible then
         begin
            if MessageDlg('Update All CRITICAL Dates?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
            begin
               for nRowCount := 0 to tvSLEDates.DataController.RowCount - 1 do
               begin
                  tvSLEDates.ViewData.Records[nRowCount].Focused := True;
                  if VarIsNull(tvSLEDatesDate.EditValue) then
                     SetRecordValue(nRowCount, tvSLEDatesDate.Index, dtpSLEDate.Date);
               end;
            end;
         end;
      end;
   except
   //
   end;
end;

procedure TfrmMatterNew.qryMatterBudgetsNewRecord(DataSet: TDataSet);
begin
   qryMatterBudgets.FieldByName('NMATTER').AsInteger := qryMatter.ParamByName('NMATTER').AsInteger;
   qryMatterBudgets.FieldByName('COMPLETED').AsString := 'N';
end;

function TfrmMatterNew.CheckCriticalDates(workflowtypecode: string): boolean;
begin
   qryWorkflowCriticalDates.close;
   qryWorkflowCriticalDates.paramByName('workflowtypecode').AsString := workflowtypecode;
   qryWorkflowCriticalDates.open;
   CheckCriticalDates := (not qryWorkflowCriticalDates.Eof)
end;

procedure TfrmMatterNew.tvBatterBudgetsTASKPropertiesInitPopup(
  Sender: TObject);
begin
   if not qryScaleCosts.Active then
      qryScaleCosts.Open;
end;

procedure TfrmMatterNew.tvProjectsCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
   I: integer;
begin
// Load this assigned scalecosts
   tvScaleCost.DataController.RecordCount := 0;
   qryProjectScaleLinksMatter.ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
   qryProjectScaleLinksMatter.ParamByName('nmatter').AsInteger := qryMatter.ParamByName('NMATTER').AsInteger;
   qryProjectScaleLinksMatter.Open;
   qryProjectScaleLinksMatter.Last;
   qryProjectScaleLinksMatter.First;
   tvScaleCost.BeginUpdate();
   tvScaleCost.DataController.RecordCount := qryProjectScaleLinksMatter.RecordCount;
   I := 0;
   while not qryProjectScaleLinksMatter.EOF do
   begin
      tvScaleCost.DataController.Values[I, 0] := qryProjectScaleLinksMatter.FieldByName('FEE_TEMPLATE').AsString;
      tvScaleCost.DataController.Values[I, 1] := qryProjectScaleLinksMatter.FieldByName('REASON').AsString;
      tvScaleCost.DataController.Values[I, 2] := qryProjectScaleLinksMatter.FieldByName('author').AsString;
      tvScaleCost.DataController.Values[I, 3] := tvProjectsNPROJECTTEMPL.EditValue;
      tvScaleCost.DataController.Values[I, 4] := qryProjectScaleLinksMatter.FieldByName('NSCALECOST').AsInteger;
      tvScaleCost.DataController.Values[I, 5] := qryProjectScaleLinksMatter.FieldByName('DAYS').AsInteger;
      tvScaleCost.DataController.Values[I, 6] := qryProjectScaleLinksMatter.FieldByName('TASK_TYPE').AsString;
      tvScaleCost.DataController.Values[I, 7] := qryProjectScaleLinksMatter.FieldByName('UNIQUEID').AsInteger;
      tvScaleCost.DataController.Values[I, 8] := qryProjectScaleLinksMatter.FieldByName('PARENT_ID').AsInteger;
      tvScaleCost.DataController.Values[I, 9] := qryProjectScaleLinksMatter.FieldByName('COLOUR').AsInteger;
      tvScaleCost.DataController.Values[I, 10] := qryProjectScaleLinksMatter.FieldByName('SEQ_ORDER').AsInteger;
      tvScaleCost.DataController.Values[I, 11] := qryProjectScaleLinksMatter.FieldByName('PREC_ID').AsInteger;
      tvScaleCost.DataController.Values[I, 12] := qryProjectScaleLinksMatter.FieldByName('BUDGET_LOW').AsFloat;
      tvScaleCost.DataController.Values[I, 13] := qryProjectScaleLinksMatter.FieldByName('BUDGET_HIGH').AsFloat;
      tvScaleCost.DataController.Values[I, 14] := qryProjectScaleLinksMatter.FieldByName('TIME_ESTIMATE').AsFloat;
      tvScaleCost.DataController.Values[I, 15] := qryProjectScaleLinksMatter.FieldByName('MAX_TIME_ESTIMATE').AsFloat;

      qryProjectScaleLinksMatter.Next;
      Inc(I);
   end;
   tvScaleCost.EndUpdate;
   qryProjectScaleLinksMatter.Close;

end;

procedure TfrmMatterNew.dbcbluBranchPropertiesCloseUp(Sender: TObject);
var
   ABank: string;
begin
   try
      ABank := TableString('BRANCH','CODE',string(dbcbluBranch.EditValue),'DEFAULT_BANK');
      if (ABank <> '') and (ABank <> dmAxiom.DefaultTrustBank) then
         cmbBank.EditValue := ABank;
   except
      //
   end;
end;

procedure TfrmMatterNew.chkAuthorityRecvdClick(Sender: TObject);
begin
   if chkAuthorityRecvd.Checked then
   begin
      if dtdbDestroyAuthority.Date = nullDate then
         dtdbDestroyAuthority.Date := Now;
   end
   else
      dtdbDestroyAuthority.Clear;
end;

procedure TfrmMatterNew.chkbTrustAuthorityClick(Sender: TObject);
begin
   if chkbTrustAuthority.Checked then
   begin
      if dtdbTrustAuthority.Date = NullDate then
         dtdbTrustAuthority.Date := Now
   end
   else
      dtdbTrustAuthority.Clear;
end;

procedure TfrmMatterNew.chkCostAgreementClick(Sender: TObject);
begin
   if chkCostAgreement.Checked then
   begin
      if dtdbCostAgreementReceived.Date = NullDate then
         dtdbCostAgreementReceived.Date := Now;
   end
   else
      dtdbCostAgreementReceived.Clear;
end;

procedure TfrmMatterNew.dbcbluBranchPropertiesChange(Sender: TObject);
var
   ABank: string;
begin
{   try
      ABank := TableString('BRANCH','CODE',string(dbcbluBranch.EditValue),'DEFAULT_BANK');
      if (ABank <> '') and (ABank <> dmAxiom.DefaultTrustBank) then
         cmbBank.EditValue := ABank;
   except
      //
   end;  }
end;

procedure TfrmMatterNew.cxDBSpinEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if Error then
   begin
      if DisplayValue > 31 then DisplayValue := 31
      else
      if DisplayValue < 0 then DisplayValue := 0;
   end;
end;

procedure TfrmMatterNew.StartCriticalTasks(NMatter: integer);
var
   ACritical_date: TDateTime;
   ATemplateLineID, nWorkFlowTask: integer;
   WFT : TWorkFlowTask;
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'select critical_date, templatelineid from critical_dates where nmatter = :nmatter';
      ParamByName('nmatter').AsInteger := NMatter;
      Open;
      while not Eof do
      begin
         ACritical_date := FieldByName('critical_date').AsDateTime;
         ATemplateLineID := FieldByName('templatelineid').AsInteger;
         if (ACritical_date <> nullDate) and (ACritical_date <> 0) then
         begin
            qryMatterWorkflowTasks.Close;
            qryMatterWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
            qryMatterWorkflowTasks.ParamByName('TEMPLATELINEID').AsInteger := ATemplateLineID;
            qryMatterWorkflowTasks.Open;
            if qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger <> 0 then
               nWorkFlowTask := qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger;

            WFT := TWorkFlowTask.Create(nWorkFlowTask, NMatter);

{            if not WFT.Started then
            begin
               WFT.StartTask(ACritical_date);
               WFT.updateStartedTree(now);
            end
            else   }
            begin
               WFT.CompleteByDate := ACritical_date;
               WFT.updateStartedTree(ACritical_date);
            end;
            WFT.Free;
         end;
         next;
      end;
   end;
   qryMatterWorkflowTasks.Close;
end;

procedure TfrmMatterNew.tabSecureDocsShow(Sender: TObject);
begin
   LoadSecureMatters(qryMatter.FieldByName('FILEID').AsString);
end;

procedure TfrmMatterNew.LoadSecureMatters(sCode : string);
begin
   lbSelectedEmployees.Clear;
   lbAllEmployees.Clear;
   qryEmployees.Close;
   qryEmployees.ParamByName('nmatter').AsString := TableString('matter','fileid', sCode, 'nmatter');
   if (qryEmployees.Active = false) then
      qryEmployees.Open;
   qryEmployees.First;
   while not qryEmployees.EOF do
   begin
      lbAllEmployees.Items.Add(qryEmployees.FieldByName('code').AsString + ' - ' + qryEmployees.FieldByName('NAME').AsString);
      qryEmployees.Next;
   end;
   // Load this Employees shortcuts
   lbSelectedEmployees.Clear;
   qryEmployeesAttached.Close;
   qryEmployeesAttached.ParamByName('nmatter').AsString := TableString('matter','fileid', sCode, 'nmatter');
   qryEmployeesAttached.Open;
   while not qryEmployeesAttached.EOF do
   begin
      lbSelectedEmployees.Items.Add(qryEmployeesAttached.FieldByName('code').AsString + ' - ' +qryEmployeesAttached.FieldByName('NAME').AsString);
      qryEmployeesAttached.Next;
   end;
   qryEmployeesAttached.Close;
end;

procedure TfrmMatterNew.btnLaunchAllClick(Sender: TObject);
begin
   ListBoxMoveAll(lbAllEmployees, lbSelectedEmployees);
end;

procedure TfrmMatterNew.btnLaunchSelectClick(Sender: TObject);
begin
   ListBoxMoveSelected(lbAllEmployees, lbSelectedEmployees);
end;

procedure TfrmMatterNew.btnRemoveClick(Sender: TObject);
begin
   ListBoxMoveSelected(lbSelectedEmployees, lbAllEmployees);
end;

procedure TfrmMatterNew.btnLaunchNoneClick(Sender: TObject);
begin
   ListBoxMoveAll(lbSelectedEmployees, lbAllEmployees);
end;

procedure TfrmMatterNew.SaveMatters(sCode : string);
var
  iCtr: integer;
begin
  SecureMatterDelete(sCode);
  with qryMatterSecEmps do
  begin
    Open;
    for iCtr := 0 to lbSelectedEmployees.Items.Count - 1 do
    begin
//      if qryMatterSecurity.Locate('NAME', lbSelectedEmployees.Items.Strings[iCtr], []) then
//      begin
        Insert;
        FieldByName('NMATTER').AsString := sCode;
        FieldByName('EMPLOYEE_CODE').AsString := trim(Copy(lbSelectedEmployees.Items.Strings[iCtr], 1, pos('-', lbSelectedEmployees.Items.Strings[iCtr]) - 1));
        Post;
//      end;
    end;
  end;
end;

procedure TfrmMatterNew.SecureMatterDelete(sCode : string);
begin
  qryUpdate.SQL.Text := 'DELETE FROM matter_doc_security WHERE NMATTER = ' + sCode;
  qryUpdate.ExecSQL;
end;

procedure TfrmMatterNew.cbSecureDocsClick(Sender: TObject);
begin
   tabSecureDocs.TabVisible := cbSecureDocs.Checked;
   if (not cbSecureDocs.Checked) then
      SecureMatterDelete(qryMatter.FieldByName('NMATTER').AsString)
end;

procedure TfrmMatterNew.cmbCostsAgreementPropertiesInitPopup(
  Sender: TObject);
begin
   if (dblWorkflow.Text <> '') then
   begin
      with qryWorkflowDoctemplate do
      begin
         Close;
         try
            ParamByName('workflowtypecode').AsString := dblWorkflow.EditValue;
         except
         // silent
         end;
         Open;
      end;
   end;
end;

// the merge form close event, free and set pointer to nil
procedure TfrmMatterNew.MergeFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FWorkFlowMergeDocument := Nil;
end;

procedure TfrmMatterNew.OnUpdateWindowEvent(Sender: TObject);
begin
//  vtTasks.Invalidate();
//  UpdateToDoWindow();
end;

procedure TfrmMatterNew.dbtbEstFeePropertiesChange(Sender: TObject);
var
  bFeeAlert: boolean;
begin
   bFeeAlert := dmAxiom.CheckFeeTotalInstalled;
   try
     if (dbtbEstFee.EditingValue > 0) then
     begin
       if bFeeAlert then
       begin
          if (dbtbEstFee.EditingValue > 0) then
          begin
             progBarFeeTotal.Visible := bFeeAlert;
             lblNoEstFees.Visible := False;
             try
                progBarFeeTotal.Properties.BeginColor := clLime;
                progBarFeeTotal.Properties.EndColor := clGreen;
                progBarFeeTotal.Position := dmAxiom.GetFeeTotal(qryMatter.FieldByName('NMATTER').AsInteger);
                if progBarFeeTotal.Position > spinFeeAlertLimit.Value then
                begin
                   progBarFeeTotal.Properties.OverloadValue := spinFeeAlertLimit.Value;
                   progBarFeeTotal.Properties.BeginColor := clRed;
                   progBarFeeTotal.Properties.EndColor := clRed;
                end;
             except
                progBarFeeTotal.Position := 0;
             end;
          end
          else
          begin
             lblNoEstFees.Visible := True;
             progBarFeeTotal.Visible := False;
          end;
       end;
       lblCostsAgreement.Visible := bFeeAlert;
       cmbCostsAgreement.Visible := bFeeAlert;
       chkPrintCostsAgreement.Visible := bFeeAlert;
     end;
   except
      lblNoEstFees.Visible := True;
      progBarFeeTotal.Visible := False;
   end;
end;

procedure TfrmMatterNew.qryMatterEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   ShowMessage('Matter has been changed by another user.  It will be refreshed.');
   Action := daAbort;
end;

procedure TfrmMatterNew.qryProjectScaleLinksMatterBeforeInsert(
  DataSet: TDataSet);
begin
//   DataSet.FieldbyName('UNIQUEID').AsString := dmAxiom.GetSeqNumber('SQNC_FEETMP');
end;

procedure TfrmMatterNew.btnRecurringFeesClick(Sender: TObject);
var
   frmRecurringFees: TfrmRecurringFees;
   bContinue: boolean;
begin
   try
      bContinue := True;
      if cmbTasks.Text = '' then
      begin
         MsgInfo('Please select a Task');
         bContinue := False;
      end;
      if (bContinue = true) and (dtStart.Date = NullDate)  then
      begin
         MsgInfo('Please select a Start Date');
         bContinue := False;
      end;
      if (bContinue = true) and (spinNoOfPayments.Value = 0)  then
      begin
         MsgInfo('Please ensure that Number of Payments is 1 or greater.');
         bContinue := False;
      end;
      if (bContinue = true) and (cmbFrequency.Text = '')  then
      begin
         MsgInfo('Please select a Frequency');
         bContinue := False;
      end;
      if (bContinue = true) and (cmbRecFeeAuthor.Text = '')  then
      begin
         MsgInfo('Please select an Employee');
         bContinue := False;
      end;

      if (bContinue = true) then
      begin
         frmRecurringFees := TfrmRecurringFees.Create(Self);
         frmRecurringFees.CreateRecurringFees(dtStart.Date,  cmbTasks.EditValue,
                                           spinNoOfPayments.Value,  cmbFrequency.Text,
                                           cmbRecFeeAuthor.EditValue,
                                           qryMatter.FieldByName('NMATTER').AsInteger,
                                           qryMatter.FieldByName('RF_AMOUNT').AsCurrency);
         frmRecurringFees.ShowModal;
      end;
   finally
      if bContinue = true then
         frmRecurringFees.Free;
   end;
end;

procedure TfrmMatterNew.tabMatterAdditionalCarriageShow(Sender: TObject);
begin
if FEditorValue <> nil then
   begin
      FEditorValue.Position := 0;
//      Editor.Lines.LoadFromStream(FEditorValue);
   end;
end;

procedure TfrmMatterNew.tabRecurringFeesShow(Sender: TObject);
begin
   btnRecurringFees.Enabled := (qryMatter.FieldByName('NMATTER').AsInteger > 0);
end;

procedure TfrmMatterNew.dbtbShortDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = ' ' then
      Quickcode(dbtbShortDescr);
end;

procedure TfrmMatterNew.dbtbEstFeeExit(Sender: TObject);
var
   bFeeAlert: boolean;
begin
   bFeeAlert := dmAxiom.CheckFeeTotalInstalled;
   try
      if (dbtbEstFee.EditingValue > 0) then
      begin
         if bFeeAlert then
         begin
            if (dbtbEstFee.EditingValue > 0) then
            begin
               progBarFeeTotal.Visible := bFeeAlert;
               lblNoEstFees.Visible := False;
               try
                  progBarFeeTotal.Properties.BeginColor := clLime;
                  progBarFeeTotal.Properties.EndColor := clGreen;
                  progBarFeeTotal.Position := dmAxiom.GetFeeTotal(qryMatter.FieldByName('NMATTER').AsInteger);
                  if progBarFeeTotal.Position > spinFeeAlertLimit.Value then
                  begin
                     progBarFeeTotal.Properties.OverloadValue := spinFeeAlertLimit.Value;
                     progBarFeeTotal.Properties.BeginColor := clRed;
                     progBarFeeTotal.Properties.EndColor := clRed;
                  end;
               except
                  progBarFeeTotal.Position := 0;
               end;
            end
            else
            begin
               lblNoEstFees.Visible := True;
               progBarFeeTotal.Visible := False;
            end;
         end;
      end;
   except
      //
   end;
end;

procedure TfrmMatterNew.eStreetSuburbPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  LfmPostCode: TfrmPostcodeSearch;
begin
  LfmPostCode := TfrmPostcodeSearch.Create(Self);
  try
    LfmPostCode.BorderStyle := bsDialog;

    if(Sender = eStreetSuburb) then
      LfmPostCode.tbSuburbSearch.Text := eStreetSuburb.Text;

    LfmPostCode.tbSuburbSearchChange(LfmPostCode.tbSuburbSearch);

    if(LfmPostCode.ShowModal() = mrOK) then
    begin
      if qryMatter.State = dsBrowse then
         qryMatter.Edit;
      if(Sender = eStreetSuburb) then
      begin
        qryMatter.FieldByName('SUBURB').AsString   := LfmPostCode.qryPostcodes.FieldByName('SUBURB').AsString;
        qryMatter.FieldByName('STATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
        qryMatter.FieldByName('POSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
      end
    end;
  finally
    FreeAndNil(LfmPostCode);
  end;

end;

procedure TfrmMatterNew.eStreetSuburbPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   LfmPostCode: TfrmPostcodeSearch;
   AState, APostcode: string;
begin
   if(qryMatter.State in [dsEdit, dsInsert]) then
   begin
      qPostCodeSearchSuburb.ParamByName('suburb').AsString := TcxDBButtonEdit(Sender).Text;  //eStreetSuburb.Text;
      qPostCodeSearchSuburb.Open();
      try
         if(not qPostCodeSearchSuburb.Eof) then
         begin
        // 09/09/2009 AES if more than one match for suburb, display all options
            if qPostCodeSearchSuburb.RecordCount > 1 then
            begin
               LfmPostCode := TfrmPostcodeSearch.Create(Self);
               try
                  LfmPostCode.BorderStyle := bsDialog;
                  LfmPostCode. tbSuburbSearch.Text := TcxDBButtonEdit(Sender).Text;  //  eStreetSuburb.Text;
                  LfmPostCode.tbSuburbSearchChange(LfmPostCode.tbSuburbSearch);

                  if(LfmPostCode.ShowModal() = mrOK) then
                  begin
                     AState := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
                     APostcode := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
                     if (Sender as TcxDBButtonEdit).Name = 'eStreetSuburb' then
                     begin
                        qryMatter.FieldByName('POSTCODE').AsString := APostcode;
                        qryMatter.FieldByName('STATE').AsString    := AState;
                     end
                    end;
               finally
                  LfmPostCode.Free;
               end;
            end
            else
            begin
             if (Sender as TcxDBButtonEdit).Name = 'eStreetSuburb' then
               begin
                  qryMatter.FieldByName('POSTCODE').AsString := qPostCodeSearchSuburb.FieldByName('PCODE').AsString;
                  qryMatter.FieldByName('STATE').AsString    := qPostCodeSearchSuburb.FieldByName('STATE').AsString;
               end;
           end;
        end;
      finally
        qPostCodeSearchSuburb.Close();
      end;
  end;  
end;


procedure TfrmMatterNew.SetModified(Value: Boolean);
begin
{  Editor.ModifiedAfterEnter := Value;
  if Value then
  begin
    dxStatusBar.Panels[2].Text := 'Modified';
    TdxStatusBarTextPanelStyle(dxStatusBar.Panels[2].PanelStyle).ImageIndex := 1;
  end
  else
  begin
    dxStatusBar.Panels[2].Text := '';
    TdxStatusBarTextPanelStyle(dxStatusBar.Panels[2].PanelStyle).ImageIndex := 4;
  end;
  dxBarButtonSave.Enabled := Value;  }
end;

procedure TfrmMatterNew.EditorEnter(Sender: TObject);
begin
   lActivecontrol := ActiveControl;
end;

procedure TfrmMatterNew.EditorPropertiesChange(Sender: TObject);
begin
{   if Editor = nil then Exit;

   SetModified(Editor.ModifiedAfterEnter);
//   dxStatusBar.Panels[1].Text := ActiveMDIChild.Caption;
   TdxStatusBarTextPanelStyle(dxStatusBar.Panels[1].PanelStyle).ImageIndex := 0;
   TdxStatusBarTextPanelStyle(dxStatusBar.Panels[0].PanelStyle).ImageIndex := 2;
   dxBarButtonUndo.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;   }
end;

procedure TfrmMatterNew.dxBarButtonOpenClick(Sender: TObject);
begin
   OpenDialog.FileName := '';
   if OpenDialog.Execute then
   begin
      FileName := OpenDialog.FileName;
      Editor.Lines.LoadFromFile(FileName);
      SetModified(True);
      dxBarMRUFiles.RemoveItem(OpenDialog.FileName, nil);
   end;
end;

procedure TfrmMatterNew.dxBarButtonPrintClick(Sender: TObject);
begin
   if PrintDialog.Execute then Editor.Print(FileName);
end;

procedure TfrmMatterNew.dxBarComboFontColorChange(Sender: TObject);
begin
   Editor.SelAttributes.Color := dxBarComboFontColor.Color;
end;

procedure TfrmMatterNew.dxBarComboFontNameChange(Sender: TObject);
begin
   if not FUpdating then
      Editor.SelAttributes.Name := dxBarComboFontName.Text;
end;

procedure TfrmMatterNew.dxBarComboFontSizeChange(Sender: TObject);
begin
  if not FUpdating then
    Editor.SelAttributes.Size := StrToInt(dxBarComboFontSize.Text);
end;

procedure TfrmMatterNew.dxBarComboFontSizeClick(Sender: TObject);
begin
   FontDialog.Font.Assign(Editor.SelAttributes);
   if FontDialog.Execute then
      Editor.SelAttributes.Assign(FontDialog.Font);
end;

procedure TfrmMatterNew.dxBarButtonFontClick(Sender: TObject);
begin
   FontDialog.Execute();
end;

procedure TfrmMatterNew.ReplaceDialogReplace(Sender: TObject);
var
  ReplacedCount, OldSelStart, PrevSelStart: Integer;
  S: string;
begin
{  with Editor, TReplaceDialog(Sender) do
  begin
    ReplacedCount := 0;
    OldSelStart := SelStart;
    if frReplaceAll in Options then
      Screen.Cursor := crHourglass;
    repeat
      if (SelLength > 0) and ((SelText = FindText) or
        (not (frMatchCase in Options) and
         (AnsiUpperCase(SelText) = AnsiUpperCase(FindText)))) then
      begin
        SelText := ReplaceText;
        Inc(ReplacedCount);
      end;
      PrevSelStart := SelStart;
      FindDialogFind(Sender);
    until not (frReplaceAll in Options) or (SelStart = PrevSelStart);
    if frReplaceAll in Options then
    begin
      Screen.Cursor := crDefault;
      if ReplacedCount = 0 then S := 'Text not found'
      else
      begin
        SelStart := OldSelStart;
        S := Format('Replace All', [ReplacedCount]);
      end;
      Application.MessageBox(PChar(S), 'Information',
        MB_ICONINFORMATION);
    end;
  end;    }
end;

procedure TfrmMatterNew.FindDialogFind(Sender: TObject);
var
  StartPos, FindLength, FoundAt: Integer;
  Flags: TSearchTypes;
  P: TPoint;
  CaretR, R, IntersectR: TRect;
begin
{  with Editor, TFindDialog(Sender) do
  begin
    if frDown in Options then
    begin
      if SelLength = 0 then StartPos := SelStart
      else StartPos := SelStart + SelLength;
      FindLength := Length(Text) - StartPos;
    end
    else
    begin
      StartPos := SelStart;
      FindLength := -StartPos;
    end;
    Flags := [];
    if frMatchCase in Options then Include(Flags, stMatchCase);
    if frWholeWord in Options then Include(Flags, stWholeWord);
    Screen.Cursor := crHourglass;
    FoundAt := Editor.FindText(FindText, StartPos, FindLength, Flags);
    if not (frReplaceAll in Options) then Screen.Cursor := crDefault;
    if FoundAt > -1 then
      if frReplaceAll in Options then
      begin
        SelStart := FoundAt;
        SelLength := Length(FindText);
      end
      else
      begin
        SetFocus;
        SelStart := FoundAt;
        SelLength := Length(FindText);

        GetCaretPos(P);
        P := ClientToScreen(P);
        CaretR := Rect(P.X, P.Y, P.X + 2, P.Y + 20);
        GetWindowRect(Handle, R);
        if IntersectRect(IntersectR, CaretR, R) then
          if P.Y < Screen.Height div 2 then
            Top := P.Y + 40
          else
            Top := P.Y - (R.Bottom - R.Top + 20);
      end
    else
      if not (frReplaceAll in Options) then
        Application.MessageBox('Text not found', 'Information', MB_ICONINFORMATION);
  end;    }
end;

procedure TfrmMatterNew.PopulateProjectTasks(ANProjectTempl: integer);
var
   I: integer;
begin
   // Load this scalecosts
   tvScaleCost.DataController.RecordCount := 0;
   qryProjectScaleLinksMatter.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryProjectScaleLinksMatter.ParamByName('NPROJECTTEMPL').AsInteger := ANProjectTempl;
   qryProjectScaleLinksMatter.Open;
   qryProjectScaleLinksMatter.Last;
   qryProjectScaleLinksMatter.First;
   tvScaleCost.BeginUpdate();
   tvScaleCost.DataController.RecordCount := qryProjectScaleLinksMatter.RecordCount;
   while not qryProjectScaleLinksMatter.EOF do
   begin
      tvScaleCost.DataController.Values[I, 0] := qryProjectScaleLinksMatter.FieldByName('FEE_TEMPLATE').AsString;
      tvScaleCost.DataController.Values[I, 1] := qryProjectScaleLinksMatter.FieldByName('REASON').AsString;
      tvScaleCost.DataController.Values[I, 3] := qryProjectScaleLinksMatter.FieldByName('UNIQUEID').AsInteger;
      tvScaleCost.DataController.Values[I, 4] := qryProjectScaleLinksMatter.FieldByName('NMATTER').AsInteger;

      qryProjectScaleLinksMatter.Next;
      Inc(I);
   end;
   tvScaleCost.EndUpdate;
   qryProjectScaleLinksMatter.Close;
end;


end.

