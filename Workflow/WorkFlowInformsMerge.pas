unit WorkFlowInformsMerge;


interface

uses Classes, SysUtils, db, Windows,VirtualTable,
     WorkFlowDocumentMerge, iLink_TLB;

const
  C_UNANS = 'unans';
  C_UNANSTRUE = 'true';
  C_UNANSFALSE = 'false';
  VARIANT_TRUE = -1;
  VARIANT_FALSE = 0;
type
  TInformsMergeProperties = (
    inSaveDestination,
    inInformPath);

  TInformsMergeDocument = class(TMergeDocument)
  private
    FAnswerFileTimeStamp: Integer;
    FAnswers: TStringList;
    FCompleteMessage: DWORD;
    FAssemblyComplete: Boolean;
    oInforms: TclsLink;
    FMatter: WideString;
    NUnique, NUnique2: Integer;
    FLinkTable,
    FFieldName: string;
//    class function GetPropertyIndex(AProperty: String): TInformsMergeProperties;
    procedure FindOldValues(ACustomFieldInfo: TCustomFieldInfo);


  protected
    function GenerateDataFile(): boolean; override;
    function MergeDocument(): integer;    override;
    procedure Writedata;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy(); override;
    function PostProcess(AChangedDataValues: TCollection): boolean; override;

    property LinkTable:     String    read  FLinkTable     write  FLinkTable;
    property FieldName:     String    read  FFieldName     write  FFieldName;

    class function ExportDescription(): String; override;
    class function Options(): TMergeOptions; override;

    class procedure LoadSettings(); override;
    class procedure SaveSettings(); override;

    class function NumberOfProperties(): Integer; override;
    class function PropertyType(AProperty: Integer): TMergePropertyType; override;
    class function PropertyType(AProperty: String): TMergePropertyType; override;
//    class function GetPropertyName(AProperty: Integer): String; override;
//    class function GetPropertyValue(AProperty: Integer): Variant; override;
//    class function GetPropertyValue(AProperty: String): Variant; override;
    class procedure SetPropertyValue(AProperty: Integer; AValue: Variant); override;
    class procedure SetPropertyValue(AProperty: String; AValue: Variant); override;

  end;


  TInformsRepeatingParties = class(TCollection)
  public
    constructor Create();
    procedure AddFieldValue(APartyType, AField, AValue: String; AFieldType: TFieldType);
  end;

function Win32Error(): String;

implementation

uses
  MiscFunc, Dialogs, ShellAPI, WaitFormAppStop, Controls,
  WorkFlowDataChangedDialog, Forms, AxiomData,
  ComObj, Variants, Word2000,
  WorkFlowDataModule;


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
{ TInformsMergeDocument }



class function TInformsMergeDocument.ExportDescription: String;
begin
  Result := 'Informs Precedents';
end;

function TInformsMergeDocument.GenerateDataFile: boolean;
var
   LDataFilePath,
   LFieldValue,
   LFieldName,
   LTableName:  String;
   LDataFor: TDataFor;
   LFileID, i,t, nRet: Integer;
   LFieldType: TFieldType;
   LRepeatPartys: TInformsRepeatingParties;
   s1,s2,s3,s4, LAnswerName: WideString;
