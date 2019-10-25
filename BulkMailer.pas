unit BulkMailer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxContainer, dxBar, ImgList, dxBarExtItems, cxMemo, OleCtrls,
  uRwSHDocVw_TLB, uRwWebBrowser, cxTextEdit, cxRichEdit, cxPC, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, dxDockControl, dxDockPanel,
  dxStatusBar, ComCtrls, DBAccess, OracleUniProvider, Uni, MemDS, cxCheckBox, cxGroupBox,
  cxRadioGroup, ActnList, Menus, Clipbrd, cxLabel,
  cxPCdxBarPopupMenu,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdMessage, IdExplicitTLSClientServerBase, IdSMTPBase,
  cxNavigator, Vcl.StdCtrls, IdIOHandler, IdText,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, SHDocVw_EWB,
  RichEditBrowser, SHDocVw, mshtml, EwbCore, EmbeddedWB, IdAttachmentFile,
  dxBarExtDBItems, System.Math, dd_HTMLEditor, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  System.ImageList, ppParameter, ppRichTx, ppBands, ppClass, ppDesignLayer,
  ppModule, raCodMod, ppCtrls, ppReport, ppPrnabl, ppStrtch, ppSubRpt, ppCache,
  ppComm, ppRelatv, ppProd, ppDB, ppDBPipe, IdSASL, IdSASLUserPass, IdSASLLogin,
  IdUserPassProvider, IdIntercept, IdLogBase, IdLogFile, cxDBLookupComboBox,
  cxBarEditItem;

