unit WorkFlowDocumentMerge;
(*
  WorkFlow Document Merge

  This is a pattern class, made abstract which  should be derived to create new
  document merge types, this unit also contains a basic word merge type.

  Mathew Dredge, Aug-Sep 2002
 *)

interface

uses
   Classes, SysUtils, db, Controls, Forms, VirtualTrees
//   ,VirtualTable
//  ,JvMemoryDataset
   ,dxmdaset
  ;

{ hint..
Macros Available
[USERHOME] = User Home Directory
[NMATTER] = Matter Number
[TEMPDIR] = User's Temp Directory
[TEMPFILE] = Make a Temporary File
}
const
 { C_MACRO_USERHOME      = '[USERHOME]';
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
  C_MACRO_DOCSEQUENCE   = '[DOCSEQUENCE]';     }

  C_FIELDTYPECURRENCY = 'C';
  C_FIELDTYPEINTEGER  = 'I';
  C_FIELDTYPEDATE     = 'D';
  C_FIELDTYPETEXT     = 'T';
  C_FIELDTYPECHECKBOX = 'B';

  C_INTERNALPARTYTYPE = 'INTERNALPARTYTYPE';

type
  // different property types.
  TMergePropertyType = (mptNone,mptString, mptInteger, mptBoolean, mptFilePath, mptPath);

  // options for the merge class, controls what is seen where..
  TMergeOption = (moNeedsParties, moNeedsData, moNeedsTemplatePath,
    moNeedsDocumentPath, moNeedsDataFilePath, moCheckTemplateExists, moSaveToDB, moNeedsFieldTranslate);
  TMergeOptions = set of TMergeOption;

  TDataFor = (dfMatter,dfParty, dfClient, dfMultiClient, dfOther, dfEmployee, dfBranch, dfAddressee, dfEntity, dfUserBranch, dfActing, dfEmployeeRates);
var
  TDataForNames: array[TDataFor] of String = ('Matter','Party','Client','MultiClient','Other','Employee','Branch','Addressee','Entity','UserBranch', 'Party', 'EmployeeRates');

type
  TMergeDocumentClass = Class of TMergeDocument;
  // this is the abstract class which has to be derived for functionality..
  TUsedParty = class(TCollectionItem)
  public
    nname: Integer;
    partytype: String;
  end;

  TFieldTranslation = class(TCollectionItem)
  private
    FTranslations: TStringList;
    FFieldName: String;
    function GetTranslation(AIndex: Integer): String;
    function GetTranslations: String;
    function GetTranslationCount: Integer;
    procedure SetFieldName(const Value: String);
  public
    constructor Create(Collection: TCollection); override;
    destructor  Destroy(); override;
    procedure AddTranslation(AName: String);

    property FieldName: String read FFieldName write SetFieldName;
    property Translation[AIndex: Integer]: String read GetTranslation;
    property Translations: String read GetTranslations;
    property TranslationCount: Integer read GetTranslationCount;
  end;

  TFieldTranslations = class(TCollection)
  private
    function GetTranslation(AField: String; AIndex: Integer): String;
    function GetTranslationCount(AField: String): Integer;
    function GetTrans(AField: String): TFieldTranslation;
  public
   constructor Create();
    destructor Destroy(); override;
    procedure LoadFromDB();

    property TranslationCount[AField: String]: Integer read GetTranslationCount;
    property Translations[AField: String; AIndex: Integer]: String read GetTranslation;
  end;

  // This class stores information about a custom data field row.
  // its populated by the data export and may be used in post-processing.
  TCustomFieldInfo = class(TCollectionItem)
  private
    FNUnique,
    FNUnique2,
    FPartyCounter: Integer;
    FLinkTable,
    FFieldName: String;
    FSourceTable: TDataFor;
    FFieldType,
    FPartyType,
    FPartyName,
    FFieldLabel,
    FFormLabel: String;

    FOldValueInt: Integer;
    FOldValueDate: TDateTime;
    FOldValueCurr: Currency;
    FOldValueStr:  String;

    FNewValueInt: Integer;
    FNewValueDate: TDateTime;
    FNewValueCurr: Currency;
    FNewValueStr:  String;
  public
    procedure Update();
    function IsDiff(): Boolean;
    procedure Duplicate(ACollection: TCollection);

    function GetSourceString(): String;
    function GetOldString(): String;
    function GetNewString(): String;

    property NUnique:       Integer   read  FNUnique       write  FNUnique;
    property NUnique2:      Integer   read  FNUnique2      write  FNUnique2;
    property PartyCounter:  Integer   read  FPartyCounter  write  FPartyCounter;
    property LinkTable:     String    read  FLinkTable     write  FLinkTable;
    property FieldName:     String    read  FFieldName     write  FFieldName;
    property SourceTable:   TDataFor  read  FSourceTable   write  FSourceTable;
    property FieldType:     String    read  FFieldType     write  FFieldType;
    property PartyType:     String    read  FPartyType     write  FPartyType;
    property PartyName:     String    read  FPartyName     write  FPartyName;
    property FieldLabel:    String    read  FFieldLabel    write  FFieldLabel;
    property FormLabel:     String    read  FFormLabel     write  FFormLabel;

    property OldValueInt:   Integer   read  FOldValueInt   write  FOldValueInt;
    property OldValueDate:  TDateTime read  FOldValueDate  write  FOldValueDate;
    property OldValueCurr:  Currency  read  FOldValueCurr  write  FOldValueCurr;
    property OldValueStr:   String    read  FOldValueStr   write  FOldValueStr;

    property NewValueInt:   Integer   read  FNewValueInt   write  FNewValueInt;
    property NewValueDate:  TDateTime read  FNewValueDate  write  FNewValueDate;
    property NewValueCurr:  Currency  read  FNewValueCurr  write  FNewValueCurr;
    property NewValueStr:   String    read  FNewValueStr   write  FNewValueStr;
  end;

  TMergeDocument = class(TCollectionItem)
  private
