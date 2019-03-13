unit GenEditorHTML;

{$I 'psDefines.inc'}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxContainer, dxBar, ImgList, dxBarExtItems, cxMemo, OleCtrls,
  uRwSHDocVw_TLB, uRwWebBrowser, cxTextEdit, cxRichEdit, cxPC, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, dxDockControl, dxDockPanel,
  dxStatusBar, ComCtrls, DBAccess, Ora, OracleUniProvider, Uni,
  cxRadioGroup, psDataChunk,psGlobals,psHtmlEdit,psImageCache,psTagParser,
  psActions, ActnList, Menus, Clipbrd, cxLabel, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  ad3Spell,ad3SpellBase,ad3Thesaurus,psSpellChecker, cxMaskEdit,
  cxDropDownEdit, dxBarBuiltInMenu, dd_HTMLEditor;

type
  TfrmGenericEditorHTML = class(TForm)
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
    dxBarButtonClear: TdxBarLargeButton;
    dxBarButtonSelectAll: TdxBarLargeButton;
    dxBarButtonFind: TdxBarLargeButton;
    dxBarButtonReplace: TdxBarLargeButton;
    cb_FontSize: TdxBarCombo;
    dxBarButtonBullets: TdxBarLargeButton;
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
    cb_FontPicker1: TdxBarFontNameCombo;
    dxBarGroup1: TdxBarGroup;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    FontDialog: TFontDialog;
    FindDialog: TFindDialog;
    ReplaceDialog: TReplaceDialog;
    ilStatusBarImages: TImageList;
    Images: TImageList;
    ilDisabledImages: TImageList;
    ilHotImages: TImageList;
    OpenDialog: TOpenDialog;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    btnInsertPic: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    btnCreateTable: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    psHtmlEditActionList1: TpsHtmlEditActionList;
    ac_Undo: TpsUndoAction;
    ac_Redo: TpsRedoAction;
    ac_Cut: TpsClipboardCutAction;
    ac_Copy: TpsClipboardCopyAction;
    ac_Paste: TpsClipboardPasteAction;
    ac_Bold: TpsBoldAction;
    ac_Italic: TpsItalicAction;
    ac_Underline: TpsUnderlineAction;
    ac_StrikeOut: TpsStrikeOutAction;
    ac_AlignLeft: TpsAlignLeft;
    ac_AlignCenter: TpsAlignCenter;
    ac_AlignRight: TpsAlignRight;
    ac_AlignJustify: TpsAlignJustify;
    ac_TableInsertRowAbove: TpsTableInsertRowAbove;
    ac_TableInsertRowBelow: TpsTableInsertRowBelow;
    ac_TableInsertColumnToTheLeft: TpsTableInsertColumnToTheLeft;
    ac_TableInsertColumnToTheRight: TpsTableInsertColumnToTheRight;
    ac_TableDeleteCurrentRow: TpsTableDeleteCurrentRow;
    ac_TableDeleteCurrentColumn: TpsTableDeleteCurrentColumn;
    ac_OrderedList: TpsOrderedList;
    ac_UnorderedList: TpsUnorderedList;
    ac_DecreaseListIndent: TpsDecreaseListIndent;
    ac_IncreaseListIndent: TpsIncreaseListIndent;
    dxBarButton4: TdxBarButton;
    ImageList1: TImageList;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pm_Component: TPopupMenu;
    mi_Cut: TMenuItem;
    mi_Copy: TMenuItem;
    mi_Paste: TMenuItem;
    N8: TMenuItem;
    mi_Thesaurus: TMenuItem;
    btnJustify: TdxBarButton;
    dxBarButtonAlignRight: TdxBarButton;
    dxBarButtonCenter: TdxBarButton;
    dxBarButtonAlignLeft: TdxBarButton;
    dxBarButtonBold: TdxBarButton;
    dxBarButtonItalic: TdxBarButton;
    dxBarButtonUnderline: TdxBarButton;
    dxBarButtonCut: TdxBarButton;
    dxBarButtonCopy: TdxBarButton;
    dxBarButtonPaste: TdxBarButton;
    dxBarButtonUndo: TdxBarButton;
    btnHyperlink: TdxBarButton;
    btnDeleteImage: TdxBarButton;
    pm_Image: TPopupMenu;
    mi_AlignLeft: TMenuItem;
    mi_AlignMiddle: TMenuItem;
    mi_AlignRight: TMenuItem;
    N4: TMenuItem;
    mi_DeleteImage: TMenuItem;
    N22: TMenuItem;
    mi_AlternativeText: TMenuItem;
    N10: TMenuItem;
    mi_CreateImageLink: TMenuItem;
    mi_DeleteImageLink: TMenuItem;
    N6: TMenuItem;
    mi_RestoreOriginalSize: TMenuItem;
    btnRemoveInnermostSpan: TdxBarButton;
    cbStyles: TdxBarCombo;
    btnFont: TdxBarButton;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    btnExportEmails: TdxBarButton;
    pagMain: TcxPageControl;
    tabRTF: TcxTabSheet;
    Editor: TcxRichEdit;
    tabRAW: TcxTabSheet;
    MemoRawText: TcxMemo;
    tabHTML: TcxTabSheet;
    ed_LinkHRef: TcxTextEdit;
    HTMLEdit: TpsHTMLEdit;
    StatusBar: TdxStatusBar;
    cb_FontPicker: TdxBarCombo;
    ddHTMLEditor2: TddHTMLEditor;
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
    procedure cb_FontSizeClick(Sender: TObject);
    procedure cb_FontSizeChange(Sender: TObject);
    procedure dxBarComboFontColorChange(Sender: TObject);
    procedure dxBarButtonReplaceClick(Sender: TObject);
    procedure dxBarButtonFindClick(Sender: TObject);
    procedure btnInsertPicClick(Sender: TObject);
    procedure btnCreateTableClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure HTMLEditCursorMoved(Sender: TObject);
    procedure HTMLEditDocumentChanged(Sender: TObject);
    procedure HTMLEditDocumentLoadingError(iSender: TObject;
      const iExceptionClassName, iExceptionMessage: String);
    procedure dxBarButton10Click(Sender: TObject);
    procedure HTMLEditImageClicked(iSender: TObject; iImage: TpsImage;
      iButton: TMouseButton; const iPoint: TPoint;
      var oSelectImage: Boolean);
    procedure HTMLEditImageConfirmResize(iSender: TObject;
      iImage: TpsImage; iNewWidth, iNewHeight: Integer;
      var oConfirmResize: Boolean);
    procedure HTMLEditImageDoubleClicked(iSender: TObject;
      iImage: TpsImage; const iPoint: TPoint);
    procedure HTMLEditImageMouseEnter(iSender: TObject; iImage: TpsImage;
      var oHoverMouseCursor: TCursor);
    procedure HTMLEditImageMouseLeave(Sender: TObject);
    procedure HTMLEditImageResizingSizeChanged(iSender: TObject;
      iImage: TpsImage; iCurrentWidth, iCurrentHeight: Integer);
    procedure HTMLEditImageSelected(iSender: TObject;
      iSelectedImage: TpsImage; var oResizable, oMovable: Boolean);
    procedure HTMLEditImageStartDragging(iSender: TObject;
      iImage: TpsImage;
      var oAllowedDragAlignments: TpsAllowedDragAlignments);
    procedure HTMLEditImageUnselected(Sender: TObject);
    procedure HTMLEditLoadExternalStylesheet(iSender: TObject;
      const ioLinkTag: TpsMarkupTag);
    procedure HTMLEditMergeBlocks(iSender: TObject; const iFirstBlockClass,
      iSecondBlockClass: String; iFirstBlockEmpty,
      iSecondBlockEmpty: Boolean; var ioMergedBlockClass: String);
    procedure HTMLEditRequestImage(iSender: TObject; iImageID, iWidth,
      iHeight: Integer; var oGraphic: TGraphic;
      var oGraphicContainer: TObject);
    procedure HTMLEditRequestResizedGraphic(iSender: TObject;
      const iImageSource: String; iWidth, iHeight: Integer;
      out oGraphic: TGraphic);
    procedure HTMLEditSplitBlock(iSender: TObject;
      const iCurrentBlockClass: String; iCursorPosition: TpsCursorPosition;
      var ioFirstBlockClass, ioSecondBlockClass: String;
      var oAllowSplit: Boolean);
    procedure HTMLEditSupportedCustomTag(iSender: TObject;
      const iTag: TpsMarkupTag; var oSupportedCustomTag: Boolean);
    procedure HTMLEditTextClicked(Sender: TObject);
    procedure btnHyperlinkClick(Sender: TObject);
    procedure btnRemoveInnermostSpanClick(Sender: TObject);
    procedure btnFontClick(Sender: TObject);
    procedure cbStylesChange(Sender: TObject);
    procedure tvEmailsSELECTHeaderClick(Sender: TObject);
    procedure dxBarButtonNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb_FontPickerChange(Sender: TObject);
  private
    { Private declarations }
    FEditorValue: TMemoryStream;
    FileName: string;
    FUpdating: Boolean;
    FSql: string;
    FEventID: integer;
    fDocumentHistory: TStringList;
    fAddictSpell: TAddictSpell3;
    fThesaurus: TThesaurus3;
    fSpellcheckerSmartTagHandlerID: integer;

    procedure UpdateLinkControls();
    procedure UpdateFontControls();
    procedure UpdateBlockControls();
    procedure UpdatePageControl();
    {$IFDEF PSHE3UP}
    procedure UpdateTableControls();
    {$ENDIF}
    procedure SetModifiedStatus(iModified:boolean);
    procedure NotifyImageSelectionChanged();
    function GetExeDir:string;
    procedure OpenDocument(const iFilename:string);
    procedure FocusEditor();
    procedure ShowFontDialog();
    procedure LoadStyleSheet();
    procedure LoadClassStylesIntoComboBox();
    procedure SetSQL(AValue : string);
    function mergeEmail(sIn: string): string;
    procedure SetProcessFlag;
    procedure SaveDocumentAs();
  public
    { Public declarations }
    HTMLEditBaseDir:string;
    HTMLFilePath:string;
    HTMLFileName:string;
    
    procedure FindDialogFind(Sender: TObject);
    procedure ReplaceDialogReplace(Sender: TObject);
    procedure SetModified(Value: Boolean);
    property EditorValue: TMemoryStream read FEditorValue write FEditorValue;
    property EmailSQL: string read FSql write SetSQL;
    property EventID: integer read FEventID write FEventID default 0;

    procedure Loaded(); override;
  end;

