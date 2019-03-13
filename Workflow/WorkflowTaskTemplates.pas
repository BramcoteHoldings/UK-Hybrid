unit WorkFlowTaskTemplates;
(*
  WorkFlow Task Templates.

  Task template input and editing form.

  Mathew Dredge, Aug-Sep 2002
 *)
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, DBCtrls, VirtualTrees, ActnList, ImgList, ToolWin, DB,
  ActiveX, WorkFlowDataModule, Types, Menus, ActnMan, ActnCtrls,
  WorkflowTaskDef, StdActns, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxBar, dxBarExtItems, cxGraphics, XPStyleActnCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, ppVar, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDesignLayer, ppParameter,
  OracleUniProvider, Uni, DBAccess, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppRegion, ppSubRpt, System.Actions, ppMemo;

type
  TAddToTreeAs = (tatAbove,tatBelow,tatChild);

  TTaskTreeColumns = (ttcSeqNo = 0, ttcDescription = 1, ttcDoc = 2, ttcStartWhen = 3,
    ttcCompleteDays = 4, ttcCompleteWhen = 5, ttcSkipWhen = 6,
    ttcDueDateLinkedTo = 7, ttcAssignTo = 8, ttcEMailOverdue = 9, ttcEMailWatcher = 10);

  // indexes of images in the image list.
  TTaskImages = (tiNone = -1,
                 tiSS = 14, tiSC = 15, tiSK = 13, tiSO = 27, tiSSN = tiSS, tiSCN = tiSC,
                 tiPS = 17, tiPC = 18, tiPK = 16, tiPO = 28, tiPSN = tiPS,
                 tiNS = 21, tiNC = 22, tiNK = 20,
                 tiXS = 24, tiXC = 25, tiXK = 23, tiXO = 26, tiXSN = tiXS, tiXCN = tiXC);
var
  // link images to task start/complete and skip states.
  TTaskStartWhenImages: array [Low(TTaskStartsWhen) .. High(TTaskStartsWhen)] of TTaskImages = (tiNone,
    tiPS,  tiSS,  tiXS,   // parent starts, sibling starts, related starts
           tiSC,  tiXC,   // sibling completes, related completes
           tiSK,  tiXK,   // sibling skipped, related skipped
    tiPO,  tiSO,  tiXO{,   // parent overdue, sibling overdue, related overdue
    tiPSN, tiSSN, tiXSN,  // parent started x days, sibling started x days, related started x days
           tiSCN, tiXCN}); // sibling completed x days, related completed x days

  TTaskCompleteWhenImages: array [Low(TTaskCompletesWhen) .. High(TTaskCompletesWhen)] of TTaskImages = (tiNone,
          tiXS, tiNS,  // related starts,    next starts
    tiSC, tiXC, tiNC,  // sibling completes, related completes, next completes
    tiSK, tiXK, tiNK); // sibling skipped,   related skipped,  next skipped

  TTaskSkipWhenImages: array [Low(TTaskSkipsWhen) .. High(TTaskSkipsWhen)] of TTaskImages = (tiNone,
    tiSS, tiXS, tiNS,  // sibling starts, related starts, next starts
    tiSC, tiXC, tiNC,  // sibling completes, related completes, next completes
    tiSK, tiXK, tiNK); // sibling skipped, related skipped, next skipped

  TTaskDueDateLinkToImages: array[Low(TTaskDueDateLinkTo) .. High(TTaskDueDateLinkTo)] of TTaskImages = (tiNone,
    tiPO, tiSO, tiNS, tiXO);
