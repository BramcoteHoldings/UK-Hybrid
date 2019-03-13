unit dtengine_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 45604 $
// File generated on 23/04/2014 15:53:14 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll (1)
// LIBID: {A967E5C4-B0E1-11D3-B57C-00105AA461D0}
// LCID: 0
// Helpfile: 
// HelpString: dtSearch Text Retrieval Engine
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'string' of IServer.ConvertString changed to 'string_'
//   Hint: Member 'Or' of 'ISearchFilter' changed to 'Or_'
//   Hint: Member 'And' of 'ISearchFilter' changed to 'And_'
//   Error creating palette bitmap of (TServer) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TJobErrorInfo) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TIndexJob) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TSearchJob) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TFileConverter) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TSearchReportJob) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TOptions) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TWordListBuilder) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TSearchResults) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TSearchFilter) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
//   Error creating palette bitmap of (TIndexCache) : Server C:\Program Files (x86)\dtSearch Developer\bin\dten600.dll contains no icons
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  dtengineMajorVersion = 1;
  dtengineMinorVersion = 0;

  LIBID_dtengine: TGUID = '{A967E5C4-B0E1-11D3-B57C-00105AA461D0}';

  IID_IServer: TGUID = '{A967E5D1-B0E1-11D3-B57C-00105AA461D0}';
  CLASS_Server: TGUID = '{A967E5D2-B0E1-11D3-B57C-00105AA461D0}';
  IID_IJobErrorInfo: TGUID = '{A967E5D5-B0E1-11D3-B57C-00105AA461D0}';
  CLASS_JobErrorInfo: TGUID = '{A967E5D6-B0E1-11D3-B57C-00105AA461D0}';
  IID_IIndexJob: TGUID = '{697DF022-B24E-11D3-B57C-00105AA461D0}';
  CLASS_IndexJob: TGUID = '{697DF023-B24E-11D3-B57C-00105AA461D0}';
  IID_ISearchJob: TGUID = '{697DF024-B24E-11D3-B57C-00105AA461D0}';
  CLASS_SearchJob: TGUID = '{697DF025-B24E-11D3-B57C-00105AA461D0}';
  IID_ISearchFilter: TGUID = '{6D615A9E-73D4-4FEF-A0DA-6973C26C17B2}';
  IID_IIndexCache: TGUID = '{84FE534D-B891-4E87-9D3D-6969F71E3628}';
  IID_IFileConverter: TGUID = '{697DF026-B24E-11D3-B57C-00105AA461D0}';
  CLASS_FileConverter: TGUID = '{697DF027-B24E-11D3-B57C-00105AA461D0}';
  IID_ISearchResults: TGUID = '{798CBE34-B27D-11D3-B57C-00105AA461D0}';
  IID_ISearchReportJob: TGUID = '{697DF028-B24E-11D3-B57C-00105AA461D0}';
  CLASS_SearchReportJob: TGUID = '{697DF029-B24E-11D3-B57C-00105AA461D0}';
  IID_IOptions: TGUID = '{697DF02A-B24E-11D3-B57C-00105AA461D0}';
  CLASS_Options: TGUID = '{697DF02B-B24E-11D3-B57C-00105AA461D0}';
  IID_IWordListBuilder: TGUID = '{697DF02C-B24E-11D3-B57C-00105AA461D0}';
  CLASS_WordListBuilder: TGUID = '{697DF02D-B24E-11D3-B57C-00105AA461D0}';
  CLASS_SearchResults: TGUID = '{798CBE35-B27D-11D3-B57C-00105AA461D0}';
  CLASS_SearchFilter: TGUID = '{36A0E3F8-5BD1-4ED6-B6D1-4519A2FC6D23}';
  CLASS_IndexCache: TGUID = '{C6D67878-15E2-4488-9981-2182B0652E8E}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum IndexingStep
type
  IndexingStep = TOleEnum;
const
  ixStepNone = $00000000;
  ixStepBegin = $00000001;
  ixStepCreatingIndex = $00000002;
  ixStepCheckingFiles = $00000003;
  ixStepReadingFiles = $00000004;
  ixStepStoringWords = $00000005;
  ixStepMerging = $00000006;
  ixStepCompressing = $00000007;
  ixStepDone = $00000008;
  ixStepVerifyingIndex = $00000009;
  ixStepMergingIndexes = $0000000A;

// Constants for enum SortType
type
  SortType = TOleEnum;
const
  stSortDescending = $00000000;
  stSortAscending = $00000002;
  stSortByName = $00000004;
  stSortByDate = $00000008;
  stSortByHits = $00000010;
  stSortBySize = $00000020;
  stSortByUserField = $00000040;
  stSortByIndex = $00000080;
  stSortByType = $00000100;
  stSortByTitle = $00000200;
  stSortByLocation = $00000400;
  stSortByTime = $00000800;
  stSortCaseInsensitive = $00010000;
  stSortNumeric = $00020000;
  stSortPdfUseTitleAsName = $00040000;
  stSortHtmlUseTitleAsName = $00080000;

// Constants for enum SortTypeDts
type
  SortTypeDts = TOleEnum;
const
  dtsSortUndefined = $00000000;
  dtsSortNone = $00000001;
  dtsSortAscending = $00000002;
  dtsSortDescending = $00000000;
  dtsSortByName = $00000004;
  dtsSortByDate = $00000008;
  dtsSortByHits = $00000010;
  dtsSortBySize = $00000020;
  dtsSortByField = $00000040;
  dtsSortByUserField = $00000040;
  dtsSortByIndex = $00000080;
  dtsSortByType = $00000100;
  dtsSortByTitle = $00000200;
  dtsSortByLocation = $00000400;
  dtsSortByTime = $00000800;
  dtsSortBySortKey = $00001000;
  dtsSortCaseInsensitive = $00010000;
  dtsSortNumeric = $00020000;
  dtsSortPdfUseTitleAsName = $00040000;
  dtsSortHtmlUseTitleAsName = $00080000;
  dtsSortFloatNumeric = $00100000;
  dtsSortCleanText = $00200000;
  dtsSortByHitCount = $00400000;
  dtsSortByRelevanceScore = $00800000;

// Constants for enum ConvertPathFlags
type
  ConvertPathFlags = TOleEnum;
const
  dtsCpMakeVirtual = $00000001;
  dtsCpMakeLocal = $00000002;
  dtsCpMakeUNC = $00000008;
  dtsCpRefreshMappings = $00000010;
  dtsCpStoreInRegistry = $00000020;
  dtsCpReadFromRegistry = $00000040;

// Constants for enum OutputFormat
type
  OutputFormat = TOleEnum;
const
  itHTML = $000000E2;
  itAnsi = $000000CA;
  itRTF = $000000D4;
  itUTF = $000000EE;
  itXML = $000000EA;
  itUTF8 = $000000EE;
  itUnformattedHTML = $00000100;
  it_ContentAsXml = $0000006C;

// Constants for enum InputType
type
  InputType = TOleEnum;
const
  it_Ami = $000000C9;
  it_Ansi = $000000CA;
  it_Ascii = $000000CB;
  it_Binary = $000000CC;
  it_CompoundDoc = $000000CD;
  it_DBF = $000000CE;
  it_FilteredBinary = $000000CF;
  it_HyperText = $000000D0;
  it_MS_Word = $000000D1;
  it_MS_Works = $000000D2;
  it_Multimate = $000000D3;
  it_RTF = $000000D4;
  it_WS_2000 = $000000D5;
  it_WS_5 = $000000D6;
  it_WinWrite = $000000D7;
  it_WordForWin = $000000D8;
  it_WordForWin6 = $000000D9;
  it_WordPerfect42 = $000000DA;
  it_WordPerfect5 = $000000DB;
  it_WordPerfect6 = $000000DC;
  it_WordStar = $000000DD;
  it_XyWrite = $000000DE;
  it_ZIP = $000000DF;
  it_Properties = $000000E0;
  it_Excel5 = $000000E1;
  it_HTML = $000000E2;
  it_PDF = $000000E3;
  it_WordForWin97 = $000000E4;
  it_Excel97 = $000000E5;
  it_PowerPoint = $000000E6;
  it_EncryptedHtml = $000000E7;
  it_DatabaseRecord = $000000E8;
  it_SegmentedText = $000000E9;
  it_XML = $000000EA;
  it_WordPerfectEmbedded = $000000EB;
  it_Unicode = $000000EC;
  it_EudoraMessage = $000000ED;
  it_Utf8 = $000000EE;
  it_DjVu = $000000EF;
  it_OutlookExpressMessage = $000000F0;
  it_MimeMessage = $000000F1;
  it_SingleByteText = $000000F2;
  it_MBoxArchive = $000000F3;
  it_FilteredBinaryUnicode = $000000F4;
  it_ZIP_zlib = $000000F5;
  it_OutlookMsgFile = $000000F6;
  it_TreepadHjtFile = $000000F7;
  it_PfsProfessionalWrite = $000000F8;
  it_FilteredBinaryUnicodeStream = $000000F9;
  it_DocFile = $000000FA;
  it_Media = $000000FB;
  it_NonTextData = $000000FC;
  it_EML = $000000FD;
  it_MicrosoftWord = $000000FE;
  it_Utf8F = $000000FF;
  it_UnformattedHTML = $00000100;
  it_DatabaseRecord2 = $00000101;
  it_Excel2003Xml = $00000102;
  it_Word2003Xml = $00000103;
  it_OpenOfficeDocument = $00000104;
  it_CSV = $00000105;
  it_MicrosoftAccess = $00000106;
  it_XBase = $00000107;
  it_OutlookExpressMessageStore = $00000108;
  it_IFilter = $00000109;
  it_Gzip = $0000010A;
  it_Excel4 = $0000010B;
  it_Word12 = $0000010C;
  it_Excel12 = $0000010D;
  it_PowerPoint12 = $0000010E;
  it_TNEF = $0000010F;
  it_XPS = $00000110;
  it_WMF = $00000111;
  it_EMF = $00000112;
  it_TAR = $00000113;
  it_Excel2 = $00000115;
  it_Excel3 = $00000116;
  it_MBoxArchive2 = $00000117;
  it_Lotus123 = $00000118;
  it_MsWorksWps4 = $00000119;
  it_MsWorksWps6 = $0000011A;
  it_QuattroPro = $0000011B;
  it_QuattroPro8 = $0000011C;
  it_OutlookMsgAsContainer = $0000011D;
  it_MimeContainer = $0000011E;
  it_PdfWithAttachments = $0000011F;
  it_MicrosoftAccess2 = $00000120;
  it_FlashSWF = $00000121;
  it_RAR = $00000122;
  it_LastInternal = $000003EA;

// Constants for enum ErrorCode
type
  ErrorCode = TOleEnum;
const
  dtsErAccIndex = $00000001;
  dtsAskDiskFullOverride = $00000002;
  dtsErOpenTemp = $00000003;
  dtsInfNoFilesToIndex = $00000004;
  dtsErIxWrongVersion = $00000005;
  dtsErIxInterrupted = $00000006;
  dtsErAccDirectory = $00000007;
  dtsErWorkDirFail = $00000008;
  dtsErAccFile = $00000009;
  dtsErFileCorrupt = $0000000A;
  dtsErIndexFull = $0000000B;
  dtsErPdfLzwNotLicensed = $0000000C;
  dtsErTimeout = $0000000D;
  dtsErCreateFailed = $0000000E;
  dtsErCommitFailed = $0000000F;
  dtsErFileNotFound = $00000010;
  dtsErFileEncrypted = $00000011;
  dtsErLowMemory = $00000070;
  dtsErBadRequest = $00000074;
  dtsErSearchRequestEmpty = $00000075;
  dtsErSearchLimitReached = $00000078;
  dtsErNoFilesRetrieved = $0000007A;
  dtsErRequestTooLong = $00000087;
  dtsErMaxWords = $00000089;
  dtsErWrFile = $0000008F;
  dtsErDiskFull = $0000009F;
  dtsErIxCorrupt = $000000A2;
  dtsErAccessDenied = $000000B1;
  dtsErConnectFailed = $000000C9;
  dtsErAccCachedDoc = $000000CA;
  dtsErIndexingError = $000000CB;

// Constants for enum SearchFlag
type
  SearchFlag = TOleEnum;
const
  dtsSearchFuzzy = $00000001;
  dtsSearchPhonic = $00000002;
  dtsSearchStemming = $00000004;
  dtsSearchNatural = $00000008;
  dtsSearchSynonyms = $00000010;
  dtsSearchUserSynonyms = $00000020;
  dtsSearchWordNetSynonyms = $00000040;
  dtsSearchWordNetRelated = $00000080;
  dtsSearchAllSynonyms = $000000F0;
  dtsSearchWantHitsByWord = $00000100;
  dtsWlbListFields = $00000100;
  dtsSearchNoDocInfo = $00000200;
  dtsSearchWantHitsByWord2 = $00000400;
  dtsSearchWantHitsArray = $00000800;
  dtsSearchDelayDocInfo = $00001000;
  dtsSearchExternalSynonyms = $00002000;
  dtsSearchRegularExpression = $00004000;
  dtsSearchWantHitDetails = $00008000;
  dtsSearchAutoTermWeight = $00010000;
  dtsSearchTypeAllWords = $00020000;
  dtsSearchTypeAnyWords = $00040000;
  dtsSearchSelectMostRecent = $00080000;
  dtsSearchPositionalScoring = $00100000;
  dtsSearchApplyLanguageAnalyzer = $00200000;

// Constants for enum ListingFlag
type
  ListingFlag = TOleEnum;
const
  dtsListHitCount = $00000001;
  dtsListHits = $00000002;
  dtsListHeader = $00000400;
  dtsListAppend = $00000800;
  dtsListNoDisk = $00001000;

// Constants for enum ConvertFlags
type
  ConvertFlags = TOleEnum;
const
  dtsConvertInputIsHtml = $00000001;
  dtsConvertSkipHiddenHits = $00000002;
  dtsConvertRemoveScripts = $00000004;
  dtsConvertInputIsNotHtml = $00000008;
  dtsConvertXmlToXml = $00000040;
  dtsConvertGetFromCache = $00002000;
  dtsConvertInlineContainer = $00004000;
  dtsConvertAutoUpdateSearch = $00020000;

// Constants for enum ReportFlags
type
  ReportFlags = TOleEnum;
const
  dtsReportByParagraph = $00000001;
  dtsReportByWord = $00000002;
  dtsReportIncludeAll = $00000004;
  dtsReportWholeFile = $00000008;
  dtsReportByWordExact = $00000010;
  dtsReportGetFromCache = $00000020;
  dtsReportStoreInResults = $00000040;
  dtsReportLimitContiguousContext = $00000080;
  dtsReportIncludeFileStart = $00000100;

// Constants for enum DebugLogFlags
type
  DebugLogFlags = TOleEnum;
const
  dtsLogTime = $00000001;
  dtsLogCommit = $00000002;
  dtsLogAppend = $00000004;
  dtsLogMemory = $00000008;
  dtsLogToDbwin = $00000010;
  dtsLogWarnOnFailure = $00000020;
  dtsLogTruncate = $00000040;
  dtsCrashLog = $00001000;

// Constants for enum FieldFlags
type
  FieldFlags = TOleEnum;
const
  dtsoFfSkipFilenameField = $00000001;
  dtsoFfSkipDocumentProperties = $00000002;
  dtsoFfHtmlShowLinks = $00000004;
  dtsoFfHtmlShowImgSrc = $00000008;
  dtsoFfHtmlShowComments = $00000010;
  dtsoFfHtmlShowScripts = $00000020;
  dtsoFfHtmlShowStylesheets = $00000040;
  dtsoFfHtmlShowMetatags = $00000080;
  dtsoFfHtmlShowNoframesContent = $00000100;
  dtsoFfHtmlShowHiddenContent = $000001FC;
  dtsoFfHtmlNoHeaderFields = $00000200;
  dtsoFfOfficeSkipHiddenContent = $00000400;
  dtsoFfXmlHideFieldNames = $00000800;
  dtsoFfShowNtfsProperties = $00001000;
  dtsoFfXmlSkipAttributes = $00002000;
  dtsoFfSkipFilenameFieldPath = $00004000;
  dtsoFfPdfSkipAttachments = $00008000;
  dtsoFfHtmlSkipInputValues = $00010000;
  dtsoFfHtmlSkipImageAlt = $00020000;
  dtsoFfIncludeFileTypeField = $00040000;
  dtsoFfIncludeFileTypeIdField = $00080000;
  dtsoFfSkipDataSourceFields = $00100000;
  dtsoFfSkipEmailHeaders = $00200000;

// Constants for enum EncodingType
type
  EncodingType = TOleEnum;
const
  dtsEncodingUCS16 = $00000001;
  dtsEncodingUTF8 = $00000002;
  dtsEncodingUTF8HTML = $00000003;
  dtsEncodingHex = $00000004;

// Constants for enum HyphenSetting
type
  HyphenSetting = TOleEnum;
const
  dtsoHyphenAsIgnore = $00000001;
  dtsoHyphenAsHyphen = $00000002;
  dtsoHyphenAsSpace = $00000003;
  dtsoHyphenAll = $00000004;

// Constants for enum BinaryFilesSetting
type
  BinaryFilesSetting = TOleEnum;
const
  dtsoFilterBinary = $00000001;
  dtsoIndexBinary = $00000002;
  dtsoIndexSkipBinary = $00000003;
  dtsoFilterBinaryUnicode = $00000004;

// Constants for enum UnicodeFilterFlags
type
  UnicodeFilterFlags = TOleEnum;
const
  dtsoUfExtractAsHtml = $00000001;
  dtsoUfOverlapBlocks = $00000002;
  dtsoUfAutoWordBreakByLength = $00000004;
  dtsoUfAutoWordBreakByCase = $00000008;
  dtsoUfAutoWordBreakOnDigit = $00000010;
  dtsoUfAutoWordBreakOverlapWords = $00000020;
  dtsoUfFilterFailedDocs = $00000040;
  dtsoUfFilterAllDocs = $00000080;

// Constants for enum IndexingFlags
type
  IndexingFlags = TOleEnum;
const
  dtsAlwaysAdd = $00000001;
  dtsCheckDiskSpace = $00000002;
  dtsIndexCreateCaseSensitive = $00000004;
  dtsIndexCreateAccentSensitive = $00000008;
  dtsIndexCreateRelativePaths = $00000010;
  dtsIndexResumeUpdate = $00000020;
  dtsIndexCacheText = $00000040;
  dtsIndexCacheOriginalFile = $00000080;
  dtsIndexCreateVersion6 = $00000100;
  dtsIndexCacheTextWithoutFields = $00000200;
  dtsIndexKeepExistingDocIds = $00000400;
  dtsIndexCreateVersion7 = $10000000;
  dtsIndexTestDataSource = $80000000;

// Constants for enum TextFlags
type
  TextFlags = TOleEnum;
const
  dtsoTfSkipNumericValues = $00000001;
  dtsoTfSkipXFirstAndLast = $00000002;
  dtsoTfRecognizeDates = $00000004;
  dtsoTfRecognizeDatesPresumeDMY = $00000008;
  dtsoTfRecognizeDatesPresumeYMD = $00000010;
  dtsoTfAutoBreakCJK = $00000020;
  dtsoTfDisableBetaParsers = $00400000;
  dtsoTfEnableBetaParsers = $00800000;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IServer = interface;
  IServerDisp = dispinterface;
  IJobErrorInfo = interface;
  IJobErrorInfoDisp = dispinterface;
  IIndexJob = interface;
  IIndexJobDisp = dispinterface;
  ISearchJob = interface;
  ISearchJobDisp = dispinterface;
  ISearchFilter = interface;
  ISearchFilterDisp = dispinterface;
  IIndexCache = interface;
  IIndexCacheDisp = dispinterface;
  IFileConverter = interface;
  IFileConverterDisp = dispinterface;
  ISearchResults = interface;
  ISearchResultsDisp = dispinterface;
  ISearchReportJob = interface;
  ISearchReportJobDisp = dispinterface;
  IOptions = interface;
  IOptionsDisp = dispinterface;
  IWordListBuilder = interface;
  IWordListBuilderDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Server = IServer;
  JobErrorInfo = IJobErrorInfo;
  IndexJob = IIndexJob;
  SearchJob = ISearchJob;
  FileConverter = IFileConverter;
  SearchReportJob = ISearchReportJob;
  Options = IOptions;
  WordListBuilder = IWordListBuilder;
  SearchResults = ISearchResults;
  SearchFilter = ISearchFilter;
  IndexCache = IIndexCache;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PInteger1 = ^Integer; {*}


// *********************************************************************//
// Interface: IServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A967E5D1-B0E1-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IServer = interface(IDispatch)
    ['{A967E5D1-B0E1-11D3-B57C-00105AA461D0}']
    function Get_DebugLogName: WideString; safecall;
    procedure Set_DebugLogName(const pVal: WideString); safecall;
    function Get_HomeDir: WideString; safecall;
    procedure Set_HomeDir(const pVal: WideString); safecall;
    function Get_PrivateDir: WideString; safecall;
    procedure Set_PrivateDir(const pVal: WideString); safecall;
    procedure Set_SendTestError(Param1: WordBool); safecall;
    procedure Set_SendTestInfo(Param1: WordBool); safecall;
    procedure Set_SendTestQuestion(Param1: WordBool); safecall;
    function Get_MajorVersion: Smallint; safecall;
    function Get_MinorVersion: Smallint; safecall;
    function Get_Build: Integer; safecall;
    function Get_Initialized: WordBool; safecall;
    function Get_InitMessage: WideString; safecall;
    procedure Set_LzwEnableCode(Param1: Integer); safecall;
    function Get_Errors: IDispatch; safecall;
    function Get_MessageHandler: IDispatch; safecall;
    procedure _Set_MessageHandler(const pVal: IDispatch); safecall;
    function Initialize: WordBool; safecall;
    procedure Shutdown; safecall;
    function Get_AllocatedObjectList: WideString; safecall;
    function NewIndexJob: IDispatch; safecall;
    function NewSearchJob: IDispatch; safecall;
    function NewOptions: IDispatch; safecall;
    function NewFileConverter: IDispatch; safecall;
    function NewWordListBuilder: IDispatch; safecall;
    function ConvertPath(const path: WideString; siteId: Integer; flags: Integer; 
                         const tableLocation: WideString): WideString; safecall;
    procedure SetDebugLogging(const LogName: WideString; flags: Integer); safecall;
    function NewSearchResults: IDispatch; safecall;
    function ConvertString(const string_: WideString; inEncoding: Integer; outEncoding: Integer): WideString; safecall;
    function NewSearchFilter: IDispatch; safecall;
    function NewIndexCache: IDispatch; safecall;
    property DebugLogName: WideString read Get_DebugLogName write Set_DebugLogName;
    property HomeDir: WideString read Get_HomeDir write Set_HomeDir;
    property PrivateDir: WideString read Get_PrivateDir write Set_PrivateDir;
    property SendTestError: WordBool write Set_SendTestError;
    property SendTestInfo: WordBool write Set_SendTestInfo;
    property SendTestQuestion: WordBool write Set_SendTestQuestion;
    property MajorVersion: Smallint read Get_MajorVersion;
    property MinorVersion: Smallint read Get_MinorVersion;
    property Build: Integer read Get_Build;
    property Initialized: WordBool read Get_Initialized;
    property InitMessage: WideString read Get_InitMessage;
    property LzwEnableCode: Integer write Set_LzwEnableCode;
    property Errors: IDispatch read Get_Errors;
    property MessageHandler: IDispatch read Get_MessageHandler write _Set_MessageHandler;
    property AllocatedObjectList: WideString read Get_AllocatedObjectList;
  end;

