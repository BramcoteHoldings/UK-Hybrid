unit AboutExp;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfrmAboutExp = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    procedure OKButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAboutExp: TfrmAboutExp;

implementation

uses AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmAboutExp.OKButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAboutExp.FormShow(Sender: TObject);
begin
  ProductName.Caption := CN_PROGRAM_NAME + ' Explorer';
  CopyRight.Caption := CN_COPYRIGHT;
  Version.Caption := dmAxiom.Version;
end;

end.
 
