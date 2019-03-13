unit MAPINewMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeelPainters, ImgList, ComCtrls,
  fRwMapiV3FolderDialog, cxMemo, cxRichEdit, cxSplitter, cxListView,
  cxLabel, cxContainer, cxEdit, cxTextEdit, StdCtrls, cxButtons,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  dxBar, cxControls, dxStatusBar, uRwWebBrowser, uRwMapiV3Session,
  RwMAPI_TLB, DB, cxCheckBox, dxBarExtItems, ExtActns, ActnList, StdActns,
  ActnMan, uRwMapiV3AddrBookParser, OraClasses, OraScript, DBAccess, OraSmart,
  MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, OracleUniProvider, Uni, DBAccess, MemDS, OleCtrls, uRwSHDocVw_TLB, cxPC, psHtmlEdit, Menus, psActions,
  cxMaskEdit, cxDropDownEdit, cxColorComboBox, psDataChunk,psGlobals,
  psImageCache,psTagParser, cxLookAndFeels ;

type
  TfrmNewMessage = class(TForm)
    dxBarManager1: TdxBarManager;
    StatusBar: TdxStatusBar;
    btnSend: TdxBarButton;
    dxBarButton2: TdxBarButton;
    pnlTo: TLMDSimplePanel;
    btnTo: TcxButton;
    btnCC: TcxButton;
    EdtTo: TcxTextEdit;
    EdtCC: TcxTextEdit;
    panAttachments: TLMDSimplePanel;
    lvAttachments: TcxListView;
    Splitter: TcxSplitter;
    RwMapiFolderDialog: TRwMapiFolderDialogV3;
    ImageList1: TImageList;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    barbtnAttach: TdxBarButton;
    btnPrint: TdxBarButton;
    OpenDlg: TOpenDialog;
    bbtnMatterSearch: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    cbSaveMessage: TcxCheckBox;
    dxBarButton8: TdxBarButton;
    cb_FontPicker: TdxBarFontNameCombo;
    qryEmployeeSig: TUniQuery;
    qryEmail_Footer: TUniQuery;
    pagMain: TcxPageControl;
    tabRTF: TcxTabSheet;
    MemoRTFText: TcxRichEdit;
    tabHTML: TcxTabSheet;
    tabRAW: TcxTabSheet;
    MemoRawText: TcxMemo;
    pcHtml: TcxPageControl;
    HtmlMessageTextHtml: TpsHTMLEdit;
    psHtmlEditActionList1: TpsHtmlEditActionList;
    psBoldAction1: TpsBoldAction;
    psItalicAction1: TpsItalicAction;
    dxBarButton1: TdxBarButton;
    psClipboardPasteAction1: TpsClipboardPasteAction;
    dxBarButton9: TdxBarButton;
    psClipboardCutAction1: TpsClipboardCutAction;
    psClipboardCopyAction1: TpsClipboardCopyAction;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    psUnderlineAction1: TpsUnderlineAction;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    psAlignLeft1: TpsAlignLeft;
    psAlignCenter1: TpsAlignCenter;
    psAlignRight1: TpsAlignRight;
    psAlignJustify1: TpsAlignJustify;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    psDecreaseListIndent1: TpsDecreaseListIndent;
    psIncreaseListIndent1: TpsIncreaseListIndent;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarButton18: TdxBarButton;
    btnSpellCheck: TdxBarButton;
    pm_LinkCreator: TPopupMenu;
    CreateLink1: TMenuItem;
    OpenURLinbrowser1: TMenuItem;
    dxBarButton19: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    cb_FontSize: TdxBarCombo;
    cd_ColorSelection: TColorDialog;
    btnImportanceHigh: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    psUndoAction1: TpsUndoAction;
    psRedoAction1: TpsRedoAction;
    FontDialog: TFontDialog;
    dxBarButton23: TdxBarButton;
    btnView: TdxBarSubItem;
    btnShowFrom: TdxBarButton;
    btnBcc: TdxBarButton;
    pnlFrom: TLMDSimplePanel;
    btnFrom: TcxButton;
    EdtFrom: TcxTextEdit;
    pnlSubject: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    EdtSubject: TcxTextEdit;
    cxButton4: TcxButton;
    edtBCC: TcxTextEdit;
    RwMapiAddrBookParserV31: TRwMapiAddrBookParserV3;
    cxButton1: TcxButton;
    psOrderedList1: TpsOrderedList;
    psUnorderedList1: TpsUnorderedList;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    btnResolve: TdxBarButton;
    btnFollowup: TdxBarButton;
    btnImportanceLow: TdxBarButton;
    procedure btnToClick(Sender: TObject);
    procedure barbtnAttachClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure bbtnMatterSearchClick(Sender: TObject);
    procedure EdtSubjectExit(Sender: TObject);
    procedure lvAttachmentsInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton18Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSpellCheckClick(Sender: TObject);
    procedure CreateLink1Click(Sender: TObject);
    procedure OpenURLinbrowser1Click(Sender: TObject);
    procedure HtmlMessageTextHtmlTextClicked(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure cb_FontSizeChange(Sender: TObject);
    procedure cb_FontPickerChange(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnShowFromClick(Sender: TObject);
    procedure btnBccClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnFromClick(Sender: TObject);
    procedure btnResolveClick(Sender: TObject);
  private
    { Private declarations }
    FSession     : TRwMapiSessionV3;
    FAddressbook : IRwMapiAddressbook;
    FFromAddressbook : IRwMapiAddressbook;
    FRecipTable  : IRwMapiRecipientTable;
    FReplyTable  : IRwMapiRecipientTable;
    FNewMessage  : IRwMapiMessage;
    FFileID : string;
//    fAddictSpell: TAddictSpell3;
//    fThesaurus: TThesaurus3;
//    fSpellcheckerSmartTagHandlerID: integer;
    fLinkUrl: string;
    fLinkText: string;
    fLinkOpeningTag: string;
    fCustomTag: TpsMarkupTag;
    fDocumentHistory: TStringList;
  private
    procedure SetMessageProperties;
    procedure SetAttachmentListBox(const AVisible: Boolean);
    procedure LoadMessageProps;
//    procedure AddFileAttachment(AFileName: TFileName);
    procedure AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TAddrBookDlgParams);
    procedure FromAddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TAddrBookDlgParams);
    procedure MergeFiles(FirstFileName,SecondFileName, OutFileName : TFileName);
    procedure BrowserGetImageByFileName(Sender: TMsWebBrowser; OriginalValue: string; var AImgSrc: String);
    function GetHtmlSource: TRwMAPIString;
    procedure OnCreateLinkHandler(iSender:TObject;const iMousePosition:TPoint;const iSmartTagArea:TRect;const iUrl:string;var ioLinkText,ioLinkOpeningTag:string;var oCustomTag:TpsMarkupTag);
    procedure ShowFontDialog();
  public
    { Public declarations }
    procedure Initialize(const ASession: TRwMapiSessionV3; AMessage: IRwMapiMessage = nil; ARecipTable: IRwMapiRecipientTable = nil);
    property FileID: string read FFileID  write FFileID;
    procedure AddFileAttachment(AFileName: TFileName);
  end;