// *********************************************************************//
// DispIntf:  IServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A967E5D1-B0E1-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IServerDisp = dispinterface
    ['{A967E5D1-B0E1-11D3-B57C-00105AA461D0}']
    property DebugLogName: WideString dispid 1;
    property HomeDir: WideString dispid 2;
    property PrivateDir: WideString dispid 3;
    property SendTestError: WordBool writeonly dispid 4;
    property SendTestInfo: WordBool writeonly dispid 5;
    property SendTestQuestion: WordBool writeonly dispid 6;
    property MajorVersion: Smallint readonly dispid 7;
    property MinorVersion: Smallint readonly dispid 8;
    property Build: Integer readonly dispid 9;
    property Initialized: WordBool readonly dispid 10;
    property InitMessage: WideString readonly dispid 11;
    property LzwEnableCode: Integer writeonly dispid 13;
    property Errors: IDispatch readonly dispid 14;
    property MessageHandler: IDispatch dispid 16;
    function Initialize: WordBool; dispid 17;
    procedure Shutdown; dispid 18;
    property AllocatedObjectList: WideString readonly dispid 19;
    function NewIndexJob: IDispatch; dispid 20;
    function NewSearchJob: IDispatch; dispid 21;
    function NewOptions: IDispatch; dispid 22;
    function NewFileConverter: IDispatch; dispid 23;
    function NewWordListBuilder: IDispatch; dispid 24;
    function ConvertPath(const path: WideString; siteId: Integer; flags: Integer; 
                         const tableLocation: WideString): WideString; dispid 25;
    procedure SetDebugLogging(const LogName: WideString; flags: Integer); dispid 26;
    function NewSearchResults: IDispatch; dispid 27;
    function ConvertString(const string_: WideString; inEncoding: Integer; outEncoding: Integer): WideString; dispid 28;
    function NewSearchFilter: IDispatch; dispid 29;
    function NewIndexCache: IDispatch; dispid 30;
  end;

// *********************************************************************//
// Interface: IJobErrorInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A967E5D5-B0E1-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IJobErrorInfo = interface(IDispatch)
    ['{A967E5D5-B0E1-11D3-B57C-00105AA461D0}']
    function Get_Count: Integer; safecall;
    function Get_Message(iMessage: Integer): WideString; safecall;
    function Get_Code(iMessage: Integer): Integer; safecall;
    function Get_Arg1(iMessage: Integer): WideString; safecall;
    function Get_Arg2(iMessage: Integer): WideString; safecall;
    function Format: WideString; safecall;
    property Count: Integer read Get_Count;
    property Message[iMessage: Integer]: WideString read Get_Message;
    property Code[iMessage: Integer]: Integer read Get_Code;
    property Arg1[iMessage: Integer]: WideString read Get_Arg1;
    property Arg2[iMessage: Integer]: WideString read Get_Arg2;
  end;

// *********************************************************************//
// DispIntf:  IJobErrorInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A967E5D5-B0E1-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IJobErrorInfoDisp = dispinterface
    ['{A967E5D5-B0E1-11D3-B57C-00105AA461D0}']
    property Count: Integer readonly dispid 1;
    property Message[iMessage: Integer]: WideString readonly dispid 2;
    property Code[iMessage: Integer]: Integer readonly dispid 3;
    property Arg1[iMessage: Integer]: WideString readonly dispid 4;
    property Arg2[iMessage: Integer]: WideString readonly dispid 5;
    function Format: WideString; dispid 6;
  end;

// *********************************************************************//
// Interface: IIndexJob
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF022-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IIndexJob = interface(IDispatch)
    ['{697DF022-B24E-11D3-B57C-00105AA461D0}']
    function Get_ActionAdd: WordBool; safecall;
    procedure Set_ActionAdd(pVal: WordBool); safecall;
    function Get_ActionCompress: WordBool; safecall;
    procedure Set_ActionCompress(pVal: WordBool); safecall;
    function Get_ActionCreate: WordBool; safecall;
    procedure Set_ActionCreate(pVal: WordBool); safecall;
    function Get_ActionRemoveDeleted: WordBool; safecall;
    procedure Set_ActionRemoveDeleted(pVal: WordBool); safecall;
    function Get_ActionRemoveListed: WordBool; safecall;
    procedure Set_ActionRemoveListed(pVal: WordBool); safecall;
    function Get_AllowConcurrentAccess: WordBool; safecall;
    procedure Set_AllowConcurrentAccess(pVal: WordBool); safecall;
    function Get_CreateAccentSensitive: WordBool; safecall;
    procedure Set_CreateAccentSensitive(pVal: WordBool); safecall;
    function Get_CreateCaseSensitive: WordBool; safecall;
    procedure Set_CreateCaseSensitive(pVal: WordBool); safecall;
    procedure _Set_DataSourceToIndex(const Param1: IDispatch); safecall;
    function Get_IndexName: WideString; safecall;
    procedure Set_IndexName(const pVal: WideString); safecall;
    function Get_IndexPath: WideString; safecall;
    procedure Set_IndexPath(const pVal: WideString); safecall;
    procedure _Set_StatusHandler(const Param1: IDispatch); safecall;
    function Get_StoredFields: WideString; safecall;
    procedure Set_StoredFields(const pVal: WideString); safecall;
    function Get_ToAddDir: WideString; safecall;
    procedure Set_ToAddDir(const pVal: WideString); safecall;
    function Get_ToAddDirListName: WideString; safecall;
    procedure Set_ToAddDirListName(const pVal: WideString); safecall;
    function Get_ToAddExcludeFilters: WideString; safecall;
    procedure Set_ToAddExcludeFilters(const pVal: WideString); safecall;
    function Get_ToAddFileListName: WideString; safecall;
    procedure Set_ToAddFileListName(const pVal: WideString); safecall;
    function Get_ToAddIncludeFilters: WideString; safecall;
    procedure Set_ToAddIncludeFilters(const pVal: WideString); safecall;
    function Get_ToRemoveListName: WideString; safecall;
    procedure Set_ToRemoveListName(const pVal: WideString); safecall;
    function Get_IsThreadDone: WordBool; safecall;
    function Get_Errors: IDispatch; safecall;
    function Get_StatusIndexingStep: Integer; safecall;
    function Get_StatusPercentDone: Integer; safecall;
    function Get_StatusCurrentFileLocation: WideString; safecall;
    function Get_StatusCurrentFileName: WideString; safecall;
    function Get_StatusCurrentFileType: WideString; safecall;
    function Get_StatusDiskAvailKB: Integer; safecall;
    function Get_StatusWordsInIndex: Integer; safecall;
    function Get_StatusDocsInIndex: Integer; safecall;
    function Get_StatusBytesIndexedKB: Integer; safecall;
    function Get_StatusBytesToIndexKB: Integer; safecall;
    function Get_StatusCurrentFilePercentDone: Integer; safecall;
    function Execute: Smallint; safecall;
    procedure ExecuteInThread; safecall;
    procedure AbortThread; safecall;
    procedure AbortThreadImmediate; safecall;
    function Get_CreateAddToLibrary: WordBool; safecall;
    procedure Set_CreateAddToLibrary(pVal: WordBool); safecall;
    function Get_CreateRelativePaths: WordBool; safecall;
    procedure Set_CreateRelativePaths(pVal: WordBool); safecall;
    function GetIndexInfo: WideString; safecall;
    function GetIndexInfoItem(const item: WideString): Integer; safecall;
    function Get_MaxMemToUseMB: Integer; safecall;
    procedure Set_MaxMemToUseMB(pVal: Integer); safecall;
    function Get_IndexingFlags: Integer; safecall;
    procedure Set_IndexingFlags(pVal: Integer); safecall;
    function Get_AutoCommitIntervalMB: Integer; safecall;
    procedure Set_AutoCommitIntervalMB(pVal: Integer); safecall;
    function Get_ActionVerify: WordBool; safecall;
    procedure Set_ActionVerify(pVal: WordBool); safecall;
    function Get_ActionMerge: WordBool; safecall;
    procedure Set_ActionMerge(pVal: WordBool); safecall;
    function Get_IndexesToMerge: WideString; safecall;
    procedure Set_IndexesToMerge(const pVal: WideString); safecall;
    function IsThreadDoneWait(millisecondsToWait: Integer): WordBool; safecall;
    function Get_ExecuteThreadHandle: Integer; safecall;
    function Get_TempFileDir: WideString; safecall;
    procedure Set_TempFileDir(const pVal: WideString); safecall;
    function Get_StartingDocId: Integer; safecall;
    procedure Set_StartingDocId(pVal: Integer); safecall;
    function Get_EnumerableFields: WideString; safecall;
    procedure Set_EnumerableFields(const pVal: WideString); safecall;
    property ActionAdd: WordBool read Get_ActionAdd write Set_ActionAdd;
    property ActionCompress: WordBool read Get_ActionCompress write Set_ActionCompress;
    property ActionCreate: WordBool read Get_ActionCreate write Set_ActionCreate;
    property ActionRemoveDeleted: WordBool read Get_ActionRemoveDeleted write Set_ActionRemoveDeleted;
    property ActionRemoveListed: WordBool read Get_ActionRemoveListed write Set_ActionRemoveListed;
    property AllowConcurrentAccess: WordBool read Get_AllowConcurrentAccess write Set_AllowConcurrentAccess;
    property CreateAccentSensitive: WordBool read Get_CreateAccentSensitive write Set_CreateAccentSensitive;
    property CreateCaseSensitive: WordBool read Get_CreateCaseSensitive write Set_CreateCaseSensitive;
    property DataSourceToIndex: IDispatch write _Set_DataSourceToIndex;
    property IndexName: WideString read Get_IndexName write Set_IndexName;
    property IndexPath: WideString read Get_IndexPath write Set_IndexPath;
    property StatusHandler: IDispatch write _Set_StatusHandler;
    property StoredFields: WideString read Get_StoredFields write Set_StoredFields;
    property ToAddDir: WideString read Get_ToAddDir write Set_ToAddDir;
    property ToAddDirListName: WideString read Get_ToAddDirListName write Set_ToAddDirListName;
    property ToAddExcludeFilters: WideString read Get_ToAddExcludeFilters write Set_ToAddExcludeFilters;
    property ToAddFileListName: WideString read Get_ToAddFileListName write Set_ToAddFileListName;
    property ToAddIncludeFilters: WideString read Get_ToAddIncludeFilters write Set_ToAddIncludeFilters;
    property ToRemoveListName: WideString read Get_ToRemoveListName write Set_ToRemoveListName;
    property IsThreadDone: WordBool read Get_IsThreadDone;
    property Errors: IDispatch read Get_Errors;
    property StatusIndexingStep: Integer read Get_StatusIndexingStep;
    property StatusPercentDone: Integer read Get_StatusPercentDone;
    property StatusCurrentFileLocation: WideString read Get_StatusCurrentFileLocation;
    property StatusCurrentFileName: WideString read Get_StatusCurrentFileName;
    property StatusCurrentFileType: WideString read Get_StatusCurrentFileType;
    property StatusDiskAvailKB: Integer read Get_StatusDiskAvailKB;
    property StatusWordsInIndex: Integer read Get_StatusWordsInIndex;
    property StatusDocsInIndex: Integer read Get_StatusDocsInIndex;
    property StatusBytesIndexedKB: Integer read Get_StatusBytesIndexedKB;
    property StatusBytesToIndexKB: Integer read Get_StatusBytesToIndexKB;
    property StatusCurrentFilePercentDone: Integer read Get_StatusCurrentFilePercentDone;
    property CreateAddToLibrary: WordBool read Get_CreateAddToLibrary write Set_CreateAddToLibrary;
    property CreateRelativePaths: WordBool read Get_CreateRelativePaths write Set_CreateRelativePaths;
    property MaxMemToUseMB: Integer read Get_MaxMemToUseMB write Set_MaxMemToUseMB;
    property IndexingFlags: Integer read Get_IndexingFlags write Set_IndexingFlags;
    property AutoCommitIntervalMB: Integer read Get_AutoCommitIntervalMB write Set_AutoCommitIntervalMB;
    property ActionVerify: WordBool read Get_ActionVerify write Set_ActionVerify;
    property ActionMerge: WordBool read Get_ActionMerge write Set_ActionMerge;
    property IndexesToMerge: WideString read Get_IndexesToMerge write Set_IndexesToMerge;
    property ExecuteThreadHandle: Integer read Get_ExecuteThreadHandle;
    property TempFileDir: WideString read Get_TempFileDir write Set_TempFileDir;
    property StartingDocId: Integer read Get_StartingDocId write Set_StartingDocId;
    property EnumerableFields: WideString read Get_EnumerableFields write Set_EnumerableFields;
  end;

// *********************************************************************//
// DispIntf:  IIndexJobDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF022-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IIndexJobDisp = dispinterface
    ['{697DF022-B24E-11D3-B57C-00105AA461D0}']
    property ActionAdd: WordBool dispid 2;
    property ActionCompress: WordBool dispid 3;
    property ActionCreate: WordBool dispid 4;
    property ActionRemoveDeleted: WordBool dispid 5;
    property ActionRemoveListed: WordBool dispid 6;
    property AllowConcurrentAccess: WordBool dispid 7;
    property CreateAccentSensitive: WordBool dispid 8;
    property CreateCaseSensitive: WordBool dispid 9;
    property DataSourceToIndex: IDispatch writeonly dispid 10;
    property IndexName: WideString dispid 11;
    property IndexPath: WideString dispid 12;
    property StatusHandler: IDispatch writeonly dispid 13;
    property StoredFields: WideString dispid 14;
    property ToAddDir: WideString dispid 15;
    property ToAddDirListName: WideString dispid 16;
    property ToAddExcludeFilters: WideString dispid 17;
    property ToAddFileListName: WideString dispid 18;
    property ToAddIncludeFilters: WideString dispid 19;
    property ToRemoveListName: WideString dispid 20;
    property IsThreadDone: WordBool readonly dispid 21;
    property Errors: IDispatch readonly dispid 22;
    property StatusIndexingStep: Integer readonly dispid 23;
    property StatusPercentDone: Integer readonly dispid 24;
    property StatusCurrentFileLocation: WideString readonly dispid 25;
    property StatusCurrentFileName: WideString readonly dispid 26;
    property StatusCurrentFileType: WideString readonly dispid 27;
    property StatusDiskAvailKB: Integer readonly dispid 28;
    property StatusWordsInIndex: Integer readonly dispid 29;
    property StatusDocsInIndex: Integer readonly dispid 30;
    property StatusBytesIndexedKB: Integer readonly dispid 31;
    property StatusBytesToIndexKB: Integer readonly dispid 32;
    property StatusCurrentFilePercentDone: Integer readonly dispid 33;
    function Execute: Smallint; dispid 34;
    procedure ExecuteInThread; dispid 35;
    procedure AbortThread; dispid 36;
    procedure AbortThreadImmediate; dispid 37;
    property CreateAddToLibrary: WordBool dispid 38;
    property CreateRelativePaths: WordBool dispid 39;
    function GetIndexInfo: WideString; dispid 40;
    function GetIndexInfoItem(const item: WideString): Integer; dispid 41;
    property MaxMemToUseMB: Integer dispid 42;
    property IndexingFlags: Integer dispid 43;
    property AutoCommitIntervalMB: Integer dispid 44;
    property ActionVerify: WordBool dispid 45;
    property ActionMerge: WordBool dispid 46;
    property IndexesToMerge: WideString dispid 47;
    function IsThreadDoneWait(millisecondsToWait: Integer): WordBool; dispid 48;
    property ExecuteThreadHandle: Integer readonly dispid 49;
    property TempFileDir: WideString dispid 50;
    property StartingDocId: Integer dispid 51;
    property EnumerableFields: WideString dispid 52;
  end;

// *********************************************************************//
// Interface: ISearchJob
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF024-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  ISearchJob = interface(IDispatch)
    ['{697DF024-B24E-11D3-B57C-00105AA461D0}']
    function Get_DirListName: WideString; safecall;
    procedure Set_DirListName(const pVal: WideString); safecall;
    function Get_DirToSearch: WideString; safecall;
    procedure Set_DirToSearch(const pVal: WideString); safecall;
    function Get_ExcludeFilters: WideString; safecall;
    procedure Set_ExcludeFilters(const pVal: WideString); safecall;
    function Get_FileCount: Integer; safecall;
    function Get_HitCount: Integer; safecall;
    function Get_Fuzziness: Integer; safecall;
    procedure Set_Fuzziness(pVal: Integer); safecall;
    function Get_IncludeFilters: WideString; safecall;
    procedure Set_IncludeFilters(const pVal: WideString); safecall;
    function Get_IndexesToSearch: WideString; safecall;
    procedure Set_IndexesToSearch(const pVal: WideString); safecall;
    function Get_MaxFilesToRetrieve: Integer; safecall;
    procedure Set_MaxFilesToRetrieve(pVal: Integer); safecall;
    function Get_NaturalLanguage: WordBool; safecall;
    procedure Set_NaturalLanguage(pVal: WordBool); safecall;
    function Get_OutputListingHits: WordBool; safecall;
    procedure Set_OutputListingHits(pVal: WordBool); safecall;
    function Get_PhonicSearching: WordBool; safecall;
    procedure Set_PhonicSearching(pVal: WordBool); safecall;
    function Get_Request: WideString; safecall;
    procedure Set_Request(const pVal: WideString); safecall;
    function Get_ResultsInMemory: WordBool; safecall;
    procedure Set_ResultsInMemory(pVal: WordBool); safecall;
    function Get_StatusHandler: IDispatch; safecall;
    procedure _Set_StatusHandler(const pVal: IDispatch); safecall;
    function Get_Stemming: WordBool; safecall;
    procedure Set_Stemming(pVal: WordBool); safecall;
    function Get_Synonyms: WordBool; safecall;
    procedure Set_Synonyms(pVal: WordBool); safecall;
    function Get_UserSynonyms: WordBool; safecall;
    procedure Set_UserSynonyms(pVal: WordBool); safecall;
    function Get_WordNetSynonyms: WordBool; safecall;
    procedure Set_WordNetSynonyms(pVal: WordBool); safecall;
    function Get_WordNetRelated: WordBool; safecall;
    procedure Set_WordNetRelated(pVal: WordBool); safecall;
    function Get_Results: IDispatch; safecall;
    function Get_IsThreadDone: WordBool; safecall;
    function Get_Errors: IDispatch; safecall;
    function Get_TimeoutSeconds: Integer; safecall;
    procedure Set_TimeoutSeconds(pVal: Integer); safecall;
    function Get_DelayDocInfo: WordBool; safecall;
    procedure Set_DelayDocInfo(pVal: WordBool); safecall;
    function Get_RegularExpression: WordBool; safecall;
    procedure Set_RegularExpression(pVal: WordBool); safecall;
    function Get_SearchFlags: Integer; safecall;
    procedure Set_SearchFlags(pVal: Integer); safecall;
    function Execute: Smallint; safecall;
    procedure ExecuteInThread; safecall;
    procedure AbortThread; safecall;
    function Get_OutputListingName: WideString; safecall;
    procedure Set_OutputListingName(const pVal: WideString); safecall;
    function Get_ExternalSynonyms: WordBool; safecall;
    procedure Set_ExternalSynonyms(pVal: WordBool); safecall;
    function Get_FileConditions: WideString; safecall;
    procedure Set_FileConditions(const pVal: WideString); safecall;
    function Get_AutoStopLimit: Integer; safecall;
    procedure Set_AutoStopLimit(pVal: Integer); safecall;
    function Get_ListingFlags: Integer; safecall;
    procedure Set_ListingFlags(pVal: Integer); safecall;
    procedure SetFilter(const newFilter: ISearchFilter); safecall;
    function IsThreadDoneWait(millisecondsToWait: Integer): WordBool; safecall;
    procedure AddIndexToSearch(const IndexPath: WideString); safecall;
    function Get_BooleanConditions: WideString; safecall;
    procedure Set_BooleanConditions(const pVal: WideString); safecall;
    function Get_WantResultsAsFilter: WordBool; safecall;
    procedure Set_WantResultsAsFilter(pVal: WordBool); safecall;
    function Get_ResultsAsFilter: IDispatch; safecall;
    function Get_FieldWeights: WideString; safecall;
    procedure Set_FieldWeights(const pVal: WideString); safecall;
    procedure SetIndexCache(const pCache: IIndexCache); safecall;
    property DirListName: WideString read Get_DirListName write Set_DirListName;
    property DirToSearch: WideString read Get_DirToSearch write Set_DirToSearch;
    property ExcludeFilters: WideString read Get_ExcludeFilters write Set_ExcludeFilters;
    property FileCount: Integer read Get_FileCount;
    property HitCount: Integer read Get_HitCount;
    property Fuzziness: Integer read Get_Fuzziness write Set_Fuzziness;
    property IncludeFilters: WideString read Get_IncludeFilters write Set_IncludeFilters;
    property IndexesToSearch: WideString read Get_IndexesToSearch write Set_IndexesToSearch;
    property MaxFilesToRetrieve: Integer read Get_MaxFilesToRetrieve write Set_MaxFilesToRetrieve;
    property NaturalLanguage: WordBool read Get_NaturalLanguage write Set_NaturalLanguage;
    property OutputListingHits: WordBool read Get_OutputListingHits write Set_OutputListingHits;
    property PhonicSearching: WordBool read Get_PhonicSearching write Set_PhonicSearching;
    property Request: WideString read Get_Request write Set_Request;
    property ResultsInMemory: WordBool read Get_ResultsInMemory write Set_ResultsInMemory;
    property StatusHandler: IDispatch read Get_StatusHandler write _Set_StatusHandler;
    property Stemming: WordBool read Get_Stemming write Set_Stemming;
    property Synonyms: WordBool read Get_Synonyms write Set_Synonyms;
    property UserSynonyms: WordBool read Get_UserSynonyms write Set_UserSynonyms;
    property WordNetSynonyms: WordBool read Get_WordNetSynonyms write Set_WordNetSynonyms;
    property WordNetRelated: WordBool read Get_WordNetRelated write Set_WordNetRelated;
    property Results: IDispatch read Get_Results;
    property IsThreadDone: WordBool read Get_IsThreadDone;
    property Errors: IDispatch read Get_Errors;
    property TimeoutSeconds: Integer read Get_TimeoutSeconds write Set_TimeoutSeconds;
    property DelayDocInfo: WordBool read Get_DelayDocInfo write Set_DelayDocInfo;
    property RegularExpression: WordBool read Get_RegularExpression write Set_RegularExpression;
    property SearchFlags: Integer read Get_SearchFlags write Set_SearchFlags;
    property OutputListingName: WideString read Get_OutputListingName write Set_OutputListingName;
    property ExternalSynonyms: WordBool read Get_ExternalSynonyms write Set_ExternalSynonyms;
    property FileConditions: WideString read Get_FileConditions write Set_FileConditions;
    property AutoStopLimit: Integer read Get_AutoStopLimit write Set_AutoStopLimit;
    property ListingFlags: Integer read Get_ListingFlags write Set_ListingFlags;
    property BooleanConditions: WideString read Get_BooleanConditions write Set_BooleanConditions;
    property WantResultsAsFilter: WordBool read Get_WantResultsAsFilter write Set_WantResultsAsFilter;
    property ResultsAsFilter: IDispatch read Get_ResultsAsFilter;
    property FieldWeights: WideString read Get_FieldWeights write Set_FieldWeights;
  end;

