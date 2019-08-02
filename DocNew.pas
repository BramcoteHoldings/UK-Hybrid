unit DocNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, MemDS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, DBAccess, Uni, cxClasses,
  cxCheckBox, cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxGroupBox, cxRadioGroup, dxLayoutControl;

type
  TfrmDocNew = class(TForm)
    lblMatter: TLabel;
    lblClient: TLabel;
    lblMatterDesc: TLabel;
    btnMatterFind: TSpeedButton;
    qryMatter: TUniQuery;
    qryDocInsert: TUniQuery;
    odFile: TOpenDialog;
    rgStorage: TcxRadioGroup;
    edtPath: TcxButtonEdit;
    tbName: TcxTextEdit;
    tbDescr: TcxTextEdit;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    qryDoc1: TUniQuery;
    qryPopDetails: TUniQuery;
    edKeywords: TcxTextEdit;
    cmbMatterAuthor: TcxLookupComboBox;
    dsEmployee: TUniDataSource;
    qryPRECCLASSIFICATION: TUniQuery;
    dsPRECCLASSIFICATION: TUniDataSource;
    cmbClassification: TcxLookupComboBox;
    qryDoc1DOC_NAME: TStringField;
    qryDoc1SEARCH: TStringField;
    qryDoc1DOC_CODE: TStringField;
    qryDoc1D_CREATE: TDateTimeField;
    qryDoc1AUTH1: TStringField;
    qryDoc1PATH: TStringField;
    qryDoc1DESCR: TStringField;
    qryDoc1FILEID: TStringField;
    qryDoc1DOCID: TFloatField;
    qryDoc1NPRECCATEGORY: TFloatField;
    qryDoc1DOCUMENT: TBlobField;
    qryDoc1IMAGEINDEX: TFloatField;
    qryDoc1NMATTER: TFloatField;
    qryDoc1FILE_EXTENSION: TStringField;
    qryDoc1KEYWORDS: TStringField;
    qryDoc1PRECEDENT_DETAILS: TStringField;
    memoPrecedentDtls: TcxMemo;
    qryDoc1NPRECCLASSIFICATION: TFloatField;
    qryPRECCATEGORY: TUniQuery;
    dsPRECCATEGORY: TUniDataSource;
    cmbCategory: TcxLookupComboBox;
    qryGetSeq: TUniQuery;
    memoDocNotes: TcxMemo;
    cbPortalAccess: TcxCheckBox;
    qryDoc1EXTERNAL_ACCESS: TStringField;
    qryPhonebook: TUniQuery;
    cmbFolder: TcxLookupComboBox;
    qryFolders: TUniQuery;
    dsFolders: TUniDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    lblMatterContact: TLabel;
    dxLayoutItem19: TdxLayoutItem;
    procedure btnMatterFindClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tbNameEnter(Sender: TObject);
    procedure sbtnOpenClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxComboBox1PropertiesInitPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbClassificationPropertiesInitPopup(Sender: TObject);
    procedure qryDoc1AfterInsert(DataSet: TDataSet);
    procedure memoPrecedentDtlsKeyPress(Sender: TObject; var Key: Char);
    procedure qryPopDetailsNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryPopDetailsBeforeUpdateExecute(Sender: TDataSet;
      StatementTypes: TStatementTypes; Params: TDAParams);
  private
    { Private declarations }
    FileList:        TStringList;
    FDocId:          integer;
    FEditing:        boolean;
    FFileID:         string;
    LFileID:         string;
    FNName:          integer;
    FNewCopyDoc:     boolean;
    FOrigDocPath:    string;
    FDocName:        string;
    FURLOnly:        boolean;
    sContactDocsSQL: string;
    FMatter:         integer;
    bChangeMatter:   boolean;
  public
    { Public declarations }
    procedure DisplayMatter(sMatter: string);
    procedure DisplayPhonebook(iNName: integer);

    property FileID: string Write DisplayMatter;
    property NName: integer Write DisplayPhonebook;
    property ADocId: integer read FDocId write FDocId;
    property Editing: boolean read FEditing write FEditing default False;
    property AFileID: string read FFileID write FFileID;
    property OFileID: string read LFileID write LFileID;
    property AMatter: integer read FMatter write FMatter;
    property ANName: integer read FNName write FNName;
    property NewCopyDoc: boolean read FNewCopyDoc write FNewCopyDoc default False;
    property OrigDocPath: string read FOrigDocPath write FOrigDocPath;
    property DocName: string read FDocName write FDocName;
    property URLOnly: boolean read FURLOnly write FURLOnly;

  end;

