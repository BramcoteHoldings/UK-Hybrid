unit WorkFlowGenDocuments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VirtualTrees, ImgList, ActnList, ActnMan, ActnCtrls,
  dxBar, XPStyleActnCtrls, cxClasses, System.Actions, axiomdata;

//const
//   AXM_POPULATE = WM_APP + 400;

type
  TfmWorkFlowGenDocuments = class(TForm)
    vtDocs: TVirtualStringTree;
    ImageList: TImageList;
    ActionManager: TActionManager;
    ImageListActions: TImageList;
    aOpen: TAction;
    aMerge: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vtDocsGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vtDocsInitChildren(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var ChildCount: Cardinal);
    procedure vtDocsPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure vtDocsGetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aOpenUpdate(Sender: TObject);
    procedure aOpenExecute(Sender: TObject);
    procedure aMergeUpdate(Sender: TObject);
    procedure aMergeExecute(Sender: TObject);
    procedure vtDocsDblClick(Sender: TObject);
    procedure vtDocsGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
  protected
    procedure PopulateList(var Message: TMessage); message AXM_POPULATE;
  private
    FNMatter: Integer;
    FDocImageIndexes: TStringList;
    FAttached: boolean;
    procedure SetNMatter(const Value: Integer);
    { Private declarations }
    procedure ShowTree();
    procedure GetFileIcon(AName: String);
  public
    { Public declarations }
    property NMatter: Integer read FNMatter write SetNMatter;
    property Attached: boolean read FAttached write FAttached;
  end;

var
  fmWorkFlowGenDocuments: TfmWorkFlowGenDocuments;

implementation

uses WorkFlowDataModule,ShellAPI, CommCtrl, PhoneBook, WorkFlowMatterTasks;

{$R *.dfm}

{ TfmWorkFlowGenDocuments }

type
  TRowType = (rtHeader, rtTask, rtDocFileName, rtDataFileName, rtTemplateFileName, rtWho, rtParties, rtParty);
var
  TRowTypeLabel: array[TRowType] of String = ('','Task','Merged Document','Data File Name','Template File Name','Author','Parties','');
type
  TTreeData = record
    RowType: TRowType;
    DocumentID: Integer;
    ViewLabel: String;
    ViewValue: String;
    OtherID: Integer;
  end;

  PTreeData = ^TTreeData;

procedure TfmWorkFlowGenDocuments.PopulateList(var Message: TMessage);
begin
   ShowTree();
   inherited;
end;

procedure TfmWorkFlowGenDocuments.SetNMatter(const Value: Integer);
begin
  if(FNMatter <> Value) then
  begin
    FNMatter := Value;
    ShowTree();
  end;
end;

procedure TfmWorkFlowGenDocuments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if(not FAttached) then
  begin
    Action := caFree;
    fmWorkFlowGenDocuments := nil;
  end;
end;

procedure TfmWorkFlowGenDocuments.vtDocsGetNodeDataSize(
  Sender: TBaseVirtualTree; var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TTreeData);
end;

procedure TfmWorkFlowGenDocuments.vtDocsGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PTreeData;
begin
  LData := Sender.GetNodeData(Node);
  case Column of
    0: CellText := LData.ViewLabel;
    1: CellText := LData.ViewValue;
  end;
end;

procedure TfmWorkFlowGenDocuments.ShowTree();
var
  LNode, LNodeParent: PVirtualNode;
  LData, LDataParent: PTreeData;
