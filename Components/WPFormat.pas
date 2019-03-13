(*

Modification history

   04/01/99  Christian Lavigne
             Removed Hardwired path to WPFormat.DLL

*)

unit wpformat;

interface
uses
    Windows;

const
WP60 = 0;
WP61 = 1;
WP70 = 2;
WP80 = 3;
WP90 = 4;

TOP_MARGIN = $1;
BOTTOM_MARGIN = $2;
LEFT_MARGIN = $3;
RIGHT_MARGIN = $4;

_OFF = 0;
_ON = 1;

Letter_Portrait = 1;
Letter_Landscape = 2;
Legal_Portrait = 3;
Legal_Landscape = 4;

// attribute values
Extra_Large = 0;
Very_Large = 1;
Large = 2;
Small_Print = 3;
Fine_Print = 4;
Superscript = 5;
Subscript = 6;
Outline = 7;
Italics = 8;
Shadow = 9;
Redline = 10;
Double_Underline = 11;
Bold = 12;
Strikeout = 13;
Underline = 14;
Small_Caps = 15;
Blink = 16;			// can only be used in html docs
Reverse_Video = 17;


Back_Tab = 0;
Table_Tab = $8;
Left_Tab = $10;
Bar_Tab = $20;
Left_Indent = $30;
LeftRight_Indent = $38;
Ctr_On_Margins = $40;
Ctr_On_CurPos = $48;
Ctr_Tab = $50;
Flush_Right = $80;
Right_Tab = $90;
Decimal_Tab = $1A;

Hard_Type = 0;
Soft_Type = 1;


MRG_Beep = $0;
MRG_Break = $1;
MRG_Cancel_Off = $2;
MRG_Cancel_On = $3;
MRG_Continue = $4;
MRG_Date = $5;
MRG_Default = $6;
MRG_Display_Stop = $7;
MRG_Else = $8;
MRG_End_Case = $9;

MRG_End_For = $b;
MRG_End_If = $c;

MRG_End_While = $e;
MRG_Next = $f;
MRG_Next_Record = $10;
MRG_Page_Off = $11;
MRG_Page_On = $12;
MRG_Print = $13;
MRG_Quit = $14;
MRG_Process_On = $15;
MRG_Return = $16;
MRG_Return_Cancel = $17;
MRG_Return_Error = $18;
MRG_Rewrite = $19;
MRG_Step_Off = $1a;
MRG_Step_On = $1b;
MRG_Stop = $1c;
MRG_Process_Off = $1d;

MRG_Assign_On = $30;
MRG_Assign_Off = $31;
MRG_Call_On = $32;
MRG_Call_Off = $33;
MRG_Caps_On = $34;
MRG_Caps_Off = $35;
MRG_Case_On = $36;
MRG_Case_Off = $37;
MRG_CaseOf_On = $38;
MRG_CaseOf_Off = $39;
MRG_ChainMacro_On = $3a;
MRG_ChainMacro_Off = $3b;
MRG_ChainData_On = $3c;
MRG_ChainData_Off = $3d;
MRG_ChainForm_On = $3e;
MRG_ChainForm_Off = $3f;
MRG_Char_On = $40;
MRG_Char_Off = $41;
MRG_Codes_On = $42;
MRG_Codes_Off = $43;
MRG_Comment_On = $44;
MRG_Comment_Off = $45;
MRG_CToN_On = $46;
MRG_CToN_Off = $47;
MRG_Document_On = $48;
MRG_Document_Off = $49;
MRG_EmbedMacro_On = $4a;
MRG_EmbedMacro_Off = $4b;
MRG_Field_On = $4c;
MRG_Field_Off = $4d;
MRG_FieldNames_On = $4e;
MRG_FieldNames_Off = $4f;
MRG_FirstCap_On = $50;
MRG_FirstCap_Off = $51;
MRG_For_On = $52;
MRG_For_Off = $53;
MRG_ForEach_On = $54;
MRG_ForEach_Off = $55;
MRG_GetString_On = $56;
MRG_GetString_Off = $57;
MRG_Go_On = $58;
MRG_Go_Off = $59;
MRG_If_On = $5a;
MRG_If_Off = $5b;
MRG_IfBlank_On = $5c;
MRG_IfBlank_Off = $5d;
MRG_IfExists_On = $5e;
MRG_IfExists_Off = $5f;
MRG_IfNotBlank_On = $60;
MRG_IfNotBlank_Off = $61;
MRG_Insert_On = $62;
MRG_Insert_Off = $63;
MRG_Keyboard_On = $64;
MRG_Keyboard_Off = $65;
MRG_Label_On = $66;
MRG_Label_Off = $67;
MRG_Local_On = $68;
MRG_Local_Off = $69;
MRG_Look_On = $6a;
MRG_Look_Off = $6b;
MRG_MrgCmnd_On = $6c;
MRG_MrgCmnd_Off = $6d;
MRG_NestData_On = $6e;
MRG_NestData_Off = $6f;
MRG_NestForm_On = $70;
MRG_NestForm_Off = $71;
MRG_NestMacro_On = $72;
MRG_NestMacro_Off = $73;
MRG_NToC_On = $74;
MRG_NToC_Off = $75;
MRG_OnCancel_On = $76;
MRG_OnCancel_Off = $77;
MRG_OnError_On = $78;
MRG_OnError_Off = $79;
MRG_Prompt_On = $7a;
MRG_Prompt_Off = $7b;
MRG_StatusPrompt_On = $7c;
MRG_StatusPrompt_Off = $7d;
MRG_StrLen_On = $7e;
MRG_StrLen_Off = $7f;
MRG_StrPos_On = $80;
MRG_StrPos_Off = $81;
MRG_SubstData_On = $82;
MRG_SubstData_Off = $83;
MRG_SubstForm_On = $84;
MRG_SubstForm_Off = $85;
MRG_SubStr_On = $86;
MRG_SubStr_Off = $87;
MRG_System_On = $88;
MRG_System_Off = $89;
MRG_ToLower_On = $8a;
MRG_ToLower_Off = $8b;
MRG_ToUpper_On = $8c;
MRG_ToUpper_Off = $8d;
MRG_Variable_On = $8e;
MRG_Variable_Off = $8f;
MRG_Wait_On = $90;
MRG_Wait_Off = $91;
MRG_While_On = $92;
MRG_While_Off = $93;
MRG_PostNet_On = $94;
MRG_PostNet_Off = $95;

