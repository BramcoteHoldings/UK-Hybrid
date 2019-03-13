unit EmailListener;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, INIFiles, uRwMapiExceptions, Math, uRwDateTimeUtils, MemDS,
  DBAccess, OracleUniProvider, Uni, DateUtils,
  uRwMapiMsgStoreEvents, uRwMapiInterfaces, uRwMapidefsH;

const
     WM_NEWMESSAGE = WM_USER + 1;

type
  TfrmEmailMsgListener = class(TForm)
    qryCheckEmail: TUniQuery;
    MsgStoreEvents: TRwMapiMsgStoreEvents;
    procedure MsgStoreEventsCriticalError(Sender: TObject;
      AMsgStore: IRwMapiMsgStore; AObjectID: OleVariant;
      AMapiError: TMAPIERROR);
    procedure FormCreate(Sender: TObject);
    procedure MsgStoreEventsObjectCreated(Sender: TObject;
      ObjectEntryID: TRwMapiEntryID; ObjectType: TRwMapiObjectType;
      ParentEntryID, OldObjectEntryID, OldParentEntryID: TRwMapiEntryID;
      const ChangedProperties: IRwMapiPropList);
    procedure MsgStoreEventsObjectMoved(Sender: TObject;
      ObjectEntryID: TRwMapiEntryID; ObjectType: TRwMapiObjectType;
      ParentEntryID, OldObjectEntryID, OldParentEntryID: TRwMapiEntryID;
      const ChangedProperties: IRwMapiPropList);
    procedure MsgStoreEventsNewMessage(Sender: TObject; FolderID,
      MessageID: TRwMapiEntryID; const MessageClass: TRwMapiString);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FINIstartup: TINIFile;
    tmpdir: string;
    FOldDocName: string;
    procedure NewMessage(var Message: TMessage); message WM_NEWMESSAGE;
    procedure DoNothing;
    function GetSenderMsgStore(ASender: TObject): string;
    function WriteFileToDisk(var ANewDocName: string; AOldDocName: string; ADeleteFile: boolean = False): boolean;
    property OldDocName: string read FOldDocName write FOldDocName;
  public
    { Public declarations }
  end;

var
  frmEmailMsgListener: TfrmEmailMsgListener;

implementation

{$R *.dfm}

uses
  AxiomData
  , uRwBoxes
  , uRwMapiBase
  , uRwMapiUtils
  , MiscFunc
  , uRwMapiProps;


procedure TfrmEmailMsgListener.NewMessage(var Message: TMessage);
// Description:
//   React to an incoming message
//   This method is called by the PostMessage. The WParam contains a
//   pointer to a string that contains a messageid
var
   Msg: IRwMapiMessage;
   MsgId : TRwMapiEntryId;
   StrMsgId: PChar;
   FileID, DispName, sSubject, AExt,
   ADispName, VarDocName: string;
   i, x, FHashPos: integer;
   iFileHandle: Integer;
   iFileLength: Integer;
   iBytesRead: Integer;
   Buffer: PChar;
   tmpFileName, Folder, ADir, AIndexDir: string;
   bStream, fStream: TStream;
   RandFile: string;
   Restriction : IRwMapiRestrictionAnd;
   RootFolder: IRwMapiFolder;
   ANewDocName, AParsedDocName, ASubject, AParsedDir, ADocDescr,
   ParsedVarDocName, ParsedOldDocName: string;
   AYear,Amonth,ADay, AHour, AMinute, ASeconds, AMilliSeconds: word;
   AEmailDateTime: TDatetime;
   AttTable: IRwMapiTable;
   Attachment: IRwMapiAttachment;
   ADocumentSaved: boolean;
   Attachments: IrwMapiAttachmentTable;
   AParentDocID: integer;
