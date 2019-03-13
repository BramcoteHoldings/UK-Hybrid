unit TaskExplorer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, StdCtrls, Buttons, ExtCtrls, ToolWin, Menus, FMXUtils,
  OraSmart, MemDS, Ora, OracleUniProvider, ImgList, ComObj, Variants, dxBar, cxClasses,
  Uni;

const
  ISMATTER = 12;
  ISMATTERSELECTED = 7;
  ISTASK = 6;
  ISPREC = 8;
  ISFEE = 15;
  ISDISB = 16;
  ISCHEQREQ = 19;
  ISSUNDRY = 17;
  ISDATAFORM = 18;

  STARTSTATE = 2;
  ENDSTATE = 3;

  imgWORD = 8;
  imgWORDPERFECT = 9;

  FORMCAPTION = 'Precedent and Workflow Explorer';

type
  TptrTask = ^TrecTask;
  TrecTask = record
    NTask: Integer;
    Code: string;
    ItemType: string;
    Event: string;
    DataForm: string;
  end;

  TfrmTaskExplorer = class(TForm)
    tvOverview: TTreeView;
    dsMatter: TUniDataSource;
    ilstStatus: TImageList;
    lvDetails: TListView;
    spCentre: TSplitter;
    sbarExplorer: TStatusBar;
    ilstToolbar: TImageList;
    popOverview: TPopupMenu;
    qryMatter: TUniQuery;
    qryTasks: TUniQuery;
    qryTmp: TUniQuery;
    qryTaskLink: TUniQuery;
    qryTaskUnlink: TUniQuery;
    BarManager: TdxBarManager;
    mnuNew: TdxBarButton;
    tbtnRun: TdxBarButton;
    mnuFileDelete: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuFile: TdxBarSubItem;
    mnuViewToolbar: TdxBarButton;
    mnuViewStatusbar: TdxBarButton;
    tbtnMatter: TdxBarButton;
    tbtnTasks: TdxBarButton;
    tbtnPrecedents: TdxBarButton;
    tbtnDiary: TdxBarButton;
    mnuViewLargeicons: TdxBarButton;
    mnuViewSmallIcons: TdxBarButton;
    mnuViewList: TdxBarButton;
    mnuViewDetails: TdxBarButton;
    mnuViewArrangeName: TdxBarButton;
    mnuViewArrangeDate: TdxBarButton;
    mnuViewArrangeType: TdxBarButton;
    mnuViewArrange: TdxBarSubItem;
    tbtnRefresh: TdxBarButton;
    mnuViewOptions: TdxBarButton;
    mnuView: TdxBarSubItem;
    mnuFind: TdxBarButton;
    mnuToolsGoto: TdxBarButton;
    mnuTools: TdxBarSubItem;
    mnuHelpTopics: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    tbtnMultiSelect: TdxBarButton;
    procedure mnuViewLargeiconsClick(Sender: TObject);
    procedure mnuViewSmallIconsClick(Sender: TObject);
    procedure mnuViewListClick(Sender: TObject);
    procedure mnuViewDetailsClick(Sender: TObject);
    procedure mnuViewToolbarClick(Sender: TObject);
    procedure mnuViewStatusbarClick(Sender: TObject);
    procedure tbtnIconLargeClick(Sender: TObject);
    procedure tbtnIconSmallClick(Sender: TObject);
    procedure tbtnIconListClick(Sender: TObject);
    procedure tbtnIconDetailsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuViewRefreshClick(Sender: TObject);
    procedure tbtnTasksClick(Sender: TObject);
    procedure tbtnMatterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnPrecedentsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure popOverviewPopup(Sender: TObject);
    procedure tvOverviewDblClick(Sender: TObject);
    procedure tvOverviewChange(Sender: TObject; Node: TTreeNode);
    procedure tbtnMultiSelectClick(Sender: TObject);
    procedure mnuFindClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbtnFindMatterClick(Sender: TObject);
    procedure tbtnClearClick(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tbtnRunClick(Sender: TObject);
    procedure mnuFileRunClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);

  private
    FWorkflowType: string;
    FFileID: string;
    FOverviewChangeOK: boolean;
    WordIcon: integer;
    procedure SetFileID(sFileID: string);
    function NewPopup(sCaption: string; sName: String; bDefault: boolean) : TMenuItem;
    function PopupAddSub(mnuParent: TMenuItem; sCaption: string; sName: String) : TMenuItem;
    procedure FreeNodeData;
    procedure RebuildCaptions;
    function PrecedentPath(sDescr: string) : string;
    procedure NewPrecedent(Sender: TObject);
    procedure WorkflowTypes(Sender: TObject);
    procedure CreatePrecedent(Sender: TObject);
    procedure EditPrecedent(Sender: TObject);
    procedure EditTask(Sender: TObject);
    procedure DeletePrecedent(Sender: TObject);
    procedure OpenPrecedent(Sender: TObject);
    procedure MatterTaskAction(Sender: TObject);
    procedure NewTaskTemp(Sender: TObject);
    procedure NewTaskStartItem(Sender: TObject);
    procedure NewTaskEndItem(Sender: TObject);
    procedure NewTaskItem(sEvent: string);
    procedure RemoveTaskItem(Sender: TObject);
    procedure SearchDataSetNotify(DataSet: TDataSet);
    procedure LoadDataForm(Sender: TObject);
  public
    property FileID: string write SetFileID;
  end;

var
  nodCurrent: TTreeNode;

implementation

{$R *.DFM}

uses
  TypInfo, MatterDataForm, MSearch, MiscFunc, MiscClasses, PrecNew,
  TaskItemSearch, TaskTempNew, TaskItemNew,
  TaskNew, AxiomData, GenericSearch, WorkflowType, citfunc
  {$IFNDEF NOMULTISELECT}
  , MultiSelect
  {$ELSE}
  ;
  {$ENDIF}

