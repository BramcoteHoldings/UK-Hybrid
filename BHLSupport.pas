unit BHLSupport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw;

type
  TfrmBHLSupport = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    bLoaded: boolean;
  public
    { Public declarations }
    procedure ShowSupportSite;
  end;

var
  frmBHLSupport: TfrmBHLSupport;

implementation

{$R *.dfm}

procedure TfrmBHLSupport.FormCreate(Sender: TObject);
begin
   bLoaded := False;
end;

procedure TfrmBHLSupport.FormShow(Sender: TObject);
begin
   ShowSupportSite;

end;

procedure TfrmBHLSupport.ShowSupportSite;
begin
   if bLoaded = False then
      WebBrowser1.Navigate('https://bhlsupport.zendesk.com');

//   if brSupport.DocumentLoaded = False then
//      if brSupport.Go('https://bhlsupport.zendesk.com',15) = False then
//        exit;

end;

procedure TfrmBHLSupport.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
   bLoaded := True;
end;

end.