//  FData: array[TDataFor] of TVirtualTable;
//    FData: array[TDataFor] of TJvMemoryData;
    FData:  array[TDataFor] of TdxMemData;
    FDataFilePath: String;
    FDocumentPath: String;
    FTemplatePath: String;
    FTemplateName: String;
    FDataForm: string;
    FNMatter: Integer;
    FDocumentID: Integer;
    FTemplateLineID: Integer;
    FUsedParties: TCollection;
    FDocumentNumber: Integer;
    FMergeResult: Integer;
    FCustomFieldNames: TCollection;
    FFieldTranslations: TFieldTranslations;
    FParentForm: TForm;
    DummyNode: TNodeArray;
    FWorkflow: string;
    FDocIndexPath: String;
    FPrecClassification: string;
    FPrecCategory: string;
    FMergeType: TMergeDocumentClass;
    FDocumentDescr: string;
    FDocDocID: Integer;
    FDocumentName: string;
    
    function InternalAddValue(ADataFor: TDataFor; AColumn: String; AValue: Variant): Boolean;

  protected
    function AddDocNumber(AFileName: String; ANumber: Integer): String;
    function GenerateDataFile(): boolean; virtual; abstract;
    function MergeDocument(): Integer; virtual; abstract; // return modal result = mrOk, mrAbort, mrCancel

    function GetFieldCount(ADataFor: TDataFor): Integer;
    function GetFieldName(ADataFor: TDataFor; AFieldIndex: Integer): String;
    function GetFieldValue(ADataFor: TDataFor; AFieldIndex: Integer): String; overload;
    function GetFieldValue(ADataFor: TDataFor; AFieldName: String): String;   overload;

    function GetFieldValueCurr(ADataFor: TDataFor; AFieldIndex: Integer): Currency; overload;
    function GetFieldValueCurr(ADataFor: TDataFor; AFieldName: String): Currency; overload;

    function GetFieldValueDate(ADataFor: TDataFor; AFieldIndex: Integer): TDateTime; overload;
    function GetFieldValueDate(ADataFor: TDataFor; AFieldName: String): TDateTime; overload;

    function GetFieldValueInt(ADataFor: TDataFor;  AFieldIndex: Integer): Integer; overload;
    function GetFieldValueInt(ADataFor: TDataFor;  AFieldName: String): Integer; overload;

    function GetFieldValueBool(ADataFor: TDataFor;  AFieldIndex: Integer): Boolean; overload;
    function GetFieldValueBool(ADataFor: TDataFor;  AFieldName: String): Boolean; overload;

    function GetFieldType(ADatafor: TDataFor; AFieldIndex: Integer): String;
    function GetFieldTypeEx(ADatafor: TDataFor; AFieldIndex: Integer): TFieldType;

    procedure FirstRow(ADataFor: TDataFor);
    procedure NextRow(ADataFor: TDataFor);
    procedure LastRow(ADataFor: TDataFor);
    function Eof(ADataFor: TDataFor): Boolean;
    function SaveToDB(SaveToDoc: boolean = False): boolean;
    property CustomFieldNames: TCollection read FCustomFieldNames write FCustomFieldNames;
    property FieldTranslations: TFieldTranslations read FFieldTranslations;
    function GetDocDataForm(ADocId: integer): String;
  public

    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;

    function DoMerge(ADocNumber: Integer; LAddresseesCopy: PVirtualNode; PMergedoc: TMergeDocument; APartyNName: array of integer; bFromDoc: boolean = False; ANName: integer = 0): Integer;

    function PostProcess(AChangedDataValues: TCollection): boolean; virtual; abstract;

    class function Options(): TMergeOptions; virtual; abstract;
    class function ExportDescription(): String; virtual; abstract;

    class procedure LoadSettings(); virtual; abstract;
    class procedure SaveSettings(); virtual; abstract;

    class function NumberOfProperties(): Integer;                           virtual; abstract;
    class function PropertyType(AProperty: Integer): TMergePropertyType;    overload; virtual; abstract;
    class function PropertyType(AProperty: String): TMergePropertyType;     overload; virtual; abstract;
    class function GetPropertyName(AProperty: Integer): String;             virtual; abstract;
    class function GetPropertyValue(AProperty: Integer): Variant;           overload; virtual; abstract;
    class function GetPropertyValue(AProperty: String): Variant;            overload; virtual; abstract;
    class procedure SetPropertyValue(AProperty: Integer; AValue: Variant);  overload; virtual; abstract;
    class procedure SetPropertyValue(AProperty: String; AValue: Variant);   overload; virtual; abstract;

    procedure Clear(ADataFor: TDataFor);
    function AddRow(ADataFor: TDataFor): Boolean;
    procedure PostRow(ADataFor: TDataFor);
    function AddColumn(ADataFor: TDataFor; AColumn: String; AFieldType: TFieldType; ASize: Integer = 0): Boolean;
    function AddValue(ADataFor: TDataFor; AColumn: String; AValue: Variant): Boolean;
    function AppendRow(ADataFor: TDataFor): Boolean;

    procedure AddUsedParty(ANName: Integer; APartyType: String);

    procedure AddCustomField(ANUnique, ANUnique2: Integer;
      ALinkTable, AFieldName: String; ASourceTable: TDataFor;
      AFieldType, AFieldLabel, AFormLabel: String; APartyType: String = ''; APartyCounter: Integer = 0);


    procedure CopyFieldDefs(ADataFor: TDataFor; ADefs: TFieldDefs; AQuery: TDataSet);
    function IsFieldsEmpty(ADataFor: TDataFor ): boolean;

    property TemplateName:    String read FTemplateName write FTemplateName;
    property TemplatePath:    String read FTemplatePath write FTemplatePath;
    property DataFilePath:    String read FDataFilePath write FDataFilePath;
    property DocumentPath:    String read FDocumentPath write FDocumentPath;
    property NMatter:         Integer read FNMatter        write FNMatter;
    property TemplateLineID:  Integer read FTemplateLineID write FTemplateLineID;
    property DocumentID:      Integer read FDocumentID     write FDocumentID;
    property DocumentNumber:  Integer read FDocumentNumber write FDocumentNumber;
    property MergeResult:     Integer read FMergeResult    write FMergeResult default mrNone;
    property ParentForm:      TForm read FParentForm write FParentForm;
    property DataForm:        string read FDataForm write FDataForm;
    property WorkFlow:        string  read FWorkflow       write FWorkflow;
    property DocIndexPath:    string  read FDocIndexPath   write FDocIndexPath;
    property PrecClassification: string read FPrecClassification write FPrecClassification;
    property PrecCategory:    string read FPrecCategory write FPrecCategory;
    property DocumentDescr:   string read FDocumentDescr write FDocumentDescr;
    property DocDocID:        Integer read FDocDocID write FDocDocID;
    property DocumentName:    string read FDocumentName write FDocumentName;
  end;


// helper to parse the macros and replace..
//function ParseMacros(AFileName: String; ANMatter: Integer = -1): String;

// call this procedure to register a new merge class type, call
// from within the initalization section.
procedure RegisterWorkflowMergeType(AClass: TMergeDocumentClass);

// get and set the current workflow merge type..
function  GetWorkFlowMergeTypeClass(aMergeType: string = ''): TMergeDocumentClass;
procedure SetWorkFlowMergeTypeClass(AClass: TMergeDocumentClass);

var
  // list of merge type classes..
  GWorkFlowMergeTypes: array of TMergeDocumentClass;

implementation

uses
  Variants, Dialogs, Windows, MiscFunc, WorkFlowDataModule, OraSmart,
  WorkFlowDataModuleMerge, MatterDataForm, MSearch, citfunc, AxiomData, WorkFlowMergeDocument;

{ TMergeDocument }
var // for macros..
  GTempPath,
  GHomePath: String;
  GWorkFlowMergeType: TMergeDocumentClass = Nil;