procedure TfrmTaskExplorer.SetFileID(sFileID : string);
begin
  FFileID := sFileID;
  FWorkflowType := '';
  qryMatter.Close;
  if sFileID <> '' then
     tbtnMatter.Visible := ivAlways
  else
     tbtnMatter.Visible := ivNever;
  if sFileID <> '' then
  begin
    with qryMatter do
    begin
      ParamByName('FILEID').AsString := sFileID;
      Open;
      if not IsEmpty then
      begin
        FWorkflowType := TypeString(FieldByName('TYPE').AsString, 'WORKFLOWTYPE');
        Self.Caption := FORMCAPTION + ' - ' + MatterString(FFileID, 'MATLOCATE');
        if not Self.Visible then
          tbtnMatter.Click;
      end
      else
        Close;
    end;
  end
  else
    Self.Caption := FORMCAPTION;

  if not qryMatter.Active and not Self.Visible then
    Self.Close
  else
    if not Self.Visible then
      Show;
end;


procedure TfrmTaskExplorer.mnuViewLargeiconsClick(Sender: TObject);
begin
  RebuildCaptions;
  mnuViewLargeicons.Down := true;
  lvDetails.ViewStyle := vsIcon;
end;

procedure TfrmTaskExplorer.mnuViewSmallIconsClick(Sender: TObject);
begin
  RebuildCaptions;
  mnuViewSmallicons.Down := true;
  lvDetails.ViewStyle := vsSmallIcon;
end;

procedure TfrmTaskExplorer.mnuViewListClick(Sender: TObject);
begin
  RebuildCaptions;
  mnuViewList.Down := true;
  lvDetails.ViewStyle := vsList;
end;

procedure TfrmTaskExplorer.FreeNodeData;
var
  iCtr: Integer;
begin
  nodCurrent := nil;
  for iCtr := 0 to tvOverview.Items.Count-1 do
    if tvOverview.Items[iCtr].Data <> nil then
      FreeMem(TptrTask(tvOverview.Items[iCtr].Data));
end;

procedure TfrmTaskExplorer.RebuildCaptions;
{var
  iCtr : integer;
}
begin
{  if tvOverview.selected.Level > 0 then
    for iCtr := 0 to lvDetails.Items.Count - 1 do
      lvDetails.Items.Item[iCtr].Caption := lvDetails.Items.Item[iCtr].SubItems.Strings[0] + ' ' + lvDetails.Items.Item[iCtr].SubItems.Strings[3];
}
end;

procedure TfrmTaskExplorer.mnuViewDetailsClick(Sender: TObject);
var
  ThisColumn: TListColumn;
begin
  case tvOverview.Selected.ImageIndex of
    ISTASK:  // Show the Task items
    begin
      with lvDetails.Columns do
      begin
        Clear;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Item';
        ThisColumn.Width := 200;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Code';
        ThisColumn.Width := 80;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Type';
        ThisColumn.Width := 80;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Event';
        ThisColumn.Width := 40;
        ThisColumn := lvDetails.Columns.Add;
        ThisColumn.Caption := 'Amount';
        ThisColumn.Width := 80;
        ThisColumn.Alignment := taRightJustify;
      end;
//      for iCtr := 0 to lvDetails.Items.Count - 1 do
//        lvDetails.Items.Item[iCtr].Caption := lvDetails.Items.Item[iCtr].SubItems.Strings[0];
    end;
  end;
  mnuViewDetails.Down := true;
  lvDetails.ViewStyle := vsReport;
end;

{procedure TfrmTaskExplorer.dbgrPrecsDblClick(Sender: TObject);
begin
  MakePrecedent(qryMatter.FieldByName('FILEID').AsString, qryPrecs.FieldByName('PATH').AsString);
end;
}


function TfrmTaskExplorer.NewPopup(sCaption: string; sName: String; bDefault: boolean) : TMenuItem;
var
  mnuNew: TMenuItem;

begin
  mnuNew := TMenuItem.Create(Self);
  mnuNew.Caption := sCaption;
  mnuNew.Name := sName;
  mnuNew.Default := bDefault;
  popOverview.Items.Add(mnuNew);
  NewPopup := mnuNew;
end;


function TfrmTaskExplorer.PopupAddSub(mnuParent: TMenuItem; sCaption: string; sName: String) : TMenuItem;
var
  mnuSub: TMenuItem;

begin
  mnuSub := TMenuItem.Create(Self);
  mnuSub.Caption := sCaption;
  mnuSub.Name := sName;
  PopupAddSub := mnuSub;
  mnuParent.Add(mnuSub);
end;


procedure TfrmTaskExplorer.mnuViewToolbarClick(Sender: TObject);
begin
  mnuViewToolbar.Down := not mnuViewToolbar.Down;
  BarManager.Bars[1].Visible := mnuViewToolbar.Down;
end;

procedure TfrmTaskExplorer.mnuViewStatusbarClick(Sender: TObject);
begin
  mnuViewStatusbar.Down := not mnuViewStatusbar.Down;
  sbarExplorer.Visible := mnuViewStatusbar.Down;
end;

procedure TfrmTaskExplorer.tbtnIconLargeClick(Sender: TObject);
begin
  mnuViewLargeiconsClick(Self);
end;

procedure TfrmTaskExplorer.tbtnIconSmallClick(Sender: TObject);
begin
  mnuViewSmallIconsClick(Self);
end;

procedure TfrmTaskExplorer.tbtnIconListClick(Sender: TObject);
begin
  mnuViewListClick(Self);
end;

procedure TfrmTaskExplorer.tbtnIconDetailsClick(Sender: TObject);
begin
  mnuViewDetailsClick(Self);
end;

procedure TfrmTaskExplorer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeNodeData();
  
  qryMatter.Close;
  qryTasks.Close;
  RemoveFromDesktop(Self);
//  Action := caFree;
end;

procedure TfrmTaskExplorer.mnuViewRefreshClick(Sender: TObject);
begin
  tbtnRefresh.Click;
end;

procedure TfrmTaskExplorer.tbtnTasksClick(Sender: TObject);
var
  nodRoot, nodNew: TTreeNode;
  sLastType: string;
  ptrTask: TptrTask;
