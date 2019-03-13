unit WorkFlowNewTaskItemDialog;
(*
  WorkFlow New Task Template Item

  Used for New and Editing task template items

  Mathew Dredge, Aug-Sep 2002
 *)

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, dxBarBuiltInMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridDBTableView, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox,
  cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxPC, DBAccess, Uni, MemDS;

type
  TfmWorkFlowNewTaskItemDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    rbBelow: TRadioButton;
    rbAsChild: TRadioButton;
    Label1: TLabel;
    lSelectedTask: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rbAbove: TRadioButton;
    lNewSeqNoLabel: TLabel;
    lNewSeqNo: TLabel;
    cbUpdateExisting: TCheckBox;
    qryDataFields: TUniQuery;
    dsDataFields: TUniDataSource;
    dsAssignedFields: TUniDataSource;
    qryAssignedFields: TUniQuery;
    qryDeleteAssignedFields: TUniQuery;
    eTaskDescription: TEdit;
    eTaskNote: TEdit;
    cxPageControl1: TcxPageControl;
    tsActions: TcxTabSheet;
    tsAssignWatch: TcxTabSheet;
    tsFeeDate: TcxTabSheet;
    tsDocuments: TcxTabSheet;
    tabDataFields: TcxTabSheet;
    gbStartWhen: TGroupBox;
    Label5: TLabel;
    lDaysFrom: TLabel;
    lStartRelated: TLabel;
    eDaysFrom: TDBEdit;
    cbStartRelatedTask: TComboBox;
    dbcTaskStartsWhen: TcxComboBox;
    gbCompleteWhen: TGroupBox;
    lDaysToComplete: TLabel;
    Label7: TLabel;
    lCompleteRelated: TLabel;
    eDaysToComplete: TDBEdit;
    cbCompleteRelatedTask: TComboBox;
    dbcTaskCompletesWhen: TcxComboBox;
    gbSkipWhen: TGroupBox;
    Label8: TLabel;
    lSkipRelated: TLabel;
    cbSkipRelatedTask: TComboBox;
    dbcTaskSkipsWhen: TcxComboBox;
    ckCriticalDate: TCheckBox;
    ckCriticalAlert: TCheckBox;
    cbTaskHeading: TCheckBox;
    cbReportable: TCheckBox;
    gbAssign: TGroupBox;
    Label6: TLabel;
    dblAssignTo: TcxLookupComboBox;
    gbEMail: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    lWatchEventsCaption: TLabel;
    ckWatchStart: TCheckBox;
    ckWatchComplete: TCheckBox;
    ckWatchSkip: TCheckBox;
    ckWatchAssignedChange: TCheckBox;
    ckWatchDueDateChange: TCheckBox;
    ckWatchOverDue: TCheckBox;
    ckWatchUndo: TCheckBox;
    dblEmailOverdue: TcxImageComboBox;
    dblWatcher: TcxImageComboBox;
    gbLinkDueDate: TGroupBox;
    lDaysFromLink: TLabel;
    lLinkedTo: TLabel;
    lDateLinkRelated: TLabel;
    eLinkDaysFrom: TDBEdit;
    cbLinkDateToRelated: TComboBox;
    dbcLinkDateTo: TcxComboBox;
    gbFeeCreate: TGroupBox;
    lFeeTemplate: TLabel;
    Label10: TLabel;
    dbeShowFee: TcxCheckBox;
    cmbFeeTemplate: TcxImageComboBox;
    dbgDocs: TcxGrid;
    tvDocs: TcxGridTableView;
    tvDocsDOCUMENTNAME: TcxGridColumn;
    tvDocsID: TcxGridColumn;
    dbgDocsLevel1: TcxGridLevel;
    bnAddDoc: TButton;
    bnDeleteDoc: TButton;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    Label12: TLabel;
    grdAssignedFields: TcxGrid;
    tvAssignedFields: TcxGridDBTableView;
    tvAssignedFieldsSEQ: TcxGridDBColumn;
    tvAssignedFieldsCAPTION: TcxGridDBColumn;
    tvAssignedFieldsFIELDNAME: TcxGridDBColumn;
    tvAssignedFieldsDATAFORM: TcxGridDBColumn;
    tvAssignedFieldsWORKFLOWTYPECODE: TcxGridDBColumn;
    tvAssignedFieldsWKFLOW_LINEID: TcxGridDBColumn;
    lvAssignedFields: TcxGridLevel;
    Panel2: TPanel;
    Label11: TLabel;
    grdAvailable: TcxGrid;
    tvFieldsAvailable: TcxGridDBTableView;
    tvFieldsAvailableCAPTION: TcxGridDBColumn;
    tvFieldsAvailableNAME: TcxGridDBColumn;
    tvFieldsAvailableDATAFORM: TcxGridDBColumn;
    grdAvailableLevel1: TcxGridLevel;
    Label13: TLabel;
    lbTeams: TcxLookupComboBox;
    tbTeam: TUniTable;
    StringField1: TStringField;
    tbTeamDESCR: TStringField;
    dsTeam: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure rbBelowClick(Sender: TObject);
    procedure bnDeleteDocClick(Sender: TObject);
    procedure bnAddDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcTaskStartsWhenChange(Sender: TObject);
    procedure cbStartRelatedTaskChange(Sender: TObject);
    procedure bnOkClick(Sender: TObject);
    procedure cbCompleteRelatedTaskChange(Sender: TObject);
    procedure dbcTaskSkipsWhenChange(Sender: TObject);
    procedure cbSkipRelatedTaskChange(Sender: TObject);
    procedure cbLinkDateToRelatedChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dblWatcherChange(Sender: TObject);
    procedure tvAssignedFieldsDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure tvFieldsAvailableMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tvAssignedFieldsDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure tvAssignedFieldsEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure tvFieldsAvailableEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure tabDataFieldsShow(Sender: TObject);
    procedure tvFieldsAvailableDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure ckCriticalDateClick(Sender: TObject);
    procedure dblWatcherPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcTaskSkipsWhenPropertiesChange(Sender: TObject);
    procedure dbcTaskStartsWhenPropertiesChange(Sender: TObject);
    procedure dbcTaskCompletesWhenPropertiesChange(Sender: TObject);
    procedure dbcLinkDateToPropertiesChange(Sender: TObject);
  private
    FAsChildSeqNo: String;
    FBelowSeqNo: String;
    FWorkflowType: String;
    FAboveSeqNo: String;
    FSelParentLineID: Integer;
    FSelectedLineID: Integer;
    FSelParentLastLineID: Integer;
    FSelectedPriorLineID: Integer;
    FSelectedLastLineID: Integer;
    FSelectedNextLineID: Integer;

    { Private declarations }
    procedure LoadTaskStartsWhen();
    procedure RefreshDocList();
  public
    { Public declarations }
    property AsChildSeqNo: String read FAsChildSeqNo write FAsChildSeqNo;
    property AboveSeqNo:   String read FAboveSeqNo   write FAboveSeqNo;
    property BelowSeqNo:   String read FBelowSeqNo   write FBelowSeqNo;
    property WorkflowType: String read FWorkflowType write FWorkflowType;

    property SelectedLineID: Integer read FSelectedLineID write FSelectedLineID;
    property SelParentLineID: Integer read FSelParentLineID write FSelParentLineID;
    property SelParentLastLineID: Integer read FSelParentLastLineID write FSelParentLastLineID;
    property SelectedPriorLineID: Integer read FSelectedPriorLineID write FSelectedPriorLineID;
    property SelectedNextLineID: Integer read FSelectedNextLineID write FSelectedNextLineID;
    property SelectedLastLineID: Integer read FSelectedLastLineID write FSelectedLastLineID;
  end;

