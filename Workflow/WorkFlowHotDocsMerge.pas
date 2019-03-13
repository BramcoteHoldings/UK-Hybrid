unit WorkFlowHotDocsMerge;
(*
  WorkFlow Hot Docs Merge

  Intended to have parameters to specify

  Hotdocs Executable location.
  Templates Directory
  Answer File Directory
  Save Destination Directory

  Answer file parameter
  Template file parameter
  Output file parameter
  Extra parameters

  HotDocs XML File Header

  Delete Answer File

  Mathew Dredge, June-July 2003
 *)

interface

uses Classes
      , SysUtils
      , db
      , Windows
      , WorkFlowDocumentMerge
      , WorkFlowHotDocsXML
      , HotDocs_TLB
      ;
const
  C_UNANS = 'unans';
  C_UNANSTRUE = 'true';
  C_UNANSFALSE = 'false';
  VARIANT_TRUE = -1;
  VARIANT_FALSE = 0;
type
  THotDocsMergeProperties = (
    hdHotDocsLocation,
    hdReuseAnswerFile,
    hdDeleteAnswerFile,
    hdTemplatesDir,
    hdAnswerFileDir,
    hdSaveDestination,
    hdAnswerFileParam,
    hdTemplateFileParam,
    hdOutputFileParam,
    hdExtraParams,
    hdXMLHeader,
    hd6Interface);

  THotDocsMergeDocument = class(TMergeDocument)
  private
    FAnswerFileTimeStamp: Integer;
    FAnswers: TStringList;
    FCompleteMessage: DWORD;
    FAssemblyComplete: Boolean;

    class function GetPropertyIndex(AProperty: String): THotDocsMergeProperties;
    function GetNewDocument(var ADocumentPath: String): Boolean;
    function GetNewAnswerDocument(var AAnswerPath: String): Boolean;
    function FindAnswer(AAnswerSet: IXMLAnswerSetType;
      AAnswerName: String): IXMLAnswerType;
    procedure FindOldValues(ACustomFieldInfo: TCustomFieldInfo);
    procedure AddAnswer(AAnswerSet: IXMLAnswerSetType; AAnswerName,
      AFieldValue: String; AFieldType: TFieldType);
    procedure PostProcessAnswer(AAnswerSet: IXMLAnswerSetType;
      AAnswerName: String; ACustomFieldInfo: TCustomFieldInfo;
      AChangedDataValues: TCollection);
    procedure PostProcessRepeatAnswers(AAnswerSet: IXMLAnswerSetType;
      AAnswerName: String; ACustomFieldInfo: TCustomFieldInfo;
      AChangedDataValues: TCollection);
    procedure ClearAnswer();
    procedure WriteAnswerFile(AAnswerSet: IXMLAnswerSetType);

    // hotdocs 6 callbacks
    procedure OnAssemblyCompleteEvent(Sender: TObject);
    procedure OnAssemblyErrorEvent(Sender: TObject; errCode: Integer; var errMesg: OleVariant; var override: OleVariant);
    procedure OnAssemblyPreSaveDocumentEvent(Sender: TObject; var pathName: OleVariant;
               outputType: HDOUTPUTTYPE;
               var showui: OleVariant;
               var Aoverride: OleVariant);
    procedure OnAssemblyUserInterfaceEvent(Sender: TObject; hdEvent: HDAUI; var Aoverride: OleVariant);
  protected
    function GenerateDataFile(): boolean; override;
    function MergeDocument(): integer;    override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy(); override;
    function PostProcess(AChangedDataValues: TCollection): boolean; override;

    class function ExportDescription(): String; override;
    class function Options(): TMergeOptions; override;

    class procedure LoadSettings(); override;
    class procedure SaveSettings(); override;

    class function NumberOfProperties(): Integer; override;
    class function PropertyType(AProperty: Integer): TMergePropertyType; override;
    class function PropertyType(AProperty: String): TMergePropertyType; override;
    class function GetPropertyName(AProperty: Integer): String; override;
    class function GetPropertyValue(AProperty: Integer): Variant; override;
    class function GetPropertyValue(AProperty: String): Variant; override;
    class procedure SetPropertyValue(AProperty: Integer; AValue: Variant); override;
    class procedure SetPropertyValue(AProperty: String; AValue: Variant); override;

  end;

  THotDocsRepeatField = class(TCollectionItem)
  private
    FFieldName: String;
    FValues: TStringList;
    FFieldType: TFieldType;
    function GetValueCount: Integer;
    function GetValue(Index: Integer): String;
    procedure CreateAnswer(var AAnswerSet: IXMLAnswerSetType; AAnswerName: String; AAnswers: TStringList);
  public
    constructor Create(Collection: TCollection); override;
    destructor  Destroy(); override;
    procedure SaveRepeating(var AAnswerSet: IXMLAnswerSetType; APartyType: String; AFieldTranslations: TFieldTranslations; AAnswers: TStringList);

    procedure AddValue(AValue: String);
    property FieldName: String read FFieldName write FFieldName;
    property ValueCount: Integer read GetValueCount;
    property Value[Index: Integer]: String read GetValue;
    property FieldType: TFieldType read FFieldType write FFieldType;
  end;

  THotDocsRepeatingParty = class(TCollectionItem)
  private
    FPartyType: String;
    FFields: TCollection;
    function GetField(AName: String): THotDocsRepeatField;
    function GetFieldCount: integer;
    function GetValueCount(AField: String): Integer;
    function GetValue(AField: String; AValue: Integer): String;

  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy(); override;

    procedure AddFieldValue(AField, AValue: String; AFieldType: TFieldType);
    procedure SaveRepeating(var AAnswerSet: IXMLAnswerSetType; AFieldTranslations: TFieldTranslations; AAnswers: TStringList);

    property PartyType: String read FPartyType write FPartyType;
    property Value[AField: String; AValue: Integer]: String read GetValue;
    property ValueCount[AField: String]: Integer read GetValueCount;
    property Field[AName: String]: THotDocsRepeatField read GetField;
    property FieldCount: integer read GetFieldCount;
  end;

  THotDocsRepeatingParties = class(TCollection)
  public
    constructor Create();
    procedure AddFieldValue(APartyType, AField, AValue: String; AFieldType: TFieldType);
    procedure SaveRepeating(var AAnswerSet: IXMLAnswerSetType; AFieldTranslations: TFieldTranslations; AAnswers: TStringList);
  end;

