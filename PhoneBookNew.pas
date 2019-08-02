unit PhoneBookNew;

interface

uses
  Windows, Forms, Messages, SysUtils,  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxTextEdit, cxMaskEdit, cxCalendar, cxCheckBox, Uni, Vcl.Dialogs, stringz,
  cxGrid, dxBar, cxClasses, Vcl.XPStyleActnCtrls, Vcl.ActnMan, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Controls, DBAccess, MemDS, System.Classes,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.DBCtrls,
  cxDBExtLookupComboBox, cxDBLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, VirtualTrees, cxLabel,
  cxImageComboBox, cxDBEdit, Vcl.ComCtrls, DBDateTimePicker, cxImage,
  cxGroupBox, Vcl.CheckLst, cxCheckListBox, cxMemo, cxRichEdit, cxDBRichEdit,
  Vcl.Graphics, cxDropDownEdit, cxCustomListBox, cxListBox, cxButtons,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, Vcl.Buttons,
  Vcl.Mask, cxPC, uRwMapiInterfaces, SyncObjs, System.Character;

//  9 Nov 2017 DW - added Entity Group code




type
  TLikeData = class(TCollectionItem)
  public
    NName: Integer;
    Search,
    SuburbState,
    Entity: String;
  end;

  TLikeThread = class(TThread)
  private
    FQuery: TUniQuery;
    FSearchEvent: THandle;
    FTerminateEvent: THandle;
    FSearch: String;
    FData: TCollection;
    FUpdateDisplayMsg: Cardinal;
    FDisplayWindowHandle: THandle;
    FCS: TCriticalSection;
    FLockOut: Boolean;
    FMasterNName: Integer;
    procedure SetSession(const Value: TUniConnection);
    procedure SetSearch(const Value: String);
    procedure TerminateEvent(Sender: TObject);

  public
    constructor Create();
    destructor Destroy(); override;
    procedure Execute; override;

    function PopulateList(AList: TListBox; ANName: Integer): Integer;

    property OraSession:TUniConnection write SetSession;
    property TSearch: String read FSearch write SetSearch;
    property UpdateDisplayMsg: Cardinal read FUpdateDisplayMsg write FUpdateDisplayMsg;
    property DisplayWindowHandle: THandle read FDisplayWindowHandle write FDisplayWindowHandle;
    property MasterNName: Integer read FMasterNName write FMasterNName;
  end;

  TfrmPhoneBookNew = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    bnPrev: TButton;
    bnNext: TButton;
    ActionList: TActionList;
    aPrev: TAction;
    aNext: TAction;
    aOk: TAction;
    aCancel: TAction;
    dsPhoneBook: TUniDataSource;
    qGender: TUniQuery;
    dsGender: TDataSource;
    ImageList1: TImageList;
    aCopyAddressDown: TAction;
    aCopyAddressUp: TAction;
    qPostCodeSearchSuburb: TUniQuery;
    qPostCodeSearchPcode: TUniQuery;
    qPostCodeSearchSuburbSUBURB: TStringField;
    qPostCodeSearchSuburbPCODE: TStringField;
    qPostCodeSearchSuburbSTATE: TStringField;
    qPostCodeSearchPcodeSUBURB: TStringField;
    qPostCodeSearchPcodePCODE: TStringField;
    qPostCodeSearchPcodeSTATE: TStringField;
    qGroups: TUniQuery;
    qGroupsCATEGORY: TStringField;
    qGroupsHASGROUP: TStringField;
    qGroupsOTHERPARTY: TStringField;
    qGroupsACTINGFOR: TStringField;
    qGroupsFIELDNAME: TStringField;
    qTmp: TUniQuery;
    qTmp2: TUniQuery;
    qMatters: TUniQuery;
    qMattersFILEID: TStringField;
    qMattersSHORTDESCR: TStringField;
    qDataFields: TUniQuery;
    qMatterDataFields: TUniQuery;
    qMatterDataFieldsDATAFORM: TStringField;
    qMatterDataFieldsFIELDNAME: TStringField;
    qMatterDataFieldsFIELDTYPE: TStringField;
    qMatterDataFieldsTEXTVALUE: TStringField;
    qMatterDataFieldsCAPTION: TStringField;
    qMatterDataFieldsFILEID: TStringField;
    qMatterDataFieldsMATTERDESC: TStringField;
    qMatterDataFieldsNEW: TStringField;
    qMatterDataFieldsDATAFORMCAPTION: TStringField;
    qMatterDataFieldsDATEVALUE: TDateTimeField;
    qClient: TUniQuery;
    dsClient: TDataSource;
    qCodeRules: TUniQuery;
    qCodeRulesCLIENTCODE: TStringField;
    qCodeRulesCLIENTACRONYM: TStringField;
    qCodeRulesCLIENTPAD: TIntegerField;
    qCodeRulesCLIENTLENGTH: TIntegerField;
    qCodeRulesROWID: TStringField;
    qClientCheck: TUniQuery;
    qGetCodes: TUniQuery;
    qActiveEmployees: TUniQuery;
    qActiveEmployeesNAME: TStringField;
    qActiveEmployeesCODE: TStringField;
    dsActiveEmployees: TDataSource;
    qPartners: TUniQuery;
    dsPartners: TDataSource;
    qPartnersNAME: TStringField;
    qPartnersCODE: TStringField;
    qFeeCode: TUniQuery;
    dsFeeCode: TDataSource;
    qFeeCodeCODE: TStringField;
    qFeeCodeDESCR: TStringField;
    qBillTemplate: TUniQuery;
    dsBillTemplate: TDataSource;
    qBillTemplateCODE: TStringField;
    qBillTemplateDESCR: TStringField;
    qClientGroups: TUniQuery;
    qClientGroupsCATEGORY: TStringField;
    qClientGroupsSUPERGROUP: TStringField;
    qClientGroupsHASGROUP: TStringField;
    qCreditor: TUniQuery;
    dsCreditor: TDataSource;
    qCreditorCheck: TUniQuery;
    qCodeRulesCREDITORCODE: TStringField;
    qCodeRulesCREDITORACRONYM: TStringField;
    qCodeRulesCREDITORPAD: TStringField;
    qCodeRulesCREDITORLENGTH: TIntegerField;
    qryMasterPhoneBookEntry: TUniQuery;
    qryMasterPhoneBookEntrySEARCH: TStringField;
    dsMasterPhoneBookEntry: TUniDataSource;
    tSearchChangeTimer: TTimer;
    aOpenMatch: TAction;
    qGetNName: TUniQuery;
    qListChildren: TUniQuery;
    qListChildrenSEARCH: TStringField;
    qListChildrenNAME: TStringField;
    dsListChildren: TDataSource;
    aOpenChild: TAction;
    aEditChild: TAction;
    aNewChild: TAction;
    aDeleteChild: TAction;
    qryMasterPhoneBookEntryNAME: TStringField;
    qChildren: TUniQuery;
    qChildrenSEARCH: TStringField;
    qChildrenNAME: TStringField;
    ActionManager1: TActionManager;
    actAddEvent: TAction;
    actEditEvent: TAction;
    mnuEvent: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    qryReferredBy: TUniQuery;
    dsReferredBy: TUniDataSource;
    qryIndustry: TUniQuery;
    dsIndustry: TUniDataSource;
    qryInterest: TUniQuery;
    qryUpdateInterest: TUniQuery;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    qryUpdateEventParticipants: TUniQuery;
    qryFlushEventParticipants: TUniQuery;
    qryReferralOther: TUniQuery;
    dsReferralOther: TUniDataSource;
    qryDebtorTaskTemplate: TUniQuery;
    dsDebtorTaskTemplate: TUniDataSource;
    qryUpdateFirmContact: TUniQuery;
    qryEmpList: TUniQuery;
    dsempList: TUniDataSource;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    vwPostcode: TcxGridViewRepository;
    tvPostcode: TcxGridDBTableView;
    tvPostcodeSUBURB: TcxGridDBColumn;
    tvPostcodePCODE: TcxGridDBColumn;
    tvPostcodeSTATE: TcxGridDBColumn;
    popCopyStreetAddress: TPopupMenu;
    CopyToPostalAddress: TMenuItem;
    CopyToCustomAddress: TMenuItem;
    aCopyAddressToCustom: TAction;
    aCopyPostalToCustom: TAction;
    popCopyPostalAddress: TPopupMenu;
    CopyStreetAddressToCustomAddress: TMenuItem;
    CopyPostalAddressToCustomAddress: TMenuItem;
    qryTaxRate: TUniQuery;
    dsTaxRate: TUniDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tvIndustry: TcxGridDBTableView;
    tvIndustryCODE: TcxGridDBColumn;
    tvIndustryINDUSTRY: TcxGridDBColumn;
    tvIndustryDESCR: TcxGridDBColumn;
    strCheckForMasterLink: TStringz;
    qryTmpSQL: TUniQuery;
    tDebtorStatus: TUniTable;
    tDebtorStatusDEBTORSTATUS: TFloatField;
    tDebtorStatusDESCRIPTION: TStringField;
    dsDebtorStatus: TUniDataSource;
    qPhoneBook: TUniQuery;
    qryMasterPhoneBookEntryNNAME: TLargeintField;
    qMattersNMATTER: TLargeintField;
    qMatterDataFieldsNMATTER: TFloatField;
    qMatterDataFieldsSEQ: TSmallintField;
    qListChildrenNNAME: TLargeintField;
    qGetNNameNEXTVAL: TFloatField;
    qChildrenNNAME: TLargeintField;
    cbAddToOutlook: TCheckBox;
    qryRelationshipStatus: TUniQuery;
    dsRelationshipStatus: TUniDataSource;
    qryRelationshipAction: TUniQuery;
    dsRelationshipAction: TUniDataSource;
    qrySystem1: TUniQuery;
    qrySystem2: TUniQuery;
    qryRelationship_Type: TUniQuery;
    dsRelationship_Type: TUniDataSource;
    dlFile: TOpenDialog;
    qPhoneBookImage: TUniQuery;
    dsPhoneBookImage: TUniDataSource;
    qCodeRulesCLIENTSEPARATOR: TStringField;
    qCodeRulesUSE_PHONEBOOK_NAME: TStringField;
    OpenDialog1: TOpenDialog;
    qCodeRulesUSE_ENTITY_LENGTH: TIntegerField;
    qCodeRulesUSE_ENTITY_CODE: TStringField;
    qCodeRulesUSE_ENTITY_SEPARATOR: TStringField;
    qCodeRulesENTITY_CODE: TStringField;
    qCodeRulesUSE_ENTGRP_CODE: TStringField;
    qCodeRulesUSE_ENTGRP_LENGTH: TSmallintField;
    qCodeRulesUSE_ENTGRP_SEPARATOR: TStringField;
    qCodeRulesENTITY_GROUP_CODE: TStringField;
    procCreateContactfromExisting: TUniStoredProc;
    Label18: TLabel;
    qrySuperClient: TUniQuery;
    dsSuperClient: TUniDataSource;
    pcPages: TcxPageControl;
    tsName: TcxTabSheet;
    eLastName: TDBEdit;
    eGivenNames: TDBEdit;
    eName: TDBEdit;
    eLongName: TDBEdit;
    btnDeleteMasterPhoneBookEntry: TButton;
    bbtnContactOpen: TBitBtn;
    dbedtMasterPhoneBookEntry: TcxDBButtonEdit;
    cbGender: TcxDBLookupComboBox;
    eSalutation: TDBEdit;
    pbConvertToCreditor: TBitBtn;
    pbConvertToClient: TBitBtn;
    btnPrintConflicts: TBitBtn;
    eShortName: TDBEdit;
    eSearch: TcxDBTextEdit;
    pbConvertFromPhonebook: TBitBtn;
    lbSearchMatches: TListBox;
    Label46: TLabel;
    lblMasterPhoneBookEntry: TLabel;
    lGivenNames: TLabel;
    lGender: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label14: TLabel;
    Bevel9: TBevel;
    lLastName: TLabel;
    lSearchMatches: TLabel;
    lSearch: TLabel;
    lTotalConflicts: TLabel;
    lShortName: TLabel;
    lName: TLabel;
    lLongName: TLabel;
    lSalutation: TLabel;
    lNamed: TLabel;
    tsAddress: TcxTabSheet;
    tsAddresses: TcxPageControl;
    tsMainAddress: TcxTabSheet;
    tsCustomAddress: TcxTabSheet;
    cbStreetState: TcxDBComboBox;
    ckPostalDefault: TCheckBox;
    ckStreetDefault: TCheckBox;
    cbStreetCountry: TcxDBLookupComboBox;
    btnCopyStreetAddress: TcxButton;
    cbPostalCountry: TcxDBLookupComboBox;
    cbPostalState: TcxDBComboBox;
    mPostalAddress: TDBRichEdit;
    mStreetAddress: TDBRichEdit;
    pnlDX: TPanel;
    lDX: TLabel;
    lDXAddress: TLabel;
    lDXLocation: TLabel;
    eDXAddress: TDBEdit;
    eDXLocation: TDBEdit;
    ckDXDefault: TCheckBox;
    eStreetSuburb: TcxDBButtonEdit;
    ePostalPostCode: TDBEdit;
    ePostalSuburb: TcxDBButtonEdit;
    eStreetPostCode: TDBEdit;
    btnCopyPostalAddress: TcxButton;
    lPostalCountry: TLabel;
    lPostalPostCode: TLabel;
    lPostalState: TLabel;
    lPostalAddress: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    lPostal: TLabel;
    lStreetPostCode: TLabel;
    lStreetState: TLabel;
    lStreetSuburb: TLabel;
    lStreetCountry: TLabel;
    lPostalSuburb: TLabel;
    lStreet: TLabel;
    lStreetAddress: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lCustomState: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lblCustomAddress: TLabel;
    ckCustomDefault: TCheckBox;
    cmbCustCountry: TcxDBLookupComboBox;
    cmbCustState: TcxDBComboBox;
    eCustPostcode: TDBEdit;
    eCustSuburb: TcxDBButtonEdit;
    mCustAddress: TDBRichEdit;
    tsPhone: TcxTabSheet;
    Bevel5: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    lInternet: TLabel;
    lInternetEMail: TLabel;
    lInternetWWW: TLabel;
    lPhone: TLabel;
    lPhoneDirect: TLabel;
    lPhoneFax: TLabel;
    lPhoneHome: TLabel;
    lPhoneMobile: TLabel;
    lPhoneWork: TLabel;
    Label45: TLabel;
    ckEmail1Default: TCheckBox;
    ckEmail2Default: TCheckBox;
    ckEmailDefault: TCheckBox;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    eInternetEmail: TcxDBButtonEdit;
    eInternetWWW: TcxDBButtonEdit;
    ePhoneHome: TcxDBTextEdit;
    ePhoneFax: TcxDBTextEdit;
    ePhoneDirect: TcxDBTextEdit;
    ePhoneMobile: TcxDBTextEdit;
    ePhoneWork: TcxDBTextEdit;
    chkPhoneWork: TCheckBox;
    chkPhoneHome: TCheckBox;
    chkPhoneMobile: TCheckBox;
    chkPhoneDirect: TCheckBox;
    tsAdditional: TcxTabSheet;
    Bevel11: TBevel;
    tsNotes: TcxTabSheet;
    tsGroups: TcxTabSheet;
    lbGroups: TcxCheckListBox;
    tsClient: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    lblIntroducedCaption: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    lblServicePartner: TLabel;
    lblDateofdeath: TLabel;
    Label41: TLabel;
    cbClientFeeCode: TcxDBLookupComboBox;
    cbClientIntroducedBy: TcxDBLookupComboBox;
    cbClientServicePartner: TcxDBLookupComboBox;
    eClientCode: TDBEdit;
    eClientIntroduced: TcxDBDateEdit;
    lbClientGroups: TCheckListBox;
    cxGroupBox1: TcxGroupBox;
    imgClientID: TcxDBImage;
    btnAttachImage: TcxButton;
    dbdtDateofdeath: TDBDateTimePicker;
    cxPageControl1: TcxPageControl;
    tabClientTemplates: TcxTabSheet;
    Label8: TLabel;
    Label23: TLabel;
    cbClientBillTemplate: TcxDBLookupComboBox;
    cmbLookupCollectionTemplate: TcxDBLookupComboBox;
    tabClientControls: TcxTabSheet;
    lblClientPack: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    cmbClientPack: TcxDBImageComboBox;
    cmbAllowMatters: TcxDBComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    tabDebtor: TcxTabSheet;
    Label21: TLabel;
    Label7: TLabel;
    Label25: TLabel;
    lDebtorStatusCaption: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    cmbFeeTaxBasis: TcxDBLookupComboBox;
    eClientDisbThreshold: TDBEdit;
    DBEdit1: TDBEdit;
    cbDebtorStatus: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    eTaxNo: TDBEdit;
    cmbSuperClient: TcxDBLookupComboBox;
    BitBtn1: TBitBtn;
    tsCreditor: TcxTabSheet;
    eCreditorCode: TDBEdit;
    eCreditorTerms: TDBEdit;
    eCreditorCreditLimit: TDBEdit;
    Label13: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    tsCustomData: TcxTabSheet;
    vtCustomData: TVirtualStringTree;
    tsMatterData: TcxTabSheet;
    vtMatterData: TVirtualStringTree;
    tsChildren: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    tsEventList: TcxTabSheet;
    grdEventList: TcxGrid;
    tvEventList: TcxGridDBTableView;
    tvEventListEVENT: TcxGridDBColumn;
    tvEventListEVENT_DATE: TcxGridDBColumn;
    tvEventListEVENT_TIME: TcxGridDBColumn;
    tvEventListACCEPTED: TcxGridDBColumn;
    tvEventListATTENDED: TcxGridDBColumn;
    tvEventListDECLINED: TcxGridDBColumn;
    tvEventListPRINTED: TcxGridDBColumn;
    tvEventListSEARCH: TcxGridDBColumn;
    tvEventListEVENT_PART_ID: TcxGridDBColumn;
    grdEventListLevel1: TcxGridLevel;
    Panel1: TPanel;
    btnEditEvent: TcxButton;
    btnAddEvent: TcxButton;
    tsMarketing: TcxTabSheet;
    grpInterest: TGroupBox;
    chklistInterest: TcxCheckListBox;
    grpMarketing: TGroupBox;
    lblReferralType: TLabel;
    lblReferredBy: TLabel;
    lblMaintainer: TLabel;
    edReferredBy: TcxDBLabel;
    cmbMaintainer: TcxDBLookupComboBox;
    cmbReferralOther: TcxDBLookupComboBox;
    cmbReferral: TcxDBLookupComboBox;
    GroupBox1: TGroupBox;
    lbFirmContacts: TcxCheckListBox;
    grpIndustry: TGroupBox;
    cmbIndustry: TcxDBExtLookupComboBox;
    tsCRM: TcxTabSheet;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    cmbRelationshipAction: TDBLookupComboBox;
    cmbRelationshipStatus: TDBLookupComboBox;
    cmbSystem1: TDBComboBox;
    cmbSystem2: TDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    chkProspectiveClient: TcxDBCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    qryPhonebookStatus: TUniQuery;
    dsPhonebookStatus: TUniDataSource;
    cxEditRepository1: TcxEditRepository;
    ActAddConflictDoc: TAction;
    qryPhoneBookConflictDocs: TUniQuery;
    qryInsertPhoneBookConflictDoc: TUniQuery;
    Bevel10: TBevel;
    Bevel12: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    cxButton1: TcxButton;
    eTitle: TDBEdit;
    grpCLLData: TGroupBox;
    Label15: TLabel;
    Label22: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    lbConflicts: TcxListBox;
    pnlABNACN: TPanel;
    lACN: TLabel;
    lblABNCaption: TLabel;
    Bevel6: TBevel;
    eACN: TDBEdit;
    eABN: TcxDBMaskEdit;
    pnlCodeRef: TPanel;
    lDefaultRef: TLabel;
    lCode: TLabel;
    eDefaultRef: TDBEdit;
    eCode: TDBEdit;
    pnlContacts: TPanel;
    Label38: TLabel;
    Label40: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    pnlDOB: TPanel;
    lDateOfBirth: TLabel;
    dDateOfBirth: TcxDBDateEdit;
    pnlNRIC: TPanel;
    Label43: TLabel;
    imggoodNRIC: TImage;
    imgbadNRIC: TImage;
    dbedNRIC: TDBEdit;
    pnlOccupation: TPanel;
    lOccupation: TLabel;
    eOccupation: TDBEdit;
    qryDebtorStatus: TUniQuery;
    mNotes: TcxDBRichEdit;
    Label44: TLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
    pnlPassportNo: TPanel;
    Label47: TLabel;
    DBEdit8: TDBEdit;
    procedure eGivenNamesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aPrevExecute(Sender: TObject);
    procedure aPrevUpdate(Sender: TObject);
    procedure aNextExecute(Sender: TObject);
    procedure aNextUpdate(Sender: TObject);
    procedure aOkUpdate(Sender: TObject);
    procedure aOkExecute(Sender: TObject);
    procedure aCancelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNameShow(Sender: TObject);
    procedure eStreetSuburbButtonClick(Sender: TObject);
    procedure tsAddressShow(Sender: TObject);
    procedure aCopyAddressDownExecute(Sender: TObject);
    procedure aCopyAddressUpExecute(Sender: TObject);
    procedure CRTemp_qPhoneBookAfterScroll(DataSet: TDataSet);
    procedure ckDefaultClick(Sender: TObject);
    procedure tsAdditionalShow(Sender: TObject);
    procedure tsNotesShow(Sender: TObject);
    procedure eStreetSuburbExit(Sender: TObject);
    procedure ePostalSuburbExit(Sender: TObject);
    procedure eStreetPostCodeExit(Sender: TObject);
    procedure ePostalPostCodeExit(Sender: TObject);
    procedure tsGroupsShow(Sender: TObject);
    procedure vtCustomDataColumnClick(Sender: TBaseVirtualTree;
      Column: TColumnIndex; Shift: TShiftState);
    procedure vtCustomDataCreateEditor(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
    procedure vtCustomDataEditCancelled(Sender: TBaseVirtualTree;
      Column: TColumnIndex);
    procedure vtCustomDataEdited(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex);
    procedure vtCustomDataEditing(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; var Allowed: Boolean);
    procedure vtCustomDataEnter(Sender: TObject);
    procedure vtCustomDataExit(Sender: TObject);
    procedure vtCustomDataGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vtCustomDataPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure FormDestroy(Sender: TObject);
    procedure eClientCodeEnter(Sender: TObject);
    procedure eClientCodeExit(Sender: TObject);
    procedure lbClientGroupsClickCheck(Sender: TObject);
    procedure eCreditorCodeEnter(Sender: TObject);
    procedure eCreditorCodeExit(Sender: TObject);
    procedure tsClientShow(Sender: TObject);
    procedure tsCreditorShow(Sender: TObject);
    procedure dbedtMasterPhoneBookEntryButtonClick(Sender: TObject);
    procedure btnDeleteMasterPhoneBookEntryClick(Sender: TObject);
    procedure WndProc(var Message: TMessage); override;
    procedure tSearchChangeTimerTimer(Sender: TObject);
    procedure aOpenMatchUpdate(Sender: TObject);
    procedure aOpenMatchExecute(Sender: TObject);
    procedure lbSearchMatchesDblClick(Sender: TObject);
    procedure lbSearchMatchesDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure CMDialogKey(Var Msg: TWMKey); message CM_DIALOGKEY;
    procedure tsChildrenShow(Sender: TObject);
    procedure OnChildUpdate(Sender: TObject);
    procedure aOpenChildExecute(Sender: TObject);
    procedure aNewChildExecute(Sender: TObject);
    procedure aEditChildExecute(Sender: TObject);
    procedure aDeleteChildExecute(Sender: TObject);
    procedure dbgChildrenDblClick(Sender: TObject);
    procedure actEditEventUpdate(Sender: TObject);
    procedure grdEventListDblClick(Sender: TObject);
    procedure pcPagesChange(Sender: TObject);
    procedure actAddEventUpdate(Sender: TObject);
    procedure actAddEventExecute(Sender: TObject);
    procedure actEditEventExecute(Sender: TObject);
    procedure cxGrid1DblClick(Sender: TObject);
    procedure grdEventListDBTableView1ATTENDEDPropertiesChange(
      Sender: TObject);
    procedure cmbReferralPropertiesCloseUp(Sender: TObject);
    procedure cmbReferralPropertiesChange(Sender: TObject);
    procedure cmbIndustryPropertiesChange(Sender: TObject);
    procedure cmbMaintainerPropertiesChange(Sender: TObject);
    procedure cmbReferralOtherChange(Sender: TObject);
    procedure eSearchPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure eSearchEnter(Sender: TObject);
    procedure eSearchPropertiesChange(Sender: TObject);
    procedure cmbMaintainerPropertiesCloseUp(Sender: TObject);
    procedure cmbReferralOtherPropertiesCloseUp(Sender: TObject);
    procedure cmbIndustryPropertiesCloseUp(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eABNPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tsNameExit(Sender: TObject);
    procedure pbConvertToCreditorClick(Sender: TObject);
    procedure pbConvertToClientClick(Sender: TObject);
    procedure chklistInterestClick(Sender: TObject);
    procedure lbFirmContactsClick(Sender: TObject);
    procedure lbGroupsClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure aCopyAddressToCustomExecute(Sender: TObject);
    procedure aCopyPostalToCustomExecute(Sender: TObject);
    procedure popCopyStreetAddressPopup(Sender: TObject);
    procedure popCopyPostalAddressPopup(Sender: TObject);
    procedure aCopyAddressDownUpdate(Sender: TObject);
    procedure aCopyAddressUpUpdate(Sender: TObject);
    procedure qClientNewRecord(DataSet: TDataSet);
	procedure eCustSuburbExit(Sender: TObject);
    procedure pbConvertFromPhonebookClick(Sender: TObject);
    procedure cmbReferralOtherPropertiesEditValueChanged(Sender: TObject);
    procedure eShortNameKeyPress(Sender: TObject; var Key: Char);
    procedure cmbClientPackPropertiesCloseUp(Sender: TObject);
    procedure eStreetSuburbPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eStreetSuburbPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbGenderPropertiesChange(Sender: TObject);
    procedure dddPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eInternetEmailPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eInternetWWWPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qPhoneBookEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure vtCustomDataGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vtCustomDataNewText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; NewText: string);
    procedure cmbSystem1DropDown(Sender: TObject);
    procedure cmbSystem2DropDown(Sender: TObject);
    procedure ckEmailDefaultClick(Sender: TObject);
    procedure edtDiscountKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure btnAttachImageClick(Sender: TObject);
    procedure qPhoneBookAfterEdit(DataSet: TDataSet);
    procedure qClientAfterEdit(DataSet: TDataSet);
    procedure qCreditorAfterEdit(DataSet: TDataSet);
    procedure chkPhoneWorkClick(Sender: TObject);
    procedure btnPrintConflictsClick(Sender: TObject);
    procedure eLastNameExit(Sender: TObject);
    procedure bbtnContactNewClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesInitPopup(Sender: TObject);
    procedure dbedNRICChange(Sender: TObject);
    procedure chkProspectiveClientClick(Sender: TObject);
    procedure qPhoneBookNewRecord(DataSet: TDataSet);
    procedure ActAddConflictDocExecute(Sender: TObject);
  private
    FNName: Integer;
    FLastEnteredName: String;
    FScrolling: Boolean;
    FAddedGroups,
    FRemovedGroups,
    FInitialGroups,
    FAddedClientGroups,
    FRemovedClientGroups,
    FInitialClientGroups: TStringList;
    FLimitToNMatter: Integer;
    FShowAllMatterData: Boolean;
    FOldSearch, FNewSearch: String;
    FNClient: Integer;
    FLowercaseCaption: String;
    FNCreditor: Integer;
    FClientCreateGroup: String;
    FShowDataOnlyGroup: String;
    FUpdateDisplayMsg: Cardinal;
    FLikeThread: TLikeThread;
    FMasterNName: Integer;
    FDoShow: boolean;
    FClientFromPhonebook:  Boolean;
    bInterestChanged: Boolean;
    bFirmContactsChanged: Boolean;
    bGroupChanged: Boolean;
    bChildrenChanged: Boolean;
    bMatterDataChanged: Boolean;

    FCurrentChildNNames: TStringList;
    FDeletedChildNNames: TStringList;

    FMessage : IRwMapiMessage;

    FIS_NAME_MANDATORY: boolean;
    FNewClient: boolean;
    bPhonebookModified: boolean;
    bClientModified: boolean;
    bCreditorModified: boolean;
    bNewContact: boolean;
    bFromConflictCreate: boolean;

    procedure LoadPartyData(AParty: String);
    procedure RemovePartyData(ATree: TBaseVirtualTree; AParty: String);
    function  SavePartyData(AParty: String; AParent: PVirtualNode): Boolean;

    procedure LoadMatterPartyData(AParty: String);
    function  SaveMatterPartyData(AParty: String): Boolean;

    procedure SaveAllPartyData();
    function GetSearch: String;
    function GetInitalGroups: String;
    procedure SetInitialGroups(const Value: String);
    function GetShowMatterSpecific: Boolean;
    procedure SetShowMatterSpecific(const Value: Boolean);
    procedure CheckEditSearchChange();
    function CheckHasGroup(): Boolean;
    function CheckClient(): Boolean;
    function CheckCreditor(): Boolean;
    function MakeSearch: String;
    procedure SaveChildren();
    procedure setNName;
    procedure SaveDataToMsg;
    function OKtoPost : boolean;
    procedure CheckAndSetControl(bChild : Boolean; bParent : Boolean; oControl : TWinControl);
    procedure updateControlsForMasterLink;
    procedure CxCheckAndSetControl(bChild : Boolean; bParent : Boolean; oControl : TControl);
    function SavePhonebook(bFromClose: boolean = False): Boolean;
    function MakeName: String;
    procedure AddConflictDocument(NConflictDocID: Integer);
    procedure RefreshConflictSearchDocs;
  public
    procedure SetupForClient(ANClient: Integer);
    procedure SetupForCreditor(const Value: Integer);
    procedure DoShow;

    property NName: Integer               read FNName                   write FNName default 0;
    property Search: String               read GetSearch;
    property InitialGroups: String        read GetInitalGroups          write SetInitialGroups;
    property LimitToNMatter: Integer      read FLimitToNMatter          write FLimitToNMatter default 0;
    property ShowMatterSpecific: Boolean  read GetShowMatterSpecific    write SetShowMatterSpecific;
    property ShowAllMatterData: Boolean   read FShowAllMatterData       write FShowAllMatterData default false;
    property ShowDataOnlyGroup: String    read FShowDataOnlyGroup       write FShowDataOnlyGroup;

    property NClient: Integer             read FNClient                 write SetupForClient default -1;
    property NCreditor: Integer           read FNCreditor               write SetupForCreditor default -1;
    property MasterNName: Integer         read FMasterNName             write FMasterNName;
    property bDoShow: boolean             read FDoShow                  write FDoShow default true;
    property ISNAMEMANDATORY: boolean     read FIS_NAME_MANDATORY       write FIS_NAME_MANDATORY default false;
    property NewClient: boolean           read FNewClient               write FNewClient default True;
  end;

implementation

uses AxiomData, PostcodeSearch, ShellAPI, VTCurrencyEdit, MiscFunc,
   Variants, NSearch, citfunc, SystemFile, PhoneBook, MarketEventDataModule,
   MarketAddParticipant, CSearch, EmployeeFindDialog, Clients, Desktop,
   uRwMapiDefsH, uRwMapiUtils, VTEditors, uRwMapiProps, GenericSearch,
   ConflictSelect, LoggingSnippet,
   System.UITypes;

var
    InterestArray : TStringList;// array of Integer;
    newPBEntry    : Boolean;
    FirmContactArray: TStringList;  //array of string;

{$R *.DFM}
// for data form
type
  TEditFieldType = (efCurrency, efDate, efInteger, efText, efList, efBoolean);
  PFieldData = ^TFieldData;
  TFieldData = record
    DataForm: String;
    DataFormCaption: String;
    NMatter: Integer;
    MatterDesc: String;
    Group: String;
    FieldName: String;
    FieldCaption: String;
    FieldValue: String;
    FieldType: TEditFieldType;
    Modified: Boolean;
    New: Boolean;
    LookUpList: TStringList;
    NumLines: integer;
  end;

procedure TfrmPhoneBookNew.FormCreate(Sender: TObject);
var
    imaxLength : integer;
begin
   Screen.Cursor := crSQLWait;
   Application.HintPause := 250;      // 250 mSec before hint is shown
   Application.HintHidePause := 3000; // hint disappears after 3 secs
   qryRelationship_Type.Open;
   qryRelationshipStatus.Open;
   qryRelationshipAction.Open;
   dmAxiom.tblCountryList.Open;
   qryPhonebookStatus.Open;
   qryDebtorStatus.Open;

 //  if dmAxiom.DictionaryInstalled then
//      mNotes.AddictSpell := dmAxiom.Addict;
   FCurrentChildNNames := TStringList.Create();
   FDeletedChildNNames := TStringList.Create();
   bInterestChanged := False;
   bFirmContactsChanged := False;
   bGroupChanged := False;
   bMatterDataChanged := False;

   FNClient := -1;
   FNCreditor := -1;
   ShowMatterSpecific := False;
   FAddedGroups   := TStringList.Create();
   FRemovedGroups := TStringList.Create();
   FInitialGroups := TStringList.Create();
   FAddedClientGroups   := TStringList.Create();
   FRemovedClientGroups := TStringList.Create();
   FInitialClientGroups := TStringList.Create();
   pcPages.ActivePage := tsName;
   FNewSearch := '';
   FOldSearch := '';
   FClientFromPhonebook := False;

   if (SystemString('enforce_upper_suburb') = 'Y') then
   begin
      eStreetSuburb.Properties.CharCase := ecUpperCase;
      ePostalSuburb.Properties.CharCase := ecUpperCase;
      eCustSuburb.Properties.CharCase := ecUpperCase;
   end
   else
   begin
      eStreetSuburb.Properties.CharCase := ecNormal;
      ePostalSuburb.Properties.CharCase := ecNormal;
      eCustSuburb.Properties.CharCase := ecNormal;
   end;

   tsClient.TabVisible := False;
   tsClient.Visible := False;
   tsCreditor.TabVisible := False;
   tsCreditor.Visible := False;
   tsPhone.TabVisible := dmAxiom.Security.Phonebook.Tabs.PhoneInternet;
   tsAdditional.TabVisible := dmAxiom.Security.Phonebook.Tabs.Additional;
   tsNotes.TabVisible := dmAxiom.Security.Phonebook.Tabs.Notes;
   tsCustomData.TabVisible := dmAxiom.Security.Phonebook.Tabs.CustomData;
   tsMatterData.TabVisible := dmAxiom.Security.Phonebook.Tabs.MatterData;
   tsEventList.TabVisible := dmAxiom.Security.Phonebook.Tabs.Events;
   tsMarketing.TabVisible := dmAxiom.Security.Phonebook.Tabs.Marketing;
   tsChildren.TabVisible := dmAxiom.Security.Phonebook.Tabs.OtherName;
   chkProspectiveClient.Enabled := dmAxiom.Security.Phonebook.Prospective;

   if(SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) then
      FClientCreateGroup := SettingLoadString(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)
   else
      FClientCreateGroup := '';

   FUpdateDisplayMsg := RegisterWindowMessage('CM_AXIOMATION_UPDATEPBDISPLAY');
   FLikeThread := TLikeThread.Create();
   FLikeThread.UpdateDisplayMsg := FUpdateDisplayMsg;
   FLikeThread.DisplayWindowHandle := Handle;
   FLikeThread.Resume();
   if(not Assigned(dmMarketEventDataModule)) then
      dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);

   cmbLookupCollectionTemplate.Enabled :=  dmAxiom.Security.CollectionsManagement.ChangeTemplate;

   cbAddToOutlook.Visible := (SystemString('email_reg') = C_EMAILPASSWORD);