var
  fmWorkFlowNewTaskItemDialog: TfmWorkFlowNewTaskItemDialog;

implementation

uses WorkFlowDataModule, WorkFlowDocTemplates, AxiomData,Dialogs,
  WorkFlowTaskDef, WorkFlowDataModuleTasks, Variants, cxGridStrs, miscfunc,
  WorkFlowDataModuleDocs;

{$R *.DFM}

procedure TfmWorkFlowNewTaskItemDialog.FormShow(Sender: TObject);
begin
  eTaskDescription.Text    := dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKDESCRIPTION.AsString;
  eTaskNote.Text           := dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKNOTE.AsString;
  dblAssignTo.EditValue    := dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.AsString;
  dblEmailOverdue.EditValue:= dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.AsString;
  dblWatcher.EditValue     := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.AsString;

  cmbFeeTemplate.EditValue  := dmWorkFlowDataModuleTasks.tbTaskTemplatesSCALECOSTCODE.AsString;
  dbeShowFee.Checked       := dmWorkFlowDataModuleTasks.tbTaskTemplatesSHOWFEE.AsString = 'Y';


  ckCriticalAlert.Checked  := dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_ALERT.AsString = 'Y';
  ckCriticalDate.Checked   := dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_DATE.AsString = 'Y';
  cbTaskHeading.Checked    := dmWorkFlowDataModuleTasks.tbTaskTemplatesSAMEDAY_DUE.AsString = 'Y';
  cbReportable.Checked     := dmWorkFlowDataModuleTasks.tbTaskTemplatesREPORTABLE.AsString = 'Y';

  if(dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString <> '') then
  begin
    ckWatchStart.Checked          := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString[1] = 'Y';
    ckWatchComplete.Checked       := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString[2] = 'Y';
    ckWatchSkip.Checked           := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString[3] = 'Y';
    ckWatchAssignedChange.Checked := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString[4] = 'Y';
    ckWatchDueDateChange.Checked  := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString[5] = 'Y';
    ckWatchOverDue.Checked        := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString[6] = 'Y';
    ckWatchUndo.Checked           := dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString[7] = 'Y';
  end;
  dblWatcherChange(dblWatcher);

  cbCompleteRelatedTask.Items.Assign(cbStartRelatedTask.Items);
  cbSkipRelatedTask.Items.Assign(cbStartRelatedTask.Items);
  cbLinkDateToRelated.Items.Assign(cbStartRelatedTask.Items);

  if(rbAsChild.Enabled and rbBelow.Enabled and rbAbove.Enabled) then
  begin
    if(not rbAsChild.Enabled) then
      lNewSeqNo.Caption := '1'
    else
    begin
      if(rbBelow.Checked) then
        rbBelowClick(rbBelow)
      else if(rbAbove.Checked) then
        rbBelowClick(rbAbove)
      else
        rbBelowClick(rbAsChild);
    end;
  end else
  begin
    lNewSeqNo.Caption := '';
    lNewSeqNoLabel.Enabled := False;

    LoadTaskStartsWhen();

    try
      dbcTaskStartsWhen.ItemIndex := dbcTaskStartsWhen.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHEN.DisplayText);
      dbcTaskStartsWhenChange(dbcTaskStartsWhen);
    except
    end;

    try
      dbcTaskCompletesWhen.ItemIndex := dbcTaskCompletesWhen.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHEN.DisplayText);
      dbcTaskCompletesWhenPropertiesChange(dbcTaskCompletesWhen);
    except
    end;

    try
      dbcTaskSkipsWhen.ItemIndex := dbcTaskSkipsWhen.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHEN.DisplayText);
      dbcTaskSkipsWhenPropertiesChange(dbcTaskSkipsWhen);
    except
    end;
//    dbcTaskSkipsWhen.ItemIndex := dbcTaskSkipsWhen.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHEN.DisplayText);
//    dbcTaskSkipsWhenPropertiesChange(dbcTaskSkipsWhen);

    try
      dbcLinkDateTo.ItemIndex    := dbcLinkDateTo.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETO.DisplayText);
      dbcLinkDateToPropertiesChange(dbcLinkDateTo);
    except
    end;

    RefreshDocList();

//    qryDataFields.ParamByName('WORKFLOWTYPECODE').AsString := WorkflowType;
    qryDataFields.ParamByName('WKFLOW_LINEID').AsInteger := SelectedLineID;
//    qryDataFields.ParamByName('DATAFORM').AsString := SystemString('WKFLOW_DFLT_DATAFORM');
    qryDataFields.Open;

    qryAssignedFields.ParamByName('WORKFLOWTYPECODE').AsString := WorkflowType;
    qryAssignedFields.ParamByName('WKFLOW_LINEID').AsInteger := SelectedLineID;
    qryAssignedFields.Open;
//  qryAssignedFields.Edit;
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.rbBelowClick(Sender: TObject);
begin
  if(Sender = rbBelow) then
    lNewSeqNo.Caption := FBelowSeqNo
  else if(Sender = rbAbove) then
    lNewSeqNo.Caption := FAboveSeqNo
  else
    lNewSeqNo.Caption := FAsChildSeqNo;

  LoadTaskStartsWhen();
  dbcTaskStartsWhen.ItemIndex     := dbcTaskStartsWhen.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHEN.DisplayText);
  dbcTaskCompletesWhen.ItemIndex  := dbcTaskCompletesWhen.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHEN.DisplayText);
  dbcTaskSkipsWhen.ItemIndex      := dbcTaskSkipsWhen.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHEN.DisplayText);
  dbcLinkDateTo.ItemIndex         := dbcLinkDateTo.Properties.Items.IndexOf(dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETO.DisplayText);