var
   frmDocNew: TfrmDocNew;

implementation

uses
  AxiomData, Matters, MiscFunc, MSearch, citfunc, NSearch, Phonebook, uRwMapiProps,
  uRwMapiInterfaces, SYSTEM.StrUtils, uRwDateTimeUtils;

{$R *.DFM}

var
   FMsgStore: IRwMapiMsgStore;


procedure TfrmDocNew.DisplayMatter(sMatter: string);
var
   LNewDocName,
   LNewDocDescr,
   lDocExt,
   lDocPath: string;
begin
   with qryMatter do
   begin
      Close;
      ParamByName('FILEID').AsString := sMatter;
      Open;
      if (not IsEmpty) then
      begin
         Self.Caption := 'Add Document';
//        Self.Show;
         lblMatter.Caption := sMatter;
         lblClient.Caption := qryMatter.FieldByName('TITLE').AsString;
         lblMatterDesc.Caption := qryMatter.FieldByName('SHORTDESCR').AsString;
//         cmbMatterAuthor.EditValue := MatterString( sMatter, 'AUTHOR');

         if ADocId <> 0 then
         begin
            Self.Caption := 'Edit Document';
            with qryPopDetails do
            begin
               AFileID := sMatter;
               ParamByName('docid').AsInteger := ADocId;
               qryPopDetails.Open;
               if (NewCopyDoc = True) then
               begin

                  LNewDocName := FieldByName('DOC_NAME').AsString + '_'+ FormatDateTime('dd-mm-yyyy',date);
               end
               else
                  LNewDocName := FieldByName('DOC_NAME').AsString;
               tbName.Text := LNewDocName;

               if (NewCopyDoc = True) then
                  LNewDocDescr := FieldByName('DESCR').AsString + '_'+ FormatDateTime('dd-mm-yyyy',date)
               else
                  LNewDocDescr := FieldByName('DESCR').AsString;
               tbDescr.Text := LNewDocDescr;

               if not bChangeMatter then
                  FileList.Add(FieldByName('DISPLAY_PATH').AsString);

               sMatter := FieldByName('NMATTER').AsString;
               cmbMatterAuthor.EditValue := FieldByName('AUTH1').AsString;
               cmbClassification.EditValue := FieldByName('NPRECCLASSIFICATION').AsInteger;
               cmbCategory.EditValue := FieldByName('NPRECCATEGORY').AsInteger;
               cmbFolder.EditValue := FieldByName('FOLDER_ID').AsInteger;
               edKeywords.Text := FieldByName('KEYWORDS').AsString;
               cbPortalAccess.Checked := (FieldByName('EXTERNAL_ACCESS').AsString = 'Y');
               memoPrecedentDtls.Lines.Add(qryPopDetails.FieldByName('PRECEDENT_DETAILS').AsString);
               memoDocNotes.Lines.Add(qryPopDetails.FieldByName('DOC_NOTES').AsString);
//               edURL.EditValue := FieldByName('     URL').AsVariant;
               if (FieldByName('PATH').IsNull) then rgStorage.ItemIndex := 0;
               edtPath.Enabled := False;
               if rgStorage.ItemIndex = 1 then
               begin
                  if (NewCopyDoc = True) then
                  begin
                     OrigDocPath := FieldByName('DISPLAY_PATH').AsString;
                     lDocExt := Copy(ExtractFileExt(FieldByName('DISPLAY_PATH').AsString),2,
                                Length(ExtractFileExt(FieldByName('DISPLAY_PATH').AsString)));
                     lDocPath := Copy(ExtractFileName(FieldByName('DISPLAY_PATH').AsString),1,
                                 length(ExtractFileName(FieldByName('DISPLAY_PATH').AsString)) - length(ExtractFileExt(FieldByName('DISPLAY_PATH').AsString)));
                     lDocPath := ExtractFileDir(FieldByName('DISPLAY_PATH').AsString) +'\'+
                                 lDocPath + '_' + FormatDateTime('dd-mm-yyyy', date) + '.' + lDocExt;
                     edtPath.Text := lDocPath;
                  end
                  else
                     edtPath.Text := FieldByName('DISPLAY_PATH').AsString;
//                  edtPath.Enabled := True;
               end
               else
                  edtPath.Clear;
            end;
         end
         else
         begin
            AFileID := sMatter;
            cmbMatterAuthor.EditValue := MatterString( sMatter, 'AUTHOR');
         end;
      end
      else
         Self.Close;
   end;
