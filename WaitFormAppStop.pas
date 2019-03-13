unit WaitFormAppStop;
(*
  Wait Form App Stop

  Given a process id, this form will wait untill the user either clicks
  cancel or the process completes.

  Or if given a filename, the form will wait until the file exists
  or its timestamp changes.

  returns mrOk     - task completed on its own
          mrNo     - cancel button clicked
          mrCancel - some other reason..

  Mathew Dredge, Sep 2002
 *)

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Messages;

type

  // base thread class.. handles the properties..
  TWaitThread = class(TThread)
  private
    FTerminateEvent: THandle;
    FAppFinishedMsg: Cardinal;
    FPostToWnd: THandle;

  protected
    procedure Execute();  override; abstract;
  public
    property TerminateEvent: THandle read FTerminateEvent write FTerminateEvent;
    property AppFinishedMsg: Cardinal read FAppFinishedMsg write FAppFinishedMsg;
    property PostToWnd:      THandle read FPostToWnd write FPostToWnd;
  end;

  // the thread for waiting on a process.
  TWaitThreadProcess = class(TWaitThread)
  private
    FProcessID: DWORD;

  protected
    procedure Execute(); override;
  public
    property ProcessID: DWORD read FProcessID write FProcessID;
  end;


  // the thread for waiting on a  file
  TWaitThreadFile = class(TWaitThread)
  private
    FFileName: String;
  protected
    procedure Execute(); override;
  public
    property FileName: String read FFileName write FFileName;
  end;

  // the form, it starts the thread and signals
  // for the cancel button.
  TfmWaitForAppStop = class(TForm)
    bnCancel: TButton;
    lCaption: TLabel;
    Image1: TImage;
    procedure bnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomWndProc(var Message: TMessage);
    procedure FormDestroy(Sender: TObject);
  private
    FProcessID: DWORD;
    FName: String;
    FAppFinishedMsg: Cardinal;
    FTerminateEvent: THandle;
    FWaitThread: TWaitThread;
    FCanTerminate: Boolean;
    FFinalResult: Integer;
    FFileName: String;
    FCompleteMessage: DWORD;

    procedure SetTheName(const Value: String);
    procedure ThreadTerminate(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    property ProcessID: DWORD read FProcessID write FProcessID;
    property Name:      String read FName write SetTheName;
    property TerminateEvent: THandle read FTerminateEvent write FTerminateEvent;
    property AppFinishedMsg: Cardinal read FAppFinishedMsg write FAppFinishedMsg;
    property FileName: String read FFileName write FFileName;
    property CompleteMessage: DWORD read FCompleteMessage write FCompleteMessage;
  end;

// call this function, passing the process id and the process 'name'
// return value is at the top of the unit..
// pass a filename if you want it to wait for a file change.
function WaitForProcessToFinish(AOwner: TComponent; AProcessID: DWORD; AName: String; AFileName: String = ''): Integer;
function WaitForHotDocsFinish(AOwner: TComponent; AName: String; ACompleteMessage: DWORD): Integer;

var
  fmWaitForAppStop: TfmWaitForAppStop;

implementation

{$R *.dfm}

// open up the form - set properties and show it modal.
function WaitForProcessToFinish(AOwner: TComponent; AProcessID: DWORD; AName: String; AFileName: String): Integer;
begin
  fmWaitForAppStop := TfmWaitForAppStop.Create(AOwner);
  try
    fmWaitForAppStop.ProcessID := AProcessID;
    fmWaitForAppStop.Name      := AName;
    fmWaitForAppStop.FileName  := AFileName;
    fmWaitForAppStop.CompleteMessage := 0;
    fmWaitForAppStop.ShowModal();
    Result := fmWaitForAppStop.FFinalResult;
  finally
    FreeAndNil(fmWaitForAppStop);
  end;
end;

// for hotdocs 6 - will recieve and windows message to complete the assembly.
function WaitForHotDocsFinish(AOwner: TComponent; AName: String; ACompleteMessage: DWORD): Integer;
begin
  fmWaitForAppStop := TfmWaitForAppStop.Create(AOwner);
  try
    fmWaitForAppStop.ProcessID := 0;
    fmWaitForAppStop.Name      := AName;
    fmWaitForAppStop.FileName  := '';
    fmWaitForAppStop.CompleteMessage := ACompleteMessage;
    fmWaitForAppStop.ShowModal();
    Result := fmWaitForAppStop.FFinalResult;
  finally
    FreeAndNil(fmWaitForAppStop);
  end;
end;


// when the user clicks cancel, we need to terminate the thead.
procedure TfmWaitForAppStop.bnCancelClick(Sender: TObject);
begin
  bnCancel.Enabled := False;
  if(CompleteMessage = 0) then
    SetEvent(TerminateEvent)
  else
    ModalResult := mrCancel;
end;

// set the name label.
procedure TfmWaitForAppStop.SetTheName(const Value: String);
begin
  FName := StringReplace(Value,'&','&&',[rfReplaceAll]);
  lCaption.Caption := StringReplace(lCaption.Caption,'WHATHERE',FName,[rfReplaceAll]);
end;

{ TWaitThread }

// the thread executes, waits for signal event on either
// the process terminating or the terminate event..
// when this happens, post an message (dont send) to the
// window..
procedure TWaitThreadProcess.Execute;
var
  LHandles: TWOHandleArray;
  Lrv: DWORD;
begin
  LHandles[0] := FTerminateEvent;
  LHandles[1] := FProcessID;
  Lrv := WaitForMultipleObjects(2,@LHandles,False,INFINITE);
  fmWaitForAppStop.bnCancel.Enabled := False;
  PostMessage(FPostToWnd,FAppFinishedMsg,0,Lrv);
end;

// create the form, create the event handle and finished message..
procedure TfmWaitForAppStop.FormCreate(Sender: TObject);
begin
  FCanTerminate   := False;
  FTerminateEvent := CreateEvent(nil,True,False,nil);
  FAppFinishedMsg := RegisterWindowMessage('CM_AXIOMATION_WAITAPPEXIT');
end;

// show the form, create the appropate thread, initalize and resume..
procedure TfmWaitForAppStop.FormShow(Sender: TObject);
begin
  WindowProc                 := CustomWndProc;

  if(CompleteMessage = 0) then
  begin
    if(FileName = '') then
    begin
      FWaitThread := TWaitThreadProcess.Create(True);
      TWaitThreadProcess(FWaitThread).ProcessID := ProcessID;
    end else
    begin
      FWaitThread := TWaitThreadFile.Create(True);
      TWaitThreadFile(FWaitThread).FileName := FileName;
    end;

    FWaitThread.TerminateEvent := TerminateEvent;
    FWaitThread.AppFinishedMsg := AppFinishedMsg;
    FWaitThread.PostToWnd      := Handle;
    FWaitThread.OnTerminate    := ThreadTerminate;
    FWaitThread.Resume();
  end;
end;

// the thead is terminated, allow the form to close..
procedure TfmWaitForAppStop.ThreadTerminate(Sender: TObject);
begin
  FCanTerminate := True;
  Close();
end;

// only allow the form to close if the thread is not running..
procedure TfmWaitForAppStop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if(Assigned(FWaitThread)) then
  begin
    if(not FCanTerminate) then
      Action := caNone;
  end;
end;

// watch for the custom message and set the result baised on
// what was triggered.
procedure TfmWaitForAppStop.CustomWndProc(var Message: TMessage);
begin
  if(Message.Msg = AppFinishedMsg) or
    (Message.Msg = CompleteMessage) then
  begin
    case Message.LParam of
      WAIT_OBJECT_0:     FFinalResult := mrNo;
      WAIT_OBJECT_0 + 1: FFinalResult := mrOK;
    else
      FFinalResult := mrCancel;
    end;
    if(CompleteMessage <> 0) then
      Close();
  end else
    WndProc(Message);
end;

// closing the form, free the thread.
procedure TfmWaitForAppStop.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FWaitThread);
end;

