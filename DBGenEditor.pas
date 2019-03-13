unit DBGenEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit,
  cxDBRichEdit, cxControls, dxStatusBar, ImgList, ActnList, dxBar,
  dxBarExtItems, DB, OracleUniProvider, Uni, DBAccess, MemDS, ComCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, System.Actions;

type
  TfrmDBGenEditor = class(TForm)
    BarManager: TdxBarManager;
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
    Editor: TcxDBRichEdit;
    qrySource: TUniQuery;
    dsSource: TUniDataSource;
    procedure dxBarButtonBoldClick(Sender: TObject);
    procedure dxBarButtonItalicClick(Sender: TObject);
    procedure dxBarButtonUnderlineClick(Sender: TObject);
    procedure dxBarButtonUndoClick(Sender: TObject);
    procedure dxBarButtonCopyClick(Sender: TObject);
    procedure dxBarButtonPasteClick(Sender: TObject);
    procedure dxBarButtonCutClick(Sender: TObject);
    procedure dxBarButtonSaveClick(Sender: TObject);
    procedure EditorPropertiesChange(Sender: TObject);
    procedure dxBarButtonOpenClick(Sender: TObject);
    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure dxBarButtonAlignLeftClick(Sender: TObject);
    procedure dxBarComboFontSizeClick(Sender: TObject);
    procedure dxBarComboFontSizeChange(Sender: TObject);
    procedure dxBarComboFontColorChange(Sender: TObject);
    procedure dxBarComboFontNameChange(Sender: TObject);
    procedure dxBarButtonReplaceClick(Sender: TObject);
    procedure dxBarButtonFindClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
//    FEditorValue: TMemoryStream;
    FileName: string;
    FUpdating: Boolean;
  public
    { Public declarations }
    procedure FindDialogFind(Sender: TObject);
    procedure ReplaceDialogReplace(Sender: TObject);
    procedure SetModified(Value: Boolean);
    function SaveFile: boolean; virtual;
  end;

var
  frmDBGenEditor: TfrmDBGenEditor;

implementation

{$R *.dfm}

function TfrmDBGenEditor.SaveFile: boolean;
begin
   Result := True;
end;

procedure TfrmDBGenEditor.dxBarButtonBoldClick(Sender: TObject);
begin
   with Editor.SelAttributes do
    if dxBarButtonBold.Down then
      Style := Style + [fsBold]
    else
      Style := Style - [fsBold];
end;

procedure TfrmDBGenEditor.dxBarButtonItalicClick(Sender: TObject);
begin
   with Editor.SelAttributes do
   if dxBarButtonItalic.Down then
      Style := Style + [fsItalic]
   else
      Style := Style - [fsItalic];
end;

procedure TfrmDBGenEditor.dxBarButtonUnderlineClick(Sender: TObject);
begin
   with Editor.SelAttributes do
   if dxBarButtonUnderline.Down then
      Style := Style + [fsUnderline]
   else
      Style := Style - [fsUnderline];
end;

procedure TfrmDBGenEditor.dxBarButtonUndoClick(Sender: TObject);
begin
   SendMessage(Editor.Handle, EM_UNDO, 0, 0);
end;

procedure TfrmDBGenEditor.dxBarButtonCopyClick(Sender: TObject);
begin
   Editor.CutToClipboard;
end;

procedure TfrmDBGenEditor.dxBarButtonPasteClick(Sender: TObject);
begin
   Editor.PasteFromClipboard;
end;

procedure TfrmDBGenEditor.dxBarButtonCutClick(Sender: TObject);
begin
   Editor.CopyToClipboard;
end;

procedure TfrmDBGenEditor.dxBarButtonSaveClick(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

procedure TfrmDBGenEditor.SetModified(Value: Boolean);
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

procedure TfrmDBGenEditor.EditorPropertiesChange(Sender: TObject);
begin
   if Editor = nil then Exit;
   SetModified(Editor.ModifiedAfterEnter);
//   dxStatusBar.Panels[1].Text := ActiveMDIChild.Caption;
   TdxStatusBarTextPanelStyle(dxStatusBar.Panels[1].PanelStyle).ImageIndex := 0;
   TdxStatusBarTextPanelStyle(dxStatusBar.Panels[0].PanelStyle).ImageIndex := 2;
   dxBarButtonUndo.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;
end;

procedure TfrmDBGenEditor.dxBarButtonOpenClick(Sender: TObject);
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

procedure TfrmDBGenEditor.dxBarButtonPrintClick(Sender: TObject);
begin
   if PrintDialog.Execute then Editor.Print(FileName);
end;

procedure TfrmDBGenEditor.dxBarButtonAlignLeftClick(Sender: TObject);
begin
  if TdxBarLargeButton(Sender).Down then
    Editor.Paragraph.Alignment := TAlignment(TdxBarLargeButton(Sender).Tag)
  else
    Editor.Paragraph.Alignment := taLeftJustify;
end;

procedure TfrmDBGenEditor.dxBarComboFontSizeClick(Sender: TObject);
begin
  FontDialog.Font.Assign(Editor.SelAttributes);
  if FontDialog.Execute then
    Editor.SelAttributes.Assign(FontDialog.Font);
end;

procedure TfrmDBGenEditor.dxBarComboFontSizeChange(Sender: TObject);
begin
  if not FUpdating then
    Editor.SelAttributes.Size := StrToInt(dxBarComboFontSize.Text);
end;

procedure TfrmDBGenEditor.dxBarComboFontColorChange(Sender: TObject);
begin
  Editor.SelAttributes.Color := dxBarComboFontColor.Color;
end;

procedure TfrmDBGenEditor.dxBarComboFontNameChange(Sender: TObject);
begin
  if not FUpdating then
    Editor.SelAttributes.Name := dxBarComboFontName.Text;
end;

procedure TfrmDBGenEditor.dxBarButtonReplaceClick(Sender: TObject);
begin
   Editor.SelLength := 0;
   ReplaceDialog.Execute;
end;

procedure TfrmDBGenEditor.dxBarButtonFindClick(Sender: TObject);
begin
  Editor.SelLength := 0;
  FindDialog.Execute;
end;

procedure TfrmDBGenEditor.ReplaceDialogReplace(Sender: TObject);
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

procedure TfrmDBGenEditor.FindDialogFind(Sender: TObject);
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


procedure TfrmDBGenEditor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  Res: Integer;
begin
   if Editor.ModifiedAfterEnter then
   begin
      Res := Application.MessageBox(
         PChar(Format('Do you want to save the changes you made to "%s"?', [Caption])),
         PChar(Application.Title), MB_ICONQUESTION or MB_YESNOCANCEL);
      case Res of
         ID_YES: CanClose := SaveFile;
         ID_NO: CanClose := True;
         ID_CANCEL: CanClose := False;
      end;
   end;
end;

end.
