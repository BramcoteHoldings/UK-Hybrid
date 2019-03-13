unit WorkFlowNewTaskDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls, ComCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, cxGraphics,
  cxSpinEdit, cxLookAndFeels, cxLookAndFeelPainters, MemDS, DBAccess, Uni;

type
  TfmWorkFlowNewTaskDialog = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    lNewSeqNoLabel: TLabel;
    lNewSeqNo: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    lSelectedTask: TLabel;
    Label6: TLabel;
    eTaskDescription: TEdit;
    dtCompleteBy: TDateTimePicker;
    lCompleteByDate: TLabel;
    ckNoCompleteDate: TCheckBox;
    ckStartTask: TCheckBox;
    lCompleteDays1: TLabel;
    lCompleteDays2: TLabel;
    dblAssignTo: TcxLookupComboBox;
    seCompleteDays: TcxSpinEdit;
    ckCriticalDate: TCheckBox;
    ckCriticalAlert: TCheckBox;
    Label3: TLabel;
    tbTeam: TUniTable;
    StringField1: TStringField;
    tbTeamDESCR: TStringField;
    dsTeam: TDataSource;
    lbTeams: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ckStartTaskClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    FNMatter: Integer;
    procedure SetSelectedTaskLabel(const Value: String);
    procedure SetTaskSequenceLabel(const Value: String);
    function GetAssignedTo: String;
    function GetAssignedToTeam: String;
    function GetTaskDescription: String;
    procedure SetTaskDescription(const Value: String);
    function GetCompleteByDate: TDate;
    function GetNoCompletionDate: Boolean;
    procedure SetCompleteByDate(const Value: TDate);
    procedure SetNoCompletionDate(const Value: Boolean);
    procedure SetAssignedTo(const Value: String);
    procedure SetAssignedToTeam(const Value: String);
    function GetCompleteDays: Integer;
    function GetStartTask: Boolean;
    procedure SetCompleteDays(const Value: Integer);
    procedure SetTaskStart(const Value: Boolean);
    function GetAssignTo: String;
    { Private declarations }
  public
    { Public declarations }
    property SelectedTaskLabel: String write SetSelectedTaskLabel;
    property TaskSequenceLabel: String write SetTaskSequenceLabel;
    property NMatter: Integer read FNMatter write FNMatter ;
    property AssignedTo: String read GetAssignedTo write SetAssignedTo;
    property AssignedToTeam: String read GetAssignedToTeam write SetAssignedToTeam;
    property AssignTo: String read GetAssignTo;
    property TaskDescription: String read GetTaskDescription write SetTaskDescription;
    property CompleteByDate: TDate read GetCompleteByDate write SetCompleteByDate;
    property NoCompletionDate: Boolean read GetNoCompletionDate write SetNoCompletionDate;
    property StartTask: Boolean read GetStartTask write SetTaskStart;
    property CompleteDays: Integer read GetCompleteDays write SetCompleteDays;

  end;

var
  fmWorkFlowNewTaskDialog: TfmWorkFlowNewTaskDialog;

implementation

uses WorkFlowDataModule, Dialogs, AxiomData;

{$R *.dfm}

{ TfmWorkFlowNewTaskDialog }

procedure TfmWorkFlowNewTaskDialog.SetSelectedTaskLabel(const Value: String);
begin
  lSelectedTask.Caption := Value;
end;

procedure TfmWorkFlowNewTaskDialog.SetTaskSequenceLabel(const Value: String);
begin
  lNewSeqNo.Caption := Value;
end;

procedure TfmWorkFlowNewTaskDialog.FormShow(Sender: TObject);
begin
  dmWorkFlowDataModule.qListCarriage.ParamByName('nmatter').AsInteger := NMatter;
//  dmWorkFlowDataModule.qListCarriage.ParamByName('employee').AsString := dmWorkFlowDataModule.UserID;
  dmWorkFlowDataModule.qListCarriage.Open();