//  Count := 0;
   chklistInterest.Clear;
   qryInterest.Open;
   InterestArray := TStringList.Create;
//  SetLength(InterestArray, qryInterest.RecordCount);
   qryInterest.First;
   while not qryInterest.Eof do
   begin
    // Add item to check list box
      chklistInterest.AddItem(qryInterest.FieldByName('descr').AsString);
      InterestArray.Add(qryInterest.FieldByName('code').AsString);
      qryInterest.Next;
//    Inc(count);
   end;

//  Count := 0;
   qryEmpList.Open;
   FirmContactArray := TStringList.Create;
   qryEmpList.First;
   while not qryEmpList.Eof do
   begin
    // Add employee to check list box
      lbFirmContacts.AddItem(qryEmpList.FieldByName('name').AsString + ' - ' + qryEmpList.FieldByName('code').AsString);
      FirmContactArray.Add(qryEmpList.FieldByName('code').AsString);
      qryEmpList.Next;
//    Inc(count);
   end;
   tabClientControls.TabVisible := (SystemString('HIDE_CLIENT_CONTROLS_TAB') = 'N');

   if SystemString('ENFORCE_CLIENT_PACK') = 'N' then
   begin
      cmbClientPack.Visible := False;
      lblClientPack.Visible := False;
   end;

   pnlDX.Visible := (SystemString('HideDXPanel') = 'N');
   pnlDOB.Visible := (SystemString('HideDOBPanel') = 'N');
   pnlCodeRef.Visible := (SystemString('HideCodeRefPanel') = 'N');
   pnlABNACN.Visible := (SystemString('HideABNACNPanel') = 'N');
   pnlOccupation.Visible := (SystemString('HideOccupationPanel') = 'N');
   getLabel(lGender,'PHONEBOOK', 'GENDER', imaxLength, 'Type/Gender:');
   lblServicePartner.Caption := GetLabelValue('MATTER', 'PARTNER', iMaxLength, 'Partner');
   pnlNRIC.Visible := (SystemString('HideNRICPanel') = 'N');
   pnlPassportNo.Visible := (SystemString('HideNRICPanel') = 'N');

   if SystemString('HIDE_CLIENT_DECEASEDDATE') = 'Y' then
   begin
      dbdtDateofdeath.Visible := False;
      lblDateofdeath.Visible := False;
   end;

   bPhonebookModified := False;
   bClientModified := False;
   bCreditorModified := False;

   grpCLLData.Visible := (Pos('CLINCH', UpperCase(SystemString('COMPANY')) ) > 0);

   // locale setting
   // populate state combo box
   ComboBoxObjectPopulate(cbStreetState, 'STATES','NAME','CODE');
   ComboBoxObjectPopulate(cbPostalState, 'STATES','NAME','CODE');
   ComboBoxObjectPopulate(cmbCustState, 'STATES','NAME','CODE');

   if SystemString('LOCALE_NAME') <> '' then
   begin
      lStreetState.Caption := 'County:';
      lPostalState.Caption := 'County:';
      lCustomState.Caption := 'County:';
      lStreet.Caption := 'Client Address (Registered Office)';
      lblABNCaption.Caption := 'VAT No.';
      lblIntroducedCaption.Caption := 'Date Introduced:';
      lblServicePartner.Caption := 'Client Partner:';
   end;
   bNewContact := false;
   bFromConflictCreate := False;

  Screen.Cursor := crDefault;
end;

procedure TfrmPhoneBookNew.aPrevExecute(Sender: TObject);
var
  i: Integer;
begin
   i := pcPages.ActivePageIndex - 1;  // TabIndex - 1;
   while(not pcPages.Pages[i].TabVisible) and (i >= 0) do
      Dec(i);
   pcPages.ActivePageIndex := i;  // ActivePage := pcPages.Pages[i];
   pcPages.OnChange(Sender);
end;

procedure TfrmPhoneBookNew.aPrevUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := pcPages.ActivePageIndex > 0;
end;

procedure TfrmPhoneBookNew.btnPrintConflictsClick(Sender: TObject);
var
   tempfile,
   tempdir,
   ANewDocName,
   text: string;
   lDocID,
   yPos: Integer;
   ConvFile: TextFile;
begin
{   if lbSearchMatches.Items.Count > 0 then
   begin
      try
         setNName;
         tempdir := GetTempDirectory;
         tempFile := IncludeTrailingPathDelimiter(tempdir) + 'conflict_list_' + IntToStr(NName)+'.txt';

         ListBox2File(tempFile, lbSearchMatches);

//         lbSearchMatches.Items.SaveToFile(tempFile);

         ANewDocName := IncludeTrailingPathDelimiter(SystemString('DFLT_DOC_LIST'))+
                        IntToStr(NName) +
                        '\conflict_list_' + IntToStr(NName)+'.pdf';
         CreateDir(ExtractFileDir(ANewDocName));

         with TPdfDocument.Create do
         try
            AddPage;
 //           Canvas.SetFont('arial',12,[fsBold]);
            Canvas.TextOut(130,800,'Conflicts for '+FlikeThread.TSearch);
            Canvas.SetFont('arial',10,[]);
            AssignFile(ConvFile, tempFile);
            Reset(ConvFile);

            // Display the file contents
            yPos := 760;
            while not Eof(ConvFile) do
            begin
               ReadLn(ConvFile, text);
               Canvas.TextOut(100,yPos,text);
               yPos := yPos - 20;
               if (yPos < 41) then
               begin
                  AddPage;
                  yPos := 760;
               end;
            end;
            // Close the file for the last time
            CloseFile(ConvFile);

            SaveToFile(ANewDocName);
         finally
            DeleteFile(tempFile);
            Free;
            lDocID := SaveDocument(Now, '0', dmAxiom.UserID, ANewDocName, 'Conflict Search', '' , 5);
            with dmAxiom.qryInsertNNameDoc do
            begin
               ParamByName('nname').AsInteger := NName;
               ParamByName('docid').AsInteger := lDocID;
               ExecSQL;
            end;
//            MsgInfo('File saved succesfully');
         end;
      finally
//         gtDocumentConverter.Destroy;
      end;
   end;   }
end;

procedure TfrmPhoneBookNew.aNextExecute(Sender: TObject);
var
  i: Integer;
begin
   i := pcPages.ActivePageIndex + 1;  // TabIndex + 1;
   while (i < pcPages.PageCount) and (not pcPages.Pages[i].TabVisible)  do
      Inc(i);
   if(i < pcPages.PageCount) then
      pcPages.ActivePageIndex := i; // ActivePage := pcPages.Pages[i];
   pcPages.OnChange(Sender);
end;

procedure TfrmPhoneBookNew.aNextUpdate(Sender: TObject);
begin
   bnNext.Default := pcPages.ActivePageIndex < pcPages.PageCount - 1;
{   for i := 0 to (pcPages.PageCount - 1) do
   begin
      if (not pcPages.Pages[i].TabVisible) then
         inc(h);
   end;  }
//   TAction(Sender).Enabled := pcPages.ActivePageIndex < (pcPages.PageCount - (h+1));
    TAction(Sender).Enabled := pcPages.ActivePageIndex < (pcPages.PageCount - 1);
    if pcPages.ActivePageIndex = 13 then
      TAction(Sender).Enabled := False;
end;

procedure TfrmPhoneBookNew.aOkUpdate(Sender: TObject);
begin
  bnOk.Default := pcPages.ActivePageIndex = pcPages.PageCount - 1;
end;

procedure TfrmPhoneBookNew.setNName;
begin
    if(NName = 0) then
    begin
      qGetNName.Open();
      try
        NName := qGetNNamenextVal.AsInteger;
      finally
        qGetNName.Close();
      end;
    end;
end;


procedure TfrmPhoneBookNew.aOkExecute(Sender: TObject);
begin
   SavePhonebook();
end;

function TfrmPhoneBookNew.SavePhonebook(bFromClose: boolean): boolean;

  procedure SavePhoneBook(AAddNName: Boolean);
  var
    i: Integer;
  begin
    // get nname..
    setNName;

    qPhoneBook.SQLRefresh.Text := 'select * from phonebook where nname = ' + IntToStr(NName);
    if(qPhoneBook.FieldByName('NNAME').AsInteger = 0) then
    begin
      qPhoneBook.FieldByName('NName').ASInteger := NName;
      qPhoneBook.FieldByName('ARCHIVED').AsString := 'N';
//      qPhoneBook.FieldByName('WHICHADDRESS').AsString := 'S';

      // 06/10/2017 AES
      // code added to create contact for specific entity.  Currently only the
      // default entity.
      bNewContact := true;
      with dmAxiom.qryTmp do
      begin
         Close;
         sql.Text := 'insert into PHONEBOOK_ENTITY(nname, entity) values (:nname, :entity)';
         parambyname('nname').asinteger := NName;
         parambyname('entity').asstring := dmAxiom.Entity;
         ExecSql;
      end;
    end;
    if(AAddNName) then
      qPhoneBook.FieldByName('SEARCH').AsString := qPhoneBook.FieldByName('SEARCH').AsString + ' (' + IntToStr(NName) + ')';
    if(qPhoneBook.Modified) then
    begin
      qPhoneBook.FieldByName('MODIFIED_BY').AsString := dmAxiom.UserID;
      qPhoneBook.ApplyUpdates();
      if cbAddToOutlook.Checked then
         SaveDataToMsg;
    end;

    // Save any changes from the event tab
    {
    if (dmMarketEventDataModule.dsParticipantEvents.State = dsEdit) then
      dmMarketEventDataModule.qryParticipantEvents.Post;
    }
    // 29/04/2004 Tony
    // Events have been saved into event_participants table already (that is
    // how the event participant screen works).  Have to explicitly save all
    // participants with nname = 0 to the 'new' nname if creating a new
    // phonebook entry
    if newPBEntry = True then
    begin
      if qryUpdateEventParticipants.Active = True then
        qryUpdateEventParticipants.Close;
      qryUpdateEventParticipants.Params[0].AsInteger := NName;
      qryUpdateEventParticipants.ExecSQL;
    end;

    qTmp.SQL.Text := 'DELETE FROM pbgroupings WHERE nname = :nname';  // AND category = :category';
    qTmp.ParamByName('nname').AsInteger := NName;
    qTmp.ExecSQL();


//    qTmp.SQL.Text := 'DELETE FROM pbgroupings WHERE  nname = :nname and category = :category';
    qTmp2.SQL.Text := 'INSERT INTO pbgroupings (nname, category) VALUES (:nname,:category)';
//    qTmp.ParamByName('nname').AsInteger := NName;
    qTmp2.ParamByName('nname').AsInteger := NName;
    for i := 0 to lbGroups.Count - 1 do
    begin
       if lbGroups.Items.Items[i].Checked then
       begin
          qTmp2.ParamByName('category').AsString := lbGroups.Items.Items[i].Text;  // FAddedGroups[i];
          qTmp2.ExecSQL();
       end;
    end;


//    SaveAllPartyData();
  end;

  procedure SaveClient();
  var
    i: Integer;
  begin
    if(qClient.FieldByName('NCLIENT').AsInteger = 0) then
    begin
      if (SystemString('CONFLICT_CHECK_CONFIRM') = 'Y') then
      begin
         if (lbSearchMatches.Items.Count > 0) then
         begin
            btnPrintConflicts.Click;
            MsgInfo('A conflict has been found and the document has been saved in the documents folder.  Please ensure you check this document.');
         end;
      end;

      NClient := GetSequenceNumber('SQNC_NCLIENT');  //AES 09/08/2017 replaced to use seuence GetSeqnum('NCLIENT');
      qClient.FieldByName('NCLIENT').AsInteger := NClient;
      qClient.FieldByName('MATTERSEQ').AsInteger := 0;
    end
    else
      NClient := qClient.FieldByName('NCLIENT').AsInteger;

    qClient.FieldByName('SEARCH').AsString := Search;
    qClient.FieldByName('GENDER').AsString := qPhoneBook.FieldByName('GENDER').AsString;
    qClient.FieldByName('NAME').AsString   := qPhoneBook.FieldByName('NAME').AsString;
    if qPhoneBook.FieldByName('SALUTATION').IsNull then
      qClient.FieldByName('CONTACT').AsString:= qPhoneBook.FieldByName('GIVENNAMES').AsString + ' ' + qPhoneBook.FieldByName('LASTNAME').AsString
    else
      qClient.FieldByName('CONTACT').AsString:= qPhoneBook.FieldByName('SALUTATION').AsString + ' ' + qPhoneBook.FieldByName('GIVENNAMES').AsString + ' ' + qPhoneBook.FieldByName('LASTNAME').AsString;
    qClient.FieldByName('TAXNO').AsString  := qPhoneBook.FieldByName('ACN').AsString;
//    qClient.SQLRefresh.Text := 'select * from client where search = ' + QuotedStr(Search);
    if(qClient.Modified) then
      qClient.ApplyUpdates();
   // select * from client where search = :new_search

    qClient.SQLRefresh.Text := 'select * from client where search = ' + QuotedStr(Search);

//    qClient.SQLRefresh.Text := 'select * from client where nclient = ' + IntToStr(NClient);

    qTmp.SQL.Text := 'DELETE FROM clientgroupings WHERE nclient = :nclient';  // AND category = :category';
    qTmp.ParamByName('nclient').AsInteger := NClient;
    qTmp.ExecSQL();

//    qTmp.SQL.Text := 'DELETE FROM clientgroupings WHERE  nclient = :nclient and category = :category';
    qTmp2.SQL.Text := 'INSERT INTO clientgroupings (nclient, category) VALUES (:nclient,:category)';
//    qTmp.ParamByName('nclient').AsInteger := NClient;
    qTmp2.ParamByName('nclient').AsInteger := NClient;
    for i := 0 to lbClientGroups.Count - 1 do
    begin
       if (lbClientGroups.Checked[i] = True) then
       begin
         qTmp2.ParamByName('category').AsString := lbClientGroups.Items[i];  // FAddedClientGroups[i];
         qTmp2.ExecSQL();
       end;
    end;

{    for i := 0 to FAddedClientGroups.Count - 1 do
    begin
      qTmp.ParamByName('category').AsString := FAddedClientGroups[i];
      qTmp.ExecSQL();
      qTmp2.ParamByName('category').AsString := FAddedClientGroups[i];
      qTmp2.ExecSQL();
    end;  }

    with qPhoneBook do
    begin
       try
          Edit();
          FieldByName('NCLIENT').AsInteger := NClient;
          FieldByName('CLIENTID').AsString := self.eClientCode.Text; //  qClient.FieldByName('CODE').AsString;
          FieldByName('IS_CLIENT').AsString := 'Y';
          if (SystemString('LOCALE_NAME') <> '') then
             FieldByName('PROSPECTIVE').AsString := 'Y';
          ApplyUpdates();
      finally
         ReopenListUpdate('CLIENT', IntToStr(NClient));  // Search);
      end;
    end;
  end;

  procedure SaveCreditor();
  begin
    if(qCreditor.FieldByName('NCreditor').AsInteger = 0) then
    begin
      NCreditor := GetSequenceNumber('SQNC_NCREDITOR');
      qCreditor.FieldByName('NCREDITOR').AsInteger := NCreditor;
    end;
    qCreditor.FieldByName('SEARCH').AsString := Search;
    qCreditor.FieldByName('NNAME').AsInteger := NName;
    qCreditor.FieldByName('GENDER').AsString := qPhoneBook.FieldByName('GENDER').AsString;
    qCreditor.FieldByName('NAME').AsString   := qPhoneBook.FieldByName('NAME').AsString;
    if qPhoneBook.FieldByName('SALUTATION').IsNull then
      qCreditor.FieldByName('CONTACT').AsString:= qPhoneBook.FieldByName('GIVENNAMES').AsString + ' ' + qPhoneBook.FieldByName('LASTNAME').AsString
    else
      qCreditor.FieldByName('CONTACT').AsString:= qPhoneBook.FieldByName('SALUTATION').AsString + ' ' + qPhoneBook.FieldByName('GIVENNAMES').AsString + ' ' + qPhoneBook.FieldByName('LASTNAME').AsString;
    qCreditor.FieldByName('TAXNO').AsString  := qPhoneBook.FieldByName('ACN').AsString;
    qCreditor.FieldByName('HOLD').AsString   := 'N';
    qCreditor.FieldByName('ENTITY').AsString := dmAxiom.Entity;
    qCreditor.SQLRefresh.Text := 'select * from creditor where nname = ' + IntToStr(NName);
//    qCreditor.SQLRefresh.Text := 'select * from creditor where search = ' + QuotedStr(Search);
    if(qCreditor.Modified) then
       qCreditor.ApplyUpdates();
       
    qPhoneBook.Edit();
    qPhoneBook.FieldByName('NCREDITOR').AsInteger := NCreditor;
    qPhoneBook.FieldByName('IS_CREDITOR').AsString := 'Y';
    qPhoneBook.FieldByName('CREDITORID').AsString := self.eCreditorCode.Text;
    qPhoneBook.ApplyUpdates();
    
    ReopenListUpdate('CREDITOR', IntToStr(ncreditor));
  end;

  procedure SaveInterest();
  var
    count : Integer;
    interestCode: string;
  begin
    // Remove all existing interest for particular phonebook entry
    if qryUpdateInterest.Active then
      qryUpdateInterest.Close;
    qryUpdateInterest.SQL.Clear;
    qryUpdateInterest.SQL.Text := 'DELETE FROM PhoneBookInterest WHERE nname = ' + IntToStr(NName);
    qryUpdateInterest.ExecSQL;
    qryUpdateInterest.Close;

    for count := 0 to (chklistInterest.Items.Count - 1) do
    begin
      if chklistInterest.Items.Items[count].State = cbsChecked then
      // if chklistInterest.Selected[count] = True then
      begin
        // Get the interestcode from the array with the index of count
        // Do a out of bounds check ...
        interestCode := InterestArray.Strings[count];
        // Insert into phonebookinterest table the nname and the interestcode
        qryUpdateInterest.SQL.Clear;
        qryUpdateInterest.SQL.Text := 'INSERT INTO PhoneBookInterest VALUES (' + IntToStr(NName) + ', ' + interestCode + ')';
        qryUpdateInterest.ExecSQL;
        qryUpdateInterest.Close;
        bInterestChanged := False;
      end;
    end;
  end;

  procedure SaveFirmContacts();
  var
    count: Integer;
    firmContact: string;
  begin
    // Remove all existing interest for particular phonebook entry
    if qryUpdateFirmContact.Active then
      qryUpdateFirmContact.Close;
    qryUpdateFirmContact.SQL.Clear;
    qryUpdateFirmContact.SQL.Text := 'DELETE FROM firm_contacts WHERE nname = ' + IntToStr(NName);
    qryUpdateFirmContact.ExecSQL;
    qryUpdateFirmContact.Close;

    for count := 0 to (lbFirmContacts.Items.Count - 1) do
    begin
      if lbFirmContacts.Items.Items[count].State = cbsChecked then
      // if lbFirmContacts.Selected[count] = True then
      begin
        // Get the interestcode from the array with the index of count
        // Do a out of bounds check ...
        FirmContact := FirmContactArray.Strings[count];

        // Insert into phonebookinterest table the nname and the interestcode
        qryUpdateFirmContact.SQL.Clear;
        qryUpdateFirmContact.SQL.Text := 'INSERT INTO firm_contacts VALUES (' + IntToStr(NName) + ', ' + quotedStr(FirmContact) + ')';
        qryUpdateFirmContact.ExecSQL;
        qryUpdateFirmContact.Close;
        bFirmContactsChanged := False;
      end;
    end;
  end;
