unit Clients;

interface

uses
  Windows, Forms, SysUtils, Graphics, Vcl.Dialogs, System.Classes,
  Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer,
  cxEdit, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalendar, cxCurrencyEdit, cxTextEdit, cxRichEdit, cxMaskEdit,
  cxImageComboBox, cxBlobEdit, cxCheckBox, cxButtonEdit, Vcl.Menus,
  Vcl.ComCtrls, cxLabel, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxBar, raCodMod, ppModule, uRwMAPIFormManager, ppReport, ppSubRpt, dxPSCore,
  dxPScxCommon, dxBarExtItems, cxBarEditItem, cxClasses, System.ImageList,
  Vcl.ImgList, Vcl.Controls, stringz, ppBands, ppParameter,
  ppDesignLayer, ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, System.Actions,
  Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan, DBAccess, Uni, MemDS,
  Vcl.Buttons, cxListView, cxSplitter, cxGridBandedTableView,
  cxGridDBBandedTableView, VirtualTrees, cxCustomListBox, cxCheckListBox,
  cxMemo, cxDBEdit, cxButtons, cxRadioGroup, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxPC, cxImage, cxGroupBox, Vcl.ExtCtrls, cxDBLabel, Vcl.DBCtrls,
  Variants, uRwMapiInterfaces, ppTypes, cxGridExportLink, dxCore, dxPSDBTCLnk;



const
  CLIENTCHECKTABLES: array[0..3] of string = ('MATTER','ARCHIVE','DOCREG','DOCREGITEM');
  CLIENTCHECKFIELDS:  array[0..3] of string = ('NCLIENT','NCLIENT','NCLIENT','NCLIENT');
  CLIENTCHECKKEYS:    array[0..3] of string = ('FILEID','FILEID','NDOCREG','NDOCUMENT');

  StreetAddressTab = 'Street Address';
  PostalAddressTab = 'Postal Address';
  CustomAddressTab = 'Custom Address';
  DXTab            = 'DX';