begin
   StrMsgId := PChar(Message.WParam);
   try
      // get the messageid
      // convert it back to a valid TRwEntryID
      MsgId := StrToEntryID(string(StrMsgId));
   finally
      StrDispose(StrMsgId);
      // open the message
      try
         Msg := dmAxiom.MsgStore.OpenMessage(MsgId, alReadWrite, False);
      except
         // ignore
      end;
   end;

   try
      try
         FileID := Msg.PropByName(MATTER).AsString;
      except
         FileID := '';
      end;

	   sSubject := Msg.PropByName(PR_SUBJECT).AsString;
      if (pos('#',sSubject) > 0) then
      begin
         // clean up subject line
         for x := i + 1 to length(sSubject) do
         begin
            if (sSubject[x] in ['/','\','?','"','<','>','|','*',':',';']) then
               sSubject[x] := ' ';
         end;
      end;

	  if ((FileID = '') and (pos('#',sSubject) > 0)) then
      begin
         FHashPos := pos('#',sSubject);
         for x := FHashPos + 1 to length(sSubject) do
         begin
            if (sSubject[x] <> ' ') and ((sSubject[x] in ['A'..'Z', '0'..'9', 'a'..'z', '.', '-'])) then
               FileID := FileID + sSubject[x];
            if (not (sSubject[x] in ['A'..'Z', '0'..'9', 'a'..'z', '.', '-'])) then break;
         end;
      end;

      FileID := UpperCase(FileID);
      if (FileID <> '') and (MatterExists(FileID)) then
      begin
         try
            AEmailDateTime := RwUTCToLocal(Msg.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);
         except
           //
         end;

         qryCheckEmail.Close;
         qryCheckEmail.ParamByName('descr').AsString := Msg.PropByName(PR_SUBJECT).AsString;
         qryCheckEmail.ParamByName('D_CREATE').AsDateTime := AEmailDateTime;
         qryCheckEmail.ParamByName('fileid').AsString := FileID;
         qryCheckEmail.Open;
         if qryCheckEmail.FieldByName('rec_found').IsNull then
         begin
            dmAxiom.qryMatterAttachments.Open;
            if dmAxiom.qryMatterAttachments.State in [dsBrowse] then
               dmAxiom.qryMatterAttachments.insert;
            AParentDocID := StrToInt(dmAxiom.DocID);
            dmAxiom.qryMatterAttachments.FieldByName('fileid').AsString := FileID;
            dmAxiom.qryMatterAttachments.FieldByName('nmatter').AsString := MatterString(FileID,'NMATTER');
            dmAxiom.qryMatterAttachments.FieldByName('auth1').AsString := dmAxiom.UserID;
            dmAxiom.qryMatterAttachments.FieldByName('D_CREATE').AsDateTime := AEmailDateTime;  // RwUTCToLocal(Msg.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);
            dmAxiom.qryMatterAttachments.FieldByName('IMAGEINDEX').AsInteger := 4;
            dmAxiom.qryMatterAttachments.FieldByName('file_extension').AsString := 'msg';
            dmAxiom.qryMatterAttachments.FieldByName('EMAIL_SENT_TO').AsString := Msg.PropByName(PR_DISPLAY_TO).AsString;
            ADocDescr := Msg.PropByName(PR_SUBJECT).AsString;
            dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := ADocDescr;
            dmAxiom.qryMatterAttachments.FieldByName('DESCR').AsString := ADocDescr;  //Trim(Copy(NewMsg.PropByName(PR_BODY).AsString,0, 50)+'...');  //Copy(NewMsg.GetMessagePlainText,0, 50);  //NewMsg.PropByName(PR_SUBJECT).AsString;
            dmAxiom.qryMatterAttachments.FieldByName('NPRECCATEGORY').AsInteger := SystemInteger('EMAIL_DFLT_CATEGORY');
            dmAxiom.qryMatterAttachments.FieldByName('NPRECCLASSIFICATION').AsInteger := SystemInteger('EMAIL_DFLT_CLASSIFICATION');
            dmAxiom.qryMatterAttachments.FieldByName('EMAIL_FROM').AsString := Msg.PropByName(PR_SENDER_NAME).AsString;

            if (SystemInteger('DFLT_DOC_SAVE_OPTION') = 0) then
            begin
               bStream := dmAxiom.qryMatterAttachments. CreateBlobStream(dmAxiom.qryMatterAttachments.fieldByname('DOCUMENT'), bmReadWrite);
               Randomize;
               RandFile := IntToStr(RandomRange(100, 10000));
               tmpFileName := dmAxiom.GetEnvVar('TMP')+'\' + 'axeml' + RandFile + '.msg';
               Msg.SaveToFile(tmpFileName );
               fStream := TFileStream.Create(tmpFileName, fmOpenRead);
               bStream.CopyFrom(fStream, fStream.Size);
               fStream.free;
               bStream.free;
               dmAxiom.qryMatterAttachments.Post;
//               dmAxiom.uniInsight.Commit;
               DeleteFile(tmpFileName);
            end
            else
            begin
               try
                  ANewDocName := sSubject + '_' + '[DOCSEQUENCE]'+'.msg';
                  AParsedDocName := ParseMacros(ANewDocName, TableInteger('MATTER','FILEID',FileID,'NMATTER'));

                  ADir := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\';
                  AParsedDir := ParseMacros(ADir, TableInteger('MATTER','FILEID',FileID,'NMATTER'));

                  // check directory exists, if not create it
                  if not DirectoryExists(AParsedDir) then
                     ForceDirectories(AParsedDir);

                  try
                     Msg.SaveToFile(AParsedDir + AParsedDocName);
                  except
                     on e: Exception do
                     begin
                        MessageDlg('Error saving Email: '#13#13 + E.Message, mtError, [mbOK], 0);
                        dmAxiom.qryMatterAttachments.Cancel;
//                        dmAxiom.uniInsight.Rollback;
                        Exit;
                     end;
                  end;

                  if (SystemString('EMAIL_SEPARATE_ATTACHMENTS') = 'Y') then
                  begin
                     Attachments := Msg.Attachments;
                     Attachments.Fields.Add(PR_ATTACH_NUM);
                     Attachments.Fields.Add(PR_ATTACH_LONG_FILENAME);
                     Attachments.Fields.Add(PR_ATTACH_FILENAME);
                     Attachments.Open;
                     Attachments.First;
                     while not Attachments.EOF do
                     begin
//                        Attachment := Msg.OpenAttachment(AttTable.FieldByName(PR_ATTACH_NUM).AsInteger, alReadOnly, False);
                        Attachment := Attachments.OpenAttachment;

                        DispName := Attachment.PropByName(PR_DISPLAY_NAME).AsString;

                        if DispName = '' then
                           DispName := ExtractFileName(Attachment.PropByName(PR_ATTACH_FILENAME).AsString);

                        if DispName = '' then
                           DispName := ExtractFileName(Attachment.PropByName(PR_ATTACH_LONG_FILENAME).AsString);

                        while Pos('/', DispName) > 0 do
                           DispName[Pos('/', DispName)] := '.';

                        while Pos('\', DispName) > 0 do
                           DispName[Pos('\', DispName)] := '.';

                        AExt := ExtractFileExt(DispName);
                        ADispName := Copy (DispName,1, Length(DispName)- Length(AExt));
                        ADispName := ADispName + '_' + '[DOCSEQUENCE]';
                        DispName := ADispName + AExt;

//                        OldDocName := tmpdir + DispName;
//                        ParsedOldDocName := ParseMacros(OldDocName, TableInteger('MATTER','FILEID',FileID,'NMATTER'));
                        VarDocName := AParsedDir + DispName;
                        ParsedVarDocName := ParseMacros(VarDocName, TableInteger('MATTER','FILEID',FileID,'NMATTER'));
                        Attachment.SaveToFile(ParsedVarDocName);

 //                       VarDocName := AParsedDir + DispName;
 //                       ParsedVarDocName := ParseMacros(VarDocName, TableInteger('MATTER','FILEID',FileID,'NMATTER'));
 //                       if (ParsedVarDocName <> ParsedOldDocName) then
 //                          ADocumentSaved := WriteFileToDisk(ParsedVarDocName, ParsedOldDocName, True);

                        WriteFileDetailsToDB(AParentDocID, ParsedVarDocName, FileID, ADocDescr);
                        Attachments.Next;
                     end;
                  end;

                  dmAxiom.qryMatterAttachments.FieldByName('display_path').AsString := AParsedDir + AParsedDocName;
                  dmAxiom.qryMatterAttachments.FieldByName('path').AsString := IndexPath(AParsedDir, 'DOC_SHARE_PATH') + AParsedDocName;
                  dmAxiom.qryMatterAttachments.Post;
               except
                  on e: Exception do
                  begin
                     MessageDlg('Error saving Email:'#13#13 + E.Message, mtError, [mbOK], 0);
                     dmAxiom.qryMatterAttachments.Cancel;
//                     dmAxiom.uniInsight.Rollback;
                  end;
               end;
            end;
         end;
      end;
   except
//      on e: Exception do
//      begin
//         MessageDlg('Error whilst trying to read incoming EMail:'#13#13 + E.Message, mtError, [mbOK], 0);
//         dmAxiom.uniInsight.Rollback;
//      end;
   end;
end;

function TfrmEmailMsgListener.WriteFileToDisk(var ANewDocName: string; AOldDocName: string; ADeleteFile: boolean): boolean;
var
   NewDocName{, AParsedDocName}: string;
   ADocumentSaved: boolean;
   AError: integer;
begin
   ADocumentSaved := True;

   if (ANewDocName <> '') then
   begin
      if not DirectoryExists(ExtractFileDir(ANewDocName)) then
         ForceDirectories(ExtractFileDir(ANewDocName));
   end;

   try
      if not CopyFile(PChar(AOldDocName) ,pchar(ANewDocName), true) then
      begin
         AError := GetLastError;
         case AError of
            80: begin
                   if MessageBox(Self.Handle, pchar('File [' + ANewDocName + '] already exists. Do you want to overwrite it?' ), 'DragON', MB_YESNO + MB_ICONQUESTION) = IDYES then
                      ADocumentSaved := CopyFile(PChar(OldDocName) ,pchar(ANewDocName), false)
                   else
                      ADocumentSaved := False;
                end;
            82: begin
                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The directory or file could not be created.'), 'DragON', MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            5:  begin
                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  Access denied.'), 'DragON', MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            39,112: begin
                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The disk is full!'), 'DragON', MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            111:begin
                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The filename is to long!'), 'DragON', MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            53 :begin
                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The network path was not found!'), 'DragON', MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            3:  begin
                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The system cannot find the path specified!'), 'DragON', MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
            2:  begin
                  MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The system cannot find the file specified!'), 'DragON', MB_OK + MB_ICONERROR);
                  ADocumentSaved := False;
                end;
         else
            MessageBox(Self.Handle, pchar('There was an error during the saving of the document.  The document was not saved. Error: ' + IntTostr(AError)), 'DragON', MB_OK + MB_ICONERROR);
            ADocumentSaved := False;
         end;
      end;
      if (ADeleteFile and ADocumentSaved) then
         DeleteFile(AOldDocName);
   except
      on E: Exception do
      begin
         MessageBox(Self.Handle, pchar('There was an Error during the saving of the document.  The document was not saved: ' + E.Message), 'DragON', MB_OK + MB_ICONERROR);
         ADocumentSaved := False;
      end;
   end;
   Result := ADocumentSaved;
end;


procedure TfrmEmailMsgListener.MsgStoreEventsCriticalError(Sender: TObject;
  AMsgStore: IRwMapiMsgStore; AObjectID: OleVariant;
  AMapiError: TMAPIERROR);
var
  LPath: string;
  LTmp: string;
  F: TextFile;
begin
   try
      LTmp := '';
       //write the error message to file
      try
         if FileExists(ExtractFilePath(Application.EXEName) + 'Insight.INI') then
            FINIstartup := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'Insight.INI')
         else
            FINIstartup := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'Axiom.INI');
//         FINIstartup := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'Axiom.INI');
         LTmp := FINIstartup.ReadString('Main', 'LogPath', '');
         if LTmp <> '' then
            LPath := LTmp + '\';
         AssignFile(F,LPath + 'MAPI.LOG');
         if not FileExists(LPath + 'MAPI.LOG') then
            Rewrite(F);

         try
            Append(F);
         except
            on EFCreateError do
               EFCreateError.CreateFmt('%s',['Insight Error: '+ #13#10 + 'There was an error trying to create/open MAPI.LOG. Please ensure you have read/write access to the directory and file.']);
            on EReadError do
               EReadError.Create('Insight Error: '+#13#10 + 'There was an error trying to read from MAPI.LOG.');
            on EWriteError do
               EWriteError.Create('Insight Error: '+#13#10 + 'There was an error trying to write to MAPI.LOG.');
         end;
         WriteLn(F,dmAxiom.UserID +' - ' + FormatDateTime('yyyy-mm-dd hh:mm:ss', now) + ' : OnCriticalError (MsgStore: ' + GetSenderMsgStore(Sender)+')');
         CloseFile(F);
      except
         on EFCreateError do
            EFCreateError.CreateFmt('%s',['Insight Error: '+ #13#10 + 'There was an error trying to create/open MAPI.LOG. Please ensure you have read/write access to the directory and file.']);
         on EReadError do
            EReadError.Create('Insight Error: '+#13#10 + 'There was an error trying to read from MAPI.LOG.');
         on EWriteError do
            EWriteError.Create('Insight Error: '+#13#10 + 'There was an error trying to write to MAPI.LOG.');
      end;

       // now alos display error message
   except
       on EMAPI_NOT_FOUND do DoNothing;  // lets do nothing
   end;
end;

procedure TfrmEmailMsgListener.DoNothing;
begin
//function stub only.  here to trap EAbort errors and swallow them
end;

function TfrmEmailMsgListener.GetSenderMsgStore(ASender: TObject): string;
begin
   Result := TRwMapiMsgStoreEvents(ASender).MsgStore.PropByName(PR_DISPLAY_NAME).AsString;
end;

procedure TfrmEmailMsgListener.FormCreate(Sender: TObject);
begin
//   dmAxiom.MapiSession.UseOnlineStore := True;  // necessary for Exchange/Outlook 2003
//   MsgStoreEvents.Start(dmAxiom.MsgStore);
   tmpdir := GetEnvironmentVariable('TMP')+'\';
end;


procedure TfrmEmailMsgListener.MsgStoreEventsObjectCreated(Sender: TObject;
  ObjectEntryID: TRwMapiEntryID; ObjectType: TRwMapiObjectType;
  ParentEntryID, OldObjectEntryID, OldParentEntryID: TRwMapiEntryID;
  const ChangedProperties: IRwMapiPropList);
var
   StrMsgId: PChar;
   Parent: IRwMAPIProp;
   ObjType: TRwMAPIObjectType;
   LFolder: string;
   Fldr: IRwMapiFolder;
   MAPIObject: IRwMAPIWrapper;
   MAPIPropObject: IRwMAPIProp;
begin
      {$IFDEF LOGMSG}
      AssignFile(F,'c:\traymonitor.txt');
      Rewrite(F);
      Append(F);
      {$ENDIF}
//      dmAxiom.MsgStore.OpenFolderByType(ftInbox);
      
      if (ObjectType = otMessage) then
      begin
         Parent := dmAxiom.MAPISession.OpenEntry(ParentEntryID, ObjType) as IRwMAPIProp;

         if not Assigned(Parent) then
         begin
            // Try to get the parent from the object itself
            MAPIObject := dmAxiom.MAPISession.FindEntry(ObjectEntryID, ObjType);
            if Assigned(MAPIObject) and (MAPIObject.QueryInterface(IID_IRwMAPIProp, MAPIPropObject) = S_OK) then
               if MAPIPropObject.HasProp(PR_PARENT_ENTRYID) then
               begin
                  // Get the ParentEntryID from the object itself (instead of using the value supplied by the notification system)
                  ParentEntryID := MAPIPropObject.PropByName(PR_PARENT_ENTRYID).Value;
                  Parent := dmAxiom.MAPISession.FindEntry(ParentEntryID, ObjType) as IRwMAPIProp;
               end;
         end;

         if Parent.PropByName(PR_FOLDER_TYPE).AsInteger =  2 {Search Folder} then exit; // Ignore objects created in SearchFolders.

         if  Parent.PropByName(PR_DISPLAY_NAME).AsString = 'Inbox' then // dmAxiom.MsgStore.CompareEntryIDs(dmAxiom.InboxFolderID, ParentEntryID) then
         begin
            try
               StrMsgId := StrNew(PChar(EntryIDToStr(ObjectEntryID)));
               PostMessage(Self.Handle, WM_NEWMESSAGE, Integer(StrMsgId), 0);
            except
               //
            end;
         end
         else
         begin
            Fldr := dmAxiom.MsgStore.OpenFolder(ParentEntryID);
            LFolder := Fldr.PropByName(PR_DISPLAY_NAME).AsString;
            if ((LFolder = 'Sent Items') or (LFolder = 'Sent Mail')) then
            {(dmAxiom.MsgStore.CompareEntryIDs(dmAxiom.SentItemsFolderID, ParentEntryID) or
             dmAxiom.MsgStore.CompareEntryIDs(dmAxiom.OutboxFolderID, ParentEntryID)) then }
            begin
               try
                  StrMsgId := StrNew(PChar(EntryIDToStr(ObjectEntryID)));
                  PostMessage(Self.Handle, WM_NEWMESSAGE, Integer(StrMsgId), 0);
               except
               //
               end;
            end;
         end;
      end;
end;

procedure TfrmEmailMsgListener.MsgStoreEventsObjectMoved(Sender: TObject;
  ObjectEntryID: TRwMapiEntryID; ObjectType: TRwMapiObjectType;
  ParentEntryID, OldObjectEntryID, OldParentEntryID: TRwMapiEntryID;
  const ChangedProperties: IRwMapiPropList);
var
   StrMsgId: PChar;
   LFolder: string;
   Fldr: IRwMapiFolder;
begin
   if (ObjectType = otMessage)then
   begin
      if RwVarArrayCount(ParentEntryID) > 0 then
      begin
         try
            Fldr := dmAxiom.MsgStore.OpenFolder(ParentEntryID);
            LFolder := Fldr.PropByName(PR_DISPLAY_NAME).AsString;
            if LFolder = 'Sent Items' {dmAxiom.MsgStore.CompareEntryIDs(dmAxiom.SentItemsFolderID, ANotifInfo.ParentEntryID)} then
            begin
               try
                  StrMsgId := StrNew(PChar(EntryIDToStr(ObjectEntryID)));
                  PostMessage(Self.Handle, WM_NEWMESSAGE, Integer(StrMsgId), 0);
               except
                  //
               end;
            end;
         except
            //
         end;
      end;
   end;
end;

procedure TfrmEmailMsgListener.MsgStoreEventsNewMessage(Sender: TObject;
  FolderID, MessageID: TRwMapiEntryID;
  const MessageClass: TRwMapiString);
var
   MsgStore: IRwMapiMsgStore;
   Folder: IRwMapiFolder;
   Msg: IRwMapiMessage;
   StrMsgId: PChar;
begin
   if (MessageClass = 'IPM.NOTE') then
   begin
      if dmAxiom.MsgStore.CompareEntryIDs(dmAxiom.InboxFolderID, FolderID) then
      begin
         try
            StrMsgId := StrNew(PChar(EntryIDToStr(MessageID)));
            PostMessage(Self.Handle, WM_NEWMESSAGE, Integer(StrMsgId), 0);
         except
               //
         end;
      end
      else
      if dmAxiom.MsgStore.CompareEntryIDs(dmAxiom.SentItemsFolderID, FolderID) then
      begin
         try
            StrMsgId := StrNew(PChar(EntryIDToStr(MessageID)));
            PostMessage(Self.Handle, WM_NEWMESSAGE, Integer(StrMsgId), 0);
         except
               //
         end;
      end;
   end;

{   MsgStore := TRwMapiMsgStoreEvents(Sender) as IRwMapiMsgStore;
   Folder := MsgStore.OpenFolder(FolderID);
//  Msg := MsgStore.OpenMessage(MessageID);
   StrMsgId := StrNew(PChar(EntryIDToStr(MessageID)));
   PostMessage(Self.Handle, WM_NEWMESSAGE, Integer(StrMsgId), 0); }
end;

procedure TfrmEmailMsgListener.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   try
      MsgStoreEvents.Stop;
   except
   //
   end;
end;

end.
