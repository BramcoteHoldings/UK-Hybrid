unit MSWordMerge;

interface

uses WorkFlowDocumentMerge, WorkFlowMergeDocument, Classes, SysUtils, Data.DB;

const
     CUSTOMPROPS: array[0..11] of string = ('MatterNo','DocID','Prec_Category','Prec_Classification','Doc_Keywords','Doc_Precedent','Doc_FileName','Doc_Author','Saved_in_DB', 'Doc_Title','Portal_Access','Version');

type
  TMSWordMergeProperties = (
    msSaveInDb);

type
  // use this as a basic template for creating new merge types.
  TWordMergeDocument = class(TMergeDocument)
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
  WorkFlowDataModule, ActiveX, Office2000, DocDescription, AxiomData,
  WorkFlowDataModuleMerge;


  { TWordMergeDocument }
var
   TMSWordPropertyNames: array  [TMSWordMergeProperties] of String =
    ('Save To Db');

   TMSWordPropertyTypes: array  [TMSWordMergeProperties] of TMergePropertyType =
    (mptBoolean);

   TMSWordPropertyValues: array [TMSWordMergeProperties] of Variant;

class function TWordMergeDocument.ExportDescription: String;
begin
  Result := 'Generic MS-Word Mail-Merge';
end;

function TWordMergeDocument.GenerateDataFile(): boolean;
var
   LOutput,
   LOutPutFormat: TextFile;
   LCSVHeader,
   LCSVData,
   LFieldList: TStringList;
   df: TDataFor;
   AMultiCount,
   AMultiRelation: integer;
   AFileName,
   AFilePath,
   AExt,
   FmtDataFilePath,
   LTransValue,
   LDataValue,
   LNewValue: string;
   LField: TField;

   procedure DataSetToCSV(ADataFor: TDataFor);
   var
      LTableName: String;
      i,t, x: Integer;
      LAnswerName, LThrougCategory: String;
      bThrough:  boolean;

   begin
      if (ADataFor in [dfEmployeeRates]) then
      begin
         LTableName := Trim(UpperCase(TDataForNames[ADataFor])) + '_' + GetFieldValue(ADataFor,i);
      end
      else if (ADataFor in [dfParty, dfEmployee, dfActing, dfEmployeeRates]) then
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
            LAnswerName := stringreplace(LTableName, ' ', '_', [rfReplaceAll, rfIgnoreCase]) + '_' + LThrougCategory + '_' + Trim(UpperCase(GetFieldName(ADataFor,i)))
         else
            LAnswerName := stringreplace(LTableName, ' ', '_', [rfReplaceAll, rfIgnoreCase]) + '_' + Trim(UpperCase(GetFieldName(ADataFor,i)));

         LCSVHeader.Add(LAnswerName);
         LCSVData.Add(GetFieldValue(ADataFor,i));

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
                              ' values ('+quotedstr(LAnswerName)+','+quotedstr(LAnswerName)+','+quotedstr(LDataValue)+')';
                  ExecSQL;
               end;
            end
            else
            begin
               LDataValue := '';
               LDataValue := GetFieldValue(ADataFor,i);
               with dmAxiom.qryTmp do
               begin
                  Close;
                  SQL.Text := 'update WORKFLOWFIELDTRANSLATE set SAMPLE_DATA = ' +
                               quotedstr(LDataValue)+ ' where WORKFLOWFIELD = '+ quotedstr(LAnswerName);
                  ExecSQL;
               end;
            end;
         end;

         WriteLn(LOutPutFormat, LAnswerName + ' , ' + GetFieldValue(ADataFor,i));

         // do the translations of this field.
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
                  LDataValue := GetFieldValue(ADataFor,i);
                  LCSVData.Add(LDataValue);

                  with dmAxiom.qryTmp3 do
                  begin
                     Close;
                     SQL.Text := 'select EXTERNALFIELD from WORKFLOWFIELDTRANSLATE where EXTERNALFIELD = '+quotedstr(LTransValue);
                     Open;
                     if (Eof = True) then
                     begin
                        with dmAxiom.qryTmp do
                        begin
                           Close;
                           SQL.Text := 'insert into WORKFLOWFIELDTRANSLATE(WORKFLOWFIELD,EXTERNALFIELD,SAMPLE_DATA )'+
                                       ' values ('+quotedstr(LAnswerName)+','+quotedstr(LTransValue)+','+quotedstr(LDataValue)+')';
                           ExecSQL;
                        end;
                     end
                     else
                     begin
                        LDataValue := '';
                        LDataValue := GetFieldValue(ADataFor,i);
                        with dmAxiom.qryTmp do
                        begin
                           Close;
                           SQL.Text := 'update WORKFLOWFIELDTRANSLATE set SAMPLE_DATA = ' +
                                        quotedstr(LDataValue)+ ' where WORKFLOWFIELD = '+ quotedstr(LTransValue);
                           ExecSQL;
                        end;
                     end;
                  end;
               end;
            end;
         end;
      end;
   end;

