unit eMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeelPainters, ImgList, ComCtrls,
  fRwMapiV3FolderDialog, cxMemo, cxRichEdit, cxSplitter, cxListView,
  cxLabel, cxContainer, cxEdit, cxTextEdit, StdCtrls, cxButtons,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  dxBar, cxControls, dxStatusBar, uRwSHDocVw_TLB, uRwMapiV3Session, RwMAPI_TLB,
  OleCtrls, uRwWebBrowser, cxPC, fmxutils, cxLookAndFeels;

type
  TfrmMessage = class(TForm)
    dxBarManager1: TdxBarManager;
    StatusBar: TdxStatusBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    LMDSimplePanel1: TLMDSimplePanel;
    panAttachments: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    lvAttachments: TcxListView;
    Splitter: TcxSplitter;
    MapiFolderDialog: TRwMapiFolderDialogV3;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    lblFrom: TLabel;
    lblTo: TLabel;
    lblCC: TLabel;
    LblSubject: TLabel;
    lblSubjectValue: TLabel;
    lblCCValue: TLabel;
    lblToValue: TLabel;
    lblFromValue: TLabel;
    lblSent: TLabel;
    lblSentValue: TLabel;
    ImageList: TImageList;
    pagMain: TcxPageControl;
    tabRTF: TcxTabSheet;
    tabHTML: TcxTabSheet;
    MemoRTFText: TcxRichEdit;
    WebBrowser: TRwWebBrowser;
    tabRAW: TcxTabSheet;
    MemoRawText: TcxMemo;
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure lvAttachmentsDblClick(Sender: TObject);
    procedure lvAttachmentsInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure lvAttachmentsDeletion(Sender: TObject; Item: TListItem);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
  private
    { Private declarations }
    FTempDir: string;
    FSession: TRwMapiSessionV3;
    FMessage: IRwMapiMessage;
    FAddressbook: IRwMapiAddressbook;
    procedure SetAttachmentListBox(const AVisible: Boolean);
    function CreateReply: IRwMapiMessage;
  public
    { Public declarations }
    procedure LoadMessage(const ASession: TRwMapiSessionV3; const AMessage: IRwMapiMessage);
  end;

var
  frmMessage: TfrmMessage;

implementation

{$R *.dfm}

uses
   uRwSysUtils, uRwDateTimeUtils, uRwBoxes, uRwMapiTagsH, uRwMapiV3Utils,
   ShellApi, MAPINewMessage, AxiomData, MiscFunc;

{ TFrmMessage }

type
  TAttachmentData = class
    AttNumber: Integer;
    DisplayName: string;
    ContentID: string;
  end;

procedure TFrmMessage.LoadMessage(const ASession: TRwMapiSessionV3; const AMessage: IRwMapiMessage);
var
   AttTable: IRwMapiTable;
   MsgText, DispName: TRwMapiString;
   MessageTextFormat: TRwMapiMessageTextFormat;
   AttItem: TListItem;
   Attachment: IRwMapiAttachment;
   i: Integer;
 //  StrStream: TStringStream;
   MailUser: IRwMapiMailUser;
begin
   FSession := ASession;
   FMessage := AMessage;
   FAddressbook := ASession.GetAddressBook(False);

   lvAttachments.Items.Clear;
   SetAttachmentListBox(False);

   lblFromValue.Caption    := FMessage.PropByName(PR_SENDER_NAME).AsString;
   lblToValue.Caption      := FMessage.PropByName(PR_DISPLAY_TO).AsString;
   lblCCValue.Caption      := FMessage.PropByName(PR_DISPLAY_CC).AsString;
   lblSubjectValue.Caption := FMessage.PropByName(PR_SUBJECT).AsString;

   lblSentValue.Caption    :=
     FormatDateTime('ddd dd-mm-yyyy hh:mm',
       RwUTCToLocal(
         FMessage.PropByName(PR_CLIENT_SUBMIT_TIME).AsDateTime
       )
     );

 {  StatusBar.Panels[0].Text := 'Delivered on: ' +
     FormatDateTime('ddd dd-mm-yyyy hh:mm',
       RwUTCToLocal(
         FMessage.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime
       )
     );  }