end;

procedure TfrmDocNew.DisplayPhonebook(iNName: integer);
begin
   rgStorage.ItemIndex := SystemInteger('DFLT_DOC_SAVE_OPTION');
   rgStorage.Enabled := (SystemString('DISABLE_SAVE_MODE') = 'N');

   lblMatterContact.Caption := 'Contact/Client';
   btnMatterFind.Enabled := False;

   qryPopDetails.Close;

   qryPhonebook.Open;
   with qryPhonebook do
   begin
      Close;
      ParamByName('nname').AsInteger := iNName;
      Open;
      if (not IsEmpty) then
      begin
         ANName := INName;
         Self.Caption := 'Add Document';
//        Self.Show;
         lblMatter.Caption := IntToStr(INName);
         lblClient.Caption := FieldByName('Search').AsString;
//         lblMatterDesc.Caption := FieldByName('SHORTDESCR').AsString;
//         cmbMatterAuthor.EditValue := dmAxiom.UserID;

         if ADocId <> 0 then
         begin
            Self.Caption := 'Edit Document';
            with qryPopDetails do
            begin
               qryPopDetails.SQL.Text := sContactDocsSQL;
               qryPopDetails.ParamByName('NNAME').AsInteger := iNName;
               ParamByName('docid').AsInteger := ADocId;
               qryPopDetails.Open;
               tbName.Text := FieldByName('DOC_NAME').AsString;
               tbDescr.Text := FieldByName('DESCR').AsString;
               ANName := FieldByName('NName').AsInteger;
               cmbMatterAuthor.EditValue := FieldByName('AUTH1').AsString;
               cmbClassification.EditValue := FieldByName('NPRECCLASSIFICATION').AsInteger;
               cmbCategory.EditValue := FieldByName('NPRECCATEGORY').AsInteger;
               edKeywords.Text := FieldByName('KEYWORDS').AsString;
               cbPortalAccess.Checked := (FieldByName('EXTERNAL_ACCESS').AsString = 'Y');
               memoPrecedentDtls.Lines.Add(qryPopDetails.FieldByName('PRECEDENT_DETAILS').AsString);
               memoDocNotes.Lines.Add(qryPopDetails.FieldByName('DOC_NOTES').AsString);
//               edURL.EditValue := FieldByName('URL').AsVariant;
               if (FieldByName('PATH').IsNull) then rgStorage.ItemIndex := 0;
               edtPath.Enabled := False;
               if rgStorage.ItemIndex = 1 then
               begin
                  edtPath.Text := FieldByName('DISPLAY_PATH').AsString;
                  edtPath.Enabled := True;
               end
               else
                  edtPath.Clear;
            end;
         end
         else
            cmbMatterAuthor.EditValue := dmAxiom.UserID;
      end
      else
         Self.Close;
   end;
end;

procedure TfrmDocNew.btnMatterFindClick(Sender: TObject);
var
   Result: boolean;
begin
   if (AFileID <> '') or (DocName <> '') then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOK then
      begin
         AFileID := lblMatter.Caption;
         bChangeMatter := True;
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
         bChangeMatter := False;
      end;
   end
   else
   begin
      if(not FormExists(frmPhoneBookSearch)) then
         Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
      Result := frmPhoneBookSearch.ShowModal() = mrOk;
      if(Result) then
      begin
         ANName := frmPhoneBookSearch.NName;
         DisplayPhonebook(ANName);
//         Search := IntToStr(frmPhoneBookSearch.NName);
      end;
   end;
end;

procedure TfrmDocNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FMsgStore := nil;
   qryMatter.Close;
   FileList.Free;
   qryPRECCLASSIFICATION.Close;
   qryPRECCATEGORY.Close;
   qryFolders.Close;
   Action := caFree;
end;

procedure TfrmDocNew.btnCancelClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmDocNew.btnOKClick(Sender: TObject);
var
   bStream, fStream: TStream;
   sDocID: string;
   sNewLine: string;
//   LImportFile: array of string;
   x, y, i, iWords, iCtr, FileImg: integer;
   NewPath, sWord: string;
   AExt: string;
   bMoveFiles, bMoveSuccess: boolean;
   AParsedDocName, AAttachParsedDocName, NewDocName: string;
   bFormUpdated: boolean;
   LNewDocPath,
   EmailSentTo,
   EmailFrom,
   DispName,
   ADispName,
   AFileExt,
   ParsedVarDocName,
   NewDocPath,
   VarDocName,
   ADocDescr,
   moved: string;
   AAttachDocID: integer;
   attachmentIsInline: boolean;
   FSavedMsg: IRwMapiMessage;
   EmailCreateDate: TDateTime;
   AttTable: IRwMapiTable;
   Attachment: IRwMapiAttachment;
   ADocumentSaved: boolean;
   Attachments: IrwMapiAttachmentTable;
   OldCursor: TCursor;
