{D5CHK*************************************************************************}
{                                                                              }
{                            RAPware Easy MAPI V3.0                            }
{                                                                              }
{                       Copyright (c) 1999, 2004 RAPWare                       }
{                                                                              }
{******************************************************************************}
unit fNewMessage;

interface

{$I RAPWare.inc}

uses
  Windows, Messages, SysUtils, Forms, Menus, fRwMapiV3FolderDialog, Dialogs,
  Classes, ActnList, ImgList, Controls, ComCtrls, ToolWin, OleCtrls,
  uRwSHDocVw_TLB, uRwWebBrowser, StdCtrls, ExtCtrls, uRwMapiV3Session,
  RwMAPI_TLB;

type
  TFrmNewMessage = class(TForm)
    bvTop: TBevel;
    StatusBar: TStatusBar;
    PnlAddress: TPanel;
    LblSubject: TLabel;
    BtnTo: TButton;
    BtnCC: TButton;
    EdtTo: TEdit;
    EdtCC: TEdit;
    EdtSubject: TEdit;
    pcMain: TPageControl;
    tsPlainText: TTabSheet;
    PlainTxtMessagText: TMemo;
    tsRTF: TTabSheet;
    RichEditMessageText: TRichEdit;
    tsHTML: TTabSheet;
    pcHtml: TPageControl;
    tsHtmlView: TTabSheet;
    HtmlMessageTextHtml: TRwWebBrowser;
    tsHtmlSource: TTabSheet;
    HtmlMessageTextSource: TMemo;
    ImageList: TImageList;
    ActionList: TActionList;
    actSend: TAction;
    actAddAttachment: TAction;
    actCheckNames: TAction;
    actAddressbook: TAction;
    actSaveMessage: TAction;
    actRecipTo: TAction;
    actRecipCC: TAction;
    actFormatTXT: TAction;
    actFormatRTF: TAction;
    actFormatHTM: TAction;
    actLoadTextFromDisk: TAction;
    actReplyTo: TAction;
    popupFormat: TPopupMenu;
    PlainTextMessage1: TMenuItem;
    SendReceive1: TMenuItem;
    HTMLMessage1: TMenuItem;
    OpenDlg: TOpenDialog;
    RwMapiFolderDialog: TRwMapiFolderDialogV3;
    CoolBarMain: TCoolBar;
    tbarMenu: TToolBar;
    tbarTools: TToolBar;
    mmMain: TMainMenu;
    miFile: TMenuItem;
    miSave: TMenuItem;
    miEdit: TMenuItem;
    PlainText1: TMenuItem;
    RTF1: TMenuItem;
    HTML1: TMenuItem;
    N3: TMenuItem;
    miCheckNames: TMenuItem;
    miTools: TMenuItem;
    tbtnSubmit: TToolButton;
    tbtnSave: TToolButton;
    ToolButton1: TToolButton;
    tbtnAddressbook: TToolButton;
    tbtnCheckNames: TToolButton;
    ToolButton2: TToolButton;
    tbtnFormat: TToolButton;
    tbtnAddAttachment: TToolButton;
    ToolButton3: TToolButton;
    miAddrbook: TMenuItem;
    panAttachments: TPanel;
    Label1: TLabel;
    lvAttachments: TListView;
    Splitter: TSplitter;
    tbtnReplyTo: TToolButton;
    actClose: TAction;
    Close1: TMenuItem;
    actDisplayProperties: TAction;
    DisplayProperties1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActionListExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actFormatTXTExecute(Sender: TObject);
    procedure actFormatRTFExecute(Sender: TObject);
    procedure actFormatHTMExecute(Sender: TObject);
    procedure pcHtmlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure actAddAttachmentExecute(Sender: TObject);
    procedure lvAttachmentsDeletion(Sender: TObject; Item: TListItem);
    procedure lvAttachmentsInfoTip(Sender: TObject; Item: TListItem; var InfoTip: String);
    procedure lvAttachmentsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actAddressbookExecute(Sender: TObject);
    procedure SelectRecip(Sender: TObject);
    procedure actCheckNamesExecute(Sender: TObject);
    procedure CheckRecipTable(Sender: TObject);
    procedure actSendExecute(Sender: TObject);
    procedure actLoadTextFromDiskExecute(Sender: TObject);
    procedure actSaveMessageExecute(Sender: TObject);
    procedure actReplyToExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtSubjectExit(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actDisplayPropertiesExecute(Sender: TObject);
  private
    { Private declarations }
    FSession     : TRwMapiSessionV3;
    FAddressbook : IRwMapiAddressbook;
    FRecipTable  : IRwMapiRecipientTable;
    FReplyTable  : IRwMapiRecipientTable;
    FNewMessage  : IRwMapiMessage;
    procedure AddFileAttachment(AFileName: TFileName);
    procedure SetAttachmentListBox(const AVisible: Boolean);
    procedure BrowserGetImageByCID(Sender: TMsWebBrowser; OriginalValue: string; var AImgSrc: String);
    procedure BrowserGetImageByFileName(Sender: TMsWebBrowser; OriginalValue: string; var AImgSrc: String);
    function GetHtmlSource: TRwMAPIString;
    function GetHtmlText: TRwMAPIString;
    procedure AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TAddrBookDlgParams);
    procedure SetMessageProperties;
    procedure LoadMessageProps;
    procedure RefreshCaption;
  public
    { Public declarations }
    procedure Initialize(const ASession: TRwMapiSessionV3; AMessage: IRwMapiMessage = nil; ARecipTable: IRwMapiRecipientTable = nil);
  end;

