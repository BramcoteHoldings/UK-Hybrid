unit GenericFileName;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxLabel, cxGraphics, cxLookAndFeels,
  Vcl.Mask, JvExMask, JvToolEdit;

type
  TfrmGenericFileName = class(TForm)
    cxLabel1: TcxLabel;
    eFileName: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    edFilePath: TJvDirectoryEdit;
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenericFileName: TfrmGenericFileName;

implementation

{$R *.dfm}

procedure TfrmGenericFileName.cxButton2Click(Sender: TObject);
begin
   Close;
end;

end.
