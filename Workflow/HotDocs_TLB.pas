unit HotDocs_TLB;

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

// PASTLWTR : $Revision: 1.1 $
// File generated on 4/04/2005 9:55:01 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: c:hotdocs6.exe (1)
// LIBID: {CE28A102-60FA-4772-9301-90BB1E887161}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\System32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINDOWS\System32\stdvcl40.dll)
// Errors:
//   Hint: TypeInfo 'Library' changed to 'Library_'
//   Hint: Member 'Type' of '_Answer' changed to 'Type_'
//   Hint: Member 'Type' of '_Component' changed to 'Type_'
//   Hint: Parameter 'label' of _Template2.DisplayFieldLabelDlg changed to 'label_'
//   Hint: TypeInfo 'Library' changed to 'Library_'
//   Hint: Member 'Type' of '_Answer' changed to 'Type_'
//   Hint: Member 'Type' of '_Component' changed to 'Type_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  HotDocsMajorVersion = 6;
  HotDocsMinorVersion = 2;

  LIBID_HotDocs: TGUID = '{CE28A102-60FA-4772-9301-90BB1E887161}';

  IID_ILibraryWindowIconProvider: TGUID = '{D1B6F1CA-C9DA-47A1-B58A-7BF32EB62CE2}';
  IID__Icon: TGUID = '{D1B6F1CB-C9DA-47A1-B58A-7BF32EB62CE2}';
  CLASS_Icon: TGUID = '{D1B6F1CC-C9DA-47A1-B58A-7BF32EB62CE2}';
  IID_ILibraryWindowFileHandlerExtension: TGUID = '{D1B6F1C9-C9DA-47A1-B58A-7BF32EB62CE2}';
  IID_ILibraryWindowMenuExtension: TGUID = '{D1B6F1C8-C9DA-47A1-B58A-7BF32EB62CE2}';
  IID_ILibraryWindowContextMenuExtension: TGUID = '{D1B6F1C7-C9DA-47A1-B58A-7BF32EB62CE2}';
  DIID__HotDocs6ApplicationEvents: TGUID = '{287BF4B6-F8A1-4D96-B9A6-D1F6A56AB86C}';
  IID__Assembly: TGUID = '{A99AB319-0378-4033-9534-DF296B6B63C6}';
  IID__AnswerCollection: TGUID = '{3E419C82-EED2-4FD4-BD37-C4BC9A9FEFB1}';
  IID__Answer: TGUID = '{DF34C5CA-1760-4262-9B56-24E3EDE60994}';
  IID__HotDocs6Application: TGUID = '{991DE9DD-D19A-4EA0-9A07-D56F0CA44FE9}';
  IID__HotDocs6Application2: TGUID = '{991DE9DD-D19A-4EA0-9A07-D56F0CA44FEA}';
  IID__Templates: TGUID = '{4D1901E4-92E1-42A8-A1F0-54D329E9761A}';
  IID__Template: TGUID = '{5ADE4857-7568-4784-BBA0-209870E4A92B}';
  IID_AssemblyCollection: TGUID = '{BF92F712-50A9-4B2C-9D14-0956C1883C5A}';
  IID__VarMap: TGUID = '{28E330B9-BF78-4849-990E-1B403383E4D4}';
  IID__IHD6INTHotDocs: TGUID = '{C8AFB6AE-5C62-4365-99DD-1E76DABE8515}';
  IID__HotDocs6Application3: TGUID = '{991DE9DD-D19A-4EA0-9A07-D56F0CA44FEB}';
  CLASS_HotDocs6Application: TGUID = '{8A202ADA-F14D-4F1B-86F9-8B18EE76E0C1}';
  IID__IHD6INTAnswerCollection: TGUID = '{7131E74C-4AF0-49F6-A65E-87C06D61D1A2}';
  CLASS_AnswerCollection: TGUID = '{F6B3FF63-D730-4DCE-802D-0FAED25E7B72}';
  IID__ComponentCollection: TGUID = '{2B539DA7-2727-4AF0-A166-009CA0F48A5A}';
  IID__Component: TGUID = '{98A99D7D-FF5D-4A4F-A154-BC8B9FFD597E}';
  IID__ComponentCollection2: TGUID = '{2B539DA8-2727-4AF0-A166-009CA0F48A5A}';
  IID__ComponentCollection3: TGUID = '{2B539DA9-2727-4AF0-A166-009CA0F48A5A}';
  CLASS_ComponentCollection: TGUID = '{2C2098F9-D471-4806-9759-504F65C4171B}';
  IID__IHD6INTComponent: TGUID = '{1007F4F5-514C-4835-9937-A6665ACB4DAC}';
  CLASS_Component: TGUID = '{50DED91B-A330-48BA-B7F4-F48803D63D3F}';
  IID__IHD6INTAnswer: TGUID = '{90031947-372B-42D5-874B-7FE95313B2BC}';
  DIID__AnswerEvents: TGUID = '{E485B97D-1BBF-4174-A97C-4B03D5EB33C2}';
  CLASS_Answer: TGUID = '{4D509C2B-0223-47EB-95A5-CC8E98055F67}';
  IID__IHD6INTAssemblyCollection: TGUID = '{29A72960-1086-4A3A-B959-A5E89A25632D}';
  CLASS_AssemblyCollectionClass: TGUID = '{C5038B17-D521-4F4B-91C1-62F55A622D25}';
  IID__Assembly2: TGUID = '{A99AB320-0378-4033-9534-DF296B6B63C6}';
  IID__IHD6INTAssembly: TGUID = '{A47FB36F-9878-4812-BCE1-7F61024EB9C1}';
  DIID__AssemblyEvents: TGUID = '{58172076-C690-434D-942B-F3EA55693C98}';
  CLASS_Assembly: TGUID = '{503AB2B4-5D01-4EF0-9B2B-36E1B9C738A9}';
  IID__IHD6INTMap: TGUID = '{54F39627-DF05-4D72-851C-FA09E3A354B3}';
  CLASS_VarMap: TGUID = '{4E2481F7-DFB8-4E85-B51F-B12B1D82A377}';
  IID__Template2: TGUID = '{5ADE4858-7568-4784-BBA0-209870E4A92B}';
  CLASS_Template: TGUID = '{9EC621F9-52A8-4D9F-A8D0-474428DAE4DA}';
  IID__Templates2: TGUID = '{4D1901E5-92E1-42A8-A1F0-54D329E9761A}';
  CLASS_Templates: TGUID = '{1B5D8432-4AFF-44AB-BC21-656035B0B63D}';
  IID__Library: TGUID = '{FC0AEADD-27D4-460B-8D64-A8CFBC2EFAEC}';
  IID__LibraryEntity: TGUID = '{84CEB33D-E30D-4D7E-9ABA-C6D6D9EDCBF3}';
  IID__Library2: TGUID = '{FC0AEADE-27D4-460B-8D64-A8CFBC2EFAEC}';
  CLASS_Library_: TGUID = '{06B3E595-39E0-4B08-B719-8BCE64A04D70}';
  CLASS_LibraryEntity: TGUID = '{4D54CA35-5FB1-4E93-905C-84EE9B1FE69B}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum HDAUI
type
  HDAUI = TOleEnum;
const
  AUIEDITMENU = $00000001;
  AUIFIELDMENU = $00000004;
  AUIFILEMENU = $00000000;
  AUIHELPMENU = $00000005;
  AUITOOLSMENU = $00000003;
  AUIVIEWMENU = $00000002;
  AUIANSWERSUMMARYTAB = $0000000A;
  AUIINTERVIEWOUTLINE = $0000000C;
  AUIINTERVIEWTAB = $00000006;
  AUIPREVIEWTAB = $00000007;
  AUIQUESTIONSUMMARYTAB = $00000009;
  AUIRESOURCEPANE = $0000000B;
  AUIVARIABLESHEETTAB = $00000008;
  AUIANSWERFILEDROPDOWN = $0000000D;
  AUITOOLBAR = $0000000E;
  AUISTATUSBAR = $0000000F;
  AUIFILENEWANSWERS = $00000010;
  AUIFILEOPENANSWERS = $00000011;
  AUIFILEOVERLAYANSWERS = $00000012;
  AUIFILESAVEANSWERS = $00000013;
  AUIFILESAVEANSWERSAS = $00000014;
  AUIFILESENDANSWERSTO = $00000015;
  AUIFILESAVEDOCUMENTAS = $00000016;
  AUIFILESAVEQUESTIONSUMMARYAS = $00000017;
  AUIFILESAVEANSWERSUMMARYAS = $00000018;
  AUIFILESAVEVARIABLESHEETAS = $00000019;
  AUIFILESAVEDOCUMENTASPDF = $00000036;
  AUIFILESENDDOCUMENTTO = $0000001A;
  AUIFILESENDQUESTIONSUMMARYTO = $0000001B;
  AUIFILESENDANSWERSUMMARYTO = $0000001C;
  AUIFILESENDVARIABLESHEETTO = $0000001D;
  AUIFILESENDADDENDUMTO = $0000001E;
  AUIFILEPAGESETUP = $0000001F;
  AUIFILEPRINTPREVIEW = $00000020;
  AUIFILEPRINTDOCUMENT = $00000021;
  AUIFILEPRINTQUESTIONSUMMARY = $00000022;
  AUIFILEPRINTANSWERSUMMARY = $00000023;
  AUIFILEDOCUMENTPROPERTIES = $00000024;
  AUIFILECLOSE = $00000025;
  AUIVIEWTOOLBARS = $00000027;
  AUIVIEWSTATUSBAR = $00000028;
  AUIVIEWQUESTIONSUMMARYTAB = $00000029;
  AUIVIEWANSWERSUMMARYTAB = $0000002A;
  AUIVIEWVARIABLESHEETTAB = $0000002B;
  AUIVIEWINTERVIEWOUTLINE = $0000002C;
  AUIVIEWRESOURCEPANE = $0000002D;
  AUITOOLSOPTIONS = $0000002F;
  AUIHELPHOTDOCSHELP = $00000030;
  AUIHELPONLINESUPPORT = $00000031;
  AUIHELPABOUTHOTDOCS = $00000032;
  AUIHELPONLINEREGISTRATION = $00000036;
  AUIEDITTOOLBAR = $00000033;
  AUIDIALOGTOOLBAR = $00000034;
  AUIFORMSTOOLBAR = $00000035;
  AUIEOIGOTOFIRSTUNANSWERED = $00000037;
  AUIEOIPASTETOWP = $00000038;
  AUIEOISENDTOCLIPBOARD = $00000039;
  AUIEOIOPTIONS = $0000003A;
  AUIEOISENDTOFILLER = $0000003B;
  AUIEOICLOSENOSAVE = $0000003C;

// Constants for enum HDANSWERUPLOADFORMAT
type
  HDANSWERUPLOADFORMAT = TOleEnum;
const
  HD_DEFAULTFORMAT = $00000001;
  HD_XMLFORMAT = $00000002;

// Constants for enum HDVARTYPE
type
  HDVARTYPE = TOleEnum;
const
  HD_TEXTTYPE = $00000001;
  HD_NUMBERTYPE = $00000002;
  HD_DATETYPE = $00000003;
  HD_TRUEFALSETYPE = $00000004;
  HD_MULTCHOICETYPE = $00000005;
  HD_COMPUTATIONTYPE = $00000006;
  HD_UNANSWEREDTYPE = $00000007;
  HD_DATABASETYPE = $00000008;
  HD_CLAUSELIBTYPE = $00000009;
  HD_UNDEFINED = $0000000A;

// Constants for enum HDLUI
type
  HDLUI = TOleEnum;
const
  LUIFILEMENU = $00000001;
  LUIEDITMENU = $00000002;
  LUIVIEWMENU = $00000003;
  LUITEMPLATEMENU = $00000004;
  LUITOOLSMENU = $00000005;
  LUIHELPMENU = $00000006;
  LUITOOLBAR = $00000007;
  LUISTATUSBAR = $00000008;
  LUIPROPERTYTAB = $00000009;
  LUIPREVIEWTAB = $0000000A;
  LUICONTEXTMENU = $0000000B;
  LUIFILENEWLIBRARY = $0000E100;
  LUIFILEOPENLIBRARY = $0000E101;
  LUIFILESAVELIBRARY = $0000E103;
  LUIFILESAVELIBRARYAS = $0000E104;
  LUIFILEPRINTPREVIEW = $0000E109;
  LUIFILEPRINTLIBRARY = $0000E107;
  LUIFILEINSTALLTEMPLATE = $0000A833;
  LUIFILEIMPORTLIBRARY = $0000A826;
  LUIFILEEXPORTLIBRARY = $0000000C;
  LUIFILEMRULIST = $0000000D;
  LUIFILEEXIT = $0000E141;
  LUIEDITCUT = $0000E123;
  LUIEDITCOPY = $0000E122;
  LUIEDITPASTE = $0000E125;
  LUIEDITADD = $0000A823;
  LUIEDITDELETE = $0000A822;
  LUIEDITSORT = $0000A824;
  LUIEDITPROPERTIES = $0000A828;
  LUIEDITMULTIPLEPROPERTIES = $0000B481;
  LUIVIEWTOOLBAR = $0000E800;
  LUIVIEWSTATUSBAR = $0000E801;
  LUIVIEWPROPERTIESTAB = $0000A83C;
  LUIVIEWPREVIEWTAB = $0000A83D;
  LUIVIEWASSEMBLYQUEUE = $0000000E;
  LUITEMPLATEASSEMBLE = $0000A82C;
  LUITEMPLATEONLINETEST = $0000B47F;
  LUITEMPLATECREATE = $0000A82E;
  LUITEMPLATEEDIT = $0000A82D;
  LUITEMPLATEMOVE = $0000A827;
  LUITOOLSANSWERFILEMANAGER = $0000A83E;
  LUITOOLSCOMPONENTMANAGER = $0000A85C;
  LUITOOLSCOMPONENTEXPLORER = $0000A837;
  LUITOOLSTEMPLATEMANAGER = $0000A837;
  LUITOOLSPUBLISHINGWIZARD = $0000A82B;
  LUITOOLSUPLOADANSWERS = $0000A834;
  LUITOOLSREFRESHHDACACHE = $0000A82A;
  LUITOOLSOPTIONS = $0000A802;
  LUIHELPHOTDOCSHELP = $0000E143;
  LUIHELPONLINESUPPORT = $0000A832;
  LUIHELPABOUTHOTDOCS = $0000E140;
  LUIHELPONLINEREGISTRATION = $0000B4CF;

// Constants for enum HDLIMENU
type
  HDLIMENU = TOleEnum;
const
  LI_FILE = $00000000;
  LI_EDIT = $00000001;
  LI_VIEW = $00000002;
  LI_TEMPLATE = $00000003;
  LI_TOOLS = $00000004;
  LI_HELP = $00000005;

// Constants for enum HDFormProcessor
type
  HDFormProcessor = TOleEnum;
const
  HDUnknownFormProc = $00000000;
  HDFirstWordPerfectVers = $00000001;
  HDWordPerfect8 = $00000001;
  HDWordPerfect9 = $00000002;
  HDWordPerfect10 = $00000003;
  HDWordPerfect11 = $00000004;
  HDWordPerfect12 = $00000005;
  HDLastWordPerfectVers = $00000005;
  HDFirstMSWordVers = $00000014;
  HDMSWord97 = $00000014;
  HDMSWord2000 = $00000015;
  HDMSWord2002 = $00000016;
  HDMSWord2003 = $00000017;
  HDLastMSWordVers = $00000017;
  HDAutomator6 = $00000028;

// Constants for enum HDDisplayRetVal
type
  HDDisplayRetVal = TOleEnum;
const
  Display_Cancel = $00000000;
  Display_OK = $00000001;

// Constants for enum HDInsertRetVal
type
  HDInsertRetVal = TOleEnum;
const
  Insert_Cancel = $00000000;
  Insert_Once = $00000001;
  Insert_All = $00000002;
  Insert_Confirm = $00000003;
  Insert_Skip = $00000004;
  Insert_If = $00000005;
  Insert_Else = $00000006;
  Insert_New_Tmpl_Field = $00000007;
  Insert_New_Tmpl = $00000008;
  Insert_Edit_Tmpl = $00000009;
  Insert_Find_Block_Start = $0000000A;

// Constants for enum HDDisplayIfMode
type
  HDDisplayIfMode = TOleEnum;
const
  Display_If = $00000000;
  Display_Else = $00000001;

// Constants for enum HDDisplayInsertMode
type
  HDDisplayInsertMode = TOleEnum;
const
  Display_Existing = $00000000;
  Display_New = $00000001;

// Constants for enum HDCompType
type
  HDCompType = TOleEnum;
const
  HDtextVarType = $00000000;
  HDnumberVarType = $00000001;
  HDdateVarType = $00000002;
  HDtrueFalseVarType = $00000003;
  HDmultChoiceVarType = $00000004;
  HDcompVarType = $00000005;
  HDlistVarType = $00000006;
  HDstaticTextType = $00000007;
  HDclauseVarType = $00000008;
  HDlastVarType = $00000009;
  HDtextFormatType = $00000014;
  HDnumberFormatType = $00000015;
  HDdateFormatType = $00000016;
  HDtrueFalseFormatType = $00000017;
  HDmultChoiceFormatType = $00000018;
  HDgroupFormatType = $00000019;
  HDrowFormatType = $0000001A;
  HDtableFormatType = $0000001B;
  HDlastFormatType = $0000001C;
  HDtextValidationType = $0000001E;
  HDvariableListType = $0000001F;
  HDpersonalInfoType = $00000020;
  HDexpressionType = $00000021;
  HDpreferenceType = $00000022;
  HDdataBaseType = $00000023;
  HDlastType = $00000024;

// Constants for enum HDConversionReturn
type
  HDConversionReturn = TOleEnum;
const
  No_Convert = $00000000;
  Replace_Insert_Field = $00000001;
  Convert_Insert_Template = $00000002;

// Constants for enum HDGetGotoFieldInfoRetVal
type
  HDGetGotoFieldInfoRetVal = TOleEnum;
const
  Field_Info_Get_Failure = $00000000;
  Field_Info_Get_Success = $00000001;

// Constants for enum HDPRODUCTFLAVOR
type
  HDPRODUCTFLAVOR = TOleEnum;
const
  PLAYER = $00000001;
  STANDARD = $00000002;
  PROFESSIONAL = $00000003;

// Constants for enum HDAFFORMAT
type
  HDAFFORMAT = TOleEnum;
const
  HD_ANSFORMAT = $00000001;
  HD_ANXFORMAT = $00000002;

// Constants for enum HDAIMENU
type
  HDAIMENU = TOleEnum;
const
  AI_FILE = $00000001;
  AI_EDIT = $00000002;
  AI_VIEW = $00000003;
  AI_TOOLS = $00000004;
  AI_FIELD = $00000005;
  AI_HELP = $00000006;

// Constants for enum HDASSEMBLYSTATUS
type
  HDASSEMBLYSTATUS = TOleEnum;
const
  HDASMSTATUSUNDEFINED = $00000000;
  HDASMSTATUSPENDING = $00000001;
  HDASMSTATUSCONFIRMED = $00000002;
  HDASMSTATUSASSEMBLING = $00000004;
  HDASMSTATUSCOMPLETED = $00000008;
  HDASMSTATUSAUTOSELECTED = $00000010;
  HDASMSTATUSUSERSELECTED = $00000022;
  HDASMSTATUSERROR = $00000100;

// Constants for enum HDOUTPUTTYPE
type
  HDOUTPUTTYPE = TOleEnum;
const
  HD_OUTPUT_DOCUMENT = $00000001;
  HD_OUTPUT_ANSWERSUMMARY = $00000002;
  HD_OUTPUT_QUESTIONSUMMARY = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILibraryWindowIconProvider = interface;
  _Icon = interface;
  ILibraryWindowFileHandlerExtension = interface;
  ILibraryWindowMenuExtension = interface;
  ILibraryWindowContextMenuExtension = interface;
  _HotDocs6ApplicationEvents = dispinterface;
  _Assembly = interface;
  _AssemblyDisp = dispinterface;
  _AnswerCollection = interface;
  _AnswerCollectionDisp = dispinterface;
  _Answer = interface;
  _AnswerDisp = dispinterface;
  _HotDocs6Application = interface;
  _HotDocs6ApplicationDisp = dispinterface;
  _HotDocs6Application2 = interface;
  _HotDocs6Application2Disp = dispinterface;
  _Templates = interface;
  _TemplatesDisp = dispinterface;
  _Template = interface;
  _TemplateDisp = dispinterface;
  AssemblyCollection = interface;
  AssemblyCollectionDisp = dispinterface;
  _VarMap = interface;
  _VarMapDisp = dispinterface;
  _IHD6INTHotDocs = interface;
  _HotDocs6Application3 = interface;
  _HotDocs6Application3Disp = dispinterface;
  _IHD6INTAnswerCollection = interface;
  _ComponentCollection = interface;
  _ComponentCollectionDisp = dispinterface;
  _Component = interface;
  _ComponentDisp = dispinterface;
  _ComponentCollection2 = interface;
  _ComponentCollection2Disp = dispinterface;
  _ComponentCollection3 = interface;
  _ComponentCollection3Disp = dispinterface;
  _IHD6INTComponent = interface;
  _IHD6INTAnswer = interface;
  _AnswerEvents = dispinterface;
  _IHD6INTAssemblyCollection = interface;
  _Assembly2 = interface;
  _Assembly2Disp = dispinterface;
  _IHD6INTAssembly = interface;
  _AssemblyEvents = dispinterface;
  _IHD6INTMap = interface;
  _Template2 = interface;
  _Template2Disp = dispinterface;
  _Templates2 = interface;
  _Templates2Disp = dispinterface;
  _Library = interface;
  _LibraryDisp = dispinterface;
  _LibraryEntity = interface;
  _LibraryEntityDisp = dispinterface;
  _Library2 = interface;
  _Library2Disp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
{ // mw - causing conflicts and not needed?
  Icon = _Icon;
  Application = _HotDocs6Application3;
  AnswerCollection = _AnswerCollection;
  ComponentCollection = _ComponentCollection3;
  Component = _Component;
  Answer = _Answer;
  AssemblyCollectionClass = AssemblyCollection;
  Assembly = _Assembly;
  VarMap = _VarMap;
  Template = _Template2;
  Templates = _Templates2;
  Library_ = _Library2;
  LibraryEntity = _LibraryEntity;
}

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PUINT1 = ^LongWord; {*}
  PPPrivateAlias1 = ^Pointer; {*}


