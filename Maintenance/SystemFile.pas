unit SystemFile;

interface

uses
  Windows, Messages, System.SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, Buttons, ComCtrls,
  OracleUniProvider, Uni, DBAccess, ExtCtrls, Variants, OutlookIntegrator,
  cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckBox,
  ShlObj, cxShellCommon, cxShellComboBox, cxDBShellComboBox,
  cxShellBrowserDialog, cxButtonEdit, cxHyperLinkEdit, cxPC,
  dxBar, VirtualTable, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxSpinEdit, dxBarExtItems, cxLookAndFeelPainters, cxButtons, Menus,
  cxImageComboBox, cxImage, cxMemo, cxLookAndFeels, WinINET, HttpAPP,
  cxCheckGroup, cxDBCheckGroup, cxPCdxBarPopupMenu, JvDBLookupComboEdit,
  JvExMask, JvToolEdit, JvDBLookup, MemDS, cxNavigator, JvSpin, JvDBSpinEdit,
  DBDateTimePicker,dxBarBuiltInMenu, dxDPIAwareUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  cxCalendar{, Cromis.DirectoryWatch};

const
  C_EMP = 'sys';
  C_OWNER = 'outlook';
  C_OWNERCLIENT = 'client';
  C_LIMITCLIENTCREATE = 'LimitClientCreate';
  C_MULTICLIENTGROUP = 'MultiClientGroup';
  C_SLEDATEREQUIRED = 'SLEDateRequired';
  C_OWNERMATTER = 'matter';
  C_USEEVOCHECKDIGIT = 'UseEvoCheckDigit';

  C_LIMITTOMATTERENTITYPARTNER      = 'LimitToMatterEntityPartner';
  C_LIMITTOMATTERENTITYCONTROLLER   = 'LimitToMatterEntityController';
  C_LIMITTOMATTERENTITYAUTHOR       = 'LimitToMatterEntityAuthor';
  C_LIMITTOMATTERENTITYOPERATOR     = 'LimitToMatterEntityOperator';

