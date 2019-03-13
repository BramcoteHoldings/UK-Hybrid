unit FileCopyDisplay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxLabel;

type
  TfrmFileCopyDisp = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
  private
    { Private declarations }
    FFileName: string;

    procedure DispName(Value: string);
  public
    { Public declarations }
    property FileName: string read FFileName write DispName;
  end;

var
  frmFileCopyDisp: TfrmFileCopyDisp;

implementation

{$R *.dfm}

procedure TfrmFileCopyDisp.DispName(Value: string);
begin
  cxLabel2.Caption := Value;
  Application.ProcessMessages;
end;

end.
