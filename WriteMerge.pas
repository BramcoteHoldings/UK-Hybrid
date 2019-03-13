unit WriteMerge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ComCtrls, MemDS, OracleUniProvider, Uni, DBAccess, Mask,
  cxPC, cxControls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, ExtCtrls,
  cxPCdxBarPopupMenu, dxBarBuiltInMenu, JvExMask, JvToolEdit;

type
  TfrmWriteMerge = class(TForm)
    qryMerge: TUniQuery;
    qAddNotes: TUniQuery;
    pnlBottom: TPanel;
    btnMerge: TBitBtn;
    bnCancel: TBitBtn;
    pagMerge: TcxPageControl;
    tabOutput: TcxTabSheet;
    tabFields: TcxTabSheet;
    tabSortBy: TcxTabSheet;
    tsNotes: TcxTabSheet;
    gbDelimiters: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbField: TComboBox;
    cbRecord: TComboBox;
    chkQuote: TCheckBox;
    chkHeader: TCheckBox;
    Label3: TLabel;
    feExportFile: TJvFilenameEdit;
    ckLaunchWord: TCheckBox;
    Label8: TLabel;
    feWordTemplate: TJvFilenameEdit;
    gbFieldOrder: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    lbFieldsAvailable: TListBox;
    lbFieldsOutput: TListBox;
    btnSelect: TBitBtn;
    btnUnselect: TBitBtn;
    btnUp: TBitBtn;
    btnDown: TBitBtn;
    Label4: TLabel;
    lbAllFields: TListBox;
    Label5: TLabel;
    lbSortBy: TListBox;
    btnFieldsAll: TBitBtn;
    btnFieldsSelect: TBitBtn;
    btnFieldsUnselect: TBitBtn;
    btnFieldsNone: TBitBtn;
    ckAddContactNote: TCheckBox;
    mContactNote: TMemo;
    procedure tbFileExit(Sender: TObject);
    procedure btnMergeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFieldsAllClick(Sender: TObject);
    procedure btnFieldsSelectClick(Sender: TObject);
    procedure btnFieldsUnselectClick(Sender: TObject);
    procedure btnFieldsNoneClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnUnselectClick(Sender: TObject);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure pagMergeChange(Sender: TObject);
    procedure feExportFileChange(Sender: TObject);
    procedure ckLaunchWordClick(Sender: TObject);
    procedure ckAddContactNoteClick(Sender: TObject);
    procedure bnCancelClick(Sender: TObject);
    procedure tabFieldsShow(Sender: TObject);
  private
    { Private declarations }
    FSQL : string;
    FFromPhoneBook: Boolean;
    // matter related var
    FOpenedSince: TDateTime;
    FOPENEDBEFORE: TDateTime;
    FCOMPLETEDSINCE: TDateTime;
    FCOMPLETEDBEFORE: TDateTime;
    FSLESINCE: TDateTime;
    FSLEBEFORE: TDateTime;
    FARCHIVEDBEFORE: TDateTime;
    FARCHIVEDAFTER: TDateTime;
    FARCHIVEDETFROM: TDateTime;
    FARCHIVEDETTO: TDateTime;


    procedure SetSQL(AValue : string);
    procedure EnableMerge;
    procedure DoWordMerge;
    procedure AddNote(ANName: Integer);
    procedure SetFromPhoneBook(const Value: Boolean);
  public
    { Public declarations }
    property SQL : string read FSQL write SetSQL;
    procedure AddSortField(sField : String);
    property FromPhoneBook: Boolean read FFromPhoneBook write SetFromPhoneBook default False;

    // matter related properties
    property OpenedSince: TDateTime read FOpenedSince write FOpenedSince;
    property OPENEDBEFORE: TDateTime read FOPENEDBEFORE write FOPENEDBEFORE;
    property COMPLETEDSINCE: TDateTime read FCOMPLETEDSINCE write FCOMPLETEDSINCE;
    property COMPLETEDBEFORE: TDateTime read FCOMPLETEDBEFORE write FCOMPLETEDBEFORE;
    property SLESINCE: TDateTime read FSLESINCE write FSLESINCE;
    property SLEBEFORE: TDateTime read FSLEBEFORE write FSLEBEFORE;
    property ARCHIVEDBEFORE: TDateTime read FARCHIVEDBEFORE write FARCHIVEDBEFORE;
    property ARCHIVEDSINCE: TDateTime read FARCHIVEDAFTER write FARCHIVEDAFTER;
    property ARCHIVEDETFROM: TDateTime read FARCHIVEDETFROM write FARCHIVEDETFROM;
    property ARCHIVEDETTO: TDateTime read FARCHIVEDETTO write FARCHIVEDETTO;

  end;

var
  frmWriteMerge: TfrmWriteMerge;

implementation

