unit WorkFlowTCPCommunication;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, ScktComp;

type
  TfmWorkFlowTCPCommunication = class(TForm)
    Animate: TAnimate;
    Label1: TLabel;
    ClientSocket: TClientSocket;
    Label2: TLabel;
    lStatus: TLabel;
    bnCancel: TButton;
    procedure ClientSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketConnecting(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocketWrite(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bnCancelClick(Sender: TObject);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private declarations }
    FData: TStringList;
    FDataSent: Boolean;
    FResult: Integer;

    function GetAddress: String;
    function GetPort: Integer;
    procedure SetAddress(const Value: String);
    procedure SetData(const Value: TStringList);
    procedure SetPort(const Value: Integer);
  public
    { Public declarations }
    property Address: String      read GetAddress write SetAddress;
    property Port:    Integer     read GetPort    write SetPort;
    property Data:    TStringList write SetData;
  end;

var
  fmWorkFlowTCPCommunication: TfmWorkFlowTCPCommunication;
function WaitForCommunication(AAddress: String; APort: Integer; AData: TStringList): Integer;

implementation

uses
  Dialogs;

{$R *.dfm}

function WaitForCommunication(AAddress: String; APort: Integer; AData: TStringList): Integer;
begin
  fmWorkFlowTCPCommunication := TfmWorkFlowTCPCommunication.Create(Application);
  try
    fmWorkFlowTCPCommunication.Address := AAddress;
    fmWorkFlowTCPCommunication.Port    := APort;
    fmWorkFlowTCPCommunication.Data    := AData;

    Result := fmWorkFlowTCPCommunication.ShowModal();
  finally
    FreeAndNil(fmWorkFlowTCPCommunication);
  end;
end;

procedure TfmWorkFlowTCPCommunication.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  LStatus.Caption := 'Connected to ' + ClientSocket.Address + ':' + IntToStr(ClientSocket.Port);
end;

procedure TfmWorkFlowTCPCommunication.ClientSocketConnecting(
  Sender: TObject; Socket: TCustomWinSocket);
begin
  LStatus.Caption := 'Connecting to ' + ClientSocket.Address + ':' + IntToStr(ClientSocket.Port);
end;

procedure TfmWorkFlowTCPCommunication.ClientSocketDisconnect(
  Sender: TObject; Socket: TCustomWinSocket);
var
  LText: String;
begin
  LStatus.Caption := 'Disconnected from ' + ClientSocket.Address + ':' + IntToStr(ClientSocket.Port);

  LText := Socket.ReceiveText;
  if(LText = 'OK'#13#10) then
  begin
    FResult := mrOk;
    Close();
  end else
  begin
    MessageDlg('An error occured in precedents while merging!', mtError, [mbOK], 0);
    FResult := mrCancel;
    Close();
  end;
end;

procedure TfmWorkFlowTCPCommunication.ClientSocketError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
var
  LMsg: String;
begin
  ErrorCode := 0;
  case ErrorEvent of
    eeGeneral:    LMsg := 'An Unknown communication error has occured.';
    eeSend:       LMsg := 'An Error has occured while sending.';
    eeReceive:    LMsg := 'An Error has occured while receiving';
    eeConnect:    LMsg := 'An Error has occured while connecting - please ensure precedents is running on your local pc.';
    eeDisconnect: LMsg := 'An Error has occured while disconnecting.';
    eeAccept:     LMsg := 'An Error has occured while accepting connections - if you see this something real bad has gone wrong!!.';
    eeLookup:     LMsg := 'An Error has occured while doing a lookup.';
  end;
  MessageDlg(LMsg, mtError, [mbOK], 0);
  FResult := mrCancel;
  Close();
end;

procedure TfmWorkFlowTCPCommunication.ClientSocketWrite(Sender: TObject;
  Socket: TCustomWinSocket);
var
  i: Integer;
begin
  if(FDataSent) then
    Exit;
  FDataSent := True;
  LStatus.Caption := 'Sending data to ' + ClientSocket.Address + ':' + IntToStr(ClientSocket.Port);
  Socket.SendText('AXIOMWORKFLOW BEGIN'#13#10);
  for i := 0 to FData.Count - 1 do
  begin
    Socket.SendText(FData[i] + #13#10);
    Application.ProcessMessages; // naughty
  end;
  Socket.SendText('AXIOMWORKFLOW END'#13#10);
  LStatus.Caption := 'Waiting for response ' + ClientSocket.Address + ':' + IntToStr(ClientSocket.Port);

end;

function TfmWorkFlowTCPCommunication.GetAddress: String;
begin
  Result := ClientSocket.Address;
end;

function TfmWorkFlowTCPCommunication.GetPort: Integer;
begin
  Result := ClientSocket.Port;
end;

procedure TfmWorkFlowTCPCommunication.SetAddress(const Value: String);
begin
  ClientSocket.Address := Value;
end;

procedure TfmWorkFlowTCPCommunication.SetData(const Value: TStringList);
begin
  FData.Assign(Value);
end;

procedure TfmWorkFlowTCPCommunication.SetPort(const Value: Integer);
begin
  ClientSocket.Port := Value;
end;

procedure TfmWorkFlowTCPCommunication.FormCreate(Sender: TObject);
begin
  FData := TStringList.Create();
  FDataSent := False;
  FResult := mrNone;
end;

procedure TfmWorkFlowTCPCommunication.FormDestroy(Sender: TObject);
begin
  FData.Free();
end;

procedure TfmWorkFlowTCPCommunication.FormShow(Sender: TObject);
begin
  LStatus.Caption := 'Connecting to ' + ClientSocket.Address + ':' + IntToStr(ClientSocket.Port);
  Animate.Active := True;
  ClientSocket.Open();
end;

procedure TfmWorkFlowTCPCommunication.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := FResult <> mrNone;
end;

procedure TfmWorkFlowTCPCommunication.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := FResult;
end;

procedure TfmWorkFlowTCPCommunication.bnCancelClick(Sender: TObject);
begin
  FResult := ModalResult;
  Close();
end;

procedure TfmWorkFlowTCPCommunication.ClientSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
//  MessageBeep(MB_OK);
end;

end.
