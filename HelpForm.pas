unit HelpForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxBar, cxClasses, cxTextEdit,
  cxMemo, cxRichEdit, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmHelpForm = class(TForm)
    mReleaseNotes: TcxRichEdit;
    dxBarManager1: TdxBarManager;
    pbPrint: TdxBarButton;
    pbClose: TdxBarButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pbPrintClick(Sender: TObject);
    procedure pbCloseClick(Sender: TObject);
  private
    { Private declarations }
    FHelpMsg: string;
  public
    { Public declarations }
    property HelpMsg: string read FHelpMsg write FHelpMsg;
  end;

var
   fmHelpForm: TfmHelpForm;

implementation

uses AxiomData;

{$R *.dfm}

procedure TfmHelpForm.FormShow(Sender: TObject);
begin
  mReleaseNotes.Lines.Clear();
  mReleaseNotes.Lines.Add(HelpMsg);
end;

procedure TfmHelpForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fmHelpForm := nil;
end;

procedure TfmHelpForm.pbPrintClick(Sender: TObject);
begin
//   mReleaseNotes.Print('Release Notes');
end;

procedure TfmHelpForm.pbCloseClick(Sender: TObject);
begin
   Self.Close;
end;

end.