// register the workflow merge type class.
procedure RegisterWorkflowMergeType(AClass: TMergeDocumentClass);
begin
  SetLength(GWorkFlowMergeTypes, Length(GWorkFlowMergeTypes) + 1);
  GWorkFlowMergeTypes[Length(GWorkFlowMergeTypes) - 1] := AClass;
end;

// return the current workflow merge type class.
function GetWorkFlowMergeTypeClass(aMergeType: string): TMergeDocumentClass;
var
  i: Integer;
begin
  if (aMergeType <> '') Or (not Assigned(GWorkFlowMergeType)) then
  begin
    if(aMergeType = '') then
    begin
      aMergeType := GlobalSettingLoadString(C_WKF,C_WORKFLOW,C_MERGETYPE);
    end;
    if(aMergeType <> '') then
    begin
      for i := 0 to Length(GWorkFlowMergeTypes) - 1 do
      begin
        if(GWorkFlowMergeTypes[i].ExportDescription = aMergeType) then
        begin
          GWorkFlowMergeType := GWorkFlowMergeTypes[i];
          GWorkFlowMergeType.LoadSettings();
          break;
        end;
      end;
    end;
  end;
  Result := GWorkFlowMergeType;
end;

// set the current workflow merge type class.
procedure SetWorkFlowMergeTypeClass(AClass: TMergeDocumentClass);
begin
  GWorkFlowMergeType := AClass;
  if(Assigned(GWorkFlowMergeType)) then
    SettingSave(C_WKF,C_WORKFLOW,C_MERGETYPE, GWorkFlowMergeType.ExportDescription);
end;

// add a column to the data in the export.
function TMergeDocument.AddColumn(ADataFor: TDataFor; AColumn: String; AFieldType: TFieldType; ASize: Integer): Boolean;
begin
   Result := True;
   if(FData[ADataFor].FieldDefs.IndexOf(AColumn) < 0) then
   begin
//    FData[ADataFor].FieldDefs.Add(AColumn,AFieldType,ASize,False)
//    FData[ADataFor].AddField(AColumn,AFieldType,ASize,False)
//      FData[ADataFor].FieldDefs.Add(AColumn, AFieldType, ASize);
//////////////////////////////////
      if FData[ADataFor].State in [dsEdit, dsInsert, dsBrowse] then
         FData[ADataFor].Close;

      with FData[ADataFor].FieldDefs.AddFieldDef do
      begin
         Name := AColumn;
         DataType := AFieldType;
         Size := ASize;
         CreateField(FData[ADataFor]);
      end;
   end
   else
      Result := False;
end;

// add a new row ready to populate with data.
function TMergeDocument.AddRow(ADataFor: TDataFor): Boolean;
begin
  Result := True;
  try
    if(not FData[ADataFor].Active) then
      FData[ADataFor].Open();
    if(dsInsert = FData[ADataFor].State) then
      FData[ADataFor].Post();
    FData[ADataFor].Insert();
    FData[ADataFor].FieldDefs.Update;
  except
    Result := False;
  end;
end;

// append row to end of dataset ready to populate with data.
function TMergeDocument.AppendRow(ADataFor: TDataFor): Boolean;
begin
  Result := True;
  try
    if (FData[ADataFor].Active = False) then
      FData[ADataFor].Open();
    if(dsInsert = FData[ADataFor].State) then
      FData[ADataFor].Post();
    FData[ADataFor].Append();
  except
    Result := False;
  end;
end;

// add value to current row, in column..
function TMergeDocument.AddValue(ADataFor: TDataFor; AColumn: String; AValue: Variant): Boolean;
begin
   if(FData[ADataFor].Active = False) then
      FData[ADataFor].Open();
   if (FData[AdataFor].State <> dsEdit) and (FData[AdataFor].State <> dsInsert) then
      FData[ADataFor].Edit();
   Result := InternalAddValue(ADataFor, AColumn, AValue);
end;

// clear all fields and data.
procedure TMergeDocument.Clear(ADataFor: TDataFor);
var
   i: Integer;
begin
//  FData[ADataFor].EmptyTable();
//  FData[ADataFor].FieldDefs.Clear();
//  FData[ADataFor].Clear();
//  FData[ADataFor].DeleteFields();

   Fdata[ADataFor].FieldDefs.Clear;
   for i:= 0 to FData[ADataFor].FieldCount - 1 do
      FData[ADataFor].Fields[0].Free;
   FData[ADataFor].FieldDefs.Update;

//   FData[ADataFor].Filtered := False;
//   FData[ADataFor].Filter := '';
end;

constructor TMergeDocument.Create(Collection: TCollection);
var
  i: TDataFor;
begin
   inherited Create(Collection);
   for i := Low(TDataFor) to High(TDataFor) do
//    FData[i] := TJvMemoryData.Create(nil);
//      FData[i] := TVirtualTable.Create(nil);
      FData[i] := TdxMemData.Create(nil);

   FUsedParties := TCollection.Create(TUsedParty);
   FCustomFieldNames := TCollection.Create(TCustomFieldInfo);
   FFieldTranslations := TFieldTranslations.Create();
end;

destructor TMergeDocument.Destroy;
var
  i: TDataFor;
begin
  inherited Create(Collection);
  for i := Low(TDataFor) to High(TDataFor) do
    FData[i].Free();
  FCustomFieldNames.Free();
  FUsedParties.Free();
  FFieldTranslations.Free();
  inherited;
end;

// call this method to do a merge..
function TMergeDocument.DoMerge(ADocNumber: Integer; LAddresseesCopy: PVirtualNode; PMergeDoc: TMergeDocument; APartyNName: array of integer; bFromDoc: boolean = False; ANName: integer = 0 ): Integer;
var
   i: TDataFor;
   LDataCount, LFieldsCount: Integer;
   LfrmMatterDataForm: TfrmMatterDataForm;
   FileID: string;
   ADataForm, APartyType: string;
   LPartyList: TNodeArray;
   xx, x: integer;
   bAutoSave, bDocPrompt: boolean;
begin
   Result := mrCancel;
   bDocPrompt := False;
   bAutoSave := False;
   try
      DocumentNumber := ADocNumber;

      // make sure the template has been set.
      if(FTemplateName = '') then
         raise Exception.Create('There is no template name specified');

      FileID := MatterString(NMatter,'FILEID');
      ADataForm := GetDocDataForm(PMergeDoc.DocumentID);

      if ADataForm <> '' then
      begin
         DataForm := ADataForm;
         // AES 11-02-2010 added to get the party type for a dataform
         APartyType := TableString('DATAFORM', 'CODE', DataForm, 'PARTY');
      end;

      if (FDataForm <> '')  then
      begin
         if (NMatter = 0) then
         begin
            if not FormExists(frmMatterSearch) then
               Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
            if frmMatterSearch.ShowModal = mrOK then
               FileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
         end;