begin
   try
      AFileName := ExtractFileName(DataFilePath);
      AFilePath := ExtractFilePath(DataFilePath);
      AExt      := ExtractFileExt(DataFilePath);

      FmtDataFilePath := Copy(DataFilePath,1, Length(DataFilePath)- Length(AExt)) + '.txt';

      // need to check if directory exists otherwise create
      if(not DirectoryExists(ExtractFilePath(DataFilePath))) then
         ForceDirectories(ExtractFilePath(DataFilePath));

      AssignFile(LOutput,DataFilePath);
      AssignFile(LOutPutFormat,FmtDataFilePath);
      
      Rewrite(LOutput);
      Rewrite(LOutPutFormat);

      LCSVHeader := TStringList.Create();
      LCSVData   := TStringList.Create();
      LFieldList := TStringList.Create();
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
         CloseFile(LOutPutFormat);
         FreeAndNil(LCSVData);
         FreeAndNil(LCSVHeader);
         FreeAndNil(LFieldList);
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

class function TWordMergeDocument.GetPropertyName(AProperty: Integer): String;
begin
  Result := 'NONE';
end;

class function TWordMergeDocument.GetPropertyValue(AProperty: Integer): Variant;
begin
  Result := NULL;
end;

class function TWordMergeDocument.GetPropertyValue(
  AProperty: String): Variant;
begin
  Result := NULL;
end;

class procedure TWordMergeDocument.LoadSettings;
var
  i: TMSWordMergeProperties;
begin
  for i := Low(TMSWordMergeProperties) to High(TMSWordMergeProperties) do
  begin
    case TMSWordPropertyTypes[i] of
      mptBoolean: TMSWordPropertyValues[i] := GlobalSettingLoadBoolean(C_WKF,C_WORKFLOW,'MWD_' + TMSWordPropertyNames[i]);
    end;
  end;
end;

function TWordMergeDocument.MergeDocument(): Integer;
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
   WordOpen: boolean;
begin
   Result := mrCancel;
   varDoc := null;
//   try
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
               if AExt = '' then
               begin
                  AExt := '.' + SystemString('DEFAULT_DOC_EXT');
                  tmpFileName := tmpFileName + AExt;
               end;

               tmpFileName := Copy (tmpFileName,1, Length(tmpFileName)- Length(AExt));

               ADocumentPath := ParseMacros(DocumentPath, NMatter, -1, frmDocumentDescription.edDocDescription.Text );
               // if default directory has no hint re document name we assume value entered becomes doc name
{               if AExt = '' then
               begin
                  ADocumentPath := ADocumentPath + '\' + frmDocumentDescription.cxTextEdit1.Text;
                  AExt := SystemString('DEFAULT_DOC_EXT');
                  ADocumentPath := ADocumentPath + '.' + AExt;
                  DocumentPath := ADocumentPath;
               end
               else
               begin
                  ADocumentPath := ADocumentPath + '_' + frmDocumentDescription.cxTextEdit1.Text;
                  ADocumentPath := ADocumentPath + AExt;
                  DocumentPath := ADocumentPath;
               end;}
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

   WordOpen := False;
   if IsObjectActive('Word.Application') = False then
   begin
      varWord := CreateOleObject('Word.Application');
      Sleep(200);
   end
   else
   begin
      varWord := GetActiveOleObject('Word.Application');
      WordOpen := True;
   end;

