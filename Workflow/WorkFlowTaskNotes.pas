unit WorkFlowTaskNotes;
(*
  WorkFlow Task Notes.

  Task note entry and edit form.

  Mathew Dredge, Aug-Sep 2002
 *)

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls, dbcgrids, DBActns, ActnList,
  ImgList, ActnMan, ActnCtrls, Grids, OracleUniProvider,
  DBGrids, StdActns, ToolWin,  dxBar, dxBarDBNav, XPStyleActnCtrls, DB,
  Uni, DBAccess, MemDS, cxClasses, ppCtrls, ppPrnabl, ppClass, ppVar,
  ppBands, ppCache, ppDB, ppDesignLayer, ppParameter, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppMemo, System.Actions;

const
  C_SETTINGOWNER = 'WKFTASKNOTES';

type
  TNoteEvent = (neAdd, neDelete);
  TNotesEvent = procedure(AWorkFlowTask: Integer; ANoteEvent: TNoteEvent) of object;

  TfmWorkFlowTaskNotes = class(TForm)
    ActionManager: TActionManager;
    ImageList: TImageList;
    aDataSetFirst: TDataSetFirst;
    aDataSetPrior: TDataSetPrior;
    aDataSetNext: TDataSetNext;
    aDataSetLast: TDataSetLast;
    aDataSetInsert: TDataSetInsert;
    aDataSetDelete: TDataSetDelete;
    aDataSetEdit: TDataSetEdit;
    dbgNotes: TDBCtrlGrid;
    dbeEntered: TDBEdit;
    dbeBy: TDBEdit;
    dbmNote: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    aPrintNotes: TAction;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager1: TdxBarManager;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    btnPrint: TdxBarButton;
    qWorkflowTaskNotes: TUniQuery;
    dsWorkflowTaskNotes: TDataSource;
    qWorkflowTaskNotesNOTEID: TFloatField;
    qWorkflowTaskNotesCREATED: TDateTimeField;
    qWorkflowTaskNotesCREATEDBY: TStringField;
    qWorkflowTaskNotesNOTE: TStringField;
    qWorkflowTaskNotesCREATEDBYNAME: TStringField;
    ppReport1: TppReport;
    plWorkflowTaskNotesRpt: TppDBPipeline;
    dsWorkflowTaskNotesRpt: TUniDataSource;
    qWorkflowTaskNotesRpt: TUniQuery;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel9: TppLabel;
    ppDBMemo1: TppDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure aDataSetInsertExecute(Sender: TObject);
    procedure aDataSetDeleteExecute(Sender: TObject);
    procedure aDataSetEditExecute(Sender: TObject);
    procedure aDataSetEditUpdate(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aDataSetInsertUpdate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
  private
    FMatterClient: String;
    FWorkflowTypeCode: String;
    procedure SetNMatter(const Value: Integer);
  private
    FNMatter: Integer;
    FWorkflowType: String;
    FMatterDesc: String;
    FTaskString: String;
    FOnNotesFormClose: TNotifyEvent;
    FTaskCompleted: Boolean;
    FTaskDescription: String;
    FWorkFlowTask: Integer;
    procedure SetTaskString(const Value: String);
    procedure SetWorkFlowTask(const Value: Integer);
    { Private declarations }
    procedure DoNoteEvent(ANoteEvent: TNoteEvent);
    property MatterClient:     String read FMatterClient     write FMatterClient;
    property MatterDesc:       String read FMatterDesc       write FMatterDesc;
    property WorkflowType:     String read FWorkflowType     write FWorkflowType;
    property WorkflowTypeCode: String read FWorkflowTypeCode write FWorkflowTypeCode;
  public
    { Public declarations }
    property WorkFlowTask: Integer read FWorkFlowTask write SetWorkFlowTask;
    property NMatter: Integer   read FNMatter    write SetNMatter;
    property TaskString: String read FTaskString write SetTaskString;
    property TaskCompleted: Boolean read FTaskCompleted write FTaskCompleted;
    property TaskDescription: String read FTaskDescription write FTaskDescription;


    property OnNotesFormClose: TNotifyEvent read FOnNotesFormClose write FOnNotesFormClose;
  end;

var
  fmWorkFlowTaskNotes: TfmWorkFlowTaskNotes;

implementation

uses WorkFlowDataModule, WorkFlowNoteEntryDialog, MiscFunc,
  WorkFlowMatterTasks, WorkFlowToDo,
  WorkFlowDataModuleRun;

{$R *.dfm}

procedure TfmWorkFlowTaskNotes.SetTaskString(const Value: String);
begin
  FTaskString := Value;
  Caption := 'Task Notes - [' + Value + '] ' + dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter) + ' - ' + MatterClient + ' (' + Trim(WorkflowType) + ')';