begin
{
  Modified 25.10.2002 GG
  Removed compiler warning
}
  nodRoot:= nil;
  with tvOverview, qryTasks do
  begin
    // Initialize Tables
    Close;
    SQL.Clear;
    SQL.Add('SELECT TASKTEMP.CODE, TASKTEMP.DESCR, TASKTEMP.WORKFLOWTYPE, WORKFLOWTYPE.DESCR AS WORKFLOWDESCR');
    SQL.Add('FROM TASKTEMP, WORKFLOWTYPE');
    SQL.Add('WHERE TASKTEMP.MASTER = ''Y''');
    SQL.Add('AND TASKTEMP.WORKFLOWTYPE = WORKFLOWTYPE.CODE(+)');
    if FWorkflowType <> '' then
    begin
      SQL.Add('AND (TASKTEMP.WORKFLOWTYPE = ' + QuotedStr(FWorkflowType));
      SQL.Add('  OR TASKTEMP.WORKFLOWTYPE IS NULL)');
    end;
    SQL.Add('ORDER BY TASKTEMP.WORKFLOWTYPE, TASKTEMP.CODE');
    Open;
    // Defer drawing TreeView until EndUpdate
    Items.BeginUpdate;
    FreeNodeData();
    Items.Clear;
    sLastType := 'zzzzzzzzzzz';
    // Add all matter tasks to TreeNodes
    while not EOF do
    begin
      if FieldByName('WORKFLOWTYPE').AsString <> sLastType then
      begin
        if FieldByName('WORKFLOWDESCR').AsString = '' then
          nodRoot := Items.Add(Nil, 'General')
        else
          nodRoot := Items.Add(Nil, FieldByName('WORKFLOWDESCR').AsString);
        nodRoot.ImageIndex := ISTASK;
        nodRoot.SelectedIndex := ISTASK;
        sLastType := FieldByName('WORKFLOWTYPE').AsString;
      end;
      nodNew := Items.AddChild(nodRoot, FieldByName('DESCR').AsString);
      nodNew.ImageIndex := ISTASK;
      nodNew.SelectedIndex := ISTASK;
      New(ptrTask);
      ptrTask^.Code := FieldByName('CODE').AsString;
      nodNew.Data := ptrTask;
      Next;
      // Allow Status Bar text and Progress Bar to be painted
      Application.ProcessMessages;
    end;
    // Now Draw the TTreeView now that all items are loaded
    Items.EndUpdate;
    // Set focus to first item in the Tree View
    if Items.Count >  0 then
      Items.GetFirstNode.Selected := True;
  end;
  if tvOverview.Items.Count > 0 then
    nodRoot.Expanded := True;
  tbtnRun.Hint := 'Start';
  tbtnRun.Caption := 'Sta&rt';
end;


procedure TfrmTaskExplorer.tbtnMatterClick(Sender: TObject);
var
  nodRootNode, nodNew: TTreeNode;
  ptrTask: TptrTask;
begin
  with tvOverview, qryTasks do
  begin
    // Initialize Tables
    Close;
    SQL.Text := 'SELECT * FROM TASK WHERE FILEID = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString);
    Open;
    FOverviewChangeOK := False;
    Items.BeginUpdate;
    FreeNodeData();
    Items.Clear;
    // Defer drawing TreeView until EndUpdate
    nodRootNode := Items.Add(nil, qryMatter.FieldByName('FILEID').AsString + ' ' + qryMatter.FieldByName('TITLE').AsString + ' ' + qryMatter.FieldByName('SHORTDESCR').AsString);
    nodRootNode.ImageIndex := ISMATTER;
    nodRootNode.SelectedIndex := ISMATTERSELECTED;
    if not IsEmpty then
      nodRootNode.HasChildren := True;
    // Add all matter tasks to TreeNodes
    while not EOF do
    begin
      nodNew := Items.AddChild(nodRootNode, FieldByName('DESCR').AsString);
      nodNew.ImageIndex := ISTASK;
      nodNew.SelectedIndex := ISTASK;
      nodNew.StateIndex := GetTaskStatus(qryTasks);
      New(ptrTask);
      ptrTask^.NTask := FieldByName('NTASK').AsInteger;
      ptrTask^.Code := FieldByName('CODE').AsString;
      nodNew.Data := ptrTask;
      Next;
      // Allow Status Bar text and Progress Bar to be painted
      Application.ProcessMessages;
    end;

    Close;
    // Now Draw the TTreeView now that all items are loaded
    Items.EndUpdate;
    // Set focus to first item in the Tree View
    FOverviewChangeOK := True;
    if Items.Count > 0 then
      Items.GetFirstNode.Selected := True;
  end;

  nodRootNode.Expanded := True;
  tbtnMatter.Down := True;
  tbtnRun.Hint := 'Start';
  tbtnRun.Caption := 'Sta&rt';
end;

procedure TfrmTaskExplorer.FormShow(Sender: TObject);
begin
  //??? check code here
  if not qryMatter.Active then
    tbtnPrecedents.Click;

  {$IFNDEF NOMULTISELECT}
  tbnMultiSelect.Visible := False;
  {$ENDIF}
end;


procedure TfrmTaskExplorer.tbtnPrecedentsClick(Sender: TObject);
var
  nodType, nodNew: TTreeNode;
  sLastType: string;
  ThisNode: TTreeNode;
  sWorkflow, sPrecedent: String;