{   try
      varWord := GetActiveOleObject('Word.Application');
   except
      on EOleSysError do
      begin
         try
            varWord := CreateOleObject('Word.Application');
            Sleep(200);
         except
            on e: Exception do
            begin
               MessageDlg('Error Starting MS Word: ' + E.Message, mtError, [mbOK], 0);
               varWord := null;
            end;
         end;
      end;
   end; }

   if (VarIsNull(varWord)= False) then
   begin
      try
         varWord.Visible := True;
         varDoc := varWord.Documents.Open(TemplatePath);
         varDocs := varWord.Documents;
         Sleep(200);
         wrdSelection := varWord.Selection;
         varDocs.Application.Activate;
         Sleep(200);
         varDoc.Activewindow.WindowState := wdWindowStateMaximize;
         try
            varDoc.MailMerge.OpenDataSource(DataFilePath,True);
            Sleep(200);
            varDoc.MailMerge.Destination := wdSendToNewDocument;
            Sleep(200);
            varDoc.MailMerge.Execute();
            varDoc.Saved := True;
            varDoc.Close(wdDoNotSaveChanges);

//            If varWord.Documents.Count >= 1 Then
//            begin
//               MaxDoc := varWord.Documents.Count;
//               varDoc1 := varWord.Documents.Item(1);
//               DocName := AnsiString(varDoc1.Name);
//               varWord.Documents.Item(1).Activate;
//               varWord.Documents.Item(MaxDoc).Activate;
               {
               for i := 1 to varWord.Documents.Count do
               begin
                  varDoc1 := varWord.Documents.Item(i);
                  DocName := AnsiString(varDoc1.Name);
                  if DocName = DocName1 then
                  begin
                     varWord.Documents.Item(i).Activate;
                     exit;
                  end;
               end; }
//            end;
            varWord.Documents.Item(1).Activate;

            varDoc := varWord.ActiveDocument;
            varDoc.Activewindow.WindowState := wdWindowStateMaximize;

{
//*************************************************************

            // save document properties
            PropValues := TStringList.Create;

            AFileID := MatterString(NMatter, 'FILEID');
            PropValues.Add(AFileID);

            dmAxiom.qryGetSeq.ExecSQL;
            ADocID := dmAxiom.qryGetSeq.FieldByName('nextdoc').AsString;
//           ADocID := dmAxiom.DocID;
            PropValues.Add(ADocID);
            DocDocID := StrToInt(ADocID);

            nCat := -1;
            PropValues.Add(IntToStr(nCat));

            nClass := -1;
            PropValues.Add(IntToStr(nClass));

            AKeyWords := '';
            PropValues.Add(AKeyWords);

            APrecDetails := '';
            PropValues.Add(APrecDetails);

            // document name
            PropValues.Add(DocumentPath);

            // add author to array
            PropValues.Add(dmAxiom.UserID);

            SavedInDB := 'N';
            if SystemInteger('DFLT_DOC_SAVE_OPTION') = 0 then SavedInDB := 'Y';
            PropValues.Add(SavedInDB);

            // document description - title
            PropValues.Add(DocumentDescr);

            PropValues.Add('N');

            CustomDocProps := varDoc.CustomDocumentProperties;
            DocProps := varDoc.BuiltInDocumentProperties;

            for x := 0 to (length(CUSTOMPROPS) - 1) do
            begin
              OLEvar := CUSTOMPROPS[x];
              Value := PropValues.Strings[x];
              try
                 for I := 1 to length(CUSTOMPROPS) do // Iterate
                 begin
                    try
                       if CustomDocProps.Count <= x then
                       begin
                          CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, PropValues.Strings[x] ,EmptyParam);
                          break;
                       end
                       else
                       begin
                          try
                             if i > CustomDocProps.Count then
                             begin
                                CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, PropValues.Strings[x] ,EmptyParam);
                                break;
                             end
                             else
                             begin
                                Item := CustomDocProps.Item[i];
                                if (Item.Name = OLEVar) then
                                begin
                                   Item.Value := Value;
                                   break;
                                end;
                             end;
                          except
                             CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, PropValues.Strings[x] ,EmptyParam);
                          end;
                       end;
                    except
                       CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, Value ,'');
                    end;
                 end; // for
              except
                 CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, PropValues.Strings[x] ,EmptyParam);
              end;
            end;

            // populate Word description property value
            Value := DocumentDescr;
            Item := DocProps.Item[1];
            Item.Value := Value;

            varWord.ActiveDocument.Fields.Update;          }