// *********************************************************************//
// DispIntf:  ISearchJobDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF024-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  ISearchJobDisp = dispinterface
    ['{697DF024-B24E-11D3-B57C-00105AA461D0}']
    property DirListName: WideString dispid 1;
    property DirToSearch: WideString dispid 2;
    property ExcludeFilters: WideString dispid 3;
    property FileCount: Integer readonly dispid 4;
    property HitCount: Integer readonly dispid 5;
    property Fuzziness: Integer dispid 6;
    property IncludeFilters: WideString dispid 7;
    property IndexesToSearch: WideString dispid 8;
    property MaxFilesToRetrieve: Integer dispid 9;
    property NaturalLanguage: WordBool dispid 10;
    property OutputListingHits: WordBool dispid 11;
    property PhonicSearching: WordBool dispid 12;
    property Request: WideString dispid 13;
    property ResultsInMemory: WordBool dispid 14;
    property StatusHandler: IDispatch dispid 15;
    property Stemming: WordBool dispid 16;
    property Synonyms: WordBool dispid 17;
    property UserSynonyms: WordBool dispid 18;
    property WordNetSynonyms: WordBool dispid 19;
    property WordNetRelated: WordBool dispid 20;
    property Results: IDispatch readonly dispid 21;
    property IsThreadDone: WordBool readonly dispid 22;
    property Errors: IDispatch readonly dispid 23;
    property TimeoutSeconds: Integer dispid 24;
    property DelayDocInfo: WordBool dispid 25;
    property RegularExpression: WordBool dispid 26;
    property SearchFlags: Integer dispid 27;
    function Execute: Smallint; dispid 28;
    procedure ExecuteInThread; dispid 29;
    procedure AbortThread; dispid 30;
    property OutputListingName: WideString dispid 31;
    property ExternalSynonyms: WordBool dispid 32;
    property FileConditions: WideString dispid 33;
    property AutoStopLimit: Integer dispid 34;
    property ListingFlags: Integer dispid 35;
    procedure SetFilter(const newFilter: ISearchFilter); dispid 36;
    function IsThreadDoneWait(millisecondsToWait: Integer): WordBool; dispid 37;
    procedure AddIndexToSearch(const IndexPath: WideString); dispid 38;
    property BooleanConditions: WideString dispid 39;
    property WantResultsAsFilter: WordBool dispid 40;
    property ResultsAsFilter: IDispatch readonly dispid 41;
    property FieldWeights: WideString dispid 42;
    procedure SetIndexCache(const pCache: IIndexCache); dispid 43;
  end;

// *********************************************************************//
// Interface: ISearchFilter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6D615A9E-73D4-4FEF-A0DA-6973C26C17B2}
// *********************************************************************//
  ISearchFilter = interface(IDispatch)
    ['{6D615A9E-73D4-4FEF-A0DA-6973C26C17B2}']
    function AddIndex(const IndexPath: WideString): Integer; safecall;
    procedure SelectAll(iIndex: Integer); safecall;
    procedure SelectNone(iIndex: Integer); safecall;
    procedure SelectItems(iIndex: Integer; firstItem: Integer; lastItem: Integer; 
                          isSelected: WordBool); safecall;
    function Get_IndexCount: Integer; safecall;
    function Get_IndexPath(iIndex: Integer): WideString; safecall;
    function Get_IndexSelections(iIndex: Integer): OleVariant; safecall;
    function Write(const filename: WideString): Integer; safecall;
    function Read(const filename: WideString): Integer; safecall;
    function Equals(const other: ISearchFilter): WordBool; safecall;
    function ReadMultiple(const filtersToRead: WideString): Integer; safecall;
    procedure Or_(const other: ISearchFilter); safecall;
    procedure And_(const other: ISearchFilter); safecall;
    function SelectItemsBySearch(iIndex: Integer; const searchRequest: WideString; 
                                 bSelected: WordBool): Integer; safecall;
    function GetItemArray(iIndex: Integer): OleVariant; safecall;
    function GetItemArrayVBS(iIndex: Integer): OleVariant; safecall;
    procedure AndNot(const other: ISearchFilter); safecall;
    property IndexCount: Integer read Get_IndexCount;
    property IndexPath[iIndex: Integer]: WideString read Get_IndexPath;
    property IndexSelections[iIndex: Integer]: OleVariant read Get_IndexSelections;
  end;

// *********************************************************************//
// DispIntf:  ISearchFilterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6D615A9E-73D4-4FEF-A0DA-6973C26C17B2}
// *********************************************************************//
  ISearchFilterDisp = dispinterface
    ['{6D615A9E-73D4-4FEF-A0DA-6973C26C17B2}']
    function AddIndex(const IndexPath: WideString): Integer; dispid 1;
    procedure SelectAll(iIndex: Integer); dispid 2;
    procedure SelectNone(iIndex: Integer); dispid 3;
    procedure SelectItems(iIndex: Integer; firstItem: Integer; lastItem: Integer; 
                          isSelected: WordBool); dispid 4;
    property IndexCount: Integer readonly dispid 5;
    property IndexPath[iIndex: Integer]: WideString readonly dispid 6;
    property IndexSelections[iIndex: Integer]: OleVariant readonly dispid 7;
    function Write(const filename: WideString): Integer; dispid 8;
    function Read(const filename: WideString): Integer; dispid 9;
    function Equals(const other: ISearchFilter): WordBool; dispid 10;
    function ReadMultiple(const filtersToRead: WideString): Integer; dispid 11;
    procedure Or_(const other: ISearchFilter); dispid 12;
    procedure And_(const other: ISearchFilter); dispid 13;
    function SelectItemsBySearch(iIndex: Integer; const searchRequest: WideString; 
                                 bSelected: WordBool): Integer; dispid 14;
    function GetItemArray(iIndex: Integer): OleVariant; dispid 15;
    function GetItemArrayVBS(iIndex: Integer): OleVariant; dispid 16;
    procedure AndNot(const other: ISearchFilter); dispid 17;
  end;

// *********************************************************************//
// Interface: IIndexCache
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {84FE534D-B891-4E87-9D3D-6969F71E3628}
// *********************************************************************//
  IIndexCache = interface(IDispatch)
    ['{84FE534D-B891-4E87-9D3D-6969F71E3628}']
    function Get_AutoCloseTime: Integer; safecall;
    procedure Set_AutoCloseTime(pVal: Integer); safecall;
    function Get_AutoReopenTime: Integer; safecall;
    procedure Set_AutoReopenTime(pVal: Integer); safecall;
    function Get_InUseCount: Integer; safecall;
    function Get_MaxCount: Integer; safecall;
    procedure Set_MaxCount(pVal: Integer); safecall;
    function Get_OpenIndexCount: Integer; safecall;
    function Get_Handle: Largeuint; safecall;
    property AutoCloseTime: Integer read Get_AutoCloseTime write Set_AutoCloseTime;
    property AutoReopenTime: Integer read Get_AutoReopenTime write Set_AutoReopenTime;
    property InUseCount: Integer read Get_InUseCount;
    property MaxCount: Integer read Get_MaxCount write Set_MaxCount;
    property OpenIndexCount: Integer read Get_OpenIndexCount;
    property Handle: Largeuint read Get_Handle;
  end;

// *********************************************************************//
// DispIntf:  IIndexCacheDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {84FE534D-B891-4E87-9D3D-6969F71E3628}
// *********************************************************************//
  IIndexCacheDisp = dispinterface
    ['{84FE534D-B891-4E87-9D3D-6969F71E3628}']
    property AutoCloseTime: Integer dispid 1;
    property AutoReopenTime: Integer dispid 2;
    property InUseCount: Integer readonly dispid 3;
    property MaxCount: Integer dispid 4;
    property OpenIndexCount: Integer readonly dispid 5;
    property Handle: Largeuint readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IFileConverter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF026-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IFileConverter = interface(IDispatch)
    ['{697DF026-B24E-11D3-B57C-00105AA461D0}']
    function Get_InputFile: WideString; safecall;
    procedure Set_InputFile(const pVal: WideString); safecall;
    function Get_OutputFile: WideString; safecall;
    procedure Set_OutputFile(const pVal: WideString); safecall;
    function Get_OutputFormat: Integer; safecall;
    procedure Set_OutputFormat(pVal: Integer); safecall;
    function Get_BeforeHit: WideString; safecall;
    procedure Set_BeforeHit(const pVal: WideString); safecall;
    function Get_AfterHit: WideString; safecall;
    procedure Set_AfterHit(const pVal: WideString); safecall;
    function Get_Footer: WideString; safecall;
    procedure Set_Footer(const pVal: WideString); safecall;
    function Get_Hits: WideString; safecall;
    procedure Set_Hits(const pVal: WideString); safecall;
    function Get_Errors: IDispatch; safecall;
    function Get_BaseHRef: WideString; safecall;
    procedure Set_BaseHRef(const pVal: WideString); safecall;
    function Get_OutputToString: WordBool; safecall;
    procedure Set_OutputToString(pVal: WordBool); safecall;
    function Get_OutputStringMaxSize: Integer; safecall;
    procedure Set_OutputStringMaxSize(pVal: Integer); safecall;
    function Get_OutputString: WideString; safecall;
    function Get_TimeoutSeconds: Integer; safecall;
    procedure Set_TimeoutSeconds(pVal: Integer); safecall;
    function Get_AlphabetLocation: WideString; safecall;
    procedure Set_AlphabetLocation(const pVal: WideString); safecall;
    function Get_flags: Integer; safecall;
    procedure Set_flags(pVal: Integer); safecall;
    procedure Execute; safecall;
    function Get_Header: WideString; safecall;
    procedure Set_Header(const pVal: WideString); safecall;
    function Get_InputText: WideString; safecall;
    procedure Set_InputText(const pVal: WideString); safecall;
    function Get_InputFields: WideString; safecall;
    procedure Set_InputFields(const pVal: WideString); safecall;
    function Get_HtmlHead: WideString; safecall;
    procedure Set_HtmlHead(const pVal: WideString); safecall;
    function Get_InputTypeId: Integer; safecall;
    procedure Set_InputTypeId(pVal: Integer); safecall;
    procedure SetInputItem(const Results: ISearchResults; whichItem: Integer); safecall;
    function Get_IndexRetrievedFrom: WideString; safecall;
    procedure Set_IndexRetrievedFrom(const pVal: WideString); safecall;
    function Get_InputDocId: Integer; safecall;
    procedure Set_InputDocId(pVal: Integer); safecall;
    function Get_DetectedTypeId: Integer; safecall;
    property InputFile: WideString read Get_InputFile write Set_InputFile;
    property OutputFile: WideString read Get_OutputFile write Set_OutputFile;
    property OutputFormat: Integer read Get_OutputFormat write Set_OutputFormat;
    property BeforeHit: WideString read Get_BeforeHit write Set_BeforeHit;
    property AfterHit: WideString read Get_AfterHit write Set_AfterHit;
    property Footer: WideString read Get_Footer write Set_Footer;
    property Hits: WideString read Get_Hits write Set_Hits;
    property Errors: IDispatch read Get_Errors;
    property BaseHRef: WideString read Get_BaseHRef write Set_BaseHRef;
    property OutputToString: WordBool read Get_OutputToString write Set_OutputToString;
    property OutputStringMaxSize: Integer read Get_OutputStringMaxSize write Set_OutputStringMaxSize;
    property OutputString: WideString read Get_OutputString;
    property TimeoutSeconds: Integer read Get_TimeoutSeconds write Set_TimeoutSeconds;
    property AlphabetLocation: WideString read Get_AlphabetLocation write Set_AlphabetLocation;
    property flags: Integer read Get_flags write Set_flags;
    property Header: WideString read Get_Header write Set_Header;
    property InputText: WideString read Get_InputText write Set_InputText;
    property InputFields: WideString read Get_InputFields write Set_InputFields;
    property HtmlHead: WideString read Get_HtmlHead write Set_HtmlHead;
    property InputTypeId: Integer read Get_InputTypeId write Set_InputTypeId;
    property IndexRetrievedFrom: WideString read Get_IndexRetrievedFrom write Set_IndexRetrievedFrom;
    property InputDocId: Integer read Get_InputDocId write Set_InputDocId;
    property DetectedTypeId: Integer read Get_DetectedTypeId;
  end;

// *********************************************************************//
// DispIntf:  IFileConverterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF026-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IFileConverterDisp = dispinterface
    ['{697DF026-B24E-11D3-B57C-00105AA461D0}']
    property InputFile: WideString dispid 1;
    property OutputFile: WideString dispid 2;
    property OutputFormat: Integer dispid 3;
    property BeforeHit: WideString dispid 4;
    property AfterHit: WideString dispid 5;
    property Footer: WideString dispid 6;
    property Hits: WideString dispid 7;
    property Errors: IDispatch readonly dispid 8;
    property BaseHRef: WideString dispid 9;
    property OutputToString: WordBool dispid 10;
    property OutputStringMaxSize: Integer dispid 11;
    property OutputString: WideString readonly dispid 12;
    property TimeoutSeconds: Integer dispid 13;
    property AlphabetLocation: WideString dispid 14;
    property flags: Integer dispid 15;
    procedure Execute; dispid 16;
    property Header: WideString dispid 17;
    property InputText: WideString dispid 18;
    property InputFields: WideString dispid 19;
    property HtmlHead: WideString dispid 20;
    property InputTypeId: Integer dispid 21;
    procedure SetInputItem(const Results: ISearchResults; whichItem: Integer); dispid 22;
    property IndexRetrievedFrom: WideString dispid 23;
    property InputDocId: Integer dispid 24;
    property DetectedTypeId: Integer readonly dispid 25;
  end;

// *********************************************************************//
// Interface: ISearchResults
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {798CBE34-B27D-11D3-B57C-00105AA461D0}
// *********************************************************************//
  ISearchResults = interface(IDispatch)
    ['{798CBE34-B27D-11D3-B57C-00105AA461D0}']
    function Get_Count: Integer; safecall;
    function Get_DocName: WideString; safecall;
    function Get_DocHitCount: Integer; safecall;
    function Get_DocDetails: WideString; safecall;
    function Get_DocHits: WideString; safecall;
    function Get_Request: WideString; safecall;
    function Get_TotalHitCount: Integer; safecall;
    function Get_HitByteOffsets: WideString; safecall;
    function GetNthDoc(iDoc: Integer): WordBool; safecall;
    function Get_DocDetailItem(const name: WideString): WideString; safecall;
    procedure Sort(flags: Integer; const fieldName: WideString); safecall;
    function NewSearchReportJob: IDispatch; safecall;
    procedure MakePdfHighlightFile; safecall;
    function MakePdfWebHighlightFile: WideString; safecall;
    function UrlEncodeItem: WideString; safecall;
    procedure UrlDecodeItem(const val: WideString); safecall;
    function SerializeAsXml: WideString; safecall;
    procedure SerializeFromXml(const xmlString: WideString); safecall;
    procedure SetSortKey(const newKey: WideString); safecall;
    procedure AddDoc(const IndexPath: WideString; docId: Integer; Hits: OleVariant); safecall;
    procedure Empty; safecall;
    property Count: Integer read Get_Count;
    property DocName: WideString read Get_DocName;
    property DocHitCount: Integer read Get_DocHitCount;
    property DocDetails: WideString read Get_DocDetails;
    property DocHits: WideString read Get_DocHits;
    property Request: WideString read Get_Request;
    property TotalHitCount: Integer read Get_TotalHitCount;
    property HitByteOffsets: WideString read Get_HitByteOffsets;
    property DocDetailItem[const name: WideString]: WideString read Get_DocDetailItem;
  end;

// *********************************************************************//
// DispIntf:  ISearchResultsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {798CBE34-B27D-11D3-B57C-00105AA461D0}
// *********************************************************************//
  ISearchResultsDisp = dispinterface
    ['{798CBE34-B27D-11D3-B57C-00105AA461D0}']
    property Count: Integer readonly dispid 1;
    property DocName: WideString readonly dispid 2;
    property DocHitCount: Integer readonly dispid 3;
    property DocDetails: WideString readonly dispid 4;
    property DocHits: WideString readonly dispid 5;
    property Request: WideString readonly dispid 6;
    property TotalHitCount: Integer readonly dispid 7;
    property HitByteOffsets: WideString readonly dispid 8;
    function GetNthDoc(iDoc: Integer): WordBool; dispid 9;
    property DocDetailItem[const name: WideString]: WideString readonly dispid 10;
    procedure Sort(flags: Integer; const fieldName: WideString); dispid 11;
    function NewSearchReportJob: IDispatch; dispid 12;
    procedure MakePdfHighlightFile; dispid 13;
    function MakePdfWebHighlightFile: WideString; dispid 14;
    function UrlEncodeItem: WideString; dispid 15;
    procedure UrlDecodeItem(const val: WideString); dispid 16;
    function SerializeAsXml: WideString; dispid 17;
    procedure SerializeFromXml(const xmlString: WideString); dispid 18;
    procedure SetSortKey(const newKey: WideString); dispid 19;
    procedure AddDoc(const IndexPath: WideString; docId: Integer; Hits: OleVariant); dispid 20;
    procedure Empty; dispid 21;
  end;

// *********************************************************************//
// Interface: ISearchReportJob
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF028-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  ISearchReportJob = interface(IDispatch)
    ['{697DF028-B24E-11D3-B57C-00105AA461D0}']
    function Get_BeforeHit: WideString; safecall;
    procedure Set_BeforeHit(const pVal: WideString); safecall;
    function Get_AfterHit: WideString; safecall;
    procedure Set_AfterHit(const pVal: WideString); safecall;
    function Get_Header: WideString; safecall;
    procedure Set_Header(const pVal: WideString); safecall;
    function Get_Footer: WideString; safecall;
    procedure Set_Footer(const pVal: WideString); safecall;
    function Get_FileHeader: WideString; safecall;
    procedure Set_FileHeader(const pVal: WideString); safecall;
    function Get_ContextHeader: WideString; safecall;
    procedure Set_ContextHeader(const pVal: WideString); safecall;
    function Get_WordsOfContext: Integer; safecall;
    procedure Set_WordsOfContext(pVal: Integer); safecall;
    function Get_ParagraphsOfContext: Integer; safecall;
    procedure Set_ParagraphsOfContext(pVal: Integer); safecall;
    function Get_Errors: IDispatch; safecall;
    function Get_OutputFormat: Integer; safecall;
    procedure Set_OutputFormat(pVal: Integer); safecall;
    function Get_OutputFile: WideString; safecall;
    procedure Set_OutputFile(const pVal: WideString); safecall;
    function Get_TimeoutSeconds: Integer; safecall;
    procedure Set_TimeoutSeconds(pVal: Integer); safecall;
    function Get_OutputString: WideString; safecall;
    function Get_OutputStringMaxSize: Integer; safecall;
    procedure Set_OutputStringMaxSize(pVal: Integer); safecall;
    procedure Execute; safecall;
    procedure SelectItems(iFirstItem: Integer; iLastItem: Integer); safecall;
    procedure ClearSelections; safecall;
    procedure SelectAll; safecall;
    function Get_OutputToString: WordBool; safecall;
    procedure Set_OutputToString(pVal: WordBool); safecall;
    function Get_FileFooter: WideString; safecall;
    procedure Set_FileFooter(const pVal: WideString); safecall;
    function Get_WordsOfContextExact: Integer; safecall;
    procedure Set_WordsOfContextExact(pVal: Integer); safecall;
    function Get_MaxContextBlocks: Integer; safecall;
    procedure Set_MaxContextBlocks(pVal: Integer); safecall;
    function Get_MaxWordsToRead: Integer; safecall;
    procedure Set_MaxWordsToRead(pVal: Integer); safecall;
    function Get_ContextFooter: WideString; safecall;
    procedure Set_ContextFooter(const pVal: WideString); safecall;
    function Get_flags: Integer; safecall;
    procedure Set_flags(pVal: Integer); safecall;
    property BeforeHit: WideString read Get_BeforeHit write Set_BeforeHit;
    property AfterHit: WideString read Get_AfterHit write Set_AfterHit;
    property Header: WideString read Get_Header write Set_Header;
    property Footer: WideString read Get_Footer write Set_Footer;
    property FileHeader: WideString read Get_FileHeader write Set_FileHeader;
    property ContextHeader: WideString read Get_ContextHeader write Set_ContextHeader;
    property WordsOfContext: Integer read Get_WordsOfContext write Set_WordsOfContext;
    property ParagraphsOfContext: Integer read Get_ParagraphsOfContext write Set_ParagraphsOfContext;
    property Errors: IDispatch read Get_Errors;
    property OutputFormat: Integer read Get_OutputFormat write Set_OutputFormat;
    property OutputFile: WideString read Get_OutputFile write Set_OutputFile;
    property TimeoutSeconds: Integer read Get_TimeoutSeconds write Set_TimeoutSeconds;
    property OutputString: WideString read Get_OutputString;
    property OutputStringMaxSize: Integer read Get_OutputStringMaxSize write Set_OutputStringMaxSize;
    property OutputToString: WordBool read Get_OutputToString write Set_OutputToString;
    property FileFooter: WideString read Get_FileFooter write Set_FileFooter;
    property WordsOfContextExact: Integer read Get_WordsOfContextExact write Set_WordsOfContextExact;
    property MaxContextBlocks: Integer read Get_MaxContextBlocks write Set_MaxContextBlocks;
    property MaxWordsToRead: Integer read Get_MaxWordsToRead write Set_MaxWordsToRead;
    property ContextFooter: WideString read Get_ContextFooter write Set_ContextFooter;
    property flags: Integer read Get_flags write Set_flags;
  end;

// *********************************************************************//
// DispIntf:  ISearchReportJobDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF028-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  ISearchReportJobDisp = dispinterface
    ['{697DF028-B24E-11D3-B57C-00105AA461D0}']
    property BeforeHit: WideString dispid 1;
    property AfterHit: WideString dispid 2;
    property Header: WideString dispid 3;
    property Footer: WideString dispid 4;
    property FileHeader: WideString dispid 5;
    property ContextHeader: WideString dispid 6;
    property WordsOfContext: Integer dispid 7;
    property ParagraphsOfContext: Integer dispid 8;
    property Errors: IDispatch readonly dispid 9;
    property OutputFormat: Integer dispid 10;
    property OutputFile: WideString dispid 11;
    property TimeoutSeconds: Integer dispid 12;
    property OutputString: WideString readonly dispid 13;
    property OutputStringMaxSize: Integer dispid 14;
    procedure Execute; dispid 15;
    procedure SelectItems(iFirstItem: Integer; iLastItem: Integer); dispid 16;
    procedure ClearSelections; dispid 17;
    procedure SelectAll; dispid 18;
    property OutputToString: WordBool dispid 19;
    property FileFooter: WideString dispid 20;
    property WordsOfContextExact: Integer dispid 21;
    property MaxContextBlocks: Integer dispid 22;
    property MaxWordsToRead: Integer dispid 23;
    property ContextFooter: WideString dispid 24;
    property flags: Integer dispid 25;
  end;