var
  frmNewMessage: TfrmNewMessage;

implementation

{$R *.dfm}

uses
  uRwBoxes, uRwMapiTagsH, uRwMapiV3Utils, uRwMapiV3Message, fReplyToList,
  MSearch, AxiomData, citfunc, MiscFunc, uRwSysUtils, uRwDateTimeUtils, psLinkCreator,
  psClipboard, psStrings, psHtmlParser, psMetaTags, uRwMapidefsH
  ;

type
  TAttachmentData = class
    AttNumber: Integer;
    FileName : TFileName;
    DisplayName: string;
    ContentID: string;
  end;

procedure TfrmNewMessage.btnToClick(Sender: TObject);
begin
  // show the dialog
   if FAddressbook.DisplayAddressbookDialog(FRecipTable, Application.Title, True, True, True, 0) = mrOK then
   begin
      FRecipTable.First;
      while not FRecipTable.EOF do
      begin
         if FRecipTable.FieldByName(PR_RECIPIENT_TYPE).AsInteger = rtTO then
         begin
            EdtTo.Text := '';
            EdtTo.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; ';
         end
         else
         begin
            EdtCC.Text := '';
            EdtCC.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; ';
         end;
         FRecipTable.Next;
      end;
   end;
end;

procedure TFrmNewMessage.Initialize(const ASession: TRwMapiSessionV3; AMessage: IRwMapiMessage = nil; ARecipTable: IRwMapiRecipientTable = nil);
var
   i: Integer;
