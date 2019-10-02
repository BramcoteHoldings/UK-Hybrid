unit AxiomData;

interface

uses
  Word2010, Vcl.OleServer, UniProvider, OracleUniProvider, uRwEasyMAPI,
  VCL.uRwMAPISession, VirtualTable, dxSpellCheckerCore, cxLookAndFeels,
  dxSpellChecker, ppParameter, ppDesignLayer, ppBands, ppCtrls, ppMemo,
  ppStrtch, ppRegion, ppPrnabl, ppClass, ppCache, ppProd, ppReport, DBAccess,
  Uni, DAScript, UniScript, OraCall, Ora, cxStyles, Data.DB, ppDB, ppComm,
  ppRelatv, ppDBPipe, cxClasses, cxContainer, cxEdit, DASQLMonitor,
  UniSQLMonitor, System.ImageList, Vcl.ImgList, Vcl.Controls, MemDS,
  System.Classes, WinAPI.Messages, uRwMAPIMsgStoreEvents,
  Word2000, glComponentUtil, System.IniFiles, uRwMapiInterfaces,
  System.Character, System.IOUtils, System.Types, cxControls,
  Windows, VCL.Dialogs, system.DateUtils, MemData, System.SysUtils,
  Vcl.Graphics, Vcl.Forms, ppTypes;


const
//   NPRFILEID: TRwMapiNamedProperty = (PropSetID: '{00020329-0000-0000-C000-000000000046}'; PropID: $8000; PropName: 'NPRFILEID'; PropType: PT_STRING8; PropKind: MNID_ID);

   WM_NEWMESSAGE = WM_USER + 1;
   CM_REFRESHTREE = WM_USER + 2;
   AXM_POPULATE = WM_APP + 400;
   SEARCH_REFRESH = WM_APP + 401;
   CM_CLOSEFORM = WM_APP + 402;
//   ISYSAppDir = 'C:\Program Files\ISYS 8';
//   ISYSKey = 'XNETE 45VBG R5PW6 YBHTY 6CQFP 5GCYN';
   DebenuPDFKey = 'j99qf8ga5c86x57569sj7oj9y';
   InfoTrackKey = '06b83197-b930-48e9-87fd-4a2e5ca33951';
   CRLF = #13#10;
//   PATCH_VERSION = '9_0_1_37';
//   PATCH_VERSION = '9_1_26';
   PATCH_VERSION = '9_2_0';
   LOGFILESIZE =     30000;

type
   // A custom DragObject  derived from TcxDragControlObject (cxControls.pas) that is derived from TDragControlObject
  TcxDragCellControlObject = class(TcxDragControlObject)
  public
    DragRecord: Integer;
    DragItem: Integer;
    DragValue: Variant;
  end;

  TImportFile = array of array of string;

  TSecurityAccounts = record
    Lock: Boolean;
    UnLock: Boolean;
    Rollup: Boolean;
    UnRoll: Boolean;
  end;

  TSecurityLockAmounts = record
    ChangeFees,
    ChangeDisbursments,
    ChangeChequeReq,
    ChangeUnpaidCreditors,
    ChangeSundrys,
    ChangeTrust: Boolean;
  end;

  TSecurityLockTaxAmounts = record
    ChangeFeesTax,
    ChangeDisbursmentsTax,
    ChangeChequeReqTax,
    ChangeUnpaidCreditorsTax,
    ChangeSundrysTax: Boolean;
  end;

  TSecurityDiscount = record
    Edit,
    Remove: boolean;
  end;

  TSecurityInterest = record
    Create: boolean;
  end;

  TSecurityBill = record
    Access: boolean;
    AddGST: boolean;
    BillCreditNoteReversal: boolean;
    ChangeBillTo: boolean;
    ChangeDispatchedDate: boolean;
    ChangePaymentDueDate: boolean;
    Create: boolean;
    ConfirmCreate: boolean;
    Delete: boolean;
    Discount: TSecurityDiscount;
    Edit: boolean;
    Interest: TSecurityInterest;
    LockAmounts: TSecurityLockAmounts;
    LockTaxAmounts: TSecurityLockTaxAmounts;
    Post: boolean;
    Reverse: boolean;
    TrustTransfer: boolean;
  end;

  TSecurityCheqReqFunds = record
    Visible: boolean;
    Checked: boolean;
    Disabled: boolean;
  end;
  TSecurityCheqReqHeld = record
    Visible: boolean;
    Checked: boolean;
  end;
  TSecurityCheqReqBill = record
    Visible: boolean;
    Checked: boolean;
  end;
  TSecurityCheqReq = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Edit: boolean;
{ Added 8.9.2002 GG

  History field allows authorised users to view the CheqReq History of a matter}
    History: Boolean;

    Ledger: boolean;
    Funds: TSecurityCheqReqFunds;
    Held: TSecurityCheqReqHeld;
    Bill: TSecurityCheqReqBill;
    Print: boolean;
{ Added 31.10.2002 GG

  Reverse field allows authorised users to reverse a CheqReq}
    Reverse: Boolean;
    Authorise: Boolean;
{ Added 08.06.2007 AES

  Option to allow changing amount, tax type and payee }
    ChangeDetails: Boolean;
  end;
  TSecurityCheque = record
    Access: boolean;
    Create: boolean;
    ForceTally: boolean;
    Present: boolean;
    Reverse: boolean;
    ChangeDate: Boolean;
    Recurring: Boolean;
  end;
  TSecurityClientGroup = record
    Access: boolean;
    Assign: boolean;
    Create: boolean;
  end;
  TSecurityClientNotes = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
  end;
  TSecurityClient = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Edit: boolean;
    Group: TSecurityClientGroup;
    Notes: TSecurityClientNotes;
    ChangeClientPack: boolean;
    ChangeAllowMatter: boolean;
  end;

{
  Added 4.12.2002 GG

  Security for Creditor functions
}
  TSecurityCreditor = record
    Access: Boolean;
    Activate: Boolean;
    Create: Boolean;
    Delete: Boolean;
    Edit: Boolean;
    Merge: Boolean;
  end;
  TSecurityDiaryChoice = record
    Access: boolean;
    AutoSave: boolean;
    ForceChoice: boolean;
  end;
  TSecurityDiary = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Drag: Boolean;
    Edit: boolean;
    Location: TSecurityDiaryChoice;
    Jurisdiction: TSecurityDiaryChoice;
  end;
  TSecurityEmployeeType = record
    Access: boolean;
    Security: boolean;
  end;
  TSecurityEmployee = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Department: boolean;
    Edit: boolean;
    EmpType: TSecurityEmployeeType;
    Password: boolean;
    Security: boolean;
    ChangeEntity: boolean;
  end;
  TSecurityEntity = record
    Access: boolean;
    LockDate: boolean;
  end;
  TSecurityFee = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Edit: boolean;
    QuickEdit: boolean;
    Discount: boolean;
  end;
  TSecurityInvoice = record
    Access: boolean;
    Create: boolean;
    CreditNote: boolean;
    ForceTally: boolean;
    Reverse: boolean;
    ChangeDate: Boolean;
  end;
  TSecurityJournal = record
    Access: boolean;
    Create: boolean;
    Reverse: boolean;
    ChangeDate: boolean;
  end;
  TSecurityMatterTabs = record
    Access: boolean;
    Balances: boolean;
    Contacts: boolean;
    Data: boolean;
    Bills: boolean;
    Receipts: boolean;
    Graphs: boolean;
    Diary: Boolean;
    Documents: boolean;
    WorkFlow: boolean;
    CriticalDates: boolean;
    Ledgers: boolean;
    Transit: boolean;
    OtherNames: boolean;
    Tasks: boolean;
    Project: boolean;
    AuthorAudit: boolean;
  end;
  TSecurityMatterCarriage = record
    CanChangePartner,
    CanChangeController,
    CanChangeAuthor,
    CanChangeOperator,
    CanChangeParalegal: Boolean;
  end;
  TSecurityMatterDebtors = Record
    CanDeleteDebtorNotes: Boolean;
  end;
  TSecurityMatterArchive = record
    CanDeleteBox: Boolean;
  end;
  TControlledMonies = record
    CanAdd: Boolean;
    CanEdit: Boolean;
    CanAddDeposit: Boolean;
    CanAddWithdrawl: Boolean;
    CanAddCharges: Boolean;
    CanReverseDeposit: Boolean;
  end;
  TSecurityMatter = record
    Access: boolean;
    AllowGeneralCredit: boolean;
    AllowEditMatterNo: Boolean;
    Archive: boolean;
    Associate: boolean;
    Create: boolean;
    Close: boolean;
    DisbDebtJournal: boolean;
    Edit: boolean;
    FeeAnalysis: boolean;
    Reopen: boolean;
    HideStaticOP: boolean;
    Tabs: TSecurityMatterTabs;
    Carriage: TSecurityMatterCarriage;
    CanChangeDebtorStatus: boolean;
    Debtors: TSecurityMatterDebtors;
    SecureDocs: boolean;
    Delete: boolean;
    CanDeleteArchiveBox: TSecurityMatterArchive;
    ControlledMonies: TControlledMonies;
    Prospective: boolean;
  end;
  TSecurityPhonebookGroup = record
    Access: boolean;
    Assign: boolean;
    Create: boolean;
  end;
  TSecurityPhonebookTabs = record
    Access: boolean;
    PhoneInternet: boolean;
    Additional: boolean;
    Notes: boolean;
    CustomData: boolean;
    MatterData: boolean;
    OtherName: boolean;
    Events: boolean;
    Marketing: boolean;
    Documents: boolean;
    MatterParty: boolean;
  end;
  TSecurityPhonebook = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Edit: boolean;
    Group: TSecurityPhonebookGroup;
    Link: boolean;
    Archive: boolean;
    Tabs: TSecurityPhonebookTabs;
    Prospective: boolean;
  end;
  TSecurityReceipt = record
    Access: boolean;
    Clear: boolean;
    Create: boolean;
    ForceTally: boolean;
    ForbidDisbursements: boolean;
    ForbidMatter: boolean;
    Reverse: boolean;
    ChangeDate: Boolean;
    ChangeClearanceDate: Boolean;
    Request: Boolean;
  end;
  TSecuritySafeCustody = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Edit: boolean;
    Attachment: Boolean;
    AddAttachment: boolean;
    DeleteAttachment: boolean;
  end;
  TSecuritySundry = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Edit: boolean;
  end;
  TSecurityTransit = record
    Access: boolean;
    Create: boolean;
  end;

  TSecuritySystem = record
    Access: boolean;
//    SQLTrace: boolean;
    GridColumnCustomizing: boolean;
    BHLSupportTab: boolean;
    BrowserTab: Boolean;
    SupportButton: Boolean;
  end;

  TSecurityLedger = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Edit: boolean;
    JournalSplit : Boolean;
  end;

  TSecurityPrecedent = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Edit: boolean;
  end;

  TSecurityPriorPeriodTransactions = record
    Post: Boolean;
  end;

  TSecurityCollectionsManagement = record
    CreateAction : boolean;
    EditAction : boolean;
    CreateTemplate : boolean;
    EditTemplate : boolean;
    CreateTemplateItem : boolean;
    EditTemplateItem : boolean;

    ChangeTemplate : boolean;
    CreateTask : boolean;
    EditTask : boolean;

    MergeTask : boolean;
    ProcessTask : boolean;

  end;

  TSecurityIndScorecard = record
    ViewEmployees : Boolean;
    ShowDebtorsTab: boolean;
    ShowMatterProfitability: boolean;
    ShowLockUpTab: Boolean;
    ShowFeesReceived: Boolean;
  end;

  TReports = record
    Add: boolean;
  end;

  TTrust = record
    PasswdOverdraw: Boolean;
  end;

  TSecurityWorkflow = record
    ChangeCriticalDate: Boolean;
  end;

  TSecurityDocuments = record
    Access: boolean;
    DeleteDocument: Boolean;
    DeleteFile: Boolean;
  end;

  TSecurityWIP = record
    WriteOff: boolean;
  end;

  TSecurityReceiptReqs = record
    Access: boolean;
    Create: boolean;
    Delete: boolean;
    Convert: boolean;
    Edit: boolean;
  end;

  TSecurity = record
    Accounts: TSecurityAccounts;
    Bill: TSecurityBill;
    CheqReq: TSecurityCheqReq;
    Cheque: TSecurityCheque;
    Client: TSecurityClient;

