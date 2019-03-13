unit BillNarration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGenEditor, cxGraphics, ImgList, ActnList, dxBar, dxBarExtItems,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, cxControls,
  dxStatusBar, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS, OraSmart, cxDBRichEdit, GenEditor,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLookAndFeels, cxLookAndFeelPainters,
  System.Actions, cxClasses;

type
  TfrmBillNarrations = class(TfrmDBGenEditor)
    cmbSequence: TdxBarCombo;
    qryBillNarrationInsert: TUniQuery;
    qryBillNarrationInsertNMEMO: TFloatField;
    qryBillNarrationInsertTYPE: TStringField;
    qryBillNarrationInsertPOSITION: TFloatField;
    qryBillNarrationInsertTYPE_TEXT: TStringField;
    qryBillNarrationInsertROWID: TStringField;
    qryTmp: TUniQuery;
    cmbNarrationType: TdxBarCombo;
    bStatic: TdxBarStatic;
    procedure FormShow(Sender: TObject);
    procedure dxBarButtonSaveClick(Sender: TObject);
    procedure cmbNarrationTypeChange(Sender: TObject);
    procedure cmbSequenceCloseUp(Sender: TObject);
    procedure cxDBComboBox2PropertiesChange(Sender: TObject);
    procedure EditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbSequenceDropDown(Sender: TObject);
    procedure cmbSequenceChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FNMemo: integer;
    function DeleteFile: boolean;
  public
    { Public declarations }
    property BNNMemo: integer read FNMemo write FNMemo;

    function SaveFile: boolean; override;
  end;

var
  frmBillNarrations: TfrmBillNarrations;

implementation

{$R *.dfm}

uses
   miscfunc, AxiomData;

procedure TfrmBillNarrations.FormShow(Sender: TObject);
begin
   inherited;
   // do something
   if SystemString('preassign_bill_no') = 'Y' then
      Self.Caption := 'Bill Narration for: ' + TableString('NMEMO','NMEMO',IntToStr(FNMemo),'DRAFT_BILL_NO')
   else
      Self.Caption := 'Bill Narration for: ' + TableString('NMEMO','NMEMO',IntToStr(FNMemo),'REFNO');
   
  cmbNarrationTypeChange(Sender);
end;

procedure TfrmBillNarrations.dxBarButtonSaveClick(Sender: TObject);
begin
   if cmbNarrationType.Text = '' then
      MsgWarn('Please select a Type.')
   else
   begin
      SaveFile;
      with qryTmp do
      begin
         cmbSequence.Items.Clear;
         cmbSequence.Items.Add('1');
         cmbSequence.ItemIndex := 0;
         SQL.Text := 'select type_position from bill_narration where nmemo = :nmemo and type = :type';
         ParamByName('NMEMO').AsInteger := FNMemo;
         ParamByName('TYPE').AsString := cmbNarrationType.Text;
         Open;
         while not eof do
         begin
            if FieldByName('type_position').AsInteger > 1 then
               cmbSequence.Items.Add(FieldByName('type_position').AsString);
            Next;
         end;
      end;
   end;
end;

procedure TfrmBillNarrations.cmbNarrationTypeChange(Sender: TObject);
var
   CurrentValue, i: integer;
begin
   inherited;
   with qrySource do
   begin
      Close;
      ParamByName('NMEMO').AsInteger := FNMemo;
      ParamByName('TYPE').AsString := cmbNarrationType.Text;
      ParamByName('TYPE_POSITION').AsString := cmbSequence.Text;
      Open;
      if qrySource.RowsProcessed = 0 then
         qrySource.Insert
      else
      begin
         qrySource.Edit;
         Editor.SelStart := Length(Editor.Text) + 1;
      end;

      with qryTmp do
      begin
         i := 0;
         CurrentValue := cmbSequence.ItemIndex;
         cmbSequence.Items.Clear;
         cmbSequence.Items.Add('1');
         cmbSequence.ItemIndex := 0;
         SQL.Text := 'select type_position from bill_narration where nmemo = :nmemo and type = :type';
         ParamByName('NMEMO').AsInteger := FNMemo;
         ParamByName('TYPE').AsString := cmbNarrationType.Text;
         Open;
         while not eof do
         begin
            if FieldByName('type_position').AsInteger > 1 then
               cmbSequence.Items.Add(FieldByName('type_position').AsString);
               inc(i);
            Next;
         end;
         cmbSequence.ItemIndex := CurrentValue;
         bStatic.Caption := 'of ' + IntTostr(i);
      end;
   end;
end;

function TfrmBillNarrations.SaveFile: boolean;
begin
   try
      with qrySource do
      begin
         if qrySource.State = dsBrowse then
            qrySource.Edit;
         FieldByName('NMEMO').AsInteger := FNMemo;
         FieldByName('TYPE_POSITION').AsString := cmbSequence.Text;
         FieldByName('TYPE').AsString := cmbNarrationType.Text;
//         ApplyUpdates;
         Post;
         Result := True;
      end;
   except
      raise;
   end;