// *********************************************************************//
// Interface: IOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF02A-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IOptions = interface(IDispatch)
    ['{697DF02A-B24E-11D3-B57C-00105AA461D0}']
    function Get_BinaryFiles: Integer; safecall;
    procedure Set_BinaryFiles(pVal: Integer); safecall;
    function Get_Hyphens: Integer; safecall;
    procedure Set_Hyphens(pVal: Integer); safecall;
    function Get_IndexNumbers: WordBool; safecall;
    procedure Set_IndexNumbers(pVal: WordBool); safecall;
    function Get_AlphabetName: WideString; safecall;
    procedure Set_AlphabetName(const pVal: WideString); safecall;
    function Get_BinaryFilterTextChars: WideString; safecall;
    procedure Set_BinaryFilterTextChars(const pVal: WideString); safecall;
    function Get_StemmingRulesFile: WideString; safecall;
    procedure Set_StemmingRulesFile(const pVal: WideString); safecall;
    function Get_NoiseWordFile: WideString; safecall;
    procedure Set_NoiseWordFile(const pVal: WideString); safecall;
    function Get_MaxWordsToRetrieve: Integer; safecall;
    procedure Set_MaxWordsToRetrieve(pVal: Integer); safecall;
    function Get_MaxStoredFieldSize: Integer; safecall;
    procedure Set_MaxStoredFieldSize(pVal: Integer); safecall;
    function Get_TitleSize: Integer; safecall;
    procedure Set_TitleSize(pVal: Integer); safecall;
    function Get_XmlIgnoreTags: WideString; safecall;
    procedure Set_XmlIgnoreTags(const pVal: WideString); safecall;
    procedure Save; safecall;
    function Get_MaxWordLength: Integer; safecall;
    procedure Set_MaxWordLength(pVal: Integer); safecall;
    function Get_SegmentationRulesFile: WideString; safecall;
    procedure Set_SegmentationRulesFile(const pVal: WideString); safecall;
    function Get_TextFieldsFile: WideString; safecall;
    procedure Set_TextFieldsFile(const pVal: WideString); safecall;
    function Get_UserThesaurusFile: WideString; safecall;
    procedure Set_UserThesaurusFile(const pVal: WideString); safecall;
    function Get_HomeDir: WideString; safecall;
    procedure Set_HomeDir(const pVal: WideString); safecall;
    function Get_PrivateDir: WideString; safecall;
    procedure Set_PrivateDir(const pVal: WideString); safecall;
    function Get_BooleanConnectors: WideString; safecall;
    procedure Set_BooleanConnectors(const pVal: WideString); safecall;
    function Get_FileTypeTableFile: WideString; safecall;
    procedure Set_FileTypeTableFile(const pVal: WideString); safecall;
    function Get_UpdateFiles: WordBool; safecall;
    procedure Set_UpdateFiles(pVal: WordBool); safecall;
    function Get_LzwEnableCode: Integer; safecall;
    procedure Set_LzwEnableCode(pVal: Integer); safecall;
    function Get_FieldFlags: Integer; safecall;
    procedure Set_FieldFlags(pVal: Integer); safecall;
    function Get_MacroChar: WideString; safecall;
    procedure Set_MacroChar(const pVal: WideString); safecall;
    function Get_FuzzyChar: WideString; safecall;
    procedure Set_FuzzyChar(const pVal: WideString); safecall;
    function Get_PhonicChar: WideString; safecall;
    procedure Set_PhonicChar(const pVal: WideString); safecall;
    function Get_StemmingChar: WideString; safecall;
    procedure Set_StemmingChar(const pVal: WideString); safecall;
    function Get_SynonymChar: WideString; safecall;
    procedure Set_SynonymChar(const pVal: WideString); safecall;
    function Get_WeightChar: WideString; safecall;
    procedure Set_WeightChar(const pVal: WideString); safecall;
    function Get_MatchDigitChar: WideString; safecall;
    procedure Set_MatchDigitChar(const pVal: WideString); safecall;
    function Get_AlphabetFile: WideString; safecall;
    procedure Set_AlphabetFile(const pVal: WideString); safecall;
    function Get_UnicodeFilterRanges: WideString; safecall;
    procedure Set_UnicodeFilterRanges(const pVal: WideString); safecall;
    function Get_UnicodeFilterBlockSize: Integer; safecall;
    procedure Set_UnicodeFilterBlockSize(pVal: Integer); safecall;
    function Get_UnicodeFilterFlags: Integer; safecall;
    procedure Set_UnicodeFilterFlags(pVal: Integer); safecall;
    function Get_UnicodeFilterMinTextSize: Integer; safecall;
    procedure Set_UnicodeFilterMinTextSize(pVal: Integer); safecall;
    function Get_TextFlags: Integer; safecall;
    procedure Set_TextFlags(pVal: Integer); safecall;
    function Get_UnicodeFilterWordOverlapAmount: Integer; safecall;
    procedure Set_UnicodeFilterWordOverlapAmount(pVal: Integer); safecall;
    property BinaryFiles: Integer read Get_BinaryFiles write Set_BinaryFiles;
    property Hyphens: Integer read Get_Hyphens write Set_Hyphens;
    property IndexNumbers: WordBool read Get_IndexNumbers write Set_IndexNumbers;
    property AlphabetName: WideString read Get_AlphabetName write Set_AlphabetName;
    property BinaryFilterTextChars: WideString read Get_BinaryFilterTextChars write Set_BinaryFilterTextChars;
    property StemmingRulesFile: WideString read Get_StemmingRulesFile write Set_StemmingRulesFile;
    property NoiseWordFile: WideString read Get_NoiseWordFile write Set_NoiseWordFile;
    property MaxWordsToRetrieve: Integer read Get_MaxWordsToRetrieve write Set_MaxWordsToRetrieve;
    property MaxStoredFieldSize: Integer read Get_MaxStoredFieldSize write Set_MaxStoredFieldSize;
    property TitleSize: Integer read Get_TitleSize write Set_TitleSize;
    property XmlIgnoreTags: WideString read Get_XmlIgnoreTags write Set_XmlIgnoreTags;
    property MaxWordLength: Integer read Get_MaxWordLength write Set_MaxWordLength;
    property SegmentationRulesFile: WideString read Get_SegmentationRulesFile write Set_SegmentationRulesFile;
    property TextFieldsFile: WideString read Get_TextFieldsFile write Set_TextFieldsFile;
    property UserThesaurusFile: WideString read Get_UserThesaurusFile write Set_UserThesaurusFile;
    property HomeDir: WideString read Get_HomeDir write Set_HomeDir;
    property PrivateDir: WideString read Get_PrivateDir write Set_PrivateDir;
    property BooleanConnectors: WideString read Get_BooleanConnectors write Set_BooleanConnectors;
    property FileTypeTableFile: WideString read Get_FileTypeTableFile write Set_FileTypeTableFile;
    property UpdateFiles: WordBool read Get_UpdateFiles write Set_UpdateFiles;
    property LzwEnableCode: Integer read Get_LzwEnableCode write Set_LzwEnableCode;
    property FieldFlags: Integer read Get_FieldFlags write Set_FieldFlags;
    property MacroChar: WideString read Get_MacroChar write Set_MacroChar;
    property FuzzyChar: WideString read Get_FuzzyChar write Set_FuzzyChar;
    property PhonicChar: WideString read Get_PhonicChar write Set_PhonicChar;
    property StemmingChar: WideString read Get_StemmingChar write Set_StemmingChar;
    property SynonymChar: WideString read Get_SynonymChar write Set_SynonymChar;
    property WeightChar: WideString read Get_WeightChar write Set_WeightChar;
    property MatchDigitChar: WideString read Get_MatchDigitChar write Set_MatchDigitChar;
    property AlphabetFile: WideString read Get_AlphabetFile write Set_AlphabetFile;
    property UnicodeFilterRanges: WideString read Get_UnicodeFilterRanges write Set_UnicodeFilterRanges;
    property UnicodeFilterBlockSize: Integer read Get_UnicodeFilterBlockSize write Set_UnicodeFilterBlockSize;
    property UnicodeFilterFlags: Integer read Get_UnicodeFilterFlags write Set_UnicodeFilterFlags;
    property UnicodeFilterMinTextSize: Integer read Get_UnicodeFilterMinTextSize write Set_UnicodeFilterMinTextSize;
    property TextFlags: Integer read Get_TextFlags write Set_TextFlags;
    property UnicodeFilterWordOverlapAmount: Integer read Get_UnicodeFilterWordOverlapAmount write Set_UnicodeFilterWordOverlapAmount;
  end;

// *********************************************************************//
// DispIntf:  IOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF02A-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IOptionsDisp = dispinterface
    ['{697DF02A-B24E-11D3-B57C-00105AA461D0}']
    property BinaryFiles: Integer dispid 1;
    property Hyphens: Integer dispid 2;
    property IndexNumbers: WordBool dispid 3;
    property AlphabetName: WideString dispid 4;
    property BinaryFilterTextChars: WideString dispid 5;
    property StemmingRulesFile: WideString dispid 6;
    property NoiseWordFile: WideString dispid 7;
    property MaxWordsToRetrieve: Integer dispid 8;
    property MaxStoredFieldSize: Integer dispid 9;
    property TitleSize: Integer dispid 10;
    property XmlIgnoreTags: WideString dispid 11;
    procedure Save; dispid 12;
    property MaxWordLength: Integer dispid 13;
    property SegmentationRulesFile: WideString dispid 14;
    property TextFieldsFile: WideString dispid 15;
    property UserThesaurusFile: WideString dispid 16;
    property HomeDir: WideString dispid 17;
    property PrivateDir: WideString dispid 18;
    property BooleanConnectors: WideString dispid 19;
    property FileTypeTableFile: WideString dispid 20;
    property UpdateFiles: WordBool dispid 21;
    property LzwEnableCode: Integer dispid 22;
    property FieldFlags: Integer dispid 23;
    property MacroChar: WideString dispid 24;
    property FuzzyChar: WideString dispid 25;
    property PhonicChar: WideString dispid 26;
    property StemmingChar: WideString dispid 27;
    property SynonymChar: WideString dispid 28;
    property WeightChar: WideString dispid 29;
    property MatchDigitChar: WideString dispid 30;
    property AlphabetFile: WideString dispid 31;
    property UnicodeFilterRanges: WideString dispid 32;
    property UnicodeFilterBlockSize: Integer dispid 33;
    property UnicodeFilterFlags: Integer dispid 34;
    property UnicodeFilterMinTextSize: Integer dispid 35;
    property TextFlags: Integer dispid 36;
    property UnicodeFilterWordOverlapAmount: Integer dispid 37;
  end;

// *********************************************************************//
// Interface: IWordListBuilder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF02C-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IWordListBuilder = interface(IDispatch)
    ['{697DF02C-B24E-11D3-B57C-00105AA461D0}']
    function Get_Count: Integer; safecall;
    function OpenIndex(const IndexName: WideString): Integer; safecall;
    procedure CloseIndex; safecall;
    function ListWords(const CursorWord: WideString; Range: Integer): Integer; safecall;
    function GetNthWord(iWord: Integer): WideString; safecall;
    function GetNthWordCount(iWord: Integer): Integer; safecall;
    function GetNthWordField(iWord: Integer): WideString; safecall;
    function ListMatchingWords(const toMatch: WideString; nLimit: Integer; SearchFlags: Integer; 
                               Fuzziness: Integer): Integer; safecall;
    procedure ListFields(var pVal: Integer); safecall;
    function GetNthWordDocCount(iWord: Integer): Integer; safecall;
    function ListFieldValues(const field: WideString; const toMatch: WideString; nLimit: Integer): Integer; safecall;
    procedure SetFilter(const newFilter: ISearchFilter); safecall;
    function Sort(flags: Integer): WordBool; safecall;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IWordListBuilderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {697DF02C-B24E-11D3-B57C-00105AA461D0}
// *********************************************************************//
  IWordListBuilderDisp = dispinterface
    ['{697DF02C-B24E-11D3-B57C-00105AA461D0}']
    property Count: Integer readonly dispid 1;
    function OpenIndex(const IndexName: WideString): Integer; dispid 2;
    procedure CloseIndex; dispid 3;
    function ListWords(const CursorWord: WideString; Range: Integer): Integer; dispid 4;
    function GetNthWord(iWord: Integer): WideString; dispid 5;
    function GetNthWordCount(iWord: Integer): Integer; dispid 6;
    function GetNthWordField(iWord: Integer): WideString; dispid 7;
    function ListMatchingWords(const toMatch: WideString; nLimit: Integer; SearchFlags: Integer; 
                               Fuzziness: Integer): Integer; dispid 8;
    procedure ListFields(var pVal: Integer); dispid 9;
    function GetNthWordDocCount(iWord: Integer): Integer; dispid 10;
    function ListFieldValues(const field: WideString; const toMatch: WideString; nLimit: Integer): Integer; dispid 11;
    procedure SetFilter(const newFilter: ISearchFilter); dispid 12;
    function Sort(flags: Integer): WordBool; dispid 13;
  end;

// *********************************************************************//
// The Class CoServer provides a Create and CreateRemote method to          
// create instances of the default interface IServer exposed by              
// the CoClass Server. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServer = class
    class function Create: IServer;
    class function CreateRemote(const MachineName: string): IServer;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TServer
// Help String      : Server Class
// Default Interface: IServer
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TServer = class(TOleServer)
  private
    FIntf: IServer;
    function GetDefaultInterface: IServer;
  protected
    procedure InitServerData; override;
    function Get_DebugLogName: WideString;
    procedure Set_DebugLogName(const pVal: WideString);
    function Get_HomeDir: WideString;
    procedure Set_HomeDir(const pVal: WideString);
    function Get_PrivateDir: WideString;
    procedure Set_PrivateDir(const pVal: WideString);
    procedure Set_SendTestError(Param1: WordBool);
    procedure Set_SendTestInfo(Param1: WordBool);
    procedure Set_SendTestQuestion(Param1: WordBool);
    function Get_MajorVersion: Smallint;
    function Get_MinorVersion: Smallint;
    function Get_Build: Integer;
    function Get_Initialized: WordBool;
    function Get_InitMessage: WideString;
    procedure Set_LzwEnableCode(Param1: Integer);
    function Get_Errors: IDispatch;
    function Get_MessageHandler: IDispatch;
    procedure _Set_MessageHandler(const pVal: IDispatch);
    function Get_AllocatedObjectList: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IServer);
    procedure Disconnect; override;
    function Initialize: WordBool;
    procedure Shutdown;
    function NewIndexJob: IDispatch;
    function NewSearchJob: IDispatch;
    function NewOptions: IDispatch;
    function NewFileConverter: IDispatch;
    function NewWordListBuilder: IDispatch;
    function ConvertPath(const path: WideString; siteId: Integer; flags: Integer; 
                         const tableLocation: WideString): WideString;
    procedure SetDebugLogging(const LogName: WideString; flags: Integer);
    function NewSearchResults: IDispatch;
    function ConvertString(const string_: WideString; inEncoding: Integer; outEncoding: Integer): WideString;
    function NewSearchFilter: IDispatch;
    function NewIndexCache: IDispatch;
    property DefaultInterface: IServer read GetDefaultInterface;
    property SendTestError: WordBool write Set_SendTestError;
    property SendTestInfo: WordBool write Set_SendTestInfo;
    property SendTestQuestion: WordBool write Set_SendTestQuestion;
    property MajorVersion: Smallint read Get_MajorVersion;
    property MinorVersion: Smallint read Get_MinorVersion;
    property Build: Integer read Get_Build;
    property Initialized: WordBool read Get_Initialized;
    property InitMessage: WideString read Get_InitMessage;
    property LzwEnableCode: Integer write Set_LzwEnableCode;
    property Errors: IDispatch read Get_Errors;
    property MessageHandler: IDispatch read Get_MessageHandler write _Set_MessageHandler;
    property AllocatedObjectList: WideString read Get_AllocatedObjectList;
    property DebugLogName: WideString read Get_DebugLogName write Set_DebugLogName;
    property HomeDir: WideString read Get_HomeDir write Set_HomeDir;
    property PrivateDir: WideString read Get_PrivateDir write Set_PrivateDir;
  published
  end;

// *********************************************************************//
// The Class CoJobErrorInfo provides a Create and CreateRemote method to          
// create instances of the default interface IJobErrorInfo exposed by              
// the CoClass JobErrorInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoJobErrorInfo = class
    class function Create: IJobErrorInfo;
    class function CreateRemote(const MachineName: string): IJobErrorInfo;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TJobErrorInfo
// Help String      : JobErrorInfo Class
// Default Interface: IJobErrorInfo
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TJobErrorInfo = class(TOleServer)
  private
    FIntf: IJobErrorInfo;
    function GetDefaultInterface: IJobErrorInfo;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_Message(iMessage: Integer): WideString;
    function Get_Code(iMessage: Integer): Integer;
    function Get_Arg1(iMessage: Integer): WideString;
    function Get_Arg2(iMessage: Integer): WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IJobErrorInfo);
    procedure Disconnect; override;
    function Format: WideString;
    property DefaultInterface: IJobErrorInfo read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property Message[iMessage: Integer]: WideString read Get_Message;
    property Code[iMessage: Integer]: Integer read Get_Code;
    property Arg1[iMessage: Integer]: WideString read Get_Arg1;
    property Arg2[iMessage: Integer]: WideString read Get_Arg2;
  published
  end;

// *********************************************************************//
// The Class CoIndexJob provides a Create and CreateRemote method to          
// create instances of the default interface IIndexJob exposed by              
// the CoClass IndexJob. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIndexJob = class
    class function Create: IIndexJob;
    class function CreateRemote(const MachineName: string): IIndexJob;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TIndexJob
// Help String      : IndexJob Class
// Default Interface: IIndexJob
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TIndexJob = class(TOleServer)
  private
    FIntf: IIndexJob;
    function GetDefaultInterface: IIndexJob;
  protected
    procedure InitServerData; override;
    function Get_ActionAdd: WordBool;
    procedure Set_ActionAdd(pVal: WordBool);
    function Get_ActionCompress: WordBool;
    procedure Set_ActionCompress(pVal: WordBool);
    function Get_ActionCreate: WordBool;
    procedure Set_ActionCreate(pVal: WordBool);
    function Get_ActionRemoveDeleted: WordBool;
    procedure Set_ActionRemoveDeleted(pVal: WordBool);
    function Get_ActionRemoveListed: WordBool;
    procedure Set_ActionRemoveListed(pVal: WordBool);
    function Get_AllowConcurrentAccess: WordBool;
    procedure Set_AllowConcurrentAccess(pVal: WordBool);
    function Get_CreateAccentSensitive: WordBool;
    procedure Set_CreateAccentSensitive(pVal: WordBool);
    function Get_CreateCaseSensitive: WordBool;
    procedure Set_CreateCaseSensitive(pVal: WordBool);
    procedure _Set_DataSourceToIndex(const Param1: IDispatch);
    function Get_IndexName: WideString;
    procedure Set_IndexName(const pVal: WideString);
    function Get_IndexPath: WideString;
    procedure Set_IndexPath(const pVal: WideString);
    procedure _Set_StatusHandler(const Param1: IDispatch);
    function Get_StoredFields: WideString;
    procedure Set_StoredFields(const pVal: WideString);
    function Get_ToAddDir: WideString;
    procedure Set_ToAddDir(const pVal: WideString);
    function Get_ToAddDirListName: WideString;
    procedure Set_ToAddDirListName(const pVal: WideString);
    function Get_ToAddExcludeFilters: WideString;
    procedure Set_ToAddExcludeFilters(const pVal: WideString);
    function Get_ToAddFileListName: WideString;
    procedure Set_ToAddFileListName(const pVal: WideString);
    function Get_ToAddIncludeFilters: WideString;
    procedure Set_ToAddIncludeFilters(const pVal: WideString);
    function Get_ToRemoveListName: WideString;
    procedure Set_ToRemoveListName(const pVal: WideString);
    function Get_IsThreadDone: WordBool;
    function Get_Errors: IDispatch;
    function Get_StatusIndexingStep: Integer;
    function Get_StatusPercentDone: Integer;
    function Get_StatusCurrentFileLocation: WideString;
    function Get_StatusCurrentFileName: WideString;
    function Get_StatusCurrentFileType: WideString;
    function Get_StatusDiskAvailKB: Integer;
    function Get_StatusWordsInIndex: Integer;
    function Get_StatusDocsInIndex: Integer;
    function Get_StatusBytesIndexedKB: Integer;
    function Get_StatusBytesToIndexKB: Integer;
    function Get_StatusCurrentFilePercentDone: Integer;
    function Get_CreateAddToLibrary: WordBool;
    procedure Set_CreateAddToLibrary(pVal: WordBool);
    function Get_CreateRelativePaths: WordBool;
    procedure Set_CreateRelativePaths(pVal: WordBool);
    function Get_MaxMemToUseMB: Integer;
    procedure Set_MaxMemToUseMB(pVal: Integer);
    function Get_IndexingFlags: Integer;
    procedure Set_IndexingFlags(pVal: Integer);
    function Get_AutoCommitIntervalMB: Integer;
    procedure Set_AutoCommitIntervalMB(pVal: Integer);
    function Get_ActionVerify: WordBool;
    procedure Set_ActionVerify(pVal: WordBool);
    function Get_ActionMerge: WordBool;
    procedure Set_ActionMerge(pVal: WordBool);
    function Get_IndexesToMerge: WideString;
    procedure Set_IndexesToMerge(const pVal: WideString);
    function Get_ExecuteThreadHandle: Integer;
    function Get_TempFileDir: WideString;
    procedure Set_TempFileDir(const pVal: WideString);
    function Get_StartingDocId: Integer;
    procedure Set_StartingDocId(pVal: Integer);
    function Get_EnumerableFields: WideString;
    procedure Set_EnumerableFields(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IIndexJob);
    procedure Disconnect; override;
    function Execute: Smallint;
    procedure ExecuteInThread;
    procedure AbortThread;
    procedure AbortThreadImmediate;
    function GetIndexInfo: WideString;
    function GetIndexInfoItem(const item: WideString): Integer;
    function IsThreadDoneWait(millisecondsToWait: Integer): WordBool;
    property DefaultInterface: IIndexJob read GetDefaultInterface;
    property DataSourceToIndex: IDispatch write _Set_DataSourceToIndex;
    property StatusHandler: IDispatch write _Set_StatusHandler;
    property IsThreadDone: WordBool read Get_IsThreadDone;
    property Errors: IDispatch read Get_Errors;
    property StatusIndexingStep: Integer read Get_StatusIndexingStep;
    property StatusPercentDone: Integer read Get_StatusPercentDone;
    property StatusCurrentFileLocation: WideString read Get_StatusCurrentFileLocation;
    property StatusCurrentFileName: WideString read Get_StatusCurrentFileName;
    property StatusCurrentFileType: WideString read Get_StatusCurrentFileType;
    property StatusDiskAvailKB: Integer read Get_StatusDiskAvailKB;
    property StatusWordsInIndex: Integer read Get_StatusWordsInIndex;
    property StatusDocsInIndex: Integer read Get_StatusDocsInIndex;
    property StatusBytesIndexedKB: Integer read Get_StatusBytesIndexedKB;
    property StatusBytesToIndexKB: Integer read Get_StatusBytesToIndexKB;
    property StatusCurrentFilePercentDone: Integer read Get_StatusCurrentFilePercentDone;
    property ExecuteThreadHandle: Integer read Get_ExecuteThreadHandle;
    property ActionAdd: WordBool read Get_ActionAdd write Set_ActionAdd;
    property ActionCompress: WordBool read Get_ActionCompress write Set_ActionCompress;
    property ActionCreate: WordBool read Get_ActionCreate write Set_ActionCreate;
    property ActionRemoveDeleted: WordBool read Get_ActionRemoveDeleted write Set_ActionRemoveDeleted;
    property ActionRemoveListed: WordBool read Get_ActionRemoveListed write Set_ActionRemoveListed;
    property AllowConcurrentAccess: WordBool read Get_AllowConcurrentAccess write Set_AllowConcurrentAccess;
    property CreateAccentSensitive: WordBool read Get_CreateAccentSensitive write Set_CreateAccentSensitive;
    property CreateCaseSensitive: WordBool read Get_CreateCaseSensitive write Set_CreateCaseSensitive;
    property IndexName: WideString read Get_IndexName write Set_IndexName;
    property IndexPath: WideString read Get_IndexPath write Set_IndexPath;
    property StoredFields: WideString read Get_StoredFields write Set_StoredFields;
    property ToAddDir: WideString read Get_ToAddDir write Set_ToAddDir;
    property ToAddDirListName: WideString read Get_ToAddDirListName write Set_ToAddDirListName;
    property ToAddExcludeFilters: WideString read Get_ToAddExcludeFilters write Set_ToAddExcludeFilters;
    property ToAddFileListName: WideString read Get_ToAddFileListName write Set_ToAddFileListName;
    property ToAddIncludeFilters: WideString read Get_ToAddIncludeFilters write Set_ToAddIncludeFilters;
    property ToRemoveListName: WideString read Get_ToRemoveListName write Set_ToRemoveListName;
    property CreateAddToLibrary: WordBool read Get_CreateAddToLibrary write Set_CreateAddToLibrary;
    property CreateRelativePaths: WordBool read Get_CreateRelativePaths write Set_CreateRelativePaths;
    property MaxMemToUseMB: Integer read Get_MaxMemToUseMB write Set_MaxMemToUseMB;
    property IndexingFlags: Integer read Get_IndexingFlags write Set_IndexingFlags;
    property AutoCommitIntervalMB: Integer read Get_AutoCommitIntervalMB write Set_AutoCommitIntervalMB;
    property ActionVerify: WordBool read Get_ActionVerify write Set_ActionVerify;
    property ActionMerge: WordBool read Get_ActionMerge write Set_ActionMerge;
    property IndexesToMerge: WideString read Get_IndexesToMerge write Set_IndexesToMerge;
    property TempFileDir: WideString read Get_TempFileDir write Set_TempFileDir;
    property StartingDocId: Integer read Get_StartingDocId write Set_StartingDocId;
    property EnumerableFields: WideString read Get_EnumerableFields write Set_EnumerableFields;
  published
  end;