// *********************************************************************//
// Interface: ILibraryWindowIconProvider
// Flags:     (0)
// GUID:      {D1B6F1CA-C9DA-47A1-B58A-7BF32EB62CE2}
// *********************************************************************//
  ILibraryWindowIconProvider = interface(IUnknown)
    ['{D1B6F1CA-C9DA-47A1-B58A-7BF32EB62CE2}']
    function Initialize: HResult; stdcall;
    function LibraryInitialized: HResult; stdcall;
    function GetOverlays(out vtArray: OleVariant): HResult; stdcall;
    function GetOverlayIndex(const itemPath: WideString; vbFolder: WordBool; var iconIndex: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _Icon
// Flags:     (4096) Dispatchable
// GUID:      {D1B6F1CB-C9DA-47A1-B58A-7BF32EB62CE2}
// *********************************************************************//
  _Icon = interface(IDispatch)
    ['{D1B6F1CB-C9DA-47A1-B58A-7BF32EB62CE2}']
    function LoadBitmap(const fileName: WideString): HResult; stdcall;
    function LoadIcon(const fileName: WideString): HResult; stdcall;
    function Get_Index(out pVal: Integer): HResult; stdcall;
    function Set_Index(pVal: Integer): HResult; stdcall;
    function Set_HBITMAP(Param1: LongWord): HResult; stdcall;
    function Get_maskColor(out pVal: LongWord): HResult; stdcall;
    function Set_maskColor(pVal: LongWord): HResult; stdcall;
    function Set_HICON(Param1: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ILibraryWindowFileHandlerExtension
// Flags:     (0)
// GUID:      {D1B6F1C9-C9DA-47A1-B58A-7BF32EB62CE2}
// *********************************************************************//
  ILibraryWindowFileHandlerExtension = interface(IUnknown)
    ['{D1B6F1C9-C9DA-47A1-B58A-7BF32EB62CE2}']
    function Initialize: HResult; stdcall;
    function LibraryInitialized: HResult; stdcall;
    function RegisterFileType(callcounter: Integer; var extension: WideString; 
                              var supportEdit: WordBool; var supportAssembly: WordBool; 
                              var callAgain: WordBool): HResult; stdcall;
    function Assemble(const fileName: WideString; const switches: WideString; 
                      var alternateFilename: WideString; var alternateSwitches: WideString; 
                      var hotdocsProcess: WordBool): HResult; stdcall;
    function Edit(const fileName: WideString; var alternateFilename: WideString; 
                  var hotdocsProcess: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ILibraryWindowMenuExtension
// Flags:     (0)
// GUID:      {D1B6F1C8-C9DA-47A1-B58A-7BF32EB62CE2}
// *********************************************************************//
  ILibraryWindowMenuExtension = interface(IUnknown)
    ['{D1B6F1C8-C9DA-47A1-B58A-7BF32EB62CE2}']
    function Initialize: HResult; stdcall;
    function LibraryInitialized: HResult; stdcall;
    function GetMenuTitle(var menuTitle: WideString): HResult; stdcall;
    function DisplayMenuInitialize(const libraryPath: WideString; const itemTitle: WideString; 
                                   const itemFilePath: WideString; bFolder: WordBool): HResult; stdcall;
    function GetMenuEntry(menuPosition: Integer; var menuText: WideString; var Icon: _Icon; 
                          var enabled: WordBool; var callAgain: WordBool; commandId: Integer): HResult; stdcall;
    function Command(const libraryPath: WideString; const itemTitle: WideString; 
                     const itemFilePath: WideString; bFolder: WordBool; commandId: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ILibraryWindowContextMenuExtension
// Flags:     (0)
// GUID:      {D1B6F1C7-C9DA-47A1-B58A-7BF32EB62CE2}
// *********************************************************************//
  ILibraryWindowContextMenuExtension = interface(IUnknown)
    ['{D1B6F1C7-C9DA-47A1-B58A-7BF32EB62CE2}']
    function ContextInitialize: HResult; stdcall;
    function ContextLibraryInitialized: HResult; stdcall;
    function ContextGetMenuTitle(const libraryPath: WideString; const itemTitle: WideString; 
                                 const itemFilePath: WideString; bFolder: WordBool; 
                                 var menuTitle: WideString; var menuPosition: Integer; 
                                 var enabled: WordBool; var separatorBefore: WordBool; 
                                 var separatorAfter: WordBool): HResult; stdcall;
    function ContextGetMenuEntry(menuPosition: Integer; var menuText: WideString; 
                                 var enabled: WordBool; var callAgain: WordBool; commandId: Integer): HResult; stdcall;
    function ContextCommand(commandId: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _HotDocs6ApplicationEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {287BF4B6-F8A1-4D96-B9A6-D1F6A56AB86C}
// *********************************************************************//
  _HotDocs6ApplicationEvents = dispinterface
    ['{287BF4B6-F8A1-4D96-B9A6-D1F6A56AB86C}']
    procedure OnErrorEvent(errCode: Integer; const errMesg: WideString; out override: WordBool); dispid 1;
    procedure OnAssemblyStartEvent(const assemblyObject: _Assembly); dispid 2;
    procedure OnAssemblyCompleteEvent(const tplTitle: WideString; const tplPath: WideString; 
                                      const docPath: WideString; const ansColl: _AnswerCollection; 
                                      assemblyHandle: Integer); dispid 3;
    procedure OnUserMenuItemClickedEvent(menuHandle: Integer); dispid 4;
    procedure OnUserInterfaceEvent(hdEvent: HDLUI; out override: WordBool); dispid 5;
    procedure OnTemplateSelectedEvent(const tplTitle: WideString; const tplPath: WideString; 
                                      out override: WordBool); dispid 6;
    procedure OnLibraryInterfaceCloseEvent; dispid 7;
  end;

// *********************************************************************//
// Interface: _Assembly
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A99AB319-0378-4033-9534-DF296B6B63C6}
// *********************************************************************//
  _Assembly = interface(IDispatch)
    ['{A99AB319-0378-4033-9534-DF296B6B63C6}']
    procedure SetUserInterfaceItem(element: HDAUI; enabled: WordBool); safecall;
    function Get_TemplatePath: WideString; safecall;
    procedure Set_TemplatePath(const pVal: WideString); safecall;
    function Get_AnswerCollection: _AnswerCollection; safecall;
    procedure Set_AnswerCollection(const pVal: _AnswerCollection); safecall;
    function Get_DocumentPath: WideString; safecall;
    procedure Set_DocumentPath(const pVal: WideString); safecall;
    function Get_Map: _VarMap; safecall;
    procedure Set_Map(const pVal: _VarMap); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pVal: WordBool); safecall;
    function Get_assemblyHandle: Integer; safecall;
    function Get_ShowAnswerFileDialog: WordBool; safecall;
    procedure Set_ShowAnswerFileDialog(pVal: WordBool); safecall;
    procedure DeleteUserMenuItem(uiHandle: Integer); safecall;
    function Get_TemplateTitle: WideString; safecall;
    procedure Set_TemplateTitle(const pVal: WideString); safecall;
    procedure AddUserMenuItem(const menuTxt: WideString; menuItem: HDAIMENU; out uiHandle: Integer); safecall;
    function Get_TemplateDesc: WideString; safecall;
    procedure Set_TemplateDesc(const pVal: WideString); safecall;
    function Get_KeepInQueue: WordBool; safecall;
    procedure Set_KeepInQueue(pVal: WordBool); safecall;
    function Get_Status: HDASSEMBLYSTATUS; safecall;
    procedure UseAnswerFile(const answerFilePath: WideString); safecall;
    function Get_PrintWhenComplete: WordBool; safecall;
    procedure Set_PrintWhenComplete(pVal: WordBool); safecall;
    procedure Set_CommandLine(const Param1: WideString); safecall;
    function Get_AnswerSummaryPath: WideString; safecall;
    procedure Set_AnswerSummaryPath(const pVal: WideString); safecall;
    function Get_QuestionSummaryPath: WideString; safecall;
    procedure Set_QuestionSummaryPath(const pVal: WideString); safecall;
    procedure SendToWordProcessor; safecall;
    function Get_SuppressUnansweredWarning: WordBool; safecall;
    procedure Set_SuppressUnansweredWarning(pVal: WordBool); safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    function Get_Hwnd: Integer; safecall;
    property TemplatePath: WideString read Get_TemplatePath write Set_TemplatePath;
    property AnswerCollection: _AnswerCollection read Get_AnswerCollection write Set_AnswerCollection;
    property DocumentPath: WideString read Get_DocumentPath write Set_DocumentPath;
    property Map: _VarMap read Get_Map write Set_Map;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property assemblyHandle: Integer read Get_assemblyHandle;
    property ShowAnswerFileDialog: WordBool read Get_ShowAnswerFileDialog write Set_ShowAnswerFileDialog;
    property TemplateTitle: WideString read Get_TemplateTitle write Set_TemplateTitle;
    property TemplateDesc: WideString read Get_TemplateDesc write Set_TemplateDesc;
    property KeepInQueue: WordBool read Get_KeepInQueue write Set_KeepInQueue;
    property Status: HDASSEMBLYSTATUS read Get_Status;
    property PrintWhenComplete: WordBool read Get_PrintWhenComplete write Set_PrintWhenComplete;
    property CommandLine: WideString write Set_CommandLine;
    property AnswerSummaryPath: WideString read Get_AnswerSummaryPath write Set_AnswerSummaryPath;
    property QuestionSummaryPath: WideString read Get_QuestionSummaryPath write Set_QuestionSummaryPath;
    property SuppressUnansweredWarning: WordBool read Get_SuppressUnansweredWarning write Set_SuppressUnansweredWarning;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property Hwnd: Integer read Get_Hwnd;
  end;

// *********************************************************************//
// DispIntf:  _AssemblyDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A99AB319-0378-4033-9534-DF296B6B63C6}
// *********************************************************************//
  _AssemblyDisp = dispinterface
    ['{A99AB319-0378-4033-9534-DF296B6B63C6}']
    procedure SetUserInterfaceItem(element: HDAUI; enabled: WordBool); dispid 1;
    property TemplatePath: WideString dispid 2;
    property AnswerCollection: _AnswerCollection dispid 3;
    property DocumentPath: WideString dispid 4;
    property Map: _VarMap dispid 5;
    property Visible: WordBool dispid 6;
    property assemblyHandle: Integer readonly dispid 7;
    property ShowAnswerFileDialog: WordBool dispid 8;
    procedure DeleteUserMenuItem(uiHandle: Integer); dispid 9;
    property TemplateTitle: WideString dispid 10;
    procedure AddUserMenuItem(const menuTxt: WideString; menuItem: HDAIMENU; out uiHandle: Integer); dispid 11;
    property TemplateDesc: WideString dispid 12;
    property KeepInQueue: WordBool dispid 13;
    property Status: HDASSEMBLYSTATUS readonly dispid 14;
    procedure UseAnswerFile(const answerFilePath: WideString); dispid 15;
    property PrintWhenComplete: WordBool dispid 16;
    property CommandLine: WideString writeonly dispid 17;
    property AnswerSummaryPath: WideString dispid 18;
    property QuestionSummaryPath: WideString dispid 19;
    procedure SendToWordProcessor; dispid 20;
    property SuppressUnansweredWarning: WordBool dispid 21;
    property Application: _HotDocs6Application readonly dispid 22;
    property Hwnd: Integer readonly dispid 23;
  end;

// *********************************************************************//
// Interface: _AnswerCollection
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3E419C82-EED2-4FD4-BD37-C4BC9A9FEFB1}
// *********************************************************************//
  _AnswerCollection = interface(IDispatch)
    ['{3E419C82-EED2-4FD4-BD37-C4BC9A9FEFB1}']
    function Get_Count: Integer; safecall;
    procedure Close; safecall;
    procedure UploadAnswerCollection(const url: WideString; format: HDANSWERUPLOADFORMAT); safecall;
    procedure Add(const newAnswer: _Answer); safecall;
    function Item(Index: OleVariant; var varType: HDVARTYPE): _Answer; safecall;
    function Get_fileName: WideString; safecall;
    function Get_FileFormat: HDAFFORMAT; safecall;
    procedure Set_FileFormat(pVal: HDAFFORMAT); safecall;
    procedure Overlay(const overlayFileName: WideString); safecall;
    function Get_DefaultAnswerFile: WideString; safecall;
    procedure Set_DefaultAnswerFile(const pVal: WideString); safecall;
    procedure Create(const answerFileName: WideString); safecall;
    procedure Save(const answerFileName: WideString); safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property fileName: WideString read Get_fileName;
    property FileFormat: HDAFFORMAT read Get_FileFormat write Set_FileFormat;
    property DefaultAnswerFile: WideString read Get_DefaultAnswerFile write Set_DefaultAnswerFile;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  _AnswerCollectionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3E419C82-EED2-4FD4-BD37-C4BC9A9FEFB1}
// *********************************************************************//
  _AnswerCollectionDisp = dispinterface
    ['{3E419C82-EED2-4FD4-BD37-C4BC9A9FEFB1}']
    property Count: Integer readonly dispid 1;
    procedure Close; dispid 2;
    procedure UploadAnswerCollection(const url: WideString; format: HDANSWERUPLOADFORMAT); dispid 3;
    procedure Add(const newAnswer: _Answer); dispid 4;
    function Item(Index: OleVariant; var varType: HDVARTYPE): _Answer; dispid 0;
    property fileName: WideString readonly dispid 6;
    property FileFormat: HDAFFORMAT dispid 7;
    procedure Overlay(const overlayFileName: WideString); dispid 8;
    property DefaultAnswerFile: WideString dispid 9;
    procedure Create(const answerFileName: WideString); dispid 10;
    procedure Save(const answerFileName: WideString); dispid 11;
    property Application: _HotDocs6Application readonly dispid 12;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _Answer
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DF34C5CA-1760-4262-9B56-24E3EDE60994}
// *********************************************************************//
  _Answer = interface(IDispatch)
    ['{DF34C5CA-1760-4262-9B56-24E3EDE60994}']
    procedure SetRepeatIndex(repeat1: Integer; repeat2: Integer; repeat3: Integer; repeat4: Integer); safecall;
    procedure GetRepeatIndex(out repeat1: Integer; out repeat2: Integer; out repeat3: Integer; 
                             out repeat4: Integer); safecall;
    procedure AddMultipleChoiceValue(const newValue: WideString); safecall;
    function IsMultipleChoiceValueSet(const chkValue: WideString): WordBool; safecall;
    function Get_Name: WideString; safecall;
    function Get_Type_: HDVARTYPE; safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(pVal: OleVariant); safecall;
    function Get_Unanswered: WordBool; safecall;
    procedure Set_Unanswered(pVal: WordBool); safecall;
    procedure Create(const ansName: WideString; valType: HDVARTYPE); safecall;
    procedure ClearAskedFlag; safecall;
    function GetRepeatCount(repeat1: Integer; repeat2: Integer; repeat3: Integer; repeat4: Integer): Integer; safecall;
    function Get_RepeatCount: Integer; safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    procedure IterateValues; safecall;
    property Name: WideString read Get_Name;
    property Type_: HDVARTYPE read Get_Type_;
    property Value: OleVariant read Get_Value write Set_Value;
    property Unanswered: WordBool read Get_Unanswered write Set_Unanswered;
    property RepeatCount: Integer read Get_RepeatCount;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
  end;

// *********************************************************************//
// DispIntf:  _AnswerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DF34C5CA-1760-4262-9B56-24E3EDE60994}
// *********************************************************************//
  _AnswerDisp = dispinterface
    ['{DF34C5CA-1760-4262-9B56-24E3EDE60994}']
    procedure SetRepeatIndex(repeat1: Integer; repeat2: Integer; repeat3: Integer; repeat4: Integer); dispid 1;
    procedure GetRepeatIndex(out repeat1: Integer; out repeat2: Integer; out repeat3: Integer; 
                             out repeat4: Integer); dispid 2;
    procedure AddMultipleChoiceValue(const newValue: WideString); dispid 3;
    function IsMultipleChoiceValueSet(const chkValue: WideString): WordBool; dispid 4;
    property Name: WideString readonly dispid 5;
    property Type_: HDVARTYPE readonly dispid 6;
    property Value: OleVariant dispid 7;
    property Unanswered: WordBool dispid 8;
    procedure Create(const ansName: WideString; valType: HDVARTYPE); dispid 9;
    procedure ClearAskedFlag; dispid 10;
    function GetRepeatCount(repeat1: Integer; repeat2: Integer; repeat3: Integer; repeat4: Integer): Integer; dispid 11;
    property RepeatCount: Integer readonly dispid 12;
    property Application: _HotDocs6Application readonly dispid 13;
    procedure IterateValues; dispid 14;
  end;

// *********************************************************************//
// Interface: _HotDocs6Application
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {991DE9DD-D19A-4EA0-9A07-D56F0CA44FE9}
// *********************************************************************//
  _HotDocs6Application = interface(IDispatch)
    ['{991DE9DD-D19A-4EA0-9A07-D56F0CA44FE9}']
    procedure SelectTemplate(const libPath: WideString; bOpen: WordBool; out tplPath: WideString; 
                             out tplTitle: WideString; out tplDesc: WideString); safecall;
    procedure SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                      out tplCount: Integer; out tplPaths: OleVariant;
                                      out tplTitles: OleVariant; out tplDescs: OleVariant); safecall;
    procedure SetUserInterfaceItem(element: HDLUI; enabled: WordBool); safecall;
    procedure DeleteUserMenuItem(uiHandle: Integer); safecall;
    function AddUserMenuItem(const menuTxt: WideString; menu: HDLIMENU): Integer; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pVal: WordBool); safecall;
    function Get__Templates: _Templates; safecall;
    function Get_WordProcTplDir(formProc: HDFormProcessor): HResult; safecall;
    function Get_Assemblies: AssemblyCollection; safecall;
    function Get_AssemblyQueueVisible: WordBool; safecall;
    procedure Set_AssemblyQueueVisible(pVal: WordBool); safecall;
    procedure OpenLibrary(const libPath: WideString; addToMRU: WordBool); safecall;
    procedure Set_CommandLine(const Param1: WideString); safecall;
    procedure PrintDocument(const docPath: WideString); safecall;
    procedure SendToWordProcessor(const docFileName: WideString); safecall;
    procedure _INTERNAL(var p1: WideString; var p2: WideString; var p3: WideString; var p4: Integer); safecall;
    function Get_ActiveAssembly: _Assembly; safecall;
    procedure ShowHotDocsHelp(topicID: Integer); safecall;
    procedure _FileEncryption(const sourceFileName: WideString; const destFileName: WideString; 
                              const password: WideString; decrypt: WordBool); safecall;
    function Get_CurrentLibraryPath: WideString; safecall;
    function Get_Hwnd: Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_Flavor: HDPRODUCTFLAVOR; safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property _Templates: _Templates read Get__Templates;
    property WordProcTplDir[formProc: HDFormProcessor]: HResult read Get_WordProcTplDir;
    property Assemblies: AssemblyCollection read Get_Assemblies;
    property AssemblyQueueVisible: WordBool read Get_AssemblyQueueVisible write Set_AssemblyQueueVisible;
    property CommandLine: WideString write Set_CommandLine;
    property ActiveAssembly: _Assembly read Get_ActiveAssembly;
    property CurrentLibraryPath: WideString read Get_CurrentLibraryPath;
    property Hwnd: Integer read Get_Hwnd;
    property Version: WideString read Get_Version;
    property Flavor: HDPRODUCTFLAVOR read Get_Flavor;
  end;

