unit DocCopyMoveFileDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Mask, ShellAPI, Vcl.ComCtrls,
  cxPCdxBarPopupMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, vcl.dialogs;

type
  TCMFOperation    = (cmfCopy, cmfMove, cmfDocRename, cmfDelete);
  TCMFUpdateOption = (cmfThisTemplate, cmfAllTemplates, cmfNoTemplate);
  TCMFUpdateOptions = set of TCMFUpdateOption;

  TfmDocCopyMoveFileDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    GroupBox1: TGroupBox;
    lFrom: TLabel;
    lTo: TLabel;
    eNewFileName: TEdit;
    eFileName: TLabel;
    procedure rbUpdateThisTemplateClick(Sender: TObject);
    procedure bnOkClick(Sender: TObject);
  private
    FOperation: TCMFOperation;
    FOption: TCMFUpdateOption;
    FUpdateOptions: TCMFUpdateOptions;
    FDestination: string;

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
  fmDocCopyMoveFileDialog: TfmDocCopyMoveFileDialog;

implementation

{$R *.dfm}

uses
   miscfunc;

{ TfmCopyMoveFileDialog }

function TfmDocCopyMoveFileDialog.GetDestination: String;
begin
   Result := FDestination;
end;

function TfmDocCopyMoveFileDialog.GetFileName: String;
begin
  Result := eFileName.Caption;
end;

function TfmDocCopyMoveFileDialog.GetNewFileName: String;
begin
  Result := eNewFileName.Text;
end;

function TfmDocCopyMoveFileDialog.GetOperation: TCMFOperation;
begin
  Result := FOperation;
end;

function TfmDocCopyMoveFileDialog.GetOption: TCMFUpdateOption;
begin
  Result := FOption;
end;

function TfmDocCopyMoveFileDialog.GetUpdateOptions: TCMFUpdateOptions;
begin
  Result := FUpdateOptions;
end;

procedure TfmDocCopyMoveFileDialog.SetDestination(const Value: String);
begin
   FDestination := Value;
end;

procedure TfmDocCopyMoveFileDialog.SetFileName(const Value: String);
begin
  eFileName.Caption := Value;
end;

procedure TfmDocCopyMoveFileDialog.SetNewFileName(const Value: String);
begin
  eNewFileName.Text := Value;
end;

procedure TfmDocCopyMoveFileDialog.SetOperation(const Value: TCMFOperation);
  procedure ChangeCaption(ARadio: TRadioButton);
  begin
    ARadio.Caption := StringReplace(ARadio.Caption,'Update','Delete',[rfReplaceAll]);
  end;
begin
  FOperation := Value;
  case FOperation of
    cmfDocRename:
    begin
//      eDestinationDirectory.Visible := False;
//      eDestinationFileName.Visible  := True;
      eFileName.Enabled             := False;
      Caption                       := 'Rename File';
      lFrom.Caption                 := 'Current File Name:';
      lTo.Caption                   := 'To File:';
    end;
{    cmfDelete:
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
    end;  }
  end;
end;

procedure TfmDocCopyMoveFileDialog.SetOption(const Value: TCMFUpdateOption);
begin
{  FOption := Value;
  case FOption of
    cmfThisTemplate: rbUpdateThisTemplate.Checked := True;
    cmfAllTemplates: rbUpdateAllTemplates.Checked := True;
    cmfNoTemplate:   rbDontUpdate.Checked := True;
  end;  }
end;

procedure TfmDocCopyMoveFileDialog.SetUpdateOptions(const Value: TCMFUpdateOptions);
begin
{  FUpdateOptions := Value;

  rbUpdateThisTemplate.Enabled := cmfThisTemplate in FUpdateOptions;
  rbUpdateAllTemplates.Enabled := cmfAllTemplates in FUpdateOptions;
  rbDontUpdate.Enabled         := cmfNoTemplate   in FUpdateOptions;    }
end;

procedure TfmDocCopyMoveFileDialog.rbUpdateThisTemplateClick(Sender: TObject);
begin
{  if(Sender = rbUpdateThisTemplate) then
    FOption := cmfThisTemplate
  else if(Sender = rbUpdateAllTemplates) then
    FOption := cmfAllTemplates
  else
    FOption := cmfNoTemplate;    }
end;

procedure TfmDocCopyMoveFileDialog.bnOkClick(Sender: TObject);
var
  LSH: TSHFileOpStruct;
  lDocExt,
  lDocPath,
  loldFileName: string;
  bRenameOk: boolean;
  iLastError: integer;
begin
   ModalResult := mrNone;
   lDocExt := ExtractFileExt(eFileName.Caption);
   lDocPath := ExtractFilePath(eFileName.Caption);
   loldFileName := ExtractFileName(eFileName.Caption);
   if (lDocExt = '') then
      lDocExt := SystemString('DEFAULT_DOC_EXT');

   if (ExtractFileExt(eNewFileName.Text) = '') then
      Destination := (lDocPath + eNewFileName.Text + lDocExt)
   else
      Destination := lDocPath + eNewFileName.Text;

   if not directoryExists(lDocPath) then
      CreateDir(lDocPath);

   bRenameOk := RenameFile(FileName, Destination);
   iLastError := GetLastError;
   if (iLastError = 0) then
   begin
      ShowMessage('( '+loldFileName + ') renamed to (' + eNewFileName.Text+')');
      ModalResult := mrOk;
   end
   else
   begin
      if iLastError = 32 then
         ShowMessage(eNewFileName.Text + ' rename failed with error : ' + IntToStr(iLastError)+ ' - Another application has the file open' )
      else
         ShowMessage(eNewFileName.Text + ' rename failed with error : ' + IntToStr(iLastError) + ' - ' + SysErrorMessage(iLastError));
   end;


{   ZeroMemory(@LSH, SizeOf(LSH));
   LSH.Wnd    := Application.Handle;
   LSH.pFrom  := PChar(FileName + #0);
   LSH.pTo    := PChar(Destination + #0);
   case FOperation of
      cmfCopy:      LSH.wFunc  := FO_COPY;
      cmfMove:      LSH.wFunc  := FO_MOVE;
      cmfDocRename:    LSH.wFunc  := FO_RENAME;
      cmfDelete:    LSH.wFunc  := FO_DELETE;
   end;
   LSH.fFlags := FOF_NOCONFIRMATION;

   if(SHFileOperation(LSH) = 0) then
   begin
      if(LSH.fAnyOperationsAborted) then
         Exit;
      ModalResult := mrOk;
   end
   else   }


end;

end.
