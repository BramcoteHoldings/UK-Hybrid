unit WorkFlowAdminDocs;
(*
  WorkFlow Admin Docs

  This screen lists admin document templates and launches the merge
  process for the selected templates.

  Mathew Dredge, Oct 9 2002
 *)

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, ImgList, Grids, DBGrids, ActnMan, ToolWin,
  ActnCtrls, ComCtrls,
  WorkFlowDocumentMerge, OracleUniProvider, Uni, DBAccess, MemDS, dxBar, VirtualTrees,
  cxClasses, Vcl.PlatformDefaultStyleActnCtrls, System.Actions, System.ImageList;

type
  TfmWorkFlowAdminDocs = class(TForm)
    ActionManager: TActionManager;
    ImageList: TImageList;
    aClose: TAction;
    aMerge: TAction;
    tvDocs: TTreeView;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    procedure aCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aMergeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aMergeUpdate(Sender: TObject);
    function HandleCreateException: boolean; override;
    procedure tvDocsDblClick(Sender: TObject);
  private
    { Private declarations }
    FMergeType: TMergeDocumentClass;
    FNMatter: Integer;
    procedure CopyDataTable(AMergeDoc: TMergeDocument; ADataFor: TDataFor; AQuery: TUniQuery);
    procedure AddEmployeeData(AMergeDoc: TMergeDocument);
    procedure AddBranchData(AMergeDoc: TMergeDocument);
    procedure AddEntityData(AMergeDoc: TMergeDocument);
  public
    { Public declarations }
    property NMatter:        Integer read FNMatter        write FNMatter;
  end;

var
  fmWorkFlowAdminDocs: TfmWorkFlowAdminDocs;

implementation

uses WorkFlowDataModule, DB, WorkflowMergeDocument, WorkFlowDataModuleDocs,
  WorkFlowDataModuleMerge, miscfunc, WorkFlowDataModuleRun;

{$R *.dfm}

procedure TfmWorkFlowAdminDocs.aCloseExecute(Sender: TObject);
begin
   Self.Close;
   RemoveFromDesktop(Self);
end;

procedure TfmWorkFlowAdminDocs.FormShow(Sender: TObject);
var
  li,lp: TTreeNode;
  LGroup: String;
  LGroupID: Integer;