begin
  if Assigned(nodCurrent) and (Assigned(nodCurrent.Parent)) then
  begin
    sWorkflow := nodCurrent.Parent.Text;
    sPrecedent := nodCurrent.Text;
  end
  else
  begin
    sWorkflow := '';
    sPrecedent := '';
  end;
  nodCurrent := nil;
  with tvOverview, qryTasks do
  begin
    // Initialize Tables
    Close;
    SQL.Clear;
    SQL.Add('SELECT ''<General>'' as WORKFLOWDESCR, DESCR, PATH');
    SQL.Add('FROM PREC');
    SQL.Add('WHERE NPREC NOT IN (SELECT DISTINCT NPREC FROM WORKFLOWTYPELINK)');
    SQL.Add('UNION');
    SQL.Add('SELECT WORKFLOWTYPE.DESCR AS WORKFLOWDESCR, PREC.DESCR AS DESCR, PREC.PATH AS PATH');
    SQL.Add('FROM PREC, WORKFLOWTYPE, WORKFLOWTYPELINK');
    SQL.Add('WHERE PREC.NPREC = WORKFLOWTYPELINK.NPREC AND WORKFLOWTYPE.CODE = WORKFLOWTYPELINK.WORKFLOWTYPE');
    if FWorkflowType <> '' then
      SQL.Add('AND WORKFLOWTYPELINK.WORKFLOWTYPE = ' + QuotedStr(FWorkflowType));
    SQL.Add('ORDER BY 1, 2');
    Open;
    // Defer drawing TreeView until EndUpdate
    Items.BeginUpdate;
    FreeNodeData();
    Items.Clear;
    // Add all matter tasks to TreeNodes
    sLastType := 'zzzzzzzzzzz';
    while not EOF do
    begin
{
  Modified 25.10.2002 GG
  Removed compiler warning
}
      nodType:= nil;
      if FieldByName('WORKFLOWDESCR').AsString <> sLastType then
      begin
        if FieldByName('WORKFLOWDESCR').AsString = '' then
          nodType := Items.Add(nil, '<General>')
        else
          nodType := Items.Add(nil, FieldByName('WORKFLOWDESCR').AsString);
        nodType.ImageIndex := ISTASK;
        nodType.SelectedIndex := ISTASK;
        sLastType := FieldByName('WORKFLOWDESCR').AsString;
      end;
      nodNew := Items.AddChild(nodType, FieldByName('DESCR').AsString);
      nodNew.ImageIndex := WordIcon;
      nodNew.SelectedIndex := WordIcon;
      Next;
      // Allow Status Bar text and Progress Bar to be painted
      Application.ProcessMessages;
    end;

    Close;
    // Now Draw the TTreeView now that all items are loaded
    Items.EndUpdate;
    if sWorkflow <> '' then
    begin
      // Find the previous selected node
      ThisNode := tvOverview.TopItem;
      while (ThisNode <> nil) and (ThisNode.Text <> sWorkflow) do
        ThisNode := ThisNode.getNextSibling;
      if ThisNode <> nil then
      begin
        Thisnode := ThisNode.getFirstChild;
        while (ThisNode <> nil) and (ThisNode.Text <> sPrecedent) do
          ThisNode := ThisNode.getNextSibling;
        tvOverview.Selected := ThisNode;
        nodCurrent := ThisNode;
      end;
    end
    else
      // Set focus to first item in the Tree View
      if Items.Count > 0 then
      begin
        Items.GetFirstNode.Selected := True;
        Items.GetFirstNode.Expanded := True;
      end;
  end;
  tbtnRun.Hint := 'Merge';
  tbtnRun.Caption := 'Me&rge';
end;


procedure TfrmTaskExplorer.FormCreate(Sender: TObject);
begin
  FWorkflowType := '';
  FOverviewChangeOK := True;
  Self.Caption := FORMCAPTION;
  WordIcon := imgWORD;
  if SystemString('WORDPROC') = 'WORDPERFECT8' then
    WordIcon := imgWORDPERFECT;
  tbtnPrecedents.ImageIndex := WordIcon;
  tbtnMatter.Visible := ivNever;
  tbtnDiary.Visible := ivNever;
  tbtnMultiSelect.Visible := ivNever;
  nodCurrent := nil;
end;

{$HINTS OFF}
procedure TfrmTaskExplorer.popOverviewPopup(Sender: TObject);
var
  iCtr: integer;
{
  Modified 25.10.2002 GG
  Removed compiler hint
  sTmp: string;
  bDefault: boolean;
}
  mnuItem: TMenuItem;

begin
  // Destroy the current menu
  for iCtr := 1 to popOverview.Items.Count do
    popOverview.Items[0].Free;
  nodCurrent := tvOverview.Selected;
  // Construct the new menu
  if tbtnMatter.Down then
  begin
    // Matter pop up menu
    mnuItem := NewPopup('&New', 'taNew', True);
    mnuItem.OnClick := MatterTaskAction;
    if tvOverview.Selected.Level > 0 then
    begin
      mnuItem := NewPopup('&Edit', 'taEdit', False);
      mnuItem.OnClick := MatterTaskAction;
      mnuItem := NewPopup('-', 'mnuBreak1', False);
      case tvOverview.Selected.StateIndex of
        ISPENDINGSTATE:
          begin
            mnuItem := NewPopup('Sta&rt', 'taStart', False);
            mnuItem.OnClick := MatterTaskAction;
            mnuItem := NewPopup('&Skip', 'taSkip', False);
            mnuItem.OnClick := MatterTaskAction;
            mnuItem := NewPopup('&Finish', 'taFinish', False);
            mnuItem.OnClick := MatterTaskAction;
          end;
        ISSTARTEDSTATE:
          begin
            mnuItem := NewPopup('&Finish', 'taFinish', False);
            mnuItem.OnClick := MatterTaskAction;
            mnuItem := NewPopup('&Skip', 'taSkip', False);
            mnuItem.OnClick := MatterTaskAction;
          end;
        ISSKIPPEDSTATE:
          begin
            popOverview.Items.Items[popOverview.Items.Count-1].Visible := False;
          end;
        ISOVERDUESTATE:
          begin
            // ???
          end;
        else
          popOverview.Items.Items[popOverview.Items.Count-1].Visible := False;
      end;
    end;
  end;
  if tbtnPrecedents.Down then
  begin
    // Precedent pop up menu
    try
      case tvOverview.Selected.ImageIndex of
        ISTASK:  // A Workflow group
        begin
          mnuItem := NewPopup('&New', 'popNew', True);
          mnuItem.OnClick := NewPrecedent;
          mnuItem := NewPopup('&Workflow Types', 'popWorkflowType', False);
          mnuItem.OnClick := WorkflowTypes;
        end;
        imgWORD, imgWORDPERFECT:
        begin
          mnuItem := NewPopup('Me&rge', 'popCreate', True);
          mnuItem.OnClick := CreatePrecedent;
          mnuItem := NewPopup('&Edit', 'popEdit', False);
          mnuItem.OnClick := EditPrecedent;
          mnuItem := NewPopup('&Open', 'popOpen', False);
          mnuItem.OnClick := OpenPrecedent;
          mnuItem := NewPopup('&Delete', 'popDelete', False);
          mnuItem.OnClick := DeletePrecedent;
        end;
      end; // case
    except
        mnuItem := NewPopup('&New', 'popNew', True);
        mnuItem.OnClick := NewPrecedent;
    end;
  end;
  // Construct the new menu
  if tbtnTasks.Down then
  begin
    // Precedent pop up menu
    case tvOverview.Selected.ImageIndex of
      ISTASK:  // A Workflow group
      begin
        mnuItem := NewPopup('&New', 'popNew', True);
        mnuItem.OnClick := NewTaskTemp;
        if tvOverview.Selected.Level > 0 then
        begin
          mnuItem := NewPopup('Add &Start Item', 'popAddStart', False);
          mnuItem.OnClick := NewTaskStartItem;
          mnuItem := NewPopup('Add &End Item', 'popAddEnd', False);
          mnuItem.OnClick := NewTaskEndItem;
          mnuItem := NewPopup('Edi&t', 'popEdit', False);
          mnuItem.OnClick := EditTask;
        end;
      end;
      imgWORD, imgWORDPERFECT, ISSUNDRY, ISFEE, ISCHEQREQ:
      begin
        mnuItem := NewPopup('Remo&ve', 'popRemove', True);
        mnuItem.OnClick := RemoveTaskItem;
      end;
      ISDATAFORM:
      begin
        mnuItem := NewPopup('&Run', 'popRun', True);
        mnuItem.OnClick := LoadDataForm;
        mnuItem := NewPopup('Remo&ve', 'popRemove', False);
        mnuItem.OnClick := RemoveTaskItem;
      end;
    end; // case
  end;
