unit PhoneBook;

interface

uses
   Windows, Forms,  sysUtils, Dialogs, Graphics, dxBarBuiltInMenu,
   cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxTextEdit, cxCheckBox, cxImageComboBox, Vcl.Menus, uRwMAPIFormManager,
  Vcl.ExtCtrls, raCodMod, ppModule, ppDB, ppDBPipe, ppParameter, ppBands,
  ppDesignLayer, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, Vcl.DBActns, System.Classes,
  System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan, dxBar,
  cxBarEditItem, dxBarExtItems, cxClasses, stringz, DBAccess, Uni, MemDS,
  System.ImageList, Vcl.ImgList, Vcl.Controls, cxDBLabel, Vcl.DBCtrls, cxLabel,
  cxButtons, Vcl.StdCtrls, Vcl.Buttons, cxGridBandedTableView,
  cxGridDBBandedTableView, cxListBox, VirtualTrees, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxMemo, cxDBEdit, cxMaskEdit, cxButtonEdit, cxCustomListBox,
  cxCheckListBox, cxCurrencyEdit, Vcl.ComCtrls, Vcl.Mask, cxPC, ppFileUtils,
  Outlook2000, uRwMapiInterfaces, Variants, ppIniStorage, Math, cxRichEdit,
  cxDBRichEdit;




const PHONEBOOKCHECKTABLES: array[0..16] of string = ('PHONEBOOK','MATTER','MATTER','NMEMO','SUBBILLS','CREDITOR', 'CHEQUE','RECEIPT','MATTERPARTY','CHEQREQ','DIARY','EVENT_HISTORY','EVENT_PARTICIPANT','MATTERCONTACTACTINGFOR','MATTERCONTACTACTINGFOR','MATTERPARTYARCHIVE','WORKFLOWGENDOCUMENTPARTIES');
const PHONEBOOKCHECKFIELDS: array[0..16] of string = ('NNAMEMASTER','NCONTACT','NBILL_TO','NBILL_TO','NBILL_TO','NNAME','NNAME','NNAME','NNAME','NNAME','NNAME','NNAME','NNAME','NNAME','ACTINGFORNNAME','NNAME','NNAME');
const PHONEBOOKCHECKKEYS:   array[0..16] of string = ('NNAME','FILEID','FILEID','NMEMO','NMEMO','NCREDITOR','NCHEQUE','NRECEIPT','NMATTER','NCHEQREQ','NDIARY','EVENT_ID','EVENT_PART_ID','NMATTER','NMATTER','FILEID','NNAME');