{
  Added 4.12.2002 GG

  Security for Creditor functions
}
    Creditor: TSecurityCreditor;
    Diary: TSecurityDiary;
    Employee: TSecurityEmployee;
    Entity: TSecurityEntity;
    Fee: TSecurityFee;
    Invoice: TSecurityInvoice;
    Journal: TSecurityJournal;
    Ledger: TSecurityLedger;
    Matter: TSecurityMatter;
    Phonebook: TSecurityPhonebook;
    Precedent: TSecurityPrecedent;
    PriorPeriodTransactions: TSecurityPriorPeriodTransactions;
    Receipt: TSecurityReceipt;
    SafeCustody: TSecuritySafeCustody;
    Sundry: TSecuritySundry;
    Transit: TSecurityTransit;
    System: TSecuritySystem;
    CollectionsManagement : TSecurityCollectionsManagement;
    ScorecardIndividual: TSecurityIndScorecard;
    Reports: TReports;
    Trust: TTrust;
    Workflow: TSecurityWorkflow;
    Document: TSecurityDocuments;
    WIP: TSecurityWIP;
    ReceiptReq: TSecurityReceiptReqs;
  end;

  TdmAxiom = class(TDataModule)
    uniInsight: TUniConnection;
    qryTmp: TUniQuery;
    qryMatters: TUniQuery;
    qryTransItem: TUniQuery;
    qryTransItemInsert: TUniQuery;
    qryOpenList: TUniQuery;
    qryTaskUpdate: TUniQuery;
    qryPrecedent: TUniQuery;
    qryDataFieldMapping: TUniQuery;
    qryUserStatements: TUniQuery;
    qryMatterDocs: TUniQuery;
    qryBanks: TUniQuery;
    qryCharts: TUniQuery;
    qryEmps: TUniQuery;
    qryAllocs: TUniQuery;
    qryNaccounts: TUniQuery;
    qryAllocsRV: TUniQuery;
    qryEntity: TUniQuery;
    qryInvoiceInsert: TUniQuery;
    qryFeeInsert: TUniQuery;
    qryFee: TUniQuery;
    qryNaccountsRV: TUniQuery;
    qryNames: TUniQuery;
    qrySeqnums: TUniQuery;
    qryReceipts: TUniQuery;
    qryShortcut: TUniQuery;
    qryOriginal: TUniQuery;
    qrySysFile: TUniQuery;
    qrySundry: TUniQuery;
    qryTaskItems: TUniQuery;
    qrySundryInsert: TUniQuery;
    qryTaskInsert: TUniQuery;
    qryInvoice: TUniQuery;
    qryTypes: TUniQuery;
    qryMultiSelection: TUniQuery;
    ilPrecCategory: TImageList;
    qryImageList: TUniQuery;
    qrySettingDelete: TUniQuery;
    qrySettingLoad: TUniQuery;
    qryEmpTypeSecurityWAN: TUniQuery;
    qrySql: TUniQuery;
    qryAllSettings: TUniQuery;
    qryConstraint: TUniQuery;
    qryRConstraint: TUniQuery;
    dsConstraint: TUniDataSource;
    SmartQuery1: TUniQuery;
    qryNew: TUniQuery;
    dsImage: TUniDataSource;
    qryImage: TUniQuery;
    qryTmp2: TUniQuery;
    qryEntityLockDate: TUniQuery;
    qryMSearch: TUniQuery;
    qryCheqReqs: TUniQuery;
    dsCheqReqs: TUniDataSource;
    qryClient: TUniQuery;
    dsClients: TUniDataSource;
    qryDocReg: TUniQuery;
    dsDocReg: TUniDataSource;
    qryDocReg2: TUniQuery;
    dsDocReg2: TDataSource;
    qryDocRegNCLIENT: TFloatField;
    qryDocRegPACKETID: TStringField;
    qryDocRegLODGED: TDateTimeField;
    qryDocRegDESCR: TStringField;
    qryDocRegADDRESS_PATH: TStringField;
    qryDocRegSENT: TDateTimeField;
    qryDocRegLOCATION: TStringField;
    qryDocRegREVIEWDATE: TDateTimeField;
    qryDocRegROWID: TStringField;
    procDocRegPacketId: TUniStoredProc;
    qryMattersSUBTYPE: TStringField;
    qryMattersSUBSTATUS: TStringField;
    qryMattersNMATTER: TFloatField;
    qryMattersOPENED: TDateTimeField;
    qryMattersPARTNER: TStringField;
    qryMattersAUTHOR: TStringField;
    qryMattersTYPE: TStringField;
    qryMattersTITLE: TStringField;
    qryMattersFILEID: TStringField;
    qryMattersSTATUS: TStringField;
    qryMattersNARCHIVE: TFloatField;
    qryMattersARCHIVED: TDateTimeField;
    qryMattersACCT: TStringField;
    qryMattersTRUSTAUTH: TStringField;
    qryMattersPARTY1: TStringField;
    qryMattersPARTY2: TStringField;
    qryMattersPARTY3: TStringField;
    qryMattersSHORTDESCR: TStringField;
    qryMattersLONGDESCR: TStringField;
    qryMattersOFFICE: TStringField;
    qryMattersNCLIENT: TFloatField;
    qryMattersBILL_TO: TStringField;
    qryMattersLASTTRANS: TDateTimeField;
    qryMattersLASTTRUST: TDateTimeField;
    qryMattersREFERREDBY: TStringField;
    qryMattersNOTES: TStringField;
    qryMattersLITIGATION: TStringField;
    qryMattersSPECULATION: TStringField;
    qryMattersAGENCY: TStringField;
    qryMattersGRATIS: TStringField;
    qryMattersBILLING_PLAN: TStringField;
    qryMattersCONTACT: TStringField;
    qryMattersPREV_NCMAUDIT: TFloatField;
    qryMattersPREV_NTRAUDIT: TFloatField;
    qryMattersTASK: TStringField;
    qryMattersEXP_COMPLETION: TDateTimeField;
    qryMattersOPREF: TStringField;
    qryMattersTASK_DATE: TDateTimeField;
    qryMattersREFRESH: TFloatField;
    qryMattersCONTROLLER: TStringField;
    qryMattersFEECODE: TStringField;
    qryMattersCOMPLETED: TDateTimeField;
    qryMattersWORKFLOW: TStringField;
    qryMattersLABELCODE: TStringField;
    qryMattersMODBY: TStringField;
    qryMattersARCHVLOCN: TStringField;
    qryMattersCLIENTID: TStringField;
    qryMattersNNAME: TFloatField;
    qryMattersINTTRIGDATE: TDateTimeField;
    qryMattersTCCLRDATE: TDateTimeField;
    qryMattersLASTBILLDATE: TDateTimeField;
    qryMattersLASTLETTER: TDateTimeField;
    qryMattersBFPRGDATE: TDateTimeField;
    qryMattersARCHIVEREVIEW: TDateTimeField;
    qryMattersARCHIVEDEST: TDateTimeField;
    qryMattersBRANCH: TStringField;
    qryMattersARCHIVENUM: TFloatField;
    qryMattersGSTEXEMPT: TIntegerField;
    qryMattersCLOSED: TIntegerField;
    qryMattersTRSTMNT: TIntegerField;
    qryMattersTRAUTH: TIntegerField;
    qryMattersSLEDATE: TDateTimeField;
    qryMattersOPERATOR: TStringField;
    qryMattersJURISDICTION: TStringField;
    qryMattersFEEBASIS: TStringField;
    qryMattersENTITY: TStringField;
    qryMattersTYPE1: TStringField;
    qryMattersTYPE2: TStringField;
    qryMattersJURISDICTION1: TStringField;
    qryMattersSTATUS1: TStringField;
    qryMattersDEBTORNOTE: TStringField;
    qryMattersDEBTORDATE: TStringField;
    qryMattersUNBILL_DISB: TFloatField;
    qryMattersDEBTORS: TFloatField;
    qryMattersUNBILL_FEES: TFloatField;
    qryMattersBILL_FEES: TFloatField;
    qryMattersUNBILL_SUND: TFloatField;
    qryMattersBILL_DISB: TFloatField;
    qryMattersRECVD_FEES: TFloatField;
    qryMattersBILL_SUND: TFloatField;
    qryMattersBILL_ANTD: TFloatField;
    qryMattersTRUST_TRANS: TFloatField;
    qryMattersSPEC_PURPOSE: TFloatField;
    qryMattersUNBILL_ANTD: TFloatField;
    qryMattersEXPECTED_VALUE: TFloatField;
    qryMattersUNREC_DISB: TFloatField;
    qryMattersPERIOD0: TFloatField;
    qryMattersPERIOD1: TFloatField;
    qryMattersPERIOD2: TFloatField;
    qryMattersPERIOD3: TFloatField;
    qryMattersANTDISBS: TFloatField;
    qryMattersANTDRS: TFloatField;
    qryMattersFEESDRS: TFloatField;
    qryMattersUNBILL_UNITS: TFloatField;
    qryMattersAMT_LAST_REC: TFloatField;
    qryMattersDISBSWOFF: TFloatField;
    qryMattersDRSWOFF: TFloatField;
    qryMattersWIPWOFF: TFloatField;
    qryMattersDISBSLIM: TFloatField;
    qryMattersUNBILL_CREQ: TFloatField;
    qryMattersUNBILL_UPCRED: TFloatField;
    qryMattersBILL_CREQ: TFloatField;
    qryMattersBILL_UPCRED: TFloatField;
    qryMattersRECVD_DISB: TFloatField;
    qryMattersRECVD_SUND: TFloatField;
    qryMattersRECVD_CREQ: TFloatField;
    qryMattersRECVD_UPCRED: TFloatField;
    qryMattersSUNDWOFF: TFloatField;
    qryMattersCREQWOFF: TFloatField;
    qryMattersUPCREDWOFF: TFloatField;
    qryMattersRATE: TFloatField;
    qryMattersTRUST_BAL: TFloatField;
    qryMattersCL_TRUST_BAL: TFloatField;
    qryMattersBUDGET_FEES: TFloatField;
    qryMattersBUDGET_DISB: TFloatField;
    qryMattersBUDGET_TOTAL: TFloatField;
    qryMattersARCHIVETYPECODE: TStringField;
    qryMattersTRANS_FROM: TStringField;
    qryMattersSUBJURISDICTION: TStringField;
    qryMattersCREATED: TDateTimeField;
    qryMattersMODIFIED: TDateTimeField;
    qryMattersDEBTORSTATUS: TFloatField;
    qryMattersROWID: TStringField;
    qryDocRegNDOCREG: TFloatField;
    qryDocReg2PACKETID: TStringField;
    qryDocReg2NCLIENT: TFloatField;
    qryDocReg2LODGED: TDateTimeField;
    qryDocReg2DESCR: TStringField;
    qryDocReg2SENT: TDateTimeField;
    qryDocReg2LOCATION: TStringField;
    qryDocReg2REVIEWDATE: TDateTimeField;
    qryDocReg2DATE_RELEASED: TDateTimeField;
    qryDocReg2RELEASED_TO: TStringField;
    qryDocReg2DATE_RETURNED: TDateTimeField;
    qryDocReg2NDOCUMENT: TFloatField;
    qryDocReg2DESCRIPTION: TStringField;
    procDocGetEnvelopeId: TUniStoredProc;
    dsEntity: TUniDataSource;
    qryEntityBank: TUniQuery;
    dsEntityBank: TUniDataSource;
    qryEmplyeeList: TUniQuery;
    dsEmplyeeList: TUniDataSource;
    qryDocReg2ENVELOPE: TFloatField;
    qryUserChangePassword: TUniQuery;
    procSettingSave: TUniStoredProc;
    procAddUser: TUniStoredProc;
    procGetInstanceName: TUniStoredProc;
    qryGetLabelName: TUniQuery;
    qryGetLabelNameFIELDNAME: TStringField;
    qryGetLabelNameByCode: TUniQuery;
    StringField1: TStringField;
    osmAxiom: TUniSQLMonitor;
    procAlterUser: TUniStoredProc;
    ilstToolbar: TImageList;
    LabelStyle: TcxEditStyleController;
    qryGetBillRate: TUniQuery;
    dsMSearch: TUniDataSource;
    qrySettingIntValueLoad: TUniQuery;
    qrySettingIntValueLoadVALUE: TStringField;
    qrySettingIntValueDelete: TUniQuery;
    qryExpenseAllocations: TUniQuery;
    plReports: TppDBPipeline;
    qrySubBills: TUniQuery;
    qryUnAllocDisb: TUniQuery;
    qryAllocDisb: TUniQuery;
    qryRB_Items: TUniQuery;
    qryRB_ItemsROWID: TStringField;
    qryRB_ItemsITEM_ID: TIntegerField;
    qryRB_ItemsFOLDER_ID: TIntegerField;
    qryRB_ItemsITEM_NAME: TStringField;
    qryRB_ItemsITEM_SIZE: TIntegerField;
    qryRB_ItemsITEM_TYPE: TIntegerField;
    qryRB_ItemsMODIFIED: TFloatField;
    qryRB_ItemsDELETED: TFloatField;
    qryRB_ItemsTEMPLATE: TMemoField;
    qryMatterAttachments: TUniQuery;
    dsMatterAttachments: TUniDataSource;
    procGetUserCount: TUniStoredProc;
    qryReqFields: TUniQuery;
    dsReqFields: TUniDataSource;
    procTemp: TUniStoredProc;
    StyleRepository: TcxStyleRepository;
    UnreadStyle: TcxStyle;
    cxStyle1: TcxStyle;
    cxEditStyleController1: TcxEditStyleController;
    procUnlockUser: TUniStoredProc;
    cxStyle2: TcxStyle;
    ilPrecCategorysml: TImageList;
    cxStyle3: TcxStyle;
    qrySettings: TUniQuery;
    tblPaymentType: TVirtualTable;
    tblPaymentTypeDescr: TStringField;
    tblPaymentTypeClearance: TIntegerField;
    tblPaymentTypeCode: TStringField;
    dsPaymentType: TUniDataSource;
    cxStyle4: TcxStyle;
    qrySystem: TUniQuery;
    qryBILL_CRED_OWING: TUniQuery;
    qrySettingIntValueLoadITEM: TStringField;
    qryGetSeq: TUniQuery;
    procGetActiveEmps: TUniStoredProc;
    qryTempFeeInsert: TUniQuery;
    qryFeeTempUpdate: TUniQuery;
    dsEmailTemplates: TUniDataSource;
    qryEmailTemplates: TUniQuery;
    qryEmailTemplatesID: TFloatField;
    qryEmailTemplatesDESCR: TStringField;
    qryEmailTemplatesBODY_TEXT: TStringField;
    qryEmailTemplatesROWID: TStringField;
    qryCRAllocsRV: TUniQuery;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    qryAllocDisbsTax: TUniQuery;
    qryStopMatterWorkflowTasks: TUniQuery;
    qryDocDetails: TUniQuery;
    MapiSession: TRwMapiSession;
    OracleUniProvider: TOracleUniProvider;
    UniTable1: TUniTable;
    qrySettingLoadVALUE: TStringField;
    qrySettingLoadINTVALUE: TLargeintField;
    qryEmpsLogin: TUniQuery;
    VirtualTable1: TVirtualTable;
    qryTmp3: TUniQuery;
    tblCountryList: TUniTable;
    dsCountryList: TUniDataSource;
    tbFolders: TUniTable;
    tbItems: TUniTable;
    dsFolders: TUniDataSource;
    dsItems: TUniDataSource;
    plFolders: TppDBPipeline;
    plItems: TppDBPipeline;
    qryWorkingDays: TUniQuery;
    qryDailyUnitsBudget: TUniQuery;
    qryTasks: TUniQuery;
    dsTasks: TUniDataSource;
    orsAxiom: TOraSession;
    qryMatterAttachment: TUniQuery;
    ScriptRebuildObjects: TUniScript;
    qrySaveEmailAttachments: TUniQuery;
    qryDeleteOrphans: TUniSQL;
    procBillCreate: TUniStoredProc;
    UniConnPasswdReset: TUniConnection;
    qrySearches: TUniQuery;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    qryTmpProcess: TUniQuery;
    ppFileNoteRpt: TppReport;
    ppHeaderBand2: TppHeaderBand;
    pplblTransTitle: TppLabel;
    ppLabel18: TppLabel;
    ppLine5: TppLine;
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
    ppDBMemo3: TppDBMemo;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    pplblMatterDesc: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppSummaryBand2: TppSummaryBand;
    pplblFooter: TppLabel;
    ppLine4: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    UniStoredProc1: TUniStoredProc;
    qryGetBillTemplate: TUniQuery;
    procShowTax: TUniStoredProc;
    qryInsertNNameDoc: TUniQuery;
    cxStyle9: TcxStyle;
    cxStyleFeeNotes: TcxStyle;
    tblStates: TUniTable;
    dsStates: TUniDataSource;
    procAlterUserProfile: TUniStoredProc;
    qryPrecedentList: TUniQuery;
    dsPrecedentList: TUniDataSource;
    qryMatterTrustBankList: TUniQuery;
    dsMatterTrustBankList: TUniDataSource;
    qryValidateMatterTrust: TUniQuery;
    TSSpellChecker: TdxSpellChecker;
    cxStyle10: TcxStyle;
    qryDocFolderExists: TUniQuery;
    qryDocFolderInsert: TUniQuery;
    cxLookAndFeelController1: TcxLookAndFeelController;
    qryDiaryLoc: TUniQuery;
    qryDiarySub: TUniQuery;
    qryEmployeesFull: TUniQuery;
    procMatterCurrency: TUniStoredProc;
    procCalcFXTotal: TUniStoredProc;
    qryBankList: TUniQuery;
    dsBankList: TUniDataSource;
    spAxiomEmail: TUniStoredProc;
    qryDefaultBankList: TUniQuery;
    dsDefaultBankList: TUniDataSource;
    procCanAuthoriseBill: TUniStoredProc;
    dsCurrencyList: TUniDataSource;
    qryCurrencyList: TUniQuery;
    qryEmpAuthor: TUniQuery;
    dsEmpAuthor: TUniDataSource;
    qryTaxList: TUniQuery;
    dsTaxList: TUniDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure uniInsightConnectChange(Sender: TObject;
      Connected: Boolean);
    procedure oalAffinityEvent(Sender: TObject; Event, Message: String);
    procedure oalAffinityTimeOut(Sender: TObject; var Continue: Boolean);
    procedure osmAxiomSQL(Sender: TObject; Text: String;
      Flag: TDATraceFlag);
    procedure uniInsightError(Sender: TObject; E: EDAError;
      var Fail: Boolean);
    procedure MapiSessionAfterLogon(Sender: TObject);
    procedure AddictSpell3Base1ConfigReadString(Sender: TObject; ConfigID,
      Key, Default: String; var Value: String);
    procedure AddictSpell3Base1ConfigWriteString(Sender: TObject; ConfigID,
      Key, Value: String);
    procedure qryMatterAttachmentsNewRecord(DataSet: TDataSet);
    procedure uniInsightAfterConnect(Sender: TObject);
    procedure MapiSessionBeforeLogon(Sender: TObject);
    procedure qrySaveEmailAttachmentsNewRecord(DataSet: TDataSet);
    procedure uniInsightConnectionLost(Sender: TObject; Component: TComponent;
      ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
    procedure TSSpellCheckerSpellingComplete(Sender: TdxCustomSpellChecker;
      var AHandled: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
    procedure TSSpellCheckerAddWord(
      AUserDictionary: TdxUserSpellCheckerDictionary; const AWord: WideString;
      var AHandled: Boolean);
  private
    { Private declarations }
    FAdminMode,
    FCreditorsExist: Boolean;
    FUserID: string;
    FUserBranch : String;
    FCode : String;
    FUserCPrinter : String;
    FUserRPrinter : String;
    FlastSQL : String;
    FUserType: string;
    FDefaultTax: string;
    FUserAccessLevel: integer;
    FUserDept: string;
    FMatLocate: string;
    FSysInfoPath: string;
    FUserName: string;
    iReopenItems: integer;
    iRefreshRate: integer;
    cAuthorRate: Currency;
    bSoundEnabled: boolean;
    strEmployees: TStrings;
    strPartners: TStrings;
    strAuthors: TStrings;
    FSecurity: TSecurity;
    bWANEnabled: boolean;
    FResourceId: integer;
    FInstanceName: string;
    FWorkFlowDefault: string;
    FNetConnection: string;
    FViewType: Integer;
    FSqlLogFile: String;
    FUseClassicDesktop: string;
    FShowMenuBar: string;
    glComponentReg : TglComponentSetup;
    FEmpDefaultURL: string;
    FMatterBranch: string;
	  FMatLabel: string;
    FMatLabelPath: string;
    FMatLabelFileName: string;
    FFeeEarner: string;
    FUserCount: integer;
    FINIstartup: TINIFile;
    FEmailInbox: String;
    FMsgStore: IRwMapiMsgStore;
    FEMailProfileDefault: string;
    FInboxFolderID: TRwMapiEntryID;
    FSentItemsFolderID: TRwMapiEntryID;
    FOutboxFolderID: TRwMapiEntryID;
    FUserPassword: string;
    FLoginName: string;
    FDictionaryInstalled: boolean;
    FIndexOpened: boolean;
//    FISYSError: ECB_Type;
    FLabelPrinter: string;
    FEmployee: string;
    FUserMatterGSTDefault: string;
    FDocID   : string;
    FReOpenLength: integer;
    FCheckFeeTotal: boolean;
    FGridFont: Integer;
    FWorkFlowPrecDefault: string;
    FMatterTabsMultiLine: string;
//    FRunningIde: boolean;
    FShowOraError: boolean;
    FPostTimeOnExit: string;
    FArchiveLabel: string;
    FTimeSheetDescAutoDrop: string;
    FTimeSheetViewLayout: string;
    FSecureMatterAccess: string;
    FSaveTSTimeStamp: string;
    FDfltTimeRecordMeth: string;
    FCheckDisbTotal: boolean;
    FAutoTimer: string;
    FDfltAutoTimerTask: string;
    FWorkingDaysCount: integer;
    FHideFeeNotes: string;
    FAttDocID: string;
    FMatTemplateName: string;

    FMATTER_FEE_BTN: string;
    FMATTER_TIMER_BTN: string;
    FMATTER_SUNDRY_BTN: string;
    FMATTER_PAYMENT_BTN: string;
    FMATTER_CHEQREQ_BTN: string;
    FMATTER_RECEIPT_BTN: string;
    FMATTER_ACC_PAYABLE_BTN: string;
    FMATTER_NEW_BILL_BTN: string;
    FMATTER_EMAIL_BTN: string;
    FMATTER_SMS_BTN: string;
    FMATTER_SEARCH_BTN: string;
    FMATTER_SNAPSHOT_BTN: string;
    FMATTER_MASTER_BTN: string;
    FMATTER_EDIT_BTN: string;
    FMATTER_RESEARCH_BTN: string;
    FMATTER_CLOSE_BTN: string;
    FMATTER_EDIT_CLIENT_BTN: string;
    FMATTER_WKFLOW_BTN: string;
    FMATTER_REOPEN_BTN: string;
    FFEE_FILE_NOTES: string;

    FUSE_ACTIVE_DIRECTORY: string;

    FINFOTRACK_USER: string;
    FINFOTRACK_PASSWORD: string;
    FFeeChart: string;
    FLocaleName: string;
    FEntity: string;
    FUserTCPrinter: string;
    FUserTRPrinter: string;

    FRegistered_Message: string;
    FUSE_DECIMAL_UNITS: string;
    FAUTH_CLIENT_PAYMENT_LIMIT: double;
    FVIEW_EMP_CHEQREQS_ONLY: string;
    Fauto_process_timesheet: string;
    FUserEmail: string;
    FAuth_Password: string;
    FIs_Cashier: string;
    FIs_CreditController: string;
    FTabIndex: integer;
    FTimeUnits: integer;

    procedure SetUserID(sUserID: string);
    function GetBuildFlags: string;
    function GetCreditorsExist: boolean;
    function GetEmployees: TStrings;
    function GetPartners: TStrings;
    function GetAuthors: TStrings;
    function GetDefaultTax: string;
    function GetEntity: string;
    function GetEntityName: string;
    function GetLockDate: TDate;
    function GetMatLocate: string;
    function GetSysInfoPath: string;

    procedure SetEntity(Value: string);
    procedure SetMatLocate(Value: string);
    function GetRunningIde : boolean;
    function GetWkflowDefault: string;
    function GetGSTTreatment: string;
    function GetMajorVersion: string;
    function GetHelpType: integer;
    procedure SetHelpType(Value: integer);
    function GetDefaultPhonebookGrp: string;
    function GetHomePageURL: string;
    function GetTIMESHEET_AMOUNT_EDIT: string;
    procedure SetNavBarAutoHide(Value: string);
    procedure DoNothing;
    function getABN: string;
    function GetDefaultBank: string;
    function GetDefaultTrustBank: string;
    function GetMatLabel: string;
    procedure SetMatLabel(Value: string);
    function GetMatLabelPath: string;
    procedure SetMatLabelPath(Value: string);
    procedure SetMatLabelFileName(Value: string);
    function GetMatLabelFileName: string;
    procedure SetMatTemplateName(Value: string);
    function GetMatTemplateName: string;
    function GetDefaultBankName: string;
    function GetPatchVersion: string;
    function roundCurrency(iIn : Currency) : Currency;
    function GetEmailReg: string;
    procedure SetUserPassword(sUserPassword: string);
    function GetWkflow_Prec_Default: string;
    function GetTIMESHEET_RATE_EDIT: string;
    function GetArchiveLabel: string;
    procedure SetArchiveLabel(Value: string);
    function GetDefaultTimeType: string;
    function GetMSOfficeVersion: string;
    function GetWorkingDaysCount: integer;
  public
    { Public declarations }
    QueryTracing: Boolean;  // Whether we trace query opening
    QueryTolerance: Double;  // A query must run more than this many seconds in order to be traced
    RegistryRoot: string;
    bShutDown: boolean;
    bCostCA: boolean;
    property AxiomAdminMode: Boolean read FAdminMode write FAdminMode;
    property Code: string read FCode;
    property AccessLevel: integer read FUserAccessLevel;
    property CreditorsExist: boolean read GetCreditorsExist write FCreditorsExist;
    property Employees: TStrings read GetEmployees;
    property Partners: TStrings read GetPartners;
    property Authors: TStrings read GetAuthors;
    property UserBranch: string read FUserBranch write FUserBranch;
    property UserDept: string read FUserDept write FUserDept;
    property UserChequePrinter: string read FUserCPrinter write FUserCPrinter;
    property UserReceiptPrinter: string read FUserRPrinter write FUserRPrinter;
    property UserID: string read FUserID write SetUserID;
    property UserType: string read FUserType write FUserType;
    property UserName: string read FUserName;
    property Entity: string read GetEntity write SetEntity;
    property EntityName: string read GetEntityName;
    property EmployeeId: integer read FResourceId;
    property MatLocate: string read GetMatLocate Write SetMatLocate;
    property LastSql : string read FlastSQL Write FlastSQL;
    property LockDate: TDate read GetLockDate;
    property SysInfoPath: string read GetSysInfoPath;
    property ReopenItems: integer read iReopenItems write iReopenItems;
    property RefreshRate: integer read iRefreshRate write iRefreshRate;
    property AuthorRate: currency read cAuthorRate write cAuthorRate;
    property SoundEnabled: boolean read bSoundEnabled write bSoundEnabled;
    property WorkFlowDefault: string read GetWkflowDefault write FWorkFlowDefault;
    property WANEnabled: boolean read bWANEnabled write bWANEnabled;
    property BuildFlags: string read GetBuildFlags;
    property Security: TSecurity read FSecurity;
    property DefaultTax: string read GetDefaultTax;
    property GSTUseBillTotal: string read GetGSTTreatment;
    property runningide: boolean read GetRunningIde;
    property InstanceName: string read FInstanceName write FInstanceName;
    property TimeUnits: integer read FTimeUnits write FTimeUnits;
    property FeeEarner: string read FFeeEarner write FFeeEarner;
    procedure PrecImagesLoad;
    procedure SecurityLoad;
    function Secure(sItem: string): boolean;
    function GetSeqNums(sSequence : string) : string;
    function GetSeqNumber(sSequence : string) : string;
    function GetUserName : String;
    property NetConnection: string read FNetConnection write FNetConnection;
    property MajorVersion: string read GetMajorVersion;
    property HelpType: integer read GetHelpType write SetHelpType;
    property ViewType: integer read FViewType;
    property Def_PhonebookGrp: string read GetDefaultPhonebookGrp;
    property HomePageURL: string read GetHomePageURL;
    property UseClassicDesktop: string read FUseClassicDesktop;
    property ShowMenuBar: string read FShowMenuBar write SetNavBarAutoHide;
    property TimeSheet_Amount_Edit: string read GetTIMESHEET_AMOUNT_EDIT;
    property EmpDefaultURL: string read FEmpDefaultURL write FEmpDefaultURL;
    property ABN: string read getABN;
    procedure loadGlComponent;
    function getGlComponents : TglComponentSetup;
    property glComponent : TglComponentSetup read getGlComponents;
    property DefaultBank: string read GetDefaultBank;
    property DefaultTrustBank: string read GetDefaultTrustBank;
    property MatterBranch: string read FMatterBranch write FMatterBranch;
	 property MatLabel: string read GetMatLabel Write SetMatLabel;
    property MatLabelPath: string read GetMatLabelPath Write SetMatLabelPath;
    property MatLabelFileName: string read GetMatLabelFileName Write SetMatLabelFileName;
    property MatLabelTemplateName: string read GetMatTemplateName Write SetMatTemplateName;
    property DefaultBankName: string read GetDefaultBankName;
    property Patch_Number: string read GetPatchVersion;
    procedure UpdateSubBills(iNmemo : integer);
    function GetEnvVar(const varName : string) : string;
    property UserCount: integer read FUserCount write FUserCount;
    property ValidEmailReg: string read GetEmailReg;
    property MsgStore: IRwMapiMsgStore read FMsgStore;
    property DefaultEmailInbox: string read FEmailInbox;
    property EMailProfileDefault: string read FEMailProfileDefault;
    property InboxFolderID: TRwMapiEntryID read FInboxFolderID write FInboxFolderID;
    property SentItemsFolderID: TRwMapiEntryID read FSentItemsFolderID write FSentItemsFolderID;
    property UserPassword: string read FUserPassword write SetUserPassword;
    property LoginName: string read FLoginName;
    property DictionaryInstalled: boolean read FDictionaryInstalled write FDictionaryInstalled;
    property IndexOpen: boolean read FIndexOpened write FIndexOpened;
    property LabelPrinter: string read FLabelPrinter;
    property Employee: string read FEmployee write FEmployee;
    property UserMatterGSTDefault: string read FUserMatterGSTDefault write FUserMatterGSTDefault;
    procedure CheckForErrors;
    function ConvertDate(AStrDate: string; dtFormat: string = 'dd-mon-yyyy'): TDateTime;
//    to be used to construct file name will not work for workflow.
    property DocID  : string read FDocID write FDocID;
    property UserReOpenLength: integer read FReOpenLength;
    property CheckFeeTotalInstalled: boolean read FCheckFeeTotal;
    property CheckDisbTotalInstalled: boolean read FCheckDisbTotal;
    property GridFont: integer read FGridFont;
    property WorkPrecFlowDefault: string read GetWkflow_Prec_Default write FWorkFlowPrecDefault;
    property MatterTabsMultiLine: string read FMatterTabsMultiLine;
    property ShowOraError: boolean read FShowOraError write FShowOraError default True;
    property PostTimeOnExit: string read FPostTimeOnExit write FPostTimeOnExit;
    property TimeSheet_Rate_Edit: string read GetTIMESHEET_RATE_EDIT;
    property TimeSheetDescAutoDrop: string read FTimeSheetDescAutoDrop write FTimeSheetDescAutoDrop;
    property TimeSheetViewLayout: string read FTimeSheetViewLayout write FTimeSheetViewLayout;
	 property SecureMatterAccess: string read FSecureMatterAccess write FSecureMatterAccess;
    property DefaultTimeType: string read GetDefaultTimeType;
    property SaveTSTimeStamp: string read FSaveTSTimeStamp;

    function GetFeeTotal(AMatter: integer): integer;
    function GetFeeTotalAmount(AMatter: integer): integer;
    property ArchiveLabel: string read GetArchiveLabel Write SetArchiveLabel;
    property DfltTimeRecordMeth: string read FDfltTimeRecordMeth write FDfltTimeRecordMeth;
    property OfficeVer: string read GetMSOfficeVersion;
    property UserAutoTimer: string read FAutoTimer;
    property UserDfltAutoTimerTask: string read FDfltAutoTimerTask;
    property OutboxFolderID: TRwMapiEntryID read FOutboxFolderID write FOutboxFolderID;
    property WorkingDaysCount: integer read GetWorkingDaysCount write FWorkingDaysCount;
    procedure ConvertExecute;
    property HideFeeNotes: string read FHideFeeNotes;
    function GetBuildInfo({var V1, V2, V3, V4, V5: Word}): string;
    function GetVersionInfo: string;
    property AttDocID  : string read FAttDocID write FAttDocID;
    function GetMonthlyFeeTotal(AMatter: integer): integer;
    function GetClientFeeRate(AMatter: integer): String;
    procedure FindMatter(var AFoundFileID: string; AFileID: string);


    // Matter toolbar buttons
    property MATTER_FEE_BTN: string read              FMATTER_FEE_BTN;
    property MATTER_TIMER_BTN: string read            FMATTER_TIMER_BTN;
    property MATTER_SUNDRY_BTN: string read           FMATTER_SUNDRY_BTN;
    property MATTER_PAYMENT_BTN: string read          FMATTER_PAYMENT_BTN;
    property MATTER_CHEQREQ_BTN: string read          FMATTER_CHEQREQ_BTN;
    property MATTER_RECEIPT_BTN: string read          FMATTER_RECEIPT_BTN;
    property MATTER_ACC_PAYABLE_BTN: string read      FMATTER_ACC_PAYABLE_BTN;
    property MATTER_NEW_BILL_BTN: string read         FMATTER_NEW_BILL_BTN;
    property MATTER_EMAIL_BTN: string read            FMATTER_EMAIL_BTN;
    property MATTER_SMS_BTN: string read              FMATTER_SMS_BTN;
    property MATTER_SEARCH_BTN: string read           FMATTER_SEARCH_BTN;
    property MATTER_SNAPSHOT_BTN: string read         FMATTER_SNAPSHOT_BTN;
    property MATTER_MASTER_BTN: string read           FMATTER_MASTER_BTN;
    property MATTER_EDIT_BTN: string read             FMATTER_EDIT_BTN;
    property MATTER_RESEARCH_BTN: string read         FMATTER_RESEARCH_BTN;
    property MATTER_CLOSE_BTN: string read            FMATTER_CLOSE_BTN;
    property MATTER_EDIT_CLIENT_BTN: string read      FMATTER_EDIT_CLIENT_BTN;
    property MATTER_WKFLOW_BTN: string read           FMATTER_WKFLOW_BTN;
    property MATTER_REOPEN_BTN: string read           FMATTER_REOPEN_BTN;
    property FEE_FILE_NOTES: string read              FFEE_FILE_NOTES write FFEE_FILE_NOTES;

    property USE_ACTIVE_DIRECTORY: string read        FUSE_ACTIVE_DIRECTORY write FUSE_ACTIVE_DIRECTORY;

    property INFOTRACK_USER: string read FINFOTRACK_USER;
    property INFOTRACK_PASSWORD: string read FINFOTRACK_PASSWORD;
    property AuthorFeeChart: string read FFeeChart;

    property LocaleName: string read FLocaleName write FLocaleName;
    property Registered_Message: string read FRegistered_Message write FRegistered_Message;
    property EmpEntity: string read FEntity;
    property UserTrustChequePrinter: string read FUserTCPrinter write FUserTCPrinter;
    property UserTrustReceiptPrinter: string read FUserTRPrinter write FUserTRPrinter;
    property EMP_USE_DECIMAL_UNITS: string read FUSE_DECIMAL_UNITS write FUSE_DECIMAL_UNITS;
    property AUTH_CLIENT_PAYMENT_LIMIT: double read FAUTH_CLIENT_PAYMENT_LIMIT write FAUTH_CLIENT_PAYMENT_LIMIT;
    property VIEW_EMP_CHEQREQS_ONLY: string read FVIEW_EMP_CHEQREQS_ONLY write FVIEW_EMP_CHEQREQS_ONLY;
    property auto_process_timesheet: string read Fauto_process_timesheet write Fauto_process_timesheet;
    property User_Email: string read FUserEmail write FUserEmail;
    property Auth_Password: string read FAuth_Password write FAuth_Password;
    property Is_Cashier: string read FIs_Cashier write FIs_Cashier;
    property Is_Credit_Controller: string read FIs_CreditController write FIs_CreditController;

    function Ping(const AHost : string) : Boolean;
    property ATabIndex: integer read FTabIndex write FTabIndex default -1;

    function GetEntityDefaultBranch: string;
    function GetEntityDefaultDepartment: string;
    function GetTimeUnits: integer;
  end;

var
  dmAxiom: TdmAxiom;

function Win32Error(): String;

implementation

{$R *.DFM}

uses
  MiscFunc
  , System.zLib
  , Desktop
  , TableCache
  , uRwMapiUtils
  , EmailListener
  , Password
  , uRwSysUtils
  , uRwMapiProps
  , Registry
  , cxDateUtils
  , GenericSearch
  , msearch
  , citFunc
  , System.UITypes
  , LoggingSnippet
  , IdIcmpClient
  , IdGlobal;

var
   ExeCount: integer;


// format win32 error from the system string list..
function Win32Error(): String;
var
  LMsgBuf: Array[0..2000] of Char;
begin
  FormatMessage(
    FORMAT_MESSAGE_FROM_SYSTEM,
    nil,
    GetLastError(),
    0, // Default language
    LMsgBuf,
    2000,
    nil);
  Result := String(LMsgBuf);
end;

procedure TdmAxiom.CheckForErrors;
begin
//  if FISYSError.msg[1] <> #0 then
//    Raise Exception.Create(FISYSError.msg);
end;

procedure TdmAxiom.SetUserID(sUserID: string);
var
  DefaultEntity : String;
begin
   try
      qryEmployeesFull.Close;
      qryEmployeesFull.ParamByName('code').AsString := sUserID;
      qryEmployeesFull.Open;
      FUserID                    := sUserID;

      FUserType                  := qryEmployeesFull.FieldByName('TYPE').AsString;
      FUserBranch                := qryEmployeesFull.FieldByName('BRANCH').AsString;
      FUserDept                  := qryEmployeesFull.FieldByName('DEPT').AsString;
      FUserCPrinter              := qryEmployeesFull.FieldByName('CHEQUE_PRINTER').AsString;
      FUserRPrinter              := qryEmployeesFull.FieldByName('RECEIPT_PRINTER').AsString;
      FUserAccessLevel           := qryEmployeesFull.FieldByName('ACCESSLEVEL').AsInteger;
      DefaultEntity              := qryEmployeesFull.FieldByName('DEFAULT_ENTITY').AsString;
      FResourceId                := qryEmployeesFull.FieldByName('NEMPLOYEE').AsInteger;
      FUserName                  := qryEmployeesFull.FieldByName('NAME').AsString;
      FViewType                  := qryEmployeesFull.FieldByName('VIEW_TYPE').AsInteger;
      FUseClassicDesktop         := qryEmployeesFull.FieldByName('CLASSIC_VERSION').AsString;
      FShowMenuBar               := qryEmployeesFull.FieldByName('SHOW_NAV_BAR').AsString;
      FEmpDefaultURL             := qryEmployeesFull.FieldByName('EMP_DEFAULT_URL').AsString;
      FFeeEarner                 := qryEmployeesFull.FieldByName('ISFEEEARNER').AsString;
      FEmailInbox                := qryEmployeesFull.FieldByName('EMAIL_INCOMING_FLDR').AsString;
      FEMailProfileDefault       := qryEmployeesFull.FieldByName('EMAIL_PROFILE_DEFAULT').AsString;
      if DefaultEntity <> '' then
         setEntity(DefaultEntity);
      frmDesktop.beEntity.Text   := qryEmployeesFull.FieldByName('NAME').AsString;
      FLoginName                 := qryEmployeesFull.FieldByName('USER_NAME').AsString;
      FLabelPrinter              := qryEmployeesFull.FieldByName('LABEL_PRINTER').AsString;
      FUserMatterGSTDefault      := qryEmployeesFull.FieldByName( 'MAT_LEDG_GST_TICK').AsString;
      FReOpenLength              := qryEmployeesFull.FieldByName('REOPENLENGTH').AsInteger;
      FGridFont                  := qryEmployeesFull.FieldByName('GRID_FONT_SIZE').AsInteger;
      FMatterTabsMultiLine       := qryEmployeesFull.FieldByName('MATTER_MULTILINE_TABS').AsString;
//     frmDesktopClassic.cmbEntity.EditValue := dmAxiom.Entity;
//     frmDesktop.StatusBar.Panels[1].Text := dmAxiom.EntityName;
      PostTimeOnExit             := qryEmployeesFull.FieldByName( 'PROCESS_TIME_ON_EXIT').AsString;
      FTimeSheetDescAutoDrop     := qryEmployeesFull.FieldByName('time_sheet_descr_drop').AsString;
      FTimeSheetViewLayout       := qryEmployeesFull.FieldByName('TIME_SHEET_VIEW_LAYOUT').AsString;
      FSecureMatterAccess        := qryEmployeesFull.FieldByName('VIEW_RESTRICTED_MATTERS').AsString;
      FSaveTSTimeStamp           := qryEmployeesFull.FieldByName('SAVE_TS_TIME_STAMP').AsString;
      FDfltTimeRecordMeth        := qryEmployeesFull.FieldByName('DFLT_TIME_REC_METHOD').AsString;
      FAutoTimer                 := qryEmployeesFull.FieldByName('AUTO_TIMER').AsString;
      FDfltAutoTimerTask         := qryEmployeesFull.FieldByName('DFLT_AUTOTIMER_TASK').AsString;
      FHideFeeNotes              := qryEmployeesFull.FieldByName('HIDE_FEE_NOTES').AsString;

      //Matter toolbar buttons
      FMATTER_FEE_BTN            := qryEmployeesFull.FieldByName('MATTER_FEE_BTN').AsString;
      FMATTER_TIMER_BTN          := qryEmployeesFull.FieldByName('MATTER_TIMER_BTN').AsString;
      FMATTER_SUNDRY_BTN         := qryEmployeesFull.FieldByName('MATTER_SUNDRY_BTN').AsString;
      FMATTER_PAYMENT_BTN        := qryEmployeesFull.FieldByName('MATTER_PAYMENT_BTN').AsString;
      FMATTER_CHEQREQ_BTN        := qryEmployeesFull.FieldByName('MATTER_CHEQREQ_BTN').AsString;
      FMATTER_RECEIPT_BTN        := qryEmployeesFull.FieldByName('MATTER_RECEIPT_BTN').AsString;
      FMATTER_ACC_PAYABLE_BTN    := qryEmployeesFull.FieldByName('MATTER_ACC_PAYABLE_BTN').AsString;
      FMATTER_NEW_BILL_BTN       := qryEmployeesFull.FieldByName('MATTER_NEW_BILL_BTN').AsString;
      FMATTER_EMAIL_BTN          := qryEmployeesFull.FieldByName('MATTER_EMAIL_BTN').AsString;
      FMATTER_SMS_BTN            := qryEmployeesFull.FieldByName('MATTER_SMS_BTN').AsString;
      FMATTER_SEARCH_BTN         := qryEmployeesFull.FieldByName('MATTER_SEARCH_BTN').AsString;
      FMATTER_SNAPSHOT_BTN       := qryEmployeesFull.FieldByName('MATTER_SNAPSHOT_BTN').AsString;
      FMATTER_MASTER_BTN         := qryEmployeesFull.FieldByName('MATTER_MASTER_BTN').AsString;
      FMATTER_EDIT_BTN           := qryEmployeesFull.FieldByName('MATTER_EDIT_BTN').AsString;
      FMATTER_RESEARCH_BTN       := qryEmployeesFull.FieldByName('MATTER_RESEARCH_BTN').AsString;
      FMATTER_CLOSE_BTN          := qryEmployeesFull.FieldByName('MATTER_CLOSE_BTN').AsString;
      FMATTER_EDIT_CLIENT_BTN    := qryEmployeesFull.FieldByName('MATTER_EDIT_CLIENT_BTN').AsString;
      FMATTER_WKFLOW_BTN         := qryEmployeesFull.FieldByName('MATTER_WKFLOW_BTN').AsString;
      FMATTER_REOPEN_BTN         := qryEmployeesFull.FieldByName('MATTER_OPEN_BTN').AsString;
      FEE_FILE_NOTES             := qryEmployeesFull.FieldByName('FEE_FILE_NOTES').AsString;

      FINFOTRACK_USER            := qryEmployeesFull.FieldByName('INFOTRACK_USER').AsString;
      FINFOTRACK_PASSWORD        := qryEmployeesFull.FieldByName('INFOTRACK_PASSWORD').AsString;

      FFeeChart                  := qryEmployeesFull.FieldByName('FEE_CHART').AsString;
      FEntity                    := qryEmployeesFull.FieldByName('DEFAULT_ENTITY').AsString;
      FUserTCPrinter             := qryEmployeesFull.FieldByName('TRUST_CHEQUE_PRINTER').AsString;
      FUserTRPrinter             := qryEmployeesFull.FieldByName('TRUST_RECEIPT_PRINTER').AsString;
      FUSE_DECIMAL_UNITS         := qryEmployeesFull.FieldByName('USE_DECIMAL_UNITS').AsString;
      FAUTH_CLIENT_PAYMENT_LIMIT := qryEmployeesFull.FieldByName('AUTH_CLIENT_PAYMENT_LIMIT').AsFloat;
      FVIEW_EMP_CHEQREQS_ONLY    := qryEmployeesFull.FieldByName('VIEW_EMP_CHEQREQS_ONLY').AsString;
      Fauto_process_timesheet    := qryEmployeesFull.FieldByName('auto_process_timesheet').AsString;
      FUserEmail                 := qryEmployeesFull.FieldByName('EMAIL').AsString;
      FAuth_Password             := qryEmployeesFull.FieldByName('AUTHORISATION_PASSWD').AsString;
      FIs_Cashier                := qryEmployeesFull.FieldByName('is_cashier').AsString;
      FIs_CreditController       := qryEmployeesFull.FieldByName('IS_CREDIT_CONTROLLER').AsString;
   finally
      qryEmployeesFull.Close;
   end;
end;

function TdmAxiom.GetEntity: string;
begin
   try
      if (Self.qryEntity.Active = True) then
         Result := qryEntity.FieldByName('CODE').AsString;
   finally

   end;
end;

function TdmAxiom.GetEntityDefaultBranch: string;
begin
   try
      if (Self.qryEntity.Active = True) then
         Result := qryEntity.FieldByName('DEFAULT_BRANCH').AsString;
   finally

   end;
end;

function TdmAxiom.GetEntityDefaultDepartment: string;
begin
   try
      if (Self.qryEntity.Active = True) then
         Result := qryEntity.FieldByName('DEFAULT_DEPARTMENT').AsString;
   finally

   end;
end;

function TdmAxiom.GetWkflowDefault: string;
begin
   Result := SystemString('DEFAULT_WKFLOW');
end;

function TdmAxiom.GetWkflow_Prec_Default: string;
begin
   Result := SystemString('DFLT_MATTER_PREC_WORKFLOW');
end;

function TdmAxiom.GetGSTTreatment: string;
begin
   Result := SystemString('GST_BILL_TOTAL');
end;

function TdmAxiom.GetTimeUnits: integer;
begin
   Result := SystemInteger('TIME_UNITS');
end;

function TdmAxiom.GetDefaultPhonebookGrp: string;
begin
   Result := SystemString('DEFAULT_PHONEBOOKGRP');
end;

function TdmAxiom.GetHomePageURL: string;
begin
   Result := SystemString('HOME_PAGE_URL');
end;

function TdmAxiom.GetTIMESHEET_AMOUNT_EDIT: string;
begin
   Result := SystemString('TIMESHEET_AMOUNT_EDIT');
end;

function TdmAxiom.GetPatchVersion: string;
begin
   Result := SystemString('PATCH_VERSION');
end;

function TdmAxiom.GetEmailReg: string;
begin
   Result := SystemString('email_reg');
end;


procedure TdmAxiom.SetEntity(Value: string);
begin
  with qryEntity do
  begin
    Close;
    ParamByName('ENTITY').AsString := Value;
    Open;
  end;
  if glComponentReg <> nil then
        glComponentReg.changeEntity(value);

end;

procedure TdmAxiom.SetHelpType(Value: integer);
begin
   with qrySysfile do
   begin
      SQL.Clear;
      SQL.Text := 'UPDATE SYSTEMFILE SET HELP_TYPE = :HELP_TYPE';
      ParamByName('HELP_TYPE').AsInteger := Value;
      ExecSQL;;
  end;
end;

procedure TdmAxiom.SetNavBarAutoHide(Value: string);
begin
   with qryEmps do
   begin
      SQL.Clear;
      SQL.Text := 'UPDATE EMPLOYEE SET SHOW_NAV_BAR = :SHOW_NAV_BAR WHERE CODE = :CODE';
      ParamByName('SHOW_NAV_BAR').AsString := Value;
      ParamByName('CODE').AsString := UserID;
      ExecSQL;;
  end;
end;

function TdmAxiom.GetHelpType: integer;
begin
   Result := SystemInteger('HELP_TYPE');
end;

function TdmAxiom.GetMatLocate: string;
begin
  // If we haven't loaded it yet, load it
  if FMatLocate = '' then
    FMatLocate := SettingLoadString('MATTER', 'MATLOCATE');
  // If they don't have one set, default it
  if FMatLocate = '' then
    FMatLocate := 'M.TITLE || '' '' || SHORTDESCR || '' '' || FILEID';
//    FMatLocate := 'P.SEARCH || '' '' || SHORTDESCR || '' '' || FILEID';
  Result := FMatLocate;
end;


procedure TdmAxiom.SetMatLocate(Value: string);
begin
   FMatLocate := Value;
   SettingSave('MATTER', 'MATLOCATE', Value);
end;


function TdmAxiom.GetSysInfoPath: string;
begin
  if FSysInfoPath = '' then
  Result := '';
end;


{procedure TdmAxiom.SetSysInfoPath;
begin
  FSysInfoPath := '';
end;}

function TdmAxiom.GetEntityName: string;
begin
  Result := qryEntity.FieldByName('NAME').AsString;
end;

function TdmAxiom.GetABN: string;
begin
  Result := qryEntity.FieldByName('ABN').AsString;
end;

function TdmAxiom.GetEmployees: TStrings;
begin
  if strEmployees.Count = 0 then
  begin
    qryEmps.Close;
    qryEmps.SQL.Text := 'SELECT CODE FROM EMPLOYEE WHERE ACTIVE = ''Y'' ORDER BY CODE';
    qryEmps.Open;

    qryEmps.First;
    while not qryEmps.EOF do
    begin
      strEmployees.Add(qryEmps.FieldByName('CODE').AsString);
      qryEmps.Next;
    end;
  end;

  GetEmployees := strEmployees;
end;

function TdmAxiom.GetPartners: TStrings;
begin
  if strPartners.Count = 0 then
  begin
    qryEmps.Close;
    qryEmps.SQL.Text := 'SELECT CODE FROM EMPLOYEE WHERE ISPARTNER = ''Y'' AND ACTIVE = ''Y'' ORDER BY CODE';
    qryEmps.Open;

    qryEmps.First;
    while not qryEmps.EOF do
    begin
      strPartners.Add(qryEmps.FieldByName('CODE').AsString);
      qryEmps.Next;
    end;
  end;

  GetPartners := strPartners;
end;

function TdmAxiom.GetAuthors: TStrings;
begin
  if strAuthors.Count = 0 then
  begin
    qryEmps.Close;
    qryEmps.SQL.Text := 'SELECT CODE FROM EMPLOYEE WHERE ISAUTHOR = ''Y'' AND ACTIVE = ''Y'' ORDER BY CODE';
    qryEmps.Open;

    qryEmps.First;
    while not qryEmps.EOF do
    begin
      strAuthors.Add(qryEmps.FieldByName('CODE').AsString);
      qryEmps.Next;
    end;
  end;

  GetAuthors := strAuthors;
end;

function TdmAxiom.GetCreditorsExist: boolean;
begin
  with qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT COUNT(NCREDITOR) AS CNT FROM CREDITOR';
    Open;
    GetCreditorsExist := not (FieldByName('CNT').AsInteger = 0);
    Close;
  end;
end;

function TdmAxiom.GetMajorVersion: string;
var
   VerInfoSize:  DWORD;
   VerInfo:      Pointer;
   VerValueSize: DWORD;
   VerValue:     PVSFixedFileInfo;
   Dummy:        DWORD;
   ExeName:      string;
   iLastError: DWord;
begin
   try
      ExeName := Application.ExeName;
      VerInfoSize := GetFileVersionInfoSize(PChar(ExeName), Dummy);
      if VerInfoSize > 0 then
      begin
         try
            GetMem(VerInfo, VerInfoSize);
            if GetFileVersionInfo(PChar(ExeName), 0, VerInfoSize, VerInfo) then
            begin
               if VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize) then
                  with VerValue^ do
                     Result := Format('%d.%d', [
                               HiWord(dwFileVersionMS), //Major
                               LoWord(dwFileVersionMS) //Minor
                               ]);
            end
            else
            begin
               iLastError := GetLastError;
               Result := Format('GetFileVersionInfo failed: (%d) %s',
                              [iLastError, SysErrorMessage(iLastError)]);
            end;
         finally
            FreeMem(VerInfo, VerInfoSize);
         end;
      end
      else
      begin
         iLastError := GetLastError;
         Result := Format('GetFileVersionInfo failed: (%d) %s',
                           [iLastError, SysErrorMessage(iLastError)]);
      end;
   finally

   end;
end;

{
  Added 17.10.2002 GG

  Retrieves any special flags added to the build as a string value
}
function TdmAxiom.GetBuildFlags: string;
begin
{  if wVersionMajor = 0 then
    GetBuildInfo(wVersionMajor, wVersionMinor, wVersionRelease, wVersionBuild, wVersionFlags);

  Result:= '';
  if (wVersionFlags and VS_FF_DEBUG = VS_FF_DEBUG) then
    result:= Result + '(Debug Build) '
  else
  if (wVersionFlags and VS_FF_PRERELEASE = VS_FF_PRERELEASE) then
    result:= Result + '(Pre-release Build) '
  else
  if (wVersionFlags and VS_FF_SPECIALBUILD = VS_FF_SPECIALBUILD) then
    result:= Result + '(Special Build) '
  else
  if (wVersionFlags and VS_FF_PRIVATEBUILD = VS_FF_PRIVATEBUILD) then
    result:= Result + '(Private Build) ';     }
end;


function TdmAxiom.GetDefaultTax: string;
var
  qryTax: TUniQuery;
begin
  if FDefaultTax = '' then
  begin
    qryTax := TUniQuery.Create(nil);
    qryTax.Connection := dmAxiom.uniInsight;
    with qryTax do
    begin
      SQL.Text := 'SELECT CODE FROM TAXTYPE WHERE DEFAULTTAX = ''Y''';
      Open;
      FDefaultTax := FieldByName('CODE').AsString;
      Close;
    end;
    qryTax.Free;
  end;

  GetDefaultTax := FDefaultTax;
end;


function TdmAxiom.GetBuildInfo({var V1, V2, V3, V4, V5: Word}): string;
   { by Steve Schafer }
var
   VerInfoSize:  DWORD;
   VerInfo:      Pointer;
   VerValueSize: DWORD;
   VerValue:     PVSFixedFileInfo;
   Dummy:        DWORD;
   ExeName:      string;
//   SplashScreen: TfrmSplashScreen;
   iLastError: DWord;
begin
   try
      ExeName := Application.ExeName;
      VerInfoSize := GetFileVersionInfoSize(PChar(ExeName), Dummy);
      if VerInfoSize > 0 then
      begin
         try
            GetMem(VerInfo, VerInfoSize);
            if GetFileVersionInfo(PChar(ExeName), 0, VerInfoSize, VerInfo) then
            begin
               if VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize) then
                  with VerValue^ do
                     Result := Format('%d.%d.%d build %d', [
                               HiWord(dwFileVersionMS), //Major
                               LoWord(dwFileVersionMS), //Minor
                               HiWord(dwFileVersionLS), //Release
                               LoWord(dwFileVersionLS)]); //Build
{
     Modi      fied 17.10.2002 GG

     Incl      ude any flags that may have been included
}
//                  V5 := dwFileFlags
            end
            else
            begin
               iLastError := GetLastError;
               Result := Format('GetFileVersionInfo failed: (%d) %s',
                              [iLastError, SysErrorMessage(iLastError)]);
            end;
         finally
            FreeMem(VerInfo, VerInfoSize);
         end;
      end
      else
      begin
         iLastError := GetLastError;
         Result := Format('GetFileVersionInfo failed: (%d) %s',
                           [iLastError, SysErrorMessage(iLastError)]);
      end;
   finally
      //
   end;
