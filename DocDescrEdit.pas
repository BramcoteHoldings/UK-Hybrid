unit DocDescrEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, DB, MemDS, DBAccess, OracleUniProvider, Uni,
  cxGraphics, cxLookAndFeels;

type
  TfrmDocDescription = class(TForm)
    qryDocDescription: TUniQuery;
    Editor: TcxMemo;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    qryWorkFlowDesc: TUniQuery;
    procedure btnOkClick(Sender: TObject);
    procedure EditorEnter(Sender: TObject);
  private
    { Private declarations }
    FSource: string;
  public
    { Public declarations }
    procedure DisplayDocDescription(pDocID: integer; pSource: string);
  end;

var
  frmDocDescription: TfrmDocDescription;

implementation

{$R *.dfm}

procedure TfrmDocDescription.DisplayDocDescription(pDocID: integer; pSource: string);
begin
   Self.Caption := 'Editing description';
   FSource := pSource;
   if pSource = 'FROMWGT' then
   begin
      with qryWorkFlowDesc do
      begin
         Close;
         ParamByName('docid').AsInteger := pDocID;
         Open;
         Editor.Text := FieldByName('documentname').AsString;
      end;
   end
   else
   begin
      with qryDocDescription do
      begin
         Close;
         ParamByName('docid').AsInteger := pDocID;
         Open;
         Editor.Text := FieldByName('descr').AsString;
      end;
   end;
//   Editor.Modified := False;
end;

procedure TfrmDocDescription.btnOkClick(Sender: TObject);
begin
   if FSource = 'FROMWGT' then
   begin
      if qryWorkFlowDesc.State = dsBrowse then
         qryWorkFlowDesc.Edit;

      if qryWorkFlowDesc.State = dsEdit then
      begin
         qryWorkFlowDesc.FieldByName('documentname').AsString := Editor.Text;
         qryWorkFlowDesc.Post;
         qryWorkFlowDesc.ApplyUpdates;
      end;

   end
   else
   begin
      if qryDocDescription.State = dsBrowse then
         qryDocDescription.Edit;

      if qryDocDescription.State = dsEdit then
      begin
         qryDocDescription.FieldByName('descr').AsString := Editor.Text;
         qryDocDescription.Post;
         qryDocDescription.ApplyUpdates;
      end;
   end;
   ModalResult := mrOK;
end;

procedure TfrmDocDescription.EditorEnter(Sender: TObject);
begin
   Editor.SelStart := Length(Editor.Text) + 1
end;

end.
