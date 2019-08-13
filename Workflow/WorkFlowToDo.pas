unit WorkFlowToDo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VirtualTrees, ImgList, ActnList, ActnMan, ToolWin, ActnCtrls,
  WorkflowTask, WorkFlowTaskNotes, WorkFlowMergeDocument,
  Menus, WorkFlowMatterTasks, ActnMenus, dxBar, dxBarExtItems, cxControls, cxContainer, cxEdit,
  cxCheckBox, XPStyleActnCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, ppVar, ppStrtch, ppMemo, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDesignLayer, ppParameter,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DB, OracleUniProvider, Uni,
  DBAccess, MemDS, System.Actions, cxBarEditItem, System.ImageList;

type
  TToDoView = (tdvNone, tdvMatter, tdvDate, tdvSequence);

  TfmWorkFlowToDo = class(TForm)
    ActionManager: TActionManager;
    ImageList: TImageList;
    vtTasks: TVirtualStringTree;
    aMerge: TAction;
    aTaskNotes: TAction;
    aGenericDocuments: TAction;
    aAdminDocs: TAction;
    aCompleteTask: TAction;
    aSkipTask: TAction;
    aOpenTask: TAction;
    aJumpToday: TAction;
    aChangeEmployee: TAction;
    pmTasks: TPopupMenu;
    miCompleteTask: TMenuItem;
    miSkipTask: TMenuItem;
    N1: TMenuItem;
    miMergeTaskDocs: TMenuItem;
    miTaskNotes: TMenuItem;
    miOpenMatterTasks: TMenuItem;
    aNewAppointment: TAction;
    aPrint: TAction;
    aReassignTask: TAction;
    miReAssignTask: TMenuItem;
    N2: TMenuItem;
    aRefresh: TAction;
    N3: TMenuItem;
    miRefresh: TMenuItem;
    aEditDueDate: TAction;
    miEditDueDate: TMenuItem;
    aOpenMatter: TAction;
    miOpenMatter: TMenuItem;
    aSwitchView: TAction;
    SwitchView1: TMenuItem;
    dxBarManager1: TdxBarManager;
    bcmbDateFrom: TdxBarDateCombo;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    bbtnGenericDocs: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxMatter: TdxBarButton;
    bcmbDateTo: TdxBarDateCombo;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarStatic1: TdxBarStatic;
    miDeleteTask: TMenuItem;
    aDeleteTask: TAction;
    miPrintTask: TMenuItem;
    N4: TMenuItem;
    aPrintSelected: TAction;
    pmPrint: TdxBarPopupMenu;
    dxbtnPrintSelectedTasks: TdxBarButton;
    dxBarButton17: TdxBarButton;
    pmEmployeeList: TdxBarPopupMenu;
    edBeSeq: TdxBarEdit;
    dxBarStatic2: TdxBarStatic;
    aSwitchView2: TAction;
    dxBarSubItem4: TdxBarSubItem;
    dxDate: TdxBarButton;
    SwitchView21: TMenuItem;
    dxSequence: TdxBarButton;
    actSequence: TAction;
    bySequence1: TMenuItem;
    N5: TMenuItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    actStarted: TAction;
    Action2: TAction;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    qryWorkFlowTaskReport: TUniQuery;
    qryWorkFlowTaskReportWORKFLOWTASK: TFloatField;
    qryWorkFlowTaskReportFULLSEQUENCE: TStringField;
    qryWorkFlowTaskReportTASKORDER: TStringField;
    qryWorkFlowTaskReportNMATTER: TFloatField;
    qryWorkFlowTaskReportTEMPLATELINEID: TFloatField;
    qryWorkFlowTaskReportREPETITION: TFloatField;
    qryWorkFlowTaskReportREPETITIONBASE: TStringField;
    qryWorkFlowTaskReportCUSTOM: TStringField;
    qryWorkFlowTaskReportSTARTED: TDateTimeField;
    qryWorkFlowTaskReportSTARTEDBY: TStringField;
    qryWorkFlowTaskReportSTARTEDBYNAME: TStringField;
    qryWorkFlowTaskReportWORKFLOWTYPECODE: TStringField;
    qryWorkFlowTaskReportSEQNO: TFloatField;
    qryWorkFlowTaskReportPARENTLINEID: TFloatField;
    qryWorkFlowTaskReportTASKDESCRIPTION: TStringField;
    qryWorkFlowTaskReportTASKNOTE: TStringField;
    qryWorkFlowTaskReportCOMPLETEDAYS: TFloatField;
    qryWorkFlowTaskReportCOMPLETEBYDATE: TDateTimeField;
    qryWorkFlowTaskReportDAYSOVERDUE: TFloatField;
    qryWorkFlowTaskReportSHORTDESCR: TStringField;
    qryWorkFlowTaskReportFILEID: TStringField;
    qryWorkFlowTaskReportWORKFLOWTYPE: TStringField;
    qryWorkFlowTaskReportHASDOCUMENTS: TFloatField;
    qryWorkFlowTaskReportHASNOTES: TFloatField;
    qryWorkFlowTaskReportCLIENTNAME: TStringField;
    dsWorkFlowTaskReport: TUniDataSource;
    plWorkFlowTaskReport: TppDBPipeline;
    ppWorkFlowTodoReport: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText4: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    qToDoTasksDate: TUniQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField7: TFloatField;
    DateTimeField2: TDateTimeField;
    FloatField8: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField13: TStringField;
    dsToDoTasksDate: TUniDataSource;
    plToDoTasksDate: TppDBPipeline;
    ppWorkFlowToDoReportDate: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText9: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape1: TppShape;
    ppDBText15: TppDBText;
    ppLabel25: TppLabel;
    ppDBText11: TppDBText;
    ppLabel21: TppLabel;
    qryWorkflowToDoSequence: TUniQuery;
    FloatField11: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField16: TStringField;
    StringField17: TStringField;
    DateTimeField3: TDateTimeField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField17: TFloatField;
    DateTimeField4: TDateTimeField;
    FloatField18: TFloatField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    StringField26: TStringField;
    dsWorkflowToDoSequence: TUniDataSource;
    plWorkflowToDoSequence: TppDBPipeline;
    ppWorkFlowToDoReportSequence: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    cbExcCritDate: TcxBarEditItem;
    cbUseDateTo: TcxBarEditItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure vtTasksGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vtTasksCollapsing(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var Allowed: Boolean);
    procedure FormShow(Sender: TObject);
    procedure aCloseWindowExecute(Sender: TObject);
    procedure aMergeExecute(Sender: TObject);
    procedure aMergeUpdate(Sender: TObject);
    procedure aTaskNotesExecute(Sender: TObject);
    procedure aTaskNotesUpdate(Sender: TObject);
    procedure aAdminDocsExecute(Sender: TObject);
    procedure aCompleteTaskExecute(Sender: TObject);
    procedure aCompleteTaskUpdate(Sender: TObject);
    procedure aSkipTaskExecute(Sender: TObject);
    procedure aOpenTaskExecute(Sender: TObject);
    procedure aOpenTaskUpdate(Sender: TObject);
    procedure vtTasksPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure aJumpTodayUpdate(Sender: TObject);
    procedure aJumpTodayExecute(Sender: TObject);
    procedure aUseDateToClick(Sender: TObject);
    procedure aDateToUpdate(Sender: TObject);
    procedure aChangeEmployeeExecute(Sender: TObject);
    procedure vtTasksCompareNodes(Sender: TBaseVirtualTree; Node1,
      Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
    procedure vtTasksBeforeItemErase(Sender: TBaseVirtualTree;
      Canvas: TCanvas; Node: PVirtualNode; ItemRect: TRect;
      var ItemColor: TColor; var EraseAction: TItemEraseAction);
    procedure aGenericDocumentsUpdate(Sender: TObject);
    procedure aNewAppointmentExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aPrintUpdate(Sender: TObject);
    procedure aReassignTaskExecute(Sender: TObject);
    procedure vtTasksDblClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aEditDueDateExecute(Sender: TObject);
    procedure aOpenMatterExecute(Sender: TObject);
    procedure aSwitchViewExecute(Sender: TObject);
    procedure aSwitchViewUpdate(Sender: TObject);
    procedure vtTasksColumnResize(Sender: TVTHeader; Column: TColumnIndex);
    procedure aDateFromUserInput(Sender: TObject; const UserString: string;
      var DateAndTime: TDateTime; var AllowChange: Boolean);
    procedure aDateToUserInput(Sender: TObject; const UserString: string;
      var DateAndTime: TDateTime; var AllowChange: Boolean);
    procedure vtTasksGetHint(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure aDeleteTaskExecute(Sender: TObject);
    procedure aPrintSelectedExecute(Sender: TObject);
    procedure aPrintSelectedUpdate(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure edBeSeqChange(Sender: TObject);
    procedure aSwitchView2Update(Sender: TObject);
    procedure aSwitchView2Execute(Sender: TObject);
    function compareSequence(seq1,seq2 : String) : integer;
    procedure actSequenceExecute(Sender: TObject);
    procedure pmTasksPopup(Sender: TObject);
    procedure dxBarSubItem3Popup(Sender: TObject);
    procedure actStartedUpdate(Sender: TObject);
    procedure actStartedExecute(Sender: TObject);
    procedure cbExcCritDateClick(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure vtTasksGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure bcmbDateToCurChange(Sender: TObject);
    procedure cbExcCritDatePropertiesEditValueChanged(Sender: TObject);
    procedure vtTasksGetImageIndex(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Kind: TVTImageKind; Column: TColumnIndex; var Ghosted: Boolean;
      var ImageIndex: TImageIndex);
  private
    { Private declarations }
    FDateFrom,
      FDateTo: TDate;
    FRootTask: TWorkFlowTask;
    FWorkFlowMergeDocument: TfmWorkFlowMergeDocument;
    FNotesForm: TfmWorkFlowTaskNotes;
    FEmployeeCode,
      FEmployeeName: string;
    FTopMostMatter,
      FTopMostDays: Integer;
//    FOutlookIntegrator: TOutlookIntegrator;
    FInitalViewType,
      FViewType: TToDoView;
    FLoadingTree: Boolean;
    FUpdatingColumns: Boolean;
    FSeqNo: string;
    FHideGenericDocs: string;
    FSettingsChanged: Boolean;
    FsqlWorkFlowTodoReport: string;
    FsqlWorkFlowTaskReport: string;
    FsqlWorkflowToDoSequence: string;
    
    procedure ColumnUpdated(AColumn: String; AVisible: Boolean; APosition: Integer);

    procedure SetViewType(const Value: TToDoView);
    function RecurseFindNode(AParentNode: PVirtualNode;
      AFullSequence: string): PVirtualNode;
    function GetMatterNode(ANMatter: Integer): Pointer;
{    function GetParentNode(AMatterNode: PVirtualNode;
      AFullSequence: String): PVirtualNode;}
    procedure LoadTreeMatter();
    procedure LoadTreeSequence();
    procedure LoadTreeDate();
    procedure LoadTree();
    procedure LoadRootTask(ANMatter: Integer);
    procedure MergeFormClose(Sender: TObject; var Action: TCloseAction);
    procedure NotesFormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetCaption();
    procedure UpdateTasksWindow(ANMatter: Integer);
    procedure CompleteTask;
    procedure IterFindTask(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    procedure OnUpdateWindowEvent(Sender: TObject);

    procedure Initialise(EmployeeCode: String; DateFrom, DateTo: TDate;
                         AExcCritDate: boolean; ASQLReport: string;
                         AQuery: TUniQuery; AOrder: string); overload;
    procedure Initialise(TasksList: TStrings; EmployeeCode: String;
                         DateFrom, DateTo: TDate; ASQLReport: string;
                         AQuery: TUniQuery; AOrder: string); overload;
    procedure Initialise(TasksList: TStrings; ASQLReport: string; AQuery: TUniQuery; AOrder: string); overload;

    property ViewType: TToDoView read FViewType write SetViewType;
  public
    procedure NotesEvent(AWorkFlowTask: Integer; ANoteEvent: TNoteEvent);
    procedure SetViewDate(ADate: TDate);
    { Public declarations }
    procedure RefreshTree();
  end;

var
  fmWorkFlowToDo: TfmWorkFlowToDo;

implementation

uses WorkFlowDataModule, MiscFunc, ComCtrls,
      WorkFlowAdminDocs, Printers, EmployeeFindDialog,
      Matters, DateEditDialog, WorkFlowDataModuleRun,
      WorkFlowDataModuleTasks, Desktop, AxiomData;

{$R *.dfm}

const
  C_SETTINGOWNER = 'WORKFLOWTODO';
type
  PToDoTask = ^TToDoTask;
  TToDoTask = record
    TaskOrder: string;
    WorkFlowTask: Integer;
    MatterSortOrder: Integer;
    FullSequence: string;
    NMatter,
      TemplateLineID: Integer;
    Started: TDateTime;
    StartedBy,
      StartedByName,
      WorkFlowTypeCode: string;
    SeqNo,
      ParentLineID: Integer;
    TaskDescription,
      TaskNote: string;
    CompleteDays: Integer;
    CompleteByDate: TDate;
    DaysOverDue: Integer;
    ShortDescr,
      FileID,
      WorkFlowType: string;
    HasDocuments: Integer;
    HasNotes: Integer;
    ClientName: string;
    Repetition: Integer;
    RepetitionBase: Boolean;
    critcalDate : boolean;
    critcalAlert : boolean;
    CompletedDate : TDateTime;
    Skipped : TDateTime;
  end;

  PIterData = ^TIterData;
  TIterData = record
    Node: PVirtualNode;
    WorkFlowTask: Integer;
  end;

  PvtDelData = ^TvtDelData;
  TvtDelData = record
    DeleteExisting: Boolean;
  end;

  // Tree Data - all required task information.
  PTaskData = ^TTaskData;
  TTaskData = record
    WorkFlowTask: Integer;
    LineID: Integer;
    ParentLineID: Integer;
    SeqNo: Integer;
    Description: string;
    Note: string;
    DaysFrom: Integer;
    StartWhenRelated: Integer;
    CompleteDays: Integer;
    CompleteWhenRelated: Integer;
    SkipWhenRelated: Integer;
    DueDateLinkToRelated: Integer;
    DueDateLinkToDaysFrom: Integer;
    AssignTo: string;
    HasDocTemplates: Boolean;
    MarkedDeleted: Boolean;
    ScaleCostCode: string;
    ShowFee: Boolean;
    EMailOverdue: string;
    Watcher: string;
    WatchFor: string;
  end;

  TToDoColumnsMatter = (tdcmTask = 0, tdcmDocs = 1, tdcmNotes = 2, tdcmDescription = 3, tdcmStarted = 4, tdcmDueBy = 5, tdcmOverDueDays = 6);
  TToDoColumnsDate = (tdcdDueBy = 0, tdcdNONE = 1, tdcdDocs = 2, tdcdNotes = 3, tdcdDescription = 4, tdcdStarted = 5, tdcdOverDueDays = 6);

const
  TToDoColumnTextMatter: array[TToDoColumnsMatter] of string = ('Task', 'D', 'N', 'Task Description', 'Started', 'Due Date', 'Days Overdue');
  TToDoColumnTextDate: array[TToDoColumnsDate] of string = ('Due Date', '', 'D', 'N', 'Task Description', 'Started', 'Days Overdue');

  TToDoColumnMaxWidthMatter: array[TToDoColumnsMatter] of Integer = (10000, 20, 20, 10000, 10000, 10000, 10000);
  TToDoColumnMaxWidthDate: array[TToDoColumnsDate] of Integer = (10000, 0, 20, 20, 10000, 10000, 10000);
  TToDoColumnMinWidthMatter: array[TToDoColumnsMatter] of Integer = (100, 20, 20, 200, 75, 75, 80);
  TToDoColumnMinWidthDate: array[TToDoColumnsDate] of Integer = (150, 0, 20, 20, 200, 75, 80);

var
  TToDoColumnWidthMatter: array[TToDoColumnsMatter] of Integer = (100, 20, 20, 200, 75, 75, 80);
  TToDoColumnWidthDate: array[TToDoColumnsDate] of Integer = (150, 0, 20, 20, 200, 75, 80);


procedure TfmWorkFlowToDo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: TToDoColumnsMatter;
  x: integer;
  LColumn: TVirtualTreeColumn;
begin
//  FreeAndNil(FOutlookIntegrator);
  FreeAndNil(FRootTask);
  SettingSave(C_SETTINGOWNER, 'WINDOWSTATE', Integer(WindowState));
  if (WindowState <> wsMaximized) then
  begin
    SettingSave(C_SETTINGOWNER, 'LEFT', Left);
    SettingSave(C_SETTINGOWNER, 'WIDTH', Width);
    SettingSave(C_SETTINGOWNER, 'TOP', Top);
    SettingSave(C_SETTINGOWNER, 'HEIGHT', Height);
  end;

  SettingSave(C_SETTINGOWNER, 'COLUMNSSAVED', True);
  for i := Low(TToDoColumnWidthMatter) to High(TToDoColumnWidthMatter) do
  begin
    SettingSave(C_SETTINGOWNER, 'MATTERCOLUMNWIDTH' + IntToStr(Integer(i)), TToDoColumnWidthMatter[i]);
    SettingSave(C_SETTINGOWNER, 'DATECOLUMNWIDTH' + IntToStr(Integer(i)), TToDoColumnWidthDate[TToDoColumnsDate(i)]);
  end;

  SettingSave(C_SETTINGOWNER, 'VIEWTYPE', Integer(ViewType));

  if Boolean(cbExcCritDate.EditValue) = True then
   SettingSave(C_SETTINGOWNER, 'EXCLUDECRITICALDATE', 'Y')
  else
   SettingSave(C_SETTINGOWNER, 'EXCLUDECRITICALDATE', 'N');

  if(FSettingsChanged) then
  begin
    for x := 0 to vtTasks.Header.Columns.Count - 1 do
    begin
      LColumn := vtTasks.Header.Columns.Items[x];
      SettingSave(C_SETTINGOWNER,'COL' + LColumn.Text + 'VIS',( coVisible in LColumn.Options));
      SettingSave(C_SETTINGOWNER,'COL' + LColumn.Text + 'POS',LColumn.Position);
    end;
  end;
  SettingSave(C_SETTINGOWNER,'SAVED',True);

  if (Assigned(FNotesForm)) then
    FNotesForm.OnClose := nil;
  if (Assigned(FWorkFlowMergeDocument)) then
  begin
    FWorkFlowMergeDocument.OnClose := nil;
    FWorkFlowMergeDocument.UpdateWindowEvent := nil;
  end;

  Action := caFree;
  fmWorkFlowToDo := nil;
end;

procedure TfmWorkFlowToDo.FormCreate(Sender: TObject);
var
  i: TToDoColumnsMatter;
begin
   Screen.Cursor := crHourGlass;
   ConvertToHighColor(ImageList);
   fmWorkFlowToDo := Self;

   FViewType := tdvNone;
   FUpdatingColumns := True;

   FDateFrom := 0;
   FDateTo := 0;
   if (not Assigned(dmWorkFlowDataModule)) then
      dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
   if (SettingLoadInteger(C_SETTINGOWNER, 'LEFT') <> 0) then
   begin
      Left := SettingLoadInteger(C_SETTINGOWNER, 'LEFT');
      Width := SettingLoadInteger(C_SETTINGOWNER, 'WIDTH');
      Top := SettingLoadInteger(C_SETTINGOWNER, 'TOP');
      Height := SettingLoadInteger(C_SETTINGOWNER, 'HEIGHT');
   end;
   WindowState := TWindowState(SettingLoadInteger(C_SETTINGOWNER, 'WINDOWSTATE'));

   if (SettingLoadBoolean(C_SETTINGOWNER, 'COLUMNSSAVED') and SettingExists(C_SETTINGOWNER, 'MATTERCOLUMNWIDTH0')) then
   begin
      for i := Low(TToDoColumnWidthMatter) to High(TToDoColumnWidthMatter) do
      begin
         TToDoColumnWidthMatter[i] := SettingLoadInteger(C_SETTINGOWNER, 'MATTERCOLUMNWIDTH' + IntToStr(Integer(i)));
         TToDoColumnWidthDate[TToDoColumnsDate(i)] := SettingLoadInteger(C_SETTINGOWNER, 'DATECOLUMNWIDTH' + IntToStr(Integer(i)));
      end;
      FInitalViewType := TToDoView(SettingLoadInteger(C_SETTINGOWNER, 'VIEWTYPE'));
   end;

   if (FInitalViewType = tdvNone) then
      FInitalViewType := tdvDate;

   FEmployeeCode := dmWorkFlowDataModule.UserID;
   FEmployeeName := dmWorkFlowDataModule.UserName;

   bcmbDateFrom.Date := Date();
   bcmbDateTo.Date := Date();
//  aDateFrom.Date := Date();
//  aDateTo.Date := Date();
//  cbUsedDateTo.Checked := False;

   FHideGenericDocs := SystemString('HIDE_WKFLOW_GENERIC_DOCS');
   bbtnGenericDocs.enabled := (FHideGenericDocs = 'N');

  // set SQL for reports
   FsqlWorkFlowTodoReport     := qryWorkFlowTaskReport.SQL.Text;
   FsqlWorkFlowTaskReport     := qToDoTasksDate.SQL.Text;
   FsqlWorkflowToDoSequence   := qryWorkflowToDoSequence.SQL.Text;

  Screen.Cursor := crDefault;
end;


function TfmWorkFlowToDo.RecurseFindNode(AParentNode: PVirtualNode; AFullSequence: string): PVirtualNode;
var
  LNode, LNodeX: PVirtualNode;
  LData: PToDoTask;
begin
  Result := nil;
  LData := vtTasks.GetNodeData(AParentNode);
  if (Assigned(LData)) then
  begin
    if (Pos(LData.FullSequence, AFullSequence) = 1) then
    begin
      LNodeX := RecurseFindNode(AParentNode.FirstChild, AFullSequence);
      if (Assigned(LNodeX)) then
        Result := LNodeX
      else
        Result := AParentNode;
    end else
    begin
      LNode := AParentNode.NextSibling;
      while (Assigned(LNode)) do
      begin
        LNodeX := RecurseFindNode(LNode, AFullSequence);
        if (Assigned(LNodeX)) then
        begin
          Result := LNodeX;
          Exit;
        end;
        LNode := LNode.NextSibling;
      end;
    end;
  end;
end;

{function TfmWorkFlowToDo.GetParentNode(AMatterNode: PVirtualNode; AFullSequence: String): PVirtualNode;
var
  LNode: PVirtualNode;
begin
  Result := AMatterNode;

  LNode := RecurseFindNode(AMatterNode.FirstChild, AFullSequence);
  if(Assigned(LNode)) then
    Result := LNode;
end;}

function TfmWorkFlowToDo.GetMatterNode(ANMatter: Integer): Pointer;
var
  LNode: PVirtualNode;
begin
  LNode := vtTasks.RootNode.FirstChild;
  while (Assigned(LNode)) do
  begin
    Result := vtTasks.GetNodeData(LNode);
    if (PToDoTask(Result).NMatter = ANMatter) then
      Exit;
    LNode := LNode.NextSibling;
  end;
  Result := nil;
end;

procedure TfmWorkFlowToDo.LoadTree;
begin
  if ((FDateFrom = bcmbDateFrom.Date) and (FDateTo = bcmbDateTo.Date) and (FSeqNo = edBeSeq.text)) then
    Exit;

  Screen.Cursor := crSQLWait;
  if (FLoadingTree) then
    Exit;
  FLoadingTree := True;
  try
    if (boolean(cbUseDateTo.EditValue) = True) then
    begin
      FDateTo := bcmbDateTo.Date;
      FDateFrom := bcmbDateFrom.Date;
    end else
    begin
      FDateFrom := bcmbDateFrom.Date;
      FDateTo := FDateFrom;
      bcmbDateTo.Date := FDateFrom;
    end;

    FSeqNo := edBeSeq.Text;

    case ViewType of
      tdvMatter: LoadTreeMatter();
      tdvDate: LoadTreeDate();
      tdvSequence: LoadTreeSequence();
    end;

    SetCaption();
  finally
    FLoadingTree := False;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmWorkFlowToDo.LoadTreeMatter();
var
  LParentNode, LMatterNode, LNode: PVirtualNode;
  LMatterData, LData: PToDoTask;
  LMatterSortOrder, LNMatter: Integer;
  LFullSequence: string;
begin
  LMatterNode := nil;
  LNMatter := -1;

  vtTasks.BeginUpdate();
  try
    vtTasks.Clear();

    dmWorkflowDataModuleRun.qToDoTasks.ParamByName('emp').AsString := FEmployeeCode;
    dmWorkflowDataModuleRun.qToDoTasks.ParamByName('startdate').AsDate := FDateFrom;
    dmWorkflowDataModuleRun.qToDoTasks.ParamByName('enddate').AsDate := FDateTo;

    dmWorkflowDataModuleRun.qToDoTasks.ParamByName('critical_date').Clear;
    if boolean(cbExcCritDate.EditValue) = True then
       dmWorkflowDataModuleRun.qToDoTasks.ParamByName('critical_date').AsString := 'N';

    dmWorkflowDataModuleRun.qToDoTasks.Open();
    try
      while (not dmWorkflowDataModuleRun.qToDoTasks.Eof) do
      begin
        if (LNMatter <> dmWorkflowDataModuleRun.qToDoTasksNMATTER.AsInteger) then
        begin
          LMatterNode := vtTasks.AddChild(nil);
          LMatterData := vtTasks.GetNodeData(LMatterNode);
          LMatterData.NMatter := dmWorkflowDataModuleRun.qToDoTasksNMATTER.AsInteger;
          LMatterData.WorkFlowTypeCode := dmWorkflowDataModuleRun.qToDoTasksWORKFLOWTYPECODE.AsString;
          LMatterData.ShortDescr := dmWorkflowDataModuleRun.qToDoTasksSHORTDESCR.AsString;
          LMatterData.FileID := dmWorkflowDataModuleRun.qToDoTasksFILEID.AsString;
          LMatterData.WorkFlowType := dmWorkflowDataModuleRun.qToDoTasksWORKFLOWTYPE.AsString;
          LMatterData.ClientName := dmWorkflowDataModuleRun.qToDoTasksCLIENTNAME.AsString;
          LMatterData.TemplateLineID := -1;
          LNMatter := LMatterData.NMatter;
        end;

        LFullSequence := dmWorkflowDataModuleRun.qToDoTasksFULLSEQUENCE.AsString;

        LParentNode := LMatterNode; //GetParentNode(LMatterNode, LFullSequence);
        LNode := vtTasks.AddChild(LParentNode);
        LData := vtTasks.GetNodeData(LNode);
        vtTasks.Expanded[LParentNode] := True; // ensure expanded.

        LData.WorkFlowTask := dmWorkflowDataModuleRun.qToDoTasksWORKFLOWTASK.AsInteger;
        LData.FullSequence := LFullSequence;
        LData.NMatter := dmWorkflowDataModuleRun.qToDoTasksNMATTER.AsInteger;
        LData.TemplateLineID := dmWorkflowDataModuleRun.qToDoTasksTEMPLATELINEID.AsInteger;
        LData.Started := dmWorkflowDataModuleRun.qToDoTasksSTARTED.AsDateTime;
        LData.StartedBy := dmWorkflowDataModuleRun.qToDoTasksSTARTEDBY.AsString;
        LData.StartedByName := dmWorkflowDataModuleRun.qToDoTasksSTARTEDBYNAME.AsString;
        LData.WorkFlowTypeCode := dmWorkflowDataModuleRun.qToDoTasksWORKFLOWTYPECODE.AsString;
//        LData.SeqNo := dmWorkflowDataModuleRun.qToDoTasks.FieldByName('SEQNO').AsInteger;
        LData.ParentLineID := dmWorkflowDataModuleRun.qToDoTasksPARENTLINEID.AsInteger;
        LData.TaskDescription := dmWorkflowDataModuleRun.qToDoTasksTASKDESCRIPTION.AsString;
        LData.TaskNote := dmWorkflowDataModuleRun.qToDoTasksTASKNOTE.AsString;
        LData.CompleteDays := dmWorkflowDataModuleRun.qToDoTasksCOMPLETEDAYS.AsInteger;
        if (not dmWorkflowDataModuleRun.qToDoTasksCOMPLETEBYDATE.IsNull) then
          LData.CompleteByDate := dmWorkflowDataModuleRun.qToDoTasksCOMPLETEBYDATE.AsDateTime
        else
          LData.CompleteByDate := 0;
        if (not dmWorkflowDataModuleRun.qToDoTasksDAYSOVERDUE.IsNull) then
          LData.DaysOverDue := dmWorkflowDataModuleRun.qToDoTasksDAYSOVERDUE.AsInteger;
        LData.ShortDescr := dmWorkflowDataModuleRun.qToDoTasksSHORTDESCR.AsString;
        LData.FileID := dmWorkflowDataModuleRun.qToDoTasksFILEID.AsString;
        LData.WorkFlowType := dmWorkflowDataModuleRun.qToDoTasksWORKFLOWTYPE.AsString;
        LData.HasDocuments := dmWorkflowDataModuleRun.qToDoTasksHASDOCUMENTS.AsInteger;
        LData.HasNotes := dmWorkflowDataModuleRun.qToDoTasksHASNOTES.AsInteger;
        LData.ClientName := dmWorkflowDataModuleRun.qToDoTasksCLIENTNAME.AsString;
        LData.Repetition := dmWorkflowDataModuleRun.qToDoTasksREPETITION.AsInteger;
        LData.RepetitionBase := dmWorkflowDataModuleRun.qToDoTasksREPETITIONBASE.AsString = 'Y';
        LData.critcalDate := dmWorkflowDataModuleRun.qToDoTasksCRITICAL_DATE.AsString = 'Y';
        LData.critcalAlert := dmWorkflowDataModuleRun.qToDoTasksCRITICAL_ALERT.AsString = 'Y';
        LData.CompletedDate := dmWorkflowDataModuleRun.qToDoTasksCOMPLETED.AsDateTime;
        LData.Skipped := dmWorkflowDataModuleRun.qToDoTasksSKIPPED.AsDateTime;

        dmWorkflowDataModuleRun.qToDoTasks.Next();
      end;
    finally
      dmWorkflowDataModuleRun.qToDoTasks.Close();
    end;

    FTopMostMatter := -1;
    LMatterSortOrder := 0;

    // now re-order matters so the one with the most overdue task shows..
    dmWorkflowDataModuleRun.qToDoMatterOrder.ParamByName('emp').AsString := FEmployeeCode;
    dmWorkflowDataModuleRun.qToDoMatterOrder.ParamByName('startdate').AsDate := FDateFrom;
    dmWorkflowDataModuleRun.qToDoMatterOrder.ParamByName('enddate').AsDate := FDateTo;
    dmWorkflowDataModuleRun.qToDoMatterOrder.Open();
    try
      while (not dmWorkflowDataModuleRun.qToDoMatterOrder.Eof) do
      begin
        if (FTopMostMatter < 0) then
        begin
          FTopMostMatter := dmWorkflowDataModuleRun.qToDoMatterOrderNMATTER.AsInteger;
          FTopMostDays := dmWorkflowDataModuleRun.qToDoMatterOrderDAYSOVERDUE.AsInteger;
        end;

        LMatterData := GetMatterNode(dmWorkflowDataModuleRun.qToDoMatterOrderNMATTER.AsInteger);

        if (Assigned(LMatterData)) then
        begin
          Inc(LMatterSortOrder);
          LMatterData.MatterSortOrder := LMatterSortOrder;
        end;

        dmWorkflowDataModuleRun.qToDoMatterOrder.Next();
      end;
    finally
      dmWorkflowDataModuleRun.qToDoMatterOrder.Close();
    end;

  finally
    vtTasks.EndUpdate();
  end;
end;

procedure TfmWorkFlowToDo.LoadTreeDate();
var
  LParentNode, LDateNode, LMatterNode, LNode: PVirtualNode;
  LDateData, LMatterData, LData: PToDoTask;
  LNMatter: Integer;
  LDate: TDate;
  LFullSequence: string;
begin
  LMatterNode := nil;
  LDateNode := nil;
  LNMatter := -1;
  LDate := 0;
  FTopMostDays := 0;
  FTopMostMatter := 0;

  vtTasks.BeginUpdate();
  try
    vtTasks.Clear();

    dmWorkflowDataModuleRun.qToDoTasksDate.ParamByName('emp').AsString := FEmployeeCode;
    dmWorkflowDataModuleRun.qToDoTasksDate.ParamByName('startdate').AsDate := FDateFrom;
    dmWorkflowDataModuleRun.qToDoTasksDate.ParamByName('enddate').AsDate := FDateTo;
    dmWorkflowDataModuleRun.qToDoTasksDate.ParamByName('SEQNO').AsString := FSeqNo;

    dmWorkflowDataModuleRun.qToDoTasksDate.ParamByName('critical_date').Clear;
    if boolean(cbExcCritDate.EditValue) = True then
       dmWorkflowDataModuleRun.qToDoTasksDate.ParamByName('critical_date').AsString := 'N';
    dmWorkflowDataModuleRun.qToDoTasksDate.Open();
    try
      while (not dmWorkflowDataModuleRun.qToDoTasksDate.Eof) do
      begin

        if (LDate <> Trunc(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETEBYDATE').AsDateTime)) then
        begin
          LDateNode := vtTasks.AddChild(nil);
          LDateData := vtTasks.GetNodeData(LDateNode);
          LDateData.TemplateLineID := -2;
          LDateData.CompleteByDate := Trunc(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETEBYDATE').AsDateTime);
          LDateData.DaysOverDue := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').AsInteger;
          LDate := LDateData.CompleteByDate;
          LNMatter := -1;

          if (FTopMostDays < LDateData.DaysOverDue) then
            FTopMostDays := LDateData.DaysOverDue;
        end;

        if (LNMatter <> dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('NMATTER').AsInteger) then
        begin
          LMatterNode := vtTasks.AddChild(LDateNode);
          LMatterData := vtTasks.GetNodeData(LMatterNode);
          LMatterData.NMatter := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('NMATTER').AsInteger;
          LMatterData.WorkFlowTypeCode := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('WORKFLOWTYPECODE').AsString;
          LMatterData.ShortDescr := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('SHORTDESCR').AsString;
          LMatterData.FileID := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('FILEID').AsString;
          LMatterData.WorkFlowType := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('WORKFLOWTYPE').AsString;
          LMatterData.ClientName := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('CLIENTNAME').AsString;
          LMatterData.TemplateLineID := -1;
          LMatterData.CompleteByDate := Trunc(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETEBYDATE').AsDateTime);
          LMatterData.DaysOverDue := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').AsInteger;
          LNMatter := LMatterData.NMatter;
          vtTasks.Expanded[LDateNode] := True; // ensure expanded.
        end;

        LFullSequence := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('FULLSEQUENCE').AsString;

        LParentNode := LMatterNode; //GetParentNode(LMatterNode, LFullSequence);
        LNode := vtTasks.AddChild(LParentNode);
        LData := vtTasks.GetNodeData(LNode);
        vtTasks.Expanded[LParentNode] := True; // ensure expanded.

        LData.WorkFlowTask := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('WORKFLOWTASK').AsInteger;
        LData.FullSequence := LFullSequence;
        LData.TaskOrder := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('TASKORDER').AsString;
        LData.NMatter := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('NMATTER').AsInteger;
        LData.TemplateLineID := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('TEMPLATELINEID').AsInteger;
        LData.Started := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('STARTED').AsDateTime;
        LData.StartedBy := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('STARTEDBY').AsString;
        LData.StartedByName := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('STARTEDBYNAME').AsString;
        LData.WorkFlowTypeCode := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('WORKFLOWTYPECODE').AsString;
//        LData.SeqNo := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('SEQNO').AsInteger;
        LData.ParentLineID := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('PARENTLINEID').AsInteger;
        LData.TaskDescription := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('TASKDESCRIPTION').AsString;
        LData.TaskNote := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('TASKNOTE').AsString;
        LData.CompleteDays := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETEDAYS').AsInteger;
        if (not dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETEBYDATE').IsNull) then
          LData.CompleteByDate := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETEBYDATE').AsDateTime
        else
          LData.CompleteByDate := 0;
        if (not dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').IsNull) then
          LData.DaysOverDue := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').AsInteger;
        LData.ShortDescr := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('SHORTDESCR').AsString;
        LData.FileID := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('FILEID').AsString;
        LData.WorkFlowType := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('WORKFLOWTYPE').AsString;
        LData.HasDocuments := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('HASDOCUMENTS').AsInteger;
        LData.HasNotes := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('HASNOTES').AsInteger;
        LData.ClientName := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('CLIENTNAME').AsString;
        LData.Repetition := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('REPETITION').AsInteger;
        LData.RepetitionBase := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('REPETITIONBASE').AsString = 'Y';
        LData.critcalDate := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('CRITICAL_DATE').AsString = 'Y';
        LData.critcalAlert := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('CRITICAL_ALERT').AsString = 'Y';
        LData.CompletedDate := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETED').AsDateTime;
        LData.Skipped := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('SKIPPED').AsDateTime;

        dmWorkflowDataModuleRun.qToDoTasksDate.Next();
      end;
    finally
      dmWorkflowDataModuleRun.qToDoTasksDate.Close();
    end;
  finally
    vtTasks.EndUpdate();
  end;
end;


procedure TfmWorkFlowToDo.LoadTreeSequence();
var
  LParentNode, LSequenceNode, LMatterNode, LNode: PVirtualNode;
  LSequenceData, LData, LMatterData: PToDoTask;
  LMatterSortOrder, LNMatter: Integer;
  LFullSequence: string;
begin
  LSequenceNode := nil;
  LNMatter := -1;

  vtTasks.BeginUpdate();
  try
    vtTasks.Clear();

    dmWorkflowDataModuleRun.qToDoTasksSequence.ParamByName('emp').AsString := FEmployeeCode;
    dmWorkflowDataModuleRun.qToDoTasksSequence.ParamByName('startdate').AsDate := FDateFrom;
    dmWorkflowDataModuleRun.qToDoTasksSequence.ParamByName('enddate').AsDate := FDateTo;

    dmWorkflowDataModuleRun.qToDoTasksSequence.ParamByName('critical_date').Clear;
    if boolean(cbExcCritDate.EditValue) = True then
       dmWorkflowDataModuleRun.qToDoTasksSequence.ParamByName('critical_date').AsString := 'N';

    dmWorkflowDataModuleRun.qToDoTasksSequence.Open();
    try
      while (not dmWorkflowDataModuleRun.qToDoTasksSequence.Eof) do
      begin
        if (LFullSequence <> dmWorkflowDataModuleRun.qToDoTasksSequenceFULLSEQUENCE.AsString) then
        begin
          LSequenceNode := vtTasks.AddChild(nil);
          LSequenceData := vtTasks.GetNodeData(LSequenceNode);
          LSequenceData.NMatter := dmWorkflowDataModuleRun.qToDoTasksSequenceNMATTER.AsInteger;
          LSequenceData.WorkFlowTypeCode := dmWorkflowDataModuleRun.qToDoTasksSequenceWORKFLOWTYPECODE.AsString;
          LSequenceData.ShortDescr := dmWorkflowDataModuleRun.qToDoTasksSequenceSHORTDESCR.AsString;
          LSequenceData.FileID := dmWorkflowDataModuleRun.qToDoTasksSequenceFILEID.AsString;
          LSequenceData.WorkFlowType := dmWorkflowDataModuleRun.qToDoTasksSequenceWORKFLOWTYPE.AsString;
          LSequenceData.ClientName := dmWorkflowDataModuleRun.qToDoTasksSequenceCLIENTNAME.AsString;
          LSequenceData.TemplateLineID := -2;
          LSequenceData.FullSequence := dmWorkflowDataModuleRun.qToDoTasksSequenceFULLSEQUENCE.AsString;
          LFullSequence := LSequenceData.FullSequence;
          LNMatter := -1;
        end;

        if (LNMatter <> dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('NMATTER').AsInteger) then
        begin
          LMatterNode := vtTasks.AddChild(LSequenceNode);
          LMatterData := vtTasks.GetNodeData(LMatterNode);
          LMatterData.NMatter := dmWorkflowDataModuleRun.qToDoTasksSequenceNMATTER.AsInteger;
          LMatterData.WorkFlowTypeCode := dmWorkflowDataModuleRun.qToDoTasksSequenceWORKFLOWTYPECODE.AsString;
          LMatterData.ShortDescr := dmWorkflowDataModuleRun.qToDoTasksSequenceSHORTDESCR.AsString;
          LMatterData.FileID := dmWorkflowDataModuleRun.qToDoTasksSequenceFILEID.AsString;
          LMatterData.WorkFlowType := dmWorkflowDataModuleRun.qToDoTasksSequenceWORKFLOWTYPE.AsString;
          LMatterData.ClientName := dmWorkflowDataModuleRun.qToDoTasksSequenceCLIENTNAME.AsString;
          LMatterData.TemplateLineID := -1;
          LMatterData.CompleteByDate := Trunc(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETEBYDATE').AsDateTime);
          LMatterData.DaysOverDue := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').AsInteger;
          LNMatter := LMatterData.NMatter;
          vtTasks.Expanded[LSequenceNode] := True; // ensure expanded.
        end;

        //LFullSequence := dmWorkflowDataModuleRun.qToDoTasksSequenceFULLSEQUENCE.AsString;
        LSequenceData.NMatter := dmWorkflowDataModuleRun.qToDoTasksSequenceNMATTER.AsInteger;
        LParentNode := LMatterNode; //GetParentNode(LMatterNode, LFullSequence);
        LNode := vtTasks.AddChild(LParentNode);
        LData := vtTasks.GetNodeData(LNode);
        vtTasks.Expanded[LParentNode] := True; // ensure expanded.

        LData.WorkFlowTask := dmWorkflowDataModuleRun.qToDoTasksSequenceWORKFLOWTASK.AsInteger;
        LData.FullSequence := LFullSequence;
        LData.NMatter := dmWorkflowDataModuleRun.qToDoTasksSequenceNMATTER.AsInteger;
        LData.TemplateLineID := dmWorkflowDataModuleRun.qToDoTasksSequenceTEMPLATELINEID.AsInteger;
        LData.Started := dmWorkflowDataModuleRun.qToDoTasksSequenceSTARTED.AsDateTime;
        LData.StartedBy := dmWorkflowDataModuleRun.qToDoTasksSequenceSTARTEDBY.AsString;
        LData.StartedByName := dmWorkflowDataModuleRun.qToDoTasksSequenceSTARTEDBYNAME.AsString;
        LData.WorkFlowTypeCode := dmWorkflowDataModuleRun.qToDoTasksSequenceWORKFLOWTYPECODE.AsString;
//        LData.SeqNo := dmWorkflowDataModuleRun.qToDoTasksSequence.FieldByName('SEQNO').AsInteger;
        LData.ParentLineID := dmWorkflowDataModuleRun.qToDoTasksSequencePARENTLINEID.AsInteger;
        LData.TaskDescription := dmWorkflowDataModuleRun.qToDoTasksSequenceTASKDESCRIPTION.AsString;
        LData.TaskNote := dmWorkflowDataModuleRun.qToDoTasksSequenceTASKNOTE.AsString;
        LData.CompleteDays := dmWorkflowDataModuleRun.qToDoTasksSequenceCOMPLETEDAYS.AsInteger;
        if (not dmWorkflowDataModuleRun.qToDoTasksSequenceCOMPLETEBYDATE.IsNull) then
          LData.CompleteByDate := dmWorkflowDataModuleRun.qToDoTasksSequenceCOMPLETEBYDATE.AsDateTime
        else
          LData.CompleteByDate := 0;
        if (not dmWorkflowDataModuleRun.qToDoTasksSequenceDAYSOVERDUE.IsNull) then
          LData.DaysOverDue := dmWorkflowDataModuleRun.qToDoTasksSequenceDAYSOVERDUE.AsInteger;
        LData.ShortDescr := dmWorkflowDataModuleRun.qToDoTasksSequenceSHORTDESCR.AsString;
        LData.FileID := dmWorkflowDataModuleRun.qToDoTasksSequenceFILEID.AsString;
        LData.WorkFlowType := dmWorkflowDataModuleRun.qToDoTasksSequenceWORKFLOWTYPE.AsString;
        LData.HasDocuments := dmWorkflowDataModuleRun.qToDoTasksSequenceHASDOCUMENTS.AsInteger;
        LData.HasNotes := dmWorkflowDataModuleRun.qToDoTasksSequenceHASNOTES.AsInteger;
        LData.ClientName := dmWorkflowDataModuleRun.qToDoTasksSequenceCLIENTNAME.AsString;
        LData.Repetition := dmWorkflowDataModuleRun.qToDoTasksSequenceREPETITION.AsInteger;
        LData.RepetitionBase := dmWorkflowDataModuleRun.qToDoTasksSequenceREPETITIONBASE.AsString = 'Y';
        LData.critcalDate := dmWorkflowDataModuleRun.qToDoTasksSequenceCRITICAL_DATE.AsString = 'Y';
        LData.critcalAlert := dmWorkflowDataModuleRun.qToDoTasksSequenceCRITICAL_ALERT.AsString = 'Y';
        LData.CompletedDate := dmWorkflowDataModuleRun.qToDoTasksSequenceCOMPLETED.AsDateTime;
        LData.Skipped := dmWorkflowDataModuleRun.qToDoTasksSequenceSKIPPED.AsDateTime;

        dmWorkflowDataModuleRun.qToDoTasksSequence.Next();
      end;
    finally
      dmWorkflowDataModuleRun.qToDoTasksSequence.Close();
    end;


    {

    FTopMostMatter := -1;
    LMatterSortOrder := 0;

    // now re-order matters so the one with the most overdue task shows..
    dmWorkflowDataModuleRun.qToDoMatterOrder.ParamByName('emp').AsString := FEmployeeCode;
    dmWorkflowDataModuleRun.qToDoMatterOrder.ParamByName('startdate').AsDate := FDateFrom;
    dmWorkflowDataModuleRun.qToDoMatterOrder.ParamByName('enddate').AsDate   := FDateTo;
    dmWorkflowDataModuleRun.qToDoMatterOrder.Open();
    try
      while(not dmWorkflowDataModuleRun.qToDoMatterOrder.Eof) do
      begin
        if(FTopMostMatter < 0) then
        begin
          FTopMostMatter := dmWorkflowDataModuleRun.qToDoMatterOrderNMATTER.AsInteger;
          FTopMostDays   := dmWorkflowDataModuleRun.qToDoMatterOrderDAYSOVERDUE.AsInteger;
        end;

        LMatterData := GetMatterNode(dmWorkflowDataModuleRun.qToDoMatterOrderNMATTER.AsInteger);

        if(Assigned(LMatterData)) then
        begin
          Inc(LMatterSortOrder);
          LMatterData.MatterSortOrder := LMatterSortOrder;
        end;

        dmWorkflowDataModuleRun.qToDoMatterOrder.Next();
      end;
    finally
      dmWorkflowDataModuleRun.qToDoMatterOrder.Close();
    end;
       }
  finally
    vtTasks.EndUpdate();
  end;
end;


procedure TfmWorkFlowToDo.vtTasksGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TToDoTask);
end;

procedure TfmWorkFlowToDo.vtTasksGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PToDoTask;
  function FormatDateEx(ADate: TDateTime; ALongDate: Boolean = False): string;
  begin
    if (Sender.IsEditing and (Column = Sender.FocusedColumn) and (Node = Sender.FocusedNode)) then
      Result := FormatDateTime('dd/mm/yyyy', ADate)
    else
      Result := ExtendedDateFormat(FDateFrom, ADate, ALongDate);
  end;

  procedure DoForMatter();
  begin
    if (LData.TemplateLineID = -1) then
    begin
      if (TToDoColumnsMatter(Column) = tdcmTask) then
      begin
        if (TextType = ttNormal) then
          CellText := 'Matter: ' + LData.FileID + ', ' + Trim(LData.ClientName)
        else
          CellText := LData.ShortDescr;
      end;
    end else
    begin
      if (TextType = ttNormal) then
      begin
        CellText := ' ';
        case TToDoColumnsMatter(Column) of
          tdcmTask: CellText := LData.FullSequence;
          tdcmDescription: CellText := LData.TaskDescription;
          tdcmStarted: CellText := FormatDateEx(LData.Started);
          tdcmDueBy: if (LData.CompleteByDate <> 0) then
              CellText := FormatDateEx(LData.CompleteByDate);
          tdcmOverDueDays: if (LData.DaysOverDue > 0) then
              CellText := IntToStr(Ldata.DaysOverDue)
            else if (LData.DaysOverDue = 0) then
              CellText := 'Due Today';
        end;
      end;
    end;
  end;

  procedure DoForSequence();
  begin
    if (LData.TemplateLineID = -1) then
    begin
      if (TToDoColumnsMatter(Column) = tdcmTask) then
      begin
        if (TextType = ttNormal) then
          CellText := 'Matter: ' + LData.FileID + ', ' + Trim(LData.ClientName)
        else
          CellText := LData.ShortDescr;
      end;
    end
    else if (LData.TemplateLineID = -2) then
    begin
      if (TToDoColumnsMatter(Column) = tdcmTask) and (TextType = ttNormal) then
         CellText := 'Sequence: ' + LData.FullSequence;
    end
    else
    begin
      if (TextType = ttNormal) then
      begin
        CellText := ' ';
        case TToDoColumnsMatter(Column) of
          //tdcmTask:        CellText := LData.FullSequence;
          tdcmDescription: CellText := LData.TaskDescription;
          tdcmStarted: CellText := FormatDateEx(LData.Started);
          tdcmDueBy: if (LData.CompleteByDate <> 0) then
              CellText := FormatDateEx(LData.CompleteByDate);
          tdcmOverDueDays: if (LData.DaysOverDue > 0) then
              CellText := IntToStr(Ldata.DaysOverDue)
            else if (LData.DaysOverDue = 0) then
              CellText := 'Due Today';
        end;
      end;
    end;
  end;

  procedure DoForDate();
  begin
    if (TextType = ttNormal) then
    begin
      case LData.TemplateLineID of
        -1:
          begin
            if (TToDoColumnsDate(Column) = tdcdDueBy) then
              CellText := 'Matter: ' + LData.FileID + ', ' + Trim(LData.ClientName)
          end;
        -2:
          begin
            case TToDoColumnsDate(Column) of
              tdcdDueBy: CellText := FormatDateEx(LData.CompleteByDate, True);
              tdcdOverDueDays:
                begin
                  if (LData.DaysOverDue > 0) then
                    CellText := IntToStr(LData.DaysOverDue)
                  else if (LData.DaysOverDue = 0) then
                    CellText := 'Due Today';
                end;
            end;
          end;
      else
        begin
          CellText := ' ';
          case TToDoColumnsDate(Column) of
            tdcdDueBy: CellText := LData.FullSequence;
            tdcdDescription: CellText := LData.TaskDescription;
            tdcdStarted: CellText := FormatDateEx(LData.Started);
          end;
        end;
      end;
    end else
    begin
      if (LData.TemplateLineID = -1) and (TToDoColumnsDate(Column) = tdcdDueBy) then
        CellText := LData.ShortDescr
    end;
  end;

begin
  CellText := '';
  LData := Sender.GetNodeData(Node);

  case ViewType of
    tdvMatter: DoForMatter();
    tdvDate: DoForDate();
    tdvSequence: DoForSequence();
  end;
//  CellText := AndReplace(CellText);
end;

procedure TfmWorkFlowToDo.vtTasksCollapsing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var Allowed: Boolean);
begin
  Allowed := False;
end;

procedure TfmWorkFlowToDo.FormShow(Sender: TObject);
var
   i: integer;
   LColumn: TVirtualTreeColumn;
begin
   case FInitalViewType of
      tdvMatter: dxMatter.Down := True;
      tdvDate: dxDate.Down := True;
      tdvSequence: dxSequence.Down := True;
   end;
   ViewType := FInitalViewType;

{   FSettingsChanged := False;
   if(SettingLoadBoolean(C_SETTINGOWNER,'SAVED') and SettingExists(C_SETTINGOWNER,'COL0VIS')) then
   begin
      for i := 0 to vtTasks.Header.Columns.Count - 1 do
      begin
         LColumn := vtTasks.Header.Columns.Items[i];

         if(SettingLoadBoolean(C_SETTINGOWNER,'COL' + LColumn.Text + 'VIS')) then
            LColumn.Options := LColumn.Options + [coVisible]
         else
            LColumn.Options := LColumn.Options - [coVisible];
         LColumn.Position := SettingLoadInteger(C_SETTINGOWNER,'COL' + LColumn.Text + 'POS');
      end;
   end;
   RefreshTree;  }

   cbExcCritDate.EditValue := (SettingLoadString(C_SETTINGOWNER, 'EXCLUDECRITICALDATE') = 'Y');
   RefreshTree;
end;

procedure TfmWorkFlowToDo.aCloseWindowExecute(Sender: TObject);
begin
  Close();
end;

procedure TfmWorkFlowToDo.LoadRootTask(ANMatter: Integer);
begin
  if (Assigned(FRootTask)) then
  begin
    if (FRootTask.NMatter <> ANMatter) then
      FreeAndNil(FRootTask);
  end;

  if (not Assigned(FRootTask)) then
  begin
    FRootTask := TWorkflowTask.Create(nil);

    dmWorkflowDataModuleRun.qWorkflowTasks.ParamByName('nmatter').AsInteger := ANMatter;
    dmWorkflowDataModuleRun.qWorkflowTasks.Open();
    try
      FRootTask.LoadChildrenFromDB();
    finally
      dmWorkflowDataModuleRun.qWorkflowTasks.Close();
    end;
  end;
end;

procedure TfmWorkFlowToDo.aMergeExecute(Sender: TObject);
var
  LTask: TWorkFlowTask;
  LInfo: PToDoTask;
begin
  if (Assigned(vtTasks.FocusedNode)) then
  begin
    LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

    LoadRootTask(LInfo.NMatter);

    LTask := FRootTask.GetTaskOfWorkFlowTask(LInfo.WorkFlowTask);
    if (Assigned(LTask)) then
    begin
      try
        if (not Assigned(FWorkFlowMergeDocument)) then
          FWorkFlowMergeDocument := TfmWorkFlowMergeDocument.Create(Application);
        FWorkFlowMergeDocument.ShowNoTaskDocuments := Sender = aGenericDocuments;
        FWorkFlowMergeDocument.NMatter := LInfo.NMatter;
        FWorkFlowMergeDocument.Task := LTask;
        FWorkFlowMergeDocument.OnClose := MergeFormClose;
        FWorkFlowMergeDocument.UpdateWindowEvent := OnUpdateWindowEvent;
        FWorkFlowMergeDocument.ShowModal();
      except
        on E: exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
          FreeAndNil(FWorkFlowMergeDocument);
        end;
      end;
    end else
      MessageDlg('Error in task retrieval, unable to run task', mtError, [mbOK], 0);
  end;
end;

procedure TfmWorkFlowToDo.aMergeUpdate(Sender: TObject);
var
  LData: PToDoTask;
begin
  if (Assigned(vtTasks.FocusedNode)) then
  begin
    LData := vtTasks.GetNodeData(vtTasks.FocusedNode);
    TAction(Sender).Enabled := LData.HasDocuments > 0;
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowToDo.aTaskNotesExecute(Sender: TObject);
var
  LInfo: PToDoTask;
begin
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

  if (not Assigned(FNotesForm)) then
    FNotesForm := TfmWorkFlowTaskNotes.Create(Application);
  FNotesForm.OnClose := NotesFormClose;
  FNotesForm.NMatter := LInfo.NMatter;
  FNotesForm.TaskString := LInfo.FullSequence;
  FNotesForm.TaskDescription := LInfo.TaskDescription;
  FNotesForm.TaskCompleted := False;
  FNotesForm.WorkFlowTask := LInfo.WorkFlowTask;
  FNotesForm.Show();
end;

procedure TfmWorkFlowToDo.aTaskNotesUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtTasks.FocusedNode) and (PToDoTask(vtTasks.GetNodeData(vtTasks.FocusedNode)).TemplateLineID > 0);
end;

procedure TfmWorkFlowToDo.aAdminDocsExecute(Sender: TObject);
begin
  try
    if (not Assigned(fmWorkFlowAdminDocs)) then
      fmWorkFlowAdminDocs := TfmWorkFlowAdminDocs.Create(Application.MainForm);
    fmWorkFlowAdminDocs.ShowModal();
  except
    on E: exception do
    begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
      FreeAndNil(fmWorkFlowAdminDocs);
    end;
  end;
end;

procedure TfmWorkFlowToDo.MergeFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FWorkFlowMergeDocument := nil;
end;

procedure TfmWorkFlowToDo.aCompleteTaskExecute(Sender: TObject);
begin
  CompleteTask();
end;

procedure TfmWorkFlowToDo.CompleteTask();
var
  LTask: TWorkFlowTask;
  LInfo: PToDoTask;
begin
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

  LoadRootTask(LInfo.NMatter);

  LTask := FRootTask.GetTaskOfWorkFlowTask(LInfo.WorkFlowTask);
  if (Assigned(LTask)) then
  begin
      if(not LTask.IsRootTask) and (not LTask.Completed) and (not LTask.Skipped) then
      begin
    LTask.CompleteTask(Now());
    if (Assigned(FNotesForm)) then
      FNotesForm.TaskCompleted := (FNotesForm.TaskString = LInfo.FullSequence) and (FNoteSForm.NMatter = LInfo.NMatter);
    FDateFrom := 0;
    FDateTo := 0;
    UpdateTasksWindow(LInfo.NMatter);
    LoadTree();
      end;
  end else
    MessageDlg('Error in task retrieval, unable to stop task', mtError, [mbOK], 0);
end;

procedure TfmWorkFlowToDo.aCompleteTaskUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtTasks.FocusedNode) and (PToDoTask(vtTasks.GetNodeData(vtTasks.FocusedNode)).TemplateLineID > 0) and
                            (PToDoTask(vtTasks.GetNodeData(vtTasks.FocusedNode)).Started <> 0) and (not (PToDoTask(vtTasks.GetNodeData(vtTasks.FocusedNode)).CompletedDate <> 0)) and
                            (not (PToDoTask(vtTasks.GetNodeData(vtTasks.FocusedNode)).Skipped <> 0)) and (not PToDoTask(vtTasks.GetNodeData(vtTasks.FocusedNode)).critcalDate);
end;

procedure TfmWorkFlowToDo.NotesFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FNotesForm := nil;
end;

procedure TfmWorkFlowToDo.NotesEvent(AWorkFlowTask: Integer;
  ANoteEvent: TNoteEvent);
var
  LInfo: PToDoTask;
  LIterData: TIterData;
begin
  LIterData.WorkFlowTask := AWorkFlowTask;
  LIterData.Node := nil;

  vtTasks.IterateSubtree(nil, IterFindTask, @LIterData);
  if (Assigned(LIterData.Node)) then
  begin
    LInfo := vtTasks.GetNodeData(LIterData.Node);
    if (Assigned(LInfo)) then
    begin
      case ANoteEvent of
        neAdd: LInfo.HasNotes := LInfo.HasNotes + 1;
        neDelete: LInfo.HasNotes := LInfo.HasNotes - 1;
      end;
      vtTasks.Invalidate();
    end;
  end;
end;

procedure TfmWorkFlowToDo.aSkipTaskExecute(Sender: TObject);
var
  LTask: TWorkFlowTask;
  LInfo: PToDoTask;
begin
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

  LoadRootTask(LInfo.NMatter);

  LTask := FRootTask.GetTaskOfWorkFlowTask(LInfo.WorkFlowTask);
  if (Assigned(LTask)) then
  begin
    LTask.SkipTask(Now());
    if (Assigned(FNotesForm)) then
      FNotesForm.TaskCompleted := (FNotesForm.TaskString = LInfo.FullSequence) and (FNoteSForm.NMatter = LInfo.NMatter);
    FDateFrom := 0;
    FDateTo := 0;
    UpdateTasksWindow(LInfo.NMatter);
    LoadTree();
  end else
    MessageDlg('Error in task retrieval, unable to skip task', mtError, [mbOK], 0);
end;

procedure TfmWorkFlowToDo.aOpenTaskExecute(Sender: TObject);
var
  LInfo: PToDoTask;
  LMT: TfmWorkflowMatterTasks;
  LNMatter,
    LWorkFlowTask: Integer;
begin
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

  // using line id, and nmatter show task form.
  LNMatter := LInfo.NMatter;
  LWorkFlowTask := LInfo.WorkFlowTask;
  LMT := FindWorkFlowTasksWindow(LNMatter);

  if (not Assigned(LMT)) then
  begin
    LMT := TfmWorkflowMatterTasks.Create(Application);
    LMT.NMatter := LNMatter;
{    LMT.MatterDesc       := LInfo.ShortDescr;
    LMT.WorkflowType     := LInfo.WorkFlowType;
    LMT.WorkflowTypeCode := LInfo.WorkFlowTypeCode;}
  end;
  LMT.Show();
  LMT.SetViewDate(FDateFrom);
  if (LWorkFlowTask > -1) then
    LMT.JumpTask(LWorkFlowTask);
end;

procedure TfmWorkFlowToDo.aOpenTaskUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtTasks.FocusedNode) and (PToDoTask(vtTasks.GetNodeData(vtTasks.FocusedNode)).TemplateLineID >= -1);
end;

procedure TfmWorkFlowToDo.vtTasksPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  LData: PToDoTask;
  procedure DoForMatter();
  begin
    if (Node.Parent = Sender.RootNode) then
    begin
      TargetCanvas.Font.Style := [fsBold];
    end
    else
    begin
      LData := Sender.GetNodeData(Node);
      if (LData.DaysOverDue = FTopMostDays) then
      begin
        TargetCanvas.Font.Color := clBlack;
        TargetCanvas.Font.Style := [fsBold];
      end else if (LData.DaysOverDue > 0) then
        TargetCanvas.Font.Color := TColor($000080)
      else
        TargetCanvas.Font.Color := clGreen;
    end;
  end;

  procedure DoForDate();
  begin
    if (Node.Parent = Sender.RootNode) then
    begin
      TargetCanvas.Font.Style := [fsBold];
      TargetCanvas.Font.Color := clWhite;
    end else if (Node.Parent.Parent = Sender.RootNode) then
      TargetCanvas.Font.Style := [fsBold]
    else
    begin
      LData := Sender.GetNodeData(Node);
      if (LData.DaysOverDue = FTopMostDays) then
      begin
        TargetCanvas.Font.Color := clBlack;
        TargetCanvas.Font.Style := [fsBold];
      end else if (LData.DaysOverDue > 0) then
        TargetCanvas.Font.Color := TColor($000080)
      else
        TargetCanvas.Font.Color := clGreen;
    end;
  end;
begin
  if (TextType = ttNormal) then
  begin
    case ViewType of
      tdvMatter: DoForMatter();
      tdvDate: DoForDate();
      tdvSequence: DoForDate();

    end;
  end else
    TargetCanvas.Font.Color := clBlue;
end;

procedure TfmWorkFlowToDo.aJumpTodayUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (bcmbDateTo.Date <> Date); // and (aDateTo.Date <> Date);
end;

procedure TfmWorkFlowToDo.aJumpTodayExecute(Sender: TObject);
begin
  FDateFrom := 0;
  FDateTo := 0;

//  cbUsedDateTo.Checked := False;
  bcmbDateFrom.Date := Date();
  bcmbDateTo.Date := Date();

  LoadTree();
end;

procedure TfmWorkFlowToDo.aUseDateToClick(Sender: TObject);
begin
  bcmbDateTo.Date := bcmbDateFrom.Date;
  LoadTree();
end;

procedure TfmWorkFlowToDo.bcmbDateToCurChange(Sender: TObject);
begin
  if ((FDateFrom <> 0) and (FDateTo <> 0)) then
    LoadTree();
end;

procedure TfmWorkFlowToDo.aDateToUpdate(Sender: TObject);
begin
//  aDateTo.Enabled := cbUsedDateTo.Checked; //  aUseDateTo.Checked;
end;

procedure TfmWorkFlowToDo.aChangeEmployeeExecute(Sender: TObject);
begin
  fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(Self);
  try
    fmEmployeeFindDialog.EmployeeCode := FEmployeeCode;
    fmEmployeeFindDialog.EmployeeType := etOperator;
    if (fmEmployeeFindDialog.ShowModal() = mrOk) then
    begin
      FEmployeeCode := fmEmployeeFindDialog.EmployeeCode;
      FEmployeeName := fmEmployeeFindDialog.EmployeeName;

      FDateFrom := 0;
      LoadTree();
    end;
  finally
    FreeAndNil(fmEmployeeFindDialog);
  end;
end;

procedure TfmWorkFlowToDo.SetCaption;
var
  LTxt: string;
  i: integer;
begin
   LTxt := 'WorkFlow ToDo - For ' + FEmployeeName;
   if (boolean(cbUseDateTo.EditValue) = True) then
      LTxt := LTxt + ' for dates ' + DateToStr(FDateFrom) + ' to ' + DateToStr(FDateTo)
   else
      LTxt := LTxt + ' for date ' + DateToStr(FDateFrom);
   if (LTxt <> Caption) then
      Caption := LTxt;


{ AES 2/2/18
for i:= 0 to frmDesktop.fdTab.FormCount -1 do
   begin
      if frmDesktop.fdTab.Forms[i].ClassNameIs(Self.Classname) then
      begin
         frmDesktop.fdTab.ActiveFormIndex := i;
         frmDesktop.fdTab.Forms[i].SetFocus;
         break;
      end;
   end;}

   if frmDesktop.pagMainControl.ActivePageIndex = 0 then
      frmDesktop.pageForms.ActivePage.Caption := LTxt;
end;


procedure TfmWorkFlowToDo.UpdateTasksWindow(ANMatter: Integer);
var
  LMT: TfmWorkflowMatterTasks;
begin
  LMT := FindWorkFlowTasksWindow(ANMatter);
  if (not Assigned(LMT)) then
    Exit;

  LMT.ReloadTree();
end;

procedure TfmWorkFlowToDo.RefreshTree;
begin
  FDateFrom := 0;
  LoadTree();
end;

function  TfmWorkFlowToDo.compareSequence(seq1,seq2 : String) : integer;
var pos1,pos2 : Integer;
sTmpS1,sTmpS2,sSub1,sSub2 : String;
iTmp1,iTmp2 : integer;
bFound : boolean;
begin
   // conpare the first dc

   if seq1 = '' then
   begin
        compareSequence := 0;
        exit;
   end;

   bFound := false;

   sTmpS1 := seq1;
   sTmpS2 := seq2;

   while (not bFound) do
   begin
        pos1 := pos('.',sTmpS1);
        if pos1 > 0 then
        begin
                sSub1 := copy(sTmpS1,0,pos1-1);
                sTmpS1 := copy(sTmpS1,pos1+1,9999);
        end
        else
        begin
                sSub1 := sTmpS1;
                sTmpS1 := '';
        end;

        // remove the (X)
        pos1 := pos(' (',sSub1);
        if pos1 > 0 then
                sSub1 := copy(sSub1,0,pos1-1);


        pos2 := pos('.',sTmpS2);
        if pos2 > 0 then
        begin
                sSub2 := copy(sTmpS2,0,pos2-1);
                sTmpS2 := copy(sTmpS2,pos2+1,9999);
        end
        else
        begin
                sSub2 := sTmpS2;
                sTmpS2 := '';
        end;

        // remove the (X)
        pos2 := pos(' (',sSub2);
        if pos2 > 0 then
                sSub2 := copy(sSub2,0,pos2-1);
        try

        iTmp1 := strToInt(sSub1);
        iTmp2 := strToInt(sSub2);

        except
                on e:Exception do
                compareSequence := 0;
        end;

        if iTmp1 <> iTmp2  then
        begin
                compareSequence := iTmp1 - iTmp2;
                bFound := true;
        end
        else if sTmpS1 = '' then
        begin
                compareSequence := -1;
                bFound := true;
        end
        else if sTmpS2 = '' then
        begin
                compareSequence := 1;
                bFound := true;
        end;
   end;
   //compareSequence  := CompareStr(seq1,seq2);
end;

procedure TfmWorkFlowToDo.vtTasksCompareNodes(Sender: TBaseVirtualTree;
  Node1, Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
var
  LData1, LData2: PToDoTask;
begin
  Result := 0;
  LData1 := Sender.GetNodeData(Node1);
  LData2 := Sender.GetNodeData(Node2);
  if (Column = 0) or (Column = -1) then
  begin

    if (ViewType = tdvSequence)  and (LData1.TemplateLineID = -2) then
    begin
        Result :=  compareSequence(LData1.FullSequence,LData2.FullSequence);
    end
    else if (LData1.TemplateLineID = -1) then
    begin
      if (LData1.MatterSortOrder < LData2.MatterSortOrder) then
        Result := -1
      else if (LData1.MatterSortOrder > LData2.MatterSortOrder) then
        Result := 1
    end else
    begin
      if (ViewType = tdvMatter) then
      begin
        if (LData1.CompleteByDate < LData2.CompleteByDate) then
          Result := -1
        else if (LData1.CompleteByDate > LData2.CompleteByDate) then
          Result := 1;
      end else
      begin
        Result := CompareStr(LData1.TaskOrder, LData2.TaskOrder);
      end;
    end;
  end;
end;

procedure TfmWorkFlowToDo.vtTasksBeforeItemErase(Sender: TBaseVirtualTree;
  Canvas: TCanvas; Node: PVirtualNode; ItemRect: TRect;
  var ItemColor: TColor; var EraseAction: TItemEraseAction);
var
  LData: PToDoTask;
begin
  LData := Sender.GetNodeData(Node);
  case ViewType of
    tdvMatter:
      begin
        if (LData.DaysOverDue = FTopMostDays) and (LData.TemplateLineID > 0) then
        begin
//          ItemColor := clYellow;
//          ItemColor := clMoneyGreen;
          ItemColor := TColor($66CC33);
          EraseAction := eaColor;
        end;
      end;
    tdvDate:
      begin
        if (LData.DaysOverDue = FTopMostDays) and (LData.TemplateLineID > 0) then
        begin
//          ItemColor := clYellow;
//          ItemColor := clMoneyGreen;
          ItemColor := TColor($66CC33);
          EraseAction := eaColor;
        end;

        if (Node.Parent = Sender.RootNode) then
        begin
          ItemColor := clGray;
          EraseAction := eaColor;
        end;
      end;
    tdvSequence:
      begin
        if (LData.DaysOverDue = FTopMostDays) and (LData.TemplateLineID > 0) then
        begin
//          ItemColor := clYellow;
//          ItemColor := clMoneyGreen;
          ItemColor := TColor($66CC33);
          EraseAction := eaColor;
        end;

        if (Node.Parent = Sender.RootNode) then
        begin
          ItemColor := clGray;
          EraseAction := eaColor;
        end;
      end;
  end;
end;

procedure TfmWorkFlowToDo.aGenericDocumentsUpdate(Sender: TObject);
begin
   if FHideGenericDocs = 'N' then
      TAction(Sender).Enabled := Assigned(vtTasks.FocusedNode);
end;

procedure TfmWorkFlowToDo.aNewAppointmentExecute(Sender: TObject);
var
  LInfo: PToDoTask;
begin
{  if (not Assigned(FOutlookIntegrator)) then
    FOutlookIntegrator := TOutlookIntegrator.Create();
  if (FOutlookIntegrator.UseOutlook) then
  begin
    LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);
    FOutlookIntegrator.NewAppointment(LInfo.NMatter);
  end;   }
end;

procedure TfmWorkFlowToDo.aPrintExecute(Sender: TObject);
var
  LNode: PVirtualNode;
  LInfo: PToDoTask;
  tasks: TStrings;
  LOrder: string;
begin
  case ViewType of
    tdvMatter:
      begin
         LOrder := 'ORDER BY nmatter, w.datetocomplete desc';
         Initialise(FEmployeeCode, FDateFrom, FDateTo, boolean(cbExcCritDate.EditValue),
                    FsqlWorkFlowTodoReport, qryWorkFlowTaskReport, LOrder);
         ppWorkFlowTodoReport.Print;

       { qrWorkFlowToDoReport := TqrWorkFlowToDoReport.Create(Self);
        try
          // 07/12/04 TH
          // Initialise the report with the list of tasks and the SQL
          qrWorkFlowToDoReport.Initialise(FEmployeeCode, FDateFrom, FDateTo, cbExcCritDate.Checked);

          qrWorkFlowToDoReport.HighlightOverDueDays := FTopMostDays;
          qrWorkFlowToDoReport.HighlightMatter := FTopMostMatter;
          qrWorkFlowToDoReport.EmployeeName := FEmployeeName;
          qrWorkFlowToDoReport.DateFrom := FDateFrom;
          qrWorkFlowToDoReport.ExcCritDate := cbExcCritDate.Checked;

          if (cbUseDateTo.Checked) then
            qrWorkFlowToDoReport.Dates := 'Dates ' + DateToStr(FDateFrom) + ' to ' + DateToStr(FDateTo)
          else
            qrWorkFlowToDoReport.Dates := 'Date ' + DateToStr(FDateFrom);

          qrWorkFlowToDoReport.PreviewModal();
        finally
          FreeAndNil(qrWorkFlowToDoReport);
        end; }
      end;
    tdvSequence:
      begin
         LOrder := 'ORDER BY intorder,nmatter, completebydate desc';
         Initialise(FEmployeeCode, FDateFrom, FDateTo, boolean(cbExcCritDate.EditValue),
                    FsqlWorkflowToDoSequence,qryWorkflowToDoSequence , LOrder);
         ppWorkFlowToDoReportSequence.Print;
        {qrWorkFlowToDoReportSequence := TqrWorkFlowToDoReportSequence.Create(Self);
        try
          qrWorkFlowToDoReportSequence.Initialise(FEmployeeCode, FDateFrom, FDateTo, cbExcCritDate.Checked);

          qrWorkFlowToDoReportSequence.HighlightOverDueDays := FTopMostDays;
          qrWorkFlowToDoReportSequence.HighlightMatter := FTopMostMatter;
          qrWorkFlowToDoReportSequence.EmployeeName := FEmployeeName;
          qrWorkFlowToDoReportSequence.DateFrom := FDateFrom;
          qrWorkFlowToDoReportSequence.ExcCritDate := cbExcCritDate.Checked;

          if (cbUseDateTo.Checked) then
            qrWorkFlowToDoReportSequence.Dates := 'Dates ' + DateToStr(FDateFrom) + ' to ' + DateToStr(FDateTo)
          else
            qrWorkFlowToDoReportSequence.Dates := 'Date ' + DateToStr(FDateFrom);

          qrWorkFlowToDoReportSequence.PreviewModal();
        finally
          FreeAndNil(qrWorkFlowToDoReportSequence);
        end; }
      end;
    tdvDate:
      begin
        try
           LOrder :=  'ORDER BY datetocomplete , nmatter';
           tasks := TStringList.Create;
           try
               // Get the list of tasks to print
               LNode := vtTasks.GetFirstSelected;
               while (Assigned(LNode)) do
               begin
                  LInfo := vtTasks.GetNodeData(LNode);
                  tasks.Add(IntToStr(LInfo.WorkFlowTask));
                  LNode := vtTasks.GetNextSelected(LNode);
               end;
               // Initialise the report with the list of tasks and the SQL
               Initialise(tasks, FsqlWorkFlowTaskReport, qToDoTasksDate, LOrder);
           finally
               LNode := nil;
           end;
        finally
           ppWorkFlowToDoReportDate.Print;
//           tasks.Free;
        end;

        {qrWorkFlowToDoReportDate := TqrWorkFlowToDoReportDate.Create(Self);
        try
          qrWorkFlowToDoReportDate.HighlightOverDueDays := FTopMostDays;
          qrWorkFlowToDoReportDate.HighlightMatter := FTopMostMatter;
          qrWorkFlowToDoReportDate.EmployeeName := FEmployeeName;
          qrWorkFlowToDoReportDate.DateFrom := FDateFrom;
          qrWorkFlowToDoReportDate.ExcCritDate := cbExcCritDate.Checked;

          if (cbUseDateTo.Checked) then
            qrWorkFlowToDoReportDate.Dates := 'Dates ' + DateToStr(FDateFrom) + ' to ' + DateToStr(FDateTo)
          else
            qrWorkFlowToDoReportDate.Dates := 'Date ' + DateToStr(FDateFrom);

          qrWorkFlowToDoReportDate.PreviewModal();
        finally
          FreeAndNil(qrWorkFlowToDoReportDate);
        end;}
      end;
  end;
end;

procedure TfmWorkFlowToDo.aPrintUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := vtTasks.RootNodeCount > 0;
end;

procedure TfmWorkFlowToDo.aReassignTaskExecute(Sender: TObject);
var
  LTask: TWorkFlowTask;
  LInfo: PToDoTask;
begin
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

  LoadRootTask(LInfo.NMatter);

  LTask := FRootTask.GetTaskOfWorkFlowTask(LInfo.WorkFlowTask);
  if (Assigned(LTask)) then
  begin
    fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(Self);
    try
      fmEmployeeFindDialog.EmployeeCode := FEmployeeCode;
      fmEmployeeFindDialog.EmployeeType := etOperator;
      if (fmEmployeeFindDialog.ShowModal() = mrOk) then
      begin
        LTask.AssignedTo := fmEmployeeFindDialog.EmployeeCode;
        LTask.UpdateDB();
        LTask.AssignedToName := fmEmployeeFindDialog.EmployeeName;

        UpdateTasksWindow(LInfo.NMatter);
        FDateFrom := 0;
        LoadTree();
      end;
    finally
      FreeAndNil(fmEmployeeFindDialog);
    end;
  end else
    MessageDlg('Error in task retrieval, unable to reassign task', mtError, [mbOK], 0);
end;

procedure TfmWorkFlowToDo.vtTasksDblClick(Sender: TObject);
var
  LInfo: PToDoTask;
begin
  if (Assigned(vtTasks.FocusedNode)) then
  begin
    if ((ViewType = tdvMatter) and (TToDoColumnsMatter(vtTasks.FocusedColumn) = tdcmNotes)) or
      ((ViewType = tdvSequence) and (TToDoColumnsMatter(vtTasks.FocusedColumn) = tdcmNotes)) or
      ((ViewType = tdvDate) and (TToDoColumnsDate(vtTasks.FocusedColumn) = tdcdNotes)) then
      aTaskNotes.Execute()
    else
    begin
      LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);
      if (LInfo.TemplateLineID = -1) then
        aOpenMatter.Execute()
      else
        aMerge.Execute();
    end;
  end;
end;

procedure TfmWorkFlowToDo.aRefreshExecute(Sender: TObject);
begin
  FDateFrom := 0;
  LoadTree();
end;

procedure TfmWorkFlowToDo.aEditDueDateExecute(Sender: TObject);
var
  LInfo: PToDoTask;
  LTask: TWorkFlowTask;
  LDate: TDate;
begin
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);
  LoadRootTask(LInfo.NMatter);

  LTask := FRootTask.GetTaskOfWorkFlowTask(LInfo.WorkFlowTask);
  if (Assigned(LTask)) then
  begin
    LDate := LInfo.CompleteByDate;
    if (EditDateDialog(Self, LDate)) then
    begin
      LTask.CompleteByDate := LDate;
      LInfo.CompleteByDate := LDate;
      UpdateTasksWindow(LInfo.NMatter);
      FDateFrom := 0;
      LoadTree();
    end;
  end;
end;

procedure TfmWorkFlowToDo.aOpenMatterExecute(Sender: TObject);
var
  LInfo: PToDoTask;
  LMF: TfrmMatters;
  i: Integer;
begin
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

{  for i := 0 to Screen.FormCount - 1 do
  begin
    if(Screen.Forms[i] is TfrmMatters) then
    begin
      if(TfrmMatters(Screen.Forms[i]).qryMatter.FieldByName('nmatter').AsInteger = LInfo.NMatter) then
      begin
        if(Screen.Forms[i].WindowState = wsMinimized) then
          Screen.Forms[i].WindowState := wsNormal;
        Screen.Forms[i].BringToFront();
        Exit;
      end;
    end;
  end;  }

  // TH 5/04/05: Replacing old matter form creation code with new code to
  // work with new GUI and layout
  //LMF := TfrmMatters.Create(Application);
  //LMF.DisplayMatter(dmWorkFlowDataModule.GetFileIDFromNMatter(LInfo.NMatter));

   if IsMatterPrivate(LInfo.NMatter,MatterString(LInfo.NMatter, 'RESTRICT_ACCESS')) then
   begin
      MsgInfo('This matter is marked as private. You do not have permission to view it.');
   end
   else
   begin
      Application.CreateForm(TfrmMatters, frmMatters);
      frmMatters.DisplayMatter(dmWorkFlowDataModule.GetFileIDFromNMatter(LInfo.NMatter));
      if frmDesktop.pagMainControl.ActivePageIndex = 0 then
         frmDesktop.AddFormToTab(frmMatters, 1);
      if (not frmMatters.Visible) then
         frmMatters.Show;
   end;
end;



procedure TfmWorkFlowToDo.SetViewType(const Value: TToDoView);

  procedure SetColumns(ATexts: array of string; AWidths, AMaxWidths, AMinWidths: array of Integer);
  var
    i: Integer;
    LHeader: TVirtualTreeColumn;
    LColumn: TVirtualTreeColumn;
    LName: string;
  begin
    vtTasks.BeginUpdate();
    try
      for i := 0 to vtTasks.Header.Columns.Count - 1 do
      begin
        LHeader := vtTasks.Header.Columns.Items[i];
        LHeader.Text := ATexts[i];
        if (AWidths[i] = 0) then
          LHeader.Options := LHeader.Options - [coVisible]
        else
        begin
          LHeader.Options := LHeader.Options + [coVisible];
          if (AWidths[i] > LHeader.MaxWidth) then
            LHeader.MaxWidth := 10000;

          LHeader.MinWidth := AMinWidths[i];
          LHeader.MaxWidth := AMaxWidths[i];
          LHeader.Width := AWidths[i];
        end;
      end;

      FSettingsChanged := False;
      if(SettingLoadBoolean(C_SETTINGOWNER,'SAVED') and SettingExists(C_SETTINGOWNER,'COLPOS')) then
      begin
         for i := 0 to vtTasks.Header.Columns.Count - 1 do
         begin
            LColumn := vtTasks.Header.Columns.Items[i];
            LName := LColumn.Text;

            if(SettingLoadBoolean(C_SETTINGOWNER,'COL' + LName + 'VIS')) then
               LColumn.Options := LColumn.Options + [coVisible]
            else
               LColumn.Options := LColumn.Options - [coVisible];
            LColumn.Position := SettingLoadInteger(C_SETTINGOWNER,'COL' + LName + 'POS');
         end;
      end;
    finally
      vtTasks.EndUpdate();
    end;
  end;
begin
  if (FViewType <> Value) then
  begin
    FUpdatingColumns := True;
    try
      FViewType := Value;

      case ViewType of
        tdvMatter: SetColumns(TToDoColumnTextMatter, TToDoColumnWidthMatter, TToDoColumnMaxWidthMatter, TToDoColumnMinWidthMatter);
        tdvSequence: SetColumns(TToDoColumnTextMatter, TToDoColumnWidthMatter, TToDoColumnMaxWidthMatter, TToDoColumnMinWidthMatter);
        tdvDate: SetColumns(TToDoColumnTextDate, TToDoColumnWidthDate, TToDoColumnMaxWidthDate, TToDoColumnMinWidthDate);
      end;
      FDateFrom := 0;
      LoadTree();
    finally
      FUpdatingColumns := False;
    end;
  end;
end;



procedure TfmWorkFlowToDo.vtTasksColumnResize(Sender: TVTHeader; Column: TColumnIndex);
begin
  if (FUpdatingColumns) then
    Exit;
  case ViewType of
    tdvMatter: TToDoColumnWidthMatter[TToDoColumnsMatter(Column)] := Sender.Columns.Items[Column].Width;
    tdvSequence: TToDoColumnWidthMatter[TToDoColumnsMatter(Column)] := Sender.Columns.Items[Column].Width;
    tdvDate: TToDoColumnWidthDate[TToDoColumnsDate(Column)] := Sender.Columns.Items[Column].Width;
  end;
end;

procedure TfmWorkFlowToDo.aDateFromUserInput(Sender: TObject;
  const UserString: string; var DateAndTime: TDateTime;
  var AllowChange: Boolean);
begin
  if (boolean(cbUseDateTo.EditValue) = True) then
    AllowChange := bcmbDateTo.Date > Trunc(DateAndTime);
end;

procedure TfmWorkFlowToDo.aDateToUserInput(Sender: TObject;
  const UserString: string; var DateAndTime: TDateTime;
  var AllowChange: Boolean);
begin
  AllowChange := bcmbDateFrom.Date < Trunc(DateAndTime);
end;

procedure TfmWorkFlowToDo.vtTasksGetHint(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  LColumn: TColumnIndex;
  LInfo: PToDoTask;
begin
  CellText := '';
  LInfo := vtTasks.GetNodeData(Node);
  if (LInfo.TemplateLineID < 0) then
    Exit;

  LColumn := -1;
  case FViewType of
    tdvMatter: if (TToDoColumnsMatter(Column) = tdcmNotes) then LColumn := Column;
    tdvSequence: if (TToDoColumnsMatter(Column) = tdcmNotes) then LColumn := Column;
    tdvDate: if (TToDoColumnsDate(Column) = tdcdNotes) then LColumn := Column;
  end;

  if (LColumn = Column) then
  begin

    dmWorkflowDataModuleRun.qLatestTaskNote.ParamByName('workflowtask').AsInteger := LInfo.WorkFlowTask;
    dmWorkflowDataModuleRun.qLatestTaskNote.Open();
    try
      if (not dmWorkflowDataModuleRun.qLatestTaskNote.Eof) then
      begin
        CellText := 'Note:'#13#10 +
          'Created: ' + DateTimeToStr(dmWorkflowDataModuleRun.qLatestTaskNoteCREATED.AsDateTime) + #13#10 +
          'Created By: ' + dmWorkflowDataModuleRun.qLatestTaskNoteCREATEDBYNAME.AsString + #13#10#13#10 +
          dmWorkflowDataModuleRun.qLatestTaskNoteNOTE.AsString;
      end;
    finally
      dmWorkflowDataModuleRun.qLatestTaskNote.Close();
    end;
  end;
end;

procedure TfmWorkFlowToDo.vtTasksGetImageIndex(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
  var Ghosted: Boolean; var ImageIndex: TImageIndex);
var
  LData: PToDoTask;
begin
  LData := Sender.GetNodeData(Node);
  ImageIndex := -1;
  case ViewType of
    tdvMatter:
      begin
        if (TToDoColumnsMatter(Column) = tdcmDocs) and (LData.HasDocuments > 0) then
          ImageIndex := 12
        else if (TToDoColumnsMatter(Column) = tdcmNotes) and (LData.HasNotes > 0) then
          ImageIndex := 10
      end;
    tdvSequence:
      begin
        if (TToDoColumnsMatter(Column) = tdcmDocs) and (LData.HasDocuments > 0) then
          ImageIndex := 12
        else if (TToDoColumnsMatter(Column) = tdcmNotes) and (LData.HasNotes > 0) then
          ImageIndex := 10
      end;
    tdvDate:
      begin
        if (TToDoColumnsDate(Column) = tdcdDocs) and (LData.HasDocuments > 0) then
          ImageIndex := 12
        else if (TToDoColumnsDate(Column) = tdcdNotes) and (LData.HasNotes > 0) then
          ImageIndex := 10
      end;
  end;
end;

procedure TfmWorkFlowToDo.IterFindTask(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
var
  LInfo: PToDoTask;
begin
  LInfo := Sender.GetNodeData(Node);
  if (PIterData(Data).WorkFlowTask = LInfo.WorkFlowTask) then
  begin
    PIterData(Data).Node := Node;
    Abort := True;
  end;
end;

procedure TfmWorkFlowToDo.SetViewDate(ADate: TDate);
begin
  cbUseDateTo.EditValue := False;
  bcmbDateFrom.Date := ADate;
end;

procedure TfmWorkFlowToDo.OnUpdateWindowEvent(Sender: TObject);
begin
  RefreshTree();

  if (Sender is TfmWorkFlowMergeDocument) then
    UpdateTasksWindow(TfmWorkFlowMergeDocument(Sender).NMatter);
end;

procedure TfmWorkFlowToDo.aDeleteTaskExecute(Sender: TObject);
var
  LNode: PVirtualNode;
  LInfo: PToDoTask;
begin
  if MessageDlg('Do you also want to delete this task from all existing matter timetables?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    LNode := vtTasks.GetFirstSelected;
    while (Assigned(LNode)) do
    begin
      LInfo := vtTasks.GetNodeData(LNode);
      dmWorkflowDataModuleRun.qDeleteCustomTask.ParamByName('workflowtask').AsInteger := LInfo.WorkFlowTask;
      dmWorkflowDataModuleRun.qDeleteCustomTask.ExecSQL();

      LNode := vtTasks.GetNextSelected(LNode);
    end;
  end;

  // Complete
  {
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

  LoadRootTask(LInfo.NMatter);

  LTask := FRootTask.GetTaskOfWorkFlowTask(LInfo.WorkFlowTask);
  if(Assigned(LTask)) then
  begin
***    LTask.CompleteTask(Now());
    if(Assigned(FNotesForm)) then
      FNotesForm.TaskCompleted := (FNotesForm.TaskString = LInfo.FullSequence) and (FNoteSForm.NMatter = LInfo.NMatter);
    FDateFrom := 0;
    FDateTo   := 0;
    UpdateTasksWindow(LInfo.NMatter);
    LoadTree();
  end else
    MessageDlg('Error in task retrieval, unable to stop task', mtError, [mbOK], 0);

  // Skip
  LInfo := vtTasks.GetNodeData(vtTasks.FocusedNode);

  LoadRootTask(LInfo.NMatter);

  LTask := FRootTask.GetTaskOfWorkFlowTask(LInfo.WorkFlowTask);
  if(Assigned(LTask)) then
  begin
***    LTask.SkipTask(Now());
    if(Assigned(FNotesForm)) then
      FNotesForm.TaskCompleted := (FNotesForm.TaskString = LInfo.FullSequence) and (FNoteSForm.NMatter = LInfo.NMatter);
    FDateFrom := 0;
    FDateTo   := 0;
    UpdateTasksWindow(LInfo.NMatter);
    LoadTree();
  end else
    MessageDlg('Error in task retrieval, unable to skip task', mtError, [mbOK], 0);
  }

{
  LUpdateExisting.DeleteExisting := False;
  SaveTreeExpanded();
  LParent := Nil;

  if MessageDlg('Do you also want to delete this task from all existing matter timetables?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    LNode := vtTasks.GetFirstSelected;
    while(Assigned(LNode)) do
    begin
      LData   := vtTasks.GetNodeData(LNode);
      LParent := LNode.Parent;
}
      {
      if(MessageDlg('Are you sure you want to delete the task '#13#10) +
        CreateDispSeqNo(LNode) + ' - ' + LData. .Description ,mtConfirmation,[mbYes,mbNo],0) = mrNo) then
        Exit;
      }
{
      LUpdateExisting.DeleteExisting := True;

      vtTasks.IterateSubtree(LNode,IterDeleteTasks,@LUpdateExisting,[],True);

      LNode := vtTasks.GetNextSelected(LNode);
    end;
  end;
}

  if dmWorkflowDataModuleRun.qToDoTasks.State = dsInactive then
    dmWorkflowDataModuleRun.qToDoTasks.Open()
  else
    dmWorkflowDataModuleRun.qToDoTasks.Refresh();

  RefreshTree();
end;

procedure TfmWorkFlowToDo.aPrintSelectedExecute(Sender: TObject);
var
  LNode: PVirtualNode;
  LInfo: PToDoTask;
  tasks: TStrings;
  reportSql: string;
begin
  case ViewType of
    tdvMatter:
      begin
        // 06/12/04 TH
        // Have changed the WorkFlowToDoReport to use its own Query component

        ppWorkFlowTodoReport.Print;

{        qrWorkFlowToDoReport := TqrWorkFlowToDoReport.Create(Self);
        tasks := TStringList.Create;
        try
          // Get the list of tasks to print
          LNode := vtTasks.GetFirstSelected;
          while (Assigned(LNode)) do
          begin
            LInfo := vtTasks.GetNodeData(LNode);
            tasks.Add(IntToStr(LInfo.WorkFlowTask));

            LNode := vtTasks.GetNextSelected(LNode);
          end;

          // Initialise the report with the list of tasks and the SQL
          qrWorkFlowToDoReport.Initialise(tasks, FEmployeeCode, FDateFrom, FDateTo);

          qrWorkFlowToDoReport.HighlightOverDueDays := FTopMostDays;
          qrWorkFlowToDoReport.HighlightMatter := FTopMostMatter;
          qrWorkFlowToDoReport.EmployeeName := FEmployeeName;
          qrWorkFlowToDoReport.DateFrom := FDateFrom;

          if (cbUseDateTo.Checked) then
            qrWorkFlowToDoReport.Dates := 'Dates ' + DateToStr(FDateFrom) + ' to ' + DateToStr(FDateTo)
          else
            qrWorkFlowToDoReport.Dates := 'Date ' + DateToStr(FDateFrom);

          qrWorkFlowToDoReport.PreviewModal();
        finally
          FreeAndNil(qrWorkFlowToDoReport);
        end; }
      end;
    tdvSequence:
      begin
        // 06/12/04 TH
        // Have changed the WorkFlowToDoReport to use its own Query component
{        qrWorkFlowToDoReport := TqrWorkFlowToDoReport.Create(Self);
        tasks := TStringList.Create;
        try
          // Get the list of tasks to print
          LNode := vtTasks.GetFirstSelected;
          while (Assigned(LNode)) do
          begin
            LInfo := vtTasks.GetNodeData(LNode);
            tasks.Add(IntToStr(LInfo.WorkFlowTask));

            LNode := vtTasks.GetNextSelected(LNode);
          end;

          // Initialise the report with the list of tasks and the SQL
          qrWorkFlowToDoReport.Initialise(tasks, FEmployeeCode, FDateFrom, FDateTo);

          qrWorkFlowToDoReport.HighlightOverDueDays := FTopMostDays;
          qrWorkFlowToDoReport.HighlightMatter := FTopMostMatter;
          qrWorkFlowToDoReport.EmployeeName := FEmployeeName;
          qrWorkFlowToDoReport.DateFrom := FDateFrom;

          if (cbUseDateTo.Checked) then
            qrWorkFlowToDoReport.Dates := 'Dates ' + DateToStr(FDateFrom) + ' to ' + DateToStr(FDateTo)
          else
            qrWorkFlowToDoReport.Dates := 'Date ' + DateToStr(FDateFrom);

          qrWorkFlowToDoReport.PreviewModal();
        finally
          FreeAndNil(qrWorkFlowToDoReport);
        end; }
      end;
    tdvDate:
      begin
        // Set the SQL
{       reportSql := dmWorkflowDataModuleRun.qToDoTasksDate.SQL.Text;
        qrWorkFlowToDoReportDate := TqrWorkFlowToDoReportDate.Create(Self);
        tasks := TStringList.Create;
        try
          // Get the list of tasks to print
          LNode := vtTasks.GetFirstSelected;
          while (Assigned(LNode)) do
          begin
            LInfo := vtTasks.GetNodeData(LNode);
            tasks.Add(IntToStr(LInfo.WorkFlowTask));

            LNode := vtTasks.GetNextSelected(LNode);
          end;

          // Initialise the report with the list of tasks and the SQL
          qrWorkFlowToDoReportDate.Initialise(tasks, reportSql);
          qrWorkFlowToDoReportDate.HighlightOverDueDays := FTopMostDays;
          qrWorkFlowToDoReportDate.HighlightMatter := FTopMostMatter;
          qrWorkFlowToDoReportDate.EmployeeName := FEmployeeName;
          qrWorkFlowToDoReportDate.DateFrom := FDateFrom;

          if (cbUseDateTo.Checked) then
            qrWorkFlowToDoReportDate.Dates := 'Dates ' + DateToStr(FDateFrom) + ' to ' + DateToStr(FDateTo)
          else
            qrWorkFlowToDoReportDate.Dates := 'Date ' + DateToStr(FDateFrom);

          qrWorkFlowToDoReportDate.PreviewModal();
        finally
          FreeAndNil(qrWorkFlowToDoReportDate);
          // Reset the SQL
          dmWorkflowDataModuleRun.qToDoTasksDate.SQL.Text := reportSql;
        end;     }
      end;
  end;
end;


procedure TfmWorkFlowToDo.aPrintSelectedUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := vtTasks.RootNodeCount > 0;
end;

procedure TfmWorkFlowToDo.dxBarButton17Click(Sender: TObject);
begin
  Close();
  RemoveFromDesktop(Self);
end;

procedure TfmWorkFlowToDo.edBeSeqChange(Sender: TObject);
begin
  LoadTree();
end;

procedure TfmWorkFlowToDo.aSwitchViewUpdate(Sender: TObject);
begin
{  case ViewType of
    tdvMatter: TAction(Sender).Caption := 'Switch to Date View';
    tdvDate: TAction(Sender).Caption := 'Switch to Sequence View';
    tdvSequence: TAction(Sender).Caption := 'Switch to Matter View';
  end;   }
end;

procedure TfmWorkFlowToDo.aSwitchView2Update(Sender: TObject);
begin
{  case ViewType of
    tdvMatter: TAction(Sender).Caption := 'Switch to Sequence View';
    tdvDate: TAction(Sender).Caption := 'Switch to Matter View';
    tdvSequence: TAction(Sender).Caption := 'Switch to Date View';
  end;  }
end;

procedure TfmWorkFlowToDo.aSwitchViewExecute(Sender: TObject);
begin
{  case FViewType of
    tdvMatter: ViewType := tdvDate;
    tdvDate: ViewType := tdvSequence;
    tdvSequence: ViewType := tdvMatter;
  end;     }
  ViewType := tdvMatter;
end;


procedure TfmWorkFlowToDo.aSwitchView2Execute(Sender: TObject);
begin
 { case FViewType of
    tdvMatter: ViewType := tdvSequence;
    tdvDate: ViewType := tdvMatter;
    tdvSequence: ViewType := tdvDate;
  end;   }
  ViewType := tdvDate;
end;

procedure TfmWorkFlowToDo.actSequenceExecute(Sender: TObject);
begin
   ViewType := tdvSequence;
end;

procedure TfmWorkFlowToDo.pmTasksPopup(Sender: TObject);
begin
   SwitchView1.Checked := (FViewType = tdvMatter);
   SwitchView21.Checked := (FViewType = tdvDate);
   bySequence1.Checked := (FViewType = tdvSequence);
end;

procedure TfmWorkFlowToDo.dxBarSubItem3Popup(Sender: TObject);
begin
   dxMatter.Down := (FViewType = tdvMatter);
   dxDate.Down := (FViewType = tdvDate);
   dxSequence.Down := (FViewType = tdvSequence);
end;

procedure TfmWorkFlowToDo.actStartedUpdate(Sender: TObject);
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

procedure TfmWorkFlowToDo.actStartedExecute(Sender: TObject);
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
        if(Screen.Forms[y] is TfmWorkFlowToDo) then
          TfmWorkFlowToDo(Screen.Forms[y]).ColumnUpdated(LName,not LAction.Checked, LColumn.Position);
      end;

      Break;
    end;
  end;
end;

procedure TfmWorkFlowToDo.ColumnUpdated(AColumn: String; AVisible: Boolean; APosition: Integer);
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

procedure TfmWorkFlowToDo.cbExcCritDateClick(Sender: TObject);
begin
   FViewType := tdvNone;
   if dxMatter.Down then
      ViewType := tdvMatter
   else if dxDate.Down then
      ViewType := tdvDate
   else if dxSequence.Down then
      ViewType := tdvSequence;
end;

procedure TfmWorkFlowToDo.cbExcCritDatePropertiesEditValueChanged(
  Sender: TObject);
begin
   FViewType := tdvNone;
   if dxMatter.Down then
      ViewType := tdvMatter
   else if dxDate.Down then
      ViewType := tdvDate
   else if dxSequence.Down then
      ViewType := tdvSequence;
end;

procedure TfmWorkFlowToDo.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
   Text := 'Employee: ' + FEmployeeName;
end;

procedure TfmWorkFlowToDo.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
   if (boolean(cbUseDateTo.EditValue) = True) then
      Text := 'Dates ' + DateToStr(FDateFrom) + ' to ' + DateToStr(FDateTo)
   else
      Text := 'Date ' + DateToStr(FDateFrom);
end;

procedure TfmWorkFlowToDo.Initialise(TasksList: TStrings; EmployeeCode: String;
                                     DateFrom, DateTo: TDate; ASQLReport: string;
                                     AQuery: TUniQuery; AOrder: string);
var
  index : integer;
begin
   qryWorkFlowTaskReport.Close;
   qryWorkFlowTaskReport.SQL.Text := ASQLReport;
  // Add selected tasks
   if TasksList.Count > 0 then
   begin
      qryWorkFlowTaskReport.SQL.Add(' AND w.workflowtask IN (');

      for index := 0 to TasksList.Count - 1 do
      begin
         qryWorkFlowTaskReport.SQL.Add(TasksList.Strings[index]);

         if (index < (TasksList.Count - 1)) then
            qryWorkFlowTaskReport.SQL.Add(', ');
      end;
      qryWorkFlowTaskReport.SQL.Add(') ');
   end;

   qryWorkFlowTaskReport.SQL.Add(AOrder);  //' ORDER BY nmatter, w.datetocomplete desc');

   qryWorkFlowTaskReport.ParamByName('emp').AsString := EmployeeCode;
   qryWorkFlowTaskReport.ParamByName('startdate').AsDate := DateFrom;
   qryWorkFlowTaskReport.ParamByName('enddate').AsDate   := DateTo;
   qryWorkFlowTaskReport.ParamByName('critical_date').Clear;
   if boolean(cbExcCritDate.EditValue) = True then
      qryWorkFlowTaskReport.ParamByName('critical_date').AsString := 'N';
end;

// Used to print all tasks for current employee and dates
procedure TfmWorkFlowToDo.Initialise(EmployeeCode: String; DateFrom, DateTo: TDate;
                                     AExcCritDate: boolean; ASQLReport: string;
                                     AQuery: TUniQuery; AOrder: string);
begin
   AQuery.Close;
   AQuery.SQL.Text := ASQLReport;
   AQuery.SQL.Add(AOrder);  //' ORDER BY nmatter, w.datetocomplete desc');

   AQuery.ParamByName('emp').AsString := EmployeeCode;
   AQuery.ParamByName('startdate').AsDate := DateFrom;
   AQuery.ParamByName('enddate').AsDate   := DateTo;
   AQuery.ParamByName('critical_date').Clear;
   if boolean(cbExcCritDate.EditValue) = True then
      AQuery.ParamByName('critical_date').AsString := 'N';
end;

procedure TfmWorkFlowToDo.Initialise(TasksList: TStrings; ASQLReport: string;
                                     AQuery: TUniQuery; AOrder: string);
var
  index : integer;
begin
 //  qToDoTasksDate.SQL.Text := sSql;
   AQuery.Close;
   AQuery.SQL.Text := ASQLReport;
   if TasksList.Count > 0 then
   begin
      AQuery.SQL.Add(' AND w.workflowtask IN (');

      for index := 0 to TasksList.Count - 1 do
      begin
         AQuery.SQL.Add(TasksList.Strings[index]);

         if (index < (TasksList.Count - 1)) then
            AQuery.SQL.Add(', ');
      end;

      AQuery.SQL.Add(') ');
   end;
   AQuery.SQL.Add(AOrder);  // ' ORDER BY datetocomplete , nmatter');

   AQuery.ParamByName('emp').AsString := FEmployeeCode;
   AQuery.ParamByName('startdate').AsDate := FDateFrom;
   AQuery.ParamByName('enddate').AsDate   := FDateTo;
   AQuery.ParamByName('critical_date').Clear;
   if boolean(cbExcCritDate.EditValue) = True then
      AQuery.ParamByName('critical_date').AsString := 'N';
end;

procedure TfmWorkFlowToDo.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
   Text := SystemString('COMPANY');
end;

end.