end;

function TdmAxiom.GetVersionInfo: string;
var
   VerInfoSize:  DWORD;
   VerInfo:      Pointer;
   VerValueSize: DWORD;
   VerValue:     PVSFixedFileInfo;
   Dummy:        DWORD;
   ExeName:      string;

   iLastError: DWord;
begin
   try
      ExeName := Application.ExeName;
      Application.ProcessMessages;

      VerInfoSize := GetFileVersionInfoSize(PChar(ExeName), Dummy);
      if VerInfoSize > 0 then
      begin
         try
            GetMem(VerInfo, VerInfoSize);
            if GetFileVersionInfo(PChar(ExeName), 0, VerInfoSize, VerInfo) then
            begin
               if VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize) then
                  with VerValue^ do
                     Result := Format('%d.%d.%d.%d', [
                               HiWord(dwFileVersionMS), //Major
                               LoWord(dwFileVersionMS), //Minor
                               HiWord(dwFileVersionLS), //Release
                               LoWord(dwFileVersionLS)]); //Build

            end
            else
            begin
               iLastError := GetLastError;
               Result := Format('GetFileVersionInfo failed: (%d) %s',
                              [iLastError, SysErrorMessage(iLastError)]);
            end;
         finally
            FreeMem(VerInfo, VerInfoSize);
         end;
      end
      else
      begin
         iLastError := GetLastError;
         Result := Format('GetFileVersionInfo failed: (%d) %s',
                           [iLastError, SysErrorMessage(iLastError)]);
      end;
   finally