uses
  AxiomData, MiscFunc, ComObj, Variants,Word2000;

{$R *.DFM}


procedure TfrmWriteMerge.SetSQL(AValue : string);
begin
   FSQL := AValue;
   qryMerge.Close();
   qryMerge.SQL.Text := AValue;
   if dmAxiom.runningide then
      qryMerge.SQL.SaveToFile('c:\tmp\wmerge.sql');
   qryMerge.Open();
end;


procedure TfrmWriteMerge.AddSortField(sField : String);
begin
  lbSortBy.Items.Add(sField);
end;


procedure TfrmWriteMerge.EnableMerge;
begin
  btnMerge.Enabled := (FSQL <> '') and (feExportFile.FileName <> '') and (cbField.Text <> '') and (cbRecord.Text <> '');
end;


procedure TfrmWriteMerge.tabFieldsShow(Sender: TObject);
var
  i : integer;
begin
//  if pagMerge.ActivePage = tabFields then
//  begin
    if lbFieldsAvailable.Items.Count = 0 then
    begin
      lbFieldsOutput.Items.Clear;
      // Add the field names
      for i := 0 to qryMerge.FieldCount - 1 do
        lbFieldsAvailable.Items.Add(qryMerge.Fields[i].FieldName);
    end;
//  end;
end;

procedure TfrmWriteMerge.tbFileExit(Sender: TObject);
begin
  EnableMerge();
end;


procedure TfrmWriteMerge.btnMergeClick(Sender: TObject);
var
  LFullSQL, LTmp : string;
  LMergefile : TextFile;
  LFieldDelimiter, LRecordDelimiter : string;
  i: integer;
  LProceed : boolean;