type
  TfrmBulkMailer = class(TForm)
    dxDockSite1: TdxDockSite;
    dxDockPanel1: TdxDockPanel;
    dxDockPanel2: TdxDockPanel;
    dxDockPanel3: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    Panel1: TPanel;
    tvEmails: TcxGridDBTableView;
    lvEmails: TcxGridLevel;
    grdEmails: TcxGrid;
    pagMain: TcxPageControl;
    tabRTF: TcxTabSheet;
    tabHTML: TcxTabSheet;
    tabRAW: TcxTabSheet;
    MemoRawText: TcxMemo;
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
    cb_FontPicker: TdxBarFontNameCombo;
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
    dxBarDockControl1: TdxBarDockControl;
    StatusBar: TdxStatusBar;
    OpenDialog: TOpenDialog;
    qryEmails: TUniQuery;
    dsEmails: TUniDataSource;
    tvEmailsREFNO: TcxGridDBColumn;
    tvEmailsEMAIL: TcxGridDBColumn;
    tvEmailsSELECT: TcxGridDBColumn;
    lvFields: TcxGridLevel;
    grdFields: TcxGrid;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    btnInsertPic: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    btnCreateTable: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    btnSendEmails: TdxBarButton;
    tvFields: TcxGridTableView;
    tvFieldsFieldName: TcxGridColumn;
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
    dxTabContainerDockSite1: TdxTabContainerDockSite;
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
    ed_LinkHRef: TcxTextEdit;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    pm_FieldAdd: TPopupMenu;
    MenuItem1: TMenuItem;
    spAxiomEmail: TUniStoredProc;
    btnExportEmails: TdxBarButton;
    qryPopDetails: TUniQuery;
    qryInsertNNameDoc: TUniQuery;
    spHTMLEmail: TUniStoredProc;
    dxBarButton15: TdxBarButton;
    HTMLEditor: TEmbeddedWB;
    Editor: TRichEdit;
    Memo1: TMemo;
    AddFieldtoSubject1: TMenuItem;
    N1: TMenuItem;
    cmbEmailTemplates: TdxBarLookupCombo;
    qryEmailTemplates: TUniQuery;
    dsEmailTemplates: TUniDataSource;
    dxBarButton3: TdxBarButton;
    qryEmailTemplate: TUniQuery;
    Panel2: TPanel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    edFrom: TcxTextEdit;
    edSubject: TcxTextEdit;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppRichText3: TppRichText;
    ppRichText2: TppRichText;
    raCodeModule2: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    dsRB_Item: TUniDataSource;
    plReports: TppDBPipeline;
    plReportsppField1: TppField;
    plReportsppField2: TppField;
    plReportsppField3: TppField;
    plReportsppField4: TppField;
    plReportsppField5: TppField;
    plReportsppField6: TppField;
    plReportsppField7: TppField;
    plReportsppField8: TppField;
    plReportsppField9: TppField;
    qryRB_Items: TUniQuery;
    qryRB_ItemsROWID: TStringField;
    qryRB_ItemsITEM_ID: TIntegerField;
    qryRB_ItemsFOLDER_ID: TIntegerField;
    qryRB_ItemsITEM_NAME: TStringField;
    qryRB_ItemsITEM_SIZE: TIntegerField;
    qryRB_ItemsITEM_TYPE: TIntegerField;
    qryRB_ItemsMODIFIED: TFloatField;
    qryRB_ItemsDELETED: TFloatField;
    qryRB_ItemsTEMPLATE: TMemoField;
    Panel3: TPanel;
    rbDebtors: TcxRadioButton;
    rbMatters: TcxRadioButton;
    cmbStatementTemplate: TcxBarEditItem;
    qryReportList: TUniQuery;
    dsReportList: TUniDataSource;
    tvEmailsNMATTER: TcxGridDBColumn;
    tvEmailsNNAME: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    edCC: TcxTextEdit;
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
    procedure cb_FontPickerChange(Sender: TObject);
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
    procedure btnHyperlinkClick(Sender: TObject);
    procedure btnRemoveInnermostSpanClick(Sender: TObject);
    procedure btnFontClick(Sender: TObject);
    procedure cbStylesChange(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure btnSendEmailsClick(Sender: TObject);
    procedure tvFieldsDblClick(Sender: TObject);
    procedure btnExportEmailsClick(Sender: TObject);
    procedure tvEmailsSELECTHeaderClick(Sender: TObject);
    procedure dxBarButtonNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton15Click(Sender: TObject);
    procedure HTMLEditorEnter(Sender: TObject);
    procedure pagMainChange(Sender: TObject);
    procedure EditorDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AddFieldtoSubject1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IdSMTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure rbDebtorsClick(Sender: TObject);
    procedure rbMattersClick(Sender: TObject);
  private
    { Private declarations }
    FEditorValue: TMemoryStream;
    FileName: string;
    FUpdating: Boolean;
    FSql: string;
    FEventID: integer;
    fDocumentHistory: TStringList;
    fSpellcheckerSmartTagHandlerID: integer;
    fTemplateDir: string;
    FDebtorStatements: integer;

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
    function mergeEmail(sIn: string): string;  //(sIn: tstrings): tstrings;
    procedure SetProcessFlag;
    procedure SaveDocumentAs();
    procedure SaveEmail(ANName: integer; ASubject: string); overload;
    procedure SearchAndReplace(InSearch, InReplace: string);
    procedure LoadTemplate(ATemplateID: Integer);
    procedure PopulateGrid;
    procedure SaveEmail(ANMatter: integer; ASubject: string; AEmail, ADocName: string); overload;
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
    property DebtorStatements: integer read FDebtorStatements write FDebtorStatements default 0;

    procedure Loaded(); override;
  end;

var
  frmBulkMailer: TfrmBulkMailer;

implementation

{$R *.dfm}

uses
    ShellApi, InsertTableForm, IdExceptionCore,
    AxiomData, StrUtils, MiscFunc, GenExport, IdMessageBuilder,
    ppTypes,  IdMessageParts, IdAttachment, LoggingSnippet, IdSASLCollection,
    IdGlobal;

const NEW_DOCUMENT_FILENAME = 'New Document.html';

var
   TemplateDir: string;

procedure TfrmBulkMailer.SetSQL(AValue : string);
begin
   try
      if DebtorStatements = 0 then
      begin
         FSQL := AValue;
         qryEmails.SQL.Text := AValue;
         if dmAxiom.RunningIde then
            qryEmails.SQL.SaveToFile('c:\tmp\bulkmail.sql');
         qryEmails.Close();
         if EventID > 0 then
            qryEmails.ParamByName('event_id').AsInteger := EventID;
      end
      else
      begin
         FSQL := AValue;
         qryEmails.SQL.Text := AValue;
      end;
   finally
      qryEmails.Open();
   end;
end;

procedure TfrmBulkMailer.dxBarButtonBoldClick(Sender: TObject);
begin
   with Editor.SelAttributes do
    if dxBarButtonBold.Down then
      Style := Style + [fsBold]
    else
      Style := Style - [fsBold];
end;

procedure TfrmBulkMailer.dxBarButtonItalicClick(Sender: TObject);
begin
   with Editor.SelAttributes do
   if dxBarButtonItalic.Down then
      Style := Style + [fsItalic]
   else
      Style := Style - [fsItalic];
end;

procedure TfrmBulkMailer.dxBarButtonUnderlineClick(Sender: TObject);
begin
   with Editor.SelAttributes do
   if dxBarButtonUnderline.Down then
      Style := Style + [fsUnderline]
   else
      Style := Style - [fsUnderline];
end;

procedure TfrmBulkMailer.dxBarButtonUndoClick(Sender: TObject);
begin
   SendMessage(Editor.Handle, EM_UNDO, 0, 0);
end;

procedure TfrmBulkMailer.dxBarButtonCopyClick(Sender: TObject);
begin
   Editor.CutToClipboard;
end;

procedure TfrmBulkMailer.dxBarButtonPasteClick(Sender: TObject);
begin
   Editor.PasteFromClipboard;
end;

procedure TfrmBulkMailer.dxBarButtonCutClick(Sender: TObject);
begin
   Editor.CopyToClipboard;
end;

procedure TfrmBulkMailer.dxBarButtonSaveClick(Sender: TObject);
begin
   try
      if fDocumentHistory.Strings[fDocumentHistory.Count - 1] <> NEW_DOCUMENT_FILENAME then
      begin
//         HTMLEdit.SaveToFile(fDocumentHistory.Strings[fDocumentHistory.Count - 1],true);
         SetModifiedStatus(false);
      end
      else
         SaveDocumentAs();
   except
      SaveDocumentAs();
   end;
end;

procedure TfrmBulkMailer.SaveDocumentAs();
begin
   SaveDialog.InitialDir := HTMLEditBaseDir;
   SaveDialog.FileName := fDocumentHistory.Strings[fDocumentHistory.Count - 1];

   if SaveDialog.Execute() then
   begin
      HTMLEditBaseDir := ExtractFilePath(SaveDialog.FileName);
      HTMLFilePath := SaveDialog.FileName;
      HTMLFileName := ExtractFileName(SaveDialog.FileName);
      try
//         HTMLEdit.SaveToFile(SaveDialog.FileName,true);
         fDocumentHistory.Strings[fDocumentHistory.Count - 1] := SaveDialog.FileName;
         SetModifiedStatus(false);
      finally
//         Statusbar.Panels[0].Text := HTMLEdit.DocumentTitle;
//         Statusbar.Panels[1].Text := HTMLFileName;
      end;
   end;
end;

procedure TfrmBulkMailer.SetModified(Value: Boolean);
begin
//  Editor1.ModifiedAfterEnter := Value;
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

procedure TfrmBulkMailer.EditorDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   Accept := False;
end;

procedure TfrmBulkMailer.EditorPropertiesChange(Sender: TObject);
begin
   if Editor = nil then Exit;

//   SetModified(Editor1.ModifiedAfterEnter);
//   dxStatusBar.Panels[1].Text := ActiveMDIChild.Caption;
   TdxStatusBarTextPanelStyle(StatusBar.Panels[1].PanelStyle).ImageIndex := 0;
   TdxStatusBarTextPanelStyle(StatusBar.Panels[0].PanelStyle).ImageIndex := 2;
//   dxBarButtonUndo.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;
end;

procedure TfrmBulkMailer.PopulateGrid;
var
   i: integer;
begin
   with tvFields.DataController do
   begin
      BeginUpdate;
      for i := 0 to qryEmails.FieldCount - 1 do
      begin
         Append;
         tvFieldsFieldName.EditValue :=  qryEmails.Fields[i].FieldName;
      end;
      EndUpdate;
   end;
end;

procedure TfrmBulkMailer.FormShow(Sender: TObject);
begin
   PopulateGrid;
{   if FEditorValue <> nil then
   begin
      FEditorValue.Position := 0;
      Editor.Lines.LoadFromStream(FEditorValue);
   end;      }
   dxBarButtonNew.Click;
   edFrom.Text := SystemString('FROM_EMAIL');
end;

procedure TfrmBulkMailer.dxBarButtonOpenClick(Sender: TObject);
begin
   OpenDialog.FileName := '';
   if OpenDialog.Execute then
   begin
      FileName := OpenDialog.FileName;
//     HTMLEdit.LoadFromFile(FileName);
      Editor.Lines.LoadFromFile(FileName);
      HTMLEditor.LoadFromFile(FileName);
      TemplateDir := ExtractFileDir(FileName);
      SetModified(True);
      dxBarMRUFiles.RemoveItem(OpenDialog.FileName, nil);
      if HTMLEditor.Document <> nil then
         (HTMLEditor.Document AS IHTMLDocument2).designMode := 'on';
   end;
end;

procedure TfrmBulkMailer.dxBarButtonPrintClick(Sender: TObject);
begin
//   if PrintDialog.Execute then Editor.Print(FileName);
end;

procedure TfrmBulkMailer.dxBarButtonAlignLeftClick(Sender: TObject);
begin
  if TdxBarLargeButton(Sender).Down then
    Editor.Paragraph.Alignment := TAlignment(TdxBarLargeButton(Sender).Tag)
  else
//    Editor.Paragraph.Alignment.taLeftJustify;
end;

procedure TfrmBulkMailer.cb_FontSizeClick(Sender: TObject);
begin
  FontDialog.Font.Assign(Editor.SelAttributes);
  if FontDialog.Execute then
    Editor.SelAttributes.Assign(FontDialog.Font);
end;

procedure TfrmBulkMailer.cb_FontSizeChange(Sender: TObject);
begin
  if not FUpdating then
    Editor.SelAttributes.Size := StrToInt(cb_FontSize.Text);
end;

procedure TfrmBulkMailer.dxBarComboFontColorChange(Sender: TObject);
begin
  Editor.SelAttributes.Color := dxBarComboFontColor.Color;
end;

procedure TfrmBulkMailer.LoadTemplate(ATemplateID: integer);
var
   tmpFileName,
   RandFile: string;
    bStream: TStream;
begin
   try
      qryEmailTemplate.Close;
      qryEmailTemplate.ParamByName('id').AsInteger := ATemplateID;
      qryEmailTemplate.Open;
      Randomize;
      RandFile := IntToStr(RandomRange(100, 100000));
      bStream := qryEmailTemplate.CreateBlobStream(qryEmailTemplate.FieldByName('BODY_TEXT'),bmRead);
      try
         tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + '_email_template.HTML';

         bStream.Seek(0, soFromBeginning);

         with TFileStream.Create(tmpFileName, fmCreate) do
         try
            CopyFrom(bStream, bStream.Size)
         finally
            Free
         end;
      finally
         bStream.Free;
         // in case file still sitting in tmp directory
         HTMLEditor.LoadFromFile(tmpFileName)
      end;
   finally
        fTemplateDir := tmpFileName;
//      DeleteFile(tmpFileName);
   end;
end;

procedure TfrmBulkMailer.cb_FontPickerChange(Sender: TObject);
begin
  if not FUpdating then
    Editor.SelAttributes.Name := cb_FontPicker.Text;
end;

procedure TfrmBulkMailer.dxBarButtonReplaceClick(Sender: TObject);
begin
   Editor.SelLength := 0;
   ReplaceDialog.Execute;
end;

procedure TfrmBulkMailer.dxBarButtonFindClick(Sender: TObject);
begin
  Editor.SelLength := 0;
  FindDialog.Execute;
end;

procedure TfrmBulkMailer.ReplaceDialogReplace(Sender: TObject);
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

procedure TfrmBulkMailer.FindDialogFind(Sender: TObject);
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


procedure TfrmBulkMailer.btnInsertPicClick(Sender: TObject);
var
   lImageSource:string;
//   frmInsertPicture: TfrmInsertPicture;
begin
   try
{      frmInsertPicture := TfrmInsertPicture.Create(Self);
      with HTMLEdit, frmInsertPicture do
      begin
         if ShowModal() = mrOk then
         begin
            lImageSource := ExtractFilename(PictureFilename);

            { Inserts an image at the cursor position }
 {           InsertImage(lImageSource, // the image tag's "src" attribute
                        PictureAlignment, // the "align" attribute
                        'test', '', // the "class" and "style" attributes (both optional)
                        nil, // an optional custom tag (see the website for more information)
                        PictureWidth, // the "width" and "height" attributes
                        PictureHeight, // (both optional)
                        true, // whether the newly inserted image should become selected (optional)
                        Alt); // the "alt" attribute
         end;
      end;       }
   finally
//     frmInsertPicture.Free;
   end;
end;

procedure TfrmBulkMailer.AddFieldtoSubject1Click(Sender: TObject);
begin
   edSubject.SelStart;
   edSubject.SelLength;
   edSubject.SelText := '<<'+tvFieldsFieldName.EditValue+'>>';
end;

procedure TfrmBulkMailer.btnCreateTableClick(Sender: TObject);
var
   frmInsertTable: TfrmInsertTable;
begin
   try
      frmInsertTable := TfrmInsertTable.Create(Self);
      with frmInsertTable do
      begin
         if ShowModal() = mrOk then
//            HTMLEdit.InsertTable(NumberOfColumns,NumberOfRows,TableWidth,CellSpacing,
//                              CellPadding,TableClass,TableStyle,CellClass,CellStyle);
      end;
   finally
      frmInsertTable.Free;
   end;
end;

procedure TfrmBulkMailer.dxBarButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmBulkMailer.dxBarButton3Click(Sender: TObject);
begin
   if cmbEmailTemplates.Text <> '' then
      LoadTemplate(cmbEmailTemplates.KeyValue);
end;

procedure TfrmBulkMailer.HTMLEditCursorMoved(Sender: TObject);
begin
  UpdateLinkControls();
  UpdateBlockControls();
  UpdateFontControls();
//  btnHyperlink.Enabled := (not HTMLEdit.ReadOnly) and (HTMLEdit.TextSelected or btnHyperlink.Down);

//  UpdateTableControls();
end;

procedure TfrmBulkMailer.HTMLEditDocumentChanged(Sender: TObject);
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
//  btnHyperlink.Enabled := (not HTMLEdit.ReadOnly) and (HTMLEdit.TextSelected or btnHyperlink.Down);

//  UpdateTableControls();


  SetModifiedStatus(true);
end;

procedure TfrmBulkMailer.HTMLEditDocumentLoadingError(iSender: TObject;
  const iExceptionClassName, iExceptionMessage: String);
begin
  ShowMessage('Document loading error');
end;

procedure TfrmBulkMailer.HTMLEditorEnter(Sender: TObject);
begin
      if HTMLEditor.Document <> nil then
      (HTMLEditor.Document AS IHTMLDocument2).designMode := 'on';
end;

procedure TfrmBulkMailer.IdSMTP1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
   WriteLog(AStatusText);
end;

procedure TfrmBulkMailer.dxBarButton10Click(Sender: TObject);
begin
//  HTMLEdit.DeleteCurrentTable();
end;



procedure TfrmBulkMailer.UpdateLinkControls();
var LinkIndex:integer;
begin
{  with HTMLEdit do begin
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
  end;   }
end;

procedure TfrmBulkMailer.UpdateFontControls();
//var
//lFontSize:TpsFontSize;
begin
{  cb_FontPicker.ItemIndex := cb_FontPicker.Items.IndexOf(HTMLEdit.GetCurrentFontFamily());

  lFontSize := HTMLEdit.GetCurrentFontSize();
  if lFontSize.Size > 0 then begin
    case lFontSize.SizeUnit of
      fsuPt: cb_FontSize.ItemIndex := cb_FontSize.Items.IndexOf(IntToStr(lFontSize.Size) + 'pt');
      fsuPx: cb_FontSize.ItemIndex := cb_FontSize.Items.IndexOf(IntToStr(lFontSize.Size) + 'px');
    end;
  end
  else
    cb_FontSize.ItemIndex := -1;}
end;

{$IFDEF PSHE3UP}
procedure TfrmBulkMailer.UpdateTableControls();
begin
  with HTMLEdit do begin
    if CurrentTableExists then
      with CurrentTable do
        Statusbar.Panels[2].Text := '(' + IntToStr(CurrentCol) + ',' + IntToStr(CurrentRow) + ')';
  end;
end;
{$ENDIF}

procedure TfrmBulkMailer.UpdateBlockControls();
begin
{   with HTMLEdit do
   begin
      try
         if CurrentBlockExists then
            cbStyles.Text := CurrentBlock.BlockClass;
      except
      //
      end;
      btnRemoveInnermostSpan.Enabled := CurrentBlockExists;
      btnFont.Enabled := CurrentBlockExists;
   end;   }
end;

procedure TfrmBulkMailer.btnHyperlinkClick(Sender: TObject);
begin
{  with HTMLEdit do begin
    if btnHyperlink.Down then begin
      if TextSelected then begin
//        ActiveControl := ed_LinkHRef;

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
  end;    }
end;

procedure TfrmBulkMailer.SetModifiedStatus(iModified:boolean);
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

procedure TfrmBulkMailer.btnRemoveInnermostSpanClick(Sender: TObject);
begin
{  with HTMLEdit do
    if CurrentBlockExists then
      CurrentBlock.SpansAroundCursor.RemoveInnermost();
  FocusEditor();    }
end;

procedure TfrmBulkMailer.NotifyImageSelectionChanged();
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


function TfrmBulkMailer.GetExeDir():string;
begin
  result := ExtractFilePath(ParamStr(0));
end;

procedure TfrmBulkMailer.OpenDocument(const iFilename:string);
begin
  HTMLEditBaseDir := ExtractFilePath(iFilename);
  HTMLFilePath := OpenDialog.FileName;
  HTMLFileName := ExtractFilePath(iFilename);
  try
    try

    except

    end;
  finally
//    Statusbar.Panels[0].Text := HTMLEdit.DocumentTitle;
    Statusbar.Panels[1].Text := ExtractFileName(iFileName);
  end;
end;

procedure TfrmBulkMailer.pagMainChange(Sender: TObject);
var
   MyMemoryStream: TMemoryStream;
begin
   if pagMain.ActivePageIndex = 1 then
   begin
      try
         MyMemoryStream := TMemoryStream.Create;
         Editor.Lines.SaveToStream(MyMemoryStream);
         MyMemoryStream.Position := 0;
         HTMLEditor.LoadFromStream(MyMemoryStream)
      finally
         MyMemoryStream.Free;
      end;
   end;

end;

procedure TfrmBulkMailer.rbDebtorsClick(Sender: TObject);
begin
   DebtorStatements := 1;

   EmailSQL := 'SELECT distinct NBILL_TO as nname, ap_email as PARTYEMAIL, 0 as nmatter, NBILL_TO as refno '+
                'FROM AXIOM.PHONEBOOK ph, nmemo where ph.NNAME = NMEMO.NBILL_TO and NMEMO.DISPATCHED IS NOT NULL '+
                'AND NMEMO.OWING <> 0 AND NMEMO.RV_TYPE <> ''D'' AND NMEMO.RV_NMEMO IS NULL and ap_email is not null ORDER BY 2';
   tvEmailsREFNO.Visible := False;
   PopulateGrid;
end;

procedure TfrmBulkMailer.rbMattersClick(Sender: TObject);
begin
   DebtorStatements := 1;

   EmailSQL := 'SELECT DISTINCT nmemo.nbill_to AS nname, nvl(ap_email_matter, ap_email) AS partyemail, nmemo.nmatter, m.fileid as refno '+
               '   FROM axiom.phonebook ph, axiom.matter m, nmemo '+
               'WHERE nmemo.dispatched IS NOT NULL '+
               '   AND nmemo.owing <> 0 '+
               '   AND nmemo.rv_type <> ''D'' '+
               '   AND nmemo.rv_nmemo IS NULL '+
               '   AND nvl(ap_email_matter, ap_email) IS NOT NULL  '+
               '   and ph.nname = nmemo.nbill_to  '+
               '   and nmemo.nmatter = m.nmatter '+
               '   and trunc(nmemo.dispatched) < trunc(sysdate) - 31 '+
               'ORDER BY 2';
   tvEmailsREFNO.Visible := True;
   PopulateGrid;
end;

procedure TfrmBulkMailer.btnFontClick(Sender: TObject);
begin
   ShowFontDialog();
end;

procedure TfrmBulkMailer.FocusEditor();
begin
//  if PageControl.ActivePage = ts_HTMLEdit then
//    ActiveControl := HTMLEdit;
end;

procedure TfrmBulkMailer.ShowFontDialog();
begin
 { FontDialog.Font.Style := HTMLEdit.GetCurrentFontStyle();
  if FontDialog.Execute() then
    with FontDialog.Font do
      if HTMLEdit.TextSelected then
        HTMLEdit.PutFontSpanAroundSelection(Name,Size,Color,Style)
      else
        HTMLEdit.PutFontSpanAroundCursor(Name,Size,Color,Style);   }
end;

procedure TfrmBulkMailer.UpdatePageControl();
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
//    HTMLEdit.SaveToString(lDocument,true);
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

procedure TfrmBulkMailer.LoadClassStylesIntoComboBox();
var i:integer;
begin
{  with HTMLEdit.StyleSheet do
    for i := 0 to Count - 1 do
      if StyleByIndex[i].ClassStyle then
        cbStyles.Items.Add(StyleByIndex[i].Name);

  if cbStyles.Items.Count > 0 then
    cbStyles.ItemIndex := 0;   }
end;

procedure TfrmBulkMailer.Loaded();
begin
  inherited;
  LoadStyleSheet();
  LoadClassStylesIntoComboBox();
end;

procedure TfrmBulkMailer.LoadStyleSheet();
begin
//  HTMLEdit.LoadStyleSheetFromFile(GetExeDir() + 'Sample Stylesheet.css',true);
//  HTMLEdit.StyleSheet.Beautiful := true;
//  re_StyleSheet.Lines.Clear();
//  re_StyleSheet.Lines.Add(HTMLEdit.StyleSheet.AsString);
end;

procedure TfrmBulkMailer.cbStylesChange(Sender: TObject);
begin
//   if HTMLEdit.CurrentBlockExists then
//      HTMLEdit.CurrentBlock.BlockClass := cbStyles.Items[cbStyles.ItemIndex];
   FocusEditor();
end;

procedure TfrmBulkMailer.MenuItem1Click(Sender: TObject);
var
   LField: string;
   lSelectedText: string;
   i: integer;
begin
   with tvFields.Controller do
   begin
      if pagMain.ActivePageIndex = 1 then
      begin
         lSelectedText := HTMLEditor.GetSelectedText();
         HTMLEditor.HTMLCode.Text := ReplaceText(HTMLEditor.HTMLCode.Text, lSelectedText, '<<'+tvFieldsFieldName.EditValue+'>>');
      end
      else
      begin
         Editor.SelStart;
         Editor.SelLength;
         Editor.SelText := '<<'+tvFieldsFieldName.EditValue+'>>';
      end;

//      HTMLEdit.  InsertText('<<'+tvFieldsFieldName.EditValue+'>>');
   end;
end;

procedure TfrmBulkMailer.btnSendEmailsClick(Sender: TObject);
var
   sOracleError: string;
   bOk: boolean;
   FHostname: string;
   FPortNum: string;
//   MailMessage: TidMessage;
   sFieldName, sValue: string;
   iLoop,
   nRowCount: integer;
   Field: TField;
   RTFSource,
   aFileDate: string;
//   MyMemoryStream: TMemoryStream;
//   idAttach : TIdAttachmentFile;
   lsSubject,
   ANewDocName,
   AParsedDocName,
   AParsedDir,
   AEmailServerType: string;
   lEmailTemp: TStrings;
   bSelected: boolean;
   SMTP: TIdSMTP;
   MailMessage: TIdMessage;
   SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
   SASLLogin: TIdSASLLogin;
   UserPassProvider: TIdUserPassProvider;
   IdLogFile: TIdLogFile;
   SASListentry: TIdSASLListEntry;
   MessageBuilder : TIdMessageBuilderHtml;
   Attachment: TIdMessageBuilderAttachment;
   OldDir,
   TempFilePath: string;
   ANClient,
   ANMatter: integer;
begin
   Screen.Cursor := crSQLWait;
   if (edFrom.Text = '') then
      MsgWarn('Please enter a from email address')
   else
   begin
      try
         Panel1.Caption := '';
         FHostname := SystemString('smtp_server');
         FPortNum := SystemString('smtp_port');
         SMTP := TIdSMTP.Create(nil);
         IdLogFile := TIdLogFile.Create(nil);
         IdLogFile.Filename := 'SMTPMessage.log';
         IdLogFile.Active := True;

         SMTP.OnStatus := IdSMTP1Status;
         SMTP.Intercept := IdLogFile;

         AEmailServerType := SystemString('MAIL_SERVER_TYPE');
         if AEmailServerType = '' then
         begin
            MsgErr('No Email Server type set up. Please set one up by going to Maintenance\System');
            Exit;
         end
         else if AEmailServerType = 'Office 365' then
         begin
            with SMTP do
            begin
               Host := FHostname;
               Port := StrToInt(FPortNum);

               SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
               UserPassProvider := TIdUserPassProvider.Create(nil);
               SASLLogin := TIdSASLLogin.Create(nil);

               if SystemString('MAIL_SSL_IPVER') = 'Id_IPv6' then
                  SSLHandler.IPVersion := Id_IPv6
               else
                  SSLHandler.IPVersion := Id_IPv4;

               SSLHandler.SSLOptions.Method := sslvTLSv1_2;

               if (SystemString('mailsvrneedauthentication') = 'Y') then
                  AuthType := satSASL //satDefault
               else
                  AuthType := satNone;
               IOHandler := SSLHandler;

               if (SystemString('mailsvrsecureMode') = 'Y') then
                  UseTLS := utUseExplicitTLS
               else
                  UseTLS := utNoTLSSupport;

               SASLLogin.UserPassProvider := UserPassProvider;
               SASLMechanisms.Add.SASL := SASLLogin;
            end;

            UserPassProvider.Username := SystemString('mailsvrusername');
            UserPassProvider.Password := SystemString('mailsvrpassword');
         end
         else if (AEmailServerType = 'Relay Server') then
         begin
            with SMTP do
            begin
               Host := FHostname;
               Port := StrToInt(FPortNum);
               AuthType := satDefault;

               UseTLS := utNoTLSSupport;
               ValidateAuthLoginCapability := False;
//               Username := SystemString('mailsvrusername');
//               Password := SystemString('mailsvrpassword');
            end;
         end
         else if (AEmailServerType = 'Gmail') then
         begin
            with SMTP do
            begin
               Host := FHostname;
               Port := StrToInt(FPortNum);

               SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
               UserPassProvider := TIdUserPassProvider.Create(nil);

               SSLHandler.SSLOptions.Method := sslvTLSv1_2;

               if (SystemString('mailsvrneedauthentication') = 'Y') then
                  AuthType := satDefault
               else
                  AuthType := satNone;
               IOHandler := SSLHandler;

               if (SystemString('mailsvrsecureMode') = 'Y') then
                  UseTLS := utUseImplicitTLS
               else
                  UseTLS := utNoTLSSupport;

               Username := SystemString('mailsvrusername');
               Password := SystemString('mailsvrpassword');
            end;
         end;

         MailMessage := TIdMessage.Create(nil);
         MailMessage.ContentType := 'multipart/related; type="text/html"';
         MailMessage.Charset := 'utf-8';
         MessageBuilder := TIdMessageBuilderHtml.Create;
         // create message for Debtor Statements
         MessageBuilder.HtmlCharSet := 'utf-8';
         MessageBuilder.HtmlContentTransfer := 'quoted-printable';

         with tvEmails do
         begin
            BeginUpdate;
            for nRowCount := 0 to DataController.RowCount - 1 do
            begin
               ViewData.Records[nRowCount].Focused := True;
               if VarIsNull(ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsSELECT.Index]) then
                  bSelected := False
               else
                  bSelected := ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsSELECT.Index];

               if (not VarIsNull(ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsEMAIL.Index])) and bSelected then
               begin
                  if IsValidEmail(ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsEMAIL.Index]) then
                  begin
                     if rbDebtors.Checked = True then
                        ANClient := TableInteger('PHONEBOOK','NNAME', INTEGER(ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsNNAME.Index]), 'NCLIENT')
                     else
                        ANMatter := INTEGER(ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsNMATTER.Index]);

                     //setup mail message
                     MailMessage.From.Address := edFrom.Text;

                     MailMessage.Recipients.EMailAddresses := ViewData.GetRecordByIndex(nRowCount).Values[ tvEmailsEMAIL.Index];    //qryEmails.FieldByName('partyemail').AsString;

                     if edCC.Text <> '' then
                        MailMessage.CCList.EMailAddresses := edCC.Text;

                     lsSubject := edSubject.Text;

                     if rbMatters.Checked = True then
                        lsSubject := lsSubject + ' Our Ref #'+TableString('MATTER','NMATTER', ANMatter, 'FILEID');

                     try
                        MailMessage.Subject := lsSubject;
                        MailMessage.AttachmentEncoding := 'MIME';
                        MailMessage.CharSet := 'us-ascii';
                        MailMessage.Encoding := meMIME;
                        lEmailTemp := TStringList.Create;
                        lEmailTemp.LoadFromFile(fTemplateDir);

                        MessageBuilder.Html.LoadFromFile(fTemplateDir);
                        with TIdText.Create(MailMessage.MessageParts, nil) do
                        begin
                           Body.Text := ParseEmailMacros(-1, ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsNNAME.Index],
                                                         lEmailTemp.Text);
                           ContentType := 'text/html';
                        end;
                     finally
                        lEmailTemp.Free;
                     end;

                     try
                        with Report do
                        begin
                           try
                              qryRB_Items.Close;
                              Report.Template.DatabaseSettings.DataPipeline := plReports;
                              Report.Template.DatabaseSettings.NameField := 'ITEM_Name';
                              Report.Template.DatabaseSettings.TemplateField := 'Template';
                              if VarIsNull(cmbStatementTemplate.CurEditValue) = True then
                                 Report.Template.DatabaseSettings.Name := SystemString('DR_TEMPLATE')
                              else
                              if (VarToStr(cmbStatementTemplate.CurEditValue) <> '') then
                                 Report.Template.DatabaseSettings.Name := VarToStr(cmbStatementTemplate.CurEditValue);
                              Report.Template.LoadFromDatabase;
                           except
                              ;
                           end;

                           if (Parameters.Count > 0) then
                           begin
                              with Parameters do
                              begin
                                 Items['NCLIENT'].Value := null;
                                 Items['NMATTER'].Value := null;
                                 Items['ENTITY'].Value := null;

                                 if rbDebtors.Checked = True then
                                    Items['NCLIENT'].Value := ANClient
                                 else
                                    Items['NMATTER'].Value := ANMatter;

                                 Items['ENTITY'].Value := dmAxiom.Entity;

                                 Items['EMAILPRINT'].Value := 0;
                              end;
                           end;
                        end;
                     finally
                        DateTimeToString(aFileDate,'ddmmyyyy',Now);

                        if (rbDebtors.Checked = True) then
                        begin
                           ANewDocName := IncludeTrailingBackslash(SystemString('DFLT_DOC_LIST'))+
                                          tvEmailsNNAME.EditValue +
                                          '\Debtor_Statement_'+ aFileDate + '.pdf';
                           AParsedDocName := ParseMacros(ANewDocName, integer(ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsNNAME.Index]));
                        end
                        else
                        begin
                           ANewDocName := IncludeTrailingBackslash(SystemString('DFLT_DOC_LIST'))+
                                          tvEmailsREFNO.EditValue +
                                          '\Debtor_Statement_'+ aFileDate + '.pdf';
                           AParsedDocName := ParseMacros(ANewDocName, integer(ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsNMATTER.Index] ));
                        end;

                        AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
                        // check directory exists, if not create it
                        if not DirectoryExists(AParsedDir) then
                           ForceDirectories(AParsedDir);
                        Report.AllowPrintToFile := True;
                        Report.ShowPrintDialog := False;
                        Report.DeviceType := dtPDF;
                        Report.PDFSettings.OpenPDFFile := False;
                        Report.TextFileName := AParsedDocName;
                        Report.Print;