implementation

{$R *.dfm}
uses
  fLogon
  {$IFDEF VARIANTS}
  , Variants
  {$ENDIF VARIANTS}
  , uRwBoxes
  , uRwMapiTagsH
  , uRwMapiV3Utils
  , uRwMapiV3Message
  , fReplyToList
  ;

type
  TAttachmentData = class
    AttNumber: Integer;
    FileName : TFileName;
    DisplayName: string;
    ContentID: string;
  end;

procedure TFrmNewMessage.FormCreate(Sender: TObject);
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
  Button.MenuItem := miEdit;

  Button := TToolbutton.Create(tbarMenu);
  Button.Parent := tbarMenu;
  Button.MenuItem := miFile;
  {$ENDIF}

  tsPlainText.TabVisible := False;
  tsRTF.TabVisible := False;
  tsHTML.TabVisible := False;
end;

procedure TFrmNewMessage.FormDestroy(Sender: TObject);
begin
  FRecipTable  := nil;
  FReplyTable  := nil;
  FAddressbook := nil;
  FNewMessage  := nil;
end;

procedure TFrmNewMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNewMessage.Initialize(const ASession: TRwMapiSessionV3; AMessage: IRwMapiMessage = nil; ARecipTable: IRwMapiRecipientTable = nil);
var
  i: Integer;
begin
  FSession     := ASession;
  FAddressbook := ASession.GetAddressBook(True);
  FAddressbook.BeforeDisplayAddressBookDlg := AddressBookBeforeDisplayAddressBookDlg;

  if assigned(ARecipTable) then
    FRecipTable := ARecipTable
  else
  FRecipTable := FAddressbook.GetRecipientTable;

  FReplyTable  := FAddressbook.GetRecipientTable;
  FNewMessage  := AMessage;
  actDisplayProperties.Enabled := assigned(FNewMessage);

  lvAttachments.Items.Clear;
  SetAttachmentListBox(False);

  for i := 0 to pcMain.PageCount - 1 do
    pcMain.Pages[i].TabVisible := False;
  pcMain.ActivePage := tsPlainText;
  pcHtml.ActivePage := tsHtmlView;

  HtmlMessageTextSource.Lines.Add('<html>');
  HtmlMessageTextSource.Lines.Add('  <body>');
  HtmlMessageTextSource.Lines.Add('  </body>');
  HtmlMessageTextSource.Lines.Add('</html>');
  HtmlMessageTextHtml.Source := HtmlMessageTextSource.Lines.Text;
  HtmlMessageTextHtml.EditState := False;
  HtmlMessageTextHtml.EditState := True;

  EdtTo.Text := '';
  EdtSubject.Text := '';
  PlainTxtMessagText.Clear;
  RichEditMessageText.Clear;

  StatusBar.Panels[0].Text := '';
  if assigned(AMessage) then
    LoadMessageProps;
