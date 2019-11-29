unit WorkFlowMatterTasks;
(*
  WorkFlow Matter Tasks

  The form that the users will work off..

  Mathew Dredge, Aug-Sep 2002
 *)                                                   

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, VirtualTrees, ActnMan, ActnCtrls, ImgList, WorkflowTask,
  Menus, WorkFlowTaskNotes, WorkFlowMergeDocument, StdActns,
  ActnMenus, WorkFlowDocumentMerge, dxBarExtItems, dxBar, XPStyleActnCtrls,
  ppDB, ppParameter, ppDesignLayer, ppBands, ppCtrls, ppClass, ppVar, ppStrtch,
  ppMemo, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DB,
  OracleUniProvider, Uni, DBAccess, MemDS, cxClasses, System.Actions,
  Vcl.PlatformDefaultStyleActnCtrls, System.ImageList;

const
  C_SETTINGOWNER = 'WKFTASKS';
type
  TfmWorkFlowMatterTasks = class(TForm)
    ActionManager: TActionManager;
    vtTasks: TVirtualStringTree;
    aTaskStart: TAction;
    aTaskComplete: TAction;
    aSkipped: TAction;
    ImageList: TImageList;
    pmTasks: TPopupMenu;
    miStartTask: TMenuItem;
    miCompleteTask: TMenuItem;
    miSkipped: TMenuItem;
    aMerge: TAction;
    aNotes: TAction;
    N1: TMenuItem;
    miTaskNotes: TMenuItem;
    miMerge: TMenuItem;
    aTaskUndo: TAction;
    miTaskUndo: TMenuItem;
    aTreeExpandAll: TAction;
    aTreeExpand: TAction;
    aTreeCollapseAll: TAction;
    N2: TMenuItem;
    miTreeExpand: TMenuItem;
    miTreeExpandAll: TMenuItem;
    miTreeCollapseAll: TMenuItem;
    aGenericDocuments: TAction;
    aAdminDocs: TAction;
    aPrint: TAction;
    aReassignTask: TAction;
    miReassignTask: TMenuItem;
    N3: TMenuItem;
    aRefresh: TAction;
    aEditDueDate: TAction;
    miEditDueDate: TMenuItem;
    miRefresh: TMenuItem;
    aOpenMatter: TAction;
    N4: TMenuItem;
    OpenMatter1: TMenuItem;
    aAddTask: TAction;
    miAddTask: TMenuItem;
    N5: TMenuItem;
    aDeleteTask: TAction;
    miDeleteTask: TMenuItem;
    aCopyTask: TAction;
    miCopyTask: TMenuItem;
    aShowColumnStarted: TAction;
    aShowColumnCompleted: TAction;
    aShowColumnDueBy: TAction;
    aShowColumnOverdueDays: TAction;
    aShowColumnSkipped: TAction;
    aShowColumnAssignedTo: TAction;
    miColumns: TMenuItem;
    miShowColumnStarted: TMenuItem;
    miShowColumnCompleted: TMenuItem;
    miShowColumnDueBy: TMenuItem;
    miShowColumnOverdueDays: TMenuItem;
    miShowColumnSkipped: TMenuItem;
    miShowColumnAssignedTo: TMenuItem;
    aCloseWindow: TAction;
    aGeneratedDocuments: TAction;
    miGeneratedDocuments: TMenuItem;
    dxBarManager1: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    cmbViewDate: TdxBarDateCombo;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    aJumpList: TdxBarCombo;
    dsWorkFlowTaskReport: TUniDataSource;
    plWorkFlowTaskReport: TppDBPipeline;
    ppWorkFlowTasksReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure aTaskStartUpdate(Sender: TObject);
    procedure aTaskStartExecute(Sender: TObject);
    procedure aTaskCompleteUpdate(Sender: TObject);
    procedure aTaskCompleteExecute(Sender: TObject);
    procedure aSkippedUpdate(Sender: TObject);
    procedure aSkippedExecute(Sender: TObject);
{    procedure vtTasksGetHint(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);  }
    procedure aMergeUpdate(Sender: TObject);
    procedure aMergeExecute(Sender: TObject);
    procedure aNotesUpdate(Sender: TObject);
    procedure aNotesExecute(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure vtTasksPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure aViewDateDateChange(Sender: TObject);
    procedure aTaskUndoUpdate(Sender: TObject);
    procedure aTaskUndoExecute(Sender: TObject);
    procedure vtTasksCollapsed(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vtTasksExpanded(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure aTreeExpandUpdate(Sender: TObject);
    procedure aTreeExpandAllUpdate(Sender: TObject);
    procedure aTreeExpandAllExecute(Sender: TObject);
    procedure aTreeExpandExecute(Sender: TObject);
    procedure aTreeCollapseAllExecute(Sender: TObject);
    procedure aTreeCollapseAllUpdate(Sender: TObject);
    procedure aJumpListComboChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure aGenericDocumentsUpdate(Sender: TObject);
    procedure aAdminDocsExecute(Sender: TObject);
    procedure aPrintUpdate(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aReassignTaskExecute(Sender: TObject);
    procedure vtTasksDblClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aEditDueDateUpdate(Sender: TObject);
    procedure aEditDueDateExecute(Sender: TObject);
    procedure aOpenMatterExecute(Sender: TObject);
    procedure aAddTaskExecute(Sender: TObject);
    procedure aAddTaskUpdate(Sender: TObject);
    procedure aDeleteTaskUpdate(Sender: TObject);
    procedure aDeleteTaskExecute(Sender: TObject);
    procedure aCopyTaskExecute(Sender: TObject);
    procedure aCopyTaskUpdate(Sender: TObject);
    procedure aReassignTaskUpdate(Sender: TObject);
    procedure aShowColumnUpdate(Sender: TObject);
    procedure aShowColumnExecute(Sender: TObject);
    procedure vtTasksHeaderDragged(Sender: TVTHeader; Column: TColumnIndex;
      OldPosition: Integer);
    procedure aGenericDocumentsExecute(Sender: TObject);
    procedure aCloseWindowExecute(Sender: TObject);
    procedure aGeneratedDocumentsUpdate(Sender: TObject);
    procedure aGeneratedDocumentsExecute(Sender: TObject);
    procedure aJumpListChange(Sender: TObject);
    procedure bbtnExitClick(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppDBText4Print(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure vtTasksGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vtTasksGetHint(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; var LineBreakStyle: TVTTooltipLineBreakStyle;
      var HintText: string);
    procedure vtTasksGetImageIndex(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Kind: TVTImageKind; Column: TColumnIndex; var Ghosted: Boolean;
      var ImageIndex: TImageIndex);
  private
    FMatterClient: String;
    FNMatter: Integer;
    FMatterDesc: String;
    FWorkflowType: String;
    FNotesForm: TfmWorkFlowTaskNotes;
    FWorkFlowMergeDocument: TfmWorkFlowMergeDocument;
    FExpanding: Boolean;
    FSettingsChanged: Boolean;

    FRootTask: TWorkflowTask;
    FWorkflowTypeCode: String;
    FSelectedNode: Integer;
    FExpandedNodes: array of Integer;

    FMergeType: TMergeDocumentClass;

    FCriticalDateMissing: boolean;
    FALLOW_CRITICAL_DATE_COMPLETION: string;

    function GetSelectedTask(): TWorkflowTask;
    procedure NotesFormClose(Sender: TObject; var Action: TCloseAction);
    procedure MergeFormClose(Sender: TObject; var Action: TCloseAction);
    procedure ResizeColumns();
    { Private declarations }
    procedure IterGetNode(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    procedure IterGetNodeTemplate(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);

    procedure IterSaveExpanded(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    procedure SaveTreeExpanded();

    procedure UpdateToDoWindow();

    procedure OnUpdateWindowEvent(Sender: TObject);
    procedure SetNMatter(const Value: Integer);


    procedure ColumnUpdated(AColumn: String; AVisible: Boolean; APosition: Integer);

    property MatterClient:     String read FMatterClient     write FMatterClient;
    property MatterDesc:       String read FMatterDesc       write FMatterDesc;
    property WorkflowType:     String read FWorkflowType     write FWorkflowType;
    property WorkflowTypeCode: String read FWorkflowTypeCode write FWorkflowTypeCode;
    procedure RefreshJumpList;
  public
    { Public declarations }
    procedure JumpTask(AWorkFlowTask: Integer);
    procedure JumpTaskTemplate(ALineID: Integer);
    procedure ReloadTree();
    procedure NotesEvent(AWorkFlowTask: Integer; ANoteEvent: TNoteEvent);
    procedure SetViewDate(ADate: TDate);


    property NMatter: Integer   read FNMatter   write SetNMatter;

    property SelectedTask: TWorkflowTask read GetSelectedTask;
  end;

var
  fmWorkFlowMatterTasks: TfmWorkFlowMatterTasks;

function FindWorkFlowTasksWindow(ANMatter: Integer): TfmWorkFlowMatterTasks;

implementation

uses  WorkFlowDataModule, ComCtrls, MiscFunc, WorkFlowAdminDocs,
      WorkFlowToDo, EmployeeFindDialog, Matters,
      DateEditDialog, WorkFlowGenDocuments, WorkFlowDataModuleRun, MatterDataForm,
      AxiomData, WorkFlowParties, cxGridDBTableView, cxGridTableView,
      WorkFlowDataModuleMerge;

{$R *.dfm}


type
  // records for iterator searches on the tree
  PvtSearchData = ^TvtSearchData;
  TvtSearchData = record
    WorkFlowTask: Integer;
    Node: PVirtualNode;
  end;

  // enum types for columns on the tree - easy to change layout..
  TTaskTreeColumns = (ttcSeqNo = 0, ttcDocuments = 1, ttcNotes = 2,
        ttcDescription = 3, ttcStarted = 4, ttcCompleted = 5,
        ttcCompleteBy = 6, ttcOverdueDays = 7, ttcSkipped = 8, ttcAssignedTo = 9);


// show the form, load tasks into memory and show on the tree..
procedure TfmWorkFlowMatterTasks.FormShow(Sender: TObject);
var
  i, AParentLineID: Integer;
  LColumn: TVirtualTreeColumn;
begin
   aJumpList.Items.Clear();
   Caption := 'Matter WorkFlow Tasks - ' + dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter) + ' - ' + MatterClient + ' (' + Trim(WorkflowType) + ')';
   cmbViewDate.Date := Date();

   // make sure task list is upto date.
   dmWorkFlowDataModuleRun.qCheckWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
   dmWorkFlowDataModuleRun.qCheckWorkflowTasks.Open();
   try
      if(dmWorkFlowDataModuleRun.qCheckWorkflowTasks.Eof) then
      begin
         dmWorkFlowDataModuleRun.qCreateWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
         dmWorkFlowDataModuleRun.qCreateWorkflowTasks.Execute();

         // critical dates
         // ******  changed by AES 25/02/2009

{         dmWorkFlowDataModuleRun.qHasMatterCriticalDates.Close;
         dmWorkFlowDataModuleRun.qHasMatterCriticalDates.ParamByName('nmatter').AsInteger := NMatter;
         dmWorkFlowDataModuleRun.qHasMatterCriticalDates.Open;
         while (not dmWorkFlowDataModuleRun.qHasMatterCriticalDates.Eof) do
         begin
            dmWorkFlowDataModuleRun.qUpdateCriticalDates.ParamByName('nmatter').AsInteger := NMatter;
            dmWorkFlowDataModuleRun.qUpdateCriticalDates.ParamByName('templatelineid').AsInteger := dmWorkFlowDataModuleRun.qHasMatterCriticalDates.FieldByName('templatelineid').AsInteger;
            dmWorkFlowDataModuleRun.qUpdateCriticalDates.ParamByName('critical_date').AsDate := dmWorkFlowDataModuleRun.qHasMatterCriticalDates.FieldByName('critical_date').AsDateTime;
            dmWorkFlowDataModuleRun.qUpdateCriticalDates.ParamByName('started').AsDateTime := now;
            dmWorkFlowDataModuleRun.qUpdateCriticalDates.ParamByName('started_by').AsString := dmAxiom.UserID;
            dmWorkFlowDataModuleRun.qUpdateCriticalDates.Execute();
            dmWorkFlowDataModuleRun.qHasMatterCriticalDates.Next; 
         end;     }

{         dmWorkFlowDataModuleRun.qHasMatterCriticalDates.Close;
         dmWorkFlowDataModuleRun.qHasMatterCriticalDates.ParamByName('nmatter').AsInteger := NMatter;
         dmWorkFlowDataModuleRun.qHasMatterCriticalDates.Open;
         while (not dmWorkFlowDataModuleRun.qHasMatterCriticalDates.Eof) do
         begin
            dmWorkFlowDataModuleRun.qGetParentLineID.Close;
            dmWorkFlowDataModuleRun.qGetParentLineID.ParamByName('nmatter').AsInteger := NMatter;
            dmWorkFlowDataModuleRun.qGetParentLineID.ParamByName('templatelineid').AsInteger := dmWorkFlowDataModuleRun.qHasMatterCriticalDates.FieldByName('templatelineid').AsInteger;
            dmWorkFlowDataModuleRun.qGetParentLineID.Open;
            AParentLineID := dmWorkFlowDataModuleRun.qGetParentLineID.FieldByName('parentlineid').AsInteger;

            dmWorkFlowDataModuleRun.procStartTask.ParamByName('ANMatter').AsInteger := NMatter;
            dmWorkFlowDataModuleRun.procStartTask.ParamByName('AParentLineID').AsInteger := AParentLineID;
            dmWorkFlowDataModuleRun.procStartTask.ParamByName('ALineID').AsInteger := dmWorkFlowDataModuleRun.qHasMatterCriticalDates.FieldByName('templatelineid').AsInteger;;
            dmWorkFlowDataModuleRun.procStartTask.ParamByName('ADate').AsDateTime := now;
            dmWorkFlowDataModuleRun.procStartTask.ParamByName('AStartBy').AsString := dmAxiom.UserID;
            dmWorkFlowDataModuleRun.procStartTask.Execute;
            dmWorkFlowDataModuleRun.qHasMatterCriticalDates.Next;
         end;    }
      end
      else
      begin
         if(dmWorkFlowDataModuleRun.qCheckWorkflowTasksWORKFLOWTYPECODE.AsString <> dmWorkFlowDataModuleRun.qCheckWorkflowTasksWORKFLOW.AsString) then
         begin
            if MessageDlg('The workflow type for this matter has changed from ' +
                          dmWorkFlowDataModuleRun.qCheckWorkflowTasksWORKFLOWDESCR.AsString + ' to ' +
                          dmWorkFlowDataModuleRun.qCheckWorkflowTasksMATTERDESCR.AsString + '.'#13#10 +
                          'Are you sure you want to delete the workflow timetable on this matter for ' +
                          dmWorkFlowDataModuleRun.qCheckWorkflowTasksWORKFLOWDESCR.AsString +
                          ' and replace it with fresh timetable for ' +
                          dmWorkFlowDataModuleRun.qCheckWorkflowTasksMATTERDESCR.AsString + '?',
                          mtConfirmation, [mbYes,mbNo], 0) = mrYes then
            begin
               dmWorkFlowDataModuleRun.qDeleteWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
               dmWorkFlowDataModuleRun.qDeleteWorkflowTasks.Execute();
               dmWorkFlowDataModuleRun.qCreateWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
               dmWorkFlowDataModuleRun.qCreateWorkflowTasks.Execute();

               // critical dates
                // ******  delete added by AES 25/02/2009
               dmWorkFlowDataModuleRun.qDeleteCriticalDates.ParamByName('nmatter').AsInteger := NMatter;
               dmWorkFlowDataModuleRun.qDeleteCriticalDates.Execute();
               dmWorkFlowDataModuleRun.qCreateCriticalDates.ParamByName('nmatter').AsInteger := NMatter;
               dmWorkFlowDataModuleRun.qCreateCriticalDates.Execute();
            end;
         end;
      end;
   finally
      dmWorkFlowDataModuleRun.qCheckWorkflowTasks.Close();
   end;

   // load column settings.
   FSettingsChanged := False;
   if(SettingLoadBoolean(C_SETTINGOWNER,'SAVED') and SettingExists(C_SETTINGOWNER,'COL0VIS')) then
   begin
      for i := 0 to vtTasks.Header.Columns.Count - 1 do
      begin
         LColumn := vtTasks.Header.Columns.Items[i];

         if(SettingLoadBoolean(C_SETTINGOWNER,'COL' + IntToStr(i) + 'VIS')) then
            LColumn.Options := LColumn.Options + [coVisible]
         else
            LColumn.Options := LColumn.Options - [coVisible];
         LColumn.Position := SettingLoadInteger(C_SETTINGOWNER,'COL' + IntToStr(i) + 'POS');
      end;
   end;

   dmWorkFlowDataModuleRun.qGetCriticalDateCount.Close;
   dmWorkFlowDataModuleRun.qGetCriticalDateCount.ParamByName('nmatter').AsInteger := NMatter;
   dmWorkFlowDataModuleRun.qGetCriticalDateCount.Open;
   FCriticalDateMissing := (dmWorkFlowDataModuleRun.qGetCriticalDateCount.FieldByName('criticalcount').AsInteger > 0);
   dmWorkFlowDataModuleRun.qGetCriticalDateCount.Close;

   FALLOW_CRITICAL_DATE_COMPLETION := SystemString('ALLOW_CRITICAL_DATE_COMPLETION');

   ReloadTree();
   //  aJumpList.ItemIndex := 0;
end;

// save form position
procedure TfmWorkFlowMatterTasks.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
  LColumn: TVirtualTreeColumn;
begin

  SettingSave(C_SETTINGOWNER,'WINDOWSTATE', Integer(WindowState));
  if(WindowState <> wsMaximized) then
  begin
    SettingSave(C_SETTINGOWNER,'LEFT', Left);
    SettingSave(C_SETTINGOWNER,'WIDTH', Width);
    SettingSave(C_SETTINGOWNER,'TOP', Top);
    SettingSave(C_SETTINGOWNER,'HEIGHT', Height);
  end;

  if(FSettingsChanged) then
  begin
    for i := 0 to vtTasks.Header.Columns.Count - 1 do
    begin
      LColumn := vtTasks.Header.Columns.Items[i];
      SettingSave(C_SETTINGOWNER,'COL' + IntToStr(i) + 'VIS',( coVisible in LColumn.Options));
      SettingSave(C_SETTINGOWNER,'COL' + IntToStr(i) + 'POS',LColumn.Position);
    end;
  end;
  SettingSave(C_SETTINGOWNER,'SAVED',True);


  Action := caFree;
  if(Assigned(FNotesForm)) then
    FNotesForm.OnClose := Nil;
  if(Assigned(FWorkFlowMergeDocument)) then
  begin
    FWorkFlowMergeDocument.OnClose := Nil;
    FWorkFlowMergeDocument.UpdateWindowEvent := Nil;
  end;
  fmWorkflowMatterTasks := Nil;
end;

// create form, load position..
procedure TfmWorkFlowMatterTasks.FormCreate(Sender: TObject);
begin
{$IFDEF _DATE_TESTING_}
  aTestDate.Visible := True;
  aTestDateLabel.Visible := True;
{$ENDIF}

  FMergeType := GetWorkFlowMergeTypeClass();

  ConvertToHighColor(ImageList);

  if(not Assigned(dmWorkFlowDataModule)) then
    dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
  vtTasks.NodeDataSize := SizeOf(TTaskData);
  aTreeExpandAll.ShortCut := VK_SHIFT + VK_CONTROL + VK_ADD;

{  if(SettingLoadInteger(C_SETTINGOWNER,'LEFT') <> 0) then
  begin
    Left        := SettingLoadInteger(C_SETTINGOWNER,'LEFT');
    Width       := SettingLoadInteger(C_SETTINGOWNER,'WIDTH');
    Top         := SettingLoadInteger(C_SETTINGOWNER,'TOP');
    Height      := SettingLoadInteger(C_SETTINGOWNER,'HEIGHT');
  end;    }
  WindowState := TWindowState(SettingLoadInteger(C_SETTINGOWNER,'WINDOWSTATE'));
  Self.Cursor := crDefault;
end;

// return the text item for the node and its column.


// action update
procedure TfmWorkFlowMatterTasks.aTaskStartUpdate(Sender: TObject);
var
LTask: TWorkflowTask;
begin
  TAction(Sender).Enabled :=  Assigned(SelectedTask);

  LTask := SelectedTask;
  if(Assigned(LTask)) then
        TAction(Sender).Enabled := dmAxiom.Security.Workflow.ChangeCriticalDate; //  (not LTask.criticalDate);

{  LTask := SelectedTask;
  if(Assigned(LTask)) then
    TAction(Sender).Enabled := (not LTask.Started) and (not LTask.Skipped)
  else
    TAction(Sender).Enabled := False;}
end;


// start the task.. if it has documents, then launch the document
// merge window modal, when complete there, complete the task.
procedure TfmWorkFlowMatterTasks.aTaskStartExecute(Sender: TObject);
var
   LSelectedTask: TWorkFlowTask;
   LfrmMatterDataForm: TfrmMatterDataForm;
   APartyCount: integer;
   AWorkFlowParties: TfrmWorkFlowParties;
   bDataFormContinue: boolean;
   ANameList: TStrings;
   ANName, i, ARowIndex: integer;
   DoDuplicates: boolean;
   ACurrParty: string;

   procedure CallDataForm(ADataForm, ANMatter: string; ANName: integer);
   var
      x: integer;
   begin
      for x := 0 to ANameList.Count - 1 do
      begin
        if not Assigned(LfrmMatterDataForm) then
           LfrmMatterDataForm := TfrmMatterDataForm.Create(nil);
        LfrmMatterDataForm.DocID := 0;
        LfrmMatterDataForm.LineId := LSelectedTask.TemplateLineID;
        LfrmMatterDataForm.TemplateFields := False;
        ANName := StrToInt(ANameList.Strings[x]);
        with LfrmMatterDataForm do
        begin
           try
              if LoadForm(ADataForm, ANMatter, ANName) then
              begin
                if ShowModal = mrCancel then
                  Exit;
              end;
           finally
              LfrmMatterDataForm.FreeOnRelease;
              LfrmMatterDataForm := nil;
//              FreeAndNil(LfrmMatterDataForm);
           end;
        end;
      end;
   end;

begin
   DoDuplicates := False;
// AES
// changed this to allow the "restart" of a task.  needed if datafields attached to task
// 07/05/2009
   LSelectedTask := SelectedTask;

   if(SelectedTask.Started) and (SystemString('WKFLOW_DUPLICATE_TASK') = 'Y') then
   begin
      if MessageDlg('This task has already been started'#13#10'A new copy of the task and its child tasks can be created.'#13#10' Do you want to do this?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
            Exit;
      LSelectedTask := SelectedTask.RepeatTask(vtTasks, vtTasks.FocusedNode.Parent, SelectedTask.ParentTask);

      {$IFNDEF _DATE_TESTING_}
      LSelectedTask.StartTask(Now());
      {$ELSE}
      LSelectedTask.StartTask(aTestDate.Date);
      {$ENDIF}
   end
   else
   begin
      LSelectedTask := SelectedTask;
      {$IFNDEF _DATE_TESTING_}
      LSelectedTask.StartTask(Now());
      {$ELSE}
      LSelectedTask.StartTask(aTestDate.Date);
      {$ENDIF}
   end;

   vtTasks.Invalidate();

   if (LSelectedTask.HasDataForm) then
   begin
      try
         ANName := 0;
         ANameList := TStringList.Create;
         ANameList.Add('0');
         bDataFormContinue := False;
         ACurrParty := '';
         // AES 11/05/2009
         // lets get dataforms for this task, if any
         dmWorkFlowDataModule.qryWorkflowDataForms.Close;
         dmWorkFlowDataModule.qryWorkflowDataForms.ParamByName('CODE').AsInteger := LSelectedTask.TemplateLineID;
         dmWorkFlowDataModule.qryWorkflowDataForms.Open;
         if (not dmWorkFlowDataModule.qryWorkflowDataForms.Eof) then
         begin   // we found dataforms
            if (dmWorkFlowDataModule.qryWorkflowDataForms.FieldByName('PARTY').AsString <> '') and
               (dmWorkFlowDataModule.qryWorkflowDataForms.FieldByName('PARTY').AsString <> ACurrParty) then
            begin   // dataforms have a partytype attached
               dmWorkFlowDataModule.qPartyCount.Close;
               dmWorkFlowDataModule.qPartyCount.ParamByName('nmatter').AsInteger := NMatter;
               dmWorkFlowDataModule.qPartyCount.ParamByName('partyname').AsString := dmWorkFlowDataModule.qryWorkflowDataForms.FieldByName('PARTY').AsString;
               dmWorkFlowDataModule.qPartyCount.Open;
               APartyCount := dmWorkFlowDataModule.qPartyCount.Fields.Fields[0].AsInteger;
               if APartyCount > 0 then
               begin  // there is more than 1 party belonging to the partytype
                  // show screen to allow user to select party
                  AWorkFlowParties := TfrmWorkFlowParties.Create(Self);
                  AWorkFlowParties.NMatter := NMatter;
                  AWorkFlowParties.SPartyType := dmWorkFlowDataModule.qryWorkflowDataForms.FieldByName('PARTY').AsString;
                  AWorkFlowParties.PopulatePartyGrid;
                  if (APartyCount > 1) then
                  begin   // if more than one selected
                     case AWorkFlowParties.ShowModal of
                        mrOk:
                           begin
                               bDataFormContinue := True;
                               ANameList.Clear;
                               for i := 0 to AWorkFlowParties.tvParties.Controller.SelectedRowCount - 1 do
                               begin
                                  ARowIndex := AWorkFlowParties.tvParties.DataController.GetSelectedRowIndex(i);
                                  AWorkFlowParties.tvParties.ViewData.Records[ARowIndex].Focused  := True;
                                  ANameList.Add(AWorkFlowParties.tvPartiesNNAME.EditValue);
                               end;
                           end;
                        mrCancel:
                           begin
                              bDataFormContinue := False;
                              Exit;
                           end;
                     end;
                  end
                  else
                  begin  // there is only one party  let's use it
                     bDataFormContinue := True;
                     ANameList.Clear;
                     dmWorkFlowDataModuleMerge.qTaskParty.Close();
                     dmWorkFlowDataModuleMerge.qTaskParty.ParamByName('nmatter').AsInteger := NMatter;
                     dmWorkFlowDataModuleMerge.qTaskParty.ParamByName('partytype').AsString := dmWorkFlowDataModule.qryWorkflowDataForms.FieldByName('PARTY').AsString;
                     dmWorkFlowDataModuleMerge.qTaskParty.Open();
                     ANName := dmWorkFlowDataModuleMerge.qTaskParty.FieldByName('NNAME').AsInteger;
                     ANameList.Add(IntToStr(ANName));
                  end;
               end
               else
               begin  // dataform is a matter dataform, ie. no parties so we use client as the party
                  bDataFormContinue := True;
                  ANameList.Clear;
                  ANName := StrToInt(MatterString(NMatter,'NNAME'));
                  ANameList.Add(IntToStr(ANName));
               end
            end
            else
//           if bDataFormContinue then
            begin
               ANameList.Clear;
               ANName := 0;
               ANameList.Add('0');
               CallDataForm(dmWorkFlowDataModule.qryWorkflowDataForms.FieldByName('dataform').AsString , MatterString(NMatter,'FileID'), ANName);
            end;
         end
{        else
        begin // dataform is a matter dataform, ie. no parties use mnmatter
           ANameList.Clear;
           ANName := 0;
           ANameList.Add('0');
           CallDataForm(dmWorkFlowDataModule.qryWorkflowDataForms.FieldByName('dataform').AsString , MatterString(NMatter,'FileID'), ANName);
        end;     }
      except
         begin
//            FreeAndNil(LfrmMatterDataForm);
            FreeAndNil(AWorkFlowParties);
         end;
      end;
      ANameList.Free;
   end;

   if (LSelectedTask.HasDocuments) then
   begin
      try
         if(not Assigned(FWorkFlowMergeDocument)) then
            FWorkFlowMergeDocument                 := TfmWorkFlowMergeDocument.Create(Application);
         FWorkFlowMergeDocument.NMatter            := NMatter;
         FWorkFlowMergeDocument.Task               := LSelectedTask;
         if not FWorkFlowMergeDocument.WorkFlowAdminDoc then
         begin
            FWorkFlowMergeDocument.OnClose            := MergeFormClose;
            FWorkFlowMergeDocument.UpdateWindowEvent  := OnUpdateWindowEvent;
            FWorkFlowMergeDocument.ShowModal();
         end
         else
            FreeAndNil(FWorkFlowMergeDocument);
      except
         on E: exception do
         begin
            MessageDlg(E.Message, mtError, [mbOK], 0);
            FreeAndNil(FWorkFlowMergeDocument);
         end;
      end;
   end;
//  UpdateToDoWindow();
end;

// action update
procedure TfmWorkFlowMatterTasks.aTaskCompleteUpdate(Sender: TObject);
var
  LTask: TWorkflowTask;
begin
   LTask := SelectedTask;
   if(Assigned(LTask)) then
   begin
      if  FALLOW_CRITICAL_DATE_COMPLETION = 'N' then
         TAction(Sender).Enabled := LTask.Started and (not LTask.Completed) and (not LTask.Skipped) and (not Ltask.CriticalDate)
      else
         TAction(Sender).Enabled := LTask.Started and (not LTask.Completed) and (not LTask.Skipped);
   end
   else
      TAction(Sender).Enabled := False;
end;

// mark the task as complete. if the notes for the task is open
// tell that form that the task is now complete.
procedure TfmWorkFlowMatterTasks.aTaskCompleteExecute(Sender: TObject);
begin
{$IFNDEF _DATE_TESTING_}
   SelectedTask.CompleteTask(Now());
{$ELSE}
   SelectedTask.CompleteTask(aTestDate.Date);
{$ENDIF}

   if(Assigned(FNotesForm)) then
   begin
      if(FNotesForm.WorkFlowTask = SelectedTask.WorkFlowTask) then
         FNotesForm.TaskCompleted := SelectedTask.Completed or SelectedTask.Skipped;
   end;

   vtTasks.Invalidate();
   UpdateToDoWindow();
end;

// return the selected task from the tree..
function TfmWorkFlowMatterTasks.GetSelectedTask(): TWorkflowTask;
begin
   Result := nil;

   if(Assigned(vtTasks.FocusedNode)) then
      Result := PTaskData(vtTasks.GetNodeData(vtTasks.FocusedNode)).Task;
end;

// action update
procedure TfmWorkFlowMatterTasks.aSkippedUpdate(Sender: TObject);
var
  LTask: TWorkflowTask;
begin
  LTask := SelectedTask;
  if(Assigned(LTask)) then
    TAction(Sender).Enabled := (not LTask.Skipped) and (not LTask.Completed) and (not LTask.CriticalDate)
  else
    TAction(Sender).Enabled := False;
end;

// skip the task, marking the notes form if need be.
procedure TfmWorkFlowMatterTasks.aSkippedExecute(Sender: TObject);
begin
{$IFNDEF _DATE_TESTING_}
  SelectedTask.SkipTask(Now());
{$ELSE}
  SelectedTask.SkipTask(aTestDate.Date);
{$ENDIF}

  if(Assigned(FNotesForm)) then
  begin
    if(FNotesForm.WorkFlowTask = SelectedTask.WorkFlowTask) then
      FNotesForm.TaskCompleted := SelectedTask.Completed or SelectedTask.Skipped;
  end;

  vtTasks.Refresh();
  UpdateToDoWindow();
end;

// generate hint for the tree column, its different and informative
// depending on the column.
{procedure TfmWorkFlowMatterTasks.vtTasksGetHint(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  LData: PTaskData;
begin
   CellText := '';
   LData := Sender.GetNodeData(Node);
   case TTaskTreeColumns(Column) of
      ttcSeqNo:       CellText := LData.Task.HoverText;
      ttcDescription: CellText := LData.Task.TaskNote;
      ttcStarted:     if(LData.Task.Started)     then CellText := 'Started By: ' + LData.Task.StartedByName + #13'Time: ' + DateTimeToStr(LData.Task.StartedDate);
      ttcCompleted:   if(LData.Task.Completed)   then CellText := 'Completed By: ' + LData.Task.CompletedByName + #13'Time: ' + DateTimeToStr(LData.Task.CompletedDate);
      ttcCompleteBy:;
      ttcOverdueDays:;
      ttcSkipped:     if(LData.Task.Skipped) then CellText := 'Skipped By: ' + LData.Task.SkippedByName  + #13'Time: ' + DateTimeToStr(LData.Task.SkippedDate);
      ttcAssignedTo:;
      ttcNotes:       CellText := LData.Task.MostRecentNoteHint;
   end;
end;  }

// return the image for the tree node & column..
procedure TfmWorkFlowMatterTasks.vtTasksGetHint(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex;
  var LineBreakStyle: TVTTooltipLineBreakStyle; var HintText: string);
var
  LData: PTaskData;
begin
   HintText := '';
   LData := Sender.GetNodeData(Node);
   try
      case TTaskTreeColumns(Column) of
         ttcSeqNo:       HintText := LData.Task.HoverText;
         ttcDescription: HintText := LData.Task.TaskNote;
         ttcStarted:     if(LData.Task.Started)     then HintText := 'Started By: ' + LData.Task.StartedByName + #13'Time: ' + DateTimeToStr(LData.Task.StartedDate);
         ttcCompleted:   if(LData.Task.Completed)   then HintText := 'Completed By: ' + LData.Task.CompletedByName + #13'Time: ' + DateTimeToStr(LData.Task.CompletedDate);
         ttcCompleteBy:;
         ttcOverdueDays:;
         ttcSkipped:     if(LData.Task.Skipped) then HintText := 'Skipped By: ' + LData.Task.SkippedByName  + #13'Time: ' + DateTimeToStr(LData.Task.SkippedDate);
         ttcAssignedTo:;
         ttcNotes:       HintText := LData.Task.MostRecentNoteHint;
      end;
   except
   //
   end;
end;


procedure TfmWorkFlowMatterTasks.vtTasksGetImageIndex(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
  var Ghosted: Boolean; var ImageIndex: TImageIndex);
var
  LData: PTaskData;
begin
  LData := Sender.GetNodeData(Node);
  ImageIndex := -1;
  if(TTaskTreeColumns(Column) = ttcDocuments) then
  begin
    if (LData.Task.HasDocuments) and (LData.Task.ScaleCostCode = '') then
      ImageIndex := 12
    else if (LData.Task.HasDocuments) and (LData.Task.ScaleCostCode <> '') then
      ImageIndex := 34
    else if (not LData.Task.HasDocuments) and (LData.Task.ScaleCostCode <> '') then
      ImageIndex := 35;
  end else if(TTaskTreeColumns(Column) = ttcNotes) and (LData.Task.NumberOfNotes > 0) then
    ImageIndex := 10
end;

procedure TfmWorkFlowMatterTasks.vtTasksGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PTaskData;
  function FormatDateEx(ADate: TDateTime): String;
  begin
    if(Sender.IsEditing and (Column = Sender.FocusedColumn) and (Node = Sender.FocusedNode)) then
      Result := FormatDateTime('dd/mm/yyyy',ADate)
    else
      Result := ExtendedDateFormat(cmbViewDate.Date,ADate);
  end;
begin
  CellText := '';
  LData := Sender.GetNodeData(Node);
  case TTaskTreeColumns(Column) of
    ttcSeqNo:
      begin
        CellText := LData.Task.Sequence;
        if(LData.Task.Repetition > 0) then
          CellText := CellText + ' (' + IntToStr(LData.Task.Repetition) + ')';
      end;
    ttcDescription:
      begin
         CellText := LData.Task.TaskDescription;
         if LData.Task.CriticalDate then
         begin
             CellText := '**  '+ CellText + ' (** Critical Date **)';
             if (FormatDateEx(LData.Task.CompleteByDate) = '') and (not FCriticalDateMissing) then
                FCriticalDateMissing := True;
         end;
      end;
    ttcStarted:      CellText := FormatDateEx(LData.Task.StartedDate);
    ttcCompleted:    CellText := FormatDateEx(LData.Task.CompletedDate);
    ttcCompleteBy:
      // added by AES 08/01/2009
      begin
         if (SystemString('WKFLOW_SHOW_DUE_DATE') = 'N') then
         begin
            if(LData.Task.Started and not(LData.Task.Completed or LData.Task.Skipped)) then
               CellText := FormatDateEx(LData.Task.CompleteByDate);
         end
         else
         begin
            if(LData.Task.Started and not LData.Task.Skipped) then
               CellText := FormatDateEx(LData.Task.CompleteByDate);
         end;
      end;
    ttcOverdueDays:
      begin
        if(LData.Task.OverdueDays > 0) then
                     CellText := IntToStr(LData.Task.OverdueDays);
      end;
    ttcSkipped:      CellText := FormatDateEx(LData.Task.SkippedDate);
    ttcAssignedTo:   CellText := LData.Task.AssignedToName;
  end;
//  CellText := AndReplace(CellText);
end;

// action update.
procedure TfmWorkFlowMatterTasks.aMergeUpdate(Sender: TObject);
var
  LTask: TWorkflowTask;
begin
  LTask := SelectedTask;
  if(Assigned(LTask)) then
    TAction(Sender).Enabled := LTask.HasDocuments
  else
    TAction(Sender).Enabled := False;
end;

// initiate the merge window modeless..
// each task form can have one merge form..
procedure TfmWorkFlowMatterTasks.aMergeExecute(Sender: TObject);
begin
   if(SelectedTask.HasDocuments) then
   begin
      try
         if(not Assigned(FWorkFlowMergeDocument)) then
           FWorkFlowMergeDocument                   := TfmWorkFlowMergeDocument.Create(Application);
         FWorkFlowMergeDocument.ShowNoTaskDocuments := False;
         FWorkFlowMergeDocument.NMatter             := NMatter;
         FWorkFlowMergeDocument.Task                := SelectedTask;
         FWorkFlowMergeDocument.OnClose             := MergeFormClose;
         FWorkFlowMergeDocument.UpdateWindowEvent   := OnUpdateWindowEvent;
         if (not FWorkFlowMergeDocument.WorkFlowAdminDoc) then
            FWorkFlowMergeDocument.ShowModal();
      except
         on E: exception do
         begin
            MessageDlg(E.Message, mtError, [mbOK], 0);
         end;
      end;
      FreeAndNil(FWorkFlowMergeDocument);
   end;
end;

// action update
procedure TfmWorkFlowMatterTasks.aNotesUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(SelectedTask);
end;

// load the notes form on the selected task.
// each workflow form can have one notes form..
procedure TfmWorkFlowMatterTasks.aNotesExecute(Sender: TObject);
begin
  if(not Assigned(FNotesForm)) then
    FNotesForm := TfmWorkFlowTaskNotes.Create(Application);
  FNotesForm.OnClose          := NotesFormClose;
  FNotesForm.NMatter          := NMatter;
  FNotesForm.TaskString       := SelectedTask.Sequence;
  FNotesForm.TaskDescription  := SelectedTask.TaskDescription;
  FNotesForm.TaskCompleted    := SelectedTask.Completed or SelectedTask.Skipped;
  FNotesForm.WorkFlowTask     := SelectedTask.WorkflowTask;
  FNotesForm.Show();
end;

// a note was added to or removed from the task, so make sure the tree reflects this..
procedure TfmWorkFlowMatterTasks.NotesEvent(AWorkFlowTask: Integer; ANoteEvent: TNoteEvent);
var
  LTask: TWorkflowTask;
begin
  // find specified task and do note event..
  LTask := FRootTask.GetTaskOfWorkFlowTask(AWorkFlowTask);
  if(Assigned(LTask)) then
  begin
    case ANoteEvent of
      neAdd:    LTask.NumberOfNotes := LTask.NumberOfNotes + 1;
      neDelete: LTask.NumberOfNotes := LTask.NumberOfNotes - 1;
    end;
    vtTasks.Invalidate();
    UpdateToDoWindow();
  end;
end;

// the merge form close event, free and set pointer to nil
procedure TfmWorkFlowMatterTasks.MergeFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FWorkFlowMergeDocument := Nil;
end;

// notes form close event, clear pointer and free
procedure TfmWorkFlowMatterTasks.NotesFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FNotesForm := nil;
end;

// someone clicked close!!
procedure TfmWorkFlowMatterTasks.aCloseExecute(Sender: TObject);
begin
  Close();
end;

// change the color of the text baised on the statis of the
// task.
procedure TfmWorkFlowMatterTasks.vtTasksPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  LData: PTaskData;
begin
   if ((Node.ChildCount > 0) and (Column in [0,1,3]))then
      TargetCanvas.Font.Style := [fsBold];

   LData := Sender.GetNodeData(Node);
   if((LData.Task.OverDueDays > 0) or (LData.Task.HasOverdueChild and (not (vsExpanded in Node.States)))) then
      TargetCanvas.Font.Color := clRed
   else if(LData.Task.Skipped) then
      TargetCanvas.Font.Color := clSilver
   else if(LData.Task.Completed) then
      TargetCanvas.Font.Color := clBlack
   else if((LData.Task.Started and (LData.Task.CompleteByDate <> 0)) or (LData.Task.HasStartedDueChild and (not (vsExpanded in Node.States)))) then
      TargetCanvas.Font.Color := clGreen;
   if (LData.Task.CriticalDate) then
   begin
      TargetCanvas.Font.Style := [fsBold];
      TargetCanvas.Font.Color := clPurple;
   end;
end;

// the date viewing has changed, so update the task.
procedure TfmWorkFlowMatterTasks.aViewDateDateChange(Sender: TObject);
begin
  if(FRootTask.ViewDate <> Trunc(cmbViewDate.Date)) then
  begin
    FRootTask.SetViewDate(Trunc(cmbViewDate.Date));
    vtTasks.Invalidate();
    ResizeColumns();
  end;
end;

// action update.
procedure TfmWorkFlowMatterTasks.aTaskUndoUpdate(Sender: TObject);
var
  LParent,
  LTask: TWorkflowTask;
begin
  LTask := SelectedTask;
  if(Assigned(LTask)) then
  begin
    LParent := LTask.ParentTask;
    if(LParent <> FRootTask) then
      TAction(Sender).Enabled := (LTask.Started or LTask.Skipped or LParent.Completed or LParent.Skipped) and (not LTask.CriticalDate)
    else
      TAction(Sender).Enabled := (LTask.Started or LTask.Skipped) and (not LTask.CriticalDate);
  end else
    TAction(Sender).Enabled := False;
end;

// sometimes the user may accidentally start or complete or skip a task, so
// we need to clear its status..
procedure TfmWorkFlowMatterTasks.aTaskUndoExecute(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to undo ''' + SelectedTask.Sequence + ' - ' + SelectedTask.TaskDescription + ''' and all its child tasks?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    SelectedTask.UndoTask();
    vtTasks.Invalidate();
    UpdateToDoWindow();
  end;
end;

// resize the tree columns so the visible data and headers fit, seems to be
// a bug in the autofitcolumns, it ignores the headers..
procedure TfmWorkFlowMatterTasks.ResizeColumns;
var
  i: Integer;
  LColumn: TVirtualTreeColumn;
  LWidth: Integer;
  LFont: TFont;
begin
  if(FExpanding) then
    Exit;
  vtTasks.BeginUpdate();
  try
    vtTasks.Header.AutoFitColumns();

     LFont := Canvas.Font;
    try
      Canvas.Font := vtTasks.Header.Font;
      for i := 0 to vtTasks.Header.Columns.Count - 1 do
      begin
        LColumn := vtTasks.Header.Columns[i];
        LWidth  := Canvas.TextWidth(LColumn.Text) + 20;
        if(LWidth > LColumn.Width) then
          LColumn.Width := LWidth;
      end;
    finally
      Canvas.Font := LFont;
    end;
  finally
    vtTasks.EndUpdate();
  end;
end;

// when the tree is collapsed, resize columns to suit..
procedure TfmWorkFlowMatterTasks.vtTasksCollapsed(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
  ResizeColumns();
end;

// when the tree is expanded, resize the columns to suit.
procedure TfmWorkFlowMatterTasks.vtTasksExpanded(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
   ResizeColumns();
end;

// action update - change caption as required..
procedure TfmWorkFlowMatterTasks.aTreeExpandUpdate(Sender: TObject);
begin
  if(Assigned(vtTasks.FocusedNode)) then
  begin
    if(vtTasks.Expanded[vtTasks.FocusedNode]) then
    begin
      TAction(Sender).Caption := 'Collapse';
      TAction(Sender).ShortCut := VK_DIVIDE;
    end else
    begin
      TAction(Sender).Caption := 'Expand';
      TAction(Sender).ShortCut := VK_MULTIPLY;
    end;
    TAction(Sender).Enabled := (vsHasChildren in vtTasks.FocusedNode.States);
  end else
    TAction(Sender).Enabled := False;
end;

// action update - allways enabled..
procedure TfmWorkFlowMatterTasks.aTreeExpandAllUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := True;
end;

// hit the tree to expand it totally
procedure TfmWorkFlowMatterTasks.aTreeExpandAllExecute(Sender: TObject);
begin
  FExpanding := true;
  try
    vtTasks.FullExpand();
  finally
    FExpanding := False;
    ResizeColumns();
  end;
end;

// just fully expand or collapse the selected node.
procedure TfmWorkFlowMatterTasks.aTreeExpandExecute(Sender: TObject);
begin
  if(Assigned(vtTasks.FocusedNode)) then
  begin
    FExpanding := true;
    try
      if(vtTasks.Expanded[vtTasks.FocusedNode]) then
        vtTasks.FullCollapse(vtTasks.FocusedNode)
      else
        vtTasks.FullExpand(vtTasks.FocusedNode);
    finally
      FExpanding := False;
      ResizeColumns();
    end;
  end;
end;

// totally collapse the tree down to the root nodes.
procedure TfmWorkFlowMatterTasks.aTreeCollapseAllExecute(Sender: TObject);
begin
  FExpanding := true;
  try
    vtTasks.FullCollapse();
  finally
    FExpanding := False;
    ResizeColumns();
  end;
end;

// action update - allways enabled.
procedure TfmWorkFlowMatterTasks.aTreeCollapseAllUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := True;
end;

// the user has selected from the root task jump list, have to
// find the node on the tree that matches the task, select and expand it..
procedure TfmWorkFlowMatterTasks.aJumpListComboChange(Sender: TObject);
var
  LTask: TWorkflowTask;
  LNode: PVirtualNode;
  LData: PTaskData;
begin
  if(aJumpList.ItemIndex > -1) then
  begin
    LTask := TWorkflowTask(aJumpList.Items.Objects[aJumpList.ItemIndex]);

    LNode := vtTasks.RootNode.FirstChild;
    while(Assigned(LNode)) do
    begin
      LData := vtTasks.GetNodeData(LNode);
      if(LData.Task = LTask) then
      begin
        ActiveControl := vtTasks;
        vtTasks.FocusedNode := LNode;
        vtTasks.Expanded[LNode] := True;
        vtTasks.Selected[LNode] := True;
        vtTasks.ScrollIntoView(LNode,True);

        Break;
      end;

      LNode := LNode.NextSibling;
    end;

  end;
end;

// jump to and select the task that matches the lineid..
procedure TfmWorkFlowMatterTasks.JumpTask(AWorkFlowTask: Integer);
var
  LSearchData: TvtSearchData;
begin
  LSearchData.WorkFlowTask := AWorkFlowTask;
  LSearchData.Node := Nil;
  vtTasks.IterateSubtree(nil,IterGetNode,@LSearchData,[],True);
  if(Assigned(LSearchData.Node)) then
  begin
    vtTasks.Selected[LSearchData.Node] := True;
    vtTasks.FocusedNode := LSearchData.Node;
  end;
end;

// iterator callback for the above method..
procedure TfmWorkFlowMatterTasks.IterGetNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
begin
  if(PTaskData(Sender.GetNodeData(Node)).Task.WorkFlowTask = PvtSearchData(Data).WorkFlowTask) then
  begin
    PvtSearchData(Data).Node := Node;
    Abort := True;
  end;
end;

// clear the tasks..
procedure TfmWorkFlowMatterTasks.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FRootTask);
end;

procedure TfmWorkFlowMatterTasks.aGenericDocumentsUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := True;
end;

procedure TfmWorkFlowMatterTasks.aAdminDocsExecute(Sender: TObject);
begin
  try
//    if(not Assigned(fmWorkFlowAdminDocs)) then
    fmWorkFlowAdminDocs := TfmWorkFlowAdminDocs.Create(Application.MainForm);
    fmWorkFlowAdminDocs.NMatter := NMatter;
    fmWorkFlowAdminDocs.ShowModal();
  except
    on E: exception do
    begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
      FreeAndNil(fmWorkFlowAdminDocs);
    end;
  end;
end;

procedure TfmWorkFlowMatterTasks.ReloadTree;
begin
  vtTasks.BeginUpdate();
  try
    SaveTreeExpanded();
    FreeAndNil(FRootTask);

    vtTasks.Clear();

    // create a 'root' task and load from database...
    FRootTask := TWorkflowTask.Create(nil);
    FRootTask.NMatter := NMatter;
    FRootTask.WorkFlowTypeCode := WorkflowTypeCode;

    dmWorkFlowDataModuleRun.qWorkflowTasks.ParamByName('nmatter').AsInteger := NMatter;
    dmWorkFlowDataModuleRun.qWorkflowTasks.Open();
    try
//      if(dmWorkFlowDataModuleRun.qWorkflowTasks.Locate('parentlineid',VarArrayOf([0,0]),[])) then
      FRootTask.LoadChildrenFromDB();
    finally
      dmWorkFlowDataModuleRun.qWorkflowTasks.Close();
    end;

    if(FRootTask.ChildCount = 0) then
    begin
      MessageDlg('There is no tasks template for this matter type.', mtError, [mbOK], 0);
      Exit;
    end;

    // tree initalization
//    vtTasks.RootNodeCount := FRootTask.ChildCount;
    FRootTask.SetViewDate(cmbViewDate.Date);

    FRootTask.AddToTree(vtTasks,nil, FSelectedNode, FExpandedNodes);

    RefreshJumpList();

    ResizeColumns();
  finally
    vtTasks.EndUpdate();
//    if FCriticalDateMissing then
//       vtTasks.FullExpand;
  end;
end;

procedure TfmWorkFlowMatterTasks.RefreshJumpList();
var
  LChild: TWorkFlowTask;
begin
  aJumpList.Items.Clear();

  LChild := FRootTask.FirstChildTask;
  while(Assigned(LChild)) do
  begin
    aJumpList.Items.AddObject(LChild.Sequence + ' - ' + LChild.TaskDescription,LChild);
    LChild := LChild.NextTask;
  end;
end;

procedure TfmWorkFlowMatterTasks.IterSaveExpanded(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
begin
  if(vsExpanded in Node.States) then
  begin
    SetLength(FExpandedNodes,Length(FExpandedNodes) + 1);
    FExpandedNodes[Length(FExpandedNodes) - 1] := PTaskData(Sender.GetNodeData(Node)).Task.TemplateLineID
  end;
end;

procedure TfmWorkFlowMatterTasks.SaveTreeExpanded;
begin
  FSelectedNode := 0;
  if(Assigned(vtTasks.FocusedNode)) then
    FSelectedNode := PTaskData(vtTasks.GetNodeData(vtTasks.FocusedNode)).Task.TemplateLineID;

  SetLength(FExpandedNodes,0);
  vtTasks.IterateSubtree(nil,IterSaveExpanded,nil);
end;

procedure TfmWorkFlowMatterTasks.UpdateToDoWindow;
begin
  if(Assigned(fmWorkFlowToDo)) then
    fmWorkFlowToDo.RefreshTree();
end;

procedure TfmWorkFlowMatterTasks.aPrintUpdate(Sender: TObject);
begin
//
end;

procedure TfmWorkFlowMatterTasks.aPrintExecute(Sender: TObject);
begin
//  MessageDlg('This report is under re-construction and will be back in a later '+#13+#10+'build', mtWarning, [mbOK], 0);
   dmWorkFlowDataModuleRun.vtWorkFlowTasksReport.Clear();
   dmWorkFlowDataModuleRun.vtWorkFlowTasksReport.Active := True;
   FRootTask.GenerateReportData();
   ppWorkFlowTasksReport.Print;


{ qrWorkFlowTasksReport := TqrWorkFlowTasksReport.Create(Self);
  try
    dmWorkFlowDataModuleRun.vtWorkFlowTasksReport.Clear();
    dmWorkFlowDataModuleRun.vtWorkFlowTasksReport.Active := True;
    FRootTask.GenerateReportData();
    qrWorkFlowTasksReport.NMatter := FNMatter;
    qrWorkFlowTasksReport.DateToShow := cmbViewDate.Date;
    qrWorkFlowTasksReport.MatterDesc := MatterDesc;
    qrWorkFlowTasksReport.MatterClient := MatterClient;
    qrWorkFlowTasksReport.PreviewModal();
  finally
    FreeAndNil(qrWorkFlowTasksReport);
  end;    }
end;

procedure TfmWorkFlowMatterTasks.aReassignTaskExecute(Sender: TObject);
begin
  if(Assigned(SelectedTask)) then
  begin
    fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(Self);
    try
      fmEmployeeFindDialog.EmployeeCode := SelectedTask.AssignedTo;
      fmEmployeeFindDialog.EmployeeType := etOperator;
      if(fmEmployeeFindDialog.ShowModal() = mrOk) then
      begin
        SelectedTask.AssignedTo := fmEmployeeFindDialog.EmployeeCode;
        SelectedTask.UpdateDB();
        SelectedTask.AssignedToName := fmEmployeeFindDialog.EmployeeName;
        vtTasks.InvalidateNode(vtTasks.FocusedNode);
//        UpdateToDoWindow();
      end;
    finally
      FreeAndNil(fmEmployeeFindDialog);
    end;
  end;
end;

procedure TfmWorkFlowMatterTasks.vtTasksDblClick(Sender: TObject);
begin
  if(Assigned(SelectedTask)) then
  begin
    if(TTaskTreeColumns(vtTasks.FocusedColumn) = ttcNotes) then
      aNotes.Execute()
    else
      aMergeExecute(aMerge);
  end;
end;

procedure TfmWorkFlowMatterTasks.aRefreshExecute(Sender: TObject);
begin
  ReloadTree();
end;

procedure TfmWorkFlowMatterTasks.aEditDueDateUpdate(Sender: TObject);
var
   CanChangeDate: boolean;
begin
   if(Assigned(SelectedTask)) then
   begin
      if SelectedTask.CriticalDate then
         CanChangeDate := dmAxiom.Security.Workflow.ChangeCriticalDate;
      TAction(Sender).Enabled := SelectedTask.Started and (not SelectedTask.Completed) and (not SelectedTask.Skipped) and CanChangeDate; { and (not SelectedTask.CriticalDate)}
   end
   else
      TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowMatterTasks.aEditDueDateExecute(Sender: TObject);
var
  LData: PTaskData;
  LDate: TDate;
  CriticalDate: boolean;
begin
   LData := vtTasks.GetNodeData(vtTasks.FocusedNode);
   with dmWorkFlowDataModule.qryCheckCriticalDates do
   begin
      Close;
      ParamByName('templatelineid').asInteger := LData.Task.TemplateLineID;
      ParamByName('nmatter').asinteger := LData.Task.NMatter;
      Open;
      CriticalDate := (Not Eof);
   end;
   if (CriticalDate and (not dmAxiom.Security.Workflow.ChangeCriticalDate)) then
   begin
      MsgErr('This action will change the Statutory Date. Your security level does not permit this.');
      Exit;
   end;

   if(LData.Task.Started and (not LData.Task.Completed) and (not LData.Task.Skipped)) then
   begin
      LDate := LData.Task.CompleteByDate;
      if(LDate = 0) then
         LDate := Date();
      if(EditDateDialog(Self,LDate)) then
      begin
         LData.Task.CompleteByDate := LDate;
//         UpdateToDoWindow();
      end;
   end;
end;

procedure TfmWorkFlowMatterTasks.aOpenMatterExecute(Sender: TObject);
var
  LMF: TfrmMatters;
  i: Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
  begin
    if(Screen.Forms[i] is TfrmMatters) then
    begin
      if(TfrmMatters(Screen.Forms[i]).qryMatter.FieldByName('nmatter').AsInteger = NMatter) then
      begin
        if(Screen.Forms[i].WindowState = wsMinimized) then
          Screen.Forms[i].WindowState := wsNormal;
        Screen.Forms[i].BringToFront();
        Exit;
      end;
    end;
  end;

  LMF := TfrmMatters.Create(Application);

  LMF.DisplayMatter(dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter));
end;

procedure TfmWorkFlowMatterTasks.SetViewDate(ADate: TDate);
begin
  cmbViewDate.Date := ADate;
  aViewDateDateChange(cmbViewDate);
end;

procedure TfmWorkFlowMatterTasks.aAddTaskExecute(Sender: TObject);
var
  LParent, LNode: PVirtualNode;
  LData: PTaskData;
  LParentTask, LNewTask: TWorkFlowTask;
  Lrv: Integer;
begin
  LParent := vtTasks.FocusedNode;
  LParentTask := SelectedTask;

  if(LParent.Parent = vtTasks.RootNode) then
  begin
    Lrv := MessageDlg('Do you want to add a task at the end of the first level?'#13#10'Selecting No will add a task as a child of the selected task.', mtWarning, [mbYes,mbNo,mbCancel], 0);
    if(Lrv = mrCancel) then
      Exit;
    if(Lrv = mrYes) then
    begin
      LParent := vtTasks.RootNode;
      LParentTask := LParentTask.RootTask;
    end;
  end;

  vtTasks.Expanded[LParent] := True;
  LNewTask := LParentTask.AddTask(Self);
  if(Assigned(LNewTask)) then
  begin
    vtTasks.BeginUpdate();
    try
      LNode := vtTasks.AddChild(LParent);
      LData := vtTasks.GetNodeData(LNode);
      LData.Task := LNewTask;
      vtTasks.Expanded[LParent] := True;
    finally
      vtTasks.EndUpdate();
      ResizeColumns();
      RefreshJumpList();
//      UpdateToDoWindow();
    end;
  end;
end;

procedure TfmWorkFlowMatterTasks.aAddTaskUpdate(Sender: TObject);
var
  LTask: TWorkflowTask;
begin
  LTask := SelectedTask;
  if(Assigned(LTask)) then
    TAction(Sender).Enabled := (not LTask.Completed) and (not LTask.Skipped)
  else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowMatterTasks.aDeleteTaskUpdate(Sender: TObject);
var
  LTask: TWorkflowTask;
begin
  LTask := SelectedTask;
  if(Assigned(LTask)) then
    TAction(Sender).Enabled := (not LTask.Started) and (not LTask.Completed)
                           and (not LTask.Skipped) and (LTask.Custom or LTask.RepetitionBase)
  else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowMatterTasks.aDeleteTaskExecute(Sender: TObject);
var
  LParentTask: TWorkFlowTask;
  LParentNode, LNode: PVirtualNode;

begin
  LNode       := vtTasks.FocusedNode;
  LParentTask := SelectedTask.ParentTask;
  LParentNode := LNode.Parent;

  if(MessageDlg('Are you sure you want to delete the task ''' + SelectedTask.TaskDescription + '''?', mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
  begin
    if(LParentTask.DeleteTask(SelectedTask)) then
    begin
      vtTasks.BeginUpdate();
      try
        vtTasks.DeleteNode(LNode);
        if(Assigned(LParentNode.LastChild)) then
          vtTasks.FocusedNode := LParentNode.LastChild
        else
          vtTasks.FocusedNode := LParentNode;
        vtTasks.Selected[vtTasks.FocusedNode] := True;
      finally
        RefreshJumpList();
        vtTasks.EndUpdate();
//        UpdateToDoWindow();
      end;
    end;
  end;
end;

procedure TfmWorkFlowMatterTasks.aCopyTaskExecute(Sender: TObject);
begin
  SelectedTask.RepeatTask(vtTasks, vtTasks.FocusedNode.Parent, SelectedTask.ParentTask);
  RefreshJumpList();
//  UpdateToDoWindow();
  ResizeColumns();
end;

procedure TfmWorkFlowMatterTasks.aCopyTaskUpdate(Sender: TObject);
begin
  if(Assigned(SelectedTask)) then
    TAction(Sender).Enabled := (SelectedTask.Repetition = 0) and (not SelectedTask.CriticalDate)
  else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowMatterTasks.aReassignTaskUpdate(Sender: TObject);
begin
  if(Assigned(SelectedTask)) then
    TAction(Sender).Enabled := (not SelectedTask.Completed) and (not SelectedTask.Skipped)
  else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowMatterTasks.OnUpdateWindowEvent(Sender: TObject);
begin
  vtTasks.Invalidate();
//  UpdateToDoWindow();
end;

procedure TfmWorkFlowMatterTasks.SetNMatter(const Value: Integer);
begin
  FNMatter := Value;

  dmWorkFlowDataModuleRun.qMatterDetails.ParamByName('nmatter').AsInteger := FNMatter;
  dmWorkFlowDataModuleRun.qMatterDetails.Open();
  try
    MatterDesc       := dmWorkFlowDataModuleRun.qMatterDetailsSHORTDESCR.AsString;
    MatterClient     := dmWorkFlowDataModuleRun.qMatterDetailsCLIENTNAME.AsString;
    WorkflowType     := dmWorkFlowDataModuleRun.qMatterDetailsWORKFLOWTYPE.AsString;
    WorkflowTypeCode := dmWorkFlowDataModuleRun.qMatterDetailsWORKFLOWTYPECODE.AsString;
    Caption := 'Matter WorkFlow Tasks - ' + dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter) + ' - ' + MatterClient + ' (' + Trim(WorkflowType) + ')';
  finally
    dmWorkFlowDataModuleRun.qMatterDetails.Close();
  end;

end;

procedure TfmWorkFlowMatterTasks.aShowColumnUpdate(Sender: TObject);
var
  i: Integer;
  LAction: TAction;
  LColumn: TVirtualTreeColumn;
  LName: String;
begin
  LAction := TAction(Sender);
  LName := StringReplace(LAction.Caption,'&','',[rfReplaceAll]);
  for i := 0 to vtTasks.Header.Columns.Count - 1 do
  begin
    LColumn := vtTasks.Header.Columns.Items[i];
    if(LColumn.Text = LName) then
    begin
      LAction.Checked := coVisible in LColumn.Options;
      Break;
    end;
  end;

end;

procedure TfmWorkFlowMatterTasks.aShowColumnExecute(Sender: TObject);
var
  i,y: Integer;
  LAction: TAction;
  LColumn: TVirtualTreeColumn;
  LName: String;
begin
  FSettingsChanged := True;
  LAction := TAction(Sender);
  LName := StringReplace(LAction.Caption,'&','',[rfReplaceAll]);
  for i := 0 to vtTasks.Header.Columns.Count - 1 do
  begin
    LColumn := vtTasks.Header.Columns.Items[i];
    if(LColumn.Text = LName) then
    begin
      if(LAction.Checked) then
        LColumn.Options := LColumn.Options - [coVisible]
      else
        LColumn.Options := LColumn.Options + [coVisible];

      for y := 0 to Screen.FormCount - 1 do
      begin
        if(Screen.Forms[y] is TfmWorkFlowMatterTasks) then
          TfmWorkFlowMatterTasks(Screen.Forms[y]).ColumnUpdated(LName,not LAction.Checked, LColumn.Position);
      end;

      Break;
    end;
  end;
end;

procedure TfmWorkFlowMatterTasks.ColumnUpdated(AColumn: String; AVisible: Boolean; APosition: Integer);
var
  i: Integer;
  LColumn: TVirtualTreeColumn;
begin
  for i := 0 to vtTasks.Header.Columns.Count - 1 do
  begin
    LColumn := vtTasks.Header.Columns.Items[i];
    if(LColumn.Text = AColumn) then
    begin
      if(AVisible) then
        LColumn.Options := LColumn.Options + [coVisible]
      else
        LColumn.Options := LColumn.Options - [coVisible];
      LColumn.Position := APosition;
      Break;
    end;
  end;
end;

procedure TfmWorkFlowMatterTasks.vtTasksHeaderDragged(Sender: TVTHeader;
  Column: TColumnIndex; OldPosition: Integer);
var
  y: Integer;
  LColumn: TVirtualTreeColumn;
begin
  FSettingsChanged := True;
  LColumn := Sender.Columns.Items[Column];
  for y := 0 to Screen.FormCount - 1 do
  begin
    if(Screen.Forms[y] is TfmWorkFlowMatterTasks) then
      TfmWorkFlowMatterTasks(Screen.Forms[y]).ColumnUpdated(LColumn.Text ,coVisible in LColumn.Options, LColumn.Position);
  end;
end;

procedure TfmWorkFlowMatterTasks.aGenericDocumentsExecute(Sender: TObject);
begin
  try
    if(not Assigned(FWorkFlowMergeDocument)) then
      FWorkFlowMergeDocument                   := TfmWorkFlowMergeDocument.Create(Application);
    FWorkFlowMergeDocument.ShowNoTaskDocuments := True;
    FWorkFlowMergeDocument.NMatter             := NMatter;
    FWorkFlowMergeDocument.Task                := nil;
    FWorkFlowMergeDocument.OnClose             := MergeFormClose;
    FWorkFlowMergeDocument.UpdateWindowEvent   := OnUpdateWindowEvent;
    FWorkFlowMergeDocument.ShowModal();
  except
    on E: exception do
    begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
      FreeAndNil(FWorkFlowMergeDocument);
    end;
  end;
end;

procedure TfmWorkFlowMatterTasks.aCloseWindowExecute(Sender: TObject);
begin
  Close();
end;

procedure TfmWorkFlowMatterTasks.aGeneratedDocumentsUpdate(Sender: TObject);
begin
  if (Assigned(FMergeType)) then
     TAction(Sender).Visible := moSaveToDB in FMergeType.Options;
end;

procedure TfmWorkFlowMatterTasks.aGeneratedDocumentsExecute(
  Sender: TObject);
begin
  if(not Assigned(fmWorkFlowGenDocuments)) then
    fmWorkFlowGenDocuments := TfmWorkFlowGenDocuments.Create(Self);

  fmWorkFlowGenDocuments.NMatter := NMatter;
  fmWorkFlowGenDocuments.Show();
end;

function FindWorkFlowTasksWindow(ANMatter: Integer): TfmWorkFlowMatterTasks;
var
  i: Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
  begin
    if(Screen.Forms[i] is TfmWorkflowMatterTasks) then
    begin
      Result := TfmWorkflowMatterTasks(Screen.Forms[i]);
      if(Result.NMatter = ANMatter) then
        Exit;
    end;
  end;
  Result := nil;
end;


procedure TfmWorkFlowMatterTasks.JumpTaskTemplate(ALineID: Integer);
var
  LSearchData: TvtSearchData;
begin
  LSearchData.WorkFlowTask := ALineID;
  LSearchData.Node := Nil;
  vtTasks.IterateSubtree(nil,IterGetNodeTemplate,@LSearchData,[],True);
  if(Assigned(LSearchData.Node)) then
  begin
    vtTasks.Selected[LSearchData.Node] := True;
    vtTasks.FocusedNode := LSearchData.Node;
  end;
end;

procedure TfmWorkFlowMatterTasks.IterGetNodeTemplate(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer;
  var Abort: Boolean);
begin
  if(PTaskData(Sender.GetNodeData(Node)).Task.TemplateLineID = PvtSearchData(Data).WorkFlowTask) then
  begin
    PvtSearchData(Data).Node := Node;
    Abort := True;
  end;
end;

procedure TfmWorkFlowMatterTasks.aJumpListChange(Sender: TObject);
var
  LTask: TWorkflowTask;
  LNode: PVirtualNode;
  LData: PTaskData;
begin
  if(aJumpList.ItemIndex > -1) then
  begin
    LTask := TWorkflowTask(aJumpList.Items.Objects[aJumpList.ItemIndex]);

    LNode := vtTasks.RootNode.FirstChild;
    while(Assigned(LNode)) do
    begin
      LData := vtTasks.GetNodeData(LNode);
      if(LData.Task = LTask) then
      begin
//        ActiveControl := vtTasks;
        vtTasks.FocusedNode := LNode;
        vtTasks.Expanded[LNode] := True;
        vtTasks.Selected[LNode] := True;
        vtTasks.ScrollIntoView(LNode,True);

        Break;
      end;

      LNode := LNode.NextSibling;
    end;
  end;
end;

procedure TfmWorkFlowMatterTasks.bbtnExitClick(Sender: TObject);
begin
   Close;
   RemoveFromDesktop(Self);
end;

procedure TfmWorkFlowMatterTasks.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
   Text := SystemString('COMPANY');
end;

procedure TfmWorkFlowMatterTasks.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
   Text := 'Employee: ' + dmAxiom.UserName;
end;

procedure TfmWorkFlowMatterTasks.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
   Text := 'Date ' + DateToStr(cmbViewDate.Date);
end;

procedure TfmWorkFlowMatterTasks.ppDBText4Print(Sender: TObject);
var
  LSequence: String;
  i, LDots: Integer;
begin
  LDots := 0;
  LSequence := dmWorkflowDataModuleRun.vtWorkFlowTasksReportFULLSEQUENCE.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  ppDBText4.Left := 4 * LDots;
  ppDBText4.Width := 40 - ppDBText4.Left;

end;

procedure TfmWorkFlowMatterTasks.ppDBText2GetText(Sender: TObject;
  var Text: String);
begin
   Text := MatterDesc;
end;

procedure TfmWorkFlowMatterTasks.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
   Text := MatterClient;
end;

procedure TfmWorkFlowMatterTasks.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
   Text := dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter);
end;

end.