end;

procedure TfmWorkFlowTaskNotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if(WindowState <> wsMaximized) then
  begin
    SettingSave(C_SETTINGOWNER,'LEFT', Left);
    SettingSave(C_SETTINGOWNER,'WIDTH', Width);
    SettingSave(C_SETTINGOWNER,'TOP', Top);
    SettingSave(C_SETTINGOWNER,'HEIGHT', Height);
  end;

  Action := caFree;
  if(Assigned(FOnNotesFormClose)) then
    FOnNotesFormClose(Self);
  SettingSave(C_SETTINGOWNER,'WINDOWSTATE', Integer(WindowState));
end;

procedure TfmWorkFlowTaskNotes.FormResize(Sender: TObject);
begin
  dbmNote.Height := dbgNotes.PanelHeight - dbmNote.Top;
  dbmNote.Width := dbgNotes.PanelWidth - dbmNote.Left;
end;

procedure TfmWorkFlowTaskNotes.aDataSetInsertExecute(Sender: TObject);
var
  LDate: TDateTime;
begin
  fmWorkFlowNoteEntryDialog := TfmWorkFlowNoteEntryDialog.Create(Self);
  try
    LDate := Now();
    fmWorkFlowNoteEntryDialog.EntryDate := LDate;
    fmWorkFlowNoteEntryDialog.By        := dmWorkFlowDataModule.UserName;
    fmWorkFlowNoteEntryDialog.Note      := '';
    if(fmWorkFlowNoteEntryDialog.ShowModal <> mrOk) then
      Exit;

    dmWorkFlowDataModule.qAnyQuery.SQL.Clear();
    dmWorkFlowDataModule.qAnyQuery.SQL.Add('INSERT INTO workflowtasknotes (workflowtask, created, createdby, note)');
    dmWorkFlowDataModule.qAnyQuery.SQL.Add(' VALUES (:workflowtask, :created, :createdby, :note)');
    dmWorkFlowDataModule.qAnyQuery.ParamByName('workflowtask').AsInteger := WorkflowTask;
    dmWorkFlowDataModule.qAnyQuery.ParamByName('created').AsDateTime := LDate;
    dmWorkFlowDataModule.qAnyQuery.ParamByName('createdby').AsString := dmWorkFlowDataModule.UserID;
    dmWorkFlowDataModule.qAnyQuery.ParamByName('note').AsString      := fmWorkFlowNoteEntryDialog.Note;
    dmWorkFlowDataModule.qAnyQuery.ExecSQL();

    qWorkflowTaskNotes.Refresh();

    DoNoteEvent(neAdd);
  finally
    FreeAndNil(fmWorkFlowNoteEntryDialog);
  end;
end;

procedure TfmWorkFlowTaskNotes.aDataSetDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to delete the selected note?', mtConfirmation, [mbYes,mbNo], 0) <> mrYes then
    Exit;

  dmWorkFlowDataModule.qAnyQuery.SQL.Clear();
  dmWorkFlowDataModule.qAnyQuery.SQL.Add('DELETE FROM workflowtasknotes WHERE ');
  dmWorkFlowDataModule.qAnyQuery.SQL.Add(' noteid = :noteid');
  dmWorkFlowDataModule.qAnyQuery.ParamByName('noteid').Value   := dmWorkFlowDataModuleRun.qWorkflowTaskNotesNOTEID.Value;

  dmWorkFlowDataModule.qAnyQuery.ExecSQL();

  qWorkflowTaskNotes.Refresh();

  DoNoteEvent(neDelete);
end;

procedure TfmWorkFlowTaskNotes.aDataSetEditExecute(Sender: TObject);
begin
  fmWorkFlowNoteEntryDialog := TfmWorkFlowNoteEntryDialog.Create(Self);
  try
    fmWorkFlowNoteEntryDialog.EntryDate := qWorkflowTaskNotesCREATED.AsDateTime;
    fmWorkFlowNoteEntryDialog.By        := qWorkflowTaskNotesCREATEDBY.AsString;
    fmWorkFlowNoteEntryDialog.Note      := qWorkflowTaskNotesNOTE.AsString;
    if(fmWorkFlowNoteEntryDialog.ShowModal <> mrOk) then
      Exit;

    dmWorkFlowDataModule.qAnyQuery.SQL.Clear();
    dmWorkFlowDataModule.qAnyQuery.SQL.Add('UPDATE workflowtasknotes SET note = :note WHERE ');
    dmWorkFlowDataModule.qAnyQuery.SQL.Add(' noteid = :noteid');
    dmWorkFlowDataModule.qAnyQuery.ParamByName('note').AsString := fmWorkFlowNoteEntryDialog.Note;
    dmWorkFlowDataModule.qAnyQuery.ParamByName('noteid').Value   :=qWorkflowTaskNotesNOTEID.Value;

    dmWorkFlowDataModule.qAnyQuery.ExecSQL();

    qWorkflowTaskNotes.Refresh();

  finally
    FreeAndNil(fmWorkFlowNoteEntryDialog);
  end;