type
ColInfo = record
	bColumnDef:      BYTE;
	wColumnWidth:    WORD;
	bWidthDef:       BYTE;
	wWidthBetween:   WORD;
end;
LPCOL_INFO = ^ColInfo;

var
hWPF: Longint;
hGWPF: Longint;


{*******************************************************************
********************************************************************
* Secondary Merge File functions *
*******************************************************************
********************************************************************}


{*FUNCTION***********************************************************
	;MRGInitDataFile
	DESCRIPTION:  Creates a new WP file using lpszFileName.
	IN:			bMajorVersion - 2 = WP 6.0, WP 6.1, and WP 7.0
				bMinorVersion - 0 = WP 6.0, 1 = WP 6.1 and WP 7.0
				lpszFileName - Filename for the secondary merge data file.
	GLOBALS:
	RETURNS:  The handle to the file, otherwise INVALID_HANDLE_VALUE.
  NOTE:	Must be called before making any other function call from this DLL.
	Call function MRGCloseDataFile at end of MRGInitDataFile process.
********************************************************************}
MRGInitDataFile: function (bWPVersion: BYTE; lpszFileName: PChar): THandle far stdcall;


{*FUNCTION***********************************************************
	;MRGCreateFieldNames
	DESCRIPTION:	Adds secondary merge field names to a WP document,
                        and adds the field count to the prefix.
			I.e., FieldNames(First Name;Last Name;Phone) ENDRECORD

	IN:       	hFile - Handle of the WP data File from InitDataFile();
			lpszFieldName - semicolon delimited string containing
			              the names of the fields.  i.e. First Name;Last Name;Phone
			              If null Field numbers are used.
			nFieldCount - The number of Fields.
	GLOBALS:
	NOTE: Must be called after calling InitDataFile().
********************************************************************}
MRGCreateFieldNames: procedure (hFile: THandle; lpszFieldName: PChar; nFieldCount: integer); far stdcall;


{*FUNCTION***********************************************************
	;MRGAddField
	DESCRIPTION:	Adds data to the secondary merge file.
			I.e.,	Mike ENDFIELD
				Cowpland ENDFIELD
				...
	IN:		hFile - Handle of the WP data File from InitDataFile();
			lpszField - Field Data
	GLOBALS:
	NOTE:	Used after calling CreateFieldName.  Call for each field in record;

	Extended Character Support:
		In previous versions of WPFormat.dll extended characters were not supported and corrupted the DLL.
		This version of WPFormat.dll contains support for 26 extended characters.
		This support is limited to systems using the 1252 code page.
		The valid characters are:
			Ç, ü, é, â, ä, à, å, ç, ê, ë, è, Ä, Å, É, æ, Æ, ö, ù, Ö, Ü, á, í, ú, ñ, Ñ, ß
		All other extended characters are replaced with a # symbol.

********************************************************************}
MRGAddField: procedure (hFile: THandle; lpszField: PChar); far stdcall;


{*FUNCTION***********************************************************
	;MRGEndRecord
	DESCRIPTION:  Ends a merge record
			I.e.,	Mike ENDFIELD
			Cowpland ENDFIELD
			(801)555-5555 ENDFIElD
			ENDRECORD

	IN:		hFile - Handle of the WP data File from InitDataFile();
	GLOBALS:
	NOTE: Call after adding all your fields using AddField.  Use a
	      combination of AddField and EndRecord for each record of data.
********************************************************************}
MRGEndRecord: procedure (hFile: THandle); far stdcall;


{*FUNCTION***********************************************************
	;MRGAddMergeCode
	DESCRIPTION:  Adds a merge code to a WP data file.
	IN:		hFile - Handle of the WP data File from InitDataFile();
			wMergeCode - MergeCode (see MERGECODE_TYPES in the wpformat.h file)
	RETURNS:  TRUE if a valid code, otherwise FALSE;
	NOTE:	  THIS FUNCTION IS NOT COMPLETE.
********************************************************************}
MRGAddMergeCode: procedure (hFile: THandle; bMergeCode: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;MRGCloseDataFile
	DESCRIPTION:  Closes the WP data file opened using InitDataFile();
	IN:	      hFile - Handle of the WP data File.
	NOTE:  Call at the end of creating the WP data file.
*******************************************************************}
MRGCloseDataFile: procedure (hFile: THandle); far stdcall;

{*******************************************************************
********************************************************************
* Generic WP File Functions *
*******************************************************************
********************************************************************}