var
  frmGenericEditorHTML: TfrmGenericEditorHTML;

implementation

{$R *.dfm}

uses
    ShellApi, InsertPictureForm, InsertTableForm, psClipboard, psStrings, psHtmlParser,
    psLinkCreator, psMetaTags, psStyleSheets,psHTMLTransformationEngine, ImageZoomerForm,
    AxiomData, StrUtils, MiscFunc, GenExport;

const NEW_DOCUMENT_FILENAME = 'New Document.html';

procedure TfrmGenericEditorHTML.SetSQL(AValue : string);
begin

end;

procedure TfrmGenericEditorHTML.dxBarButtonBoldClick(Sender: TObject);
begin
   with Editor.SelAttributes do
    if dxBarButtonBold.Down then
      Style := Style + [fsBold]
    else
      Style := Style - [fsBold];
end;

procedure TfrmGenericEditorHTML.dxBarButtonItalicClick(Sender: TObject);
begin
   with Editor.SelAttributes do
   if dxBarButtonItalic.Down then
      Style := Style + [fsItalic]
   else
      Style := Style - [fsItalic];
end;

procedure TfrmGenericEditorHTML.dxBarButtonUnderlineClick(Sender: TObject);
begin
   with Editor.SelAttributes do
   if dxBarButtonUnderline.Down then
      Style := Style + [fsUnderline]
   else
      Style := Style - [fsUnderline];