//                        OldDir := GetCurrentDir;
//                        TempFilePath := ExtractFilePath(Application.EXEName) + ExtractFileName(AParsedDocName);
//                        CopyFile(PWideChar(AParsedDocName), PWideChar(TempFilePath),True);
                     end;

                     MessageBuilder.Attachments.Add(AParsedDocName);

                     MessageBuilder.FillMessage(MailMessage);
                     try
                        SMTP.UseEhlo := True;
                        try
                           SMTP.Connect;
                           if SMTP.Connected then
                              SMTP.Send(MailMessage);
                           if rbDebtors.Checked = True then
                              SaveEmail(tvEmails.ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsNNAME.Index], edSubject.Text)
                           else
                              SaveEmail(tvEmails.ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsNMATTER.Index], edSubject.Text,
                                        tvEmails.ViewData.GetRecordByIndex(nRowCount).Values[tvEmailsEMAIL.Index], AParsedDocName );
                           spHTMLEmail.Close;
//                           DeleteFile(TempFilePath);
//                           SetCurrentDir(OldDir);
                        except
                           on E:Exception do
                              Panel1.Caption := 'ERROR: ' + E.Message;
                        end;
                     except
                        on E: EIdHostRequired do
                        begin
                           Panel1.Caption := 'ERROR: Please specify a valid Host';
                        end;
                        on E:Exception do
                           Panel1.Caption := 'ERROR: ' + E.Message;
                     end;
                  end;
               end;
            end;
            EndUpdate;
         end;
      finally
         IdLogFile.Active := False;
         if SMTP.Connected then SMTP.Disconnect;
         MailMessage.Free;
         SMTP.Free;
         Attachment.Free;
         IdLogFile.Free;
         if Assigned(SSLHandler) then
            SSLHandler.Free;

         if Assigned(UserPassProvider) then
            UserPassProvider.Free;

         if Assigned(SASLLogin) then
            SASLLogin.Free;
         Screen.Cursor := crDefault;
         MsgInfo('Debtor statements sent.');
         self.Close;
      end;
   end;
