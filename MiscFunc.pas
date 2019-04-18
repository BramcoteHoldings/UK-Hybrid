unit MiscFunc;

interface

uses
  Forms, StdCtrls, Db, ComObj, Controls, Graphics, ImgList, Menus, Outlook2010, vcl.oleserver,
  DBCtrls, TableCache, Classes, FMXUtils, Windows, MiscClasses, OracleUniProvider,
  Uni, DBAccess, MemDS, SysUtils, Registry, Variants, GeneralLedgerObject, cxMemo,
  cxEdit, cxTextEdit, cxCustomData, cxListBox, cxButtonEdit, dxBar, dxBarExtItems,
  cxDropDownEdit, ppTmplat, daDataModule, ppReport, daDatMod, daSQL, daQueryDataView,
  ppClass, daUniDac, ShellAPI, ComCtrls, cxContainer, cxPC,
  cxGraphics, cxControls, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, cxGroupBox,TlHelp32,
  cxDBExtLookupComboBox, cxGridDBTableView, cxGridCustomView, cxDBRichEdit,
  cxRichEdit, dxDockControl, dxDockPanel,
  cxGridDBBandedTableView, DateUtils, ppTypes, cxSchedulerUtils, cxDateUtils,
  uRwMapiInterfaces, Ora, daODAC, {DebenuPDFLibrary1014,} LEDES1998B, cxGridTableView,
  home, emaillist, LEDES1998BI, XMLIntf, XMLDoc, uRwDateTimeUtils, XSBuiltIns,
  URLMon, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  AccountCreate, WinInet, IdSSLOpenSSL, IdURI, ActiveX, ShlObj, zip, ppemail;

var
   MATTER: TRwMapiPropDef;

type
   {$EXTERNALSYM SIIGBF}
   SIIGBF = Integer;

   {$EXTERNALSYM IShellItemImageFactory}
   IShellItemImageFactory = interface(IUnknown) ['{BCC18B79-BA16-442F-80C4-8A59C30C463B}']
    function GetImage(size: TSize; flags: SIIGBF; out phbm: HBITMAP): HRESULT; stdcall;
 end;

type
  TFileSystemBindData = class (TInterfacedObject, IFileSystemBindData)
    fw32fd: TWin32FindData;

    function SetFindData(var w32fd: TWin32FindData): HRESULT; stdcall;
    function GetFindData(var w32fd: TWin32FindData): HRESULT; stdcall;
  end;



const
  SIIGBF_RESIZETOFIT = $00000000;
  SIIGBF_BIGGERSIZEOK = $00000001;
  SIIGBF_MEMORYONLY = $00000002;
  SIIGBF_ICONONLY = $00000004;
  SIIGBF_THUMBNAILONLY = $00000008;
  SIIGBF_INCACHEONLY = $00000010;

  C_OVERDRAWPASSWORD          = 'albion';
  C_EMAILPASSWORD             = 'EZPO1QDRL';
  C_DOCUMENTPASSWORD          = 'BXR0MPCJ4';
  C_COLLECTIONSPASSWORD       = 'NRPZ1WQKY';
  C_PRECEDENTPASSWORD         = 'ZKVR6D2K';
  C_ISYSPASSWORD              = 'HWOP0K2X';
  C_SECUREDOCSPASSWORD        = 'HPAQTRBXUY';
  C_RECURCHEQUEPASSWORD       = 'XZYBADFNM1';
  C_BANKSTMNTIMPORTPASSWORD   = '3GOP7NXXAH';
  C_BULKEMAILPASSWORD         = '88ERNXHX1P';
  C_BILLSAVE                  = '1';
  C_SMSPASSWORD               = '5M5TPSXAAY';

// source
  C_FROMCONTACT               = 1;
  C_FROMMATTER                = 2;

// macro
  C_MACRO_USERHOME      = '[USERHOME]';
  C_MACRO_NMATTER       = '[NMATTER]';
  C_MACRO_FILEID        = '[FILEID]';
  C_MACRO_TEMPDIR       = '[TEMPDIR]';
  C_MACRO_TEMPFILE      = '[TEMPFILE]';
  C_MACRO_DATE          = '[DATE]';
  C_MACRO_TIME          = '[TIME]';
  C_MACRO_DATETIME      = '[DATETIME]';
  C_WORKFLOW            = 'WORKFLOW';
  C_WKF                 = 'WKF';
  C_MERGETYPE           = 'MERGETYPE';
  C_MACRO_CLIENTID      = '[CLIENTID]';
  C_MACRO_AUTHOR        = '[AUTHOR]';
  C_MACRO_USERINITIALS  = '[USERINITIALS]';
  C_MACRO_DOCSEQUENCE   = '[DOCSEQUENCE]';
  C_MACRO_DOCID         = '[DOCID]';
  C_MACRO_DOCDESCR      = '[DOCDESCR]';
  C_MACRO_SHORTDESCR    = '[SHORTDESCR]';
  C_MACRO_OPREF         = '[OPREF]';
  C_MACRO_REFNO         = '[REFNO]';
  C_MACRO_ENTITY        = '[NAME]';
  C_MACRO_USERPROFILE   = '[USERPROFILE]';

  wdFormatPDF           = 17;
  xlTypePDF             = 0;

  // constant for matter number when creating matter
  AUTO_CAPTION = '[AUTOMATIC]';


  WEIGHTING: array[1..11] of integer = ( 10, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19 );
  BPay_WEIGHTING: array[1..20] of integer = (1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2);


  ValidEFTBanks: array[1..3] of string = ('NAB', 'MBL','WBC');

  // Illegal SQL statement for SQL Designer
  IllegalStatement: array[1..4] of string = ('DELETE ', 'UPDATE ', 'INSERT ', 'INTO ');

  WkFlowMacrosDescr: array[0..12] of string = ('[USERHOME] = User Home Directory','[NMATTER] = Matter Number','[TEMPDIR] = User''s Temp Directory','[TEMPFILE] = Make a Temporary File','[DATE] = System Date','[TIME] = System Time','[DATETIME] = System Date and Time','[CLIENTID] = Client Code','[FILEID] = File Number','[AUTHOR] = Matter Author','[USERINITIALS] = ePMS User Code','[DOCSEQUENCE] = Document Number','[USERPROFILE] = User Profile');
  WkFlowMacrosValues: array[0..12] of string = ('[USERHOME]','[NMATTER]','[TEMPDIR]','[TEMPFILE]','[DATE]','[TIME]','[DATETIME]','[CLIENTID]','[FILEID]','[AUTHOR]','[USERINITIALS]','[DOCSEQUENCE]','[USERPROFILE]');

  // If order is none on a column, default it to ascending.
  const SortOrders : array [TcxDataSortOrder] of string = ( ' ASC', ' ASC', ' DESC');
  EmailMatterMacrosDescr: array[0..4] of string = ('[CLIENTID] = Client Code','[FILEID]=File Number','[AUTHOR]=Matter Author', '[OPREF]=Client Reference', '[SHORTDESCR]=Matter Description');
  EmailMatterMacrosValues: array[0..4] of string = ('[CLIENTID]','[FILEID]','[AUTHOR]','[OPREF]', '[SHORTDESCR]');

  EmailBillMacrosDescr: array[0..6] of string = ('[CLIENTID] = Client Code','[FILEID]=File Number','[AUTHOR]=Matter Author', '[OPREF]=Client Reference', '[SHORTDESCR]=Matter Description', '[REFNO]=Bill Number', '[NAME]=Entity');
  EmailBillMacrosValues: array[0..6] of string = ('[CLIENTID]','[FILEID]','[AUTHOR]','[OPREF]', '[SHORTDESCR]','[REFNO]','[NAME]');


  // Axiom variables
  AFFVAR_FILEID = '%FILEID%';
  AFFVAR_AUTHOR = '%AUTHOR%';
  MACRO_STARTUP_BEFORE = 1;
  MACRO_STARTUP_AFTER = 2;

  // Dataset button edit components
  NEW_RECORD_STRING = 'tbtnNew';
  DELETE_RECORD_STRING = 'tbtnDelete';
  POST_RECORD_STRING = 'tbtnPost';
  CANCEL_RECORD_STRING = 'tbtnCancel';

  // Task status constants
  ISPENDINGSTATE = -1;
  ISSTARTEDSTATE = 1;
  ISFINISHEDSTATE = 2;
  ISSKIPPEDSTATE = 3;
  ISOVERDUESTATE = 4;

  //WordPerfect Constants
  MRGSELECTALL = 0;
  MRGRUNFORMFILE = 2;
  MRGRUNDATAFILE = 2;
  MRGRUNCURDOC = 1;
  FSEXPORTWP8 = 4;
  FSOVERWRITE = 1;

  Crypt1 = 32103;
  Crypt2 = 93248;
  CryptKey = 20453;

  // DrawText constants
  MustSee = 0.25;

//  CN_PROGRAM_NAME = 'Axiom';
  CN_PROGRAM_NAME = 'Insight';
//  CN_PROGRAM_NAME = 'NetLawyer';

  CN_COPYRIGHT = '© Bramcote Holdings Pty Ltd 2017-2018 All Rights Reserved';

  // For matter fees types
  MATTER_FEE_WIP        = 0;
  MATTER_FEE_UNBILLDISB = 1;
  MATTER_FEE_UNBILLANTD = 2;
  MATTER_FEE_UNCONVCHEQ = 3;
  MATTER_FEE_UNBILLSUND = 4;
  MATTER_FEE_DEBTORS    = 5;
  MATTER_FEE_BILLFEES   = 6;
  MATTER_FEE_TRUSTBAL   = 7;
  MATTER_FEE_CLTRUSTBAL = 8;
  MATTER_FEE_BILLDISB   = 9;

  //  define some standard SQL's

  SQL_MATTER = ' /*MISCFUNC*/ SELECT M.* ' +
{
  Modified 26.11.2002 GG

  This is wrong.  The Branch Description should be based on the Branch field of
  the matter table, and should return null only if the branch code is 0.

  ' ,decode(nvl(M.RATE,0),0,0) AS RateDescr,decode(nvl(M.RATE,0),''0'',BRAN.Descr,NULL) ' +
}
  ' ,decode(nvl(M.RATE,0),0,0) AS RateDescr,decode(nvl(M.BRANCH,0),''0'',NULL,BRAN.Descr) ' +
  ' AS BranchDescr,FT.TAX AS TaxWip ' +
  ' ,UFT.TAX AS TaxUnBillWip ' +
  ' ,AT.TAX TaxDisb ' +
  ' ,UAT.TAX As TaxUnBillDisb ' +
  ' ,CR.TAX AS TaxUpCred, UCR.TAX AS TaxUnBillUpCred ' +
  ' ,CT.TAX TaxAntd ' +
  ' ,UCT.TAX TaxUnBillAntd ' +
  ' ,ST.TAX TaxSund ' +
  ' ,UST.TAX TaxUnBillSund ' +
  ' ,UBD.AMOUNT CAL_UNBILL_DISB ' +
  ' ,UBAD.AMOUNT CAL_UNBILL_ANTD ' +
  ' ,WIP.AMOUNT CAL_UNBILL_FEES ' +
  ' ,BFEE.AMOUNT CAL_BILL_FEES ' +
  ' ,TBAL.AMOUNT CAL_TRUST_BAL ' +
  ' ,BDISB.AMOUNT CAL_BILL_DISB ' +
  ' ,USUND.AMOUNT CAL_UNBILL_SUND ' +
  ' ,CTBAL.AMOUNT CAL_CL_TRUST_BAL ' +
  ' ,UCAD.AMOUNT CAL_UC_ANTD' +
  ' ,UCCT.TAX CAL_UC_ANTD_TAX ' +
  ' ,DEB.AMOUNT CAL_DEBTORS ' +
  ' ,FT.TAX + AT.TAX + CT.TAX + ST.TAX  + CR.TAX TaxTotal'+
  ' ,MT.DESCR as MATTER_TYPE '+
  ' ,M.ROWID  ' +
  ' FROM MATTERTYPE MT, MATTER M, ' +
  ' /*CALC TAX VALUES HERE*/ ' +
  ' (SELECT NVL(SUM(TAX),0) TAX FROM FEE WHERE BILLED  = ''Y'' AND NMATTER = :P_File AND nvl(TYPE,''NA'') <> ''wo'') FT, ' +
  ' (SELECT NVL(SUM(TAX),0) TAX FROM FEE WHERE BILLED  = ''N'' AND NMATTER = :P_File AND nvl(TYPE,''NA'') <> ''wo'') UFT, ' +
  ' (SELECT NVL(SUM(TAX),0) *-1 TAX FROM ALLOC WHERE BILLED = ''Y'' AND NMATTER = :P_File AND NINVOICE IS NOT NULL AND TYPE not in (''J1'',''J2'')) CR, ' +
  ' (SELECT NVL(SUM(TAX),0) *-1 TAX FROM ALLOC WHERE BILLED = ''N'' AND NMATTER = :P_File AND NINVOICE IS NOT NULL AND TYPE not in (''J1'',''J2'')) UCR, ' +
  ' (SELECT NVL(SUM(TAX),0) *-1 TAX FROM ALLOC WHERE BILLED = ''Y'' AND NMATTER = :P_FilE AND NINVOICE IS NULL AND TYPE not in (''J1'',''J2'')) AT, ' +
//  ' (SELECT NVL(SUM(TAX),0) *-1 TAX FROM ALLOC WHERE BILLED = ''N'' AND NMATTER = :P_File AND NINVOICE IS NULL AND TYPE not in (''J1'',''J2'')) UAT, ' +
  ' (select nvl(sum(nvl(tax * -1,0)),0) as tax from alloc where nmatter = :P_File and nvl(billed,''N'') = ''N'' AND nvl(TRUST,''G'') <> ''T'' and (nvl(ncheque,0) > 0 or (nvl(njournal,0) > 0 and type = ''J2''))) UAT,' +
  ' (SELECT NVL(SUM(TAX),0)  TAX FROM CHEQREQ WHERE BILLED = ''Y'' AND NMATTER = :P_File) CT, ' +
  ' (SELECT NVL(SUM(TAX),0)  TAX FROM CHEQREQ WHERE BILLED = ''N'' AND NMATTER = :P_File) UCT, ' +
  ' (SELECT NVL(SUM(TAX),0)  TAX FROM CHEQREQ WHERE CONVERTED <> ''Y'' AND NMATTER = :P_File) UCCT, ' +
  ' (SELECT NVL(SUM(TAX),0)  TAX FROM SUNDRY WHERE BILLED = ''Y'' AND NMATTER = :P_File AND nvl(TYPE,''NA'') <> ''wo'') ST, ' +
  ' (SELECT NVL(SUM(TAX),0)  TAX FROM SUNDRY WHERE BILLED = ''N'' AND NMATTER = :P_File AND nvl(TYPE,''NA'') <> ''wo'') UST, ' +
  ' /*CALC AMOUNTS HERE*/ ' +
  ' (select nvl(sum(nvl(amount  ,0)),0) amount from cheqreq where nmatter = :P_File and billed = ''N'' and converted <>  ''R'') UBAD, ' +
  ' (select nvl(sum(nvl(amount  ,0)),0) amount from cheqreq where nmatter = :P_File and converted =  ''N'') UCAD, ' +
  ' (select nvl(sum(nvl(amount * -1,0)),0) as AMOUNT from alloc where nmatter = :P_File and nvl(billed,''N'') = ''N'' AND nvl(TRUST,''G'') <> ''T'' and (nvl(ncheque,0) > 0 or (nvl(njournal,0) > 0 and type = ''J2''))) UBD, ' +
  ' (select nvl(sum(nvl(amount,0)),0) as AMOUNT from fee where nmatter = :P_File and billed = ''N'') WIP, ' +
  ' (select nvl(sum(amount),0) as AMOUNT from fee where nmatter = :P_File and billed = ''Y'') BFEE, ' +
  ' (select nvl(sum(nvl(amount * -1,0)),0) as AMOUNT from alloc where nmatter = :P_File and nvl(billed,''N'') = ''Y'' AND nvl(TRUST,''G'') <> ''T'' and (nvl(ncheque,0) > 0 or (nvl(njournal,0) > 0and type = ''J2''))) BDISB, ' +
  ' (select nvl(sum(amount),0) as amount from alloc where nmatter = :P_File and  trust = ''T'') TBAL, ' +
  ' (select sum(nvl(amount,0)) as amount from sundry where nmatter = :P_File AND BiLLED = ''N'' ) USUND, ' +
  ' (select nvl(sum(amount),0) as amount from alloc where nmatter = :P_File and  trust = ''T'' and cleared = ''Y'') CTBAL, ' +
  ' (SELECT SUM(AMOUNT)as amount from ' +
  '       (SELECT (NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)) as AMOUNT ' +
  '        FROM ALLOC ' +
  '        WHERE ALLOC.NMATTER = :p_file ' +
  '        AND ALLOC.TRUST <> ''T'' AND ALLOC.TYPE <> ''DR'' AND (ALLOC.NRECEIPT <> 0 OR ALLOC.TYPE = ''J1'' OR ALLOC.TYPE = ''RF'') ' +
  '        UNION ALL ' +
  '        SELECT (NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(TAX,0))*-1 as AMOUNT ' +
  '        FROM NMEMO ' +
  '        WHERE NMATTER = :p_file ' +
  '        AND DISPATCHED IS NOT NULL ' +
  '        AND IS_DRAFT = ''N'' ' +
  '        AND RV_TYPE <> ''D'')) DEB, ' +
  ' (SELECT CODE,DESCR FROM BRANCH) BRAN ' +
  ' WHERE M.NMATTER = :P_File ' +
  ' AND M.BRANCH = BRAN.CODE (+) '+
  ' AND M.TYPE = MT.CODE ';

  IDXARCHIVE              = 1;
  IDXAUTOCOST             = 2;
  IDXAUTOGEN              = 3;
  IDXAUTOINV              = 4;
  IDXCHEQREQS             = 5;
  IDXCHEQUES              = 6;
  IDXCLIENTNEW            = 7;
  IDXFEELIST              = 8;
  IDXFEENEW               = 9;
  IDXINVOICES             = 10;
  IDXJOURNAL              = 11;
  IDXLEDGER               = 12;
  IDXMATTERNEW            = 13;
  IDXPHONEBOOKNEW         = 14;
  IDXREPORTS              = 15;
  IDXRECEIPTS             = 16;
  IDXSUNDRY               = 17;
  IDXSUNDRYBATCH          = 18;
  IDXTIMESHEET            = 19;
  IDXSOUNDS               = 20;
  IDXPRECS                = 21;
  IDXEMPLOYEES            = 22;
  IDXMATTERTYPES          = 23;
  IDXSUNDRYTYPES          = 24;
  IDXSCALECOSTS           = 25;
  IDXDIARY                = 26;
  IDXCHEQREQ              = 27;
  IDXEXPLORER             = 28;
  IDXBANK                 = 29;
  IDXCHEQUE               = 30;
  IDXRECEIPT              = 31;
  IDXFEEBATCH             = 32;
  IDXDIARYNEW             = 33;
  IDXPETTYCASH            = 34;
  IDXCREDITORS            = 35;
  IDXENTITY               = 36;
  IDXWRITEOFF             = 37;
  IDXTASKS                = 38;
  IDXTASKTEMPNEW          = 39;
  IDXBANKDEPOSIT          = 40;
  IDXQUICKCODES           = 41;
  IDXPOSTCODE             = 42;
  IDXCHEQUEPRESENT        = 43;
  IDXARCHIVAL             = 44;
  IDXPHONEBOOKGROUP       = 45;
  IDXFIELDTYPE            = 46;
  IDXDATAFORM             = 47;
  IDXDATAREPORT           = 48;
  IDXSUNDRYLIST           = 49;
  IDXPOSTCODESEARCH       = 50;
  IDXFEETYPE              = 51;
  IDXYEAREND1             = 52;
  IDXYEAREND2             = 53;
  IDXFEERATECODE          = 54;
  IDXPETTYJOURNAL         = 55;
  IDXTRUSTJOURNAL         = 56;
  IDXCLIENTGROUPS         = 57;
  IDXSOFTLOGIMPORT        = 58;
  IDXSYSTEMFILE           = 59;
  IDXMATTERJOURNAL        = 60;
  IDXWRITEOFFDISB         = 61;
  IDXSUNDRYERROR          = 62;
  IDXMONITORIMPORT        = 63;
  IDXBANKREC              = 64;
  IDXARCHIVEBATCH         = 65;
  IDXCODERULES            = 66;
  IDXWORKFLOWTYPE         = 67;
  IDXLOCK                 = 68;
  IDXMATTER               = 69;
  IDXCLIENT               = 70;
  IDXPHONEBOOK            = 71;
  IDXROCKET               = 72;
  IDXBILLTEMPLATES        = 73;
  IDXOPTIONSUSER          = 74;
  IDXBANKDEPOSITQUERY     = 75;
  IDXTAXTYPES             = 76;
  IDXBASGROUPS            = 77;
  IDXBILLCREDIT           = 78;
  IDXBILLCREDITTYPE       = 79;
  IDXPASSWORD             = 80;
  IDXPRECCATEGORIES       = 81;
  IDXJOURNALBILL          = 82;
  IDXDOCSEARCH            = 148;
  IDXGENDER               = 84;
  IDXRELATEDICT           = 85;
  IDXDIARYLOC             = 86;
  IDXDIARYJUR             = 87;
  IDXDIARYEVT             = 88;
  IDXJURISDICTION         = 89;
  IDXFEEBASIS             = 90;
  IDXPRINTERS             = 91;
  IDXBATCHREPORT          = 92;
  IDXSIGNATURE            = 93;
  IDXMATTERSTATUS         = 94;
  IDXWORKFLOWDOCTEMPLATE  = 95;
  IDXWORKFLOWTASKTEMPLATE = 96;
  IDXWORKFLOWADMINDOCS    = 97;
  IDXWORKFLOWTODO         = 98;
  IDXBUDGETS              = 99;
  IDXWORKFLOWDATAFORM     = 100;
  IDXDEBTORSTATUSLIST     = 101;
  IDXEVENTTYPES           = 102;
  IDXDOCUMENTTYPES        = 103;
  IDXSOLICITORCODE        = 104;
  IDXEVENTS               = 105;
  IDXEVENTPARTICIPANTS    = 106;
  IDXEVENTLIST            = 107;
  IDXCOURTADDRESS         = 108;
  IDXINDUSTRY             = 109;
  IDXINTEREST             = 110;
  IDXNEWFEELIST           = 111;
  IDXDIARYNOTIFY          = 112;
  IDXTOOLKIT              = 113;
  IDXARCHIVESEARCH        = 114;
  IDXMARKETREFERRAL       = 115;
  IDXTIMEDIARY            = 116;
  IDXEMPTYPE              = 127;
  IDXAXRPTBUILDER         = 128;
  IDXCREDITORNEW          = 129;
  IDXBATCHCHEQUEPRINT     = 130;
  IDXDEBTORWORKTEMP       = 131;
  IDXDEBTORWORKDUE        = 132;
  IDXACCTPAYABLE          = 133;
  IDXDEPOSITTRANS         = 134;
  IDXDEPOSITS             = 135;
  IDXTEAMS                = 136;
  IDXEXPRESSDEBTORNOTES   = 137;
  IDXDASHBOARD            = 138;
  IDXCRYSTALREPORTDEF     = 139;
  IDXDASHBOARD_IND        = 140;
  IDXDASHBOARD_TEAM       = 141;
  IDXFEEAUTHORITY         = 142;
  IDXEMAILS               = 143;
  IDXDOCUMENTLIST         = 144;
  IDXARCHIVETYPE          = 145;
  IDXMATTERCARRIAGEMAINT  = 146;
  IDXPRECCLASSIFICATION   = 147;
  IDXDTSEARCH             = 150;
  IDXEMPLOYEELIST         = 151;
  IDXUSERSESSIONS         = 152;
  IDXBUDGETIMP            = 153;
  IDXGLREPORTGRP          = 154;
  IDXSECUREMATTERS        = 155;
  IDXMATTERNOTESTYPE      = 156;
  IDXBULKBILLS            = 157;
  IDXQUICKMATTERS         = 158;
  IDXAUTOGENLIST          = 159;
  IDXINVOICESLIST         = 160;
  IDXPHONEBOOKIMP         = 161;
  IDXEMPSETTINGSMAINT     = 162;
  IDXHOMESCREEN           = 163;
  IDXMARKETINGDETAILS     = 164;
  IDXRELATIONSHIPSTATUS   = 165;
  IDXRELATIONSHIPTYPE     = 166;
  IDXRELATIONSHIPACTION   = 167;
  IDXRESEARCHLIST         = 168;
  IDXADVREGION            = 169;
  IDXADVERTISING          = 170;
  IDXSUPPLIER             = 171;
  IDXADVMEDIA             = 172;
  IDXSUBMEDIA             = 173;
  IDXCOUNTRYLIST          = 174;
  IDXBANKTRANSFER         = 176;
  IDXMATTER_NEW           = 177;
  IDXCLIENT_NEW           = 178;
  IDXEMAILTEMPLATE        = 179;
  IDXWIPWRITEOFF          = 180;
  IDXBANKRECADJ           = 181;
  IDXPROCNUM              = 182;
  IDXDEBTORTASKCODES      = 183;
  IDXENTITYGROUP          = 184;
  IDXEXPENSETEMPLATE      = 185;
  IDXRECEIPTREQS          = 186;
  IDXPHONEBOOKSTATUS      = 187;
  IDXRECEIPTREQNEW        = 188;
  IDXNARRATIVE            = 189;
  IDXDOCFOLDERTMPL        = 190;
  IDXDOCINDEXUSERS        = 191;
  IDXDIARYTYPE            = 192;
  IDXBULKMAILER           = 202;
  // Max currently = 193

  // Used in Reopenlist.
  ConflictTableName     = 'Conflict';

type
  TTaskAction = (taStart, taBegin, taFinish, taNew, taEdit, taSkip, taResume);
  TEditButtonAction = (ebaToggle, ebaEnableCancelPost, ebaDisableCancelPost);
  THorizontalAlignment = (haLeft, haCenter, haRight);
  TVerticalAlignment = (vaTop, vaCenter, vaBottom);

  TPostResult = (prNotLocked, prNotAuthorised, prOKToProceed, prDoNotProceed);

  EPostError = class(Exception);

   // A custom DragObject  derived from TcxDragControlObject (cxControls.pas) that is derived from TDragControlObject
  TcxDragCellControlObject = class(TcxDragControlObject)
  public
    DragRecord: Integer;
    DragItem: Integer;
    DragValue: Variant;
  end;


  procedure AddBanks(cbBank: TComboBox; sTypes: string); overload;
  procedure AddBanks(cbBank: TcxComboBox; sTypes: string); overload;
  procedure AddPrecedentToDocs(FileID, FileName, Search, Description: string; Category: string; Classification: string);
  function BankColour(sCode: string): integer;
  function BeginOfMonth(dtCurrentDate: TDateTime; iMonthCount: Shortint = 0): TDateTime;
  function BillTemplate(sCode: string): string;
  function BusinessDaysBetween(dtStart, dtEnd: TDateTime): Integer;
  function CloseMatter(FileID: string; ClosureDate: TDateTime): Boolean;
  procedure ComboBoxObjectFree(Target: TComboBox);
  procedure ComboBoxObjectPopulate(Target: TComboBox; Table, DisplayField, LookupField: string); overload;
  procedure ComboBoxObjectPopulate(Target: TComboBox; Table, DisplayField, LookupField, Where: string); overload;
  function DateBusinessCalc(dtDate: TDateTime; iDays: integer): TDateTime;
  function Decrypt(const S: String): String;
  function Encrypt(const S: String): String;
  procedure FeeInsert(NMatter: integer; Author: string; Reason: string; Amount: Currency);
  function FeeCodeString(sCode: string; sField: string): string;
  function FeeBasisString(sCode: string; sField: string): string;
  function JurisdictionString(sCode: string; sField: string): string;
  function SubJurisdictionString(sCode: string; sField: string): string;
  function MatterStatusString(sCode: string; sField: string): string;
  function MatterSubStatusString(sCode: string; sField: string): string;
  function FeeRate(sFeeType, sFileID, sAuthor: string; Fee_Date: TDateTime): Currency;
  function FindOrCreate(aformclass: TFormclass; Icon: integer; ADisplay: boolean = TRUE): TCustomForm;
  function FindOrCreateClassic(aformclass: TFormclass; Icon: integer): TForm;
  function FirstCap(sText: string): string;
  function FirstWord(sText: string): string;
  function GetJournal: integer;
  function GetJournalTrust(sAcct: string): integer;
  function GetMatter(ABranch: string): integer;
  {$IFNDEF NOMULTISELECT}
  function GetMultiSelectData(Code: string): TStringList;
  function GetMultiSelectTitle(Code: string): string;
  {$ENDIF}
  function GetPrinterIndex(sPrinterName: string): Integer;
  function GetSeqnum(sField: string): integer;
  function GetSubchart(sEntity: string; sMainChart: string; sEmp: string): string;
  function GetTaskStatus(qryTasks: TUniQuery): Integer;
  function GLUpdate(sEntity: string; sLedger: String; dPeriod: TDateTime; cAmount: Currency): boolean;
  function Initials(sText: string; sSeperator: string): string;
  function InvoiceDate(iInvoice: integer; sField: string): TDateTIme;
  procedure InvoiceMerge(iInvoice: Integer; nMatter: Integer; PrintPDFBill: Boolean = False;
                         PrintBill: Boolean = False; CreditNote: boolean = False; QuotingTemplate: boolean = False;
                         Template: string = ''; EmailBill: boolean = False );
  function IsDataFormField(sFieldName: string): boolean;
  function IsIllegalStatement(Statement: string): boolean;
  function LedgerHead(sCode: string): boolean;
  function LedgerString(sCode: string; sField: string): string;
  function LedgerComponentString(sCode: string; sField: string): string;
  function LedgerValue(sBank: string; sCode: string; sField: string): string;
  procedure ListBoxMoveAll(lbFrom: TListBox; lbTo: TListBox); overload
  procedure ListBoxMoveSelected(lbFrom: TListBox; lbTo: TListBox); overload;
  procedure ListBoxMoveSelected(lbFrom: TcxListBox; lbTo: TcxListBox); overload;

  procedure ListBoxSetupData(lbSetup: TListBox; dsData: TDataSource; sListField: string);
  {$IFNDEF NOMULTISELECT}
  procedure LoadMultiSelectionProcess(FileID, DataForm: string);
  {$ENDIF}
  function MakePrecedent(sFile: string; PrecInfo: TPrecInfo): boolean;
  function MatterDate(sFile: string; sField: string): TDateTime;
  function MatterExists(sFile: string): boolean;
  function MatterIsCurrent(sFile: string): boolean;
  function MatterString(sFile: string; sField: string): string; overload;
  function MatterString(iFile: integer; sField: string): string; overload;
  function MatterUpdate(iMatter: Integer; sField: string; cAmount: Currency): boolean;
  function AllocUpdate(iAlloc: Integer; sField: string; cAmount: Currency): boolean;
  function MoneyInWords(cAmount: currency): string;
  function MonthOfYear(dtCurrentDate: TDateTime): Word;
  function MsgAsk(sMsg: string): Word;
  function MsgAskCancel(sMsg: string): Word;
  procedure MsgErr(sMsg: string);
  procedure MsgInfo(sMsg: string);
  function MsgWarn(sMsg: string): Word;
  function NextRefno(PrevRefno: string; PadLength: Integer = -1): string; overload;
  function NextRefno : String; overload;
  function IsRefnoExisting(sRefno : String) : Boolean;
  procedure OpenPrecedent(FileName: string);
  procedure ParamsNullify(parClear: TParams);
  function PhoneBookMailingAddress(sSearch: string): string;
  function PhoneBookString(nNName: integer; sField: string): string;
  procedure PlaySound(sSoundEffect: string);
  procedure PostLedger(dtDate: TDateTime; cAmount: currency; cTax: Currency;
    sRefno: string; sOwnerCode: string; iOwner: int64; sDesc: string;
    sLedger: string; sAuthor: string; iInvoice: int64;
    CreditorCode: string; sTaxCode : String; bJournalSplit : Boolean = FALSE;
    sParentChart : String = '0'; nAlloc: int64 = 0; nMatter: int64 = 0;
    nAccount: int64 = 0; UseRvDate: Boolean = FALSE; nTrans: integer = 0;
    cBAS_Tax: double = 0; sCurrency: string = ''; dFX_Rate: double = 0;
    dBase_CCY_Amt: double = 0; dBase_CCY_Tax: double = 0; dEntity_CCY_Amt: double = 0;
    dEntity_CCY_Tax: double = 0);
  procedure SaveLedger(dtDate: TDateTime; cAmount: currency; cTax: Currency;
    sRefno, sOwnerCode: string; iOwner: integer; sDesc,
    sFullLedger, sAuthor: string; iInvoice: Integer;
    CreditorCode, sTaxCode, sParentChart: String; nAlloc: integer = 0; nMatter: int64 = 0;
    nAccount: integer = 0; UseRvDate: Boolean = FALSE; nTrans: integer = 0;
    cBAS_Tax: double = 0; sCurrency: string = ''; dFX_Rate: double = 0;
    dBase_CCY_Amt: double = 0; dBase_CCY_Tax: double = 0; dEntity_CCY_Amt: double = 0;
    dEntity_CCY_Tax: double = 0);
  procedure PostLedgers(dtDate: TDateTime; cAmount: currency; sRefno: string;
    sOwnerCode: string; iOwner: int64; sDesc: string; sDrLedger,
    sCrLedger: string; sAuthor: string; sTaxCode : String; bJournalSplit : Boolean = FALSE;
    sParentChart : String = '0'; nAlloc: int64 = 0; nMatter: int64 = 0;
    nAccount: int64 = 0; UseRvDate: Boolean = FALSE; nTrans: int64 = 0;
    cBAS_Tax: double = 0; sCurrency: string = ''; dFX_Rate: double = 0;
    dBase_CCY_Amt: double = 0; dBase_CCY_Tax: double = 0; dEntity_CCY_Amt: double = 0;
    dEntity_CCY_Tax: double = 0);
  procedure PostLedgersGST(dtDate: TDateTime; cAmount, cGSTAmount: currency; sRefno: string;
    sOwnerCode: string; iOwner: int64; sDesc: string; sGSTLedger,
    sDrLedger, sCrLedger: string; sAuthor: string; sTaxCode : String; bJournalSplit : Boolean = FALSE;
    sParentChart : String = '0'; nAlloc: int64 = 0; nMatter: int64 = 0;
    nAccount: int64 = 0; UseRvDate: Boolean = FALSE; nTrans: int64 = 0);
  procedure QuickCode(Sender: TObject; DisplayValue: String = '');
  function QuoteFix(sFix: string): string;
  procedure ReceiptClear(iNreceipt: integer);
  procedure RefreshMatter(sFile: string);
  function RefreshNeededMatter(sFile: string; iOldRefresh: integer): boolean;
  procedure ReopenListDelete(Table: string; Code: string);
  function ReopenListLast(sTable: string): string;
  procedure ReopenListSet(sTable: string; mnuReopen: TMenuItem); overload;
  procedure ReopenListSet(sTable: string; mnuReopen: TdxBarMRUListItem); overload;
  procedure ReopenListSet(sTable: string; mnuReopen: TPopupMenu); overload;
  procedure ReopenListSet(sTable: string; mnuReopen: TdxBarSubItem; Category: integer); overload;

  procedure ReopenListSet(sTable: string; mnuReopen: TdxBarPopupMenu; Category: integer = 0); overload;
  procedure ReopenListUpdate(Table: string; Code: string);
  procedure RvNaccount(qryOldNaccount: TUniQuery; ReversalDate: TDateTime; Refno: string; Reason: string; OwnerCode: string; NewNOwner: integer);
  function RvAlloc(qryOldAlloc: TUniQuery; dtReversal: TDateTime; sRefno: string; sReason: string; iNewNcheque: integer;
                    iNewNreceipt: integer; iNewNjournal: integer; sLedger: string; sType: string; iNewNInvoice: integer = 0; bFromReceipt: boolean = False; ABilled: string = 'N'): integer;

  function SettingExists(sOwner: string; sItem: string):Boolean; overload;
  function SettingExists(sEmp: string; sOwner: string; sItem: string): Boolean; overload;
  function SettingExists(sEmp: string; sOwner: string; AIntValue: integer): Boolean; overload;
  procedure SettingDelete(sOwner: string; sItem: string); overload;
  procedure SettingDelete(sEmp: string; sOwner: string; sItem: string); overload;
  procedure SettingDelete(sEmp: string; sOwner: string; sItem: integer); overload;
  function SettingLoadBoolean(sOwner: string; sItem: string): boolean; overload;
  function SettingLoadBoolean(sEmp: string; sOwner: string; sItem: string): boolean; overload;
  function SettingLoadInteger(sOwner: string; sItem: string): integer; overload;
  function SettingLoadInteger(sEmp: string; sOwner: string; sItem: string): integer; overload;
  function SettingLoadString(sOwner: string; sItem: string): string; overload;
  function SettingLoadString(sEmp: string; sOwner: string; sItem: string): string; overload;
  function SettingLoadString(sOwner: string; sItem: integer): string; overload;
  function SettingLoadString(sEmp: string; sOwner: string; sItem: integer): string; overload;
  function SettingLoadSort(sOwner: string; sItem: string): TcxDataSortOrder; overload;
  function SettingLoadGroup(sOwner: string; sItem: string): integer; overload;
  function SettingLoadGridBoolean(sOwner: string; sItem: string): boolean;
  function SettingLoadDate(sOwner: string; sItem: string): TDateTime;
  procedure SettingSave(sOwner: string; sItem: string; bValue: boolean); overload;
  procedure SettingSaveBoolean(sOwner: string; sItem: string; bValue: boolean);
  procedure SettingSave(sEmp: string; sOwner: string; sItem: string; bValue: boolean); overload;
  procedure SettingSave(sOwner: string; sItem: string; iValue: integer); overload;
  procedure SettingSave(sEmp: string; sOwner: string; sItem: string; iValue: integer); overload;
  procedure SettingSave(sOwner: string; sItem: string; sValue: string); overload;
  procedure SettingSave(sOwner: string; sItem: string; sValue: TcxDataSortOrder); overload;
  procedure SettingSave(sEmp: string; sOwner: string; sItem: string; sValue: string); overload;
  procedure SettingSave(sEmp: string; sOwner: string; sItem: string; sValue: TcxDataSortOrder); overload;
  procedure SettingSave(sEmp: string; sOwner: string; sItem: string; sValue: string; iValue: integer); overload;
  procedure SettingSaveAll(sOwner: string; sItem: string; sValue: string; iValue: integer); overload;
  procedure SettingSaveAll(sEmp: string; sOwner: string; sItem: string; sValue: string; iValue: integer); overload;

  function GlobalSettingLoadBoolean(sEmp: string; sOwner: string; sItem: string): boolean;
  function GlobalSettingLoadInteger(sEmp: string; sOwner: string; sItem: string): integer;
  function GlobalSettingLoadString(sEmp: string; sOwner: string; sItem: string): string;

  function ShortcutDesc(iImageIndex: integer): string;
  procedure Sleep(dwMilliseconds: Integer); stdcall;
  function SpaceText(cAmount: currency; iMagnitude: integer): string;
  function StarText(cAmount: currency; iMagnitude: integer): string;
  function StarNumber(cAmount: currency; iMagnitude: integer): string;
  procedure StringPopulate(Target: TStrings; Table, Field: string); overload;
  procedure StringPopulate(Target: TStrings; Table, Field, Where: string); overload;
  procedure StringPopulateList(TargetA, TargetB: TStrings; Table, FieldA, FieldB: string); overload;
  procedure SuburbSave(sSuburb, sState, sPostcode: string);
  procedure SundryInsert(NMatter: integer; SundryType: string; Reason: string; Amount: Currency; AUnits: integer = 0; ANMemo: integer = 0);
  function SystemDate(sField: string): TDateTime;
  function SystemInteger(sField: string): integer;
  function SystemString(sField: string): string;
  function SystemFloat(sField: string): double;
  function SystemVal(Field: string): boolean;
  function TableInteger(Table, LookupField, LookupValue, ReturnField: string): integer; overload;
  function TableInteger(Table, LookupField: string; LookupValue: integer; ReturnField: string): integer; overload;
  function TableIntegerx(Table, LookupField, LookupValue, ExtraWhere, ReturnField: string): integer; overload;
  function TableIntegerx(Table, LookupField: string; LookupValue: integer; ExtraWhere: string; ReturnField: string): integer; overload;
  function GetNMemoRef(sField, sRefNo: string) : string;
  function TableCurrency(Table, LookupField, LookupValue, ReturnField: string): currency; overload;
  function TableCurrency(Table, LookupField: string; LookupValue: integer; ReturnField: string): currency; overload;
  function TableString(Table, LookupField, LookupValue, ReturnField: string): string; overload;
  function TableStringEntity(aTable, aLookupField: string; aLookupValue: Integer; aReturnField: string; aEntity: string): string; overload;
  function TableStringEntity(aTable, aLookupField, aLookupValue, aReturnField: string; aEntity: string): string; overload;
  function TableString(Table, LookupField: string; LookupValue: integer; ReturnField: string): string; overload;
  procedure TableStringList(Table, LookupField: string; LookupValue: string; ReturnField: string; AStringList: TStringList);
  procedure TaskProcess(sTask: string; sFileID: string; sAuthor: string; iTaskNumber: Integer; taTaskAction: TTaskAction);
  function TaxCalc(var Amount: Double; RateType, TaxCode: string; TaxDate: TDateTime): Double; overload;
  function TaxCalc(var Amount: Currency; RateType, TaxCode: string; TaxDate: TDateTime): Currency; overload;
  function TaxCalc2(var Amount: Currency; RateType, TaxCode: string; TaxDate: TDateTime): Currency;
  function TaxExtract(var Amount: Double; TaxCode: string; TaxDate: TDateTime): Double;
  function TaxRate(RateType, TaxCode: string; Commence: TDateTime): Double;
  function TaxCode(RateType: String; TaxRate: Double; Commence: TDateTime): String;
  procedure ToggleEditButtons(Sender: TControl; Action: TEditButtonAction = ebaToggle);
  function TypeString(sCode: string; sField: string): string;
  procedure UseBitmap(ilstTarget: TImageList; sName: string);
  procedure GetBitmap(ilstTarget: TImageList; sName: string);
  function ValidLedger(sEntity, sLedger: string): boolean;
  function GetSeqNumberi(sSequence: string): Integer;
  function GetDisplayName(sClass,sName : String) : String;
  procedure getLabel(lLabel : TLabel;sClass,sName : String;var ilength : integer; sDefault: string = ''); overload;
  function getLabel(sClass,sName : String; sDefault: string = ''): String; overload;
  function set_date_format(sformat : string) : string;
  function get_default_gst(sform : String) : String;
  function get_tax_method(sEntity : String) : String;
  function CheckReqFields(sTableName: String;dDataSet : TDataSet) : BOOLEAN;
  function ClearTrust(sFileID : String) : Currency;
  function UnClearedTrust(sFileID : String) : Currency;
  function GetClearDate(dDate : TDateTime;iDaysToClear : INTEGER) : TDateTime; overload;
  procedure CheckLedgerTotal;
  procedure ZeroLedgerTotal;
  procedure UpdateLedgerTotal(const Amount: Currency);
  function InputQueryPassword(const ACaption, APrompt: string; var Value: string): Boolean;
  function PostIntoLockedPeriod(const PostingDate: TDateTime): TPostResult;
  procedure PostCheqReqTrans(cAmount: currency; iNALLOC, iNCHEQREQ: integer);
  procedure SetDataFieldHints(AForm: TCustomForm; APrePend: String);
  procedure ResetDataFieldHints(AForm: TCustomForm);
  function IsActiveLedger(sEntity : String; sFullLedger : String) : Boolean;
  function AndReplace(AStr: String): String;
  function ReplaceAndAnd(AStr: String): String;
  function IsTrustAccount(sAcct : String) : Boolean;
  function IsExisitingChart(sChart : String; sEntity : String) : Boolean;
  function IsJournalSplittingChart(sChart : String; sEntity : String) : Boolean;
  procedure JournalSplitToDatabase(dtDate: TDateTime; cAmount: currency; cTax: Currency;
            sRefno: string; sOwnerCode: string; iOwner: integer; sDesc: string;
            sFullLedger: string; sAuthor: string; iInvoice: Integer;
            CreditorCode: string; sTaxCode : String; sParentChart : String);
  procedure JournalSplit(oChartList : TStringList; oTGeneralLedgerObj : TGeneralLedgerObj);
  procedure GetChartBreakDownData(loQry : TUniQuery; sChart : String; sEntity : String);
  function CreateGeneralLedgerObjWith(sChart : String; oTGeneralLedgerObj : TGeneralLedgerObj) : TGeneralLedgerObj;

  function getValidMatterNumberSource : String;
  function getSourceForNextMatter : String;
  function validateAccountCode(sCode : String) : Boolean;
  function LogIntoCheqReqTool : Boolean;
  function AllowDirectPost(sLedger: string): boolean;
  function IsMatterArchived(FileId: string): boolean;
  function IsValidBankForEntity(sAcct: string): boolean;
  function IsValidMatterForEntity(sFileId: string): boolean;
  function IsValidMatterForBank(sFileId: string; sBank: string): boolean;
  function IsValidGLACCTForEntity(sGLAcct: string): boolean;
  function GetMatterNoFromFileid(sFileId: string): integer;
  function GetEnvelopeId(p_nclient: integer; p_ndocreg: string): string;
  function IsCRInvoiceUnique(InvNo: string; nClient: integer): boolean;

  function AddEvoCheckDigit(AFileID: Integer): String;

  function DBNumberRounding(NumberToRound: double): double;

  procedure TransItemUpdate(nAccount, nMatter, nAlloc: Integer);

  function getDataFromTable(ReturnField, Table, LookupField, LookupValue: String; var ColumnNames: TStringList): TList;
  function recalculateAllMatterFees(MatterNo: integer): Boolean;
  function recalculateMatterFees(MatterNo, MatterFeeType: integer): Boolean;
  function getLabelValue(sClass,sName : String;var ilength : integer; sDefault: string = ''): String;
  function getLabelValueByCode(sClass, sCode : String; var ilength : integer): String;

  procedure ListBoxMoveAll(lbFrom: TcxListBox; lbTo: TcxListBox); overload;
  procedure ListBoxMoveAll(lbFrom: TcxGridTableView; lbTo: TcxGridTableView); overload;
  function PreassignBill() : Boolean;

  function Check_ABN(ABN: string; var msg: string): boolean;
  function CreateBPayReference(BPay: string): string;

  procedure RemoveFromDesktop(aform: TForm);
  function ProtectedTrust(sFileID : String) : Currency;
  function GetSQLObject(aReport: TppReport; var aSQL: TdaSQL; CompNo: integer): Boolean;

  function EmpString(sCode : string; sField : string) : string;

  function BillTemplateType(sCode: string): string;
  function GetNextSequence(sSequence: string): Integer;
  function GetEnforceBSBDD(ABank: string): string;
  procedure CloseOpenTabs;
  procedure CloseAllOtherForms;
  procedure SetReqFieldsColour(sTableName: String; dDataSet: TDataSet; AForm: TForm); overload;
  procedure SetReqFieldsColour(sTableName: String; dDataSet: TDataSet; ATabSheet: TTabSheet); overload;
  procedure SetReqFieldsColour(sTableName: String; dDataSet: TDataSet; ATabSheet: TcxTabSheet); overload;
  Function IsExeRunning(const sExeName : String; var ProcCount: integer): Boolean;
  function GetSequenceNumber(sSequence: string): integer;
  function AllowBillReverse(PnMemo: integer): boolean;
  function IsCreditor(PNName: integer): boolean;
  function GetBillOwing(PnMemo: integer): Currency;
  function GetMIMEType(FileExt: string): string;
  procedure SettingSaveStream(sEmp: string; sOwner: string; AView: TcxGridDBTableView); overload;
  procedure SettingLoadStream(sEmp: string; sOwner: string; AView: TcxGridDBTableView ); overload;
  procedure SettingLoadStream(sEmp: string; sOwner: string; AView: TcxGridTableView ); overload;
  procedure SettingSaveStream(sEmp: string; sOwner: string; AView: TdxDockingManager); overload;
  procedure SettingLoadStream(sEmp: string; sOwner: string; AView: TdxDockingManager); overload;
  procedure SettingSaveStream(sEmp: string; sOwner: string; AView: TcxGridDBBandedTableView); overload;
  procedure SettingLoadStream(sEmp: string; sOwner: string; AView: TcxGridDBBandedTableView ); overload;
  function InputQueryDate(const ACaption, APrompt: string; var Value: TDateTime): Boolean;
  function InputQueryString(const ACaption, APrompt, ALabelCaption: string; var Value: string): Boolean;
  function GetPacketId(): string;
  function getnextword(var s,w:string):boolean;
  function ProcString(Proc: string; LookupValue: TDateTime): string; overload;
  function ProcString(Proc: string; LookupValue: integer): string; overload;
  function ProcInteger(Proc: string): integer; overload;
  function ProcInteger(Proc: string; LookupValue: integer): integer; overload;
  function ProcInteger(Proc: string; LookupValue: TDateTime): integer; overload;
  function ProcInteger(Proc: string; LookupValue1, LookupValue2: TDateTime): integer; overload;
  function ProcInteger(Proc: string; LookupValue1, LookupValue2: TDateTime; LookupValue3: string): integer; overload;
  function ClearProtectedTrust(sFileID : String) : Currency;
  function CheckReqFieldsNew(sTableName: String; dDataSet: TDataSet): Boolean;
  function TableDateTime(Table, LookupField: string; LookupValue: integer; ReturnField: string): TDateTime; overload;
  procedure SettingSaveStream(sEmp: string; sOwner: string; AView: TcxCustomGridView ); overload;
  function GetComputerNetName: string;
  procedure ClearCheques;
  procedure CheckUnpaidCreditors(BillNo: string);
  function TokenizePath(var s,w:string): boolean;
  function IndexPath(PathText, PathLoc: string): string;
  function ClearTrustFromStoredProc(sFileID : String) : Currency;
  function MatterDocAccess(ANMatter, AEmpCode: string ): boolean;
  function GetNextToken(Const S: string; Separator: char; var StartPos: integer): String;
  procedure Split(const S: String; Separator: Char; MyStringList: TStringList);
  function ParseMacros(AFileName: String; ANMatter: Integer = -1; ADocID: Integer = -1; ADocDescr: string = ''; ANMemo: integer = -1): String;
  procedure SaveBill(ADoc_Name, AAuth, APath, ADescr, AFileid, APrecCategory, APrecedentDetails, APrecClass: string; ANMemo: integer);
  procedure UpdateModBy(sDocId: string);

  function GetClearDate(dDate: TDateTime; ACode: string): TDateTime; overload;

  function CalcYear(ASeriesCaption: string; AIndex: integer): Integer;
  function IsValidEmail(const Value: string): Boolean;
  function ADaysInMonth(aYear, aMonth, aDay: integer): integer;
  procedure PostTempFees;
  function DefaultBillTemplate(): boolean;
  function  IsMatterPrivate(ANMatter: integer; ARestrictMatter: string): boolean;
  function IsNotMatterTeam(ANMatter: integer): boolean;

  procedure PostKeyEx32(key: Word; const shift: TShiftState; specialkey: Boolean) ;

  function CalcTax(AAmount: currency; sType, AFileID, ANMemo, ANMatter, ADefaultTax: String; ATaxDate, ADispatched: TDateTime): Currency;
  function DebtorStopWork(ACode: string): boolean;

  procedure ConvertDOCFiles(AFile: string);
  procedure ConvertMsg(AFile: string);
  procedure ConvertXLFiles(AFile: string);

  function MoveMatterDoc(var ANewDocName: string; AOldDocName: string; DeleteOrigDoc: boolean = True; DisplayMsg: boolean = True): boolean;
  function ConvertdocToPDF(ALsFile: string): string;
  function PadStr(value: string; plength: integer; PadValue: string = ' '; LeftPad: boolean = true): string;
  function RecycleDelete(whandle: THandle; inpath: string): integer;
  function TableFloat(Table, LookupField: string; LookupValue: integer; ReturnField: string): double; overload;
  function TableFloat(Table, LookupField: string; LookupValue: string; ReturnField: string): double; overload;
  procedure GetEmailAddresses(var ARecipientsList: TStringList; ANMatter, ANClient: integer); overload;
  procedure GetEmailAddresses(var ARecipientsList: TStringList; ANClient: integer); overload;
  procedure SaveFileNotesToDoc(ACreated: TDateTime; ANotes, AReason,
                               AFileID, AAuthor, AFileName: string; ANFee: integer);
  function ParseEmailMacros(ANMatter,ANName: Integer; AHTMLBody: string): String;
  function WriteFileDetailsToDB(AParentDocID: integer; ANewDocName, AFileID, ADocDescr: string; AIsAttachment: string = 'N';  ADocID: integer = 0): boolean;
  function PadFileID(AFileID: string): string;
  procedure SaveCheqReq(ADoc_Name, AAuth, APath, ADescr, AFileid, APrecCategory,
                        APrecedentDetails, APrecClass: string; AnCheqReq: integer);
  function IsValidBillForMatter(sFileId, Entity: string): boolean;
  function TableDateTime(Table, LookupField: string; LookupValue: string; ReturnField: string): TDateTime; overload;
  function GetCurrentUserName: string;
  procedure SaveSearchFromXML(AFileName: string);
  function CleanFileName(AFileName: string; ANewChar: char = ' '): string;
  function InfoTrackLogin(const Url: string; TargetFileName,
                                              User, Pass: string; ANMatter: integer): boolean;
  function SaveDocument(ACreated: TDateTime; AFileID, AAuthor, AFileName, AKeyword, ASearch: string;
                         AImageIndex: integer = 5): integer;
  function CreateInvoice(iMatter, iClient: integer; dCreated: tDateTime; var sDiscount: string; bFromBulkBills: boolean = false;
                          AForm: TComponent = nil): integer;
  function ShowTax(pdAmount: double; var dgstFree: double; sType, sFileID, sDefaultTax: string;
                   nNMatter, nNMemo: integer; dTaxDate: TDateTime): double;
  function HasWithholdingTaxForSelectedItem : Boolean;
  function IsValidFileID(sFileId: string): boolean;
  function GetTempDirectory: String;
  function GetCurrencySymbol: string;
  function GetThumb(AFilePath: string; var hBmp: HBITMAP): HRESULT;
  procedure ListBox2File(sFile: String; oList: TListBox);
  procedure ComboBoxObjectPopulate(Target: TcxDBComboBox; Table, DisplayField, LookupField: string); overload;
  procedure ComboBoxObjectPopulate(Target: TcxDBComboBox; Table, DisplayField, LookupField, Where: string); overload;
  function Test_VerLanguageName: string;
  function Insight_GetLocaleInfo: string;
  function validateNRIC(str: string): string;
  function IsObjectActive(ClassName: string): Boolean;
  function CopyFileIFileOperationForceDirectories(const srcFile, destFile : string; DeleteOrigDoc: boolean = False) : boolean;
  function InputQueryAmount(const ACaption, APrompt: string; var Value: double): Boolean;
  function TaskRevenueRate(sFileID, sEmpCode: string; Fee_Date: TDateTime; NScalecost, NTimeEstimate, NMaxTimeEstimate: integer;
                  var aMinRate, aMaxRate, aEstHourlyCost, aEmpNetCostHour, aEmpCostPerHour: double): double;
  function zipFile(ArchiveName: string; Filename: TStringlist): boolean;
  // added by AES 07/06/2018
  function SettingLoadBooleanTrueWhenEmpty(sEmp: string; sOwner: string; sItem: string): boolean;
  function ProspectiveFeesAllowed(sFileid: string): boolean;
//  function CanAuthoriseBills(sEmp: string; pnMatter: integer; pDept: string = ''): boolean;
  procedure MatterCurrency(ANMatter: integer; var Aentity_Curr_ID, AClient_Curr_ID, AMatter_Curr_ID, AMatter_Curr: String);
  procedure CalculateFXValue(ABase_Curr, AEntity_Curr, ATran_Curr: string; ATransDate: TDateTime;
                             ATransAmount: double; var ACurrencyValBase, ACurrencyValEntity, ACurrencyValTran, AFXValue: double);
  procedure InvoiceMergeEmail(iInvoice: integer; nMatter: Integer; Template: string = '');
  function CanAuthoriseBills(sEmp: string; pnMatter: integer; pDept: string): boolean;

type
  TRoundToRange = -37..37;

{ This variation of the RoundTo function follows the asymmetric arithmetic
  rounding algorithm (if Frac(X) < .5 then return X else return X + 1).  This
  function defaults to rounding to the hundredth's place (cents).

  This has been fixed and renamed from the Borland SimpleRoundTo code,
  which delivers an incorrect result}

  function SimpleRounding(const AValue: Double; const ADigit: TRoundToRange = -2): Double;

  {
   takes three arrays, list of tables , list of field and list of key fields.
   Also takes a key.
   It checks it see if child exists for the list of tables for record key

   so PHONEBOOK,NNAMEMASTER NNAME with a key of 123
   will check the table phonebook for an nnamemaster of 123 and record nname in the
   error message

  }

  function checkChildRecords(sSource : String;
                             var sMessage : String;ikey : integer): boolean;

implementation

uses
  Dialogs, Word2000, FeeNew, MatterDataForm, AxiomData, Desktop,
  NumWords, NumW, NumW_Eng, SundryNew, WPFormat, Consts, Printers{, FileCtrl},
  TypInfo, Math, StrUtils, BillTemplatePrint, CommCtrl,
  citfunc, Process, WorkFlowTask, Browser, BHLSupport, System.UITypes;

var
// Used to keep a running total of the ledger balance
  cLedgerTotal : Currency = 0.0;
// for macros..
  GTempPath,
  GHomePath,
  GUserProfile: String;
  LocaleSettings: TformatSettings;

function GetFormatSettings: TFormatSettings;
begin
  LocaleSettings := TFormatSettings.Create(LOCALE_SYSTEM_DEFAULT);
  Result := LocaleSettings;
end;

procedure getLabel(lLabel : TLabel;sClass,sName : String; var ilength : integer; sDefault: string = ''); overload;
var
   stmp : String;
begin
   stmp := GetDisplayName(sClass,sName);
   if stmp <> '' then
      lLabel.Caption := stmp
   else
      lLabel.Caption := sDefault;

   if lLabel.Width > iLength then
      iLength := lLabel.Width;
end;

function getLabel(sClass,sName : String; sDefault: string = ''): String; overload;
var
   stmp : String;
begin
   stmp := GetDisplayName(sClass,sName);
   if stmp <> '' then
      getLabel := stmp
   else
      getLabel := sDefault;
end;

function GetDisplayName(sClass,sName : String) : String;
begin
   GetDisplayName := '';
   if not dmTableCache.vtDisplayName.Active then
      dmTableCache.LoadVirtualTable(dmTableCache.vtDisplayName,'DISPLAY_NAME','ACCT = ''' + dmAxiom.Entity + '''');

   dmTableCache.vtDisplayName.First;

   while not dmTableCache.vtDisplayName.EOF do
   begin
        if (dmTableCache.vtDisplayName.FieldByName('CLASS').AsString = sClass)
        and (dmTableCache.vtDisplayName.FieldByName('NAME').AsString = sName) then
        begin
           GetDisplayName := dmTableCache.vtDisplayName.FieldByName('VALUE').AsString;
           exit;
        end;
        dmTableCache.vtDisplayName.Next;
   end;
end;

function getLabelValue(sClass, sName : String; var ilength : integer; sDefault: string = ''): String;
begin
   if dmAxiom.orsaxiom.connected = True then
   begin
      if dmAxiom.qryGetLabelName.State = dsInactive then
         dmAxiom.qryGetLabelName.Open
      else
         begin
            dmAxiom.qryGetLabelName.ParamByName('Class').AsString := sClass;
            dmAxiom.qryGetLabelName.ParamByName('Name').AsString := sName;
            dmAxiom.qryGetLabelName.ParamByName('Entity').AsString := dmAxiom.Entity;
            dmAxiom.qryGetLabelName.Execute;
            if dmAxiom.qryGetLabelName.FieldByName('fieldname').AsString <> '' then
               Result := dmAxiom.qryGetLabelName.FieldByName('fieldname').AsString
            else
               Result := sDefault;
         end;
   end;
end;

function getLabelValueByCode(sClass, sCode : String; var ilength : integer): String;
begin
   if dmAxiom.orsaxiom.connected = True then
   begin
      if dmAxiom.qryGetLabelNameByCode.State <> dsInactive then
         dmAxiom.qryGetLabelName.Open
      else
         begin
            dmAxiom.qryGetLabelNameByCode.ParamByName('Class').AsString := sClass;
            dmAxiom.qryGetLabelNameByCode.ParamByName('Code').AsString := sCode;
            dmAxiom.qryGetLabelNameByCode.ParamByName('Entity').AsString := dmAxiom.Entity;
            dmAxiom.qryGetLabelNameByCode.Execute;
            Result := dmAxiom.qryGetLabelNameByCode.FieldByName('fieldname').AsString;
         end;
   end;
end;


procedure AddBanks(cbBank: TComboBox; sTypes: string); overload;
begin
{ Adds the list of Bank Account codes to the ComboBox passed
}
  if cbBank.Items.Count <> 0 then
    cbBank.Items.Clear;
  with dmAxiom.qryBanks do
  begin
    Close;
    SQL.Text := 'SELECT ACCT, TRUST FROM BANK WHERE ACTIVE = ''Y'' AND Entity = ''' + dmAxiom.Entity + ''' ORDER BY ACCT';
    Open;

    while not EOF do
    begin
      if sTypes = '' then
        cbBank.Items.Add(FieldByName('ACCT').AsString)
      else if Pos(FieldByName('TRUST').AsString, sTypes) > 0 then
        cbBank.Items.Add(FieldByName('ACCT').AsString);

      Next;
    end;
    Close;
  end;
end;

procedure AddBanks(cbBank: TcxComboBox; sTypes: string); overload;
begin
{ Adds the list of Bank Account codes to the ComboBox passed
}
  if cbBank.Properties.Items.Count <> 0 then
    cbBank.Properties.Items.Clear;
  with dmAxiom.qryBanks do
  begin
    Close;
    SQL.Text := 'SELECT ACCT, TRUST FROM BANK WHERE ACTIVE = ''Y'' AND Entity = ''' + dmAxiom.Entity + ''' ORDER BY ACCT';
    Open;

    while not EOF do
    begin
      if sTypes = '' then
        cbBank.Properties.Items.Add(FieldByName('ACCT').AsString)
      else if Pos(FieldByName('TRUST').AsString, sTypes) > 0 then
        cbBank.Properties.Items.Add(FieldByName('ACCT').AsString);

      Next;
    end;
    Close;
  end;
end;

procedure AddPrecedentToDocs(FileID, FileName, Search, Description: string; Category: string; Classification: string);
begin
   with dmAxiom.qryMatterDocs do
   begin
    SQL.Clear;
    SQL.Add('INSERT INTO DOC');
    SQL.Add('(DOC_NAME, SEARCH, D_CREATE, D_MODIF, DESCR, AUTH1, PATH, FILEID, NPRECCATEGORY, NPRECCLASSIFICATION)');
    SQL.Add('VALUES (:DOC_NAME, :SEARCH, SYSDATE, SYSDATE, :DESCR, :AUTH1, :PATH, :FILEID, :CATEGORY, :CLASSIFICATION)');
    ParamByName('DOC_NAME').AsString := ExtractFileName(FileName);
    ParamByName('SEARCH').AsString := Search;
    ParamByName('DESCR').AsString := Description;
    ParamByName('AUTH1').AsString := dmAxiom.UserID;
    ParamByName('PATH').AsString := FileName;
    ParamByName('FILEID').AsString := FileID;
    ParamByName('CATEGORY').AsString := Category;
    ParamByName('CLASSIFICATION').AsString := CLASSIFICATION;
    ExecSQL;
    Close;
   end;
end;


function BankColour(sCode: string): integer;
begin
   if (dmAxiom.qryBanks.State = dsInactive) then
      dmAxiom.qryBanks.Open;

   with dmAxiom.qryBanks do
   begin
      Close;
      SQL.Text := 'SELECT COLOUR FROM BANK WHERE ACCT = :ACCT';
      Params[0].AsString := sCode;
      Open;
      if not IsEmpty then
      begin
         if FieldbyName('COLOUR').AsInteger = 0 then
            BankColour := clGreen
         else
            BankColour := FieldbyName('COLOUR').AsInteger;
      end
      else
        BankColour := FieldbyName('COLOUR').AsInteger
    end;
//    else
//      BankColour := clBtnFace;
//    Close;
//  end;
end;


function BeginOfMonth(dtCurrentDate: TDateTime; iMonthCount: Shortint = 0): TDateTime;
var
  Day, Month, Year: Word;
begin
  if iMonthCount = 0 then
  begin
    DecodeDate(dtCurrentDate, Year, Month, Day);
    Result := EncodeDate(Year, Month, 1);
  end
  else
  begin
    DecodeDate(dtCurrentDate, Year, Month, Day);
    if (Month = 1) and (iMonthCount < 0) then
      Result := EncodeDate(Year-1, 12+1+iMonthCount, 1)
    else if (Month = 12) and (iMonthCount > 0) then
      Result := EncodeDate(Year+1, 1-1+iMonthCount, 1)
    else
      Result := EncodeDate(Year, Month+1, 1)-1
  end;
end;


function BillTemplate(sCode: string): string;
var
  sLookup: string;
begin
  sLookup := sCode;
  BillTemplate := '';
  with dmAxiom.qryNew do
  begin
    Close;
    if sLookup <> '' then
    begin
      SQL.Text := 'SELECT PATH FROM BILLTEMPLATE WHERE CODE = :CODE';
      Params[0].AsString := sLookup;
      Open;
      if not IsEmpty then
        BillTemplate := FieldByName('PATH').AsString
      else
        sLookup := '';
    end;
    if sLookup = '' then
    begin
      SQL.Text := 'SELECT PATH FROM BILLTEMPLATE WHERE DEFAULTBILL = ''Y''';
      Open;
      if not IsEmpty then
        BillTemplate := FieldByName('PATH').AsString;
    end
  end;
end;


function BusinessDaysBetween(dtStart, dtEnd: TDateTime): Integer;
var
  iCtr: Integer;
  iNumBusinessDays: Integer;
begin
  iNumBusinessDays := 0;
  for iCtr := 0 to Trunc(dtEnd-dtStart) do
  begin
    if not(DayOfWeek(dtStart+iCtr) in [1, 7]) then
      Inc(iNumBusinessDays);
  end;
  Result := iNumBusinessDays;
end;


function CloseMatter(FileID: string; ClosureDate: TDateTime): Boolean;
var
   sClosureWarning: string;
   ATemplateLineID, nWorkFlowTask: integer;
   WFT : TWorkFlowTask;
   NMatter: integer;
begin
  (* the processing logic in this procedure is incorrect and needs to be reviewed ???? *)
  Result := False;
  if (SystemString('ALLOWCLOSEIFACC') = 'N') then {  SettingLoadBoolean('sys', 'MATTER', 'DISALLOWCLOSE') then }
  begin
    with dmAxiom.qryTmp do
    begin
      (* check if the matter balances are all a-okay *)
      SQL.Text := 'SELECT Getwipamount(:P_File ) AS unbill_fees,getSundries(:P_File ) AS unbill_sund,'+
                  'getUnbillDisb(:P_File ) AS unbill_disb,getAntDisb(:P_File ) AS unbill_antd,'+
                  'getTrustBalAmount(:P_File ) AS trust_bal, getDebtorsAmount(:P_File ) AS debtors, '+
                  'GetInvestments(:P_File) as controlled, getUnbillCredAmount(:P_File) as creditors FROM DUAL';
      ParamByName('P_File').AsString := MatterString(FileID,'NMATTER');
      Open;
      sClosureWarning := '';
      if FieldByName('DEBTORS').AsFloat <> 0.0 then
        sClosureWarning := sClosureWarning + #13 + '    Debtors - ' +
                           Format('%8.2m', [FieldByName('DEBTORS').AsCurrency]);
      if FieldByName('UNBILL_FEES').AsFloat <> 0.0 then
        sClosureWarning := sClosureWarning + #13 + '    Work in Progress - ' +
                           Format('%8.2m', [FieldByName('UNBILL_FEES').AsCurrency]);
      if FieldByName('UNBILL_SUND').AsFloat <> 0.0 then
        sClosureWarning := sClosureWarning + #13 + '    Unbilled Sundries - ' +
                           Format('%8.2m', [FieldByName('UNBILL_SUND').AsCurrency]);
      if FieldByName('UNBILL_DISB').AsFloat <> 0.0 then
        sClosureWarning := sClosureWarning + #13 + '    Unbilled Disbursements - ' +
                           Format('%8.2m', [FieldByName('UNBILL_DISB').AsCurrency]);
      if FieldByName('UNBILL_ANTD').AsFloat <> 0.0 then
        sClosureWarning := sClosureWarning + #13 + '    Anticipated Disbursements - ' +
                           Format('%8.2m', [FieldByName('UNBILL_ANTD').AsCurrency]);
      if FieldByName('TRUST_BAL').AsFloat <> 0.0 then
        sClosureWarning := sClosureWarning + #13 + '    Trust Monies - ' +
                           Format('%8.2m', [FieldByName('TRUST_BAL').AsCurrency]);
      if FieldByName('CONTROLLED').AsFloat <> 0.0 then
        sClosureWarning := sClosureWarning + #13 + '    Controlled Monies - ' +
                           Format('%8.2m', [FieldByName('CONTROLLED').AsCurrency]);
      if FieldByName('CREDITORS').AsFloat <> 0.0 then
        sClosureWarning := sClosureWarning + #13 + '    Creditors - ' +
                           Format('%8.2m', [FieldByName('CREDITORS').AsCurrency]);
      if (sClosureWarning <> '') then
        sClosureWarning := 'Non-zero Matter Balances:'+sClosureWarning+#13#13;
      if (SystemString('ALLOWCLOSEUNPRESENTED') = 'N') then  { not SettingLoadBoolean('sys', 'MATTER', 'ALLOWCLOSEUNPRESENTED') then }
      begin
        (* check if there are any unpresented cheques *)
        Close;
        SQL.Clear;
        SQL.Add('SELECT ALLOC.CREATED, ALLOC.REFNO, ABS(ALLOC.AMOUNT) AS AMOUNT');
        SQL.Add('FROM ALLOC, CHEQUE');
        SQL.Add('WHERE ALLOC.FILEID = :FILEID AND ALLOC.NCHEQUE > 0');
        SQL.Add('  AND ALLOC.NCHEQUE = CHEQUE.NCHEQUE AND CHEQUE.PRESENTED IS NULL');
        ParamByName('FILEID').AsString := FileID;
        Open;
        if not(IsEmpty) then
        begin
          sClosureWarning := sClosureWarning + 'Unpresented cheques:' + #13;
          while not EOF do
          begin
            sClosureWarning := sClosureWarning + '    ' +
                               FormatDateTime('ddddd', FieldByName('CREATED').AsDateTime) +
                               ' ' + FieldByName('REFNO').AsString + ' ' +
                               Format('%8.2m', [FieldByName('AMOUNT').AsCurrency]) + #13;
            Next;
          end;
          sClosureWarning := sClosureWarning + #13#13;
        end;
      end;
      (* check if there are any outstanding cheque requisition(s) *)
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(AMOUNT) AS TOTAL');
      SQL.Add('FROM CHEQREQ');
      SQL.Add('WHERE FILEID = :FILEID');
      SQL.Add('  AND CONVERTED = ''N''');
      ParamByName('FILEID').AsString := FileID;
      Open;
      if FieldByName('TOTAL').AsCurrency > 0 then
        sClosureWarning := sClosureWarning +
                          'Matter contains outstanding cheque requisition(s) to the value of '+
                          Format('%8.2m', [FieldByName('TOTAL').AsCurrency])+'.' + #13#13;
      (* check if there are any draft bills *)
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM NMEMO');
      SQL.Add('WHERE FILEID = :FILEID');
      SQL.Add('  AND IS_DRAFT = ''Y''');
      ParamByName('FILEID').AsString := FileID;
      Open;
      if not(IsEmpty) then
        sClosureWarning := sClosureWarning + 'Matter contains draft bills.';
      Close;
      if (sClosureWarning <> '') then
        MessageDlg('You cannot close this Matter due to the following reasons:'+#13#13+
                    sClosureWarning, mtError, [mbOk], 0)
      else
        Result := True;
    end;
  end
  else
    Result := True;
  (* check if the matter has not fees and prompt for closure *)
  if Result and (SystemString('WARNONNOFEESATCLOSE') = 'Y') then { (SettingLoadBoolean('sys', 'MATTER', 'WARNONNOFEES')) then }
  begin
    with dmAxiom.qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(AMOUNT) AS TOTALFEES FROM FEE WHERE FILEID = :FILEID');
      ParamByName('FILEID').AsString := FileID;
      Open;
      if FieldByName('TOTALFEES').AsFloat < 1 then
      begin
        if MessageDlg('This matter contains no fees, are you sure you want to close it?', mtWarning, [mbYes, mbNo], 0) = mrNo then
          Result := False;
      end
      else
      begin
        if MessageDlg('Are you sure you want to close this Matter?', mtWarning, [mbYes, mbNo], 0) = mrNo then
          Result := False;
      end;
      Close;
    end;
  end
  else if Result then
  begin
    if MessageDlg('Are you sure you want to close this Matter?', mtWarning, [mbYes, mbNo], 0) = mrNo then
      Result := False;
  end;
  (* close the matter *)
  if Result then
  begin
    if dmAxiom.uniInsight.InTransaction then
       dmAxiom.uniInsight.Commit;
    try
       dmAxiom.uniInsight.StartTransaction;
       with dmAxiom.qryTmp do
       begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE MATTER SET COMPLETED = nvl(:COMPLETED, completed), status = nvl(:status, status), CLOSED = 1 WHERE FILEID = :FILEID');

         if ((systemstring('RETAIN_MATTER_CLOSED_DATE') = 'N') or
            (DateToStr(TableDateTime('Matter','NMATTER',StrToInt(MatterString(string(FileID),'NMATTER')),'COMPLETED')) = '30/12/1899')) then
            ParamByName('COMPLETED').AsDateTime := ClosureDate;

         if (systemstring('DFLT_MATTER_CLOSED_STATUS') <> '') or
            (TableString('Matter','NMATTER',StrToInt(MatterString(string(FileID),'NMATTER')),'Status') = '') then
            ParamByName('STATUS').AsString := systemstring('DFLT_MATTER_CLOSED_STATUS');

         ParamByName('FILEID').AsString := FileID;
         ExecSQL;
         Close;

         // Stop any outstanding workflow tasks
         // AES 28-Sep-2012
         NMatter := StrToInt(MatterString(string(FileID),'NMATTER'));
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Clear;
            SQL.Text := 'select templatelineid, completed from workflowtasks where '+
                        'nmatter = :nmatter and completed is null and started is not null';
            ParamByName('nmatter').AsInteger := NMatter;
            Open;
            while not Eof do
            begin
               ATemplateLineID := FieldByName('templatelineid').AsInteger;

               // where fields
               dmAxiom.qryStopMatterWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
               dmAxiom.qryStopMatterWorkflowTasks.ParamByName('TEMPLATELINEID').AsInteger := ATemplateLineID;
               // update fields
               dmAxiom.qryStopMatterWorkflowTasks.ParamByName('Completed').AsDateTime := Now;
               dmAxiom.qryStopMatterWorkflowTasks.ParamByName('CompletedBy').AsString := dmAxiom.UserID;
               dmAxiom.qryStopMatterWorkflowTasks.ExecSQL;

               next;
            end;
         end;
         dmAxiom.qryStopMatterWorkflowTasks.Close;
       end;
    finally
       dmAxiom.uniInsight.Commit;
    end;
  end;
end;


procedure ComboBoxObjectFree(Target: TComboBox);
var
  iCtr: integer;
begin
  with Target do
    for iCtr := 0 to Items.Count - 1 do
      (Items.Objects[iCtr] as TValueObject).Free;
end;


procedure ComboBoxObjectPopulate(Target: TComboBox; Table, DisplayField, LookupField: string); overload;
var
  qryList: TUniQuery;
begin
  qryList := TUniQuery.Create(nil);
  with qryList do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT ' + DisplayField + ', ' + LookupField + ' FROM ' + Table + ' ORDER BY ' + DisplayField;
    Open;

    Target.Clear;
    while not EOF do
    begin
      Target.Items.AddObject(FieldByName(DisplayField).AsString, TValueObject.Create(FieldByName(LookupField).AsString));
      Next;
    end;
    Close;
  end;
  qryList.Free;
end;


procedure ComboBoxObjectPopulate(Target: TComboBox; Table, DisplayField, LookupField, Where: string); overload;
var
  qryList: TUniQuery;
begin
  qryList := TUniQuery.Create(nil);

  with qryList do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT ' + DisplayField + ', ' + LookupField + ' FROM ' + Table + ' WHERE ' + Where + ' ORDER BY ' + DisplayField;
    Open;

    Target.Clear;
    while not EOF do
    begin
      Target.Items.AddObject(FieldByName(DisplayField).AsString, TValueObject.Create(FieldByName(LookupField).AsString));
      Next;
    end;
    Close;
  end;
  qryList.Free;
end;

function DateBusinessCalc(dtDate: TDateTime; iDays: integer): TDateTime;
var
  dtCalc: TDateTime;
begin
  { Adjusts the dtDate by the business days given in iDays }
  dtCalc := dtDate + iDays;
  if DayOfWeek(dtCalc) = 1 then
    // Sunday
    if iDays > 0 then
      dtCalc := dtCalc + 1
    else
      dtCalc := dtCalc - 2;
  if DayOfWeek(dtCalc) = 7 then
    // Saturday
    if iDays > 0 then
      dtCalc := dtCalc + 2
    else
      dtCalc := dtCalc - 1;
  DateBusinessCalc := dtCalc;
end;


function Decrypt(const S: String): String;
var
  I: byte;
  Key: Word;
  sCrypt: string;
begin
  Key := CryptKey;
  SetLength(sCrypt, Length(S));
  for I := 1 to Length(S) do
  begin
    sCrypt[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(S[I]) + Key) * Crypt1 + Crypt2;
  end;
  Decrypt := sCrypt;
end;


function Encrypt(const S: String): String;
var
  I: byte;
  Key: Word;
  sCrypt: string;
begin
  Key := CryptKey;
  SetLength(sCrypt, Length(S));
  for I := 1 to Length(S) do
  begin
    sCrypt[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(sCrypt[I]) + Key) * Crypt1 + Crypt2;
  end;
  Encrypt := sCrypt;
end;


function FeeCodeString(sCode: string; sField: string): string;
begin
  with dmAxiom.qryNew do
  begin
    Close;
    SQL.Text := 'SELECT ' + sField + ' FROM FEECODE WHERE CODE = :CODE';
    Params[0].AsString := sCode;
    Open;
    if not IsEmpty then
      FeeCodeString := FieldByName(sField).AsString
    else
      FeeCodeString := '';
    Close;
  end;
end;

function JurisdictionString(sCode: string; sField: string): string;
begin
  dmTableCache.LoadVirtualTable(dmTableCache.vtJurisdiction,'JURISDICTION','DESCR IS NOT NULL','DESCR');
  Result := dmTableCache.VGetString(dmTableCache.vtJurisdiction,'CODE',sCode,sField);
end;

function SubJurisdictionString(sCode: string; sField: string): string;
begin
  dmTableCache.LoadVirtualTable(dmTableCache.vtSubJurisdiction,'SUBJURISDICTION','DESCR IS NOT NULL','DESCR');
  Result := dmTableCache.VGetString(dmTableCache.vtSubJurisdiction,'CODE',sCode,sField);
end;


function FeeBasisString(sCode: string; sField: string): string;
begin
  dmTableCache.LoadVirtualTable(dmTableCache.vtFeeBasis,'FEEBASIS','DESCR IS NOT NULL','DESCR');
  Result := dmTableCache.VGetString(dmTableCache.vtFeeBasis,'CODE',sCode,sField);
end;

function MatterStatusString(sCode: string; sField: string): string;
begin
  dmTableCache.LoadVirtualTable(dmTableCache.vtMatterStatus,'MATTERSTATUS','DESCR IS NOT NULL','DESCR');
  Result := dmTableCache.VGetString(dmTableCache.vtMatterStatus,'CODE',sCode,sField);
end;

function MatterSubStatusString(sCode: string; sField: string): string;
begin
  dmTableCache.LoadVirtualTable(dmTableCache.vtMatterSubStatus,'MATTERSUBSTATUS','DESCR IS NOT NULL','DESCR');
  Result := dmTableCache.VGetString(dmTableCache.vtMatterSubStatus,'CODE',sCode,sField);
end;


procedure FeeInsert(NMatter: integer; Author: string; Reason: string; Amount: Currency);
var
  qryThisMatter: TUniQuery;
  dAmount: Double;
begin
  qryThisMatter := TUniQuery.Create(nil);
  with qryThisMatter do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT PARTNER, FILEID, NCLIENT FROM MATTER WHERE NMATTER = :NMATTER';
    Params[0].AsInteger := NMatter;
    Open;
  end;
  if not qryThisMatter.IsEmpty then
    try
      with dmAxiom.qryFeeInsert do
      begin
        ParamByName('CREATED').AsDateTime := Now;
        ParamByName('AUTHOR').AsString := Author;
        ParamByName('PARTNER').AsString := qryThisMatter.FieldByName('PARTNER').AsString;
        ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
        ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', Author, 'DEPT');
        ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', Author, 'TYPE');
        ParamByName('DESCR').AsString := Reason;
        ParamByName('FILEID').AsString := qryThisMatter.FieldByName('FILEID').AsString;
        ParamByName('NMATTER').AsInteger := NMatter;
        ParamByName('NCLIENT').AsInteger := qryThisMatter.FieldByName('NCLIENT').AsInteger;
        ParamByName('TAXCODE').AsString := dmAxiom.DefaultTax;
        dAmount := Amount;
        ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', dmAxiom.DefaultTax, Now);
        ParamByName('AMOUNT').AsFloat := dAmount;
        ParamByName('BILLED').AsString := 'N';
        ParamByName('TYPE').AsString := 'N';
        ExecSQL;
        Close;

        MatterUpdate(NMatter, 'UNBILL_FEES', dAmount + TaxCalc(dAmount, '', dmAxiom.DefaultTax, Now));
{        if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR') <> '' then
        begin
          if true then
          begin
            if FOldAmount <> qryFee.FieldByName('AMOUNT').AsCurrency then
            begin
              if qryFee.FieldByName('AUTHOR').AsString = FOldAuthor then
                PostLedgers(dtpCreated.Date
                  , neAmount.Value - FOldAmount
                  , teMatter.EditText
                  , 'FEE'
                  , qryFee.FieldByName('NFEE').AsInteger
                  , mmoDesc.Lines.Text
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR')
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR')
                  , FOldAuthor
                  , cbTaxType.EditValue)
              else
              begin
                // Unpost old entry
                PostLedgers(dtpCreated.Date
                  , FOldAmount
                  , teMatter.EditText
                  , 'FEE'
                  , qryFee.FieldByName('NFEE').AsInteger
                  , mmoDesc.Lines.Text
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR')
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR')
                  , FOldAuthor
                  , cbTaxType.EditValue);
                // Post new entry
                PostLedgers(dtpCreated.Date
                  , neAmount.Value
                  , teMatter.EditText
                  , 'FEE'
                  , qryFee.FieldByName('NFEE').AsInteger
                  , mmoDesc.Lines.Text
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR')
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR')
                  , cbAuthor.EditValue
                  , cbTaxType.EditValue);
              end;
            end;
          end
          else
            PostLedgers(dtpCreated.Date
              , neAmount.Value
              , teMatter.EditText
              , 'FEE'
              , qryFee.FieldByName('NFEE').AsInteger
              , mmoDesc.Lines.Text
              , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR')
              , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR')
              , cbAuthor.EditValue
              , cbTaxType.EditValue);
        end;    }

      end;
    except
      On E:Exception do
        MsgErr('Error occured inserting fee'#13#13 + E.Message);
    end;

  qryThisMatter.Close;
  qryThisMatter.Free;
end;


function FeeRate(sFeeType, sFileID, sAuthor: string; Fee_Date: TDateTime): Currency;
{ Work out the fee rate. The fee rate is worked out by, in order of priority:
  1. If Fee.Type is not 'N', then use the FeeType rate if non-zero.
  2. If Matter.Rate is non-zero, use it.
  3. iF Matter.FeeCode is not null, look up the FeeCode/EmpCode combination's rate.
  4. If Matter.FeeCode is not null, look up the FeeCode/EmpType combination's rate.
  5. If MatterType.Fee_Rate is nonzero, use it
  6. If MatterType.FeeCode is not null, then look up the MatterType.FeeCode/EmpType combination's rate.
  7. If Client.FeeCode is not null, look up the FeeCode/EmpCode combination's rate.
  8. If Client.FeeCode is not null, look up the FeeCode/EmpType combination's rate.
  9. Use Employee.Rate

}
var
  cRate, cAuthorRate: currency;
  sMatterType, sFeeCode, sEmpType: string;
  bContinue: boolean;
begin
  cRate := 0;
  cAuthorRate := 0;
  bContinue := True;
  with dmAxiom.qryTmp do
  begin
    if sFeeType <> 'N' then
    begin
      // 1. Use the FeeType.Rate if it exists
      Close;
      SQL.Text := 'SELECT RATE FROM FEETYPE WHERE CODE = :CODE';
      Params[0].AsString := sFeeType;
      Open;
      if not IsEmpty then
      begin
        if FieldByName('RATE').AsFloat <> 0 then
        begin
          cRate := FieldbyName('RATE').AsFloat;
          bContinue := False;
        end;
      end;
    end;

    // If normal fee
    if bContinue then
    begin
       // We'll need to get the employee details now
       Close;
       SQL.Text := 'SELECT TYPE, RATE FROM EMPLOYEE WHERE CODE = :CODE';
       Params[0].AsString := sAuthor;
       Open;
       if not IsEmpty then
       begin
          cAuthorRate := FieldbyName('RATE').AsFloat;
          sEmpType := FieldbyName('TYPE').AsString;
       end
       else
       begin
          cAuthorRate := 0;
          sEmpType := '';
       end;

       // Check the Matter details
       Close;
       SQL.Text := 'SELECT RATE, FEECODE, TYPE FROM MATTER WHERE FILEID = :FILEID';
       Params[0].AsString := sFileID;
       Open;
       if not IsEmpty then
       begin
         sMatterType := FieldByName('TYPE').AsString;
         // 2. Matter.Rate
         if FieldbyName('RATE').AsFloat <> 0 then
         begin
           if FieldbyName('RATE').AsFloat < 5 then
             cRate := FieldbyName('RATE').AsFloat * cAuthorRate
           else
             cRate := FieldbyName('RATE').AsFloat;
           bContinue := False;
         end
         else
           sFeeCode := FieldByName('FEECODE').AsString;
       end;
    end;

    if bContinue then
    begin
      if (sFeeCode <> '') and (sAuthor <> '') then
      begin
        // 3. FeeCode/EmpCode rate
        Close;
        SQL.Clear;
        SQL.Add('SELECT RATE');
        SQL.Add('FROM FEECODE_EMP');
        SQL.Add('WHERE FEECODE = :FEECODE');
        SQL.Add('AND EMP_CODE = :EMPCODE');
        SQL.Add('AND :FEE_DATE between EFFECTIVE_FROM AND NVL(EFFECTIVE_TO,''31-DEC-4712'')');
        Params[0].AsString := sFeeCode;
        Params[1].AsString := sAuthor;
        Params[2].AsDateTime := Fee_Date;
        Open;
        if not IsEmpty then
        begin
          if FieldByName('RATE').Value <> Null then
          begin
            cRate := FieldbyName('RATE').AsFloat;
            bContinue := False;
          end;
        end;
      end;
    end;

    if bContinue then
    begin
      if (sFeeCode <> '') and (sEmpType <> '') then
      begin
        // 4. FeeCode/EmpType rate
        Close;
        SQL.Clear;
        SQL.Add('SELECT RATE');
        SQL.Add('FROM FEECODETYPE');
        SQL.Add('WHERE FEECODE = :FEECODE');
        SQL.Add('AND EMPTYPE = :EMPTYPE');
        SQL.Add('AND :FEE_DATE between EFFECTIVE_FROM AND NVL(EFFECTIVE_TO,''31-DEC-4712'')');
        Params[0].AsString := sFeeCode;
        Params[1].AsString := sEmpType;
        Params[2].AsDateTime := Fee_Date;
        Open;
        if not IsEmpty then
        begin
          if FieldByName('RATE').Value <> Null then
          begin
            cRate := FieldbyName('RATE').AsFloat;
            bContinue := False;
          end;
        end;
      end;
    end;

    if bContinue then
    begin
      // Try the Matter Type
      Close;
      SQL.Clear;
      SQL.Add('SELECT FEE_RATE, FEECODE');
      SQL.Add('FROM MATTERTYPE');
      SQL.Add('WHERE CODE = :CODE');
      Params[0].AsString := sMatterType;
      Open;
      if not IsEmpty then
      begin
        if FieldByName('FEE_RATE').AsFloat <> 0 then
        begin
          // 5. MatterType.Fee_Rate
          if FieldByName('FEE_RATE').AsFloat < 5 then
            cRate := FieldByName('FEE_RATE').AsFloat * cAuthorRate
          else
            cRate := FieldByName('FEE_RATE').AsFloat;
          bContinue := False;
        end
        else
        begin
          sFeeCode := FieldByName('FEECODE').AsString;
          if (sFeeCode <> '') and (sEmpType <> '') then
          begin
            // 6. MatterType.FeeCode/EmpType rate
            Close;
            SQL.Clear;
            SQL.Add('SELECT RATE');
            SQL.Add('FROM FEECODETYPE');
            SQL.Add('WHERE FEECODE = :FEECODE');
            SQL.Add('AND EMPTYPE = :EMPTYPE');
            SQL.Add('AND :FEE_DATE between EFFECTIVE_FROM AND NVL(EFFECTIVE_TO,''31-DEC-4712'')');
            Params[0].AsString := sFeeCode;
            Params[1].AsString := sEmpType;
            Params[2].AsDateTime := Fee_Date;
            Open;
            if not IsEmpty then
            begin
              if FieldByName('RATE').Value <> Null then
              begin
                cRate := FieldbyName('RATE').AsFloat;
                bContinue := False;
              end;
            end;
          end;
        end;
      end;
    end;

    if bContinue then
    begin
       // Check the Client details
       Close;
       SQL.Text := 'SELECT CLIENT.FEECODE FROM CLIENT, MATTER WHERE MATTER.FILEID = :FILEID AND MATTER.NCLIENT = CLIENT.NCLIENT';
       Params[0].AsString := sFileID;
       Open;
       if not IsEmpty then
          sFeeCode := FieldByName('FEECODE').AsString;

       if (sFeeCode <> '') and (sAuthor <> '') then
       begin
           // 7. Client.FeeCode/Emp rate
          Close;
          SQL.Clear;
          SQL.Add('SELECT RATE');
          SQL.Add('FROM FEECODE_EMP');
          SQL.Add('WHERE FEECODE = :FEECODE');
          SQL.Add('AND EMP_CODE = :EMPCODE');
          SQL.Add('AND :FEE_DATE between EFFECTIVE_FROM AND NVL(EFFECTIVE_TO,''31-DEC-4712'')');
          Params[0].AsString := sFeeCode;
          Params[1].AsString := sAuthor;
          Params[2].AsDateTime := Fee_Date;
          Open;
          if not IsEmpty then
          begin
             if FieldByName('RATE').Value <> Null then
             begin
               cRate := FieldbyName('RATE').AsFloat;
               bContinue := False;
             end;
          end
          else
          begin
//             sFeeCode := FieldByName('FEECODE').AsString;
             if (sFeeCode <> '') and (sEmpType <> '') then
             begin
               // 8. Client.FeeCode/EmpType rate
               Close;
               SQL.Clear;
               SQL.Add('SELECT RATE');
               SQL.Add('FROM FEECODETYPE');
               SQL.Add('WHERE FEECODE = :FEECODE');
               SQL.Add('AND EMPTYPE = :EMPTYPE');
               SQL.Add('AND :FEE_DATE between EFFECTIVE_FROM AND NVL(EFFECTIVE_TO,''31-DEC-4712'')');
               Params[0].AsString := sFeeCode;
               Params[1].AsString := sEmpType;
               Params[2].AsDateTime := Fee_Date;
               Open;
               if not IsEmpty then
               begin
                 if FieldByName('RATE').Value <> Null then
                 begin
                   cRate := FieldbyName('RATE').AsFloat;
                   bContinue := False;
                 end;
               end;
             end;
          end;
        end;
    END;

    // Pass back the result
    if bContinue then
      FeeRate := cAuthorRate
    else
      FeeRate := cRate;

    Close;

  end;
end;

function FindOrCreate(aformclass: TFormclass; Icon: integer; ADisplay: boolean = True): TCustomForm;
var
  i: Integer;
  frmLocal: TForm;
  TabSheet: TcxTabSheet;
begin
{  for i:= 0 to Screen.Formcount-1 do
    if Screen.Forms[i].ClassnameIs(aFormclass.Classname) then
    begin
      Result := Screen.forms[i];
      Result.Tag := Icon;
      Exit;
    end;  }



{   for i:= 0 to frmDesktop.fdTab.FormCount -1 do
   begin
      if frmDesktop.fdTab.Forms[i].ClassNameIs(aFormclass.Classname) then
      begin
         frmDesktop.fdTab.ActiveFormIndex := i;
         Result := frmDesktop.fdTab.Forms[i];
         Result.Tag := Icon;
         Exit;
      end;
   end;        }

{   try
      frmLocal := aformclass.Create(frmDesktop);
      frmDesktop.fdTab.AddForm(frmLocal, ADisplay);
      Result := frmLocal;
   except
      //
   end;      }

//  Application.CreateForm(aformclass, frmLocal);
//  frmDesktop.fdTab.AddForm(frmLocal, true);

//  Result := aFormclass.Create(frmDesktop);
//  Result.Tag := Icon;
end;

function FindOrCreateClassic(aformclass: TFormclass; Icon: integer): TForm;
var
  i: Integer;
begin
   for i:= 0 to Screen.Formcount-1 do
      if Screen.Forms[i].ClassnameIs(aFormclass.Classname) then
      begin
         Result := Screen.forms[i];
         Result.Tag := Icon;
         Exit;
      end;

   Result := aFormclass.Create(frmDesktop);
   Result.Tag := Icon;
end;

procedure RemoveFromDesktop(aform: TForm);
var
   ATabIndex: integer;
   Form: TCustomForm;
begin
  Form := GetParentForm(aForm);

   try
    if not(fsModal in aForm.FormState) and (Form.Name = 'frmDesktop')  then
    begin
      aForm.Release;
      ATabIndex := frmDesktop.TabIndex;
      if ATabIndex = -1 then
      begin
         if frmDesktop.pageForms.ActivePage <> NIL then
            frmDesktop.pageForms.ActivePage.Destroy;
      end
      else
         if frmDesktop.pageForms.ActivePage <> NIL then
            frmDesktop.pageForms.Pages[ATabIndex].Destroy;  // ActivePage.Free;
    end;

   finally
      if ((frmBrowser <> nil) or (frmBHLSupport <> nil)) and (frmHome <> nil) then
      begin
         if (frmBrowser <> nil) and (frmBHLSupport <> nil) and
            (frmDesktop.pageForms.PageCount = 3) then
            frmDesktop.pageForms.ActivePageIndex := 0;
         if ((frmBrowser <> nil) and (frmBHLSupport = nil)) and
            (frmDesktop.pageForms.PageCount = 2) then
            frmDesktop.pageForms.ActivePageIndex := 0;
         if ((frmBrowser = nil) and (frmBHLSupport <> nil)) and
            (frmDesktop.pageForms.PageCount = 2) then
            frmDesktop.pageForms.ActivePageIndex := 0;
      end;

{      if (frmDesktop.fdTab.Tabs.Count = 3) then
         frmDesktop.fdTab.ActiveFormIndex := 0;   }
   end;
end;

function FirstCap(sText: string): string;
var
  sFirstCh: string;
begin
  sFirstCh := Copy(sText, 1, 1);
  if (sFirstCh >= 'a') and (sFirstCh <= 'z') then
    FirstCap := UpperCase(sFirstCh) + Copy(sText, 2, 999)
  else
    FirstCap := sText;
end;


function FirstWord(sText: string): string;
begin
  if Pos(' ', sText) > 0 then
    FirstWord := Copy(sText, 0, Pos(' ', sText) - 1)
  else
    FirstWord := sText;
end;


function GetJournal: integer;
var
   lNJournal: integer;
begin
{ GetJournal grabs the next Journal number from the current Entity
 and returns it.
}
   try
      with dmAxiom.qryTmp do
      begin
         try
            Close;
            SQL.Text := 'SELECT nvl(NJOURNAL,0) AS NJOURNAL FROM ENTITY WHERE CODE = :CODE';
            Params[0].AsString := dmAxiom.Entity;
            Open;
            if (FieldByName('NJOURNAL').AsInteger = 0) then
            begin
               Close;
               SQL.Text := 'SELECT MAX NJOURNAL FROM JOURNAL WHERE ACCT = :CODE';
               Params[0].AsString := dmAxiom.Entity;
               Open;
               lNJournal := FieldByName('NJOURNAL').AsInteger;
               Close;
               SQL.Text := 'UPDATE ENTITY SET NJOURNAL = :NJOURNAL WHERE CODE = :CODE';
               ParamByName('CODE').AsString := dmAxiom.Entity;
               ParamByName('NJOURNAL').AsInteger := lNJournal;
               ExecSQL;
               Close;
            end;
         finally
            Close;
            SQL.Text := 'UPDATE ENTITY SET NJOURNAL = (NJOURNAL+1) WHERE CODE = :CODE';
            Params[0].AsString := dmAxiom.Entity;
            ExecSQL;
            Close;
            SQL.Text := 'SELECT NJOURNAL FROM ENTITY WHERE CODE = :CODE';
            Params[0].AsString := dmAxiom.Entity;
            Open;
            GetJournal := FieldByName('NJOURNAL').AsInteger;
            Close;
         end;
      end;
   except
      // Didn't work for some reason
      On E: Exception do
      begin
         MsgErr('Error occured getting journal number for Entity ' + dmAxiom.Entity + #13 + #13 + E.Message);
         GetJournal := -1;
      end;
   end;
end;


function GetJournalTrust(sAcct: string): integer;
begin
{ GetJournal grabs the next Journal number from the sAcct Bank Account
 and returns it.
}
  try
    with dmAxiom.qryTmp do
    begin
      Close;
      SQL.Text := 'UPDATE BANK SET NJOURNAL = (NJOURNAL+1) WHERE ACCT = :ACCT';
      Params[0].AsString := sAcct;
      ExecSQL;
      Close;
      SQL.Text := 'SELECT NJOURNAL FROM BANK WHERE ACCT = :ACCT';
      Params[0].AsString := sAcct;
      Open;
      GetJournalTrust := FieldByName('NJOURNAL').AsInteger;
      Close;
    end;
  except
    // Didn't work for some reason
    On E: Exception do
    begin
      MsgErr('Error occured getting Trust Journal number for Bank ' + sAcct + #13 + #13 + E.Message);
      GetJournalTrust := -1;
    end;
  end;
end;


function GetPrinterIndex(sPrinterName: string): Integer;
var
  Printer: TPrinter;
begin
  Printer := TPrinter.Create;
  Result := Printer.Printers.IndexOf(sPrinterName);
  Printer.Free;
end;


function GetMatter(ABranch: string): integer;
var
  iTmp : Integer;
  bFromEntity : boolean;
begin
{ GetMatter grabs the next Matter number and returns it.
}
   try
      with dmAxiom.qrySysFile do
      begin
         if (getValidMatterNumberSource = 'SYSTEMFILE') then
         begin
            Close;
            SQL.Text := 'SELECT NEXTMATTER FROM SYSTEMFILE';
            Open;
            iTmp := FieldByName('NEXTMATTER').AsInteger;

            Close;
            SQL.Text := 'UPDATE SYSTEMFILE SET NEXTMATTER = (NEXTMATTER + 1)';
            ExecSQL;
            Close;
         end
         else
         begin
            bFromEntity := False;
            Close;
            // check if matter defined at Branch level
            SQL.Text := 'SELECT NEXT_MATTER FROM BRANCH WHERE CODE = :BRANCH';
            parambyname('BRANCH').AsString := ABranch;
            Open;
            iTmp := FieldByName('NEXT_MATTER').AsInteger;
            if iTmp = 0 then
            begin
               Close;
               SQL.Text := 'SELECT NEXTMATTER FROM ENTITY WHERE CODE = :ENTITY';
               parambyname('ENTITY').AsString := dmAxiom.Entity;
               Open;
               iTmp := FieldByName('NEXTMATTER').AsInteger;
               bFromEntity := True;
            end;

            try
               if bFromEntity = True then
               begin
                  Close;
                  SQL.Text := 'UPDATE ENTITY SET NEXTMATTER = (NEXTMATTER + 1) WHERE CODE = :ENTITY';
                  parambyname('ENTITY').AsString := dmAxiom.Entity;
                  ExecSQL;
                  Close;
               end
               else
               begin
                  Close;
                  SQL.Text := 'UPDATE BRANCH SET NEXT_MATTER = (NEXT_MATTER + 1) WHERE CODE = :BRANCH';
                  parambyname('BRANCH').AsString := ABranch;
                  ExecSQL;
                  Close;
               end;
            except
              //
            end;
         end;    //  end if-else
         Result := GetSequenceNumber('SQNC_NMATTER');  //iTmp;
      end;
  except
    // Didn't work for some reason
    on E:Exception do
    begin
      //MessageDlg(E.Message, mtError, [mbOK], 0);
      Raise;
    end;
  end;
end;


{$IFNDEF NOMULTISELECT}
function GetMultiSelectData(Code: string): TStringList;
var
  strDummy: TStringList;
begin
  with dmAxiom.qryMultiSelection do
  begin
    SQL.Text := 'SELECT DESCR FROM MULTISELECTIONDATA WHERE PARENTCODE = :CODE';
    ParamByName('CODE').AsString := Code;
    Open;
    TStringList(Result).Clear;
    while not Eof do
      TStringList(Result).Add(FieldByName('DESCR').AsString);
    Close;
  end;
end;
{$ENDIF}


{$IFNDEF NOMULTISELECT}
function GetMultiSelectTitle(Code: string): string;
begin
  with dmAxiom.qryMultiSelection do
  begin
    SQL.Text := 'SELECT DESCR FROM MULTISELECTION WHERE CODE = :CODE';
    ParamByName('CODE').AsString := Code;
    Open;
    Result := FieldByName('DESCR').AsString;
    Close;
  end;
end;
{$ENDIF}


function GetSeqnum(sField: string): integer;
var
  iTmp: integer;
begin
{ GetSeqnum grabs the Seqnum specified by sField and returns it.
}
  try
    with dmAxiom.qrySeqNums do
    begin
      Close;

      SQL.Text := 'SELECT ' + sField + ' FROM SEQNUMS FOR UPDATE';
      Open;
      iTmp := -1;
      if not IsEmpty then
      begin
        iTmp := FieldByName(sField).AsInteger + 1;
        SQL.Text := 'UPDATE SEQNUMS SET ' + sField + ' = ' + IntToStr(iTmp);
        ExecSQL;
        Close;
      end;
      Close;
      Result := iTmp;
    end;
  except
    // Didn't work for some reason
    On E: Exception do
    begin
      MsgErr('Could not get next sequential number: ' + sField + #13#13 + E.Message);
      raise;
    end;
  end;
end;


function GetSubchart(sEntity: string; sMainChart: string; sEmp: String): string;
var
  sTmpLedger: string;
begin
  with dmAxiom.qryEmps do
  begin
    Close;
    SQL.Text := 'SELECT CHART_SUFFIX FROM EMPLOYEE WHERE CODE = :CODE';
    Params[0].AsString := sEmp;
    Open;

    if not IsEmpty then
    begin
      sTmpLedger := sMainChart + FieldByName('CHART_SUFFIX').AsString;
      if not ValidLedger(sEntity, sTmpLedger) then
        sTmpLedger := sMainChart;
    end
    else
      sTmpLedger := sMainChart;
  end;

  if not ValidLedger(sEntity, sTmpLedger) then
    Raise EPostError.Create('Invalid Ledger Code: ' + sMainChart);

  GetSubchart := sTmpLedger;
end;


function GetTaskStatus(qryTasks: TUniQuery): Integer;
begin
  with qryTasks do
  begin
    if not(FieldByName('FINISHED').IsNull) then
    begin
      if not(FieldByName('SKIPPED').IsNull) then
        Result := ISSKIPPEDSTATE
      else
        Result := ISFINISHEDSTATE;
    end
    else if not(FieldByName('STARTED').IsNull) then
      Result := ISSTARTEDSTATE
    else
      Result := ISPENDINGSTATE;
  end;
end;


function GLUpdate(sEntity: string; sLedger: String; dPeriod: TDateTime; cAmount: Currency): boolean;
var
  wYear, wMonth, wDay: Word;
  sSQL, sSQLWhere, sAddChart: string;
begin
{ This function updates the General Ledger specified by sBank and sLedger
  by the amount of cAmount
  If successful, it returns True, otherwise False
}
  GLUpdate := True;
  if cAmount <> 0 then
  begin
    GLUpdate := False;
    // Set the first chart as per the TRANSITEM
    sAddChart := sLedger;
    // For this chart, and all Add To charts, add the adjustment.
    repeat
      with dmAxiom.qryCharts do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * ');
        SQL.Add('FROM CHART');
        SQL.Add('WHERE BANK = :BANK');
        SQL.Add('  AND CODE = :CODE');
        Params[0].AsString := sEntity;
        Params[1].AsString := sAddChart;
        Open;
        if IsEmpty then
        begin
          GLUpdate := False;  // No such chart
          sAddChart := '';
        end
        else
        begin
          sSQL := 'UPDATE CHART SET ';
          sSQLWhere := ' WHERE BANK = :BANK AND CODE = :CODE';
          // Find out the month
          DecodeDate(dPeriod, wYear, wMonth, wDay);
          // Update the month balances
          case wMonth of
            1: // January
              sSQL := sSQL + 'JANBAL = ' + CurrToStrF(FieldByName('JANBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            2: // February
              sSQL := sSQL + 'FEBBAL = ' + CurrToStrF(FieldByName('FEBBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            3: // March
              sSQL := sSQL + 'MARBAL = ' + CurrToStrF(FieldByName('MARBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            4: // April
              sSQL := sSQL + 'APRBAL = ' + CurrToStrF(FieldByName('APRBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            5: // May
              sSQL := sSQL + 'MAYBAL = ' + CurrToStrF(FieldByName('MAYBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            6: // June
              sSQL := sSQL + 'JUNBAL = ' + CurrToStrF(FieldByName('JUNBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            7: // July
              sSQL := sSQL + 'JULBAL = ' + CurrToStrF(FieldByName('JULBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            8: // August
              sSQL := sSQL + 'AUGBAL = ' + CurrToStrF(FieldByName('AUGBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            9: // September
              sSQL := sSQL + 'SEPBAL = ' + CurrToStrF(FieldByName('SEPBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            10: // October
              sSQL := sSQL + 'OCTBAL = ' + CurrToStrF(FieldByName('OCTBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            11: // November
              sSQL := sSQL + 'NOVBAL = ' + CurrToStrF(FieldByName('NOVBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
            12: // December
              sSQL := sSQL + 'DECBAL = ' + CurrToStrF(FieldByName('DECBAL').AsFloat + cAmount, ffFixed, 15) + ', ';
          end;
          // Now, update the year to date balance
          sSQL := sSQL + 'BALANCE = ' + CurrToStrF(FieldByName('BALANCE').AsFloat + cAmount, ffFixed, 15);
          sAddChart := FieldByName('ADDTO').AsString;
          Close;
          SQL.Text := sSQL + sSQLWhere;
          ParamByName('BANK').AsString := sEntity;
          ParamByName('CODE').AsString := sAddChart;
          ExecSQL;
          Close;
        end;
      end
    until (sAddChart = '');
    dmAxiom.qryCharts.Close;
  end;
end;


function Initials(sText: string; sSeperator: string): string;
var
  iCtr: integer;
  sCh: string;
  sInitials: string;
begin
  sInitials := '';
  sCh := ' ';
  for iCtr := 0 to Length(sText) do
  begin
    if sCh = ' ' then
      sInitials := sInitials + Copy(sText, iCtr, 1) + sSeperator;
    sCh := Copy(sText, iCtr, 1);
  end;
  Initials := sInitials;
end;


function InvoiceDate(iInvoice: integer; sField: string): TDateTIme;
begin
  with dmAxiom.qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT ' + sField + ' FROM NMEMO WHERE NMEMO = :NMEMO';
    Params[0].AsInteger := iInvoice;
    Open;
    if not IsEmpty then
      Result := FieldByName(sField).AsDateTime
    else
      Result := Null;
  end;
end;

function GetSQLObject(aReport: TppReport; var aSQL: TdaSQL; CompNo: integer): Boolean;
var
   lDataView: TdaDataView;
   lDataModule: TdaDataModule;
begin
   aSQL := nil;

   {get the datamodule}
   lDataModule := daGetDataModule(aReport);

   if (lDataModule <> nil) then
   begin
      lDataView := lDataModule.DataViews[CompNo];

      if (lDataView <> nil) and (lDataView is TdaQueryDataView) then
         aSQL := TdaQueryDataView(lDataView).SQL;
    end;
  Result := (aSQL <> nil);
end;

procedure InvoiceMerge(iInvoice: integer; nMatter: Integer; PrintPDFBill: Boolean = False;
                       PrintBill: Boolean = False; CreditNote: boolean = False; QuotingTemplate: boolean = False;
                       Template: string = ''; EmailBill: boolean = False  );
var
   hWpDatFile: Integer;
   varWord, varDoc, varWP: Variant;
   sWordProc, sInvoice, sDirectory,
   LTemplate, RandFile, tmpFileName,
   RefNo, RptPath, RptParam, AddParamList,
   sUserName, sPassword,
   ANewDocName, AParsedDocName, ASubject, AParsedDir,
   sFileName, lsDraftPrinter, lsFinalPrinter,
   LTemplateCode, ClientName, AuthorEmail,
   sAuthor: string;
   iCtr, i: integer;
   cTotalTax: currency;
   dTmp: double;
   szField: array [0..255] of char;
   szFile: array[0..255] of char;
   strFieldNames, strFieldValues: TStringList;
   regAxiom: TRegistry;
   slImport, slEmailBody: TStringList;

   BillEmail: TppEmail;
   iPos: integer;
   bStream, fStream: TStream;

   procedure AddToList(FieldName, FieldValue: string);
   begin
      if strFieldNames.Count = 0 then
         strFieldNames.Add(FieldName)
      else
         strFieldNames.Add(';'+FieldName);
      strFieldValues.Add(StringReplace(FieldValue, #13#10, '<br>', [rfReplaceAll]));
   end;

begin
   sWordProc := SystemString('WORDPROC');
   dmAxiom.qryInvoice.Close;
   if (CreditNote = True) then
      dmAxiom.qryInvoice.SQL.Text := 'SELECT nvl(BILLTEMPLATE,( select Max(code) from billtemplate where credit_note = ''Y'' )) BILLTEMPLATE,' +
                                  'NCLIENT,DRAFT_BILL_NO,NMEMO, '+
                                  'FILEID, INVOICE_COPY, INVOICE_COPY_EXT, NMATTER, '+
                                  'refno, IS_DRAFT, rowid  FROM NMEMO WHERE NMEMO = :NMEMO'
   else if (QuotingTemplate = True) then
      dmAxiom.qryInvoice.SQL.Text := 'SELECT NCLIENT, FILEID, NMATTER, ''DRAFT'' as refno, '+
                                  'rowid  FROM matter WHERE nmatter = :nmatter'
   else
      dmAxiom.qryInvoice.SQL.Text := 'SELECT BILLTEMPLATE,' +
                                  'NCLIENT,DRAFT_BILL_NO,NMEMO, '+
                                  'FILEID, INVOICE_COPY, INVOICE_COPY_EXT, NMATTER, '+
                                  'refno, IS_DRAFT, rowid  FROM NMEMO WHERE NMEMO = :NMEMO';

   if (QuotingTemplate = True) then
      dmAxiom.qryInvoice.Params[0].AsInteger := nMatter
   else
      dmAxiom.qryInvoice.Params[0].AsInteger := iInvoice;
   dmAxiom.qryInvoice.Open;

   if Template = '' then
   begin
      LTemplate := BillTemplate(dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString);
      LTemplateCode := dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString;
   end
   else
      LTemplateCode := Template;

   if BillTemplateType(LTemplateCode) = 'L' then
   //
   // LEDES format bill
   begin
      with dmAxiom.qryInvoice do
      begin
          Close;
          SQL.Text := 'SELECT * FROM NMEMO, FEE WHERE NMEMO.NMEMO = :NMEMO and NMEMO.NMEMO = FEE.NMEMO';
          ParamByName('NMEMO').AsInteger := iInvoice;
          Open;
          if TableString('BILLTEMPLATE', 'CODE', dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString, 'LEDES_TEMPLATE_FORMAT') = '1998BI' then
          begin
             try
                frmLEDES1998BI := TfrmLEDES1998BI.Create(nil);
                frmLEDES1998BI.NMemo := dmAxiom.qryInvoice.FieldByName('NMEMO').AsInteger;
                frmLEDES1998BI.Open_File;
                frmLEDES1998BI.progressBar.Properties.Min := 0;
                frmLEDES1998BI.progressBar.Properties.Max := 100;
                frmLEDES1998BI.Create_File;
             finally
                frmLEDES1998BI.Free;
                MsgInfo('LEDES 1998BI File created.');
             end;
          end
          else
          if TableString('BILLTEMPLATE', 'CODE', dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString, 'LEDES_TEMPLATE_FORMAT') = '1998B' then
          begin
             try
                frmLEDES1998B := TfrmLEDES1998B.Create(nil);
                frmLEDES1998B.NMemo := dmAxiom.qryInvoice.FieldByName('NMEMO').AsInteger;
                frmLEDES1998B.Open_File;
                frmLEDES1998B.progressBar.Properties.Min := 0;
                frmLEDES1998B.progressBar.Properties.Max := 100;
                frmLEDES1998B.Create_File;
             finally
                frmLEDES1998B.Free;
                MsgInfo('LEDES File created.');
             end;
          end;
      end;
   end
   else
   if BillTemplateType(LTemplateCode) = 'A' then
   begin
      try
         if not dmAxiom.qryInvoice.Eof then
         begin
            if(LTemplate <> '') then
            begin
//               ppUnregisterDevice(TppPDFDevice);
               if ExtractFilePath(LTemplate) = '' then
                  LTemplate := TableString('BILLTEMPLATE', 'CODE', LTemplateCode, 'PATH');
               if(not Assigned(dmBillTemplate)) then
                  dmBillTemplate := TdmBillTemplate.Create(Application);

               dmBillTemplate.BillTemplate := LTemplateCode;   //LTemplate;
               dmBillTemplate.InvoiceCreate.Clear;
               dmBillTemplate.InvoiceCreate.Add(inttostr(iInvoice));
               dmBillTemplate.InvoiceCreate.Add(inttostr(Nmatter));
               dmBillTemplate.InvoiceCreate.Add(inttostr(dmAxiom.qryInvoice.FieldByName('NCLIENT').AsInteger));
               dmBillTemplate.BillPrint.Template.FileName := LTemplate; //TableString('BILLTEMPLATE', 'CODE', LTemplate, 'PATH');
               dmBillTemplate.BillPrint.Template.LoadFromFile;
               dmBillTemplate.BillPrint.BeforePrint := dmBillTemplate.BillPrintBeforePrint;
               dmBillTemplate.BillPrint.OnPreviewFormCreate := dmBillTemplate.BillPrintPreviewFormCreate;

               if EmailBill then
               begin
                  // email bill
                  try
                     slImport := TStringList.Create;
                     slEmailBody := TStringList.Create;
                     slEmailBody.Add('Please find attached bill '+ RefNo + ' for your attention');
                     RefNo := TableString('NMEMO','NMEMO', iInvoice, 'REFNO');
                     sAuthor := MatterString(Nmatter, 'AUTHOR');
                     AuthorEmail := TableString('EMPLOYEE','CODE', sAuthor, 'EMAIL');;
                     slImport.Add(dmAxiom.User_Email);
                     slImport.Add(AuthorEmail);
                     dmBillTemplate.BillPrint.EmailSettings.Recipients := slImport;
                     dmBillTemplate.BillPrint.EmailSettings.Subject := 'Bill ' + LTemplate;
                     dmBillTemplate.BillPrint.EmailSettings.BodyRtf := slEmailBody;
                     dmBillTemplate.BillPrint.EmailSettings.FromAddress := SystemString('from_email');
                     try
                        BillEmail := TppEmail.Create;
                        BillEmail.AddReport(dmBillTemplate.BillPrint);
                        BillEmail.Send;
                     finally
                        BillEmail.Free;
                     end;
                  finally
                     slImport.Free;
                     slEmailBody.Free;
                  end;
               end;

               if (PrintPDFBill) then
               begin
                  if QuotingTemplate = True then
                     ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\Invoice_' +
                                                 dmAxiom.qryInvoice.FieldByName('FILEID').AsString + '.pdf'

                  else
                     ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\Invoice_' +
                                                 dmAxiom.qryInvoice.FieldByName('DRAFT_BILL_NO').AsString + '.pdf';

                  AParsedDocName := ParseMacros(ANewDocName, TableInteger('MATTER','FILEID',dmAxiom.qryInvoice.FieldByName('FILEID').AsString,'NMATTER'));
                  AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
                  // check directory exists, if not create it
                  if not DirectoryExists(AParsedDir) then
                     ForceDirectories(AParsedDir);

                  dmBillTemplate.BillPrint.AllowPrintToFile := True;
                  dmBillTemplate.BillPrint.ShowPrintDialog := False;
                  dmBillTemplate.BillPrint.DeviceType := dtPDF;
                  dmBillTemplate.BillPrint.PDFSettings.OpenPDFFile := False;
                  dmBillTemplate.BillPrint.TextFileName := AParsedDocName;
                  if QuotingTemplate = True then
                     dmBillTemplate.BillPrint.PDFSettings.OpenPDFFile := True;

                  try
                     dmBillTemplate.BillPrint.Print;
                  finally
                     If CreditNote = True Then
                        SaveBill('Credit# '+ dmAxiom.qryInvoice.FieldByName('REFNO').AsString,
                                           dmAxiom.UserID, AParsedDocName,'Generated Credit',
                                           dmAxiom.qryInvoice.FieldByName('FILEID').AsString,'','','', iInvoice )
                     Else
                     if QuotingTemplate = True then
                        SaveBill('Quote# ',dmAxiom.UserID, AParsedDocName,'Generated Quote',
                                           dmAxiom.qryInvoice.FieldByName('FILEID').AsString,'','','', iInvoice )
                     else
                        SaveBill('Bill# '+ dmAxiom.qryInvoice.FieldByName('DRAFT_BILL_NO').AsString,
                                           dmAxiom.UserID, AParsedDocName,'Generated Bill',
                                           dmAxiom.qryInvoice.FieldByName('FILEID').AsString,'','','', iInvoice );
                  end;
               end
               else
               begin
                  If (PrintBill) then
                  begin
                     try
                        lsDraftPrinter := TableString('BillTemplate', 'code', LTemplate, 'draft_printer_path');
                        lsFinalPrinter := TableString('BillTemplate', 'code', LTemplate, 'final_printer_path');
                        if (dmAxiom.qryInvoice.FieldByName('IS_DRAFT').AsString = 'Y') and
                           (lsDraftPrinter <> '') then
                        begin
                            dmBillTemplate.BillPrint.PrinterSetup.PrinterName := lsDraftPrinter;
                        end
                        else
                        if (dmAxiom.qryInvoice.FieldByName('IS_DRAFT').AsString = 'N') and
                           (lsFinalPrinter <> '') then
                        begin
                            dmBillTemplate.BillPrint.PrinterSetup.PrinterName := lsFinalPrinter;
                        end;
                     finally
                        dmBillTemplate.BillPrint.ShowPrintDialog := False;
                        dmBillTemplate.BillPrint.DeviceType := dtPrinter;
                     end;
                  end
                  else
                  begin
                     lsDraftPrinter := TableString('BillTemplate', 'code', LTemplate, 'draft_printer_path');
                     lsFinalPrinter := TableString('BillTemplate', 'code', LTemplate, 'final_printer_path');
                     if (dmAxiom.qryInvoice.FieldByName('IS_DRAFT').AsString = 'Y') and
                        (lsDraftPrinter <> '') then
                     begin
                         dmBillTemplate.BillPrint.PrinterSetup.PrinterName := lsDraftPrinter;
                     end
                     else
                     if (dmAxiom.qryInvoice.FieldByName('IS_DRAFT').AsString = 'N') and
                        (lsFinalPrinter <> '') then
                     begin
                         dmBillTemplate.BillPrint.PrinterSetup.PrinterName := lsFinalPrinter;
                     end;
                     dmBillTemplate.BillPrint.DeviceType := dtScreen;
                  end;
                  dmBillTemplate.BillPrint.Print;
               end;
            end;
         end;
      except
         on E: Exception do
            MsgErr('Error occured merging bill'#13#13 + E.Message);
      end;
   end
   else if BillTemplateType(LTemplateCode) = 'C' then
   begin
      try
         if not dmAxiom.qryInvoice.Eof then
         begin
            LTemplate := BillTemplate(LTemplateCode);
            if(LTemplate <> '') then
            begin
               // call to crystal reader
               if (SystemString('PREASSIGN_BILL_NO') = 'Y') and
                  (SystemString('USE_AXIOM_CR_VIEWER') = 'N') then
                  RefNo := dmAxiom.qryInvoice.FieldByName('DRAFT_BILL_NO').AsString
               else
                  RefNo := dmAxiom.qryInvoice.FieldByName('NMEMO').AsString;

               RptPath := SystemString('CRYSTAL_VIEWER_PATH');
               AddParamList := TableString('BILLTEMPLATE','CODE',dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString,'PARAM_LIST');
               if Pos('CML.EXE',UpperCase(RptPath)) > 0 then
                  RptParam := LTemplate + ' ' + '/L1 axiom,,axiom,CZKMO' + ' '+ '/P1 '+ RefNo
               else
               begin
                  regAxiom := TRegistry.Create;
                  regAxiom.RootKey := HKEY_CURRENT_USER;
                  if regAxiom.OpenKey(dmAxiom.RegistryRoot+'\Database', False) then
                  begin
                     sUserName := regAxiom.ReadString('User Name');
                     sPassword := regAxiom.ReadString('Password');
                  end;
                  RptParam := ' -v ' + '"'+LTemplate+'"' + ' "user_id:'+ sUserName + '" "password:' + sPassword + '" "Parm1:'+ RefNo+'"';
                  regAxiom.Free;
               end;
               if AddParamList <> '' then
                  RptParam := RptParam + ' ' + AddParamList;

      //         if TableString('BILLTEMPLATE','CODE',dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString,'USE_AXIOM_CR_VIEWER') = 'Y' then
              { if SystemString('USE_AXIOM_CR_VIEWER') = 'Y' then
               begin
                  slImport := TStringList.Create;
//                  if not FormExists(frmCR_Viewer) then
//                     frmCR_Viewer := TfrmCR_Viewer.Create(Application);

//                  with frmCR_Viewer.Crpe1 do
//                  begin
                  with dmAxiom.Crpe1 do
                  begin
                     CloseJob;
                     ReportName := LTemplate;
                     Connect.ServerName := dmAxiom.InstanceName;
                     Connect.UserID := dmAxiom.LoginName;
                     Connect.Password := dmAxiom.UserPassword;
                     LogOnServer.Item.DLLName := 'crdb_oracle.dll';
                     if Connect.Test then
                     begin
                        try
                           ParamFields.Items[0].CurrentValue := RefNo;
                           Split(AddParamList,',',slImport);
                           for i := 1 to slimport.Count do
                              try
                                 ParamFields.Items[i].CurrentValue := slImport[i - 1];
                              except

                              end;
                        except
                          On E:Exception do
                           MsgErr('An Error occurred attempting to initialise bill template ' + '".'#13 + E.Message);
                        end;
                        if (PrintBill) then
                        begin
                           ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\Invoice-' + RefNo + '.pdf';
                           AParsedDocName := ParseMacros(ANewDocName, TableInteger('MATTER','FILEID',dmAxiom.qryInvoice.FieldByName('FILEID').AsString,'NMATTER'));
                           AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
                           // check directory exists, if not create it
                           if not DirectoryExists(AParsedDir) then
                              ForceDirectories(AParsedDir);

                           ExportOptions.FileType := AdobeAcrobatPDF;
                           ExportOptions.FileName := AParsedDocName;
                           ExportOptions.Destination := toFile;

                           if Export then
                           begin
                              try
                                dmAxiom.qryInvoice.Edit;
                                dmAxiom.qryInvoice.fieldByname('invoice_copy').Clear;
                              // check the document
                                dmAxiom.qryInvoice.FieldByName('INVOICE_COPY_EXT').AsString := 'PDF';
                                bStream := dmAxiom.qryInvoice.CreateBlobStream(dmAxiom.qryInvoice.FieldByName('INVOICE_COPY') , bmReadWrite);
                                fStream := TFileStream.Create(AParsedDocName, fmOpenRead);
                                bStream.CopyFrom(fStream, fStream.Size);
                                dmAxiom.qryInvoice.post;
                              finally
                                bStream.Free;
                                fStream.Free;
                              end;
                    //          SaveBill('Bill# '+refno,dmAxiom.UserID,AParsedDocName,'Generated Bill',dmAxiom.qryInvoice.FieldByName('NMATTER').AsString,'','','');
                           end;
                        end
                        else
                           Show;
                     end
                     else
                        MsgErr('Error Connecting to Database.');
                  end;
                  slImport.Free;
               end
               else}
                  ShellExecute(0, 'open', PChar(RptPath),PChar(RptParam),'', SW_SHOWNORMAL);

         {      if SystemString('PREASSIGN_BILL_NO') = 'Y' then
                  RefNo := dmAxiom.qryInvoice.FieldByName('DRAFT_BILL_NO').AsString
               else
                  RefNo := dmAxiom.qryInvoice.FieldByName('NMEMO').AsString;
               RptPath := SystemString('CRYSTAL_VIEWER_PATH');  //'c:\cml\cml.exe';
               AddParamList := TableString('BILLTEMPLATE','CODE',dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString,'PARAM_LIST');
               RptParam := LTemplate + ' ' + '/L1 Axiom,,axiom,CZKMO' +' '+ '/P1 '+ RefNo;
               if AddParamList <> '' then
                  RptParam := RptParam + ' ' + AddParamList;
               ShellExecute(0, 'open', PChar(RptPath),PChar(RptParam),'', SW_SHOWNORMAL); }
            end;
         end;
      except
         on E: Exception do
            MsgErr('Error occured merging bill'#13#13 + E.Message);
      end;
   end
   // this is for Hotdocs
   else if BillTemplateType(LTemplateCode) = 'H' then
   begin
      try


      except
         //
      end;
   end
   else
   begin
      if sWordProc = 'WORD97' then
      begin
        // Open Word and send data to it
        dmAxiom.qryInvoice.Close;
        dmAxiom.qryInvoice.SQL.Text := 'SELECT * FROM NMEMO WHERE NMEMO = :NMEMO';
        dmAxiom.qryInvoice.Params[0].AsInteger := iInvoice;
        dmAxiom.qryInvoice.Open;
        try
          if not dmAxiom.qryInvoice.Eof then
          begin
            LTemplate := BillTemplate(dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString);
            if(LTemplate <> '') then
            begin
              try
                varWord := GetActiveOleObject('Word.Application');
              except
                on EOleSysError do
                  try
                    varWord := CreateOleObject('Word.Application');
                  except
                    varWord := null;
                  end;
              end;
              if not VarIsNull(varWord) then
              begin
                varWord.Visible := True;
                try
                  varDoc := varWord.Documents.Add(LTemplate);
                  if not VarIsNull(varDoc) then
                  begin
                    try
                      //showmessage('fileid =' + FieldByName('FILEID').AsString + ' nmemo=' + InttoStr(FieldByName('NMEMO').AsInteger));
                      //varDoc.File_Merge({FieldByName('FILEID').AsString,} '', FieldByName('NMEMO').AsInteger);
                       varDoc.File_Merge(dmAxiom.qryInvoice.FieldByName('FILEID').AsString, dmAxiom.qryInvoice.FieldByName('NMEMO').AsString);
                      //varDoc.WordBasic.SetFormResult('TOTAL');
                    except
                      MsgErr('Could not perform merge to "' + LTemplate + '"');
                    end;
                  end else
                    MessageDlg('Word had a problem opening bill template ''' + LTemplate + ''' please seek assistance!', mtError, [mbOK], 0);
                except
                  On E:Exception do
                    MsgErr('Error opening bill template "' + LTemplate + '".'#13 + E.Message);
                end;
              end else
                MessageDlg('Could not open Word to merge with!!', mtError, [mbOK], 0);

              varWord := null;
              varDoc := null;
            end else
              MessageDlg('No bill template to merge!!', mtError, [mbOK], 0);
          end;
        finally
          dmAxiom.qryInvoice.Close;
        end;
      end
      else if sWordProc = 'WORDPERFECT8' then
      begin
        with dmAxiom.qryInvoice do
        begin
          Close;
          SQL.Text := 'SELECT * FROM NMEMO WHERE NMEMO = :NMEMO';
          Params[0].AsInteger := iInvoice;
          Open;
          strFieldNames := TStringList.Create;
          strFieldValues := TStringList.Create;
          if not IsEmpty then
          begin
            // Create the merge files
            try
              if SetupWPFormat then
              begin
                // Set up the merge data file, where we tell WordPerfect what files to use
                sDirectory := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WPDIR');
                sInvoice := Copy('00000' + FieldByName('NMEMO').AsString, Length('00000' + FieldByName('NMEMO').AsString) - 5, 6);
                StrPCopy(szFile, sDirectory + sInvoice + 'BillMerge.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                StrPCopy(szField, sDirectory + sInvoice + 'Bill.dat');
                MRGAddField(hWpDatFile, szField);
                StrPCopy(szField, sDirectory + sInvoice + 'Fees.dat');
                MRGAddField(hWpDatFile, szField);
                StrPCopy(szField, sDirectory + sInvoice + 'Disb.dat');
                MRGAddField(hWpDatFile, szField);
                StrPCopy(szField, sDirectory + sInvoice + 'AntD.dat');
                MRGAddField(hWpDatFile, szField);
                StrPCopy(szField, sDirectory + sInvoice + 'Sund.dat');
                MRGAddField(hWpDatFile, szField);
                StrPCopy(szField, sDirectory + sInvoice + 'SSum.dat');
                MRGAddField(hWpDatFile, szField);
                StrPCopy(szField, sDirectory + sInvoice + 'Keys.dat');
                MRGAddField(hWpDatFile, szField);
                StrPCopy(szField, sDirectory + sInvoice + 'FSum.dat');
                MRGAddField(hWpDatFile, szField);
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);

                // Setup the WordPerfect Bill data file information
                AddToList('REFNO', FieldByName('REFNO').AsString);
                AddToList('GENERATED', FormatDateTime('ddddd', FieldByName('GENERATED').AsDateTime));
                if FieldByName('DISPATCHED').Value = Null then
                  AddToList('DISPATCHED', '')
                else
                  AddToList('DISPATCHED', FormatDateTime('ddddd', FieldByName('DISPATCHED').AsDateTime));
                if FieldByName('EXPPAYMENT').Value = Null then
                  AddToList('EXPPAYMENT', '')
                else
                  AddToList('EXPPAYMENT', FormatDateTime('ddddd', FieldByName('EXPPAYMENT').AsDateTime));
                if FieldByName('INTERIM').Value = Null then
                  AddToList('INTERIM', '')
                else
                  AddToList('INTERIM', FormatDateTime('ddddd', FieldByName('INTERIM').AsDateTime));
                AddToList('TOTALBILL', Format('%f', [FieldByName('FEES').AsFloat + FieldByName('DISB').AsFloat + FieldByName('ANTD').AsFloat + FieldByName('SUND').AsFloat]));
                AddToList('FEESBILL', Format('%f', [FieldByName('FEES').AsFloat]));
                AddToList('DISBBILL', Format('%f', [FieldByName('DISB').AsFloat]));
                AddToList('ANTDBILL', Format('%f', [FieldByName('ANTD').AsFloat]));
                AddToList('SUNDBILL', Format('%f', [FieldByName('SUND').AsFloat]));
                AddToList('TRUST', Format('%f', [FieldByName('TRUST').AsFloat]));
                AddToList('FEESPAID', Format('%f', [FieldByName('FEES_PAID').AsFloat]));
                AddToList('DISBPAID', Format('%f', [FieldByName('DISB_PAID').AsFloat]));
                AddToList('SUNDPAID', Format('%f', [FieldByName('SUND_PAID').AsFloat]));
                AddToList('TOTALPAID', Format('%f', [FieldByName('FEES').AsFloat + FieldByName('DISB').AsFloat + FieldByName('ANTD').AsFloat + FieldByName('SUND').AsFloat - FieldByName('FEES_PAID').AsFloat - FieldByName('DISB_PAID').AsFloat - FieldByName('SUND_PAID').AsFloat]));
                AddToList('DEBTORS', Format('%f', [FieldByName('DEBTORS').AsFloat]));

                // Add billing individual totals
                dmAxiom.qryFee.Close;
                dmAxiom.qryFee.SQL.Clear;
                dmAxiom.qryFee.SQL.Add('SELECT SUM(AMOUNT) AS FEESTOTAL, SUM(TAX) AS FEESTAX');
                dmAxiom.qryFee.SQL.Add('FROM FEE');
                dmAxiom.qryFee.SQL.Add('WHERE NMATTER = :NMATTER');
                dmAxiom.qryFee.SQL.Add('  AND NMEMO = :NMEMO');
                dmAxiom.qryFee.SQL.Add('ORDER BY CREATED');
                dmAxiom.qryFee.ParamByName('NMATTER').AsInteger := FieldByName('NMATTER').AsInteger;
                dmAxiom.qryFee.ParamByName('NMEMO').AsInteger := FieldByName('NMEMO').AsInteger;
                dmAxiom.qryFee.Open;
                AddToList('FEESTOTAL', Format('%f', [dmAxiom.qryFee.FieldByName('FEESTOTAL').AsFloat]));
                dTmp := FieldByName('FEES').AsCurrency - dmAxiom.qryFee.FieldByName('FEESTOTAL').AsFloat;
                if dTmp <> 0 then
                  dTmp := TaxCalc(dTmp, '', dmAxiom.DefaultTax, Now);
                AddToList('FEESTAX', Format('%f', [dmAxiom.qryFee.FieldByName('FEESTAX').AsFloat + dTmp]));
                cTotalTax := dmAxiom.qryFee.FieldByName('FEESTAX').AsFloat + dTmp;
                dmAxiom.qryFee.Close;

                dmAxiom.qrySundry.Close;
                dmAxiom.qrySundry.SQL.Clear;
                dmAxiom.qrySundry.SQL.Add('SELECT SUM(AMOUNT) AS SUNDTOTAL, SUM(TAX) AS SUNDTAX');
                dmAxiom.qrySundry.SQL.Add('FROM SUNDRY');
                dmAxiom.qrySundry.SQL.Add('WHERE NMATTER = :NMATTER');
                dmAxiom.qrySundry.SQL.Add('  AND NMEMO = :NMEMO');
                dmAxiom.qrySundry.SQL.Add('ORDER BY CREATED');
                dmAxiom.qrySundry.ParamByName('NMATTER').AsInteger := FieldByName('NMATTER').AsInteger;
                dmAxiom.qrySundry.ParamByName('NMEMO').AsInteger := FieldByName('NMEMO').AsInteger;
                dmAxiom.qrySundry.Open;
                AddToList('SUNDTOTAL', Format('%f', [dmAxiom.qrySundry.FieldByName('SUNDTOTAL').AsFloat]));
                dTmp := FieldByName('SUND').AsCurrency - dmAxiom.qrySundry.FieldByName('SUNDTOTAL').AsFloat;

                if dTmp <> 0 then
                  dTmp := TaxCalc(dTmp, '', dmAxiom.DefaultTax, Now);
                AddToList('SUNDTAX', Format('%f', [dmAxiom.qrySundry.FieldByName('SUNDTAX').AsFloat + dTmp]));
                cTotalTax := cTotalTax + dmAxiom.qrySundry.FieldByName('SUNDTAX').AsFloat + dTmp;
                dmAxiom.qrySundry.Close;

                dmAxiom.qryAllocs.Close;
                dmAxiom.qryAllocs.SQL.Clear;
                dmAxiom.qryAllocs.SQL.Add('SELECT SUM(AMOUNT) AS DISBTOTAL, SUM(TAX) AS DISBTAX');
                dmAxiom.qryAllocs.SQL.Add('FROM ALLOC');
                dmAxiom.qryAllocs.SQL.Add('WHERE NMATTER = :NMATTER');
                dmAxiom.qryAllocs.SQL.Add('  AND NMEMO = :NMEMO');
                dmAxiom.qryAllocs.SQL.Add('ORDER BY CREATED');
                dmAxiom.qryAllocs.ParamByName('NMATTER').AsInteger := FieldByName('NMATTER').AsInteger;
                dmAxiom.qryAllocs.ParamByName('NMEMO').AsInteger := FieldByName('NMEMO').AsInteger;
                dmAxiom.qryAllocs.Open;
                AddToList('DISBTOTAL', Format('%f', [0 - dmAxiom.qryAllocs.FieldByName('DISBTOTAL').AsFloat]));
                AddToList('DISBTAX', Format('%f', [0 - dmAxiom.qryAllocs.FieldByName('DISBTAX').AsFloat]));
                cTotalTax := cTotalTax - dmAxiom.qryAllocs.FieldByName('DISBTAX').AsFloat;
                dmAxiom.qryAllocs.Close;

                dmAxiom.qryTmp.Close;
                dmAxiom.qryTmp.SQL.Clear;
                dmAxiom.qryTmp.SQL.Add('SELECT SUM(AMOUNT) AS ANTDTOTAL, SUM(TAX) AS ANTDTAX');
                dmAxiom.qryTmp.SQL.Add('FROM CHEQREQ');
                dmAxiom.qryTmp.SQL.Add('WHERE FILEID = :FILEID');
                dmAxiom.qryTmp.SQL.Add('  AND NMEMO = :NMEMO');
                dmAxiom.qryTmp.SQL.Add('ORDER BY REQDATE');
                dmAxiom.qryTmp.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
                dmAxiom.qryTmp.ParamByName('NMEMO').AsInteger := FieldByName('NMEMO').AsInteger;
                dmAxiom.qryTmp.Open;
                AddToList('ANTDTOTAL', Format('%f', [dmAxiom.qryTmp.FieldByName('ANTDTOTAL').AsFloat]));
                AddToList('ANTDTAX', Format('%f', [dmAxiom.qryTmp.FieldByName('ANTDTAX').AsFloat]));
                cTotalTax := cTotalTax + dmAxiom.qryTmp.FieldByName('ANTDTAX').AsFloat;
                dmAxiom.qryTmp.Close;

                AddToList('TAXTOTAL', Format('%f', [cTotalTax]));
                AddToList('GRANDTOTAL', Format('%f', [FieldByName('FEES').AsFloat + FieldByName('DISB').AsFloat + FieldByName('ANTD').AsFloat + FieldByName('SUND').AsFloat + cTotalTax]));

                dmAxiom.qryMatters.Close;
                dmAxiom.qryMatters.SQL.Text := 'SELECT * FROM MATTER WHERE FILEID = :FILEID';
                dmAxiom.qryMatters.Params[0].AsString := FieldByName('FILEID').AsString;
                dmAxiom.qryMatters.Open;
                if not dmAxiom.qryMatters.IsEmpty then
                begin
                  AddToList('FILEID', dmAxiom.qryMatters.FieldByName('FILEID').AsString);
                  AddToList('OPREF', dmAxiom.qryMatters.FieldByName('OPREF').AsString);
                  AddToList('PARTNER', dmAxiom.qryMatters.FieldByName('PARTNER').AsString);
                  AddToList('PARTNERNAME', TableString('EMPLOYEE', 'CODE', dmAxiom.qryMatters.FieldByName('PARTNER').AsString, 'NAME'));
                  AddToList('CONTROLLER', dmAxiom.qryMatters.FieldByName('CONTROLLER').AsString);
                  AddToList('CONTROLLERNAME', TableString('EMPLOYEE', 'CODE', dmAxiom.qryMatters.FieldByName('CONTROLLER').AsString, 'NAME'));
                  AddToList('AUTHOR', dmAxiom.qryMatters.FieldByName('AUTHOR').AsString);
                  AddToList('AUTHORNAME', TableString('EMPLOYEE', 'CODE', dmAxiom.qryMatters.FieldByName('AUTHOR').AsString, 'NAME'));
                  AddToList('TITLE', dmAxiom.qryMatters.FieldByName('TITLE').AsString);
                  AddToList('TYPE', dmAxiom.qryMatters.FieldByName('TYPE').AsString);
                  AddToList('TYPEDESC', TypeString(dmAxiom.qryMatters.FieldByName('TYPE').AsString, 'DESCR'));
                  AddToList('SHORTDESC', dmAxiom.qryMatters.FieldByName('SHORTDESCR').AsString);
                  AddToList('LONGDESC', dmAxiom.qryMatters.FieldByName('LONGDESCR').AsString);
                  AddToList('CONTACT', dmAxiom.qryMatters.FieldByName('CONTACT').AsString);
                  AddToList('CLIENTTAXNO', TableString('CLIENT', 'NCLIENT', dmAxiom.qryMatters.FieldByName('NCLIENT').AsInteger, 'TAXNO'));
                  AddToList('FEESESTIMATE', Format('%f', [dmAxiom.qryMatters.FieldByName('EXPECTED_VALUE').AsFloat]));
                  AddToList('FEESBILLED', Format('%f', [dmAxiom.qryMatters.FieldByName('BILL_FEES').AsFloat]));
                  AddToList('FEESREMAINING', Format('%f', [dmAxiom.qryMatters.FieldByName('EXPECTED_VALUE').AsFloat - dmAxiom.qryMatters.FieldByName('BILL_FEES').AsFloat]));
                  AddToList('WIP', Format('%f', [dmAxiom.qryMatters.FieldByName('UNBILL_FEES').AsFloat]));
                end;

                dmAxiom.qryNames.Close;
                dmAxiom.qryNames.SQL.Text := 'SELECT * FROM PHONEBOOK WHERE SEARCH = :SEARCH';
                dmAxiom.qryNames.Params[0].AsString := dmAxiom.qryMatters.FieldByName('TITLE').AsString;
                dmAxiom.qryNames.Open;

                if not dmAxiom.qryNames.IsEmpty then
                begin
                  AddToList('TSEARCH', dmAxiom.qryNames.FieldByName('SEARCH').AsString);
                  AddToList('TNAME', dmAxiom.qryNames.FieldByName('NAME').AsString);
                  AddToList('TSHORTNAME', dmAxiom.qryNames.FieldByName('SHORTNAME').AsString);
                  AddToList('TLONGNAME', dmAxiom.qryNames.FieldByName('LONGNAME').AsString);
                  AddToList('TACN', dmAxiom.qryNames.FieldByName('ACN').AsString);
                  AddToList('TTITLE', dmAxiom.qryNames.FieldByName('TITLE').AsString);
                  AddToList('TOCCUPATION', dmAxiom.qryNames.FieldByName('OCCUPATION').AsString);
                  AddToList('TSALUTATION', dmAxiom.qryNames.FieldByName('SALUTATION').AsString);
                  AddToList('TWHICHADDRESS', dmAxiom.qryNames.FieldByName('WHICHADDRESS').AsString);
                  AddToList('TADDRESS', dmAxiom.qryNames.FieldByName('ADDRESS').AsString);
                  AddToList('TSUBURB', dmAxiom.qryNames.FieldByName('SUBURB').AsString);
                  AddToList('TSTATE', dmAxiom.qryNames.FieldByName('STATE').AsString);
                  AddToList('TPOSTCODE', dmAxiom.qryNames.FieldByName('POSTCODE').AsString);
                  AddToList('TCOUNTRY', dmAxiom.qryNames.FieldByName('COUNTRY').AsString);
                  AddToList('TPOSTALADDRESS', dmAxiom.qryNames.FieldByName('POSTALADDRESS').AsString);
                  AddToList('TPOSTALSUBURB', dmAxiom.qryNames.FieldByName('POSTALSUBURB').AsString);
                  AddToList('TPOSTALSTATE', dmAxiom.qryNames.FieldByName('POSTALSTATE').AsString);
                  AddToList('TPOSTALPOSTCODE', dmAxiom.qryNames.FieldByName('POSTALPOSTCODE').AsString);
                  AddToList('TPOSTALCOUNTRY', dmAxiom.qryNames.FieldByName('POSTALCOUNTRY').AsString);
                  AddToList('TDX', dmAxiom.qryNames.FieldByName('DX').AsString);
                  AddToList('TDXLOC', dmAxiom.qryNames.FieldByName('DXLOC').AsString);
                  AddToList('TWORKPHONE', dmAxiom.qryNames.FieldByName('WORKPHONE').AsString);
                  AddToList('TFAX', dmAxiom.qryNames.FieldByName('FAX').AsString);
                  AddToList('TEMAIL', dmAxiom.qryNames.FieldByName('EMAIL').AsString);
                end;

                dmAxiom.qryNames.Close;
                dmAxiom.qryNames.SQL.Text := 'SELECT * FROM PHONEBOOK WHERE SEARCH = :SEARCH';
                dmAxiom.qryNames.ParamByName('SEARCH').AsString := FieldByName('BILL_TO').AsString;
                dmAxiom.qryNames.Open;
                if dmAxiom.qryNames.IsEmpty then
                begin
                  dmAxiom.qryNames.Close;
                  dmAxiom.qryNames.SQL.Text := 'SELECT * FROM PHONEBOOK WHERE NCLIENT = :NCLIENT';
                  dmAxiom.qryNames.ParamByName('NCLIENT').AsInteger := FieldByName('NCLIENT').AsInteger;
                  dmAxiom.qryNames.Open;
                end;
                AddToList('BTSEARCH', dmAxiom.qryNames.FieldByName('SEARCH').AsString);
                AddToList('BTNAME', dmAxiom.qryNames.FieldByName('NAME').AsString);
                AddToList('BTSHORTNAME', dmAxiom.qryNames.FieldByName('SHORTNAME').AsString);
                AddToList('BTLONGNAME', dmAxiom.qryNames.FieldByName('LONGNAME').AsString);
                AddToList('BTACN', dmAxiom.qryNames.FieldByName('ACN').AsString);
                AddToList('BTTITLE', dmAxiom.qryNames.FieldByName('TITLE').AsString);
                AddToList('BTOCCUPATION', dmAxiom.qryNames.FieldByName('OCCUPATION').AsString);
                AddToList('BTSALUTATION', dmAxiom.qryNames.FieldByName('SALUTATION').AsString);
                AddToList('BTWHICHADDRESS', dmAxiom.qryNames.FieldByName('WHICHADDRESS').AsString);
                AddToList('BTADDRESS', dmAxiom.qryNames.FieldByName('ADDRESS').Text);
                AddToList('BTSUBURB', dmAxiom.qryNames.FieldByName('SUBURB').AsString);
                AddToList('BTSTATE', dmAxiom.qryNames.FieldByName('STATE').AsString);
                AddToList('BTPOSTCODE', dmAxiom.qryNames.FieldByName('POSTCODE').AsString);
                AddToList('BTCOUNTRY', dmAxiom.qryNames.FieldByName('COUNTRY').AsString);
                AddToList('BTPOSTALADDRESS', dmAxiom.qryNames.FieldByName('POSTALADDRESS').AsString);
                AddToList('BTPOSTALSUBURB', dmAxiom.qryNames.FieldByName('POSTALSUBURB').AsString);
                AddToList('BTPOSTALSTATE', dmAxiom.qryNames.FieldByName('POSTALSTATE').AsString);
                AddToList('BTPOSTALPOSTCODE', dmAxiom.qryNames.FieldByName('POSTALPOSTCODE').AsString);
                AddToList('BTPOSTALCOUNTRY', dmAxiom.qryNames.FieldByName('POSTALCOUNTRY').AsString);
                AddToList('BTDX', dmAxiom.qryNames.FieldByName('DX').AsString);
                AddToList('BTDXLOC', dmAxiom.qryNames.FieldByName('DXLOC').AsString);
                AddToList('BTWORKPHONE', dmAxiom.qryNames.FieldByName('WORKPHONE').AsString);
                AddToList('BTFAX', dmAxiom.qryNames.FieldByName('FAX').AsString);
                AddToList('BTEMAIL', dmAxiom.qryNames.FieldByName('EMAIL').AsString);
                dmAxiom.qryNames.Close;
                dmAxiom.qryMatters.Close;

                // Create the WordPerfect Bill data file
                StrPCopy(szFile, sDirectory + sInvoice + 'Bill.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                MRGCreateFieldNames(hWpDatFile, PChar(StringReplace(strFieldNames.Text, #13#10, '', [rfReplaceAll])), strFieldNames.Count);
                for iCtr := 0 to strFieldNames.Count-1 do
                begin
                  MRGAddField(hWpDatFile, PChar(strFieldValues.Strings[iCtr]));
                end;
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);
                strFieldNames.Clear;
                strFieldValues.Clear;

                // Output the fees
                StrPCopy(szFile, sDirectory + sInvoice + 'Fees.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                dmAxiom.qryFee.Close;
                dmAxiom.qryFee.SQL.Clear;
                dmAxiom.qryFee.SQL.Add('SELECT CREATED, AUTHOR, DESCR, UNITS, AMOUNT, TAXCODE, TAX');
                dmAxiom.qryFee.SQL.Add('FROM FEE WHERE NMATTER = :NMATTER');
                dmAxiom.qryFee.SQL.Add('  AND NMEMO = :NMEMO');
                dmAxiom.qryFee.SQL.Add('  AND TYPE <> ''ia''');
                dmAxiom.qryFee.SQL.Add('ORDER BY CREATED');
                dmAxiom.qryFee.ParamByName('NMATTER').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMATTER').AsInteger;
                dmAxiom.qryFee.ParamByName('NMEMO').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMEMO').AsInteger;
                dmAxiom.qryFee.Open;
                for iCtr := 0 to dmAxiom.qryFee.FieldCount - 1 do
                  AddToList(dmAxiom.qryFee.Fields[iCtr].DisplayName, '');
                MRGCreateFieldNames(hWpDatFile, PChar(StringReplace(strFieldNames.Text, #13#10, '', [rfReplaceAll])), strFieldNames.Count);
                while not dmAxiom.qryFee.EOF do
                begin
                  MRGAddField(hWpDatFile, PChar(FormatDateTime('ddddd', dmAxiom.qryFee.FieldByName('CREATED').AsDateTime)));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryFee.FieldByName('AUTHOR').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryFee.FieldByName('DESCR').AsString));
                  MRGAddField(hWpDatFile, PChar(Format('%d', [dmAxiom.qryFee.FieldByName('UNITS').AsInteger])));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qryFee.FieldByName('AMOUNT').AsFloat])));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryFee.FieldByName('TAXCODE').AsString));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qryFee.FieldByName('TAX').AsFloat])));
                  MRGEndRecord(hWpDatFile);
                  dmAxiom.qryFee.Next;
                end;
                for iCtr := 0 to dmAxiom.qryFee.FieldCount-2 do
                  MRGAddField(hWpDatFile, PChar(''));
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);
                dmAxiom.qryFee.Close;
                strFieldNames.Clear;
                strFieldValues.Clear;

                // Output the fee summary
                StrPCopy(szFile, sDirectory + sInvoice + 'FSum.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                dmAxiom.qryFee.Close;
                dmAxiom.qryFee.SQL.Clear;
                dmAxiom.qryFee.SQL.Add('SELECT F.AUTHOR, MAX(E.NAME) AS NAME, MAX(E.EXPERIENCE) AS EXPERIENCE, 0 AS RATE, SUM(F.AMOUNT) AS AMOUNT, SUM(F.UNITS) AS UNITS');
                dmAxiom.qryFee.SQL.Add('FROM FEE F, EMPLOYEE E');
                dmAxiom.qryFee.SQL.Add('WHERE F.NMATTER = :NMATTER');
                dmAxiom.qryFee.SQL.Add('  AND F.NMEMO = :NMEMO');
                dmAxiom.qryFee.SQL.Add('  AND E.CODE = F.AUTHOR');
                dmAxiom.qryFee.SQL.Add('  AND F.TYPE <> ''ia''');
                dmAxiom.qryFee.SQL.Add('GROUP BY AUTHOR');
                dmAxiom.qryFee.ParamByName('NMATTER').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMATTER').AsInteger;
                dmAxiom.qryFee.ParamByName('NMEMO').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMEMO').AsInteger;
                dmAxiom.qryFee.Open;
                for iCtr := 0 to dmAxiom.qryFee.FieldCount - 1 do
                  AddToList(dmAxiom.qryFee.Fields[iCtr].DisplayName, '');
                MRGCreateFieldNames(hWpDatFile, PChar(StringReplace(strFieldNames.Text, #13#10, '', [rfReplaceAll])), strFieldNames.Count);
                while not dmAxiom.qryFee.EOF do
                begin
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryFee.FieldByName('AUTHOR').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryFee.FieldByName('NAME').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryFee.FieldByName('EXPERIENCE').AsString));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [FeeRate('N', FieldByName('FILEID').AsString, dmAxiom.qryFee.FieldByName('AUTHOR').AsString, dmAxiom.qryFee.FieldByName('CREATED').AsDateTime)])));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qryFee.FieldByName('AMOUNT').AsFloat])));
                  MRGAddField(hWpDatFile, PChar(Format('%d', [dmAxiom.qryFee.FieldByName('UNITS').AsInteger])));
                  MRGEndRecord(hWpDatFile);
                  dmAxiom.qryFee.Next;
                end;
                for iCtr := 0 to dmAxiom.qryFee.FieldCount-1 do
                  MRGAddField(hWpDatFile, PChar(''));
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);
                dmAxiom.qryFee.Close;
                strFieldNames.Clear;
                strFieldValues.Clear;

                // Output the disbursements
                StrPCopy(szFile, sDirectory + sInvoice + 'Disb.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                dmAxiom.qryAllocs.Close;
                dmAxiom.qryAllocs.SQL.Clear;
                dmAxiom.qryAllocs.SQL.Add('SELECT CREATED, DESCR, (0-AMOUNT) AS AMOUNT, TAXCODE, (0-TAX) AS TAX');
                dmAxiom.qryAllocs.SQL.Add('FROM ALLOC');
                dmAxiom.qryAllocs.SQL.Add('WHERE NMATTER = :NMATTER');
                dmAxiom.qryAllocs.SQL.Add('  AND NMEMO = :NMEMO');
                dmAxiom.qryAllocs.SQL.Add('  AND (NRECEIPT = 0 OR (NRECEIPT > 0 AND TYPE = ''DR''))');
                dmAxiom.qryAllocs.SQL.Add('ORDER BY CREATED');
                dmAxiom.qryAllocs.ParamByName('NMATTER').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMATTER').AsInteger;
                dmAxiom.qryAllocs.ParamByName('NMEMO').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMEMO').AsInteger;
                dmAxiom.qryAllocs.Open;
                for iCtr := 0 to dmAxiom.qryAllocs.FieldCount-1 do
                  AddToList(dmAxiom.qryAllocs.Fields[iCtr].DisplayName, '');
                MRGCreateFieldNames(hWpDatFile, PChar(StringReplace(strFieldNames.Text, #13#10, '', [rfReplaceAll])), strFieldNames.Count);
                while not dmAxiom.qryAllocs.EOF do
                begin
                  MRGAddField(hWpDatFile, PChar(FormatDateTime('ddddd', dmAxiom.qryAllocs.FieldByName('CREATED').AsDateTime)));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryAllocs.FieldByName('DESCR').AsString));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qryAllocs.FieldByName('AMOUNT').AsFloat])));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryAllocs.FieldByName('TAXCODE').AsString));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qryAllocs.FieldByName('TAX').AsFloat])));
                  MRGEndRecord(hWpDatFile);
                  dmAxiom.qryAllocs.Next;
                end;
                for iCtr := 0 to dmAxiom.qryAllocs.FieldCount-2 do
                  MRGAddField(hWpDatFile, PChar(''));
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);
                dmAxiom.qryAllocs.Close;
                strFieldNames.Clear;
                strFieldValues.Clear;

                // Output the anticipated disbursements
                StrPCopy(szFile, sDirectory + sInvoice + 'AntD.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                dmAxiom.qryTmp.Close;
                dmAxiom.qryTmp.SQL.Clear;
                dmAxiom.qryTmp.SQL.Add('SELECT REQDATE, AUTHOR, DESCR, AMOUNT, TAX');
                dmAxiom.qryTmp.SQL.Add('FROM CHEQREQ');
                dmAxiom.qryTmp.SQL.Add('WHERE FILEID = :FILEID');
                dmAxiom.qryTmp.SQL.Add('  AND NMEMO = :NMEMO');
                dmAxiom.qryTmp.SQL.Add('ORDER BY REQDATE');
                dmAxiom.qryTmp.ParamByName('FILEID').AsString
                  := dmAxiom.qryInvoice.FieldByName('FILEID').AsString;
                dmAxiom.qryTmp.ParamByName('NMEMO').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMEMO').AsInteger;
                dmAxiom.qryTmp.Open;
                for iCtr := 0 to dmAxiom.qryTmp.FieldCount-1 do
                  AddToList(dmAxiom.qryTmp.Fields[iCtr].DisplayName, '');
                MRGCreateFieldNames(hWpDatFile, PChar(StringReplace(strFieldNames.Text, #13#10, '', [rfReplaceAll])), strFieldNames.Count);
                while not dmAxiom.qryTmp.EOF do
                begin
                  MRGAddField(hWpDatFile, PChar(FormatDateTime('ddddd', dmAxiom.qryTmp.FieldByName('REQDATE').AsDateTime)));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryTmp.FieldByName('AUTHOR').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryTmp.FieldByName('DESCR').AsString));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qryTmp.FieldByName('AMOUNT').AsFloat])));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qryTmp.FieldByName('TAX').AsFloat])));
                  MRGEndRecord(hWpDatFile);
                  dmAxiom.qryTmp.Next;
                end;
                for iCtr := 0 to dmAxiom.qryTmp.FieldCount-2 do
                  MRGAddField(hWpDatFile, PChar(''));
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);
                dmAxiom.qryTmp.Close;
                strFieldNames.Clear;
                strFieldValues.Clear;

                // Output the sundries
                StrPCopy(szFile, sDirectory + sInvoice + 'Sund.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                with dmAxiom.qrySundry do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT SUNDRY.CREATED AS CREATED, SUNDRY.DESCR AS DESCR,');
                  SQL.Add('  SUNDRY.TYPE AS TYPE, SUNDRYTYPE.DESCR AS TYPEDESCR, SUNDRY.UNITS AS UNITS,');
                  SQL.Add('  SUNDRY.PERUNIT AS PERUNIT, SUNDRY.AMOUNT AS AMOUNT, SUNDRY.TAXCODE AS TAXCODE, SUNDRY.TAX AS TAX');
                  SQL.Add('FROM SUNDRY, SUNDRYTYPE');
                  SQL.Add('WHERE NMATTER = :NMATTER');
                  SQL.Add('  AND NMEMO = :NMEMO');
                  SQL.Add('  AND SUNDRY.TYPE = SUNDRYTYPE.CODE(+)');
                  SQL.Add('  AND TYPE <> ''ia''');
                  SQL.Add('ORDER BY CREATED');
                  ParamByName('NMATTER').AsInteger := dmAxiom.qryInvoice.FieldByName('NMATTER').AsInteger;
                  ParamByName('NMEMO').AsInteger := dmAxiom.qryInvoice.FieldByName('NMEMO').AsInteger;
                  Open;
                end;
                for iCtr := 0 to dmAxiom.qrySundry.FieldCount-1 do
                  AddToList(dmAxiom.qrySundry.Fields[iCtr].DisplayName, '');
                MRGCreateFieldNames(hWpDatFile, PChar(StringReplace(strFieldNames.Text, #13#10, '', [rfReplaceAll])), strFieldNames.Count);
                while not dmAxiom.qrySundry.EOF do
                begin
                  MRGAddField(hWpDatFile, PChar(FormatDateTime('ddddd', dmAxiom.qrySundry.FieldByName('CREATED').AsDateTime)));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qrySundry.FieldByName('DESCR').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qrySundry.FieldByName('TYPE').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qrySundry.FieldByName('TYPEDESCR').AsString));
                  MRGAddField(hWpDatFile, PChar(IntToStr(dmAxiom.qrySundry.FieldByName('UNITS').AsInteger)));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qrySundry.FieldByName('PERUNIT').AsFloat])));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qrySundry.FieldByName('AMOUNT').AsFloat])));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qrySundry.FieldByName('TAXCODE').AsString));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qrySundry.FieldByName('TAX').AsFloat])));
                  MRGEndRecord(hWpDatFile);
                  dmAxiom.qrySundry.Next;
                end;
                for iCtr := 0 to dmAxiom.qrySundry.FieldCount-2 do
                  MRGAddField(hWpDatFile, PChar(''));
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);
                strFieldNames.Clear;
                strFieldValues.Clear;

                // Output the sundry summary
                StrPCopy(szFile, sDirectory + sInvoice + 'SSum.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                dmAxiom.qrySundry.Close;
                dmAxiom.qrySundry.SQL.Clear;
                dmAxiom.qrySundry.SQL.Add('SELECT SUNDRY.TYPE AS TYPE, MAX(SUNDRYTYPE.DESCR) AS TYPEDESCR, SUM(UNITS) AS UNITS, SUM(AMOUNT) AS AMOUNT, SUM(TAX) AS TAX');
                dmAxiom.qrySundry.SQL.Add('FROM SUNDRY, SUNDRYTYPE');
                dmAxiom.qrySundry.SQL.Add('WHERE NMATTER = :NMATTER');
                dmAxiom.qrySundry.SQL.Add('  AND NMEMO = :NMEMO');
                dmAxiom.qrySundry.SQL.Add('  AND SUNDRY.TYPE = SUNDRYTYPE.CODE(+)');
                dmAxiom.qrySundry.SQL.Add('GROUP BY SUNDRY.TYPE');
                dmAxiom.qrySundry.ParamByName('NMATTER').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMATTER').AsInteger;
                dmAxiom.qrySundry.ParamByName('NMEMO').AsInteger
                  := dmAxiom.qryInvoice.FieldByName('NMEMO').AsInteger;
                dmAxiom.qrySundry.Open;
                for iCtr := 0 to dmAxiom.qrySundry.FieldCount-1 do
                  AddToList(dmAxiom.qrySundry.Fields[iCtr].DisplayName, '');
                MRGCreateFieldNames(hWpDatFile, PChar(StringReplace(strFieldNames.Text, #13#10, '', [rfReplaceAll])), strFieldNames.Count);
                while not dmAxiom.qrySundry.EOF do
                begin
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qrySundry.FieldByName('TYPE').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qrySundry.FieldByName('TYPEDESCR').AsString));
                  MRGAddField(hWpDatFile, PChar(IntToStr(dmAxiom.qrySundry.FieldByName('UNITS').AsInteger)));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qrySundry.FieldByName('AMOUNT').AsFloat])));
                  MRGAddField(hWpDatFile, PChar(Format('%f', [dmAxiom.qrySundry.FieldByName('TAX').AsFloat])));
                  MRGEndRecord(hWpDatFile);
                  dmAxiom.qrySundry.Next;
                end;
                for iCtr := 0 to dmAxiom.qrySundry.FieldCount-2 do
                  MRGAddField(hWpDatFile, PChar(''));
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);
                dmAxiom.qrySundry.Close;
                strFieldNames.Clear;
                strFieldValues.Clear;

                // Output Legend Key values
                StrPCopy(szFile, sDirectory + sInvoice + 'Keys.dat');
                hWpDatFile := MRGInitDataFile(WP70, szFile);
                dmAxiom.qryTmp.Close;
                dmAxiom.qryTmp.SQL.Clear;
                dmAxiom.qryTmp.SQL.Add('SELECT ''AUTHOR'' AS TYPE, F.EMPTYPE, ET.DESCR, E.NAME, F.RATE');
                dmAxiom.qryTmp.SQL.Add('FROM FEECODETYPE F, MATTER M, EMPLOYEE E, EMPTYPE ET');
                dmAxiom.qryTmp.SQL.Add('WHERE F.FEECODE = M.FEECODE');
                dmAxiom.qryTmp.SQL.Add('  AND E.TYPE = ET.CODE');
                dmAxiom.qryTmp.SQL.Add('  AND E.TYPE = F.EMPTYPE');
                dmAxiom.qryTmp.SQL.Add('  AND E.CODE = M.AUTHOR');
                dmAxiom.qryTmp.SQL.Add('  AND M.NMATTER = :NMATTER');
                dmAxiom.qryTmp.SQL.Add('UNION');
                dmAxiom.qryTmp.SQL.Add('SELECT F.EMPTYPE, ''OTHER'', ET.DESCR, '''', F.RATE');
                dmAxiom.qryTmp.SQL.Add('FROM FEECODETYPE F, MATTER M, EMPTYPE ET');
                dmAxiom.qryTmp.SQL.Add('WHERE F.FEECODE = M.FEECODE');
                dmAxiom.qryTmp.SQL.Add('  AND F.EMPTYPE = ET.CODE');
                dmAxiom.qryTmp.SQL.Add('  AND F.EMPTYPE NOT IN (');
                dmAxiom.qryTmp.SQL.Add('    SELECT F.EMPTYPE FROM FEECODETYPE F, MATTER M, EMPLOYEE E, EMPTYPE ET');
                dmAxiom.qryTmp.SQL.Add('    WHERE F.FEECODE = M.FEECODE');
                dmAxiom.qryTmp.SQL.Add('      AND E.TYPE = ET.CODE');
                dmAxiom.qryTmp.SQL.Add('      AND E.TYPE = F.EMPTYPE');
                dmAxiom.qryTmp.SQL.Add('      AND E.CODE = M.AUTHOR');
                dmAxiom.qryTmp.SQL.Add('      AND M.NMATTER = :NMATTER');
                dmAxiom.qryTmp.SQL.Add('    )');
                dmAxiom.qryTmp.SQL.Add('  AND M.NMATTER = :NMATTER');
                dmAxiom.qryTmp.ParamByName('NMATTER').AsInteger := FieldByName('NMATTER').AsInteger;
                dmAxiom.qryTmp.Open;

                while not dmAxiom.qryTmp.EOF do
                begin
                  AddToList(dmAxiom.qryTmp.FieldByName('TYPE').AsString+'_TYPE', '');
                  AddToList(dmAxiom.qryTmp.FieldByName('TYPE').AsString+'_EMPTYPE', '');
                  AddToList(dmAxiom.qryTmp.FieldByName('TYPE').AsString+'_DESCR', '');
                  AddToList(dmAxiom.qryTmp.FieldByName('TYPE').AsString+'_NAME', '');
                  AddToList(dmAxiom.qryTmp.FieldByName('TYPE').AsString+'_RATE', '');
                  dmAxiom.qryTmp.Next;
                end;
                MRGCreateFieldNames(hWpDatFile, PChar(StringReplace(strFieldNames.Text, #13#10, '', [rfReplaceAll])), strFieldNames.Count);

                dmAxiom.qryTmp.First;
                while not dmAxiom.qryTmp.EOF do
                begin
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryTmp.FieldByName('TYPE').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryTmp.FieldByName('EMPTYPE').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryTmp.FieldByName('DESCR').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryTmp.FieldByName('NAME').AsString));
                  MRGAddField(hWpDatFile, PChar(dmAxiom.qryTmp.FieldByName('RATE').AsString));
                  dmAxiom.qryTmp.Next;
                end;
                MRGEndRecord(hWpDatFile);
                MRGCloseDataFile(hWpDatFile);
                dmAxiom.qryTmp.Close;
                strFieldNames.Clear;
                strFieldValues.Clear;

                CleanupWPFormat;
              end;

              // Merge the bill using the PerfectScript interface
              // Open WordPerfect
              try
                varWP := GetActiveOleObject('WordPerfect.PerfectScript');
              except
                on EOleSysError do
                  try
                    varWP := CreateOleObject('WordPerfect.PerfectScript');
                  except
                    varWP := null;
                    MessageDlg('Failed to Invoke WordPerfect!', mtError, [mbOK], 0);
                    Exit;
                  end;
              end;
              //varWP.FileNew; //- not needed as WordPerfect creates a new document during a merge operation
              //varWP.MergeFileAssociate(BillTemplate(FieldByName('BILLTEMPLATE').AsString), sDirectory + 'Bill.dat');
              //varWP.MergeSelect(MRGSELECTALL);
              varWP.WPActivate;
              varWP.MergeRun(MRGRUNFORMFILE, BillTemplate(FieldByName('BILLTEMPLATE').AsString), MRGRUNDATAFILE, sDirectory + sInvoice + 'BillMerge.dat', MRGRUNCURDOC);
              if PrintBill then
              begin
                varWP.Print;
                varWP.CloseNoSave;
              end;
            except
              on E: Exception do
              begin
                MsgErr('Error occured merging bill'#13#13 + E.Message);
                CleanupWPFormat;
              end;
            end;
          end;

          strFieldNames.Free;
          strFieldValues.Free;
          varWP := null;
          Close;
        end;
      end;
   end;
end;

function IsDataFormField(sFieldName: string): boolean;
var
  qryField: TUniQuery;
begin
  qryField := TUniQuery.Create(nil);
  qryField.Connection := dmAxiom.uniInsight;
  with qryField do
  begin
    Close;
    SQL.Text := 'SELECT NAME FROM FIELDTYPE WHERE NAME = :NAME';
    Params[0].AsString := sFieldName;
    Open;
    Result := not IsEmpty;
    Close;
  end;
  qryField.Free;
end;

function IsIllegalStatement(Statement: string): Boolean;
var
  iCtr: Integer;
begin
  Result := False;
  for iCtr := 1 to High(IllegalStatement) do
  begin
    if (Pos(IllegalStatement[iCtr], UpperCase(Statement)) <> 0) then
      Result := True;
  end;
end;

function LedgerHead(sCode: string): boolean;
var
  bHeader: boolean;
begin
  bHeader := False;
  with dmAxiom.qryCharts do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUBLEDGERS');
    SQL.Add('FROM CHART');
    SQL.Add('WHERE BANK = :BANK');
    SQL.Add('  AND CODE = :CODE');
    Params[0].AsString := dmAxiom.Entity;
    Params[1].AsString := sCode;
    Open;
    if not IsEmpty then
    begin
      if FieldByName('SUBLEDGERS').AsInteger > 0 then
        bHeader := True;
    end;
  end;
  LedgerHead := bHeader;
end;

function LedgerString(sCode: string; sField: string): string;
begin
  with dmAxiom.qryCharts do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + sField);
    SQL.Add('FROM CHART');
    SQL.Add('WHERE BANK = :BANK');
    SQL.Add('  AND CODE = :CODE');

    Params[0].AsString := dmAxiom.Entity;
    Params[1].AsString := sCode;
    Open;
    LedgerString := FieldByName(sField).AsString;
    Close;
  end;
end;

function LedgerComponentString(sCode: string; sField: string): string;
begin
  with dmAxiom.qryCharts do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + sField);
    SQL.Add('FROM CHART');
    SQL.Add('WHERE BANK = :BANK');
    SQL.Add('  AND COMPONENT_CODE_DISPLAY = :CODE');

    Params[0].AsString := dmAxiom.Entity;
    Params[1].AsString := sCode;
    Open;
    LedgerComponentString := FieldByName(sField).AsString;
    Close;
  end;
end;

function LedgerValue(sBank: string; sCode: string; sField: string): string;
var
  sLedgerValue: string;
begin
  with dmAxiom.qryCharts do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + sField);
    SQL.Add('FROM CHART');
    SQL.Add('WHERE BANK = :BANK');
    SQL.Add('  AND CODE = :CODE');
    Params[0].AsString := dmAxiom.Entity;
    Params[1].AsString := sCode;
    Open;
    if not IsEmpty then
    begin
      sLedgerValue := Format('%m', [Abs(FieldByName(sField).AsFloat)]);
      if FieldByName(sField).AsFloat < 0.0 then
        sLedgerValue := sLedgerValue + ' DR'
      else
        sLedgerValue := sLedgerValue + ' CR';
    end
    else
      sLedgerValue := '';
    LedgerValue := sLedgerValue;
    Close;
  end;
end;

procedure ListBoxMoveAll(lbFrom: TListBox; lbTo: TListBox);
var
  iCtr, iSel: integer;
begin
{ Note - MultiSelect must be true for this to work }
  iSel := -1;
  for iCtr := 0 to lbFrom.Items.Count - 1 do
    iSel := lbTo.Items.Add(lbFrom.Items.Strings[iCtr]);
  lbFrom.Clear;
  lbTo.ItemIndex := iSel;
end;

procedure ListBoxMoveAll(lbFrom: TcxListBox; lbTo: TcxListBox); overload;
var
  iCtr, iSel: integer;
begin
{ Note - MultiSelect must be true for this to work }
  iSel := -1;
  for iCtr := 0 to lbFrom.Items.Count - 1 do
    iSel := lbTo.Items.Add(lbFrom.Items.Strings[iCtr]);
  lbFrom.Clear;
  lbTo.ItemIndex := iSel;
end;

procedure ListBoxMoveAll(lbFrom: TcxGridTableView; lbTo: TcxGridTableView); overload;
var
  iCtr, iSel: integer;
begin
{ Note - MultiSelect must be true for this to work }
   iSel := -1;
   lbTo.BeginUpdate();
   lbFrom.BeginUpdate();
   lbTo.DataController.RecordCount := lbFrom.DataController.RecordCount;
   for iCtr := 0 to lbFrom.DataController.RowCount - 1 do
   begin
      lbTo.DataController.Values[iCtr, 0] := lbFrom.DataController.GetValue(iCtr,0);
      lbTo.DataController.Values[iCtr, 1] := lbFrom.DataController.GetValue(iCtr,1);
      lbTo.DataController.Values[iCtr, 2] := lbFrom.DataController.GetValue(iCtr,2);
      lbTo.DataController.Values[iCtr, 3] := lbFrom.DataController.GetValue(iCtr,3);

   end;
   lbFrom.DataController.RecordCount := 0;
   lbTo.EndUpdate;
   lbFrom.EndUpdate;
//  lbTo.ItemIndex := iSel;
end;

procedure ListBoxMoveSelected(lbFrom: TListBox; lbTo: TListBox);
var
  iCtr, iSel: integer;
begin
{ Note - MultiSelect must be true for this to work }
  if lbFrom.SelCount > 0 then
    case lbFrom.SelCount of
      1: // Only one selected - do it the simple way
      begin
        iCtr := lbFrom.ItemIndex;
        iSel := lbTo.Items.Add(lbFrom.Items.Strings[lbFrom.ItemIndex]);
        lbTo.Selected[iSel] := True;
        lbFrom.Items.Delete(lbFrom.ItemIndex);
        if (lbFrom.Items.Count - 1) < iCtr then
          iCtr := lbFrom.Items.Count - 1;
        lbFrom.ItemIndex := iCtr;
        lbFrom.Selected[iCtr] := True;
      end;
      else  // Multiple selected items
      begin
        for iCtr := (lbFrom.Items.Count - 1) downto 0 do
          if lbFrom.Selected[iCtr] then
          begin
            // Move this one
            iSel := lbTo.Items.Add(lbFrom.Items.Strings[iCtr]);
            lbTo.Selected[iSel] := True;
            lbFrom.Items.Delete(iCtr);
          end;
      end;
    end;
end;

procedure ListBoxMoveSelected(lbFrom: TcxListBox; lbTo: TcxListBox); overload;
var
  iCtr, iSel: integer;
begin
{ Note - MultiSelect must be true for this to work }
  if lbFrom.SelCount > 0 then
    case lbFrom.SelCount of
      1: // Only one selected - do it the simple way
      begin
        iCtr := lbFrom.ItemIndex;
        iSel := lbTo.Items.Add(lbFrom.Items.Strings[lbFrom.ItemIndex]);
        lbTo.Selected[iSel] := True;
        lbFrom.Items.Delete(lbFrom.ItemIndex);
        if (lbFrom.Items.Count - 1) < iCtr then
          iCtr := lbFrom.Items.Count - 1;
        lbFrom.ItemIndex := iCtr;
        lbFrom.Selected[iCtr] := True;
      end;
      else  // Multiple selected items
      begin
        for iCtr := (lbFrom.Items.Count - 1) downto 0 do
          if lbFrom.Selected[iCtr] then
          begin
            // Move this one
            iSel := lbTo.Items.Add(lbFrom.Items.Strings[iCtr]);
            lbTo.Selected[iSel] := True;
            lbFrom.Items.Delete(iCtr);
          end;
      end;
    end;
end;



procedure ListBoxSetupData(lbSetup: TListBox; dsData: TDataSource; sListField: string);
begin
  lbSetup.Clear;
  with dsData.DataSet do
  begin
    First;
    while not EOF do
    begin
      lbSetup.Items.Add(FieldByName(sListField).AsString);
      Next;
    end;
  end;
end;


{$IFNDEF NOMULTISELECT}
procedure LoadMultiSelectionProcess(FileID, DataForm: string);
var
   LfrmMatterDataForm: TfrmMatterDataForm;

   procedure PrecedentMake();
   begin
      //
   end;

begin
   if not Assigned(LfrmMatterDataForm) then
      LfrmMatterDataForm := TfrmMatterDataForm.Create(Application);
   with LfrmMatterDataForm do
   begin
      if DataForm <> '' then
         if LoadForm(DataForm, FileID) then
            if ShowModal = mrOk then
               PrecedentMake()
         else
            MessageDlg('And error occurred loading the Data Form "'+DataForm+'"', mtError, [mbOK], 0)
      else
         MessageDlg('A Data Form is not associated with this Precedent Template!', mtError, [mbOK], 0);
   end;
end;
{$ENDIF}


function MakePrecedent(sFile: string; PrecInfo: TPrecInfo): boolean;
var
  sFileID, sWordProc, sDataFilePath, sPrecendentPath,
    sPrecendentName, sSavedFileName, sFileWithNoPath: string;
  varWP: Variant;
  varWord, varDoc : Variant;
  {olevDoc, olevNewTemp, olevFormat: OleVariant;
  oleVarg1, oleVarg2, oleVarg3: OleVariant;
  szField: array [0..255] of char;              }
  szFile: array[0..255] of char;
  strForeignCodeMap, strAxiomCodeMap: TStringList;
  strFieldNames, strFieldValues, strDataFiles: TStringList;
//  regEmpower: TRegistry;

  function GetFileSaveName: string;
  var
    sDummy, sFileConstruct: string;
  begin
    sDummy := ExtractFileName(PrecInfo.PrecPath);
    sFileConstruct := Copy(sDummy, 1, Length(sDummy)-4)+
      '_'+FormatDateTime('yyyymmddhhmmss', Now)+'.wpd';
    if (PrecInfo.PrecSavePath = '') and (SettingLoadString('sys', 'PRECEDENTS', 'SAVEPATH') = '') then
      Result := sFileConstruct
    else
    begin
      if (PrecInfo.PrecSavePath = '') then
        PrecInfo.PrecSavePath := SettingLoadString('sys', 'PRECEDENTS', 'SAVEPATH');
      //replace %FILEID% with matter FileID
      PrecInfo.PrecSavePath := StringReplace(PrecInfo.PrecSavePath, AFFVAR_FILEID, sFileID, [rfReplaceAll]);
      //replace %AUTHOR% with matter Author code
      PrecInfo.PrecSavePath := StringReplace(PrecInfo.PrecSavePath, AFFVAR_AUTHOR, MatterString(sFileID, 'AUTHOR'), [rfReplaceAll]);
      if not(DirectoryExists(PrecInfo.PrecSavePath)) then
        ForceDirectories(PrecInfo.PrecSavePath);
      Result := PrecInfo.PrecSavePath+sFileConstruct;
    end;
  end;

  procedure AddToMRGFile(FileName: string; CreateMultiFiles: Boolean = False);
  var
    i: Integer;
  begin
    // this function begins the elaborate mechanism of creating the various WordPefect .DAT
    // files necessary to complete the merge.
    // this mechanism is necessary due to the fact that WP only accepts merge files with a
    // complete list of field names at the beginning of the file and not in between
    if (strDataFiles.IndexOf(FileName) = -1) or CreateMultiFiles then
    begin
      strDataFiles.AddObject(FileName, TMergeObject.Create(CreateMultiFiles));
      for i := 0 to strFieldNames.Count-2 do
        TMergeObject(strDataFiles.Objects[strDataFiles.Count-1]).FieldNames.Add(strFieldNames.Strings[i]);
      TMergeObject(strDataFiles.Objects[strDataFiles.Count-1]).FieldNames.Add(strFieldNames.Strings[strFieldNames.Count-1]+';');
      for i := 0 to strFieldValues.Count-1 do
        TMergeObject(strDataFiles.Objects[strDataFiles.Count-1]).FieldValues.Add(strFieldValues.Strings[i]);
    end
    else
    begin
      for i := 0 to strFieldNames.Count-2 do
        TMergeObject(strDataFiles.Objects[strDataFiles.IndexOf(FileName)]).FieldNames.Add(strFieldNames.Strings[i]);
      TMergeObject(strDataFiles.Objects[strDataFiles.IndexOf(FileName)]).FieldNames.Add(strFieldNames.Strings[strFieldNames.Count-1]+';');
      for i := 0 to strFieldValues.Count-1 do
        TMergeObject(strDataFiles.Objects[strDataFiles.IndexOf(FileName)]).FieldValues.Add(strFieldValues.Strings[i]);
    end;
  end;

  procedure FinaliseMRGFiles;
  var
    hWpDatFile, i, j, k: integer;
    {sDataFileName, }sFieldNamesWithLastSemiColon{, sCategory}: string;
  begin
    // parse through all files in the stringlist and then create the merge file based on the
    // stored field names and values
    //strDataFiles.SaveToFile(dmAxiom.SysInfo.TempPath + 'DataFiles.txt');
    for i := 0 to strDataFiles.Count-1 do
    begin
      //TMergeObject(strDataFiles.Objects[i]).FieldNames.SaveToFile(strDataFiles[i]+'FieldNames.txt');
      //TMergeObject(strDataFiles.Objects[i]).FieldValues.SaveToFile(strDataFiles[i]+'FieldValues.txt');
      if (TMergeObject(strDataFiles.Objects[i]).FieldNames.Count < TMergeObject(strDataFiles.Objects[i]).FieldValues.Count) then //(TMergeObject(strDataFiles.Objects[i]).MultipleFilesFromList) then
      begin
        StrPCopy(szFile, strDataFiles.Strings[i]);
        //sCategory := TMergeObject(strDataFiles.Objects[i]).FieldValues[0];
        //sDataFileName := strDataFiles.Strings[i];
        //Insert(sCategory, sDataFileName, Pos('.', sDataFileName));
        //StrPCopy(szFile, sDataFileName);
        hWpDatFile := MRGInitDataFile(WP80, szFile);
        sFieldNamesWithLastSemiColon := StringReplace(TMergeObject(strDataFiles.Objects[i]).FieldNames.Text, #13#10, '', [rfReplaceAll]);
        MRGCreateFieldNames(hWpDatFile, PChar(Copy(sFieldNamesWithLastSemiColon, 1, Length(sFieldNamesWithLastSemiColon)-1)),
          TMergeObject(strDataFiles.Objects[i]).FieldNames.Count);
        k := 0;
        for j := 0 to TMergeObject(strDataFiles.Objects[i]).FieldValues.Count-2 do
        begin
          MRGAddField(hWpDatFile, PChar(TMergeObject(strDataFiles.Objects[i]).FieldValues.Strings[j]));
          Inc(k);
          if k = TMergeObject(strDataFiles.Objects[i]).FieldNames.Count then
          begin
            k := 0;
            MRGEndRecord(hWpDatFile);
(*            if TMergeObject(strDataFiles.Objects[i]).FieldValues[j+1] <> sCategory then
            begin
              MRGCloseDataFile(hWpDatFile);
              sCategory := TMergeObject(strDataFiles.Objects[i]).FieldValues[j+1];
              sDataFileName := strDataFiles.Strings[i];
              Insert(sCategory, sDataFileName, Pos('.', sDataFileName));
              StrPCopy(szFile, sDataFileName);
              hWpDatFile := MRGInitDataFile(WP80, szFile);
              MRGCreateFieldNames(hWpDatFile, PChar(Copy(sFieldNamesWithLastSemiColon, 1, Length(sFieldNamesWithLastSemiColon)-1)),
                TMergeObject(strDataFiles.Objects[i]).FieldNames.Count);
            end;*)
          end;
        end;
        MRGAddField(hWpDatFile, PChar(TMergeObject(strDataFiles.Objects[i]).FieldValues.Strings[TMergeObject(strDataFiles.Objects[i]).FieldValues.Count-1]));
        MRGEndRecord(hWpDatFile);
        MRGCloseDataFile(hWpDatFile);
      end
      else
      begin
        StrPCopy(szFile, strDataFiles.Strings[i]);
        hWpDatFile := MRGInitDataFile(WP80, szFile);
        sFieldNamesWithLastSemiColon := StringReplace(TMergeObject(strDataFiles.Objects[i]).FieldNames.Text, #13#10, '', [rfReplaceAll]);
        MRGCreateFieldNames(hWpDatFile, PChar(Copy(sFieldNamesWithLastSemiColon, 1, Length(sFieldNamesWithLastSemiColon)-1)),
          TMergeObject(strDataFiles.Objects[i]).FieldNames.Count);
        if TMergeObject(strDataFiles.Objects[i]).FieldNames.Count < TMergeObject(strDataFiles.Objects[i]).FieldValues.Count then
        begin
          k := 0;
          for j := 0 to TMergeObject(strDataFiles.Objects[i]).FieldValues.Count-1 do
          begin
            MRGAddField(hWpDatFile, PChar(TMergeObject(strDataFiles.Objects[i]).FieldValues.Strings[j]));
            Inc(k);
            if k = TMergeObject(strDataFiles.Objects[i]).FieldNames.Count then
            begin
              k := 0;
              MRGEndRecord(hWpDatFile);
            end;
          end;
        end
        else
        begin
          for j := 0 to TMergeObject(strDataFiles.Objects[i]).FieldNames.Count-1 do
            MRGAddField(hWpDatFile, PChar(TMergeObject(strDataFiles.Objects[i]).FieldValues.Strings[j]));
        end;
        MRGEndRecord(hWpDatFile);
        MRGCloseDataFile(hWpDatFile);
      end;
    end;

    // this is not necessary now as WordPerfect will handle this in the called macro
    // create the main merge file
(*    StrPCopy(szFile, sPrecendentPath+sFile+'Merge.dat');
    hWpDatFile := MRGInitDataFile(WP80, szFile);
    for i := 0 to strDataFiles.Count-1 do
      MRGAddField(hWpDatFile, PChar(strDataFiles.Strings[i]));
    MRGEndRecord(hWpDatFile);
    MRGCloseDataFile(hWpDatFile);*)

    for i := 0 to strDataFiles.Count-1 do
      TMergeObject(strDataFiles.Objects[i]).Free;
  end;

  procedure AddToList(FieldName, FieldValue: string);
  begin
    if strFieldNames.Count = 0 then
      strFieldNames.Add(FieldName)
    else
      strFieldNames.Add(';'+FieldName);
    strFieldValues.Add(StringReplace(FieldValue, #13#10, '<br>', [rfReplaceAll]));
  end;

  procedure AddValue(FieldName, FieldValue: string);
  begin
    strFieldValues.Add(FieldName+'='+StringReplace(FieldValue, #13#10, '<br>', [rfReplaceAll]));
  end;

  procedure LoadCodeMap;
  begin
    with dmAxiom.qryDataFieldMapping do
    begin
      SQL.Clear;
      SQL.Add('SELECT FOREIGNCODE, AXIOMCODE');
      SQL.Add('FROM DATAFIELDMAPPING');
      Open;
      while not(EOF) do
      begin
        strAxiomCodeMap.Add(FieldByName('FOREIGNCODE').AsString+'='+
          FieldByName('AXIOMCODE').AsString);
        strForeignCodeMap.Add(FieldByName('AXIOMCODE').AsString+'='+
          FieldByName('FOREIGNCODE').AsString);
        Next;
      end;
      Close;
    end;
  end;

  function AxiomCode(ForeignCode: string): string;
  begin
    if strAxiomCodeMap.Values[ForeignCode] <> '' then
      Result := strAxiomCodeMap.Values[ForeignCode]
    else
      Result := ForeignCode;
  end;

  function ForeignCode(SystemCode: string): string;
  begin
    if strForeignCodeMap.Values[SystemCode] <> '' then
      Result := strForeignCodeMap.Values[SystemCode]
    else
      Result := SystemCode;
  end;


  procedure GetUserStatements(qryUserStatements: TUniQuery; StatementType, WorkFlowType: string);
  begin
    // This procedure returns a list of user statements from the database
    // as set up in the System window.
    // Either the statements for this WorkflowType for the StatementType (MTRCONTACT, PRECEDENT, etc)
    // are returned, or the default statements (null workflowtype) for the StatementTYpe are returned
    // in the qryUserStatements query.

    qryUserStatements.SQL.Clear;
    qryUserStatements.SQL.Add('SELECT *');
    qryUserStatements.SQL.Add('FROM USERSTATEMENTS');
    qryUserStatements.SQL.Add('WHERE STATEMENTTYPE = :STATEMENTTYPE');
    qryUserStatements.SQL.Add('  AND WORKFLOWTYPE = :WORKFLOWTYPE');
    qryUserStatements.ParamByName('STATEMENTTYPE').AsString := StatementType;
    qryUserStatements.ParamByName('WORKFLOWTYPE').AsString := WorkflowType;
    qryUserStatements.Open;
    if qryUserStatements.IsEmpty then
    begin
      // Use the default
      qryUserStatements.Close;
      qryUserStatements.SQL.Clear;
      qryUserStatements.SQL.Add('SELECT *');
      qryUserStatements.SQL.Add('FROM USERSTATEMENTS');
      qryUserStatements.SQL.Add('WHERE STATEMENTTYPE = :STATEMENTTYPE');
      qryUserStatements.SQL.Add('  AND WORKFLOWTYPE IS NULL');
      qryUserStatements.ParamByName('STATEMENTTYPE').AsString := StatementType;
      qryUserStatements.Open;
    end;
  end;


  procedure GenerateWordPrecedent;
  var
    iCtr: Integer;
    olevItem: OleVariant;
  begin
    strFieldValues := TStringList.Create;

    // parse through the user defined statements
    with dmAxiom do
    begin
      GetUserStatements(qryUserStatements, 'PRECEDENT', PrecInfo.WorkflowType);
      while not(qryUserStatements.Eof) do
      begin
        qryPrecedent.SQL.Clear;
        qryPrecedent.SQL.Text := qryUserStatements.FieldByName('STOREDSTATEMENT').AsString;
        if qryPrecedent.Params.Count > 0 then
          qryPrecedent.ParamByName('FILEID').AsString := sFileID;
        qryPrecedent.Open;
        for iCtr := 0 to qryPrecedent.Fields.Count-1 do
          AddValue(qryPrecedent.Fields[iCtr].DisplayName, qryPrecedent.Fields[iCtr].AsString);
        qryPrecedent.Close;
        qryUserStatements.Next;
      end;
    end;

    // parse through the custom defined fields for the matter and extract their values
    with dmAxiom.qryPrecedent do
    begin
      SQL.Clear;
      SQL.Add('SELECT M.FILEID, F.*');
      SQL.Add('FROM MATTER M, FIELDTYPELINK F');
      SQL.Add('WHERE M.NMATTER = F.NUNIQUE');
      SQL.Add('  AND M.FILEID = :FILEID');
      Params[0].AsString := sFileID;
      Open;
      while not(EOF) do
      begin
        AddValue(FieldByName('FIELDNAME').AsString, FieldByName('TEXTVALUE').AsString);
        Next;
      end;
      Close;
    end;

    // parse through the matter linked parties and extract their names and refnos
    // this is taken from the USERSTATEMENTS table where the STATEMENTTYPE = 'PRECMTRCNTCT'
    with dmAxiom do
    begin
      GetUserStatements(qryUserStatements, 'MTRCONTACT', PrecInfo.WorkflowType);

      if not qryUserStatements.IsEmpty then
      begin
        qryPrecedent.SQL.Clear;
        qryPrecedent.SQL.Text := qryUserStatements.FieldByName('STOREDSTATEMENT').AsString;
        if qryPrecedent.Params.Count > 0 then
          qryPrecedent.ParamByName('FILEID').AsString := sFileID;
        qryPrecedent.Open;

  (*      SQL.Clear;
        SQL.Add('SELECT M.CATEGORY AS CATEGORY, M.PREFIX AS PREFIX, M.REFNO AS REFNO, ');
        SQL.Add('  M.ACTING_FOR AS ACTING_FOR, P.NAME AS NAME, P.ADDRESS AS ADDRESS, P.EMAIL AS EMAIL');
        SQL.Add('FROM MATTERPARTY M, PHONEBOOK P');
        SQL.Add('WHERE M.NNAME = P.NNAME');
        SQL.Add('  AND M.FILEID = '+QuotedStr(sFileID));
        Open;*)
        while not(qryPrecedent.EOF) do
        begin
          AddValue(qryPrecedent.FieldByName('PREFIX').AsString, qryPrecedent.FieldByName('NAME').AsString);
          AddValue(qryPrecedent.FieldByName('PREFIX').AsString+'_REFNO', qryPrecedent.FieldByName('REFNO').AsString);
          qryPrecedent.Next;
        end;
        qryPrecedent.Close;
      end;
    end;

    strFieldNames := TStringList.Create;
{    for iCtr := 1 to dmAxiom.WordPrecedent.Variables.Count do
    begin
      olevItem := iCtr;
      strFieldNames.Add(strFieldValues.Values[AxiomCode(dmAxiom.WordPrecedent.Variables.Item(olevItem).Name)]);
    end; }
    // PJB
    {strFieldNames.SaveToFile(dmAxiom.SysInfo.TempPath + 'FieldNames.txt');
    strFieldNames.Free;
    }
{    for iCtr := 1 to dmAxiom.WordPrecedent.Variables.Count do
    begin
      olevItem := iCtr;
      try
        if strFieldValues.Values[AxiomCode(dmAxiom.WordPrecedent.Variables.Item(olevItem).Name)] <> '' then
          dmAxiom.WordPrecedent.Variables.Item(olevItem).Value := strFieldValues.Values[
            AxiomCode(dmAxiom.WordPrecedent.Variables.Item(olevItem).Name)];
      except
        // silent exception
      end;
    end; }
// PJB
//    strFieldValues.SaveToFile(dmAxiom.SysInfo.TempPath + 'FieldValues.txt');

    strFieldValues.Free;
  end;

  procedure GenerateWPPrecedent;
  var
    iCtr: Integer;
  begin
    strDataFiles := TStringList.Create;
    strFieldNames := TStringList.Create;
    strFieldValues := TStringList.Create;

    if (SettingLoadBoolean('sys', 'PRECEDENTS', 'APPENDFILEID')) and (PrecInfo.MainDataFile <> '') then
      sFile := sFile+PrecInfo.MainDataFile
    else if not(SettingLoadBoolean('sys', 'PRECEDENTS', 'APPENDFILEID')) and (PrecInfo.MainDataFile <> '') then
      sFile := PrecInfo.MainDataFile;
    // this is not used for the time being... it also needs to be implmented in the User Statements section
(*    else if (SettingLoadBoolean('sys', 'PRECEDENTS', 'APPENDFILEID')) and  (dmAxiom.qryUserStatements.FieldByName('DATAFILE').AsString <> '') then
      sFile := sFile+dmAxiom.qryUserStatements.FieldByName('DATAFILE').AsString
    else if not(SettingLoadBoolean('sys', 'PRECEDENTS', 'APPENDFILEID')) and (dmAxiom.qryUserStatements.FieldByName('DATAFILE').AsString <> '') then
      sFile := dmAxiom.qryUserStatements.FieldByName('DATAFILE').AsString;*)

    try
      if SetupWPFormat then
      begin
        sPrecendentPath := ExtractFilePath(PrecInfo.PrecPath);
        if (Pos('%SYSTEMTEMP%', PrecInfo.DataFilePath) <> 0)  then
          sDataFilePath := IncludeTrailingPathDelimiter(dmAxiom.SysInfoPath)
        else
          sDataFilePath := ExtractFilePath(PrecInfo.DataFilePath);
        sPrecendentName := ExtractFileName(PrecInfo.PrecPath);

        // parse through the user defined statements
        with dmAxiom do
        begin
          GetUserStatements(qryUserStatements, 'PRECEDENT', PrecInfo.WorkflowType);
          while not(qryUserStatements.Eof) do
          begin
            strFieldNames.Clear;
            strFieldValues.Clear;
            qryPrecedent.SQL.Clear;
            qryPrecedent.SQL.Text := qryUserStatements.FieldByName('STOREDSTATEMENT').AsString;
            if qryPrecedent.Params.Count > 0 then
            begin
              qryPrecedent.ParamByName('FILEID').AsString := sFileID;
            end;
            qryPrecedent.Open;
            for iCtr := 0 to qryPrecedent.Fields.Count-1 do
              AddToList(ForeignCode(qryPrecedent.Fields[iCtr].DisplayName), qryPrecedent.Fields[iCtr].AsString);
            qryPrecedent.Close;
            qryUserStatements.Next;
            AddToMRGFile(sDataFilePath+sFile+'.dat');
          end;
        end;

        // parse through the custom defined fields for the matter and extract their values
        strFieldNames.Clear;
        strFieldValues.Clear;
        with dmAxiom.qryPrecedent do
        begin
          SQL.Clear;
          SQL.Add('SELECT F.FIELDNAME, F.TEXTVALUE, F.NUMBERVALUE, FT.TYPE');
          SQL.Add('FROM MATTER M, FIELDTYPELINK F, FIELDTYPE FT');
          SQL.Add('WHERE M.FILEID = :FILEID');
          SQL.Add('  AND M.NMATTER = F.NUNIQUE');
          SQL.Add('  AND F.LINKTABLE = ''MATTER''');
          SQL.Add('  AND FT.NAME = F.FIELDNAME');
          ParamByName('FILEID').AsString := sFileID;
          Open;
          if not(IsEmpty) then
          begin
            while not(EOF) do
            begin
              if FieldByName('TYPE').AsString = 'OP' then
                AddToList(ForeignCode(FieldByName('FIELDNAME').AsString), IntToStr(FieldByName('NUMBERVALUE').AsInteger))
              else
                AddToList(ForeignCode(FieldByName('FIELDNAME').AsString), FieldByName('TEXTVALUE').AsString);
              Next;
            end;
            Close;
            AddToMRGFile(sDataFilePath+sFile+'.dat');
          end;
        end;

        strFieldNames.Clear;
        strFieldValues.Clear;
        // parse through the matter contact list and extract their details
        // this is taken from the USERSTATEMENTS table where the STATEMENTTYPE = 'PRECMTRCNTCT'
        with dmAxiom do
        begin
          GetUserStatements(qryUserStatements, 'MTRCONTACT', PrecInfo.WorkflowType);

          while not(qryUserStatements.Eof) do
          begin
            strFieldNames.Clear;
            strFieldValues.Clear;
            qryPrecedent.SQL.Clear;
            qryPrecedent.SQL.Text := qryUserStatements.FieldByName('STOREDSTATEMENT').AsString;
            if qryPrecedent.Params.Count > 0 then
              qryPrecedent.ParamByName('FILEID').AsString := sFileID;
            qryPrecedent.Open;

            for iCtr := 0 to qryPrecedent.FieldCount-1 do
              AddToList(ForeignCode(qryPrecedent.Fields[iCtr].DisplayName), '');
            strFieldValues.Clear;
            while not(qryPrecedent.EOF) do
            begin
              for iCtr := 0 to qryPrecedent.FieldCount-1 do
                strFieldValues.Add(StringReplace(qryPrecedent.Fields[iCtr].AsString, #13#10, '<br>', [rfReplaceAll]));
              qryPrecedent.Next;
            end;
            AddToMRGFile(sDataFilePath+sFile+qryPrecedent.Fields[0].AsString+'.dat');
            qryPrecedent.Close;

            qryUserStatements.Next;
          end;
        end;
      end;
    finally
      FinaliseMRGFiles;
      CleanupWPFormat;
      strFieldNames.Free;
      strFieldValues.Free;
      strDataFiles.Free;
    end;
  end;

begin
  Result := False;
  strForeignCodeMap := TStringList.Create;
  strAxiomCodeMap := TStringList.Create;
  LoadCodeMap();

  sFileID := sFile;
  sWordProc := SystemString('WORDPROC');
  if sWordProc = 'WORD97' then
  begin
    MakePrecedent := True;
    // Open Word and send data to it
    try
      try
        varWord := GetActiveOleObject('Word.Application');
      except
        on EOleSysError do
          try
            varWord := CreateOleObject('Word.Application');
          except
            varWord := null;
          end;
      end;
      try
        varWord.Visible := True;
        varDoc := varWord.Documents.Add(PrecInfo.PrecPath);
        try
          varDoc.File_Merge(sFile);
        except
          MakePrecedent := False;
          MsgErr('Invalid precedent ' + PrecInfo.PrecPath + chr(13) + chr(13) + 'Could not merge Matter details');
          Exit;
        end;
      except
        MakePrecedent := False;
        MsgErr('Could not open precedent ' + PrecInfo.PrecPath);
        Exit;
      end;
    except
      MakePrecedent := False;
      Exit;
    end;

{ **************************************
  *** Victor's Precedent code for V2 ***
  **************************************
    MakePrecedent := True;
    try
      dmAxiom.WordApp.Connect;
      dmAxiom.WordApp.Visible := True;
      olevNewTemp := False;
      olevFormat := wdFormatDocument;
      olevDoc := sPrecPath;
      dmAxiom.WordPrecedent.ConnectTo(dmAxiom.WordApp.Documents.Add(olevDoc, olevNewTemp, EmptyParam, EmptyParam));
      GenerateWordPrecedent();
      dmAxiom.WordApp.Selection.WholeStory;
      dmAxiom.WordPrecedent.Fields.Update;
      oleVarg1 := QuotedStr(MatterString(sFile, 'AUTHOR'));
      oleVarg2 := QuotedStr(MatterString(sFile, 'SHORTDESCR'));
      oleVarg3 := QuotedStr(sFile);
      dmAxiom.WordApp.Run('SaveDoc.SaveDocFromAxiom', oleVarg1, oleVarg2, oleVarg1);
      AddPrecedentToDocs(sFile, dmAxiom.WordPrecedent.Name, ExtractFileName(dmAxiom.WordPrecedent.Name));
      dmAxiom.WordPrecedent.Disconnect;
      dmAxiom.WordApp.Disconnect;
    except
      MessageDlg('Word may not be installed on your machine', mtError, [mbOk], 0);
      MakePrecedent := False;
      dmAxiom.WordPrecedent.Disconnect;
      dmAxiom.WordApp.Disconnect;
      Exit;
    end;
  **************************************
  *** Victor's Precedent code for V2 ***
  **************************************
}
  end
  else if sWordProc = 'WORDPERFECT8' then
  begin
    MakePrecedent := True;
    try
      GenerateWPPrecedent();
      // Open WordPerfect
      varWP := GetActiveOleObject('WordPerfect.PerfectScript');
    except
      on EOleSysError do
        try
          varWP := CreateOleObject('WordPerfect.PerfectScript');
          varWP.WPActivate;
          try
            if PrecInfo.ControlMacro <> '' then
              varWP.MacroFilePlay(PrecInfo.ControlMacro);
            if PrecInfo.MergeFile <> '' then
              varWP.MergeRun(MRGRUNFORMFILE, PrecInfo.PrecPath, MRGRUNDATAFILE, sDataFilePath+PrecInfo.MergeFile+'.dat', MRGRUNCURDOC)
            else
              // does not work with %SYSTEMTEMP% ???!!!
              varWP.MergeRun(MRGRUNFORMFILE, PrecInfo.PrecPath, MRGRUNDATAFILE, sDataFilePath+sFile+'.dat', MRGRUNCURDOC);
            if PrecInfo.AfterMacro <> '' then
              varWP.MacroFilePlay(PrecInfo.AfterMacro);
            sSavedFileName := GetFileSaveName();
            varWP.FileSave(sSavedFileName, FSEXPORTWP8, FSOVERWRITE);
            sFileWithNoPath := StringReplace(ExtractFileName(sSavedFileName), '.'+ExtractFileExt(sSavedFileName), '', []);
            AddPrecedentToDocs(sFileID, sSavedFileName, sFileWithNoPath, PrecInfo.PrecDescription, PrecInfo.PrecCategory, PrecInfo.PrecClassification);
            varWP := null;
            // need to decide whether to run control macro or save file ourselves here
          except
            on E:Exception do
            begin
              MessageDlg('An error occurred during the WordPerfect merge.'+
                         #13'Please check your precedent path configuration!'+
                         #13#13+E.Message, mtError, [mbOk], 0);
              varWP := null;
            end;
          end;
        except
          varWP := null;
          MessageDlg('Failed to Invoke WordPerfect!', mtError, [mbOK], 0);
          MakePrecedent := False;
          Exit;
        end;
    end;
  end;

  strForeignCodeMap.Free;
  strAxiomCodeMap.Free;
end;


function MatterDate(sFile: string; sField: string): TDateTime;
var
   qryThisMatter: TUniQuery;
begin
   qryThisMatter := TUniQuery.Create(nil);
   with qryThisMatter do
   begin
      Connection := dmAxiom.uniInsight;
      Close;
      SQL.Text := 'SELECT ' + sField + ' FROM MATTER WHERE FILEID = :FILEID';
      Params[0].AsString := sFile;
      Open;
      if not IsEmpty then
         Result := FieldByName(sField).AsDateTime
      else
         Result := Null;
  end;
  qryThisMatter.Free;
end;


function MatterExists(sFile: string): boolean;
var
   qryThisMatter: TUniQuery;
begin
   qryThisMatter := TUniQuery.Create(nil);
   with qryThisMatter do
   begin
      Connection := dmAxiom.uniInsight;
      Close;
      SQL.Text := 'SELECT FILEID FROM MATTER WHERE FILEID = :FILEID';
      Params[0].AsString := sFile;
      Open;
      Result := not IsEmpty;
      Close;
   end;
   qryThisMatter.Free;
end;


function MatterIsCurrent(sFile: string): boolean;
var
   qryThisMatter: TUniQuery;
begin
   qryThisMatter := TUniQuery.Create(nil);
   with qryThisMatter do
   begin
      Connection := dmAxiom.uniInsight;
      Close;
      SQL.Text := 'SELECT ''x'' FROM MATTER WHERE FILEID = :FILEID AND CLOSED = 0';
      Params[0].AsString := sFile;
      Open;
      Result := not qryThisMatter.IsEmpty;
      Close;
   end;
   qryThisMatter.Free;
end;


function MatterString(sFile: string; sField: string): string; overload;
var
  sGetField: string;
  qryThisMatter: TUniQuery;
begin
  Result := '0';
  qryThisMatter := TUniQuery.Create(nil);
  try
    if sField = 'MATLOCATE' then
      sGetField := dmAxiom.MatLocate + ' AS MATLOCATE'
    else
      sGetField := sField;

    with qryThisMatter do
    begin
      Connection := dmAxiom.uniInsight;
      SQL.Text := 'SELECT ' + sGetField + ' FROM MATTER M WHERE FILEID = :FILEID';
      Params[0].AsString := sFile;
      Open;
      if not IsEmpty then
        Result := Fields[0].AsString;
      Close;
    end;
  except
    On E:Exception do
      MsgErr('Error occured accessing Matter field ' + sGetField + #13#13 + E.Message);
  end;
  qryThisMatter.Free;
end;

function MatterString(iFile: integer; sField: string): string; overload;
var
  sGetField: string;
  qryThisMatter: TUniQuery;
begin
  Result := '0';
  qryThisMatter := TUniQuery.Create(nil);
  try
    if sField = 'MATLOCATE' then
      sGetField := dmAxiom.MatLocate + ' AS MATLOCATE'
    else
      sGetField := sField;

    with qryThisMatter do
    begin
      Connection := dmAxiom.uniInsight;
      SQL.Text := 'SELECT ' + sGetField + ' FROM MATTER M WHERE NMATTER = :NMATTER';
      Params[0].AsInteger := iFile;
      Open;
      if not IsEmpty then
        Result := FieldByName(sField).AsString;
      Close;
    end;
  except
    On E:Exception do
      MsgErr('Error occured accessing Matter field ' + sGetField + #13#13 + E.Message);
  end;
  qryThisMatter.Free;
end;


function MatterUpdate(iMatter: Integer; sField: string; cAmount: Currency): boolean;
{var
  iClient, iRefresh: integer;
  cOldAmount: currency;
  qryUpdate: TUniQuery;  }
begin
//  Result := True;
{ MatterUpdate adjusts the field sField of the Matter (and of the Client if appropriate)
  by cAmount in the direction sDrCr
}

{  MatterUpdate := True;
  if cAmount <> 0 then
  begin
    qryUpdate := TUniQuery.Create(nil);
    with qryUpdate do
    begin
      Session := dmAxiom.uniInsight;
      SQL.Text := 'SELECT NCLIENT, ' + sField + ' FROM MATTER WHERE NMATTER = :NMATTER';
      Params[0].AsInteger := iMatter;
      Open;
      iClient := FieldByName('NCLIENT').AsInteger;
      cOldAmount := FieldByName(sField).AsFloat;
      Close;
      SQL.Clear;
      SQL.Add('UPDATE MATTER SET ');
      try
        SQL.Add(sField + ' = (' + CurrToStrF(cOldAmount, ffFixed, 15) + '+' + CurrToStrF(cAmount, ffFixed, 15) + ')');
        if (sField = 'TRUST_BAL') or (sField = 'CL_TRUST_BAL') then
          SQL.Add(', LASTTRUST = SysDate')
        else
          SQL.Add(', LASTTRANS = SysDate');
        SQL.Add(', REFRESH = (REFRESH + 1)');
        SQL.Add(' WHERE NMATTER = :NMATTER');
        Params[0].AsInteger := iMatter;
        ExecSQL;
      except
        on E: Exception do
        begin
          MatterUpdate := False;
          MsgErr('Update of Matter balance ' + sField + ' failed' + #13 + #13 + E.message);
        end;
      end;
      // Now update the Client Card
      try
        with qryUpdate do
        begin
          SQL.Text := 'SELECT ' + sField + ' FROM CLIENT WHERE NCLIENT = :NCLIENT';
          Params[0].AsInteger := iClient;
          Open;
          cOldAmount := FieldByName(sField).AsFloat;
          Close;
          SQL.Clear;
          SQL.Add('UPDATE CLIENT SET ');
          SQL.Add(sField + ' = (' + CurrToStrF(cOldAmount, ffFixed, 15) + '+' + CurrToStrF(cAmount, ffFixed, 15) + ')');
          SQL.Add(' WHERE NCLIENT = :NCLIENT');
          Params[0].AsInteger := iClient;
          ExecSQL;
        end;
      except
        // Ignore this exception - this field might not be on the client card
      end;

      Close;
      Free;
    end;
  end;   }
end;

function AllocUpdate(iAlloc: Integer; sField: string; cAmount: Currency): boolean;
begin
   Result := True;
   if cAmount <> 0 then
   begin
      with  TUniQuery.Create(nil) do
      begin
         try
            Connection := dmAxiom.uniInsight;
            SQL.text := 'UPDATE ALLOC ' +
                        'SET ' + sField + ' = ' + sField +
                        ' + ' +  CurrToStrF(cAmount, ffFixed, 15) + ' ' +
                        'WHERE NALLOC = ' + inttostr(iAlloc);
            ExecSQL;
         finally
            Close;
            Free;
         end;
      end;
   end;
end;

function MoneyInWords(cAmount: Currency): string;
var
  sAmount: string;
  InWords: TNumWords;
begin
  InWords := TNumWords.Create;
  sAmount := InWords.EMoney(cAmount, False); //Euro mode set to false
  sAmount[1] := UpCase(sAmount[1]);
  Result := sAmount;
  InWords.Free;
end;

function MonthOfYear(dtCurrentDate: TDateTime): Word;
var
  Day, Month, Year: Word;
begin
  DecodeDate(dtCurrentDate, Year, Month, Day);
  Result := Month;
end;

function MsgAsk(sMsg: string): Word;
begin
  MsgAsk := MessageDlg(Format('%s',[sMsg]), mtConfirmation, [mbYes, mbNo], 0, mbYes);
end;

function MsgAskCancel(sMsg: string): Word;
begin
  MsgAskCancel := MessageDlg(Format('%s',[sMsg]), mtConfirmation, [mbYes, mbNo, mbCancel], 0, mbYes);
end;

procedure MsgErr(sMsg: string);
begin
  PlaySound('Error');
  MessageDlg(Format('%s',[sMsg]), mtError, [mbOK], 0);
end;

procedure MsgInfo(sMsg: string);
begin
  MessageDlg(Format('%s',[sMsg]), mtInformation, [mbOK], 0);
end;

function MsgWarn(sMsg: string): Word;
begin
  MsgWarn := MessageDlg(Format('%s',[sMsg]), mtWarning, [mbYes, mbNo], 0);
end;

function NextRefno : String; overload;
begin
{
  Grab the next bill number from the current Entity and returns it.
}
   try
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'UPDATE ENTITY SET LASTBILL = (LASTBILL + 1) WHERE CODE = :CODE';
         Params[0].AsString := dmAxiom.Entity;
         ExecSQL;

         Close;
         SQL.Text := 'SELECT LASTBILL FROM ENTITY WHERE CODE = :CODE';
         Params[0].AsString := dmAxiom.Entity;
         Open;
         Result := FieldByName('LASTBILL').AsString;
      Close;
    end;
  except
    // Didn't work for some reason
    On E: Exception do
    begin
      MsgErr('Error occured getting the bill number for Entity ' + dmAxiom.Entity + #13 + #13 + E.Message);
      Result := '000001';
    end;
  end;
end;

{
  This is all crap and does not work.
  But some functions use it...

  Brendan J.  25/03/2003
}

function NextRefno(PrevRefno: string; PadLength: Integer): string; overload;
var
  sTmp, sPrefix, sValue: string;
  bPrefixing: boolean;
  iCtr: integer;
begin
  try
    if (PrevRefno <> '') then
      sTmp := '000000' + IntToStr(StrToInt(PrevRefno) + 1)
    else
      sTmp := '0000001';
    NextRefno := Copy(sTmp, Length(sTmp) + 1 - Length(PrevRefno), Length(PrevRefno));
  except
    // They have characters in their reference number
    sTmp := PrevRefno;
    bPrefixing := False;
    sPrefix := '';
    sValue := '';
    for iCtr := Length(sTmp) downto 1 do
    begin
      if not bPrefixing then
        if Pos(Copy(sTmp, iCtr, 1), '0123456789') > 0 then
          sValue := Copy(sTmp, iCtr, 1) + sValue
        else
          bPrefixing := True;
      if bPrefixing then
        sPrefix := Copy(sTmp, iCtr, 1) + sPrefix;
    end;
    try
     if sValue = '' then
      sValue := '0';

      sTmp := '000000' + IntToStr(StrToInt(sValue) + 1);
//      NextRefno := sPrefix + Copy(sTmp, Length(sTmp) + 1 - 1, Length(sValue));
      if PadLength = -1  then
         NextRefno := sPrefix + Copy(sTmp, Length(sTmp) + 1 - Length(sValue), Length(sValue))
      else
         NextRefno := sPrefix + Copy(sTmp, Length(sTmp) + 1 - PadLength, PadLength);
    except
      NextRefno := '1';
    end;
  end;
end;

procedure OpenPrecedent(FileName: string);
{
var
  sWordProc: string;
  olevDoc, olevNewTemp, olevFormat: OleVariant;
  varWP: Variant;
}
var
   DocErrMsg: string;
begin
  ExecuteFile(FileName, '', '', SW_SHOWNORMAL, DocErrMsg);

{ Old code that opens the document exclusively in a word processor

  sWordProc := SystemString('WORDPROC');
  if sWordProc = 'WORD97' then
  begin
    try
      dmAxiom.WordApp.Connect;
      dmAxiom.WordApp.Visible := True;
      olevNewTemp := False;
      olevFormat := wdFormatDocument;
      olevDoc := FileName;
      dmAxiom.WordPrecedent.ConnectTo(dmAxiom.WordApp.Documents.Add(olevDoc, olevNewTemp, EmptyParam, EmptyParam));
      dmAxiom.WordPrecedent.Disconnect;
      dmAxiom.WordApp.Disconnect;
    except
      MessageDlg('Word may not be installed on your machine', mtError, [mbOk], 0);
      dmAxiom.WordPrecedent.Disconnect;
      dmAxiom.WordApp.Disconnect;
      Exit;
    end;
  end
  else if sWordProc = 'WORDPERFECT8' then
  begin
    try
      varWP := GetActiveOleObject('WordPerfect.PerfectScript');
    except
      on EOleSysError do
        try
          varWP := CreateOleObject('WordPerfect.PerfectScript');
        except
          varWP := null;
          MessageDlg('Failed to Invoke WordPerfect!', mtError, [mbOK], 0);
          Exit;
        end;
    end;
    varWP.WPActivate;
    // need to change this so as to use the macros created by Millie
    varWP.FileOpen(FileName, 3);
    varWP := null;
  end;
}
end;

procedure ParamsNullify(parClear: TParams);
var
  iCtr: integer;
begin
  for iCtr := 0 to parClear.Count - 1 do
    parClear.Items[iCtr].Value := null;
end;                                              

procedure QuickCode(Sender: TObject; DisplayValue: string);
var
  iStartPos, iEndPos: integer;
  sText, sTmp: string;
begin
  iStartPos := 0;
  iEndPos := 0;
  // This converts any 3 letter code starting with a \
  // to the quick code text.
  sText := '';
  if (Sender is TEdit) then
  begin
    with (Sender as TEdit) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if (Sender is TMemo) then
  begin
    with (Sender as TMemo) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if (Sender is TDBMemo) then
  begin
    with (Sender as TDBMemo) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if (Sender is TcxMemo) then
  begin
    with (Sender as TcxMemo) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if Sender is TcxTextEdit then
  begin
    with (Sender as TcxTextEdit) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if Sender is TcxDBRichEdit then
  begin
    with (Sender as TcxDBRichEdit) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if Sender is TcxRichEdit then
  begin
    with (Sender as TcxRichEdit) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if Sender is TcxButtonEdit then
  begin
    with (Sender as TcxButtonEdit) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
{  else if Sender is TAddictDBRichEdit then
  begin
    with (Sender as TAddictDBRichEdit) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if Sender is TAddictRichEdit then
  begin
    with (Sender as TAddictRichEdit) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end}
  else if Sender is TDBEdit then
  begin
    with (Sender as TDBEdit) do
    begin
      sText := Text;
      iStartPos := Pos('\', Text);
      iEndPos := SelStart;
    end;
  end
  else if Sender is TField then
  begin
    with (Sender as TField) do
    begin
      if Text = '' then
      begin
         Text := DisplayValue;
         sText := DisplayValue;
      end
      else
         sText := Text;
      iStartPos := Pos('\', Text);
      if iStartPos > 0 then
      begin
        sTmp := Copy(sText, iStartPos, 99);
        iEndPos := Pos(' ', sTmp);
        if iEndPos = 0 then
          iEndPos := iStartPos + Length(sTmp)
        else
          iEndPos := iEndPos + iStartPos - 2;
      end
      else
         sText := DisplayValue;
    end;
  end;
  if sText <> '' then
    if iStartPos > 0 then
    begin
      sTmp := Trim(Copy(sText, iStartPos+1, iEndPos - iStartPos));
      with dmAxiom.qryNew do
      begin
        Close;
        SQL.Text := 'SELECT DESCR FROM QUICKCODES WHERE CODE = :CODE';
        Params[0].AsString := Uppercase(sTmp);
        Open;
        if not IsEmpty then
        begin
          sTmp := FieldByName('DESCR').AsString;
          sText := Copy(sText, 1, iStartPos - 1) + sTmp + Copy(sText, iEndPos+1, Length(sText) - iEndPos);
          sText := FirstCap(sText);
          iStartPos := iStartPos + Length(sTmp) - 1;
          if Sender is TEdit then
          begin
            (Sender as TEdit).Text := sText;
            (Sender as TEdit).SelStart := iStartPos;
          end
          else if Sender is TcxTextEdit then
          begin
            (Sender as TcxTextEdit).Text := sText;
            (Sender as TcxTextEdit).SelStart := iStartPos;
          end
          else if Sender is TcxDBRichEdit then
          begin
            (Sender as TcxDBRichEdit).Text := sText;
            (Sender as TcxDBRichEdit).SelStart := iStartPos;
          end
          else if Sender is TcxRichEdit then
          begin
            (Sender as TcxRichEdit).Text := sText;
            (Sender as TcxRichEdit).SelStart := iStartPos;
          end
          else if Sender is TcxButtonEdit then
          begin
            (Sender as TcxButtonEdit).Text := sText;
            (Sender as TcxButtonEdit).SelStart := iStartPos;
          end
          else if Sender is TMemo then
          begin
            (Sender as TMemo).Text := sText;
            (Sender as TMemo).SelStart := iStartPos;
          end
          else if Sender is TDBMemo then
          begin
            (Sender as TDBMemo).Text := sText;
            (Sender as TDBMemo).SelStart := iStartPos;
          end
          else if Sender is TcxMemo then
          begin
            (Sender as TcxMemo).Text := sText;
            (Sender as TcxMemo).SelStart := iStartPos;
          end
 {         else if Sender is TAddictDBRichEdit then
          begin
            (Sender as TAddictDBRichEdit).Text := sText;
            (Sender as TAddictDBRichEdit).SelStart := iStartPos;
          end
          else if Sender is TAddictRichEdit then
          begin
            (Sender as TAddictRichEdit).Text := sText;
            (Sender as TAddictRichEdit).SelStart := iStartPos;
          end      }
          else if Sender is TDBEdit then
          begin
            (Sender as TDBEdit).Text := sText;
            (Sender as TDBEdit).SelStart := iStartPos;
          end
          else if Sender is TField then
            (Sender as TField).Text := FirstCap(sText)
          else if Sender is TcxCustomEdit then
            (Sender as TcxCustomEdit).EditValue := FirstCap(sText);
        end;
      end;
    end
    else
    begin
      if Sender is TEdit then
      begin
        (Sender as TEdit).Text := FirstCap((Sender as TEdit).Text);
        (Sender as TEdit).SelStart := iEndPos;
      end
      else if Sender is TcxTextEdit then
      begin
        (Sender as TcxTextEdit).Text := FirstCap((Sender as TcxTextEdit).Text);
        (Sender as TcxTextEdit).SelStart := iEndPos;
      end
      else if Sender is TcxButtonEdit then
      begin
        (Sender as TcxButtonEdit).Text := FirstCap((Sender as TcxButtonEdit).Text);
        (Sender as TcxButtonEdit).SelStart := iEndPos;
      end
      else if Sender is TMemo then
      begin
        (Sender as TMemo).Text := FirstCap((Sender as TMemo).Text);
        (Sender as TMemo).SelStart := iEndPos;
      end
      else if Sender is TcxMemo then
      begin
        (Sender as TcxMemo).Text := FirstCap((Sender as TcxMemo).Text);
        (Sender as TcxMemo).SelStart := iEndPos;
      end
      else if Sender is TcxDBRichEdit then
      begin
        (Sender as TcxDBRichEdit).Text := FirstCap((Sender as TcxDBRichEdit).Text);
        (Sender as TcxDBRichEdit).SelStart := iEndPos;
      end
      else if Sender is TcxRichEdit then
      begin
        (Sender as TcxRichEdit).Text := FirstCap((Sender as TcxRichEdit).Text);
        (Sender as TcxRichEdit).SelStart := iEndPos;
      end
{      else if Sender is TAddictDBRichEdit then
      begin
        (Sender as TAddictDBRichEdit).Text := FirstCap((Sender as TAddictDBRichEdit).Text);
        (Sender as TAddictDBRichEdit).SelStart := iEndPos;
      end
      else if Sender is TAddictRichEdit then
      begin
        (Sender as TAddictRichEdit).Text := FirstCap((Sender as TAddictRichEdit).Text);
        (Sender as TAddictRichEdit).SelStart := iEndPos;
      end   }
      else if Sender is TField then
        (Sender as TField).Text := FirstCap(sText)  //FirstCap((Sender as TField).Text);
      else if Sender is TcxCustomEdit then
        (Sender as TcxCustomEdit).EditValue := FirstCap(sText);
    end;
end;

function PhoneBookMailingAddress(sSearch: string): string;
type
  AddressType = (atUnknown, atStreet, atPostal, atDX);
var
  sResult: string;
  Address: AddressType;
  qryPhonebook: TUniQuery;
begin
  Address := atUnknown;
  sResult := '';
  qryPhonebook := TUniQuery.Create(nil);
  qryPhonebook.Connection := dmAxiom.uniInsight;
  with qryPhonebook do
  begin
    SQL.Text := 'SELECT WHICHADDRESS, ADDRESS, POSTALADDRESS, DX FROM PHONEBOOK WHERE SEARCH = :SEARCH';
    Params[0].AsString := sSearch;
    Open;
    if not IsEmpty then
    begin
      if FieldByName('WHICHADDRESS').AsString = 'S' then
        Address := atStreet
      else if FieldByName('WHICHADDRESS').AsString = 'P' then
        Address := atPostal
      else if FieldByName('WHICHADDRESS').AsString = 'D' then
        Address := atDX;

      if Address = atUnknown then
        if FieldByName('DX').AsString <> '' then
          Address := atDX
        else if FieldByName('POSTALADDRESS').AsString <> '' then
          Address := atPostal
        else if FieldByName('ADDRESS').AsString <> '' then
          Address := atStreet;

      Close;
      case Address of
        atStreet:
        begin
          SQL.Text := 'SELECT ADDRESS, SUBURB, STATE, POSTCODE, COUNTRY FROM PHONEBOOK WHERE SEARCH = :SEARCH';
          Params[0].AsString := sSearch;
          Open;
          sResult := FieldByName('ADDRESS').AsString + #13#10 +
                     FieldByName('SUBURB').AsString + ' ' + FieldByName('STATE').AsString + ' ' + FieldByName('POSTCODE').AsString;
          if FieldByName('COUNTRY').AsString <> '' then
            sResult := sResult + #13#10 + FieldByName('COUNTRY').AsString;
        end;
        atPostal:
        begin
          SQL.Text := 'SELECT POSTALADDRESS, POSTALSUBURB, POSTALSTATE, POSTALPOSTCODE, POSTALCOUNTRY FROM PHONEBOOK WHERE SEARCH = :SEARCH';
          Params[0].AsString := sSearch;
          Open;
          sResult := FieldByName('POSTALADDRESS').AsString + #13#10 +
                     FieldByName('POSTALSUBURB').AsString + ' ' + FieldByName('POSTALSTATE').AsString + ' ' + FieldByName('POSTALPOSTCODE').AsString;
          if FieldByName('POSTALCOUNTRY').AsString <> '' then
            sResult := sResult + #13#10 + FieldByName('POSTALCOUNTRY').AsString;
        end;
        atDX:
        begin
          SQL.Text := 'SELECT DX, DXLOC FROM PHONEBOOK WHERE SEARCH = :SEARCH';
          Params[0].AsString := sSearch;
          Open;
          sResult := 'DX ' + FieldByName('DX').AsString + ' ' + FieldByName('DXLOC').AsString;
        end;
      end;
    end;
  end;
  qryPhonebook.Free;
  Result := sResult;
end;


function PhoneBookString(nNName: integer; sField: string): string;
var
  sGetField: string;
begin
  with dmAxiom.qryNames do
  begin
    if sField = 'PHONE' then
      sGetField := 'WORKPHONE, HOMEPHONE, MOBILE'
    else
      sGetField := sField;
    Close;
    SQL.Text := 'SELECT ' + sGetField + ' FROM PHONEBOOK WHERE NNAME = :NNAME';
    Params[0].AsInteger := nNName;
    Open;
    if not IsEmpty then
    begin
      if sField = 'PHONE' then
      begin
        if FieldByName('WORKPHONE').AsString <> '' then
          PhoneBookString := FieldByName('WORKPHONE').AsString
        else if FieldByName('MOBILE').AsString <> '' then
          PhoneBookString := FieldByName('MOBILE').AsString
        else if FieldByName('HOMEPHONE').AsString <> '' then
          PhoneBookString := FieldByName('HOMEPHONE').AsString
      end
      else
        PhoneBookString := FieldByName(sField).AsString
    end
    else
      PhonebookString := '';
  end;
end;


procedure PlaySound(sSoundEffect: string);
var
  qrySound: TUniQuery;
begin
  if dmAxiom.SoundEnabled then
  begin
    qrySound := TUniQuery.Create(nil);
    qrySound.Connection := dmAxiom.uniInsight;
    with qrySound do
    begin
      // First try this user
      SQL.Text := 'SELECT PATH FROM SOUNDS WHERE CODE = :Code AND USERID = :UserID';
      Params[0].AsString := sSoundEffect;       // Sound code
      Params[1].AsString := dmAxiom.UserID;  // for this user
      Open;
      if IsEmpty then
      begin
        // Try the default sounds
        Close;
        SQL.Text := 'SELECT PATH FROM SOUNDS WHERE CODE = :Code AND USERID IS NULL';
        Params[0].AsString := sSoundEffect;       // Sound code
        Open;
      end;
      if not IsEmpty then
      begin
        try
          frmDesktop.medSoundEffects.Wait := True;
          if frmDesktop.medSoundEffects.FileName <> FieldByName('PATH').AsString then
            frmDesktop.medSoundEffects.FileName := FieldByName('PATH').AsString;
          if FileExists(FieldByName('PATH').AsString) then
          begin
            frmDesktop.medSoundEffects.Open;
            if frmDesktop.medSoundEffects.Error = 0 then
              frmDesktop.medSoundEffects.Play;
            if sSoundEffect = 'Exit' then
              Sleep(frmDesktop.medSoundEffects.Length);
          end;
        except
          dmAxiom.SoundEnabled := False;
        end;
      end;
      Close;
    end;
    qrySound.Free;
  end;
end;


procedure PostLedger(dtDate: TDateTime; cAmount: currency; cTax: Currency;
  sRefno: string; sOwnerCode: string; iOwner: int64; sDesc: string;
  sLedger: string; sAuthor: string; iInvoice: int64;
  CreditorCode: string; sTaxCode : String; bJournalSplit : Boolean = FALSE;
  sParentChart : String = '0'; nAlloc: int64 = 0; nMatter: int64 = 0;
  nAccount: int64 = 0; UseRvDate: Boolean = FALSE; nTrans: integer = 0;
  cBAS_Tax: double = 0; sCurrency: string = ''; dFX_Rate: double = 0;
  dBase_CCY_Amt: double = 0; dBase_CCY_Tax: double = 0; dEntity_CCY_Amt: double = 0;
  dEntity_CCY_Tax: double = 0);
var
  sFullLedger : String;
  sSubChart,sRoundChart : String;
  fPercent,fSubChartAmount,fSubChartAmountTax : currency;
  fTotalPosted,fTotalTaxPosted : currency;
  iNumRound : integer;
  iTotalPercent : double;
begin
  if (sAuthor = '') then
    sFullLedger := sLedger
  else
    sFullLedger := GetSubchart(dmAxiom.Entity, sLedger, sAuthor);
  try

  {why would be set the naccount code ?}
  nAccount := 0;


  { the journalsplit is not longer needed }
{     if (bJournalSplit) then
      begin
        JournalSplitToDatabase(dtDate, cAmount, cTax, sRefno, sOwnerCode, iOwner, sDesc,
                               sFullLedger, sAuthor, iInvoice, CreditorCode, sTaxCode,
                               sParentChart);

      end
    else
      begin   }

        with dmAxiom.qryExpenseAllocations do
        begin
           close;
           paramByName('CODE').AsString := sFullLedger;
           paramByName('BANK').AsString := dmAxiom.Entity;
           open;
           first;

           if eof then
           begin
              SaveLedger(dtDate, cAmount, cTax, sRefno, sOwnerCode, iOwner, sDesc,
              sFullLedger, sAuthor, iInvoice, CreditorCode, sTaxCode,
              sParentChart, nAlloc, nMatter, nAccount,UseRvDate, nTrans, cBAS_Tax,
              sCurrency, dFX_Rate, dBase_CCY_Amt, dBase_CCY_Tax, dEntity_CCY_Amt,
              dEntity_CCY_Tax);
           end
           else
           begin
              fTotalPosted := 0;
              fTotalTaxPosted := 0;
              iTotalPercent := 0;
              iNumRound := 0;
              while not eof do
              begin
                 iTotalPercent := iTotalPercent + fieldByName('percentage').AsFloat;
                 if fieldByname('is_rounding').AsString = 'Y' then
                 begin
                    sRoundChart := fieldByName('CODE').AsString;
                    inc(iNumRound);
                 end
                 else
                 begin
                    sSubChart := fieldByName('CODE').AsString;
                    fPercent := fieldByName('percentage').AsFloat;
                    fPercent := fPercent / 100;
                    fSubChartAmount := cAmount * fPercent;
                    fSubChartAmountTax := cTax * fPercent;
                    // make sure the amounts round !
                    fSubChartAmount := round(fSubChartAmount*100)/100;
                    fSubChartAmountTax := round(fSubChartAmountTax*100)/100;

                    fTotalPosted := fTotalPosted + fSubChartAmount;
                    fTotalTaxPosted := fTotalTaxPosted + fSubChartAmountTax;

                    SaveLedger(dtDate, fSubChartAmount, fSubChartAmountTax, sRefno, sOwnerCode, iOwner, sDesc,
                    sSubChart, sAuthor, iInvoice, CreditorCode, sTaxCode,
                    sParentChart, nAlloc, nMatter, nAccount,UseRvDate, nTrans, cBAS_Tax,
                    sCurrency, dFX_Rate, dBase_CCY_Amt, dBase_CCY_Tax, dEntity_CCY_Amt,
                    dEntity_CCY_Tax);
                 end;
                 next;
              end;
              {now post the rounding amout}
              if iNumRound <> 1then
                 raise Exception.Create('Error one rounding must exists in expense allocations');

              if round(iTotalPercent*100)/100 <> 100 then
                 raise Exception.Create('Total percentage in expense allocations must be 100%');

              SaveLedger(dtDate, cAmount-fTotalPosted, cTax-fTotalTaxPosted, sRefno, sOwnerCode, iOwner, sDesc,
                  sRoundChart, sAuthor, iInvoice, CreditorCode, sTaxCode,
                  sParentChart, nAlloc, nMatter, nAccount,UseRvDate, nTrans, cBAS_Tax,
                  sCurrency, dFX_Rate, dBase_CCY_Amt, dBase_CCY_Tax, dEntity_CCY_Amt,
                  dEntity_CCY_Tax);
           end;
           close;
        end;
   {   end;    //  end if-else    }
   except
//      on E : EOraError do
//         begin
//            Raise EOraError.Create(E.ErrorCode, Copy(E.Message, 1, Pos(#$A, E.Message)));
//         end
//      else
         Raise;
  end;
end;

procedure SaveLedger(dtDate: TDateTime; cAmount: currency; cTax: Currency;
  sRefno, sOwnerCode: string; iOwner: integer; sDesc, sFullLedger, sAuthor: string;
  iInvoice: Integer; CreditorCode, sTaxCode, sParentChart: String; nAlloc: integer = 0;
  nMatter: int64 = 0; nAccount: integer = 0; UseRvDate: boolean = FALSE; nTrans: integer = 0;
  cBAS_Tax: double = 0; sCurrency: string = ''; dFX_Rate: double = 0;
  dBase_CCY_Amt: double = 0; dBase_CCY_Tax: double = 0; dEntity_CCY_Amt: double = 0;
  dEntity_CCY_Tax: double = 0);
const
  TransactionsFile = 'Transactions.log';
var
  Text                 : String;
  TransactionsFilePath : String;
  t                    : TextFile;
begin
  if (not ValidLedger(dmAxiom.Entity, sFullLedger)) then
    Raise EPostError.Create('Invalid Ledger: ' + sFullLedger)
  else
    if (not IsActiveLedger(dmAxiom.Entity, sFullLedger)) then
      Raise EPostError.Create('Inactive Ledger: ' + sFullLedger)
    else
      if (cAmount <> 0) then
      begin
        {
          Modified 25.10.2002 GG

          Capture Oracle exception telling us that we are unauthorised to post to
          locked accounts.
        }

        try
          with dmAxiom.qryTransItemInsert do
          begin
            ParamsNullify(Params);
            // commented by AES
            // Build 26 will rely on trigger generating naccount
{            if nAccount = 0 then
               nAccount := StrToInt(dmAxiom.GetSeqNumber('sqnc_naccount'));  // GetSeqnum('NACCOUNT');
            ParamByName('NACCOUNT').AsInteger := nAccount;      }
            ParamByName('CREATED').AsDateTime := dtDate;
            ParamByName('ACCT').AsString := dmAxiom.Entity;
            ParamByName('AMOUNT').AsFloat := cAmount;
            ParamByName('TAX').AsFloat := cTax;
            ParamByName('REFNO').AsString := sRefno;
            ParamByName('DESCR').AsString := sDesc;
            ParamByName('CHART').AsString := sFullLedger;
            ParamByName('OWNER_CODE').AsString := sOwnerCode;
            ParamByName('NOWNER').AsInteger := iOwner;
            ParamByName('TAXCODE').AsString := sTaxCode;
            ParamByName('PARENT_CHART').AsString := sParentChart;
            if nTrans > 0 then
               ParamByName('NTRANS').AsInteger := nTrans;
            {
              Added 23.10.2002 GG

              New Parameter 'WHO' holds the UserID of the current user
            }
            ParamByName('WHO').AsString := dmAxiom.UserID;

            if (sOwnerCode = 'CHEQUE') then
              ParamByName('NCHEQUE').AsInteger := iOwner;

            if (iInvoice <> -1) then
            begin
             ParamByName('NINVOICE').AsInteger := iInvoice;
             ParamByName('CREDITORCODE').AsString := CreditorCode;
            end;

            if (sOwnerCode = 'RECEIPT') then
              ParamByName('NRECEIPT').AsInteger := iOwner;

            if (sOwnerCode = 'JOURNAL') then
              ParamByName('NJOURNAL').AsInteger := iOwner;

            if (nAlloc <> 0) then
              ParamByName('NALLOC').AsInteger := nAlloc;

            if (nMatter <> 0) then
              ParamByName('NMATTER').AsInteger := nMatter;

            if (UseRvDate)then
              ParamByName('RVDATE').AsDate := Now;

            ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;

            ParamByName('BAS_TAX').AsFloat := cBAS_Tax;

            ParamByName('CURRENCY').AsString := sCurrency;
            ParamByName('FX_RATE').AsFloat := dFX_Rate;
            ParamByName('BASE_CCY_AMT').AsFloat := dBase_CCY_Amt;
            ParamByName('BASE_CCY_TAX').AsFloat := dBase_CCY_Tax;
            ParamByName('ENTITY_CCY_TAX').AsFloat := dEntity_CCY_Amt;
            ParamByName('TRAN_CCY_AMT').AsFloat := dEntity_CCY_Tax;
            ExecSQL;
            Close;

            cLedgerTotal := cLedgerTotal + cAmount;

            {
              Added 22.11.2002 GG

              If running in the IDE, dump transaction details out to a text file in the
              root directory
            }

            if (dmAxiom.runningide) or (UpperCase(ParamStr(1)) = '-T') then
            begin
              Text:= Format('Created: %s; Acct: %s; Chart: %s; $Amount: %f; $Tax: %f; REFNO: %s; DESCR: %s; Owner Code: %s; Owner: %d; Invoice: %d; Creditor Code: %s; WHO: %s',
                            [DateToStr(dtDate), dmAxiom.Entity, sFullLedger, cAmount, cTax, sRefno, sDesc, sOwnerCode, iOwner, iInvoice, CreditorCode, dmAxiom.UserID]);

              TransactionsFilePath:= ExtractFilePath(ParamStr(0)) + TransactionsFile;

              AssignFile(t, TransactionsFilePath);

              if not (FileExists(TransactionsFilePath)) then
                Rewrite(t)
              else
                begin
                  System.Append(t);
                end;

              WriteLn(t, DateTimeToStr(Now()), ':- ', Text);
              Flush(t);
              CloseFile(t);

            end;
          end;
        except
          on E : Exception do
          begin
            Raise;

          end;
        end;
      end;
end;

procedure PostLedgers(dtDate: TDateTime; cAmount: currency; sRefno: string;
 sOwnerCode: string; iOwner: int64; sDesc: string; sDrLedger, sCrLedger: string;
 sAuthor: string; sTaxCode : String; bJournalSplit : Boolean = FALSE;
 sParentChart : String = '0'; nAlloc: int64 = 0; nMatter: int64 = 0;
 nAccount: int64 = 0; UseRvDate: Boolean = FALSE; nTrans: int64 = 0;
 cBAS_Tax: double = 0; sCurrency: string = ''; dFX_Rate: double = 0;
 dBase_CCY_Amt: double = 0; dBase_CCY_Tax: double = 0; dEntity_CCY_Amt: double = 0;
 dEntity_CCY_Tax: double = 0);
begin
  if cAmount <> 0 then
  begin
    PostLedger(dtDate
      , 0 - cAmount
      , 0
      , sRefno
      , sOwnerCode
      , iOwner
      , sDesc
      , sDrLedger
      , sAuthor
      , -1
      , ''
      , sTaxCode
      , bJournalSplit
      , sParentChart
      , nAlloc
      , nMatter
      , nAccount
      , UseRvDate
      , nTrans
      , cBAS_Tax
      , sCurrency
      , dFX_Rate
      , dBase_CCY_Amt
      , dBase_CCY_Tax
      , dEntity_CCY_Amt
      , dEntity_CCY_Tax );

    PostLedger(dtDate
      , cAmount
      , 0
      , sRefno
      , sOwnerCode
      , iOwner
      , sDesc
      , sCrLedger
      , sAuthor
      , -1
      , ''
      , sTaxCode
      , bJournalSplit
      , sParentChart
      , nAlloc
      , nMatter
      , nAccount
      , UseRvDate
      , nTrans
      , cBAS_Tax
      , sCurrency
      , dFX_Rate
      , dBase_CCY_Amt
      , dBase_CCY_Tax
      , dEntity_CCY_Amt
      , dEntity_CCY_Tax  );
  end;
end;

procedure PostLedgersGST(dtDate: TDateTime; cAmount, cGSTAmount: currency;
  sRefno: string; sOwnerCode: string; iOwner: int64; sDesc: string;
  sGSTLedger, sDrLedger, sCrLedger: string; sAuthor: string; sTaxCode : String;
  bJournalSplit : Boolean = FALSE;
  sParentChart : String = '0'; nAlloc: int64 = 0; nMatter: int64 = 0;
  nAccount: int64 = 0; UseRvDate: Boolean = FALSE; nTrans: int64 = 0);
begin
    if (cAmount <> 0) or (cGSTAmount <> 0) then
    begin

    if (cGSTAmount <> 0) then
      PostLedger(dtDate
        , 0- cGSTAmount
        , 0
        , sRefno
        , sOwnerCode
        , iOwner
        , sDesc
        , sGSTLedger
        , sAuthor
        , -1
        , ''
        , sTaxCode
        , bJournalSplit
        , sParentChart
        , nAlloc
        , nMatter
        , nAccount
      , UseRvDate
      , nTrans  );

    if cAmount <> 0 then
    PostLedger(dtDate
      , 0 - cAmount
      , 0
      , sRefno
      , sOwnerCode
      , iOwner
      , sDesc
      , sDrLedger
      , sAuthor
      , -1
      , ''
      , sTaxCode
      , bJournalSplit
      , sParentChart
      , nAlloc
      , nMatter
      , nAccount
      , UseRvDate
      , nTrans  );

    PostLedger(dtDate
      , cAmount + cGSTAmount
      , 0
      , sRefno
      , sOwnerCode
      , iOwner
      , sDesc
      , sCrLedger
      , sAuthor
      , -1
      , ''
      , sTaxCode
      , bJournalSplit
      , sParentChart
      , nAlloc
      , nMatter
      , nAccount
      , UseRvDate
      , nTrans  );
    end;

end;

function QuoteFix(sFix: string): string;
var
  sResult, sTmp: string;
  iPos: integer;
begin
  iPos := Pos('''', sFix);
  if iPos > 0 then
  begin
    sResult := '';
    sTmp := sFix;
    while iPos > 0 do
    begin
      sResult := sResult + Copy(sTmp, 1, iPos) + '''';
      sTmp := Copy(sTmp, iPos + 1, 99);
      iPos := Pos('''', sTmp);
    end;
    sResult := sResult + sTmp;
  end
  else
    sResult := sFix;
  QuoteFix := sResult;
end;

procedure ReceiptClear(iNreceipt: integer);
begin
  with dmAxiom.qryReceipts do
  begin
    Close;
    SQL.Text := 'SELECT ACCT, BANKED, CLEARED, TRUST, AMOUNT FROM RECEIPT WHERE NRECEIPT = :NRECEIPT';
    Params[0].AsInteger := iNreceipt;
    Open;
  end;
  if not dmAxiom.qryReceipts.IsEmpty then
  begin
    if (dmAxiom.qryReceipts.FieldByName('BANKED').AsString = 'Y') and (dmAxiom.qryReceipts.FieldByName('CLEARED').AsString <> 'Y') then
    begin
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;
        if dmAxiom.qryReceipts.FieldByName('TRUST').AsString = 'T' then
        begin
          // Update the Trust balances
          with dmAxiom.qryAllocs do
          begin
            Close;
            SQL.Text := 'SELECT AMOUNT, NMATTER FROM ALLOC WHERE NRECEIPT = :NRECEIPT ORDER BY NALLOC';
            Params[0].AsInteger := iNreceipt;
            Open;
            while not EOF do
            begin
              MatterUpdate(FieldByName('NMATTER').AsInteger, 'CL_TRUST_BAL', FieldByName('AMOUNT').AsFloat);

              Next;
            end;
            Close;
          end;
        end;
        dmAxiom.qryNew.Close;
        dmAxiom.qryNew.SQL.Text := 'UPDATE ALLOC SET CLEARED = ''Y'' WHERE NRECEIPT = :NRECEIPT';
        dmAxiom.qryNew.Params[0].AsInteger := iNreceipt;
        dmAxiom.qryNew.ExecSQL;
        dmAxiom.qryNew.Close;

        // Update the bank cleared balance
        with dmAxiom.qryBanks do
        begin
          Close;
          SQL.Text := 'UPDATE BANK SET CL_BALANCE = (CL_BALANCE + ' + CurrToStrF(dmAxiom.qryReceipts.FieldByName('AMOUNT').AsFloat, ffFixed, 15) + ') WHERE ACCT = :ACCT';
          Params[0].AsString := dmAxiom.qryReceipts.FieldByName('ACCT').AsString;
          ExecSQL;
          Close;
        end;
        with dmAxiom.qryReceipts do
        begin
          Close;
          SQL.Text := 'UPDATE RECEIPT SET CLEARED = ''Y'' WHERE NRECEIPT = :NRECEIPT';
          Params[0].AsInteger := iNreceipt;
          ExecSQL;
          Close;
        end;
        dmAxiom.uniInsight.Commit;
      except
        on E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          MsgErr('Clearance failed:'#13#13 + E.Message);
        end;
      end;
    end;
  end;
end;

procedure RefreshMatter(sFile: string);
var
  qryThisMatter: TUniQuery;
begin
  qryThisMatter := TUniQuery.Create(nil);
  with qryThisMatter do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'UPDATE MATTER SET REFRESH = (REFRESH + 1) WHERE FILEID = :FILEID';
    Params[0].AsString := sFile;
    ExecSQL;
    Close;
  end;
  qryThisMatter.Free;
end;

function RefreshNeededMatter(sFile: string; iOldRefresh: integer): boolean;
var
  bRefresh: boolean;
  qryThisMatter: TUniQuery;
begin
  qryThisMatter := TUniQuery.Create(nil);
  with qryThisMatter do
  begin
    bRefresh := False;
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT REFRESH FROM MATTER WHERE FILEID = :FILEID';
    Params[0].AsString := sFile;
    Open;
    if not IsEmpty then
      if FieldByName('REFRESH').AsInteger <> iOldRefresh then
        bRefresh := True;
    Close;
  end;
  RefreshNeededMatter := bRefresh;
  qryThisMatter.Free;
end;

procedure RvNaccount(qryOldNaccount: TUniQuery; ReversalDate: TDateTime; Refno: string;
                     Reason: string; OwnerCode: string; NewNOwner: integer);
begin
{ Reverses the Naccount passed in the qryOldNaccount
}
   if not qryOldNaccount.IsEmpty then
   begin
      // Make a reversed copy of this record
      ParamsNullify(dmAxiom.qryNaccountsRV.Params);
      with dmAxiom.qryNaccountsRV do
      begin
         ParamByName('NACCOUNT').AsInteger := StrToInt(dmAxiom.GetSeqNumber('sqnc_naccount'));  //GetSeqnum('NACCOUNT');
         ParamByName('CREATED').AsDateTime := ReversalDate;
         ParamByName('RVDATE').AsDateTime := ReversalDate;
         ParamByName('REFNO').AsString := Refno;
         ParamByName('OWNER_CODE').AsString := OwnerCode;
         if OwnerCode = 'CHEQUE' then
            ParamByName('NCHEQUE').AsInteger := NewNOwner
         else if OwnerCode = 'RECEIPT' then
            ParamByName('NRECEIPT').AsInteger := NewNOwner
         else if OwnerCode = 'JOURNAL' then
            ParamByName('NJOURNAL').AsInteger := NewNOwner;
         ParamByName('NOWNER').AsInteger := NewNOwner;
         ParamByName('NINVOICE').Value := qryOldNaccount.FieldByName('NINVOICE').Value;
         if OwnerCode = 'INVOICE' then
         begin
            ParamByName('NINVOICE').AsInteger := NewNOwner;
            dmAxiom.qryTmp.Close;
            dmAxiom.qryTmp.SQL.Text := 'SELECT CODE FROM CREDITOR, INVOICE WHERE INVOICE.NCHEQUE = ' + qryOldNAccount.FieldByName('NINVOICE').AsString +
                                     ' AND CREDITOR.NCREDITOR = INVOICE.NCREDITOR';
            dmAxiom.qryTmp.Open;
            if not dmAxiom.qryTmp.IsEmpty then
               ParamByName('CREDITORCODE').AsString := dmAxiom.qryTmp.FieldByName('CODE').AsString;
            Close;
         end;
         ParamByName('ACCT').AsString := qryOldNaccount.FieldByName('ACCT').AsString;
         ParamByName('AMOUNT').AsFloat := 0.0 - qryOldNaccount.FieldByName('AMOUNT').AsFloat;
         ParamByName('TAX').AsFloat := 0.0 - qryOldNaccount.FieldByName('TAX').AsFloat;
         ParamByName('CHART').AsString := qryOldNaccount.FieldByName('CHART').AsString;
         ParamByName('DESCR').AsString := Reason;
         ParamByName('INITCODE').AsString := qryOldNaccount.FieldByName('INITCODE').AsString;
         ParamByName('PDATE').Value := qryOldNaccount.FieldByName('PDATE').Value;
         ParamByName('PRESENTED').Value := qryOldNaccount.FieldByName('PRESENTED').Value;
         ParamByName('TAXCODE').AsString := qryOldNaccount.FieldByName('TAXCODE').AsString;
         ParamByName('PARENT_CHART').AsString := qryOldNaccount.FieldByName('PARENT_CHART').AsString;
         ParamByName('REV_NJOURNAL').AsString := qryOldNaccount.FieldByName('REV_NJOURNAL').AsString;
         ParamByName('NALLOC').AsInteger := qryOldNaccount.FieldByName('NALLOC').AsInteger;
         ParamByName('NMATTER').AsInteger := qryOldNaccount.FieldByName('NMATTER').AsInteger;
         ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;  //dmAxiom.Version + '.' + IntToStr(dmAxiom.BuildNumber);
         ParamByName('BAS_TAX').AsFloat := 0.0 - qryOldNaccount.FieldByName('TAX').AsFloat;
   {
     Added 23.10.2002 GG

     New Parameter 'WHO' holds the UserID of the current user
   }
         ParamByName('WHO').AsString := dmAxiom.UserID;

         ExecSQL;
         Close;

         //GLUpdate(ParamByName('ACCT').AsString, ParamByName('CHART').AsString, ReversalDate, ParamByName('AMOUNT').AsFloat);
      end;
   end;
end;

function RvAlloc(qryOldAlloc: TUniQuery; dtReversal: TDateTime; sRefno: string; sReason: string; iNewNcheque: integer;
                  iNewNreceipt: integer; iNewNjournal: integer; sLedger: string; sType: string; iNewNInvoice: integer; bFromReceipt: boolean; ABilled: string): integer;
var
   sComma: string;
   cValue,
   cTrust: Currency;
   qryAlloc,
   qryCheqReq: TUniQuery;
   IsAnticipated: Boolean;
   lNAlloc: integer;
begin
  { Reverses the Alloc passed in the qryOldAlloc }
   if not qryOldAlloc.IsEmpty then
   begin
      with dmAxiom.qryAllocsRV do
      begin
         // Make a reversed copy of this record
         lNAlloc := GetSeqnum('NALLOC');
         ParamByName('NALLOC').AsInteger := lNAlloc;
         ParamByName('CREATED').AsDateTime := dtReversal;
         ParamByName('REFNO').AsString := sRefno;
         if iNewNcheque <> 0 then
            ParamByName('NCHEQUE').AsInteger := iNewNcheque
         else
            ParamByName('NCHEQUE').AsString := '';
         if iNewNreceipt <> 0 then
            ParamByName('NRECEIPT').AsInteger := iNewNreceipt
         else
            ParamByName('NRECEIPT').AsString := '';
         if iNewNjournal <> 0 then
            ParamByName('NJOURNAL').AsInteger := iNewNjournal
         else
            ParamByName('NJOURNAL').AsString := '';
         if iNewNInvoice <> 0 then
            ParamByName('NINVOICE').AsInteger := iNewNInvoice
         else
            ParamByName('NINVOICE').AsString := '';
         {
         Code modified 4.10.2002 GG

         If a journal is being reversed, attach the bill number to the reversed journal entry
         If an AntD is being reversed, attach the bill number to the reversed AntD entry
         Otherwise, the reversal should not appear on a bill
         }
         if iNewNjournal <> 0 then
            if qryOldAlloc.FieldByName('NMEMO').AsInteger <> 0 then
               ParamByName('NMEMO').AsInteger := qryOldAlloc.FieldByName('NMEMO').AsInteger;

         IsAnticipated:= False;
         if (iNewNcheque <> 0) then
         begin
            qryCheqReq:= TUniQuery.Create(nil);
            try
               qryCheqReq.Connection:= dmAxiom.uniInsight;
               qryCheqReq.SQL.Clear;
               qryCheqReq.SQL.Add('SELECT CR.ANTICIPATED FROM CHEQREQ CR, ALLOC A');
               qryCheqReq.SQL.Add('WHERE CR.NCHEQREQ = A.NCHEQREQ AND ');
               qryCheqReq.SQL.Add('A.NCHEQUE = :NCHEQUE');
               qryCheqReq.ParamByName('NCHEQUE').AsInteger:=
                  qryOldAlloc.FieldByName('NCHEQUE').AsInteger;
               qryCheqReq.Open;

               IsAnticipated:= qryCheqReq.FieldByName('ANTICIPATED').AsString = 'Y';
            finally
               qryCheqReq.Close;
               qryCheqReq.Free
            end;
         end;

         { AES 1.6.2006 need to save nmemo for all reversed receipts }
         //      if IsAnticipated then
         if bFromReceipt then
            ParamByName('NMEMO').AsInteger := qryOldAlloc.FieldByName('NMEMO').AsInteger;

         ParamByName('BANK').AsString := qryOldAlloc.FieldByName('BANK').AsString;
         ParamByName('ACCT').AsString := qryOldAlloc.FieldByName('ACCT').AsString;
         ParamByName('TYPE').AsString := sType;
         ParamByName('AMOUNT').AsFloat := 0.0 - qryOldAlloc.FieldByName('AMOUNT').AsFloat;
         ParamByName('FEE').AsFloat := 0.0 - qryOldAlloc.FieldByName('FEE').AsFloat;
         ParamByName('OUTLAY').AsFloat := 0.0 - qryOldAlloc.FieldByName('OUTLAY').AsFloat;
         ParamByName('SUNDRY').AsFloat := 0.0 - qryOldAlloc.FieldByName('SUNDRY').AsFloat;
         ParamByName('NMATTER').AsInteger := qryOldAlloc.FieldByName('NMATTER').AsInteger;
         ParamByName('NCLIENT').AsInteger := qryOldAlloc.FieldByName('NCLIENT').AsInteger;
         ParamByName('DESCR').AsString := sReason;
         ParamByName('FILEID').AsString := qryOldAlloc.FieldByName('FILEID').AsString;
         ParamByName('APPROVAL').AsString := qryOldAlloc.FieldByName('APPROVAL').AsString;
         ParamByName('CLEARED').AsString := qryOldAlloc.FieldByName('CLEARED').AsString;
         ParamByName('DCLEARDATE').Value := qryOldAlloc.FieldByName('DCLEARDATE').Value;
         ParamByName('PAYER').AsString := qryOldAlloc.FieldByName('PAYER').AsString;
         ParamByName('TRUST').AsString := qryOldAlloc.FieldByName('TRUST').AsString;
         if qryOldAlloc.FieldByName('TRUST').AsString = 'T' then
            ParamByName('SPEC_PURPOSE').AsCurrency := 0.0 - qryOldAlloc.FieldByName('SPEC_PURPOSE').AsCurrency;
         {
         Code modified 4.10.2002 GG

         If a journal is being reversed, attach the bill number to the reversed journal entry
         If an AntD is being reversed, attach the bill number to the reversed AntD entry
         Otherwise, the reversal should not appear on a bill
         }
//         if (iNewNjournal <> 0) or (IsAnticipated) then
//            ParamByName('BILLED').AsString := qryOldAlloc.FieldByName('BILLED').AsString
//         else
            ParamByName('BILLED').AsString := 'Y';

         ParamByName('CLIENT_NAME').AsString := qryOldAlloc.FieldByName('CLIENT_NAME').AsString;
         ParamByName('MATTER_DESC').AsString := qryOldAlloc.FieldByName('MATTER_DESC').AsString;

         {
         Modified 3.10.2002 GG

         If this reversal would overdraw trust, mark the alloc record as overdrawn.
         }
         if (sLedger = 'TRUST_BAL') then
         begin
            // if the original has cleared, check cleared trust funds
            if qryOldAlloc.FieldByName('CLEARED').AsString = 'Y' then
               cTrust:= ClearTrust(qryOldAlloc.FieldByName('FILEID').AsString)
            else
               // else check against uncleared trust funds
               cTrust:= UnClearedTrust(qryOldAlloc.FieldByName('FILEID').AsString);
            if (qryOldAlloc.FieldByName('AMOUNT').AsCurrency > cTrust) then
               ParamByname('OVERDRAWN').AsString:= 'Y'
            else
               ParamByname('OVERDRAWN').AsString:= 'N'
         end;

         ParamByName('TAXCODE').AsString := qryOldAlloc.FieldByName('TAXCODE').AsString;
         ParamByName('TAX').AsFloat := 0.0 - qryOldAlloc.FieldByName('TAX').AsFloat;
         ParamByName('SUNDRYTYPE').AsString := qryOldAlloc.FieldByName('SUNDRYTYPE').AsString;
         ParamByName('NCHEQREQ').AsString := qryOldAlloc.FieldByName('NCHEQREQ').AsString;
         ParamByName('BILLED').AsString := ABilled;

         { Added 8.10.2002 GG

         Add the nalloc of the original alloc as the rv_nalloc value for the new alloc record}
         ParamByName('RV_NALLOC').AsString := qryOldAlloc.FieldByName('NALLOC').AsString;

         ExecSQL;
         Close;

         { Added 8.10.2002 GG

         Update the original alloc setting the rv_nalloc value as the nalloc value of the new alloc record}
         qryAlloc:= TUniQuery.Create(nil);
         try
           qryAlloc.Connection:= dmAxiom.uniInsight;
           qryAlloc.SQL.Clear;
           qryAlloc.SQL.Add('update alloc set rv_nalloc = :rv_nalloc , billed = ''Y'', private = ''Y'' where nalloc = :nalloc');
           qryAlloc.ParamByName('NALLOC').AsString:= qryOldAlloc.FieldByName('NALLOC').AsString;
           qryAlloc.ParamByName('RV_NALLOC').AsString:= ParamByName('NALLOC').AsString;
           qryAlloc.ExecSQL;
         finally
           qryAlloc.Free
         end;

         if (sLedger = 'DEBTORS') or (sLedger = 'UNBILL_DISB') then
           cValue := 0 - ParamByName('AMOUNT').AsFloat
         else
           cValue := ParamByName('AMOUNT').AsFloat;

         MatterUpdate(ParamByName('NMATTER').AsInteger, sLedger, cValue);
         if (sLedger = 'TRUST_BAL') and (qryOldAlloc.FieldByName('CLEARED').AsString = 'Y') then
           MatterUpdate(ParamByName('NMATTER').AsInteger, 'CL_TRUST_BAL', cValue);

         // Reverse the invoice allocations
         if (ParamByName('NRECEIPT').AsString <> '') and IsAnticipated {(ParamByName('NMEMO').AsInteger > 0) } then
         begin
           with dmAxiom.qryInvoice do
           begin
             Close;
             SQL.Text := 'UPDATE NMEMO SET ';
             sComma := '';
             if dmAxiom.qryAllocsRV.ParamByName('FEE').AsFloat <> 0 then
             begin
               SQL.Add('FEES_PAID = (FEES_PAID-' + CurrToStrF(Abs(dmAxiom.qryAllocsRV.ParamByName('FEE').AsFloat), ffFixed, 15) + ')');
               sComma := ', ';
             end;
             if dmAxiom.qryAllocsRV.ParamByName('OUTLAY').AsFloat <> 0 then
             begin
               SQL.Add(sComma + 'DISB_PAID = (DISB_PAID-' + CurrToStrF(Abs(dmAxiom.qryAllocsRV.ParamByName('OUTLAY').AsFloat), ffFixed, 15) + ')');
               sComma := ', ';
             end;
             if dmAxiom.qryAllocsRV.ParamByName('SUNDRY').AsFloat <> 0 then
             begin
               SQL.Add(sComma + 'SUND_PAID = (SUND_PAID-' + CurrToStrF(Abs(dmAxiom.qryAllocsRV.ParamByName('SUNDRY').AsFloat), ffFixed, 15) + ')');
               sComma := ', ';
             end;
             SQL.Add(' WHERE NMEMO = '  + IntToStr(dmAxiom.qryAllocsRV.ParamByName('NMEMO').AsInteger));
             //Debug := True;
             ExecSQL;
             Close;
           end;
         end;
      end;
      Result := lNAlloc;
   end;
end;


function ReopenListLast(sTable: string): string;
begin
{  Returns the last entry in the reopenlist }
  with dmAxiom.qryOpenList do
  begin
    Close;
    ParamByName('P_Author').AsString := dmAxiom.UserID;
    ParamByName('P_Type').AsString := sTable;
    Open;
    if IsEmpty then
      ReopenListLast := ''
    else
      ReopenListLast := FieldByName('CODE').AsString;
    Close;
  end;
end;


procedure ReopenListSet(sTable: string; mnuReopen: TMenuItem); overload;
var
  mnuNewItem: TMenuItem;
  iCtr: integer;
begin
  for iCtr := 0 to mnuReopen.Count - 1 do
    mnuReopen.Delete(0);
  with dmAxiom.qryOpenList do
  begin
    Close;
    SQL.Clear;
     if sTable = 'MATTER' then
     begin
        SQL.Text := 'SELECT O.*, O.ROWID,P.SEARCH, M.SHORTDESCR, M.CLOSED '+
                    ' FROM OPENLIST O,MATTER M, PHONEBOOK P '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''MATTER'' AND O.CODE = M.FILEID '+
                    ' AND M.NCLIENT = P.NCLIENT '+
                    ' ORDER BY IDX ASC ';
     end;

     if sTable = 'CLIENT' then
     begin
        SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH '+
                    ' FROM OPENLIST O,CLIENT C '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''CLIENT'' AND O.CODE = C.NCLIENT '+
                    ' ORDER BY IDX ASC ';
     end;

     if sTable = 'PHONEBOOK' then
     begin
        SQL.Text := 'SELECT O.*, O.ROWID,P.SEARCH '+
                    ' FROM OPENLIST O, PHONEBOOK P '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''PHONEBOOK'' AND O.CODE = P.NNAME '+
                    ' ORDER BY IDX ASC ';
     end;

     if sTable = 'CREDITOR' then
     begin
        SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH '+
                    ' FROM OPENLIST O, CREDITOR C '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''CREDITOR'' AND O.CODE = C.NCREDITOR ';
     end;

     ParamByName('P_Author').AsString := dmAxiom.UserID;
     ParamByName('P_Type').AsString := sTable;
     Open;
     if IsEmpty then
       mnuReopen.Enabled := False
     else
       mnuReopen.Enabled := True;

     while not EOF do
     begin
       mnuNewItem := TMenuItem.Create(mnuReopen);
       mnuNewItem.AutoHotkeys := maManual;
       mnuReopen.Add(mnuNewItem);
       if sTable = 'MATTER' then
       begin
         mnuNewItem.Caption := FieldByName('CODE').AsString + ' <' + FieldByName('SEARCH').AsString + ' ' + FieldByName('SHORTDESCR').AsString+'>';
         if FieldByName('Closed').AsInteger = 0 then
            mnuNewItem.ImageIndex := 69
         else
            mnuNewItem.ImageIndex := 44; //65;
//         mnuNewItem.ImageIndex := 69;
         mnuNewItem.OnClick := frmDesktop.LoadMatter;
       end
       else
       begin
         mnuNewItem.Caption := FieldByName('CODE').AsString + ' <' + FieldByName('SEARCH').AsString+'>';
         if sTable = 'CLIENT' then
         begin
            mnuNewItem.OnClick := frmDesktop.LoadClient;
            mnuNewItem.ImageIndex := 70;
         end
         else
         begin
            mnuNewItem.OnClick := frmDesktop.LoadPhonebook;
            mnuNewItem.ImageIndex := 71;
         end;
       end;
       Next;
     end;
     Close;
   end;

end;

procedure ReopenListSet(sTable: string; mnuReopen: TPopupMenu); overload;
var
  mnuNewItem: TMenuItem;
  iCtr: integer;
begin
//  mnuReopen.Items.Clear;
  for iCtr := 0 to mnuReopen.Items.Count - 1 do
  mnuReopen.items.Delete(iCtr);
  with dmAxiom.qryOpenList do
  begin
    Close;
    SQL.Clear;
     if sTable = 'MATTER' then
     begin
        SQL.Text := 'SELECT O.*, O.ROWID,P.SEARCH,M.SHORTDESCR, M.CLOSED '+
                    ' FROM OPENLIST O,MATTER M, PHONEBOOK P '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''MATTER'' AND O.CODE = M.FILEID '+
                    ' AND M.NCLIENT = P.NCLIENT'+
                    ' ORDER BY IDX ASC ';
     end;

     if sTable = 'CLIENT' then
     begin
        SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH '+
                    ' FROM OPENLIST O,CLIENT C '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''CLIENT'' AND O.CODE = C.NCLIENT (+) '+
                    ' ORDER BY IDX ASC ';
     end;

     if sTable = 'PHONEBOOK' then
     begin
        SQL.Text := 'SELECT O.*, O.ROWID,P.SEARCH '+
                    ' FROM OPENLIST O, PHONEBOOK P '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''PHONEBOOK'' AND O.CODE = P.NNAME (+) '+
                    ' ORDER BY IDX ASC ';
     end;

     if sTable = 'CREDITOR' then
     begin
        SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH '+
                    ' FROM OPENLIST O, CREDITOR C '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''CREDITOR'' AND O.CODE = C.NCREDITOR (+) ';
     end;
     ParamByName('P_Author').AsString := dmAxiom.UserID;
     ParamByName('P_Type').AsString := sTable;
     Open;

     while not EOF do
     begin
       mnuNewItem := TMenuItem.Create(mnuReopen);
       mnuNewItem.AutoHotkeys := maManual;
       mnuReopen.Items.Add(mnuNewItem);
       if sTable = 'MATTER' then // speed me up please !!!
       begin
         mnuNewItem.Caption := FieldByName('CODE').AsString + ' <' + FieldByName('SEARCH').AsString + ' ' + FieldByName('SHORTDESCR').AsString+'>';
//         mnuNewItem.ImageIndex := 69;
         if FieldByName('Closed').AsInteger = 0 then
            mnuNewItem.ImageIndex := 69
         else
            mnuNewItem.ImageIndex := 44; //65;
         mnuNewItem.OnClick := frmDesktop.LoadMatter;
       end
       else
       begin
         mnuNewItem.Caption := FieldByName('CODE').AsString + ' <' + FieldByName('SEARCH').AsString+'>';
         if sTable = 'CLIENT' then
         begin
            mnuNewItem.OnClick := frmDesktop.LoadClient;
            mnuNewItem.ImageIndex := 70;
         end
         else
         begin
            mnuNewItem.OnClick := frmDesktop.LoadPhonebook;
            mnuNewItem.ImageIndex := 71;
         end;
       end;
       Next;
     end;
     Close;
   end;

end;

procedure ReopenListSet(sTable: string; mnuReopen: TdxBarMRUListItem); overload;
var
  iCtr: integer;
  TotalItems: integer;
begin
   TotalItems := mnuReopen.Items.Count;
   for iCtr := TotalItems - 1 downto 1 do
      mnuReopen.Items.Delete(iCtr);

   with dmAxiom.qryOpenList do
   begin
      Close;
      SQL.Clear;
      if sTable = 'MATTER' then
      begin
         SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH,M.SHORTDESCR, M.CLOSED '+
                     ' FROM OPENLIST O,MATTER M, CLIENT C '+
                     ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                     ' AND :P_Type = ''MATTER'' AND O.CODE = M.FILEID '+
                     ' AND M.NCLIENT = C.NCLIENT ORDER BY IDX ASC ';
      end;

      if sTable = 'CLIENT' then
      begin
         SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH '+
                     ' FROM OPENLIST O,CLIENT C '+
                     ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                     ' AND :P_Type = ''CLIENT'' AND O.CODE = C.CODE  ORDER BY IDX ASC ';
      end;

      if sTable = 'PHONEBOOK' then
      begin
         SQL.Text := 'SELECT O.*, O.ROWID,P.SEARCH '+
                     ' FROM OPENLIST O, PHONEBOOK P '+
                     ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                     ' AND :P_Type = ''PHONEBOOK'' AND O.CODE = P.NNAME  ORDER BY IDX ASC ';
      end;

      if sTable = 'CREDITOR' then
      begin
        SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH '+
                    ' FROM OPENLIST O, CREDITOR C '+
                    ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                    ' AND :P_Type = ''CREDITOR'' AND O.CODE = C.NCREDITOR (+) ';
      end;
       ParamByName('P_Author').AsString := dmAxiom.UserID;
       ParamByName('P_Type').AsString := sTable;
       Open;

       if sTable = 'DOCUMENT' then
       begin
         SQL.Text := 'SELECT O.*, O.ROWID,D.DOC_NAME '+
                     ' FROM OPENLIST O, DOC D '+
                     ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                     ' AND :P_Type = ''PHONEBOOK'' AND O.CODE = D.DOCID (+) '+
                     ' ORDER BY IDX ASC ';
       end;
 {      if IsEmpty then
          mnuReopen.Enabled := False
       else
          mnuReopen.Enabled := True;   }

       while not EOF do
       begin
          if sTable = 'MATTER' then // speed me up please !!!
          begin
             mnuReopen.ItemIndex := mnuReopen.Items.Add(FieldByName('CODE').AsString + ' <' + FieldByName('SEARCH').AsString + ' ' + FieldByName('SHORTDESCR').AsString + '>');
             if FieldByName('Closed').AsInteger = 0 then
               mnuReopen.ImageIndex := 69
             else
               mnuReopen.ImageIndex := 44; //65;
             mnuReopen.OnClick := frmDesktop.LoadMatter;
          end
          else
          begin
             mnuReopen.ItemIndex := mnuReopen.Items.Add(FieldByName('CODE').AsString + ' <' + FieldByName('SEARCH').AsString+'>');
             if sTable = 'CLIENT' then
             begin
               mnuReopen.ImageIndex := 70;
               mnuReopen.OnClick := frmDesktop.LoadClient;
             end
             else
             begin
               mnuReopen.ImageIndex := 71;
               mnuReopen.OnClick := frmDesktop.LoadPhonebook;
             end;
          end;
          Next;
       end;
       Close;
    end;
    mnuReopen.ItemIndex := 0;
end;

procedure ReopenListSet(sTable: string; mnuReopen: TdxBarSubItem; Category: integer); overload;
var
  iCtr,
  TotalItems,
  ThisTag: integer;
  menuReopen: TdxBarButton;
  NewItemLink : TdxBarItemLink;
  OldDir: string;

  procedure HandleMatter;
  begin
    // only load the menu when a valid MAtter exists, i.e. when ThisTag <> ' '

    ThisTag := StrToInt(MatterString(dmAxiom.qryOpenList.FieldByName('CODE').AsString, 'NMATTER'));
    if (ThisTag <> 0) then
    begin
       menuReopen := TdxBarButton.Create(nil);
       menuReopen.Tag := ThisTag;
       menuReopen.Caption := dmAxiom.qryOpenList.FieldByName('CODE').AsString + ' ' +  dmAxiom.qryOpenList.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryOpenList.FieldByName('SHORTDESCR').AsString;
       menuReopen.Category := Category;

       if dmAxiom.qryOpenList.FieldByName('Closed').AsInteger = 0 then
         menuReopen.Glyph.LoadFromFile('.\images\matter_16.bmp')  //  ImageIndex := 177
       else
         menuReopen.Glyph.LoadFromFile('.\images\matter_archive_16.bmp');   //       ImageIndex := 44; //65;

       menuReopen.Tag := StrToInt(MatterString(dmAxiom.qryOpenList.FieldByName('CODE').AsString, 'NMATTER'));

       menuReopen.OnClick := frmDesktop.LoadMatter;
    end;
  end;

  procedure HandleDocument;
  begin
    menuReopen := TdxBarButton.Create(nil);
    menuReopen.Caption := dmAxiom.qryOpenList.FieldByName('CODE').AsString + ' ' +  dmAxiom.qryOpenList.FieldByName('DOC_NAME').AsString;
    menuReopen.Category := Category;
    menuReopen.Glyph.LoadFromFile('.\images\doc_search_16.bmp');
    menuReopen.Tag := dmAxiom.qryOpenList.FieldByName('CODE').AsInteger;
    menuReopen.OnClick := frmDesktop.LoadDocument;
  end;

  procedure HandleClient;
  begin
    menuReopen := TdxBarButton.Create(nil);
    menuReopen.Caption := dmAxiom.qryOpenList.FieldByName('CLIENTCODE').AsString + ' ' +
      dmAxiom.qryOpenList.FieldByName('SEARCH').AsString;
    menuReopen.Category := Category;
    menuReopen.Glyph.LoadFromFile('.\images\client_16.bmp');
//                  menuReopen.ImageIndex := 178;
    menuReopen.Tag := dmAxiom.qryOpenList.FieldByName('CODE').AsInteger;
    menuReopen.OnClick := frmDesktop.LoadClient;
  end;

  procedure HandlePhoneBook;
  begin
    menuReopen := TdxBarButton.Create(nil);
    menuReopen.Caption := dmAxiom.qryOpenList.FieldByName('SEARCH').AsString;
    menuReopen.Category := Category;
    menuReopen.Glyph.LoadFromFile('.\images\contact_16.bmp');  //.ImageIndex := 71;
    menuReopen.Tag := dmAxiom.qryOpenList.FieldByName('CODE').AsInteger;
    menuReopen.OnClick := frmDesktop.LoadPhonebook;
  end;

  procedure HandleConflict;
  begin
    menuReopen := nil;
    if dmAxiom.qryOpenList.FieldByName('SEARCH_Text').AsString <> '' then
    begin
      menuReopen := TdxBarButton.Create(nil);
      menuReopen.Caption := dmAxiom.qryOpenList.FieldByName('SEARCH_Text').AsString;
      menuReopen.Category := Category;
      menuReopen.Glyph.LoadFromFile('.\images\contact_16.bmp');  //.ImageIndex := 71;
      menuReopen.Tag := dmAxiom.qryOpenList.FieldByName('CODE').AsInteger;
      menuReopen.OnClick := frmDesktop.LoadConflict;
    end;
  end;


begin
  TotalItems := mnuReopen.ItemLinks.Count;

  for iCtr := TotalItems - 1 downto 0 do
     mnuReopen.ItemLinks.Delete(iCtr);

  with dmAxiom.qryOpenList do
  begin
    Close;
    SQL.Clear;
    if sTable = 'MATTER' then
    begin
       SQL.Text := 'SELECT O.*, O.ROWID,M.TITLE,M.SHORTDESCR, M.NMATTER, M.CLOSED '+
                   ' FROM OPENLIST O,MATTER M '+
                   ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                   ' AND :P_Type = ''MATTER'' AND O.CODE = M.FILEID (+) '+
                   ' ORDER BY IDX ASC ';
    end;

{    if sTable = 'CLIENT' then
    begin
       SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH, C.CODE as CLIENTCODE'+
                   ' FROM OPENLIST O,CLIENT C '+
                   ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                   ' AND :P_Type = ''CLIENT'' AND O.CODE = C.NCLIENT (+) '+
                   ' ORDER BY IDX ASC '; }
     // 20 Sep 2018 AES superclient and entity security
     if sTable = 'CLIENT' then
     begin
       SQL.Text := 'SELECT O.*, O.ROWID, P.SEARCH, P.CLIENTID as CLIENTCODE'+
                   ' FROM OPENLIST O, PHONEBOOK P ';
       If (systemstring('locale_name') <> '') then
       begin
          SQL.Text := SQL.Text + ', phonebook_entity  ';
          SQL.Text := SQL.Text + ' where p.nname = phonebook_entity.nname and phonebook_entity.entity = :DefEntity ';
          SQL.Text := SQL.Text + ' and O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                                 ' AND :P_Type = ''CLIENT'' AND O.CODE = P.NCLIENT (+) ';
          if (dmAxiom.Security.Employee.ChangeEntity = true) then
             ParamByName('DefEntity').AsString := dmAxiom.Entity
          else
             ParamByName('DefEntity').AsString := dmAxiom.EmpEntity;

       end
       else
       begin
          SQL.Text := SQL.Text + ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                                 ' AND :P_Type = ''CLIENT'' AND O.CODE = P.NCLIENT (+) ';
       end;
       SQL.Text := SQL.Text + ' ORDER BY IDX ASC ';
     end;

    if sTable = 'PHONEBOOK' then
    begin
       SQL.Text := 'SELECT O.*, O.ROWID,P.SEARCH '+
                   ' FROM OPENLIST O, PHONEBOOK P '+
                   ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                   ' AND :P_Type = ''PHONEBOOK'' AND O.CODE = P.NNAME '+
                   ' ORDER BY IDX ASC ';
    end;

    if sTable = 'DOCUMENT' then
    begin
       SQL.Text := 'SELECT O.*, O.ROWID,D.DOC_NAME '+
                   ' FROM OPENLIST O, DOC D '+
                   ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                   ' AND :P_Type = ''DOCUMENT'' AND O.CODE = D.DOCID (+) '+
                   ' ORDER BY IDX ASC ';
    end;

    if sTable = ConflictTableName then
    begin
       SQL.Text := 'SELECT O.*, O.ROWID, con.Search_Text '+
                   ' FROM OPENLIST O ' +
                   ' left outer join Conflict Con on (O.Code = to_char(Con.NConflict)) '+
                   ' WHERE O.AUTHOR = :P_Author AND O.TYPE = ''' + Uppercase(ConflictTableName)+ ''' '+
                   ' ORDER BY IDX ASC ';
    end;

    ParamByName('P_Author').AsString := dmAxiom.UserID;
    if sTable <> ConflictTableName then
      ParamByName('P_Type').AsString := UpperCase(sTable);
    Open;

    if not EOF then
    begin
      NewItemLink := mnuReopen.ItemLinks.Add;
      NewItemLink.BeginGroup :=True;
    end;

    try
    OldDir := GetCurrentDir;
    SetCurrentDir(ExtractFilePath(Application.EXEName));
    while not EOF do
    begin
      // moved this to each IF test to prevent any orphans from appearing.
      if sTable = 'MATTER' then // speed me up please !!!
        HandleMatter
      else if sTable = 'DOCUMENT' then
        HandleDocument
      else if sTable = ConflictTableName then
        HandleConflict
      else if sTable = 'CLIENT' then
        HandleClient
      else
        HandlePhoneBook;

      if menuReOpen <> nil then
        mnuReopen.ItemLinks.Add.Item := menuReopen;
      Next;
    end;
    finally
      SetCurrentDir(OldDir);
    end;
  end;
end;

procedure ReopenListSet(sTable: string; mnuReopen: TdxBarPopupMenu; Category: integer); overload;
var
  iCtr: integer;
  TotalItems: integer;
  menuReopen: TdxBarButton;
begin
   TotalItems := mnuReopen.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 0 do
      mnuReopen.ItemLinks.Delete(iCtr);

   with dmAxiom.qryOpenList do
   begin
      Close;
      SQL.Clear;
      if sTable = 'MATTER' then
      begin
         SQL.Text := 'SELECT O.*, O.ROWID,M.TITLE,M.SHORTDESCR, M.CLOSED '+
                     ' FROM OPENLIST O,MATTER M '+
                     ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                     ' AND :P_Type = ''MATTER'' AND O.CODE = M.FILEID (+) '+
                     ' ORDER BY IDX ASC ';
      end;

      if sTable = 'CLIENT' then
      begin
         SQL.Text := 'SELECT O.*, O.ROWID,C.SEARCH '+
                     ' FROM OPENLIST O,CLIENT C '+
                     ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                     ' AND :P_Type = ''CLIENT'' AND O.CODE = C.NCLIENT (+) ' +
                     ' ORDER BY IDX ASC ';
      end;

      if sTable = 'PHONEBOOK' then
      begin
         SQL.Text := 'SELECT O.*, O.ROWID,P.SEARCH '+
                     ' FROM OPENLIST O, PHONEBOOK P '+
                     ' WHERE O.AUTHOR = :P_Author AND O.TYPE = :P_Type '+
                     ' AND :P_Type = ''PHONEBOOK'' AND O.CODE = P.NNAME (+) '+
                     ' ORDER BY IDX ASC ';
      end;
       ParamByName('P_Author').AsString := dmAxiom.UserID;
       ParamByName('P_Type').AsString := sTable;
       Open;

       while not EOF do
       begin
          menuReopen := TdxBarButton.Create(nil);
          if sTable = 'MATTER' then // speed me up please !!!
          begin
             menuReopen.Caption := FieldByName('TITLE').AsString + ' ' + FieldByName('SHORTDESCR').AsString;
//             menuReopen.Caption := FieldByName('CODE').AsString + ' <' + FieldByName('TITLE').AsString + ' ' + FieldByName('SHORTDESCR').AsString+'>';
             menuReopen.Category := Category;
//             mnuReopen.Hint := FieldByName('HINT').AsString;
             if FieldByName('Closed').AsInteger = 0 then
                menuReopen.ImageIndex := 69
             else
                menuReopen.ImageIndex := 44; //65;
//             menuReopen.ImageIndex := 69;
             try
               menuReopen.Tag := StrToInt(MatterString(FieldByName('CODE').AsString, 'NMATTER'));
             except
               //
             end;
             menuReopen.OnClick := frmDesktop.LoadMatter;
          end
          else
          begin
             menuReopen.Caption := FieldByName('SEARCH').AsString;
//             menuReopen.Caption := FieldByName('CODE').AsString + ' <' + FieldByName('SEARCH').AsString+'>';
             if sTable = 'CLIENT' then
             begin
               menuReopen.Category := Category;
               menuReopen.ImageIndex := 70;
               menuReopen.Tag := FieldByName('CODE').AsInteger;
               menuReopen.OnClick := frmDesktop.LoadClient;
             end
             else
             begin
               menuReopen.Category := Category;
               menuReopen.ImageIndex := 71;
               menuReopen.Tag := FieldByName('CODE').AsInteger;
               menuReopen.OnClick := frmDesktop.LoadPhonebook;
             end;
          end;
          mnuReopen.ItemLinks.Add.Item := menuReopen;
          Next;
       end;
    end;
//    mnuReopen.ItemIndex := 0;
end;

procedure ReopenListDelete(Table: string; Code: string);
begin
  with dmAxiom.qryNew do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM OPENLIST');
    SQL.Add('WHERE AUTHOR = :Author');
    SQL.Add('  AND TYPE = :Type');
    SQL.Add('  AND CODE = :Code');
    Params[0].AsString := dmAxiom.UserID; // Author
    Params[1].AsString := Table;             // Type (Table)
    Params[2].AsString := Code;              // Code
    ExecSQL;
    Close;
  end;
end;

procedure ReopenListUpdate(Table: string; Code: string);
var
  iIdx: integer;
begin
   if Code <> '' then
   begin
      with dmAxiom.qryNew do
      begin
        // See if this is already in the list
        SQL.Clear;
        SQL.Add('SELECT IDX');
        SQL.Add('FROM OPENLIST');
        SQL.Add('WHERE AUTHOR = :Author');
        SQL.Add('  AND TYPE = :Type');
        SQL.Add('  AND CODE = :Code');
        Params[0].AsString := dmAxiom.UserID; // Author
        Params[1].AsString := Table;             // Type (Table)
        Params[2].AsString := Code;              // Code
        Open;
        if not IsEmpty then
        begin
          // It already exists - put it at the top
          iIdx := FieldByName('IDX').AsInteger;
          Close;
          SQL.Clear;
          SQL.Add('UPDATE OPENLIST');
          SQL.Add('SET IDX = 0');
          SQL.Add('WHERE AUTHOR = :Author');
          SQL.Add('  AND TYPE = :Type');
          SQL.Add('  AND CODE = :Code');
          Params[0].AsString := dmAxiom.UserID; // Author
          Params[1].AsString := Table;             // Type (Table)
          Params[2].AsString := Code;              // Code
          ExecSQL;
          Close;
          // Move the items that were above it down the reopen list
          SQL.Clear;
          SQL.Add('UPDATE OPENLIST');
          SQL.Add('SET IDX = (IDX+1)');
          SQL.Add('WHERE AUTHOR = :Author');
          SQL.Add('  AND TYPE = :Type');
          SQL.Add('  AND IDX < :Idx');
          Params[0].AsString := dmAxiom.UserID; // Author
          Params[1].AsString := Table;             // Type (Table)
          Params[2].AsInteger := iIdx;             // Index of item now at top
          ExecSQL;
          Close;
        end
        else
        begin
          Close;
          // Move the existing items down the reopen list
          SQL.Clear;
          SQL.Add('UPDATE OPENLIST');
          SQL.Add('SET IDX = (IDX+1)');
          SQL.Add('WHERE AUTHOR = :Author');
          SQL.Add('  AND TYPE = :Type');
          Params[0].AsString := dmAxiom.UserID; // Author
          Params[1].AsString := Table;             // Type (Table)
          ExecSQL;
          Close;
          // Delete any which are now greater than reopen list length
          SQL.Clear;
          SQL.Add('DELETE FROM OPENLIST');
          SQL.Add('WHERE AUTHOR = :Author');
          SQL.Add('  AND TYPE = :Type');
          SQL.Add('  AND IDX > :Idx');
          Params[0].AsString := dmAxiom.UserID; // Author
          Params[1].AsString := Table;             // Type (Table)
          Params[2].AsInteger := dmAxiom.UserReOpenLength;  //  ReopenItems; // Maximum items
          ExecSQL;
          Close;
          // Now insert the new reopen item at the top of the list
          SQL.Clear;
          SQL.Add('INSERT INTO OPENLIST');
          SQL.Add('  (AUTHOR, TYPE, IDX, CODE)');
          SQL.Add('VALUES ');
          SQL.Add('  (:Author, :Type, 1, :Code)');
          Params[0].AsString := dmAxiom.UserID; // Author
          Params[1].AsString := Table;             // Type (Table)
          Params[2].AsString := Code;              // Code
          //pb-temp here to stop bug, shouldnt create searches longer than 40 chars
          if (length(code) <= 40) then
            begin
              ExecSQL;
              Close;
            end;
        end;
      end;
   end;
end;

procedure SettingDelete(sOwner: string; sItem: string); overload;
begin
  SettingDelete(dmAxiom.UserID, sOwner, sItem);
end;

procedure SettingDelete(sEmp: string; sOwner: string; sItem: string); overload;
begin
  try
    dmAxiom.qrySettingDelete.Close;
    dmAxiom.qrySettingDelete.ParamByName('Emp').AsString := sEmp;
    dmAxiom.qrySettingDelete.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingDelete.ParamByName('Item').AsString := sItem;
    dmAxiom.qrySettingDelete.ExecSQL;
    dmAxiom.qrySettingDelete.Close;
  except
    // Silent exception
  end;
end;

procedure SettingDelete(sEmp: string; sOwner: string; sItem: integer); overload;
begin
  try
    dmAxiom.qrySettingIntValueDelete.Close;
    dmAxiom.qrySettingIntValueDelete.ParamByName('Emp').AsString := sEmp;
    dmAxiom.qrySettingIntValueDelete.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingIntValueDelete.ParamByName('Item').AsInteger := sItem;
    dmAxiom.qrySettingIntValueDelete.ExecSQL;
    dmAxiom.qrySettingIntValueDelete.Close;
  except
    // Silent exception
  end;
end;


function SettingExists(sOwner: string; sItem: string):Boolean; overload;
begin
  Result := SettingExists(dmAxiom.UserID, sOwner, sItem);
end;

function SettingExists(sEmp: string; sOwner: string; sItem: string): Boolean; overload;
begin
  try
    dmAxiom.qrySettingLoad.Close();
    dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := sEmp;
    dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
    dmAxiom.qrySettingLoad.Open();
    try
      if(dmAxiom.qrySettingLoad.Eof) then
        Result := False
      else
        Result := True;
    finally
      dmAxiom.qrySettingLoad.Close();
    end;
  except
    Result := False;
  end;
end;

function SettingExists(sEmp: string; sOwner: string; AIntValue: integer): Boolean; overload;
begin
  try
    dmAxiom.qrySettingIntValueLoad.Close;
    dmAxiom.qrySettingIntValueLoad.ParamByName('Emp').AsString := sEmp;
    dmAxiom.qrySettingIntValueLoad.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingIntValueLoad.ParamByName('Item').AsInteger := AIntValue;
    dmAxiom.qrySettingIntValueLoad.Open();
    try
      if(dmAxiom.qrySettingIntValueLoad.Eof = True) then
        Result := False
      else
        Result := True;
    finally
      dmAxiom.qrySettingIntValueLoad.Close();
    end;
  except
    Result := False;
  end;
end;

function SettingLoadBoolean(sOwner: string; sItem: string): boolean; overload;
begin
  SettingLoadBoolean := SettingLoadBoolean(dmAxiom.UserID, sOwner, sItem);
end;

function SettingLoadGridBoolean(sOwner: string; sItem: string): boolean;
//var
//  ifound : Boolean;
begin
  try
    dmAxiom.qrySettingLoad.Close;
    dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := dmAxiom.UserID;
    dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
    dmAxiom.qrySettingLoad.Open();
    try
      if(dmAxiom.qrySettingLoad.Eof = True) then
        Result := True
      else
        Result := (dmAxiom.qrySettingLoadIntValue.Value = 1);
    finally
      dmAxiom.qrySettingLoad.Close();
    end;
  except
    Result := False;
  end;
end;

function SettingLoadBoolean(sEmp: string; sOwner: string; sItem: string): boolean;
//var
//  ifound : Boolean;
begin
  try
    dmAxiom.qrySettingLoad.Close;
    dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := sEmp;
    dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
    dmAxiom.qrySettingLoad.Open();
    try
      if(dmAxiom.qrySettingLoad.Eof = True) then
        Result := False
      else
        Result := (dmAxiom.qrySettingLoadIntValue.Value = 1);
    finally
      dmAxiom.qrySettingLoad.Close();
    end;
  except
    Result := False;
  end;

(*
  // We use the integer value of the setting to store
  // the "boolean". 1 = True; Otherwise it is False;


// buffer this table
  Result := False; // MGD - Allways set the result

  if  dmTableCache.vtSettings.State = dsInactive then
      dmTableCache.LoadVirtualTable(dmTableCache.vtSettings,'SETTINGS','EMP = ''' + semp + '''');

  // MGD - the use of DataSet.Locate is much more elegant than the loop below..
  ifound := dmTableCache.vtSettings.Locate('EMP;OWNER;ITEM',VarArrayOf([sEmp,sOwner,sItem]),[loCaseInsensitive]);
  if(ifound) then
    Result := dmTableCache.vtSettings.FieldByName('INTVALUE').AsInteger = 1;

{   with dmTableCache.vtSettings do
   begin
    ifound := False;
    Result := False;
    first;
    while not EOF and not ifound do
    begin
        if (FieldByName('EMP').AsString = sEmp)
        and (FieldByName('OWNER').AsString = sOwner)
        and (FieldByName('ITEM').AsString = sItem) then
        begin
            if FieldByName('INTVALUE').AsInteger = 1 then
               Result := True
            else
               Result := False;

                ifound := True;
        end;
        Next;
    end;

   end;
}
{  with dmAxiom.qrySettingLoad do
  begin
    ParamByName('Emp').AsString := sEmp;
    ParamByName('Owner').AsString := sOwner;
    ParamByName('Item').AsString := sItem;
    Open;
    if not IsEmpty then
    begin
      if FieldByName('INTVALUE').AsInteger = 1 then
        Result := True
      else
        Result := False;
    end
    else
      Result := False;
    Close;
  end;}*)
end;

function SettingLoadInteger(sOwner: string; sItem: string): integer; overload;
begin
  SettingLoadInteger := SettingLoadInteger(dmAxiom.UserID, sOwner, sItem);
end;

function SettingLoadGroup(sOwner: string; sItem: string): integer; overload;
begin
  try
    dmAxiom.qrySettingLoad.Close();
    dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := dmAxiom.UserID;
    dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
    dmAxiom.qrySettingLoad.Open();
    try
      if (dmAxiom.qrySettingLoad.Eof) then
        Result := -1
      else
        Result := dmAxiom.qrySettingLoadIntValue.AsInteger;
    finally
      dmAxiom.qrySettingLoad.Close();
    end;
  except
    Result := -1;
  end;
end;

function SettingLoadInteger(sEmp: string; sOwner: string; sItem: string): integer; overload;
//   var ifound : Boolean;
begin
  try
    dmAxiom.qrySettingLoad.Close();
    dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := sEmp;
    dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
    dmAxiom.qrySettingLoad.Open();
    try
      if(dmAxiom.qrySettingLoad.Eof) then
        Result := 0
      else
        Result := dmAxiom.qrySettingLoadIntValue.AsInteger;
    finally
      dmAxiom.qrySettingLoad.Close();
    end;
  except
    Result := 0;
  end;

(*
// buffer this table
  Result := 0; // MGD - Set result
  if  dmTableCache.vtSettings.State = dsInactive then
      dmTableCache.LoadVirtualTable(dmTableCache.vtSettings,'SETTINGS','EMP = ''' + semp + '''');

  // MGD - the use of DataSet.Locate is much more elegant than the loop below..
  ifound := dmTableCache.vtSettings.Locate('EMP;OWNER;ITEM',VarArrayOf([sEmp,sOwner,sItem]),[loCaseInsensitive]);
  if(ifound) then
    Result := dmTableCache.vtSettings.FieldByName('INTVALUE').AsInteger;

{   with dmTableCache.vtSettings do
   begin
    ifound := False;
    result := 0;
    first;
    while not EOF and not ifound do
    begin
        if (FieldByName('EMP').AsString = sEmp)
        and (FieldByName('OWNER').AsString = sOwner)
        and (FieldByName('ITEM').AsString = sItem) then
        begin
            Result := FieldByName('INTVALUE').AsInteger;
            ifound := True;
        end;
        Next;
    end;

   end;
}



{  with dmAxiom.qrySettingLoad do
  begin
    ParamByName('Emp').AsString := sEmp;
    ParamByName('Owner').AsString := sOwner;
    ParamByName('Item').AsString := sItem;
    Open;
    if not IsEmpty then
      Result := FieldByName('INTVALUE').AsInteger
    else
      Result := 0;
    Close;
  end; }*)
end;

function SettingLoadString(sOwner: string; sItem: string): string; overload;
begin
  SettingLoadString := SettingLoadString(dmAxiom.UserID, sOwner, sItem);
end;

function SettingLoadSort(sOwner: string; sItem: string): TcxDataSortOrder; overload;
begin
   Result := null;
   try
      dmAxiom.qrySettingLoad.Close();
      dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := dmAxiom.UserID;
      dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
      dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
      dmAxiom.qrySettingLoad.Open();
      try
        // rb this was driving me nuts!

        if dmAxiom.qrySettingLoadVALUE.AsVariant = null then
        begin
           Result := null;
                exit;
        end;
         Result := dmAxiom.qrySettingLoadVALUE.AsVariant;
      finally
         dmAxiom.qrySettingLoad.Close();
      end;
   except
     //
   end;
end;

function SettingLoadString(sEmp: string; sOwner: string; sItem: string): string; overload;
//   var ifound : Boolean;
begin
  try
    dmAxiom.qrySettingLoad.Close();
    dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := sEmp;
    dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
    dmAxiom.qrySettingLoad.Open();
    try
      if(dmAxiom.qrySettingLoad.Eof) then
        Result := ''
      else
        Result := dmAxiom.qrySettingLoadVALUE.AsString;
    finally
      dmAxiom.qrySettingLoad.Close();
    end;
  except
    Result := '';
  end;
  (*

// buffer this table
  Result := ''; // MGD - If result not reset, returns last value..
  if  dmTableCache.vtSettings.State = dsInactive then
      dmTableCache.LoadVirtualTable(dmTableCache.vtSettings,'SETTINGS','EMP = ''' + semp + '''');

  // MGD - the use of DataSet.Locate is much more elegant than the loop below..
  ifound := dmTableCache.vtSettings.Locate('EMP;OWNER;ITEM',VarArrayOf([sEmp,sOwner,sItem]),[loCaseInsensitive]);
  if(ifound) then
    Result := dmTableCache.vtSettings.FieldByName('VALUE').AsString;
{   with dmTableCache.vtSettings do
   begin
    ifound := False;
    first;
    while not EOF and not ifound do
    begin
        if (FieldByName('EMP').AsString = sEmp)
        and (FieldByName('OWNER').AsString = sOwner)
        and (FieldByName('ITEM').AsString = sItem) then
        begin
            Result := FieldByName('VALUE').AsString;
            ifound := True;
        end;
        Next;
    end;

   end;      }

  //with dmAxiom.qrySettingLoad do
  //begin
  //  ParamByName('Emp').AsString := sEmp;
  //  ParamByName('Owner').AsString := sOwner;
  //  ParamByName('Item').AsString := sItem;
  //  Open;
  //  if not IsEmpty then
  //    Result := FieldByName('VALUE').AsString
  //  else
  //    Result := '';
  //  Close;
  //end;*)
end;

function SettingLoadString(sOwner: string; sItem: integer): string; overload;
begin
  SettingLoadString := SettingLoadString(dmAxiom.UserID, sOwner, sItem);
end;

function SettingLoadString(sEmp: string; sOwner: string; sItem: integer): string; overload;
begin
  try
    dmAxiom.qrySettingIntValueLoad.Close;
    dmAxiom.qrySettingIntValueLoad.ParamByName('Emp').AsString := sEmp;
    dmAxiom.qrySettingIntValueLoad.ParamByName('Owner').AsString := sOwner;
    dmAxiom.qrySettingIntValueLoad.ParamByName('Item').AsInteger := sItem;
    dmAxiom.qrySettingIntValueLoad.Open();
    try
      if(dmAxiom.qrySettingIntValueLoad.Eof) then
        Result := ''
      else
        Result := dmAxiom.qrySettingIntValueLoadITEM.Value;
    finally
      dmAxiom.qrySettingIntValueLoad.Close();
    end;
  except
    Result := '';
  end;
end;

procedure SettingLoadStream(sEmp: string; sOwner: string; AView: TcxGridDBTableView ); overload;
var
   AOptions: TcxGridStorageOptions;
   bStream: TStream;
   ASaveViewName: string;
begin
   try
      dmAxiom.qrySettings.Close;
      dmAxiom.qrySettings.ParamByName('emp').AsString := sEmp;
      dmAxiom.qrySettings.ParamByName('owner').AsString := sOwner;
      dmAxiom.qrySettings.Open;

      AOptions := [];
      ASaveViewName := sOwner;
      bStream := dmAxiom.qrySettings.CreateBlobStream(dmAxiom.qrySettings.FieldByname('options'), bmRead);

      AView.RestoreFromStream(bStream, False, False, AOptions, ASaveViewName);
      bStream.free;
   except
      // Silent exception
   end;
end;

procedure SettingLoadStream(sEmp: string; sOwner: string; AView: TcxGridTableView ); overload;
var
   AOptions: TcxGridStorageOptions;
   bStream: TStream;
   ASaveViewName: string;
begin
   try
      dmAxiom.qrySettings.Close;
      dmAxiom.qrySettings.ParamByName('emp').AsString := sEmp;
      dmAxiom.qrySettings.ParamByName('owner').AsString := sOwner;
      dmAxiom.qrySettings.Open;
//      dmAxiom.qrySettings.Edit;

      AOptions := [];
      ASaveViewName := sOwner;
      bStream := dmAxiom.qrySettings.CreateBlobStream(dmAxiom.qrySettings.FieldByname('options'), bmRead);
//      if (bStream.Size > 0) then
         AView.RestoreFromStream(bStream, False, False, AOptions, ASaveViewName);
      bStream.free;
   except
      // Silent exception
   end;
end;

procedure SettingSave(sOwner: string; sItem: string; bValue: boolean); overload;
begin
  SettingSave(dmAxiom.UserID, sOwner, sItem, bValue);
end;

procedure SettingSave(sOwner: string; sItem: string; sValue: TcxDataSortOrder); overload;
begin
   SettingSave(dmAxiom.UserID, sOwner, sItem, sValue);
end;

procedure SettingSave(sEmp: string; sOwner: string; sItem: string; bValue: boolean); overload;
begin
  if bValue then
    SettingSave(sEmp, sOwner, sItem, 1)
  else
    SettingDelete(sEmp, sOwner, sItem);
end;

procedure SettingSaveBoolean(sOwner: string; sItem: string; bValue: boolean);
begin
   if dmAxiom.bShutDown = False then
   begin
      try
         if dmAxiom.uniInsight.Connected then
         begin
            dmAxiom.procSettingSave.Close;
            dmAxiom.procSettingSave.ParamByName('P_Emp').AsString := dmAxiom.UserID;
            dmAxiom.procSettingSave.ParamByName('P_Owner').AsString := sOwner;
            dmAxiom.procSettingSave.ParamByName('P_Item').AsString := sItem;
            dmAxiom.procSettingSave.ParamByName('P_Value').Value := Null;
            if bValue then
               dmAxiom.procSettingSave.ParamByName('P_IntValue').AsInteger := 1
            else
               dmAxiom.procSettingSave.ParamByName('P_IntValue').AsInteger := 0;
            dmAxiom.procSettingSave.Execute;
            dmAxiom.procSettingSave.Close;
         end;
      except
       // Silent exception
      end;
   end;
end;

procedure SettingSave(sOwner: string; sItem: string; iValue: integer); overload;
begin
  SettingSave(dmAxiom.UserID, sOwner, sItem, iValue);
end;

procedure SettingSave(sEmp: string; sOwner: string; sItem: string; iValue: integer); overload;
begin
   if dmAxiom.bShutDown = False then
   begin
      try
         if dmAxiom.uniInsight.Connected then
         begin
            dmAxiom.procSettingSave.Close;
            dmAxiom.procSettingSave.ParamByName('P_Emp').AsString := sEmp;
            dmAxiom.procSettingSave.ParamByName('P_Owner').AsString := sOwner;
            dmAxiom.procSettingSave.ParamByName('P_Item').AsString := sItem;
            dmAxiom.procSettingSave.ParamByName('P_Value').Value := Null;
            dmAxiom.procSettingSave.ParamByName('P_IntValue').AsInteger := iValue;
            dmAxiom.procSettingSave.Execute;
            dmAxiom.procSettingSave.Close;
         end;
      except
       // Silent exception
      end;
   end;
end;

procedure SettingSave(sEmp: string; sOwner: string; sItem: string; sValue: TcxDataSortOrder); overload;
begin
   if dmAxiom.bShutDown = False then
   begin
      try
         if dmAxiom.uniInsight.Connected then
         begin
            dmAxiom.procSettingSave.Close;
            dmAxiom.procSettingSave.ParamByName('P_Emp').AsString := sEmp;
            dmAxiom.procSettingSave.ParamByName('P_Owner').AsString := sOwner;
            dmAxiom.procSettingSave.ParamByName('P_Item').AsString := sItem;
            dmAxiom.procSettingSave.ParamByName('P_Value').Value := Null;
            dmAxiom.procSettingSave.ParamByName('P_IntValue').Value := sValue;
            dmAxiom.procSettingSave.Execute;
            dmAxiom.procSettingSave.Close;
         end;
      except
       // Silent exception
      end;
   end;
end;

procedure SettingSave(sOwner: string; sItem: string; sValue: string); overload;
begin
  SettingSave(dmAxiom.UserID, sOwner, sItem, sValue);
end;

procedure SettingSave(sEmp: string; sOwner: string; sItem: string; sValue: string); overload;
begin
   if dmAxiom.bShutDown = False then
   begin
      try
         if dmAxiom.uniInsight.Connected then
         begin
            dmAxiom.procSettingSave.Close;
            dmAxiom.procSettingSave.ParamByName('P_Emp').AsString := sEmp;
            dmAxiom.procSettingSave.ParamByName('P_Owner').AsString := sOwner;
            dmAxiom.procSettingSave.ParamByName('P_Item').AsString := sItem;
            dmAxiom.procSettingSave.ParamByName('P_Value').AsString := sValue;
            dmAxiom.procSettingSave.ParamByName('P_IntValue').Value := Null;
            dmAxiom.procSettingSave.Execute;
            dmAxiom.procSettingSave.Close;
         end;
      except
       // Silent exception
      end;
   end;
end;

procedure SettingSaveStream(sEmp: string; sOwner: string; AView: TcxGridDBTableView ); overload;
var
   AOptions: TcxGridStorageOptions;
   bStream: TStream;
   ASaveViewName: string;
begin
   if dmAxiom.bShutDown = False then
   begin
      try
         dmAxiom.qrySettings.Close;
         dmAxiom.qrySettings.ParamByName('emp').AsString := sEmp;
         dmAxiom.qrySettings.ParamByName('owner').AsString := sOwner;
         dmAxiom.qrySettings.Open;
         if dmAxiom.qrySettings.RecordCount > 0 then
            dmAxiom.qrySettings.Edit
         else
            dmAxiom.qrySettings.Append;

         dmAxiom.qrySettings.FieldByname('emp').AsString := sEmp;
         dmAxiom.qrySettings.FieldByname('owner').AsString := sOwner;
         AOptions := [];
         ASaveViewName := sOwner;
         bStream := dmAxiom.qrySettings.CreateBlobStream(dmAxiom.qrySettings.FieldByname('options'), bmReadWrite);
         AView.StoreToStream(bStream, AOptions, ASaveViewName);
         bStream.free;
         dmAxiom.qrySettings.Post;
         dmAxiom.qrySettings.Close;
      except
         // Silent exception
      end;
   end;
end;

procedure SettingSave(sEmp: string; sOwner: string; sItem: string; sValue: string; iValue: integer); overload;
begin
  if dmAxiom.bShutDown = False then
  begin
     try
       dmAxiom.procSettingSave.Close;
       dmAxiom.procSettingSave.ParamByName('P_Emp').AsString := sEmp;
       dmAxiom.procSettingSave.ParamByName('P_Owner').AsString := sOwner;
       dmAxiom.procSettingSave.ParamByName('P_Item').AsString := sItem;
       dmAxiom.procSettingSave.ParamByName('P_Value').AsString := sValue;
       dmAxiom.procSettingSave.ParamByName('P_IntValue').Value := iValue;
       dmAxiom.procSettingSave.Execute;
       dmAxiom.procSettingSave.Close;
     except
       // Silent exception
     end;
  end;
end;

procedure SettingSaveAll(sOwner: string; sItem: string; sValue: string; iValue: integer); overload;
begin
  SettingSaveAll(dmAxiom.UserID, sOwner, sItem, sValue, iValue);
end;

procedure SettingSaveAll(sEmp: string; sOwner: string; sItem: string; sValue: string; iValue: integer); overload;
begin
  if dmAxiom.bShutDown = False then
  begin
     try
       dmAxiom.procSettingSave.Close;
       dmAxiom.procSettingSave.ParamByName('P_Emp').AsString := sEmp;
       dmAxiom.procSettingSave.ParamByName('P_Owner').AsString := sOwner;
       dmAxiom.procSettingSave.ParamByName('P_Item').AsString := sItem;
       dmAxiom.procSettingSave.ParamByName('P_Value').AsString := sValue;
       dmAxiom.procSettingSave.ParamByName('P_IntValue').AsInteger := iValue;
       dmAxiom.procSettingSave.Execute;
       dmAxiom.procSettingSave.Close;
     except
       // Silent exception
     end;
  end;
end;

function GlobalSettingLoadBoolean(sEmp: String; sOwner: String; sItem: string): boolean;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  try
    qryLookup.Connection := dmAxiom.uniInsight;
    qryLookup.SQL.Text := 'SELECT INTVALUE FROM SETTINGS WHERE EMP = :EMP AND OWNER = :OWNER AND ITEM = :ITEM';
    qryLookup.Params[0].AsString := sEmp;
    qryLookup.Params[1].AsString := sOwner;
    qryLookup.Params[2].AsString := sItem;
    qryLookup.Open();
    if(qryLookup.Eof) then
      Result := False
    else
      Result := qryLookup.Fields[0].AsInteger = 1;
    qryLookup.Close();
  finally
    qryLookup.Free;
  end;
end;

function GlobalSettingLoadString(sEmp: String; sOwner: String; sItem: string): String;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  try
    qryLookup.Connection := dmAxiom.uniInsight;
    qryLookup.SQL.Text := 'SELECT VALUE FROM SETTINGS WHERE EMP = :EMP AND OWNER = :OWNER AND ITEM = :ITEM';
    qryLookup.Params[0].AsString := sEmp;
    qryLookup.Params[1].AsString := sOwner;
    qryLookup.Params[2].AsString := sItem;
    qryLookup.Open();
    if(qryLookup.Eof) then
      Result := ''
    else
      Result := qryLookup.Fields[0].AsString;
    qryLookup.Close();
  finally
    qryLookup.Free;
  end;
end;

function GlobalSettingLoadInteger(sEmp: String; sOwner: String; sItem: string): Integer;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  try
    qryLookup.Connection := dmAxiom.uniInsight;
    qryLookup.SQL.Text := 'SELECT INTVALUE FROM SETTINGS WHERE EMP = :EMP AND OWNER = :OWNER AND ITEM = :ITEM';
    qryLookup.Params[0].AsString := sEmp;
    qryLookup.Params[1].AsString := sOwner;
    qryLookup.Params[2].AsString := sItem;
    qryLookup.Open();
    if(qryLookup.Eof) then
      Result := 0
    else
      Result := qryLookup.Fields[0].AsInteger;
    qryLookup.Close();
  finally
    qryLookup.Free;
  end;
end;


function ShortcutDesc(iImageIndex: integer): string;
begin
  with dmAxiom.qryShortcut do
  begin
    SQL.Text := 'SELECT DESCR FROM SHORTCUT WHERE IMAGEINDEX = :IMAGEINDEX';
    Params[0].AsInteger := iImageIndex;
    Open;
    if not IsEmpty then
      Result := FieldByName('DESCR').AsString
    else
      Result := '';
    Close;
  end;
end;


procedure Sleep; external 'kernel32.dll' name 'Sleep';

function SpaceText(cAmount: currency; iMagnitude: integer): string;
var
  iDigit: integer;
begin
  if cAmount < iMagnitude then
    SpaceText := 'ZERO  '
  else
  begin
    iDigit := (Trunc(cAmount) div iMagnitude) mod 10;
    case iDigit of
      0: SpaceText := 'ZERO  ';
      1: SpaceText := 'ONE   ';
      2: SpaceText := 'TWO   ';
      3: SpaceText := 'THREE ';
      4: SpaceText := 'FOUR  ';
      5: SpaceText := 'FIVE  ';
      6: SpaceText := 'SIX   ';
      7: SpaceText := 'SEVEN ';
      8: SpaceText := 'EIGHT ';
      9: SpaceText := 'NINE  ';
    end; // case
  end;
end;

function StarText(cAmount: currency; iMagnitude: integer): string;
var
  iDigit: integer;
begin
  if cAmount < iMagnitude then
    StarText := 'ZERO**'
  else
  begin
    iDigit := (Trunc(cAmount) div iMagnitude) mod 10;
    case iDigit of
      0: StarText := 'ZERO**';
      1: StarText := 'ONE***';
      2: StarText := 'TWO***';
      3: StarText := 'THREE*';
      4: StarText := 'FOUR**';
      5: StarText := 'FIVE**';
      6: StarText := 'SIX***';
      7: StarText := 'SEVEN*';
      8: StarText := 'EIGHT*';
      9: StarText := 'NINE**';
    end; // case
  end;
end;

function StarNumber(cAmount: currency; iMagnitude: integer): string;
var
  iDigit: integer;
begin
  if cAmount < iMagnitude then
    StarNumber := '**NIL**'
  else
  begin
    iDigit := (Trunc(cAmount) div iMagnitude) mod 10;
    case iDigit of
      0: StarNumber := '**Nil**';
      1: StarNumber := '**ONE**';
      2: StarNumber := '**TWO**';
      3: StarNumber := '*THREE*';
      4: StarNumber := '*FOUR**';
      5: StarNumber := '*FIVE**';
      6: StarNumber := '**SIX**';
      7: StarNumber := '*SEVEN*';
      8: StarNumber := '*EIGHT*';
      9: StarNumber := '*NINE**';
    end; // case
  end;
end;


procedure StringPopulate(Target: TStrings; Table, Field: string); overload;
var
  qryList: TUniQuery;
begin
  Target.Clear;
  qryList := TUniQuery.Create(nil);
  with qryList do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT ' + Field + ' FROM ' + Table + ' ORDER BY ' + Field;
    Open;

    while not EOF do
    begin
      Target.Add(FieldByName(Field).AsString);
      Next;
    end;
    Close;
  end;
  qryList.Free;
end;


procedure StringPopulate(Target: TStrings; Table, Field, Where: string); overload;
var
  qryList: TUniQuery;
begin
  Target.Clear;
  qryList := TUniQuery.Create(nil);
  with qryList do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT ' + Field + ' FROM ' + Table + ' A WHERE ' + Where + ' ORDER BY ' + Field;
    Open;

    while not EOF do
    begin
      Target.Add(FieldByName(Field).AsString);
      Next;
    end;
    Close;
  end;
  qryList.Free;
end;

procedure StringPopulateList(TargetA, TargetB: TStrings; Table, FieldA, FieldB: string); overload;
var
  qryList: TUniQuery;
begin
  TargetA.Clear;
  TargetB.Clear;
  qryList := TUniQuery.Create(nil);
  with qryList do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT ' + FieldA + ',' + FieldB + ' FROM ' + Table + ' ORDER BY ' + FieldA;
    Open;

    while not EOF do
    begin
      TargetA.Add(FieldByName(FieldA).AsString);
      TargetB.Add(FieldByName(FieldB).AsString);
      Next;
    end;
    Close;
  end;
  qryList.Free;
end;

procedure SuburbSave(sSuburb, sState, sPostcode: string);
begin
  with dmAxiom.qryNew do
  begin
    Close;
    SQL.Text := 'SELECT * FROM POSTCODE WHERE SUBREAL = :SUBREAL AND STATE = :STATE';
    Params[0].AsString := Uppercase(sSuburb);
    Params[1].AsString := sState;
    Open;
    if IsEmpty then
    begin
      Close;
      SQL.Text := 'INSERT INTO POSTCODE VALUES (' + QuotedStr(sSuburb) + ', ' + QuotedStr(sPostcode) + ', ' + QuotedStr(Uppercase(sSuburb)) + ', ' + QuotedStr(sState) + ')';
      ExecSQL;
      Close;
    end
    else
      if FieldByName('PCODE').AsString <> sPostcode then
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE POSTCODE SET');
        SQL.Add('PCODE = :PCODE');
        SQL.Add('WHERE SUBREAL = :SUBREAL');
        SQL.Add('  AND STATE = :STATE');
        Params[0].AsString := sPostcode;
        Params[1].AsString := Uppercase(sSuburb);
        Params[2].AsString := sState;
        ExecSQL;
        Close;
      end;
    Close;
  end;
end;

procedure SundryInsert(NMatter: integer; SundryType: string; Reason: string;
                       Amount: Currency; AUnits: integer; ANMemo: integer);
var
  qryThisMatter: TUniQuery;
  dAmount: Double;
begin
  qryThisMatter := TUniQuery.Create(nil);
  with qryThisMatter do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT PARTNER, AUTHOR, FILEID, NCLIENT FROM MATTER WHERE NMATTER = :NMATTER';
    Params[0].AsInteger := NMatter;
    Open;
  end;

  if not qryThisMatter.IsEmpty then
    try
      with dmAxiom.qrySundryInsert do
      begin
        ParamByName('ACCT').AsString := dmAxiom.Entity;
        ParamByName('CREATED').AsDateTime := Now;
        ParamByName('DESCR').AsString := Reason;
        ParamByName('NMATTER').AsInteger := NMatter;
        ParamByName('NCLIENT').AsInteger := qryThisMatter.FieldByName('NCLIENT').AsInteger;
        ParamByName('PERUNIT').AsFloat := TableCurrency('SUNDRYTYPE', 'CODE', SundryType, 'RATE');
        ParamByName('UNITS').AsInteger := AUnits;
        ParamByName('TYPE').AsString := SundryType;
        ParamByName('FILEID').AsString := qryThisMatter.FieldByName('FILEID').AsString;
        ParamByName('TAXCODE').AsString := dmAxiom.DefaultTax;
        dAmount := Amount;
        ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', dmAxiom.DefaultTax, Now);
        ParamByName('AMOUNT').AsFloat := dAmount;
        if (ANMemo > 0) then
           ParamByName('NMEMO').AsInteger := ANMemo;
        ExecSQL;
        Close;

        MatterUpdate(NMatter, 'UNBILL_SUND', dAmount);
        if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
          PostLedgers(Date
            , dAmount
            , qryThisMatter.FieldByName('FILEID').AsString
            , 'SUNDRY'
            , ParamByName('NSUNDRY').AsInteger
            , Reason
            , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
            , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
            , qryThisMatter.FieldByName('AUTHOR').AsString
            , dmAxiom.DefaultTax);
      end;
    except
      On E:Exception do
        MsgErr('Error occured trying to insert sundry item' + #13 + #13 + E.Message);
    end;

  qryThisMatter.Close;
  qryThisMatter.Free;
end;


function SystemDate(sField: string): TDateTime;
begin
  with dmAxiom.qrySysfile do
  begin
    SQL.Text := 'SELECT ' + sField + ' FROM SYSTEMFILE';
    Open;
    SystemDate := FieldByName(sField).AsDateTime;
    Close;
  end;
end;

function SystemInteger(sField: string): integer;
begin
  with dmAxiom.qrySysfile do
  begin
    SQL.Text := 'SELECT ' + sField + ' FROM SYSTEMFILE';
    Open;
    SystemInteger := FieldByName(sField).AsInteger;
    Close;
  end;
end;

function SystemString(sField: string): string;
begin
   with dmAxiom.qrySysfile do
   begin
      SQL.Text := 'SELECT ' + sField + ' FROM SYSTEMFILE';
      try
         Open;
         SystemString := FieldByName(sField).AsString;
         Close;
      except
      //
      end;
   end;
end;

function SystemFloat(sField: string): double;
begin
  with dmAxiom.qrySysfile do
  begin
    SQL.Text := 'SELECT ' + sField + ' FROM SYSTEMFILE';
    Open;
    SystemFloat := FieldByName(sField).AsFloat;
    Close;
  end;
end;

function SystemVal(Field: string): boolean;
begin
  Result := SystemString(Field) = 'Y';
end;

function TableInteger(Table, LookupField, LookupValue, ReturnField: string): integer; overload;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
    Params[0].AsString := LookupValue;
    Open;
    Result := Fields[0].AsInteger;
    Close;
  end;
  qryLookup.Free;
end;

function TableIntegerx(Table, LookupField, LookupValue, ExtraWhere, ReturnField: string): integer; overload;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField+ ' AND ' + ExtraWhere;
    Params[0].AsString := LookupValue;
    Open;
    Result := Fields[0].AsInteger;
    Close;
  end;
  qryLookup.Free;
end;

function GetNMemoRef(sField, sRefNo: string) : string;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    // disable entity checking
    SQL.Text := 'SELECT ' + sField + ' FROM NMEMO WHERE RV_TYPE = ''N'' AND BANK_ACCT=:ENTITY AND REFNO=:REFNO';
    ParambyName('REFNO').AsString := sRefNo;
    ParamByName('ENTITY').AsString := dmAxiom.Entity;
    Open;
    Result := Fields[0].AsString;
    Close;
  end;
  qryLookup.Free;
end;

function TableInteger(Table, LookupField: string; LookupValue: integer; ReturnField: string): integer; overload;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
    Params[0].AsInteger := LookupValue;
    Open;
    Result := Fields[0].AsInteger;
    Close;
  end;
  qryLookup.Free;
end;

function TableIntegerX(Table, LookupField: string; LookupValue: integer; ExtraWhere: string; ReturnField: string): integer; overload;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField + ' AND ' + ExtraWhere;
    Params[0].AsInteger := LookupValue;
    Open;
    Result := Fields[0].AsInteger;
    Close;
  end;
  qryLookup.Free;
end;

function TableFloat(Table, LookupField: string; LookupValue: integer; ReturnField: string): double; overload;
var
  qryLookup: TUniQuery;
begin
   qryLookup := TUniQuery.Create(nil);
   qryLookup.Connection := dmAxiom.uniInsight;
   with qryLookup do
   begin
      SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
      Params[0].AsInteger := LookupValue;
      Open;
      Result := Fields[0].AsFloat;
      Close;
   end;
   qryLookup.Free;
end;

function TableFloat(Table, LookupField: string; LookupValue: string; ReturnField: string): double; overload;
var
  qryLookup: TUniQuery;
begin
   qryLookup := TUniQuery.Create(nil);
   qryLookup.Connection := dmAxiom.uniInsight;
   with qryLookup do
   begin
      SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
      Params[0].AsString := LookupValue;
      Open;
      Result := Fields[0].AsFloat;
      Close;
   end;
   qryLookup.Free;
end;

function TableCurrency(Table, LookupField, LookupValue, ReturnField: string): currency;
var
  qryLookup: TUniQuery;
begin
   qryLookup := TUniQuery.Create(nil);
   qryLookup.Connection := dmAxiom.uniInsight;
   with qryLookup do
   begin
      SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
      Params[0].AsString := LookupValue;
      Open;
      Result := Fields[0].AsCurrency;
      Close;
   end;
   qryLookup.Free;
end;


function TableCurrency(Table, LookupField: string; LookupValue: Integer; ReturnField: string): currency;
var
  qryLookup: TUniQuery;
begin
   qryLookup := TUniQuery.Create(nil);
   qryLookup.Connection := dmAxiom.uniInsight;
   with qryLookup do
   begin
      SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
      Params[0].AsInteger := LookupValue;
      Open;
      Result := Fields[0].AsCurrency;
      Close;
   end;
   qryLookup.Free;
end;


function TableString(Table, LookupField, LookupValue, ReturnField: string): string; overload;
var
  qryLookup: TUniQuery;
begin

  if (Table = 'TAXTYPE') AND ((ReturnField = 'LEDGER') OR  (ReturnField = 'OUTPUTLEDGER') OR (ReturnField = 'ADJUSTLEDGER'))
  then
  begin
    qryLookup := TUniQuery.Create(nil);
    qryLookup.Connection := dmAxiom.uniInsight;
    with qryLookup do
        begin
        SQL.Text := 'SELECT ' + ReturnField + ' FROM TAXTYPE_LEDGER WHERE ' + LookupField + ' = :' + LookupField + ' and entity = :entity ';
        ParamByName(LookupField).AsString := LookupValue;
        ParamByName('ENTITY').AsString := dmAxiom.Entity;
        open;
        Result := Fields[0].AsString;
        Close;
        end;
    exit;
  end;

  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :LookupField';
    Params[0].AsString := LookupValue;
    Open;
    Result := Fields[0].AsString;
    Close;
  end;
  qryLookup.Free;
end;

function TableStringEntity(aTable, aLookupField: string; aLookupValue: Integer; aReturnField: string; aEntity: string): string; overload;
begin
  result:= TableStringEntity(aTable, aLookupField, IntToStr(aLookupValue), aReturnField, aEntity)
end;

function TableStringEntity(aTable, aLookupField, aLookupValue, aReturnField: string; aEntity: string): string; overload;
var
  qryLookup    : TUniQuery;
  lsEntitySQL  : String;
begin
{
  Code Modified 20.01.2003 GG

  Default Entity should be used if no entity value is passed in.
}
  if aEntity = '' then
    aEntity:= dmAxiom.Entity;

  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;

  if (UpperCase(aTable) = 'CHART') then
    lsEntitySQL := ' AND BANK = :ENTITY '
  else
    lsEntitySQL := ' AND ENTITY = :ENTITY ';

  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + aReturnField + ' FROM ' + aTable + ' WHERE ' + aLookupField + ' = :' + aLookupField + lsEntitySQL;
    Params[0].AsString := aLookupValue;
{
  Code Modified 20.01.2003 GG

  This needs to search on the entity passed in as a parameter

    Params[1].AsString := dmAxiom.Entity;
}
    Params[1].AsString := aEntity;

    //qryLookup.SQL.SaveToFile('C:\tmp\tmp\qryLookup.sql');

    Open;
    Result := Fields[0].AsString;
    Close;
  end;
  qryLookup.Free;
end;

function TableString(Table, LookupField: string; LookupValue: integer; ReturnField: string): string; overload;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
    Params[0].AsInteger := LookupValue;
    Open;
    Result := Fields[0].AsString;
    Close;
  end;
  qryLookup.Free;
end;

procedure TaskProcess(sTask: string; sFileID: string; sAuthor: string; iTaskNumber: Integer; taTaskAction: TTaskAction);
var
   iMatter: integer;
   PrecInfo: TPrecInfo;
   LfrmMatterDataForm: TfrmMatterDataForm;

  procedure PerformTasks(sEvent: string);
  begin
    // perform task items that are related to this task
    with dmAxiom.qryTaskItems do
    begin
      Close;
      ParamByName('P_TaskCode').AsString := sTask;
      ParamByName('P_Event').AsString := sEvent;
      Open;
      while not EOF do
      begin
        if FieldByName('TYPE').AsString = 'Fee' then
        begin
          if FieldByName('CONFIRM').AsString = 'Y' then
          begin
            with TfrmFeeNew.Create(Application, False) do
            begin
              CreateFee(sFileID, sAuthor, FieldByName('REASON').AsString, '0', 0,  0, FieldByName('AMOUNT').AsFloat, 'N');
              ShowModal;
            end;
          end
          else
            FeeInsert(iMatter, sAuthor, FieldByName('REASON').AsString, FieldByName('AMOUNT').AsFloat);
        end
        else if FieldByName('TYPE').AsString = 'Sundry' then
        begin
          if FieldByName('CONFIRM').AsString = 'Y' then
          begin
            with TfrmSundryNew.Create(Application) do
            begin
              CreateSundry(sFileID, FieldByName('SUNDRYTYPE').AsString, FieldByName('REASON').AsString, FieldByName('AMOUNT').AsFloat);
              ShowModal;
            end;
          end
          else
            SundryInsert(iMatter, FieldByName('SUNDRYTYPE').AsString, FieldByName('REASON').AsString, FieldByName('AMOUNT').AsFloat);
        end
        else if FieldByName('TYPE').AsString = 'Task' then
        begin
          dmAxiom.qryTaskInsert.ParamByName('CODE').AsString := FieldByName('TASKITEMCODE').AsString;
          dmAxiom.qryTaskInsert.ParamByName('FILEID').AsString := sFileID;
          dmAxiom.qryTaskInsert.ParamByName('DESCR').AsString := FieldByName('REASON').AsString;
          dmAxiom.qryTaskInsert.ParamByName('AUTHOR').AsString := sAuthor;
          dmAxiom.qryTaskInsert.ParamByName('COMMENCE').AsDateTime := Date + FieldByName('DAYS').AsInteger;
          dmAxiom.qryTaskInsert.ParamByName('DUE').AsDateTime := Date + FieldByName('DAYS').AsInteger;
          dmAxiom.qryTaskInsert.ExecSQL;
          dmAxiom.qryTaskInsert.Close;
        end
        else if FieldByName('TYPE').AsString = 'Precedent' then
        begin
          PrecInfo.PrecPath := FieldByName('PRECPATH').AsString;

          PrecInfo.PrecSavePath := FieldByName('SAVEPATH').AsString;
          PrecInfo.PrecDescription := FieldByName('DESCR').AsString;
          PrecInfo.WorkflowType := TableString('MATTERTYPE', 'CODE', MatterString(sFileID, 'TYPE'), 'WORKFLOWTYPE');
          PrecInfo.MainDataFile := FieldByName('MAINDATAFILE').AsString;
          PrecInfo.DataFilePath := FieldByName('DATAFILEPATH').AsString;

          MakePrecedent(sFileID, PrecInfo);
        end
        else if FieldByName('TYPE').AsString = 'DataForm' then
          if not Assigned(LfrmMatterDataForm) then
            LfrmMatterDataForm := TfrmMatterDataForm.Create(Application);
          with LfrmMatterDataForm do
          begin
            LoadForm(FieldByName('DATAFORM').AsString, sFileID);
            if ShowModal = mrCancel then
              Break;
          end;
        Next;
      end;
      Close;
    end;
  end;

  procedure StartTask;
  begin
    with dmAxiom.qryTaskUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE TASK SET STARTED = :STARTED, AUTHOR = :AUTHOR');
      SQL.Add('WHERE NTASK = :NTASK');
      ParamByName('STARTED').AsDateTime := Now;
      ParamByName('AUTHOR').AsString := dmAxiom.UserID;
      ParamByName('NTASK').AsInteger := iTaskNumber;
      ExecSQL;
      Close;
    end;
    PerformTasks('B');
  end;

  procedure FinishTask;
  begin
    with dmAxiom.qryTaskUpdate do
    begin
      // check if the task is not already started
      SQL.Clear;
      SQL.Add('SELECT STARTED FROM TASK');
      SQL.Add('WHERE NTASK = :NTASK');
      ParamByName('NTASK').AsInteger := iTaskNumber;
      Open;
      if FieldByName('STARTED').IsNull then
      begin
        Close;
        PerformTasks('B');
      end;
      // complete the task
      SQL.Clear;
      SQL.Add('UPDATE TASK SET FINISHED = :FINISHED');
      SQL.Add('WHERE NTASK = :NTASK');
      ParamByName('FINISHED').AsDateTime := Now;
      ParamByName('NTASK').AsInteger := iTaskNumber;
      ExecSQL;
      Close;
      PerformTasks('E');
    end;
  end;

  procedure SkipTask;
  begin
    with dmAxiom.qryTaskUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE TASK SET SKIPPED = :SKIPPED, FINISHED = :FINISHED');
      SQL.Add('WHERE NTASK = :NTASK');
      ParamByName('SKIPPED').AsDateTime := Now;
      ParamByName('FINISHED').AsDateTime := Now;
      ParamByName('NTASK').AsInteger := iTaskNumber;
      ExecSQL;
      Close;
    end;
  end;

  procedure ResumeTask;
  begin
    with dmAxiom.qryTaskUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE TASK SET SKIPPED = NULL');
      SQL.Add('WHERE NTASK = :NTASK');
      ParamByName('NTASK').AsInteger := iTaskNumber;
      ExecSQL;
      Close;
    end;
  end;

begin
  try
    iMatter := TableInteger('MATTER', 'FILEID', sFileID, 'NMATTER');
    case taTaskAction of
      taStart: StartTask();
      taBegin: PerformTasks('B');
      taFinish: FinishTask();
      taSkip: SkipTask();
      taResume: ResumeTask();
    end;
  except
    on E:Exception do
      MsgErr('Error occured while setting tasks' + #13 + #13 + E.message);
  end;
end;

function TaxCalc(var Amount: Double; RateType, TaxCode: string; TaxDate: TDateTime): Double; overload;
   function TruncateTax(TaxAmt: Double): Double;
   var
      TruncAmt: Double;
      qryRate: TUniQuery;
   begin
      qryRate := TUniQuery.Create(nil);
      with qryRate do
      begin
        Connection := dmAxiom.uniInsight;
//        SQL.Text := 'SELECT trunc(:TaxAmt,2) as TaxAmt from dual';
        SQL.Text := 'SELECT round(:TaxAmt,2) as TaxAmt from dual';
        qryRate.Params[0].AsFloat := TaxAmt;
        Open;
        TruncAmt := Fields[0].AsCurrency;
        Close;
      end;
      qryRate.Free;
      Result := TruncAmt;
   end;
var
  lcTaxRate : Currency;
  lcTax     : Currency;
  lcAmount  : Currency;
  // lcTaxTmp  : Currency;
begin
  lcAmount := FloatToCurr(Amount);
  if TaxDate = NullDate then
     TaxDate := Now;

  lcTaxRate := FloatToCurr(TaxRate(RateType, TaxCode, TaxDate));

  if (lcTaxRate < 0) then
  begin
    lcTaxRate := Abs(lcTaxRate);

    if (TableString('TAXTYPE', 'CODE', TaxCode, 'WITHHOLDING') = 'Y') then
      lcTax := TruncateTax((lcAmount * lcTaxRate * 100) / 100)
    else
      lcTax := TruncateTax(((lcAmount * (lcTaxRate / (1 + lcTaxRate))) * 100) / 100);

    Amount := lcAmount - lcTax;
  end
  else
     lcTax := TruncateTax((lcAmount * lcTaxRate * 100) / 100);

  Result := lcTax;
end;

function TaxCalc(var Amount: Currency; RateType, TaxCode: string; TaxDate: TDateTime): Currency; overload;
   function TruncateTax(TaxAmt: Double): Double;
   var
      TruncAmt: Double;
      qryRate: TUniQuery;
   begin
      qryRate := TUniQuery.Create(nil);
      with qryRate do
      begin
        Connection := dmAxiom.uniInsight;
//        SQL.Text := 'SELECT trunc(:TaxAmt,2) as TaxAmt from dual';
        SQL.Text := 'SELECT round(:TaxAmt,2) as TaxAmt from dual';
        qryRate.Params[0].AsFloat := TaxAmt;
        Open;
        TruncAmt := Fields[0].AsCurrency;
        Close;
      end;
      qryRate.Free;
      Result := TruncAmt;
   end;
var
  lcTaxRate : Currency;
  lcTax     : Currency;
  lcAmount  : Currency;
  // lcTaxTmp  : Currency;
begin
  lcAmount := FloatToCurr(Amount);
  lcTaxRate := FloatToCurr(TaxRate(RateType, TaxCode, TaxDate));

  if (lcTaxRate < 0) then
  begin
    lcTaxRate := Abs(lcTaxRate);

    if (TableString('TAXTYPE', 'CODE', TaxCode, 'WITHHOLDING') = 'Y') then
      lcTax := TruncateTax((lcAmount * lcTaxRate * 100) / 100)
    else
      lcTax := TruncateTax(((lcAmount * (lcTaxRate / (1 + lcTaxRate))) * 100) / 100);

    Amount := lcAmount - lcTax;
  end
  else
     lcTax := TruncateTax((lcAmount * lcTaxRate * 100) / 100);

  Result := lcTax;
end;

function TaxCalc2(var Amount: Currency; RateType, TaxCode: string; TaxDate: TDateTime): Currency;
{
 Attempts to solve issues with the TaxCalc function, specifically relating to its
 inability to correctly deal with tax rates that do not equal 10%
}
var
  lcTaxRate : Single;
  lcTax     : Currency;
  lcAmount  : Currency;
begin
  lcAmount := Amount;
  lcTaxRate := TaxRate(RateType, TaxCode, TaxDate);

  if (lcTaxRate < 0) then
  begin
    lcTaxRate := Abs(lcTaxRate);

    if (TableString('TAXTYPE', 'CODE', TaxCode, 'WITHHOLDING') = 'Y') then
      lcTax := Round(lcAmount * lcTaxRate * 100) / 100
    else
    begin
      Amount := Round((lcAmount /(1 + lcTaxRate)) * 100) / 100;
      lcTax := lcAmount - Amount;
    end;

  end
  else
    lcTax := Round(lcAmount * lcTaxRate * 100) / 100;

  Result := lcTax;
end;

function TaxExtract(var Amount: Double; TaxCode: string; TaxDate: TDateTime): Double;
var
  lcTaxRate : Currency;
  lcTax     : Currency;
  lcAmount  : Currency;
begin
  lcAmount := FloatToCurr(Amount);
  lcTaxRate := FloatToCurr(Abs(TaxRate('', TaxCode, TaxDate)));

  if (TableString('TAXTYPE', 'CODE', TaxCode, 'WITHHOLDING') = 'Y') then
    lcTax := Round(lcAmount * lcTaxRate * 100) / 100
  else
    lcTax := Round((lcAmount * (lcTaxRate / (1 + lcTaxRate))) * 100) / 100;

  Amount := lcAmount - lcTax;

  Result := lcTax;
end;

function TaxRate(RateType, TaxCode: string; Commence: TDateTime): Double;
var
  qryRate: TUniQuery;
begin
   qryRate := TUniQuery.Create(nil);
   with qryRate do
   begin
      Connection := dmAxiom.uniInsight;
      SQL.Clear;
      SQL.Add('SELECT RATE, BILL_RATE, TAXTYPE');
      SQL.Add('FROM TAXTYPE, TAXRATE');
      SQL.Add('WHERE TAXRATE.TAXCODE = :TAXCODE');
      SQL.ADD('AND TAXRATE.TAXCODE = TAXTYPE.CODE ');
      SQL.Add('  AND COMMENCE = (SELECT MAX(COMMENCE) FROM TAXRATE');
      SQL.Add('    WHERE TAXRATE.TAXCODE = :TAXCODE');
      SQL.Add('      AND TAXRATE.COMMENCE <= :COMMENCE)');
      ParamByName('TAXCODE').AsString := TaxCode;
      ParamByName('COMMENCE').AsDateTime := Trunc(Commence);

      Open;
      if IsEmpty then
         TaxRate := 0
      else
      if (RateType = 'BILL') then
      begin
         if (FieldByName('RATE').AsFloat <> 0) then
            TaxRate := FieldByName('RATE').AsFloat / 100
         else
            TaxRate := 0;
      end
      else
      begin
         if ((FieldByName('BILL_RATE').AsFloat = 0) or (FieldByName('TAXTYPE').AsString = 'FRBLL')
            {(FieldByName('BILL_RATE').AsFloat <> 0)}) then
             TaxRate := 0
         else
            TaxRate := FieldByName('BILL_RATE').AsFloat / 100;
      end;
      Close;
  end;
  qryRate.Free;
end;

function TaxCode(RateType: String; TaxRate: Double; Commence: TDateTime): String;
var
  qryRate: TUniQuery;
begin
   qryRate := TUniQuery.Create(nil);
   with qryRate do
   begin
      Connection := dmAxiom.uniInsight;
      SQL.Clear;
      SQL.Add('SELECT RATE, BILL_RATE, TAXCODE, TAXTYPE ');
      SQL.Add('FROM TAXTYPE, TAXRATE ');
      SQL.Add('WHERE TAXRATE.TAXCODE = TAXTYPE.CODE AND TAXTYPE.TAXTYPE = ''TAX'' ');
      SQL.Add('  AND COMMENCE = (SELECT MAX(COMMENCE) FROM TAXRATE, TAXTYPE ');
      SQL.Add('  WHERE TAXRATE.TAXCODE = TAXTYPE.CODE ');
      if (RateType = 'BILL') then
          SQL.Add('AND TAXRATE.RATE = :TAXRATE AND TAXRATE.BILL_RATE = 0 ');
      if (RateType = 'CHEQUE') then
          SQL.Add('AND TAXRATE.BILL_RATE = :TAXRATE and TAXRATE.RATE = 0 ');
      if (RateType = 'BOTH') then
          SQL.Add('AND TAXRATE.BILL_RATE = :TAXRATE AND TAXRATE.RATE = :TAXRATE ');
      SQL.Add('AND TAXTYPE.TAXTYPE = ''TAX'' AND TAXRATE.COMMENCE <= :COMMENCE) ');
      if (RateType = 'BILL') then
          SQL.Add('AND TAXRATE.RATE = :TAXRATE AND TAXRATE.BILL_RATE = 0 ');
      if (RateType = 'CHEQUE') then
          SQL.Add('AND TAXRATE.BILL_RATE = :TAXRATE and TAXRATE.RATE = 0 ');
      if (RateType = 'BOTH') then
          SQL.Add('AND TAXRATE.BILL_RATE = :TAXRATE AND TAXRATE.RATE = :TAXRATE ');
      ParamByName('TAXRATE').AsFloat := TaxRate;
      ParamByName('COMMENCE').AsDateTime := Trunc(Commence);

      Open;
      if IsEmpty then
         TaxCode := 'N/A'
      else
          TaxCode :=  FieldByName('TAXCODE').AsString;
      Close;
  end;
  qryRate.Free;
end;


procedure ToggleEditButtons(Sender: TControl; Action: TEditButtonAction = ebaToggle);
var
  ButtonControl: TControl;
begin
  case Action of
    ebaToggle:
    begin
      try
        ButtonControl := TControl(Sender.FindComponent(NEW_RECORD_STRING));
        ButtonControl.Visible := not(ButtonControl.Visible);
        ButtonControl := TControl(Sender.FindComponent(DELETE_RECORD_STRING));
        ButtonControl.Visible := not(ButtonControl.Visible);
        ButtonControl := TControl(Sender.FindComponent(POST_RECORD_STRING));
        ButtonControl.Visible := not(ButtonControl.Visible);
        ButtonControl := TControl(Sender.FindComponent(CANCEL_RECORD_STRING));
        ButtonControl.Visible := not(ButtonControl.Visible);
      except
        // silent exception
      end;
    end;
    ebaEnableCancelPost:
    begin
      try
        ButtonControl := TControl(Sender.FindComponent(NEW_RECORD_STRING));
        ButtonControl.Visible := False;
        ButtonControl := TControl(Sender.FindComponent(DELETE_RECORD_STRING));
        ButtonControl.Visible := False;
        ButtonControl := TControl(Sender.FindComponent(POST_RECORD_STRING));
        ButtonControl.Visible := True;
        ButtonControl := TControl(Sender.FindComponent(CANCEL_RECORD_STRING));
        ButtonControl.Visible := True;
      except
        // silent exception
      end;
    end;
    ebaDisableCancelPost:
    begin
      try
{        ButtonControl := TControl(Sender.FindComponent(NEW_RECORD_STRING));
        ButtonControl.Visible := True;
        ButtonControl := TControl(Sender.FindComponent(DELETE_RECORD_STRING));
        ButtonControl.Visible := True;
        ButtonControl := TControl(Sender.FindComponent(POST_RECORD_STRING));
        ButtonControl.Visible := False;
        ButtonControl := TControl(Sender.FindComponent(CANCEL_RECORD_STRING));
        ButtonControl.Visible := False;      }
      except
        // silent exception
      end;
    end;
  end;
end;


function TypeString(sCode: string; sField: string): string;
var
  sResult: string;
begin
  with dmAxiom.qryTypes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + sField);
    SQL.Add('FROM MATTERTYPE');
    SQL.Add('WHERE CODE = :CODE');
    Params[0].AsString := sCode;
    Open;
    if not IsEmpty then
      sResult := FieldByName(sField).AsString
    else
      sResult := '';
    if sResult = '' then
      if sField = 'PARTY1_DESC' then
        sResult := 'Other Party 1'
      else if sField = 'PARTY2_DESC' then
        sResult := 'Other Party 2'
      else if sField = 'PARTY3_DESC' then
        sResult := 'Other Party 3';

    TypeString := sResult;
  end;
end;


procedure UseBitmap(ilstTarget: TImageList; sName: string);
begin
  if not ilstTarget.ResourceLoad(rtBitmap, sName, clPurple) then
    ilstTarget.ResourceLoad(rtBitmap, 'LOADERROR', clPurple)
end;

procedure GetBitmap(ilstTarget: TImageList; sName: string);
begin
  if not ilstTarget.GetResource(rtBitmap, sName, 16, [], clPurple) then
    ilstTarget.GetResource(rtBitmap, 'LOADERROR', 16, [], clPurple);
end;

function ValidLedger(sEntity, sLedger: string): boolean;
begin
   // Make sure that the ledger exists
   try
      with dmAxiom.qryCharts do
      begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT CODE');
         SQL.Add('FROM CHART');
         SQL.Add('WHERE BANK = :BANK');
         SQL.Add('  AND COMPONENT_CODE_DISPLAY = :CODE');
//    AES 7/8/2014  CHANGED TO USE COMPONENTCODE_DISPLAY AS THIS IS THE VALUE SELECTED AND DISPLAYED.
//       SQL.Add('  AND CODE = :CODE');
         ParamByName('BANK').AsString := sEntity;
         ParamByName('CODE').AsString := sLedger;
         Open;

         if FieldByName('CODE').IsNull then
         begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT CODE');
            SQL.Add('FROM CHART');
            SQL.Add('WHERE BANK = :BANK');
            SQL.Add('  AND CODE = :CODE');
            ParamByName('BANK').AsString := sEntity;
            ParamByName('CODE').AsString := sLedger;
            Open;
            if FieldByName('CODE').IsNull then
               ValidLedger := False
            else
               ValidLedger := True;
         end
         else
            ValidLedger := True;
      end;
   finally
      dmAxiom.qryCharts.Close;
   end;
end;

function GetSeqNumberi(sSequence: string): Integer;
begin
  with dmAxiom.qryTmp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + sSequence + '.currval');
    SQL.Add('FROM DUAL');
    ExecSQL;
    Result := Fields[0].AsInteger;
    Close;
  end;
end;

function set_date_format(sformat : string) : string;
var
Reg: TRegistry;
begin
  set_date_format := '';
  if sFormat = '' then
     exit;

  // setup the date
  Reg := TRegistry.Create;

  if Reg.OpenKey('\Control Panel\International', True) then
  begin
     set_date_format := Reg.ReadString('sShortDate');
     Reg.WriteString('sShortDate',sformat);
  end;
  Reg.CloseKey;
  Reg.Destroy;
end;

function get_default_gst(sform : String) : String;
var
   qryTmp : TUniQuery;
begin
    qryTmp := TUniQuery.Create(nil);
    qryTmp.Connection := dmAxiom.uniInsight;
    qryTmp.SQL.Text := 'SELECT CODE FROM TAXDEFAULT WHERE TYPE=:TYPE';
    qryTmp.Prepare;
    qryTmp.ParamByName('TYPE').AsString := sForm;
    qryTmp.Open;
    get_default_gst := qryTmp.FieldByName('CODE').AsString;

    qryTmp.Close;
    qryTmp.Free;
end;

function get_tax_method(sEntity : String) : String;
var
   qryTmp : TUniQuery;
begin
    qryTmp := TUniQuery.Create(nil);
    qryTmp.Connection := dmAxiom.uniInsight;
    qryTmp.SQL.Text := 'SELECT TAX_METHOD FROM ENTITY WHERE CODE=:ENTITY';
    qryTmp.Prepare;
    qryTmp.ParamByName('ENTITY').AsString := sEntity;
    qryTmp.Open;
    get_tax_method := qryTmp.FieldByName('TAX_METHOD').AsString;

    qryTmp.Close;
    qryTmp.Free;
end;

function CheckReqFields(sTableName: String;dDataSet : TDataSet) : BOOLEAN;
var
    sMessage : String;
    iloop    : Integer;
begin
    sMessage := '';
    dmTableCache.LoadVirtualTable(dmTableCache.vtReqFields,'REQFIELD','');

    // loop though the dataset

        for iloop := 0 to dDataSet.Fields.count-1 do
        begin
            // is this field required
            if dDataSet.Fields[iloop].AsVariant = null then
            begin
            // can this field be null?
                dmTableCache.vtReqFields.First;
                while not dmTableCache.vtReqFields.eof do
                begin
                    if (dmTableCache.vtReqFields.FieldByName('TABLE_NAME').AsString = sTableName)
                    and (dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString = dDataSet.Fields[iloop].FieldName) then
                    begin
                        if  dmTableCache.vtReqFields.FieldByName('MESSAGE').AsString <> '' then
                            sMessage := sMessage + '* ' + dmTableCache.vtReqFields.FieldByName('MESSAGE').AsString + #13
                        else
                            sMessage := sMessage + '* ' + 'Field ' + dDataSet.Fields[iloop].FieldName + ' must contain a value ' + #13;
                    end;
                    dmTableCache.vtReqFields.next;
                end;

            end;
        end;
    //end;

    if (sMessage <> '') then
        MessageDlg(sMessage, mtError, [mbOk], 0);

    Result := (sMessage = '');
end;


function ClearTrust(sFileID : String) : Currency;
var
  LOraQuery: TUniQuery;
begin
  LOraQuery := TUniQuery.Create(nil);
  try
    // should this be using NMATTER instead of FILEID
    // clear trust should be trust less protected.
    LOraQuery.Connection := dmAxiom.uniInsight;
    LOraQuery.SQL.Text := 'SELECT SUM(AMOUNT) as amount FROM ALLOC WHERE TRUST = ''T'' '+
                          'AND NMATTER = :NMATTER AND CLEARED = ''Y'' ';
    LOraQuery.ParamByName('NMATTER').AsString := MatterString(sFileID,'NMATTER');
    LOraQuery.Open;
    ClearTrust := LOraQuery.FieldByName('AMOUNT').AsCurrency;
    LOraQuery.Close;
  finally
    LOraQuery.Free;
  end;
end;

function ProtectedTrust(sFileID : String) : Currency;
var
  LOraQuery: TUniQuery;
begin
  LOraQuery := TUniQuery.Create(nil);
  try
    // should this be using NMATTER instead of FILEID
    // clear trust should be trust less protected.
    LOraQuery.Connection := dmAxiom.uniInsight;
    LOraQuery.SQL.Text := 'select sum(spec_purpose) as amount from alloc where fileid = :fileid ';
    LOraQuery.ParamByName('FILEID').AsString := sFileID;
    LOraQuery.Open;
    ProtectedTrust := LOraQuery.FieldByName('AMOUNT').AsCurrency;
    LOraQuery.Close;
  finally
    LOraQuery.Free;
  end;
end;

function UnClearedTrust(sFileID : String) : Currency;
var
  LOraQuery: TUniQuery;
begin
  LOraQuery := TUniQuery.Create(nil);
  try
    LOraQuery.Connection := dmAxiom.uniInsight;
    LOraQuery.SQL.Text := 'SELECT SUM(AMOUNT) as amount FROM ALLOC WHERE TRUST = ''T'' AND FILEID = :FILEID AND CLEARED = ''N'' ';
    LOraQuery.ParamByName('FILEID').AsString := sFileID;
    LOraQuery.Open;
    Result:= LOraQuery.FieldByName('AMOUNT').AsCurrency;
    LOraQuery.Close;
  finally
    LOraQuery.Free;
  end;
end;

function GetClearDate(dDate: TDateTime; iDaysToClear: INTEGER): TDateTime; overload;
var
   RetDate : TDateTime;
   iCtl, PubDays : INTEGER;
   LOraQuery: TUniQuery;
begin
   RetDate := dDate;
   iCtl := 0;

   while iCtl < iDaysToClear do
   begin
      RetDate := RetDate + 1;

      if (DayOfWeek(RetDate) <> 1) AND
         (DayOfWeek(RetDate) <> 7) then
         iCtl := iCtl + 1;
   end;

   // work out if any public holidays in period
   LOraQuery := TUniQuery.Create(nil);
   try
      LOraQuery.Connection := dmAxiom.uniInsight;
      LOraQuery.SQL.Text := 'select count(*) as tot from calendar_holidays where '+
                            'publicholiday = 1 and caldate between :curr_date and :clear_date ' +
                            'and day not in (''Sat'', ''Sun'') ';
      LOraQuery.ParamByName('curr_date').AsDateTime := dDate;
      LOraQuery.ParamByName('clear_date').AsDateTime := RetDate;
      LOraQuery.Open;
      PubDays:= LOraQuery.FieldByName('tot').AsInteger;
      LOraQuery.Close;
   finally
      LOraQuery.Free;
   end;
   if PubDays > 0 then
      RetDate := RetDate + PubDays;
      
   GetClearDate := Trunc(RetDate);
end;

procedure CheckLedgerTotal;
var
   cLedgerTotalNonZero : currency;
begin
// Call after posting to the general ledger to make sure
// the ledger balances
  if cLedgerTotal <> 0 then
  begin
    cLedgerTotalNonZero := cLedgerTotal;
    cLedgerTotal := 0;
    raise Exception.Create('Non-zero General Ledger posting ' + FormatCurr('$0.00',cLedgerTotalNonZero));
  end;
end;

procedure ZeroLedgerTotal;
begin
  cLedgerTotal := 0;
end;

procedure UpdateLedgerTotal(const Amount: Currency);
begin
  cLedgerTotal:= cLedgerTotal + Amount
end;

// MGD - copied from dialogs, to give a simple password input..
function InputQueryPassword(const ACaption, APrompt: string; var Value: string): Boolean;
var
  Form: TForm;
  LEdit,
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonYes, ButtonNo: TButton;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  function GetAveCharSize(Canvas: TCanvas): TPoint;
  var
    I: Integer;
    Buffer: array[0..51] of Char;
  begin
    for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X := Result.X div 52;
  end;
begin
  Result := False;
  Form := TForm.Create(Application);
  try
    Form.Canvas.Font := Form.Font;
    DialogUnits := GetAveCharSize(Form.Canvas);
    Form.BorderStyle := bsDialog;
    Form.Caption := ACaption;
    Form.ClientWidth := MulDiv(260, DialogUnits.X, 4);
    Form.Position := poScreenCenter;

    Prompt := TLabel.Create(Form);
    Prompt.Parent := Form;
    Prompt.Caption := APrompt;
    Prompt.Left := MulDiv(8, DialogUnits.X, 4);
    Prompt.Top := MulDiv(8, DialogUnits.Y, 8);
    Prompt.Constraints.MaxWidth := MulDiv(244, DialogUnits.X, 4);
    Prompt.WordWrap := True;

    LEdit := TLabel.Create(Form);
    LEdit.Parent := Form;
    LEdit.Caption := 'Password:';
    LEdit.Left := MulDiv(54, DialogUnits.X, 4);
    LEdit.Top := Prompt.Top + Prompt.Height + 9;
    LEdit.WordWrap := True;

    Edit := TEdit.Create(Form);
    Edit.Parent := Form;
    Edit.Left := LEdit.Left + LEdit.Width + 2;
    Edit.Top := Prompt.Top + Prompt.Height + 5;
    Edit.Width := MulDiv(100, DialogUnits.X, 4);
    Edit.MaxLength := 255;
    Edit.Text := Value;
    Edit.PasswordChar := '*';
    Edit.SelectAll;

    ButtonTop := Edit.Top + Edit.Height + 15;
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);

    ButtonYes := TButton.Create(Form);
    ButtonYes.Parent := Form;
    ButtonYes.Caption := SMsgDlgOK;
    ButtonYes.ModalResult := mrOk;
    ButtonYes.Default := True;
    ButtonYes.SetBounds(MulDiv(78, DialogUnits.X, 4), ButtonTop, ButtonWidth,
      ButtonHeight);

    ButtonNo := TButton.Create(Form);
    ButtonNo.Parent := Form;
    ButtonNo.Caption := SMsgDlgCancel;
    ButtonNo.ModalResult := mrCancel;
    ButtonNo.Cancel := True;
    ButtonNo.SetBounds(MulDiv(132, DialogUnits.X, 4), ButtonTop, ButtonWidth, ButtonHeight);

    Form.ClientHeight := ButtonNo.Top + ButtonNo.Height + 13;

    if Form.ShowModal = mrOk then
    begin
      Value := Edit.Text;
      Result := True;
    end;
  finally
    Form.Free;
  end;
end;

function PostIntoLockedPeriod(const PostingDate: TDateTime): TPostResult;
{Check if the transaction will be posted into a locked period.  If it is, and
 the user is authorised to do so, notify the user that this will happen and ask
 if they want to proceed

 Result
       True: If the User wants to proceed, or if the posting is not going into a
             locked period.
       False: If the User does not want to proceed, or if the user is not
              authorised to post into a locked period}
var
  msg: string;
begin
  result:= prDoNotProceed;

  if Trunc(dmAxiom.LockDate) < Trunc(PostingDate)  then
    result:= prNotLocked
  else
  if not dmAxiom.Security.PriorPeriodTransactions.Post then
  begin
    msg:= 'Sorry, you are not authorised to post into a locked period.' +
          #13#10#13#10 + 'This transaction will not be posted';
    MessageDlg(msg, mtError, [mbOK], 0);
    result:= prNotAuthorised
  end
  else
  begin
    msg:= 'This transaction will be posted into a locked period.' +
          #13#10#13#10 + 'Do you want to continue?';
    if MessageDlg(msg, mtWarning, [mbYes,mbNo], 0) = mrYes then
      result:= prOKToProceed;
  end

end;

procedure PostCheqReqTrans(cAmount: currency; iNALLOC, iNCHEQREQ: integer);
var
  qryCheqReqTrans: TUniQuery;
begin
  qryCheqReqTrans:= TUniQuery.Create(nil);
  qryCheqReqTrans.Connection:= dmAxiom.uniInsight;
  try
    //distribute the ANTD to the oldest unpaid cheqreq here!!!
    qryCheqReqTrans.SQL.Text:= 'INSERT INTO CHEQREQ_TRANS(CREATED, AMOUNT, NALLOC, NCHEQREQ, OPERATOR) VALUES (:CREATED, :AMOUNT, :NALLOC, :NCHEQREQ, :OPERATOR) ';
    qryCheqReqTrans.ParambyName('CREATED').AsDateTime:= Date;
    qryCheqReqTrans.ParambyName('AMOUNT').AsCurrency:= cAmount;
    qryCheqReqTrans.ParambyName('NALLOC').AsInteger:= iNALLOC;
    qryCheqReqTrans.ParambyName('NCHEQREQ').AsInteger:= iNCHEQREQ;
    qryCheqReqTrans.ParambyName('OPERATOR').AsString:= dmAxiom.UserId;
    qryCheqReqTrans.ExecSQL;
  finally
    qryCheqReqTrans.Close;
    qryCheqReqTrans.Free
  end;
end;

procedure SetDataFieldHints(AForm: TCustomForm; APrePend: String);
const
  C_DATAFIELD = 'DataField';
  procedure Recurse(AParentControl: TComponent);
  var
    i: Integer;
    LField: String;
  begin
    if(AParentControl is TControl) then
    begin
      if(IsPublishedProp(AParentControl,C_DATAFIELD)) then
      begin
        LField := GetStrProp(AParentControl,C_DATAFIELD);
        if(LField <> '') then
        begin
          TControl(AParentControl).Hint := APrePend + LField;
          TControl(AParentControl).ShowHint := True;
        end;
      end;
    end;

    for i := 0 to AParentControl.ComponentCount - 1 do
      Recurse(AParentControl.Components[i]);
  end;
begin
  Recurse(AForm);
end;


procedure ResetDataFieldHints(AForm: TCustomForm);
const
  C_DATAFIELD = 'DataField';

  procedure Recurse(AParentControl: TComponent);
  var
    i: Integer;
  begin
    if(AParentControl is TControl) then
    begin
      if(IsPublishedProp(AParentControl, C_DATAFIELD)) then
        TControl(AParentControl).ShowHint := False;
    end;
    for i := 0 to AParentControl.ComponentCount - 1 do
      Recurse(AParentControl.Components[i]);
  end;
begin
  Recurse(AForm);

end;

function SimpleRounding(const AValue: Double; const ADigit: TRoundToRange = -2): Double;
var
  LFactor: Double;
  LValue: Double;
begin
  LFactor:= IntPower(10, ADigit);
  LValue:= (abs(AValue) / LFactor) + 0.5;
  if AValue > 0 then
    Result:= Trunc(LValue) * LFactor
  else
    Result:= Trunc(-LValue) * LFactor;
end;


function IsActiveLedger(sEntity : String; sFullLedger : String) : Boolean;
var
  loQryCharts : TUniQuery;
begin
  loQryCharts := nil;

  try
    loQryCharts := dmAxiom.qryCharts;
    loQryCharts.Connection := dmAxiom.uniInsight;
    loQryCharts.Close;
    loQryCharts.SQL.Clear;
    loQryCharts.SQL.Add('SELECT ACTIVE');
    loQryCharts.SQL.Add('FROM CHART');
    loQryCharts.SQL.Add('WHERE BANK = :BANK');
    loQryCharts.SQL.Add('  AND CODE = :CODE');
    loQryCharts.Params[0].AsString := sEntity;
    loQryCharts.Params[1].AsString := sFullLedger;
    loQryCharts.Open;

    if (not loQryCharts.IsEmpty) then
      begin
        Result := (loQryCharts.FieldByName('ACTIVE').AsString = 'Y');

      end
    else
      Result := False;

  finally
    loQryCharts.Close;

  end;    //  end try-finally

end;

function AndReplace(AStr: String): String;
begin
  Result := StringReplace(AStr,'&','&&',[rfReplaceAll]);
end;

function ReplaceAndAnd(AStr: String): String;
begin
  Result := StringReplace(AStr,'&&','&',[rfReplaceAll]);
end;


function IsTrustAccount(sAcct : String) : Boolean;
var
  loQry : TUniQuery;
begin
  loQry := nil;

  try
    loQry := TUniQuery.Create(nil);
    loQry.Connection := dmAxiom.uniInsight;

    loQry.Close;
    loQry.SQL.Clear;
    loQry.SQL.Add('SELECT TRUST');
    loQry.SQL.Add('FROM BANK');
    loQry.SQL.Add('WHERE ACCT = :ACCT');
    loQry.Params[0].AsString := sAcct;
    loQry.Open;

    if (not loQry.IsEmpty) then
      begin
        Result := (loQry.FieldByName('TRUST').AsString = 'T');
      end
    else
      Result := False;
  finally
    loQry.Close;
    FreeAndNil(loQry);
  end;    //  end try-finally
end;

function IsRefnoExisting(sRefno : String) : Boolean;
begin
  try
    with dmAxiom.qryTmp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT REFNO FROM NMEMO WHERE REFNO = ' + QuotedStr(sRefno));
        Open;
        Result := (not dmAxiom.qryTmp.IsEmpty);
        Close;
      end;
  except
    // Didn't work for some reason
    on E: Exception do
      begin
        Result := FALSE;
      end;
  end;
end;

function IsExisitingChart(sChart : String; sEntity : String) : Boolean;
var
  loQry : TUniQuery;
begin
  loQry := nil;

  try
    loQry := TUniQuery.Create(nil);
    loQry.Connection := dmAxiom.uniInsight;

    loQry.Close;
    loQry.SQL.Clear;
    loQry.SQL.Add('SELECT CODE');
    loQry.SQL.Add('FROM CHART');
    loQry.SQL.Add('WHERE CODE = :CODE ');
    loQry.SQL.Add('AND BANK = :ENTITY ');
    loQry.Params[0].AsString := sChart;
    loQry.Params[1].AsString := sEntity;
    loQry.Open;

    Result := (not loQry.IsEmpty);

  finally
    loQry.Close;
    FreeAndNil(loQry);
  end;    //  end try-finally
end;

function IsJournalSplittingChart(sChart : String; sEntity : String) : Boolean;
var
  loQry : TUniQuery;
begin
  loQry := nil;

  try
    loQry := TUniQuery.Create(nil);
    loQry.Connection := dmAxiom.uniInsight;

    loQry.Close;
    loQry.SQL.Clear;
    loQry.SQL.Add('SELECT IS_JOURNAL_SPLIT');
    loQry.SQL.Add('FROM CHART');
    loQry.SQL.Add('WHERE CODE = :CODE ');
    loQry.SQL.Add('AND BANK = :ENTITY ');
    loQry.Params[0].AsString := sChart;
    loQry.Params[1].AsString := sEntity;
    loQry.Open;

    if (not loQry.IsEmpty) then
      begin
        Result := (loQry.FieldByName('IS_JOURNAL_SPLIT').AsString = 'Y');

      end
    else
      Result := False;

  finally
    loQry.Close;
    FreeAndNil(loQry);

  end;    //  end try-finally

end;

procedure JournalSplitToDatabase(dtDate: TDateTime; cAmount: currency; cTax: Currency;
          sRefno: string; sOwnerCode: string; iOwner: integer; sDesc: string;
          sFullLedger: string; sAuthor: string; iInvoice: Integer;
          CreditorCode: string; sTaxCode : String; sParentChart : String);
var
  liSum     : Currency;
  liAmount  : Currency;
  liAmt     : Currency;
  liTax     : Currency;
  liPercent : Double;
  lsChart   : String;
  loQry     : TUniQuery;
begin
  loQry := nil;
  liSum := 0;
  lsChart := '';

  try
    if (IsJournalSplittingChart(sFullLedger, dmAxiom.Entity)) then
      begin
        try
          loQry := TUniQuery.Create(nil);
          LoQry.Connection := dmAxiom.uniInsight;
          GetChartBreakDownData(loQry, sFullLedger, dmAxiom.Entity);

          if (loQry.IsEmpty) then
            begin
              SaveLedger(dtDate, cAmount, cTax, sRefno, sOwnerCode, iOwner, sDesc,
                         sFullLedger, sAuthor, iInvoice, CreditorCode, sTaxCode,
                         sParentChart,0);

            end
          else
            begin
              if (cAmount <> 0) then
                liAmt := cAmount
              else
                liAmt := cTax;

              loQry.First;

              while (not loQry.Eof) do
                begin
                  lsChart := loQry.FieldByName('SUB_CHART').AsString;
                  liPercent := loQry.FieldByName('PERCENT').AsFloat;

                  liPercent := (liPercent / 100);
                  liAmount := Round(liAmt * liPercent * 100) / 100;

                  if (loQry.FieldByName('IS_ROUNDING').AsString = 'N') then
                    liSum := liSum + liAmount
                  else
                    liAmount := liAmt - liSum;

                  if (cTax <> 0) then
                    begin
                      liTax := liAmount;
                      liAmount := 0;

                    end
                  else
                    begin
                      liTax := 0;

                    end;    //  end if-else

                  SaveLedger(dtDate, liAmount, liTax, sRefno, sOwnerCode, iOwner, sDesc,
                             lsChart, sAuthor, iInvoice, CreditorCode, sTaxCode,
                             sParentChart,0);

                  loQry.Next;

                end;    //  end while

            end;    //  end if-else

        finally
          loQry.Close;
          FreeAndNil(loQry);

        end;    //  end try-finally

      end
    else
      begin
        SaveLedger(dtDate, cAmount, cTax, sRefno, sOwnerCode, iOwner, sDesc,
                   sFullLedger, sAuthor, iInvoice, CreditorCode, sTaxCode,
                   sParentChart,0);

      end;    //  end if-else
  except
    on E : Exception do
    begin
      Raise;
    end;
  end;
end;

procedure JournalSplit(oChartList : TStringList; oTGeneralLedgerObj : TGeneralLedgerObj);
var
  liAmountSum : Currency;
  liAmount    : Currency;
  liTax       : Currency;
  liTaxSum    : Currency;
  liAmt       : Currency;
  liPercent   : Double;
  lsChart     : String;
  loQry       : TUniQuery;
  loTGeneralLedgerObj : TGeneralLedgerObj;
begin
  loQry := nil;
  liAmountSum := 0;
  liTaxSum := 0;
  lsChart := '';

  try
    try
      loQry := TUniQuery.Create(nil);
      LoQry.Connection := dmAxiom.uniInsight;
      GetChartBreakDownData(loQry, oTGeneralLedgerObj.Chart, dmAxiom.Entity);

      if (not loQry.IsEmpty) then
        begin
          loQry.First;

          while (not loQry.Eof) do
            begin
              liTax := 0;

              lsChart := loQry.FieldByName('SUB_CHART').AsString;
              liPercent := loQry.FieldByName('PERCENT').AsFloat;
              liAmt := oTGeneralLedgerObj.Amount;
              loTGeneralLedgerObj := CreateGeneralLedgerObjWith(lsChart, oTGeneralLedgerObj);

              liPercent := (liPercent / 100);
              liAmount := Round(liAmt * liPercent * 100) / 100;

              if (oTGeneralLedgerObj.HasTax) then
                liTax := Round(oTGeneralLedgerObj.Tax * liPercent * 100) / 100;

              if (loQry.FieldByName('IS_ROUNDING').AsString = 'N') then
                begin
                  liAmountSum := liAmountSum + liAmount;

                  if (oTGeneralLedgerObj.HasTax) then
                    liTaxSum := liTaxSum + liTax;

                end
              else
                begin
                  liAmount := oTGeneralLedgerObj.Amount - liAmountSum;

                  if (oTGeneralLedgerObj.HasTax) then
                    liTax := oTGeneralLedgerObj.Tax - liTaxSum;

                end;    //  end if-else

              loTGeneralLedgerObj.Amount := liAmount;
              loTGeneralLedgerObj.Tax := liTax;

              oChartList.AddObject(loTGeneralLedgerObj.Chart, TObject(loTGeneralLedgerObj));

              loQry.Next;

            end;    //  end while

        end
      else
        oChartList.AddObject(oTGeneralLedgerObj.Chart, TObject(oTGeneralLedgerObj));

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

procedure GetChartBreakDownData(loQry : TUniQuery; sChart : String; sEntity : String);
begin
   LoQry.Connection := dmAxiom.uniInsight;
   loQry.Close;
   loQry.SQL.Clear;
   loQry.SQL.Add('SELECT CHART, SUB_CHART, ENTITY, PERCENT, IS_ROUNDING');
   loQry.SQL.Add('FROM CHARTBREAKDOWN');
   loQry.SQL.Add('WHERE CHART = :CHART ');
   loQry.SQL.Add('AND ENTITY = :ENTITY ');
   loQry.SQL.Add('ORDER BY IS_ROUNDING');
   loQry.Params[0].AsString := sChart;
   loQry.Params[1].AsString := sEntity;
   loQry.Open;

end;

function CreateGeneralLedgerObjWith(sChart : String; oTGeneralLedgerObj : TGeneralLedgerObj) : TGeneralLedgerObj;
var
  loQry : TUniQuery;
  loTGeneralLedgerObj : TGeneralLedgerObj;
begin
  loQry := nil;
  loTGeneralLedgerObj := TGeneralLedgerObj.Create;

  try
    loQry := TUniQuery.Create(nil);
    loQry.Connection := dmAxiom.uniInsight;

    loQry.Close;
    loQry.SQL.Clear;
    loQry.SQL.Add('SELECT REPORT_DESC');
    loQry.SQL.Add('FROM CHART');
    loQry.SQL.Add('WHERE CODE = :CODE ');
    loQry.SQL.Add('AND BANK = :ENTITY ');
    loQry.Params[0].AsString := sChart;
    loQry.Params[1].AsString := dmAxiom.Entity;
    loQry.Open;

    if (not loQry.IsEmpty) then
      begin
        loTGeneralLedgerObj.Description := loQry.FieldByName('REPORT_DESC').AsString;

      end
    else
      loTGeneralLedgerObj.Description := '';

  finally
    loQry.Close;
    FreeAndNil(loQry);

  end;    //  end try-finally

  loTGeneralLedgerObj.Chart := sChart;
  loTGeneralLedgerObj.Reason := oTGeneralLedgerObj.Reason;
  loTGeneralLedgerObj.TaxCode := oTGeneralLedgerObj.TaxCode;
  loTGeneralLedgerObj.ChartType := oTGeneralLedgerObj.ChartType;
  loTGeneralLedgerObj.Debit := oTGeneralLedgerObj.Debit;
  loTGeneralLedgerObj.Credit := oTGeneralLedgerObj.Credit;

  Result := loTGeneralLedgerObj;
end;

function getValidMatterNumberSource : String;
var
  loQry : TUniQuery;
  lsSQL : String;
begin
  try
    Result := '';
    loQry := nil;
    lsSQL := 'SELECT decode(E.NEXTMATTER, 0, S.NEXTMATTER, 0, S.NEXTMATTER, E.NEXTMATTER)  FROM ENTITY E, SYSTEMFILE S WHERE';

    try
      loQry := TUniQuery.Create(nil);
      loQry.Connection := dmAxiom.uniInsight;

      loQry.Close;
      loQry.SQL.Clear;
      loQry.SQL.Add(lsSQL);
      loQry.SQL.Add('(E.NEXTMATTER = 0 AND E.CODE = :ENTITY) AND S.NEXTMATTER = 0');
      loQry.Params[0].AsString := dmAxiom.Entity;
      loQry.Open;

      if (not loQry.IsEmpty) then
        begin
          raise Exception.Create('Both the current entity and the system variable for the' + #13#10 +
                                 'next matter number are set to zero.' + #13#10 +
                                 'One must be set to a non-zero number.');

        end;    //  end if

      loQry.Close;
      loQry.SQL.Clear;
      loQry.SQL.Add(lsSQL);
      loQry.SQL.Add('(E.NEXTMATTER <> 0 AND E.CODE = :ENTITY) AND S.NEXTMATTER <> 0');
      loQry.Params[0].AsString := dmAxiom.Entity;
      loQry.Open;

      if (not loQry.IsEmpty) then
        begin
          raise Exception.Create('Both current entity and the system variable for the' + #13#10 +
                                 'next matter number are set to a non-zero number.' + #13#10 +
                                 'Only one can be set to a non-zero number.');

        end;    //  end if

      Result := getSourceForNextMatter;

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

function getSourceForNextMatter : String;
var
  loQry : TUniQuery;
begin
  try
    Result := '';
    loQry := nil;

    try
      loQry := TUniQuery.Create(nil);
      loQry.Connection := dmAxiom.uniInsight;

      loQry.Close;
      loQry.SQL.Clear;
      loQry.SQL.Add('SELECT decode(E.NEXTMATTER, 0, S.NEXTMATTER, 0, S.NEXTMATTER, E.NEXTMATTER)  FROM ENTITY E, SYSTEMFILE S WHERE');
      loQry.SQL.Add('(E.NEXTMATTER = 0 AND E.CODE = :ENTITY) AND S.NEXTMATTER <> 0');
      loQry.Params[0].AsString := dmAxiom.Entity;
      loQry.Open;

      if (loQry.IsEmpty) then
        Result := 'ENTITY'
      else
        Result := 'SYSTEMFILE';

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

function validateAccountCode(sCode : String) : Boolean;
var
  loQry : TUniQuery;
begin
  try
    Result := FALSE;
    loQry := nil;

    try
      loQry := TUniQuery.Create(nil);
      loQry.Connection := dmAxiom.uniInsight;

      loQry.Close;
      loQry.SQL.Clear;
      loQry.SQL.Add('select ''x'' from chart where code = :Code and Bank = :Entity');
      loQry.Params[0].AsString := sCode;
      loQry.Params[1].AsString := dmAxiom.Entity;
      loQry.Open;

      if (loQry.IsEmpty) then
        begin
          Result := TRUE;

        end;    //  end if

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

function LogIntoCheqReqTool : Boolean;
var
  lsEntered : String;
begin
  Result := FALSE;

  if (InputQueryPassword('Insight', 'To continue, please enter the password', lsEntered)) then
    begin
      if (lowercase(lsEntered) = 'timms22') then
        Result := TRUE
      else
        MessageDlg('You have entered an invalid password.', mtWarning, [mbOK], 0);

    end;    // end if-else

end;

function AllowDirectPost(sLedger: string): boolean;
begin
  // Make sure that the ledger exists
  with dmAxiom.qryCharts do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODE ');
    SQL.Add('FROM CHART ');
    SQL.Add('WHERE ALLOW_DIRECT_POSTING = ''Y'' ');
    SQL.Add('AND CODE = :CODE ');
    SQL.Add('AND BANK = :ENTITY ');
    Params[0].AsString := sLedger;
    Params[1].AsString := dmAxiom.Entity;
    Open;

    AllowDirectPost := not IsEmpty;
  end;
end;

function IsMatterArchived(FileId: string): boolean;
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
         loQry.SQL.Add('SELECT ''x'' FROM MATTER WHERE CLOSED = 1 AND ARCHIVED IS NOT NULL ');
         loQry.SQL.Add('AND FILEID = :FILEID');
//         loQry.SQL.Add('AND NMATTER = :NMATTER');
         loQry.Params[0].AsString := FileId;
         loQry.Open;

         Result := not loQry.IsEmpty;

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

function IsValidBankForEntity(sAcct: string): boolean;
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
         loQry.SQL.Add('SELECT ''x'' FROM BANK WHERE ACCT = :ACCT ');
         loQry.SQL.Add('AND ENTITY = :ENTITY');
         loQry.Params[0].AsString := sAcct;
         loQry.Params[1].AsString := dmAxiom.Entity;

         loQry.Open;

         Result := not loQry.IsEmpty;

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

function IsValidMatterForEntity(sFileId: string): boolean;
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
         loQry.SQL.Add('SELECT ''x'' FROM MATTER WHERE FILEID = :sFileId ');
         if dmAxiom.Security.Employee.ChangeEntity = False then
         begin
            loQry.SQL.Add('AND efematteraccess (matter.nmatter, :author, :entity, :defentity) = 0');
            loQry.ParamByName('author').AsString := dmAxiom.UserID;
            loQry.ParamByName('defentity').AsString := dmAxiom.EmpEntity;
         end
         else
            loQry.SQL.Add('AND ENTITY = :ENTITY');
         loQry.ParamByName('sFileId').AsString := sFileId;
         loQry.ParamByName('entity').AsString := dmAxiom.Entity;
         loQry.Open;
         Result := not loQry.IsEmpty;
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

function IsValidMatterForBank(sFileId: string; sBank: string): boolean;
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
         loQry.SQL.Add('SELECT ''x'' FROM MATTER WHERE FILEID = :sFileId ');
         loQry.SQL.Add('AND ACCT = :ACCT');
         loQry.Params[0].AsString := sFileId;
         loQry.Params[1].AsString := sBank;

         loQry.Open;

         Result := not loQry.IsEmpty;

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

function IsValidGLACCTForEntity(sGLAcct: string): boolean;
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
         loQry.SQL.Add('SELECT ''x'' FROM CHART WHERE CODE = :sGLAcct ');
         loQry.SQL.Add('AND BANK = :sBank ');
         loQry.Params[0].AsString := sGLAcct;
         loQry.Params[1].AsString := dmAxiom.Entity;

         loQry.Open;

         Result := not loQry.IsEmpty;

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

function AddEvoCheckDigit(AFileID: Integer): String;
const
  CWeight: array[1..7] of Integer = (9,8,7,6,5,4,3);
var
  LStrIn: String;
  LLen: Integer;
  i: Integer;
  LTotal: Integer;

  function SumDigits(AIn: Integer): Integer;
  begin
    Result := (AIn div 10) + (AIn mod 10);
  end;
begin
  LStrIn := IntToStr(AFileID);
  LLen := Length(LStrIn);
  if(LLen > 7) then
    raise Exception.Create('File ID must be 7 or less digits');

  LStrIn := StuffString('0000000',8-LLen,LLen,LStrIn);

  LTotal := 0;
  for i := 1 to 7 do
    Inc(LTotal,SumDigits(StrToInt(LStrIn[i]) * CWeight[i]));

  Result := IntToStr(AFileID) + IntToStr((10 - (LTotal mod 10)) mod 10);
end;

function DBNumberRounding(NumberToRound: double): double;
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
         loQry.SQL.Add('SELECT trunc(:NumbertoRound,2) "RoundNumber" FROM DUAL ');
         loQry.Params[0].AsFloat := NumbertoRound;

         loQry.Open;

         Result := loQry.FieldByName('RoundNumber').AsFloat;

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

procedure TransItemUpdate(nAccount, nMatter, nAlloc: Integer);
var
  qryUpdate: TUniQuery;
begin
   qryUpdate := TUniQuery.Create(nil);
   try
      with qryUpdate do
      begin
        Connection := dmAxiom.uniInsight;

        SQL.Text := 'UPDATE TRANSITEM SET NMATTER = :nMatter , NALLOC = :nAlloc WHERE NACCOUNT = :nAccount';
        Params[0].AsInteger := nMatter;
        Params[1].AsInteger := nAlloc;
        Params[2].AsInteger := nAccount;
        ExecSQL;
        Free;
      end;
   except
  //    on E: Exception do
          // do nothing
   end;
end;


function GetMatterNoFromFileid(sFileId: string): integer;
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
         loQry.SQL.Add('SELECT NMATTER FROM MATTER WHERE FILEID = :sFileId ');
         loQry.SQL.Add('AND ENTITY = :ENTITY');
         loQry.Params[0].AsString := sFileId;
         loQry.Params[1].AsString := dmAxiom.Entity;

         loQry.Open;

         Result := loQry.Fields[0].AsInteger;

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

function GetEnvelopeId(p_nclient: integer; p_ndocreg: string): string;
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
         loQry.SQL.Add('SELECT max(to_number(envelope)) + 1 FROM DOCREGITEM ');
         loQry.SQL.Add('WHERE NCLIENT = :p_nclient ');
         loQry.SQL.Add('AND NDOCREG = :p_ndocreg ');
         loQry.Params[0].AsInteger := p_nclient;
         loQry.Params[1].AsString := p_ndocreg;

         loQry.Open;

         Result := loQry.Fields[0].AsString;
         if Result = '' then
            Result := '1';

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

// resultSet.Items[0]
// TStringList (resultSet.Items[0]).Strings[0]
function getDataFromTable(ReturnField, Table, LookupField, LookupValue: String; var ColumnNames: TStringList): TList;
var
  qryLookup    : TUniQuery;
  counter, col : integer;
  tmpStrList   : TStringList;
begin
  try
    qryLookup := TUniQuery.Create(nil);
    qryLookup.Connection := dmAxiom.uniInsight;
    with qryLookup do
    begin
      SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table;
      if LookupField <> '' then
        SQL.Text := SQL.TEXT + ' WHERE ' + LookupField; // = :' + LookupField;
      // Params[0].AsString := LookupValue;
      Open;

      if EOF then
      begin
        Result := Nil;
        exit;
      end;

      // Obtain the column names in result set
      ColumnNames := TStringList.Create;
      for counter := 0 to FieldCount - 1 do
        ColumnNames.Add(FieldDefs.Items[counter].Name);

      // Return the result set
      Result := TList.Create;
      while not EOF do
      begin
        tmpStrList := TStringList.Create;
        for col := 0 to FieldCount - 1 do
        begin
          tmpStrList.Add(Fields.Fields[col].AsString);
        end;
        Result.Add(tmpStrList);
        Next;
      end;

      Close;
    end;
    qryLookup.Free;

  finally
  end;
end;

function recalculateAllMatterFees(MatterNo: integer): Boolean;
begin
  recalculateMatterFees(MatterNo, MATTER_FEE_WIP);
  recalculateMatterFees(MatterNo, MATTER_FEE_UNBILLDISB);
  recalculateMatterFees(MatterNo, MATTER_FEE_UNBILLANTD);
  recalculateMatterFees(MatterNo, MATTER_FEE_UNCONVCHEQ);
  recalculateMatterFees(MatterNo, MATTER_FEE_UNBILLSUND);
  recalculateMatterFees(MatterNo, MATTER_FEE_DEBTORS);
  recalculateMatterFees(MatterNo, MATTER_FEE_BILLFEES);
  recalculateMatterFees(MatterNo, MATTER_FEE_TRUSTBAL);
  recalculateMatterFees(MatterNo, MATTER_FEE_CLTRUSTBAL);
  recalculateMatterFees(MatterNo, MATTER_FEE_BILLDISB);

  Result := True;
end;

function recalculateMatterFees(MatterNo, MatterFeeType: integer): Boolean;
var
   select, table, filter : String;
   amount, tax           : Currency;
   colNames              : TStringList;
   resultSet             : TList;
   updQry                : TUniQuery;
begin
   try
      updQry := nil;

      if VarIsNull(MatterNo) then
      begin
         Result := False;
         exit;
      end;

      try
         updQry := TUniQuery.Create(nil);
         updQry.Connection := dmAxiom.uniInsight;

         // getDataFromTable(ReturnField, Table, LookupField, LookupValue: String; var ColumnNames: TStringList): TList;
         case MatterFeeType of
           MATTER_FEE_WIP: // Update matter WIP fees
           begin
             // Obtain WIP amount and tax
             select := 'nvl(sum(nvl(amount,0)),0) as AMOUNT';
             table  := 'fee';
             filter := 'nmatter = ' + IntToStr(MatterNo) + ' AND billed = ''N''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             select := 'nvl(sum(TAX),0) TAX ';
             filter := 'nmatter = ' + IntToStr(MatterNo) + ' AND billed = ''N''';
             filter := filter + ' AND nvl(TYPE,''NA'') <> ''wo'' ';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             tax    := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET unbill_fees = :p_amount');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount + tax;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_UNBILLDISB: // Update matter Unbill Disbursement
           begin
             // Obtain Unbill Disbursement amount
             select := 'nvl(sum(nvl(amount * -1,0)),0) AS AMOUNT ';
	     table  := 'alloc';
             filter := 'nmatter = ' + IntToStr(MatterNo);
             filter := filter + ' AND nvl(billed, ''N'') = ''N''';
	     filter := filter + ' AND nvl(TRUST, ''G'') <> ''T''';
	     filter := filter + ' AND (nvl(ncheque,0) > 0';
	     filter := filter + '      OR ';
             filter := filter + '      (nvl(njournal,0) > 0 and type = ''J2'')';
             filter := filter + '     ) ';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

	     select := 'nvl(sum(nvl(tax * -1,0)),0) AS TAX';
	     table  := 'alloc';
	     filter := 'nmatter = ' + IntToStr(MatterNo);
	     filter := filter + ' AND nvl(billed,''N'') = ''N''';
             filter := filter + ' AND nvl(TRUST,''G'') <> ''T''';
	     filter := filter + ' AND (nvl(ncheque,0) > 0';
	     filter := filter + '      OR ';
	     filter := filter + '      (nvl(njournal,0) > 0 and type = ''J2'')';
	     filter := filter + '     ) ';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             tax    := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET unbill_disb = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount + tax;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_UNBILLANTD: // Update matter Unbill Ant Disbursement
           begin
             select := 'nvl(sum(nvl(amount  ,0)),0) AMOUNT';
	     table  := 'cheqreq';
	     filter := 'nmatter = ' + IntToStr(MatterNo);
             filter := filter + ' AND billed = ''N''';
	     filter := filter + ' AND converted <> ''R''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

	     select := 'nvl(SUM(TAX),0) TAX';
	     table  := 'cheqreq';
             filter := 'nmatter = ' + IntToStr(MatterNo);
	     filter := filter + ' AND billed = ''N''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             tax    := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET unbill_antd = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount + tax;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_UNCONVCHEQ: // Update matter Unconverted Cheque
           begin
             select := 'nvl(sum(nvl(amount ,0)),0) AMOUNT';
             table  := 'cheqreq';
             filter := 'nmatter = ' + IntToStr(MatterNo);
	     filter := filter + ' AND converted = ''N''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             select := 'nvl(sum(TAX),0) TAX';
	     table  := 'cheqreq';
             filter := 'nmatter = ' + IntToStr(MatterNo);
	     filter := filter + ' AND converted <> ''Y''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             tax    := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET unbill_creq = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount + tax;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_UNBILLSUND: // Update matter Unbill Sundries
           begin
             select := 'nvl(sum(amount),0) as AMOUNT';
	     table  := 'sundry';
	     filter := 'nmatter = ' + IntToStr(MatterNo);
	     filter := filter + ' AND billed = ''N''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             select := 'nvl(sum(TAX),0) TAX';
             table  := 'sundry';
	     filter := 'nmatter = ' + IntToStr(MatterNo);
	     filter := filter + ' AND billed = ''N''';
             filter := filter + ' AND nvl(TYPE,''NA'') <> ''wo''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             tax    := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET unbill_sund = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount + tax;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_DEBTORS: // Update matter Debtors
           begin
	     select := 'nvl(sum(amount), 0) as AMOUNT';
	     table  := '(';
	     table  := table + ' SELECT (nvl(alloc.amount, 0) + NVL(alloc.tax, 0)) as AMOUNT';
	     table  := table + ' FROM alloc';
	     table  := table + ' WHERE alloc.nmatter = ' + IntToStr(MatterNo);
	     table  := table + ' AND alloc.trust <> ''T''';
	     table  := table + ' AND alloc.type <> ''DR''';
	     table  := table + ' AND (alloc.nreceipt <> 0 OR alloc.type = ''J1'' OR alloc.type = ''RF'')';
             table  := table + 'UNION ALL';
             table  := table + ' SELECT (nvl(fees,0) + nvl(disb,0) + nvl(sund,0) + nvl(antd,0) + nvl(tax,0))*-1 as AMOUNT';
             table  := table + ' FROM nmemo';
	     table  := table + ' WHERE nmatter = ' + IntToStr(MatterNo);
	     table  := table + ' AND DISPATCHED IS NOT NULL';
	     table  := table + ' AND IS_DRAFT = ''N''';
	     table  := table + ' AND RV_TYPE <> ''D''';
	     table  := table + ' )';
             resultSet := getDataFromTable(select, table, '', '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET debtors = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_BILLFEES: // Update matter Bill Fees
           begin
             select := 'nvl(sum(amount),0) as AMOUNT';
             table  := 'fee';
             filter := 'nmatter = ' + IntToStr(MatterNo);
             filter := filter + ' AND billed = ''Y''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET bill_fees = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_TRUSTBAL: // Update matter Trust Balance
           begin
             select := 'nvl(sum(amount),0) as AMOUNT';
             table  := 'alloc';
             filter := 'nmatter = ' + IntToStr(MatterNo);
             filter := filter + ' AND trust = ''T''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET trust_bal = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_CLTRUSTBAL: // Update matter Cleared Trust Balance
           begin
             select := 'nvl(sum(amount),0) as AMOUNT';
	     table  := 'alloc';
	     filter := 'nmatter = ' + IntToStr(MatterNo);
             filter := filter + ' AND trust = ''T''';
	     filter := filter + ' AND cleared = ''Y''';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET cl_trust_bal = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;

           MATTER_FEE_BILLDISB: // Update matter Billed Disbursements
           begin
             select := 'nvl(sum(nvl(amount * -1,0)),0) as AMOUNT';
             table  := 'alloc';
	     filter := 'nmatter = ' + IntToStr(MatterNo);
             filter := filter + ' AND nvl(billed,''N'') = ''Y''';
             filter := filter + ' AND nvl(TRUST,''G'') <> ''T''';
             filter := filter + ' AND (nvl(ncheque,0) > 0 or (nvl(njournal,0) > 0 and type = ''J2''))';
             resultSet := getDataFromTable(select, table, filter, '', colNames);
             amount := StrToCurr(TStringList (resultSet.Items[0]).Strings[0]);

             // Update matters table
             updQry.Close;
             updQry.SQL.Clear;
             updQry.SQL.Add('UPDATE matter ');
             updQry.SQL.Add('SET bill_disb = :p_amount ');
             updQry.SQL.Add('WHERE nmatter = :p_MatterNo ');
             updQry.Params[0].AsCurrency := amount;
             updQry.Params[1].AsInteger := MatterNo;
             updQry.ExecSQL;
           end;
         else
           // Invalid matter fee type passed
           Result := False;
           exit;
         end;

         Result := True;
    finally
      updQry.Close;
      FreeAndNil(updQry);
    end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
end;

function IsCRInvoiceUnique(InvNo: string; nClient: integer): boolean;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;
      if nClient > 0 then
      begin
         try
            loQry := TUniQuery.Create(nil);
            loQry.Connection := dmAxiom.uniInsight;

            loQry.Close;
            loQry.SQL.Clear;
            loQry.SQL.Add('SELECT ''x'' FROM CHEQREQ WHERE CREDITOR_INVOICE = :InvNo and NNAME = :nClient');
            loQry.Params[0].AsString := InvNo;
            loQry.Params[1].AsInteger := nClient;

            loQry.Open;

            if loQry.IsEmpty then
               Result := True
            else
               Result := loQry.Eof;

         finally
            loQry.Close;
            FreeAndNil(loQry);
         end;    //  end try-finally
      end
      else
         Result := True;
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
end;

function PreassignBill() : Boolean;
begin       
  try
    with dmAxiom.qryTmp do
    begin
      Close;
      SQL.Text := 'SELECT PREASSIGN_BILL_NO FROM SYSTEMFILE';
      ExecSQL;

      if FieldByName('PREASSIGN_BILL_NO').AsString = 'Y' then
        Result := True
      Else
        Result := False;
      Close;
    end;
  except
    // Didn't work for some reason
    On E: Exception do
    begin
      MsgErr('Error occured getting the preassign bill no for system' + #13 + #13 + E.Message);
      Result := False;
    end;
  end;
end;

function Check_ABN(ABN: string; var msg: string): boolean;
var
   ABN_code: string;
	weighted_total: integer;
	i: integer;
	ABN_digit: integer;
begin
   { if Exempt indicate an exemption provided }
   if ( ABN = 'EXEMPT') then
   begin
      Result := True;
      Exit;
   end;

   // --- strip out formatting
   for i := 1 to length(ABN) do
   begin
      if ((ABN[i] >= '0') AND (ABN[i] <= '9')) then
      begin
         ABN_code := ABN_code + ABN[i];
      end;
   end;


   //* --- Check correct length */
   if ( Length(ABN_code) <> 11 ) then
   begin
     msg := 'Incorrect ABN - must have 11 digits.';
     Result := FALSE;
     Exit;
   end;

   //* --- Check correct leading digit */
   if ( LeftStr(ABN_code,1) = '0') then
   begin
     msg := 'Incorrect ABN - must not start with zero.';
     Result := False;
     Exit;
   end;

   weighted_total := 0;
   for  i := 1 to 11 do
   begin
      //* --- Take 1 off the first digit  */
      if ( i = 1 ) then
         ABN_code :=  IntToStr(StrToInt(LeftStr(ABN_code,1)) - 1) + RightStr(ABN_code,10);

      //* --- Multiply by ABN defined weighting */
      ABN_digit := StrToInt(ABN_code[i]);
      weighted_total := weighted_total + (ABN_digit * weighting[i]);
   end;

   //* --- Modulus of 89 */
   if ( (weighted_total mod 89) <> 0 ) then
   begin
      msg := 'Invalid ABN number - does not comply with ATO validity checking.';
      Result := False;
      Exit;
   end
   else
      Result := True;
end;

// from matter labels dll

function EmpString(sCode : string; sField : string) : string;
begin
  with dmAxiom.qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT ' + sField + ' FROM EMPLOYEE WHERE CODE = ''' + sCode + '''';
    Prepare;
    Open;
    if not IsEmpty then
      EmpString := FieldByName(sField).AsString
    else
      EmpString := '';
  end;
end;

function BillTemplateType(sCode: string): string;
var
  sLookup: string;
begin
  sLookup := sCode;
  BillTemplateType := '';
  with dmAxiom.qryNew do
  begin
    Close;
    if sLookup <> '' then
    begin
      SQL.Text := 'SELECT REPORT_TYPE FROM BILLTEMPLATE WHERE CODE = :CODE';
      Params[0].AsString := sLookup;
      Open;
      if not IsEmpty then
        BillTemplateType := FieldByName('REPORT_TYPE').AsString
      else
        sLookup := '';
    end;
    if sLookup = '' then
    begin
      SQL.Text := 'SELECT REPORT_TYPE FROM BILLTEMPLATE WHERE DEFAULTBILL = ''Y''';
      Open;
      if not IsEmpty then
        BillTemplateType := FieldByName('REPORT_TYPE').AsString;
    end
  end;
end;

// One of these should go, since they are identical.

function GetNextSequence(sSequence: string): Integer;
begin
  with dmAxiom.qryTmp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + sSequence + '.NEXTVAL');
    SQL.Add('FROM DUAL');
    ExecSQL;
    Result := Fields[0].AsInteger;
    Close;
  end;
end;

function GetEnforceBSBDD(ABank: string): string;
var
   sTmp : string;
begin
   sTmp := '';
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ENFORCE_BSB_DD FROM BANK WHERE ACCT = :ABank');
      ParamByName('ABank').AsString := ABank;
      Open;
      sTmp := FieldbyName('ENFORCE_BSB_DD').AsString;
      Close;
   end;
   GetEnforceBSBDD := sTmp;
end;

function checkChildRecords(sSource : String;
                           var sMessage : String; ikey : integer): boolean;
var
   qTmp,
   qTmpTables: TUniQuery;
   iLoop : integer;
   bResult : boolean;
   sSearch: string;
begin
  sMessage := '';
  bResult := true;
  qTmp := TUniQuery.Create(nil);
  qTmpTables := TUniQuery.Create(nil);

   try

      qTmp.Connection := dmAxiom.uniInsight;
      qTmpTables.Connection := dmAxiom.uniInsight;
      qTmpTables.Close;
      qTmpTables.SQL.Text := 'select * from checktables where source_table = :source_table';
      qTmpTables.ParamByName('source_table').AsString := sSource;
      qTmpTables.Open;
      while not qTmpTables.Eof do
      begin
         qTmp.close;
         qTmp.SQL.Clear;
         qTmp.SQL.Add('select ' + qTmpTables.FieldByName('keys').AsString + ' as KEY');
         qTmp.SQL.Add('from ' + qTmpTables.FieldByName('tables').AsString );
         qTmp.SQL.Add(' where  ' + qTmpTables.FieldByName('fields').AsString+ ' =  :nname');
         qTmp.paramByName('nname').AsInteger := iKey;

         qTmp.open;
         if not qTmp.Eof then
         begin
            bResult := false;
            if sSource = 'PHONEBOOK' then
            begin
               sSearch := TableString('PHONEBOOK','NNAME', iKey{qTmp.fieldByName('KEY').AsString},'SEARCH');
            end;

            if sSource = 'MATTER' then
            begin
               sSearch := TableString('MATTER','NMATTER', iKey,'FILEID');
            end;

            if sSource = 'CLIENT' then
            begin
               sSearch := TableString('PHONEBOOK','NCLIENT', iKey,'SEARCH');
            end;

            sMessage :=  sMessage + #10 + ' Record is referenced in table ' + qTmpTables.FieldByName('tables').AsString +
                         '(' + qTmpTables.FieldByName('keys').AsString + '=' + qTmp.fieldByName('KEY').AsString + '- (' + sSearch + '))';

         end;
         qTmp.Close;
         qTmpTables.Next;
      end;
   finally
      qTmp.free;
      qTmpTables.free;
   end;

    checkChildRecords := bResult;
end;

function CreateBPayReference(BPay: string): string;
var
   BPay_code, StMP: string;
	weighted_total: integer;
	k, i, R, Tmp: integer;
	BPay_digit, BPay_Array: integer;
   BPayLength: integer;
begin
   BPayLength := SystemInteger('bpay_code_length');
   if length(BPay) < (BPayLength - 1) then
   begin
      for i := 1 to (BPayLength - 1) - length(BPay) do
      begin
         BPay := '0'+ BPay;
         {if length(BPay) = 7 then exit;}
      end;
   end;

   // --- strip out formatting
   for i := 1 to length(BPay) do
   begin
      if ((BPay[i] >= '0') AND (BPay[i] <= '9')) then
      begin
         BPay_code := BPay_code + BPay[i];
      end;
   end;

   weighted_total := 0;
   BPay_Array := 20;
   for  i := length(BPay) downto 1 do
   begin
      BPay_digit := StrToInt(BPay_code[i]);
      Tmp := (BPay_digit * BPay_WEIGHTING[BPay_Array]);
      if Length(IntToStr(Tmp)) > 1 then
      begin
         sTmp := IntToStr(Tmp);
         k := StrToInt(sTmp[1]) + StrToInt(sTmp[2]);
         Tmp := k;
      end;
      weighted_total := weighted_total + Tmp;
      Dec(BPay_Array);
   end;
   R := (weighted_total mod 10);

   if R = 0 then
      Result := BPay_code + ' ' + IntToStr(0)
   else
      Result := BPay_code + ' ' + IntToStr(10 - R);
end;

procedure CloseOpenTabs;
var
  i: Integer;
begin
   for i:= frmDesktop.pageForms.PageCount - 1 downto 1 do
   begin
      frmDesktop.pageForms.ActivePageIndex := i;
      frmDesktop.pageForms.Pages[i].Destroy;  //    RemoveForm(frmDesktop.fdTab.Forms[i], True);
   end;
end;

procedure CloseAllOtherForms;
var
  i: Integer;
begin
   for i:= Screen.Formcount-1 downto 0 do
   begin
      if Screen.Forms[i].Name <> 'frmDesktop' then
         Screen.forms[i].Close;
   end;
end;

procedure SetReqFieldsColour(sTableName: String; dDataSet: TDataSet; AForm: TForm); overload;
var
   sMessage : String;
   iloop, i, a, x : Integer;
   ChildControl, GPChildControl: TControl;
begin
   sMessage := '';
   dmTableCache.LoadVirtualTable(dmTableCache.vtReqFields,'REQFIELD','');

   // loop though the dataset
   for iloop := 0 to dDataSet.Fields.count-1 do
   begin
       // is this field required
//      if dDataSet.Fields[iloop].AsVariant = null then
//      begin
      // has colour been set?
         dmTableCache.vtReqFields.First;
         while not dmTableCache.vtReqFields.eof do
         begin
            if (dmTableCache.vtReqFields.FieldByName('TABLE_NAME').AsString = sTableName) and
               (dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString = dDataSet.Fields[iloop].FieldName) then
            begin
               if not dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').IsNull then
               begin
                  for i := 0 to AForm.ControlCount - 1 do
                  begin
                     ChildControl := AForm.Controls[I];
                     if (ChildControl is TDBEdit) then
                     begin
                        if TDBEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TDBEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
{                     if (ChildControl is TRxDBComboEdit) then
                     begin
                        if TrxDBComboEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TrxDBComboEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TRxDBLookupCombo) then
                     begin
                        if TRxDBLookupCombo(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TRxDBLookupCombo(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;       }
{                     if (ChildControl is TDBDateEdit) then
                     begin
                        if TDBDateEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TDBDateEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;    }
                     if (ChildControl is TcxDBLookupComboBox) then
                     begin
                        if TcxDBLookupComboBox(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBLookupComboBox(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBCurrencyEdit) then
                     begin
                        if TcxDBCurrencyEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBCurrencyEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
 {                    if (ChildControl is TRxDBLookupCombo) then
                     begin
                        if TRxDBLookupCombo(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TRxDBLookupCombo(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;     }
                     if (ChildControl is TcxDBExtLookupComboBox) then
                     begin
                        if TcxDBExtLookupComboBox(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBExtLookupComboBox(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxGroupBox) then
                     begin
                        dmAxiom.qryReqFields.Close;
                        dmAxiom.qryReqFields.ParamByName('table_name').AsString := sTableName;
                        dmAxiom.qryReqFields.Open;
                        for x := 0 to dDataSet.Fields.count-1 do
                           if dDataSet.Fields[x].AsVariant = null then
                           begin
                              dmAxiom.qryReqFields.First;
                              while not dmAxiom.qryReqFields.EOF do
                              begin
                                 if not dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').IsNull then
                                 begin
                                    for a := 0 to TcxGroupBox(ChildControl).ControlCount - 1 do
                                    begin
                                       GPChildControl := TcxGroupBox(ChildControl).Controls[a];
                                       if (GPChildControl is TcxDBLookupComboBox) then
                                       begin
                                          if TcxDBLookupComboBox(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBLookupComboBox(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TDBEdit) then
                                       begin
                                          if TDBEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TDBEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
    {                                   if (GPChildControl is TRxDBComboEdit) then
                                       begin
                                          if TrxDBComboEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TrxDBComboEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TRxDBLookupCombo) then
                                       begin
                                          if TRxDBLookupCombo(GPChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                                             TRxDBLookupCombo(GPChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TDBDateEdit) then
                                       begin
                                          if TDBDateEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TDBDateEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;  }
                                       if (GPChildControl is TcxDBExtLookupComboBox) then
                                       begin
                                          if TcxDBExtLookupComboBox(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBExtLookupComboBox(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TcxDBCurrencyEdit) then
                                       begin
                                          if TcxDBCurrencyEdit(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBCurrencyEdit(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TcxDBTextEdit) then
                                       begin
                                          if TcxDBTextEdit(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBTextEdit(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                    end;
                                 end;
                                 dmAxiom.qryReqFields.next;
                              end;
                           end;
                     end;
                  end;
               end;
            end;
            dmTableCache.vtReqFields.next;
         end;
//      end;
   end;
end;


procedure SetReqFieldsColour(sTableName: String; dDataSet: TDataSet; ATabSheet: TTabSheet); overload;
var
   sMessage : String;
   iloop, i, a, x : Integer;
   ChildControl, GPChildControl: TControl;
begin
   sMessage := '';
   dmTableCache.LoadVirtualTable(dmTableCache.vtReqFields,'REQFIELD','');

   // loop though the dataset

   for iloop := 0 to dDataSet.Fields.count-1 do
   begin
       // is this fields required
//      if dDataSet.Fields[iloop].AsVariant = null then
//      begin
      // has colour been set?
         dmTableCache.vtReqFields.First;
         while not dmTableCache.vtReqFields.eof do
         begin
            if (dmTableCache.vtReqFields.FieldByName('TABLE_NAME').AsString = sTableName)
            and (dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString = dDataSet.Fields[iloop].FieldName) then
            begin
               if not dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').IsNull then
               begin
                  for i := 0 to ATabSheet.ControlCount - 1 do
                  begin
                     ChildControl := ATabSheet.Controls[I];
                     if (ChildControl is TDBEdit) then
                     begin
                        if TDBEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TDBEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
 {                    if (ChildControl is TRxDBComboEdit) then
                     begin
                        if TrxDBComboEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TrxDBComboEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TRxDBLookupCombo) then
                     begin
                        if TRxDBLookupCombo(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TRxDBLookupCombo(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;  }
                     if (ChildControl is TcxDBLookupComboBox) then
                     begin
                        if TcxDBLookupComboBox(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBLookupComboBox(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBButtonEdit) then
                     begin
                        if TcxDBButtonEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBButtonEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBCurrencyEdit) then
                     begin
                        if TcxDBCurrencyEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBCurrencyEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBLookupComboBox) then
                     begin
                        if TcxDBLookupComboBox(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBLookupComboBox(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBTextEdit) then
                     begin
                        if TcxDBTextEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBTextEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBMaskEdit) then
                     begin
                        if TcxDBMaskEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBMaskEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBDateEdit) then
                     begin
                        if TcxDBDateEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBDateEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBExtLookupComboBox) then
                     begin
                        if TcxDBExtLookupComboBox(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBExtLookupComboBox(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
{                    if (ChildControl is TAddictDBRichEdit) then
                     begin
                        if TAddictDBRichEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TAddictDBRichEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;   }
                     if (ChildControl is TDBRichEdit) then
                     begin
                        if TDBRichEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TDBRichEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxGroupBox) then
                     begin
                        dmAxiom.qryReqFields.Close;
                        dmAxiom.qryReqFields.ParamByName('table_name').AsString := sTableName;
                        dmAxiom.qryReqFields.Open;
                        for x := 0 to dDataSet.Fields.count-1 do
                           if dDataSet.Fields[x].AsVariant = null then
                           begin
                              dmAxiom.qryReqFields.First;
                              while not dmAxiom.qryReqFields.EOF do
                              begin
                                 if not dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').IsNull then
                                 begin
                                    for a := 0 to TcxGroupBox(ChildControl).ControlCount - 1 do
                                    begin
                                       GPChildControl := TcxGroupBox(ChildControl).Controls[a];
                                       if (GPChildControl is TcxDBLookupComboBox) then
                                       begin
                                          if TcxDBLookupComboBox(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBLookupComboBox(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TDBEdit) then
                                       begin
                                          if TDBEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TDBEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
  {                                     if (GPChildControl is TRxDBComboEdit) then
                                       begin
                                          if TrxDBComboEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TrxDBComboEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TRxDBLookupCombo) then
                                       begin
                                          if TRxDBLookupCombo(GPChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                                             TRxDBLookupCombo(GPChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TDBDateEdit) then
                                       begin
                                          if TDBDateEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TDBDateEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;    }
                                       if (GPChildControl is TcxDBExtLookupComboBox) then
                                       begin
                                          if TcxDBExtLookupComboBox(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBExtLookupComboBox(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TcxDBCurrencyEdit) then
                                       begin
                                          if TcxDBCurrencyEdit(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBCurrencyEdit(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TcxDBTextEdit) then
                                       begin
                                          if TcxDBTextEdit(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBTextEdit(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
{                                       if (GPChildControl is TAddictDBRichEdit) then
                                       begin
                                          if TAddictDBRichEdit(GPChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                                             TAddictDBRichEdit(GPChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;   }
                                    end;
                                 end;
                                 dmAxiom.qryReqFields.next;
                              end;
                           end;
                     end;
                  end;
               end;
            end;
            dmTableCache.vtReqFields.next;
         end;
//      end;
   end;
end;

procedure SetReqFieldsColour(sTableName: String; dDataSet: TDataSet; ATabSheet: TcxTabSheet); overload;
var
   sMessage : String;
   iloop, i, a, x : Integer;
   ChildControl, GPChildControl: TControl;
begin
   sMessage := '';
   dmTableCache.LoadVirtualTable(dmTableCache.vtReqFields,'REQFIELD','');

   // loop though the dataset

   for iloop := 0 to dDataSet.Fields.count-1 do
   begin
       // is this fields required
//      if dDataSet.Fields[iloop].AsVariant = null then
//      begin
      // has colour been set?
         dmTableCache.vtReqFields.First;
         while not dmTableCache.vtReqFields.eof do
         begin
            if (dmTableCache.vtReqFields.FieldByName('TABLE_NAME').AsString = sTableName) and
               (dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString = dDataSet.Fields[iloop].FieldName) then
            begin
               if not dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').IsNull then
               begin
                  for i := 0 to ATabSheet.ControlCount - 1 do
                  begin
                     ChildControl := ATabSheet.Controls[I];
                     if (ChildControl is TDBEdit) then
                     begin
                        if TDBEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TDBEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
  {                   if (ChildControl is TRxDBComboEdit) then
                     begin
                        if TrxDBComboEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TrxDBComboEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TRxDBLookupCombo) then
                     begin
                        if TRxDBLookupCombo(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TRxDBLookupCombo(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TDBDateEdit) then
                     begin
                        if TDBDateEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TDBDateEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;  }

                     if (ChildControl is TcxDBLookupComboBox) then
                     begin
                        if TcxDBLookupComboBox(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBLookupComboBox(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBButtonEdit) then
                     begin
                        if TcxDBButtonEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBButtonEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBCurrencyEdit) then
                     begin
                        if TcxDBCurrencyEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBCurrencyEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBLookupComboBox) then
                     begin
                        if TcxDBLookupComboBox(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBLookupComboBox(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBTextEdit) then
                     begin
                        if TcxDBTextEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBTextEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBMaskEdit) then
                     begin
                        if TcxDBMaskEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBMaskEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBDateEdit) then
                     begin
                        if TcxDBDateEdit(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBDateEdit(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxDBExtLookupComboBox) then
                     begin
                        if TcxDBExtLookupComboBox(ChildControl).Databinding.DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TcxDBExtLookupComboBox(ChildControl).Style.Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
{                    if (ChildControl is TAddictDBRichEdit) then
                     begin
                        if TAddictDBRichEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TAddictDBRichEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;    }
                     if (ChildControl is TDBRichEdit) then
                     begin
                        if TDBRichEdit(ChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                           TDBRichEdit(ChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                     end;
                     if (ChildControl is TcxGroupBox) then
                     begin
                        dmAxiom.qryReqFields.Close;
                        dmAxiom.qryReqFields.ParamByName('table_name').AsString := sTableName;
                        dmAxiom.qryReqFields.Open;
                        for x := 0 to dDataSet.Fields.count-1 do
                           if dDataSet.Fields[x].AsVariant = null then
                           begin
                              dmAxiom.qryReqFields.First;
                              while not dmAxiom.qryReqFields.EOF do
                              begin
                                 if not dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').IsNull then
                                 begin
                                    for a := 0 to TcxGroupBox(ChildControl).ControlCount - 1 do
                                    begin
                                       GPChildControl := TcxGroupBox(ChildControl).Controls[a];
                                       if (GPChildControl is TcxDBLookupComboBox) then
                                       begin
                                          if TcxDBLookupComboBox(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBLookupComboBox(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TDBEdit) then
                                       begin
                                          if TDBEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TDBEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
 {                                      if (GPChildControl is TRxDBComboEdit) then
                                       begin
                                          if TrxDBComboEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TrxDBComboEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TRxDBLookupCombo) then
                                       begin
                                          if TRxDBLookupCombo(GPChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                                             TRxDBLookupCombo(GPChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TDBDateEdit) then
                                       begin
                                          if TDBDateEdit(GPChildControl).DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TDBDateEdit(GPChildControl).Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;    }
                                       if (GPChildControl is TcxDBExtLookupComboBox) then
                                       begin
                                          if TcxDBExtLookupComboBox(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBExtLookupComboBox(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TcxDBCurrencyEdit) then
                                       begin
                                          if TcxDBCurrencyEdit(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBCurrencyEdit(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
                                       if (GPChildControl is TcxDBTextEdit) then
                                       begin
                                          if TcxDBTextEdit(GPChildControl).Databinding.DataField = dmAxiom.qryReqFields.FieldByName('FIELD_NAME').AsString then
                                             TcxDBTextEdit(GPChildControl).Style.Color := dmAxiom.qryReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;
{                                     if (GPChildControl is TAddictDBRichEdit) then
                                       begin
                                          if TAddictDBRichEdit(GPChildControl).DataField = dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString then
                                             TAddictDBRichEdit(GPChildControl).Color := dmTableCache.vtReqFields.FieldByName('FLD_COLOUR').AsInteger;
                                       end;  }
                                    end;
                                 end;
                                 dmAxiom.qryReqFields.next;
                              end;
                         end;
                     end;
                  end;
               end;
            end;
            dmTableCache.vtReqFields.next;
         end;
   //   end;
   end;
end;

Function IsExeRunning(const sExeName : String; var ProcCount: integer): Boolean;
var
   SnapProcHandle: THandle;
   ProcEntry: TProcessEntry32;
   NextProc: Boolean;
begin
   result := False;

   SnapProcHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

   if SnapProcHandle = INVALID_HANDLE_VALUE then
      exit;

   ProcEntry.dwSize := SizeOf(ProcEntry);
   NextProc := Process32First(SnapProcHandle, ProcEntry);
   while NextProc do begin
      if UpperCase(StrPas(ProcEntry.szExeFile)) = UpperCase(sExeName) then begin
         result := True;
         Inc(ProcCount);
      end;
      NextProc := Process32Next(SnapProcHandle, ProcEntry);
   end;
   CloseHandle(SnapProcHandle);
end;

function GetSequenceNumber(sSequence: string): Integer;
begin
  with dmAxiom.qryTmp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + sSequence + '.nextval');
    SQL.Add('FROM DUAL');
    ExecSQL;
    Result := Fields[0].AsInteger;
    Close;
  end;
end;

function ProcString(Proc: string; LookupValue: integer): string; overload;
begin
//   Result := IntToStr(dmAxiom.uniInsight.ExecProc(Proc,[lookupValue]));
   with dmAxiom.procTemp do
   begin
     storedProcName := Proc;
     PrepareSQL;
     Params[1].AsInteger := LookupValue;
     Execute;
     Result := Params[0].AsString;
   end;
end;

function ProcInteger(Proc: string): integer; overload;
begin
//   Result := IntToStr(dmAxiom.uniInsight.ExecProc(Proc,[lookupValue]));
   with dmAxiom.procTemp do
   begin
     storedProcName := Proc;
     PrepareSQL;
     Execute;
     Result := Params[0].AsInteger;
   end;
end;

function ProcInteger(Proc: string; LookupValue: Integer): integer; overload;
begin
//   Result := IntToStr(dmAxiom.uniInsight.ExecProc(Proc,[lookupValue]));
   with dmAxiom.procTemp do
   begin
     storedProcName := Proc;
     PrepareSQL;
     Params[1].AsInteger := LookupValue;
     Execute;
     Result := Params[0].AsInteger;
   end;
end;

function ProcInteger(Proc: string; LookupValue: TDateTime): integer; overload;
begin
//   Result := IntToStr(dmAxiom.uniInsight.ExecProc(Proc,[lookupValue]));
   with dmAxiom.procTemp do
   begin
     storedProcName := Proc;
     PrepareSQL;
     Params[1].AsDateTime := LookupValue;
     Execute;
     Result := Params[0].AsInteger;
   end;
end;

function ProcInteger(Proc: string; LookupValue1, LookupValue2: TDateTime): integer; overload;
begin
//   Result := IntToStr(dmAxiom.uniInsight.ExecProc(Proc,[lookupValue]));
   with dmAxiom.procTemp do
   begin
     storedProcName := Proc;
     PrepareSQL;
     Params[1].AsDateTime := LookupValue1;
     Params[2].AsDateTime := LookupValue2;
     Execute;
     Result := Params[0].AsInteger;
   end;
end;

function ProcInteger(Proc: string; LookupValue1, LookupValue2: TDateTime; LookupValue3: string): integer; overload;
begin
//   Result := IntToStr(dmAxiom.uniInsight.ExecProc(Proc,[lookupValue]));
   with dmAxiom.procTemp do
   begin
     storedProcName := Proc;
     PrepareSQL;
     Params[1].AsDateTime := LookupValue1;
     Params[2].AsDateTime := LookupValue2;
     Params[3].AsString   := LookupValue3;
     Execute;
     Result := Params[0].AsInteger;
   end;
end;

function AllowBillReverse(PnMemo: integer): boolean;
var
   qTmp: TUniQuery;
begin
   try
      AllowBillReverse := True;
      qTmp := TUniQuery.Create(nil);
      qTmp.Connection := dmAxiom.uniInsight;
      with qTmp do
      begin
         SQL.Text := 'select * from nmemo where nmemo = :nmemo';
         ParamByName('nmemo').AsInteger := PnMemo;
         Open;
         if not Eof then
         begin
            if ((FieldByName('RV_TYPE').AsString = 'R') or
               (FieldByName('RV_TYPE').AsString = 'C') or
		         (FieldByName('TAKE_ON').AsString = 'Y')) then
            begin
               AllowBillReverse := False;
            end;

            if (FieldByName('FEES_PAID').AsCurrency + FieldByName('DISB_PAID').AsCurrency +
               FieldByName('ANTD_PAID').AsCurrency + FieldByName('SUND_PAID').AsCurrency +
               FieldByName('UPCRED_PAID').AsCurrency + FieldByName('FEES_WOFF').AsCurrency +
               FieldByName('DISB_WOFF').AsCurrency + FieldByName('ANTD_WOFF').AsCurrency +
               FieldByName('SUND_WOFF').AsCurrency + FieldByName('UPCRED_WOFF').AsCurrency) <> 0 then
            begin
               AllowBillReverse := False;
            end;

            if (FieldByName('FEES_PAID').AsCurrency + FieldByName('DISB_PAID').AsCurrency +
               FieldByName('ANTD_PAID').AsCurrency + FieldByName('SUND_PAID').AsCurrency +
               FieldByName('UPCRED_PAID').AsCurrency + FieldByName('FEES_WOFF').AsCurrency +
               FieldByName('DISB_WOFF').AsCurrency + FieldByName('ANTD_WOFF').AsCurrency +
               FieldByName('SUND_WOFF').AsCurrency + FieldByName('UPCRED_WOFF').AsCurrency) <> 0 then
            begin
               AllowBillReverse := False;
            end;

            if ( FieldByName('total').AsCurrency <> FieldByName('owing').AsCurrency ) then
            begin
               AllowBillReverse := False;
            end;

            if ( FieldByName('IS_DRAFT').AsString = 'Y') then
            begin
               AllowBillReverse := False;
            end;
         end;
         Close;
      end;
   finally
      qTmp.Free;
   end;
end;

function GetBillOwing(PnMemo: integer): Currency;
var
   qTmp: TUniQuery;
begin
   try
      GetBillOwing := 0;
      qTmp := TUniQuery.Create(nil);
      qTmp.Connection := dmAxiom.uniInsight;
      with qTmp do
      begin
         SQL.Text := 'select * from nmemo where nmemo = :nmemo';
         ParamByName('nmemo').AsInteger := PnMemo;
         Open;

         GetBillOwing := FieldByName('owing').AsCurrency;

         Close;
      end;
   finally
      qTmp.Free;
   end;
end;

function GetMIMEType(FileExt: string): string;
var
  I: Integer;
  S: array[0..255] of Char;
const
  MIMEStart = 101;
  // ID of first MIME Type string (IDs are set in the .rc file
  // before compiling with brcc32)
  MIMEEnd = 742; //ID of last MIME Type string
begin
  Result := 'text/plain';
  // If the file extenstion is not found then the result is plain text
  for I := MIMEStart to MIMEEnd do
  begin
    LoadString(hInstance, I, @S, 255);
    // Loads a string from mimetypes.res which is embedded into the
    // compiled exe
    if Copy(S, 1, Length(FileExt)) = FileExt then
    // "If the string that was loaded contains FileExt then"
    begin
      Result := Copy(S, Length(FileExt) + 2, 255);
      // Copies the MIME Type from the string that was loaded
      Break;
      // Breaks the for loop so that it won't go through every
      // MIME Type after it found the correct one.
    end;
  end;
end;

function IsCreditor(PNName: integer): boolean;
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT 1 FROM CREDITOR WHERE NNAME = :NNAME');
      ParamByName('NNAME').AsInteger := PNName;
      Open;
      IsCreditor := (not EOF);
      Close;
   end;
end;

procedure SettingSaveStream(sEmp: string; sOwner: string; AView: TdxDockingManager); overload;
var
   bStream: TStream;
begin
   try
      dmAxiom.qrySettings.Close;
      dmAxiom.qrySettings.ParamByName('emp').AsString := sEmp;
      dmAxiom.qrySettings.ParamByName('owner').AsString := sOwner;
      dmAxiom.qrySettings.Open;
      if dmAxiom.qrySettings.RecordCount > 0 then
         dmAxiom.qrySettings.Edit
      else
         dmAxiom.qrySettings.Append;

      dmAxiom.qrySettings.FieldByname('emp').AsString := sEmp;
      dmAxiom.qrySettings.FieldByname('owner').AsString := sOwner;
      bStream := dmAxiom.qrySettings.CreateBlobStream(dmAxiom.qrySettings.FieldByname('options'), bmReadWrite);
      AView.SaveLayoutToStream(bStream);
      bStream.free;
      dmAxiom.qrySettings.Post;
      dmAxiom.qrySettings.Close;
   except
      // Silent exception
   end;
end;

procedure SettingLoadStream(sEmp: string; sOwner: string; AView: TdxDockingManager); overload;
var
   bStream: TStream;
begin
   try
      dmAxiom.qrySettings.Close;
      dmAxiom.qrySettings.ParamByName('emp').AsString := sEmp;
      dmAxiom.qrySettings.ParamByName('owner').AsString := sOwner;
      dmAxiom.qrySettings.Open;
//      dmAxiom.qrySettings.Edit;

      bStream := dmAxiom.qrySettings.CreateBlobStream(dmAxiom.qrySettings.FieldByname('options'), bmRead);
//      if (bStream.Size > 0) then
         AView.LoadLayoutFromStream(bStream);
      bStream.free;
   except
      // Silent exception
   end;
end;

function InputQueryString(const ACaption, APrompt, ALabelCaption: string; var Value: string): Boolean;
var
  Form: TForm;
  LEdit,
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonYes, ButtonNo: TButton;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  function GetAveCharSize(Canvas: TCanvas): TPoint;
  var
    I: Integer;
    Buffer: array[0..51] of Char;
  begin
    for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X := Result.X div 52;
  end;
begin
  Result := False;
  Form := TForm.Create(Application);
  try
    Form.Canvas.Font := Form.Font;
    DialogUnits := GetAveCharSize(Form.Canvas);
    Form.BorderStyle := bsDialog;
    Form.Caption := ACaption;
    Form.ClientWidth := MulDiv(260, DialogUnits.X, 4);
    Form.Position := poScreenCenter;

    Prompt := TLabel.Create(Form);
    Prompt.Parent := Form;
    Prompt.Caption := APrompt;
    Prompt.Left := MulDiv(8, DialogUnits.X, 4);
    Prompt.Top := MulDiv(8, DialogUnits.Y, 8);
    Prompt.Constraints.MaxWidth := MulDiv(244, DialogUnits.X, 4);
    Prompt.WordWrap := True;

    LEdit := TLabel.Create(Form);
    LEdit.Parent := Form;
    LEdit.Caption := ALabelCaption + ':';
    LEdit.Left := MulDiv(54, DialogUnits.X, 4);
    LEdit.Top := Prompt.Top + Prompt.Height + 9;
    LEdit.WordWrap := True;

    Edit := TEdit.Create(Form);
    Edit.Parent := Form;
    Edit.Left := LEdit.Left + LEdit.Width + 2;
    Edit.Top := Prompt.Top + Prompt.Height + 5;
    Edit.Width := MulDiv(130, DialogUnits.X, 4);

    ButtonTop := Edit.Top + Edit.Height + 15;
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);

    ButtonYes := TButton.Create(Form);
    ButtonYes.Parent := Form;
    ButtonYes.Caption := SMsgDlgOK;
    ButtonYes.ModalResult := mrOk;
    ButtonYes.Default := True;
    ButtonYes.SetBounds(MulDiv(78, DialogUnits.X, 4), ButtonTop, ButtonWidth,
      ButtonHeight);

    ButtonNo := TButton.Create(Form);
    ButtonNo.Parent := Form;
    ButtonNo.Caption := SMsgDlgCancel;
    ButtonNo.ModalResult := mrCancel;
    ButtonNo.Cancel := True;
    ButtonNo.SetBounds(MulDiv(132, DialogUnits.X, 4), ButtonTop, ButtonWidth, ButtonHeight);

    Form.ClientHeight := ButtonNo.Top + ButtonNo.Height + 13;

    if Value <> '' then
       Edit.Text := Value;

    if Form.ShowModal = mrOk then
    begin
      Value := Edit.Text;
      Result := True;
    end;
  finally
    Form.Free;
  end;
end;

function InputQueryDate(const ACaption, APrompt: string; var Value: TDateTime): Boolean;
var
  Form: TForm;
  LEdit,
  Prompt: TLabel;
  Edit: TDateTimePicker;
  DialogUnits: TPoint;
  ButtonYes, ButtonNo: TButton;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  function GetAveCharSize(Canvas: TCanvas): TPoint;
  var
    I: Integer;
    Buffer: array[0..51] of Char;
  begin
    for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X := Result.X div 52;
  end;
begin
  Result := False;
  Form := TForm.Create(Application);
  try
    Form.Canvas.Font := Form.Font;
    DialogUnits := GetAveCharSize(Form.Canvas);
    Form.BorderStyle := bsDialog;
    Form.Caption := ACaption;
    Form.ClientWidth := MulDiv(260, DialogUnits.X, 4);
    Form.Position := poScreenCenter;

    Prompt := TLabel.Create(Form);
    Prompt.Parent := Form;
    Prompt.Caption := APrompt;
    Prompt.Left := MulDiv(8, DialogUnits.X, 4);
    Prompt.Top := MulDiv(8, DialogUnits.Y, 8);
    Prompt.Constraints.MaxWidth := MulDiv(244, DialogUnits.X, 4);
    Prompt.WordWrap := True;

    LEdit := TLabel.Create(Form);
    LEdit.Parent := Form;
    LEdit.Caption := 'Date:';
    LEdit.Left := MulDiv(54, DialogUnits.X, 4);
    LEdit.Top := Prompt.Top + Prompt.Height + 9;
    LEdit.WordWrap := True;

    Edit := TDateTimePicker.Create(Form);
    Edit.Parent := Form;
    Edit.Left := LEdit.Left + LEdit.Width + 2;
    Edit.Top := Prompt.Top + Prompt.Height + 5;
    Edit.Width := MulDiv(100, DialogUnits.X, 4);
    Edit.DateTime := Value;
    Edit.Date := Value;

    ButtonTop := Edit.Top + Edit.Height + 15;
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);

    ButtonYes := TButton.Create(Form);
    ButtonYes.Parent := Form;
    ButtonYes.Caption := SMsgDlgOK;
    ButtonYes.ModalResult := mrOk;
    ButtonYes.Default := True;
    ButtonYes.SetBounds(MulDiv(78, DialogUnits.X, 4), ButtonTop, ButtonWidth,
      ButtonHeight);

    ButtonNo := TButton.Create(Form);
    ButtonNo.Parent := Form;
    ButtonNo.Caption := SMsgDlgCancel;
    ButtonNo.ModalResult := mrCancel;
    ButtonNo.Cancel := True;
    ButtonNo.SetBounds(MulDiv(132, DialogUnits.X, 4), ButtonTop, ButtonWidth, ButtonHeight);

    Form.ClientHeight := ButtonNo.Top + ButtonNo.Height + 13;

    if Form.ShowModal = mrOk then
    begin
      Value := Edit.DateTime;
      Result := True;
    end;
  finally
    Form.Free;
  end;
end;

function InputQueryAmount(const ACaption, APrompt: string; var Value: double): Boolean;
var
  Form: TForm;
  LEdit,
  Prompt: TLabel;
  Edit: TcxCurrencyEdit;
  DialogUnits: TPoint;
  ButtonYes, ButtonNo: TButton;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  function GetAveCharSize(Canvas: TCanvas): TPoint;
  var
    I: Integer;
    Buffer: array[0..51] of Char;
  begin
    for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X := Result.X div 52;
  end;
begin
  Result := False;
  Form := TForm.Create(Application);
  try
    Form.Canvas.Font := Form.Font;
    DialogUnits := GetAveCharSize(Form.Canvas);
    Form.BorderStyle := bsDialog;
    Form.Caption := ACaption;
    Form.ClientWidth := MulDiv(260, DialogUnits.X, 4);
    Form.Position := poScreenCenter;

    Prompt := TLabel.Create(Form);
    Prompt.Parent := Form;
    Prompt.Caption := APrompt;
    Prompt.Left := MulDiv(8, DialogUnits.X, 4);
    Prompt.Top := MulDiv(8, DialogUnits.Y, 8);
    Prompt.Constraints.MaxWidth := MulDiv(244, DialogUnits.X, 4);
    Prompt.WordWrap := True;

    LEdit := TLabel.Create(Form);
    LEdit.Parent := Form;
    LEdit.Caption := 'Amount:';
    LEdit.Left := MulDiv(54, DialogUnits.X, 4);
    LEdit.Top := Prompt.Top + Prompt.Height + 9;
    LEdit.WordWrap := True;

    Edit := TcxCurrencyEdit.Create(Form);
    Edit.Parent := Form;
    Edit.Left := LEdit.Left + LEdit.Width + 2;
    Edit.Top := Prompt.Top + Prompt.Height + 5;
    Edit.Width := MulDiv(100, DialogUnits.X, 4);
    Edit.EditValue := Value;


    ButtonTop := Edit.Top + Edit.Height + 15;
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);

    ButtonYes := TButton.Create(Form);
    ButtonYes.Parent := Form;
    ButtonYes.Caption := SMsgDlgOK;
    ButtonYes.ModalResult := mrOk;
    ButtonYes.Default := True;
    ButtonYes.SetBounds(MulDiv(78, DialogUnits.X, 4), ButtonTop, ButtonWidth,
      ButtonHeight);

    ButtonNo := TButton.Create(Form);
    ButtonNo.Parent := Form;
    ButtonNo.Caption := SMsgDlgCancel;
    ButtonNo.ModalResult := mrCancel;
    ButtonNo.Cancel := True;
    ButtonNo.SetBounds(MulDiv(132, DialogUnits.X, 4), ButtonTop, ButtonWidth, ButtonHeight);

    Form.ClientHeight := ButtonNo.Top + ButtonNo.Height + 13;

    if Form.ShowModal = mrOk then
    begin
      Value := Edit.EditValue;
      Result := True;
    end;
  finally
    Form.Free;
  end;
end;


function GetPacketId(): string;
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
         loQry.SQL.Add('SELECT max(to_number(packetid)) + 1 FROM DOCREG ');

         loQry.Open;

         Result := loQry.Fields[0].AsString;
         if Result = '' then
            Result := '1';

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

function getnextword(var s,w:string):boolean;
{Note that this a "destructive" getword.
  The first word of the input string s is returned in w and
  the word is deleted from the input string}
const
  delims:set of char = [',','(',')',':',';','"'];
var
  i:integer;
begin
  w:='';
  if length(s)>0 then
  begin
    i:=1;
    while (i<length(s))  and (s[i] in delims) do inc(i);
    delete(s,1,i-1);
    i:=1;
    while (i<=length(s)) and (not (s[i] in delims)) do inc(i);
    w:=copy(s,1,i-1);
    delete(s,1,i);
  end;
  result := (length(w) > 0);
end;

function ProcString(Proc: string; LookupValue: TDateTime): string; overload;
begin
//   Result := IntToStr(dmAxiom.uniInsight.ExecProc(Proc,[lookupValue]));
   with dmAxiom.procTemp do
   begin
     storedProcName := Proc;
     PrepareSQL;
     Params[1].AsDateTime := LookupValue;
     Execute;
     Result := Params[0].AsString;
   end;
end;

function SettingLoadDate(sOwner: string; sItem: string): TDateTime;
begin
   try
      dmAxiom.qrySettingLoad.Close;
      dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := dmAxiom.UserID;
      dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
      dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
      dmAxiom.qrySettingLoad.Open();
      try
         if (dmAxiom.qrySettingLoadVALUE.Value = '') then
            Result := NullDate
         else
            Result := StrToDate(dmAxiom.qrySettingLoadVALUE.Value);

{        if(dmAxiom.qrySettingLoad.Eof) then
          Result := NullDate
        else
          Result := StrToDate(dmAxiom.qrySettingLoadVALUE.Value); }
      finally
        dmAxiom.qrySettingLoad.Close();
      end;
   except
      Result := NullDate;
   end;
end;

function ClearProtectedTrust(sFileID : String) : Currency;
var
  LOraQuery: TUniQuery;
begin
   LOraQuery := TUniQuery.Create(nil);
   try
      LOraQuery.Connection := dmAxiom.uniInsight;
      LOraQuery.SQL.Text := 'select sum(spec_purpose) as amount from alloc where fileid = :fileid and cleared = ''Y'' ';
      LOraQuery.ParamByName('FILEID').AsString := sFileID;
      LOraQuery.Open;
      ClearProtectedTrust := LOraQuery.FieldByName('AMOUNT').AsCurrency;
      LOraQuery.Close;
   finally
      LOraQuery.Free;
   end;
end;

function CheckReqFieldsNew(sTableName: String; dDataSet: TDataSet): Boolean;
var
   sMessage : String;
   iloop    : Integer;
   LOraQuery: TUniQuery;
begin
   sMessage := '';
   LOraQuery := TUniQuery.Create(nil);
   try
      LOraQuery.Connection := dmAxiom.uniInsight;
      LOraQuery.SQL.Text := 'select field_name, message from reqfield where table_name = '+ QuotedStr(sTableName);
      LOraQuery.Open;
    // loop though the dataset

      for iloop := 0 to dDataSet.Fields.count-1 do
      begin
          // can this field be null?
         if (dDataSet.Fields[iloop].IsNull) then
         begin
             // is this field required
            LOraQuery.First;
            while not LOraQuery.eof do
            begin
               if (LOraQuery.FieldByName('FIELD_NAME').AsString = dDataSet.Fields[iloop].FieldName) then
               begin
                  if LOraQuery.FieldByName('MESSAGE').AsString <> '' then
                     sMessage := sMessage + '* ' + LOraQuery.FieldByName('MESSAGE').AsString + #13
                  else
                     sMessage := sMessage + '* ' + 'Field ' + dDataSet.Fields[iloop].FieldName + ' must contain a value ' + #13;
               end;
               LOraQuery.next;
            end;
         end;
      end;
      LOraQuery.Close;
   finally
      LOraQuery.Free;
   end;

   if (sMessage <> '') then
      MessageDlg(sMessage, mtError, [mbOk], 0);

   Result := (sMessage = '');
end;

function TableDateTime(Table, LookupField: string; LookupValue: integer; ReturnField: string): TDateTime; overload;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
    Params[0].AsInteger := LookupValue;
    Open;
    Result := Fields[0].AsDateTime;
    Close;
  end;
  qryLookup.Free;
end;

function TableDateTime(Table, LookupField: string; LookupValue: string; ReturnField: string): TDateTime; overload;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
    Params[0].AsString := LookupValue;
    Open;
    Result := Fields[0].AsDateTime;
    Close;
  end;
  qryLookup.Free;
end;


procedure SettingSaveStream(sEmp: string; sOwner: string; AView: TcxCustomGridView ); overload;
var
   AOptions: TcxGridStorageOptions;
   bStream: TStream;
   ASaveViewName: string;
begin
   try
      dmAxiom.qrySettings.Close;
      dmAxiom.qrySettings.ParamByName('emp').AsString := sEmp;
      dmAxiom.qrySettings.ParamByName('owner').AsString := sOwner;
      dmAxiom.qrySettings.Open;
      if dmAxiom.qrySettings.RecordCount > 0 then
         dmAxiom.qrySettings.Edit
      else
         dmAxiom.qrySettings.Append;

      dmAxiom.qrySettings.FieldByname('emp').AsString := sEmp;
      dmAxiom.qrySettings.FieldByname('owner').AsString := sOwner;
      AOptions := [];
      ASaveViewName := sOwner;
      bStream := dmAxiom.qrySettings.CreateBlobStream(dmAxiom.qrySettings.FieldByname('options'), bmReadWrite);
      AView.StoreToStream(bStream, AOptions, ASaveViewName);
      bStream.free;
      dmAxiom.qrySettings.Post;
      dmAxiom.qrySettings.Close;
   except
      // Silent exception
   end;
end;

function GetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
   size := 256;
   if GetComputerName(buffer, size) then
      Result := buffer
   else
      Result := ''
end;

procedure ClearCheques;
var
  frmProcess: TfrmProcess;
begin
   // Do clearance if needed
   if Trunc(SystemDate('LASTCLEAR')) < Trunc(Now) + 1 then
   begin
      try
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'SELECT COUNT(AMOUNT) AS CLEARS FROM RECEIPT where trunc(DCLEARDATE) < :TODAY '+
                        ' AND banked = ''Y'' and cleared = ''N'' and reversed <> ''Y'' ';
            ParamByName('TODAY').AsDateTime := Trunc(Now) + 1;
            Open;
            if FieldByName('CLEARS').AsInteger > 0 then
            begin
               frmProcess := TfrmProcess.Create(application);
               frmProcess.lblProcess.Caption := 'Clearing banked receipts';
               frmProcess.pbProcess.Max := FieldByName('CLEARS').AsInteger;
               frmProcess.Show;
               Application.ProcessMessages;

            // Get the list to process
               Close;
               SQL.Text := 'SELECT NRECEIPT FROM RECEIPT where trunc(DCLEARDATE) < :TODAY '+
                           ' AND banked = ''Y'' and cleared = ''N'' and reversed <> ''Y'' ';
               ParamByName('TODAY').AsDateTime := Trunc(Now) + 1;
               Open;

               while not eof do
               begin
                  ReceiptClear(FieldByName('NRECEIPT').AsInteger);
                  frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
                  Application.ProcessMessages;
                  Next;
               end;
               frmProcess.Release;
            end;
            Close;
            SQL.Text := 'UPDATE SYSTEMFILE SET LASTCLEAR = :TODAY';
            ParamByName('TODAY').AsDateTime := Now;
            ExecSQL;
            Close;
         end;
      except
        //
      end;
   end;
end;

procedure CheckUnpaidCreditors(BillNo: string);
var
   ACreditorTotal: Currency;
begin
   with dmAxiom.qryBILL_CRED_OWING do
   begin
      Close;
      ParamByName('P_BILL').AsString := BillNo;
      Open;
      ACreditorTotal := FieldByName('BILL_CRED_OWING').AsCurrency;
      Close;
   end;
   if ACreditorTotal > 0 then
      MsgInfo('Bill # ' + BillNo +' has unpaid creditors.');
end;

function TokenizePath(var s,w:string):boolean;
{Note that this a "destructive" getword.
  The first word of the input string s is returned in w and
  the word is deleted from the input string}
const
  delims:set of char = ['/','\'];
var
  i:integer;
begin
  w:='';
  if length(s)>0 then
  begin
    i:=1;
    while (i<length(s))  and (s[i] in delims) do inc(i);
    delete(s,1,i-1);
    i:=1;
    while (i<=length(s)) and (not (s[i] in delims)) do inc(i);
    w:=copy(s,1,i-1);
    delete(s,1,i);
  end;
  result := (length(w) >0);
end;

function IndexPath(PathText, PathLoc: string): string;
var
   iWords, i: integer;
   NewPath, sWord, sNewline, AUNCPath: string;
   LImportFile: array of string;
begin
   AUNCPath := ExpandUNCFileName(PathText);
   if (pos('\',PathLoc) = 0) then
      NewPath := SystemString(PathLoc)
   else
      NewPath := PathLoc;

   if (NewPath <> '') and false then
   begin
      iWords := 0;
      SetLength(LImportFile,length(PathText));
      sNewline := copy(PathText,3,length(PathText));
      while TokenizePath(sNewline ,sWord) do
      begin
         LImportFile[iWords] := sWord;
         inc(iWords);
      end;

      for i := 0 to (length(LImportFile) - 1) do
      begin
         if LImportFile[i] <> '' then
            NewPath := NewPath + '/' + LImportFile[i];
      end;
      Result := NewPath;
   end
   else
      Result := AUNCPath;  //PathText;
end;

function ClearTrustFromStoredProc(sFileID : String) : Currency;
var
  LOraQuery: TUniQuery;
  AMatter: string;
begin
  LOraQuery := TUniQuery.Create(nil);
  try
    // should this be using NMATTER instead of FILEID
    // clear trust should be trust less protected.
    LOraQuery.Connection := dmAxiom.uniInsight;
    AMatter := MatterString(sFileID,'NMATTER');
    LOraQuery.SQL.Text := 'SELECT getClearedTrustAmount('+AMatter+') as amount from dual ';
    LOraQuery.Open;
    ClearTrustFromStoredProc := LOraQuery.FieldByName('AMOUNT').AsCurrency;
    LOraQuery.Close;
  finally
    LOraQuery.Free;
  end;
end;

procedure TableStringList(Table, LookupField: string; LookupValue: string; ReturnField: string; AStringList: TStringList);
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  with qryLookup do
  begin
    SQL.Text := 'SELECT ' + ReturnField + ' FROM ' + Table + ' WHERE ' + LookupField + ' = :' + LookupField;
    Params[0].AsString := LookupValue;
    Open;
    While not Eof do
    begin
       AStringList.Add(Fields[0].AsString);
       Next;
    end;
    Close;
  end;
  qryLookup.Free;
//  AStringList.Free;
end;

function MatterDocAccess(ANMatter, AEmpCode: string ): boolean;
var
  qryLookup: TUniQuery;
begin
   qryLookup := TUniQuery.Create(nil);
   qryLookup.Connection := dmAxiom.uniInsight;
   with qryLookup do
   begin
      SQL.Text := 'SELECT NMATTER, trim(EMPLOYEE_CODE) as EMPLOYEE_CODE FROM matter_doc_security WHERE nmatter = ' + ANMatter;
      Open;
      if (not EOF) then
      begin
         Result := False;
         First;
         while (not EOF) do
         begin
            if FieldByName('EMPLOYEE_CODE').AsString = AEmpCode then
            begin
               Result := True;
               Break;
            end;
            Next;
         end;
      end
      else
         Result := True;
      Close;
   end;
   qryLookup.Free;
end;

function GetNextToken(Const S: string; Separator: char; var StartPos: integer): String;
var
   Index: integer;
begin
   Result := '';

   {Step over repeated separators}
   While (S[StartPos] = Separator) and (StartPos <= length(S))do
      StartPos := StartPos + 1;

   if StartPos > length(S) then Exit;

   {Set Index to StartPos}
   Index := StartPos;

   {Find the next Separator}
   While (S[Index] <> Separator) and (Index <= length(S))do
      Index := Index + 1;

   {Copy the token to the Result}
   Result := Copy(S, StartPos, Index - StartPos) ;

   {SetStartPos to next Character after the Separator}
   StartPos := Index + 1;
end;

procedure Split(const S: String; Separator: Char; MyStringList: TStringList) ;
var
   Start: integer;
begin
   Start := 1;
   While Start <= Length(S) do
      MyStringList.Add(GetNextToken(S, Separator, Start));
end;

function ParseMacros(AFileName: String; ANMatter: Integer; ADocID: Integer; ADocDescr: string; ANMemo: integer): String;
var
  LBfr: Array[0..MAX_PATH] of Char;
  lEntity: string;
begin
  if(GHomePath = '') then
    GHomePath := GetEnvironmentVariable('HOMEDRIVE') + GetEnvironmentVariable('HOMEPATH');
  if (GUserProfile = '') then
     GUserProfile := GetEnvironmentVariable('USERPROFILE');

  if(GTempPath = '') then
  begin
    GetTempPath(MAX_PATH,Lbfr);
    GTempPath := String(LBfr);
  end;

  Result := AFileName;

  result := StringReplace(Result,C_MACRO_USERHOME,GHomePath,[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_USERPROFILE,GUserProfile,[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_TEMPDIR,GTempPath,[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_NMATTER,IntToStr(ANMatter),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_FILEID, TableString('MATTER','NMATTER',IntToStr(ANMatter),'FILEID'),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_CLIENTID, TableString('MATTER','NMATTER',IntToStr(ANMatter),'CLIENTID'),[rfReplaceAll, rfIgnoreCase]);

  Result := StringReplace(Result,C_MACRO_DATE,FormatDateTime('dd-mm-yyyy',Now()) ,[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_TIME,FormatDateTime('hh-nn-ss',Now()),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_DATETIME,FormatDateTime('dd-mm-yyyy-hh-nn-ss',Now()),[rfReplaceAll, rfIgnoreCase]);

  Result := StringReplace(Result,C_MACRO_AUTHOR, TableString('MATTER','NMATTER',IntToStr(ANMatter),'AUTHOR'),[rfReplaceAll, rfIgnoreCase]);
  if (ADocDescr <> '')  then
     Result := StringReplace(Result,C_MACRO_DOCDESCR, ADocDescr ,[rfReplaceAll, rfIgnoreCase]);
  if (pos(C_MACRO_DOCSEQUENCE,UpperCase(Result)) > 0) then
     Result := StringReplace(Result,C_MACRO_DOCSEQUENCE, ProcString('getDocSequence',ANMatter),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_USERINITIALS, dmAxiom.UserID ,[rfReplaceAll, rfIgnoreCase]);
  if ADocID > 0 then
     Result := StringReplace(Result,C_MACRO_DOCID, IntToStr(ADocID),[rfReplaceAll, rfIgnoreCase]);

  if(Pos(C_MACRO_TEMPFILE,Result) > 0) then
  begin
    GetTempFileName(PChar(GTempPath),'axm',0,LBfr);
    Result := StringReplace(Result,C_MACRO_TEMPFILE,String(LBfr),[rfReplaceAll, rfIgnoreCase]);
  end;
  Result := StringReplace(Result,C_MACRO_OPREF, TableString('MATTER','NMATTER',IntToStr(ANMatter),'OPREF'),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_SHORTDESCR, TableString('MATTER','NMATTER',IntToStr(ANMatter),'SHORTDESCR'),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_REFNO, TableString('NMEMO','NMEMO',IntToStr(ANMemo),'REFNO'),[rfReplaceAll, rfIgnoreCase]);
  if (Pos(C_MACRO_ENTITY, Result) > 0) then
  begin
     lEntity := TableString('NMEMO','NMEMO',IntToStr(ANMemo),'BANK_ACCT');
     Result := StringReplace(Result,C_MACRO_ENTITY, TableString('ENTITY','CODE',lEntity,'NAME'),[rfReplaceAll, rfIgnoreCase]);
  end;
end;

procedure SaveBill(ADoc_Name, AAuth, APath, ADescr, AFileid, APrecCategory,
                   APrecedentDetails, APrecClass: string; ANMemo: integer);
var
  qryLookup: TOraQuery;
  AExt: string;
begin
   qryLookup := TOraQuery.Create(nil);
   qryLookup.Connection := dmAxiom.uniInsight;
   with qryLookup do
   begin
      SQL.Text := 'INSERT INTO doc '+
                  '(DOC_NAME, AUTH1, PATH, DESCR, FILEID, '+
                  'NPRECCATEGORY, NMATTER, IMAGEINDEX, FILE_EXTENSION,  '+
                  ' KEYWORDS, PRECEDENT_DETAILS, NPRECCLASSIFICATION, DISPLAY_PATH) '+
                  'VALUES '+
                  '(:DOC_NAME, :AUTH1, :PATH, :DESCR, :FILEID,'+
                  ' :NPRECCATEGORY, :NMATTER, :IMAGEINDEX, :FILE_EXTENSION,  '+
                  ' :KEYWORDS, :PRECEDENT_DETAILS, :NPRECCLASSIFICATION, :DISPLAY_PATH)';

      ParamByName('DOC_NAME').AsString := ADoc_Name;
//      ParamByName('SEARCH').AsString := ExtractFileName(edtPath.Text);
      ParamByName('FileID').AsString := AFileid;
      ParamByName('AUTH1').AsString := AAuth;
      ParamByName('DESCR').AsString := ADescr;
      ParamByName('NMATTER').AsString := MatterString(AFileid, 'NMATTER');
//      ParamByName('KEYWORDS').AsString := edKeywords.Text;
      ParamByName('PRECEDENT_DETAILS').AsString := APrecedentDetails;
      AExt := UpperCase(Copy(ExtractFileExt(APath),2, Length(ExtractFileExt(APath))));
      ParamByName('FILE_EXTENSION').AsString := AExt;
      ParamByName('PATH').AsString := IndexPath(APath, 'DOC_SHARE_PATH');  //  NewPath;
      ParamByName('DISPLAY_PATH').AsString := APath;

      if (AExt = 'DOC') or (AExt = 'DOCX') then
         ParamByName('IMAGEINDEX').AsInteger := 2
      else if ((AExt = 'XLS') or (AExt = 'CSV')) then
         ParamByName('IMAGEINDEX').AsInteger := 3
      else if ((AExt = 'EML') or (AExt = 'MSG')) then
         ParamByName('IMAGEINDEX').AsInteger := 4
      else if AExt = 'PDF' then
         ParamByName('IMAGEINDEX').AsInteger := 5;

      ParamByName('NPRECCATEGORY').AsString := APrecCategory;

      ParamByName('NPRECCLASSIFICATION').AsString := APrecClass;
      ExecSQL;

      SQL.Clear;
      SQL.Text := 'update NMEMO set '+
                  'path = :path, invoice_copy_ext =  :invoice_copy_ext '+
                  'where nmemo = :nmemo ';
      ParamByName('invoice_copy_ext').AsString := AExt;
      ParamByName('PATH').AsString := APath;
      ParamByName('NMEMO').AsInteger := ANMemo;
      ExecSQL;

//      dmAxiom.uniInsight.Commit;
   end;
   qryLookup.Free();
end;

procedure UpdateModBy( sDocId: string);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'update doc set auth2 = ' + QuotedStr(dmAxiom.UserID)+ ' where docid = ' + sDocId;
      Execute;
   end;
end;

procedure SettingLoadStream(sEmp: string; sOwner: string; AView: TcxGridDBBandedTableView ); overload;
var
   AOptions: TcxGridStorageOptions;
   bStream: TStream;
   ASaveViewName: string;
begin
   try
      dmAxiom.qrySettings.Close;
      dmAxiom.qrySettings.ParamByName('emp').AsString := sEmp;
      dmAxiom.qrySettings.ParamByName('owner').AsString := sOwner;
      dmAxiom.qrySettings.Open;
//      dmAxiom.qrySettings.Edit;

      AOptions := [];
      ASaveViewName := sOwner;
      bStream := dmAxiom.qrySettings.CreateBlobStream(dmAxiom.qrySettings.FieldByname('options'), bmRead);
//      if (bStream.Size > 0) then
         AView.RestoreFromStream(bStream, False, False, AOptions, ASaveViewName);
      bStream.free;
   except
      // Silent exception
   end;
end;

procedure SettingSaveStream(sEmp: string; sOwner: string; AView: TcxGridDBBandedTableView ); overload;
var
   AOptions: TcxGridStorageOptions;
   bStream: TStream;
   ASaveViewName: string;
begin
   try
      dmAxiom.qrySettings.Close;
      dmAxiom.qrySettings.ParamByName('emp').AsString := sEmp;
      dmAxiom.qrySettings.ParamByName('owner').AsString := sOwner;
      dmAxiom.qrySettings.Open;

      if dmAxiom.qrySettings.RecordCount > 0 then
         dmAxiom.qrySettings.Edit
      else
         dmAxiom.qrySettings.Append;

      dmAxiom.qrySettings.FieldByname('emp').AsString := sEmp;
      dmAxiom.qrySettings.FieldByname('owner').AsString := sOwner;
      AOptions := [];
      ASaveViewName := sOwner;
      bStream := dmAxiom.qrySettings.CreateBlobStream(dmAxiom.qrySettings.FieldByname('options'), bmReadWrite);
      AView.StoreToStream(bStream, AOptions, ASaveViewName);
      bStream.free;
      dmAxiom.qrySettings.Post;
      dmAxiom.qrySettings.Close;
//      dmAxiom.uniInsight.Commit;
   except
      // Silent exception
   end;
end;

function GetClearDate(dDate: TDateTime; ACode: string): TDateTime; overload;
var
   RetDate : TDateTime;
   iCtl, PubDays : INTEGER;
   LOraQuery: TUniQuery;
   ADaysToClear: integer;
begin
   RetDate := dDate;
   iCtl := 0;

   LOraQuery := TUniQuery.Create(nil);
   try
      LOraQuery.Connection := dmAxiom.uniInsight;
      LOraQuery.SQL.Text := 'select clearance_days from BANK_CLEARANCE_DAYS where '+
                            'code = :code';
      LOraQuery.ParamByName('code').AsString := ACode;
      LOraQuery.Open;
      ADaysToClear:= LOraQuery.FieldByName('clearance_days').AsInteger;
      LOraQuery.Close;
   finally
      LOraQuery.Free;
   end;


   while iCtl < ADaysToClear do
   begin
      RetDate := RetDate + 1;

      if (DayOfWeek(RetDate) <> 1) AND
         (DayOfWeek(RetDate) <> 7) then
         iCtl := iCtl + 1;
   end;

   // work out if any public holidays in period
   LOraQuery := TUniQuery.Create(nil);
   try
      LOraQuery.Connection := dmAxiom.uniInsight;
      LOraQuery.SQL.Text := 'select count(*) as tot from calendar_holidays where '+
                            'publicholiday = 1 and caldate between :curr_date and :clear_date ' +
                            'and day not in (''Sat'', ''Sun'') ';
      LOraQuery.ParamByName('curr_date').AsDateTime := dDate;
      LOraQuery.ParamByName('clear_date').AsDateTime := RetDate;
      LOraQuery.Open;
      PubDays:= LOraQuery.FieldByName('tot').AsInteger;
      LOraQuery.Close;
   finally
      LOraQuery.Free;
   end;
   if PubDays > 0 then
      RetDate := RetDate + PubDays;

   GetClearDate := Trunc(RetDate);
end;

function CalcYear(ASeriesCaption: string; AIndex: integer): Integer;
var
   FYear: string;
begin
   FYear := Copy(ASeriesCaption,Pos('-',ASeriesCaption)+1, 2);
   FYear := '20'+ FYear;
   case AIndex of
      0..5: begin
               if StrToInt(FYear) = YearOf(Date) then
                  Result := StrToInt(FYear)
               else if StrToInt(FYear) < YearOf(Date) then
                  Result := StrToInt(FYear) - 1;
            end;
      6..11:begin
               if StrToInt(FYear) = YearOf(Date) then
                  Result := StrToInt(FYear)
               else if StrToInt(FYear) < YearOf(Date) then
                  Result := StrToInt(FYear) - 1;
            end;
   end;
end;

function IsValidEmail(const Value: string): Boolean;
   function CheckAllowed(const s: string): Boolean;
   var
      i: Integer;
   begin
      Result:= false;
      for i:= 1 to Length(s) do
         if not (s[i] in ['a'..'z',
                          'A'..'Z',
                          '0'..'9',
                          '_',
                          '-',
                          '.']) then Exit;
      Result:= true;
   end;
var
   i: Integer;
   NamePart, ServerPart: string;
begin
   Result:= False;
   i:=Pos('@', Value);
   if i=0 then Exit;
   NamePart:=Copy(Value, 1, i-1);
   ServerPart:=Copy(Value, i+1, Length(Value));
   if (Length(NamePart)=0) or ((Length(ServerPart)<5)) then Exit;
   i:=Pos('.', ServerPart);
   if (i=0) or (i>(Length(serverPart)-2)) then Exit;
   Result:= CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;

function ADaysInMonth(aYear, aMonth, aDay: integer): integer;
var
   aDate : TDate;
   i, dm : integer;
   Y,M,D : word;
begin
   aDate := encodeDate(aYear,aMonth,1);
   Result:= 0;
   dm := DaysInMonth(aDate);
   for i := 1 to dm do
   begin
      if (DayOfTheWeek(aDate) <> 1) and (DayOfTheWeek(aDate) <> 7) then
         inc (Result);
      aDate := aDate +1;
      decodeDate(aDate,Y,M,D);
      if M <> aMonth then
         break;
   end;
end;

procedure PostTempFees;
var
   nFee: string;
   iMinsPerUnit: integer;
   dAmount: currency;
begin
   with  dmAxiom.qryTempFeeInsert do
   begin
      ParamByName('author').AsString := dmAxiom.UserID;
      Open;
      First;
      while not EOF {and (not bPostingFailed)} do
      begin
         if ((FieldByName('TIME_TYPE').AsString = 'M') OR
            (FieldByName('TIME_TYPE').AsString = 'O')) and
            (FieldByName('NFEE').IsNull) then
         begin
//            if CheckReqdFields then
//            begin
               if FieldByName('BillType').IsNull then
               begin
                  FieldByName('BillType').AsString := 'Billable';
               end;

               if ((MatterIsCurrent(FieldByName('FILEID').AsString)) and
                  not (IsMatterArchived(FieldByName('FILEID').AsString)) OR
                  ((FieldByName('FILEID').IsNull) and (FieldByName('TIME_TYPE').AsString = 'O'))) then
               begin
                  nFee := dmAxiom.GetSeqNumber('SQNC_NFEE');
                  dmAxiom.qryFeeInsert.ParamByName('CREATED').AsDateTime := FieldByName('CREATED').AsDateTime;
                  dmAxiom.qryFeeInsert.ParamByName('DESCR').AsString := Trim(FieldByName('REASON').AsString);
                  dmAxiom.qryFeeInsert.ParamByName('UNITS').AsInteger := FieldByName('UNITS').AsInteger;

                  if FieldByName('UNIT').AsString <> '' then
                  begin
                     dmAxiom.qryFeeInsert.ParamByName('UNIT').AsString := FieldByName('UNIT').AsString;
                     dmAxiom.qryFeeInsert.ParamByName('TASK_AMOUNT').AsCurrency := FieldByName('TASK_AMOUNT').AsCurrency;
                     if iMinsPerUnit > 0 then
                        dmAxiom.qryFeeInsert.ParamByName('MINS').AsInteger := FieldByName('UNITS').AsInteger * iMinsPerUnit
                     else
                        dmAxiom.qryFeeInsert.ParamByName('MINS').AsInteger := FieldByName('UNITS').AsInteger;
                  end
                  else
                  begin
                     if iMinsPerUnit > 0 then
                     begin
                        dmAxiom.qryFeeInsert.ParamByName('MINS').AsInteger := FieldByName('UNITS').AsInteger * iMinsPerUnit;
                        dmAxiom.qryFeeInsert.ParamByName('UNIT').AsString := 'Units';
                     end
                     else
                     begin
                        dmAxiom.qryFeeInsert.ParamByName('MINS').AsInteger := FieldByName('UNITS').AsInteger;
                        dmAxiom.qryFeeInsert.ParamByName('UNIT').AsString := 'Mins';
                     end;
                  end;

                  dmAxiom.qryFeeInsert.ParamByName('NFEE').AsString := nFee;
                  dmAxiom.qryFeeInsert.ParamByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
                  dmAxiom.qryFeeInsert.ParamByName('RATE').AsFloat := FieldByName('RATE').AsCurrency;
                  dmAxiom.qryFeeInsert.ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NMATTER');
                  dmAxiom.qryFeeInsert.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NCLIENT');
                  dmAxiom.qryFeeInsert.ParamByName('PARTNER').AsString := MatterString(FieldByName('FILEID').AsString, 'PARTNER');
                  dmAxiom.qryFeeInsert.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
                  dmAxiom.qryFeeInsert.ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
                  dmAxiom.qryFeeInsert.ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('author').AsString, 'DEPT');
                  if FieldByName('FILEID').AsString <> '' then
                     dmAxiom.qryFeeInsert.ParamByName('TAXCODE').AsString := matterString(FieldByName('FILEID').AsString,'FEE_TAX_BASIS')
                  else
                     dmAxiom.qryFeeInsert.ParamByName('TAXCODE').AsString :=  dmAxiom.DefaultTax;
                  dAmount := FieldByName('AMOUNT').AsCurrency;
                  dmAxiom.qryFeeInsert.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', dmAxiom.qryFeeInsert.ParamByName('TAXCODE').AsString, FieldByName('CREATED').AsDateTime);
                  dmAxiom.qryFeeInsert.ParamByName('AMOUNT').AsFloat := dAmount;
                  dmAxiom.qryFeeInsert.ParamByName('TIME_TYPE').AsString := FieldByName('TIME_TYPE').AsString;
                  dmAxiom.qryFeeInsert.ParamByName('ITEMS').AsInteger := FieldByName('ITEMS').AsInteger;
                  dmAxiom.qryFeeInsert.ParamByName('LABELCOLOUR').AsInteger := $000C1DFC;  //EventLabelColors[5];   RED
                  dmAxiom.qryFeeInsert.ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('Author').AsString, 'TYPE');
                  dmAxiom.qryFeeInsert.ParamByName('PROGRAM_NAME').AsString := 'Auto Process';
                  dmAxiom.qryFeeInsert.ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;  //dmAxiom.Version + '.' + IntToStr(dmAxiom.BuildNumber);
                  dmAxiom.qryFeeInsert.ParamByName('EMPCODE').AsString := FieldByName('EMPCODE').AsString;
                  if FieldByName('BillType').IsNull then
                     FieldByName('BillType').AsString := 'Billable';
                  if FieldByName('TIME_TYPE').AsString = 'O' then
                     dmAxiom.qryFeeInsert.ParamByName('BILLTYPE').AsString := 'NonBillable'
                  else
                  begin
                     dmAxiom.qryFeeInsert.ParamByName('BILLTYPE').AsString := FieldByName('BillType').AsString;
                  end;

                  dmAxiom.qryFeeInsert.ParamByName('TASK').AsString := FieldByName('FEE_TEMPLATE').AsString;
                  dmAxiom.qryFeeInsert.ParamByName('BILLED').AsString := 'N';
                  dmAxiom.qryFeeInsert.ParamByName('TYPE').AsString := 'N';
                  dmAxiom.qryFeeInsert.ExecSQL;

                  MatterUpdate(dmAxiom.qryFeeInsert.ParamByName('NMATTER').AsInteger, 'UNBILL_FEES', FieldByName('AMOUNT').AsCurrency + FieldByName('TAX').AsCurrency);

                  dmAxiom.qryFeeTempUpdate.ParamByName('nfee').AsString := nFee;
                  dmAxiom.qryFeeTempUpdate.ParamByName('labelcolour').AsInteger := $000C1DFC;  //EventLabelColors[5];  RED
                  dmAxiom.qryFeeTempUpdate.ParamByName('uniqueid').AsInteger := FieldByName('UNIQUEID').AsInteger;
                  dmAxiom.qryFeeTempUpdate.ExecSQL;
 //                 Inc(LRecCount);
               end
               else
               begin
                  raise Exception.Create('Matter: ' + FieldByName('FILEID').AsString + 'for Author: '+FieldByName('AUTHOR').AsString+ ' is not a current Matter');
               end;
//            end

         end;
         Next;
      end;
   end;
end;

function DefaultBillTemplate(): boolean;
begin
   with dmAxiom.qryNew do
   begin
      Close;
      SQL.Text := 'SELECT PATH FROM BILLTEMPLATE WHERE DEFAULTBILL = ''Y''';
      Open;
      if IsEmpty then
         Result := False
      else
         Result := True;
   end;
end;

function IsMatterPrivate(ANMatter: integer; ARestrictMatter: string): boolean;
begin
   with dmAxiom.procTemp do
   begin
      Close;
      StoredProcName := 'isallowedmatteraccess';
      PrepareSQL;
      Params[1].AsInteger  := ANMatter;
      Params[2].AsString   := dmAxiom.UserID;
      Params[3].AsString   := ARestrictMatter;
      Execute;
      Result := (Params[0].AsInteger = 1);
   end;
{   with dmAxiom.qryNew do
   begin
      Close;
      SQL.Text := 'SELECT NVL(RESTRICT_ACCESS,''N'') AS RESTRICT_ACCESS FROM MATTER WHERE NMATTER = :NMATTER';
      ParamByName('nmatter').AsInteger := ANMatter;
      Open;
      if (FieldByName('RESTRICT_ACCESS').AsString = 'N') then
         Result := False
      else
         Result := True;
   end; }
end;

function IsNotMatterTeam(ANMatter: integer): boolean;
begin
   with dmAxiom.procTemp do
   begin
      Close;
      StoredProcName := 'isallowedmatteraccess';
      PrepareSQL;
      Params[1].AsInteger  := ANMatter;
      Params[2].AsString   := dmAxiom.UserID;
      Params[3].AsString   := 'Y';
      Execute;
      Result := (Params[0].AsInteger = 1);
   end;
end;

procedure PostKeyEx32(key: Word; const shift: TShiftState; specialkey: Boolean) ;
{
Parameters :
* key : virtual keycode of the key to send. For printable keys this is simply the ANSI code (Ord(character)) .
* shift : state of the modifier keys. This is a set, so you can set several of these keys (shift, control, alt, mouse buttons) in tandem. The TShiftState type is declared in the Classes Unit.
* specialkey: normally this should be False. Set it to True to specify a key on the numeric keypad, for example.

Description:
Uses keybd_event to manufacture a series of key events matching the passed parameters. The events go to the control with focus. Note that for characters key is always the upper-case version of the character. Sending without any modifier keys will result in a lower-case character, sending it with [ ssShift ] will result in an upper-case character!
}
type
   TShiftKeyInfo = record
     shift: Byte ;
     vkey: Byte ;
   end;
   ByteSet = set of 0..7 ;
const
   shiftkeys: array [1..3] of TShiftKeyInfo =
     ((shift: Ord(ssCtrl) ; vkey: VK_CONTROL),
     (shift: Ord(ssShift) ; vkey: VK_SHIFT),
     (shift: Ord(ssAlt) ; vkey: VK_MENU)) ;
var
   flag: DWORD;
   bShift: ByteSet absolute shift;
   j: Integer;
begin
   for j := 1 to 3 do
   begin
     if shiftkeys[j].shift in bShift then
       keybd_event(shiftkeys[j].vkey, MapVirtualKey(shiftkeys[j].vkey, 0), 0, 0) ;
   end;
   if specialkey then
     flag := KEYEVENTF_EXTENDEDKEY
   else
     flag := 0;

   keybd_event(key, MapvirtualKey(key, 0), flag, 0) ;
   flag := flag or KEYEVENTF_KEYUP;
   keybd_event(key, MapvirtualKey(key, 0), flag, 0) ;

   for j := 3 downto 1 do
   begin
     if shiftkeys[j].shift in bShift then
       keybd_event(shiftkeys[j].vkey, MapVirtualKey(shiftkeys[j].vkey, 0), KEYEVENTF_KEYUP, 0) ;
   end;
end;

function CalcTax(AAmount: currency; sType, AFileID, ANMemo, ANMatter, ADefaultTax: String; ATaxDate, ADispatched: TDateTime): Currency;
var
  dgstFree : Double;
  dAmount  : Double;
  dTax     : Double;
begin
  with dmAxiom.qryTmp do
  begin
    Close;
    SQL.Clear;
    // GST on DISB should be fixed
    if (sType = 'ALLOC') or (sType = 'UPCRED') then
      begin
        SQL.Add('SELECT SUM(0 - AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.BILL_RATE, 0), 0, NVL(a.tax, 0), NVL(a.amount, 0)),0,0,0-AMOUNT)) as TAXABLE_AMOUNT, ');
        SQL.Add('SUM(NVL(0 - A.TAX, 0)) as ITEMTAX, ');
        SQL.Add('SUM( DECODE(NVL(A.TAX,0),0,0-DECODE(NVL(R.RATE-R.BILL_RATE, 0),0, NVL(A.TAX, 0),(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100))),NVL(-A.TAX, 0))) as tax ');
      end
    else if sType = 'CHEQREQ' then
      begin
        SQL.Add('SELECT SUM(AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.BILL_RATE, 0), 0, NVL(a.tax, 0), NVL(a.amount, 0)),0,0,AMOUNT)) as TAXABLE_AMOUNT, ');
        SQL.Add('SUM(NVL(A.TAX,0)) as ITEMTAX, ');
        SQL.Add('SUM(DECODE(NVL(A.TAX,0),0, DECODE(NVL(R.RATE-R.BILL_RATE, 0),0, NVL(A.TAX, 0),(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100))), NVL(a.tax, 0))) as tax ');
      end
    else
      begin
        SQL.Add('SELECT SUM(AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.BILL_RATE, 0), 0,');
        SQL.Add(' NVL(a.tax, 0), NVL(a.amount, 0)),0,0,AMOUNT)) as TAXABLE_AMOUNT, ');
        SQL.Add('SUM(NVL(A.TAX,0)) AS ITEMTAX ,');
        SQL.Add('SUM( DECODE(NVL(A.TAX,0),0,(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100)), NVL(a.tax, 0)) ) AS TAX ');
      end;

    if sType = 'UPCRED' then
    begin
      SQL.Add('FROM ALLOC A,TAXRATE R ');
    end
    else
      SQL.Add('FROM ' + sType + ' A,TAXRATE R ');

    if sType = 'CHEQREQ' then
    begin
      SQL.Add('WHERE FILEID = ' + QuotedStr(AFileID));
      SQL.Add(' AND TRUNC(REQDATE) >= r.commence and TRUNC(REQDATE) <= nvl(r.end_period, sysdate + 1000) ');
    end
    else
    begin
      SQL.Add('WHERE NMATTER = ' + ANMatter);
      SQL.Add(' AND TRUNC(A.CREATED) >= r.commence and TRUNC(A.CREATED) <= nvl(r.end_period, sysdate + 1000)');
    end;

    SQL.Add('  AND NMEMO = ' + ANMemo);

    SQL.Add(' AND A.TAXCODE = R.TAXCODE (+) ');


    if sType = 'ALLOC' then
      SQL.Add('  AND NINVOICE IS NULL AND (nvl(NRECEIPT,0) = 0 OR (NVL(NRECEIPT, 0) > 0 AND TYPE = ''DR''))');

    if sType = 'UPCRED' then
      SQL.Add('  AND NINVOICE IS NOT NULL');

    if dmAxiom.runningide then {sType = 'CHEQREQ' then }
      dmAxiom.qryTmp.SQL.SaveToFile('C:\tmp\qryBillsTaxCalc.sql');

    Open;

{    if (HasWithholdingTaxForSelectedItem) then
     begin
        dAmount := FieldByName('AMOUNT').AsCurrency;
        dTax := TaxCalc(dAmount, '', 'WHOLD', Now);
        dAmount := 0.00;

      end
    else   }
      begin
        dAmount := FieldByName('TAXABLE_AMOUNT').AsCurrency;
        if dmAxiom.GSTUseBillTotal = 'Y' then
           dTax := TaxCalc(dAmount, '', ADefaultTax, ATaxDate)
        else
           dTax := FieldByName('ITEMTAX').AsCurrency;
      end;

      dgstFree :=  FieldByName('AMOUNT').AsCurrency -  FieldByName('TAXABLE_AMOUNT').AsCurrency;

      if ((dgstFree <> 0) and (dAmount = 0)) then
      begin
         //
      end
      else
      begin
         if ((AAmount <> FieldByName('AMOUNT').AsCurrency) and
            VarIsNull(ADispatched)) then
         begin
             if AAmount = 0 then
                dAmount := 0
             else
                dAmount := AAmount - (FieldByName('AMOUNT').AsCurrency - FieldByName('TAXABLE_AMOUNT').AsCurrency);

           if dAmount > 0 then
               dTax := TaxCalc(dAmount, '', ADefaultTax, ATaxDate)
           else

           if dAmount = 0 then
               dTax := 0;
        end;
      end;
      Result := dTax;
  end;
end;

function DebtorStopWork(ACode: string): boolean;
var
   LOraQuery: TUniQuery;
   LStopWork: string;
begin
   if VarIsNull(ACode) then
      DebtorStopWork := False
   else
   begin
      LOraQuery := TUniQuery.Create(nil);
      try
         LOraQuery.Connection := dmAxiom.uniInsight;
         LOraQuery.SQL.Text := 'select stop_work from debtorstatus where '+
                               'debtorstatus = :code';
         LOraQuery.ParamByName('code').AsString := ACode;
         LOraQuery.Open;
         LStopWork:= LOraQuery.FieldByName('stop_work').AsString;
         LOraQuery.Close;
      finally
         LOraQuery.Free;
      end;

      DebtorStopWork := (LStopWork = 'Y');
   end;
end;

procedure ConvertMsg(AFile: string);
var
   OutPutFileName: widestring;
   OutlookApp: oleVariant;
   olNameSpace: oleVariant;
   Mail: oleVariant;
   olFolder: oleVariant;
begin
   outputFileName := copy(AFile, 1, length(AFile) - length(ExtractFileExt(AFile))) + '.pdf';
   if FileExists(outputFileName) = False then
   begin
      try
         OutlookApp := GetActiveOleObject('Outlook.Application');
      except
         OutlookApp := CreateOleObject('Outlook.Application');
      end;

      try
         OutPutFileName := copy(AFile, 1, length(AFile) - length(ExtractFileExt(AFile))) +'.html';

         olNameSpace := OutlookApp.GetNamespace('MAPI');
         if not Varisnull(olNameSpace) then
         begin
            Mail := olNameSpace.OpenSharedItem(AFile);

            Mail.SaveAs(OutPutFileName, olHTML);
            try
               ConvertDOCFiles(OutPutFileName);
            finally
               if (FileExists(OutPutFileName)) then
                  DeleteFile(OutPutFileName);
            end;
         end;
      except on E:Exception do
         ShowMessage(E.Message);
      end;
      OutlookApp := unassigned;
   end;
end;


procedure ConvertDOCFiles(AFile: string);
var
   varword,
   varDoc,
   oMissing,
   fileFormat,
   varDocs,
   EmptyParam: variant;
   outputFileName: string;
   WordStarted: boolean;
begin
   WordStarted := False;
   try
      varWord := GetActiveOleObject('Word.Application');
   except
      on EOleSysError do
      begin
         try
            varWord := CreateOleObject('Word.Application');
            Sleep(200);
            WordStarted := True;
         except
            on e: Exception do
            begin
               MessageDlg('Error Starting MS Word: ' + E.Message, mtError, [mbOK], 0);
               varWord := null;
            end;
         end;
      end;
   end;

   varDoc := varWord.Documents.Add(AFile);
   varDoc.Select;

   outputFileName := copy(AFile, 1, length(AFile) - length(ExtractFileExt(AFile))) + '.pdf';
   fileFormat := wdFormatPDF;

    // Save document into PDF Format
//   varDoc.SaveAs(outputFileName, fileFormat);
//   varDoc.SaveAs2(outputFileName, fileFormat);
   varDoc.ExportAsFixedFormat(outputFileName, fileFormat);

   varDoc.Close(wdDoNotSaveChanges);
   if WordStarted = True then
      //* Closes Microsoft Word. */
      varWord.Quit;

   varDoc := Unassigned;
   varWord := Unassigned;
end;

procedure ConvertXLFiles(AFile: string);
var
   varExcel,
   varWBook,
   oMissing,
   fileFormat,
   varDocs: variant;
   outputFileName: string;
begin
   try
      varExcel := GetActiveOleObject('Excel.Application');
   except
      on EOleSysError do
      begin
         try
            varExcel := CreateOleObject('Excel.Application');
            Sleep(200);
         except
            on e: Exception do
            begin
               MessageDlg('Error Starting Excel: ' + E.Message, mtError, [mbOK], 0);
               varExcel := null;
            end;
         end;
      end;
   end;

   varWBook := varExcel.Workbooks.Open(AFile);
//   varWBook.Select;

   outputFileName := copy(AFile, 1, length(AFile) - length(ExtractFileExt(AFile))) + '.pdf';
   fileFormat := xlTypePDF;

    // Save document into PDF Format
//   varDoc.SaveAs(outputFileName, fileFormat);
   varWBook.ExportAsFixedFormat(fileFormat, outputFileName );

   varWBook.Close(wdDoNotSaveChanges);
   varExcel := null;
end;

function MoveMatterDoc(var ANewDocName: string; AOldDocName: string; DeleteOrigDoc: boolean; DisplayMsg: boolean): boolean;
var
   ADocumentSaved: boolean;
   AError: integer;
begin
   ADocumentSaved := True;
   try
      // Check if directory exists
      if not DirectoryExists(ExtractFileDir(ANewDocName)) then
         ForceDirectories(ExtractFileDir(ANewDocName));
      // try to copy file
      if FileExists(ANewDocName) then
         ADocumentSaved := False
      else
      begin
         if not CopyFile(PChar(AOldDocName) ,pchar(ANewDocName), true) then
         begin
            AError := GetLastError;
            case AError of
               80: begin
                      if DisplayMsg = True then
                      begin
                         if MessageDlg('File already exists. Do you want to overwrite it?' , mtConfirmation, [MBYES,MBNO], 0, mbYes) = IDYES then
                           ADocumentSaved := CopyFile(PChar(AOldDocName) ,pchar(ANewDocName), false);
                      end
                      else
                      begin
                         ADocumentSaved := CopyFile(PChar(AOldDocName) ,pchar(ANewDocName), false);
                      end;
                   end;
               82: begin
                     if DisplayMsg = True then
                        MessageDlg('There was an error during the saving of the document.  The directory or file could not be created.', mtError , [MBOK], 0, mbOK );
                     ADocumentSaved := False;
                   end;
               5:  begin
                     if DisplayMsg = True then
                        MessageDlg('There was an error during the saving of the document.  Access denied.', mtError, [MBOK], 0, mbOK);
                     ADocumentSaved := False;
                   end;
               39,112: begin
                     if DisplayMsg = True then
                        MessageDlg('There was an error during the saving of the document.  The disk is full!', mtError, [MBOK], 0, mbOK);
                     ADocumentSaved := False;
                   end;
               111:begin
                     if DisplayMsg = True then
                        MessageDlg('There was an error during the saving of the document.  The filename is to long!', mtError, [MBOK], 0, mbOK);
                     ADocumentSaved := False;
                   end;
               53,3 :begin
                     if DisplayMsg = True then
                        MessageDlg('There was an error during the saving of the document.  The network path was not found!', mtError, [MBOK], 0, mbOK);
                     ADocumentSaved := False;
                   end;
            else
               if DisplayMsg = True then
                  MessageDlg('There was an error during the saving of the document.  The document was not saved. Error: ' + IntTostr(AError),  mtError, [MBOK], 0, mbOK);
               ADocumentSaved := False;
            end;
         end;
         // delete file if succesfull
         if DeleteOrigDoc and ADocumentSaved then
            RecycleDelete(Application.MainForm.Handle, PChar(AOldDocName));
//         DeleteFile(AOldDocName);
      end;
   except
      on E: Exception do
      begin
         if DisplayMsg = True then
            MessageDlg('There was an Error during the saving of the document.  The document was not saved: ' + E.Message, mtError, [MBOK], 0, mbOK);
         ADocumentSaved := False;
      end;
   end;
   Result := ADocumentSaved;
end;

function RecycleDelete(whandle: THandle; inpath: string): integer;
{ deletes 'inpath', removing it to the recycle bin.  You can specify a list
 of files, as long as you put #0 between the files, and double-terminate it
  with #0. }
var
  FileOp: TSHFileOpStructA;
  pTmp: PAnsiChar;
begin
   pTmp := PAnsiChar(inpath + #0#0);
   with FileOp do
   begin
      wnd := 0;
      wFunc := FO_DELETE;  //FO_COPY, FO_DELETE, FO_MOVE, FO_RENAME
      pFrom := pTmp;
      fFlags := FOF_ALLOWUNDO or FOF_SILENT or FOF_NOCONFIRMATION;
      fAnyOperationsAborted := false;
      hNameMappings := nil;
      lpszProgressTitle := nil;
   end;
   Result := SHFileOperationA(FileOp);
 { at this point, if you allow confirmation, you can interrogate
   FileOp.fAnyOperationsAborted to determine if the user aborted your operation.
   }
end;

function ConvertdocToPDF(ALsFile: string): string;
var
   LsFile,
   LsPDFFile,
   LsConvFile: string;
//   PDFLibrary: TDebenuPDFLibrary1014;
begin
   if FileExists(ALsFile) then
   begin
      if (ExtractFileExt(ALsFile) <> '.pdf') then
      begin
         LsFile := ALsFile;
         if ExtractFileExt(LsFile) = '.msg' then
            ConvertMsg(LsFile)
         else
            if (ExtractFileExt(LsFile) = '.doc') or
               (ExtractFileExt(LsFile) = '.docx') then
               ConvertDOCFiles(LsFile)
            else if (ExtractFileExt(LsFile) = '.xls') or
                    (ExtractFileExt(LsFile) = '.xlsx') then
               ConvertXLFiles(LsFile)
            else
            begin
               LsPDFFile := copy(LsFile,1,Length(LsFile) - Length(ExtractFileExt(LsFile))) + '.pdf';
//               PDFLibrary.SaveToFile(LsPDFFile);
               LsFile := LsPDFFile;
            end;
         LsConvFile := copy(LsFile,1,Length(LsFile) - Length(ExtractFileExt(LsFile))) + '.pdf';
         if FileExists(LsConvFile) then
            Result := LsConvFile;
      end
      else
      begin
         try
            if FileExists(ALsFile) then
               Result := ALsFile;
         except
            //
         end;
      end;
   end;
end;

function PadStr(value: string; plength: integer; PadValue: string; LeftPad: boolean ): string;
var
   valuelength, i: integer;
begin
   valuelength := Length(value);
   if valuelength > plength then
      result := LeftStr(value, plength)
   else
   begin
      for i := valuelength to plength - 1 do
      begin
         if LeftPad then
            value := PadValue + value
         else
            value := value + PadValue;
      end;
      result := value;
   end;
end;

procedure GetEmailAddresses(var ARecipientsList: TStringList; ANMatter, ANClient: integer); overload;
   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      frmEmailList.tvEmailList.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;
var
   ARowInfo: TcxRowInfo;
   I,
   nEmailSel,
   RecIdx: integer;
   slEmail: string;
begin
//   ARecipientsList := TStringList.Create;
   with dmAxiom.qryTmp do
   begin
     close;
     sql.Text := 'SELECT matterparty.nname, email, NVL (title, NAME) AS NAME, category '+
                 '   FROM phonebook, matterparty '+
                 '  WHERE matterparty.nname = phonebook.nname '+
                 '    AND nmatter = :nmatter '+
                 '    AND email IS NOT NULL AND instr(email,''@'',1,1) > 0 '+
                 ' UNION '+
                 ' SELECT matterparty.nname, email1, NVL (title, NAME) AS NAME, category '+
                 '   FROM phonebook, matterparty '+
                 '  WHERE matterparty.nname = phonebook.nname '+
                 '    AND nmatter = :nmatter '+
                 '    AND email1 IS NOT NULL AND instr(email1,''@'',1,1) > 0 '+
                 ' UNION '+
                 ' SELECT matterparty.nname, email2, NVL (title, NAME) AS NAME, category '+
                 '   FROM phonebook, matterparty '+
                 '  WHERE matterparty.nname = phonebook.nname '+
                 '    AND nmatter = :nmatter '+
                 '    AND email2 IS NOT NULL AND instr(email2,''@'',1,1) > 0 '+
                 ' UNION '+
                 ' SELECT nname, email, NVL (title, NAME) AS NAME, ''Client'' as category '+
                 '   FROM phonebook '+
                 '  WHERE phonebook.nclient = :nclient AND email IS NOT NULL '+
                 '    AND instr(email,''@'',1,1) > 0 '+
                 ' UNION '+
                 ' SELECT nname, email1, NVL (title, NAME) AS NAME, ''Client'' as category '+
                 '   FROM phonebook '+
                 '  WHERE phonebook.nclient = :nclient AND email1 IS NOT NULL '+
                 '    AND instr(email1,''@'',1,1) > 0 '+
                 ' UNION  '+
                 ' SELECT nname, email2, NVL (title, NAME) AS NAME, ''Client'' as category '+
                 '   FROM phonebook '+
                 '  WHERE phonebook.nclient = :nclient AND email2 IS NOT NULL '+
                 '    AND instr(email2,''@'',1,1) > 0';
     ParamByName('nmatter').AsInteger := ANMatter;
     ParamByName('nclient').AsInteger := ANClient;
     open;
     if (RecordCount > 0) then
     begin
        try
           frmEmailList := TfrmEmailList.Create(Application);
           try
              frmEmailList.tvEmailList.BeginUpdate();
              I := 0;
              while (eof = False) do
              begin
                 frmEmailList.tvEmailList.DataController.AppendRecord;
                 begin
                    SetRecordValue(I, frmEmailList.tvEmailListNAME.Index, FieldByName('name').AsString);
                    SetRecordValue(I, frmEmailList.tvEmailListEMAIL.Index, FieldByName('email').AsString);
                 end;
                 next;
                 inc(I);
              end;
           finally
              frmEmailList.tvEmailList.EndUpdate;
           end;
           if frmEmailList.ShowModal = mrOK then
           begin
              nEmailSel := frmEmailList.tvEmailList.DataController.GetSelectedCount;
              if nEmailSel > 0 then
              begin
                 for I := 0 to (nEmailSel - 1) do
                 begin
                    RecIdx := frmEmailList.tvEmailList.DataController.GetSelectedRowIndex(i);
                    ARowInfo := frmEmailList.tvEmailList.DataController.GetRowInfo(RecIdx);
                    slEmail :=  frmEmailList.tvEmailList.DataController.Values[ARowInfo.RecordIndex, frmEmailList.tvEmailListEMAIL.Index];

                    ARecipientsList.Add(slEmail);
                 end;
              end;
           end;
        finally
           frmEmailList.Free;
        end;
     end;
     dmAxiom.qryTmp.Close;
   end;
end;

procedure GetEmailAddresses(var ARecipientsList: TStringList; ANClient: integer); overload;
   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      frmEmailList.tvEmailList.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;
var
   ARowInfo: TcxRowInfo;
   I,
   nEmailSel,
   RecIdx: integer;
   slEmail: string;
begin
//   ARecipientsList := TStringList.Create;
   with dmAxiom.qryTmp do
   begin
     close;
     sql.Text := ' SELECT nname, email, NVL (title, NAME) AS NAME, ''Client'' as category '+
                 '   FROM phonebook '+
                 '  WHERE phonebook.nclient = :nclient AND email IS NOT NULL '+
                 '    AND instr(email,''@'',1,1) > 0 '+
                 ' UNION '+
                 ' SELECT nname, email1, NVL (title, NAME) AS NAME, ''Client'' as category '+
                 '   FROM phonebook '+
                 '  WHERE phonebook.nclient = :nclient AND email1 IS NOT NULL '+
                 '    AND instr(email1,''@'',1,1) > 0 '+
                 ' UNION  '+
                 ' SELECT nname, email2, NVL (title, NAME) AS NAME, ''Client'' as category '+
                 '   FROM phonebook '+
                 '  WHERE phonebook.nclient = :nclient AND email2 IS NOT NULL '+
                 '    AND instr(email2,''@'',1,1) > 0';
     ParamByName('nclient').AsInteger := ANClient;
     open;
     if (RecordCount > 0) then
     begin
        try
           frmEmailList := TfrmEmailList.Create(Application);
           try
              frmEmailList.tvEmailList.BeginUpdate();
              I := 0;
              while (eof = False) do
              begin
                 frmEmailList.tvEmailList.DataController.AppendRecord;
                 begin
                    SetRecordValue(I, frmEmailList.tvEmailListNAME.Index, FieldByName('name').AsString);
                    SetRecordValue(I, frmEmailList.tvEmailListEMAIL.Index, FieldByName('email').AsString);
                 end;
                 next;
                 inc(I);
              end;
           finally
              frmEmailList.tvEmailList.EndUpdate;
           end;
           if frmEmailList.ShowModal = mrOK then
           begin
              nEmailSel := frmEmailList.tvEmailList.DataController.GetSelectedCount;
              if nEmailSel > 0 then
              begin
                 for I := 0 to (nEmailSel - 1) do
                 begin
                    RecIdx := frmEmailList.tvEmailList.DataController.GetSelectedRowIndex(i);
                    ARowInfo := frmEmailList.tvEmailList.DataController.GetRowInfo(RecIdx);
                    slEmail :=  frmEmailList.tvEmailList.DataController.Values[ARowInfo.RecordIndex, frmEmailList.tvEmailListEMAIL.Index];

                    ARecipientsList.Add(slEmail);
                 end;
              end;
           end;
        finally
           frmEmailList.Free;
        end;
     end;
     dmAxiom.qryTmp.Close;
   end;
end;

procedure SaveFileNotesToDoc(ACreated: TDateTime; ANotes, AReason, AFileID,
                             AAuthor, AFileName: string; ANFee: integer);
var
   bDocEdit: boolean;
begin
   try
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'select docid from doc where nfee = :nfee';
         ParamByName('nfee').AsInteger := ANFee;
         Open;
         bDocEdit := EOF;
      end;
      if bDocEdit then
      begin
         dmAxiom.qryMatterAttachment.Open;
         dmAxiom.qryMatterAttachment.Insert;
//         dmAxiom.qryMatterAttachment.ParamByName('docid').AsString := dmAxiom.DocId;
         dmAxiom.qryMatterAttachment.FieldByName('docid').AsString := dmAxiom.DocID;
         dmAxiom.qryMatterAttachment.FieldByName('fileid').AsString := AFileid;
         dmAxiom.qryMatterAttachment.FieldByName('nmatter').AsInteger := TableInteger('MATTER','FILEID',AFileID,'nMatter');
         dmAxiom.qryMatterAttachment.FieldByName('auth1').AsString := AAuthor;  //  dmSaveDoc.UserID;
         dmAxiom.qryMatterAttachment.FieldByName('D_CREATE').AsDateTime := Now;

         dmAxiom.qryMatterAttachment.FieldByName('IMAGEINDEX').AsInteger := 9;

         dmAxiom.qryMatterAttachment.FieldByName('DESCR').AsString := ANotes;   // ExtractFileName(tmpFileName);
         dmAxiom.qryMatterAttachment.FieldByName('SEARCH').AsString := 'File Note - ' + AAuthor;
//          qryMatterAttachments.FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(tmpFileName),2, Length(ExtractFileExt(tmpFileName)));
         dmAxiom.qryMatterAttachment.FieldByName('doc_name').AsString := 'File Note - ' + AAuthor;
         dmAxiom.qryMatterAttachment.FieldByName('KEYWORDS').AsString := 'Fee File Note';
         dmAxiom.qryMatterAttachment.FieldByName('PATH').AsString := ExpandUNCFileName(AFileName);
		   dmAxiom.qryMatterAttachment.FieldByName('DISPLAY_PATH').AsString := AFileName;
         dmAxiom.qryMatterAttachment.FieldByName('NFEE').AsInteger := ANFee;
         dmAxiom.qryMatterAttachment.FieldByName('EXTERNAL_ACCESS').AsString := 'N';

         try
            dmAxiom.qryMatterAttachment.ApplyUpdates;
         finally
            dmAxiom.qryMatterAttachment.CommitUpdates;
         end;
	  end
	  else
      begin
         dmAxiom.qryMatterAttachment.Open;
         dmAxiom.qryMatterAttachment.Edit;
         dmAxiom.qryMatterAttachment.FieldByName('DESCR').AsString := ANotes;
         try
            dmAxiom.qryMatterAttachment.ApplyUpdates;
         finally
            dmAxiom.qryMatterAttachment.CommitUpdates;
         end;
      end;
   except
      dmAxiom.qryMatterAttachment.CancelUpdates;
   end;
end;

function ParseEmailMacros(ANMatter, ANName: Integer; AHTMLBody: string): String;
begin
  Result := AHTMLBody;

  Result := StringReplace(Result,'[EMPSIGNATURE]', TableString('EMPLOYEE','CODE',dmAxiom.UserID,'EMAIL_SIGNATURE_HTML'),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,'[MATTER_NAME]', TableString('MATTER','NMATTER',ANMatter,'SHORTDESCR'),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,'[CLIENTNAME]', TableString('PHONEBOOK','NNAME',ANName,'GIVENNAMES'),[rfReplaceAll, rfIgnoreCase]);
end;

function WriteFileDetailsToDB(AParentDocID: integer; ANewDocName, AFileID, ADocDescr: string; AIsAttachment: string = 'N'; ADocID: integer = 0): boolean;
var
   FileExt: string;
   FileImg,
   liDocID: integer;
   dt: TDateTime;
begin
   if (ADocID = 0) then
      liDocID := StrToInt(dmAxiom.AttDocID)
   else
      liDocID := ADocID;

   if dmAxiom.qrySaveEmailAttachments.State = dsInactive then
   begin
     dmAxiom.qrySaveEmailAttachments.ParamByName('docid').AsInteger := liDocID;
     dmAxiom.qrySaveEmailAttachments.Open;
   end;

   if dmAxiom.qrySaveEmailAttachments.State = dsBrowse then
      dmAxiom.qrySaveEmailAttachments.Insert;

   dmAxiom.qrySaveEmailAttachments.FieldByName('docid').AsInteger := liDocID;
   dmAxiom.qrySaveEmailAttachments.FieldByName('fileid').AsString := AFileID;
   dmAxiom.qrySaveEmailAttachments.FieldByName('nmatter').AsInteger := TableInteger('MATTER','FILEID',AFileID,'NMATTER');
   dmAxiom.qrySaveEmailAttachments.FieldByName('auth1').AsString := UpperCase(dmAxiom.UserID);

  dmAxiom.qrySaveEmailAttachments.FieldByName('docid').AsString := dmAxiom.AttDocID;
  dmAxiom.qrySaveEmailAttachments.FieldByName('fileid').AsString := AFileID;
  dmAxiom.qrySaveEmailAttachments.FieldByName('nmatter').AsInteger := TableInteger('MATTER','FILEID',AFileID,'NMATTER');
  dmAxiom.qrySaveEmailAttachments.FieldByName('auth1').AsString := UpperCase(dmAxiom.UserID);

  dmAxiom.qrySaveEmailAttachments.FieldByName('DOC_NAME').AsString := ExtractFileName(ANewDocName);

  dmAxiom.qrySaveEmailAttachments.FieldByName('DESCR').AsString := ADocDescr;
  dmAxiom.qrySaveEmailAttachments.FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(ANewDocName),2, length(ExtractFileExt(ANewDocName)));
   dmAxiom.qrySaveEmailAttachments.FieldByName('PATH').AsString := IndexPath(ANewDocName, 'DOC_SHARE_PATH');
   dmAxiom.qrySaveEmailAttachments.FieldByName('DISPLAY_PATH').AsString := ANewDocName;
   dmAxiom.qrySaveEmailAttachments.FieldByName('PARENTDOCID').AsInteger := AParentDocID;
   dmAxiom.qrySaveEmailAttachments.FieldByName('IS_ATTACHMENT').AsString := AIsAttachment;

  dmAxiom.qrySaveEmailAttachments.FieldByName('PATH').AsString := IndexPath(ANewDocName, 'DOC_SHARE_PATH');
  dmAxiom.qrySaveEmailAttachments.FieldByName('DISPLAY_PATH').AsString := ANewDocName;
  dmAxiom.qrySaveEmailAttachments.FieldByName('PARENTDOCID').AsInteger := AParentDocID;

  FileExt := uppercase(dmAxiom.qrySaveEmailAttachments.FieldByName('FILE_EXTENSION').AsString);
  if (FileExt = 'DOC') or (FileExt = 'DOCX') then
    FileImg := 2
  else if (FileExt = 'XLS') or (FileExt = 'XLSX') then
    FileImg := 3
  else if (FileExt = 'PDF')  then
    FileImg := 5
  else if (FileExt = 'MSG') then
    FileImg := 4
  else
    FileImg := 1;

  FileAge(ANewDocName, dt);
  dmAxiom.qrySaveEmailAttachments.FieldByName('D_CREATE').AsDateTime := dt;
  dmAxiom.qrySaveEmailAttachments.FieldByName('IMAGEINDEX').AsInteger := FileImg;
  dmAxiom.qrySaveEmailAttachments.FieldByName('precedent_details').AsString := 'Email attachment - ';
  dmAxiom.qrySaveEmailAttachments.FieldByName('KEYWORDS').AsString := 'Email attachment - ';

  dmAxiom.qrySaveEmailAttachments.Post;
  dmAxiom.qrySaveEmailAttachments.ApplyUpdates;
end;

function PadFileID(AFileID: string): string;
VAR
  sMatterSeparator,
  sNewFileID,
  sFileIDExtract,
  sFileIDExtractNew,
  sMatterCode: string;
  i,
  iCount,
  iMatterPad: integer;
begin
   iCount := 0;
   sNewFileID := AFileID;
   sMatterCode := TableString('ENTITY','CODE', dmAxiom.Entity,'MATTERCODE');
   sMatterSeparator := TableString('ENTITY','CODE', dmAxiom.Entity,'MATTERSEPERATOR');
   iMatterPad := TableInteger('ENTITY','CODE', dmAxiom.Entity,'MATTERPAD');
   if (pos(sMatterSeparator,sNewFileID) > 0) and (sMatterSeparator <> '')
      and (sMatterCode <> 'N')  then
   begin
      for I := length(sNewFileID) downto 0 do
      begin
         if sNewFileID[i] = sMatterSeparator then
            break;
         sFileIDExtract := sNewFileID[i] + sFileIDExtract;
         Inc(iCount);
      end;
   end;
   if (iCount < iMatterPad) and (icount > 0) then
   begin
      sFileIDExtractNew := Copy('000000' + sFileIDExtract, Length(sFileIDExtract) + 7 - iMatterPad, iMatterPad);
      sNewFileID := copy(snewfileid, 1,  length(sNewFileID)-iCount)+ sFileIDExtractNew;
   end;
   Result :=  sNewFileID;
end;

procedure SaveCheqReq(ADoc_Name, AAuth, APath, ADescr, AFileid, APrecCategory,
                   APrecedentDetails, APrecClass: string; AnCheqReq: integer);
var
  qryLookup: TOraQuery;
  AExt: string;
begin
   qryLookup := TOraQuery.Create(nil);
   qryLookup.Connection := dmAxiom.uniInsight;
   with qryLookup do
   begin
      SQL.Text := 'INSERT INTO doc '+
                  '(DOC_NAME, AUTH1, PATH, DESCR, FILEID, '+
                  'NPRECCATEGORY, NMATTER, IMAGEINDEX, FILE_EXTENSION,  '+
                  ' KEYWORDS, PRECEDENT_DETAILS, NPRECCLASSIFICATION, DISPLAY_PATH) '+
                  'VALUES '+
                  '(:DOC_NAME, :AUTH1, :PATH, :DESCR, :FILEID,'+
                  ' :NPRECCATEGORY, :NMATTER, :IMAGEINDEX, :FILE_EXTENSION,  '+
                  ' :KEYWORDS, :PRECEDENT_DETAILS, :NPRECCLASSIFICATION, :DISPLAY_PATH)';

      ParamByName('DOC_NAME').AsString := ADoc_Name;
//      ParamByName('SEARCH').AsString := ExtractFileName(edtPath.Text);
      ParamByName('FileID').AsString := AFileid;
      ParamByName('AUTH1').AsString := AAuth;
      ParamByName('DESCR').AsString := ADescr;
      ParamByName('NMATTER').AsString := MatterString(AFileid, 'NMATTER');
//      ParamByName('KEYWORDS').AsString := edKeywords.Text;
      ParamByName('PRECEDENT_DETAILS').AsString := APrecedentDetails;
      AExt := UpperCase(Copy(ExtractFileExt(APath),2, Length(ExtractFileExt(APath))));
      ParamByName('FILE_EXTENSION').AsString := AExt;
      ParamByName('PATH').AsString := IndexPath(APath, 'DOC_SHARE_PATH');  //  NewPath;
      ParamByName('DISPLAY_PATH').AsString := APath;

      if (AExt = 'DOC') or (AExt = 'DOCX') then
         ParamByName('IMAGEINDEX').AsInteger := 2
      else if ((AExt = 'XLS') or (AExt = 'CSV')) then
         ParamByName('IMAGEINDEX').AsInteger := 3
      else if ((AExt = 'EML') or (AExt = 'MSG')) then
         ParamByName('IMAGEINDEX').AsInteger := 4
      else if AExt = 'PDF' then
         ParamByName('IMAGEINDEX').AsInteger := 5;

      ParamByName('NPRECCATEGORY').AsString := APrecCategory;

      ParamByName('NPRECCLASSIFICATION').AsString := APrecClass;
      ExecSQL;

      SQL.Clear;
      SQL.Text := 'update cheqreq set '+
                  'path = :path, cheqreq_copy_ext =  :invoice_copy_ext '+
                  'where ncheqreq = :ncheqreq ';
      ParamByName('invoice_copy_ext').AsString := AExt;
      ParamByName('PATH').AsString := APath;
      ParamByName('ncheqreq').AsInteger := AnCheqReq;
      ExecSQL;

   end;
   qryLookup.Free();
end;

function IsValidBillForMatter(sFileId, Entity: string): boolean;
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
         loQry.SQL.Add('SELECT ''x'' FROM MATTER WHERE FILEID = :sFileId ');
         loQry.SQL.Add('AND ENTITY = :ENTITY');
         loQry.Params[0].AsString := sFileId;
         loQry.Params[1].AsString := Entity;

         loQry.Open;

         Result := not loQry.IsEmpty;
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

function GetCurrentUserName: string;
const
   cnMaxUserNameLen = 254;
var
   sUserName: string;
   dwUserNameLen: DWORD;
begin
   dwUserNameLen := cnMaxUserNameLen - 1;
   SetLength(sUserName, cnMaxUserNameLen);
   GetUserName(PChar(sUserName), dwUserNameLen);
   SetLength(sUserName, dwUserNameLen);
   Result := sUserName;
end;

{
procedure SaveSearchFromXML(AFileName: string);
var
  LDocument: IXMLDocument;
  OrderNode: IXMLNode;
  SequenceNumber,
  OrderId,
  LFileLoc,
  NewDocPath,
  NewDocName,
  AParsedDocName,
  ADownloadURL,
  LFileID,
  FileHash: String;
  xsDateTime: TXSDateTime;
  DupeSearch: Boolean;
begin
   try
      LFileLoc := SystemString('INFOTRACK_STAGING_FLDR')+'\'+AFileName;
      if FileExists(LFileLoc) then
      begin
         LDocument := TXMLDocument.Create(nil);
         try
            LDocument.LoadFromFile(LFileLoc);

            OrderNode := LDocument.ChildNodes.FindNode('Order');

            if (OrderNode <> nil) then
            begin
               SequenceNumber := OrderNode.ChildNodes['SequenceNumber'].Text;
               OrderId := OrderNode.ChildNodes['OrderId'].Text;
               FileHash := OrderNode.ChildNodes['FileHash'].Text;
               with dmAxiom.qryTmp do
               begin
                  Close;
                  SQL.Text := 'select 1 from searches where sequencenumber = :sequencenumber '+
                              'and OrderId = :OrderId and isbillable = ''true'' and '+
                              'filehash = :filehash';
                  ParamByName('SequenceNumber').AsString := SequenceNumber;
                  ParamByName('OrderId').AsString := OrderId;
                  ParamByName('FileHash').AsString := FileHash;
                  Open;
                  DupeSearch := (IsEmpty = False);
               end;

               if (DupeSearch = False) then
               begin
                  NewDocPath := IncludeTrailingPathDelimiter(SystemString('DRAG_DEFAULT_DIRECTORY'));
                  NewDocName := NewDocPath + CleanFileName(OrderNode.ChildNodes['OrderId'].Text, '-');
                  AParsedDocName := ParseMacros(NewDocName, StrToInt(OrderNode.ChildNodes['ClientReference'].Text));
                  ADownloadURL := OrderNode.ChildNodes['DownloadUrl'].Text;

                  with dmAxiom.qrySearches do
                  begin
                     Open;
                     Insert;

                     FieldByName('AvailableOnline').AsString := OrderNode.ChildNodes['AvailableOnline'].Text;
                     FieldByName('ClientReference').AsInteger := StrToInt(OrderNode.ChildNodes['ClientReference'].Text);
                     FieldByName('BillingTypeName').AsString := OrderNode.ChildNodes['BillingTypeName'].Text;

                     try
                        xsDateTime := TXSDateTime.Create;
                        xsDateTime.XSToNative(OrderNode.ChildNodes['DateOrdered'].Text);

                        FieldByName('DateOrdered').AsDateTime := xsDateTime.AsDateTime;

                        if (OrderNode.ChildNodes['DateCompleted'].Text <> '') then
                        begin
                           xsDateTime.XSToNative(OrderNode.ChildNodes['DateCompleted'].Text);
                           FieldByName('DateCompleted').AsDateTime := xsDateTime.AsDateTime;
                        end;
                     finally
                        xsDateTime := nil;
                     end;

                     FieldByName('Description').AsString := OrderNode.ChildNodes['Description'].Text;
                     FieldByName('OrderId').AsString := OrderNode.ChildNodes['OrderId'].Text;
                     FieldByName('ParentOrderId').AsString := OrderNode.ChildNodes['ParentOrderId'].Text;
                     FieldByName('OrderedBy').AsString := OrderNode.ChildNodes['OrderedBy'].Text;
                     FieldByName('Reference').AsString := OrderNode.ChildNodes['Reference'].Text;
                     FieldByName('RetailerReference').AsString := OrderNode.ChildNodes['RetailerReference'].Text;
                     FieldByName('RetailerFee').AsString := OrderNode.ChildNodes['RetailerFee'].Text;
                     FieldByName('RetailerFeeGST').AsString := OrderNode.ChildNodes['RetailerFeeGST'].Text;
                     FieldByName('RetailerFeeTotal').AsString := OrderNode.ChildNodes['RetailerFeeTotal'].Text;
                     FieldByName('SupplierFee').AsString := OrderNode.ChildNodes['SupplierFee'].Text;
                     FieldByName('SupplierFeeGST').AsString := OrderNode.ChildNodes['SupplierFeeGST'].Text;
                     FieldByName('SupplierFeeTotal').AsString := OrderNode.ChildNodes['SupplierFeeTotal'].Text;
                     FieldByName('TotalFee').AsString := OrderNode.ChildNodes['TotalFee'].Text;
                     FieldByName('TotalFeeGST').AsString := OrderNode.ChildNodes['TotalFeeGST'].Text;
                     FieldByName('TotalFeeTotal').AsString := OrderNode.ChildNodes['TotalFeeTotal'].Text;
                     FieldByName('ServiceName').AsString := OrderNode.ChildNodes['ServiceName'].Text;
                     FieldByName('Status').AsString := OrderNode.ChildNodes['Status'].Text;
                     FieldByName('StatusMessage').AsString := OrderNode.ChildNodes['StatusMessage'].Text;
                     if (ADownloadURL <> '') then
                     begin
                        FieldByName('DownloadUrl').AsString := AParsedDocName+'.pdf' ;   //OrderNode.ChildNodes['DownloadUrl'].Text;
                        FieldByName('OnlineUrl').AsString := OrderNode.ChildNodes['OnlineUrl'].Text;
                     end;
                     FieldByName('IsBillable').AsString := OrderNode.ChildNodes['IsBillable'].Text;
                     FieldByName('FileHash').AsString := OrderNode.ChildNodes['FileHash'].Text;
                     FieldByName('Email').AsString := OrderNode.ChildNodes['Email'].Text;
                     FieldByName('ClientId').AsString := OrderNode.ChildNodes['ClientId'].Text;
                     FieldByName('SequenceNumber').AsString := OrderNode.ChildNodes['SequenceNumber'].Text;
                     Post;
                  end;

                  LFileID := TableString('MATTER', 'NMATTER', StrToInt(OrderNode.ChildNodes['ClientReference'].Text), 'FILEID');
                  if (OrderNode.ChildNodes['IsBillable'].Text = 'true') then
                  begin
                     if InfoTrackLogin(ADownloadURL, AParsedDocName, SystemString('INFOTRACK_USER'),
                                       SystemString('INFOTRACK_PASSWORD')) = True then
                     begin
                        if (ADownloadURL <> '') then
                           SaveDocument(now, LFileID, dmAxiom.UserID, AParsedDocName+'.pdf','InfoTrack Search',
                                     'InfoTrack Search - '+dmAxiom.qrySearches.FieldByName('Description').AsString);
                        // create invoice
                        try
                           if not Assigned(dmAccountCreate) then
                              Application.CreateForm(TdmAccountCreate, dmAccountCreate);
                           dmAccountCreate.SaveAccount(dmAxiom.qrySearches.FieldByName('ClientReference').AsInteger,
                                                    SystemInteger('INFOTRACK_NCREDITOR'),
                                                    dmAxiom.qrySearches.FieldByName('OrderID').AsInteger,
                                                    dmAxiom.qrySearches.FieldByName('TotalFee').AsCurrency,
                                                    dmAxiom.qrySearches.FieldByName('TotalFeeGST').AsCurrency,
                                                    dmAxiom.qrySearches.FieldByName('Description').AsString,
                                                    MatterString(dmAxiom.qrySearches.FieldByName('ClientReference').AsInteger, 'FILEID'));
                        finally
                           FreeAndNil(dmAccountCreate);
                        end;
                     end
                     else
                        ShowMessage('Error with download - ' + ADownloadURL);
                  end;
               end;
            end;
         except
            //
         end;
      end;
   finally
      LDocument := nil;
   end;
end;
}

procedure SaveSearchFromXML(AFileName: string);
var
   LDocument: IXMLDocument;
   OrderNode: IXMLNode;
   SequenceNumber,
   OrderId,
   LFileLoc,
   NewDocPath,
   NewDocName,
   AParsedDocName,
   ADownloadURL,
   LFileID,
   FileHash,
   lsMatter,
   InfoTrackUser,
   InfoTrackPwd,
   UserID: String;
   xsDateTime: TXSDateTime;
   bDupeSearch: Boolean;
   liMatter,
   liSearch_ID: integer;
begin
   try
      LFileLoc := IncludeTrailingPathDelimiter(SystemString('INFOTRACK_STAGING_FLDR')) + AFileName;
      if FileExists(LFileLoc) then
      begin
         LDocument := TXMLDocument.Create(nil);
         try
            LDocument.LoadFromFile(LFileLoc);

            OrderNode := LDocument.ChildNodes.FindNode('Order');

            if (OrderNode <> nil) then
            begin
               SequenceNumber := OrderNode.ChildNodes['SequenceNumber'].Text;
               OrderId := OrderNode.ChildNodes['OrderId'].Text;
               FileHash := OrderNode.ChildNodes['FileHash'].Text;
               with dmAxiom.qryTmp do
               begin
                  Close;
                  SQL.Text := 'select search_id from searches where '+
//                              'sequencenumber = :sequencenumber and '+
                              'OrderId = :OrderId and isbillable = ''true'' and '+
                              'filehash = :filehash';
//                  ParamByName('SequenceNumber').AsString := SequenceNumber;
                  ParamByName('OrderId').AsString := OrderId;
                  ParamByName('FileHash').AsString := FileHash;
                  Open;
                  bDupeSearch := (not EOF);
                  liSearch_ID := FieldByName('SEARCH_ID').AsInteger;
               end;

{               if (bDupeSearch = False) then
               begin
                  with qryTmp do
                  begin
                     bUpdateSearch := False;
                     Close;
                     SQL.Text := 'select 1 from searches where  '+
                                 ' OrderId = :OrderId and isbillable = ''true'' ';
                     ParamByName('OrderId').AsString := OrderId;
                     Open;
                     bUpdateSearch := (not EOF);
                  end;
               end;   }

               if (bDupeSearch = False) {and (bUpdateSearch = False)} then
               begin
                  lsMatter := OrderNode.ChildNodes['ClientReference'].Text;

                  if (IsValidFileID(lsMatter) = True) then
                  begin
                     LFileID := lsMatter;
                     liMatter := TableInteger('MATTER','FILEID',lsMatter,'NMATTER');
                  end
                  else
                  begin
                     LFileID := TableString('MATTER', 'NMATTER', lsMatter, 'FILEID');
                     liMatter := StrToInt(lsMatter);
                  end;

                  NewDocPath := IncludeTrailingPathDelimiter(SystemString('DRAG_DEFAULT_DIRECTORY'));
                  NewDocName := NewDocPath + CleanFileName(OrderNode.ChildNodes['OrderId'].Text, '-');
                  AParsedDocName := ParseMacros(NewDocName, liMatter);
                  if (DirectoryExists(ExtractFilePath(AParsedDocName)) = False) then
                     ForceDirectories(ExtractFilePath(AParsedDocName));

                  ADownloadURL := OrderNode.ChildNodes['DownloadUrl'].Text;

//                  Entity := TableString('MATTER','FILEID',LFileID,'ENTITY');

                  with dmAxiom.qryTmp do
                  begin
                     Close;
                     SQL.Clear;
                     SQL.Add('SELECT code, INFOTRACK_USER, INFOTRACK_PASSWORD from EMPLOYEE where name = :name');
                     ParamByName('name').AsString := OrderNode.ChildNodes['OrderedBy'].Text;
                     Open;
                     UserID := Fields.Fields[0].AsString;
                     InfoTrackUser := Fields.Fields[1].AsString;
                     InfoTrackPwd  := Fields.Fields[2].AsString;
                     Close;
                  end;

                  with dmAxiom.qrySearches do
                  begin
                     Open;
                     Insert;

                     FieldByName('AvailableOnline').AsString := OrderNode.ChildNodes['AvailableOnline'].Text;
                     FieldByName('ClientReference').AsString := LFileID;  //StrToInt(OrderNode.ChildNodes['ClientReference'].Text);
                     FieldByName('ClientReference1').AsInteger := liMatter;
                     FieldByName('BillingTypeName').AsString := OrderNode.ChildNodes['BillingTypeName'].Text;


                      xsDateTime := TXSDateTime.Create;
                      xsDateTime.XSToNative(OrderNode.ChildNodes['DateOrdered'].Text);

                      FieldByName('DateOrdered').AsDateTime := xsDateTime.AsDateTime;

                      if (OrderNode.ChildNodes['DateCompleted'].Text <> '') then
                      begin
                         xsDateTime.XSToNative(OrderNode.ChildNodes['DateCompleted'].Text);
                         FieldByName('DateCompleted').AsDateTime := xsDateTime.AsDateTime;
                      end;


                     FieldByName('Description').AsString := OrderNode.ChildNodes['Description'].Text;
                     FieldByName('OrderId').AsString := OrderNode.ChildNodes['OrderId'].Text;
                     FieldByName('ParentOrderId').AsString := OrderNode.ChildNodes['ParentOrderId'].Text;
                     FieldByName('OrderedBy').AsString := OrderNode.ChildNodes['OrderedBy'].Text;
                     FieldByName('Reference').AsString := OrderNode.ChildNodes['Reference'].Text;
                     FieldByName('RetailerReference').AsString := OrderNode.ChildNodes['RetailerReference'].Text;
                     FieldByName('RetailerFee').AsString := OrderNode.ChildNodes['RetailerFee'].Text;
                     FieldByName('RetailerFeeGST').AsString := OrderNode.ChildNodes['RetailerFeeGST'].Text;
                     FieldByName('RetailerFeeTotal').AsString := OrderNode.ChildNodes['RetailerFeeTotal'].Text;
                     FieldByName('SupplierFee').AsString := OrderNode.ChildNodes['SupplierFee'].Text;
                     FieldByName('SupplierFeeGST').AsString := OrderNode.ChildNodes['SupplierFeeGST'].Text;
                     FieldByName('SupplierFeeTotal').AsString := OrderNode.ChildNodes['SupplierFeeTotal'].Text;
                     FieldByName('TotalFee').AsString := OrderNode.ChildNodes['TotalFee'].Text;
                     FieldByName('TotalFeeGST').AsString := OrderNode.ChildNodes['TotalFeeGST'].Text;
                     FieldByName('TotalFeeTotal').AsString := OrderNode.ChildNodes['TotalFeeTotal'].Text;
                     FieldByName('ServiceName').AsString := OrderNode.ChildNodes['ServiceName'].Text;
                     FieldByName('Status').AsString := OrderNode.ChildNodes['Status'].Text;
                     FieldByName('StatusMessage').AsString := OrderNode.ChildNodes['StatusMessage'].Text;
                     if (ADownloadURL <> '') then
                     begin
                        FieldByName('DownloadUrl').AsString := ExpandUNCFileName(AParsedDocName)+'.pdf';  //IndexPath(AParsedDocName, 'DOC_SHARE_PATH') +'.pdf';   //OrderNode.ChildNodes['DownloadUrl'].Text;
                        FieldByName('OnlineUrl').AsString := OrderNode.ChildNodes['OnlineUrl'].Text;
//                        WriteLog(IndexPath(AParsedDocName, 'DOC_SHARE_PATH') +'.pdf');
                     end;
                     FieldByName('IsBillable').AsString := OrderNode.ChildNodes['IsBillable'].Text;
                     FieldByName('FileHash').AsString := OrderNode.ChildNodes['FileHash'].Text;
                     FieldByName('Email').AsString := OrderNode.ChildNodes['Email'].Text;
                     FieldByName('ClientId').AsString := OrderNode.ChildNodes['ClientId'].Text;
                     FieldByName('SequenceNumber').AsString := OrderNode.ChildNodes['SequenceNumber'].Text;
                     Post;
                  end;

                  if (OrderNode.ChildNodes['IsBillable'].Text = 'true') then
                  begin
                     if (ADownloadURL <> '') then
                     begin
//                        WriteLog('Getting Login details');
                        if (InfoTrackUser = '') then
                           InfoTrackUser := SystemString('INFOTRACK_USER');
                        if (InfoTrackPwd = '') then
                           InfoTrackPwd := SystemString('INFOTRACK_PASSWORD');
//                        WriteLog('About to start download');
                        if (InfoTrackLogin(ADownloadURL, AParsedDocName, InfoTrackUser, InfoTrackPwd, liMatter ) = True) then
                        begin
                           if (ADownloadURL <> '') then
                           begin
//                              WriteLog('About to save document');
                              SaveDocument(now, LFileID, UserID, AParsedDocName+'.pdf','InfoTrack Search',
                                        'InfoTrack Search - ' + dmAxiom.qrySearches.FieldByName('Description').AsString);
                           end;
                           // create invoice
                           try
                              if not Assigned(dmAccountCreate) then
                                 Application.CreateForm(TdmAccountCreate, dmAccountCreate);
                              dmAccountCreate.SaveAccount(TableInteger('MATTER','FILEID', LFileID, 'NMATTER'), { qrySearches.FieldByName('ClientReference').AsInteger,}
                                                       SystemInteger('INFOTRACK_NCREDITOR'),
                                                       dmAxiom.qrySearches.FieldByName('OrderID').AsInteger,
                                                       dmAxiom.qrySearches.FieldByName('TotalFee').AsCurrency,
                                                       dmAxiom.qrySearches.FieldByName('TotalFeeGST').AsCurrency,
                                                       dmAxiom.qrySearches.FieldByName('Description').AsString,
                                                       dmAxiom.qrySearches.FieldByName('ClientReference').AsString);
                           finally
                              FreeAndNil(dmAccountCreate);
                           end;
                        end
                        else
//                           ShowMessage('Error with download - ' + ADownloadURL);
                           MessageDlg('download failed',mtInformation,[mbOk], 0, mbOk);
                     end;
                  end;
               end
               else
               if {(bUpdateSearch = True) and} (bDupeSearch = True) then
               begin
                  lsMatter := OrderNode.ChildNodes['ClientReference'].Text;

                  if IsValidFileID(lsMatter) then
                  begin
                     LFileID := lsMatter;
                     liMatter := TableInteger('MATTER','FILEID',lsMatter,'NMATTER');
                  end
                  else
                  begin
                     LFileID := TableString('MATTER', 'NMATTER', lsMatter, 'FILEID');
                     liMatter := StrToInt(lsMatter);
                  end;

                  NewDocPath := IncludeTrailingPathDelimiter(SystemString('DRAG_DEFAULT_DIRECTORY'));
                  NewDocName := NewDocPath + CleanFileName(OrderNode.ChildNodes['OrderId'].Text, '-');
                  AParsedDocName := ParseMacros(NewDocName, liMatter);
                  if (DirectoryExists(ExtractFilePath(AParsedDocName)) = False) then
                     ForceDirectories(ExtractFilePath(AParsedDocName));

                  ADownloadURL := OrderNode.ChildNodes['DownloadUrl'].Text;

//                  Entity := TableString('MATTER','FILEID',LFileID,'ENTITY');

                  with dmAxiom.qryTmp do
                  begin
                     Close;
                     SQL.Clear;
                     SQL.Add('SELECT code, INFOTRACK_USER, INFOTRACK_PASSWORD from EMPLOYEE where name = :name');
                     ParamByName('name').AsString := OrderNode.ChildNodes['OrderedBy'].Text;
                     Open;
                     UserID := Fields.Fields[0].AsString;
                     InfoTrackUser := Fields.Fields[1].AsString;
                     InfoTrackPwd  := Fields.Fields[2].AsString;
                     Close;
                  end;

                  with dmAxiom.qrySearches do
                  begin
//                     ParamByName('SEARCH_ID').AsInteger := liSearch_ID;
                     Open;
                     Edit;

                     FieldByName('AvailableOnline').AsString := OrderNode.ChildNodes['AvailableOnline'].Text;
                     FieldByName('ClientReference').AsString := LFileID;  //StrToInt(OrderNode.ChildNodes['ClientReference'].Text);
                     FieldByName('BillingTypeName').AsString := OrderNode.ChildNodes['BillingTypeName'].Text;


                      xsDateTime := TXSDateTime.Create;
                      xsDateTime.XSToNative(OrderNode.ChildNodes['DateOrdered'].Text);

                      FieldByName('DateOrdered').AsDateTime := xsDateTime.AsDateTime;

                      if (OrderNode.ChildNodes['DateCompleted'].Text <> '') then
                      begin
                         xsDateTime.XSToNative(OrderNode.ChildNodes['DateCompleted'].Text);
                         FieldByName('DateCompleted').AsDateTime := xsDateTime.AsDateTime;
                      end;


                     FieldByName('Description').AsString := OrderNode.ChildNodes['Description'].Text;
                     FieldByName('OrderId').AsString := OrderNode.ChildNodes['OrderId'].Text;
                     FieldByName('ParentOrderId').AsString := OrderNode.ChildNodes['ParentOrderId'].Text;
                     FieldByName('OrderedBy').AsString := OrderNode.ChildNodes['OrderedBy'].Text;
                     FieldByName('Reference').AsString := OrderNode.ChildNodes['Reference'].Text;
                     FieldByName('RetailerReference').AsString := OrderNode.ChildNodes['RetailerReference'].Text;
                     FieldByName('RetailerFee').AsString := OrderNode.ChildNodes['RetailerFee'].Text;
                     FieldByName('RetailerFeeGST').AsString := OrderNode.ChildNodes['RetailerFeeGST'].Text;
                     FieldByName('RetailerFeeTotal').AsString := OrderNode.ChildNodes['RetailerFeeTotal'].Text;
                     FieldByName('SupplierFee').AsString := OrderNode.ChildNodes['SupplierFee'].Text;
                     FieldByName('SupplierFeeGST').AsString := OrderNode.ChildNodes['SupplierFeeGST'].Text;
                     FieldByName('SupplierFeeTotal').AsString := OrderNode.ChildNodes['SupplierFeeTotal'].Text;
                     FieldByName('TotalFee').AsString := OrderNode.ChildNodes['TotalFee'].Text;
                     FieldByName('TotalFeeGST').AsString := OrderNode.ChildNodes['TotalFeeGST'].Text;
                     FieldByName('TotalFeeTotal').AsString := OrderNode.ChildNodes['TotalFeeTotal'].Text;
                     FieldByName('ServiceName').AsString := OrderNode.ChildNodes['ServiceName'].Text;
                     FieldByName('Status').AsString := OrderNode.ChildNodes['Status'].Text;
                     FieldByName('StatusMessage').AsString := OrderNode.ChildNodes['StatusMessage'].Text;
                     if (ADownloadURL <> '') then
                     begin
                        FieldByName('DownloadUrl').AsString := ExpandUNCFileName(AParsedDocName)+'.pdf';  //IndexPath(AParsedDocName, 'DOC_SHARE_PATH') +'.pdf';   //OrderNode.ChildNodes['DownloadUrl'].Text;
                        FieldByName('OnlineUrl').AsString := OrderNode.ChildNodes['OnlineUrl'].Text;
//                        WriteLog(IndexPath(AParsedDocName, 'DOC_SHARE_PATH') +'.pdf');
                     end;
                     FieldByName('IsBillable').AsString := OrderNode.ChildNodes['IsBillable'].Text;
                     FieldByName('FileHash').AsString := OrderNode.ChildNodes['FileHash'].Text;
                     FieldByName('Email').AsString := OrderNode.ChildNodes['Email'].Text;
                     FieldByName('ClientId').AsString := OrderNode.ChildNodes['ClientId'].Text;
                     FieldByName('SequenceNumber').AsString := OrderNode.ChildNodes['SequenceNumber'].Text;
                     Post;
                  end;

                  if (OrderNode.ChildNodes['IsBillable'].Text = 'true') then
                  begin
                     if (ADownloadURL <> '') then
                     begin
//                        WriteLog('Getting Login details');
                        if (InfoTrackUser = '') then
                           InfoTrackUser := SystemString('INFOTRACK_USER');
                        if (InfoTrackPwd = '') then
                           InfoTrackPwd := SystemString('INFOTRACK_PASSWORD');
//                        WriteLog('About to start download');
                        if (InfoTrackLogin(ADownloadURL, AParsedDocName, InfoTrackUser, InfoTrackPwd, liMatter ) = True) then
                        begin
                           if (ADownloadURL <> '') then
                           begin
//                              WriteLog('About to save document');
                              SaveDocument(now, LFileID, UserID, AParsedDocName+'.pdf','InfoTrack Search',
                                        'InfoTrack Search - ' + dmAxiom.qrySearches.FieldByName('Description').AsString);
                           end;
                           // create invoice
                           try
                              if not Assigned(dmAccountCreate) then
                                 Application.CreateForm(TdmAccountCreate, dmAccountCreate);
                              dmAccountCreate.SaveAccount(TableInteger('MATTER','FILEID', LFileID, 'NMATTER'), { qrySearches.FieldByName('ClientReference').AsInteger,}
                                                       SystemInteger('INFOTRACK_NCREDITOR'),
                                                       dmAxiom.qrySearches.FieldByName('OrderID').AsInteger,
                                                       dmAxiom.qrySearches.FieldByName('TotalFee').AsCurrency,
                                                       dmAxiom.qrySearches.FieldByName('TotalFeeGST').AsCurrency,
                                                       dmAxiom.qrySearches.FieldByName('Description').AsString,
                                                       dmAxiom.qrySearches.FieldByName('ClientReference').AsString);
                           finally
                              FreeAndNil(dmAccountCreate);
                           end;
                        end
                        else
//                           ShowMessage('Error with download - ' + ADownloadURL);
                           MessageDlg('download failed',mtInformation,[mbOk], 0, mbOk);
                     end;
                  end;
               end;
            end;
         except
            //
         end;
      end;
   finally
      LDocument := nil;
   end;
end;


function CleanFileName(AFileName: string; ANewChar: char = ' '): string;
var
   x: integer;
begin
   // clean up File Name
   for x := 1 to length(AFileName) do
   begin
      if CharInSet(AFileName[x], ['\','?','"','<','>','|','*',':',';','/']) then
         AFileName[x] := ANewChar;
   end;
   Result := AFileName;
end;

function InfoTrackLogin(const Url: string; TargetFileName,
                                              User, Pass: string; ANMatter: integer): boolean;
var
   IdHTTP: TIdHTTP;
   Response,
   FullTargetFileName,
   IndexedFullTargetFileName,
   tempFile,
   NewDocPath,
   NewDocName,
   AParsedDocName: string;
   FileStream: TFileStream;
   LHandler: TIdSSLIOHandlerSocketOpenSSL;
   FileHandle,
   numBytes: integer;
   URI: TIdURI;
   bFileError: boolean;
begin
   Result := False;
   bFileError := False;
   if (Url <> '') then
   begin
      try
         IdHTTP := TIdHTTP.Create(nil);
         LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
         LHandler.SSLOptions.Method := sslvTLSv1;
         try
            FullTargetFileName := TargetFileName + '.pdf';
//            tempFile := IncludeTrailingPathDelimiter('c:\temp\') + ExtractFileName(FullTargetFileName);
            IndexedFullTargetFileName := ExpandUNCFileName(FullTargetFileName); //    IndexPath(FullTargetFileName, 'DOC_SHARE_PATH');

            NewDocPath := IncludeTrailingPathDelimiter(SystemString('INFOTRACK_DEFAULT_DIRECTORY'));
            NewDocName := NewDocPath + CleanFileName(ExtractFileName(FullTargetFileName), '-');
            AParsedDocName := ParseMacros(NewDocName, ANMatter);

            If FileExists(AParsedDocName) = False then
            begin
               FileHandle := FileCreate(AParsedDocName);
               if FileHandle = -1 then
               begin
                  bFileError := True;
//                    MsgErr('Unable to create download file.');
               end;
               FileClose(FileHandle);
            end;

            if bFileError = False then
            begin
               IdHTTP.AllowCookies := True;
               IdHTTP.HandleRedirects := True;

               IdHTTP.Request.Username := User;
               IdHTTP.Request.Password := Pass;
               IdHTTP.Request.BasicAuthentication := False;
               IdHTTP.HTTPOptions := [hoInProcessAuth];

               IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
               IdHTTP.Request.Connection := 'keep-alive';
               // Download file
               try
                  IdHTTP.IOHandler:=LHandler;
                  URI := TIdURI.Create(Url);
                  URI.Username := User;
                  URI.Password := Pass;

                  FileStream := TFileStream.Create(AParsedDocName, fmOpenReadWrite);
                  try
                     IdHTTP.Get(URI.GetFullURI([ofAuthInfo]), FileStream);
                  finally
                     FileStream.Free;
                  end;
               finally
//                  MoveFile(PChar(tempFile), PChar(AParsedDocName));
                  LHandler.Free;
                  Result := True;
                  IdHTTP.Disconnect;
               end;
            end;
         except
            on E: Exception do
               ShowMessage(E.Message);
         end;
      finally
         IdHTTP.Free;
         URI.Free;
      end;
   end
   else
      Result := True;
end;

function SaveDocument(ACreated: TDateTime; AFileID, AAuthor, AFileName, AKeyword, ASearch: string;
                      AImageIndex: integer): integer;
var
   lDocID,
   lSearch: string;
begin
   try
      dmAxiom.qryMatterAttachment.Open;
      dmAxiom.qryMatterAttachment.Insert;
      lDocID := dmAxiom.DocID;
      dmAxiom.qryMatterAttachment.FieldByName('docid').AsString := lDocID;
      if AFileID <> '0' then
      begin
         dmAxiom.qryMatterAttachment.FieldByName('fileid').AsString := AFileid;
         dmAxiom.qryMatterAttachment.FieldByName('nmatter').AsInteger := TableInteger('MATTER','FILEID',AFileID,'nMatter');
      end;
      dmAxiom.qryMatterAttachment.FieldByName('auth1').AsString := AAuthor;
      dmAxiom.qryMatterAttachment.FieldByName('D_CREATE').AsDateTime := Now;

      dmAxiom.qryMatterAttachment.FieldByName('IMAGEINDEX').AsInteger := AImageIndex;

      dmAxiom.qryMatterAttachment.FieldByName('DESCR').AsString := ExtractFileName(AFileName);
      dmAxiom.qryMatterAttachment.FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(AFileName),2, Length(ExtractFileExt(AFileName)));
      lSearch := ASearch;
      if ASearch = '' then
         lSearch := Copy(ExtractFileName(AFileName),1, length(ExtractFileName(AFileName)) - 4);
      dmAxiom.qryMatterAttachment.FieldByName('doc_name').AsString := lSearch;
      dmAxiom.qryMatterAttachment.FieldByName('SEARCH').AsString := lSearch;
      dmAxiom.qryMatterAttachment.FieldByName('KEYWORDS').AsString := AKeyword;
      dmAxiom.qryMatterAttachment.FieldByName('PATH').AsString := AFileName;
		dmAxiom.qryMatterAttachment.FieldByName('DISPLAY_PATH').AsString := AFileName;
      dmAxiom.qryMatterAttachment.FieldByName('EXTERNAL_ACCESS').AsString := 'N';
      dmAxiom.qryMatterAttachment.FieldByName('PARENTDOCID').AsString := lDocID;

      try
         dmAxiom.qryMatterAttachment.ApplyUpdates;
      finally
         dmAxiom.qryMatterAttachment.CommitUpdates;
         SaveDocument := StrToInt(dmAxiom.DocID);
      end;
   except
      dmAxiom.qryMatterAttachment.CancelUpdates;
   end;
end;

function ShowTax(pdAmount: double; var dgstFree: double; sType, sFileID, sDefaultTax: string;
                 nNMatter, nNMemo: integer; dTaxDate: TDateTime): double;
var
//  dgstFree : Double;
  dAmount   : Double;
  dTax      : Double;
  IsBillItem: string;
begin
   dAmount := 0;
   dTax  := 0;
   if (dTaxDate = NullDate) then
      dTaxDate := now;
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
    // GST on DISB should be fixed
      if (sType = 'ALLOC') or (sType = 'UPCRED') then
      begin
         SQL.Add('select sum(amount) amount, sum(taxable_amount) taxable_amount,');
         SQL.Add(' sum(itemtax) itemtax, sum(tax) tax from (');
         SQL.Add('SELECT nalloc, SUM(0 - a.amount) AS amount, ');
         SQL.Add('SUM(case when (rate = 0) then 0 else 0 - amount ');
         SQL.Add('end  ) AS taxable_amount,');
         // 30 Jan 2019 dw added to handle fub tax codes
         //SQL.Add('SUM (NVL (0 - a.tax, 0)) AS itemtax,');
         SQL.Add('round(sum(case when (nvl(r.rate,0)-nvl(r.bill_rate,0) = 0) then (NVL (0 - a.tax, 0)) ');
         SQL.Add('else (ABS(NVL(a.amount, 0) * (NVL(r.rate, 0)) / 100)) end),2) AS itemtax, ');
         SQL.Add('round(SUM(case when (rate = 0) then 0 ');
         SQL.Add('else  ABS(NVL (a.amount, 0) * (NVL (r.rate, 0)) / 100) end),2) AS tax, a.taxcode ');

//        SQL.Add('SELECT SUM(0 - AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.BILL_RATE, 0), 0, NVL(a.tax, 0), NVL(a.amount, 0)),0,0,0-AMOUNT)) as TAXABLE_AMOUNT, ');
//        SQL.Add('SUM(NVL(0 - A.TAX, 0)) as ITEMTAX, ');
//        SQL.Add('SUM( DECODE(NVL(A.TAX,0),0,0-DECODE(NVL(R.RATE-R.BILL_RATE, 0),0, NVL(A.TAX, 0),(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100))),NVL(-A.TAX, 0))) as tax ');
      end
      else if sType = 'CHEQREQ' then
      begin
         SQL.Add('select sum(amount) amount, sum(taxable_amount) taxable_amount,');
         SQL.Add(' sum(itemtax) itemtax, sum(tax) tax from (');
         //SQL.Add('SELECT SUM (0 - amount) AS amount, ');
         //SQL.Add('SUM(case when (rate = 0) then 0 else 0 - amount ');
         //SQL.Add('end  ) AS taxable_amount,');
         //SQL.Add('SUM (NVL (0 - a.tax, 0)) AS itemtax,');
         //SQL.Add('trunc(SUM(case when (rate = 0) then 0 ');
         //SQL.Add('else  ABS(NVL (a.amount, 0) * (NVL (r.rate, 0)) / 100) end),2) * -1 AS tax ');
         // 19 Oct 2018 dw fix issue with cheque request and tax amount
         SQL.Add('SELECT ncheqreq, SUM(amount) AS amount, ');
         SQL.Add('SUM(case when (rate = 0) then 0 else amount ');
         SQL.Add('end) AS taxable_amount, ');
         // 30 Jan 2019 dw (not Implemeted) change to handle fub tax with item tax
         // SQL.Add('SUM(NVL(a.tax, 0)) AS itemtax,');
         SQL.Add('round(sum(case when (nvl(r.rate,0)-nvl(r.bill_rate,0) = 0) then (NVL (a.tax, 0)) ');
         SQL.Add('else (ABS(NVL(a.amount, 0) * (NVL(r.rate, 0)) / 100)) end),2) AS itemtax, ');
         SQL.Add('round(SUM(case when (r.rate = 0) then 0 ');
         SQL.Add('else  ABS(NVL(a.amount, 0) * (NVL(r.rate, 0)) / 100) end),2) AS tax ');

//         SQL.Add('SELECT SUM(AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.BILL_RATE, 0), 0, NVL(a.tax, 0), NVL(a.amount, 0)),0,0,AMOUNT)) as TAXABLE_AMOUNT, ');
//         SQL.Add('SUM(NVL(A.TAX,0)) as ITEMTAX, ');
//         SQL.Add('SUM(DECODE(NVL(A.TAX,0),0, DECODE(NVL(R.RATE-R.BILL_RATE, 0),0, NVL(A.TAX, 0),(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100))), NVL(a.tax, 0))) as tax ');
      end
      else if sType = 'FEE' then
      begin
         dmAxiom.qryGetBillTemplate.Close;
         dmAxiom.qryGetBillTemplate.ParamByName('nmatter').AsInteger := nNMatter;
         dmAxiom.qryGetBillTemplate.Open;
         IsBillItem := 'N';
         if (dmAxiom.qryGetBillTemplate.FieldByName('billtemplate').IsNull) then
         begin
            with dmAxiom.qryTmp2 do
            begin
               Close;
//               SQL.Text := 'SELECT nvl(BILLTEMPLATE,( select code from billtemplate where defaultbill = ''Y'' )) BILLTEMPLATE,' +
//                           ' FROM NMEMO WHERE NMEMO = :nNMemo';

               SQL.Text := 'SELECT code, NVL (item_bill, ''N'') as sitembill '+
                           'FROM billtemplate '+
                           'WHERE defaultbill = ''Y'' ';
               Open;
               IsBillItem := FieldByName('sitembill').AsString;
               close;
            end;
         end
         else
         begin
            with dmAxiom.qryTmp2 do
            begin
               Close;
               SQL.Text := 'SELECT code, NVL (item_bill, ''N'') as sitembill '+
                           'FROM billtemplate '+
                           'WHERE code = ' + QuotedStr(dmAxiom.qryGetBillTemplate.FieldByName('CODE').AsString);
               Open;
               IsBillItem := FieldByName('sitembill').AsString;
               close;
            end;
         end;

         IF (IsBillItem = 'N') then
         begin
            SQL.Add('SELECT SUM(AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.BILL_RATE, 0), 0,');
            SQL.Add(' NVL(a.tax, 0), NVL(a.amount, 0)),0,0,AMOUNT)) as TAXABLE_AMOUNT, ');
            SQL.Add('SUM(NVL(A.TAX,0)) AS ITEMTAX ,');
            SQL.Add('CASE WHEN :DEFAULTTAX = ''GST'' THEN SUM(NVL(A.AMOUNT, 0))*(ABS(NVL(R.RATE, 0))/100) ELSE 0 END AS TAX ');
//            SQL.Add('SUM( DECODE(NVL(A.TAX,0),0,(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100)), NVL(a.tax, 0)) ) AS TAX ');
         end
         else
         begin
            SQL.Add('SELECT SUM (task_amount) as amount, sum(decode(decode(NVL(R.RATE-R.BILL_RATE, 0), 0,');
            SQL.Add(' NVL(a.tax, 0), NVL(a.task_amount, 0)),0,0,task_AMOUNT)) as TAXABLE_AMOUNT, ');
            SQL.Add('SUM(NVL(A.TAX,0)) AS TAX ,');
            SQL.Add('CASE WHEN :DEFAULTTAX = ''GST'' THEN SUM(NVL(A.TASK_AMOUNT, 0))*(ABS(NVL(R.RATE, 0))/100) ELSE 0 END AS ITEMTAX ');
//            SQL.Add('SUM( DECODE(NVL(A.TAX,0),0,(NVL(A.task_AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100)), NVL(a.tax, 0)) ) AS TAX ');
         end;
         dmAxiom.qryGetBillTemplate.Close;
      end
      else
      begin
         SQL.Add('SELECT SUM(AMOUNT) AS AMOUNT,sum(decode(decode(NVL(R.RATE-R.BILL_RATE, 0), 0,');
         SQL.Add(' NVL(a.tax, 0), NVL(a.amount, 0)),0,0,AMOUNT)) as TAXABLE_AMOUNT, ');
         SQL.Add('SUM(NVL(A.TAX,0)) AS ITEMTAX ,');
         SQL.Add('round(SUM( DECODE(NVL(A.TAX,0),0,(NVL(A.AMOUNT, 0)*(ABS(NVL(R.RATE, 0))/100)), NVL(a.tax, 0)) ),2) AS TAX ');
      end;

      if sType = 'UPCRED' then
      begin
         SQL.Add('FROM ALLOC A,TAXRATE R ');
      end
    // AES 15/10/2009  added this to cater for zero billed sundry transactions
//    else if sType = 'SUNDRY' then
//      SQL.Add('FROM ' + sType + ' A,TAXRATE R, SUNDRYTYPE S ')
      else
         SQL.Add('FROM ' + sType + ' A,TAXRATE R ');

      if sType = 'CHEQREQ' then
      begin
         SQL.Add('WHERE FILEID = ' + QuotedStr(sFILEID));
         SQL.Add(' AND TRUNC(REQDATE) >= r.commence and TRUNC(REQDATE) <= nvl(r.end_period, sysdate + 1000) ');
      end
      else
      begin
         SQL.Add('WHERE NMATTER = ' + IntToStr(nNMATTER));
         SQL.Add(' AND TRUNC(A.CREATED) >= r.commence and TRUNC(A.CREATED) <= nvl(r.end_period, sysdate + 1000)');
      end;

      SQL.Add('  AND NMEMO = ' + IntToStr(nNMEMO));

      SQL.Add(' AND A.TAXCODE = R.TAXCODE (+) ');

      if sType = 'ALLOC' then
      begin
         SQL.Add('  AND NINVOICE IS NULL AND (nvl(NRECEIPT,0) = 0 OR (NVL(NRECEIPT, 0) > 0 AND TYPE = ''DR''))');
         SQL.Add(' group by nalloc, a.taxcode) ');
      end;

      if sType = 'UPCRED' then
      begin
         SQL.Add('  AND NINVOICE IS NOT NULL');
         SQL.Add(' group by nalloc, a.taxcode) ');
      end;

      if sType = 'CHEQREQ' then
      begin
         SQL.Add(' group by ncheqreq, a.taxcode) ');
      end;

      // AES 06/09/2017 new parameter to calculate gst
      if sType = 'FEE' then
      begin
         SQL.Add(' group by r.rate ');
      end;


    // AES 15/10/2009  added this to cater for zero billed sundry transactions
{    if sType = 'SUNDRY' then
    begin
      SQL.Add('AND A.TYPE = S.code ');
      SQL.Add('AND NVL(S.zero_billed,''N'') = ''N'' ');
    end; }

      if dmAxiom.runningide and (sType = 'ALLOC') then {sType = 'CHEQREQ' then }
         dmAxiom.qryTmp.SQL.SaveToFile('C:\tmp\qryBills.sql');

      // AES 06/09/2017 new parameter to calculate gst
      if sType = 'FEE' then
         ParamByName('DEFAULTTAX').AsString := sDefaultTax;

      Open;
   {
      The withholding tax has two tax amounts, that is, -48.5% and 10%.
      Both taxes must be taken into account when posting a bill.

      BJ  07/11/2002
   }
      if (HasWithholdingTaxForSelectedItem) then
      begin
         dAmount := FieldByName('AMOUNT').AsCurrency;
         dTax := TaxCalc(dAmount, 'BILL', 'WHOLD', Now);
         dAmount := 0.00;

      end
      else
      begin
         dAmount := FieldByName('TAXABLE_AMOUNT').AsCurrency;
      // AES 7/04/2004 changed to use actual tax amount and not re-calculated amount.
      // changed to use system flag
      // AES 13/06/2018 removed abs call for gst
      // dbw 28 Nov 2018 turned off at instruction from IM
      // dbw 25 Jan 2019 changed to only apply GST application flag to fees
         if ((dmAxiom.GSTUseBillTotal = 'Y') and (sType = 'FEE')) then
         begin
            dTax := TaxCalc(dAmount, 'BILL', sDefaultTax, dTaxDate);
         end
         else
            dTax := FieldByName('ITEMTAX').AsCurrency;
      end;

      dgstFree :=  FieldByName('AMOUNT').AsCurrency -  FieldByName('TAXABLE_AMOUNT').AsCurrency;

      if ((dgstFree <> 0) and (dAmount = 0)) then
      begin
         //
      end
      else
      begin
         with dmAxiom.qryTmp2 do
         begin
            Close;
            SQL.Text := 'select dispatched from nmemo where nmemo = :nmemo';
            ParamByName('NMEMO').AsInteger := nNMemo;
            Open;
         end;

         if ((abs(pdAmount) <> abs(FieldByName('AMOUNT').AsFloat)) and
            dmAxiom.qryTmp2.FieldByName('DISPATCHED').IsNull ) then
         begin
           // They have updated the amount - we need to adjust the tax
           // added this test when fees are 0 and there are GST free fees.
           // 24-Apr-2009   AES
             if pdAmount = 0 then
                dAmount := 0
             else {if FieldByName('AMOUNT').AsCurrency <> 0 then}     // by me 22/10/2009
                dAmount := pdAmount - (FieldByName('AMOUNT').AsCurrency - FieldByName('TAXABLE_AMOUNT').AsCurrency);

{            if (neType.AsCurrency < dAmount) then
                dAmount := neType.AsCurrency
             else
             if (dAmount > neType.AsCurrency) then
               dAmount := neType.AsCurrency - dAmount;   //(FieldByName('AMOUNT').AsCurrency - FieldByName('TAXABLE_AMOUNT').AsCurrency);
}
             if (pdAmount <> 0) and (dAmount > 0) then
             begin
                 if ((dmAxiom.GSTUseBillTotal = 'Y') and (sType = 'FEE')) then
                 begin
                    dTax := TaxCalc(dAmount, 'BILL', sDefaultTax, dTaxDate);
                 end
                 else
                    dTax := FieldByName('ITEMTAX').AsCurrency;

              if sType = 'FEE' then
              begin
                 if MatterString(sFILEID, 'FEE_TAX_BASIS') <> '' then
                 begin
                    dTax := TaxCalc(dAmount, 'BILL', MatterString(sFILEID, 'FEE_TAX_BASIS'), dTaxDate);
                    if dTax = 0 then
                       dGstFree := dAmount;
                 end;
              end;
//              dAmount := pdAmount;
           end;
//           else
//             dTax := 0;

           if dAmount > 0 then
           begin
              if dmAxiom.GSTUseBillTotal = 'Y' then
              begin
                  dTax := TaxCalc(dAmount, 'BILL', sDefaultTax, dTaxDate);
              end
              else
                  dTax := FieldByName('ITEMTAX').AsCurrency;
               //dTax := FieldByName('ITEMTAX').AsCurrency//TaxCalc(dAmount, 'BILL', sDefaultTax, dTaxDate)
           end
           else
        // 2.7.2009  AES added  this to set tax to 0 if total is 0
               if dAmount = 0 then
                  dTax := 0;
           (*
             Modified 25.10.2002 GG
             Removed compiler hint

             dDummy := {FieldByName('TAX').AsCurrency} + TaxCalc(dAmount, '', DefaultTax, TaxDate);
           *)
         end;
      end;
   end;
   Result := dTax;
end;

function CreateInvoice(iMatter, iClient: integer; dCreated: tDateTime; var sDiscount: string;
                       bFromBulkBills: boolean; AForm: TComponent): integer;
var
  iNMemo : integer;
  nlFees,
  nlFeesTax: Currency;
  iClientDisc: double;
  sbilltemplate,
  IsBillItem,
  lDraftBillNo,
  lBPayReference,
  sMatterPartner: string;
begin

//   FForm := AForm;
   dmAxiom.qryGetBillTemplate.Close;
   dmAxiom.qryGetBillTemplate.ParamByName('nmatter').AsInteger := iMatter;
   dmAxiom.qryGetBillTemplate.Open;

   IsBillItem := 'N';
   if (dmAxiom.qryGetBillTemplate.FieldByName('billtemplate').IsNull) then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'SELECT code, NVL (item_bill, ''N'') as sitembill '+
                     'FROM billtemplate '+
                     'WHERE defaultbill = ''Y'' ';
         Open;
         IsBillItem := FieldByName('sitembill').AsString;
         sbilltemplate := FieldByName('code').AsString;
         close;
      end;
   end;

{   if (qryGetBillTemplate.FieldByName('BILLTEMPLATE').AsString <> '') then
   begin
      IsBillItem := qryGetBillTemplate.FieldByName('ITEM_BILL').AsString;
   end;  }

   with dmAxiom.procBillCreate do
   begin
      ParamByName('P_Entity').AsString := dmAxiom.Entity;
      ParamByName('P_NMatter').AsInteger := iMatter;
      ParamByName('P_ADDFEES').AsInteger := 1;
      ParamByName('P_ADDFEES').AsInteger := 1;
      ParamByName('P_ADDDISB').AsInteger := 1;
      ParamByName('P_ADDANTD').AsInteger := 1;
      ParamByName('P_ADDSUND').AsInteger := 1;
      ParamByName('P_ADDUPCRED').AsInteger := 1;
      ParamByName('P_ADDFEESUNDRIES').AsInteger := 1;
      ParamByName('P_BILLTEMPLATE').Clear;
      if dCreated = null then
          ParamByName('P_CREATED').AsDateTime := Now
      else
          ParamByName('P_CREATED').AsDateTime := dCreated;
      if SystemString('DFLT_DISB_SUNDRY') <> '' then
         ParamByName('P_ADDDISBSUNDRIES').AsInteger := 1;
      if (IsBillItem = 'Y') then
         ParamByName('P_BILLTEMPLATE').AsString := sbilltemplate;
      ParamByName('P_CREATEDBY').AsString := dmAxiom.UserId;

      Execute;
      iNMemo := ParambyName('RESULT').AsInteger;
      Close;

//      DisplayInvoice(iNMemo, FForm);

      if bFromBulkBills = True then
      begin
         if PreassignBill() then
         begin
            with dmAxiom.qryTmp do
            begin
               lDraftBillNo := NextRefno();
               lBPayReference := CreateBPayReference(lDraftBillNo);
               Close;
               SQL.Text := 'update nmemo set DRAFT_BILL_NO = :DRAFT_BILL_NO, BPAY_REFERENCE = :BPAY_REFERENCE where nmemo = :nmemo';
               ParamByName('nmemo').AsInteger := iNMemo;
               ParamByName('DRAFT_BILL_NO').AsString := lDraftBillNo;
               if SystemInteger('BPAY_CODE_DEFAULT') = 0 then
                  ParamByName('BPAY_REFERENCE').AsString := lBPayReference;
               ExecSQL;
            end;
         end;
      end;


      iClientDisc := TableFloat('CLIENT','NCLIENT', iClient,'DISCOUNT');
      if (iClientDisc > 0) then
      begin
         dmAxiom.uniInsight.StartTransaction;
         try
            with dmAxiom.qryTmp do
            begin
               Close;
               SQL.Text := 'select fees, feestax from nmemo where nmemo = :nmemo';
               ParamByName('nmemo').AsInteger := iNMemo;
               Open;
               nlFees := FieldByName('Fees').AsCurrency;
               nlFeesTax := FieldByName('Feestax').AsCurrency;
               Close;
               if (nlFees > 0) then
               begin
                  SQL.Text := 'update nmemo set discount = :discount where nmemo = :nmemo';
                  ParamByName('discount').AsFloat := ((nlFees + nlFeesTax) * (iClientDisc)/100)*-1;
                  ParamByName('nmemo').AsInteger := iNMemo;
                  ExecSQL;
               end;
            end;
         finally
            dmAxiom.uniInsight.Commit;

            sDiscount := FloatToStr(((nlFees + nlFeesTax) * (SystemFloat('BILL_DISCOUNT'))/100)*-1);
         end;
      end
      else if SystemFloat('BILL_DISCOUNT') > 0 then
      begin
         dmAxiom.uniInsight.StartTransaction;
         try
            with dmAxiom.qryTmp do
            begin
               Close;
               SQL.Text := 'select fees, feestax from nmemo where nmemo = :nmemo';
               ParamByName('nmemo').AsInteger := iNMemo;
               Open;
               nlFees := FieldByName('Fees').AsCurrency;
               nlFeesTax := FieldByName('Feestax').AsCurrency;
               Close;
               if (nlFees > 0) then
               begin
                  SQL.Text := 'update nmemo set discount = :discount where nmemo = :nmemo';
                  ParamByName('discount').AsFloat := ((nlFees + nlFeesTax) * (SystemFloat('BILL_DISCOUNT'))/100)*-1;
                  ParamByName('nmemo').AsInteger := iNMemo;
                  ExecSQL;
               end;
            end;
         finally
            dmAxiom.uniInsight.Commit;

            sDiscount := FloatToStr(((nlFees + nlFeesTax) * (SystemFloat('BILL_DISCOUNT'))/100)*-1);
         end;
      end;
      //pb-DisplayInvoice(ParamByName('P_NMemo').AsInteger);
      Result := iNMemo;
   end;
end;

function HasWithholdingTaxForSelectedItem : Boolean;
begin
// AES  15/03/2005
// what is this code meant to be doing.
//  if (TListItems(lvItems.Items).Count = 1) then
//    Result := (lvItems.Selected.SubItems.Strings[3] = 'WHOLD')
//  else
    Result := FALSE;
end;

function IsValidFileID(sFileId: string): boolean;
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
         loQry.SQL.Add('SELECT ''x'' FROM MATTER WHERE FILEID = :sFileId ');
         loQry.Params[0].AsString := sFileId;

         loQry.Open;

         Result := not loQry.IsEmpty;
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

function GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
end;

function GetCurrencySymbol: string;
begin
  formatSettings := TFormatSettings.Create;
  Result := formatSettings.CurrencyString;
end;

function GetThumb(AFilePath: string; var hBmp: HBITMAP): HRESULT;
var
   fileShellItemImage: IShellItemImageFactory;
   s: TSize;
begin
   Result := CoInitializeEx(nil, COINIT_APARTMENTTHREADED or
                            COINIT_DISABLE_OLE1DDE);
   if Succeeded(Result) then
   begin
      Result := SHCreateItemFromParsingName(PChar(AFilePath), nil, IShellItemImageFactory, fileShellItemImage);
      if Succeeded(Result) then
      begin
         s.cx := 120;
         s.cy := 120;
         Result := fileShellItemImage.GetImage(s, SIIGBF_THUMBNAILONLY, hBmp);
      end;
      CoUninitialize;
   end;
end;

procedure ListBox2File(sFile: String; oList: TListBox);
var
   fFile: Text;
   x: Integer;
begin
   AssignFile(fFile,sFile);
   if FileExists(sFile) then
      Reset(fFile)
   else
      ReWrite(fFile);

   x:=0;
   While (x <> oList.Items.Count) do
   begin
      writeln(fFile,oList.Items[x]);
      inc(x);
   end;
   CloseFile(fFile);
end;

procedure ComboBoxObjectPopulate(Target: TcxDBComboBox; Table, DisplayField, LookupField: string); overload;
var
  qryList: TUniQuery;
begin
  qryList := TUniQuery.Create(nil);
  with qryList do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT ' + DisplayField + ', ' + LookupField + ' FROM ' + Table + ' ORDER BY ' + DisplayField;
    Open;

    Target.Properties.Items.Clear;
    while not EOF do
    begin
      Target.Properties.Items.AddObject(FieldByName(DisplayField).AsString, TValueObject.Create(FieldByName(LookupField).AsString));
      Next;
    end;
    Close;
  end;
  qryList.Free;
end;

procedure ComboBoxObjectPopulate(Target: TcxDBComboBox; Table, DisplayField, LookupField, Where: string); overload;
var
  qryList: TUniQuery;
begin
  qryList := TUniQuery.Create(nil);

  with qryList do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT ' + DisplayField + ', ' + LookupField + ' FROM ' + Table + ' WHERE ' + Where + ' ORDER BY ' + DisplayField;
    Open;

    Target.Properties.Items.Clear;
    while not EOF do
    begin
      Target.Properties.Items.AddObject(FieldByName(DisplayField).AsString, TValueObject.Create(FieldByName(LookupField).AsString));
      Next;
    end;
    Close;
  end;
  qryList.Free;
end;

function Test_VerLanguageName: string;
var
  wLang : LangID;
  szLang: Array [0..254] of Char;
begin
  wLang := GetSystemDefaultLCID;
  VerLanguageName(wLang, szLang, SizeOf(szLang));
  Result :=  string(szLang);
end;

function Insight_GetLocaleInfo: string;
var
   pLocale : PChar;
   iSize : integer;
   sRes: string;
begin
   iSize := GetLocaleInfo (LOCALE_USER_DEFAULT, LOCALE_SCOUNTRY, nil, 0);
   GetMem(pLocale, iSize);
   try
      GetLocaleInfo (LOCALE_USER_DEFAULT, LOCALE_SCOUNTRY, pLocale, iSize);
      sRes := StrPas(pLocale);
   finally
      FreeMem(pLocale);
   end;
   Result := sRes;
end;

function validateNRIC(str: string): string;
const
	   st: array[0..10] of string = ('J','Z','I','H','G','F','E','D','C','B','A');
	   fg: array[0..10] of string = ('X','W','U','T','R','Q','P','N','M','L','K');

var
   i,
   weight,
   temp,
   offset: integer;
   icArray:  array of string;
   lstr,
   theAlpha: string;
begin
	if (length(str) = 9) then
	begin
      SetLength(icArray, 7);
   	lstr := UpperCase(str);

	   for i := 2 to 8 do
        icArray[i-2] := lstr[i];

	   icArray[0] := IntToStr(strtoint(icArray[0]) * 2);
	   icArray[1] := IntToStr(strtoint(icArray[1]) * 7);
	   icArray[2] := IntToStr(strtoint(icArray[2]) * 6);
	   icArray[3] := IntToStr(strtoint(icArray[3]) * 5);
	   icArray[4] := IntToStr(strtoint(icArray[4]) * 4);
	   icArray[5] := IntToStr(strtoint(icArray[5]) * 3);
	   icArray[6] := IntToStr(strtoint(icArray[6]) * 2);

	   weight := 0;
	   for i := 0 to 6 do
         weight := weight + strtoint(icArray[i]);

	   if ((lstr[1] = 'T') or (lstr[1] = 'G')) then
         offset := 4
      else
         offset := 0;

	   temp := (offset + weight) mod 11;

	   if ((lstr[1] = 'S') or (lstr[1] = 'T')) then
         theAlpha := st[temp]
	   else if ((lstr[1] = 'F') or (lstr[1] = 'G')) then
         theAlpha := fg[temp];

	   result := theAlpha;
   end;
end;

function IsObjectActive(ClassName: string): Boolean;
var
   ClassID: TCLSID;
   Unknown: IUnknown;
begin
   try
      ClassID := ProgIDToClassID(ClassName);
      Result  := GetActiveObject(ClassID, nil, Unknown) = S_OK;
   except
      Result := False;
   end;
end;

function TFileSystemBindData.GetFindData(var w32fd: TWin32FindData): HRESULT;
begin
  w32fd:= fw32fd;
  Result := S_OK;
end;

function TFileSystemBindData.SetFindData(var w32fd: TWin32FindData): HRESULT;
begin
  fw32fd := w32fd;
  Result := S_OK;
end;

function CopyFileIFileOperationForceDirectories(const srcFile, destFile : string; DeleteOrigDoc: boolean) : boolean;
//works on Windows >= Vista and 2008 server
var
  r : HRESULT;
  fileOp: IFileOperation;
  siSrcFile: IShellItem;
  siDestFolder: IShellItem;
  destFileFolder, destFileName : string;
  pbc : IBindCtx;
  w32fd : TWin32FindData;
  ifs : TFileSystemBindData;
begin
   result := false;

   try
      destFileFolder := ExtractFileDir(destFile);
      destFileName := ExtractFileName(destFile);

      if FileExists(destFile) then
         Result := False
      else
      begin
         //init com
         r := CoInitializeEx(nil, COINIT_APARTMENTTHREADED or COINIT_DISABLE_OLE1DDE);
         if Succeeded(r) then
         begin
            //create IFileOperation interface
            r := CoCreateInstance(CLSID_FileOperation, nil, CLSCTX_ALL, IFileOperation, fileOp);
            if Succeeded(r) then
            begin
               //set operations flags
               r := fileOp.SetOperationFlags(FOF_NOCONFIRMATION OR FOFX_NOMINIMIZEBOX);
               if Succeeded(r) then
               begin
                  //get source shell item
                  r := SHCreateItemFromParsingName(PChar(srcFile), nil, IShellItem, siSrcFile);
                  if Succeeded(r) then
                  begin
                     //create binding context to pretend there is a folder there
                     if NOT DirectoryExists(destFileFolder) then
                     begin
                        ZeroMemory(@w32fd, Sizeof(TWin32FindData));
                        w32fd.dwFileAttributes := FILE_ATTRIBUTE_DIRECTORY;
                        ifs := TFileSystemBindData.Create;
                        ifs.SetFindData(w32fd);
                        CreateBindCtx(0, pbc);
                        pbc.RegisterObjectParam(STR_FILE_SYS_BIND_DATA, ifs);
                     end
                     else
                        pbc := nil;

                     //get destination folder shell item
                     r := SHCreateItemFromParsingName(PChar(destFileFolder), pbc, IShellItem, siDestFolder);

                     if DeleteOrigDoc = False then
                     //add copy operation
                        if Succeeded(r) then r := fileOp.CopyItem(siSrcFile, siDestFolder, PChar(destFileName), nil)
                     else
                     //add move operation
                        if Succeeded(r) then r := fileop.MoveItem(siSrcFile, siDestFolder, PChar(destFileName), nil)
                  end;

                  //execute
                  if Succeeded(r) then r := fileOp.PerformOperations;

                  result := Succeeded(r);

                  OleCheck(r);
               end;
            end;

            CoUninitialize;
         end;
      end;
   except
      //
   end;
end;

function TaskRevenueRate(sFileID, sEmpCode: string; Fee_Date: TDateTime; NScalecost, NTimeEstimate, NMaxTimeEstimate: integer;
                  var aMinRate, aMaxRate, aEstHourlyCost, aEmpNetCostHour, aEmpCostPerHour: double): double;
var
  cMinRate,
  cMaxRate  : double;
  iTimeEstimate,
  iMaxTimeEstimate,
  iSystemMins: integer;
begin
   iSystemMins := SystemInteger('TIME_UNITS');
   iTimeEstimate := NTimeEstimate;
   iMaxTimeEstimate := NMaxTimeEstimate;
   with dmAxiom.qryTmp2 do
   begin
      Close;
      SQL.Text := 'SELECT EMPLOYEE.RATE, COST_PER_HOUR, NET_COST_HOUR FROM EMPLOYEE WHERE '+
                           ' employee.code = :empcode';
      ParamByName('empcode').AsString := sEmpCode;
      Open;
      cMinRate := FieldByName('RATE').AsFloat * (iTimeEstimate * iSystemMins)/60;
      cMaxRate := FieldByName('RATE').AsFloat * (iMaxTimeEstimate * iSystemMins)/60;
      aEmpCostPerHour := FieldByName('COST_PER_HOUR').AsFloat * (iTimeEstimate * iSystemMins)/60;

      aMinRate := cMinRate;
      aMaxRate := cMaxRate;
   end;

 {  with dmAxiom.qryTmp2 do
   begin
      Close;
      SQL.Text := 'SELECT EMPLOYEE_TYPE, TIME_ESTIMATE, MAX_TIME_ESTIMATE, EST_HOURLY_COST, '+
                  'BUDGET_HIGH, BUDGET_LOW '+
                  'FROM SCALECOST WHERE NSCALECOST = :NScalecost';
      Params[0].AsInteger := NScalecost;
      Open;
      if (IsEmpty = False) then
      begin
         iTimeEstimate := FieldByName('TIME_ESTIMATE').AsInteger;
         iMaxTimeEstimate := FieldByName('MAX_TIME_ESTIMATE').AsInteger;
         aEstHourlyCost := FieldByName('EST_HOURLY_COST').AsFloat;
         cMinBudget := FieldByName('BUDGET_LOW').AsFloat;
         cMaxBudget := FieldByName('BUDGET_HIGH').AsFloat;
         if (FieldByName('EMPLOYEE_TYPE').AsString <> '') then
         begin
            sEmpType := FieldByName('EMPLOYEE_TYPE').AsString;
            Close;
            if (sEmpCode <> '') then
            begin
               SQL.Text := 'SELECT EMPLOYEE.RATE, COST_PER_HOUR, NET_COST_HOUR FROM EMPLOYEE WHERE '+
                           ' employee.code = :empcode';
               ParamByName('empcode').AsString := sEmpCode;
            end
            else
            begin
               if sEmpType = 'A' then
                  SQL.Text := 'SELECT EMPLOYEE.RATE, COST_PER_HOUR, NET_COST_HOUR FROM EMPLOYEE, MATTER  WHERE '+
                           ' fileid = :nmatter and matter.author = employee.code';
               if sEmpType = 'P' then
                  SQL.Text := 'SELECT EMPLOYEE.RATE, COST_PER_HOUR, NET_COST_HOUR FROM EMPLOYEE, MATTER  WHERE '+
                           ' fileid = :nmatter and matter.partner = employee.code';
               if sEmpType = 'O' then
                  SQL.Text := 'SELECT EMPLOYEE.RATE, COST_PER_HOUR, NET_COST_HOUR FROM EMPLOYEE, MATTER  WHERE '+
                           ' fileid = :nmatter and matter.operator = employee.code';
               if sEmpType = 'C' then
                  SQL.Text := 'SELECT EMPLOYEE.RATE, COST_PER_HOUR, NET_COST_HOUR FROM EMPLOYEE, MATTER  WHERE '+
                           ' fileid = :nmatter and matter.controller = employee.code';
               ParamByName('nmatter').AsString := sFileID;
            end;
            Open;
            cMinRate := FieldByName('RATE').AsFloat * (iTimeEstimate * iSystemMins)/60;
            cMaxRate := FieldByName('RATE').AsFloat * (iMaxTimeEstimate * iSystemMins)/60;
            aEmpCostPerHour := FieldByName('COST_PER_HOUR').AsFloat * (iTimeEstimate * iSystemMins)/60;
            aEmpNetCostHour := FieldByName('NET_COST_HOUR').AsFloat * (iTimeEstimate * iSystemMins)/60;

            aMinRate := cMinRate;
            aMaxRate := cMaxRate;
            bContinue := False;
         end
         else
         begin
            if (sEmpCode <> '') then
            begin
               SQL.Text := 'SELECT EMPLOYEE.RATE, COST_PER_HOUR, NET_COST_HOUR FROM EMPLOYEE WHERE '+
                           ' employee.code = :empcode';
               ParamByName('empcode').AsString := sEmpCode;
               Open;
               cMinRate := FieldByName('RATE').AsFloat * (iTimeEstimate * iSystemMins)/60;
               cMaxRate := FieldByName('RATE').AsFloat * (iMaxTimeEstimate * iSystemMins)/60;
               aEmpCostPerHour := FieldByName('COST_PER_HOUR').AsFloat * (iTimeEstimate * iSystemMins)/60;
               aEmpNetCostHour := FieldByName('NET_COST_HOUR').AsFloat * (iTimeEstimate * iSystemMins)/60;

               if cMinRate = 0 then
                  AMinRate := cMinBudget
               else
                  aMinRate := cMinRate;

               if cMaxRate = 0 then
                  AMinRate := cMaxBudget
               else
                  aMaxRate := cMaxRate;
            end
            else
            begin
               AMinRate := FieldByName('BUDGET_LOW').AsFloat * (iTimeEstimate * iSystemMins)/60;
               AMaxRate := FieldByName('BUDGET_HIGH').AsFloat * (iMaxTimeEstimate * iSystemMins)/60;
            end;
         end;
      end;

    // Pass back the result
//    TaskRate := cRate;
    Close;
   end;}
end;

function zipFile(ArchiveName: string; Filename: TStringlist): boolean;
var
   Zip:TZipFile;
   i: integer;
begin
   Zip:=TZipFile.Create;
   try
      zip.Open(ArchiveName,zmWrite);
      for i := 0 to FileName.Count - 1 do
         zip.Add(Filename.Strings[i]);
      zip.Close;
      Result:=true;
   except
      Result:=false;
   end;
   FreeAndNil(zip);
end;

// added by AES 07/06/2018
// returns TRUE if no entry found otherwise returns value found.
function SettingLoadBooleanTrueWhenEmpty(sEmp: string; sOwner: string; sItem: string): boolean;
begin
   try
      dmAxiom.qrySettingLoad.Close;
      dmAxiom.qrySettingLoad.ParamByName('Emp').AsString := sEmp;
      dmAxiom.qrySettingLoad.ParamByName('Owner').AsString := sOwner;
      dmAxiom.qrySettingLoad.ParamByName('Item').AsString := sItem;
      dmAxiom.qrySettingLoad.Open();
      try
         if(dmAxiom.qrySettingLoad.Eof = True) then
            Result := True
         else
            Result := (dmAxiom.qrySettingLoadIntValue.Value = 1);
      finally
         dmAxiom.qrySettingLoad.Close();
      end;
   except
      Result := False;
   end;
end;

function ProspectiveFeesAllowed(sFileid: string): boolean;
var
   dLimit: double;
begin
   dLimit := SystemFloat('PROSPECT_FEE_MAX');
   with dmAxiom.qryTmp do
   begin
      SQL.Text := 'SELECT SUM(AMOUNT) AS AMOUNT FROM FEETMP WHERE FILEID = :FILEID';
      ParamByName('FILEID').AsString := sFileid;
      Open;
      Result := FieldByName('AMOUNT').AsCurrency < dLimit;
   end;
end;

procedure MatterCurrency(ANMatter: integer; var Aentity_Curr_ID, AClient_Curr_ID, AMatter_Curr_ID, AMatter_Curr: String);
begin
   with dmAxiom.procMatterCurrency do
   begin
      PrepareSQL;
      ParamByName('pNMatter').AsInteger := ANMatter;
      ParamByName('pentity').AsString := dmAxiom.Entity;
      Execute;
      Aentity_Curr_ID := ParambyName('PENTITY_CURR_ID').AsString;
      AClient_Curr_ID := ParamByName('PBASE_CURR_ID').AsString;
      AMatter_Curr_ID := ParamByName('PMATTER_CURR_ID').AsString;
      AMatter_Curr := ParamByName('PMATTER_CURR').AsString;
   end;
end;

procedure CalculateFXValue(ABase_Curr, AEntity_Curr, ATran_Curr: string; ATransDate: TDateTime;
                           ATransAmount: double; var ACurrencyValBase, ACurrencyValEntity,
                           ACurrencyValTran, AFXValue: double);
begin
   with dmAxiom.procCalcFXTotal do
   begin
      PrepareSQL;
      ParamByName('pncurrencybase').AsString := ABase_Curr;
      ParamByName('pncurrencyentity').AsString := AEntity_Curr;
      ParamByName('pncurrencytran').AsString := ATran_Curr;
      ParamByName('ptransdate').AsDateTime := ATransDate;
      ParamByName('ptransamount').AsFloat := ATransAmount;
      Execute;
      ACurrencyValBase := ParamByName('pcurrencyvalbase').AsFloat;
      ACurrencyValEntity := ParamByName('pcurrencyvalentity').AsFloat;
      ACurrencyValTran := ParamByName('pcurrencyvaltran').AsFloat;
      AFXValue := ParamByName('PFXRATE').AsFloat;
   end;
end;

procedure InvoiceMergeEmail(iInvoice: integer; nMatter: Integer; Template: string = '');
var
   hWpDatFile: Integer;
   varWord, varDoc, varWP: Variant;
   sWordProc, sInvoice, sDirectory,
   LTemplate, RandFile, tmpFileName,
   RefNo, RptPath, RptParam, AddParamList,
   sUserName, sPassword,
   ANewDocName, AParsedDocName, ASubject, AParsedDir,
   sFileName, lsDraftPrinter, lsFinalPrinter,
   LTemplateCode, ClientName, AuthorEmail,
   sAuthor: string;
   iCtr, i: integer;
   cTotalTax: currency;
   dTmp: double;
   szField: array [0..255] of char;
   szFile: array[0..255] of char;
   strFieldNames, strFieldValues: TStringList;
   regAxiom: TRegistry;
   slImport, slEmailBody: TStringList;

   BillEmail: TppEmail;
   iPos: integer;
   bStream, fStream: TStream;

   procedure AddToList(FieldName, FieldValue: string);
   begin
      if strFieldNames.Count = 0 then
         strFieldNames.Add(FieldName)
      else
         strFieldNames.Add(';'+FieldName);
      strFieldValues.Add(StringReplace(FieldValue, #13#10, '<br>', [rfReplaceAll]));
   end;

begin
   sWordProc := SystemString('WORDPROC');
   dmAxiom.qryInvoice.Close;
   dmAxiom.qryInvoice.SQL.Text := 'SELECT BILLTEMPLATE,' +
                                  'NCLIENT,DRAFT_BILL_NO,NMEMO, '+
                                  'FILEID, INVOICE_COPY, INVOICE_COPY_EXT, NMATTER, '+
                                  'refno, IS_DRAFT, rowid  FROM NMEMO WHERE NMEMO = :NMEMO';

   dmAxiom.qryInvoice.Params[0].AsInteger := iInvoice;
   dmAxiom.qryInvoice.Open;

   if Template = '' then
   begin
      LTemplate := BillTemplate(dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString);
      LTemplateCode := dmAxiom.qryInvoice.FieldByName('BILLTEMPLATE').AsString;
   end
   else
      LTemplateCode := Template;

   if BillTemplateType(LTemplateCode) = 'A' then
   begin
      try
         if not dmAxiom.qryInvoice.Eof then
         begin
            if(LTemplate <> '') then
            begin
//               ppUnregisterDevice(TppPDFDevice);
               if ExtractFilePath(LTemplate) = '' then
                  LTemplate := TableString('BILLTEMPLATE', 'CODE', LTemplateCode, 'PATH');
               if(not Assigned(dmBillTemplate)) then
                  dmBillTemplate := TdmBillTemplate.Create(Application);

               dmBillTemplate.BillTemplate := LTemplateCode;   //LTemplate;
               dmBillTemplate.InvoiceCreate.Clear;
               dmBillTemplate.InvoiceCreate.Add(inttostr(iInvoice));
               dmBillTemplate.InvoiceCreate.Add(inttostr(Nmatter));
               dmBillTemplate.InvoiceCreate.Add(inttostr(dmAxiom.qryInvoice.FieldByName('NCLIENT').AsInteger));
               dmBillTemplate.BillPrint.Template.FileName := LTemplate; //TableString('BILLTEMPLATE', 'CODE', LTemplate, 'PATH');
               dmBillTemplate.BillPrint.Template.LoadFromFile;
               dmBillTemplate.BillPrint.BeforePrint := dmBillTemplate.BillPrintBeforePrint;
               dmBillTemplate.BillPrint.OnPreviewFormCreate := dmBillTemplate.BillPrintPreviewFormCreate;

               // email bill
 {              try
                  slImport := TStringList.Create;
                  slEmailBody := TStringList.Create;
                  slEmailBody.Add('Please find attached bill '+ RefNo + ' for your attention');
                  RefNo := TableString('NMEMO','NMEMO', iInvoice, 'REFNO');
                  sAuthor := MatterString(Nmatter, 'AUTHOR');
                  AuthorEmail := TableString('EMPLOYEE','CODE', sAuthor, 'EMAIL');
                  slImport.Add(dmAxiom.User_Email);
                  slImport.Add(AuthorEmail);
                  dmBillTemplate.BillPrint.EmailSettings.Recipients := slImport;
                  dmBillTemplate.BillPrint.EmailSettings.Subject := 'Bill ' + LTemplate;
                  dmBillTemplate.BillPrint.EmailSettings.BodyRtf := slEmailBody;
                  dmBillTemplate.BillPrint.EmailSettings.FromAddress := SystemString('from_email');
                  try
                     BillEmail := TppEmail.Create;
                     BillEmail.AddReport(dmBillTemplate.BillPrint);
                     BillEmail.Send;
                  finally
                     BillEmail.Free;
                  end;
               finally
                  slImport.Free;
                  slEmailBody.Free;
               end; }
            end;
         end;
      except
         on E: Exception do
            MsgErr('Error occured email of bill'#13#13 + E.Message);
      end;
   end
end;

function CanAuthoriseBills(sEmp: string; pnMatter: integer; pDept: string): boolean;
begin
   with dmAxiom.procCanAuthoriseBill do
   begin
      ParamByName('P_Author').AsString := sEmp;
      if pnMatter = 0 then
         ParamByName('P_nmatter').Clear
      else
         ParamByName('P_nmatter').AsInteger := pnMatter;

      if (pDept = '') then
         ParamByName('P_dept').Clear
      else
         ParamByName('P_dept').AsString := pDept;
      Execute;
      Result := ParambyName('RESULT').AsBoolean;
   end;
end;

end.
