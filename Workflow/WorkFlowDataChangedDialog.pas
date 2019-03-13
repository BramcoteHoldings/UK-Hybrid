unit WorkFlowDataChangedDialog;
(*
  WorkFlow Data Changed Dialog.

  This dialog shows the data that was changed in a merge and allows
  The user to choose what is re-imported.

  Mathew Winters - June - July 2003
 *)

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, VirtualTrees, WorkFlowDocumentMerge;

type
  TfmWorkFlowDataChangedDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    vtTree: TVirtualStringTree;
    procedure vtTreeCollapsing(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var Allowed: Boolean);
    procedure vtTreeGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure FormShow(Sender: TObject);
    procedure vtTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure vtTreePaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure bnOkClick(Sender: TObject);
  private
    FChangedData: TCollection;
    { Private declarations }
  public
    { Public declarations }
    property ChangedData: TCollection read FChangedData write FChangedData;
  end;

var
  fmWorkFlowDataChangedDialog: TfmWorkFlowDataChangedDialog;


implementation

type
  PTreeData = ^TTreeData;
  TTreeData = record
    CustomFieldInfo: TCustomFieldInfo;
    ViewLabel: String;
    OldValue: String;
    NewValue: String;
  end;

{$R *.dfm}

procedure TfmWorkFlowDataChangedDialog.vtTreeCollapsing(
  Sender: TBaseVirtualTree; Node: PVirtualNode; var Allowed: Boolean);
begin
  Allowed := False;
end;

procedure TfmWorkFlowDataChangedDialog.vtTreeGetNodeDataSize(
  Sender: TBaseVirtualTree; var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TTreeData);
end;

procedure TfmWorkFlowDataChangedDialog.FormShow(Sender: TObject);
var
  i: Integer;
  LCustomFieldInfo: TCustomFieldInfo;
  LSourceNode, LFormNode, LFieldNode: PVirtualNode;
  LSourceData, LFormData, LFieldData: PTreeData;

  // checks to see if matching data row exists, and un-checks it.
  function CheckThere(): boolean;
  var
    LNode: PVirtualNode;
    LData: PTreeData;
  begin
    Result := False;
    LNode := LFieldNode.PrevSibling;
    while(Assigned(LNode)) do
    begin
      LData := vtTree.GetNodeData(LNode);
      if(LData.CustomFieldInfo.FieldName = LFieldData.CustomFieldInfo.FieldName) then
      begin
        Result := True;
        vtTree.CheckState[LNode] := csUncheckedNormal;
      end;
      LNode := LNode.PrevSibling;
    end;
  end;
begin
  if(not Assigned(ChangedData)) then
    Exit;

  LSourceNode := nil;
  LFormNode   := nil;

  LSourceData := nil;
  LFormData   := nil;

  for i := 0 to ChangedData.Count - 1 do
  begin
    LCustomFieldInfo := TCustomFieldInfo(ChangedData.Items[i]);

    if((not Assigned(LSourceNode)) or (LSourceData.ViewLabel <> LCustomFieldInfo.GetSourceString())) then
    begin
      LSourceNode := vtTree.AddChild(nil);
      LSourceData := vtTree.GetNodeData(LSourceNode);

      LSourceData.CustomFieldInfo := LCustomFieldInfo;
      LSourceData.ViewLabel := LCustomFieldInfo.GetSourceString();
      LSourceData.OldValue  := '';
      LSourceData.NewValue  := '';
      LFormNode := nil;
      LFormData := nil;
    end;

    if((not Assigned(LFormNode)) or (LFormData.ViewLabel <> LCustomFieldInfo.FormLabel)) then
    begin
      LFormNode := vtTree.AddChild(LSourceNode);
      LFormData := vtTree.GetNodeData(LFormNode);

      LFormData.CustomFieldInfo := LCustomFieldInfo;
      LFormData.ViewLabel   := LCustomFieldInfo.FormLabel;
      LFormData.OldValue    := '';
      LFormData.NewValue    := '';

    end;

    LFieldNode := vtTree.AddChild(LFormNode);
    LFieldData := vtTree.GetNodeData(LFieldNode);

    LFieldData.CustomFieldInfo := LCustomFieldInfo;
    LFieldData.ViewLabel   := LCustomFieldInfo.FieldLabel;
    LFieldData.OldValue    := LCustomFieldInfo.GetOldString();
    LFieldData.NewValue    := LCustomFieldInfo.GetNewString();

    vtTree.CheckType[LFieldNode] := ctCheckBox;

    // check to see if the field is already listed, if so, dont check..
    if(not CheckThere()) then
      vtTree.CheckState[LFieldNode] := csCheckedNormal;

    vtTree.Expanded[LSourceNode] := True;
    vtTree.Expanded[LFormNode]   := True;

  end;
end;

procedure TfmWorkFlowDataChangedDialog.vtTreeGetText(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType; var CellText: WideString);
var
  LData: PTreeData;
begin
  CellText := '';
  LData := Sender.GetNodeData(Node);
  case Column of
    0: CellText := LData.ViewLabel;
    1: CellText := LData.OldValue;
    2: CellText := LData.NewValue;
  end;
end;

procedure TfmWorkFlowDataChangedDialog.vtTreePaintText(
  Sender: TBaseVirtualTree; const TargetCanvas: TCanvas;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType);
begin
  if(Node.Parent = Sender.RootNode) then
    TargetCanvas.font.Style := [fsBold]
  else if(Node.ChildCount > 0) then
  begin
    TargetCanvas.Font.Style := [fsBold];
    TargetCanvas.Font.Color := clBlue;
  end else if (Column = 0) then
    TargetCanvas.Font.Color := clGreen;

end;

procedure TfmWorkFlowDataChangedDialog.bnOkClick(Sender: TObject);
  procedure RecurseCheck(ANode: PVirtualNode);
  var
    LData: PTreeData;
    LChild: PVirtualNode;
  begin
    if(vtTree.CheckState[ANode] = csCheckedNormal) then
    begin
      LData := vtTree.GetNodeData(ANode);
      LData.CustomFieldInfo.Update();
    end;

    LChild := ANode.FirstChild;
    while Assigned(LChild) do
    begin
      RecurseCheck(LChild);
      LChild := LChild.NextSibling;
    end;
  end;
begin
  // go through each ticked node and save yupee..
  RecurseCheck(vtTree.RootNode.FirstChild);
end;

end.
