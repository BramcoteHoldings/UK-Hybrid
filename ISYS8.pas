  {*********************************************************************}
  {*                                                                  *}
  {*    ISYS 8.0 Application Programming Interface                     *}
  {*    Constants, Data Structures, and Functions                      *}
  {*    For Borland Pascal                                             *}
  {*                                                                   *}
  {*********************************************************************}

Unit ISYS8;

Interface

{$ALIGN ON}
{$LONGSTRINGS OFF}

uses 
	Windows;
const
{*********************************************************************
 *       Constants (Appendix D)                                      *
 *********************************************************************}

{ Use these constants when calling IDB_Function.
  If you are passing several parameters, you must separate them with spaces.
  For instance,
      IDB_Function (ISYS_IDB_Create + ' ' + ISYS_IDB_Regardless); }
  ISYS_IDB_Create  	  = 'CREATE';
  ISYS_IDB_Regardless = 'REGARDLESS';
  ISYS_IDB_NoUpdate   = 'NOUPDATE';
  ISYS_IDB_Update  	  = 'UPDATE';
  ISYS_IDB_Presort    = 'PRESORT';
  ISYS_IDB_Rebuild  	= 'REBUILD';
  ISYS_IDB_Reindex  	= 'REINDEX';
  ISYS_IDB_Preview  	= 'PREVIEW';
  ISYS_IDB_Detail  	  = 'DETAIL';
  ISYS_IDB_Statistics = 'STATISTICS';
  ISYS_IDB_Freq  		  = 'FREQ';
  ISYS_IDB_List  		  = 'LIST';
  ISYS_IDB_Alpha  	  = 'ALPHA';
  ISYS_IDB_Reverse  	= 'REVERSE';
  ISYS_IDB_Common  	  = 'COMMON';
  ISYS_IDB_Memory  	  = 'MEMORY';
  ISYS_IDB_Version  	= 'VERSION';
  ISYS_IDB_Users  	  = 'USERS';
  ISYS_IDB_Support  	= 'SUPPORT';
  ISYS_IDB_Check  	  = 'CHECK';
  ISYS_IDB_Dump  		  = 'DUMP';
  ISYS_IDB_Close  	  = 'CLOSE';
  ISYS_IDB_Block  	  = 'BLOCK';
  ISYS_IDB_Error  	  = 'ERROR';
  ISYS_IDB_Headers  	= 'HEADERS';
  ISYS_IDB_Status  	  = 'STATUS';
  ISYS_IDB_Stats  	  = 'STATS';
  ISYS_IDB_Formats  	= 'FORMATS';
  ISYS_IDB_Options  	= 'OPTIONS';
  ISYS_IDB_Tagstats  	= 'TAGSTATS';
  ISYS_IDB_Optimize	  = 'OPTIMIZE';
  ISYS_IDB_Add		    = 'ADD';
  ISYS_IDB_Top		    = 'TOP';
  ISYS_IDB_Recategorize    = 'RECATEGORIZE';
  ISYS_IDB_ProcessCachedDeletes= 'PROCESSCACHEDDELETES';
  ISYS_IDB_RefreshSecurityCache= 'REFRESHSECURITY';

{-----------------------------------------------------------------------------------}
{Use these constants to determine the type of message you received back from the DLL.}
  ISYS_MSG_Stream  		   = 'M';
  ISYS_MSG_Titles  		   = 'S';
  ISYS_MSG_Rewrite  	   = 'R';
  ISYS_MSG_Beginscan     = 'A';
  ISYS_MSG_Scanprogress  = 'B';
  ISYS_MSG_Deindexing  	 = 'C';
  ISYS_MSG_Deleting  		 = 'D';
  ISYS_MSG_Reading  		 = 'E';
  ISYS_MSG_Readprogress1 = 'F';
  ISYS_MSG_Readprogress2 = 'H';
  ISYS_MSG_Updating  		 = 'G';

{-----------------------------------------------------------------------------}
{When the message type was ISYS_MSG_Scanprogress, compare the integer parameter}
{to these constants to determine the meaning of the longint parameter.}
  ISYS_MSG_Progress_Dirs  	  = 1;
  ISYS_MSG_Progress_Files  	  = 2;
  ISYS_MSG_Progress_Rulefiles = 3;
  ISYS_MSG_Progress_Index  	  = 4;
  ISYS_MSG_Progress_Deindex   = 5;
  ISYS_MSG_Progress_Reindex   = 6;