type
  TfrmSystemFile = class(TForm)
    qrySystemFile: TUniQuery;
    dsSystemFile: TUniDataSource;
    qrySettings: TUniQuery;
    dsSettings: TUniDataSource;
    qryLibraries: TUniQuery;
    dsLibraries: TUniDataSource;
    dsDataFieldMapping: TUniDataSource;
    qryDataFieldMapping: TUniQuery;
    qryUserStatements: TUniQuery;
    dsUserStatements: TUniDataSource;
    qryWorkflowTypes: TUniQuery;
    qryDataFieldMappingFOREIGNCODE: TStringField;
    qryDataFieldMappingROWID: TStringField;
    qryUserStatementsCODE: TStringField;
    qryUserStatementsDESCRIPTION: TStringField;
    qryUserStatementsSTATEMENTTYPE: TStringField;
    qryUserStatementsSTOREDSTATEMENT: TMemoField;
    qryUserStatementsWORKFLOWTYPE: TStringField;
    qryUserStatementsDATAFILE: TStringField;
    qryUserStatementsROWID: TStringField;
    qGroups: TUniQuery;
    qGroupsCATEGORY: TStringField;
    dsGroups: TDataSource;
    qryDataFieldMappingAXIOMCODE: TStringField;
    qDisplayNames: TUniQuery;
    dsDisplayNames: TUniDataSource;
    tbPbGroups: TUniTable;
    dsPbGroups: TUniDataSource;
    dxBarManager1: TdxBarManager;
    btnOK: TdxBarButton;
    dxBarButton2: TdxBarButton;
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    DBText1: TDBText;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    dbcbWordProc: TDBComboBox;
    cmbHelpType: TcxComboBox;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    tsLibraries: TcxTabSheet;
    lblAppName: TLabel;
    lbFileName: TLabel;
    dbeFileName: TDBEdit;
    cbAppName: TComboBox;
    Label7: TLabel;
    tabUserStatements: TcxTabSheet;
    tabFieldMapping: TcxTabSheet;
    tsOutlook: TcxTabSheet;
    Label21: TLabel;
    eCalendarFolder: TEdit;
    eOutlookForm: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    eFieldMatterNumber: TEdit;
    Label11: TLabel;
    eFieldClient: TEdit;
    Label12: TLabel;
    eFieldClientRef: TEdit;
    Label13: TLabel;
    eFieldShortDesc: TEdit;
    Label14: TLabel;
    eFieldFullDesc: TEdit;
    eFieldType: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    eFieldBranch: TEdit;
    eFieldAuthor: TEdit;
    Label17: TLabel;
    eFieldOperator: TEdit;
    Label18: TLabel;
    Label16: TLabel;
    eFieldController: TEdit;
    eFieldPartner: TEdit;
    Label15: TLabel;
    tsClients: TcxTabSheet;
    Label23: TLabel;
    
    cxLabel3: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    tsGlStructure: TcxTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cxDBGlComponentHeading: TcxDBTextEdit;
    qryGlComponents: TUniQuery;
    dsGlComponents: TUniDataSource;
    cxDBLGLComponent1: TcxDBLookupComboBox;
    vtComponentTypes: TVirtualTable;
    dsComponentTypes: TUniDataSource;
    cxDBLGLComponent2: TcxDBLookupComboBox;
    cxDBLGLComponent3: TcxDBLookupComboBox;
    cxDBLGLComponent4: TcxDBLookupComboBox;
    cxDBLGLComponent5: TcxDBLookupComboBox;
    cxDBTGLComponentSize1: TcxDBTextEdit;
    cxDBTGLComponentSize2: TcxDBTextEdit;
    cxDBTGLComponentSize3: TcxDBTextEdit;
    cxDBTGLComponentSize4: TcxDBTextEdit;
    cxDBTGLComponentSize5: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    dbgSettings: TcxGrid;
    dbgSettingsLevel1: TcxGridLevel;
    tvSettings: TcxGridDBTableView;
    tvSettingsITEM1: TcxGridDBColumn;
    tvSettingsVALUE1: TcxGridDBColumn;
    tvSettingsINTVALUE1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    dbgUserStatements: TcxGrid;
    dbgUserStatementsLevel1: TcxGridLevel;
    tvUserStatements: TcxGridDBTableView;
    tvUserStatementsCODE1: TcxGridDBColumn;
    tvUserStatementsDESCRIPTION1: TcxGridDBColumn;
    tvUserStatementsSTATEMENTTYPE1: TcxGridDBColumn;
    tvUserStatementsWORKFLOWTYPE: TcxGridDBColumn;
    dsWorkflowTypes: TUniDataSource;
    scmbEFTFilePath: TcxDBShellComboBox;
    qryCollectionTemplate: TUniQuery;
    dsCollectionTemplate: TUniDataSource;
    cxLabel7: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    seAccountInterest: TcxDBSpinEdit;
    cxLabel10: TcxLabel;
    cbClientCreate: TcxCheckBox;
    cbSLERequired: TcxCheckBox;
    ckUseCheckDigit: TcxCheckBox;
    gbMatterCarrage: TcxGroupBox;
    Label30: TLabel;
    ckCarrageLimitPartner: TcxCheckBox;
    ckCarrageLimitController: TcxCheckBox;
    ckCarrageLimitAuthor: TcxCheckBox;
    ckCarrageLimitOperator: TcxCheckBox;
    cbUseOutlook: TcxCheckBox;
    cbDefaultCalendar: TcxCheckBox;
    cbAppendMatterType: TcxCheckBox;
    cbShowNetTrust: TcxDBCheckBox;
    dxBarStatic1: TdxBarStatic;
    cxLabel11: TcxLabel;
    cxDBCLStartFinYear: TcxDBLookupComboBox;
    vtMonth: TVirtualTable;
    dsMonth: TUniDataSource;
    vtMonthMonth: TIntegerField;
    vtMonthDescr: TStringField;
    Label22: TLabel;
    cbCheckTrustODraw: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    dlFile: TOpenDialog;
    dbgDataFieldMapping: TcxGrid;
    dbgDataFieldMappingLevel1: TcxGridLevel;
    tvDataFieldMapping: TcxGridDBTableView;
    tvDataFieldMappingAXIOMCODE: TcxGridDBColumn;
    tvDataFieldMappingFOREIGNCODE: TcxGridDBColumn;
    tvDataFieldMappingROWID: TcxGridDBColumn;
    dlDocTemplate: TcxShellBrowserDialog;
    tabEmails: TcxTabSheet;
    Label34: TLabel;
    cmbEmailFormat: TcxDBComboBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label35: TLabel;
    btnAddEmailFooter: TcxButton;
    tabDocuments: TcxTabSheet;
    cxLabel12: TcxLabel;
    btnedtDefaultDocDir: TcxDBButtonEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxLabel13: TcxLabel;
    lblEmailDefault: TLabel;
    cmbEmail: TcxDBImageComboBox;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxLabel14: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cbUseAxiomCrysltalViewer: TcxDBCheckBox;
    cxLabel9: TcxLabel;
    scmbCrystalPath: TcxDBShellComboBox;
    cxDBCostCentreAccounting: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cmbPrependCheqReq: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxLabel16: TcxLabel;
    sedTTOClearanceDays: TcxDBSpinEdit;
    cxDBCheckBox11: TcxDBCheckBox;
    cxLabel18: TcxLabel;
    edtHelpPath: TcxDBButtonEdit;
    btnedtISYSIndex: TcxDBButtonEdit;
    OpenDialog: TOpenDialog;
    cxLabel19: TcxLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxLabel20: TcxLabel;
    cxDBImage1: TcxDBImage;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    Label36: TLabel;
    tsOther2: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    grdReceiptClerance: TcxGrid;
    tvReceiptClerance: TcxGridTableView;
    tvReceiptCleranceDescr: TcxGridColumn;
    tvReceiptCleranceDays: TcxGridColumn;
    tvReceiptCleranceCode: TcxGridColumn;
    cbEnforceClientPack: TcxDBCheckBox;
    cxDBMemo1: TcxDBMemo;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel23: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    bstLastSQL: TdxBarStatic;
    bstPatchDate: TdxBarStatic;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel25: TcxLabel;
    qryFeeBasis: TUniQuery;
    dsFeeBasis: TUniDataSource;
    cxLabel26: TcxLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    tabWorkflow: TcxTabSheet;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    qryDataForm: TUniQuery;
    dsDataForm: TUniDataSource;
    qrySundries: TUniQuery;
    dsSundries: TUniDataSource;
    cxGroupBox4: TcxGroupBox;
    Label37: TLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    Label38: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxLabel1: TcxLabel;
    cmbWorkflowTaskDefault: TcxDBLookupComboBox;
    cxLabel15: TcxLabel;
    cmbMatterWorkFlow: TcxDBLookupComboBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxGroupBox5: TcxGroupBox;
    Label39: TLabel;
    cmbCategory: TcxDBLookupComboBox;
    cmbClassification: TcxDBLookupComboBox;
    Label40: TLabel;
    qryPRECCATEGORY: TUniQuery;
    dsPRECCATEGORY: TUniDataSource;
    qryPRECCLASSIFICATION: TUniQuery;
    dsPRECCLASSIFICATION: TUniDataSource;
    cxTabSheet2: TcxTabSheet;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxLabel17: TcxLabel;
    sedBPAY_CODE_LENGTH: TcxDBSpinEdit;
    dbchkPreassignBillNo: TcxDBCheckBox;
    cxDBRadioGroup1: TcxDBRadioGroup;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    cxDBCheckBox19: TcxDBCheckBox;
    dblClientPhonebookGroup: TcxLookupComboBox;
    dblMultiClientGroup: TcxLookupComboBox;
    cxDBCheckBox21: TcxDBCheckBox;
    tabMatterDefaults: TcxTabSheet;
    tvDBReceiptClerance: TcxGridDBTableView;
    cbArchiveUnclosed: TcxDBCheckBox;
    cbDisallowClose: TcxDBCheckBox;
    cbWarnOnNoFees: TcxDBCheckBox;
    cbAllowClosureWithUnPresCheques: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    grdReceiptCleranceLevel1: TcxGridLevel;
    qryBankClearance: TUniQuery;
    dsBankClearance: TUniDataSource;
    tvDBReceiptCleranceCODE: TcxGridDBColumn;
    tvDBReceiptCleranceDESCRIPTION: TcxGridDBColumn;
    tvDBReceiptCleranceCLEARANCE_DAYS: TcxGridDBColumn;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBCheckBox24: TcxDBCheckBox;
    cxTabSheet3: TcxTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Button1: TButton;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label44: TLabel;
    DBEdit15: TDBEdit;
    Panel1: TPanel;
    Label45: TLabel;
    cxDBCheckBox25: TcxDBCheckBox;
    cxGroupBox6: TcxGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxGroupBox7: TcxGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxGroupBox8: TcxGroupBox;
    grdBillEmailTemplate: TcxGrid;
    tvBillEmailTemplate: TcxGridDBTableView;
    tvBillEmailTemplateID: TcxGridDBColumn;
    tvBillEmailTemplateDESCR: TcxGridDBColumn;
    tvBillEmailTemplateBODY_TEXT: TcxGridDBColumn;
    lvBillEmailTemplate: TcxGridLevel;
    cxDBCheckBox32: TcxDBCheckBox;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    Label50: TLabel;
    qryMatterStatus: TUniQuery;
    dsMatterStatus: TUniDataSource;
    cxDBCheckBox33: TcxDBCheckBox;
    ckHideDX: TcxDBCheckBox;
    chkHideDOBPanel: TcxDBCheckBox;
    cxGroupBox9: TcxGroupBox;
    cxLabel5: TcxLabel;
    DBEdit10: TDBEdit;
    cxLabel29: TcxLabel;
    DBEdit11: TDBEdit;
    cxDBCheckBox34: TcxDBCheckBox;
    cxTabSheet4: TcxTabSheet;
    cxDBCheckBox31: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBComboBox2: TcxDBComboBox;
    Label52: TLabel;
    cxDBCheckBox35: TcxDBCheckBox;
    cxGroupBox10: TcxGroupBox;
    Label51: TLabel;
    cxDBSpinEdit5: TcxDBSpinEdit;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox26: TcxDBCheckBox;
    cxDBCheckBox36: TcxDBCheckBox;
    cxDBCheckBox37: TcxDBCheckBox;
    cxDBCheckBox42: TcxDBCheckBox;
    cxGroupBox11: TcxGroupBox;
    cxDBCheckBox39: TcxDBCheckBox;
    cxDBCheckBox40: TcxDBCheckBox;
    cxDBCheckBox41: TcxDBCheckBox;
    cxDBCheckBox43: TcxDBCheckBox;
    cxDBCheckBox44: TcxDBCheckBox;
    cxDBCheckBox45: TcxDBCheckBox;
    cxDBCheckBox46: TcxDBCheckBox;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel30: TcxLabel;
    cxDBCheckBox47: TcxDBCheckBox;
    Label53: TLabel;
    Label54: TLabel;
    JvDBLookupComboEdit1: TJvDBLookupComboEdit;
    JvDBLookupComboEdit2: TJvDBLookupComboEdit;
    Label55: TLabel;
    DBCheckBox1: TDBCheckBox;
    cxGroupBox12: TcxGroupBox;
    grpFeeAlertRec: TcxDBCheckGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    cxLabel31: TcxLabel;
    Label56: TLabel;
    DBEdit16: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label57: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBCheckBox48: TcxDBCheckBox;
    DBEdit17: TDBEdit;
    JvDBSpinEdit1: TJvDBSpinEdit;
    Label58: TLabel;
    Label59: TLabel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel32: TcxLabel;
    scmbControlledMoneyFilePath: TcxDBShellComboBox;
    cxDBCheckBox49: TcxDBCheckBox;
    cxDBCheckBox50: TcxDBCheckBox;
    cxDBCheckBox51: TcxDBCheckBox;
    cxDBRadioGroup2: TcxDBRadioGroup;
    tvDBReceiptCleranceBANK_DEPOSIT: TcxGridDBColumn;
    btnLoadData: TcxButton;
    cxDBCheckBox52: TcxDBCheckBox;
    chkDisableClientReference: TcxDBCheckBox;
    cxDBCheckBox53: TcxDBCheckBox;
    cxDBCheckBox54: TcxDBCheckBox;
    cxDBCheckBox55: TcxDBCheckBox;
    cxDBCheckBox56: TcxDBCheckBox;
    Label62: TLabel;
    DBEdit20: TDBEdit;
    cxDBCheckBox38: TcxDBCheckBox;
    cxDBCheckBox57: TcxDBCheckBox;
    Label63: TLabel;
    btneditSanDir: TcxDBButtonEdit;
    DBCheckBox6: TDBCheckBox;
    cxTabSheet5: TcxTabSheet;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    btnSave: TdxBarButton;
    DBEdit21: TDBEdit;
    Label70: TLabel;
    chkSaveCheqReaasPDF: TcxDBCheckBox;
    cxDBCheckBox59: TcxDBCheckBox;
    Label71: TLabel;
    Label72: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qryFeeRate: TUniQuery;
    dsFeeRate: TUniDataSource;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label73: TLabel;
    btnCreditorSearch: TBitBtn;
    edtCreditor: TEdit;
    Label74: TLabel;
    DBEdit26: TDBEdit;
    cxDBCheckBox61: TcxDBCheckBox;
    cxDBCheckBox62: TcxDBCheckBox;
    cxLabel33: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBCheckBox63: TcxDBCheckBox;
    cxDBCheckBox64: TcxDBCheckBox;
    chkPayCredFromTrust: TcxDBCheckBox;
    DBEdit27: TDBEdit;
    Label75: TLabel;
    cxDBCheckBox58: TcxDBCheckBox;
    Label76: TLabel;
    DBEdit28: TDBEdit;
    Label77: TLabel;
    cxDBCheckBox65: TcxDBCheckBox;
    cxDBMemo3: TcxDBMemo;
    cxLabel34: TcxLabel;
    cxDBCheckBox66: TcxDBCheckBox;
    cxLabel35: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBCheckBox67: TcxDBCheckBox;
    cxDBCheckBox68: TcxDBCheckBox;
    cxDBCheckBox69: TcxDBCheckBox;
    cxDBCheckBox70: TcxDBCheckBox;
    cxDBCheckBox71: TcxDBCheckBox;
    cxDBCheckBox72: TcxDBCheckBox;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxDBSpinEdit7: TcxDBSpinEdit;
    cxLabel38: TcxLabel;
    cxDBSpinEdit8: TcxDBSpinEdit;
    cxLabel39: TcxLabel;
    cxDBSpinEdit9: TcxDBSpinEdit;
    cxDBSpinEdit6: TcxDBSpinEdit;
    cxLabel40: TcxLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxLabel40a: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxLabel41: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    popMenuBillMacroList: TPopupMenu;
    DBCheckBox7: TDBCheckBox;
    cxDBCheckBox73: TcxDBCheckBox;
    cxDBCheckBox74: TcxDBCheckBox;
    cxDBDateEdit1: TcxDBDateEdit;
    Label78: TLabel;
    DBEdit29: TDBEdit;
    cxDBComboBox3: TcxDBComboBox;
    cxDBComboBox4: TcxDBComboBox;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxDBCheckBox75: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cbAppNameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrySettingsBeforeInsert(DataSet: TDataSet);
    procedure pcMainChange(Sender: TObject);
    procedure pcMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure dbgUserStatementsDblClick(Sender: TObject);
    procedure cbUseOutlookClick(Sender: TObject);
    procedure cbDefaultCalendarClick(Sender: TObject);
    procedure cbClientCreateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbchkPreassignBillNoPropertiesChange(Sender: TObject);
    procedure cmbHelpTypePropertiesChange(Sender: TObject);
    procedure pcMainPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure cxDBCostCentreAccountingPropertiesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAddEmailFooterClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbUseAxiomCrysltalViewerClick(Sender: TObject);
    procedure edtHelpPathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnedtISYSIndexPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btnLoadDataClick(Sender: TObject);
    procedure tsOther2Show(Sender: TObject);
    procedure tsOther2Exit(Sender: TObject);
    procedure tvReceiptCleranceDataControllerDataChanged(Sender: TObject);
    procedure tvReceiptCleranceDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1BODY_TEXTPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure btneditSanDirPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnCreditorSearchClick(Sender: TObject);
    procedure qrySystemFileAfterOpen(DataSet: TDataSet);
    procedure popMenuMatterMacroListPopup(Sender: TObject);
    procedure popMenuBillMacroListPopup(Sender: TObject);
  private
    { Private declarations }
    ClearanceList: TStringList;
    FSaved: boolean;
    procedure UpdateSettings();

    procedure LoadOutlookSettings();
    function SaveOutlookSettings(): Boolean;

    procedure LoadClientSettings();
    function SaveClientSettings(): Boolean;

    procedure setNextMatterEdit;
    procedure setDisplayNames;
    procedure showGlComponentTab;
    function  checkGlStructure : Boolean;
    procedure LoadClearanceDays(AFile: TStrings);
    function SaveClearanceDays: boolean;
    procedure MenuMatterItemClick(Sender: TObject);
    procedure MenuBillItemClick(Sender: TObject);

  public
    { Public declarations }
  end;

