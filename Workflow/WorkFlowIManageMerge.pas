unit WorkFlowIManageMerge;

interface

uses WorkFlowDocumentMerge,WorkFlowMergeDocument,
  Classes, SysUtils;

const
     CUSTOMPROPS: array[0..11] of string = ('MatterNo','DocID','Prec_Category','Prec_Classification','Doc_Keywords','Doc_Precedent','Doc_FileName','Doc_Author','Saved_in_DB', 'Doc_Title','Portal_Access','Version');

type
  // use this as a basic template for creating new merge types.
  TIManageMergeDocument = class(TMergeDocument)
  private
    LCategory: String;

  protected
    function GenerateDataFile(): boolean; override;
    function MergeDocument(): Integer;    override;
  public
    function PostProcess(AChangedDataValues: TCollection): boolean; override;
    class function ExportDescription(): String; override;
    class function Options(): TMergeOptions; override;

    class procedure LoadSettings(); override;
    class procedure SaveSettings(); override;

    class function NumberOfProperties(): Integer; override;
    class function PropertyType(AProperty: Integer): TMergePropertyType;    overload; override;
    class function PropertyType(AProperty: String): TMergePropertyType;     overload; override;
    class function GetPropertyName(AProperty: Integer): String; override;
    class function GetPropertyValue(AProperty: Integer): Variant; override;
    class function GetPropertyValue(AProperty: String): Variant; override;
    class procedure SetPropertyValue(AProperty: Integer; AValue: Variant); override;
    class procedure SetPropertyValue(AProperty: String; AValue: Variant); override;
  end;

implementation

uses
  Dialogs, ComObj, Variants, Word2000, Windows, MiscFunc, Controls,
  WorkFlowDataModule, ActiveX, Office2000, DocDescription, AxiomData;


  { TIManageMergeDocument }

class function TIManageMergeDocument.ExportDescription: String;
begin
  Result := 'IManage/Filesite Mail-Merge';
end;

function TIManageMergeDocument.GenerateDataFile(): boolean;
var
   LOutput: TextFile;
   LCSVHeader,
   LCSVData: TStringList;
   df: TDataFor;
   AMultiCount, AMultiRelation: integer;


   procedure DataSetToCSV(ADataFor: TDataFor);
   var
      LTableName: String;
      i,t, x: Integer;
      LAnswerName, LThrougCategory: String;
      bThrough:  boolean;

   begin
      if (ADataFor in [dfParty, dfEmployee, dfActing]) then
      begin
         bThrough := False;
         for x := 0 to GetFieldCount(ADataFor) - 1 do
         begin
            if (not bThrough) then
            begin
               if (Trim(UpperCase(GetFieldName(ADataFor,x))) = 'THROUGHNAME')  then
                  bThrough := True;
            end;
         end;
         if bThrough then
         begin
            if(LCategory <> Trim(UpperCase(GetFieldValue(ADataFor,'CATEGORY')))) then
            begin
               AMultiRelation := 1;
               LCategory := Trim(UpperCase(GetFieldValue(ADataFor,'CATEGORY')));
            end
            else
               inc(AMultiRelation);
            LTableName := Trim(UpperCase(GetFieldValue(ADataFor,'CATEGORY'))) + IntToStr(AMultiRelation);
            LThrougCategory := Trim(UpperCase(GetFieldValue(ADataFor,'THROUGHCATEGORY')));
         end
         else
           if (ADataFor in [dfParty, dfEmployee]) then
              try
                 LTableName := Trim(UpperCase(GetFieldValue(ADataFor,'TYPE')));
              except
                 LTableName := 'Unknown';
              end;
      end
      else
      begin
         LTableName := Trim(UpperCase(TDataForNames[ADataFor]));
         if LTableName = 'MULTICLIENT' then
         begin
            inc(AMultiCount);

            LTableName := LTableName + IntToStr(AMultiCount);
         end;
      end;

      for i := 0 to GetFieldCount(ADataFor) - 1 do
      begin
         if bThrough then
            LAnswerName := LTableName + '_' + LThrougCategory + '_' + Trim(UpperCase(GetFieldName(ADataFor,i)))
         else
            LAnswerName := LTableName + '_' + Trim(UpperCase(GetFieldName(ADataFor,i)));

         LCSVHeader.Add(LAnswerName);
         LCSVData.Add(GetFieldValue(ADataFor,i));

         // do the translations of this field.
         for t := 0 to FieldTranslations.TranslationCount[LAnswerName] - 1 do
         begin
            LCSVHeader.Add(FieldTranslations.Translations[LAnswerName,t]);
            LCSVData.Add(GetFieldValue(ADataFor,i));
         end;
      end;
   end;

