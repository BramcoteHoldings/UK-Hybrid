unit DocumentCopyAsk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmDocumentCopyAsk = class(TForm)
    btnEdit: TBitBtn;
    btnCreate: TBitBtn;
    Label1: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocumentCopyAsk: TfrmDocumentCopyAsk;

implementation

{$R *.dfm}

end.
