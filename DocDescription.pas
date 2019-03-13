unit DocDescription;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxLabel, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxGraphics, cxLookAndFeels;

type
  TfrmDocumentDescription = class(TForm)
    edDocDescription: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocumentDescription: TfrmDocumentDescription;

implementation

{$R *.dfm}

end.
