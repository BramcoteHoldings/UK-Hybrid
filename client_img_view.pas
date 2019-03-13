unit client_img_view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Data.DB, DBAccess, Uni, MemDS,
  Vcl.ExtCtrls, cxImage, cxDBEdit, Vcl.StdCtrls;

type
  TfrmClient_img_view = class(TForm)
    imgClientID: TcxDBImage;
    Panel1: TPanel;
    qryPhonebook: TUniQuery;
    dsPhonebook: TUniDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClient_img_view: TfrmClient_img_view;

implementation

{$R *.dfm}

uses
   axiomdata;

procedure TfrmClient_img_view.Button1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmClient_img_view.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryPhonebook.Close;
end;

end.