// *********************************************************************//
// The Class CoSearchJob provides a Create and CreateRemote method to          
// create instances of the default interface ISearchJob exposed by              
// the CoClass SearchJob. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSearchJob = class
    class function Create: ISearchJob;
    class function CreateRemote(const MachineName: string): ISearchJob;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSearchJob
// Help String      : SearchJob Class
// Default Interface: ISearchJob
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TSearchJob = class(TOleServer)
  private
    FIntf: ISearchJob;
    function GetDefaultInterface: ISearchJob;
  protected
    procedure InitServerData; override;
    function Get_DirListName: WideString;
    procedure Set_DirListName(const pVal: WideString);
    function Get_DirToSearch: WideString;
    procedure Set_DirToSearch(const pVal: WideString);
    function Get_ExcludeFilters: WideString;
    procedure Set_ExcludeFilters(const pVal: WideString);
    function Get_FileCount: Integer;
    function Get_HitCount: Integer;
    function Get_Fuzziness: Integer;
    procedure Set_Fuzziness(pVal: Integer);
    function Get_IncludeFilters: WideString;
    procedure Set_IncludeFilters(const pVal: WideString);
    function Get_IndexesToSearch: WideString;
    procedure Set_IndexesToSearch(const pVal: WideString);
    function Get_MaxFilesToRetrieve: Integer;
    procedure Set_MaxFilesToRetrieve(pVal: Integer);
    function Get_NaturalLanguage: WordBool;
    procedure Set_NaturalLanguage(pVal: WordBool);
    function Get_OutputListingHits: WordBool;
    procedure Set_OutputListingHits(pVal: WordBool);
    function Get_PhonicSearching: WordBool;
    procedure Set_PhonicSearching(pVal: WordBool);
    function Get_Request: WideString;
    procedure Set_Request(const pVal: WideString);
    function Get_ResultsInMemory: WordBool;
    procedure Set_ResultsInMemory(pVal: WordBool);
    function Get_StatusHandler: IDispatch;
    procedure _Set_StatusHandler(const pVal: IDispatch);
    function Get_Stemming: WordBool;
    procedure Set_Stemming(pVal: WordBool);
    function Get_Synonyms: WordBool;
    procedure Set_Synonyms(pVal: WordBool);
    function Get_UserSynonyms: WordBool;
    procedure Set_UserSynonyms(pVal: WordBool);
    function Get_WordNetSynonyms: WordBool;
    procedure Set_WordNetSynonyms(pVal: WordBool);
    function Get_WordNetRelated: WordBool;
    procedure Set_WordNetRelated(pVal: WordBool);
    function Get_Results: IDispatch;
    function Get_IsThreadDone: WordBool;
    function Get_Errors: IDispatch;
    function Get_TimeoutSeconds: Integer;
    procedure Set_TimeoutSeconds(pVal: Integer);
    function Get_DelayDocInfo: WordBool;
    procedure Set_DelayDocInfo(pVal: WordBool);
    function Get_RegularExpression: WordBool;
    procedure Set_RegularExpression(pVal: WordBool);
    function Get_SearchFlags: Integer;
    procedure Set_SearchFlags(pVal: Integer);
    function Get_OutputListingName: WideString;
    procedure Set_OutputListingName(const pVal: WideString);
    function Get_ExternalSynonyms: WordBool;
    procedure Set_ExternalSynonyms(pVal: WordBool);
    function Get_FileConditions: WideString;
    procedure Set_FileConditions(const pVal: WideString);
    function Get_AutoStopLimit: Integer;
    procedure Set_AutoStopLimit(pVal: Integer);
    function Get_ListingFlags: Integer;
    procedure Set_ListingFlags(pVal: Integer);
    function Get_BooleanConditions: WideString;
    procedure Set_BooleanConditions(const pVal: WideString);
    function Get_WantResultsAsFilter: WordBool;
    procedure Set_WantResultsAsFilter(pVal: WordBool);
    function Get_ResultsAsFilter: IDispatch;
    function Get_FieldWeights: WideString;
    procedure Set_FieldWeights(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISearchJob);
    procedure Disconnect; override;
    function Execute: Smallint;
    procedure ExecuteInThread;
    procedure AbortThread;
    procedure SetFilter(const newFilter: ISearchFilter);
    function IsThreadDoneWait(millisecondsToWait: Integer): WordBool;
    procedure AddIndexToSearch(const IndexPath: WideString);
    procedure SetIndexCache(const pCache: IIndexCache);
    property DefaultInterface: ISearchJob read GetDefaultInterface;
    property FileCount: Integer read Get_FileCount;
    property HitCount: Integer read Get_HitCount;
    property StatusHandler: IDispatch read Get_StatusHandler write _Set_StatusHandler;
    property Results: IDispatch read Get_Results;
    property IsThreadDone: WordBool read Get_IsThreadDone;
    property Errors: IDispatch read Get_Errors;
    property ResultsAsFilter: IDispatch read Get_ResultsAsFilter;
    property DirListName: WideString read Get_DirListName write Set_DirListName;
    property DirToSearch: WideString read Get_DirToSearch write Set_DirToSearch;
    property ExcludeFilters: WideString read Get_ExcludeFilters write Set_ExcludeFilters;
    property Fuzziness: Integer read Get_Fuzziness write Set_Fuzziness;
    property IncludeFilters: WideString read Get_IncludeFilters write Set_IncludeFilters;
    property IndexesToSearch: WideString read Get_IndexesToSearch write Set_IndexesToSearch;
    property MaxFilesToRetrieve: Integer read Get_MaxFilesToRetrieve write Set_MaxFilesToRetrieve;
    property NaturalLanguage: WordBool read Get_NaturalLanguage write Set_NaturalLanguage;
    property OutputListingHits: WordBool read Get_OutputListingHits write Set_OutputListingHits;
    property PhonicSearching: WordBool read Get_PhonicSearching write Set_PhonicSearching;
    property Request: WideString read Get_Request write Set_Request;
    property ResultsInMemory: WordBool read Get_ResultsInMemory write Set_ResultsInMemory;
    property Stemming: WordBool read Get_Stemming write Set_Stemming;
    property Synonyms: WordBool read Get_Synonyms write Set_Synonyms;
    property UserSynonyms: WordBool read Get_UserSynonyms write Set_UserSynonyms;
    property WordNetSynonyms: WordBool read Get_WordNetSynonyms write Set_WordNetSynonyms;
    property WordNetRelated: WordBool read Get_WordNetRelated write Set_WordNetRelated;
    property TimeoutSeconds: Integer read Get_TimeoutSeconds write Set_TimeoutSeconds;
    property DelayDocInfo: WordBool read Get_DelayDocInfo write Set_DelayDocInfo;
    property RegularExpression: WordBool read Get_RegularExpression write Set_RegularExpression;
    property SearchFlags: Integer read Get_SearchFlags write Set_SearchFlags;
    property OutputListingName: WideString read Get_OutputListingName write Set_OutputListingName;
    property ExternalSynonyms: WordBool read Get_ExternalSynonyms write Set_ExternalSynonyms;
    property FileConditions: WideString read Get_FileConditions write Set_FileConditions;
    property AutoStopLimit: Integer read Get_AutoStopLimit write Set_AutoStopLimit;
    property ListingFlags: Integer read Get_ListingFlags write Set_ListingFlags;
    property BooleanConditions: WideString read Get_BooleanConditions write Set_BooleanConditions;
    property WantResultsAsFilter: WordBool read Get_WantResultsAsFilter write Set_WantResultsAsFilter;
    property FieldWeights: WideString read Get_FieldWeights write Set_FieldWeights;
  published
  end;

// *********************************************************************//
// The Class CoFileConverter provides a Create and CreateRemote method to          
// create instances of the default interface IFileConverter exposed by              
// the CoClass FileConverter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFileConverter = class
    class function Create: IFileConverter;
    class function CreateRemote(const MachineName: string): IFileConverter;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFileConverter
// Help String      : FileConverter Class
// Default Interface: IFileConverter
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TFileConverter = class(TOleServer)
  private
    FIntf: IFileConverter;
    function GetDefaultInterface: IFileConverter;
  protected
    procedure InitServerData; override;
    function Get_InputFile: WideString;
    procedure Set_InputFile(const pVal: WideString);
    function Get_OutputFile: WideString;
    procedure Set_OutputFile(const pVal: WideString);
    function Get_OutputFormat: Integer;
    procedure Set_OutputFormat(pVal: Integer);
    function Get_BeforeHit: WideString;
    procedure Set_BeforeHit(const pVal: WideString);
    function Get_AfterHit: WideString;
    procedure Set_AfterHit(const pVal: WideString);
    function Get_Footer: WideString;
    procedure Set_Footer(const pVal: WideString);
    function Get_Hits: WideString;
    procedure Set_Hits(const pVal: WideString);
    function Get_Errors: IDispatch;
    function Get_BaseHRef: WideString;
    procedure Set_BaseHRef(const pVal: WideString);
    function Get_OutputToString: WordBool;
    procedure Set_OutputToString(pVal: WordBool);
    function Get_OutputStringMaxSize: Integer;
    procedure Set_OutputStringMaxSize(pVal: Integer);
    function Get_OutputString: WideString;
    function Get_TimeoutSeconds: Integer;
    procedure Set_TimeoutSeconds(pVal: Integer);
    function Get_AlphabetLocation: WideString;
    procedure Set_AlphabetLocation(const pVal: WideString);
    function Get_flags: Integer;
    procedure Set_flags(pVal: Integer);
    function Get_Header: WideString;
    procedure Set_Header(const pVal: WideString);
    function Get_InputText: WideString;
    procedure Set_InputText(const pVal: WideString);
    function Get_InputFields: WideString;
    procedure Set_InputFields(const pVal: WideString);
    function Get_HtmlHead: WideString;
    procedure Set_HtmlHead(const pVal: WideString);
    function Get_InputTypeId: Integer;
    procedure Set_InputTypeId(pVal: Integer);
    function Get_IndexRetrievedFrom: WideString;
    procedure Set_IndexRetrievedFrom(const pVal: WideString);
    function Get_InputDocId: Integer;
    procedure Set_InputDocId(pVal: Integer);
    function Get_DetectedTypeId: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IFileConverter);
    procedure Disconnect; override;
    procedure Execute;
    procedure SetInputItem(const Results: ISearchResults; whichItem: Integer);
    property DefaultInterface: IFileConverter read GetDefaultInterface;
    property Errors: IDispatch read Get_Errors;
    property OutputString: WideString read Get_OutputString;
    property DetectedTypeId: Integer read Get_DetectedTypeId;
    property InputFile: WideString read Get_InputFile write Set_InputFile;
    property OutputFile: WideString read Get_OutputFile write Set_OutputFile;
    property OutputFormat: Integer read Get_OutputFormat write Set_OutputFormat;
    property BeforeHit: WideString read Get_BeforeHit write Set_BeforeHit;
    property AfterHit: WideString read Get_AfterHit write Set_AfterHit;
    property Footer: WideString read Get_Footer write Set_Footer;
    property Hits: WideString read Get_Hits write Set_Hits;
    property BaseHRef: WideString read Get_BaseHRef write Set_BaseHRef;
    property OutputToString: WordBool read Get_OutputToString write Set_OutputToString;
    property OutputStringMaxSize: Integer read Get_OutputStringMaxSize write Set_OutputStringMaxSize;
    property TimeoutSeconds: Integer read Get_TimeoutSeconds write Set_TimeoutSeconds;
    property AlphabetLocation: WideString read Get_AlphabetLocation write Set_AlphabetLocation;
    property flags: Integer read Get_flags write Set_flags;
    property Header: WideString read Get_Header write Set_Header;
    property InputText: WideString read Get_InputText write Set_InputText;
    property InputFields: WideString read Get_InputFields write Set_InputFields;
    property HtmlHead: WideString read Get_HtmlHead write Set_HtmlHead;
    property InputTypeId: Integer read Get_InputTypeId write Set_InputTypeId;
    property IndexRetrievedFrom: WideString read Get_IndexRetrievedFrom write Set_IndexRetrievedFrom;
    property InputDocId: Integer read Get_InputDocId write Set_InputDocId;
  published
  end;

// *********************************************************************//
// The Class CoSearchReportJob provides a Create and CreateRemote method to          
// create instances of the default interface ISearchReportJob exposed by              
// the CoClass SearchReportJob. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSearchReportJob = class
    class function Create: ISearchReportJob;
    class function CreateRemote(const MachineName: string): ISearchReportJob;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSearchReportJob
// Help String      : SearchReportJob Class
// Default Interface: ISearchReportJob
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TSearchReportJob = class(TOleServer)
  private
    FIntf: ISearchReportJob;
    function GetDefaultInterface: ISearchReportJob;
  protected
    procedure InitServerData; override;
    function Get_BeforeHit: WideString;
    procedure Set_BeforeHit(const pVal: WideString);
    function Get_AfterHit: WideString;
    procedure Set_AfterHit(const pVal: WideString);
    function Get_Header: WideString;
    procedure Set_Header(const pVal: WideString);
    function Get_Footer: WideString;
    procedure Set_Footer(const pVal: WideString);
    function Get_FileHeader: WideString;
    procedure Set_FileHeader(const pVal: WideString);
    function Get_ContextHeader: WideString;
    procedure Set_ContextHeader(const pVal: WideString);
    function Get_WordsOfContext: Integer;
    procedure Set_WordsOfContext(pVal: Integer);
    function Get_ParagraphsOfContext: Integer;
    procedure Set_ParagraphsOfContext(pVal: Integer);
    function Get_Errors: IDispatch;
    function Get_OutputFormat: Integer;
    procedure Set_OutputFormat(pVal: Integer);
    function Get_OutputFile: WideString;
    procedure Set_OutputFile(const pVal: WideString);
    function Get_TimeoutSeconds: Integer;
    procedure Set_TimeoutSeconds(pVal: Integer);
    function Get_OutputString: WideString;
    function Get_OutputStringMaxSize: Integer;
    procedure Set_OutputStringMaxSize(pVal: Integer);
    function Get_OutputToString: WordBool;
    procedure Set_OutputToString(pVal: WordBool);
    function Get_FileFooter: WideString;
    procedure Set_FileFooter(const pVal: WideString);
    function Get_WordsOfContextExact: Integer;
    procedure Set_WordsOfContextExact(pVal: Integer);
    function Get_MaxContextBlocks: Integer;
    procedure Set_MaxContextBlocks(pVal: Integer);
    function Get_MaxWordsToRead: Integer;
    procedure Set_MaxWordsToRead(pVal: Integer);
    function Get_ContextFooter: WideString;
    procedure Set_ContextFooter(const pVal: WideString);
    function Get_flags: Integer;
    procedure Set_flags(pVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISearchReportJob);
    procedure Disconnect; override;
    procedure Execute;
    procedure SelectItems(iFirstItem: Integer; iLastItem: Integer);
    procedure ClearSelections;
    procedure SelectAll;
    property DefaultInterface: ISearchReportJob read GetDefaultInterface;
    property Errors: IDispatch read Get_Errors;
    property OutputString: WideString read Get_OutputString;
    property BeforeHit: WideString read Get_BeforeHit write Set_BeforeHit;
    property AfterHit: WideString read Get_AfterHit write Set_AfterHit;
    property Header: WideString read Get_Header write Set_Header;
    property Footer: WideString read Get_Footer write Set_Footer;
    property FileHeader: WideString read Get_FileHeader write Set_FileHeader;
    property ContextHeader: WideString read Get_ContextHeader write Set_ContextHeader;
    property WordsOfContext: Integer read Get_WordsOfContext write Set_WordsOfContext;
    property ParagraphsOfContext: Integer read Get_ParagraphsOfContext write Set_ParagraphsOfContext;
    property OutputFormat: Integer read Get_OutputFormat write Set_OutputFormat;
    property OutputFile: WideString read Get_OutputFile write Set_OutputFile;
    property TimeoutSeconds: Integer read Get_TimeoutSeconds write Set_TimeoutSeconds;
    property OutputStringMaxSize: Integer read Get_OutputStringMaxSize write Set_OutputStringMaxSize;
    property OutputToString: WordBool read Get_OutputToString write Set_OutputToString;
    property FileFooter: WideString read Get_FileFooter write Set_FileFooter;
    property WordsOfContextExact: Integer read Get_WordsOfContextExact write Set_WordsOfContextExact;
    property MaxContextBlocks: Integer read Get_MaxContextBlocks write Set_MaxContextBlocks;
    property MaxWordsToRead: Integer read Get_MaxWordsToRead write Set_MaxWordsToRead;
    property ContextFooter: WideString read Get_ContextFooter write Set_ContextFooter;
    property flags: Integer read Get_flags write Set_flags;
  published
  end;

// *********************************************************************//
// The Class CoOptions provides a Create and CreateRemote method to          
// create instances of the default interface IOptions exposed by              
// the CoClass Options. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOptions = class
    class function Create: IOptions;
    class function CreateRemote(const MachineName: string): IOptions;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOptions
// Help String      : Options Class
// Default Interface: IOptions
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOptions = class(TOleServer)
  private
    FIntf: IOptions;
    function GetDefaultInterface: IOptions;
  protected
    procedure InitServerData; override;
    function Get_BinaryFiles: Integer;
    procedure Set_BinaryFiles(pVal: Integer);
    function Get_Hyphens: Integer;
    procedure Set_Hyphens(pVal: Integer);
    function Get_IndexNumbers: WordBool;
    procedure Set_IndexNumbers(pVal: WordBool);
    function Get_AlphabetName: WideString;
    procedure Set_AlphabetName(const pVal: WideString);
    function Get_BinaryFilterTextChars: WideString;
    procedure Set_BinaryFilterTextChars(const pVal: WideString);
    function Get_StemmingRulesFile: WideString;
    procedure Set_StemmingRulesFile(const pVal: WideString);
    function Get_NoiseWordFile: WideString;
    procedure Set_NoiseWordFile(const pVal: WideString);
    function Get_MaxWordsToRetrieve: Integer;
    procedure Set_MaxWordsToRetrieve(pVal: Integer);
    function Get_MaxStoredFieldSize: Integer;
    procedure Set_MaxStoredFieldSize(pVal: Integer);
    function Get_TitleSize: Integer;
    procedure Set_TitleSize(pVal: Integer);
    function Get_XmlIgnoreTags: WideString;
    procedure Set_XmlIgnoreTags(const pVal: WideString);
    function Get_MaxWordLength: Integer;
    procedure Set_MaxWordLength(pVal: Integer);
    function Get_SegmentationRulesFile: WideString;
    procedure Set_SegmentationRulesFile(const pVal: WideString);
    function Get_TextFieldsFile: WideString;
    procedure Set_TextFieldsFile(const pVal: WideString);
    function Get_UserThesaurusFile: WideString;
    procedure Set_UserThesaurusFile(const pVal: WideString);
    function Get_HomeDir: WideString;
    procedure Set_HomeDir(const pVal: WideString);
    function Get_PrivateDir: WideString;
    procedure Set_PrivateDir(const pVal: WideString);
    function Get_BooleanConnectors: WideString;
    procedure Set_BooleanConnectors(const pVal: WideString);
    function Get_FileTypeTableFile: WideString;
    procedure Set_FileTypeTableFile(const pVal: WideString);
    function Get_UpdateFiles: WordBool;
    procedure Set_UpdateFiles(pVal: WordBool);
    function Get_LzwEnableCode: Integer;
    procedure Set_LzwEnableCode(pVal: Integer);
    function Get_FieldFlags: Integer;
    procedure Set_FieldFlags(pVal: Integer);
    function Get_MacroChar: WideString;
    procedure Set_MacroChar(const pVal: WideString);
    function Get_FuzzyChar: WideString;
    procedure Set_FuzzyChar(const pVal: WideString);
    function Get_PhonicChar: WideString;
    procedure Set_PhonicChar(const pVal: WideString);
    function Get_StemmingChar: WideString;
    procedure Set_StemmingChar(const pVal: WideString);
    function Get_SynonymChar: WideString;
    procedure Set_SynonymChar(const pVal: WideString);
    function Get_WeightChar: WideString;
    procedure Set_WeightChar(const pVal: WideString);
    function Get_MatchDigitChar: WideString;
    procedure Set_MatchDigitChar(const pVal: WideString);
    function Get_AlphabetFile: WideString;
    procedure Set_AlphabetFile(const pVal: WideString);
    function Get_UnicodeFilterRanges: WideString;
    procedure Set_UnicodeFilterRanges(const pVal: WideString);
    function Get_UnicodeFilterBlockSize: Integer;
    procedure Set_UnicodeFilterBlockSize(pVal: Integer);
    function Get_UnicodeFilterFlags: Integer;
    procedure Set_UnicodeFilterFlags(pVal: Integer);
    function Get_UnicodeFilterMinTextSize: Integer;
    procedure Set_UnicodeFilterMinTextSize(pVal: Integer);
    function Get_TextFlags: Integer;
    procedure Set_TextFlags(pVal: Integer);
    function Get_UnicodeFilterWordOverlapAmount: Integer;
    procedure Set_UnicodeFilterWordOverlapAmount(pVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IOptions);
    procedure Disconnect; override;
    procedure Save;
    property DefaultInterface: IOptions read GetDefaultInterface;
    property BinaryFiles: Integer read Get_BinaryFiles write Set_BinaryFiles;
    property Hyphens: Integer read Get_Hyphens write Set_Hyphens;
    property IndexNumbers: WordBool read Get_IndexNumbers write Set_IndexNumbers;
    property AlphabetName: WideString read Get_AlphabetName write Set_AlphabetName;
    property BinaryFilterTextChars: WideString read Get_BinaryFilterTextChars write Set_BinaryFilterTextChars;
    property StemmingRulesFile: WideString read Get_StemmingRulesFile write Set_StemmingRulesFile;
    property NoiseWordFile: WideString read Get_NoiseWordFile write Set_NoiseWordFile;
    property MaxWordsToRetrieve: Integer read Get_MaxWordsToRetrieve write Set_MaxWordsToRetrieve;
    property MaxStoredFieldSize: Integer read Get_MaxStoredFieldSize write Set_MaxStoredFieldSize;
    property TitleSize: Integer read Get_TitleSize write Set_TitleSize;
    property XmlIgnoreTags: WideString read Get_XmlIgnoreTags write Set_XmlIgnoreTags;
    property MaxWordLength: Integer read Get_MaxWordLength write Set_MaxWordLength;
    property SegmentationRulesFile: WideString read Get_SegmentationRulesFile write Set_SegmentationRulesFile;
    property TextFieldsFile: WideString read Get_TextFieldsFile write Set_TextFieldsFile;
    property UserThesaurusFile: WideString read Get_UserThesaurusFile write Set_UserThesaurusFile;
    property HomeDir: WideString read Get_HomeDir write Set_HomeDir;
    property PrivateDir: WideString read Get_PrivateDir write Set_PrivateDir;
    property BooleanConnectors: WideString read Get_BooleanConnectors write Set_BooleanConnectors;
    property FileTypeTableFile: WideString read Get_FileTypeTableFile write Set_FileTypeTableFile;
    property UpdateFiles: WordBool read Get_UpdateFiles write Set_UpdateFiles;
    property LzwEnableCode: Integer read Get_LzwEnableCode write Set_LzwEnableCode;
    property FieldFlags: Integer read Get_FieldFlags write Set_FieldFlags;
    property MacroChar: WideString read Get_MacroChar write Set_MacroChar;
    property FuzzyChar: WideString read Get_FuzzyChar write Set_FuzzyChar;
    property PhonicChar: WideString read Get_PhonicChar write Set_PhonicChar;
    property StemmingChar: WideString read Get_StemmingChar write Set_StemmingChar;
    property SynonymChar: WideString read Get_SynonymChar write Set_SynonymChar;
    property WeightChar: WideString read Get_WeightChar write Set_WeightChar;
    property MatchDigitChar: WideString read Get_MatchDigitChar write Set_MatchDigitChar;
    property AlphabetFile: WideString read Get_AlphabetFile write Set_AlphabetFile;
    property UnicodeFilterRanges: WideString read Get_UnicodeFilterRanges write Set_UnicodeFilterRanges;
    property UnicodeFilterBlockSize: Integer read Get_UnicodeFilterBlockSize write Set_UnicodeFilterBlockSize;
    property UnicodeFilterFlags: Integer read Get_UnicodeFilterFlags write Set_UnicodeFilterFlags;
    property UnicodeFilterMinTextSize: Integer read Get_UnicodeFilterMinTextSize write Set_UnicodeFilterMinTextSize;
    property TextFlags: Integer read Get_TextFlags write Set_TextFlags;
    property UnicodeFilterWordOverlapAmount: Integer read Get_UnicodeFilterWordOverlapAmount write Set_UnicodeFilterWordOverlapAmount;
  published
  end;