function Win32Error(): String;

implementation

uses
  MiscFunc, Dialogs, ShellAPI, WaitFormAppStop, Controls,
  XMLIntf,WorkFlowDataChangedDialog, Forms, AxiomData;

var
  THotDocsPropertyNames: array  [THotDocsMergeProperties] of String =
    ('HotDocs Exe',
     'Reuse Answer File',
     'Delete Answer File',
     'Templates Dir',
     'Answer File Dir',
     'Save Destination Dir',
     'Answer File Param',
     'Template File Param',
     'Output File Param',
     'Extra Params',
     'Hot Docs XML Header File',
     'Use HotDocs 6 Interface');
  THotDocsPropertyTypes: array  [THotDocsMergeProperties] of TMergePropertyType =
    (mptFilePath,
     mptBoolean,
     mptBoolean,
     mptPath,
     mptPath,
     mptPath,
     mptString,
     mptString,
     mptString,
     mptString,
     mptFilePath,
     mptBoolean);
  THotDocsPropertyValues: array [THotDocsMergeProperties] of Variant;

// format win32 error from the system string list..
function Win32Error(): String;
var
  LMsgBuf: Array[0..2000] of Char;
begin
  FormatMessage(
    FORMAT_MESSAGE_FROM_SYSTEM,
    nil,
    GetLastError(),
    0, // Default language
    LMsgBuf,
    2000,
    nil);
  Result := String(LMsgBuf);
end;
{ THotDocsMergeDocument }



class function THotDocsMergeDocument.ExportDescription: String;
begin
  Result := 'HotDocs Precedents';
end;

procedure THotDocsMergeDocument.AddAnswer(AAnswerSet: IXMLAnswerSetType; AAnswerName, AFieldValue: String; AFieldType: TFieldType);
var
  LAnswer: IXMLAnswerType;
begin
  FAnswers.Add(AAnswerName);

  LAnswer := AAnswerSet.Add();
  LAnswer.Name := AAnswerName;

  case AFieldType of
    ftString:
      begin
        if(AFieldValue = '') then
          LAnswer.AddChild('TextValue').Attributes[C_UNANS] := C_UNANSTRUE
        else
          LAnswer.TextValue := AFieldValue;
      end;
    ftInteger,
    ftLargeInt:
      begin
        if(AFieldValue = '') then
          LAnswer.AddChild('NumValue').Attributes[C_UNANS] := C_UNANSTRUE
        else
          LAnswer.NumValue  := AFieldValue;//IntToStr(GetFieldValueInt(LDataFor,i));
      end;
    ftFloat:
      begin
        if(AFieldValue = '') then
          LAnswer.AddChild('NumValue').Attributes[C_UNANS] := C_UNANSTRUE
        else
          LAnswer.NumValue := AFieldValue;//IntToStr(GetFieldValueInt(LDataFor,i));
      end;
    ftDateTime,
    ftDate:
      begin
        if(AFieldValue = '') then
          LAnswer.AddChild('DateValue').Attributes[C_UNANS] := C_UNANSTRUE
        else
          LAnswer.DateValue := AFieldValue;//DateToStr(GetFieldValueDate(LDataFor,i));
     end;
  end;
end;

// Generate the XML Answer file from our data.
function THotDocsMergeDocument.GenerateDataFile: boolean;
var
  LAnswerSet: IXMLAnswerSetType;

  LDataFilePath,
  LFieldValue,
  LFieldName,
  LTableName,
  LAnswerName,
  LTransValue: String;
  LDataFor: TDataFor;
  LFileID, i,t: Integer;
  LFieldType: TFieldType;
  LRepeatPartys: THotDocsRepeatingParties;
  AMultiCount: integer;