{ TWaitThreadFile }

// this checks for the file to be changed, created
// or button pressed. Doesnt use the directory watch object
// as its not to network friendly..
procedure TWaitThreadFile.Execute;
var
  LLastMod: Integer;
  Lrv: DWORD;
begin
  Lrv := WAIT_FAILED;
  if(FileExists(FileName)) then
  begin
    LLastMod := FileAge(FileName);

    // wait one second until the file has been modified or no-longer
    // exists..
    while((Lrv <> WAIT_OBJECT_0) and
          FileExists(FileName) and
          (LLastMod = FileAge(FileName))) do
    begin
      Sleep(250); // 1/4 second
      Lrv := WaitForSingleObject(TerminateEvent,0);
    end;
  end else
  begin
    // wait until the file exists..
    while((Lrv <> WAIT_OBJECT_0) and
          (not FileExists(FileName))) do
    begin
      Sleep(250);
      Lrv := WaitForSingleObject(TerminateEvent,0);
    end;

  end;
  // wait another second.
  Sleep(1000);

  if(Lrv <> WAIT_OBJECT_0) then
    Lrv := WAIT_OBJECT_0 + 1;
  fmWaitForAppStop.bnCancel.Enabled := False;
  PostMessage(FPostToWnd,FAppFinishedMsg,0,Lrv);
end;

end.
