unit WorkFlowTask;
{$DEFINE _DISABLED_DATE_TESTING_}

(*
  WorkFlow Task

  Uses task templates to build a linked-list tree
  of tasks, and all the methods that make tasks
  work with each other.

  Mathew Dredge, Aug-Sep 2002
 *)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleUniProvider, Uni, DBAccess, MemDS, WorkFlowTaskDef, VirtualTrees, AxiomData;

type

  TWorkFlowTask = class
  private
    FParentTask,
    FPrevTask,
    FNextTask,
    FFirstChildTask,
    FLastChildTask: TWorkFlowTask;

    FTemplateLineID: Integer;
    FRepetition: Integer;
    FCompleteDays: Integer;
    FDaysFrom: Integer;
    FSeqNo: Integer;
    FCompletedBy: String;
    FSkippedByName: String;
    FCompletedByName: String;
    FTaskDescription: String;
    FTaskNote: String;
    FSkippedBy: String;
    FAssignedTo: String;
    FAssignedToTeam: String;
    FAssignedToName: String;
    FStartedByName: String;
    FStartedBy: String;
    FSkippedDate: TDateTime;
    FCompletedDate: TDateTime;
    FStartedDate: TDateTime;
    FCompleteByDate: TDateTime;
    FStartWhen: TTaskStartsWhen;
    FNMatter: Integer;
    FHasDocuments: Boolean;
    FNumberOfNotes: Integer;
    FCompleteRelated: Integer;
    FSkipRelated: Integer;
    FStartRelated: Integer;
    FCompleteWhen: TTaskCompletesWhen;
    FSkipWhen: TTaskSkipsWhen;

    FViewDate: TDate;

    FAssignedToChanged,
    FAssignedToTeamChanged,
    FStartedDateChanged,
    FStartedByChanged,
    FCompletedDateChanged,
    FCompletedByChanged,
    FSkippedDateChanged,
    FSkippedByChanged,
    FCompleteWhenChanged,
    FCompleteByDateChanged,
    FSeqNoChanged,
    FAssignedToChangedByChanged,
    FAssignedToTeamChangedByChanged,
    FDueDateChangedByChanged,
    FUndoByChanged: Boolean;

    FRecentNoteID: Integer;
    FRecentNote,
    FRecentNoteCreatedBy: String;
    FRecentNoteCreated: TDateTime;
    FWorkFlowTask: Integer;
    FWorkFlowTypeCode: String;
    FCustom: Boolean;
    FAssignTo: String;
    FRepetitionBase: Boolean;
    FDueDateLinkToDaysFrom: Integer;
    FDueDateLinkToRelated: Integer;
    FDueDateLinkTo: TTaskDueDateLinkTo;
    FShowFee: Boolean;
    FScaleCostCode: String;
    FWatcher: String;
    FWatcherName: String;
    FEMailOverDue: String;
    FEMailOverDueName: String;
    FWatchFor: String;
    FAssignedToChangedBy: String;
    FAssignedToTeamChangedBy: String;
    FUndoBy: String;
    FDueDateChangedBy: String;
    FWatcherCode: String;
    FEMailOverDueCode: String;
    FHasDataForm: boolean;
    FTaskHeading: boolean;
    FCriticalAlertStr: String;
    FCriticalDateStr: String;
    FSameDayDue: String;

    // for critical dates

    FCriticalDate : boolean;
    FCriticalAlert : boolean;

    FSkipWhenRelated: Integer;

//    FContinueCritical : boolean;
    FMatterClosing: boolean;  

    function GetOverdueDays: Integer;
    function GetParentLineID: Integer;
    function GetSequence: String;
    function GetChildCount: Integer;
    function GetCompleteByDate: TDateTime;
    function GetWorkflowFromSeqNo(ASeqNo: Integer): TWorkFlowTask;
    function GetRootTask(): TWorkFlowTask;
    function GetAllChildrenComplete: Boolean;
    function GetCompleted: Boolean;
    function GetSkipped: Boolean;
    function GetStarted: Boolean;
    function GetHoverText: String;

    function GetIsRootTask: Boolean;
    function GetCompleteRelatedTask: TWorkFlowTask;
    function GetSkipRelatedTask: TWorkFlowTask;
    function GetStartRelatedTask: TWorkFlowTask;
    procedure SetCompleteByDate(const Value: TDateTime);
    procedure SetAssignedTo(const Value: String);
    procedure SetAssignedToTeam(const Value: String);
    procedure SetCompletedBy(const Value: String);
    procedure SetCompletedDate(const Value: TDateTime);
    procedure SetSkippedBy(const Value: String);
    procedure SetSkippedDate(const Value: TDateTime);
    procedure SetStartedBy(const Value: String);
    procedure SetStartedDate(const Value: TDateTime);

    procedure ResetChangedFlags();
    function GetAllChildrenSkipped: Boolean;
    function GetHasOverdueChild: Boolean;
    function GetMostRecentNoteHint: String;
    procedure SetNumberOfNotes(const Value: Integer);
    function GetTaskOfLineID(ALineID: Integer; ARepetition: Integer): TWorkFlowTask;

    procedure ReSequenceChildren();
    procedure SetSeqNo(const Value: Integer);
    function TaskEquals(ATask: TWorkFlowTask): Boolean;
    function GetHasStartedDueChild: Boolean;
    function GetDueDateLinkToRelatedTask: TWorkFlowTask;
    procedure SetAssignedToChangedBy(const Value: String);
    procedure SetAssignedToTeamChangedBy(const Value: String);
    procedure SetUndoBy(const Value: String);
    procedure SetDueDateChangedBy(const Value: String);
  protected
    procedure TaskStarted(ATask: TWorkFlowTask; ADate: TDateTime);
    procedure TaskCompleted(ATask: TWorkFlowTask; ADate: TDateTime);
    procedure TaskSkipped(ATask: TWorkFlowTask; ADate: TDateTime);
    procedure TaskDueDateChanged(ATask: TWorkFlowTask; ADate, ADueDate: TDateTime);

    function IsChildOf(ATask: TWorkFlowTask): Boolean;
    function IsChild(ATask: TWorkFlowTask): Boolean;

    function IsParent(ATask: TWorkFlowTask): Boolean;

  public
    constructor Create(AParentTask: TWorkFlowTask); overload;
    constructor Create(workFlowID,nmatter: Integer); overload;
    destructor Destroy; override;

    procedure LoadFromDB();
    procedure LoadFromDB2();
    procedure LoadChildrenFromDB();

    procedure AddToTree(ATree: TVirtualStringTree; AParentTreeNode: PVirtualNode; ASelectedNode: Integer; AExpandedNodes: array of Integer);

    procedure StartTask(ADate: TDateTime);
    procedure CompleteTask(ADate: TDateTime);
    procedure CheckOutTask();
    procedure ReleaseTask();
    procedure SkipTask(ADate: TDateTime);

    procedure DoFee(ADate: TDateTime);

    procedure UndoTask();

    procedure UpdateDB();

    procedure GenerateReportData();

    procedure SetViewDate(ADate: TDate);

    function GetTaskOfWorkFlowTask(AWorkFlowTask: Integer): TWorkFlowTask;

    function AddTask(AOwner: TForm): TWorkFlowTask;
    function DeleteTask(ATask: TWorkFlowTask): Boolean;
    function RepeatTask(ATree: TVirtualStringTree; AParentTreeNode: PVirtualNode; ANewParent: TWorkFlowTask): TWorkFlowTask;

    procedure updateStartedTree(AStarted : TDateTime);

    procedure uncomplete;

    property ParentTask: TWorkFlowTask read FParentTask;
    property PrevTask: TWorkFlowTask read FPrevTask write FPrevTask;
    property NextTask: TWorkFlowTask read FNextTask write FNextTask;
    property FirstChildTask: TWorkFlowTask read FFirstChildTask write FFirstChildTask;
    property LastChildTask: TWorkFlowTask read FLastChildTask write FLastChildTask;
    property ChildCount: Integer read GetChildCount;
    property Child[ASeqNo: Integer]: TWorkFlowTask read GetWorkflowFromSeqNo;
    property RootTask: TWorkFlowTask read GetRootTask;
    property IsRootTask: Boolean read GetIsRootTask;

    property AllChildrenComplete: Boolean read GetAllChildrenComplete;
    property AllChildrenSkipped:  Boolean read GetAllChildrenSkipped;

    property HasOverdueChild: Boolean read GetHasOverdueChild;
    property HasStartedDueChild: Boolean read GetHasStartedDueChild;

    property MostRecentNoteHint: String Read GetMostRecentNoteHint;

    // task properties
    property WorkFlowTask:              Integer            read FWorkFlowTask           write FWorkFlowTask;
    property TemplateLineID:            Integer            read FTemplateLineID         write FTemplateLineID;
    property Repetition:                Integer            read FRepetition             write FRepetition;
    property RepetitionBase:            Boolean            read FRepetitionBase         write FRepetitionBase;
    property NMatter:                   Integer            read FNMatter                write FNMatter;
    property SeqNo:                     Integer            read FSeqNo                  write SetSeqNo;
    property Sequence:                  String             read GetSequence;
    property ParentLineID:              Integer            read GetParentLineID;
    property AssignedTo:                String             read FAssignedTo             write SetAssignedTo;
    property AssignedToTeam:            String             read FAssignedToTeam         write SetAssignedToTeam;
    property AssignedToName:            String             read FAssignedToName         write FAssignedToName;
    property StartedDate:               TDateTime          read FStartedDate            write SetStartedDate;
    property StartedBy:                 String             read FStartedBy              write SetStartedBy;
    property StartedByName:             String             read FStartedByName          write FStartedByName;
    property CompletedDate:             TDateTime          read FCompletedDate          write SetCompletedDate;
    property CompletedBy:               String             read FCompletedBy            write SetCompletedBy;
    property CompletedByName:           String             read FCompletedByName        write FCompletedByName;
    property CompleteByDate:            TDateTime          read GetCompleteByDate       write SetCompleteByDate;
    property SkippedDate:               TDateTime          read FSkippedDate            write SetSkippedDate;
    property SkippedBy:                 String             read FSkippedBy              write SetSkippedBy;
    property SkippedByName:             String             read FSkippedByName          write FSkippedByName;
    property TaskDescription:           String             read FTaskDescription        write FTaskDescription;
    property TaskNote:                  String             read FTaskNote               write FTaskNote;
    property StartWhen:                 TTaskStartsWhen    read FStartWhen              write FStartWhen;
    property StartRelated:              Integer            read FStartRelated           write FStartRelated;
    property StartRelatedTask:          TWorkFlowTask      read GetStartRelatedTask;
    property DaysFrom:                  Integer            read FDaysFrom               write FDaysFrom;
    property CompleteDays:              Integer            read FCompleteDays           write FCompleteDays;
    property OverDueDays:               Integer            read GetOverdueDays;
    property CompleteWhen:              TTaskCompletesWhen read FCompleteWhen           write FCompleteWhen;
    property CompleteRelated:           Integer            read FCompleteRelated        write FCompleteRelated;
    property CompleteRelatedTask:       TWorkFlowTask      read GetCompleteRelatedTask;
    property SkipWhen:                  TTaskSkipsWhen     read FSkipWhen               write FSkipWhen;
    property SkipRelated:               Integer            read FSkipRelated            write FSkipRelated;
    property SkipRelatedTask:           TWorkFlowTask      read GetSkipRelatedTask;
    property HasDocuments:              Boolean            read FHasDocuments           write FHasDocuments;
    property NumberOfNotes:             Integer            read FNumberOfNotes          write SetNumberOfNotes;
    property WorkFlowTypeCode:          String             read FWorkFlowTypeCode       write FWorkFlowTypeCode;
    property Custom:                    Boolean            read FCustom                 write FCustom;
    property AssignTo:                  String             read FAssignTo               write FAssignTo;

    property DueDateLinkTo:             TTaskDueDateLinkTo read FDueDateLinkTo          write FDueDateLinkTo;
    property DueDateLinkToRelated:      Integer            read FDueDateLinkToRelated   write FDueDateLinkToRelated;
    property DueDateLinkToRelatedTask:  TWorkFlowTask      read GetDueDateLinkToRelatedTask;
    property DueDateLinkToDaysFrom:     Integer            read FDueDateLinkToDaysFrom  write FDueDateLinkToDaysFrom;

    property ScaleCostCode:             String             read FScaleCostCode          write FScaleCostCode;
    property ShowFee:                   Boolean            read FShowFee                write FShowFee;

    property ViewDate:                  TDate              read FViewDate               write SetViewDate;

    property Started:                   Boolean            read GetStarted;
    property Completed:                 Boolean            read GetCompleted;
    property Skipped:                   Boolean            read GetSkipped;

    property EMailOverDue:              String             read FEMailOverDue           write FEMailOverDue;
    property EMailOverDueCode:          String             read FEMailOverDueCode       write FEMailOverDueCode;
    property EMailOverDueName:          String             read FEMailOverDueName       write FEMailOverDueName;

    property Watcher:                   String             read FWatcher                write FWatcher;
    property WatcherName:               String             read FWatcherName            write FWatcherName;
    property WatcherCode:               String             read FWatcherCode            write FWatcherCode;
    property WatchFor:                  String             read FWatchFor               write FWatchFor;

    property AssignedToChangedBy:       String             read FAssignedToChangedBy    write SetAssignedToChangedBy;
    property AssignedToTeamChangedBy:   String             read FAssignedToTeamChangedBy    write SetAssignedToTeamChangedBy;
    property DueDateChangedBy:          String             read FDueDateChangedBy       write SetDueDateChangedBy;
    property UndoBy:                    String             read FUndoBy                 write SetUndoBy;

    property HoverText:                 String             read GetHoverText;

    property CriticalDate:              Boolean            read FCriticalDate            write FCriticalDate;
    property CriticalAlert:             Boolean            read FCriticalAlert           write FCriticalAlert;

    property HasDataForm:               Boolean            read FHasDataForm             write FHasDataForm;

    property TaskHeading:               Boolean            read FTaskHeading             write FTaskHeading;

    property SkipWhenRelated:           Integer            read FSkipWhenRelated         write FSkipWhenRelated;

    property CriticalAlertStr:          String             read FCriticalAlertStr        write FCriticalAlertStr;
    property CriticalDateStr:           String             read FCriticalDateStr         write FCriticalDateStr;
    property SameDayDue:                String             read FSameDayDue              write FSameDayDue;
    property MatterClosing:             boolean            read FMatterClosing           write FMatterClosing;

  end;

