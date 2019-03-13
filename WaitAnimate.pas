unit WaitAnimate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls;

type
  TfrmWaitAnimate = class(TForm)
    pmMain: TPanel;
    Panel1: TPanel;
    lblMessage: TLabel;
    pnClient: TPanel;
    aniMain: TAnimate;
    procedure FormCreate(Sender: TObject);
  private
    {}
  public
    constructor Create(AOwner: TComponent; MsgInfo, Resource: string); reintroduce; overload;
    procedure Show;
  end;

var
  frmWaitAnimate: TfrmWaitAnimate;

implementation

{$R *.DFM}
{$R WaitAnimate.res}

constructor TfrmWaitAnimate.Create(AOwner: TComponent; MsgInfo, Resource: string);
begin
  inherited Create(AOwner);
  if MsgInfo <> '' then
    lblMessage.Caption := MsgInfo;
  if Resource <> '' then
    aniMain.ResName := Resource;
  aniMain.Active := True;
end;

procedure TfrmWaitAnimate.Show;
begin
  inherited Show;
  Self.Refresh;
end;

procedure TfrmWaitAnimate.FormCreate(Sender: TObject);
begin
  aniMain.ResName := 'PROGRESS';
  aniMain.Active := True;
end;

end.