{-----------------------------------------------------------------------------}
  { Open_Database Consts }
  ISYS_OpenReadOnly     = 0;
  ISYS_OpenReadWrite    = 1;

  { Perform_Find, Perform_SCT_Find Consts }
  ISYS_Query_None				= 0;
  ISYS_Query_Synonym    = 1;
  ISYS_Query_Conflate   = 2;
  ISYS_Query_Thesausus  = 8;
  ISYS_Query_Internet_Syntax  = 16;
  ISYS_Query_AND_With_Current = 32;
  ISYS_SCTFind_And      = 4;
  ISYS_SCTFind_ButNot   = 0;
  ISYS_MetaScope_All       = 0;
  ISYS_MetaScope_Meta_Only = 1;
  ISYS_MetaScope_Body_Only = 2;

  { Sort_Documents Consts }
  ISYS_Sort_Default     = 1;
  ISYS_Sort_NumHits     = 2;
  ISYS_Sort_DocSize     = 3;
  ISYS_Sort_FilePath    = 4;
  ISYS_Sort_FileType    = 5;
  ISYS_Sort_FileName    = 6;
  ISYS_Sort_DateTime    = 7;
  ISYS_Sort_Relevance   = 8;
  ISYS_Sort_DocDate     = 9;
  ISYS_Sort_Bytes       = 10;
  ISYS_Sort_Indexed     = 11;
  ISYS_Sort_Title       = 12;
  ISYS_Sort_UnPhrasedHits= 13;
  ISYS_Sort_Format       = 14;
  ISYS_Sort_Metadata     = 15;
  ISYS_Sort_Precedence   = 16;
  ISYS_Sort_Cat_Weighted_Relv  = 17;
  ISYS_Sort_Reverse     = -1;
  ISYS_Sort_Within_Index= 32;
  ISYS_Sort_Within_Category_Name = 64;
  ISYS_Sort_Within_Category_Freq = 128;
  ISYS_Sort_Within_Category_Relevance = 192;

  { Open_Database return values }
  ISYS_Open_OK          = 0;
  ISYS_Open_Failed      = -1;
  ISYS_Open_Changed     = -2;
  ISYS_Open_NoRights    = -3;
  ISYS_Open_NoReader    = -4;
  ISYS_Open_Password    = -5;
  ISYS_Open_CacheError  = -6;

  { Character codes for strings returned from Get_Document_Line }
  ISYS_Char_SoftSpace   = 1;
  ISYS_Char_Normal      = 2;
  ISYS_Char_Bold        = 3;
  ISYS_Char_Italic      = 4;
  ISYS_Char_Underline   = 5;
  ISYS_Char_Hit         = 6;
  ISYS_Char_NoIndexing  = 7;
  ISYS_Char_Paragraph   = 16;
  ISYS_Char_Start_Entity= 17;
  ISYS_Char_End_Entity  = 18;

  { Filename_Filter.wAccess Consts }
  ISYS_Filter_Next      = $F0;
  ISYS_Filter_This      = $FF;

  { Filename_Filter Consts }
  ISYS_Filter_DontCareDate = 0;
  ISYS_Filter_DontCareName = '';

  { Get_Format_Attribute return value }
  ISYS_Wsearch_Stem		    = 0;
  ISYS_Wsearch_Sound	    = 1;

  { CFG_Settings and Def_Settings Consts }
  ISYS_Load					      = 'L';
  ISYS_Save					      = 'S';

  { External_Annotation_Processing Consts }
  ISYS_Anno_Display		    = 1;
  ISYS_Anno_Edit			    = 2;
  ISYS_Anno_Delete		    = 0;

  { Search operand consts }
  ISYS_Oper_And				    = 'AND';
  ISYS_Oper_Or				    = 'OR';
  ISYS_Oper_Not				    = 'NOT';
  ISYS_Oper_Xor				    = 'XOR';
  ISYS_Oper_Except		    = 'EXCEPT';
  ISYS_Oper_ButNot		    = 'BUTNOT';
  ISYS_Oper_Label			    = 'LABEL';
  ISYS_Oper_In				    = 'IN';
  ISYS_Oper_ESPIn				    = 'ESPIN';
  ISYS_Oper_Nearfollow    = '..';
  ISYS_Oper_Farfollow	    = '...';

  { CFG_Formats Consts }
  ISYS_CFG_Write				  = 1;
  ISYS_CFG_Read				    = -1;

  { Rule_Move Consts }
  ISYS_Rule_Delete			  = 0;

  { Fetch_Rule_Areas Consts }
  ISYS_Rule_CurrentArea   = 0;
  ISYS_Rule_ThisArea		  = 0;
  ISYS_Rule_NextArea		  = -1;

  { Concord_From_File Consts }  
  ISYS_CCFopt_Vent			  = 1;
  ISYS_CCFopt_dBaseID     = 2;
  ISYS_CCFopt_dBaseEntire = 4;
  ISYS_CCFopt_ASCII1			= 8;
  ISYS_CCFopt_ASCII2			= 16;
  ISYS_CCFopt_WYSIWYG			= 32;
  ISYS_CCFopt_Widelines		= 64;
  ISYS_CCFopt_OEM 			  = 128;
  ISYS_CCFopt_HTML			  = 256;

  { Get_Format_Attribute Consts }
  ISYS_Format_Name			  = 1;
  ISYS_Format_Code			  = 2;

  ISYS_Rename_OK				  = 0;
  ISYS_Rename_OFN				  = 1;
  ISYS_Rename_NFN			    = 2;
  ISYS_Rename_Mode        = 3;
  
  { Call Tracing Consts}
  ISYS_Call_Tracing_Off = 0;
  ISYS_Call_Tracing_IDE_Only = 1;
  ISYS_Call_Tracing_On = 2;
  ISYS_Call_Tracing_To_Screen = 0;
  ISYS_Call_Tracing_To_Callback = 1;
  ISYS_Call_Tracing_To_Disk = 2;

  { ISYS_Multiplex Consts }
  ISYS_Multi_Thresh       = 1;
  ISYS_Multi_Ver          = 2;
  ISYS_Multi_Line         = 3;
  ISYS_Multi_SetMsg       = 4;
  ISYS_Multi_TimeStamp    = 5;
  ISYS_Multi_DBRoot       = 6;
  ISYS_Multi_AuditID      = 8;
  ISYS_Multi_Msgbox       = 10;
  ISYS_Multi_Conflate     = 12;
  ISYS_Multi_PassThruTabs = 14;
  ISYS_Mutli_Direct_IXC   = 15;
  ISYS_Multi_Docname_to_IXCnumber   = 16;
  ISYS_Multi_IXCnumber_to_HitNumber = 17;
  ISYS_Multi_IXCnumber_to_DocNumber = 18;
  ISYS_Multi_EAM_Sense_IXCnumber    = 19;
  ISYS_Multi_Get_Index_Stats        = 20;
  ISYS_Multi_Define_Syn_Char        = 21;
  ISYS_Multi_DocNumber_to_Name      = 23;
  ISYS_Multi_Get_Language_Code      = 24;
  ISYS_Multi_Set_Indexing_Date_Limit       = 25;
  ISYS_Multi_Get_Document_Access_Method    = 28;
  ISYS_Multi_Set_Unfound_Open_File_Type    = 31;
  ISYS_Multi_Get_Rlist_Extent_For_Doc      = 37;
  ISYS_Multi_Get_Current_Instance_Handle   = 40;
  ISYS_Multi_Get_Current_Document_Names    = 41;
  ISYS_Multi_Soft_Fail_Chain_Opens         = 42; 
  ISYS_Multi_Set_Nonunicode_Codepage       = 44;
  ISYS_Multi_Disable_Term_Coloring         = 48;
  ISYS_Multi_Line_Number_to_Paragraph_Number = 49;
  ISYS_Multi_Get_Paragraph_Extent            = 50;
  ISYS_Multi_Get_Deferred_Deletion_Status    = 55;
  ISYS_Multi_Get_Index_Status                = 56;
  ISYS_Multi_Get_Term_Existence_Map          = 61;
  ISYS_Multi_Set_Fatal_Error_Log_Dir         = 62;
  ISYS_Multi_Get_Index_Created_Software_Ver  = 64;
  ISYS_Multi_Get_Index_Indexed_Software_Ver  = 65;
  ISYS_Multi_Disable_Auto_Index_Backups      = 66;
  ISYS_Multi_Force_Auto_Index_Backup         = 67;
  ISYS_Multi_Get_Rich_HTML_Real_DocType    = 101;
  ISYS_Multi_DocNumber_to_associated_image = 103;
  ISYS_Multi_Add_Hits_to_HTML              = 105;
  ISYS_Multi_Set_OpenUnfound_Doc_attributes = 107;
  ISYS_Multi_Set_Indexing_Granularity      = 110;
  ISYS_Multi_Set_Instance_Storage          = 112;
  ISYS_Multi_Get_Instance_Storage          = 113;
  ISYS_Multi_Get_Document_Changed_Status   = 115;
  ISYS_Multi_Parse_Date                    = 116;
  ISYS_Multi_Get_User_Count                = 117;
  ISYS_Multi_HTTP_Get                      = 118;
  ISYS_Multi_Extract_Text_From_Document    = 119;
  
  { Installable Security Filter constants }
  ISYS_Auth_Unknown = -1;
  ISYS_Auth_OK	    =  0;
  ISYS_Auth_NotFound=  1;
  ISYS_Auth_NoRights=  2;
  
  { Entities}
  ISYS_Entity_Person             = 1;
  ISYS_Entity_Organization       = 2;
  ISYS_Entity_Email_Address      = 3;
  ISYS_Entity_Location           = 4;
  ISYS_Entity_Website            = 5;


  Max_Annotations = 850;
  MAX_INDEXING_RULES = 150;


type
  HDOC = smallint;
  HLDOC	= longint;
  PSHORT = ^smallint;