begin
   FSession := ASession;

   FAddressbook := FSession.GetAddressBook(False);
   FAddressbook.BeforeDisplayAddressBookDlg := AddressBookBeforeDisplayAddressBookDlg;

   FFromAddressbook := FSession.GetAddressBook(False);
   FFromAddressbook.BeforeDisplayAddressBookDlg := FromAddressBookBeforeDisplayAddressBookDlg;

   if assigned(ARecipTable) then
      FRecipTable := ARecipTable
   else
      FRecipTable := FAddressbook.GetRecipientTable;

   FReplyTable := FAddressbook.GetRecipientTable;

   FNewMessage := AMessage;

   lvAttachments.Items.Clear;
   SetAttachmentListBox(False);

   EdtTo.Text := '';
   EdtSubject.Text := '';

//   RichEditMessageText.Clear;
   MemoRTFText.Clear;
//   HtmlMessageTextHtml.Clear;

   if FFileID <> '' then
      bbtnMatterSearch.Enabled := False;

   StatusBar.Panels[0].Text := '';
   if assigned(AMessage) then
      LoadMessageProps
   else
      cb_FontPicker.ItemIndex := 6;
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

procedure TFrmNewMessage.LoadMessageProps;
var
   AttTable: IRwMapiTable;
   MsgText, DispName: TRwMapiString;
   MessageTextFormat: TRwMapiMessageTextFormat;
   AttItem: TListItem;
   Attachment: IRwMapiAttachment;
   RTFStream: TStringStream;
   bStream: TStream;
   i, x, linecount: integer;
   tmpFileName1, tmpFileName2, OutFileName: string;
   emailFormat: string;
   Source: TStrings;
   HtmlSource: string;
   NewMessage: TStrings;
   MessageFormat: string;
   sSQL: string;
begin
   emailFormat := SystemString('email_format');
   pagMain.ActivePageIndex := 0;
   if emailFormat = 'HTML' then
      pagMain.ActivePageIndex := 1;

   FRecipTable.First;
   while not FRecipTable.EOF do
   begin
      if FRecipTable.FieldByName(PR_RECIPIENT_TYPE).AsInteger = rtTO then
         EdtTo.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; '
      else
         EdtCC.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; ';
      FRecipTable.Next;
   end;

