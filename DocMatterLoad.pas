unit DocMatterLoad;

interface

uses
   Windows, SysUtils, uRwMapiInterfaces, uRwMapidefsH, uRwSysUtils, uRwDateTimeUtils,
   VCL.uRwMAPISession, Variants, StrUtils;

    function DoFileScan(const APathName: string; ANMatter: integer; APrecCat, APrecClass, AFolder: integer;
               ACopyMove: integer = 0; ASplitEmail: boolean = True; ACreateFolder: boolean = True): integer;
    function FileSearch(const PathName, FileName: string): integer;
    procedure SaveDocument(FileName, AFolderName: string);
//    function MoveMatterDoc(var ANewDocName: string; AOldDocName: string): boolean;
    // 30 May 2018 DW added procedure and function for import
    procedure AddFolder(CheckPath: string; OriginalPath: string);
	 function LastCharPos(const S: string; const Chr: char): integer;
    //  AES 19/07/2018 added function to try and get real date of document
    function ReportFileTimes(const FileName: string): TDateTime;

implementation

uses
   AxiomData, MiscFunc, uRwMapiProps, FileCopyDisplay;

var
   LNMatter: integer;
   LPrecCat: integer;
   LPrecClass: integer;
   LCopyMove: integer;
   fmFileCopyDisp: TfrmFileCopyDisp;
   LSplitEmail: boolean;
   FileCount: integer;
   lFolder: integer;
   // 5 June 2018 DW added for folder code
   lOrigPath: string;
//   FileCount2: integer;
   lFileFolder_ID: integer;
   lOrigDirLen: integer;
   lCheckPathLen: integer;
   lParentParent_ID2: integer;
   lFolder_Level: integer;
   lOriginalDirCount: integer;
   lLastDirCount: integer;
   AFolderID: string;
   lTempFolder2: string;
   lTempFolder3,
   FAFolderName: string;
   bFolderCreate: boolean;
   AFolderName: string;

function DoFileScan(const APathName: string; ANMatter: integer; APrecCat, APrecClass, AFolder: integer;
                     ACopyMove: integer = 0; ASplitEmail: boolean = True; ACreateFolder: boolean = True): integer;
var
   PathName: string;
   LRetFileCount: integer;
begin
   try
      // 30 05 2018 DW moved file count intialiser here to get correct file added count
      FileCount := 0;
//      FileCount2 := 0;
      lFileFolder_ID := 0;
      lFolder_Level := -1;
      bFolderCreate := ACreateFolder;
      if (dmAxiom.MapiSession.Active = False) then
      begin
         //OldCursor := Screen.Cursor;
         //Screen.Cursor := crHourGlass;
         try
            dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
            dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault; // 'Outlook';
            dmAxiom.MapiSession.LogonInfo.Password           := '';
            dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
            dmAxiom.MapiSession.LogonInfo.NewSession         := False;
            dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
            dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
            dmAxiom.MapiSession.Active                       := True;
         finally
            //Screen.Cursor := OldCursor;
         end;
      end;

      ////
      fmFileCopyDisp := TfrmFileCopyDisp.Create(nil);
      fmFileCopyDisp.Show;
      LCopyMove := ACopyMove;
      LSplitEmail := ASplitEmail;
      if dmAxiom.uniInsight.InTransaction = True then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      LNMatter := ANMatter;
      LPrecCat := APrecCat;
      LPrecClass := APrecClass;
      lFolder := AFolder;
      lOrigPath := IncludeTrailingPathDelimiter(APathName);
      LRetFileCount := FileSearch(APathName,'*.*');
   finally
      fmFileCopyDisp.Close;
      dmAxiom.uniInsight.Commit;
      dmAxiom.qryDocDetails.Close;
      DoFileScan := FileCount;
   end;
end;

function FileSearch(const PathName, FileName : string): integer;
var
   Rec  : TSearchRec;
   Path : string;
begin
   try
      Path := IncludeTrailingPathDelimiter(PathName);