//   FMessage.DisplayProperties;
   // get the attachments
   lvAttachments.Items.Clear;
   AttTable := FMessage.GetAttachmentTable;
   AttTable.SetFields(VarArrayOf([PR_ATTACH_NUM]));
   AttTable.First;
   while not AttTable.EOF do
   begin
      Attachment := FMessage.OpenAttachment(AttTable.FieldByName(PR_ATTACH_NUM).AsInteger, alReadOnly, False);

      DispName := Attachment.PropByName(PR_DISPLAY_NAME).AsString;
      if DispName = '' then
         DispName := ExtractFileName(Attachment.PropByName(PR_ATTACH_FILENAME).AsString);
      if DispName = '' then
         DispName := ExtractFileName(Attachment.PropByName(PR_ATTACH_LONG_FILENAME).AsString);

      SetAttachmentListBox(True);
      AttItem := lvAttachments.Items.Add;
      AttItem.ImageIndex := 6;
      AttItem.Data := TAttachmentData.Create;
      AttItem.Caption := DispName;
      TAttachmentData(AttItem.Data).AttNumber   := AttTable.FieldByName(PR_ATTACH_NUM).AsInteger;
      TAttachmentData(AttItem.Data).DisplayName := DispName;
      TAttachmentData(AttItem.Data).ContentID   := Attachment.PropByName(PR_ATTACH_CONTENT_ID).AsString;

      AttTable.Next;
   end;

   // set the text
   MemoRawText.Lines.Text := FMessage.GetRawMessageText;

   MsgText := FMessage.GetMessageText(MessageTextFormat);
   case MessageTextFormat of
     mtfPlainText:
     begin
       MemoRTFText.Clear;
       Self.Caption := lblSubjectValue.Caption + ' - Message (Plain Text)';
       MemoRTFText.Properties.PlainText := True;
       MemoRTFText.Text := MsgText;

       WebBrowser.Clear;
       pagMain.ActivePageIndex := 0;
     end;

     mtfRTF:
     begin
       MemoRTFText.Clear;
       Self.Caption := lblSubjectValue.Caption + ' - Message (RTF)';
       MemoRTFText.Properties.PlainText := False;
       MemoRTFText.Text := MsgText;

 //      StrStream := TStringStream.Create(MsgText);
 //      try
 //        StrStream.Position := 0;
 //        RichView1.LoadRTFFromStream(StrStream);
 //        RichView1.Format;
 //      finally
 //        StrStream.Free;
 //      end;

       WebBrowser.Clear;
       pagMain.ActivePageIndex := 0;
     end;

     mtfHTML:
     begin
       Self.Caption := lblSubjectValue.Caption + ' - Message (HTML)';
       WebBrowser.Source := MsgText;

       if RwSameText(Copy(MemoRawText.Text,1,7), '{\rtf1\') then
       begin
         MemoRTFText.Text := MemoRawText.Text;

       end else
       begin
         MemoRTFText.Clear;

       end;
       MemoRTFText.Lines.Text := MsgText;
       pagMain.ActivePageIndex := 1;
     end;
   end;

   // get the email address in SMTP format
   if FSession.LogonInfo.UseExtendedMapi and FMessage.HasProp(PR_SENDER_ENTRYID) then
   begin
      MailUser := FAddressbook.OpenMailUser(FMessage.PropByName(PR_SENDER_ENTRYID).Value, alReadOnly, False);
      try
         if MailUser.HasProp(PR_SMTP_EMAILADDRESS) then   // the sender was probably an exchange user
            lblFromValue.Caption := lblFromValue.Caption + Format(' (%s)',[MailUser.PropByName(PR_SMTP_EMAILADDRESS).AsString])
         else
            lblFromValue.Caption := lblFromValue.Caption + Format(' (%s)',[MailUser.PropByName(PR_EMAIL_ADDRESS).AsString]);
      except
         lblFromValue.Caption := lblFromValue.Caption + Format(' (%s)',[MailUser.PropByName(PR_EMAIL_ADDRESS).AsString]);
      end;
   end;
end;

procedure TFrmMessage.SetAttachmentListBox(const AVisible: Boolean);
begin
  if AVisible then
  begin
    panAttachments.Visible := True;
    Splitter.Visible := True;
    Splitter.Top := panAttachments.Top + 3;
  end else
  begin
    panAttachments.Visible := False;
    Splitter.Visible := False;
  end;
end;


procedure TfrmMessage.dxBarButton3Click(Sender: TObject);
var
  FrmNewMessage: TFrmNewMessage;
  Reply: IRwMapiMessage;
  ConvIndx: OleVariant;
  Recips: IRwMapiRecipientTable;
begin
   Reply := CreateReply;

   Recips := FAddressbook.GetRecipientTable;

   Recips.Insert;
   Recips.FieldByName(PR_RECIPIENT_TYPE).AsInteger := rtTo;
   Recips.FieldByName(PR_DISPLAY_NAME).Value := FMessage.PropByName(PR_SENDER_NAME).Value;
   Recips.FieldByName(PR_ADDRTYPE).Value := FMessage.PropByName(PR_SENDER_ADDRTYPE).Value;
   Recips.FieldByName(PR_EMAIL_ADDRESS).Value := FMessage.PropByName(PR_SENDER_EMAIL_ADDRESS).Value;
   Recips.FieldByName(PR_ENTRYID).Value := FMessage.PropByName(PR_SENDER_ENTRYID).Value;

   Reply.PropByName(PR_SUBJECT).AsString := 'RE: ' + FMessage.PropByName(PR_SUBJECT).AsString;
   Reply.ModifyRecipients(moReplaceAll, Recips);
   ConvIndx := FMessage.PropByName(PR_CONVERSATION_INDEX).Value;
   Reply.PropByName(PR_CONVERSATION_INDEX).Value := RwCreateConversationIndex(ConvIndx);

   FrmNewMessage := TFrmNewMessage.Create(Application);
   FrmNewMessage.Initialize(Self.FSession, Reply, Recips);
   FrmNewMessage.Show;
   Self.Close;
end;

procedure TfrmMessage.dxBarButton7Click(Sender: TObject);
var
  FrmNewMessage: TFrmNewMessage;
  Reply: IRwMapiMessage;
  ConvIndx: OleVariant;
  Recips: IRwMapiRecipientTable;
  OldMsgRecips: IRwMapiTable;
begin
   Reply := CreateReply;

   Recips := FAddressbook.GetRecipientTable;

   // Forward all
   OldMsgRecips := FMessage.GetRecipientTable;
   OldMsgRecips.SetFields(VarArrayOf([PR_RECIPIENT_TYPE, PR_DISPLAY_NAME, PR_ADDRTYPE, PR_EMAIL_ADDRESS, PR_ENTRYID]));
   OldMsgRecips.First;
   while not OldMsgRecips.EOF do
   begin
      if OldMsgRecips.FieldByName(PR_RECIPIENT_TYPE).AsInteger <> rtTo then
      begin
         Recips.Insert;
         Recips.FieldByName(PR_RECIPIENT_TYPE).AsInteger := rtTo;
         Recips.FieldByName(PR_DISPLAY_NAME).Value := OldMsgRecips.FieldByName(PR_DISPLAY_NAME).Value;
         Recips.FieldByName(PR_ADDRTYPE).Value := OldMsgRecips.FieldByName(PR_ADDRTYPE).Value;
         Recips.FieldByName(PR_EMAIL_ADDRESS).Value := OldMsgRecips.FieldByName(PR_EMAIL_ADDRESS).Value;
         Recips.FieldByName(PR_ENTRYID).Value := OldMsgRecips.FieldByName(PR_ENTRYID).Value;
      end;
      OldMsgRecips.Next;
   end;

   Recips.Insert;
   Recips.FieldByName(PR_RECIPIENT_TYPE).AsInteger := rtTo;
   Recips.FieldByName(PR_DISPLAY_NAME).Value := FMessage.PropByName(PR_SENDER_NAME).Value;
   Recips.FieldByName(PR_ADDRTYPE).Value := FMessage.PropByName(PR_SENDER_ADDRTYPE).Value;
   Recips.FieldByName(PR_EMAIL_ADDRESS).Value := FMessage.PropByName(PR_SENDER_EMAIL_ADDRESS).Value;
   Recips.FieldByName(PR_ENTRYID).Value := FMessage.PropByName(PR_SENDER_ENTRYID).Value;

   Reply.PropByName(PR_SUBJECT).AsString := 'RE: ' + FMessage.PropByName(PR_SUBJECT).AsString;
   Reply.ModifyRecipients(moReplaceAll, Recips);
   ConvIndx := FMessage.PropByName(PR_CONVERSATION_INDEX).Value;
   Reply.PropByName(PR_CONVERSATION_INDEX).Value := RwCreateConversationIndex(ConvIndx);

   FrmNewMessage := TFrmNewMessage.Create(Application);
   FrmNewMessage.Initialize(Self.FSession, Reply, Recips);
   FrmNewMessage.Show;
   Self.Close;

end;

procedure TfrmMessage.dxBarButton4Click(Sender: TObject);
var
  FrmNewMessage: TFrmNewMessage;
  DefMsgStore: IRwMapiMsgStore;
  OutBox: IRwMapiFolder;
  ForwardMsg: IRwMapiMessage;
  ConvIndx: OleVariant;
begin
   DefMsgStore := FSession.GetDefaultMsgStore(alReadWrite);
   OutBox := DefMsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
   ForwardMsg := OutBox.CreateMessage('IPM.Message');

   FMessage.CopyTo(ForwardMsg,
     VarArrayOf([
       PR_CLIENT_SUBMIT_TIME
       , PR_MESSAGE_DELIVERY_TIME
       , PR_MESSAGE_DOWNLOAD_TIME
       , PR_MESSAGE_FLAGS
       , PR_MESSAGE_ATTACHMENTS
       , PR_MESSAGE_RECIPIENTS
       , PR_DISPLAY_TO
       , PR_DISPLAY_CC
       , PR_DISPLAY_BCC
       , PR_ORIGINATOR_DELIVERY_REPORT_REQUESTED
       , PR_READ_RECEIPT_ENTRYID
       , PR_READ_RECEIPT_REQUESTED
       , PR_REPORT_ENTRYID
       , PR_SENTMAIL_ENTRYID
       , PR_SUBJECT_PREFIX
       , PR_RCVD_REPRESENTING_ADDRTYPE
       , PR_RCVD_REPRESENTING_EMAIL_ADDRESS
       , PR_RCVD_REPRESENTING_ENTRYID
       , PR_RCVD_REPRESENTING_NAME
       , PR_RCVD_REPRESENTING_SEARCH_KEY
       , PR_RECEIVED_BY_ADDRTYPE
       , PR_RECEIVED_BY_EMAIL_ADDRESS
       , PR_RECEIVED_BY_ENTRYID
       , PR_RECEIVED_BY_NAME
       , PR_RECEIVED_BY_SEARCH_KEY
       , PR_REPLY_RECIPIENT_ENTRIES
       , PR_REPLY_RECIPIENT_NAMES
       , PR_SENDER_ADDRTYPE
       , PR_SENDER_EMAIL_ADDRESS
       , PR_SENDER_ENTRYID
       , PR_SENDER_NAME
       , PR_SENDER_SEARCH_KEY
       , PR_SENT_REPRESENTING_ADDRTYPE
       , PR_SENT_REPRESENTING_EMAIL_ADDRESS
       , PR_SENT_REPRESENTING_ENTRYID
       , PR_SENT_REPRESENTING_NAME
       , PR_SENT_REPRESENTING_SEARCH_KEY
       , PR_TRANSPORT_MESSAGE_HEADERS])
     , True
   );

   ForwardMsg.PropByName(PR_SENT_REPRESENTING_ADDRTYPE).Value      :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_ADDRTYPE).Value;
   ForwardMsg.PropByName(PR_SENT_REPRESENTING_EMAIL_ADDRESS).Value :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_EMAIL_ADDRESS).Value;
   ForwardMsg.PropByName(PR_SENT_REPRESENTING_ENTRYID).Value       :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_ENTRYID).Value;
   ForwardMsg.PropByName(PR_SENT_REPRESENTING_NAME).Value          :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_NAME).Value;
   ForwardMsg.PropByName(PR_SENT_REPRESENTING_SEARCH_KEY).Value    :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_SEARCH_KEY).Value;

   ForwardMsg.PropByName(PR_SUBJECT).AsString := 'FW: ' + FMessage.PropByName(PR_SUBJECT).AsString;
   ConvIndx := FMessage.PropByName(PR_CONVERSATION_INDEX).Value;
   ForwardMsg.PropByName(PR_CONVERSATION_INDEX).Value := RwCreateConversationIndex(ConvIndx);

   FrmNewMessage := TFrmNewMessage.Create(Application);
   FrmNewMessage.Initialize(Self.FSession, ForwardMsg);
   FrmNewMessage.Show;
   Self.Close;