{*FUNCTION***********************************************************
	;InitWPFileGeneric
	DESCRIPTION:  Creates a new WP file using lpszFileName.

	IN:			bMajorVersion - 2 = WP 6.0, WP 6.1, and WP 7.0
				bMinorVersion - 0 = WP 6.0, 1 = WP 6.1 and WP 7.0
				lpszFileName - Filename for the generic WP file.
	GLOBALS:

	RETURNS:	The handle to the file, otherwise INVALID_HANDLE_VALUE.

	NOTE:		Must be called before making any other function call from this DLL.
				Use function CloseGenericWPFile to close the file.
********************************************************************}
InitWPFileGeneric: function (bWPVersion: BYTE; lpszFileName: PChar): THandle far stdcall;


{*FUNCTION***********************************************************
	;WPAddText
	DESCRIPTION:	Adds text to generic WP file.
	IN:		hFile - Handle of the WP File from InitWPFile();
			lpszText - text to add to file's doc area
	GLOBALS:

	Extended Character Support:
		In previous versions of WPFormat.dll extended characters were not supported and corrupted the DLL.
		This version of WPFormat.dll contains support for 26 extended characters.
		This support is limited to systems using the 1252 code page.
		The valid characters are:
			Ç, ü, é, â, ä, à, å, ç, ê, ë, è, Ä, Å, É, æ, Æ, ö, ù, Ö, Ü, á, í, ú, ñ, Ñ, ß
		All other extended characters are replaced with a # symbol.
********************************************************************}
WPAddText: procedure (hFile: THANDLE; lpszText: PChar); far stdcall;


{*FUNCTION***********************************************************
	;WPAddHardReturn
	DESCRIPTION:	Adds hard return to document
                        hFile - Handle of the WP File from InitWPFileGeneric();
	GLOBALS:
********************************************************************}
WPAddHardReturn: procedure (hFile: THANDLE); far stdcall;


{*FUNCTION***********************************************************
	;WPAddHardPage
	DESCRIPTION:	Adds hard page break to document
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
	GLOBALS:
********************************************************************}
WPAddHardPage: procedure  (hFile: THANDLE); far stdcall;


{*FUNCTION***********************************************************
	;CloseGenericWPFile
	DESCRIPTION:  Closes the WP file opened using InitWPFile();
	IN:		hFile - Handle to the WP File.
	NOTE:  Call at the end of creating the InitWPFileGeneric.
*******************************************************************}
CloseWPFileGeneric: procedure  (hFile: THANDLE); far stdcall;


{*FUNCTION***********************************************************
	;WPMarginSet
	DESCRIPTION:	Set document margins
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			bMarginType - 1 = TOP_MARGIN
			              2 = BOTTOM_MARGIN
			              3 = LEFT_MARGIN
				      4 = RIGHT_MARGIN
			wMarginInWPUs - value of specific margin in WordPerfect Units
	GLOBALS:
********************************************************************}
WPMarginSet: procedure (hFile: THANDLE; bMarginType: BYTE; wMarginInWPUs: WORD); far stdcall;


{*FUNCTION***********************************************************
	;WPPageNumber
	DESCRIPTION:	Turn Page number on/off
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			bToggle 0 = Off, 1 = On
	GLOBALS:
********************************************************************}
WPPageNumber: procedure (hFile: THANDLE; bToggle: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPInsertSearchCode
	DESCRIPTION:	Insert MacroFunc search code
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			wSearchCode - in range 0xD000 to 0xFFFD, values defined in srchtbl.h
	GLOBALS:
********************************************************************}
WPInsertSearchCode: procedure (hFile: THANDLE; wSearchCode: WORD); far stdcall;


{*FUNCTION***********************************************************
	;WPTextAttribute
	DESCRIPTION:	Insert attribute code on/off
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			bToggle - 0 = Off, 1 = On
			bAttributeType - type of attribute (see ATTRIBUTES in the wpformat.h file)
	GLOBALS:
********************************************************************}
WPTextAttribute: procedure (hFile: THANDLE; bToggle: BYTE ; bAttributeType: INTEGER); far stdcall;


{*FUNCTION***********************************************************
	;WPInsertWPChar
	DESCRIPTION:	Insert character from a WP Character set
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			wCharacter - Extended character value - <character><character set number>
	GLOBALS:
********************************************************************}
WPInsertWPChar: procedure (hFile: THANDLE; wCharacter: WORD ); far stdcall;


{*FUNCTION***********************************************************
	;WPChangePaperType
	DESCRIPTION:	Change the paper type and orientation
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			bType - Letter_Portrait	= 0
				Letter_Landscape= 1
				Legal_Portrait = 2
				Legal_Landscape = 3
	GLOBALS:
	NOTE:		No processing is done for Letter_Portrait. The form defaults
			are for this type, the function does not need to be called for this type.
********************************************************************}
WPChangePaperType: procedure (hFile: THANDLE; bType: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPThirdPartyCode
	DESCRIPTION:	Change the paper type and orientation
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			lpszString - Text/information to store in 3rd Party code
			wCompanyID - Company id, call Corel Solution Partners for your code
	GLOBALS:
********************************************************************}
WPThirdPartyCode: procedure (hFile: THANDLE; lpszString: LPSTR; wCompanyID: WORD); far stdcall;