//      FileCount := 0;
      try
         if FindFirst(Path + FileName, faAnyFile - faDirectory, Rec) = 0 then
         try
            repeat
               SaveDocument(Path + Rec.Name, AFolderName);
            until FindNext(Rec) <> 0;
         finally
            FindClose(Rec);
         end;

         if FindFirst(Path + '*.*', faDirectory, Rec) = 0 then
         try
            repeat
               if ((Rec.Attr and faDirectory) <> 0)  and (Rec.Name<>'.') and (Rec.Name <> '..') then
               begin
                  AFolderName := '';
                  if (bFolderCreate) then
                  begin
                      AddFolder(Path + Rec.Name, lOrigPath);
                      AFolderName := Rec.Name;
                  end;
                  FileSearch(Path + Rec.Name, FileName);
               end;
            until FindNext(Rec) <> 0;
         finally
            FindClose(Rec);
         end;
      finally
         Result := FileCount;
      end;
   except
   //
   end;
end;

procedure SaveDocument(FileName, AFolderName: string);
var
   AFileName, AModFileName, NewDocName, ANewDocName: string;
   AFileID, AParsedDocName, AAttachParsedDocName, NewDocPath, ADocID: string;
   bMoveSuccess,
   bCopyMove,
   attachmentIsInline: boolean;
   AFileExt,
   FileExt,
   EmailSentTo,
   EmailFrom,
   DispName,
   AExt,
   ADispName,
   VarDocName,
   AParsedDir,
   ParsedVarDocName,
   ADocDescr: string;
   FileImg,
   x,
   i,
   AAttachDocID: integer;
   FSavedMsg: IRwMapiMessage;
   EmailCreateDate: TDateTime;
   AttTable: IRwMapiTable;
   Attachment: IRwMapiAttachment;
   ADocumentSaved: boolean;
   Attachments: IrwMapiAttachmentTable;
begin
   bCopyMove := False;
   if LCopyMove = 1 then
      bCopyMove := True;

   try
      AFileName := ExtractFileName(FileName);
      AFileExt := ExtractFileExt(AFileName);
      ANewDocName := AFileName;     //ParseMacros(Copy(AFileName,1, length(AFileName) - length(AFileExt)) + '_[DOCSEQUENCE]' + AFileExt,LNMatter, StrToInt(dmAxiom.DocId));

      fmFileCopyDisp.FileName := ANewDocName;

      NewDocPath := SystemString('DRAG_DEFAULT_DIRECTORY');
      NewDocName := IncludeTrailingPathDelimiter(NewDocPath) + ANewDocName;
      AParsedDocName := ParseMacros(NewDocName,LNMatter);
      ADocID := dmAxiom.GetSeqNumber('DOC_DOCID');
      if (FileName <> AParsedDocName) then    // test to see if documet load is from same folder
      begin
         // AES6/7/2018 documents will already be unique, adding docid will mean duplication, but if users want to insist they need to set the system flag
         if (SystemString('doc_seq_append') = 'Y') or (FileExists(AParsedDocName) = True)  then
         begin
            AParsedDocName := AnsiMidStr(AParsedDocName,1, (length(AParsedDocName) - length(AFileExt))) + '_' + ADocID + AFileExt;
            ANewDocName := ExtractFileName(AParsedDocName);
         end;
      end;

      if FileExists(AParsedDocName) = False then
      begin
         with dmAxiom.qryDocDetails do
         begin
            Open;
            Insert;
            AFileID := MatterString(LNMatter, 'fileid');

            if (FileName = AParsedDocName) then
               bMoveSuccess := True
            else
            begin
               if (((TOSVersion.Name = 'Windows 8') or (TOSVersion.Name = 'Windows Server 2012')) and (SystemString('THIN_PROVISIONED_DISK') = 'N')) then
                  bMoveSuccess := CopyFileIFileOperationForceDirectories(FileName, AParsedDocName, bCopyMove)
               else
                  bMoveSuccess := MoveMatterDoc(AParsedDocName, FileName, bCopyMove, False);
            end;

            if (bMoveSuccess or
               (TableInteger('DOC','PATH', AParsedDocName, 'DOCID') = 0)) then
            begin
               FileExt := uppercase(Copy(ExtractFileExt(AParsedDocName),2, Length(ExtractFileExt(AParsedDocName))));
               if (FileExt = 'DOC') or (FileExt = 'DOCX') then
                  FileImg := 2
               else if (FileExt = 'XLS') or (FileExt = 'XLSX') then
                  FileImg := 3
               else if (FileExt = 'PDF')  then
                  FileImg := 5
               else if (FileExt = 'MSG') then
                  FileImg := 4
               else if (FileExt = 'PPT') or (FileExt = 'PPTX') then
                  FileImg := 6
               else
                  FileImg := 1;

               if (FileImg = 4) then
               begin
                  try
