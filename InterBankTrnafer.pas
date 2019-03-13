unit InterBankTrnafer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.StdCtrls, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TForm1 = class(TForm)
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