end;

procedure TfmWorkFlowNewTaskItemDialog.bnDeleteDocClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to delete the document template ''' +
    string(tvDocsDOCUMENTNAME.EditValue) {dmWorkFlowDataModuleTasks.qTaskDocsDOCUMENTNAME.AsString} + ''' from this task!', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    if(dmWorkFlowDataModuleTasks.tbTaskDocLink.Locate('docid',integer(tvDocsID.EditValue) {dmWorkFlowDataModuleTasks.qTaskDocsDOCID.AsInteger},[])) then
    begin
      dmWorkFlowDataModuleTasks.tbTaskDocLink.Delete();
      RefreshDocList();
    end;
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.bnAddDocClick(Sender: TObject);
var
  LDocs: TfmWorkFlowDocTemplates;
  LID: TStringList;
  i: Integer;
begin
   LDocs := TfmWorkFlowDocTemplates.Create(Self);
   try
      LDocs.BorderStyle := bsDialog;
      LDocs.LimitTo := FWorkflowType;
      if(LDocs.ShowModal <> mrOk) then
         Exit;
      LID := TStringList.Create();
      try
         LDocs.GetDocIDs(LID);
         for i := 0 to LID.Count - 1 do
         begin
            dmWorkFlowDataModuleTasks.tbTaskDocLink.Append();
            dmWorkFlowDataModuleTasks.tbTaskDocLinkTASKLINEID.AsInteger := 0;
            dmWorkFlowDataModuleTasks.tbTaskDocLinkDOCID.AsString := LID[i];
            dmWorkFlowDataModuleTasks.tbTaskDocLink.Post();
         end;
         RefreshDocList();
      finally
         FreeAndNil(LID);
      end;
   finally
      FreeAndNil(LDocs);
   end;
end;

procedure TfmWorkFlowNewTaskItemDialog.FormCreate(Sender: TObject);
var
  i: Integer;
  AItem: TcxImageComboboxItem;
begin
   gbEMail.Visible := dmWorkFlowDataModule.WorkFlowEMailInstalled;
   if(not gbEMail.Visible) then
      tsAssignWatch.Caption := 'Assign';

//   PageControl.ActivePageIndex := 0;
   FSelParentLineID     := -1;
   FSelectedLineID      := -1;
   FSelParentLastLineID := -1;
   FSelectedPriorLineID := -1;
   FSelectedNextLineID  := -1;
   FSelectedLastLineID  := -1;

   dmWorkFlowDataModuleTasks.tbTaskDocLink.Open();

   dmWorkFlowDataModule.qAssignTo.Close;
   dmWorkFlowDataModule.qAssignTo.ParamByName('entity').AsString := dmAxiom.Entity;
   dmWorkFlowDataModule.qAssignTo.Open();

   dblEmailOverdue.Properties.Items.Clear();
   dblWatcher.Properties.Items.Clear();
   for i := Low(TAssignToList) to High(TAssignToList) do
   begin
      AItem := dblEmailOverdue.Properties.Items.Add;
      AItem.Description := TAssignToList[i];
      AItem.Value := TAssignToListCode[i];

      AItem := dblWatcher.Properties.Items.Add;
      AItem.Description := TAssignToList[i];
      AItem.Value := TAssignToListCode[i];
   end;

   cmbFeeTemplate.Properties.Items.Clear;
   dmWorkFlowDataModuleTasks.qFeeTemplates.Open();
   while (not dmWorkFlowDataModuleTasks.qFeeTemplates.EOF) do
   begin
      AItem := cmbFeeTemplate.Properties.Items.Add;
      AItem.Description := dmWorkFlowDataModuleTasks.qFeeTemplatesDESCR.AsString;
      AItem.Value := dmWorkFlowDataModuleTasks.qFeeTemplatesCODE.AsString;
      dmWorkFlowDataModuleTasks.qFeeTemplates.Next;
   end;
   dmWorkFlowDataModuleTasks.qFeeTemplates.Close;
   
   {     AItem := dblEmailOverdue.Properties.Items.Add;
   AItem.Description := 'Nobody';
   AItem.Value := ''; }

   {     AItem := dblWatcher.Properties.Items.Add;
   AItem.Description := 'Nobody';
   AItem.Value := '';  }
   tbTeam.Open();
   dblAssignTo.EditValue := dmAxiom.WorkFlowDefault;
end;

procedure TfmWorkFlowNewTaskItemDialog.dbcTaskStartsWhenChange(
  Sender: TObject);
var
  LStartsWhen: TTaskStartsWhen;
begin
  LStartsWhen := GetTaskStartsWhenFromDescription(dbcTaskStartsWhen.Properties.Items[dbcTaskStartsWhen.ItemIndex]);

  lDaysFrom.Enabled := True;
  eDaysFrom.Enabled := True;

  if (LStartsWhen in TTaskStartWhenDaysOverdue) then
    lDaysFrom.Caption := 'Days Overdue:'
{  else if(LStartsWhen in TTaskStartWhenDaysFromStart) then
    lDaysFrom.Caption := 'Days From Start:'
  else if(LStartsWhen in TTaskStartWhenDaysFromComplete) then
    lDaysFrom.Caption := 'Days From Complete:'}
  else
  begin
    lDaysFrom.Caption := 'Days (N/A):';
    lDaysFrom.Enabled := False;
    eDaysFrom.Enabled := False;
  end;

  if(LStartsWhen in TTaskStartWhenRelated) then
  begin
    cbStartRelatedTask.Enabled := True;
    cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.AsInteger));
    lStartRelated.Caption := 'Related Task:';
    lStartRelated.Enabled := True;
  end else if(LStartsWhen in TTaskStartWhenParent) then
  begin
    cbStartRelatedTask.Enabled := False;
    if(rbAsChild.Checked) then
      cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelectedLineID))
    else
      cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelParentLineID));

    lStartRelated.Caption := 'Parent Task:';
    lStartRelated.Enabled := True;
  end else if(LStartsWhen in TTaskStartWhenSibling) then
  begin
    cbStartRelatedTask.Enabled := False;
    if(rbAsChild.Checked) then
      cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelectedLastLineID))
    else if (rbBelow.Checked) then
      cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelectedLineID))
    else
      cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelectedPriorLineID));

    lStartRelated.Caption := 'Prior Task:';
    lStartRelated.Enabled := True;
  end else
  begin
    cbStartRelatedTask.Enabled := False;
    cbStartRelatedTask.ItemIndex := -1;
    lStartRelated.Caption := 'Related Task (N/A):';
    lStartRelated.Enabled := False;
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.LoadTaskStartsWhen;
var
  LAdd: Boolean;
  s: TTaskStartsWhen;
  c: TTaskCompletesWhen;
  k: TTaskSkipsWhen;
  d: TTaskDueDateLinkTo;
