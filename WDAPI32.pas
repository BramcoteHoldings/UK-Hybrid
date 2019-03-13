unit WDAPI32;

interface

uses
   Windows, Wintypes, WinProcs;

{+//************************************** }
{-* Global Definitions* }
{=************************************** }


const
  HKEY_LOCAL_MACHINE_WORLDOXEXE = 'SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\App Paths\\WORLDOX.EXE';


{/// WDAPI Return Codes }
{/// ------------------ }
const
  WDAPI_RC_NOLIST = 0;
const
  WDAPI_RC_FAIL = 0;
const
  WDAPI_RC_OK = 1;
const
  WDAPI_RC_NOTINITED = 2;
const
  WDAPI_RC_WDNOTLOADED = 3;
const
  WDAPI_RC_DELETED = 4;
const
  WDAPI_RC_LOCKED = 5;
const
  WDAPI_RC_UNSORTED = 6;
const
  WDAPI_RC_BADRECNUM = 7;
const
  WDAPI_RC_BADPARAM = 8;
const
  WDAPI_RC_CANNOTSET = 9;
const
  WDAPI_RC_BADPGID = 10;
const
  WDAPI_RC_CHANGED = 11;
const
  WDAPI_RC_FILEBUSY = 12;
const
  WDAPI_RC_FILEGONE = 13;
const
  WDAPI_RC_SECURED = 14;
const
  WDAPI_RC_DEFAULT = 15;
const
  WDAPI_RC_FRPATHINVALID = 16;
const
  WDAPI_RC_FRFILEBUSY = 17;
const
  WDAPI_RC_FRFILEINVALID = 18;
const
  WDAPI_RC_TOPATHINVALID = 19;
const
  WDAPI_RC_TOFILEEXISTS = 20;
const
  WDAPI_RC_TOFILEBUSY = 21;
const
  WDAPI_RC_TOFILEINVALID = 22;

const
  WDAPI_RC_FIELDREQUIRED = $100;
const
  WDAPI_RC_FIELD1REQUIRED = $101;
const
  WDAPI_RC_FIELD2REQUIRED = $102;
const
  WDAPI_RC_FIELD3REQUIRED = $103;
const
  WDAPI_RC_FIELD4REQUIRED = $104;
const
  WDAPI_RC_FIELD5REQUIRED = $105;
const
  WDAPI_RC_FIELD6REQUIRED = $106;
const
  WDAPI_RC_FIELD7REQUIRED = $107;

const
  WDAPI_RC_FIELDINVALID = $200;
const
  WDAPI_RC_FIELD1INVALID = $201;
const
  WDAPI_RC_FIELD2INVALID = $202;
const
  WDAPI_RC_FIELD3INVALID = $203;
const
  WDAPI_RC_FIELD4INVALID = $204;
const
  WDAPI_RC_FIELD5INVALID = $205;
const
  WDAPI_RC_FIELD6INVALID = $206;
const
  WDAPI_RC_FIELD7INVALID = $207;

{/// WDAPI_AuditEvent - dwFlags }
{/// -------------------------- }
const
  WDAPI_AE_FLAG_NONE = 0;

const
  WDAPI_AE_EVENT_ADD = 2;
const
  WDAPI_AE_EVENT_DELETE = 4;
const
  WDAPI_AE_EVENT_OPEN = 32;
const
  WDAPI_AE_EVENT_SAVE = 40;
const
  WDAPI_AE_EVENT_SAVEAS = 48;
const
  WDAPI_AE_EVENT_VIEW = 60;

{/// WDAPI_CheckOut - dwFlags }
{/// ----------------------- }
const
  WDAPI_CO_FLAG_NONE = 0;

{/// WDAPI_CheckIn - dwFlags }
{/// ----------------------- }
const
  WDAPI_CI_FLAG_NONE = 0;

{/// WDAPI_GetDefault - dwFlags }
{/// -------------------------- }
const
  WDAPI_GD_FLAG_FIELD1 = $00000001;
const
  WDAPI_GD_FLAG_FIELD2 = $00000002;
const
  WDAPI_GD_FLAG_FIELD3 = $00000003;
const
  WDAPI_GD_FLAG_FIELD4 = $00000004;
const
  WDAPI_GD_FLAG_FIELD5 = $00000005;
const
  WDAPI_GD_FLAG_FIELD6 = $00000006;
const
  WDAPI_GD_FLAG_FIELD7 = $00000007;
const
  WDAPI_GD_FLAG_SAVE = $00010000;
const
  WDAPI_GD_FLAG_COPY = $00020000;
const
  WDAPI_GD_FLAG_MOVE = $00040000;
const
  WDAPI_GD_FLAG_GROUP = $00000010;
const
  WDAPI_GD_FLAG_LPSTR = $00000001; {// 'lpFieldOut' is LPSTR.}
const
  WDAPI_GD_FLAG_LPDWORD = $00000002; {// 'lpFieldOut' is LPDWORD.}

{/// WDAPI_GetField - dwFlags }
{/// ------------------------ }
const
  WDAPI_GF_FLAG_LPSTR = 1; {// 'lpFieldOut' is LPSTR.}
const
  WDAPI_GF_FLAG_LPDWORD = 2; {// 'lpFieldOut' is LPDWORD.}
const
  WDAPI_GF_FLAG_FILTER = 3; {// Return the Filter Field}
const
  WDAPI_GF_FLAG_CLOSEFILES = 4; {// Close XNAME.*}

{/// WDAPI_GetField - File dwElemIDs }
{/// ------------------------------- }
const
  WDAPI_GF_FILE_XNAME = 1;
const
  WDAPI_GF_FILE_FILENAME = 2;
const
  WDAPI_GF_FILE_EXTENSION = 3;
const
  WDAPI_GF_FILE_UPDATED = 4;
const
  WDAPI_GF_FILE_OWNER = 5;
const
  WDAPI_GF_FILE_SIZE = 6;
const
  WDAPI_GF_FILE_PATH = 7;
const
  WDAPI_GF_FILE_LIBRARY = 8;
const
  WDAPI_GF_FILE_CREATED = 9;
const
  WDAPI_GF_FILE_FIELD1 = 10;
const
  WDAPI_GF_FILE_FIELD2 = 11;
const
  WDAPI_GF_FILE_FIELD3 = 12;
const
  WDAPI_GF_FILE_FIELD4 = 13;
const
  WDAPI_GF_FILE_FIELD5 = 14;
const
  WDAPI_GF_FILE_FIELD6 = 15;
const
  WDAPI_GF_FILE_FIELD7 = 16;
const
  WDAPI_GF_FILE_HITS = 17;
const
  WDAPI_GF_FILE_ATTRIBS = 18;
const
  WDAPI_GF_FILE_GROUP = 19;
const
  WDAPI_GF_FILE_VERSION = 20;
const
  WDAPI_GF_FILE_PATHFILE = 22;
const
  WDAPI_GF_FILE_ACCESSDATE = 23;
const
  WDAPI_GF_FILE_OWNERSHIP = 24;
const
  WDAPI_GF_FILE_PATHMAP = 25;
const
  WDAPI_GF_FILE_RIGHTS = 27;
const
  WDAPI_GF_FILE_CLASSNAME = 28;
const
  WDAPI_GF_FILE_FIELD1DESC = 29;
const
  WDAPI_GF_FILE_FIELD2DESC = 30;
const
  WDAPI_GF_FILE_FIELD3DESC = 31;
const
  WDAPI_GF_FILE_FIELD4DESC = 32;
const
  WDAPI_GF_FILE_FIELD5DESC = 33;
const
  WDAPI_GF_FILE_FIELD6DESC = 34;
const
  WDAPI_GF_FILE_FIELD7DESC = 35;
const
  WDAPI_GF_FILE_STATUSFLAGS = 50;
const
  WDAPI_GF_FILE_WDFILEICONID = 51;
const
  WDAPI_GF_FILE_STATUSICONID = 52;
const
  WDAPI_GF_FILE_COMMENTS = 99;
const
  WDAPI_GF_FILE_MIRRORPATH = 201;
const
  WDAPI_GF_FILE_DOWNLOADNAME = 202;

{/// WDAPI_GetField - WDAPI_GF_FILE_ATTRIBS (can be OR'd) }
{/// ---------------------------------------------------- }
const
  WDAPI_GF_ATTRIB_RDONLY = 1;
const
  WDAPI_GF_ATTRIB_HIDDEN = 2;
const
  WDAPI_GF_ATTRIB_SYSTEM = 4;
const
  WDAPI_GF_ATTRIB_ARCHIVE = 32;

{/// WDAPI_GetField - WDAPI_GF_FILE_OWNERSHIP (can be OR'd) }
{/// ------------------------------------------------------ }
const
  WDAPI_GF_OWNER_CHECKEDIN = 1;
const
  WDAPI_GF_OWNER_OURS = 2;
const
  WDAPI_GF_OWNER_THEIRS = 4;
const
  WDAPI_GF_OWNER_PROTECTED = 8;
const
  WDAPI_GF_OWNER_HIDDEN = 16;
const
  WDAPI_GF_OWNER_CHECKEDOUT = 32;
const
  WDAPI_GF_OWNER_GROUPSEC = 128;

{/// WDAPI_GetField - WDAPI_GF_FILE_RIGHTS (can be OR'd) }
{/// --------------------------------------------------- }
const
  WDAPI_GF_RIGHTS_ACTIVE = 1;
const
  WDAPI_GF_RIGHTS_FIND = 2;
const
  WDAPI_GF_RIGHTS_READ = 4;
const
  WDAPI_GF_RIGHTS_WRITE = 8;
const
  WDAPI_GF_RIGHTS_MODIFY = 16;
const
  WDAPI_GF_RIGHTS_DELETE = 32;
const
  WDAPI_GF_RIGHTS_SECURE = 64;

const
  WDAPI_GF_RIGHTS_ALL_ = (WDAPI_GF_RIGHTS_FIND) ;
const
  WDAPI_GF_RIGHTS_PROTECTED = (WDAPI_GF_RIGHTS_ACTIVE);
{/// WDAPI_GetField - WDAPI_GF_FILE_WDFILEICONID }
{/// ------------------------------------------- }
const
  WDAPI_GF_WDFILEICONID_UNK = 0;
const
  WDAPI_GF_WDFILEICONID_EXE = 1;
const
  WDAPI_GF_WDFILEICONID_123 = 2;
const
  WDAPI_GF_WDFILEICONID_XLS = 3;
const
  WDAPI_GF_WDFILEICONID_XLM = 4;
const
  WDAPI_GF_WDFILEICONID_DOC = 5;
const
  WDAPI_GF_WDFILEICONID_DLL = 6;
const
  WDAPI_GF_WDFILEICONID_WPD = 7;
const
  WDAPI_GF_WDFILEICONID_TXT = 8;

{/// WDAPI_GetField - WDAPI_GF_FILE_STATUSICONID }
{/// ------------------------------------------- }
const
  WDAPI_GF_STATUSICONID_CHKOUTGRN = 48;
const
  WDAPI_GF_STATUSICONID_CHKOUTRED = 49;
const
  WDAPI_GF_STATUSICONID_ZMSFILE = 50;
const
  WDAPI_GF_STATUSICONID_LOCKGRN = 51;
const
  WDAPI_GF_STATUSICONID_LOCKGRNKEY = 52;
const
  WDAPI_GF_STATUSICONID_LOCKYEL = 53;
const
  WDAPI_GF_STATUSICONID_LOCKYELKEY = 54;
const
  WDAPI_GF_STATUSICONID_LOCKRED = 55;
const
  WDAPI_GF_STATUSICONID_LOCKREDKEY = 56;

{/// WDAPI_GetField - Field Table dwElemIDs }
{/// -------------------------------------- }
const
  WDAPI_GF_FIELD_CODE = 21;
const
  WDAPI_GF_FIELD_DESC = 22;
const
  WDAPI_GF_FIELD_PARENT_CODE = 31;
const
  WDAPI_GF_FIELD_PARENT_DESC = 32;

{/// WDAPI_GetField - FindTemplate dwElemIDs }
{/// --------------------------------------- }
const
  WDAPI_GF_FT_NAME = 1;
const
  WDAPI_GF_FT_PGS = 2;
const
  WDAPI_GF_FT_GO = 3;
const
  WDAPI_GF_FT_SCANPATH = 4;
const
  WDAPI_GF_FT_SOURCE = 5;

const
  WDAPI_GF_FT_SOURCE_USER = 'U';
const
  WDAPI_GF_FT_SOURCE_PUBLIC = 'P';
const
  WDAPI_GF_FT_SOURCE_FILTER = '\\';

{/// WDAPI_GetField - ProfileGroup dwElemIDs }
{/// --------------------------------------- }
const
  WDAPI_GF_PG_NAME = 1;
const
  WDAPI_GF_PG_BASEPATH = 2;
const
  WDAPI_GF_PG_NETMAP = 3;
const
  WDAPI_GF_PG_ID = 4;
const
  WDAPI_GF_PG_FLAGS = 5;

const
  WDAPI_GF_PG_FIELD1_DESC = 16;
const
  WDAPI_GF_PG_FIELD2_DESC = 17;
const
  WDAPI_GF_PG_FIELD3_DESC = 18;
const
  WDAPI_GF_PG_FIELD4_DESC = 19;
const
  WDAPI_GF_PG_FIELD5_DESC = 20;
const
  WDAPI_GF_PG_FIELD6_DESC = 21;
const
  WDAPI_GF_PG_FIELD7_DESC = 22;

const
  WDAPI_GF_PG_FIELD1_FLAGS = 32;
const
  WDAPI_GF_PG_FIELD2_FLAGS = 33;
const
  WDAPI_GF_PG_FIELD3_FLAGS = 34;
const
  WDAPI_GF_PG_FIELD4_FLAGS = 35;
const
  WDAPI_GF_PG_FIELD5_FLAGS = 36;
const
  WDAPI_GF_PG_FIELD6_FLAGS = 37;
const
  WDAPI_GF_PG_FIELD7_FLAGS = 38;

const
  WDAPI_GF_PG_FIELD1_LEN = 64;
const
  WDAPI_GF_PG_FIELD2_LEN = 65;
const
  WDAPI_GF_PG_FIELD3_LEN = 66;
const
  WDAPI_GF_PG_FIELD4_LEN = 67;
const
  WDAPI_GF_PG_FIELD5_LEN = 68;
const
  WDAPI_GF_PG_FIELD6_LEN = 69;
const
  WDAPI_GF_PG_FIELD7_LEN = 70;
const
  WDAPI_GF_FILE_FULLPROFILE = 999;

{/// WDAPI_GetFileList - dwFlags }
{/// --------------------------- }
const
  WDAPI_GFL_FLAG_PERSPEC = 0; {// Determined by 'lpcszGetSpec'}
const
  WDAPI_GFL_FLAG_FAVFILES = 1; {// Favorite Files ('lpcszGetSpec' is AppID)}
const
  WDAPI_GFL_FLAG_FOLDER = 2; {// Specified Folder ('lpcszGetSpec' must be 'drv:\path')}
const
  WDAPI_GFL_FLAG_TEMP = 3; {// Title is 'lpcszGetSpec'}

{/// WDAPI_GetFilePath - dwFlags }
{/// --------------------------- }
const
  WDAPI_GFP_FLAG_NONE = 0;

{/// WDAPI_GetFindTemplateList - dwFlags }
{/// ----------------------------------- }
const
  WDAPI_GFTL_FLAG_NONE = 0;
const
  WDAPI_GFTL_FLAG_INDEXED = 1;

{/// WDAPI_GetNextAutoName - dwFlags }
{/// ------------------------------- }
const
  WDAPI_GNA_FLAG_NONE = 0;

{/// WDAPI_GetPGList - dwFlags }
{/// ------------------------- }
const
  WDAPI_GPGL_FLAG_NONE = 0;

{/// WDAPI_GetTableList - dwFlags }
{/// ---------------------------- }
const
  WDAPI_GTL_FLAG_NONE = $0000;
const
  WDAPI_GTL_FLAG_DWPARENT = $0001;
const
  WDAPI_GTL_FLAG_SZPARENT = $0002;

{/// WDAPI_GetLastError - dwFlags }
{/// ---------------------------- }
const
  WDAPI_GLE_FLAG_TEXT = $0001;

{/// WDAPI_GetListRecNum - dwFlags }
{/// ----------------------------- }
const
  WDAPI_GLRN_FLAG_FIRST = 1; {// Get First RecNum}
const
  WDAPI_GLRN_FLAG_NEXT = 2; {// Get Next RecNum}
const
  WDAPI_GLRN_FLAG_COUNT = 3; {// Get List Count}
const
  WDAPI_GLRN_FLAG_BYSEQ = $010000; {// (65536) OR with SeqNum to Get RecNum}
const
  WDAPI_GLRN_FLAG_BYSORT1 = $100000; {// (1048576)}
const
  WDAPI_GLRN_FLAG_BYSORT2 = $200000; {// (2097152)}
const
  WDAPI_GLRN_FLAG_BYSORT3 = $300000; {// (3145728)}
const
  WDAPI_GLRN_FLAG_BYSORT4 = $400000; {// (4194304)}

{/// WDAPI_GetUserInfo - User dwInfoIDs }
{/// ---------------------------------- }
const
  WDAPI_GUI_CODE = 1;
const
  WDAPI_GUI_NAME = 2;
const
  WDAPI_GUI_INITIALS = 3;
const
  WDAPI_GUI_USERNUMBER = 4;
const
  WDAPI_GUI_USERINI = 5;
const
  WDAPI_GUI_ISMANAGER = 6;
const
  WDAPI_GUI_FOLDER_WORLDOX = 7;
const
  WDAPI_GUI_FOLDER_SHARED = 8;
const
  WDAPI_GUI_FOLDER_USERINI = 9;
const
  WDAPI_GUI_FOLDER_LOGS = 10;
const
  WDAPI_GUI_FOLDER_WIN = 11;
const
  WDAPI_GUI_FOLDER_WDMIRROR = 12;
const
  WDAPI_GUI_FOLDER_ZMS = 13;
const
  WDAPI_GUI_LICENSE_KEY = 14;
const
  WDAPI_GUI_LICENSE_COUNT = 15;
const
  WDAPI_GUI_LICENSE_INUSE = 16;
const
  WDAPI_GUI_LICENSE_EXPIRES = 17;

{/// WDAPI_GetVersionList - dwFlags }
{/// ------------------------------ }
const
  WDAPI_GVL_NONE = 0;

{/// WDAPI_GetZipList - dwFlags }
{/// -------------------------- }
const
  WDAPI_GZL_NONE = 0;

{/// WDAPI_IsCodeInTable - dwFlags }
{/// ----------------------------- }
const
  WDAPI_ICIT_FLAG_NONE = $0000;
const
  WDAPI_ICIT_FLAG_DWPARENT = $0001;
const
  WDAPI_ICIT_FLAG_SZPARENT = $0002;

{/// WDAPI_IsFindTemplateOK - dwFlags }
{/// -------------------------------- }
const
  WDAPI_IFTO_FLAG_NONE = $0000;
const
  WDAPI_IFTO_FLAG_INDEXED = $0001;
const
  WDAPI_IFTO_FLAG_INTERNAL = $0002;
const
  WDAPI_IFTO_FLAG_WDWEB = $0004;

{/// WDAPI_IsPGField - dwFlags }
{/// ------------------------- }
const
  WDAPI_IPGF_ACTIVE = $0100; {// (256) Active Field?}
const
  WDAPI_IPGF_EDITOK = $2000; {// (8192) Allow Table Add/Edit?}
const
  WDAPI_IPGF_ENTREQ = $0001; {// (1) Entry Required}
const
  WDAPI_IPGF_FORMAT = $0004; {// (4) Field is Formated}
const
  WDAPI_IPGF_LINKED = $0800; {// (2048) Linked to Prior Field?}
const
  WDAPI_IPGF_LOOKUP = $8000; {// (32768) Auto Table Popup?}
const
  WDAPI_IPGF_NGISOK = $4000; {// (16384) Not in Table is OK?}
const
  WDAPI_IPGF_PRIVAT = $0400; {// (1024) Private Table?}
const
  WDAPI_IPGF_SUBDIR = $1000; {// (4096) Subdir Level?}
const
  WDAPI_IPGF_WDUSER = $0002; {// (2) Linked to WD Users}
const
  WDAPI_IPGF_LOCKED = $0008; {// (8) Field is Locked}

{/// WDAPI_IsProfile - dwFlags }
{/// ------------------------- }
const
  WDAPI_IP_READONLY = $0002; {// (2) Read Only?}
const
  WDAPI_IP_HIDDEN = $0008; {// (8) Hidden PG?}
const
  WDAPI_IP_AUTOONLY = $0010; {// (16) Auto-Path Only?}
const
  WDAPI_IP_UNDELETE = $0020; {// (32) Allow Undelete?}
const
  WDAPI_IP_NOLIBRS = $0040; {// (64) No Libraries?}
const
  WDAPI_IP_DENYOPEN = $0080; {// (128) Deny Open?}
const
  WDAPI_IP_DENYCOPY = $0100; {// (256) Deny Copy?}
const
  WDAPI_IP_DENYMOVE = $0200; {// (512) Deny Move?}

{/// WDAPI_RenameFile }
{/// ---------------- }
const
  WDAPI_RF_FLAG_NONE = $00000000;
const
  WDAPI_RF_FLAG_NEWPROFILE = $00000001; {// (1) lpStruct = LPWDAPI_NEWPROFILE}
const
  WDAPI_RF_FLAG_COPY = $00000010; {// (16) Copy File (plus versions)}
const
  WDAPI_RF_FLAG_COPYNOVERS = $00000030; {// (48) Copy File (minus versions)}
const
  WDAPI_RF_FLAG_CREATEPATH = $00000040; {// (64) Create target folder}
const
  WDAPI_RF_FLAG_REPLACEFILE = $00000080; {// (128) Replace existing file}
const
  WDAPI_RF_FLAG_TOLONGNAME = $00000100; {// (256) Use XNAME as Target Filename}
const
  WDAPI_RF_FLAG_SETFOLDERRO = $00000200; {// (512) Set the Read-Only attribute in Target\XNAME*.*}
const
  WDAPI_RF_FLAG_SETFOLDERRW = $00000400; {// (1024) Clear the Read-Only attribute in Target\XNAME*.*}
const
  WDAPI_RF_FLAG_NEWVERSION = $00000800; {// (2048) Insert as new version}
const
  WDAPI_RF_FLAG_CLRDESTSEC = $00001000; {// (4096) Clear Target File's Security}
const
  WDAPI_RF_FLAG_ONLYNEWER = $00002000; {// (8192) Copy/Move only NEWER files}
const
  WDAPI_RF_FLAG_DELETE = $00004000; {// (16384) Copy/Move to Salvage}
const
  WDAPI_RF_FLAG_NOPROFILE = $00008000; {// (32768) Do not copy Profile}
const
  WDAPI_RF_FLAG_SHRED = $00010000; {// (65536) Shred Source (on Delete/Move)}
const
  WDAPI_RF_FLAG_COPYOWNER = $00020000; {// (131072) Copy Owner}
const
  WDAPI_RF_FLAG_CHECKOUT = $00040000; {// (262144) Check Out}
const
  WDAPI_RF_FLAG_CHECKIN = $00080000; {// (524288) Check In}

{/// WDAPI_ReReadRecord - dwFlags }
{/// ---------------------------- }
const
  WDAPI_RRR_FLAG_NOLOCK = 0;
const
  WDAPI_RRR_FLAG_LOCK = 1;
const
  WDAPI_RRR_FLAG_UNLOCK = 2;
const
  WDAPI_RRR_FLAG_REFRESH = 4;

{/// WDAPI_SetField - dwFlags }
{/// ------------------------ }
const
  WDAPI_SF_FLAG_NONE = 0;
const
  WDAPI_SF_FLAG_RESET = 1;
const
  WDAPI_SF_FLAG_WRITE = 2;
const
  WDAPI_SF_FLAG_FILTERADD = 4;
const
  WDAPI_SF_FLAG_FILTERSET = 8;
const
  WDAPI_SF_FLAG_FILTERCLR = 16;

const
  WDAPI_SF_FILE_XNAME = 1;
const
  WDAPI_SF_FILE_FIELD1 = 10;
const
  WDAPI_SF_FILE_FIELD2 = 11;
const
  WDAPI_SF_FILE_FIELD3 = 12;
const
  WDAPI_SF_FILE_FIELD4 = 13;
const
  WDAPI_SF_FILE_FIELD5 = 14;
const
  WDAPI_SF_FILE_FIELD6 = 15;
const
  WDAPI_SF_FILE_FIELD7 = 16;
const
  WDAPI_SF_FILE_GROUP = 19;
const
  WDAPI_SF_FILE_VERSION = 20;
const
  WDAPI_SF_FILE_COMMENTS = 99;

{/// WDAPI_SetTableField }
{/// --------------------- }
const
  WDAPI_ST_FIELD_IN = 22;
const
  WDAPI_ST_FIELD_POLICY = 26;
const
  WDAPI_ST_FIELD_PERIOD = 28;
const
  WDAPI_ST_FIELD_DURATION = 27;

{/// WDAPI_SetRelation }
{/// ----------------- }
const
  WDAPI_SR_FLAG_NONE = 0;
const
  WDAPI_SR_FLAG_DEL = $0080; {// (128) Delete Relation}

{/// WDAPI_SortList - dwFlags }
{/// ------------------------ }
const
  WDAPI_SL_FLAG_NONE = 0;
const
  WDAPI_SL_DESCENDING = $0100; {// (256) OR with Sort Elem}

{/// WDAPI_WORLDOX_Open - dwFlags }
{/// ---------------------------- }
const
  WDAPI_WO_FLAG_NONE = 0;

{/// WDAPI_WORLDOX_SaveAs - dwFlags }
{/// ------------------------------ }
const
  WDAPI_WSA_FLAG_NONE = 0;
const
  WDAPI_WSA_FLAG_DEFPROFILE = $0001; {// (1) lpStruct = LPWDAPI_SAVEASDEFPROFILE}

{/// WDAPI_TranslateString }
{/// --------------------- }
const
   WDAPI_TS_FLAG_NONE = 0;

// structure
{
type
  _FPWDAPI = record
    dwSize: LongInt;
    fpWDAPI_AbortFind: T_WDAPI_ABORTFIND;
    fpWDAPI_AuditEvent: T_WDAPI_AUDITEVENT;
    fpWDAPI_CheckIn: T_WDAPI_CHECKIN;
    fpWDAPI_CheckOut: T_WDAPI_CHECKOUT;
    fpWDAPI_DeInit: T_WDAPI_DEINIT;
    fpWDAPI_DestroyList: T_WDAPI_DESTROYLIST;
    fpWDAPI_GetAutoName: T_WDAPI_GETAUTONAME;
    fpWDAPI_GetDefault: T_WDAPI_GETDEFAULT;
    fpWDAPI_GetField: T_WDAPI_GETFIELD;
    fpWDAPI_GetFieldDesc: T_WDAPI_GETFIELDDESC;
    fpWDAPI_GetFileList: T_WDAPI_GETFILELIST;
    fpWDAPI_GetFilePath: T_WDAPI_GETFILEPATH;
    fpWDAPI_GetFindTemplateList: T_WDAPI_GETFINDTEMPLATELIST;
    t_WDAPI_GetListRecNum fpWDAPI_GetListRecNum: Integer;
    fpWDAPI_GetPGList: T_WDAPI_GETPGLIST;
    fpWDAPI_GetProfileField: T_WDAPI_GETPROFILEFIELD;
    t_WDAPI_GetTableField fpWDAPI_GetTableField: Integer;
    fpWDAPI_GetTableList: T_WDAPI_GETTABLELIST;
    fpWDAPI_GetUserInfo: T_WDAPI_GETUSERINFO;
    fpWDAPI_Init: T_WDAPI_INIT;
    t_WDAPI_IsCodeInTable fpWDAPI_IsCodeInTable: Integer;
    fpWDAPI_IsFindTemplateOK: T_WDAPI_ISFINDTEMPLATEOK;
    fpWDAPI_IsPGField: T_WDAPI_ISPGFIELD;
    fpWDAPI_IsProfile: T_WDAPI_ISPROFILE;
    fpWDAPI_ReReadRecord: T_WDAPI_REREADRECORD;
    fpWDAPI_SetField: T_WDAPI_SETFIELD;
    fpWDAPI_SetProfileField: T_WDAPI_SETPROFILEFIELD;
    fpWDAPI_SortList: T_WDAPI_SORTLIST;
    fpWDAPI_WORLDOX_Open: T_WDAPI_WORLDOX_OPEN;
    fpWDAPI_WORLDOX_SaveAs: T_WDAPI_WORLDOX_SAVEAS;
  end ;
 LPFPWDAPI := ^_FPWDAPI;
 }


{+//************************************************************************** }
var
  HWDAPI: integer;

  WDAPI_AuditEvent: function(hWDList: LongInt;
                             dwFlags: LongInt;
                             dwRecNum: LongInt;
                             dwEventID: LongInt;
                             dwReserved: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_CheckIn: function(hWDList: LongInt;
                          dwFlags: LongInt;
                          dwRecNum: LongInt;
                          var lpcszPathFr: string;
                          dwReserved: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_CheckOut: function(hWDList: LongInt;
                           dwFlags: LongInt;
                           dwRecNum: LongInt;
                           var lpcszPathTo: string;
                           dwReserved: LongInt):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_CreateDefProfStruct: function(dwFlags: LongInt;
                                      dwPGID: LongInt;
                                      var lpcszField1: string;
                                      var lpcszField2: string;
                                      var lpcszField3: string;
                                      var lpcszField4: string;
                                      var lpcszField5: string;
                                      var lpcszField6: string;
                                      var lpcszField7: string;
                                      dwReserved: LongInt;
                                      lpStructOut: PChar):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_DeInit: function(hWDAPI: longint):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_DestroyList: function(hWDList: longint):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_FormatField: function(hWDAPI: longint;
                              dwPGID: LongInt;
                              dwFieldNumber: LongInt;
                              var lpcszFieldIn: string;
                              lpszFieldOut: PChar;
                              dwMaxFieldOutLen: LongInt):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetField: function(hWDList: longint;
                           dwFlags: LongInt;
                           dwRecNum: LongInt;
                           dwElemID: LongInt;
                           var lpFieldOut: string;
                           dwMaxFieldOutLen: LongInt):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetFileList: function(hWDAPI: longint;
                              hwndParent: HWND;
                              dwFlags: LongInt;
                              var lpcszGetSpec: string):  longint cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetFilePath: function(hWDAPI: longint;
                              dwPGID: LongInt;
                              dwFlags: LongInt;
                              var lpcszField1: string;
                              var lpcszField2: string;
                              var lpcszField3: string;
                              var lpcszField4: string;
                              var lpcszField5: string;
                              var lpcszField6: string;
                              var lpcszField7: string;
                              lpszPathOut: PChar;
                              dwMaxPa: LongInt) :  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetFindTemplateList: function(hWDAPI: integer;
                                      hwndParent: HWND;
                                      dwFlags: LongInt;
                                      dwReserved: LongInt):  integer cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetListRecNum: function(hWDList: integer;
                                dwFlags: LongInt):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetAutoName: function(hWDAPI: integer;
                              dwFlags: LongInt;
                              var lpcszPath: string;
                              var lpFieldOut: string;
                              dwMaxFieldOutLen: LongInt):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetLastError: function(hWDAPI: integer;
                               dwFlags: LongInt;
                               var lpErrorOut: string;
                               dwMaxErrorOutLen: LongInt):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetPGList: function(hWDAPI: integer;
                            hwndParent: HWND;
                            dwFlags: LongInt;
                            dwReserved: LongInt):  integer cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetRelation: function(hWDAPI: integer;
                              dwFlags: LongInt;
                              var lpcszPath: string;
                              var lpcszFileName: string;
                              lpszPathFileOut: PChar;
                              dwMaxPathFileLen: LongInt):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetTableList: function(hWDAPI: integer;
                               hwndParent: HWND;
                               dwPGID: LongInt;
                               dwFieldNumber: LongInt;
                               dwParentRecNum: LongInt;
                               dwFlags: LongInt;
                               dwReserved: LongInt):  integer cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetUserInfo: function(hWDAPI: integer;
                              dwElemID: LongInt;
                              lpszInfoOut: PChar;
                              dwMaxInfoOutLen: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetVersionList: function(hWDList: integer;
                                 dwFlags: LongInt;
                                 dwRecNum: LongInt;
                                 dwReserved: LongInt): integer cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_GetZipList: function(hWDAPI: integer;
                             hwndParent: HWND;
                             dwFlags: LongInt;
                             var lpcszZipFile: string;
                             dwReserved: LongInt): integer cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_Init: function(var lpcszSessionID: string): integer cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_IsCodeInTable: function(hWDAPI: integer;
                                dwFlags: LongInt;
                                dwPGID: LongInt;
                                dwFieldNumber: LongInt;
                                dwParentRecNum: LongInt;
                                var lpcszCode: string;
                                lpszDescOut: PChar;
                                dwMaxOutLen: LongInt;
                                dwReserved: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_IsPGField: function(hWDAPI: integer;
                            dwPGID: LongInt;
                            dwFlags: LongInt;
                            dwFieldNum: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_IsProfile: function(hWDAPI: integer;
                            dwPGID: LongInt;
                            dwFlags: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_RenameFile: function(hWDAPI: integer;
                             hwndParent: HWND;
                             dwFlags: LongInt;
                             var lpStruct: string;
                             var lpcszFrPath: string;
                             var lpcszFrFileName: string;
                             var lpcszToPath: string;
                             var lpcszToFileName: string;
                             lpszPathFileOut: PChar;
                             dwMaxPathFileOutLen: LongInt;
                             dwReserve: LongInt):  DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_ReReadRecord: function(hWDList: integer;
                               dwFlags: LongInt;
                               dwRecNum: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_SetField: function(hWDList: integer;
                           dwFlags: LongInt;
                           dwRecNum: LongInt;
                           dwElemID: LongInt;
                           var lpFieldIn: string;
                           dwFieldInLen: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_SetRelation: function(hWDAPI: integer;
                              dwFlags: LongInt;
                              var lpcszPathParent: string;
                              var lpcszFileNameParent: string;
                              var lpcszPathChild: string;
                              var lpcszFileNameChild: string): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_SortList: function(hWDList: integer;
                           dwFlags: LongInt;
                           dwSort1: LongInt;
                           dwSort2: LongInt;
                           dwReserved: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_IsFindTemplateOK: function(hWDAPI: integer;
                                   dwFlags: LongInt;
                                   var lpcszTemplateName: string;
                                   lpszPGListOut: PChar;
                                   dwMaxPGListOutLen: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_WORLDOX_Open: function(hWDAPI: integer;
                               hwndParent: HWND;
                               dwFlags: LongInt;
                               var lpStruct: string;
                               var lpcszHookIniSection: string;
                               var lpcszQuickAccessIn: string;
                               lpszCaptionOut: PChar;
                               dwMaxCaptionOutLen: LongInt;
                               lpszFooterOut: PChar;
                               dwMaxFooterOutLen: LongInt;
                               lpszPathFileOut: PChar;
                               dwMaxPathFileOutLen: longint
                               ): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_WORLDOX_SaveAs: function(hWDAPI: integer;
                                 hwndParent: HWND;
                                 dwFlags: LongInt;
                                 var lpStruct: string;
                                 var lpcszHookIniSection: string;
                                 var lpcszPathFileIn: string;
                                 var lpcszSaveFormatIn: string;
                                 lpszSaveFormatOut: PChar;
                                 dwMaxSaveFormatOut: LongInt;
                                 lpszCaptionOut: PChar
                                 ): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_TranslateString: function(hWDAPI: integer;
                                  dwFlags: LongInt;
                                  var lpcszPath: string;
                                  var lpcszFile: string;
                                  var lpcszINI: string;
                                  var lpcszFmtSec: string;
                                  var lpcszFmtKey: string;
                                  var lpcszFmtDef: string;
                                  dwReserved: LongInt;
                                  lpszFieldOut: PChar;
                                  dwMaxFieldOutLen: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

  WDAPI_NewMessage: function(hWDAPI: integer;
                             dwFlags: LongInt;
                             var lpcszAttachments: string;
                             dwReserved: LongInt): DWORD cdecl  {$IFDEF WIN32} stdcall {$ENDIF};

{=************************************************************************** }

var
  DLLLoaded: Boolean = False;

implementation

var
   SaveExit: pointer;
   DLLHandle: THandle;
   {$IFNDEF MSDOS}
   ErrorMode: Integer;
   {$ENDIF}

   procedure NewExit; far;
   begin
      ExitProc := SaveExit;
      FreeLibrary(DLLHandle);
   end;

procedure LoadDLL;
begin
   if DLLLoaded then Exit;
   {$IFNDEF MSDOS}
   ErrorMode := SetErrorMode($8000{SEM_NoOpenFileErrorBox});
   {$ENDIF}
   DLLHandle := LoadLibrary('WDAPI32.DLL');
   if DLLHandle >= 32 then
   begin
       DLLLoaded := True;
       SaveExit := ExitProc;
       ExitProc := @NewExit;

       @WDAPI_AuditEvent := GetProcAddress(DLLHandle,'WDAPI_AuditEvent');
     {$IFDEF WIN32}
       Assert(@WDAPI_AuditEvent <> nil);
     {$ENDIF}
       @WDAPI_CheckIn := GetProcAddress(DLLHandle,'WDAPI_CheckIn');
     {$IFDEF WIN32}
       Assert(@WDAPI_CheckIn <> nil);
     {$ENDIF}
       @WDAPI_CheckOut := GetProcAddress(DLLHandle,'WDAPI_CheckOut');
     {$IFDEF WIN32}
       Assert(@WDAPI_CheckOut <> nil);
     {$ENDIF}
       @WDAPI_CreateDefProfStruct := GetProcAddress(DLLHandle,'WDAPI_CreateDefProfStruct');
     {$IFDEF WIN32}
       Assert(@WDAPI_CreateDefProfStruct <> nil);
     {$ENDIF}
       @WDAPI_DeInit := GetProcAddress(DLLHandle,'WDAPI_DeInit');
     {$IFDEF WIN32}
       Assert(@WDAPI_DeInit <> nil);
     {$ENDIF}
       @WDAPI_DestroyList := GetProcAddress(DLLHandle,'WDAPI_DestroyList');
     {$IFDEF WIN32}
       Assert(@WDAPI_DestroyList <> nil);
     {$ENDIF}
//   /***************************
//   /need to revisit
//   /    @WDAPI_FormatField := GetProcAddress(DLLHandle,'WDAPI_FormatField');
     {$IFDEF WIN32}
//   /    Assert(@WDAPI_FormatField <> nil);
     {$ENDIF}
//***********************************************
       @WDAPI_GetField := GetProcAddress(DLLHandle,'WDAPI_GetField');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetField <> nil);
     {$ENDIF}
       @WDAPI_GetFileList := GetProcAddress(DLLHandle,'WDAPI_GetFileList');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetFileList <> nil);
     {$ENDIF}
       @WDAPI_GetFilePath := GetProcAddress(DLLHandle,'WDAPI_GetFilePath');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetFilePath <> nil);
     {$ENDIF}
       @WDAPI_GetFindTemplateList := GetProcAddress(DLLHandle,'WDAPI_GetFindTemplateList');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetFindTemplateList <> nil);
     {$ENDIF}
       @WDAPI_GetListRecNum := GetProcAddress(DLLHandle,'WDAPI_GetListRecNum');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetListRecNum <> nil);
     {$ENDIF}
       @WDAPI_GetAutoName := GetProcAddress(DLLHandle,'WDAPI_GetAutoName');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetAutoName <> nil);
     {$ENDIF}
//   /***************************
//   /need to revisit
     //    @WDAPI_GetLastError := GetProcAddress(DLLHandle,'WDAPI_GetLastError');
     {$IFDEF WIN32}
//   /    Assert(@WDAPI_GetLastError <> nil);
     {$ENDIF}
//   /***************************
       @WDAPI_GetPGList := GetProcAddress(DLLHandle,'WDAPI_GetPGList');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetPGList <> nil);
     {$ENDIF}
       @WDAPI_GetRelation := GetProcAddress(DLLHandle,'WDAPI_GetRelation');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetRelation <> nil);
     {$ENDIF}
       @WDAPI_GetTableList := GetProcAddress(DLLHandle,'WDAPI_GetTableList');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetTableList <> nil);
     {$ENDIF}
       @WDAPI_GetUserInfo := GetProcAddress(DLLHandle,'WDAPI_GetUserInfo');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetUserInfo <> nil);
     {$ENDIF}
       @WDAPI_GetVersionList := GetProcAddress(DLLHandle,'WDAPI_GetVersionList');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetVersionList <> nil);
     {$ENDIF}
       @WDAPI_GetZipList := GetProcAddress(DLLHandle,'WDAPI_GetZipList');
     {$IFDEF WIN32}
       Assert(@WDAPI_GetZipList <> nil);
     {$ENDIF}
       @WDAPI_Init := GetProcAddress(DLLHandle,'WDAPI_Init');
     {$IFDEF WIN32}
       Assert(@WDAPI_Init <> nil);
     {$ENDIF}
       @WDAPI_IsCodeInTable := GetProcAddress(DLLHandle,'WDAPI_IsCodeInTable');
     {$IFDEF WIN32}
       Assert(@WDAPI_IsCodeInTable <> nil);
     {$ENDIF}
       @WDAPI_IsPGField := GetProcAddress(DLLHandle,'WDAPI_IsPGField');
     {$IFDEF WIN32}
       Assert(@WDAPI_IsPGField <> nil);
     {$ENDIF}
       @WDAPI_IsProfile := GetProcAddress(DLLHandle,'WDAPI_IsProfile');
     {$IFDEF WIN32}
       Assert(@WDAPI_IsProfile <> nil);
     {$ENDIF}
       @WDAPI_RenameFile := GetProcAddress(DLLHandle,'WDAPI_RenameFile');
     {$IFDEF WIN32}
       Assert(@WDAPI_RenameFile <> nil);
     {$ENDIF}
       @WDAPI_ReReadRecord := GetProcAddress(DLLHandle,'WDAPI_ReReadRecord');
     {$IFDEF WIN32}
       Assert(@WDAPI_ReReadRecord <> nil);
     {$ENDIF}
       @WDAPI_SetField := GetProcAddress(DLLHandle,'WDAPI_SetField');
     {$IFDEF WIN32}
       Assert(@WDAPI_SetField <> nil);
     {$ENDIF}
       @WDAPI_SetRelation := GetProcAddress(DLLHandle,'WDAPI_SetRelation');
     {$IFDEF WIN32}
       Assert(@WDAPI_SetRelation <> nil);
     {$ENDIF}
       @WDAPI_SortList := GetProcAddress(DLLHandle,'WDAPI_SortList');
     {$IFDEF WIN32}
       Assert(@WDAPI_SortList <> nil);
     {$ENDIF}
       @WDAPI_IsFindTemplateOK := GetProcAddress(DLLHandle,'WDAPI_IsFindTemplateOK');
     {$IFDEF WIN32}
       Assert(@WDAPI_IsFindTemplateOK <> nil);
     {$ENDIF}
       @WDAPI_WORLDOX_Open := GetProcAddress(DLLHandle,'WDAPI_WORLDOX_Open');
     {$IFDEF WIN32}
       Assert(@WDAPI_WORLDOX_Open <> nil);
     {$ENDIF}
       @WDAPI_WORLDOX_SaveAs := GetProcAddress(DLLHandle,'WDAPI_WORLDOX_SaveAs');
     {$IFDEF WIN32}
       Assert(@WDAPI_WORLDOX_SaveAs <> nil);
     {$ENDIF}
       @WDAPI_TranslateString := GetProcAddress(DLLHandle,'WDAPI_TranslateString');
     {$IFDEF WIN32}
       Assert(@WDAPI_TranslateString <> nil);
     {$ENDIF}
//   /***********************************
//   /need to re visit
//   /    @WDAPI_NewMessage := GetProcAddress(DLLHandle,'WDAPI_NewMessage');
     {$IFDEF WIN32}
//   /    Assert(@WDAPI_NewMessage <> nil);
     {$ENDIF}
//   /*************************************
   end
   else
   begin
      DLLLoaded := False;
      { Error: WDAPI32.DLL could not be loaded !! }
   end;
   {$IFNDEF MSDOS}
   SetErrorMode(ErrorMode)
   {$ENDIF}
end {LoadDLL};

begin
  LoadDLL;
end.