// *********************************************************************//
// DispIntf:  _HotDocs6ApplicationDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {991DE9DD-D19A-4EA0-9A07-D56F0CA44FE9}
// *********************************************************************//
  _HotDocs6ApplicationDisp = dispinterface
    ['{991DE9DD-D19A-4EA0-9A07-D56F0CA44FE9}']
    procedure SelectTemplate(const libPath: WideString; bOpen: WordBool; out tplPath: WideString; 
                             out tplTitle: WideString; out tplDesc: WideString); dispid 1;
    procedure SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                      out tplCount: Integer; out tplPaths: OleVariant;
                                      out tplTitles: OleVariant; out tplDescs: OleVariant); dispid 2;
    procedure SetUserInterfaceItem(element: HDLUI; enabled: WordBool); dispid 3;
    procedure DeleteUserMenuItem(uiHandle: Integer); dispid 4;
    function AddUserMenuItem(const menuTxt: WideString; menu: HDLIMENU): Integer; dispid 5;
    property Visible: WordBool dispid 6;
    property _Templates: _Templates readonly dispid 7;
    property WordProcTplDir[formProc: HDFormProcessor]: HResult readonly dispid 8;
    property Assemblies: AssemblyCollection readonly dispid 9;
    property AssemblyQueueVisible: WordBool dispid 10;
    procedure OpenLibrary(const libPath: WideString; addToMRU: WordBool); dispid 11;
    property CommandLine: WideString writeonly dispid 12;
    procedure PrintDocument(const docPath: WideString); dispid 13;
    procedure SendToWordProcessor(const docFileName: WideString); dispid 14;
    procedure _INTERNAL(var p1: WideString; var p2: WideString; var p3: WideString; var p4: Integer); dispid 15;
    property ActiveAssembly: _Assembly readonly dispid 16;
    procedure ShowHotDocsHelp(topicID: Integer); dispid 17;
    procedure _FileEncryption(const sourceFileName: WideString; const destFileName: WideString; 
                              const password: WideString; decrypt: WordBool); dispid 18;
    property CurrentLibraryPath: WideString readonly dispid 19;
    property Hwnd: Integer readonly dispid 20;
    property Version: WideString readonly dispid 21;
    property Flavor: HDPRODUCTFLAVOR readonly dispid 22;
  end;

// *********************************************************************//
// Interface: _HotDocs6Application2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {991DE9DD-D19A-4EA0-9A07-D56F0CA44FEA}
// *********************************************************************//
  _HotDocs6Application2 = interface(_HotDocs6Application)
    ['{991DE9DD-D19A-4EA0-9A07-D56F0CA44FEA}']
    procedure SaveDocAsPDF(const docFileName: WideString; const destinationFileName: WideString); safecall;
    procedure PublishOnlineFiles(const TemplatePath: WideString; const destinationDir: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  _HotDocs6Application2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {991DE9DD-D19A-4EA0-9A07-D56F0CA44FEA}
// *********************************************************************//
  _HotDocs6Application2Disp = dispinterface
    ['{991DE9DD-D19A-4EA0-9A07-D56F0CA44FEA}']
    procedure SaveDocAsPDF(const docFileName: WideString; const destinationFileName: WideString); dispid 100;
    procedure PublishOnlineFiles(const TemplatePath: WideString; const destinationDir: WideString); dispid 101;
    procedure SelectTemplate(const libPath: WideString; bOpen: WordBool; out tplPath: WideString; 
                             out tplTitle: WideString; out tplDesc: WideString); dispid 1;
    procedure SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                      out tplCount: Integer; out tplPaths: OleVariant; 
                                      out tplTitles: OleVariant; out tplDescs: OleVariant); dispid 2;
    procedure SetUserInterfaceItem(element: HDLUI; enabled: WordBool); dispid 3;
    procedure DeleteUserMenuItem(uiHandle: Integer); dispid 4;
    function AddUserMenuItem(const menuTxt: WideString; menu: HDLIMENU): Integer; dispid 5;
    property Visible: WordBool dispid 6;
    property _Templates: _Templates readonly dispid 7;
    property WordProcTplDir[formProc: HDFormProcessor]: HResult readonly dispid 8;
    property Assemblies: AssemblyCollection readonly dispid 9;
    property AssemblyQueueVisible: WordBool dispid 10;
    procedure OpenLibrary(const libPath: WideString; addToMRU: WordBool); dispid 11;
    property CommandLine: WideString writeonly dispid 12;
    procedure PrintDocument(const docPath: WideString); dispid 13;
    procedure SendToWordProcessor(const docFileName: WideString); dispid 14;
    procedure _INTERNAL(var p1: WideString; var p2: WideString; var p3: WideString; var p4: Integer); dispid 15;
    property ActiveAssembly: _Assembly readonly dispid 16;
    procedure ShowHotDocsHelp(topicID: Integer); dispid 17;
    procedure _FileEncryption(const sourceFileName: WideString; const destFileName: WideString; 
                              const password: WideString; decrypt: WordBool); dispid 18;
    property CurrentLibraryPath: WideString readonly dispid 19;
    property Hwnd: Integer readonly dispid 20;
    property Version: WideString readonly dispid 21;
    property Flavor: HDPRODUCTFLAVOR readonly dispid 22;
  end;

// *********************************************************************//
// Interface: _Templates
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D1901E4-92E1-42A8-A1F0-54D329E9761A}
// *********************************************************************//
  _Templates = interface(IDispatch)
    ['{4D1901E4-92E1-42A8-A1F0-54D329E9761A}']
    function _Item(Index: OleVariant): _Template; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Open(const templateFileName: WideString; FormProcessor: HDFormProcessor): _Template; safecall;
    procedure Close(Index: OleVariant); safecall;
    function Get_Index(const indexFileName: WideString): Integer; safecall;
    function New(formProc: HDFormProcessor; out newType: Integer; out basedOnDocPath: WideString): _Template; safecall;
    function Edit(formProc: HDFormProcessor; out fieldNumber: Integer; out fieldPosition: Integer): _Template; safecall;
    function ConvertInsert(const inField: WideString; const inSrc: WideString; 
                           const inDest: WideString; out outField: WideString; 
                           out outSrc: WideString; out outDest: WideString): HDConversionReturn; safecall;
    function GetGotoGraphicTmplFieldInfo(formProc: HDFormProcessor; out tmplPath: WideString; 
                                         out fieldID: WideString; out fieldPosition: Integer): HDGetGotoFieldInfoRetVal; safecall;
    function GetGotoTextTmplFieldInfo(formProc: HDFormProcessor; out tmplPath: WideString; 
                                      out fieldNumber: Integer; out fieldPosition: Integer): HDGetGotoFieldInfoRetVal; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Index[const indexFileName: WideString]: Integer read Get_Index;
  end;

// *********************************************************************//
// DispIntf:  _TemplatesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D1901E4-92E1-42A8-A1F0-54D329E9761A}
// *********************************************************************//
  _TemplatesDisp = dispinterface
    ['{4D1901E4-92E1-42A8-A1F0-54D329E9761A}']
    function _Item(Index: OleVariant): _Template; dispid 0;
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    function Open(const templateFileName: WideString; FormProcessor: HDFormProcessor): _Template; dispid 2;
    procedure Close(Index: OleVariant); dispid 3;
    property Index[const indexFileName: WideString]: Integer readonly dispid 4;
    function New(formProc: HDFormProcessor; out newType: Integer; out basedOnDocPath: WideString): _Template; dispid 5;
    function Edit(formProc: HDFormProcessor; out fieldNumber: Integer; out fieldPosition: Integer): _Template; dispid 6;
    function ConvertInsert(const inField: WideString; const inSrc: WideString; 
                           const inDest: WideString; out outField: WideString; 
                           out outSrc: WideString; out outDest: WideString): HDConversionReturn; dispid 7;
    function GetGotoGraphicTmplFieldInfo(formProc: HDFormProcessor; out tmplPath: WideString; 
                                         out fieldID: WideString; out fieldPosition: Integer): HDGetGotoFieldInfoRetVal; dispid 8;
    function GetGotoTextTmplFieldInfo(formProc: HDFormProcessor; out tmplPath: WideString; 
                                      out fieldNumber: Integer; out fieldPosition: Integer): HDGetGotoFieldInfoRetVal; dispid 9;
  end;

// *********************************************************************//
// Interface: _Template
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5ADE4857-7568-4784-BBA0-209870E4A92B}
// *********************************************************************//
  _Template = interface(IDispatch)
    ['{5ADE4857-7568-4784-BBA0-209870E4A92B}']
    function Get_PathAndFileName: WideString; safecall;
    procedure Set_PathAndFileName(const pVal: WideString); safecall;
    function Get_FormProcessor: HDFormProcessor; safecall;
    procedure Set_FormProcessor(FormProcessor: HDFormProcessor); safecall;
    function Get_Title: WideString; safecall;
    procedure Set_Title(const pVal: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    procedure Assemble(const tempTmplPath: WideString); safecall;
    procedure Save; safecall;
    function DisplayVariableDlg(const selectedText: WideString): HDDisplayRetVal; safecall;
    function GetVariableFieldInfo(out fieldText: WideString): HDInsertRetVal; safecall;
    function ConfirmReplacement(const originalText: WideString; var fieldText: WideString; 
                                var findOptions: Integer): HDInsertRetVal; safecall;
    function DisplayAskDlg: HDDisplayRetVal; safecall;
    function GetAskFieldInfo(out fieldText: WideString): HDInsertRetVal; safecall;
    function DisplayRepeatDlg: HDDisplayRetVal; safecall;
    function GetRepeatFieldInfo(out fieldText: WideString): HDInsertRetVal; safecall;
    function DisplayIfDlg(mode: HDDisplayIfMode): HDDisplayRetVal; safecall;
    function GetIfFieldInfo(out fieldText: WideString): HDInsertRetVal; safecall;
    function DisplayInsertDlg(mode: HDDisplayInsertMode): HDDisplayRetVal; safecall;
    function GetInsertFieldInfo(out fieldText: WideString): HDInsertRetVal; safecall;
    function DisplayFieldDlg(const fieldText: WideString; newCompType: HDCompType): HDDisplayRetVal; safecall;
    function GetFieldInfo(out fieldText: WideString): HDInsertRetVal; safecall;
    function DisplayComponentManagerDlg: HDDisplayRetVal; safecall;
    function DisplayEditComponentDlg(const selectedText: WideString): HDDisplayRetVal; safecall;
    function DisplayClauseLibraryDlg(mode: HDDisplayInsertMode): HDDisplayRetVal; safecall;
    property PathAndFileName: WideString read Get_PathAndFileName write Set_PathAndFileName;
    property FormProcessor: HDFormProcessor read Get_FormProcessor write Set_FormProcessor;
    property Title: WideString read Get_Title write Set_Title;
    property Description: WideString read Get_Description write Set_Description;
  end;

// *********************************************************************//
// DispIntf:  _TemplateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5ADE4857-7568-4784-BBA0-209870E4A92B}
// *********************************************************************//
  _TemplateDisp = dispinterface
    ['{5ADE4857-7568-4784-BBA0-209870E4A92B}']
    property PathAndFileName: WideString dispid 1;
    property FormProcessor: HDFormProcessor dispid 2;
    property Title: WideString dispid 3;
    property Description: WideString dispid 4;
    procedure Assemble(const tempTmplPath: WideString); dispid 5;
    procedure Save; dispid 6;
    function DisplayVariableDlg(const selectedText: WideString): HDDisplayRetVal; dispid 7;
    function GetVariableFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 8;
    function ConfirmReplacement(const originalText: WideString; var fieldText: WideString; 
                                var findOptions: Integer): HDInsertRetVal; dispid 9;
    function DisplayAskDlg: HDDisplayRetVal; dispid 10;
    function GetAskFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 11;
    function DisplayRepeatDlg: HDDisplayRetVal; dispid 12;
    function GetRepeatFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 13;
    function DisplayIfDlg(mode: HDDisplayIfMode): HDDisplayRetVal; dispid 14;
    function GetIfFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 15;
    function DisplayInsertDlg(mode: HDDisplayInsertMode): HDDisplayRetVal; dispid 16;
    function GetInsertFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 17;
    function DisplayFieldDlg(const fieldText: WideString; newCompType: HDCompType): HDDisplayRetVal; dispid 18;
    function GetFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 19;
    function DisplayComponentManagerDlg: HDDisplayRetVal; dispid 20;
    function DisplayEditComponentDlg(const selectedText: WideString): HDDisplayRetVal; dispid 21;
    function DisplayClauseLibraryDlg(mode: HDDisplayInsertMode): HDDisplayRetVal; dispid 22;
  end;

// *********************************************************************//
// Interface: AssemblyCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF92F712-50A9-4B2C-9D14-0956C1883C5A}
// *********************************************************************//
  AssemblyCollection = interface(IDispatch)
    ['{BF92F712-50A9-4B2C-9D14-0956C1883C5A}']
    function Item(Index: Integer): _Assembly; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(const newVal: _Assembly): Integer; safecall;
    procedure Remove(Index: Integer); safecall;
    function Get_Count: Integer; safecall;
    function Insert(Index: Integer; const newVal: _Assembly): Integer; safecall;
    procedure Clear; safecall;
    function FindByHandle(assemblyHandle: Integer): Integer; safecall;
    procedure Move(oldindex: Integer; newindex: Integer); safecall;
    function AddToQueue(const templateFilePath: WideString; Visible: WordBool; 
                        const docPath: WideString; const answerPath: WideString): Integer; safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
  end;

// *********************************************************************//
// DispIntf:  AssemblyCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF92F712-50A9-4B2C-9D14-0956C1883C5A}
// *********************************************************************//
  AssemblyCollectionDisp = dispinterface
    ['{BF92F712-50A9-4B2C-9D14-0956C1883C5A}']
    function Item(Index: Integer): _Assembly; dispid 0;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(const newVal: _Assembly): Integer; dispid 1;
    procedure Remove(Index: Integer); dispid 2;
    property Count: Integer readonly dispid 3;
    function Insert(Index: Integer; const newVal: _Assembly): Integer; dispid 4;
    procedure Clear; dispid 5;
    function FindByHandle(assemblyHandle: Integer): Integer; dispid 6;
    procedure Move(oldindex: Integer; newindex: Integer); dispid 7;
    function AddToQueue(const templateFilePath: WideString; Visible: WordBool; 
                        const docPath: WideString; const answerPath: WideString): Integer; dispid 8;
    property Application: _HotDocs6Application readonly dispid 9;
  end;

// *********************************************************************//
// Interface: _VarMap
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {28E330B9-BF78-4849-990E-1B403383E4D4}
// *********************************************************************//
  _VarMap = interface(IDispatch)
    ['{28E330B9-BF78-4849-990E-1B403383E4D4}']
    procedure MappingItem(Index: OleVariant; out varName: WideString; out srcName: WideString); safecall;
    procedure MappingAdd(const varName: WideString; const srcName: WideString); safecall;
    procedure MappingRemove(Index: Integer); safecall;
    procedure OpenMapFile(const mapFileName: WideString); safecall;
    procedure SaveMapFile(const mapFileName: WideString); safecall;
    procedure OpenComponentFile(const componentFileName: WideString); safecall;
    procedure HDVariablesItem(Index: Integer; out varName: WideString; var varType: HDVARTYPE); safecall;
    procedure SourceNamesItem(Index: Integer; out sourceName: WideString; out varType: HDVARTYPE); safecall;
    procedure SourceNamesAdd(const sourceName: WideString; varType: HDVARTYPE); safecall;
    procedure SourceNamesRemove(Index: Integer); safecall;
    function Get_MappingCount: Integer; safecall;
    function Get_HDVariablesCount: Integer; safecall;
    function Get_SourceNamesCount: Integer; safecall;
    function ShowUserInterface(showImport: WordBool; showLoad: WordBool; windowHandle: Integer; 
                               const fromString: WideString; comboBox: WordBool): WordBool; safecall;
    procedure HDVariablesAdd(const varName: WideString; varType: HDVARTYPE); safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    property MappingCount: Integer read Get_MappingCount;
    property HDVariablesCount: Integer read Get_HDVariablesCount;
    property SourceNamesCount: Integer read Get_SourceNamesCount;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
  end;

// *********************************************************************//
// DispIntf:  _VarMapDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {28E330B9-BF78-4849-990E-1B403383E4D4}
// *********************************************************************//
  _VarMapDisp = dispinterface
    ['{28E330B9-BF78-4849-990E-1B403383E4D4}']
    procedure MappingItem(Index: OleVariant; out varName: WideString; out srcName: WideString); dispid 1;
    procedure MappingAdd(const varName: WideString; const srcName: WideString); dispid 2;
    procedure MappingRemove(Index: Integer); dispid 3;
    procedure OpenMapFile(const mapFileName: WideString); dispid 4;
    procedure SaveMapFile(const mapFileName: WideString); dispid 5;
    procedure OpenComponentFile(const componentFileName: WideString); dispid 6;
    procedure HDVariablesItem(Index: Integer; out varName: WideString; var varType: HDVARTYPE); dispid 7;
    procedure SourceNamesItem(Index: Integer; out sourceName: WideString; out varType: HDVARTYPE); dispid 8;
    procedure SourceNamesAdd(const sourceName: WideString; varType: HDVARTYPE); dispid 9;
    procedure SourceNamesRemove(Index: Integer); dispid 10;
    property MappingCount: Integer readonly dispid 11;
    property HDVariablesCount: Integer readonly dispid 12;
    property SourceNamesCount: Integer readonly dispid 13;
    function ShowUserInterface(showImport: WordBool; showLoad: WordBool; windowHandle: Integer; 
                               const fromString: WideString; comboBox: WordBool): WordBool; dispid 14;
    procedure HDVariablesAdd(const varName: WideString; varType: HDVARTYPE); dispid 15;
    property Application: _HotDocs6Application readonly dispid 16;
  end;

// *********************************************************************//
// Interface: _IHD6INTHotDocs
// Flags:     (16) Hidden
// GUID:      {C8AFB6AE-5C62-4365-99DD-1E76DABE8515}
// *********************************************************************//
  _IHD6INTHotDocs = interface(IUnknown)
    ['{C8AFB6AE-5C62-4365-99DD-1E76DABE8515}']
    function GetCPtr(out pVal: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _HotDocs6Application3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {991DE9DD-D19A-4EA0-9A07-D56F0CA44FEB}
// *********************************************************************//
  _HotDocs6Application3 = interface(_HotDocs6Application2)
    ['{991DE9DD-D19A-4EA0-9A07-D56F0CA44FEB}']
    function AddUserMenuItem2(const menuTxt: WideString; menu: HDLIMENU; position: Integer; 
                              Icon: OleVariant): Integer; safecall;
    procedure RetrieveUrlFile(const url: WideString; var fileName: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  _HotDocs6Application3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {991DE9DD-D19A-4EA0-9A07-D56F0CA44FEB}
// *********************************************************************//
  _HotDocs6Application3Disp = dispinterface
    ['{991DE9DD-D19A-4EA0-9A07-D56F0CA44FEB}']
    function AddUserMenuItem2(const menuTxt: WideString; menu: HDLIMENU; position: Integer; 
                              Icon: OleVariant): Integer; dispid 200;
    procedure RetrieveUrlFile(const url: WideString; var fileName: WideString); dispid 201;
    procedure SaveDocAsPDF(const docFileName: WideString; const destinationFileName: WideString); dispid 100;
    procedure PublishOnlineFiles(const TemplatePath: WideString; const destinationDir: WideString); dispid 101;
    procedure SelectTemplate(const libPath: WideString; bOpen: WordBool; out tplPath: WideString; 
                             out tplTitle: WideString; out tplDesc: WideString); dispid 1;
    procedure SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                      out tplCount: Integer; out tplPaths: OleVariant; 
                                      out tplTitles: OleVariant; out tplDescs: OleVariant); dispid 2;
    procedure SetUserInterfaceItem(element: HDLUI; enabled: WordBool); dispid 3;
    procedure DeleteUserMenuItem(uiHandle: Integer); dispid 4;
    function AddUserMenuItem(const menuTxt: WideString; menu: HDLIMENU): Integer; dispid 5;
    property Visible: WordBool dispid 6;
    property _Templates: _Templates readonly dispid 7;
    property WordProcTplDir[formProc: HDFormProcessor]: HResult readonly dispid 8;
    property Assemblies: AssemblyCollection readonly dispid 9;
    property AssemblyQueueVisible: WordBool dispid 10;
    procedure OpenLibrary(const libPath: WideString; addToMRU: WordBool); dispid 11;
    property CommandLine: WideString writeonly dispid 12;
    procedure PrintDocument(const docPath: WideString); dispid 13;
    procedure SendToWordProcessor(const docFileName: WideString); dispid 14;
    procedure _INTERNAL(var p1: WideString; var p2: WideString; var p3: WideString; var p4: Integer); dispid 15;
    property ActiveAssembly: _Assembly readonly dispid 16;
    procedure ShowHotDocsHelp(topicID: Integer); dispid 17;
    procedure _FileEncryption(const sourceFileName: WideString; const destFileName: WideString; 
                              const password: WideString; decrypt: WordBool); dispid 18;
    property CurrentLibraryPath: WideString readonly dispid 19;
    property Hwnd: Integer readonly dispid 20;
    property Version: WideString readonly dispid 21;
    property Flavor: HDPRODUCTFLAVOR readonly dispid 22;
  end;

// *********************************************************************//
// Interface: _IHD6INTAnswerCollection
// Flags:     (16) Hidden
// GUID:      {7131E74C-4AF0-49F6-A65E-87C06D61D1A2}
// *********************************************************************//
  _IHD6INTAnswerCollection = interface(IUnknown)
    ['{7131E74C-4AF0-49F6-A65E-87C06D61D1A2}']
    function GetCPtr(var outval: LongWord): HResult; stdcall;
    function SetAnswerSet(var pVal: Pointer): HResult; stdcall;
    function GetAnswerSet(retval: PPPrivateAlias1): HResult; stdcall;
    function GetRefCount(out cnt: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _ComponentCollection
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2B539DA7-2727-4AF0-A166-009CA0F48A5A}
// *********************************************************************//
  _ComponentCollection = interface(IDispatch)
    ['{2B539DA7-2727-4AF0-A166-009CA0F48A5A}']
    procedure Open(const componentFileName: WideString); safecall;
    function Item(Index: OleVariant; var varType: HDVARTYPE): _Component; safecall;
    function Get_fileName: WideString; safecall;
    function Get_Count: Integer; safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property fileName: WideString read Get_fileName;
    property Count: Integer read Get_Count;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  _ComponentCollectionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2B539DA7-2727-4AF0-A166-009CA0F48A5A}
// *********************************************************************//
  _ComponentCollectionDisp = dispinterface
    ['{2B539DA7-2727-4AF0-A166-009CA0F48A5A}']
    procedure Open(const componentFileName: WideString); dispid 1;
    function Item(Index: OleVariant; var varType: HDVARTYPE): _Component; dispid 0;
    property fileName: WideString readonly dispid 3;
    property Count: Integer readonly dispid 4;
    property Application: _HotDocs6Application readonly dispid 5;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _Component
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {98A99D7D-FF5D-4A4F-A154-BC8B9FFD597E}
// *********************************************************************//
  _Component = interface(IDispatch)
    ['{98A99D7D-FF5D-4A4F-A154-BC8B9FFD597E}']
    function Get_Name: WideString; safecall;
    function Get_Type_: HDVARTYPE; safecall;
    function Get_Prompt: WideString; safecall;
    function Get_HelpText: WideString; safecall;
    function Get_DialogName: WideString; safecall;
    function Get_DBName: WideString; safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    property Name: WideString read Get_Name;
    property Type_: HDVARTYPE read Get_Type_;
    property Prompt: WideString read Get_Prompt;
    property HelpText: WideString read Get_HelpText;
    property DialogName: WideString read Get_DialogName;
    property DBName: WideString read Get_DBName;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
  end;

// *********************************************************************//
// DispIntf:  _ComponentDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {98A99D7D-FF5D-4A4F-A154-BC8B9FFD597E}
// *********************************************************************//
  _ComponentDisp = dispinterface
    ['{98A99D7D-FF5D-4A4F-A154-BC8B9FFD597E}']
    property Name: WideString readonly dispid 1;
    property Type_: HDVARTYPE readonly dispid 2;
    property Prompt: WideString readonly dispid 3;
    property HelpText: WideString readonly dispid 4;
    property DialogName: WideString readonly dispid 5;
    property DBName: WideString readonly dispid 6;
    property Application: _HotDocs6Application readonly dispid 7;
  end;

// *********************************************************************//
// Interface: _ComponentCollection2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2B539DA8-2727-4AF0-A166-009CA0F48A5A}
// *********************************************************************//
  _ComponentCollection2 = interface(_ComponentCollection)
    ['{2B539DA8-2727-4AF0-A166-009CA0F48A5A}']
    procedure CreateVariable(const variableName: WideString; varType: HDVARTYPE; 
                             const Prompt: WideString); safecall;
    procedure Create(const filePath: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  _ComponentCollection2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2B539DA8-2727-4AF0-A166-009CA0F48A5A}
// *********************************************************************//
  _ComponentCollection2Disp = dispinterface
    ['{2B539DA8-2727-4AF0-A166-009CA0F48A5A}']
    procedure CreateVariable(const variableName: WideString; varType: HDVARTYPE; 
                             const Prompt: WideString); dispid 100;
    procedure Create(const filePath: WideString); dispid 101;
    procedure Open(const componentFileName: WideString); dispid 1;
    function Item(Index: OleVariant; var varType: HDVARTYPE): _Component; dispid 0;
    property fileName: WideString readonly dispid 3;
    property Count: Integer readonly dispid 4;
    property Application: _HotDocs6Application readonly dispid 5;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _ComponentCollection3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2B539DA9-2727-4AF0-A166-009CA0F48A5A}
