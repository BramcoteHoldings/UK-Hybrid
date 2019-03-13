unit ProjectMatter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTreeView,
  VirtualTrees, Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ImgList;

  type
   PTaskData = ^TTaskData;
   TTaskData = record
      Text: WideString;
      isOpened: Boolean;
      ImageIndex: Integer;
      Matter: Integer;
      DocID: integer;
      DocText: WideString;
      DocImageIndex: integer;
      Completed: WideString;
   end;

type
  TfrmProjectMatter = class(TForm)
    tvProjectMatter: TVirtualStringTree;
    qryProjectMatterTasks: TUniQuery;
    ilstDocuments: TImageList;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvProjectMatterGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: string);
    procedure cxButton1Click(Sender: TObject);
    procedure tvProjectMatterGetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
  private
    { Private declarations }
    FMatterClient: String;
    FNMatter: Integer;
    FMatterDesc: String;
    FWorkflowType: String;
    FWorkflowTypeCode: String;

    property MatterClient:     String read FMatterClient     write FMatterClient;
    property MatterDesc:       String read FMatterDesc       write FMatterDesc;
    property WorkflowType:     String read FWorkflowType     write FWorkflowType;
    property WorkflowTypeCode: String read FWorkflowTypeCode write FWorkflowTypeCode;

    procedure SetNMatter(const Value: Integer);
    procedure PopulateList;
    function AddNodeData(AVST: TCustomVirtualStringTree; ANode: PVirtualNode;
                                    ARecord: TTaskData): PVirtualNode;
  public
    { Public declarations }
    property NMatter: Integer   read FNMatter   write SetNMatter;
  end;

var
  frmProjectMatter: TfrmProjectMatter;

implementation

{$R *.dfm}

uses WorkFlowDataModuleRun, WorkFlowDataModule;


procedure TfrmProjectMatter.SetNMatter(const Value: Integer);
begin
   FNMatter := Value;

   dmWorkFlowDataModuleRun.qMatterDetails.ParamByName('nmatter').AsInteger := FNMatter;
   dmWorkFlowDataModuleRun.qMatterDetails.Open();
   try
      MatterDesc       := dmWorkFlowDataModuleRun.qMatterDetailsSHORTDESCR.AsString;
      MatterClient     := dmWorkFlowDataModuleRun.qMatterDetailsCLIENTNAME.AsString;
      WorkflowType     := dmWorkFlowDataModuleRun.qMatterDetailsWORKFLOWTYPE.AsString;
      WorkflowTypeCode := dmWorkFlowDataModuleRun.qMatterDetailsWORKFLOWTYPECODE.AsString;
      Caption := 'Matter Project Tasks - ' + dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter) + ' - ' + MatterClient + ' (' + Trim(WorkflowType) + ')';
   finally
      dmWorkFlowDataModuleRun.qMatterDetails.Close();
   end;
end;

procedure TfrmProjectMatter.tvProjectMatterGetImageIndex(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Kind: TVTImageKind;
  Column: TColumnIndex; var Ghosted: Boolean; var ImageIndex: Integer);
var
  NodeData: PTaskData;
begin
   NodeData := Sender.GetNodeData(Node);
   case Column of
     0: ImageIndex := NodeData^.ImageIndex;
   end;

end;

procedure TfrmProjectMatter.tvProjectMatterGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
   NodeData: PTaskData;
begin
   NodeData := Sender.GetNodeData(Node);
   case Column of
      0:  CellText := NodeData^.Text;
      1:  CellText := NodeData^.Completed;
   end;
end;

procedure TfrmProjectMatter.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmProjectMatter.FormCreate(Sender: TObject);
begin
   if(not Assigned(dmWorkFlowDataModule)) then
      dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
end;

procedure TfrmProjectMatter.FormShow(Sender: TObject);
begin
   PopulateList;
end;

procedure TfrmProjectMatter.PopulateList;
var
   Node: PVirtualNode;
   LTTaskData: TTaskData;
begin
   try
      with qryProjectMatterTasks do
      begin
         tvProjectMatter.Clear;
         Close;
         ParamByName('nmatter').AsInteger := FNMatter;
         Open;
//         VirtualStringTree1.RootNodeCount := dmSaveDoc.qryMatterList.RecordCount;
         // create tree
         tvProjectMatter.NodeDataSize := SizeOf(TTaskData);

         tvProjectMatter.BeginUpdate;
         while not eof do
         begin
            LTTaskData.Text := FieldByName('reason').AsString;
            LTTaskData.Matter := FieldByName('NMatter').AsInteger;
            LTTaskData.Completed := FieldByName('task_completed').AsString;
            LTTaskData.ImageIndex := 6;
            Node := AddNodeData(tvProjectMatter, nil, LTTaskData);
            // add children
            Next;
         end;
      end;
   finally
      tvProjectMatter.EndUpdate;
      qryProjectMatterTasks.Close;
   end;
end;

function TfrmProjectMatter.AddNodeData(AVST: TCustomVirtualStringTree; ANode: PVirtualNode;
                                    ARecord: TTaskData): PVirtualNode;
var
   Data: PTaskData;
begin
   Result := AVST.AddChild(ANode);
   Data := AVST.GetNodeData(Result);
   AVST.ValidateNode(Result, False);
   Data^.Text := ARecord.Text;
   Data^.ImageIndex := Arecord.ImageIndex;
   Data^.Matter := ARecord.Matter;
   Data^.DocID := ARecord.DocID;
   Data^.Completed := ARecord.Completed;
end;

end.