//                     FSavedMsg := dmAxiom.MapiSession.GetDefaultMsgStore(alReadwrite).OpenSavedMessage(AParsedDocName);
                     FSavedMsg := dmAxiom.MsgStore.OpenSavedMessage(AParsedDocName);
                  except
                           //
                  end;
                  if FSavedMsg <> nil then
                     EmailCreateDate := RwUTCToLocal(FSavedMsg.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);
                  if LSplitEmail = True then
                  begin
                     try
                        if FSavedMsg <> nil then
                        begin
//                          POldName := OldDocName;
                          EmailSentTo := FSavedMsg.PropByName(PR_DISPLAY_TO).AsString;
                          if EmailSentTo = '' then
                             Exit;
                          EmailFrom := FSavedMsg.PropByName(PR_SENDER_NAME).AsString;
                          if (SystemString('EMAIL_SEPARATE_ATTACHMENTS') = 'Y') then
                          begin
                             try
                                Attachments := FSavedMsg.Attachments;
                                if (Attachments <> nil) then
                                begin
                                   Attachments.Fields.Add(PR_ATTACH_NUM);
                                   Attachments.Fields.Add(PR_ATTACH_LONG_FILENAME);
                                   Attachments.Fields.Add(PR_ATTACH_FILENAME);
                                   Attachments.Fields.Add(PR_ATTACH_METHOD);
                                   Attachments.Open;