var
  frmSystemFile: TfrmSystemFile;

implementation

{$R *.DFM}

uses
  AxiomData, UserStatementEditor, MiscFunc, Desktop, glComponentUtil,
  cxRichEdit, citFunc, CreditorSearch
  {, GenEditorHTML}
  ;

procedure TfrmSystemFile.UpdateSettings();
begin
  if qryLibraries.Modified then
    // this is no really the way to do it but it works
      qryLibraries.Post;
end;

procedure TfrmSystemFile.FormClose(Sender: TObject; var Action: TCloseAction);
begin 
  qryFeeBasis.Close;
  qrySystemFile.Close;
  qrySettings.Close;
  qryDataForm.Close;
  qrySundries.Close;
  qryPRECCATEGORY.Close;
  qryPRECCLASSIFICATION.Close;
  qryMatterStatus.Close;
  dmAxiom.qryRB_Items.Close;
  qryFeeRate.Close;

  RemoveFromDesktop(Self);
//  Action := caFree;
end;

function  TfrmSystemFile.checkGlStructure : Boolean;
var
   inumberComponents,iloop,iTmpFieldValue : integer;
   sTmpFieldName,sTmpFieldValue : String;
begin
   checkGlStructure := true;
   // if the datasource is not insert then we are ok
   if (qryGlComponents.State <> dsInsert) or (not qryGlComponents.active) then
        exit;

   inumberComponents := 0;
   // calculate the number of components
   for iloop := 1 to 5 do
   begin
      sTmpFieldName := 'COMPONENT_TYPE_' + intToStr(iloop);
      sTmpFieldValue := qryGlComponents.FieldByName(sTmpFieldName).AsString;
      sTmpFieldName := 'COMPONENT_SIZE_' + intToStr(iloop);
      iTmpFieldValue := qryGlComponents.FieldByName(sTmpFieldName).AsInteger;
      if sTmpFieldValue <> '' then
      begin
          inumberComponents := iloop;

          if iTmpFieldValue = 0 then
          begin
              checkGlStructure := false;
              MessageDlg('Each Component must have a size specified', mtWarning, [mbOK], 0);
              exit;
          end;
      end;
   end;
   qryGlComponents.FieldByName('COMPONENTS_USED').AsInteger := inumberComponents;
