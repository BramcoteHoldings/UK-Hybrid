unit GenEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxContainer, cxEdit, cxTextEdit,
  cxDBRichEdit, cxControls, dxStatusBar, ImgList, ActnList, dxBar,
  dxBarExtItems, DB, OracleUniProvider, Uni, DBAccess, MemDS, ComCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, System.Actions,
  cxRichEditUtils, cxMemo, cxRichEdit, System.ImageList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TfrmGenEditor = class(TForm)
    BarManager: TdxBarManager;
    dxBarButtonNew: TdxBarLargeButton;
    dxBarButtonOpen: TdxBarLargeButton;
    dxBarButtonClose: TdxBarLargeButton;
    dxBarButtonSave: TdxBarLargeButton;
    dxBarButtonSaveAs: TdxBarLargeButton;
    dxBarSubItemFile: TdxBarSubItem;
    dxBarSubItemEdit: TdxBarSubItem;
    dxBarSubItemFormat: TdxBarSubItem;
    dxBarSubItemWindow: TdxBarSubItem;
    dxBarButtonPrint: TdxBarLargeButton;
    dxBarButtonExit: TdxBarLargeButton;
    dxBarButtonUndo: TdxBarLargeButton;
    dxBarButtonCut: TdxBarLargeButton;
    dxBarButtonCopy: TdxBarLargeButton;
    dxBarButtonPaste: TdxBarLargeButton;
    dxBarButtonClear: TdxBarLargeButton;
    dxBarButtonSelectAll: TdxBarLargeButton;
    dxBarButtonFind: TdxBarLargeButton;
    dxBarButtonReplace: TdxBarLargeButton;
    dxBarComboFontSize: TdxBarCombo;
    dxBarButtonBold: TdxBarLargeButton;
    dxBarButtonItalic: TdxBarLargeButton;
    dxBarButtonUnderline: TdxBarLargeButton;
    dxBarButtonBullets: TdxBarLargeButton;
    dxBarButtonAlignLeft: TdxBarLargeButton;
    dxBarButtonCenter: TdxBarLargeButton;
    dxBarButtonAlignRight: TdxBarLargeButton;
    dxBarButtonProtected: TdxBarLargeButton;
    dxBarButtonNewWindow: TdxBarLargeButton;
    dxBarButtonArrangeAll: TdxBarLargeButton;
    dxBarButtonNextWindow: TdxBarLargeButton;
    dxBarButtonPreviousWindow: TdxBarLargeButton;
    dxBarSubItemHelp: TdxBarSubItem;
    dxBarListWindows: TdxBarListItem;
    dxBarButtonFont: TdxBarLargeButton;
    dxBarMRUFiles: TdxBarMRUListItem;
    dxBarComboFontColor: TdxBarColorCombo;
    dxBarComboFontName: TdxBarFontNameCombo;
    dxBarGroup1: TdxBarGroup;
    dxBarPopupMenu: TdxBarPopupMenu;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    FontDialog: TFontDialog;
    alMain: TActionList;
    actHelp: TAction;
    actRateDemo: TAction;
    actDownloads: TAction;
    actForum: TAction;
    actDXOnTheWeb: TAction;
    actProducts: TAction;
    actAbout: TAction;
    actShowDemoDescription: TAction;
    Images: TImageList;
    ilDisabledImages: TImageList;
    ilHotImages: TImageList;
    ilStatusBarImages: TImageList;
    dxStatusBar: TdxStatusBar;
    FindDialog: TFindDialog;
    ReplaceDialog: TReplaceDialog;
    qryMatterNotes: TUniQuery;
    dsMatterNotes: TUniDataSource;
    qryBillNotes: TUniQuery;
    qryEmailNote: TUniQuery;
    qryTmp: TUniQuery;
    ActionManager1: TActionManager;
    actSave: TAction;
    Editor: TcxDBRichEdit;
    procedure dxBarButtonBoldClick(Sender: TObject);
    procedure dxBarButtonItalicClick(Sender: TObject);
    procedure dxBarButtonUnderlineClick(Sender: TObject);
    procedure dxBarButtonUndoClick(Sender: TObject);
    procedure dxBarButtonCopyClick(Sender: TObject);
    procedure dxBarButtonPasteClick(Sender: TObject);
    procedure dxBarButtonCutClick(Sender: TObject);
    procedure dxBarButtonSaveClick(Sender: TObject);
    procedure EditorPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButtonOpenClick(Sender: TObject);
    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure dxBarButtonAlignLeftClick(Sender: TObject);
    procedure dxBarComboFontSizeClick(Sender: TObject);
    procedure dxBarComboFontSizeChange(Sender: TObject);
    procedure dxBarComboFontColorChange(Sender: TObject);
    procedure dxBarComboFontNameChange(Sender: TObject);
    procedure dxBarButtonReplaceClick(Sender: TObject);
    procedure dxBarButtonFindClick(Sender: TObject);
    procedure dxBarButtonSelectAllClick(Sender: TObject);
    procedure dxBarButtonClearClick(Sender: TObject);
    procedure dxBarButtonBulletsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
  private
    { Private declarations }
    FEditorValue: TMemoryStream;
    FileName: string;
    FUpdating: Boolean;

    FBillNotes: boolean;
    FEmailtemplate: boolean;
    FMatterNotes: boolean;
  public
    { Public declarations }
    procedure FindDialogFind(Sender: TObject);
    procedure ReplaceDialogReplace(Sender: TObject);
    procedure SetModified(Value: Boolean);
    property EditorValue: TMemoryStream read FEditorValue write FEditorValue;
    procedure DisplayMatterNotes(pNMatter: integer);
    procedure DisplayBillNotes(pNMemo: integer);
    procedure DisplayEmailNotes(pID: integer);
  end;