//         xx := PMergeDoc.FUsedParties.Count;
         if FileID <> '' then
         begin
            // added to find the relevant party for the dataform if any exist for the merge party.
            if (APartyType <> '') and (APartyType <> 'Client') then
            begin
               with dmAxiom.qryTmp do
               begin
                  for xx := 0 to Length(APartyNName) - 1 do
                  begin
                     Close;
                     SQL.Text := 'select 1 from pbgroupings where nname = :nname and category = :category';
                     ParamByName('nname').AsInteger := APartyNName[xx];
                     ParamByName('category').AsString := APartyType;
                     Open;
                     if (not EOF) then
                     begin
                        ANName := APartyNName[xx];

                        try
                           if (not FormExists(LfrmMatterDataForm)) then
                              Application.CreateForm(TfrmMatterDataForm, LfrmMatterDataForm);
                        except
                           Application.CreateForm(TfrmMatterDataForm, LfrmMatterDataForm);
                        end;

                        Application.BringToFront;
                        LfrmMatterDataForm.DocID := PMergeDoc.DocumentID;
                        with LfrmMatterDataForm do
                        begin
                           if LoadForm(FDataForm, FileID, ANName) then
                           begin
                              if ShowModal = mrCancel then
                                 Exit
                              else
                              begin
                                 if not Assigned(fmWorkFlowMergeDocument) then
                                    fmWorkFlowMergeDocument := TfmWorkFlowMergeDocument.Create(Application);
                                 fmWorkFlowMergeDocument.AddMatterDataForms(PMergeDoc, NMatter);      //   MergeFromAddresseeNew(LAddresseesCopy, FileID, PMergeDoc);
                                 fmWorkFlowMergeDocument.AddPartyFormData(PMergeDoc, NMatter, ANName, APartyType, dfParty);
                              end;
                           end;
                        end;
                        try
                           LfrmMatterDataForm.Free;
                           LfrmMatterDataForm := nil;
                        except
                           //
                        end;
//                        Break;
                     end;
                  end;
                  Close;
               end;
            end
            else
            begin
               try
                  if (not FormExists(LfrmMatterDataForm)) then
                     Application.CreateForm(TfrmMatterDataForm, LfrmMatterDataForm);
               except
                  Application.CreateForm(TfrmMatterDataForm, LfrmMatterDataForm);
               end;
               // added to bring dataforms to the front when doing multiple document merges that have
               // dataforms
               Application.BringToFront;
               LfrmMatterDataForm.DocID := PMergeDoc.DocumentID;
               with LfrmMatterDataForm do
               begin
                  if LoadForm(FDataForm, FileID, ANName) then
                  begin
                     if ShowModal = mrCancel then
                        Exit
                     else
                     begin
//                        ShowMessage('Check Document Merge Object existence. Continuing..');
                        if not Assigned(fmWorkFlowMergeDocument) then
                        begin
//                           ShowMessage('Need to create WorkflowMerge object.');
                           fmWorkFlowMergeDocument := TfmWorkFlowMergeDocument.Create(Application);
                        end;
//                      fmWorkFlowMergeDocument.MergeWithParties();
//                        ShowMessage('Add Matter DataForms to Workflow Merge Object.');
                        fmWorkFlowMergeDocument.AddMatterDataForms(PMergeDoc, NMatter);      //   MergeFromAddresseeNew(LAddresseesCopy, FileID, PMergeDoc);
//                        ShowMessage('About to enter Parties Loop');
                        for x := 0 to FUsedParties.Count - 1 do
                        begin
//                           ShowMessage('Entered Parties Loop.');
                           if TUsedParty(FUsedParties.Items[x]).partytype <> 'Client' then
                           begin