begin
   try
      AssignFile(LOutput,DataFilePath);
      Rewrite(LOutput);
      LCSVHeader := TStringList.Create();
      LCSVData   := TStringList.Create();
      AMultiCount := 0;
      AMultiRelation := 0;
      try
       for df := Low(TDataFor) to High(TDataFor) do
       begin
          FirstRow(df);

          while(not Eof(df)) do
          begin
             DataSetToCSV(df);
             NextRow(df);
          end;
       end;
       WriteLn(LOutPut,LCSVHeader.CommaText);
       WriteLn(LOutPut,LCSVData.CommaText);
      finally
       CloseFile(LOutput);
       FreeAndNil(LCSVData);
       FreeAndNil(LCSVHeader);
      end;
      Result := True;
   except
      on E: EInOutError do
      begin
         if(E.ErrorCode = 32) then
            raise Exception.Create('Permissions Error whilst attempting to Create File ' + DataFilePath)
         else
            raise;
      end;
   end;
end;

class function TIManageMergeDocument.GetPropertyName(AProperty: Integer): String;
begin
  Result := 'NONE';
end;

class function TIManageMergeDocument.GetPropertyValue(AProperty: Integer): Variant;
begin
  Result := NULL;
end;

class function TIManageMergeDocument.GetPropertyValue(
  AProperty: String): Variant;
begin
  Result := NULL;
end;

class procedure TIManageMergeDocument.LoadSettings;
begin
  // do nothing
end;

function TIManageMergeDocument.MergeDocument(): Integer;
var
  varWord, varDoc, varDoc1, varDocs, wrdSelection : Variant;
  DocName, DocName1, AVersion: string;
//  olevDoc, olevNewTemp, olevFormat: OleVariant;
   i, MaxDoc: integer;
   FMacro: string;
   PropValues: TStrings;
   x, ncat, nclass: integer;
   ADocID, AKeyWords, APrecDetails, SavedInDB, APropValue: string;
   AFileID, tmpFileName, AExt: string;
   DocProps, Item, CustomDocProps, Value: OleVariant;
   OLEvar, PropName: OleVariant;
   ADocumentPath: OleVariant;
   LPrecID, LCatID: string;
begin
   Result := mrCancel;
   varDoc := null;
try
//     We want to name document prior to anything happening
      if SystemString('doc_prompt_descr') = 'Y' then
      begin
         try
            frmDocumentDescription := TfrmDocumentDescription.Create(nil);
            frmDocumentDescription.edDocDescription.Text := TemplateName;
            frmDocumentDescription.edDocDescription.SelStart := Length(TemplateName) + 1;
            if frmDocumentDescription.ShowModal = mrOk then
            begin
               tmpFileName := SystemString('DOC_DEFAULT_DIRECTORY');
               AExt := ExtractFileExt(tmpFileName);

               tmpFileName := Copy (tmpFileName,1, Length(tmpFileName)- Length(AExt));

               ADocumentPath := ParseMacros(DocumentPath, NMatter, -1, frmDocumentDescription.edDocDescription.Text );

               DocumentDescr := frmDocumentDescription.edDocDescription.Text;
            end
            else
               ADocumentPath := DocumentPath;
         finally
            frmDocumentDescription.Free;
         end;
      end
      else
         ADocumentPath := DocumentPath;

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
         varDoc := varWord.Documents.Add(TemplatePath);
         varDocs := varWord.Documents;
         wrdSelection := varWord.Selection;
         varDocs.Application.Activate;
         varDoc.Activewindow.WindowState := wdWindowStateMaximize;
         try
            varDoc.MailMerge.OpenDataSource(DataFilePath,,True);
            varDoc.MailMerge.Destination := wdSendToNewDocument;
            varDoc.MailMerge.Execute();
            varDoc.Saved := True;
            varDoc.Close(wdDoNotSaveChanges);

            varWord.Documents.Item(1).Activate;

            varDoc := varWord.ActiveDocument;
            varDoc.Activewindow.WindowState := wdWindowStateMaximize;

   {         varWord.ActiveDocument.Fields.Update;          }