{   try
      with qryBillNarrationInsert do
      begin
         SQL.Clear;
         SQL.Text := 'UPDATE bill_narration '+
                     'SET '+
                     '  NMEMO = :NMEMO,'+
                     '  TYPE = :TYPE,'+
                     '  POSITION = :POSITION, '+
                     '  TYPE_TEXT = :TYPE_TEXT '+
                     'WHERE '+
                     '  NMEMO = :NMEMO '+
                     'AND '+
                     '  TYPE = :TYPE '+
                     'AND '+
                     '  POSITION = :POSITION ';
         ParamByName('NMEMO').AsInteger := FNMemo;
         ParamByName('TYPE').AsString := cmbNarrationType.Text;
         ParamByName('POSITION').AsString := cmbSequence.Text;
         ParamByName('TYPE_TEXT').Value := Editor.Text ;
         Prepare;
         ExecSQL;
         if (qryBillNarrationInsert.RowsAffected = 0) then
         begin
            // now rows where updated
            // it's an insert
            SQL.Clear;
            SQL.Text := 'INSERT INTO bill_narration '+
                        '  (NMEMO, TYPE, POSITION, TYPE_TEXT) '+
                        'VALUES '+
                        '  (:NMEMO, :TYPE, :POSITION, :TYPE_TEXT)';
            ParamByName('NMEMO').AsInteger := FNMemo;
            ParamByName('TYPE').AsString := cmbNarrationType.Text;
            ParamByName('POSITION').AsString := cmbSequence.Text;
            ParamByName('TYPE_TEXT').AsMemo := Editor.Text;
            Prepare;
            ExecSQL;
         end;
         SetModified(False);
      end;
      dmAxiom.uniInsight.Commit;
      Result := True;
   except
      raise;
   end;     }
end;

function TfrmBillNarrations.DeleteFile: boolean;
begin
   try
      with qryBillNarrationInsert do
      begin
         SQL.Clear;
         SQL.Text := 'DELETE FROM bill_narration '+
                    'WHERE '+
                    '  NMEMO = :NMEMO '+
                    'AND '+
                    '  TYPE = :TYPE '+
                    'AND '+
                    '  TYPE_POSITION = :TYPE_POSITION ';
         ParamByName('NMEMO').AsInteger := FNMemo;
         ParamByName('TYPE').AsString := cmbNarrationType.Text;
         ParamByName('TYPE_POSITION').AsString := cmbSequence.Text;
         Prepare;
         Execute;
      end;
      SetModified(False);
      Result := True;
   except
      raise;
   end;
end;


procedure TfrmBillNarrations.cmbSequenceCloseUp(Sender: TObject);
begin
   inherited;
//   Editor.Lines.Clear;
   with qrySource do
   begin
      Close;
      ParamByName('NMEMO').AsInteger := FNMemo;
      ParamByName('TYPE').AsString := cmbNarrationType.Text;
      ParamByName('TYPE_POSITION').AsString := cmbSequence.CurText;
      Open;
//      Editor.Text := FieldByName('TYPE_TEXT').AsString;
   end;
end;

procedure TfrmBillNarrations.cxDBComboBox2PropertiesChange(
  Sender: TObject);
begin
  inherited;
   with qrySource do
   begin
      Close;
      ParamByName('NMEMO').AsInteger := FNMemo;
      ParamByName('TYPE').AsString := cmbNarrationType.Text;
      ParamByName('TYPE_POSITION').AsString := cmbSequence.Text;
      Open;
//      Editor.Text := FieldByName('TYPE_TEXT').AsString;
   end;
end;

procedure TfrmBillNarrations.EditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_SPACE then
      QuickCode(Sender);
   inherited;
end;

procedure TfrmBillNarrations.cmbSequenceDropDown(Sender: TObject);
begin
  inherited;
   with qryTmp do
      begin
         cmbSequence.Items.Clear;
         cmbSequence.Items.Add('1');
         cmbSequence.ItemIndex := 0;
         SQL.Text := 'select type_position from bill_narration where nmemo = :nmemo and type = :type';
         ParamByName('NMEMO').AsInteger := FNMemo;
         ParamByName('TYPE').AsString := cmbNarrationType.Text;
         Open;
         while not eof do
         begin
            if FieldByName('type_position').AsInteger > 1 then
               cmbSequence.Items.Add(FieldByName('type_position').AsString);
            Next;
         end;
      end;
end;

procedure TfrmBillNarrations.cmbSequenceChange(Sender: TObject);
begin
  inherited;
     with qrySource do
   begin
      Close;
      ParamByName('NMEMO').AsInteger := FNMemo;
      ParamByName('TYPE').AsString := cmbNarrationType.Text;
      ParamByName('TYPE_POSITION').AsString := cmbSequence.Text;
      Open;
//      Editor.Text := FieldByName('TYPE_TEXT').AsString;
   end;
end;

procedure TfrmBillNarrations.FormCreate(Sender: TObject);
begin
  inherited;
  cmbNarrationType.ItemIndex := 0;
end;

end.