begin
  dbcTaskStartsWhen.Properties.Items.Clear();
  for s := Low(TTaskStartsWhen) to High(TTaskStartsWhen) do
  begin
    LAdd := True;

    if(s in TTaskStartWhenParent) then
    begin
      if(rbAsChild.Checked) then
        LAdd := SelectedLineID <> -1
      else
        LAdd := SelParentLineID <> -1;
    end else if(s in TTaskStartWhenSibling) then
    begin
      if(rbAsChild.Checked) then
        LAdd := SelectedLastLineID <> -1
      else if(rbBelow.Checked) then
        LAdd := SelectedLineID <> -1
      else
        LAdd := SelectedPriorLineID <> -1;
    end;

    if(LAdd) then
      dbcTaskStartsWhen.Properties.Items.Add(TTaskStartWhenDescription[s]);
  end;
  dbcTaskStartsWhen.Properties.DropDownRows := dbcTaskStartsWhen.Properties.Items.Count;


  dbcTaskCompletesWhen.Properties.Items.Clear();
  for c := Low(TTaskCompletesWhen) to High(TTaskCompletesWhen) do
  begin
    LAdd := True;

    if(c in TTaskCompleteWhenSibling) then
    begin
      if(rbAsChild.Checked) then
        LAdd := SelectedLastLineID <> -1
      else if(rbBelow.Checked) then
        LAdd := SelectedLineID <> -1
      else
        LAdd := SelectedPriorLineID <> -1;
    end else if(c in TTaskCompleteWhenNext) then
    begin
      if(rbAsChild.Checked) then
        LAdd := SelectedLastLineID <> -1
      else if(rbBelow.Checked) then
        LAdd := SelectedLineID <> -1
      else
        LAdd := SelectedNextLineID <> -1;
    end;

    if(LAdd) then
      dbcTaskCompletesWhen.Properties.Items.Add(TTaskCompleteWhenDescription[c]);
  end;
  dbcTaskCompletesWhen.Properties.DropDownRows := dbcTaskCompletesWhen.Properties.Items.Count;

//  dbcTaskSkipsWhen.Items.Clear();
  dbcTaskSkipsWhen.Properties.Items.Clear;
  for k := Low(TTaskSkipsWhen) to High(TTaskSkipsWhen) do
  begin
    LAdd := True;

    if(k in TTaskSkipWhenSibling) then
    begin
      if(rbAsChild.Checked) then
        LAdd := SelectedLastLineID <> -1
      else if(rbBelow.Checked) then
        LAdd := SelectedLineID <> -1
      else
        LAdd := SelectedPriorLineID <> -1;
    end else if(k in TTaskSkipWhenNext) then
    begin
      if(rbAsChild.Checked) then
        LAdd := SelectedLastLineID <> -1
      else if(rbBelow.Checked) then
        LAdd := SelectedLineID <> -1
      else
        LAdd := SelectedNextLineID <> -1;
    end;

    if(LAdd) then
    begin
//      dbcTaskSkipsWhen.Items.Add(TTaskSkipWhenDescription[k]);
      dbcTaskSkipsWhen.Properties.Items.Add(TTaskSkipWhenDescription[k])
  end;
  end;
  dbcTaskSkipsWhen.properties.DropDownRows := dbcTaskSkipsWhen.Properties.Items.Count;

  dbcLinkDateTo.Properties.Items.Clear();
  for d := Low(TTaskDueDateLinkTo) to High(TTaskDueDateLinkTo) do
  begin
    LAdd := True;

    if(d = dltS) then
    begin
      if(rbAsChild.Checked) then
        LAdd := SelectedLastLineID <> -1
      else if(rbBelow.Checked) then
        LAdd := SelectedLineID <> -1
      else
        LAdd := SelectedPriorLineID <> -1;
    end else if(d = dltN) then
    begin
      if(rbAsChild.Checked) then
        LAdd := SelectedLastLineID <> -1
      else if(rbBelow.Checked) then
        LAdd := SelectedLineID <> -1
      else
        LAdd := SelectedNextLineID <> -1;
    end;

    if(LAdd) then
      dbcLinkDateTo.Properties.Items.Add(TTaskDueDateLinkToDescription[d]);
  end;
  dbcLinkDateTo.Properties.DropDownRows := dbcLinkDateTo.Properties.Items.Count;
end;

procedure TfmWorkFlowNewTaskItemDialog.cbStartRelatedTaskChange(
  Sender: TObject);
begin
  if(cbStartRelatedTask.Enabled) then
  begin
    if(cbStartRelatedTask.ItemIndex < 0) then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.Clear()
    else
      dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.AsInteger :=
        Integer(cbStartRelatedTask.Items.Objects[cbStartRelatedTask.ItemIndex]);
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.bnOkClick(Sender: TObject);
var
  LTaskStarts: TTaskStartsWhen;
  LTaskCompletes: TTaskCompletesWhen;
  LTaskSkips: TTaskSkipsWhen;
  LMsg: String;
  LWatchFor: array [1..7] of Char;
begin
  LWatchFor := 'NNNNNNN';
  if(ckWatchStart.Checked) then
    LWatchFor[1] := 'Y';
  if(ckWatchComplete.Checked) then
    LWatchFor[2] := 'Y';
  if(ckWatchSkip.Checked) then
    LWatchFor[3] := 'Y';
  if(ckWatchAssignedChange.Checked) then
    LWatchFor[4] := 'Y';
  if(ckWatchDueDateChange.Checked) then
    LWatchFor[5] := 'Y';
  if(ckWatchOverDue.Checked) then
    LWatchFor[6] := 'Y';
  if(ckWatchUndo.Checked) then
    LWatchFor[7] := 'Y';

  dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHFOR.AsString := LWatchFor;

  if cbTaskHeading.Checked then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesSAMEDAY_DUE.AsString := 'Y'
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesSAMEDAY_DUE.AsString := 'N';

  if ckCriticalDate.Checked then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_DATE.AsString := 'Y'
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_DATE.AsString := 'N';

  if ckCriticalAlert.Checked then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_ALERT.AsString := 'Y'
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesCRITICAL_ALERT.AsString := 'N';

  if cbReportable.Checked then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesREPORTABLE.AsString := 'Y'
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesREPORTABLE.AsString := 'N';

  if dbeShowFee.Checked then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesSHOWFEE.AsString := 'Y'
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesSHOWFEE.AsString := 'N';

  LTaskStarts    := GetTaskStartsWhenFromDescription(dbcTaskStartsWhen.Properties.Items[dbcTaskStartsWhen.ItemIndex]);
  LTaskCompletes := GetTaskCompletesWhenFromDescription(dbcTaskCompletesWhen.Properties.Items[dbcTaskCompletesWhen.ItemIndex]);
  LTaskSkips     := GetTaskSkipsWhenFromDescription(dbcTaskSkipsWhen.Properties.Items[dbcTaskSkipsWhen.ItemIndex]);