{*FUNCTION***********************************************************
	;WPSetTabType
	DESCRIPTION:	Insert a tab in a WP document
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			bDotLeader - 0 = not set, 1 = set
			bTabDef - Tab Type
			  Back_Tab = 0x00
			  Table_Tab = 0x08
			  Left_Tab = 0x10
			  Bar_Tab = 0x20
			  Left_Indent = 0x30
			  LeftRight_Indent = 0x38
			  Ctr_On_Margins = 0x40
			  Ctr_On_CurPos = 0x48
			  Ctr_Tab = 0x50
			  Flush_Right = 0x80
			  Right_Tab = 0x90
			  Decimal_Tab = 0x1A
			bHardSoftTab - 0 = Hd Tab, 1 = Soft
	GLOBALS:
********************************************************************}
WPSetTabType: procedure (hFile: THANDLE; bDotLeader: BYTE; bTabDefinition: BYTE; bHardSoftType: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPColDef
	DESCRIPTION:	Define text columns
	IN:			hFile - Handle to the WP File
				bColumnType - 0 = Newspaper, 1 = newspaper with vertical balance,
							  2 = parallel, 3 = parallel with protect.
				bNumColumns - Number of columns to be defined.
						  If this value is zero or one, columns
						  will be turned off.  If this value is
						  zero or one, do not call WPColInsertColInfo.

	GLOBALS:   	WPSetCol_NumColumns - this value is NOT set by the caller
	Note:		Calling WPColDef twice without calling WPColDefEnd will produce	a corrupt document.
*******************************************************************}
WPColDef: procedure (hFile: THANDLE; bColumnType: BYTE; bNumColumns: BYTE); far stdcall;


{*FUNCTION**********************************************************
	;WPColDefEnd
	DESCRIPTION:	End the column definition.  This function is
                        called after WPColDef.  This function is called
			once for each WPColDef.
	IN:		hFile - Handle to the WP File
	GLOBALS:   .	WPSetCol_NumColumns
*******************************************************************}
WPColDefEnd: procedure (hFile: THANDLE); far stdcall;


{*FUNCTION**********************************************************
	;WPColInsertColInfo
	DESCRIPTION:	Insert information for each column defined. If defining
                        two or more columns, this function must be called for
			each column defined.  For the last column defined, bWidthDef
			and wColWidthBetween must be set to NULL values indicating the last column.
	IN:		hFile - Handle to the WP File
			bColDef - column n definition
			  0 = fixed point value (WPFP)
			  1 = fixed width (WPU)
			wColWidth - column n width value (in WPFP or WPU)
			bWidthDef - width between columns n and n+1 definition
			  0 = fixed point value (WPFP)
			  1 = fixed width (WPU)
			wColWidthBetween - width between columns n and n+1 value (in WPFP or WPU)
	GLOBALS:   .	WPSetCol_NumColumns
*******************************************************************}
WPColInsertColInfo: procedure (hFile: THANDLE; bColDef: BYTE; wColWidth: WORD; bWidthDef: BYTE; wColWidthBetween: WORD); far stdcall;


{*FUNCTION**********************************************************
	;WPInsertHd_EOC
	DESCRIPTION:	Insert an End of Column code ( move to next column )
	IN:		hFile - Handle to the WP File
	GLOBALS:   .
*******************************************************************}
WPInsertHd_EOC: procedure (hFile: THANDLE); far stdcall;

{*FUNCTION***********************************************************
	;WPUnderline_Space_Tab
	DESCRIPTION:	Toggle underline spaces or tabs
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			bType - UND_SPACES = 2
				UND_TABS = 3
			bToggle - OFF = 0, ON = 1
	GLOBALS:
********************************************************************}
WPUnderline_Space_Tab: procedure (hFile: THANDLE; bType: BYTE; bToggle: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPAdvance
	DESCRIPTION:	Set vertical or horizontal advance
	IN:		hFile - Handle of the WP File from InitWPFileGeneric();
			bType - Adv_Horizontal = 0x04
				Adv_Vertical = 0x05
			bAdvDef - Adv_Relative = 0x00
				  Adv_Absolute = 0x01
			wPosAdjInWPUs - value of adjustment in WordPerfect Units
	GLOBALS:   .
*******************************************************************}
WPAdvance: procedure (hFile: THANDLE; bType: BYTE; bAdvDef: BYTE; wPosAdjInWPUs: WORD); far stdcall;


{*FUNCTION***********************************************************
	;WPChangeFontColor
	DESCRIPTION:	Change the text color in the WP document
	IN:		hFile - Handle to the WP File
			RGB Values
			  bRed - value (0-255)
			  bGreen - value (0-255)
			  bBlue - value (0-255)
	GLOBALS:   .
*******************************************************************}
WPChangeFontColor: procedure (hFile: THANDLE; bRed: BYTE; bGreen: BYTE; bBlue: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPChangeFontShading
	DESCRIPTION:	Change the text/font shading in the document
	IN:		hFile - Handle to the WP File
			bPercentShanding - value must be between 0-100
	GLOBALS:   .
*******************************************************************}
WPChangeFontShading: procedure (hFile: THANDLE; bPercentShading: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPCenterCurrentPageTtoB
	DESCRIPTION:	Center the current page in a WP Document
	IN:		hFile - Handle to the WP File
			bToggle - 0 = OFF, 1 = ON
	GLOBALS:   .
*******************************************************************}
WPCenterCurrentPageTtoB: procedure (hFile: THANDLE; bToggle: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPCenterPageTtoB
	DESCRIPTION:	Center all pages in a WP document
	IN:		hFile - Handle to the WP File
			bToggle - 0 = OFF, 1 = ON
	GLOBALS:   .
******************************************************************}
WPCenterPageTtoB: procedure (hFile: THANDLE; bToggle: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPWidowOrphan
	DESCRIPTION:	Toggle Widow/Orphan
	IN:		hFile - Handle to the WP File
			bToggle - 0 = OFF, 1 = ON
	GLOBALS:   .
*******************************************************************}
WPWidowOrphan: procedure (hFile: THANDLE; bToggle: BYTE); far stdcall;