end;

function TFrmMessage.CreateReply: IRwMapiMessage;
var
  DefMsgStore: IRwMapiMsgStore;
  OutBox: IRwMapiFolder;
begin
  DefMsgStore := FSession.GetDefaultMsgStore(alReadWrite);
  OutBox := DefMsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
  Result := OutBox.CreateMessage('IPM.Message');

  FMessage.CopyTo(Result,
    VarArrayOf([
      PR_CLIENT_SUBMIT_TIME
      , PR_MESSAGE_DELIVERY_TIME
      , PR_MESSAGE_DOWNLOAD_TIME
      , PR_MESSAGE_FLAGS
      , PR_MESSAGE_ATTACHMENTS
      , PR_MESSAGE_RECIPIENTS
      , PR_DISPLAY_TO
      , PR_DISPLAY_CC
      , PR_DISPLAY_BCC
      , PR_ORIGINATOR_DELIVERY_REPORT_REQUESTED
      , PR_READ_RECEIPT_ENTRYID
      , PR_READ_RECEIPT_REQUESTED
      , PR_REPORT_ENTRYID
      , PR_SENTMAIL_ENTRYID
      , PR_SUBJECT_PREFIX
      , PR_RCVD_REPRESENTING_ADDRTYPE
      , PR_RCVD_REPRESENTING_EMAIL_ADDRESS
      , PR_RCVD_REPRESENTING_ENTRYID
      , PR_RCVD_REPRESENTING_NAME
      , PR_RCVD_REPRESENTING_SEARCH_KEY
      , PR_RECEIVED_BY_ADDRTYPE
      , PR_RECEIVED_BY_EMAIL_ADDRESS
      , PR_RECEIVED_BY_ENTRYID
      , PR_RECEIVED_BY_NAME
      , PR_RECEIVED_BY_SEARCH_KEY
      , PR_REPLY_RECIPIENT_ENTRIES
      , PR_REPLY_RECIPIENT_NAMES
      , PR_SENDER_ADDRTYPE
      , PR_SENDER_EMAIL_ADDRESS
      , PR_SENDER_ENTRYID
      , PR_SENDER_NAME
      , PR_SENDER_SEARCH_KEY
      , PR_SENT_REPRESENTING_ADDRTYPE
      , PR_SENT_REPRESENTING_EMAIL_ADDRESS
      , PR_SENT_REPRESENTING_ENTRYID
      , PR_SENT_REPRESENTING_NAME
      , PR_SENT_REPRESENTING_SEARCH_KEY
      , PR_TRANSPORT_MESSAGE_HEADERS])
    , True
  );