end;

procedure TfrmSystemFile.btnOKClick(Sender: TObject);
begin
//  btnOk.SetFocus;
   if(not SaveOutlookSettings()) then
      Exit;

   if(not SaveClientSettings()) then
      Exit;

   if (not checkGlStructure()) then
      Exit;
   if (not SaveClearanceDays) then
      Exit;

   UpdateSettings();

   if qrySystemFile.State in [dsEdit,dsInsert] then
      qrySystemFile.ApplyUpdates; //  Post;

   if qryDataFieldMapping.Modified then
      qryDataFieldMapping.Post;

   if qryUserStatements.Modified then
      qryUserStatements.Post;

   if qryGlComponents.Modified and cxDBCostCentreAccounting.checked then
      qryGlComponents.post;

{   if (SystemString('INFOTRACK_URL') <> '') then
   begin
      frmDesktop.FDirectoryWatch.Directory := SystemString('INFOTRACK_STAGING_FLDR');
      frmDesktop.FDirectoryWatch.WatchSubTree := False;
      frmDesktop.FDirectoryWatch.Start;
   end;}

   if TdxBarButton(Sender).Name = 'btnOK' then
      Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmSystemFile.btnCancelClick(Sender: TObject);
begin
  if qryDataFieldMapping.Modified then
  begin
    if MessageDlg('Are you sure you want to cancel updates?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      qryDataFieldMapping.Cancel
    else
      Exit;
  end;

  if qryUserStatements.Modified then
  begin
    if MessageDlg('Are you sure you want to cancel updates?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      qryUserStatements.Cancel
    else
      Exit;
  end;
  Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmSystemFile.btnCreditorSearchClick(Sender: TObject);
begin
   if not FormExists(frmCreditorSearch) then
      Application.CreateForm(TfrmCreditorSearch, frmCreditorSearch);
   if (frmCreditorSearch.ShowModal = mrOk) then
   begin
      if qrySystemFile.State <> dsEdit then
         qrySystemFile.Edit;
      qrySystemFile.FieldByName('INFOTRACK_NCREDITOR').AsInteger := frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger;
      edtCreditor.Text := frmCreditorSearch.qryCreditors.FieldByName('NAME').AsString;
   end;
end;

procedure TfrmSystemFile.cbAppNameChange(Sender: TObject);
begin
  UpdateSettings();

  qryLibraries.Locate('EMP;OWNER;ITEM', VarArrayOf(['sys', 'APPLICATION', cbAppName.Text]), []);
  with qrySettings do
  begin
    Close;
    ParamByName('OWNER').AsString := cbAppName.Text;
    Open;
  end;
end;

procedure TfrmSystemFile.FormShow(Sender: TObject);
begin
  qrySystemFile.Open;
  qryDataForm.Open;
  dmAxiom.qryRB_Items.Open;

  tbPbGroups.Open;
  LoadOutlookSettings();
  LoadClientSettings();

  setNextMatterEdit;

  qDisplayNames.Close;
  qDisplayNames.ParamByName('entity').AsString := dmAxiom.Entity;
  qDisplayNames.Open;

  if (qrySystemFile.FieldByName('INFOTRACK_NCREDITOR').IsNull = False) then
  begin
     with dmAxiom.qryTmp do
     begin
        Close;
        SQL.Text := 'select name from phonebook where ncreditor = :ncreditor';
        ParamByName('ncreditor').AsInteger := qrySystemFile.FieldByName('INFOTRACK_NCREDITOR').AsInteger;
        Open;
        edtCreditor.Text := FieldByName('NAME').AsString;
        Close;
     end;
  end;

  with qryLibraries do
  begin
    Close;
    Open;
    while not(EOF) do
    begin
      cbAppName.Items.Add(FieldByName('ITEM').AsString);
      Next;
    end;
    cbAppName.ItemIndex := 0;
  end;
  qryLibraries.Locate('EMP;OWNER;ITEM', VarArrayOf(['sys', 'APPLICATION', cbAppName.Text]), []);

  with qrySettings do
  begin
    Close;
    ParamByName('OWNER').AsString := cbAppName.Text;
    Open;
  end;

  with qryWorkflowTypes do
  begin
    Open;
//    TcxComboBox(tvUserStatementsWORKFLOWTYPE).Properties.Items.Clear;
//    dbgUserStatements.Columns.Items[3].PickList.Clear;
//    while not(EOF) do
//    begin
//      TcxComboBox(tvUserStatementsWORKFLOWTYPE).Properties.Items.Add(FieldByName('CODE').AsString);
//      dbgUserStatements.Columns.Items[3].PickList.Add(FieldByName('CODE').AsString);
//      Next;
//    end;
//    Close;
  end;

 { if qrySystemFile.Active = True then
    if qrySystemFile.FieldByName('PREASSIGN_BILL_NO').AsString = 'N' then
      dbchkPreassignBillNo.Checked := False
    else
      dbchkPreassignBillNo.Checked := True; }

  cmbHelpType.ItemIndex := dmAxiom.HelpType;

  // do we enable the glComponents tab
  showGlComponentTab;

  // check to see if there is an entry in the
  // gl components table
  qryGlComponents.open;
  qryGlComponents.First;
  cxDBCostCentreAccounting.Enabled := qryGlComponents.Eof;
  qryGlComponents.close;

  cxDBCLStartFinYear.Enabled := (qrySystemFile.FieldByName('FinYear_start_month').AsInteger = 0);
  scmbCrystalPath.Enabled := (SystemString('USE_AXIOM_CR_VIEWER') = 'N');
  bstLastSQL.Caption := 'Patch Version: ' + qrySystemFile.FieldByName('patch_version').AsString;
  bstPatchDate.Caption := 'Patch Date: ' + qrySystemFile.FieldByName('patch_date').AsString;
end;

procedure TfrmSystemFile.qrySettingsBeforeInsert(DataSet: TDataSet);
begin
  qrySettings.Cancel;
end;

procedure TfrmSystemFile.qrySystemFileAfterOpen(DataSet: TDataSet);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'select name from phonebook where ncreditor = :ncreditor';
      ParamByName('ncreditor').AsInteger := DataSet.FieldByName('INFOTRACK_NCREDITOR').AsInteger;
      Open;
      edtCreditor.Text := FieldByName('NAME').AsString;
      Close;
   end;
end;

procedure TfrmSystemFile.pcMainChange(Sender: TObject);
var     iloop : Integer;
begin
   if pcMain.ActivePage = tabFieldMapping then
     qryDataFieldMapping.Open
   else if pcMain.ActivePage = tabUserStatements then
     qryUserStatements.Open
   else if pcMain.ActivePage = tsClients then
     qryCollectionTemplate.Open;

   qryGlComponents.close;
   vtComponentTypes.Close;

   if pcMain.ActivePage = tsGlStructure then
   begin
      // populate the virtual tables
      vtComponentTypes.Open;
      if vtComponentTypes.Eof then
      for iloop := 0 to  (length(cntAccountTypes)-1) do
      begin
         vtComponentTypes.Insert;
         vtComponentTypes.fieldByName('type').AsString := cntAccountTypes[iloop];
         vtComponentTypes.fieldByName('heading').AsString := cntAccountTypeHeadings[iloop];
      end;

      vtComponentTypes.Active := true;
      qryGlComponents.open;
      // if there is data in the gl_components table
      // then we must mark this dataset read only
      qryGlComponents.First;

      if not qryGlComponents.Eof and not (qryGlComponents.State = dsInsert) then
      begin
         // we cannot edit this table, except the heading.
         cxDBLGLComponent1.Enabled := false;
         cxDBLGLComponent2.Enabled := false;
         cxDBLGLComponent3.Enabled := false;
         cxDBLGLComponent4.Enabled := false;
         cxDBLGLComponent5.Enabled := false;
         cxDBTGLComponentSize1.Enabled := false;
         cxDBTGLComponentSize2.Enabled := false;
         cxDBTGLComponentSize3.Enabled := false;
         cxDBTGLComponentSize4.Enabled := false;
         cxDBTGLComponentSize5.Enabled := false;
      end;
   end;
end;

procedure TfrmSystemFile.pcMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if pcMain.ActivePage = tabFieldMapping then
    qryDataFieldMapping.Close
  else if pcMain.ActivePage = tabUserStatements then
    qryUserStatements.Close;
end;

procedure TfrmSystemFile.dbgUserStatementsDblClick(Sender: TObject);
begin
  if qryUserStatements.Modified then
    qryUserStatements.Post;
  with TfrmUserStatementEditor.Create(Self) do
    ShowStatement(Self.qryUserStatements.FieldByName('CODE').AsString);
  qryUserStatements.Refresh;
end;

procedure TfrmSystemFile.cbUseOutlookClick(Sender: TObject);
begin
  cbDefaultCalendar.Enabled := cbUseOutlook.Checked;
  eOutlookForm.Enabled := cbUseOutlook.Checked;
  eCalendarFolder.Enabled := cbUseOutlook.Checked and (not cbDefaultCalendar.Checked);
  cbAppendMatterType.Enabled := eCalendarFolder.Enabled;
  eFieldMatterNumber.Enabled := cbUseOutlook.Checked;
  eFieldClient.Enabled := cbUseOutlook.Checked;
  eFieldClientRef.Enabled := cbUseOutlook.Checked;
  eFieldShortDesc.Enabled := cbUseOutlook.Checked;
  eFieldFullDesc.Enabled := cbUseOutlook.Checked;
  eFieldType.Enabled := cbUseOutlook.Checked;
  eFieldPartner.Enabled := cbUseOutlook.Checked;
  eFieldController.Enabled := cbUseOutlook.Checked;
  eFieldOperator.Enabled := cbUseOutlook.Checked;
  eFieldAuthor.Enabled := cbUseOutlook.Checked;
  eFieldBranch.Enabled := cbUseOutlook.Checked;
end;

procedure TfrmSystemFile.cbDefaultCalendarClick(Sender: TObject);
begin
  eCalendarFolder.Enabled := cbUseOutlook.Checked and (not cbDefaultCalendar.Checked);
  cbAppendMatterType.Enabled := eCalendarFolder.Enabled;
end;

procedure TfrmSystemFile.LoadOutlookSettings;
begin
  cbUseOutlook.Checked       := SettingLoadBoolean(C_EMP,C_OWNER,'UseOutlookDiary');
  cbDefaultCalendar.Checked  := SettingLoadBoolean(C_EMP,C_OWNER,'UseDefaultCalendar');
  cbAppendMatterType.Checked := SettingLoadBoolean(C_EMP,C_OWNER,'AppendMatterType');

  eOutlookForm.Text        := SettingLoadString(C_EMP,C_OWNER,'OutlookForm');
  eCalendarFolder.Text     := SettingLoadString(C_EMP,C_OWNER,'CalendarFolder');
  eFieldMatterNumber.Text  := SettingLoadString(C_EMP,C_OWNER,'FieldMatterNumber');
  eFieldClient.Text        := SettingLoadString(C_EMP,C_OWNER,'FieldClient');
  eFieldClientRef.Text     := SettingLoadString(C_EMP,C_OWNER,'FieldClientRef');
  eFieldShortDesc.Text     := SettingLoadString(C_EMP,C_OWNER,'FieldShortDesc');
  eFieldFullDesc.Text      := SettingLoadString(C_EMP,C_OWNER,'FieldFullDesc');
  eFieldType.Text          := SettingLoadString(C_EMP,C_OWNER,'FieldType');
  eFieldPartner.Text       := SettingLoadString(C_EMP,C_OWNER,'FieldPartner');
  eFieldController.Text    := SettingLoadString(C_EMP,C_OWNER,'FieldController');
  eFieldOperator.Text      := SettingLoadString(C_EMP,C_OWNER,'FieldOperator');
  eFieldAuthor.Text        := SettingLoadString(C_EMP,C_OWNER,'FieldAuthor');
  eFieldBranch.Text        := SettingLoadString(C_EMP,C_OWNER,'FieldBranch');

  cbUseOutlookClick(cbUseOutlook);
end;

function TfrmSystemFile.SaveOutlookSettings: Boolean;
var
  LOutlookIntegrator: TOutlookIntegrator;
begin
  // check settings are all filled in..
  Result := False;
  if(cbUseOutlook.Checked) then
  begin
    if((not cbDefaultCalendar.Checked) and (eCalendarFolder.Text = '')) then
    begin
      MessageDlg('When Use Default Calendar is not checked a Calendar Folder '#13#10'must be specified.', mtWarning, [mbOK], 0);
      pcMain.ActivePage := tsOutlook;
      ActiveControl := eCalendarFolder;
      Exit;
    end;
  end;

  SettingSave(C_EMP,C_OWNER,'UseOutlookDiary',   cbUseOutlook.Checked     );
  SettingSave(C_EMP,C_OWNER,'UseDefaultCalendar',cbDefaultCalendar.Checked);
  SettingSave(C_EMP,C_OWNER,'AppendMatterType',  cbAppendMatterType.Checked);

  SettingSave(C_EMP,C_OWNER,'OutlookForm',       eOutlookForm.Text      );
  SettingSave(C_EMP,C_OWNER,'CalendarFolder',    eCalendarFolder.Text   );
  SettingSave(C_EMP,C_OWNER,'FieldMatterNumber', eFieldMatterNumber.Text);
  SettingSave(C_EMP,C_OWNER,'FieldClient',       eFieldClient.Text      );
  SettingSave(C_EMP,C_OWNER,'FieldClientRef',    eFieldClientRef.Text   );
  SettingSave(C_EMP,C_OWNER,'FieldShortDesc',    eFieldShortDesc.Text   );
  SettingSave(C_EMP,C_OWNER,'FieldFullDesc',     eFieldFullDesc.Text    );
  SettingSave(C_EMP,C_OWNER,'FieldType',         eFieldType.Text        );
  SettingSave(C_EMP,C_OWNER,'FieldPartner',      eFieldPartner.Text     );
  SettingSave(C_EMP,C_OWNER,'FieldController',   eFieldController.Text  );
  SettingSave(C_EMP,C_OWNER,'FieldOperator',     eFieldOperator.Text    );
  SettingSave(C_EMP,C_OWNER,'FieldAuthor',       eFieldAuthor.Text      );
  SettingSave(C_EMP,C_OWNER,'FieldBranch',       eFieldBranch.Text      );

  LOutlookIntegrator := TOutlookIntegrator.Create();
  LOutlookIntegrator.ReLoadSettings();
  FreeAndNil(LOutlookIntegrator);

  Result := True;
end;

procedure TfrmSystemFile.setNextMatterEdit;
begin
  if (getSourceForNextMatter = 'ENTITY') then
    begin
      DBEdit1.Enabled := FALSE;
      DBEdit1.Color := clBtnFace;
      DBEdit1.Hint := 'The entity is being used to hold the next matter number';
    end;    //  end if
end;

procedure TfrmSystemFile.LoadClientSettings;
var
  LValue: String;
begin
  qGroups.Open();
  if(SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) then
  begin
    LValue := SettingLoadString(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE);
    cbClientCreate.Checked := LValue <> '';


    if(LValue <> '') then
      dblClientPhonebookGroup.EditValue := LValue
  end else
    cbClientCreate.Checked := False;
  dblClientPhonebookGroup.Enabled := cbClientCreate.Checked;

  if(SettingExists(C_EMP,C_OWNERCLIENT,C_MULTICLIENTGROUP)) then
  begin
    LValue := SettingLoadString(C_EMP,C_OWNERCLIENT,C_MULTICLIENTGROUP);
    if(LValue <> '') then
      dblMultiClientGroup.EditValue := LValue
    else
      dblMultiClientGroup.Clear();
  end;

  if(SettingExists(C_EMP,C_OWNERMATTER,C_SLEDATEREQUIRED)) then
    cbSLERequired.Checked := SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_SLEDATEREQUIRED);
  if(SettingExists(C_EMP,C_OWNERMATTER,C_USEEVOCHECKDIGIT)) then
    ckUseCheckDigit.Checked := SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_USEEVOCHECKDIGIT);

  if(SettingExists(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYPARTNER)) then
    ckCarrageLimitPartner.Checked := SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYPARTNER);
  if(SettingExists(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYCONTROLLER)) then
    ckCarrageLimitController.Checked := SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYCONTROLLER);
  if(SettingExists(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYAUTHOR)) then
    ckCarrageLimitAuthor.Checked := SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYAUTHOR);
  if(SettingExists(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYOPERATOR)) then
    ckCarrageLimitOperator.Checked := SettingLoadBoolean(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYOPERATOR);