type
  // data record for the tree
  PTaskData = ^TTaskData;
  TTaskData = record
    Task: TWorkflowTask;
  end;

implementation

uses WorkFlowDataModule, Variants, WorkFlowNewTaskDialog, DateUtils, FeeNew,
  WorkFlowDataModuleRun, MiscFunc, WorkFlowDataModuleTasks;

{ TWorkFlowTask }

// set this task as completed, and tell all the other tasks
// about it..
procedure TWorkFlowTask.CompleteTask(ADate: TDateTime);
begin
   if(not IsRootTask) and (not Completed) and (not Skipped) then
   begin
      CompletedDate   := ADate;
      CompletedBy     := dmWorkFlowDataModule.UserID;
      CompletedByName := dmWorkFlowDataModule.UserName;
      UpdateDB();

      DoFee(ADate);

      RootTask.TaskCompleted(Self, ADate);
   end;
end;


// CheckOut/Assign Task to current user
procedure TWorkFlowTask.CheckOutTask();
begin
      AssignedTo     := dmWorkFlowDataModule.UserID;
      UpdateDB();
end;

// Release Task
procedure TWorkFlowTask.ReleaseTask();
begin
      AssignedTo     := '';
      UpdateDB();
end;

constructor TWorkFlowTask.Create(AParentTask: TWorkFlowTask);
begin
  FParentTask         := AParentTask;
  FPrevTask           := nil;
  FNextTask           := nil;
  FFirstChildTask     := nil;
  FLastChildTask      := nil;

  FWorkFlowTask       := 0;
  FNMatter            := 0;
  FTemplateLineID     := 0;
  FRepetition         := 0;
  FCompleteDays       := 0;
  FDaysFrom           := 0;
  FSeqNo              := 0;
  FCompletedBy        := '';
  FSkippedByName      := '';
  FCompletedByName    := '';
  FTaskDescription    := '';
  FTaskNote           := '';
  FSkippedBy          := '';
  FAssignedTo         := '';
  FAssignedToTeam     := '';
  FAssignedToName     := '';
  FStartedByName      := '';
  FStartedBy          := '';
  FSkippedDate        := 0;
  FCompletedDate      := 0;
  FStartedDate        := 0;
  FCompleteByDate     := 0;
  FStartWhen          := tswDEF;
  FCompleteWhen       := tcwDEF;
  FSkipWhen           := tKwDEF;
  FStartRelated       := 0;
  FCompleteRelated    := 0;
  FSkipRelated        := 0;
  FWorkFlowTypeCode   := '';
  FCustom             := False;
  FEMailOverDue       := '';
  FEMailOverDueName   := '';
  FWatcher            := '';
  FWatcherName        := '';
  FWatchFor           := '';

  FDueDateLinkToDaysFrom  := 0;
  FDueDateLinkToRelated   := 0;
  FDueDateLinkTo          := dltDEF;

  FShowFee                := False;
  FScaleCostCode          := '';
  FHasDataForm       := False;
  FTaskHeading       := False;

  FCriticalAlertStr  := '';
  FCriticalDateStr   := '';
  FSameDayDue        := '';

  FSkipWhenRelated   := 0;
end;

constructor TWorkFlowTask.Create(workFlowID,nmatter: Integer);
var TWF : TWorkFlowTask;
begin
        TWF := TWorkFlowTask.Create(nil);
        Create(TWF);
        TWF.FirstChildTask := self;
        if(not Assigned(dmWorkFlowDataModule)) then
            dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
        dmWorkFlowDataModuleRun.qWorkflowTasks.close;
        dmWorkFlowDataModuleRun.qWorkflowTasks.ParamByName('NMATTER').AsInteger := nmatter;
        dmWorkFlowDataModuleRun.qWorkflowTasks.open;

        dmWorkflowDataModuleRun.qWorkflowTasks.Locate('workflowtask',workFlowID,[]);
        LoadFromDB;
        LoadChildrenFromDB;
        dmWorkFlowDataModuleRun.qWorkflowTasks.close;
end;


// make sure to free up the children..
destructor TWorkFlowTask.Destroy();
var
  LChildTask: TWorkFlowTask;
begin
  while(Assigned(FirstChildTask)) do
  begin
    LChildTask := FirstChildTask;
    FirstChildTask := FirstChildTask.NextTask;
    FreeAndNil(LChildTask);
  end;

  inherited;
end;

// return the number of children tasks
// that this task has.. immediate level only..
function TWorkFlowTask.GetChildCount: Integer;
var
  LChild: TWorkFlowTask;
begin
  Result := 0;

  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    Inc(Result);
    LChild := LChild.NextTask;
  end;
end;

// calculate and return the date this task
// should be completed by, or use the date already
// known..
function TWorkFlowTask.GetCompleteByDate: TDateTime;
begin
  Result := 0;
  if(Started) then
    Result := Trunc(FCompleteByDate);
end;

// from the completeby date, return the number of
// days this task is overdue..
function TWorkFlowTask.GetOverdueDays(): Integer;
begin
  Result := 0;
  if(Started and (not Completed) and (not Skipped) and (CompleteByDate <> 0)) then
    Result := Trunc(FViewDate - CompleteByDate);
end;

// return the database task identifier for the parent task.
// 0 if this task is the root task..
function TWorkFlowTask.GetParentLineID(): Integer;
begin
  if(not IsRootTask) then
    Result := ParentTask.TemplateLineID
  else
    Result := 0;
end;

