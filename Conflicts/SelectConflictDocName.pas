unit SelectConflictDocName;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxLabel;

type
  TFrmConflictDocName = class(TForm)
    btnOk: TcxButton;
    btnCancel: TcxButton;
    edtConflictDocName: TcxTextEdit;
    cxLabel1: TcxLabel;
    edConflictDocDescription: TcxTextEdit;
    cxLabel2: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure edtConflictDocNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


// Returns an empty string if Cancel/Close was pressed.
procedure GetConflictDocDetails(ADefaultName: String; var ADocName, ADocDescription: String);

implementation

{$R *.dfm}

Uses
  System.UITypes;

procedure GetConflictDocDetails(ADefaultName: String; var ADocName, ADocDescription: String);
var
  FrmConflictDocName: TFrmConflictDocName;
begin
  ADocName := '';
  ADocDescription := '';
  FrmConflictDocName := TFrmConflictDocName.Create(nil);
  try
    FrmConflictDocName.edtConflictDocName.Text := ADefaultName;
    if (FrmConflictDocName.ShowModal = mrok) then
    begin
      ADocName := FrmConflictDocName.edtConflictDocName.EditingText;
      ADocDescription := FrmConflictDocName.edConflictDocDescription.EditingText;
    end;
  finally
    FrmConflictDocName.Release;
  end;
end;

procedure TFrmConflictDocName.edtConflictDocNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Word(vkReturn) then
    btnOk.Click;
end;

procedure TFrmConflictDocName.FormShow(Sender: TObject);
begin
  Caption := 'Document Name';
  ActiveControl := edtConflictDocName;
end;

end.