end;

function TfrmSystemFile.SaveClientSettings: Boolean;
begin
  Result := False;

  SettingSave(C_EMP,C_OWNERMATTER,C_SLEDATEREQUIRED, cbSLERequired.Checked);
  SettingSave(C_EMP,C_OWNERMATTER,C_USEEVOCHECKDIGIT, ckUseCheckDigit.Checked);

  SettingSave(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYPARTNER,ckCarrageLimitPartner.Checked);
  SettingSave(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYCONTROLLER,ckCarrageLimitController.Checked);
  SettingSave(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYAUTHOR,ckCarrageLimitAuthor.Checked);
  SettingSave(C_EMP,C_OWNERMATTER,C_LIMITTOMATTERENTITYOPERATOR,ckCarrageLimitOperator.Checked);

  if(cbClientCreate.Checked) then
  begin
    if(VarIsNull(dblClientPhonebookGroup.EditValue)) then
    begin
      MessageDlg('Please select the phone book group to limit client creation to.', mtWarning, [mbOK], 0);
      pcMain.ActivePage := tsClients;
      Exit;
    end;

    SettingSave(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE,VarToStr(dblClientPhonebookGroup.EditValue));
  end else
    SettingDelete(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE);

  if(VarIsNull(dblMultiClientGroup.EditValue)) then
    SettingDelete(C_EMP,C_OWNERCLIENT,C_MULTICLIENTGROUP)
  else
    SettingSave(C_EMP,C_OWNERCLIENT,C_MULTICLIENTGROUP,VarToStr(dblMultiClientGroup.EditValue));

  Result := True;