var
  LSearchCheckResult: Integer;
  LfrmClients: TfrmClients;
  bCancelled: boolean;
begin
  LSearchCheckResult := -1;
   ModalResult := mrNone;
   bCancelled := False;

   // here check for completeness of entry.
   CheckEditSearchChange();

   if not OKtoPost() then
   begin
      Result := False;
      Exit;
   end;

   if eInternetEmail.Text = '' then
   begin
      if MsgWarn('Email Address is blank. Would you like to enter an email Address?') = mrYes then
      begin
         Result := False;
         Exit;
      end;
   end;

   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      if(MasterNName = 0) then
         if(not CheckhasGroup()) then
            Exit;
      if(tsClient.TabVisible) then
         if(not CheckClient()) then
            Exit;

      if(tsCreditor.TabVisible) then
         if(not CheckCreditor()) then
            Exit;

      if (qPhoneBook.Modified) or (qClient.Modified) or
         (qCreditor.Modified) or (dmMarketEventDataModule.qryParticipantEvents.Modified) or
         (bInterestChanged) or (bFirmContactsChanged) or (bGroupChanged) or
         (bChildrenChanged) or (bMatterDataChanged) then
      begin
         if (bCancelled = False) then
         begin
            if (dmMarketEventDataModule.qryParticipantEvents.Modified = true) then
               dmMarketEventDataModule.qryParticipantEvents.Post;

            SavePhoneBook(LSearchCheckResult = mrIgnore);

            // Save party data
            SaveAllPartyData();

            // save firm contacts if any
            SaveFirmContacts();

            // Save interests (if any)
            SaveInterest();

            // client.
            if(tsClient.TabVisible) then //  and (qClient.Modified) then
            begin
               SaveClient();
            end;

            SaveChildren();

            // creditor
            if(tsCreditor.TabVisible) then  // and (qCreditor.Modified) then
               SaveCreditor();

            ReopenListUpdate('PHONEBOOK', IntToStr(NNAME));

            if((FOldSearch <> '') and (FNewSearch <> '')) then
            begin
      //       qTmp.SQL.Text := 'ALTER TRIGGER client_search_change DISABLE';
      //       qTmp.ExecSQL();
               qTmp.SQL.Text := 'UPDATE client   SET search = :newsearch WHERE nclient = :NClient';
               qTmp.ParamByName('newsearch').AsString := FNewSearch;
               qTmp.ParamByName('NClient').AsInteger := NClient;
               qTmp.ExecSQL();

               qTmp.SQL.Clear;
               qTmp.SQL.Text := 'UPDATE creditor SET search = :newsearch WHERE nname = :NName';
               qTmp.ParamByName('newsearch').AsString := FNewSearch;
               qTmp.ParamByName('NName').AsInteger := NName;
               qTmp.ExecSQL();

            end;

            if (qryMasterPhoneBookEntry.FieldByName('NNAME').AsInteger <> qPhoneBook.FieldByName('NNAMEMASTER').AsInteger) then
            begin
               qTmp.SQL.Text := 'UPDATE phonebook SET nnamemaster = :master WHERE nname = :nname';

               if (qPhoneBook.FieldByName('NNAMEMASTER').AsInteger = 0) then
                 qTmp.ParamByName('MASTER').Clear
               else
                 qTmp.ParamByName('MASTER').AsInteger := qryMasterPhoneBookEntry.FieldByName('NNAME').AsInteger;

               qTmp.ParamByName('NNAME').AsInteger := FNName;
               qTmp.ExecSQL();

            end;    //  end if

            if FClientFromPhonebook then
            begin
               LfrmClients := TfrmClients.Create(frmDesktop);
               LfrmClients.DisplayClient(NClient);
            end;
         end;
     end;
   finally
      dmAxiom.uniInsight.Commit;
   end;

//  if not bCancelled then
//     dmAxiom.uniInsight.Commit;

  bGroupChanged := False;
  bChildrenChanged := False;
  ModalResult := mrOk;

  bPhonebookModified := False;
  bClientModified := False;
  bCreditorModified := False;

  if(not (fsModal in FormState)) and ( not bFromClose ) then
    Close();
end;

procedure TfrmPhoneBookNew.aCancelExecute(Sender: TObject);
begin
   ModalResult := mrCancel;
//  if(qPhonebook.Modified) then
//    qPhoneBook.Cancel();

  // 30/04/2004 Tony
  // Remove and events (participants) that were added
  // for a new phonebook entry
   if newPBEntry = True then
   begin
      if qryFlushEventParticipants.Active = True then
         qryFlushEventParticipants.Close;
      qryFlushEventParticipants.Params[0].AsInteger := NName;
      qryFlushEventParticipants.ExecSQL;
   end;
   // 06/10/2017   AES
   // delete contact_entity entry if exists
   if bNewContact = true then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         sql.Text := 'delete from PHONEBOOK_ENTITY where nname = :nname and entity = :entity';
         parambyname('nname').asinteger := NName;
         parambyname('entity').asstring := dmAxiom.Entity;
         ExecSql;
      end;
   end;

   if(not (fsModal in FormState)) then
      Close();
end;

procedure TfrmPhoneBookNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
   bCanClose: boolean;
   MsgResult: integer;
begin
   bCanClose := True;
//   if(dsPhoneBook.State in [dsEdit, dsInsert]) then
   if ((bPhonebookModified = True) or (bClientModified = True) or
      (bCreditorModified = True) or (dmMarketEventDataModule.qryParticipantEvents.Modified) or
      (bInterestChanged) or (bFirmContactsChanged) or (bGroupChanged) or
      (bChildrenChanged) or (bMatterDataChanged)) and (bFromConflictCreate = False) then
   begin
      MsgResult := MsgAskCancel('There are unsaved changes. Do you want to save changes?');
      Case MsgResult of
         mrYes:
            begin
               if not SavePhonebook(True) then
               begin
                 bCanClose := False;
                 Action := caNone;
               end;
            end;
         mrCancel:
            begin
               bCanClose := False;
               bPhonebookModified := False;
               bClientModified := False;
               bCreditorModified := False;
               Action := caNone;
            end;
      End;
   end;

//   SavePhonebook(True);
   if bCanClose then
   begin
      try
         InterestArray.Free;
         FirmContactArray.Free;
         tDebtorStatus.Close;
         qryRelationship_Type.Close;
         qryRelationshipStatus.Close;
         qryRelationshipAction.Close;
         qrySuperClient.Close;
         qryPhonebookStatus.Close;
         qryDebtorStatus.Close;
      except
         // just in case
      end;
   end;

   if (not (fsModal in FormState)) then
      Action := caFree
   else
      if bFromConflictCreate = True then
         ModalResult := mrOk;

end;

procedure TfrmPhoneBookNew.FormShow(Sender: TObject);
var
  iMaxLength: Integer;
  sCustomAddressLabel: string;
begin
   iMaxLength := 0;
   GetLabel(lPhoneWork,'PHONEBOOK','WORKPHONE',imaxLength, 'Work');
   GetLabel(lPhoneMobile,'PHONEBOOK','MOBILE',imaxLength, 'Mobile');
   GetLabel(lPhoneFax,'PHONEBOOK','FAX',imaxLength, 'Fax');
   GetLabel(lPhoneHome,'PHONEBOOK','HOMEPHONE',imaxLength, 'Home');
   GetLabel(lPhoneDirect,'PHONEBOOK','DIRECT', imaxLength, 'Direct');
   if tsClient.TabVisible then
      GetLabel(lblServicePartner, 'MATTER', 'PARTNER', imaxLength, 'Service Partner');

//   qryEmployee.Open;

   sCustomAddressLabel := GetDisplayName('PHONEBOOK', 'CUSTOM ADDRESS');
   if sCustomAddressLabel <> '' then
   begin
      tsCustomAddress.Caption := sCustomAddressLabel;
      lblCustomAddress.Caption := sCustomAddressLabel;
   end;
   if (qGender.State = dsInactive) then
      qGender.Open();

   qrySuperClient.Open;   
   if FDoShow then
      DoShow
   else
   begin
      qPhoneBook.Close;
      qPhoneBook.ParamByName('nname').AsInteger := NName;
      qPhoneBook.Open();
      qPhoneBook.Append();

      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsName);
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsMainAddress);
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsClient);
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsPhone);
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsMarketing);
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsCRM);
      SetReqFieldsColour('CLIENT',qClient, tabClientTemplates);
      SetReqFieldsColour('CLIENT',qclient, tabClientcontrols);
      SetReqFieldsColour('CLIENT',qClient, tabDebtor);

      cbGender.EditValue := qGender.FieldByName('CODE').AsString;
      cbGenderPropertiesChange(cbGender);

      newPBEntry := False;
      qGroups.Close;
      qGroups.ParamByName('nname').AsInteger := NName;
      qGroups.Open();
      lbGroups.Clear();
      try
        while(not qGroups.Eof) do
        begin
          with lbGroups.Items.Add do
          begin
            Text := qGroupsCATEGORY.AsString;
            if (qGroupsCATEGORY.AsString <> FClientCreateGroup) and
               ((qGroupsHASGROUP.AsString = 'True') or
               (FInitialGroups.IndexOf(qGroupsCATEGORY.AsString) > -1) or
               ((qGroupsCATEGORY.AsString = dmAxiom.Def_PhonebookGrp) and (NName = 0))) then
            begin
               State := cbsChecked;
               lbGroups.ItemIndex := lbGroups.Items.IndexOf(qGroupsCATEGORY.AsString);
               lbGroupsClickCheck(lbGroups,lbGroups.ItemIndex,cbsUnChecked, cbsChecked);
            end
            else
               State := cbsUnChecked;

          end;

          if(qGroupsCATEGORY.AsString = FClientCreateGroup) then
            FRemovedGroups.Add(FClientCreateGroup);

          qGroups.Next();
        end;
      finally
        qGroups.Close();
        bGroupChanged := False;
      end;
        // Open queries for industry and interest drop downs
      qryInterest.Open;

      qryIndustry.Open;
      // Marketing group box initialisation
      // Open referredBy query to populate referral type drop down (in others tab)
      qryReferredBy.Open;
      qryEmployee.Open;
      qryReferralOther.Open;       
   end;
   //set nname if zero
   setNName;
   RefreshConflictSearchDocs
end;

procedure TfrmPhoneBookNew.DoShow;
var
  LIndex: Integer;
  sCustomAddressLabel: string;
  sReferralType: string;

  procedure LoadPBData();
  var
    count : Integer;
  begin
    FCurrentChildNNames.Clear();
    FDeletedChildNNames.Clear();

    vtCustomData.RootNodeCount := 0;
    vtMatterData.RootNodeCount := 0;

//    qGender.Open();

    try
      if qPhonebook.State <> dsBrowse then
         qPhoneBook.close;
    except
       // silent exception
    end;
    qPhoneBook.ParamByName('nname').AsInteger := NName;
    qPhoneBook.Open();

    SetReqFieldsColour('PHONEBOOK',qPhonebook, tsName);
    SetReqFieldsColour('PHONEBOOK',qPhonebook, tsMainAddress);
    SetReqFieldsColour('PHONEBOOK',qPhonebook, tsClient);
    SetReqFieldsColour('PHONEBOOK',qPhonebook, tsPhone);
    SetReqFieldsColour('PHONEBOOK',qPhonebook, tsMarketing);
    SetReqFieldsColour('PHONEBOOK',qPhonebook, tsCRM);
    SetReqFieldsColour('CLIENT',qClient, tabClientTemplates);
    SetReqFieldsColour('CLIENT',qclient, tabClientcontrols);
    SetReqFieldsColour('CLIENT',qClient, tabDebtor);

    if(NName = 0) then
    begin
      qPhoneBook.Append();
//      eSearch.Enabled := True;
      newPBEntry := True;
      qPhoneBook.SQLRefresh.Text := 'Select * from phonebook where nname = :old_nname';
//      qPhoneBook.SQLRefresh.Text := 'Select * from phonebook where search = :old_search';

      //tsEventList.TabVisible := False;
      if(MasterNName > 0) then
      begin
        qPhoneBook.FieldByName('NNAMEMASTER').AsInteger := MasterNName;
        qryMasterPhoneBookEntry.Close;
        qryMasterPhoneBookEntry.ParamByName('NNAMEMASTER').AsInteger := qPhoneBook.FieldByName('NNAMEMASTER').AsInteger;
        qryMasterPhoneBookEntry.Open;
      end;
    end else
    begin
//      qPhoneBook.Edit();
//      eSearch.Enabled := False;
      newPBEntry := False;
      tsEventList.TabVisible := True;
      qPhoneBook.SQLRefresh.Text := 'Select * from phonebook where nname = :old_nname';
      if(FNClient = -1) and (qPhoneBook.FieldByName('NCLIENT').AsInteger > 0) then
        SetupForClient(qPhoneBook.FieldByName('NCLIENT').AsInteger);