//  dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHEN.AsString := TTaskStartWhenCode[LTaskStarts];

  dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKDESCRIPTION.AsString := eTaskDescription.Text;
  dmWorkFlowDataModuleTasks.tbTaskTemplatesTASKNOTE.AsString := eTaskNote.Text;

  dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNEDTOTEAM.AsString := lbTeams.Text;

  if dblAssignTo.Text = '' then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.Clear
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.AsString := dblAssignTo.EditValue;

  if dblEmailOverdue.Text = '' then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.Clear
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesEMAILOVERDUE.AsString := dblEmailOverdue.EditValue;

  if dblWatcher.Text = '' then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.Clear
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesWATCHER.AsString := dblWatcher.EditValue;

  if cmbFeeTemplate.Text = '' then
     dmWorkFlowDataModuleTasks.tbTaskTemplatesSCALECOSTCODE.Clear
  else
     dmWorkFlowDataModuleTasks.tbTaskTemplatesSCALECOSTCODE.AsString := cmbFeeTemplate.EditValue;


  if(not dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.IsNull) then
  begin
    if not (LTaskStarts in TTaskStartWhenRelated) then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.Clear();
  end;

  if(not dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHENRELATED.IsNull) then
  begin
    if not (LTaskCompletes in TTaskCompleteWhenRelated) then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHENRELATED.Clear();
  end;

  if(not dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.IsNull) then
  begin
    if not (LTaskSkips in TTaskSkipWhenRelated) then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.Clear();
  end;

  dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHEN.AsString := GetTaskSkipCodeFromDescription(dbcTaskSkipsWhen.Text);
  dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHEN.AsString := GetTaskStartCodeFromDescription(dbcTaskStartsWhen.Text);
  dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHEN.AsString := GetTaskCompleteCodeFromDescription(dbcTaskCompletesWhen.Text);
  dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETO.AsString := GetTaskDueDateLinkToCodeFromDescription(dbcLinkDateTo.Text);

  if(not eDaysFrom.Enabled) then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesDAYSFROM.Clear();

{  if(dblAssignTo.ItemIndex < 0) then
    dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.Clear()
  else }
  dmWorkFlowDataModuleTasks.tbTaskTemplatesASSIGNTO.AsString := dblAssignTo.EditValue;

  LMsg := '';
  // validation yipee..
  if(eTaskDescription.Text = '') or (eTaskDescription.Text = '(Untitled)') then
  begin
    LMsg := 'Please enter the task description.';
    ActiveControl := eTaskDescription;

  end else if(LTaskStarts in TTaskStartWhenRelated) and (dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.IsNull) then
  begin
    LMsg := 'Please select a task to relate to';
    ActiveControl := cbStartRelatedTask;
  end;

  if(LMsg <> '') then
  begin
    ModalResult := mrNone;
    MessageDlg(LMsg, mtWarning, [mbOK], 0);
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.RefreshDocList;

   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      tvDocs.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;
var
  LSL: TStringList;
  NumRecords, I: integer;
begin
  LSL := TStringList.Create();
  try
    dmWorkFlowDataModuleTasks.tbTaskDocLink.First();
    while(not dmWorkFlowDataModuleTasks.tbTaskDocLink.EOF) do
    begin
      LSL.Add(dmWorkFlowDataModuleTasks.tbTaskDocLinkDOCID.AsString);
      dmWorkFlowDataModuleTasks.tbTaskDocLink.Next();
    end;

    dmWorkFlowDataModuleTasks.qTaskDocs.Close();
    if(LSL.Count > 0) then
    begin
      dmWorkFlowDataModuleTasks.qTaskDocs.SQL.Text := dmWorkFlowDataModule.FSavedWFTTaskSQL + ' DOCID IN (' + LSL.CommaText + ')';
      dmWorkFlowDataModuleTasks.qTaskDocs.Open();
         I := 0;
         tvDocs.BeginUpdate;
         if tvDocs.DataController.RecordCount > 0 then
         begin
            for NumRecords := tvDocs.DataController.RecordCount - 1 downto 0 do
               tvDocs.DataController.DeleteRecord(0);
         end;
         while (not dmWorkFlowDataModuleTasks.qTaskDocs.Eof) do
         begin
            with tvDocs do
            begin
               DataController.AppendRecord;
               SetRecordValue(I, tvDocsDOCUMENTNAME.Index, dmWorkFlowDataModuleTasks.qTaskDocsDOCUMENTNAME.AsString);
               SetRecordValue(I, tvDocsID.ID,dmWorkFlowDataModuleTasks.qTaskDocsDOCID.AsInteger);
            end;
            Inc(I);
            dmWorkFlowDataModuleTasks.qTaskDocs.Next;
         end;
         tvDocs.EndUpdate;
    end;
  finally
    FreeAndNil(LSL);
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.cbCompleteRelatedTaskChange(
  Sender: TObject);
begin
  if(cbCompleteRelatedTask.Enabled) then
  begin
    if(cbCompleteRelatedTask.ItemIndex < 0) then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHENRELATED.Clear()
    else
      dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHENRELATED.AsInteger :=
        Integer(cbCompleteRelatedTask.Items.Objects[cbCompleteRelatedTask.ItemIndex]);
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.dbcTaskSkipsWhenChange(
  Sender: TObject);
var
  LSkipsWhen: TTaskSkipsWhen;