end;

procedure TfrmSystemFile.cbClientCreateClick(Sender: TObject);
begin
  dblClientPhonebookGroup.Enabled := cbClientCreate.Checked;
end;

procedure TfrmSystemFile.FormCreate(Sender: TObject);
var
   iloop : integer;
   imaxLength : integer;
begin
   setDisplayNames;
   FSaved := False;
   dxBarStatic1.Caption := 'Last SQL Patch executed: ' + dmAxiom.Patch_Number;
   qryFeeBasis.Open;
   qrySundries.Open;
   qryPRECCATEGORY.Open;
   qryPRECCLASSIFICATION.Open;
   qryMatterStatus.Open;
   qryFeeRate.Open;

   grpFeeAlertRec.Properties.Items.Items[0].Caption := getLabelValue('MATTER','PARTNER',imaxLength, 'Partner');
   grpFeeAlertRec.Properties.Items.Items[1].Caption := getLabelValue('MATTER','AUTHOR',imaxLength, 'Author');
   grpFeeAlertRec.Properties.Items.Items[2].Caption := getLabelValue('MATTER','OPERATOR',imaxLength, 'Operator');
   grpFeeAlertRec.Properties.Items.Items[3].Caption := getLabelValue('MATTER','CONTROLLER',imaxLength, 'Controller');
  // Ensure we always open up on this page.
   pcMain.ActivePage := tsGeneral;
end;

procedure TfrmSystemFile.setDisplayNames;
var
   imaxLength : integer;
begin
  imaxLength := 0;

  ckCarrageLimitPartner.Caption := getLabelValue('MATTER','PARTNER',imaxLength);
  ckCarrageLimitOperator.Caption := getLabelValue('MATTER','OPERATOR',imaxLength);
  ckCarrageLimitAuthor.Caption := getLabelValue('MATTER','AUTHOR',imaxLength);
  ckCarrageLimitController.Caption := getLabelValue('MATTER','CONTROLLER',imaxLength);
end;


procedure TfrmSystemFile.dbchkPreassignBillNoPropertiesChange(
  Sender: TObject);
begin
{  if not (qrySystemFile.State = dsEdit) then
    qrySystemFile.Edit;

  if dbchkPreassignBillNo.Checked then
    qrySystemFile.FieldByName('PREASSIGN_BILL_NO').AsString := 'Y'
  else
    qrySystemFile.FieldByName('PREASSIGN_BILL_NO').AsString := 'N';   }
end;

procedure TfrmSystemFile.cmbHelpTypePropertiesChange(Sender: TObject);
begin
//   dmAxiom.HelpType := cmbHelpType.ItemIndex;
//   dmAxiom.HelpRouter1.HelpType := ehshelprouter.THelpType(dmAxiom.HelpType);
end;

procedure TfrmSystemFile.pcMainPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
   if pcMain.ActivePage = tabFieldMapping then
    qryDataFieldMapping.Close
  else if pcMain.ActivePage = tabUserStatements then
    qryUserStatements.Close;