//**********************************************************


            AFileID := MatterString(NMatter, 'FILEID');
            PropName := 'MatterNo';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, AFileID, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := AFileID;
            end;

            dmAxiom.qryGetSeq.ExecSQL;
            ADocID := dmAxiom.qryGetSeq.FieldByName('nextdoc').AsString;
            DocDocID := StrToInt(ADocID);

            PropName := 'DocID';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, DocDocID, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := DocDocID;
            end;

            PropName := 'Doc_Title';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, DocumentDescr, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := DocumentDescr;
            end;

            try
               varDoc.BuiltInDocumentProperties[1].Value := DocumentDescr;
            except
            //
            end;

            APropValue := MatterString(NMatter, 'TYPE');
            PropName := 'Matter_Type';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, APropValue, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := APropValue;
            end;

            APropValue := '';
            APropValue := MatterString(NMatter, 'AUTHOR');
            PropName := 'Matter_Author';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, APropValue, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := APropValue;
            end;

            APropValue := '';
            APropValue := MatterString(NMatter, 'OPERATOR');
            PropName := 'Matter_Operator';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, APropValue, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := APropValue;
            end;

            APropValue := '';
            LPrecID := TableString('WORKFLOWDOCTEMPLATES','DOCID',DocumentID , 'NPRECCLASSIFICATION');
            APropValue := TableString('PRECCLASSIFICATION','NPRECCLASSIFICATION', LPrecID, 'DESCR');
            if APropValue = '' then
               APropValue := TableString('PRECCLASSIFICATION','NPRECCLASSIFICATION', SystemString('DOC_DFLT_CLASSIFICATION'), 'DESCR');
            PropName := 'Prec_Classification';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, APropValue, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := APropValue;
            end;

            APropValue := '';
            LCatID := TableString('WORKFLOWDOCTEMPLATES','DOCID',DocumentID, 'NPRECCATEGORY');
            APropValue := TableString('PRECCATEGORY','NPRECCATEGORY', LCatID, 'DESCR');;
            if APropValue = '' then
               APropValue := TableString('PRECCATEGORY','NPRECCATEGORY', SystemString('DOC_DFLT_CATEGORY'), 'DESCR');
            PropName := 'Prec_Category';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, APropValue, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := APropValue;
            end;

            APropValue := ''; 
            APropValue := LPrecID;
            if APropValue = '' then
               APropValue := SystemString('DOC_DFLT_CLASSIFICATION');
            PropName := 'Prec_Classification_ID';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, APropValue, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := APropValue;
            end;

            APropValue := '';
            APropValue := LCatID;
            if APropValue = '' then
               APropValue := SystemString('DOC_DFLT_CATEGORY');
            PropName := 'Prec_Category_ID';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, APropValue, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := APropValue;
            end;

         //*********************************************************/
            FMacro := SystemString('WORD_SAVE_MACRO');
            if FMacro <> '' then varWord.Run(FMacro);

{
            if(not DirectoryExists(ExtractFilePath(ADocumentPath))) then
               ForceDirectories(ExtractFilePath(ADocumentPath));

            varDoc.SaveAs(ADocumentPath);
}
            Result := mrOk;
        except
           on E: Exception do
              MessageDlg('Error during MailMerge with MS Word: ' + E.Message, mtError, [mbOK], 0);
        end;
      except
         on E: Exception do
          MessageDlg('Error during MailMerge with MS Word: ' + E.Message, mtError, [mbOK], 0);
      end;
   end;
end;

class function TIManageMergeDocument.NumberOfProperties: Integer;
begin
  Result := 0;
end;

class function TIManageMergeDocument.PropertyType(AProperty: Integer): TMergePropertyType;
begin
  Result := mptNone;
end;

class function TIManageMergeDocument.PropertyType(AProperty: String): TMergePropertyType;
begin
  Result := mptNone;
end;

class procedure TIManageMergeDocument.SetPropertyValue(AProperty: Integer;
  AValue: Variant);
begin
  // DO NOTHING
end;

class procedure TIManageMergeDocument.SaveSettings;
begin
  // do nothing.
end;

class procedure TIManageMergeDocument.SetPropertyValue(AProperty: String;
  AValue: Variant);
begin
// DO NOTHING.
end;

class function TIManageMergeDocument.Options: TMergeOptions;
begin
  Result := [moCheckTemplateExists, moNeedsParties, moNeedsData, moNeedsTemplatePath,
             moNeedsDocumentPath, moNeedsDataFilePath, moSaveToDB, moNeedsFieldTranslate];
end;

function TIManageMergeDocument.PostProcess(AChangedDataValues: TCollection): boolean;
begin
  Result := True;
end;


initialization
  // register TIManageMergeDocument as a merge type.
  RegisterWorkflowMergeType(TIManageMergeDocument);

end.