begin
   bMoveFiles := False;
   if (lblMatter.Caption = '') and (DocName <> '') then
   begin
      MsgErr('Please select a matter!');
      ModalResult := mrNone;
   end
   else
   begin
      //if (AFileID <> lblMatter.Caption) and (AFileID <> '') then
      if (OFileID <> lblMatter.Caption) and (OFileID <> '') then
          if (MsgAsk('The matter number has changed.  This action will move this document to the new matter.  Continue?') = IDYES) then
             bMoveFiles := True;
//      FDocId := 0;
      try
         if FileList.Count > 0 then
         begin
           // 28 Aug 2018 DW add email connection
           if (dmAxiom.EMailProfileDefault <> '') then
           begin
               if (dmAxiom.MapiSession.Active = False) then
               begin
                  OldCursor := Screen.Cursor;
                  Screen.Cursor := crHourGlass;
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
                    Screen.Cursor := OldCursor;
                  end;
               end;
            end;

            if FMsgStore = Nil then
               FMsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore(alReadwrite, False);

            for I := 0 to FileList.Count - 1 do
            begin
               with qryPopDetails do
               begin
                  Open;
                  if FEditing then
                  begin
                     Edit;
                  end
                  else
                  begin
                     Insert;
                     ParamByName('docid').AsInteger := ADocId;
                     //bMoveFiles := True;
                  end;

                  if ((tbName.Text = '') or (edtPath.Text = '[** Documents **]')) then
                     FieldByName('DOC_NAME').AsString := ExtractFileName(FileList.Strings[i])
                  else
                     FieldByName('DOC_NAME').AsString := tbName.Text;

                  FieldByName('SEARCH').AsString := ExtractFileName(FileList.Strings[i] {edtPath.Text});
                  if AFileID <> '' then
                     FieldByName('FileID').AsString := lblMatter.Caption;
                  FieldByName('AUTH1').AsString := cmbMatterAuthor.EditValue; //  dmAxiom.UserID;
                  FieldByName('DESCR').AsString := tbDescr.Text;
                  if FEditing then
                     FieldByName('D_MODIF').AsDateTime := Now;
                  if AFileID <> '' then
                     FieldByName('NMATTER').AsString := MatterString(lblMatter.Caption, 'NMATTER');
                  FieldByName('KEYWORDS').AsString := edKeywords.Text;
                  FieldByName('PRECEDENT_DETAILS').AsString := memoPrecedentDtls.Text;
                  FieldByName('DOC_NOTES').AsString := memoDocNotes.Text;
                  FieldByName('FOLDER_ID').AsInteger := 0;

                  if (not FEditing) then
                     FieldByName('PARENTDOCID').AsInteger := ADocId;

                  if cbPortalAccess.Checked then
                     FieldByName('EXTERNAL_ACCESS').AsString := 'Y'
                  else
                     FieldByName('EXTERNAL_ACCESS').AsString := 'N';

                  if (ANName > 0) and (not FEditing) then
                  begin
                     with dmAxiom.qryInsertNNameDoc do
                     begin
                        ParamByName('nname').AsInteger := ANName;
                        ParamByName('docid').AsInteger := ADocId;
                        ExecSQL;
                     end;
                  end;
                  if (rgStorage.ItemIndex = 0) and (not FEditing) then
                  begin
                     if edtPath.Text <> '' then
                     begin
                        FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(edtPath.Text),2, Length(ExtractFileExt(edtPath.Text)));
                        bStream := qryPopDetails.CreateBlobStream(qryPopDetails.FieldByName('DOCUMENT'), bmReadWrite);
                        fStream := TFileStream.Create(edtPath.Text, fmOpenRead or fmShareDenyWrite);
                        bStream.CopyFrom(fStream, fStream.Size);
                        bStream.free;
                        fStream.Free;
                        FileImg := GetFileImage(FieldByName('FILE_EXTENSION').AsString);
                        if (FileImg <> 4) then
                            FieldByName('d_create').AsDateTime := FileDateToDateTime(FileAge(FileList.Strings[i])) {edPath.Text};
                     end;
                  end
                  else
                  if (rgStorage.ItemIndex = 1) then
                  begin
                     if edtPath.Text <> '' then
                     begin
                       {  iWords := 0;
                        SetLength(LImportFile,length(edtPath.Text));
                        application.processmessages;
                        sNewline := copy(edtPath.Text,3,length(edtPath.Text));
                        while TokenizePath(sNewline ,sWord) do
                        begin
                           LImportFile[iWords] := sWord;
                           inc(iWords);
                        end;

                        NewPath := SystemString('DOC_SHARE_PATH');
                        for i := 0 to (length(LImportFile) - 1) do
                        begin
                           if LImportFile[i] <> '' then
                              NewPath := NewPath + '/' + LImportFile[i];
                        end;  }

                     if FEditing = False then
                     begin
                        AExt := ExtractFileExt(FileList.Strings[i] {edtPath.Text});
                       //if bMoveFiles then
                       // begin
                           NewDocName := SystemString('DRAG_DEFAULT_DIRECTORY');    // SystemString('DOC_DEFAULT_DIRECTORY');