begin
   Result := False;
   try
      for LDataFor := Low(TDataFor) to High(TDataFor) do
      begin
         FirstRow(LDataFor);
         while(not Eof(LDataFor)) do
         begin
            for i := 0 to GetFieldCount(LDataFor) - 1 do
            begin
               LFieldName   := Trim(UpperCase(GetFieldName(LDataFor,i)));
               if LFieldName = 'FILEID' then
               begin
                  s1 := GetFieldValue(LDataFor,i);
                  FMatter := s1;
                  NUnique := StrToInt(MatterString(s1,'NMATTER'));
               end;
               if LFieldName = 'TITLE' then
                  s2 := GetFieldValue(LDataFor,i);
               if LFieldName = 'SHORTDESCR' then
                  s3 := GetFieldValue(LDataFor,i);
            end;
            NextRow(LDataFor);
         end;
         s4 := dmAxiom.UserName;
      end;

      nRet := oInforms.OpenFile(s1,s2,s3,s4);
      case nRet of
         0: begin
               for LDataFor := Low(TDataFor) to High(TDataFor) do
               begin
                  FirstRow(LDataFor);
                  while(not Eof(LDataFor)) do
                  begin
                     for i := 0 to GetFieldCount(LDataFor) - 1 do
                     begin
                        LFieldName   := Trim(UpperCase(GetFieldName(LDataFor,i)));
                        LFieldType   := GetFieldTypeEx(LDataFor,i);

                        LFieldValue := Trim(GetFieldValue(LDataFor,i));
                        if (LDataFor in [dfParty, dfEmployee]) then
                           LTableName := Trim(UpperCase(GetFieldValue(LDataFor,'TYPE')))
                        else
                           LTableName := Trim(UpperCase(TDataForNames[LDataFor]));

                        LAnswerName  := LTableName + '_' + LFieldName;

                        oInforms.WriteRec(LAnswerName+ '|' + LFieldValue);

                        if(LDataFor = dfParty) then
                           LRepeatPartys.AddFieldValue(GetFieldValue(LDataFor,C_INTERNALPARTYTYPE),
                                                       LFieldName,LFieldValue,LFieldType);

                      // do the translations of this field.
                        for t := 0 to FieldTranslations.TranslationCount[LAnswerName] - 1 do
                           oInforms.WriteRec(FieldTranslations.Translations[LAnswerName,t]+ '|' + GetFieldValue(LDataFor,i));
                     end;
                     NextRow(LDataFor);
                  end;
               end;
            end;
         1: MsgErr('File Locked');
         2: MsgErr('Error');
      end;
    // this is for repeating party fields.
//    LRepeatPartys.SaveRepeating(LAnswerSet,FieldTranslations, FAnswers);

   finally
      FreeAndNil(LRepeatPartys);
      oInforms.SaveFile;
   end;
   Result := True;
end;

class procedure TInformsMergeDocument.LoadSettings;
begin
  // do nothing
end;

class function TInformsMergeDocument.NumberOfProperties: Integer;
begin
  Result := 0;
end;

class function TInformsMergeDocument.PropertyType(AProperty: Integer): TMergePropertyType;
begin
  Result := mptNone;
end;

class function TInformsMergeDocument.PropertyType(AProperty: String): TMergePropertyType;
begin
  Result := mptNone;
end;

class procedure TInformsMergeDocument.SetPropertyValue(AProperty: Integer;
  AValue: Variant);
begin
  // DO NOTHING
end;

class procedure TInformsMergeDocument.SaveSettings;
begin
  // do nothing.
end;

class procedure TInformsMergeDocument.SetPropertyValue(AProperty: String;
  AValue: Variant);
begin
// DO NOTHING.
end;

procedure TInformsMergeDocument.WriteData;
var
{  LNew: Boolean;
  Rec: widestring;
  s1,s2,s3,s4, LAnswerName: WideString;
  i, nRet: integer;
  VarRec: smallint;
  FieldValue: string;

  procedure SetInitialParams();
  begin
    dmWorkFlowDataModule.qTmp.ParamByName('nunique').AsInteger := NUnique;
    if(NUnique2 > 0) then
      dmWorkFlowDataModule.qTmp.ParamByName('nunique2').AsInteger := NUnique2;
    dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString := LinkTable;
    dmWorkFlowDataModule.qTmp.ParamByName('fieldname').AsString := FieldName;
  end;     }


   VarRec: smallint;
   i,a,t, nRet: integer;
   LNew: Boolean;
   FieldName, FieldValue: widestring;
   Rec: widestring;
   s1,s2,s3,s4, LAnswerName: WideString;
   LDataFor: TDataFor;
   LDataFilePath,
   LFieldValue,
   LFieldName,
   LTableName,LLinkTable:  String;
   LFieldType: TFieldType;
   LRepeatPartys: TInformsRepeatingParties;

   procedure SetInitialParams();
   begin
      dmWorkFlowDataModule.qTmp.ParamByName('nunique').AsInteger := NUnique;
      if(NUnique2 > 0) then
         dmWorkFlowDataModule.qTmp.ParamByName('nunique2').AsInteger := NUnique2;

      dmWorkFlowDataModule.qryDataform.Close;
      dmWorkFlowDataModule.qryDataform.ParamByName('nmatter').AsInteger := NUnique;
      dmWorkFlowDataModule.qryDataform.Open;
      if dmWorkFlowDataModule.qryDataform.FieldByName('Code').IsNull then
         dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString := 'INFORMS'
      else
      begin
         dmWorkFlowDataModule.qryDataformFields.Close;
         dmWorkFlowDataModule.qryDataformFields.ParamByName('dataform').AsString :=
                      dmWorkFlowDataModule.qryDataform.FieldByName('Code').AsString;
         dmWorkFlowDataModule.qryDataformFields.Open;
         while not dmWorkFlowDataModule.qryDataformFields.EOF do
         begin
            dmWorkFlowDataModule.qryTranslations.Close;
            dmWorkFlowDataModule.qryTranslations.ParamByName('workflowfield').AsString :=  Trim(LAnswerName);