//      SplashScreen.Close;
//      SplashScreen.Free;
   end;
end;


procedure TdmAxiom.PrecImagesLoad;
var
  TempFileName: string;
  fsTempFile: TFileStream;
  dsImage: TzDecompressionStream;
  msCompressedImage: TMemoryStream;
  bmPrecImage, bmStdImage: TBitmap;
begin
  (* save the first image to be added later *)
  bmStdImage := TBitmap.Create;
  ilPrecCategory.GetBitmap(0, bmStdImage);
  (* parse through the IMAGELIST table and extract compressed images into ilPrecCategory *)
  with qryImageList do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM IMAGELIST');
    SQL.Add('WHERE OWNER = ''PRECCATEGORY''');
    SQL.Add('ORDER BY IMAGEINDEX');
    Open;
    msCompressedImage := TMemoryStream.Create;
    bmPrecImage := TBitmap.Create;
    try
       //PJB
      //TempFileName := dmAffinity.SysInfo.TempPath+'$Affinity\~image.bmp';
{
      if not DirectoryExists(ExtractFilePath(TempFileName)) then
      begin
        if not CreateDir(ExtractFilePath(TempFileName)) then
          raise Exception.Create('Cannot create '+ExtractFilePath(TempFileName));
      end;
}
      try
        ilPrecCategory.Clear;
        ilPrecCategory.Add(bmStdImage, nil);
        while not Eof do
        begin
          TBlobField(FieldByName('IMAGE')).SaveToStream(msCompressedImage);
          dsImage := TzDecompressionStream.Create(msCompressedImage, 32768);
          try
            fsTempFile := TFileStream.Create(TempFileName, fmCreate or fmShareDenyWrite);
            try
              fsTempFile.CopyFrom(dsImage, 0);
            finally
              fsTempFile.Free;
            end;
            bmPrecImage.LoadFromFile(TempFileName);
            bmPrecImage.Transparent := True;
            bmPrecImage.TransparentMode := tmAuto;
            ilPrecCategory.Add(bmPrecImage, nil);
          finally
            dsImage.Free;
            bmPrecImage.FreeImage;
            msCompressedImage.Clear;
          end;
          Next;
        end;
      finally
        bmPrecImage.Free;
        msCompressedImage.Free;
        DeleteFile(TempFileName);
        bmStdImage.Free;
      end;
    except
      on E:Exception do
        MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
    close;
  end;

end;

procedure TdmAxiom.SecurityLoad;
var
  PanelCaption: string;
begin
  //rb
  //qryEmpTypeSecurityWan.ParamByName('EmpType').AsString := FUserType;
  //qryEmpTypeSecurityWan.Open;
  PanelCaption := frmDesktop.StatusBar.Panels[0].Text;
  frmDesktop.StatusBar.Panels[0].Text := 'Loading security settings...';
  
  FSecurity.Accounts.Lock:= Secure('Accounts.Lock');
  FSecurity.Accounts.UnLock:= Secure('Accounts.UnLock');
  FSecurity.Accounts.Rollup:= Secure('Accounts.Rollup');
  FSecurity.Accounts.UnRoll:= Secure('Accounts.Unroll');

  FSecurity.Bill.Access := Secure('Bill');
  FSecurity.Bill.AddGST := Secure('Bill.AddGST');
  FSecurity.Bill.BillCreditNoteReversal := Secure('Bill.BillCreditNoteReverse');
  FSecurity.Bill.Create := Secure('Bill.Create');
  FSecurity.Bill.ConfirmCreate := Secure('Bill.ConfirmCreate');
  FSecurity.Bill.Delete := Secure('Bill.Delete');