//                                   Attachments.First;
                                   if (Attachments.RowCount > 0) then
                                   begin
                                      while not Attachments.EOF do
                                      begin
                                         Attachment := Attachments.OpenAttachment;

                                         DispName := Attachment.PropByName(PR_DISPLAY_NAME).AsString;

                                         if DispName = '' then
                                            DispName := ExtractFileName(Attachment.PropByName(PR_ATTACH_FILENAME).AsString);

                                         if DispName = '' then
                                            DispName := ExtractFileName(Attachment.PropByName(PR_ATTACH_LONG_FILENAME).AsString);

                                         attachmentIsInline := false;
                                         if (FSavedMsg.HTMLBody <> '') then
                                         begin
                                            if (pos(DispName, FSavedMsg.HTMLBody) > 0) then
                                               attachmentIsInline := true;
                                         end;

                                         if (attachmentIsInline = False) then
                                         begin
                                            // clean up subject line
                                            for x := i + 1 to length(DispName) do
                                            begin
                                               if (DispName[x] in ['/','\','?','"','<','>','|','*',':',';']) then
                                                  DispName[x] := ' ';
                                            end;

                                            while Pos('/', DispName) > 0 do
                                               DispName[Pos('/', DispName)] := '.';

                                            while Pos('\', DispName) > 0 do
                                               DispName[Pos('\', DispName)] := '.';

                                            AAttachDocID := StrToInt(dmAxiom.GetSeqNumber('DOC_DOCID'));

                                            AExt := ExtractFileExt(DispName);
                                            ADispName := Copy (DispName,1, Length(DispName)- Length(AExt));
//                                            ADispName := ADispName + '_' + '[DOCSEQUENCE]';
                                            if AExt = '' then
                                               AExt := '.msg';
                                            DispName := ADispName + AExt;

                                            VarDocName := {AParsedDir} IncludeTrailingPathDelimiter(NewDocPath) + DispName;
                                            ParsedVarDocName := ParseMacros(VarDocName, TableInteger('MATTER','FILEID',AFileID,'NMATTER'));

                                             // AES6/7/2018 documents will already be unique, adding docid could mean duplication, but if users want to insist they need to set the system flag
                                            if (SystemString('doc_seq_append') = 'Y') or (FileExists(ParsedVarDocName) = True) then
                                            begin
                                                AAttachParsedDocName := AnsiMidStr(ParsedVarDocName,1, (length(ParsedVarDocName) - length(AFileExt))) + '_' + IntToStr(AAttachDocID) + AFileExt;
                                            end
                                            else
                                            begin
                                                AAttachParsedDocName := ParsedVarDocName;
                                            end;
                                            Attachment.SaveToFile(AAttachParsedDocName);

                                            WriteFileDetailsToDB(StrToInt(ADocID), AAttachParsedDocName, AFileID, ADocDescr, 'Y', AAttachDocID);
                                         end;
                                         Attachments.Next;
                                      end;
                                   end;
                                end;
                             finally
                                Attachments.Close;
                             end;
                          end;
                          FieldByName('EMAIL_SENT_TO').AsString := EmailSentTo;
                          FieldByName('EMAIL_FROM').AsString := EmailFrom;
                        end;
                     finally
//                        FSavedMsg := nil;
                     end;
                  end;
                  FSavedMsg := nil;
               end;

               FieldByName('DOCID').AsInteger := StrToInt(ADocID);
               FieldByName('DOC_NAME').AsString := ANewDocName;
               FieldByName('SEARCH').AsString := AFileName;
               FieldByName('FileID').AsString := AFileID;
               FieldByName('AUTH1').AsString :=  dmAxiom.UserID;
               FieldByName('DESCR').AsString := AFileName;
               FieldByName('NMATTER').AsInteger := LNMatter;
               FieldByName('IMAGEINDEX').AsInteger := FileImg;
               FieldByName('FILE_EXTENSION').AsString := FileExt;
               if (lFolder <> -1) then
                  FieldByName('FOLDER_ID').AsInteger := lFolder;
               // 30 May 2018 DW add established found folder from AddFolder routine
               // 09/08/2018 AES changed this to attach folder if folder exists
               if (AFolderName <> '') then
               begin
                  with dmAxiom.qryTmp do
                  begin
                     Close;
                     SQL.Text := 'select folder_id from document_folders where nmatter = :p_nmatter and descr = :p_descr';
                     ParamByName('p_nmatter').AsInteger := LNMatter;
                     ParamByName('p_descr').AsString := AFolderName;
                     Open;
                     lFileFolder_ID := FieldByName('folder_id').AsInteger;
                     Close;
                  end;
               end;

               if (lFileFolder_ID > 0) then
                  FieldByName('FOLDER_ID').AsInteger := lFileFolder_ID;
               FieldByName('PATH').AsString := IndexPath(AParsedDocName, 'DOC_SHARE_PATH');
               FieldByName('DISPLAY_PATH').AsString := AParsedDocName;

               if (FileImg = 4) then
                  FieldByName('d_create').AsDateTime := EmailCreateDate
               else
                  FieldByName('d_create').AsDateTime := ReportFileTimes(FileName); // FileDateToDateTime(FileAge(FileName));

               if LPrecClass <> -1 then
                  FieldByName('nprecclassification').AsInteger := LPrecClass;  //SystemInteger('DOC_DFLT_CLASSIFICATION');
               if LPrecCat <> -1 then
                  FieldByName('npreccategory').AsInteger := LPrecCat; //SystemInteger('DOC_DFLT_CATEGORY');
               dmAxiom.qryDocDetails.Post;
               inc(FileCount);
            end;
         end;
      end
      else
         fmFileCopyDisp.FileName := ANewDocName + ' already exists. Not copied';
   finally
//      dmAxiom.qryDocDetails.Post;
   end;
end;

function ReportFileTimes(const FileName: string): TDateTime;

  function ReportTime(const Name: string; const FileTime: TFileTime): TDateTime;
  var
      SystemTime, LocalTime: TSystemTime;
  begin
      if not FileTimeToSystemTime(FileTime, SystemTime) then
         RaiseLastOSError;
      if not SystemTimeToTzSpecificLocalTime(nil, SystemTime, LocalTime) then
         RaiseLastOSError;
      ReportTime := SystemTimeToDateTime(LocalTime);
  end;

var
  fad: TWin32FileAttributeData;

begin
   if not GetFileAttributesEx(PChar(FileName), GetFileExInfoStandard, @fad) then
      RaiseLastOSError;
//  ReportTime('Created', fad.ftCreationTime);
   ReportFileTimes := ReportTime('Modified', fad.ftLastWriteTime);
//  ReportTime('Accessed', fad.ftLastAccessTime);
end;


{function MoveMatterDoc(var ANewDocName: string; AOldDocName: string): boolean;
var
   ADocumentSaved: boolean;
   AError: integer;
begin
   ADocumentSaved := True;
   try
      // Check if directory exists
      if not DirectoryExists(ExtractFileDir(ANewDocName)) then
         ForceDirectories(ExtractFileDir(ANewDocName));
      // try to copy file
      if not CopyFile(PChar(AOldDocName) ,pchar(ANewDocName), true) then
      begin
         AError := GetLastError;
         case AError of
            80: begin
//                   if MessageBox(Self.Handle, pchar('File already exists. Do you want to overwrite it?' ), CN_PROGRAM_NAME, MB_YESNO + MB_ICONQUESTION) = IDYES then
                      ADocumentSaved := CopyFile(PChar(AOldDocName) ,pchar(ANewDocName), false);
                end;
            82: begin
//                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The directory or file could not be created.'), CN_PROGRAM_NAME, MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            5:  begin
//                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  Access denied.'), CN_PROGRAM_NAME, MB_OK + MB_ICONERROR);
                 ADocumentSaved := False;
                end;
            39,112: begin
//                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The disk is full!'), CN_PROGRAM_NAME, MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            111:begin
//                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The filename is to long!'), CN_PROGRAM_NAME, MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            53 :begin
//                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The network path was not found!'), CN_PROGRAM_NAME, MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
         else
//            MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The document was not saved. Error: ' + IntTostr(AError)), CN_PROGRAM_NAME, MB_OK + MB_ICONERROR);
            ADocumentSaved := False;
         end;
      end;
      // delete file if succesfull
//      if ADocumentSaved then
//         DeleteFile(AOldDocName);
   except
      on E: Exception do
      begin
//         MessageBox(Self.Handle, pchar('There was an Error during the saving of the document.  The document was not saved: ' + E.Message), CN_PROGRAM_NAME, MB_OK + MB_ICONERROR);
         ADocumentSaved := False;
      end;
   end;
   Result := ADocumentSaved;
end;     }

procedure AddFolder(CheckPath: string; OriginalPath: string);
var
  i, lResult: integer;
  lStr: string;
begin
    // get the length of the starting point directory path
    lOrigDirLen := length(OriginalPath);
    // get the length of the path to be checked
    lCheckPathLen := length(CheckPath);
    // save the folder depth number for the original directory path
    lStr := OriginalPath;
    lResult := 0;
    for i := 1 to Length(lStr) do
        if lStr[i] = '\' then
          inc(lResult);
    lOriginalDirCount := lResult;

    // get the folder depth number for the new path under the original ie sub directories
    lStr := IncludeTrailingPathDelimiter(CheckPath);
    lResult := 0;
    for i := 1 to Length(lStr) do
        if lStr[i] = '\' then
          inc(lResult);

    // initial directory level
    if ((lResult - lOriginalDirCount) = 1) then
    begin
        // Folder level zero folder - does this folder already exist for this matter
        dmAxiom.qryDocFolderExists.Close;
              dmAxiom.qryDocFolderExists.ParamByName('P_IMP_PTH').AsString := IncludeTrailingPathDelimiter(CheckPath);
              dmAxiom.qryDocFolderExists.ParamByName('P_NMATTER').AsInteger := LNMatter;
        dmAxiom.qryDocFolderExists.Open;
        if (dmAxiom.qryDocFolderExists.FieldByName('folder_id').IsNull = True) then
        begin
           try
              // folders at the top level have a folder level of zero
              lFolder_Level := 0;
              // add the folder to DOCUMENT_FOLDERS table
              with dmAxiom.qryDocFolderInsert do
              begin
                  Open;
                  Insert;
                  AFolderID := dmAxiom.GetSeqNumber('seq_doc_folders');
                  FieldByName('FOLDER_ID').AsInteger := strToInt(AFolderID) +1;
                  FieldByName('DESCR').AsString := RightStr(CheckPath, (lCheckPathLen - lOrigDirLen));
                  FieldByName('PARENT_ID').AsInteger := 0;
                  FieldByName('NMATTER').AsInteger := LNMatter;
                  FieldByName('FOLDER_LEVEL').AsInteger := 0;
                  FieldByName('TMPL_ID').AsInteger := 0;
                  FieldByName('IMP_PTH').AsString := IncludeTrailingPathDelimiter(CheckPath);
                  dmAxiom.qryDocFolderInsert.Post;
                  // this is used to set the FOLDER_ID for all files added which belong to this folder
                  lFileFolder_ID := StrToInt(AFolderID) +1;
                  // this is used for next time we check a sub directory below the initial level
                  lLastDirCount := lResult;
              end;
           finally;
           end;
        end;
    end;
    // not at the top level of folders
    if ((lResult - lOriginalDirCount) > 1) then
    begin
        // does the new path already exist as a folder for this matter
        dmAxiom.qryDocFolderExists.Close;
        dmAxiom.qryDocFolderExists.ParamByName('P_IMP_PTH').AsString := IncludeTrailingPathDelimiter(CheckPath);
        dmAxiom.qryDocFolderExists.ParamByName('P_NMATTER').AsInteger := LNMatter;
        dmAxiom.qryDocFolderExists.Open;
        if (dmAxiom.qryDocFolderExists.FieldByName('folder_id').IsNull = True) then
        begin
              // folder does not exist in DOCUMENT_FOLDERS table
              // get the name of the last directory in the path
              lTempFolder2 := AnsiMidStr(CheckPath, (LastCharPos(CheckPath, '\')+1), (Length(CheckPath) - (LastCharPos(CheckPath, '\'))));
              try
                // if at a lower level than last pass, then increment the FOLDER_LEVEL
                if (lLastDirCount < lResult) then
                     lFolder_Level := lFolder_Level + 1;
                // get the folder structure for one level above so we can get the FOLDER_ID
                // this is needed to set the PARENT_ID for the folder
                lTempFolder3 := AnsiMidStr(CheckPath, 1, (LastCharPos(CheckPath, '\')));
                dmAxiom.qryDocFolderExists.Close;
                dmAxiom.qryDocFolderExists.ParamByName('P_IMP_PTH').AsString := lTempFolder3;
                dmAxiom.qryDocFolderExists.ParamByName('P_NMATTER').AsInteger := LNMatter;
                dmAxiom.qryDocFolderExists.Open;
                if (dmAxiom.qryDocFolderExists.FieldByName('folder_id').IsNull = False) then
                    lParentParent_ID2 := dmAxiom.qryDocFolderExists.FieldByName('folder_id').asInteger
                else
                    lParentParent_ID2 := 0;

                // add the folder to DOCUMENT_FOLDERS table
                with dmAxiom.qryDocFolderInsert do
                begin
                    Open;
                    Insert;
                    AFolderID := dmAxiom.GetSeqNumber('seq_doc_folders');
                    FieldByName('FOLDER_ID').AsInteger := strToInt(AFolderID) +1;
                    // this is used to set the FOLDER_ID for all files added which belong to this folder
                    lFileFolder_ID := StrToInt(AFolderID) +1;
                    FieldByName('DESCR').AsString := lTempFolder2;
                    FieldByName('PARENT_ID').AsInteger := lParentParent_ID2;
                    FieldByName('NMATTER').AsInteger := LNMatter;
                    FieldByName('FOLDER_LEVEL').AsInteger := lFolder_Level;
                    FieldByName('TMPL_ID').AsInteger := 0;
                    FieldByName('IMP_PTH').AsString := IncludeTrailingPathDelimiter(CheckPath);
                    dmAxiom.qryDocFolderInsert.Post;
                    // this is used for next time we check a sub directory below the initial level
                    lLastDirCount := lResult;
                end;
              finally;
              end;
        end;
    end;
end;

function LastCharPos(const S: string; const Chr: char): integer;
var
  i: Integer;
begin
  result := 0;
  for i := length(S) downto 1 do
    if S[i] = Chr then
      Exit(i);
end;

end.
