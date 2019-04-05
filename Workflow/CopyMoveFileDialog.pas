unit CopyMoveFileDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Mask, ShellAPI, Vcl.ComCtrls, JvgPage,
  cxPCdxBarPopupMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, dxBarBuiltInMenu, JvExMask, JvToolEdit;

type
  TCMFOperation    = (cmfCopy, cmfMove, cmfRename, cmfDelete);
  TCMFUpdateOption = (cmfThisTemplate, cmfAllTemplates, cmfNoTemplate);
  TCMFUpdateOptions = set of TCMFUpdateOption;

  TfmCopyMoveFileDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    lFrom: TLabel;
    lTo: TLabel;
    eFileName: TEdit;
    eDestinationDirectory: TJvFilenameEdit;
    eDestinationFileName: TJvFilenameEdit;
    pcDocOptions: TcxPageControl;
    tabOptions: TcxTabSheet;
    rbUpdateThisTemplate: TRadioButton;
    rbUpdateAllTemplates: TRadioButton;
    rbDontUpdate: TRadioButton;
    tabFileName: TcxTabSheet;
    Label1: TLabel;
    eNewFileName: TEdit;
    procedure rbUpdateThisTemplateClick(Sender: TObject);
    procedure bnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FOperation: TCMFOperation;
    FOption: TCMFUpdateOption;
    FUpdateOptions: TCMFUpdateOptions;

    function GetDestination: String;
    function GetFileName: String;
    function GetNewFileName: String;
    function GetOperation: TCMFOperation;
    function GetOption: TCMFUpdateOption;
    function GetUpdateOptions: TCMFUpdateOptions;
    procedure SetDestination(const Value: String);
    procedure SetFileName(const Value: String);
    procedure SetNewFileName(const Value: String);
    procedure SetOperation(const Value: TCMFOperation);
    procedure SetOption(const Value: TCMFUpdateOption);
    procedure SetUpdateOptions(const Value: TCMFUpdateOptions);
    { Private declarations }
  public
    { Public declarations }
    property FileName: String read GetFileName write SetFileName;
    property NewFileName: string read GetNewFileName write SetNewFileName;
    property Destination: String read GetDestination write SetDestination;
    property Operation: TCMFOperation read GetOperation write SetOperation;
    property ShowOptions: TCMFUpdateOptions read GetUpdateOptions write SetUpdateOptions;
    property Option: TCMFUpdateOption read GetOption write SetOption;
  end;

var
  fmCopyMoveFileDialog: TfmCopyMoveFileDialog;

implementation

{$R *.dfm}

{ TfmCopyMoveFileDialog }

procedure TfmCopyMoveFileDialog.FormCreate(Sender: TObject);
begin
   pcDocOptions.HideTabs := True;
end;