end;

procedure TFrmNewMessage.EdtSubjectExit(Sender: TObject);
begin
  RefreshCaption;
end;

procedure TFrmNewMessage.RefreshCaption;
begin
  case tbtnFormat.ImageIndex of
    9:  Self.Caption := EdtSubject.Text + ' - Message (Plain Text)';
    10: Self.Caption := EdtSubject.Text + ' - Message (RTF)';
    11: Self.Caption := EdtSubject.Text + ' - Message (HTML)';
  else
    Self.Caption := EdtSubject.Text + ' - Message (Unknown Format)';
  end;
end;

procedure TFrmNewMessage.LoadMessageProps;
var
  AttTable: IRwMapiTable;
  MsgText, DispName: TRwMapiString;
  MessageTextFormat: TRwMapiMessageTextFormat;
  AttItem: TListItem;
  Attachment: IRwMapiAttachment;
  RTFStream: TStringStream;
begin
  FRecipTable.First;
  while not FRecipTable.EOF do
  begin
    if FRecipTable.FieldByName(PR_RECIPIENT_TYPE).AsInteger = rtTO then
      EdtTo.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; '
    else
      EdtCC.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; ';
    FRecipTable.Next;
  end;

  EdtSubject.Text := FNewMessage.PropByName(PR_SUBJECT).AsString;

  // get the attachments
  lvAttachments.Items.Clear;
  AttTable := FNewMessage.GetAttachmentTable;
  AttTable.SetFields(VarArrayOf([PR_ATTACH_NUM]));
  AttTable.First;
  while not AttTable.EOF do
  begin
    Attachment := FNewMessage.OpenAttachment(AttTable.FieldByName(PR_ATTACH_NUM).AsInteger, alReadOnly, False);

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
  MsgText := FNewMessage.GetMessageText(MessageTextFormat);
  case MessageTextFormat of
    mtfPlainText:
    begin
      PlainTxtMessagText.Text := MsgText;
      pcMain.ActivePage := tsPlainText;
      actFormatTXTExecute(Self);
    end;

    mtfRTF:
    begin
      RichEditMessageText.PlainText := False;
      RTFStream := TStringStream.Create(MsgText);
      try
        RTFStream.Position := 0;
        RichEditMessageText.Lines.LoadFromStream(RTFStream);
      finally
        RTFStream.Free;
      end;
      pcMain.ActivePage := tsRTF;
      actFormatRTFExecute(Self);
    end;

    mtfHTML:
    begin
      HtmlMessageTextHtml.Source := MsgText;
      HtmlMessageTextHtml.EditState := False;
      pcMain.ActivePage := tsHTML;
      pcHtml.ActivePage := tsHtmlView;
      tbtnFormat.ImageIndex := 11;
      HtmlMessageTextHtml.EditState := True;
    end;
  end;

  RefreshCaption;
end;

procedure TFrmNewMessage.ActionListExecute(Action: TBasicAction; var Handled: Boolean);
begin
  // force OnExit for active control!!
  if assigned(Self.ActiveControl) then
    Self.ActiveControl.Perform(CM_EXIT, 0, 0);
end;

function TFrmNewMessage.GetHtmlSource: TRwMAPIString;
var
  OldEditState : Boolean;
begin
  if pcHtml.ActivePage = tsHtmlView then
  begin
    // In order to get the possible modified HTML source we must:
    // - switch to the source page
    // - set the editstate to false
    // This will persist any pending changes to the source property of the HTML control
    pcHtml.ActivePage := tsHtmlSource;
    OldEditState := HtmlMessageTextHtml.EditState;
    HtmlMessageTextHtml.EditState := False;
    HtmlMessageTextSource.Lines.Text := HtmlMessageTextHtml.Source;
    Result := HtmlMessageTextHtml.Source;

    // now restore the original state
    HtmlMessageTextHtml.EditState := OldEditState;
    pcHtml.ActivePage := tsHtmlView;
  end else
  begin
    HtmlMessageTextHtml.OnGetImage := BrowserGetImageByFileName;
    HtmlMessageTextHtml.Source := HtmlMessageTextSource.Lines.Text;
    HtmlMessageTextHtml.EditState := False;
    Result := HtmlMessageTextHtml.Source;
  end;