// *********************************************************************//
// The Class CoWordListBuilder provides a Create and CreateRemote method to          
// create instances of the default interface IWordListBuilder exposed by              
// the CoClass WordListBuilder. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWordListBuilder = class
    class function Create: IWordListBuilder;
    class function CreateRemote(const MachineName: string): IWordListBuilder;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWordListBuilder
// Help String      : WordListBuilder Class
// Default Interface: IWordListBuilder
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TWordListBuilder = class(TOleServer)
  private
    FIntf: IWordListBuilder;
    function GetDefaultInterface: IWordListBuilder;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWordListBuilder);
    procedure Disconnect; override;
    function OpenIndex(const IndexName: WideString): Integer;
    procedure CloseIndex;
    function ListWords(const CursorWord: WideString; Range: Integer): Integer;
    function GetNthWord(iWord: Integer): WideString;
    function GetNthWordCount(iWord: Integer): Integer;
    function GetNthWordField(iWord: Integer): WideString;
    function ListMatchingWords(const toMatch: WideString; nLimit: Integer; SearchFlags: Integer; 
                               Fuzziness: Integer): Integer;
    procedure ListFields(var pVal: Integer);
    function GetNthWordDocCount(iWord: Integer): Integer;
    function ListFieldValues(const field: WideString; const toMatch: WideString; nLimit: Integer): Integer;
    procedure SetFilter(const newFilter: ISearchFilter);
    function Sort(flags: Integer): WordBool;
    property DefaultInterface: IWordListBuilder read GetDefaultInterface;
    property Count: Integer read Get_Count;
  published
  end;

// *********************************************************************//
// The Class CoSearchResults provides a Create and CreateRemote method to          
// create instances of the default interface ISearchResults exposed by              
// the CoClass SearchResults. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSearchResults = class
    class function Create: ISearchResults;
    class function CreateRemote(const MachineName: string): ISearchResults;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSearchResults
// Help String      : SearchResults Class
// Default Interface: ISearchResults
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TSearchResults = class(TOleServer)
  private
    FIntf: ISearchResults;
    function GetDefaultInterface: ISearchResults;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_DocName: WideString;
    function Get_DocHitCount: Integer;
    function Get_DocDetails: WideString;
    function Get_DocHits: WideString;
    function Get_Request: WideString;
    function Get_TotalHitCount: Integer;
    function Get_HitByteOffsets: WideString;
    function Get_DocDetailItem(const name: WideString): WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISearchResults);
    procedure Disconnect; override;
    function GetNthDoc(iDoc: Integer): WordBool;
    procedure Sort(flags: Integer; const fieldName: WideString);
    function NewSearchReportJob: IDispatch;
    procedure MakePdfHighlightFile;
    function MakePdfWebHighlightFile: WideString;
    function UrlEncodeItem: WideString;
    procedure UrlDecodeItem(const val: WideString);
    function SerializeAsXml: WideString;
    procedure SerializeFromXml(const xmlString: WideString);
    procedure SetSortKey(const newKey: WideString);
    procedure AddDoc(const IndexPath: WideString; docId: Integer; Hits: OleVariant);
    procedure Empty;
    property DefaultInterface: ISearchResults read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property DocName: WideString read Get_DocName;
    property DocHitCount: Integer read Get_DocHitCount;
    property DocDetails: WideString read Get_DocDetails;
    property DocHits: WideString read Get_DocHits;
    property Request: WideString read Get_Request;
    property TotalHitCount: Integer read Get_TotalHitCount;
    property HitByteOffsets: WideString read Get_HitByteOffsets;
    property DocDetailItem[const name: WideString]: WideString read Get_DocDetailItem;
  published
  end;

// *********************************************************************//
// The Class CoSearchFilter provides a Create and CreateRemote method to          
// create instances of the default interface ISearchFilter exposed by              
// the CoClass SearchFilter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSearchFilter = class
    class function Create: ISearchFilter;
    class function CreateRemote(const MachineName: string): ISearchFilter;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSearchFilter
// Help String      : SearchFilter Class
// Default Interface: ISearchFilter
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TSearchFilter = class(TOleServer)
  private
    FIntf: ISearchFilter;
    function GetDefaultInterface: ISearchFilter;
  protected
    procedure InitServerData; override;
    function Get_IndexCount: Integer;
    function Get_IndexPath(iIndex: Integer): WideString;
    function Get_IndexSelections(iIndex: Integer): OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISearchFilter);
    procedure Disconnect; override;
    function AddIndex(const IndexPath: WideString): Integer;
    procedure SelectAll(iIndex: Integer);
    procedure SelectNone(iIndex: Integer);
    procedure SelectItems(iIndex: Integer; firstItem: Integer; lastItem: Integer; 
                          isSelected: WordBool);
    function Write(const filename: WideString): Integer;
    function Read(const filename: WideString): Integer;
    function Equals(const other: ISearchFilter): WordBool;
    function ReadMultiple(const filtersToRead: WideString): Integer;
    procedure Or_(const other: ISearchFilter);
    procedure And_(const other: ISearchFilter);
    function SelectItemsBySearch(iIndex: Integer; const searchRequest: WideString; 
                                 bSelected: WordBool): Integer;
    function GetItemArray(iIndex: Integer): OleVariant;
    function GetItemArrayVBS(iIndex: Integer): OleVariant;
    procedure AndNot(const other: ISearchFilter);
    property DefaultInterface: ISearchFilter read GetDefaultInterface;
    property IndexCount: Integer read Get_IndexCount;
    property IndexPath[iIndex: Integer]: WideString read Get_IndexPath;
    property IndexSelections[iIndex: Integer]: OleVariant read Get_IndexSelections;
  published
  end;

// *********************************************************************//
// The Class CoIndexCache provides a Create and CreateRemote method to          
// create instances of the default interface IIndexCache exposed by              
// the CoClass IndexCache. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIndexCache = class
    class function Create: IIndexCache;
    class function CreateRemote(const MachineName: string): IIndexCache;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TIndexCache
// Help String      : IndexCache Class
// Default Interface: IIndexCache
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TIndexCache = class(TOleServer)
  private
    FIntf: IIndexCache;
    function GetDefaultInterface: IIndexCache;
  protected
    procedure InitServerData; override;
    function Get_AutoCloseTime: Integer;
    procedure Set_AutoCloseTime(pVal: Integer);
    function Get_AutoReopenTime: Integer;
    procedure Set_AutoReopenTime(pVal: Integer);
    function Get_InUseCount: Integer;
    function Get_MaxCount: Integer;
    procedure Set_MaxCount(pVal: Integer);
    function Get_OpenIndexCount: Integer;
    function Get_Handle: Largeuint;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IIndexCache);
    procedure Disconnect; override;
    property DefaultInterface: IIndexCache read GetDefaultInterface;
    property InUseCount: Integer read Get_InUseCount;
    property OpenIndexCount: Integer read Get_OpenIndexCount;
    property Handle: Largeuint read Get_Handle;
    property AutoCloseTime: Integer read Get_AutoCloseTime write Set_AutoCloseTime;
    property AutoReopenTime: Integer read Get_AutoReopenTime write Set_AutoReopenTime;
    property MaxCount: Integer read Get_MaxCount write Set_MaxCount;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoServer.Create: IServer;
begin
  Result := CreateComObject(CLASS_Server) as IServer;
end;

class function CoServer.CreateRemote(const MachineName: string): IServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Server) as IServer;
end;

procedure TServer.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A967E5D2-B0E1-11D3-B57C-00105AA461D0}';
    IntfIID:   '{A967E5D1-B0E1-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TServer.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IServer;
  end;
end;

procedure TServer.ConnectTo(svrIntf: IServer);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TServer.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TServer.GetDefaultInterface: IServer;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TServer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TServer.Destroy;
begin
  inherited Destroy;
end;

function TServer.Get_DebugLogName: WideString;
begin
  Result := DefaultInterface.DebugLogName;
end;

procedure TServer.Set_DebugLogName(const pVal: WideString);
begin
  DefaultInterface.DebugLogName := pVal;
end;

function TServer.Get_HomeDir: WideString;
begin
  Result := DefaultInterface.HomeDir;
end;

procedure TServer.Set_HomeDir(const pVal: WideString);
begin
  DefaultInterface.HomeDir := pVal;
end;

function TServer.Get_PrivateDir: WideString;
begin
  Result := DefaultInterface.PrivateDir;
end;

procedure TServer.Set_PrivateDir(const pVal: WideString);
begin
  DefaultInterface.PrivateDir := pVal;
end;

procedure TServer.Set_SendTestError(Param1: WordBool);
begin
  DefaultInterface.SendTestError := Param1;
end;

procedure TServer.Set_SendTestInfo(Param1: WordBool);
begin
  DefaultInterface.SendTestInfo := Param1;
end;

procedure TServer.Set_SendTestQuestion(Param1: WordBool);
begin
  DefaultInterface.SendTestQuestion := Param1;
end;

function TServer.Get_MajorVersion: Smallint;
begin
  Result := DefaultInterface.MajorVersion;
end;

function TServer.Get_MinorVersion: Smallint;
begin
  Result := DefaultInterface.MinorVersion;
end;

function TServer.Get_Build: Integer;
begin
  Result := DefaultInterface.Build;
end;

function TServer.Get_Initialized: WordBool;
begin
  Result := DefaultInterface.Initialized;
end;

function TServer.Get_InitMessage: WideString;
begin
  Result := DefaultInterface.InitMessage;
end;

procedure TServer.Set_LzwEnableCode(Param1: Integer);
begin
  DefaultInterface.LzwEnableCode := Param1;
end;

function TServer.Get_Errors: IDispatch;
begin
  Result := DefaultInterface.Errors;
end;

function TServer.Get_MessageHandler: IDispatch;
begin
  Result := DefaultInterface.MessageHandler;
end;

procedure TServer._Set_MessageHandler(const pVal: IDispatch);
begin
  DefaultInterface.MessageHandler := pVal;
end;

function TServer.Get_AllocatedObjectList: WideString;
begin
  Result := DefaultInterface.AllocatedObjectList;
end;

function TServer.Initialize: WordBool;
begin
  Result := DefaultInterface.Initialize;
end;

procedure TServer.Shutdown;
begin
  DefaultInterface.Shutdown;
end;

function TServer.NewIndexJob: IDispatch;
begin
  Result := DefaultInterface.NewIndexJob;
end;

function TServer.NewSearchJob: IDispatch;
begin
  Result := DefaultInterface.NewSearchJob;
end;

function TServer.NewOptions: IDispatch;
begin
  Result := DefaultInterface.NewOptions;
end;

function TServer.NewFileConverter: IDispatch;
begin
  Result := DefaultInterface.NewFileConverter;
end;

function TServer.NewWordListBuilder: IDispatch;
begin
  Result := DefaultInterface.NewWordListBuilder;
end;

function TServer.ConvertPath(const path: WideString; siteId: Integer; flags: Integer; 
                             const tableLocation: WideString): WideString;
begin
  Result := DefaultInterface.ConvertPath(path, siteId, flags, tableLocation);
end;

procedure TServer.SetDebugLogging(const LogName: WideString; flags: Integer);
begin
  DefaultInterface.SetDebugLogging(LogName, flags);
end;

function TServer.NewSearchResults: IDispatch;
begin
  Result := DefaultInterface.NewSearchResults;
end;

function TServer.ConvertString(const string_: WideString; inEncoding: Integer; outEncoding: Integer): WideString;
begin
  Result := DefaultInterface.ConvertString(string_, inEncoding, outEncoding);
end;

function TServer.NewSearchFilter: IDispatch;
begin
  Result := DefaultInterface.NewSearchFilter;
end;

function TServer.NewIndexCache: IDispatch;
begin
  Result := DefaultInterface.NewIndexCache;
end;

class function CoJobErrorInfo.Create: IJobErrorInfo;
begin
  Result := CreateComObject(CLASS_JobErrorInfo) as IJobErrorInfo;
end;

class function CoJobErrorInfo.CreateRemote(const MachineName: string): IJobErrorInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_JobErrorInfo) as IJobErrorInfo;
end;

procedure TJobErrorInfo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A967E5D6-B0E1-11D3-B57C-00105AA461D0}';
    IntfIID:   '{A967E5D5-B0E1-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TJobErrorInfo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IJobErrorInfo;
  end;
end;

procedure TJobErrorInfo.ConnectTo(svrIntf: IJobErrorInfo);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TJobErrorInfo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TJobErrorInfo.GetDefaultInterface: IJobErrorInfo;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TJobErrorInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TJobErrorInfo.Destroy;
begin
  inherited Destroy;
end;

function TJobErrorInfo.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TJobErrorInfo.Get_Message(iMessage: Integer): WideString;
begin
  Result := DefaultInterface.Message[iMessage];
end;

function TJobErrorInfo.Get_Code(iMessage: Integer): Integer;
begin
  Result := DefaultInterface.Code[iMessage];
end;

function TJobErrorInfo.Get_Arg1(iMessage: Integer): WideString;
begin
  Result := DefaultInterface.Arg1[iMessage];
end;

function TJobErrorInfo.Get_Arg2(iMessage: Integer): WideString;
begin
  Result := DefaultInterface.Arg2[iMessage];
end;

function TJobErrorInfo.Format: WideString;
begin
  Result := DefaultInterface.Format;
end;

class function CoIndexJob.Create: IIndexJob;
begin
  Result := CreateComObject(CLASS_IndexJob) as IIndexJob;
end;

class function CoIndexJob.CreateRemote(const MachineName: string): IIndexJob;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IndexJob) as IIndexJob;
end;

procedure TIndexJob.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{697DF023-B24E-11D3-B57C-00105AA461D0}';
    IntfIID:   '{697DF022-B24E-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TIndexJob.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IIndexJob;
  end;
end;

procedure TIndexJob.ConnectTo(svrIntf: IIndexJob);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TIndexJob.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TIndexJob.GetDefaultInterface: IIndexJob;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TIndexJob.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TIndexJob.Destroy;
begin
  inherited Destroy;
end;

function TIndexJob.Get_ActionAdd: WordBool;
begin
  Result := DefaultInterface.ActionAdd;
end;

procedure TIndexJob.Set_ActionAdd(pVal: WordBool);
begin
  DefaultInterface.ActionAdd := pVal;
end;

function TIndexJob.Get_ActionCompress: WordBool;
begin
  Result := DefaultInterface.ActionCompress;
end;

procedure TIndexJob.Set_ActionCompress(pVal: WordBool);
begin
  DefaultInterface.ActionCompress := pVal;
end;

function TIndexJob.Get_ActionCreate: WordBool;
begin
  Result := DefaultInterface.ActionCreate;
end;

procedure TIndexJob.Set_ActionCreate(pVal: WordBool);
begin
  DefaultInterface.ActionCreate := pVal;
end;

function TIndexJob.Get_ActionRemoveDeleted: WordBool;
begin
  Result := DefaultInterface.ActionRemoveDeleted;
end;

procedure TIndexJob.Set_ActionRemoveDeleted(pVal: WordBool);
begin
  DefaultInterface.ActionRemoveDeleted := pVal;
end;

function TIndexJob.Get_ActionRemoveListed: WordBool;
begin
  Result := DefaultInterface.ActionRemoveListed;
end;

procedure TIndexJob.Set_ActionRemoveListed(pVal: WordBool);
begin
  DefaultInterface.ActionRemoveListed := pVal;
end;

function TIndexJob.Get_AllowConcurrentAccess: WordBool;
begin
  Result := DefaultInterface.AllowConcurrentAccess;
end;

procedure TIndexJob.Set_AllowConcurrentAccess(pVal: WordBool);
begin
  DefaultInterface.AllowConcurrentAccess := pVal;
end;

function TIndexJob.Get_CreateAccentSensitive: WordBool;
begin
  Result := DefaultInterface.CreateAccentSensitive;
end;

procedure TIndexJob.Set_CreateAccentSensitive(pVal: WordBool);
begin
  DefaultInterface.CreateAccentSensitive := pVal;
end;

function TIndexJob.Get_CreateCaseSensitive: WordBool;
begin
  Result := DefaultInterface.CreateCaseSensitive;
end;

procedure TIndexJob.Set_CreateCaseSensitive(pVal: WordBool);
begin
  DefaultInterface.CreateCaseSensitive := pVal;
end;

procedure TIndexJob._Set_DataSourceToIndex(const Param1: IDispatch);
begin
  DefaultInterface.DataSourceToIndex := Param1;
end;

function TIndexJob.Get_IndexName: WideString;
begin
  Result := DefaultInterface.IndexName;
end;

procedure TIndexJob.Set_IndexName(const pVal: WideString);
begin
  DefaultInterface.IndexName := pVal;
end;

function TIndexJob.Get_IndexPath: WideString;
begin
  Result := DefaultInterface.IndexPath;
end;

procedure TIndexJob.Set_IndexPath(const pVal: WideString);
begin
  DefaultInterface.IndexPath := pVal;
end;

procedure TIndexJob._Set_StatusHandler(const Param1: IDispatch);
begin
  DefaultInterface.StatusHandler := Param1;
end;

function TIndexJob.Get_StoredFields: WideString;
begin
  Result := DefaultInterface.StoredFields;
end;

procedure TIndexJob.Set_StoredFields(const pVal: WideString);
begin
  DefaultInterface.StoredFields := pVal;
end;

function TIndexJob.Get_ToAddDir: WideString;
begin
  Result := DefaultInterface.ToAddDir;
end;

procedure TIndexJob.Set_ToAddDir(const pVal: WideString);
begin
  DefaultInterface.ToAddDir := pVal;
end;

function TIndexJob.Get_ToAddDirListName: WideString;
begin
  Result := DefaultInterface.ToAddDirListName;
end;

procedure TIndexJob.Set_ToAddDirListName(const pVal: WideString);
begin
  DefaultInterface.ToAddDirListName := pVal;
end;

function TIndexJob.Get_ToAddExcludeFilters: WideString;
begin
  Result := DefaultInterface.ToAddExcludeFilters;
end;

procedure TIndexJob.Set_ToAddExcludeFilters(const pVal: WideString);
begin
  DefaultInterface.ToAddExcludeFilters := pVal;
end;

function TIndexJob.Get_ToAddFileListName: WideString;
begin
  Result := DefaultInterface.ToAddFileListName;
end;

procedure TIndexJob.Set_ToAddFileListName(const pVal: WideString);
begin
  DefaultInterface.ToAddFileListName := pVal;
end;

function TIndexJob.Get_ToAddIncludeFilters: WideString;
begin
  Result := DefaultInterface.ToAddIncludeFilters;
end;

procedure TIndexJob.Set_ToAddIncludeFilters(const pVal: WideString);
begin
  DefaultInterface.ToAddIncludeFilters := pVal;
end;

function TIndexJob.Get_ToRemoveListName: WideString;
begin
  Result := DefaultInterface.ToRemoveListName;
end;

procedure TIndexJob.Set_ToRemoveListName(const pVal: WideString);
begin
  DefaultInterface.ToRemoveListName := pVal;
end;

function TIndexJob.Get_IsThreadDone: WordBool;
begin
  Result := DefaultInterface.IsThreadDone;
end;

function TIndexJob.Get_Errors: IDispatch;
begin
  Result := DefaultInterface.Errors;
end;

function TIndexJob.Get_StatusIndexingStep: Integer;
begin
  Result := DefaultInterface.StatusIndexingStep;
end;

function TIndexJob.Get_StatusPercentDone: Integer;
begin
  Result := DefaultInterface.StatusPercentDone;
end;

function TIndexJob.Get_StatusCurrentFileLocation: WideString;
begin
  Result := DefaultInterface.StatusCurrentFileLocation;
end;

function TIndexJob.Get_StatusCurrentFileName: WideString;
begin
  Result := DefaultInterface.StatusCurrentFileName;
end;

function TIndexJob.Get_StatusCurrentFileType: WideString;
begin
  Result := DefaultInterface.StatusCurrentFileType;
end;

function TIndexJob.Get_StatusDiskAvailKB: Integer;
begin
  Result := DefaultInterface.StatusDiskAvailKB;
end;

function TIndexJob.Get_StatusWordsInIndex: Integer;
begin
  Result := DefaultInterface.StatusWordsInIndex;
end;

function TIndexJob.Get_StatusDocsInIndex: Integer;
begin
  Result := DefaultInterface.StatusDocsInIndex;
end;

function TIndexJob.Get_StatusBytesIndexedKB: Integer;
begin
  Result := DefaultInterface.StatusBytesIndexedKB;
end;

function TIndexJob.Get_StatusBytesToIndexKB: Integer;
begin
  Result := DefaultInterface.StatusBytesToIndexKB;
end;

function TIndexJob.Get_StatusCurrentFilePercentDone: Integer;
begin
  Result := DefaultInterface.StatusCurrentFilePercentDone;
end;

function TIndexJob.Get_CreateAddToLibrary: WordBool;
begin
  Result := DefaultInterface.CreateAddToLibrary;
end;

procedure TIndexJob.Set_CreateAddToLibrary(pVal: WordBool);
begin
  DefaultInterface.CreateAddToLibrary := pVal;
end;

function TIndexJob.Get_CreateRelativePaths: WordBool;
begin
  Result := DefaultInterface.CreateRelativePaths;
end;

procedure TIndexJob.Set_CreateRelativePaths(pVal: WordBool);
begin
  DefaultInterface.CreateRelativePaths := pVal;
end;

function TIndexJob.Get_MaxMemToUseMB: Integer;
begin
  Result := DefaultInterface.MaxMemToUseMB;
end;

procedure TIndexJob.Set_MaxMemToUseMB(pVal: Integer);
begin
  DefaultInterface.MaxMemToUseMB := pVal;
end;

function TIndexJob.Get_IndexingFlags: Integer;
begin
  Result := DefaultInterface.IndexingFlags;
end;

procedure TIndexJob.Set_IndexingFlags(pVal: Integer);
begin
  DefaultInterface.IndexingFlags := pVal;
end;

function TIndexJob.Get_AutoCommitIntervalMB: Integer;
begin
  Result := DefaultInterface.AutoCommitIntervalMB;
end;

procedure TIndexJob.Set_AutoCommitIntervalMB(pVal: Integer);
begin
  DefaultInterface.AutoCommitIntervalMB := pVal;
end;

function TIndexJob.Get_ActionVerify: WordBool;
begin
  Result := DefaultInterface.ActionVerify;
end;