end;
{$HINTS ON}


function TfrmTaskExplorer.PrecedentPath(sDescr: string) : string;
begin
  with qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT PATH FROM PREC WHERE DESCR = ' + QuotedStr(sDescr);
    Open;
    if not IsEmpty then
      PrecedentPath := FieldByName('PATH').AsString
    else
      PrecedentPath := '';
    Close;
  end;
end;


procedure TfrmTaskExplorer.NewPrecedent(Sender: TObject);
begin
  with TfrmPrecNew.Create(self) do
  begin
    WorkflowType := FWorkflowType;
    ShowModal;
  end;
  tbtnPrecedents.Click;
end;


procedure TfrmTaskExplorer.WorkflowTypes(Sender: TObject);
begin
  with TfrmWorkflowType.Create(self) do
  begin
    qrySource.Locate('DESCR', nodCurrent.Text, []);
    ShowModal;
  end;
  tbtnPrecedents.Click;
end;


procedure TfrmTaskExplorer.NewTaskTemp(Sender: TObject);
begin
  with TfrmTaskTempNew.Create(self) do
    ShowModal;
  tbtnTasks.Click;
end;


procedure TfrmTaskExplorer.NewTaskStartItem(Sender: TObject);
begin
  NewTaskItem('B');
end;


procedure TfrmTaskExplorer.NewTaskEndItem(Sender: TObject);
begin
  NewTaskItem('E');
end;


procedure TfrmTaskExplorer.NewTaskItem(sEvent : string);
var
  iItemCount: Integer;
  ptrTask: TptrTask;
begin
  frmTaskItemSearch := TfrmTaskItemSearch.Create(self);
  try
    if frmTaskItemSearch.ShowModal = mrOK then
    begin
      ptrTask := nodCurrent.Data;
      with qryTmp do
      begin
        SQL.Clear;
        SQL.Add('SELECT COUNT(*) ITEMCOUNT');
        SQL.Add('FROM TASKLINK, TASKITEM');
        SQL.Add('WHERE TASKLINK.TASKCODE = :P_TaskCode');
        SQL.Add('AND TASKLINK.EVENT = :P_Event');
        SQL.Add('AND TASKLINK.TASKITEMCODE = TASKITEM.CODE');
        ParamByName('P_TaskCode').AsString := ptrTask^.Code;
        ParamByName('P_Event').AsString := 'B';
        Open;
        iItemCount := FieldByName('ITEMCOUNT').AsInteger;
        Close;
      end;
      with qryTaskLink do
      begin
        ParamByName('TASKCODE').AsString := ptrTask^.Code;
        ParamByName('TASKITEMCODE').AsString := frmTaskItemSearch.qryTaskItems.FieldByName('CODE').AsString;
        ParamByName('EVENT').AsString := sEvent;
        ParamByName('TASKORDER').AsInteger := iItemCount+1;
        ExecSQL;
      end;
      tbtnTasks.Click;
    end;
  finally
    FreeAndNil(frmTaskItemSearch);
  end;
end;


procedure TfrmTaskExplorer.RemoveTaskItem(Sender: TObject);
var
  ptrTask, ptrItem: TptrTask;
begin
  with qryTaskUnlink do
  begin
    ptrTask := nodCurrent.Parent.Data;
    ptrItem := nodCurrent.Data;
    ParamByName('P_TASKCODE').AsString := ptrTask^.Code;
    ParamByName('P_TaskItemCode').AsString := ptrItem^.Code;
    ParamByName('P_Event').AsString := ptrItem.Event;
    ExecSQL;
    nodCurrent.Delete;
    nodCurrent := Nil;
  end;
end;


procedure TfrmTaskExplorer.CreatePrecedent(Sender: TObject);
var
   PrecInfo: TPrecInfo;
   qryPrecedent: TUniQuery;
   sDataForm: string;
   LfrmMatterDataForm: TfrmMatterDataForm;

  procedure MergePrecedent;
  begin
    PrecInfo.PrecPath := qryPrecedent.FieldByName('PATH').AsString;
    PrecInfo.PrecCategory := qryPrecedent.FieldByName('NPRECCATEGORY').AsString;
    PrecInfo.PrecSavePath := qryPrecedent.FieldByName('SAVEPATH').AsString;
    PrecInfo.PrecDescription := qryPrecedent.FieldByName('DESCR').AsString;
    PrecInfo.WorkflowType := FWorkFlowType;
    PrecInfo.ControlMacro := qryPrecedent.FieldByName('CONTROLMACRO').AsString;
    PrecInfo.AfterMacro := qryPrecedent.FieldByName('AFTERMACRO').AsString;
    PrecInfo.MainDataFile := qryPrecedent.FieldByName('MAINDATAFILE').AsString;
    PrecInfo.MergeFile := qryPrecedent.FieldByName('MERGEFILE').AsString;
    PrecInfo.DataFilePath := qryPrecedent.FieldByName('DATAFILEPATH').AsString;
    PrecInfo.PrecClassification := qryPrecedent.FieldByName('NPRECCLASSIFICATION').AsString;
    MakePrecedent(FFileID, PrecInfo);
  end;

