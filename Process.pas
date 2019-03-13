unit Process;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, jpeg;

type
  TfrmProcess = class(TForm)
    btnCancel: TBitBtn;
    pbProcess: TProgressBar;
    lblProcess: TLabel;
    lblRecsProcessed: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCancelled: Boolean;
    procedure ResizeForm;
  public
    constructor Create(AOwner: TComponent; ShowCancel: Boolean); reintroduce; overload;
    constructor Create(AOwner: TComponent; PictureFile: string); reintroduce; overload;
    function IncProgress(ProgressMessage: string = ''): Boolean;
    function SetProgress(Value: Single = 0; ProgressMessage: string = ''): Boolean;
    property Cancelled: Boolean read FCancelled;
  end;

implementation

{$R *.DFM}

procedure TfrmProcess.FormCreate(Sender: TObject);
begin
  FCancelled := False;
end;

constructor TfrmProcess.Create(AOwner: TComponent; ShowCancel: Boolean);
begin
  inherited Create(AOwner);
  if ShowCancel then
  begin
    btnCancel.Visible := True;
    Self.FormStyle := fsStayOnTop;
    ResizeForm;
  end;
end;

constructor TfrmProcess.Create(AOwner: TComponent; PictureFile: string);
begin
  inherited Create(AOwner);
  if FileExists(PictureFile) then
  begin
//    imgAxiom.Picture.LoadFromFile(PictureFile);
    ResizeForm;
  end;
end;

procedure TfrmProcess.ResizeForm;
begin
//  Self.Width := imgAxiom.Width + 8;
//  Self.Height := imgAxiom.Height + pnlProgress.Height + 27;
//  btnCancel.Left := Trunc((Self.Width - btnCancel.Width) / 2);
end;

procedure TfrmProcess.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TfrmProcess.SetProgress(Value: Single = 0; ProgressMessage: string = ''): Boolean;
var
  ProcessAppMessages: Boolean;
begin
  if not(FCancelled) then
  begin
    Result := True;
    ProcessAppMessages := False;
    if Value <> 0 then
    begin
      pbProcess.Position := Trunc(Value*100);
      ProcessAppMessages := True;
    end;
    if (ProgressMessage <> '') and (ProgressMessage <> lblProcess.Caption) then
    begin
      lblProcess.Caption := ProgressMessage;
      ProcessAppMessages := True;
    end;
    if ProcessAppMessages then
      Application.ProcessMessages;
  end
  else
    // tell the calling application to close this form
    Result := False;
end;

function TfrmProcess.IncProgress(ProgressMessage: string = ''): Boolean;
begin
  pbProcess.Position := pbProcess.Position + 1;
  if not(FCancelled) then
  begin
    Result := True;
    if (ProgressMessage <> '') and (ProgressMessage <> lblProcess.Caption) then
    begin
      lblProcess.Caption := ProgressMessage;
      Application.ProcessMessages;
    end;
  end
  else
    // tell the calling application to close this form
    Result := False;
end;


procedure TfrmProcess.btnCancelClick(Sender: TObject);
begin
   FCancelled := True;
   Self.Close;
end;

end.