procedure TIndexJob.Set_ActionVerify(pVal: WordBool);
begin
  DefaultInterface.ActionVerify := pVal;
end;

function TIndexJob.Get_ActionMerge: WordBool;
begin
  Result := DefaultInterface.ActionMerge;
end;

procedure TIndexJob.Set_ActionMerge(pVal: WordBool);
begin
  DefaultInterface.ActionMerge := pVal;
end;

function TIndexJob.Get_IndexesToMerge: WideString;
begin
  Result := DefaultInterface.IndexesToMerge;
end;

procedure TIndexJob.Set_IndexesToMerge(const pVal: WideString);
begin
  DefaultInterface.IndexesToMerge := pVal;
end;

function TIndexJob.Get_ExecuteThreadHandle: Integer;
begin
  Result := DefaultInterface.ExecuteThreadHandle;
end;

function TIndexJob.Get_TempFileDir: WideString;
begin
  Result := DefaultInterface.TempFileDir;
end;

procedure TIndexJob.Set_TempFileDir(const pVal: WideString);
begin
  DefaultInterface.TempFileDir := pVal;
end;

function TIndexJob.Get_StartingDocId: Integer;
begin
  Result := DefaultInterface.StartingDocId;
end;

procedure TIndexJob.Set_StartingDocId(pVal: Integer);
begin
  DefaultInterface.StartingDocId := pVal;
end;

function TIndexJob.Get_EnumerableFields: WideString;
begin
  Result := DefaultInterface.EnumerableFields;
end;

procedure TIndexJob.Set_EnumerableFields(const pVal: WideString);
begin
  DefaultInterface.EnumerableFields := pVal;
end;

function TIndexJob.Execute: Smallint;
begin
  Result := DefaultInterface.Execute;
end;

procedure TIndexJob.ExecuteInThread;
begin
  DefaultInterface.ExecuteInThread;
end;

procedure TIndexJob.AbortThread;
begin
  DefaultInterface.AbortThread;
end;

procedure TIndexJob.AbortThreadImmediate;
begin
  DefaultInterface.AbortThreadImmediate;
end;

function TIndexJob.GetIndexInfo: WideString;
begin
  Result := DefaultInterface.GetIndexInfo;
end;

function TIndexJob.GetIndexInfoItem(const item: WideString): Integer;
begin
  Result := DefaultInterface.GetIndexInfoItem(item);
end;

function TIndexJob.IsThreadDoneWait(millisecondsToWait: Integer): WordBool;
begin
  Result := DefaultInterface.IsThreadDoneWait(millisecondsToWait);
end;

class function CoSearchJob.Create: ISearchJob;
begin
  Result := CreateComObject(CLASS_SearchJob) as ISearchJob;
end;

class function CoSearchJob.CreateRemote(const MachineName: string): ISearchJob;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SearchJob) as ISearchJob;
end;

procedure TSearchJob.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{697DF025-B24E-11D3-B57C-00105AA461D0}';
    IntfIID:   '{697DF024-B24E-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSearchJob.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISearchJob;
  end;
end;

procedure TSearchJob.ConnectTo(svrIntf: ISearchJob);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSearchJob.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSearchJob.GetDefaultInterface: ISearchJob;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSearchJob.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TSearchJob.Destroy;
begin
  inherited Destroy;
end;

function TSearchJob.Get_DirListName: WideString;
begin
  Result := DefaultInterface.DirListName;
end;

procedure TSearchJob.Set_DirListName(const pVal: WideString);
begin
  DefaultInterface.DirListName := pVal;
end;

function TSearchJob.Get_DirToSearch: WideString;
begin
  Result := DefaultInterface.DirToSearch;
end;

procedure TSearchJob.Set_DirToSearch(const pVal: WideString);
begin
  DefaultInterface.DirToSearch := pVal;
end;

function TSearchJob.Get_ExcludeFilters: WideString;
begin
  Result := DefaultInterface.ExcludeFilters;
end;

procedure TSearchJob.Set_ExcludeFilters(const pVal: WideString);
begin
  DefaultInterface.ExcludeFilters := pVal;
end;

function TSearchJob.Get_FileCount: Integer;
begin
  Result := DefaultInterface.FileCount;
end;

function TSearchJob.Get_HitCount: Integer;
begin
  Result := DefaultInterface.HitCount;
end;

function TSearchJob.Get_Fuzziness: Integer;
begin
  Result := DefaultInterface.Fuzziness;
end;

procedure TSearchJob.Set_Fuzziness(pVal: Integer);
begin
  DefaultInterface.Fuzziness := pVal;
end;

function TSearchJob.Get_IncludeFilters: WideString;
begin
  Result := DefaultInterface.IncludeFilters;
end;

procedure TSearchJob.Set_IncludeFilters(const pVal: WideString);
begin
  DefaultInterface.IncludeFilters := pVal;
end;

function TSearchJob.Get_IndexesToSearch: WideString;
begin
  Result := DefaultInterface.IndexesToSearch;
end;

procedure TSearchJob.Set_IndexesToSearch(const pVal: WideString);
begin
  DefaultInterface.IndexesToSearch := pVal;
end;

function TSearchJob.Get_MaxFilesToRetrieve: Integer;
begin
  Result := DefaultInterface.MaxFilesToRetrieve;
end;

procedure TSearchJob.Set_MaxFilesToRetrieve(pVal: Integer);
begin
  DefaultInterface.MaxFilesToRetrieve := pVal;
end;

function TSearchJob.Get_NaturalLanguage: WordBool;
begin
  Result := DefaultInterface.NaturalLanguage;
end;

procedure TSearchJob.Set_NaturalLanguage(pVal: WordBool);
begin
  DefaultInterface.NaturalLanguage := pVal;
end;

function TSearchJob.Get_OutputListingHits: WordBool;
begin
  Result := DefaultInterface.OutputListingHits;
end;

procedure TSearchJob.Set_OutputListingHits(pVal: WordBool);
begin
  DefaultInterface.OutputListingHits := pVal;
end;

function TSearchJob.Get_PhonicSearching: WordBool;
begin
  Result := DefaultInterface.PhonicSearching;
end;

procedure TSearchJob.Set_PhonicSearching(pVal: WordBool);
begin
  DefaultInterface.PhonicSearching := pVal;
end;

function TSearchJob.Get_Request: WideString;
begin
  Result := DefaultInterface.Request;
end;

procedure TSearchJob.Set_Request(const pVal: WideString);
begin
  DefaultInterface.Request := pVal;
end;

function TSearchJob.Get_ResultsInMemory: WordBool;
begin
  Result := DefaultInterface.ResultsInMemory;
end;

procedure TSearchJob.Set_ResultsInMemory(pVal: WordBool);
begin
  DefaultInterface.ResultsInMemory := pVal;
end;

function TSearchJob.Get_StatusHandler: IDispatch;
begin
  Result := DefaultInterface.StatusHandler;
end;

procedure TSearchJob._Set_StatusHandler(const pVal: IDispatch);
begin
  DefaultInterface.StatusHandler := pVal;
end;

function TSearchJob.Get_Stemming: WordBool;
begin
  Result := DefaultInterface.Stemming;
end;

procedure TSearchJob.Set_Stemming(pVal: WordBool);
begin
  DefaultInterface.Stemming := pVal;
end;

function TSearchJob.Get_Synonyms: WordBool;
begin
  Result := DefaultInterface.Synonyms;
end;

procedure TSearchJob.Set_Synonyms(pVal: WordBool);
begin
  DefaultInterface.Synonyms := pVal;
end;

function TSearchJob.Get_UserSynonyms: WordBool;
begin
  Result := DefaultInterface.UserSynonyms;
end;

procedure TSearchJob.Set_UserSynonyms(pVal: WordBool);
begin
  DefaultInterface.UserSynonyms := pVal;
end;

function TSearchJob.Get_WordNetSynonyms: WordBool;
begin
  Result := DefaultInterface.WordNetSynonyms;
end;

procedure TSearchJob.Set_WordNetSynonyms(pVal: WordBool);
begin
  DefaultInterface.WordNetSynonyms := pVal;
end;

function TSearchJob.Get_WordNetRelated: WordBool;
begin
  Result := DefaultInterface.WordNetRelated;
end;

procedure TSearchJob.Set_WordNetRelated(pVal: WordBool);
begin
  DefaultInterface.WordNetRelated := pVal;
end;

function TSearchJob.Get_Results: IDispatch;
begin
  Result := DefaultInterface.Results;
end;

function TSearchJob.Get_IsThreadDone: WordBool;
begin
  Result := DefaultInterface.IsThreadDone;
end;

function TSearchJob.Get_Errors: IDispatch;
begin
  Result := DefaultInterface.Errors;
end;

function TSearchJob.Get_TimeoutSeconds: Integer;
begin
  Result := DefaultInterface.TimeoutSeconds;
end;

procedure TSearchJob.Set_TimeoutSeconds(pVal: Integer);
begin
  DefaultInterface.TimeoutSeconds := pVal;
end;

function TSearchJob.Get_DelayDocInfo: WordBool;
begin
  Result := DefaultInterface.DelayDocInfo;
end;

procedure TSearchJob.Set_DelayDocInfo(pVal: WordBool);
begin
  DefaultInterface.DelayDocInfo := pVal;
end;

function TSearchJob.Get_RegularExpression: WordBool;
begin
  Result := DefaultInterface.RegularExpression;
end;

procedure TSearchJob.Set_RegularExpression(pVal: WordBool);
begin
  DefaultInterface.RegularExpression := pVal;
end;

function TSearchJob.Get_SearchFlags: Integer;
begin
  Result := DefaultInterface.SearchFlags;
end;

procedure TSearchJob.Set_SearchFlags(pVal: Integer);
begin
  DefaultInterface.SearchFlags := pVal;
end;

function TSearchJob.Get_OutputListingName: WideString;
begin
  Result := DefaultInterface.OutputListingName;
end;

procedure TSearchJob.Set_OutputListingName(const pVal: WideString);
begin
  DefaultInterface.OutputListingName := pVal;
end;

function TSearchJob.Get_ExternalSynonyms: WordBool;
begin
  Result := DefaultInterface.ExternalSynonyms;
end;

procedure TSearchJob.Set_ExternalSynonyms(pVal: WordBool);
begin
  DefaultInterface.ExternalSynonyms := pVal;
end;

function TSearchJob.Get_FileConditions: WideString;
begin
  Result := DefaultInterface.FileConditions;
end;

procedure TSearchJob.Set_FileConditions(const pVal: WideString);
begin
  DefaultInterface.FileConditions := pVal;
end;

function TSearchJob.Get_AutoStopLimit: Integer;
begin
  Result := DefaultInterface.AutoStopLimit;
end;

procedure TSearchJob.Set_AutoStopLimit(pVal: Integer);
begin
  DefaultInterface.AutoStopLimit := pVal;
end;

function TSearchJob.Get_ListingFlags: Integer;
begin
  Result := DefaultInterface.ListingFlags;
end;

procedure TSearchJob.Set_ListingFlags(pVal: Integer);
begin
  DefaultInterface.ListingFlags := pVal;
end;

function TSearchJob.Get_BooleanConditions: WideString;
begin
  Result := DefaultInterface.BooleanConditions;
end;

procedure TSearchJob.Set_BooleanConditions(const pVal: WideString);
begin
  DefaultInterface.BooleanConditions := pVal;
end;

function TSearchJob.Get_WantResultsAsFilter: WordBool;
begin
  Result := DefaultInterface.WantResultsAsFilter;
end;

procedure TSearchJob.Set_WantResultsAsFilter(pVal: WordBool);
begin
  DefaultInterface.WantResultsAsFilter := pVal;
end;

function TSearchJob.Get_ResultsAsFilter: IDispatch;
begin
  Result := DefaultInterface.ResultsAsFilter;
end;

function TSearchJob.Get_FieldWeights: WideString;
begin
  Result := DefaultInterface.FieldWeights;
end;

procedure TSearchJob.Set_FieldWeights(const pVal: WideString);
begin
  DefaultInterface.FieldWeights := pVal;
end;

function TSearchJob.Execute: Smallint;
begin
  Result := DefaultInterface.Execute;
end;

procedure TSearchJob.ExecuteInThread;
begin
  DefaultInterface.ExecuteInThread;
end;

procedure TSearchJob.AbortThread;
begin
  DefaultInterface.AbortThread;
end;

procedure TSearchJob.SetFilter(const newFilter: ISearchFilter);
begin
  DefaultInterface.SetFilter(newFilter);
end;

function TSearchJob.IsThreadDoneWait(millisecondsToWait: Integer): WordBool;
begin
  Result := DefaultInterface.IsThreadDoneWait(millisecondsToWait);
end;

procedure TSearchJob.AddIndexToSearch(const IndexPath: WideString);
begin
  DefaultInterface.AddIndexToSearch(IndexPath);
end;

procedure TSearchJob.SetIndexCache(const pCache: IIndexCache);
begin
  DefaultInterface.SetIndexCache(pCache);
end;

class function CoFileConverter.Create: IFileConverter;
begin
  Result := CreateComObject(CLASS_FileConverter) as IFileConverter;
end;

class function CoFileConverter.CreateRemote(const MachineName: string): IFileConverter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FileConverter) as IFileConverter;
end;

procedure TFileConverter.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{697DF027-B24E-11D3-B57C-00105AA461D0}';
    IntfIID:   '{697DF026-B24E-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFileConverter.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IFileConverter;
  end;
end;

procedure TFileConverter.ConnectTo(svrIntf: IFileConverter);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFileConverter.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFileConverter.GetDefaultInterface: IFileConverter;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFileConverter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TFileConverter.Destroy;
begin
  inherited Destroy;
end;

function TFileConverter.Get_InputFile: WideString;
begin
  Result := DefaultInterface.InputFile;
end;

procedure TFileConverter.Set_InputFile(const pVal: WideString);
begin
  DefaultInterface.InputFile := pVal;
end;

function TFileConverter.Get_OutputFile: WideString;
begin
  Result := DefaultInterface.OutputFile;
end;

procedure TFileConverter.Set_OutputFile(const pVal: WideString);
begin
  DefaultInterface.OutputFile := pVal;
end;

function TFileConverter.Get_OutputFormat: Integer;
begin
  Result := DefaultInterface.OutputFormat;
end;

procedure TFileConverter.Set_OutputFormat(pVal: Integer);
begin
  DefaultInterface.OutputFormat := pVal;
end;

function TFileConverter.Get_BeforeHit: WideString;
begin
  Result := DefaultInterface.BeforeHit;
end;

procedure TFileConverter.Set_BeforeHit(const pVal: WideString);
begin
  DefaultInterface.BeforeHit := pVal;
end;

function TFileConverter.Get_AfterHit: WideString;
begin
  Result := DefaultInterface.AfterHit;
end;

procedure TFileConverter.Set_AfterHit(const pVal: WideString);
begin
  DefaultInterface.AfterHit := pVal;
end;

function TFileConverter.Get_Footer: WideString;
begin
  Result := DefaultInterface.Footer;
end;

procedure TFileConverter.Set_Footer(const pVal: WideString);
begin
  DefaultInterface.Footer := pVal;
end;

function TFileConverter.Get_Hits: WideString;
begin
  Result := DefaultInterface.Hits;
end;

procedure TFileConverter.Set_Hits(const pVal: WideString);
begin
  DefaultInterface.Hits := pVal;
end;

function TFileConverter.Get_Errors: IDispatch;
begin
  Result := DefaultInterface.Errors;
end;

function TFileConverter.Get_BaseHRef: WideString;
begin
  Result := DefaultInterface.BaseHRef;
end;

procedure TFileConverter.Set_BaseHRef(const pVal: WideString);
begin
  DefaultInterface.BaseHRef := pVal;
end;

function TFileConverter.Get_OutputToString: WordBool;
begin
  Result := DefaultInterface.OutputToString;
end;

procedure TFileConverter.Set_OutputToString(pVal: WordBool);
begin
  DefaultInterface.OutputToString := pVal;
end;

function TFileConverter.Get_OutputStringMaxSize: Integer;
begin
  Result := DefaultInterface.OutputStringMaxSize;
end;

procedure TFileConverter.Set_OutputStringMaxSize(pVal: Integer);
begin
  DefaultInterface.OutputStringMaxSize := pVal;
end;

function TFileConverter.Get_OutputString: WideString;
begin
  Result := DefaultInterface.OutputString;
end;

function TFileConverter.Get_TimeoutSeconds: Integer;
begin
  Result := DefaultInterface.TimeoutSeconds;
end;

procedure TFileConverter.Set_TimeoutSeconds(pVal: Integer);
begin
  DefaultInterface.TimeoutSeconds := pVal;
end;

function TFileConverter.Get_AlphabetLocation: WideString;
begin
  Result := DefaultInterface.AlphabetLocation;
end;

procedure TFileConverter.Set_AlphabetLocation(const pVal: WideString);
begin
  DefaultInterface.AlphabetLocation := pVal;
end;

function TFileConverter.Get_flags: Integer;
begin
  Result := DefaultInterface.flags;
end;

procedure TFileConverter.Set_flags(pVal: Integer);
begin
  DefaultInterface.flags := pVal;
end;

function TFileConverter.Get_Header: WideString;
begin
  Result := DefaultInterface.Header;
end;

procedure TFileConverter.Set_Header(const pVal: WideString);
begin
  DefaultInterface.Header := pVal;
end;

function TFileConverter.Get_InputText: WideString;
begin
  Result := DefaultInterface.InputText;
end;

procedure TFileConverter.Set_InputText(const pVal: WideString);
begin
  DefaultInterface.InputText := pVal;
end;

function TFileConverter.Get_InputFields: WideString;
begin
  Result := DefaultInterface.InputFields;
end;

procedure TFileConverter.Set_InputFields(const pVal: WideString);
begin
  DefaultInterface.InputFields := pVal;
end;

function TFileConverter.Get_HtmlHead: WideString;
begin
  Result := DefaultInterface.HtmlHead;
end;

procedure TFileConverter.Set_HtmlHead(const pVal: WideString);
begin
  DefaultInterface.HtmlHead := pVal;
end;

function TFileConverter.Get_InputTypeId: Integer;
begin
  Result := DefaultInterface.InputTypeId;
end;

procedure TFileConverter.Set_InputTypeId(pVal: Integer);
begin
  DefaultInterface.InputTypeId := pVal;
end;

function TFileConverter.Get_IndexRetrievedFrom: WideString;
begin
  Result := DefaultInterface.IndexRetrievedFrom;
end;

procedure TFileConverter.Set_IndexRetrievedFrom(const pVal: WideString);
begin
  DefaultInterface.IndexRetrievedFrom := pVal;
end;

function TFileConverter.Get_InputDocId: Integer;
begin
  Result := DefaultInterface.InputDocId;
end;

procedure TFileConverter.Set_InputDocId(pVal: Integer);
begin
  DefaultInterface.InputDocId := pVal;
end;

function TFileConverter.Get_DetectedTypeId: Integer;
begin
  Result := DefaultInterface.DetectedTypeId;
end;

procedure TFileConverter.Execute;
begin
  DefaultInterface.Execute;
end;

procedure TFileConverter.SetInputItem(const Results: ISearchResults; whichItem: Integer);
begin
  DefaultInterface.SetInputItem(Results, whichItem);
end;

class function CoSearchReportJob.Create: ISearchReportJob;
begin
  Result := CreateComObject(CLASS_SearchReportJob) as ISearchReportJob;
end;

class function CoSearchReportJob.CreateRemote(const MachineName: string): ISearchReportJob;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SearchReportJob) as ISearchReportJob;
end;

procedure TSearchReportJob.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{697DF029-B24E-11D3-B57C-00105AA461D0}';
    IntfIID:   '{697DF028-B24E-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSearchReportJob.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISearchReportJob;
  end;
end;

procedure TSearchReportJob.ConnectTo(svrIntf: ISearchReportJob);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSearchReportJob.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSearchReportJob.GetDefaultInterface: ISearchReportJob;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSearchReportJob.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TSearchReportJob.Destroy;
begin
  inherited Destroy;
end;

function TSearchReportJob.Get_BeforeHit: WideString;
begin
  Result := DefaultInterface.BeforeHit;
end;

procedure TSearchReportJob.Set_BeforeHit(const pVal: WideString);
begin
  DefaultInterface.BeforeHit := pVal;
end;

function TSearchReportJob.Get_AfterHit: WideString;
begin
  Result := DefaultInterface.AfterHit;
end;

procedure TSearchReportJob.Set_AfterHit(const pVal: WideString);
begin
  DefaultInterface.AfterHit := pVal;
end;

function TSearchReportJob.Get_Header: WideString;
begin
  Result := DefaultInterface.Header;
end;

procedure TSearchReportJob.Set_Header(const pVal: WideString);
begin
  DefaultInterface.Header := pVal;
end;

function TSearchReportJob.Get_Footer: WideString;
begin
  Result := DefaultInterface.Footer;
end;

procedure TSearchReportJob.Set_Footer(const pVal: WideString);
begin
  DefaultInterface.Footer := pVal;
end;

function TSearchReportJob.Get_FileHeader: WideString;
begin
  Result := DefaultInterface.FileHeader;
end;

procedure TSearchReportJob.Set_FileHeader(const pVal: WideString);
begin
  DefaultInterface.FileHeader := pVal;
end;

function TSearchReportJob.Get_ContextHeader: WideString;
begin
  Result := DefaultInterface.ContextHeader;
end;

procedure TSearchReportJob.Set_ContextHeader(const pVal: WideString);
begin
  DefaultInterface.ContextHeader := pVal;
end;

function TSearchReportJob.Get_WordsOfContext: Integer;
begin
  Result := DefaultInterface.WordsOfContext;
end;

procedure TSearchReportJob.Set_WordsOfContext(pVal: Integer);
begin
  DefaultInterface.WordsOfContext := pVal;
end;

function TSearchReportJob.Get_ParagraphsOfContext: Integer;
begin
  Result := DefaultInterface.ParagraphsOfContext;
end;

procedure TSearchReportJob.Set_ParagraphsOfContext(pVal: Integer);
begin
  DefaultInterface.ParagraphsOfContext := pVal;
end;

function TSearchReportJob.Get_Errors: IDispatch;
begin
  Result := DefaultInterface.Errors;
end;

function TSearchReportJob.Get_OutputFormat: Integer;
begin
  Result := DefaultInterface.OutputFormat;
end;

procedure TSearchReportJob.Set_OutputFormat(pVal: Integer);
begin
  DefaultInterface.OutputFormat := pVal;
end;

function TSearchReportJob.Get_OutputFile: WideString;
begin
  Result := DefaultInterface.OutputFile;
end;

procedure TSearchReportJob.Set_OutputFile(const pVal: WideString);
begin
  DefaultInterface.OutputFile := pVal;
end;

function TSearchReportJob.Get_TimeoutSeconds: Integer;
begin
  Result := DefaultInterface.TimeoutSeconds;
end;

procedure TSearchReportJob.Set_TimeoutSeconds(pVal: Integer);
begin
  DefaultInterface.TimeoutSeconds := pVal;
end;

function TSearchReportJob.Get_OutputString: WideString;
begin
  Result := DefaultInterface.OutputString;
end;

function TSearchReportJob.Get_OutputStringMaxSize: Integer;
begin
  Result := DefaultInterface.OutputStringMaxSize;
end;

procedure TSearchReportJob.Set_OutputStringMaxSize(pVal: Integer);
begin
  DefaultInterface.OutputStringMaxSize := pVal;
end;

function TSearchReportJob.Get_OutputToString: WordBool;
begin
  Result := DefaultInterface.OutputToString;
end;

procedure TSearchReportJob.Set_OutputToString(pVal: WordBool);
begin
  DefaultInterface.OutputToString := pVal;
end;

function TSearchReportJob.Get_FileFooter: WideString;
begin
  Result := DefaultInterface.FileFooter;
end;

procedure TSearchReportJob.Set_FileFooter(const pVal: WideString);
begin
  DefaultInterface.FileFooter := pVal;