type
  TfmWorkFlowTaskTemplates = class(TForm)
    ImageList: TImageList;
    vtTasks: TVirtualStringTree;
    aAdd: TAction;
    aDelete: TAction;
    aEdit: TAction;
    pmTasks: TPopupMenu;
    miAdd: TMenuItem;
    miEdit: TMenuItem;
    miDelete: TMenuItem;
    ActionManager: TActionManager;
    aClose: TAction;
    aEditCut: TEditCut;
    aEditCopy: TEditCopy;
    aEditPaste: TEditPaste;
    N1: TMenuItem;
    miCut: TMenuItem;
    miCopy: TMenuItem;
    miPaste: TMenuItem;
    aPrintAdvanced: TAction;
    aFileSaveAs: TFileSaveAs;
    aPrintSimple: TAction;
    aPrintTasksDocs: TAction;
    aDummyPrint: TAction;
    aDeleteTree: TAction;
    dxBar: TdxBarManager;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    cmbWorkflowType: TcxLookupComboBox;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    btnCopyTemplate: TdxBarButton;
    dxBarButton8: TdxBarButton;
    ppWorkFlowTaskTemplateSimpleDocsReport: TppReport;
    plSimpleReport: TppDBPipeline;
    dsSimpleReport: TUniDataSource;
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
    ppFullSeq: TppDBText;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppRegion1: TppRegion;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    dsTaskTemplateSimple: TUniDataSource;
    plTaskTemplateSimple: TppDBPipeline;
    ppWorkFlowTaskTemplateSimpleReport: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFullSeq1: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppDBText10: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    dsTaskTemplateReport: TUniDataSource;
    plTaskTemplateReport: TppDBPipeline;
    ppTaskTemplateReport: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFullSeq2: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText17: TppDBText;
    ppDBText22: TppDBText;
    ppLabel30: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    btnAddWorkflow: TdxBarButton;
    dxBarButton13: TdxBarButton;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppDBMemo5: TppDBMemo;
    ppDBMemo6: TppDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure vtTasksInitChildren(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var ChildCount: Cardinal);
    procedure vtTasksInitNode(Sender: TBaseVirtualTree; ParentNode,
      Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
    procedure aAddUpdate(Sender: TObject);
    procedure aAddExecute(Sender: TObject);
    procedure vtTasksPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure vtTasksAfterCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellRect: TRect);
    procedure vtTasksGetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
    procedure aDeleteExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure vtTasksDragAllowed(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure vtTasksDragOver(Sender: TBaseVirtualTree; Source: TObject;
      Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
      var Effect: Integer; var Accept: Boolean);
    procedure vtTasksNodeMoved(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vtTasksDragDrop(Sender: TBaseVirtualTree; Source: TObject;
      DataObject: IDataObject; Formats: TFormatArray; Shift: TShiftState;
      Pt: TPoint; var Effect: Integer; Mode: TDropMode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vtTasksExpanded(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure aEditUpdate(Sender: TObject);
    procedure vtTasksDblClick(Sender: TObject);
    procedure aWorkflowTypeLookupChanged(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure vtTasksNodeCopied(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vtTasksLoadNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Stream: TStream);
    procedure vtTasksSaveNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Stream: TStream);
    procedure vtTasksNodeCopying(Sender: TBaseVirtualTree; Node,
      NewParent: PVirtualNode; var Allowed: Boolean);
    procedure aDeleteUpdate(Sender: TObject);
    procedure aEditCutUpdate(Sender: TObject);
    procedure aEditPasteUpdate(Sender: TObject);
    procedure aEditPasteExecute(Sender: TObject);
    procedure aEditCopyExecute(Sender: TObject);
    procedure aEditCutExecute(Sender: TObject);
    procedure aPrintTaskReport(Sender: TObject);
    procedure aFileSaveAsAccept(Sender: TObject);
    procedure aDummyPrintExecute(Sender: TObject);
    procedure aDeleteTreeExecute(Sender: TObject);
    procedure cmbWorkflowTypePropertiesChange(Sender: TObject);
    procedure btnCopyTemplateClick(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppFullSeqPrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppFullSeq1Print(Sender: TObject);
    procedure ppFullSeq2Print(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure vtTasksGetHint(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; var LineBreakStyle: TVTTooltipLineBreakStyle;
      var HintText: string);
    procedure vtTasksGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure dxBarButton13Click(Sender: TObject);
    procedure btnAddWorkflowClick(Sender: TObject);
    procedure cmbWorkflowTypePropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
    FCurrentWorkflowType: String;
    FCurrentParentLineID: Integer;
    FExpandedNodes: array of Integer;
    FSelectedNode: Integer;
    FEmptyTree: Boolean;
    FExpanding: Boolean;
    FFocusThisNode: PVirtualNode;

    procedure LoadRootCount();
    function NextSeqNo(AParentLineID: Integer): Integer;
    function CreateDispSeqNo(ANode: PVirtualNode): String;
    procedure FindSelected(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    function GetSelectedNode(Sender: TBaseVirtualTree): PVirtualNode;
    procedure IterDeleteTasks(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    procedure MakeTasksList(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    procedure IterGetRelated(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    function GetRelated(ALineID: Integer; ANoDescription: Boolean = False): String;

    procedure ResequenceChildren(AParentLineID, ANewLineID, ASeqNo: Integer; AUpdateExisting: Boolean; AReverse: Boolean = False);

    procedure ResequenceChildrenEx(ATree: TBaseVirtualTree; AParentNode: PVirtualNode; AUpdateExisting: Boolean);

    procedure IterSaveExpanded(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    procedure SaveTreeExpanded();
    procedure RefreshTree();
    procedure ResizeColumns();

    procedure IterNodeLineID(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    function GetNodeLineID(ALineID: Integer): PVirtualNode;
    procedure AppendTaskTemplate(ANodeData: Pointer; AUpdateExisting: Boolean);
    procedure ValidateSequence(AParentLineID: Integer);
    function BuildCompleteWhen(ANode: PVirtualNode; ANoDescription: Boolean = False): String;
    function BuildSkipWhen(ANode: PVirtualNode; ANoDescription: Boolean = False): String;
    function BuildStartWhen(ANode: PVirtualNode; ANoDescription: Boolean = False): String;
    function BuildWatcher(ANode: PVirtualNode): String;
    function BuildDueDateLinkedTo(ANode: PVirtualNode; ANoDescription: Boolean = False): String;
  public
    { Public declarations }
    procedure MakeListOfTasks(AList: TStrings);

    procedure DoMouseWheel(Sender: TObject);
    procedure LookupViewMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  end;


var
  fmWorkflowTaskTemplates: TfmWorkFlowTaskTemplates;

implementation

uses WorkFlowNewTaskItemDialog, WorkFlowDocTemplates, MiscFunc, Clipbrd,
  Printers, WorkFlowDataModuleTasks, AxiomData,
  WorkFlowCopyTemplate, WorkflowType;

{$R *.DFM}

const
  C_SETTINGOWNER = 'WKFTASKTEMPLATES';
type
  // Data for Iterator Function
  PFindSelectedData = ^TFindSelectedData;
  TFindSelectedData = record
    Node: PVirtualNode;
  end;

  // Data for Iterator function
  PvtSearchData = ^TvtSearchData;
  TvtSearchData = record
    LineID: Integer;
    Node: PVirtualNode;
  end;

  PvtDelData = ^TvtDelData;
  TvtDelData = record
    DeleteExisting: Boolean;
  end;

  // Tree Data - all required task information.
  PTaskData = ^TTaskData;
  TTaskData = record
     LineID                : Integer;
     ParentLineID          : Integer;
     SeqNo                 : Integer;
     Description           : String;
     Note                  : String;
     DaysFrom              : Integer;
     TaskStartsWhen        : TTaskStartsWhen;
     StartWhenRelated      : Integer;
     CompleteDays          : Integer;
     CompleteWhen          : TTaskCompletesWhen;
     CompleteWhenRelated   : Integer;
     SkipWhen              : TTaskSkipsWhen;
     SkipWhenRelated       : Integer;
     DueDateLinkTo         : TTaskDueDateLinkTo;
     DueDateLinkToRelated  : Integer;
     DueDateLinkToDaysFrom : Integer;
     AssignTo              : String;
     HasDocTemplates       : Boolean;
     MarkedDeleted         : Boolean;
     ScaleCostCode         : String;
     ShowFee               : Boolean;
     EMailOverdue          : String;
     Watcher               : String;
     WatchFor              : String;
     CriticalDate          : String;
     CriticalAlert         : String;
     DueSameDay            : String;
     Reportable            : String;
     HasDataForm           : Boolean;
  end;

{ TfmWFTEntryForm }


procedure TfmWorkFlowTaskTemplates.FormCreate(Sender: TObject);
begin
  DoMouseWheel(cmbWorkflowType);
  FExpanding := True;
  ConvertToHighColor(ImageList);
  FEmptyTree := True;
  if(not Assigned(dmWorkFlowDataModule)) then
    dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);

  if(not dmWorkFlowDataModule.WorkFlowEMailInstalled) then
  begin
    vtTasks.Header.Columns.Items[Integer(ttcEMailOverdue)].Options := vtTasks.Header.Columns.Items[Integer(ttcEMailOverdue)].Options - [coVisible];
    vtTasks.Header.Columns.Items[Integer(ttcEMailWatcher)].Options := vtTasks.Header.Columns.Items[Integer(ttcEMailOverdue)].Options - [coVisible];
  end;

  FCurrentWorkflowType := '10'; // default to PL..
  vtTasks.NodeDataSize := SizeOf(TTaskData);

{  if(SettingLoadInteger(C_SETTINGOWNER,'LEFT') <> 0) then
  begin
    Left        := SettingLoadInteger(C_SETTINGOWNER,'LEFT');
    Width       := SettingLoadInteger(C_SETTINGOWNER,'WIDTH');
    Top         := SettingLoadInteger(C_SETTINGOWNER,'TOP');
    Height      := SettingLoadInteger(C_SETTINGOWNER,'HEIGHT');
  end;
  WindowState := TWindowState(SettingLoadInteger(C_SETTINGOWNER,'WINDOWSTATE')); }
//  aPrintAdvanced.Visible := UpperCase(dmWorkFlowDataModule.UserID) = 'CMC';
end;

procedure TfmWorkFlowTaskTemplates.FormShow(Sender: TObject);
var
  LCode: String;
begin
  LCode := SettingLoadString(C_SETTINGWORKFLOWGENERAL,C_SETTINGWORKFLOWTYPE);
  if(LCode = '') then
    LCode := dmWorkFlowDataModule.tbWorkflowTypeCODE.Value;
  cmbWorkflowType.EditValue := LCode;
//  aWorkflowTypeLookup.KeyValue := LCode;
  FExpanding := False;
  RefreshTree();
end;

// tell the tree how many children a node will have.
procedure TfmWorkFlowTaskTemplates.vtTasksInitChildren(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var ChildCount: Cardinal);
var
  LParentLineID: Integer;
begin
  ChildCount := 0;
  LParentLineID := PTaskData(vtTasks.GetNodeData(Node)).LineID;

  // check sequence' - for some reason it can go bad..
  ValidateSequence(LParentLineID);

  dmWorkFlowDataModuleTasks.qTaskChildCount.Close();
  dmWorkFlowDataModuleTasks.qTaskChildCount.ParamByName('workflowtypecode').AsString := FCurrentWorkflowType;
  dmWorkFlowDataModuleTasks.qTaskChildCount.ParamByName('parentlineid').AsInteger := LParentLineID;
  dmWorkFlowDataModuleTasks.qTaskChildCount.Open();
  try
    if(not dmWorkFlowDataModuleTasks.qTaskChildCount.Eof) then
      ChildCount := dmWorkFlowDataModuleTasks.qTaskChildCountCHILDCOUNT.AsInteger
  finally
    dmWorkFlowDataModuleTasks.qTaskChildCount.Close();
  end;

end;

// tell the tree how many root nodes are in the tree.
procedure TfmWorkFlowTaskTemplates.LoadRootCount();
var
  LParentLineID: Integer;
begin
//  vtTasks.BeginUpdate();
//  try
    vtTasks.Clear();
    vtTasks.RootNodeCount := 0;

    LParentLineID := 0;
    FCurrentParentLineID := LParentLineID;

    ValidateSequence(LParentLineID);

    dmWorkFlowDataModuleTasks.qTaskChildCount.Close();
    dmWorkFlowDataModuleTasks.qTaskChildCount.ParamByName('workflowtypecode').AsString := FCurrentWorkflowType;
    dmWorkFlowDataModuleTasks.qTaskChildCount.ParamByName('parentlineid').AsInteger := LParentLineID;
    dmWorkFlowDataModuleTasks.qTaskChildCount.Open();

    try
      if(not dmWorkFlowDataModuleTasks.qTaskChildCount.Eof) then
        vtTasks.RootNodeCount := dmWorkFlowDataModuleTasks.qTaskChildCountCHILDCOUNT.AsInteger
    finally
      dmWorkFlowDataModuleTasks.qTaskChildCount.Close();
    end;
//  finally
//    vtTasks.EndUpdate();
//  end;
  FEmptyTree := vtTasks.RootNodeCount = 0;
end;

// initalise the tree node's data.
procedure TfmWorkFlowTaskTemplates.vtTasksInitNode(Sender: TBaseVirtualTree;
  ParentNode, Node: PVirtualNode;
  var InitialStates: TVirtualNodeInitStates);
var
  LParentData, LNodeData: PTaskData;
  LParentLineID: Integer;
  i: Integer;
  LSeqNo: Integer;

  // find location in tree, sometimes the nodes are not
  // initalised in order, so this helps know which
  // child it is..
  function GetSeqNo(ANode: PVirtualNode): Integer;
  var
    LNode: PVirtualNode;
  begin
    Result := 1;
    LNode := ANode.Parent.FirstChild;
    while(LNode <> ANode) do
    begin
      Inc(Result);
      LNode := LNode.NextSibling;
    end;
  end;
begin
  if(Assigned(ParentNode)) then
  begin
    LParentData := Sender.GetNodeData(ParentNode);
    LParentLineID := LParentData.LineID;
  end else
    LParentLineID := 0;

  LNodeData := Sender.GetNodeData(Node);
  LNodeData.ParentLineID := LParentLineID;

  if(LParentLineID <> FCurrentParentLineID) or (not dmWorkFlowDataModuleTasks.qTaskTemplate.Active) then
  begin
    dmWorkFlowDataModuleTasks.qTaskTemplate.Close();
    dmWorkFlowDataModuleTasks.qTaskTemplate.ParamByName('workflowtypecode').AsString := FCurrentWorkflowType;
    dmWorkFlowDataModuleTasks.qTaskTemplate.ParamByName('parentlineid').AsInteger := LParentLineID;
    dmWorkFlowDataModuleTasks.qTaskTemplate.ParamByName('entity').AsString := dmAxiom.Entity;
    dmWorkFlowDataModuleTasks.qTaskTemplate.Open();
    FCurrentParentLineID := LParentLineID;
  end;

  LSeqNo := GetSeqNo(Node);

  if(dmWorkFlowDataModuleTasks.qTaskTemplate.Locate('seqno',LSeqNo,[])) then
  begin
    LNodeData.LineID                  := dmWorkFlowDataModuleTasks.qTaskTemplateLINEID.AsInteger;
    LNodeData.SeqNo                   := dmWorkFlowDataModuleTasks.qTaskTemplateSEQNO.AsInteger;
    LNodeData.Description             := dmWorkFlowDataModuleTasks.qTaskTemplateTASKDESCRIPTION.AsString;
    LNodeData.Note                    := dmWorkFlowDataModuleTasks.qTaskTemplateTASKNOTE.AsString;

    LNodeData.DaysFrom                := dmWorkFlowDataModuleTasks.qTaskTemplateDAYSFROM.AsInteger;
    LNodeData.TaskStartsWhen          := GetTaskStartsWhenFromCode(dmWorkFlowDataModuleTasks.qTaskTemplateSTARTWHEN.AsString);
    LNodeData.StartWhenRelated        := dmWorkFlowDataModuleTasks.qTaskTemplateSTARTWHENRELATED.AsInteger;
    LNodeData.CompleteDays            := dmWorkFlowDataModuleTasks.qTaskTemplateCOMPLETEDAYS.AsInteger;

    LNodeData.CompleteWhen            := GetTaskCompletesWhenFromCode(dmWorkFlowDataModuleTasks.qTaskTemplateCOMPLETEWHEN.AsString);
    LNodeData.CompleteWhenRelated     := dmWorkFlowDataModuleTasks.qTaskTemplateCOMPLETEWHENRELATED.AsInteger;
    LNodeData.SkipWhen                := GetTaskSkipsWhenFromCode(dmWorkFlowDataModuleTasks.qTaskTemplateSKIPWHEN.AsString);
    LNodeData.SkipWhenRelated         := dmWorkFlowDataModuleTasks.qTaskTemplateSKIPWHENRELATED.AsInteger;

    LNodeData.DueDateLinkTo           := GetTaskDueDateLinkToFromCode(dmWorkFlowDataModuleTasks.qTaskTemplateLINKDATETO.AsString);
    LNodeData.DueDateLinkToRelated    := dmWorkFlowDataModuleTasks.qTaskTemplateLINKDATETORELATED.AsInteger;
    LNodeData.DueDateLinkToDaysFrom   := dmWorkFlowDataModuleTasks.qTaskTemplateLINKDATEDAYSFROM.AsInteger;

//    LNodeData.AssignTo                := dmWorkFlowDataModuleTasks.qTaskTemplateASSIGNTO.AsString;
    LNodeData.AssignTo                := dmWorkFlowDataModuleTasks.qTaskTemplateVALUE.AsString;

    LNodeData.HasDocTemplates         := dmWorkFlowDataModuleTasks.qTaskTemplateDOCCOUNT.AsInteger > 0;

    LNodeData.ScaleCostCode           := dmWorkFlowDataModuleTasks.qTaskTemplateSCALECOSTCODE.AsString;
    LNodeData.ShowFee                 := dmWorkFlowDataModuleTasks.qTaskTemplateShowFee.AsString = 'Y';

    LNodeData.EMailOverdue            := dmWorkFlowDataModuleTasks.qTaskTemplateEMAILOVERDUE.AsString;
    LNodeData.Watcher                 := dmWorkFlowDataModuleTasks.qTaskTemplateWATCHER.AsString;
    LNodeData.WatchFor                := dmWorkFlowDataModuleTasks.qTaskTemplateWATCHFOR.AsString;

    LNodeData.CriticalDate            := dmWorkFlowDataModuleTasks.qTaskTemplateCRITICAL_DATE.AsString;
    LNodeData.CriticalAlert           := dmWorkFlowDataModuleTasks.qTaskTemplateCRITICAL_ALERT.AsString;
    LNodeData.DueSameDay              := dmWorkFlowDataModuleTasks.qTaskTemplateSAMEDAY_DUE.AsString;
    LNodeData.Reportable              := dmWorkFlowDataModuleTasks.qTaskTemplateREPORTABLE.AsString;

    LNodeData.HasDataForm             := dmWorkFlowDataModuleTasks.qTaskTemplateDATAFORMCOUNT.AsInteger > 0;

    LNodeData.MarkedDeleted           := False;

    if(dmWorkFlowDataModuleTasks.qTaskTemplateCHILDCOUNT.AsInteger > 0) then
      InitialStates := InitialStates + [ivsHasChildren];

    if(LNodeData.LineID = FSelectedNode) then
    begin
      FFocusThisNode := Node;
//      InitialStates := InitialStates + [ivsSelected];
//      Sender.FocusedNode := Node;
    end;

    // restore expanded and selected nodes.
    for i := 0 to Length(FExpandedNodes) - 1 do
    begin
      if(LNodeData.LineID = FExpandedNodes[i]) then
      begin
        InitialStates := InitialStates + [ivsExpanded];
        Break;
      end;
    end;
  end;
end;

procedure TfmWorkFlowTaskTemplates.aAddUpdate(Sender: TObject);
begin
  if(not FEmptyTree) then
    TAction(Sender).Enabled := Assigned(vtTasks.FocusedNode)
  else
    TAction(Sender).Enabled := True;
end;

// add a task to the tree.
procedure TfmWorkFlowTaskTemplates.aAddExecute(Sender: TObject);
var
  LSelNode: PVirtualNode;
  LSelData, LSelParentData: PTaskData;
  LSeqNo, LParentLineID: Integer;
  LStr: String;
  LAddToTreeAs: TAddToTreeAs;
  LUpdateExisting: Boolean;
begin
  dmWorkFlowDataModuleTasks.tbTaskTemplates.Open();
  dmWorkFlowDataModuleTasks.tbTaskDocLink.FilterSQL := 'tasklineid = 0';
  dmWorkFlowDataModuleTasks.tbTaskDocLink.Open();
  dmWorkFlowDataModuleTasks.qTaskDocs.Close();

  SaveTreeExpanded();

  fmWorkFlowNewTaskItemDialog := TfmWorkFlowNewTaskItemDialog.Create(Self);
  try
    LSelData := nil;
    LSelNode := GetSelectedNode(vtTasks);

    if(Assigned(LSelNode)) then
    begin
      // get selected node data
      LSelData := vtTasks.GetNodeData(LSelNode);

      // sort out line id for selected and related tasks.. (use in startswhen related)
      // also sort out sequence numbers for above/below/child..
      fmWorkFlowNewTaskItemDialog.SelectedLineID := LSelData.LineID;
      if(Assigned(LSelNode.LastChild)) then
        fmWorkFlowNewTaskItemDialog.SelectedLastLineID := PTaskData(vtTasks.GetNodeData(LSelNode.LastChild)).LineID;

      if(Assigned(LSelNode.PrevSibling)) then
        fmWorkFlowNewTaskItemDialog.SelectedPriorLineID  := PTaskData(vtTasks.GetNodeData(LSelNode.PrevSibling)).LineID;

      if(Assigned(LSelNode.NextSibling)) then
        fmWorkFlowNewTaskItemDialog.SelectedNextLineID  := PTaskData(vtTasks.GetNodeData(LSelNode.NextSibling)).LineID;

      fmWorkFlowNewTaskItemDialog.lSelectedTask.Caption := CreateDispSeqNo(LSelNode) + ' - ' + LSelData.Description;
      if(LSelNode.Parent = vtTasks.RootNode) then
        fmWorkFlowNewTaskItemDialog.rbAsChild.Checked := True
      else
      begin
        LSelParentData := vtTasks.GetNodeData(LSelNode.Parent);
        fmWorkFlowNewTaskItemDialog.SelParentLineID := LSelParentData.LineID;
        LSelParentData := vtTasks.GetNodeData(LSelNode.Parent.LastChild);
        if(Assigned(LSelParentData)) then
          fmWorkFlowNewTaskItemDialog.SelParentLastLineID := LSelParentData.LineID;
        fmWorkFlowNewTaskItemDialog.rbBelow.Checked := True;
      end;

      LStr := CreateDispSeqNo(LSelNode);
      if(LStr = '') then
        fmWorkFlowNewTaskItemDialog.AsChildSeqNo := IntToStr(NextSeqNo(LSelData.LineID))
      else
        fmWorkFlowNewTaskItemDialog.AsChildSeqNo := LStr + '.' + IntToStr(NextSeqNo(LSelData.LineID));
      LStr := CreateDispSeqNo(LSelNode.Parent);
      if(LStr = '') then
      begin
        fmWorkFlowNewTaskItemDialog.AboveSeqNo   := IntToStr(LSelData.SeqNo);
        fmWorkFlowNewTaskItemDialog.BelowSeqNo   := IntToStr(LSelData.SeqNo + 1);
      end else
      begin
        fmWorkFlowNewTaskItemDialog.AboveSeqNo   := LStr + '.' + IntToStr(LSelData.SeqNo);
        fmWorkFlowNewTaskItemDialog.BelowSeqNo   := LStr + '.' + IntToStr(LSelData.SeqNo + 1);
      end;

    end else
    begin
      // no tasks, so start with the first one..
      fmWorkFlowNewTaskItemDialog.lSelectedTask.Caption := '**Empty Task Tree**';
      fmWorkFlowNewTaskItemDialog.rbAsChild.Enabled := False;
      fmWorkFlowNewTaskItemDialog.rbBelow.Enabled := False;
      fmWorkFlowNewTaskItemDialog.rbAbove.Enabled := False;
    end;

    // defaults on the table.
    dmWorkFlowDataModuleTasks.tbTaskTemplates.Append();
    dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKDESCRIPTION.AsString := '(Untitled)';
    dmWorkFlowDataModuleTasks.tbTaskTemplatesDAYSFROM.AsInteger       := 0;
    dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEDAYS.AsInteger   := 0;
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHEN.AsString       := TTaskStartWhenCode[tswDEF];
    dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHEN.AsString    := TTaskCompleteWhenCode[tcwDEF];
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHEN.AsString        := TTaskSkipWhenCode[tkwDEF];
    dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETO.AsString      := TTaskDueDateLinkToCode[dltDEF];
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSCALECOSTCODE.Clear();
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSHOWFEE.AsString         := 'N';
    dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.AsString        := dmAxiom.WorkFlowDefault;

    fmWorkFlowNewTaskItemDialog.WorkflowType := FCurrentWorkflowType;

    // get a list of tasks to show in the related combo box..
    MakeListOfTasks(fmWorkFlowNewTaskItemDialog.cbStartRelatedTask.Items);

    if(fmWorkFlowNewTaskItemDialog.ShowModal() <> mrOk) then
    begin
      // if dialog was not ok, then cancel updates and exit..
      dmWorkFlowDataModuleTasks.tbTaskDocLink.CancelUpdates();
      dmWorkFlowDataModuleTasks.tbTaskTemplates.Cancel();
      Exit;
    end;

    if(dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.AsString = '') then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.Clear();

    if(dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.AsString = '') then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.Clear();

    if(dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.AsString = '') then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.Clear();

    // sort out where to add the task, baised on  above/below/aschild...
    // gives parent lineid and sequence number and position..
    if(fmWorkFlowNewTaskItemDialog.rbBelow.Enabled) then
    begin
      if(fmWorkFlowNewTaskItemDialog.rbBelow.Checked or fmWorkFlowNewTaskItemDialog.rbAbove.Checked) then
      begin
        LParentLineID  := LSelData.ParentLineID;

        if(fmWorkFlowNewTaskItemDialog.rbBelow.Checked) then
          LSeqNo := LSelData.SeqNo + 1
        else
          LSeqNo := LSelData.SeqNo;

        if(fmWorkFlowNewTaskItemDialog.rbBelow.Checked) then
          LAddToTreeAs := tatBelow
        else
          LAddToTreeAs := tatAbove
      end else
      begin  // as child, with below enabled
        LParentLineID  := LSelData.LineID;
        LSeqNo         := NextSeqNo(LSelData.LineID);
        LAddToTreeAs   := tatChild;
      end;
    end else
    begin
      // first task on tree, defaults abound..
      LParentLineID := 0;
      LSeqNo        := 1;
      LAddToTreeAs  := tatChild;
    end;

    // commit to database..
    dmWorkFlowDataModuleTasks.tbTaskTemplatesPARENTLINEID.AsInteger    := LParentLineID;
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSEQNO.AsInteger           := LSeqNo;
    dmWorkFlowDataModuleTasks.tbTaskTemplatesWORKFLOWTYPECODE.AsString := FCurrentWorkflowType;
    dmWorkFlowDataModuleTasks.tbTaskTemplates.Post();

    // commit document linkks
    dmWorkFlowDataModuleTasks.tbTaskDocLink.First();
    while(not dmWorkFlowDataModuleTasks.tbTaskDocLink.Eof) do
    begin
      if(dmWorkFlowDataModuleTasks.tbTaskDocLinkTASKLINEID.Value = 0) then
      begin
        dmWorkFlowDataModuleTasks.tbTaskDocLink.Edit();
        dmWorkFlowDataModuleTasks.tbTaskDocLinkTASKLINEID.Value := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.Value;
        dmWorkFlowDataModuleTasks.tbTaskDocLink.Post();
      end;
      dmWorkFlowDataModuleTasks.tbTaskDocLink.Next();
    end;
    dmWorkFlowDataModuleTasks.tbTaskDocLink.ApplyUpdates();

    LUpdateExisting := False;
    if(fmWorkFlowNewTaskItemDialog.cbUpdateExisting.Checked) then
    begin
      if MessageDlg('Are you sure you want to add this new task to all existing matter timetables?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      begin
        LUpdateExisting := True;
        dmWorkFlowDataModuleTasks.qUWFTAdd.ParamByName('workflowtypecode').AsString := FCurrentWorkflowType;
        dmWorkFlowDataModuleTasks.qUWFTAdd.ParamByName('templatelineid').AsInteger := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.AsInteger;
        dmWorkFlowDataModuleTasks.qUWFTAdd.ExecSQL();
      end;
    end;

    // now if not addded as child, we need to re-sequence other children of the parent..
    if(LAddToTreeAs = tatChild) then
    begin
      SetLength(FExpandedNodes, Length(FExpandedNodes) + 1);
      FExpandedNodes[Length(FExpandedNodes) - 1] := LParentLineID;
    end else
      ResequenceChildren(LParentLineID, dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.AsInteger, LSeqNo, LUpdateExisting);

    RefreshTree();
    ResizeColumns();
  finally
    // tidy up..
    dmWorkFlowDataModuleTasks.tbTaskTemplates.Close();
    dmWorkFlowDataModuleTasks.tbTaskDocLink.Close();
    FreeAndNil(fmWorkFlowNewTaskItemDialog);
  end;
end;

// iterator callback to return the selected virtual node..
procedure TfmWorkFlowTaskTemplates.FindSelected(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
begin
  if(Sender.Selected[Node]) then
  begin
    PFindSelectedData(Data).Node := Node;
    Abort := True;
  end;
end;

// uses the callback above to get the selected node..
function TfmWorkFlowTaskTemplates.GetSelectedNode(Sender: TBaseVirtualTree): PVirtualNode;
var
  LFindSel: TFindSelectedData;
begin
  LFindSel.Node := nil;
  Sender.IterateSubtree(nil,FindSelected,@LFindSel);
  Result := LFindSel.Node;
end;

// returns the next sequence number for the parent..
function TfmWorkFlowTaskTemplates.NextSeqNo(AParentLineID: Integer): Integer;
begin
  dmWorkFlowDataModuleTasks.qGetNextSeqNo.ParamByName('workflowtypecode').AsString := FCurrentWorkflowType;
  dmWorkFlowDataModuleTasks.qGetNextSeqNo.ParamByName('parentlineid').AsInteger := AParentLineID;
  dmWorkFlowDataModuleTasks.qGetNextSeqNo.Open();
  try
    Result := dmWorkFlowDataModuleTasks.qGetNextSeqNoNEXTSEQNO.AsInteger;
  finally
    dmWorkFlowDataModuleTasks.qGetNextSeqNo.Close();
  end;
end;

// paint the text in the cell bold if it has children, and is the
// first two columns.
procedure TfmWorkFlowTaskTemplates.vtTasksPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
begin
  if((Node.ChildCount > 0) and (Column in [0,1]))then
    TargetCanvas.Font.Style := [fsBold];
end;

procedure TfmWorkFlowTaskTemplates.vtTasksAfterCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellRect: TRect);
begin
end;

// return the task note as a hint when hovering over the first column.

// recurse down the tree making the sequence number.
function TfmWorkFlowTaskTemplates.CreateDispSeqNo(ANode: PVirtualNode): String;
begin
  Result := '';
  while(ANode <> vtTasks.RootNode) do
  begin
    if(Result <> '') then
      Result := '.' + Result;
    Result := IntToStr(PTaskData(vtTasks.GetNodeData(ANode)).SeqNo) + Result;
    ANode := ANode.Parent;
  end;
end;

// return the image index for the cell, -1 for no image.
procedure TfmWorkFlowTaskTemplates.vtTasksGetHint(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex;
  var LineBreakStyle: TVTTooltipLineBreakStyle; var HintText: string);
var
  LData: PTaskData;
begin
  if(Column = 1) then
  begin
    LData := Sender.GetNodeData(Node);
    if(LData.Note <> '') then
      HintText := LData.Note;
  end;

end;

procedure TfmWorkFlowTaskTemplates.vtTasksGetImageIndex(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
  var Ghosted: Boolean; var ImageIndex: Integer);
var
  LData: PTaskData;
begin
  ImageIndex := -1;
  LData := Sender.GetNodeData(Node);
  case TTaskTreeColumns(Column) of
    ttcDoc:
      begin
        if(LData.HasDocTemplates) and (LData.ScaleCostCode = '') then
          ImageIndex := 12
        else if(LData.HasDocTemplates) and (LData.ScaleCostCode <> '') then
          ImageIndex := 34
        else if(not LData.HasDocTemplates) and (LData.ScaleCostCode <> '') then
          ImageIndex := 35;
      end;
    ttcStartWhen:
      ImageIndex := Integer(TTaskStartWhenImages[LData.TaskStartsWhen]);
    ttcCompleteWhen:
      ImageIndex := Integer(TTaskCompleteWhenImages[LData.CompleteWhen]);
    ttcSkipWhen:
      ImageIndex := Integer(TTaskSkipWhenImages[LData.SkipWhen]);
    ttcDueDateLinkedTo:
      ImageIndex := Integer(TTaskDueDateLinkToImages[LData.DueDateLinkTo]);
  end;
end;

procedure TfmWorkFlowTaskTemplates.vtTasksGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PTaskData;
begin
  CellText := '';
  LData := vtTasks.GetNodeData(Node);
  case TTaskTreeColumns(Column) of
    ttcSeqNo: // Sequence
      CellText := CreateDispSeqNo(Node);
    ttcDescription: // Task Description
      CellText := LData.Description;
    ttcStartWhen: // Start When
      CellText := BuildStartWhen(Node);
    ttcCompleteDays: // Complete Days
      begin
        if(LData.CompleteDays > 0) then
          CellText := IntToStr(LData.CompleteDays);
      end;
    ttcCompleteWhen:
      CellText := BuildCompleteWhen(Node);
    ttcSkipWhen:
      CellText := BuildSkipWhen(Node);
    ttcDueDateLinkedTo:
      CellText := BuildDueDateLinkedTo(Node);
    ttcAssignTo: // Emp Type
      CellText :=  LData.AssignTo; //AssignToToStr(LData.AssignTo);
    ttcEMailOverdue: // Email Status Change
      CellText := AssignToToStr(LData.EMailOverdue);
    ttcEMailWatcher: // watcher
      CellText := BuildWatcher(Node);
    ttcDoc: // document y/nish..
      CellText := '';
  end;
//  CellText := AndReplace(CellText);
end;

// delete the task from the tree, is recursive deleting all tasks
// under the selected task.
procedure TfmWorkFlowTaskTemplates.aDeleteExecute(Sender: TObject);
var
  LParent,
  LNode: PVirtualNode;
  LData: PTaskData;
  LUpdateExisting: TvtDelData;
begin
  LUpdateExisting.DeleteExisting := False;
  SaveTreeExpanded();
  LParent := Nil;

  LNode := vtTasks.GetFirstSelected;
  while(Assigned(LNode)) do
  begin
    LData   := vtTasks.GetNodeData(LNode);
    LParent := LNode.Parent;

    if(MessageDlg('Are you sure you want to delete the task '#13#10 +
      CreateDispSeqNo(LNode) + ' - ' + LData.Description,mtConfirmation,[mbYes,mbNo],0) = mrNo) then
      Exit;
    LUpdateExisting.DeleteExisting := MessageDlg('Do you also want to delete this task from all existing matter timetables?', mtConfirmation, [mbYes,mbNo], 0) = mrYes;

    vtTasks.IterateSubtree(LNode,IterDeleteTasks,@LUpdateExisting,[],True);
    LNode := vtTasks.GetNextSelected(LNode);
  end;

  if(Assigned(LParent)) then
    ResequenceChildrenEx(vtTasks,LParent, LUpdateExisting.DeleteExisting);

  RefreshTree();
end;

// database delete, iterator call back function.
procedure TfmWorkFlowTaskTemplates.IterDeleteTasks(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
var
  LData: PTaskData;
  PExisting: PvtDelData;
begin
  LData := vtTasks.GetNodeData(Node);
  PExisting := Data;
  // gotta be a recursive delete
  LData.MarkedDeleted := True;
  dmWorkFlowDataModuleTasks.qDeleteTask.ParamByName('lineid').AsInteger := LData.LineID;
  dmWorkFlowDataModuleTasks.qDeleteTask.ExecSQL();

  if(PExisting.DeleteExisting) then
  begin
    dmWorkFlowDataModuleTasks.qUWFTDelete.ParamByName('templatelineid').AsInteger := LData.LineID;
    dmWorkFlowDataModuleTasks.qUWFTDelete.ExecSQL();
  end;
end;

// edit the selected task.
procedure TfmWorkFlowTaskTemplates.aEditExecute(Sender: TObject);
var
  LNode: PVirtualNode;
  LData: PTaskData;
begin
  LNode := GetSelectedNode(vtTasks);
  LData := vtTasks.GetNodeData(LNode);

  dmWorkFlowDataModuleTasks.tbTaskTemplates.Open();
  dmWorkFlowDataModuleTasks.tbTaskDocLink.FilterSQL := 'tasklineid in (0,' + IntToStr(LData.LineID) + ')';
  dmWorkFlowDataModuleTasks.tbTaskDocLink.Open();
  dmWorkFlowDataModuleTasks.qTaskDocs.Close();

  fmWorkFlowNewTaskItemDialog := TfmWorkFlowNewTaskItemDialog.Create(Self);
  try
    fmWorkFlowNewTaskItemDialog.Caption := 'Edit Task Item';
    fmWorkFlowNewTaskItemDialog.rbBelow.Enabled := False;
    fmWorkFlowNewTaskItemDialog.rbAsChild.Enabled := False;
    fmWorkFlowNewTaskItemDialog.rbAbove.Enabled := False;

    fmWorkFlowNewTaskItemDialog.lSelectedTask.Caption := CreateDispSeqNo(LNode) + ' - ' + LData.Description;

    // work out related nodes..
    fmWorkFlowNewTaskItemDialog.SelectedLineID := LData.LineID;
    if(Assigned(LNode.PrevSibling)) then
      fmWorkFlowNewTaskItemDialog.SelectedPriorLineID  := PTaskData(vtTasks.GetNodeData(LNode.PrevSibling)).LineID;
    if(Assigned(LNode.NextSibling)) then
      fmWorkFlowNewTaskItemDialog.SelectedNextLineID   := PTaskData(vtTasks.GetNodeData(LNode.NextSibling)).LineID;
    if(LNode.Parent <> vtTasks.RootNode) then
      fmWorkFlowNewTaskItemDialog.SelParentLineID  := PTaskData(vtTasks.GetNodeData(LNode.Parent)).LineID;


    fmWorkFlowNewTaskItemDialog.WorkflowType := FCurrentWorkflowType;
    MakeListOfTasks(fmWorkFlowNewTaskItemDialog.cbStartRelatedTask.Items);

    dmWorkFlowDataModuleTasks.tbTaskTemplates.Locate('lineid',LData.LineID,[]);
    dmWorkFlowDataModuleTasks.tbTaskTemplates.Edit();


    if(fmWorkFlowNewTaskItemDialog.ShowModal() <> mrOk) then
    begin
      dmWorkFlowDataModuleTasks.tbTaskDocLink.CancelUpdates();
      dmWorkFlowDataModuleTasks.tbTaskTemplates.Cancel();
      Exit;
    end;

    if(dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.AsString = '') then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.Clear();

    if(dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.AsString = '') then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.Clear();

    if(dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.AsString = '') then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.Clear();

    dmWorkFlowDataModuleTasks.tbTaskTemplates.Post();

    LData.Description       := dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKDESCRIPTION.AsString;
    LData.Note              := dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKNOTE.AsString;
    LData.DaysFrom          := dmWorkFlowDataModuleTasks.tbTaskTemplatesDAYSFROM.AsInteger;

    LData.TaskStartsWhen    := GetTaskStartsWhenFromCode(dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHEN.AsString);
    LData.StartWhenRelated  := dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.AsInteger;
    LData.CompleteDays      := dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEDAYS.AsInteger;

    LData.CompleteWhen        := GetTaskCompletesWhenFromCode(dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHEN.AsString);
    LData.CompleteWhenRelated := dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHENRELATED.AsInteger;
    LData.SkipWhen            := GetTaskSkipsWhenFromCode(dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHEN.AsString);
    LData.SkipWhenRelated     := dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.AsInteger;

    LData.DueDateLinkTo         := GetTaskDueDateLinkToFromCode(dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETO.AsString);
    LData.DueDateLinkToRelated  := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETORELATED.AsInteger;
    LData.DueDateLinkToDaysFrom := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATEDAYSFROM.AsInteger;

    LData.AssignTo          := AssignToToStr(dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.AsString);
    LData.HasDocTemplates   := dmWorkFlowDataModuleTasks.tbTaskDocLink.RecordCount > 0;

    LData.ScaleCostCode     := dmWorkFlowDataModuleTasks.tbTaskTemplatesSCALECOSTCODE.AsString;
    LData.ShowFee           := dmWorkFlowDataModuleTasks.tbTaskTemplatesSHOWFEE.AsString = 'Y';

    LData.EMailOverdue      := dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.AsString;
    LData.Watcher           := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.AsString;
    LData.WatchFor          := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString;

    if(fmWorkFlowNewTaskItemDialog.cbUpdateExisting.Checked) then
    begin
      if MessageDlg('Are you sure you want to update this task in all existing matter timetables?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      begin
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('taskdescription').Value     :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKDESCRIPTION.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('tasknote').Value            :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKNOTE.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('daysfrom').Value            :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesDAYSFROM.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('startwhen').Value           :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHEN.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('startwhenrelated').Value    :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('completedays').Value        :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEDAYS.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('completewhen').Value        :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHEN.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('completewhenrelated').Value :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHENRELATED.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('skipwhen').Value            :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHEN.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('skipwhenrelated').Value     :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('assignto').Value            :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('templatelineid').Value      :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.Value;

        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('linkdateto').Value          :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETO.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('linkdatetorelated').Value   :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETORELATED.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('linkdatedaysfrom').Value    :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATEDAYSFROM.Value;

        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('scalecostcode').Value       :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesSCALECOSTCODE.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('showfee').Value             :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesSHOWFEE.Value;

        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('emailoverdue').Value        :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.Value;

        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('watcher').Value             :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('watchfor').Value            :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.Value;

        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('SAMEDAY_DUE').Value         :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesSAMEDAY_DUE.Value;

        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('critical_alert').Value      :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_ALERT.Value;
        dmWorkFlowDataModuleTasks.qUWFTUpdate.ParamByName('critical_date').Value       :=  dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_DATE.Value;

        dmWorkFlowDataModuleTasks.qUWFTUpdate.ExecSQL();
      end;
    end;

    // commit document links.
    dmWorkFlowDataModuleTasks.tbTaskDocLink.First();
    while(not dmWorkFlowDataModuleTasks.tbTaskDocLink.Eof) do
    begin
      if(dmWorkFlowDataModuleTasks.tbTaskDocLinkTASKLINEID.Value = 0) then
      begin
        dmWorkFlowDataModuleTasks.tbTaskDocLink.Edit();
        dmWorkFlowDataModuleTasks.tbTaskDocLinkTASKLINEID.Value := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.Value;
        dmWorkFlowDataModuleTasks.tbTaskDocLink.Post();
      end;
      dmWorkFlowDataModuleTasks.tbTaskDocLink.Next();
    end;
    dmWorkFlowDataModuleTasks.tbTaskDocLink.ApplyUpdates();
    ResizeColumns();
  finally
    dmWorkFlowDataModuleTasks.tbTaskTemplates.Close();
    dmWorkFlowDataModuleTasks.tbTaskDocLink.Close();
    fmWorkFlowNewTaskItemDialog.Free;
    fmWorkFlowNewTaskItemDialog := nil;
  end;
end;

// allow dragging of the first column as long as its column 0..
procedure TfmWorkFlowTaskTemplates.vtTasksDragAllowed(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  Allowed := (Assigned(Node.NextSibling) or Assigned(Node.PrevSibling))
    and (Column = 0);
end;

// drag over, make sure source is the same as sender.
procedure TfmWorkFlowTaskTemplates.vtTasksDragOver(Sender: TBaseVirtualTree;
  Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint;
  Mode: TDropMode; var Effect: Integer; var Accept: Boolean);
begin
  Accept := (Source = Sender);
end;

// node drag-dropped, workout what has to be done and do it..
procedure TfmWorkFlowTaskTemplates.vtTasksDragDrop(Sender: TBaseVirtualTree;
  Source: TObject; DataObject: IDataObject; Formats: TFormatArray;
  Shift: TShiftState; Pt: TPoint; var Effect: Integer; Mode: TDropMode);
var
  i: Integer;
  AttachMode: TVTNodeAttachMode;

  procedure DetermineEffect();
  begin
    if Shift = [] then
    begin
      // No modifier key, so use standard action.
      if Source = Sender then
        Effect := DROPEFFECT_MOVE
      else
        Effect := DROPEFFECT_COPY;
    end else
    begin
      // A modifier key is pressed, hence use this to determine action.
      if (Shift = [ssAlt]) or (Shift = [ssCtrl, ssAlt]) then
        Effect := DROPEFFECT_LINK
      else
      begin
        if Shift = [ssCtrl] then
          Effect := DROPEFFECT_COPY
        else
          Effect := DROPEFFECT_MOVE;
      end;
    end;
  end;

begin

  if(not Assigned(DataObject)) then
    Exit;

  if(Length(Formats) > 0) then
  begin
    for i := 0 to High(Formats) do
    begin
      if Formats[I] = CF_VIRTUALTREE then
      begin
        case Mode of
          dmAbove:
            AttachMode := amInsertBefore;
          dmOnNode:
            AttachMode := amAddChildLast;
          dmBelow:
            AttachMode := amInsertAfter;
        else
          AttachMode := amNowhere;
        end;

        if Source is TBaseVirtualTree then
          DetermineEffect()
        else
        begin
          if Boolean(Effect and DROPEFFECT_COPY) then
            Effect := DROPEFFECT_COPY
          else
            Effect := DROPEFFECT_MOVE;
        end;

        Sender.ProcessDrop(DataObject, Sender.DropTargetNode, Effect, AttachMode);
        Break;
      end;
    end;
  end;
end;

// return a string list of task descriptions and sequence numbers.
procedure TfmWorkFlowTaskTemplates.MakeListOfTasks(AList: TStrings);
begin
  vtTasks.IterateSubtree(nil,MakeTasksList,AList,[],True);
end;

// iterator callback for the above...
procedure TfmWorkFlowTaskTemplates.MakeTasksList(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
var
  LStrs: TStrings;
  LData: PTaskData;
begin
  LStrs := TStrings(Data);
  LData := Sender.GetNodeData(Node);
  LStrs.AddObject(CreateDispSeqNo(Node) + ' ' + LData.Description, TObject(LData.LineID))
end;

// return the description of the task that identified by the lineid
function TfmWorkFlowTaskTemplates.GetRelated(ALineID: Integer; ANoDescription: Boolean): String;
var
  LData: TvtSearchData;
  LNodeData: PTaskData;
begin
  Result := '';
  LData.LineId := ALineID;
  LData.Node := Nil;
  vtTasks.IterateSubtree(nil,IterGetRelated,@LData,[],True);
  if(Assigned(LData.Node)) then
  begin
    LNodeData := vtTasks.GetNodeData(LData.Node);
    if(ANoDescription) then
      Result := CreateDispSeqNo(LData.Node)
    else
      Result := CreateDispSeqNo(LData.Node) + ' - ' + LNodeData.Description;
  end;
end;

// iterator callback for the above function.
procedure TfmWorkFlowTaskTemplates.IterGetRelated(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
begin
  if(PTaskData(Sender.GetNodeData(Node)).LineID = PvtSearchData(Data).LineID) then
  begin
    Abort := True;
    PvtSearchData(Data).Node := Node;
  end;
end;

// resequence children, because of add or delete,
procedure TfmWorkFlowTaskTemplates.ResequenceChildren(AParentLineID, ANewLineID, ASeqNo: Integer; AUpdateExisting: Boolean; AReverse: Boolean);
var
   LSeq: Integer;
   LReClose: Boolean;
begin
   LReClose := False;
   dmWorkFlowDataModuleTasks.tbTaskTemplates.DisableControls;
   try
      dmWorkFlowDataModuleTasks.tbTaskTemplates.Filter := 'workflowtypecode = '''  + FCurrentWorkflowType + ''' AND ParentLineID = ' + IntToStr(AParentLineID) + ' AND LINEID <> ' + IntToStr(ANewLineID);
      dmWorkFlowDataModuleTasks.tbTaskTemplates.Filtered := True;
      // setting cachedupdates to true with active dataset seem to cause
      // a problem.
      dmWorkFlowDataModuleTasks.tbTaskTemplates.Close();
      dmWorkFlowDataModuleTasks.tbTaskTemplates.CachedUpdates := True;
      LReClose := not dmWorkFlowDataModuleTasks.tbTaskTemplates.Active;
      if(LReClose) then
         dmWorkFlowDataModuleTasks.tbTaskTemplates.Open();

      if(not AReverse) then
      begin
         // 25/11/2009  AES
         // changed the tbTaskTemplates.FetchAll property to TRUE.  this should give us a count of all records returned.
         // could be slow
         for LSeq := dmWorkFlowDataModuleTasks.tbTaskTemplates.RecordCount + 1 downto ASeqNo do
         begin
            if(dmWorkFlowDataModuleTasks.tbTaskTemplates.Locate('SEQNO',LSeq,[])) then
            begin
               dmWorkFlowDataModuleTasks.tbTaskTemplates.Edit();
               dmWorkFlowDataModuleTasks.tbTaskTemplatesSEQNO.AsInteger := LSeq + 1;
               dmWorkFlowDataModuleTasks.tbTaskTemplates.Post();
               if(AUpdateExisting) then
               begin
                  dmWorkFlowDataModuleTasks.qUWFTSequence.ParamByName('templatelineid').AsInteger := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.AsInteger;
                  dmWorkFlowDataModuleTasks.qUWFTSequence.ParamByName('seqno').AsInteger := LSeq + 1;
                  dmWorkFlowDataModuleTasks.qUWFTSequence.ExecSQL();
               end;
            end;
         end;
      end else
      begin
         for LSeq := ASeqNo + 1 to dmWorkFlowDataModuleTasks.tbTaskTemplates.RecordCount + 1 do
         begin
            if(dmWorkFlowDataModuleTasks.tbTaskTemplates.Locate('SEQNO',LSeq,[])) then
            begin
               dmWorkFlowDataModuleTasks.tbTaskTemplates.Edit();
               dmWorkFlowDataModuleTasks.tbTaskTemplatesSEQNO.AsInteger := LSeq - 1;
               dmWorkFlowDataModuleTasks.tbTaskTemplates.Post();
               if(AUpdateExisting) then
               begin
                  dmWorkFlowDataModuleTasks.qUWFTSequence.ParamByName('templatelineid').AsInteger := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.AsInteger;
                  dmWorkFlowDataModuleTasks.qUWFTSequence.ParamByName('seqno').AsInteger := LSeq - 1;
                  dmWorkFlowDataModuleTasks.qUWFTSequence.ExecSQL();
               end;
            end;
         end;
      end;
      dmWorkFlowDataModuleTasks.tbTaskTemplates.CommitUpdates();
   finally
      if(LReClose) then
         dmWorkFlowDataModuleTasks.tbTaskTemplates.Close();
      dmWorkFlowDataModuleTasks.tbTaskTemplates.CachedUpdates := False;
      dmWorkFlowDataModuleTasks.tbTaskTemplates.Filtered := False;
      dmWorkFlowDataModuleTasks.tbTaskTemplates.EnableControls;
   end;
end;

// reload the tree from scratch..
procedure TfmWorkFlowTaskTemplates.RefreshTree();
begin
  FEmptyTree := True;
  vtTasks.BeginUpdate();
  FFocusThisNode := Nil;
  try
    FCurrentParentLineID := -1;
    FCurrentWorkflowType := cmbWorkflowType.EditValue;
    dmWorkFlowDataModuleTasks.qTaskTemplate.Close();
    LoadRootCount();
    ResizeColumns();
  finally
    vtTasks.EndUpdate();
    if(Assigned(FFocusThisNode)) then
    begin
      vtTasks.UpdateScrollBars(True);
      vtTasks.ScrollIntoView(FFocusThisNode,True);
      vtTasks.Selected[FFocusThisNode] := True;
      vtTasks.FocusedNode := FFocusThisNode;
    end;
  end;
end;

// save all nodes that are expanded for re-expansion later..
procedure TfmWorkFlowTaskTemplates.SaveTreeExpanded();
begin
  if(Assigned(vtTasks.FocusedNode)) then
    FSelectedNode := PTaskData(vtTasks.GetNodeData(vtTasks.FocusedNode)).LineID;

  SetLength(FExpandedNodes,0);
  vtTasks.IterateSubtree(nil,IterSaveExpanded,nil);
end;

// iterator callback for above..
procedure TfmWorkFlowTaskTemplates.IterSaveExpanded(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer;
  var Abort: Boolean);
begin
  if(vsExpanded in Node.States) then
  begin
    SetLength(FExpandedNodes,Length(FExpandedNodes) + 1);
    FExpandedNodes[Length(FExpandedNodes) - 1] := PTaskData(Sender.GetNodeData(Node)).LineID;
  end;
end;

procedure TfmWorkFlowTaskTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
{  SettingSave(C_SETTINGOWNER,'WINDOWSTATE', Integer(WindowState));
  if(WindowState <> wsMaximized) then
  begin
    SettingSave(C_SETTINGOWNER,'LEFT', Left);
    SettingSave(C_SETTINGOWNER,'WIDTH', Width);
    SettingSave(C_SETTINGOWNER,'TOP', Top);
    SettingSave(C_SETTINGOWNER,'HEIGHT', Height);
  end;

  Action := caFree;
  fmWorkflowTaskTemplates := nil; }
end;

// resize the columns in the tree so that the width shows the whole caption
// or the largest data visible..
procedure TfmWorkFlowTaskTemplates.ResizeColumns;
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

procedure TfmWorkFlowTaskTemplates.vtTasksExpanded(
  Sender: TBaseVirtualTree; Node: PVirtualNode);
begin
  ResizeColumns();
end;

procedure TfmWorkFlowTaskTemplates.aEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtTasks.FocusedNode) and (vtTasks.SelectedCount = 1);
end;

procedure TfmWorkFlowTaskTemplates.vtTasksDblClick(Sender: TObject);
begin
  if(aEdit.Enabled) then
    aEdit.Execute();
end;

// matter type has changed so re-load tree..
procedure TfmWorkFlowTaskTemplates.aWorkflowTypeLookupChanged(Sender: TObject);
begin
  RefreshTree();
  SettingSave(C_SETTINGWORKFLOWGENERAL,C_SETTINGWORKFLOWTYPE,String(cmbWorkflowType.EditValue));
end;

procedure TfmWorkFlowTaskTemplates.aCloseExecute(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

// when drag-drop or cut-paste, node is moved, update the database to
// reflect change..
procedure TfmWorkFlowTaskTemplates.vtTasksNodeMoved(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
var
  LNodeData: PTaskData;
  LNewParentLineID,
  LOldParentLineID,
  LNewSeqNo: Integer;
  LUpdateExisting: Boolean;
begin
  LNodeData := Sender.GetNodeData(Node);
  if(Node.Parent <> Sender.RootNode) then
    LNewParentLineID := PTaskData(Sender.GetNodeData(Node.Parent)).LineID
  else
    LNewParentLineID := 0;
  LOldParentLineID := LNodeData.ParentLineID;

  LUpdateExisting := MessageDlg('Do you also want to move this task in all existing matter timetables?', mtConfirmation, [mbYes,mbNo], 0) = mrYes;

  if(LNewParentLineID <> LOldParentLineID) then
  begin // remove from old parent and give to the new..
    dmWorkflowDataModule.qAnyQuery.SQL.Text := 'UPDATE workflowtasktemplates SET parentlineid = :newparent WHERE lineid = :lineid';
    dmWorkflowDataModule.qAnyQuery.ParamByName('newparent').AsInteger := LNewParentLineID;
    dmWorkflowDataModule.qAnyQuery.ParamByName('lineid').AsInteger := LNodeData.LineID;
    dmWorkflowDataModule.qAnyQuery.ExecSQL();
    if(LUpdateExisting) then
    begin
      dmWorkflowDataModule.qAnyQuery.SQL.Text := 'UPDATE workflowtasks SET parentlineid = :newparent WHERE templatelineid = :lineid';
      dmWorkflowDataModule.qAnyQuery.ParamByName('newparent').AsInteger := LNewParentLineID;
      dmWorkflowDataModule.qAnyQuery.ParamByName('lineid').AsInteger := LNodeData.LineID;
      dmWorkflowDataModule.qAnyQuery.ExecSQL();
    end;

    LNodeData.ParentLineID := LNewParentLineID;
  end;

  // get new sequence number and update db..
  if(Assigned(Node.PrevSibling)) then
    LNewSeqNo := PTaskData(Sender.GetNodeData(Node.PrevSibling)).SeqNo + 1
  else
    LNewSeqNo := 1; // added first..

  dmWorkflowDataModule.qAnyQuery.SQL.Text := 'UPDATE workflowtasktemplates SET seqno = :newseqno WHERE lineid = :lineid';
  dmWorkflowDataModule.qAnyQuery.ParamByName('newseqno').AsInteger := LNewSeqNo;
  dmWorkflowDataModule.qAnyQuery.ParamByName('lineid').AsInteger := LNodeData.LineID;
  dmWorkflowDataModule.qAnyQuery.ExecSQL();

  if(LUpdateExisting) then
  begin
    dmWorkflowDataModule.qAnyQuery.SQL.Text := 'UPDATE workflowtasks SET seqno = :newseqno WHERE templatelineid = :lineid';
    dmWorkflowDataModule.qAnyQuery.ParamByName('newseqno').AsInteger := LNewSeqNo;
    dmWorkflowDataModule.qAnyQuery.ParamByName('lineid').AsInteger := LNodeData.LineID;
    dmWorkflowDataModule.qAnyQuery.ExecSQL();
  end;

  LNodeData.SeqNo := LNewSeqNo;

  // resequence new parent (or existing)
  ResequenceChildrenEx(Sender, Node.Parent,LUpdateExisting);

  if(LNewParentLineID <> LOldParentLineID) then  // old parent
    ResequenceChildrenEx(Sender,GetNodeLineID(LOldParentLineID),LUpdateExisting);

end;

procedure TfmWorkFlowTaskTemplates.vtTasksNodeCopied(Sender: TBaseVirtualTree; Node: PVirtualNode);
  procedure DoAllChildNodes(ANode: PVirtualNode;AUpdateExisting: Boolean);
  var
    LChildNode: PVirtualNode;
    LNodeData,
    LChildNodeData: PTaskData;
  begin
    LNodeData := Sender.GetNodeData(ANode);
    LChildNode := ANode.FirstChild;
    while(Assigned(LChildNode)) do
    begin
      LChildNodeData := Sender.GetNodeData(LChildNode);
      LChildNodeData.ParentLineID := LNodeData.LineID;
      AppendTaskTemplate(LChildNodeData,AUpdateExisting);
      DoAllChildNodes(LChildNode,AUpdateExisting);
      LChildNode := LChildNode.NextSibling;
    end;
  end;
var
  LNodeData: PTaskData;
  LUpdateExisting: Boolean;
begin
  // to implement.

  // first have to update node under its new parent, then recursivly
  // insert children nodes...

  LNodeData := Sender.GetNodeData(Node);
  if(Node.Parent <> Sender.RootNode) then
    LNodeData.ParentLineID := PTaskData(Sender.GetNodeData(Node.Parent)).LineID
  else
    LNodeData.ParentLineID := 0;

  LUpdateExisting := MessageDlg('Do you also want to copy this task into all existing matter timetables?', mtConfirmation, [mbYes,mbNo], 0) = mrYes;


  dmWorkFlowDataModuleTasks.tbTaskTemplates.Open();
  try
    LNodeData.SeqNo := 0;
    AppendTaskTemplate(LNodeData, LUpdateExisting);
    DoAllChildNodes(Node, LUpdateExisting);
    ResequenceChildrenEx(SEnder,Node.Parent, LUpdateExisting);
  finally
    dmWorkFlowDataModuleTasks.tbTaskTemplates.Close();
  end;
end;

procedure TfmWorkFlowTaskTemplates.AppendTaskTemplate(ANodeData: Pointer; AUpdateExisting: Boolean);
var
  LNodeData: PTaskData;
  ALineID: integer;
begin
  LNodeData := PTaskData(ANodeData);
  dmWorkFlowDataModuleTasks.tbTaskTemplates.Edit;
  dmWorkFlowDataModuleTasks.tbTaskTemplates.Append();
  dmWorkFlowDataModuleTasks.tbTaskTemplatesWORKFLOWTYPECODE.AsString       := FCurrentWorkflowType;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesSEQNO.AsInteger                 := LNodeData.SeqNo;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesPARENTLINEID.AsInteger          := LNodeData.ParentLineID;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKDESCRIPTION.AsString        := LNodeData.Description;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKNOTE.AsString               := LNodeData.Note;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHEN.AsString              := TTaskStartWhenCode[LNodeData.TaskStartsWhen];
  dmWorkFlowDataModuleTasks.tbTaskTemplatesDAYSFROM.AsInteger              := LNodeData.DaysFrom;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEDAYS.AsInteger          := LNodeData.CompleteDays;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.AsString               := TableString('display_name','value', LNodeData.AssignTo,'code');
  if(LNodeData.StartWhenRelated > 0) then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.AsInteger    := LNodeData.StartWhenRelated;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHEN.AsString           := TTaskCompleteWhenCode[LNodeData.CompleteWhen];
  if(LNodeData.CompleteWhenRelated > 0) then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHENRELATED.AsInteger := LNodeData.CompleteWhenRelated;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHEN.AsString               := TTaskSkipWhenCode[LNodeData.SkipWhen];
  if(LNodeData.SkipWhenRelated > 0) then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.AsInteger     := LNodeData.SkipWhenRelated;

  if(LNodeData.ScaleCostCode = '') then
  begin
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSCALECOSTCODE.Clear;
  end
  else
    dmWorkFlowDataModuleTasks.tbTaskTemplatesSCALECOSTCODE.AsString            := LNodeData.ScaleCostCode;

  if(LNodeData.ShowFee) then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesShowFee.AsString := 'Y'
  else
    dmWorkFlowDataModuleTasks.tbTaskTemplatesShowFee.AsString := 'N';

  dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETO.AsString               := TTaskDueDateLinkToCode[LNodeData.DueDateLinkTo];
  if(LNodeData.DueDateLinkToRelated = 0) then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETORELATED.Clear()
  else
    dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETORELATED.AsInteger      := LNodeData.DueDateLinkToRelated;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATEDAYSFROM.AsInteger         := LNodeData.DueDateLinkToDaysFrom;


  if(LNodeData.EMailOverdue = '') then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.Clear()
  else
    dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.AsString              := LNodeData.EMailOverdue;

  if(LNodeData.Watcher = '') then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.Clear()
  else
    dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.AsString                   := LNodeData.Watcher;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString                  := LNodeData.WatchFor;

  dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_DATE.AsString             := LNodeData.CriticalDate;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_ALERT.AsString            := LNodeData.CriticalAlert;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesSAMEDAY_DUE.AsString               := LNodeData.DueSameDay;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesREPORTABLE.AsString                := LNodeData.Reportable;

  dmWorkFlowDataModuleTasks.tbTaskTemplates.Post();

  if LNodeData.HasDocTemplates then
  begin
     ALineID := LNodeData.LineID;
     dmWorkFlowDataModuleTasks.qCopyDocTemplates.ParamByName('newlineid').AsInteger := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.AsInteger;
     dmWorkFlowDataModuleTasks.qCopyDocTemplates.ParamByName('lineid').AsInteger    := LNodeData.LineID;
     dmWorkFlowDataModuleTasks.qCopyDocTemplates.ExecSQL();
  end;

  if LNodeData.HasDataForm then
  begin
     dmWorkFlowDataModuleTasks.qCopyDataform.ParamByName('newlineid').AsInteger := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.AsInteger;
     dmWorkFlowDataModuleTasks.qCopyDataform.ParamByName('lineid').AsInteger    := LNodeData.LineID;
     dmWorkFlowDataModuleTasks.qCopyDataform.ExecSQL();
  end;

  LNodeData.LineID                                                    := dmWorkFlowDataModuleTasks.tbTaskTemplatesLINEID.AsInteger;

  if(AUpdateExisting) then
  begin
    dmWorkFlowDataModuleTasks.qUWFTAdd.ParamByName('workflowtypecode').AsString := FCurrentWorkflowType;
    dmWorkFlowDataModuleTasks.qUWFTAdd.ParamByName('templatelineid').AsInteger := LNodeData.LineID;
    dmWorkFlowDataModuleTasks.qUWFTAdd.ExecSQL();
  end;
end;

// resequence children tasks using the changes to the tree..
procedure TfmWorkFlowTaskTemplates.ResequenceChildrenEx(ATree: TBaseVirtualTree; AParentNode: PVirtualNode; AUpdateExisting: Boolean);
var
  LChildNode: PVirtualNode;
  LChildData: PTaskData;
  LSeqNo: Integer;
begin
  LSeqNo := 0;
  LChildNode := AParentNode.FirstChild;
  while(Assigned(LChildNode)) do
  begin
    LChildData := ATree.GetNodeData(LChildNode);
    if(not LChildData.MarkedDeleted) then
    begin
      Inc(LSeqNo);
      if(LChildData.SeqNo <> LSeqNo) then
      begin
        dmWorkflowDataModule.qAnyQuery.SQL.Text := 'UPDATE workflowtasktemplates SET seqno = :newseqno WHERE lineid = :lineid';
        dmWorkflowDataModule.qAnyQuery.ParamByName('newseqno').AsInteger := LSeqNo;
        dmWorkflowDataModule.qAnyQuery.ParamByName('lineid').AsInteger := LChildData.LineID;
        dmWorkflowDataModule.qAnyQuery.ExecSQL();

        if(AUpdateExisting) then
        begin
          dmWorkFlowDataModuleTasks.qUWFTSequence.ParamByName('templatelineid').AsInteger := LChildData.LineID;
          dmWorkFlowDataModuleTasks.qUWFTSequence.ParamByName('seqno').AsInteger := LSeqNo;
          dmWorkFlowDataModuleTasks.qUWFTSequence.ExecSQL();
        end;

        LChildData.SeqNo := LSeqNo;
      end;
    end;
    LChildNode := LChildNode.NextSibling;
  end;
end;

// return the virtual node that is identified by lineid.
function TfmWorkFlowTaskTemplates.GetNodeLineID(ALineID: Integer): PVirtualNode;
var
  LData: TvtSearchData;
begin
  Result := vtTasks.RootNode;
  if(ALineID <> 0) then
  begin
    LData.LineId := ALineID;
    LData.Node := Nil;
    vtTasks.IterateSubtree(nil,IterNodeLineID,@LData,[],True);
    if(Assigned(LData.Node)) then
      Result := LData.Node;
  end;
end;

// iterator callback for the above..
procedure TfmWorkFlowTaskTemplates.IterNodeLineID(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
begin
  if(PTaskData(Sender.GetNodeData(Node)).LineID = PvtSearchData(Data).LineID) then
  begin
    PvtSearchData(Data).Node := Node;
    Abort := True;
  end;
end;

procedure TfmWorkFlowTaskTemplates.vtTasksLoadNode(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Stream: TStream);
  function ReadString(): String;
  var
    l: Integer;
    p: PChar;

  begin
    Stream.Read(l,SizeOf(l));
    if(l > 0) then
    begin
      p := AllocMem(l+1);
      //SetLength(s,l);
      Stream.Read(p^,l);
      p[l] := #0;
      Result := String(p);
    end else
      Result := '';
  end;
var
  LNodeData: PTaskData;
begin
  LNodeData := Sender.GetNodeData(Node);

  Stream.Read(LNodeData.LineID,             SizeOf(LNodeData.LineID));
  Stream.Read(LNodeData.ParentLineID,        SizeOf(LNodeData.ParentLineID));
  Stream.Read(LNodeData.SeqNo,               SizeOf(LNodeData.SeqNo));
  LNodeData.Description := ReadString();
  LNodeData.Note := ReadString();
  Stream.Read(LNodeData.DaysFrom,            SizeOf(LNodeData.DaysFrom));
  Stream.Read(LNodeData.TaskStartsWhen,      SizeOf(LNodeData.TaskStartsWhen));
  Stream.Read(LNodeData.StartWhenRelated,    SizeOf(LNodeData.StartWhenRelated));
  Stream.Read(LNodeData.CompleteDays,        SizeOf(LNodeData.CompleteDays));
  Stream.Read(LNodeData.CompleteWhen,        SizeOf(LNodeData.CompleteWhen));
  Stream.Read(LNodeData.CompleteWhenRelated, SizeOf(LNodeData.CompleteWhenRelated));
  Stream.Read(LNodeData.SkipWhen,            SizeOf(LNodeData.SkipWhen));
  Stream.Read(LNodeData.SkipWhenRelated,     SizeOf(LNodeData.SkipWhenRelated));
  LNodeData.AssignTo := ReadString();
  Stream.Read(LNodeData.HasDocTemplates,     SizeOf(LNodeData.HasDocTemplates));

  Stream.Read(LNodeData.DueDateLinkTo,          SizeOf(LNodeData.DueDateLinkTo));
  Stream.Read(LNodeData.DueDateLinkToRelated,   SizeOf(LNodeData.DueDateLinkToRelated));
  Stream.Read(LNodeData.DueDateLinkToDaysFrom,  SizeOf(LNodeData.DueDateLinkToDaysFrom));
  LNodeData.ScaleCostCode := ReadString();
  Stream.Read(LNodeData.ShowFee,                SizeOf(LNodeData.ShowFee));
  LNodeData.EMailOverdue := ReadString();
  LNodeData.Watcher      := ReadString();
  LNodeData.WatchFor     := ReadString();
  LNodeData.CriticalDate := ReadString();
  LNodeData.CriticalAlert:= ReadString();
  LNodeData.DueSameDay   := ReadString();
  LNodeData.Reportable   := ReadString();
  Stream.Read(LNodeData.HasDataform,            SizeOf(LNodeData.HasDataform));
end;

procedure TfmWorkFlowTaskTemplates.vtTasksSaveNode(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Stream: TStream);
  procedure WriteString(AString: String);
  var
    l: Integer;
  begin
    l := Length(AString);
    Stream.Write(l,SizeOf(l));
    if(l > 0) then
      Stream.Write(PChar(AString)^,l);
  end;
var
  LNodeData: PTaskData;
begin
  LNodeData := Sender.GetNodeData(Node);
//  Stream.Write(LNodeData^,SizeOf(TTaskData));

  Stream.Write(LNodeData.LineID,             SizeOf(LNodeData.LineID));
  Stream.Write(LNodeData.ParentLineID,        SizeOf(LNodeData.ParentLineID));
  Stream.Write(LNodeData.SeqNo,               SizeOf(LNodeData.SeqNo));

  WriteString(LNodeData.Description);
  WriteString(LNodeData.Note);
  Stream.Write(LNodeData.DaysFrom,            SizeOf(LNodeData.DaysFrom));
  Stream.Write(LNodeData.TaskStartsWhen,      SizeOf(LNodeData.TaskStartsWhen));
  Stream.Write(LNodeData.StartWhenRelated,    SizeOf(LNodeData.StartWhenRelated));
  Stream.Write(LNodeData.CompleteDays,        SizeOf(LNodeData.CompleteDays));
  Stream.Write(LNodeData.CompleteWhen,        SizeOf(LNodeData.CompleteWhen));
  Stream.Write(LNodeData.CompleteWhenRelated, SizeOf(LNodeData.CompleteWhenRelated));
  Stream.Write(LNodeData.SkipWhen,            SizeOf(LNodeData.SkipWhen));
  Stream.Write(LNodeData.SkipWhenRelated,     SizeOf(LNodeData.SkipWhenRelated));
  WriteString(LNodeData.AssignTo);
  Stream.Write(LNodeData.HasDocTemplates,     SizeOf(LNodeData.HasDocTemplates));

  Stream.Write(LNodeData.DueDateLinkTo,          SizeOf(LNodeData.DueDateLinkTo));
  Stream.Write(LNodeData.DueDateLinkToRelated,   SizeOf(LNodeData.DueDateLinkToRelated));
  Stream.Write(LNodeData.DueDateLinkToDaysFrom,  SizeOf(LNodeData.DueDateLinkToDaysFrom));
  WriteString(LNodeData.ScaleCostCode);
  Stream.Write(LNodeData.ShowFee,                SizeOf(LNodeData.ShowFee));
  WriteString(LNodeData.EMailOverdue);
  WriteString(LNodeData.Watcher);
  WriteString(LNodeData.WatchFor);
  WriteString(LNodeData.CriticalDate);
  WriteString(LNodeData.CriticalAlert);
  WriteString(LNodeData.DueSameDay);
  WriteString(LNodeData.Reportable);

  Stream.Write(LNodeData.HasDataform,            SizeOf(LNodeData.HasDataform));
end;

procedure TfmWorkFlowTaskTemplates.vtTasksNodeCopying(
  Sender: TBaseVirtualTree; Node, NewParent: PVirtualNode;
  var Allowed: Boolean);
begin
  Allowed := True;
end;

procedure TfmWorkFlowTaskTemplates.aDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := vtTasks.SelectedCount > 0;
end;

procedure TfmWorkFlowTaskTemplates.aEditCutUpdate(Sender: TObject);
begin
  if(not FEmptyTree) then
    TAction(Sender).Enabled := Assigned(vtTasks.FocusedNode){(ActiveControl = vtTasks)} and (vtTasks.SelectedCount > 0)
  else
    TAction(Sender).Enabled := True;
end;

procedure TfmWorkFlowTaskTemplates.aEditPasteUpdate(Sender: TObject);
begin
//  TAction(Sender).Enabled := (ActiveControl = vtTasks) and Clipboard.HasFormat(CF_VIRTUALTREE);
  if(not FEmptyTree) then
    TAction(Sender).Enabled := Clipboard.HasFormat(CF_VIRTUALTREE)
  else
    TAction(Sender).Enabled := True;
end;

procedure TfmWorkFlowTaskTemplates.aEditPasteExecute(Sender: TObject);
begin
//  if(ActiveControl = vtTasks) then
    vtTasks.PasteFromClipboard();
end;

procedure TfmWorkFlowTaskTemplates.aEditCopyExecute(Sender: TObject);
begin
  if Assigned(vtTasks.FocusedNode){(ActiveControl = vtTasks)} then
    vtTasks.CopyToClipBoard();
end;

procedure TfmWorkFlowTaskTemplates.aEditCutExecute(Sender: TObject);
begin
   if Assigned(vtTasks.FocusedNode){(ActiveControl = vtTasks)} then
      vtTasks.CutToClipBoard();
end;

procedure TfmWorkFlowTaskTemplates.ValidateSequence(AParentLineID: Integer);
var
  LSeqNo: Integer;
begin
  dmWorkFlowDataModuleTasks.qTaskTemplate.Close();
  dmWorkFlowDataModuleTasks.qTaskTemplate.ParamByName('workflowtypecode').AsString := FCurrentWorkflowType;
  dmWorkFlowDataModuleTasks.qTaskTemplate.ParamByName('parentlineid').AsInteger    := AParentLineID;
  dmWorkFlowDataModuleTasks.qTaskTemplate.Open();
  try

    LSeqNo := 0;
    while(not dmWorkFlowDataModuleTasks.qTaskTemplate.Eof) do
    begin
      Inc(LSeqNo);
      if(LSeqNo <> dmWorkFlowDataModuleTasks.qTaskTemplateSEQNO.AsInteger) then
      begin
        dmWorkflowDataModule.qAnyQuery.SQL.Text := 'UPDATE workflowtasktemplates SET seqno = :newseqno WHERE lineid = :lineid';
        dmWorkflowDataModule.qAnyQuery.ParamByName('newseqno').AsInteger := LSeqNo;
        dmWorkflowDataModule.qAnyQuery.ParamByName('lineid').AsInteger :=dmWorkFlowDataModuleTasks.qTaskTemplateLINEID.AsInteger;
        dmWorkflowDataModule.qAnyQuery.ExecSQL();
      end;
      dmWorkFlowDataModuleTasks.qTaskTemplate.Next();
    end;
  finally
    dmWorkFlowDataModuleTasks.qTaskTemplate.Close();
  end;
end;

procedure TfmWorkFlowTaskTemplates.aPrintTaskReport(Sender: TObject);
  procedure LoadData(ANode: PVirtualNode; AShortRelate, AShowDocs: Boolean);
  var
    LData: PTaskData;
    LChild: PVirtualNode;
    AReferredTo: string;
  begin
    if(ANode <> vtTasks.RootNode) then
    begin
      LData := vtTasks.GetNodeData(ANode);

     if(LData.HasDocTemplates and AShowDocs) then
     begin
        dmWorkFlowDataModuleTasks.qRptTaskDocs.ParamByName('tasklineid').AsInteger := LData.LineID;
        dmWorkFlowDataModuleTasks.qRptTaskDocs.Open();
        try
          while(not dmWorkFlowDataModuleTasks.qRptTaskDocs.Eof) do
          begin
            dmWorkFlowDataModuleTasks.vtTaskTemplateReport.Append();
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportFullSequence.AsString    := CreateDispSeqNo(ANode);
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportTaskDescription.AsString := LData.Description;
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportTaskNote.AsString        := LData.Note;
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportStartsWhen.AsString      := BuildStartWhen(ANode,AShortRelate);
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportCompleteDays.AsInteger   := LData.CompleteDays;
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportCompleteWhen.AsString    := BuildCompleteWhen(ANode,AShortRelate);
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportSkipWhen.AsString        := BuildSkipWhen(ANode,AShortRelate);
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportAssignTo.AsString        := AssignToToStr(LData.AssignTo);
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString    := dmWorkFlowDataModuleTasks.qRptTaskDocsDOCUMENTNAME.AsString;
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportDueDateLink.AsString     := BuildDueDateLinkedTo(ANode,AShortRelate);
            if(dmWorkFlowDataModuleTasks.qRptTaskDocsDOCTYPE.AsString = 'P') then
              dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentAddressee.AsString    := dmWorkFlowDataModuleTasks.qRptTaskDocsPARTYTYPE.AsString
            else
              dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentAddressee.AsString    := 'Client';
            dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentRefersto.AsString    := dmWorkFlowDataModuleTasks.qRptTaskDocsReferred.AsString;
            dmWorkFlowDataModuleTasks.vtTaskTemplateReport.Post();
            dmWorkFlowDataModuleTasks.qRptTaskDocs.Next();
          end;
        finally
          dmWorkFlowDataModuleTasks.qRptTaskDocs.Close();
        end;
     end else
     begin
        try
           dmWorkFlowDataModuleTasks.vtTaskTemplateReport.Append();
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportFullSequence.AsString    := CreateDispSeqNo(ANode);
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportTaskDescription.AsString := LData.Description;
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportTaskNote.AsString        := LData.Note;
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportStartsWhen.AsString      := BuildStartWhen(ANode,AShortRelate);
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportCompleteDays.AsInteger   := LData.CompleteDays;
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportCompleteWhen.AsString    := BuildCompleteWhen(ANode,AShortRelate);
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportSkipWhen.AsString        := BuildSkipWhen(ANode,AShortRelate);
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportAssignTo.AsString        := AssignToToStr(LData.AssignTo);
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportDueDateLink.AsString     := BuildDueDateLinkedTo(ANode,AShortRelate);

           dmWorkFlowDataModuleTasks.tbTaskDocLink.FilterSQL := 'tasklineid = '+ inttostr(LData.LineID);
           dmWorkFlowDataModuleTasks.tbTaskDocLink.Open();
           dmWorkFlowDataModuleTasks.tbTaskDocLink.First;
           while (not dmWorkFlowDataModuleTasks.tbTaskDocLink.Eof) do
           begin
              dmWorkFlowDataModuleTasks.qRptTaskDocsRef.Close();
              dmWorkFlowDataModuleTasks.qRptTaskDocsRef.ParamByName('docid').AsInteger := dmWorkFlowDataModuleTasks.tbTaskDocLinkDOCID.AsInteger;
              dmWorkFlowDataModuleTasks.qRptTaskDocsRef.Open();
              while(not dmWorkFlowDataModuleTasks.qRptTaskDocsRef.Eof) do
              begin
                if AReferredTo <> '' then
                  AReferredTo := AReferredTo + ';';
                AReferredTo := AReferredTo + dmWorkFlowDataModuleTasks.qRptTaskDocsRefPARTYTYPE.AsString;
                dmWorkFlowDataModuleTasks.qRptTaskDocsRef.Next();
              end;
              dmWorkFlowDataModuleTasks.tbTaskDocLink.Next;
           end;
           dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentRefersTo.AsString:= AReferredTo;
           dmWorkFlowDataModuleTasks.vtTaskTemplateReport.Post();
        finally
           dmWorkFlowDataModuleTasks.qRptTaskDocsRef.Close();
           dmWorkFlowDataModuleTasks.tbTaskDocLink.Close;
        end;
     end;

    end;

    LChild := ANode.FirstChild;
    while(Assigned(LChild)) do
    begin
      LoadData(LChild,AShortRelate, AShowDocs);
      LChild := LChild.NextSibling;
    end;
  end;
begin
  FExpanding := true;
  try
    vtTasks.FullExpand();
  finally
    FExpanding := False;
    ResizeColumns();
  end;
  // build data.
  try
    dmWorkFlowDataModuleTasks.vtTaskTemplateReport.Clear();
    dmWorkFlowDataModuleTasks.vtTaskTemplateReport.Active := True;


    LoadData(vtTasks.RootNode,Sender = aPrintAdvanced,Sender <> aPrintSimple);

    if(Sender = aPrintAdvanced) then
    begin
       ppTaskTemplateReport.Print;
      {qrWorkFlowTaskTemplateReport := TqrWorkFlowTaskTemplateReport.Create(self);
      try
        qrWorkFlowTaskTemplateReport.WorkFlowType := cmbWorkflowType.Text;
        qrWorkFlowTaskTemplateReport.PreviewModal();
      finally
        FreeAndNil(qrWorkFlowTaskTemplateReport);
      end;  }
    end else if(Sender = aPrintSimple) then
    begin
       ppWorkFlowTaskTemplateSimpleReport.Print;

     { qrWorkFlowTaskTemplateSimpleReport := TqrWorkFlowTaskTemplateSimpleReport.Create(self);
      try
        qrWorkFlowTaskTemplateSimpleReport.WorkFlowType := cmbWorkflowType.Text;
        qrWorkFlowTaskTemplateSimpleReport.PreviewModal();
      finally
        FreeAndNil(qrWorkFlowTaskTemplateSimpleReport);
      end;
      }
    end else if(Sender = aPrintTasksDocs) then
    begin
       ppWorkFlowTaskTemplateSimpleDocsReport.Print;
      {qrWorkFlowTaskTemplateSimpleDocsReport := TqrWorkFlowTaskTemplateSimpleDocsReport.Create(self);
      try
        qrWorkFlowTaskTemplateSimpleDocsReport.WorkFlowType := cmbWorkflowType.Text;
        qrWorkFlowTaskTemplateSimpleDocsReport.PreviewModal();
      finally
        FreeAndNil(qrWorkFlowTaskTemplateSimpleDocsReport);
      end; }
    end;
  finally
    dmWorkFlowDataModuleTasks.vtTaskTemplateReport.Clear();
    dmWorkFlowDataModuleTasks.vtTaskTemplateReport.Active := False;
  end;
end;

procedure TfmWorkFlowTaskTemplates.aFileSaveAsAccept(Sender: TObject);
var
  F: TextFile;
  LLine: String;
begin
  //
  AssignFile(F,aFileSaveAs.Dialog.FileName);
  Rewrite(F);
  if(UpperCase(ExtractFileExt(aFileSaveAs.Dialog.FileName)) = '.HTML') then
    LLine := vtTasks.ContentToHTML(tstAll,dmWorkFlowDataModule.tbWorkflowTypeDESCR.AsString)
  else
    LLine := vtTasks.ContentToRTF(tstAll);

  Writeln(F,LLine);
  CloseFile(F);
end;

// build a string that describes when the task starts.
function TfmWorkFlowTaskTemplates.BuildStartWhen(ANode: PVirtualNode; ANoDescription: Boolean): String;
var
  LData: PTaskData;
begin
  LData := vtTasks.GetNodeData(ANode);
  Result := '';//C_DESC_DEFAULT;
  if (LData.TaskStartsWhen in TTaskStartWhenStart) or
     (LData.TaskStartsWhen in TTaskStartWhenComplete) or
     (LData.TaskStartsWhen in TTaskStartWhenSkipped) then
    Result := TTaskStartWhenDescription[LData.TaskStartsWhen]

{    else if (LData.TaskStartsWhen in TTaskStartWhenDaysFromStart) or
          (LData.TaskStartsWhen in TTaskStartWhenDaysFromComplete) then
    Result := IntToStr(LData.DaysFrom) + ' ' + TTaskStartWhenDescription[LData.TaskStartsWhen]
}
  else if (LData.TaskStartsWhen in TTaskStartWhenDaysOverDue) then
    Result := TTaskStartWhenDescription[LData.TaskStartsWhen] + ' ' + IntToStr(LData.DaysFrom) + ' Days';

  if(LData.TaskStartsWhen in TTaskStartWhenRelated) then
    Result := StringReplace(Result,'Related','''' + GetRelated(LData.StartWhenRelated,ANoDescription) + '''',[rfReplaceAll])
end;

// build a string that describes when a task completes
function TfmWorkFlowTaskTemplates.BuildCompleteWhen(ANode: PVirtualNode; ANoDescription: Boolean): String;
var
  LData: PTaskData;
begin
  LData := vtTasks.GetNodeData(ANode);
  Result := '';
  if(LData.CompleteWhen = tcwDEF) then
    Exit;
  Result := TTaskCompleteWhenDescription[LData.CompleteWhen];
  if(LData.CompleteWhen in TTaskCompleteWhenRelated) then
    Result := StringReplace(Result,'Related','''' +
      GetRelated(LData.CompleteWhenRelated,ANoDescription) + '''',[rfReplaceAll])
end;

// build a string that describes when a task skips.
function TfmWorkFlowTaskTemplates.BuildSkipWhen(ANode: PVirtualNode; ANoDescription: Boolean): String;
var
  LData: PTaskData;
begin
  LData := vtTasks.GetNodeData(ANode);
  Result := '';
  if(LData.SkipWhen = tkwDEF) then
    Exit;
  Result := TTaskSkipWhenDescription[LData.SkipWhen];
  if(LData.SkipWhen in TTaskSkipWhenRelated) then
    Result := StringReplace(Result,'Related','''' +
      GetRelated(LData.SkipWhenRelated,ANoDescription) + '''',[rfReplaceAll])
end;


procedure TfmWorkFlowTaskTemplates.aDummyPrintExecute(Sender: TObject);
begin
  // dont do anything..
end;

function TfmWorkFlowTaskTemplates.BuildDueDateLinkedTo(ANode: PVirtualNode;
  ANoDescription: Boolean): String;
var
  LData: PTaskData;
begin
  LData := vtTasks.GetNodeData(ANode);
  Result := '';//C_DESC_DEFAULT;

  if(LData.DueDateLinkTo > dltDEF) then
  begin
    Result := IntToStr(LData.DueDateLinkToDaysFrom) + ' Days from ' + TTaskDueDateLinkToDescription[LData.DueDateLinkTo];

    if (LData.DueDateLinkTo = dltR) then
      Result := StringReplace(Result,'Related','''' + GetRelated(LData.DueDateLinkToRelated,ANoDescription) + '''',[rfReplaceAll])
  end;
end;

procedure TfmWorkFlowTaskTemplates.aDeleteTreeExecute(Sender: TObject);
begin
  if(MessageDlg('This will remove the entire workflow tree for ''' +
                cmbWorkflowType.Text + '''.'#13#10#13#10 +
                'It will also entirely delete all working tasks for ''' +
                cmbWorkflowType.Text + ''' that people are using!'#13#10#13#10 +
                'Are you sure this is what you want to do?',
                mtConfirmation, [mbYes,mbNo], 0) <> mrYes) then
    Exit;

  dmWorkFlowDataModule.qTmp.SQL.Text :=
    'delete from workflowtasks where workflowtypecode = :workflowtypecode';
  dmWorkFlowDataModule.qTmp.ParamByName('workflowtypecode').AsString := cmbWorkflowType.EditValue;
  dmWorkFlowDataModule.qTmp.ExecSQL();
  dmWorkFlowDataModule.qTmp.SQL.Text :=
    'delete from workflowtasktemplates where workflowtypecode = :workflowtypecode';
  dmWorkFlowDataModule.qTmp.ParamByName('workflowtypecode').AsString := cmbWorkflowType.EditValue;
  dmWorkFlowDataModule.qTmp.ExecSQL();

  RefreshTree();
end;

function TfmWorkFlowTaskTemplates.BuildWatcher(ANode: PVirtualNode): String;
var
  LData: PTaskData;
begin
  LData := vtTasks.GetNodeData(ANode);
  Result := AssignToToStr(LData.Watcher);
  if(LData.WatchFor[1] = 'Y') then
    Result := Result + ', Start';
  if(LData.WatchFor[2] = 'Y') then
    Result := Result + ', Complete';
  if(LData.WatchFor[3] = 'Y') then
    Result := Result + ', Skip';
  if(LData.WatchFor[4] = 'Y') then
    Result := Result + ', Assigned Change';
  if(LData.WatchFor[5] = 'Y') then
    Result := Result + ', Due Date Change';
  if(LData.WatchFor[6] = 'Y') then
    Result := Result + ', Overdue';
  if(LData.WatchFor[7] = 'Y') then
    Result := Result + ', Undone';
end;

procedure TfmWorkFlowTaskTemplates.cmbWorkflowTypePropertiesChange(
  Sender: TObject);
begin
  RefreshTree();
  SettingSave(C_SETTINGWORKFLOWGENERAL,C_SETTINGWORKFLOWTYPE,String(cmbWorkflowType.EditValue));
end;

procedure TfmWorkFlowTaskTemplates.cmbWorkflowTypePropertiesInitPopup(
  Sender: TObject);
begin
   dmWorkFlowDataModule.tbWorkflowType.Refresh;
end;

procedure TfmWorkFlowTaskTemplates.btnCopyTemplateClick(Sender: TObject);
begin
   frmCopyTemplate := TfrmCopyTemplate.Create(Self);
   frmCopyTemplate.ShowModal;
end;

type
  TcxLookupComboBoxAccess = class (TcxLookupComboBox);

procedure TfmWorkFlowTaskTemplates.DoMouseWheel(Sender: TObject);
begin
  TcxLookupComboBoxAccess(Sender).OnMouseWheel := LookupViewMouseWheel;
end;

procedure TfmWorkFlowTaskTemplates.LookupViewMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfmWorkFlowTaskTemplates.btnAddWorkflowClick(Sender: TObject);
var
   frmWorkflowType:  TfrmWorkflowType;
begin
  inherited;
   frmWorkflowType := TfrmWorkflowType.Create(Self);
   frmWorkflowType.ShowModal;
end;

procedure TfmWorkFlowTaskTemplates.dxBarButton13Click(Sender: TObject);
var
   frmCopyTemplate:  TfrmCopyTemplate;
begin
  inherited;
   frmCopyTemplate := TfrmCopyTemplate.Create(Self);
   frmCopyTemplate.WorkFlowType := cmbWorkflowType.EditValue; //  Self.qrySource.FieldByName('CODE').AsString;
   frmCopyTemplate.ShowModal;
end;

procedure TfmWorkFlowTaskTemplates.dxBarButton8Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfmWorkFlowTaskTemplates.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
   Text := SystemString('COMPANY');
end;

procedure TfmWorkFlowTaskTemplates.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
   Text := 'WorkFlow Type: ' + cmbWorkflowType.Text;
end;

procedure TfmWorkFlowTaskTemplates.ppFullSeqPrint(Sender: TObject);
var
  LSequence: String;
  i, LDots: Integer;
begin
  LDots := 0;
  LSequence := dmWorkFlowDataModuleTasks.vtTaskTemplateReportFullSequence.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  ppFullSeq.Left := 5 * LDots;
  ppFullSeq.Width := 150 - ppFullSeq.Left;
end;

procedure TfmWorkFlowTaskTemplates.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
   ppRegion1.Visible := Trim(dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString) <> '';
   if ppRegion1.Visible then
      ppDetailBand1.Height := 8.9960003
   else
      ppDetailBand1.Height := 4.49800015;
end;

procedure TfmWorkFlowTaskTemplates.ppFullSeq1Print(Sender: TObject);
var
  LSequence: String;
  i, LDots: Integer;
begin
  LDots := 0;
  LSequence := dmWorkFlowDataModuleTasks.vtTaskTemplateReportFullSequence.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  ppFullSeq1.Left := 5 * LDots;
  ppFullSeq1.Width := 150 - ppFullSeq1.Left;

end;

procedure TfmWorkFlowTaskTemplates.ppFullSeq2Print(Sender: TObject);
var
  LSequence: String;
  i, LDots: Integer;
begin
  LDots := 0;
  LSequence := dmWorkFlowDataModuleTasks.vtTaskTemplateReportFullSequence.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  ppFullSeq2.Left := 5 * LDots;
  ppFullSeq2.Width := 150 - ppFullSeq2.Left;

end;

procedure TfmWorkFlowTaskTemplates.ppDetailBand3BeforePrint(
  Sender: TObject);
begin
   ppSubReport1.Visible := Trim(dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString) <> '';
 {  if ppRegion1.Visible then
      ppDetailBand1.Height := 8.9960003
   else
      ppDetailBand1.Height := 4.49800015; }
end;

end.