type
  TfrmPhoneBook = class(TForm)
    pBottom: TPanel;
    ImageList: TImageList;
    qPhoneBook: TUniQuery;
    dsPhoneBook: TUniDataSource;
    pTopInfo: TPanel;
    eLongName: TDBEdit;
    eShortName: TDBEdit;
    eName: TDBEdit;
    eLastName: TDBEdit;
    eGivenNames: TDBEdit;
    eSalutation: TDBEdit;
    Bevel2: TBevel;
    lLongName: TLabel;
    lShortName: TLabel;
    lName: TLabel;
    lNamed: TLabel;
    lGender: TLabel;
    Bevel1: TBevel;
    lPhone: TLabel;
    ePhoneHome: TDBEdit;
    lPhoneHome: TLabel;
    lPhoneWork: TLabel;
    ePhoneWork: TDBEdit;
    ePhoneMobile: TDBEdit;
    lPhoneMobile: TLabel;
    lPhoneFax: TLabel;
    ePhoneFax: TDBEdit;
    cbGender: TDBEdit;
    qGroups: TUniQuery;
    qGroupsCATEGORY: TStringField;
    qGroupsOTHERPARTY: TStringField;
    qGroupsACTINGFOR: TStringField;
    qGroupsFIELDNAME: TStringField;
    qDataFields: TUniQuery;
    qDataFieldsFIELDNAME: TStringField;
    qDataFieldsCAPTION: TStringField;
    qDataFieldsTYPE: TStringField;
    qDataFieldsTEXTVALUE: TStringField;
    qDataFieldsDATAFORM: TStringField;
    qDataFieldsPARTY: TStringField;
    qMatters: TUniQuery;
    qMattersFILEID: TStringField;
    qMattersSHORTDESCR: TStringField;
    qDeleteCheck: TUniQuery;
    qDeleteCheckTOTAL: TFloatField;
    qRecent: TUniQuery;
    qRecentAUTHOR: TStringField;
    qRecentTYPE: TStringField;
    qRecentCODE: TStringField;
    qRelationships: TUniQuery;
    dsRelationships: TUniDataSource;
    dsGroups: TUniDataSource;
    qMatterDataFields: TUniQuery;
    qMatterDataFieldsDATAFORM: TStringField;
    qMatterDataFieldsFIELDNAME: TStringField;
    qMatterDataFieldsFIELDTYPE: TStringField;
    qMatterDataFieldsTEXTVALUE: TStringField;
    qMatterDataFieldsCAPTION: TStringField;
    qMatterDataFieldsFILEID: TStringField;
    qMatterDataFieldsMATTERDESC: TStringField;
    qDataFieldsDATAFORMCAPTION: TStringField;
    qMatterDataFieldsDATAFORMCAPTION: TStringField;
    qMatterDataFieldsNEW: TStringField;
    dsContactNotes: TUniDataSource;
    qContactNotes: TUniQuery;
    qTmp: TUniQuery;
    strPhoneBook: TStringz;
    strCheckForMasterLink: TStringz;
    cxStyleRepository1: TcxStyleRepository;
    styAlternateColor: TcxStyle;
    qryReferral: TUniQuery;
    qryPhoneBookInterest: TUniQuery;
    qryMarketing: TUniQuery;
    qryIndustry: TUniQuery;
    qryEmployee: TUniQuery;
    qryParticipantEvents: TUniQuery;
    dsParticipantEvents: TUniDataSource;
    qryParticipantEventsEVENT: TStringField;
    qryParticipantEventsEVENT_DATE: TDateTimeField;
    qryParticipantEventsEVENT_TIME: TStringField;
    qryParticipantEventsATTENDED: TStringField;
    qryParticipantEventsACCEPTED: TStringField;
    qryParticipantEventsDECLINED: TStringField;
    qryParticipantEventsPRINTED: TStringField;
    qryParticipantEventsSEARCH: TStringField;
    qryParticipantEventsNOTES: TStringField;
    qryListChildren: TUniQuery;
    dsListChildren: TUniDataSource;
    dxBarManager1: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItemRecent: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    btnCreate: TdxBarButton;
    btnEditPhonebook: TdxBarButton;
    btnDeletePhonebook: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    qRecentSEARCH: TStringField;
    popRelationPrint: TPopupMenu;
    PrintDetails1: TMenuItem;
    qRelationshipsFORWARD: TStringField;
    qRelationshipsRELATIONSHIP: TStringField;
    qRelationshipsBACKWARD: TStringField;
    qRelationshipsROWID: TStringField;
    qRelationshipsDELETEABLE: TStringField;
    qRelationshipsBACKWARDCATEGORY: TStringField;
    qRelationshipsFORWARDCATEGORY: TStringField;
    qRelationshipsLINKTABLE: TStringField;
    qRelationshipsSEARCH: TStringField;
    qRelationshipsADDRESS: TStringField;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ActionManager: TActionManager;
    aNew: TAction;
    aEdit: TAction;
    aFind: TAction;
    aDelete: TAction;
    aSnapshot: TAction;
    aLetter: TAction;
    aSendEMail: TAction;
    aBrowseURL: TAction;
    aPIM: TAction;
    aExit: TAction;
    aRecentHolder: TAction;
    aRelationshipNew: TAction;
    aRelationshipDelete: TAction;
    aViewShowMatterData: TAction;
    aViewShowAllMattersData: TAction;
    aPrint: TAction;
    aShowFieldNames: TAction;
    aContactNotesInsert: TDataSetInsert;
    aContactNotesEdit: TDataSetEdit;
    aContactNotesDelete: TDataSetDelete;
    aRelationshipOpen: TAction;
    actEdit: TAction;
    Action1: TAction;
    aPrintSelected: TAction;
    qClient: TUniQuery;
    dsClient: TDataSource;
    qActiveEmployees: TUniQuery;
    qActiveEmployeesNAME: TStringField;
    qActiveEmployeesCODE: TStringField;
    dsActiveEmployees: TDataSource;
    qClientGroups: TUniQuery;
    qClientGroupsCATEGORY: TStringField;
    qClientGroupsSUPERGROUP: TStringField;
    qClientGroupsHASGROUP: TStringField;
    cxStyle2: TcxStyle;
    cxEditStyleController1: TcxEditStyleController;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    bbtnRelationshipMerge: TdxBarButton;
    qRelationshipDetails: TUniQuery;
    qRelationshipDetailsPARTYGIVENNAMES: TStringField;
    qRelationshipDetailsPARTYLASTNAME: TStringField;
    qRelationshipDetailsPARTYSEARCH: TStringField;
    qRelationshipDetailsPARTYTITLE: TStringField;
    qRelationshipDetailsPARTYGENDER: TStringField;
    qRelationshipDetailsPARTYADDRESS: TStringField;
    qRelationshipDetailsPARTYSALUTATION: TStringField;
    qRelationshipDetailsPARTYWORKPHONE: TStringField;
    qRelationshipDetailsPARTYHOMEPHONE: TStringField;
    qRelationshipDetailsPARTYDX: TStringField;
    qRelationshipDetailsPARTYDXLOC: TStringField;
    qRelationshipDetailsPARTYFAX: TStringField;
    qRelationshipDetailsPARTYCODE: TStringField;
    qRelationshipDetailsPARTYSPARTY: TStringField;
    qRelationshipDetailsPARTYSOLICITOR: TStringField;
    qRelationshipDetailsPARTYREAL_ESTATE: TStringField;
    qRelationshipDetailsPARTYREFERRALS: TIntegerField;
    qRelationshipDetailsPARTYNOTE: TStringField;
    qRelationshipDetailsPARTYNAME: TStringField;
    qRelationshipDetailsPARTYSHORTNAME: TStringField;
    qRelationshipDetailsPARTYLONGNAME: TStringField;
    qRelationshipDetailsPARTYMOD_DATE: TDateTimeField;
    qRelationshipDetailsPARTYMOD_BY: TStringField;
    qRelationshipDetailsPARTYTYPE: TStringField;
    qRelationshipDetailsPARTYCOUNTRY: TStringField;
    qRelationshipDetailsPARTYACN: TStringField;
    qRelationshipDetailsPARTYOCCUPATION: TStringField;
    qRelationshipDetailsPARTYDOB: TDateTimeField;
    qRelationshipDetailsPARTYEMAIL: TStringField;
    qRelationshipDetailsPARTYWWW: TStringField;
    qRelationshipDetailsPARTYMOBILE: TStringField;
    qRelationshipDetailsADDRESS: TStringField;
    qRelationshipDetailsSUBURB: TStringField;
    qRelationshipDetailsSTATE: TStringField;
    qRelationshipDetailsPOSTCODE: TStringField;
    qRelationshipDetailsCOUNTRY: TStringField;
    qRelationshipDetailsPOSTALADDRESS: TStringField;
    qRelationshipDetailsPOSTALSUBURB: TStringField;
    qRelationshipDetailsPOSTALSTATE: TStringField;
    qRelationshipDetailsPOSTALPOSTCODE: TStringField;
    qRelationshipDetailsPOSTALCOUNTRY: TStringField;
    qRelationshipDetailsCUST_ADDRESS: TStringField;
    qRelationshipDetailsCUST_SUBURB: TStringField;
    qRelationshipDetailsCUST_STATE: TStringField;
    qRelationshipDetailsCUST_POSTCODE: TStringField;
    qRelationshipDetailsCUST_COUNTRY: TStringField;
    qRelationshipDetailsWHICHADDRESS: TStringField;
    qRelationshipDetailsHESHE: TStringField;
    qRelationshipDetailsHIMHER: TStringField;
    qRelationshipDetailsHISHER: TStringField;
    qRelationshipDetailsSIRMADAM: TStringField;
    qRelationshipDetailsCLIENT_NUMBER: TFloatField;
    qRelationshipDetailsCLIENT_CODE: TStringField;
    qRelationshipDetailsPARTNER_CODE: TStringField;
    cxDBLabel1: TcxDBLabel;
    actRelationshipMerge: TAction;
    dxBarButton20: TdxBarButton;
    qryFirmContacts: TUniQuery;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    btnArchive: TdxBarButton;
    txtArchived: TdxBarStatic;
    rptPhonebook: TppReport;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppShape2: TppShape;
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
    plGroupingsRpt: TppDBPipeline;
    plPhoneBookRpt: TppDBPipeline;
    qryGroupingsRpt: TUniQuery;
    qryPhoneBookRpt: TUniQuery;
    qRelationshipsRpt: TUniQuery;
    qRelationshipsRptFORWARD: TStringField;
    qRelationshipsRptRELATIONSHIP: TStringField;
    qRelationshipsRptBACKWARD: TStringField;
    qRelationshipsRptROWID: TStringField;
    qRelationshipsRptDELETEABLE: TStringField;
    qRelationshipsRptBACKWARDCATEGORY: TStringField;
    qRelationshipsRptFORWARDCATEGORY: TStringField;
    qRelationshipsRptLINKTABLE: TStringField;
    qRelationshipsRptSEARCH: TStringField;
    qRelationshipsRptADDRESS: TStringField;
    plRelationshipsRpt: TppDBPipeline;
    dsGroupingsRpt: TUniDataSource;
    dsPhoneBookRpt: TUniDataSource;
    dsRelationshipsRpt: TUniDataSource;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText8: TppDBText;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine1: TppLine;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLine2: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppLabel32: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText32: TppDBText;
    ppDBText31: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppLabel26: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppDBText39: TppDBText;
    ppLabel30: TppLabel;
    qryPartyMatters: TUniQuery;
    dsPartyMatters: TUniDataSource;
    qryDocs: TUniQuery;
    dsDocs: TUniDataSource;
    dsDocList: TUniDataSource;
    ppDocList: TppDBPipeline;
    rptDocList: TppReport;
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
    ppShape3: TppShape;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine10: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    raCodeModule2: TraCodeModule;
    ppParameterList1: TppParameterList;
    qryDocList: TUniQuery;
    qrySingleDoc: TUniQuery;
    tmrDocSearch: TTimer;
    ilstDocuments: TImageList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    FormMgr: TRwMapiFormManager;
    qRecentNNAME: TLargeintField;
    qRecentIDX: TSmallintField;
    qryParticipantEventsEVENT_PART_ID: TLargeintField;
    qRelationshipsRptBACKWARDSEQ: TFloatField;
    qRelationshipsRptFORWARDSEQ: TFloatField;
    qRelationshipsRptNUNIQUE: TLargeintField;
    qRelationshipsRptNCHILD: TLargeintField;
    qRelationshipsBACKWARDSEQ: TFloatField;
    qRelationshipsFORWARDSEQ: TFloatField;
    qRelationshipsNUNIQUE: TLargeintField;
    qRelationshipsNCHILD: TLargeintField;
    qRelationshipDetailsPRIME_GIVENNAMES: TStringField;
    qRelationshipDetailsPRIME_LASTNAME: TStringField;
    qRelationshipDetailsPRIME_SEARCH: TStringField;
    qRelationshipDetailsPRIME_TITLE: TStringField;
    qRelationshipDetailsPRIME_GENDER: TStringField;
    qRelationshipDetailsPRIME_WHICHADDRESS: TStringField;
    qRelationshipDetailsPRIME_ADDRESS: TStringField;
    qRelationshipDetailsPRIME_SUBURB: TStringField;
    qRelationshipDetailsPRIME_STATE: TStringField;
    qRelationshipDetailsPRIME_POSTCODE: TStringField;
    qRelationshipDetailsPRIME_COUNTRY: TStringField;
    qRelationshipDetailsPRIME_POSTALADDRESS: TStringField;
    qRelationshipDetailsPRIME_POSTALSUBURB: TStringField;
    qRelationshipDetailsPRIME_POSTALSTATE: TStringField;
    qRelationshipDetailsPRIME_POSTALPOSTCODE: TStringField;
    qRelationshipDetailsPRIME_POSTALCOUTRY: TStringField;
    qRelationshipDetailsPRIME_DX: TStringField;
    qRelationshipDetailsPRIME_DXLOC: TStringField;
    qRelationshipDetailsPRIME_SALUTATION: TStringField;
    qRelationshipDetailsPRIME_WORKPHONE: TStringField;
    qRelationshipDetailsPRIME_HOMEPHONE: TStringField;
    qRelationshipDetailsPRIME_FAX: TStringField;
    qRelationshipDetailsPRIME_CODE: TStringField;
    qRelationshipDetailsPRIME_SPARTY: TStringField;
    qRelationshipDetailsPRIME_SOLICITOR: TStringField;
    qRelationshipDetailsPRIME_REALESTATE: TStringField;
    qRelationshipDetailsPRIME_REFERRALS: TSmallintField;
    qRelationshipDetailsPRIME_NOTE: TStringField;
    qRelationshipDetailsPRIME_NAME: TStringField;
    qRelationshipDetailsPRIME_SHORTNAME: TStringField;
    qRelationshipDetailsPRIME_LONGNAME: TStringField;
    qRelationshipDetailsPRIME_TYPE: TStringField;
    qRelationshipDetailsPRIME_ACN: TStringField;
    qRelationshipDetailsPRIME_OCCUPATION: TStringField;
    qRelationshipDetailsPRIME_DOB: TDateTimeField;
    qRelationshipDetailsPRIME_EMAIL: TStringField;
    qRelationshipDetailsPRIME_WWW: TStringField;
    qRelationshipDetailsPRIME_MOBILE: TStringField;
    qRelationshipDetailsPRIME_CUST_ADDRESS: TStringField;
    qRelationshipDetailsPRIME_CUST_SUBURB: TStringField;
    qRelationshipDetailsPRIME_CUST_STATE: TStringField;
    qRelationshipDetailsPRIME_CUST_POSTCODE: TStringField;
    qRelationshipDetailsPRIME_CUST_COUNTRY: TStringField;
    qRelationshipDetailsPRIME_WHICHADDRESS_1: TStringField;
    qRelationshipDetailsPRIME_PARTYADDRESS: TStringField;
    qRelationshipDetailsRELATED_GIVENNAMES: TStringField;
    qRelationshipDetailsRELATED_LASTNAME: TStringField;
    qRelationshipDetailsRELATED_SEARCH: TStringField;
    qRelationshipDetailsRELATED_TITLE: TStringField;
    qRelationshipDetailsRELATED_GENDER: TStringField;
    qRelationshipDetailsRELATED_WHICHADDRESS: TStringField;
    qRelationshipDetailsRELATED_ADDRESS: TStringField;
    qRelationshipDetailsRELATED_SUBURB: TStringField;
    qRelationshipDetailsRELATED_STATE: TStringField;
    qRelationshipDetailsRELATED_POSTCODE: TStringField;
    qRelationshipDetailsRELATED_COUNTRY: TStringField;
    qRelationshipDetailsRELATED_POSTALADDRESS: TStringField;
    qRelationshipDetailsRELATED_POSTALSUBURB: TStringField;
    qRelationshipDetailsRELATED_POSTALSTATE: TStringField;
    qRelationshipDetailsRELATED_POSTALPOSTCODE: TStringField;
    qRelationshipDetailsRELATED_POSTALCOUNTRY: TStringField;
    qRelationshipDetailsRELATED_DX: TStringField;
    qRelationshipDetailsRELATED_DXLOC: TStringField;
    qRelationshipDetailsRELATED_SALUTATION: TStringField;
    qRelationshipDetailsRELATED_WORKPHONE: TStringField;
    qRelationshipDetailsRELATED_HOMEPHONE: TStringField;
    qRelationshipDetailsRELATED_FAX: TStringField;
    qRelationshipDetailsRELATED_CODE: TStringField;
    qRelationshipDetailsRELATED_SPARTY: TStringField;
    qRelationshipDetailsRELATED_SOLICITOR: TStringField;
    qRelationshipDetailsRELATED_REAL_ESTATE: TStringField;
    qRelationshipDetailsRELATED_REFERRALS: TSmallintField;
    qRelationshipDetailsRELATED_NOTE: TStringField;
    qRelationshipDetailsRELATED_NAME: TStringField;
    qRelationshipDetailsRELATED_SHORTNAME: TStringField;
    qRelationshipDetailsRELATED_LONGNAME: TStringField;
    qRelationshipDetailsRELATED_TYPE: TStringField;
    qRelationshipDetailsRELATED_ACN: TStringField;
    qRelationshipDetailsRELATED_OCCUPATION: TStringField;
    qRelationshipDetailsRELATED_DOB: TDateTimeField;
    qRelationshipDetailsRELATED_EMAIL: TStringField;
    qRelationshipDetailsRELATED_WWW: TStringField;
    qRelationshipDetailsRELATED_MOBILE: TStringField;
    qRelationshipDetailsRELATED_CUST_ADDRESS: TStringField;
    qRelationshipDetailsRELATED_CUST_SUBURB: TStringField;
    qRelationshipDetailsRELATED_CUST_STATE: TStringField;
    qRelationshipDetailsRELATED_CUST_POSTCODE: TStringField;
    qRelationshipDetailsRELATED_CUST_COUNTRY: TStringField;
    qRelationshipDetailsRELATED_WHICHADDRESS_1: TStringField;
    qRelationshipDetailsRELATED_PARTYADDRESS: TStringField;
    qMattersNMATTER: TLargeintField;
    qMatterDataFieldsNMATTER: TFloatField;
    qMatterDataFieldsSEQ: TSmallintField;
    qDataFieldsSEQ: TSmallintField;
    qDataFieldsNUNIQUE: TFloatField;
    qDataFieldsNUNIQUE2: TFloatField;
    dxBarManager1Bar5: TdxBar;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    lPhoneDirect: TLabel;
    ePhoneDirect: TDBEdit;
    tbarbtnOpenClient: TdxBarButton;
    Bevel11: TBevel;
    Label22: TLabel;
    DBText1: TDBText;
    Label25: TLabel;
    eContactName: TDBEdit;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    pcBottom: TcxPageControl;
    tsAddress: TcxTabSheet;
    cbStreetCountry: TDBEdit;
    cbPostalState: TDBEdit;
    cbStreetState: TDBEdit;
    eCustomPostcode: TDBEdit;
    eCustomCountry: TDBEdit;
    lStreetPostCode: TLabel;
    lStreetCountry: TLabel;
    lStreetState: TLabel;
    cbPostalCountry: TDBEdit;
    lStreetSuburb: TLabel;
    mCustomAddress: TDBRichEdit;
    eStreetSuburb: TDBEdit;
    mPostalAddress: TDBRichEdit;
    pnlDX: TPanel;
    lDXAddress: TLabel;
    lDX: TLabel;
    lAddressDXDefault: TLabel;
    lDXLocation: TLabel;
    eDXAddress: TDBEdit;
    eDXLocation: TDBEdit;
    mStreetAddress: TDBRichEdit;
    eCustomSuburb: TDBEdit;
    eCustomState: TDBEdit;
    ePostalPostCode: TDBEdit;
    eStreetPostCode: TDBEdit;
    ePostalSuburb: TDBEdit;
    Label4: TLabel;
    lCustomState: TLabel;
    Label5: TLabel;
    lAddressPostalDefault: TLabel;
    lAddressCustomDefault: TLabel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel9: TBevel;
    Label2: TLabel;
    Label1: TLabel;
    lPostalState: TLabel;
    lPostalPostCode: TLabel;
    lPostalSuburb: TLabel;
    lStreetAddress: TLabel;
    lStreet: TLabel;
    lblCustomAddress: TLabel;
    lAddressStreetDefault: TLabel;
    lPostal: TLabel;
    lPostalCountry: TLabel;
    lPostalAddress: TLabel;
    tsClient: TcxTabSheet;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dfBillTemplate: TcxTextEdit;
    dfFeeCode: TcxTextEdit;
    dfIntroducedBy: TcxTextEdit;
    dfPartner: TcxTextEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbClientGroups: TcxCheckListBox;
    tsAdditional: TcxTabSheet;
    eABN: TDBEdit;
    eDefaultRef: TDBEdit;
    eCode: TDBEdit;
    Bevel13: TBevel;
    Bevel12: TBevel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    grpCLLData: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    pnlDOB: TPanel;
    lDateOfBirth: TLabel;
    dDateOfBirth: TDBEdit;
    pnlNRIC: TPanel;
    Label47: TLabel;
    dbedNRIC: TDBEdit;
    pnlContacts: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    eInternetWWW: TcxDBButtonEdit;
    eInternetEmail: TcxDBButtonEdit;
    eTitle: TDBEdit;
    eOccupation: TDBEdit;
    lOccupation: TLabel;
    lblABN: TLabel;
    Bevel8: TBevel;
    Label18: TLabel;
    Label17: TLabel;
    Bevel5: TBevel;
    Bevel10: TBevel;
    Bevel7: TBevel;
    Bevel6: TBevel;
    lInternet: TLabel;
    lDefaultRef: TLabel;
    lInternetWWW: TLabel;
    lInternetEMail: TLabel;
    Label6: TLabel;
    Label21: TLabel;
    lCode: TLabel;
    lACN: TLabel;
    tsNotes: TcxTabSheet;
    tsGroups: TcxTabSheet;
    dgGroups: TcxGrid;
    tvGroups: TcxGridDBTableView;
    tvGroupsCATEGORY: TcxGridDBColumn;
    tvGroupsOTHERPARTY: TcxGridDBColumn;
    dgGroupsLevel1: TcxGridLevel;
    rsRelationships: TcxTabSheet;
    dbgrRelationship: TcxGrid;
    tvRelationship: TcxGridDBTableView;
    tvRelationshipNCHILD: TcxGridDBColumn;
    tvRelationshipRELATIONSHIP: TcxGridDBColumn;
    tvRelationshipBACKWARD: TcxGridDBColumn;
    tvRelationshipDBColumn1: TcxGridDBColumn;
    dbgrRelationshipLevel1: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    tsCustomData: TcxTabSheet;
    vtCustomData: TVirtualStringTree;
    tsMatterData: TcxTabSheet;
    vtMatterData: TVirtualStringTree;
    tsPartyMatter: TcxTabSheet;
    grdMatterParty: TcxGrid;
    tvMatterParty: TcxGridDBTableView;
    tvMatterPartyMATTER: TcxGridDBColumn;
    tvMatterPartyDESCR: TcxGridDBColumn;
    tvMatterPartyNMATTER: TcxGridDBColumn;
    grdMatterPartyLevel1: TcxGridLevel;
    tsTracking: TcxTabSheet;
    dxBarDockControl2: TdxBarDockControl;
    dbgContactNotes: TcxGrid;
    tvContactNotes: TcxGridDBTableView;
    tvContactNotesCREATION_DATE: TcxGridDBColumn;
    tvContactNotesSTART_DT: TcxGridDBColumn;
    tvContactNotesENTEREDBY: TcxGridDBColumn;
    tvContactNotesDESCR: TcxGridDBColumn;
    dbgContactNotesLevel1: TcxGridLevel;
    tsEventList: TcxTabSheet;
    grdParticipantEvents: TcxGrid;
    tvParticipantEvents: TcxGridDBTableView;
    tvParticipantEventsEVENT: TcxGridDBColumn;
    tvParticipantEventsEVENT_DATE: TcxGridDBColumn;
    tvParticipantEventsEVENT_TIME: TcxGridDBColumn;
    tvParticipantEventsACCEPTED: TcxGridDBColumn;
    tvParticipantEventsATTENDED: TcxGridDBColumn;
    tvParticipantEventsDECLINED: TcxGridDBColumn;
    tvParticipantEventsPRINTED: TcxGridDBColumn;
    tvParticipantEventsSEARCH: TcxGridDBColumn;
    tvParticipantEventsNOTES: TcxGridDBColumn;
    grdParticipantEventsLevel1: TcxGridLevel;
    tsMarketing: TcxTabSheet;
    GroupBox1: TGroupBox;
    lstFirmContacts: TcxListBox;
    grpCRM: TGroupBox;
    Label19: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label20: TLabel;
    edRelationshipType: TEdit;
    DBEdit1: TDBEdit;
    edRelationshipStatus: TEdit;
    edRelationshipAction: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    grpIndustry: TGroupBox;
    dbIndustry: TEdit;
    grpInterest: TGroupBox;
    lstInterest: TcxListBox;
    grpReferral: TGroupBox;
    lblReferral: TLabel;
    lblReferredBy: TLabel;
    lblMaintainer: TLabel;
    edMaintainer: TEdit;
    edReferredBy: TEdit;
    edReferralType: TEdit;
    tsOtherNames: TcxTabSheet;
    grdOtherNames: TcxGrid;
    grdOtherNamesDBTableView1: TcxGridDBTableView;
    grdOtherNamesDBTableView1NNAME: TcxGridDBColumn;
    grdOtherNamesDBTableView1NAME: TcxGridDBColumn;
    grdOtherNamesDBTableView1SEARCH: TcxGridDBColumn;
    grdOtherNamesLevel1: TcxGridLevel;
    tsDocuments: TcxTabSheet;
    grdDocs: TcxGrid;
    tvDocs: TcxGridDBBandedTableView;
    tvDocsIMAGEINDEX: TcxGridDBBandedColumn;
    tvDocsDOC_NAME: TcxGridDBBandedColumn;
    tvDocsD_CREATE: TcxGridDBBandedColumn;
    tvDocsAUTH1: TcxGridDBBandedColumn;
    tvDocsDESCR: TcxGridDBBandedColumn;
    tvDocsD_MODIF: TcxGridDBBandedColumn;
    tvDocsAUTH2: TcxGridDBBandedColumn;
    tvDocsEMAIL_SENT_TO: TcxGridDBBandedColumn;
    tvDocsEMAIL_FROM: TcxGridDBBandedColumn;
    tvDocsKEYWORDS: TcxGridDBBandedColumn;
    tvDocsDOC_NOTES: TcxGridDBBandedColumn;
    tvDocsEXTERNAL_ACCESS: TcxGridDBBandedColumn;
    tvDocsDOCID: TcxGridDBBandedColumn;
    tvDocsSEARCH: TcxGridDBBandedColumn;
    tvDocsDOCUMENT: TcxGridDBBandedColumn;
    lvDocs: TcxGridLevel;
    Panel4: TPanel;
    btnDocDelete: TBitBtn;
    btnPrecSearch: TBitBtn;
    btnDocAdd: TBitBtn;
    btnDocEdit: TcxButton;
    btnDocPrint: TcxButton;
    edDocSearch: TcxTextEdit;
    cbGroupExpanded: TcxCheckBox;
    cxLabel3: TcxLabel;
    tsContactNotes: TcxTabSheet;
    ContactNotesDock: TdxBarDockControl;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    eACN: TcxDBTextEdit;
    cbShowMatterTasks: TcxBarEditItem;
    tsContacts: TcxTabSheet;
    tvDocsIs_Conflict: TcxGridDBBandedColumn;
    pnlPassportNo: TPanel;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    cxDBRichEdit1: TcxDBRichEdit;
    mlNotes: TcxDBRichEdit;
    procedure aNewExecute(Sender: TObject);
    procedure qPhoneBookAfterScroll(DataSet: TDataSet);
    procedure vtTreeCollapsing(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var Allowed: Boolean);
    procedure vtTreePaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure aFindExecute(Sender: TObject);
    procedure vtTreeGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aEditExecute(Sender: TObject);
    procedure aDataSetFirstUpdate(Sender: TObject);
    procedure aDataSetFirstExecute(Sender: TObject);
    procedure aDataSetPriorExecute(Sender: TObject);
    procedure aDataSetNextExecute(Sender: TObject);
    procedure aDataSetLastExecute(Sender: TObject);
    procedure aDataSetLastUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure aDeleteUpdate(Sender: TObject);
    procedure aSnapshotExecute(Sender: TObject);
    procedure aLetterExecute(Sender: TObject);
    procedure aSendEMailUpdate(Sender: TObject);
    procedure aSendEMailExecute(Sender: TObject);
    procedure aBrowseURLUpdate(Sender: TObject);
    procedure aBrowseURLExecute(Sender: TObject);
    procedure aPIMExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aRecentHolderExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure aRelationshipNewExecute(Sender: TObject);
    procedure aRelationshipDeleteExecute(Sender: TObject);
    procedure aRelationshipDeleteUpdate(Sender: TObject);
    procedure aViewShowAllMattersDataExecute(Sender: TObject);
    procedure aViewShowAllMattersDataUpdate(Sender: TObject);
    procedure aViewShowMatterDataUpdate(Sender: TObject);
    procedure aViewShowMatterDataExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aShowFieldNamesUpdate(Sender: TObject);
    procedure aShowFieldNamesExecute(Sender: TObject);
    procedure aContactNotesInsertUpdate(Sender: TObject);
    procedure aContactNotesEditUpdate(Sender: TObject);
    procedure aContactNotesDeleteUpdate(Sender: TObject);
    procedure tsGroupsShow(Sender: TObject);
    procedure rsRelationshipsShow(Sender: TObject);
    procedure tsCustomDataShow(Sender: TObject);
    procedure tsMatterDataShow(Sender: TObject);
    procedure tsTrackingShow(Sender: TObject);
    procedure aRelationshipOpenExecute(Sender: TObject);
    procedure aRelationshipOpenUpdate(Sender: TObject);
    procedure tsEventListShow(Sender: TObject);
    procedure tsMarketingShow(Sender: TObject);
    procedure tsOtherNamesShow(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure aPrintSelectedExecute(Sender: TObject);
    procedure actRelationshipMergeUpdate(Sender: TObject);
    procedure actRelationshipMergeExecute(Sender: TObject);
    procedure aPrintSelectedUpdate(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure eInternetEmailButtonClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnArchiveClick(Sender: TObject);
    procedure ppDBText32GetText(Sender: TObject; var Text: String);
    procedure ppDBText35GetText(Sender: TObject; var Text: String);
    procedure ppDBText34GetText(Sender: TObject; var Text: String);
    procedure ppDBText36GetText(Sender: TObject; var Text: String);
    procedure ppDBText37GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure eInternetWWWPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eInternetEmailPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tsPartyMatterShow(Sender: TObject);
    procedure btnDocEditClick(Sender: TObject);
    procedure btnDocAddClick(Sender: TObject);
    procedure pcBottomChange(Sender: TObject);
    procedure btnDocPrintClick(Sender: TObject);
    procedure ppLabel56GetText(Sender: TObject; var Text: String);
    procedure tvDocsDblClick(Sender: TObject);
    procedure edDocSearchPropertiesChange(Sender: TObject);
    procedure tmrDocSearchTimer(Sender: TObject);
    procedure FormMgrBeforeSubmitMessage(Sender: TObject;
      const MessageSite: IRwMapiMessageSite);
    procedure vtCustomDataGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure cbShowMatterDiaryClick(Sender: TObject);
    procedure tvContactNotesNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure tbarbtnOpenClientClick(Sender: TObject);
    procedure btnDocDeleteClick(Sender: TObject);
    procedure cxBarEditItem1Click(Sender: TObject);
  private
    FNName: Integer;
    FLastSearch: String;
    FFormCaption: String;
    FRecentActions: TList;
    FLimitToNMatter: Integer;
    FShowAllMatterData: Boolean;
    FShowFieldNames: Boolean;
    FShowDataOnlyGroup: String;
    FCustomDataShowing,
    FCustomMatterDataShowing: Boolean;
    FAttachDoc: Boolean;
    FAttachFileName: TStringList;
    FDiarySQL: string;

    function GetSearch: String;
    procedure SetSearch(const Value: String);
    { Private declarations }
    procedure LoadPartyData(AParty: String);
    procedure LoadMatterPartyData(AParty: String);
    procedure ResizeColumns(ATree: TVirtualStringTree);
    function GetShowMatterSpecific: Boolean;
    procedure SetShowMatterSpecific(const Value: Boolean);
    procedure UpdateRecentList();
    procedure OpenPhoneBook();
    function Find(): Boolean;
    procedure SetShowAllMatterData(const Value: Boolean);
    procedure updateControlsForMasterLink;
    procedure CheckAndSetControl(bChild : Boolean; bParent : Boolean; oControl : TWinControl);
    procedure RecentPhonebook(Sender: TObject);
    procedure DocDelete;

//    procedure OnShutdown(ASender: IRwMapiMessageSite);
//    procedure OnCreateMessage(ASender: IRwMapiMessageSite);
//    procedure OnSubmitted(ASender: IRwMapiMessageSite);
//    procedure BeforeSubmitMessage(ASender: IRwMapiMessageSite);
//    procedure OnNewMessage(ASender: IRwMapiMessageSite);
    procedure MakeDocSearch;
  public
    { Public declarations }
    procedure ChoosePhoneBook();

    property NName: Integer                   read FNName                 write FNName;
    property Search: String                   read GetSearch              write SetSearch;
    property ShowMatterSpecific: Boolean      read GetShowMatterSpecific  write SetShowMatterSpecific;
    property LimitToNMatter: Integer          read FLimitToNMatter        write FLimitToNMatter default 0;
    property ShowAllMatterData: Boolean       read FShowAllMatterData     write SetShowAllMatterData default false;
    property ShowDataOnlyGroup: String        read FShowDataOnlyGroup     write FShowDataOnlyGroup;
  end;

implementation

uses PhoneBookNew, AxiomData, citfunc, Desktop, ComOBJ, MiscFunc,
     ShellAPI, RelateNew, EditContactNoteDialog,DocNew,
     WorkFlowDataModule, WriteMerge, WorkFlowDataModuleMerge,
     MarketEventDataModule
//     , uRwSysUtils
     , uRwDateTimeUtils
     , uRwMapiUtils
     , uRwBoxes
     , uRwMapiMessage
     , uRwMapiProps
     , Clients
     , NSearch
     , FMXUtils;

{$R *.dfm}

type
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
  end;

var
   FPhoneBookSearch: TfrmPhoneBookSearch;


procedure TfrmPhoneBook.aNewExecute(Sender: TObject);
var
  LfrmPhoneBookNew: TfrmPhoneBookNew;
begin
  LfrmPhoneBookNew := TfrmPhoneBookNew.Create(Self);
  try
    LfrmPhoneBookNew.ShowMatterSpecific := False;
    if(LfrmPhoneBookNew.ShowModal() = mrOk) then
    begin
      Search := IntToStr(LfrmPhoneBookNew.NName);
      NName := LfrmPhoneBookNew.NName;
    end;
  finally
    FreeAndNil(LfrmPhoneBookNew);
  end;
end;

function TfrmPhoneBook.GetSearch: String;
begin
  Result := qPhoneBook.ParamByName('nname').AsString;
//  Result := qPhoneBook.ParamByName('search').AsString;
end;

procedure TfrmPhoneBook.LoadMatterPartyData(AParty: String);
var
  LMatter, LForm, LNode: PVirtualNode;
  LMatterData, LData: PFieldData;
  LNMatter: Integer;
  LDataForm: String;
  LShow: Boolean;
begin
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
            LDataForm             := qMatterDataFieldsDATAFORM.AsString;
            LForm                 := vtMatterData.AddChild(nil);
            LData                 := vtMatterData.GetNodeData(LForm);
            LData.Group           := AParty;
            LData.DataForm        := LDataForm;
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
            LMatterData.DataForm   := LDataForm;
          end;

          LNode := vtMatterData.AddChild(LMatter);
          LData := vtMatterData.GetNodeData(LNode);
          LData.NMatter      := LNMatter;
          LData.Group        := AParty;
          LData.DataForm     := LDataForm;
          LData.FieldName    := qMatterDataFieldsFIELDNAME.AsString;
          LData.FieldCaption := qMatterDataFieldsCAPTION.AsString;
          LData.FieldValue   := qMatterDataFieldsTEXTVALUE.AsString;

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
    ResizeColumns(vtMatterData);
  end;
end;

procedure TfrmPhoneBook.LoadPartyData(AParty: String);
var
  LParent, LNode: PVirtualNode;
  LData: PFieldData;
  ADataForm: string;
begin
   vtCustomData.BeginUpdate();
   try
      ADataForm := '';
      qDataFields.Close();
      qDataFields.ParamByName('partytype').AsString      := AParty;
      qDataFields.ParamByName('nunique').AsInteger       := NName;
      qDataFields.Open();
      try
         if(not qDataFields.Eof) then
         begin
{           LParent               := vtCustomData.AddChild(nil);
            LData                 := vtCustomData.GetNodeData(LParent);
            LData.Group           := AParty;
            LData.DataForm        := qDataFieldsDATAFORM.AsString;
            LData.DataFormCaption := qDataFieldsDATAFORMCAPTION.AsString;  }

            // AES 20/01/10  changed code to create the dataforms for each record
            while(not qDataFields.Eof) do
            begin
               if (ADataForm = '') or (ADataForm <> qDataFieldsDATAFORM.AsString) then
               begin
                  LParent               := nil;
                  LNode                 := nil;
                  LParent               := vtCustomData.AddChild(nil);
                  LData                 := vtCustomData.GetNodeData(LParent);
                  LData.Group           := AParty;
                  LData.DataForm        := qDataFieldsDATAFORM.AsString;
                  LData.DataFormCaption := qDataFieldsDATAFORMCAPTION.AsString;
                  ADataform := qDataFieldsDATAFORM.AsString;
               end;

               LNode                 := vtCustomData.AddChild(LParent);
               LData                 := vtCustomData.GetNodeData(LNode);
               LData.Group           := AParty;
               LData.DataForm        := qDataFieldsDATAFORM.AsString;
               LData.FieldName       := qDataFieldsFIELDNAME.AsString;
               LData.FieldCaption    := qDataFieldsCAPTION.AsString;
               LData.FieldValue      := qDataFieldsTEXTVALUE.AsString;
               LData.DataFormCaption := qDataFieldsDATAFORMCAPTION.AsString;
               qDataFields.Next();
               if (ADataForm = '') or (ADataForm <> qDataFieldsDATAFORM.AsString) then
                  vtCustomData.Expanded[LParent] := True;
         end;
         vtCustomData.Expanded[LParent] := True;
      end;
      finally
         qDataFields.Close();
      end;
   finally
      vtCustomData.EndUpdate();
      ResizeColumns(vtCustomData);
   end;
end;

procedure TfrmPhoneBook.qPhoneBookAfterScroll(DataSet: TDataSet);
var
   ASearch: string;
begin
  vtCustomData.RootNodeCount := 0;
  vtMatterData.RootNodeCount := 0;

  NName := qPhoneBook.FieldByName('NName').AsInteger;

//  Status.Panels[2].Text := qPhoneBookSEARCH.AsString;
  ASearch := qPhoneBook.FieldByName('SEARCH').AsString;
  if (Pos('&',ASearch)) > 0 then
     Insert('&', ASearch, Pos('&',ASearch));

  Caption := FFormCaption + ' - [' + ASearch + ']';

  if(qPhoneBook.FieldByName('GENDER').AsString <> '') then
  begin
    lName.Caption       := qPhoneBook.FieldByName('GENDER_NAMECAPTION').AsString        + ':';
    lNamed.Caption      := qPhoneBook.FieldByName('GENDER_TITLECAPTION').AsString       + ':';
    lShortName.Caption  := qPhoneBook.FieldByName('GENDER_SHORTNAMECAPTION').AsString   + ':';
    lLongName.Caption   := qPhoneBook.FieldByName('GENDER_LONGNAMECAPTION').AsString    + ':';
    lACN.Caption        := qPhoneBook.FieldByName('GENDER_ACNCAPTION').AsString         + ':';
    lOccupation.Caption := qPhoneBook.FieldByName('GENDER_OCCUPATIONCAPTION').AsString  + ':';
  end else
  begin
    lName.Caption       := 'Name/Company:';
    lNamed.Caption      := 'Named:';
    lShortName.Caption  := 'Short Name:';
    lLongName.Caption   := 'Long Name:';
    if SystemString('LOCALE_NAME') <> '' then
    begin
       lACN.Caption     := 'Company No:';
    end
    else
      lACN.Caption      := 'ACN:';
    lOccupation.Caption := 'Occupation:';
  end;

  lAddressStreetDefault.Visible := qPhoneBook.FieldByName('WHICHADDRESS').AsString = 'S';
  lAddressPostalDefault.Visible := qPhoneBook.FieldByName('WHICHADDRESS').AsString = 'P';
  lAddressDXDefault.Visible := qPhoneBook.FieldByName('WHICHADDRESS').AsString = 'D';
  lAddressCustomDefault.Visible := qPhoneBook.FieldByName('WHICHADDRESS').AsString = 'C';

{*  qGroups.Close();
  qGroups.ParamByName('nname').AsInteger := NName;
  qGroups.Open();
  while(not qGroups.Eof) do
  begin
    if(qGroupsOTHERPARTY.AsString = 'Y') then
    begin
      if((FShowDataOnlyGroup <> '') and (FShowDataOnlyGroup = qGroupsCATEGORY.AsString)) then
      begin
        LoadPartyData(qGroupsCATEGORY.AsString);
        LoadMatterPartyData(qGroupsCATEGORY.AsString);
      end else if(FShowDataOnlyGroup = '') then
      begin
        LoadPartyData(qGroupsCATEGORY.AsString);
        LoadMatterPartyData(qGroupsCATEGORY.AsString);
      end;
    end;
    qGroups.Next();
  end;
  qGroups.First();

  qRelationships.Close();
  qRelationships.ParamByName('search').AsString := Search;
  qRelationships.ParamByName('NNAME').AsInteger := FNName;
  qRelationships.ParamByName('NNAMEMASTER').AsInteger := qPhoneBook.FieldByName('NNAMEMASTER').AsInteger;
  qRelationships.Open();

  qContactNotes.Close();
  qContactNotes.ParamByName('nname').AsInteger := NName;
  qContactNotes.Open();
*}

  // other code
  qGroups.Close();
  FCustomDataShowing := False;
  FCustomMatterDataShowing := False;
  qContactNotes.Close();
  qRelationships.Close();

  if(Assigned(pcBottom.ActivePage.OnShow)) then
    pcBottom.ActivePage.OnShow(pcBottom.ActivePage);
end;

procedure TfrmPhoneBook.SetSearch(const Value: String);
begin
  if(Value <> Search) then
  begin
    qPhoneBook.Close();
//    qPhoneBook.ParamByName('search').AsString := Value;
    qPhoneBook.ParamByName('nname').AsString := Value;
    if(Visible) then
      OpenPhoneBook();
  end;
end;

procedure TfrmPhoneBook.vtCustomDataGetText(Sender: TBaseVirtualTree;
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

procedure TfrmPhoneBook.vtTreeCollapsing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var Allowed: Boolean);
begin
//  Allowed := False;
end;

procedure TfrmPhoneBook.vtTreePaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
begin
  if(Column = 0) then
  begin
    if(Node.ChildCount > 0) then
      TargetCanvas.Font.Style := [fsBold]
    else
      TargetCanvas.Font.Style := [];
  end;
end;

procedure TfrmPhoneBook.ChoosePhoneBook;
var
   ASearch: string;
begin
   if(Find()) then
   begin
      if qPhonebook.Active then
         ASearch := qPhonebook.FieldByName('NAME').AsString  //Search;
      else
         ASearch := TableString('PHONEBOOK','SEARCH', Search, 'NAME');
      if (Pos('&',ASearch)) > 0 then
         Insert('&', ASearch, Pos('&',ASearch));

      Self.Caption := 'Contact: ' + ASearch ; // qPhonebook.FieldByName('SEARCH').AsString;
      if frmDesktop.pagMainControl.ActivePageIndex = 0 then
         frmDesktop.AddFormToTab(Self, 1);
      if (not Visible) then
         Show();
   end
   else
      Close();
end;

procedure TfrmPhoneBook.cxBarEditItem1Click(Sender: TObject);
begin
     if (boolean(cbShowMatterTasks.EditValue) = True) then
   begin
      with qContactNotes do
      begin
         Close;
         SQL.Clear;
         SQL.Text := FDiarySQL + ' union '+
                     'SELECT d.rowid, d.ndiary, d.nmatter, d.start_dt, d.descr, '+
                     'd.creation_date, e.name as enteredby, d.entered_by as enteredbycode '+
                     'FROM diary d, employee e WHERE  d.nmatter in (select nmatter from matter where nclient = :nclient) '+
                     ' and e.code = d.entered_by  ORDER BY 4 desc ';
         ParamByName('nname').AsInteger := NName;
         ParamByName('nclient').AsInteger := qPhoneBook.FieldByName('nclient').AsInteger;
         Open;
      end;
   end
   else
   begin
      with qContactNotes do
      begin
         Close;
         SQL.Clear;
         SQL.Text := FDiarySQL + ' ORDER BY 4 desc ';
         ParamByName('nname').AsInteger := NName;
         Open;
      end;
   end;
end;

procedure TfrmPhoneBook.aFindExecute(Sender: TObject);
begin
  Find();
end;

procedure TfrmPhoneBook.vtTreeGetNodeDataSize(
  Sender: TBaseVirtualTree; var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TFieldData);
end;

procedure TfrmPhoneBook.FormCreate(Sender: TObject);
var
   lsStorageName: String;
   iMaxLength: integer;
begin
   Screen.Cursor := crSQLWait;
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);

  ShowMatterSpecific := False;
  vtCustomData.RootNodeCount := 0;
  vtMatterData.RootNodeCount := 0;
  FFormCaption := Caption;
  FRecentActions := TList.Create();
  pcBottom.ActivePage := tsAddress;
  FShowDataOnlyGroup := '';
  tsClient.TabVisible := False;
  tsClient.Visible := False;

  if dgGroups.Font.Size <> dmAxiom.GridFont then
      dgGroups.Font.Size := dmAxiom.GridFont;

  if dbgrRelationship.Font.Size <> dmAxiom.GridFont then
      dbgrRelationship.Font.Size := dmAxiom.GridFont;

  if grdMatterParty.Font.Size <> dmAxiom.GridFont then
      grdMatterParty.Font.Size := dmAxiom.GridFont;

  if dbgContactNotes.Font.Size <> dmAxiom.GridFont then
      dbgContactNotes.Font.Size := dmAxiom.GridFont;

  if grdParticipantEvents.Font.Size <> dmAxiom.GridFont then
      grdParticipantEvents.Font.Size := dmAxiom.GridFont;

  if grdOtherNames.Font.Size <> dmAxiom.GridFont then
      grdOtherNames.Font.Size := dmAxiom.GridFont;


  if(not Assigned(dmMarketEventDataModule)) then
     dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);

  tsaDDITIONAL.TabVisible := dmAxiom.Security.Phonebook.Tabs.Additional;
  tsNotes.TabVisible := dmAxiom.Security.Phonebook.Tabs.Notes;
  tsCustomData.TabVisible := dmAxiom.Security.Phonebook.Tabs.CustomData;
  tsMatterData.TabVisible := dmAxiom.Security.Phonebook.Tabs.MatterData;
  tsEventList.TabVisible := dmAxiom.Security.Phonebook.Tabs.Events;
  tsMarketing.TabVisible := dmAxiom.Security.Phonebook.Tabs.Marketing;