var
  frmGenEditor: TfrmGenEditor;

implementation

{$R *.dfm}

uses
   AxiomData;


procedure TfrmGenEditor.dxBarButtonBoldClick(Sender: TObject);
begin
   with Editor.SelAttributes do
    if dxBarButtonBold.Down then
      Style := Style + [fsBold]
    else
      Style := Style - [fsBold];

   Editor.ModifiedAfterEnter := True;
end;

procedure TfrmGenEditor.dxBarButtonBulletsClick(Sender: TObject);
begin
  with Editor.Paragraph2 do
  begin
    if dxBarButtonBullets.Down then
      NumberingType := pfnSymbols
    else
      NumberingType := pfnNone;
  end;
end;

procedure TfrmGenEditor.dxBarButtonItalicClick(Sender: TObject);
begin
   with Editor.SelAttributes do
   if dxBarButtonItalic.Down then
      Style := Style + [fsItalic]
   else
      Style := Style - [fsItalic];
end;

procedure TfrmGenEditor.dxBarButtonUnderlineClick(Sender: TObject);
begin
   with Editor.SelAttributes do
   if dxBarButtonUnderline.Down then
      Style := Style + [fsUnderline]
   else
      Style := Style - [fsUnderline];
end;

procedure TfrmGenEditor.dxBarButtonUndoClick(Sender: TObject);
begin
   SendMessage(Editor.Handle, EM_UNDO, 0, 0);
end;

procedure TfrmGenEditor.dxBarButtonClearClick(Sender: TObject);
begin
  Editor.Clear;
end;

procedure TfrmGenEditor.dxBarButtonCopyClick(Sender: TObject);
begin
   Editor.CopyToClipboard;
end;

procedure TfrmGenEditor.dxBarButtonPasteClick(Sender: TObject);
begin
   Editor.PasteFromClipboard;
end;

procedure TfrmGenEditor.dxBarButtonCutClick(Sender: TObject);
begin
   Editor.CutToClipboard;
end;

procedure TfrmGenEditor.dxBarButtonSaveClick(Sender: TObject);
var
   sTmpStr: PChar;
begin
   if (FMatterNotes = True) then
   begin
      if qryMatterNotes.State = dsBrowse then
         qryMatterNotes.Edit;

      if qryMatterNotes.State = dsEdit then
      begin
//      qryMatterNotes.FieldByName('NOTES').AsString := Editor.;
         qryMatterNotes.Post;
         qryMatterNotes.ApplyUpdates;


{         with qryTmp do
         begin
            SQL.Text := 'update matter set notes = ' + quotedstr(Editor.EditValue ) + ' where nmatter = :nmatter';
            ParamByName('nmatter').AsInteger := qryMatterNotes.FieldByName('nmatter').AsInteger;
            ExecSQL;
         end;    }
      end;
   end
   else if (FBillNotes = True) then
   begin
      if qryBillNotes.State = dsBrowse then
         qryBillNotes.Edit;

      if qryBillNotes.State = dsEdit then
      begin