end;

function TFrmNewMessage.GetHtmlText: TRwMAPIString;
begin
  if pcHtml.ActivePage = tsHtmlView then
  begin
    pcHtml.ActivePage := tsHtmlSource;
    HtmlMessageTextHtml.EditState := False;
    HtmlMessageTextSource.Lines.Text := HtmlMessageTextHtml.Source;
  end;

  HtmlMessageTextHtml.OnGetImage := BrowserGetImageByFileName;
  HtmlMessageTextHtml.Source := HtmlMessageTextSource.Lines.Text;
  HtmlMessageTextHtml.EditState := False;
  Result := HtmlMessageTextHtml.Text;
end;

procedure TFrmNewMessage.actFormatTXTExecute(Sender: TObject);
begin
  if pcMain.ActivePage = tsHTML then
    PlainTxtMessagText.Text := GetHtmlText
  else
  if pcMain.ActivePage = tsRTF then
    PlainTxtMessagText.Text := RichEditMessageText.Lines.Text;

  pcMain.ActivePage := tsPlainText;
  tbtnFormat.ImageIndex := 9;
  RefreshCaption;
end;

procedure TFrmNewMessage.actFormatRTFExecute(Sender: TObject);
var
  Stream: TStream;
begin
  if pcMain.ActivePage = tsHTML then
  begin
    Stream := CreateRTFEncodedHTMLStream(GetHtmlSource);
    try
      Stream.Position := 0;
      RichEditMessageText.Lines.LoadFromStream(Stream);
    finally
      Stream.Free;
    end;
  end else
  if pcMain.ActivePage = tsPlainText then
    RichEditMessageText.Text := PlainTxtMessagText.Text;

  pcMain.ActivePage := tsRTF;
  tbtnFormat.ImageIndex := 10;
  RefreshCaption;
end;

procedure TFrmNewMessage.actFormatHTMExecute(Sender: TObject);
var
  Source: TStrings;
  HtmlSource: string;
  i: Integer;
begin
  Source := nil;
  if pcMain.ActivePage = tsRTF then
    Source := RichEditMessageText.Lines
  else
  if pcMain.ActivePage = tsPlainText then
    Source := PlainTxtMessagText.Lines;

  if assigned(Source) then
  begin
    HtmlSource := '<html><body>';
    for i := 0 to Source.Count-1 do
      HtmlSource := HtmlSource + '<p>'+Source[i]+'</p>';
    HtmlSource := HtmlSource + '</body></html>';
    HtmlMessageTextHtml.Source := HtmlSource;
  end;

  pcMain.ActivePage := tsHTML;
  pcHtml.ActivePage := tsHtmlView;
  HtmlMessageTextHtml.EditState := False;
  HtmlMessageTextHtml.EditState := True;

  tbtnFormat.ImageIndex := 11;
  RefreshCaption;
end;

procedure TFrmNewMessage.pcHtmlChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if pcHtml.ActivePage = tsHtmlView then
  begin
    HtmlMessageTextHtml.EditState := False;
    HtmlMessageTextSource.Lines.Text := Self.GetHtmlSource;
  end else
  begin
    HtmlMessageTextHtml.OnGetImage := BrowserGetImageByCID;
    HtmlMessageTextHtml.Source := HtmlMessageTextSource.Lines.Text;
    HtmlMessageTextHtml.EditState := True;
  end;
end;

procedure TFrmNewMessage.SetAttachmentListBox(const AVisible: Boolean);
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

procedure TFrmNewMessage.actAddAttachmentExecute(Sender: TObject);
begin
  OpenDlg.Filter := 'All files (*.*)|*.*';
  OpenDlg.Title := 'Select a file to attach...';
  if OpenDlg.Execute then
    AddFileAttachment(OpenDlg.FileName);
