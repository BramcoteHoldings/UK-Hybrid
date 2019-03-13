unit EditText;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxLookAndFeelPainters, cxButtons, Menus, ComCtrls,
  cxGraphics, cxLookAndFeels, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxRichEdit;

type
  TfrmEditText = class(TForm)
    btnOk: TcxButton;
    btnCancel: TcxButton;
    edText: TcxRichEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    procedure setText(sIn : String);
    function getText : String;

  public
    { Public declarations }

    property Text : String read getText write setText;

  end;

var
  frmEditText: TfrmEditText;

implementation

{$R *.dfm}

uses
   axiomdata;

procedure TfrmEditText.setText(sIn : String);
begin
    edText.Text := sIn;
end;

function TfrmEditText.getText : String;
begin
   getText := edText.Text;
end;

procedure TfrmEditText.FormCreate(Sender: TObject);
begin
//   if dmAxiom.DictionaryInstalled then
//      edText.AddictSpell := dmAxiom.Addict;
end;

end.