begin
  LSkipsWhen := GetTaskSkipsWhenFromDescription(dbcTaskSkipsWhen.Properties.Items[dbcTaskSkipsWhen.ItemIndex]);

  if(LSkipsWhen in TTaskSkipWhenRelated) then
  begin
    cbSkipRelatedTask.Enabled := True;
    cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.AsInteger));
    lSkipRelated.Caption := 'Related Task:';
    lSkipRelated.Enabled := True;
  end else if(LSkipsWhen in TTaskSkipWhenSibling) then
  begin
    cbSkipRelatedTask.Enabled := False;
    if(rbAsChild.Checked) then
      cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedLastLineID))
    else if (rbBelow.Checked) then
      cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedLineID))
    else
      cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedPriorLineID));

    lSkipRelated.Caption := 'Prior Task:';
    lSkipRelated.Enabled := True;
  end else if(LSkipsWhen in TTaskSkipWhenNext) then
  begin
    cbSkipRelatedTask.Enabled := False;
    if (rbBelow.Checked) or (not rbBelow.Enabled) then
      cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedNextLineID))
    else
      cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedLineID));

    lSkipRelated.Caption := 'Next Task:';
    lSkipRelated.Enabled := True;
  end else
  begin
    cbSkipRelatedTask.Enabled := False;
    cbSkipRelatedTask.ItemIndex := -1;
    lSkipRelated.Caption := 'Related Task (N/A):';
    lSkipRelated.Enabled := False;
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.cbSkipRelatedTaskChange(
  Sender: TObject);
begin
  if(cbSkipRelatedTask.Enabled) then
  begin
    if(cbSkipRelatedTask.ItemIndex < 0) then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.Clear()
    else
      dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.AsInteger :=
        Integer(cbSkipRelatedTask.Items.Objects[cbSkipRelatedTask.ItemIndex]);
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.cbLinkDateToRelatedChange(
  Sender: TObject);
begin
  if(cbLinkDateToRelated.Enabled) then
  begin
    if(cbLinkDateToRelated.ItemIndex < 0) then
      dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETORELATED.Clear()
    else
      dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETORELATED.AsInteger :=
        Integer(cbLinkDateToRelated.Items.Objects[cbLinkDateToRelated.ItemIndex]);
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.FormDestroy(Sender: TObject);
begin
     tbTeam.Close();
//  dmWorkFlowDataModuleTasks.qFeeTemplates.Close();
end;

procedure TfmWorkFlowNewTaskItemDialog.dblWatcherChange(Sender: TObject);
begin
  lWatchEventsCaption.Enabled := dblWatcher.ItemIndex > -1;

  ckWatchStart.Enabled          := lWatchEventsCaption.Enabled;
  ckWatchComplete.Enabled       := lWatchEventsCaption.Enabled;
  ckWatchSkip.Enabled           := lWatchEventsCaption.Enabled;
  ckWatchAssignedChange.Enabled := lWatchEventsCaption.Enabled;
  ckWatchDueDateChange.Enabled  := lWatchEventsCaption.Enabled;
  ckWatchOverDue.Enabled        := lWatchEventsCaption.Enabled;
  ckWatchUndo.Enabled           := lWatchEventsCaption.Enabled;
end;

procedure TfmWorkFlowNewTaskItemDialog.tvAssignedFieldsDragDrop(Sender,
  Source: TObject; X, Y: Integer);
   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      tvAssignedFields.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;
var
  AView : TcxGridDBTableView;
  ADropView: TcxGridDBTableView;
  i, ARecIdx, ARowCount: integer;
  ANewSEQ: integer;
begin
   if TcxDragControlObject(Source).Control is TcxGridSite then
   begin
      AView := TcxGridSite(TcxDragControlObject(Source).Control).GridView as TcxGridDBTableView;
      ADropView := tvAssignedFields;
      ARowCount := 0;
      ADropView.BeginUpdate;
      for i := 0 to AView.Controller.SelectedRecordCount - 1 do
      begin
         ARowCount := ADropView.DataController.RecordCount;
//         ADropView.DataController.AppendRecord;

         dmAxiom.qryTmp.SQL.Clear;
         dmAxiom.qryTmp.SQL.Text := 'SELECT nvl(max(seq),0) + 1 FROM WORKFLOW_DATAFORMFIELD '+
	                                 ' where WKFLOW_LINEID = :WKFLOW_LINEID '+
	                                 ' and WORKFLOWTYPECODE = :WORKFLOWTYPECODE';
         dmAxiom.qryTmp.ParamByName('WKFLOW_LINEID').AsInteger := SelectedLineID;
         dmAxiom.qryTmp.ParamByName('WORKFLOWTYPECODE').AsString := WorkFlowType;
         dmAxiom.qryTmp.Open;
         ANewSEQ := dmAxiom.qryTmp.Fields.Fields[0].AsInteger;
         dmAxiom.qryTmp.Close;

         qryAssignedFields.Last;
         qryAssignedFields.Insert;
         ARecIdx := AView.Controller.SelectedRecords[I].RecordIndex;
         begin
//            SetRecordValue(ARowCount, ADropView.Columns[0].Index, AView.DataController.Values[ARecIdx, 0]);
//            SetRecordValue(ARowCount, ADropView.Columns[1].Index, AView.DataController.Values[ARecIdx, 1]);
            qryAssignedFields.FieldByName('caption').AsString := AView.DataController.Values[ARecIdx, 0];
            qryAssignedFields.FieldByName('fieldname').AsString := AView.DataController.Values[ARecIdx, 1];
            qryAssignedFields.FieldByName('dataform').AsString := AView.DataController.Values[ARecIdx, 2]; //SystemString('WKFLOW_DFLT_DATAFORM');
            qryAssignedFields.FieldByName('WORKFLOWTYPECODE').AsString := WorkFlowType;
            qryAssignedFields.FieldByName('WKFLOW_LINEID').AsInteger := SelectedLineID;
            qryAssignedFields.FieldByName('SEQ').AsInteger := ANewSEQ;
         end;
      end;
      qryAssignedFields.Post;
      ADropView.EndUpdate;
   end;
end;

procedure TfmWorkFlowNewTaskItemDialog.tvFieldsAvailableMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin 
   with TcxGridSite(Sender) do
   begin
      if ViewInfo.GetHitTest(X, Y).HitTestCode = htCell then
         BeginDrag(False);
   end;
end;

procedure TfmWorkFlowNewTaskItemDialog.tvAssignedFieldsDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
//   if Sender = Source then
//      Accept := False
//   else
      Accept := True;
end;

procedure TfmWorkFlowNewTaskItemDialog.tvAssignedFieldsEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
   qryDataFields.Refresh;
   qryAssignedFields.Refresh;
//   grdAvailable.FocusedView.DataController.Groups.FullExpand;
   grdAssignedFields.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfmWorkFlowNewTaskItemDialog.tvFieldsAvailableEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
   qryDataFields.Refresh;