begin
  // Try to open the query
  try
    LFullSQL := FSQL;
    LTmp := ' ORDER BY ';
    for i := 0 to lbSortBy.Items.Count - 1 do
    begin
      if(FFromPhoneBook) then
        LFullSQL := LFullSQL + LTmp + {'p.' +} lbSortBy.Items[i]
      else
        LFullSQL := LFullSQL + LTmp + lbSortBy.Items[i];
      LTmp := ', ';
    end;
    qryMerge.Close;
    qryMerge.SQL.Text := LFullSQL;
    // from matter search
    if Pos(':OPENEDSINCE', LFullSQL) > 0 then
      qryMerge.ParamByName('OPENEDSINCE').AsDate := Trunc(FOpenedSince);
    if Pos(':OPENEDBEFORE', LFullSQL) > 0 then
      qryMerge.ParamByName('OPENEDBEFORE').AsDate := Trunc(FOpenedBefore) + 1;
    if Pos(':COMPLETEDSINCE', LFullSQL) > 0 then
      qryMerge.ParamByName('COMPLETEDSINCE').AsDate := Trunc(FCompletedSince);
    if Pos(':COMPLETEDBEFORE', LFullSQL) > 0 then
      qryMerge.ParamByName('COMPLETEDBEFORE').AsDate := Trunc(FCompletedBefore) + 1;

    if Pos(':SLESINCE', LFullSQL) > 0 then
      qryMerge.ParamByName('SLESINCE').AsDate := Trunc(FSLESince);
    if Pos(':SLEBEFORE', LFullSQL) > 0 then
      qryMerge.ParamByName('SLEBEFORE').AsDate := Trunc(FSLEBefore) + 1;

    if Pos(':ARCHIVEDSINCE', LFullSQL) > 0 then
      qryMerge.ParamByName('ARCHIVEDSINCE').AsDate := Trunc(FARCHIVEDAFTER);
    if Pos(':ARCHIVEDBEFORE', LFullSQL) > 0 then
      qryMerge.ParamByName('ARCHIVEDBEFORE').AsDate := Trunc(FARCHIVEDBEFORE);
    if Pos(':ARCHIVED', LFullSQL) > 0 then
      qryMerge.ParamByName('ARCHIVED').AsDate := Trunc(FARCHIVEDETFROM);
    if Pos(':ARCHIVEDTO', LFullSQL) > 0 then
      qryMerge.ParamByName('ARCHIVEDTO').AsDate := Trunc(FARCHIVEDETTO);

    // end matter search

    qryMerge.Open;
  except
    on E: Exception do
    begin
      MsgErr('Can''t open merge data:'#13#13 + E.Message);
      qryMerge.Close;
    end;
  end;

  // Try to write to the file
  if cbField.Text = '[TAB]' then
    LFieldDelimiter := #9
  else
    LFieldDelimiter := cbField.Text;
  if cbRecord.Text = '[CR]' then
    LRecordDelimiter := #13
  else if cbRecord.Text = '[LF]' then
    LRecordDelimiter := #10
  else if cbRecord.Text = '[CRLF]' then
    LRecordDelimiter := #13#10
  else
    LRecordDelimiter := cbRecord.Text;
  LProceed := True;
  if FileExists(feExportFile.FileName) then
    LProceed := MsgAsk('The file ''' + feExportFile.FileName + ''' exists. Do you want to overwrite it?') = mrYes;

  if LProceed then
  begin
    try
      // Open the text file for writing
      AssignFile(LMergefile, feExportFile.FileName);
      Rewrite(LMergeFile);
//      WriteLn(LMergeFile,LFullSQL);
      if chkHeader.Checked then
      begin
        if lbFieldsOutput.Items.Count = 0 then
        begin
          // Output all of the field names
          for i := 0 to qryMerge.FieldCount - 1 do
          begin
            Write(LMergefile, qryMerge.Fields[i].FieldName);
            if i < qryMerge.FieldCount - 1 then
              Write(LMergefile, LFieldDelimiter)
            else
              Write(LMergeFile, LRecordDelimiter);
          end;
        end else
        begin
          // Output selected field names
          for i := 0 to lbFieldsOutput.Items.Count - 1 do
          begin
            Write(LMergefile, lbFieldsOutput.Items[i]);
            if i < lbFieldsOutput.Items.Count - 1 then
              Write(LMergefile, LFieldDelimiter)
            else
              Write(LMergeFile, LRecordDelimiter);
          end;
        end;
      end;
      // Now output the actual fields

      qryMerge.First;
      while (not qryMerge.EOF) do
      begin
        if lbFieldsOutput.Items.Count = 0 then
        begin
          for i := 0 to qryMerge.FieldCount - 1 do
          begin
            if chkQuote.Checked then
            begin
              if (qryMerge.Fields[i].DataType = ftString) or (qryMerge.Fields[i].DataType = ftMemo) then
                Write(LMergefile, '"', qryMerge.Fields[i].Value, '"')
              else
                Write(LMergefile, qryMerge.Fields[i].Value);
            end else
              Write(LMergefile, qryMerge.Fields[i].Value);
            if i < qryMerge.FieldCount - 1 then
              Write(LMergefile, LFieldDelimiter)
            else
              Write(LMergeFile, LRecordDelimiter);
          end;
        end else
        begin
          for i := 0 to lbFieldsOutput.Items.Count - 1 do
          begin
            if chkQuote.Checked then
            begin
              if (qryMerge.FieldByName(lbFieldsOutput.Items[i]).DataType = ftString) or (qryMerge.FieldByName(lbFieldsOutput.Items[i]).DataType = ftMemo) then
              begin
                try
                   Write(LMergefile, '"', qryMerge.FieldByName(lbFieldsOutput.Items[i]).Text , '"');
                except
                   Write(LMergefile, '"',NullAsStringValue, '"');
                end;
              end
              else
                Write(LMergefile, qryMerge.FieldByName(lbFieldsOutput.Items[i]).Text);
            end else
            begin
              if (NOT VarIsNull(qryMerge.FieldByName(lbFieldsOutput.Items[i]).Text)) then
                 Write(LMergefile, qryMerge.FieldByName(lbFieldsOutput.Items[i]).Text);
            end;
            if i < lbFieldsOutput.Items.Count - 1 then
              Write(LMergefile, LFieldDelimiter)
            else
              Write(LMergeFile, LRecordDelimiter);
          end;
        end;

        if(FFromPhoneBook) then
          AddNote(qryMerge.FieldByName('nname').AsInteger);

        qryMerge.Next;
      end;
      CloseFile(LMergefile);

      // launch word and merge..

      if(ckLaunchWord.Checked) then
        DoWordMerge()
      else
        MsgInfo('Merge completed');
    except
      on E: Exception do
        MsgErr('Can''t write merge data:'#13#13 + E.Message);
    end;
  end;
end;


procedure TfrmWriteMerge.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('Write Merge', 'Field',      cbField.Text);
  SettingSave('Write Merge', 'Record',     cbRecord.Text);
  SettingSave('Write Merge', 'File',       feExportFile.FileName);
  SettingSave('Write Merge', 'Document',   feWordTemplate.FileName);
  SettingSave('Write Merge', 'Quote',      chkQuote.Checked);
  SettingSave('Write Merge', 'Header',     chkHeader.Checked);
  SettingSave('Write Merge', 'LaunchWord', ckLaunchWord.Checked);

  qryMerge.Close;

  Action := caFree;
end;


procedure TfrmWriteMerge.FormShow(Sender: TObject);
var
  i: integer;
begin
  cbField.Text            := SettingLoadString('Write Merge',  'Field');
  cbRecord.Text           := SettingLoadString('Write Merge',  'Record');
  feExportFile.FileName   := SettingLoadString('Write Merge',  'File');
  feWordTemplate.FileName := SettingLoadString('Write Merge',  'Document');
  chkQuote.Checked        := SettingLoadBoolean('Write Merge', 'Quote');
  chkHeader.Checked       := SettingLoadBoolean('Write Merge', 'Header');
  ckLaunchWord.Checked    := SettingLoadBoolean('Write Merge', 'LaunchWord');
  ckLaunchWordClick(ckLaunchWord);

  EnableMerge();
  // Load the fields into the sort list
  lbAllFields.Clear;
  lbSortBy.Clear;
  for i := 0 to qryMerge.FieldCount - 1 do
  begin
    if lbSortBy.Items.IndexOf(qryMerge.Fields[i].FieldName) < 0 then
      lbAllFields.Items.Add(qryMerge.Fields[i].FieldName);
  end;
end;


procedure TfrmWriteMerge.FormCreate(Sender: TObject);
begin
  FSQL := '';
  pagMerge.ActivePageIndex := 0;
  btnMerge.Glyph.LoadFromResourceName(HInstance, SystemString('WORDPROC'));
  tsNotes.TabVisible := False;
end;

procedure TfrmWriteMerge.btnFieldsAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbAllFields, lbSortBy);
end;

procedure TfrmWriteMerge.btnFieldsSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbAllFields, lbSortBy);
end;

procedure TfrmWriteMerge.btnFieldsUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbSortBy, lbAllFields);
end;

procedure TfrmWriteMerge.btnFieldsNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbSortBy, lbAllFields);
end;

procedure TfrmWriteMerge.btnSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbFieldsAvailable, lbFieldsOutput);
end;

procedure TfrmWriteMerge.btnUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbFieldsOutput, lbFieldsAvailable);
end;

procedure TfrmWriteMerge.btnUpClick(Sender: TObject);
begin
  if lbFieldsOutput.ItemIndex > 0 then
    lbFieldsOutput.Items.Move(lbFieldsOutput.ItemIndex, lbFieldsOutput.ItemIndex - 1);
end;

procedure TfrmWriteMerge.btnDownClick(Sender: TObject);
begin
  if lbFieldsOutput.ItemIndex < lbFieldsOutput.Items.Count then
    lbFieldsOutput.Items.Move(lbFieldsOutput.ItemIndex, lbFieldsOutput.ItemIndex + 1);
end;

procedure TfrmWriteMerge.pagMergeChange(Sender: TObject);
var
  i : integer;
begin
  if pagMerge.ActivePage = tabFields then
  begin
    if lbFieldsAvailable.Items.Count = 0 then
    begin
      lbFieldsOutput.Items.Clear;
      // Add the field names
      for i := 0 to qryMerge.FieldCount - 1 do
        lbFieldsAvailable.Items.Add(qryMerge.Fields[i].FieldName);
    end;
  end;
end;

procedure TfrmWriteMerge.feExportFileChange(Sender: TObject);
begin
  EnableMerge;
end;

procedure TfrmWriteMerge.ckLaunchWordClick(Sender: TObject);
begin
  feWordTemplate.Enabled := ckLaunchWord.Checked;
end;

procedure TfrmWriteMerge.DoWordMerge();
var
  varWord, varDoc : Variant;
begin
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
      varDoc := varWord.Documents.Add(feWordTemplate.FileName);
      try
        varDoc.MailMerge.OpenDataSource(feExportFile.FileName);
        varDoc.MailMerge.Destination := wdSendToNewDocument;
        if(feWordTemplate.FileName <> '') then
        begin
          varDoc.MailMerge.Execute();
          varDoc.Close(wdDoNotSaveChanges);
        end;
        varDoc := varWord.ActiveDocument;
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

procedure TfrmWriteMerge.ckAddContactNoteClick(Sender: TObject);
begin
  mContactNote.Enabled := ckAddContactNote.Enabled;
end;

procedure TfrmWriteMerge.AddNote(ANName: Integer);
begin
  if(not ckAddContactNote.Checked) or (mContactNote.Lines.Count = 0) then
    Exit;

  qAddNotes.ParamByName('START_DT').AsDateTime := Now();
  qAddNotes.ParamByName('DESCR').AsString      := mContactNote.Lines.Text;
  qAddNotes.ParamByName('NNAME').AsInteger     := ANName;
  qAddNotes.ParamByName('ENTERED_BY').AsString := dmAxiom.UserID;
  qAddNotes.ParamByName('CREATION_DATE').AsDateTime := Now();
  qAddNotes.ExecSQL();
end;

procedure TfrmWriteMerge.SetFromPhoneBook(const Value: Boolean);
begin
  FFromPhoneBook := Value;
  tsNotes.TabVisible := Value;
end;

procedure TfrmWriteMerge.bnCancelClick(Sender: TObject);
begin
  Close();
end;

end.