//      tsChildren.TabVisible := True;
//      tsChildren.Visible    := True;

      if(MasterNName > 0) then
      begin
        if(not qPhonebook.FieldByName('NNAMEMASTER').IsNull) then
        begin
          qryMasterPhoneBookEntry.Close;
          qryMasterPhoneBookEntry.ParamByName('NNAMEMASTER').AsInteger := qPhonebook.FieldByName('NNAMEMASTER').AsInteger;
          qryMasterPhoneBookEntry.Open;
          if MessageDlg('This phonebook entry already has a master (''' + qryMasterPhoneBookEntry.FieldByName('NAME').AsString + ''')'#13#10'Do you want to override this?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
            MasterNName := 0;
        end;

        qryMasterPhoneBookEntry.Close;
        qPhoneBook.FieldByName('NNAMEMASTER').AsInteger := MasterNName;
        qryMasterPhoneBookEntry.ParamByName('NNAMEMASTER').AsInteger := qPhoneBook.FieldByName('NNAMEMASTER').AsInteger;
        qryMasterPhoneBookEntry.Open;

      end else if(not qPhonebook.FieldByName('NNAMEMASTER').IsNull) then
      begin
        qryMasterPhoneBookEntry.Close;
        qryMasterPhoneBookEntry.ParamByName('NNAMEMASTER').AsInteger := qPhonebook.FieldByName('NNAMEMASTER').AsInteger;
        qryMasterPhoneBookEntry.Open;
      end;

      qChildren.ParamByName('nname').AsInteger := NName;
      qChildren.Open();
      try
        while(not qChildren.Eof) do
        begin
          FCurrentChildNNames.Add(qChildren.FieldByName('NNAME').AsString);
          qChildren.Next();
        end;
      finally
        qChildren.Close();
      end;

    end;

    qGroups.ParamByName('nname').AsInteger := NName;
    qGroups.Open();
    lbGroups.Clear();
    try
      while(not qGroups.Eof) do
      begin
        with lbGroups.Items.Add do
         begin
            Text := qGroups.FieldByName('CATEGORY').AsString;
            if (qGroups.FieldByName('CATEGORY').AsString <> FClientCreateGroup) and
               ((qGroups.FieldByName('HASGROUP').AsString = 'True') or
               (FInitialGroups.IndexOf(qGroups.FieldByName('CATEGORY').AsString) > -1) or
               ((qGroups.FieldByName('CATEGORY').AsString = dmAxiom.Def_PhonebookGrp) and (NName = 0))) then
            begin
               State := cbsChecked;
               lbGroups.ItemIndex := lbGroups.Items.IndexOf(qGroups.FieldByName('CATEGORY').AsString);
               lbGroupsClickCheck(lbGroups,lbGroups.ItemIndex,cbsUnChecked, cbsChecked);
            end
            else
               State := cbsUnChecked;
         end;

        if(qGroups.FieldByName('CATEGORY').AsString = FClientCreateGroup) then
          FRemovedGroups.Add(FClientCreateGroup);

        qGroups.Next();
      end;
    finally
      qGroups.Close();
      bGroupChanged := False;
    end;
    FLastEnteredName := Trim(qPhoneBook.FieldByName('SALUTATION').AsString + ' ' + qPhoneBook.FieldByName('GIVENNAMES').AsString + ' ' + qPhoneBook.FieldByName('LASTNAME').AsString);
    cbGender.EditValue := qGender.FieldByName('CODE').Value;
    cbGenderPropertiesChange(cbGender);

    // Open queries for industry and interest drop downs
    qryInterest.Open;
    qryIndustry.Open;

    // Determine which industry is set
    if (not qryIndustry.Eof) AND (not varIsNull(qPhoneBook.FieldByName('IndustryCode').AsString)) then
    begin
      cmbIndustry.EditValue := qPhoneBook.FieldByName('IndustryCode').AsInteger;
    end;

    // Determine which interest are set
    qryUpdateInterest.SQL.Text := 'SELECT nname, interestcode FROM PhoneBookInterest WHERE nname = ' + IntToStr(NName);
    qryUpdateInterest.Open;


    // Make array to store index of interest
    while not qryUpdateInterest.Eof do
    begin
//      InterestArray[count] := qryInterest.FieldByName('code').AsInteger;

      // Add item to check list box
//      chklistInterest.AddItem(qryInterest.FieldByName('interest').AsString);
      for Count := 0 to InterestArray.Count - 1 do
      begin
        if InterestArray.Strings[count] = qryUpdateInterest.FieldByName('interestcode').AsString then
        begin
            chklistInterest.Items.Items[count].State := cbsChecked;
//            exit;
         end;
      end;


      qryUpdateInterest.Next;
    end;

    // Determine which Firm Contacts are set
    qryUpdateFirmContact.SQL.Text := 'SELECT nname, emp_code FROM firm_contacts WHERE nname = ' + IntToStr(NName);
    qryUpdateFirmContact.Open;

    qryEmpList.Open;
    qryEmpList.First;

    qryUpdateFirmContact.First;
    while not qryUpdateFirmContact.Eof do
    begin

      // Determine if to check
      for Count := 0 to FirmContactArray.Count - 1 do
      begin
        if FirmContactArray.Strings[count] = qryUpdateFirmContact.FieldByName('emp_code').AsString then
        begin
            lbFirmContacts.Items.Items[count].State := cbsChecked;
//            exit;
         end;
      end;


      qryUpdateFirmContact.Next;
//      Inc(count);
    end;
    qryUpdateFirmContact.Close;

    // Marketing group box initialisation
    // Open referredBy query to populate referral type drop down (in others tab)
    cmbReferral.Properties.OnChange := nil;
    qryReferredBy.Open;
    cmbReferral.Properties.OnChange := cmbReferralPropertiesChange;

    cmbMaintainer.Properties.OnChange := nil;
    qryEmployee.Open;
    cmbMaintainer.Properties.OnChange := cmbMaintainerPropertiesChange;

    qryReferralOther.Open;

    // Show the marketing group box since marketing should be placed
    // against client only
    grpMarketing.Visible := True;

    if (not qPhoneBook.FieldByName('ReferralCode').isNull) AND (length(qPhoneBook.FieldByName('ReferralCode').AsString) > 0) then
    begin
      cmbReferral.EditValue := qPhoneBook.FieldByName('ReferralCode').AsString;
      if qPhoneBook.FieldByName('ReferralCode').AsString = '0' then
      begin
         edReferredBy.Visible := False;
         lblReferredBy.Visible := True;
         cmbReferralOther.Visible := True;
         qryReferralOther.Open;
      end
      else
      begin
         lblReferredBy.Visible := True;
         edReferredBy.Visible := True;
      end;

      sReferralType := qPhoneBook.FieldByName('ReferralType').AsString;
      if UpperCase(sReferralType) = 'CONTACT' then
         edReferredBy.Caption := TableString('PHONEBOOK','NNAME',qPhoneBook.FieldByName('ReferredBy').AsString,'SEARCH')
      else if UpperCase(sReferralType) = 'CLIENT' then
         edReferredBy.Caption := TableString('CLIENT','CODE',qPhoneBook.FieldByName('ReferredBy').AsString,'SEARCH')
      else if UpperCase(sReferralType) = 'EMPLOYEE' then
         edReferredBy.Caption := qPhoneBook.FieldByName('ReferredBy').AsString + '(' + qPhoneBook.FieldByName('ReferredBy').AsString + ')'
      else if UpperCase(sReferralType) = 'OTHER' then
         edReferredBy.Caption := qPhoneBook.FieldByName('ReferredBy').AsString;


    end;

    if not varIsNull(qPhoneBook.FieldByName('ReferralMaintainer').AsString) then
      cmbMaintainer.EditValue := qPhoneBook.FieldByName('ReferralMaintainer').AsString;


  end;

  procedure LoadClientData();
  begin
    qClient.ParamByName('NCLIENT').AsInteger := NClient;
    qClient.Open();
    if(NClient = 0) then
    begin

    end else
    begin
      qClient.Edit();
    end;

    if(qCodeRules.Active = False) then
    begin
      qCodeRules.ParamByName('ENTITY').AsString := dmAxiom.Entity;
      qCodeRules.Open();
    end;

    qActiveEmployees.Open();
    qPartners.Open();
    qFeeCode.Open();
    qBillTemplate.Open();

    qClientGroups.ParamByName('NCLIENT').Value := NClient;
    qClientGroups.Open();

    lbClientGroups.Clear();
    try
      while(not qClientGroups.Eof) do
      begin
        LIndex := lbClientGroups.Items.Add(qClientGroups.FieldByName('CATEGORY').AsString);
        lbClientGroups.Checked[LIndex] := (qClientGroups.FieldByName('HASGROUP').AsString = 'True');
        FInitialClientGroups.Add(qClientGroups.FieldByName('CATEGORY').AsString);
        if(lbClientGroups.Checked[LIndex]) then
        begin
          lbClientGroups.ItemIndex := LIndex;
        end;
        qClientGroups.Next();
      end;
    finally
      qClientGroups.Close();
    end;
    if(NClient = 0) then
    begin
      Caption := 'New Client Entry';
    end
    else
      Caption := 'Edit Client Entry';
    if (SystemString('ENFORCE_CLIENT_PACK') = 'Y') and
       ((qClient.FieldByName('CLIENT_PACK').IsNull) or
       (qClient.FieldByName('CLIENT_PACK').AsString = 'SCCO')) then
    begin
       cmbAllowMatters.Text := 'Ban';
       cmbAllowMatters.Enabled := False;
    end;

    FLowercaseCaption := 'client';
  end;

  procedure LoadCreditorData();
  begin
    qCreditor.Close;
    qCreditor.ParamByName('NCreditor').AsInteger := NCreditor;
    qCreditor.Open();
    if(NCreditor = 0) then
    begin
      qCreditor.Append();
    end else
    begin
      qCreditor.Edit();
    end;
    if(qCodeRules.Active = False) then
    begin
      qCodeRules.ParamByName('ENTITY').AsString := dmAxiom.Entity;
      qCodeRules.Open();
    end;
    if(NCreditor = 0) then
      Caption := 'New Creditor Entry'
    else
      Caption := 'Edit Creditor Entry';
    FLowercaseCaption := 'creditor';
  end;

  function GetNNameFromNCreditor(ASearch: Integer): Integer;
  begin
    qTmp.SQL.Text := 'select nname from creditor where ncreditor = :search';
    qTmp.ParamByName('search').AsInteger := ASearch;
    qTmp.Open();
    try
      Result := qTmp.FieldByName('nname').AsInteger;
    finally
      qTmp.Close();
    end;
  end;
  function GetNNameFromNClient(ASearch: Integer): Integer;
  begin
    qTmp.SQL.Text := 'select nname from phonebook where nclient = :search ';
    qTmp.ParamByName('search').AsInteger := ASearch;
    qTmp.Open();
    try
      Result := qTmp.FieldByName('nname').AsInteger;
    finally
      qTmp.Close();
    end;
  end;
begin
   Screen.Cursor := crSQLWait;

   sCustomAddressLabel := GetDisplayName('PHONEBOOK', 'CUSTOM ADDRESS');
   if sCustomAddressLabel <> '' then
   begin
      tsCustomAddress.Caption := sCustomAddressLabel;
      lblCustomAddress.Caption := sCustomAddressLabel;
   end;
   // creditor stuff

  if (NCreditor > -1) {(TableString('PHONEBOOK', 'NNAME', NNAME, 'IS_CREDITOR') = 'Y') {(NCreditor > -1)} then
  begin
    LoadCreditorData();
    if(qCreditor.FieldByName('SEARCH').AsString <> '') then
    begin
      NName := qCreditor.FieldByName('NNAME').AsInteger;
      if(NName = 0) then
        NName := GetNNameFromNCreditor(NCreditor);
    end;
    LoadPBData();
  end
  else
  begin
     LoadPBData();
     if ((TableString('PHONEBOOK', 'NNAME', NNAME, 'IS_CREDITOR') = 'N') and (dmAxiom.Security.Creditor.Create = True)) then
        pbConvertToCreditor.Visible := True;

  end;

  // client stuff
  if (NClient > -1) {(TableString('PHONEBOOK', 'NNAME', NNAME, 'IS_CLIENT') = 'Y')  {(NClient > -1)} then
  begin
      LoadClientData();
      if(qClient.FieldByName('SEARCH').AsString <> '') then
        NName := GetNNameFromNClient(NClient);
      LoadPBData();
//      pbConvertToClient.Visible := True;
  end else
  begin
     LoadPBData();
     if (TableString('PHONEBOOK', 'NNAME', NNAME, 'IS_CLIENT') = 'Y')  {(NClient > -1)} then
        LoadClientData()
     else
        if NOT (SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) AND (NName <> 0)  then
           pbConvertToClient.Visible := True;

     if (NName = 0) then
     begin
        Caption := 'New Contact Entry';
     end
     else
     begin
        Caption := 'Edit Contact Entry';
     end;
     FLowercaseCaption := 'contact';
  end;
  btnAddEvent.Enabled := True;

  FOldSearch := Search;

  // Tony
  if dmMarketEventDataModule.qryParticipantEvents.Active = True then
    dmMarketEventDataModule.qryParticipantEvents.Close();
  dmMarketEventDataModule.qryParticipantEvents.ParamByName('NNAME').AsInteger := FNNAME;
  dmMarketEventDataModule.qryParticipantEvents.Open();
  Screen.Cursor := crDefault;
end;

procedure TfrmPhoneBookNew.eGivenNamesChange(Sender: TObject);
var
  LLast: String;
begin
  if(dsPhoneBook.State in [dsEdit, dsInsert]) then
  begin
    if eLastName.Text <> '' then
    begin
       LLast := FLastEnteredName;
       if((eName.Text = LLast) or (Length(eName.Text) = 0)) then
       begin
         FLastEnteredName := Trim(eSalutation.Text + ' ' + eGivenNames.Text + ' ' + eLastName.Text);
         qPhoneBook.FieldByName('NAME').AsString := FLastEnteredName;
       end;

       qPhoneBook.FieldByName('TITLE').AsString := FLastEnteredName;

       FLikeThread.TSearch := MakeName();
    end;
  end;
end;

procedure TfrmPhoneBookNew.tsNameShow(Sender: TObject);
begin
   ActiveControl := cbGender;
   if qPhonebook.Active then
      updateControlsForMasterLink;
   SetReqFieldsColour('PHONEBOOK',qPhonebook, tsName);
   SetReqFieldsColour('CLIENT',qClient, tsClient);
   tsName.Invalidate;
end;

procedure TfrmPhoneBookNew.eStreetSuburbButtonClick(Sender: TObject);
var
  LfmPostCode: TfrmPostcodeSearch;
begin
  LfmPostCode := TfrmPostcodeSearch.Create(Self);
  try
    LfmPostCode.BorderStyle := bsDialog;

    if(Sender = eStreetSuburb) then
      LfmPostCode.tbSuburbSearch.Text := eStreetSuburb.Text
    else
      LfmPostCode.tbSuburbSearch.Text := ePostalSuburb.Text;
    LfmPostCode.tbSuburbSearchChange(LfmPostCode.tbSuburbSearch);

    if(LfmPostCode.ShowModal() = mrOK) then
    begin
      if(Sender = eStreetSuburb) then
      begin
        qPhoneBook.FieldByName('SUBURB').AsString   := LfmPostCode.qryPostcodes.FieldByName('SUBURB').AsString;
        qPhoneBook.FieldByName('STATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
        qPhoneBook.FieldByName('POSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
      end
      else if(Sender = ePostalSuburb) then
      begin
        qPhoneBook.FieldByName('POSTALSUBURB').AsString   := LfmPostCode.qryPostcodes.FieldByName('SUBURB').AsString;
        qPhoneBook.FieldByName('POSTALSTATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
        qPhoneBook.FieldByName('POSTALPOSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
      end
      else
      begin
        qPhoneBook.FieldByName('CUST_SUBURB').AsString   := LfmPostCode.qryPostcodes.FieldByName('SUBURB').AsString;
        qPhoneBook.FieldByName('CUST_STATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
        qPhoneBook.FieldByName('CUST_POSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
      end;
    end;
  finally
    FreeAndNil(LfmPostCode);
  end;
end;

procedure TfrmPhoneBookNew.tsAddressShow(Sender: TObject);
begin
//  ActiveControl := mStreetAddress;
  if(dsPhoneBook.State in [dsEdit, dsInsert]) then
  begin
    if(qPhoneBook.FieldByName('WHICHADDRESS').IsNull) { or (not (char(qPhoneBook.FieldByName('WHICHADDRESS').Value[1]) in ['P','S','D','C'])))} then
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'S';
//    qPhoneBookAfterScroll(qPhoneBook);
  end;
end;

procedure TfrmPhoneBookNew.aCopyAddressDownExecute(Sender: TObject);
begin
   if qPhoneBook.State = dsBrowse then
      qPhoneBook.Edit;
   qPhoneBook.FieldByName('POSTALADDRESS').AsString  := qPhoneBook.FieldByName('ADDRESS').AsString;
   qPhoneBook.FieldByName('POSTALSUBURB').AsString   := qPhoneBook.FieldByName('SUBURB').AsString;
   qPhoneBook.FieldByName('POSTALSTATE').AsString    := qPhoneBook.FieldByName('STATE').AsString;
   qPhoneBook.FieldByName('POSTALPOSTCODE').AsString := qPhoneBook.FieldByName('POSTCODE').AsString;
   qPhoneBook.FieldByName('POSTALCOUNTRY').AsString  := qPhoneBook.FieldByName('COUNTRY').AsString;
end;

procedure TfrmPhoneBookNew.aCopyAddressUpExecute(Sender: TObject);
begin
   if qPhoneBook.State = dsBrowse then
      qPhoneBook.Edit;
   qPhoneBook.FieldByName('ADDRESS').AsString  := qPhoneBook.FieldByName('POSTALADDRESS').AsString;
   qPhoneBook.FieldByName('SUBURB').AsString   := qPhoneBook.FieldByName('POSTALSUBURB').AsString;
   qPhoneBook.FieldByName('STATE').AsString    := qPhoneBook.FieldByName('POSTALSTATE').AsString;
   qPhoneBook.FieldByName('POSTCODE').AsString := qPhoneBook.FieldByName('POSTALPOSTCODE').AsString;
   qPhoneBook.FieldByName('COUNTRY').AsString  := qPhoneBook.FieldByName('POSTALCOUNTRY').AsString;
end;

procedure TfrmPhoneBookNew.CRTemp_qPhoneBookAfterScroll(DataSet: TDataSet);
begin
  FScrolling := True;
  try
    ckStreetDefault.Checked := False;
    ckPostalDefault.Checked := False;
    ckDXDefault.Checked := False;
    ckCustomDefault.Checked := False;
    if(not qPhoneBook.FieldByName('WHICHADDRESS').IsNull) then
    begin
      if qPhoneBook.FieldByName('WHICHADDRESS').AsString  = 'S' then
         ckStreetDefault.Checked := True
      else
      if qPhoneBook.FieldByName('WHICHADDRESS').AsString  = 'P' then
         ckPostalDefault.Checked := True
      else
      if qPhoneBook.FieldByName('WHICHADDRESS').AsString  = 'D' then
         ckDXDefault.Checked := True
      else
      if qPhoneBook.FieldByName('WHICHADDRESS').AsString  = 'C' then
         ckCustomDefault.Checked := True
      else
        ckStreetDefault.Checked := True;
    end
    else
      ckStreetDefault.Checked := True;
    // check email default setting
    ckEmailDefault.Checked := False;
    ckEmail1Default.Checked := False;
    ckEmail2Default.Checked := False;
    if(not qPhoneBook.FieldByName('WHICHEMAILADDRESS').IsNull) then
    begin
      if qPhoneBook.FieldByName('WHICHEMAILADDRESS').AsString  = '1' then
         ckEmailDefault.Checked := True
      else
      if qPhoneBook.FieldByName('WHICHEMAILADDRESS').AsString  = '2' then
         ckEmail1Default.Checked := True
      else
      if qPhoneBook.FieldByName('WHICHEMAILADDRESS').AsString  = '3' then
         ckEmail2Default.Checked := True
      else
        ckEmailDefault.Checked := True;
    end
    else
      ckEmailDefault.Checked := True;

    // check phone default setting
    chkPhoneWork.Checked := False;
    chkPhoneMobile.Checked := False;
    chkPhoneDirect.Checked := False;
    chkPhoneHome.Checked := False;
    if(not qPhoneBook.FieldByName('WHICHPHONE').IsNull) then
    begin
      if qPhoneBook.FieldByName('WHICHPHONE').AsString  = 'W' then
         chkPhoneWork.Checked := True
      else
      if qPhoneBook.FieldByName('WHICHPHONE').AsString  = 'M' then
         chkPhoneMobile.Checked := True
      else
      if qPhoneBook.FieldByName('WHICHPHONE').AsString  = 'D' then
         chkPhoneDirect.Checked := True
      else
      if qPhoneBook.FieldByName('WHICHPHONE').AsString  = 'H' then
         chkPhoneHome.Checked := True
      else
        ckEmailDefault.Checked := True;
    end
    else
      chkPhoneWork.Checked := True;
  finally
    FScrolling := False;
  end;
end;

procedure TfrmPhoneBookNew.RefreshConflictSearchDocs;
begin
  qryPhoneBookConflictDocs.Close;
  qryPhoneBookConflictDocs.ParamByName('NName').AsInteger := FNName;
  qryPhoneBookConflictDocs.Open;
  lbConflicts.Clear;
  while not qryPhoneBookConflictDocs.Eof do
  begin
    lbConflicts.Items.Add(
        qryPhoneBookConflictDocs.FieldByName('description').AsString + ' '
      + qryPhoneBookConflictDocs.FieldByName('search_text').AsString + ' '
      + qryPhoneBookConflictDocs.FieldByName('SystemDate').AsString);
    qryPhoneBookConflictDocs.Next;
  end;
end;

procedure TfrmPhoneBookNew.AddConflictDocument(NConflictDocID: Integer);
begin
  qryInsertPhoneBookConflictDoc.ParamByName('NName').AsInteger := FNName;
  qryInsertPhoneBookConflictDoc.ParamByName('DocID').AsInteger := NConflictDocID;
  qryInsertPhoneBookConflictDoc.ExecSQL;
  RefreshConflictSearchDocs;
end;

procedure TfrmPhoneBookNew.ActAddConflictDocExecute(Sender: TObject);
var
  frmConflictSelect: TFrmConflictSelect;
begin
  frmConflictSelect := TFrmConflictSelect.Create(nil);
  try
    if frmConflictSelect.ShowModal = mrOK then
      AddConflictDocument(frmConflictSelect.ConflictDocID);
  finally
    frmConflictSelect.Release;
  end;
end;

procedure TfrmPhoneBookNew.ckDefaultClick(Sender: TObject);
begin
  if(FScrolling) then
    Exit;
  if qPhoneBook.State in [dsBrowse] then
     qPhoneBook.Edit;
  if(TCheckBox(Sender).Checked) then
  begin
    if((Sender = ckStreetDefault) and (ckStreetDefault.Checked)) then
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'S';
    if((Sender = ckPostalDefault) and (ckPostalDefault.Checked)) then
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'P';
    if((Sender = ckDXDefault) and (ckDXDefault.Checked)) then
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'D';
    if((Sender = ckCustomDefault) and (ckCustomDefault.Checked)) then
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'C';
  end else
  begin
    if(Sender = ckStreetDefault) then
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'P'
    else if(Sender = ckPostalDefault) then
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'D'
    else if (Sender = ckDXDefault) then
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'S'
    else
      qPhoneBook.FieldByName('WHICHADDRESS').Value := 'C'
  end;

//  qPhoneBookAfterScroll(qPhoneBook);
   CRTemp_qPhoneBookAfterScroll(qPhonebook);
end;

procedure TfrmPhoneBookNew.ckEmailDefaultClick(Sender: TObject);
begin
  if(FScrolling) then
    Exit;
  if qPhoneBook.State in [dsBrowse] then
     qPhoneBook.Edit;

  if(TCheckBox(Sender).Checked) then
  begin
    if((Sender = ckEmailDefault) and (ckEmailDefault.Checked)) then
      qPhoneBook.FieldByName('WHICHEMAILADDRESS').Value := '1';
    if((Sender = ckEmail1Default) and (ckEmail1Default.Checked)) then
      qPhoneBook.FieldByName('WHICHEMAILADDRESS').Value := '2';
    if((Sender = ckEmail2Default) and (ckEmail2Default.Checked)) then
      qPhoneBook.FieldByName('WHICHEMAILADDRESS').Value := '3';
  end else
  begin
    if(Sender = ckEmailDefault) then
      qPhoneBook.FieldByName('WHICHEMAILADDRESS').Value := '1'
    else if(Sender = ckEmail1Default) then
      qPhoneBook.FieldByName('WHICHEMAILADDRESS').Value := '2'
    else if (Sender = ckEmail2Default) then
      qPhoneBook.FieldByName('WHICHEMAILADDRESS').Value := '3';
  end;

   CRTemp_qPhoneBookAfterScroll(qPhonebook);
end;

procedure TfrmPhoneBookNew.tsAdditionalShow(Sender: TObject);
begin
  if pnlABNACN.Visible then
     ActiveControl := eACN;
end;

procedure TfrmPhoneBookNew.tsNotesShow(Sender: TObject);
begin
  ActiveControl := mNotes;
end;

procedure TfrmPhoneBookNew.eStreetSuburbExit(Sender: TObject);
var
   LfmPostCode: TfrmPostcodeSearch;
begin
  if(dsPhoneBook.State in [dsEdit, dsInsert]) then
  begin
    // 09/09/2009 comment by AES we should change the postcode and maybe state as well

      qPostCodeSearchSuburb.ParamByName('suburb').AsString := eStreetSuburb.Text;
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

                 LfmPostCode.tbSuburbSearch.Text := ePostalSuburb.Text;
                 LfmPostCode.tbSuburbSearchChange(LfmPostCode.tbSuburbSearch);

                 if(LfmPostCode.ShowModal() = mrOK) then
                 begin
                     qPhoneBook.FieldByName('POSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
                     qPhoneBook.FieldByName('POSTALSTATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
                end;
              finally
                 LfmPostCode.Free;
              end;
           end
           else
           begin
              // 09/09/2009 comment by AES do not overwrite suburb, leave as typed
             qPhoneBook.FieldByName('POSTCODE').AsString := qPostCodeSearchSuburb.FieldByName('PCODE').AsString;
             qPhoneBook.FieldByName('STATE').AsString    := qPostCodeSearchSuburb.FieldByName('STATE').AsString;
           end;
        end;
      finally
        qPostCodeSearchSuburb.Close();
      end;

  end;
end;

procedure TfrmPhoneBookNew.ePostalSuburbExit(Sender: TObject);
var
   LfmPostCode: TfrmPostcodeSearch;
begin
  if(dsPhoneBook.State in [dsEdit, dsInsert]) then
  begin
  // 09/09/2009 comment by AES we should change the postcode and maybe state as well

      qPostCodeSearchSuburb.ParamByName('suburb').AsString := ePostalSuburb.Text;
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

                 LfmPostCode.tbSuburbSearch.Text := ePostalSuburb.Text;
                 LfmPostCode.tbSuburbSearchChange(LfmPostCode.tbSuburbSearch);

                 if(LfmPostCode.ShowModal() = mrOK) then
                 begin
                     qPhoneBook.FieldByName('POSTALPOSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
                     qPhoneBook.FieldByName('POSTALSTATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
                end;
              finally
                 LfmPostCode.Free;
              end;
           end
           else
           begin
   // 09/09/2009 comment by AES do not overwrite suburb, leave as typed
             qPhoneBook.FieldByName('POSTALPOSTCODE').AsString := qPostCodeSearchSuburb.FieldByName('PCODE').AsString;
             qPhoneBook.FieldByName('POSTALSTATE').AsString    := qPostCodeSearchSuburb.FieldByName('STATE').AsString;
           end;
         end;
      finally
        qPostCodeSearchSuburb.Close();
      end;
//    end;
  end;
end;

procedure TfrmPhoneBookNew.eStreetPostCodeExit(Sender: TObject);
begin
  if(dsPhoneBook.State in [dsEdit, dsInsert]) then
  begin
    if(eStreetSuburb.Text = '') then
    begin
      qPostCodeSearchPcode.ParamByName('pcode').AsString := eStreetPostCode.Text;
      qPostCodeSearchPcode.Open();
      try
        if(not qPostCodeSearchPCode.Eof) then
        begin
          qPhoneBook.FieldByName('POSTCODE').AsString := qPostCodeSearchPcode.FieldByName('PCODE').AsString;
          qPhoneBook.FieldByName('STATE').AsString    := qPostCodeSearchPcode.FieldByName('STATE').AsString;
        end;
      finally
        qPostCodeSearchPCode.Close();
      end;
    end;
  end;
end;

procedure TfrmPhoneBookNew.ePostalPostCodeExit(Sender: TObject);
begin
  if(dsPhoneBook.State in [dsEdit, dsInsert]) then
  begin
    if(ePostalSuburb.Text = '') then
    begin
      qPostCodeSearchPcode.ParamByName('pcode').AsString := ePostalPostCode.Text;
      qPostCodeSearchPcode.Open();
      try
        if(not qPostCodeSearchPCode.Eof) then
        begin
          qPhoneBook.FieldByName('POSTALPOSTCODE').AsString := qPostCodeSearchPcode.FieldByName('PCODE').AsString;
          qPhoneBook.FieldByName('POSTALSTATE').AsString    := qPostCodeSearchPcode.FieldByName('STATE').AsString;
        end;
      finally
        qPostCodeSearchPCode.Close();
      end;
    end;
  end;
end;

procedure TfrmPhoneBookNew.tsGroupsShow(Sender: TObject);
begin
  ActiveControl := lbGroups;
end;

procedure TfrmPhoneBookNew.LoadPartyData(AParty: String);
var
   LParent, LNode: PVirtualNode;
   LData: PFieldData;
   ADataForm: string;
begin
  LParent := nil;
   if((ShowDataOnlyGroup <> '') and (ShowDataOnlyGroup <> AParty)) then
      Exit;

   vtCustomData.BeginUpdate();
   try
      ADataForm := '';
      qDataFields.Close();
      qDataFields.ParamByName('partytype').AsString := AParty;
      qDataFields.ParamByName('nunique').AsInteger  := NName;
      qDataFields.Open();
      try
         if(not qDataFields.Eof) then
         begin


            // AES 20/01/10  changed code to create the dataforms for each record
            while(not qDataFields.Eof) do
            begin
               if (ADataForm = '') or (ADataForm <> qDataFields.FieldByName('DATAFORM').AsString) then
               begin
                  LParent               := vtCustomData.AddChild(nil);
                  LData                 := vtCustomData.GetNodeData(LParent);
                  LData.Group           := AParty;
                  LData.DataForm        := qDataFields.FieldByName('DATAFORM').AsString;
                  LData.DataFormCaption := qDataFields.FieldByName('DATAFORMCAPTION').AsString;
                  ADataform             := qDataFields.FieldByName('DATAFORM').AsString;
               end;

               LNode                 := vtCustomData.AddChild(LParent);
               LData                 := vtCustomData.GetNodeData(LNode);
               LData.Group           := AParty;
               LData.DataForm        := qDataFields.FieldByName('DATAFORM').AsString;
               LData.DataFormCaption := qDataFields.FieldByName('DATAFORMCAPTION').AsString;
               LData.FieldName       := qDataFields.FieldByName('FIELDNAME').AsString;
               LData.FieldCaption    := qDataFields.FieldByName('CAPTION').AsString;
               LData.FieldValue      := qDataFields.FieldByName('TEXTVALUE').AsString;

               if(Length(qDataFields.FieldByName('TYPE').AsString) = 1) then
               begin
                  case qDataFields.FieldByName('TYPE').AsString[1] of
                     'C': LData.FieldType := efCurrency;
                     'D': begin
                              LData.FieldType := efDate;
                              LData.FieldValue := qDataFields.FieldByName('DATEVALUE').AsString;
                          end;
                     'I': LData.FieldType := efInteger;
                     'B': LData.FieldType := efBoolean;
                  else
                     begin
                        if qDataFields.FieldByName('LOOKUPFIELD').AsString = 'Y' then
                        begin
                           LData.FieldType := efList;
                           LData.LookUpList := TStringList.Create;
                           TableStringList('fieldtypelookup','fieldname',LData.FieldName,'lookupvalue', LData.LookUpList);
                        end
                        else
                           LData.FieldType := efText; // 'T' or something else
                     end;
                  end;
               end else
                  LData.FieldType := efText;
               LData.Modified := False;
               LData.New := qDataFields.FieldByName('NUNIQUE').AsInteger < 1;
               qDataFields.Next();
               if (ADataForm = '') or (ADataForm <> qDataFields.FieldByName('DATAFORM').AsString) then
                  vtCustomData.Expanded[LParent] := True;
            end;
            vtCustomData.Expanded[LParent] := True;
         end;
      finally
         qDataFields.Close();
      end;
   finally
      vtCustomData.EndUpdate();
   end;
end;

function TfrmPhoneBookNew.SavePartyData(AParty: String; AParent: PVirtualNode): Boolean;
var
  LNode: PVirtualNode;
  LData: PFieldData;
begin
  Result := False;

  // get node..
  LNode := AParent.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtCustomData.GetNodeData(LNode);
    if(LData.Modified) then
    begin
      try
        qTmp2.SQL.Clear();
        if(LData.New) then
        begin
          qTmp2.SQL.Add('INSERT INTO fieldtypelink');
          qTmp2.SQL.Add(' (nunique, linktable, fieldname, textvalue, datevalue, modified, numbervalue, type, nname)');
          qTmp2.SQL.Add(' VALUES (:nunique, :linktable, :fieldname, :textvalue, :datevalue, SYSDATE, :numbervalue, ''P'', :nname)');
        end else
        begin
          qTmp2.SQL.Add('UPDATE fieldtypelink SET');
          qTmp2.SQL.Add('textvalue = :textvalue, datevalue = :datevalue, modified = SYSDATE, numbervalue = :numbervalue, type = ''P'', nname = :nname ');
          qTmp2.SQL.Add('WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');
        end;

        qTmp2.ParamByName('nunique').AsInteger := NName;
        qTmp2.ParamByName('linktable').AsString := LData.DataForm;
        qTmp2.ParamByName('fieldname').AsString := LData.FieldName;
        qTmp2.ParamByName('nname').AsInteger := NName;


        if(LData.FieldType = efDate) then
          qTmp2.ParamByName('datevalue').AsDate := VarToDateTime(LData.FieldValue)
        else
          qTmp2.ParamByName('datevalue').Clear();

          if(LData.FieldType = efInteger) then
            qTmp2.ParamByName('numbervalue').AsString := LData.FieldValue
          else
            qTmp2.ParamByName('numbervalue').Clear();

          if(LData.FieldType = efCurrency) then
          begin
            qTmp2.ParamByName('numbervalue').AsString := StringReplace(StringReplace(LData.FieldValue,FormatSettings.CurrencyString,'',[rfReplaceAll]),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            qTmp2.ParamByName('textvalue').AsString := FormatCurr('$,0.00',qTmp2.ParamByName('numbervalue').AsCurrency);
            LData.FieldValue := qTmp2.ParamByName('textvalue').AsString;
          end else
            qTmp2.ParamByName('textvalue').AsString := LData.FieldValue;

        qTmp2.ExecSQL();
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
  Result := True;
end;

procedure TfrmPhoneBookNew.vtCustomDataColumnClick(Sender: TBaseVirtualTree;
  Column: TColumnIndex; Shift: TShiftState);
begin
  if(Assigned(Sender.FocusedNode)) then
  begin
    Sender.CancelEditNode();
    Sender.EditNode(Sender.FocusedNode,1);
  end;
end;

procedure TfrmPhoneBookNew.vtCustomDataCreateEditor(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
var
   LData: PFieldData;
   BLookupList:TStrings;
begin
  BLookupList := nil;
  if(Column = 1) then
  begin
    LData := Sender.GetNodeData(Node);
    case LData.FieldType of
      efCurrency:  EditLink := TCurrencyEditLink.Create();
      efDate:      EditLink := TDateEditLink.Create(dtkDate);
      efInteger:   EditLink := TSpinEditLink.Create();
      efText:      begin
                      if (LData.NumLines > 1) then
                      begin
                         EditLink  := TMemoEditLink.Create();
                      end
                      else EditLink := TEditEditLink.Create();
                   end;
      efList:      EditLink := TComboEditLink.Create(LData.LookUpList, csDropDownList,False);
      efBoolean:   begin
                     BLookupList := TStringList.Create;
                     try
                        BLookupList.Add('Y');
                        BLookupList.Add('N');
                        EditLink := TComboEditLink.Create(BLookupList,csDropDownList,False);
                     finally
                        BLookupList.Free;
                     end;
                   end;
    end;
  end;
end;

procedure TfrmPhoneBookNew.vtCustomDataEditCancelled(Sender: TBaseVirtualTree;
  Column: TColumnIndex);
begin
//
end;

procedure TfrmPhoneBookNew.vtCustomDataEdited(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex);
begin
   //
   bMatterDataChanged := True;
end;

procedure TfrmPhoneBookNew.vtCustomDataEditing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  Allowed := (Column = 1) and (Node.ChildCount = 0) and (NName > -1);
end;

procedure TfrmPhoneBookNew.vtCustomDataEnter(Sender: TObject);
var
  LTree: TBaseVirtualTree;
begin
  LTree := TBaseVirtualTree(Sender);
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

procedure TfrmPhoneBookNew.vtCustomDataExit(Sender: TObject);
begin
  if(VirtualTrees.tsEditing in TBaseVirtualTree(Sender).TreeStates) then
    TBaseVirtualTree(Sender).CancelEditNode();
end;

procedure TfrmPhoneBookNew.vtCustomDataGetNodeDataSize(
  Sender: TBaseVirtualTree; var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TFieldData);
end;

procedure TfrmPhoneBookNew.vtCustomDataGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PFieldData;
begin
  LData := Sender.GetNodeData(Node);
  if(Sender = vtCustomData) then
  begin
    case Column of
      0: begin
        if(Node.ChildCount > 0) then
          CellText := LData.DataFormCaption + ' [' + LData.Group + ']'
        else
          CellText := LData.FieldCaption;
      end;
      1: CellText := LData.FieldValue;
    end;
  end else if(Sender = vtMatterData) then
  begin
    case Column of
      0: begin;
        if(Node.Parent = Sender.RootNode) then
          CellText := LData.DataFormCaption + ' [' + LData.Group + ']'
        else if(Node.ChildCount > 0) then
          CellText := LData.MatterDesc
        else
          CellText := LData.FieldCaption;
      end;
      1: CellText := LData.FieldValue;
    end;
  end;
end;



procedure TfrmPhoneBookNew.vtCustomDataNewText(Sender: TBaseVirtualTree;
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
      LData.Modified := True;
    end;
  end;
end;

procedure TfrmPhoneBookNew.vtCustomDataPaintText(Sender: TBaseVirtualTree;
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

procedure TfrmPhoneBookNew.RemovePartyData(ATree: TBaseVirtualTree; AParty: String);
var
  LNode: PVirtualNode;
  LData: PFieldData;
begin
  LNode := ATree.RootNode.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := ATree.GetNodeData(LNode);
    if((LNode.ChildCount > 0) and (LData.Group = AParty)) then
    begin
      ATree.DeleteNode(LNode);
      break;
    end;
    LNode := LNode.NextSibling;
  end;
end;

procedure TfrmPhoneBookNew.FormDestroy(Sender: TObject);
begin
  FLikeThread.DoTerminate();

  FreeAndNil(FAddedGroups);
  FreeAndNil(FRemovedGroups);
  FreeAndNil(FInitialGroups);
  FreeAndNil(FAddedClientGroups);
  FreeAndNil(FRemovedClientGroups);
  FreeAndNil(FInitialClientGroups);
  FreeAndNil(FCurrentChildNNames);
  FreeAndNil(FDeletedChildNNames);
end;

function TfrmPhoneBookNew.MakeSearch(): String;
var
  LStr: String;
begin
   try
      if(eName.Text = FLastEnteredName) then
      begin
        if(eSalutation.Text = '') then
          LStr := eLastName.Text + ', ' + eGivenNames.Text
        else
          Lstr := eLastName.Text + ', ' + eSalutation.Text + ' ' + eGivenNames.Text;
      end else
        LStr := eName.Text;

      if(Length(Lstr) > 0) and (LStr[1] = ',') then
        LStr := Copy(LStr,2,Length(LStr));
      if(Length(Lstr) > 0) and (LStr[Length(Lstr)] = ',') then
        LStr := Copy(LStr,1,Length(LStr) - 1);

      Result := Trim(LStr);
   except
   //
   end;
end;

function TfrmPhoneBookNew.MakeName(): String;
var
  LStr,
  LNewStr: String;
  x: integer;
begin
   try

//    AES 31/8/2017  Changed to use last name rather than the name field
      LStr := Trim(eLastName{eName}.Text);

      for x := 1 to length(LStr) do
      begin
         if ((LStr[x] in ['A'..'Z', '0'..'9', 'a'..'z', '.', '-', ' '])) then
            LNewStr := LNewStr + LStr[x];
      end;
      Result := LNewStr;
   except
   //
   end;
end;

procedure TfrmPhoneBookNew.SaveAllPartyData;
var
  LNode: PVirtualNode;
  LData: PFieldData;
begin
   try
      LNode := vtCustomData.RootNode.FirstChild;
      while (Assigned(LNode)) do
      begin
         LData := vtCustomData.GetNodeData(LNode);
         SavePartyData(LData.Group, LNode);
         LNode := LNode.NextSibling;
      end;

      LNode := vtMatterData.RootNode.FirstChild;
      while(Assigned(LNode)) do
      begin
         LData := vtMatterData.GetNodeData(LNode);
         SaveMatterPartyData(LData.Group);
         LNode := LNode.NextSibling;
      end;
   finally
      bMatterDataChanged := False;
   end;
end;

procedure TfrmPhoneBookNew.LoadMatterPartyData(AParty: String);
var
  LMatter, LForm, LNode: PVirtualNode;
  LMatterData, LData: PFieldData;
  LNMatter: Integer;
  LDataForm: String;
  LShow: Boolean;
begin
  if((ShowDataOnlyGroup <> '') and (ShowDataOnlyGroup <> AParty)) then
    Exit;

  LNMatter := -1;
  LDataForm := '';
  LMatter := nil;
  LForm   := nil;
  vtMatterData.BeginUpdate();
  try
    qMatterDataFields.Close();
    qMatterDataFields.ParamByName('partytype').AsString      := AParty;
    qMatterDataFields.ParamByName('nunique').AsInteger       := NName;
    qMatterDataFields.Open();
    try
      while(not qMatterDataFields.Eof) do
      begin
        LShow := True;
        if(not ShowAllMatterData) then
        begin
          if(LimitToNMatter > 0) then
            LShow := qMatterDataFieldsNMATTER.AsInteger = LimitToNMatter;
        end;

        if(LShow) then
        begin
          if(LDataForm <> qMatterDataFieldsDATAFORM.AsString) then
          begin
            LDataForm      := qMatterDataFieldsDATAFORM.AsString;
            LForm          := vtMatterData.AddChild(nil);
            LData          := vtMatterData.GetNodeData(LForm);
            LData.Group    := AParty;
            LData.DataForm := LDataForm;
            LData.DataFormCaption := qMatterDataFieldsDATAFORMCAPTION.AsString;
            LNMatter       := -1;
          end;

          if(LNMatter <> qMatterDataFieldsNMATTER.AsInteger) then
          begin
            LNMatter := qMatterDataFieldsNMATTER.AsInteger;
            LMatter                := vtMatterData.AddChild(LForm);
            LMatterData            := vtMatterData.GetNodeData(LMatter);
            LMatterData.NMatter    := LNMatter;
            LMatterData.MatterDesc := '[' + qMatterDataFieldsFILEID.AsString + '] - ' + qMatterDataFieldsMATTERDESC.AsString;
            LMatterData.Group      := AParty;
            LMatterData.DataForm := LDataForm;
          end;

          LNode := vtMatterData.AddChild(LMatter);
          LData := vtMatterData.GetNodeData(LNode);
          LData.NMatter      := LNMatter;
          LData.Group        := AParty;
          LData.DataForm     := LDataForm;
          LData.FieldName    := qMatterDataFieldsFIELDNAME.AsString;
          LData.FieldCaption := qMatterDataFieldsCAPTION.AsString;
          LData.FieldValue   := qMatterDataFieldsTEXTVALUE.AsString;
          if(Length(qMatterDataFieldsFIELDTYPE.AsString) = 1) then
          begin
            case qMatterDataFieldsFIELDTYPE.AsString[1] of
              'C': LData.FieldType := efCurrency;
              'D': begin
                     LData.FieldType := efDate;
                     LData.FieldValue := qMatterDataFieldsDATEVALUE.AsString;
                   end;
              'I': LData.FieldType := efInteger;
              'B': LData.FieldType := efBoolean;
              else LData.FieldType := efText; // 'T' or something else
            end;
          end else
            LData.FieldType := efText;
          LData.Modified     := False;
          LData.New          := qMatterDataFieldsNEW.Value = 'T';

          vtMatterData.Expanded[LMatter] := True;
          vtMatterData.Expanded[LForm] := True;
        end else
          LDataForm := '';
        qMatterDataFields.Next();
      end;
    finally
      qMatterDataFields.Close();
    end;
  finally
    vtMatterData.EndUpdate();
  end;
end;

function TfrmPhoneBookNew.SaveMatterPartyData(AParty: String): Boolean;
var
  LMatter,
  LParent,
  LNode: PVirtualNode;
  LData: PFieldData;
begin
  Result := False;

  // get node..
  LParent := vtMatterData.RootNode.FirstChild;
  while(Assigned(LParent)) do
  begin
    LData := vtMatterData.GetNodeData(LParent);
    if(LData.Group = AParty) then
      break;
    LParent := LParent.NextSibling;
  end;
  if(not Assigned(LParent)) then
    Exit;

  LMatter := LParent.FirstChild;
  while(Assigned(LMatter)) do
  begin

    LNode := LMatter.FirstChild;
    while(Assigned(LNode)) do
    begin
      LData := vtMatterData.GetNodeData(LNode);
      if(LData.Modified) then
      begin
        try
          qTmp2.SQL.Clear();
          if(LData.New) then
          begin
            qTmp2.SQL.Add('INSERT INTO fieldtypelink');
            qTmp2.SQL.Add(' (nunique, nunique2, linktable, fieldname, textvalue, datevalue, modified, numbervalue)');
            qTmp2.SQL.Add(' VALUES (:nunique, :nunique2, :linktable, :fieldname, :textvalue, :datevalue, SYSDATE, :numbervalue, nname, nmatter)');
          end else
          begin
            qTmp2.SQL.Add('UPDATE fieldtypelink SET');
            qTmp2.SQL.Add('textvalue = :textvalue, datevalue = :datevalue, modified = SYSDATE, numbervalue = :numbervalue, nname = :nname, nmatter = :nmatter ');
            qTmp2.SQL.Add('WHERE nunique = :nunique AND nunique2 = :nunique2 AND linktable = :linktable AND fieldname = :fieldname');
          end;

          qTmp2.ParamByName('nunique').AsInteger := NName;
          qTmp2.ParamByName('nunique2').AsInteger := LData.NMatter;
          qTmp2.ParamByName('linktable').AsString := LData.DataForm;
          qTmp2.ParamByName('fieldname').AsString := LData.FieldName;
          qTmp2.ParamByName('nname').AsInteger := NName;
          qTmp2.ParamByName('nmatter').AsInteger := LData.NMatter;

          if(LData.FieldType = efDate) then
            qTmp2.ParamByName('datevalue').AsDate := VarToDateTime(LData.FieldValue)
          else
            qTmp2.ParamByName('datevalue').Clear();

          if(LData.FieldType = efInteger) then
            qTmp2.ParamByName('numbervalue').AsString := LData.FieldValue
          else
            qTmp2.ParamByName('numbervalue').Clear();

          if(LData.FieldType = efCurrency) then
          begin
            qTmp2.ParamByName('numbervalue').AsString := StringReplace(StringReplace(LData.FieldValue,FormatSettings.CurrencyString,'',[rfReplaceAll]),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            qTmp2.ParamByName('textvalue').AsString := FormatCurr('$,0.00',qTmp2.ParamByName('numbervalue').AsCurrency);
            LData.FieldValue := qTmp2.ParamByName('textvalue').AsString;
          end else
            qTmp2.ParamByName('textvalue').AsString := LData.FieldValue;

          qTmp2.ExecSQL();
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
    LMatter := LMatter.NextSibling;
  end;
  Result := True;
end;

function TfrmPhoneBookNew.GetSearch: String;
begin
  if(qPhoneBook.Active) then
    Result := qPhoneBook.FieldByName('SEARCH').AsString
  else
    Result := '';
end;

function TfrmPhoneBookNew.GetInitalGroups: String;
begin
  Result := FInitialGroups.CommaText;
end;

procedure TfrmPhoneBookNew.SetInitialGroups(const Value: String);
begin
   FInitialGroups.Add(Value); 
end;


function TfrmPhoneBookNew.GetShowMatterSpecific: Boolean;
begin
  Result := tsMatterData.Visible;
end;

procedure TfrmPhoneBookNew.SetShowMatterSpecific(const Value: Boolean);
begin
  tsMatterData.TabVisible := Value;
  if(Value) then
    pcPages.ActivePage      := tsMatterData;
end;

procedure TfrmPhoneBookNew.CheckEditSearchChange;
var
  LOldSearch, LNewSearch: String;
begin

   try
    LOldSearch := FOldSearch;
    if (NNAME <> 0) then
    begin
       if(eSalutation.Modified or eLastName.Modified or eGivenNames.Modified or eName.Modified) then
       begin
         if(eSalutation.Text = '') then
           LNewSearch := eLastName.Text + ', ' + eGivenNames.Text
         else
           if (eLastName.Text <> '') or (eSalutation.Text <> '') or (eGivenNames.Text <> '' ) then
             LNewSearch := eLastName.Text + ', ' + eSalutation.Text + ' ' + eGivenNames.Text;
         if(eSearch.Text {eName.Text} <> LNewSearch) {Trim(eSalutation.Text + ' ' + eGivenNames.Text + ' ' + eLastName.Text))} then
            LNewSearch := eSearch.Text; // eName.Text;
       end;

       if ((Trim(LNewSearch) = ',') and (Trim(LNewSearch) = '') or (LOldSearch = eSearch.Text)) then
          Exit
       else
          if (Trim(LNewSearch) = ',') or (Trim(LNewSearch) = '') then
            LNewSearch := eSearch.Text;

       if ((LNewSearch <> LOldSearch) or (LOldSearch <> eSearch.Text)) and (LOldSearch <> '') and
          (NNAME <> 0) then
       begin
         if LNewSearch = '' then
            LNewSearch := eSearch.Text;
         if MessageDlg('The information that makes the search key has changed, do you want to change the search key from ''' +
           AndReplace(LOldSearch) + ''' to ''' + AndReplace(LNewSearch) + '''?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
         begin
           qPhoneBook.FieldByName('Search').AsString := LNewSearch;
           eSearch.EditModified := True;
           FOldSearch := LOldSearch;
           FNewSearch := LNewSearch;
         end;
       end;
    end
    else
      FNewSearch := eSearch.Text;
   except
      // silent
   end;
//  end;
end;

function TfrmPhoneBookNew.CheckHasGroup: Boolean;
var
  i: Integer;
  c: Integer;
begin
  Result := False;
  c := 0;
  for i := 0 to lbGroups.Items.Count - 1 do
  begin
    if(lbGroups.Items.Items[i].Checked) then
      Inc(c);
  end;

  if(c = 0) then
  begin
    MessageDlg('A group must be selected before continuing, please select a group.', mtError, [mbOK], 0);
    pcPages.ActivePage := tsGroups;
  end else
    Result := True;
end;

procedure TfrmPhoneBookNew.SetupForClient(ANClient: Integer);
var
  lNName: string;
begin
  FNClient := ANClient;
  if ANClient > 0 then
  begin
    LNName := TableString('phonebook','nclient', ANClient, 'nname');
    if LNName <> '' then
      FNName := StrToInt(LNName);
  end;
  tsClient.TabVisible := True;

  // ANClient of 0 means new client.
  if(ANClient = 0) then
  begin
    InitialGroups := 'Client';
    eClientIntroduced.Date := Now;
    if not (SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) and chkProspectiveClient.Checked = False then
      pbConvertFromPhonebook.Visible := True;
  end
end;

procedure TfrmPhoneBookNew.eClientCodeEnter(Sender: TObject);
var
  LClientCode,
  NewSearch,
  LTmp,   jj,
  LNumStr,
  LTmpCode,
  LTmpEntity,
  LTmpEntityChar,
  AccronymCode,
  GenderValue: string;
  LTakeFirst: Boolean;
  i,x, LPadNum,LPadding,LTmpEntityLen : Integer;
begin
  if eClientcode.Text = '' then
  begin
    if not (qClient.state in [dsEdit,dsInsert]) then
    begin
       qClient.ParamByName('nclient').AsInteger := 0;
       qClient.Open;
       qClient.Append;
    end;
    if qClient.FieldByName('INTRODUCED').IsNull then
       qClient.FieldByName('INTRODUCED').AsDateTime := Now;
    // Create the Client Code
    LClientCode := '';
    if (qCodeRules.FieldByName('CLIENTCODE').AsString = 'N') then
    begin
      // Use the system number
      //AES 09/08/2017 changed to use nclient from client table rather than value from seqnums table
      //AES 29/05/2019 changed to use sequence
{      qClientCheck.Close;
      qClientCheck.SQL.Text :=  'SELECT max(NCLIENT) + 1 as NCLIENT FROM CLIENT';  //   'SELECT NCLIENT FROM SEQNUMS';
      qClientCheck.Open;
      LClientCode := IntToStr(qClientCheck.FieldByName('NCLIENT').AsInteger);
      qClientCheck.Close; }
      LClientCode := IntToStr(GetSequenceNumber('SQNC_NCLIENT'));

      qGetCodes.Close;
      qGetCodes.SQL.Clear;
      qGetCodes.SQL.Add('SELECT CODE FROM CLIENT WHERE CODE LIKE ''' + LClientCode + '%''' + ' order by nclient');
      qGetCodes.Open;
      qGetCodes.Last;
      LTmpCode := qGetCodes.FieldByName('CODE').AsString;
      if (LTmpCode <> '') then
      begin
         if Length(LClientCode) < qCodeRules.FieldByName('CLIENTPAD').AsInteger then
            LClientCode := Copy('000000' + LClientCode, Length(LClientCode) + 7 - qCodeRules.FieldByName('CLIENTPAD').AsInteger, qCodeRules.FieldByName('CLIENTPAD').AsInteger);
      end;

      repeat
         LPadNum := StrToInt(LClientCode);
         inc(LPadNum);
         LNumStr := intToStr(LPadNum);
        // pad the number string
         for i := 1 to (LPadding - Length(LNumStr)) do
            LNumStr := '0' + LNumStr;

         if (not qCodeRules.FieldByName('CLIENTSEPARATOR').IsNull) then
            LTmp := LClientCode + qCodeRules.FieldByName('CLIENTSEPARATOR').AsString + LNumStr
         else
            if True then

            LTmp := LNumStr;

      until not qGetCodes.Locate('CODE',LTmp,[]);

      LClientCode := LTmp;

      // and pad it
      if Length(LClientCode) < qCodeRules.FieldByName('CLIENTPAD').AsInteger then
        LClientCode := Copy('000000' + LClientCode, Length(LClientCode) + 7 - qCodeRules.FieldByName('CLIENTPAD').AsInteger, qCodeRules.FieldByName('CLIENTPAD').AsInteger);
	  // add entity prefix
      if qCodeRules.FieldByName('USE_ENTITY_CODE').AsString = 'Y' then
      begin
          LTmpEntityLen := qCodeRules.FieldByName('USE_ENTITY_LENGTH').AsInteger;
          // if set too long for number of chars - set to 2
          if LTmpEntityLen > 2 then
              LTmpEntityLen := 2;
          // set the prefix character/s
          if Length(qCodeRules.FieldByName('ENTITY_CODE').AsString) = 1 then
              LTmpEntityChar := qCodeRules.FieldByName('ENTITY_CODE').AsString
          Else
              LTmpEntityChar := Copy(qCodeRules.FieldByName('ENTITY_CODE').AsString, 1, LTmpEntityLen);
          // set the temp client code
          LTmpEntity := LTmpEntityChar + qCodeRules.FieldByName('USE_ENTITY_SEPARATOR').AsString + LClientCode;
          LClientCode := LTmpEntity;
      end;
	  // add entity  group prefix prefix - 9 Nov 2017
      if qCodeRules.FieldByName('USE_ENTGRP_CODE').AsString = 'Y' then
      begin
          LTmpEntityLen := qCodeRules.FieldByName('USE_ENTGRP_LENGTH').AsInteger;
          // if set too long for number of chars - set to 2
          if LTmpEntityLen > 2 then
              LTmpEntityLen := 2;
          // set the prefix character/s
          if Length(qCodeRules.FieldByName('ENTITY_GROUP_CODE').AsString) = 1 then
              LTmpEntityChar := qCodeRules.FieldByName('ENTITY_GROUP_CODE').AsString
          Else
              LTmpEntityChar := Copy(qCodeRules.FieldByName('ENTITY_GROUP_CODE').AsString, 1, LTmpEntityLen);
          // set the temp client code
          LTmpEntity := LTmpEntityChar + qCodeRules.FieldByName('USE_ENTGRP_SEPARATOR').AsString + LClientCode;
          LClientCode := LTmpEntity;
      end;
    end
    else
    if qCodeRules.FieldByName('CLIENTCODE').AsString = 'A' then
    begin
      // We are making a partial name
      LTakeFirst := True;
      if (cbGender.Text = '') then
         GenderValue := 'I'
      else
         GenderValue := cbGender.EditValue;
      if (qCodeRules.FieldByName('USE_PHONEBOOK_NAME').AsString = 'Y') and (GenderValue = 'E') then
         AccronymCode := eName.Text
      else
         AccronymCode := eLastName.Text;
      if (qCodeRules.FieldByName('CLIENTACRONYM').AsString = 'Y') and (Pos(' ', AccronymCode) > 0) then
      begin
         LTakeFirst := False;
         LClientCode := Uppercase(Copy(AccronymCode, 1, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger));
         LTmp := AccronymCode; //eLastName.Text;
         // Strip the apostrophes
         while Pos('''', LTmp) > 0 do
            LTmp := Copy(LTmp, 1, Pos('''', LTmp) - 1) + Copy(LTmp, Pos('''', LTmp) + 1, 99);

         NewSearch := '';
         for x := 1 to Length(LTmp) do
         begin
           if LTmp[x] <> ' ' then
               NewSearch := NewSearch + Uppercase(LTmp[x]);
         end;
         LClientCode := copy(NewSearch,1, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger);

        {
        while (Pos(' ', LTmp) > 0) and (i < qCodeRules.FieldByName('CLIENTLENGTH').AsInteger) do
        begin
          LTmp := Copy(LTmp, Pos(' ', LTmp) + 1, 99);
          LClientCode := LClientCode + Uppercase(Copy(LTmp, 1, 1));
          Inc(i);
        end;  }

         if Length(LClientCode) < qCodeRules.FieldByName('CLIENTLENGTH').AsInteger then
            LClientCode := Uppercase(Copy(eLastName.Text, 1, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger - Length(LClientCode) + 1) + Copy(LClientCode, 2, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger));
      end;

      if LTakeFirst then
      begin
         LTmp := AccronymCode;
         // Strip the apostrophes
         while Pos('''', LTmp) > 0 do
            LTmp := Copy(LTmp, 1, Pos('''', LTmp) - 1) + Copy(LTmp, Pos('''', LTmp) + 1, 99);

         LClientCode := Uppercase(Copy(LTmp, 1, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger));
      end;
	  // add entity prefix
      if qCodeRules.FieldByName('USE_ENTITY_CODE').AsString = 'Y' then
      begin
          LTmpEntityLen := qCodeRules.FieldByName('USE_ENTITY_LENGTH').AsInteger;
          // if set too long for number of chars - set to 2
          if LTmpEntityLen > 2 then
              LTmpEntityLen := 2;
          // set the prefix character/s
          if Length(qCodeRules.FieldByName('ENTITY_CODE').AsString) = 1 then
              LTmpEntityChar := qCodeRules.FieldByName('ENTITY_CODE').AsString
          Else
              LTmpEntityChar := Copy(qCodeRules.FieldByName('ENTITY_CODE').AsString, 1, LTmpEntityLen);
          // set the temp client code
          LTmpEntity := LTmpEntityChar + qCodeRules.FieldByName('USE_ENTITY_SEPARATOR').AsString + LClientCode;
          LClientCode := LTmpEntity;
      end;
	  // add entity  group prefix prefix - 9 Nov 2017
      if qCodeRules.FieldByName('USE_ENTGRP_CODE').AsString = 'Y' then
      begin
          LTmpEntityLen := qCodeRules.FieldByName('USE_ENTGRP_LENGTH').AsInteger;
          // if set too long for number of chars - set to 2
          if LTmpEntityLen > 2 then
              LTmpEntityLen := 2;
          // set the prefix character/s
          if Length(qCodeRules.FieldByName('ENTITY_GROUP_CODE').AsString) = 1 then
              LTmpEntityChar := qCodeRules.FieldByName('ENTITY_GROUP_CODE').AsString
          Else
              LTmpEntityChar := Copy(qCodeRules.FieldByName('ENTITY_GROUP_CODE').AsString, 1, LTmpEntityLen);
          // set the temp client code
          LTmpEntity := LTmpEntityChar + qCodeRules.FieldByName('USE_ENTGRP_SEPARATOR').AsString + LClientCode;
          LClientCode := LTmpEntity;
      end;
      // try this !
      // get all the client codes like this one and loop through them
      LPadding := qCodeRules.FieldByName('CLIENTPAD').AsInteger;
      LPadNum := 0;

      qGetCodes.Close;
      qGetCodes.SQL.Clear;
      qGetCodes.SQL.Add('SELECT CODE FROM CLIENT WHERE CODE LIKE ''' + LClientCode + '%''' + ' order by nclient');
      qGetCodes.Open;
      qGetCodes.Last;
      LTmpCode := qGetCodes.FieldByName('CODE').AsString;
      if LTmpCode <> '' then
      begin
         if (qCodeRules.FieldByName('CLIENTSEPARATOR').IsNull = False) then
         begin
            if (Copy(LTmpCode, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger+2, LPadding) = '') then
               LPadNum := 1
            else
               LPadNum := StrToInt(Copy(LTmpCode, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger+2, LPadding));
         end
         else
         begin
            if (length(LTmpCode) < qCodeRules.FieldByName('CLIENTLENGTH').AsInteger) then
            for I := 1 to length(LTmpCode) do
            begin
               if ((IsLetter(LTmpCode[I]) = False) and
                  (IsSeparator(LTmpCode[I]) = False)) then
                  LNumStr := LNumStr+LTmpCode[I];
            end;
            if LNumStr = '' then
               LNumStr := '1';
            LPadNum := StrToInt(LNumStr);
         end;

{         if (qCodeRules.FieldByName('CLIENTSEPARATOR').IsNull = False) then
            LPadNum := StrToInt(Copy(LTmpCode, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger+2, LPadding))
         else
            LPadNum := StrToInt(Copy(LTmpCode, qCodeRules.FieldByName('CLIENTLENGTH').AsInteger+1, LPadding));}

      end;
        // find a code that's not in the database
      repeat
         inc(LPadNum);
         LNumStr := intToStr(LPadNum);
        // pad the number string
         for i := 1 to (LPadding - Length(LNumStr)) do
            LNumStr := '0' + LNumStr;

         if (not qCodeRules.FieldByName('CLIENTSEPARATOR').IsNull) then
            LTmp := LClientCode + qCodeRules.FieldByName('CLIENTSEPARATOR').AsString + LNumStr
         else
            LTmp := LClientCode + LNumStr;

      until not qGetCodes.Locate('CODE',LTmp,[]);

      LClientCode := LTmp;
    end;

    eClientCode.Text := LClientCode;
    if qClient.State = dsBrowse then
       qClient.Edit;
    qClient.FieldByName('CODE').AsString := LClientCode;
  end;
end;

procedure TfrmPhoneBookNew.eClientCodeExit(Sender: TObject);
begin
  if eClientCode.Text <> '' then
  begin
    qClientCheck.Close;
    qClientCheck.SQL.Text := 'SELECT SEARCH FROM CLIENT WHERE CODE = ' + QuotedStr(eClientCode.Text) + ' AND NCLIENT <> ' + IntToStr(qClient.FieldByName('NCLIENT').AsInteger);
    qClientCheck.Open;
    if not qClientCheck.IsEmpty then
    begin
      MsgErr('Existing Client "' + qClientCheck.FieldByName('SEARCH').AsString + '" has code "' + eClientCode.Text + '" already');
      pcPages.ActivePage := tsClient;
      ActiveControl := eClientCode;;
    end;
  end;
end;

procedure TfrmPhoneBookNew.lbClientGroupsClickCheck(Sender: TObject);
var
  LGroup: String;
  bAttach: boolean;
begin
   bAttach := True;
   bGroupChanged := True;
   LGroup := lbClientGroups.Items[lbClientGroups.ItemIndex];
   if(lbClientGroups.Checked[lbClientGroups.ItemIndex]) then
   begin
      if(FRemovedClientGroups.IndexOf(LGroup) > -1) then
         FRemovedClientGroups.Delete(FRemovedClientGroups.IndexOf(LGroup));
      qryTmpSQL.Close();
      qryTmpSQL.SQL.Text := 'select ''x'' from clientgroupings cgs, clientgroup cg where cgs.NCLIENT = :nclient '+
                            ' and cgs.CATEGORY = cg.CATEGORY and cg.FINANCIAL_YN = ''Y'' ';
      qryTmpSQL.ParamByName('nclient').AsInteger := NCLIENT;
      qryTmpSQL.Open();
      try
         if (not qryTmpSQL.EOF) then
         begin
            qryTmpSQL.Close();
            qryTmpSQL.SQL.Text := 'SELECT FINANCIAL_YN FROM CLIENTGROUP WHERE CATEGORY = ' + QuotedStr(LGroup);
            qryTmpSQL.Open();
            if (qryTmpSQL.FieldByName('FINANCIAL_YN').AsString = 'Y' ) then
            begin
               MsgInfo('Only one group marked as Financial can be attached to a Client');
               bAttach := False;
               lbClientGroups.Checked[lbClientGroups.ItemIndex] := False;
            end;
         end;
      finally
         qryTmpSQL.Close();
      end;
      if bAttach then
         FAddedClientGroups.Add(LGroup);
   end else
   begin
      if(FAddedClientGroups.IndexOf(LGroup) > -1) then
         FAddedClientGroups.Delete(FAddedClientGroups.IndexOf(LGroup));
      FRemovedClientGroups.Add(LGroup);
   end;
end;

procedure TfrmPhoneBookNew.eCreditorCodeEnter(Sender: TObject);
var
  LCreditorCode : string;
  LTmp : string;
  LTakeFirst : Boolean;
  i : Integer;
begin
   if eCreditorCode.Text = '' then
   begin
      // Create the Creditor Code
      LCreditorCode := '';
      if qCodeRules.FieldByName('CREDITORCODE').AsString = 'N' then
      begin
         // Use the system number
         qCreditorCheck.Close;
         qCreditorCheck.SQL.Text := 'SELECT NCREDITOR FROM SEQNUMS';
         qCreditorCheck.Open;
         LCreditorCode := qCreditorCheck.FieldByName('NCREDITOR').AsString;
         qCreditorCheck.Close;
         // and pad it
         if Length(LCreditorCode) < qCodeRules.FieldByName('CREDITORPAD').AsInteger then
            LCreditorCode := Copy('000000' + LCreditorCode, Length(LCreditorCode) + 7 - qCodeRules.FieldByName('CREDITORPAD').AsInteger, qCodeRules.FieldByName('CREDITORPAD').AsInteger);
      end
      else if qCodeRules.FieldByName('CREDITORCODE').AsString = 'A' then
      begin
         // We are making a partial name
         LTakeFirst := True;
         if (qCodeRules.FieldByName('CREDITORACRONYM').AsString = 'Y') and (Pos(' ', eName.Text) > 0) then
         begin
            LTakeFirst := False;
            LCreditorCode := Uppercase(Copy(eName.Text, 1, 1));
            LTmp := eName.Text;
            // Strip the apostrophes
            while Pos('''', LTmp) > 0 do
               LTmp := Copy(LTmp, 1, Pos('''', LTmp) - 1) + Copy(LTmp, Pos('''', LTmp) + 1, 99);
            i := 1;
            while (Pos(' ', LTmp) > 0) and (i < qCodeRules.FieldByName('CREDITORLENGTH').AsInteger) do
            begin
               LTmp := Copy(LTmp, Pos(' ', LTmp) + 1, 99);
               LCreditorCode := LCreditorCode + Uppercase(Copy(LTmp, 1, 1));
               i := i + 1;
            end;
            if Length(LCreditorCode) < qCodeRules.FieldByName('CREDITORLENGTH').AsInteger then
               LCreditorCode := Uppercase(Copy(eName.Text, 1, qCodeRules.FieldByName('CREDITORLENGTH').AsInteger - Length(LCreditorCode) + 1) + Copy(LCreditorCode, 2, qCodeRules.FieldByName('CREDITORLENGTH').AsInteger));
         end;

         if LTakeFirst then
         begin
            LTmp := eName.Text;
            // Strip the apostrophes
            while Pos('''', LTmp) > 0 do
               LTmp := Copy(LTmp, 1, Pos('''', LTmp) - 1) + Copy(LTmp, Pos('''', LTmp) + 1, 99);

            LCreditorCode := Uppercase(Copy(LTmp, 1, qCodeRules.FieldByName('CREDITORLENGTH').AsInteger));
         end;

         // Find the smallest suffixed client code number with this prefix
         qCreditorCheck.Close;
         qCreditorCheck.SQL.Text := 'SELECT MAX(CODE) AS MAXCODE FROM CREDITOR WHERE CODE LIKE ''' + LCreditorCode + '%''';
         qCreditorCheck.Open;
         if qCreditorCheck.FieldByName('MAXCODE').AsString <> '' then
            LCreditorCode := NextRefno(qCreditorCheck.FieldByName('MAXCODE').AsString)
         else
         begin
         // and pad it
            LTmp := Copy('0000001', 30 - qCodeRules.FieldByName('CREDITORPAD').AsInteger,
                        qCodeRules.FieldByName('CREDITORPAD').AsInteger);
            LCreditorCode := LCreditorCode + LTmp;
         end;
      end;

      if not qCreditor.Active then
      begin
         qCreditor.ParamByName('NCreditor').AsInteger := NCreditor;
         qCreditor.Open;
      end;

      if(NCreditor = 0) then
         if qCreditor.State <> dsInsert then qCreditor.Append()
      else
         if qCreditor.State <> dsEdit then qCreditor.Edit();

      eCreditorCode.Text := LCreditorCode;
      qCreditor.FieldByName('code').AsString := LCreditorCode;
   end;
end;

procedure TfrmPhoneBookNew.eCreditorCodeExit(Sender: TObject);
begin
  if(NCreditor = 0) then
  begin
    if eCreditorCode.Text <> '' then
    begin
      qCreditorCheck.Close;
      qCreditorCheck.SQL.Text := 'SELECT SEARCH FROM CREDITOR WHERE CODE = ' + QuotedStr(eCreditorCode.Text);
      qCreditorCheck.Open;
      if not qCreditorCheck.IsEmpty then
      begin
        MsgErr('Existing Creditor "' + qCreditorCheck.FieldByName('SEARCH').AsString + '" has code "' + eCreditorCode.Text + '" already');
        pcPages.ActivePage := tsCreditor;
        ActiveControl := eCreditorCode;
      end;
      qCreditorCheck.Close;
    end;
  end;
end;

procedure TfrmPhoneBookNew.SetupForCreditor(const Value: Integer);
begin
   FNCreditor := Value;
   tsCreditor.TabVisible := True;
   if(Value = 0) then
   begin
      qCodeRules.ParamByName('ENTITY').AsString := dmAxiom.Entity;
      qCodeRules.Open();
      InitialGroups := SystemString('DEFAULT_CREDITORGRP'); // 'Creditor';
      pbConvertFromPhonebook.Visible := True;
      Caption := 'New Creditor Entry';
   end
   else
      if FNName <= 0 then
         FNName   := StrToInt(TableString('creditor','ncreditor', Value, 'nname'));
end;

procedure TfrmPhoneBookNew.tsClientShow(Sender: TObject);
begin
  eClientCodeEnter(eClientCode);
end;

procedure TfrmPhoneBookNew.tsCreditorShow(Sender: TObject);
begin
  eCreditorCodeEnter(eCreditorCode);
end;

function TfrmPhoneBookNew.CheckClient: Boolean;
begin
  Result := True;
  if(qClient.FieldByName('CODE').AsString = '') then
  begin
    MessageDlg('Please use the "Client" tab to ensure client details are entered!', mtWarning, [mbOK], 0);
    pcPages.ActivePage := tsClient;
    ActiveControl := eClientCode;
    Result := False;
  end;
end;

function TfrmPhoneBookNew.CheckCreditor: Boolean;
begin
  Result := True;
  pcPages.ActivePage := tsCreditor;
  if(qCreditor.FieldByName('CODE').AsString = '') then
  begin
    MessageDlg('Please use the "Creditor" tab to ensure creditor details are entered!', mtWarning, [mbOK], 0);
    pcPages.ActivePage := tsCreditor;
    ActiveControl := eCreditorCode;
    Result := False;
  end;
end;

procedure TfrmPhoneBookNew.dbedNRICChange(Sender: TObject);
var
   str: string;
begin
   str := dbedNRIC.Text;
   imgbadNRIC.visible := False;
   imggoodNRIC.Visible := False;
   if (length(str) > 0) then
   begin
      if (length(str) <> 9) and (str[9] <> validateNRIC(str)) then
         imgbadNRIC.visible := True;

      if (length(str) = 9) and (str[9] = validateNRIC(str)) then
          imggoodNRIC.Visible := True
      else
         imgbadNRIC.visible := True;
   end;
end;

procedure TfrmPhoneBookNew.dbedtMasterPhoneBookEntryButtonClick(
  Sender: TObject);
var
  LSearch: TfrmPhoneBookSearch;
begin
  LSearch := TfrmPhoneBookSearch.Create(Self);
  try
    if (LSearch.ShowModal() = mrOK) then
    begin
      qryMasterPhoneBookEntry.Close;
      if not (qPhoneBook.State = dsEdit) then
        qPhoneBook.Edit;
//      qPhoneBookNNAMEMASTER.AsInteger := LSearch.NName;
        qPhoneBook.FieldByName('NNAMEMASTER').AsInteger := LSearch.NName;
        qryMasterPhoneBookEntry.ParamByName('NNAMEMASTER').AsInteger := LSearch.NName;
        qryMasterPhoneBookEntry.Open;
    end;    //  end if
  finally
    FreeAndNil(LSearch);
  end;
end;

procedure TfrmPhoneBookNew.bbtnContactNewClick(Sender: TObject);
var
   LStr: string;
begin
   if lbSearchMatches.ItemIndex <> -1 then
   begin
      if MsgAsk('Has approval been received from ???????.') = mrYes then
      begin
         try
            LStr := lbSearchMatches.Items[lbSearchMatches.ItemIndex];
            with procCreateContactfromExisting do
            begin
               ParamByName('P_OLD_NNAME').AsInteger := StrToInt(Copy(LStr,1,Pos(' ',LStr) - 1));
               ParamByName('P_ENTITY').AsString := dmAxiom.Entity;
               Execute;
               NName := ParambyName('RESULT').AsInteger;
               NClient := TableInteger('PHONEBOOK','NNAME', NName,'NCLIENT');
               Close;
            end;
         finally
            // now display the new contact
            bFromConflictCreate := True;
            Self.Close;
//            DoShow;
         end;
      end;
   end;
end;

procedure TfrmPhoneBookNew.BitBtn1Click(Sender: TObject);
var
   frmGenericSearch: TfrmGenericSearch;
begin
   frmGenericSearch := TfrmGenericSearch.Create(Self);
   with frmGenericSearch do
   begin
      tvLookup.OptionsData.Editing := True;
      tvLookup.OptionsData.Inserting := True;
      tvLookup.OptionsData.Appending := True;
      tvLookup.Navigator.Visible := True;
      tvLookupCODE.Editing := True;
      tvLookupDESCR.Editing := True;
      tvLookupCODE.Options.Focusing := True;
      tvLookupDESCR.Options.Focusing := True;
      SQL := 'SELECT SUPERCLIENT.CODE, SUPERCLIENT.DESCR, SUPERCLIENT.ROWID FROM SUPERCLIENT ORDER BY code';
      if ShowModal = mrOK then
      begin
         qrySuperClient.Refresh;
         qPhonebook.Edit;
         cmbSuperClient.EditValue := tvLookupCODE.EditValue;
         qPhonebook.FieldByName('SUPERCLIENT').AsString := tvLookupCODE.EditValue;
      end;
      Release;
   end;
end;

procedure TfrmPhoneBookNew.btnAttachImageClick(Sender: TObject);
var
   sFileName: string;
   bStream, fStream: TStream;
begin
   if qPhonebook.FieldByName('nname').IsNull then
      MsgInfo('You must save the Client prior to attaching an Image.')
   else
   begin
      dlFile.Filter := 'JPG|*.jpg';
      if not dlFile.Execute then exit;
      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;

         dmAxiom.uniInsight.StartTransaction;

         qPhoneBookImage.Close;
         qPhoneBookImage.ParamByName('nname').AsInteger := qPhonebook.FieldByName('nname').AsInteger;
         qPhonebookImage.Open;
         qPhonebookImage.Edit;

         sFileName := dlFile.FileName;

         try
            bStream := qPhoneBookImage.CreateBlobStream(qPhoneBookImage.fieldByname('CLIENT_IMAGE'), bmReadWrite);
            fStream := TFileStream.Create(sFileName, fmOpenRead);
            bStream.CopyFrom(fStream, fStream.Size);
            qPhonebookImage.ApplyUpdates();
         finally
            FreeAndNil(bStream);
            FreeAndNil(fStream);
            btnAttachImage.Visible := False;
         end;
      finally
         qPhonebookImage.Close;
         dmAxiom.uniInsight.Commit;
         qPhonebook.Refresh;
      end;
   end;
end;

procedure TfrmPhoneBookNew.btnDeleteMasterPhoneBookEntryClick(
  Sender: TObject);
begin
  if (MessageDlg('Do you wish to remove the link to the Parent Phone Book Entry?', mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
  begin
    if not (qPhoneBook.State = dsEdit) then
      qPhoneBook.Edit;
    qPhoneBook.FieldByName('NNAMEMASTER').Clear();
    dbedtMasterPhoneBookEntry.Text := '';
  end;

end;

{ TLikeThread }
const
{  C_SELECTLIKE =
    'SELECT '#13#10 +
    '  distinct p.nname, '#13#10 +
    '  p.search, '#13#10 +
    '  DECODE( '#13#10 +
    '    DECODE(p.whichaddress,NULL,NVL(P.whichaddress,m.whichaddress),p.whichaddress), '#13#10 +
    '    ''S'', TRIM( '#13#10 +
    '          NVL(p.suburb, m.suburb) || '#13#10 +
    '       DECODE(NVL(p.suburb, m.suburb),NULL,'''', '', '') || '#13#10 +
    '       NVL(p.state, m.state)), '#13#10 +
    '    ''P'', TRIM( '#13#10 +
    '         NVL(p.postalsuburb, m.postalsuburb) || '#13#10 +
    '       DECODE(NVL(p.postalsuburb, m.postalsuburb),NULL,'''', '', '') || '#13#10 +
    '       NVL(p.postalstate, m.postalstate)), '#13#10 +
    '     TRIM( '#13#10 +
    '         NVL(p.suburb, m.suburb) || '#13#10 +
    '       DECODE(NVL(p.suburb, m.suburb),NULL,'''', '', '') || '#13#10 +
    '       NVL(p.state, m.state))) '#13#10 +
    '    AS suburbstate '#13#10 +
    'FROM '#13#10 +
    '  phonebook p, '#13#10 +
    '  phonebook m, '#13#10 +
    '  matter ma '#13#10 +
    'WHERE '#13#10 +
    '  contains(ma.dummy, :search||''%'' ) > 0 '#13#10 +
//    '  UPPER(p.search) LIKE UPPER(:search) '#13#10 +
    'AND '#13#10 +
    '  p.nnamemaster = m.nname(+) '#13#10 +
    'AND '#13#10 +
    '  p.nclient = ma.nclient '#13#10 +
    'ORDER BY UPPER(p.search)'; }

    // AES 01/09/2017  added new index based on phonebbok and matter and simplified the select statement.
    C_SELECTLIKE = 'SELECT DISTINCT phonebook.nname, search, suburb_only_address AS suburbstate, entity '+
                   '    FROM phonebook_entity, phonebook '+
                   '   WHERE phonebook.nname = phonebook_entity.nname(+) and contains(contact_matter, :search||''%'' ) > 0 '+
                   'ORDER BY UPPER (search)';

constructor TLikeThread.Create();
begin
  inherited Create(True);
  FData := TCollection.Create(TLikeData);
  FQuery := TUniQuery.Create(nil);
  FCS := TCriticalSection.Create();

  FQuery.SQL.Text := C_SELECTLIKE;
  FSearchEvent    := CreateEvent(nil,False,False,nil);
  FTerminateEvent := CreateEvent(nil,False,False,nil);
  FreeOnTerminate := True;
  OnTerminate := TerminateEvent;
end;

destructor TLikeThread.Destroy;
begin
  FreeAndNil(FData);
  CloseHandle(FSearchEvent);
  CloseHandle(FTerminateEvent);
  FreeAndNil(FQuery);
  FreeAndNil(FCS);
  inherited;
end;

procedure TLikeThread.Execute;
var
  LHandles: TWOHandleArray;
  Lrv: DWORD;
  LLikeData: TLikeData;
begin
  LHandles[0] := FTerminateEvent;
  LHandles[1] := FSearchEvent;
  Lrv := WaitForMultipleObjects(2,@LHandles,False,INFINITE);

  while(not (Lrv in [WAIT_OBJECT_0, WAIT_ABANDONED_0,WAIT_ABANDONED_0])) do
  begin
    if(Lrv = WAIT_OBJECT_0 + 1) then
    begin
//      FCS.Enter();
      try
        if(FLockOut) then
          Sleep(10);
        FData.Clear();
        if (Trim(TSearch) > '') then
        begin
          FQuery.ParamByName('search').AsString := TSearch;
          FQuery.Connection := dmAxiom.uniInsight;
          FQuery.Open();
          try
            while(not FQuery.Eof) do
            begin
              LLikeData             := TLikeData(FData.Add());
              LLikeData.NName       := FQuery.FieldByName('nname').AsInteger;
              LLikeData.Search      := FQuery.FieldByName('search').AsString;
              LLikeData.SuburbState := FQuery.FieldByName('suburbstate').AsString;
              LLikeData.Entity      := FQuery.FieldByName('entity').AsString;
              if(FData.Count > 100) then
                Break;
              FQuery.Next();
            end;
          finally
            FQuery.Close();
          end;
        end;
      finally
//        FCS.Leave();
      end;
      PostMessage(DisplayWindowHandle,UpdateDisplayMsg,0,FData.Count);
    end;
    Lrv := WaitForMultipleObjects(2,@LHandles,False,INFINITE);
  end;
end;

function TLikeThread.PopulateList(AList: TListBox; ANName: Integer): Integer;
var
   i: Integer;
   LLikeData: TLikeData;
begin
   FCS.Enter();
   FLockOut := True;
   try
      AList.Items.BeginUpdate();
      try
         AList.Items.Clear();
         for i := 0 to FData.Count - 1 do
         begin
            LLikeData := TLikeData(FData.Items[i]);
            if(LLikeData.NName <> ANName) then
               AList.Items.AddObject(IntToStr(LLikeData.NName) + ' ' +
               LLikeData.Search + #09 + LLikeData.SuburbState + ' ' + LLikeData.Entity,
               Pointer(LLikeData.NName));
         end;
      finally
         AList.Items.EndUpdate();
      end;
   finally
      FCS.Leave();
      FLockOut := False;
   end;
   Result := AList.Items.Count;
end;

procedure TLikeThread.SetSearch(const Value: String);
begin
//  FCS.Enter();
  try
    if (FSearch <> Value) then
    begin
      FSearch := Value;
      SetEvent(FSearchEvent);
    end;
  finally
//    FCS.Leave();
  end;

end;

procedure TLikeThread.SetSession(const Value: TUniConnection);
begin
  FQuery.Connection := Value;
end;

procedure TLikeThread.TerminateEvent(Sender: TObject);
begin
  SetEvent(FTerminateEvent);
end;

procedure TfrmPhoneBookNew.WndProc(var Message: TMessage);
var
  LNum: Integer;
begin
  if(Message.Msg = FUpdateDisplayMsg) then
  begin
    LNum := FLikeThread.PopulateList(lbSearchMatches,NName);
    if(LNum > 100) then
      lTotalConflicts.Caption := '>100'
    else
      lTotalConflicts.Caption := IntToStr(LNum);
  end else
    inherited WndProc(Message);
end;

procedure TfrmPhoneBookNew.tSearchChangeTimerTimer(Sender: TObject);
begin
  tSearchChangeTimer.Enabled := False;
  //    AES 31/8/2017  Changed to use last name rather than the name field
  FLikeThread.TSearch := eLastName.Text;  // eSearch.Text;  //eName.Text;//  eSearch.Text;
end;

procedure TfrmPhoneBookNew.aOpenMatchUpdate(Sender: TObject);
begin
{  TAction(Sender).Enabled :=
    (lbSearchMatches.Count > 0) and
    (lbSearchMatches.ItemIndex > -1); }
end;

procedure TfrmPhoneBookNew.aOpenMatchExecute(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
  LStr: String;
begin
   if lbSearchMatches.ItemIndex <> -1 then
   begin
      LfrmPhonebook := TfrmPhonebook.Create(Self);
      LStr := lbSearchMatches.Items[lbSearchMatches.ItemIndex];
      LfrmPhonebook.Search := Copy(LStr,1,Pos(' ',LStr) - 1);
      LfrmPhonebook.Show();
   end;
end;

procedure TfrmPhoneBookNew.lbSearchMatchesDblClick(Sender: TObject);
begin
  aOpenMatch.Execute();
end;

procedure TfrmPhoneBookNew.lbSearchMatchesDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  LStr, LSearch, LSuburbState: String;
  p: Integer;
  y,x,th: Integer;
  LCanvas: TCanvas;
  Tr: TRect;
begin
   try
      LCanvas := TListBox(Control).Canvas;
      LCanvas.FillRect(Rect);

      LStr := TListBox(Control).Items[Index];
      p := Pos(#09,LStr);
      LSearch := Copy(LStr,1,p - 1);
      LSuburbState := Copy(LStr,p+1,Length(Lstr));

      th := LCanvas.TextHeight(Lstr);
      y := (((Rect.Bottom - Rect.Top) div 2) - (th div 2)) + Rect.Top;

      x := Rect.Right - LCanvas.TextWidth(LSuburbState);
      Tr := Rect;
      Tr.Right := x - 10;

      LCanvas.TextRect(Tr,2,y,LSearch);
      LCanvas.TextOut(x - 2,y,LSuburbState);
   except
   //
   end;
end;

procedure TfrmPhoneBookNew.CMDialogKey(var Msg: TWMKey);
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
  if(Assigned(ActiveControl) and (ActiveControl.Parent is TVirtualStringTree)) then
    DoTreeTabbing(ActiveControl.Parent as TVirtualStringTree, Msg)
  else
    inherited;
end;

procedure TfrmPhoneBookNew.tsChildrenShow(Sender: TObject);
begin
  qListChildren.Close();
  if(FCurrentChildNNames.Count > 0) then
  begin
    qListChildren.SQL.Text := 'select nname, search, name from phonebook where nname in (' +
          FCurrentChildNNames.CommaText + ')';
    qListChildren.Open();
  end;
end;

procedure TfrmPhoneBookNew.OnChildUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := qListChildren.RecordCount > 0;
end;

procedure TfrmPhoneBookNew.aOpenChildExecute(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
  LfrmPhonebook := TfrmPhonebook.Create(Application);
  LfrmPhonebook.Search := qListChildrenNNAME.AsString;  //  qListChildrenSearch.AsString;
  LfrmPhonebook.Show();
end;

procedure TfrmPhoneBookNew.aNewChildExecute(Sender: TObject);
var
  LForm: TfrmPhoneBookSearch;
begin
  bChildrenChanged := True;
  LForm := TfrmPhoneBookSearch.Create(Self);
  try
    LForm.MasterNName := NName;
    if(LForm.ShowModal() = mrOk) then
    begin
      if(LForm.Search <> '') then
      begin
        FCurrentChildNNames.Add(IntToStr(LForm.NName));

        tsChildrenShow(nil);
      end;
    end;
  finally
    FreeAndNil(LForm);
  end;
end;

procedure TfrmPhoneBookNew.aEditChildExecute(Sender: TObject);
var
  LForm: TfrmPhoneBookNew;
begin
  bChildrenChanged := True;
  LForm := TfrmPhoneBookNew.Create(Self);
  try
    LForm.NName := qListChildrenNNAME.AsInteger;
    LForm.Left := LForm.Left + 10;
    LForm.Top := LForm.Top + 10;
    LForm.ShowModal();
    tsChildrenShow(nil);
  finally
    FreeAndNil(LForm);
  end;
end;

procedure TfrmPhoneBookNew.aDeleteChildExecute(Sender: TObject);
var
  i: Integer;
begin
  bChildrenChanged := True;
  if MessageDlg('Are you sure you want to remove the relation ship to '#13#10 + qListChildrenNAME.AsString, mtConfirmation, [mbYes,mbNo], 0) = mrNo then
    Exit;
{  qTmp.SQL.Text := 'UPDATE PHONEBOOK SET NNAMEMASTER = NULL WHERE NNAME = ' + IntToStr(NName);
  qTmp.ExecSQL();}
  i := FCurrentChildNNames.IndexOf(qListChildrenNNAME.AsString);
  if(i > -1) then
    FCurrentChildNNames.Delete(i);
  FDeletedChildNNames.Add(qListChildrenNNAME.AsString);

  tsChildrenShow(nil);
end;

procedure TfrmPhoneBookNew.SaveChildren();
var
  i: Integer;
  LPBGroup: String;
begin
  qTmp.SQL.Text := 'UPDATE PHONEBOOK SET NNAMEMASTER = NULL WHERE NNAME = :NNAME';
  qTmp2.SQL.Text := 'DELETE FROM pbgroupings WHERE nname = :nname AND category = :category';

  if(SettingExists(C_EMP,C_OWNERCLIENT,C_MULTICLIENTGROUP)) then
    LPBGroup := SettingLoadString(C_EMP,C_OWNERCLIENT,C_MULTICLIENTGROUP)
  else
    LPBGroup := '';
  qTmp2.ParamByName('category').AsString := LPBGroup;

  for i := 0 to FDeletedChildNNames.Count - 1 do
  begin
    qTmp.ParamByName('nname').AsString := FDeletedChildNNames[i];
    qTmp.ExecSQL();

    qTmp2.ParamByName('nname').AsString := FDeletedChildNNames[i];
    qTmp2.ExecSQL();
  end;

  for i := 0 to FCurrentChildNNames.Count - 1 do
  begin
    qTmp2.ParamByName('nname').AsString := FCurrentChildNNames[i];
    qTmp2.ExecSQL();
  end;

  qTmp.SQL.Text := 'UPDATE PHONEBOOK SET NNAMEMASTER = :MASTER WHERE NNAME = :NNAME';
  qTmp.ParamByName('master').AsInteger := NName;

  qTmp2.SQL.Text := 'INSERT INTO pbgroupings VALUES (:nname,:category)';
  qTmp2.ParamByName('category').AsString := LPBGroup;

  for i := 0 to FCurrentChildNNames.Count - 1 do
  begin
    qTmp.ParamByName('nname').AsString := FCurrentChildNNames[i];
    qTmp.ExecSQL();

    if(NClient > 0) then
    begin
      try
        qTmp2.ParamByName('nname').AsString := FCurrentChildNNames[i];
        qTmp2.ExecSQL();
      finally // dont care about errors here - pbgroup may already exist
      end;
    end;
  end;
end;


procedure TfrmPhoneBookNew.dbgChildrenDblClick(Sender: TObject);
begin
  aEditChild.Execute();
end;

procedure TfrmPhoneBookNew.actEditEventUpdate(Sender: TObject);
begin
//   btnEditEvent.Enabled := grdEventList.d SelectedCount > 0;
end;

procedure TfrmPhoneBookNew.grdEventListDblClick(Sender: TObject);
begin
   actEditEvent.Execute();
end;

procedure TfrmPhoneBookNew.pcPagesChange(Sender: TObject);
begin
 //     tsEventList :=  btnAddEvent.Enabled := True;
//   qryDebtorTaskTemplate.Close;
   if qPhonebook.Active then
      updateControlsForMasterLink;

   qryTaxRate.open;
   If pcPages.ActivePage = tsEventList then
   begin
      dmMarketEventDataModule.qryParticipantEvents.Close();
      dmMarketEventDataModule.qryParticipantEvents.ParamByName('NNAME').AsInteger :=  FNName;
      dmMarketEventDataModule.qryParticipantEvents.Open();
      btnAddEvent.Enabled := True;
      btnEditEvent.Enabled := False;
      if tvEventList.DataController.RecordCount > 0 then
         btnEditEvent.Enabled := True;
   end;

   if pcPages.ActivePage = tsClient then
   begin
      if qclient.State = dsBrowse then
         qClient.Edit;
      qryDebtorTaskTemplate.Open;
      qryTaxRate.Open;
      SetReqFieldsColour('CLIENT',qClient, tsClient);
      cmbAllowMatters.Enabled := dmAxiom.Security.Client.ChangeAllowMatter;
      btnAttachImage.Visible := qPhonebook.FieldByName('CLIENT_IMAGE').IsNull;
   end;

   if pcPages.ActivePage = tsAddress then
   begin
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsAddress);
   end;

   if pcPages.ActivePage = tsPhone then
   begin
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsPhone);
   end;

   if pcPages.ActivePage = tsAdditional then
   begin
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsAdditional);
   end;

   if pcPages.ActivePage = tsNotes then
   begin
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsNotes);
   end;

   if pcPages.ActivePage = tsClient then
   begin
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsClient);
   end;

   if pcPages.ActivePage = tsCreditor then
   begin
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsCreditor);
   end;

   if pcPages.ActivePage = tsMarketing then
   begin
      SetReqFieldsColour('PHONEBOOK',qPhonebook, tsMarketing);
   end;

end;

procedure TfrmPhoneBookNew.actAddEventUpdate(Sender: TObject);
begin
   btnAddEvent.Enabled := True;
end;

procedure TfrmPhoneBookNew.actAddEventExecute(Sender: TObject);
var
  LMarketAddParticipant :TfrmMarketAddParticipant;
begin
   LMarketAddParticipant := TfrmMarketAddParticipant.Create(Self, NName,0, True);
//   LMarketAddParticipant.CreateItem;
   LMarketAddParticipant.ShowModal;
   dmMarketEventDataModule.qryParticipantEvents.Refresh;
end;

procedure TfrmPhoneBookNew.actEditEventExecute(Sender: TObject);
var
  LMarketAddParticipant :TfrmMarketAddParticipant;
begin
   LMarketAddParticipant := TfrmMarketAddParticipant.Create(Self, NName,
                     dmMarketEventDataModule.qryParticipantEvents.FieldByName('EVENT_PART_ID').AsInteger ,False);
   if LMarketAddParticipant.ShowModal = mrOK then
   begin
      dmMarketEventDataModule.qryParticipantEvents.Refresh;
      btnEditEvent.Enabled := True;
   end;
end;

procedure TfrmPhoneBookNew.cxGrid1DblClick(Sender: TObject);
begin
   actEditEvent.Execute();
end;

procedure TfrmPhoneBookNew.DBEdit1Change(Sender: TObject);
begin

end;

// Marketing code - Tony
//procedure TfrmPhoneBookNew.cmbReferralClick(Sender: TObject);
procedure TfrmPhoneBookNew.cmbReferralPropertiesCloseUp(Sender: TObject);
var
  referType : string;
  selectCode, selectID: string;
begin
   try
      referType := '';
      if not varIsNull(cmbReferral.EditValue) then
      begin
        if String(cmbReferral.EditValue) <> '' then
        begin
          // A valid selection was made, so show referral label
          lblReferredBy.Visible := True;
          edReferredBy.Caption := '';
          edReferredBy.Visible := True;

          cmbReferralOther.Text := qPhoneBook.FieldByName('ReferredBy').AsString; //'';
          cmbReferralOther.Visible := False;

          // If referral is not Other
          if cmbReferral.EditValue <> 0 then
          begin
            qryReferredBy.First;
            while not qryReferredBy.Eof do
            begin
              // Compare code in drop down menu and of that in query result
              if qryReferredBy.FieldByName('Code').AsInteger = Integer(cmbReferral.EditValue) then
              begin
                // Once code is found, determine the referral table to look up
                referType := qryReferredBy.FieldByName('ReferralType').AsString;
                break;
              end;
              qryReferredBy.Next;
            end; // End of while not qryReferredBy.Eof

            if (referType <> '') then
            begin
              // Check query state before editing
    //          if not (qPhoneBook.State = dsEdit) then
    //            qPhoneBook.Edit;

              // If client, open the client search screen
              if uppercase(referType) = 'CLIENT' then
              begin
                if not FormExists(frmClientSearch) then
                  frmClientSearch := TfrmClientSearch.Create(self);

                if frmClientSearch.ShowModal = mrOk then
                begin
                  selectCode := frmClientSearch.qryClientList.FieldByName('CODE').AsString;
                  selectID := frmClientSearch.qryClientList.FieldByName('nclient').AsString;
                  edReferredBy.Caption := frmClientSearch.qryClientList.FieldByName('SEARCH').AsString + ' (' + selectCode + ')';
                  qPhoneBook.FieldByName('referredBy_nclient').AsString := selectID;
    //              qPhoneBook.FieldByName('referralCode').AsInteger := ReferTypeID;   // Integer(cmbReferral.EditValue);
                  qPhoneBook.FieldByName('referredBy_emp').Clear;
                  qPhoneBook.FieldByName('referredBy_nname').Clear;
                  qPhoneBook.FieldByName('referredBy').AsString := selectCode;
                  qPhoneBook.FieldByName('ReferralType').AsString := referType;
                end
                else
                begin
                  qPhoneBook.FieldByName('referredBy').Clear;
                  qPhoneBook.FieldByName('referralCode').Clear;
                  qPhoneBook.FieldByName('referredBy_nclient').Clear;
                end;
              end
              // If contact, open the phone book search screen
              else if uppercase(referType) = 'CONTACT' then
              begin
    //            if not FormExists(frmPhoneBookSearch) then
                frmPhoneBookSearch := TfrmPhoneBookSearch.Create(self);

                if frmPhoneBookSearch.ShowModal = mrOk then
                begin
                  selectCode := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsString;
                  edReferredBy.Caption := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString + ' (' + frmPhoneBookSearch.qryPhoneBook.FieldByName('ADDRESS').AsString + ')';
                  { Instead of displaying selectCode, display address as it is more meaningful to users }
                  // edReferredBy.Caption := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString + ' (' + selectCode + ')';
                  qPhoneBook.FieldByName('referredBy_nname').AsString := selectCode;
    //              qPhoneBook.FieldByName('referralCode').AsInteger := ReferTypeID;  // Integer(cmbReferral.EditValue);
                  qPhoneBook.FieldByName('referredBy_nclient').Clear;
                  qPhoneBook.FieldByName('referredBy_emp').Clear;
                  qPhoneBook.FieldByName('referredBy').AsString := selectCode;
                  qPhoneBook.FieldByName('ReferralType').AsString := referType;
                end
                else
                begin
                  qPhoneBook.FieldByName('referredBy').Clear;
                  qPhoneBook.FieldByName('referralCode').Clear;
                  qPhoneBook.FieldByName('referredBy_nname').Clear;
                end;
              end
              // If employee ...
              else if UpperCase(referType) = 'EMPLOYEE' then
              begin
                if not FormExists(fmEmployeeFindDialog) then
                  fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(self);

                if fmEmployeeFindDialog.ShowModal = mrOK then
                begin
                  selectCode := fmEmployeeFindDialog.lbEmployees.EditValue;
                  edReferredBy.Caption := fmEmployeeFindDialog.lbEmployees.Text + ' (' + selectCode + ')';
                  qPhoneBook.FieldByName('referredBy_emp').AsString := selectCode;
    //              qPhoneBook.FieldByName('referralCode').AsInteger := ReferTypeID;  // Integer(cmbReferral.EditValue);
                  qPhoneBook.FieldByName('referredBy_nclient').Clear;
                  qPhoneBook.FieldByName('referredBy_nname').Clear;
                  qPhoneBook.FieldByName('referredBy').AsString := selectCode;
                  qPhoneBook.FieldByName('ReferralType').AsString := referType;
    //              qPhoneBook.FieldByName('REFERREDBY').AsString := cmbReferral.EditValue;
                end
                else
                begin
                  qPhoneBook.FieldByName('referredBy').Clear;
                  qPhoneBook.FieldByName('referralCode').Clear;
                  qPhoneBook.FieldByName('referredBy_emp').clear;
                end;
              end; // If/else referType = CLIENT
            end; // End of if (referType <> '')
          end // End of if cmbReferral.EditValue <> 0 (other)
          else
          begin
            edReferredBy.Visible := False;
            cmbReferralOther.Visible := True;
            qryReferralOther.Open;
            cmbReferralOther.EditValue := '';
            cmbReferralOther.Text := '';
            qPhoneBook.FieldByName('referredBy').Clear;
            qPhoneBook.FieldByName('ReferralType').AsString := referType;
          end; // End of else (cmbReferral.EditValue <> 0 (other))
        end; // End of if String(cmbReferral.EditValue) <> ''
      end; // End of if not varIsNull(cmbReferral.EditValue)
    except
    // silent trap
    end;
end;

procedure TfrmPhoneBookNew.cmbSystem1DropDown(Sender: TObject);
begin
   cmbSystem1.Items.Clear;
   qrySystem1.Open;
   while qrySystem1.Eof = False do
   begin
      cmbSystem1.Items.Add(qrySystem1.FieldByName('system1').AsString);
      qrySystem1.Next;
   end;
   qrySystem1.Close;
end;

procedure TfrmPhoneBookNew.cmbSystem2DropDown(Sender: TObject);
begin
   cmbSystem2.Items.Clear;
   qrySystem2.Open;
   while qrySystem2.Eof = False do
   begin
      cmbSystem2.Items.Add(qrySystem2.FieldByName('system2').AsString);
      qrySystem2.Next;
   end;
   qrySystem2.Close;
end;

procedure TfrmPhoneBookNew.grdEventListDBTableView1ATTENDEDPropertiesChange(
  Sender: TObject);
begin
//  grdEventListDBTableView1DECLINED.GetProperties.
end;

procedure TfrmPhoneBookNew.cmbReferralPropertiesChange(Sender: TObject);
begin
   if qPhonebook.Active then
   begin
      if not (qPhoneBook.State = dsEdit) then
         qPhoneBook.Edit;

      if varIsNull(cmbReferral.EditValue) then
      begin
         qPhoneBook.FieldByName('referralCode').AsVariant := Null;
         qPhoneBook.FieldByName('referredBy').AsVariant := Null;
         qPhoneBook.FieldByName('referredBy_nname').Clear;
         qPhoneBook.FieldByName('referredBy_nclient').Clear;
         qPhoneBook.FieldByName('referredBy_emp').Clear;
      end
      else if (String(cmbReferral.EditValue) = '') OR (cmbReferral.Text = '') then
      begin
         qPhoneBook.FieldByName('referralCode').AsVariant := Null;
         qPhoneBook.FieldByName('referredBy').AsVariant := Null;
         qPhoneBook.FieldByName('referredBy_nname').Clear;
         qPhoneBook.FieldByName('referredBy_nclient').Clear;
         qPhoneBook.FieldByName('referredBy_emp').Clear;
      end;
   end;
end;

procedure TfrmPhoneBookNew.cmbIndustryPropertiesChange(Sender: TObject);
begin
  // Check state before editing
  if not (qPhoneBook.State = dsEdit) then
    qPhoneBook.Edit;

  if not varIsNull(cmbIndustry.EditValue) then
  begin
    if (String(cmbIndustry.EditValue) <> '') OR (cmbIndustry.Text <> '') then
      qPhoneBook.FieldByName('IndustryCode').AsString := cmbIndustry.EditValue
    else
      qPhoneBook.FieldByName('IndustryCode').AsVariant := Null;
  end
  else
    qPhoneBook.FieldByName('IndustryCode').AsVariant := Null;
end;

procedure TfrmPhoneBookNew.cmbMaintainerPropertiesChange(Sender: TObject);
begin
   try
      if qPhoneBook.Active then
      begin
         // Check state before editing
         if not (qPhoneBook.State = dsEdit) then
           qPhoneBook.Edit;

         if not varIsNull(cmbMaintainer.EditValue) then
         begin
           if (String(cmbMaintainer.EditValue) <> '') OR (cmbMaintainer.Text <> '') then
             qPhoneBook.FieldByName('ReferralMaintainer').AsString := cmbMaintainer.EditValue
           else
             qPhoneBook.FieldByName('ReferralMaintainer').AsVariant := Null;
         end
         else
           qPhoneBook.FieldByName('ReferralMaintainer').AsVariant := Null;
      end;
   except
   // silent
   end;
end;

procedure TfrmPhoneBookNew.cmbReferralOtherChange(Sender: TObject);
begin
  // Check state before editing
  if not (qPhoneBook.State = dsEdit) then
    qPhoneBook.Edit;

  // Other type referral
  qPhoneBook.FieldByName('referredBy').AsString := cmbReferralOther.Text; //edReferredByOther.Text;
  qPhoneBook.FieldByName('referralCode').AsInteger := 0;
end;

procedure TfrmPhoneBookNew.eSearchPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   FOldSearch := eSearch.EditValue;
end;

procedure TfrmPhoneBookNew.eSearchEnter(Sender: TObject);
begin
  if(eSearch.Enabled and (eSearch.Text = '')) then
  begin
    // figure out what to put in the search..
    qPhoneBook.FieldByName('SEARCH').AsString := MakeSearch();
    eSearch.EditModified := True;
    FLikeThread.TSearch := qPhoneBook.FieldByName('LASTNAME').AsString;  //qPhoneBook.FieldByName('NAME').AsString;  //qPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmPhoneBookNew.eSearchPropertiesChange(Sender: TObject);
begin
   tSearchChangeTimer.Enabled := True;
end;

procedure TfrmPhoneBookNew.cmbMaintainerPropertiesCloseUp(Sender: TObject);
begin
  // Check state before editing
  if not (qPhoneBook.State = dsEdit) then
    qPhoneBook.Edit;

   try
         if not varIsNull(cmbMaintainer.EditValue) then
         begin
            if (String(cmbMaintainer.EditValue) <> '') OR (cmbMaintainer.Text <> '') then
               qPhoneBook.FieldByName('ReferralMaintainer').AsString := cmbMaintainer.EditValue
            else
               qPhoneBook.FieldByName('ReferralMaintainer').AsVariant := Null;
         end
         else
            qPhoneBook.FieldByName('ReferralMaintainer').AsVariant := Null;
   except
   // silent
   end;
end;

procedure TfrmPhoneBookNew.cmbReferralOtherPropertiesCloseUp(
  Sender: TObject);
begin
  // Check state before editing
 // if not (qPhoneBook.State = dsEdit) then
 //   qPhoneBook.Edit;

  // Other type referral
   try
      qPhoneBook.FieldByName('referredBy').AsString := cmbReferralOther.Text; //edReferredByOther.Text;
      qPhoneBook.FieldByName('referralCode').AsInteger := 0;
   except
   // silent trap
   end;
end;

procedure TfrmPhoneBookNew.cmbIndustryPropertiesCloseUp(Sender: TObject);
begin
  // Check state before editing
{  if not (qPhoneBook.State = dsEdit) then
    qPhoneBook.Edit;

  if not varIsNull(cmbIndustry.EditValue) then
  begin
    if (String(cmbIndustry.EditValue) <> '') OR (cmbIndustry.Text <> '') then
      qPhoneBook.FieldByName('IndustryCode').AsString := cmbIndustry.EditValue
    else
      qPhoneBook.FieldByName('IndustryCode').AsVariant := Null;
  end
  else
    qPhoneBook.FieldByName('IndustryCode').AsVariant := Null;  }
end;

procedure TfrmPhoneBookNew.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   LfmPostCode: TfrmPostcodeSearch;
begin
   LfmPostCode := TfrmPostcodeSearch.Create(Self);
   try
      LfmPostCode.BorderStyle := bsDialog;

      LfmPostCode.tbSuburbSearch.Text := eCustSuburb.Text;
      LfmPostCode.tbSuburbSearchChange(LfmPostCode.tbSuburbSearch);

      if(LfmPostCode.ShowModal() = mrOK) then
      begin
         if qPhoneBook.State = dsBrowse then
            qPhoneBook.Edit;
         qPhoneBook.FieldByName('CUST_SUBURB').AsString   := LfmPostCode.qryPostcodes.FieldByName('SUBURB').AsString;
         qPhoneBook.FieldByName('CUST_STATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
         qPhoneBook.FieldByName('CUST_POSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
      end;
   finally
      FreeAndNil(LfmPostCode);
   end;

end;

procedure TfrmPhoneBookNew.cxDBLookupComboBox1PropertiesInitPopup(
  Sender: TObject);
begin
   qrySuperClient.Refresh;
end;

procedure TfrmPhoneBookNew.cxDBTextEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
   if (not (CharInSet(Key, ['0'..'9'])) and not (Key = '.')) then
      Key := #0;
end;

procedure TfrmPhoneBookNew.eABNPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   Msg: string;
begin
   qPhonebook.FieldByName('ABN').AsString := Trim(DisplayValue);
   if DisplayValue <> '' then
   begin
      if (not Check_ABN(Trim(DisplayValue), Msg)) then
      begin
         ErrorText := Msg;
         Error := True;
      end;
   end;

end;

procedure TfrmPhoneBookNew.tsNameExit(Sender: TObject);
begin
   if(eSearch.Enabled and (eSearch.Text = '')) then
   begin
      // figure out what to put in the search..
      qPhoneBook.FieldByName('SEARCH').AsString := MakeSearch();
      eSearch.EditModified := True;
      FLikeThread.TSearch := qPhoneBook.FieldByName('LASTNAME').AsString; //qPhoneBook.FieldByName('NAME').AsString;  qPhoneBook.FieldByName('SEARCH').AsString;
   end;
end;

procedure TfrmPhoneBookNew.pbConvertToCreditorClick(Sender: TObject);
begin
   if (qPhoneBook.Modified) or (qClient.Modified) or
      (qCreditor.Modified) or (dmMarketEventDataModule.qryParticipantEvents.Modified) or
      (bInterestChanged) or (bFirmContactsChanged) or (bGroupChanged) or
      (bChildrenChanged) or (bMatterDataChanged) then
   begin
      if MsgAsk('There are unsaved changes. Do you want to save changes?') = mrYes then
         SavePhonebook(True);
   end;

   NCreditor := 0;
//   SetupForCreditor(0);
   DoShow;
   pbConvertToCreditor.Enabled := False;
//   pbConvertClientFromPhonebook.Visible := False;
   tsCreditor.Show;

{   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   frmPhoneBookSearch.SelectingCLients := False;
   if(frmPhoneBookSearch.ShowModal() = mrOk) then
   begin
      if (frmPhoneBookSearch.NClient > 0) then
         MsgInfo('Selected entry is a client.  Clients cannot be converted to Creditors.')
      else
      begin
         NName := frmPhoneBookSearch.NName;
         NCreditor := 0;
         SetupForCreditor(0);
         DoShow;
         pbFromPhonebook.Enabled := False;
      end;
   end;  }
end;

procedure TfrmPhoneBookNew.pbConvertToClientClick(Sender: TObject);
begin
//   if (IsCreditor(qPhoneBook.FieldByName('NNAME').AsInteger)) then
//         MsgInfo('Selected entry is a creditor.  Creditors cannot be converted to Clients.')
//   else
//   begin
      if (qPhoneBook.Modified) or (qClient.Modified) or
         (qCreditor.Modified) or (dmMarketEventDataModule.qryParticipantEvents.Modified) or
         (bInterestChanged) or (bFirmContactsChanged) or (bGroupChanged) or
         (bChildrenChanged) or (bMatterDataChanged) then
      begin
         if MsgAsk('There are unsaved changes. Do you want to save changes?') = mrYes then
            SavePhonebook(True);
      end;

      NClient := 0;
      SetupForClient(0);
      DoShow;
      pbConvertToClient.Enabled := False;
      pbConvertFromPhonebook.Visible := False;
      tsClient.Show;
//   end;
end;

procedure TfrmPhoneBookNew.chklistInterestClick(Sender: TObject);
begin
   bInterestChanged := True;
end;

procedure TfrmPhoneBookNew.chkPhoneWorkClick(Sender: TObject);
begin
  if(FScrolling) then
    Exit;
  if qPhoneBook.State in [dsBrowse] then
     qPhoneBook.Edit;

  if(TCheckBox(Sender).Checked) then
  begin
    if((Sender = chkPhoneWork) and (chkPhoneWork.Checked)) then
      qPhoneBook.FieldByName('WHICHPHONE').Value := 'W';
    if((Sender = chkPhoneMobile) and (chkPhoneMobile.Checked)) then
      qPhoneBook.FieldByName('WHICHPHONE').Value := 'M';
    if((Sender = chkPhoneDirect) and (chkPhoneDirect.Checked)) then
      qPhoneBook.FieldByName('WHICHPHONE').Value := 'D';
    if((Sender = chkPhoneHome) and (chkPhoneHome.Checked)) then
      qPhoneBook.FieldByName('WHICHPHONE').Value := 'H';
  end else
  begin
    if(Sender = chkPhoneWork) then
      qPhoneBook.FieldByName('WHICHPHONE').Value := 'W'
    else if(Sender = chkPhoneMobile) then
      qPhoneBook.FieldByName('WHICHPHONE').Value := 'M'
    else if (Sender = chkPhoneDirect) then
      qPhoneBook.FieldByName('WHICHPHONE').Value := 'D'
    else if (Sender = chkPhoneHome) then
      qPhoneBook.FieldByName('WHICHPHONE').Value := 'H';
  end;

   CRTemp_qPhoneBookAfterScroll(qPhonebook);
end;

procedure TfrmPhoneBookNew.chkProspectiveClientClick(Sender: TObject);
   procedure SetupClient;
   var
      LIndex: integer;
   begin
      qClient.ParamByName('NCLIENT').AsInteger := NClient;
      qClient.Open();
      if(qCodeRules.Active = False) then
      begin
         qCodeRules.ParamByName('ENTITY').AsString := dmAxiom.Entity;
         qCodeRules.Open();
      end;

      qActiveEmployees.Open();
      qPartners.Open();
      qFeeCode.Open();
      qBillTemplate.Open();

      qClientGroups.ParamByName('NCLIENT').Value := NClient;
      qClientGroups.Open();

      lbClientGroups.Clear();
      try
         while(not qClientGroups.Eof) do
         begin
           LIndex := lbClientGroups.Items.Add(qClientGroups.FieldByName('CATEGORY').AsString);
           lbClientGroups.Checked[LIndex] := (qClientGroups.FieldByName('HASGROUP').AsString = 'True');
           FInitialClientGroups.Add(qClientGroups.FieldByName('CATEGORY').AsString);
           if(lbClientGroups.Checked[LIndex]) then
           begin
             lbClientGroups.ItemIndex := LIndex;
           end;
           qClientGroups.Next();
         end;
       finally
         qClientGroups.Close();
       end;
   end;
begin
//   pbConvertToClient.Visible := (chkProspectiveClient.Checked = False);
   if chkProspectiveClient.Checked = True then
   begin
      NewClient := True;
      SetupClient;
      SetupForClient(0);
   end
   else
      tsCLient.TabVisible := False;
end;

procedure TfrmPhoneBookNew.lbFirmContactsClick(Sender: TObject);
begin
   bFirmContactsChanged := True
end;

procedure TfrmPhoneBookNew.lbGroupsClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var
  LGroup: String;
begin
  bGroupChanged := True;
  LGroup := lbGroups.Items[AIndex].Text;
  if (ANewState = cbsChecked ) then    {(lbGroups.Items.Items[AIndex].Checked)}
  begin
    if(FRemovedGroups.IndexOf(LGroup) > -1) then
      FRemovedGroups.Delete(FRemovedGroups.IndexOf(LGroup));
    FAddedGroups.Add(LGroup);
    LoadPartyData(LGroup);
    LoadMatterPartyData(LGroup);
  end else
  begin
    if(FAddedGroups.IndexOf(LGroup) > -1) then
      FAddedGroups.Delete(FAddedGroups.IndexOf(LGroup));
    FRemovedGroups.Add(LGroup);
    RemovePartyData(vtCustomData, LGroup);
    RemovePartyData(vtMatterData, LGroup);
  end;
end;

procedure TfrmPhoneBookNew.aCopyAddressToCustomExecute(Sender: TObject);
begin
   if qPhoneBook.State = dsBrowse then
      qPhoneBook.Edit;
   qPhoneBook.FieldByName('CUST_ADDRESS').AsString  := qPhoneBook.FieldByName('ADDRESS').AsString;
   qPhoneBook.FieldByName('CUST_SUBURB').AsString   := qPhoneBook.FieldByName('SUBURB').AsString;
   qPhoneBook.FieldByName('CUST_STATE').AsString    := qPhoneBook.FieldByName('STATE').AsString;
   qPhoneBook.FieldByName('CUST_POSTCODE').AsString := qPhoneBook.FieldByName('POSTCODE').AsString;
   qPhoneBook.FieldByName('CUST_COUNTRY').AsString  := qPhoneBook.FieldByName('COUNTRY').AsString;
end;

procedure TfrmPhoneBookNew.aCopyPostalToCustomExecute(Sender: TObject);
begin
   if qPhoneBook.State = dsBrowse then
      qPhoneBook.Edit;
   qPhoneBook.FieldByName('CUST_ADDRESS').AsString  := qPhoneBook.FieldByName('POSTALADDRESS').AsString;
   qPhoneBook.FieldByName('CUST_SUBURB').AsString   := qPhoneBook.FieldByName('POSTALSUBURB').AsString;
   qPhoneBook.FieldByName('CUST_STATE').AsString    := qPhoneBook.FieldByName('POSTALSTATE').AsString;
   qPhoneBook.FieldByName('CUST_POSTCODE').AsString := qPhoneBook.FieldByName('POSTALPOSTCODE').AsString;
   qPhoneBook.FieldByName('CUST_COUNTRY').AsString  := qPhoneBook.FieldByName('POSTALCOUNTRY').AsString;
end;



procedure TfrmPhoneBookNew.popCopyStreetAddressPopup(Sender: TObject);
begin
//   CopyToPostalAddress.Enabled := qPhoneBook.Modified;
//   CopyToCustomAddress.Enabled := qPhoneBook.Modified;
   popCopyStreetAddress.Items.Items[1].Caption := 'Copy Address To ' + lblCustomAddress.Caption;
end;



procedure TfrmPhoneBookNew.popCopyPostalAddressPopup(Sender: TObject);
begin
//   CopyPostalAddressToCustomAddress.Enabled := qPhoneBook.Modified;
//   CopyStreetAddressToCustomAddress.Enabled := qPhoneBook.Modified;
   popCopyPostalAddress.Items.Items[1].Caption := 'Copy Postal Address To ' + lblCustomAddress.Caption;
end;

procedure TfrmPhoneBookNew.aCopyAddressDownUpdate(Sender: TObject);
begin
//   aCopyAddressDown.Enabled := qPhoneBook.Modified;
end;

procedure TfrmPhoneBookNew.aCopyAddressUpUpdate(Sender: TObject);
begin
//   aCopyAddressUp.Enabled := qPhoneBook.Modified;
end;

procedure TfrmPhoneBookNew.eCustSuburbExit(Sender: TObject);
var
   LfmPostCode: TfrmPostcodeSearch;
begin
  if(dsPhoneBook.State in [dsEdit, dsInsert]) then
  begin
    // 09/09/2009 comment by AES we should change the postcode and maybe state as well
//    if(eCustPostcode.Text = '') then
//    begin
      qPostCodeSearchSuburb.ParamByName('suburb').AsString := eCustSuburb.Text;
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

                 LfmPostCode.tbSuburbSearch.Text := ePostalSuburb.Text;
                 LfmPostCode.tbSuburbSearchChange(LfmPostCode.tbSuburbSearch);

                 if(LfmPostCode.ShowModal() = mrOK) then
                 begin
                     qPhoneBook.FieldByName('CUST_POSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
                     qPhoneBook.FieldByName('CUST_STATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
                end;
              finally
                 LfmPostCode.Free;
              end;
           end
           else
           begin
              // 09/09/2009 comment by AES do not overwrite suburb, leave as typed
//          qPhoneBook.FieldByName('CUST_SUBURB').AsString   := qPostCodeSearchSuburbSUBURB.AsString;
               qPhoneBook.FieldByName('CUST_POSTCODE').AsString := qPostCodeSearchSuburbPCODE.AsString;
               qPhoneBook.FieldByName('CUST_STATE').AsString    := qPostCodeSearchSuburbSTATE.AsString;
           end;
        end;
      finally
        qPostCodeSearchSuburb.Close();
      end;
//    end;
  end;
end;

procedure TfrmPhoneBookNew.edtDiscountKeyPress(Sender: TObject; var Key: Char);
begin
   if (not CharInSet(Key, ['0'..'9']) and not (Key = '.')) then
      Key := #0;
end;

procedure TfrmPhoneBookNew.qClientAfterEdit(DataSet: TDataSet);
begin
    if DataSet.Modified then
      bClientModified := True;
end;

procedure TfrmPhoneBookNew.qClientNewRecord(DataSet: TDataSet);
begin
   qClient.fieldByname('FEE_TAX_BASIS').AsString := tableString('ENTITY','CODE',dmAxiom.Entity,'FEE_TAX_BASIS');
end;

procedure TfrmPhoneBookNew.qCreditorAfterEdit(DataSet: TDataSet);
begin
   bCreditorModified := True;
end;

procedure TfrmPhoneBookNew.SaveDataToMsg;
var
  Contact: IRwMapiContact;
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
  OldCursor: TCursor;
begin
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
             WriteLog('dxBarEmailAsAttachClick: Error establishing MAPI Session ' + E.Message);
         end;
      finally
         Screen.Cursor := OldCursor;
      end;
   end;

   //MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
   //Folder := MsgStore.OpenFolderByType(ftContact, alReadWrite);

   //FMessage := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;
   //Contact := FMessage as IRwMapiContact;
   Contact := dmAxiom.MAPISession.CreateMessage(ftContact) as IRwMAPIContact;

   Contact.WebPage                                           := eInternetWWW.Text;
//   Contact.NamedProp(NPR_CONTACT_IMADDRESS).AsString         := EdtIMAddress.Text;
   Contact.PropByName(PR_DISPLAY_NAME).AsString              := eGivenNames.Text + ' '+ eLastName.Text;
   if SystemString('File_Under_Search') = 'Y' then
      Contact.FileUnder                                         := eSearch.Text
   else
      Contact.FileUnder                                         := eName.Text;
//  Contact.PropByName(PR_TITLE).AsString                     := EdtTitle.Text;
  Contact.PropByName(PR_COMPANY_NAME).AsString               := eName.Text;
   Contact.PropByName(PR_HOME_TELEPHONE_NUMBER).AsString     := EPhoneHome.Text;
   Contact.PropByName(PR_OFFICE_TELEPHONE_NUMBER).AsString   := EPhoneWork.Text;
   Contact.PropByName(PR_BUSINESS_FAX_NUMBER).AsString       := ePhoneFax.Text;
   Contact.PropByName(PR_CELLULAR_TELEPHONE_NUMBER).AsString := ePhoneMobile.Text;
//   Contact.NamedProp(NPR_CATEGORIES).AsString                := StringReplace(edtCategories.Text,';',#13#10,[rfReplaceAll]);
//   Contact.NamedProp(NPR_COMMON_CONTACTNAMES).AsString       := StringReplace(EdtContactNames.Text,';',#13#10,[rfReplaceAll]);
   Contact.PropByName(NPR_COMMON_PRIVATE).AsBoolean           := False;

{   if ckStreetDefault.Checked then
     Tag := 1;
   if ckPostalDefault.Checked then
     Tag := 2;
   if ckCustomDefault.Checked then
     Tag := 3;
   Contact.NamedProp(NPR_CONTACT_SELECTEDADDRESS).AsInteger := Tag;
   case Tag of
      1: Contact.PropByName(PR_POSTAL_ADDRESS).AsString := Self.FMessage.NamedProp(NPR_CONTACT_HOMEADDRESS).AsString;
      2: Contact.PropByName(PR_POSTAL_ADDRESS).AsString := Self.FMessage.NamedProp(NPR_CONTACT_BUSINESSADDRESS).AsString;
      3: Contact.PropByName(PR_POSTAL_ADDRESS).AsString := Self.FMessage.NamedProp(NPR_CONTACT_OTHERADDRESS).AsString;
   end;    }

   Contact.PropByName(NPR_CONTACT_BUSINESSADDRESS).AsString := mStreetAddress.Text +chr(13)+ eStreetSuburb.Text +' '+ cbStreetState.Text +' '+ eStreetPostcode.Text;
   Contact.PropByName(NPR_CONTACT_HOMEADDRESS).AsString := mPostalAddress.Text +chr(13)+ ePostalSuburb.Text +' '+ cbPostalState.Text +' '+ ePostalPostcode.Text;
   Contact.PropByName(NPR_CONTACT_OTHERADDRESS).AsString := mCustAddress.Text +chr(13)+ eCustSuburb.Text +' '+ cmbCustState.Text +' '+ eCustPostcode.Text;


{  if trim(EdtEMail.Text) <> '' then
  begin    }
    Contact.PropByName(NPR_CONTACT_EMAILDISPLAYNAME).AsString          := eName.Text;
    Contact.PropByName(NPR_CONTACT_EMAILEMAILADDRESS).AsString         := eInterneteMail.Text;
    Contact.PropByName(NPR_CONTACT_EMAILORIGINALDISPLAYNAME).AsString  := eName.Text;
    Contact.PropByName(NPR_CONTACT_EMAILADDRTYPE).AsString             := 'SMTP';
{  end;   }

{  if trim(EdtEMail2.Text) <> '' then
  begin
    Contact.NamedProp(NPR_CONTACT_EMAIL2DISPLAYNAME).AsString         := EdtEMail2Display.Text;
    Contact.NamedProp(NPR_CONTACT_EMAIL2EMAILADDRESS).AsString        := EdtEMail2.Text;
    Contact.NamedProp(NPR_CONTACT_EMAIL2ORIGINALDISPLAYNAME).AsString := EdtEMail2.Text;
    Contact.NamedProp(NPR_CONTACT_EMAIL2ADDRTYPE).AsString            := 'SMTP';
  end;

  if trim(EdtEMail3.Text) <> '' then
  begin
    Contact.NamedProp(NPR_CONTACT_EMAIL3DISPLAYNAME).AsString         := EdtEMail3Display.Text;
    Contact.NamedProp(NPR_CONTACT_EMAIL3EMAILADDRESS).AsString        := EdtEMail3.Text;
    Contact.NamedProp(NPR_CONTACT_EMAIL3ORIGINALDISPLAYNAME).AsString := EdtEMail3.Text;
    Contact.NamedProp(NPR_CONTACT_EMAIL3ADDRTYPE).AsString            := 'SMTP';
  end;                         }

   //FMessage.SaveChanges(smKeepOpenReadWrite);
   Contact.SaveChanges(smKeepOpenReadWrite);
//   MapiSession.Active := False;
end;

function TfrmPhoneBookNew.OKtoPost : boolean;
var
  bOk,
  bClientOk,
  bCreditorOk : boolean;
  str: string;
begin
   bClientOk := True;
   bCreditorOk := True;

   if (ISNAMEMANDATORY = true) then
   begin
      if ((eGivenNames.Text = '') or (eLastName.Text = '')) then
      begin
         OKtoPost := False;
         MsgErr('Given Names and Last Name are required.');
         Exit;
      end;
   end;

   if (not VarIsNull(cbGender.EditValue)) then
   begin
      if (TableString('GENDER','CODE', string(cbGender.EditValue), 'IS_NAME_MANDATORY') = 'Y' )then
      begin
         OKtoPost := False;
         MsgErr('"'+lName.Caption + '" is required.');
         Exit;
      end;
   end;

{   if (pos('@',mStreetAddress.Text) = 0) then
   begin
      if ((mStreetAddress.Text = '') or
         (eStreetSuburb.Text = '') or
         (eStreetPostcode.Text = '')) then
      begin
         OKtoPost := False;
         MsgErr('Address Details are required.' +chr(13)+
             'Please ensure that Address, Suburb and Postcode are entered in the Street Address section.');
         Exit;
      end;
   end; }



   bOk  := CheckReqFields('PHONEBOOK',qPhonebook);
   // client tab
   if tsClient.TabVisible then
      bClientOk  := CheckReqFields('CLIENT',qClient);
   // creditor tab
   if tsCreditor.TabVisible then
      bCreditorOk  := CheckReqFields('CREDITOR',qCreditor);

   if pnlNRIC.visible = True then
   begin
      str := dbedNRIC.Text;
      if (dbedNRIC.Text <> '') then
      begin
         if (length(str) <> 9) and (str[9] <> validateNRIC(str)) then
//         if imgbadNRIC.Visible = True then
         begin
            OKtoPost := False;
            MsgErr('The NRIC is not valid.  Please re-enter and try to save.');
            Exit;
         end;
      end;
   end;
      
   OKtoPost := bOk and bClientOk and bCreditorOk;

   if (not bOk) and (not bClientOk) and (not bCreditorOk) then
      exit;
end;

procedure TfrmPhoneBookNew.updateControlsForMasterLink;
var
  loQuery : TUniQuery;
begin
   loQuery := nil;

   try
      loQuery := TUniQuery.Create(nil);
      loQuery.Connection := dmAxiom.uniInsight;

      loQuery.SQL.Text := strCheckForMasterLink.Strings.Text;
      try
         loQuery.ParamByName('nname').AsInteger := qPhoneBook.FieldByName('NNAME').AsInteger;
      except
      ;
      end;
      loQuery.ExecSQL;

      if (not loQuery.IsEmpty) then
      begin
         CheckAndSetControl(loQuery.FieldByName('CHILDSHORTNAME').IsNull, loQuery.FieldByName('PARENTSHORTNAME').IsNull, eShortName);
         CheckAndSetControl(loQuery.FieldByName('CHILDNAME').IsNull, loQuery.FieldByName('PARENTNAME').IsNull, eName);
         CheckAndSetControl(loQuery.FieldByName('CHILDLONGNAME').IsNull, loQuery.FieldByName('PARENTLONGNAME').IsNull, eLongName);
         CheckAndSetControl(loQuery.FieldByName('CHILDHOMEPHONE').IsNull, loQuery.FieldByName('PARENTHOMEPHONE').IsNull, ePhoneHome);
         CheckAndSetControl(loQuery.FieldByName('CHILDWORKPHONE').IsNull, loQuery.FieldByName('PARENTWORKPHONE').IsNull, ePhoneWork);
         CheckAndSetControl(loQuery.FieldByName('CHILDMOBILE').IsNull, loQuery.FieldByName('PARENTMOBILE').IsNull, ePhoneMobile);
         CheckAndSetControl(loQuery.FieldByName('CHILDFAX').IsNull, loQuery.FieldByName('PARENTFAX').IsNull, ePhoneFax);

         //CheckAndSetControl(loQuery.FieldByName('CHILDADDRESS').IsNull, loQuery.FieldByName('PARENTADDRESS').IsNull, mStreetAddress);
         mStreetAddress.Color := clInfoBk;
         if (loQuery.FieldByName('CHILDADDRESS').IsNull) then
           if (not loQuery.FieldByName('PARENTADDRESS').IsNull) then
             mStreetAddress.Color := clSkyBlue;

         CxCheckAndSetControl(loQuery.FieldByName('CHILDSUBURB').IsNull, loQuery.FieldByName('PARENTSUBURB').IsNull, eStreetSuburb);
         CheckAndSetControl(loQuery.FieldByName('CHILDSTATE').IsNull, loQuery.FieldByName('PARENTSTATE').IsNull, cbStreetState);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTCODE').IsNull, loQuery.FieldByName('PARENTPOSTCODE').IsNull, eStreetPostCode);
         CheckAndSetControl(loQuery.FieldByName('CHILDCOUNTRY').IsNull, loQuery.FieldByName('PARENTCOUNTRY').IsNull, cbStreetCountry);
         CheckAndSetControl(loQuery.FieldByName('CHILDDX').IsNull, loQuery.FieldByName('PARENTDX').IsNull, eDXAddress);
         CheckAndSetControl(loQuery.FieldByName('CHILDDXLOC').IsNull, loQuery.FieldByName('PARENTDXLOC').IsNull, eDXLocation);

         //CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALADDRESS').IsNull, loQuery.FieldByName('PARENTPOSTALADDRESS').IsNull, mPostalAddress);
         mPostalAddress.Color := clInfoBk;
         if (loQuery.FieldByName('CHILDPOSTALADDRESS').IsNull) then
           if (not loQuery.FieldByName('PARENTPOSTALADDRESS').IsNull) then
             mPostalAddress.Color := clSkyBlue;

         CxCheckAndSetControl(loQuery.FieldByName('CHILDPOSTALSUBURB').IsNull, loQuery.FieldByName('PARENTPOSTALSUBURB').IsNull, ePostalSuburb);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALSTATE').IsNull, loQuery.FieldByName('PARENTPOSTALSTATE').IsNull, cbPostalState);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALPOSTCODE').IsNull, loQuery.FieldByName('PARENTPOSTALPOSTCODE').IsNull, ePostalPostCode);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALCOUNTRY').IsNull, loQuery.FieldByName('PARENTPOSTALCOUNTRY').IsNull, cbPostalCountry);
         CheckAndSetControl(loQuery.FieldByName('CHILDEMAIL').IsNull, loQuery.FieldByName('PARENTEMAIL').IsNull, eInternetEmail);
         CheckAndSetControl(loQuery.FieldByName('CHILDWWW').IsNull, loQuery.FieldByName('PARENTWWW').IsNull, eInternetWWW);
         CheckAndSetControl(loQuery.FieldByName('CHILDSALUTATION').IsNull, loQuery.FieldByName('PARENTSALUTATION').IsNull, eSalutation);
         CheckAndSetControl(loQuery.FieldByName('CHILDGIVENNAMES').IsNull, loQuery.FieldByName('PARENTGIVENNAMES').IsNull, eGivenNames);
         CheckAndSetControl(loQuery.FieldByName('CHILDLASTNAME').IsNull, loQuery.FieldByName('PARENTLASTNAME').IsNull, eLastName);

         mCustAddress.Color := clInfoBk;
         if (loQuery.FieldByName('CHILDCUSTADDRESS').IsNull) then
           if (not loQuery.FieldByName('PARENTCUSTADDRESS').IsNull) then
             mCustAddress.Color := clSkyBlue;

         CxCheckAndSetControl(loQuery.FieldByName('CHILDCUSTSUBURB').IsNull, loQuery.FieldByName('PARENTCUSTSUBURB').IsNull, eCustSuburb);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTSTATE').IsNull, loQuery.FieldByName('PARENTCUSTSTATE').IsNull, cmbCustState);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTPOSTCODE').IsNull, loQuery.FieldByName('PARENTCUSTPOSTCODE').IsNull, eCustPostCode);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTCOUNTRY').IsNull, loQuery.FieldByName('PARENTCUSTCOUNTRY').IsNull, cmbCustCountry);

      end;    //  end if
   finally
      FreeAndNil(loQuery);
   end;    //  end try-finally
end;

procedure TfrmPhoneBookNew.CheckAndSetControl(bChild: Boolean; bParent : Boolean; oControl: TWinControl);
begin
  // Set this to be always white
  TWinControl(oControl).Brush.Color := clWhite;  //clInfoBk;

   if (bChild) then
         if (not bParent) then
            TWinControl(oControl).Brush.Color := clSkyBlue;

  TWinControl(oControl).Repaint;
end;

procedure TfrmPhoneBookNew.CxCheckAndSetControl(bChild : Boolean; bParent : Boolean; oControl : TControl);
begin
   if (oControl is TcxDBButtonEdit) then
   begin
   // Set this to be always white
     TcxDBButtonEdit(oControl).Style.Color := clWhite;  //clInfoBk;
     if (bChild) then
         if (not bParent) then
            TcxDBButtonEdit(oControl).Style.Color := clSkyBlue;
   end;

  TControl(oControl).Repaint;
end;

procedure TfrmPhoneBookNew.pbConvertFromPhonebookClick(
  Sender: TObject);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   frmPhoneBookSearch.SelectingCLients := False;
   if(frmPhoneBookSearch.ShowModal() = mrOk) then
   begin
//      if (frmPhoneBookSearch.NClient > 0) then
//         MsgInfo('Selected entry is a client.  Client cannot be converted to Client.')
//      else
//      begin
         NName := frmPhoneBookSearch.NName;
         if NewClient = true then
            NClient := 0;
//         SetupForClient(0);
         pbConvertFromPhonebook.Enabled := False;
         DoShow;
//      end;
   end;
end;

procedure TfrmPhoneBookNew.cmbReferralOtherPropertiesEditValueChanged(
  Sender: TObject);
begin
   with dmAxiom.qryTmp do
   begin
      try
         if (cmbreferral.Text = 'Other') and
            (cmbReferralOther.Text <> '') then
         begin
            SQL.Clear;
            SQL.Text := 'select ''x'' from REFERRAL_SOURCE where upper(referral) = ' + QuotedStr(Uppercase(string(cmbReferralOther.EditValue))) ;
            Open;
            if (EOF ) then
            begin
               Close;
               SQL.Clear;
               SQL.Text := 'Insert into REFERRAL_SOURCE values (' + QuotedStr(string(cmbReferralOther.EditValue)) + ')';
               ExecSQL;
               dmAxiom.uniInsight.Commit;
            end;
         end;
      except
         dmAxiom.uniInsight.Rollback;
      end;
   end;
end;

procedure TfrmPhoneBookNew.eShortNameKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = ' ' then
      Quickcode(eShortName);
end;

procedure TfrmPhoneBookNew.cmbClientPackPropertiesCloseUp(Sender: TObject);
begin
   try
      cmbAllowMatters.Enabled := False;
      cmbAllowMatters.EditText := 'Ban';

      if (not dmAxiom.Security.Client.ChangeClientPack) then
      begin
         cmbClientPack.Text := '';
         cmbClientPack.EditValue := '';
      end;

      if cmbClientPack.EditValue = 'YES' then
      begin
         cmbAllowMatters.Enabled := dmAxiom.Security.Client.ChangeAllowMatter;
         cmbAllowMatters.EditText := 'Allow';
      end
      else
      if cmbClientPack.EditValue = 'NOCL' then
         cmbAllowMatters.Enabled := dmAxiom.Security.Client.ChangeAllowMatter
      else
      if cmbClientPack.EditValue = 'SCCO' then
      begin
         cmbAllowMatters.Enabled := False;
         cmbAllowMatters.EditText := 'Ban';
      end;
   except
     //
   end;
end;


procedure TfrmPhoneBookNew.eStreetSuburbPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  LfmPostCode: TfrmPostcodeSearch;
begin
  LfmPostCode := TfrmPostcodeSearch.Create(Self);
  try
    LfmPostCode.BorderStyle := bsDialog;

    if(Sender = eStreetSuburb) then
      LfmPostCode.tbSuburbSearch.Text := eStreetSuburb.Text
    else if(Sender = ePostalSuburb) then
      LfmPostCode.tbSuburbSearch.Text := ePostalSuburb.Text
    else
      LfmPostCode.tbSuburbSearch.Text := eCustSuburb.Text;

    LfmPostCode.tbSuburbSearchChange(LfmPostCode.tbSuburbSearch);

    if(LfmPostCode.ShowModal() = mrOK) then
    begin
      if qPhoneBook.State = dsBrowse then
         qPhoneBook.Edit;
      if(Sender = eStreetSuburb) then
      begin
        qPhoneBook.FieldByName('SUBURB').AsString   := LfmPostCode.qryPostcodes.FieldByName('SUBURB').AsString;
        qPhoneBook.FieldByName('STATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
        qPhoneBook.FieldByName('POSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
      end
      else if(Sender = ePostalSuburb) then
      begin
        qPhoneBook.FieldByName('POSTALSUBURB').AsString   := LfmPostCode.qryPostcodes.FieldByName('SUBURB').AsString;
        qPhoneBook.FieldByName('POSTALSTATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
        qPhoneBook.FieldByName('POSTALPOSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
      end
      else
      begin
        qPhoneBook.FieldByName('CUST_SUBURB').AsString   := LfmPostCode.qryPostcodes.FieldByName('SUBURB').AsString;
        qPhoneBook.FieldByName('CUST_STATE').AsString    := LfmPostCode.qryPostcodes.FieldByName('STATE').AsString;
        qPhoneBook.FieldByName('CUST_POSTCODE').AsString := LfmPostCode.qryPostcodes.FieldByName('PCODE').AsString;
      end;
    end;
  finally
    FreeAndNil(LfmPostCode);
  end;
end;

procedure TfrmPhoneBookNew.eStreetSuburbPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   LfmPostCode: TfrmPostcodeSearch;
   AState, APostcode: string;
begin
   if(dsPhoneBook.State in [dsEdit, dsInsert]) then
   begin
    // 09/09/2009 comment by AES we should change the postcode and maybe state as well
  //    if(eStreetPostCode.Text = '') then
//    begin
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
                        qPhoneBook.FieldByName('POSTCODE').AsString := APostcode;
                        qPhoneBook.FieldByName('STATE').AsString    := AState;
                     end
                     else if (Sender as TcxDBButtonEdit).Name = 'ePostalSuburb' then
                     begin
                        qPhoneBook.FieldByName('POSTALPOSTCODE').AsString := APostcode;
                        qPhoneBook.FieldByName('POSTALSTATE').AsString    := AState;
                     end
                     else if (Sender as TcxDBButtonEdit).Name = 'eCustSuburb' then
                     begin
                        qPhoneBook.FieldByName('CUST_POSTCODE').AsString := APostcode;
                        qPhoneBook.FieldByName('CUST_STATE').AsString    := AState;
                     end
                  end;
               finally
                  LfmPostCode.Free;
               end;
            end
            else
            begin
              // 09/09/2009 comment by AES do not overwrite suburb, leave as typed
//          qPhoneBook.FieldByName('SUBURB').AsString   := qPostCodeSearchSuburb.FieldByName('SUBURB').AsString;
               if (Sender as TcxDBButtonEdit).Name = 'eStreetSuburb' then
               begin
                  qPhoneBook.FieldByName('POSTCODE').AsString := qPostCodeSearchSuburb.FieldByName('PCODE').AsString;
                  qPhoneBook.FieldByName('STATE').AsString    := qPostCodeSearchSuburb.FieldByName('STATE').AsString;
               end
               else if (Sender as TcxDBButtonEdit).Name = 'ePostalSuburb' then
               begin
                  qPhoneBook.FieldByName('POSTALPOSTCODE').AsString := qPostCodeSearchSuburb.FieldByName('PCODE').AsString;
                  qPhoneBook.FieldByName('POSTALSTATE').AsString    := qPostCodeSearchSuburb.FieldByName('STATE').AsString;
               end
               else if (Sender as TcxDBButtonEdit).Name = 'eCustSuburb' then
               begin
                  qPhoneBook.FieldByName('CUST_POSTCODE').AsString := qPostCodeSearchSuburb.FieldByName('PCODE').AsString;
                  qPhoneBook.FieldByName('CUST_STATE').AsString    := qPostCodeSearchSuburb.FieldByName('STATE').AsString;
               end
           end;
        end;
      finally
        qPostCodeSearchSuburb.Close();
      end;
//    end;
  end;
end;

procedure TfrmPhoneBookNew.cbGenderPropertiesChange(
  Sender: TObject);
begin
   if (qGender.FieldByName('SALUTATIONCAPTION_HIDE').AsString = 'N') then
   begin
      lSalutation.Visible := True;
      eSalutation.Visible := True;
      lSalutation.Caption := qGender.FieldByName('SALUTATIONCAPTION').AsString  + ':'
   end
   else
   begin
      lSalutation.Visible := False;
      eSalutation.Visible := False;
   end;
   lSalutation.Caption := qGender.FieldByName('SALUTATIONCAPTION').AsString  + ':';
   lName.Caption       := qGender.FieldByName('NAMECAPTION').AsString        + ':';
   lNamed.Caption      := qGender.FieldByName('TITLECAPTION').AsString       + ':';
   lShortName.Caption  := qGender.FieldByName('SHORTNAMECAPTION').AsString   + ':';
   lLongName.Caption   := qGender.FieldByName('LONGNAMECAPTION').AsString    + ':';
   lSearch.Caption     := qGender.FieldByName('SEARCHCAPTION').AsString      + ':';
   lACN.Caption        := qGender.FieldByName('ACNCAPTION').AsString         + ':';
   lOccupation.Caption := qGender.FieldByName('OCCUPATIONCAPTION').AsString  + ':';
end;

procedure TfrmPhoneBookNew.dddPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  LSearch: TfrmPhoneBookSearch;
begin
  LSearch := TfrmPhoneBookSearch.Create(Self);
  try
    if (LSearch.ShowModal() = mrOK) then
    begin
      qryMasterPhoneBookEntry.Close;
      if not (qPhoneBook.State = dsEdit) then
        qPhoneBook.Edit;
//      qPhoneBookNNAMEMASTER.AsInteger := LSearch.NName;
        qPhoneBook.FieldByName('NNAMEMASTER').AsInteger := LSearch.NName;
        qryMasterPhoneBookEntry.ParamByName('NNAMEMASTER').AsInteger := LSearch.NName;
        qryMasterPhoneBookEntry.Open;
    end;    //  end if
  finally
    FreeAndNil(LSearch);
  end;
end;

procedure TfrmPhoneBookNew.eInternetEmailPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   ShellExecute(Handle,'open',PChar('mailto:' + TcxDBButtonEdit(Sender).Text),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmPhoneBookNew.eInternetWWWPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   ShellExecute(Handle,'open',PChar(eInternetWWW.Text),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmPhoneBookNew.eLastNameExit(Sender: TObject);
begin
   if SystemString('LOCALE_NAME') <> '' then
   begin
      if ((lbSearchMatches.Items.Count > 0) and (tsClient.TabVisible = True)) then
      begin
         ShowMessage('Conflict found. Contact needs to be referred to ?????');
//         bbtnContactNew.Visible := True;
      end;
   end;
end;

procedure TfrmPhoneBookNew.qPhoneBookAfterEdit(DataSet: TDataSet);
begin
   bPhonebookModified := True;
end;

procedure TfrmPhoneBookNew.qPhoneBookEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   ShowMessage('Record has been changed by another user.  It will be refreshed.');
   Action := daAbort;
end;

procedure TfrmPhoneBookNew.qPhoneBookNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('PROSPECTIVE').AsString := 'N';
end;

end.