// return the sequence number of this task eg 1.2.3.4
function TWorkFlowTask.GetSequence(): String;
begin
  if(not IsRootTask) then
  begin
    Result := ParentTask.Sequence;
    if(Result <> '') then
      Result := Result + '.';
    Result := Result + IntToStr(SeqNo);
  end else if(SeqNo > 0) then
    Result := IntToStr(SeqNo)
  else
    Result := '';
end;

// given a sequence number, return the task..
function TWorkFlowTask.GetWorkflowFromSeqNo(ASeqNo: Integer): TWorkFlowTask;
begin
  Result := FirstChildTask;
  while(Assigned(Result)) do
  begin
    if(Result.SeqNo = ASeqNo) then
      break;
    Result := Result.NextTask;
  end;
end;

// return true if atask is a child
function TWorkFlowTask.IsChild(ATask: TWorkFlowTask): Boolean;
var
  LChild: TWorkFlowTask;
begin
  LChild := FirstChildTask;
  while(Assigned(LChild) and (ATask <> LChild)) do
    LChild := LChild.NextTask;
  Result := Assigned(LChild);
end;

// the opposite of above, self is a child of atask
function TWorkFlowTask.IsChildOf(ATask: TWorkFlowTask): Boolean;
begin
  Result := ATask.IsChild(Self);
end;

// load all child tasks from the database,
// is recursive so from root up all tasks are loaded
// in one call..
procedure TWorkFlowTask.LoadChildrenFromDB();
var
  LChild: TWorkFlowTask;
begin
  // load each child from the database.
{  dmWorkFlowDataModule.qWorkflowTasks.ParamByName('parentlineid').AsInteger := TemplateLineID;
  dmWorkFlowDataModule.qWorkflowTasks.ParamByName('parentrepetition').AsInteger := Repetition;
  dmWorkFlowDataModule.qWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
  dmWorkFlowDataModule.qWorkflowTasks.Open();}
  try
    if(dmWorkflowDataModuleRun.qWorkflowTasks.Locate('parentlineid;parentrepetition;seqno',VarArrayOf([TemplateLineID,Repetition, 1]),[])) then
    begin
      while(not dmWorkflowDataModuleRun.qWorkflowTasks.Eof) and (dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('PARENTLINEID').AsInteger = TemplateLineID) and (dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('PARENTREPETITION').AsInteger = Repetition) do
      begin
        if(dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('REPETITION').AsInteger = Repetition) or (dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('REPETITIONBASE').AsString = 'Y') then
        begin
          LChild := TWorkFlowTask.Create(Self);
          LChild.PrevTask := LastChildTask;
          if(Assigned(LastChildTask)) then
            LastChildTask.NextTask := LChild;
          if(not Assigned(FirstChildTask)) then
            FirstChildTask := LChild;
          LastChildTask := LChild;

          LChild.LoadFromDB();
        end;
        dmWorkflowDataModuleRun.qWorkflowTasks.Next();
      end;
    end;
  finally
//    dmWorkflowDataModuleRun.qWorkflowTasks.Close();
  end;

  // tell each child to load children..
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    LChild.LoadChildrenFromDB();
    LChild := LChild.NextTask;
  end;
end;