//   grdAvailable.FocusedView.DataController.Groups.FullExpand;
   grdAssignedFields.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfmWorkFlowNewTaskItemDialog.tabDataFieldsShow(Sender: TObject);
begin
//   grdAvailable.FocusedView.DataController.Groups.FullExpand;
   grdAssignedFields.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfmWorkFlowNewTaskItemDialog.tvFieldsAvailableDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  AView : TcxGridDBTableView;
  ADropView: TcxGridDBTableView;
  i, ARecIdx, ARowCount: integer;
begin
   if TcxDragControlObject(Source).Control is TcxGridSite then
   begin
      AView := TcxGridSite(TcxDragControlObject(Source).Control).GridView as TcxGridDBTableView;
      ADropView := tvAssignedFields;
      ARowCount := 0;
      ADropView.BeginUpdate;
      for i := 0 to AView.Controller.SelectedRecordCount - 1 do
      begin
         ARowCount := ADropView.DataController.RecordCount;
         ARecIdx := AView.Controller.SelectedRecords[I].RecordIndex;
         begin
            qryDeleteAssignedFields.ParamByName('fieldname').AsString := AView.DataController.Values[ARecIdx, 2];
            qryDeleteAssignedFields.ParamByName('dataform').AsString := AView.DataController.Values[ARecIdx, 3];
            qryDeleteAssignedFields.ParamByName('DOCID').AsInteger := SelectedLineID;  //dmWorkFlowDataModuleDocs.tbDocTemplates.FieldByName('docid').AsInteger;
            qryDeleteAssignedFields.ExecSQL;
         end;
      end;
      ADropView.EndUpdate;
   end;

end;

procedure TfmWorkFlowNewTaskItemDialog.ckCriticalDateClick(
  Sender: TObject);
begin
   gbLinkDueDate.Enabled := ckCriticalDate.Checked;
   if not gbLinkDueDate.Enabled then
   begin
      eLinkDaysFrom.Clear;
      dbcLinkDateTo.Clear;
      cbLinkDateToRelated.Clear;
   end;
end;

procedure TfmWorkFlowNewTaskItemDialog.dblWatcherPropertiesChange(
  Sender: TObject);
begin
   lWatchEventsCaption.Enabled := dblWatcher.ItemIndex > -1;

  ckWatchStart.Enabled          := lWatchEventsCaption.Enabled;
  ckWatchComplete.Enabled       := lWatchEventsCaption.Enabled;
  ckWatchSkip.Enabled           := lWatchEventsCaption.Enabled;
  ckWatchAssignedChange.Enabled := lWatchEventsCaption.Enabled;
  ckWatchDueDateChange.Enabled  := lWatchEventsCaption.Enabled;
  ckWatchOverDue.Enabled        := lWatchEventsCaption.Enabled;
  ckWatchUndo.Enabled           := lWatchEventsCaption.Enabled;
end;

procedure TfmWorkFlowNewTaskItemDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   dmWorkFlowDataModuleTasks.qFeeTemplates.Close();
end;

procedure TfmWorkFlowNewTaskItemDialog.dbcTaskSkipsWhenPropertiesChange(
  Sender: TObject);
var
  LSkipsWhen: TTaskSkipsWhen;
begin
  if dbcTaskSkipsWhen.ItemIndex <> -1 then
  begin
     LSkipsWhen := GetTaskSkipsWhenFromDescription(dbcTaskSkipsWhen.Properties.Items[dbcTaskSkipsWhen.ItemIndex]);

     if(LSkipsWhen in TTaskSkipWhenRelated) then
     begin
       cbSkipRelatedTask.Enabled := True;
       cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(dmWorkFlowDataModuleTasks.tbTaskTemplatesSKIPWHENRELATED.AsInteger));
       lSkipRelated.Caption := 'Related Task:';
       lSkipRelated.Enabled := True;
     end else if(LSkipsWhen in TTaskSkipWhenSibling) then
     begin
       cbSkipRelatedTask.Enabled := False;
       if(rbAsChild.Checked) then
         cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedLastLineID))
       else if (rbBelow.Checked) then
         cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedLineID))
       else
         cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedPriorLineID));

       lSkipRelated.Caption := 'Prior Task:';
       lSkipRelated.Enabled := True;
     end else if(LSkipsWhen in TTaskSkipWhenNext) then
     begin
       cbSkipRelatedTask.Enabled := False;
       if (rbBelow.Checked) or (not rbBelow.Enabled) then
         cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedNextLineID))
       else
         cbSkipRelatedTask.ItemIndex := cbSkipRelatedTask.Items.IndexOfObject(TObject(SelectedLineID));

       lSkipRelated.Caption := 'Next Task:';
       lSkipRelated.Enabled := True;
     end else
     begin
       cbSkipRelatedTask.Enabled := False;
       cbSkipRelatedTask.ItemIndex := -1;
       lSkipRelated.Caption := 'Related Task (N/A):';
       lSkipRelated.Enabled := False;
     end;
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.dbcTaskStartsWhenPropertiesChange(
  Sender: TObject);
var
  LStartsWhen: TTaskStartsWhen;
begin
  if dbcTaskStartsWhen.ItemIndex <> -1 then
  begin
     LStartsWhen := GetTaskStartsWhenFromDescription(dbcTaskStartsWhen.Properties.Items[dbcTaskStartsWhen.ItemIndex]);

     lDaysFrom.Enabled := True;
     eDaysFrom.Enabled := True;

     if (LStartsWhen in TTaskStartWhenDaysOverdue) then
       lDaysFrom.Caption := 'Days Overdue:'
{     else if(LStartsWhen in TTaskStartWhenDaysFromStart) then
       lDaysFrom.Caption := 'Days From Start:'
     else if(LStartsWhen in TTaskStartWhenDaysFromComplete) then
       lDaysFrom.Caption := 'Days From Complete:'}
     else
     begin
       lDaysFrom.Caption := 'Days (N/A):';
       lDaysFrom.Enabled := False;
       eDaysFrom.Enabled := False;
     end;

     if(LStartsWhen in TTaskStartWhenRelated) then
     begin
       cbStartRelatedTask.Enabled := True;
       cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(dmWorkFlowDataModuleTasks.tbTaskTemplatesSTARTWHENRELATED.AsInteger));
       lStartRelated.Caption := 'Related Task:';
       lStartRelated.Enabled := True;
     end else if(LStartsWhen in TTaskStartWhenParent) then
     begin
       cbStartRelatedTask.Enabled := False;
       if(rbAsChild.Checked) then
         cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelectedLineID))
       else
         cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelParentLineID));

       lStartRelated.Caption := 'Parent Task:';
       lStartRelated.Enabled := True;
     end else if(LStartsWhen in TTaskStartWhenSibling) then
     begin
       cbStartRelatedTask.Enabled := False;
       if(rbAsChild.Checked) then
         cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelectedLastLineID))
       else if (rbBelow.Checked) then
         cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelectedLineID))
       else
         cbStartRelatedTask.ItemIndex := cbStartRelatedTask.Items.IndexOfObject(TObject(SelectedPriorLineID));

       lStartRelated.Caption := 'Prior Task:';
       lStartRelated.Enabled := True;
     end else
     begin
       cbStartRelatedTask.Enabled := False;
       cbStartRelatedTask.ItemIndex := -1;
       lStartRelated.Caption := 'Related Task (N/A):';
       lStartRelated.Enabled := False;
     end;
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.dbcTaskCompletesWhenPropertiesChange(
  Sender: TObject);