//  FSecurity.Bill.DraftDelete := Secure('Bill.DraftDelete');
  FSecurity.Bill.Edit := Secure('Bill.Edit');

  FSecurity.Bill.LockAmounts.ChangeFees               := Secure('Bill.LockAmounts.ChangeFees');
  FSecurity.Bill.LockAmounts.ChangeDisbursments       := Secure('Bill.LockAmounts.ChangeDisbursments');
  FSecurity.Bill.LockAmounts.ChangeChequeReq          := Secure('Bill.LockAmounts.ChangeChequeReq');
  FSecurity.Bill.LockAmounts.ChangeUnpaidCreditors    := Secure('Bill.LockAmounts.ChangeUnpaidCreditors');
  FSecurity.Bill.LockAmounts.ChangeSundrys            := Secure('Bill.LockAmounts.ChangeSundrys');
  FSecurity.Bill.LockAmounts.ChangeTrust              := Secure('Bill.LockAmounts.ChangeTrust');

  FSecurity.Bill.LockTaxAmounts.ChangeFeesTax            := Secure('Bill.LockTaxAmounts.ChangeFeesTax');
  FSecurity.Bill.LockTaxAmounts.ChangeDisbursmentsTax    := Secure('Bill.LockTaxAmounts.ChangeDisbursmentsTax');
  FSecurity.Bill.LockTaxAmounts.ChangeChequeReqTax       := Secure('Bill.LockTaxAmounts.ChangeChequeReqTax');
  FSecurity.Bill.LockTaxAmounts.ChangeUnpaidCreditorsTax := Secure('Bill.LockTaxAmounts.ChangeUnpaidCreditorsTax');
  FSecurity.Bill.LockTaxAmounts.ChangeSundrysTax         := Secure('Bill.LockTaxAmounts.ChangeSundrysTax');

  FSecurity.Bill.Post := Secure('Bill.Post');
  FSecurity.Bill.Reverse := Secure('Bill.Reverse');
  FSecurity.Bill.TrustTransfer := Secure('Bill.TrustTransfer');
  FSecurity.Bill.ChangeBillTo := Secure('Bill.ChangeBillTo');
  FSecurity.Bill.ChangeDispatchedDate := Secure('Bill.Change Dispatched Date');
  FSecurity.Bill.ChangePaymentDueDate := Secure('Bill.Change Payment Due Date');

  FSecurity.Bill.Discount.Edit := Secure('Bill.Discount.Edit');
  FSecurity.Bill.Discount.Remove := Secure('Bill.Discount.Remove');
  FSecurity.Bill.Interest.Create := Secure('Bill.Interest.Create');

  FSecurity.CheqReq.Access := Secure('CheqReq');
  FSecurity.CheqReq.Create := Secure('CheqReq.Create');
  FSecurity.CheqReq.Delete := Secure('CheqReq.Delete');
  FSecurity.CheqReq.Edit := Secure('CheqReq.Edit');

  { Added 8.9.2002 GG}
  FSecurity.CheqReq.History := Secure('CheqReq.History');

  FSecurity.CheqReq.Ledger := Secure('CheqReq.Ledger');
  FSecurity.CheqReq.Funds.Visible := Secure('CheqReq.Funds.Visible');
  FSecurity.CheqReq.Held.Visible := Secure('CheqReq.Held.Visible');
  FSecurity.CheqReq.Bill.Visible := Secure('CheqReq.Bill.Visible');
  FSecurity.CheqReq.Funds.Checked := Secure('CheqReq.Funds.Checked');
  FSecurity.CheqReq.Held.Checked := Secure('CheqReq.Held.Checked');
  FSecurity.CheqReq.Bill.Checked := Secure('CheqReq.Bill.Checked');
  FSecurity.CheqReq.Funds.Disabled := Secure('CheqReq.Funds.Disabled');
  FSecurity.CheqReq.Print := Secure('CheqReq.Print');
  FSecurity.CheqReq.Reverse := Secure('CheqReq.Reverse');
  FSecurity.CheqReq.Authorise := Secure('CheqReq.Authorise');
  FSecurity.CheqReq.ChangeDetails := Secure('CheqReq.ChangeDetails');

  FSecurity.Cheque.Access := Secure('Cheque');
  FSecurity.Cheque.Create := Secure('Cheque.Create');
  FSecurity.Cheque.ForceTally := Secure('Cheque.ForceTally');
  FSecurity.Cheque.Present := Secure('Cheque.Present');
  FSecurity.Cheque.Reverse := Secure('Cheque.Reverse');
  FSecurity.Cheque.ChangeDate := Secure('Cheque.Reverse.ChangeDate');
  FSecurity.Cheque.Recurring := Secure('Cheque.Recurring');

  FSecurity.Client.Access := Secure('Client');
  FSecurity.Client.Create := Secure('Client.Create');
  FSecurity.Client.Delete := Secure('Client.Delete');
  FSecurity.Client.Edit := Secure('Client.Edit');
  FSecurity.Client.Group.Access := Secure('Client.Group');
  FSecurity.Client.Group.Create := Secure('Client.Group.Create');
  FSecurity.Client.Group.Assign := Secure('Client.Group.Assign');
  FSecurity.Client.Notes.Access := Secure('Client.Notes');
  FSecurity.Client.Notes.Create := Secure('Client.Notes.Create');
  FSecurity.Client.Notes.Delete := Secure('Client.Notes.Delete');
  FSecurity.Client.ChangeClientPack := Secure('Client.ChangeClientPack');
  FSecurity.Client.ChangeAllowMatter := Secure('Client.ChangeAllowMatter');

{
  Added 4.12.2002 GG

  Security for Creditor functions
}
  FSecurity.Creditor.Access := Secure('Creditor');
  FSecurity.Creditor.Activate := Secure('Creditor.Activate');
  FSecurity.Creditor.Create := Secure('Creditor.Create');
  FSecurity.Creditor.Delete := Secure('Creditor.Delete');
  FSecurity.Creditor.Edit := Secure('Creditor.Edit');
  FSecurity.Creditor.Merge := Secure('Creditor.Merge');

  FSecurity.Diary.Access := Secure('Diary');
  FSecurity.Diary.Create := Secure('Diary.Create');
  FSecurity.Diary.Delete := Secure('Diary.Delete');
  FSecurity.Diary.Edit := Secure('Diary.Edit');
  FSecurity.Diary.Drag := Secure('Diary.Drag');
  FSecurity.Diary.Jurisdiction.Access := Secure('Diary.Jurisdiction');
  FSecurity.Diary.Jurisdiction.AutoSave := Secure('Diary.Jurisdiction.AutoSave');
  FSecurity.Diary.Jurisdiction.ForceChoice := Secure('Diary.Jurisdiction.ForceChoice');
  FSecurity.Diary.Location.Access := Secure('Diary.Location');
  FSecurity.Diary.Location.AutoSave := Secure('Diary.Location.AutoSave');
  FSecurity.Diary.Location.ForceChoice := Secure('Diary.Location.ForceChoice');

  FSecurity.Employee.Access := Secure('Employee');
  FSecurity.Employee.Create := Secure('Employee.Create');
  FSecurity.Employee.Delete := Secure('Employee.Delete');
  FSecurity.Employee.Department := Secure('Employee.Department');
  FSecurity.Employee.Edit := Secure('Employee.Edit');
  FSecurity.Employee.Password := Secure('Employee.Password');
  FSecurity.Employee.Security := Secure('Employee.Security');
  FSecurity.Employee.EmpType.Access := Secure('Employee.Type');
  FSecurity.Employee.EmpType.Security := Secure('Employee.Type.Security');
  FSecurity.Employee.ChangeEntity := Secure('Employee.ChangeEntity');

  FSecurity.Entity.Access := Secure('Entity');
  FSecurity.Entity.LockDate := Secure('Entity.LockDate');

  FSecurity.Fee.Access := Secure('Fee');
  FSecurity.Fee.Create := Secure('Fee.Create');
  FSecurity.Fee.Delete := Secure('Fee.Delete');
  FSecurity.Fee.Edit := Secure('Fee.Edit');
  FSecurity.Fee.QuickEdit := Secure('Fee.QuickEdit');
  FSecurity.Fee.Discount := Secure('Fee.Discount');

  FSecurity.Invoice.Access := Secure('Invoice');
  FSecurity.Invoice.Create := Secure('Invoice.Create');
  FSecurity.Invoice.CreditNote := Secure('Invoice.CreditNote');
  FSecurity.Invoice.ForceTally := Secure('Invoice.ForceTally');
  FSecurity.Invoice.Reverse := Secure('Invoice.Reverse');
  FSecurity.Invoice.ChangeDate := Secure('Invoice.Reverse.ChangeDate');

  FSecurity.Journal.Access := Secure('Journal');
  FSecurity.Journal.Create := Secure('Journal.Create');
  FSecurity.Journal.Reverse := Secure('Journal.Reverse');
  FSecurity.Journal.ChangeDate := Secure('Journal.Reverse.ChangeDate');

  FSecurity.Ledger.Access := Secure('Ledger');
  FSecurity.Ledger.Create := Secure('Ledger.Create');
  FSecurity.Ledger.Delete := Secure('Ledger.Delete');
  FSecurity.Ledger.Edit := Secure('Ledger.Edit');
  FSecurity.Ledger.JournalSplit := Secure('Ledger.JournalSplit');

  FSecurity.Matter.Access := Secure('Matter');
  FSecurity.Matter.AllowGeneralCredit := Secure('Matter.AllowGeneralCredit');
  FSecurity.Matter.Archive := Secure('Matter.Archive');
  FSecurity.Matter.Associate := Secure('Matter.Associate');
  FSecurity.Matter.AllowEditMatterNo := Secure('Matter.AllowEditMatterNo');
  FSecurity.Matter.Close := Secure('Matter.Close');
  FSecurity.Matter.Create := Secure('Matter.Create');
  FSecurity.Matter.DisbDebtJournal := Secure('Matter.DisbDebtJournal');
  FSecurity.Matter.Edit := Secure('Matter.Edit');
  FSecurity.Matter.FeeAnalysis := Secure('Matter.FeeAnalysis');
  FSecurity.Matter.Reopen := Secure('Matter.Reopen');
  FSecurity.Matter.HideStaticOP := Secure('Matter.HideStaticOP');
  FSecurity.Matter.CanChangeDebtorStatus := Secure('Matter.CanChangeDebtorStatus');
  FSecurity.Matter.Tabs.Access := Secure('Matter.Tabs');
  FSecurity.Matter.Tabs.Balances := Secure('Matter.Tabs.Balances');
  FSecurity.Matter.Tabs.Contacts := Secure('Matter.Tabs.Contacts');
  FSecurity.Matter.Tabs.Data := Secure('Matter.Tabs.Data');
  FSecurity.Matter.Tabs.Bills := Secure('Matter.Tabs.Bills');
  FSecurity.Matter.Tabs.Receipts := Secure('Matter.Tabs.Receipts');
  FSecurity.Matter.Tabs.Graphs := Secure('Matter.Tabs.Graphs');
  FSecurity.Matter.Tabs.Diary := Secure('Matter.Tabs.Diary');
  FSecurity.Matter.Tabs.Documents := Secure('Matter.Tabs.Documents');
  FSecurity.Matter.Tabs.WorkFlow := Secure('Matter.Tabs.WorkFlow');
  FSecurity.Matter.Tabs.CriticalDates := Secure('Matter.Tabs.Critical Dates');
  FSecurity.Matter.Tabs.Ledgers := Secure('Matter.Tabs.Ledgers');
  FSecurity.Matter.Tabs.Transit := Secure('Matter.Tabs.Transit');
  FSecurity.Matter.Tabs.OtherNames := Secure('Matter.Tabs.Other Names');
  FSecurity.Matter.Tabs.Tasks := Secure('Matter.Tabs.Tasks');
  FSecurity.Matter.Tabs.Project := Secure('Matter.Tabs.Project');
  FSecurity.Matter.Tabs.AuthorAudit := Secure('Matter.Tabs.AuthorAudit');

  FSecurity.Matter.SecureDocs := Secure('Matter.SecureDocuments');
  FSecurity.Matter.Delete := Secure('Matter.Delete');
  FSecurity.Matter.Prospective := Secure('Matter.Prospective');

  FSecurity.Matter.Carriage.CanChangePartner := Secure('Matter.Carriage.CanChangePartner');
  FSecurity.Matter.Carriage.CanChangeController := Secure('Matter.Carriage.CanChangeController');
  FSecurity.Matter.Carriage.CanChangeAuthor := Secure('Matter.Carriage.CanChangeAuthor');
  FSecurity.Matter.Carriage.CanChangeOperator := Secure('Matter.Carriage.CanChangeOperator');
  FSecurity.Matter.Carriage.CanChangeParalegal := Secure('Matter.Carriage.CanChangeParalegal');

  FSecurity.Matter.Debtors.CanDeleteDebtorNotes := Secure('Matter.Debtors.Notes.Delete');

  FSecurity.Matter.CanDeleteArchiveBox.CanDeleteBox := Secure('Matter.Archive.CanDeleteBox');

  Fsecurity.Matter.ControlledMonies.CanAdd := Secure('Matter.ControlledMonies.CanAddAccount');
  Fsecurity.Matter.ControlledMonies.CanEdit := Secure('Matter.ControlledMonies.CanEditAccount');

  Fsecurity.Matter.ControlledMonies.CanAddDeposit := Secure('Matter.ControlledMonies.CanAddDeposit');
  Fsecurity.Matter.ControlledMonies.CanAddWithdrawl := Secure('Matter.ControlledMonies.CanAddWithdrawl');
  Fsecurity.Matter.ControlledMonies.CanAddCharges := Secure('Matter.ControlledMonies.CanAddCharges');
  Fsecurity.Matter.ControlledMonies.CanReverseDeposit := Secure('Matter.ControlledMonies.CanAddDeposit');


  FSecurity.Phonebook.Access := Secure('Phonebook');
  FSecurity.Phonebook.Archive := Secure('Phonebook.Archive');
  FSecurity.Phonebook.Create := Secure('Phonebook.Create');
  FSecurity.Phonebook.Delete := Secure('Phonebook.Delete');
  FSecurity.Phonebook.Edit := Secure('Phonebook.Edit');
  FSecurity.Phonebook.Group.Create := Secure('Phonebook.Group.Create');
  FSecurity.Phonebook.Group.Assign := Secure('Phonebook.Group.Assign');
  FSecurity.Phonebook.Link := Secure('Phonebook.Link');
  FSecurity.Phonebook.Tabs.Access := Secure('Phonebook.Tabs');
  FSecurity.Phonebook.Tabs.PhoneInternet := Secure('Phonebook.Tabs.Phone/Internet');
  FSecurity.Phonebook.Tabs.Additional := Secure('Phonebook.Tabs.Additional');
  FSecurity.Phonebook.Tabs.Notes := Secure('Phonebook.Tabs.Notes');
  FSecurity.Phonebook.Tabs.CustomData := Secure('Phonebook.Tabs.Custom Data');
  FSecurity.Phonebook.Tabs.MatterData := Secure('Phonebook.Tabs.Matter Data');
  FSecurity.Phonebook.Tabs.OtherName := Secure('Phonebook.Tabs.OtherName');
  FSecurity.Phonebook.Tabs.Events := Secure('Phonebook.Tabs.Events');
  FSecurity.Phonebook.Tabs.Marketing := Secure('Phonebook.Tabs.Marketing');
  FSecurity.Phonebook.Tabs.Documents := Secure('Phonebook.Tabs.Documents');
  FSecurity.Phonebook.Tabs.MatterParty := Secure('Phonebbok.Tabs.Matter Party');
  FSecurity.Phonebook.Prospective := Secure('Phonebook.Prospective');

  FSecurity.Precedent.Access := Secure('Precedent');
  FSecurity.Precedent.Create := Secure('Precedent.Create');
  FSecurity.Precedent.Delete := Secure('Precedent.Delete');
  FSecurity.Precedent.Edit := Secure('Precedent.Edit');

  FSecurity.PriorPeriodTransactions.Post:= Secure('Prior-PeriodTransactions');

  FSecurity.Receipt.Access := Secure('Receipt');
  FSecurity.Receipt.Clear := Secure('Receipt.Clear');
  FSecurity.Receipt.Create := Secure('Receipt.Create');
  FSecurity.Receipt.ForceTally := Secure('Receipt.ForceTally');
  FSecurity.Receipt.ForbidDisbursements := Secure('Receipt.ForbidDisbursements');
  FSecurity.Receipt.ForbidMatter := Secure('Receipt.ForbidMatter');
  FSecurity.Receipt.Reverse := Secure('Receipt.Reverse');
  FSecurity.Receipt.ChangeDate := Secure('Receipt.Reverse.ChangeDate');
  FSecurity.Receipt.ChangeClearanceDate := Secure('Receipt.ChangeClearanceDate');
  FSecurity.Receipt.Request := Secure('Receipt.Request');

  FSecurity.SafeCustody.Access := Secure('SafeCustody');
  FSecurity.SafeCustody.Create := Secure('SafeCustody.Create');
  FSecurity.SafeCustody.Delete := Secure('SafeCustody.Delete');
  FSecurity.SafeCustody.Edit := Secure('SafeCustody.Edit');
  FSecurity.SafeCustody.Attachment := Secure('SafeCustody.Attachment');
  FSecurity.SafeCustody.AddAttachment := Secure('SafeCustody.Attachment.Add');
  FSecurity.SafeCustody.DeleteAttachment := Secure('SafeCustody.Attachment.Delete');

  FSecurity.Sundry.Access := Secure('Sundry');
  FSecurity.Sundry.Create := Secure('Sundry.Create');
  FSecurity.Sundry.Delete := Secure('Sundry.Delete');
  FSecurity.Sundry.Edit := Secure('Sundry.Edit');

  FSecurity.Transit.Access := Secure('Transit');
  FSecurity.Transit.Create := Secure('Transit.Create');

  FSecurity.System.Access := Secure('System');