end;

procedure TfrmGenericEditorHTML.dxBarButtonUndoClick(Sender: TObject);
begin
   SendMessage(Editor.Handle, EM_UNDO, 0, 0);
end;

procedure TfrmGenericEditorHTML.dxBarButtonCopyClick(Sender: TObject);
begin
   Editor.CutToClipboard;
end;

procedure TfrmGenericEditorHTML.dxBarButtonPasteClick(Sender: TObject);
begin
   Editor.PasteFromClipboard;
end;

procedure TfrmGenericEditorHTML.dxBarButtonCutClick(Sender: TObject);
begin
   Editor.CopyToClipboard;
end;

procedure TfrmGenericEditorHTML.dxBarButtonSaveClick(Sender: TObject);
begin
{   if fDocumentHistory.Strings[fDocumentHistory.Count - 1] <> NEW_DOCUMENT_FILENAME then
   begin
      HTMLEdit.SaveToFile(fDocumentHistory.Strings[fDocumentHistory.Count - 1],true);
      SetModifiedStatus(false);
   end
   else
    SaveDocumentAs();
}
   Self.ModalResult := mrOk;
end;

procedure TfrmGenericEditorHTML.SaveDocumentAs();
begin
{   SaveDialog.InitialDir := HTMLEditBaseDir;
   SaveDialog.FileName := fDocumentHistory.Strings[fDocumentHistory.Count - 1];

   if SaveDialog.Execute() then
   begin
      HTMLEditBaseDir := ExtractFilePath(SaveDialog.FileName);
      HTMLFilePath := SaveDialog.FileName;
      HTMLFileName := ExtractFileName(SaveDialog.FileName);
      try
         HTMLEdit.SaveToFile(SaveDialog.FileName,true);
         fDocumentHistory.Strings[fDocumentHistory.Count - 1] := SaveDialog.FileName;
         SetModifiedStatus(false);
      finally
//         Statusbar.Panels[0].Text := HTMLEdit.DocumentTitle;
//         Statusbar.Panels[1].Text := HTMLFileName;
      end;
   end;           }
end;

procedure TfrmGenericEditorHTML.SetModified(Value: Boolean);
begin
  Editor.ModifiedAfterEnter := Value;
  if Value then
  begin
    StatusBar.Panels[2].Text := 'Modified';
    TdxStatusBarTextPanelStyle(StatusBar.Panels[2].PanelStyle).ImageIndex := 1;
  end
  else
  begin
    StatusBar.Panels[2].Text := '';
    TdxStatusBarTextPanelStyle(StatusBar.Panels[2].PanelStyle).ImageIndex := 4;
  end;
  dxBarButtonSave.Enabled := Value;
end;

procedure TfrmGenericEditorHTML.EditorPropertiesChange(Sender: TObject);
begin
   if Editor = nil then Exit;

   SetModified(Editor.ModifiedAfterEnter);
//   dxStatusBar.Panels[1].Text := ActiveMDIChild.Caption;
   TdxStatusBarTextPanelStyle(StatusBar.Panels[1].PanelStyle).ImageIndex := 0;
   TdxStatusBarTextPanelStyle(StatusBar.Panels[0].PanelStyle).ImageIndex := 2;
   dxBarButtonUndo.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;
end;

procedure TfrmGenericEditorHTML.FormShow(Sender: TObject);
var
   i: integer;
begin
 
{   if FEditorValue <> nil then
   begin
      FEditorValue.Position := 0;
      Editor.Lines.LoadFromStream(FEditorValue);
   end;      }
end;

procedure TfrmGenericEditorHTML.dxBarButtonOpenClick(Sender: TObject);
begin
  OpenDialog.FileName := '';
  if OpenDialog.Execute then
  begin
     FileName := OpenDialog.FileName;
     HTMLEdit.LoadFromFile(FileName);
     SetModified(True);
     dxBarMRUFiles.RemoveItem(OpenDialog.FileName, nil);
  end;