end;

function TSearchReportJob.Get_WordsOfContextExact: Integer;
begin
  Result := DefaultInterface.WordsOfContextExact;
end;

procedure TSearchReportJob.Set_WordsOfContextExact(pVal: Integer);
begin
  DefaultInterface.WordsOfContextExact := pVal;
end;

function TSearchReportJob.Get_MaxContextBlocks: Integer;
begin
  Result := DefaultInterface.MaxContextBlocks;
end;

procedure TSearchReportJob.Set_MaxContextBlocks(pVal: Integer);
begin
  DefaultInterface.MaxContextBlocks := pVal;
end;

function TSearchReportJob.Get_MaxWordsToRead: Integer;
begin
  Result := DefaultInterface.MaxWordsToRead;
end;

procedure TSearchReportJob.Set_MaxWordsToRead(pVal: Integer);
begin
  DefaultInterface.MaxWordsToRead := pVal;
end;

function TSearchReportJob.Get_ContextFooter: WideString;
begin
  Result := DefaultInterface.ContextFooter;
end;

procedure TSearchReportJob.Set_ContextFooter(const pVal: WideString);
begin
  DefaultInterface.ContextFooter := pVal;
end;

function TSearchReportJob.Get_flags: Integer;
begin
  Result := DefaultInterface.flags;
end;

procedure TSearchReportJob.Set_flags(pVal: Integer);
begin
  DefaultInterface.flags := pVal;
end;

procedure TSearchReportJob.Execute;
begin
  DefaultInterface.Execute;
end;

procedure TSearchReportJob.SelectItems(iFirstItem: Integer; iLastItem: Integer);
begin
  DefaultInterface.SelectItems(iFirstItem, iLastItem);
end;

procedure TSearchReportJob.ClearSelections;
begin
  DefaultInterface.ClearSelections;
end;

procedure TSearchReportJob.SelectAll;
begin
  DefaultInterface.SelectAll;
end;

class function CoOptions.Create: IOptions;
begin
  Result := CreateComObject(CLASS_Options) as IOptions;
end;

class function CoOptions.CreateRemote(const MachineName: string): IOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Options) as IOptions;
end;

procedure TOptions.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{697DF02B-B24E-11D3-B57C-00105AA461D0}';
    IntfIID:   '{697DF02A-B24E-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOptions.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IOptions;
  end;
end;

procedure TOptions.ConnectTo(svrIntf: IOptions);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOptions.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOptions.GetDefaultInterface: IOptions;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOptions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOptions.Destroy;
begin
  inherited Destroy;
end;

function TOptions.Get_BinaryFiles: Integer;
begin
  Result := DefaultInterface.BinaryFiles;
end;

procedure TOptions.Set_BinaryFiles(pVal: Integer);
begin
  DefaultInterface.BinaryFiles := pVal;
end;

function TOptions.Get_Hyphens: Integer;
begin
  Result := DefaultInterface.Hyphens;
end;

procedure TOptions.Set_Hyphens(pVal: Integer);
begin
  DefaultInterface.Hyphens := pVal;
end;

function TOptions.Get_IndexNumbers: WordBool;
begin
  Result := DefaultInterface.IndexNumbers;
end;

procedure TOptions.Set_IndexNumbers(pVal: WordBool);
begin
  DefaultInterface.IndexNumbers := pVal;
end;

function TOptions.Get_AlphabetName: WideString;
begin
  Result := DefaultInterface.AlphabetName;
end;

procedure TOptions.Set_AlphabetName(const pVal: WideString);
begin
  DefaultInterface.AlphabetName := pVal;
end;

function TOptions.Get_BinaryFilterTextChars: WideString;
begin
  Result := DefaultInterface.BinaryFilterTextChars;
end;

procedure TOptions.Set_BinaryFilterTextChars(const pVal: WideString);
begin
  DefaultInterface.BinaryFilterTextChars := pVal;
end;

function TOptions.Get_StemmingRulesFile: WideString;
begin
  Result := DefaultInterface.StemmingRulesFile;
end;

procedure TOptions.Set_StemmingRulesFile(const pVal: WideString);
begin
  DefaultInterface.StemmingRulesFile := pVal;
end;

function TOptions.Get_NoiseWordFile: WideString;
begin
  Result := DefaultInterface.NoiseWordFile;
end;

procedure TOptions.Set_NoiseWordFile(const pVal: WideString);
begin
  DefaultInterface.NoiseWordFile := pVal;
end;

function TOptions.Get_MaxWordsToRetrieve: Integer;
begin
  Result := DefaultInterface.MaxWordsToRetrieve;
end;

procedure TOptions.Set_MaxWordsToRetrieve(pVal: Integer);
begin
  DefaultInterface.MaxWordsToRetrieve := pVal;
end;

function TOptions.Get_MaxStoredFieldSize: Integer;
begin
  Result := DefaultInterface.MaxStoredFieldSize;
end;

procedure TOptions.Set_MaxStoredFieldSize(pVal: Integer);
begin
  DefaultInterface.MaxStoredFieldSize := pVal;
end;

function TOptions.Get_TitleSize: Integer;
begin
  Result := DefaultInterface.TitleSize;
end;

procedure TOptions.Set_TitleSize(pVal: Integer);
begin
  DefaultInterface.TitleSize := pVal;
end;

function TOptions.Get_XmlIgnoreTags: WideString;
begin
  Result := DefaultInterface.XmlIgnoreTags;
end;

procedure TOptions.Set_XmlIgnoreTags(const pVal: WideString);
begin
  DefaultInterface.XmlIgnoreTags := pVal;
end;

function TOptions.Get_MaxWordLength: Integer;
begin
  Result := DefaultInterface.MaxWordLength;
end;

procedure TOptions.Set_MaxWordLength(pVal: Integer);
begin
  DefaultInterface.MaxWordLength := pVal;
end;

function TOptions.Get_SegmentationRulesFile: WideString;
begin
  Result := DefaultInterface.SegmentationRulesFile;
end;

procedure TOptions.Set_SegmentationRulesFile(const pVal: WideString);
begin
  DefaultInterface.SegmentationRulesFile := pVal;
end;

function TOptions.Get_TextFieldsFile: WideString;
begin
  Result := DefaultInterface.TextFieldsFile;
end;

procedure TOptions.Set_TextFieldsFile(const pVal: WideString);
begin
  DefaultInterface.TextFieldsFile := pVal;
end;

function TOptions.Get_UserThesaurusFile: WideString;
begin
  Result := DefaultInterface.UserThesaurusFile;
end;

procedure TOptions.Set_UserThesaurusFile(const pVal: WideString);
begin
  DefaultInterface.UserThesaurusFile := pVal;
end;

function TOptions.Get_HomeDir: WideString;
begin
  Result := DefaultInterface.HomeDir;
end;

procedure TOptions.Set_HomeDir(const pVal: WideString);
begin
  DefaultInterface.HomeDir := pVal;
end;

function TOptions.Get_PrivateDir: WideString;
begin
  Result := DefaultInterface.PrivateDir;
end;

procedure TOptions.Set_PrivateDir(const pVal: WideString);
begin
  DefaultInterface.PrivateDir := pVal;
end;

function TOptions.Get_BooleanConnectors: WideString;
begin
  Result := DefaultInterface.BooleanConnectors;
end;

procedure TOptions.Set_BooleanConnectors(const pVal: WideString);
begin
  DefaultInterface.BooleanConnectors := pVal;
end;

function TOptions.Get_FileTypeTableFile: WideString;
begin
  Result := DefaultInterface.FileTypeTableFile;
end;

procedure TOptions.Set_FileTypeTableFile(const pVal: WideString);
begin
  DefaultInterface.FileTypeTableFile := pVal;
end;

function TOptions.Get_UpdateFiles: WordBool;
begin
  Result := DefaultInterface.UpdateFiles;
end;

procedure TOptions.Set_UpdateFiles(pVal: WordBool);
begin
  DefaultInterface.UpdateFiles := pVal;
end;

function TOptions.Get_LzwEnableCode: Integer;
begin
  Result := DefaultInterface.LzwEnableCode;
end;

procedure TOptions.Set_LzwEnableCode(pVal: Integer);
begin
  DefaultInterface.LzwEnableCode := pVal;
end;

function TOptions.Get_FieldFlags: Integer;
begin
  Result := DefaultInterface.FieldFlags;
end;

procedure TOptions.Set_FieldFlags(pVal: Integer);
begin
  DefaultInterface.FieldFlags := pVal;
end;

function TOptions.Get_MacroChar: WideString;
begin
  Result := DefaultInterface.MacroChar;
end;

procedure TOptions.Set_MacroChar(const pVal: WideString);
begin
  DefaultInterface.MacroChar := pVal;
end;

function TOptions.Get_FuzzyChar: WideString;
begin
  Result := DefaultInterface.FuzzyChar;
end;

procedure TOptions.Set_FuzzyChar(const pVal: WideString);
begin
  DefaultInterface.FuzzyChar := pVal;
end;

function TOptions.Get_PhonicChar: WideString;
begin
  Result := DefaultInterface.PhonicChar;
end;

procedure TOptions.Set_PhonicChar(const pVal: WideString);
begin
  DefaultInterface.PhonicChar := pVal;
end;

function TOptions.Get_StemmingChar: WideString;
begin
  Result := DefaultInterface.StemmingChar;
end;

procedure TOptions.Set_StemmingChar(const pVal: WideString);
begin
  DefaultInterface.StemmingChar := pVal;
end;

function TOptions.Get_SynonymChar: WideString;
begin
  Result := DefaultInterface.SynonymChar;
end;

procedure TOptions.Set_SynonymChar(const pVal: WideString);
begin
  DefaultInterface.SynonymChar := pVal;
end;

function TOptions.Get_WeightChar: WideString;
begin
  Result := DefaultInterface.WeightChar;
end;

procedure TOptions.Set_WeightChar(const pVal: WideString);
begin
  DefaultInterface.WeightChar := pVal;
end;

function TOptions.Get_MatchDigitChar: WideString;
begin
  Result := DefaultInterface.MatchDigitChar;
end;

procedure TOptions.Set_MatchDigitChar(const pVal: WideString);
begin
  DefaultInterface.MatchDigitChar := pVal;
end;

function TOptions.Get_AlphabetFile: WideString;
begin
  Result := DefaultInterface.AlphabetFile;
end;

procedure TOptions.Set_AlphabetFile(const pVal: WideString);
begin
  DefaultInterface.AlphabetFile := pVal;
end;

function TOptions.Get_UnicodeFilterRanges: WideString;
begin
  Result := DefaultInterface.UnicodeFilterRanges;
end;

procedure TOptions.Set_UnicodeFilterRanges(const pVal: WideString);
begin
  DefaultInterface.UnicodeFilterRanges := pVal;
end;

function TOptions.Get_UnicodeFilterBlockSize: Integer;
begin
  Result := DefaultInterface.UnicodeFilterBlockSize;
end;

procedure TOptions.Set_UnicodeFilterBlockSize(pVal: Integer);
begin
  DefaultInterface.UnicodeFilterBlockSize := pVal;
end;

function TOptions.Get_UnicodeFilterFlags: Integer;
begin
  Result := DefaultInterface.UnicodeFilterFlags;
end;

procedure TOptions.Set_UnicodeFilterFlags(pVal: Integer);
begin
  DefaultInterface.UnicodeFilterFlags := pVal;
end;

function TOptions.Get_UnicodeFilterMinTextSize: Integer;
begin
  Result := DefaultInterface.UnicodeFilterMinTextSize;
end;

procedure TOptions.Set_UnicodeFilterMinTextSize(pVal: Integer);
begin
  DefaultInterface.UnicodeFilterMinTextSize := pVal;
end;

function TOptions.Get_TextFlags: Integer;
begin
  Result := DefaultInterface.TextFlags;
end;

procedure TOptions.Set_TextFlags(pVal: Integer);
begin
  DefaultInterface.TextFlags := pVal;
end;

function TOptions.Get_UnicodeFilterWordOverlapAmount: Integer;
begin
  Result := DefaultInterface.UnicodeFilterWordOverlapAmount;
end;

procedure TOptions.Set_UnicodeFilterWordOverlapAmount(pVal: Integer);
begin
  DefaultInterface.UnicodeFilterWordOverlapAmount := pVal;
end;

procedure TOptions.Save;
begin
  DefaultInterface.Save;
end;

class function CoWordListBuilder.Create: IWordListBuilder;
begin
  Result := CreateComObject(CLASS_WordListBuilder) as IWordListBuilder;
end;

class function CoWordListBuilder.CreateRemote(const MachineName: string): IWordListBuilder;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WordListBuilder) as IWordListBuilder;
end;

procedure TWordListBuilder.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{697DF02D-B24E-11D3-B57C-00105AA461D0}';
    IntfIID:   '{697DF02C-B24E-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWordListBuilder.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWordListBuilder;
  end;
end;

procedure TWordListBuilder.ConnectTo(svrIntf: IWordListBuilder);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWordListBuilder.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWordListBuilder.GetDefaultInterface: IWordListBuilder;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWordListBuilder.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TWordListBuilder.Destroy;
begin
  inherited Destroy;
end;

function TWordListBuilder.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TWordListBuilder.OpenIndex(const IndexName: WideString): Integer;
begin
  Result := DefaultInterface.OpenIndex(IndexName);
end;

procedure TWordListBuilder.CloseIndex;
begin
  DefaultInterface.CloseIndex;
end;

function TWordListBuilder.ListWords(const CursorWord: WideString; Range: Integer): Integer;
begin
  Result := DefaultInterface.ListWords(CursorWord, Range);
end;

function TWordListBuilder.GetNthWord(iWord: Integer): WideString;
begin
  Result := DefaultInterface.GetNthWord(iWord);
end;

function TWordListBuilder.GetNthWordCount(iWord: Integer): Integer;
begin
  Result := DefaultInterface.GetNthWordCount(iWord);
end;

function TWordListBuilder.GetNthWordField(iWord: Integer): WideString;
begin
  Result := DefaultInterface.GetNthWordField(iWord);
end;

function TWordListBuilder.ListMatchingWords(const toMatch: WideString; nLimit: Integer; 
                                            SearchFlags: Integer; Fuzziness: Integer): Integer;
begin
  Result := DefaultInterface.ListMatchingWords(toMatch, nLimit, SearchFlags, Fuzziness);
end;

procedure TWordListBuilder.ListFields(var pVal: Integer);
begin
  DefaultInterface.ListFields(pVal);
end;

function TWordListBuilder.GetNthWordDocCount(iWord: Integer): Integer;
begin
  Result := DefaultInterface.GetNthWordDocCount(iWord);
end;

function TWordListBuilder.ListFieldValues(const field: WideString; const toMatch: WideString; 
                                          nLimit: Integer): Integer;
begin
  Result := DefaultInterface.ListFieldValues(field, toMatch, nLimit);
end;

procedure TWordListBuilder.SetFilter(const newFilter: ISearchFilter);
begin
  DefaultInterface.SetFilter(newFilter);
end;

function TWordListBuilder.Sort(flags: Integer): WordBool;
begin
  Result := DefaultInterface.Sort(flags);
end;

class function CoSearchResults.Create: ISearchResults;
begin
  Result := CreateComObject(CLASS_SearchResults) as ISearchResults;
end;

class function CoSearchResults.CreateRemote(const MachineName: string): ISearchResults;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SearchResults) as ISearchResults;
end;

procedure TSearchResults.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{798CBE35-B27D-11D3-B57C-00105AA461D0}';
    IntfIID:   '{798CBE34-B27D-11D3-B57C-00105AA461D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSearchResults.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISearchResults;
  end;
end;

procedure TSearchResults.ConnectTo(svrIntf: ISearchResults);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSearchResults.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSearchResults.GetDefaultInterface: ISearchResults;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSearchResults.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TSearchResults.Destroy;
begin
  inherited Destroy;
end;

function TSearchResults.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TSearchResults.Get_DocName: WideString;
begin
  Result := DefaultInterface.DocName;
end;

function TSearchResults.Get_DocHitCount: Integer;
begin
  Result := DefaultInterface.DocHitCount;
end;

function TSearchResults.Get_DocDetails: WideString;
begin
  Result := DefaultInterface.DocDetails;
end;

function TSearchResults.Get_DocHits: WideString;
begin
  Result := DefaultInterface.DocHits;
end;

function TSearchResults.Get_Request: WideString;
begin
  Result := DefaultInterface.Request;
end;

function TSearchResults.Get_TotalHitCount: Integer;
begin
  Result := DefaultInterface.TotalHitCount;
end;

function TSearchResults.Get_HitByteOffsets: WideString;
begin
  Result := DefaultInterface.HitByteOffsets;
end;

function TSearchResults.Get_DocDetailItem(const name: WideString): WideString;
begin
  Result := DefaultInterface.DocDetailItem[name];
end;

function TSearchResults.GetNthDoc(iDoc: Integer): WordBool;
begin
  Result := DefaultInterface.GetNthDoc(iDoc);
end;

procedure TSearchResults.Sort(flags: Integer; const fieldName: WideString);
begin
  DefaultInterface.Sort(flags, fieldName);
end;

function TSearchResults.NewSearchReportJob: IDispatch;
begin
  Result := DefaultInterface.NewSearchReportJob;
end;

procedure TSearchResults.MakePdfHighlightFile;
begin
  DefaultInterface.MakePdfHighlightFile;
end;

function TSearchResults.MakePdfWebHighlightFile: WideString;
begin
  Result := DefaultInterface.MakePdfWebHighlightFile;
end;

function TSearchResults.UrlEncodeItem: WideString;
begin
  Result := DefaultInterface.UrlEncodeItem;
end;

procedure TSearchResults.UrlDecodeItem(const val: WideString);
begin
  DefaultInterface.UrlDecodeItem(val);
end;

function TSearchResults.SerializeAsXml: WideString;
begin
  Result := DefaultInterface.SerializeAsXml;
end;

procedure TSearchResults.SerializeFromXml(const xmlString: WideString);
begin
  DefaultInterface.SerializeFromXml(xmlString);
end;

procedure TSearchResults.SetSortKey(const newKey: WideString);
begin
  DefaultInterface.SetSortKey(newKey);
end;

procedure TSearchResults.AddDoc(const IndexPath: WideString; docId: Integer; Hits: OleVariant);
begin
  DefaultInterface.AddDoc(IndexPath, docId, Hits);
end;

procedure TSearchResults.Empty;
begin
  DefaultInterface.Empty;
end;

class function CoSearchFilter.Create: ISearchFilter;
begin
  Result := CreateComObject(CLASS_SearchFilter) as ISearchFilter;
end;

class function CoSearchFilter.CreateRemote(const MachineName: string): ISearchFilter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SearchFilter) as ISearchFilter;
end;

procedure TSearchFilter.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{36A0E3F8-5BD1-4ED6-B6D1-4519A2FC6D23}';
    IntfIID:   '{6D615A9E-73D4-4FEF-A0DA-6973C26C17B2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSearchFilter.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISearchFilter;
  end;
end;

procedure TSearchFilter.ConnectTo(svrIntf: ISearchFilter);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSearchFilter.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSearchFilter.GetDefaultInterface: ISearchFilter;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSearchFilter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TSearchFilter.Destroy;
begin
  inherited Destroy;
end;

function TSearchFilter.Get_IndexCount: Integer;
begin
  Result := DefaultInterface.IndexCount;
end;

function TSearchFilter.Get_IndexPath(iIndex: Integer): WideString;
begin
  Result := DefaultInterface.IndexPath[iIndex];
end;

function TSearchFilter.Get_IndexSelections(iIndex: Integer): OleVariant;
begin
  Result := DefaultInterface.IndexSelections[iIndex];
end;

function TSearchFilter.AddIndex(const IndexPath: WideString): Integer;
begin
  Result := DefaultInterface.AddIndex(IndexPath);
end;

procedure TSearchFilter.SelectAll(iIndex: Integer);
begin
  DefaultInterface.SelectAll(iIndex);
end;

procedure TSearchFilter.SelectNone(iIndex: Integer);
begin
  DefaultInterface.SelectNone(iIndex);
end;

procedure TSearchFilter.SelectItems(iIndex: Integer; firstItem: Integer; lastItem: Integer; 
                                    isSelected: WordBool);
begin
  DefaultInterface.SelectItems(iIndex, firstItem, lastItem, isSelected);
end;

function TSearchFilter.Write(const filename: WideString): Integer;
begin
  Result := DefaultInterface.Write(filename);
end;

function TSearchFilter.Read(const filename: WideString): Integer;
begin
  Result := DefaultInterface.Read(filename);
end;

function TSearchFilter.Equals(const other: ISearchFilter): WordBool;
begin
  Result := DefaultInterface.Equals(other);
end;

function TSearchFilter.ReadMultiple(const filtersToRead: WideString): Integer;
begin
  Result := DefaultInterface.ReadMultiple(filtersToRead);
end;

procedure TSearchFilter.Or_(const other: ISearchFilter);
begin
  DefaultInterface.Or_(other);
end;

procedure TSearchFilter.And_(const other: ISearchFilter);
begin
  DefaultInterface.And_(other);
end;

function TSearchFilter.SelectItemsBySearch(iIndex: Integer; const searchRequest: WideString; 
                                           bSelected: WordBool): Integer;
begin
  Result := DefaultInterface.SelectItemsBySearch(iIndex, searchRequest, bSelected);
end;

function TSearchFilter.GetItemArray(iIndex: Integer): OleVariant;
begin
  Result := DefaultInterface.GetItemArray(iIndex);
end;

function TSearchFilter.GetItemArrayVBS(iIndex: Integer): OleVariant;
begin
  Result := DefaultInterface.GetItemArrayVBS(iIndex);
end;

procedure TSearchFilter.AndNot(const other: ISearchFilter);
begin
  DefaultInterface.AndNot(other);
end;

class function CoIndexCache.Create: IIndexCache;
begin
  Result := CreateComObject(CLASS_IndexCache) as IIndexCache;
end;

class function CoIndexCache.CreateRemote(const MachineName: string): IIndexCache;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IndexCache) as IIndexCache;
end;

procedure TIndexCache.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C6D67878-15E2-4488-9981-2182B0652E8E}';
    IntfIID:   '{84FE534D-B891-4E87-9D3D-6969F71E3628}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TIndexCache.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IIndexCache;
  end;
end;

procedure TIndexCache.ConnectTo(svrIntf: IIndexCache);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TIndexCache.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TIndexCache.GetDefaultInterface: IIndexCache;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TIndexCache.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TIndexCache.Destroy;
begin
  inherited Destroy;
end;

function TIndexCache.Get_AutoCloseTime: Integer;
begin
  Result := DefaultInterface.AutoCloseTime;
end;

procedure TIndexCache.Set_AutoCloseTime(pVal: Integer);
begin
  DefaultInterface.AutoCloseTime := pVal;
end;

function TIndexCache.Get_AutoReopenTime: Integer;
begin
  Result := DefaultInterface.AutoReopenTime;
end;

procedure TIndexCache.Set_AutoReopenTime(pVal: Integer);
begin
  DefaultInterface.AutoReopenTime := pVal;
end;

function TIndexCache.Get_InUseCount: Integer;
begin
  Result := DefaultInterface.InUseCount;
end;

function TIndexCache.Get_MaxCount: Integer;
begin
  Result := DefaultInterface.MaxCount;
end;

procedure TIndexCache.Set_MaxCount(pVal: Integer);
begin
  DefaultInterface.MaxCount := pVal;
end;

function TIndexCache.Get_OpenIndexCount: Integer;
begin
  Result := DefaultInterface.OpenIndexCount;
end;

function TIndexCache.Get_Handle: Largeuint;
begin
  Result := DefaultInterface.Handle;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TServer, TJobErrorInfo, TIndexJob, TSearchJob, 
    TFileConverter, TSearchReportJob, TOptions, TWordListBuilder, TSearchResults, 
    TSearchFilter, TIndexCache]);
end;

end.