//  FSecurity.System.SQLTrace := Secure('System.SQLTrace');
  FSecurity.System.GridColumnCustomizing := Secure('System.GridColumnCustomizing');
  FSecurity.System. BHLSupportTab := Secure('System.BHLSupportTab');
  FSecurity.System.BrowserTab := Secure('System.BrowserTab');
  FSecurity.System.SupportButton := Secure('System.SupportButton');

  // debtor task security

  FSecurity.CollectionsManagement.CreateAction := Secure('CollectionsManagement.Action.Create');
  FSecurity.CollectionsManagement.EditAction := Secure('CollectionsManagement.Action.Edit');
  FSecurity.CollectionsManagement.CreateTemplate := Secure('CollectionsManagement.Template.Create');
  FSecurity.CollectionsManagement.EditTemplate := Secure('CollectionsManagement.Template.Edit');;
  FSecurity.CollectionsManagement.CreateTemplateItem := Secure('CollectionsManagement.TemplateItem.Create');
  FSecurity.CollectionsManagement.EditTemplateItem := Secure('CollectionsManagement.TemplateItem.Edit');

  FSecurity.CollectionsManagement.ChangeTemplate := Secure('CollectionsManagement.Task.ChangeTemplate');
  FSecurity.CollectionsManagement.CreateTask := Secure('CollectionsManagement.Task.Create');
  FSecurity.CollectionsManagement.EditTask := Secure('CollectionsManagement.Task.Edit');

  FSecurity.CollectionsManagement.MergeTask := Secure('CollectionsManagement.Due.Merge');
  FSecurity.CollectionsManagement.ProcessTask := Secure('CollectionsManagement.Due.Process');
  FSecurity.ScorecardIndividual.ViewEmployees := Secure('ScorecardIndividual.ViewEmployees');

  FSecurity.ScorecardIndividual.ShowDebtorsTab := Secure('ScorecardIndividual.ShowDebtorsTab');
  FSecurity.ScorecardIndividual.ShowMatterProfitability := Secure('ScorecardIndividual.ShowMatterProfitability');
  FSecurity.ScorecardIndividual.ShowLockUpTab := Secure('ScorecardIndividual.ShowLockUpTab');
  FSecurity.ScorecardIndividual.ShowFeesReceived := Secure('ScorecardIndividual.ShowFeesReceived');

  FSecurity.Reports.Add := Secure('Reports.AddReport');

  FSecurity.Trust.PasswdOverdraw := Secure('Trust.Password Overdraw');

  FSecurity.Workflow.ChangeCriticalDate := Secure('Workflow.Change Critical Date');

  FSecurity.Document.Access := Secure('Documents');
  FSecurity.Document.DeleteDocument := Secure('Documents.Delete');
  FSecurity.Document.DeleteFile := Secure('Documents.RemoveFile');

  FSecurity.WIP.WriteOff := Secure('Fee');
  FSecurity.WIP.WriteOff := Secure('Fee.WriteOff');

  FSecurity.ReceiptReq.Access := Secure('ReceiptRequest');
  FSecurity.ReceiptReq.Create := Secure('ReceiptRequest.Create');
  FSecurity.ReceiptReq.Delete := Secure('ReceiptRequest.Delete');
  FSecurity.ReceiptReq.Convert := Secure('ReceiptRequest.Convert');
  FSecurity.ReceiptReq.Edit := Secure('ReceiptRequest.Edit');

  frmDesktop.StatusBar.Panels[0].Text := PanelCaption;

  //rb
  //qryEmpTypeSecurityWAN.Close;
end;

function TdmAxiom.Secure(sItem: string): boolean;
var
  bSecureResult: boolean;
begin
  Result := False;
  bSecureResult := False;
  dmTableCache.LoadVirtualTable(dmTableCache.vtEmpTypeSecurity,'EMPTYPESECURITY','EMPTYPE = ' + QuotedStr(FUserType));
  if (dmTableCache.VGetInteger(dmTableCache.vtEmpTypeSecurity,'ITEM',sItem,'ENABLED') = 1) then
    bSecureResult := True;

  with dmTableCache do
  begin
    LoadVirtualTable(vtEmpSecurity,'EMPSECURITY','EMP = ' + QuotedStr(FUserID));
    if (not vtEmpSecurity.IsEmpty) then
    begin
      if VGetInteger(vtEmpSecurity,'ITEM',sItem,'ENABLED') = 1 then
        bSecureResult := True;
    end;
  end;

  Result := bSecureResult;
end;

procedure TdmAxiom.DataModuleCreate(Sender: TObject);
begin
   strEmployees := TStringList.Create;
   strPartners := TStringList.Create;
   strAuthors := TStringList.Create;
   FDefaultTax := '';
   FCode := 'BARRY';
  (* a high security level function *)
  //FAdminMode := (SysInfo.Username = 'Christopher Cogan');
   QueryTracing := False;
   QueryTolerance := 1;
   FSqlLogFile := ExtractFilePath(ParamStr(0)) + 'sql.log';
//   TSSpellChecker.Dictionaries[2].Load();
end;

// dw 19/9/2018 cleanup Datamodule string list
procedure TdmAxiom.DataModuleDestroy(Sender: TObject);
begin
    FreeandNil(strEmployees);
    FreeandNil(strPartners);
    FreeandNil(strAuthors);
//    TdxUserSpellCheckerDictionary(TSSpellChecker).DictionaryPath := '.\Spelling\USER_' + dmAxiom.UserID + '.DIC';
//    TdxUserSpellCheckerDictionary(TSSpellChecker).Options := TdxUserSpellCheckerDictionary(TSSpellChecker).Options - [udSaveOnUnload];
//    TSSpellChecker.UnloadDictionaries;
end;

procedure TdmAxiom.uniInsightConnectChange(Sender: TObject;
  Connected: Boolean);
begin
  (* does not work at Ellisons because of the 7.2 client *)
  if Connected then
  begin
//    if (uniInsight.OracleVersion >= '8.0.5') and (uniInsight.OCICallStyle = OCI80) then
      PrecImagesLoad;
  end;
end;