// *********************************************************************//
  _ComponentCollection3 = interface(_ComponentCollection2)
    ['{2B539DA9-2727-4AF0-A166-009CA0F48A5A}']
    function _GetPreferenceString(const prefName: WideString): WideString; safecall;
    procedure _SetPreferenceString(const prefName: WideString; const newVal: WideString); safecall;
    function _GetPreferenceBoolean(const prefName: WideString): WordBool; safecall;
    procedure _SetPreferenceBoolean(const prefName: WideString; newVal: WordBool); safecall;
    function _GetPreferenceNumber(const prefName: WideString): Integer; safecall;
    procedure _SetPreferenceNumber(const prefName: WideString; newVal: Integer); safecall;
    procedure OpenBase(const fileName: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  _ComponentCollection3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2B539DA9-2727-4AF0-A166-009CA0F48A5A}
// *********************************************************************//
  _ComponentCollection3Disp = dispinterface
    ['{2B539DA9-2727-4AF0-A166-009CA0F48A5A}']
    function _GetPreferenceString(const prefName: WideString): WideString; dispid 201;
    procedure _SetPreferenceString(const prefName: WideString; const newVal: WideString); dispid 202;
    function _GetPreferenceBoolean(const prefName: WideString): WordBool; dispid 203;
    procedure _SetPreferenceBoolean(const prefName: WideString; newVal: WordBool); dispid 204;
    function _GetPreferenceNumber(const prefName: WideString): Integer; dispid 205;
    procedure _SetPreferenceNumber(const prefName: WideString; newVal: Integer); dispid 206;
    procedure OpenBase(const fileName: WideString); dispid 207;
    procedure CreateVariable(const variableName: WideString; varType: HDVARTYPE; 
                             const Prompt: WideString); dispid 100;
    procedure Create(const filePath: WideString); dispid 101;
    procedure Open(const componentFileName: WideString); dispid 1;
    function Item(Index: OleVariant; var varType: HDVARTYPE): _Component; dispid 0;
    property fileName: WideString readonly dispid 3;
    property Count: Integer readonly dispid 4;
    property Application: _HotDocs6Application readonly dispid 5;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _IHD6INTComponent
// Flags:     (16) Hidden
// GUID:      {1007F4F5-514C-4835-9937-A6665ACB4DAC}
// *********************************************************************//
  _IHD6INTComponent = interface(IUnknown)
    ['{1007F4F5-514C-4835-9937-A6665ACB4DAC}']
    function GetCPtr(out outval: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _IHD6INTAnswer
// Flags:     (16) Hidden
// GUID:      {90031947-372B-42D5-874B-7FE95313B2BC}
// *********************************************************************//
  _IHD6INTAnswer = interface(IUnknown)
    ['{90031947-372B-42D5-874B-7FE95313B2BC}']
    function GetCPtr(out outval: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _AnswerEvents
// Flags:     (4096) Dispatchable
// GUID:      {E485B97D-1BBF-4174-A97C-4B03D5EB33C2}
// *********************************************************************//
  _AnswerEvents = dispinterface
    ['{E485B97D-1BBF-4174-A97C-4B03D5EB33C2}']
    procedure OnValueFoundEvent(Value: OleVariant; repeat1: Integer; repeat2: Integer; 
                                repeat3: Integer; repeat4: Integer); dispid 1;
  end;

// *********************************************************************//
// Interface: _IHD6INTAssemblyCollection
// Flags:     (0)
// GUID:      {29A72960-1086-4A3A-B959-A5E89A25632D}
// *********************************************************************//
  _IHD6INTAssemblyCollection = interface(IUnknown)
    ['{29A72960-1086-4A3A-B959-A5E89A25632D}']
    function GetCPtr(var pVal: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _Assembly2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A99AB320-0378-4033-9534-DF296B6B63C6}
// *********************************************************************//
  _Assembly2 = interface(_Assembly)
    ['{A99AB320-0378-4033-9534-DF296B6B63C6}']
    function Get_PromptToSaveDocument: WordBool; safecall;
    procedure Set_PromptToSaveDocument(pVal: WordBool); safecall;
    property PromptToSaveDocument: WordBool read Get_PromptToSaveDocument write Set_PromptToSaveDocument;
  end;

// *********************************************************************//
// DispIntf:  _Assembly2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A99AB320-0378-4033-9534-DF296B6B63C6}
// *********************************************************************//
  _Assembly2Disp = dispinterface
    ['{A99AB320-0378-4033-9534-DF296B6B63C6}']
    property PromptToSaveDocument: WordBool dispid 100;
    procedure SetUserInterfaceItem(element: HDAUI; enabled: WordBool); dispid 1;
    property TemplatePath: WideString dispid 2;
    property AnswerCollection: _AnswerCollection dispid 3;
    property DocumentPath: WideString dispid 4;
    property Map: _VarMap dispid 5;
    property Visible: WordBool dispid 6;
    property assemblyHandle: Integer readonly dispid 7;
    property ShowAnswerFileDialog: WordBool dispid 8;
    procedure DeleteUserMenuItem(uiHandle: Integer); dispid 9;
    property TemplateTitle: WideString dispid 10;
    procedure AddUserMenuItem(const menuTxt: WideString; menuItem: HDAIMENU; out uiHandle: Integer); dispid 11;
    property TemplateDesc: WideString dispid 12;
    property KeepInQueue: WordBool dispid 13;
    property Status: HDASSEMBLYSTATUS readonly dispid 14;
    procedure UseAnswerFile(const answerFilePath: WideString); dispid 15;
    property PrintWhenComplete: WordBool dispid 16;
    property CommandLine: WideString writeonly dispid 17;
    property AnswerSummaryPath: WideString dispid 18;
    property QuestionSummaryPath: WideString dispid 19;
    procedure SendToWordProcessor; dispid 20;
    property SuppressUnansweredWarning: WordBool dispid 21;
    property Application: _HotDocs6Application readonly dispid 22;
    property Hwnd: Integer readonly dispid 23;
  end;

// *********************************************************************//
// Interface: _IHD6INTAssembly
// Flags:     (16) Hidden
// GUID:      {A47FB36F-9878-4812-BCE1-7F61024EB9C1}
// *********************************************************************//
  _IHD6INTAssembly = interface(IUnknown)
    ['{A47FB36F-9878-4812-BCE1-7F61024EB9C1}']
    function GetCPtr(out outval: LongWord): HResult; stdcall;
    function Set_Status(pVal: LongWord): HResult; stdcall;
    function Get_Status(out pVal: HDASSEMBLYSTATUS): HResult; stdcall;
    function Get_Index(out pVal: LongWord): HResult; stdcall;
    function SetAssemblyHandle(handle: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _AssemblyEvents
// Flags:     (4096) Dispatchable
// GUID:      {58172076-C690-434D-942B-F3EA55693C98}
// *********************************************************************//
  _AssemblyEvents = dispinterface
    ['{58172076-C690-434D-942B-F3EA55693C98}']
    procedure OnErrorEvent(errCode: Integer; const errMesg: WideString; out override: WordBool); dispid 1;
    procedure OnCloseAssemblyInterfaceEvent; dispid 2;
    procedure OnAssemblyCompleteEvent; dispid 3;
    procedure OnNeedAnswerEvent(assemblyHandle: Integer; const pAnswer: _Answer); dispid 4;
    procedure OnPreSaveAnswersEvent(const answers: _AnswerCollection; out override: WordBool); dispid 5;
    procedure OnPostSaveAnswersEvent(const answers: _AnswerCollection); dispid 6;
    procedure OnPreSaveDocumentEvent(var pathName: WideString; outputType: HDOUTPUTTYPE; 
                                     out showui: WordBool; out override: WordBool); dispid 7;
    procedure OnPostSaveDocumentEvent(outputType: HDOUTPUTTYPE; const docPath: WideString); dispid 8;
    procedure OnUserMenuItemClickedEvent(menuHandle: Integer); dispid 9;
    procedure OnUserInterfaceEvent(hdEvent: HDAUI; out override: WordBool); dispid 10;
    procedure OnAssemblyStartEvent; dispid 11;
    procedure OnFileSelectEvent(hdEvent: HDAUI; var fileName: WideString; out override: WordBool); dispid 12;
  end;

// *********************************************************************//
// Interface: _IHD6INTMap
// Flags:     (16) Hidden
// GUID:      {54F39627-DF05-4D72-851C-FA09E3A354B3}
// *********************************************************************//
  _IHD6INTMap = interface(IUnknown)
    ['{54F39627-DF05-4D72-851C-FA09E3A354B3}']
    function GetCPtr(out ptr: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _Template2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5ADE4858-7568-4784-BBA0-209870E4A92B}
// *********************************************************************//
  _Template2 = interface(_Template)
    ['{5ADE4858-7568-4784-BBA0-209870E4A92B}']
    procedure OnlineAssemble(const tempTmplPath: WideString); safecall;
    function DisplayFieldLabelDlg(out label_: Integer; out depth: Integer; out hidden: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  _Template2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5ADE4858-7568-4784-BBA0-209870E4A92B}
// *********************************************************************//
  _Template2Disp = dispinterface
    ['{5ADE4858-7568-4784-BBA0-209870E4A92B}']
    procedure OnlineAssemble(const tempTmplPath: WideString); dispid 100;
    function DisplayFieldLabelDlg(out label_: Integer; out depth: Integer; out hidden: Integer): Integer; dispid 101;
    property PathAndFileName: WideString dispid 1;
    property FormProcessor: HDFormProcessor dispid 2;
    property Title: WideString dispid 3;
    property Description: WideString dispid 4;
    procedure Assemble(const tempTmplPath: WideString); dispid 5;
    procedure Save; dispid 6;
    function DisplayVariableDlg(const selectedText: WideString): HDDisplayRetVal; dispid 7;
    function GetVariableFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 8;
    function ConfirmReplacement(const originalText: WideString; var fieldText: WideString; 
                                var findOptions: Integer): HDInsertRetVal; dispid 9;
    function DisplayAskDlg: HDDisplayRetVal; dispid 10;
    function GetAskFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 11;
    function DisplayRepeatDlg: HDDisplayRetVal; dispid 12;
    function GetRepeatFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 13;
    function DisplayIfDlg(mode: HDDisplayIfMode): HDDisplayRetVal; dispid 14;
    function GetIfFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 15;
    function DisplayInsertDlg(mode: HDDisplayInsertMode): HDDisplayRetVal; dispid 16;
    function GetInsertFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 17;
    function DisplayFieldDlg(const fieldText: WideString; newCompType: HDCompType): HDDisplayRetVal; dispid 18;
    function GetFieldInfo(out fieldText: WideString): HDInsertRetVal; dispid 19;
    function DisplayComponentManagerDlg: HDDisplayRetVal; dispid 20;
    function DisplayEditComponentDlg(const selectedText: WideString): HDDisplayRetVal; dispid 21;
    function DisplayClauseLibraryDlg(mode: HDDisplayInsertMode): HDDisplayRetVal; dispid 22;
  end;

// *********************************************************************//
// Interface: _Templates2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D1901E5-92E1-42A8-A1F0-54D329E9761A}
// *********************************************************************//
  _Templates2 = interface(_Templates)
    ['{4D1901E5-92E1-42A8-A1F0-54D329E9761A}']
    function CleanEnvironment(formProc: HDFormProcessor; const tmplPath: WideString): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  _Templates2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D1901E5-92E1-42A8-A1F0-54D329E9761A}
// *********************************************************************//
  _Templates2Disp = dispinterface
    ['{4D1901E5-92E1-42A8-A1F0-54D329E9761A}']
    function CleanEnvironment(formProc: HDFormProcessor; const tmplPath: WideString): Integer; dispid 101;
    function _Item(Index: OleVariant): _Template; dispid 0;
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    function Open(const templateFileName: WideString; FormProcessor: HDFormProcessor): _Template; dispid 2;
    procedure Close(Index: OleVariant); dispid 3;
    property Index[const indexFileName: WideString]: Integer readonly dispid 4;
    function New(formProc: HDFormProcessor; out newType: Integer; out basedOnDocPath: WideString): _Template; dispid 5;
    function Edit(formProc: HDFormProcessor; out fieldNumber: Integer; out fieldPosition: Integer): _Template; dispid 6;
    function ConvertInsert(const inField: WideString; const inSrc: WideString; 
                           const inDest: WideString; out outField: WideString; 
                           out outSrc: WideString; out outDest: WideString): HDConversionReturn; dispid 7;
    function GetGotoGraphicTmplFieldInfo(formProc: HDFormProcessor; out tmplPath: WideString; 
                                         out fieldID: WideString; out fieldPosition: Integer): HDGetGotoFieldInfoRetVal; dispid 8;
    function GetGotoTextTmplFieldInfo(formProc: HDFormProcessor; out tmplPath: WideString; 
                                      out fieldNumber: Integer; out fieldPosition: Integer): HDGetGotoFieldInfoRetVal; dispid 9;
  end;

// *********************************************************************//
// Interface: _Library
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FC0AEADD-27D4-460B-8D64-A8CFBC2EFAEC}
// *********************************************************************//
  _Library = interface(IDispatch)
    ['{FC0AEADD-27D4-460B-8D64-A8CFBC2EFAEC}']
    procedure Open(const libFileName: WideString); safecall;
    procedure New(const libFileName: WideString); safecall;
    procedure Close; safecall;
    procedure Save; safecall;
    function Get_MainFolder: _LibraryEntity; safecall;
    function Get_Title: WideString; safecall;
    procedure Set_Title(const pVal: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    property MainFolder: _LibraryEntity read Get_MainFolder;
    property Title: WideString read Get_Title write Set_Title;
    property Description: WideString read Get_Description write Set_Description;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
  end;

// *********************************************************************//
// DispIntf:  _LibraryDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FC0AEADD-27D4-460B-8D64-A8CFBC2EFAEC}
// *********************************************************************//
  _LibraryDisp = dispinterface
    ['{FC0AEADD-27D4-460B-8D64-A8CFBC2EFAEC}']
    procedure Open(const libFileName: WideString); dispid 1;
    procedure New(const libFileName: WideString); dispid 2;
    procedure Close; dispid 3;
    procedure Save; dispid 4;
    property MainFolder: _LibraryEntity readonly dispid 6;
    property Title: WideString dispid 7;
    property Description: WideString dispid 8;
    property Application: _HotDocs6Application readonly dispid 9;
  end;

// *********************************************************************//
// Interface: _LibraryEntity
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {84CEB33D-E30D-4D7E-9ABA-C6D6D9EDCBF3}
// *********************************************************************//
  _LibraryEntity = interface(IDispatch)
    ['{84CEB33D-E30D-4D7E-9ABA-C6D6D9EDCBF3}']
    function Item(Index: Integer): _LibraryEntity; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    procedure AddTemplate(const tplTitle: WideString; const filePath: WideString; 
                          const Description: WideString; atIndex: Integer); safecall;
    function AddFolder(const folderTitle: WideString; const Description: WideString; 
                       atIndex: Integer): _LibraryEntity; safecall;
    procedure Remove; safecall;
    function Get_isFolder: WordBool; safecall;
    function Get_Title: WideString; safecall;
    procedure Set_Title(const pVal: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    function Get_TemplatePath: WideString; safecall;
    procedure Set_TemplatePath(const pVal: WideString); safecall;
    function Get_Parent: _LibraryEntity; safecall;
    function Get_HotDocs6Application: _HotDocs6Application; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property isFolder: WordBool read Get_isFolder;
    property Title: WideString read Get_Title write Set_Title;
    property Description: WideString read Get_Description write Set_Description;
    property TemplatePath: WideString read Get_TemplatePath write Set_TemplatePath;
    property Parent: _LibraryEntity read Get_Parent;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
  end;

// *********************************************************************//
// DispIntf:  _LibraryEntityDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {84CEB33D-E30D-4D7E-9ABA-C6D6D9EDCBF3}
// *********************************************************************//
  _LibraryEntityDisp = dispinterface
    ['{84CEB33D-E30D-4D7E-9ABA-C6D6D9EDCBF3}']
    function Item(Index: Integer): _LibraryEntity; dispid 0;
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure AddTemplate(const tplTitle: WideString; const filePath: WideString; 
                          const Description: WideString; atIndex: Integer); dispid 2;
    function AddFolder(const folderTitle: WideString; const Description: WideString; 
                       atIndex: Integer): _LibraryEntity; dispid 3;
    procedure Remove; dispid 4;
    property isFolder: WordBool readonly dispid 5;
    property Title: WideString dispid 6;
    property Description: WideString dispid 7;
    property TemplatePath: WideString dispid 8;
    property Parent: _LibraryEntity readonly dispid 9;
    property Application: _HotDocs6Application readonly dispid 10;
  end;

// *********************************************************************//
// Interface: _Library2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FC0AEADE-27D4-460B-8D64-A8CFBC2EFAEC}
// *********************************************************************//
  _Library2 = interface(_Library)
    ['{FC0AEADE-27D4-460B-8D64-A8CFBC2EFAEC}']
    procedure Set_Redraw(Param1: WordBool); safecall;
    property Redraw: WordBool write Set_Redraw;
  end;

// *********************************************************************//
// DispIntf:  _Library2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FC0AEADE-27D4-460B-8D64-A8CFBC2EFAEC}
// *********************************************************************//
  _Library2Disp = dispinterface
    ['{FC0AEADE-27D4-460B-8D64-A8CFBC2EFAEC}']
    property Redraw: WordBool writeonly dispid 101;
    procedure Open(const libFileName: WideString); dispid 1;
    procedure New(const libFileName: WideString); dispid 2;
    procedure Close; dispid 3;
    procedure Save; dispid 4;
    property MainFolder: _LibraryEntity readonly dispid 6;
    property Title: WideString dispid 7;
    property Description: WideString dispid 8;
    property Application: _HotDocs6Application readonly dispid 9;
  end;

// *********************************************************************//
// The Class CoIcon provides a Create and CreateRemote method to          
// create instances of the default interface _Icon exposed by              
// the CoClass Icon. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIcon = class
    class function Create: _Icon;
    class function CreateRemote(const MachineName: string): _Icon;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TIcon
// Help String      : Icon Class
// Default Interface: _Icon
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TIconProperties= class;
{$ENDIF}
  TIcon = class(TOleServer)
  private
    FIntf:        _Icon;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TIconProperties;
    function      GetServerProperties: TIconProperties;
{$ENDIF}
    function      GetDefaultInterface: _Icon;
  protected
    procedure InitServerData; override;
    function Get_Index(out pVal: Integer): HResult;
    function Set_Index(pVal: Integer): HResult;
    function Set_HBITMAP(Param1: LongWord): HResult;
    function Get_maskColor(out pVal: LongWord): HResult;
    function Set_maskColor(pVal: LongWord): HResult;
    function Set_HICON(Param1: LongWord): HResult;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Icon);
    procedure Disconnect; override;
    function LoadBitmap(const fileName: WideString): HResult;
    function LoadIcon(const fileName: WideString): HResult;
    property DefaultInterface: _Icon read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TIconProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TIcon
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TIconProperties = class(TPersistent)
  private
    FServer:    TIcon;
    function    GetDefaultInterface: _Icon;
    constructor Create(AServer: TIcon);
  protected
    function Get_Index(out pVal: Integer): HResult;
    function Set_Index(pVal: Integer): HResult;
    function Set_HBITMAP(Param1: LongWord): HResult;
    function Get_maskColor(out pVal: LongWord): HResult;
    function Set_maskColor(pVal: LongWord): HResult;
    function Set_HICON(Param1: LongWord): HResult;
  public
    property DefaultInterface: _Icon read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoApplication provides a Create and CreateRemote method to          
// create instances of the default interface _HotDocs6Application3 exposed by              
// the CoClass Application. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoApplication = class
    class function Create: _HotDocs6Application3;
    class function CreateRemote(const MachineName: string): _HotDocs6Application3;
  end;

  THotDocs6ApplicationOnErrorEvent = procedure(Sender: TObject; errCode: Integer; var errMesg: OleVariant;
                                                        var override: OleVariant) of object;
  THotDocs6ApplicationOnAssemblyStartEvent = procedure(Sender: TObject; var assemblyObject: OleVariant) of object;
  THotDocs6ApplicationOnAssemblyCompleteEvent = procedure(Sender: TObject; var tplTitle: OleVariant;
                                                                   var tplPath: OleVariant;
                                                                   var docPath: OleVariant;
                                                                   var ansColl: OleVariant;
                                                                   assemblyHandle: Integer) of object;
  THotDocs6ApplicationOnUserMenuItemClickedEvent = procedure(Sender: TObject; menuHandle: Integer) of object;
  THotDocs6ApplicationOnUserInterfaceEvent = procedure(Sender: TObject; hdEvent: HDLUI; 
                                                                var override: OleVariant) of object;
  THotDocs6ApplicationOnTemplateSelectedEvent = procedure(Sender: TObject; var tplTitle: OleVariant;
                                                                   var tplPath: OleVariant;
                                                                   var override: OleVariant) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : THotDocs6Application
// Help String      : Application Class
// Default Interface: _HotDocs6Application3
// Def. Intf. DISP? : No
// Event   Interface: _HotDocs6ApplicationEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  THotDocs6ApplicationProperties= class;
{$ENDIF}
  THotDocs6Application = class(TOleServer)
  private
    FOnErrorEvent: THotDocs6ApplicationOnErrorEvent;
    FOnAssemblyStartEvent: THotDocs6ApplicationOnAssemblyStartEvent;
    FOnAssemblyCompleteEvent: THotDocs6ApplicationOnAssemblyCompleteEvent;
    FOnUserMenuItemClickedEvent: THotDocs6ApplicationOnUserMenuItemClickedEvent;
    FOnUserInterfaceEvent: THotDocs6ApplicationOnUserInterfaceEvent;
    FOnTemplateSelectedEvent: THotDocs6ApplicationOnTemplateSelectedEvent;
    FOnLibraryInterfaceCloseEvent: TNotifyEvent;
    FIntf:        _HotDocs6Application3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       THotDocs6ApplicationProperties;
    function      GetServerProperties: THotDocs6ApplicationProperties;
{$ENDIF}
    function      GetDefaultInterface: _HotDocs6Application3;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Visible: WordBool;
    procedure Set_Visible(pVal: WordBool);
    function Get__Templates: _Templates;
    function Get_WordProcTplDir(formProc: HDFormProcessor): HResult;
    function Get_Assemblies: AssemblyCollection;
    function Get_AssemblyQueueVisible: WordBool;
    procedure Set_AssemblyQueueVisible(pVal: WordBool);
    procedure Set_CommandLine(const Param1: WideString);
    function Get_ActiveAssembly: _Assembly;
    function Get_CurrentLibraryPath: WideString;
    function Get_Hwnd: Integer;
    function Get_Version: WideString;
    function Get_Flavor: HDPRODUCTFLAVOR;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _HotDocs6Application3);
    procedure Disconnect; override;
    procedure SelectTemplate(const libPath: WideString; bOpen: WordBool; out tplPath: WideString; 
                             out tplTitle: WideString; out tplDesc: WideString);
    procedure SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                      out tplCount: Integer; out tplPaths: OleVariant); overload;
    procedure SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                      out tplCount: Integer; out tplPaths: OleVariant; 
                                      out tplTitles: OleVariant); overload;
    procedure SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                      out tplCount: Integer; out tplPaths: OleVariant; 
                                      out tplTitles: OleVariant; out tplDescs: OleVariant); overload;
    procedure SetUserInterfaceItem(element: HDLUI; enabled: WordBool);
    procedure DeleteUserMenuItem(uiHandle: Integer);
    function AddUserMenuItem(const menuTxt: WideString; menu: HDLIMENU): Integer;
    procedure OpenLibrary(const libPath: WideString; addToMRU: WordBool);
    procedure PrintDocument(const docPath: WideString);
    procedure SendToWordProcessor(const docFileName: WideString);
    procedure _INTERNAL(var p1: WideString; var p2: WideString; var p3: WideString; var p4: Integer);
    procedure ShowHotDocsHelp(topicID: Integer);
    procedure _FileEncryption(const sourceFileName: WideString; const destFileName: WideString; 
                              const password: WideString; decrypt: WordBool);
    procedure SaveDocAsPDF(const docFileName: WideString; const destinationFileName: WideString);
    procedure PublishOnlineFiles(const TemplatePath: WideString; const destinationDir: WideString);
    function AddUserMenuItem2(const menuTxt: WideString; menu: HDLIMENU; position: Integer; 
                              Icon: OleVariant): Integer;
    procedure RetrieveUrlFile(const url: WideString; var fileName: WideString);
    property DefaultInterface: _HotDocs6Application3 read GetDefaultInterface;
    property _Templates: _Templates read Get__Templates;
    property WordProcTplDir[formProc: HDFormProcessor]: HResult read Get_WordProcTplDir;
    property Assemblies: AssemblyCollection read Get_Assemblies;
    property CommandLine: WideString write Set_CommandLine;
    property ActiveAssembly: _Assembly read Get_ActiveAssembly;
    property CurrentLibraryPath: WideString read Get_CurrentLibraryPath;
    property Hwnd: Integer read Get_Hwnd;
    property Version: WideString read Get_Version;
    property Flavor: HDPRODUCTFLAVOR read Get_Flavor;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AssemblyQueueVisible: WordBool read Get_AssemblyQueueVisible write Set_AssemblyQueueVisible;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: THotDocs6ApplicationProperties read GetServerProperties;
{$ENDIF}
    property OnErrorEvent: THotDocs6ApplicationOnErrorEvent read FOnErrorEvent write FOnErrorEvent;
    property OnAssemblyStartEvent: THotDocs6ApplicationOnAssemblyStartEvent read FOnAssemblyStartEvent write FOnAssemblyStartEvent;
    property OnAssemblyCompleteEvent: THotDocs6ApplicationOnAssemblyCompleteEvent read FOnAssemblyCompleteEvent write FOnAssemblyCompleteEvent;
    property OnUserMenuItemClickedEvent: THotDocs6ApplicationOnUserMenuItemClickedEvent read FOnUserMenuItemClickedEvent write FOnUserMenuItemClickedEvent;
    property OnUserInterfaceEvent: THotDocs6ApplicationOnUserInterfaceEvent read FOnUserInterfaceEvent write FOnUserInterfaceEvent;
    property OnTemplateSelectedEvent: THotDocs6ApplicationOnTemplateSelectedEvent read FOnTemplateSelectedEvent write FOnTemplateSelectedEvent;
    property OnLibraryInterfaceCloseEvent: TNotifyEvent read FOnLibraryInterfaceCloseEvent write FOnLibraryInterfaceCloseEvent;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : THotDocs6Application
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 THotDocs6ApplicationProperties = class(TPersistent)
  private
    FServer:    THotDocs6Application;
    function    GetDefaultInterface: _HotDocs6Application3;
    constructor Create(AServer: THotDocs6Application);
  protected
    function Get_Visible: WordBool;
    procedure Set_Visible(pVal: WordBool);
    function Get__Templates: _Templates;
    function Get_WordProcTplDir(formProc: HDFormProcessor): HResult;
    function Get_Assemblies: AssemblyCollection;
    function Get_AssemblyQueueVisible: WordBool;
    procedure Set_AssemblyQueueVisible(pVal: WordBool);
    procedure Set_CommandLine(const Param1: WideString);
    function Get_ActiveAssembly: _Assembly;
    function Get_CurrentLibraryPath: WideString;
    function Get_Hwnd: Integer;
    function Get_Version: WideString;
    function Get_Flavor: HDPRODUCTFLAVOR;
  public
    property DefaultInterface: _HotDocs6Application3 read GetDefaultInterface;
  published
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AssemblyQueueVisible: WordBool read Get_AssemblyQueueVisible write Set_AssemblyQueueVisible;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAnswerCollection provides a Create and CreateRemote method to          
// create instances of the default interface _AnswerCollection exposed by              
// the CoClass AnswerCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAnswerCollection = class
    class function Create: _AnswerCollection;
    class function CreateRemote(const MachineName: string): _AnswerCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAnswerCollection
