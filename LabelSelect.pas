unit LabelSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxPC;

type
  TfrmLabelSelect = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxPageControl1: TcxPageControl;
    tab7171: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    rg7171: TcxRadioGroup;
    rg7165: TcxRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLabelSelect: TfrmLabelSelect;

implementation

{$R *.dfm}

end.