function TfmCopyMoveFileDialog.GetDestination: String;
begin
  case FOperation of
    cmfMove:
    begin
      Result := eDestinationDirectory.InitialDir;
      if (Result[Length(Result)] <> '\') then
        Result := Result + '\';
    end;
    cmfCopy,
    cmfRename: Result := eDestinationFileName.FileName;
  else
    Result := '';
  end;
end;

function TfmCopyMoveFileDialog.GetFileName: String;
begin
  Result := eFileName.Text;
end;

function TfmCopyMoveFileDialog.GetNewFileName: String;
begin
  Result := eNewFileName.Text;
end;

function TfmCopyMoveFileDialog.GetOperation: TCMFOperation;
begin
  Result := FOperation;
end;

function TfmCopyMoveFileDialog.GetOption: TCMFUpdateOption;
begin
  Result := FOption;
end;

function TfmCopyMoveFileDialog.GetUpdateOptions: TCMFUpdateOptions;
begin
  Result := FUpdateOptions;
end;

procedure TfmCopyMoveFileDialog.SetDestination(const Value: String);
begin
  case FOperation of
    cmfMove:  eDestinationDirectory.InitialDir := Value;
    cmfCopy,
    cmfRename: eDestinationFileName.FileName    := Value;
  end;
end;

procedure TfmCopyMoveFileDialog.SetFileName(const Value: String);
begin
  eFileName.Text := Value;
end;

procedure TfmCopyMoveFileDialog.SetNewFileName(const Value: String);
begin
  eNewFileName.Text := Value;
end;

procedure TfmCopyMoveFileDialog.SetOperation(const Value: TCMFOperation);
  procedure ChangeCaption(ARadio: TRadioButton);
  begin
    ARadio.Caption := StringReplace(ARadio.Caption,'Update','Delete',[rfReplaceAll]);
  end;
begin
  FOperation := Value;
  case FOperation of
    cmfCopy:
    begin
      eDestinationDirectory.Visible := False;
      eDestinationFileName.Visible  := True;
      Caption := 'Copy File';
      lFrom.Caption := 'Copy File:';
      lTo.Caption   := 'To File:';
    end;
    cmfMove:
    begin
      eDestinationDirectory.Visible := True;
      eDestinationFileName.Visible  := False;
      Caption := 'Move File';
      lFrom.Caption := 'Move File:';
      lTo.Caption   := 'To Directory:';
    end;
    cmfRename:
    begin
      eDestinationDirectory.Visible := False;
      eDestinationFileName.Visible  := True;
      Caption := 'Rename File';
      lFrom.Caption := 'Rename File:';
      lTo.Caption   := 'To File:';
    end;
    cmfDelete:
    begin
      eDestinationDirectory.Visible := False;
      eDestinationFileName.Visible  := False;
      Caption := 'Delete File';
      lFrom.Caption := 'Delete File:';
      lTo.Visible := False;
      ChangeCaption(rbUpdateThisTemplate);
      ChangeCaption(rbUpdateAllTemplates);
      ChangeCaption(rbDontUpdate);
      Height := Height - (eDestinationDirectory.Top - eFileName.Top);
    end;
  end;
end;

procedure TfmCopyMoveFileDialog.SetOption(const Value: TCMFUpdateOption);
begin
  FOption := Value;
  case FOption of
    cmfThisTemplate: rbUpdateThisTemplate.Checked := True;
    cmfAllTemplates: rbUpdateAllTemplates.Checked := True;
    cmfNoTemplate:   rbDontUpdate.Checked := True;
  end;
end;

procedure TfmCopyMoveFileDialog.SetUpdateOptions(const Value: TCMFUpdateOptions);
begin
  FUpdateOptions := Value;

  rbUpdateThisTemplate.Enabled := cmfThisTemplate in FUpdateOptions;
  rbUpdateAllTemplates.Enabled := cmfAllTemplates in FUpdateOptions;
  rbDontUpdate.Enabled         := cmfNoTemplate   in FUpdateOptions;
end;

procedure TfmCopyMoveFileDialog.rbUpdateThisTemplateClick(Sender: TObject);
begin
  if(Sender = rbUpdateThisTemplate) then
    FOption := cmfThisTemplate
  else if(Sender = rbUpdateAllTemplates) then
    FOption := cmfAllTemplates
  else
    FOption := cmfNoTemplate;
end;

procedure TfmCopyMoveFileDialog.bnOkClick(Sender: TObject);
var
  LSH: TSHFileOpStruct;
begin
   ModalResult := mrNone;
   ZeroMemory(@LSH, SizeOf(LSH));
   LSH.Wnd    := Application.Handle;
   LSH.pFrom  := PChar(FileName + #0);
   LSH.pTo    := PChar(Destination + #0);
   case FOperation of
      cmfCopy:      LSH.wFunc  := FO_COPY;
      cmfMove:      LSH.wFunc  := FO_MOVE;
      cmfRename:    LSH.wFunc  := FO_RENAME;
      cmfDelete:    LSH.wFunc  := FO_DELETE;
   end;
   LSH.fFlags := FOF_NOCONFIRMATION;

   if(SHFileOperation(LSH) = 0) then
   begin
      if(LSH.fAnyOperationsAborted) then
         Exit;
      ModalResult := mrOk;
   end
   else


end;

end.