// Help String      : AnswerCollection Class
// Default Interface: _AnswerCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAnswerCollectionProperties= class;
{$ENDIF}
  TAnswerCollection = class(TOleServer)
  private
    FIntf:        _AnswerCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TAnswerCollectionProperties;
    function      GetServerProperties: TAnswerCollectionProperties;
{$ENDIF}
    function      GetDefaultInterface: _AnswerCollection;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_fileName: WideString;
    function Get_FileFormat: HDAFFORMAT;
    procedure Set_FileFormat(pVal: HDAFFORMAT);
    function Get_DefaultAnswerFile: WideString;
    procedure Set_DefaultAnswerFile(const pVal: WideString);
    function Get_HotDocs6Application: _HotDocs6Application;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _AnswerCollection);
    procedure Disconnect; override;
    procedure Close;
    procedure UploadAnswerCollection(const url: WideString; format: HDANSWERUPLOADFORMAT);
    procedure Add(const newAnswer: _Answer);
    function Item(Index: OleVariant; var varType: HDVARTYPE): _Answer;
    procedure Overlay(const overlayFileName: WideString);
    procedure Create1(const answerFileName: WideString);
    procedure Save(const answerFileName: WideString);
    property DefaultInterface: _AnswerCollection read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property fileName: WideString read Get_fileName;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property FileFormat: HDAFFORMAT read Get_FileFormat write Set_FileFormat;
    property DefaultAnswerFile: WideString read Get_DefaultAnswerFile write Set_DefaultAnswerFile;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAnswerCollectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAnswerCollection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAnswerCollectionProperties = class(TPersistent)
  private
    FServer:    TAnswerCollection;
    function    GetDefaultInterface: _AnswerCollection;
    constructor Create(AServer: TAnswerCollection);
  protected
    function Get_Count: Integer;
    function Get_fileName: WideString;
    function Get_FileFormat: HDAFFORMAT;
    procedure Set_FileFormat(pVal: HDAFFORMAT);
    function Get_DefaultAnswerFile: WideString;
    procedure Set_DefaultAnswerFile(const pVal: WideString);
    function Get_HotDocs6Application: _HotDocs6Application;
  public
    property DefaultInterface: _AnswerCollection read GetDefaultInterface;
  published
    property FileFormat: HDAFFORMAT read Get_FileFormat write Set_FileFormat;
    property DefaultAnswerFile: WideString read Get_DefaultAnswerFile write Set_DefaultAnswerFile;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoComponentCollection provides a Create and CreateRemote method to          
// create instances of the default interface _ComponentCollection3 exposed by              
// the CoClass ComponentCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComponentCollection = class
    class function Create: _ComponentCollection3;
    class function CreateRemote(const MachineName: string): _ComponentCollection3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TComponentCollection
// Help String      : ComponentCollection Class
// Default Interface: _ComponentCollection3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TComponentCollectionProperties= class;
{$ENDIF}
  TComponentCollection = class(TOleServer)
  private
    FIntf:        _ComponentCollection3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TComponentCollectionProperties;
    function      GetServerProperties: TComponentCollectionProperties;
{$ENDIF}
    function      GetDefaultInterface: _ComponentCollection3;
  protected
    procedure InitServerData; override;
    function Get_fileName: WideString;
    function Get_Count: Integer;
    function Get_HotDocs6Application: _HotDocs6Application;
    function Get__NewEnum: IUnknown;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _ComponentCollection3);
    procedure Disconnect; override;
    procedure Open(const componentFileName: WideString);
    function Item(Index: OleVariant; var varType: HDVARTYPE): _Component;
    procedure CreateVariable(const variableName: WideString; varType: HDVARTYPE; 
                             const Prompt: WideString);
    procedure Create1(const filePath: WideString);
    function _GetPreferenceString(const prefName: WideString): WideString;
    procedure _SetPreferenceString(const prefName: WideString; const newVal: WideString);
    function _GetPreferenceBoolean(const prefName: WideString): WordBool;
    procedure _SetPreferenceBoolean(const prefName: WideString; newVal: WordBool);
    function _GetPreferenceNumber(const prefName: WideString): Integer;
    procedure _SetPreferenceNumber(const prefName: WideString; newVal: Integer);
    procedure OpenBase(const fileName: WideString);
    property DefaultInterface: _ComponentCollection3 read GetDefaultInterface;
    property fileName: WideString read Get_fileName;
    property Count: Integer read Get_Count;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property _NewEnum: IUnknown read Get__NewEnum;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TComponentCollectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TComponentCollection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TComponentCollectionProperties = class(TPersistent)
  private
    FServer:    TComponentCollection;
    function    GetDefaultInterface: _ComponentCollection3;
    constructor Create(AServer: TComponentCollection);
  protected
    function Get_fileName: WideString;
    function Get_Count: Integer;
    function Get_HotDocs6Application: _HotDocs6Application;
    function Get__NewEnum: IUnknown;
  public
    property DefaultInterface: _ComponentCollection3 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoComponent provides a Create and CreateRemote method to          
// create instances of the default interface _Component exposed by              
// the CoClass Component. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComponent = class
    class function Create: _Component;
    class function CreateRemote(const MachineName: string): _Component;
  end;

// *********************************************************************//
// The Class CoAnswer provides a Create and CreateRemote method to          
// create instances of the default interface _Answer exposed by              
// the CoClass Answer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAnswer = class
    class function Create: _Answer;
    class function CreateRemote(const MachineName: string): _Answer;
  end;

  TAnswerOnValueFoundEvent = procedure(Sender: TObject; Value: OleVariant; repeat1: Integer; 
                                                        repeat2: Integer; repeat3: Integer; 
                                                        repeat4: Integer) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAnswer
// Help String      : Answer Class
// Default Interface: _Answer
// Def. Intf. DISP? : No
// Event   Interface: _AnswerEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAnswerProperties= class;
{$ENDIF}
  TAnswer = class(TOleServer)
  private
    FOnValueFoundEvent: TAnswerOnValueFoundEvent;
    FIntf:        _Answer;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TAnswerProperties;
    function      GetServerProperties: TAnswerProperties;
{$ENDIF}
    function      GetDefaultInterface: _Answer;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Name: WideString;
    function Get_Type_: HDVARTYPE;
    function Get_Value: OleVariant;
    procedure Set_Value(pVal: OleVariant);
    function Get_Unanswered: WordBool;
    procedure Set_Unanswered(pVal: WordBool);
    function Get_RepeatCount: Integer;
    function Get_HotDocs6Application: _HotDocs6Application;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Answer);
    procedure Disconnect; override;
    procedure SetRepeatIndex(repeat1: Integer; repeat2: Integer; repeat3: Integer; repeat4: Integer);
    procedure GetRepeatIndex(out repeat1: Integer; out repeat2: Integer; out repeat3: Integer; 
                             out repeat4: Integer);
    procedure AddMultipleChoiceValue(const newValue: WideString);
    function IsMultipleChoiceValueSet(const chkValue: WideString): WordBool;
    procedure Create1(const ansName: WideString; valType: HDVARTYPE);
    procedure ClearAskedFlag;
    function GetRepeatCount(repeat1: Integer; repeat2: Integer; repeat3: Integer; repeat4: Integer): Integer;
    procedure IterateValues;
    property DefaultInterface: _Answer read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property Type_: HDVARTYPE read Get_Type_;
    property Value: OleVariant read Get_Value write Set_Value;
    property RepeatCount: Integer read Get_RepeatCount;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property Unanswered: WordBool read Get_Unanswered write Set_Unanswered;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAnswerProperties read GetServerProperties;
{$ENDIF}
    property OnValueFoundEvent: TAnswerOnValueFoundEvent read FOnValueFoundEvent write FOnValueFoundEvent;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAnswer
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAnswerProperties = class(TPersistent)
  private
    FServer:    TAnswer;
    function    GetDefaultInterface: _Answer;
    constructor Create(AServer: TAnswer);
  protected
    function Get_Name: WideString;
    function Get_Type_: HDVARTYPE;
    function Get_Value: OleVariant;
    procedure Set_Value(pVal: OleVariant);
    function Get_Unanswered: WordBool;
    procedure Set_Unanswered(pVal: WordBool);
    function Get_RepeatCount: Integer;
    function Get_HotDocs6Application: _HotDocs6Application;
  public
    property DefaultInterface: _Answer read GetDefaultInterface;
  published
    property Unanswered: WordBool read Get_Unanswered write Set_Unanswered;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAssemblyCollectionClass provides a Create and CreateRemote method to          
// create instances of the default interface AssemblyCollection exposed by              
// the CoClass AssemblyCollectionClass. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAssemblyCollectionClass = class
    class function Create: AssemblyCollection;
    class function CreateRemote(const MachineName: string): AssemblyCollection;
  end;

// *********************************************************************//
// The Class CoAssembly provides a Create and CreateRemote method to          
// create instances of the default interface _Assembly exposed by              
// the CoClass Assembly. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAssembly = class
    class function Create: _Assembly;
    class function CreateRemote(const MachineName: string): _Assembly;
  end;

  TAssemblyOnErrorEvent = procedure(Sender: TObject; errCode: Integer; var errMesg: OleVariant;
                                                     var override: OleVariant) of object;
  TAssemblyOnNeedAnswerEvent = procedure(Sender: TObject; assemblyHandle: Integer; 
                                                          var pAnswer: OleVariant) of object;
  TAssemblyOnPreSaveAnswersEvent = procedure(Sender: TObject; var answers: OleVariant;
                                                              var override: OleVariant) of object;
  TAssemblyOnPostSaveAnswersEvent = procedure(Sender: TObject; var answers: OleVariant) of object;
  TAssemblyOnPreSaveDocumentEvent = procedure(Sender: TObject; var pathName: OleVariant;
                                                               outputType: HDOUTPUTTYPE; 
                                                               var showui: OleVariant;
                                                               var override: OleVariant) of object;
  TAssemblyOnPostSaveDocumentEvent = procedure(Sender: TObject; outputType: HDOUTPUTTYPE; 
                                                                var docPath: OleVariant) of object;
  TAssemblyOnUserMenuItemClickedEvent = procedure(Sender: TObject; menuHandle: Integer) of object;
  TAssemblyOnUserInterfaceEvent = procedure(Sender: TObject; hdEvent: HDAUI; 
                                                             var override: OleVariant) of object;
  TAssemblyOnFileSelectEvent = procedure(Sender: TObject; hdEvent: HDAUI; var fileName: OleVariant;
                                                          var override: OleVariant) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAssembly
