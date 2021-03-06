unit Tx4oleLib_TLB;

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
// File generated on 23/03/2015 11:14:26 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\Text Control GmbH\TX Text Control 21.0 ActiveX\Bin\tx4ole21.ocx (1)
// LIBID: {510E4200-2487-11E4-A584-0013D350667C}
// LCID: 0
// Helpfile: C:\Program Files (x86)\Text Control GmbH\TX Text Control 21.0 ActiveX\Bin\TX4OLE.CHM 
// HelpString: TX - Text Control
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.DBOleCtl, Vcl.Graphics, Vcl.OleCtrls, Vcl.OleServer, 
Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Tx4oleLibMajorVersion = 2;
  Tx4oleLibMinorVersion = 7;

  LIBID_Tx4oleLib: TGUID = '{510E4200-2487-11E4-A584-0013D350667C}';

  DIID__DTX4OLE: TGUID = '{510E4207-2487-11E4-A584-0013D350667C}';
  DIID__DTX4OLEEvents: TGUID = '{510E4208-2487-11E4-A584-0013D350667C}';
  CLASS_TXTextControl: TGUID = '{510E4201-2487-11E4-A584-0013D350667C}';
  DIID_IStyle: TGUID = '{510E421C-2487-11E4-A584-0013D350667C}';
  CLASS_TXStyle: TGUID = '{510E421B-2487-11E4-A584-0013D350667C}';
  DIID_IStyles: TGUID = '{510E421A-2487-11E4-A584-0013D350667C}';
  CLASS_TXStyles: TGUID = '{510E4219-2487-11E4-A584-0013D350667C}';
  DIID_IXMLElement: TGUID = '{510E4218-2487-11E4-A584-0013D350667C}';
  CLASS_TXXMLElement: TGUID = '{510E4217-2487-11E4-A584-0013D350667C}';
  DIID_IXMLElements: TGUID = '{510E4216-2487-11E4-A584-0013D350667C}';
  CLASS_TXXMLElements: TGUID = '{510E4215-2487-11E4-A584-0013D350667C}';
  DIID_ILicManager: TGUID = '{510E421E-2487-11E4-A584-0013D350667C}';
  CLASS_TXLicenseManager: TGUID = '{510E421D-2487-11E4-A584-0013D350667C}';
  DIID__DTXBBAR: TGUID = '{510E420B-2487-11E4-A584-0013D350667C}';
  DIID__DTXBBAREvents: TGUID = '{510E420C-2487-11E4-A584-0013D350667C}';
  CLASS_TXButtonBar: TGUID = '{510E4209-2487-11E4-A584-0013D350667C}';
  DIID__DTXRULER: TGUID = '{510E420F-2487-11E4-A584-0013D350667C}';
  DIID__DTXRULEREvents: TGUID = '{510E4210-2487-11E4-A584-0013D350667C}';
  CLASS_TXRuler: TGUID = '{510E420D-2487-11E4-A584-0013D350667C}';
  DIID__DTXSBAR: TGUID = '{510E4213-2487-11E4-A584-0013D350667C}';
  DIID__DTXSBAREvents: TGUID = '{510E4214-2487-11E4-A584-0013D350667C}';
  CLASS_TXStatusBar: TGUID = '{510E4211-2487-11E4-A584-0013D350667C}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TableCellAttributeConstants
type
  TableCellAttributeConstants = TOleEnum;
const
  txTableCellHorizontalPos = $00000000;
  txTableCellHorizontalExt = $00000001;
  txTableCellBorderWidth = $00000002;
  txTableCellTextGap = $00000003;
  txTableCellBackColor = $00000004;
  txTableCellLeftBorderWidth = $00000005;
  txTableCellTopBorderWidth = $00000006;
  txTableCellRightBorderWidth = $00000007;
  txTableCellBottomBorderWidth = $00000008;
  txTableCellLeftTextGap = $00000009;
  txTableCellTopTextGap = $0000000A;
  txTableCellRightTextGap = $0000000B;
  txTableCellBottomTextGap = $0000000C;
  txTableCellVertAlign = $0000000D;
  txTableCellHeight = $0000000E;
  txTableCellPageBreakAllowed = $0000000F;
  txTableCellIsHeader = $00000010;
  txTableCellLeftBorderColor = $00000011;
  txTableCellTopBorderColor = $00000012;
  txTableCellRightBorderColor = $00000013;
  txTableCellBottomBorderColor = $00000014;

// Constants for enum PageBorderAttributeConstants
type
  PageBorderAttributeConstants = TOleEnum;
const
  txPageBorderLeftBorderWidth = $00000001;
  txPageBorderTopBorderWidth = $00000002;
  txPageBorderRightBorderWidth = $00000003;
  txPageBorderBottomBorderWidth = $00000004;
  txPageBorderLeftDistance = $00000005;
  txPageBorderTopDistance = $00000006;
  txPageBorderRightDistance = $00000007;
  txPageBorderBottomDistance = $00000008;
  txPageBorderLeftBorderColor = $00000009;
  txPageBorderTopBorderColor = $0000000A;
  txPageBorderRightBorderColor = $0000000B;
  txPageBorderBottomBorderColor = $0000000C;
  txPageBorderOmitFirstPage = $0000000D;
  txPageBorderFirstPageOnly = $0000000E;
  txPageBorderSurroundHeader = $0000000F;
  txPageBorderSurroundFooter = $00000010;
  txPageBorderMeasureFromText = $00000011;

// Constants for enum TableInsertConstants
type
  TableInsertConstants = TOleEnum;
const
  txTableInsertInFront = $00000001;
  txTableInsertAfter = $00000002;

// Constants for enum AppearanceStyles
type
  AppearanceStyles = TOleEnum;
const
  txFlat = $00000000;
  tx3D = $00000001;
  txXP = $00000002;
  txColorScheme = $00000003;

// Constants for enum StatusBarAppearanceStyles
type
  StatusBarAppearanceStyles = TOleEnum;
const
  sbFlat = $00000000;
  sb3D = $00000001;
  sbXP = $00000002;
  sbColorScheme = $00000003;
  sbVerticalColorScheme = $00000004;

// Constants for enum PageViewStyles
type
  PageViewStyles = TOleEnum;
const
  txClassicColors = $00000000;
  txGradientColors = $00000001;

// Constants for enum RulerBarDirection
type
  RulerBarDirection = TOleEnum;
const
  txHorizontal = $00000000;
  txVertical = $00000001;

// Constants for enum HeaderFooterConstants
type
  HeaderFooterConstants = TOleEnum;
const
  txHeader = $00000001;
  txFirstHeader = $00000002;
  txFooter = $00000004;
  txFirstFooter = $00000008;
  txMainText = $00000010;
  txEvenHeader = $00000080;
  txEvenFooter = $00000100;

// Constants for enum HeaderFooterStyleConstants
type
  HeaderFooterStyleConstants = TOleEnum;
const
  txMouseClick = $00000001;
  txNoDblClk = $00000002;
  txSolidFrame = $00000004;
  txUnframed = $00000008;
  txDividingLine = $00000010;

// Constants for enum LoadSaveAttributeConstants
type
  LoadSaveAttributeConstants = TOleEnum;
const
  txDocWidth = $00000000;
  txDocHeight = $00000001;
  txDocLeftMargin = $00000002;
  txDocTopMargin = $00000003;
  txDocRightMargin = $00000004;
  txDocBottomMargin = $00000005;
  txDocTitle = $00000006;
  txDocBkColor = $00000007;
  txCSSFile = $00000008;
  txCSSSaveMode = $00000009;
  txDocAccessPermissions = $0000000A;
  txMasterPassword = $0000000B;
  txUserPassword = $0000000C;
  txImageCompressionQuality = $0000000D;
  txImageMaxResolution = $0000000E;
  txLoadMSWordFields = $0000000F;
  txLoadHighEditFields = $00000010;
  txMSWordFieldTypeNames = $00000011;
  txImageSaveMode = $00000012;
  txImageExportFormat = $00000013;
  txCertificateFileName = $00000014;
  txCertificatePassword = $00000015;
  txTimeServerURL = $00000016;
  txAbsPath = $0000001C;
  txBasePath = $0000001D;
  txBaseFontSize = $0000001E;
  txPropFontName = $0000001F;
  txMonoFontName = $00000020;
  txTextColor = $00000021;
  txOverwriteTextColor = $00000022;
  txTextBkColor = $00000023;
  txOverwriteTextBkColor = $00000024;
  txLoadImages = $00000025;
  txEnableLinks = $00000026;
  txEnableHighlights = $00000027;
  txEnableTopics = $00000028;
  txLinkColor = $00000032;
  txOverwriteLinkColor = $00000033;
  txUnderlineLinks = $00000034;

// Constants for enum FieldTypeConstants
type
  FieldTypeConstants = TOleEnum;
const
  txFieldStandard = $00000000;
  txFieldExternalLink = $00000001;
  txFieldInternalLink = $00000002;
  txFieldPageNumber = $00000003;
  txFieldLinkTarget = $00000004;
  txFieldHighlight = $00000005;
  txFieldTopic = $00000006;
  txFieldMSWord = $00000007;
  txFieldHighEdit = $00000008;
  txFieldAllPages = $00000009;

// Constants for enum FieldInputPositionConstants
type
  FieldInputPositionConstants = TOleEnum;
const
  txInsideField = $00000001;
  txOutsideField = $00000002;
  txInsideNextField = $00000003;

// Constants for enum ListTypeConstants
type
  ListTypeConstants = TOleEnum;
const
  txListNone = $00000001;
  txListBulleted = $00000002;
  txListNumbered = $00000004;
  txListStructured = $00000008;

// Constants for enum BulletConstants
type
  BulletConstants = TOleEnum;
const
  txBulletChar = $00000000;
  txBulletFormatChar = $00000001;
  txBulletLevel = $00000002;
  txBulletPos = $00000003;
  txBulletSize = $00000004;
  txBulletTextPos = $00000005;

// Constants for enum NumberingConstants
type
  NumberingConstants = TOleEnum;
const
  txNumberingContinue = $00000000;
  txNumberingFormat = $00000001;
  txNumberingFormatChar = $00000002;
  txNumberingLevel = $00000003;
  txNumberingPos = $00000004;
  txNumberingPostChar = $00000005;
  txNumberingPreChar = $00000006;
  txNumberingReStart = $00000007;
  txNumberingStart = $00000008;
  txNumberingTextPos = $00000009;
  txNumberingPostText = $0000000A;
  txNumberingPreText = $0000000B;

// Constants for enum SectionBreakKindConstants
type
  SectionBreakKindConstants = TOleEnum;
const
  txBeginAtNewLine = $00000100;
  txBeginAtNewPage = $00000200;

// Constants for enum TextControlColor
type
  TextControlColor = TOleEnum;
const
  txDesktopColor = $00000000;
  txLightShadowColor = $00000001;
  txDarkShadowColor = $00000002;
  txHeaderFooterLineColor = $00000003;
  txHeaderFooterLabelColor = $00000004;

// Constants for enum ButtonBarColor
type
  ButtonBarColor = TOleEnum;
const
  bbForeColor = $00000000;
  bbBackColor = $00000001;
  bbGradientBackColor = $00000002;
  bbSeparatorColorLight = $00000003;
  bbSeparatorColorDark = $00000004;
  bbComboboxBackColor = $00000005;
  bbButtonBackColorTop = $00000006;
  bbButtonBackColorMiddle = $00000007;
  bbButtonBackColorBottom = $00000008;
  bbButtonHotTrackTop = $00000009;
  bbButtonHotTrackBottom = $0000000A;
  bbButtonSelectedTop = $0000000B;
  bbButtonSelectedBottom = $0000000C;
  bbButtonPressedTop = $0000000D;
  bbButtonPressedBottom = $0000000E;
  bbButtonFrameColor = $0000000F;

// Constants for enum RulerBarColor
type
  RulerBarColor = TOleEnum;
const
  rlForeColor = $00000000;
  rlBackColor = $00000001;
  rlGradientBackColor = $00000002;
  rlSeparatorColorLight = $00000003;
  rlSeparatorColorDark = $00000004;
  rlRulerColor = $00000005;

// Constants for enum StatusBarColor
type
  StatusBarColor = TOleEnum;
const
  sbForeColor = $00000000;
  sbBackColor = $00000001;
  sbGradientBackColor = $00000002;
  sbFrameColor = $00000003;
  sbBackColorTop = $00000004;
  sbBackColorMiddle = $00000005;
  sbBackColorBottom = $00000006;
  sbSeparatorColorLight = $00000007;
  sbSeparatorColorDark = $00000008;

// Constants for enum ObjectInsertionModeConstants
type
  ObjectInsertionModeConstants = TOleEnum;
const
  txAsCharacter = $00000001;
  txAnchoredToParagraph = $00000002;
  txFixedOnPage = $00000003;

// Constants for enum PictureContentConstants
type
  PictureContentConstants = TOleEnum;
const
  pcBackground = $00000001;
  pcHeadersAndFooters = $00000002;
  pcMainText = $00000004;
  pcAll = $00000007;

// Constants for enum ZOrderConstants
type
  ZOrderConstants = TOleEnum;
const
  txZOrderTopMost = $00000001;
  txZOrderTop = $00000002;
  txZOrderUp = $00000003;
  txZOrderBottomMost = $00000004;
  txZOrderBottom = $00000005;
  txZOrderDown = $00000006;

// Constants for enum ControlCharConstants
type
  ControlCharConstants = TOleEnum;
const
  txSpace = $00000001;
  txTab = $00000002;
  txParagraph = $00000004;
  txLineBreak = $00000008;
  txObjectAnchor = $00000010;
  txPageBreak = $00000020;
  txSectionBreak = $00000040;
  txHyphen = $00000080;
  txNonBreakingSpace = $00000100;
  txTableCellEnd = $00000200;
  txAll = $000003FF;

// Constants for enum TextDirectionConstants
type
  TextDirectionConstants = TOleEnum;
const
  txRightToLeft = $00000001;
  txLeftToRight = $00000002;

// Constants for enum JustificationConstants
type
  JustificationConstants = TOleEnum;