//   EdtTo.Text := EdtTo.Text + TableString('PHONEBOOK','NCLIENT', ,

   FNewMessage.PropByName(PR_SUBJECT).AsString := '[Matter #'+ FFileID +']';
   if FFileID <> '' then
      try
         FNewMessage.NamedProp(NPR_FILEID).Value := FFileID;
      except
         //
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
   MemoRawText.Lines.Text := FNewMessage.GetRawMessageText;

   MsgText := FNewMessage.GetMessageText(MessageTextFormat);
   case MessageTextFormat of
      mtfRTF:
      begin
         MessageFormat := 'RTF';
         Self.Caption := EdtSubject.Text + ' - Message (RTF)';

         pagMain.ActivePage := tabRTF;
         RTFStream := TStringStream.Create(MsgText);
         try
            RTFStream.Position := 0;
            MemoRTFText.Lines.LoadFromStream(RTFStream);
         finally
            RTFStream.Free;
         end;
      end;

      mtfHTML:
      begin
         MessageFormat := 'HTML';
         Self.Caption := EdtSubject.Text + ' - Message (HTML)';

         HtmlMessageTextHtml.Text := MsgText;
         pagMain.ActivePage := tabHTML;

         cb_FontPicker.ItemIndex := cb_FontPicker.Items.IndexOf(HtmlMessageTextHtml.GetCurrentFontFamily());

         if RwSameText(Copy(MemoRawText.Text,1,7), '{\rtf1\') then
         begin
            MemoRTFText.Text := MemoRawText.Text;
         end else
         begin
            MemoRTFText.Clear;
         end;

         MemoRTFText.Lines.Text := MsgText;
      end;
   end;

   if emailFormat = 'RTF' then
   begin
      if EdtSubject.Text = '' then
         Self.Caption := 'Untitled - Message (RTF)'
      else
         Self.Caption := EdtSubject.Text + ' - Message (RTF)';

      tmpFileName1 := dmAxiom.GetEnvVar('TMP')+'\Ax09097.rtf';
      tmpFileName2 := dmAxiom.GetEnvVar('TMP')+'\Ax09098.rtf';
      OutFileName :=  dmAxiom.GetEnvVar('TMP')+'\Ax09090.rtf';
      sSQL := 'select email_signature_rtf as email_signature from employee where code = :code';
   end
   else
   begin
      if EdtSubject.Text = '' then
         Self.Caption := 'Untitled - Message (HTML)'
      else
         Self.Caption := EdtSubject.Text + ' - Message (HTML)';

      tmpFileName1 := dmAxiom.GetEnvVar('TMP')+'\Ax09097.html';
      tmpFileName2 := dmAxiom.GetEnvVar('TMP')+'\Ax09098.html';
      OutFileName :=  dmAxiom.GetEnvVar('TMP')+'\Ax09090.html';
      sSQL := 'select email_signature_html as email_signature from employee where code = :code';
   end;

   with qryEmployeeSig do
   begin
      Close;
      SQL.Clear;
      SQL.Text := sSQL;
      ParamByName('code').AsString := dmAxiom.UserID;
      Open;
      bStream := CreateBlobStream(FieldByName('email_signature'), bmRead);
      try
         bStream.Seek(0, soFromBeginning);

         with TFileStream.Create(tmpFileName1, fmCreate) do
         try
            CopyFrom(bStream, bStream.Size)
         finally
            Free
         end;
      finally
         bStream.Free
      end;
   end;

{   qryEmail_Footer.Close;
   qryEmail_Footer.Open;
   bStream := qryEmail_Footer.CreateBlobStream(qryEmail_Footer.FieldByName('email_footer'),bmRead);
   try
      bStream.Seek(0, soFromBeginning);

      with TFileStream.Create(tmpFileName2, fmCreate) do
      try
         CopyFrom(bStream, bStream.Size)
      finally
         Free
      end;
   finally
      bStream.Free
   end;   }


   MergeFiles(tmpFileName1,tmpFileName2, OutFileName);

   if (emailFormat = 'RTF') or (MessageFormat = 'RTF') then
   begin
      Self.Caption := EdtSubject.Text + ' - Message (RTF)';

      MemoRTFText.Lines.LoadFromFile(tmpFileName1);

      MemoRTFText.SelAttributes.Color := clBlack;
      for i := 0 to 2 do
         MemoRTFText.Lines.Insert(i,'');

      if RwSameText(Copy(MemoRawText.Text,1,7), '{\rtf1\') then
      begin
         MemoRTFText.Text := MemoRawText.Text;
      end else
      begin
         MemoRTFText.Clear;
      end;
      MemoRTFText.Lines.Text := MsgText;
   end
   else
   begin
      Self.Caption := EdtSubject.Text + ' - Message (HTML)';

      MemoRawText.Lines.LoadFromFile(tmpfileName1);
      for i := 0 to 1 do
         MemoRawText.Lines.Insert(i,'<BR>');

      NewMessage := TStringList.Create;
      linecount := 0;
      for i := 0 to MemoRAWText.lines.Count-1 do
      begin
         if (MemoRAWText.Lines[i] <> '</BODY>') and
            (MemoRAWText.Lines[i] <> '</HTML>') then
         begin
            NewMessage.Add(MemoRAWText.Lines[i]); //  Insert(i,MemoRAWText.Lines[i]);
            inc(linecount);
         end;
      end;
      x := linecount;

      for i := 0 to MemoRTFText.lines.Count-1 do
      begin
         NewMessage.Add(MemoRAWText.Lines[i]); //  Insert(x,MemoRTFText.Lines[i]);
         inc(x);
      end;

      MemoRTFText.Lines.Clear;
      MemoRTFText.Lines.AddStrings(NewMessage);
      HtmlMessageTextHtml.DefaultDocument := MemoRTFText.Lines;

      NewMessage.Free;
 {     if RwSameText(Copy(MemoRawText.Text,1,7), '{\rtf1\') then
      begin
         MemoRTFText.Text := MemoRawText.Text;
      end else
      begin
         MemoRTFText.Clear;
      end;
      MemoRTFText.Lines.Text := MsgText; }
   end;

   DeleteFile(tmpFileName1);
   DeleteFile(tmpFileName2);
   DeleteFile(OutFileName);
end;

procedure TfrmNewMessage.barbtnAttachClick(Sender: TObject);
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

procedure TfrmNewMessage.btnSendClick(Sender: TObject);
var
   MsgStore, MsgStore1: IRwMapiMsgStore;
   Folder: IRwMapiFolder;
   bStream, fStream: TStream;
   sSubject: string;
   i, x: integer;
   iFileHandle: Integer;
   iFileLength: Integer;
   iBytesRead: Integer;
   Buffer: PChar;
   tmpFileName: string;
   EntryID: TRwMapiEntryID;
   Msg: IRwMapiMessage;
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

   FRecipTable.Clear;
   FRecipTable.AddRecipients(EdtTo.Text, rtTo, False);
   FRecipTable.AddRecipients(EdtCC.Text, rtCC, False);
   if edtBCC.Text <> '' then
      FRecipTable.AddRecipients(EdtBCC.Text, rtBCC, False);

   SetMessageProperties;

   FNewMessage.SubmitMessage(astMoveToSentItems);

//   Folder := MsgStore.OpenFolderByType(ftSentItems, alReadWrite, False);
//   MsgStore1 := FSession.GetMsgStore(ftSentItems {Folder.NamedProp(PR_ENTRYID)},alReadWrite,False);
//   EntryID  := FNewMessage.PropByName(PR_ENTRYID).Value;

   // now use that data to open the message
//   Msg := MsgStore1.OpenMessage(EntryID, alReadWrite, False);

// /  BoxInfo('The message is submitted.');
   if cbSaveMessage.Checked then
   begin
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      dmAxiom.qryMatterAttachments.Open;
      if dmAxiom.qryMatterAttachments.State in [dsBrowse] then
         dmAxiom.qryMatterAttachments.insert;

      if FFileID = '' then
      begin
         sSubject := FNewMessage.PropByName(PR_SUBJECT).AsString;
         for i := 1 to length(sSubject) do
         begin
            if sSubject[i] = '#' then
            begin
               for x := i + 1 to length(sSubject) do
               begin
                  if (sSubject[x] <> ' ') and (sSubject[x] <> ']') then
                     FFileID := FFileID + sSubject[x];
               end;
            end;
         end;
      end;
      dmAxiom.qryMatterAttachments.FieldByName('fileid').AsString := FFileID;
      dmAxiom.qryMatterAttachments.FieldByName('nmatter').AsString := MatterString(FFileID,'NMATTER');
      dmAxiom.qryMatterAttachments.FieldByName('auth1').AsString := dmAxiom.UserID;
      dmAxiom.qryMatterAttachments.FieldByName('D_CREATE').AsDateTime := Now;
      dmAxiom.qryMatterAttachments.FieldByName('IMAGEINDEX').AsInteger := 1;
      dmAxiom.qryMatterAttachments.FieldByName('file_extension').AsString := 'msg';
      dmAxiom.qryMatterAttachments.FieldByName('EMAIL_SENT_TO').AsString := edtTO.Text;
      dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := 'EMAIL_' + FNewMessage.PropByName(PR_SUBJECT).AsString;
      dmAxiom.qryMatterAttachments.FieldByName('DESCR').AsString := FNewMessage.PropByName(PR_SUBJECT).AsString;
      bStream := dmAxiom.qryMatterAttachments. CreateBlobStream(dmAxiom.qryMatterAttachments.fieldByname('DOCUMENT'), bmReadWrite);
      tmpFileName := dmAxiom.GetEnvVar('TMP')+'\' + 'EMAIL_' + FNewMessage.PropByName(PR_SUBJECT).AsString + '.msg';
      FNewMessage.SaveToFile(tmpFileName );
      fStream := TFileStream.Create(tmpFileName, fmOpenRead);
      bStream.CopyFrom(fStream, fStream.Size);
      fStream.free;
      bStream.free;
      dmAxiom.qryMatterAttachments.Post;
      dmAxiom.uniInsight.Commit;
      DeleteFile(tmpFileName);
   end;

//   FNewMessage.SubmitMessage(astMoveToSentItems);

   Self.Close;
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

   if pagMain.ActivePage = tabRTF then
   begin
     RTFStream := TStringStream.Create('');
     try
 //      RichEditMessageText.Lines.SaveToStream(RTFStream);
       FNewMessage.SetMessageText(RTFStream.DataString, mtfRTF);
     finally
       RTFStream.Free;
     end;
   end else
   if pagMain.ActivePage = tabHTML then
   begin
     HtmlSource := GetHtmlSource;
     FNewMessage.SetMessageText(HtmlSource, mtfHTML);
     HtmlSource := LowerCase(StringReplace(HtmlSource, #13#10,'',[rfReplaceAll])); // for attachment processing
   end;

   if btnImportanceHigh.Down then
      FNewMessage.PropByName(PR_IMPORTANCE).AsInteger := 2;

   if btnImportanceLow.Down then
      FNewMessage.PropByName(PR_IMPORTANCE).AsInteger := 0;

   if FRecipTable.RowCount > 0 then
     FNewMessage.ModifyRecipients(moReplaceAll, FRecipTable);

   if FReplyTable.RowCount > 0 then
     FNewMessage.ModifyReplyRecipients(FReplyTable);

   if pnlFrom.Visible then
   begin
      FNewMessage.PropByName(PR_SENT_REPRESENTING_EMAIL_ADDRESS).AsString := EdtFrom.Text;
      FNewMessage.PropByName(PR_SENT_REPRESENTING_ENTRYID).Value := FNewMessage.PropByName(PR_SENDER_ENTRYID).Value;
      FNewMessage.PropByName(PR_SENT_REPRESENTING_NAME).AsString := EdtFrom.Text; //  FNewMessage.PropByName(PR_SENDER_NAME).Value;
      FNewMessage.PropByName(PR_SENT_REPRESENTING_ADDRTYPE).AsString := FNewMessage.PropByName(PR_SENDER_ADDRTYPE).Value;
      FNewMessage.PropByName(PR_SENDER_NAME).AsString := EdtFrom.Text;
   end;
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

     if pagMain.ActivePage = tabHTML then
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

procedure TfrmNewMessage.bbtnMatterSearchClick(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      EdtSubject.Text := '[Matter #'+ dmAxiom.qryMSearch.FieldByName('FILEID').AsString+']';
   end;
end;

procedure TfrmNewMessage.EdtSubjectExit(Sender: TObject);
begin
   if EdtSubject.Text = '' then
      Self.Caption := 'Untitled - Message (RTF)'
   else
      Self.Caption := EdtSubject.Text + ' - Message (RTF)';
end;

procedure TFrmNewMessage.AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TAddrBookDlgParams);
begin
  // modify the default addressbook look
  // force the dialog to only show the To and CC fields
  AddrBookDlgParams.DestFields := 3;
  SetLength(AddrBookDlgParams.DestTitles,3);
  AddrBookDlgParams.DestTitles[0] := 'To.';
  AddrBookDlgParams.DestTitles[1] := 'CC..';
  AddrBookDlgParams.DestTitles[2] := 'BCC..';
end;

procedure TFrmNewMessage.FromAddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TAddrBookDlgParams);
begin
  // modify the default addressbook look
  AddrBookDlgParams.DestFields := 0;
  SetLength(AddrBookDlgParams.DestTitles,0);
//  AddrBookDlgParams.DestTitles[0] := 'To.';
//  AddrBookDlgParams.DestTitles[1] := 'CC..';
//  AddrBookDlgParams.DestTitles[2] := 'BCC..';
end;

procedure TfrmNewMessage.lvAttachmentsInfoTip(Sender: TObject;
  Item: TListItem; var InfoTip: String);
begin
   InfoTip := TAttachmentData(Item.Data).FileName;
end;

procedure TfrmNewMessage.MergeFiles(FirstFileName,SecondFileName, OutFileName : TFileName) ;
var
   fsOut, fsIn: TFileStream;
begin
   fsOut := TFileStream.Create(OutFileName, fmCreate or fmShareExclusive);
   try
      while FileExists(FirstFileName) do
      begin
         fsIn := TFileStream.Create(FirstFileName, fmOpenRead or fmShareDenyWrite);
         try
            fsOut.CopyFrom(fsIn, 0);
         finally
            fsIn.Free;
         end;
         FirstFileName := SecondFileName;
         SecondFileName := '';
      end;
   finally
      fsOut.Free;
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

procedure TfrmNewMessage.FormShow(Sender: TObject);
begin
   try
      begin
         if dmAxiom.ValidEmailReg = C_EMAILPASSWORD then
         begin
            cb_FontPicker.ItemIndex := 7;
            cb_FontSize.ItemIndex := 2;
         end
         else
         begin
            MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
            Close;
         end;
      end;
   except
      MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
      Close;
   end;
end;

procedure TfrmNewMessage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

function TfrmNewMessage.GetHtmlSource: TRwMAPIString;
begin
{  if pcHtml.ActivePage = tsHtmlView then
  begin
    pcHtml.ActivePage := tsHtmlSource;
    HtmlMessageTextHtml.EditState := False;
    HtmlMessageTextSource.Lines.Text := HtmlMessageTextHtml.Source;
  end;

  HtmlMessageTextHtml.OnGetImage := BrowserGetImageByFileName;
  HtmlMessageTextHtml.Source := HtmlMessageTextSource.Lines.Text;
  HtmlMessageTextHtml.EditState := False;   }
  Result := HtmlMessageTextHtml.Text;
end;

procedure TfrmNewMessage.dxBarButton18Click(Sender: TObject);
begin
   if cd_ColorSelection.Execute() then
   with HtmlMessageTextHtml do
      if TextSelected then
        PutColorSpanAroundSelection(cd_ColorSelection.Color)
      else
        PutColorSpanAroundCursor(cd_ColorSelection.Color);
end;

procedure TfrmNewMessage.cxComboBox1PropertiesChange(Sender: TObject);
begin
   with HtmlMessageTextHtml do
    if TextSelected then
      PutSpanAroundSelection('<span style="font-size:' + cb_FontSize.Text + '">')
    else
      PutSpanAroundCursor('<span style="font-size:' + cb_FontSize.Text + '">');

//  FocusEditor();
end;

procedure TfrmNewMessage.FormCreate(Sender: TObject);
begin
//   fAddictSpell := TAddictSpell3.Create(self);
//   fThesaurus := TThesaurus3.Create(self);
//   HtmlMessageTextHtml.RegisterSmartTagHandler(TpsSmartTagCreateLinkHandler.Create(OnCreateLinkHandler));
//   fSpellcheckerSmartTagHandlerID := HtmlMessageTextHtml.RegisterSmartTagHandler(TpsSmartTagSpellChecker.Create(fAddictSpell));
end;

procedure TfrmNewMessage.btnSpellCheckClick(Sender: TObject);
begin
//   SpellCheckHtmlEdit(fAddictSpell,HtmlMessageTextHtml);
end;

procedure TfrmNewMessage.OnCreateLinkHandler(iSender:TObject;const iMousePosition:TPoint;const iSmartTagArea:TRect;const iUrl:string;var ioLinkText,ioLinkOpeningTag:string;var oCustomTag:TpsMarkupTag);
var lPopupPosition:TPoint;
begin
  fLinkUrl := iUrl;
  fLinkText := ioLinkText;
  fLinkOpeningTag := ioLinkOpeningTag;
  fCustomTag := oCustomTag;

  lPopupPosition.X := iSmartTagArea.Left;
  lPopupPosition.Y := iSmartTagArea.Bottom + 1;
  lPopupPosition := HtmlMessageTextHtml.ClientToScreen(lPopupPosition);
  pm_LinkCreator.Popup(lPopupPosition.X,lPopupPosition.Y);

  Application.ProcessMessages();

  ioLinkText := fLinkText;
  ioLinkOpeningTag := fLinkOpeningTag;
  oCustomTag := fCustomTag;
end;

procedure TfrmNewMessage.CreateLink1Click(Sender: TObject);
begin
{  with frmCreateLink do begin
    LinkURL := fLinkUrl;
    LinkName := Copy(LinkUrl,8,Length(LinkUrl) - 7);

    if (ShowModal() = mrOk) and (LinkName <> '') then begin
      if LinkURL <> fLinkUrl then
        fLinkOpeningTag := '<a href="' + LinkURL + '">';
      fLinkText := LinkName;
    end;
  end;    }
end;

procedure TfrmNewMessage.OpenURLinbrowser1Click(Sender: TObject);
begin
// OpenURLInExternalBrowser(fLinkUrl);
end;

procedure TfrmNewMessage.HtmlMessageTextHtmlTextClicked(Sender: TObject);
var lFilename,lUrl:string;
begin
  if HtmlMessageTextHtml.CurrentBlockExists then
    with HtmlMessageTextHtml.CurrentBlock do begin
      if SpansAroundCursor.Contains('a') then begin
        { The user clicked on a link }
        lUrl := SpansAroundCursor.SpanByTagName['a'].Attribute['href'];
        lFilename := ExtractFilePath(Application.ExeName) + lUrl;
        if FileExists(lFilename) then
//          OpenDocument(lFilename)
  {      else begin
          if LowerCase(lUrl) = 'goto_ie' then
            SwitchToTabSheet(ts_InternetExplorer)
          else if LowerCase(lUrl) = 'goto_css' then
            SwitchToTabSheet(ts_Stylesheet)
          else if LowerCase(lUrl) = 'goto_html' then
            SwitchToTabSheet(ts_HTML)
          else if LowerCase(lUrl) = 'goto_meta' then
            SwitchToTabSheet(ts_MetaTags)  }
          else
 //           ShellExecute(0, 'open',pAnsiChar(lUrl), '', '',SW_SHOW);
//        end;
      end;
    end;

end;

procedure TfrmNewMessage.dxBarButton19Click(Sender: TObject);
begin
//   fAddictSpell.Setup();
end;

procedure TfrmNewMessage.dxBarButton20Click(Sender: TObject);
begin
//   FrmHandlerConfig.ShowModalEx(HtmlMessageTextHtml);
end;

procedure TfrmNewMessage.cb_FontSizeChange(Sender: TObject);
begin
   with HtmlMessageTextHtml do
      if TextSelected then
         PutSpanAroundSelection('<span style="font-size:' + cb_FontSize.Text + '">')
      else
         PutSpanAroundCursor('<span style="font-size:' + cb_FontSize.Text + '">');

//  FocusEditor();
end;

procedure TfrmNewMessage.cb_FontPickerChange(Sender: TObject);
begin
   with HtmlMessageTextHtml do
    if TextSelected then
      PutSpanAroundSelection('<span style="font-family:' + cb_FontPicker.Text + '">')
    else
      PutSpanAroundCursor('<span style="font-family:' + cb_FontPicker.Text + '">');
end;

procedure TfrmNewMessage.dxBarButton23Click(Sender: TObject);
begin
   ShowFontDialog();
end;

procedure TfrmNewMessage.ShowFontDialog();
begin
   FontDialog.Font.Style := HtmlMessageTextHtml.GetCurrentFontStyle();
   if FontDialog.Execute() then
      with FontDialog.Font do
         if HtmlMessageTextHtml.TextSelected then
            HtmlMessageTextHtml.PutFontSpanAroundSelection(Name,Size,Color,Style)
         else
            HtmlMessageTextHtml.PutFontSpanAroundCursor(Name,Size,Color,Style);
end;

procedure TfrmNewMessage.dxBarButton3Click(Sender: TObject);
begin
   FAddressbook.DisplayAddressbookDialog(FRecipTable, Application.Title, False, False, False, 0);
end;

procedure TfrmNewMessage.btnShowFromClick(Sender: TObject);
begin
   pnlFrom.Visible := btnShowFrom.Down;
end;

procedure TfrmNewMessage.btnBccClick(Sender: TObject);
begin
   if btnBcc.Down then
      pnlTo.Height := 77
   else
      pnlTo.Height := 52;
end;

procedure TfrmNewMessage.btnPrintClick(Sender: TObject);
var
  FormMgr: IRwMapiFormMgr;
begin
   FormMgr := FSession.GetFormMgr;
   FormMgr.PrintMessage(FNewMessage);
end;

procedure TfrmNewMessage.dxBarButton2Click(Sender: TObject);
var
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
begin
   if assigned(FNewMessage) then
   begin
      SetMessageProperties;
      FNewMessage.SaveChanges(smKeepOpenReadWrite);
//      StatusBar.Panels[0].Text := 'Saved Message';
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
//         StatusBar.Panels[0].Text := 'Saved Message';
      end;
   end;
end;

procedure TfrmNewMessage.btnFromClick(Sender: TObject);
begin
  // show the dialog
//  if FFromAddressbook.DisplayAddressbookDialog(FRecipTable, Application.Title, True, True, True, 0) = mrOK then
//  begin
//      EdtFrom.Text := FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString ;
//  end;
end;

procedure TfrmNewMessage.btnResolveClick(Sender: TObject);
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

end.