begin
  // load first level.
  vtDocs.BeginUpdate();
  try
    vtDocs.Clear();

    dmWorkFlowDataModule.qGenDocuments.Close();
    dmWorkFlowDataModule.qGenDocuments.ParamByName('nmatter').AsInteger := NMatter;
    dmWorkFlowDataModule.qGenDocuments.Open();
    try
      while(not dmWorkFlowDataModule.qGenDocuments.Eof) do
      begin
        LNodeParent := vtDocs.AddChild(nil);
        LDataParent := vtDocs.GetNodeData(LNodeParent);

        LDataParent.RowType    := rtHeader;
        LDataParent.ViewLabel  := dmWorkFlowDataModule.qGenDocumentsWHENGENERATED.AsString;
        LDataParent.ViewValue  := dmWorkFlowDataModule.qGenDocumentsDOCUMENTNAME.AsString;
        LDataParent.DocumentID := dmWorkFlowDataModule.qGenDocumentsWORKFLOWGENDOCUMENT.AsInteger;

        LNode := vtDocs.AddChild(LNodeParent);
        LData := vtDocs.GetNodeData(LNode);

        LData.RowType    := rtDocFileName;
        LData.ViewLabel  := TRowTypeLabel[LData.RowType];
        LData.ViewValue  := dmWorkFlowDataModule.qGenDocumentsFILEPATH.AsString;
        LData.DocumentID := LDataParent.DocumentID;
        GetFileIcon(LData.ViewValue);

        LNode := vtDocs.AddChild(LNodeParent);
        LData := vtDocs.GetNodeData(LNode);

        LData.RowType    := rtDataFileName;
        LData.ViewLabel  := TRowTypeLabel[LData.RowType];
        LData.ViewValue  := dmWorkFlowDataModule.qGenDocumentsDATAFILEPATH.AsString;
        LData.DocumentID := LDataParent.DocumentID;
        GetFileIcon(LData.ViewValue);

        LNode := vtDocs.AddChild(LNodeParent);
        LData := vtDocs.GetNodeData(LNode);

        LData.RowType    := rtTemplateFileName;
        LData.ViewLabel  := TRowTypeLabel[LData.RowType] ;
        LData.ViewValue  := dmWorkFlowDataModule.qGenDocumentsTEMPLATEPATH.AsString;
        LData.DocumentID := LDataParent.DocumentID;
        GetFileIcon(LData.ViewValue);

        LNode := vtDocs.AddChild(LNodeParent);
        LData := vtDocs.GetNodeData(LNode);

        LData.RowType    := rtTask;
        LData.ViewLabel  := TRowTypeLabel[LData.RowType] ;
        if(dmWorkFlowDataModule.qGenDocumentsTASKSEQUENCE.IsNull) then
          LData.ViewValue := 'No Task - Generic Document'
        else
          LData.ViewValue  := dmWorkFlowDataModule.qGenDocumentsTASKSEQUENCE.AsString + ' - ' + dmWorkFlowDataModule.qGenDocumentsTASKDESCRIPTION.AsString;
        LData.DocumentID := LDataParent.DocumentID;
        LData.OtherID    := dmWorkFlowDataModule.qGenDocumentsTEMPLATELINEID.AsInteger;

        LNode := vtDocs.AddChild(LNodeParent);
        LData := vtDocs.GetNodeData(LNode);

        LData.RowType    := rtWho;
        LData.ViewLabel  := TRowTypeLabel[LData.RowType] ;
        LData.ViewValue  := dmWorkFlowDataModule.qGenDocumentsEMPLOYEENAME.AsString;
        LData.DocumentID := LDataParent.DocumentID;

        if(dmWorkFlowDataModule.qGenDocumentsPARTYTYPECOUNT.AsInteger > 0) then
        begin
          LNode := vtDocs.AddChild(LNodeParent);
          LData := vtDocs.GetNodeData(LNode);

          LData.RowType    := rtParties;
          LData.ViewLabel  := TRowTypeLabel[LData.RowType] ;
          LData.ViewValue  := dmWorkFlowDataModule.qGenDocumentsPARTYTYPECOUNT.AsString + ' Parties';
          LData.DocumentID := LDataParent.DocumentID;
          LNode.States := LNode.States + [vsHasChildren];
        end;

        dmWorkFlowDataModule.qGenDocuments.Next();
      end;
    finally
      dmWorkFlowDataModule.qGenDocuments.Close();
    end;

  finally
    vtDocs.EndUpdate();
  end;
end;

procedure TfmWorkFlowGenDocuments.vtDocsInitChildren(
  Sender: TBaseVirtualTree; Node: PVirtualNode; var ChildCount: Cardinal);
var
  LData, LChildData: PTreeData;
  LChildNode: PVirtualNode;

begin
  LData := Sender.GetNodeData(Node);
  dmWorkFlowDataModule.qGenDocParties.Close();
  dmWorkFlowDataModule.qGenDocParties.ParamByName('workflowgendocument').AsInteger := LData.DocumentID;
  dmWorkFlowDataModule.qGenDocParties.Open();
  ChildCount := 0;
  try
    while(not dmWorkFlowDataModule.qGenDocParties.Eof) do
    begin
      ChildCount := ChildCount + 1;
      LChildNode := Sender.AddChild(Node);
      LChildData := Sender.GetNodeData(LChildNode);

      LChildData.RowType := rtParty;
      LChildData.ViewLabel := dmWorkFlowDataModule.qGenDocPartiesPARTYTYPE.AsString;
      LChildData.ViewValue := dmWorkFlowDataModule.qGenDocPartiesSEARCH.AsString;
      LChildData.OtherID   := dmWorkFlowDataModule.qGenDocPartiesNNAME.AsInteger;

      dmWorkFlowDataModule.qGenDocParties.Next();
    end;
  finally
    dmWorkFlowDataModule.qGenDocParties.Close();
  end;

