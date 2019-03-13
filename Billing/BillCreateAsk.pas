unit BillCreateAsk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmBillCreateAsk = class(TForm)
    btnEdit: TBitBtn;
    btnCreate: TBitBtn;
    Label1: TLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBillCreateAsk: TfrmBillCreateAsk;

implementation

{$R *.dfm}

end.