// load this tasks details from the database.
procedure TWorkFlowTask.LoadFromDB();
begin
  WorkFlowTask          := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('WORKFLOWTASK').AsInteger;
  NMatter               := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('NMATTER').AsInteger;
  SeqNo                 := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SEQNO').AsInteger;
  TemplateLineID        := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('TEMPLATELINEID').AsInteger;
  Repetition            := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('REPETITION').AsInteger;
  RepetitionBase        := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('REPETITIONBASE').AsString = 'Y';
  AssignedTo            := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('ASSIGNEDTO').AsString;
  AssignedToTeam        := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('ASSIGNEDTOTEAM').AsString;
  AssignedToName        := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('ASSIGNEDTONAME').AsString;
  StartedDate           := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('STARTED').AsDateTime;
  StartedBy             := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('STARTEDBY').AsString;
  StartedByName         := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('STARTEDBYNAME').AsString;
  CompletedDate         := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('COMPLETED').AsDateTime;
  CompletedBy           := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('COMPLETEDBY').AsString;
  CompletedByName       := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('COMPLETEDBYNAME').AsString;
  SkippedDate           := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SKIPPED').AsDateTime;
  SkippedBy             := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SKIPPEDBY').AsString;
  SkippedByName         := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SKIPPEDBYNAME').AsString;
  TaskDescription       := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('TASKDESCRIPTION').AsString;
  TaskNote              := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('TASKNOTE').AsString;
  StartWhen             := GetTaskStartsWhenFromCode(dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('STARTWHEN').AsString);
  StartRelated          := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('STARTWHENRELATED').AsInteger;

  CompleteWhen          := GetTaskCompletesWhenFromCode(dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('COMPLETEWHEN').AsString);
  CompleteRelated       := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('COMPLETEWHENRELATED').AsInteger;

  SkipWhen              := GetTaskSkipsWhenFromCode(dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SKIPWHEN').AsString);
  SkipRelated           := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SKIPWHENRELATED').AsInteger;

  DueDateLinkTo         := GetTaskDueDateLinkToFromCode(dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('LINKDATETO').AsString);
  DueDateLinkToRelated  := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('LINKDATETORELATED').AsInteger;
  DueDateLinkToDaysFrom := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('LINKDATEDAYSFROM').AsInteger;

  ScaleCostCode         := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SCALECOSTCODE').AsString;
  ShowFee               := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SHOWFEE').AsString = 'Y';

  DaysFrom              := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('DAYSFROM').AsInteger;
  CompleteDays          := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('COMPLETEDAYS').AsInteger;
  FCompleteByDate       := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('DATETOCOMPLETE').AsDateTime; // FCompleteByDate on purpose..
  HasDocuments          := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('HASDOCUMENTS').AsInteger > 0;
  NumberOfNotes         := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('HASNOTES').AsInteger;
  WorkFlowTypeCode      := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('WORKFLOWTYPECODE').AsString;
  Custom                := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('CUSTOM').AsString = 'Y';
  AssignTo              := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('ASSIGNTO').AsString;

  EMailOverDue          := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('EMAILOVERDUE').AsString;
  EMailOverDueName      := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('EMAILOVERDUENAME').AsString;
  EMailOverDueCode      := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('EMAILOVERDUECODE').AsString;

  Watcher               := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('WATCHER').AsString;
  WatcherName           := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('WATCHERNAME').AsString;
  WatcherCode           := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('WATCHERNAMECODE').AsString;
  WatchFor              := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('WATCHFOR').AsString;

  AssignedToChangedBy   := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('ASSIGNEDTOCHANGEDBY').AsString;
  AssignedToTeamChangedBy   := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('ASSIGNEDTOTEAMCHANGEDBY').AsString;
  DueDateChangedBy      := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('DUEDATECHANGEDBY').AsString;
  UndoBy                := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('UNDOBY').AsString;

  CriticalDate          := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('CRITICAL_DATE').AsString = 'Y';
  CriticalAlert         := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('CRITICAL_ALERT').AsString = 'Y';
  HasDataForm           := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('HASDATAFORM').AsInteger > 0;
  TaskHeading           := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SAMEDAY_DUE').AsString = 'Y';

  CriticalDateStr       := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('CRITICAL_DATE').AsString;
  CriticalAlertStr      := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('CRITICAL_ALERT').AsString;
  SameDayDue            := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SAMEDAY_DUE').AsString;

  SkipWhenRelated       := dmWorkflowDataModuleRun.qWorkflowTasks.FieldByName('SKIPWHENRELATED').AsInteger;
  FRecentNoteID     := -1;

  ResetChangedFlags();
end;

// return this task if its the root, or
// ask the parent for it..
function TWorkFlowTask.GetRootTask(): TWorkFlowTask;
begin
  if(not IsRootTask) then
    Result := ParentTask.RootTask
  else
    Result := Self;
end;

// start the task, and notify all other tasks
// that this task has started.
procedure TWorkFlowTask.StartTask(ADate: TDateTime);
var
   ASetDue0days: boolean;
   AIsLeaf: boolean;
begin
   ASetDue0days := False;
   if (not IsRootTask) and (not Started) and (not Skipped) then
   begin
      StartedDate   := ADate;
      StartedBy     := dmWorkflowDataModule.UserID;
      StartedByName := dmWorkFlowDataModule.UserName;

      ASetDue0days := ({(SystemString('WKFLOW_SET_DUE_0_DAYS') = 'Y') and }(not Self.TaskHeading)); //(AIsLeaf));//  (Self.ParentLineID > 0));

      if ((CompleteDays > 0) or CriticalDate or Self.TaskHeading) then  //ASetDue0days then
      begin
         FCompleteByDate := StartedDate + CompleteDays;
         if(DayOfTheWeek(FCompleteByDate) = 6) then
            FCompleteByDate := FCompleteByDate + 1;
         if(DayOfTheWeek(FCompleteByDate) = 7) then
            FCompleteByDate := FCompleteByDate + 1;
         FCompleteByDateChanged := True;
      end;

      UpdateDB();
      RootTask.TaskStarted(Self, ADate);

      if(FCompleteByDate <> 0) then
         RootTask.TaskDueDateChanged(Self,ADate,CompleteByDate);
   end;
end;

function TWorkFlowTask.TaskEquals(ATask: TWorkFlowTask): Boolean;
begin
  if(not Assigned(ATask)) then
    Result := False
  else
    Result := (TemplateLineID = ATask.TemplateLineID) and (Repetition = ATask.Repetition);
end;

// ATask has been completed, so see if we relate to it in any maner
// and if so act upon it. also tell children that atask has completed.
procedure TWorkFlowTask.TaskCompleted(ATask: TWorkFlowTask; ADate: TDateTime);
var
  LChild: TWorkFlowTask;
begin
  case StartWhen of
    tswSC: if(not Started) and (ATask = PrevTask) then
              StartTask(ADate);
    tswXC: if(not Started) and ATask.TaskEquals(StartRelatedTask){ (TaskEquals(ATask.TemplateLineID = StartRelated) } then
              StartTask(ADate);
  end;

  case CompleteWhen of
    tcwSC: if(Started) and (not Completed) and (not Skipped) and (ATask = PrevTask) then
              CompleteTask(ADate);
    tcwXC: if(Started) and (not Completed) and (not Skipped) and ATask.TaskEquals(CompleteRelatedTask) {(ATask.TemplateLineID = CompleteRelated)} then
              CompleteTask(ADate);
    tcwNC: if(Started) and (not Completed) and (not Skipped) and (ATask = NextTask) then
              CompleteTask(ADate);
  end;

  case SkipWhen of
    tkwSC: if(not Completed) and (not Skipped) and (ATask = PrevTask) then
              SkipTask(ADate);
    tkwXC: if(not Completed) and (not Skipped) and ATask.TaskEquals(SkipRelatedTask){  (ATask.TemplateLineID = CompleteRelated)} then
              SkipTask(ADate);
    tkwNC: if(not Completed) and (not Skipped) and (ATask = NextTask) then
              SkipTask(ADate);
  end;

   if((not Completed) and (not Skipped) and IsParent(ATask)) then
  begin
    if(Started) then
      CompleteTask(ADate)
    else
      SkipTask(ADate);
  end;

  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    LChild.TaskCompleted(ATask, ADate);
    LChild := LChild.NextTask;
  end;

  if((not Completed) and (ATask <> Self) and Assigned(FirstChildTask)) then
  begin
    if(AllChildrenComplete) then
      CompleteTask(ADate);
  end;
end;

// Atask has started so check to see if this task relates and if so act upon
// it, also notify child tasks that atask has started.
procedure TWorkFlowTask.TaskStarted(ATask: TWorkFlowTask; ADate: TDateTime);
var
  LChild: TWorkFlowTask;
begin
   case StartWhen of
      tswPS: if(not Started) and (ATask = ParentTask) then
               StartTask(ADate);
      tswSS: if(not Started) and (ATask = PrevTask) then
               StartTask(ADate);
      tswXS: if(not Started) and ATask.TaskEquals(StartRelatedTask) {(ATask.TemplateLineID = StartRelated)} then
               StartTask(ADate);
   end;

   case CompleteWhen of
      tcwXS: if(Started) and (not Completed) and (not Skipped) and ATask.TaskEquals(CompleteRelatedTask) {(ATask.TemplateLineID = CompleteRelated)} then
               CompleteTask(ADate);
      tcwNS: if(Started) and (not Completed) and (not Skipped) and (ATask = NextTask) then
               CompleteTask(ADate);
   end;

   case SkipWhen of
      tkwSS: if(not Completed) and (not Skipped) and (ATask = PrevTask) then
               SkipTask(ADate);
      tkwXS: if(not Completed) and (not Skipped) and ATask.TaskEquals(SkipRelatedTask){(ATask.TemplateLineID = CompleteRelated)} then
               SkipTask(ADate);
      tkwNS: if(not Completed) and (not Skipped) and (ATask = NextTask) then
               SkipTask(ADate);
   end;

   if(not Started) and (IsChild(ATask)) then
      StartTask(ADate);

   LChild := FirstChildTask;
   while(Assigned(LChild)) do
   begin
      LChild.TaskStarted(ATask,ADate);
      LChild := LChild.NextTask;
   end;
end;

// returns true if all children and their children
// are complete or skipped
function TWorkFlowTask.GetAllChildrenComplete: Boolean;
var
  LChild: TWorkFlowTask;
begin
  Result := True;
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    if(not LChild.Completed) and (not LChild.Skipped) then
      Result := False
    else
      Result := LChild.AllChildrenComplete;
    if(not Result) then
      break;
    LChild := LChild.NextTask;
  end;
end;

// skip this task, notify all other tasks this has happened.
procedure TWorkFlowTask.SkipTask(ADate: TDateTime);
begin
  if(not IsRootTask) and (not Skipped) then
  begin
    SkippedDate   := ADate;
    SkippedBy     := dmWorkFlowDataModule.UserID;
    SkippedByName := dmWorkFlowDataModule.UserName;
    UpdateDB();
    RootTask.TaskSkipped(Self, ADate);
  end;
end;

// property access, true if task completed.
function TWorkFlowTask.GetCompleted: Boolean;
begin
  Result := CompletedDate <> 0;
end;

// property access, true if task skipped.
function TWorkFlowTask.GetSkipped: Boolean;
begin
  Result := SkippedDate <> 0;
end;

// property access, true if task started.
function TWorkFlowTask.GetStarted: Boolean;
begin
  Result := StartedDate <> 0;
end;

// ATask has been skipped so see if this task relates to it and if so act upon
// it, also tell children about atask.
procedure TWorkFlowTask.TaskSkipped(ATask: TWorkFlowTask; ADate: TDateTime);
var
  LChild: TWorkFlowTask;
begin
  case StartWhen of
    tswSK: if(not Completed) and (not Skipped) and (ATask = PrevTask) then
              StartTask(ADate);
    tswXK: if(not Completed) and (not Skipped) and ATask.TaskEquals(StartRelatedTask){(ATask.TemplateLineID = StartRelated)} then
              StartTask(ADate);
  end;

  case CompleteWhen of
    tcwSK: if(Started) and (not Completed) and (not Skipped) and (ATask = PrevTask) then
              CompleteTask(ADate);
    tcwXK: if(Started) and (not Completed) and (not Skipped) and ATask.TaskEquals(CompleteRelatedTask){(ATask.TemplateLineID = CompleteRelated)} then
              CompleteTask(ADate);
    tcwNK: if(Started) and (not Completed) and (not Skipped) and (ATask = NextTask) then
              CompleteTask(ADate);
  end;

  case SkipWhen of
    tkwSK: if(not Completed) and (not Skipped) and (ATask = PrevTask) then
              SkipTask(ADate);
    tkwXK: if(not Completed) and (not Skipped) and ATask.TaskEquals(SkipRelatedTask){(ATask.TemplateLineID = CompleteRelated)} then
              SkipTask(ADate);
    tkwNK: if(not Completed) and (not Skipped) and (ATask = NextTask) then
              SkipTask(ADate);
  end;

  if(not Started) and (IsChild(ATask)) then
    StartTask(ADate);

  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    LChild.TaskSkipped(ATask, ADate);
    LChild := LChild.NextTask;
  end;

  if((not Skipped) and IsChildOf(ATask)) then
    SkipTask(ADate);


  if((not Completed) and (not Skipped) and (ATask <> Self) and Assigned(FirstChildTask)) then
  begin
    if(AllChildrenSkipped) then
      SkipTask(ADate);
    if(AllChildrenComplete) then
      CompleteTask(ADate);
  end;
end;

// return true if ATask is a parent somewhere down the tree
// from this task
function TWorkFlowTask.IsParent(ATask: TWorkFlowTask): Boolean;
begin
  Result := True;
  if(ATask <> ParentTask) then
  begin
    if(not IsRootTask) then
      Result := ParentTask.IsParent(ATask)
    else
      Result := False;
  end;
end;

// return the nice big detailed hint.
function TWorkFlowTask.GetHoverText: String;
var
  LLines: TStringList;

  function BuildStartWhen(): String;
  begin
    Result := C_DESC_DEFAULT;
    if (StartWhen in TTaskStartWhenStart) or
       (StartWhen in TTaskStartWhenComplete) or
       (StartWhen in TTaskStartWhenSkipped) then
      Result := TTaskStartWhenDescription[StartWhen]

{    else if (StartWhen in TTaskStartWhenDaysFromStart) or
            (StartWhen in TTaskStartWhenDaysFromComplete) then
      Result := IntToStr(DaysFrom) + ' ' + TTaskStartWhenDescription[StartWhen]
}
    else if (StartWhen in TTaskStartWhenDaysOverDue) then
      Result := TTaskStartWhenDescription[StartWhen] + ' ' + IntToStr(DaysFrom) + ' Days';

    if(StartWhen in TTaskStartWhenRelated) then
      Result := StringReplace(Result,'Related','''' +
        StartRelatedTask.Sequence + ' - ' + StartRelatedTask.TaskDescription + '''',[rfReplaceAll])
  end;

  function BuildCompleteWhen(): String;
  begin
    Result := TTaskCompleteWhenDescription[CompleteWhen];
    if(CompleteWhen in TTaskCompleteWhenRelated) then
      Result := StringReplace(Result,'Related','''' +
        CompleteRelatedTask.Sequence + ' - ' + CompleteRelatedTask.TaskDescription + '''',[rfReplaceAll])
  end;

  function BuildSkipWhen(): String;
  begin
    Result := TTaskSkipWhenDescription[SkipWhen];
    if(SkipWhen in TTaskSkipWhenRelated) then
      Result := StringReplace(Result,'Related','''' +
        SkipRelatedTask.Sequence + ' - ' + SkipRelatedTask.TaskDescription + '''',[rfReplaceAll])
  end;

  function BuildDateLink(): String;
  begin
    Result := IntToStr(DueDateLinkToDaysFrom) + ' Days from ' + TTaskDueDateLinkToDescription[DueDateLinkTo];

    if (DueDateLinkTo = dltR) then
      Result := StringReplace(Result,'Related','''' + DueDateLinkToRelatedTask.Sequence + ' - ' + DueDateLinkToRelatedTask.TaskDescription + '''',[rfReplaceAll])
  end;

begin
  LLines := TStringList.Create();
  try
    LLines.Add('Task: ' + Sequence + ' - ' + TaskDescription);
    if(TaskNote <> '') then
      LLines.Add('Note: ' + TaskNote);
    if(Started) then
    begin
      LLines.Add('Started: ' + DateTimeToStr(StartedDate));
      LLines.Add('Started By: ' + StartedByName);
    end;
    if(Completed) then
    begin
      LLines.Add('Completed: ' + DateTimeToStr(CompletedDate));
      LLines.Add('Completed By: ' + CompletedByName);
    end;
    if(Skipped) then
    begin
      LLines.Add('Skipped: ' + DateTimeToStr(SkippedDate));
      LLines.Add('Skipped By: ' + SkippedByName);
    end else if(not Started) then
      LLines.Add('Not Started');

    if(CompleteByDate <> 0) then
      LLines.Add('Complete By: ' + DateToStr(CompleteByDate));

    if(StartWhen <> tswDEF) then
      LLines.Add('Task Starts When: ' + BuildStartWhen());
    if(CompleteWhen <> tcwDEF) then
      LLines.Add('Task Completes When: ' + BuildCompleteWhen());
    if(SkipWhen <> tkwDEF) then
      LLines.Add('Task Skips When: ' + BuildSkipWhen());
    if(DueDateLinkTo > dltDEF) then
      LLines.Add('Due Date Links To: ' + BuildDateLink());

    if(AssignedTo <> '') then
      LLines.Add('Assigned To: ' + AssignedToName);

    if(AssignedToTeam <> '') then
      LLines.Add('Assigned Team: ' + AssignedToTeam);

    if(dmWorkFlowDataModule.WorkFlowEMailInstalled) then
    begin
      if(EMailOverDue <> '') then
        LLines.Add('E-Mail On Overdue: ' + EMailOverDueName);
      if(Watcher <> '') then
        LLines.Add('E-Mail Watcher: ' + WatcherName);
    end;
    
    Result := LLines.Text;
  finally
    FreeAndNil(LLines);
  end;
end;

// update the database with the changed details..
procedure TWorkFlowTask.UpdateDB();
var
  LFields: TStringList;
begin
  LFields := TStringList.Create();
  try
    dmWorkFlowDataModule.qAnyQuery.SQL.Clear();
    dmWorkFlowDataModule.qAnyQuery.SQL.Add('UPDATE workflowtasks SET');

    if(FSeqNoChanged) then
      LFields.Add('seqno    = :seqno');

    if(FAssignedToChanged) then
    begin
      LFields.Add('assignedto      = :assignedto');
    end;

    if(FAssignedToTeamChanged) then
    begin
      LFields.Add('assignedtoteam  = :assignedtoteam');
    end;

    if(FStartedDateChanged) then
      LFields.Add('started       = :started');

    if(FStartedByChanged) then
      LFields.Add('startedby     = :startedby');

    if(FCompletedDateChanged) then
      LFields.Add('completed     = :completed');

    if(FCompletedByChanged) then
      LFields.Add('completedby   = :completedby');

    if(FSkippedDateChanged) then
      LFields.Add('skipped       = :skipped');

    if(FSkippedByChanged) then
      LFields.Add('skippedby     = :skippedby');

    if(FCompleteByDateChanged) then
      LFields.Add('datetocomplete = :datetocomplete');

    if(FAssignedToChangedByChanged) then
      LFields.Add('assignedtochangedby = :assignedtochangedby');

    if(FAssignedToTeamChangedByChanged) then
      LFields.Add('assignedtoteamchangedby = :assignedtoteamchangedby');

    if(FDueDateChangedByChanged) then
      LFields.Add('duedatechangedby = :duedatechangedby');

    if(FUndoByChanged) then
      LFields.Add('undoby = :undoby');

    if(LFields.Count > 0) then
    begin
      dmWorkFlowDataModule.qAnyQuery.SQL.Add(StringReplace(LFields.CommaText,'"','',[rfReplaceAll]));
      dmWorkFlowDataModule.qAnyQuery.SQL.Add('WHERE workflowtask = :workflowtask');

      dmWorkFlowDataModule.qAnyQuery.ParamByName('workflowtask').AsInteger := WorkFlowTask;

      if(FSeqNoChanged) then
        dmWorkFlowDataModule.qAnyQuery.ParamByName('seqno').AsInteger := SeqNo;

      if(FAssignedToChanged) then
      begin
        dmWorkFlowDataModule.qAnyQuery.ParamByName('assignedto').AsString := AssignedTo;
      end;

      if(FAssignedToTeamChanged) then
      begin
        dmWorkFlowDataModule.qAnyQuery.ParamByName('assignedtoteam').AsString := AssignedToTeam;
      end;

      if(FStartedDateChanged) then
      begin
        if(StartedDate <> 0) then
          dmWorkFlowDataModule.qAnyQuery.ParamByName('started').AsDateTime := StartedDate
        else
          dmWorkFlowDataModule.qAnyQuery.ParamByName('started').Clear();
      end;

      if(FStartedByChanged) then
        dmWorkFlowDataModule.qAnyQuery.ParamByName('startedby').AsString := StartedBy;

      if(FCompletedDateChanged) then
      begin
        if(CompletedDate <> 0) then
          dmWorkFlowDataModule.qAnyQuery.ParamByName('completed').AsDateTime := CompletedDate
        else
          dmWorkFlowDataModule.qAnyQuery.ParamByName('completed').Clear();
      end;

      if(FCompletedByChanged) then
        dmWorkFlowDataModule.qAnyQuery.ParamByName('completedby').AsString := CompletedBy;

      if(FSkippedDateChanged) then
      begin
        if(SkippedDate <> 0) then
          dmWorkFlowDataModule.qAnyQuery.ParamByName('skipped').AsDateTime := SkippedDate
        else
          dmWorkFlowDataModule.qAnyQuery.ParamByName('skipped').Clear();
      end;

      if(FSkippedByChanged) then
        dmWorkFlowDataModule.qAnyQuery.ParamByName('skippedby').AsString := SkippedBy;

      if(FCompleteByDateChanged) then
      begin
        if(CompleteByDate <> 0) then
          dmWorkFlowDataModule.qAnyQuery.ParamByName('datetocomplete').AsDateTime := CompleteByDate
        else
          dmWorkFlowDataModule.qAnyQuery.ParamByName('datetocomplete').Clear();
      end;


      if(FAssignedToChangedByChanged) then
        dmWorkFlowDataModule.qAnyQuery.ParamByName('assignedtochangedby').AsString := AssignedToChangedBy;

      if(FAssignedToTeamChangedByChanged) then
        dmWorkFlowDataModule.qAnyQuery.ParamByName('assignedtoteamchangedby').AsString := AssignedToTeamChangedBy;

      if(FDueDateChangedByChanged) then
        dmWorkFlowDataModule.qAnyQuery.ParamByName('duedatechangedby').AsString := DueDateChangedBy;

      if(FUndoByChanged) then
        dmWorkFlowDataModule.qAnyQuery.ParamByName('undoby').AsString := UndoBy;

      dmWorkFlowDataModule.qAnyQuery.ExecSQL();
    end;

    ResetChangedFlags();
  finally
    FreeAndNil(LFields);
  end;
end;

// returns true if this is the root task.
function TWorkFlowTask.GetIsRootTask: Boolean;
begin
  Result := not Assigned(ParentTask);
end;

// if the given lineid is for this task, return it, otherwise
// ask children to check..
function TWorkFlowTask.GetTaskOfLineID(ALineID: Integer; ARepetition: Integer): TWorkFlowTask;
var
  LChild: TWorkFlowTask;
begin
  Result := Nil;
  if(ALineID = TemplateLineID) and (ARepetition = Repetition) then
  begin
    Result := Self;
    Exit;
  end else
  begin
    LChild := FirstChildTask;
    while(Assigned(LChild) and (not Assigned(Result))) do
    begin
      Result := LChild.GetTaskOfLineID(ALineID, ARepetition);
      LChild := LChild.NextTask;
    end;
  end;
end;

// return the task that is complete related..
function TWorkFlowTask.GetCompleteRelatedTask: TWorkFlowTask;
begin
  Result := RootTask.GetTaskOfLineID(CompleteRelated, Repetition);
end;

// return the task that is skip related
function TWorkFlowTask.GetSkipRelatedTask: TWorkFlowTask;
begin
  Result := RootTask.GetTaskOfLineID(SkipRelated, Repetition);
end;

// return the task that is start related
function TWorkFlowTask.GetStartRelatedTask: TWorkFlowTask;
begin
  Result := RootTask.GetTaskOfLineID(StartRelated, Repetition);
end;

// change the date we are viewing.
procedure TWorkFlowTask.SetViewDate(ADate: TDate);
var
  LChild: TWorkFlowTask;
begin
  FViewDate := ADate;
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    LChild.SetViewDate(ADate);
    LChild := LChild.NextTask;
  end;
end;

// change the date the task is to complete by.
procedure TWorkFlowTask.SetCompleteByDate(const Value: TDateTime);
begin
  if(FCompleteByDate <> Value) then
  begin
    FCompleteByDate := Value;
    FCompleteByDateChanged := True;
    DueDateChangedBy := dmWorkFlowDataModule.UserID;
    UpdateDB();
    RootTask.TaskDueDateChanged(Self,Now(),FCompleteByDate);
  end;
end;

// property access, change who the task is assigned to.
procedure TWorkFlowTask.SetAssignedTo(const Value: String);
begin
  if(FAssignedTo <> Value) then
  begin
    FAssignedTo := Value;
    FAssignedToChanged := True;
    AssignedToChangedBy := dmWorkFlowDataModule.UserID;
  end;
end;


// property access, change which team the task is assigned to.
procedure TWorkFlowTask.SetAssignedToTeam(const Value: String);
begin
  if(FAssignedToTeam <> Value) then
  begin
    FAssignedToTeam := Value;
    FAssignedToTeamChanged := True;
    AssignedToTeamChangedBy := dmWorkFlowDataModule.UserID;
  end;
end;


// property access, change who competed the task.
procedure TWorkFlowTask.SetCompletedBy(const Value: String);
begin
  if(FCompletedBy <> Value) then
  begin
    FCompletedBy := Value;
    FCompletedByChanged := True;
  end;
end;

// property access, set the completed date.
procedure TWorkFlowTask.SetCompletedDate(const Value: TDateTime);
begin
  if(FCompletedDate <> Value) then
  begin
    FCompletedDate := Value;
    FCompletedDateChanged := True;
  end;
end;

// property access, set who skipped the task.
procedure TWorkFlowTask.SetSkippedBy(const Value: String);
begin
  if(FSkippedBy <> Value) then
  begin
    FSkippedBy := Value;
    FSkippedByChanged := True;
  end;
end;

// property access, set the skipped date.
procedure TWorkFlowTask.SetSkippedDate(const Value: TDateTime);
begin
  if(FSkippedDate <> Value) then
  begin
    FSkippedDate := Value;
    FSkippedDateChanged := True;
  end;
end;

// property access, set who started the task.
procedure TWorkFlowTask.SetStartedBy(const Value: String);
begin
  if(FStartedBy <> Value) then
  begin
    FStartedBy := Value;
    FStartedByChanged := True;
  end;
end;

// property access, set the started date
procedure TWorkFlowTask.SetStartedDate(const Value: TDateTime);
begin
  if(FStartedDate <> Value) then
  begin
    FStartedDate := Value;
    FStartedDateChanged := True;
  end;
end;

// undo the task and its children.
procedure TWorkFlowTask.UndoTask;
var
  LChild: TWorkFlowTask;
begin
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    LChild.UndoTask();
    LChild := LChild.NextTask;
  end;

  StartedDate   := 0;
  CompletedDate := 0;
  SkippedDate   := 0;
  StartedBy     := '';
  CompletedBy   := '';
  SkippedBy     := '';
  StartedByName   := '';
  CompletedByName := '';
  SkippedByName   := '';

  FCompleteByDate := 0;
  FCompleteByDateChanged := True;
  DueDateChangedBy := '';

  UndoBy := dmWorkFlowDataModule.UserID;

  UpdateDB();
end;

procedure TWorkFlowTask.ResetChangedFlags();
begin
  FAssignedToChanged          := False;
  FAssignedToTeamChanged      := False;
  FStartedDateChanged         := False;
  FStartedByChanged           := False;
  FCompletedDateChanged       := False;
  FCompletedByChanged         := False;
  FSkippedDateChanged         := False;
  FSkippedByChanged           := False;
  FCompleteWhenChanged        := False;
  FCompleteByDateChanged      := False;
  FSeqNoChanged               := False;
  FAssignedToChangedByChanged := False;
  FAssignedToTeamChangedByChanged := False;
  FDueDateChangedByChanged    := False;
  FUndoByChanged              := False;
end;

// return true if all children are skipped.
function TWorkFlowTask.GetAllChildrenSkipped: Boolean;
var
  LChild: TWorkFlowTask;
begin
  Result := True;
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    if(not LChild.Skipped) then
      Result := False
    else
      Result := LChild.AllChildrenSkipped;
    if(not Result) then
      break;
    LChild := LChild.NextTask;
  end;
end;

function TWorkFlowTask.GetHasOverdueChild: Boolean;
var
  LChild: TWorkFlowTask;
begin
  Result := False;
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    if(LChild.OverDueDays > 0) then
      Result := True
    else
      Result := LChild.HasOverdueChild;
    if(Result) then
      break;
    LChild := LChild.NextTask;
  end;
end;

function TWorkFlowTask.GetMostRecentNoteHint: String;
begin
  if(FRecentNoteID = -1) then
  begin
    dmWorkflowDataModuleRun.qLatestTaskNote.ParamByName('workflowtask').AsInteger := WorkFlowTask;
    dmWorkflowDataModuleRun.qLatestTaskNote.Open();
    try
      if(not dmWorkflowDataModuleRun.qLatestTaskNote.Eof) then
      begin
        FRecentNoteID        := dmWorkflowDataModuleRun.qLatestTaskNoteNOTEID.AsInteger;
        FRecentNote          := dmWorkflowDataModuleRun.qLatestTaskNoteNOTE.AsString;
        FRecentNoteCreatedBy := dmWorkflowDataModuleRun.qLatestTaskNoteCREATEDBYNAME.AsString;
        FRecentNoteCreated   := dmWorkflowDataModuleRun.qLatestTaskNoteCREATED.AsDateTime;
      end else
        FRecentNoteID := -2;
    finally
      dmWorkflowDataModuleRun.qLatestTaskNote.Close();
    end;
  end;
  if(FRecentNoteID > 0) then
  begin
    Result := 'Note:'#13#10 +
              'Created: ' + DateTimeToStr(FRecentNoteCreated) + #13#10 +
              'Created By: ' + FRecentNoteCreatedBy + #13#10#13#10 +
              FRecentNote  + #13#10#13#10 +
              'Number of Notes: ' + IntToStr(NumberOfNotes);
  end;
end;

procedure TWorkFlowTask.SetNumberOfNotes(const Value: Integer);
begin
  FNumberOfNotes := Value;
  FRecentNoteID := -1;
end;

function TWorkFlowTask.GetTaskOfWorkFlowTask(AWorkFlowTask: Integer): TWorkFlowTask;
var
  LChild: TWorkFlowTask;
begin
  Result := Nil;
  if(AWorkFlowTask = WorkFlowTask) then
  begin
    Result := Self;
    Exit;
  end else
  begin
    LChild := FirstChildTask;
    while(Assigned(LChild) and (not Assigned(Result))) do
    begin
      Result := LChild.GetTaskOfWorkFlowTask(AWorkFlowTask);
      LChild := LChild.NextTask;
    end;
  end;
end;

function TWorkFlowTask.AddTask(AOwner: TForm): TWorkFlowTask;
var
  LCriticalDate,
  LCriticalAlert: string;
  LNewSeqNo: Integer;
  LChild: TWorkFlowTask;
  function NextSeq(): Integer;
  var
    LChild: TWorkFlowTask;
  begin
    Result := 0;
    LChild := FirstChildTask;
    while(Assigned(LChild)) do
    begin
      if(not LChild.RepetitionBase) then
        Inc(Result);
      LChild := LChild.NextTask;
    end;
  end;

begin
  Result := nil;
  LChild := nil;
  fmWorkFlowNewTaskDialog := TfmWorkFlowNewTaskDialog.Create(AOwner);
  try
    LNewSeqNo := NextSeq + 1;

    if(Sequence <> '') then
    begin
      fmWorkFlowNewTaskDialog.TaskSequenceLabel := Sequence + '.' + IntToStr(LNewSeqNo);
      fmWorkFlowNewTaskDialog.SelectedTaskLabel := Sequence + ' - ' + TaskDescription;
    end else
    begin
      fmWorkFlowNewTaskDialog.TaskSequenceLabel := IntToStr(LNewSeqNo);
      fmWorkFlowNewTaskDialog.SelectedTaskLabel := 'Hidden Root Task';
    end;
    fmWorkFlowNewTaskDialog.NMatter := NMatter;

    if(fmWorkFlowNewTaskDialog.ShowModal() <> mrOk) then
      Exit;

    // save..
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('templatelineid').Clear();
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('nmatter').AsInteger         := NMatter;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('workflowtypecode').AsString := WorkFlowTypeCode;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('repetition').AsInteger      := Repetition;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('seqno').AsInteger           := LNewSeqNo;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('parentlineid').AsInteger    := TemplateLineID;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('taskdescription').AsString  := fmWorkFlowNewTaskDialog.TaskDescription;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('assignto').AsString         := fmWorkFlowNewTaskDialog.AssignTo[1];
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('assignedto').AsString       := fmWorkFlowNewTaskDialog.AssignedTo;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('assignedtoteam').AsString   := fmWorkFlowNewTaskDialog.AssignedToTeam;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('repetitionbase').AsString   := 'N';

    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('startwhen').AsString        := 'DEF';
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('linkdateto').AsString       := 'DEF';
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('skipwhen').AsString         := 'DEF';
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('completewhen').AsString     := 'DEF';

    if(fmWorkFlowNewTaskDialog.StartTask) then
    begin
      if(fmWorkFlowNewTaskDialog.NoCompletionDate) then
        dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('datetocomplete').Clear()
      else
        dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('datetocomplete').AsDate := Trunc(fmWorkFlowNewTaskDialog.CompleteByDate);

      dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('completedays').Clear();

      dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('started').AsDateTime      := Now();
      dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('startedby').AsString      := dmWorkFlowDataModule.UserID;
    end else
    begin
      dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('completedays').AsInteger  := fmWorkFlowNewTaskDialog.CompleteDays;
      dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('datetocomplete').Clear();
      dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('started').Clear();
      dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('startedby').Clear();
    end;

    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('scalecostcode').Clear();
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('showfee').AsString := 'N';
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('emailoverdue').Clear();
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('emailoverduename').Clear();
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('watcher').Clear();
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('watchername').Clear();
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('watchfor').AsString := 'NNNNNNN';

    LCriticalDate := 'N';
    if fmWorkFlowNewTaskDialog.ckCriticalDate.Checked = True then LCriticalDate := 'Y';
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('critical_date').AsString := LCriticalDate;
    LCriticalAlert := 'N';
    if fmWorkFlowNewTaskDialog.ckCriticalAlert.checked = True then LCriticalAlert := 'Y';
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('critical_Alert').AsString := LCriticalAlert;

    dmWorkflowDataModuleRun.qCreateCustomTask.ExecSQL();

    dmWorkflowDataModuleRun.qWorkflowTasks2.ParamByName('parentlineid').AsInteger := TemplateLineID;
    dmWorkflowDataModuleRun.qWorkflowTasks2.ParamByName('parentrepetition').AsInteger := Repetition;
    dmWorkflowDataModuleRun.qWorkflowTasks2.ParamByName('nmatter').AsInteger := NMatter;

    dmWorkflowDataModuleRun.qWorkflowTasks2.Open();
    try
      if(dmWorkflowDataModuleRun.qWorkflowTasks2.Locate('seqno;repetition',VarArrayOf([LNewSeqNo,Repetition]),[])) then
      begin
        if(not dmWorkflowDataModuleRun.qWorkflowTasks2.Eof) then
        begin
          LChild := TWorkFlowTask.Create(Self);
          LChild.PrevTask := LastChildTask;
          if(Assigned(LastChildTask)) then
            LastChildTask.NextTask := LChild;
          if(not Assigned(FirstChildTask)) then
            FirstChildTask := LChild;
          LastChildTask := LChild;

          LChild.LoadFromDB2();
          LChild.FViewDate := FViewDate;
        end;
      end;

    finally
      dmWorkflowDataModuleRun.qWorkflowTasks2.Close();
    end;

    Result := LChild;

  finally
    FreeAndNil(fmWorkFlowNewTaskDialog);
  end;
end;

function TWorkFlowTask.DeleteTask(ATask: TWorkFlowTask): Boolean;
var
  LPrevTask, LNextTask: TWorkFlowTask;
begin
  Result := False;
  if(ATask.ParentTask <> Self) then
    Exit;

  LNextTask := ATask.LastChildTask;
  while(Assigned(LNextTask)) do
  begin
    ATask.DeleteTask(LNextTask);
    LNextTask := ATask.LastChildTask;
  end;

  LPrevTask := ATask.PrevTask;
  LNextTask := ATask.NextTask;

  if(Assigned(LPrevTask)) then
    LPrevTask.NextTask := LNextTask;

  if(Assigned(LNextTask)) then
    LNextTask.PrevTask := LPrevTask;

  if(LastChildTask = ATask) then
    LastChildTask := LPrevTask;
  if(FirstChildTask = ATask) then
    FirstChildTask := LNextTask;

  // database.
  dmWorkflowDataModuleRun.qDeleteCustomTask.ParamByName('workflowtask').AsInteger := ATask.WorkFlowTask;
  dmWorkflowDataModuleRun.qDeleteCustomTask.ExecSQL();

  ATask.Free();

  ReSequenceChildren();

  Result := True;
end;

procedure TWorkFlowTask.ReSequenceChildren;
var
  LTask: TWorkFlowTask;
  LSeq: Integer;
begin
  LSeq := 0;
  LTask := FirstChildTask;
  while(Assigned(LTask)) do
  begin
    if(LTask.Repetition = 0) then
      Inc(LSeq);
    LTask.SeqNo := LSeq;
    LTask.UpdateDB();
    LTask := LTask.NextTask;
  end;
end;

procedure TWorkFlowTask.SetSeqNo(const Value: Integer);
begin
  if(FSeqNo <> Value) then
  begin
    FSeqNo := Value;
    FSeqNoChanged := True;
  end;
end;

function TWorkFlowTask.RepeatTask(ATree: TVirtualStringTree; AParentTreeNode: PVirtualNode; ANewParent: TWorkFlowTask): TWorkFlowTask;
var
  LChild, LNewTask: TWorkFlowTask;
  LRep: Integer;
  LNode: PVirtualNode;
  LData: PTaskData;
begin
  // create copy of this task and its children in the database.
   Result := nil;

   dmWorkFlowDataModule.qAnyQuery.SQL.Text := 'select max(repetition) + 1 as rep from workflowtasks where nmatter = :nmatter and workflowtypecode = :workflowtypecode and templatelineid = :templatelineid';
   dmWorkFlowDataModule.qAnyQuery.ParamByName('workflowtypecode').AsString := WorkFlowTypeCode;
   dmWorkFlowDataModule.qAnyQuery.ParamByName('templatelineid').AsInteger  := TemplateLineID;
   dmWorkFlowDataModule.qAnyQuery.ParamByName('nmatter').AsInteger  := NMatter;
   dmWorkFlowDataModule.qAnyQuery.Open();
   try
      LRep := dmWorkFlowDataModule.qAnyQuery.FieldByName('rep').AsInteger;
   finally
      dmWorkFlowDataModule.qAnyQuery.Close();
   end;


   // save..
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('nmatter').AsInteger             := NMatter;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('workflowtypecode').AsString     := WorkFlowTypeCode;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('repetition').AsInteger          := LRep;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('templatelineid').AsInteger      := TemplateLineID;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('seqno').AsInteger               := SeqNo;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('parentlineid').AsInteger        := ParentTask.TemplateLineID;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('taskdescription').AsString      := TaskDescription;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('assignto').AsString             := AssignTo;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('assignedto').AsString           := AssignedTo;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('assignedtoteam').AsString       := AssignedToTeam;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('datetocomplete').Clear();
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('completedays').AsInteger        := CompleteDays;

// following columns added by AES 15/06/2010  need additional info when copying task.
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('skipwhen').AsString             := TTaskSkipWhenCode[SkipWhen];
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('skipwhenrelated').AsInteger     := SkipWhenRelated;

   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('linkdateto').AsString           := TTaskDueDateLinkToCode[DueDateLinkTo];
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('linkdatetorelated').AsInteger   := DueDateLinkToRelated;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('linkdatedaysfrom').AsInteger    := DueDateLinkToDaysFrom;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('completewhen').AsString         := TTaskCompleteWhenCode[CompleteWhen];
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('completewhenrelated').AsInteger := CompleteRelated;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('startwhen').AsString            := TTaskStartWhenCode[StartWhen];
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('daysfrom').AsInteger            := DaysFrom;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('startwhenrelated').AsInteger    := StartRelated;

   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('critical_alert').AsString       := CriticalAlertStr;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('critical_date').AsString        := CriticalDateStr;
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('sameday_due').AsString          := SameDayDue;
// end of columns added
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('started').Clear();
   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('startedby').Clear();

   if(ANewParent.Repetition <> LRep) then
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('repetitionbase').AsString := 'Y'
   else
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('repetitionbase').AsString := 'N';

   if(ScaleCostCode = '') then
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('scalecostcode').Clear()
   else
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('scalecostcode').AsString  := ScaleCostCode;

   if(ShowFee) then
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('showfee').AsString := 'Y'
   else
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('showfee').AsString := 'N';


   if(EMailOverDue = '') then
   begin
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('emailoverdue').Clear();
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('emailoverduename').Clear();
   end else
   begin
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('emailoverdue').AsString  := EMailOverDue;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('emailoverduename').AsString  := EMailOverDueCode;
   end;

   if(Watcher = '') then
   begin
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('watcher').Clear();
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('watchername').Clear();
   end else
   begin
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('watcher').AsString  := Watcher;
    dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('watchername').AsString  := WatcherCode;
   end;

   dmWorkflowDataModuleRun.qCreateCustomTask.ParamByName('watchfor').AsString  := WatchFor;

   dmWorkflowDataModuleRun.qCreateCustomTask.ExecSQL();

   dmWorkflowDataModuleRun.qWorkflowTasks2.ParamByName('nmatter').AsInteger := NMatter;
   dmWorkflowDataModuleRun.qWorkflowTasks2.ParamByName('parentlineid').AsInteger := ParentTask.TemplateLineID;
   dmWorkflowDataModuleRun.qWorkflowTasks2.ParamByName('parentrepetition').AsInteger := ParentTask.Repetition;

   dmWorkflowDataModuleRun.qWorkflowTasks2.Open();
   try
    if(dmWorkflowDataModuleRun.qWorkflowTasks2.Locate('seqno;repetition',VarArrayOf([SeqNo,LRep]),[])) then
    begin
      if(not dmWorkflowDataModuleRun.qWorkflowTasks2.Eof) then
      begin
        LNewTask := TWorkFlowTask.Create(ParentTask);
        LNewTask.PrevTask := ParentTask.LastChildTask;
        if(Assigned(ParentTask.LastChildTask)) then
          ParentTask.LastChildTask.NextTask := LNewTask;
        if(not Assigned(ParentTask.FirstChildTask)) then
          ParentTask.FirstChildTask := LNewTask;
        ParentTask.LastChildTask := LNewTask;

        LNewTask.LoadFromDB2();

        LNode := ATree.AddChild(AParentTreeNode);
        LData := ATree.GetNodeData(LNode);
        LData.Task := LNewTask;

      end else
        Exit;
    end else
      Exit;
   finally
    dmWorkflowDataModuleRun.qWorkflowTasks2.Close();
   end;

   // now each child is duplicated;
   LChild := FirstChildTask;
   while(Assigned(LChild)) do
   begin
    if(LChild.Repetition = Repetition) then
      LChild.RepeatTask(ATree, LNode, LNewTask);
    LChild := LChild.NextTask;
   end;
   Result := LNewTask;
end;

procedure TWorkFlowTask.AddToTree(ATree: TVirtualStringTree;
  AParentTreeNode: PVirtualNode; ASelectedNode: Integer; AExpandedNodes: array of Integer);
var
  LData: PTaskData;
  LNode: PVirtualNode;
  LChild: TWorkFlowTask;
  i: Integer;
begin
  if(IsRootTask) then
  begin
    LNode := nil;
  end else
  begin
    LNode := ATree.AddChild(AParentTreeNode);
    LData := ATree.GetNodeData(LNode);
    LData.Task := Self;
  end;

  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    LChild.AddToTree(ATree, LNode, ASelectedNode, AExpandedNodes);
    LChild := LChild.NextTask;
  end;

  if(not IsRootTask) then
  begin
    if(TemplateLineID = ASelectedNode) then
    begin
      ATree.Selected[LNode] := True;
      Atree.FocusedNode := LNode;
    end;

    // restore expanded and selected nodes.
    for i := 0 to Length(AExpandedNodes) - 1 do
    begin
      if(TemplateLineID = AExpandedNodes[i]) then
      begin
        ATree.Expanded[LNode] := True;
        Break;
      end;
    end;
  end;
end;

procedure TWorkFlowTask.LoadFromDB2;
begin
  WorkFlowTask          := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('WORKFLOWTASK').AsInteger;
  NMatter               := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('NMATTER').AsInteger;
  SeqNo                 := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('SEQNO').AsInteger;
  TemplateLineID        := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('TEMPLATELINEID').AsInteger;
  Repetition            := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('REPETITION').AsInteger;
  RepetitionBase        := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('REPETITIONBASE').AsString = 'Y';
  AssignedTo            := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('ASSIGNEDTO').AsString;
  AssignedToTeam        := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('ASSIGNEDTOTEAM').AsString;
  AssignedToName        := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('ASSIGNEDTONAME').AsString;
  StartedDate           := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('STARTED').AsDateTime;
  StartedBy             := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('STARTEDBY').AsString;
  StartedByName         := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('STARTEDBYNAME').AsString;
  CompletedDate         := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('COMPLETED').AsDateTime;
  CompletedBy           := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('COMPLETEDBY').AsString;
  CompletedByName       := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('COMPLETEDBYNAME').AsString;
  SkippedDate           := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('SKIPPED').AsDateTime;
  SkippedBy             := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('SKIPPEDBY').AsString;
  SkippedByName         := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('SKIPPEDBYNAME').AsString;
  TaskDescription       := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('TASKDESCRIPTION').AsString;
  TaskNote              := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('TASKNOTE').AsString;
  StartWhen             := GetTaskStartsWhenFromCode(dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('STARTWHEN').AsString);
  StartRelated          := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('STARTWHENRELATED').AsInteger;

  CompleteWhen          := GetTaskCompletesWhenFromCode(dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('COMPLETEWHEN').AsString);
  CompleteRelated       := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('COMPLETEWHENRELATED').AsInteger;

  SkipWhen              := GetTaskSkipsWhenFromCode(dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('SKIPWHEN').AsString);
  SkipRelated           := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('SKIPWHENRELATED').AsInteger;

  DueDateLinkTo         := GetTaskDueDateLinkToFromCode(dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('LINKDATETO').AsString);
  DueDateLinkToRelated  := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('LINKDATETORELATED').AsInteger;
  DueDateLinkToDaysFrom := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('LINKDATEDAYSFROM').AsInteger;

  ScaleCostCode         := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('SCALECOSTCODE').AsString;
  ShowFee               := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('SHOWFEE').AsString = 'Y';

  DaysFrom              := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('DAYSFROM').AsInteger;
  CompleteDays          := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('COMPLETEDAYS').AsInteger;
  FCompleteByDate       := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('DATETOCOMPLETE').AsDateTime; // FCompleteByDate on purpose..
  HasDocuments          := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('HASDOCUMENTS').AsInteger > 0;
  NumberOfNotes         := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('HASNOTES').AsInteger;
  WorkFlowTypeCode      := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('WORKFLOWTYPECODE').AsString;
  Custom                := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('CUSTOM').AsString = 'Y';
  AssignTo              := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('ASSIGNTO').AsString;

  EMailOverDue          := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('EMAILOVERDUE').AsString;
  EMailOverDueName      := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('EMAILOVERDUENAME').AsString;
  EMailOverDueCode      := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('EMAILOVERDUECODE').AsString;

  Watcher               := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('WATCHER').AsString;
  WatcherName           := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('WATCHERNAME').AsString;
  WatcherCode           := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('WATCHERNAMECODE').AsString;
  WatchFor              := dmWorkflowDataModuleRun.qWorkFlowTasks2.FieldByName('WATCHFOR').AsString;

  AssignedToChangedBy   := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('ASSIGNEDTOCHANGEDBY').AsString;
  AssignedToTeamChangedBy   := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('ASSIGNEDTOTEAMCHANGEDBY').AsString;
  DueDateChangedBy      := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('DUEDATECHANGEDBY').AsString;
  UndoBy                := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('UNDOBY').AsString;

  CriticalDate          := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('CRITICAL_DATE').AsString = 'Y';
  CriticalAlert         := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('CRITICAL_ALERT').AsString = 'Y';

  CriticalDateStr       := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('CRITICAL_DATE').AsString;
  CriticalAlertStr      := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('CRITICAL_ALERT').AsString;
  SameDayDue            := dmWorkflowDataModuleRun.qWorkflowTasks2.FieldByName('SAMEDAY_DUE').AsString;

  FRecentNoteID         := -1;

  ResetChangedFlags();
end;

procedure TWorkFlowTask.GenerateReportData;
var
  LChild: TWorkFlowTask;
begin
  if(not IsRootTask) then
  begin
    dmWorkflowDataModuleRun.vtWorkFlowTasksReport.Append();
    if(Repetition = 0) then
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('FULLSEQUENCE').AsString := Sequence
    else
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('FULLSEQUENCE').AsString := Sequence + '(' + IntToStr(Repetition) + ')';
    dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('TASKDESCRIPTION').AsString := TaskDescription;
    dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('TaskNote').AsString := TaskNote;

    if(Started) then
    begin
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('Started').AsDateTime := Trunc(StartedDate);
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('StartedBy').AsString := StartedBy;
    end else
    begin
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('Started').Clear();
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('StartedBy').Clear();
    end;

    if(Completed) then
    begin
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('Completed').AsDateTime := Trunc(CompletedDate);
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('CompletedBy').AsString := CompletedBy;
    end else
    begin
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('Completed').Clear();
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('CompletedBy').Clear();
    end;

    if(Skipped) then
    begin
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('Skipped').AsDateTime := Trunc(SkippedDate);
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('SkippedBy').AsString := SkippedBy;
    end else
    begin
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('Skipped').Clear();
      dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('SkippedBy').Clear();
    end;

    dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('AssignedToName').AsString := AssignedTo;
    dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('AssignedToTeam').AsString := AssignedToTeam;
    dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('CompleteBy').AsDateTime   := CompleteByDate;
    dmWorkflowDataModuleRun.vtWorkFlowTasksReport.FieldByName('OverDueDays').AsInteger   := OverDueDays;

    dmWorkflowDataModuleRun.vtWorkFlowTasksReport.Post();
  end;
  // now each child is duplicated;
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    LChild.GenerateReportData();
    LChild := LChild.NextTask;
  end;

end;

function TWorkFlowTask.GetHasStartedDueChild: Boolean;
var
  LChild: TWorkFlowTask;
begin
  Result := False;
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    if(LChild.Started and (not LChild.Completed) and (not LChild.Skipped)
        and (LChild.CompleteByDate <> 0)) then
      Result := True
    else
      Result := LChild.HasStartedDueChild;
    if(Result) then
      break;
    LChild := LChild.NextTask;
  end;
end;

function TWorkFlowTask.GetDueDateLinkToRelatedTask: TWorkFlowTask;
begin
  Result := RootTask.GetTaskOfLineID(DueDateLinkToRelated, Repetition);
end;

procedure TWorkFlowTask.TaskDueDateChanged(ATask: TWorkFlowTask; ADate, ADueDate: TDateTime);
var
   LChild: TWorkFlowTask;
   LNewDate: TDate;
begin
   if(ADueDate <> 0) then
   begin
      LNewDate := 0;
      case DueDateLinkTo of
         dltP: if(ATask = ParentTask) then
            LNewDate := ADueDate + DueDateLinkToDaysFrom;
         dltS: if(ATask = PrevTask) then
            LNewDate := ADueDate + DueDateLinkToDaysFrom;
         dltN: if(ATask = NextTask) then
            LNewDate := ADueDate + DueDateLinkToDaysFrom;
         dltR: if(ATask.TaskEquals(DueDateLinkToRelatedTask)) then
            LNewDate := ADueDate + DueDateLinkToDaysFrom;
      end;

      if(not (Completed or Skipped)) then
      begin
         if(LNewDate > 0) then
         begin
            if(not Started) then
               StartTask(ADate);

            if(DayOfTheWeek(LNewDate) = 7) then
               LNewDate := LNewDate - 1;
            if(DayOfTheWeek(LNewDate) = 6) then
               LNewDate := LNewDate - 1;

            CompleteByDate := LNewDate;
         end;
      end;

      LChild := FirstChildTask;
      while (Assigned(LChild)) do
      begin
         LChild.TaskDueDateChanged(ATask,ADate,ADueDate);
         LChild := LChild.NextTask;
      end;
   end;
end;

procedure TWorkFlowTask.DoFee(ADate: TDateTime);
var
  LfmFeeNew: TfrmFeeNew;
begin
  if(ScaleCostCode = '') then
    Exit;

  // fee...
  LfmFeeNew := TfrmFeeNew.Create(Application, False);
  LfmFeeNew.Show();
  LfmFeeNew.CreateScale(dmWorkflowDataModule.GetFileIDFromNMatter(NMatter),NMatter,ScaleCostCode);

  if(not ShowFee) then
    LfmFeeNew.btnOK.Click();
end;

procedure TWorkFlowTask.SetAssignedToChangedBy(const Value: String);
begin
  if(FAssignedToChangedBy <> Value) then
  begin
    FAssignedToChangedBy := Value;
    FAssignedToChangedByChanged := True;
  end;
end;

procedure TWorkFlowTask.SetAssignedToTeamChangedBy(const Value: String);
begin
  if(FAssignedToTeamChangedBy <> Value) then
  begin
    FAssignedToTeamChangedBy := Value;
    FAssignedToTeamChangedByChanged := True;
  end;
end;

procedure TWorkFlowTask.SetUndoBy(const Value: String);
begin
  if(FUndoBy <> Value) then
  begin
    FUndoBy := Value;
    FUndoByChanged := True;
  end;
end;

procedure TWorkFlowTask.SetDueDateChangedBy(const Value: String);
begin
  if(FDueDateChangedBy <> Value) then
  begin
    FDueDateChangedBy := Value;
    FDueDateChangedByChanged := True;
  end;
end;

procedure TWorkFlowTask.updateStartedTree(AStarted : TDateTime);
var LChild : TWorkFlowTask;
begin
   StartedDate := AStarted;
   UpdateDB;

   LChild := FirstChildTask;
   while(Assigned(LChild)) do
   begin
      LChild.StartedDate := AStarted;
      LChild.UpdateDB;
      LChild := LChild.NextTask;
   end;
end;

{RB used for critical alerts to uncomplete a task}
procedure TWorkFlowTask.uncomplete;
var
  LChild: TWorkFlowTask;
begin
  CompletedDate := 0;
  LChild := FirstChildTask;
  while(Assigned(LChild)) do
  begin
    LChild.uncomplete;
    LChild := LChild.NextTask;
  end;
  UpdateDB;
end;


end.