//**********************************************************


            AFileID := MatterString(NMatter, 'FILEID');
            PropName := 'MatterNo';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, AFileID, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := AFileID;
            end;

            dmAxiom.qryGetSeq.ExecSQL;
            // 16 April 2018 DW because the save adds another one to it - need to add an extra one
            ADocID := inttostr((strtoint(dmAxiom.qryGetSeq.FieldByName('nextdoc').AsString)+1));
            DocDocID := StrToInt(ADocID);

            PropName := 'DocID';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, DocDocID, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := DocDocID;
            end;

{            AVersion := '1';
            PropName := 'Version';
            try
               varDoc.CustomDocumentProperties.Add(PropName, False, msoPropertyTypeString, AVersion, '');
            except
               varDoc.CustomDocumentProperties[PropName].Value := AVersion;
            end;
}

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

//            Value := DocumentDescr;
//            Item := DocProps.Item[1];
//            Item.Value := Value;


//*********************************************************/

            if SystemString('AUTO_SAVE_WORD_MERGE') = 'Y' then
            begin
               // 12/04/2010 AES - changed the following from Createdir to ForceDirectories
               if(DirectoryExists(ExtractFilePath(ADocumentPath))= False) then
                  ForceDirectories(ExtractFilePath(ADocumentPath));

               varDoc.SaveAs(ADocumentPath);

               try
                  FMacro := SystemString('WORD_SAVE_MACRO');
                  if FMacro <> '' then varWord.Run(FMacro);
               except
                 // ignore
               end;

               // save back to the database for the matter the document path.
            end;

//            PropValues.Free;

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