//                           MsgInfo('Path to use '+ NewDocName);
                           if (ExtractFileName(FileList.Strings[i] {edtPath.Text}) <> '') then
                              NewDocName := IncludeTrailingPathDelimiter(NewDocName) + ExtractFileName(FileList.Strings[i] {edtPath.Text});

                           if ANName > 0 then
                           begin
                              if (Pos('[FILEID]',NewDocName) > 0) then
                                  NewDocName := ReplaceStr(uppercase(NewDocName), '[FILEID]','[NMATTER]');
                              AParsedDocName := ParseMacros(NewDocName,ANName, FDocId, tbDescr.Text)
                           end
                           else
                           begin
                              if (DocName <> '') then
                                 AParsedDocName := ParseMacros(NewDocName,TableInteger('MATTER','FILEID',uppercase(lblMatter.Caption),'NMATTER'), FDocId, tbDescr.Text) + tbName.Text
                              else
                                 AParsedDocName := ParseMacros(NewDocName,TableInteger('MATTER','FILEID',uppercase(lblMatter.Caption),'NMATTER'), FDocId, tbDescr.Text);
                           end;
                           // 6 Oct 2018 DW only appeand docid if file already exists in dest directory
                           if ((SystemString('doc_seq_append') = 'Y') or (FileExists(AParsedDocName) = True) and (FEditing = False)) then
                           begin
                                 AParsedDocName := AnsiMidStr(AParsedDocName,1, (length(AParsedDocName) - length(AExt))) + '_' + IntToStr(ADocID) + AExt;
                           end;
                           FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(AParsedDocName),2, Length(ExtractFileExt(AParsedDocName)));
                           AExt := UpperCase(FieldByName('FILE_EXTENSION').AsString);
                           FileImg := GetFileImage(FieldByName('FILE_EXTENSION').AsString);
                           if (FileImg <> 4) then
                               FieldByName('d_create').AsDateTime := FileDateToDateTime(FileAge(FileList.Strings[i])) {edPath.Text};

                           // 06 June 2018 DW to ensure uniqueness
                           //AParsedDocName := AnsiMidStr(AParsedDocName,1, (length(AParsedDocName) - length(AExt))) + '_' + IntToStr(ADocID);

                           FieldByName('DOC_NAME').AsString := ExtractFileName(AParsedDocName);
                     end;

                           //AParsedDocName := AParsedDocName + AExt;

                           //MsgInfo('Parsed path and new document name '+ AParsedDocName);

                           if (NewCopyDoc = True) then
                           begin
                              LNewDocPath := edtPath.Text;
                              bMoveSuccess := MoveMatterDoc(LNewDocPath, OrigDocPath, False);
                              FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(LNewDocPath),2, Length(ExtractFileExt(LNewDocPath)));
                              FileImg := GetFileImage(FieldByName('FILE_EXTENSION').AsString);
                              if (FileImg <> 4) then
                                  FieldByName('d_create').AsDateTime := FileDateToDateTime(FileAge(FileList.Strings[i])) {edPath.Text};

                              FieldByName('PATH').AsString := IndexPath(LNewDocPath, 'DOC_SHARE_PATH');  //  NewPath;
                              FieldByName('DISPLAY_PATH').AsString := LNewDocPath;
                           end
                           else
                           begin
                              if (FEditing = False) then
                              begin
                                 if (DocName <> '') then
                                 BEGIN
                                    bMoveSuccess := MoveMatterDoc(AParsedDocName, DocName, False, False);
                                    //MsgInfo('OS version detected = ' + TOSVersion.Name);
                                 END
                                 else
                                 begin