{*FUNCTION***********************************************************
	;WPSetBindingWidth
	DESCRIPTION:	Set the document binding width and position
	IN:		hFile - Handle to the WP File
			bBindingPos - 0 = Left,
			  1 = right,
			  2 = top,
			  3 = bottom
			wBindingWidthInWPUs - Binding width value in WPUs
	GLOBALS:   .
*******************************************************************}
WPSetBindingWidth: procedure (hFile: THANDLE; bBindingPos: BYTE; wBindingWidthInWPUs: WORD); far stdcall;


{*FUNCTION**********************************************************
	;WPSetJustification
	DESCRIPTION:	Set the text justification mode
	IN:		hFile - Handle to the WP File
			bJustificationType - 0 = left
			 1= full
			 2 = center
			 3 = right
			 4 = all
	GLOBALS:   .
*******************************************************************}
WPSetJustification: procedure (hFile: THANDLE; bJustificationType: BYTE); far stdcall;

{*FUNCTION**********************************************************
	;WPSetParaFirstLineIndent
	DESCRIPTION:	Set first line paragraph indent
	IN:		hFile - Handle to the WP File
			wParagraphIndent - this value must be a signed WPU value
					   range: -900u - 7200u
	GLOBALS:   .
*******************************************************************}
WPSetParaFirstLineIndent: procedure (hFile: THANDLE; wParagraphIndent: smallint); far stdcall;


{*FUNCTION**********************************************************
	;WPLineNumbering
	DESCRIPTION:	Turn on line numbering in a document
	IN:		hFile - Handle to the WP File
			bToggle - 0 = off, 1 = on
			bRestartEachPage - 0 = off, 1 = on
			bCountBlankLines - 0 = off, 1 = on
			bNumberInNewspaperCol - 0 = off, 1 = on
			bLeftEdgePosition - 0 = absolute, 1 = relative to left margin
			wLineNumPosInWPUs - SIGNED WPUs from left edge of page
			wFirstLineToPrint - first line to start numbering
			bLineNumInterval - specify the interval between printed line numbers
	GLOBALS:   .
******************************************************************}
WPLineNumbering: procedure (hFile: THANDLE; bToggle: BYTE; bRestartEachPage: BYTE; bCountBlankLines: BYTE; bNumberInNewspaperCol: BYTE; bLeftEdgePosition: BYTE; wLineNumPosInWPUs: WORD; wFirstLineToPrint: WORD; bLineNumInterval: BYTE); far stdcall;

{*FUNCTION**********************************************************
	;WPPageNumPos
	DESCRIPTION:	Set the page numbering postition
	IN:		hFile - Handle to the WP File
			bPageNumberPosition -
                          0 = none
			  1 = left
			  2 = top center
			  3 = top right
			  4 = top outside left and right
			  5 = bottom left
			  6 = bottom center
			  7 = bottom right
			  8 = bottom outside left & right
			  9 = top inside left & right
			 10 = bottom inside left & right
	GLOBALS:   .
*******************************************************************}
WPPageNumPos: procedure (hFile: THANDLE; bPageNumberPosition: BYTE); far stdcall;


{*FUNCTION**********************************************************
	;WPSuppressPgFeatures
	DESCRIPTION:	Suppress headers footers and page numbers
	IN:		hFile - Handle to the WP File
			bSupPageNum - 0 = off, 1 = on
			bSupCurrentPageNum - 0 = off, 1 = on
			bSupHeaderA - 0 = off, 1 = on
			bSupHeaderB - 0 = off, 1 = on
			bSupFooterA - 0 = off, 1 = on
			bSupFooterB - 0 = off, 1 = on
			bSupWaterMarkA - 0 = off, 1 = on
			bSupWaterMarkB - 0 = off, 1 = on
	GLOBALS:   .
*******************************************************************}
WPSuppressPgFeatures: procedure (hFile: THANDLE; bSupPageNum: BYTE; bSupCurrentPageNum: BYTE; bSupHeaderA: BYTE; bSupHeaderB: BYTE; bSupFooterA: BYTE; bSupFooterB: BYTE; bSupWaterMarkA: BYTE; bSupWaterMarkB: BYTE); far stdcall;


{*FUNCTION**********************************************************
	;WPDoubleSidedPrint
	DESCRIPTION:	Toggle double sided print on or off
	IN:		hFile - Handle to the WP File
			bToggle -
				0 = Off
				1 = on
			bPrintMode - new double sided print mode
				0 = long edge duplexing
				1 = short edge duplexing
	GLOBALS:   .
*******************************************************************}
WPDoubleSidedPrint: procedure (hFile: THANDLE; bToggle: BYTE; bPrintMode: BYTE); far stdcall;


{*FUNCTION**********************************************************
	;WPSubdividePage
	DESCRIPTION:	Subdivide a WP document into logical pages
	IN:		hFile - Handle to the WP File
			NumberColumns - number of subdivide columns, minimum is 1
			NumberRows - number of subdivide rows, minimum is 1
	NOTE:  Make sure to accomidate margin widths
*******************************************************************}
WPSubdividePage: procedure (hFile: THANDLE; NumberColumns: BYTE; NumberRows: BYTE); far stdcall;