//  dmWorkFlowDataModule.qListCarriage.First();
  dmWorkFlowDataModule.qListCarriage.Locate('CODE',dmAxiom.WorkFlowDefault,[loCaseInsensitive]);
  dblAssignTo.EditValue := dmWorkFlowDataModule.qListCarriageID.AsString;
end;

function TfmWorkFlowNewTaskDialog.GetAssignedTo: String;
begin
   Result := dblAssignTo.EditValue;
end;

function TfmWorkFlowNewTaskDialog.GetAssignedToTeam: String;
begin
   if lbTeams.Text <> '' then
      Result := lbTeams.EditValue
   else
      Result := '';
end;

function TfmWorkFlowNewTaskDialog.GetAssignTo: String;
begin
   Result := dmWorkFlowDataModule.qListCarriage.FieldByName('code').AsString; //  dblAssignTo.Properties.ListColumns.Items[1].Field;
end;

procedure TfmWorkFlowNewTaskDialog.FormDestroy(Sender: TObject);
begin
  dmWorkFlowDataModule.qListCarriage.Close();
  tbTeam.Close();
end;

function TfmWorkFlowNewTaskDialog.GetTaskDescription: String;
begin
  Result := eTaskDescription.Text;
end;

procedure TfmWorkFlowNewTaskDialog.SetTaskDescription(const Value: String);
begin
  eTaskDescription.Text := Value;
end;

procedure TfmWorkFlowNewTaskDialog.FormCreate(Sender: TObject);
begin
  TaskDescription := '';
  CompleteByDate := Date() + 14;
  NoCompletionDate := False;
  StartTask := False;
  CompleteDays := 0;
   tbTeam.Open();
end;

function TfmWorkFlowNewTaskDialog.GetCompleteByDate: TDate;
begin
  Result := dtCompleteBy.Date;
end;

function TfmWorkFlowNewTaskDialog.GetNoCompletionDate: Boolean;
begin
  Result := ckNoCompleteDate.Checked;
end;

procedure TfmWorkFlowNewTaskDialog.SetCompleteByDate(const Value: TDate);
begin
  dtCompleteBy.Date := Value;
end;

procedure TfmWorkFlowNewTaskDialog.SetNoCompletionDate(const Value: Boolean);
begin
  ckNoCompleteDate.Checked := Value;
end;

procedure TfmWorkFlowNewTaskDialog.SetAssignedTo(const Value: String);
begin
  dblAssignTo.EditValue := Value;
end;

procedure TfmWorkFlowNewTaskDialog.SetAssignedToTeam(const Value: String);
begin
  lbTeams.EditValue := Value;
end;


procedure TfmWorkFlowNewTaskDialog.ckStartTaskClick(Sender: TObject);
begin
  lCompleteByDate.Enabled := ckStartTask.Checked;
  dtCompleteBy.Enabled    := ckStartTask.Checked;
  lCompleteDays1.Enabled  := not ckStartTask.Checked;
  lCompleteDays2.Enabled  := not ckStartTask.Checked;
  lCompleteDays1.Enabled  := not ckStartTask.Checked;
  seCompleteDays.Enabled  := not ckStartTask.Checked;
end;

function TfmWorkFlowNewTaskDialog.GetCompleteDays: Integer;
begin
  Result := seCompleteDays.Value;
end;

function TfmWorkFlowNewTaskDialog.GetStartTask: Boolean;
begin
  Result := ckStartTask.Checked;
end;

procedure TfmWorkFlowNewTaskDialog.SetCompleteDays(const Value: Integer);
begin
  seCompleteDays.Value := Value;
end;

procedure TfmWorkFlowNewTaskDialog.SetTaskStart(const Value: Boolean);
begin
  ckStartTask.Checked := Value;
  ckStartTaskClick(nil);
end;

procedure TfmWorkFlowNewTaskDialog.OKBtnClick(Sender: TObject);
begin
  if(TaskDescription = '') then
  begin
    MessageDlg('Please enter a task description', mtError, [mbOK], 0);
    ActiveControl := eTaskDescription;
    ModalResult   := mrNone;
  end;
end;

end.