begin
  if FFileID = '' then
  begin
    if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
    if frmMatterSearch.ShowModal = mrOK then
      FileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
  end;

  if FFileID <> '' then
  begin
    qryPrecedent := TUniQuery.Create(nil);
    qryPrecedent.Connection := dmAxiom.uniInsight;
    qryPrecedent.SQL.Clear;
    qryPrecedent.SQL.Add('SELECT P.*, M.DATAFORM AS GENERICDATAFORM');
    qryPrecedent.SQL.Add('FROM PREC P, MATTERTYPE M');
    qryPrecedent.SQL.Add('WHERE P.DESCR = ' + QuotedStr(nodCurrent.Text));
    qryPrecedent.SQL.Add('  AND M.CODE = ' + QuotedStr(qryMatter.FieldByName('TYPE').AsString));
    qryPrecedent.Open;
    if not qryPrecedent.IsEmpty then
    begin
      sDataForm := qryPrecedent.FieldByName('DATAFORM').AsString;
      if sDataForm = '' then
        sDataForm := qryPrecedent.FieldByName('GENERICDATAFORM').AsString;
      if sDataForm <> '' then
      begin
        if not Assigned(LfrmMatterDataForm) then
           LfrmMatterDataForm := TfrmMatterDataForm.Create(Application);
        with LfrmMatterDataForm do
        begin
          if LoadForm(sDataForm, Self.qryMatter.FieldByName('FILEID').AsString) then
          begin
            if ShowModal = mrOk then
              MergePrecedent;
          end;
        end;
      end
      else
        MergePrecedent;
    end;
    qryPrecedent.Close;
    qryPrecedent.Free;
  end;
end;


procedure TfrmTaskExplorer.DeletePrecedent(Sender: TObject);
begin
  (* this method is heavily dependent on the description being unique throughout
     the PREC table *)
  if MessageDlg('Are you sure you want to delete this Precedent?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    with qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PREC');
      SQL.Add('WHERE DESCR = ' + QuotedStr(nodCurrent.Text));
      ExecSQL;
      PlaySound('Delete');
    end;
    tbtnPrecedents.Click;
  end;
end;


procedure TfrmTaskExplorer.OpenPrecedent(Sender: TObject);
var
  varWord, varDoc: Variant;
  sPrecPath: string;
begin
  if SystemString('WORDPROC') = 'WORD97' then
  begin
    // Open Word and send data to it
    try
      try
        varWord := GetActiveOleObject('Word.Application');
      except
        on EOleSysError do
          try
            varWord := CreateOleObject('Word.Application');
          except
            varWord := null;
          end;
      end;
      try
        sPrecPath := PrecedentPath(nodCurrent.Text);
        varWord.Visible := True;
        varDoc := varWord.Documents.Open(sPrecPath);
        varDoc := null;
      except
        varDoc := null;
        MsgErr('Could not open precedent ' + sPrecPath);
      end;
    except
      varWord := null;
    end;
    varWord := null;
    varDoc := null;
  end;

  if SystemString('WORDPROC') = 'WORDPERFECT8' then
  begin
    sPrecPath := PrecedentPath(nodCurrent.Text);
    if sPrecPath <> '' then
      ExecuteFile(sPrecPath, '', '.', SW_SHOWNORMAL);
  end;
end;

procedure TfrmTaskExplorer.MatterTaskAction(Sender: TObject);
begin
  // determine which menu option was selected
  case TTaskAction(GetEnumValue(TypeInfo(TTaskAction), TMenuItem(Sender).Name)) of
    taNew:
      begin
        with TfrmTaskNew.Create(Self) do
          DisplayMatter(FFileID);
        tbtnMatter.Click;
      end;
    taEdit:
      begin
        with TfrmTaskNew.Create(Self) do
          FindTask(TptrTask(nodCurrent.Data)^.NTask);
        tbtnMatter.Click;
      end;
    taStart:
      begin
        TaskProcess(TptrTask(nodCurrent.Data)^.Code, FFileID, dmAxiom.UserID, TptrTask(nodCurrent.Data)^.NTask, taStart);
        nodCurrent.StateIndex := ISSTARTEDSTATE;
      end;
    taFinish:
      begin
        TaskProcess(TptrTask(nodCurrent.Data)^.Code, FFileID, dmAxiom.UserID, TptrTask(nodCurrent.Data)^.NTask, taFinish);
        nodCurrent.StateIndex := ISFINISHEDSTATE;
      end;
    taSkip:
      begin
        TaskProcess(TptrTask(nodCurrent.Data)^.Code, FFileID, dmAxiom.UserID, TptrTask(nodCurrent.Data)^.NTask, taSkip);
        nodCurrent.StateIndex := ISSKIPPEDSTATE;
      end;
    taResume:
      begin
        TaskProcess(TptrTask(nodCurrent.Data)^.Code, FFileID, dmAxiom.UserID, TptrTask(nodCurrent.Data)^.NTask, taResume);
        // this is not that cool ???
        qryTasks.Locate('NTASK', TptrTask(nodCurrent.Data)^.NTask, []);
        nodCurrent.StateIndex := GetTaskStatus(qryTasks);
      end;
  end;
end;


procedure TfrmTaskExplorer.EditTask(Sender: TObject);
var
  sTemplateCode, sTaskItemCode: string;
begin
  if (TptrTask(nodCurrent.Data)^.ItemType = ''){ and (TptrTask(nodCurrent.Data)^.ItemType <> 'Task')} then
  begin
    sTemplateCode := TptrTask(nodCurrent.Data)^.Code;
    with TfrmTaskTempNew.Create(Self) do
    begin
      FindTemplate(sTemplateCode);
      Caption := 'Task Template Edit';
      ShowModal;
    end;
  end
  else
  begin
    sTaskItemCode := TptrTask(nodCurrent.Data)^.Code;
    with TfrmTaskItemNew.Create(Self) do
    begin
      FindTaskItem(sTaskItemCode);
      Caption := 'Task Item Edit';
      ShowModal;
    end;
  end;
end;


procedure TfrmTaskExplorer.EditPrecedent(Sender: TObject);
begin
  with TfrmPrecNew.Create(self) do
    DisplayPrecedent(nodCurrent.Text);
  tbtnPrecedents.Click;
end;