end;

function TfrmBulkMailer.mergeEmail(sIn: string): string;
var
   sResult: String;
   sFieldName, sValue: string;
   iLoop,
   i: integer;
   Field: TField;
begin
   sResult := sIn;

   for iLoop := 0 to qryEmails.Fields.Count - 1 do
   begin
      Field := qryEmails.Fields[iLoop];
      sFieldName := '<<' + Field.FieldName + '>>';
//      sFieldName := '&lt;&lt;' + Field.FieldName + '&gt;&gt;';

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

   mergeEmail := sResult;

{   sResult := sIn;

   qryEmails.First;
   if qryEmails.eof then
   begin
      mergeEmail := nil;
      exit;
   end;

      for iLoop := 0 to qryEmails.Fields.Count - 1 do
      begin
         Field := qryEmails.Fields[iLoop];
         sFieldName := '<<' + Field.FieldName + '>>';

         if field.DataType in [ftDateTime, ftDate, ftTime] then
         begin
            sValue := formatDateTime('DD/MM/YYYY', field.asDateTime);
         end
         else
         begin
            sValue := field.asString;
         end;
//         sResult := ReplaceStr(sIn.Strings[i], sFieldName, sValue);
         RearchAndReplace(AEditor, sFieldName, sValue);
      end;


   mergeEmail := AEditor;   }