end;


procedure TfrmMessage.dxBarButton1Click(Sender: TObject);
var
  ParentFolder, DestFolder: IRwMapiFolder;
begin
   MapiFolderDialog.MapiSession := FSession;
   MapiFolderDialog.InitialMsgStoreID := FMessage.MsgStore.PropByName(PR_ENTRYID).Value;
   if MapiFolderDialog.Execute then
   begin
     DestFolder := FMessage.MsgStore.OpenFolder(MapiFolderDialog.FolderID, alReadWrite, False);
     ParentFolder := FMessage.MsgStore.OpenFolder(FMessage.PropByName(PR_PARENT_ENTRYID).Value, alReadWrite, False);
     ParentFolder.CopyMessage(FMessage.PropByName(PR_ENTRYID).Value, DestFolder, True);
   end;
end;

procedure TfrmMessage.lvAttachmentsDblClick(Sender: TObject);
var
  Attachment: IRwMapiAttachment;
  tmpFileName: string;
begin
   if not assigned(lvAttachments.Selected) then
      exit;

   Attachment := FMessage.OpenAttachment(TAttachmentData(lvAttachments.Selected.Data).AttNumber, alReadOnly, False);
   try
      tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ Attachment.PropByName(PR_ATTACH_LONG_FILENAME).AsString;
      Attachment.SaveToFile(tmpFileName);

      ExecuteFile(tmpFileName, '', '.', SW_SHOW);