type
  TfrmClients = class(TForm)
    qryMatters: TUniQuery;
    dsMatters: TUniDataSource;
    qryTmpLedger: TUniQuery;
    qryTmpSQL: TUniQuery;
    qrySundLedger: TUniQuery;
    qryFeesLedger: TUniQuery;
    qryPhoneBook: TUniQuery;
    dsPhoneBook: TUniDataSource;
    qryArchived: TUniQuery;
    dsArchived: TUniDataSource;
    dsNotes: TUniDataSource;
    qryNotes: TUniQuery;
    qryUpdate: TUniQuery;
    qryGroups: TUniQuery;
    qryGroupings: TUniQuery;
    qryTmpLedgerREPORTER: TStringField;
    qryTmpLedgerCREATED: TDateTimeField;
    qryTmpLedgerBANK: TStringField;
    qryTmpLedgerREFNO: TStringField;
    qryTmpLedgerDESCR: TStringField;
    qryTmpLedgerAUTHOR: TStringField;
    qryTmpLedgerPARTNER: TStringField;
    qryTmpLedgerBILLED: TStringField;
    qryTmpLedgerINVOICE: TIntegerField;
    qryTmpLedgerDEBIT: TFloatField;
    qryTmpLedgerCREDIT: TFloatField;
    qryTmpLedgerTRUSTDR: TFloatField;
    qryTmpLedgerTRUSTCR: TFloatField;
    qryTmpLedgerDEBTDR: TFloatField;
    qryTmpLedgerDEBTCR: TFloatField;
    qryTmpLedgerDISBDR: TFloatField;
    qryTmpLedgerDISBCR: TFloatField;
    qryTmpLedgerSUNDDR: TFloatField;
    qryTmpLedgerSUNDCR: TFloatField;
    qryTmpLedgerFEESDR: TFloatField;
    qryTmpLedgerFEESCR: TFloatField;
    qryTmpLedgerFILEID: TStringField;
    qryTmpLedgerTYPE: TStringField;
    qryTmpLedgerREASON: TStringField;
    qryTmpLedgerROWID: TStringField;
    qOtherClients: TUniQuery;
    ActionManager1: TActionManager;
    actNew: TAction;
    actEdit: TAction;
    actPrint: TAction;
    actDelete: TAction;
    ppDocReg: TppDBPipeline;
    ppClient: TppDBPipeline;
    qryPacket: TUniQuery;
    dsPacket: TUniDataSource;
    qryDocReg: TUniQuery;
    qryDocReg2: TUniQuery;
    dsDocReg2: TDataSource;
    dsDocReg: TUniDataSource;
    qryMarketing: TUniQuery;
    qryClientBalances: TUniQuery;
    dsClientBalances: TUniDataSource;
    qryClientBalancesUNBILL_FEES: TFloatField;
    qryClientBalancesUNBILL_DISB: TFloatField;
    qryClientBalancesCL_TRUST_BAL: TFloatField;
    qryClientBalancesTRUST_BAL: TFloatField;
    qryClientBalancesDEBTORS: TFloatField;
    qryClientBalancesBILL_FEES: TFloatField;
    qryMatterCount: TUniQuery;
    dsMatterCount: TUniDataSource;
    qryArchMatterCount: TUniQuery;
    dsArchMatterCount: TUniDataSource;
    actNewClient: TAction;
    actEditClient: TAction;
    actDeleteClient: TAction;
    actNewMatter: TAction;
    actEditMatter: TAction;
    actFindMatter: TAction;
    actSnapshot: TAction;
    actNavFirst: TAction;
    actNavPrevious: TAction;
    actNavNext: TAction;
    actNavLast: TAction;
    actPositionReport: TAction;
    actComboByDate: TAction;
    actMatterArchive: TAction;
    qryArchiveTblCount: TUniQuery;
    actOpenMatter: TAction;
    qryParticipantEvents: TUniQuery;
    dsParticipantEvents: TUniDataSource;
    qPartyDetails: TUniQuery;
    qPartyDetailsNNAME: TFloatField;
    qPartyDetailsPARTYGIVENNAMES: TStringField;
    qPartyDetailsPARTYLASTNAME: TStringField;
    qPartyDetailsPARTYSEARCH: TStringField;
    qPartyDetailsPARTYTITLE: TStringField;
    qPartyDetailsPARTYGENDER: TStringField;
    qPartyDetailsPARTYADDRESS: TStringField;
    qPartyDetailsPARTYSALUTATION: TStringField;
    qPartyDetailsPARTYWORKPHONE: TStringField;
    qPartyDetailsPARTYHOMEPHONE: TStringField;
    qPartyDetailsPARTYDX: TStringField;
    qPartyDetailsPARTYDXLOC: TStringField;
    qPartyDetailsPARTYFAX: TStringField;
    qPartyDetailsPARTYCODE: TStringField;
    qPartyDetailsPARTYSPARTY: TStringField;
    qPartyDetailsPARTYSOLICITOR: TStringField;
    qPartyDetailsPARTYREAL_ESTATE: TStringField;
    qPartyDetailsPARTYREFERRALS: TIntegerField;
    qPartyDetailsPARTYNOTE: TStringField;
    qPartyDetailsPARTYNAME: TStringField;
    qPartyDetailsPARTYSHORTNAME: TStringField;
    qPartyDetailsPARTYLONGNAME: TStringField;
    qPartyDetailsPARTYMOD_DATE: TDateTimeField;
    qPartyDetailsPARTYMOD_BY: TStringField;
    qPartyDetailsPARTYTYPE: TStringField;
    qPartyDetailsPARTYCOUNTRY: TStringField;
    qPartyDetailsPARTYACN: TStringField;
    qPartyDetailsPARTYOCCUPATION: TStringField;
    qPartyDetailsPARTYDOB: TDateTimeField;
    qPartyDetailsPARTYEMAIL: TStringField;
    qPartyDetailsPARTYWWW: TStringField;
    qPartyDetailsPARTYMOBILE: TStringField;
    qPartyDetailsADDRESS: TStringField;
    qPartyDetailsSUBURB: TStringField;
    qPartyDetailsSTATE: TStringField;
    qPartyDetailsPOSTCODE: TStringField;
    qPartyDetailsCOUNTRY: TStringField;
    qPartyDetailsPOSTALADDRESS: TStringField;
    qPartyDetailsPOSTALSUBURB: TStringField;
    qPartyDetailsPOSTALSTATE: TStringField;
    qPartyDetailsPOSTALPOSTCODE: TStringField;
    qPartyDetailsPOSTALCOUNTRY: TStringField;
    qPartyDetailsCUST_ADDRESS: TStringField;
    qPartyDetailsCUST_SUBURB: TStringField;
    qPartyDetailsCUST_STATE: TStringField;
    qPartyDetailsCUST_POSTCODE: TStringField;
    qPartyDetailsCUST_COUNTRY: TStringField;
    qPartyDetailsWHICHADDRESS: TStringField;
    qPartyDetailsHESHE: TStringField;
    qPartyDetailsHIMHER: TStringField;
    qPartyDetailsHISHER: TStringField;
    qPartyDetailsSIRMADAM: TStringField;
    qPartyDetailsCLIENT_NUMBER: TFloatField;
    qPartyDetailsCLIENT_CODE: TStringField;
    qPartyDetailsPARTNER_CODE: TStringField;
    qryMatterAgedDebtors: TUniQuery;
    qryFirmContacts: TUniQuery;
    qClientDetails: TUniQuery;
    dsClientDetails: TDataSource;
    plPositionTotals: TppDBPipeline;
    dsPositionTotals: TUniDataSource;
    qryPositionTotals: TUniQuery;
    qryPacketCount: TUniQuery;
    qGroups: TUniQuery;
    dsGroups: TUniDataSource;
    rptSafeCustody: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppLabel6: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDetailBand1: TppDetailBand;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSystemVariable4: TppSystemVariable;
    rptClientPosition: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel17: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel36: TppLabel;
    lblController: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel47: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    plPacket: TppDBPipeline;
    qryDocRegOtherParties: TUniQuery;
    dsDocRegOtherParties: TUniDataSource;
    qryUpdateDocRegOtherParties: TUniQuery;
    qRelationships: TUniQuery;
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
    dsRelationships: TUniDataSource;
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
    qryUpdateItem: TUniQuery;
    strCheckForMasterLink: TStringz;
    ppShape2: TppShape;
    ppShape3: TppShape;
    qDataFields: TUniQuery;
    qDataFieldsFIELDNAME: TStringField;
    qDataFieldsCAPTION: TStringField;
    qDataFieldsTYPE: TStringField;
    qDataFieldsTEXTVALUE: TStringField;
    qDataFieldsNUNIQUE: TFloatField;
    qDataFieldsNUNIQUE2: TFloatField;
    qDataFieldsDATAFORM: TStringField;
    qDataFieldsPARTY: TStringField;
    qDataFieldsDATAFORMCAPTION: TStringField;
    qGroupsCATEGORY: TStringField;
    qPGroups: TUniQuery;
    qPGroupsCATEGORY: TStringField;
    qPGroupsOTHERPARTY: TStringField;
    qPGroupsACTINGFOR: TStringField;
    qPGroupsFIELDNAME: TStringField;
    actDeleteMatter: TAction;
    qryDocs: TUniQuery;
    dsDocs: TUniDataSource;
    plClientDetails: TppDBPipeline;
    ppDBText32: TppDBText;
    ppLabel37: TppLabel;
    OpenDialog: TOpenDialog;
    ilstToolbar: TImageList;
    qryClient: TUniQuery;
    dsClients: TUniDataSource;
    qryGender: TUniQuery;
    dsGender: TUniDataSource;
    dsOtherClients: TUniDataSource;
    qryReferral: TUniQuery;
    dxBarManager1: TdxBarManager;
    btnNewClient: TdxBarButton;
    btnEditClient: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    btnDeleteClient: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    btnClientSearch: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarListClients: TdxBarMRUListItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarLetter: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    btnDelete: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dsMatterAgedDebtors: TUniDataSource;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    pmViewAttachment: TPopupMenu;
    ViewAttachment1: TMenuItem;
    dxPrintMatterList: TdxComponentPrinter;
    dxPrintMatterListLink1: TdxGridReportLink;
    qryParticipantEventsEVENT_PART_ID: TLargeintField;
    qryParticipantEventsEVENT: TStringField;
    qryParticipantEventsEVENT_DATE: TDateTimeField;
    qryParticipantEventsEVENT_TIME: TStringField;
    qryParticipantEventsATTENDED: TStringField;
    qryParticipantEventsACCEPTED: TStringField;
    qryParticipantEventsDECLINED: TStringField;
    qryParticipantEventsPRINTED: TStringField;
    qryParticipantEventsSEARCH: TStringField;
    qryParticipantEventsNOTES: TStringField;
    rptPhonebook: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel38: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel39: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLine5: TppLine;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel69: TppLabel;
    ppLine6: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel72: TppLabel;
    ppLine7: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBText67: TppDBText;
    ppLabel75: TppLabel;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine8: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppLabel76: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList3: TppParameterList;
    qryGroupingsRpt: TUniQuery;
    dsGroupingsRpt: TUniDataSource;
    plGroupingsRpt: TppDBPipeline;
    plGroupingsRptppField1: TppField;
    plGroupingsRptppField2: TppField;
    plGroupingsRptppField3: TppField;
    plGroupingsRptppField4: TppField;
    plPhoneBookRpt: TppDBPipeline;
    plPhoneBookRptppField1: TppField;
    plPhoneBookRptppField2: TppField;
    plPhoneBookRptppField3: TppField;
    plPhoneBookRptppField4: TppField;
    plPhoneBookRptppField5: TppField;
    plPhoneBookRptppField6: TppField;
    plPhoneBookRptppField7: TppField;
    plPhoneBookRptppField8: TppField;
    plPhoneBookRptppField9: TppField;
    plPhoneBookRptppField10: TppField;
    plPhoneBookRptppField11: TppField;
    plPhoneBookRptppField12: TppField;
    plPhoneBookRptppField13: TppField;
    plPhoneBookRptppField14: TppField;
    plPhoneBookRptppField15: TppField;
    plPhoneBookRptppField16: TppField;
    plPhoneBookRptppField17: TppField;
    plPhoneBookRptppField18: TppField;
    plPhoneBookRptppField19: TppField;
    plPhoneBookRptppField20: TppField;
    plPhoneBookRptppField21: TppField;
    plPhoneBookRptppField22: TppField;
    plPhoneBookRptppField23: TppField;
    plPhoneBookRptppField24: TppField;
    plPhoneBookRptppField25: TppField;
    plPhoneBookRptppField26: TppField;
    plPhoneBookRptppField27: TppField;
    plPhoneBookRptppField28: TppField;
    plPhoneBookRptppField29: TppField;
    plPhoneBookRptppField30: TppField;
    plPhoneBookRptppField31: TppField;
    plPhoneBookRptppField32: TppField;
    plPhoneBookRptppField33: TppField;
    plPhoneBookRptppField34: TppField;
    plPhoneBookRptppField35: TppField;
    plPhoneBookRptppField36: TppField;
    plPhoneBookRptppField37: TppField;
    plPhoneBookRptppField38: TppField;
    plPhoneBookRptppField39: TppField;
    plPhoneBookRptppField40: TppField;
    plPhoneBookRptppField41: TppField;
    plPhoneBookRptppField42: TppField;
    plPhoneBookRptppField43: TppField;
    plPhoneBookRptppField44: TppField;
    plPhoneBookRptppField45: TppField;
    plPhoneBookRptppField46: TppField;
    plPhoneBookRptppField47: TppField;
    plPhoneBookRptppField48: TppField;
    plPhoneBookRptppField49: TppField;
    plPhoneBookRptppField50: TppField;
    plPhoneBookRptppField51: TppField;
    plPhoneBookRptppField52: TppField;
    plPhoneBookRptppField53: TppField;
    plPhoneBookRptppField54: TppField;
    plPhoneBookRptppField55: TppField;
    plPhoneBookRptppField56: TppField;
    plPhoneBookRptppField57: TppField;
    plPhoneBookRptppField58: TppField;
    plPhoneBookRptppField59: TppField;
    plPhoneBookRptppField60: TppField;
    plPhoneBookRptppField61: TppField;
    plPhoneBookRptppField62: TppField;
    plPhoneBookRptppField63: TppField;
    plPhoneBookRptppField64: TppField;
    plPhoneBookRptppField65: TppField;
    plPhoneBookRptppField66: TppField;
    plPhoneBookRptppField67: TppField;
    dsPhoneBookRpt: TUniDataSource;
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
    qRelationshipsRptBACKWARDSEQ: TFloatField;
    qRelationshipsRptFORWARDSEQ: TFloatField;
    qRelationshipsRptNUNIQUE: TLargeintField;
    qRelationshipsRptNCHILD: TLargeintField;
    dsRelationshipsRpt: TUniDataSource;
    plRelationshipsRpt: TppDBPipeline;
    plRelationshipsRptppField1: TppField;
    plRelationshipsRptppField2: TppField;
    plRelationshipsRptppField3: TppField;
    plRelationshipsRptppField4: TppField;
    plRelationshipsRptppField5: TppField;
    plRelationshipsRptppField6: TppField;
    plRelationshipsRptppField7: TppField;
    plRelationshipsRptppField8: TppField;
    plRelationshipsRptppField9: TppField;
    plRelationshipsRptppField10: TppField;
    plRelationshipsRptppField11: TppField;
    plRelationshipsRptppField12: TppField;
    plRelationshipsRptppField13: TppField;
    plRelationshipsRptppField14: TppField;
    qRelationshipsNUNIQUE: TLargeintField;
    qRelationshipsBACKWARDSEQ: TFloatField;
    qRelationshipsFORWARDSEQ: TFloatField;
    qRelationshipsNCHILD: TLargeintField;
    qRelationshipDetailsNNAME: TLargeintField;
    qrySubBill: TUniQuery;
    qryInvoices: TUniQuery;
    dsInvoices: TUniDataSource;
    dsSubBill: TUniDataSource;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    styBillTotals: TcxStyle;
    styRed: TcxStyle;
    styGreen: TcxStyle;
    styDefault: TcxStyle;
    rptDebtorStmnt: TppReport;
    ppParameterList4: TppParameterList;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    qryInsertNNameDoc: TUniQuery;
    ilstDocuments: TImageList;
    FormMgr: TRwMAPIFormManager;
    qrySingleDoc: TUniQuery;
    dsDocList: TUniDataSource;
    ppDocList: TppDBPipeline;
    rptDocList: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLine11: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppShape6: TppShape;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine10: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    raCodeModule2: TraCodeModule;
    ppParameterList5: TppParameterList;
    qryDocList: TUniQuery;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    Label29: TLabel;
    dblblClientNameCaption: TDBText;
    dblblClientContactCaption: TDBText;
    lblGender: TLabel;
    lblTaxNumberMsg: TLabel;
    dblblTaxNo: TcxDBLabel;
    dblblGenderDescr: TcxDBLabel;
    dblblContact: TcxDBLabel;
    dblblName: TcxDBLabel;
    dblblCode: TcxDBLabel;
    Label21: TLabel;
    dblblClientNumber: TcxDBLabel;
    Label30: TLabel;
    lblIntroduced: TcxLabel;
    dbtbPartner: TcxDBLabel;
    lblPartner: TLabel;
    lblMatters: TLabel;
    dblblMatters: TcxDBLabel;
    dblblArchived: TcxDBLabel;
    lblArchived: TLabel;
    lblClientPack: TLabel;
    dblblClientPack: TcxDBLabel;
    txtArchived: TdxBarStatic;
    qContactNotes: TUniQuery;
    dxBarManager1Bar4: TdxBar;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dsContactNotes: TUniDataSource;
    pnlDOB: TPanel;
    Label51: TLabel;
    popEmailDoc: TdxBarPopupMenu;
    dxBarButtonEmailasAttachment: TdxBarButton;
    dxBarButtonEmailAsPDF: TdxBarButton;
    cxGroupBox3: TcxGroupBox;
    imgClientID: TcxDBImage;
    cxDBLabel1: TcxDBLabel;
    ppLabel88: TppLabel;
    ppDBText80: TppDBText;
    aRelationshipNew: TAction;
    aRelationshipOpen: TAction;
    aRelationshipEdit: TAction;
    aRelationshipDelete: TAction;
    aRelationshipMerge: TAction;
    aRelationshipPrint: TAction;
    pagDetails: TcxPageControl;
    tabMatters: TcxTabSheet;
    tabArchive: TcxTabSheet;
    tabBalances: TcxTabSheet;
    tabAddress: TcxTabSheet;
    tabClientGroups: TcxTabSheet;
    tabRelationships: TcxTabSheet;
    tsCustomData: TcxTabSheet;
    tabDiary: TcxTabSheet;
    edSearch: TcxTextEdit;
    dbgrMatters: TcxGrid;
    tvMatters: TcxGridDBTableView;
    cxGridDBFILEID: TcxGridDBColumn;
    cxGridDBSHORTDESCR: TcxGridDBColumn;
    cxGridDBOPENED: TcxGridDBColumn;
    cxGridDBPARTNER: TcxGridDBColumn;
    cxGridDBAUTHOR: TcxGridDBColumn;
    cxGridDBTYPE: TcxGridDBColumn;
    tvMattersARCHIVENUM: TcxGridDBColumn;
    tvMattersColumn1: TcxGridDBColumn;
    tvMattersMATTER_STATUS: TcxGridDBColumn;
    tvMattersUNBILL_FEES_NO_GST: TcxGridDBColumn;
    tvMattersUNBILL_DISB_NO_GST: TcxGridDBColumn;
    tvMattersUNBILL_ANTD_NO_GST: TcxGridDBColumn;
    tvMattersUNCON_CHEQREQ: TcxGridDBColumn;
    tvMattersUNBILL_SUND_NO_GST: TcxGridDBColumn;
    tvMattersDEBTORS: TcxGridDBColumn;
    tvMattersCREDITORS: TcxGridDBColumn;
    tvMattersBILL_FEES: TcxGridDBColumn;
    tvMattersCL_TRUST_BAL: TcxGridDBColumn;
    tvMattersINVESTMENT_BALANCE: TcxGridDBColumn;
    tvMattersROW_COLOUR: TcxGridDBColumn;
    lvMatters: TcxGridLevel;
    rbAllMatters: TcxRadioButton;
    rbOpenMatters: TcxRadioButton;
    rbClosedMatters: TcxRadioButton;
    Label3: TLabel;
    Label23: TLabel;
    btnExportReceiptsToExcel: TcxButton;
    cxButton1: TcxButton;
    chkCurrentEntity: TCheckBox;
    dbgrArchived: TcxGrid;
    tvArchived: TcxGridDBTableView;
    tvArchivedNARCHIVE: TcxGridDBColumn;
    tvArchivedFILEID: TcxGridDBColumn;
    tvArchivedSHORTDESCR: TcxGridDBColumn;
    tvArchivedARCHIVED: TcxGridDBColumn;
    tvArchivedPARTNER: TcxGridDBColumn;
    tvArchivedAUTHOR: TcxGridDBColumn;
    tvArchivedTYPE: TcxGridDBColumn;
    lvArchived: TcxGridLevel;
    Label24: TLabel;
    Label26: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    lblTotalTrustCaption: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COL_TITLE: TcxGridDBColumn;
    cxGrid2DBTableView1ADJ0: TcxGridDBColumn;
    cxGrid2DBTableView1ADJ1: TcxGridDBColumn;
    cxGrid2DBTableView1ADJ2: TcxGridDBColumn;
    cxGrid2DBTableView1ADJ3: TcxGridDBColumn;
    cxGrid2DBTableView1ADJ10: TcxGridDBColumn;
    cxGrid2DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel14: TcxDBLabel;
    dblblClearTrust: TcxDBLabel;
    dblblDebtors: TcxDBLabel;
    dblblFeeCode: TcxDBLabel;
    dblblFees: TcxDBLabel;
    dblblIntroducer: TcxDBLabel;
    dblblTrust: TcxDBLabel;
    dblblUnbillDisb: TcxDBLabel;
    dblblWIP: TcxDBLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBMemo2: TcxDBMemo;
    dbtbSearchkey: TcxDBTextEdit;
    ePhoneHome: TcxDBTextEdit;
    ePhoneMobile: TcxDBTextEdit;
    ePhoneWork: TcxDBTextEdit;
    eInternetEMail: TcxDBButtonEdit;
    eInternetWWW: TcxDBButtonEdit;
    ePhoneFax: TcxDBTextEdit;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label50: TLabel;
    Label55: TLabel;
    Label62: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    dxBarDockControl1: TdxBarDockControl;
    dbgrRelationship: TcxGrid;
    tvRelationship: TcxGridDBTableView;
    tvRelationshipNCHILD: TcxGridDBColumn;
    tvRelationshipRELATIONSHIP: TcxGridDBColumn;
    tvRelationshipBACKWARD: TcxGridDBColumn;
    tvRelationshipDBColumn1: TcxGridDBColumn;
    dbgrRelationshipLevel1: TcxGridLevel;
    vtCustomData: TVirtualStringTree;
    cbShowMatterDiary: TCheckBox;
    dbgContactNotes: TcxGrid;
    tvContactNotes: TcxGridDBTableView;
    tvContactNotesCREATION_DATE: TcxGridDBColumn;
    tvContactNotesSTART_DT: TcxGridDBColumn;
    tvContactNotesENTEREDBY: TcxGridDBColumn;
    tvContactNotesDESCR: TcxGridDBColumn;
    dbgContactNotesLevel1: TcxGridLevel;
    dxBarDockControl2: TdxBarDockControl;
    tabNotes: TcxTabSheet;
    btnNotesDelete: TcxButton;
    btnNotesNew: TcxButton;
    dbgrNotes: TcxGrid;
    tvNotes: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    lvNotes: TcxGridLevel;
    tabSafeCustody: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    tsItems: TcxTabSheet;
    tsOtherParties: TcxTabSheet;
    grdDocuments: TcxGrid;
    tvDocuments1: TcxGridDBTableView;
    tvDocuments1DESCRIPTION: TcxGridDBColumn;
    tvDocuments1ENVELOPE: TcxGridDBColumn;
    tvDocuments1DESCR: TcxGridDBColumn;
    tvDocuments1LODGED: TcxGridDBColumn;
    tvDocuments1DATE_RELEASED: TcxGridDBColumn;
    tvDocuments1RELEASED_TO: TcxGridDBColumn;
    tvDocuments1DBColumn1: TcxGridDBColumn;
    tvDocuments1DATE_RETURNED: TcxGridDBColumn;
    tvDocuments1LOCATION: TcxGridDBColumn;
    tvDocuments1REVIEWDATE: TcxGridDBColumn;
    tvDocuments1PACKETID: TcxGridDBColumn;
    tvDocuments1NDOCUMENT: TcxGridDBColumn;
    tvPacketDocuments: TcxGridDBBandedTableView;
    tvPacketDocumentsPACKETINOUT: TcxGridDBBandedColumn;
    tvPacketDocumentsDESCRIPTION: TcxGridDBBandedColumn;
    tvPacketDocumentsENVELOPE: TcxGridDBBandedColumn;
    tvPacketDocumentsDESCR: TcxGridDBBandedColumn;
    tvPacketDocumentsLODGED: TcxGridDBBandedColumn;
    tvPacketDocumentsDATE_RELEASED: TcxGridDBBandedColumn;
    tvPacketDocumentsRELEASED_TO: TcxGridDBBandedColumn;
    tvPacketDocumentsREQUESTED_DATE: TcxGridDBBandedColumn;
    tvPacketDocumentsDATE_RETURNED: TcxGridDBBandedColumn;
    tvPacketDocumentsIMAGE: TcxGridDBBandedColumn;
    tvPacketDocumentsPROCESS: TcxGridDBBandedColumn;
    tvPacketDocumentsLOCATION: TcxGridDBBandedColumn;
    tvPacketDocumentsREVIEWDATE: TcxGridDBBandedColumn;
    tvPacketDocumentsPACKETID: TcxGridDBBandedColumn;
    tvPacketDocumentsNDOCUMENT: TcxGridDBBandedColumn;
    grdDocumentsLevel1: TcxGridLevel;
    pnlButtons: TPanel;
    btnPrintSafeCustody: TcxButton;
    btnSafeCustodyDelete: TcxButton;
    btnSafeCustodyEdit: TcxButton;
    btnSafeCustodyNew: TcxButton;
    btnSafeCustodyRequest: TcxButton;
    btnSafeCustodyReturn: TcxButton;
    btnSCWord: TcxButton;
    cbShowAllDates: TCheckBox;
    dblblPath: TDBText;
    pbHistory: TcxButton;
    Panel1: TPanel;
    btnDeleteSafeOtherParty: TcxButton;
    pdAddOtherParty: TcxButton;
    grdSafeCustOtherParties: TcxGrid;
    tvSafeCustOtherParties: TcxGridDBTableView;
    tvSafeCustOtherPartiesNAME: TcxGridDBColumn;
    tvSafeCustOtherPartiesCCODE: TcxGridDBColumn;
    tvSafeCustOtherPartiesNNAME: TcxGridDBColumn;
    tvSafeCustOtherPartiesNDOCREG: TcxGridDBColumn;
    grdSafeCustOtherPartiesLevel1: TcxGridLevel;
    Panel5: TPanel;
    cxSplitter1: TcxSplitter;
    Panel6: TPanel;
    pbAddPacket: TcxButton;
    pbDeletePacket: TcxButton;
    pbEditPacket: TcxButton;
    grdPackets: TcxGrid;
    tvPackets: TcxGridDBTableView;
    tvPacketsColumn1: TcxGridDBColumn;
    tvPacketsPACKETID: TcxGridDBColumn;
    tvPacketsDESCR: TcxGridDBColumn;
    tvPacketsLOCATION: TcxGridDBColumn;
    tvPacketsREALPACK: TcxGridDBColumn;
    tvPacketsCLCODE: TcxGridDBColumn;
    tvPacketsNAME: TcxGridDBColumn;
    tvPacketsDESTROY_DATE: TcxGridDBColumn;
    tvPacketsNDOCREG: TcxGridDBColumn;
    grdPacketsLevel1: TcxGridLevel;
    tsOtherClients: TcxTabSheet;
    dbgOtherClients: TcxGrid;
    tvOtherClients: TcxGridDBTableView;
    cxGridDBColumn19: TcxGridDBColumn;
    lvOtherClients: TcxGridLevel;
    tabMarketing: TcxTabSheet;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    cxGroupBox2: TcxGroupBox;
    lstFirmContacts: TcxListView;
    edMaintainer: TcxLabel;
    edReferralType: TcxLabel;
    edReferredBy: TcxLabel;
    tabEvent: TcxTabSheet;
    grdParticipantEvents: TcxGrid;
    tvParticipantEvents: TcxGridDBTableView;
    tvParticipantEventsEVENT_PART_ID: TcxGridDBColumn;
    tvParticipantEventsEVENT: TcxGridDBColumn;
    tvParticipantEventsEVENT_DATE: TcxGridDBColumn;
    tvParticipantEventsEVENT_TIME: TcxGridDBColumn;
    tvParticipantEventsATTENDED: TcxGridDBColumn;
    tvParticipantEventsACCEPTED: TcxGridDBColumn;
    tvParticipantEventsDECLINED: TcxGridDBColumn;
    tvParticipantEventsPRINTED: TcxGridDBColumn;
    tvParticipantEventsSEARCH: TcxGridDBColumn;
    tvParticipantEventsNOTES: TcxGridDBColumn;
    grdParticipantEventsLevel1: TcxGridLevel;
    tabBills: TcxTabSheet;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    chkExcludeReversals: TcxCheckBox;
    dbgrInvoices: TcxGrid;
    tvInvoices: TcxGridDBTableView;
    tvInvoicesFILEID: TcxGridDBColumn;
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
    tabDocuments: TcxTabSheet;
    grdClientDocs: TcxGrid;
    tvClientDocs: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    tvClientDocsDOC_NAME: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumnDOCID: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    tvClientDocsDISPLAY_PATH: TcxGridDBBandedColumn;
    tvClientDocsDOCID: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    btnDocDelete: TBitBtn;
    btnPrecSearch: TBitBtn;
    btnDocAdd: TBitBtn;
    btnDocEdit: TcxButton;
    btnDocPrint: TcxButton;
    edDocSearch: TcxTextEdit;
    cbGroupExpanded: TcxCheckBox;
    cxLabel3: TcxLabel;
    pageClientAddresses: TcxPageControl;
    tsStreetAddress: TcxTabSheet;
    tsPostalAddress: TcxTabSheet;
    tsCustomAddress: TcxTabSheet;
    tsDX: TcxTabSheet;
    Label6: TLabel;
    lblState: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label68: TLabel;
    eStreetCountry: TcxDBLabel;
    eStreetPostCode: TcxDBTextEdit;
    eStreetState: TcxDBTextEdit;
    eStreetSuburb: TcxDBTextEdit;
    mStreetAddress: TcxDBMemo;
    Label10: TLabel;
    lblPostalState: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ePostalCountry: TcxDBLabel;
    ePostalPostCode: TcxDBTextEdit;
    ePostalState: TcxDBTextEdit;
    ePostalSuburb: TcxDBTextEdit;
    mPostalAddress: TcxDBMemo;
    Label12: TLabel;
    Label13: TLabel;
    lblCustomState: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    eCustomCountry: TcxDBLabel;
    eCustomPostCode: TcxDBTextEdit;
    eCustomState: TcxDBTextEdit;
    eCustomSuburb: TcxDBTextEdit;
    mCustomAddress: TcxDBMemo;
    Label56: TLabel;
    Label57: TLabel;
    eDXAddress: TcxDBTextEdit;
    eDXLocation: TcxDBTextEdit;
    pagClientGroups: TcxPageControl;
    tabCurrentGroups: TcxTabSheet;
    tabAllGroups: TcxTabSheet;
    grdClientGroups: TcxGrid;
    grdClientGroupsDBTableView1: TcxGridDBTableView;
    grdClientGroupsDBTableView1DBColumn1: TcxGridDBColumn;
    grdClientGroupsLevel1: TcxGridLevel;
    btnGroupAdd: TcxButton;
    clbGroups: TcxCheckListBox;
    tbGroup: TcxTextEdit;
    barEditProspective: TcxBarEditItem;
    Label4: TLabel;
    cxDBLabel2: TcxDBLabel;
    procedure tbtnSnapshotClick(Sender: TObject);
    procedure dbgrMattersDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnMatterNewClick(Sender: TObject);
    procedure mnuFileLedgersCombobyDateClick(Sender: TObject);
    procedure tbtnFindClick(Sender: TObject);
    procedure pagDetailsChange(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure mnuFileDeleteClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure mnuReopen(Sender: TObject);
    procedure qryDocRegAfterScroll(DataSet: TDataSet);
    procedure qryClientAfterScroll(DataSet: TDataSet);
    procedure btnSCWordClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryClientBeforeScroll(DataSet: TDataSet);
    procedure tbtnMatterEditClick(Sender: TObject);
    procedure dbgrArchivedDblClick(Sender: TObject);
    procedure qryDocRegDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryNotesNOTESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnGroupAddClick(Sender: TObject);
    procedure clbGroups1ClickCheck(Sender: TObject);
    procedure btnNotesNewClick(Sender: TObject);
    procedure tbtnClientDeleteClick(Sender: TObject);
    procedure tbtnClientEditClick(Sender: TObject);
    procedure btnNotesDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuMatterDeleteClick(Sender: TObject);
    procedure mnuMatterOpenClick(Sender: TObject);
    procedure dbcbPacketChange(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure tbGroupKeyPress(Sender: TObject; var Key: Char);
    procedure clickMatterFilter(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure dtpBirthDateEnter(Sender: TObject);
    procedure dbgrMattersColEnter(Sender: TObject);
    procedure dbgOtherClientsDblClick(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure rptSafeCustodyPreviewFormCreate(Sender: TObject);
    procedure qryDocRegAfterEdit(DataSet: TDataSet);
    procedure dbcbPacketPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbgrMattersDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure clbGroupsClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure eInternetWWWPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actNewClientExecute(Sender: TObject);
    procedure actEditClientExecute(Sender: TObject);
    procedure actDeleteClientExecute(Sender: TObject);
    procedure actNewMatterExecute(Sender: TObject);
    procedure actEditMatterExecute(Sender: TObject);
    procedure actSnapshotExecute(Sender: TObject);
    procedure actNavFirstExecute(Sender: TObject);
    procedure actNavPreviousExecute(Sender: TObject);
    procedure actNavNextExecute(Sender: TObject);
    procedure actNavLastExecute(Sender: TObject);
    procedure actPositionReportExecute(Sender: TObject);
    procedure actComboByDateExecute(Sender: TObject);
    procedure actMatterArchiveExecute(Sender: TObject);
    procedure actEditMatterUpdate(Sender: TObject);
    procedure actMatterArchiveUpdate(Sender: TObject);
    procedure dxBarListClientsClick(Sender: TObject);
    procedure actOpenMatterExecute(Sender: TObject);
    procedure actOpenMatterUpdate(Sender: TObject);
    procedure dxBarLetterClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure btnSafeCustodyRequestClick(Sender: TObject);
    procedure btnSafeCustodyReturnClick(Sender: TObject);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure qryDocRegAfterInsert(DataSet: TDataSet);
    procedure qryDocRegAfterPost(DataSet: TDataSet);
    procedure tabAllGroupsShow(Sender: TObject);
    procedure pagClientgroupsChange(Sender: TObject);
    procedure qryDocRegAfterDelete(DataSet: TDataSet);
    procedure tvSafeCustOtherPartiesNAMEPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure tvSafeCustOtherPartiesEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure btnDeleteSafeOtherPartyClick(Sender: TObject);
    procedure tvPacketsEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure tabRelationshipsShow(Sender: TObject);
    procedure pbHistoryClick(Sender: TObject);
    procedure tvDocumentsPROCESSPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDocRegBeforePost(DataSet: TDataSet);
    procedure dblblNameMouseEnter(Sender: TObject);
    procedure dblblContactMouseEnter(Sender: TObject);
    procedure pbAddPacketClick(Sender: TObject);
    procedure pbEditPacketClick(Sender: TObject);
    procedure pbDeletePacketClick(Sender: TObject);
    procedure pdAddOtherPartyClick(Sender: TObject);
    procedure tvPacketsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actFindMatterExecute(Sender: TObject);
    procedure tsCustomDataShow(Sender: TObject);
    procedure vtCustomDataGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure tvPacketsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarButton11Click(Sender: TObject);
    procedure pmViewAttachmentPopup(Sender: TObject);
    procedure ViewAttachment1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure vtCustomDataGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vtCustomDataPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType);
    procedure tabBillsShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure tvClientDocsDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ppLabel78GetText(Sender: TObject; var Text: string);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkCurrentEntityClick(Sender: TObject);
    procedure cbShowMatterDiaryClick(Sender: TObject);
    procedure tvMattersColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure dxBarButtonEmailasAttachmentClick(Sender: TObject);
    procedure FormMgrNewMessage(Sender: TObject;
      const MessageSite: IRwMAPIMessageSite);
    procedure dxBarButtonEmailAsPDFClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnExportReceiptsToExcelClick(Sender: TObject);
    procedure imgClientIDClick(Sender: TObject);
    procedure btnDocPrintClick(Sender: TObject);
    procedure btnDocEditClick(Sender: TObject);
    procedure btnDocAddClick(Sender: TObject);
    procedure tvClientDocsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDocDeleteClick(Sender: TObject);
    procedure chkExcludeReversalsClick(Sender: TObject);
    procedure aRelationshipOpenExecute(Sender: TObject);
    procedure aRelationshipNewExecute(Sender: TObject);
    procedure aRelationshipEditExecute(Sender: TObject);
    procedure aRelationshipDeleteExecute(Sender: TObject);
    procedure aRelationshipMergeExecute(Sender: TObject);
    procedure aRelationshipPrintExecute(Sender: TObject);
    procedure aRelationshipOpenUpdate(Sender: TObject);
    procedure aRelationshipEditUpdate(Sender: TObject);
    procedure aRelationshipDeleteUpdate(Sender: TObject);
    procedure aRelationshipPrintUpdate(Sender: TObject);
    procedure aRelationshipMergeUpdate(Sender: TObject);
    procedure pageClientAddressesDrawTabEx(AControl: TcxCustomTabControl;
      ATab: TcxTab; Font: TFont);
  private
    FMultiClientGroup: String;
    FNDocReg: integer;
    FSafeCustodyModified: Boolean;
    PacketCount : integer;
    FLookupValue: string;
    FCustomAddress: string;
    FCustomDataShowing: boolean;
    FShowDataOnlyGroup: String;
    FDiarySQL: string;
    FMatterSQL: string;

    FAttachFileName: TStringList;
    FAttachDoc: Boolean;
    FFileAttachList: string;

    procedure DisplayDocItems;
    procedure MakeMatterLedger;
    procedure NavigateClient;
    procedure ConfirmSave;
    function GetNClicent: Integer;
    procedure SetMultiClientGroup(const Value: String); 
    function IsPacketUnique(nPacket: String): boolean;
    function Find(var pNClient: integer; bFromClient: boolean = False): Boolean;
    function GetProcessCount: integer;
	 procedure updateControlsForMasterLink;
    procedure CheckAndSetControl(bChild : Boolean; bParent : Boolean; oControl : TcxCustomEdit);
    procedure SetCustomAddress;
    procedure LoadPartyData(AParty: String);
    procedure ResizeColumns(ATree: TVirtualStringTree);
    procedure SetSafeCustodyButtons;
    procedure SaveDebtorStatement(ADoc_Name, AAuth, APath, ADescr, APrecCategory, APrecedentDetails, APrecClass: string; ANName: integer);
    procedure MakeMatterSQL(AOrder, AFilter: string);
    function GetAttachFile(var ADocIDList: TStringList): TStringList;
    property  FileAttachList: string read FFileAttachList write FFileAttachList;
    procedure DocDelete;

  public
    procedure DisplayClient(Search: string); overload;
    procedure DisplayClient(PNClient: integer); overload;
    procedure ShowDetails;
    procedure ChooseClient; overload;
    procedure ChooseClient(AClientID: Integer); overload;
    procedure SetReopenList;
    property ANClient: Integer read GetNClicent;
    property MultiClientGroup: String read FMultiClientGroup write SetMultiClientGroup;
    property LookupValue : string read FLookupValue write FLookupValue;
    property ShowDataOnlyGroup: String        read FShowDataOnlyGroup     write FShowDataOnlyGroup;
  end;

implementation

uses
  Desktop, Matters, MatterNew, AxiomData, MiscFunc, citfunc,
  PhoneBookNew, ClientNoteNew, MSearch, SafeCustodyNew, PostcodeSearch,
  NSearch,ShellAPI, SystemFile, PhoneBook,
  Archival, WorkFlowDataModule, WorkFlowDataModuleMerge, WriteMerge,
  RelateNew, SafeCustMovementDtls, DocNew, DocSearch,
  RecordMovement, SafeCustodyNewPacket, client_img_view, LoggingSnippet,
  CSearch, Ora, FMXUtils, Math;

{$R *.DFM}

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
   FClientSearch: TfrmClientSearch;

procedure TfrmClients.DisplayClient(Search: string);
begin
  Screen.Cursor := crSQLWait;
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);

  qryClient.Close();
//  qryClient.SQL.Text := 'SELECT P.*, P.ROWID FROM PHONEBOOK P WHERE P.SEARCH = ' + QuotedStr(Search) + ' AND NCLIENT IS NOT NULL';
//  qryClient.SQL.Text := 'SELECT C.*, C.ROWID FROM CLIENT C WHERE C.SEARCH = ' + QuotedStr(Search);
//  qryClient.SQL.Text := 'SELECT C.*, C.ROWID FROM CLIENT C WHERE C.NCLIENT = ' + Search;
  qryClient.SQL.Text := 'SELECT C.ROWID, C.NCLIENT, C.NAME, C.GENDER, C.CLIENTGROUP, '+
                        'P.SEARCH, C.MATTERS, C.PARTNER, C.ARCHIVES, C.BANKERS, C.CREDIT_RATING, '+
                        'C.PREV_NCMAUDIT, C.TAXNO, C.INTRODUCED, C.INTRODUCER, C.CODE, C.FEECODE,'+
                        'C.FORMAT_FILE, C.MATTERSEQ, C.BILLTEMPLATE, C.ARCHVLOCN, C.DATEARCHV, '+
                        'C.DATEREVIEW, C.DATEDSTRN, C.SOURCE, C.BGROUP, C.INDUSTRY, C.NPKTS, C.DFLTLCODE,'+
                        'C.NMACLOSED, C.NDRCLOSED, C.NDRARCHV, C.STATUS, C.TRSTMNT, C.ADISINVRECV, C.TRUST_BAL,'+
                        'C.CL_TRUST_BAL, C.UNBILL_FEES, C.DEBTORS, C.UNBILL_DISB, C.BILL_FEES, C.BILL_DISB, '+
                        'C.CREDIT_LIMIT, C.PERIOD0, C.PERIOD1, C.PERIOD2, C.PERIOD3, C.BUDGET_FEES, C.BUDGET_DISB,'+
                        'C.BUDGET_TOTAL, C.DISBTHRESHOLD, C.ANTDISBS, C.ANTDRS, C.DISBSWOFF, C.DRSWOFF, C.WIPWOFF,'+
                        'C.CREATED, C.MODIFIED, C.NDEBTORTASKTEMPLATE, C.FEE_TAX_BASIS, C.ALLOW_MATTERS, C.CLIENT_PACK, '+
                        'CASE WHEN (C.CLIENT_PACK = ''YES'') THEN ''Yes'' '+
                        '     WHEN (C.CLIENT_PACK = ''SCCO'') THEN ''No - Safe Custody Client Only'' '+
                        '     WHEN (C.CLIENT_PACK = ''NOCL'') THEN ''No - Development NOCL Only'' '+
                        '     ELSE '''' '+
                        'END as DISP_CLIENT_PACK, P.ARCHIVED, P.NNAME, P.DOB, P.CLIENT_IMAGE, P.CONTACT, P.DATE_OF_DEATH, P.PROSPECTIVE, SC.DESCR, P.ACN '+
                        'FROM SUPERCLIENT SC, PHONEBOOK P, CLIENT C WHERE C.CODE = ' + quotedstr(Search) +
                        ' AND C.NCLIENT = P.NCLIENT AND P.SUPERCLIENT(+) = SC.CODE';
  qryClient.Open();
  if qryClient.IsEmpty then
  begin
    MessageDlg('Cannot find ''' + Search + ''' as a Client.', mtWarning, [mbOK], 0);
    Close();
  end else
  begin
    actNewMatter.Enabled := (TableString('PHONEBOOK','NCLIENT',qryClient.FieldByName('nclient').AsInteger,'ARCHIVED') = 'N');
    qryArchiveTblCount.Close();
    qryArchiveTblCount.ParamByName('nclient').AsInteger := qryClient.FieldByName('nclient').AsInteger;
    qryArchiveTblCount.Open();
    pagDetails.Pages[1].TabVisible := (qryArchiveTblCount.FieldByName('ARCH_COUNT').AsInteger > 0);
    qryMatterCount.Close();
    qryMatterCount.ParamByName('nclient').AsInteger := qryClient.FieldByName('nclient').AsInteger;
    qryMatterCount.Open();
    qryArchMatterCount.Close();
    qryArchMatterCount.ParamByName('nclient').AsInteger := qryClient.FieldByName('nclient').AsInteger;
    qryArchMatterCount.Open();
    ShowDetails();
  end;
  Screen.Cursor := crDefault;
end;


procedure TfrmClients.DisplayClient(PNClient: integer);
begin
   Screen.Cursor := crSQLWait;
   try
      with qryClient do
      begin
         Close;
         SQL.Clear;
         SQL.Text := 'SELECT C.ROWID, C.NCLIENT, C.NAME, C.GENDER, C.CLIENTGROUP, '+
                     'C.SEARCH, C.MATTERS, C.PARTNER, C.ARCHIVES, C.BANKERS, C.CREDIT_RATING, '+
                     'C.PREV_NCMAUDIT, C.TAXNO, C.INTRODUCED, C.INTRODUCER, C.CODE, C.FEECODE,'+
                     'C.FORMAT_FILE, C.MATTERSEQ, C.BILLTEMPLATE, C.ARCHVLOCN, C.DATEARCHV, '+
                     'C.DATEREVIEW, C.DATEDSTRN, C.SOURCE, C.BGROUP, C.INDUSTRY, C.NPKTS, C.DFLTLCODE,'+
                     'C.NMACLOSED, C.NDRCLOSED, C.NDRARCHV, C.STATUS, C.TRSTMNT, C.ADISINVRECV, C.TRUST_BAL,'+
                     'C.CL_TRUST_BAL, C.UNBILL_FEES, C.DEBTORS, C.UNBILL_DISB, C.BILL_FEES, C.BILL_DISB, '+
                     'C.CREDIT_LIMIT, C.PERIOD0, C.PERIOD1, C.PERIOD2, C.PERIOD3, C.BUDGET_FEES, C.BUDGET_DISB,'+
                     'C.BUDGET_TOTAL, C.DISBTHRESHOLD, C.ANTDISBS, C.ANTDRS, C.DISBSWOFF, C.DRSWOFF, C.WIPWOFF,'+
                     'C.CREATED, C.MODIFIED, C.NDEBTORTASKTEMPLATE, C.FEE_TAX_BASIS, C.ALLOW_MATTERS, C.CLIENT_PACK, '+
                     'CASE WHEN (C.CLIENT_PACK = ''YES'') THEN ''Yes'' '+
                     '     WHEN (C.CLIENT_PACK = ''SCCO'') THEN ''No - Safe Custody Client Only'' '+
                     '     WHEN (C.CLIENT_PACK = ''NOCL'') THEN ''No - Development NOCL Only'' '+
                     '     ELSE '''' '+
                     'END as DISP_CLIENT_PACK, P.ARCHIVED, P.NNAME, P.DOB, P.CLIENT_IMAGE, P.CONTACT, P.DATE_OF_DEATH, P.PROSPECTIVE, P.SUPERCLIENT, P.ACN '+  // 20 Sep 2018 dw added superclient back in
                     'FROM PHONEBOOK P, CLIENT C WHERE C.NCLIENT = ' + IntToStr(PNClient) +
                     ' AND C.NCLIENT = P.NCLIENT';

//         SQL.Add('SELECT C.*, C.ROWID FROM CLIENT C WHERE C.NCLIENT = ' + IntToStr(ANClient));
         Open;
      end;
      if qryClient.IsEmpty then
        Close()
      else
      begin
         actNewMatter.Enabled := (TableString('PHONEBOOK','NCLIENT',qryClient.FieldByName('nclient').AsInteger,'ARCHIVED') = 'N');
         qryArchiveTblCount.Close();
         qryArchiveTblCount.ParamByName('nclient').AsInteger := qryClient.FieldByName('nclient').AsInteger;
         qryArchiveTblCount.Open();
         pagDetails.Pages[1].TabVisible := (qryArchiveTblCount.FieldByName('ARCH_COUNT').AsInteger > 0);
      //   if frmClientSearch.qryClients.Active and (frmClientSearch.qryClients.FieldByName('SEARCH').AsString <> qryClient.FieldByName('SEARCH').AsString) then
      //     frmClientSearch.FindClient(qryClient.FieldByName('SEARCH').AsString);
         qryMatterCount.Close();
         qryMatterCount.ParamByName('nclient').AsInteger := qryClient.FieldByName('nclient').AsInteger;
         qryMatterCount.Open();
         qryArchMatterCount.Close();
         qryArchMatterCount.ParamByName('nclient').AsInteger := qryClient.FieldByName('nclient').AsInteger;
         qryArchMatterCount.Open();
         ShowDetails();
      end;
      Screen.Cursor := crDefault;
   except
   ;
   end;
end;


procedure TfrmClients.ShowDetails;
var
   LDefaultAddress: string;
   ASearch,
   sMatterFilter: string;
begin
  ASearch := qryClient.FieldByName('SEARCH').AsString;
  if (Pos('&',ASearch)) > 0 then
     Insert('&', ASearch, Pos('&',ASearch));

   if Self.Parent <> nil then
   begin
      if frmDesktop.pagMainControl.ActivePageIndex = 0 then
         frmDesktop.pageForms.ActivePage.Caption :=
                      'Client: ' + ASearch;
   end
   else
      self.Caption := 'Client: ' + ASearch;
   ReopenListUpdate('CLIENT', {qryClient.FieldByName('Code').AsString} qryClient.FieldByName('NCLIENT').AsString);

   if qryClient.FieldByName('ARCHIVED').AsString = 'Y' then
   begin
      txtArchived.Visible := ivAlways;
   end;

   // Prospective client
   tabBills.Enabled := (qryClient.FieldByName('PROSPECTIVE').AsString = 'N');
   tabBalances.Enabled := (qryClient.FieldByName('PROSPECTIVE').AsString = 'N');
   if (qryClient.FieldByName('PROSPECTIVE').AsString = 'Y') then
      barEditProspective.Visible := ivAlways
   else
      barEditProspective.Visible := ivNever;


   if qryMatterCount.Active then
      actDeleteClient.Enabled := (qryMatterCount.FieldByName('MATTERS').AsInteger + qryArchMatterCount.FieldByName('ARCHIVES').AsInteger) = 0
   else
      actDeleteClient.Enabled := False;

//  frmDesktop.dxBarWindowList.Items.AddObject(Self.Caption, Self);
//  ReopenListUpdate('CLIENT', qryClient.FieldByName('SEARCH').AsString);
   SetReopenList;
   if (not qryClient.FieldbyName('INTRODUCED').IsNull) then
      lblIntroduced.Caption := FormatDateTime('ddddd',qryClient.FieldbyName('INTRODUCED').AsDateTime)
   else
      lblIntroduced.Caption := '';
   if not qryGender.Active or (qryGender.ParamByName('GENDER').AsString <> qryClient.FieldByName('GENDER').AsString) then
   begin
      qryGender.Close;
      qryGender.ParamByName('GENDER').AsString := qryClient.FieldByName('GENDER').AsString;
      qryGender.Open;
   end;

   lblTaxNumberMsg.Caption := qryGender.FieldByName('ACNCAPTION').AsString;

   if pagDetails.ActivePage = tabMatters then
   begin
{      qryMatters.Close;
      qryMatters.ParamByName('NCLIENT').AsInteger := NClient;
      qryMatters.ParamByName('FILTER').AsString := 'rbOpenMatters';
      if chkCurrentEntity.Checked then
         qryMatters.ParamByName('ENTITY').AsString := dmAxiom.Entity
      else
         qryMatters.ParamByName('ENTITY').Clear;
      qryMatters.Open; }
   if rbOpenMatters.Checked then
      sMatterFilter := 'rbOpenMatters';
   if rbAllMatters.Checked then
      sMatterFilter := 'rbAllMatters';
   if rbClosedMatters.Checked then
      sMatterFilter := 'rbClosedMatters';
      MakeMatterSQL(' ORDER BY OPENED DESC, FILEID DESC', sMatterFilter);
   end;

//   if pagDetails.ActivePage = tabAddress then
//   begin
      qryPhoneBook.Close;
      qryPhoneBook.ParamByName('nclient').AsInteger := ANClient;
      qryPhoneBook.Open;

      tsStreetAddress.Highlighted := False;
      tsPostalAddress.Highlighted := False;
      tsCustomAddress.Highlighted := False;
      tsDX.Highlighted := False;
      LDefaultAddress := qryPhoneBook.FieldByName('WHICHADDRESS').AsString;
      if LDefaultAddress = 'S' then
      begin
//         tsStreetAddress.Font.Style := [fsBold];  // Caption := StreetAddressTab + ' *'
         pageClientAddresses.ActivePage := tsStreetAddress;
      end
      else if LDefaultAddress = 'P' then
      begin
//         tsPostalAddress.Font.Style := [fsBold];  //Caption := PostalAddressTab + ' *'
         pageClientAddresses.ActivePage := tsPostalAddress;
      end
      else if LDefaultAddress = 'C' then
      begin
//         tsCustomAddress.Font.Style := [fsBold];   //Caption := FCustomAddress + ' *';
         pageClientAddresses.ActivePage := tsCustomAddress;
      end
      else if LDefaultAddress = 'D' then
      begin
//         tsDX.Font.Style := [fsBold];   //Caption := FCustomAddress + ' *';
         pageClientAddresses.ActivePage := tsDX;
      end;

//    if not qryPhonebook.FieldByName('DOB').IsNull then
//      begin
 //       dtpBirthDate.Checked := true;
//        dtpBirthDate.Date := qryPhonebook.FieldByName('DOB').AsDateTime;
//      end
//    else
//      dtpBirthDate.Checked := False;
      if qryPhoneBook.EOF then
      begin
         MessageDlg('There is a problem! the phonebook entry for this client does not exist!!'#13#10#13#10'Search = ''' + qryClient.FieldByName('SEARCH').AsString + '''', mtError, [mbOK], 0);
      end;
//   end;

   if pagDetails.ActivePage = tabMarketing then
   begin
      if qryPhoneBook.Active = False then
      begin
         qryPhoneBook.Close;
         qryPhoneBook.ParamByName('nclient').AsInteger := ANClient;
         qryPhoneBook.Open;
      end;
      if qryPhoneBook.EOF then
      begin
         MessageDlg('There is a problem! the phonebook entry for this client does not exist!!'#13#10#13#10'Search = ''' + qryClient.FieldByName('SEARCH').AsString + '''', mtError, [mbOK], 0);
      end;
   end;
  {
  if pagDetails.ActivePage.TabIndex = tabEvent.PageIndex then
  begin}
   if pagDetails.ActivePage = tabBills then
   begin
      qryInvoices.Close;
      qryInvoices.ParamByName('p_client').AsInteger := ANClient;
      qryInvoices.Open;
   end;

   if pagDetails.ActivePage = tabDocuments then
   begin
      qryDocs.Close;
      qryDocs.ParamByName('nclient').AsInteger := ANClient;
      qryDocs.Open;
   end;

   if qryPhonebook.Active = False then
   begin
      qryPhoneBook.Close;
      qryPhoneBook.ParamByName('nclient').AsInteger := ANClient;
      qryPhoneBook.Open;
   end;

   if qryParticipantEvents.Active = False then
   begin
      qryParticipantEvents.Close();
      qryParticipantEvents.ParamByName('NNAME').AsInteger := qryPhoneBook.FieldByName('nname').AsInteger;
      qryParticipantEvents.Open();
   end;
    // qryParticipantEvents.Close();
  {end;}
   updateControlsForMasterLink;
   SetCustomAddress;

   if Self.Parent <> nil then
   begin
      if (not Self.Visible) then
         Show();
   end
   else
      ShowModal();
end;

procedure TfrmClients.ChooseClient(AClientID: Integer);
// This is derived from the ChooseClient below that lets the user choose a client.
// In our case, we don't need to choose the client, we need to display the client,
// based on AClientID.
// Wanted to use DisplayClient, but it rebuilds the SQL, which is more than
// is needed here.
begin
  if frmDesktop.pagMainControl.ActivePageIndex = 0 then
    frmDesktop.AddFormToTab(Self, 1);
  DisplayClient(AClientID);
  if (not Self.Visible) then
    Self.Show;
end;

procedure TfrmClients.ChooseClient;
var
  LNClient: integer;
begin
  if (Find(LNClient)) then
  begin
    if frmDesktop.pagMainControl.ActivePageIndex = 0 then
      frmDesktop.AddFormToTab(Self, 1);
    DisplayClient(LNClient);
    if (not Self.Visible) then
      Self.Show;
  end
  else
    Close();
end;


procedure TfrmClients.tbtnSnapshotClick(Sender: TObject);
begin
  frmDesktop.AddSnapshot(70, dbtbSearchkey.Text);
end;

procedure TfrmClients.dbgrMattersDblClick(Sender: TObject);
begin
   if not qryMatters.EOF then
   begin
      // Work out the Matter number
      try
         Application.CreateForm(TfrmMatters, frmMatters);
         frmMatters.DisplayMatter(qryMatters.FieldByName('FILEID').AsString);
//      if frmDesktop.pagMainControl.ActivePageIndex = 0 then
      finally
         frmDesktop.AddFormToTab(frmMatters,1);

         if (not frmMatters.Visible) then
            frmMatters.Show;

//      if (Owner is TfrmMatters) then
//         Self.Close;
      end;
   end;
end;

procedure TfrmClients.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryDocReg2.Close;
   qryNotes.Close;
   qryDocReg.Close;
   qryArchived.Close;
   qryPhonebook.Close;
   qryClient.Close;
   qryMatters.Close;
   qryGroups.Close;
   qryTmpSQL.Close;
   qryTmpLedger.Close;
   qryGroupings.Close;
   qrySundLedger.Close;
   qryFeesLedger.Close;
   qryUpdate.Close;
   qryClientBalances.Close;
   qGroups.Close;
   qryArchiveTblCount.Close;
   qPGroups.Close;
   qryGender.Close;
   qryReferral.Close;
   qryPacket.Close;
   qryFirmContacts.Close;
   qryParticipantEvents.Close;
   qryArchived.Close;

   SettingSaveStream(dmAxiom.UserID,'CLIENT_MATTERS',tvMatters);
   // 20 Sep 2018 dw cleanup stringlist
  if FAttachFileName <> nil then
     FAttachFileName := nil;

   RemoveFromDesktop(Self);
//  Action := caFree;
end;

procedure TfrmClients.tbtnMatterNewClick(Sender: TObject);
var
  LMatterNew: TfrmMatterNew;
begin
                                                              
  LMatterNew := TfrmMatterNew.Create(Self);
  begin
    LMatterNew.DisplayClient(ANClient);
    LMatterNew.ShowModal;
  end;
  if FormExists(frmMatterSearch) then
  begin
    dmAxiom.qryMSearch.Close;
    dmAxiom.qryMSearch.Open;
  end;
  DisplayClient(ANClient)
end;

procedure TfrmClients.DisplayDocItems;
begin
  qryDocReg2.Close();
  qryDocReg2.Open();
end;


procedure TfrmClients.MakeMatterLedger;
begin
  qryFeesLedger.Close();
  qryFeesLedger.ParamByName('P_Matter').AsInteger := qryMatters.FieldByName('NMATTER').AsInteger;
  qryFeesLedger.Open();
  try
    while not qryFeesLedger.EOF do
    begin
      qryTmpLedger.Insert();
      qryTmpLedger.FieldByName('REPORTER').AsString := dmAxiom.UserID;
      qryTmpLedger.FieldByName('FILEID').AsString := qryMatters.FieldByName('FILEID').AsString;
      qryTmpLedger.FieldByName('CREATED').AsDateTime := qryFeesLedger.FieldByName('CREATED').AsDateTime;
      qryTmpLedger.FieldByName('TYPE').AsString := 'Fee';
      qryTmpLedger.FieldByName('REFNO').AsString := qryFeesLedger.FieldByName('AUTHOR').AsString;
      qryTmpLedger.FieldByName('DESCR').AsString := qryFeesLedger.FieldByName('DESCR').AsString;
      qryTmpLedger.FieldByName('BANK').AsString := qryFeesLedger.FieldByName('BANK_ACCT').AsString;
      if qryFeesLedger.FieldByName('AMOUNT').AsCurrency > 0 then
        qryTmpLedger.FieldByName('FEESDR').AsCurrency := qryFeesLedger.FieldByName('AMOUNT').AsCurrency;
      if qryFeesLedger.FieldByName('AMOUNT').AsCurrency < 0 then
        qryTmpLedger.FieldByName('FEESCR').AsCurrency := qryFeesLedger.FieldByName('AMOUNT').AsCurrency;
      qryFeesLedger.Next();
    end;
  finally
    qryFeesLedger.Close();
  end;

  qrySundLedger.ParamByName('P_Matter').AsInteger := qryMatters.FieldByName('NMATTER').AsInteger;
  qrySundLedger.Open();
  try
    while not qrySundLedger.EOF do
    begin
      qryTmpLedger.Insert();
      qryTmpLedger.FieldByName('REPORTER').AsString := dmAxiom.UserID;
      qryTmpLedger.FieldByName('FILEID').AsString := qryMatters.FieldByName('FILEID').AsString;
      qryTmpLedger.FieldByName('CREATED').AsDateTime := qrySundLedger.FieldByName('CREATED').AsDateTime;
      qryTmpLedger.FieldByName('TYPE').AsString := 'Sundry';
      qryTmpLedger.FieldByName('REFNO').AsString := qrySundLedger.FieldByName('TYPEDESC').AsString;
      qryTmpLedger.FieldByName('BANK').AsString := qrySundLedger.FieldByName('ACCT').AsString;
      qryTmpLedger.FieldByName('DESCR').AsString := qrySundLedger.FieldByName('DESCR').AsString;
      if qrySundLedger.FieldByName('AMOUNT').AsCurrency > 0 then
        qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qrySundLedger.FieldByName('AMOUNT').AsCurrency;
      if qrySundLedger.FieldByName('AMOUNT').AsCurrency < 0 then
        qryTmpLedger.FieldByName('SUNDCR').AsCurrency := qrySundLedger.FieldByName('AMOUNT').AsCurrency;
      qrySundLedger.Next();
    end;
  finally
    qrySundLedger.Close();
  end;

  // Load the Allocs
  qryTmpSQL.Close();
  qryTmpSQL.SQL.Clear();
  qryTmpSQL.SQL.Add('SELECT CREATED, ACCT, AMOUNT, DESCR, REFNO, TRUST, TYPE, FEE, OUTLAY, SUNDRY, NRECEIPT, NCHEQUE, NJOURNAL FROM ALLOC WHERE NMATTER = ' + IntToStr(qryMatters.FieldByName('NMATTER').AsInteger));
  qryTmpSQL.Open();
  try
    while not qryTmpSQl.EOF do
    begin
      qryTmpLedger.Insert();
      qryTmpLedger.FieldByName('REPORTER').AsString := dmAxiom.UserID;
      qryTmpLedger.FieldByName('FILEID').AsString := qryMatters.FieldByName('FILEID').AsString;
      qryTmpLedger.FieldByName('CREATED').AsDateTime := qryTmpSQL.FieldByName('CREATED').AsDateTime;
      if qryTmpSQL.FieldByName('NCHEQUE').AsInteger > 0 then
        qryTmpLedger.FieldByName('TYPE').AsString := 'Payment';
      if qryTmpSQL.FieldByName('NRECEIPT').AsInteger > 0 then
        qryTmpLedger.FieldByName('TYPE').AsString := 'Receipt';
      if qryTmpSQL.FieldByName('NJOURNAL').AsInteger > 0 then
        qryTmpLedger.FieldByName('TYPE').AsString := 'Journal';
      if qryTmpSQL.FieldByName('TYPE').AsString = 'RV' then
        qryTmpLedger.FieldByName('TYPE').AsString := 'Reversal';
      qryTmpLedger.FieldByName('REFNO').AsString := qryTmpSQL.FieldByName('REFNO').AsString;
      qryTmpLedger.FieldByName('DESCR').AsString := qryTmpSQL.FieldByName('DESCR').AsString;
      qryTmpLedger.FieldByName('BANK').AsString := qryTmpSQL.FieldByName('ACCT').AsString;
      if qryTmpSQL.FieldByName('TRUST').AsString = 'T' then
      begin
        // Trust transactions
        if qryTmpSQL.FieldByName('AMOUNT').AsCurrency < 0.0 then
          qryTmpLedger.FieldByName('TRUSTDR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency
        else
          qryTmpLedger.FieldByName('TRUSTCR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency;
      end
      else if (qryTmpSQL.FieldByName('NRECEIPT').AsInteger > 0) or (qryTmpSQL.FieldByName('TYPE').AsString = 'J2') then
      begin
        // Receipts
        if (qryTmpSQL.FieldByName('FEE').AsCurrency + qryTmpSQL.FieldByName('FEE').AsCurrency + qryTmpSQL.FieldByName('FEE').AsCurrency) > 0 then
        begin
          // Cash based receipt
          if qryTmpSQL.FieldByName('FEE').AsCurrency < 0 then
            qryTmpLedger.FieldByName('FEESDR').AsCurrency := qryTmpSQL.FieldByName('FEE').AsCurrency;
          if qryTmpSQL.FieldByName('FEE').AsCurrency > 0 then
            qryTmpLedger.FieldByName('FEESCR').AsCurrency := qryTmpSQL.FieldByName('FEE').AsCurrency;
          if qryTmpSQL.FieldByName('OUTLAY').AsCurrency < 0 then
            qryTmpLedger.FieldByName('DISBDR').AsCurrency := qryTmpSQL.FieldByName('OUTLAY').AsCurrency;
          if qryTmpSQL.FieldByName('OUTLAY').AsCurrency > 0 then
            qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpSQL.FieldByName('OUTLAY').AsCurrency;
          if qryTmpSQL.FieldByName('SUND').AsCurrency < 0 then
            qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qryTmpSQL.FieldByName('SUNDRY').AsCurrency;
          if qryTmpSQL.FieldByName('SUND').AsCurrency > 0 then
            qryTmpLedger.FieldByName('SUNDCR').AsCurrency := qryTmpSQL.FieldByName('SUNDRY').AsCurrency;
        end
        else
        begin
          // Accrual based receipt
          if qryTmpSQL.FieldByName('AMOUNT').AsCurrency < 0.0 then
            qryTmpLedger.FieldByName('DEBTDR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency
          else
            qryTmpLedger.FieldByName('DEBTCR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency;
        end;
      end
      else if (qryTmpSQL.FieldByName('NCHEQUE').AsInteger > 0) or (qryTmpSQL.FieldByName('TYPE').AsString = 'J1') then
      begin
        // Cheque
        if qryTmpSQL.FieldByName('AMOUNT').AsCurrency < 0.0 then
          qryTmpLedger.FieldByName('DISBDR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency
        else
          qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency;
      end;

      qryTmpLedger.Post();
      qryTmpSQL.Next();
    end;
  finally
    qryTmpSQL.Close();
  end;

  // Load the Bills
  qryTmpSQL.SQL.Clear();
  qryTmpSQL.SQL.Add('SELECT *');
  qryTmpSQL.SQL.Add('FROM NMEMO');
  qryTmpSQL.SQL.Add('WHERE NMATTER = :NMatter');
  qryTmpSQL.ParamByName('NMatter').AsInteger := qryMatters.FieldByName('NMATTER').AsInteger;
  qryTmpSQL.Open();
  try
    while not qryTmpSQl.EOF do
    begin
      if qryTmpSQL.FieldByName('DISPATCHED').AsString <> '' then
      begin
        qryTmpLedger.Insert();
        qryTmpLedger.FieldByName('REPORTER').AsString := dmAxiom.UserID;
        qryTmpLedger.FieldByName('FILEID').AsString := qryMatters.FieldByName('FILEID').AsString;
        qryTmpLedger.FieldByName('CREATED').AsDateTime := qryTmpSQL.FieldByName('DISPATCHED').AsDateTime;
        qryTmpLedger.FieldByName('TYPE').AsString := 'Bill';
        qryTmpLedger.FieldByName('REFNO').AsString := qryTmpSQL.FieldByName('REFNO').AsString;
        qryTmpLedger.FieldByName('BANK').AsString := qryTmpSQL.FieldByName('BANK_ACCT').AsString;
        qryTmpLedger.FieldByName('DESCR').AsString := 'Client Bill ' + qryTmpSQL.FieldByName('REFNO').AsString;
        if qryTmpSQL.FieldByName('FEES').AsCurrency < 0 then
          qryTmpLedger.FieldByName('FEESDR').AsCurrency := qryTmpSQL.FieldByName('FEES').AsCurrency;
        if qryTmpSQL.FieldByName('FEES').AsCurrency > 0 then
          qryTmpLedger.FieldByName('FEESCR').AsCurrency := qryTmpSQL.FieldByName('FEES').AsCurrency;
        if qryTmpSQL.FieldByName('DISB').AsCurrency < 0 then
          qryTmpLedger.FieldByName('DISBDR').AsCurrency := qryTmpSQL.FieldByName('DISB').AsCurrency;
        if qryTmpSQL.FieldByName('DISB').AsCurrency > 0 then
          qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpSQL.FieldByName('DISB').AsCurrency;
        if qryTmpSQL.FieldByName('SUND').AsCurrency < 0 then
          qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qryTmpSQL.FieldByName('SUND').AsCurrency;
        if qryTmpSQL.FieldByName('SUND').AsCurrency > 0 then
          qryTmpLedger.FieldByName('SUNDCR').AsCurrency := qryTmpSQL.FieldByName('SUND').AsCurrency;
        if (qryTmpSQL.FieldByName('FEES').AsCurrency + qryTmpSQL.FieldByName('DISB').AsCurrency + qryTmpSQL.FieldByName('SUND').AsCurrency) > 0 then
          qryTmpLedger.FieldByName('DEBTDR').AsCurrency := (qryTmpSQL.FieldByName('FEES').AsCurrency + qryTmpSQL.FieldByName('DISB').AsCurrency + qryTmpSQL.FieldByName('SUND').AsCurrency)
        else
          qryTmpLedger.FieldByName('DEBTCR').AsCurrency := (qryTmpSQL.FieldByName('FEES').AsCurrency + qryTmpSQL.FieldByName('DISB').AsCurrency + qryTmpSQL.FieldByName('SUND').AsCurrency);
        qryTmpLedger.Post();
      end;
      qryTmpSQL.Next();
    end;
  finally
    qryTmpSQL.Close();
  end;
end;

procedure TfrmClients.mnuFileLedgersCombobyDateClick(Sender: TObject);
begin
  qryTmpLedger.Close();
  qryTmpLedger.SQL.Clear;
  qryTmpLedger.SQL.Add('DELETE FROM LEDGER WHERE REPORTER = ' + QuotedStr(dmAxiom.UserID));
  qryTmpLedger.ExecSQL;
  qryTmpLedger.SQL.Clear;
  qryTmpLedger.SQL.Add('SELECT * FROM LEDGER WHERE REPORTER = ' + QuotedStr(dmAxiom.UserID));
  qryTmpLedger.Open();

  qryMatters.First;
  while not qryMatters.EOF do
  begin
    MakeMatterLedger;
    qryMatters.Next;
  end;

  qryTmpLedger.Close();
  qryTmpLedger.Open();

//  qrComboLedger.PreviewModal();

  qryTmpLedger.Close();
  qryTmpLedger.SQL.Clear();
  qryTmpLedger.SQL.Add('DELETE FROM LEDGER WHERE REPORTER = ' + QuotedStr(dmAxiom.UserID));
  qryTmpLedger.ExecSQL();

end;


procedure TfrmClients.tbtnFindClick(Sender: TObject);
begin
  ConfirmSave();
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);
  if frmClientSearch.ShowModal = mrOk then
  begin
    frmDesktop.AddFormToTab(Self, 1);
    DisplayClient(frmClientSearch.qryClientList.FieldByName('NCLIENT').AsInteger);
  end;
end;


procedure TfrmClients.dbcbPacketChange(Sender: TObject);
begin
 // if qryDocReg.Locate('PACKETID', dbcbPacket.Text, [])then
//    DisplayDocItems()
//  else
//    MessageDlg('System error. Please contact your support staff to report this error!', mtError, [mbOK], 0);
end;


procedure TfrmClients.pagDetailsChange(Sender: TObject);
var
  iCtr : integer;
  LDefaultAddress,
  sMatterFilter: string;
begin
   ConfirmSave();
   qryMatters.Close();
   qryArchived.Close();
   qryPhoneBook.Close();
   qryDocReg.Close();
   qryDocReg2.Close();
   qryNotes.Close();
   qOtherClients.Close();
   actEditMatter.Enabled := False;
   actMatterArchive.Enabled := False;
   actOpenMatter.Enabled := False;
 //  dtpBirthDate.Checked := false;
 //  dtpBirthDate.Date := Trunc(Now);
   Screen.Cursor := crSQLWait;
   if pagDetails.ActivePage = tabMatters then
   begin
     if edSearch.Text <> '' then
       edSearch.Clear();
   if rbOpenMatters.Checked then
      sMatterFilter := 'rbOpenMatters';
   if rbAllMatters.Checked then
      sMatterFilter := 'rbAllMatters';
   if rbClosedMatters.Checked then
      sMatterFilter := 'rbClosedMatters';
     MakeMatterSQL(' ORDER BY OPENED DESC, FILEID DESC' ,sMatterFilter);
{     qryMatters.Close();
     qryMatters.ParamByName('NCLIENT').AsInteger := NClient;
     qryMatters.ParamByName('FILTER').AsString := 'rbOpenMatters';
     if chkCurrentEntity.Checked then
         qryMatters.ParamByName('ENTITY').AsString := dmAxiom.Entity
     else
         qryMatters.ParamByName('ENTITY').Clear;
     qryMatters.Open();    }
     //tbtnMatterEdit.Enabled := not qryMatters.IsEmpty;
   end else if pagDetails.ActivePage = tsOtherClients then
   begin
     qOtherClients.Close();
     qOtherClients.ParamByName('nclient').AsInteger := ANClient;
 //    qOtherClients.ParamByName('category').AsString := MultiClientGroup;
     qOtherClients.Open();
   end
   else if pagDetails.ActivePage = tabArchive then
   begin
     qryArchived.Close();
     qryArchived.ParamByName('nclient').AsInteger := ANClient;
     qryArchived.Open();
   end
   else if pagDetails.ActivePage = tabAddress then
   begin
     qryPhoneBook.ParamByName('NCLIENT').AsInteger := ANClient;
     qryPhoneBook.Open();

     LDefaultAddress := qryPhoneBook.FieldByName('WHICHADDRESS').AsString;
     if LDefaultAddress = 'S' then
       tsStreetAddress.Highlighted := True  //Caption := StreetAddressTab + ' *'
     else if LDefaultAddress = 'P' then
       tsPostalAddress.Highlighted := True  //Caption := PostalAddressTab + ' *'
     else if LDefaultAddress = 'C' then
       tsCustomAddress.Highlighted := True  //Caption := FCustomAddress + ' *';
     else if LDefaultAddress = 'D' then
        tsDX.Highlighted := True;   //Caption := FCustomAddress + ' *';


 //    if not qryPhonebook.FieldByName('DOB').IsNull then
 //    begin
 //      dtpBirthDate.Checked := true;
 //      dtpBirthDate.Date :=  Trunc(qryPhonebook.FieldByName('DOB').AsDateTime);
 //    end
 //    else
 //      dtpBirthDate.Checked := false;
   end
   else if pagDetails.ActivePage = tabClientGroups then
   begin
     qGroups.Close;
     qGroups.ParamByName('nclient').AsInteger := ANClient;
     qGroups.Open;
     {
     // Load the Phonebook groups
     clbGroups.Clear();
     qryGroups.Open();
     try
       iCtr := 0;
       while not qryGroups.EOF do
       begin
         qryGroupings.ParamByName('NCLIENT').AsInteger := NClient;
         qryGroupings.ParamByName('CATEGORY').AsString := qryGroups.FieldByName('CATEGORY').AsString;
         qryGroupings.Open;
         with clbGroups.Items.Add do
         begin
             Text :=  qryGroups.FieldByName('CATEGORY').AsString;
             try
                if not qryGroupings.IsEmpty then
                   State := cbsChecked;
             finally
                qryGroupings.Close();
             end;
         end;

         iCtr := iCtr + 1;
         qryGroups.Next();
       end;
     finally
       qryGroups.Close();
     end;  }
   end
   else if pagDetails.ActivePage = tabBalances then
   begin
     qryClientBalances.Close();
     qryClientBalances.ParamByName('p_file').AsInteger := ANClient;
     qryClientBalances.Execute;
     // Colour me lucky
     if qryClientBalances.FieldByName('UNBILL_FEES').AsCurrency < 0 then
       dblblWIP.Style.Font.Color := clRed
     else
       dblblWIP.Style.Font.Color := clBlue;
     if qryClientBalances.FieldByName('CL_TRUST_BAL').AsCurrency < 0 then
       dblblClearTrust.Style.Font.Color := clRed
     else
       dblblClearTrust.Style.Font.Color := clBlue;
     if qryClientBalances.FieldByName('DEBTORS').AsCurrency < 0 then
       dblblDebtors.Style.Font.Color := clRed
     else
       dblblDebtors.Style.Font.Color := clBlue;
     if qryClientBalances.FieldByName('UNBILL_DISB').AsCurrency < 0 then
       dblblUnbillDisb.Style.Font.Color := clRed
     else
       dblblUnbillDisb.Style.Font.Color := clBlue;
     if qryClientBalances.FieldByName('BILL_FEES').AsCurrency < 0 then
       dblblFees.Style.Font.Color := clRed
     else
       dblblFees.Style.Font.Color := clBlue;
     if qryClientBalances.FieldByName('TRUST_BAL').AsCurrency < 0 then
       dblblTrust.Style.Font.Color := clRed
     else
       dblblTrust.Style.Font.Color := clBlue;

       //****** populate aged debtors grid
    qryMatterAgedDebtors.Close;
    qryMatterAgedDebtors.ParamByName('p1').AsInteger := 29;
    qryMatterAgedDebtors.ParamByName('p2').AsInteger := 59;
    qryMatterAgedDebtors.ParamByName('p3').AsInteger := 89;
    qryMatterAgedDebtors.ParamByName('p4').AsInteger := 119;
 //   qryMatterAgedDebtors.ParamByName('nmatter').AsInteger := NClient;
    qryMatterAgedDebtors.ParamByName('nclient').AsInteger := ANClient;
    qryMatterAgedDebtors.Open;

   end
   else if pagDetails.ActivePage = tabNotes then
   begin
     qryNotes.ParamByName('NCLIENT').AsInteger := ANClient;
     qryNotes.Open;
   end

   else if pagDetails.ActivePage = tabSafeCustody then
   begin
      qryDocReg.AfterScroll := nil;
 //    StringPopulate(dbcbPacket.Items, 'DOCREG', 'PACKETID', 'NCLIENT = ' + qryClient.FieldByName('NCLIENT').AsString);
//     qryDocReg.AfterScroll := nil;
     qryDocReg.Close;
     qryDocReg.ParamByName('NCLIENT').AsInteger := ANClient;
     qryDocReg.Open;
 //    dbcbPacket.ItemIndex := dbcbPacket.Items.IndexOf(qryDocReg.FieldByName('PACKETID').AsString);

 // 01/03/2006 added the following 3 lines because the query.recordcount only returns the default value of 25.
     qryPacketCount.Close;
     qryPacketCount.ParamByName('NCLIENT').AsInteger := ANClient;
     qryPacketCount.Open;

  //   lblTotalPackets.Caption := qryPacketCount.FieldByName('TOTAL_PACKETS').AsString;   // IntToStr(qryDocReg.RecordCount);

     grdSafeCustOtherParties.Enabled := (not qryDocReg.IsEmpty);

     {    btnSafeCustodyNew.Enabled := dmAxiom.Security.SafeCustody.Create;
     btnSafeCustodyEdit.Enabled := dmAxiom.Security.SafeCustody.Edit;
     btnSafeCustodyDelete.Enabled := dmAxiom.Security.SafeCustody.Delete;  }

 //    tvPackets.NavigatorButtons.Delete.Enabled := dmAxiom.Security.SafeCustody.Delete;

 //    pbDeletePacket.Enabled := dmAxiom.Security.SafeCustody.Delete;
     SetSafeCustodyButtons;

     qryDocReg.AfterScroll := qryDocRegAfterScroll;
   end
   else if pagDetails.ActivePage = tabMarketing then
   begin
     if qryPhoneBook.Active = False then
     begin
       qryPhoneBook.ParamByName('NCLIENT').AsInteger := ANClient;
       qryPhoneBook.Open;

       // Get Referral Code and referredBy code
       // Look up refmarketreferral table for specific table
       if not varIsNull(qryPhoneBook.FieldByName('ReferralCode').AsString) AND (qryPhoneBook.FieldByName('ReferralCode').AsString <> '')then
       begin
         if qryReferral.Active = True then
           qryReferral.Close;
         qryReferral.SQL.Clear;
         qryReferral.SQL.Text := 'SELECT ReferralType, Descr FROM MarketReferral WHERE Code = ' + qryPhoneBook.FieldByName('ReferralCode').AsString;
         qryReferral.Open;

         edReferralType.Caption := qryReferral.FieldByName('Descr').AsString;
         if qryReferral.FieldByName('ReferralType').AsString = 'CLIENT' then
         begin
           qryMarketing.SQL.Text := 'SELECT nclient, name FROM client WHERE code = ' + QuotedStr(qryPhoneBook.FieldByName('ReferredBy').AsString);
           qryMarketing.Open;
           edReferredBy.Caption := qryMarketing.FieldByName('name').AsString;
         end
         else if qryReferral.FieldByName('ReferralType').AsString = 'CONTACT' then
         begin
           qryMarketing.SQL.Text := 'SELECT nclient, search FROM phonebook WHERE nname = ' + QuotedStr(qryPhoneBook.FieldByName('ReferredBy').AsString);
           qryMarketing.Open;
           edReferredBy.Caption := qryMarketing.FieldByName('search').AsString;
         end
         else if qryReferral.FieldByName('ReferralType').AsString = 'EMPLOYEE' then
         begin
           qryMarketing.SQL.Text := 'SELECT code, name FROM employee WHERE code = ' + QuotedStr(qryPhoneBook.FieldByName('ReferredBy').AsString);
           qryMarketing.Open;
           edReferredBy.Caption := qryMarketing.FieldByName('name').AsString;
         end
         else if qryReferral.FieldByName('ReferralType').AsString = 'OTHER' then
         begin
           edReferredBy.Caption := qryPhoneBook.FieldByName('ReferredBy').AsString;
         end;
       end;
       // End of Referral Type and Referred By

       // Referral Maintainer loading
       if not varIsNull(qryPhoneBook.FieldByName('ReferralMaintainer').AsString) then
       begin
         qryMarketing.SQL.Text := 'SELECT code, name FROM employee WHERE code = ' + QuotedStr(qryPhoneBook.FieldByName('ReferralMaintainer').AsString);
         qryMarketing.Open;
         edMaintainer.Caption := qryMarketing.FieldByName('name').AsString;
       end;
       // End of referral maintainer
     end;
     try
         lstFirmContacts.Items.Clear;
         qryFirmContacts.Close;
         qryFirmContacts.ParamByName('p_nname').AsInteger := qryPhoneBook.FieldByName('NNAME').AsInteger;
         qryFirmContacts.Open;
         while not qryFirmContacts.Eof do
         begin
            (lstFirmContacts.Items.Add).Caption := qryFirmContacts.FieldByName('name').AsString;
            qryFirmContacts.Next;
         end;
     finally
        qryFirmContacts.Close;
     end;
   end // End of else if pagDetails.ActivePage = tabMarketing then
   else if pagDetails.ActivePage = tabDocuments then
   begin
      if (not qryDocs.Active) then
      begin
         qrydocs.Close;
         qrydocs.ParamByName('nclient').AsInteger := ANClient;
         qryDocs.Open;
      end
      else
         qryDocs.Refresh;
   end
   else if pagDetails.ActivePage = tabBills then
   begin
      qryInvoices.Close;
      qryInvoices.ParamByName('p_client').AsInteger := ANClient;
      qryInvoices.Open;
      qryInvoices.Filtered := chkExcludeReversals.Checked;
   end
   else if pagDetails.ActivePage = tabDiary then
   begin
      if(not qContactNotes.Active) then
      begin
         qContactNotes.SQL.Text := FDiarySQL + ' ORDER BY d.start_dt desc ';
         qContactNotes.ParamByName('nname').AsInteger := qryClient.FieldByName('NNAME').AsInteger;
         qContactNotes.Open();
      end;
   end;
   Screen.Cursor := crDefault;
end;


procedure TfrmClients.tbtnFirstClick(Sender: TObject);
begin
  frmClientSearch.qryClientList.First;
  NavigateClient;
end;


procedure TfrmClients.tbtnPrevClick(Sender: TObject);
begin
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);
  if frmClientSearch.qryClientList.FieldByName('SEARCH').AsString <> qryClient.FieldByName('SEARCH').AsString then
  begin
    frmClientSearch.qryClientList.Close;
    frmClientSearch.qryClientList.Open;
    frmClientSearch.qryClientList.Locate('SEARCH', qryClient.FieldByName('SEARCH').AsString, []);
  end;
  frmClientSearch.qryClientList.Prior;
  NavigateClient;
end;


procedure TfrmClients.tbtnNextClick(Sender: TObject);
begin
   if not FormExists(frmClientSearch) then
      Application.CreateForm(TfrmClientSearch, frmClientSearch);
   if frmClientSearch.qryClientList.FieldByName('SEARCH').AsString <> qryClient.FieldByName('SEARCH').AsString then
      frmClientSearch.qryClientList.Locate('SEARCH', qryClient.FieldByName('SEARCH').AsString, []);
   frmClientSearch.qryClientList.Next;
   NavigateClient;
end;


procedure TfrmClients.tbtnLastClick(Sender: TObject);
begin
  frmClientSearch.qryClientList.Last;
  NavigateClient;
end;


procedure TfrmClients.NavigateClient;
begin
  DisplayClient(frmClientSearch.qryClientList.FieldByName('NCLIENT').AsInteger);
end;


procedure TfrmClients.mnuFileDeleteClick(Sender: TObject);
begin
//  tbtnDelete.Click;
end;


procedure TfrmClients.tbtnNewClick(Sender: TObject);
//var
//  LForm:TfrmPhoneBookNew;
begin
{  LForm := TfrmPhoneBookNew.Create(Self);
  LForm.SetupForClient(0);
  LForm.ShowModal();
}

  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  frmPhoneBookSearch.SelectingClients := True;
  if(frmPhoneBookSearch.ShowModal() = mrOk) then
  begin

    frmClientSearch.qryClientList.Close;
    SetReopenList;
    frmClientSearch.qryClientList.Open;
    frmClientSearch.FindClient(frmPhoneBookSearch.Search);
    DisplayClient(frmPhoneBookSearch.NClient);
  end;
end;


procedure TfrmClients.SetReopenList;
begin
   ReopenListSet('CLIENT', dxBarListClients);
end;


procedure TfrmClients.mnuReopen(Sender: TObject);
begin
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);
  if frmClientSearch.FindClient((Sender as TMenuItem).Caption) then
    NavigateClient
  else
  begin
    DisplayClient((Sender as TMenuItem).Caption);
    SetReopenList;
  end;
end;


procedure TfrmClients.qryDocRegAfterScroll(DataSet: TDataSet);
var
   i : integer;
begin
{   try
      dblblPath.Visible := qryDocReg.FieldByName('ADDRESS_PATH').AsString <> '';
      btnSCWord.Visible := qryDocReg.FieldByName('ADDRESS_PATH').AsString <> '';
      btnPrintSafeCustody.Visible := not qryDocReg.IsEmpty;
      cbShowAllDates.Visible := not qryDocReg.IsEmpty;
      qryDocReg2.Close();
      qryDocReg2.ParamByName('ndocreg').AsInteger := qrydocReg.FieldByName('ndocreg').AsInteger;
      qryDocReg2.Open();
      if qryDocReg.FieldByName('REALPACK').AsInteger = 0 then
      begin
         for i := 0 to pnlButtons.ControlCount - 1 do
            pnlButtons.Controls[i].Enabled := False;
      end
      else
      begin
         for i := 0 to pnlButtons.ControlCount - 1 do
            pnlButtons.Controls[i].Enabled := True;
      end;
      qryDocRegOtherParties.Close();
    //  qryDocRegOtherParties.ParamByName('ndocreg').AsInteger := qrydocReg.FieldByName('ndocreg').AsInteger;
      qryDocRegOtherParties.Open();
//      tvPackets.NavigatorButtons.Delete.Enabled := qryDocReg2.RecordCount = 0;
//      pbDeletePacket.Enabled := (qryDocReg2.RecordCount = 0) AND (dmAxiom.Security.SafeCustody.Delete);
    //  dbNavPackets.Buttons.Delete.Enabled := qryDocReg2.RecordCount = 0;
      pbEditPacket.Enabled := (dmAxiom.Security.SafeCustody.Edit) AND ( qryDocReg.FieldByName('REALPACK').AsInteger = 1);
      pbDeletePacket.Enabled := (qryDocReg2.RecordCount = 0) AND (dmAxiom.Security.SafeCustody.Delete) AND ( qryDocReg.FieldByName('REALPACK').AsInteger = 1);
      tvDocumentsPROCESS.Options.Editing := (qryDocReg.FieldByName('REALPACK').AsInteger = 1);
      SetSafeCustodyButtons;
   except
     // silent
   end;    }
end;


procedure TfrmClients.qryClientAfterScroll(DataSet: TDataSet);
begin

//  actNavLast.Enabled := not frmClientSearch.qryClients.EOF;
//  actNavNext.Enabled := not frmClientSearch.qryClients.EOF;

//  actNavFirst.Enabled := not frmClientSearch.qryClients.BOF;
//  actNavPrevious.Enabled := not frmClientSearch.qryClients.BOF;
  vtCustomData.RootNodeCount := 0;
   if DataSet.Active then
   begin
      if not qryClient.IsEmpty then
      begin
        if (qryClient.FieldByName('GENDER').AsString = 'C') or (qryClient.FieldByName('GENDER').AsString = 'G') then
          lblTaxNumberMsg.Caption := qryGender.FieldByName('ACNCAPTION').AsString
        else
          lblTaxNumberMsg.Caption := 'T.F.N.';
        if qryMatterCount.Active then
          actDeleteClient.Enabled := (qryMatterCount.FieldByName('MATTERS').AsInteger + qryArchMatterCount.FieldByName('ARCHIVES').AsInteger) = 0
        else
          actDeleteClient.Enabled := False;
      end
      else
        actDeleteClient.Enabled := False;

      pagDetails.OnChange(Self);
   end;
   qPGroups.Close();
   FCustomDataShowing := False;
end;


procedure TfrmClients.btnSCWordClick(Sender: TObject);
var
   DocErrMsg: string;
begin
  ExecuteFile(qryDocReg.FieldByName('ADDRESS_PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
end;

procedure TfrmClients.cbShowMatterDiaryClick(Sender: TObject);
begin
   if (cbShowMatterDiary.Checked = True) then
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
         ParamByName('nname').AsInteger := qryClient.FieldByName('NNAME').AsInteger;;
         ParamByName('nclient').AsInteger := qryClient.FieldByName('NCLIENT').AsInteger;;
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
         ParamByName('nname').AsInteger := qryClient.FieldByName('NNAME').AsInteger;;
         Open;
      end;
   end;
end;

procedure TfrmClients.ConfirmSave;
begin
  // neither client or phonebook is savable anymore..
   if (qryDocReg.Modified) or (FSafeCustodyModified) then
   begin
      if MsgAsk('Do you want to save your changes?') = mrYes then
      begin
         qryDocReg.ApplyUpdates;
         FSafeCustodyModified := False;
      end
      else
         qryDocReg.Cancel;
  end;
end;


procedure TfrmClients.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  ConfirmSave;
end;

procedure TfrmClients.qryClientBeforeScroll(DataSet: TDataSet);
begin
   if DataSet.Active then
      ConfirmSave;
end;

procedure TfrmClients.tbtnMatterEditClick(Sender: TObject);
var
  LMatterNew : TfrmMatterNew;
begin
  if not qryMatters.IsEmpty then
  begin
    LMatterNew := TfrmMatterNew.Create(Self);
    LMatterNew.FromDisplayMatter := True;
    LMatterNew.MatterDisplay(qryMatters.FieldByName('NMATTER').AsInteger);
    if LMatterNew.ShowModal = mrOK then
      DisplayClient(ANClient);
  end;
end;

procedure TfrmClients.dbgrArchivedDblClick(Sender: TObject);
var
  LArchive: TfrmMatters;
begin
  if not qryArchived.IsEmpty then
  begin
    LArchive := TfrmMatters.Create(Self);
    LArchive.DisplayMatter(qryArchived.FieldByName('FILEID').AsString);
    LArchive.Show;
  end;
end;


procedure TfrmClients.qryDocRegDESCRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryDocReg.FieldByName('DESCR').AsString;
end;

procedure TfrmClients.qryNotesNOTESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryNotes.FieldByName('NOTES').AsString;
end;

procedure TfrmClients.btnGroupAddClick(Sender: TObject);
begin
  if tbGroup.Text <> '' then
  begin
    qryUpdate.SQL.Text := 'INSERT INTO CLIENTGROUP (CATEGORY, SUPERGROUP) VALUES (' + QuotedStr(tbGroup.Text) + ', ''N'')';
    qryUpdate.ExecSQL;
    qryUpdate.SQL.Text := 'INSERT INTO CLIENTGROUPINGS (NCLIENT, CATEGORY) VALUES (' + IntToStr(ANClient) + ', ' + QuotedStr(tbGroup.Text) + ')';
    qryUpdate.ExecSQL;
    with clbGroups.Items.Add do
    begin
       State := cbsChecked;
       Text :=  tbGroup.Text;
    end;
    tbGroup.Text := '';
  end;
end;


procedure TfrmClients.clbGroups1ClickCheck(Sender: TObject);
begin
{  if clbGroups.Items.Items[clbGroups.ItemIndex].Checked then
  begin
    qryUpdate.SQL.Text := 'INSERT INTO CLIENTGROUPINGS VALUES (' + IntToStr(NClient) + ', ' + QuotedStr(clbGroups.Items[clbGroups.ItemIndex]) + ')';
    qryUpdate.ExecSQL();

    qryTmpSQL.Close();
    qryTmpSQL.SQL.Text := 'SELECT SUPERGROUP FROM CLIENTGROUP WHERE CATEGORY = ' + QuotedStr(clbGroups.Items[clbGroups.ItemIndex]);
    qryTmpSQL.Open();
    try
      if qryTmpSQL.FieldByName('SUPERGROUP').AsString = 'Y' then
      begin
        qryUpdate.SQL.Text := 'UPDATE CLIENT SET CLIENTGROUP = ' + QuotedStr(clbGroups.Items[clbGroups.ItemIndex]) + ' WHERE NCLIENT = ' + IntToStr(NClient);
        qryUpdate.ExecSQL();
      end;
    finally
      qryTmpSQL.Close();
    end;
  end
  else
  begin
    qryUpdate.SQL.Text := 'DELETE FROM CLIENTGROUPINGS WHERE NCLIENT = ' + IntToStr(NClient) + ' AND CATEGORY = ' + QuotedStr(clbGroups.Items[clbGroups.ItemIndex]);
    qryUpdate.ExecSQL();

    qryTmpSQL.Close();
    qryTmpSQL.SQL.Text := 'SELECT SUPERGROUP FROM CLIENTGROUP WHERE CATEGORY = ' + QuotedStr(clbGroups.Items[clbGroups.ItemIndex]);
    qryTmpSQL.Open();
    try
      if qryTmpSQL.FieldByName('SUPERGROUP').AsString = 'Y' then
      begin
        qryUpdate.SQL.Text := 'UPDATE CLIENT SET CLIENTGROUP = Null WHERE NCLIENT = ' + IntToStr(NClient);
        qryUpdate.ExecSQL();
      end;
    finally
      qryTmpSQL.Close();
    end;
  end;  }
end;


procedure TfrmClients.btnNotesNewClick(Sender: TObject);
var
  LFrm: TfrmClientNoteNew;
begin
  LFrm := TfrmClientNoteNew.Create(Self);
  LFrm.DisplayClient(ANClient);
  qryNotes.Close();
  qryNotes.Open();
end;

procedure TfrmClients.tbtnClientDeleteClick(Sender: TObject);
begin
  if not qryClient.IsEmpty then
  begin
    if qryClient.FieldByName('MATTERS').AsInteger + qryClient.FieldByName('ARCHIVES').AsInteger = 0 then
      if MsgAsk('Are you sure you want to delete this Client?') = mrYes then
      begin
        ReopenListDelete('CLIENT', QuoteFix(qryClient.FieldByName('SEARCH').AsString));

        qryTmpSQL.SQL.Text := 'UPDATE PHONEBOOK SET NCLIENT = NULL WHERE NCLIENT = ' + IntToStr(ANClient);
        qryTmpSQL.ExecSQL();

        qryClient.Delete();
        qryClient.ApplyUpdates();
        PlaySound('Delete');
        frmClientSearch.qryClientList.Close();
        frmClientSearch.qryClientList.Open();
        DisplayClient(frmClientSearch.qryClientList.FieldByName('NCLIENT').AsInteger);
      end;
  end;
end;

procedure TfrmClients.tbtnClientEditClick(Sender: TObject);
var
  LForm:TfrmPhoneBookNew;
begin
  LForm := TfrmPhoneBookNew.Create(Self);
  LForm.SetupForClient(ANClient);
  LForm.ShowModal();
  pagDetailsChange(pagDetails.ActivePage);
end;

procedure TfrmClients.btnNotesDeleteClick(Sender: TObject);
begin
  if not qryNotes.IsEmpty then
  begin
    if MsgAsk('Do you want to delete this Note?') = mrYes then
    begin
      qryNotes.Delete();
      qryNotes.ApplyUpdates();
      PlaySound('Delete');
    end;
  end;
end;


procedure TfrmClients.FormCreate(Sender: TObject);
var
   iMaxLength : integer;
begin
   Screen.Cursor := crSQLWait;

   iMaxLength := 0;
   PacketCount := 0;
   vtCustomData.RootNodeCount := 0;
   btnNewClient.Enabled := dmAxiom.Security.Client.Create;
   btnEditClient.Enabled := dmAxiom.Security.Client.Edit;
   btnDeleteClient.Enabled := dmAxiom.Security.Client.Delete;
   actNewMatter.Visible := dmAxiom.Security.Matter.Create;
   actEditMatter.Visible := dmAxiom.Security.Matter.Edit;
   btnGroupAdd.Visible := dmAxiom.Security.Client.Group.Create;
   tbGroup.Visible := dmAxiom.Security.Client.Group.Create;
   tabClientGroups.TabVisible := dmAxiom.Security.Client.Group.Access;
   tabMarketing.TabVisible := dmAxiom.Security.Phonebook.Tabs.Marketing;
   tsCustomData.TabVisible := dmAxiom.Security.Phonebook.Tabs.CustomData;
   tabEvent.TabVisible := dmAxiom.Security.Phonebook.Tabs.Events;


   if dbgrMatters.Font.Size <> dmAxiom.GridFont then
      dbgrMatters.Font.Size := dmAxiom.GridFont;

   if dbgrRelationship.Font.Size <> dmAxiom.GridFont then
      dbgrRelationship.Font.Size := dmAxiom.GridFont;

   if grdClientGroups.Font.Size <> dmAxiom.GridFont then
      grdClientGroups.Font.Size := dmAxiom.GridFont;

   if dbgrNotes.Font.Size <> dmAxiom.GridFont then
      dbgrNotes.Font.Size := dmAxiom.GridFont;

   if grdPackets.Font.Size <> dmAxiom.GridFont then
      grdPackets.Font.Size := dmAxiom.GridFont;

   if grdDocuments.Font.Size <> dmAxiom.GridFont then
      grdDocuments.Font.Size := dmAxiom.GridFont;

   if dbgOtherClients.Font.Size <> dmAxiom.GridFont then
      dbgOtherClients.Font.Size := dmAxiom.GridFont;

   if grdParticipantEvents.Font.Size <> dmAxiom.GridFont then
      grdParticipantEvents.Font.Size := dmAxiom.GridFont;

   if not dmAxiom.Security.Client.Group.Create then
   begin
     clbGroups.Top := 8;
     clbGroups.Height := clbGroups.Height + 32;
   end;
   clbGroups.Enabled := dmAxiom.Security.Client.Group.Assign;
   tabNotes.TabVisible := dmAxiom.Security.Client.Notes.Access;
   btnNotesNew.Visible := dmAxiom.Security.Client.Notes.Create;
   btnNotesDelete.Visible := dmAxiom.Security.Client.Notes.Delete;

   tabSafeCustody.TabVisible := dmAxiom.Security.SafeCustody.Access;

{   with tvPackets.OptionsData do
   begin
      Inserting := dmAxiom.Security.SafeCustody.Create;
      Editing := dmAxiom.Security.SafeCustody.Edit;
      Deleting := dmAxiom.Security.SafeCustody.Delete;
      Appending := dmAxiom.Security.SafeCustody.Create;
   end;

   with tvPackets.OptionsView do
   begin
      NewItemRow := dmAxiom.Security.SafeCustody.Create;
   end; }

   pbAddPacket.Enabled := dmAxiom.Security.SafeCustody.Create;
//   pbEditPacket.Enabled := dmAxiom.Security.SafeCustody.Edit;
//   pbDeletePacket.Enabled := dmAxiom.Security.SafeCustody.Delete;

   if(SettingExists(C_EMP,C_OWNERCLIENT,C_MULTICLIENTGROUP)) then
     MultiClientGroup := SettingLoadString(C_EMP,C_OWNERCLIENT,C_MULTICLIENTGROUP)
   else
     MultiClientGroup := '';

//   Self.Caption := 'Client: ' + qryClient.FieldByName('SEARCH').AsString;
//   if not FormExists(frmClientSearch) then
//     Application.CreateForm(TfrmClientSearch, frmClientSearch);
 //  dtpBirthDate.Date := Trunc(Now);
   GetLabel(lblPartner, 'MATTER', 'PARTNER', iMaxLength);
   tvMattersARCHIVENUM.Caption := getLabelValue('MATTER','ARCHIVENUM', iMaxLength, 'Archived #');
   cxGridDBPARTNER.Caption := GetLabelValue('MATTER', 'PARTNER', iMaxLength, 'Partner');
   cxGridDBAUTHOR.Caption := GetLabelValue('MATTER','AUTHOR', iMaxLength, 'Author');

   dblblClientPack.Visible := False;
   lblClientPack.Visible := False;
   FAttachFileName := TStringList.Create;

   SettingLoadStream(dmAxiom.UserID, 'CLIENT_MATTERS', tvMatters );

   if SystemString('ENFORCE_CLIENT_PACK') = 'Y' then
   begin
      dblblClientPack.Visible := True;
      lblClientPack.Visible := True;
   end;

   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblState.Caption := 'County';
      lblPostalState.Caption := 'County';
      lblCustomState.Caption := 'County';
      lblTaxNumberMsg.Caption := 'Company No.';
      tvMattersCL_TRUST_BAL.Caption := 'Client Funds';
      tsStreetAddress.Caption := 'Client Address (Registered Office)';
      tsPostalAddress.Caption := 'Correspondence Address';
      lblTotalTrustCaption.Caption := 'Total Client Funds';
      tvInvoicesTRUST.Caption := 'Client Funds';
      lblPartner.Caption := 'Client Partner';
   end;

   tsDX.TabVisible := (SystemString('HideDXPanel') = 'N');
   pnlDOB.Visible := (SystemString('HideDOBPanel') = 'N');

   FDiarySQL := qContactNotes.SQL.Text;
   FMatterSQL := qryMatters.SQL.Text;
   Screen.Cursor := crDefault;
end;

procedure TfrmClients.mnuMatterDeleteClick(Sender: TObject);
begin
{  if not qryMatters.IsEmpty then
    if MsgAsk('Are you sure you want to delete Matter ' + qryMatters.FieldByName('FILEID').AsString + '?') = mrYes then
    begin
    end;
}
end;

procedure TfrmClients.mnuMatterOpenClick(Sender: TObject);
begin
//  dbgrMatters.OnDblClick(Self);
end;

procedure TfrmClients.edSearchChange(Sender: TObject);
begin
  try
    if pagDetails.ActivePage = tabMatters then
      qryMatters.Locate('FILEID', edSearch.Text, [loPartialKey])
  except
    // silent exception
  end;
end;

procedure TfrmClients.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    dbgrMattersDblClick(Sender);
    Key := #0;
  end;
end;

procedure TfrmClients.tbGroupKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnGroupAdd.Click;
    Key := #0;
  end;
end;

procedure TfrmClients.clickMatterFilter(Sender: TObject);
begin
// Passes the name of the clikced radio button to the
// qryMatters SQL as a Param
   MakeMatterSQL(' ORDER BY OPENED DESC, FILEID DESC', (Sender As TRadioButton).Name);
//  qryMatters.Close();
//  qryMatters.ParamByName('FILTER').AsString := (Sender As TRadioButton).Name;
//  qryMatters.Open();
end;

procedure TfrmClients.mnuFileExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClients.btnSaveClick(Sender: TObject);
begin
  ConfirmSave;
end;

procedure TfrmClients.dtpBirthDateEnter(Sender: TObject);
begin
  qryPhoneBook.Edit;
end;

procedure TfrmClients.dbgrMattersColEnter(Sender: TObject);
begin
  if (qryMatters.State <> dsInactive) then
    actEditMatter.Enabled := (MatterIsCurrent(qryMatters.FieldByName('FILEID').AsString));

end;

function TfrmClients.GetNClicent: Integer;
begin
  if qryClient.Active then
     Result := qryClient.FieldByName('NCLIENT').AsInteger;
end;

procedure TfrmClients.SetMultiClientGroup(const Value: String);
begin
  FMultiClientGroup := Value;
  tsOtherClients.TabVisible := Value <> '';
end;

procedure TfrmClients.dbgOtherClientsDblClick(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
  LfrmPhonebook := TfrmPhonebook.Create(Application);
  LfrmPhonebook.Search := qOtherClients.FieldByName('NNAME').AsString;  //qOtherClientssearch.AsString;
  LfrmPhonebook.Show();
end;

procedure TfrmClients.actNewExecute(Sender: TObject);
var
  LSafeCustodyNew :TfrmSafeCustodyNew;
begin
   if (tvPackets.Controller.SelectedRowCount > 0) then
   begin
      try
         LSafeCustodyNew := TfrmSafeCustodyNew.Create(Self, ANClient, qryDocReg.FieldByName('ndocreg').AsString);
         LSafeCustodyNew.CreateItem(qryDocReg.FieldByName('PACKETID').AsString, qryDocReg.FieldByName('DESCR').AsString,
                                    qryDocReg.FieldByName('LOCATION').AsString);
         if LSafeCustodyNew.ShowModal = mrOk then
         begin
            if not qryDocReg2.Active then
               qryDocReg2.Open;
            qryDocReg2.Refresh;
            btnSafeCustodyNew.Visible := dmAxiom.Security.SafeCustody.Create;
            btnSafeCustodyEdit.Visible := dmAxiom.Security.SafeCustody.Edit;
            btnSafeCustodyDelete.Visible := dmAxiom.Security.SafeCustody.Delete;
            btnPrintSafeCustody.Visible := True;
            btnSafeCustodyReturn.Visible := true;
            btnSafeCustodyRequest.Visible := true;
            btnDeleteSafeOtherParty.Enabled := True;
            cbShowAllDates.Visible := True;
            pbHistory.Visible := True;
         end;
      finally
         LSafeCustodyNew.Free;
      end;
   end;
end;

procedure TfrmClients.actEditExecute(Sender: TObject);
var
   LSafeCustodyNew : TfrmSafeCustodyNew;
   sFileName: string;
   bStream, fStream: TStream;
   OpenFileErr: integer;
   AExt: string;
begin
   if (not qryDocReg2.IsEmpty) then
   begin
      if (dmAxiom.Security.SafeCustody.Edit) then
      begin
         with qryDocReg do
         begin
            if UpdatesPending then
            begin
               Post;
               ApplyUpdates;
            end;
         end;
         try
            LSafeCustodyNew := TfrmSafeCustodyNew.Create(Self, ANClient, qryDocReg.FieldByName('ndocreg').AsString);
            LSafeCustodyNew.DisplayPacket(qryDocReg.FieldByName('ndocreg').AsInteger,
                                       integer(tvPacketDocumentsNDOCUMENT.EditValue) ,
                                       qryDocReg.FieldByName('PACKETID').AsString, qryDocReg.FieldByName('DESCR').AsString,
                                       qryDocReg.FieldByName('LOCATION').AsString);
        //      qryDocReg2.FieldByName('ndocument').AsInteger);
            if LSafeCustodyNew.ShowModal = mrOk then
            begin
               if not qryDocReg2.Active then
               begin
                  qryDocReg2.ParamByName('ndocReg').AsInteger := qryDocReg.FieldByName('ndocreg').AsInteger;
//                  qryDocReg2.ParamByName('nclient').AsInteger := NClient;
                  qryDocReg2.Open;
               end;
               qryDocReg2.Refresh;
            end;
         finally
            LSafeCustodyNew.Free;
         end;
      end
      else
      begin
         if qryDocReg2.fieldByname('IMAGE').IsNull then
            exit;

         try
            sFileName := 'doc_';
            // load the image in external application
            try
               bStream := qryDocReg2.CreateBlobStream(qryDocReg2.fieldByname('IMAGE'), bmRead);

               sFileName := dmAxiom.GetEnvVar('TMP')+'\';
               AExt := qryDocReg2.FieldByName('IMAGE_EXT').AsString;
               if AExt = '' then
                  AExt := 'jpg';
               sFileName := sFileName + 'doc_' + qryDocReg2.fieldByName('ndocument').AsString+ '_safe.' + AExt;
               fStream := TFileStream.Create(sFileName, fmCreate);
               try
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
         end;
      end;
   end;
end;

procedure TfrmClients.actPrintExecute(Sender: TObject);
var
   LShowAllDate: string;
begin

{   qrSafeCustody := TqrSafeCustody.Create(Self);
   try
      qrSafeCustody.PreviewModal();
   finally
      FreeAndNil(qrSafeCustody);
   end;  }
//   dmAxiom.qryDocRegItems.Close();
//   dmAxiom.qryDocRegItems.ParamByName('nclient').AsInteger :=
//       qryClient.FieldByName('nclient').AsInteger;
//   dmAxiom.qryDocRegItems.Open();

   try
      LShowAllDate := 'Y';
      if cbShowAllDates.Checked then
         LShowAllDate := 'N';
      qryPacket.Close;
      qryPacket.ParamByName('nclient').AsInteger :=  qryClient.FieldByName('nclient').AsInteger;
      qryPacket.ParamByName('NDOCREG').AsInteger := tvPacketsNDOCREG.EditValue;
//         qryDocReg.FieldByName('ndocreg').AsInteger;
      qryPacket.ParamByName('showalldate').AsString := LShowAllDate;
      qryPacket.Open;
      rptSafeCustody.Print;
   finally
      qryPacket.Close;
   end;
end;

procedure TfrmClients.actDeleteExecute(Sender: TObject);
var
   iLoop: integer;
   ARowIndex: integer;
begin
   if not qryDocReg2.IsEmpty then
   begin
      if MsgAsk('Do you want to delete the selected Item(s)?') = mrYes then
      begin
//        qryUpdate.SQL.Text := 'DELETE FROM DOCREG WHERE NCLIENT = ' + IntToStr(NClient);
//        qryUpdate.ExecSQL();

         if tvPacketDocuments.DataController.GetSelectedCount > 0 then
         begin
            try
               for iLoop := 0 to tvPacketDocuments.DataController.GetSelectedCount -1 do
               begin
                  ARowIndex := tvPacketDocuments.DataController.GetSelectedRowIndex(iLoop);
                  tvPacketDocuments.ViewData.Records[ARowIndex].Focused := True;
                  qryUpdate.SQL.Text := 'DELETE FROM DOCREGITEM WHERE NDOCUMENT = ' + qryDocReg2.FieldByName('NDOCUMENT').AsString;
                  qryUpdate.ExecSQL();
                  PlaySound('Delete');
               end;
            except
               ;
            end;
         end;
         pagDetails.OnChange(Self);
      end;
   end;
end;

procedure TfrmClients.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
{   case Button of
      nbInsert : begin
                  qryDocReg.FieldByName('nclient').AsInteger :=
                        qryClient.FieldByName('nclient').AsInteger;
                  procDocRegPacketId.Execute;
                  FNDocReg := procDocRegPacketId.Params[0].AsInteger;
//                  dbcbPacket.Text :=  GetPacketId();
                  qryDocReg.FieldByName('packetid').AsString := IntToStr(FNDocReg);
                  qryDocReg.FieldByName('ndocreg').AsInteger := FNDocReg;
                  tvPacketsPACKETID.Options.Editing := not (qryDocReg.State in [dsInsert]);
//                  dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsInsert]);
//                  dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsInsert]);
                  tvPacketsDESCR.Options.Editing  := not (qryDocReg.State in [dsInsert]);
                  tvPacketsLOCATION.Options.Editing := not (qryDocReg.State in [dsInsert]);
//                  mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsInsert]);
//                  dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsInsert]);
//                  dtpLodged.Checked := True;
               end;
      nbEdit : begin
                  dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsEdit]);
//                  dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsedit]);
                  mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsEdit]);
                  dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsEdit]);
               end;
      nbPost : begin
                  dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//                  dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsInsert,dsedit]);
                  mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
                  dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
                  btnSafeCustodyNew.Enabled := not qryDocReg.Eof;
                  qryDocReg.ApplyUpdates;
                  FSafeCustodyModified := False;
               end;
      nbCancel: begin
                  dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//                  dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsInsert,dsedit]);
                  mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
                  dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
                  btnSafeCustodyNew.Enabled := not qryDocReg.Eof;
               end;

      nbPrior: begin
                  PacketCount := PacketCount - 1;
                  if (PacketCount = 0) then
                     PacketCount := 1;
                  lblPacket.Caption := 'Packet ' + IntToStr(PacketCount);
               end;

      nbNext:  begin
                  PacketCount := PacketCount + 1;
                  if (PacketCount > qryPacketCount.FieldByName('TOTAL_PACKETS').AsInteger;  then
                     PacketCount := qryPacketCount.FieldByName('TOTAL_PACKETS').AsInteger; //qryDocReg.RecordCount;
                  lblPacket.Caption := 'Packet ' + IntToStr(PacketCount);
               end;

      nbFirst: begin
                  PacketCount := 1;
                  lblPacket.Caption := 'Packet 1';
               end;

      nbLast:  begin
                  PacketCount := qryPacketCount.FieldByName('TOTAL_PACKETS').AsInteger; //qryDocReg.RecordCount;
                  lblPacket.Caption := 'Packet ' + qryPacketCount.FieldByName('TOTAL_PACKETS').AsString; // IntToStr(PacketCount);
               end;
  end;   }
end;

procedure TfrmClients.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmClients.ppLabel78GetText(Sender: TObject; var Text: string);
begin
   Text := qryClient.FieldByName('NAME').AsString;
end;

procedure TfrmClients.FormShow(Sender: TObject);
//var
//   sCustomAddress: string;
begin
//   dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//   dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsInsert,dsEdit]);
//   mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//   dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//   btnSafeCustodyNew.Enabled := not qryDocReg.Eof;
   FSafeCustodyModified := False;

{   sCustomAddress := GetDisplayName('PHONEBOOK', 'CUSTOM ADDRESS');
   FCustomAddress := sCustomAddress;
   if sCustomAddress <> '' then
   begin
      tsCustomAddress.Caption :=  sCustomAddress;
   end;   }
   Self.Refresh;
end;

procedure TfrmClients.rptSafeCustodyPreviewFormCreate(Sender: TObject);
begin
//   rptSafeCustody.PreviewForm.WindowState := wsMaximized;
//   TppViewer(rptSafeCustody.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;


procedure TfrmClients.qryDocRegAfterEdit(DataSet: TDataSet);
begin
   FSafeCustodyModified := True;
end;

procedure TfrmClients.dbcbPacketPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   IF not IsPacketUnique(DisplayValue) then
   begin
      ErrorText := 'Packet ID is not unique.  Please enter new value and try again.';
      Error := True;
   end;
end;

function TfrmClients.IsPacketUnique(nPacket: string): boolean;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;

      try
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('SELECT ''x'' FROM DOCREG WHERE PACKETID = :nPacket');
         loQry.Params[0].AsString := nPacket;

         loQry.Open;

         Result := loQry.Eof;
      finally
      loQry.Close;
      FreeAndNil(loQry);
    end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
end;

procedure TfrmClients.dbgrMattersDBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if (qryMatters.State <> dsInactive) then
   begin
      actEditMatter.Enabled := (MatterIsCurrent(qryMatters.FieldByName('FILEID').AsString));
      actOpenMatter.Enabled := (MatterIsCurrent(qryMatters.FieldByName('FILEID').AsString));
      actDeleteMatter.Enabled := dmAxiom.Security.Matter.Delete;
   end;
end;

procedure TfrmClients.clbGroupsClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var
   bAttach: boolean;
begin
   bAttach := True;
   if clbGroups.Items.Items[clbGroups.ItemIndex].Checked then
   begin
      qryTmpSQL.Close();
      qryTmpSQL.SQL.Text := 'select ''x'' from clientgroupings cgs, clientgroup cg where cgs.NCLIENT = :nclient '+
                            ' and cgs.CATEGORY = cg.CATEGORY and cg.FINANCIAL_YN = ''Y'' ';
      qryTmpSQL.ParamByName('nclient').AsInteger := ANCLIENT;
      qryTmpSQL.Open();
      try
         if (not qryTmpSQL.EOF) then
         begin
            qryTmpSQL.Close();
            qryTmpSQL.SQL.Text := 'SELECT FINANCIAL_YN FROM CLIENTGROUP WHERE CATEGORY = ' + QuotedStr(clbGroups.Items.Items[clbGroups.ItemIndex].Text);
            qryTmpSQL.Open();
            if (qryTmpSQL.FieldByName('FINANCIAL_YN').AsString = 'Y' ) then
            begin
               MsgInfo('Only one group marked as Financial can be attached to a Client');
               bAttach := False;
               clbGroups.Items.Items[clbGroups.ItemIndex].Checked := False;
            end;
 //           qryUpdate.SQL.Text := 'UPDATE PHONEBOOK SET CLIENTGROUP = ' + QuotedStr(clbGroups.Items.Items[clbGroups.ItemIndex].Text) + ' WHERE NCLIENT = ' + IntToStr(NClient);
//          qryUpdate.ExecSQL();
         end;
      finally
         qryTmpSQL.Close();
      end;

      if bAttach then
      begin
         qryUpdate.SQL.Text := 'INSERT INTO CLIENTGROUPINGS VALUES (' + IntToStr(ANClient) + ', ' + QuotedStr(clbGroups.Items.Items[clbGroups.ItemIndex].Text) + ')';
         qryUpdate.ExecSQL();

         qryTmpSQL.Close();
         qryTmpSQL.SQL.Text := 'SELECT SUPERGROUP FROM CLIENTGROUP WHERE CATEGORY = ' + QuotedStr(clbGroups.Items.Items[clbGroups.ItemIndex].Text);
         qryTmpSQL.Open();
         try
            if qryTmpSQL.FieldByName('SUPERGROUP').AsString = 'Y' then
            begin
               qryUpdate.SQL.Text := 'UPDATE PHONEBOOK SET CLIENTGROUP = ' + QuotedStr(clbGroups.Items.Items[clbGroups.ItemIndex].Text) + ' WHERE NCLIENT = ' + IntToStr(ANClient);
               qryUpdate.ExecSQL();
            end;
         finally
            qryTmpSQL.Close();
         end;
      end;
   end
   else
   begin
      qryUpdate.SQL.Text := 'DELETE FROM CLIENTGROUPINGS WHERE NCLIENT = ' + IntToStr(ANClient) + ' AND CATEGORY = ' + QuotedStr(clbGroups.Items.Items[clbGroups.ItemIndex].Text);
      qryUpdate.ExecSQL();

      qryTmpSQL.Close();
      qryTmpSQL.SQL.Text := 'SELECT SUPERGROUP FROM CLIENTGROUP WHERE CATEGORY = ' + QuotedStr(clbGroups.Items.Items[clbGroups.ItemIndex].Text);
      qryTmpSQL.Open();
      try
         if qryTmpSQL.FieldByName('SUPERGROUP').AsString = 'Y' then
         begin
            qryUpdate.SQL.Text := 'UPDATE PHONEBOOK SET CLIENTGROUP = Null WHERE NCLIENT = ' + IntToStr(ANClient);
            qryUpdate.ExecSQL();
         end;
      finally
         qryTmpSQL.Close();
      end;
   end;
end;

procedure TfrmClients.eInternetWWWPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   ShellExecute(Handle,'open',PChar(eInternetWWW.Text),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmClients.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if (TcxDBButtonEdit(Sender).Text <> '') then
      ShellExecute(Handle,'open',PChar('mailto:' + TcxDBButtonEdit(Sender).Text),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmClients.actNewClientExecute(Sender: TObject);
var
   LfrmClients: TfrmClients;
   LfmPBNew: TfrmPhoneBookNew;
begin
   if(SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) then
   begin
     if not FormExists(frmPhoneBookSearch) then
       Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
     frmPhoneBookSearch.SelectingClients := True;
     if(frmPhoneBookSearch.ShowModal() = mrOk) then
     begin
       LfrmClients := TfrmClients.Create(Application);
       LfrmClients.DisplayClient(frmPhoneBookSearch.NClient);
     end;
   end else
   begin
     LfmPBNew := TfrmPhoneBookNew.Create(Application);
     try
       LfmPBNew.bDoShow := True;
       LfmPBNew.SetupForClient(0);
       if(LfmPBNew.ShowModal() = mrOk) then
       begin
         Application.CreateForm(TfrmClients, LfrmClients);
         frmDesktop.AddFormToTab(LfrmClients, 1);
         LfrmClients.DisplayClient(LfmPBNew.NClient);
         if LfrmClients.Visible = False then
            LfrmClients.Show();
       end;
     finally
       FreeAndNil(LfmPBNew);
     end;
   end;

{  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  frmPhoneBookSearch.SelectingClients := True;
  if(frmPhoneBookSearch.ShowModal() = mrOk) then
  begin
    frmClientSearch.qryClients.Close;
    SetReopenList;
    frmClientSearch.qryClients.Open;
    frmClientSearch.FindClient(frmPhoneBookSearch.Search);
    DisplayClient(frmPhoneBookSearch.NClient);
  end;   }
end;

procedure TfrmClients.actEditClientExecute(Sender: TObject);
var
  LForm:TfrmPhoneBookNew;
begin
   LForm := TfrmPhoneBookNew.Create(Self);
   LForm.bDoShow := True;
   LForm.SetupForClient(ANClient);
   LForm.ShowModal();
   pagDetailsChange(pagDetails.ActivePage);
   qryClient.Refresh;
end;

procedure TfrmClients.actDeleteClientExecute(Sender: TObject);
var sMessage : String;
begin
   if not qryClient.IsEmpty then
   begin
      if not checkChildRecords('CLIENT' {CLIENTCHECKTABLES,CLIENTCHECKFIELDS,CLIENTCHECKKEYS},sMessage,ANClient) then
         MessageDlg('This client can not be deleted.' + sMessage, mtWarning, [mbOK], 0)
      else
      begin
         if MsgAsk('Are you sure you want to delete this Client?') = mrYes then
         begin
            ReopenListDelete('CLIENT', IntToStr(ANClient));

            qryTmpSQL.SQL.Text := 'UPDATE PHONEBOOK SET NCLIENT = NULL, CLIENTID = NULL WHERE NCLIENT = ' + IntToStr(ANClient);
            qryTmpSQL.ExecSQL();

//            qryClient.Delete();
            qryTmpSQL.SQL.Text := 'DELETE FROM CLIENT WHERE NCLIENT = ' + IntToStr(ANClient);
            qryTmpSQL.ExecSQL();

// qryClient.ApplyUpdates();
            PlaySound('Delete');
//           frmClientSearch.qryClients.Close();
//           frmClientSearch.qryClients.Open();
//           DisplayClient(frmClientSearch.qryClients.FieldByName('NCLIENT').AsInteger);
            Self.Close;
//            RemoveFromDesktop(Self);
         end;
      end;
   end;
end;

procedure TfrmClients.actNewMatterExecute(Sender: TObject);
var
  LMatterNew: TfrmMatterNew;
  sAllowMatters: string;
  bCreate: boolean;
begin
   sAllowMatters := qryClient.FieldByName('allow_matters').AsString;
   bCreate := True;

   if sAllowMatters = 'Ban' then
   begin
      bCreate :=  False;
      if (SystemString('ENFORCE_CLIENT_PACK') = 'N') then
      begin
         MsgErr(SystemString('MATTER_CREATE_BAN_MSG'));
      end
      else
         if ((SystemString('ENFORCE_CLIENT_PACK') = 'Y') and
            (qryClient.FieldByName('CLIENT_PACK').AsString = 'YES')) then
               MsgErr(SystemString('MATTER_CREATE_BAN_MSG'))
         else
            MsgErr('Existing client requires a Client Care Package to be sent.  '+
                  'Complete via the Client edit screen && then allow matters before a new matter can be created.');
   end
   else if sAllowMatters = 'Warn' then
      bCreate := (MsgAsk(SystemString('MATTER_CREATE_WARN_MSG')) = mrYes);

   if bCreate then
   begin
      LMatterNew := TfrmMatterNew.Create(Self);
      begin
        LMatterNew.DisplayClient(ANClient);
        LMatterNew.ShowModal;
      end;
      if FormExists(frmMatterSearch) then
      begin
        dmAxiom.qryMSearch.Close;
        dmAxiom.qryMSearch.Open;
      end;
      DisplayClient(ANClient)
   end;
end;

procedure TfrmClients.actEditMatterExecute(Sender: TObject);
var
  LMatterNew : TfrmMatterNew;
begin
   if not qryMatters.IsEmpty then
   begin
      if IsMatterPrivate(qryMatters.FieldByName('NMATTER').AsInteger,MatterString(qryMatters.FieldByName('NMATTER').AsInteger, 'RESTRICT_ACCESS')) then
         begin
            MsgInfo('This matter is marked as private. You do not have permission to view it.');
         end
         else
         begin
            LMatterNew := TfrmMatterNew.Create(Self);
            LMatterNew.FromDisplayMatter := True;
            LMatterNew.MatterDisplay(qryMatters.FieldByName('NMATTER').AsInteger);
            if LMatterNew.ShowModal = mrOK then
               DisplayClient(ANClient);
         end;
   end;
end;

function TfrmClients.Find(var pNClient: integer; bFromClient: boolean): boolean;
var
   AResult: boolean;
begin
   AResult := False;
   ConfirmSave();
   if (not Assigned(FClientSearch)) then
      FClientSearch := TfrmClientSearch.Create(Application.MainForm);

   FClientSearch.LookupValue := LookupValue;
   Result := FClientSearch.ShowModal() = mrOk;
   if (Result) and (not FClientSearch.qryClientList.IsEmpty) then
   begin
{      if not bFromClient then
      begin
         if frmDesktop.pagMainControl.ActivePageIndex = 0 then
            frmDesktop.fdTab.AddForm(Self, true);
      end; }
      pNClient := FClientSearch.qryClientList.FieldByName('NCLIENT').AsInteger;
//      DisplayClient(FClientSearch.qryClientList.FieldByName('NCLIENT').AsInteger);
      AResult := True;
   end;
   Find := AResult;
end;

procedure TfrmClients.actSnapshotExecute(Sender: TObject);
begin
   frmDesktop.AddSnapshot(70, dblblCode.Caption + ' ' + dblblName.Caption);
end;

procedure TfrmClients.BitBtn1Click(Sender: TObject);
var
  sFileToDelete, sRenamedFile: string;
//  sSource: string;
  sSQL: string;
  bDeleteFile: boolean;
begin
   sFileToDelete := tvClientDocsDISPLAY_PATH.EditValue;
   bDeleteFile := False;
   if sFileToDelete <> '' then
   begin
   if MessageDlg('Are you sure you want to delete: ' + ExtractFileName(sFileToDelete) + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
         if (MessageDlg('Do you wish to remove the associated file '+sFileToDelete+' from the file system?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
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

         sSQL := 'DELETE FROM DOC WHERE DOCID = :DOCID';
         with dmAxiom.qryTmp do
         begin
            SQL.Clear;
            SQL.Text := sSQL;
            ParamByName('docid').AsInteger := tvClientDocsDOCID.EditValue;
            Execute;
         end;

         qryDocs.Refresh;
      end;
   end;
end;

procedure TfrmClients.BitBtn2Click(Sender: TObject);
var
   frmDocSearch: TfrmDocSearch;
begin
   frmDocSearch := TfrmDocSearch.Create(Self);
   frmDocSearch.Show;
end;

procedure TfrmClients.BitBtn3Click(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
begin
   try
      LfrmDocNew := TfrmDocNew.Create(Self);
      LfrmDocNew.NewCopyDoc := False;
      LfrmDocNew.FileID := qryClient.FieldByName('nclient').AsString;
      LfrmDocNew.ShowModal;
//         if cbGroupExpanded.Checked then
//            dbgrDocs.FocusedView.DataController.Groups.FullExpand;
//      TfrmDocNew.Create(Self).FileID := qryMatter.FieldByName('FILEID').AsString;
   finally
      LfrmDocNew.Free;
   end;
end;

procedure TfrmClients.BitBtn4Click(Sender: TObject);
var
   lTemplate: string;
   ANewDocName,
   AParsedDocName,
   AParsedDir,
   aFileDate: string;
begin
   lTemplate := SystemString('DR_Template');
   if (lTemplate <> '' ) then
   begin
//      FODACConnection := TOraSession.Create(nil);
//      FODACConnection.AssignConnect(dmAxiom.orsAxiom);

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
            Items['NCLIENT'].Value := null;
            Items['ENTITY'].Value := null;

            Items['NCLIENT'].Value := ANClient;
            Items['ENTITY'].Value := dmAxiom.Entity;
         end;
      end;
      DateTimeToString(aFileDate,'ddmmyyyy',Now);
      ANewDocName := SystemString('DFLT_DOC_LIST')+ '\' +
                     IntToStr(TableInteger('PHONEBOOK','NCLIENT',qryClient.FieldByName('nclient').AsInteger, 'NNAME')) +
                     '\Debtor Statement_'+ aFileDate + '.pdf';
      AParsedDocName := ParseMacros(ANewDocName, TableInteger('PHONEBOOK','NCLIENT',qryClient.FieldByName('nclient').AsInteger, 'NNAME'));
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
         SaveDebtorStatement('Debtor Statement '+ DateToStr(Now), dmAxiom.UserID, AParsedDocName,'Debtor Statement','','','', TableInteger('PHONEBOOK','NCLIENT',qryClient.FieldByName('nclient').AsInteger, 'NNAME') );
         dmAxiom.orsAxiom.Disconnect;
      end;
   end
   else
     MsgInfo('Debtor Template not defined.'+chr(13)+'Please add Template throuch "Launch->Maintenance->System"');
end;

procedure TfrmClients.SaveDebtorStatement(ADoc_Name, AAuth, APath, ADescr, APrecCategory, APrecedentDetails, APrecClass: string; ANName: integer);
var
  qryLookup: TOraQuery;
  AExt: string;
  ADocID: integer;
  bDocExits: boolean;
begin
   bDocExits := False;
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'select 1 from phonebook_doc pd, doc d where '+
                  'd.doc_name = :doc_name and pd.docid = d.docid and '+
                  ' pd.nname = :nname';
      ParamByName('doc_name').AsString := ADoc_Name;
      ParamByName('nname').AsInteger := ANName;
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
         //ADocID := GetSeqNum('DOC_DOCID');  Creelman strikes again
         SQL.Text := 'INSERT INTO doc '+
                     '(DOCID, DOC_NAME, AUTH1, PATH, DESCR, '+
                     'NPRECCATEGORY, IMAGEINDEX, FILE_EXTENSION,  '+
                     ' KEYWORDS, PRECEDENT_DETAILS, NPRECCLASSIFICATION, DISPLAY_PATH) '+
                     'VALUES '+
                     '(:DOCID, :DOC_NAME, :AUTH1, :PATH, :DESCR, '+
                     ' :NPRECCATEGORY, :IMAGEINDEX, :FILE_EXTENSION,  '+
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

         ParamByName('IMAGEINDEX').AsInteger := 5;

         ParamByName('NPRECCATEGORY').AsString := APrecCategory;

         ParamByName('NPRECCLASSIFICATION').AsString := APrecClass;
         ExecSQL;

         with qryInsertNNameDoc do
         begin
            ParamByName('nname').AsInteger := ANName;
            ParamByName('docid').AsInteger := ADocId;
            ExecSQL;
         end;
      end;
      qryLookup.Free();
   end;
end;

procedure TfrmClients.actNavFirstExecute(Sender: TObject);
begin
   frmClientSearch.qryClientList.First;
   NavigateClient;
end;

procedure TfrmClients.actNavPreviousExecute(Sender: TObject);
begin
  if not FormExists(frmClientSearch) then
    Application.CreateForm(TfrmClientSearch, frmClientSearch);
  if frmClientSearch.qryClientList.FieldByName('SEARCH').AsString <> qryClient.FieldByName('SEARCH').AsString then
  begin
    frmClientSearch.qryClientList.Close;
    frmClientSearch.qryClientList.Open;
    frmClientSearch.qryClientList.Locate('SEARCH', qryClient.FieldByName('SEARCH').AsString, []);
  end;
  frmClientSearch.qryClientList.Prior;
  NavigateClient;
end;

procedure TfrmClients.actNavNextExecute(Sender: TObject);
begin
   if not FormExists(frmClientSearch) then
      Application.CreateForm(TfrmClientSearch, frmClientSearch);
   if frmClientSearch.qryClientList.FieldByName('SEARCH').AsString <> qryClient.FieldByName('SEARCH').AsString then
      frmClientSearch.qryClientList.Locate('SEARCH', qryClient.FieldByName('SEARCH').AsString, []);
   frmClientSearch.qryClientList.Next;
   NavigateClient;
end;

procedure TfrmClients.actNavLastExecute(Sender: TObject);
begin
  frmClientSearch.qryClientList.Last;
  NavigateClient;
end;

procedure TfrmClients.actPositionReportExecute(Sender: TObject);
begin
   with qClientDetails do
   begin
      Close;
      ParamByName('NCLIENT').AsInteger := ANCLIENT;
//      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      Open;
      qryPositionTotals.Close;
      qryPositionTotals.ParamByName('NCLIENT').AsInteger := ANCLIENT;
//      qryPositionTotals.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryPositionTotals.Open;
      try
         rptClientPosition.Print;
      except
         // error
      end;
   end;
end;

procedure TfrmClients.actComboByDateExecute(Sender: TObject);
begin
   qryTmpLedger.Close();
   qryTmpLedger.SQL.Clear;
   qryTmpLedger.SQL.Add('DELETE FROM LEDGER WHERE REPORTER = ' + QuotedStr(dmAxiom.UserID));
   qryTmpLedger.ExecSQL;
   qryTmpLedger.SQL.Clear;
   qryTmpLedger.SQL.Add('SELECT * FROM LEDGER WHERE REPORTER = ' + QuotedStr(dmAxiom.UserID));
   qryTmpLedger.Open();

   qryMatters.First;
   while not qryMatters.EOF do
   begin
     MakeMatterLedger;
     qryMatters.Next;
   end;

   qryTmpLedger.Close();
   qryTmpLedger.Open();

//   qrComboLedger.PreviewModal();

   qryTmpLedger.Close();
   qryTmpLedger.SQL.Clear();
   qryTmpLedger.SQL.Add('DELETE FROM LEDGER WHERE REPORTER = ' + QuotedStr(dmAxiom.UserID));
   qryTmpLedger.ExecSQL();

end;

procedure TfrmClients.actMatterArchiveExecute(Sender: TObject);
var
   LfrmArchival: TfrmArchival;
begin
   LfrmArchival := TfrmArchival.Create(Self);
   LfrmArchival.ShowDetails(qryMatters.FieldByName('FILEID').AsString);
   LfrmArchival.ShowModal;
   LfrmArchival.Free;
end;

procedure TfrmClients.actEditMatterUpdate(Sender: TObject);
begin
//   if (qryMatters.State <> dsInactive) then
//      actEditMatter.Enabled := (MatterIsCurrent(qryMatters.FieldByName('FILEID').AsString));
end;

procedure TfrmClients.actMatterArchiveUpdate(Sender: TObject);
begin
//   if (qryMatters.State <> dsInactive) then
//      actMatterArchive.Enabled := (MatterIsCurrent(qryMatters.FieldByName('FILEID').AsString));
end;

procedure TfrmClients.dxBarListClientsClick(Sender: TObject);
begin
   DisplayClient(dxBarListClients.Items[dxBarListClients.ItemIndex]);
end;

procedure TfrmClients.actOpenMatterExecute(Sender: TObject);
begin
   tvMatters.OnDblClick(Self);
end;

procedure TfrmClients.actOpenMatterUpdate(Sender: TObject);
begin
//   if (qryMatters.State <> dsInactive) then
//      actOpenMatter.Enabled := (MatterIsCurrent(qryMatters.FieldByName('FILEID').AsString));
end;

// TH 03/12/04 - Procedure taken from Phonebook form with changes to SQL construction
procedure TfrmClients.dxBarLetterClick(Sender: TObject);
var
  LfrmWriteMerge: TfrmWriteMerge;
  LSql: TStringList;
begin
   try
       Screen.Cursor := crSQLWait;
      LSql := TStringList.Create();
      LSql.Assign(qPartyDetails.SQL);

       // get rid of blank lines..
      while(LSql[LSql.Count - 1] = '') do
         LSql.Delete(LSql.Count - 1);
      // delete the where clause.
      LSql.Delete(LSql.Count - 1);

      // delete party type
      LSql.Delete(1);

      LSql.Add('C.NCLIENT = ' + qryClient.FieldByName('NCLIENT').AsString);

      Screen.Cursor := crDefault;

      LfrmWriteMerge := TfrmWriteMerge.Create(Self);
      LfrmWriteMerge.FromPhoneBook := True;
      LfrmWriteMerge.SQL := LSQL.Text;
   finally
      LSql.Free();
   end;
  LfrmWriteMerge.Show;
end;

procedure TfrmClients.FormDestroy(Sender: TObject);
begin
{   try
      with frmDesktop.dxBarWindowList.Items do
         Delete(IndexOfObject(Self));
   except
     // do nothing
   end;   }
end;

procedure TfrmClients.dxBarButton12Click(Sender: TObject);
begin
   Self.Close;
//   frmDesktop.fdTab.RemoveForm(Self, True);
end;

procedure TfrmClients.btnSafeCustodyRequestClick(Sender: TObject);
var
  LSafeCustodyNew : TfrmSafeCustodyNew;
  ARowIndex, Row: integer;
begin
   if not qryDocReg2.IsEmpty then
   begin
      if GetProcessCount = 0 then
      begin
         LSafeCustodyNew := TfrmSafeCustodyNew.Create(Self, ANClient, qryDocReg.FieldByName('ndocreg').AsString);
         LSafeCustodyNew.DisplayPacket(qryDocReg.FieldByName('ndocreg').AsInteger,
                             integer(tvPacketDocumentsNDOCUMENT.EditValue),
                             qryDocReg.FieldByName('PACKETID').AsString, qryDocReg.FieldByName('DESCR').AsString,
                             qryDocReg.FieldByName('LOCATION').AsString);
      //   qryDocReg2.FieldByName('ndocument').AsInteger);
         LSafeCustodyNew.qryDocReg2.Edit;
         LSafeCustodyNew.qryDocReg2.FieldByName('REQUESTED_BY').AsString := dmAxiom.UserID;
         LSafeCustodyNew.qryDocReg2.FieldByName('REQUESTED_DATE').AsDateTime := now;
         LSafeCustodyNew.qryDocReg2.ApplyUpdates;
         qryDocReg2.Refresh;
      end
      else
      begin
         frmMovementDetails := TfrmMovementDetails.Create(Self);
         if frmMovementDetails.ShowModal = mrOk then
         begin
            grdDocuments.BeginUpdate;
            ARowIndex := tvPacketDocuments.Controller.FocusedRowIndex;

            for Row := 0 to tvPacketDocuments.DataController.RecordCount - 1 do
            begin
               tvPacketDocuments.DataController.FocusedRowIndex := Row;
               if tvPacketDocuments.DataController.GetValue(Row, tvPacketDocumentsPROCESS.Index) = True then
               begin
                  with qryUpdateItem do
                  begin
                     ParamByName('REQUESTED_BY').AsString := dmAxiom.UserID;
                     ParamByName('REQUESTED_DATE').AsDateTime := now;
                     ParamByName('MOVEMENT_REASON').AsString := frmMovementDetails.edMovementReason.Text;
                     ParamByName('RELEASED_TO').AsString := frmMovementDetails.edReleasedTo.Text;
                     ParamByName('NCLIENT').AsInteger := ANClient;
                     ParamByName('NDOCUMENT').AsInteger := integer(tvPacketDocumentsNDOCUMENT.EditValue);
                     ParamByName('RELEASED_DATE').AsDateTime := now;
                     ExecSQL;
                  end;
               end;
            end;
            tvPacketDocuments.ViewData.Records[ARowIndex].Focused := True;
            grdDocuments.EndUpdate;
            qryDocReg2.Refresh;
            frmMovementDetails.Free;
         end;
      end;
   end;
end;


procedure TfrmClients.btnSafeCustodyReturnClick(Sender: TObject);
var
  LSafeCustodyNew : TfrmSafeCustodyNew;
  ARowIndex, Row: integer;
begin
   if not qryDocReg2.IsEmpty then
   begin
      if GetProcessCount = 0 then
      begin
         LSafeCustodyNew := TfrmSafeCustodyNew.Create(Self, ANClient, qryDocReg.FieldByName('ndocreg').AsString);
         LSafeCustodyNew.DisplayPacket(qryDocReg.FieldByName('ndocreg').AsInteger,
                              integer(tvPacketDocumentsNDOCUMENT.EditValue),
                              qryDocReg.FieldByName('PACKETID').AsString, qryDocReg.FieldByName('DESCR').AsString,
                              qryDocReg.FieldByName('LOCATION').AsString);
      //   qryDocReg2.FieldByName('ndocument').AsInteger);
         LSafeCustodyNew.qryDocReg2.Edit;
         LSafeCustodyNew.qryDocReg2.FieldByName('DATE_RETURNED').AsDateTime := now;
         LSafeCustodyNew.qryDocReg2.ApplyUpdates;
         qryDocReg2.Refresh;
      end
      else
      begin
         frmMovementDetails := TfrmMovementDetails.Create(Self);
         if frmMovementDetails.ShowModal = mrOk then
         begin
            grdDocuments.BeginUpdate;
            ARowIndex := tvPacketDocuments.Controller.FocusedRowIndex;

            for Row := 0 to tvPacketDocuments.DataController.RecordCount - 1 do
            begin
               tvPacketDocuments.DataController.FocusedRowIndex := Row;
               if tvPacketDocuments.DataController.GetValue(Row, tvPacketDocumentsPROCESS.Index) = True then
               begin
                  with qryUpdateItem do
                  begin
                     ParamByName('REQUESTED_BY').AsString := '';
                     ParamByName('DATE_RETURNED').AsDateTime := now;
                     ParamByName('MOVEMENT_REASON').AsString := frmMovementDetails.edMovementReason.Text;
                     ParamByName('RELEASED_TO').AsString := frmMovementDetails.edReleasedTo.Text;
                     ParamByName('NCLIENT').AsInteger := ANClient;
                     ParamByName('NDOCUMENT').AsInteger := integer(tvPacketDocumentsNDOCUMENT.EditValue);
                     ExecSQL;
                  end;
               end;
            end;
            tvPacketDocuments.ViewData.Records[ARowIndex].Focused := True;
            grdDocuments.EndUpdate;
            qryDocReg2.Refresh;
            frmMovementDetails.Free;
         end;
      end;
   end;
end;

procedure TfrmClients.ppLabel15GetText(Sender: TObject; var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmClients.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   case AButtonIndex of
      NBDI_EDIT : begin
                  qryDocReg.Edit;
//                  dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsEdit]);
                  tvPacketsPACKETID.Options.Editing := not (qryDocReg.State in [dsEdit]);
                  tvPacketsDESCR.Options.Editing := not (qryDocReg.State in [dsEdit]);
                  tvPacketsLOCATION.Options.Editing := not (qryDocReg.State in [dsEdit]);
//                  dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsedit]);
//                  mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsEdit]);
//                  dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsEdit]);
               end;
      NBDI_CANCEL: begin
                  qryDocReg.Cancel;
                  tvPacketsPACKETID.Options.Editing := not (qryDocReg.State in [dsEdit]);
                  tvPacketsDESCR.Options.Editing := not (qryDocReg.State in [dsEdit]);
                  tvPacketsLOCATION.Options.Editing := not (qryDocReg.State in [dsEdit]);
//                  dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//                  dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsInsert,dsedit]);
//                  mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//                  dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
                  btnSafeCustodyNew.Enabled := not qryDocReg.Eof;
               end;

      NBDI_PRIOR: begin
//                  PacketCount := PacketCount - 1;
//                  if (PacketCount = 0) then
//                     PacketCount := 1;
//                  lblPacket.Caption := 'Packet ' + IntToStr(PacketCount);
               end;

      NBDI_NEXT:  begin
//                  PacketCount := PacketCount + 1;
//                  if (PacketCount > qryPacketCount.FieldByName('TOTAL_PACKETS').AsInteger) then // qryDocReg.RecordCount) then
//                     PacketCount := qryPacketCount.FieldByName('TOTAL_PACKETS').AsInteger;  //qryDocReg.RecordCount;
//                  lblPacket.Caption := 'Packet ' + IntToStr(PacketCount);
               end;

      NBDI_FIRST: begin
//                  PacketCount := 1;
//                  lblPacket.Caption := 'Packet 1';
               end;

      NBDI_LAST:  begin
//                  PacketCount := qryPacketCount.FieldByName('TOTAL_PACKETS').AsInteger;  //qryDocReg.RecordCount;
//                  lblPacket.Caption := 'Packet ' + IntToStr(PacketCount);
               end;
   end;
end;

procedure TfrmClients.pageClientAddressesDrawTabEx(AControl: TcxCustomTabControl;
  ATab: TcxTab; Font: TFont);
var
   LDefaultAddress: string;
begin
{   LDefaultAddress := qryPhoneBook.FieldByName('WHICHADDRESS').AsString;
   if LDefaultAddress = 'S' then
      Font.Style := [fsBold]  // Caption := StreetAddressTab + ' *'
   else if LDefaultAddress = 'P' then
      Font.Style := [fsBold]  //Caption := PostalAddressTab + ' *'
   else if LDefaultAddress = 'C' then
      Font.Style := [fsBold]   //Caption := FCustomAddress + ' *';
   else if LDefaultAddress = 'D' then
      Font.Style := [fsBold];   //Caption := FCustomAddress + ' *';
   }
end;

procedure TfrmClients.qryDocRegAfterInsert(DataSet: TDataSet);
begin
{   if MsgWarn('Are you sure you want to add this Packet?') = IDNO then
   begin
      DataSet.Cancel;
//      tvMatters.
   end
   else
   begin   }
      try
         qryDocReg.FieldByName('nclient').AsInteger :=
            qryClient.FieldByName('nclient').AsInteger;
      except
        //
      end;
//      procDocRegPacketId.Execute;
//     FNDocReg := procDocRegPacketId.Params[0].AsInteger;
//     dbcbPacket.Text :=  GetPacketId();   //
//      qryDocReg.FieldByName('packetid').AsString := IntToStr(FNDocReg);
 //     qryDocReg.FieldByName('ndocreg').AsInteger := FNDocReg;

 //     dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsInsert]);
//     dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsInsert]);
//     mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsInsert]);
//     dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsInsert]);
//     dtpLodged.Checked := True;
//   end;
end;

procedure TfrmClients.qryDocRegAfterPost(DataSet: TDataSet);
var
   SavePlace: TBookmark;
begin
   SavePlace := qryDocReg.GetBookmark;
//   dbcbPacket.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//   dtpLodged.Properties.ReadOnly := not (dmAxiom.qryDocReg.State in [dsInsert,dsedit]);
//   mmoDescription.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
//   dbLocation.Properties.ReadOnly := not (qryDocReg.State in [dsInsert,dsEdit]);
   btnSafeCustodyNew.Enabled := not qryDocReg.Eof;
   qryDocReg.ApplyUpdates;
   FSafeCustodyModified := False;
   qryDocReg.Refresh;
   qryDocReg.GotoBookmark(SavePlace);
   qryDocReg.FreeBookMark(SavePlace);
   qryPacketCount.Refresh;
   dmAxiom.uniInsight.Commit;
   grdSafeCustOtherParties.Enabled := (not qryDocReg.IsEmpty);
   btnDeleteSafeOtherParty.Enabled := (not qryDocReg.IsEmpty);
//   lblTotalPackets.Caption := qryPacketCount.FieldByName('TOTAL_PACKETS').AsString;
end;

procedure TfrmClients.tabAllGroupsShow(Sender: TObject);
var
   iCtr: integer;
begin
 // Load the Phonebook groups
    clbGroups.Clear();
    qryGroups.Open();
    try
      iCtr := 0;
      clbGroups.Items.BeginUpdate;
      while not qryGroups.EOF do
      begin
        qryGroupings.ParamByName('NCLIENT').AsInteger := ANClient;
        qryGroupings.ParamByName('CATEGORY').AsString := qryGroups.FieldByName('CATEGORY').AsString;
        qryGroupings.Open;
        with clbGroups.Items.Add do
        begin
            Text :=  qryGroups.FieldByName('CATEGORY').AsString;
            try
               if not qryGroupings.IsEmpty then
                  State := cbsChecked;
            finally
               qryGroupings.Close();
            end;
        end;

        iCtr := iCtr + 1;
        qryGroups.Next();
      end;
    finally
      qryGroups.Close();
      clbGroups.Items.EndUpdate;
    end;
end;

procedure TfrmClients.tabBillsShow(Sender: TObject);
begin
   if (qryInvoices.Active = False) then
   begin
      with qryInvoices do
      begin
         ParamByName('p_client').AsInteger := ANClient;
         Open;
      end;
      with qrySubBill do
      begin
         ParamByName('p_client').AsInteger := ANClient;
         Open;
      end;
   end;
end;

procedure TfrmClients.pagClientgroupsChange(Sender: TObject);
var
   iCtr: integer;
begin
   if pagClientgroups.ActivePage = tabAllGroups then
   begin
      // Load the Phonebook groups

      clbGroups.Clear();
      clbGroups.Items.BeginUpdate;
      qryGroups.Open();
      try
         iCtr := 0;
         while not qryGroups.EOF do
         begin
           qryGroupings.ParamByName('NCLIENT').AsInteger := ANClient;
           qryGroupings.ParamByName('CATEGORY').AsString := qryGroups.FieldByName('CATEGORY').AsString;
           qryGroupings.Open;
           with clbGroups.Items.Add do
           begin
              Text :=  qryGroups.FieldByName('CATEGORY').AsString;
              try
                 if not qryGroupings.IsEmpty then
                    State := cbsChecked;
              finally
                 qryGroupings.Close();
              end;
           end;

           iCtr := iCtr + 1;
           qryGroups.Next();
         end;
      finally
         qryGroups.Close();
         clbGroups.Items.EndUpdate;
      end;
   end
   else if pagClientgroups.ActivePage = tabCurrentGroups then
   begin
      qGroups.Close;
      qGroups.ParamByName('nclient').AsInteger := ANClient;
      qGroups.Open;
   end;
end;

procedure TfrmClients.qryDocRegAfterDelete(DataSet: TDataSet);
begin
   qryDocReg.ApplyUpdates;
//   dmAxiom.uniInsight.Commit;
   qryPacketCount.Refresh;
//   lblTotalPackets.Caption := qryPacketCount.FieldByName('TOTAL_PACKETS').AsString;
//   lblPacket.Caption := 'Packet ' + IntToStr(PacketCount);
end;

procedure TfrmClients.tvSafeCustOtherPartiesNAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      TcxButtonEdit(Sender).Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      if qryDocRegOtherParties.State = dsInsert then
      begin
         qryUpdateDocRegOtherParties.SQL.Clear;
         qryUpdateDocRegOtherParties.SQL.Add('INSERT INTO DOCREG_PARTIES (NDOCREG, NNAME) VALUES (:NDOCREG, :NNAME)');
         qryUpdateDocRegOtherParties.ParamByName('NDOCREG').AsInteger := qryDocReg.FieldByName('ndocreg').AsInteger;
         qryUpdateDocRegOtherParties.ParamByName('NNAME').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
         qryUpdateDocRegOtherParties.ExecSQL;
         qryDocRegOtherParties.Refresh;
      end
      else
      if qryDocRegOtherParties.State = dsEdit then
      begin
         qryDocRegOtherParties.FieldByName('nname').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
         qryDocRegOtherParties.Post;
      end;
   end;
end;

procedure TfrmClients.tvSafeCustOtherPartiesEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
   if Sender.Controller.FocusedRecord.IsNewItemRecord then
      qryDocRegOtherParties.Insert;
end;

procedure TfrmClients.btnDeleteSafeOtherPartyClick(Sender: TObject);
begin
   if (MsgAsk('Are you sure you wanr to delete this record?') = mrYes) then
   begin
      dmAxiom.qryTmp.SQL.Clear;
      dmAxiom.qryTmp.SQL.Add('delete from docreg_parties where ndocreg = :ndocreg and nname = :nname');
      dmAxiom.qryTmp.ParamByName('ndocreg').AsInteger := qryDocReg.FieldByName('ndocreg').AsInteger;
      dmAxiom.qryTmp.ParamByName('nname').AsInteger := qryDocRegOtherParties.FieldByName('nname').AsInteger;
      dmAxiom.qryTmp.ExecSQL;
      qryDocRegOtherParties.Close;
      qryDocRegOtherParties.Open;
   end;
end;

procedure TfrmClients.btnDocAddClick(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
begin
   try
      LfrmDocNew := TfrmDocNew.Create(Self);
      LfrmDocNew.NewCopyDoc := False;
      LfrmDocNew.NName :=  qryClient.FieldByName('nname').AsInteger;
      if LfrmDocNew.ShowModal = mrOk then
      begin
         qryDocs.Close;
         qrydocs.Open;
//      TfrmDocNew.Create(Self).FileID := qryMatter.FieldByName('FILEID').AsString;
      end;
   finally
      LfrmDocNew.Free;
   end;

{   if (not qryDocs.Active) then
   begin
      qrydocs.ParamByName('nname').AsInteger := qryClient.FieldByName('nname').AsInteger;
      qryDocs.Open;
   end
   else
   begin
      qryDocs.Close;
      qryDocs.Open;
   end;}
end;

procedure TfrmClients.btnDocDeleteClick(Sender: TObject);
begin
   DocDelete;
end;

procedure TfrmClients.btnDocEditClick(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
begin
   if tvClientDocs.Controller.SelectedRowCount = 1 then
   begin
      try
         LfrmDocNew := TfrmDocNew.Create(Self);
         LfrmDocNew.ADocId := tvClientDocsDOCID.EditValue;
         LfrmDocNew.NName := qryClient.FieldByName('nname').AsInteger;
         LfrmDocNew.Editing := True;
         if LfrmDocNew.ShowModal = mrOk then
            qryDocs.Refresh;
      except
         ;
      end;
   end;

end;

procedure TfrmClients.btnDocPrintClick(Sender: TObject);
begin
   qryDocList.Close;
   qrydocList.ParamByName('nclient').AsInteger := ANClient;
   qryDocList.Open;
   rptDocList.Print;
end;

procedure TfrmClients.btnExportReceiptsToExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrMatters, True, True,True,'xls');
   end;
end;

procedure TfrmClients.tvPacketsEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
{   if Sender.Controller.FocusedRecord.IsNewItemRecord then
      if qryDocReg.State <> dsInsert then
         qryDocReg.Insert;    }
end;

procedure TfrmClients.tabRelationshipsShow(Sender: TObject);
begin
   if qryPhoneBook.Active = False then
   begin
      qryPhoneBook.Close;
      qryPhoneBook.ParamByName('nclient').AsInteger := ANClient;
      qryPhoneBook.Open;
   end;
  if (not qRelationships.Active) then
  begin
    qRelationships.ParamByName('search').AsString := qryPhoneBook.FieldByName('NNAME').AsString;
    qRelationships.ParamByName('NNAME').AsInteger := qryPhoneBook.FieldByName('NNAME').AsInteger;
    qRelationships.ParamByName('NNAMEMASTER').AsInteger := qryPhoneBook.FieldByName('NNAMEMASTER').AsInteger;
    qRelationships.Open();
  end;
end;

procedure TfrmClients.dxBarButtonEmailasAttachmentClick(Sender: TObject);
var
   tmpFileName, sFileName: string;
   Msg : IRwMAPIMailMessage;
   OldCursor: TCursor;
   Site : IRwMAPIMessageSite;
   FormRect: TRect;
   SiteStatus,
   ViewStatus,
   i,
   x,
   nEmailSel,
   RecIdx: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   MsgClass,
   sSubject,
   FileID,
   lSubject,
   lRecipients,
   slEmail: string;
   AAttachList,
   AAttachDocID,
   ARecipientsList: TStringList;
   bStream, fStream: TStream;
   ARowInfo: TcxRowInfo;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      FAttachDoc := True;
      AAttachList := TStringList.Create;
      AAttachDocID := TStringList.Create;

      AAttachList := GetAttachFile(AAttachDocID);
      WriteLog('ClientdxBarButtonEmailasAttachmentClick: connecting to MAPI session: ');
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
                WriteLog('ClientdxBarButtonEmailasAttachmentClick: Error establishing MAPI Session ' + E.Message);
            end;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

      // 20 Sep 2018 dw
      FAttachFileName.text := AAttachList.text;
      //FAttachFileName := AAttachList;
      try
          try
              MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
          except on e:exception do
              WriteLog('ClientdxBarButtonEmailasAttachmentClick: error connecting to Message Store: ' + e.Message);
          end;
          try
              Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
          except on e:exception do
              WriteLog('ClientdxBarButtonEmailasAttachmentClick: error opening folder: ' + e.Message);
          end;
          try
              Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;
          except on e:exception do
              WriteLog('ClientdxBarButtonEmailasAttachmentClick: error creating message: ' + e.Message);
          end;

          sSubject := Msg.Subject; //  Msg.PropByName(PR_SUBJECT).AsString;

          for i := 0 to AAttachList.Count - 1 do
          begin
            if tmpFileName <> '' then
               tmpFileName := tmpFileName + ',';
            tmpFileName := tmpFileName + ExtractFileName(AAttachList.Strings[i]);
            Msg.AddFileAttachment(AAttachList.Strings[i]);
          end;
          FileAttachList := tmpFileName;

          lSubject := Msg.Subject + 'Debtor Statement ' ;
          Msg.Subject := Msg.Subject + tmpFileName;
          try
              FormMgr.ShowMessage(Msg{, FormRect, SiteStatus, ViewStatus});
          except on e:exception do
              WriteLog('ClientdxBarButtonEmailasAttachmentClick: error launcing FormMGr: ' + e.Message);
          end;
          WriteLog('ClientdxBarButtonEmailasAttachmentClick: message sent');
      finally
         AAttachList.Free;
         AAttachDocID.Free;
      end;
   end
   else
      MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
end;


procedure TfrmClients.dxBarButtonEmailAsPDFClick(Sender: TObject);
var
   tmpFileName, sFileName: string;
   Msg : IRwMAPIMailMessage;
   OldCursor: TCursor;
   FormRect: TRect;
   SiteStatus,
   ViewStatus,
   i,
   x,
   nEmailSel,
   RecIdx: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   MsgClass,
   sSubject,
   FileID,
   lSubject,
   TestMsg,
   slEmail: string;
   AAttachList,
   AAttachDocID,
   ConvAAttachList,
   ARecipientsList: TStringList;
   bStream, fStream: TStream;
//   PDFLibrary: TDebenuPDFLibrary1014;
   UnlockResult: Integer;
   ARowInfo: TcxRowInfo;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      FAttachDoc := True;
      AAttachList := TStringList.Create;
      AAttachDocID := TStringList.Create;
      ConvAAttachList := TStringList.Create;
      AAttachList := GetAttachFile(AAttachDocID);
      WriteLog('ClientEmailAsPDFClick: connecting to MAPI session: ');
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
                WriteLog('ClientEmailAsPDFClick: error connecting to MAPI session: ' + e.Message);
            end;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

      try
//         if gtDocumentViewer.IsLoaded then
//            gtDocumentViewer.CloseDocument;

{         PDFLibrary := TDebenuPDFLibrary1014.Create;
         try
            UnlockResult := PDFLibrary.UnlockKey(DebenuPDFKey);
//            Label1.Caption := PDFLibrary.LicenseInfo;
            if (UnlockResult = 1) then
            begin
               for I := 0 to (AAttachList.Count - 1) do
               begin
                  PDFLibrary.LoadFromFile(AAttachList.strings[i],'');
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
                        else
                           PDFLibrary.SaveToFile(TestMsg);
                  end;
               end;
            end
            else
               ShowMessage('Invalid license key');
         finally
               PDFLibrary.Free;
         end;                                     }

         tmpFileName := sFileName;
         begin
            // 20 Sep 2018 dw
            FAttachFileName.text := ConvAAttachList.text;
            //FAttachFileName := ConvAAttachList;
            try
                MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
            except on e:exception do
                WriteLog('ClientEmailAsPDFClick: error connecting to MsgStore: ' + e.Message);
            end;
            try
                Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
            except on e:exception do
                WriteLog('ClientEmailAsPDFClick: error opening message folder: ' + e.Message);
            end;
            // create a new message in the drafts folder
            try
                Msg := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;
            except on e:exception do
                WriteLog('ClientEmailAsPDFClick: error creating message: ' + e.Message);
            end;

            {sSubject := Msg.Subject;
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

            for i := 0 to ConvAAttachList.Count - 1 do
            begin
               if tmpFileName <> '' then
                  tmpFileName := tmpFileName + ',';
               tmpFileName := tmpFileName + ExtractFileName(ConvAAttachList.Strings[i]);
               Msg.AddFileAttachment(AAttachList.Strings[i]);
            end;
            FileAttachList := tmpFileName;

            Msg.Subject := Msg.Subject + tmpFileName;  }

            //FormMgr.ShowMessage(Msg{, FormRect, SiteStatus, ViewStatus});
             try
                FormMgr.NewMessage(Folder);
             except on e:exception do
                  WriteLog('ClientEmailAsPDFClick: error sending from Formmgr: ' + e.Message);
             end;
             WriteLog('ClientEmailAsPDFClick: Message sent with converted PDF ');
         end;
      finally
         AAttachList.Free;
         AAttachDocID.Free;
         ConvAAttachList.Free;
      end;
   end
   else
      MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
end;

function TfrmClients.GetProcessCount: integer;
var
   ProcessCount: integer;
   ARowIndex: integer;
   Row: integer;
begin
   ProcessCount := 0;

   grdDocuments.BeginUpdate;
   ARowIndex := tvPacketDocuments.Controller.FocusedRowIndex;

   for Row := 0 to tvPacketDocuments.DataController.RecordCount - 1 do
   begin
      tvPacketDocuments.DataController.FocusedRowIndex := Row;
      if tvPacketDocuments.DataController.GetValue(Row, tvPacketDocumentsPROCESS.Index) = True then
          Inc(ProcessCount);
   end;
   tvPacketDocuments.ViewData.Records[ARowIndex].Focused := True;
   grdDocuments.EndUpdate;
   Result := ProcessCount;
end;

procedure TfrmClients.imgClientIDClick(Sender: TObject);
var
   frmClient_img_view: tfrmClient_img_view;
begin
   try
      frmClient_img_view := TfrmClient_img_view.Create(Self);
      with frmClient_img_view do
      begin
         qryPhoneBook.Close;
         qryPhonebook.ParamByName('nclient').asinteger := qryClient.FieldByName('nclient').AsInteger;
         qryPhonebook.Open;
         Showmodal;
      end;
   finally
      frmClient_img_view.Free;
   end;
end;

procedure TfrmClients.pbHistoryClick(Sender: TObject);
var
   LfrmRecordMovement: TfrmRecordMovement;
begin
   if not qryDocReg2.IsEmpty then
      begin
      try
         with qryDocReg do
         begin
            if UpdatesPending then
            begin
               Post;
               ApplyUpdates;
            end;
         end;
         LfrmRecordMovement := TfrmRecordMovement.Create(Self,
                  integer(tvPacketDocumentsNDOCUMENT.EditValue));
         LfrmRecordMovement.ShowModal;
      finally
         LfrmRecordMovement.Free;
      end;
   end;
end;

procedure TfrmClients.updateControlsForMasterLink;
var
  loQuery : TUniQuery;
begin
   loQuery := nil;

   try
      loQuery := TUniQuery.Create(nil);
      loQuery.Connection := dmAxiom.uniInsight;

      loQuery.SQL.Text := strCheckForMasterLink.Strings.Text;
      loQuery.ParamByName('NCLIENT').AsInteger := qryClient.FieldByName('nclient').AsInteger;
      loQuery.ExecSQL;

      if (not loQuery.IsEmpty) then
      begin
//         CheckAndSetControl(loQuery.FieldByName('CHILDSHORTNAME').IsNull, loQuery.FieldByName('PARENTSHORTNAME').IsNull, eShortName);
//         CheckAndSetControl(loQuery.FieldByName('CHILDNAME').IsNull, loQuery.FieldByName('PARENTNAME').IsNull, eName);
//         CheckAndSetControl(loQuery.FieldByName('CHILDLONGNAME').IsNull, loQuery.FieldByName('PARENTLONGNAME').IsNull, eLongName);
         CheckAndSetControl(loQuery.FieldByName('CHILDHOMEPHONE').IsNull, loQuery.FieldByName('PARENTHOMEPHONE').IsNull, ePhoneHome);
         CheckAndSetControl(loQuery.FieldByName('CHILDWORKPHONE').IsNull, loQuery.FieldByName('PARENTWORKPHONE').IsNull, ePhoneWork);
         CheckAndSetControl(loQuery.FieldByName('CHILDMOBILE').IsNull, loQuery.FieldByName('PARENTMOBILE').IsNull, ePhoneMobile);
         CheckAndSetControl(loQuery.FieldByName('CHILDFAX').IsNull, loQuery.FieldByName('PARENTFAX').IsNull, ePhoneFax);

         //CheckAndSetControl(loQuery.FieldByName('CHILDADDRESS').IsNull, loQuery.FieldByName('PARENTADDRESS').IsNull, mStreetAddress);
//         mStreetAddress.Style.Color := clInfoBk;
         if (loQuery.FieldByName('CHILDADDRESS').IsNull) then
           if (not loQuery.FieldByName('PARENTADDRESS').IsNull) then
             mStreetAddress.Style.Color := clSkyBlue;

         CheckAndSetControl(loQuery.FieldByName('CHILDSUBURB').IsNull, loQuery.FieldByName('PARENTSUBURB').IsNull, eStreetSuburb);
         CheckAndSetControl(loQuery.FieldByName('CHILDSTATE').IsNull, loQuery.FieldByName('PARENTSTATE').IsNull, eStreetState);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTCODE').IsNull, loQuery.FieldByName('PARENTPOSTCODE').IsNull, eStreetPostCode);
         CheckAndSetControl(loQuery.FieldByName('CHILDCOUNTRY').IsNull, loQuery.FieldByName('PARENTCOUNTRY').IsNull, eStreetCountry);
         CheckAndSetControl(loQuery.FieldByName('CHILDDX').IsNull, loQuery.FieldByName('PARENTDX').IsNull, eDXAddress);
         CheckAndSetControl(loQuery.FieldByName('CHILDDXLOC').IsNull, loQuery.FieldByName('PARENTDXLOC').IsNull, eDXLocation);

         //CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALADDRESS').IsNull, loQuery.FieldByName('PARENTPOSTALADDRESS').IsNull, mPostalAddress);
//         mPostalAddress.Style.Color := clInfoBk;
         if (loQuery.FieldByName('CHILDPOSTALADDRESS').IsNull) then
           if (not loQuery.FieldByName('PARENTPOSTALADDRESS').IsNull) then
             mPostalAddress.Style.Color := clSkyBlue;

         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALSUBURB').IsNull, loQuery.FieldByName('PARENTPOSTALSUBURB').IsNull, ePostalSuburb);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALSTATE').IsNull, loQuery.FieldByName('PARENTPOSTALSTATE').IsNull, ePostalState);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALPOSTCODE').IsNull, loQuery.FieldByName('PARENTPOSTALPOSTCODE').IsNull, ePostalPostCode);
         CheckAndSetControl(loQuery.FieldByName('CHILDPOSTALCOUNTRY').IsNull, loQuery.FieldByName('PARENTPOSTALCOUNTRY').IsNull, ePostalCountry);
         CheckAndSetControl(loQuery.FieldByName('CHILDEMAIL').IsNull, loQuery.FieldByName('PARENTEMAIL').IsNull, eInternetEmail);
         CheckAndSetControl(loQuery.FieldByName('CHILDWWW').IsNull, loQuery.FieldByName('PARENTWWW').IsNull, eInternetWWW);
//         CheckAndSetControl(loQuery.FieldByName('CHILDSALUTATION').IsNull, loQuery.FieldByName('PARENTSALUTATION').IsNull, eSalutation);
//         CheckAndSetControl(loQuery.FieldByName('CHILDGIVENNAMES').IsNull, loQuery.FieldByName('PARENTGIVENNAMES').IsNull, eGivenNames);
//         CheckAndSetControl(loQuery.FieldByName('CHILDLASTNAME').IsNull, loQuery.FieldByName('PARENTLASTNAME').IsNull, eLastName);

//         mCustomAddress.Color := clInfoBk;
         if (loQuery.FieldByName('CHILDCUSTADDRESS').IsNull) then
           if (not loQuery.FieldByName('PARENTCUSTADDRESS').IsNull) then
             mCustomAddress.Style.Color := clSkyBlue;

         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTSUBURB').IsNull, loQuery.FieldByName('PARENTCUSTSUBURB').IsNull, eCustomSuburb);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTSTATE').IsNull, loQuery.FieldByName('PARENTCUSTSTATE').IsNull, eCustomState);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTPOSTCODE').IsNull, loQuery.FieldByName('PARENTCUSTPOSTCODE').IsNull, eCustomPostCode);
         CheckAndSetControl(loQuery.FieldByName('CHILDCUSTCOUNTRY').IsNull, loQuery.FieldByName('PARENTCUSTCOUNTRY').IsNull, eCustomCountry);

      end;    //  end if
   finally
      FreeAndNil(loQuery);
   end;    //  end try-finally
end;

procedure TfrmClients.CheckAndSetControl(bChild : Boolean; bParent : Boolean; oControl : TcxCustomEdit);
begin
//  TcxCustomEdit(oControl).Style.Color := clInfoBk;

  if (bChild) then
    if (not bParent) then
      TcxCustomEdit(oControl).Style.Color := clSkyBlue;

  TcxCustomEdit(oControl).Repaint;
end;

procedure TfrmClients.chkCurrentEntityClick(Sender: TObject);
var
   sMatterFilter: string;
begin
{   qryMatters.Close();
   if chkCurrentEntity.Checked then
      qryMatters.ParamByName('ENTITY').AsString := dmAxiom.Entity
   else
      qryMatters.ParamByName('ENTITY').Clear;

   qryMatters.Open();  }
   if rbOpenMatters.Checked then
      sMatterFilter := 'rbOpenMatters';
   if rbAllMatters.Checked then
      sMatterFilter := 'rbAllMatters';
   if rbClosedMatters.Checked then
      sMatterFilter := 'rbClosedMatters';
   MakeMatterSQL(' ORDER BY OPENED DESC, FILEID DESC', sMatterFilter);
end;

procedure TfrmClients.chkExcludeReversalsClick(Sender: TObject);
begin
   if chkExcludeReversals.Checked then
      qryInvoices.Filtered := True
   else
      qryInvoices.Filtered := False;
end;

procedure TfrmClients.tvClientDocsCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if not VarIsNull(tvClientDocsDOCID.EditValue) then
      btnDocEdit.Enabled := True;
end;

procedure TfrmClients.tvClientDocsDblClick(Sender: TObject);
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
   with qryDocs do
   begin
      if (not IsEmpty) then
      begin
         if (not FieldByName('URL').IsNull) then
         begin
            AHandle := ExecuteFile(FieldByName('URL').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
            if AHandle < 33 then
               MsgInfo('Unable to open Link. - ' +DocErrMsg);
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
                  MsgInfo('Unable to open Document. - '+DocErrMsg);
            UpdateModBy(InttoStr(SelRec));
         end;
      end;
      Refresh; // Close;
//      if cbGroupExpanded.Checked then
//         grdDocs.FocusedView.DataController.Groups.FullExpand;
   end;
end;

procedure TfrmClients.tvDocumentsPROCESSPropertiesChange(Sender: TObject);
var
   Row, InitRow: Integer;
   ARowVal, iUnknown: integer;
   bIn, bOut, bCurrVal: boolean;
begin
{   Row := tvDocuments.DataController.FocusedRowIndex;
   try
      bCurrVal := tvDocuments.DataController.GetValue(Row, tvDocumentsPROCESS.Index);
   except
      bCurrVal := False;
   end;

//   tvDocuments.DataController.SetValue(Row,tvDocumentsPROCESS.Index, not bCurrVal);

   if bCurrVal then
   begin
      tvDocuments.DataController.SetValue(Row, tvDocumentsPACKETINOUT.Index, 1);
      tvDocuments.DataController.SetValue(Row,tvDocumentsPROCESS.Index, False);
   end
   else
   begin
      tvDocuments.DataController.SetValue(Row, tvDocumentsPACKETINOUT.Index, 0);
      tvDocuments.DataController.SetValue(Row,tvDocumentsPROCESS.Index, True);
   end; }

   iUnknown := 0;
   grdDocuments.BeginUpdate;
   InitRow := tvPacketDocuments.Controller.FocusedRowIndex;
   for Row := 0 to tvPacketDocuments.DataController.RecordCount - 1 do
   begin
      tvPacketDocuments.DataController.FocusedRowIndex := Row;
      ARowVal := tvPacketDocuments.DataController.GetValue(Row, tvPacketDocumentsPACKETINOUT.Index);
      case ARowVal of
         0: if (tvPacketDocuments.DataController.GetValue(Row, tvPacketDocumentsPROCESS.Index) = True) then
            begin
               bOut := True;
               break;
            end;
         1: if (tvPacketDocuments.DataController.GetValue(Row, tvPacketDocumentsPROCESS.Index) = True) then
            begin
               bIn := True;
               break;
            end;
      end;
   end;

   tvPacketDocuments.DataController.FocusedRowIndex := InitRow;
   try
      bCurrVal := tvPacketDocuments.DataController.GetValue(InitRow, tvPacketDocumentsPROCESS.Index);
   except
      bCurrVal := False;
   end;

   tvPacketDocuments.DataController.SetValue(InitRow,tvPacketDocumentsPROCESS.Index, not bCurrVal);
   if tvPacketDocuments.DataController.GetValue(InitRow, tvPacketDocumentsPACKETINOUT.Index) = 1 then
   begin
      if bOut then
         tvPacketDocuments.DataController.SetValue(InitRow,tvPacketDocumentsPROCESS.Index, False);
   end;
   if tvPacketDocuments.DataController.GetValue(InitRow, tvPacketDocumentsPACKETINOUT.Index) = 0 then
   begin
      if bIn then
         tvPacketDocuments.DataController.SetValue(InitRow,tvPacketDocumentsPROCESS.Index, False);
   end;

   grdDocuments.EndUpdate;
end;



procedure TfrmClients.tvMattersColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
   sOrderBy,
   sMatterFilter: string;
begin
   qryMatters.Close;
   sOrderBy := ' ORDER BY ';

   sOrderBy := sOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      sOrderBy := sOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      sOrderBy := sOrderBy + ' ASC';
   end
   else
   begin
      sOrderBy := sOrderBy + ' DESC';
   end;
   if rbOpenMatters.Checked then
      sMatterFilter := 'rbOpenMatters';
   if rbAllMatters.Checked then
      sMatterFilter := 'rbAllMatters';
   if rbClosedMatters.Checked then
      sMatterFilter := 'rbClosedMatters';

   MakeMatterSql(sOrderBy, sMatterFilter);
end;

procedure TfrmClients.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssCtrl in Shift) and (key = VK_F4) then
      Self.Close;
end;

procedure TfrmClients.FormMgrNewMessage(Sender: TObject;
  const MessageSite: IRwMAPIMessageSite);
var
  ContentID, FileName : string;
  sSubject: string;
   x, i: integer;
   AFileID, FileID: string;
begin
   if FAttachDoc then
   begin

      for i := 0 to FAttachFileName.Count - 1 do
      begin
         FileName  := FAttachFileName.Strings[i];

         try
            if FileExists(FileName) = True then
               MessageSite.MapiMessage.AddFileAttachment(FileName);
         except
         end;
      end;
      if FAttachFileName.Count > 0 then
         MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);
   end;
   MessageSite.Reload;

end;

procedure TfrmClients.qryDocRegBeforePost(DataSet: TDataSet);
begin
{   if MsgWarn('Are you sure you want to add this Packet?') = IDNO then
   begin
      DataSet.Cancel;
      tvMatters.DataController.Cancel;
      dmAxiom.uniInsight.Rollback;
      try
         DataSet.Close;
         DataSet.Open;
      except
        // silent
      end;
   end
   else
   begin
      procDocRegPacketId.Execute;
      FNDocReg := procDocRegPacketId.Params[0].AsInteger;
      qryDocReg.FieldByName('packetid').AsString := IntToStr(FNDocReg);
      qryDocReg.FieldByName('ndocreg').AsInteger := FNDocReg;
   end;  }
end;

procedure TfrmClients.dblblNameMouseEnter(Sender: TObject);
begin
   dblblName.Hint := dblblName.Caption;
end;

procedure TfrmClients.dblblContactMouseEnter(Sender: TObject);
begin
   dblblContact.Hint := dblblContact.Caption;
end;

procedure TfrmClients.pbAddPacketClick(Sender: TObject);
var
  LSafeCustodyNewPacket :TfrmSafeCustodyNewPacket;
begin
   try
      LSafeCustodyNewPacket := TfrmSafeCustodyNewPacket.Create(Self, ANClient, 0);
//      LSafeCustodyNewPacket.CreateItem(qryDocReg.FieldByName('PACKETID').AsString, qryDocReg.FieldByName('DESCR').AsString,
//                                 qryDocReg.FieldByName('LOCATION').AsString);
      if LSafeCustodyNewPacket.ShowModal = mrOk then
      begin
         if not qryDocReg.Active then
            qryDocReg.Open;
         qryDocReg.Refresh;
      end;
   finally
      LSafeCustodyNewPacket.Free;
   end;
end;

procedure TfrmClients.pbEditPacketClick(Sender: TObject);
var
  LSafeCustodyNewPacket :TfrmSafeCustodyNewPacket;
begin
   try
      if (not pbEditPacket.Enabled) then
         exit;
      try
         with qryDocReg do
         begin
            if UpdatesPending then
            begin
               Post;
               ApplyUpdates;
            end;
         end;
         LSafeCustodyNewPacket := TfrmSafeCustodyNewPacket.Create(Self, ANClient, qryDocReg.FieldByName('ndocreg').AsInteger);
   //      LSafeCustodyNewPacket.DisplayPacket(qryDocReg.FieldByName('ndocreg').AsInteger,
   //                                    tvDocuments.DataController.GetValue(tvDocuments.DataController.FocusedRowIndex, tvDocumentsNDOCUMENT.Index),
   //                                    qryDocReg.FieldByName('PACKETID').AsString, qryDocReg.FieldByName('DESCR').AsString,
   //                                    qryDocReg.FieldByName('LOCATION').AsString);
      //      qryDocReg2.FieldByName('ndocument').AsInteger);
         if LSafeCustodyNewPacket.ShowModal = mrOk then
         begin
            if not qryDocReg.Active then
            begin
               qryDocReg.ParamByName('nclient').AsInteger := ANClient;
   //            qryDocReg2.ParamByName('nclient').AsInteger := NClient;
               qryDocReg.Open;
            end;
            qryDocReg.Refresh;
         end;
      finally
         LSafeCustodyNewPacket.Free;
      end;
   except
   ;
   end;
end;


procedure TfrmClients.pbDeletePacketClick(Sender: TObject);
begin
   If MsgWarn('Are you sure you want to delete this packet?') = ID_YES then
      qryDocReg.Delete;
end;

procedure TfrmClients.pdAddOtherPartyClick(Sender: TObject);
begin
   try
      if not FormExists(frmPhoneBookSearch) then
         Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

      if frmPhoneBookSearch.ShowModal = mrOk then
      begin
         try
            dmAxiom.uniInsight.StartTransaction;
            qryUpdateDocRegOtherParties.SQL.Clear;
            qryUpdateDocRegOtherParties.SQL.Add('INSERT INTO DOCREG_PARTIES (NDOCREG, NNAME) VALUES (:NDOCREG, :NNAME)');
            qryUpdateDocRegOtherParties.ParamByName('NDOCREG').AsInteger := qryDocReg.FieldByName('ndocreg').AsInteger;
            qryUpdateDocRegOtherParties.ParamByName('NNAME').AsInteger := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
            qryUpdateDocRegOtherParties.ExecSQL;
         finally
            dmAxiom.uniInsight.Commit;
            qryDocRegOtherParties.Close;
            qryDocRegOtherParties.Open;
         end;
      end;
   except
    ;
   end;
end;

procedure TfrmClients.tvPacketsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//         pbDeletePacket.Enabled := (qryDocReg2.RecordCount = 0) AND (dmAxiom.Security.SafeCustody.Delete) AND ( qryDocReg.FieldByName('REALPACK').AsInteger = 1);
end;

procedure TfrmClients.actFindMatterExecute(Sender: TObject);
var
   LNClient: integer;
begin
   LNClient := 0;
   Find(LNClient, True);
   DisplayClient(LNClient);
end;

procedure TfrmClients.aRelationshipMergeExecute(Sender: TObject);
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

      LSql.Add('p.nname = ' + qryPhoneBook.FieldByName('NNAME').AsString);
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

procedure TfrmClients.aRelationshipMergeUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not qRelationships.IsEmpty;
end;

procedure TfrmClients.aRelationshipDeleteExecute(Sender: TObject);
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

procedure TfrmClients.aRelationshipDeleteUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not qRelationships.IsEmpty;
end;

procedure TfrmClients.aRelationshipEditExecute(Sender: TObject);
var
  LfrmRelateNew: TfrmRelateNew;
begin
   if qryPhoneBook.Active = False then
   begin
      qryPhoneBook.Close;
      qryPhoneBook.ParamByName('nclient').AsInteger := ANClient;
      qryPhoneBook.Open;
   end;
  LfrmRelateNew := TfrmRelateNew.Create(Self);
  try
    LfrmRelateNew.DisplaySource(qryPhoneBook.FieldByName('Search').AsString, qryPhoneBook.FieldByName('NNAME').AsInteger, True, qRelationships.FieldByName('NCHILD').AsInteger);
    qRelationships.Close();
    qRelationships.Open();
  finally
    FreeAndNil(LfrmRelateNew);
  end;

end;

procedure TfrmClients.aRelationshipEditUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not qRelationships.IsEmpty;
end;

procedure TfrmClients.aRelationshipNewExecute(Sender: TObject);
var
  LfrmRelateNew: TfrmRelateNew;
begin
   if qryPhoneBook.Active = False then
   begin
      qryPhoneBook.Close;
      qryPhoneBook.ParamByName('nclient').AsInteger := ANClient;
      qryPhoneBook.Open;
   end;
  LfrmRelateNew := TfrmRelateNew.Create(Self);
  try
    LfrmRelateNew.DisplaySource(qryPhoneBook.FieldByName('Search').AsString, qryPhoneBook.FieldByName('NNAME').AsInteger);
    qRelationships.Close();
    qRelationships.Open();
  finally
    FreeAndNil(LfrmRelateNew);
  end;
end;

procedure TfrmClients.aRelationshipOpenExecute(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
  LfrmPhonebook := TfrmPhonebook.Create(Application);
  LfrmPhonebook.Search := qRelationships.FieldByName('nchild').AsString;
//  LfrmPhonebook.Search := qRelationshipsSEARCH.AsString;

  LfrmPhonebook.Show();
end;

procedure TfrmClients.aRelationshipOpenUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := (qRelationships.IsEmpty = False) and (tvRelationship.Controller.SelectedRowCount > 0);
end;

procedure TfrmClients.aRelationshipPrintExecute(Sender: TObject);
begin
  qryPhoneBookRpt.Close;

  qryPhoneBookRpt.ParamByName('nname').AsInteger := qRelationships.FieldByName('nchild').AsInteger;
  qryPhoneBookRpt.Open;

  qryGroupingsRpt.Close;
  qryGroupingsRpt.ParamByName('nname').AsInteger := qRelationships.FieldByName('nchild').AsInteger;
  qryGroupingsRpt.Open;

  qRelationshipsRpt.Close;

  rptPhonebook.Print;
end;

procedure TfrmClients.aRelationshipPrintUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not qRelationships.IsEmpty;
end;

procedure TfrmClients.SetCustomAddress;
var
   sCustomAddress: string;
begin
   sCustomAddress := GetDisplayName('PHONEBOOK', 'CUSTOM ADDRESS');
   FCustomAddress := sCustomAddress;
   if sCustomAddress <> '' then
   begin
      tsCustomAddress.Caption :=  sCustomAddress;
   end;
end;

procedure TfrmClients.LoadPartyData(AParty: String);
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
      qDataFields.ParamByName('nunique').AsInteger       := TableInteger('PHONEBOOK','NCLIENT', qryClient.FieldByName('nclient').AsInteger, 'NName');
      qDataFields.Open();
      try
         if(not qDataFields.Eof) then
         begin
{           LParent               := vtCustomData.AddChild(nil);
           LData                 := vtCustomData.GetNodeData(LParent);
           LData.Group           := AParty;
           LData.DataForm        := qDataFieldsDATAFORM.AsString;
           LData.DataFormCaption := qDataFieldsDATAFORMCAPTION.AsString;    }


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



procedure TfrmClients.tsCustomDataShow(Sender: TObject);
begin
   if(not FCustomDataShowing) then
   begin
      if qryClient.Active then
      begin
          if(not qPGroups.Active) then
          begin
            qPGroups.ParamByName('nname').AsInteger := TableInteger('PHONEBOOK','NCLIENT', qryClient.FieldByName('nclient').AsInteger, 'NName');
            qPGroups.Open();
          end;

          while(not qPGroups.Eof) do
          begin
            if(qPGroupsOTHERPARTY.AsString = 'Yes') then
            begin
              if((FShowDataOnlyGroup <> '') and (FShowDataOnlyGroup = qPGroupsCATEGORY.AsString)) then
              begin
                LoadPartyData(qPGroupsCATEGORY.AsString);
              end else if(FShowDataOnlyGroup = '') then
              begin
                LoadPartyData(qPGroupsCATEGORY.AsString);
              end;
            end;
            qPGroups.Next();
          end;
          qPGroups.First();
          FCustomDataShowing := True;
      end;
  end;
end;

procedure TfrmClients.ResizeColumns(ATree: TVirtualStringTree);
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

procedure TfrmClients.vtCustomDataGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
   NodeDataSize := SizeOf(TFieldData);
end;

procedure TfrmClients.vtCustomDataGetText(Sender: TBaseVirtualTree;
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
  end {else if(Sender = vtMatterData) then
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
  end;  }
//  CellText := AndReplace(CellText);
end;


procedure TfrmClients.vtCustomDataPaintText(Sender: TBaseVirtualTree;
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

procedure TfrmClients.SetSafeCustodyButtons;
begin
   if not(qryDocReg2.IsEmpty) then
     begin
       PacketCount := 1;
       btnSafeCustodyNew.Visible := dmAxiom.Security.SafeCustody.Create;
       btnSafeCustodyEdit.Visible := dmAxiom.Security.SafeCustody.Edit;
       btnSafeCustodyDelete.Visible := dmAxiom.Security.SafeCustody.Delete;
       btnPrintSafeCustody.Visible := True;
       btnSafeCustodyReturn.Visible := true;
       btnSafeCustodyRequest.Visible := true;
       btnDeleteSafeOtherParty.Enabled := True;
       cbShowAllDates.Visible := True;
       pbHistory.Visible := True;
     end
     else
     begin
       btnSafeCustodyNew.Visible := dmAxiom.Security.SafeCustody.Create;
       btnSafeCustodyEdit.Visible := False;
       btnSafeCustodyDelete.Visible := False;
       btnPrintSafeCustody.Visible := False;
       btnSafeCustodyReturn.Visible := False;
       btnSafeCustodyRequest.Visible := False;
       btnDeleteSafeOtherParty.Enabled := False;
       cbShowAllDates.Visible := False;
       pbHistory.Visible := False;
       PacketCount := 0;
     end;
end;

procedure TfrmClients.tvPacketsCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
   i: integer;
begin
   try
      if (tvPackets.DataController.RowCount > 0) or
         (tvPackets.Controller.FocusedRowIndex = 0) then
      begin
         try
            dblblPath.Visible := qryDocReg.FieldByName('ADDRESS_PATH').AsString <> '';
            btnSCWord.Visible := qryDocReg.FieldByName('ADDRESS_PATH').AsString <> '';
            btnPrintSafeCustody.Visible := not qryDocReg.IsEmpty;
            cbShowAllDates.Visible := not qryDocReg.IsEmpty;
            qryDocReg2.Close();
            qryDocReg2.ParamByName('ndocreg').AsInteger := qrydocReg.FieldByName('ndocreg').AsInteger;
            qryDocReg2.Open();
            pbEditPacket.Enabled := (dmAxiom.Security.SafeCustody.Edit) AND ( qryDocReg.FieldByName('REALPACK').AsInteger = 1);
            pbDeletePacket.Enabled := (qryDocReg2.RecordCount = 0) AND (dmAxiom.Security.SafeCustody.Delete) AND ( qryDocReg.FieldByName('REALPACK').AsInteger = 1);
//            tvDocumentsPROCESS.Options.Editing := (qryDocReg.FieldByName('REALPACK').AsInteger = 1);
            qryDocRegOtherParties.Close();
            qryDocRegOtherParties.Open();
            pbEditPacket.Enabled := (dmAxiom.Security.SafeCustody.Edit) AND ( qryDocReg.FieldByName('REALPACK').AsInteger = 1);
            pbDeletePacket.Enabled := (qryDocReg2.RecordCount = 0) AND (dmAxiom.Security.SafeCustody.Delete) AND ( qryDocReg.FieldByName('REALPACK').AsInteger = 1);
            tvPacketDocumentsPROCESS.Options.Editing := (qryDocReg.FieldByName('REALPACK').AsInteger = 1);
            if qryDocReg.FieldByName('REALPACK').AsInteger = 0 then
            begin
               for i := 0 to pnlButtons.ControlCount - 1 do
                  pnlButtons.Controls[i].Enabled := False;
            end
            else
            begin
               for i := 0 to pnlButtons.ControlCount - 1 do
                  pnlButtons.Controls[i].Enabled := True;
            end;
            SetSafeCustodyButtons;
         except
         //;
         end;
      end; 
   except
   //
   end;
end;

procedure TfrmClients.dxBarButton11Click(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrMatters, True, True,True,'xls');
   end; 
end;

procedure TfrmClients.pmViewAttachmentPopup(Sender: TObject);
begin
    ViewAttachment1.Enabled :=  ( not qryDocReg2.fieldByname('IMAGE').IsNull);
end;

procedure TfrmClients.ViewAttachment1Click(Sender: TObject);
var
   sFileName: string;
   bStream, fStream: TStream;
   OpenFileErr: integer;
   AExt: string;
begin
   try
      sFileName := 'doc_';
      // load the image in external application
      try
         bStream := qryDocReg2.CreateBlobStream(qryDocReg2.fieldByname('IMAGE'), bmRead);

         sFileName := dmAxiom.GetEnvVar('TMP')+'\';
         AExt := qryDocReg2.FieldByName('IMAGE_EXT').AsString;
         if AExt = '' then
            AExt := 'jpg';
         sFileName := sFileName + 'doc_' + qryDocReg2.fieldByName('ndocument').AsString+ '_safe.' + AExt;
         fStream := TFileStream.Create(sFileName, fmCreate);
         try
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
   end;
end;

procedure TfrmClients.cxButton1Click(Sender: TObject);
begin
   dxPrintMatterListLink1.ReportTitleText := 'Matter Listing for ' + qryClient.FieldByName('code').AsString + ' - ' + qryClient.FieldByName('name').AsString;
   dxPrintMatterList.Preview();
end;

procedure TfrmClients.cxButton2Click(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
begin
   if tvClientDocs.Controller.SelectedRowCount = 1 then
   begin
      try
         LfrmDocNew := TfrmDocNew.Create(Self);
         LfrmDocNew.Editing := True;
         LfrmDocNew.ADocId := tvClientDocsDOCID.EditValue; // qryDocs.FieldByName('docid').AsInteger;
//         LfrmDocNew.FileID :=  qryMatter.FieldByName('FILEID').AsString; //tvDocsFILEID.EditValue;
         if LfrmDocNew.ShowModal = mrOk then
      except
         ;
      end;
   end;
end;

procedure TfrmClients.cxButton3Click(Sender: TObject);
begin
   qryDocList.Close;
   qrydocList.ParamByName('nclient').AsInteger := qryClient.FieldByName('NCLIENT').AsInteger;
   qryDocList.Open;
   rptDocList.Print;
end;

procedure TfrmClients.MakeMatterSQL(AOrder, AFilter: string);
begin
   with qryMatters do
   begin
      Close;
      SQL.Text := FMatterSQL + AOrder;
      ParamByName('NCLIENT').AsInteger := ANClient;
      ParamByName('FILTER').AsString := AFilter;  //'rbOpenMatters';
      if chkCurrentEntity.Checked then
         ParamByName('ENTITY').AsString := dmAxiom.Entity
      else
         ParamByName('ENTITY').Clear;
      Open;
   end;
end;

function TfrmClients.GetAttachFile(var ADocIDList: TStringList): TStringList;
var
   bStream: TStream;
   tmpFileName: string;
   ARowIndex, SelRec, SelRec1, i: integer;
   OldCursor: TCursor;
   SiteStatus, ViewStatus: Integer;
   AAttachList, LAttachDocID: TStringList;
begin
   AAttachList := TStringList.Create;
   LAttachDocID := TStringList.Create;
   if tvClientDocs.Controller.SelectedRowCount > 0 then
   begin
      for i :=0 to tvClientDocs.Controller.SelectedRowCount - 1 do
      begin
         ARowIndex := tvClientDocs.DataController.GetSelectedRowIndex(i);
         tvClientDocs.ViewData.Records[ARowIndex].Focused  := True;
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

procedure TfrmClients.DocDelete;
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
            PlaySound('Delete');
         end;
      end;
   end
   else
   begin
      try
         dmAxiom.uniInsight.StartTransaction;
         tvClientDocs.DataController.BeginUpdate;
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
         tvClientDocs.DataController.EndUpdate;
      end;
   end;
   if cbGroupExpanded.Checked then
     grdClientDocs.FocusedView.DataController.Groups.FullExpand;

end;


end.