end;

procedure TfrmBulkMailer.SearchAndReplace(InSearch, InReplace: string) ;
var
   X, ToEnd : integer;
   oldCursor : TCursor;
begin
{   oldCursor := Screen.Cursor;
   Screen.Cursor := crHourglass;
   with HtmlMessageTextSource do
   begin
      X := 0;
      ToEnd := length(Text) ;
      X := FindText(inSearch, X, ToEnd, []) ;
      while X <> -1 do
      begin
         SetFocus;
         SelStart := X;
         SelLength := length(inSearch) ;
         SelText := InReplace;
         X := FindText(inSearch, X + length(InReplace), ToEnd, []) ;
      end;
   end;
   Screen.Cursor := oldCursor;   }
end;

procedure TfrmBulkMailer.tvFieldsDblClick(Sender: TObject);
begin
   with tvFields.Controller do
   begin
//      HTMLEdit.InsertText('<<'+tvFieldsFieldName.EditValue+'>>');
   end;
end;

procedure TfrmBulkMailer.btnExportEmailsClick(Sender: TObject);
var
   lEmailList: string;
   nRowCount: integer;
   frmExport: TfrmExport;
   fEmailFile : TextFile;
begin
   lEmailList := '';

   try
      frmExport := TfrmExport.Create(Self);
      if frmExport.ShowModal = mrOk then
      begin
         if frmExport.rbFile.Checked then
         begin
            try
               if (not FileExists(frmExport.edFileName.Text)) then
                  FileCreate(frmExport.edFileName.Text);
               AssignFile(fEmailFile, frmExport.edFileName.Text);
               Rewrite(fEmailFile);
               with tvEmails do
               begin
                  BeginUpdate;
                  for nRowCount := 0 to DataController.RowCount - 1 do
                  begin
                     ViewData.Records[nRowCount].Focused := True;
                     if (not VarIsNull(DataController.Values[nRowCount, 1])) then
                     begin
                        if IsValidEmail(DataController.Values[nRowCount, 1]) then
                        begin
                           WriteLn(fEmailFile, DataController.Values[nRowCount, 1]);
                        end;
                     end;
                  end;
                  EndUpdate;
               end;
            finally
               CloseFile(fEmailFile);
               MsgInfo('File created');
            end;
         end
         else
         begin
            with tvEmails do
            begin
               BeginUpdate;
               for nRowCount := 0 to DataController.RowCount - 1 do
               begin
                  ViewData.Records[nRowCount].Focused := True;
                  if (not VarIsNull(DataController.Values[nRowCount, 1])) then
                  begin
                     if IsValidEmail(DataController.Values[nRowCount, 1]) then
                     begin
                        if lEmailList <> '' then
                           lEmailList := lEmailList + ';';
                        lEmailList := lEmailList + DataController.Values[nRowCount, 1];
                     end;
                  end;
               end;
               EndUpdate;
            end;
         end;
         Clipboard.AsText := lEmailList;
      end;
   finally
      frmExport.Free;
   end;