end;

procedure TfrmSystemFile.popMenuBillMacroListPopup(Sender: TObject);
var
   i: integer;
   Item: TMenuItem;
begin
   (Sender as TPopupMenu).Items.Clear;
   for I := 0 to Length(EmailBillMacrosDescr)-1 do
   begin
      Item := TMenuItem.Create((Sender as TPopupMenu));
      Item.Caption := EmailBillMacrosDescr[i];
      Item.OnClick := MenuBillItemClick;

      (Sender as TPopupMenu).Items.Add(Item);
   end;
end;

procedure TfrmSystemFile.popMenuMatterMacroListPopup(Sender: TObject);
var
   i: integer;
   Item: TMenuItem;
begin
   (Sender as TPopupMenu).Items.Clear;
   for I := 0 to Length(EmailMatterMacrosDescr)-1 do
   begin
      Item := TMenuItem.Create((Sender as TPopupMenu));
      Item.Caption := EmailMatterMacrosDescr[i];
      Item.OnClick := MenuMatterItemClick;

      (Sender as TPopupMenu).Items.Add(Item);
   end;
end;

procedure TfrmSystemFile.MenuMatterItemClick(Sender: TObject);
var
   Caller: TObject;
begin
   Caller := ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  (Caller as TcxDBTextEdit).Text := (Caller as TcxDBTextEdit).Text +
      EmailMatterMacrosValues[(Sender as TMenuItem).MenuIndex];
end;

procedure TfrmSystemFile.MenuBillItemClick(Sender: TObject);
var
   Caller: TObject;
begin
   Caller := ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  (Caller as TcxDBTextEdit).Text := (Caller as TcxDBTextEdit).Text +
      EmailBillMacrosValues[(Sender as TMenuItem).MenuIndex];
end;

procedure TfrmSystemFile.showGlComponentTab;
begin
      // only enable the data tag if the
      // check box is selected
      tsGlStructure.TabVisible := cxDBCostCentreAccounting.Checked ;
end;

procedure TfrmSystemFile.cxDBCostCentreAccountingPropertiesChange(
  Sender: TObject);
begin
     showGlComponentTab;
end;

procedure TfrmSystemFile.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if qrySystemFile.State in [dsEdit, dsInsert] then
   begin
      if MsgAsk('There are unsaved changes. Do you want to save these changes?') = mrYes then
      begin
         if (not SaveClearanceDays) then
            CanClose := False;
 
         if(not SaveOutlookSettings()) then
            CanClose := False;

         if(not SaveClientSettings()) then
            CanClose := False;

         if (not checkGlStructure()) then
            CanClose := False;

         UpdateSettings();

         qrySystemFile.ApplyUpdates; //  Post;

         if qryDataFieldMapping.Modified then
            qryDataFieldMapping.Post;

         if qryUserStatements.Modified then
            qryUserStatements.Post;

         if qryGlComponents.Modified and cxDBCostCentreAccounting.checked then
            qryGlComponents.post;

         dmAxiom.qryEmailTemplates.Close;
      end
      else
         qrySystemFile.Cancel;
   end;
end;

procedure TfrmSystemFile.btnAddEmailFooterClick(Sender: TObject);
var
//   frmGenEditor : TfrmGenEditor;
   sFileName: string;
//   bStream: TMemoryStream;
   bStream, fStream: TStream;
begin
{   frmGenEditor := TfrmGenEditor.Create(frmSystemFile);
   frmGenEditor.EditorValue := TMemoryStream.Create;
   TBlobField(qrySystemFile.FieldByName('Email_footer')).SaveToStream(frmGenEditor.EditorValue);

   if frmGenEditor.ShowModal = mrOk then
   begin
      if qrySystemFile.State in [dsBrowse] then
         qrySystemFile.edit;

      bStream := TMemoryStream.Create;
      frmGenEditor.Editor.Lines.SaveToStream(bStream);
      TBlobField(qrySystemFile.FieldByName('Email_footer')).LoadFromStream(bStream);
      bStream.free;  
   end;
   frmGenEditor.Free;   }

   dlFile.Filter := 'RTF|*.rtf|HTM|*.htm|HTML|*.html';
   if not dlFile.Execute then
      exit;

   sFileName := dlFile.FileName;

   if qrySystemFile.State in [dsBrowse] then
      qrySystemFile.edit;

  // check the document

   bStream := qrySystemFile.CreateBlobStream(qrySystemFile.fieldByname('Email_footer'), bmReadWrite);
   fStream := TFileStream.Create(sFileName, fmOpenRead);
   bStream.CopyFrom(fStream, fStream.Size);
   bStream.free;
   fStream.free;
end;

procedure TfrmSystemFile.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   with dlDocTemplate do
   begin
      if Execute then
      begin
         if qrySystemFile.State = dsBrowse then
            qrySystemFile.Edit;
         TcxDBButtonEdit(Sender).EditValue := Path;
         qrySystemFile.FieldByName('DOC_DEFAULT_DIRECTORY').AsString := Path;
      end;
   end;
end;

procedure TfrmSystemFile.cbUseAxiomCrysltalViewerClick(Sender: TObject);
begin
   scmbCrystalPath.Enabled := ( not cbUseAxiomCrysltalViewer.Checked);
end;

procedure TfrmSystemFile.edtHelpPathPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   dlFile.Filter := 'HLP|*.hlp|HTML|*.chm';
   if not dlFile.Execute then
      exit;

   if qrySystemFile.State = dsBrowse then
      qrySystemFile.Edit;  
   TcxDBButtonEdit(Sender).EditValue := dlFile.FileName;
   qrySystemFile.FieldByName('HELP_FILE_PATH').AsString := OpenDialog.FileName;
//   qrySystemFile.FieldByName(')

end;

procedure TfrmSystemFile.btneditSanDirPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   with dlDocTemplate do
   begin
      if Execute then
      begin
         if qrySystemFile.State = dsBrowse then
            qrySystemFile.Edit;
         TcxDBButtonEdit(Sender).EditValue := Path;
         qrySystemFile.FieldByName('scanned_doc_dir').AsString := Path;
      end;
   end;
end;

procedure TfrmSystemFile.btnedtISYSIndexPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if OpenDialog.Execute then
   begin
      if qrySystemFile.State = dsBrowse then qrySystemFile.Edit;
      TcxDBButtonEdit(Sender).EditValue := OpenDialog.FileName;
      qrySystemFile.FieldByName('ISYS_INDEX_PATH').AsString := OpenDialog.FileName;
   end;
end;

procedure TfrmSystemFile.dxBarButton3Click(Sender: TObject);
var
   sFileName: string;
   iPos: integer;
   bStream, fStream: TStream;
begin
  dlFile.Filter := 'JPG|*.jpg';
  if not dlFile.Execute then
    exit;

  sFileName := dlFile.FileName;

  if qrySystemFile.State in [dsBrowse] then
    qrySystemFile.edit;

  bStream := qrySystemFile.CreateBlobStream(qrySystemFile.fieldByname('LOGO_IMAGE'), bmReadWrite);
  fStream := TFileStream.Create(sFileName, fmOpenRead);
  bStream.CopyFrom(fStream, fStream.Size);
  bStream.free;
  fStream.free;
end;

procedure TfrmSystemFile.dxBarButton4Click(Sender: TObject);
var
   iPos: integer;
   bStream, fStream: TStream;