const
  txSpaces = $00000001;
  txKashida = $00000002;
  txSpacesAndKashida = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DTX4OLE = dispinterface;
  _DTX4OLEEvents = dispinterface;
  IStyle = dispinterface;
  IStyles = dispinterface;
  IXMLElement = dispinterface;
  IXMLElements = dispinterface;
  ILicManager = dispinterface;
  _DTXBBAR = dispinterface;
  _DTXBBAREvents = dispinterface;
  _DTXRULER = dispinterface;
  _DTXRULEREvents = dispinterface;
  _DTXSBAR = dispinterface;
  _DTXSBAREvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  TXTextControl = _DTX4OLE;
  TXStyle = IStyle;
  TXStyles = IStyles;
  TXXMLElement = IXMLElement;
  TXXMLElements = IXMLElements;
  TXLicenseManager = ILicManager;
  TXButtonBar = _DTXBBAR;
  TXRuler = _DTXRULER;
  TXStatusBar = _DTXSBAR;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PSmallint1 = ^Smallint; {*}
  PInteger1 = ^Integer; {*}
  PWideString1 = ^WideString; {*}
  PWordBool1 = ^WordBool; {*}
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// DispIntf:  _DTX4OLE
// Flags:     (4112) Hidden Dispatchable
// GUID:      {510E4207-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  _DTX4OLE = dispinterface
    ['{510E4207-2487-11E4-A584-0013D350667C}']
    property Enabled: WordBool dispid -514;
    property BackColor: OLE_COLOR dispid -501;
    property ForeColor: OLE_COLOR dispid -513;
    property hWnd: OLE_HANDLE dispid -515;
    property TabKey: WordBool dispid 1;
    property FormatSelection: WordBool dispid 2;
    property VTSpellDictionary: WideString dispid 3;
    property BorderStyle: Smallint dispid 4;
    property BackStyle: Smallint dispid 5;
    property FontBold: Smallint dispid 6;
    property FontItalic: Smallint dispid 7;
    property FontName: WideString dispid 8;
    property FontSize: Smallint dispid 9;
    property FontStrikethru: Smallint dispid 10;
    property FontUnderline: Smallint dispid 11;
    property PageWidth: Integer dispid 12;
    property PageHeight: Integer dispid 13;
    property ScrollBars: Smallint dispid 14;
    property Text: WideString dispid 15;
    property Alignment: Smallint dispid 16;
    property FrameDistance: Smallint dispid 17;
    property FrameLineWidth: Smallint dispid 18;
    property FrameStyle: Smallint dispid 19;
    property ScrollPosX: Integer dispid 20;
    property ScrollPosY: Integer dispid 21;
    property PageMarginL: Integer dispid 22;
    property PageMarginT: Integer dispid 23;
    property PageMarginR: Integer dispid 24;
    property PageMarginB: Integer dispid 25;
    property PrintDevice: Integer dispid 26;
    property ControlChars: WordBool dispid 27;
    property HideSelection: WordBool dispid 28;
    property InsertionMode: WordBool dispid 29;
    property SelLength: Integer dispid 30;
    property SelStart: Integer dispid 31;
    property SelText: WideString dispid 32;
    property ClipChildren: WordBool dispid 33;
    property ClipSiblings: WordBool dispid 34;
    property SizeMode: Smallint dispid 35;
    property Language: Smallint dispid 36;
    property ViewMode: Smallint dispid 37;
    property PrintOffset: WordBool dispid 38;
    property ZoomFactor: Smallint dispid 39;
    property FieldCurrent: Smallint dispid 40;
    property FieldChangeable: WordBool dispid 41;
    property FieldDeleteable: WordBool dispid 42;
    property FieldText: WideString dispid 43;
    property TabCurrent: Smallint dispid 44;
    property TabType: Smallint dispid 45;
    property TabPos: Integer dispid 46;
    property BaseLine: Smallint dispid 47;
    property LineSpacing: Smallint dispid 48;
    property PrintZoom: Smallint dispid 49;
    property RTFSelText: WideString dispid 50;
    property ImageFilters: WideString dispid 51;
    property ImageFilename: WideString dispid 52;
    property LineSpacingT: Smallint dispid 53;
    property ObjectCurrent: Smallint dispid 54;
    property StatusBarHandle: Integer dispid 55;
    property RulerHandle: Integer dispid 56;
    property ButtonBarHandle: Integer dispid 57;
    property ObjectScaleX: Smallint dispid 58;
    property ObjectScaleY: Smallint dispid 59;
    property ObjectTextflow: Smallint dispid 60;
    property ObjectSizeMode: Smallint dispid 61;
    property ImageSaveMode: Smallint dispid 62;
    property ImageDisplayMode: Smallint dispid 63;
    property PrintColors: WordBool dispid 64;
    property EditMode: Smallint dispid 65;
    property MousePointer: Smallint dispid 66;
    property NextWindow: Integer dispid 67;
    property CanUndo: Smallint dispid 68;
    property CanRedo: Smallint dispid 69;
    property CurrentPages: Integer dispid 70;
    property FieldPosX: Integer dispid 71;
    property FieldPosY: Integer dispid 72;
    property FieldStart: Integer dispid 73;
    property FieldEnd: Integer dispid 74;
    property IndentL: Smallint dispid 75;
    property IndentR: Smallint dispid 76;
    property IndentFL: Smallint dispid 77;
    property IndentT: Smallint dispid 78;
    property IndentB: Smallint dispid 79;
    property TextBkColor: OLE_COLOR dispid 80;
    property DataFormat: Smallint dispid 81;
    property DataText: WideString dispid 82;
    property ViewSection: Smallint dispid 105;
    property ViewImagePath: WideString dispid 106;
    property AutoExpand: WordBool dispid 107;
    property TableCanInsert: WordBool dispid 110;
    property TableCanDeleteLines: WordBool dispid 111;
    property EnableHyperlinks: WordBool dispid 113;
    property TableGridLines: WordBool dispid 115;
    property TableCanChangeAttr: WordBool dispid 116;
    property TableAtInputPos: Smallint dispid 120;
    property TableColAtInputPos: Smallint dispid 121;
    property TableRowAtInputPos: Smallint dispid 122;
    property FontUnderlineStyle: Smallint dispid 123;
    property DataTextFormat: Smallint dispid 134;
    property ResourceFile: WideString dispid 135;
    property CurrentInputPosition: OleVariant dispid 136;
    property HeaderFooterStyle: HeaderFooterStyleConstants dispid 139;
    property HeaderFooter: HeaderFooterConstants dispid 140;
    property FieldAtInputPos: Smallint dispid 145;
    property ObjectItem: IDispatch dispid 146;
    property LockWindowUpdate: WordBool dispid 150;
    property CanCopy: WordBool dispid 151;
    property CanPaste: WordBool dispid 152;
    property ListType: ListTypeConstants dispid 155;
    property TableCanDeleteColumn: WordBool dispid 161;
    property TableCanInsertColumn: WordBool dispid 162;
    property TableCanInsertLines: WordBool dispid 163;
    property Device: OleVariant dispid 172;
    property StyleCurrent: WideString dispid 175;
    property WordWrapMode: Smallint dispid 176;
    property Styles: IDispatch dispid 178;
    property XMLEditMode: Smallint dispid 179;
    property ImageExportFilters: WideString dispid 180;
    property ImageExportFormat: Smallint dispid 181;
    property ImageExportFilename: WideString dispid 182;
    property TableCanSplit: WordBool dispid 184;
    property ImageExportCompressionQuality: Smallint dispid 189;
    property ImageExportMaxResolution: Smallint dispid 190;
    property AllowUndo: WordBool dispid 191;
    property TextFrameBackColor: OLE_COLOR dispid 201;
    property TextFrameBorderWidth: Smallint dispid 202;
    property ObjectWidth: Smallint dispid 204;
    property ObjectHeight: Smallint dispid 205;
    property TextFrameMarkerLines: WordBool dispid 209;
    property HeaderFooterAtInputPos: Smallint dispid 210;
    property VerticalRulerHandle: Integer dispid 211;
    property KeepLinesTogether: WordBool dispid 212;
    property KeepWithNext: WordBool dispid 213;
    property PageBreakBefore: WordBool dispid 214;
    property WidowOrphanLines: Smallint dispid 215;
    property FieldLinkTargetMarkers: WordBool dispid 216;
    property SectionCurrent: Smallint dispid 218;
    property SectionAtInputPos: Smallint dispid 221;
    property SectionCount: Smallint dispid 222;
    property SectionBreakKind: SectionBreakKindConstants dispid 223;
    property PageOrientation: Smallint dispid 225;
    property PageViewStyle: PageViewStyles dispid 226;
    property ColumnWidthsAndDistances: OleVariant dispid 227;
    property Columns: Smallint dispid 228;
    property ColumnDistance: Smallint dispid 229;
    property ColumnLineColor: OLE_COLOR dispid 230;
    property ColumnLineWidth: Smallint dispid 231;
    property FontSettings: Smallint dispid 232;
    property ObjectName: WideString dispid 233;
    property ObjectUserId: Integer dispid 234;
    property ObjectInsertionMode: ObjectInsertionModeConstants dispid 238;
    property ObjectPosX: Integer dispid 239;
    property ObjectPosY: Integer dispid 240;
    property AllowDrag: WordBool dispid 241;
    property AllowDrop: WordBool dispid 242;
    property EnableSpellChecking: WordBool dispid 247;
    property MisspelledWords: Integer dispid 248;
    property MisspelledWordAtInputPos: Integer dispid 252;
    property TableCanMergeCells: WordBool dispid 256;
    property TableCanSplitCells: WordBool dispid 257;
    property SelectionViewMode: Smallint dispid 259;
    property ObjectTransparency: Smallint dispid 262;
    property SectionRestartPageNumbering: Smallint dispid 265;
    property PermanentControlChars: ControlCharConstants dispid 266;
    property RightToLeft: WordBool dispid 271;
    property TextDirection: TextDirectionConstants dispid 273;
    property Locale: Integer dispid 274;
    property Justification: JustificationConstants dispid 276;
    property ClipboardFormats: OleVariant dispid 284;
    procedure Refresh; dispid -550;
    procedure PrintPage(PageNumber: Smallint); dispid 83;
    function ParagraphDialog: WordBool; dispid 84;
    function FontDialog: WordBool; dispid 85;
    procedure FindReplace(TypeOfDialog: Smallint); dispid 86;
    function Undo: WordBool; dispid 87;
    function Redo: WordBool; dispid 88;
    function VTSpellCheck: WordBool; dispid 89;
    procedure Clip(Action: Smallint); dispid 90;
    function RTFImport(const FileName: WideString; Extended: OleVariant): WordBool; dispid 91;
    function RTFExport(const FileName: WideString): WordBool; dispid 92;
    function TextImport(const FileName: WideString): WordBool; dispid 93;
    function TextExport(const FileName: WideString): WordBool; dispid 94;
    function FieldInsert(const FieldText: WideString): WordBool; dispid 95;
    function FieldDelete(DeleteTotal: WordBool): WordBool; dispid 96;
    function ObjectInsertAsChar(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                TextPos: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                                ImageDisplayMode: Smallint; ImageSaveMode: Smallint; 
                                KindOfObject: OleVariant): Smallint; dispid 97;
    function ObjectInsertFixed(ObjectType: OLE_HANDLE; const FileName: WideString; PosX: Integer; 
                               PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                               ImageDisplayMode: Smallint; ImageSaveMode: Smallint; 
                               SizeMode: Smallint; Textflow: Smallint; DistanceL: Smallint; 
                               DistanceT: Smallint; DistanceR: Smallint; DistanceB: Smallint; 
                               KindOfObject: OleVariant): Smallint; dispid 98;
    function Load(const FileName: WideString; Offset: OleVariant; Format: OleVariant; 
                  CurSelection: OleVariant): Integer; dispid 99;
    function Save(const FileName: WideString; Offset: OleVariant; Format: OleVariant; 
                  CurSelection: OleVariant): Integer; dispid 100;
    function ObjectDelete(ObjectId: Smallint): WordBool; dispid 101;
    function ObjectNext(ObjectId: Smallint; ObjectGroup: Smallint): Smallint; dispid 102;
    property ObjectDistance[index: Smallint]: Smallint dispid 103;
    function ViewNextHighlight: WordBool; dispid 104;
    function TableInsert(Rows: Smallint; Columns: Smallint; TextPos: Integer; TableId: OleVariant): Smallint; dispid 108;
    function TableDeleteLines: WordBool; dispid 109;
    property LoadSaveAttribute[Attribute: LoadSaveAttributeConstants]: OleVariant dispid 112;
    function TableAttrDialog: WordBool; dispid 114;
    property TableColumns[TableId: Smallint]: Smallint readonly dispid 117;
    property TableRows[TableId: Smallint]: Smallint readonly dispid 118;
    property TableCellText[TableId: Smallint; Row: Smallint; Column: Smallint]: WideString dispid 119;
    property FieldEditAttr[FieldId: Smallint]: Smallint dispid 124;
    function FieldNext(FieldId: Smallint; FieldGroup: Smallint): Smallint; dispid 125;
    property FieldData[FieldId: Smallint]: OleVariant dispid 126;
    function LoadFromMemory(DataBuffer: OleVariant; Format: OleVariant; CurSelection: OleVariant): WordBool; dispid 127;
    function SaveToMemory(Format: OleVariant; CurSelection: OleVariant): OleVariant; dispid 128;
    property TableCellAttribute[TableId: Smallint; Row: Smallint; Column: Smallint; 
                                Attribute: TableCellAttributeConstants]: OleVariant dispid 129;
    function Find(const FindWhat: WideString; Start: OleVariant; Options: OleVariant): Integer; dispid 130;
    function TableNext(EnumerationNumber: Smallint; var TableId: Smallint): Smallint; dispid 131;
    property TableCellStart[TableId: Smallint; Row: Smallint; Column: Smallint]: Integer readonly dispid 132;
    property TableCellLength[TableId: Smallint; Row: Smallint; Column: Smallint]: Integer readonly dispid 133;
    function HeaderFooterActivate(HeaderFooter: HeaderFooterConstants): WordBool; dispid 137;
    function HeaderFooterSelect(HeaderFooter: HeaderFooterConstants): WordBool; dispid 138;
    property HeaderFooterPosition[HeaderFooter: HeaderFooterConstants]: Integer dispid 141;
    property FieldTypeData[FieldId: Smallint]: OleVariant dispid 142;
    function FieldGoto(FieldType: FieldTypeConstants; FieldIdOrName: OleVariant): WordBool; dispid 143;
    property FieldType[FieldId: Smallint]: FieldTypeConstants dispid 144;
    function ResetContents: WordBool; dispid 147;
    function InputPosFromPoint(X: Integer; Y: Integer): Integer; dispid 148;
    procedure PrintDoc(const DocName: WideString; FromPage: Smallint; ToPage: Smallint; 
                       Copies: Smallint); dispid 149;
    property BulletAttribute[Attribute: BulletConstants]: OleVariant dispid 153;
    property NumberingAttribute[Attribute: NumberingConstants]: OleVariant dispid 154;
    function ListAttrDialog: WordBool; dispid 156;
    function SaveToMemoryBuffer(DataBuffer: OleVariant; Format: OleVariant; CurSelection: OleVariant): OleVariant; dispid 157;
    function TableDeleteColumn: WordBool; dispid 158;
    function TableInsertLines(Position: TableInsertConstants; Lines: Smallint): WordBool; dispid 159;
    function TableInsertColumn(Position: TableInsertConstants): WordBool; dispid 160;
    function GetBaseLinePos(Line: Integer): Integer; dispid 164;
    function GetCharFromLine(Line: Integer): Integer; dispid 165;
    function GetLineCount: Integer; dispid 166;
    function GetLineFromChar(Char: Integer): Integer; dispid 167;
    function GetLineFromPoint(X: Integer; Y: Integer): Integer; dispid 168;
    function GetLineRect(Line: Integer): OleVariant; dispid 169;
    function GetTextExtent: OleVariant; dispid 170;
    property CaretWidth[Caret: Smallint]: Smallint dispid 171;
    function TabDialog: WordBool; dispid 173;
    function StyleDialog: WordBool; dispid 174;
    function XMLElements(const ElementName: WideString): IDispatch; dispid 177;
    function EnableAutomationServer: WordBool; dispid 183;
    function TableSplit(Position: TableInsertConstants): WordBool; dispid 185;
    property TableNestedLevel[TableId: Smallint]: Integer readonly dispid 186;
    function TableGetOuter(TableId: Smallint): Smallint; dispid 187;
    function TableGetOuterMost(TableId: Smallint): Smallint; dispid 188;
    procedure StartUndoAction; dispid 192;
    procedure EndUndoAction; dispid 193;
    function ObjectInsert(ObjectType: OLE_HANDLE; const FileName: WideString; TextPos: Integer; 
                          Alignment: Smallint; PosX: Integer; PosY: Integer; ScaleX: Smallint; 
                          ScaleY: Smallint; Textflow: Smallint; DistanceL: Smallint; 
                          DistanceT: Smallint; DistanceR: Smallint; DistanceB: Smallint; 
                          KindOfObject: OleVariant): Smallint; dispid 194;
    function TextFrameInsertAsChar(TextPos: Integer; Width: Smallint; Height: Smallint): Smallint; dispid 195;
    function TextFrameInsertFixed(PageNo: Integer; PosX: Integer; PosY: Integer; Width: Smallint; 
                                  Height: Smallint; Textflow: Smallint; DistL: Smallint; 
                                  DistT: Smallint; DistR: Smallint; DistB: Smallint): Smallint; dispid 196;
    function TextFrameInsert(TextPos: Integer; Alignment: Smallint; PosX: Integer; PosY: Integer; 
                             Width: Smallint; Height: Smallint; Textflow: Smallint; 
                             DistL: Smallint; DistT: Smallint; DistR: Smallint; DistB: Smallint): Smallint; dispid 197;
    function ObjectAttrDialog: WordBool; dispid 198;
    function TextFrameSelect(TextFrameId: Smallint): WordBool; dispid 199;
    function ObjectGetSelected(ObjectKind: Smallint): Smallint; dispid 200;
    property TextFrameInternalMargin[index: Smallint]: Smallint dispid 203;
    function ImageInsert(const FileName: WideString; TextPos: Integer; Alignment: Smallint; 
                         PosX: Integer; PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                         Textflow: Smallint; DistanceL: Smallint; DistanceT: Smallint; 
                         DistanceR: Smallint; DistanceB: Smallint): Smallint; dispid 206;
    function ImageInsertAsChar(const FileName: WideString; TextPos: Integer; ScaleX: Smallint; 
                               ScaleY: Smallint): Smallint; dispid 207;
    function ImageInsertFixed(const FileName: WideString; PageNo: Integer; PosX: Integer; 
                              PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                              Textflow: Smallint; DistanceL: Smallint; DistanceT: Smallint; 
                              DistanceR: Smallint; DistanceB: Smallint): Smallint; dispid 208;
    function FieldSetInputPos(FieldInputPosition: FieldInputPositionConstants): WordBool; dispid 217;
    function SectionInsert(BreakKind: SectionBreakKindConstants; TextPos: Integer): WordBool; dispid 219;
    function SectionFormatDialog(ActiveTab: Smallint): WordBool; dispid 220;
    property HeaderFooterConnectedToPrevious[HeaderFooter: HeaderFooterConstants]: WordBool dispid 224;
    function ObjectGetFromName(const ObjectName: WideString): Smallint; dispid 235;
    function ObjectGetFromUserId(ObjectUserId: Integer): Smallint; dispid 236;
    property DisplayColor[index: TextControlColor]: OLE_COLOR dispid 237;
    function GrowFont: WordBool; dispid 243;
    function ShrinkFont: WordBool; dispid 244;
    function IncreaseIndent: WordBool; dispid 245;
    function DecreaseIndent: WordBool; dispid 246;
    property MisspelledWordStart[Number: Integer]: Integer readonly dispid 249;
    property MisspelledWordLength[Number: Integer]: Integer readonly dispid 250;
    function MisspelledWordDelete(Number: Integer; const CorrectedText: WideString): WordBool; dispid 251;
    property PageImage[Number: Integer; Content: PictureContentConstants]: OleVariant readonly dispid 253;
    function TableMergeCells: WordBool; dispid 254;
    function TableSplitCells: WordBool; dispid 255;
    property TableCellData[TableId: Smallint; Row: Smallint; Column: Smallint]: WideString dispid 258;
    property PageBorderAttribute[Attribute: PageBorderAttributeConstants]: OleVariant dispid 260;
    function ObjectChangeZOrder(ZOrder: ZOrderConstants): WordBool; dispid 261;
    function TableInsertDialog(TableId: OleVariant): Smallint; dispid 263;
    function PageNumberDialog(FieldId: Smallint): WordBool; dispid 264;
    procedure PrintDialog(const DocName: WideString); dispid 267;
    function TableCellSelect(TableId: Smallint; Row: Integer; Column: Integer): WordBool; dispid 268;
    function TableFromSelection(var Row: Integer; var Column: Integer): Smallint; dispid 269;
    function TableDelete(TableId: Smallint): WordBool; dispid 270;
    function LocaleDialog: WordBool; dispid 272;
    function ChangeTextDirection(TextDirection: TextDirectionConstants): WordBool; dispid 275;
    function TableSelectCells(TableId: Smallint; StartRow: Integer; StartColumn: Integer; 
                              EndRow: Integer; EndColumn: Integer): WordBool; dispid 277;
    property PageStart[Number: Integer]: Integer readonly dispid 278;
    property PageLength[Number: Integer]: Integer readonly dispid 279;
    function PageSelect(Number: Integer): WordBool; dispid 280;
    property SectionStart[Number: Integer]: Integer readonly dispid 281;
    property SectionLength[Number: Integer]: Integer readonly dispid 282;
    function SectionSelect(Number: Integer): WordBool; dispid 283;
    function Paste(Format: Smallint): WordBool; dispid 285;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DTX4OLEEvents