// Help String      : Assembly Class
// Default Interface: _Assembly
// Def. Intf. DISP? : No
// Event   Interface: _AssemblyEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAssemblyProperties= class;
{$ENDIF}
  TAssembly = class(TOleServer)
  private
    FOnErrorEvent: TAssemblyOnErrorEvent;
    FOnCloseAssemblyInterfaceEvent: TNotifyEvent;
    FOnAssemblyCompleteEvent: TNotifyEvent;
    FOnNeedAnswerEvent: TAssemblyOnNeedAnswerEvent;
    FOnPreSaveAnswersEvent: TAssemblyOnPreSaveAnswersEvent;
    FOnPostSaveAnswersEvent: TAssemblyOnPostSaveAnswersEvent;
    FOnPreSaveDocumentEvent: TAssemblyOnPreSaveDocumentEvent;
    FOnPostSaveDocumentEvent: TAssemblyOnPostSaveDocumentEvent;
    FOnUserMenuItemClickedEvent: TAssemblyOnUserMenuItemClickedEvent;
    FOnUserInterfaceEvent: TAssemblyOnUserInterfaceEvent;
    FOnAssemblyStartEvent: TNotifyEvent;
    FOnFileSelectEvent: TAssemblyOnFileSelectEvent;
    FIntf:        _Assembly;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TAssemblyProperties;
    function      GetServerProperties: TAssemblyProperties;
{$ENDIF}
    function      GetDefaultInterface: _Assembly;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_TemplatePath: WideString;
    procedure Set_TemplatePath(const pVal: WideString);
    function Get_AnswerCollection: _AnswerCollection;
    procedure Set_AnswerCollection(const pVal: _AnswerCollection);
    function Get_DocumentPath: WideString;
    procedure Set_DocumentPath(const pVal: WideString);
    function Get_Map: _VarMap;
    procedure Set_Map(const pVal: _VarMap);
    function Get_Visible: WordBool;
    procedure Set_Visible(pVal: WordBool);
    function Get_assemblyHandle: Integer;
    function Get_ShowAnswerFileDialog: WordBool;
    procedure Set_ShowAnswerFileDialog(pVal: WordBool);
    function Get_TemplateTitle: WideString;
    procedure Set_TemplateTitle(const pVal: WideString);
    function Get_TemplateDesc: WideString;
    procedure Set_TemplateDesc(const pVal: WideString);
    function Get_KeepInQueue: WordBool;
    procedure Set_KeepInQueue(pVal: WordBool);
    function Get_Status: HDASSEMBLYSTATUS;
    function Get_PrintWhenComplete: WordBool;
    procedure Set_PrintWhenComplete(pVal: WordBool);
    procedure Set_CommandLine(const Param1: WideString);
    function Get_AnswerSummaryPath: WideString;
    procedure Set_AnswerSummaryPath(const pVal: WideString);
    function Get_QuestionSummaryPath: WideString;
    procedure Set_QuestionSummaryPath(const pVal: WideString);
    function Get_SuppressUnansweredWarning: WordBool;
    procedure Set_SuppressUnansweredWarning(pVal: WordBool);
    function Get_HotDocs6Application: _HotDocs6Application;
    function Get_Hwnd: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Assembly);
    procedure Disconnect; override;
    procedure SetUserInterfaceItem(element: HDAUI; enabled: WordBool);
    procedure DeleteUserMenuItem(uiHandle: Integer);
    procedure AddUserMenuItem(const menuTxt: WideString; menuItem: HDAIMENU; out uiHandle: Integer);
    procedure UseAnswerFile(const answerFilePath: WideString);
    procedure SendToWordProcessor;
    property DefaultInterface: _Assembly read GetDefaultInterface;
    property assemblyHandle: Integer read Get_assemblyHandle;
    property Status: HDASSEMBLYSTATUS read Get_Status;
    property CommandLine: WideString write Set_CommandLine;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property Hwnd: Integer read Get_Hwnd;
    property TemplatePath: WideString read Get_TemplatePath write Set_TemplatePath;
    property AnswerCollection: _AnswerCollection read Get_AnswerCollection write Set_AnswerCollection;
    property DocumentPath: WideString read Get_DocumentPath write Set_DocumentPath;
    property Map: _VarMap read Get_Map write Set_Map;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property ShowAnswerFileDialog: WordBool read Get_ShowAnswerFileDialog write Set_ShowAnswerFileDialog;
    property TemplateTitle: WideString read Get_TemplateTitle write Set_TemplateTitle;
    property TemplateDesc: WideString read Get_TemplateDesc write Set_TemplateDesc;
    property KeepInQueue: WordBool read Get_KeepInQueue write Set_KeepInQueue;
    property PrintWhenComplete: WordBool read Get_PrintWhenComplete write Set_PrintWhenComplete;
    property AnswerSummaryPath: WideString read Get_AnswerSummaryPath write Set_AnswerSummaryPath;
    property QuestionSummaryPath: WideString read Get_QuestionSummaryPath write Set_QuestionSummaryPath;
    property SuppressUnansweredWarning: WordBool read Get_SuppressUnansweredWarning write Set_SuppressUnansweredWarning;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAssemblyProperties read GetServerProperties;
{$ENDIF}
    property OnErrorEvent: TAssemblyOnErrorEvent read FOnErrorEvent write FOnErrorEvent;
    property OnCloseAssemblyInterfaceEvent: TNotifyEvent read FOnCloseAssemblyInterfaceEvent write FOnCloseAssemblyInterfaceEvent;
    property OnAssemblyCompleteEvent: TNotifyEvent read FOnAssemblyCompleteEvent write FOnAssemblyCompleteEvent;
    property OnNeedAnswerEvent: TAssemblyOnNeedAnswerEvent read FOnNeedAnswerEvent write FOnNeedAnswerEvent;
    property OnPreSaveAnswersEvent: TAssemblyOnPreSaveAnswersEvent read FOnPreSaveAnswersEvent write FOnPreSaveAnswersEvent;
    property OnPostSaveAnswersEvent: TAssemblyOnPostSaveAnswersEvent read FOnPostSaveAnswersEvent write FOnPostSaveAnswersEvent;
    property OnPreSaveDocumentEvent: TAssemblyOnPreSaveDocumentEvent read FOnPreSaveDocumentEvent write FOnPreSaveDocumentEvent;
    property OnPostSaveDocumentEvent: TAssemblyOnPostSaveDocumentEvent read FOnPostSaveDocumentEvent write FOnPostSaveDocumentEvent;
    property OnUserMenuItemClickedEvent: TAssemblyOnUserMenuItemClickedEvent read FOnUserMenuItemClickedEvent write FOnUserMenuItemClickedEvent;
    property OnUserInterfaceEvent: TAssemblyOnUserInterfaceEvent read FOnUserInterfaceEvent write FOnUserInterfaceEvent;
    property OnAssemblyStartEvent: TNotifyEvent read FOnAssemblyStartEvent write FOnAssemblyStartEvent;
    property OnFileSelectEvent: TAssemblyOnFileSelectEvent read FOnFileSelectEvent write FOnFileSelectEvent;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAssembly
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAssemblyProperties = class(TPersistent)
  private
    FServer:    TAssembly;
    function    GetDefaultInterface: _Assembly;
    constructor Create(AServer: TAssembly);
  protected
    function Get_TemplatePath: WideString;
    procedure Set_TemplatePath(const pVal: WideString);
    function Get_AnswerCollection: _AnswerCollection;
    procedure Set_AnswerCollection(const pVal: _AnswerCollection);
    function Get_DocumentPath: WideString;
    procedure Set_DocumentPath(const pVal: WideString);
    function Get_Map: _VarMap;
    procedure Set_Map(const pVal: _VarMap);
    function Get_Visible: WordBool;
    procedure Set_Visible(pVal: WordBool);
    function Get_assemblyHandle: Integer;
    function Get_ShowAnswerFileDialog: WordBool;
    procedure Set_ShowAnswerFileDialog(pVal: WordBool);
    function Get_TemplateTitle: WideString;
    procedure Set_TemplateTitle(const pVal: WideString);
    function Get_TemplateDesc: WideString;
    procedure Set_TemplateDesc(const pVal: WideString);
    function Get_KeepInQueue: WordBool;
    procedure Set_KeepInQueue(pVal: WordBool);
    function Get_Status: HDASSEMBLYSTATUS;
    function Get_PrintWhenComplete: WordBool;
    procedure Set_PrintWhenComplete(pVal: WordBool);
    procedure Set_CommandLine(const Param1: WideString);
    function Get_AnswerSummaryPath: WideString;
    procedure Set_AnswerSummaryPath(const pVal: WideString);
    function Get_QuestionSummaryPath: WideString;
    procedure Set_QuestionSummaryPath(const pVal: WideString);
    function Get_SuppressUnansweredWarning: WordBool;
    procedure Set_SuppressUnansweredWarning(pVal: WordBool);
    function Get_HotDocs6Application: _HotDocs6Application;
    function Get_Hwnd: Integer;
  public
    property DefaultInterface: _Assembly read GetDefaultInterface;
  published
    property TemplatePath: WideString read Get_TemplatePath write Set_TemplatePath;
    property AnswerCollection: _AnswerCollection read Get_AnswerCollection write Set_AnswerCollection;
    property DocumentPath: WideString read Get_DocumentPath write Set_DocumentPath;
    property Map: _VarMap read Get_Map write Set_Map;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property ShowAnswerFileDialog: WordBool read Get_ShowAnswerFileDialog write Set_ShowAnswerFileDialog;
    property TemplateTitle: WideString read Get_TemplateTitle write Set_TemplateTitle;
    property TemplateDesc: WideString read Get_TemplateDesc write Set_TemplateDesc;
    property KeepInQueue: WordBool read Get_KeepInQueue write Set_KeepInQueue;
    property PrintWhenComplete: WordBool read Get_PrintWhenComplete write Set_PrintWhenComplete;
    property AnswerSummaryPath: WideString read Get_AnswerSummaryPath write Set_AnswerSummaryPath;
    property QuestionSummaryPath: WideString read Get_QuestionSummaryPath write Set_QuestionSummaryPath;
    property SuppressUnansweredWarning: WordBool read Get_SuppressUnansweredWarning write Set_SuppressUnansweredWarning;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoVarMap provides a Create and CreateRemote method to          
// create instances of the default interface _VarMap exposed by              
// the CoClass VarMap. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVarMap = class
    class function Create: _VarMap;
    class function CreateRemote(const MachineName: string): _VarMap;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TVarMap
// Help String      : VarMap Class
// Default Interface: _VarMap
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TVarMapProperties= class;
{$ENDIF}
  TVarMap = class(TOleServer)
  private
    FIntf:        _VarMap;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TVarMapProperties;
    function      GetServerProperties: TVarMapProperties;
{$ENDIF}
    function      GetDefaultInterface: _VarMap;
  protected
    procedure InitServerData; override;
    function Get_MappingCount: Integer;
    function Get_HDVariablesCount: Integer;
    function Get_SourceNamesCount: Integer;
    function Get_HotDocs6Application: _HotDocs6Application;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _VarMap);
    procedure Disconnect; override;
    procedure MappingItem(Index: OleVariant; out varName: WideString; out srcName: WideString);
    procedure MappingAdd(const varName: WideString; const srcName: WideString);
    procedure MappingRemove(Index: Integer);
    procedure OpenMapFile(const mapFileName: WideString);
    procedure SaveMapFile(const mapFileName: WideString);
    procedure OpenComponentFile(const componentFileName: WideString);
    procedure HDVariablesItem(Index: Integer; out varName: WideString; var varType: HDVARTYPE);
    procedure SourceNamesItem(Index: Integer; out sourceName: WideString; out varType: HDVARTYPE);
    procedure SourceNamesAdd(const sourceName: WideString; varType: HDVARTYPE);
    procedure SourceNamesRemove(Index: Integer);
    function ShowUserInterface(showImport: WordBool; showLoad: WordBool; windowHandle: Integer; 
                               const fromString: WideString; comboBox: WordBool): WordBool;
    procedure HDVariablesAdd(const varName: WideString; varType: HDVARTYPE);
    property DefaultInterface: _VarMap read GetDefaultInterface;
    property MappingCount: Integer read Get_MappingCount;
    property HDVariablesCount: Integer read Get_HDVariablesCount;
    property SourceNamesCount: Integer read Get_SourceNamesCount;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TVarMapProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TVarMap
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TVarMapProperties = class(TPersistent)
  private
    FServer:    TVarMap;
    function    GetDefaultInterface: _VarMap;
    constructor Create(AServer: TVarMap);
  protected
    function Get_MappingCount: Integer;
    function Get_HDVariablesCount: Integer;
    function Get_SourceNamesCount: Integer;
    function Get_HotDocs6Application: _HotDocs6Application;
  public
    property DefaultInterface: _VarMap read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoTemplate provides a Create and CreateRemote method to          
// create instances of the default interface _Template2 exposed by              
// the CoClass Template. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTemplate = class
    class function Create: _Template2;
    class function CreateRemote(const MachineName: string): _Template2;
  end;

// *********************************************************************//
// The Class CoTemplates provides a Create and CreateRemote method to          
// create instances of the default interface _Templates2 exposed by              
// the CoClass Templates. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTemplates = class
    class function Create: _Templates2;
    class function CreateRemote(const MachineName: string): _Templates2;
  end;

// *********************************************************************//
// The Class CoLibrary_ provides a Create and CreateRemote method to          
// create instances of the default interface _Library2 exposed by              
// the CoClass Library_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLibrary_ = class
    class function Create: _Library2;
    class function CreateRemote(const MachineName: string): _Library2;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLibrary_
// Help String      : Library Class
// Default Interface: _Library2
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLibrary_Properties= class;
{$ENDIF}
  TLibrary_ = class(TOleServer)
  private
    FIntf:        _Library2;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TLibrary_Properties;
    function      GetServerProperties: TLibrary_Properties;
{$ENDIF}
    function      GetDefaultInterface: _Library2;
  protected
    procedure InitServerData; override;
    function Get_MainFolder: _LibraryEntity;
    function Get_Title: WideString;
    procedure Set_Title(const pVal: WideString);
    function Get_Description: WideString;
    procedure Set_Description(const pVal: WideString);
    function Get_HotDocs6Application: _HotDocs6Application;
    procedure Set_Redraw(Param1: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Library2);
    procedure Disconnect; override;
    procedure Open(const libFileName: WideString);
    procedure New(const libFileName: WideString);
    procedure Close;
    procedure Save;
    property DefaultInterface: _Library2 read GetDefaultInterface;
    property MainFolder: _LibraryEntity read Get_MainFolder;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property Redraw: WordBool write Set_Redraw;
    property Title: WideString read Get_Title write Set_Title;
    property Description: WideString read Get_Description write Set_Description;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLibrary_Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLibrary_
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLibrary_Properties = class(TPersistent)
  private
    FServer:    TLibrary_;
    function    GetDefaultInterface: _Library2;
    constructor Create(AServer: TLibrary_);
  protected
    function Get_MainFolder: _LibraryEntity;
    function Get_Title: WideString;
    procedure Set_Title(const pVal: WideString);
    function Get_Description: WideString;
    procedure Set_Description(const pVal: WideString);
    function Get_HotDocs6Application: _HotDocs6Application;
    procedure Set_Redraw(Param1: WordBool);
  public
    property DefaultInterface: _Library2 read GetDefaultInterface;
  published
    property Title: WideString read Get_Title write Set_Title;
    property Description: WideString read Get_Description write Set_Description;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLibraryEntity provides a Create and CreateRemote method to          
// create instances of the default interface _LibraryEntity exposed by              
// the CoClass LibraryEntity. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLibraryEntity = class
    class function Create: _LibraryEntity;
    class function CreateRemote(const MachineName: string): _LibraryEntity;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLibraryEntity
// Help String      : LibraryEntity Class
// Default Interface: _LibraryEntity
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLibraryEntityProperties= class;
{$ENDIF}
  TLibraryEntity = class(TOleServer)
  private
    FIntf:        _LibraryEntity;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TLibraryEntityProperties;
    function      GetServerProperties: TLibraryEntityProperties;
{$ENDIF}
    function      GetDefaultInterface: _LibraryEntity;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
    function Get_isFolder: WordBool;
    function Get_Title: WideString;
    procedure Set_Title(const pVal: WideString);
    function Get_Description: WideString;
    procedure Set_Description(const pVal: WideString);
    function Get_TemplatePath: WideString;
    procedure Set_TemplatePath(const pVal: WideString);
    function Get_Parent: _LibraryEntity;
    function Get_HotDocs6Application: _HotDocs6Application;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _LibraryEntity);
    procedure Disconnect; override;
    function Item(Index: Integer): _LibraryEntity;
    procedure AddTemplate(const tplTitle: WideString; const filePath: WideString; 
                          const Description: WideString; atIndex: Integer);
    function AddFolder(const folderTitle: WideString; const Description: WideString; 
                       atIndex: Integer): _LibraryEntity;
    procedure Remove;
    property DefaultInterface: _LibraryEntity read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property isFolder: WordBool read Get_isFolder;
    property Parent: _LibraryEntity read Get_Parent;
    property Application: _HotDocs6Application read Get_HotDocs6Application;
    property Title: WideString read Get_Title write Set_Title;
    property Description: WideString read Get_Description write Set_Description;
    property TemplatePath: WideString read Get_TemplatePath write Set_TemplatePath;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLibraryEntityProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLibraryEntity
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLibraryEntityProperties = class(TPersistent)
  private
    FServer:    TLibraryEntity;
    function    GetDefaultInterface: _LibraryEntity;
    constructor Create(AServer: TLibraryEntity);
  protected
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
    function Get_isFolder: WordBool;
    function Get_Title: WideString;
    procedure Set_Title(const pVal: WideString);
    function Get_Description: WideString;
    procedure Set_Description(const pVal: WideString);
    function Get_TemplatePath: WideString;
    procedure Set_TemplatePath(const pVal: WideString);
    function Get_Parent: _LibraryEntity;
    function Get_HotDocs6Application: _HotDocs6Application;
  public
    property DefaultInterface: _LibraryEntity read GetDefaultInterface;
  published
    property Title: WideString read Get_Title write Set_Title;
    property Description: WideString read Get_Description write Set_Description;
    property TemplatePath: WideString read Get_TemplatePath write Set_TemplatePath;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'Servers';

implementation

uses ComObj;

class function CoIcon.Create: _Icon;
begin
  Result := CreateComObject(CLASS_Icon) as _Icon;
end;

class function CoIcon.CreateRemote(const MachineName: string): _Icon;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Icon) as _Icon;
end;

procedure TIcon.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D1B6F1CC-C9DA-47A1-B58A-7BF32EB62CE2}';
    IntfIID:   '{D1B6F1CB-C9DA-47A1-B58A-7BF32EB62CE2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TIcon.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _Icon;
  end;
end;

procedure TIcon.ConnectTo(svrIntf: _Icon);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TIcon.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TIcon.GetDefaultInterface: _Icon;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TIcon.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TIconProperties.Create(Self);
{$ENDIF}
end;

destructor TIcon.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TIcon.GetServerProperties: TIconProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TIcon.Get_Index(out pVal: Integer): HResult;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Index;
end;

