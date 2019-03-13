unit matternotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit,
  cxDBRichEdit, cxControls, dxStatusBar, dxBar, DB, OracleUniProvider, Uni,
  DBAccess, MemDS, StdCtrls, ComCtrls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses;

type
  TfrmNotesMatter = class(TForm)
    dxBarManager1: TdxBarManager;
    dxStatusBar: TdxStatusBar;
    dxBarButton1: TdxBarButton;
    dxBarButtonSave: TdxBarButton;
    qryMatterNotes: TUniQuery;
    dxBarButtonUndo: TdxBarButton;
    btnSpellCheck: TdxBarButton;
    btnPrint: TdxBarButton;
    qryDocNotes: TUniQuery;
    RichEdit1: TcxRichEdit;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButtonSaveClick(Sender: TObject);
    procedure dxBarButtonUndoClick(Sender: TObject);
    procedure EditorPropertiesSelectionChange(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
    procedure RichEdit1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSpellCheckClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
    function GetEditor: TcxRichEdit;
    function GetEditorCol: Integer;
    function GetEditorRow: Integer;
    procedure SetModified(Value: Boolean);
  public
    { Public declarations }
    procedure DisplayMatterNotes(pNMatter: integer);
    procedure DisplayDocNotes(pDocID: integer);

    property Editor: TcxRichEdit read GetEditor;
    property EditorCol: Integer read GetEditorCol;
    property EditorRow: Integer read GetEditorRow;
  end;

var
  frmNotesMatter: TfrmNotesMatter;

implementation

{$R *.dfm}
uses
  AxiomData;

procedure TfrmNotesMatter.dxBarButton1Click(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TfrmNotesMatter.DisplayMatterNotes(pNMatter: integer);
begin
   Self.Caption := 'Matter Notes';
   with qryMatterNotes do
   begin
      Close;
      ParamByName('NMATTER').AsInteger := pNMatter;
      Open;
      RichEdit1.Text := FieldByName('NOTES').AsString;
   end;
//   Editor.ActiveProperties.  Changed (False;
   SetModified(False);
end;

procedure TfrmNotesMatter.DisplayDocNotes(pDocID: integer);
begin
   Self.Caption := 'Document Notes';
   with qryDocNotes do
   begin
      Close;
      ParamByName('docid').AsInteger := pDocID;
      Open;
      RichEdit1.Text := FieldByName('doc_notes').AsString;
   end;
//   Editor.Modified := False;
   SetModified(False);
end;

procedure TfrmNotesMatter.dxBarButtonSaveClick(Sender: TObject);
begin
   if qryMatterNotes.Active then
   begin
   if qryMatterNotes.State = dsBrowse then
      qryMatterNotes.Edit;

   if qryMatterNotes.State = dsEdit then
   begin
      qryMatterNotes.FieldByName('NOTES').AsString := RichEdit1.Text;
      qryMatterNotes.Post;
      qryMatterNotes.ApplyUpdates;
   end;
   end
   else
   begin
      if qryDocNotes.State = dsBrowse then
         qryDocNotes.Edit;

      if qryDocNotes.State = dsEdit then
      begin
         qryDocNotes.FieldByName('DOC_NOTES').AsString := RichEdit1.Text;
         qryDocNotes.Post;
         qryDocNotes.ApplyUpdates;
      end;
   end;
   ModalResult := mrOK;
end;

procedure TfrmNotesMatter.dxBarButtonUndoClick(Sender: TObject);
begin
   SendMessage(Editor.Handle, EM_UNDO, 0, 0);
end;

procedure TfrmNotesMatter.EditorPropertiesSelectionChange(Sender: TObject);
begin
   with Editor, SelAttributes do
   begin
      dxStatusBar.Panels[0].Text := Format('Line: %3d   Col: %3d', [1 + EditorRow, 1 + EditorCol]);
   end;
end;

function TfrmNotesMatter.GetEditor: TcxRichEdit;
begin
  Result := RichEdit1;
end;

function TfrmNotesMatter.GetEditorCol: Integer;
begin
  with Editor do
    Result := SelStart - SendMessage(Handle, EM_LINEINDEX, EditorRow, 0);
end;

function TfrmNotesMatter.GetEditorRow: Integer;
begin
  with Editor do
    Result := SendMessage(Handle, EM_LINEFROMCHAR, SelStart, 0);
end;

procedure TfrmNotesMatter.RichEdit1Change(Sender: TObject);
begin
//   SetModified(Editor.Modified);
   dxBarButtonUndo.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;
end;

procedure TfrmNotesMatter.SetModified(Value: Boolean);
begin
//  Editor.Modified := Value;
  if Value then
  begin
    dxStatusBar.Panels[2].Text := 'Modified';
  end
  else
  begin
    dxStatusBar.Panels[2].Text := '';
  end;
  dxBarButtonSave.Enabled := Value;
end;

procedure TfrmNotesMatter.RichEdit1Enter(Sender: TObject);
begin
   TRichEdit(Sender).SelStart := Length(TRichEdit(Sender).Lines.Text)
end;

procedure TfrmNotesMatter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryMatterNotes.Close;
   qryDocNotes.Close;
//   dmAxiom.uniInsight.Commit;
end;

procedure TfrmNotesMatter.btnSpellCheckClick(Sender: TObject);
begin
   if dmAxiom.DictionaryInstalled then
      dmAxiom.TSSpellChecker.CheckContainer( RichEdit1, True );
end;

procedure TfrmNotesMatter.FormCreate(Sender: TObject);
begin
   if dmAxiom.DictionaryInstalled then
//      RichEdit1.AddictSpell := dmAxiom.Addict;
end;

procedure TfrmNotesMatter.btnPrintClick(Sender: TObject);
begin
   RichEdit1.Print(Self.Caption);
end;

end.