end;

procedure TFrmNewMessage.AddFileAttachment(AFileName: TFileName);
var
  AttItem: TListItem;
begin
  AttItem := lvAttachments.Items.Add;
  AttItem.ImageIndex := 6;
  AttItem.Data := TAttachmentData.Create;
  AttItem.Caption := ExtractFileName(AFileName);
  TAttachmentData(AttItem.Data).AttNumber := -1;
  TAttachmentData(AttItem.Data).FileName := AFileName;
  if not panAttachments.Visible then
    SetAttachmentListBox(True);
end;

procedure TFrmNewMessage.lvAttachmentsDeletion(Sender: TObject; Item: TListItem);
begin
  TAttachmentData(Item.Data).Free;
  Item.Data := nil;
end;

procedure TFrmNewMessage.lvAttachmentsInfoTip(Sender: TObject; Item: TListItem; var InfoTip: String);
begin
  InfoTip := TAttachmentData(Item.Data).FileName;
end;

procedure TFrmNewMessage.lvAttachmentsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i: Integer;
begin
  if (Key = VK_DELETE) and assigned(lvAttachments.Selected) then
  begin
    for i := lvAttachments.Items.Count-1 downto 0 do
    begin
      if lvAttachments.Items[i].Selected then
        lvAttachments.Items[i].Delete;
    end;
  end;
end;

procedure TFrmNewMessage.BrowserGetImageByCID(Sender: TMsWebBrowser; OriginalValue: string; var AImgSrc: String);
var
  i: Integer;
  ImgName: string;
  FileName: string;
begin
  if Pos('cid:', AImgSrc) = 1 then
  begin
    ImgName := Copy(AImgSrc, 5, MAXINT);
    for i := 0 to lvAttachments.Items.Count-1 do
    begin
      FileName := TAttachmentData(lvAttachments.Items[i].Data).FileName;
      FileName := ExtractFileName(FileName);
      FileName := Copy(FileName, 1, Pos('.',FileName)-1);
      if FileName = ImgName then
      begin
        AImgSrc := TAttachmentData(lvAttachments.Items[i].Data).FileName;
        break;
      end;
    end;
  end;
end;

procedure TFrmNewMessage.BrowserGetImageByFileName(Sender: TMsWebBrowser; OriginalValue: string; var AImgSrc: String);
var
  FileName: string;