{*FUNCTION**********************************************************
	;WPSetLineHeight
	DESCRIPTION:	Set the document's line height
	IN:		hFile - Handle to the WP File
			wFixedLineHeightInWPUs - value of fixed line height in WPUs
				0 = automatic line height (default)
				Non-Zero = fixed line height value, regardless of font size
	GLOBALS:   .
*******************************************************************}
WPSetLineHeight: procedure (hFile: THANDLE; wFixedLineHeightInWPUs: WORD); far stdcall;


{*FUNCTION**********************************************************
	;WPSetLineSpacing
	DESCRIPTION:	Set the amound of white space between lines
	IN:		hFile - Handle to the WP File
			LineSpacing - white space value in WPSPs
	GLOBALS:   .
*******************************************************************}
WPSetLineSpacing: procedure (hFile: THANDLE; LineSpacing: DWORD); far stdcall;


{*FUNCTION**********************************************************
	;WPAdjustMargins
	DESCRIPTION:	Set a left of right margin adjustment
	IN:		hFile - Handle to the WP File
			MarginType - 1 = left
				     2 = right
			MarginAdjInWPUs - value of adjustment in WPUs
                        Range: -0.750" - ??
	GLOBALS:   .
*******************************************************************}
WPAdjustMargins: procedure (hFile: THANDLE; MarginType: BYTE; MarginAdjInWPUs: WORD); far stdcall;

{*FUNCTION***********************************************************
	;WPSetTabsBegin
	DESCRIPTION:	Create a tab setting
	IN:		hFile - Handle to the WP File.
			bPositionDef - 0 = absolute, 1 = relative
			wRelativeAdjValue - If bPositionDef is 1, this value should
					match the document's left margin. If bPositionDef is 0,
					this value should be zero.
			bNumberOfTabCombinations - the number of tab type / tab position
					combinations.  This value should match the number of times
					function WPSetTabInfo is called.  If tabs will Repeat (see
					function WPSetTabInfo), the minimum value is at least 2.
	GLOBALS:  WPSetTabs_Size - do not set or change this value
*******************************************************************}
WPSetTabsBegin: procedure (hFile: THANDLE; bPositionDef: BYTE; wRelativeAdjValue: WORD; bNumberOfTabCombinations: BYTE); far stdcall;

{*FUNCTION***********************************************************
	;WPSetTabEnd
	DESCRIPTION:
	IN:		hFile - Handle to the WP File.
	GLOBALS: WPSetTabs_Size - do not set or change this value
*******************************************************************}
WPSetTabEnd: procedure (hFile: THANDLE); far stdcall;

{*FUNCTION***********************************************************
	;WPSetTabInfo
	DESCRIPTION:
	IN:	     	hFile - Handle to the WP File.
		     	bTabType - type of tab being created
		     		0 = left tab
		     		1 = centered tab
		     		2 = right tab
		                3 = decimal aligned tab
				4 = vertical bar tab
				n = the number of times to repeat the tab (if bRepeated is set to 1)
			bDotLeader - 0 = off, 1 = on
			bRepeated - 0 = off, 1 = on
			wTabPositionInWPUs - value of tab position or difference if repeated
	GLOBALS:
	NOTES:		For each tab type/change this function must be called.
			If a tab will be repeated, the function must be called twice,
			once for the initial tab set value, and the second to set
			the repeat values.  The number of times this function is called
			should match the value of bNumberOfTabCombinations in function
			WPSetTabBegin.
*******************************************************************}
WPSetTabInfo: procedure (hFile: THANDLE; bTabType: BYTE; bDotLeader: BYTE; bRepeated: BYTE; wTabPositionInWPUs: WORD); far stdcall;

{*FUNCTION***********************************************************
	;WPSetHyphenationMode
	DESCRIPTION:	Turn Hyphenation on/off
	IN:		hFile - Handle to the WP File.
			bToggle - 0 = off, 1 = on
*******************************************************************}
WPSetHyphenationMode: procedure (hFile: THANDLE; bToggle: BYTE); far stdcall;

{*FUNCTION***********************************************************
	;WPSetLeadingAdjustment
	DESCRIPTION:	Set Leading Adjustment
	IN:		hFile - Handle to the WP File.
			sAdjValueInSignedWPUs - The value of the leading adjustment,
						This value should be in signed WPUs.
*******************************************************************}
WPSetLeadingAdjustment: procedure (hFile: THANDLE; sAdjValueInSignedWPUs: SHORTINT); far stdcall;

{*FUNCTION***********************************************************
	;WPAlignmentCharacter
	DESCRIPTION:    Specify the tab alignmen character
	IN:		hFile - Handle to the WP File.
			wAlignChar - specify the TabSet alignment character,
				     <character number><character set number>
*******************************************************************}
WPAlignmentCharacter: procedure (hFile: THANDLE; wAlignChar: WORD); far stdcall;

{*FUNCTION***********************************************************
	;WPThousandSeparator
	DESCRIPTION:	Change the thousand separator character
	IN:		hFile - Handle to the WP File.
			wThouChar - Specify the thousand separating character
				    <character number><character set number>
*******************************************************************}
WPThousandSeparator: procedure (hFile: THANDLE; wThouChar: WORD); far stdcall;