//  tsOther.TabVisible := dmAxiom.Security.Phonebook.Tabs.PhoneInternet;
  tsOtherNames.TabVisible := dmAxiom.Security.Phonebook.Tabs.OtherName;
  tsDocuments.TabVisible := dmAxiom.Security.Phonebook.Tabs.Documents;
  tsPartyMatter.TabVisible := dmAxiom.Security.Phonebook.Tabs.MatterParty;

  pnlDx.Visible := (SystemString('HideDXPanel') = 'N');
  pnlDOB.Visible := (SystemString('HideDOBPanel') = 'N');
  getLabel(lGender,'PHONEBOOK', 'GENDER', imaxLength, 'Type/Gender:');
  pnlNRIC.Visible := (SystemString('HideNRICPanel') = 'N');
  pnlPassportNo.Visible := (SystemString('HideNRICPanel') = 'N');

//  Self.Caption := 'Phonebook: ' + qPhonebook.FieldByName('SEARCH').AsString;
  btnArchive.Enabled := dmAxiom.Security.Phonebook.Archive;
  btnCreate.Enabled := dmAxiom.Security.Phonebook.Create;
  btnEditPhonebook.Enabled := dmAxiom.Security.Phonebook.Edit;
  btnDeletePhonebook.Enabled := dmAxiom.Security.Phonebook.Delete;
  FDiarySQL := qContactNotes.SQL.Text;

  grpCLLData.Visible := (Pos('CLINCH', UpperCase(SystemString('COMPANY')) ) > 0);

  if SystemString('LOCALE_NAME') <> '' then
  begin
      lStreetState.Caption := 'County';
      lPostalState.Caption := 'County';
      lCustomState.Caption := 'County';
      lblABN.Caption := 'LEI';
      lStreet.Caption := 'Client Address (Registered Office)';
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmPhoneBook.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryPartyMatters.Close;
   FreeAndNil(FPhoneBookSearch);

   freeAndNil(FRecentActions);
   try
      if tmrDocSearch.Enabled = True then
         tmrDocSearch.Enabled := False
   finally
       tmrdocSearch.Free;
   end;

   if (fsModal in FormState) then
      Action := caFree
   else
      RemoveFromDesktop(Self);