begin
  if Trim(AImgSrc) = '' then
    exit;

  if Pos('file:///', OriginalValue) = 1 then
  begin
    FileName := StringReplace(copy(OriginalValue, 9, MAXINT), '%20', #32, [rfReplaceAll]);
    FileName := StringReplace(FileName,'/','\',[rfReplaceAll]);
  end else
    FileName := AImgSrc;

  if FileExists(FileName) then
  begin
    FileName := ExtractFileName(FileName);
    AImgSrc := 'cid:'+Copy(FileName, 1, Pos('.',FileName)-1);
  end;
end;

procedure TFrmNewMessage.AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TAddrBookDlgParams);
begin
  // modify the default addressbook look
  // force the dialog to only show the To and CC fields
  AddrBookDlgParams.DestFields := 2;
  SetLength(AddrBookDlgParams.DestTitles,2);
  AddrBookDlgParams.DestTitles[0] := 'To.';
  AddrBookDlgParams.DestTitles[1] := 'CC..';
end;

procedure TFrmNewMessage.actAddressbookExecute(Sender: TObject);
begin
  FAddressbook.DisplayAddressbookDialog(FRecipTable, Application.Title, False, False, False, 0);
end;

procedure TFrmNewMessage.SelectRecip(Sender: TObject);
begin
  // show the dialog
  if FAddressbook.DisplayAddressbookDialog(FRecipTable, Application.Title, True, True, True, 0) = mrOK then
  begin
    EdtTo.Text := '';
    EdtCC.Text := '';
    FRecipTable.First;
    while not FRecipTable.EOF do
    begin
      if FRecipTable.FieldByName(PR_RECIPIENT_TYPE).AsInteger = rtTO then
        EdtTo.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; '
      else
        EdtCC.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; ';
      FRecipTable.Next;
    end;
  end;
end;

procedure TFrmNewMessage.CheckRecipTable(Sender: TObject);
begin
  if assigned(FRecipTable) then
  begin
    FRecipTable.Clear;
    FRecipTable.AddRecipients(EdtTo.Text, rtTo, False);
    FRecipTable.AddRecipients(EdtCC.Text, rtCC, False);
  end;
end;

procedure TFrmNewMessage.actCheckNamesExecute(Sender: TObject);
begin
  if FAddressbook.ResolveNames(FRecipTable, False, False, Application.Title) = S_OK then
  begin
    EdtTo.Text := '';
    EdtCC.Text := '';
    FRecipTable.First;
    while not FRecipTable.EOF do
    begin
      if FRecipTable.FieldByName(PR_RECIPIENT_TYPE).AsInteger = rtTO then
        EdtTo.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; '
      else
        EdtCC.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; ';
      FRecipTable.Next;
    end;
  end;
end;

procedure TFrmNewMessage.actLoadTextFromDiskExecute(Sender: TObject);
var
  ext: string;
begin
  OpenDlg.Filter := 'TXT Files (*.txt)|*.txt|RTF Files (*.rtf)|*.rtf|HTML Files (*.htm)|*.htm|All files (*.*)|*.*';
  OpenDlg.Title := 'Select a document to load...';
  if OpenDlg.Execute then
  begin
    ext := LowerCase(ExtractFileExt(OpenDlg.FileName));
    if Ext = '.txt' then
    begin
      pcMain.ActivePage := tsPlainText;
      actFormatTXTExecute(Sender);
      PlainTxtMessagText.Lines.LoadFromFile(OpenDlg.FileName);
    end else
    if Ext = '.rtf' then
    begin
      pcMain.ActivePage := tsRTF;
      actFormatRTFExecute(Sender);
      RichEditMessageText.Lines.LoadFromFile(OpenDlg.FileName);
    end else
    if Copy(Ext,1,4) = '.htm' then
    begin
      HtmlMessageTextHtml.EditState := False;
      pcMain.ActivePage := tsHTML;
      actFormatHTMExecute(Sender);
      pcHtml.ActivePage := tsHtmlSource;
      HtmlMessageTextSource.Lines.LoadFromFile(OpenDlg.FileName);
      HtmlMessageTextHtml.OnGetImage := BrowserGetImageByCID;
      HtmlMessageTextHtml.Source := HtmlMessageTextSource.Lines.Text;
      HtmlMessageTextHtml.EditState := True;
      pcHtml.ActivePage := tsHtmlView;
      HtmlMessageTextHtml.EditState := True;
    end else
      raise Exception.Create('Invalid file');
  end;
end;

procedure TFrmNewMessage.SetMessageProperties;
var
  RTFStream: TStringStream;
  i: Integer;
  HtmlSource : string;
  ContentID, FileName : string;
  AttTable: IRwMapiTable;
begin
  assert(assigned(FNewMessage));
  HtmlSource := '';
  FNewMessage.PropByName(PR_SUBJECT).AsString := EdtSubject.Text;
  if pcMain.ActivePage = tsPlainText then
    FNewMessage.SetMessageText(PlainTxtMessagText.Lines.Text, mtfPlainText)
  else
  if pcMain.ActivePage = tsRTF then
  begin
    RTFStream := TStringStream.Create('');
    try
      RichEditMessageText.Lines.SaveToStream(RTFStream);
      FNewMessage.SetMessageText(RTFStream.DataString, mtfRTF);
    finally
      RTFStream.Free;
    end;
  end else
  if pcMain.ActivePage = tsHTML then
  begin
    HtmlSource := GetHtmlSource;
    FNewMessage.SetMessageText(HtmlSource, mtfHTML);
    HtmlSource := LowerCase(StringReplace(HtmlSource, #13#10,'',[rfReplaceAll])); // for attachment processing
  end;

  if FRecipTable.RowCount > 0 then
    FNewMessage.ModifyRecipients(moReplaceAll, FRecipTable);

  if FReplyTable.RowCount > 0 then
    FNewMessage.ModifyReplyRecipients(FReplyTable);

  // since this message is not necessarily a new message (it could be a saved one)
  // we must first delete possible existing attachments
  AttTable := FNewMessage.GetAttachmentTable;
  AttTable.SetFields(VarArrayOf([PR_ATTACH_NUM]));
  AttTable.First;
  while not AttTable.EOF do
  begin
    FNewMessage.DeleteAttachment(AttTable.FieldByName(PR_ATTACH_NUM).AsInteger, False);
    AttTable.Next;
  end;    

  // now add the attachments
  for i := 0 to lvAttachments.Items.Count - 1 do
  begin
    FileName  := TAttachmentData(lvAttachments.Items[i].Data).FileName;

    if pcMain.ActivePage = tsHTML then
    begin
      // check for embedded image
      ContentID := lowercase(ChangeFileExt(ExtractFileName(FileName),''));
      if Pos('cid:'+ContentID, HtmlSource) > 0 then
        FNewMessage.AddEmbeddedImage(FileName)
      else
        FNewMessage.AddFileAttachment(FileName)
    end else
      FNewMessage.AddFileAttachment(FileName);
  end;
  
end;

procedure TFrmNewMessage.actReplyToExecute(Sender: TObject);
var
  FrmReplyToList: TFrmReplyToList;
begin
  FrmReplyToList := TFrmReplyToList.Create(Self);
  try
    FrmReplyToList.Initialize(Self.FSession);
    if FrmReplyToList.ShowModal = mrOK then
      FReplyTable.CopyFrom(FrmReplyToList.Recipients);
  finally
    FrmReplyToList.Free;
  end;
end;

procedure TFrmNewMessage.actSaveMessageExecute(Sender: TObject);
var
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
begin
  if assigned(FNewMessage) then
  begin
    SetMessageProperties;
    FNewMessage.SaveChanges(smKeepOpenReadWrite);
    StatusBar.Panels[0].Text := 'Saved Message';
  end else
  begin
    // open the default messagestore
    MsgStore := FSession.GetDefaultMsgStore(alReadWrite);
    RwMapiFolderDialog.AllowSelectMsgStore := False;
    RwMapiFolderDialog.InitialMsgStoreID := MsgStore.PropByName(PR_ENTRYID).Value;
    if RwMapiFolderDialog.Execute then
    begin
      // get the folder from the default messagestore
      Folder := MsgStore.OpenFolder(RwMapiFolderDialog.FolderID, alReadWrite, False);

      FNewMessage := Folder.CreateMessage('IPM.Note');
      SetMessageProperties;

      // and submit the message
      FNewMessage.SaveChanges(smKeepOpenReadWrite);
      StatusBar.Panels[0].Text := 'Saved Message';
      actDisplayProperties.Enabled := True;
    end;
  end;
end;

procedure TFrmNewMessage.actSendExecute(Sender: TObject);
var
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
begin
  if Trim(EdtTo.Text) = '' then
    raise Exception.Create('No recipients specified');

  if Trim(EdtSubject.Text) = '' then
    if BoxYesNo('There is no subject. Do you want to send the message anyway?') = mrNO then
      raise EAbort.Create('');

  // first resolve the recipienttable
  // ShowFields(FRecipTable); <-- you can use the ShowFields to display the contents of a table
  FAddressbook.ResolveNames(FRecipTable, False, True, Application.Title);

  if not assigned(FNewMessage) then
  begin
    // create a new message in the outbox of the default messagestore
    MsgStore := FSession.GetDefaultMsgStore(alReadWrite);
    Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
    FNewMessage := Folder.CreateMessage('IPM.Note');
  end;

  SetMessageProperties;

  FNewMessage.SubmitMessage(astMoveToSentItems);

  BoxInfo('The message is submitted.');
  Self.Close;
end;


procedure TFrmNewMessage.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmNewMessage.actDisplayPropertiesExecute(Sender: TObject);
begin
  if assigned(FNewMessage) then
    FNewMessage.DisplayProperties;
end;

end.