end;

procedure TfmWorkFlowTaskNotes.aDataSetEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (qWorkflowTaskNotes.RecordCount > 0);
end;

procedure TfmWorkFlowTaskNotes.aCloseExecute(Sender: TObject);
begin
  Close();
end;

procedure TfmWorkFlowTaskNotes.FormCreate(Sender: TObject);
begin
  if(SettingLoadInteger(C_SETTINGOWNER,'LEFT') <> 0) then
  begin
    Left        := SettingLoadInteger(C_SETTINGOWNER,'LEFT');
    Width       := SettingLoadInteger(C_SETTINGOWNER,'WIDTH');
    Top         := SettingLoadInteger(C_SETTINGOWNER,'TOP');
    Height      := SettingLoadInteger(C_SETTINGOWNER,'HEIGHT');
  end;
  WindowState := TWindowState(SettingLoadInteger(C_SETTINGOWNER,'WINDOWSTATE'));
end;

procedure TfmWorkFlowTaskNotes.SetWorkFlowTask(const Value: Integer);
begin
  FWorkFlowTask := Value;
  qWorkflowTaskNotes.Close();
  qWorkflowTaskNotes.ParamByName('workflowtask').AsInteger := FWorkFlowTask;
  qWorkflowTaskNotes.Open();
end;

procedure TfmWorkFlowTaskNotes.DoNoteEvent(ANoteEvent: TNoteEvent);
var
  LForm: TForm;
  i: Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
  begin
    LForm := Screen.Forms[i];
    if(LForm is TfmWorkFlowMatterTasks) then
      TfmWorkFlowMatterTasks(LForm).NotesEvent(WorkFlowTask,ANoteEvent);
    if(LForm is TfmWorkFlowToDo) then
      TfmWorkFlowToDo(LForm).NotesEvent(WorkFlowTask,ANoteEvent);
  end;
end;

procedure TfmWorkFlowTaskNotes.SetNMatter(const Value: Integer);
begin
  FNMatter := Value;
  dmWorkFlowDataModuleRun.qMatterDetails.ParamByName('nmatter').AsInteger := FNMatter;
  dmWorkFlowDataModuleRun.qMatterDetails.Open();
  try
    MatterDesc       := dmWorkFlowDataModuleRun.qMatterDetailsSHORTDESCR.AsString;
    MatterClient     := dmWorkFlowDataModuleRun.qMatterDetailsCLIENTNAME.AsString;
    WorkflowType     := dmWorkFlowDataModuleRun.qMatterDetailsWORKFLOWTYPE.AsString;
    WorkflowTypeCode := dmWorkFlowDataModuleRun.qMatterDetailsWORKFLOWTYPECODE.AsString;
  finally
    dmWorkFlowDataModuleRun.qMatterDetails.Close();
  end;

end;

procedure TfmWorkFlowTaskNotes.aDataSetInsertUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := True;
end;

procedure TfmWorkFlowTaskNotes.btnPrintClick(Sender: TObject);
begin
   qWorkflowTaskNotesRpt.Close();
   qWorkflowTaskNotesRpt.ParamByName('workflowtask').AsInteger := FWorkFlowTask;
   qWorkflowTaskNotesRpt.Open();
   ppReport1.Print;
{  qrWorkFlowTaskNotesReport := TqrWorkFlowTaskNotesReport.Create(Self);
  try
    qrWorkFlowTaskNotesReport.Company := SystemString('COMPANY');
    qrWorkFlowTaskNotesReport.Matter  := dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter) + ' - ' + MatterClient + ' (' + Trim(WorkflowType) + ')';
    qrWorkFlowTaskNotesReport.Task    := '[' + TaskString +'] ' + TaskDescription;
    qrWorkFlowTaskNotesReport.PreviewModal();
  finally
    FreeAndNil(qrWorkFlowTaskNotesReport);
  end;  }
end;

procedure TfmWorkFlowTaskNotes.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
    Text := SystemString('COMPANY');
end;

procedure TfmWorkFlowTaskNotes.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
   Text := dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter) + ' - ' + MatterClient + ' (' + Trim(WorkflowType) + ')';
end;

procedure TfmWorkFlowTaskNotes.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
   Text := '[' + TaskString +'] ' + TaskDescription;
end;

end.