procedure TfrmTaskExplorer.tvOverviewDblClick(Sender: TObject);
begin
  nodCurrent := tvOverview.Selected;
  if tbtnPrecedents.Down then
  begin
    if tvOverview.Selected.ImageIndex = WordIcon then
      CreatePrecedent(Sender);
  end;
end;

procedure TfrmTaskExplorer.tvOverviewChange(Sender: TObject;
  Node: TTreeNode);
var
  MakeTree: Boolean;
  ThisItem: TListItem;
  ThisNode: TTreeNode;
  ptrTask : TptrTask;
begin
  tbtnRun.Enabled := True;
  if FOverviewChangeOK then
  begin
    if Node.Count = 0 then
      MakeTree := True
    else
      MakeTree := False;
    // Remove all the items
    lvDetails.Items.Clear;
    sbarExplorer.Panels[0].Text := '';
    if tbtnMatter.Down then
    begin
      case tvOverview.Selected.ImageIndex of
        ISTASK:  // Task - add subtasks to the list view
        begin
          with qryTmp do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT TASKLINK.TASKITEMCODE, TASKLINK.TASKORDER, TASKLINK.EVENT');
            SQL.Add(', TASKITEM.CODE, TASKITEM.TYPE, TASKITEM.REASON, TASKITEM.AMOUNT, TASKITEM.DATAFORM');
            SQL.Add('FROM TASKLINK, TASKITEM');
            ptrTask := tvOverview.Selected.Data;
            SQL.Add('WHERE TASKLINK.TASKCODE = ' + QuotedStr(ptrTask^.Code));
            SQL.Add('AND TASKLINK.TASKITEMCODE = TASKITEM.CODE');
            SQL.Add('ORDER BY TASKLINK.TASKORDER, TASKLINK.EVENT, TASKLINK.TASKITEMCODE');

            Open;

            // Load the Tasks
            while not EOF do
            begin
              // Update the list view
              ThisItem := lvDetails.Items.Add;
              ThisItem.Caption := FieldByName('REASON').AsString;
              if FieldByName('TYPE').AsString = 'Fee' then
                ThisItem.ImageIndex := ISFEE
              else if FieldByName('TYPE').AsString = 'Task' then
                ThisItem.ImageIndex := ISTASK
              else if FieldByName('TYPE').AsString = 'Sundry' then
                ThisItem.ImageIndex := ISSUNDRY
              else if FieldByName('TYPE').AsString = 'DataForm' then
                ThisItem.ImageIndex := ISDATAFORM
              else if FieldByName('TYPE').AsString = 'CheqReq' then
                ThisItem.ImageIndex := ISCHEQREQ
              else if FieldByName('TYPE').AsString = 'Precedent' then
                ThisItem.ImageIndex := WordIcon;
              ThisItem.SubItems.Add(FieldByName('CODE').AsString);
              ThisItem.SubItems.Add(FieldByName('TYPE').AsString);
              ThisItem.SubItems.Add(FieldByName('EVENT').AsString);
              ThisItem.SubItems.Add(Format('%m', [FieldByName('AMOUNT').AsCurrency]));
              if FieldByName('EVENT').AsString = 'B' then
                ThisItem.StateIndex := STARTSTATE
              else if FieldByName('EVENT').AsString = 'E' then
                ThisItem.StateIndex := ENDSTATE;

              if MakeTree then
              begin
                // Add the Tree node
                ThisNode := tvOverview.Items.AddChild(Node, FieldByName('REASON').AsString);
                New(ptrTask);
                ptrTask^.Code := FieldByName('TASKITEMCODE').AsString;
                ptrTask^.ItemType := FieldByName('TYPE').AsString;
                ptrTask^.Event := FieldByName('EVENT').AsString;
                ptrTask^.DataForm := FieldByName('DATAFORM').AsString;
                ThisNode.Data := ptrTask;
                ThisNode.ImageIndex := ThisItem.ImageIndex;
                ThisNode.SelectedIndex := ThisItem.ImageIndex;
                if FieldByName('EVENT').AsString = 'B' then
                  ThisNode.StateIndex := STARTSTATE
                else if FieldByName('EVENT').AsString = 'E' then
                  ThisNode.StateIndex := ENDSTATE;
              end;

              Next;
            end;
            Close;
          end;

        end;
      end;
    end; // case

    if tbtnTasks.Down and (tvOverview.Selected.Level > 0) then
    begin
      case tvOverview.selected.ImageIndex of
        ISTASK:  // Task - add subtasks to the list view
        begin
          with qryTmp do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT TASKLINK.TASKITEMCODE, TASKLINK.TASKORDER, TASKLINK.EVENT');
            SQL.Add(', TASKITEM.CODE, TASKITEM.TYPE, TASKITEM.REASON, TASKITEM.AMOUNT, TASKITEM.DATAFORM');
            SQL.Add('FROM TASKLINK, TASKITEM');
            ptrTask := tvOverview.Selected.Data;
            SQL.Add('WHERE TASKLINK.TASKCODE = ' + QuotedStr(ptrTask^.Code));
            SQL.Add('AND TASKLINK.TASKITEMCODE = TASKITEM.CODE');
            SQL.Add('ORDER BY TASKLINK.TASKORDER, TASKLINK.EVENT, TASKLINK.TASKITEMCODE');

            Open;

            // Load the Tasks
            while not EOF do
            begin
              // Update the list view
              ThisItem := lvDetails.Items.Add;
              ThisItem.Caption := FieldByName('REASON').AsString;
              if FieldByName('TYPE').AsString = 'Fee' then
                ThisItem.ImageIndex := ISFEE
              else if FieldByName('TYPE').AsString = 'Task' then
                ThisItem.ImageIndex := ISTASK
              else if FieldByName('TYPE').AsString = 'Sundry' then
                ThisItem.ImageIndex := ISSUNDRY
              else if FieldByName('TYPE').AsString = 'DataForm' then
                ThisItem.ImageIndex := ISDATAFORM
              else if FieldByName('TYPE').AsString = 'CheqReq' then
                ThisItem.ImageIndex := ISCHEQREQ
              else if FieldByName('TYPE').AsString = 'Precedent' then
                ThisItem.ImageIndex := WordIcon;
              ThisItem.SubItems.Add(FieldByName('CODE').AsString);
              ThisItem.SubItems.Add(FieldByName('TYPE').AsString);
              ThisItem.SubItems.Add(FieldByName('EVENT').AsString);
              ThisItem.SubItems.Add(Format('%m', [FieldByName('AMOUNT').AsCurrency]));
              if MakeTree then
              begin
                // Add the Tree node
                ThisNode := tvOverview.Items.AddChild(Node, FieldByName('REASON').AsString);
                New(ptrTask);
                ptrTask^.Code := FieldByName('TASKITEMCODE').AsString;
                ptrTask^.ItemType := FieldByName('TYPE').AsString;
                ptrTask^.Event := FieldByName('EVENT').AsString;
                ptrTask^.DataForm := FieldByName('DATAFORM').AsString;
                ThisNode.Data := ptrTask;
                ThisNode.ImageIndex := ThisItem.ImageIndex;
                ThisNode.SelectedIndex := ThisItem.ImageIndex;
              end;
              // Get next Matter
              Next;
            end;
            Close;
          end;

        end;
      end;
    end; // case

    if tbtnPrecedents.Down then
      tbtnRun.Enabled := tvOverview.Selected.Level > 0;

    if lvDetails.ViewStyle = vsReport then
      tbtnIconDetailsClick(Self);
  end;