{function TWordMergeDocument.MergeDocument(): Integer;
 {
This code requires that the Word2000.PAS file be referenced in the
Uses section. To compile with the Word97.PAS file simply change the OpenOld
method call to "Open" and the PrintOutOld call to "PrintOut".  Also requires
ComObj and ActiveX in the Uses section.    }

{var
   MSWord: _Application;
   MSDoc: _Document;
   Unknown: IUnknown;
   OLEResult: HResult;
   OLEvar: OleVariant;
   FMacro,AFileID, tmpFileName, AExt: string;
   ADocumentPath: OleVariant;
   DocProps, Item, CustomDocProps, Value: OleVariant;
   i, x, ncat, nclass: integer;
   ADocID, AKeyWords, APrecDetails, SavedInDB: string;
   frmDocumentDescription: TfrmDocumentDescription;
   PropValues: TStrings;
begin
   Result := mrCancel;
   try
 //     We want to name document prior to anything happening
      if SystemString('doc_prompt_descr') = 'Y' then
      begin
         try
            frmDocumentDescription := TfrmDocumentDescription.Create(nil);
            if frmDocumentDescription.ShowModal = mrOk then
            begin
               tmpFileName := SystemString('DOC_DEFAULT_DIRECTORY');
               AExt := ExtractFileExt(tmpFileName);

               tmpFileName := Copy (tmpFileName,1, Length(tmpFileName)- Length(AExt));

               ADocumentPath := ParseMacros(DocumentPath, NMatter, -1, frmDocumentDescription.cxTextEdit1.Text );
               // if default directory has no hint re document name we assume value entered becomes doc name
{               if AExt = '' then
               begin
                  ADocumentPath := ADocumentPath + '\' + frmDocumentDescription.cxTextEdit1.Text;
                  AExt := SystemString('DEFAULT_DOC_EXT');
                  ADocumentPath := ADocumentPath + '.' + AExt;
                  DocumentPath := ADocumentPath;
               end
               else
               begin
                  ADocumentPath := ADocumentPath + '_' + frmDocumentDescription.cxTextEdit1.Text;
                  ADocumentPath := ADocumentPath + AExt;
                  DocumentPath := ADocumentPath;
               end;}
{               DocumentDescr := frmDocumentDescription.cxTextEdit1.Text;
            end
            else
               ADocumentPath := DocumentPath;
         finally
            frmDocumentDescription.Free;
         end;
      end
      else
         ADocumentPath := DocumentPath;


      OLEResult := GetActiveObject(CLASS_WordApplication, nil, Unknown);
      if (OLEResult = MK_E_UNAVAILABLE) then
         MSWord := CoWordApplication.Create          //get MS Word running
      else
      begin
         OleCheck(OLEResult);                           //check for errors
         OleCheck(Unknown.QueryInterface(_Application, MSWord));
      end;
      try
         MSWord.Visible := True;                   //let user see Word running
         OLEvar := TemplatePath;                      //merge template document
         MSDoc := MSWord.Documents.OpenOld(OLEvar, EmptyParam, EmptyParam, EmptyParam,
                 EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                 EmptyParam);
         MSDoc.MailMerge.OpenDataSource(DataFilePath, EmptyParam, EmptyParam, EmptyParam,
                 EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                 EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

         OLEvar := False;

         MSDoc.Activewindow.WindowState := wdWindowStateMaximize;
         with MSDoc.MailMerge do begin
            Destination := wdSendToNewDocument;
            Datasource.FirstRecord := wdDefaultFirstRecord;
            Datasource.LastRecord := Integer(wdDefaultLastRecord);
            Execute(OLEvar);                       //do merge into new document
         end;

         OLEvar := False;
         MSDoc.Close(OLEVar, EmptyParam, EmptyParam);  //close template document
         OLEvar := 1;
         MSDoc := MSWord.Documents.item(OLEvar);  //attach to the merge result document

         PropValues := TStringList.Create;

         AFileID := MatterString(NMatter, 'FILEID');
         PropValues.Add(AFileID);

         dmAxiom.qryGetSeq.ExecSQL;
         ADocID := dmAxiom.qryGetSeq.FieldByName('nextdoc').AsString;
//         ADocID := dmAxiom.DocID;
         PropValues.Add(ADocID);
         DocDocID := StrToInt(ADocID);

         nCat := -1;
         PropValues.Add(IntToStr(nCat));

         nClass := -1;
         PropValues.Add(IntToStr(nClass));

         AKeyWords := '';
         PropValues.Add(AKeyWords);

         APrecDetails := '';
         PropValues.Add(APrecDetails);

         // document name
         PropValues.Add(DocumentPath);

        // add author to array
         PropValues.Add(dmAxiom.UserID);

         SavedInDB := 'N';
         if SystemInteger('DFLT_DOC_SAVE_OPTION') = 0 then SavedInDB := 'Y';
         PropValues.Add(SavedInDB);

         // document description - title
         PropValues.Add(DocumentDescr);

         PropValues.Add('N');

         CustomDocProps := MSDoc.CustomDocumentProperties;
         DocProps := MSDoc.BuiltInDocumentProperties;

         for x := 0 to (length(CUSTOMPROPS) - 1) do
         begin
            OLEvar := CUSTOMPROPS[x];
            Value := PropValues.Strings[x];
            try
               for I := 1 to length(CUSTOMPROPS) do // Iterate
               begin
                  try
                     if CustomDocProps.Count <= x then
                     begin
                        CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, PropValues.Strings[x] ,EmptyParam);
                        break;
                     end
                     else
                     begin
                        try
                           if i > CustomDocProps.Count then
                           begin
                              CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, PropValues.Strings[x] ,EmptyParam);
                              break;
                           end
                           else
                           begin
                              Item := CustomDocProps.Item[i];
                              if (Item.Name = OLEVar) then
                              begin
                                 Item.Value := Value;
                                 break;
                              end;
                           end;
                        except
                           CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, PropValues.Strings[x] ,EmptyParam);
                        end;
                     end;
                  except
                     CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, Value ,'');
                  end;
               end; // for
            except
               CustomDocProps.Add(OLEVar, False, msoPropertyTypeString, PropValues.Strings[x] ,EmptyParam);
            end;
         end;

         Value := DocumentDescr;
         Item := DocProps.Item[1];
         Item.Value := Value;

         MSWord.ActiveDocument.Fields.Update;

         if SystemString('AUTO_SAVE_WORD_MERGE') = 'Y' then
         begin

            // 02/08/2010 AES - ensure that the extension ia there if not set it to default
            if ExtractFileExt(ADocumentPath) = '' then
               ADocumentPath := ADocumentPath + '.' + SystemString('default_doc_ext');

            // 12/04/2010 AES - changed the following from Createdir to ForceDirectories
            if(not DirectoryExists(ExtractFilePath(DocumentPath))) then
               ForceDirectories(ExtractFilePath(DocumentPath));

            MSDoc.SaveAs(ADocumentPath,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
                         EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
                         EmptyParam);

            FMacro := SystemString('WORD_SAVE_MACRO');
            if FMacro <> '' then MSWord.Run(FMacro, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam );
         end;

         Result := mrOk;
      except
           on E: Exception do
              MessageDlg('Error during MailMerge with MS Word: ' + E.Message, mtError, [mbOK], 0);
      end;
      
     {The next 4 lines cause Word to print the merged document and then exit. If
      removed, Word will remain active without printing the merge document and
      control will return to the Delphi program. User will have to print the
      document by hand themselves.}
{
       OLEvar := False;                    //implies wait for printing to complete
       MSDoc.PrintOutOld(OLEvar, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                   EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                   EmptyParam, EmptyParam, EmptyParam, EmptyParam);
       OLEvar := wdDoNotSaveChanges;           //don't save the merge document
       MSWord.Quit(OLEvar, EmptyParam, EmptyParam);
   }
{   finally
      MSDoc := nil;
      MSWord := nil;
   end;
end;
}