begin
   Result := False;

   if(not FileExists(THotDocsPropertyValues[hdXMLHeader])) then
   begin
      MessageDlg('The ''' + THotDocsPropertyNames[hdXMLHeader] + ''' file ''' + THotDocsPropertyValues[hdXMLHeader] + ''' does not exist and is required before a merge to HotDocs can take place.', mtError, [mbOK], 0);
      Exit;
   end;

   // generate the location to save the answer file to.
   LDataFilePath := ParseMacros(THotDocsPropertyValues[hdAnswerFileDir], NMatter);
   if(UpperCase(ExpandUNCFileName(DataFilePath)) <> UpperCase(DataFilePath)) then
      DataFilePath := LDataFilePath + '\' + DataFilePath;
//  DataFilePath := AddDocNumber(DataFilePath,DocumentNumber);
   ForceDirectories(ExtractFilePath(DataFilePath));

  // create the hot docs xml file.
   LRepeatPartys := THotDocsRepeatingParties.Create();
   try
      // check to see if we can create the file if not, ask for a different name.
      if(THotDocsPropertyValues[hdReuseAnswerFile]) then
      begin
         if(FileExists(DataFilePath)) then
         begin
            LFileID := FileOpen(DataFilePath,fmOpenWrite);
            while (LFileID < 0) do
            begin
               if MessageDlg('The destination answer file ''' + DataFilePath + ''' is locked by another application, you will need to ensure it is not locked before proceding?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
                  Exit;

               LFileID := FileOpen(DataFilePath,fmOpenWrite);
            end;
            FileClose(LFileID);
         end;
      end else
      begin
         LFileID := FileCreate(DataFilePath);
         while(LFileID < 0) do
         begin
            LDataFilePath := DataFilePath;
            if MessageDlg('The destination answer file ''' + DataFilePath + ''' is locked by another application, you will need to specify a new filename?', mtConfirmation, [mbOK,mbCancel], 0) = mrOK then
            begin
               if(not GetNewAnswerDocument(LDataFilePath)) then
                  Exit;
            end else
               Exit;
            DataFilePath := LDataFilePath;
            LFileID := FileCreate(DataFilePath);
         end;
         FileClose(LFileID)
      end;

      if(THotDocsPropertyValues[hdReuseAnswerFile] and FileExists(DataFilePath)) then
         LAnswerSet := LoadAnswerSet(DataFilePath)
      else
         LAnswerSet := LoadAnswerSet(THotDocsPropertyValues[hdXMLHeader]);

      LAnswerSet.Title := TemplateName;

      LAnswerSet.OwnerDocument.Options := LAnswerSet.OwnerDocument.Options + [doNodeAutoIndent];

      for LDataFor := Low(TDataFor) to High(TDataFor) do
      begin
         FirstRow(LDataFor);
         while(not Eof(LDataFor)) do
         begin
            for i := 0 to GetFieldCount(LDataFor) - 1 do
            begin
               LFieldName   := Trim(UpperCase(GetFieldName(LDataFor,i)));
               if LTableName = 'CLIENT' then
                  LFieldType   := GetFieldTypeEx(LDataFor,i+1)
               else
                  LFieldType   := GetFieldTypeEx(LDataFor,i);

               LFieldValue := GetFieldValue(LDataFor,i);
               if (LDataFor in [dfParty, dfEmployee]) then
                  LTableName := Trim(UpperCase(GetFieldValue(LDataFor,'TYPE')))
               else
               begin
                  LTableName := Trim(UpperCase(TDataForNames[LDataFor]));
                  if LTableName = 'MULTICLIENT' then
                  begin
                     inc(AMultiCount);
                     LTableName := LTableName + '['+IntToStr(AMultiCount)+']';
                  end;
               end;

//            LTableName := Trim(UpperCase(TDataForNames[LDataFor]));

               LAnswerName  := LTableName + '_' + LFieldName;

               with dmAxiom.qryTmp3 do
               begin
                  Close;
                  SQL.Text := 'select WORKFLOWFIELD from WORKFLOWFIELDTRANSLATE where WORKFLOWFIELD = '+quotedstr(LAnswerName);
                  Open;
                  if (Eof = True) then
                  begin
                     with dmAxiom.qryTmp do
                     begin
                        Close;
                        SQL.Text := 'insert into WORKFLOWFIELDTRANSLATE(WORKFLOWFIELD,EXTERNALFIELD,SAMPLE_DATA )'+
                                    ' values ('+quotedstr(LAnswerName)+','+quotedstr(LAnswerName)+','+quotedstr(LFieldValue)+')';
                        ExecSQL;
                     end;
                  end
                  else
                  begin
                     LFieldValue := '';
                     LFieldValue := GetFieldValue(LDataFor,i);
                     with dmAxiom.qryTmp do
                     begin
                        Close;
                        SQL.Text := 'update WORKFLOWFIELDTRANSLATE set SAMPLE_DATA = ' +
                                     quotedstr(LFieldValue)+ ' where WORKFLOWFIELD = '+ quotedstr(LAnswerName);
                        ExecSQL;
                     end;
                  end;
               end;

               AddAnswer(LAnswerSet,LAnswerName,LFieldValue, LFieldType);

               if(LDataFor = dfParty) then
                  LRepeatPartys.AddFieldValue(GetFieldValue(LDataFor,C_INTERNALPARTYTYPE),
                     LFieldName,LFieldValue,LFieldType);



               // do the translations of this field.
               for t := 0 to FieldTranslations.TranslationCount[LAnswerName] - 1 do
                  AddAnswer(LAnswerSet,FieldTranslations.Translations[LAnswerName,t],LFieldValue,LFieldType);

{               // do the translations of this field.
               for t := 0 to (FieldTranslations.TranslationCount[LAnswerName] - 1) do
               begin
                  LTransValue := FieldTranslations.Translations[LAnswerName,t];
                  if (LTransValue <> LAnswerName) then
                  begin
                     if pos('+', LAnswerName) > 0 then
                     begin
                        LCSVHeader.Add(LTransValue);
                        Split(LAnswerName, '+', LFieldList);
                        for x := 0 to LFieldList.Count - 1 do
                        begin
                           LFieldList.Strings[x];
                           if LNewValue <> '' then
                              LNewValue := LNewValue + ' ';
                           LNewValue :=  LNewValue + GetFieldValue(ADataFor, LFieldList.Strings[x]);
                        end;
                        LCSVData.Add(LNewValue);
                     end
                     else
                     begin
                        LCSVHeader.Add(LTransValue);  // FieldTranslations.Translations[LAnswerName,t]);
                        LCSVData.Add(GetFieldValue(ADataFor,i));
                     end;
                  end;
               end; }
            end;
            NextRow(LDataFor);
         end;
      end;

      // this is for repeating party fields.
      LRepeatPartys.SaveRepeating(LAnswerSet,FieldTranslations, FAnswers);

      WriteAnswerFile(LAnswerSet);
   finally
      FreeAndNil(LRepeatPartys);
   end;
   Result := True;
end;

class function THotDocsMergeDocument.GetPropertyIndex(AProperty: String): THotDocsMergeProperties;
var
  i: THotDocsMergeProperties;
begin
  Result := Low(THotDocsMergeProperties);
  for i := Low(THotDocsMergeProperties) to High(THotDocsMergeProperties) do
  begin
    if(THotDocsPropertyNames[i] = AProperty) then
    begin
      Result := i;
      break;
    end;
  end;
end;

class function THotDocsMergeDocument.GetPropertyName(AProperty: Integer): String;
begin
  Result := THotDocsPropertyNames[THotDocsMergeProperties(AProperty)];
end;

class function THotDocsMergeDocument.GetPropertyValue(AProperty: Integer): Variant;
begin
  Result := THotDocsPropertyValues[THotDocsMergeProperties(AProperty)];
end;

class function THotDocsMergeDocument.GetPropertyValue(AProperty: String): Variant;
begin
  Result := THotDocsPropertyValues[GetPropertyIndex(AProperty)];
end;

class procedure THotDocsMergeDocument.LoadSettings();
var
  i: THotDocsMergeProperties;
begin
  for i := Low(THotDocsMergeProperties) to High(THotDocsMergeProperties) do
  begin
    case THotDocsPropertyTypes[i] of
      mptFilePath,
      mptPath,
      mptString:  THotDocsPropertyValues[i] := GlobalSettingLoadString (C_WKF,C_WORKFLOW,'HDM_' + THotDocsPropertyNames[i]);
      mptInteger: THotDocsPropertyValues[i] := GlobalSettingLoadInteger(C_WKF,C_WORKFLOW,'HDM_' + THotDocsPropertyNames[i]);
      mptBoolean: THotDocsPropertyValues[i] := GlobalSettingLoadBoolean(C_WKF,C_WORKFLOW,'HDM_' + THotDocsPropertyNames[i]);
    end;
  end;
end;

function THotDocsMergeDocument.MergeDocument: integer;
var
  LParam: String;
  LStartupInfo: TStartupInfo;
  LProcessInfo: TProcessInformation;
  LTemplatePath,
  LDocumentPath: String;

  // hd6
  LApp: THotDocs6Application;
  LAssembly: TAssembly;
begin
  Result := mrCancel;

  // get the template and document paths and create filenames and
  // destination directory.
  LTemplatePath := ParseMacros(THotDocsPropertyValues[hdTemplatesDir],NMatter);
  LDocumentPath := ParseMacros(THotDocsPropertyValues[hdSaveDestination],NMatter);

  if(UpperCase(ExpandUNCFileName(TemplatePath)) <> UpperCase(TemplatePath)) then
    TemplatePath := LTemplatePath + '\' + TemplatePath;
  if(UpperCase(ExpandUNCFileName(DocumentPath)) <> UpperCase(DocumentPath)) then
    DocumentPath := LDocumentPath + '\' + DocumentPath;

  DocumentPath := AddDocNumber(DocumentPath,DocumentNumber);

  ForceDirectories(ExtractFilePath(DocumentPath));

  // check to see if the template exists.
  if(not FileExists(TemplatePath)) then
  begin
    Forms.Application.BringToFront();
    MessageDlg('The template file ''' + TemplatePath + ''' does not exist and is required before a merge to HotDocs can take place.', mtError, [mbOK], 0);
    Exit;
  end;

  // check to see if the document file exists and ask for overwrite permission.
  if(FileExists(DocumentPath)) then
  begin
    LDocumentPath := DocumentPath;
    Forms.Application.BringToFront();
    case MessageDlg('The destination document file ''' + DocumentPath + ''' Already exists, do you want to specify a new filename?', mtConfirmation, [mbYES,mbNo,mbCancel], 0) of
      mrYes:  if(not GetNewDocument(LDocumentPath)) then
                Exit;
      mrCancel: Exit;
    end;
    DocumentPath := LDocumentPath;
  end;

  if(not Boolean(THotDocsPropertyValues[hd6Interface])) then
  begin

    // create the parameter string for hotdocs.
    LParam  := '"' + String(THotDocsPropertyValues[hdHotDocsLocation]) + '" ' +
               String(THotDocsPropertyValues[hdAnswerFileParam])   + '"' + DataFilePath + '" ' +
               String(THotDocsPropertyValues[hdTemplateFileParam]) + '"' + TemplatePath + '" ' +
               String(THotDocsPropertyValues[hdOutputFileParam])   + '"' + DocumentPath + '" ' +
                THotDocsPropertyValues[hdExtraParams];

  //  MessageDlg(LParam, mtWarning, [mbOK], 0);

    // execute hot docs and wait until its finished.
    ZeroMemory(@LStartupInfo, SizeOf(TStartupInfo));
    ZeroMemory(@LProcessInfo, SizeOf(TProcessInformation));
    LStartupInfo.cb := SizeOf(TStartupInfo);
    LStartupInfo.dwFlags := STARTF_USESHOWWINDOW;
    LStartupInfo.wShowWindow := SW_SHOWNORMAL;

    if(CreateProcess(nil,PChar(LParam),nil,nil,False,0,nil,nil,LStartupInfo,LProcessInfo)) then
    begin
      Result := WaitForProcessToFinish(ParentForm,LProcessInfo.hProcess,'Insight is waiting for HotDocs to write the document before it can continue!',DocumentPath)
    end else
    begin
      Forms.Application.BringToFront();
      MessageDlg('An error occured while trying to execute ''' + LParam + ''''#13#10 + Win32Error(), mtError, [mbOK], 0);
      Result := mrCancel;
    end;
  end
  else
  begin
    // new code to use the hotdocs 6 com interface.
    LApp      := THotDocs6Application.Create(nil);
    LAssembly := TAssembly.Create(nil);
    LAssembly.Connect;
    try
{    LParam  := '"' + String(THotDocsPropertyValues[hdHotDocsLocation]) + '" ' +
               String(THotDocsPropertyValues[hdAnswerFileParam])   + '"' + DataFilePath + '" ' +
               String(THotDocsPropertyValues[hdTemplateFileParam]) + '"' + TemplatePath + '" ' +
               String(THotDocsPropertyValues[hdOutputFileParam])   + '"' + DocumentPath + '" ' +
                THotDocsPropertyValues[hdExtraParams];
}
      LAssembly.TemplatePath            := TemplatePath;
      LAssembly.DocumentPath            := DocumentPath;
      LAssembly.OnAssemblyCompleteEvent := OnAssemblyCompleteEvent;
      LAssembly.OnErrorEvent            := OnAssemblyErrorEvent;
      LAssembly.OnPreSaveDocumentEvent  := OnAssemblyPreSaveDocumentEvent;
      LAssembly.OnUserInterfaceEvent    := OnAssemblyUserInterfaceEvent;
      LAssembly.UseAnswerFile(DataFilePath);
      LAssembly.CommandLine := THotDocsPropertyValues[hdExtraParams];

      FAssemblyComplete := False;
      LApp.Assemblies.Add(LAssembly.DefaultInterface);

      if(not FAssemblyComplete) then
        Result := WaitForHotDocsFinish(ParentForm,'Insight is waiting for HotDocs to complete assembling the document before it can continue!',FCompleteMessage)
      else
        Result := mrOk;

      if(Result = mrOk) and (FileExists(DocumentPath)) then
         ShellExecute(0,'open',PChar(DocumentPath),0,0,SW_SHOWNORMAL);
    finally
      LAssembly.Disconnect;
      FreeAndNil(LAssembly);
      FreeAndNil(LApp);
    end;
  end;
end;

class function THotDocsMergeDocument.NumberOfProperties: Integer;
begin
  Result := Length(THotDocsPropertyNames);
end;

class function THotDocsMergeDocument.PropertyType(AProperty: Integer): TMergePropertyType;
begin
  Result := THotDocsPropertyTypes[THotDocsMergeProperties(AProperty)];
end;

class function THotDocsMergeDocument.PropertyType(AProperty: String): TMergePropertyType;
begin
  Result := THotDocsPropertyTypes[GetPropertyIndex(AProperty)];
end;

class procedure THotDocsMergeDocument.SetPropertyValue(AProperty: Integer; AValue: Variant);
begin
  THotDocsPropertyValues[THotDocsMergeProperties(AProperty)] := AValue;
end;

class procedure THotDocsMergeDocument.SaveSettings();
var
  i: THotDocsMergeProperties;
begin
  for i := Low(THotDocsMergeProperties) to High(THotDocsMergeProperties) do
  begin
    case THotDocsPropertyTypes[i] of
      mptFilePath,
      mptPath,
      mptString:  SettingSave(C_WKF,C_WORKFLOW,'HDM_' + THotDocsPropertyNames[i], String(THotDocsPropertyValues[i]));
      mptInteger: SettingSave(C_WKF,C_WORKFLOW,'HDM_' + THotDocsPropertyNames[i], Integer(THotDocsPropertyValues[i]));
      mptBoolean: SettingSave(C_WKF,C_WORKFLOW,'HDM_' + THotDocsPropertyNames[i], Boolean(THotDocsPropertyValues[i]));
    end;
  end;
end;

class procedure THotDocsMergeDocument.SetPropertyValue(AProperty: String;
  AValue: Variant);
begin
  THotDocsPropertyValues[GetPropertyIndex(AProperty)] := AValue;
end;

class function THotDocsMergeDocument.Options: TMergeOptions;
begin
  Result := [moNeedsParties, moNeedsData, moNeedsTemplatePath,
    moNeedsDocumentPath, moNeedsDataFilePath, moSaveToDB, moNeedsFieldTranslate];
end;

function THotDocsMergeDocument.GetNewDocument(var ADocumentPath: String): Boolean;
var
  LDlg: TSaveDialog;
begin
  LDlg := TSaveDialog.Create(ParentForm);
  try
    LDlg.FileName := ADocumentPath;
    LDlg.Filter   := 'Document files (*.doc)|*.DOC|All files (*.*)|*.*';
    LDlg.FilterIndex := 1;
    LDlg.Title := 'Choose Document File Name';
    Result := LDlg.Execute;
    if(Result) then
      ADocumentPath := LDlg.FileName;
  finally
    LDlg.Free();
  end;
end;

procedure THotDocsMergeDocument.PostProcessAnswer(AAnswerSet: IXMLAnswerSetType; AAnswerName: String; ACustomFieldInfo: TCustomFieldInfo; AChangedDataValues: TCollection);
var
  LAnswer: IXMLAnswerType;
begin
  // find the answer in the xml..
  LAnswer := FindAnswer(AAnswerSet,AAnswerName);
  if(Assigned(LAnswer)) then
  begin
    // find data record and original value..
    FindOldValues(ACustomFieldInfo);

    // populate new values.
    case ACustomFieldInfo.FieldType[1] of
      C_FIELDTYPECURRENCY: ACustomFieldInfo.NewValueCurr := StrToCurr(LAnswer.NumValue);
      C_FIELDTYPEINTEGER : ACustomFieldInfo.NewValueInt  := StrToInt(LAnswer.NumValue);
      C_FIELDTYPEDATE    : ACustomFieldInfo.NewValueDate := StrToDate(LAnswer.DateValue);
    else
      ACustomFieldInfo.NewValueStr  := LAnswer.TextValue;
    end;

    // if different, add to list.
    if(ACustomFieldInfo.IsDiff) then
      ACustomFieldInfo.Duplicate(AChangedDataValues);
  end;
end;


procedure THotDocsMergeDocument.PostProcessRepeatAnswers(AAnswerSet: IXMLAnswerSetType; AAnswerName: String; ACustomFieldInfo: TCustomFieldInfo; AChangedDataValues: TCollection);
var
  LAnswer: IXMLAnswerType;
  LRepeat: IXMLRptValueType;
  LRptIndex: Integer;
begin
  FindOldValues(ACustomFieldInfo);
  // find the answer in the xml..
  LAnswer := FindAnswer(AAnswerSet,AAnswerName);
  if(Assigned(LAnswer)) then
  begin
    // row row row your boat jently down the stream
    LRepeat := LAnswer.RptValue;
    if(Assigned(LRepeat) and LRepeat.HasChildNodes) then
    begin
      // merrley merrley merrley
      LRptIndex := ACustomFieldInfo.PartyCounter - 1;

      case ACustomFieldInfo.FieldType[1] of
        C_FIELDTYPECURRENCY:
          begin
            if(LRepeat.NumValue.Count > LRptIndex) and (LRepeat.NumValue.Nodes[LRptIndex].Attributes[C_UNANS] <> C_UNANSTRUE) then
            begin
              ACustomFieldInfo.NewValueCurr := StrToCurr(LRepeat.NumValue.Nodes[LRptIndex].Text);
              if(ACustomFieldInfo.IsDiff) then
                ACustomFieldInfo.Duplicate(AChangedDataValues);
            end;
          end;
        C_FIELDTYPEINTEGER:
          begin
            if(LRepeat.NumValue.Count > LRptIndex) and (LRepeat.TextValue.Count > LRptIndex) and (LRepeat.NumValue.Nodes[LRptIndex].Attributes[C_UNANS] <> C_UNANSTRUE) then
            begin
              ACustomFieldInfo.NewValueCurr := StrToInt(LRepeat.NumValue.Nodes[LRptIndex].Text);
              if(ACustomFieldInfo.IsDiff) then
                ACustomFieldInfo.Duplicate(AChangedDataValues);
            end;
          end;
        C_FIELDTYPEDATE:
          begin
            if(LRepeat.DateValue.Count > LRptIndex) and (LRepeat.DateValue.Nodes[LRptIndex].Attributes[C_UNANS] <> C_UNANSTRUE) then
            begin
              ACustomFieldInfo.NewValueDate := StrToDate(LRepeat.DateValue.Nodes[LRptIndex].Text);
              if(ACustomFieldInfo.IsDiff) then
                ACustomFieldInfo.Duplicate(AChangedDataValues);
            end;
          end;
        else
          begin // text
            if(LRepeat.TextValue.Count > LRptIndex) and (LRepeat.TextValue.Nodes[LRptIndex].Attributes[C_UNANS] <> C_UNANSTRUE) then
            begin
              ACustomFieldInfo.NewValueStr := LRepeat.TextValue.Nodes[LRptIndex].Text;
              if(ACustomFieldInfo.IsDiff) then
                ACustomFieldInfo.Duplicate(AChangedDataValues);
            end;
          end;
      end; // the case
    end else
    begin
      case ACustomFieldInfo.FieldType[1] of
        C_FIELDTYPECURRENCY: ACustomFieldInfo.NewValueCurr := StrToCurr(LAnswer.NumValue);
        C_FIELDTYPEINTEGER : ACustomFieldInfo.NewValueInt  := StrToInt(LAnswer.NumValue);
        C_FIELDTYPEDATE    : ACustomFieldInfo.NewValueDate := StrToDate(LAnswer.DateValue);
      else
        ACustomFieldInfo.NewValueStr  := LAnswer.TextValue;
      end;

      // if different, add to list.
      if(ACustomFieldInfo.IsDiff) then
        ACustomFieldInfo.Duplicate(AChangedDataValues);
    end;
  end;
end;

// post processing goes through the answer file and using the data that
// is stored for this document creates a list of changed values. The changed
// values are only from custom data forms.
function THotDocsMergeDocument.PostProcess(AChangedDataValues: TCollection): boolean;
var
  LAnswerSet: IXMLAnswerSetType;
  i,t: Integer;
  LCustomFieldInfo: TCustomFieldInfo;
  LTableName, LAnswerName: String;
begin
  Result := True;
  if(FileAge(DataFilePath) <> FAnswerFileTimeStamp) then
  begin // answer file changed.

    // load answer file.
    LAnswerSet := LoadAnswerSet(DataFilePath);

    // check each custom field.
    for i := 0 to CustomFieldNames.Count - 1 do
    begin
      LCustomFieldInfo := TCustomFieldInfo(CustomFieldNames.Items[i]);

      // create the answer name from the field information.
      if (LCustomFieldInfo.SourceTable = dfParty) then
        LTableName := Trim(UpperCase(LCustomFieldInfo.PartyType)) + IntToStr(LCustomFieldInfo.PartyCounter)
      else
        LTableName := Trim(UpperCase(TDataForNames[LCustomFieldInfo.SourceTable]));

      LAnswerName  := LTableName + '_' + Trim(UpperCase(LCustomFieldInfo.LinkTable)) + '_' + Trim(UpperCase(LCustomFieldInfo.FieldName));
      LAnswerName := StringReplace(LAnswerName,' ','_',[rfReplaceAll]);

      PostProcessAnswer(LAnswerSet, LAnswerName, LCustomFieldInfo, AChangedDataValues);

      // translations here
      for t := 0 to FieldTranslations.TranslationCount[LAnswerName] - 1 do
        PostProcessAnswer(LAnswerSet, FieldTranslations.Translations[LAnswerName,t], LCustomFieldInfo, AChangedDataValues);

      // this second bit is for the repeated fields..... (party only)..
      if (LCustomFieldInfo.SourceTable = dfParty) then
      begin

        LTableName := Trim(UpperCase(LCustomFieldInfo.PartyType));

        LAnswerName  := LTableName + '_' + Trim(UpperCase(LCustomFieldInfo.LinkTable)) + '_' + Trim(UpperCase(LCustomFieldInfo.FieldName));
        LAnswerName := StringReplace(LAnswerName,' ','_',[rfReplaceAll]);

        PostProcessRepeatAnswers(LAnswerSet, LAnswerName, LCustomFieldInfo, AChangedDataValues);

        // translations here
        for t := 0 to FieldTranslations.TranslationCount[LAnswerName] - 1 do
          PostProcessAnswer(LAnswerSet, FieldTranslations.Translations[LAnswerName,t], LCustomFieldInfo, AChangedDataValues);
      end;

    end;
  end;

  if(THotDocsPropertyValues[hdReuseAnswerFile]) then
    ClearAnswer();

  // delete answer file.
  if(THotDocsPropertyValues[hdDeleteAnswerFile]) then
    DeleteFile(PChar(DataFilePath));
end;

// find from our data sets, the value that was exported and
// populate the custom field info.
procedure THotDocsMergeDocument.FindOldValues(ACustomFieldInfo: TCustomFieldInfo);
var
  LFieldName: String;
  procedure InternalGetVal();
  begin
    case ACustomFieldInfo.FieldType[1] of
      C_FIELDTYPECURRENCY: ACustomFieldInfo.OldValueCurr := GetFieldValueCurr(ACustomFieldInfo.SourceTable,LFieldName);
      C_FIELDTYPEINTEGER : ACustomFieldInfo.OldValueInt  := GetFieldValueInt(ACustomFieldInfo.SourceTable,LFieldName);
      C_FIELDTYPEDATE    : ACustomFieldInfo.OldValueDate := GetFieldValueDate(ACustomFieldInfo.SourceTable,LFieldName);
    else
           ACustomFieldInfo.OldValueStr  := GetFieldValue(ACustomFieldInfo.SourceTable,LFieldName);
    end;
  end;
begin
  ACustomFieldInfo.OldValueStr := '';
  ACustomFieldInfo.OldValueInt := 0;
  ACustomFieldInfo.OldValueCurr := 0;
  ACustomFieldInfo.OldValueDate := 0;

  LFieldName := Trim(UpperCase(ACustomFieldInfo.LinkTable)) + '_' + Trim(UpperCase(ACustomFieldInfo.FieldName));
  if(ACustomFieldInfo.SourceTable <> dfParty) then
  begin
    InternalGetVal();
    if(ACustomFieldInfo.SourceTable in [dfClient, dfAddressee]) then
      ACustomFieldInfo.PartyName := GetFieldValue(ACustomFieldInfo.SourceTable,'PARTYSEARCH')
    else
      ACustomFieldInfo.PartyName := GetFieldValue(ACustomFieldInfo.SourceTable,'FILEID')
  end else
  begin
    // find the data from party.
    FirstRow(ACustomFieldInfo.SourceTable);
    while(not Eof(ACustomFieldInfo.SourceTable)) do
    begin
      if(GetFieldValueInt(ACustomFieldInfo.SourceTable,'NNAME') = ACustomFieldInfo.NUnique) then
      begin
        InternalGetVal();
        ACustomFieldInfo.PartyName := GetFieldValue(ACustomFieldInfo.SourceTable,'PARTYSEARCH');
        Break;
      end;
      NextRow(ACustomFieldInfo.SourceTable);
    end;
  end;
end;

// find within the answer set the answer.
function THotDocsMergeDocument.FindAnswer(AAnswerSet: IXMLAnswerSetType; AAnswerName: String): IXMLAnswerType;
var
  i: Integer;
begin
  for i := 0 to AAnswerSet.Count - 1 do
  begin
    if(AAnswerSet.Answer[i].Name = AAnswerName) then
    begin
      Result := AAnswerSet.Answer[i];
      Exit;
    end;
  end;
  Result := nil;
end;


function THotDocsMergeDocument.GetNewAnswerDocument(
  var AAnswerPath: String): Boolean;
var
  LDlg: TSaveDialog;
begin
  LDlg := TSaveDialog.Create(ParentForm);
  try
    LDlg.FileName := AAnswerPath;
    LDlg.Filter   := 'Answer files (*.anx)|*.ANX|All files (*.*)|*.*';
    LDlg.FilterIndex := 1;
    LDlg.Title := 'Choose Answer File Name';
    Result := LDlg.Execute;
    if(Result) then
      AAnswerPath := LDlg.FileName;
  finally
    LDlg.Free();
  end;
end;

procedure THotDocsMergeDocument.ClearAnswer;
var
  LAnswerSet: IXMLAnswerSetType;
  LAnswer: IXMLAnswerType;
  i: Integer;
begin
// remove all axiom fields from the answer file and re-write.
  LAnswerSet := LoadAnswerSet(DataFilePath);

  for i := LAnswerSet.Count - 1 downto 0 do
  begin
    LAnswer := LAnswerSet.Answer[i];

    if(FAnswers.IndexOf(LAnswer.Name) > -1) then
      LAnswerSet.Delete(i);
  end;

  // write out..
  WriteAnswerFile(LAnswerSet);
end;

procedure THotDocsMergeDocument.WriteAnswerFile(AAnswerSet: IXMLAnswerSetType);
begin
  AAnswerSet.OwnerDocument.SaveToFile(DataFilePath);
  FAnswerFileTimeStamp := FileAge(DataFilePath);
end;

constructor THotDocsMergeDocument.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FAnswers := TStringList.Create();
  FCompleteMessage := RegisterWindowMessage('CM_AXIOMATION_WAITAPPEXIT');
end;

destructor THotDocsMergeDocument.Destroy;
begin
  FAnswers.Free();
  inherited;
end;

procedure THotDocsMergeDocument.OnAssemblyCompleteEvent(Sender: TObject);
begin
  FAssemblyComplete := True;
  PostMessage(fmWaitForAppStop.Handle,FCompleteMessage,0,WAIT_OBJECT_0 + 1); // complete ok.
end;

procedure THotDocsMergeDocument.OnAssemblyErrorEvent(Sender: TObject;
  errCode: Integer; var errMesg, override: OleVariant);
begin
  PostMessage(fmWaitForAppStop.Handle,FCompleteMessage,0,WAIT_OBJECT_0); // failure.
end;

procedure THotDocsMergeDocument.OnAssemblyPreSaveDocumentEvent(
  Sender: TObject; var pathName: OleVariant; outputType: HDOUTPUTTYPE;
  var showui, Aoverride: OleVariant);
begin
//
end;

procedure THotDocsMergeDocument.OnAssemblyUserInterfaceEvent(
  Sender: TObject; hdEvent: HDAUI; var Aoverride: OleVariant);
begin
//
end;

{ THotDocsRepeatField }

procedure THotDocsRepeatField.AddValue(AValue: String);
begin
  FValues.Add(AValue);
end;

constructor THotDocsRepeatField.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FValues := TStringList.Create();
end;

destructor THotDocsRepeatField.Destroy;
begin
  FValues.Free();
  inherited;
end;

function THotDocsRepeatField.GetValue(Index: Integer): String;
begin
  if(Index < FValues.Count) then
    Result := FValues[Index]
  else
    Result := '';
end;

function THotDocsRepeatField.GetValueCount: Integer;
begin
  Result := FValues.Count;
end;

procedure THotDocsRepeatField.CreateAnswer(var AAnswerSet: IXMLAnswerSetType; AAnswerName: String; AAnswers: TStringList);
var
  LAnswer: IXMLAnswerType;
  LRepeat: IXMLRptValueType;
  i: Integer;
begin
  AAnswers.Add(AAnswerName);
  LAnswer := AAnswerSet.Add();
  LAnswer.Name := AAnswerName;
  LRepeat := LAnswer.RptValue;

  for i := ValueCount - 1 downto 0 do
  begin
    case FFieldType of
      ftString: if (Value[i] = '') then
                  LRepeat.TextValue.Add('').Attributes[C_UNANS] := C_UNANSTRUE
                else
                  LRepeat.TextValue.Add(Value[i]);
      ftInteger:if (Value[i] = '') then
                  LRepeat.NumValue.Add('').Attributes[C_UNANS] := C_UNANSTRUE
                else
                  LRepeat.NumValue.Add(Value[i]);
      ftFloat:  if (Value[i] = '') then
                  LRepeat.NumValue.Add('').Attributes[C_UNANS] := C_UNANSTRUE
                else
                  LRepeat.NumValue.Add(Value[i]);
      ftDateTime,
      ftDate:   if (Value[i] = '') then
                  LRepeat.DateValue.Add('').Attributes[C_UNANS] := C_UNANSTRUE
                else
                  LRepeat.DateValue.Add(Value[i]);
    end;
  end;
end;

procedure THotDocsRepeatField.SaveRepeating(var AAnswerSet: IXMLAnswerSetType; APartyType: String; AFieldTranslations: TFieldTranslations; AAnswers: TStringList);
var
  i: Integer;
  LAnswerName: String;
begin
  LAnswerName := APartyType + '_' + FieldName;
  CreateAnswer(AAnswerSet,LAnswerName, AAnswers);

  for i := 0 to AFieldTranslations.TranslationCount[LAnswerName] - 1 do
    CreateAnswer(AAnswerSet,AFieldTranslations.Translations[LAnswerName,i], AAnswers);
end;

{ THotDocsRepeatingParty }

procedure THotDocsRepeatingParty.AddFieldValue(AField, AValue: String; AFieldType: TFieldType);
var
  LField: THotDocsRepeatField;
begin
  LField := Field[AField];
  if(not Assigned(LField)) then
  begin
    LField := THotDocsRepeatField(FFields.Add());
    LField.FieldName := AField;
    LField.FieldType := AFieldType;
  end;
  LField.AddValue(AValue);
end;

constructor THotDocsRepeatingParty.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FFields := TCollection.Create(THotDocsRepeatField);
end;

destructor THotDocsRepeatingParty.Destroy;
begin
  FFields.Free();
  inherited;
end;

function THotDocsRepeatingParty.GetField(AName: String): THotDocsRepeatField;
var
  i: Integer;
begin
  for i := 0 to FFields.Count - 1 do
  begin
    if(THotDocsRepeatField(FFields.Items[i]).FieldName = AName) then
    begin
      Result := THotDocsRepeatField(FFields.Items[i]);
      Exit;
    end;
  end;
  Result := nil;
end;

function THotDocsRepeatingParty.GetFieldCount: integer;
begin
  Result := FFields.Count;
end;


function THotDocsRepeatingParty.GetValue(AField: String;
  AValue: Integer): String;
var
  LField: THotDocsRepeatField;
begin
  LField := Field[AField];
  if(Assigned(LField)) then
    Result := LField.Value[AValue]
  else
    Result := '';
end;

function THotDocsRepeatingParty.GetValueCount(AField: String): Integer;
var
  LField: THotDocsRepeatField;
begin
  LField := Field[AField];
  if(Assigned(LField)) then
    Result := LField.ValueCount
  else
    Result := 0;
end;

procedure THotDocsRepeatingParty.SaveRepeating(var AAnswerSet: IXMLAnswerSetType; AFieldTranslations: TFieldTranslations; AAnswers: TStringList);
var
  i: Integer;
  LField: THotDocsRepeatField;
begin
  for i := 0 to FFields.Count - 1 do
  begin
    LField := THotDocsRepeatField(FFields.Items[i]);
    LField.SaveRepeating(AAnswerSet, PartyType, AFieldTranslations, AAnswers);
  end;
end;

{ THotDocsRepeatingParties }

procedure THotDocsRepeatingParties.AddFieldValue(APartyType, AField, AValue: String; AFieldType: TFieldType);
var
  LParty: THotDocsRepeatingParty;
  i: Integer;
begin
  for i := 0 to Count - 1 do
  begin
    LParty := THotDocsRepeatingParty(Items[i]);
    if(APartyType = LParty.PartyType) then
    begin
      LParty.AddFieldValue(AField,AValue, AFieldType);
      Exit;
    end;
  end;

  LParty := THotDocsRepeatingParty(Add());
  LParty.PartyType := APartyType;
  LParty.AddFieldValue(AField,AValue, AFieldType);
end;

constructor THotDocsRepeatingParties.Create;
begin
  inherited Create(THotDocsRepeatingParty);
end;

procedure THotDocsRepeatingParties.SaveRepeating(
  var AAnswerSet: IXMLAnswerSetType; AFieldTranslations: TFieldTranslations; AAnswers: TStringList);
var
  LParty: THotDocsRepeatingParty;
  i: Integer;

begin
  for i := 0 to Count - 1 do
  begin
    LParty := THotDocsRepeatingParty(Items[i]);
    LParty.SaveRepeating(AAnswerSet,AFieldTranslations, AAnswers);
  end;
end;



initialization
  RegisterWorkflowMergeType(THotDocsMergeDocument);
end.