//                      dmWorkFlowDataModule.qryDataformFields.FieldByName('fieldname').AsString;
            dmWorkFlowDataModule.qryTranslations.Open;
            While not dmWorkFlowDataModule.qryTranslations.EOF do
            begin
  //            if dmWorkFlowDataModule.qryTranslations.FieldByName('externalfield').AsString = FieldName then
//              begin
//                 dmWorkFlowDataModule.qTmp.ParamByName('fieldname').AsString :=
//                       dmWorkFlowDataModule.qryTranslations.FieldByName('workflowfield').AsString;
                 LLinkTable := dmWorkFlowDataModule.qryDataform.FieldByName('Code').AsString;
//                 dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString := dmWorkFlowDataModule.qryDataform.FieldByName('Code').AsString;
                 exit;
//              end ;
//               dmWorkFlowDataModule.qryTranslations.Next;
            end;
            dmWorkFlowDataModule.qryDataformFields.Next;
         end;
      end;
   end;
begin
{   nRet := oInforms.OpenFile(FMatter,s2,s3,s4);
   if nRet = 0 then
   begin
      for i := 1 to oInforms.NumRecs do
      begin
         VarRec := i;
         Rec := oInforms.ReadRec(VarRec);
         FieldName := Copy(string(Rec),0, AnsiPos('|',Rec)-1);
         FieldValue := Copy(String(Rec), AnsiPos('|',Rec)+1, (length(Rec) - AnsiPos('|',Rec)));
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

         dmWorkFlowDataModule.qTmp.ParamByName('textvalue').AsString := FieldValue;
         dmWorkFlowDataModule.qTmp.ParamByName('datevalue').Clear();
         dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').Clear();

{         case FieldType[1] of
           C_FIELDTYPEDATE    :  dmWorkFlowDataModule.qTmp.ParamByName('datevalue').AsDate := NewValueDate;
           C_FIELDTYPECURRENCY:  dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').AsCurrency := NewValueCurr;
           C_FIELDTYPEINTEGER :  dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').AsInteger := NewValueInt;
         end;

         dmWorkFlowDataModule.qTmp.ExecSQL();
      end;
   end;     }

   VarRec := 1;
   nRet := oInforms.OpenFile(FMatter,s2,s3,s4);
   if nRet = 0 then
   begin
      for i := 1 to oInforms.NumRecs do
      begin
         VarRec := i;
         Rec := oInforms.ReadRec(VarRec);
         FieldName := Copy(string(Rec),0, AnsiPos('|',Rec)-1);
         // first check to see if row exists..
         dmWorkFlowDataModule.qTmp.SQL.Clear();
         dmWorkFlowDataModule.qTmp.SQL.Add('SELECT COUNT(*) CNT FROM fieldtypelink WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');
         if(NUnique2 > 0) then
            dmWorkFlowDataModule.qTmp.SQL.Add('AND nunique2 = :nunique2');

         for LDataFor := Low(TDataFor) to High(TDataFor) do
               begin
                  FirstRow(LDataFor);
                  while(not Eof(LDataFor)) do
                  begin
                     for a := 0 to GetFieldCount(LDataFor) - 1 do
                     begin
                        LFieldName   := Trim(UpperCase(GetFieldName(LDataFor,a)));
                        LFieldType   := GetFieldTypeEx(LDataFor,a);

                        LFieldValue := Trim(GetFieldValue(LDataFor,a));
                        if (LDataFor in [dfParty, dfEmployee]) then
                           LTableName := Trim(UpperCase(GetFieldValue(LDataFor,'TYPE')))
                        else
                           LTableName := Trim(UpperCase(TDataForNames[LDataFor]));

                        LAnswerName  := LTableName + '_' + LFieldName;


                        if(LDataFor = dfParty) then
                           LRepeatPartys.AddFieldValue(GetFieldValue(LDataFor,C_INTERNALPARTYTYPE),
                                                       LFieldName,LFieldValue,LFieldType);

                      // do the translations of this field.
                        for t := 0 to FieldTranslations.TranslationCount[LAnswerName] - 1 do
                        begin
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

     //                   now set date, number and text as required.
                           FieldValue := Copy(String(Rec), AnsiPos('|',Rec)+1, (length(Rec) - AnsiPos('|',Rec)));
                           dmWorkFlowDataModule.qTmp.ParamByName('textvalue').AsString := lFieldValue;
                           dmWorkFlowDataModule.qTmp.ParamByName('datevalue').Clear();
                           dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').Clear();
                           dmWorkFlowDataModule.qTmp.ParamByName('fieldname').AsString := LFieldName;
                           dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString := LLinkTable;

                           if dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString <> '' then
                              dmWorkFlowDataModule.qTmp.ExecSQL();


    {                       dmWorkFlowDataModule.qTmp.SQL.Clear();
                           dmWorkFlowDataModule.qTmp.SQL.Add('UPDATE fieldtypelink SET');
                           dmWorkFlowDataModule.qTmp.SQL.Add('textvalue = :textvalue, datevalue = :datevalue, modified = SYSDATE, numbervalue = :numbervalue');
                           dmWorkFlowDataModule.qTmp.SQL.Add('WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');
                           if(NUnique2 > 0) then
                              dmWorkFlowDataModule.qTmp.SQL.Add('AND nunique2 = :nunique2');

                           FieldValue := Copy(String(Rec), AnsiPos('|',Rec)+1, (length(Rec) - AnsiPos('|',Rec)));
                           dmWorkFlowDataModule.qTmp.ParamByName('textvalue').AsString := LFieldValue;
                           dmWorkFlowDataModule.qTmp.ParamByName('datevalue').Clear();
                           dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').Clear();
                           dmWorkFlowDataModule.qTmp.ParamByName('fieldname').AsString := LFieldName;
                           dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString := LLinkTable;
                           if dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString <> '' then
                              dmWorkFlowDataModule.qTmp.ExecSQL();
                           // if no rwos updated, then its an insert
                           if dmWorkFlowDataModule.qTmp.RowsAffected = -1 then
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
                              FieldValue := Copy(String(Rec), AnsiPos('|',Rec)+1, (length(Rec) - AnsiPos('|',Rec)));
                              dmWorkFlowDataModule.qTmp.ParamByName('textvalue').AsString := FieldValue;
                              dmWorkFlowDataModule.qTmp.ParamByName('datevalue').Clear();
                              dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').Clear();

                              if dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString <> '' then
                                 dmWorkFlowDataModule.qTmp.ExecSQL();     }
                           end;
                           eXIT;
                        end;
                     end;
                     NextRow(LDataFor);
                  end;
               end;


//         SetInitialParams();

{         dmWorkFlowDataModule.qTmp.Open();
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
         FieldValue := Copy(String(Rec), AnsiPos('|',Rec)+1, (length(Rec) - AnsiPos('|',Rec)));
         dmWorkFlowDataModule.qTmp.ParamByName('textvalue').AsString := FieldValue;
         dmWorkFlowDataModule.qTmp.ParamByName('datevalue').Clear();
         dmWorkFlowDataModule.qTmp.ParamByName('numbervalue').Clear();

         if dmWorkFlowDataModule.qTmp.ParamByName('linktable').AsString <> '' then
            dmWorkFlowDataModule.qTmp.ExecSQL();    }
//      end;
   end;
end;

function TInformsMergeDocument.MergeDocument: integer;
var
   varWord, varDoc : Variant;
begin
   Result := mrCancel;
   try
      varWord := GetActiveOleObject('Word.Application');
   except
      on EOleSysError do
      begin
         try
            varWord := CreateOleObject('Word.Application');
         except
            on e: Exception do
            begin
               MessageDlg('Error Starting MS Word: ' + E.Message, mtError, [mbOK], 0);
               varWord := null;
            end;
         end;
      end;
   end;
   if(not VarIsNull(varWord)) then
   begin
      try
         varWord.Visible := True;
         varDoc := varWord.Documents.Add(TemplatePath);  //DocumentPath);
         varDoc.BuiltIndocumentProperties(wdPropertyCategory) := FMatter;
         try
            varWord.Run('Process');
            Result := mrOk;
            WriteData;

            if(not DirectoryExists(ExtractFilePath(DocumentPath))) then
               CreateDir(ExtractFilePath(DocumentPath));

            varDoc.SaveAs(DocumentPath);
         except
            on E: Exception do
               MessageDlg('Error during Merge with MS Word: ' + E.Message, mtError, [mbOK], 0);
         end;
      except
         on E: Exception do
            MessageDlg('Error during Merge with MS Word: ' + E.Message, mtError, [mbOK], 0);
      end;
   end;
end;

class function TInformsMergeDocument.Options: TMergeOptions;
begin
  Result := [moNeedsParties, moNeedsData, moNeedsTemplatePath,
      moNeedsDocumentPath, moSaveToDB, moNeedsFieldTranslate];
end;


// find from our data sets, the value that was exported and
// populate the custom field info.
procedure TInformsMergeDocument.FindOldValues(ACustomFieldInfo: TCustomFieldInfo);
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

constructor TInformsMergeDocument.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FAnswers := TStringList.Create();
  FCompleteMessage := RegisterWindowMessage('CM_AXIOMATION_WAITAPPEXIT');
  oInforms := TclsLink.Create(Application);
end;

destructor TInformsMergeDocument.Destroy;
begin
  FAnswers.Free();
  inherited;
end;

function TInformsMergeDocument.PostProcess(AChangedDataValues: TCollection): boolean;
begin
  Result := True;
end;


procedure TInformsRepeatingParties.AddFieldValue(APartyType, AField, AValue: String; AFieldType: TFieldType);
var
//  LParty: TInformsRepeatingParty;
  i: Integer;
begin
{  for i := 0 to Count - 1 do
  begin
    LParty := TInformsRepeatingParty(Items[i]);
    if(APartyType = LParty.PartyType) then
    begin
      LParty.AddFieldValue(AField,AValue, AFieldType);
      Exit;
    end;
  end;

  LParty := TInformsRepeatingParty(Add());
  LParty.PartyType := APartyType;
  LParty.AddFieldValue(AField,AValue, AFieldType); }
end;

constructor TInformsRepeatingParties.Create;
begin
//  inherited Create(TInformsRepeatingParty);
end;

{procedure TInformsRepeatingParties.SaveRepeating(
  var AAnswerSet: IXMLAnswerSetType; AFieldTranslations: TFieldTranslations; AAnswers: TStringList);
var
  LParty: TInformsRepeatingParty;
  i: Integer;

begin
  for i := 0 to Count - 1 do
  begin
    LParty := TInformsRepeatingParty(Items[i]);
    LParty.SaveRepeating(AAnswerSet,AFieldTranslations, AAnswers);
  end;
end;   }



initialization
  RegisterWorkflowMergeType(TInformsMergeDocument);

end.