end;

procedure TfrmPhoneBook.aEditExecute(Sender: TObject);
var
  LfrmPhoneBookNew: TfrmPhoneBookNew;
begin
  LfrmPhoneBookNew := TfrmPhoneBookNew.Create(Self);

  try
    LfrmPhoneBookNew.NName := NName;
    LfrmPhoneBookNew.ShowMatterSpecific := ShowMatterSpecific;
    LfrmPhoneBookNew.LimitToNMatter     := LimitToNMatter;
    LfrmPhoneBookNew.ShowAllMatterData  := ShowAllMatterData;
    LfrmPhoneBookNew.ShowDataOnlyGroup  := ShowDataOnlyGroup;
    LfrmPhoneBookNew.bDoShow := True;

//    qPhoneBook.Close();
    LfrmPhoneBookNew.ShowModal();

    NName := LfrmPhoneBookNew.NName;
    Search := IntToStr(LfrmPhoneBookNew.NName);
  finally
//    qPhoneBook.Refresh;
    OpenPhoneBook;
    FreeAndNil(LfrmPhoneBookNew);
    updateControlsForMasterLink;
  end;
end;

procedure TfrmPhoneBook.aDataSetFirstUpdate(Sender: TObject);
var
  LA: TDataSetAction;
begin
  LA := TDataSetAction(Sender);
  if(Assigned(LA.DataSource)) then
    LA.Enabled := not LA.DataSource.DataSet.Bof
  else
    LA.Enabled := False;
end;

procedure TfrmPhoneBook.aDataSetFirstExecute(Sender: TObject);
begin
  TDataSetAction(Sender).DataSource.DataSet.First();
end;

procedure TfrmPhoneBook.aDataSetPriorExecute(Sender: TObject);
begin
  TDataSetAction(Sender).DataSource.DataSet.Prior();
end;

procedure TfrmPhoneBook.aDataSetNextExecute(Sender: TObject);
begin
  TDataSetAction(Sender).DataSource.DataSet.Next();
end;

procedure TfrmPhoneBook.aDataSetLastExecute(Sender: TObject);
begin
  TDataSetAction(Sender).DataSource.DataSet.Last();
end;

procedure TfrmPhoneBook.aDataSetLastUpdate(Sender: TObject);
var
  LA: TDataSetAction;
begin
  LA := TDataSetAction(Sender);
  if(Assigned(LA.DataSource)) then
    LA.Enabled := not LA.DataSource.DataSet.Eof
  else
    LA.Enabled := False;
end;

procedure TfrmPhoneBook.ResizeColumns(ATree: TVirtualStringTree);
//var
//  LColumn: TVirtualTreeColumn;
//  LWidth: Integer;
//  LFont: TFont;
begin
{  ATree.BeginUpdate();
  try
    ATree.Header.AutoFitColumns();

    LFont := Canvas.Font;
    try
      Canvas.Font := ATree.Header.Font;
      LColumn := ATree.Header.Columns[0];
      LWidth  := Canvas.TextWidth(LColumn.Text) + 20;
      if(LWidth > LColumn.Width) then
        LColumn.Width := LWidth;
    finally
      Canvas.Font := LFont;
    end;
  finally
    ATree.EndUpdate();
  end;}
end;


procedure TfrmPhoneBook.FormShow(Sender: TObject);
begin
  if(not qPhoneBook.Active) then
    OpenPhoneBook();

//  updateControlsForMasterLink;
  Screen.Cursor := crDefault;
end;

function TfrmPhoneBook.GetShowMatterSpecific: Boolean;
begin
  Result := tsMatterData.Visible;
end;

procedure TfrmPhoneBook.SetShowMatterSpecific(const Value: Boolean);
begin
  tsMatterData.Visible    := Value;
  tsMatterData.TabVisible := Value;
  if(Value) then
    pcBottom.ActivePage     := tsMatterData;
end;

procedure TfrmPhoneBook.aDeleteExecute(Sender: TObject);
var
   sMessage : String;