function TIcon.Set_Index(pVal: Integer): HResult;
  { Warning: The property Index has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Index := pVal;
  Result := S_OK;
end;

function TIcon.Set_HBITMAP(Param1: LongWord): HResult;
begin
    Result := DefaultInterface.Set_HBITMAP(Param1);
end;

function TIcon.Get_maskColor(out pVal: LongWord): HResult;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.maskColor;
end;

function TIcon.Set_maskColor(pVal: LongWord): HResult;
  { Warning: The property maskColor has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.maskColor := pVal;
  Result := S_OK;
end;

function TIcon.Set_HICON(Param1: LongWord): HResult;
begin
    Result := DefaultInterface.Set_HICON(Param1);
end;

function TIcon.LoadBitmap(const fileName: WideString): HResult;
begin
  Result := DefaultInterface.LoadBitmap(fileName);
end;

function TIcon.LoadIcon(const fileName: WideString): HResult;
begin
  Result := DefaultInterface.LoadIcon(fileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TIconProperties.Create(AServer: TIcon);
begin
  inherited Create;
  FServer := AServer;
end;

function TIconProperties.GetDefaultInterface: _Icon;
begin
  Result := FServer.DefaultInterface;
end;

function TIconProperties.Get_Index(out pVal: Integer): HResult;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Index;
end;

function TIconProperties.Set_Index(pVal: Integer): HResult;
  { Warning: The property Index has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Index := pVal;
  Result := S_OK;
end;

function TIconProperties.Set_HBITMAP(Param1: LongWord): HResult;
begin
    Result := DefaultInterface.Set_HBITMAP;
end;

function TIconProperties.Get_maskColor(out pVal: LongWord): HResult;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.maskColor;
end;

function TIconProperties.Set_maskColor(pVal: LongWord): HResult;
  { Warning: The property maskColor has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.maskColor := pVal;
  Result := S_OK;
end;

function TIconProperties.Set_HICON(Param1: LongWord): HResult;
begin
    Result := DefaultInterface.Set_HICON;
end;

{$ENDIF}

class function CoApplication.Create: _HotDocs6Application3;
begin
  Result := CreateComObject(CLASS_HotDocs6Application) as _HotDocs6Application3;
end;

class function CoApplication.CreateRemote(const MachineName: string): _HotDocs6Application3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_HotDocs6Application) as _HotDocs6Application3;
end;

procedure THotDocs6Application.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8A202ADA-F14D-4F1B-86F9-8B18EE76E0C1}';
    IntfIID:   '{991DE9DD-D19A-4EA0-9A07-D56F0CA44FEB}';
    EventIID:  '{287BF4B6-F8A1-4D96-B9A6-D1F6A56AB86C}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure THotDocs6Application.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _HotDocs6Application3;
  end;
end;

procedure THotDocs6Application.ConnectTo(svrIntf: _HotDocs6Application3);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure THotDocs6Application.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function THotDocs6Application.GetDefaultInterface: _HotDocs6Application3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor THotDocs6Application.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := THotDocs6ApplicationProperties.Create(Self);
{$ENDIF}
end;

destructor THotDocs6Application.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function THotDocs6Application.GetServerProperties: THotDocs6ApplicationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure THotDocs6Application.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
   1: if Assigned(FOnErrorEvent) then
            FOnErrorEvent(Self, Params[2] {out WordBool}, Params[1] {const WideString}, Params[0] {Integer});
   2: if Assigned(FOnAssemblyStartEvent) then
            FOnAssemblyStartEvent(Self, Params[0] {const _Assembly});
   3: if Assigned(FOnAssemblyCompleteEvent) then
            FOnAssemblyCompleteEvent(Self, Params[4] {Integer}, Params[3] {const _AnswerCollection}, Params[2] {const WideString}, Params[1] {const WideString}, Params[0] {const WideString});
   4: if Assigned(FOnUserMenuItemClickedEvent) then
            FOnUserMenuItemClickedEvent(Self, Params[0] {Integer});
   5: if Assigned(FOnUserInterfaceEvent) then
            FOnUserInterfaceEvent(Self, Params[1] {out WordBool}, Params[0] {HDLUI});
   6: if Assigned(FOnTemplateSelectedEvent) then
            FOnTemplateSelectedEvent(Self, Params[2] {out WordBool}, Params[1] {const WideString}, Params[0] {const WideString});
   7: if Assigned(FOnLibraryInterfaceCloseEvent) then
            FOnLibraryInterfaceCloseEvent(Self);
  end; {case DispID}
end;

function THotDocs6Application.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure THotDocs6Application.Set_Visible(pVal: WordBool);
begin
  Exit;
end;

function THotDocs6Application.Get__Templates: _Templates;
begin
    Result := DefaultInterface._Templates;
end;

function THotDocs6Application.Get_WordProcTplDir(formProc: HDFormProcessor): HResult;
begin
    Result := DefaultInterface.WordProcTplDir[formProc];
end;

function THotDocs6Application.Get_Assemblies: AssemblyCollection;
begin
    Result := DefaultInterface.Assemblies;
end;

function THotDocs6Application.Get_AssemblyQueueVisible: WordBool;
begin
    Result := DefaultInterface.AssemblyQueueVisible;
end;

procedure THotDocs6Application.Set_AssemblyQueueVisible(pVal: WordBool);
begin
  Exit;
end;

procedure THotDocs6Application.Set_CommandLine(const Param1: WideString);
  { Warning: The property CommandLine has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CommandLine := Param1;
end;

function THotDocs6Application.Get_ActiveAssembly: _Assembly;
begin
    Result := DefaultInterface.ActiveAssembly;
end;

function THotDocs6Application.Get_CurrentLibraryPath: WideString;
begin
    Result := DefaultInterface.CurrentLibraryPath;
end;

function THotDocs6Application.Get_Hwnd: Integer;
begin
    Result := DefaultInterface.Hwnd;
end;

function THotDocs6Application.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function THotDocs6Application.Get_Flavor: HDPRODUCTFLAVOR;
begin
    Result := DefaultInterface.Flavor;
end;

procedure THotDocs6Application.SelectTemplate(const libPath: WideString; bOpen: WordBool; 
                                      out tplPath: WideString; out tplTitle: WideString; 
                                      out tplDesc: WideString);
begin
  DefaultInterface.SelectTemplate(libPath, bOpen, tplPath, tplTitle, tplDesc);
end;

procedure THotDocs6Application.SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                               out tplCount: Integer; out tplPaths: OleVariant);
var
   tplTitles, tplDescs: olevariant;
begin
  DefaultInterface.SelectMultipleTemplates(libPath, bOpen, tplCount, tplPaths, tplTitles, tplDescs);
end;

procedure THotDocs6Application.SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                               out tplCount: Integer; out tplPaths: OleVariant;
                                               out tplTitles: OleVariant);
var
   tplDescs: olevariant;
begin
  DefaultInterface.SelectMultipleTemplates(libPath, bOpen, tplCount, tplPaths, tplTitles, tplDescs);
end;

procedure THotDocs6Application.SelectMultipleTemplates(const libPath: WideString; bOpen: WordBool;
                                               out tplCount: Integer; out tplPaths: OleVariant;
                                               out tplTitles: OleVariant; out tplDescs: OleVariant);
begin
  DefaultInterface.SelectMultipleTemplates(libPath, bOpen, tplCount, tplPaths, tplTitles, tplDescs);
end;

procedure THotDocs6Application.SetUserInterfaceItem(element: HDLUI; enabled: WordBool);
begin
  DefaultInterface.SetUserInterfaceItem(element, enabled);
end;

procedure THotDocs6Application.DeleteUserMenuItem(uiHandle: Integer);
begin
  DefaultInterface.DeleteUserMenuItem(uiHandle);
end;

function THotDocs6Application.AddUserMenuItem(const menuTxt: WideString; menu: HDLIMENU): Integer;
begin
  Result := DefaultInterface.AddUserMenuItem(menuTxt, menu);
end;

procedure THotDocs6Application.OpenLibrary(const libPath: WideString; addToMRU: WordBool);
begin
  DefaultInterface.OpenLibrary(libPath, addToMRU);
end;

procedure THotDocs6Application.PrintDocument(const docPath: WideString);
begin
  DefaultInterface.PrintDocument(docPath);
end;

procedure THotDocs6Application.SendToWordProcessor(const docFileName: WideString);
begin
  DefaultInterface.SendToWordProcessor(docFileName);
end;

procedure THotDocs6Application._INTERNAL(var p1: WideString; var p2: WideString; var p3: WideString; 
                                 var p4: Integer);
begin
  DefaultInterface._INTERNAL(p1, p2, p3, p4);
end;

procedure THotDocs6Application.ShowHotDocsHelp(topicID: Integer);
begin
  DefaultInterface.ShowHotDocsHelp(topicID);
end;

procedure THotDocs6Application._FileEncryption(const sourceFileName: WideString; 
                                       const destFileName: WideString; const password: WideString; 
                                       decrypt: WordBool);
begin
  DefaultInterface._FileEncryption(sourceFileName, destFileName, password, decrypt);
end;

procedure THotDocs6Application.SaveDocAsPDF(const docFileName: WideString; 
                                    const destinationFileName: WideString);
begin
  DefaultInterface.SaveDocAsPDF(docFileName, destinationFileName);
end;

procedure THotDocs6Application.PublishOnlineFiles(const TemplatePath: WideString; 
                                          const destinationDir: WideString);
begin
  DefaultInterface.PublishOnlineFiles(TemplatePath, destinationDir);
end;

function THotDocs6Application.AddUserMenuItem2(const menuTxt: WideString; menu: HDLIMENU; 
                                       position: Integer; Icon: OleVariant): Integer;
begin
  Result := DefaultInterface.AddUserMenuItem2(menuTxt, menu, position, Icon);
end;

procedure THotDocs6Application.RetrieveUrlFile(const url: WideString; var fileName: WideString);
begin
  DefaultInterface.RetrieveUrlFile(url, fileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor THotDocs6ApplicationProperties.Create(AServer: THotDocs6Application);
begin
  inherited Create;
  FServer := AServer;
end;

function THotDocs6ApplicationProperties.GetDefaultInterface: _HotDocs6Application3;
begin
  Result := FServer.DefaultInterface;
end;

function THotDocs6ApplicationProperties.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure THotDocs6ApplicationProperties.Set_Visible(pVal: WordBool);
begin
  Exit;
end;

function THotDocs6ApplicationProperties.Get__Templates: _Templates;
begin
    Result := DefaultInterface._Templates;
end;

function THotDocs6ApplicationProperties.Get_WordProcTplDir(formProc: HDFormProcessor): HResult;
begin
    Result := DefaultInterface.WordProcTplDir[formProc];
end;

function THotDocs6ApplicationProperties.Get_Assemblies: AssemblyCollection;
begin
    Result := DefaultInterface.Assemblies;
end;

function THotDocs6ApplicationProperties.Get_AssemblyQueueVisible: WordBool;
begin
    Result := DefaultInterface.AssemblyQueueVisible;
end;

procedure THotDocs6ApplicationProperties.Set_AssemblyQueueVisible(pVal: WordBool);
begin
  Exit;
end;

procedure THotDocs6ApplicationProperties.Set_CommandLine(const Param1: WideString);
  { Warning: The property CommandLine has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CommandLine := Param1;
end;

function THotDocs6ApplicationProperties.Get_ActiveAssembly: _Assembly;
begin
    Result := DefaultInterface.ActiveAssembly;
end;

function THotDocs6ApplicationProperties.Get_CurrentLibraryPath: WideString;
begin
    Result := DefaultInterface.CurrentLibraryPath;
end;

function THotDocs6ApplicationProperties.Get_Hwnd: Integer;
begin
    Result := DefaultInterface.Hwnd;
end;

function THotDocs6ApplicationProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function THotDocs6ApplicationProperties.Get_Flavor: HDPRODUCTFLAVOR;
begin
    Result := DefaultInterface.Flavor;
end;

{$ENDIF}

class function CoAnswerCollection.Create: _AnswerCollection;
begin
  Result := CreateComObject(CLASS_AnswerCollection) as _AnswerCollection;
end;

class function CoAnswerCollection.CreateRemote(const MachineName: string): _AnswerCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AnswerCollection) as _AnswerCollection;
end;

procedure TAnswerCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F6B3FF63-D730-4DCE-802D-0FAED25E7B72}';
    IntfIID:   '{3E419C82-EED2-4FD4-BD37-C4BC9A9FEFB1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAnswerCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _AnswerCollection;
  end;
end;

procedure TAnswerCollection.ConnectTo(svrIntf: _AnswerCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAnswerCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAnswerCollection.GetDefaultInterface: _AnswerCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TAnswerCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAnswerCollectionProperties.Create(Self);
{$ENDIF}
end;

destructor TAnswerCollection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAnswerCollection.GetServerProperties: TAnswerCollectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAnswerCollection.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TAnswerCollection.Get_fileName: WideString;
begin
    Result := DefaultInterface.fileName;
end;

function TAnswerCollection.Get_FileFormat: HDAFFORMAT;
begin
    Result := DefaultInterface.FileFormat;
end;

procedure TAnswerCollection.Set_FileFormat(pVal: HDAFFORMAT);
begin
  Exit;
end;

function TAnswerCollection.Get_DefaultAnswerFile: WideString;
begin
    Result := DefaultInterface.DefaultAnswerFile;
end;

procedure TAnswerCollection.Set_DefaultAnswerFile(const pVal: WideString);
  { Warning: The property DefaultAnswerFile has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DefaultAnswerFile := pVal;
end;

function TAnswerCollection.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

procedure TAnswerCollection.Close;
begin
  DefaultInterface.Close;
end;

procedure TAnswerCollection.UploadAnswerCollection(const url: WideString; 
                                                   format: HDANSWERUPLOADFORMAT);
begin
  DefaultInterface.UploadAnswerCollection(url, format);
end;

procedure TAnswerCollection.Add(const newAnswer: _Answer);
begin
  DefaultInterface.Add(newAnswer);
end;

function TAnswerCollection.Item(Index: OleVariant; var varType: HDVARTYPE): _Answer;
begin
  Result := DefaultInterface.Item(Index, varType);
end;

procedure TAnswerCollection.Overlay(const overlayFileName: WideString);
begin
  DefaultInterface.Overlay(overlayFileName);
end;

procedure TAnswerCollection.Create1(const answerFileName: WideString);
begin
  DefaultInterface.Create(answerFileName);
end;

procedure TAnswerCollection.Save(const answerFileName: WideString);
begin
  DefaultInterface.Save(answerFileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAnswerCollectionProperties.Create(AServer: TAnswerCollection);
begin
  inherited Create;
  FServer := AServer;
end;

function TAnswerCollectionProperties.GetDefaultInterface: _AnswerCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TAnswerCollectionProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TAnswerCollectionProperties.Get_fileName: WideString;
begin
    Result := DefaultInterface.fileName;
end;

function TAnswerCollectionProperties.Get_FileFormat: HDAFFORMAT;
begin
    Result := DefaultInterface.FileFormat;
end;

procedure TAnswerCollectionProperties.Set_FileFormat(pVal: HDAFFORMAT);
begin
  Exit;
end;

function TAnswerCollectionProperties.Get_DefaultAnswerFile: WideString;
begin
    Result := DefaultInterface.DefaultAnswerFile;
end;

procedure TAnswerCollectionProperties.Set_DefaultAnswerFile(const pVal: WideString);
  { Warning: The property DefaultAnswerFile has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DefaultAnswerFile := pVal;
end;

function TAnswerCollectionProperties.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

{$ENDIF}

class function CoComponentCollection.Create: _ComponentCollection3;
begin
  Result := CreateComObject(CLASS_ComponentCollection) as _ComponentCollection3;
end;

class function CoComponentCollection.CreateRemote(const MachineName: string): _ComponentCollection3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComponentCollection) as _ComponentCollection3;
end;

procedure TComponentCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2C2098F9-D471-4806-9759-504F65C4171B}';
    IntfIID:   '{2B539DA9-2727-4AF0-A166-009CA0F48A5A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TComponentCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _ComponentCollection3;
  end;
end;

procedure TComponentCollection.ConnectTo(svrIntf: _ComponentCollection3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TComponentCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TComponentCollection.GetDefaultInterface: _ComponentCollection3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TComponentCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TComponentCollectionProperties.Create(Self);
{$ENDIF}
end;

destructor TComponentCollection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TComponentCollection.GetServerProperties: TComponentCollectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TComponentCollection.Get_fileName: WideString;
begin
    Result := DefaultInterface.fileName;
end;

function TComponentCollection.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TComponentCollection.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

function TComponentCollection.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

procedure TComponentCollection.Open(const componentFileName: WideString);
begin
  DefaultInterface.Open(componentFileName);
end;

function TComponentCollection.Item(Index: OleVariant; var varType: HDVARTYPE): _Component;
begin
  Result := DefaultInterface.Item(Index, varType);
end;

procedure TComponentCollection.CreateVariable(const variableName: WideString; varType: HDVARTYPE; 
                                              const Prompt: WideString);
begin
  DefaultInterface.CreateVariable(variableName, varType, Prompt);
end;

procedure TComponentCollection.Create1(const filePath: WideString);
begin
  DefaultInterface.Create(filePath);
end;

function TComponentCollection._GetPreferenceString(const prefName: WideString): WideString;
begin
  Result := DefaultInterface._GetPreferenceString(prefName);
end;

procedure TComponentCollection._SetPreferenceString(const prefName: WideString; 
                                                    const newVal: WideString);
begin
  DefaultInterface._SetPreferenceString(prefName, newVal);
end;

function TComponentCollection._GetPreferenceBoolean(const prefName: WideString): WordBool;
begin
  Result := DefaultInterface._GetPreferenceBoolean(prefName);
end;

procedure TComponentCollection._SetPreferenceBoolean(const prefName: WideString; newVal: WordBool);
begin
  DefaultInterface._SetPreferenceBoolean(prefName, newVal);
end;

function TComponentCollection._GetPreferenceNumber(const prefName: WideString): Integer;
begin
  Result := DefaultInterface._GetPreferenceNumber(prefName);
end;

procedure TComponentCollection._SetPreferenceNumber(const prefName: WideString; newVal: Integer);
begin
  DefaultInterface._SetPreferenceNumber(prefName, newVal);
end;

procedure TComponentCollection.OpenBase(const fileName: WideString);
begin
  DefaultInterface.OpenBase(fileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TComponentCollectionProperties.Create(AServer: TComponentCollection);
begin
  inherited Create;
  FServer := AServer;
end;

function TComponentCollectionProperties.GetDefaultInterface: _ComponentCollection3;
begin
  Result := FServer.DefaultInterface;
end;

function TComponentCollectionProperties.Get_fileName: WideString;
begin
    Result := DefaultInterface.fileName;
end;

function TComponentCollectionProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TComponentCollectionProperties.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

function TComponentCollectionProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$ENDIF}

class function CoComponent.Create: _Component;
begin
  Result := CreateComObject(CLASS_Component) as _Component;
end;

class function CoComponent.CreateRemote(const MachineName: string): _Component;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Component) as _Component;
end;

class function CoAnswer.Create: _Answer;
begin
  Result := CreateComObject(CLASS_Answer) as _Answer;
end;

class function CoAnswer.CreateRemote(const MachineName: string): _Answer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Answer) as _Answer;
end;

procedure TAnswer.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4D509C2B-0223-47EB-95A5-CC8E98055F67}';
    IntfIID:   '{DF34C5CA-1760-4262-9B56-24E3EDE60994}';
    EventIID:  '{E485B97D-1BBF-4174-A97C-4B03D5EB33C2}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAnswer.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _Answer;
  end;
end;

procedure TAnswer.ConnectTo(svrIntf: _Answer);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TAnswer.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TAnswer.GetDefaultInterface: _Answer;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TAnswer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAnswerProperties.Create(Self);
{$ENDIF}
end;

destructor TAnswer.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAnswer.GetServerProperties: TAnswerProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TAnswer.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
   1: if Assigned(FOnValueFoundEvent) then
            FOnValueFoundEvent(Self, Params[4] {Integer}, Params[3] {Integer}, Params[2] {Integer}, Params[1] {Integer}, Params[0] {OleVariant});
  end; {case DispID}
end;

function TAnswer.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TAnswer.Get_Type_: HDVARTYPE;
begin
    Result := DefaultInterface.Type_;
end;

function TAnswer.Get_Value: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Value;
end;

procedure TAnswer.Set_Value(pVal: OleVariant);
begin
  Exit;
end;

function TAnswer.Get_Unanswered: WordBool;
begin
    Result := DefaultInterface.Unanswered;
end;

procedure TAnswer.Set_Unanswered(pVal: WordBool);
begin
  Exit;
end;

function TAnswer.Get_RepeatCount: Integer;
begin
    Result := DefaultInterface.RepeatCount;
end;

function TAnswer.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

procedure TAnswer.SetRepeatIndex(repeat1: Integer; repeat2: Integer; repeat3: Integer; 
                                 repeat4: Integer);
begin
  DefaultInterface.SetRepeatIndex(repeat1, repeat2, repeat3, repeat4);
end;

procedure TAnswer.GetRepeatIndex(out repeat1: Integer; out repeat2: Integer; out repeat3: Integer; 
                                 out repeat4: Integer);
begin
  DefaultInterface.GetRepeatIndex(repeat1, repeat2, repeat3, repeat4);
end;

procedure TAnswer.AddMultipleChoiceValue(const newValue: WideString);
begin
  DefaultInterface.AddMultipleChoiceValue(newValue);
end;

function TAnswer.IsMultipleChoiceValueSet(const chkValue: WideString): WordBool;
begin
  Result := DefaultInterface.IsMultipleChoiceValueSet(chkValue);
end;

procedure TAnswer.Create1(const ansName: WideString; valType: HDVARTYPE);
begin
  DefaultInterface.Create(ansName, valType);
end;

procedure TAnswer.ClearAskedFlag;
begin
  DefaultInterface.ClearAskedFlag;
end;

function TAnswer.GetRepeatCount(repeat1: Integer; repeat2: Integer; repeat3: Integer; 
                                repeat4: Integer): Integer;
begin
  Result := DefaultInterface.GetRepeatCount(repeat1, repeat2, repeat3, repeat4);
end;

procedure TAnswer.IterateValues;
begin
  DefaultInterface.IterateValues;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAnswerProperties.Create(AServer: TAnswer);
begin
  inherited Create;
  FServer := AServer;
end;

function TAnswerProperties.GetDefaultInterface: _Answer;
begin
  Result := FServer.DefaultInterface;
end;

function TAnswerProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TAnswerProperties.Get_Type_: HDVARTYPE;
begin
    Result := DefaultInterface.Type_;
end;

function TAnswerProperties.Get_Value: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Value;
end;

procedure TAnswerProperties.Set_Value(pVal: OleVariant);
begin
  Exit;
end;

function TAnswerProperties.Get_Unanswered: WordBool;
begin
    Result := DefaultInterface.Unanswered;
end;

procedure TAnswerProperties.Set_Unanswered(pVal: WordBool);
begin
  Exit;
end;

function TAnswerProperties.Get_RepeatCount: Integer;
begin
    Result := DefaultInterface.RepeatCount;
end;

function TAnswerProperties.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

{$ENDIF}

class function CoAssemblyCollectionClass.Create: AssemblyCollection;
begin
  Result := CreateComObject(CLASS_AssemblyCollectionClass) as AssemblyCollection;
end;

class function CoAssemblyCollectionClass.CreateRemote(const MachineName: string): AssemblyCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AssemblyCollectionClass) as AssemblyCollection;
end;

class function CoAssembly.Create: _Assembly;
begin
  Result := CreateComObject(CLASS_Assembly) as _Assembly;
end;

class function CoAssembly.CreateRemote(const MachineName: string): _Assembly;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Assembly) as _Assembly;
end;

procedure TAssembly.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{503AB2B4-5D01-4EF0-9B2B-36E1B9C738A9}';
    IntfIID:   '{A99AB319-0378-4033-9534-DF296B6B63C6}';
    EventIID:  '{58172076-C690-434D-942B-F3EA55693C98}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAssembly.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _Assembly;
  end;
end;

procedure TAssembly.ConnectTo(svrIntf: _Assembly);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TAssembly.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TAssembly.GetDefaultInterface: _Assembly;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TAssembly.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAssemblyProperties.Create(Self);
{$ENDIF}
end;