class function TWordMergeDocument.NumberOfProperties: Integer;
begin
  Result := Length(TMSWordPropertyNames);
end;

class function TWordMergeDocument.PropertyType(AProperty: Integer): TMergePropertyType;
begin
  Result := mptNone;
end;

class function TWordMergeDocument.PropertyType(AProperty: String): TMergePropertyType;
begin
  Result := mptNone;
end;

class procedure TWordMergeDocument.SetPropertyValue(AProperty: Integer;
  AValue: Variant);
begin
  TMSWordPropertyValues[TMSWordMergeProperties(AProperty)] := AValue;
end;

class procedure TWordMergeDocument.SaveSettings;
begin
  // do nothing.
end;

class procedure TWordMergeDocument.SetPropertyValue(AProperty: String;
  AValue: Variant);
begin
// DO NOTHING.
end;

class function TWordMergeDocument.Options: TMergeOptions;
begin
  Result := [moCheckTemplateExists, moNeedsParties, moNeedsData, moNeedsTemplatePath,
             moNeedsDocumentPath, moNeedsDataFilePath, moSaveToDB, moNeedsFieldTranslate];
end;

function TWordMergeDocument.PostProcess(AChangedDataValues: TCollection): boolean;
begin
  Result := True;
end;


initialization
  // register TWordMergeDocument as a merge type.
  RegisterWorkflowMergeType(TWordMergeDocument);

end.