{*FUNCTION***********************************************************
	;WPKerning
	DESCRIPTION:	Adjust the spacing between letter pairs
	IN:		hFile - Handle to the WP File.
			bToggle - 0 = Off, 1 = On
*******************************************************************}
WPKerning: procedure (hFile: THANDLE; bToggle: BYTE); far stdcall;

{*FUNCTION***********************************************************
	;WPLanguage
	DESCRIPTION:	Change the language for all or part of a document
	IN:		hFile - Handle to the WP File.
			wLangCode - <ascii char value><ascii char value>
                                     AF = Afrikaans
				     CA = Catalan
				     CZ = Czech
				     HR = Croatian
				     DK = Danish
				     NL = Dutch
				     EN = English
				     OZ = English-Australia
				     CE = English-Canada
				     UK = English-UK
				     SU = Finnish
				     LF = French-Canada
				     FR = French-National
				     GA = Galician
				     DE = German-National
				     SD = German-Switzerland
				     GR = Greek
				     MA = Hungarian
				     IS = Icelandic
				     IT = Italian
				     JP = Japanese
				     NO = Norwegian
				     PL = Polish
				     BR = Portuguese-Brazil
				     PO = Portuguese-Portugal
				     RU = Russian
				     SL = Slovak
				     SO = Slovenian
				     ES = Spanish
				     SV = Swedish
				     TR = Turkish
				     YK = Ukrainian
        NOTE:  This code can only be used with installed language modules
*******************************************************************}
WPLanguage: procedure (hFile: THANDLE; wLangCode: WORD); far stdcall;

{*FUNCTION***********************************************************
	;WPDotLeaderCharacter
	DESCRIPTION:	Change the character used as the dot leader character
	IN:		hFile - Handle to the WP File.
			wDotChar - specify the character used for the dot leader
				   <character number><character set number>
			bSpaceBetween - the number of spaces between the dot character
*******************************************************************}
WPDotLeaderCharacter: procedure (hFile: THANDLE; wDotChar: WORD; bSpacesBetween: BYTE); far stdcall;

{*FUNCTION***********************************************************
	;WPConditionalEOP
	DESCRIPTION:	Keep the specified number of lines together on a page. (Widow/Orphan)
	IN:		hFile - Handle to the WP File.
			bNumNotBroken - number of lines to keep together
*******************************************************************}
WPConditionalEOP: procedure (hFile: THANDLE; bNumNotBroken: BYTE); far stdcall;

{*FUNCTION***********************************************************
	;WPCharacterSpaceWidth
	DESCRIPTION:	Increase or decrease the spacing of words and
			characters, values greater than 100 increase the
			space, values less than 100 decrease the space
	IN:		hFile - Handle to the WP File.
			wPctgCharWidth - specify the percentage of optimal,
                                        the spacing between characters
                                        range: 0% - 250%
			wPctgSpaceWidth - specify the percentage of optimal,
					  the spacing between characters
                                          range: 0% - 250%
*******************************************************************}
WPCharacterSpaceWidth: procedure (hFile: THANDLE; wPctgCharWidth: WORD; wPctgSpaceWidth: WORD); far stdcall;

{*FUNCTION***********************************************************
	;WPSpaceExpansion
	DESCRIPTION:	Change space expansion
	IN:		hFile - Handle to the WP File.
			wMinPctgSpaceWidth - minimum percent of space width, default = 60;
                                             range: 0% - 100%
			wMaxPctgSpaceWidth - maximum percent of space width, default = 400
                                             range: 100% - 9999%
*******************************************************************}
WPSpaceExpansion: procedure (hFile: THANDLE; wMinPctgSpaceWidth: WORD; wMaxPctgSpaceWidth: WORD); far stdcall;

{*FUNCTION***********************************************************
	;WPBlockProtect
	DESCRIPTION:	Protect a block of text from being split across page boundaries
	IN:		hFile - Handle to the WP File.
			bToggle - 0 = Off, 1 = On
*******************************************************************}
WPBlockProtect: procedure (hFile: THANDLE; bToggle: BYTE); far stdcall;

{*FUNCTION***********************************************************done
	;WPOverStrike
	DESCRIPTION:	Create an OverStrike character
	IN:		hFile - Handle to the WP File.
			lpCharacters - string of characters used to construct
				       the overstrike character.
	Return:		1 =success, 0 = failure
	Note: The maximum number of characters that can be passed to the
              function is 44.
*******************************************************************}
WPOverStrike: function (hFile: THANDLE; lpCharacters: LPSTR):integer; far stdcall;


// set up functions for merge files
function SetupWPFormat: Boolean;
function CleanupWPFormat: Boolean;

// set up functions for generic wp files
function SetupGenericWP: Boolean;
function CleanupGenericWP: Boolean;


implementation

function SetupWPFormat: Boolean;
begin
//     hWPF := LoadLibrary('s:\dev\devsup\co9sdk-32\dev\wpformat\debug\WPFormat.dll');
     hWPF := LoadLibrary('WPFormat.dll');
     if (hWPF <> 0) then
     begin
        @MRGInitDataFile := GetProcAddress(hWPF, 'MRGInitDataFile');
        @MRGCreateFieldNames := GetProcAddress(hWPF, 'MRGCreateFieldNames');
        @MRGAddField := GetProcAddress(hWPF, 'MRGAddField');
        @MRGEndRecord := GetProcAddress(hWPF, 'MRGEndRecord');
        @MRGCloseDataFile := GetProcAddress(hWPF, 'MRGCloseDataFile');
        Result := TRUE;
     end
     else
        Result := FALSE;