//         qryBillNotes.FieldByName('notes').AsAnsiString := Editor.Lines.GetText;

         qryBillNotes.Post;
         qryBillNotes.ApplyUpdates;

 {        with qryTmp do
         begin
            SQL.Text := 'update nmemo set inv_note = ' + quotedstr(Editor.EditValue) + ' where nmemo = :nmemo';
            ParamByName('nmemo').AsInteger := qryBillNotes.FieldByName('nmemo').AsInteger;
            ExecSQL;
         end;    }
      end;
   end
   else if (FEmailtemplate = True) then
   begin
      if qryEmailNote.State = dsBrowse then
         qryEmailNote.Edit;

      if qryEmailNote.State = dsEdit then
      begin
         qryEmailNote.Post;
         qryEmailNote.ApplyUpdates;

 {        with qryTmp do
         begin
            SQL.Text := 'update EMAIL_TEMPLATES set richtext = ' + quotedstr(Editor.EditValue) + ' where id = :id';
            ParamByName('id').AsInteger := qryEmailNote.FieldByName('id').AsInteger;
            ExecSQL;
         end;   }
      end;
   end;
   ModalResult := mrOK;
end;

procedure TfrmGenEditor.dxBarButtonSelectAllClick(Sender: TObject);
begin
  Editor.SelectAll;
end;

procedure TfrmGenEditor.SetModified(Value: Boolean);
begin
  Editor.ModifiedAfterEnter := Value;
  if Value then
  begin
    dxStatusBar.Panels[2].Text := 'Modified';
    TdxStatusBarTextPanelStyle(dxStatusBar.Panels[2].PanelStyle).ImageIndex := 1;
  end
  else
  begin
    dxStatusBar.Panels[2].Text := '';
    TdxStatusBarTextPanelStyle(dxStatusBar.Panels[2].PanelStyle).ImageIndex := 4;
  end;
  dxBarButtonSave.Enabled := Value;
end;

procedure TfrmGenEditor.EditorPropertiesChange(Sender: TObject);
begin
   if Editor = nil then Exit;

   SetModified(Editor.ModifiedAfterEnter);
//   dxStatusBar.Panels[1].Text := ActiveMDIChild.Caption;
   TdxStatusBarTextPanelStyle(dxStatusBar.Panels[1].PanelStyle).ImageIndex := 0;
   TdxStatusBarTextPanelStyle(dxStatusBar.Panels[0].PanelStyle).ImageIndex := 2;
   dxBarButtonUndo.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;
end;

procedure TfrmGenEditor.FormCreate(Sender: TObject);
begin
   FBillNotes     := False;
   FEmailtemplate:= False;
   FMatterNotes  := False;
end;

procedure TfrmGenEditor.FormShow(Sender: TObject);
begin
   if FEditorValue <> nil then
   begin
      FEditorValue.Position := 0;
      Editor.Lines.LoadFromStream(FEditorValue);
   end;
end;

procedure TfrmGenEditor.dxBarButtonOpenClick(Sender: TObject);
begin
  OpenDialog.FileName := '';
  if OpenDialog.Execute then
  begin
     FileName := OpenDialog.FileName;
     Editor.Lines.LoadFromFile(FileName);
     SetModified(True);
     dxBarMRUFiles.RemoveItem(OpenDialog.FileName, nil);
  end;
end;

procedure TfrmGenEditor.dxBarButtonPrintClick(Sender: TObject);
begin
   if PrintDialog.Execute then Editor.Print(FileName);
end;

procedure TfrmGenEditor.dxBarButtonAlignLeftClick(Sender: TObject);
begin
  if TdxBarLargeButton(Sender).Down then
    Editor.Paragraph.Alignment := TAlignment(TdxBarLargeButton(Sender).Tag)
  else
    Editor.Paragraph.Alignment := taLeftJustify;
end;

procedure TfrmGenEditor.dxBarComboFontSizeClick(Sender: TObject);
begin
  FontDialog.Font.Assign(Editor.SelAttributes);
  if FontDialog.Execute then
    Editor.SelAttributes.Assign(FontDialog.Font);
end;

procedure TfrmGenEditor.dxBarComboFontSizeChange(Sender: TObject);
begin
  if not FUpdating then
    Editor.SelAttributes.Size := StrToInt(dxBarComboFontSize.Text);
end;

procedure TfrmGenEditor.dxBarComboFontColorChange(Sender: TObject);
begin
  Editor.SelAttributes.Color := dxBarComboFontColor.Color;
end;

procedure TfrmGenEditor.dxBarComboFontNameChange(Sender: TObject);
begin
  if not FUpdating then
    Editor.SelAttributes.Name := dxBarComboFontName.Text;
end;

procedure TfrmGenEditor.dxBarButtonReplaceClick(Sender: TObject);
begin
   Editor.SelLength := 0;
   ReplaceDialog.Execute;
end;

procedure TfrmGenEditor.dxBarButtonFindClick(Sender: TObject);
begin
  Editor.SelLength := 0;
  FindDialog.Execute;
end;

procedure TfrmGenEditor.ReplaceDialogReplace(Sender: TObject);
var
  ReplacedCount, OldSelStart, PrevSelStart: Integer;
  S: string;