procedure TdmAxiom.uniInsightConnectionLost(Sender: TObject;
  Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin
   RetryMode := rmReconnectExecute;
end;

procedure TdmAxiom.oalAffinityEvent(Sender: TObject; Event,
  Message: String);

begin
  if Event = 'SECURITY_UPDATE' then
    SecurityLoad
end;

procedure TdmAxiom.oalAffinityTimeOut(Sender: TObject;
  var Continue: Boolean);
begin
  Continue := True;
end;

function TdmAxiom.GetRunningIde : boolean;
begin
{
  Modified 25.10.2002 GG

  Removed compiler hint and cleaned up code
  if (FindWindow('TAppBuilder', Nil) <> 0) THEN
    FRunningIde := True
  else
    FRunningIde := False;
}
  result:= (FindWindow('TAppBuilder', Nil) <> 0);
end;

function TdmAxiom.GetSeqNums(sSequence : string) : string;
var
  sTmp : string;
begin
  sTmp := '';
  with qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ' + sSequence + '.CURRVAL AS SQNC FROM DUAL');
      Open;
      if RecordCount > 0 then
        sTmp := FieldbyName('SQNC').AsString;
      Close;
    end;
  GetSeqNums := sTmp;
end;

function TdmAxiom.GetSeqNumber(sSequence : string) : string;
var
  sTmp : string;
begin
  sTmp := '';
  with qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ' + sSequence + '.NEXTVAL AS SQNC FROM DUAL');
      Open;
      if RecordCount > 0 then
        sTmp := FieldbyName('SQNC').AsString;
      Close;
    end;
  GetSeqNumber := sTmp;
end;

function TdmAxiom.GetLockDate: TDate;
begin
  qryEntityLockDate.ParamByName('ENTITY').AsString:= Entity;
  qryEntityLockDate.Open;
  result:= Trunc(qryEntityLockDate.FieldByName('LOCKDATE').AsDateTime);
  qryEntityLockDate.Close;
end;

function TdmAxiom.GetUserName : String;
begin
  Result := TableString('EMPLOYEE', 'CODE', FUserID, 'NAME');
end;

procedure TdmAxiom.osmAxiomSQL(Sender: TObject; Text: String;
  Flag: TDATraceFlag);
var
  t: TextFile;
begin
  //store the last SQL
  if Flag = tfqExecute then
    LastSQL := Text;

  // MGD added sql tracing, logs to a file if that file exists..
  if(FileExists(FSqlLogFile)) then
  begin
    AssignFile(t,FSqlLogFile);
    Append(t);
    WriteLn(t,'--------------------------------------------------------------------------------'#13#10,DateTimeToStr(Now()),#13#10#13#10, Text);
    CloseFile(t);
  end;
end;

procedure TdmAxiom.uniInsightError(Sender: TObject; E: EDAError;
  var Fail: Boolean);
var
   F: text;
   LPath,
   LTmp,
   FileExt,
   NewLogNumber: string;
   LfrmPassword: TfrmPassword;
   FileHandle,
   x: Integer;
   FileSize: DWord;
   LList: TStringDynArray;
begin
  LFrmPassword := nil;
   try
      Fail := False;
      LTmp := '';
       //write the error message to file
      try
         if FileExists(ExtractFilePath(Application.EXEName) + 'Insight.INI') then
            FINIstartup := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'Insight.INI')
         else
            FINIstartup := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'Axiom.INI');

         LTmp := FINIstartup.ReadString('Main', 'LogPath', '');
         if (LTmp <> '') then
            LPath := LTmp + '\'
         else
            LPath := IncludeTrailingBackslash(ExtractFilePath(Application.EXEName));
         if DirectoryExists(lPath) then
            AssignFile(F, LPath + 'ORRERROR.LOG')
         else
         begin
            LPath := IncludeTrailingBackslash(ExtractFilePath(Application.ExeName));
            AssignFile(F, LPath + 'ORRERROR.LOG');
         end;

         if (not FileExists(LPath + 'ORRERROR.LOG')) then
         begin
            try
               Rewrite(F);
            except
               on EFCreateError do
                  EFCreateError.CreateFmt('%s',['Insight Error: '+ #13#10 + 'There was an error trying to create/open ORRERROR.LOG. Please ensure you have read/write access to the directory and file.']);
               on EReadError do
                  EReadError.Create('Insight Error: '+#13#10 + 'There was an error trying to read from ORRERROR.LOG.');
               on EWriteError do
                  EWriteError.Create('Insight Error: '+#13#10 + 'There was an error trying to write to ORRERROR.LOG.');
            end;
         end;

         try
            Append(F);
         except
            on EFCreateError do
               EFCreateError.CreateFmt('%s',['Insight Error: '+ #13#10 + 'There was an error trying to create/open ORRERROR.LOG. Please ensure you have read/write access to the directory and file.']);
            on EReadError do
               EReadError.Create('Insight Error: '+#13#10 + 'There was an error trying to read from ORRERROR.LOG.');
            on EWriteError do
               EWriteError.Create('Insight Error: '+#13#10 + 'There was an error trying to write to ORRERROR.LOG.');
         end;

         WriteLn(F,UserID + ' ' +  E.Message + ' ' + ' ' + LastSQL + ' ' + DateTimeToStr(Now));

         CloseFile(F);

         FileHandle := FileOpen(LPath + 'ORRERROR.LOG', fmOpenRead);
         FileSize := 0;
         try
            FileSize := GetFileSize(FileHandle, nil);
         finally
            NewLogNumber := '0';
            FileClose(FileHandle);
            if (FileSize > LOGFILESIZE) then
            begin
               NewLogNumber := '';
//               LastWrittenFile := FindLastWrittenFile(lPath, 'ORRERROR.LOG*');
               LList := TDirectory.GetFiles(lPath, 'ORRERROR.LOG*', TSearchOption.soTopDirectoryOnly);
               x:= Length(LList);

               RenameFile(LPath + 'ORRERROR.LOG', LPath + 'ORRERROR.LOG'+ IntToStr(x));
            end;
         end;
      except
         on EFCreateError do
            EFCreateError.CreateFmt('%s',['Insight Error: '+ #13#10 + 'There was an error trying to create/open ORRERROR.LOG. Please ensure you have read/write access to the directory and file.']);
         on EReadError do
            EReadError.Create('Insight Error: '+#13#10 + 'There was an error trying to read from ORRERROR.LOG.');
         on EWriteError do
            EWriteError.Create('Insight Error: '+#13#10 + 'There was an error trying to write to ORRERROR.LOG.');
      end;

       // now also display error message
      if ((not uniInsight.Connected) and (E.ErrorCode = 1)) then
         raise EDAError.Create(1,E.Message +'.' +#13#10 +' Database and/or Listener is not running on server.')
      else
        ShowOraError := True;

      if ShowOraError then
      begin
         case E.ErrorCode of
            // unique constraint
            1    :
                 raise EDAError.Create(1,E.Message + 'Unique Id has already been used in the database table ');
            2291 :
                 raise EDAError.Create(2291,E.Message + 'Parent record not found.');
            2292 :
                 raise EDAError.Create(2292,'Cannot delete this record, it is used by other records');
            942  :
                 raise EDAError.Create(942,E.Message + 'Insight tried to read from a table that is not in the database, please contact support');
            904  :
                 raise EDAError.Create(904,E.Message + 'Column does not exist ');
            3113 :
                 begin
                 //raise EDAError.Create(3113,E.Message + 'Insight is no longer connected to the database.');
                    Fail := False;
                    uniInsight.Connect;
                 end;
            3114 :
                 raise EDAError.Create(3114,E.Message + 'Insight is not connected to the database.');
            2290 :
                 raise EDAError.Create(2290,E.Message + 'You have tried to enter data that breaks constraint condition in the database.');
            1017 :
                 raise EDAError.Create(1017,'Invalid user name/password. Please try again.');
            1401:
                 raise EDAError.Create(1401,'Value being inserted is to large.');
            12541:
                 raise EDAError.Create(12541,'Database Listener is not responding.  Please call the Database Administrator.');
            12571:
                 Fail := False;
            1086:
                 Fail := False;
            20003: begin
                 raise EDAError.Create(20003,'Object is Invalid.');
//                     Fail := False;
//                     ScriptRebuildObjects.Execute;
//                     raise EDAError.Create(20003,'There was an error.  Please ty again.'+ #13#10 + 'If error continues, please contact the BHL Insight Help Desk');
                   end;
            12003:
                 Fail := false;
            29902:
                 Fail := false;
            1920 :
                 Fail := false;
            54   :
                 raise EDAError.Create(54,'The system is busy.  Please wait...');
            60   :
                 raise EDAError.Create(60,'The system is busy.  Please wait...');
            28001:
                 begin
                    MessageDlg('Password has expired.  You will need to enter a new password.',mtInformation,[mbOk],0);
                   try
                      with UniConnPasswdReset do
                      begin
                         Disconnect;
                         Server   := uniInsight.Server;
                         UserName := 'axiom';
                         Password := 'axiom';
                         Connect;
                      end;

                      Fail := false;
                      LfrmPassword := TfrmPassword.Create(Self);

                      LfrmPassword.qryPassword.Connection := UniConnPasswdReset;
                      procAlterUser.Connection := UniConnPasswdReset;

                      LfrmPassword.AUser := uniInsight.Username;
                      LfrmPassword.ShowModal;
                   finally
                      LfrmPassword.Free;
                      UniConnPasswdReset.Disconnect;
                      procAlterUser.Connection := uniInsight;
                   end;
                 end;
            20000 :
                  Fail := false;
            25408 :
                  Fail := false;
         else
            MessageDlg('Insight Error:'#13#10 + e.Message, mtError, [mbOK], 0);
         end;
      end;
   except
       on e: Exception do
         begin
           MessageDlg('Insight Error: '#13#10 + e.Message, mtError, [mbOK], 0);
         end;
       on e: EAbort do DoNothing;  // lets do nothing
       on e: EAccessViolation do MessageDlg( 'Error - ' + Win32Error(), mtError, [mbOK], 0);
   end;
end;

procedure TdmAxiom.DoNothing;
begin
//function stub only.  here to trap EAbort errors and swallow them
end;

procedure TdmAxiom.loadGlComponent;
begin
   if glComponentReg <> nil then
      glComponentReg.Free;
   glComponentReg := TglComponentSetup.init(Entity, uniInsight);

end;

function TdmAxiom.getGlComponents : TglComponentSetup;
begin
    if glComponentReg = nil then
        loadGlComponent;

    getGlComponents := glComponentReg;
end;

function TdmAxiom.GetDefaultBank: string;
var
   sTmp : string;
begin
   sTmp := '';
   with qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DEFAULT_BANK FROM ENTITY WHERE CODE = ' + QuotedStr(dmAxiom.Entity));
      Open;
      sTmp := FieldbyName('DEFAULT_BANK').AsString;
      Close;
   end;
   GetDefaultBank := sTmp;
end;

function TdmAxiom.GetDefaultTrustBank: string;
var
   sTmp : string;
begin
   sTmp := '';
   with qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ACCT FROM BANK WHERE TRUST = ''T'' AND NVL(DEFAULT_BANK,''Y'') = ''Y'' AND ENTITY = ' + QuotedStr(dmAxiom.Entity));
      Open;
      sTmp := FieldbyName('ACCT').AsString;
      Close;
   end;
   GetDefaultTrustBank := sTmp;
end;

function TdmAxiom.GetMatLabel: string;
begin
  // If we haven't loaded it yet, load it
  if FMatLabel = '' then
    FMatLabel := SettingLoadString('MATTERLABEL', 'MATTERFILE');
  // If they don't have one set, default it
  if FMatLabel = '' then
    FMatLabel := 'MATTERLABEL';
  Result := FMatLabel;
end;

procedure TdmAxiom.SetMatLabel(Value: string);
begin
   FMatLabel := Value;
   SettingSave('MATTERLABEL', 'MATTERFILE', Value);
end;

function TdmAxiom.GetMatLabelPath: string;
begin
  // If we haven't loaded it yet, load it
  if FMatLabelPath = '' then
    FMatLabelPath := SettingLoadString('MATTERLABEL', 'MATTERFILEPATH');
  // If they don't have one set, default it
  if FMatLabelPath = '' then
    FMatLabelPath := copy(ExtractFilePath(Application.EXEName),1,length(ExtractFilePath(Application.EXEName))-1) ;
  Result := FMatLabelPath;
end;

procedure TdmAxiom.SetMatLabelPath(Value: string);
begin
   FMatLabelPath := Value;
   SettingSave('MATTERLABEL', 'MATTERFILEPATH', Value);
end;

function TdmAxiom.GetMatLabelFileName: string;
begin
  // If we haven't loaded it yet, load it
  if FMatLabelFileName = '' then
    FMatLabelFileName := SettingLoadString('MATTERLABEL', 'MATTERLABELFILENAME');
  // If they don't have one set, default it
  if FMatLabelFileName = '' then
    FMatLabelFileName := 'LABEL.DOC';
  Result := FMatLabelFileName;
end;

procedure TdmAxiom.SetMatTemplateName(Value: string);
begin
   FMatTemplateName := Value;
   SettingSave('MATTERLABEL', 'MATTERLABELTEMPLATE', Value);
end;

function TdmAxiom.GetMatTemplateName: string;
begin
  // If we haven't loaded it yet, load it
  if FMatTemplateName = '' then
    FMatTemplateName := SettingLoadString('MATTERLABEL', 'MATTERLABELTEMPLATE');
  // If they don't have one set, default it
  if FMatTemplateName = '' then
    FMatTemplateName := '7171';
  Result := FMatTemplateName;
end;

procedure TdmAxiom.SetMatLabelFileName(Value: string);
begin
   FMatLabelFileName := Value;
   SettingSave('MATTERLABEL', 'MATTERLABELFILENAME', Value);
end;

function TdmAxiom.GetDefaultBankName: string;
var
   sTmp, DefBank : string;
begin
   sTmp := '';
   DefBank := dmAxiom.DefaultBank;
   with qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT BANK_ABBREV FROM BANK WHERE ACCT = :ACCT');
      ParamByName('ACCT').AsString := DefBank;
      Open;
      sTmp := FieldbyName('BANK_ABBREV').AsString;
      Close;
   end;
   GetDefaultBankName := sTmp;
end;


function TdmAxiom.roundCurrency(iIn : Currency) : Currency;
begin
     roundCurrency := round(iIn * 100)/100;
end;

procedure TdmAxiom.UpdateSubBills(iNmemo : integer);
var
   cTotalFees,cTotalDisb,cTotalSund,cTotalAntd,cTotalUpCred : Currency;
   cTotalFeesTax,cTotalDisbTax,cTotalSundTax,cTotalAntdTax,cTotalUpCredTax,cTotalTax : Currency;
   cUnallocDisb,cUnallocDisbTax : Currency;
   cAllocDisb,cAllocDisbTax : Currency;
   cPercent : double;

   cFeePost,cFeePostCount,cFeePostTax,cFeePostTaxCount : Currency;
   cSundPost,cSundPostCount,cSundPostTax,cSundPostTaxCount : Currency;
   cAntdPost,cAntdPostCount,cAntdPostTax,cAntdPostTaxCount : Currency;
   cUpCredPost,cUpCredPostCount,cUpCredPostTax,cUpCredPostTaxCount : Currency;
   cDisbPost,cDisbPostCount,cDisbPostTax,cDisbPostTaxCount : Currency;

   roundBookmark : TBookmark;

begin
 //
   qryInvoice.Close;
   qryInvoice.SQL.Clear;
   qryInvoice.SQL.Add('SELECT * ');
   qryInvoice.SQL.Add('FROM NMEMO');
   qryInvoice.SQL.Add('WHERE NMEMO = :NMEMO');
   qryInvoice.ParamByName('NMEMO').AsInteger := iNmemo;
   qryInvoice.open;

   cTotalFees := qryInvoice.fieldByName('FEES').AsCurrency;
   cTotalDisb := qryInvoice.fieldByName('DISB').AsCurrency;
   cTotalSund := qryInvoice.fieldByName('SUND').AsCurrency;
   cTotalAntd := qryInvoice.fieldByName('ANTD').AsCurrency;
   cTotalUpCred := qryInvoice.fieldByName('UPCRED').AsCurrency;

   cTotalFeesTax := qryInvoice.fieldByName('FEESTAX').AsCurrency;
   cTotalDisbTax := qryInvoice.fieldByName('DISBTAX').AsCurrency;
   cTotalSundTax := qryInvoice.fieldByName('SUNDTAX').AsCurrency;
   cTotalAntdTax := qryInvoice.fieldByName('ANTDTAX').AsCurrency;
   cTotalUpCredTax := qryInvoice.fieldByName('UPCREDTAX').AsCurrency;
   cTotalTax := qryInvoice.fieldByName('TAX').AsCurrency;
   qryInvoice.Close;

   qryUnAllocDisb.close;
   qryUnAllocDisb.ParamByName('NMEMO').AsInteger := iNmemo;
   qryUnAllocDisb.open;
   cUnallocDisb := qryUnAllocDisb.fieldByName('AMOUNT').AsCurrency;
   cUnallocDisbTax := qryUnAllocDisb.fieldByName('TAX').AsCurrency;
   qryUnAllocDisb.Close;
   
{   if (cUnallocDisbTax = 0) and (cUnallocDisb <> 0) then
   begin
      qryAllocDisbsTax.Close;
      qryAllocDisbsTax.ParamByName('NMEMO').AsInteger := iNmemo;
      qryAllocDisbsTax.open;
      cUnallocDisbTax := CalcTax(qryAllocDisbsTax.fieldByName('AMOUNT').AsCurrency, 'ALLOC',
                                 qryInvoice.FieldByName('FILEID').AsString,
                                 qryInvoice.FieldByName('NMEMO').AsString,
                                 qryInvoice.FieldByName('NMATTER').AsString,
                                 DefaultTax, qryInvoice.FieldByName('INTERIM_DATE').AsDateTime,
                                 qryInvoice.FieldByName('DISPATCHED').AsDateTime);
      qryAllocDisbsTax.Close;
   end;
}
   qrySubBills.Close;
   qrySubBills.ParamByName('NMEMO').AsInteger := iNmemo;
   qrySubBills.Open;
   qrySubBills.first;

   cFeePostCount := 0;
   cFeePostTaxCount := 0;
   cAntdPostCount := 0;
   cAntdPostTaxCount := 0;
   cSundPostCount := 0;
   cSundPostTaxCount := 0;
   cUpCredPostCount := 0;
   cUpCredPostTaxCount := 0;
   cDisbPostCount := 0;
   cDisbPostTaxCount := 0;
   roundBookmark := nil;

   while not qrySubBills.Eof do
   begin
      if qrySubBills.FieldByName('ROUNDING').AsString = 'Y' then
      begin
          roundBookmark := qrySubBills.GetBookmark;
          qrySubBills.Next;
          continue;
      end;

      qryAllocDisb.close;
      qryAllocDisb.ParamByName('NMEMO').AsInteger := iNmemo;
      qryAllocDisb.ParamByName('NSUBBILL').AsInteger := qrySubBills.fieldByname('NSUBBILL').AsInteger;
      qryAllocDisb.Open;
      cAllocDisb := qryAllocDisb.FieldByName('AMOUNT').AsCurrency;
      cAllocDisbTax := qryAllocDisb.FieldByName('TAX').AsCurrency;
      qryAllocDisb.close;

      if (cUnallocDisbTax = 0) and (cUnallocDisb <> 0) then
      begin
         qryAllocDisbsTax.Close;
         qryAllocDisbsTax.ParamByName('NMEMO').AsInteger := iNmemo;
         qryAllocDisbsTax.ParamByName('NSUBBILL').AsInteger := qrySubBills.fieldByname('NSUBBILL').AsInteger;
         qryAllocDisbsTax.open;
         cUnallocDisbTax := qryAllocDisbsTax.fieldByName('TAX').AsCurrency;
         qryAllocDisbsTax.Close;
      end;

      // now calc the values
      cPercent :=  qrySubBills.fieldByName('percentage').AsFloat;
      cPercent := cPercent / 100;
      // fees
      cFeePost := roundCurrency(cTotalFees * cPercent);
     cFeePostCount := cFeePostCount + cFeePost;
      cFeePostTax := roundCurrency(cTotalFeesTax * cPercent);
      cFeePostTaxCount := cFeePostTaxCount + cFeePostTax;
      // antd
      cAntdPost := roundCurrency(cTotalAntd * cPercent);
      cAntdPostCount := cAntdPostCount + cAntdPost;
      cAntdPostTax := roundCurrency(cTotalAntdTax * cPercent);
      cAntdPostTaxCount := cAntdPostTaxCount + cAntdPostTax;
      // sund
      cSundPost := roundCurrency(cTotalSund * cPercent);
      cSundPostCount := cSundPostCount + cSundPost;
      cSundPostTax := roundCurrency(cTotalSundTax * cPercent);
      cSundPostTaxCount := cSundPostTaxCount + cSundPostTax;
       // upCred
      cUpCredPost := roundCurrency(cTotalUpCred * cPercent);
      cUpCredPostCount := cUpCredPostCount + cUpCredPost;
      cUpCredPostTax := roundCurrency(cTotalUpCredTax * cPercent);
      cUpCredPostTaxCount := cUpCredPostTaxCount + cUpCredPostTax;
      //Disb
      cDisbPost := roundCurrency(cUnallocDisb * cPercent) + cAllocDisb;
      cDisbPostCount := cDisbPostCount + cDisbPost;
      cDisbPostTax := roundCurrency(cUnallocDisbTax * cPercent) + cAllocDisbTax;
      cDisbPostTaxCount := cDisbPostTaxCount + cDisbPostTax;

      // now update the record
      qrySubBills.edit;
      qrySubBills.FieldByName('FEES').AsCurrency := cFeePost;
      qrySubBills.FieldByName('FEESTAX').AsCurrency := cFeePostTax;
      qrySubBills.FieldByName('ANTD').AsCurrency := cAntdPost;
      qrySubBills.FieldByName('ANTDTAX').AsCurrency := cAntdPostTax;
      qrySubBills.FieldByName('SUND').AsCurrency := cSundPost;
      qrySubBills.FieldByName('SUNDTAX').AsCurrency := cSundPostTax;
      qrySubBills.FieldByName('UPCRED').AsCurrency := cUpCredPost;
      qrySubBills.FieldByName('UPCREDTAX').AsCurrency := cUpCredPostTax;
      qrySubBills.FieldByName('DISB').AsCurrency := cDisbPost;
      qrySubBills.FieldByName('DISBTAX').AsCurrency := cDisbPostTax;
      //qrySubBills.FieldByName('TAX').AsCurrency := cFeePostTax + cAntdPostTax + cSundPostTax + cUpCredPostTax + cDisbPostTax;
      qrySubBills.post;

      qrySubBills.Next;
   end;
   // now the rounding entry !

   if roundBookmark <> nil then
   begin
      qrySubBills.GotoBookmark(roundBookmark);
      qrySubBills.FreeBookmark(roundBookmark);

      qrySubBills.Edit;
      qrySubBills.FieldByName('FEES').AsCurrency := cTotalFees - cFeePostCount;
      qrySubBills.FieldByName('FEESTAX').AsCurrency := cTotalFeesTax - cFeePostTaxCount;
      qrySubBills.FieldByName('ANTD').AsCurrency := cTotalAntd - cAntdPostCount;
      qrySubBills.FieldByName('ANTDTAX').AsCurrency := cTotalAntdTax - cAntdPostTaxCount;
      qrySubBills.FieldByName('SUND').AsCurrency := cTotalSund - cSundPostCount;
      qrySubBills.FieldByName('SUNDTAX').AsCurrency := cTotalSundTax - cSundPostTaxCount;
      qrySubBills.FieldByName('UPCRED').AsCurrency := cTotalUpCred - cUpCredPostCount;
      qrySubBills.FieldByName('UPCREDTAX').AsCurrency := cTotalUpCredTax - cUpCredPostTaxCount;
      qrySubBills.FieldByName('DISB').AsCurrency := cTotalDisb - cDisbPostCount;
      qrySubBills.FieldByName('DISBTAX').AsCurrency := cTotalDisbTax - cDisbPostTaxCount;
      //qrySubBills.FieldByName('TAX').AsCurrency +  (cTotalFeesTax - cFeePostTaxCount) + (cTotalAntdTax - cAntdPostTaxCount) + (cTotalSundTax - cSundPostTaxCount) + (cTotalUpCredTax - cUpCredPostTaxCount) + (cTotalDisbTax - cDisbPostTaxCount);
      qrySubBills.post;
   end;
   qrySubBills.Close;
end;

function TdmAxiom.GetEnvVar(const varName : string) : string;
var
  BufSize: Integer;  // buffer size required for value
begin
  // Get required buffer size (inc. terminal #0)
  BufSize := GetEnvironmentVariable(PChar(VarName), nil, 0);
  if BufSize > 0 then
  begin
    // Read env var value into result string
    SetLength(Result, BufSize - 1);
    GetEnvironmentVariable(PChar(VarName),PChar(Result), BufSize);
  end
  else
    // No such environment variable
    Result := '';
end;

procedure TdmAxiom.MapiSessionAfterLogon(Sender: TObject);
var
   frmEmailMsgListener: TfrmEmailMsgListener;
begin
   if SystemString('Emails_Listener') = 'Y' then
   begin
      ExeCount := 0;
      FMsgStore := MapiSession.OpenDefaultMsgStore(alReadwrite);
      InboxFolderID := FMsgStore.OpenFolderByType(ftInbox);
      FSentItemsFolderID := FMsgStore.OpenFolderByType(ftSentItems);
      FOutboxFolderID := FMsgStore.OpenFolderByType(ftOutbox);

      if (not IsExeRunning('AxiomTrayMonitor.exe', ExeCount)) and
         (not IsExeRunning('InsightTrayMonitor.exe', ExeCount)) then
      begin
        frmEmailMsgListener := TfrmEmailMsgListener.Create(Self);
        frmEmailMsgListener.Visible := False;
        frmEmailMsgListener.MsgStoreEvents.Start(FMsgStore);
      end;
   end;
end;

procedure TdmAxiom.SetUserPassword(sUserPassword: string);
begin
  FUserPassword := sUserPassword;
end;

procedure TdmAxiom.TSSpellCheckerAddWord(
  AUserDictionary: TdxUserSpellCheckerDictionary; const AWord: WideString;
  var AHandled: Boolean);
begin
   TdxUserSpellCheckerDictionary(dmAxiom.TSSpellChecker.Dictionaries[1]).Enabled := False;
   AUserDictionary.DictionaryPath := '.\Spelling\USER_' + dmAxiom.UserID + '.DIC';
   AUserDictionary.Options := AUserDictionary.Options - [udSaveOnUnload];
   AUserDictionary.Unload;
   AUserDictionary.Load;

   AHandled := True;
   AUserDictionary.AddWord(AWord);

   AUserDictionary.Options := AUserDictionary.Options + [udSaveOnUnload];
   AUserDictionary.Unload;
   AUserDictionary.Load;
//   TdxUserSpellCheckerDictionary(dmAxiom.TSSpellChecker.Dictionaries[1]).Enabled := True;
end;

procedure TdmAxiom.TSSpellCheckerSpellingComplete(Sender: TdxCustomSpellChecker;
  var AHandled: Boolean);
begin
   AHandled := True;
end;

procedure TdmAxiom.AddictSpell3Base1ConfigReadString(Sender: TObject;
  ConfigID, Key, Default: String; var Value: String);
begin
//
//   MsgInfo(ConfigID+' '+key+' '+default);
end;

procedure TdmAxiom.AddictSpell3Base1ConfigWriteString(Sender: TObject;
  ConfigID, Key, Value: String);
begin
//
end;

function TdmAxiom.ConvertDate(AStrDate, dtFormat: string): TDateTime;
begin
   with qryTmp do
   begin
      if dtFormat = '' then dtFormat := 'dd-mon-yyyy';
      Close;
      SQL.Clear;
      SQL.Add('SELECT to_date('+QuotedStr(AStrDate) +','+QuotedStr(dtFormat)+') as NewDate FROM DUAL');
      Open;
      Result := Fields.Fields[0].AsDateTime;
      Close;
   end;
end;

procedure TdmAxiom.qryMatterAttachmentsNewRecord(DataSet: TDataSet);
begin
   qryGetSeq.ExecSQL;
   FDocID := qryGetSeq.FieldByName('nextdoc').AsString;
   DataSet.FieldByName('docid').AsString := FDocID;
end;

procedure TdmAxiom.qrySaveEmailAttachmentsNewRecord(DataSet: TDataSet);
begin
   qryGetSeq.ExecSQL;
   AttDocID := qryGetSeq.FieldByName('nextdoc').AsString;
   qrySaveEmailAttachments.FieldByName('docid').AsString := AttDocID;
end;

function TdmAxiom.GetFeeTotal(AMatter: integer): integer;
var
   TotalFees, estimatedfees: integer;
begin
   with qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NVL (fees.amount, 0) + NVL (b.amount, 0) amount ');
      SQL.Add('  FROM (SELECT   NVL (SUM (amount), 0) amount, nmatter ');
      SQL.Add('   FROM fee ');
      SQL.Add('   WHERE nmatter = :p_nmatter AND billtype = ''Billable'' ');
      SQL.Add('   GROUP BY nmatter) fees LEFT OUTER JOIN (SELECT   NVL ');
      SQL.Add('   (SUM (amount), ');
      SQL.Add('   0  ');
      SQL.Add('   ) amount,  ');
      SQL.Add('   nmatter ');
      SQL.Add('   FROM feetmp  ');
      SQL.Add('   WHERE nmatter =  ');
      SQL.Add('   :p_nmatter ');
      SQL.Add('   AND nfee IS NULL ');
      SQL.Add('   AND billtype =  ');
      SQL.Add('   ''Billable''  ');
      SQL.Add('   GROUP BY nmatter) b ON fees.nmatter =  ');
      SQL.Add('   b.nmatter ');
      ParamByName('p_nmatter').AsInteger := AMatter;
      Open;
      TotalFees := Fields.Fields[0].AsInteger;
      Close;
      SQL.Clear;
      SQL.Add('select estimatedfee from matter where nmatter = :p_nmatter');
      ParamByName('p_nmatter').AsInteger := AMatter;
      Open;
      estimatedfees := Fields.Fields[0].AsInteger;
      Close;
      try
        if estimatedfees > 0 then
          Result := round((TotalFees/estimatedfees)*100)
        else
          Result := 0;
      except
        Result := 0;
      end;
   end;
end;

function TdmAxiom.GetMonthlyFeeTotal(AMatter: integer): integer;
var
   TotalFees, estimatedfees: integer;
begin
   with qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NVL (fees.amount, 0) + NVL (b.amount, 0) amount ');
      SQL.Add('  FROM (SELECT   NVL (SUM (amount), 0) amount, nmatter ');
      SQL.Add('   FROM fee ');
      SQL.Add('   WHERE nmatter = :p_nmatter AND billtype = ''Billable'' ');
      SQL.Add('   AND NMEMO is null');
      SQL.Add('   AND trunc(created) >= to_date(to_char(sysdate, ''mm/yyyy''), ''MM/yyyy'') and trunc(created) <= trunc(last_day(sysdate)) ');
      SQL.Add('   GROUP BY nmatter) fees LEFT OUTER JOIN (SELECT   NVL ');
      SQL.Add('   (SUM (amount), ');
      SQL.Add('   0  ');
      SQL.Add('   ) amount,  ');
      SQL.Add('   nmatter ');
      SQL.Add('   FROM feetmp  ');
      SQL.Add('   WHERE nmatter =  ');
      SQL.Add('   :p_nmatter ');
      SQL.Add('   AND nfee IS NULL ');
      SQL.Add('   AND billtype =  ');
      SQL.Add('   ''Billable''  ');
      SQL.Add('   AND trunc(created) >= to_date(to_char(sysdate, ''mm/yyyy''), ''MM/yyyy'') and trunc(created) <= trunc(last_day(sysdate)) ');
      SQL.Add('   GROUP BY nmatter) b ON fees.nmatter =  ');
      SQL.Add('   b.nmatter ');
      ParamByName('p_nmatter').AsInteger := AMatter;
      Open;
      TotalFees := Fields.Fields[0].AsInteger;
      Close;
      SQL.Clear;
      SQL.Add('select budget_fees from matter where nmatter = :p_nmatter');
      ParamByName('p_nmatter').AsInteger := AMatter;
      Open;
      estimatedfees := Fields.Fields[0].AsInteger;
      Close;
      try
        if estimatedfees > 0 then
          Result := round((TotalFees/estimatedfees)*100)
        else
          Result := 0;
      except
        Result := 0;
      end;
   end;
end;

function TdmAxiom.GetFeeTotalAmount(AMatter: integer): integer;
var
   TotalFees: integer;
begin
   with qryTmp do
   begin
      Close;
      SQL.Clear;
     { SQL.Add('SELECT NVL (fees.amount, 0) + NVL (b.amount, 0) amount ');
      SQL.Add('  FROM (SELECT   NVL (SUM (amount), 0) amount, nmatter ');
      SQL.Add('   FROM fee ');
      SQL.Add('   WHERE nmatter = :p_nmatter AND billtype = ''Billable'' ');
      SQL.Add('   GROUP BY nmatter) fees LEFT OUTER JOIN (SELECT   NVL ');
      SQL.Add('   (SUM (amount), ');
      SQL.Add('   0  ');
      SQL.Add('   ) amount,  ');
      SQL.Add('   nmatter ');
      SQL.Add('   FROM feetmp  ');
      SQL.Add('   WHERE nmatter =  ');
      SQL.Add('   :p_nmatter ');
      SQL.Add('   AND nfee IS NULL ');
      SQL.Add('   AND billtype =  ');
      SQL.Add('   ''Billable''  ');
      SQL.Add('   GROUP BY nmatter) b ON fees.nmatter =  ');
      SQL.Add('   b.nmatter ');    }
      SQL.Add('select sum(amount) from ');
      SQL.Add('(select sum(amount) as amount from fee where billtype = ''Billable''  and nmatter = :p_nmatter ');
      SQL.Add('union ');
      SQL.Add('select sum(amount) as amount from feetmp where billtype = ''Billable'' and nfee is null and nmatter = :p_nmatte) ');
      ParamByName('p_nmatter').AsInteger := AMatter;
      Open;
      TotalFees := Fields.Fields[0].AsInteger;
      Close;
      Result := round(TotalFees);
   end;
end;

procedure TdmAxiom.uniInsightAfterConnect(Sender: TObject);
begin
   osmAxiom.Active := True;
   // fee alerts
   FCheckFeeTotal := False;
   qryTmp.close;
   qryTmp.SQL.Clear;
   qryTmp.SQL.Add('select status from all_triggers where trigger_name = ''TRG_CHECK_FEE_TOTAL'' AND table_name = ''FEE'' ');
   qryTmp.Open;
   try
//      if (not qryTmp.Eof) then
      FCheckFeeTotal := (qryTmp.Fields.Fields[0].AsString = 'ENABLED');
   finally
      qryTmp.Close;
   end;
   //disbs alert
   FCheckDisbTotal := False;
   qryTmp.close;
   qryTmp.SQL.Clear;
   qryTmp.SQL.Add('select status from all_triggers where trigger_name = ''TRG_CHECK_DISB_TOTAL'' AND table_name = ''FEE'' ');
   qryTmp.Open;
   try
      FCheckDisbTotal := (qryTmp.Fields.Fields[0].AsString = 'ENABLED');
   finally
      qryTmp.Close;
   end;

   FRegistered_Message := SystemString('Registered_Message');
//   LocaleName := Insight_GetLocaleInfo;
end;

function TdmAxiom.GetTIMESHEET_RATE_EDIT: string;
begin
   Result := SystemString('TIMESHEET_RATE_EDIT');
end;

function TdmAxiom.GetArchiveLabel: string;
begin
  // If we haven't loaded it yet, load it
  if FArchiveLabel = '' then
    FArchiveLabel := SettingLoadString('ARCHIVELABEL', 'ARCHIVEFILE');
  // If they don't have one set, default it
  if FArchiveLabel = '' then
    FArchiveLabel := 'ARCHIVELABEL';
  Result := FArchiveLabel;
end;

procedure TdmAxiom.SetArchiveLabel(Value: string);
begin
   FArchiveLabel := Value;
   SettingSave('ARCHIVELABEL', 'ARCHIVEFILE', Value);
end;

function TdmAxiom.GetDefaultTimeType: string;
begin
   Result := SystemString('DEFAULT_FEE_TIME_TYPE');
end;

procedure TdmAxiom.MapiSessionBeforeLogon(Sender: TObject);
begin
//    NPRFILEID: TRwMapiNamedProperty = (PropSetID: '{001b04db-360a-424e-ae80-3f1fce8c7458}'; PropID: $8000; PropName: 'NPRFILEID'; PropType: PT_STRING8; PropKind: MNID_ID);

 // register the CustomField before logging on!
   MATTER.ID := MapiSession.RegisterProp(
        'MATTER'
      , 'MATTER'
      , dtAnsiString
      , True
      , PS_PUBLIC_STRINGS);
end;

function TdmAxiom.GetMSOfficeVersion: String;
var
   Reg: TRegistry;
begin
   Result := 'Office Version Not Found';
   // create the registry object
   Reg := TRegistry.Create;
   try
      // set the root key
      Reg.RootKey := HKEY_LOCAL_MACHINE;

      // check for Office97
      if Reg.OpenKey('\SOFTWARE\Microsoft\Office\8.0', False) then
      begin
         Result := '8.0';
      end;
      // check for Office2000
      if Reg.OpenKey('\SOFTWARE\Microsoft\Office\9.0', False) then
      begin
         Result := '9.0';
      end;
      // check for OfficeXP -- not sure if this is correct
      // you have to verify the key on a machine with OfficeXP
      if Reg.OpenKey('\SOFTWARE\Microsoft\Office\10.0', False) then
      begin
         Result := '10.0';
      end;
      // check for Office2000
      if Reg.OpenKey('\SOFTWARE\Microsoft\Office\11.0', False) then
      begin
         Result := '11.0';
      end;
      // check for Office2007
      if Reg.OpenKey('\SOFTWARE\Microsoft\Office\12.0', False) then
      begin
         Result := '12.0';
      end;
      // check for Office2010
      if Reg.OpenKey('\SOFTWARE\Microsoft\Office\14.0', False) then
      begin
         Result := '13.0';
      end;
   finally
      // make sure we free the object we created
      Reg.Free;
   end;
end;

function TdmAxiom.GetWorkingDaysCount: integer;
begin
   try
      with qryWorkingDays do
      begin
         Close;
         ParamByName('fromdate').AsDate := StartOfTheMonth(Now);
         ParamByName('todate').AsDate := EndOfTheMonth(Now);
         Open;
         Result := FieldByName('workdays').AsInteger;
      end;
   finally
      qryWorkingDays.Close;
   end;
end;

procedure TdmAxiom.ConvertExecute;
var
   bPostingFailed: boolean;
   dAmount: double;
   nFee,
   ANewDocName,
   AParsedDocName,
   AParsedDir:        string;
   iMinsPerUnit: integer;
begin
   iMinsPerUnit := SystemInteger('TIME_UNITS');
   qryTempFeeInsert.Close;
   qryTempFeeInsert.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
   qryTempFeeInsert.ParambyName('CREATED').AsDate   := Now;
   qryTempFeeInsert.Open;

   try
      if dmAxiom.uniInsight.InTransaction then dmAxiom.uniInsight.Rollback;
      dmAxiom.uniInsight.StartTransaction;

      bPostingFailed := False;
      with qryTempFeeInsert do
      begin
         First;
         while (EOF = False) do
         begin
            if ((MatterIsCurrent(FieldByName('FILEID').AsString) = True) and
               (FieldByName('TIME_TYPE').AsString = 'M')) OR
               (FieldByName('TIME_TYPE').AsString = 'O') then
            begin
               if (FieldByName('REASON').AsString <> '') then
               begin
                  nFee := dmAxiom.GetSeqNumber('SQNC_NFEE');

                  if FieldByName('START_DATE').IsNull then
                     qryFeeInsert.ParamByName('CREATED').AsDateTime := FieldByName('CREATED').AsDateTime
                  else
                     qryFeeInsert.ParamByName('CREATED').AsDateTime := FieldByName('START_DATE').AsDateTime;

                  qryFeeInsert.ParamByName('DESCR').AsString := FieldByName('REASON').AsString;
                  qryFeeInsert.ParamByName('UNITS').AsFloat := FieldByName('UNITS').AsFloat;
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
                  qryFeeInsert.ParamByName('NFEE').AsString := nFee;
                  qryFeeInsert.ParamByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
                  qryFeeInsert.ParamByName('RATE').AsFloat := FieldByName('RATE').AsCurrency;
                  if (FieldByName('FILEID').IsNull = False) then
                  begin
                     qryFeeInsert.ParamByName('NMATTER').AsInteger :=  FieldByName('NMATTER').AsInteger;
                     qryFeeInsert.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'NMATTER', FieldByName('NMATTER').AsInteger, 'NCLIENT');
                     qryFeeInsert.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
                     qryFeeInsert.ParamByName('PARTNER').AsString := MatterString(FieldByName('NMATTER').AsInteger, 'PARTNER');
                  end;
                  qryFeeInsert.ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
                  qryFeeInsert.ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('AUTHOR').AsString, 'DEPT');
                  qryFeeInsert.ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('AUTHOR').AsString, 'TYPE');
                  qryFeeInsert.ParamByName('TAXCODE').AsString := FieldByName('TAXCODE').AsString;
                  qryFeeInsert.ParamByName('START_DATE').AsDateTime := FieldByName('START_DATE').AsDateTime;
                  qryFeeInsert.ParamByName('END_DATE').AsDateTime := FieldByName('END_DATE').AsDateTime;
                  dAmount := FieldByName('AMOUNT').AsCurrency;
                  qryFeeInsert.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', FieldByName('TAXCODE').AsString, FieldByName('CREATED').AsDateTime);
                  qryFeeInsert.ParamByName('AMOUNT').AsFloat := dAmount;
                  qryFeeInsert.ParamByName('VALUE').AsFloat := dAmount;
                  qryFeeInsert.ParamByName('DISCOUNT').AsFloat := 0;
                  qryFeeInsert.ParamByName('TIME_TYPE').AsString := FieldByName('TIME_TYPE').AsString;
                  qryFeeInsert.ParamByName('ITEMS').AsString := FieldByName('ITEMS').AsString;
                  qryFeeInsert.ParamByName('LABELCOLOUR').AsInteger := $000C1DFC;  //EventLabelColors[5];    RED
                  qryFeeInsert.ParamByName('PROGRAM_NAME').AsString := 'Shutdown';
                  qryFeeInsert.ParamByName('EMPCODE').AsString := FieldByName('EMPCODE').AsString;
                  qryFeeInsert.ParamByName('NOTES').AsString := FieldByName('NOTES').AsString;
                  qryFeeInsert.ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;
                  qryFeeInsert.ParamByName('PROCESSING_UNIT').AsString := 'Shutdown';
                  qryFeeInsert.ParamByName('BILLED').AsString := 'N';
                  qryFeeInsert.ParamByName('TYPE').AsString := 'N';
                  if FieldByName('TIME_TYPE').AsString = 'O' then
                     qryFeeInsert.ParamByName('BILLTYPE').AsString := 'NonBillable'
                  else
                  begin
                     qryFeeInsert.ParamByName('BILLTYPE').AsString := FieldByName('BillType').AsString;
                  end;
                  qryFeeInsert.ParamByName('TASK').AsString := FieldByName('FEE_TEMPLATE').AsString;
                  qryFeeInsert.ExecSQL;

                  qryFeeTempUpdate.ParamByName('nfee').AsString := nFee;
                  qryFeeTempUpdate.ParamByName('labelcolour').AsInteger := $000C1DFC;  //EventLabelColors[5];   // RED
                  qryFeeTempUpdate.ParamByName('uniqueid').AsInteger := FieldByName('UNIQUEID').AsInteger;
                  qryFeeTempUpdate.ExecSQL;

                  if ((dmAxiom.Fee_file_notes = 'Y') and (not FieldByName('NOTES').IsNull) and
                     (SystemString('DRAG_DEFAULT_DIRECTORY') <> '')) then
                  begin
                     qryTmpProcess.Close;
                     qryTmpProcess.ParambyName('uniqueid').AsInteger := qryTempFeeInsert.FieldByName('UNIQUEID').AsInteger;
                     qryTmpProcess.Open;

                     ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY') + '\File Note - ' + nfee + '_'+
                                                qryTmpProcess.FieldByName('AUTHOR').AsString + '.pdf';

                     AParsedDocName := ParseMacros(ANewDocName, qryTmpProcess.FieldByName('NMATTER').AsInteger);
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
                        SaveFileNotesToDoc(qryTmpProcess.FieldByName('START_DATE').AsDateTime, qryTmpProcess.FieldByName('NOTES').AsString,
                                           qryTmpProcess.FieldByName('REASON').AsString,
                                           qryTmpProcess.FieldByName('FILEID').AsString, qryTmpProcess.FieldByName('AUTHOR').AsString,
                                           AParsedDocName, StrToInt(nFee) );
                        qryTmpProcess.Close;
                     end;
                  end;
               end;
            end;
//            else
//               raise Exception.Create('Matter: ' + FieldByName('FILEID').AsString + ' is closed');
            Next;
         end;
      end;
    except on E: Exception do
      begin
         if (dmAxiom.uniInsight.InTransaction) then
            dmAxiom.uniInsight.Rollback;
         WriteLog('Conversion process failed:' + E.Message);
         bPostingFailed := True;
//          MsgErr('Conversion process failed:'#13#13 + E.Message);
      end;
    end;

   if (bPostingFailed = False) then
   begin
      dmAxiom.uniInsight.Commit;
   end;
end;

function TdmAxiom.GetClientFeeRate(AMatter: integer): String;
var
   FeeCode: string;
begin
   with qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT client.feecode ');
      SQL.Add('  FROM client, matter ');
      SQL.Add('   WHERE matter.nmatter = :p_nmatter ');
      SQL.Add('   AND client.nclient = matter.nclient ');
      ParamByName('p_nmatter').AsInteger := AMatter;
      Open;
      FeeCode := Fields.Fields[0].AsString;
      Close;
      Result := FeeCode;
   end;
end;

procedure TdmAxiom.FindMatter(var AFoundFileID: string; AFileID: string);
var
   LFileID: String;
begin
   LFileID := Uppercase(AFileID);
   if (Length(LFileID) >= 3) then
   begin
      with dmAxiom.qryNew do
      begin
         Close;
         SQL.Text := 'SELECT matter.fileid as code, phonebook.search||'' ''||matter.shortdescr as descr, ''N'' AS DEFAULTITEM '+
                     'FROM phonebook, matter WHERE matter.nclient = phonebook.nclient and closed = 0';
         if dmAxiom.Security.Employee.ChangeEntity = False then
         begin
            SQL.Text := SQL.Text + ' AND efematteraccess (matter.nmatter, :author, :entity, :defentity) = 0 ';
            ParamByName('AUTHOR').AsString := dmAxiom.UserID;
            ParamByName('DEFENTITY').AsString := dmAxiom.EmpEntity;
            ParamByName('ENTITY').AsString := dmAxiom.Entity;
         end
         else
            SQL.Text := SQL.Text + 'and matter.entity = '+ QuotedStr(dmAxiom.Entity) ;

         if (Trim(LFileID) <> '') then
            SQL.Text := SQL.Text + ' and contains(matter.dummy,'+ QuotedStr(Trim('%'+LFileID)+'%') +') > 0';
         Prepare;
         Open;
         if (dmAxiom.qryNew.RecordCount > 1) and (Trim(LFileID) <> '') then
         begin
            try
               frmGenericSearch := TfrmGenericSearch.Create(Application);
               frmGenericSearch.Caption := 'Select Matter...';
               frmGenericSearch.SQL := SQL.Text;
               if frmGenericSearch.ShowModal = mrOK then
               begin
                  LFileID := frmGenericSearch.qrySource.FieldByName('CODE').AsString;
               end
               else
                  LFileID := '';
            finally
               begin
                  frmGenericSearch.Free();
                  Close;
               end;
            end;
         end
         else
         if (dmAxiom.qryNew.RecordCount > 1) and (Trim(LFileID) = '') then
         begin
            if not FormExists(frmMatterSearch) then
               Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
            if frmMatterSearch.ShowModal = mrOk then
               LFileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
         end
         else
         begin
            if (dmAxiom.qryNew.RecordCount = 1) then
               LFileID := dmAxiom.qryNew.FieldByName('code').AsString
            else
            begin
               MsgErr('The selected Matter is not valid.  Please check and re-try.');
               LFileID := '';
               Exit;
            end;
         end;
      end;

      if ((Trim(LFileID) <> '') and MatterExists(LFileID)) then
      begin
         if (IsMatterPrivate(StrToInt(MatterString(LFileID, 'NMATTER')),MatterString(LFileID, 'RESTRICT_ACCESS')) AND
             (dmAxiom.SecureMatterAccess = 'N')) then
         begin
            MsgInfo('This matter is marked as private. You do not have permission to view it.');
         end
         else
         begin
            try
               AFoundFileID := LFileID;
            finally
//
            end;
         end;
      end
      else
         if (LFileID <> '') then
            MsgErr('The selected Matter is not valid.  Please check and re-try.');
   end;
end;

function TdmAxiom.Ping(const AHost : string) : Boolean;
var
   MyIdIcmpClient : TIdIcmpClient;
begin
   Result := True;

   MyIdIcmpClient := TIdIcmpClient.Create(self);
   MyIdIcmpClient.ReceiveTimeout := 200;
   MyIdIcmpClient.Host := AHost;
   MyIdIcmpClient.PacketSize := 24;
   MyIdIcmpClient.Protocol := 1;
   MyIdIcmpClient.IPVersion := Id_IPv4;

   try
      MyIdIcmpClient.Ping;
   except
      Result := False;
      Exit;
   end;
   if (MyIdIcmpClient.ReplyStatus.ReplyStatusType <> rsEcho) Then
      result := False;

   MyIdIcmpClient.Free;
end;

end.