//                                    {$IFDEF DEBUG}
//                                       MsgInfo('OS version detected = ' + TOSVersion.Name);
//                                    {$ENDIF}
                                    if (((TOSVersion.Name = 'Windows 8') or (TOSVersion.Name = 'Windows 10') or (TOSVersion.Name = 'Windows Server 2012'))) then
                                       bMoveSuccess := CopyFileIFileOperationForceDirectories(FileList.Strings[i] {edtPath.Text}, AParsedDocName, bMoveFiles)
                                    else
                                       bMoveSuccess := MoveMatterDoc(AParsedDocName, FileList.Strings[i] {edtPath.Text}, bMoveFiles, False);
                                 end;
                                 moved := 'False';
//                              if bMoveSuccess = True then
//                                 moved := 'True';
//                              MsgInfo('Was file save succesfull = ' + moved);

                              //FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(AParsedDocName),2, Length(ExtractFileExt(AParsedDocName)));

                                 FieldByName('PATH').AsString := IndexPath(AParsedDocName, 'DOC_SHARE_PATH');  //  NewPath;
                                 FieldByName('DISPLAY_PATH').AsString := AParsedDocName;
                                 edtPath.Text := AParsedDocName;
                              end;
                           end;
                        //end
                        //else
                        //begin
                        //   FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(FileList.Strings[i] {edtPath.Text}),2, Length(ExtractFileExt(FileList.Strings[i] {edtPath.Text})));
                        //   FieldByName('PATH').AsString := IndexPath(FileList.Strings[i] {edtPath.Text}, 'DOC_SHARE_PATH');  //  NewPath;
                        //   FieldByName('DISPLAY_PATH').AsString := FileList.Strings[i] {edtPath.Text};
                        //end;
                     end;
                  end;

                  AExt := UpperCase(FieldByName('FILE_EXTENSION').AsString);
                  if ((AExt = 'DOC') or (AExt = 'DOCX') or (AExt = 'DOT') or (AExt = 'DOTX') or (AExt = 'DOTM')) then
                     FileImg := 2
                  else if ((AExt = 'XLS') or (AExt = 'CSV') or (AExt = 'XLST') or (AExt = 'XLSX') or (AExt = 'XLSM')) then
                     FileImg := 3
                  else if ((AExt = 'EML') or (AExt = 'MSG')) then
                     FileImg := 4
                  else if AExt = 'PDF' then
                     FileImg := 5
                  else if (AExt = 'HTM') or (AExt = 'HTML') then
                     FileImg := 6
                  else if (AExt = 'PPT') or (AExt = 'PPTX') then
                     FileImg := 8
                  else if (AExt = 'ZIP') or (AExt = 'ZIPX') then
                     FileImg := 9
                  else
                     FileImg := 1;

                 // 28 Aug 2018 DW add email from and to
               //if (dmAxiom.EMailProfileDefault <> '') then
              // begin
                   if (FileImg = 4) then
                   begin
                      try
    //                     FSavedMsg := dmAxiom.MapiSession.GetDefaultMsgStore(alReadwrite).OpenSavedMessage(AParsedDocName);
                         FSavedMsg := FMsgStore.OpenSavedMessage(AParsedDocName);
                      except
                               //
                      end;
                      if FSavedMsg <> nil then
                         EmailCreateDate := RwUTCToLocal(FSavedMsg.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);
                         try
                            if FSavedMsg <> nil then
                            begin
    //                          POldName := OldDocName;
                              EmailSentTo := FSavedMsg.PropByName(PR_DISPLAY_TO).AsString;
                              if (FSavedMsg.PropByName(PR_DISPLAY_CC).AsString <> '') then
                                  EmailSentTo := 'cc: ' + FSavedMsg.PropByName(PR_DISPLAY_CC).AsString  + char(13) + char(10) + 'to: ' + EmailSentTo;
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
                                                //for x := i + 1 to length(DispName) do
                                                for x := y + 1 to length(DispName) do
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

                                                VarDocName := {AParsedDir} IncludeTrailingPathDelimiter(SystemString('DRAG_DEFAULT_DIRECTORY')) + DispName;
                                                ParsedVarDocName := ParseMacros(VarDocName, TableInteger('MATTER','FILEID',AFileID,'NMATTER'));

                                                 // AES6/7/2018 documents will already be unique, adding docid could mean duplication, but if users want to insist they need to set the system flag
                                                if (SystemString('doc_seq_append') = 'Y') or (FileExists(ParsedVarDocName) = True) then
                                                begin
                                                   AAttachParsedDocName := AnsiMidStr(ParsedVarDocName,1, (length(ParsedVarDocName) - length(AExt))) + '_' + IntToStr(AAttachDocID) + AExt;
                                                end
                                                else
                                                begin
                                                   AAttachParsedDocName := ParsedVarDocName;
                                                end;
                                                //Attachment.SaveToFile(ParsedVarDocName);
                                                Attachment.SaveToFile(AAttachParsedDocName);

                                                WriteFileDetailsToDB(ADocID, AAttachParsedDocName, AFileID, ADocDescr, 'Y', AAttachDocID);
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
                              FieldByName('d_create').AsDateTime := EmailCreateDate;
                            end;
                         finally
    //                        FSavedMsg := nil;
                         end;
                      FSavedMsg := nil;
                   end;
               //end;

                   FieldByName('IMAGEINDEX').AsInteger := FileImg;

                   if cmbCategory.ItemIndex >= 0 then
                     FieldByName('NPRECCATEGORY').AsInteger := cmbCategory.EditValue;  //  TableInteger('PRECCATEGORY', 'DESCR', cbCategory.Text, 'NPRECCATEGORY');
                   if cmbClassification.ItemIndex >= 0 then
                     FieldByName('NPRECCLASSIFICATION').AsInteger := cmbClassification.EditValue;
                   if cmbFolder.Text <> '' then
                     FieldByName('FOLDER_ID').AsInteger := cmbFolder.EditValue;

                 // if (FileImg = 4) then
                 //    FieldByName('d_create').AsDateTime := EmailCreateDate
                 // else
                   //if (FileImg <> 4) then
                   //  FieldByName('d_create').AsDateTime := FileDateToDateTime(FileAge(FileList.Strings[i] {edtPath.Text}));

                  sDocID := qryPopDetails.FieldByName('DOCID').AsString;

                  Post;