end;

procedure TfrmBulkMailer.tvEmailsSELECTHeaderClick(Sender: TObject);
begin
   SetProcessFlag;
end;

procedure TfrmBulkMailer.SetProcessFlag;
var
   Idx, I: Integer;
   ABookmark: TBookmark;
   DC: TcxDBDataController;
   GV: TcxGridDBTableView;
   bitmap: TBitmap;
begin
   GV := grdEmails.ActiveView as TcxGridDBTableView;
   DC := GV.DataController;
   DC.BeginUpdate;
   Idx := DC.FocusedRowIndex;

   Bitmap:= TBitmap.Create;
   if tvEmailsSELECT.Tag = 0 then
   begin
      Bitmap.LoadFromFile('.\images\CHECKBOXUNTICK.bmp');
      tvEmailsSELECT.HeaderGlyph.Assign(Bitmap);
      tvEmailsSELECT.Tag := 1;
      GV.ViewData.Records[0].Focused := True;
      for I := 0 to GV.ViewData.RowCount - 1 do
      begin
         GV.ViewData.Records[I].Focused := True;
         tvEmailsSELECT.EditValue := true;
      end;
   end
   else
   begin
      Bitmap.LoadFromFile('.\images\CHECKBOXTICK.bmp');
      tvEmailsSELECT.HeaderGlyph.Assign(Bitmap);
      tvEmailsSELECT.Tag := 0;
      GV.ViewData.Records[0].Focused := True;
      for I := 0 to GV.ViewData.RowCount - 1 do
      begin
         GV.ViewData.Records[I].Focused := True;
         tvEmailsSELECT.EditValue := false;
      end;
   end;
   Bitmap.Free;
   DC.FocusedRowIndex := Idx;
   DC.EndUpdate;