begin
  with Editor, TReplaceDialog(Sender) do
  begin
    ReplacedCount := 0;
    OldSelStart := SelStart;
    if frReplaceAll in Options then
      Screen.Cursor := crHourglass;
    repeat
      if (SelLength > 0) and ((SelText = FindText) or
        (not (frMatchCase in Options) and
         (AnsiUpperCase(SelText) = AnsiUpperCase(FindText)))) then
      begin
        SelText := ReplaceText;
        Inc(ReplacedCount);
      end;
      PrevSelStart := SelStart;
      FindDialogFind(Sender);
    until not (frReplaceAll in Options) or (SelStart = PrevSelStart);
    if frReplaceAll in Options then
    begin
      Screen.Cursor := crDefault;
      if ReplacedCount = 0 then S := 'Text not found'
      else
      begin
        SelStart := OldSelStart;
        S := Format('Replace All', [ReplacedCount]);
      end;
      Application.MessageBox(PChar(S), 'Information',
        MB_ICONINFORMATION);
    end;
  end;
end;

procedure TfrmGenEditor.FindDialogFind(Sender: TObject);
var
  StartPos, FindLength, FoundAt: Integer;
  Flags: TSearchTypes;
  P: TPoint;
  CaretR, R, IntersectR: TRect;
begin
  with Editor, TFindDialog(Sender) do
  begin
    if frDown in Options then
    begin
      if SelLength = 0 then StartPos := SelStart
      else StartPos := SelStart + SelLength;
      FindLength := Length(Text) - StartPos;
    end
    else
    begin
      StartPos := SelStart;
      FindLength := -StartPos;
    end;
    Flags := [];
    if frMatchCase in Options then Include(Flags, stMatchCase);
    if frWholeWord in Options then Include(Flags, stWholeWord);
    Screen.Cursor := crHourglass;
    FoundAt := Editor.FindText(FindText, StartPos, FindLength, Flags);
    if not (frReplaceAll in Options) then Screen.Cursor := crDefault;
    if FoundAt > -1 then
      if frReplaceAll in Options then
      begin
        SelStart := FoundAt;
        SelLength := Length(FindText);
      end
      else
      begin
        SetFocus;
        SelStart := FoundAt;
        SelLength := Length(FindText);

        GetCaretPos(P);
        P := ClientToScreen(P);
        CaretR := Rect(P.X, P.Y, P.X + 2, P.Y + 20);
        GetWindowRect(Handle, R);
        if IntersectRect(IntersectR, CaretR, R) then
          if P.Y < Screen.Height div 2 then
            Top := P.Y + 40
          else
            Top := P.Y - (R.Bottom - R.Top + 20);
      end
    else
      if not (frReplaceAll in Options) then
        Application.MessageBox('Text not found', 'Information', MB_ICONINFORMATION);
  end;
end;

procedure TfrmGenEditor.DisplayMatterNotes(pNMatter: integer);
begin
   FMatterNotes := True;
   Self.Caption := 'Matter Notes';
   with qryMatterNotes do
   begin
      dsMatterNotes.DataSet := qryMatterNotes;
      Close;
      ParamByName('NMATTER').AsInteger := pNMatter;
      Open;
      Edit;
      Editor.Text := FieldByName('NOTES').AsString;
   end;
   Editor.EditModified := False;
   SetModified(False);
end;

procedure TfrmGenEditor.actSaveUpdate(Sender: TObject);
begin
   actSave.Enabled := Editor.EditModified;
end;

procedure TfrmGenEditor.DisplayBillNotes(pNMemo: integer);
begin
   FBillNotes := True;
   Self.Caption := 'Bill Notes';
   with qryBillNotes do
   begin
      try
         dsMatterNotes.DataSet := qryBillNotes;
         Close;
         ParamByName('NMEMO').AsInteger := pNMemo;
         Open;
         Edit;

//         Editor.Properties.PlainText := False;
         Editor.Text := FieldByName('NOTES').AsString;
      finally
         Editor.EditModified := False;
         SetModified(False);
      end;
   end;
end;

procedure TfrmGenEditor.DisplayEmailNotes(pID: integer);
begin
   FEmailtemplate := True;
   Self.Caption := 'Email Template';
   with qryEmailNote do
   begin
      try
         dsMatterNotes.DataSet := qryEmailNote;
         Close;
         ParamByName('ID').AsInteger := pID;
         Open;
         Edit;

         Editor.Properties.PlainText := False;
//         Editor.Text := FieldByName('NOTES').AsString;
      finally
         Editor.EditModified := False;
         SetModified(False);
      end;
   end;
end;


end.