begin
  if qrySystemFile.State in [dsBrowse] then
    qrySystemFile.edit;

  qrySystemFile.fieldByname('LOGO_IMAGE').Clear;
end;

procedure TfrmSystemFile.btnLoadDataClick(Sender: TObject);
var
   sFileName: string;
   iPos: integer;
   bStream, fStream: TStream;
   ClearanceList: Tstrings;
   WasBrowsing: boolean;
begin
   WasBrowsing := False;

   dlFile.Filter := 'Text|*.txt';
   if not dlFile.Execute then
     exit;

   ClearanceList := TStringList.Create;  
   sFileName := dlFile.FileName;

   if qrySystemFile.State in [dsBrowse] then
   begin
      WasBrowsing := True;
      qrySystemFile.edit;
   end;

   bStream := qrySystemFile.CreateBlobStream(qrySystemFile.fieldByname('RECEIPT_CLEARANCE_DAYS'), bmReadWrite);
   fStream := TFileStream.Create(sFileName, fmOpenRead);
   bStream.CopyFrom(fStream, fStream.Size);
   bStream.free;
   fStream.free;
   ClearanceList.LoadFromFile(sFileName);
   LoadClearanceDays(ClearanceList);
   ClearanceList.Free;
//   if (qrySystemFile.State in [dsEdit]) and WasBrowsing then
//      qrySystemFile.Post;
end;

procedure TfrmSystemFile.LoadClearanceDays(AFile: TStrings);
   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      tvReceiptClerance.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;
var
   sWord, sNewline: string;
   LImportFile: TImportFile;
   NumRecords, i, iWords: integer;
begin
   tvReceiptClerance.BeginUpdate;
   SetLength(LImportFile,AFile.Count, 3);
   if tvReceiptClerance.DataController.RecordCount > 0 then
   begin
      for NumRecords := tvReceiptClerance.DataController.RecordCount - 1 downto 0 do
         tvReceiptClerance.DataController.DeleteRecord(0);
   end;

   iWords := 0;
   for i := 0 to AFile.Count - 1 do
   begin
      sNewline := AFile.Strings[i];
      while getnextword(sNewline ,sWord) do
      begin
         LImportFile[i,iWords] := sWord;
         inc(iWords);
      end;
      iWords := 0;
   end;

   for I := Low(LImportFile) to High(LImportFile) do
   begin
      tvReceiptClerance.DataController.AppendRecord;
      begin
         SetRecordValue(I, tvReceiptCleranceDescr.Index, LImportFile[i,0]);
         SetRecordValue(I, tvReceiptCleranceDays.Index, LImportFile[i,1]);
         SetRecordValue(I, tvReceiptCleranceCode.Index, LImportFile[i,2]);
      end;
    end;
    tvReceiptClerance.EndUpdate;
end;

function TfrmSystemFile.SaveClearanceDays: boolean;
var
   sNewline: string;
   ClearanceList: Tstrings;
   bStream: TStream;
   i: integer;
   WasBrowsing: boolean;
begin
{   if (pcMain.ActivePage = tsOther2) and (not FSaved) then
   begin
      Result := False;
      WasBrowsing := False;
      ClearanceList := TStringList.Create;
      with tvReceiptClerance.DataController do
      begin
         for i := 0 to RowCount - 1 do
         begin
            sNewline := '"' + GetDisplayText(i,0)+'","'+GetDisplayText(i,1) + '","' +GetDisplayText(i,2) + '"';
            ClearanceList.Add(sNewLine);
         end;
      end;

      if qrySystemFile.State in [dsBrowse] then
      begin
         WasBrowsing := True;
         qrySystemFile.edit;
      end;

      qrySystemFile.fieldByname('RECEIPT_CLEARANCE_DAYS').Clear;
      bStream := qrySystemFile.CreateBlobStream(qrySystemFile.fieldByname('RECEIPT_CLEARANCE_DAYS'), bmReadWrite);
      ClearanceList.SaveToStream(bStream);
      bStream.free;
      ClearanceList.Free;
   //   if (qrySystemFile.State in [dsEdit]) and WasBrowsing then
   //         qrySystemFile.Post;
      FSaved := True;
      Result := True;
   end
   else
      Result := True;     }
   try
      if qryBankClearance.Modified then
         qryBankClearance.Post;
      Result := True;
   except
      Result := False;
   end;
end;

procedure TfrmSystemFile.tsOther2Show(Sender: TObject);
var
    bStream: TStream;
    ClearanceList: Tstrings;
    WasBrowsing: boolean;
begin
   if not qrySystemFile.Active then
     qrySystemFile.Open;

   if not qryBankClearance.Active then
      qryBankClearance.Open;

  { WasBrowsing := False;
   if not qrySystemFile.fieldByname('RECEIPT_CLEARANCE_DAYS').IsNull then
   begin
      ClearanceList := TStringList.Create;
      if qrySystemFile.State in [dsBrowse] then
      begin
         WasBrowsing := true;
         qrySystemFile.edit;
      end;

      bStream := qrySystemFile.CreateBlobStream(qrySystemFile.fieldByname('RECEIPT_CLEARANCE_DAYS'), bmReadWrite);
      ClearanceList.LoadFromStream(bstream);
      LoadClearanceDays(ClearanceList);
      bStream.free;
      ClearanceList.Free;
//      if (qrySystemFile.State in [dsEdit]) and WasBrowsing then
//         qrySystemFile.Post;
   end;   }
end;

procedure TfrmSystemFile.tsOther2Exit(Sender: TObject);
begin
//   if not FSaved then
      //SaveClearanceDays;
end;

procedure TfrmSystemFile.tvReceiptCleranceDataControllerDataChanged(
  Sender: TObject);
begin
   FSaved := False;
end;

procedure TfrmSystemFile.tvReceiptCleranceDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
   FSaved := False;
end;

procedure TfrmSystemFile.Button1Click(Sender: TObject);
var
   hSession, hURL: HInternet;
   Request, URL: String;
   ResponseLength: Cardinal;
begin
   hSession := InternetOpen('Insight', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
   try
      URL := SystemString('sms_url');
//      Request := Format(URL,[Username,Password,Originator,Recipients,HttpEncode(Message)]);
      hURL := InternetOpenURL(hSession, PChar(Request), nil, 0,0,0);
      try
//         SetLength(Result, ResponseSize);
//         InternetReadFile(hURL, PChar(Result), ResponseSize, ResponseLength);
//         SetLength(Result, ResponseLength);
      finally
         InternetCloseHandle(hURL);
      end;
   finally
      InternetCloseHandle(hSession);
   end;
end;

procedure TfrmSystemFile.cxGrid1DBTableView1BODY_TEXTPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
{   try
      frmGenericEditorHTML := TfrmGenericEditorHTML.Create(Self);
      with frmGenericEditorHTML do
      begin
         if not VarIsNull(tvBillEmailTemplateBODY_TEXT.EditValue) then
            HTMLEdit.Text := tvBillEmailTemplateBODY_TEXT.EditValue;
         if ShowModal = mrOk then
         begin
            if not (dmAxiom.qryEmailTemplates.State in [dsInsert, dsEdit]) then
               dmAxiom.qryEmailTemplates.Edit;
            dmAxiom.qryEmailTemplates.FieldByName('BODY_TEXT').AsString := HTMLEdit.Text;
         end;
      end;
   finally
      frmGenEditor.Free;
   end;     }
end;

procedure TfrmSystemFile.cxTabSheet2Show(Sender: TObject);
begin
   dmAxiom.qryEmailTemplates.Open;
end;

end.