var
  LCompletesWhen: TTaskCompletesWhen;
begin
  if dbcTaskCompletesWhen.ItemIndex <> -1 then
  begin
     LCompletesWhen := GetTaskCompletesWhenFromDescription(dbcTaskCompletesWhen.Properties.Items[dbcTaskCompletesWhen.ItemIndex]);

     if(LCompletesWhen in TTaskCompleteWhenRelated) then
     begin
       cbCompleteRelatedTask.Enabled := True;
       cbCompleteRelatedTask.ItemIndex := cbCompleteRelatedTask.Items.IndexOfObject(TObject(dmWorkFlowDataModuleTasks.tbTaskTemplatesCOMPLETEWHENRELATED.AsInteger));
       lCompleteRelated.Caption := 'Related Task:';
       lCompleteRelated.Enabled := True;
     end else if(LCompletesWhen in TTaskCompleteWhenSibling) then
     begin
       cbCompleteRelatedTask.Enabled := False;
       if(rbAsChild.Checked) then
         cbCompleteRelatedTask.ItemIndex := cbCompleteRelatedTask.Items.IndexOfObject(TObject(SelectedLastLineID))
       else if (rbBelow.Checked) then
         cbCompleteRelatedTask.ItemIndex := cbCompleteRelatedTask.Items.IndexOfObject(TObject(SelectedLineID))
       else
         cbCompleteRelatedTask.ItemIndex := cbCompleteRelatedTask.Items.IndexOfObject(TObject(SelectedPriorLineID));

       lCompleteRelated.Caption := 'Prior Task:';
       lCompleteRelated.Enabled := True;
     end else if(LCompletesWhen in TTaskCompleteWhenNext) then
     begin
       cbCompleteRelatedTask.Enabled := False;
       if (rbBelow.Checked) or (not rbBelow.Enabled) then
         cbCompleteRelatedTask.ItemIndex := cbCompleteRelatedTask.Items.IndexOfObject(TObject(SelectedNextLineID))
       else
         cbCompleteRelatedTask.ItemIndex := cbCompleteRelatedTask.Items.IndexOfObject(TObject(SelectedLineID));

       lCompleteRelated.Caption := 'Next Task:';
       lCompleteRelated.Enabled := True;
     end else
     begin
       cbCompleteRelatedTask.Enabled := False;
       cbCompleteRelatedTask.ItemIndex := -1;
       lCompleteRelated.Caption := 'Related Task (N/A):';
       lCompleteRelated.Enabled := False;
     end;
  end;
end;

procedure TfmWorkFlowNewTaskItemDialog.dbcLinkDateToPropertiesChange(
  Sender: TObject);
var
  LTaskDueDateLinkTo: TTaskDueDateLinkTo;
begin
  LTaskDueDateLinkTo := GetTaskDueDateLinkToFromDescription(dbcLinkDateTo.Properties.Items[dbcLinkDateTo.ItemIndex]);

  if(LTaskDueDateLinkTo = dltR) then
  begin
    cbLinkDateToRelated.Enabled := True;
    cbLinkDateToRelated.ItemIndex := cbLinkDateToRelated.Items.IndexOfObject(TObject(dmWorkFlowDataModuleTasks.tbTaskTemplatesLINKDATETORELATED.AsInteger));
    lDateLinkRelated.Caption := 'Related Task:';
    lDateLinkRelated.Enabled := True;
  end else if(LTaskDueDateLinkTo = dltS) then
  begin
    cbLinkDateToRelated.Enabled := False;
    if(rbAsChild.Checked) then
      cbLinkDateToRelated.ItemIndex := cbLinkDateToRelated.Items.IndexOfObject(TObject(SelectedLastLineID))
    else if (rbBelow.Checked) then
      cbLinkDateToRelated.ItemIndex := cbLinkDateToRelated.Items.IndexOfObject(TObject(SelectedLineID))
    else
      cbCompleteRelatedTask.ItemIndex := cbLinkDateToRelated.Items.IndexOfObject(TObject(SelectedPriorLineID));

    lDateLinkRelated.Caption := 'Prior Task:';
    lDateLinkRelated.Enabled := True;
  end else if(LTaskDueDateLinkTo = dltN) then
  begin
    cbLinkDateToRelated.Enabled := False;
    if (rbBelow.Checked) or (not rbBelow.Enabled) then
      cbLinkDateToRelated.ItemIndex := cbLinkDateToRelated.Items.IndexOfObject(TObject(SelectedNextLineID))
    else
      cbLinkDateToRelated.ItemIndex := cbLinkDateToRelated.Items.IndexOfObject(TObject(SelectedLineID));

    lDateLinkRelated.Caption := 'Next Task:';
    lDateLinkRelated.Enabled := True;
  end else if(LTaskDueDateLinkTo = dltP) then
  begin
    cbLinkDateToRelated.Enabled := False;
    if(rbAsChild.Checked) then
      cbLinkDateToRelated.ItemIndex := cbLinkDateToRelated.Items.IndexOfObject(TObject(SelectedLineID))
    else
      cbLinkDateToRelated.ItemIndex := cbLinkDateToRelated.Items.IndexOfObject(TObject(SelParentLineID));

    lDateLinkRelated.Caption := 'Parent Task:';
    lDateLinkRelated.Enabled := True;
  end else
  begin
    cbLinkDateToRelated.Enabled := False;
    cbLinkDateToRelated.ItemIndex := -1;
    lDateLinkRelated.Caption := 'Related Task (N/A):';
    lDateLinkRelated.Enabled := False;
  end;

end;

end.
