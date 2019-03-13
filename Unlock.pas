unit Unlock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TfrmUnlock = class(TForm)
    Label1: TLabel;
    gbUnlock: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    tbUserID: TEdit;
    tbPassword: TEdit;
    btnUnlock: TBitBtn;
    qryEmps: TUniQuery;
    procedure btnUnlockClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnlock: TfrmUnlock;
  bClosable : boolean;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmUnlock.btnUnlockClick(Sender: TObject);
begin
  with qryEmps do
  begin
    Close;
    ParamByName('P_Code').AsString := tbUserID.Text;
    ParamByName('P_Password').AsString := tbPassword.Text;
    Open;
    if IsEmpty then
    begin
      MsgErr('Invalid security information');
      bClosable := False;
    end
    else
    begin
      dmAxiom.UserId := tbUserID.Text;
      bClosable := True;
      Self.Close;
    end;
  end;
end;

procedure TfrmUnlock.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := bClosable;
end;

procedure TfrmUnlock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Release;
end;

procedure TfrmUnlock.FormShow(Sender: TObject);
begin
  Self.Caption := 'Unlock ' + CN_PROGRAM_NAME;
  Label1.Caption := CN_PROGRAM_NAME + ' has been locked. To unlock it, please enter your UserName and Password.';
end;

end.