//                  MsgInfo('DocID generated = '+sDocID);

//                  dmAxiom.uniInsight.Commit;
//                  Close;

{                  if (not FEditing) then
                  begin
                     if rgStorage.ItemIndex = 0 then
                     begin
                        if edURL.Text <> '' then
                        begin
                           with qryDocInsert do
                           begin
                              SQL.Clear;
                              SQL.Text := 'Update doc set URL = sys.httpuritype.createuri(' + QuotedStr(edURL.Text) + ') where docid = ' + sDocID;
                              Execute;
                              dmAxiom.uniInsight.Commit;
                           end;
                        end;
                     end;
                  end; }
               end;
            //

            end;
         end;

         iCtr := 0;
         bFormUpdated := False;
         while (iCtr < Screen.FormCount) and not bFormUpdated do
         begin
            if Screen.Forms[iCtr].ClassName = 'TfrmPhoneBook' then
            begin
               try
                  TfrmPhoneBook(Self.Owner).qryDocs.Close;
                  TfrmPhoneBook(Self.Owner).qryDocs.Open;
                  bFormUpdated := True;
               except
               //
               end;
            end;
            if Screen.Forms[iCtr].ClassName = 'TfrmMatters' then
            begin
               try
                  TfrmMatters(Self.Owner).qryDocs.Close;
                  TfrmMatters(Self.Owner).qryDocs.Open;
                  bFormUpdated := True;
               except
               //
               end;
            end;
            iCtr := iCtr + 1;
         end;
      except
      //
      end;
//      Self.Close;
   end;
end;

procedure TfrmDocNew.tbNameEnter(Sender: TObject);
begin
  if tbName.Text = '' then
    tbName.Text := ExtractFileName(edtPath.Text);
end;

procedure TfrmDocNew.sbtnOpenClick(Sender: TObject);
begin
  if odFile.Execute then
  begin
    edtPath.Text := odFile.FileName;
  end;
end;

procedure TfrmDocNew.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   I: integer;
   CurrDir: string;
begin
   CurrDir := GetCurrentDir;
   case AButtonIndex of
      0: begin
           if odFile.Execute then
              with odFile.Files do
                 if Count > 1 then
                 begin
                    edtPath.Text := '[** Documents **]';
                    for I := 0 to Count - 1 do
                    begin
                       FileList.Add(Strings[I]);
                    end;
                 end
           else
           begin
             edtPath.Text := odFile.FileName;
             FileList.Add(odFile.FileName);
           end;
         end;
      1: edtPath.Text := SystemString('DOC_DEFAULT_DIRECTORY');
   end;
   SetCurrentDir(CurrDir);