begin
  //qDeleteCheck.ParamByName('search').Value := Search;
 //qDeleteCheck.ParamByName('nname').Value := NName;
  //qDeleteCheck.Open();

  if (not qPhoneBook.FieldByName('nclient').IsNull) then
  begin
      MessageDlg('This phone book entry can not be deleted. It is a client.', mtWarning, [mbOK], 0);
      exit;
  end;
    if(not checkChildRecords('PHONEBOOK' {PHONEBOOKCHECKTABLES,PHONEBOOKCHECKFIELDS,PHONEBOOKCHECKKEYS},
       sMessage,NName)) then
      MessageDlg('This phone book entry can not be deleted.' + sMessage, mtWarning, [mbOK], 0)
    else
    begin
      if MessageDlg('Are you sure you want to delete the phone book entry:'#13#10'''' + qPhoneBook.FieldByName('SEARCH').AsString +'''?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      begin
        qPhoneBook.Delete();
        Self.Close;
      end;
    end;

end;

procedure TfrmPhoneBook.aDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := qPhoneBook.Active;
end;

procedure TfrmPhoneBook.aSnapshotExecute(Sender: TObject);
begin
  frmDesktop.AddSnapshot(71, IntToStr(NName) + ' ' + qPhoneBook.FieldByName('SEARCH').AsString);
end;

procedure TfrmPhoneBook.aLetterExecute(Sender: TObject);
var
   LfrmWriteMerge: TfrmWriteMerge;
   LSql: TStringList;
begin
   if(not Assigned(dmWorkflowDataModule)) then
      dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
   LSql := TStringList.Create();
   try
      LSql.Assign(dmWorkFlowDataModuleMerge.qPartyDetails.SQL);

      // get rid of blank lines..
      while(LSql[LSql.Count - 1] = '') do
         LSql.Delete(LSql.Count - 1);

      // delete the where clause.
//      LSql.Delete(LSql.Count - 1);

      // delete party type
      LSql.Delete(1);

      LSql.Add(' and p.nname = ' + IntToStr(NName));

      LfrmWriteMerge := TfrmWriteMerge.Create(Self);
      LfrmWriteMerge.FromPhoneBook := True;
      LfrmWriteMerge.SQL := LSQL.Text;
   finally
      LSql.Free();
   end;
   LfrmWriteMerge.Show;
end;

procedure TfrmPhoneBook.aSendEMailUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not qPhoneBook.FieldByName('EMAIL').IsNull;
end;

procedure TfrmPhoneBook.aSendEMailExecute(Sender: TObject);
var
   Msg: IRwMapiMessage;
//   MsgForm: TFrmNewMessage;
   OldCursor: TCursor;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   MsgClass: string;
begin
   if not dmAxiom.MapiSession.Active then
   begin
      OldCursor := Screen.Cursor;
      Screen.Cursor := crHourGlass;
      try
         dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
         dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;  // 'Outlook';
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
      MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
      Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
      Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;

      FormMgr.ShowMessage(Msg);
   end;
   finally

   end;
end;

procedure TfrmPhoneBook.aBrowseURLUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not qPhoneBook.FieldByName('WWW').IsNull;
end;

procedure TfrmPhoneBook.aBrowseURLExecute(Sender: TObject);
begin
  ShellExecute(Handle, nil, PChar(qPhonebook.FieldByName('WWW').AsString), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmPhoneBook.aPIMExecute(Sender: TObject);
var
  LContact: ContactItem;
  LFolder: MAPIFolder;
  LNameSpace: NameSpace;
begin
  try
{    OutlookApplication.Connect();
    try
      LNameSpace := OutlookApplication.GetNamespace('MAPI');

      LFolder    := LNameSpace.GetDefaultFolder(olFolderContacts);
      LContact   := LFolder.Items.Add(olContactItem) as ContactItem;

      LContact.FullName           := qPhoneBook.FieldByName('GivenNames').AsString + ' ' + qPhoneBook.FieldByName('LASTNAME').AsString;
      LContact.CompanyName        := qPhoneBook.FieldByName('NAME').AsString;
      LContact.FirstName          := qPhoneBook.FieldByName('GivenNames').AsString;
      LContact.LastName           := qPhoneBook.FieldByName('LASTNAME').AsString;
      LContact.Title              := qPhoneBook.FieldByName('SALUTATION').AsString;

      LContact.HomeTelephoneNumber     := qPhoneBook.FieldByName('HOMEPHONE').AsString;
      LContact.BusinessTelephoneNumber := qPhoneBook.FieldByName('WORKPHONE').AsString;
      LContact.BusinessFaxNumber       := qPhoneBook.FieldByName('FAX').AsString;
      LContact.MobileTelephoneNumber   := qPhoneBook.FieldByName('MOBILE').AsString;

      LContact.HomeAddressStreet      := qPhoneBook.FieldByName('ADDRESS').AsString;
      LContact.HomeAddressCity        := qPhoneBook.FieldByName('SUBURB').AsString;
      LContact.HomeAddressCountry     := qPhoneBook.FieldByName('COUNTRY').AsString;
      LContact.HomeAddressPostalCode  := qPhoneBook.FieldByName('POSTCODE').AsString;

      LContact.BusinessAddressStreet     := qPhoneBook.FieldByName('POSTALADDRESS').AsString;
      LContact.BusinessAddressCity       := qPhoneBook.FieldByName('POSTALSUBURB').AsString;
      LContact.BusinessAddressCountry    := qPhoneBook.FieldByName('POSTALCOUNTRY').AsString;
      LContact.BusinessAddressPostalCode := qPhoneBook.FieldByName('POSTALPOSTCODE').AsString;

      if(qPhoneBook.FieldByName('WHICHADDRESS').AsString <> '') then
      begin
        case qPhoneBook.FieldByName('WHICHADDRESS').AsString[1] of
          'S': LContact.SelectedMailingAddress := olHome;
          'P': LContact.SelectedMailingAddress := olBusiness;
          'D': LContact.SelectedMailingAddress := olNone;
        end;
      end;

      LContact.Email1Address := qPhoneBook.FieldByName('EMAIL').AsString;
      LContact.WebPage       := qPhoneBook.FieldByName('WWW').AsString;
      LContact.Birthday      := qPhoneBook.FieldByName('DOB').Value;

      LContact.Save();
    finally
      LContact   := nil;
      LNameSpace := nil;
      OutlookApplication.Disconnect();
    end;              }
  except
//    on E: Exception do
//      MsgErr('P.I.M. Error:' + #13#13 + E.Message);
  end;
end;

procedure TfrmPhoneBook.aExitExecute(Sender: TObject);
begin
  Close();
end;

procedure TfrmPhoneBook.aRecentHolderExecute(Sender: TObject);
begin
  Search := TAction(Sender).Hint;
end;

procedure TfrmPhoneBook.UpdateRecentList();
VAR
   PhonebookItem: TdxBarButton;
begin
   qRecent.Close();
   qRecent.ParamByName('author').AsString := dmAxiom.UserID;
   qRecent.Open();
   try
      while(not qRecent.Eof) do
      begin
         PhonebookItem := TdxBarButton.Create(Self);
         PhonebookItem.Caption := qRecent.FieldByName('NNAME').AsString + ' ' + qRecent.FieldByName('SEARCH').AsString;
         PhonebookItem.ImageIndex := 30;
         PhonebookItem.Category := 2;
         dxBarSubItemRecent.ItemLinks.Add.Item := PhonebookItem;
         PhonebookItem.OnClick := RecentPhonebook;
         qRecent.Next;
      end;
   finally
      qRecent.Close;
   end;
end;

{procedure TfrmPhoneBook.UpdateRecentList();
var
  LAction: TAction;
  i: Integer;
begin
  qRecent.Close();
  qRecent.ParamByName('author').AsString := dmAxiom.UserID;
  qRecent.Open();
  try
    LAction := Nil;
    while(not qRecent.Eof) do
    begin
      if(qRecentIDX.AsInteger > FRecentActions.Count) then
      begin
        LAction := TAction.Create(ActionManager);
        FRecentActions.Add(LAction);
        LAction.ActionList := ActionManager;
        LAction.OnExecute := aRecentHolder.OnExecute;
        LAction.Category  := aRecentHolder.Category;
      end else
        LAction := FRecentActions[qRecentIDX.AsInteger - 1];

      LAction.Caption   := qRecentCODE.AsString;
      LAction.Hint      := qRecentCODE.AsString;
      LAction.Tag       := qRecentIDX.AsInteger;
      LAction.Enabled   := True;
      LAction.Visible   := True;
      qRecent.Next();
    end;
    if(Assigned(LAction)) then
    begin
      if(LAction.Tag < FRecentActions.Count) then
      begin
        i := LAction.Tag;
        while(i < FRecentActions.Count) do
        begin
          LAction := FRecentActions[i];
          LAction.Enabled := False;
          LAction.Visible := False;
          Inc(i);
        end;
      end;
    end;
  finally
    qRecent.Close();

    amHelper.DeleteItem(aRecentHolder.Category);
    amHelper.AddCategory(aRecentHolder.Category,amHelper.FindItemByCaption('File'));

    aRecentHolder.Visible := False;
  end;
end; }

procedure TfrmPhoneBook.FormDestroy(Sender: TObject);
begin
{   FreeAndNil(FRecentActions);
   try
      if tmrDocSearch.Enabled = True then
         tmrDocSearch.Enabled := False
   finally
       tmrdocSearch.Free;
   end;   }
end;

procedure TfrmPhoneBook.OpenPhoneBook();
var
   LIndex: Integer;
   Count: Integer;
   sCustomAddress, ASearch: string;
   imaxLength: integer;
begin
   if(Search = '0') then
      Self.Close
 //    Exit
   else
   begin
    qActiveEmployees.Open();
    qPhoneBook.Close();
    qPhoneBook.Open();
    if(qPhoneBook.IsEmpty) then
    begin
      MessageDlg('The phone book entry ''' + Search + ''' can not be found, it may have been deleted.', mtWarning, [mbOK], 0);
      qPhoneBook.Close();
      qPhoneBook.ParamByName('Search').AsString := FLastSearch;
      qPhoneBook.Open();
      if(qPhoneBook.IsEmpty) then
        Close();
    end else
    begin
      sCustomAddress := GetDisplayName('PHONEBOOK', 'CUSTOM ADDRESS');
      iMaxLength := 0;
      GetLabel(lPhoneWork,'PHONEBOOK','WORKPHONE',imaxLength, 'Work');
      GetLabel(lPhoneMobile,'PHONEBOOK','MOBILE',imaxLength, 'Mobile');
      GetLabel(lPhoneFax,'PHONEBOOK','FAX',imaxLength, 'FAX');
      GetLabel(lPhoneHome,'PHONEBOOK','HOMEPHONE',imaxLength, 'Home');
      GetLabel(lPhoneDirect, 'PHONEBOOK', 'DIRECT', imaxLength, 'Direct');

      if sCustomAddress <> '' then
         lblCustomAddress.Caption := sCustomAddress;
      if Self.Parent <> nil then
      begin
         ASearch := qPhonebook.FieldByName('NAME').AsString;
         if (Pos('&',ASearch)) > 0 then
            Insert('&', ASearch, Pos('&',ASearch));

         if frmDesktop.pagMainControl.ActivePageIndex = 0 then
            frmDesktop.pageForms.ActivePage.Caption := 'Contact: ' + ASearch;
      end;
      ReopenListUpdate('PHONEBOOK', IntToStr(NName));
  //    ReopenListUpdate('PHONEBOOK', Search);
      UpdateRecentList();
      FLastSearch := Search;

      tsClient.TabVisible := False;

      if qPhoneBook.FieldByName('ARCHIVED').AsString = 'Y' then
      begin
         btnEditPhonebook.Enabled := False;
         txtArchived.Visible := ivAlways;
         btnArchive.Hint := 'Unarchive Phonebook Record';
      end;

      tbarbtnOpenClient.Enabled := (not qPhoneBook.FieldByName('nclient').IsNull);
      qClient.Close();
      qClient.ParamByName('nclient').AsInteger := qPhoneBook.FieldByName('nclient').AsInteger;
      qClient.Open();
      if not qClient.Eof then
      begin
         tsClient.TabVisible := True;

         qClientGroups.ParamByName('NCLIENT').Value := qPhoneBook.FieldByName('nclient').AsInteger;;
         qClientGroups.Open();

         dfIntroducedBy.Text := TableString('EMPLOYEE','CODE',qClient.FieldByName('INTRODUCER').AsString,'NAME');
         dfPartner.Text := TableString('EMPLOYEE','CODE',qClient.FieldByName('PARTNER').AsString,'NAME');
         dfFeeCode.Text := TableString('FEECODE','CODE',qClient.FieldByName('FEECODE').AsString,'DESCR');
         dfBillTemplate.Text := TableString('BILLTEMPLATE','CODE',qClient.FieldByName('BILLTEMPLATE').AsString,'DESCR');

         Count := 0;
         lbClientGroups.Clear();
         try
            while(not qClientGroups.Eof) do
            begin
               lbClientGroups.AddItem(qClientGroups.FieldByName('CATEGORY').AsString);
               lbClientGroups.Items.Items[count].Enabled := False;

               // Determine if to check
               if qClientGroups.FieldByName('HASGROUP').AsString = 'True' then
                  lbClientGroups.Items.Items[count].State := cbsChecked;

               Inc(count);
               qClientGroups.Next();
            end;
         finally
            qClientGroups.Close();
         end;
      end;
      // Event population
      {
      dmMarketEventDataModule.qryParticipantEvents.ParamByName('NNAME').AsInteger := FNNAME;
      dmMarketEventDataModule.qryParticipantEvents.Open();
      }
      qryParticipantEvents.Close;
      qryParticipantEvents.ParamByName('NNAME').AsInteger := FNNAME;
      qryParticipantEvents.Open();

      // Load interest table and obtain related interest
      qryPhoneBookInterest.close;
      qryPhoneBookInterest.Params[0].AsInteger := NName;
      qryPhoneBookInterest.Open;

//      frmDesktop.dxBarWindowList.Items.AddObject(Self.Caption, Self);

      lstInterest.Clear;
      while not qryPhoneBookInterest.Eof do
      begin
         lstInterest.Items.Add(qryPhoneBookInterest.FieldByName('interest').AsString);
//        (lstInterest.Items.Add).Caption := qryPhoneBookInterest.FieldByName('interest').AsString;
        qryPhoneBookInterest.Next;
      end;


      qryFirmContacts.Close;
      qryFirmContacts.ParamByName('p_nname').AsInteger := NName;
      qryFirmContacts.Open;
      lstFirmContacts. Clear;
      while not qryFirmContacts.Eof do
      begin
         lstFirmContacts.Items.Add(qryFirmContacts.FieldByName('name').AsString);
//        (lstFirmContacts.Items.Add).Caption := qryFirmContacts.FieldByName('name').AsString;
        qryFirmContacts.Next;
      end;

      // Load industry table and obtain description to display
      if (not varIsNull(qPhoneBook.FieldByName('IndustryCode').AsString)) OR (qPhoneBOok.FieldByName('IndustryCode').AsString <> '') then
      begin
        qryIndustry.Open;
        while not qryIndustry.Eof do
        begin
          if qryIndustry.FieldByName('code').AsInteger = qPhoneBook.FieldByName('IndustryCode').AsInteger then
          begin
            dbIndustry.Text := qryIndustry.FieldByName('Descr').AsString;
            break;
          end;
          qryIndustry.Next;
        end;
      end;

      //
      // Load marketing related data
      //
      // Get Referral Code and referredBy code
      // Look up refmarketreferral table for specific table
      if not varIsNull(qPhoneBook.FieldByName('ReferralCode').AsString) AND (qPhoneBook.FieldByName('ReferralCode').AsString <> '')then
      begin
        if qryReferral.Active = True then
          qryReferral.Close;
        qryReferral.SQL.Clear;
        qryReferral.SQL.Text := 'SELECT ReferralType, Descr FROM MarketReferral WHERE Code = ' + qPhoneBook.FieldByName('ReferralCode').AsString;
        qryReferral.Open;

        edReferralType.Text := qryReferral.FieldByName('Descr').AsString;
        if qryReferral.FieldByName('ReferralType').AsString = 'CLIENT' then
        begin
          qryMarketing.SQL.Text := 'SELECT nclient, name FROM client WHERE code = ' + QuotedStr(qPhoneBook.FieldByName('ReferredBy').AsString);
          qryMarketing.Open;
          edReferredBy.Text := qryMarketing.FieldByName('name').AsString;
        end
        else if qryReferral.FieldByName('ReferralType').AsString = 'CONTACT' then
        begin
          qryMarketing.SQL.Text := 'SELECT nclient, search FROM phonebook WHERE nname = ' + QuotedStr(qPhoneBook.FieldByName('ReferredBy').AsString);
          qryMarketing.Open;
          edReferredBy.Text := qryMarketing.FieldByName('search').AsString;
        end
        else if qryReferral.FieldByName('ReferralType').AsString = 'EMPLOYEE' then
        begin
          qryMarketing.SQL.Text := 'SELECT code, name FROM employee WHERE code = ' + QuotedStr(qPhoneBook.FieldByName('ReferredBy').AsString);
          qryMarketing.Open;
          edReferredBy.Text := qryMarketing.FieldByName('name').AsString;
        end
        else if qryReferral.FieldByName('ReferralType').AsString = 'OTHER' then
        begin
          edReferredBy.Text := qPhoneBook.FieldByName('ReferredBy').AsString;
        end;
      end;
      // End of Referral Type and Referred By

      // Load Maintainer
      if qPhoneBook.FieldByName('ReferralMaintainer').AsString <> '' then
      begin
        qryEmployee.SQL.Clear;
        qryEmployee.SQL.Text := 'SELECT code, name FROM employee';
        qryEmployee.SQL.Add(' WHERE code = ' + QuotedStr(qPhoneBook.FieldByName('ReferralMaintainer').AsString));
        qryEmployee.Open;
        if not qryEmployee.Eof then
          edMaintainer.Text := qryEmployee.FieldByName('name').AsString;
      end;

      //Load Relationship data
      with qryMarketing do
      begin
         Close;
         SQL.Text := 'SELECT descr FROM relationship_type WHERE code = ' +
                     QuotedStr(qPhoneBook.FieldByName('RELATIONSHIP_TYPE').AsString);
         Open;
         edRelationshipType.Text := FieldByName('descr').AsString;

         Close;
         SQL.Text := 'SELECT descr FROM RELATIONSHIP_STATUS WHERE code = ' +
                     QuotedStr(qPhoneBook.FieldByName('RELATIONSHIP_STATUS').AsString);
         Open;
         edRelationshipStatus.Text := FieldByName('descr').AsString;

         Close;
         SQL.Text := 'SELECT descr FROM RELATIONSHIP_ACTION WHERE code = ' +
                     QuotedStr(qPhoneBook.FieldByName('RELATIONSHIP_ACTION').AsString);
         Open;
         edRelationshipAction.Text := FieldByName('descr').AsString;

         Close;
      end;
      // End of Marketing related data
    end;
  end;
  updateControlsForMasterLink;
end;

procedure TfrmPhoneBook.aRelationshipNewExecute(Sender: TObject);
var
  LfrmRelateNew: TfrmRelateNew;
begin
  LfrmRelateNew := TfrmRelateNew.Create(Self);
  try
    LfrmRelateNew.DisplaySource(qPhoneBook.FieldByName('Search').AsString, NName);
    qRelationships.Close();
    qRelationships.Open();
  finally
    FreeAndNil(LfrmRelateNew);
  end;
end;

procedure TfrmPhoneBook.aRelationshipDeleteExecute(Sender: TObject);
var // copied from old phone book.. and fixed up..
  qTmp: TUniQuery;
  LRelationship: string;
begin
  if (qRelationships.FieldByName('DELETEABLE').AsString = 'Y') then
    begin
      if MessageDlg('Are you sure you want to delete the relationship to ''' + qRelationshipsBACKWARD.AsString + '''?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      begin
        qTmp := TUniQuery.Create(nil);
        try
          // Delete the other side of this relationship
          qTmp.Connection := dmAxiom.uniInsight;
          qTmp.SQL.Add('SELECT FORWARD_DESC AS OTHERSIDE');
          qTmp.SQL.Add('  FROM RELATEDICT');
          qTmp.SQL.Add('  WHERE BACKWARD_DESC = :Relationship');
          qTmp.SQL.Add('UNION');
          qTmp.SQL.Add('SELECT BACKWARD_DESC AS OTHERSIDE');
          qTmp.SQL.Add('  FROM RELATEDICT');
          qTmp.SQL.Add('  WHERE FORWARD_DESC = :Relationship');
          qTmp.ParamByName('Relationship').AsString := qRelationshipsRELATIONSHIP.AsString;
          qTmp.Open;
          if not qTmp.IsEmpty then
          begin
            LRelationship := qTmp.FieldByName('OTHERSIDE').AsString;
            qTmp.Close;
            qTmp.SQL.Clear;
            qTmp.SQL.Add('DELETE FROM RELATIONSHIP');
            qTmp.SQL.Add('  WHERE FORWARD = :Forward');
            qTmp.SQL.Add('    AND BACKWARD = :Backward');
            qTmp.SQL.Add('    AND RELATIONSHIP = :Relationship');
            qTmp.ParamByName('FORWARD').AsString      := qRelationshipsBACKWARD.AsString;
            qTmp.ParamByName('BACKWARD').AsString     := qRelationshipsFORWARD.AsString;
            qTmp.ParamByName('RELATIONSHIP').AsString := LRelationship;
            qTmp.ExecSQL;
          end;
        finally
          FreeAndNil(qTmp);
        end;
        // Delete this relationship
        qRelationships.Delete();
      end;

    end
  else
    MessageDlg('This relationship can not be deleted.', mtWarning, [mbOK], 0);
end;

procedure TfrmPhoneBook.aRelationshipDeleteUpdate(Sender: TObject);
begin
  if(not qRelationships.IsEmpty) then
    TAction(Sender).Enabled := qRelationshipsDELETEABLE.AsString = 'Y'
  else
    TAction(Sender).Enabled := False;
end;

function TfrmPhoneBook.Find: Boolean;
begin
  if(not Assigned(FPhonebookSearch)) then
    FPhoneBookSearch := TfrmPhoneBookSearch.Create(Application.MainForm);
  Result := FPhoneBookSearch.ShowModal() = mrOk;
  if(Result) then
  begin
    NName := FPhoneBookSearch.NName;
    Search := IntToStr(FPhoneBookSearch.NName);
//    Search := FPhoneBookSearch.Search;
  end;
end;

procedure TfrmPhoneBook.aViewShowAllMattersDataExecute(Sender: TObject);
begin
  ShowAllMatterData := not TAction(Sender).Checked;
end;

procedure TfrmPhoneBook.aViewShowAllMattersDataUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := tsMatterData.TabVisible and (not (LimitToNMatter = 0));
  TAction(Sender).Checked := ShowAllMatterData or (LimitToNMatter = 0);
end;

procedure TfrmPhoneBook.aViewShowMatterDataUpdate(Sender: TObject);
begin
  TAction(Sender).Checked := tsMatterData.TabVisible;
end;

procedure TfrmPhoneBook.aViewShowMatterDataExecute(Sender: TObject);
begin
  ShowMatterSpecific := not TAction(Sender).Checked;
end;

procedure TfrmPhoneBook.SetShowAllMatterData(const Value: Boolean);
begin
  tsGroups.Visible := Value;
  tsGroups.TabVisible := Value;
  FShowAllMatterData := Value;
  vtMatterData.BeginUpdate();
  qGroups.DisableControls();
  try
    vtMatterData.RootNodeCount := 0;
    qGroups.First();
    while(not qGroups.Eof) do
    begin
      if((FShowDataOnlyGroup <> '') and (FShowDataOnlyGroup = qGroupsCATEGORY.AsString)) then
        LoadMatterPartyData(qGroupsCATEGORY.AsString)
      else if(FShowDataOnlyGroup = '') then
        LoadMatterPartyData(qGroupsCATEGORY.AsString);
      qGroups.Next();
    end;
  finally
    vtMatterData.EndUpdate();
    qGroups.EnableControls();
  end;
end;

procedure TfrmPhoneBook.aPrintExecute(Sender: TObject);
//var
//  LReport: TqrPhoneBookEntry;
begin
  qryPhoneBookRpt.Close;

  qryPhoneBookRpt.ParamByName('nname').AsInteger := NName;
  qryPhoneBookRpt.Open;

  qryGroupingsRpt.Close;
  qryGroupingsRpt.ParamByName('nname').AsInteger := NName;
  qryGroupingsRpt.Open;

  qRelationshipsRpt.Close;
  qRelationshipsRpt.ParamByName('search').AsString := Search;
  qRelationshipsRpt.ParamByName('NNAME').AsInteger := FNName;
  qRelationshipsRpt.ParamByName('NNAMEMASTER').AsInteger := qPhoneBook.FieldByName('NNAMEMASTER').AsInteger;
  qRelationshipsRpt.Open;
  rptPhonebook.Print;

{
  LReport := TqrPhoneBookEntry.Create(Self);
  try
    //LReport.Search := Search;
    LReport.Nname  := NName;
    LReport.Preview();
  finally
    FreeAndNil(LReport);
  end;         }
end;

procedure TfrmPhoneBook.aShowFieldNamesUpdate(Sender: TObject);
begin
  TAction(Sender).Checked := FShowFieldNames;
end;

procedure TfrmPhoneBook.aShowFieldNamesExecute(Sender: TObject);
begin
  if(FShowFieldNames) then
  begin
    FShowFieldNames := False;
    ResetDataFieldHints(Self);
  end else
  begin
    FShowFieldNames := True;
    SetDataFieldHints(Self,'*PARTYTYPE*.PARTY');
  end;
end;

procedure TfrmPhoneBook.aContactNotesInsertUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := qContactNotes.Active;
end;

procedure TfrmPhoneBook.aContactNotesEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not qContactNotes.Eof;
end;

procedure TfrmPhoneBook.aContactNotesDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not qContactNotes.Eof;
end;

procedure TfrmPhoneBook.updateControlsForMasterLink;
var
  loQuery : TUniQuery;
begin
   loQuery := nil;

   try
      loQuery := TUniQuery.Create(nil);
      loQuery.Connection := dmAxiom.uniInsight;

      loQuery.SQL.Text := strCheckForMasterLink.Strings.Text;
      loQuery.ParamByName('search').AsString := qPhoneBook.FieldByName('SEARCH').AsString;
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

         CheckAndSetControl(loQuery.FieldByName('CHILDSUBURB').IsNull, loQuery.FieldByName('PARENTSUBURB').IsNull, eStreetSuburb);
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

         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALSUBURB').IsNull, loQuery.FieldByName('PARENTPOSTALSUBURB').IsNull, ePostalSuburb);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALSTATE').IsNull, loQuery.FieldByName('PARENTPOSTALSTATE').IsNull, cbPostalState);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALPOSTCODE').IsNull, loQuery.FieldByName('PARENTPOSTALPOSTCODE').IsNull, ePostalPostCode);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALCOUNTRY').IsNull, loQuery.FieldByName('PARENTPOSTALCOUNTRY').IsNull, cbPostalCountry);
         CheckAndSetControl(loQuery.FieldByName('CHILDEMAIL').IsNull, loQuery.FieldByName('PARENTEMAIL').IsNull, eInternetEmail);
         CheckAndSetControl(loQuery.FieldByName('CHILDWWW').IsNull, loQuery.FieldByName('PARENTWWW').IsNull, eInternetWWW);
         CheckAndSetControl(loQuery.FieldByName('CHILDSALUTATION').IsNull, loQuery.FieldByName('PARENTSALUTATION').IsNull, eSalutation);
         CheckAndSetControl(loQuery.FieldByName('CHILDGIVENNAMES').IsNull, loQuery.FieldByName('PARENTGIVENNAMES').IsNull, eGivenNames);
         CheckAndSetControl(loQuery.FieldByName('CHILDLASTNAME').IsNull, loQuery.FieldByName('PARENTLASTNAME').IsNull, eLastName);

         mCustomAddress.Color := clInfoBk;
         if (loQuery.FieldByName('CHILDCUSTADDRESS').IsNull) then
           if (not loQuery.FieldByName('PARENTCUSTADDRESS').IsNull) then
             mCustomAddress.Color := clSkyBlue;

         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTSUBURB').IsNull, loQuery.FieldByName('PARENTCUSTSUBURB').IsNull, eCustomSuburb);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTSTATE').IsNull, loQuery.FieldByName('PARENTCUSTSTATE').IsNull, eCustomState);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTPOSTCODE').IsNull, loQuery.FieldByName('PARENTCUSTPOSTCODE').IsNull, eCustomPostCode);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTCOUNTRY').IsNull, loQuery.FieldByName('PARENTCUSTCOUNTRY').IsNull, eCustomCountry);  
      end;    //  end if
   finally
      FreeAndNil(loQuery);
   end;    //  end try-finally
end;

procedure TfrmPhoneBook.CheckAndSetControl(bChild : Boolean; bParent : Boolean; oControl : TWinControl);
begin
  TWinControl(oControl).Brush.Color := clInfoBk;

  if (bChild) then
    if (not bParent) then
      TWinControl(oControl).Brush.Color := clSkyBlue;

  TWinControl(oControl).Repaint;
end;

procedure TfrmPhoneBook.tsGroupsShow(Sender: TObject);
begin
  if(not qGroups.Active) then
  begin
    qGroups.ParamByName('nname').AsInteger := NName;
    qGroups.Open();
    qGroups.First();
  end;
end;

procedure TfrmPhoneBook.rsRelationshipsShow(Sender: TObject);
begin
  if(not qRelationships.Active) then
  begin
    qRelationships.ParamByName('search').AsString := Search;
    qRelationships.ParamByName('NNAME').AsInteger := FNName;
    qRelationships.ParamByName('NNAMEMASTER').AsInteger := qPhoneBook.FieldByName('NNAMEMASTER').AsInteger;
    qRelationships.Open();
  end;
end;

procedure TfrmPhoneBook.tsCustomDataShow(Sender: TObject);
begin
  if(not FCustomDataShowing) then
  begin
    if(not qGroups.Active) then
    begin
      qGroups.ParamByName('nname').AsInteger := NName;
      qGroups.Open();
    end;

    while(not qGroups.Eof) do
    begin
      if(qGroupsOTHERPARTY.AsString = 'Yes') then
      begin
        if((FShowDataOnlyGroup <> '') and (FShowDataOnlyGroup = qGroupsCATEGORY.AsString)) then
        begin
          LoadPartyData(qGroupsCATEGORY.AsString);
        end else if(FShowDataOnlyGroup = '') then
        begin
          LoadPartyData(qGroupsCATEGORY.AsString);
        end;
      end;
      qGroups.Next();
    end;
    qGroups.First();
    FCustomDataShowing := True;
  end;
end;

procedure TfrmPhoneBook.tsMatterDataShow(Sender: TObject);
begin
  if(not FCustomMatterDataShowing) then
  begin
    if(not qGroups.Active) then
    begin
      qGroups.ParamByName('nname').AsInteger := NName;
      qGroups.Open();
    end;

    while(not qGroups.Eof) do
    begin
      if(qGroupsOTHERPARTY.AsString = 'Yes') then
      begin
        if((FShowDataOnlyGroup <> '') and (FShowDataOnlyGroup = qGroupsCATEGORY.AsString)) then
        begin
          LoadMatterPartyData(qGroupsCATEGORY.AsString);
        end else if(FShowDataOnlyGroup = '') then
        begin
          LoadMatterPartyData(qGroupsCATEGORY.AsString);
        end;
      end;
      qGroups.Next();
    end;
    qGroups.First();
    FCustomMatterDataShowing := True;
  end;
end;

procedure TfrmPhoneBook.tsTrackingShow(Sender: TObject);
begin
  if(not qContactNotes.Active) then
  begin
    qContactNotes.SQL.Text := FDiarySQL + ' ORDER BY d.start_dt desc ';
    qContactNotes.ParamByName('nname').AsInteger := NName;
    qContactNotes.Open();
  end;
end;

procedure TfrmPhoneBook.aRelationshipOpenExecute(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
  LfrmPhonebook := TfrmPhonebook.Create(Application);
  LfrmPhonebook.Search := qRelationships.FieldByName('nchild').AsString;
//  LfrmPhonebook.Search := qRelationshipsSEARCH.AsString;

  LfrmPhonebook.Show();
end;

procedure TfrmPhoneBook.aRelationshipOpenUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not qRelationships.IsEmpty;
end;

procedure TfrmPhoneBook.tsEventListShow(Sender: TObject);
begin
   if(not Assigned(dmMarketEventDataModule)) then
      dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);
//   if(not dmMarketEventDataModule.qryParticipantEvents.Active) then
//   begin
      {

      dmMarketEventDataModule.qryParticipantEvents.Close();
      dmMarketEventDataModule.qryParticipantEvents.ParamByName('nname').AsInteger := FNName;
      dmMarketEventDataModule.qryParticipantEvents.Open();
      }
      qryParticipantEvents.Close();
      qryParticipantEvents.ParamByName('nname').AsInteger := FNName;
      qryParticipantEvents.Open();

//      qryParticipantEvents.First();
//   end;
end;

procedure TfrmPhoneBook.tsMarketingShow(Sender: TObject);
begin
   if(not Assigned(dmMarketEventDataModule)) then
      dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);

    // Load interest table and obtain related interest
    if qryPhoneBookInterest.Active = True then
      qryPhoneBookInterest.Close;
    qryPhoneBookInterest.Params[0].AsInteger := NName;
    qryPhoneBookInterest.Open;

    lstInterest.Clear;
    qryPhoneBookInterest.First;
    while not qryPhoneBookInterest.Eof do
    begin
      lstInterest.Items.Add(qryPhoneBookInterest.FieldByName('interest').AsString);
//      (lstInterest.Items.Add).Caption := qryPhoneBookInterest.FieldByName('interest').AsString;
      qryPhoneBookInterest.Next;
    end;

    // Load industry table and obtain description to display
    if qryIndustry.Active = True then
      qryIndustry.Close;
    if (not varIsNull(qPhoneBook.FieldByName('IndustryCode').AsString)) OR (qPhoneBOok.FieldByName('IndustryCode').AsString <> '') then
    begin
      qryIndustry.Open;
      while not qryIndustry.Eof do
      begin
        if qryIndustry.FieldByName('code').AsInteger = qPhoneBook.FieldByName('IndustryCode').AsInteger then
        begin
          dbIndustry.Text := qryIndustry.FieldByName('Descr').AsString;
          break;
        end;
        qryIndustry.Next;
      end;
    end;

    //
    // Load marketing related data
    //
    // Get Referral Code and referredBy code
    // Look up refmarketreferral table for specific table
    if not varIsNull(qPhoneBook.FieldByName('ReferralCode').AsString) AND (qPhoneBook.FieldByName('ReferralCode').AsString <> '')then
    begin
      if qryReferral.Active = True then
        qryReferral.Close;
      qryReferral.SQL.Clear;
      qryReferral.SQL.Text := 'SELECT ReferralType, Descr FROM MarketReferral WHERE Code = ' + qPhoneBook.FieldByName('ReferralCode').AsString;
      qryReferral.Open;

      edReferralType.Text := qryReferral.FieldByName('Descr').AsString;
      if qryReferral.FieldByName('ReferralType').AsString = 'CLIENT' then
      begin
        qryMarketing.SQL.Text := 'SELECT nclient, name FROM client WHERE code = ' + QuotedStr(qPhoneBook.FieldByName('ReferredBy').AsString);
        qryMarketing.Open;
        edReferredBy.Text := qryMarketing.FieldByName('name').AsString;
      end
      else if qryReferral.FieldByName('ReferralType').AsString = 'CONTACT' then
      begin
        qryMarketing.SQL.Text := 'SELECT nclient, search FROM phonebook WHERE nname = ' + QuotedStr(qPhoneBook.FieldByName('ReferredBy').AsString);
        qryMarketing.Open;
        edReferredBy.Text := qryMarketing.FieldByName('search').AsString;
      end
      else if qryReferral.FieldByName('ReferralType').AsString = 'EMPLOYEE' then
      begin
        qryMarketing.SQL.Text := 'SELECT code, name FROM employee WHERE code = ' + QuotedStr(qPhoneBook.FieldByName('ReferredBy').AsString);
        qryMarketing.Open;
        edReferredBy.Text := qryMarketing.FieldByName('name').AsString;
      end
      else if qryReferral.FieldByName('ReferralType').AsString = 'OTHER' then
      begin
        edReferredBy.Text := qPhoneBook.FieldByName('ReferredBy').AsString;
      end;
    end;
    // End of Referral Type and Referred By

    if qryEmployee.Active = True then
      qryEmployee.Close;
    // Load Maintainer
    if not varIsNull(qPhoneBook.FieldByName('ReferralMaintainer').AsString) then
    begin
      qryEmployee.SQL.Clear;
      qryEmployee.SQL.Text := 'SELECT code, name FROM employee';
      qryEmployee.SQL.Add(' WHERE code = ' + QuotedStr(qPhoneBook.FieldByName('ReferralMaintainer').AsString));
      qryEmployee.Open;
      if not qryEmployee.Eof then
        edMaintainer.Text := qryEmployee.FieldByName('name').AsString;
    end;
    // End of Marketing related data
end;

procedure TfrmPhoneBook.tsOtherNamesShow(Sender: TObject);
begin
  if qryListChildren.Active = False then
  begin
    qryListChildren.Params[0].AsInteger := NName;
    qryListChildren.Open;
  end
  else
    qryListChildren.Refresh;
end;


procedure TfrmPhoneBook.actEditExecute(Sender: TObject);
var
  LfrmRelateNew: TfrmRelateNew;
begin
  LfrmRelateNew := TfrmRelateNew.Create(Self);
  try
    LfrmRelateNew.DisplaySource(qPhoneBook.FieldByName('Search').AsString, NName, True, qRelationships.FieldByName('NCHILD').AsInteger);
    qRelationships.Close();
    qRelationships.Open();
  finally
    FreeAndNil(LfrmRelateNew);
  end;
end;

procedure TfrmPhoneBook.actEditUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not qRelationships.IsEmpty;
end;


procedure TfrmPhoneBook.aPrintSelectedExecute(Sender: TObject);
//var
//  LReport: TqrPhoneBookEntry;
begin
  qryPhoneBookRpt.Close;

  qryPhoneBookRpt.ParamByName('nname').AsInteger := qRelationships.FieldByName('nchild').AsInteger;
  qryPhoneBookRpt.Open;

  qryGroupingsRpt.Close;
  qryGroupingsRpt.ParamByName('nname').AsInteger := qRelationships.FieldByName('nchild').AsInteger;
  qryGroupingsRpt.Open;

  qRelationshipsRpt.Close;

  rptPhonebook.Print;
{  LReport := TqrPhoneBookEntry.Create(Self);
  try
    LReport.Nname  := qRelationships.FieldByName('nchild').AsInteger;
    LReport.Preview();
  finally
    FreeAndNil(LReport);
  end;  }
end;

procedure TfrmPhoneBook.actRelationshipMergeUpdate(Sender: TObject);
begin
   actRelationshipMerge.Enabled := (not qRelationships.IsEmpty);
end;

procedure TfrmPhoneBook.actRelationshipMergeExecute(Sender: TObject);
var
   LfrmWriteMerge: TfrmWriteMerge;
   LSql: TStringList;
   i,LCount: integer;
begin
   LSql := TStringList.Create();
   try
      LSql.Assign(qRelationshipDetails.SQL);

      // get rid of blank lines..
      while(LSql[LSql.Count - 1] = '') do
         LSql.Delete(LSql.Count - 1);

      // delete the where clause.
      LCount := LSql.Count;
      for i := LCount downto LCount - 2 do
         LSql.Delete(LSql.Count - 1);

      LSql.Add('p.nname = ' + IntToStr(NName));
      LSql.Add('AND ');
      LSql.Add('M.nname = ' + qRelationships.FieldByName('NCHILD').AsString);

      LfrmWriteMerge := TfrmWriteMerge.Create(Self);
      LfrmWriteMerge.FromPhoneBook := False;
      LfrmWriteMerge.SQL := LSQL.Text;
   finally
      LSql.Free();
   end;
   LfrmWriteMerge.Show; 
end;

procedure TfrmPhoneBook.aPrintSelectedUpdate(Sender: TObject);
begin
   aPrintSelected.Enabled := (not qRelationships.IsEmpty);
end;

procedure TfrmPhoneBook.dxBarButton20Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmPhoneBook.dxBarButton21Click(Sender: TObject);
begin
   fmEditContactNoteDialog := TfmEditContactNoteDialog.Create(self);
   try
      dmAxiom.uniInsight.StartTransaction;
      fmEditContactNoteDialog.ContactDateTime := Now();
      fmEditContactNoteDialog.ContactNote     := '';
      fmEditContactNoteDialog.NName           := NName;
      fmEditContactNoteDialog.NewNote         := True;
      try
         if(fmEditContactNoteDialog.ShowModal() = mrOk) then
         begin
            qContactNotes.Refresh();
         end;
      finally
         dmAxiom.uniInsight.Commit;
      end;
   finally
      FreeAndNil(fmEditContactNoteDialog);
   end;
end;

procedure TfrmPhoneBook.dxBarButton22Click(Sender: TObject);
begin
   fmEditContactNoteDialog := TfmEditContactNoteDialog.Create(self);
   try
      dmAxiom.uniInsight.StartTransaction;
      fmEditContactNoteDialog.ContactDateTime := qContactNotes.FieldByName('START_DT').AsDateTime;
      fmEditContactNoteDialog.ContactNote     := qContactNotes.FieldByName('DESCR').AsString;
      fmEditContactNoteDialog.NName           := NName;
      fmEditContactNoteDialog.NDiary          := qContactNotes.FieldByName('NDIARY').AsInteger;
      try
         if(fmEditContactNoteDialog.ShowModal() = mrOk) then
         begin
            qContactNotes.Refresh();
         end;
      finally
         dmAxiom.uniInsight.Commit;
      end;
   finally
       FreeAndNil(fmEditContactNoteDialog);
   end;
end;

procedure TfrmPhoneBook.dxBarButton23Click(Sender: TObject);
begin
   if MessageDlg('Are you sure you want to delete the selected contact note?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      qContactNotes.Delete();

end;

procedure TfrmPhoneBook.eInternetEmailButtonClick(Sender: TObject);
begin
   ShellExecute(Handle, nil, PChar('mailto:' + qPhonebook.FieldByName('EMAIL').AsString), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmPhoneBook.RecentPhonebook(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
  LfrmPhonebook := TfrmPhonebook.Create(Self);
  LfrmPhonebook.Tag := imgPHONEBOOK;
  LfrmPhonebook.Search := ReplaceAndAnd(Copy((Sender as TdxBarButton).Caption, 1, Pos(' ', (Sender as TdxBarButton).Caption)-1));
  if frmDesktop.pagMainControl.ActivePageIndex = 0 then
      frmDesktop.AddFormToTab(LfrmPhonebook,1);
  LfrmPhonebook.Show();
end;

procedure TfrmPhoneBook.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssCtrl in Shift) and (key = VK_F4) then
      Self.Close;
end;

procedure TfrmPhoneBook.btnArchiveClick(Sender: TObject);
begin
   with dmAxiom.qryTmp do
   begin
      if qPhonebook.FieldByName('ARCHIVED').AsString = 'N' then
      begin
         if MsgAsk('Archive Contact - ' + qPhonebook.FieldByName('SEARCH').AsString) = IDYES then
         begin
            Close;
            SQL.Text := 'UPDATE PHONEBOOK SET ARCHIVED = ''Y'', ARCHIVED_BY = '+
                        QuotedStr(dmAxiom.UserID) + ', ARCHIVED_WHEN = SYSDATE '+
                        ' WHERE NNAME = ' + qPhonebook.FieldByName('NNAME').AsString ;
            ExecSQL;
            btnEditPhonebook.Enabled := False;
            txtArchived.Visible := ivAlways;
            btnArchive.Hint := 'Unarchive Contact Record';
         end;
      end
      else
      begin
         if MsgAsk('UnArchive Contact - ' + qPhonebook.FieldByName('SEARCH').AsString) = IDYES then
         begin
            Close;
            SQL.Text := 'UPDATE PHONEBOOK SET ARCHIVED = ''N'' WHERE NNAME = ' + qPhonebook.FieldByName('NNAME').AsString ;
            ExecSQL;
            btnEditPhonebook.Enabled := True;
            txtArchived.Visible := ivNever;
            btnArchive.Hint := 'Archive Contact Record';
         end;
      end;
   end;
end;

procedure TfrmPhoneBook.ppDBText32GetText(Sender: TObject;
  var Text: String);
begin
   Text := Text + ':';
end;

procedure TfrmPhoneBook.ppDBText35GetText(Sender: TObject;
  var Text: String);
begin
    Text := Text + ':';
end;

procedure TfrmPhoneBook.ppDBText34GetText(Sender: TObject;
  var Text: String);
begin
   Text := Text + ':';
end;

procedure TfrmPhoneBook.ppDBText36GetText(Sender: TObject;
  var Text: String);
begin
   Text := Text + ':';
end;

procedure TfrmPhoneBook.ppDBText37GetText(Sender: TObject;
  var Text: String);
begin
   Text := Text + ':';
end;

procedure TfrmPhoneBook.ppLabel3GetText(Sender: TObject; var Text: String);
begin
   Text := SystemString('COMPANY');
end;

procedure TfrmPhoneBook.ppLabel6GetText(Sender: TObject; var Text: String);
begin
//   Text := Application.ExeName; 
end;

procedure TfrmPhoneBook.eInternetWWWPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   ShellExecute(Handle, nil, PChar(qPhonebook.FieldByName('WWW').AsString), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmPhoneBook.eInternetEmailPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   ShellExecute(Handle, nil, PChar('mailto:' + TcxDBButtonEdit(Sender).Text), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmPhoneBook.tsPartyMatterShow(Sender: TObject);
begin
//   qryPartyMatters.Close;
   if (not qryPartyMatters.Active) then
   begin
      qryPartyMatters.ParamByName('nname').AsInteger := NName;
      qryPartyMatters.Open;
   end
   else
      qryPartyMatters.Refresh;
end;

procedure TfrmPhoneBook.btnDocEditClick(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
begin
   if tvDocs.Controller.SelectedRowCount = 1 then
   begin
      try
         LfrmDocNew := TfrmDocNew.Create(Self);
         LfrmDocNew.ADocId := qryDocs.FieldByName('docid').AsInteger;
         LfrmDocNew.NName := NName;
         LfrmDocNew.Editing := True;
         if LfrmDocNew.ShowModal = mrOk then
      except
         ;
      end;
   end;
end;

procedure TfrmPhoneBook.btnDocAddClick(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
begin

   try
      LfrmDocNew := TfrmDocNew.Create(Self);
      LfrmDocNew.NewCopyDoc := False;
      LfrmDocNew.NName :=  nname;
      if LfrmDocNew.ShowModal = mrOk then
         qryDocs.Refresh;
//      TfrmDocNew.Create(Self).FileID := qryMatter.FieldByName('FILEID').AsString;
   finally
      LfrmDocNew.Free;
   end;
end;

procedure TfrmPhoneBook.btnDocDeleteClick(Sender: TObject);
begin
   DocDelete;
end;

procedure TfrmPhoneBook.pcBottomChange(Sender: TObject);
begin
   if pcBottom.ActivePage = tsDocuments then
   begin
      if (not qryDocs.Active) then
      begin
         qrydocs.ParamByName('nname').AsInteger := NName;
         qryDocs.Open;
      end
      else
      begin
         qryDocs.Close;
         qryDocs.Open;
      end;
   end;
end;

procedure TfrmPhoneBook.btnDocPrintClick(Sender: TObject);
begin
   qryDocList.Close;
   qrydocList.ParamByName('nname').AsInteger := nname;
   qryDocList.Open;
   rptDocList.Print;
end;

procedure TfrmPhoneBook.cbShowMatterDiaryClick(Sender: TObject);
begin
{   if (cbShowMatterDiary.Checked = True) then
   begin
      with qContactNotes do
      begin
         Close;
         SQL.Clear;
         SQL.Text := FDiarySQL + ' union '+
                     'SELECT d.rowid, d.ndiary, d.nmatter, d.start_dt, d.descr, '+
                     'd.creation_date, e.name as enteredby, d.entered_by as enteredbycode '+
                     'FROM diary d, employee e WHERE  d.nmatter in (select nmatter from matter where nclient = :nclient) '+
                     ' and e.code = d.entered_by  ORDER BY 4 desc ';
         ParamByName('nname').AsInteger := NName;
         ParamByName('nclient').AsInteger := qPhoneBook.FieldByName('nclient').AsInteger;
         Open;
      end;
   end
   else
   begin
      with qContactNotes do
      begin
         Close;
         SQL.Clear;
         SQL.Text := FDiarySQL + ' ORDER BY 4 desc ';
         ParamByName('nname').AsInteger := NName;
         Open;
      end;
   end;     }
end;

procedure TfrmPhoneBook.ppLabel56GetText(Sender: TObject;
  var Text: String);
begin
   Text := qPhonebook.FieldByName('name').AsString;
end;

procedure TfrmPhoneBook.tvContactNotesNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
   case AButtonIndex of
      NBDI_INSERT:
      begin
         fmEditContactNoteDialog := TfmEditContactNoteDialog.Create(self);
         try
            dmAxiom.uniInsight.StartTransaction;
            fmEditContactNoteDialog.ContactDateTime := Now();
            fmEditContactNoteDialog.ContactNote     := '';
            fmEditContactNoteDialog.NName           := NName;
            fmEditContactNoteDialog.NewNote         := True;
            try
               if(fmEditContactNoteDialog.ShowModal() = mrOk) then
               begin
                  qContactNotes.Refresh();
               end;
            finally
               dmAxiom.uniInsight.Commit;
            end;
         finally
            FreeAndNil(fmEditContactNoteDialog);
         end;
         ADone := True;
      end;
      NBDI_EDIT:
      begin
         fmEditContactNoteDialog := TfmEditContactNoteDialog.Create(self);
         try
            dmAxiom.uniInsight.StartTransaction;
            fmEditContactNoteDialog.ContactDateTime := qContactNotes.FieldByName('START_DT').AsDateTime;
            fmEditContactNoteDialog.ContactNote     := qContactNotes.FieldByName('DESCR').AsString;
            fmEditContactNoteDialog.NName           := NName;
            fmEditContactNoteDialog.NDiary          := qContactNotes.FieldByName('NDIARY').AsInteger;
            try
               if(fmEditContactNoteDialog.ShowModal() = mrOk) then
               begin
                  qContactNotes.Refresh();
               end;
            finally
               dmAxiom.uniInsight.Commit;
            end;
         finally
             FreeAndNil(fmEditContactNoteDialog);
         end;
         ADone := True;
      end;
      NBDI_DELETE:
      begin
          if MessageDlg('Are you sure you want to delete the selected contact note?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
            qContactNotes.Delete();
          ADone := True;
      end;
   end;
end;

procedure TfrmPhoneBook.tvDocsDblClick(Sender: TObject);
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

   with qryDocs do
   begin
      if (not IsEmpty) then
      begin
         if (not FieldByName('URL').IsNull) then
         begin
            AHandle := ExecuteFile(FieldByName('URL').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
            if AHandle < 33 then
               MsgInfo('Unable to open Link. - ' + DocErrMsg);
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
                     Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite);
                     // Display the message in a Form Manager form.
                     // A Form Manager Form is more flexible than the default mapi form

                     // get a form manager
//                     FormMgr := dmAxiom.MapiSession.GetFormMgr;
//                     FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);

                     // get the last known size and position of a form this type
                     FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 250, 300);

                     SiteStatus := 0;
                     ViewStatus := 0;
                     MsgClass := 'IPM.Note';
                     Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
                     SiteStatus := stCopy
                        + stMove + stSubmit + stDeleteIsMove
                        + stSave + stNewMessage;
               //      FormMgr.ShowMessage(Msg, FormRect, SiteStatus);
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
            AHandle := ExecuteFile(qryDocs.FieldByName('PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
            if AHandle < 33 then
               AHandle := ExecuteFile(qryDocs.FieldByName('Display_PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
               if AHandle < 33 then
                  MsgInfo('Unable to open Document. - ' +DocErrMsg);
//            ExecuteFile(FieldByName('PATH').AsString, '', '.', SW_SHOW);
            UpdateModBy(InttoStr(SelRec));
         end;
      end;
      Refresh; // Close;
      if cbGroupExpanded.Checked then
         grdDocs.FocusedView.DataController.Groups.FullExpand;
//      RestoreSelectedItems;
   end;
end;

procedure TfrmPhoneBook.edDocSearchPropertiesChange(Sender: TObject);
begin
   tmrDocSearch.Enabled := True;
end;

procedure TfrmPhoneBook.tbarbtnOpenClientClick(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
  LfrmClients := TfrmClients.Create(Self);
  LfrmClients.Tag := imgCLIENT;
  frmDesktop.AddFormToTab(LfrmClients, 1);
  LfrmClients.DisplayClient(qPhonebook.FieldByName('NCLIENT').AsInteger);
end;

procedure TfrmPhoneBook.tmrDocSearchTimer(Sender: TObject);
begin
   tmrDocSearch.Enabled := False;
   MakeDocSearch;
end;

procedure TfrmPhoneBook.MakeDocSearch;
begin
with qryDocs do
   begin
      Close;
      Sql.Clear;
      Sql.Text := 'SELECT doc.DOCid, NMATTER,DOC_NAME, D_CREATE, AUTH1, D_MODIF, PATH,DESCR, FILEID, DOC_CODE, '+
                  'IMAGEINDEX, FILE_EXTENSION, EMAIL_SENT_TO,''DATAFILEPATH'',null as DATAFORM, '+
                  'null as TEMPLATELINEID,''FROMDOC'' as source, auth2, display_path, URL, '+
                  'tablevalue(''preccategory'',''npreccategory'',nvl(npreccategory,0),''descr'') as npreccategory , '+
                  'tablevalue(''precclassification'',''nprecclassification'',nvl(nprecclassification,0),''descr'') as nprecclassification, external_access '+
                  'FROM doc, phonebook_doc pd '+
                  'WHERE pd.nname = :nname AND pd.docid = doc.docid ';
      if edDocSearch.Text <> '' then
         SQL.Text := Sql.Text + ' and CONTAINS(dummy,'+ QuotedStr('%'+ edDocSearch.Text + '%') + ', 1) > 0 ';
      Sql.Text := Sql.Text + ' order by 4 desc, 5 desc ';
      ParamByName('nname').AsInteger := NName;
      try
         Open;
      except
      //
      end;
   end;
end;

procedure TfrmPhoneBook.FormMgrBeforeSubmitMessage(Sender: TObject;
  const MessageSite: IRwMapiMessageSite);
var
   sSubject: string;
   x, i: integer;
begin
   if FAttachDoc then
   begin
      sSubject := MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString;
      MessageSite.MapiMessage.PropByName(PR_SUBJECT).Value :=
                 MessageSite.MapiMessage.PropByName(PR_SUBJECT).Value;
      MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);
   end;
end;

procedure TfrmPhoneBook.DocDelete;
var
  sFileToDelete, sRenamedFile: string;
  sSQL: string;
  bDeleteFile: boolean;
begin
  	sFileToDelete := qryDocs.FieldByName('DISPLAY_PATH').AsString;
   bDeleteFile := False;
   if (sFileToDelete <> '') then
   begin
  	   if MessageDlg('Are you sure you want to delete: ' + ExtractFileName(sFileToDelete) + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  	   begin
         if (MessageDlg('Do you wish to remove the associated file '+qryDocs.FieldByName('DISPLAY_PATH').AsString+' from the file system?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
         begin
            if dmAxiom.Security.Document.DeleteFile then
            begin
               if not(DeleteFile(sFileToDelete)) then
        	         MsgErr('Could not delete the file. Please check that the file is not open in another application!')
            end
            else
            begin
               sRenamedFile := sFileToDelete + '.del-'+ FormatDateTime('d_mm_yyyyhhmm', Now);
               RenameFile(sFileToDelete, sRenamedFile);
            end;
         end;

         try
            dmAxiom.uniInsight.StartTransaction;
            sSQL := 'DELETE FROM DOC WHERE DOCID = :DOCID';
            with dmAxiom.qryTmp do
            begin
               SQL.Clear;
               SQL.Text := sSQL;
               ParamByName('docid').AsInteger :=qryDocs.FieldByName('docid').AsInteger;
               Execute;
            end;

         finally
            dmAxiom.uniInsight.Commit;
            qryDocs.Close;
            qryDocs.Open;
//            PlaySound('Delete');
         end;
      end;
   end
   else
   begin
      try
         dmAxiom.uniInsight.StartTransaction;
         tvDocs.DataController.BeginUpdate;
         sSQL := 'DELETE FROM DOC WHERE DOCID = :DOCID';
         with dmAxiom.qryTmp do
         begin
            SQL.Clear;
            SQL.Text := sSQL;
            ParamByName('docid').AsInteger :=qryDocs.FieldByName('docid').AsInteger;
            Execute;
         end;
      finally
         dmAxiom.uniInsight.Commit;
         qryDocs.Close;
         qryDocs.Open;
         tvDocs.DataController.EndUpdate;
      end;
   end;
   if cbGroupExpanded.Checked then
     grdDocs.FocusedView.DataController.Groups.FullExpand;
end;

end.