end;

procedure TfrmBulkMailer.dxBarButtonNewClick(Sender: TObject);
begin
   LoadStyleSheet();
//   HTMLEdit.Text := '<p></p>';
//   HTMLEdit.ReadOnly := false;
   fDocumentHistory.Add(NEW_DOCUMENT_FILENAME);
end;

procedure TfrmBulkMailer.FormCreate(Sender: TObject);
begin
   inherited;

   fDocumentHistory := TStringList.Create();
//   fSpellcheckerSmartTagHandlerID := HTMLEdit.RegisterSmartTagHandler(TpsSmartTagSpellChecker.Create(fAddictSpell));
   qryEmailTemplates.Open;
   qryReportList.Open;
end;

procedure TfrmBulkMailer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmBulkMailer.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   fDocumentHistory.Free;
   qryEmailTemplates.Close;
   qryReportList.Close;
end;

procedure TfrmBulkMailer.SaveEmail(ANName: integer; ASubject: string);
var
   ADocId: integer;
   APath, NewDocName: string;
begin
   ADocId := GetSequenceNumber('DOC_DOCID');
   APath := SystemString('DFLT_DOC_LIST');
   if ASubject = '' then
      ASubject := 'Email';
   NewDocName := ParseMacros(APath+'\'+ASubject+'_'+inttostr(ANName), ANName, ADocId, ASubject);

//   HTMLEdit.SaveToFile(NewDocName+'.html',true);

   with qryPopDetails do
   begin
      Open;
      Insert;
      ParamByName('docid').AsInteger := ADocId;

      FieldByName('docid').AsInteger := ADocId;
      FieldByName('DOC_NAME').AsString := ExtractFileName(NewDocName);
      FieldByName('SEARCH').AsString := ASubject; // ExtractFileName(APath);
      FieldByName('AUTH1').AsString := dmAxiom.UserID;
      FieldByName('DESCR').AsString := ASubject;

      FieldByName('KEYWORDS').AsString := 'Email';
//      FieldByName('PRECEDENT_DETAILS').AsString := memoPrecedentDtls.Text;
//      FieldByName('DOC_NOTES').AsString := memoDocNotes.Text;

//      if cbPortalAccess.Checked then
//         FieldByName('EXTERNAL_ACCESS').AsString := 'Y'
//      else
         FieldByName('EXTERNAL_ACCESS').AsString := 'N';

      if (ANName > 0) then
      begin
         with qryInsertNNameDoc do
         begin
            ParamByName('nname').AsInteger := ANName;
            ParamByName('docid').AsInteger := ADocId;
            ExecSQL;
         end;
      end;


//         FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(APath),2, Length(ExtractFileExt(APath)));
         FieldByName('PATH').AsString := IndexPath(NewDocName+'.html', 'DFLT_DOC_LIST');  //  NewPath;
         FieldByName('DISPLAY_PATH').AsString := NewDocName+'.html';

{         AExt := UpperCase(FieldByName('FILE_EXTENSION').AsString);
         if ((AExt = 'DOC') or (AExt = 'DOCX') or (AExt = 'DOT') or (AExt = 'DOTX')) then
            FieldByName('IMAGEINDEX').AsInteger := 2
         else if ((AExt = 'XLS') or (AExt = 'CSV') or (AExt = 'XLST')) then
            FieldByName('IMAGEINDEX').AsInteger := 3
         else if ((AExt = 'EML') or (AExt = 'MSG')) then
            FieldByName('IMAGEINDEX').AsInteger := 4
         else if AExt = 'PDF' then
            FieldByName('IMAGEINDEX').AsInteger := 5;      }

         FieldByName('IMAGEINDEX').AsInteger := 6;

//         if cmbCategory.ItemIndex >= 0 then
            FieldByName('NPRECCATEGORY').AsInteger := SystemInteger('EMAIL_DFLT_CATEGORY');
//         if cmbClassification.ItemIndex >= 0 then
            FieldByName('NPRECCLASSIFICATION').AsInteger := SystemInteger('EMAIL_DFLT_CLASSIFICATION');
//         sDocID := qryPopDetails.FieldByName('DOCID').AsString;
         Post;

//         dmAxiom.uniInsight.Commit;
         Close;
    end;
end;

procedure TfrmBulkMailer.SaveEmail(ANMatter: integer; ASubject: string; AEmail, ADocName: string) overload;
var
   ADocId: integer;
   APath: string;
begin
   ADocId := GetSequenceNumber('DOC_DOCID');
   APath := SystemString('DOC_DEFAULT_DIRECTORY');
   if ASubject = '' then
      ASubject := 'Email';
//   NewDocName := ParseMacros(APath+ADocName, ANMatter, ADocId, ASubject);

//   HTMLEdit.SaveToFile(NewDocName+'.html',true);

   with qryPopDetails do
   begin
      Open;
      Insert;
      ParamByName('docid').AsInteger := ADocId;

      FieldByName('docid').AsInteger := ADocId;
      FieldByName('DOC_NAME').AsString := ExtractFileName(ADocName);
      FieldByName('SEARCH').AsString := ASubject; // ExtractFileName(APath);
      FieldByName('AUTH1').AsString := dmAxiom.UserID;
      FieldByName('DESCR').AsString := ASubject;

      FieldByName('KEYWORDS').AsString := 'Email';
      FieldByName('nmatter').AsInteger := ANMatter;
      FieldByName('fileid').AsString := MatterString(ANMatter, 'FILEID');

      FieldByName('EXTERNAL_ACCESS').AsString := 'N';
      FieldByName('DOC_NOTES').AsString := 'Emailed to ' + AEmail;

//         FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(APath),2, Length(ExtractFileExt(APath)));
         FieldByName('PATH').AsString := IndexPath(ADocName, 'DOC_DEFAULT_DIRECTORY');  //  NewPath;
         FieldByName('DISPLAY_PATH').AsString := ADocName;

{         AExt := UpperCase(FieldByName('FILE_EXTENSION').AsString);
         if ((AExt = 'DOC') or (AExt = 'DOCX') or (AExt = 'DOT') or (AExt = 'DOTX')) then
            FieldByName('IMAGEINDEX').AsInteger := 2
         else if ((AExt = 'XLS') or (AExt = 'CSV') or (AExt = 'XLST')) then
            FieldByName('IMAGEINDEX').AsInteger := 3
         else if ((AExt = 'EML') or (AExt = 'MSG')) then
            FieldByName('IMAGEINDEX').AsInteger := 4
         else if AExt = 'PDF' then
            FieldByName('IMAGEINDEX').AsInteger := 5;      }

         FieldByName('IMAGEINDEX').AsInteger := 5;

//         if cmbCategory.ItemIndex >= 0 then
            FieldByName('NPRECCATEGORY').AsInteger := SystemInteger('EMAIL_DFLT_CATEGORY');
//         if cmbClassification.ItemIndex >= 0 then
            FieldByName('NPRECCLASSIFICATION').AsInteger := SystemInteger('EMAIL_DFLT_CLASSIFICATION');
//         sDocID := qryPopDetails.FieldByName('DOCID').AsString;
         Post;

//         dmAxiom.uniInsight.Commit;
         Close;
    end;
end;

procedure TfrmBulkMailer.dxBarButton15Click(Sender: TObject);
begin
   if pagMain.ActivePageIndex = 0 then
   begin
      dxBarButton15.Caption := 'View HTML source';
      pagMain.ActivePageIndex := 1;
//      Editor.Text := HTMLEdit.Text;
//      HTMLEdit.Text := Editor.Text;
   end
   else
   begin
//      HTMLEdit.Text := Editor.Text;
      dxBarButton15.Caption := 'View Message';
//      Editor.Text := HTMLEdit.Text;
      pagMain.ActivePageIndex := 0;
   end;
end;

end.