end;

procedure TfmWorkFlowGenDocuments.vtDocsPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
begin
  if(vsHasChildren in Node.States) then
    TargetCanvas.Font.Style := [fsBold];

  if(Column = 1) or (Node.Parent = Sender.RootNode) then
//    TargetCanvas.Font.Color := clBlue;
end;

procedure TfmWorkFlowGenDocuments.vtDocsGetImageIndex(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Kind: TVTImageKind;
  Column: TColumnIndex; var Ghosted: Boolean; var ImageIndex: Integer);
var
  LData: PTreeData;
begin
  LData := Sender.GetNodeData(Node);
  if(Column = 1) then
  begin
    case LData.RowType of
      rtParty: ImageIndex := 0;
      rtDocFileName,
      rtDataFileName,
      rtTemplateFileName: ImageIndex := FDocImageIndexes.IndexOf(ExtractFileExt(LData.ViewValue));
      rtWho: ImageIndex := 1;
    end;
  end;
end;


// gets from the system image list the icon for the file type
// and adds it to the image list.
procedure TfmWorkFlowGenDocuments.GetFileIcon(AName: String);
var
  LExt: String;
  LSHFI: SHFILEINFO;
  LIcon: TIcon;
begin
  LExt := ExtractFileExt(AName);
  if(LExt <> '') then
  begin
    if(FDocImageIndexes.IndexOf(LExt) = -1) then
    begin
      SHGetFileInfo(PChar(AName),0,LSHFI,SizeOf(LSHFI),SHGFI_SYSICONINDEX or SHGFI_ICON or SHGFI_SMALLICON);
      if(LSHFI.hIcon > 0) then
      begin
        LIcon := TIcon.Create();
        try
          LIcon.Handle := LSHFI.hIcon;
          ImageList.AddIcon(LIcon);
          FDocImageIndexes.Add(LExt);
        finally
          LIcon.Free();
        end;
      end;
    end;
  end;
end;

procedure TfmWorkFlowGenDocuments.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FDocImageIndexes);
end;

procedure TfmWorkFlowGenDocuments.FormCreate(Sender: TObject);
begin
  if(not Assigned(dmWorkFlowDataModule)) then
    dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
  FDocImageIndexes := TStringList.Create();
  FDocImageIndexes.Add('Person');
  FDocImageIndexes.Add('Employee');
  ConvertToHighColor(ImageList);
  ConvertToHighColor(ImageListActions);
end;

procedure TfmWorkFlowGenDocuments.aOpenUpdate(Sender: TObject);
var
  LData: PTreeData;
begin
  if(Assigned(vtDocs.FocusedNode)) then
  begin
    LData := vtDocs.GetNodeData(vtDocs.FocusedNode);
    TAction(Sender).Enabled := (LData.RowType in [rtTask, rtDocFileName, rtDataFileName, rtTemplateFileName, rtParty]) and
      (LData.ViewValue <> '');
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowGenDocuments.aOpenExecute(Sender: TObject);
var
  LData: PTreeData;
  LfrmPhonebook: TfrmPhonebook;
  LMT: TfmWorkflowMatterTasks;
begin
  LData := vtDocs.GetNodeData(vtDocs.FocusedNode);
  case LData.RowType of
    rtDocFileName,
    rtDataFileName,
    rtTemplateFileName: ShellExecute(Handle,'open',PChar(LData.ViewValue),nil,nil,SW_SHOWNORMAL);
    rtParty:
      begin
        LfrmPhonebook := TfrmPhonebook.Create(Self);
        LfrmPhonebook.Search := LData.ViewValue;
        LfrmPhonebook.ShowMatterSpecific := True;
        LfrmPhonebook.LimitToNMatter := NMatter;
        LfrmPhonebook.Show();
      end;
    rtTask:
      begin
        LMT := FindWorkFlowTasksWindow(NMatter);

        if(not Assigned(LMT)) then
        begin
          LMT                  := TfmWorkflowMatterTasks.Create(Application);
          LMT.NMatter          := NMatter;
        end;
        LMT.Show();
        LMT.SetViewDate(Date());
        LMT.JumpTaskTemplate(LData.OtherID);
      end;
  end;
end;

procedure TfmWorkFlowGenDocuments.aMergeUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowGenDocuments.aMergeExecute(Sender: TObject);
begin
  //
end;

procedure TfmWorkFlowGenDocuments.vtDocsDblClick(Sender: TObject);
begin
  if(aOpen.Enabled) then
    aOpen.Execute();
end;

end.