end;

procedure TfrmGenericEditorHTML.dxBarButtonPrintClick(Sender: TObject);
begin
   if PrintDialog.Execute then Editor.Print(FileName);
end;

procedure TfrmGenericEditorHTML.dxBarButtonAlignLeftClick(Sender: TObject);
begin
  if TdxBarLargeButton(Sender).Down then
    Editor.Paragraph.Alignment := TAlignment(TdxBarLargeButton(Sender).Tag)
  else
    Editor.Paragraph.Alignment := taLeftJustify;
end;

procedure TfrmGenericEditorHTML.cb_FontSizeClick(Sender: TObject);
begin
   try
      FontDialog.Font.Assign(Editor.SelAttributes);
      if FontDialog.Execute then
         Editor.SelAttributes.Assign(FontDialog.Font);
   except
   //
   end;
end;

procedure TfrmGenericEditorHTML.cb_FontSizeChange(Sender: TObject);
begin
  with HTMLEdit do
    if TextSelected then
      PutSpanAroundSelection('<span style="font-size:' + cb_FontSize.Text + '">')
    else
      PutSpanAroundCursor('<span style="font-size:' + cb_FontSize.Text + '">');
end;

procedure TfrmGenericEditorHTML.dxBarComboFontColorChange(Sender: TObject);
begin
//  if cd_ColorSelection.Execute() then
    with HTMLEdit do
      if TextSelected then
        PutColorSpanAroundSelection(dxBarComboFontColor.Color)
      else
        PutColorSpanAroundCursor(dxBarComboFontColor.Color);
end;

procedure TfrmGenericEditorHTML.dxBarButtonReplaceClick(Sender: TObject);
begin
   Editor.SelLength := 0;
   ReplaceDialog.Execute;
end;

procedure TfrmGenericEditorHTML.dxBarButtonFindClick(Sender: TObject);
begin
  Editor.SelLength := 0;
  FindDialog.Execute;
end;

procedure TfrmGenericEditorHTML.ReplaceDialogReplace(Sender: TObject);
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
      Application.MessageBox(PChar(S), 'Information', MB_ICONINFORMATION);
    end;
  end;
end;

procedure TfrmGenericEditorHTML.FindDialogFind(Sender: TObject);
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


procedure TfrmGenericEditorHTML.btnInsertPicClick(Sender: TObject);
var
   lImageSource:string;
   frmInsertPicture: TfrmInsertPicture;
begin
   try
      frmInsertPicture := TfrmInsertPicture.Create(Self);
      with HTMLEdit, frmInsertPicture do
      begin
         if ShowModal() = mrOk then
         begin
            lImageSource := ExtractFilename(PictureFilename);

            { Inserts an image at the cursor position }
            InsertImage(lImageSource, // the image tag's "src" attribute
                        PictureAlignment, // the "align" attribute
                        'test', '', // the "class" and "style" attributes (both optional)
                        nil, // an optional custom tag (see the website for more information)
                        PictureWidth, // the "width" and "height" attributes
                        PictureHeight, // (both optional)
                        true, // whether the newly inserted image should become selected (optional)
                        Alt); // the "alt" attribute
         end;
      end;
   finally
     frmInsertPicture.Free;
   end;
end;

procedure TfrmGenericEditorHTML.btnCreateTableClick(Sender: TObject);
var
   frmInsertTable: TfrmInsertTable;
begin
   try
      frmInsertTable := TfrmInsertTable.Create(Self);
      with frmInsertTable do
      begin
         if ShowModal() = mrOk then
            HTMLEdit.InsertTable(NumberOfColumns,NumberOfRows,TableWidth,CellSpacing,
                              CellPadding,TableClass,TableStyle,CellClass,CellStyle);
      end;
   finally
      frmInsertTable.Free;
   end;
end;

procedure TfrmGenericEditorHTML.dxBarButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmGenericEditorHTML.HTMLEditCursorMoved(Sender: TObject);
begin
  UpdateLinkControls();
  UpdateBlockControls();
  UpdateFontControls();
  btnHyperlink.Enabled := (not HTMLEdit.ReadOnly) and (HTMLEdit.TextSelected or btnHyperlink.Down);

  UpdateTableControls();
end;

