unit SafeCustMovementDtls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxMemo, StdCtrls, cxButtons,
  cxLabel, cxControls, cxContainer, cxEdit, cxDBEdit, cxGraphics,
  cxLookAndFeels, Menus;

type
  TfrmMovementDetails = class(TForm)
    cxLabel1: TcxLabel;
    Label12: TLabel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    edMovementReason: TcxMemo;
    edReleasedTo: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovementDetails: TfrmMovementDetails;

implementation

{$R *.dfm}

end.