type
  ECB_Type    = Record
  		 Msg: Array [1..238] of char;
  		 MsgId: Smallint;
  		 End;

 {***************************************************************************
  **          Query-Related data structures                                **
  ***************************************************************************}

  Instance_Status_Block = record
    DLL_Version    : array[1..16] of char;
    Reserved       : SmallInt;
    License_Type   : SmallInt;
    Licensee_ID1   : array [1..40] of char;
    Licensee_ID2   : array [1..40] of char;
  end;

  Document_Control_Block = record
    Document_Num       : Longint;
    File_Path          : Array [1..255] of char;
    Document_Title     : Array [1..150] of char;
    Words_in_Document  : Longint;
    Num_Hits           : Longint;
    Phrased_Hits       : LongInt;
    Relevance          : LongInt;
    File_Format        : Longint;
    File_Time_Stamp    : Longint;
    Size_in_Bytes      : Longint;
    When_Indexed       : Longint;
    When_Confirmed     : Longint;
    Date_in_Document   : Longint;
    HTML_File_Format   : Longint;
    Chain_Member       : Longint;
    SubChain_Document_Num: Longint;
    NonUnicode_Codepage: Longint;
    Full_File_Name      : Array [1..255] of char;
    Category            : Array [1..100] of char;
    Metadata_Hits       : Longint;
    Metadata_Lines      : Longint; 
    Paragraph_Count     : Longint;
    Flags               : Longint;
    Entity_Count        : Longint;
    Reserved            : Array [1..233] of char;
  end;

  Query_Result_Block = record
    Total_Hits     : Longint;
    Diff_Words     : Longint;
    Num_Docs       : Longint;
    Filtered_Flag  : SmallInt;
    Subquery_Size  : Longint;
    Phrased_Hits   : LongInt;
  end;
  
  Category_Control_Block = record
    Name             : Array [1..100] of char;
    Num_Docs         : Longint;
    Relevance        : Longint;
    Weight           : Longint;
    End;

  Entity_Occurrence_Block = Record
    EID              : Array [1..4] of Char;
    EType            : Longint;
    ParaNo           : Word;
    WordNo           : Word;
    Entity_Name      : Array [1..255] of char;
    end;


  Entity_Summary_Block = Record
    EID              : Array [1..4] of Char;
    EType            : Longint;
    Count            : Longint;
    Entity_Name      : Array [1..255] of char;
    end;



  {***************************************************************************
   **          Annotation Data Structures                                   **
   ***************************************************************************}

  Annotation_Type  = (A_Note, A_Graphic, A_DDA, A_Query, A_HyperLink, A_Any, A_Deleted);

  Annotation_Entry = record
    Row: Longint;
    Col: Longint;
    Typ: Annotation_Type;
  end;
  Annotation_Index  = Array[1..Max_Annotations] of Annotation_Entry;
  Anno_Index_Ptr    = ^Annotation_Index;

  DDA_Details = record
    Reserved   : Byte;
    Dir        : String [255];
    Command    : String [255];
    Keystrokes : String [128];
  end;

  Annotation_Detail = record
    icon : string[127];
    case Integer of
    1: (Note_Size: word; Num_pages: word; pages: array [1..16] of smallint);
    2: (Graph_Name: string[255]);
    3: (DDA: DDA_details);
    4: (doclink: string[255]);
    5: (query: string);
  end;
  Anno_Detail_Ptr   = ^Annotation_Detail;

  Anno_Ext = record
    idx: Annotation_Entry;
    det: Annotation_Detail;
  end;

  {***************************************************************************
   **          Maintenance and advanced data structures                     **
   ***************************************************************************}
  Filter_Block = record
    Path_Contains  : array [1..255] of char;
    Path_Omits     : array [1..255] of char;
    Name_Like      : array [1..255] of char;
    Name_Unlike    : array [1..255] of char;
    Category_Like  : array [1..255] of char;
    Category_Unlike: array [1..255] of char;
    Date_Before,
    Date_After,
    DateInDoc_Before,
    DateInDoc_After,
    DateIndexed_Before,
    DateIndexed_After: record
      Year, Month, Day: Word;
    end;
    FileType       : Longint;
  end;
  

  SCT_Block = record                                                      {Concept Tree}
    Concept_Name : Array [1..128] of char;
    Query        : Array [1..128] of char;
    ORed         : Boolean;
    Indent       : SmallInt;
    Info         : Array [1..4] of Array [1..70] of char;
    Filter       : Filter_Block;
  end;

  SYN_Block = record                                                     {Synonyms}
    Word       : Array [1..64] of char;
    Next_Syn   : Longint;
    Next_Ring  : Longint;
  end;

  Action_Control_Block = record
    Action          	: Byte;
    Dir_Constraint  	: Array [1..255] of char;
    Pr_Line_Limit   	: SmallInt;
    DDA_Allowed     	: SmallInt;
    Synedit_Allowed 	: SmallInt;
    LibEdit_Allowed 	: SmallInt;
    AnnoEdit_Allowed	: SmallInt;
    Copy_Allowed    	: SmallInt;
    Audit_On        	: SmallInt;
    Audit_UID       	: Array [1..255] of char;
    Audit_Fname     	: Array [1..255] of char;
    Audit_Errors    	: SmallInt;
    Audit_Queries   	: SmallInt;
    Audit_Results   	: SmallInt;
    Audit_Browses   	: SmallInt;
    Audit_Activates 	: SmallInt;
    Audit_Annocreates	: SmallInt;
    Audit_Starts    	: SmallInt;
    Audit_Loads     	: SmallInt;
    Audit_Databases   : SmallInt;
    DirSelect_Allowed : SmallInt;
    CatEdit_Allowed   : SmallInt;
    Print_Allowed	    : SmallInt;
    Enforce_Security_Visibility: SmallInt;
  end;

  Config_Control_Block = record
    Action          : Char;
    Name            : Array [1..255] of char;
    Concurrency     : SmallInt;
    Numbers_Common  : SmallInt;
    Latency         : SmallInt;
    Signif          : Array [1..255] of char;
    InSignif        : Array [1..255] of char;
    Annodrive       : Array [1..255] of char;
    Title_Line      : SmallInt;
    Title_String    : Array [1..100] of char;
    Date_Handling   : SmallInt;
    Dot_Handling    : SmallInt;
    Filename_Indexing : SmallInt;
    Annotation_Indexing : SmallInt;
    Master_Doc      : Array [1..255] of char;
    OCR_Precomp     : SmallInt;
    Number_Handling : SmallInt;
    Doc_Profiles    : Smallint;
    Language_Code   : SmallInt;
    Meta_Titles     : SmallInt;
    Flush_Index_n_Docs  : Longint;
    Flush_Index_n_Words : Longint;
    Backup_Generations  : SmallInt;
    Default_File_Options: SmallInt;
    Max_Word_Length     : SmallInt;
    Load_EAM            : Array [1..255] of char;
    NonUnicode_Codepage : SmallInt;
    Deferred_Deleted_Cache_Percent: SmallInt;
    Spelling_Tips_Avail: SmallInt;
    Cache_Metadata     : SmallInt;
    Cache_Security     : SmallInt;
    Index_Type         : Byte;
    Custom_Props: array[1..255] of char;
    Entity_Handling    : SmallInt; 
    Cache_Documents    : SmallInt; 
  end;
  
  Format_Rec = record
    Name            : Array [1..40] of char;
    Code            : Array [1..20] of char;
    Nominated       : SmallInt;
  end;
  Format_Array = Array [1..64] of Format_Rec;

  Rule_Area_Rec = record
    Name            : Array [1..60] of char;
  End;
  Rule_Area_Array = Array [1..64] of Rule_Area_Rec;

  Rule_List_Entry = Array [1..255] of char;
  Rule_List_Array = Array [1..MAX_INDEXING_RULES] of Rule_List_Entry;

  Word_Search_Context = record
    Link: Longint;
    Reserved: array [1..76] of byte;
  end;

  Word_Pointer_Block = record
    Word_Num: Word;
    Paragraph: Word;
    Document: Longint;
    Term_Id: Word;
  end;

  EAM_Context = record
    RBA : Longint;
    Aux : Longint;
    Aux2 : Longint;
  end;

  Result_List = record
    Size  : LongInt;  {number of entries in the list}
    Words : Word;     {number of words in the list}
    Suffix: Boolean;
    Group : SmallInt;  {size of phrase groups}
    Phwrds: SmallInt;  {words in phrase so far}
    Common: Boolean;  {true if list represent a common word}
    Reserved1: Longint;  {reserved}
    Num_Arts: Longint;    {number of articles in list}
    Reserved2: Array [1..58] of Byte; {reserved}
  end;
  rlist_ptr = ^Result_List;

  Chapter_Entry_Block = packed record
    FilePath      : String [255];
    Title         : String [150];
    Time_Stamp    : Longint;
    FileType      : Byte;
    Word_Count    : Longint;
    Indexed_Words : Longint;
    Option_String : String [20];
    Reserved1     : Longint;
    Reserved2     : Longint;
    Reserved3     : SmallInt;
    Reserved4     : Byte;
    Reserved5     : Longint;
    Line_Count    : Longint;
    File_Size     : Longint;
    Indexed_Stamp : Longint;
    Text_Date     : Longint;
    Confirm_Date  : Longint;
    Non_Unicode_Codepage : Smallint;
    Category_Seq  : Smallint; 
    Metadata_Block: Longint;
    Metadata_Lines: Smallint;
    ACL_Block     : Longint;       
    Para_Limit_Exceeded: Boolean;
    Metadata_Stamp : Longint;
    Entity_Block   : Longint;
    Entity_Count   : Longint;
    Para_Count     : Word;
    Flags          : Byte;
    Reserved6     : Array [1..24] of Byte;
  end;
  
  IA_record = record
    name:   array [1..50] of char;
    query:  array [1..200] of char;
    dbs:    array [1..200] of char;
    fstore: array [1..14] of char;
    filter: filter_block;
    lastdone: array [1..20] of char;
    Freq:   array [1..10] of char;
    status: array [1..200] of char;
    NumNew: array [1..10] of char;
    Qtype : array [1..4] of char;
  end;

  Concat_Block = record
    Dir       : String[255];
    Num_Docs  : LongInt;
    Reserved1 : LongInt;
    Reserved2 : LongInt;
    Reserved3 : LongInt;
    Reserved4 : LongInt;
  end;
  Chained_Array = array[1..128] of Concat_Block;

  {***************************************************************************
   **          Basic Query Routines (Chapter 3)                             **
   ***************************************************************************}

  procedure Init_Instance( MyhWnd: HWND; AppDir: PChar; var instance: Instance_Status_Block;
                           var instance_handle: smallint; var ECB: ECB_Type); stdcall;

  procedure Open_Database (dir: PChar; update_mode: SmallInt; var ECB: ECB_Type); stdcall;

  procedure Get_Database_Name (dir: PChar; result: PChar; var ECB: ECB_Type); stdcall;

  procedure Perform_Find (Query: PChar; flags: Word; MyhWnd: HWND;
                          var QRT: Query_Result_Block; var ECB: ECB_Type); stdcall;

  procedure Perform_English_Find (Query: PChar; MyhWnd: HWND;
                          var QRT: Query_Result_Block; var ECB: ECB_Type); stdcall;

  procedure Sort_Documents (Sequence: SmallInt; var ECB: ECB_Type); stdcall;

  procedure Get_Document_Record (DocNo: Longint; var DCB: Document_Control_Block;
                                 var ECB: ECB_Type); stdcall;

  function  Open_Document (DocNo: Longint; even_if_changed: SmallInt;
                           var num_lines: Longint; var doctype: SmallInt;
                           Phys_File_Name: PChar; var ECB:ECB_Type): SmallInt; stdcall;

  function  Get_Line_With_Hit_After (hDoc: Longint; LineNum: Longint;
                           var ECB: ECB_Type): Longint; stdcall;

  function  Get_Line_With_Hit_Before (hDoc: Longint; LineNum: Longint;
                           var eCB: ECB_Type): Longint; stdcall;

  procedure Get_Document_Line (hDoc: Longint; LineNum: Longint; LineText: PChar;
                               var ECB: ECB_Type); stdcall;

  procedure Close_Document (hDoc: Longint; var ECB: ECB_Type); stdcall;

  procedure Close_Instance (var ECB: ECB_Type); stdcall;


  procedure Get_Document_Id(id: LongInt; db: pchar; var ixcno: longint; var ECB: ECB_Type); stdcall;
  procedure Set_Maximum_Found_Documents (val: LongInt; var ECB: ECB_Type); stdcall;

  procedure Get_Base_Dir_For_Document_Record (L: longint; db: pchar; var e: ecb_type); StdCall;
  procedure Convert_Sfn_To_Lfn ( sfn: pchar; var e: ecb_type); Stdcall;
  procedure FormatOrdinalToName (n: integer; ans: pchar; var e: ecb_type); StdCall;
  procedure Sort_Documents_Ex(Sequence: LongInt; hh: Word; var ECB: ECB_Type); Stdcall;

  {***************************************************************************
   **          Advanced Retrieval (Chapter 4)                               **
   ***************************************************************************}

  procedure ExistOnPath (filespec: PChar);    stdcall;

  procedure FileName_Filter (accessmode:Word;
                             var FCB :Filter_Block;
                             var QRT:Query_Result_Block;
                             var ECB: ECB_Type);   stdcall;

  procedure Set_Sub_Find (Flag: SmallInt;
                          var ECB: ECB_Type);      stdcall;

  procedure Set_Rlist_Curfew (ListLimit: Longint;
                              var ECB: ECB_Type);  stdcall;

  procedure Word_Search (targetstr: PChar;
                         SoundLikeMode: SmallInt;
                         answer: PChar;
                         var occs: Longint;
                         var context: Word_Search_Context;
                         var ECB: ECB_Type);       stdcall;

  procedure Remove_Document_Record (which: Longint;
                                    var ECB: ECB_type);  stdcall;

  procedure Interrupt_Processing (var ECB: ECB_Type);    stdcall;

  procedure Get_Hit_Pointer (RefNo: Longint;
                             var WPT: Word_Pointer_Block;
                             var ECB: ECB_Type);         stdcall;
                    
  procedure Get_Document_Type (DocNum: Longint;
                               var FmtCode: Word;
                               var ECB: ECB_Type);       stdcall; deprecated;

  procedure Get_Document_Fully_Qualified_FileName(
                               DocNum: Longint;
                               fdn: Pchar;
                               var ECB: ECB_Type);       stdcall;  deprecated;

  procedure Get_Document_Long_FileName (docno: longint;
                                        lfn  : pchar;
                                        var ECB: ECB_Type);  stdcall;  deprecated;

  procedure Get_Format_Attribute (num: SmallInt;
                                  format: SmallInt;
                                  result: PChar;
                                  var ECB: ECB_Type);    stdcall;

  function  Get_Document_Time_Stamp (hDoc: Longint;
                                     var ECB: ECB_Type): Longint;  stdcall;


  function  Get_Document_Line_Page_No (hDoc: Longint;
                                       LineNum: Longint;
                                       var ECB: ECB_Type): Word;   stdcall;

  procedure Get_EAM_Context_Info_For_Hit (hDoc: Longint;
                                          HitNum: Longint;
                                          var context: EAM_Context;
                                          var ECB: ECB_Type);      stdcall;

  function Auto_Determine_File_Format (FileName: PChar;
                                       var ECB: ECB_Type): SmallInt;  stdcall;

  procedure Translate_HyperString (HyperText: PChar;
                                   var e: ECB_Type);  stdcall;

  function Open_Unfound_Document (nam: PChar; var num_lines: Longint; var doctype: SmallInt;
                          pfn: PChar; var e: ECB_type): SmallInt;  stdcall;

  procedure Close_Find (var ECB: ECB_Type);                        stdcall;

  procedure Close_Database (var ECB: ECB_Type);                    stdcall;

  procedure Get_Term_ID_Term (termid: longint; 
  			      term: pchar; 
  			      var ECB: ECB_type); stdcall;
  			      
  function Get_Line_With_Term_After (hDoc: Longint;
  				     TermId: Longint;
                                     Line_No: longint; 
       			             var ECB: ECB_type): Longint; stdcall;
  			      
  function Get_Line_With_Term_Before (hDoc: Longint;
  				     TermId: Longint;
                                     Line_No: longint; 
       			             var ECB: ECB_type): Longint; stdcall;


  procedure Get_Category_Record (CatNum: Longint;
  				 var CatRec: Category_Control_Block;
 			         var ECB: ECB_type); stdcall;

  procedure Find_Similar (Text: PChar; 
                          MyhWnd: HWND;
                          var QRT: Query_Result_Block; 
                          var ECB: ECB_Type); stdcall;
                          
  procedure Get_Document_Group_Entry (BaseDocName: pchar; 
  				      EntryNum: longint; 
  				      GroupEntryName: pchar; 
  				      var ECB: ECB_Type); stdcall;
                          
  procedure Get_Query_Spelling_Suggestion (Query: pchar; 
  					   EntryNum: longint; 
  					   var Start_Word_Offset: Longint;
  					   var Word_Length: longint; 
  					   Suggestions: pchar; 
  					   var ECB: ECB_Type); stdcall;
  					   
  procedure Get_Document_Metadata (DocNo: Longint; 
  				   Item: PChar; 
  				   Result: PChar; 
  				   var ECB: ECB_Type); stdcall;

  procedure Set_Metadata_Relevance_Boost (amount: longint; 
                                          var ECB: ECB_type); stdcall;
                                          
  procedure Set_Metadata_Query_Scope (flags: longint; 
  				      var ECB: ECB_type); stdcall;
  
  procedure Set_Metadata_Sort_Key (Item: Pchar;
  				   var ECB: ECB_type); stdcall;
  				      


  {***************************************************************************
   **          Utilities (Chapter 5)                                        **
   ***************************************************************************}

  procedure CFG_Settings (var CFGs: Config_Control_Block;
                          var ECB: ECB_Type);                 stdcall;

  procedure CFG_Formats  (var num: SmallInt;
                          var Formats: Format_Array;
                          var ECB: ECB_Type);                 stdcall;

  procedure Def_Settings (var Defs: Action_Control_Block;
                          var ECB: ECB_Type);                 stdcall;              

  procedure Open_Rules (var ECB: ECB_Type);                   stdcall;

  procedure Fetch_Rule_Areas (var num: SmallInt;
                              var areanum: SmallInt;
                              var Rules: Rule_Area_Array;
                              var ECB: ECB_Type);             stdcall;

  procedure Fetch_Rule_List (var num: SmallInt;
                             var Rules: Rule_List_Array;
                             var ECB: ECB_Type);              stdcall;

  procedure Create_Rule (RuleText: PChar;
                         var ECB: ECB_Type);                  stdcall;

  procedure Move_Rule (Num_From: SmallInt;
                       Num_To: SmallInt;
                       var ECB: ECB_Type);                    stdcall;

  procedure Close_Rules (save: SmallInt;
                         var ECB: ECB_Type);                  stdcall;


  {***************************************************************************
   **          Database Utilities (Chapter 6)                               **
   ***************************************************************************}

  procedure IDB_Function (cmd: PChar;
                          var ECB: ECB_Type);                 stdcall;


  {***************************************************************************
   **          Low-Level Indexing (Chapter 7)                               **
   ***************************************************************************}

  procedure Start_Concording_Run (var e: ECB_type);           stdcall;

  procedure Create_Database (var e: ECB_type);                stdcall;

  function  Concord_From_File (fname: PChar; 
                 stamp, tsize: Longint; 
                 typ: SmallInt; var e: ECB_type): Longint;     stdcall;

  procedure Close_Concording_Run (var e: ECB_type);           stdcall;

  function  DeConcord_From_File (fname: PChar; var e: ECB_type): boolean;     stdcall;

  procedure Complete_DeConcording (var e: ECB_type);                          stdcall;

  procedure Set_Concord_From_File_Option (opt: SmallInt;
                                          s: PChar;
                                          var e: ECB_Type);                   stdcall;


  {***************************************************************************
   **          Transactional Indexing (Chapter 8)                                  **
   ***************************************************************************}

   procedure Process_Transactions (db, txfn: pchar; expire: longint; var ECB: ECB_Type); stdcall;


  {***************************************************************************
   **          External Access (Chapter 9)                                  **
   ***************************************************************************}


  procedure Set_Indexing_Callback_Hook (Callback: pointer; 
                      var e: ECB_type);                                        stdcall;

  procedure Set_Indexing_Filter_Hook (Callback: pointer; 
                                      var e: ECB_type);                       stdcall;

  procedure EXT_Foreign_File_System (on: boolean);                            stdcall;



  {***************************************************************************
   **          Advanced Integration (Chapter 10)                            **
   ***************************************************************************}

  function Direct_IXC_Read (fpath: PChar;
                var CEB: Chapter_Entry_Block; 
                var e: ECB_type): SmallInt;                                    stdcall;

  function Direct_IXC_Write (fpath: PChar; 
                             var CEB: Chapter_Entry_Block; 
                             var e: ECB_type): SmallInt;                      stdcall;

  function Lookup_Document_By_Name (FileName: PChar;
                                    var e: ECB_type): Longint;          stdcall;
								  
  function Rename_Indexed_Document (OldFilename: PChar;
                                    NewFilename: Pchar;
                                    var e: ECB_type): SmallInt;         stdcall;
                                  
  procedure Get_Chained_Database_List (var ChainedDB: Chained_Array;
                                       var NumConCat: Smallint;
                                       var e: ECB_type);                stdcall;

  procedure ISYS_Multiplex (func: smallint; Var L1, L2: longint; var ecb: ECB_Type);
                            stdcall;

  procedure Switch_Instance (Instance_Handle: smallint;
                             var ECB: ECB_Type);                        stdcall;

  procedure Merge_Index (MasterIndex: PChar;
                        MergeIndex: Pchar;
                        CheckForDupes: SmallInt;
                        var ECB: ECB_type);                     stdcall;
                        
  procedure Set_API_Charset (code: longint; 
                             var ECB: ECB_type); stdcall;
                        
                        
  procedure Widechar_to_UTF8 (src: pwidechar; 
  		   	      dest:pchar; 
  		   	      maxdestlen: longint); stdcall;
  
  procedure UTF8_to_Widechar (src: pchar; 
  			      dest:pwidechar; 
  			      maxdestlen: longint); stdcall;
  			      
  procedure Set_Engine_Call_Tracing (when: longint; 
  				     where: longint; 
  				     dest: pointer); stdcall;
  			      
  procedure Get_Document_Security_Descriptor (DocNo: Longint; 
  					      Descriptor: pointer; 
  					      var Descriptor_size: Longint; 
  					      var ECB: ECB_type); stdcall;

  procedure Get_Num_Processors (Var logical: Longint;
                                Var physical: longint;
                                Var ECB: ECB_Type); stdcall;

  procedure Set_Num_Indexing_Processes (N: Longint;
                                Var ECB: ECB_Type); stdcall;

  procedure Set_Synonym_Callback_Hook (Callback: pointer; 
                                      var e: ECB_type); stdcall;


  				      
  {***************************************************************************
   **          Result-List Manipulators (Chapter 11)                        **
   ***************************************************************************}

  function Rlist_Create: rlist_ptr; stdcall;

  procedure Rlist_Drop(r: rlist_ptr); stdcall;

  procedure Rlist_Get_Entry(r: rlist_ptr; entry: Longint;
                var result: Word_Pointer_Block); stdcall;

  procedure Rlist_Append_Entry(r: rlist_ptr; var new: Word_Pointer_Block); stdcall;

  procedure Rlist_Get_QRB(r: rlist_ptr; var qrb: Query_Result_Block); stdcall;

  procedure Rlist_Empty(r: rlist_ptr); stdcall;

  function Rlist_Current_Rlist: rlist_ptr; stdcall;

  procedure Rlist_Oper(oper:string; L: rlist_ptr; R: rlist_ptr); stdcall;

  procedure Rlist_Copy_From_To(result: rlist_ptr; rhs: rlist_ptr); stdcall;

  procedure Rlist_Exchange(result: rlist_ptr; rhs: rlist_ptr); stdcall;


  {***************************************************************************
   **          Annotations (Chapter 12)                                     **
   ***************************************************************************}

  procedure Get_Annotation_Index_Page (hDoc: Longint; var AnnoNum: SmallInt;
                        var idx: Annotation_Index; ImageFileName: PChar;
                                       var ECB: ECB_Type); stdcall;

  procedure Get_Annotation_Entry (hDoc: Longint; AnnoNum: SmallInt;
                        var Anno: Anno_Ext; var ECB: ECB_Type); stdcall;

  procedure Set_Annotation_Entry (hDoc: Longint; AnnoNum: SmallInt;
                        var Anno: Anno_Ext; var ECB: ECB_Type); stdcall;

  procedure Get_Annotation_Entry_Text (var Anno: Anno_Ext; TextBlock: PChar;
                        var ECB: ECB_Type); stdcall;

  procedure Set_Annotation_Entry_Text (var Anno: Anno_Ext; TextBlock: PChar;
                        var ECB: ECB_Type); stdcall;

  procedure Write_Back_Annotations (hDoc: Longint; var ECB: ECB_Type); stdcall;

  function  Get_Annotations_Changed_Status (hDoc: Longint; FileName: PChar;
                        var ECB: ECB_Type): SmallInt;  stdcall;

  {***************************************************************************
   **          Concept Trees (Chapter 14)                                   **
   ***************************************************************************}

  function  SCT_Open (var ECB: ECB_Type): SmallInt; stdcall;

  procedure SCT_Entry (SCT_Num: SmallInt; var SCT: SCT_Block;
                        var ECB: ECB_Type); stdcall;

  procedure SCT_Replace (SCT_Num: SmallInt; var SCT: SCT_Block;
                        var ECB: ECB_Type); stdcall;

  procedure SCT_Insert_After (SCT_Num: SmallInt; var SCT: SCT_Block;
                        var ECB: ECB_Type); stdcall;

  procedure SCT_Move (Num_From: SmallInt; Num_To: SmallInt;
                        var ECB: ECB_Type); stdcall;

  procedure SCT_Close (var ECB: ECB_Type); stdcall;

  procedure SCT_Close_And_Save (var ECB: ECB_Type); stdcall;

  procedure Perform_SCT_Find (SCT_Num: Word; Extra_Term: PChar; flags: Word;
                        MyhWnd: HWND; var QRT: Query_Result_Block;
                        var ECB: ECB_Type); stdcall;

  procedure SCT_Set_File_Name (FileName: PChar; var EBC: ECB_Type); stdcall;

  {***************************************************************************
   **          Synonyms (Chapter 15)                                        **
   ***************************************************************************}

  function  SYN_Get_Head (Syn_File_Name: PChar; var ECB: ECB_Type): Longint; stdcall;

  procedure SYN_Get_Entry (hSyn: Longint; var SYN: SYN_Block;
                        var ECB: ECB_Type); stdcall;

  procedure SYN_Replace_Word (hSyn: Longint; synword: PChar; var ECB: ECB_Type); stdcall;

  procedure SYN_Delete_Entry (hSyn: Longint; var ECB: ECB_Type); stdcall;

  procedure SYN_Add_Word_To_Ring (hSyn: Longint; SynWord: PChar;
                        var ECB: ECB_Type); stdcall;

  procedure SYN_Undo (var ECB: ECB_Type); stdcall;

  procedure SYN_Save (var ECB: ECB_Type); stdcall;


  {***************************************************************************
   **          Named Sections (Chapter 16)                                  **
   ***************************************************************************}

  procedure Field_Get (fno: SmallInt; xName: PChar; xStarts: PChar; xEnds: PChar;
                       var ECB: ECB_Type); stdcall;

  procedure Field_Set (fno: SmallInt; xName: PChar; xStarts: PChar; xEnds: PChar;
                       var ECB: ECB_Type); stdcall;

  procedure Field_Save (var ECB: ECB_Type); stdcall;

  procedure Field_Undo (var ECB: ECB_Type); stdcall;

  {***************************************************************************
   **          WYSIWYG    (chapter 17)                                      **
   ***************************************************************************}
  function WYSIWYG_WindowProc (Myhwnd: HWND; msg, wparam, lparam: longint): longint; stdcall;
  procedure WYSIWYG_Multiplex (hdoc: longint; func: smallint; var r: longint; var ecb: ECB_Type); stdcall;

  {***************************************************************************
   **          INTELLIGENT AGENTS   (chapter 18)                            **
   ***************************************************************************}

  procedure IA_Load (var ECB: ECB_Type);   stdcall;
  procedure IA_Save (var ECB: ECB_Type);   stdcall;
  procedure IA_Close (var ECB: ECB_Type);   stdcall;
  procedure IA_Edit (which_agent: smallint; action: pchar;
                       var agent_record: IA_record; var ECB: ECB_Type); stdcall;
  procedure IA_Count (var agent_count: smallint; var ECB: ECB_Type); stdcall;
  function  IA_Store_Size (which_agent: smallint; var ECB: ECB_Type): Smallint; stdcall;
  function  IA_Evaluate (which_agent: smallint; var ECB: ECB_Type): Smallint; stdcall;
  function  IA_Activate (which_agent: smallint; myhWnd: HWND;
                       var QRT: Query_Result_Block; database: pchar;
                       var ECB: ECB_Type): smallint; stdcall;
  function  IA_ListForDel (docnum: longint; mode: smallint;
                       var ECB: ECB_Type): Smallint; stdcall;
  procedure IA_Save_Store_With_Dels (var ECB: ECB_Type); stdcall;
  procedure IA_Get_Next_Due_Agent (var which_agent: smallint;
                       var when_due: TDateTime; var ECB: ECB_Type); stdcall;


  {***************************************************************************
   **          ENTITY RECOGNITION   (chapter 19)                            **
   ***************************************************************************}


  procedure Get_Document_Entity_List (hDoc: Longint; 
  				      Var Num_Entities: Longint; 
  				      Var Etable: Entity_Occurrence_Block;
    				      var ECB: ECB_type); stdcall;

  procedure Get_Document_Entity_Summary (hDoc: Longint; 
  				      Var Num_Entities: Longint; 
  				      Var Etable: Entity_Summary_Block;
    				      var ECB: ECB_type); stdcall;

  procedure Get_Document_Entity_Record (hDoc: Longint; 
  				      EID: Pchar;
  				      Var Ent_Record: Entity_Summary_Block;
    				      var ECB: ECB_type); stdcall;

  procedure Get_Entity_Summary (MaxDocs: Longint; 
  		                Var Num_Entities: Longint; 
  		                Var Etable: Entity_Summary_Block;
    		                var ECB: ECB_type); stdcall;

  function Get_Line_With_Entity_After (hDoc: longint; 
                                       Entity: Pchar; 
                                       Line_No: longint;
                                       var ECB: ECB_type): longint; stdcall;

  procedure Get_Entity_Type_Name (etype: Longint; 
  				                       singular: Pchar;
  				                       plural: Pchar;
  				                       var ECB: ECB_type); stdcall;

                       
{***************************************************************************
 **          WYSIWYG PDF Routines (Chapter xx)                            **
 ***************************************************************************}

  function PDF_Create_Viewer(Message_HWND : HWND; var PlugIn_Installed : Boolean; var ECB: ECB_Type) : HWND; stdcall;

  function PDF_Show_Document(v : HWND; b : HDOC; var Hits_Highlighted, Prev_Enabled, Next_Enabled : Boolean; var ECB : ECB_Type) : Boolean; stdcall;

  function PDF_Show_Unfound_Document(v : HWND; Filename : PChar; var ECB : ECB_Type) : Boolean; stdcall;

  function PDF_Nav_Next_Hit(v : HWND; var Prev_Enabled, Next_Enabled : Boolean; var ECB : ECB_Type) : Boolean; stdcall;

  function PDF_Nav_Prev_Hit(v : HWND; var Prev_Enabled, Next_Enabled : Boolean; var ECB : ECB_Type) : Boolean; stdcall;

  function PDF_Exec_Command(v : HWND; Command : longword; Data : PChar; var Data_Len : LongInt; var ECB : ECB_Type) : Boolean; stdcall;

  procedure PDF_Destroy_Viewer(v : HWND; var ECB : ECB_Type); stdcall;

  function PDF_Get_Highlight_XML(b : HDOC; XML : PChar; var XML_Len : LongInt; var ECB : ECB_Type) : Boolean; stdcall;

  function PDF_Get_Acrobat_Path(Path : PChar; var Path_Len : LongInt; var ECB : ECB_Type) : Boolean; stdcall;

  function PDF_Install_Acrobat_PlugIn(var ECB : ECB_Type) : Boolean; stdcall;

                       