procedure TfrmGenericEditorHTML.HTMLEditDocumentChanged(Sender: TObject);
begin
  { The OnDocumentChanged event is called whenever the document is changed. This
    can occur because the user changed the document (typing text, pasting from
    clipboard, etc.) or because the host application changed the document
    (applied a style to the selection, inserted an image, etc.).
    The event allows you to reflect changes of the document in your
    application's user interface, e.g. showing the name of the current
    paragraph's style in a combobox. }
  UpdateLinkControls();
  UpdateBlockControls();
  UpdateFontControls();
  btnHyperlink.Enabled := (not HTMLEdit.ReadOnly) and (HTMLEdit.TextSelected or btnHyperlink.Down);

  UpdateTableControls();


  SetModifiedStatus(true);
end;

procedure TfrmGenericEditorHTML.HTMLEditDocumentLoadingError(iSender: TObject;
  const iExceptionClassName, iExceptionMessage: String);
begin
  ShowMessage('Document loading error');
end;

procedure TfrmGenericEditorHTML.dxBarButton10Click(Sender: TObject);
begin
  HTMLEdit.DeleteCurrentTable();
end;

procedure TfrmGenericEditorHTML.HTMLEditImageClicked(iSender: TObject;
  iImage: TpsImage; iButton: TMouseButton; const iPoint: TPoint;
  var oSelectImage: Boolean);
begin
  { This event handler is called whenever the user clicks on an image. The
    iImage parameter can be used to retrieve image attribute (like src,alignment
    etc.) as well as user-defined attributes which are not persistently stored
    in the document but can be used by the host application in any way it
    wishes. }
  oSelectImage := true;
end;

procedure TfrmGenericEditorHTML.HTMLEditImageConfirmResize(iSender: TObject;
  iImage: TpsImage; iNewWidth, iNewHeight: Integer;
  var oConfirmResize: Boolean);
begin
  { When the user is done resizing the image using the mouse this event handler
    is called. At this time it is possible to abort the resizing process (for
    example, because of an undesired image size). }
  oConfirmResize := true;
end;

procedure TfrmGenericEditorHTML.HTMLEditImageDoubleClicked(iSender: TObject;
  iImage: TpsImage; const iPoint: TPoint);
begin
  frm_ImageZoomer.Image := iImage.Source;
  frm_ImageZoomer.ShowModal();
end;

procedure TfrmGenericEditorHTML.HTMLEditImageMouseEnter(iSender: TObject;
  iImage: TpsImage; var oHoverMouseCursor: TCursor);
begin
  Statusbar.Panels[2].Text := iImage.Source;
  oHoverMouseCursor := crArrow;
end;

procedure TfrmGenericEditorHTML.HTMLEditImageMouseLeave(Sender: TObject);
begin
  Statusbar.Panels[2].Text := '';
end;

procedure TfrmGenericEditorHTML.HTMLEditImageResizingSizeChanged(iSender: TObject;
  iImage: TpsImage; iCurrentWidth, iCurrentHeight: Integer);
begin
  Statusbar.Panels[2].Text := '(' + IntToStr(iCurrentWidth) + ',' + IntToStr(iCurrentHeight) + ')';
  Statusbar.Repaint();
end;

procedure TfrmGenericEditorHTML.HTMLEditImageSelected(iSender: TObject;
  iSelectedImage: TpsImage; var oResizable, oMovable: Boolean);
begin
  { The host application can determine the image's resizability and movability
    on an individual basis (or for all images equally). }
  oResizable := true;
  oMovable := true;
  btnDeleteImage.Enabled := true;

  mi_CreateImageLink.Enabled := not Assigned(iSelectedImage.LinkTag);
  mi_DeleteImageLink.Enabled := Assigned(iSelectedImage.LinkTag);
  btnRemoveInnermostSpan.Enabled := false;
//  btnFont.Enabled := false;

  NotifyImageSelectionChanged();
end;

procedure TfrmGenericEditorHTML.HTMLEditImageStartDragging(iSender: TObject;
  iImage: TpsImage; var oAllowedDragAlignments: TpsAllowedDragAlignments);
begin
  { Here you can decide based on the image which will be dragged which dragging
    alignments are allowed and which are forbidden. }
  oAllowedDragAlignments := [adaLeft,adaCenter,adaRight];
end;

procedure TfrmGenericEditorHTML.HTMLEditImageUnselected(Sender: TObject);
begin
  Statusbar.Panels[2].Text := '';
  btnDeleteImage.Enabled := false;
  NotifyImageSelectionChanged();
end;

procedure TfrmGenericEditorHTML.HTMLEditLoadExternalStylesheet(iSender: TObject;
  const ioLinkTag: TpsMarkupTag);
var
   lFilename: string;
begin
  lFilename := GetExeDir() + ioLinkTag.Attribute['href'];
  if FileExists(lFilename) then
    HTMLEdit.LoadStylesheetFromFile(lFilename,false);
end;

procedure TfrmGenericEditorHTML.HTMLEditMergeBlocks(iSender: TObject;
  const iFirstBlockClass, iSecondBlockClass: String; iFirstBlockEmpty,
  iSecondBlockEmpty: Boolean; var ioMergedBlockClass: String);
begin
  if iFirstBlockEmpty then
    ioMergedBlockClass := iSecondBlockClass
  else
    ioMergedBlockClass := iFirstBlockClass;
end;

procedure TfrmGenericEditorHTML.HTMLEditRequestImage(iSender: TObject; iImageID,
  iWidth, iHeight: Integer; var oGraphic: TGraphic;
  var oGraphicContainer: TObject);
var lPicture: TPicture;
  {$IFDEF USE_GRAPHICEX}
  GraphicClass:TGraphicExGraphicClass;
  {$ENDIF}
  lImageFilename:string;
begin
  { At first the image is searched in the directory in which the demo executable
    resides }
  lImageFilename := GetExeDir() + HTMLEdit.GetImageUrl(iImageID);

  { ... then in the directory from which the document was loaded. }
  if not FileExists(lImageFilename) then
    lImageFilename := HTMLEditBaseDir + HTMLEdit.GetImageUrl(iImageID);

  if FileExists(lImageFilename) then begin
    {$IFDEF USE_GRAPHICEX}
    GraphicClass := FileFormatList.GraphicFromContent(lImageFilename);
    if Assigned(GraphicClass) then begin
      lPicture := nil;
      oGraphic := GraphicClass.Create();
      oGraphic.LoadFromFile(lImageFilename);
    end
    else begin
      lPicture := TPicture.Create();
      lPicture.LoadFromFile(lImageFilename);
    end;
    {$ELSE}
    lPicture := TPicture.Create();
    lPicture.LoadFromFile(lImageFilename);  
    {$ENDIF}
  end
  else begin
    lPicture := TPicture.Create();
    lPicture.LoadFromFile(GetExeDir() + 'Placeholder.bmp');
  end;

  if Assigned(lPicture) then begin
    oGraphic := lPicture.Graphic;
    oGraphicContainer := lPicture;
  end;

end;

procedure TfrmGenericEditorHTML.HTMLEditRequestResizedGraphic(iSender: TObject;
  const iImageSource: String; iWidth, iHeight: Integer;
  out oGraphic: TGraphic);
var
  lHighResBitmap:TBitmap;
begin
  if (LowerCase(iImageSource) = 'pslogo.bmp') and (FileExists(GetExeDir() + 'PSLogo HR.bmp')) then begin
    lHighResBitmap := TBitmap.Create();
    try
      lHighResBitmap.LoadFromFile(GetExeDir() + 'PSLogo HR.bmp');
      oGraphic := lHighResBitmap;
    except
      FreeAndNil(lHighResBitmap);
    end;
  end;

end;

procedure TfrmGenericEditorHTML.HTMLEditSplitBlock(iSender: TObject;
  const iCurrentBlockClass: String; iCursorPosition: TpsCursorPosition;
  var ioFirstBlockClass, ioSecondBlockClass: String;
  var oAllowSplit: Boolean);
begin
  if iCursorPosition in [cpBlockMiddle, cpBlockEnd] then
    if iCurrentBlockClass = 'heading1' then
      ioSecondBlockClass := 'heading2'
    else
      ioSecondBlockClass := '';
end;

procedure TfrmGenericEditorHTML.HTMLEditSupportedCustomTag(iSender: TObject;
  const iTag: TpsMarkupTag; var oSupportedCustomTag: Boolean);
begin
  oSupportedCustomTag := false;
end;

procedure TfrmGenericEditorHTML.HTMLEditTextClicked(Sender: TObject);
var
  lFilename,lUrl:string;
begin
  if HTMLEdit.CurrentBlockExists then
    with HTMLEdit.CurrentBlock do begin
      if SpansAroundCursor.Contains('a') then begin
        { The user clicked on a link }
        lUrl := SpansAroundCursor.SpanByTagName['a'].Attribute['href'];
        lFilename := ExtractFilePath(Application.ExeName) + lUrl;
        if FileExists(lFilename) then
          OpenDocument(lFilename)
{        else begin
          if LowerCase(lUrl) = 'goto_ie' then
            SwitchToTabSheet(ts_InternetExplorer)
          else if LowerCase(lUrl) = 'goto_css' then
            SwitchToTabSheet(ts_Stylesheet)
          else if LowerCase(lUrl) = 'goto_html' then
            SwitchToTabSheet(ts_HTML)
          else if LowerCase(lUrl) = 'goto_meta' then
            SwitchToTabSheet(ts_MetaTags)
          else
            ShellExecute(0, 'open',pAnsiChar(lUrl), '', '',SW_SHOW);
        end;  }
      end;
    end;
end;

procedure TfrmGenericEditorHTML.UpdateLinkControls();
var LinkIndex:integer;
begin
  with HTMLEdit do begin
    if CurrentBlockExists and (not TextSelected) then begin
      LinkIndex := CurrentBlock.SpansAroundCursor.IndexOf(tnA);
      if LinkIndex <> -1 then begin
        ed_LinkHRef.Text := CurrentBlock.SpansAroundCursor[LinkIndex].Attribute['href'];
        btnHyperlink.Down := true;
        btnHyperlink.Enabled := true;
      end
      else begin
        ed_LinkHRef.Text := '';
        btnHyperlink.Down := false;
        btnHyperlink.Enabled := false;
      end;
    end;
  end;
end;

procedure TfrmGenericEditorHTML.UpdateFontControls();
var
   lFontSize:TpsFontSize;
begin
  cb_FontPicker.ItemIndex := cb_FontPicker.Items.IndexOf(HTMLEdit.GetCurrentFontFamily());

  lFontSize := HTMLEdit.GetCurrentFontSize();
  if lFontSize.Size > 0 then begin
    case lFontSize.SizeUnit of
      fsuPt: cb_FontSize.ItemIndex := cb_FontSize.Items.IndexOf(IntToStr(lFontSize.Size) + 'pt');
      fsuPx: cb_FontSize.ItemIndex := cb_FontSize.Items.IndexOf(IntToStr(lFontSize.Size) + 'px');
    end;
  end
  else
    cb_FontSize.ItemIndex := -1;
end;

{$IFDEF PSHE3UP}
procedure TfrmGenericEditorHTML.UpdateTableControls();
begin
  with HTMLEdit do begin
    if CurrentTableExists then
      with CurrentTable do
        Statusbar.Panels[2].Text := '(' + IntToStr(CurrentCol) + ',' + IntToStr(CurrentRow) + ')';
  end;
end;
{$ENDIF}

procedure TfrmGenericEditorHTML.UpdateBlockControls();
begin
   with HTMLEdit do
   begin
      try
         if CurrentBlockExists then
            cbStyles.Text := CurrentBlock.BlockClass;
      except
      //
      end;
      btnRemoveInnermostSpan.Enabled := CurrentBlockExists;
      btnFont.Enabled := CurrentBlockExists;
   end;
end;

procedure TfrmGenericEditorHTML.btnHyperlinkClick(Sender: TObject);
begin
  with HTMLEdit do begin
    if btnHyperlink.Down then begin
      if TextSelected then begin
        ActiveControl := ed_LinkHRef;

        ed_LinkHRef.Properties.ReadOnly := false;
        ed_LinkHRef.Style.Color := clWindow;
        ed_LinkHRef.Text := 'http://';
        ed_LinkHRef.SelStart := Length(ed_LinkHRef.Text);
        ed_LinkHRef.SelLength := 0;

        btnHyperlink.Down := false;
      end;
    end
    else begin
      if CurrentBlockExists then
        CurrentBlock.SpansAroundCursor.Remove('a');
    end;
  end;
end;

procedure TfrmGenericEditorHTML.SetModifiedStatus(iModified:boolean);
begin
  if iModified then begin
    Statusbar.Panels[4].Text := 'Modified';
    dxBarButtonSave.Enabled := true;
  end
  else begin
    Statusbar.Panels[4].Text := '';
    dxBarButtonSave.Enabled := false;
  end;
end;

procedure TfrmGenericEditorHTML.btnRemoveInnermostSpanClick(Sender: TObject);
begin
  with HTMLEdit do
    if CurrentBlockExists then
      CurrentBlock.SpansAroundCursor.RemoveInnermost();
  FocusEditor();
end;

procedure TfrmGenericEditorHTML.NotifyImageSelectionChanged();
begin
{  with HTMLEdit do begin
    mmi_ImageAlignLeft.Enabled := ImageSelected;
    mmi_ImageAlignMiddle.Enabled := ImageSelected;
    mmi_ImageAlignRight.Enabled := ImageSelected;
    mmi_ImageDelete.Enabled := ImageSelected;
    mmi_ImageCreateLink.Enabled := ImageSelected and (not Assigned(SelectedImage.LinkTag));
    mmi_ImageDeleteLink.Enabled := ImageSelected and Assigned(SelectedImage.LinkTag);
    mmi_ImageRestoreOriginalSize.Enabled := ImageSelected;
  end; }
end;


function TfrmGenericEditorHTML.GetExeDir():string;
begin
  result := ExtractFilePath(ParamStr(0));
end;

procedure TfrmGenericEditorHTML.OpenDocument(const iFilename:string);
begin
  HTMLEditBaseDir := ExtractFilePath(iFilename);
  HTMLFilePath := OpenDialog.FileName;
  HTMLFileName := ExtractFilePath(iFilename);
  try
    try
//      PageControl.ActivePageIndex := 0;
      with HTMLEdit do begin
        LoadStylesheetFromString('');
        LoadFromFile(iFileName,false);
        ReadOnly := (HTMLEdit.MetaTags.ContentByName['readonly'] = 'true');
        {$IFDEF PSHE3UP}
        if HTMLEdit.MetaTags.ContentByName['revealtags'] = 'true' then
          RevealTags := true;
        {$ENDIF}
        {$IFDEF USE_ADDICT_SPELLCHECKER}
        if SmartTags.Enabled then
          SmartTags.HandlersByID[fSpellcheckerSmartTagHandlerID].Enabled := (MetaTags.ContentByName['spellchecker'] <> 'false');
        {$ENDIF}
        MetaTags.ContentByHttpEquiv['content-type'] := 'text/html; charset=ISO-8859-1';
      end;
      SetModifiedStatus(false);
//      fDocumentHistory.Add(iFilename);
    except
      on E:EpsHtmlEditParserSyntaxError do begin
        ShowMessage('Yes, it really got through.');
      end;
    end;
  finally
    Statusbar.Panels[0].Text := HTMLEdit.DocumentTitle;
    Statusbar.Panels[1].Text := ExtractFileName(iFileName);
  end;
end;

procedure TfrmGenericEditorHTML.btnFontClick(Sender: TObject);
begin
   ShowFontDialog();
end;

procedure TfrmGenericEditorHTML.FocusEditor();
begin
//  if PageControl.ActivePage = ts_HTMLEdit then
    ActiveControl := HTMLEdit;
end;

procedure TfrmGenericEditorHTML.ShowFontDialog();
begin
  FontDialog.Font.Style := HTMLEdit.GetCurrentFontStyle();
  if FontDialog.Execute() then
    with FontDialog.Font do
      if HTMLEdit.TextSelected then
        HTMLEdit.PutFontSpanAroundSelection(Name,Size,Color,Style)
      else
        HTMLEdit.PutFontSpanAroundCursor(Name,Size,Color,Style);
end;

procedure TfrmGenericEditorHTML.UpdatePageControl();
var i:integer;
  lListItem:TListItem;
  lTempFile:string;
  lDocument:string;
begin
//  if PageControl.ActivePage = ts_Body then begin
    { Show the document in the source view }
//    re_Body.Lines.Text := HTMLEdit.Text;
//    ScrollRichEditToTop(re_Body);
//  end else
//  if PageControl.ActivePage = ts_HTML then begin
    { Show the document in the source view }
    HTMLEdit.SaveToString(lDocument,true);
//    re_HTML.Lines.Text := lDocument;
//    ScrollRichEditToTop(re_HTML);
{  end else if PageControl.ActivePage = ts_MetaTags then begin
    lv_Meta.Items.Clear();
    with HTMLEdit do begin
      for i := 0 to MetaTags.Count - 1 do begin
        lListItem := lv_Meta.Items.Add();
        if MetaTags.Items[i].Attribute['http-equiv'] <> '' then begin
          lListItem.Caption := 'HTTP-EQUIV';
          lListItem.SubItems.Add(MetaTags.Items[i].Attribute['http-equiv']);
        end
        else begin
          lListItem.Caption := 'NAME';
          lListItem.SubItems.Add(MetaTags.Items[i].Attribute['name']);
        end;
        lListItem.SubItems.Add(MetaTags.Items[i].Attribute['content']);
      end;
    end;
  end else if PageControl.ActivePage = ts_InternetExplorer then begin
    lTempFile := GetExeDir() + 'HtmlEditDemo.tmp';
    HTMLEdit.SaveToFile(lTempFile,true);
    wb_Browser.Navigate('file://' + lTempFile);
  end; }
end;

procedure TfrmGenericEditorHTML.LoadClassStylesIntoComboBox();
var i:integer;
begin
  with HTMLEdit.StyleSheet do
    for i := 0 to Count - 1 do
      if StyleByIndex[i].ClassStyle then
        cbStyles.Items.Add(StyleByIndex[i].Name);

  if cbStyles.Items.Count > 0 then
    cbStyles.ItemIndex := 0;
end;

procedure TfrmGenericEditorHTML.Loaded();
begin
  inherited;
  LoadStyleSheet();
  LoadClassStylesIntoComboBox();
end;

procedure TfrmGenericEditorHTML.LoadStyleSheet();
begin
  HTMLEdit.LoadStyleSheetFromFile(GetExeDir() + 'Sample Stylesheet.css',true);
  HTMLEdit.StyleSheet.Beautiful := true;
//  re_StyleSheet.Lines.Clear();
//  re_StyleSheet.Lines.Add(HTMLEdit.StyleSheet.AsString);
end;


procedure TfrmGenericEditorHTML.cbStylesChange(Sender: TObject);
begin
   if HTMLEdit.CurrentBlockExists then
      HTMLEdit.CurrentBlock.BlockClass := cbStyles.Items[cbStyles.ItemIndex];
   FocusEditor();
end;

function TfrmGenericEditorHTML.mergeEmail(sIn: string): string;
var
   sResult, sFieldName, sValue: string;
   iLoop: integer;
   Field: TField;
begin
{   sResult := sIn;

   qryEmails.First;
   if qryEmails.eof then
   begin
      mergeEmail := '';
      exit;
   end;

   for iLoop := 0 to qryEmails.Fields.Count - 1 do
   begin
      Field := qryEmails.Fields[iLoop];
      sFieldName := '&lt;&lt;' + Field.FieldName + '&gt;&gt;';

      if field.DataType in [ftDateTime, ftDate, ftTime] then
      begin
         sValue := formatDateTime('DD/MM/YYYY', field.asDateTime);
      end
      else
      begin
         sValue := field.asString;
      end;
      sResult := AnsiReplaceText(sResult, sFieldName, sValue);
   end;

   mergeEmail := sResult;  }
end;

procedure TfrmGenericEditorHTML.tvEmailsSELECTHeaderClick(Sender: TObject);
begin
   SetProcessFlag;
end;

procedure TfrmGenericEditorHTML.SetProcessFlag;

begin
end;

procedure TfrmGenericEditorHTML.dxBarButtonNewClick(Sender: TObject);
begin
   LoadStyleSheet();
   HTMLEdit.Text := '<p></p>';
   HTMLEdit.ReadOnly := false;
   fDocumentHistory.Add(NEW_DOCUMENT_FILENAME);
end;

procedure TfrmGenericEditorHTML.FormCreate(Sender: TObject);
var
   i: integer;
begin
   inherited;

   for i := 0 to Screen.Fonts.Count - 1 do
      cb_FontPicker.Items.Add(Screen.Fonts.Strings[i]);

   fAddictSpell := TAddictSpell3.Create(self);
   fThesaurus := TThesaurus3.Create(self);

   fDocumentHistory := TStringList.Create();
   fSpellcheckerSmartTagHandlerID := HTMLEdit.RegisterSmartTagHandler(TpsSmartTagSpellChecker.Create(fAddictSpell));

end;

procedure TfrmGenericEditorHTML.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   fAddictSpell := nil;
   fThesaurus := nil;

   fDocumentHistory.Free;
end;

procedure TfrmGenericEditorHTML.cb_FontPickerChange(Sender: TObject);
begin
   with HTMLEdit do
   if TextSelected then
      PutSpanAroundSelection('<span style="font-family:' + cb_FontPicker.Text + '">')
   else
      PutSpanAroundCursor('<span style="font-family:' + cb_FontPicker.Text + '">');

end;

end.
