{D5CHK*************************************************************************}
{                                                                              }
{                            RAPware Easy MAPI V3.0                            }
{                                                                              }
{                       Copyright (c) 1999, 2004 RAPWare                       }
{                                                                              }
{******************************************************************************}
unit fMessage;

interface

{$I RAPWare.inc}

uses
  Windows, Messages, Forms, Classes, ActnList, fRwMapiV3FolderDialog,
  Menus, Dialogs, ImgList, Controls, ComCtrls, OleCtrls, uRwSHDocVw_TLB,
  uRwWebBrowser, StdCtrls, ToolWin, ExtCtrls, uRwMapiV3Session, RwMAPI_TLB;

type
  TFrmMessage = class(TForm)
    StatusBar: TStatusBar;
    mmMain: TMainMenu;
    miFile: TMenuItem;
    miSave: TMenuItem;
    miSaveAs: TMenuItem;
    N2: TMenuItem;
    miPrint: TMenuItem;
    N1: TMenuItem;
    miClose: TMenuItem;
    miTools: TMenuItem;
    ImageList: TImageList;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PopupMessageFormat: TPopupMenu;
    miViewPlainText: TMenuItem;
    miViewRTF: TMenuItem;
    miViewHTML: TMenuItem;
    MenuItem1: TMenuItem;
    MapiFolderDialog: TRwMapiFolderDialogV3;
    ActionList: TActionList;
    actClose: TAction;
    Splitter: TSplitter;
    bvlSeperator: TBevel;
    PnlAddress: TPanel;
    LblSubject: TLabel;
    lblFrom: TLabel;
    lblTo: TLabel;
    lblCC: TLabel;
    lblSubjectValue: TLabel;
    lblCCValue: TLabel;
    lblToValue: TLabel;
    lblFromValue: TLabel;
    lblSent: TLabel;
    lblSentValue: TLabel;
    PopupAttachments: TPopupMenu;
    miSaveAttachment: TMenuItem;
    actViewPlainText: TAction;
    actViewRTF: TAction;
    actViewHTML: TAction;
    actViewRAW: TAction;
    miViewRAW: TMenuItem;
    CoolBarMain: TCoolBar;
    tbarMenu: TToolBar;
    tbarTools: TToolBar;
    miView: TMenuItem;
    PlainText1: TMenuItem;
    RTF1: TMenuItem;
    HTML1: TMenuItem;
    N3: TMenuItem;
    RAW1: TMenuItem;
    tbtnViewFormat: TToolButton;
    tbtnClose: TToolButton;
    actSave: TAction;
    actSaveAs: TAction;
    actPrint: TAction;
    N4: TMenuItem;
    miMovetoFolder: TMenuItem;
    actDelete: TAction;
    miDelete: TMenuItem;
    actMoveToFolder: TAction;
    tbtnDelete: TToolButton;
    tbtnMoveToFolder: TToolButton;
    tbtnPrint: TToolButton;
    actSaveAttachmentAs: TAction;
    pcMain: TPageControl;
    tsPlainText: TTabSheet;
    MemoPlainText: TMemo;
    tsRTF: TTabSheet;
    MemoRTFText: TRichEdit;
    tsHTML: TTabSheet;
    WebBrowser: TRwWebBrowser;
    tsRAW: TTabSheet;
    MemoRawText: TMemo;
    panAttachments: TPanel;
    lvAttachments: TListView;
    Label1: TLabel;
    actDisplayProperties: TAction;
    DisplayProperties1: TMenuItem;
    actNewMessage: TAction;
    actReply: TAction;
    actReplyAll: TAction;
    actForward: TAction;
    tbtnReply: TToolButton;
    tbtnReplyAll: TToolButton;
    tbtnForward: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    N5: TMenuItem;
    Reply1: TMenuItem;
    ReplytoAll1: TMenuItem;
    Forward1: TMenuItem;
    procedure lvAttachmentsDblClick(Sender: TObject);
    procedure lvAttachmentsInfoTip(Sender: TObject; Item: TListItem; var InfoTip: String);
    procedure lvAttachmentsDeletion(Sender: TObject; Item: TListItem);
    procedure actViewPlainTextExecute(Sender: TObject);
    procedure actViewRTFExecute(Sender: TObject);
    procedure actViewHTMLExecute(Sender: TObject);
    procedure actViewRAWExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure WebBrowserGetImage(Sender: TMsWebBrowser; OldSource: String; var NewSource: String);
    procedure actCloseExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actSaveAsExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actMoveToFolderExecute(Sender: TObject);
    procedure actSaveAttachmentAsExecute(Sender: TObject);
    procedure actDisplayPropertiesExecute(Sender: TObject);
    procedure actNewMessageExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actReplyExecute(Sender: TObject);
    procedure actReplyAllExecute(Sender: TObject);
    procedure actForwardExecute(Sender: TObject);
  private
    { Private declarations }
    FTempDir: string;
    FSession: TRwMapiSessionV3;
    FMessage: IRwMapiMessage;
    FAddressbook: IRwMapiAddressbook;
    procedure SetAttachmentListBox(const AVisible: Boolean);
    function CreateReply: IRwMapiMessage;
    procedure WebBrowserBeforeNavigate(ASender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
  public
    { Public declarations }
    procedure LoadMessage(const ASession: TRwMapiSessionV3; const AMessage: IRwMapiMessage);
   end;

implementation

{$R *.dfm}
uses
  SysUtils
  {$IFDEF VARIANTS}
  , Variants
  {$ENDIF VARIANTS}
  , uRwSysUtils
  , uRwDateTimeUtils
  , uRwBoxes
  , uRwMapiTagsH
  , uRwMapiV3Utils
  , fNewMessage
  , ShellApi
  ;
  
{ TFrmMessage }

type
  TAttachmentData = class
    AttNumber: Integer;
    DisplayName: string;
    ContentID: string;
  end;

procedure TFrmMessage.FormCreate(Sender: TObject);
{$IFNDEF D6UP}
var
  Button: TToolButton;
{$ENDIF}
begin
  CoolBarMain.EdgeBorders := [ebBottom];

  {$IFDEF D6UP}
  tbarMenu.Menu := mmMain;
  {$ELSE}
  Button := TToolbutton.Create(tbarMenu);
  Button.Parent := tbarMenu;
  Button.MenuItem := miTools;

  Button := TToolbutton.Create(tbarMenu);
  Button.Parent := tbarMenu;
  Button.MenuItem := miView;

  Button := TToolbutton.Create(tbarMenu);
  Button.Parent := tbarMenu;
  Button.MenuItem := miFile;
  {$ENDIF}

  FTempDir := '';

  // disable opening links within the messageform itself
  WebBrowser.OnBeforeNavigate2 := WebBrowserBeforeNavigate;
end;

procedure TFrmMessage.FormDestroy(Sender: TObject);
begin
  if FTempDir <> '' then
    RwRemoveDir(FTempDir, False);
end;

procedure TFrmMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
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
  for i := 0 to pcMain.PageCount - 1 do
    pcMain.Pages[i].TabVisible := False;
  pcMain.ActivePage := tsPlainText;

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

  StatusBar.Panels[0].Text := 'Delivered on: ' +
    FormatDateTime('ddd dd-mm-yyyy hh:mm',
      RwUTCToLocal(
        FMessage.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime
      )
    );

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
      Self.Caption := lblSubjectValue.Caption + ' - Message (Plain Text)';
      MemoPlainText.Text := MsgText;
      actViewPlainText.Enabled := True;

      MemoRTFText.Clear;
      actViewRTF.Enabled := False;

      WebBrowser.Clear;
      actViewHTML.Enabled := False;
      actViewPlainTextExecute(Self);
    end;

    mtfRTF:
    begin
      Self.Caption := lblSubjectValue.Caption + ' - Message (RTF)';
      MemoRTFText.PlainText := False;
      MemoRTFText.Text := MsgText;

//      StrStream := TStringStream.Create(MsgText);
//      try
//        StrStream.Position := 0;
//        RichView1.LoadRTFFromStream(StrStream);
//        RichView1.Format;
//      finally
//        StrStream.Free;
//      end;

      actViewRTF.Enabled := True;

      MemoPlainText.Text := MemoRTFText.Lines.Text;
      actViewPlainText.Enabled := True;

      WebBrowser.Clear;
      actViewHTML.Enabled := False;
      actViewRTFExecute(Self);
    end;

    mtfHTML:
    begin
      Self.Caption := lblSubjectValue.Caption + ' - Message (HTML)';
      WebBrowser.Source := MsgText;
      actViewHTML.Enabled := True;

      if RwSameText(Copy(MemoRawText.Text,1,7), '{\rtf1\') then
      begin
        MemoRTFText.Text := MemoRawText.Text;
        actViewRTF.Enabled := True;
      end else
      begin
        MemoRTFText.Clear;
        actViewRTF.Enabled := False;
      end;
      
      MemoPlainText.Lines.Text := MsgText;
      actViewPlainText.Enabled := True;
      actViewHTMLExecute(Self);
    end;
  end;

  // get the email address in SMTP format
  if FSession.LogonInfo.UseExtendedMapi and FMessage.HasProp(PR_SENDER_ENTRYID) then
  begin
    MailUser := FAddressbook.OpenMailUser(FMessage.PropByName(PR_SENDER_ENTRYID).Value, alReadOnly, False);
    if MailUser.HasProp(PR_SMTP_EMAILADDRESS) then
    begin
      // the sender was probably an exchange user
      lblFromValue.Caption := lblFromValue.Caption + Format(' (%s)',[MailUser.PropByName(PR_SMTP_EMAILADDRESS).AsString])
    end else
      lblFromValue.Caption := lblFromValue.Caption + Format(' (%s)',[MailUser.PropByName(PR_EMAIL_ADDRESS).AsString]);
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

procedure TFrmMessage.lvAttachmentsDblClick(Sender: TObject);
var
  Attachment: IRwMapiAttachment;
begin
  if not assigned(lvAttachments.Selected) then
    exit;

  Attachment := FMessage.OpenAttachment(TAttachmentData(lvAttachments.Selected.Data).AttNumber, alReadOnly, False);
  Attachment.DisplayProperties;

  if Attachment.PropByName(PR_ATTACH_METHOD).AsInteger = atEmbeddedMsg then
    Attachment.GetEmbeddedMessage.DisplayProperties;
end;

procedure TFrmMessage.lvAttachmentsInfoTip(Sender: TObject; Item: TListItem; var InfoTip: String);
begin
  InfoTip := TAttachmentData(Item.Data).DisplayName;
end;

procedure TFrmMessage.lvAttachmentsDeletion(Sender: TObject; Item: TListItem);
begin
  TAttachmentData(Item.Data).Free;
end;

procedure TFrmMessage.actViewPlainTextExecute(Sender: TObject);
begin
  pcMain.ActivePage := tsPlainText;
  tbtnViewFormat.ImageIndex := 51;
end;

procedure TFrmMessage.actViewRTFExecute(Sender: TObject);
begin
  pcMain.ActivePage := tsRTF;
  tbtnViewFormat.ImageIndex := 50;
end;

procedure TFrmMessage.actViewHTMLExecute(Sender: TObject);
begin
  pcMain.ActivePage := tsHTML;
  tbtnViewFormat.ImageIndex := 49;
end;

procedure TFrmMessage.actViewRAWExecute(Sender: TObject);
begin
  pcMain.ActivePage := tsRaw;
  tbtnViewFormat.ImageIndex := 51;
end;

procedure TFrmMessage.WebBrowserGetImage(Sender: TMsWebBrowser; OldSource: String; var NewSource: String);
var
  i: Integer;
  AttachmentData: TAttachmentData;
  Attachment: IRwMapiAttachment;
begin
  if RwSameText(Copy(NewSource,1,4),'cid:') then
  begin
    for i := 0 to lvAttachments.Items.Count - 1 do
    begin
      AttachmentData := TAttachmentData(lvAttachments.Items[i].Data);
      if RwSameText('cid:'+AttachmentData.ContentID, NewSource) then
      begin
        if FTempDir = '' then
        begin
          FTempDir := RwCreateTempDirectory;
          RwCheckDirSlash(FTempDir,True);
        end;
        Attachment := FMessage.OpenAttachment(AttachmentData.AttNumber, alReadOnly, False);
        Attachment.SaveToFile(FTempDir+AttachmentData.DisplayName);
        NewSource := FTempDir+AttachmentData.DisplayName;
        break;
      end;
    end;
  end;
end;

procedure TFrmMessage.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmMessage.actSaveExecute(Sender: TObject);
begin
  FMessage.SaveChanges(smKeepOpenReadWrite);
end;

procedure TFrmMessage.actSaveAsExecute(Sender: TObject);
begin
  if SaveDialog.Execute then
    FMessage.SaveToFile(SaveDialog.FileName);
end;

procedure TFrmMessage.actPrintExecute(Sender: TObject);
var
  FormMgr: IRwMapiFormMgr;
begin
  FormMgr := FSession.GetFormMgr;
  FormMgr.PrintMessage(FMessage);
end;

procedure TFrmMessage.actDeleteExecute(Sender: TObject);
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

procedure TFrmMessage.actMoveToFolderExecute(Sender: TObject);
var
  ParentFolder, DestFolder: IRwMapiFolder;
begin
  inherited;
  MapiFolderDialog.MapiSession := FSession;
  MapiFolderDialog.InitialMsgStoreID := FMessage.MsgStore.PropByName(PR_ENTRYID).Value;
  if MapiFolderDialog.Execute then
  begin
    DestFolder := FMessage.MsgStore.OpenFolder(MapiFolderDialog.FolderID, alReadWrite, False);
    ParentFolder := FMessage.MsgStore.OpenFolder(FMessage.PropByName(PR_PARENT_ENTRYID).Value, alReadWrite, False);
    ParentFolder.CopyMessage(FMessage.PropByName(PR_ENTRYID).Value, DestFolder, True);
  end;
end;

procedure TFrmMessage.actSaveAttachmentAsExecute(Sender: TObject);
var
  Attachment: IRwMapiAttachment;
begin
  inherited;
  if not assigned(lvAttachments.Selected) then
    exit;
    
  Attachment := FMessage.OpenAttachment(TAttachmentData(lvAttachments.Selected.Data).AttNumber, alReadOnly, False);
  SaveDialog.Filter := 'All formats (*.*)|*.*';
  SaveDialog.FileName := Attachment.PropByName(PR_ATTACH_FILENAME).AsString;
  if SaveDialog.Execute then
    Attachment.SaveToFile(SaveDialog.FileName);
end;

procedure TFrmMessage.actDisplayPropertiesExecute(Sender: TObject);
begin
  FMessage.DisplayProperties;
end;

procedure TFrmMessage.actNewMessageExecute(Sender: TObject);
var
  FrmNewMessage: TFrmNewMessage;
begin
  FrmNewMessage := TFrmNewMessage.Create(Application);
  FrmNewMessage.Initialize(Self.FSession);
  FrmNewMessage.Show;
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

procedure TFrmMessage.actReplyExecute(Sender: TObject);
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

procedure TFrmMessage.actReplyAllExecute(Sender: TObject);
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

procedure TFrmMessage.actForwardExecute(Sender: TObject);
var
  FrmNewMessage: TFrmNewMessage;
  DefMsgStore: IRwMapiMsgStore;
  OutBox: IRwMapiFolder;
  ForwardMsg: IRwMapiMessage;
  ConvIndx: OleVariant;
begin
  inherited;
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

procedure TFrmMessage.WebBrowserBeforeNavigate(
  ASender: TObject; const pDisp: IDispatch;
  var URL: OleVariant;
  var Flags: OleVariant;
  var TargetFrameName: OleVariant;
  var PostData: OleVariant;
  var Headers: OleVariant;
  var Cancel: WordBool);
var
  Param: string;
begin
  if URL <> 'about::blank' then
  begin
    Cancel := True;
    Param := URL;
    ShellExecute(0, 'open', PChar(Param), NIL, NIL, SW_SHOWNORMAL);
  end;
end;

end.