//   Attachment.DisplayProperties;

//      if Attachment.PropByName(PR_ATTACH_METHOD).AsInteger = atEmbeddedMsg then
//         Attachment.GetEmbeddedMessage.DisplayProperties;
   finally
//      DeleteFile(tmpFileName);
   end;
end;

procedure TfrmMessage.lvAttachmentsInfoTip(Sender: TObject;
  Item: TListItem; var InfoTip: String);
begin
   InfoTip := TAttachmentData(Item.Data).DisplayName;
end;

procedure TfrmMessage.lvAttachmentsDeletion(Sender: TObject;
  Item: TListItem);
begin
   TAttachmentData(Item.Data).Free;
end;

procedure TfrmMessage.FormCreate(Sender: TObject);
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
      pagMain.HideTabs := True
   else
   begin
      MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
      Self.Close;
   end;
end;

procedure TfrmMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmMessage.FormDestroy(Sender: TObject);
begin
   if FTempDir <> '' then
      RwRemoveDir(FTempDir, False);
end;

procedure TfrmMessage.dxBarButton2Click(Sender: TObject);
var
  Trash, Folder: IRwMapiFolder;
begin
   if BoxYesNo('Are you sure you want to delete this item?') = mrYes then
   begin
      Folder := FMessage.ParentFolder;
      Trash := FMessage.MsgStore.OpenFolderByType(ftDeleted, alReadWrite, False);
      if FSession.CompareEntryIDs(Folder.PropByName(PR_ENTRYID).Value, Trash.PropByName(PR_ENTRYID).Value) then
         Folder.DeleteMessage(FMessage.PropByName(PR_ENTRYID).Value)
      else
         Folder.CopyMessage(FMessage.PropByName(PR_ENTRYID).Value, Trash, True);
      Self.Close;
      Self.ModalResult := mrCancel;
   end; 
end;

procedure TfrmMessage.dxBarButton5Click(Sender: TObject);
var
  FormMgr: IRwMapiFormMgr;
begin
   FormMgr := FSession.GetFormMgr;
   FormMgr.PrintMessage(FMessage);
end;

end.