end;


procedure TfrmTaskExplorer.tbtnMultiSelectClick(Sender: TObject);
begin
  {$IFNDEF NOMULTISELECT}
  with TfrmMultiSelect.Create(Self) do
  begin
    Show;
  end;
  {$ENDIF}
end;

procedure TfrmTaskExplorer.mnuFindClick(Sender: TObject);
var
  iCtr: Integer;
begin
  if tbtnPrecedents.Down then
    with TfrmGenericSearch.Create(Self) do
    begin
      SQL := 'SELECT PATH AS ORGCODE, DESCR, ''N'' AS DEFAULT FROM PREC ORDER BY PATH';

      Caption := 'Precedent Selection';
      TableName := 'PREC';
      qrySource.Close;
      (* this sould be moved to the form at a later stage for full encapsulation ??? *)
      with SourceFieldList do
      begin
        SourceFieldList.Add(TStringField.Create(qrySource));
        with TField(SourceFieldList.Items[0]) do
        begin
          FieldName := 'ORGCODE';
          DataSet := qrySource;
        end;
        SourceFieldList.Add(TStringField.Create(qrySource));
        with TField(SourceFieldList.Items[1]) do
        begin
          FieldName := 'DESCR';
          DataSet := qrySource;
        end;
        SourceFieldList.Add(TStringField.Create(qrySource));
        with TField(SourceFieldList.Items[2]) do
        begin
          Calculated := True;
          FieldKind := fkCalculated;
          FieldName := 'CODE';
          DataSet := qrySource;
        end;
      end;

      qrySource.OnCalcFields := SearchDataSetNotify;
      qrySource.Open;
      if ShowModal = mrOK then
      begin
        for iCtr := 0 to tvOverview.Items.Count do
        begin
          if tvOverview.Items.Item[iCtr].Text = qrySource.FieldByName('DESCR').AsString then
          begin
            tvOverview.Items.Item[iCtr].Selected := True;
            Break;
          end;
        end;
      end;
    end;

(*    with TfrmGenericSearch.Create(Self) do
    begin
      SQL := 'SELECT NPREC AS CODE, DESCR FROM PREC ORDER BY CODE';
      SearchField := sfDescription;
      if ShowModal = mrOK then
      begin
        for iCtr := 0 to tvOverview.Items.Count do
        begin
          if tvOverview.Items.Item[iCtr].Text = qrySource.FieldByName('DESCR').AsString then
          begin
            tvOverview.Items.Item[iCtr].Selected := True;
            Break;
          end;
        end;
      end;
    end;*)
end;

procedure TfrmTaskExplorer.SearchDataSetNotify(DataSet: TDataSet);
begin
  TUniQuery(DataSet).FieldByName('CODE').AsString :=
    ExtractFileName(TUniQuery(DataSet).FieldByName('ORGCODE').AsString);
end;

procedure TfrmTaskExplorer.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key = Ord('F')) or (Key = Ord('f'))) and (ssCtrl in Shift) then
    mnuFind.Click;
end;

procedure TfrmTaskExplorer.tbtnFindMatterClick(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOK then
   begin
      FileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      tbtnRefresh.Click;
   end;
end;

procedure TfrmTaskExplorer.tbtnClearClick(Sender: TObject);
begin
  FileID := '';
  tbtnRefresh.Click;
end;

procedure TfrmTaskExplorer.tbtnRefreshClick(Sender: TObject);
begin
  if tbtnMatter.Down then
    tbtnMatter.Click
  else if tbtnTasks.Down then
    tbtnTasks.Click
  else if tbtnPrecedents.Down then
    tbtnPrecedents.Click;
end;

procedure TfrmTaskExplorer.tbtnRunClick(Sender: TObject);
begin
  if tvOverview.Selected <> nil then
  begin
    nodCurrent := tvOverview.Selected;
    if tbtnPrecedents.Down and ((tvOverview.Selected.ImageIndex = imgWORD) or (tvOverview.Selected.ImageIndex = imgWORDPERFECT)) then
      CreatePrecedent(tvOverview)
    else if tbtnTasks.Down then
    begin
      if tvOverview.Selected.ImageIndex = ISTASK then
        MatterTaskAction(Self)
      else if tvOverview.Selected.ImageIndex = ISDATAFORM then
        LoadDataForm(Self);
    end;
  end;
end;

procedure TfrmTaskExplorer.mnuFileRunClick(Sender: TObject);
begin
  tbtnRun.Click;
end;


procedure TfrmTaskExplorer.LoadDataForm(Sender: TObject);
var
  ptrTask : TptrTask;
  LfrmMatterDataForm: TfrmMatterDataForm;
begin
   if FFileID = '' then
      if frmMatterSearch.ShowModal = mrOK then
         FileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
   if FFileID <> '' then
      if not Assigned(LfrmMatterDataForm) then
           LfrmMatterDataForm := TfrmMatterDataForm.Create(Application);
      with LfrmMatterDataForm do
      begin
         ptrTask := nodCurrent.Data;
         LoadForm(ptrTask^.DataForm, FFileID);
         ShowModal;
      end;
end;

procedure TfrmTaskExplorer.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmTaskExplorer.ToolButton4Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

end.