end;

function CleanupWPFormat: Boolean;
begin
     Result := FreeLibrary(hWPF);
end;

function SetupGenericWP: Boolean;
begin
     hGWPF := LoadLibrary('WPFormat.dll');
     if (hGWPF <> 0) then
     begin
        @InitWPFileGeneric := GetProcAddress(hGWPF, 'InitWPFileGeneric');
        @WPAddText := GetProcAddress(hGWPF, 'WPAddText');
        @WPAddHardReturn := GetProcAddress(hGWPF, 'WPAddHardReturn');
        @WPAddHardPage := GetProcAddress(hGWPF, 'WPAddHardPage');
        @CloseWPFileGeneric := GetProcAddress(hGWPF, 'CloseWPFileGeneric');
        @WPMarginSet := GetProcAddress(hGWPF, 'WPMarginSet');
        @WPPageNumber := GetProcAddress(hGWPF, 'WPPageNumber');
        @WPInsertSearchCode :=GetProcAddress(hGWPF, 'WPInsertSearchCode');
        @WPTextAttribute := GetProcAddress(hGWPF, 'WPTextAttribute');
        @WPInsertWPChar :=GetProcAddress(hGWPF, 'WPInsertWPChar' );
        @WPChangePaperType := GetProcAddress(hGWPF, 'WPChangePaperType' );
        @WPThirdPartyCode := GetProcAddress(hGWPF, 'WPThirdPartyCode');
        @WPSetTabType := GetProcAddress(hGWPF, 'WPSetTabType');
        @WPUnderline_Space_Tab := GetProcAddress(hGWPF, 'WPUnderline_Space_Tab');
        @WPAdvance := GetProcAddress(hGWPF, 'WPAdvance');
        @WPChangeFontColor := GetProcAddress(hGWPF, 'WPChangeFontColor');
        @WPChangeFontShading := GetProcAddress(hGWPF, 'WPChangeFontShading');
        @WPCenterCurrentPageTtoB :=  GetProcAddress(hGWPF, 'WPCenterCurrentPageTtoB');
        @WPCenterPageTtoB := GetProcAddress(hGWPF, 'WPCenterPageTtoB');
        @WPSetBindingWidth := GetProcAddress(hGWPF, 'WPSetBindingWidth');
        @WPColDef := GetProcAddress(hGWPF, 'WPColDef');
        @WPColDefEnd := GetProcAddress(hGWPF, 'WPColDefEnd');
        @WPColInsertColInfo := GetProcAddress(hGWPF, 'WPColInsertColInfo');
        @WPInsertHd_EOC := GetProcAddress(hGWPF, 'WPInsertHd_EOC');
        @WPSetJustification := GetProcAddress(hGWPF, 'WPSetJustification');
        @WPLineNumbering := GetProcAddress(hGWPF, 'WPLineNumbering');
    	@WPPageNumPos := GetProcAddress(hGWPF, 'WPPageNumPos');
	@WPSuppressPgFeatures := GetProcAddress(hGWPF, 'WPSuppressPgFeatures');
	@WPDoubleSidedPrint := GetProcAddress(hGWPF, 'WPDoubleSidedPrint');
	@WPSubdividePage := GetProcAddress(hGWPF, 'WPSubdividePage');
	@WPSetLineHeight := GetProcAddress(hGWPF, 'WPSetLineHeight');
	@WPSetLineSpacing := GetProcAddress(hGWPF, 'WPSetLineSpacing');
	@WPAdjustMargins := GetProcAddress(hGWPF, 'WPAdjustMargins');
        @WPSetParaFirstLineIndent := GetProcAddress(hGWPF, 'WPSetParaFirstLineIndent');
        @WPWidowOrphan := GetProcAddress(hGWPF, 'WPWidowOrphan');
        @WPSetTabsBegin := GetProcAddress(hGWPF, 'WPSetTabsBegin');
        @WPSetTabEnd  := GetProcAddress(hGWPF, 'WPSetTabEnd');
        @WPSetTabInfo  := GetProcAddress(hGWPF, 'WPSetTabInfo');

        @WPSetHyphenationMode  := GetProcAddress(hGWPF, 'WPSetHyphenationMode');
        @WPSetLeadingAdjustment  := GetProcAddress(hGWPF, 'WPSetLeadingAdjustment');
        @WPAlignmentCharacter  := GetProcAddress(hGWPF, 'WPAlignmentCharacter');
        @WPThousandSeparator  := GetProcAddress(hGWPF, 'WPThousandSeparator');
        @WPKerning  := GetProcAddress(hGWPF, 'WPKerning');
        @WPLanguage  := GetProcAddress(hGWPF, 'WPLanguage');
        @WPDotLeaderCharacter  := GetProcAddress(hGWPF, 'WPDotLeaderCharacter');
        @WPConditionalEOP  := GetProcAddress(hGWPF, 'WPConditionalEOP');
        @WPCharacterSpaceWidth  := GetProcAddress(hGWPF, 'WPCharacterSpaceWidth');
        @WPSpaceExpansion  := GetProcAddress(hGWPF, 'WPSpaceExpansion');
        @WPBlockProtect  := GetProcAddress(hGWPF, 'WPBlockProtect');
        @WPOverStrike := GetProcAddress(hGWPF, 'WPOverStrike');
        Result := TRUE;
     end
     else
        Result := FALSE;
end;

function CleanupGenericWP: Boolean;
begin
     Result := FreeLibrary(hGWPF);
end;

end.
