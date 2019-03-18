unit About;

interface

uses Forms, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls, dxGDIPlusClasses, cxImage,
  cxTextEdit, cxMemo, Vcl.StdCtrls, cxButtons, Vcl.Controls, System.Classes, SysUtils;


type
  TfrmAbout = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    lblVersion: TLabel;
    CopyRight: TLabel;
    lblLicense: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    btnOk: TcxButton;
    cxMemo1: TcxMemo;
    cxImage1: TcxImage;
    LinkLabel1: TLinkLabel;
    ProductName: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Release;
end;

procedure TfrmAbout.FormShow(Sender: TObject);
var
  VersionDate: TDateTime;
begin
  FileAge(Application.ExeName, VersionDate);
  lblVersion.Caption := 'Version ' + dmAxiom.GetBuildInfo +' (' +DateTimeToStr(VersionDate)+')';
  lblLicense.Caption  := SystemString('COMPANY');
  ProductName.Caption := CN_PROGRAM_NAME;
  CopyRight.Caption :=   CN_COPYRIGHT;

  label4.Caption := 'DB script Version: ' + SystemString('patch_version');
  label2.Caption := 'Script Date: ' + SystemString('patch_date');
end;

end.

