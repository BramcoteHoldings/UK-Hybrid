unit TimeSheetTaskDescr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxDBEdit, cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TForm1 = class(TForm)
    cxDBMemo1: TcxDBMemo;
    LMDSimplePanel1: TLMDSimplePanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
   TimeSht;

end.
