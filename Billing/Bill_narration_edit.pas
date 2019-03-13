unit Bill_narration_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, dxBar,
  ImgList, dxBarExtItems, Vcl.ExtCtrls, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxRichEdit;

type
  TfrmNarrationEdit = class(TForm)
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
    Images: TImageList;
    ilDisabledImages: TImageList;
    ilHotImages: TImageList;
    ilStatusBarImages: TImageList;
    FontDialog: TFontDialog;
    FindDialog: TFindDialog;
    ReplaceDialog: TReplaceDialog;
    pnlEditor: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    aRichEdit: TcxRichEdit;
    procedure dxBarButtonItalicClick(Sender: TObject);
    procedure dxBarButtonCutClick(Sender: TObject);
    procedure dxBarButtonCopyClick(Sender: TObject);
    procedure dxBarButtonPasteClick(Sender: TObject);
    procedure dxBarButtonUndoClick(Sender: TObject);
    procedure dxBarButtonBoldClick(Sender: TObject);
    procedure dxBarButtonUnderlineClick(Sender: TObject);
    procedure dxBarButtonAlignLeftClick(Sender: TObject);
    procedure dxBarComboFontSizeChange(Sender: TObject);
    procedure dxBarComboFontSizeClick(Sender: TObject);
    procedure dxBarComboFontColorChange(Sender: TObject);
    procedure dxBarComboFontNameChange(Sender: TObject);
    procedure dxBarButtonFindClick(Sender: TObject);
    procedure dxBarButtonReplaceClick(Sender: TObject);
    procedure aRichEditChange(Sender: TObject);
  private
    { Private declarations }
    FUpdating: Boolean;
  public
    { Public declarations }
    procedure FindDialogFind(Sender: TObject);
    procedure ReplaceDialogReplace(Sender: TObject);
  end;

var
  frmNarrationEdit: TfrmNarrationEdit;

implementation

{$R *.dfm}

uses bill_narration, AxiomData;


procedure TfrmNarrationEdit.dxBarButtonItalicClick(Sender: TObject);
begin
   with aRichEdit.SelAttributes do
      if dxBarButtonItalic.Down then
         Style := Style + [fsItalic]
      else
         Style := Style - [fsItalic];
end;

procedure TfrmNarrationEdit.dxBarButtonCutClick(Sender: TObject);
begin
   aRichEdit.CutToClipboard;
end;

procedure TfrmNarrationEdit.dxBarButtonCopyClick(Sender: TObject);
begin
   aRichEdit.CopyToClipboard;
end;

procedure TfrmNarrationEdit.dxBarButtonPasteClick(Sender: TObject);
begin
   aRichEdit.PasteFromClipboard;
end;

procedure TfrmNarrationEdit.dxBarButtonUndoClick(Sender: TObject);
begin
   SendMessage(aRichEdit.Handle, EM_UNDO, 0, 0);
end;

procedure TfrmNarrationEdit.dxBarButtonBoldClick(Sender: TObject);
begin
   with aRichEdit.SelAttributes do
    if dxBarButtonBold.Down then
      Style := Style + [fsBold]
    else
      Style := Style - [fsBold];
end;

procedure TfrmNarrationEdit.dxBarButtonUnderlineClick(Sender: TObject);
begin
   with aRichEdit.SelAttributes do
   if dxBarButtonUnderline.Down then
      Style := Style + [fsUnderline]
   else
      Style := Style - [fsUnderline];
end;

procedure TfrmNarrationEdit.dxBarButtonAlignLeftClick(Sender: TObject);
begin
  if TdxBarLargeButton(Sender).Down then
    aRichEdit.Paragraph.Alignment := TAlignment(TdxBarLargeButton(Sender).Tag)
  else
    aRichEdit.Paragraph.Alignment := taLeftJustify;
end;

procedure TfrmNarrationEdit.dxBarComboFontSizeChange(Sender: TObject);
begin
  if not FUpdating then
    aRichEdit.SelAttributes.Size := StrToInt(dxBarComboFontSize.Text);
end;

procedure TfrmNarrationEdit.dxBarComboFontSizeClick(Sender: TObject);
begin
  FontDialog.Font.Assign(aRichEdit.SelAttributes);
  if FontDialog.Execute then
    aRichEdit.SelAttributes.Assign(FontDialog.Font);
end;

procedure TfrmNarrationEdit.dxBarComboFontColorChange(Sender: TObject);
begin
   aRichEdit.SelAttributes.Color := dxBarComboFontColor.Color;
end;

procedure TfrmNarrationEdit.dxBarComboFontNameChange(Sender: TObject);
begin
  if not FUpdating then
    aRichEdit.SelAttributes.Name := dxBarComboFontName.Text;
end;

procedure TfrmNarrationEdit.dxBarButtonFindClick(Sender: TObject);
begin
  aRichEdit.SelLength := 0;
  FindDialog.Execute;
end;

procedure TfrmNarrationEdit.dxBarButtonReplaceClick(Sender: TObject);
begin
   aRichEdit.SelLength := 0;
   ReplaceDialog.Execute;
end;

procedure TfrmNarrationEdit.ReplaceDialogReplace(Sender: TObject);
var
  ReplacedCount, OldSelStart, PrevSelStart: Integer;
  S: string;
begin
  with aRichEdit, TReplaceDialog(Sender) do
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

procedure TfrmNarrationEdit.FindDialogFind(Sender: TObject);
var
  StartPos, FindLength, FoundAt: Integer;
  Flags: TSearchTypes;
  P: TPoint;
  CaretR, R, IntersectR: TRect;
begin
  with aRichEdit, TFindDialog(Sender) do
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
    FoundAt := aRichEdit.FindText(FindText, StartPos, FindLength, Flags);
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


procedure TfrmNarrationEdit.aRichEditChange(Sender: TObject);
begin
   if aRichEdit = nil then Exit;

//   SetModified(Editor.ModifiedAfterEnter);
//   TdxStatusBarTextPanelStyle(dxStatusBar.Panels[1].PanelStyle).ImageIndex := 0;
//   TdxStatusBarTextPanelStyle(dxStatusBar.Panels[0].PanelStyle).ImageIndex := 2;
   dxBarButtonUndo.Enabled := SendMessage(aRichEdit.Handle, EM_CANUNDO, 0, 0) <> 0;
end;

end.