// Flags:     (4096) Dispatchable
// GUID:      {510E4208-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  _DTX4OLEEvents = dispinterface
    ['{510E4208-2487-11E4-A584-0013D350667C}']
    procedure Change; dispid 1;
    procedure DblClick; dispid 2;
    procedure HScroll; dispid 3;
    procedure VScroll; dispid 4;
    procedure PosChange; dispid 5;
    procedure Move; dispid 6;
    procedure Size; dispid 7;
    procedure KeyDown(var KeyCode: Smallint; Shift: Smallint); dispid -602;
    procedure KeyPress(var KeyAscii: Smallint); dispid -603;
    procedure KeyUp(var KeyCode: Smallint; Shift: Smallint); dispid -604;
    procedure MouseDown(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -605;
    procedure MouseMove(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -606;
    procedure MouseUp(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -607;
    procedure FieldChanged(FieldId: Smallint); dispid 8;
    procedure FieldClicked(FieldId: Smallint); dispid 9;
    procedure FieldCreated(FieldId: Smallint); dispid 10;
    procedure FieldDblClicked(FieldId: Smallint); dispid 11;
    procedure FieldDeleted(FieldId: Smallint); dispid 12;
    procedure FieldSetCursor(FieldId: Smallint; var MousePointer: Smallint); dispid 13;
    procedure ObjectClicked(ObjectId: Smallint); dispid 14;
    procedure ObjectMoved(ObjectId: Smallint); dispid 15;
    procedure ObjectSized(ObjectId: Smallint); dispid 16;
    procedure Click; dispid -600;
    procedure ObjectDblClicked(ObjectId: Smallint); dispid 17;
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; 
                    const Source: WideString; const HelpFile: WideString; HelpContext: Integer; 
                    var CancelDisplay: WordBool); dispid -608;
    procedure ObjectDeleted(ObjectId: Smallint); dispid 18;
    procedure ObjectCreated(ObjectId: Smallint); dispid 19;
    procedure ConnectTools; dispid 20;
    procedure ObjectSetZoom(ObjectId: Smallint; ZoomFactor: Smallint; var Processed: WordBool); dispid 21;
    procedure ObjectGetZoom(ObjectId: Smallint; var ZoomFactor: Smallint); dispid 22;
    procedure ObjectPrint(ObjectId: Smallint; Device: Integer; Left: Integer; Top: Integer; 
                          Right: Integer; Bottom: Integer; var Processed: WordBool); dispid 23;
    procedure ObjectGetData(ObjectId: Smallint; const ObjectData: OleVariant); dispid 24;
    procedure ObjectSetData(ObjectId: Smallint; const ObjectData: OleVariant); dispid 25;
    procedure ObjectGethWnd(ObjectId: Smallint; KindOfObject: Smallint; var hWnd: Integer); dispid 26;
    procedure ObjectScrollOut(ObjectId: Smallint); dispid 27;
    procedure AutoLink; dispid 28;
    procedure FieldEntered(FieldId: Smallint); dispid 29;
    procedure FieldLeft(FieldId: Smallint); dispid 30;
    procedure HExpand; dispid 31;
    procedure VExpand; dispid 32;
    procedure Zoomed; dispid 33;
    procedure CharFormatChange; dispid 34;
    procedure PageFormatChange; dispid 35;
    procedure ParagraphChange; dispid 36;
    procedure ParagraphFormatChange; dispid 37;
    procedure CaretOut; dispid 38;
    procedure CaretOutLeft; dispid 39;
    procedure CaretOutTop; dispid 40;
    procedure CaretOutRight; dispid 41;
    procedure CaretOutBottom; dispid 42;
    procedure AutoScroll; dispid 43;
    procedure KeyStateChange; dispid 44;
    procedure ViewClicked(FieldType: Smallint; var FieldContents: WideString); dispid 45;
    procedure ViewWordDblClicked(var SelectedText: WideString); dispid 46;
    procedure TableCreated(TableId: Smallint; var NewTableId: Smallint); dispid 47;
    procedure TableDeleted(TableId: Smallint); dispid 48;
    procedure HeaderFooterActivated(HeaderFooter: Smallint); dispid 49;
    procedure HeaderFooterDeactivated(HeaderFooter: Smallint); dispid 50;
    procedure FieldLinkClicked(FieldId: Smallint; FieldType: Smallint; var TypeData: WideString); dispid 51;
    procedure StyleListChanged; dispid 52;
    procedure StyleChanged; dispid 53;
    procedure TableFormatChanged; dispid 54;
    procedure XMLNotWellFormed(FilePos: Integer; LineNumber: Integer; LinePos: Integer; 
                               Scode: Integer; var Description: WideString; const URL: WideString; 
                               var CancelDisplay: WordBool); dispid 55;
    procedure XMLInvalid(FilePos: Integer; Scode: Integer; var Description: WideString; 
                         var CancelDisplay: WordBool); dispid 56;
    procedure ObjectRightClicked(ObjectId: Smallint); dispid 57;
    procedure TextFrameActivated(TextFrameId: Smallint); dispid 58;
    procedure TextFrameDeactivated(TextFrameId: Smallint); dispid 59;
    procedure PageChanged; dispid 60;
    procedure SectionChanged; dispid 61;
    procedure SpellCheckText(const Text: WideString; const MisspelledWordPositions: OleVariant); dispid 62;
    procedure ContextMenuOpening(DocumentLocation: Smallint; var Cancel: WordBool); dispid 63;
  end;

// *********************************************************************//
// DispIntf:  IStyle
// Flags:     (4096) Dispatchable
// GUID:      {510E421C-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  IStyle = dispinterface
    ['{510E421C-2487-11E4-A584-0013D350667C}']
    property StyleName: WideString dispid 0;
    property FontName: WideString dispid 2;
    property FontSize: Smallint dispid 3;
    property FontBold: Smallint dispid 4;
    property FontItalic: Smallint dispid 5;
    property FontUnderline: Smallint dispid 6;
    property FontStrikethru: Smallint dispid 7;
    property BaseLine: Smallint dispid 8;
    property BaselineType: Smallint dispid 9;
    property ForeColor: Integer dispid 10;
    property TextBkColor: Integer dispid 11;
    property Alignment: Smallint dispid 12;
    property IndentL: Smallint dispid 13;
    property IndentR: Smallint dispid 14;
    property IndentFL: Smallint dispid 15;
    property IndentT: Smallint dispid 16;
    property IndentB: Smallint dispid 17;
    property LineSpacing: Smallint dispid 18;
    property LineSpacingT: Smallint dispid 19;
    property FrameStyle: Integer dispid 20;
    property FrameDistance: Smallint dispid 21;
    property FrameLineWidth: Smallint dispid 22;
    property ListType: ListTypeConstants dispid 27;
    property StyleType: Smallint dispid 28;
    property NextParaStyle: WideString dispid 29;
    property KeepLinesTogether: WordBool dispid 30;
    property KeepWithNext: WordBool dispid 31;
    property PageBreakBefore: WordBool dispid 32;
    property WidowOrphanLines: Smallint dispid 33;
    procedure Apply; dispid 1;
    property TabPos[index: Smallint]: Smallint dispid 23;
    property TabType[index: Smallint]: Smallint dispid 24;
    property BulletAttribute[Attribute: BulletConstants]: OleVariant dispid 25;
    property NumberingAttribute[Attribute: NumberingConstants]: OleVariant dispid 26;
  end;

// *********************************************************************//
// DispIntf:  IStyles
// Flags:     (4096) Dispatchable
// GUID:      {510E421A-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  IStyles = dispinterface
    ['{510E421A-2487-11E4-A584-0013D350667C}']
    property Count: Integer dispid 1;
    function Item(const StyleName: WideString): IDispatch; dispid 0;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// DispIntf:  IXMLElement
// Flags:     (4096) Dispatchable
// GUID:      {510E4218-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  IXMLElement = dispinterface
    ['{510E4218-2487-11E4-A584-0013D350667C}']
    property Text: WideString dispid 0;
    property ElementName: WideString dispid 4;
    property AutoText: WordBool dispid 6;
    property AutoSelect: WordBool dispid 7;
    procedure Select; dispid 1;
    function AddChild(const XMLElement: IDispatch; before: OleVariant; after: OleVariant): Smallint; dispid 2;
    function RemoveChild(const ElementName: WideString; index: OleVariant): Smallint; dispid 3;
    function ChildItem(const ElementName: WideString; index: OleVariant): IDispatch; dispid 5;
  end;

// *********************************************************************//
// DispIntf:  IXMLElements
// Flags:     (4096) Dispatchable
// GUID:      {510E4216-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  IXMLElements = dispinterface
    ['{510E4216-2487-11E4-A584-0013D350667C}']
    property Count: Integer dispid 1;
    property InputItemIndex: Integer dispid 5;
    function Item(index: Integer): IDispatch; dispid 0;
    function Add(const XMLElement: IDispatch; before: OleVariant; after: OleVariant): Smallint; dispid 2;
    function Remove(index: Integer): Smallint; dispid 3;
    function InputItem: IDispatch; dispid 4;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// DispIntf:  ILicManager
// Flags:     (4096) Dispatchable
// GUID:      {510E421E-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  ILicManager = dispinterface
    ['{510E421E-2487-11E4-A584-0013D350667C}']
    property Text: WideString dispid 0;
  end;

// *********************************************************************//
// DispIntf:  _DTXBBAR
// Flags:     (4112) Hidden Dispatchable
// GUID:      {510E420B-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  _DTXBBAR = dispinterface
    ['{510E420B-2487-11E4-A584-0013D350667C}']
    property Enabled: WordBool dispid -514;
    property BorderStyle: Smallint dispid -504;
    property hWnd: OLE_HANDLE dispid -515;
    property Language: Smallint dispid 1;
    property ResourceFile: WideString dispid 2;
    property Style: AppearanceStyles dispid 3;
    property Appearance: AppearanceStyles dispid 4;
    property PosFontName: Smallint dispid 5;
    property PosFontSize: Smallint dispid 6;
    property PosFontBold: Smallint dispid 7;
    property PosFontItalic: Smallint dispid 8;
    property PosFontUnderline: Smallint dispid 9;
    property PosParaLeft: Smallint dispid 10;
    property PosParaRight: Smallint dispid 11;
    property PosParaCentered: Smallint dispid 12;
    property PosParaJustified: Smallint dispid 13;
    property PosListBulleted: Smallint dispid 14;
    property PosListNumbered: Smallint dispid 15;
    property PosZoom: Smallint dispid 16;
    property PosControlChars: Smallint dispid 17;
    property PosTabLeft: Smallint dispid 18;
    property PosTabRight: Smallint dispid 19;
    property PosTabCentered: Smallint dispid 20;
    property PosTabDecimal: Smallint dispid 21;
    property PosStyle: Smallint dispid 22;
    property PosXMLAdd: Smallint dispid 23;
    property PosXMLRemove: Smallint dispid 24;
    property PosTabSelect: Smallint dispid 25;
    property PosListStructured: Smallint dispid 26;
    property PosGrowFont: Smallint dispid 28;
    property PosShrinkFont: Smallint dispid 29;
    property PosIncreaseIndent: Smallint dispid 30;
    property PosDecreaseIndent: Smallint dispid 31;
    property PosStrikethru: Smallint dispid 32;
    property PosSubscript: Smallint dispid 33;
    property PosSuperscript: Smallint dispid 34;
    property PosRightToLeft: Smallint dispid 35;
    property PosLeftToRight: Smallint dispid 36;
    property RightToLeft: WordBool dispid 37;
    property DisplayColor[index: ButtonBarColor]: OLE_COLOR dispid 27;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DTXBBAREvents
// Flags:     (4096) Dispatchable
// GUID:      {510E420C-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  _DTXBBAREvents = dispinterface
    ['{510E420C-2487-11E4-A584-0013D350667C}']
    procedure MouseDown(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -605;
    procedure MouseMove(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -606;
    procedure MouseUp(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -607;
  end;

// *********************************************************************//
// DispIntf:  _DTXRULER
// Flags:     (4112) Hidden Dispatchable
// GUID:      {510E420F-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  _DTXRULER = dispinterface
    ['{510E420F-2487-11E4-A584-0013D350667C}']
    property ScaleUnits: Smallint dispid 1;
    property Enabled: WordBool dispid -514;
    property BorderStyle: Smallint dispid -504;
    property hWnd: OLE_HANDLE dispid -515;
    property Language: Smallint dispid 2;
    property ResourceFile: WideString dispid 3;
    property Appearance: AppearanceStyles dispid 4;
    property Direction: RulerBarDirection dispid 5;
    property EnablePageMargins: WordBool dispid 6;
    property RightToLeft: WordBool dispid 8;
    property DisplayColor[index: RulerBarColor]: OLE_COLOR dispid 7;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DTXRULEREvents
// Flags:     (4096) Dispatchable
// GUID:      {510E4210-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  _DTXRULEREvents = dispinterface
    ['{510E4210-2487-11E4-A584-0013D350667C}']
    procedure MouseDown(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -605;
    procedure MouseMove(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -606;
    procedure MouseUp(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -607;
  end;

// *********************************************************************//
// DispIntf:  _DTXSBAR
// Flags:     (4112) Hidden Dispatchable
// GUID:      {510E4213-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  _DTXSBAR = dispinterface
    ['{510E4213-2487-11E4-A584-0013D350667C}']
    property FontBold: WordBool dispid 1;
    property FontItalic: WordBool dispid 2;
    property FontName: WideString dispid 3;
    property FontSize: Single dispid 4;
    property FontStrikethru: WordBool dispid 5;
    property FontUnderline: WordBool dispid 6;
    property TextLine: WideString dispid 7;
    property TextColumn: WideString dispid 8;
    property TextPage: WideString dispid 9;
    property PageMode: Smallint dispid 10;
    property Enabled: WordBool dispid -514;
    property BorderStyle: Smallint dispid -504;
    property Font: IFontDisp dispid -512;
    property Text: WideString dispid -517;
    property hWnd: OLE_HANDLE dispid -515;
    property Language: Smallint dispid 11;
    property ResourceFile: WideString dispid 12;
    property Appearance: StatusBarAppearanceStyles dispid 13;
    property TextSection: WideString dispid 14;
    property TextPageCounter: WideString dispid 15;
    property TextSectionCounter: WideString dispid 16;
    property ShowPage: WordBool dispid 17;
    property ShowLine: WordBool dispid 18;
    property ShowColumn: WordBool dispid 19;
    property ShowSection: WordBool dispid 20;
    property ShowPageCounter: WordBool dispid 21;
    property ShowSectionCounter: WordBool dispid 22;
    property ShowZoomTrackBar: WordBool dispid 24;
    property ShowLocale: WordBool dispid 25;
    property RightToLeft: WordBool dispid 26;
    property DisplayColor[index: StatusBarColor]: OLE_COLOR dispid 23;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DTXSBAREvents
// Flags:     (4096) Dispatchable
// GUID:      {510E4214-2487-11E4-A584-0013D350667C}
// *********************************************************************//
  _DTXSBAREvents = dispinterface
    ['{510E4214-2487-11E4-A584-0013D350667C}']
    procedure MouseDown(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -605;
    procedure MouseMove(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -606;
    procedure MouseUp(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -607;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TTXTextControl
// Help String      : TX - Text Control
// Default Interface: _DTX4OLE
// Def. Intf. DISP? : Yes
// Event   Interface: _DTX4OLEEvents
// TypeFlags        : (38) CanCreate Licensed Control
// *********************************************************************//
  TTXTextControlFieldChanged = procedure(ASender: TObject; FieldId: Smallint) of object;
  TTXTextControlFieldClicked = procedure(ASender: TObject; FieldId: Smallint) of object;
  TTXTextControlFieldCreated = procedure(ASender: TObject; FieldId: Smallint) of object;
  TTXTextControlFieldDblClicked = procedure(ASender: TObject; FieldId: Smallint) of object;
  TTXTextControlFieldDeleted = procedure(ASender: TObject; FieldId: Smallint) of object;
  TTXTextControlFieldSetCursor = procedure(ASender: TObject; FieldId: Smallint; 
                                                             var MousePointer: Smallint) of object;
  TTXTextControlObjectClicked = procedure(ASender: TObject; ObjectId: Smallint) of object;
  TTXTextControlObjectMoved = procedure(ASender: TObject; ObjectId: Smallint) of object;
  TTXTextControlObjectSized = procedure(ASender: TObject; ObjectId: Smallint) of object;
  TTXTextControlObjectDblClicked = procedure(ASender: TObject; ObjectId: Smallint) of object;
  TTXTextControlError = procedure(ASender: TObject; Number: Smallint; var Description: WideString; 
                                                    Scode: Integer; const Source: WideString; 
                                                    const HelpFile: WideString; 
                                                    HelpContext: Integer; 
                                                    var CancelDisplay: WordBool) of object;
  TTXTextControlObjectDeleted = procedure(ASender: TObject; ObjectId: Smallint) of object;
  TTXTextControlObjectCreated = procedure(ASender: TObject; ObjectId: Smallint) of object;
  TTXTextControlObjectSetZoom = procedure(ASender: TObject; ObjectId: Smallint; 
                                                            ZoomFactor: Smallint; 
                                                            var Processed: WordBool) of object;
  TTXTextControlObjectGetZoom = procedure(ASender: TObject; ObjectId: Smallint; 
                                                            var ZoomFactor: Smallint) of object;
  TTXTextControlObjectPrint = procedure(ASender: TObject; ObjectId: Smallint; Device: Integer; 
                                                          Left: Integer; Top: Integer; 
                                                          Right: Integer; Bottom: Integer; 
                                                          var Processed: WordBool) of object;
  TTXTextControlObjectGetData = procedure(ASender: TObject; ObjectId: Smallint; 
                                                            const ObjectData: OleVariant) of object;
  TTXTextControlObjectSetData = procedure(ASender: TObject; ObjectId: Smallint; 
                                                            const ObjectData: OleVariant) of object;
  TTXTextControlObjectGethWnd = procedure(ASender: TObject; ObjectId: Smallint; 
                                                            KindOfObject: Smallint; 
                                                            var hWnd: Integer) of object;
  TTXTextControlObjectScrollOut = procedure(ASender: TObject; ObjectId: Smallint) of object;
  TTXTextControlFieldEntered = procedure(ASender: TObject; FieldId: Smallint) of object;
  TTXTextControlFieldLeft = procedure(ASender: TObject; FieldId: Smallint) of object;
  TTXTextControlViewClicked = procedure(ASender: TObject; FieldType: Smallint; 
                                                          var FieldContents: WideString) of object;
  TTXTextControlViewWordDblClicked = procedure(ASender: TObject; var SelectedText: WideString) of object;
  TTXTextControlTableCreated = procedure(ASender: TObject; TableId: Smallint; 
                                                           var NewTableId: Smallint) of object;
  TTXTextControlTableDeleted = procedure(ASender: TObject; TableId: Smallint) of object;
  TTXTextControlHeaderFooterActivated = procedure(ASender: TObject; HeaderFooter: Smallint) of object;
  TTXTextControlHeaderFooterDeactivated = procedure(ASender: TObject; HeaderFooter: Smallint) of object;
  TTXTextControlFieldLinkClicked = procedure(ASender: TObject; FieldId: Smallint; 
                                                               FieldType: Smallint; 
                                                               var TypeData: WideString) of object;
  TTXTextControlXMLNotWellFormed = procedure(ASender: TObject; FilePos: Integer; 
                                                               LineNumber: Integer; 
                                                               LinePos: Integer; Scode: Integer; 
                                                               var Description: WideString; 
                                                               const URL: WideString; 
                                                               var CancelDisplay: WordBool) of object;
  TTXTextControlXMLInvalid = procedure(ASender: TObject; FilePos: Integer; Scode: Integer; 
                                                         var Description: WideString; 
                                                         var CancelDisplay: WordBool) of object;
  TTXTextControlObjectRightClicked = procedure(ASender: TObject; ObjectId: Smallint) of object;
  TTXTextControlTextFrameActivated = procedure(ASender: TObject; TextFrameId: Smallint) of object;
  TTXTextControlTextFrameDeactivated = procedure(ASender: TObject; TextFrameId: Smallint) of object;
  TTXTextControlSpellCheckText = procedure(ASender: TObject; const Text: WideString; 
                                                             const MisspelledWordPositions: OleVariant) of object;
  TTXTextControlContextMenuOpening = procedure(ASender: TObject; DocumentLocation: Smallint; 
                                                                 var Cancel: WordBool) of object;

  TTXTextControl = class(TDBOleControl)
  private
    FOnChange: TNotifyEvent;
    FOnDblClick: TNotifyEvent;
    FOnHScroll: TNotifyEvent;
    FOnVScroll: TNotifyEvent;
    FOnPosChange: TNotifyEvent;
    FOnMove: TNotifyEvent;
    FOnSize: TNotifyEvent;
    FOnFieldChanged: TTXTextControlFieldChanged;
    FOnFieldClicked: TTXTextControlFieldClicked;
    FOnFieldCreated: TTXTextControlFieldCreated;
    FOnFieldDblClicked: TTXTextControlFieldDblClicked;
    FOnFieldDeleted: TTXTextControlFieldDeleted;
    FOnFieldSetCursor: TTXTextControlFieldSetCursor;
    FOnObjectClicked: TTXTextControlObjectClicked;
    FOnObjectMoved: TTXTextControlObjectMoved;
    FOnObjectSized: TTXTextControlObjectSized;
    FOnObjectDblClicked: TTXTextControlObjectDblClicked;
    FOnError: TTXTextControlError;
    FOnObjectDeleted: TTXTextControlObjectDeleted;
    FOnObjectCreated: TTXTextControlObjectCreated;
    FOnConnectTools: TNotifyEvent;
    FOnObjectSetZoom: TTXTextControlObjectSetZoom;
    FOnObjectGetZoom: TTXTextControlObjectGetZoom;
    FOnObjectPrint: TTXTextControlObjectPrint;
    FOnObjectGetData: TTXTextControlObjectGetData;
    FOnObjectSetData: TTXTextControlObjectSetData;
    FOnObjectGethWnd: TTXTextControlObjectGethWnd;
    FOnObjectScrollOut: TTXTextControlObjectScrollOut;
    FOnAutoLink: TNotifyEvent;
    FOnFieldEntered: TTXTextControlFieldEntered;
    FOnFieldLeft: TTXTextControlFieldLeft;
    FOnHExpand: TNotifyEvent;
    FOnVExpand: TNotifyEvent;
    FOnZoomed: TNotifyEvent;
    FOnCharFormatChange: TNotifyEvent;
    FOnPageFormatChange: TNotifyEvent;
    FOnParagraphChange: TNotifyEvent;
    FOnParagraphFormatChange: TNotifyEvent;
    FOnCaretOut: TNotifyEvent;
    FOnCaretOutLeft: TNotifyEvent;
    FOnCaretOutTop: TNotifyEvent;
    FOnCaretOutRight: TNotifyEvent;
    FOnCaretOutBottom: TNotifyEvent;
    FOnAutoScroll: TNotifyEvent;
    FOnKeyStateChange: TNotifyEvent;
    FOnViewClicked: TTXTextControlViewClicked;
    FOnViewWordDblClicked: TTXTextControlViewWordDblClicked;
    FOnTableCreated: TTXTextControlTableCreated;
    FOnTableDeleted: TTXTextControlTableDeleted;
    FOnHeaderFooterActivated: TTXTextControlHeaderFooterActivated;
    FOnHeaderFooterDeactivated: TTXTextControlHeaderFooterDeactivated;
    FOnFieldLinkClicked: TTXTextControlFieldLinkClicked;
    FOnStyleListChanged: TNotifyEvent;
    FOnStyleChanged: TNotifyEvent;
    FOnTableFormatChanged: TNotifyEvent;
    FOnXMLNotWellFormed: TTXTextControlXMLNotWellFormed;
    FOnXMLInvalid: TTXTextControlXMLInvalid;
    FOnObjectRightClicked: TTXTextControlObjectRightClicked;
    FOnTextFrameActivated: TTXTextControlTextFrameActivated;
    FOnTextFrameDeactivated: TTXTextControlTextFrameDeactivated;
    FOnPageChanged: TNotifyEvent;
    FOnSectionChanged: TNotifyEvent;
    FOnSpellCheckText: TTXTextControlSpellCheckText;
    FOnContextMenuOpening: TTXTextControlContextMenuOpening;
    FIntf: _DTX4OLE;
    function  GetControlInterface: _DTX4OLE;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_hWnd: OLE_HANDLE;
    procedure Set_hWnd(Value: OLE_HANDLE);
    function Get_CurrentInputPosition: OleVariant;
    procedure Set_CurrentInputPosition(Value: OleVariant);
    function Get_ObjectItem: IDispatch;
    procedure Set_ObjectItem(const Value: IDispatch);
    function Get_Device: OleVariant;
    procedure Set_Device(Value: OleVariant);
    function Get_Styles: IDispatch;
    procedure Set_Styles(const Value: IDispatch);
    function Get_ColumnWidthsAndDistances: OleVariant;
    procedure Set_ColumnWidthsAndDistances(Value: OleVariant);
    function Get_ClipboardFormats: OleVariant;
    procedure Set_ClipboardFormats(Value: OleVariant);
    function Get_ObjectDistance(index: Smallint): Smallint;
    procedure Set_ObjectDistance(index: Smallint; Param2: Smallint);
    function Get_LoadSaveAttribute(Attribute: LoadSaveAttributeConstants): OleVariant;
    procedure Set_LoadSaveAttribute(Attribute: LoadSaveAttributeConstants; Param2: OleVariant);
    function Get_TableColumns(TableId: Smallint): Smallint;
    function Get_TableRows(TableId: Smallint): Smallint;
    function Get_TableCellText(TableId: Smallint; Row: Smallint; Column: Smallint): WideString;
    procedure Set_TableCellText(TableId: Smallint; Row: Smallint; Column: Smallint; 
                                const Param4: WideString);
    function Get_FieldEditAttr(FieldId: Smallint): Smallint;
    procedure Set_FieldEditAttr(FieldId: Smallint; Param2: Smallint);
    function Get_FieldData(FieldId: Smallint): OleVariant;
    procedure Set_FieldData(FieldId: Smallint; Param2: OleVariant);
    function Get_TableCellAttribute(TableId: Smallint; Row: Smallint; Column: Smallint; 
                                    Attribute: TableCellAttributeConstants): OleVariant;
    procedure Set_TableCellAttribute(TableId: Smallint; Row: Smallint; Column: Smallint; 
                                     Attribute: TableCellAttributeConstants; Param5: OleVariant);
    function Get_TableCellStart(TableId: Smallint; Row: Smallint; Column: Smallint): Integer;
    function Get_TableCellLength(TableId: Smallint; Row: Smallint; Column: Smallint): Integer;
    function Get_HeaderFooterPosition(HeaderFooter: HeaderFooterConstants): Integer;
    procedure Set_HeaderFooterPosition(HeaderFooter: HeaderFooterConstants; Param2: Integer);
    function Get_FieldTypeData(FieldId: Smallint): OleVariant;
    procedure Set_FieldTypeData(FieldId: Smallint; Param2: OleVariant);
    function Get_FieldType(FieldId: Smallint): FieldTypeConstants;
    procedure Set_FieldType(FieldId: Smallint; Param2: FieldTypeConstants);
    function Get_BulletAttribute(Attribute: BulletConstants): OleVariant;
    procedure Set_BulletAttribute(Attribute: BulletConstants; Param2: OleVariant);
    function Get_NumberingAttribute(Attribute: NumberingConstants): OleVariant;
    procedure Set_NumberingAttribute(Attribute: NumberingConstants; Param2: OleVariant);
    function Get_CaretWidth(Caret: Smallint): Smallint;
    procedure Set_CaretWidth(Caret: Smallint; Param2: Smallint);
    function Get_TableNestedLevel(TableId: Smallint): Integer;
    function Get_TextFrameInternalMargin(index: Smallint): Smallint;
    procedure Set_TextFrameInternalMargin(index: Smallint; Param2: Smallint);
    function Get_HeaderFooterConnectedToPrevious(HeaderFooter: HeaderFooterConstants): WordBool;
    procedure Set_HeaderFooterConnectedToPrevious(HeaderFooter: HeaderFooterConstants; 
                                                  Param2: WordBool);
    function Get_DisplayColor(index: TextControlColor): OLE_COLOR;
    procedure Set_DisplayColor(index: TextControlColor; Param2: OLE_COLOR);
    function Get_MisspelledWordStart(Number: Integer): Integer;
    function Get_MisspelledWordLength(Number: Integer): Integer;
    function Get_PageImage(Number: Integer; Content: PictureContentConstants): OleVariant;
    function Get_TableCellData(TableId: Smallint; Row: Smallint; Column: Smallint): WideString;
    procedure Set_TableCellData(TableId: Smallint; Row: Smallint; Column: Smallint; 
                                const Param4: WideString);
    function Get_PageBorderAttribute(Attribute: PageBorderAttributeConstants): OleVariant;
    procedure Set_PageBorderAttribute(Attribute: PageBorderAttributeConstants; Param2: OleVariant);
    function Get_PageStart(Number: Integer): Integer;
    function Get_PageLength(Number: Integer): Integer;
    function Get_SectionStart(Number: Integer): Integer;
    function Get_SectionLength(Number: Integer): Integer;
  public
    procedure Refresh;
    procedure PrintPage(PageNumber: Smallint);
    function ParagraphDialog: WordBool;
    function FontDialog: WordBool;
    procedure FindReplace(TypeOfDialog: Smallint);
    function Undo: WordBool;
    function Redo: WordBool;
    function VTSpellCheck: WordBool;
    procedure Clip(Action: Smallint);
    function RTFImport(const FileName: WideString): WordBool; overload;
    function RTFImport(const FileName: WideString; Extended: OleVariant): WordBool; overload;
    function RTFExport(const FileName: WideString): WordBool;
    function TextImport(const FileName: WideString): WordBool;
    function TextExport(const FileName: WideString): WordBool;
    function FieldInsert(const FieldText: WideString): WordBool;
    function FieldDelete(DeleteTotal: WordBool): WordBool;
    function ObjectInsertAsChar(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                TextPos: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                                ImageDisplayMode: Smallint; ImageSaveMode: Smallint): Smallint; overload;
    function ObjectInsertAsChar(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                TextPos: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                                ImageDisplayMode: Smallint; ImageSaveMode: Smallint; 
                                KindOfObject: OleVariant): Smallint; overload;
    function ObjectInsertFixed(ObjectType: OLE_HANDLE; const FileName: WideString; PosX: Integer; 
                               PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                               ImageDisplayMode: Smallint; ImageSaveMode: Smallint; 
                               SizeMode: Smallint; Textflow: Smallint; DistanceL: Smallint; 
                               DistanceT: Smallint; DistanceR: Smallint; DistanceB: Smallint): Smallint; overload;
    function ObjectInsertFixed(ObjectType: OLE_HANDLE; const FileName: WideString; PosX: Integer; 
                               PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                               ImageDisplayMode: Smallint; ImageSaveMode: Smallint; 
                               SizeMode: Smallint; Textflow: Smallint; DistanceL: Smallint; 
                               DistanceT: Smallint; DistanceR: Smallint; DistanceB: Smallint; 
                               KindOfObject: OleVariant): Smallint; overload;
    function Load(const FileName: WideString): Integer; overload;
    function Load(const FileName: WideString; Offset: OleVariant): Integer; overload;
    function Load(const FileName: WideString; Offset: OleVariant; Format: OleVariant): Integer; overload;
    function Load(const FileName: WideString; Offset: OleVariant; Format: OleVariant; 
                  CurSelection: OleVariant): Integer; overload;
    function Save(const FileName: WideString): Integer; overload;
    function Save(const FileName: WideString; Offset: OleVariant): Integer; overload;
    function Save(const FileName: WideString; Offset: OleVariant; Format: OleVariant): Integer; overload;
    function Save(const FileName: WideString; Offset: OleVariant; Format: OleVariant; 
                  CurSelection: OleVariant): Integer; overload;
    function ObjectDelete(ObjectId: Smallint): WordBool;
    function ObjectNext(ObjectId: Smallint; ObjectGroup: Smallint): Smallint;
    function ViewNextHighlight: WordBool;
    function TableInsert(Rows: Smallint; Columns: Smallint; TextPos: Integer): Smallint; overload;
    function TableInsert(Rows: Smallint; Columns: Smallint; TextPos: Integer; TableId: OleVariant): Smallint; overload;
    function TableDeleteLines: WordBool;
    function TableAttrDialog: WordBool;
    function FieldNext(FieldId: Smallint; FieldGroup: Smallint): Smallint;
    function LoadFromMemory(DataBuffer: OleVariant): WordBool; overload;
    function LoadFromMemory(DataBuffer: OleVariant; Format: OleVariant): WordBool; overload;
    function LoadFromMemory(DataBuffer: OleVariant; Format: OleVariant; CurSelection: OleVariant): WordBool; overload;
    function SaveToMemory: OleVariant; overload;
    function SaveToMemory(Format: OleVariant): OleVariant; overload;
    function SaveToMemory(Format: OleVariant; CurSelection: OleVariant): OleVariant; overload;
    function Find(const FindWhat: WideString): Integer; overload;
    function Find(const FindWhat: WideString; Start: OleVariant): Integer; overload;
    function Find(const FindWhat: WideString; Start: OleVariant; Options: OleVariant): Integer; overload;
    function TableNext(EnumerationNumber: Smallint; var TableId: Smallint): Smallint;
    function HeaderFooterActivate(HeaderFooter: HeaderFooterConstants): WordBool;
    function HeaderFooterSelect(HeaderFooter: HeaderFooterConstants): WordBool;
    function FieldGoto(FieldType: FieldTypeConstants; FieldIdOrName: OleVariant): WordBool;
    function ResetContents: WordBool;
    function InputPosFromPoint(X: Integer; Y: Integer): Integer;
    procedure PrintDoc(const DocName: WideString; FromPage: Smallint; ToPage: Smallint; 
                       Copies: Smallint);
    function ListAttrDialog: WordBool;
    function SaveToMemoryBuffer(DataBuffer: OleVariant): OleVariant; overload;
    function SaveToMemoryBuffer(DataBuffer: OleVariant; Format: OleVariant): OleVariant; overload;
    function SaveToMemoryBuffer(DataBuffer: OleVariant; Format: OleVariant; CurSelection: OleVariant): OleVariant; overload;
    function TableDeleteColumn: WordBool;
    function TableInsertLines(Position: TableInsertConstants; Lines: Smallint): WordBool;
    function TableInsertColumn(Position: TableInsertConstants): WordBool;
    function GetBaseLinePos(Line: Integer): Integer;
    function GetCharFromLine(Line: Integer): Integer;
    function GetLineCount: Integer;
    function GetLineFromChar(Char: Integer): Integer;
    function GetLineFromPoint(X: Integer; Y: Integer): Integer;
    function GetLineRect(Line: Integer): OleVariant;
    function GetTextExtent: OleVariant;
    function TabDialog: WordBool;
    function StyleDialog: WordBool;
    function XMLElements(const ElementName: WideString): IDispatch;
    function EnableAutomationServer: WordBool;
    function TableSplit(Position: TableInsertConstants): WordBool;
    function TableGetOuter(TableId: Smallint): Smallint;
    function TableGetOuterMost(TableId: Smallint): Smallint;
    procedure StartUndoAction;
    procedure EndUndoAction;
    function ObjectInsert(ObjectType: OLE_HANDLE; const FileName: WideString; TextPos: Integer; 
                          Alignment: Smallint; PosX: Integer; PosY: Integer; ScaleX: Smallint; 
                          ScaleY: Smallint; Textflow: Smallint; DistanceL: Smallint; 
                          DistanceT: Smallint; DistanceR: Smallint; DistanceB: Smallint): Smallint; overload;
    function ObjectInsert(ObjectType: OLE_HANDLE; const FileName: WideString; TextPos: Integer; 
                          Alignment: Smallint; PosX: Integer; PosY: Integer; ScaleX: Smallint; 
                          ScaleY: Smallint; Textflow: Smallint; DistanceL: Smallint; 
                          DistanceT: Smallint; DistanceR: Smallint; DistanceB: Smallint; 
                          KindOfObject: OleVariant): Smallint; overload;
    function TextFrameInsertAsChar(TextPos: Integer; Width: Smallint; Height: Smallint): Smallint;
    function TextFrameInsertFixed(PageNo: Integer; PosX: Integer; PosY: Integer; Width: Smallint; 
                                  Height: Smallint; Textflow: Smallint; DistL: Smallint; 
                                  DistT: Smallint; DistR: Smallint; DistB: Smallint): Smallint;
    function TextFrameInsert(TextPos: Integer; Alignment: Smallint; PosX: Integer; PosY: Integer; 
                             Width: Smallint; Height: Smallint; Textflow: Smallint; 
                             DistL: Smallint; DistT: Smallint; DistR: Smallint; DistB: Smallint): Smallint;
    function ObjectAttrDialog: WordBool;
    function TextFrameSelect(TextFrameId: Smallint): WordBool;
    function ObjectGetSelected(ObjectKind: Smallint): Smallint;
    function ImageInsert(const FileName: WideString; TextPos: Integer; Alignment: Smallint; 
                         PosX: Integer; PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                         Textflow: Smallint; DistanceL: Smallint; DistanceT: Smallint; 
                         DistanceR: Smallint; DistanceB: Smallint): Smallint;
    function ImageInsertAsChar(const FileName: WideString; TextPos: Integer; ScaleX: Smallint; 
                               ScaleY: Smallint): Smallint;
    function ImageInsertFixed(const FileName: WideString; PageNo: Integer; PosX: Integer; 
                              PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                              Textflow: Smallint; DistanceL: Smallint; DistanceT: Smallint; 
                              DistanceR: Smallint; DistanceB: Smallint): Smallint;
    function FieldSetInputPos(FieldInputPosition: FieldInputPositionConstants): WordBool;
    function SectionInsert(BreakKind: SectionBreakKindConstants; TextPos: Integer): WordBool;
    function SectionFormatDialog(ActiveTab: Smallint): WordBool;
    function ObjectGetFromName(const ObjectName: WideString): Smallint;
    function ObjectGetFromUserId(ObjectUserId: Integer): Smallint;
    function GrowFont: WordBool;
    function ShrinkFont: WordBool;
    function IncreaseIndent: WordBool;
    function DecreaseIndent: WordBool;
    function MisspelledWordDelete(Number: Integer; const CorrectedText: WideString): WordBool;
    function TableMergeCells: WordBool;
    function TableSplitCells: WordBool;
    function ObjectChangeZOrder(ZOrder: ZOrderConstants): WordBool;
    function TableInsertDialog: Smallint; overload;
    function TableInsertDialog(TableId: OleVariant): Smallint; overload;
    function PageNumberDialog(FieldId: Smallint): WordBool;
    procedure PrintDialog(const DocName: WideString);
    function TableCellSelect(TableId: Smallint; Row: Integer; Column: Integer): WordBool;
    function TableFromSelection(var Row: Integer; var Column: Integer): Smallint;
    function TableDelete(TableId: Smallint): WordBool;
    function LocaleDialog: WordBool;
    function ChangeTextDirection(TextDirection: TextDirectionConstants): WordBool;
    function TableSelectCells(TableId: Smallint; StartRow: Integer; StartColumn: Integer; 
                              EndRow: Integer; EndColumn: Integer): WordBool;
    function PageSelect(Number: Integer): WordBool;
    function SectionSelect(Number: Integer): WordBool;
    function Paste(Format: Smallint): WordBool;
    procedure AboutBox;
    property  ControlInterface: _DTX4OLE read GetControlInterface;
    property  DefaultInterface: _DTX4OLE read GetControlInterface;
    property CurrentInputPosition: OleVariant index 136 read GetOleVariantProp write SetOleVariantProp;
    property ObjectItem: IDispatch index 146 read GetIDispatchProp write SetIDispatchProp;
    property Device: OleVariant index 172 read GetOleVariantProp write SetOleVariantProp;
    property Styles: IDispatch index 178 read GetIDispatchProp write SetIDispatchProp;
    property ColumnWidthsAndDistances: OleVariant index 227 read GetOleVariantProp write SetOleVariantProp;
    property ClipboardFormats: OleVariant index 284 read GetOleVariantProp write SetOleVariantProp;
    property ObjectDistance[index: Smallint]: Smallint read Get_ObjectDistance write Set_ObjectDistance;
    property LoadSaveAttribute[Attribute: LoadSaveAttributeConstants]: OleVariant read Get_LoadSaveAttribute write Set_LoadSaveAttribute;
    property TableColumns[TableId: Smallint]: Smallint read Get_TableColumns;
    property TableRows[TableId: Smallint]: Smallint read Get_TableRows;
    property TableCellText[TableId: Smallint; Row: Smallint; Column: Smallint]: WideString read Get_TableCellText write Set_TableCellText;
    property FieldEditAttr[FieldId: Smallint]: Smallint read Get_FieldEditAttr write Set_FieldEditAttr;
    property FieldData[FieldId: Smallint]: OleVariant read Get_FieldData write Set_FieldData;
    property TableCellAttribute[TableId: Smallint; Row: Smallint; Column: Smallint; 
                                Attribute: TableCellAttributeConstants]: OleVariant read Get_TableCellAttribute write Set_TableCellAttribute;
    property TableCellStart[TableId: Smallint; Row: Smallint; Column: Smallint]: Integer read Get_TableCellStart;
    property TableCellLength[TableId: Smallint; Row: Smallint; Column: Smallint]: Integer read Get_TableCellLength;
    property HeaderFooterPosition[HeaderFooter: HeaderFooterConstants]: Integer read Get_HeaderFooterPosition write Set_HeaderFooterPosition;
    property FieldTypeData[FieldId: Smallint]: OleVariant read Get_FieldTypeData write Set_FieldTypeData;
    property FieldType[FieldId: Smallint]: FieldTypeConstants read Get_FieldType write Set_FieldType;
    property BulletAttribute[Attribute: BulletConstants]: OleVariant read Get_BulletAttribute write Set_BulletAttribute;
    property NumberingAttribute[Attribute: NumberingConstants]: OleVariant read Get_NumberingAttribute write Set_NumberingAttribute;
    property CaretWidth[Caret: Smallint]: Smallint read Get_CaretWidth write Set_CaretWidth;
    property TableNestedLevel[TableId: Smallint]: Integer read Get_TableNestedLevel;
    property TextFrameInternalMargin[index: Smallint]: Smallint read Get_TextFrameInternalMargin write Set_TextFrameInternalMargin;
    property HeaderFooterConnectedToPrevious[HeaderFooter: HeaderFooterConstants]: WordBool read Get_HeaderFooterConnectedToPrevious write Set_HeaderFooterConnectedToPrevious;
    property DisplayColor[index: TextControlColor]: OLE_COLOR read Get_DisplayColor write Set_DisplayColor;
    property MisspelledWordStart[Number: Integer]: Integer read Get_MisspelledWordStart;
    property MisspelledWordLength[Number: Integer]: Integer read Get_MisspelledWordLength;
    property PageImage[Number: Integer; Content: PictureContentConstants]: OleVariant read Get_PageImage;
    property TableCellData[TableId: Smallint; Row: Smallint; Column: Smallint]: WideString read Get_TableCellData write Set_TableCellData;
    property PageBorderAttribute[Attribute: PageBorderAttributeConstants]: OleVariant read Get_PageBorderAttribute write Set_PageBorderAttribute;
    property PageStart[Number: Integer]: Integer read Get_PageStart;
    property PageLength[Number: Integer]: Integer read Get_PageLength;
    property SectionStart[Number: Integer]: Integer read Get_SectionStart;
    property SectionLength[Number: Integer]: Integer read Get_SectionLength;
  published
    property Anchors;
    property  ParentColor;
    property  ParentFont;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property  OnMouseUp;
    property  OnMouseMove;
    property  OnMouseDown;
    property  OnKeyUp;
    property  OnKeyPress;
    property  OnKeyDown;
    property  OnClick;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp stored False;
    property BackColor: TColor index -501 read GetTColorProp write SetTColorProp stored False;
    property ForeColor: TColor index -513 read GetTColorProp write SetTColorProp stored False;
    property hWnd: OLE_HANDLE read Get_hWnd write Set_hWnd stored False;
    property TabKey: WordBool index 1 read GetWordBoolProp write SetWordBoolProp stored False;
    property FormatSelection: WordBool index 2 read GetWordBoolProp write SetWordBoolProp stored False;
    property VTSpellDictionary: WideString index 3 read GetWideStringProp write SetWideStringProp stored False;
    property BorderStyle: Smallint index 4 read GetSmallintProp write SetSmallintProp stored False;
    property BackStyle: Smallint index 5 read GetSmallintProp write SetSmallintProp stored False;
    property FontBold: Smallint index 6 read GetSmallintProp write SetSmallintProp stored False;
    property FontItalic: Smallint index 7 read GetSmallintProp write SetSmallintProp stored False;
    property FontName: WideString index 8 read GetWideStringProp write SetWideStringProp stored False;
    property FontSize: Smallint index 9 read GetSmallintProp write SetSmallintProp stored False;
    property FontStrikethru: Smallint index 10 read GetSmallintProp write SetSmallintProp stored False;
    property FontUnderline: Smallint index 11 read GetSmallintProp write SetSmallintProp stored False;
    property PageWidth: Integer index 12 read GetIntegerProp write SetIntegerProp stored False;
    property PageHeight: Integer index 13 read GetIntegerProp write SetIntegerProp stored False;
    property ScrollBars: Smallint index 14 read GetSmallintProp write SetSmallintProp stored False;
    property Text: WideString index 15 read GetWideStringProp write SetWideStringProp stored False;
    property Alignment: Smallint index 16 read GetSmallintProp write SetSmallintProp stored False;
    property FrameDistance: Smallint index 17 read GetSmallintProp write SetSmallintProp stored False;
    property FrameLineWidth: Smallint index 18 read GetSmallintProp write SetSmallintProp stored False;
    property FrameStyle: Smallint index 19 read GetSmallintProp write SetSmallintProp stored False;
    property ScrollPosX: Integer index 20 read GetIntegerProp write SetIntegerProp stored False;
    property ScrollPosY: Integer index 21 read GetIntegerProp write SetIntegerProp stored False;
    property PageMarginL: Integer index 22 read GetIntegerProp write SetIntegerProp stored False;
    property PageMarginT: Integer index 23 read GetIntegerProp write SetIntegerProp stored False;
    property PageMarginR: Integer index 24 read GetIntegerProp write SetIntegerProp stored False;
    property PageMarginB: Integer index 25 read GetIntegerProp write SetIntegerProp stored False;
    property PrintDevice: Integer index 26 read GetIntegerProp write SetIntegerProp stored False;
    property ControlChars: WordBool index 27 read GetWordBoolProp write SetWordBoolProp stored False;
    property HideSelection: WordBool index 28 read GetWordBoolProp write SetWordBoolProp stored False;
    property InsertionMode: WordBool index 29 read GetWordBoolProp write SetWordBoolProp stored False;
    property SelLength: Integer index 30 read GetIntegerProp write SetIntegerProp stored False;
    property SelStart: Integer index 31 read GetIntegerProp write SetIntegerProp stored False;
    property SelText: WideString index 32 read GetWideStringProp write SetWideStringProp stored False;
    property ClipChildren: WordBool index 33 read GetWordBoolProp write SetWordBoolProp stored False;
    property ClipSiblings: WordBool index 34 read GetWordBoolProp write SetWordBoolProp stored False;
    property SizeMode: Smallint index 35 read GetSmallintProp write SetSmallintProp stored False;
    property Language: Smallint index 36 read GetSmallintProp write SetSmallintProp stored False;
    property ViewMode: Smallint index 37 read GetSmallintProp write SetSmallintProp stored False;
    property PrintOffset: WordBool index 38 read GetWordBoolProp write SetWordBoolProp stored False;
    property ZoomFactor: Smallint index 39 read GetSmallintProp write SetSmallintProp stored False;
    property FieldCurrent: Smallint index 40 read GetSmallintProp write SetSmallintProp stored False;
    property FieldChangeable: WordBool index 41 read GetWordBoolProp write SetWordBoolProp stored False;
    property FieldDeleteable: WordBool index 42 read GetWordBoolProp write SetWordBoolProp stored False;
    property FieldText: WideString index 43 read GetWideStringProp write SetWideStringProp stored False;
    property TabCurrent: Smallint index 44 read GetSmallintProp write SetSmallintProp stored False;
    property TabType: Smallint index 45 read GetSmallintProp write SetSmallintProp stored False;
    property TabPos: Integer index 46 read GetIntegerProp write SetIntegerProp stored False;
    property BaseLine: Smallint index 47 read GetSmallintProp write SetSmallintProp stored False;
    property LineSpacing: Smallint index 48 read GetSmallintProp write SetSmallintProp stored False;
    property PrintZoom: Smallint index 49 read GetSmallintProp write SetSmallintProp stored False;
    property RTFSelText: WideString index 50 read GetWideStringProp write SetWideStringProp stored False;
    property ImageFilters: WideString index 51 read GetWideStringProp write SetWideStringProp stored False;
    property ImageFilename: WideString index 52 read GetWideStringProp write SetWideStringProp stored False;
    property LineSpacingT: Smallint index 53 read GetSmallintProp write SetSmallintProp stored False;
    property ObjectCurrent: Smallint index 54 read GetSmallintProp write SetSmallintProp stored False;
    property StatusBarHandle: Integer index 55 read GetIntegerProp write SetIntegerProp stored False;
    property RulerHandle: Integer index 56 read GetIntegerProp write SetIntegerProp stored False;
    property ButtonBarHandle: Integer index 57 read GetIntegerProp write SetIntegerProp stored False;
    property ObjectScaleX: Smallint index 58 read GetSmallintProp write SetSmallintProp stored False;
    property ObjectScaleY: Smallint index 59 read GetSmallintProp write SetSmallintProp stored False;
    property ObjectTextflow: Smallint index 60 read GetSmallintProp write SetSmallintProp stored False;
    property ObjectSizeMode: Smallint index 61 read GetSmallintProp write SetSmallintProp stored False;
    property ImageSaveMode: Smallint index 62 read GetSmallintProp write SetSmallintProp stored False;
    property ImageDisplayMode: Smallint index 63 read GetSmallintProp write SetSmallintProp stored False;
    property PrintColors: WordBool index 64 read GetWordBoolProp write SetWordBoolProp stored False;
    property EditMode: Smallint index 65 read GetSmallintProp write SetSmallintProp stored False;
    property MousePointer: Smallint index 66 read GetSmallintProp write SetSmallintProp stored False;
    property NextWindow: Integer index 67 read GetIntegerProp write SetIntegerProp stored False;
    property CanUndo: Smallint index 68 read GetSmallintProp write SetSmallintProp stored False;
    property CanRedo: Smallint index 69 read GetSmallintProp write SetSmallintProp stored False;
    property CurrentPages: Integer index 70 read GetIntegerProp write SetIntegerProp stored False;
    property FieldPosX: Integer index 71 read GetIntegerProp write SetIntegerProp stored False;
    property FieldPosY: Integer index 72 read GetIntegerProp write SetIntegerProp stored False;
    property FieldStart: Integer index 73 read GetIntegerProp write SetIntegerProp stored False;
    property FieldEnd: Integer index 74 read GetIntegerProp write SetIntegerProp stored False;
    property IndentL: Smallint index 75 read GetSmallintProp write SetSmallintProp stored False;
    property IndentR: Smallint index 76 read GetSmallintProp write SetSmallintProp stored False;
    property IndentFL: Smallint index 77 read GetSmallintProp write SetSmallintProp stored False;
    property IndentT: Smallint index 78 read GetSmallintProp write SetSmallintProp stored False;
    property IndentB: Smallint index 79 read GetSmallintProp write SetSmallintProp stored False;
    property TextBkColor: TColor index 80 read GetTColorProp write SetTColorProp stored False;
    property DataFormat: Smallint index 81 read GetSmallintProp write SetSmallintProp stored False;
    property DataText: WideString index 82 read GetWideStringProp write SetWideStringProp stored False;
    property ViewSection: Smallint index 105 read GetSmallintProp write SetSmallintProp stored False;
    property ViewImagePath: WideString index 106 read GetWideStringProp write SetWideStringProp stored False;
    property AutoExpand: WordBool index 107 read GetWordBoolProp write SetWordBoolProp stored False;
    property TableCanInsert: WordBool index 110 read GetWordBoolProp write SetWordBoolProp stored False;
    property TableCanDeleteLines: WordBool index 111 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableHyperlinks: WordBool index 113 read GetWordBoolProp write SetWordBoolProp stored False;
    property TableGridLines: WordBool index 115 read GetWordBoolProp write SetWordBoolProp stored False;
    property TableCanChangeAttr: WordBool index 116 read GetWordBoolProp write SetWordBoolProp stored False;
    property TableAtInputPos: Smallint index 120 read GetSmallintProp write SetSmallintProp stored False;
    property TableColAtInputPos: Smallint index 121 read GetSmallintProp write SetSmallintProp stored False;
    property TableRowAtInputPos: Smallint index 122 read GetSmallintProp write SetSmallintProp stored False;
    property FontUnderlineStyle: Smallint index 123 read GetSmallintProp write SetSmallintProp stored False;
    property DataTextFormat: Smallint index 134 read GetSmallintProp write SetSmallintProp stored False;
    property ResourceFile: WideString index 135 read GetWideStringProp write SetWideStringProp stored False;
    property HeaderFooterStyle: TOleEnum index 139 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property HeaderFooter: TOleEnum index 140 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property FieldAtInputPos: Smallint index 145 read GetSmallintProp write SetSmallintProp stored False;
    property LockWindowUpdate: WordBool index 150 read GetWordBoolProp write SetWordBoolProp stored False;
    property CanCopy: WordBool index 151 read GetWordBoolProp write SetWordBoolProp stored False;
    property CanPaste: WordBool index 152 read GetWordBoolProp write SetWordBoolProp stored False;
    property ListType: TOleEnum index 155 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property TableCanDeleteColumn: WordBool index 161 read GetWordBoolProp write SetWordBoolProp stored False;
    property TableCanInsertColumn: WordBool index 162 read GetWordBoolProp write SetWordBoolProp stored False;
    property TableCanInsertLines: WordBool index 163 read GetWordBoolProp write SetWordBoolProp stored False;
    property StyleCurrent: WideString index 175 read GetWideStringProp write SetWideStringProp stored False;
    property WordWrapMode: Smallint index 176 read GetSmallintProp write SetSmallintProp stored False;
    property XMLEditMode: Smallint index 179 read GetSmallintProp write SetSmallintProp stored False;
    property ImageExportFilters: WideString index 180 read GetWideStringProp write SetWideStringProp stored False;
    property ImageExportFormat: Smallint index 181 read GetSmallintProp write SetSmallintProp stored False;
    property ImageExportFilename: WideString index 182 read GetWideStringProp write SetWideStringProp stored False;
    property TableCanSplit: WordBool index 184 read GetWordBoolProp write SetWordBoolProp stored False;
    property ImageExportCompressionQuality: Smallint index 189 read GetSmallintProp write SetSmallintProp stored False;
    property ImageExportMaxResolution: Smallint index 190 read GetSmallintProp write SetSmallintProp stored False;
    property AllowUndo: WordBool index 191 read GetWordBoolProp write SetWordBoolProp stored False;
    property TextFrameBackColor: TColor index 201 read GetTColorProp write SetTColorProp stored False;
    property TextFrameBorderWidth: Smallint index 202 read GetSmallintProp write SetSmallintProp stored False;
    property ObjectWidth: Smallint index 204 read GetSmallintProp write SetSmallintProp stored False;
    property ObjectHeight: Smallint index 205 read GetSmallintProp write SetSmallintProp stored False;
    property TextFrameMarkerLines: WordBool index 209 read GetWordBoolProp write SetWordBoolProp stored False;
    property HeaderFooterAtInputPos: Smallint index 210 read GetSmallintProp write SetSmallintProp stored False;
    property VerticalRulerHandle: Integer index 211 read GetIntegerProp write SetIntegerProp stored False;
    property KeepLinesTogether: WordBool index 212 read GetWordBoolProp write SetWordBoolProp stored False;
    property KeepWithNext: WordBool index 213 read GetWordBoolProp write SetWordBoolProp stored False;
    property PageBreakBefore: WordBool index 214 read GetWordBoolProp write SetWordBoolProp stored False;
    property WidowOrphanLines: Smallint index 215 read GetSmallintProp write SetSmallintProp stored False;
    property FieldLinkTargetMarkers: WordBool index 216 read GetWordBoolProp write SetWordBoolProp stored False;
    property SectionCurrent: Smallint index 218 read GetSmallintProp write SetSmallintProp stored False;
    property SectionAtInputPos: Smallint index 221 read GetSmallintProp write SetSmallintProp stored False;
    property SectionCount: Smallint index 222 read GetSmallintProp write SetSmallintProp stored False;
    property SectionBreakKind: TOleEnum index 223 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property PageOrientation: Smallint index 225 read GetSmallintProp write SetSmallintProp stored False;
    property PageViewStyle: TOleEnum index 226 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Columns: Smallint index 228 read GetSmallintProp write SetSmallintProp stored False;
    property ColumnDistance: Smallint index 229 read GetSmallintProp write SetSmallintProp stored False;
    property ColumnLineColor: TColor index 230 read GetTColorProp write SetTColorProp stored False;
    property ColumnLineWidth: Smallint index 231 read GetSmallintProp write SetSmallintProp stored False;
    property FontSettings: Smallint index 232 read GetSmallintProp write SetSmallintProp stored False;
    property ObjectName: WideString index 233 read GetWideStringProp write SetWideStringProp stored False;
    property ObjectUserId: Integer index 234 read GetIntegerProp write SetIntegerProp stored False;
    property ObjectInsertionMode: TOleEnum index 238 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property ObjectPosX: Integer index 239 read GetIntegerProp write SetIntegerProp stored False;
    property ObjectPosY: Integer index 240 read GetIntegerProp write SetIntegerProp stored False;
    property AllowDrag: WordBool index 241 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowDrop: WordBool index 242 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableSpellChecking: WordBool index 247 read GetWordBoolProp write SetWordBoolProp stored False;
    property MisspelledWords: Integer index 248 read GetIntegerProp write SetIntegerProp stored False;
    property MisspelledWordAtInputPos: Integer index 252 read GetIntegerProp write SetIntegerProp stored False;
    property TableCanMergeCells: WordBool index 256 read GetWordBoolProp write SetWordBoolProp stored False;
    property TableCanSplitCells: WordBool index 257 read GetWordBoolProp write SetWordBoolProp stored False;
    property SelectionViewMode: Smallint index 259 read GetSmallintProp write SetSmallintProp stored False;
    property ObjectTransparency: Smallint index 262 read GetSmallintProp write SetSmallintProp stored False;
    property SectionRestartPageNumbering: Smallint index 265 read GetSmallintProp write SetSmallintProp stored False;
    property PermanentControlChars: TOleEnum index 266 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property RightToLeft: WordBool index 271 read GetWordBoolProp write SetWordBoolProp stored False;
    property TextDirection: TOleEnum index 273 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Locale: Integer index 274 read GetIntegerProp write SetIntegerProp stored False;
    property Justification: TOleEnum index 276 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnDblClick: TNotifyEvent read FOnDblClick write FOnDblClick;
    property OnHScroll: TNotifyEvent read FOnHScroll write FOnHScroll;
    property OnVScroll: TNotifyEvent read FOnVScroll write FOnVScroll;
    property OnPosChange: TNotifyEvent read FOnPosChange write FOnPosChange;
    property OnMove: TNotifyEvent read FOnMove write FOnMove;
    property OnSize: TNotifyEvent read FOnSize write FOnSize;
    property OnFieldChanged: TTXTextControlFieldChanged read FOnFieldChanged write FOnFieldChanged;
    property OnFieldClicked: TTXTextControlFieldClicked read FOnFieldClicked write FOnFieldClicked;
    property OnFieldCreated: TTXTextControlFieldCreated read FOnFieldCreated write FOnFieldCreated;
    property OnFieldDblClicked: TTXTextControlFieldDblClicked read FOnFieldDblClicked write FOnFieldDblClicked;
    property OnFieldDeleted: TTXTextControlFieldDeleted read FOnFieldDeleted write FOnFieldDeleted;
    property OnFieldSetCursor: TTXTextControlFieldSetCursor read FOnFieldSetCursor write FOnFieldSetCursor;
    property OnObjectClicked: TTXTextControlObjectClicked read FOnObjectClicked write FOnObjectClicked;
    property OnObjectMoved: TTXTextControlObjectMoved read FOnObjectMoved write FOnObjectMoved;
    property OnObjectSized: TTXTextControlObjectSized read FOnObjectSized write FOnObjectSized;
    property OnObjectDblClicked: TTXTextControlObjectDblClicked read FOnObjectDblClicked write FOnObjectDblClicked;
    property OnError: TTXTextControlError read FOnError write FOnError;
    property OnObjectDeleted: TTXTextControlObjectDeleted read FOnObjectDeleted write FOnObjectDeleted;
    property OnObjectCreated: TTXTextControlObjectCreated read FOnObjectCreated write FOnObjectCreated;
    property OnConnectTools: TNotifyEvent read FOnConnectTools write FOnConnectTools;
    property OnObjectSetZoom: TTXTextControlObjectSetZoom read FOnObjectSetZoom write FOnObjectSetZoom;
    property OnObjectGetZoom: TTXTextControlObjectGetZoom read FOnObjectGetZoom write FOnObjectGetZoom;
    property OnObjectPrint: TTXTextControlObjectPrint read FOnObjectPrint write FOnObjectPrint;
    property OnObjectGetData: TTXTextControlObjectGetData read FOnObjectGetData write FOnObjectGetData;
    property OnObjectSetData: TTXTextControlObjectSetData read FOnObjectSetData write FOnObjectSetData;
    property OnObjectGethWnd: TTXTextControlObjectGethWnd read FOnObjectGethWnd write FOnObjectGethWnd;
    property OnObjectScrollOut: TTXTextControlObjectScrollOut read FOnObjectScrollOut write FOnObjectScrollOut;
    property OnAutoLink: TNotifyEvent read FOnAutoLink write FOnAutoLink;
    property OnFieldEntered: TTXTextControlFieldEntered read FOnFieldEntered write FOnFieldEntered;
    property OnFieldLeft: TTXTextControlFieldLeft read FOnFieldLeft write FOnFieldLeft;
    property OnHExpand: TNotifyEvent read FOnHExpand write FOnHExpand;
    property OnVExpand: TNotifyEvent read FOnVExpand write FOnVExpand;
    property OnZoomed: TNotifyEvent read FOnZoomed write FOnZoomed;
    property OnCharFormatChange: TNotifyEvent read FOnCharFormatChange write FOnCharFormatChange;
    property OnPageFormatChange: TNotifyEvent read FOnPageFormatChange write FOnPageFormatChange;
    property OnParagraphChange: TNotifyEvent read FOnParagraphChange write FOnParagraphChange;
    property OnParagraphFormatChange: TNotifyEvent read FOnParagraphFormatChange write FOnParagraphFormatChange;
    property OnCaretOut: TNotifyEvent read FOnCaretOut write FOnCaretOut;
    property OnCaretOutLeft: TNotifyEvent read FOnCaretOutLeft write FOnCaretOutLeft;
    property OnCaretOutTop: TNotifyEvent read FOnCaretOutTop write FOnCaretOutTop;
    property OnCaretOutRight: TNotifyEvent read FOnCaretOutRight write FOnCaretOutRight;
    property OnCaretOutBottom: TNotifyEvent read FOnCaretOutBottom write FOnCaretOutBottom;
    property OnAutoScroll: TNotifyEvent read FOnAutoScroll write FOnAutoScroll;
    property OnKeyStateChange: TNotifyEvent read FOnKeyStateChange write FOnKeyStateChange;
    property OnViewClicked: TTXTextControlViewClicked read FOnViewClicked write FOnViewClicked;
    property OnViewWordDblClicked: TTXTextControlViewWordDblClicked read FOnViewWordDblClicked write FOnViewWordDblClicked;
    property OnTableCreated: TTXTextControlTableCreated read FOnTableCreated write FOnTableCreated;
    property OnTableDeleted: TTXTextControlTableDeleted read FOnTableDeleted write FOnTableDeleted;
    property OnHeaderFooterActivated: TTXTextControlHeaderFooterActivated read FOnHeaderFooterActivated write FOnHeaderFooterActivated;
    property OnHeaderFooterDeactivated: TTXTextControlHeaderFooterDeactivated read FOnHeaderFooterDeactivated write FOnHeaderFooterDeactivated;
    property OnFieldLinkClicked: TTXTextControlFieldLinkClicked read FOnFieldLinkClicked write FOnFieldLinkClicked;
    property OnStyleListChanged: TNotifyEvent read FOnStyleListChanged write FOnStyleListChanged;
    property OnStyleChanged: TNotifyEvent read FOnStyleChanged write FOnStyleChanged;
    property OnTableFormatChanged: TNotifyEvent read FOnTableFormatChanged write FOnTableFormatChanged;
    property OnXMLNotWellFormed: TTXTextControlXMLNotWellFormed read FOnXMLNotWellFormed write FOnXMLNotWellFormed;
    property OnXMLInvalid: TTXTextControlXMLInvalid read FOnXMLInvalid write FOnXMLInvalid;
    property OnObjectRightClicked: TTXTextControlObjectRightClicked read FOnObjectRightClicked write FOnObjectRightClicked;
    property OnTextFrameActivated: TTXTextControlTextFrameActivated read FOnTextFrameActivated write FOnTextFrameActivated;
    property OnTextFrameDeactivated: TTXTextControlTextFrameDeactivated read FOnTextFrameDeactivated write FOnTextFrameDeactivated;
    property OnPageChanged: TNotifyEvent read FOnPageChanged write FOnPageChanged;
    property OnSectionChanged: TNotifyEvent read FOnSectionChanged write FOnSectionChanged;
    property OnSpellCheckText: TTXTextControlSpellCheckText read FOnSpellCheckText write FOnSpellCheckText;
    property OnContextMenuOpening: TTXTextControlContextMenuOpening read FOnContextMenuOpening write FOnContextMenuOpening;
  end;

// *********************************************************************//
// The Class CoTXStyle provides a Create and CreateRemote method to          
// create instances of the default interface IStyle exposed by              
// the CoClass TXStyle. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTXStyle = class
    class function Create: IStyle;
    class function CreateRemote(const MachineName: string): IStyle;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTXStyle
// Help String      : TX - Text Control Formatting Style
// Default Interface: IStyle
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TTXStyle = class(TOleServer)
  private
    FIntf: IStyle;
    function GetDefaultInterface: IStyle;
  protected
    procedure InitServerData; override;
    function Get_StyleName: WideString;
    procedure Set_StyleName(const Value: WideString);
    function Get_FontName: WideString;
    procedure Set_FontName(const Value: WideString);
    function Get_FontSize: Smallint;
    procedure Set_FontSize(Value: Smallint);
    function Get_FontBold: Smallint;
    procedure Set_FontBold(Value: Smallint);
    function Get_FontItalic: Smallint;
    procedure Set_FontItalic(Value: Smallint);
    function Get_FontUnderline: Smallint;
    procedure Set_FontUnderline(Value: Smallint);
    function Get_FontStrikethru: Smallint;
    procedure Set_FontStrikethru(Value: Smallint);
    function Get_BaseLine: Smallint;
    procedure Set_BaseLine(Value: Smallint);
    function Get_BaselineType: Smallint;
    procedure Set_BaselineType(Value: Smallint);
    function Get_ForeColor: Integer;
    procedure Set_ForeColor(Value: Integer);
    function Get_TextBkColor: Integer;
    procedure Set_TextBkColor(Value: Integer);
    function Get_Alignment: Smallint;
    procedure Set_Alignment(Value: Smallint);
    function Get_IndentL: Smallint;
    procedure Set_IndentL(Value: Smallint);
    function Get_IndentR: Smallint;
    procedure Set_IndentR(Value: Smallint);
    function Get_IndentFL: Smallint;
    procedure Set_IndentFL(Value: Smallint);
    function Get_IndentT: Smallint;
    procedure Set_IndentT(Value: Smallint);
    function Get_IndentB: Smallint;
    procedure Set_IndentB(Value: Smallint);
    function Get_LineSpacing: Smallint;
    procedure Set_LineSpacing(Value: Smallint);
    function Get_LineSpacingT: Smallint;
    procedure Set_LineSpacingT(Value: Smallint);
    function Get_FrameStyle: Integer;
    procedure Set_FrameStyle(Value: Integer);
    function Get_FrameDistance: Smallint;
    procedure Set_FrameDistance(Value: Smallint);
    function Get_FrameLineWidth: Smallint;
    procedure Set_FrameLineWidth(Value: Smallint);
    function Get_ListType: ListTypeConstants;
    procedure Set_ListType(Value: ListTypeConstants);
    function Get_StyleType: Smallint;
    procedure Set_StyleType(Value: Smallint);
    function Get_NextParaStyle: WideString;
    procedure Set_NextParaStyle(const Value: WideString);
    function Get_KeepLinesTogether: WordBool;
    procedure Set_KeepLinesTogether(Value: WordBool);
    function Get_KeepWithNext: WordBool;
    procedure Set_KeepWithNext(Value: WordBool);
    function Get_PageBreakBefore: WordBool;
    procedure Set_PageBreakBefore(Value: WordBool);
    function Get_WidowOrphanLines: Smallint;
    procedure Set_WidowOrphanLines(Value: Smallint);
    function Get_TabPos(index: Smallint): Smallint;
    procedure Set_TabPos(index: Smallint; Param2: Smallint);
    function Get_TabType(index: Smallint): Smallint;
    procedure Set_TabType(index: Smallint; Param2: Smallint);
    function Get_BulletAttribute(Attribute: BulletConstants): OleVariant;
    procedure Set_BulletAttribute(Attribute: BulletConstants; Param2: OleVariant);
    function Get_NumberingAttribute(Attribute: NumberingConstants): OleVariant;
    procedure Set_NumberingAttribute(Attribute: NumberingConstants; Param2: OleVariant);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IStyle);
    procedure Disconnect; override;
    procedure Apply;
    property DefaultInterface: IStyle read GetDefaultInterface;
    property TabPos[index: Smallint]: Smallint read Get_TabPos write Set_TabPos;
    property TabType[index: Smallint]: Smallint read Get_TabType write Set_TabType;
    property BulletAttribute[Attribute: BulletConstants]: OleVariant read Get_BulletAttribute write Set_BulletAttribute;
    property NumberingAttribute[Attribute: NumberingConstants]: OleVariant read Get_NumberingAttribute write Set_NumberingAttribute;
    property StyleName: WideString read Get_StyleName write Set_StyleName;
    property FontName: WideString read Get_FontName write Set_FontName;
    property FontSize: Smallint read Get_FontSize write Set_FontSize;
    property FontBold: Smallint read Get_FontBold write Set_FontBold;
    property FontItalic: Smallint read Get_FontItalic write Set_FontItalic;
    property FontUnderline: Smallint read Get_FontUnderline write Set_FontUnderline;
    property FontStrikethru: Smallint read Get_FontStrikethru write Set_FontStrikethru;
    property BaseLine: Smallint read Get_BaseLine write Set_BaseLine;
    property BaselineType: Smallint read Get_BaselineType write Set_BaselineType;
    property ForeColor: Integer read Get_ForeColor write Set_ForeColor;
    property TextBkColor: Integer read Get_TextBkColor write Set_TextBkColor;
    property Alignment: Smallint read Get_Alignment write Set_Alignment;
    property IndentL: Smallint read Get_IndentL write Set_IndentL;
    property IndentR: Smallint read Get_IndentR write Set_IndentR;
    property IndentFL: Smallint read Get_IndentFL write Set_IndentFL;
    property IndentT: Smallint read Get_IndentT write Set_IndentT;
    property IndentB: Smallint read Get_IndentB write Set_IndentB;
    property LineSpacing: Smallint read Get_LineSpacing write Set_LineSpacing;
    property LineSpacingT: Smallint read Get_LineSpacingT write Set_LineSpacingT;
    property FrameStyle: Integer read Get_FrameStyle write Set_FrameStyle;
    property FrameDistance: Smallint read Get_FrameDistance write Set_FrameDistance;
    property FrameLineWidth: Smallint read Get_FrameLineWidth write Set_FrameLineWidth;
    property ListType: ListTypeConstants read Get_ListType write Set_ListType;
    property StyleType: Smallint read Get_StyleType write Set_StyleType;
    property NextParaStyle: WideString read Get_NextParaStyle write Set_NextParaStyle;
    property KeepLinesTogether: WordBool read Get_KeepLinesTogether write Set_KeepLinesTogether;
    property KeepWithNext: WordBool read Get_KeepWithNext write Set_KeepWithNext;
    property PageBreakBefore: WordBool read Get_PageBreakBefore write Set_PageBreakBefore;
    property WidowOrphanLines: Smallint read Get_WidowOrphanLines write Set_WidowOrphanLines;
  published
  end;

// *********************************************************************//
// The Class CoTXStyles provides a Create and CreateRemote method to          
// create instances of the default interface IStyles exposed by              
// the CoClass TXStyles. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTXStyles = class
    class function Create: IStyles;
    class function CreateRemote(const MachineName: string): IStyles;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTXStyles
// Help String      : TX - Text Control Style Collection
// Default Interface: IStyles
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TTXStyles = class(TOleServer)
  private
    FIntf: IStyles;
    function GetDefaultInterface: IStyles;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    procedure Set_Count(Value: Integer);
    function Get__NewEnum: IUnknown;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IStyles);
    procedure Disconnect; override;
    function Item(const StyleName: WideString): IDispatch;
    property DefaultInterface: IStyles read GetDefaultInterface;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count write Set_Count;
  published
  end;

// *********************************************************************//
// The Class CoTXXMLElement provides a Create and CreateRemote method to          
// create instances of the default interface IXMLElement exposed by              
// the CoClass TXXMLElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTXXMLElement = class
    class function Create: IXMLElement;
    class function CreateRemote(const MachineName: string): IXMLElement;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTXXMLElement
// Help String      : TX - Text Control XML Element
// Default Interface: IXMLElement
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TTXXMLElement = class(TOleServer)
  private
    FIntf: IXMLElement;
    function GetDefaultInterface: IXMLElement;
  protected
    procedure InitServerData; override;
    function Get_Text: WideString;
    procedure Set_Text(const Value: WideString);
    function Get_ElementName: WideString;
    procedure Set_ElementName(const Value: WideString);
    function Get_AutoText: WordBool;
    procedure Set_AutoText(Value: WordBool);
    function Get_AutoSelect: WordBool;
    procedure Set_AutoSelect(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IXMLElement);
    procedure Disconnect; override;
    procedure Select;
    function AddChild(const XMLElement: IDispatch): Smallint; overload;
    function AddChild(const XMLElement: IDispatch; before: OleVariant): Smallint; overload;
    function AddChild(const XMLElement: IDispatch; before: OleVariant; after: OleVariant): Smallint; overload;
    function RemoveChild(const ElementName: WideString): Smallint; overload;
    function RemoveChild(const ElementName: WideString; index: OleVariant): Smallint; overload;
    function ChildItem(const ElementName: WideString): IDispatch; overload;
    function ChildItem(const ElementName: WideString; index: OleVariant): IDispatch; overload;
    property DefaultInterface: IXMLElement read GetDefaultInterface;
    property Text: WideString read Get_Text write Set_Text;
    property ElementName: WideString read Get_ElementName write Set_ElementName;
    property AutoText: WordBool read Get_AutoText write Set_AutoText;
    property AutoSelect: WordBool read Get_AutoSelect write Set_AutoSelect;
  published
  end;

// *********************************************************************//
// The Class CoTXXMLElements provides a Create and CreateRemote method to          
// create instances of the default interface IXMLElements exposed by              
// the CoClass TXXMLElements. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTXXMLElements = class
    class function Create: IXMLElements;
    class function CreateRemote(const MachineName: string): IXMLElements;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTXXMLElements
// Help String      : TX - Text Control XML Element Collection
// Default Interface: IXMLElements
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TTXXMLElements = class(TOleServer)
  private
    FIntf: IXMLElements;
    function GetDefaultInterface: IXMLElements;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    procedure Set_Count(Value: Integer);
    function Get_InputItemIndex: Integer;
    procedure Set_InputItemIndex(Value: Integer);
    function Get__NewEnum: IUnknown;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IXMLElements);
    procedure Disconnect; override;
    function Item(index: Integer): IDispatch;
    function Add(const XMLElement: IDispatch): Smallint; overload;
    function Add(const XMLElement: IDispatch; before: OleVariant): Smallint; overload;
    function Add(const XMLElement: IDispatch; before: OleVariant; after: OleVariant): Smallint; overload;
    function Remove(index: Integer): Smallint;
    function InputItem: IDispatch;
    property DefaultInterface: IXMLElements read GetDefaultInterface;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count write Set_Count;
    property InputItemIndex: Integer read Get_InputItemIndex write Set_InputItemIndex;
  published
  end;

// *********************************************************************//
// The Class CoTXLicenseManager provides a Create and CreateRemote method to          
// create instances of the default interface ILicManager exposed by              
// the CoClass TXLicenseManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTXLicenseManager = class
    class function Create: ILicManager;
    class function CreateRemote(const MachineName: string): ILicManager;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTXLicenseManager
// Help String      : TX - Text Control License Manager
// Default Interface: ILicManager
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TTXLicenseManager = class(TOleServer)
  private
    FIntf: ILicManager;
    function GetDefaultInterface: ILicManager;
  protected
    procedure InitServerData; override;
    function Get_Text: WideString;
    procedure Set_Text(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILicManager);
    procedure Disconnect; override;
    property DefaultInterface: ILicManager read GetDefaultInterface;
    property Text: WideString read Get_Text write Set_Text;
  published
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TTXButtonBar
// Help String      : TX - ButtonBar Control
// Default Interface: _DTXBBAR
// Def. Intf. DISP? : Yes
// Event   Interface: _DTXBBAREvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TTXButtonBar = class(TOleControl)
  private
    FIntf: _DTXBBAR;
    function  GetControlInterface: _DTXBBAR;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_hWnd: OLE_HANDLE;
    procedure Set_hWnd(Value: OLE_HANDLE);
    function Get_DisplayColor(index: ButtonBarColor): OLE_COLOR;
    procedure Set_DisplayColor(index: ButtonBarColor; Param2: OLE_COLOR);
  public
    procedure AboutBox;
    property  ControlInterface: _DTXBBAR read GetControlInterface;
    property  DefaultInterface: _DTXBBAR read GetControlInterface;
    property DisplayColor[index: ButtonBarColor]: OLE_COLOR read Get_DisplayColor write Set_DisplayColor;
  published
    property Anchors;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property  OnMouseUp;
    property  OnMouseMove;
    property  OnMouseDown;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp stored False;
    property BorderStyle: Smallint index -504 read GetSmallintProp write SetSmallintProp stored False;
    property hWnd: OLE_HANDLE read Get_hWnd write Set_hWnd stored False;
    property Language: Smallint index 1 read GetSmallintProp write SetSmallintProp stored False;
    property ResourceFile: WideString index 2 read GetWideStringProp write SetWideStringProp stored False;
    property Style: TOleEnum index 3 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Appearance: TOleEnum index 4 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property PosFontName: Smallint index 5 read GetSmallintProp write SetSmallintProp stored False;
    property PosFontSize: Smallint index 6 read GetSmallintProp write SetSmallintProp stored False;
    property PosFontBold: Smallint index 7 read GetSmallintProp write SetSmallintProp stored False;
    property PosFontItalic: Smallint index 8 read GetSmallintProp write SetSmallintProp stored False;
    property PosFontUnderline: Smallint index 9 read GetSmallintProp write SetSmallintProp stored False;
    property PosParaLeft: Smallint index 10 read GetSmallintProp write SetSmallintProp stored False;
    property PosParaRight: Smallint index 11 read GetSmallintProp write SetSmallintProp stored False;
    property PosParaCentered: Smallint index 12 read GetSmallintProp write SetSmallintProp stored False;
    property PosParaJustified: Smallint index 13 read GetSmallintProp write SetSmallintProp stored False;
    property PosListBulleted: Smallint index 14 read GetSmallintProp write SetSmallintProp stored False;
    property PosListNumbered: Smallint index 15 read GetSmallintProp write SetSmallintProp stored False;
    property PosZoom: Smallint index 16 read GetSmallintProp write SetSmallintProp stored False;
    property PosControlChars: Smallint index 17 read GetSmallintProp write SetSmallintProp stored False;
    property PosTabLeft: Smallint index 18 read GetSmallintProp write SetSmallintProp stored False;
    property PosTabRight: Smallint index 19 read GetSmallintProp write SetSmallintProp stored False;
    property PosTabCentered: Smallint index 20 read GetSmallintProp write SetSmallintProp stored False;
    property PosTabDecimal: Smallint index 21 read GetSmallintProp write SetSmallintProp stored False;
    property PosStyle: Smallint index 22 read GetSmallintProp write SetSmallintProp stored False;
    property PosXMLAdd: Smallint index 23 read GetSmallintProp write SetSmallintProp stored False;
    property PosXMLRemove: Smallint index 24 read GetSmallintProp write SetSmallintProp stored False;
    property PosTabSelect: Smallint index 25 read GetSmallintProp write SetSmallintProp stored False;
    property PosListStructured: Smallint index 26 read GetSmallintProp write SetSmallintProp stored False;
    property PosGrowFont: Smallint index 28 read GetSmallintProp write SetSmallintProp stored False;
    property PosShrinkFont: Smallint index 29 read GetSmallintProp write SetSmallintProp stored False;
    property PosIncreaseIndent: Smallint index 30 read GetSmallintProp write SetSmallintProp stored False;
    property PosDecreaseIndent: Smallint index 31 read GetSmallintProp write SetSmallintProp stored False;
    property PosStrikethru: Smallint index 32 read GetSmallintProp write SetSmallintProp stored False;
    property PosSubscript: Smallint index 33 read GetSmallintProp write SetSmallintProp stored False;
    property PosSuperscript: Smallint index 34 read GetSmallintProp write SetSmallintProp stored False;
    property PosRightToLeft: Smallint index 35 read GetSmallintProp write SetSmallintProp stored False;
    property PosLeftToRight: Smallint index 36 read GetSmallintProp write SetSmallintProp stored False;
    property RightToLeft: WordBool index 37 read GetWordBoolProp write SetWordBoolProp stored False;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TTXRuler
// Help String      : TX - Ruler Control
// Default Interface: _DTXRULER
// Def. Intf. DISP? : Yes
// Event   Interface: _DTXRULEREvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TTXRuler = class(TOleControl)
  private
    FIntf: _DTXRULER;
    function  GetControlInterface: _DTXRULER;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_hWnd: OLE_HANDLE;
    procedure Set_hWnd(Value: OLE_HANDLE);
    function Get_DisplayColor(index: RulerBarColor): OLE_COLOR;
    procedure Set_DisplayColor(index: RulerBarColor; Param2: OLE_COLOR);
  public
    procedure AboutBox;
    property  ControlInterface: _DTXRULER read GetControlInterface;
    property  DefaultInterface: _DTXRULER read GetControlInterface;
    property DisplayColor[index: RulerBarColor]: OLE_COLOR read Get_DisplayColor write Set_DisplayColor;
  published
    property Anchors;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property  OnMouseUp;
    property  OnMouseMove;
    property  OnMouseDown;
    property ScaleUnits: Smallint index 1 read GetSmallintProp write SetSmallintProp stored False;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp stored False;
    property BorderStyle: Smallint index -504 read GetSmallintProp write SetSmallintProp stored False;
    property hWnd: OLE_HANDLE read Get_hWnd write Set_hWnd stored False;
    property Language: Smallint index 2 read GetSmallintProp write SetSmallintProp stored False;
    property ResourceFile: WideString index 3 read GetWideStringProp write SetWideStringProp stored False;
    property Appearance: TOleEnum index 4 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Direction: TOleEnum index 5 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property EnablePageMargins: WordBool index 6 read GetWordBoolProp write SetWordBoolProp stored False;
    property RightToLeft: WordBool index 8 read GetWordBoolProp write SetWordBoolProp stored False;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TTXStatusBar
// Help String      : TX - StatusBar Control
// Default Interface: _DTXSBAR
// Def. Intf. DISP? : Yes
// Event   Interface: _DTXSBAREvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TTXStatusBar = class(TOleControl)
  private
    FIntf: _DTXSBAR;
    function  GetControlInterface: _DTXSBAR;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_hWnd: OLE_HANDLE;
    procedure Set_hWnd(Value: OLE_HANDLE);
    function Get_DisplayColor(index: StatusBarColor): OLE_COLOR;
    procedure Set_DisplayColor(index: StatusBarColor; Param2: OLE_COLOR);
  public
    procedure AboutBox;
    property  ControlInterface: _DTXSBAR read GetControlInterface;
    property  DefaultInterface: _DTXSBAR read GetControlInterface;
    property DisplayColor[index: StatusBarColor]: OLE_COLOR read Get_DisplayColor write Set_DisplayColor;
  published
    property Anchors;
    property  ParentFont;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property  OnMouseUp;
    property  OnMouseMove;
    property  OnMouseDown;
    property FontBold: WordBool index 1 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontItalic: WordBool index 2 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontName: WideString index 3 read GetWideStringProp write SetWideStringProp stored False;
    property FontSize: Single index 4 read GetSingleProp write SetSingleProp stored False;
    property FontStrikethru: WordBool index 5 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontUnderline: WordBool index 6 read GetWordBoolProp write SetWordBoolProp stored False;
    property TextLine: WideString index 7 read GetWideStringProp write SetWideStringProp stored False;
    property TextColumn: WideString index 8 read GetWideStringProp write SetWideStringProp stored False;
    property TextPage: WideString index 9 read GetWideStringProp write SetWideStringProp stored False;
    property PageMode: Smallint index 10 read GetSmallintProp write SetSmallintProp stored False;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp stored False;
    property BorderStyle: Smallint index -504 read GetSmallintProp write SetSmallintProp stored False;
    property Font: TFont index -512 read GetTFontProp write SetTFontProp stored False;
    property Text: WideString index -517 read GetWideStringProp write SetWideStringProp stored False;
    property hWnd: OLE_HANDLE read Get_hWnd write Set_hWnd stored False;
    property Language: Smallint index 11 read GetSmallintProp write SetSmallintProp stored False;
    property ResourceFile: WideString index 12 read GetWideStringProp write SetWideStringProp stored False;
    property Appearance: TOleEnum index 13 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property TextSection: WideString index 14 read GetWideStringProp write SetWideStringProp stored False;
    property TextPageCounter: WideString index 15 read GetWideStringProp write SetWideStringProp stored False;
    property TextSectionCounter: WideString index 16 read GetWideStringProp write SetWideStringProp stored False;
    property ShowPage: WordBool index 17 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowLine: WordBool index 18 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowColumn: WordBool index 19 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowSection: WordBool index 20 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowPageCounter: WordBool index 21 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowSectionCounter: WordBool index 22 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowZoomTrackBar: WordBool index 24 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowLocale: WordBool index 25 read GetWordBoolProp write SetWordBoolProp stored False;
    property RightToLeft: WordBool index 26 read GetWordBoolProp write SetWordBoolProp stored False;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'TXTextControl';

  dtlOcxPage = 'TXTextControl';

implementation

uses System.Win.ComObj;

procedure TTXTextControl.InitControlData;
const
  CEventDispIDs: array [0..63] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009, $0000000A, $0000000B, $0000000C,
    $0000000D, $0000000E, $0000000F, $00000010, $00000011, $FFFFFDA0,
    $00000012, $00000013, $00000014, $00000015, $00000016, $00000017,
    $00000018, $00000019, $0000001A, $0000001B, $0000001C, $0000001D,
    $0000001E, $0000001F, $00000020, $00000021, $00000022, $00000023,
    $00000024, $00000025, $00000026, $00000027, $00000028, $00000029,
    $0000002A, $0000002B, $0000002C, $0000002D, $0000002E, $0000002F,
    $00000030, $00000031, $00000032, $00000033, $00000034, $00000035,
    $00000036, $00000037, $00000038, $00000039, $0000003A, $0000003B,
    $0000003C, $0000003D, $0000003E, $0000003F);
  CControlData: TControlData2 = (
    ClassID:      '{510E4201-2487-11E4-A584-0013D350667C}';
    EventIID:     '{510E4208-2487-11E4-A584-0013D350667C}';
    EventCount:   64;
    EventDispIDs: @CEventDispIDs;
    LicenseKey:   nil (*HR:$80040112*);
    Flags:        $0000000B;
    Version:      500);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := UIntPtr(@@FOnChange) - UIntPtr(Self);
end;

procedure TTXTextControl.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DTX4OLE;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TTXTextControl.GetControlInterface: _DTX4OLE;
begin
  CreateControl;
  Result := FIntf;
end;

function TTXTextControl.Get_hWnd: OLE_HANDLE;
begin
  Result := DefaultInterface.hWnd;
end;

procedure TTXTextControl.Set_hWnd(Value: OLE_HANDLE);
begin
  DefaultInterface.hWnd := Value;
end;

function TTXTextControl.Get_CurrentInputPosition: OleVariant;
begin
  Result := DefaultInterface.CurrentInputPosition;
end;

procedure TTXTextControl.Set_CurrentInputPosition(Value: OleVariant);
begin
  DefaultInterface.CurrentInputPosition := Value;
end;

function TTXTextControl.Get_ObjectItem: IDispatch;
begin
  Result := DefaultInterface.ObjectItem;
end;

procedure TTXTextControl.Set_ObjectItem(const Value: IDispatch);
begin
  DefaultInterface.ObjectItem := Value;
end;

function TTXTextControl.Get_Device: OleVariant;
begin
  Result := DefaultInterface.Device;
end;

procedure TTXTextControl.Set_Device(Value: OleVariant);
begin
  DefaultInterface.Device := Value;
end;

function TTXTextControl.Get_Styles: IDispatch;
begin
  Result := DefaultInterface.Styles;
end;

procedure TTXTextControl.Set_Styles(const Value: IDispatch);
begin
  DefaultInterface.Styles := Value;
end;

function TTXTextControl.Get_ColumnWidthsAndDistances: OleVariant;
begin
  Result := DefaultInterface.ColumnWidthsAndDistances;
end;

procedure TTXTextControl.Set_ColumnWidthsAndDistances(Value: OleVariant);
begin
  DefaultInterface.ColumnWidthsAndDistances := Value;
end;

function TTXTextControl.Get_ClipboardFormats: OleVariant;
begin
  Result := DefaultInterface.ClipboardFormats;
end;

procedure TTXTextControl.Set_ClipboardFormats(Value: OleVariant);
begin
  DefaultInterface.ClipboardFormats := Value;
end;

function TTXTextControl.Get_ObjectDistance(index: Smallint): Smallint;
begin
  Result := DefaultInterface.ObjectDistance[index];
end;

procedure TTXTextControl.Set_ObjectDistance(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.ObjectDistance[index] := Param2;
end;

function TTXTextControl.Get_LoadSaveAttribute(Attribute: LoadSaveAttributeConstants): OleVariant;
begin
  Result := DefaultInterface.LoadSaveAttribute[Attribute];
end;

procedure TTXTextControl.Set_LoadSaveAttribute(Attribute: LoadSaveAttributeConstants; 
                                               Param2: OleVariant);
begin
  DefaultInterface.LoadSaveAttribute[Attribute] := Param2;
end;

function TTXTextControl.Get_TableColumns(TableId: Smallint): Smallint;
begin
  Result := DefaultInterface.TableColumns[TableId];
end;

function TTXTextControl.Get_TableRows(TableId: Smallint): Smallint;
begin
  Result := DefaultInterface.TableRows[TableId];
end;

function TTXTextControl.Get_TableCellText(TableId: Smallint; Row: Smallint; Column: Smallint): WideString;
begin
  Result := DefaultInterface.TableCellText[TableId, Row, Column];
end;

procedure TTXTextControl.Set_TableCellText(TableId: Smallint; Row: Smallint; Column: Smallint; 
                                           const Param4: WideString);
begin
  DefaultInterface.TableCellText[TableId, Row, Column] := Param4;
end;

function TTXTextControl.Get_FieldEditAttr(FieldId: Smallint): Smallint;
begin
  Result := DefaultInterface.FieldEditAttr[FieldId];
end;

procedure TTXTextControl.Set_FieldEditAttr(FieldId: Smallint; Param2: Smallint);
begin
  DefaultInterface.FieldEditAttr[FieldId] := Param2;
end;

function TTXTextControl.Get_FieldData(FieldId: Smallint): OleVariant;
begin
  Result := DefaultInterface.FieldData[FieldId];
end;

procedure TTXTextControl.Set_FieldData(FieldId: Smallint; Param2: OleVariant);
begin
  DefaultInterface.FieldData[FieldId] := Param2;
end;

function TTXTextControl.Get_TableCellAttribute(TableId: Smallint; Row: Smallint; Column: Smallint; 
                                               Attribute: TableCellAttributeConstants): OleVariant;
begin
  Result := DefaultInterface.TableCellAttribute[TableId, Row, Column, Attribute];
end;

procedure TTXTextControl.Set_TableCellAttribute(TableId: Smallint; Row: Smallint; Column: Smallint; 
                                                Attribute: TableCellAttributeConstants; 
                                                Param5: OleVariant);
begin
  DefaultInterface.TableCellAttribute[TableId, Row, Column, Attribute] := Param5;
end;

function TTXTextControl.Get_TableCellStart(TableId: Smallint; Row: Smallint; Column: Smallint): Integer;
begin
  Result := DefaultInterface.TableCellStart[TableId, Row, Column];
end;

function TTXTextControl.Get_TableCellLength(TableId: Smallint; Row: Smallint; Column: Smallint): Integer;
begin
  Result := DefaultInterface.TableCellLength[TableId, Row, Column];
end;

function TTXTextControl.Get_HeaderFooterPosition(HeaderFooter: HeaderFooterConstants): Integer;
begin
  Result := DefaultInterface.HeaderFooterPosition[HeaderFooter];
end;

procedure TTXTextControl.Set_HeaderFooterPosition(HeaderFooter: HeaderFooterConstants; 
                                                  Param2: Integer);
begin
  DefaultInterface.HeaderFooterPosition[HeaderFooter] := Param2;
end;

function TTXTextControl.Get_FieldTypeData(FieldId: Smallint): OleVariant;
begin
  Result := DefaultInterface.FieldTypeData[FieldId];
end;

procedure TTXTextControl.Set_FieldTypeData(FieldId: Smallint; Param2: OleVariant);
begin
  DefaultInterface.FieldTypeData[FieldId] := Param2;
end;

function TTXTextControl.Get_FieldType(FieldId: Smallint): FieldTypeConstants;
begin
  Result := DefaultInterface.FieldType[FieldId];
end;

procedure TTXTextControl.Set_FieldType(FieldId: Smallint; Param2: FieldTypeConstants);
begin
  DefaultInterface.FieldType[FieldId] := Param2;
end;

function TTXTextControl.Get_BulletAttribute(Attribute: BulletConstants): OleVariant;
begin
  Result := DefaultInterface.BulletAttribute[Attribute];
end;

procedure TTXTextControl.Set_BulletAttribute(Attribute: BulletConstants; Param2: OleVariant);
begin
  DefaultInterface.BulletAttribute[Attribute] := Param2;
end;

function TTXTextControl.Get_NumberingAttribute(Attribute: NumberingConstants): OleVariant;
begin
  Result := DefaultInterface.NumberingAttribute[Attribute];
end;

procedure TTXTextControl.Set_NumberingAttribute(Attribute: NumberingConstants; Param2: OleVariant);
begin
  DefaultInterface.NumberingAttribute[Attribute] := Param2;
end;

function TTXTextControl.Get_CaretWidth(Caret: Smallint): Smallint;
begin
  Result := DefaultInterface.CaretWidth[Caret];
end;

procedure TTXTextControl.Set_CaretWidth(Caret: Smallint; Param2: Smallint);
begin
  DefaultInterface.CaretWidth[Caret] := Param2;
end;

function TTXTextControl.Get_TableNestedLevel(TableId: Smallint): Integer;
begin
  Result := DefaultInterface.TableNestedLevel[TableId];
end;

function TTXTextControl.Get_TextFrameInternalMargin(index: Smallint): Smallint;
begin
  Result := DefaultInterface.TextFrameInternalMargin[index];
end;

procedure TTXTextControl.Set_TextFrameInternalMargin(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.TextFrameInternalMargin[index] := Param2;
end;

function TTXTextControl.Get_HeaderFooterConnectedToPrevious(HeaderFooter: HeaderFooterConstants): WordBool;
begin
  Result := DefaultInterface.HeaderFooterConnectedToPrevious[HeaderFooter];
end;

procedure TTXTextControl.Set_HeaderFooterConnectedToPrevious(HeaderFooter: HeaderFooterConstants; 
                                                             Param2: WordBool);
begin
  DefaultInterface.HeaderFooterConnectedToPrevious[HeaderFooter] := Param2;
end;

function TTXTextControl.Get_DisplayColor(index: TextControlColor): OLE_COLOR;
begin
  Result := DefaultInterface.DisplayColor[index];
end;

procedure TTXTextControl.Set_DisplayColor(index: TextControlColor; Param2: OLE_COLOR);
begin
  DefaultInterface.DisplayColor[index] := Param2;
end;

function TTXTextControl.Get_MisspelledWordStart(Number: Integer): Integer;
begin
  Result := DefaultInterface.MisspelledWordStart[Number];
end;

function TTXTextControl.Get_MisspelledWordLength(Number: Integer): Integer;
begin
  Result := DefaultInterface.MisspelledWordLength[Number];
end;

function TTXTextControl.Get_PageImage(Number: Integer; Content: PictureContentConstants): OleVariant;
begin
  Result := DefaultInterface.PageImage[Number, Content];
end;

function TTXTextControl.Get_TableCellData(TableId: Smallint; Row: Smallint; Column: Smallint): WideString;
begin
  Result := DefaultInterface.TableCellData[TableId, Row, Column];
end;

procedure TTXTextControl.Set_TableCellData(TableId: Smallint; Row: Smallint; Column: Smallint; 
                                           const Param4: WideString);
begin
  DefaultInterface.TableCellData[TableId, Row, Column] := Param4;
end;

function TTXTextControl.Get_PageBorderAttribute(Attribute: PageBorderAttributeConstants): OleVariant;
begin
  Result := DefaultInterface.PageBorderAttribute[Attribute];
end;

procedure TTXTextControl.Set_PageBorderAttribute(Attribute: PageBorderAttributeConstants; 
                                                 Param2: OleVariant);
begin
  DefaultInterface.PageBorderAttribute[Attribute] := Param2;
end;

function TTXTextControl.Get_PageStart(Number: Integer): Integer;
begin
  Result := DefaultInterface.PageStart[Number];
end;

function TTXTextControl.Get_PageLength(Number: Integer): Integer;
begin
  Result := DefaultInterface.PageLength[Number];
end;

function TTXTextControl.Get_SectionStart(Number: Integer): Integer;
begin
  Result := DefaultInterface.SectionStart[Number];
end;

function TTXTextControl.Get_SectionLength(Number: Integer): Integer;
begin
  Result := DefaultInterface.SectionLength[Number];
end;

procedure TTXTextControl.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TTXTextControl.PrintPage(PageNumber: Smallint);
begin
  DefaultInterface.PrintPage(PageNumber);
end;

function TTXTextControl.ParagraphDialog: WordBool;
begin
  Result := DefaultInterface.ParagraphDialog;
end;

function TTXTextControl.FontDialog: WordBool;
begin
  Result := DefaultInterface.FontDialog;
end;

procedure TTXTextControl.FindReplace(TypeOfDialog: Smallint);
begin
  DefaultInterface.FindReplace(TypeOfDialog);
end;

function TTXTextControl.Undo: WordBool;
begin
  Result := DefaultInterface.Undo;
end;

function TTXTextControl.Redo: WordBool;
begin
  Result := DefaultInterface.Redo;
end;

function TTXTextControl.VTSpellCheck: WordBool;
begin
  Result := DefaultInterface.VTSpellCheck;
end;

procedure TTXTextControl.Clip(Action: Smallint);
begin
  DefaultInterface.Clip(Action);
end;

function TTXTextControl.RTFImport(const FileName: WideString): WordBool;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.RTFImport(FileName, EmptyParam);
end;

function TTXTextControl.RTFImport(const FileName: WideString; Extended: OleVariant): WordBool;
begin
  Result := DefaultInterface.RTFImport(FileName, Extended);
end;

function TTXTextControl.RTFExport(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.RTFExport(FileName);
end;

function TTXTextControl.TextImport(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.TextImport(FileName);
end;

function TTXTextControl.TextExport(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.TextExport(FileName);
end;

function TTXTextControl.FieldInsert(const FieldText: WideString): WordBool;
begin
  Result := DefaultInterface.FieldInsert(FieldText);
end;

function TTXTextControl.FieldDelete(DeleteTotal: WordBool): WordBool;
begin
  Result := DefaultInterface.FieldDelete(DeleteTotal);
end;

function TTXTextControl.ObjectInsertAsChar(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                           TextPos: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                                           ImageDisplayMode: Smallint; ImageSaveMode: Smallint): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.ObjectInsertAsChar(ObjectType, FileName, TextPos, ScaleX, ScaleY, 
                                                ImageDisplayMode, ImageSaveMode, EmptyParam);
end;

function TTXTextControl.ObjectInsertAsChar(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                           TextPos: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                                           ImageDisplayMode: Smallint; ImageSaveMode: Smallint; 
                                           KindOfObject: OleVariant): Smallint;
begin
  Result := DefaultInterface.ObjectInsertAsChar(ObjectType, FileName, TextPos, ScaleX, ScaleY, 
                                                ImageDisplayMode, ImageSaveMode, KindOfObject);
end;

function TTXTextControl.ObjectInsertFixed(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                          PosX: Integer; PosY: Integer; ScaleX: Smallint; 
                                          ScaleY: Smallint; ImageDisplayMode: Smallint; 
                                          ImageSaveMode: Smallint; SizeMode: Smallint; 
                                          Textflow: Smallint; DistanceL: Smallint; 
                                          DistanceT: Smallint; DistanceR: Smallint; 
                                          DistanceB: Smallint): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.ObjectInsertFixed(ObjectType, FileName, PosX, PosY, ScaleX, ScaleY, 
                                               ImageDisplayMode, ImageSaveMode, SizeMode, Textflow, 
                                               DistanceL, DistanceT, DistanceR, DistanceB, 
                                               EmptyParam);
end;

function TTXTextControl.ObjectInsertFixed(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                          PosX: Integer; PosY: Integer; ScaleX: Smallint; 
                                          ScaleY: Smallint; ImageDisplayMode: Smallint; 
                                          ImageSaveMode: Smallint; SizeMode: Smallint; 
                                          Textflow: Smallint; DistanceL: Smallint; 
                                          DistanceT: Smallint; DistanceR: Smallint; 
                                          DistanceB: Smallint; KindOfObject: OleVariant): Smallint;
begin
  Result := DefaultInterface.ObjectInsertFixed(ObjectType, FileName, PosX, PosY, ScaleX, ScaleY, 
                                               ImageDisplayMode, ImageSaveMode, SizeMode, Textflow, 
                                               DistanceL, DistanceT, DistanceR, DistanceB, 
                                               KindOfObject);
end;

function TTXTextControl.Load(const FileName: WideString): Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Load(FileName, EmptyParam, EmptyParam, EmptyParam);
end;

function TTXTextControl.Load(const FileName: WideString; Offset: OleVariant): Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Load(FileName, Offset, EmptyParam, EmptyParam);
end;

function TTXTextControl.Load(const FileName: WideString; Offset: OleVariant; Format: OleVariant): Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Load(FileName, Offset, Format, EmptyParam);
end;

function TTXTextControl.Load(const FileName: WideString; Offset: OleVariant; Format: OleVariant; 
                             CurSelection: OleVariant): Integer;
begin
  Result := DefaultInterface.Load(FileName, Offset, Format, CurSelection);
end;

function TTXTextControl.Save(const FileName: WideString): Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Save(FileName, EmptyParam, EmptyParam, EmptyParam);
end;

function TTXTextControl.Save(const FileName: WideString; Offset: OleVariant): Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Save(FileName, Offset, EmptyParam, EmptyParam);
end;

function TTXTextControl.Save(const FileName: WideString; Offset: OleVariant; Format: OleVariant): Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Save(FileName, Offset, Format, EmptyParam);
end;

function TTXTextControl.Save(const FileName: WideString; Offset: OleVariant; Format: OleVariant; 
                             CurSelection: OleVariant): Integer;
begin
  Result := DefaultInterface.Save(FileName, Offset, Format, CurSelection);
end;

function TTXTextControl.ObjectDelete(ObjectId: Smallint): WordBool;
begin
  Result := DefaultInterface.ObjectDelete(ObjectId);
end;

function TTXTextControl.ObjectNext(ObjectId: Smallint; ObjectGroup: Smallint): Smallint;
begin
  Result := DefaultInterface.ObjectNext(ObjectId, ObjectGroup);
end;

function TTXTextControl.ViewNextHighlight: WordBool;
begin
  Result := DefaultInterface.ViewNextHighlight;
end;

function TTXTextControl.TableInsert(Rows: Smallint; Columns: Smallint; TextPos: Integer): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.TableInsert(Rows, Columns, TextPos, EmptyParam);
end;

function TTXTextControl.TableInsert(Rows: Smallint; Columns: Smallint; TextPos: Integer; 
                                    TableId: OleVariant): Smallint;
begin
  Result := DefaultInterface.TableInsert(Rows, Columns, TextPos, TableId);
end;

function TTXTextControl.TableDeleteLines: WordBool;
begin
  Result := DefaultInterface.TableDeleteLines;
end;

function TTXTextControl.TableAttrDialog: WordBool;
begin
  Result := DefaultInterface.TableAttrDialog;
end;

function TTXTextControl.FieldNext(FieldId: Smallint; FieldGroup: Smallint): Smallint;
begin
  Result := DefaultInterface.FieldNext(FieldId, FieldGroup);
end;

function TTXTextControl.LoadFromMemory(DataBuffer: OleVariant): WordBool;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.LoadFromMemory(DataBuffer, EmptyParam, EmptyParam);
end;

function TTXTextControl.LoadFromMemory(DataBuffer: OleVariant; Format: OleVariant): WordBool;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.LoadFromMemory(DataBuffer, Format, EmptyParam);
end;

function TTXTextControl.LoadFromMemory(DataBuffer: OleVariant; Format: OleVariant; 
                                       CurSelection: OleVariant): WordBool;
begin
  Result := DefaultInterface.LoadFromMemory(DataBuffer, Format, CurSelection);
end;

function TTXTextControl.SaveToMemory: OleVariant;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.SaveToMemory(EmptyParam, EmptyParam);
end;

function TTXTextControl.SaveToMemory(Format: OleVariant): OleVariant;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.SaveToMemory(Format, EmptyParam);
end;

function TTXTextControl.SaveToMemory(Format: OleVariant; CurSelection: OleVariant): OleVariant;
begin
  Result := DefaultInterface.SaveToMemory(Format, CurSelection);
end;

function TTXTextControl.Find(const FindWhat: WideString): Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Find(FindWhat, EmptyParam, EmptyParam);
end;

function TTXTextControl.Find(const FindWhat: WideString; Start: OleVariant): Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Find(FindWhat, Start, EmptyParam);
end;

function TTXTextControl.Find(const FindWhat: WideString; Start: OleVariant; Options: OleVariant): Integer;
begin
  Result := DefaultInterface.Find(FindWhat, Start, Options);
end;

function TTXTextControl.TableNext(EnumerationNumber: Smallint; var TableId: Smallint): Smallint;
begin
  Result := DefaultInterface.TableNext(EnumerationNumber, TableId);
end;

function TTXTextControl.HeaderFooterActivate(HeaderFooter: HeaderFooterConstants): WordBool;
begin
  Result := DefaultInterface.HeaderFooterActivate(HeaderFooter);
end;

function TTXTextControl.HeaderFooterSelect(HeaderFooter: HeaderFooterConstants): WordBool;
begin
  Result := DefaultInterface.HeaderFooterSelect(HeaderFooter);
end;

function TTXTextControl.FieldGoto(FieldType: FieldTypeConstants; FieldIdOrName: OleVariant): WordBool;
begin
  Result := DefaultInterface.FieldGoto(FieldType, FieldIdOrName);
end;

function TTXTextControl.ResetContents: WordBool;
begin
  Result := DefaultInterface.ResetContents;
end;

function TTXTextControl.InputPosFromPoint(X: Integer; Y: Integer): Integer;
begin
  Result := DefaultInterface.InputPosFromPoint(X, Y);
end;

procedure TTXTextControl.PrintDoc(const DocName: WideString; FromPage: Smallint; ToPage: Smallint; 
                                  Copies: Smallint);
begin
  DefaultInterface.PrintDoc(DocName, FromPage, ToPage, Copies);
end;

function TTXTextControl.ListAttrDialog: WordBool;
begin
  Result := DefaultInterface.ListAttrDialog;
end;

function TTXTextControl.SaveToMemoryBuffer(DataBuffer: OleVariant): OleVariant;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.SaveToMemoryBuffer(DataBuffer, EmptyParam, EmptyParam);
end;

function TTXTextControl.SaveToMemoryBuffer(DataBuffer: OleVariant; Format: OleVariant): OleVariant;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.SaveToMemoryBuffer(DataBuffer, Format, EmptyParam);
end;

function TTXTextControl.SaveToMemoryBuffer(DataBuffer: OleVariant; Format: OleVariant; 
                                           CurSelection: OleVariant): OleVariant;
begin
  Result := DefaultInterface.SaveToMemoryBuffer(DataBuffer, Format, CurSelection);
end;

function TTXTextControl.TableDeleteColumn: WordBool;
begin
  Result := DefaultInterface.TableDeleteColumn;
end;

function TTXTextControl.TableInsertLines(Position: TableInsertConstants; Lines: Smallint): WordBool;
begin
  Result := DefaultInterface.TableInsertLines(Position, Lines);
end;

function TTXTextControl.TableInsertColumn(Position: TableInsertConstants): WordBool;
begin
  Result := DefaultInterface.TableInsertColumn(Position);
end;

function TTXTextControl.GetBaseLinePos(Line: Integer): Integer;
begin
  Result := DefaultInterface.GetBaseLinePos(Line);
end;

function TTXTextControl.GetCharFromLine(Line: Integer): Integer;
begin
  Result := DefaultInterface.GetCharFromLine(Line);
end;

function TTXTextControl.GetLineCount: Integer;
begin
  Result := DefaultInterface.GetLineCount;
end;

function TTXTextControl.GetLineFromChar(Char: Integer): Integer;
begin
  Result := DefaultInterface.GetLineFromChar(Char);
end;

function TTXTextControl.GetLineFromPoint(X: Integer; Y: Integer): Integer;
begin
  Result := DefaultInterface.GetLineFromPoint(X, Y);
end;

function TTXTextControl.GetLineRect(Line: Integer): OleVariant;
begin
  Result := DefaultInterface.GetLineRect(Line);
end;

function TTXTextControl.GetTextExtent: OleVariant;
begin
  Result := DefaultInterface.GetTextExtent;
end;

function TTXTextControl.TabDialog: WordBool;
begin
  Result := DefaultInterface.TabDialog;
end;

function TTXTextControl.StyleDialog: WordBool;
begin
  Result := DefaultInterface.StyleDialog;
end;

function TTXTextControl.XMLElements(const ElementName: WideString): IDispatch;
begin
  Result := DefaultInterface.XMLElements(ElementName);
end;

function TTXTextControl.EnableAutomationServer: WordBool;
begin
  Result := DefaultInterface.EnableAutomationServer;
end;

function TTXTextControl.TableSplit(Position: TableInsertConstants): WordBool;
begin
  Result := DefaultInterface.TableSplit(Position);
end;

function TTXTextControl.TableGetOuter(TableId: Smallint): Smallint;
begin
  Result := DefaultInterface.TableGetOuter(TableId);
end;

function TTXTextControl.TableGetOuterMost(TableId: Smallint): Smallint;
begin
  Result := DefaultInterface.TableGetOuterMost(TableId);
end;

procedure TTXTextControl.StartUndoAction;
begin
  DefaultInterface.StartUndoAction;
end;

procedure TTXTextControl.EndUndoAction;
begin
  DefaultInterface.EndUndoAction;
end;

function TTXTextControl.ObjectInsert(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                     TextPos: Integer; Alignment: Smallint; PosX: Integer; 
                                     PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                                     Textflow: Smallint; DistanceL: Smallint; DistanceT: Smallint; 
                                     DistanceR: Smallint; DistanceB: Smallint): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.ObjectInsert(ObjectType, FileName, TextPos, Alignment, PosX, PosY, 
                                          ScaleX, ScaleY, Textflow, DistanceL, DistanceT, 
                                          DistanceR, DistanceB, EmptyParam);
end;

function TTXTextControl.ObjectInsert(ObjectType: OLE_HANDLE; const FileName: WideString; 
                                     TextPos: Integer; Alignment: Smallint; PosX: Integer; 
                                     PosY: Integer; ScaleX: Smallint; ScaleY: Smallint; 
                                     Textflow: Smallint; DistanceL: Smallint; DistanceT: Smallint; 
                                     DistanceR: Smallint; DistanceB: Smallint; 
                                     KindOfObject: OleVariant): Smallint;
begin
  Result := DefaultInterface.ObjectInsert(ObjectType, FileName, TextPos, Alignment, PosX, PosY, 
                                          ScaleX, ScaleY, Textflow, DistanceL, DistanceT, 
                                          DistanceR, DistanceB, KindOfObject);
end;

function TTXTextControl.TextFrameInsertAsChar(TextPos: Integer; Width: Smallint; Height: Smallint): Smallint;
begin
  Result := DefaultInterface.TextFrameInsertAsChar(TextPos, Width, Height);
end;

function TTXTextControl.TextFrameInsertFixed(PageNo: Integer; PosX: Integer; PosY: Integer; 
                                             Width: Smallint; Height: Smallint; Textflow: Smallint; 
                                             DistL: Smallint; DistT: Smallint; DistR: Smallint; 
                                             DistB: Smallint): Smallint;
begin
  Result := DefaultInterface.TextFrameInsertFixed(PageNo, PosX, PosY, Width, Height, Textflow, 
                                                  DistL, DistT, DistR, DistB);
end;

function TTXTextControl.TextFrameInsert(TextPos: Integer; Alignment: Smallint; PosX: Integer; 
                                        PosY: Integer; Width: Smallint; Height: Smallint; 
                                        Textflow: Smallint; DistL: Smallint; DistT: Smallint; 
                                        DistR: Smallint; DistB: Smallint): Smallint;
begin
  Result := DefaultInterface.TextFrameInsert(TextPos, Alignment, PosX, PosY, Width, Height, 
                                             Textflow, DistL, DistT, DistR, DistB);
end;

function TTXTextControl.ObjectAttrDialog: WordBool;
begin
  Result := DefaultInterface.ObjectAttrDialog;
end;

function TTXTextControl.TextFrameSelect(TextFrameId: Smallint): WordBool;
begin
  Result := DefaultInterface.TextFrameSelect(TextFrameId);
end;

function TTXTextControl.ObjectGetSelected(ObjectKind: Smallint): Smallint;
begin
  Result := DefaultInterface.ObjectGetSelected(ObjectKind);
end;

function TTXTextControl.ImageInsert(const FileName: WideString; TextPos: Integer; 
                                    Alignment: Smallint; PosX: Integer; PosY: Integer; 
                                    ScaleX: Smallint; ScaleY: Smallint; Textflow: Smallint; 
                                    DistanceL: Smallint; DistanceT: Smallint; DistanceR: Smallint; 
                                    DistanceB: Smallint): Smallint;
begin
  Result := DefaultInterface.ImageInsert(FileName, TextPos, Alignment, PosX, PosY, ScaleX, ScaleY, 
                                         Textflow, DistanceL, DistanceT, DistanceR, DistanceB);
end;

function TTXTextControl.ImageInsertAsChar(const FileName: WideString; TextPos: Integer; 
                                          ScaleX: Smallint; ScaleY: Smallint): Smallint;
begin
  Result := DefaultInterface.ImageInsertAsChar(FileName, TextPos, ScaleX, ScaleY);
end;

function TTXTextControl.ImageInsertFixed(const FileName: WideString; PageNo: Integer; 
                                         PosX: Integer; PosY: Integer; ScaleX: Smallint; 
                                         ScaleY: Smallint; Textflow: Smallint; DistanceL: Smallint; 
                                         DistanceT: Smallint; DistanceR: Smallint; 
                                         DistanceB: Smallint): Smallint;
begin
  Result := DefaultInterface.ImageInsertFixed(FileName, PageNo, PosX, PosY, ScaleX, ScaleY, 
                                              Textflow, DistanceL, DistanceT, DistanceR, DistanceB);
end;

function TTXTextControl.FieldSetInputPos(FieldInputPosition: FieldInputPositionConstants): WordBool;
begin
  Result := DefaultInterface.FieldSetInputPos(FieldInputPosition);
end;

function TTXTextControl.SectionInsert(BreakKind: SectionBreakKindConstants; TextPos: Integer): WordBool;
begin
  Result := DefaultInterface.SectionInsert(BreakKind, TextPos);
end;

function TTXTextControl.SectionFormatDialog(ActiveTab: Smallint): WordBool;
begin
  Result := DefaultInterface.SectionFormatDialog(ActiveTab);
end;

function TTXTextControl.ObjectGetFromName(const ObjectName: WideString): Smallint;
begin
  Result := DefaultInterface.ObjectGetFromName(ObjectName);
end;

function TTXTextControl.ObjectGetFromUserId(ObjectUserId: Integer): Smallint;
begin
  Result := DefaultInterface.ObjectGetFromUserId(ObjectUserId);
end;

function TTXTextControl.GrowFont: WordBool;
begin
  Result := DefaultInterface.GrowFont;
end;

function TTXTextControl.ShrinkFont: WordBool;
begin
  Result := DefaultInterface.ShrinkFont;
end;

function TTXTextControl.IncreaseIndent: WordBool;
begin
  Result := DefaultInterface.IncreaseIndent;
end;

function TTXTextControl.DecreaseIndent: WordBool;
begin
  Result := DefaultInterface.DecreaseIndent;
end;

function TTXTextControl.MisspelledWordDelete(Number: Integer; const CorrectedText: WideString): WordBool;
begin
  Result := DefaultInterface.MisspelledWordDelete(Number, CorrectedText);
end;

function TTXTextControl.TableMergeCells: WordBool;
begin
  Result := DefaultInterface.TableMergeCells;
end;

function TTXTextControl.TableSplitCells: WordBool;
begin
  Result := DefaultInterface.TableSplitCells;
end;

function TTXTextControl.ObjectChangeZOrder(ZOrder: ZOrderConstants): WordBool;
begin
  Result := DefaultInterface.ObjectChangeZOrder(ZOrder);
end;

function TTXTextControl.TableInsertDialog: Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.TableInsertDialog(EmptyParam);
end;

function TTXTextControl.TableInsertDialog(TableId: OleVariant): Smallint;
begin
  Result := DefaultInterface.TableInsertDialog(TableId);
end;

function TTXTextControl.PageNumberDialog(FieldId: Smallint): WordBool;
begin
  Result := DefaultInterface.PageNumberDialog(FieldId);
end;

procedure TTXTextControl.PrintDialog(const DocName: WideString);
begin
  DefaultInterface.PrintDialog(DocName);
end;

function TTXTextControl.TableCellSelect(TableId: Smallint; Row: Integer; Column: Integer): WordBool;
begin
  Result := DefaultInterface.TableCellSelect(TableId, Row, Column);
end;

function TTXTextControl.TableFromSelection(var Row: Integer; var Column: Integer): Smallint;
begin
  Result := DefaultInterface.TableFromSelection(Row, Column);
end;

function TTXTextControl.TableDelete(TableId: Smallint): WordBool;
begin
  Result := DefaultInterface.TableDelete(TableId);
end;

function TTXTextControl.LocaleDialog: WordBool;
begin
  Result := DefaultInterface.LocaleDialog;
end;

function TTXTextControl.ChangeTextDirection(TextDirection: TextDirectionConstants): WordBool;
begin
  Result := DefaultInterface.ChangeTextDirection(TextDirection);
end;

function TTXTextControl.TableSelectCells(TableId: Smallint; StartRow: Integer; 
                                         StartColumn: Integer; EndRow: Integer; EndColumn: Integer): WordBool;
begin
  Result := DefaultInterface.TableSelectCells(TableId, StartRow, StartColumn, EndRow, EndColumn);
end;

function TTXTextControl.PageSelect(Number: Integer): WordBool;
begin
  Result := DefaultInterface.PageSelect(Number);
end;

function TTXTextControl.SectionSelect(Number: Integer): WordBool;
begin
  Result := DefaultInterface.SectionSelect(Number);
end;

function TTXTextControl.Paste(Format: Smallint): WordBool;
begin
  Result := DefaultInterface.Paste(Format);
end;

procedure TTXTextControl.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

class function CoTXStyle.Create: IStyle;
begin
  Result := CreateComObject(CLASS_TXStyle) as IStyle;
end;

class function CoTXStyle.CreateRemote(const MachineName: string): IStyle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TXStyle) as IStyle;
end;

procedure TTXStyle.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{510E421B-2487-11E4-A584-0013D350667C}';
    IntfIID:   '{510E421C-2487-11E4-A584-0013D350667C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTXStyle.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IStyle;
  end;
end;

procedure TTXStyle.ConnectTo(svrIntf: IStyle);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTXStyle.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTXStyle.GetDefaultInterface: IStyle;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTXStyle.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TTXStyle.Destroy;
begin
  inherited Destroy;
end;

function TTXStyle.Get_StyleName: WideString;
begin
  Result := DefaultInterface.StyleName;
end;

procedure TTXStyle.Set_StyleName(const Value: WideString);
begin
  DefaultInterface.StyleName := Value;
end;

function TTXStyle.Get_FontName: WideString;
begin
  Result := DefaultInterface.FontName;
end;

procedure TTXStyle.Set_FontName(const Value: WideString);
begin
  DefaultInterface.FontName := Value;
end;

function TTXStyle.Get_FontSize: Smallint;
begin
  Result := DefaultInterface.FontSize;
end;

procedure TTXStyle.Set_FontSize(Value: Smallint);
begin
  DefaultInterface.FontSize := Value;
end;

function TTXStyle.Get_FontBold: Smallint;
begin
  Result := DefaultInterface.FontBold;
end;

procedure TTXStyle.Set_FontBold(Value: Smallint);
begin
  DefaultInterface.FontBold := Value;
end;

function TTXStyle.Get_FontItalic: Smallint;
begin
  Result := DefaultInterface.FontItalic;
end;

procedure TTXStyle.Set_FontItalic(Value: Smallint);
begin
  DefaultInterface.FontItalic := Value;
end;

function TTXStyle.Get_FontUnderline: Smallint;
begin
  Result := DefaultInterface.FontUnderline;
end;

procedure TTXStyle.Set_FontUnderline(Value: Smallint);
begin
  DefaultInterface.FontUnderline := Value;
end;

function TTXStyle.Get_FontStrikethru: Smallint;
begin
  Result := DefaultInterface.FontStrikethru;
end;

procedure TTXStyle.Set_FontStrikethru(Value: Smallint);
begin
  DefaultInterface.FontStrikethru := Value;
end;

function TTXStyle.Get_BaseLine: Smallint;
begin
  Result := DefaultInterface.BaseLine;
end;

procedure TTXStyle.Set_BaseLine(Value: Smallint);
begin
  DefaultInterface.BaseLine := Value;
end;

function TTXStyle.Get_BaselineType: Smallint;
begin
  Result := DefaultInterface.BaselineType;
end;

procedure TTXStyle.Set_BaselineType(Value: Smallint);
begin
  DefaultInterface.BaselineType := Value;
end;

function TTXStyle.Get_ForeColor: Integer;
begin
  Result := DefaultInterface.ForeColor;
end;

procedure TTXStyle.Set_ForeColor(Value: Integer);
begin
  DefaultInterface.ForeColor := Value;
end;

function TTXStyle.Get_TextBkColor: Integer;
begin
  Result := DefaultInterface.TextBkColor;
end;

procedure TTXStyle.Set_TextBkColor(Value: Integer);
begin
  DefaultInterface.TextBkColor := Value;
end;

function TTXStyle.Get_Alignment: Smallint;
begin
  Result := DefaultInterface.Alignment;
end;

procedure TTXStyle.Set_Alignment(Value: Smallint);
begin
  DefaultInterface.Alignment := Value;
end;

function TTXStyle.Get_IndentL: Smallint;
begin
  Result := DefaultInterface.IndentL;
end;

procedure TTXStyle.Set_IndentL(Value: Smallint);
begin
  DefaultInterface.IndentL := Value;
end;

function TTXStyle.Get_IndentR: Smallint;
begin
  Result := DefaultInterface.IndentR;
end;

procedure TTXStyle.Set_IndentR(Value: Smallint);
begin
  DefaultInterface.IndentR := Value;
end;

function TTXStyle.Get_IndentFL: Smallint;
begin
  Result := DefaultInterface.IndentFL;
end;

procedure TTXStyle.Set_IndentFL(Value: Smallint);
begin
  DefaultInterface.IndentFL := Value;
end;

function TTXStyle.Get_IndentT: Smallint;
begin
  Result := DefaultInterface.IndentT;
end;

procedure TTXStyle.Set_IndentT(Value: Smallint);
begin
  DefaultInterface.IndentT := Value;
end;

function TTXStyle.Get_IndentB: Smallint;
begin
  Result := DefaultInterface.IndentB;
end;

procedure TTXStyle.Set_IndentB(Value: Smallint);
begin
  DefaultInterface.IndentB := Value;
end;

function TTXStyle.Get_LineSpacing: Smallint;
begin
  Result := DefaultInterface.LineSpacing;
end;

procedure TTXStyle.Set_LineSpacing(Value: Smallint);
begin
  DefaultInterface.LineSpacing := Value;
end;

function TTXStyle.Get_LineSpacingT: Smallint;
begin
  Result := DefaultInterface.LineSpacingT;
end;

procedure TTXStyle.Set_LineSpacingT(Value: Smallint);
begin
  DefaultInterface.LineSpacingT := Value;
end;

function TTXStyle.Get_FrameStyle: Integer;
begin
  Result := DefaultInterface.FrameStyle;
end;

procedure TTXStyle.Set_FrameStyle(Value: Integer);
begin
  DefaultInterface.FrameStyle := Value;
end;

function TTXStyle.Get_FrameDistance: Smallint;
begin
  Result := DefaultInterface.FrameDistance;
end;

procedure TTXStyle.Set_FrameDistance(Value: Smallint);
begin
  DefaultInterface.FrameDistance := Value;
end;

function TTXStyle.Get_FrameLineWidth: Smallint;
begin
  Result := DefaultInterface.FrameLineWidth;
end;

procedure TTXStyle.Set_FrameLineWidth(Value: Smallint);
begin
  DefaultInterface.FrameLineWidth := Value;
end;

function TTXStyle.Get_ListType: ListTypeConstants;
begin
  Result := DefaultInterface.ListType;
end;

procedure TTXStyle.Set_ListType(Value: ListTypeConstants);
begin
  DefaultInterface.ListType := Value;
end;

function TTXStyle.Get_StyleType: Smallint;
begin
  Result := DefaultInterface.StyleType;
end;

procedure TTXStyle.Set_StyleType(Value: Smallint);
begin
  DefaultInterface.StyleType := Value;
end;

function TTXStyle.Get_NextParaStyle: WideString;
begin
  Result := DefaultInterface.NextParaStyle;
end;

procedure TTXStyle.Set_NextParaStyle(const Value: WideString);
begin
  DefaultInterface.NextParaStyle := Value;
end;

function TTXStyle.Get_KeepLinesTogether: WordBool;
begin
  Result := DefaultInterface.KeepLinesTogether;
end;

procedure TTXStyle.Set_KeepLinesTogether(Value: WordBool);
begin
  DefaultInterface.KeepLinesTogether := Value;
end;

function TTXStyle.Get_KeepWithNext: WordBool;
begin
  Result := DefaultInterface.KeepWithNext;
end;

procedure TTXStyle.Set_KeepWithNext(Value: WordBool);
begin
  DefaultInterface.KeepWithNext := Value;
end;

function TTXStyle.Get_PageBreakBefore: WordBool;
begin
  Result := DefaultInterface.PageBreakBefore;
end;

procedure TTXStyle.Set_PageBreakBefore(Value: WordBool);
begin
  DefaultInterface.PageBreakBefore := Value;
end;

function TTXStyle.Get_WidowOrphanLines: Smallint;
begin
  Result := DefaultInterface.WidowOrphanLines;
end;

procedure TTXStyle.Set_WidowOrphanLines(Value: Smallint);
begin
  DefaultInterface.WidowOrphanLines := Value;
end;

function TTXStyle.Get_TabPos(index: Smallint): Smallint;
begin
  Result := DefaultInterface.TabPos[index];
end;

procedure TTXStyle.Set_TabPos(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.TabPos[index] := Param2;
end;

function TTXStyle.Get_TabType(index: Smallint): Smallint;
begin
  Result := DefaultInterface.TabType[index];
end;

procedure TTXStyle.Set_TabType(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.TabType[index] := Param2;
end;

function TTXStyle.Get_BulletAttribute(Attribute: BulletConstants): OleVariant;
begin
  Result := DefaultInterface.BulletAttribute[Attribute];
end;

procedure TTXStyle.Set_BulletAttribute(Attribute: BulletConstants; Param2: OleVariant);
begin
  DefaultInterface.BulletAttribute[Attribute] := Param2;
end;

function TTXStyle.Get_NumberingAttribute(Attribute: NumberingConstants): OleVariant;
begin
  Result := DefaultInterface.NumberingAttribute[Attribute];
end;

procedure TTXStyle.Set_NumberingAttribute(Attribute: NumberingConstants; Param2: OleVariant);
begin
  DefaultInterface.NumberingAttribute[Attribute] := Param2;
end;

procedure TTXStyle.Apply;
begin
  DefaultInterface.Apply;
end;

class function CoTXStyles.Create: IStyles;
begin
  Result := CreateComObject(CLASS_TXStyles) as IStyles;
end;

class function CoTXStyles.CreateRemote(const MachineName: string): IStyles;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TXStyles) as IStyles;
end;

procedure TTXStyles.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{510E4219-2487-11E4-A584-0013D350667C}';
    IntfIID:   '{510E421A-2487-11E4-A584-0013D350667C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTXStyles.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IStyles;
  end;
end;

procedure TTXStyles.ConnectTo(svrIntf: IStyles);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTXStyles.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTXStyles.GetDefaultInterface: IStyles;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTXStyles.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TTXStyles.Destroy;
begin
  inherited Destroy;
end;

function TTXStyles.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

procedure TTXStyles.Set_Count(Value: Integer);
begin
  DefaultInterface.Count := Value;
end;

function TTXStyles.Get__NewEnum: IUnknown;
begin
  Result := DefaultInterface._NewEnum;
end;

function TTXStyles.Item(const StyleName: WideString): IDispatch;
begin
  Result := DefaultInterface.Item(StyleName);
end;

class function CoTXXMLElement.Create: IXMLElement;
begin
  Result := CreateComObject(CLASS_TXXMLElement) as IXMLElement;
end;

class function CoTXXMLElement.CreateRemote(const MachineName: string): IXMLElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TXXMLElement) as IXMLElement;
end;

procedure TTXXMLElement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{510E4217-2487-11E4-A584-0013D350667C}';
    IntfIID:   '{510E4218-2487-11E4-A584-0013D350667C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTXXMLElement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IXMLElement;
  end;
end;

procedure TTXXMLElement.ConnectTo(svrIntf: IXMLElement);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTXXMLElement.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTXXMLElement.GetDefaultInterface: IXMLElement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTXXMLElement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TTXXMLElement.Destroy;
begin
  inherited Destroy;
end;

function TTXXMLElement.Get_Text: WideString;
begin
  Result := DefaultInterface.Text;
end;

procedure TTXXMLElement.Set_Text(const Value: WideString);
begin
  DefaultInterface.Text := Value;
end;

function TTXXMLElement.Get_ElementName: WideString;
begin
  Result := DefaultInterface.ElementName;
end;

procedure TTXXMLElement.Set_ElementName(const Value: WideString);
begin
  DefaultInterface.ElementName := Value;
end;

function TTXXMLElement.Get_AutoText: WordBool;
begin
  Result := DefaultInterface.AutoText;
end;

procedure TTXXMLElement.Set_AutoText(Value: WordBool);
begin
  DefaultInterface.AutoText := Value;
end;

function TTXXMLElement.Get_AutoSelect: WordBool;
begin
  Result := DefaultInterface.AutoSelect;
end;

procedure TTXXMLElement.Set_AutoSelect(Value: WordBool);
begin
  DefaultInterface.AutoSelect := Value;
end;

procedure TTXXMLElement.Select;
begin
  DefaultInterface.Select;
end;

function TTXXMLElement.AddChild(const XMLElement: IDispatch): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.AddChild(XMLElement, EmptyParam, EmptyParam);
end;

function TTXXMLElement.AddChild(const XMLElement: IDispatch; before: OleVariant): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.AddChild(XMLElement, before, EmptyParam);
end;

function TTXXMLElement.AddChild(const XMLElement: IDispatch; before: OleVariant; after: OleVariant): Smallint;
begin
  Result := DefaultInterface.AddChild(XMLElement, before, after);
end;

function TTXXMLElement.RemoveChild(const ElementName: WideString): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.RemoveChild(ElementName, EmptyParam);
end;

function TTXXMLElement.RemoveChild(const ElementName: WideString; index: OleVariant): Smallint;
begin
  Result := DefaultInterface.RemoveChild(ElementName, index);
end;

function TTXXMLElement.ChildItem(const ElementName: WideString): IDispatch;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.ChildItem(ElementName, EmptyParam);
end;

function TTXXMLElement.ChildItem(const ElementName: WideString; index: OleVariant): IDispatch;
begin
  Result := DefaultInterface.ChildItem(ElementName, index);
end;

class function CoTXXMLElements.Create: IXMLElements;
begin
  Result := CreateComObject(CLASS_TXXMLElements) as IXMLElements;
end;

class function CoTXXMLElements.CreateRemote(const MachineName: string): IXMLElements;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TXXMLElements) as IXMLElements;
end;

procedure TTXXMLElements.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{510E4215-2487-11E4-A584-0013D350667C}';
    IntfIID:   '{510E4216-2487-11E4-A584-0013D350667C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTXXMLElements.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IXMLElements;
  end;
end;

procedure TTXXMLElements.ConnectTo(svrIntf: IXMLElements);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTXXMLElements.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTXXMLElements.GetDefaultInterface: IXMLElements;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTXXMLElements.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TTXXMLElements.Destroy;
begin
  inherited Destroy;
end;

function TTXXMLElements.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

procedure TTXXMLElements.Set_Count(Value: Integer);
begin
  DefaultInterface.Count := Value;
end;

function TTXXMLElements.Get_InputItemIndex: Integer;
begin
  Result := DefaultInterface.InputItemIndex;
end;

procedure TTXXMLElements.Set_InputItemIndex(Value: Integer);
begin
  DefaultInterface.InputItemIndex := Value;
end;

function TTXXMLElements.Get__NewEnum: IUnknown;
begin
  Result := DefaultInterface._NewEnum;
end;

function TTXXMLElements.Item(index: Integer): IDispatch;
begin
  Result := DefaultInterface.Item(index);
end;

function TTXXMLElements.Add(const XMLElement: IDispatch): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Add(XMLElement, EmptyParam, EmptyParam);
end;

function TTXXMLElements.Add(const XMLElement: IDispatch; before: OleVariant): Smallint;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.Add(XMLElement, before, EmptyParam);
end;

function TTXXMLElements.Add(const XMLElement: IDispatch; before: OleVariant; after: OleVariant): Smallint;
begin
  Result := DefaultInterface.Add(XMLElement, before, after);
end;

function TTXXMLElements.Remove(index: Integer): Smallint;
begin
  Result := DefaultInterface.Remove(index);
end;

function TTXXMLElements.InputItem: IDispatch;
begin
  Result := DefaultInterface.InputItem;
end;

class function CoTXLicenseManager.Create: ILicManager;
begin
  Result := CreateComObject(CLASS_TXLicenseManager) as ILicManager;
end;

class function CoTXLicenseManager.CreateRemote(const MachineName: string): ILicManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TXLicenseManager) as ILicManager;
end;

procedure TTXLicenseManager.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{510E421D-2487-11E4-A584-0013D350667C}';
    IntfIID:   '{510E421E-2487-11E4-A584-0013D350667C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTXLicenseManager.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILicManager;
  end;
end;

procedure TTXLicenseManager.ConnectTo(svrIntf: ILicManager);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTXLicenseManager.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTXLicenseManager.GetDefaultInterface: ILicManager;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTXLicenseManager.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TTXLicenseManager.Destroy;
begin
  inherited Destroy;
end;

function TTXLicenseManager.Get_Text: WideString;
begin
  Result := DefaultInterface.Text;
end;

procedure TTXLicenseManager.Set_Text(const Value: WideString);
begin
  DefaultInterface.Text := Value;
end;

procedure TTXButtonBar.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID:      '{510E4209-2487-11E4-A584-0013D350667C}';
    EventIID:     '{510E420C-2487-11E4-A584-0013D350667C}';
    EventCount:   0;
    EventDispIDs: nil;
    LicenseKey:   nil (*HR:$80004005*);
    Flags:        $00000008;
    Version:      500);
begin
  ControlData := @CControlData;
end;

procedure TTXButtonBar.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DTXBBAR;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TTXButtonBar.GetControlInterface: _DTXBBAR;
begin
  CreateControl;
  Result := FIntf;
end;

function TTXButtonBar.Get_hWnd: OLE_HANDLE;
begin
  Result := DefaultInterface.hWnd;
end;

procedure TTXButtonBar.Set_hWnd(Value: OLE_HANDLE);
begin
  DefaultInterface.hWnd := Value;
end;

function TTXButtonBar.Get_DisplayColor(index: ButtonBarColor): OLE_COLOR;
begin
  Result := DefaultInterface.DisplayColor[index];
end;

procedure TTXButtonBar.Set_DisplayColor(index: ButtonBarColor; Param2: OLE_COLOR);
begin
  DefaultInterface.DisplayColor[index] := Param2;
end;

procedure TTXButtonBar.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure TTXRuler.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID:      '{510E420D-2487-11E4-A584-0013D350667C}';
    EventIID:     '{510E4210-2487-11E4-A584-0013D350667C}';
    EventCount:   0;
    EventDispIDs: nil;
    LicenseKey:   nil (*HR:$80004005*);
    Flags:        $00000008;
    Version:      500);
begin
  ControlData := @CControlData;
end;

procedure TTXRuler.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DTXRULER;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TTXRuler.GetControlInterface: _DTXRULER;
begin
  CreateControl;
  Result := FIntf;
end;

function TTXRuler.Get_hWnd: OLE_HANDLE;
begin
  Result := DefaultInterface.hWnd;
end;

procedure TTXRuler.Set_hWnd(Value: OLE_HANDLE);
begin
  DefaultInterface.hWnd := Value;
end;

function TTXRuler.Get_DisplayColor(index: RulerBarColor): OLE_COLOR;
begin
  Result := DefaultInterface.DisplayColor[index];
end;

procedure TTXRuler.Set_DisplayColor(index: RulerBarColor; Param2: OLE_COLOR);
begin
  DefaultInterface.DisplayColor[index] := Param2;
end;

procedure TTXRuler.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure TTXStatusBar.InitControlData;
const
  CTFontIDs: array [0..0] of DWORD = (
    $FFFFFE00);
  CControlData: TControlData2 = (
    ClassID:      '{510E4211-2487-11E4-A584-0013D350667C}';
    EventIID:     '{510E4214-2487-11E4-A584-0013D350667C}';
    EventCount:   0;
    EventDispIDs: nil;
    LicenseKey:   nil (*HR:$80004005*);
    Flags:        $0000002C;
    Version:      500;
    FontCount:    1;
    FontIDs:      @CTFontIDs);
begin
  ControlData := @CControlData;
end;

procedure TTXStatusBar.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DTXSBAR;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TTXStatusBar.GetControlInterface: _DTXSBAR;
begin
  CreateControl;
  Result := FIntf;
end;

function TTXStatusBar.Get_hWnd: OLE_HANDLE;
begin
  Result := DefaultInterface.hWnd;
end;

procedure TTXStatusBar.Set_hWnd(Value: OLE_HANDLE);
begin
  DefaultInterface.hWnd := Value;
end;

function TTXStatusBar.Get_DisplayColor(index: StatusBarColor): OLE_COLOR;
begin
  Result := DefaultInterface.DisplayColor[index];
end;

procedure TTXStatusBar.Set_DisplayColor(index: StatusBarColor; Param2: OLE_COLOR);
begin
  DefaultInterface.DisplayColor[index] := Param2;
end;

procedure TTXStatusBar.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TTXTextControl, TTXButtonBar, TTXRuler, TTXStatusBar]);
  RegisterComponents(dtlServerPage, [TTXStyle, TTXStyles, TTXXMLElement, TTXXMLElements, 
    TTXLicenseManager]);
end;

end.