//                              ShowMessage('Adding Party to Merge Object inside loop.');
                              APartyType := TUsedParty(FUsedParties.Items[x]).partytype;
                              ANName := TUsedParty(FUsedParties.Items[x]).nname;
                              fmWorkFlowMergeDocument.AddPartyFormData(PMergeDoc, NMatter, ANName, APartyType, dfParty);
                           end;
                        end;
                     end;
                  end;
               end;
            end;
         end;
      end
      else
         fmWorkFlowMergeDocument.AddMatterDataForms(PMergeDoc, NMatter);

    // if we need data in the merge then make sure there is some.
      if(moNeedsData in Options) then
      begin
         LDataCount := 0;
         LFieldsCount := 0;
         for i := Low(TDataFor) to High(TDataFor) do
         begin
            LFieldsCount := LFieldsCount + FData[i].FieldCount;
            LDataCount := LDataCount + FData[i].RecordCount;
         end;

         if(LFieldsCount = 0) then
            raise Exception.Create('There are no fields defined in the merge data');
         if(LDataCount = 0) then
            raise Exception.Create('There is no data to merge');
      end;

      // if a template file is required then check to see if its specified
      // and exists.
      if(moNeedsTemplatePath in Options) then
      begin
         if(FTemplatePath = '') then
            raise Exception.Create('There is no template file specified');
         if(moCheckTemplateExists in Options) then
            if(not FileExists(FTemplatePath)) then
               raise Exception.Create('The template file ''' + FTemplatePath + '''does not exist');
      end;

      // if a resulting document file is required
      // check to see if its been named.
      if(moNeedsDocumentPath in Options) then
      begin
         if(FDocumentPath = '') then
            raise Exception.Create('There is no destination filename specified');
      end;

      if(moNeedsFieldTranslate in Options) then
         FFieldTranslations.LoadFromDB();

    // if we need data, generate the data file and then merge
    // otherwise just merge.
      if FMergeType = NIL then
         FMergeType := GetWorkFlowMergeTypeClass('');  // TODO MAKE  BASED ON  FILE TYPE NOT EMPTY STRING
      if(moNeedsData in Options) and
        (FMergeType.ExportDescription <> 'Generic Documents - No Merge') then
      begin
         if(GenerateDataFile()) then
            Result := MergeDocument()
         else
            Result := mrCancel;
      end
      else
         Result := MergeDocument();

    // if merged ok, and we want to save to the database
    // do so.
      if (Result = mrOk) then
      begin
         bAutoSave := True;
         bDocPrompt := False;
         FMergeType := GetWorkFlowMergeTypeClass('');  // TODO MAKE  BASED ON  FILE TYPE NOT EMPTY STRING
         if (FMergeType.ExportDescription = 'Generic MS-Word Mail-Merge') or
            (FMergeType.ExportDescription = 'IManage/Filesite Mail-Merge') then
         begin
            bAutoSave := (SystemString('AUTO_SAVE_WORD_MERGE') = 'Y');
            bDocPrompt := (SystemString('doc_prompt_descr') = 'Y');
         end;
         if (moSaveToDB in Options) and bAutoSave then
            if not SaveToDB(bFromDoc) then
            begin
               Result := mrCancel;
               MsgErr('The document was not saved to the database successfully.');
            end
      end
      else
      begin
         Result := mrCancel;
         MsgErr('The document was not merged successfully and not saved to the database successfully.');
      end;
   except
//    on e: Exception do
//      MessageDlg('Error: ' + E.Message , mtError, [mbOK], 0);
      raise;  // Exception.Create('The merge of the current document failed.');
   end;
   MergeResult := Result;
end;

function TMergeDocument.GetDocDataForm(ADocId: integer): String;
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'select distinct dataform from WKFLOWDOCTEMPLATES_DATAFIELDS where WORKFLOWDOCTEMPLATES_docid = :docid order by dataform';
      ParamByName('docid').AsInteger := ADocID;
      Open;
      if not IsEmpty then
         Result := FieldByName('dataform').AsString
      else
         Result := '';
   end;
end;

// return the number of fields in the export set.
function TMergeDocument.GetFieldCount(ADataFor: TDataFor): Integer;
begin
  Result := FData[ADataFor].FieldDefs.Count; // FieldCount;
end;

// get the value of a field in the current row, using index.
function TMergeDocument.GetFieldValue(ADataFor: TDataFor; AFieldIndex: Integer): String;
begin
  Result := GetFieldValue(ADataFor,FData[ADataFor].FieldDefs[AFieldIndex].Name);
end;

// get the name of the field at the index.
function TMergeDocument.GetFieldName(ADataFor: TDataFor; AFieldIndex: Integer): String;
begin
  Result := FData[ADataFor].FieldDefs[AFieldIndex].Name;
end;

// get the value of a field in the current row using the field name.
function TMergeDocument.GetFieldValue(ADataFor: TDataFor; AFieldName: String): String;
var
  LField: TField;
begin
  LField := FData[ADataFor].FieldByName(AFieldName);
  if(LField.IsNull ) then
    Result := ''
  else
    Result := LField.AsString;
end;

// return the field value as an integer.
function TMergeDocument.GetFieldValueInt(ADataFor: TDataFor; AFieldName: String): Integer;
var
  LField: TField;
begin
  LField := FData[ADataFor].FieldByName(AFieldName);
  if(LField.IsNull) then
    Result := 0
  else
    Result := LField.AsInteger;
end;

// return the field value as an boolean.
function TMergeDocument.GetFieldValueBool(ADataFor: TDataFor; AFieldName: String): Boolean;
var
  LField: TField;
begin
   LField := FData[ADataFor].FieldByName(AFieldName);
   if(LField.IsNull) then
      Result := False
   else
      Result := LField.AsBoolean;
end;

// return the field value as an boolean.
function TMergeDocument.GetFieldValueBool(ADataFor: TDataFor; AFieldIndex: Integer): Boolean;
begin
   Result := GetFieldValueBool(ADataFor,FData[ADataFor].FieldDefs[AFieldIndex].Name);
end;

// return the field value as a currency.
function TMergeDocument.GetFieldValueCurr(ADataFor: TDataFor; AFieldName: String): Currency;
var
   LField: TField;
begin
   LField := FData[ADataFor].FieldByName(AFieldName);
   if(LField.IsNull) then
      Result := 0
   else
      Result := LField.AsCurrency;
end;

// return the field value as a date.
function TMergeDocument.GetFieldValueDate(ADataFor: TDataFor; AFieldName: String): TDateTime;
var
  LField: TField;
begin
  LField := FData[ADataFor].FieldByName(AFieldName);
  if(LField.IsNull) then
    Result := 0
  else
    Result := LField.AsDateTime;
end;

// internally add a value to the column in the current row.
function TMergeDocument.InternalAddValue(ADataFor: TDataFor; AColumn: String; AValue: Variant): Boolean;
var
  LField: TField;
begin
   if(VarIsNull(AValue) or (VarToStr(AValue) = '')) then
   begin
      Result := True;
      Exit;
   end;
   Result := False;
   LField := FData[ADataFor].Fields.FindField(AColumn);
   if (Assigned(LField)) then
   begin
      case LField.DataType of
         ftString,
         ftInteger,
         ftFloat: LField.Value := AValue;
         ftDateTime: LField.AsDateTime := AValue;
      end;
      Result := True;
   end;
end;

// return true of eof..
function TMergeDocument.Eof(ADataFor: TDataFor): Boolean;
begin
  Result := FData[ADataFor].Eof;
end;

// jump data to the first row.
procedure TMergeDocument.FirstRow(ADataFor: TDataFor);
begin
  if(not FData[ADataFor].Active) then
    FData[ADataFor].Open();
  FData[ADataFor].First();
end;

// jump data to the next row.
procedure TMergeDocument.NextRow(ADataFor: TDataFor);
begin
  FData[ADataFor].Next();
end;

// jump data to the last row.
procedure TMergeDocument.LastRow(ADataFor: TDataFor);
begin
  FData[ADataFor].Last();
end;

// post the current row
procedure TMergeDocument.PostRow(ADataFor: TDataFor);
begin
  FData[ADataFor].Post();
end;

// return the type of field as a string.
function TMergeDocument.GetFieldType(ADatafor: TDataFor; AFieldIndex: Integer): String;
var
  LField: TField;
begin
  LField := FData[ADataFor].Fields[AFieldIndex];
  case LField.DataType of
    ftString:   Result := 'String';
    ftInteger:  Result := 'Integer';
    ftFloat:    Result := 'Float';
    ftDateTime: Result := 'DateTime';
  else
    Result := 'Unknown';
  end;
end;

// copy tthe field definitions.
procedure TMergeDocument.CopyFieldDefs(ADataFor: TDataFor; ADefs: TFieldDefs; AQuery: TDataSet);
begin
   if (FData[ADataFor].State <> dsInactive) then
      FData[ADataFor].Close;
   if (AQuery.FieldCount > 0) then
      FData[ADataFor].AddFieldsFromDataSet(AQuery);
//      FData[ADataFor].FieldDefs.Assign(ADefs);
end;


{ global }
{function ParseMacros(AFileName: String; ANMatter: Integer): String;
var
  LBfr: Array[0..MAX_PATH] of Char;
begin
  if(GHomePath = '') then
    GHomePath := GetEnvironmentVariable('HOMEDRIVE') + GetEnvironmentVariable('HOMEPATH');

  if(GTempPath = '') then
  begin
    GetTempPath(MAX_PATH,Lbfr);
    GTempPath := String(LBfr);
  end;

  Result := AFileName;

  Result := StringReplace(Result,C_MACRO_USERHOME,GHomePath,[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_TEMPDIR,GTempPath,[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_NMATTER,IntToStr(ANMatter),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_FILEID, TableString('MATTER','NMATTER',IntToStr(ANMatter),'FILEID'),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_CLIENTID, TableString('MATTER','NMATTER',IntToStr(ANMatter),'CLIENTID'),[rfReplaceAll, rfIgnoreCase]);

  Result := StringReplace(Result,C_MACRO_DATE,FormatDateTime('dd-mm-yyyy',Now()) ,[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_TIME,FormatDateTime('hh-nn-ss',Now()),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_DATETIME,FormatDateTime('dd-mm-yyyy-hh-nn-ss',Now()),[rfReplaceAll, rfIgnoreCase]);

  Result := StringReplace(Result,C_MACRO_AUTHOR, TableString('MATTER','NMATTER',IntToStr(ANMatter),'AUTHOR'),[rfReplaceAll, rfIgnoreCase]);
  if (pos(C_MACRO_DOCSEQUENCE,UpperCase(Result)) > 0) then
     Result := StringReplace(Result,C_MACRO_DOCSEQUENCE, ProcString('getDocSequence',ANMatter),[rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result,C_MACRO_USERINITIALS, dmAxiom.UserID ,[rfReplaceAll, rfIgnoreCase]);

  if(Pos(C_MACRO_TEMPFILE,Result) > 0) then
  begin
    GetTempFileName(PChar(GTempPath),'axm',0,LBfr);
    Result := StringReplace(Result,C_MACRO_TEMPFILE,String(LBfr),[rfReplaceAll, rfIgnoreCase]);
  end;
end;      }

// ge the field type as a TFieldType
function TMergeDocument.GetFieldTypeEx(ADatafor: TDataFor;
  AFieldIndex: Integer): TFieldType;
begin
  Result := FData[ADataFor].Fields[AFieldIndex].DataType;
end;

// add into the list the party used in a document.
// for the save to db feature.
procedure TMergeDocument.AddUsedParty(ANName: Integer; APartyType: String);
var
  LUsedParty: TUsedParty;
  i: Integer;
begin
  for i := 0 to FUsedParties.Count - 1 do
  begin
    if(TUsedParty(FUsedParties.Items[i]).partytype = APartyType) and
      (TUsedParty(FUsedParties.Items[i]).nname     = ANName) then
      Exit;
  end;

  LUsedParty := TUsedParty(FUsedParties.Add());
  LUsedParty.nname := ANName;
  LUsedParty.partytype := APartyType;
end;

// save the document and information to the database.
function TMergeDocument.SaveToDB(SaveToDoc: boolean = False): boolean;
var
   LGenDocID,
   FileImg: Integer;
   i: Integer;
   LUsedParty: TUsedParty;
   RetVal: boolean;
   ADocumentPath,
   AExt,
   LFile: string;
begin
   RetVal := True;

   // lets make sure that the document has an extension
   AExt := ExtractFileExt(DocumentPath);
   if (AExt = '') then
   begin
      AExt := '.' + SystemString('DEFAULT_DOC_EXT');
      DocumentPath := DocumentPath + AExt;
   end;

   if (SaveToDoc) then
   begin
      ADocumentPath := ParseMacros(DocumentPath,0,0,DocumentDescr);
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('anmatter').AsInteger             := NMatter;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('adocumentid').AsInteger          := DocumentID;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('afilepath').AsString             := IndexPath(ADocumentPath, 'DOC_SHARE_PATH');  //DocumentPath;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('atemplatepath').AsString         := TemplatePath;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('adatafilepath').AsString         := DataFilePath;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('adataform').AsString             := DataForm;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('awho').AsString                  := dmWorkFlowDataModule.UserID;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('adescr').AsString                := TableString('WORKFLOWDOCTEMPLATES','DOCID',IntToStr(DocumentID),'DOCUMENTNAME');
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('adoc_name').AsString             := ADocumentPath;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('afileID').AsString               := TableString('MATTER','NMATTER',IntToStr(NMatter),'FILEID');
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('apreccategory').AsString         := PrecCategory;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('aprecclassification').AsString   := PrecClassification;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('ADisplayFilePath').AsString      := ADocumentPath;
//      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('ADocDocID').AsInteger            := DocDocID;

      AExt := UpperCase(AExt);
      if ((AExt = '.DOC') or (AExt = '.DOCX') or (AExt = '.DOT') or (AExt = '.DOTX') or (AExt = '.DOTM')) then
         FileImg := 2
      else if ((AExt = '.XLS') or (AExt = '.CSV') or (AExt = '.XLST') or (AExt = '.XLSX') or (AExt = '.XLSM')) then
         FileImg := 3
      else if ((AExt = '.EML') or (AExt = '.MSG')) then
         FileImg := 4
      else if AExt = '.PDF' then
         FileImg := 5
      else if (AExt = '.HTM') or (AExt = '.HTML') then
         FileImg := 6
      else if (AExt = '.PPT') or (AExt = '.PPTX') then
         FileImg := 8
      else if (AExt = '.ZIP') or (AExt = '.ZIPX') then
         FileImg := 9
      else
         FileImg := 1;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('AIMAGEINDEX').AsInteger         := FileImg;
      dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('afile_extension').AsString       := AExt;

      try
         dmWorkFlowDataModuleMerge.spInsertGenericDocument.ExecProc();

         LGenDocID := dmWorkFlowDataModuleMerge.spInsertGenericDocument.ParamByName('result').AsInteger;
      except
         RetVal := False;
      end;

      try
         for i := 0 to FUsedParties.Count - 1 do
         begin
            dmWorkFlowDataModuleMerge.qInsertGenDocParty.ParamByName('workflowgendocument').AsInteger := LGenDocID;
            LUsedParty := TUsedParty(FUsedParties.Items[i]);
            dmWorkFlowDataModuleMerge.qInsertGenDocParty.ParamByName('nname').AsInteger := LUsedParty.nname;
            dmWorkFlowDataModuleMerge.qInsertGenDocParty.ParamByName('partytype').AsString := LUsedParty.partytype;
            dmWorkFlowDataModuleMerge.qInsertGenDocParty.Execute();
         end;
      except
         RetVal := False;
      end;
   end
   else
   begin
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('anmatter').AsInteger           := NMatter;
      if(TemplateLineID > 0) then
         dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('atemplatelineid').AsInteger := TemplateLineID
      else
         dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('atemplatelineid').Clear();
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('adocumentid').AsInteger        := DocumentID;
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('afilepath').AsString           := ParseMacros(DocumentPath,0,0,DocumentDescr);
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('atemplatepath').AsString       := TemplatePath;
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('adatafilepath').AsString       := DataFilePath;
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('adataform').AsString           := DataForm;
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('awho').AsString                := dmWorkFlowDataModule.UserID;
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('apreccategory').AsString       := PrecCategory;
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('aprecclassification').AsString := PrecClassification;
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('adocfilepath').AsString        := IndexPath(DocumentPath, 'DOC_SHARE_PATH');
      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('adocdescr').AsString           := DocumentDescr;
//      dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('ADocDocID').AsInteger          := DocDocID;

      try
         dmWorkFlowDataModuleMerge.spInsertGenDocument.ExecProc();

         LGenDocID := dmWorkFlowDataModuleMerge.spInsertGenDocument.ParamByName('result').AsInteger;
      except
         RetVal := False;
      end;

      try
         dmWorkFlowDataModuleMerge.qInsertGenDocParty.ParamByName('workflowgendocument').AsInteger := LGenDocID;
         for i := 0 to FUsedParties.Count - 1 do
         begin
            LUsedParty := TUsedParty(FUsedParties.Items[i]);

            dmWorkFlowDataModuleMerge.qInsertGenDocParty.ParamByName('nname').AsInteger := LUsedParty.nname;
            dmWorkFlowDataModuleMerge.qInsertGenDocParty.ParamByName('partytype').AsString := LUsedParty.partytype;
            dmWorkFlowDataModuleMerge.qInsertGenDocParty.ExecSQL();
         end;
      except
          RetVal := False;
      end;
   end;
   result := RetVal;
end;

// take the filename and add the document number - eg abc.doc to abc3.doc
function TMergeDocument.AddDocNumber(AFileName: String; ANumber: Integer): String;
var
  LPath, LFile, LExtn: String;
  p: Integer;
begin
  if(ANumber > 0) then
  begin
    LPath := ExtractFilePath(AFileName);
    LFile := ExtractFileName(AFileName);
    LExtn := ExtractFileExt(AFileName);
    p := Pos(LExtn,LFile);
    LFile := Copy(LFile,1,p - 1);

    Result := LPath + LFile + ' ' + IntToStr(ANumber) + LExtn;
  end else
    Result := AFileName;
end;

// add information about the custom field, means we can reverse the information
// back to the database.
procedure TMergeDocument.AddCustomField(ANUnique, ANUnique2: Integer;
  ALinkTable, AFieldName: String; ASourceTable: TDataFor;
  AFieldType, AFieldLabel, AFormLabel: String; APartyType: String; APartyCounter: Integer);
var
  LCustom: TCustomFieldInfo;
begin
  LCustom := TCustomFieldInfo(FCustomFieldNames.Add());

  LCustom.NUnique       := ANUnique;
  LCustom.NUnique2      := ANUnique2;
  LCustom.LinkTable     := ALinkTable;
  LCustom.FieldName     := AFieldName;
  LCustom.SourceTable   := ASourceTable;
  LCustom.FieldType     := AFieldType;
  LCustom.PartyType     := APartyType;
  LCustom.FieldLabel    := AFieldLabel;
  LCustom.FormLabel     := AFormLabel;
  LCustom.PartyCounter  := APartyCounter;
end;

// get the field value as a currency.
function TMergeDocument.GetFieldValueCurr(ADataFor: TDataFor;
  AFieldIndex: Integer): Currency;
begin
  Result := GetFieldValueCurr(ADataFor,FData[ADataFor].FieldDefs[AFieldIndex].Name);
end;

// get the field value as a date
function TMergeDocument.GetFieldValueDate(ADataFor: TDataFor;
  AFieldIndex: Integer): TDateTime;
begin
  Result := GetFieldValueDate(ADataFor,FData[ADataFor].FieldDefs[AFieldIndex].Name);
end;

// get the field value as a integer
function TMergeDocument.GetFieldValueInt(ADataFor: TDataFor;
  AFieldIndex: Integer): Integer;
begin
  Result := GetFieldValueInt(ADataFor,FData[ADataFor].FieldDefs[AFieldIndex].Name);
end;

{ TCustomFieldInfo }

// duplicate to a new instance in ACollection.
procedure TCustomFieldInfo.Duplicate(ACollection: TCollection);
var
  LNew: TCustomFieldInfo;
begin
  LNew := TCustomFieldInfo(ACollection.Add);

  LNew.NUnique        := NUnique;
  LNew.NUnique2       := NUnique2;
  LNew.LinkTable      := LinkTable;
  LNew.FieldName      := FieldName;
  LNew.SourceTable    := SourceTable;
  LNew.FieldType      := FieldType;
  LNew.PartyType      := PartyType;
  LNew.FieldLabel     := FieldLabel;
  LNew.FormLabel      := FormLabel;
  LNew.PartyCounter   := PartyCounter;
  LNew.PartyName      := PartyName;

  LNew.OldValueInt    := OldValueInt;
  LNew.OldValueDate   := OldValueDate;
  LNew.OldValueCurr   := OldValueCurr;
  LNew.OldValueStr    := OldValueStr;

  LNew.NewValueInt    := NewValueInt;
  LNew.NewValueDate   := NewValueDate;
  LNew.NewValueCurr   := NewValueCurr;
  LNew.NewValueStr    := NewValueStr;

end;

// get a string version of the new value
function TCustomFieldInfo.GetNewString: String;
begin
  case FieldType[1] of
    C_FIELDTYPECURRENCY: Result := CurrToStr(NewValueCurr);
    C_FIELDTYPEINTEGER : Result := IntToStr(NewValueInt);
    C_FIELDTYPEDATE    : Result := DateToStr(NewValueDate);
  else
         Result := NewValueStr;
  end;
end;

// get a string version of the old value.
function TCustomFieldInfo.GetOldString: String;
begin
  case FieldType[1] of
    C_FIELDTYPECURRENCY: Result := CurrToStr(OldValueCurr);
    C_FIELDTYPEINTEGER : Result := IntToStr(OldValueInt);
    C_FIELDTYPEDATE    : Result := DateToStr(OldValueDate);
  else
         Result := OldValueStr;
  end;
end;

// get a string describing the source of the data row.
function TCustomFieldInfo.GetSourceString: String;
begin
  case SourceTable of
    dfMatter:    Result := 'Matter - ' + PartyName;
    dfParty:     Result := 'Referred To - ' + PartyName + ' [' + PartyType + ']';
    dfClient:    Result := 'Client - ' + PartyName + ' [' + PartyType + ']';
    dfAddressee: Result := 'Addressee - ' + PartyName + ' [' + PartyType + ']';
  end;
end;

// do the old and new value differ?
function TCustomFieldInfo.IsDiff: Boolean;
begin
  case FieldType[1] of
    C_FIELDTYPECURRENCY: Result := NewValueCurr <> OldValueCurr;
    C_FIELDTYPEINTEGER : Result := NewValueInt  <> OldValueInt;
    C_FIELDTYPEDATE    : Result := NewValueDate <> OldValueDate;
  else
         Result := Trim(NewValueStr)  <> Trim(OldValueStr);
  end;
end;

// update the database, will insert a row if required.
procedure TCustomFieldInfo.Update();
var
  LNew: Boolean;
  procedure SetInitialParams();
  begin
    dmWorkFlowDataModule.qTmp.ParamByName('nunique').AsInteger := NUnique;
    if(NUnique2 > 0) then
      dmWorkFlowDataModule.qTmp.ParamByName('nunique2').AsInteger := NUnique2;
    dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString := LinkTable;
    dmWorkFlowDataModule.qTmp.ParamByName('fieldname').AsString := FieldName;
  end;
begin
  // first check to see if row exists..
  dmWorkFlowDataModule.qTmp.SQL.Clear();
  dmWorkFlowDataModule.qTmp.SQL.Add('SELECT COUNT(*) CNT FROM fieldtypelink WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');
  if(NUnique2 > 0) then
    dmWorkFlowDataModule.qTmp.SQL.Add('AND nunique2 = :nunique2');

  SetInitialParams();

  dmWorkFlowDataModule.qTmp.Open();
  try
    LNew := dmWorkFlowDataModule.qTmp.FieldByName('cnt').AsInteger = 0;
  finally
    dmWorkFlowDataModule.qTmp.Close();
  end;
  // if doesnt exist then insert.
  if(LNew) then
  begin
    dmWorkFlowDataModule.qTmp.SQL.Clear();
    dmWorkFlowDataModule.qTmp.SQL.Add('INSERT INTO fieldtypelink');
    dmWorkFlowDataModule.qTmp.SQL.Add(' (nunique, ');
    if(NUnique2 > 0) then
      dmWorkFlowDataModule.qTmp.SQL.Add(' nunique2, ');
    dmWorkFlowDataModule.qTmp.SQL.Add(' linktable, fieldname, textvalue, datevalue, modified, numbervalue)');
    dmWorkFlowDataModule.qTmp.SQL.Add(' VALUES (:nunique, ');
    if(NUnique2 > 0) then
      dmWorkFlowDataModule.qTmp.SQL.Add(' :nunique2, ');
    dmWorkFlowDataModule.qTmp.SQL.Add(' :linktable, :fieldname, :textvalue, :datevalue, SYSDATE, :numbervalue)');
  end else
  begin
  // otherwise update.
    dmWorkFlowDataModule.qTmp.SQL.Clear();
    dmWorkFlowDataModule.qTmp.SQL.Add('UPDATE fieldtypelink SET');
    dmWorkFlowDataModule.qTmp.SQL.Add('textvalue = :textvalue, datevalue = :datevalue, modified = SYSDATE, numbervalue = :numbervalue');
    dmWorkFlowDataModule.qTmp.SQL.Add('WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');
    if(NUnique2 > 0) then
      dmWorkFlowDataModule.qTmp.SQL.Add('AND nunique2 = :nunique2');
  end;

  SetInitialParams();

  // now set date, number and text as required.

  dmWorkFlowDataModule.qTmp.ParamByName('textvalue').AsString := GetNewString();
  dmWorkFlowDataModule.qTmp.ParamByName('datevalue').Clear();
  dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').Clear();

  case FieldType[1] of
    C_FIELDTYPEDATE    :  dmWorkFlowDataModule.qTmp.ParamByName('datevalue').AsDate := NewValueDate;
    C_FIELDTYPECURRENCY:  dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').AsCurrency := NewValueCurr;
    C_FIELDTYPEINTEGER :  dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').AsInteger := NewValueInt;
  end;

  dmWorkFlowDataModule.qTmp.ExecSQL();
end;

{ TFieldTranslation }

procedure TFieldTranslation.AddTranslation(AName: String);
begin
  FTranslations.Add(AName);
end;

constructor TFieldTranslation.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FTranslations := TStringList.Create();
end;

destructor TFieldTranslation.Destroy;
begin
  FTranslations.Free();
  inherited;
end;

function TFieldTranslation.GetTranslation(AIndex: Integer): String;
begin
  if(AIndex < FTranslations.Count) then
    Result := FTranslations[AIndex]
  else
    Result := '';
end;

function TFieldTranslation.GetTranslationCount: Integer;
begin
  Result := FTranslations.Count;
end;

function TFieldTranslation.GetTranslations: String;
begin
  Result := FTranslations.CommaText;
end;

procedure TFieldTranslation.SetFieldName(const Value: String);
begin
  FFieldName := Value;
//  FTranslations.Add(Value);
end;

{ TFieldTranslations }

constructor TFieldTranslations.Create;
begin
  inherited Create(TFieldTranslation);
end;

destructor TFieldTranslations.Destroy;
begin

  inherited;
end;

function TFieldTranslations.GetTranslation(AField: String;
  AIndex: Integer): String;
var
  LTrans: TFieldTranslation;
begin
  Result := '';
  LTrans := GetTrans(AField);
  if(Assigned(LTrans)) then
  begin
    if(AIndex < LTrans.TranslationCount) then
      Result := LTrans.Translation[AIndex];
  end;
end;

function TFieldTranslations.GetTrans(
  AField: String): TFieldTranslation;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
  begin
    if(AField = TFieldTranslation(Items[i]).FieldName) then
    begin
      Result := TFieldTranslation(Items[i]);
      Exit;
    end;
  end;
  Result := nil;
end;

function TFieldTranslations.GetTranslationCount(AField: String): Integer;
var
  LTrans: TFieldTranslation;
begin
  LTrans := GetTrans(AField);
  if(Assigned(LTrans)) then
    Result := LTrans.TranslationCount
  else
    Result := 0;
end;

procedure TFieldTranslations.LoadFromDB;
var
  LAlreadyOpen: Boolean;
  LTrans: TFieldTranslation;
begin
   LAlreadyOpen := dmWorkFlowDataModuleMerge.tbTranslate.Active;
   dmWorkFlowDataModuleMerge.tbTranslate.Open();
   try
      while(not dmWorkFlowDataModuleMerge.tbTranslate.Eof) do
      begin
         LTrans := GetTrans(dmWorkFlowDataModuleMerge.tbTranslateWORKFLOWFIELD.AsString);
         if(not Assigned(LTrans)) then
         begin
            LTrans := TFieldTranslation(Add());
            LTrans.FieldName := dmWorkFlowDataModuleMerge.tbTranslateWORKFLOWFIELD.AsString;
         end;
         LTrans.AddTranslation(dmWorkFlowDataModuleMerge.tbTranslateEXTERNALFIELD.AsString);
         dmWorkFlowDataModuleMerge.tbTranslate.Next();
      end;
   finally
      if(not LAlreadyOpen) then
         dmWorkFlowDataModuleMerge.tbTranslate.Close();
   end;
end;

function TMergeDocument.IsFieldsEmpty(ADataFor: TDataFor ): boolean;
var
   LFieldsCount: integer;
   i: TDataFor;
begin
   LFieldsCount := 0;
   for i := Low(TDataFor) to High(TDataFor) do
   begin
      if i = ADataFor then
      begin
         if (FData[i].FieldCount = 0) then
            LFieldsCount := 0
         else
            LFieldsCount := LFieldsCount + FData[i].FieldCount;
         break;
      end;
   end;

//   if (ADataFor = dfClient) and (LFieldsCount = 1) then
//      LFieldsCount := 0;

   Result := (LFieldsCount = 0);
end;

end.