end;

procedure TfrmDocNew.cxComboBox1PropertiesInitPopup(Sender: TObject);
begin
//   StringPopulate(cbCategory.Properties.Items, 'PRECCATEGORY', 'DESCR');
end;

procedure TfrmDocNew.FormCreate(Sender: TObject);
begin
   sContactDocsSQL :=   'SELECT D.DOC_NAME, D.SEARCH, D.DOC_CODE, '+
                           'D.JURIS, D.D_CREATE, D.AUTH1, '+
                           'D.D_MODIF, D.AUTH2, D.PATH,'+
                           'D.DESCR, D.FILEID, D.DOCID, '+
                           'D.NPRECCATEGORY, D.NMATTER, '+
                           'D.IMAGEINDEX, D.FILE_EXTENSION, D.EMAIL_SENT_TO,'+
                           'D.TEMPLATEPATH, D.DATAFILEPATH, D.DATAFORM,'+
                           'D.WORKFLOWDOCID, D.KEYWORDS, D.PRECEDENT_DETAILS, '+
                           'D.NPRECCLASSIFICATION, D.OT_VERSION, D.OT_FORMAT,'+
                           'D.DISPLAY_PATH, D.URL, '+
                           'D.EXTERNAL_ACCESS, D.WORKFLOWGENDOCUMENT, D.DOC_NOTES,'+
                           'D.DUMMY, D.EMAIL_FROM, P.NNAME, D.FOLDER_ID, D.ROWID '+
                        'FROM phonebook p, doc d, phonebook_doc pd '+
                        'WHERE p.nname = :nname '+
                        'AND PD.DOCID = :DOCID '+
                        'and p.nname = pd.nname '+
                        'AND pd.docid = d.docid';

   try
      FileList := TStringList.Create;

      rgStorage.ItemIndex := SystemInteger('DFLT_DOC_SAVE_OPTION');
      rgStorage.Enabled := (SystemString('DISABLE_SAVE_MODE') = 'N');

      if dmAxiom.qryEmpAuthor.Active = False then
         dmAxiom.qryEmpAuthor.Open;

      {with tblEmployee do
      begin
         Close;
         Filter := 'ACTIVE = ''Y'' AND ISAUTHOR = ''Y'' ';
         OrderFields := 'code';
         Open;
      end;}
      qryPRECCLASSIFICATION.Open;
      qryPRECCATEGORY.Open;
      bChangeMatter := False;
   except
      //
   end;
end;

procedure TfrmDocNew.cmbClassificationPropertiesInitPopup(Sender: TObject);
begin
   StringPopulate(cmbClassification.Properties.Items, 'PRECCATEGORY', 'DESCR');
end;

procedure TfrmDocNew.qryDoc1AfterInsert(DataSet: TDataSet);
begin
    Dataset.FieldByName('DOCID').AsInteger := GetSequenceNumber('DOC_DOCID');
   //Dataset.FieldByName('DOCID').AsInteger := GetSeqNum('DOC_DOCID');     Creelman strikes again
end;

procedure TfrmDocNew.memoPrecedentDtlsKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = ' ' then
      Quickcode(memoPrecedentDtls);
end;

procedure TfrmDocNew.qryPopDetailsNewRecord(DataSet: TDataSet);
begin
   qryGetSeq.ExecSQL;
   ADocID := qryGetSeq.FieldByName('nextdoc').AsInteger;
   DataSet.FieldByName('docid').AsInteger := ADocID;
//   qryPopDetailsDOCID.AsInteger := FDocID;
end;

procedure TfrmDocNew.FormShow(Sender: TObject);
begin
//   if ANName > 0 then
//      edtPath.Text := SystemString('DOC_DEFAULT_DIRECTORY');

   if qryMatter.Active = True then
   begin
      qryFolders.ParamByName('nMatter').AsInteger := AMatter;
      qryFolders.Open;
   end;

   if DocName <> '' then
   begin
      edtPath.Text := SystemString('DRAG_DEFAULT_DIRECTORY');
      tbName.Text := ExtractFileName(DocName);
   end;

   tbName.SetFocus;
end;

procedure TfrmDocNew.qryPopDetailsBeforeUpdateExecute(Sender: TDataSet;
  StatementTypes: TStatementTypes; Params: TDAParams);
begin
//   qryPopDetailsDOCID.AsInteger := ADocID;
end;

end.