destructor TAssembly.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAssembly.GetServerProperties: TAssemblyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TAssembly.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
   1: if Assigned(FOnErrorEvent) then
            FOnErrorEvent(Self, Params[2] {out WordBool}, Params[1] {const WideString}, Params[0] {Integer});
   2: if Assigned(FOnCloseAssemblyInterfaceEvent) then
            FOnCloseAssemblyInterfaceEvent(Self);
   3: if Assigned(FOnAssemblyCompleteEvent) then
            FOnAssemblyCompleteEvent(Self);
   4: if Assigned(FOnNeedAnswerEvent) then
            FOnNeedAnswerEvent(Self, Params[1] {const _Answer}, Params[0] {Integer});
   5: if Assigned(FOnPreSaveAnswersEvent) then
            FOnPreSaveAnswersEvent(Self, Params[1] {out WordBool}, Params[0] {const _AnswerCollection});
   6: if Assigned(FOnPostSaveAnswersEvent) then
            FOnPostSaveAnswersEvent(Self, Params[0] {const _AnswerCollection});
   7: if Assigned(FOnPreSaveDocumentEvent) then
            FOnPreSaveDocumentEvent(Self, Params[3] {out WordBool}, Params[2] {out WordBool}, Params[1] {HDOUTPUTTYPE}, Params[0] {var WideString});
   8: if Assigned(FOnPostSaveDocumentEvent) then
            FOnPostSaveDocumentEvent(Self, Params[1] {const WideString}, Params[0] {HDOUTPUTTYPE});
   9: if Assigned(FOnUserMenuItemClickedEvent) then
            FOnUserMenuItemClickedEvent(Self, Params[0] {Integer});
   10: if Assigned(FOnUserInterfaceEvent) then
            FOnUserInterfaceEvent(Self, Params[1] {out WordBool}, Params[0] {HDAUI});
   11: if Assigned(FOnAssemblyStartEvent) then
            FOnAssemblyStartEvent(Self);
   12: if Assigned(FOnFileSelectEvent) then
            FOnFileSelectEvent(Self, Params[2] {out WordBool}, Params[1] {var WideString}, Params[0] {HDAUI});
  end; {case DispID}
end;

function TAssembly.Get_TemplatePath: WideString;
begin
    Result := DefaultInterface.TemplatePath;
end;

procedure TAssembly.Set_TemplatePath(const pVal: WideString);
  { Warning: The property TemplatePath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TemplatePath := pVal;
end;

function TAssembly.Get_AnswerCollection: _AnswerCollection;
begin
    Result := DefaultInterface.AnswerCollection;
end;

procedure TAssembly.Set_AnswerCollection(const pVal: _AnswerCollection);
begin
  Exit;
end;

function TAssembly.Get_DocumentPath: WideString;
begin
    Result := DefaultInterface.DocumentPath;
end;

procedure TAssembly.Set_DocumentPath(const pVal: WideString);
  { Warning: The property DocumentPath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DocumentPath := pVal;
end;

function TAssembly.Get_Map: _VarMap;
begin
    Result := DefaultInterface.Map;
end;

procedure TAssembly.Set_Map(const pVal: _VarMap);
begin
  Exit;
end;

function TAssembly.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure TAssembly.Set_Visible(pVal: WordBool);
begin
  Exit;
end;

function TAssembly.Get_assemblyHandle: Integer;
begin
    Result := DefaultInterface.assemblyHandle;
end;

function TAssembly.Get_ShowAnswerFileDialog: WordBool;
begin
    Result := DefaultInterface.ShowAnswerFileDialog;
end;

procedure TAssembly.Set_ShowAnswerFileDialog(pVal: WordBool);
begin
  Exit;
end;

function TAssembly.Get_TemplateTitle: WideString;
begin
    Result := DefaultInterface.TemplateTitle;
end;

procedure TAssembly.Set_TemplateTitle(const pVal: WideString);
  { Warning: The property TemplateTitle has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TemplateTitle := pVal;
end;

function TAssembly.Get_TemplateDesc: WideString;
begin
    Result := DefaultInterface.TemplateDesc;
end;

procedure TAssembly.Set_TemplateDesc(const pVal: WideString);
  { Warning: The property TemplateDesc has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TemplateDesc := pVal;
end;

function TAssembly.Get_KeepInQueue: WordBool;
begin
    Result := DefaultInterface.KeepInQueue;
end;

procedure TAssembly.Set_KeepInQueue(pVal: WordBool);
begin
  Exit;
end;

function TAssembly.Get_Status: HDASSEMBLYSTATUS;
begin
    Result := DefaultInterface.Status;
end;

function TAssembly.Get_PrintWhenComplete: WordBool;
begin
    Result := DefaultInterface.PrintWhenComplete;
end;

procedure TAssembly.Set_PrintWhenComplete(pVal: WordBool);
begin
  Exit;
end;

procedure TAssembly.Set_CommandLine(const Param1: WideString);
  { Warning: The property CommandLine has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CommandLine := Param1;
end;

function TAssembly.Get_AnswerSummaryPath: WideString;
begin
    Result := DefaultInterface.AnswerSummaryPath;
end;

procedure TAssembly.Set_AnswerSummaryPath(const pVal: WideString);
  { Warning: The property AnswerSummaryPath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AnswerSummaryPath := pVal;
end;

function TAssembly.Get_QuestionSummaryPath: WideString;
begin
    Result := DefaultInterface.QuestionSummaryPath;
end;

procedure TAssembly.Set_QuestionSummaryPath(const pVal: WideString);
  { Warning: The property QuestionSummaryPath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.QuestionSummaryPath := pVal;
end;

function TAssembly.Get_SuppressUnansweredWarning: WordBool;
begin
    Result := DefaultInterface.SuppressUnansweredWarning;
end;

procedure TAssembly.Set_SuppressUnansweredWarning(pVal: WordBool);
begin
  Exit;
end;

function TAssembly.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

function TAssembly.Get_Hwnd: Integer;
begin
    Result := DefaultInterface.Hwnd;
end;

procedure TAssembly.SetUserInterfaceItem(element: HDAUI; enabled: WordBool);
begin
  DefaultInterface.SetUserInterfaceItem(element, enabled);
end;

procedure TAssembly.DeleteUserMenuItem(uiHandle: Integer);
begin
  DefaultInterface.DeleteUserMenuItem(uiHandle);
end;

procedure TAssembly.AddUserMenuItem(const menuTxt: WideString; menuItem: HDAIMENU; 
                                    out uiHandle: Integer);
begin
  DefaultInterface.AddUserMenuItem(menuTxt, menuItem, uiHandle);
end;

procedure TAssembly.UseAnswerFile(const answerFilePath: WideString);
begin
  DefaultInterface.UseAnswerFile(answerFilePath);
end;

procedure TAssembly.SendToWordProcessor;
begin
  DefaultInterface.SendToWordProcessor;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAssemblyProperties.Create(AServer: TAssembly);
begin
  inherited Create;
  FServer := AServer;
end;

function TAssemblyProperties.GetDefaultInterface: _Assembly;
begin
  Result := FServer.DefaultInterface;
end;

function TAssemblyProperties.Get_TemplatePath: WideString;
begin
    Result := DefaultInterface.TemplatePath;
end;

procedure TAssemblyProperties.Set_TemplatePath(const pVal: WideString);
  { Warning: The property TemplatePath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TemplatePath := pVal;
end;

function TAssemblyProperties.Get_AnswerCollection: _AnswerCollection;
begin
    Result := DefaultInterface.AnswerCollection;
end;

procedure TAssemblyProperties.Set_AnswerCollection(const pVal: _AnswerCollection);
begin
  Exit;
end;

function TAssemblyProperties.Get_DocumentPath: WideString;
begin
    Result := DefaultInterface.DocumentPath;
end;

procedure TAssemblyProperties.Set_DocumentPath(const pVal: WideString);
  { Warning: The property DocumentPath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DocumentPath := pVal;
end;

function TAssemblyProperties.Get_Map: _VarMap;
begin
    Result := DefaultInterface.Map;
end;

procedure TAssemblyProperties.Set_Map(const pVal: _VarMap);
begin
  Exit;
end;

function TAssemblyProperties.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure TAssemblyProperties.Set_Visible(pVal: WordBool);
begin
  Exit;
end;

function TAssemblyProperties.Get_assemblyHandle: Integer;
begin
    Result := DefaultInterface.assemblyHandle;
end;

function TAssemblyProperties.Get_ShowAnswerFileDialog: WordBool;
begin
    Result := DefaultInterface.ShowAnswerFileDialog;
end;

procedure TAssemblyProperties.Set_ShowAnswerFileDialog(pVal: WordBool);
begin
  Exit;
end;

function TAssemblyProperties.Get_TemplateTitle: WideString;
begin
    Result := DefaultInterface.TemplateTitle;
end;

procedure TAssemblyProperties.Set_TemplateTitle(const pVal: WideString);
  { Warning: The property TemplateTitle has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TemplateTitle := pVal;
end;

function TAssemblyProperties.Get_TemplateDesc: WideString;
begin
    Result := DefaultInterface.TemplateDesc;
end;

procedure TAssemblyProperties.Set_TemplateDesc(const pVal: WideString);
  { Warning: The property TemplateDesc has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TemplateDesc := pVal;
end;

function TAssemblyProperties.Get_KeepInQueue: WordBool;
begin
    Result := DefaultInterface.KeepInQueue;
end;

procedure TAssemblyProperties.Set_KeepInQueue(pVal: WordBool);
begin
  Exit;
end;

function TAssemblyProperties.Get_Status: HDASSEMBLYSTATUS;
begin
    Result := DefaultInterface.Status;
end;

function TAssemblyProperties.Get_PrintWhenComplete: WordBool;
begin
    Result := DefaultInterface.PrintWhenComplete;
end;

procedure TAssemblyProperties.Set_PrintWhenComplete(pVal: WordBool);
begin
  Exit;
end;

procedure TAssemblyProperties.Set_CommandLine(const Param1: WideString);
  { Warning: The property CommandLine has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CommandLine := Param1;
end;

function TAssemblyProperties.Get_AnswerSummaryPath: WideString;
begin
    Result := DefaultInterface.AnswerSummaryPath;
end;

procedure TAssemblyProperties.Set_AnswerSummaryPath(const pVal: WideString);
  { Warning: The property AnswerSummaryPath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AnswerSummaryPath := pVal;
end;

function TAssemblyProperties.Get_QuestionSummaryPath: WideString;
begin
    Result := DefaultInterface.QuestionSummaryPath;
end;

procedure TAssemblyProperties.Set_QuestionSummaryPath(const pVal: WideString);
  { Warning: The property QuestionSummaryPath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.QuestionSummaryPath := pVal;
end;

function TAssemblyProperties.Get_SuppressUnansweredWarning: WordBool;
begin
    Result := DefaultInterface.SuppressUnansweredWarning;
end;

procedure TAssemblyProperties.Set_SuppressUnansweredWarning(pVal: WordBool);
begin
  Exit;
end;

function TAssemblyProperties.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

function TAssemblyProperties.Get_Hwnd: Integer;
begin
    Result := DefaultInterface.Hwnd;
end;

{$ENDIF}

class function CoVarMap.Create: _VarMap;
begin
  Result := CreateComObject(CLASS_VarMap) as _VarMap;
end;

class function CoVarMap.CreateRemote(const MachineName: string): _VarMap;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VarMap) as _VarMap;
end;

procedure TVarMap.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4E2481F7-DFB8-4E85-B51F-B12B1D82A377}';
    IntfIID:   '{28E330B9-BF78-4849-990E-1B403383E4D4}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TVarMap.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _VarMap;
  end;
end;

procedure TVarMap.ConnectTo(svrIntf: _VarMap);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TVarMap.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TVarMap.GetDefaultInterface: _VarMap;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TVarMap.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TVarMapProperties.Create(Self);
{$ENDIF}
end;

destructor TVarMap.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TVarMap.GetServerProperties: TVarMapProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TVarMap.Get_MappingCount: Integer;
begin
    Result := DefaultInterface.MappingCount;
end;

function TVarMap.Get_HDVariablesCount: Integer;
begin
    Result := DefaultInterface.HDVariablesCount;
end;

function TVarMap.Get_SourceNamesCount: Integer;
begin
    Result := DefaultInterface.SourceNamesCount;
end;

function TVarMap.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

procedure TVarMap.MappingItem(Index: OleVariant; out varName: WideString; out srcName: WideString);
begin
  DefaultInterface.MappingItem(Index, varName, srcName);
end;

procedure TVarMap.MappingAdd(const varName: WideString; const srcName: WideString);
begin
  DefaultInterface.MappingAdd(varName, srcName);
end;

procedure TVarMap.MappingRemove(Index: Integer);
begin
  DefaultInterface.MappingRemove(Index);
end;

procedure TVarMap.OpenMapFile(const mapFileName: WideString);
begin
  DefaultInterface.OpenMapFile(mapFileName);
end;

procedure TVarMap.SaveMapFile(const mapFileName: WideString);
begin
  DefaultInterface.SaveMapFile(mapFileName);
end;

procedure TVarMap.OpenComponentFile(const componentFileName: WideString);
begin
  DefaultInterface.OpenComponentFile(componentFileName);
end;

procedure TVarMap.HDVariablesItem(Index: Integer; out varName: WideString; var varType: HDVARTYPE);
begin
  DefaultInterface.HDVariablesItem(Index, varName, varType);
end;

procedure TVarMap.SourceNamesItem(Index: Integer; out sourceName: WideString; out varType: HDVARTYPE);
begin
  DefaultInterface.SourceNamesItem(Index, sourceName, varType);
end;

procedure TVarMap.SourceNamesAdd(const sourceName: WideString; varType: HDVARTYPE);
begin
  DefaultInterface.SourceNamesAdd(sourceName, varType);
end;

procedure TVarMap.SourceNamesRemove(Index: Integer);
begin
  DefaultInterface.SourceNamesRemove(Index);
end;

function TVarMap.ShowUserInterface(showImport: WordBool; showLoad: WordBool; windowHandle: Integer; 
                                   const fromString: WideString; comboBox: WordBool): WordBool;
begin
  Result := DefaultInterface.ShowUserInterface(showImport, showLoad, windowHandle, fromString, 
                                               comboBox);
end;

procedure TVarMap.HDVariablesAdd(const varName: WideString; varType: HDVARTYPE);
begin
  DefaultInterface.HDVariablesAdd(varName, varType);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TVarMapProperties.Create(AServer: TVarMap);
begin
  inherited Create;
  FServer := AServer;
end;

function TVarMapProperties.GetDefaultInterface: _VarMap;
begin
  Result := FServer.DefaultInterface;
end;

function TVarMapProperties.Get_MappingCount: Integer;
begin
    Result := DefaultInterface.MappingCount;
end;

function TVarMapProperties.Get_HDVariablesCount: Integer;
begin
    Result := DefaultInterface.HDVariablesCount;
end;

function TVarMapProperties.Get_SourceNamesCount: Integer;
begin
    Result := DefaultInterface.SourceNamesCount;
end;

function TVarMapProperties.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

{$ENDIF}

class function CoTemplate.Create: _Template2;
begin
  Result := CreateComObject(CLASS_Template) as _Template2;
end;

class function CoTemplate.CreateRemote(const MachineName: string): _Template2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Template) as _Template2;
end;

class function CoTemplates.Create: _Templates2;
begin
  Result := CreateComObject(CLASS_Templates) as _Templates2;
end;

class function CoTemplates.CreateRemote(const MachineName: string): _Templates2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Templates) as _Templates2;
end;

class function CoLibrary_.Create: _Library2;
begin
  Result := CreateComObject(CLASS_Library_) as _Library2;
end;

class function CoLibrary_.CreateRemote(const MachineName: string): _Library2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Library_) as _Library2;
end;

procedure TLibrary_.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{06B3E595-39E0-4B08-B719-8BCE64A04D70}';
    IntfIID:   '{FC0AEADE-27D4-460B-8D64-A8CFBC2EFAEC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLibrary_.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _Library2;
  end;
end;

procedure TLibrary_.ConnectTo(svrIntf: _Library2);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLibrary_.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLibrary_.GetDefaultInterface: _Library2;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TLibrary_.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLibrary_Properties.Create(Self);
{$ENDIF}
end;

destructor TLibrary_.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLibrary_.GetServerProperties: TLibrary_Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLibrary_.Get_MainFolder: _LibraryEntity;
begin
    Result := DefaultInterface.MainFolder;
end;

function TLibrary_.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TLibrary_.Set_Title(const pVal: WideString);
  { Warning: The property Title has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Title := pVal;
end;

function TLibrary_.Get_Description: WideString;
begin
    Result := DefaultInterface.Description;
end;

procedure TLibrary_.Set_Description(const pVal: WideString);
  { Warning: The property Description has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Description := pVal;
end;

function TLibrary_.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

procedure TLibrary_.Set_Redraw(Param1: WordBool);
begin
  Exit;
end;

procedure TLibrary_.Open(const libFileName: WideString);
begin
  DefaultInterface.Open(libFileName);
end;

procedure TLibrary_.New(const libFileName: WideString);
begin
  DefaultInterface.New(libFileName);
end;

procedure TLibrary_.Close;
begin
  DefaultInterface.Close;
end;

procedure TLibrary_.Save;
begin
  DefaultInterface.Save;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLibrary_Properties.Create(AServer: TLibrary_);
begin
  inherited Create;
  FServer := AServer;
end;

function TLibrary_Properties.GetDefaultInterface: _Library2;
begin
  Result := FServer.DefaultInterface;
end;

function TLibrary_Properties.Get_MainFolder: _LibraryEntity;
begin
    Result := DefaultInterface.MainFolder;
end;

function TLibrary_Properties.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TLibrary_Properties.Set_Title(const pVal: WideString);
  { Warning: The property Title has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Title := pVal;
end;

function TLibrary_Properties.Get_Description: WideString;
begin
    Result := DefaultInterface.Description;
end;

procedure TLibrary_Properties.Set_Description(const pVal: WideString);
  { Warning: The property Description has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Description := pVal;
end;

function TLibrary_Properties.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

procedure TLibrary_Properties.Set_Redraw(Param1: WordBool);
begin
  Exit;
end;

{$ENDIF}

class function CoLibraryEntity.Create: _LibraryEntity;
begin
  Result := CreateComObject(CLASS_LibraryEntity) as _LibraryEntity;
end;

class function CoLibraryEntity.CreateRemote(const MachineName: string): _LibraryEntity;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LibraryEntity) as _LibraryEntity;
end;

procedure TLibraryEntity.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4D54CA35-5FB1-4E93-905C-84EE9B1FE69B}';
    IntfIID:   '{84CEB33D-E30D-4D7E-9ABA-C6D6D9EDCBF3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLibraryEntity.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _LibraryEntity;
  end;
end;

procedure TLibraryEntity.ConnectTo(svrIntf: _LibraryEntity);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLibraryEntity.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLibraryEntity.GetDefaultInterface: _LibraryEntity;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TLibraryEntity.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLibraryEntityProperties.Create(Self);
{$ENDIF}
end;

destructor TLibraryEntity.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLibraryEntity.GetServerProperties: TLibraryEntityProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLibraryEntity.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TLibraryEntity.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

function TLibraryEntity.Get_isFolder: WordBool;
begin
    Result := DefaultInterface.isFolder;
end;

function TLibraryEntity.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TLibraryEntity.Set_Title(const pVal: WideString);
  { Warning: The property Title has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Title := pVal;
end;

function TLibraryEntity.Get_Description: WideString;
begin
    Result := DefaultInterface.Description;
end;

procedure TLibraryEntity.Set_Description(const pVal: WideString);
  { Warning: The property Description has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Description := pVal;
end;

function TLibraryEntity.Get_TemplatePath: WideString;
begin
    Result := DefaultInterface.TemplatePath;
end;

procedure TLibraryEntity.Set_TemplatePath(const pVal: WideString);
  { Warning: The property TemplatePath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TemplatePath := pVal;
end;

function TLibraryEntity.Get_Parent: _LibraryEntity;
begin
    Result := DefaultInterface.Parent;
end;

function TLibraryEntity.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

function TLibraryEntity.Item(Index: Integer): _LibraryEntity;
begin
  Result := DefaultInterface.Item(Index);
end;

procedure TLibraryEntity.AddTemplate(const tplTitle: WideString; const filePath: WideString; 
                                     const Description: WideString; atIndex: Integer);
begin
  DefaultInterface.AddTemplate(tplTitle, filePath, Description, atIndex);
end;

function TLibraryEntity.AddFolder(const folderTitle: WideString; const Description: WideString; 
                                  atIndex: Integer): _LibraryEntity;
begin
  Result := DefaultInterface.AddFolder(folderTitle, Description, atIndex);
end;

procedure TLibraryEntity.Remove;
begin
  DefaultInterface.Remove;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLibraryEntityProperties.Create(AServer: TLibraryEntity);
begin
  inherited Create;
  FServer := AServer;
end;

function TLibraryEntityProperties.GetDefaultInterface: _LibraryEntity;
begin
  Result := FServer.DefaultInterface;
end;

function TLibraryEntityProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TLibraryEntityProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

function TLibraryEntityProperties.Get_isFolder: WordBool;
begin
    Result := DefaultInterface.isFolder;
end;

function TLibraryEntityProperties.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TLibraryEntityProperties.Set_Title(const pVal: WideString);
  { Warning: The property Title has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Title := pVal;
end;

function TLibraryEntityProperties.Get_Description: WideString;
begin
    Result := DefaultInterface.Description;
end;

procedure TLibraryEntityProperties.Set_Description(const pVal: WideString);
  { Warning: The property Description has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Description := pVal;
end;

function TLibraryEntityProperties.Get_TemplatePath: WideString;
begin
    Result := DefaultInterface.TemplatePath;
end;

procedure TLibraryEntityProperties.Set_TemplatePath(const pVal: WideString);
  { Warning: The property TemplatePath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant to set the property instead. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TemplatePath := pVal;
end;

function TLibraryEntityProperties.Get_Parent: _LibraryEntity;
begin
    Result := DefaultInterface.Parent;
end;

function TLibraryEntityProperties.Get_HotDocs6Application: _HotDocs6Application;
begin
    Result := DefaultInterface.Application;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TIcon, THotDocs6Application, TAnswerCollection, TComponentCollection, 
    TAnswer, TAssembly, TVarMap, TLibrary_, TLibraryEntity]);
end;

end.