begin

  if(dmWorkFlowDataModuleDocs.qAdminUsedGroups.Active) then
    dmWorkFlowDataModuleDocs.qAdminUsedGroups.Close();

  dmWorkFlowDataModuleDocs.qAdminUsedGroups.Open();
  tvDocs.Items.BeginUpdate();
  try
    tvDocs.Items.Clear();
    while(not dmWorkFlowDataModuleDocs.qAdminUsedGroups.Eof) do
    begin
      LGroupID := dmWorkFlowDataModuleDocs.qAdminUsedGroups.FieldByName('GROUPID').AsInteger;
      LGroup   := dmWorkFlowDataModuleDocs.qAdminUsedGroups.FieldByName('NAME').AsString;
      lp := tvDocs.Items.AddChild(nil,LGroup);
      lp.ImageIndex := 7;
      lp.SelectedIndex := lp.ImageIndex;
      lp.Data := Pointer(LGroupID);

      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.ParamByName('groupid').AsInteger := LGroupID;
      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Open();
      while(not dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Eof) do
      begin
        li := tvDocs.Items.AddChild(lp,dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DOCUMENTNAME').AsString);
        li.Data       := Pointer(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DOCID').AsInteger);
        li.ImageIndex := 6;
        li.SelectedIndex := li.ImageIndex;
        dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Next();
      end;
      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Close();
      dmWorkFlowDataModuleDocs.qAdminUsedGroups.Next();
    end;
    dmWorkFlowDataModuleDocs.qAdminUsedGroups.Close();
  finally
    tvDocs.Items.EndUpdate();
  end;
end;

procedure TfmWorkFlowAdminDocs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Close();
  Action := caFree;
  fmWorkFlowAdminDocs := nil;
end;

procedure TfmWorkFlowAdminDocs.aMergeExecute(Sender: TObject);
var
  LDocuments: TCollection;
  LMergeDoc: TMergeDocument;
  LDocID, i: Integer;
  DummyNode: PVirtualNode;
  LPartyNName: array of integer;
begin
  LDocuments := TCollection.Create(TMergeDocument);
  try
    if(Assigned(tvDocs.Selected)) then
    begin
      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Close();
      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.ParamByName('groupid').AsInteger := Integer(tvDocs.Selected.Parent.Data);
      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Open();


      LDocID := Integer(tvDocs.Selected.Data);
      if(not dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Locate('docid',LDocID,[])) then
        MessageDlg('For some reason the document template ''' + tvDocs.Selected.Text + ''' can no-longer be '#13#10'located in the database.', mtError, [mbOK], 0)
      else
      begin
        FMergeType :=  GetWorkFlowMergeTypeClass(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('TEMPLATETYPE').AsString);

        LMergeDoc := FMergeType.Create(LDocuments);
        LMergeDoc.ParentForm   := Self;
        LMergeDoc.TemplateName := dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DOCUMENTNAME').AsString;
        LMergeDoc.TemplatePath := ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('TEMPLATEPATH').AsString, 0);
        LMergeDoc.DataFilePath := ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DATAFILEPATH').AsString, 0);
        LMergeDoc.DocumentPath := ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DOCUMENTPATH').AsString, 0);
        LMergeDoc.DataForm     := ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DATAFORM').AsString, 0);
        AddBranchData(LMergeDoc);
        AddEntityData(LMergeDoc);

        if(moNeedsData in LMergeDoc.Options) then
        begin
          AddEmployeeData(LMergeDoc);
          LMergeDoc.NMatter := NMatter;
          // this is really a place holder cos admin documents need no data as far as we know..
          LMergeDoc.AddColumn(dfOther, 'DocumentName',ftString,1000);
          LMergeDoc.AddRow(dfOther);
          LMergeDoc.AddValue(dfOther,'DocumentName',LMergeDoc.TemplateName);
          LMergeDoc.PostRow(dfOther);
        end;
      end;
    end;

    // for each document, merge and check result to see what
    // to do next.. cancel will stop without going to any
    // more documents.
    for i := 0 to LDocuments.Count - 1 do
    begin
      LMergeDoc := TMergeDocument(LDocuments.Items[i]);
      LMergeDoc.DocumentID := LDocID;
      ModalResult := LMergeDoc.DoMerge(0, DummyNode, LMergeDoc, LPartyNName);
      case ModalResult of
        mrOk:;    // do nothing, all oky dokie..
        mrNo:     Exit; // pressed cancel
        mrCancel: Exit; // error of some type..
      else
        Exit; // dunno so just exit.
      end;
    end;
  finally
    FreeAndNil(LDocuments);
  end;
end;

procedure TfmWorkFlowAdminDocs.FormCreate(Sender: TObject);
begin
  FMergeType := GetWorkFlowMergeTypeClass('');
  if(not Assigned(FMergeType)) then
    raise Exception.Create('No Merge Type has been selected for use.'#13#10'Please use the Options on the Workflow Document Templates screen to select one.');
  if(not Assigned(dmWorkFlowDataModule)) then
    dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
  fmWorkFlowAdminDocs := Self; // ensure pointer set..
  tvDocs.Items.Clear();
end;

procedure TfmWorkFlowAdminDocs.aMergeUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(tvDocs.Selected) and
    Assigned(tvDocs.Selected.Parent);
end;

procedure TfmWorkFlowAdminDocs.AddEmployeeData(AMergeDoc: TMergeDocument);
begin
   dmWorkFlowDataModuleMerge.qExportEmployees.ParamByName('nmatter').AsInteger := -1;
//  dmWorkFlowDataModuleMerge.qExportEmployees.ParamByName('employee').AsString := dmWorkflowDataModule.UserID;
   CopyDataTable(AMergeDoc, dfEmployee,dmWorkFlowDataModuleMerge.qExportEmployees);
end;

procedure TfmWorkFlowAdminDocs.CopyDataTable(AMergeDoc: TMergeDocument; ADataFor: TDataFor; AQuery: TUniQuery);
var
  i: Integer;
  LFieldDef: TFieldDef;
begin
  AQuery.Open();
  try
    AMergeDoc.CopyFieldDefs(ADataFor,AQuery.FieldDefs, AQuery);

    AQuery.First();
    // only one row..
    while(not AQuery.Eof) do
    begin
      AMergeDoc.AddRow(ADataFor);
      for i := 0 to AQuery.FieldDefs.Count - 1 do
      begin
        LFieldDef := AQuery.FieldDefs[i];
        if(not AQuery.Fields[i].IsNull) then
          AMergeDoc.AddValue(ADataFor,LFieldDef.Name, AQuery.Fields[i].Value);
      end;
      AMergeDoc.PostRow(ADataFor);
      AQuery.Next();
    end;
  finally
    AQuery.Close();
  end;
end;

function TfmWorkFlowAdminDocs.HandleCreateException: boolean;
begin
  Result := False;
end;

procedure TfmWorkFlowAdminDocs.AddBranchData(AMergeDoc: TMergeDocument);
begin
  dmWorkFlowDataModuleMerge.qExportBranchUser.ParamByName('employee').AsString := dmWorkFlowDataModule.UserID;
  CopyDataTable(AMergeDoc, dfUserBranch,dmWorkFlowDataModuleMerge.qExportBranchUser);
end;

procedure TfmWorkFlowAdminDocs.tvDocsDblClick(Sender: TObject);
begin
  aMerge.Execute();
end;

procedure TfmWorkFlowAdminDocs.AddEntityData(AMergeDoc: TMergeDocument);
begin
  dmWorkFlowDataModuleMerge.qExportEntity.ParamByName('entity').AsString := dmWorkFlowDataModule.Entity;
  CopyDataTable(AMergeDoc, dfEntity,dmWorkFlowDataModuleMerge.qExportEntity);
end;

end.