const
  ISYSDLL = 'ISYS8.DLL';
  
Implementation
  procedure Init_Instance; stdcall external ISYSDLL;
  procedure Open_Database;	stdcall external ISYSDLL;
  procedure Get_Database_Name; stdcall external ISYSDLL;
  procedure Perform_Find; stdcall external ISYSDLL;
  procedure Perform_English_Find; stdcall external ISYSDLL;
  procedure Sort_Documents; stdcall external ISYSDLL;
  procedure Get_Document_Record; stdcall external ISYSDLL;
  function  Open_Document; stdcall external ISYSDLL;
  function  Get_Line_With_Hit_After;	stdcall external ISYSDLL;
  function  Get_Line_With_Hit_Before; stdcall external ISYSDLL;
  procedure Get_Document_Line; stdcall external ISYSDLL;
  procedure Close_Document; stdcall external ISYSDLL;
  procedure Close_Instance;	stdcall external ISYSDLL;
  procedure ExistOnPath; stdcall external ISYSDLL;
  procedure FileName_Filter; stdcall external ISYSDLL;
  procedure Set_Sub_Find;	stdcall external ISYSDLL;
  procedure Set_Rlist_Curfew; stdcall external ISYSDLL;
  procedure Word_Search; stdcall external ISYSDLL;
  procedure Remove_Document_Record; stdcall external ISYSDLL;
  procedure Interrupt_Processing; stdcall external ISYSDLL;
  procedure Get_Hit_Pointer; stdcall external ISYSDLL;
  procedure Get_Document_Type; stdcall external ISYSDLL;
  procedure Get_Document_Fully_Qualified_FileName; stdcall external ISYSDLL;
  procedure Get_Document_Long_FileName; stdcall external ISYSDLL;
  procedure Get_Format_Attribute; stdcall external ISYSDLL;
  function  Get_Document_Time_Stamp; stdcall external ISYSDLL;
  function  Get_Document_Line_Page_No; stdcall external ISYSDLL;
  procedure Get_EAM_Context_Info_For_Hit; stdcall external ISYSDLL;
  function Auto_Determine_File_Format; stdcall external ISYSDLL;
  procedure Translate_HyperString; stdcall external ISYSDLL;
  function Open_Unfound_Document; stdcall external ISYSDLL;
  procedure Close_Find; stdcall external ISYSDLL;
  procedure Close_Database; stdcall external ISYSDLL;
  procedure CFG_Settings; stdcall external ISYSDLL;
  procedure CFG_Formats; stdcall external ISYSDLL;
  procedure Def_Settings; stdcall external ISYSDLL;
  procedure Open_Rules; stdcall external ISYSDLL;
  procedure Fetch_Rule_Areas; stdcall external ISYSDLL;
  procedure Fetch_Rule_List; stdcall external ISYSDLL;
  procedure Create_Rule; stdcall external ISYSDLL;
  procedure Move_Rule; stdcall external ISYSDLL;
  procedure Close_Rules; stdcall external ISYSDLL;
  procedure IDB_Function; stdcall external ISYSDLL;
  procedure Start_Concording_Run; stdcall external ISYSDLL;
  procedure Create_Database; stdcall external ISYSDLL;
  function  Concord_From_File; stdcall external ISYSDLL;
  procedure Close_Concording_Run; stdcall external ISYSDLL;
  function  DeConcord_From_File; stdcall external ISYSDLL;
  procedure Complete_DeConcording; stdcall external ISYSDLL;
  procedure Set_Concord_From_File_Option; stdcall external ISYSDLL;
  procedure Process_Transactions; stdcall external ISYSDLL;
  procedure Set_Indexing_Callback_Hook; stdcall external ISYSDLL;
  procedure Set_Indexing_Filter_Hook; stdcall external ISYSDLL;
  procedure EXT_Foreign_File_System; stdcall external ISYSDLL;
  function Direct_IXC_Read; stdcall external ISYSDLL;
  function Direct_IXC_Write; stdcall external ISYSDLL;
  function Lookup_Document_By_Name; stdcall external ISYSDLL;
  function Rename_Indexed_Document; stdcall external ISYSDLL;
  procedure Get_Chained_Database_List; stdcall  external ISYSDLL;
  procedure ISYS_Multiplex; stdcall external ISYSDLL;
  procedure Switch_Instance ; stdcall  external ISYSDLL;
  function Rlist_Create; stdcall external ISYSDLL;
  procedure Rlist_Drop; stdcall external ISYSDLL;
  procedure Rlist_Get_Entry; stdcall external ISYSDLL;
  procedure Rlist_Append_Entry; stdcall external ISYSDLL;
  procedure Rlist_Get_QRB; stdcall external ISYSDLL;
  procedure Rlist_Empty; stdcall external ISYSDLL;
  function Rlist_Current_Rlist; stdcall external ISYSDLL;
  procedure Rlist_Oper; stdcall external ISYSDLL;
  procedure Rlist_Copy_From_To; stdcall external ISYSDLL;
  procedure Rlist_Exchange; stdcall external ISYSDLL;
  procedure Get_Annotation_Index_Page; stdcall external ISYSDLL;
  procedure Get_Annotation_Entry; stdcall external ISYSDLL;
  procedure Set_Annotation_Entry; stdcall external ISYSDLL;
  procedure Get_Annotation_Entry_Text; stdcall external ISYSDLL;
  procedure Set_Annotation_Entry_Text; stdcall external ISYSDLL;
  procedure Write_Back_Annotations; stdcall external ISYSDLL;
  function  Get_Annotations_Changed_Status; stdcall external ISYSDLL;
  function  SCT_Open; stdcall external ISYSDLL;
  procedure SCT_Entry; stdcall external ISYSDLL;
  procedure SCT_Replace; stdcall external ISYSDLL;
  procedure SCT_Insert_After; stdcall external ISYSDLL;
  procedure SCT_Move; stdcall external ISYSDLL;
  procedure SCT_Close; stdcall external ISYSDLL;
  procedure SCT_Close_And_Save; stdcall external ISYSDLL;
  procedure Perform_SCT_Find; stdcall external ISYSDLL;
  procedure SCT_Set_File_Name; stdcall external ISYSDLL;
  function  SYN_Get_Head; stdcall external ISYSDLL;
  procedure SYN_Get_Entry; stdcall external ISYSDLL;
  procedure SYN_Replace_Word; stdcall external ISYSDLL;
  procedure SYN_Delete_Entry; stdcall external ISYSDLL;
  procedure SYN_Add_Word_To_Ring ; stdcall external ISYSDLL;
  procedure SYN_Undo; stdcall external ISYSDLL;
  procedure SYN_Save; stdcall external ISYSDLL;
  procedure Field_Get; stdcall external ISYSDLL;
  procedure Field_Set; stdcall external ISYSDLL;
  procedure Field_Save; stdcall external ISYSDLL;
  procedure Field_Undo; stdcall external ISYSDLL;
  function WYSIWYG_WindowProc; stdcall external ISYSDLL;
  procedure WYSIWYG_Multiplex; stdcall external ISYSDLL;
  procedure IA_Load; stdcall external ISYSDLL;
  procedure IA_Save; stdcall external ISYSDLL;
  procedure IA_Close; stdcall external ISYSDLL;
  procedure IA_Edit; stdcall external ISYSDLL;
  procedure IA_Count; stdcall external ISYSDLL;
  function  IA_Store_Size; stdcall external ISYSDLL;
  function  IA_Evaluate; stdcall external ISYSDLL;
  function  IA_Activate; stdcall external ISYSDLL;
  function  IA_ListForDel; stdcall external ISYSDLL;
  procedure IA_Save_Store_With_Dels; stdcall external ISYSDLL;
  procedure IA_Get_Next_Due_Agent; stdcall external ISYSDLL;
  procedure Get_Document_Id; stdcall external ISYSDLL;
  procedure Set_Maximum_Found_Documents; stdcall external ISYSDLL;

  procedure Get_Base_Dir_For_Document_Record; stdcall external ISYSDLL;
  procedure Convert_Sfn_To_Lfn; stdcall external ISYSDLL;
  procedure FormatOrdinalToName; stdcall external ISYSDLL;
  procedure Sort_Documents_Ex; stdcall external ISYSDLL;
  procedure Merge_Index; stdcall external ISYSDLL;
  procedure Set_API_Charset; stdcall external ISYSDLL;
  procedure Widechar_to_UTF8; stdcall external ISYSDLL;
  procedure UTF8_to_Widechar; stdcall external ISYSDLL;
  procedure Set_Metadata_Relevance_Boost; stdcall external ISYSDLL;
  procedure Set_Metadata_Query_Scope; stdcall external ISYSDLL; 
  procedure Get_Term_ID_Term; stdcall external ISYSDLL;  
  function  Get_Line_With_Term_After; stdcall external ISYSDLL; 
  function  Get_Line_With_Term_Before; stdcall external ISYSDLL; 
  procedure Get_Category_Record; stdcall external ISYSDLL; 
  procedure Set_Engine_Call_Tracing; stdcall external ISYSDLL; 
  procedure Find_Similar; stdcall external ISYSDLL; 
  procedure Get_Document_Group_Entry; stdcall external ISYSDLL; 
  procedure Get_Query_Spelling_Suggestion; stdcall external ISYSDLL; 
  procedure Get_Document_Metadata;  stdcall external ISYSDLL; 
  procedure Set_Metadata_Sort_Key;  stdcall external ISYSDLL;
  procedure Get_Document_Security_Descriptor;  stdcall external ISYSDLL;
  procedure Get_Num_Processors;  stdcall external ISYSDLL;
  procedure Set_Num_Indexing_Processes;  stdcall external ISYSDLL;
  procedure Set_Synonym_Callback_Hook;  stdcall external ISYSDLL;
  procedure Get_Document_Entity_List;  stdcall external ISYSDLL;
  procedure Get_Document_Entity_Record;  stdcall external ISYSDLL;
  procedure Get_Document_Entity_Summary;  stdcall external ISYSDLL;
  procedure Get_Entity_Summary;  stdcall external ISYSDLL;
  function  Get_Line_With_Entity_After;  stdcall external ISYSDLL;
  procedure Get_Entity_Type_Name;  stdcall external ISYSDLL;

  function PDF_Create_Viewer; stdcall external ISYSDLL;
  function PDF_Show_Document; stdcall external ISYSDLL;
  function PDF_Show_Unfound_Document; stdcall external ISYSDLL;
  function PDF_Nav_Next_Hit; stdcall external ISYSDLL;
  function PDF_Nav_Prev_Hit; stdcall external ISYSDLL;
  function PDF_Exec_Command; stdcall external ISYSDLL;
  procedure PDF_Destroy_Viewer; stdcall external ISYSDLL;
  function PDF_Get_Highlight_XML; stdcall external ISYSDLL;
  function PDF_Get_Acrobat_Path; stdcall external ISYSDLL;
  function PDF_Install_Acrobat_PlugIn; stdcall external ISYSDLL;



  End.
