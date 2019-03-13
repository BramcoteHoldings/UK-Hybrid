unit WorkFlowDataForms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VirtualTrees, ExtCtrls, ToolWin, ActnMan, ActnCtrls,
  CustomActionToolbar, ImgList, ActnList, DB, MemDS, DBAccess, Ora,
  StdCtrls, WorkFlowEditFieldTypeDialog, ActiveX, Menus, dxBar, cxControls,
  cxSplitter;

type
  TDataFieldColumns = (dfcName = 0, dfcCaption = 1, dfcDescription = 2, dfcType = 3, dfcFormat = 4);

const
  C_SETTINGOWNER = 'WKFDATAFORMS';
type
  TfmWorkFlowDataForms = class(TForm)
    ActionManager: TActionManager;
    ImageList: TImageList;
    pTop: TPanel;
    pBottom: TPanel;
    vtDataForms: TVirtualStringTree;
    vtFieldTypes: TVirtualStringTree;
    qFieldTypes: TOraQuery;
    qFieldTypesNAME: TStringField;
    qFieldTypesCAPTION: TStringField;
    qFieldTypesDESCR: TStringField;
    qFieldTypesTYPE: TStringField;
    qFieldTypesFORMAT: TStringField;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    Bevel3: TBevel;
    aFieldTypeAdd: TAction;
    aFieldTypeEdit: TAction;
    aFieldTypeDelete: TAction;
    qUpdateFieldTypes: TOraQuery;
    qInsertFieldType: TOraQuery;
    qDeleteFieldType: TOraQuery;
    qDataForms: TOraQuery;
    qDataFormsCODE: TStringField;
    qDataFormsCAPTION: TStringField;
    qDataFormsDESCR: TStringField;
    qDataFormsPARTY: TStringField;
    qDataFormsPARTYISMATTERSPECIFIC: TStringField;
    qDataFormsWORKFLOWTYPECODE: TStringField;
    qDataFormsWORKFLOWTYPE: TStringField;
    qDataFormFields: TOraQuery;
    qDataFormFieldsDATAFORM: TStringField;
    qDataFormFieldsFIELDNAME: TStringField;
    qDataFormFieldsSEQ: TIntegerField;
    qDataFormFieldsCAPTION: TStringField;
    qDataFormFieldsDESCR: TStringField;
    qDataFormFieldsFIELDTYPE: TStringField;
    qDataFormFieldsFORMAT: TStringField;
    aDataFormAdd: TAction;
    aDataFormEdit: TAction;
    aDataFormDelete: TAction;
    aDataFormPost: TAction;
    aDataFormCancel: TAction;
    qAddDataForm: TOraQuery;
    qUpdateDataForm: TOraQuery;
    qDeleteDataForm: TOraQuery;
    qDeleteAllDataFormFields: TOraQuery;
    qAddDataFormField: TOraQuery;
    qUpdateDataFormField: TOraQuery;
    qDeleteDataFormField: TOraQuery;
    pmDataForms: TPopupMenu;
    pmFieldTypes: TPopupMenu;
    miFieldTypeAdd: TMenuItem;
    miFieldTypeDelete: TMenuItem;
    miFieldTypeEdit: TMenuItem;
    miDataFormAdd: TMenuItem;
    miDataFormEdit: TMenuItem;
    miDataFormDelete: TMenuItem;
    N1: TMenuItem;
    miDataFormPost: TMenuItem;
    miDataFormCancel: TMenuItem;
    aDataFormFieldDelete: TAction;
    N2: TMenuItem;
    miDataFormDeleteField: TMenuItem;
    aDataFormMoveFieldDown: TAction;
    aDataFormMoveFieldUp: TAction;
    miDataFormMoveFieldUp: TMenuItem;
    miDataFormMoveFieldDown: TMenuItem;
    N3: TMenuItem;
    aTranslate: TAction;
    actExit: TAction;
    dxBarManager1: TdxBarManager;
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
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxSplitter1: TcxSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vtFieldTypesGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vtFieldTypesGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure FormShow(Sender: TObject);
    procedure aFieldTypeAddUpdate(Sender: TObject);
    procedure aFieldTypeAddExecute(Sender: TObject);
    procedure aFieldTypeEditUpdate(Sender: TObject);
    procedure aFieldTypeEditExecute(Sender: TObject);
    procedure aFieldTypeDeleteUpdate(Sender: TObject);
    procedure aFieldTypeDeleteExecute(Sender: TObject);
    procedure vtFieldTypesCompareNodes(Sender: TBaseVirtualTree; Node1,
      Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
    procedure FormCreate(Sender: TObject);
    procedure vtDataFormsGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vtDataFormsGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure vtDataFormsPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure aDataFormAddUpdate(Sender: TObject);
    procedure aDataFormAddExecute(Sender: TObject);
    procedure aDataFormEditUpdate(Sender: TObject);
    procedure aDataFormEditExecute(Sender: TObject);
    procedure aDataFormDeleteUpdate(Sender: TObject);
    procedure aDataFormDeleteExecute(Sender: TObject);
    procedure DataFormPostCancelUpdate(Sender: TObject);
    procedure aDataFormCancelExecute(Sender: TObject);
    procedure vtFieldTypesDragAllowed(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure vtFieldTypesDragOver(Sender: TBaseVirtualTree;
      Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint;
      Mode: TDropMode; var Effect: Integer; var Accept: Boolean);
    procedure vtDataFormsDragAllowed(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure vtDataFormsDragOver(Sender: TBaseVirtualTree;
      Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint;
      Mode: TDropMode; var Effect: Integer; var Accept: Boolean);
    procedure vtDataFormsDragDrop(Sender: TBaseVirtualTree;
      Source: TObject; DataObject: IDataObject; Formats: TFormatArray;
      Shift: TShiftState; Pt: TPoint; var Effect: Integer;
      Mode: TDropMode);
    procedure vtDataFormsExpanded(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure aDataFormPostExecute(Sender: TObject);
    procedure aDataFormFieldDeleteUpdate(Sender: TObject);
    procedure aDataFormFieldDeleteExecute(Sender: TObject);
    procedure aDataFormMoveFieldUpUpdate(Sender: TObject);
    procedure aDataFormMoveFieldUpExecute(Sender: TObject);
    procedure aDataFormMoveFieldDownExecute(Sender: TObject);
    procedure aDataFormMoveFieldDownUpdate(Sender: TObject);
    procedure aTranslateExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
  private
    FDataFormsModified: Boolean;
  private
    { Private declarations }
    procedure LoadDataFieldTypes();
    procedure LoadDataForms();
    procedure ReSizeDataFormColumns();
    function GetDataFieldTypeFromCode(ACode: String): TDataFieldType;
    procedure GetListFieldNames(AStrings: TStringList);
    procedure GetListFormNames(AStrings: TStringList);
    procedure ReSeqFields(AParent: PVirtualNode);

    property DataFormsModified: Boolean read FDataFormsModified write FDataFormsModified default False;
  public
    { Public declarations }
  end;

var
  fmWorkFlowDataForms: TfmWorkFlowDataForms;

implementation

uses AxiomData, MiscFunc, WorkFlowEditDataFormDialog,
  WorkFlowFieldTranslate, WorkFlowDocumentMerge;


{$R *.dfm}

type
  PFieldType = ^TFieldType;
  TFieldType = record
    Name,
    Caption,
    Descr,
    Format: String;
    FieldType: TDataFieldType;
    Seq: Integer; // for data forms.
  end;

  TDataFormRowType = (dfrForm, dfrFields, dfrField);
  TDataFormStatus = (dfsDefault,dfsEdited,dfsNew, dfsDeleted);

  PDataForm = ^TDataForm;
  TDataForm = record
    RowType: TDataFormRowType;
    OriginalCode,
    Code,
    Caption,
    Descr,
    WorkFlowTypeCode,
    WorkFlowType,
    PartyType: String;
    PartyIsMatterSpecific: Boolean;
    Field: TFieldType;
    Status: TDataFormStatus;
  end;


procedure TfmWorkFlowDataForms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave(C_SETTINGOWNER,'WINDOWSTATE', Integer(WindowState));
  if(WindowState <> wsMaximized) then
  begin
    SettingSave(C_SETTINGOWNER,'LEFT', Left);
    SettingSave(C_SETTINGOWNER,'WIDTH', Width);
    SettingSave(C_SETTINGOWNER,'TOP', Top);
    SettingSave(C_SETTINGOWNER,'HEIGHT', Height);
  end;

  SettingSave(C_SETTINGOWNER,'SPLITPOS',pBottom.Height);

  Action := caFree;
  fmWorkFlowDataForms := nil;
end;

function TfmWorkFlowDataForms.GetDataFieldTypeFromCode(ACode: String): TDataFieldType;
begin
  for Result := Low(TDataFieldTypeCode) to High(TDataFieldTypeCode) do
  begin
    if(TDataFieldTypeCode[Result] = ACode) then
      Break;
  end;
end;

procedure TfmWorkFlowDataForms.LoadDataFieldTypes;
var
  LNode: PVirtualNode;
  LData: PFieldType;
  i: Integer;
  LColumn: TVirtualTreeColumn;
  LWidth: Integer;
  LFont: TFont;
begin
  vtFieldTypes.BeginUpdate();
  try
    vtFieldTypes.Clear();
    qFieldTypes.Open();
    try
      qFieldTypes.First();
      while(not qFieldTypes.Eof) do
      begin
        LNode := vtFieldTypes.AddChild(nil);
        LData := vtFieldTypes.GetNodeData(LNode);

        LData.Name      := qFieldTypesNAME.AsString;
        LData.Caption   := qFieldTypesCAPTION.AsString;
        LData.Descr     := qFieldTypesDESCR.AsString;
        LData.Format    := qFieldTypesFORMAT.AsString;
        LData.FieldType := GetDataFieldTypeFromCode(qFieldTypesTYPE.AsString);


        qFieldTypes.Next();
      end;
    finally
      qFieldTypes.Close();
    end;

    // resize columns
    if(vtFieldTypes.RootNode.ChildCount > 0) then
    begin
//      vtFieldTypes.Header.AutoFitColumns();

      LFont := Canvas.Font;
      try
        Canvas.Font := vtFieldTypes.Header.Font;
        for i := 0 to vtFieldTypes.Header.Columns.Count - 1 do
        begin
          LColumn := vtFieldTypes.Header.Columns[i];
          LWidth  := Canvas.TextWidth(LColumn.Text) + 20;
          if(LWidth > LColumn.Width) then
            LColumn.Width := LWidth;
        end;
      finally
        Canvas.Font := LFont;
      end;
    end;

  finally
    vtFieldTypes.EndUpdate();
  end;
end;

procedure TfmWorkFlowDataForms.vtFieldTypesGetNodeDataSize(
  Sender: TBaseVirtualTree; var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TFieldType);
end;

procedure TfmWorkFlowDataForms.vtFieldTypesGetText(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType; var CellText: WideString);
var
  LData: PFieldType;
begin
  CellText := '';
  LData := Sender.GetNodeData(Node);

  case TDataFieldColumns(Column) of
    dfcName:         CellText := LData.Name;
    dfcCaption:      CellText := LData.Caption;
    dfcDescription:  CellText := LData.Descr;
    dfcType:         CellText := TDataFieldTypeCaption[LData.FieldType];
    dfcFormat:       CellText := LData.Format;
  end;
end;

procedure TfmWorkFlowDataForms.FormShow(Sender: TObject);
begin
  LoadDataFieldTypes();
  LoadDataForms();
end;

procedure TfmWorkFlowDataForms.aFieldTypeAddUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := True;
end;

procedure TfmWorkFlowDataForms.aFieldTypeAddExecute(Sender: TObject);
var
  LNode: PVirtualNode;
  LData: PFieldType;
  LNames: TStringList;
begin
  LNames := TStringList.Create();
  fmWorkFlowEditFieldType := TfmWorkFlowEditFieldType.Create(Self);
  vtFieldTypes.BeginUpdate();
  try
    GetListFieldNames(LNames);

    fmWorkFlowEditFieldType.FieldNames       := LNames;
    fmWorkFlowEditFieldType.FieldName        := '';
    fmWorkFlowEditFieldType.FieldCaption     := '';
    fmWorkFlowEditFieldType.FieldDescription := '';
    fmWorkFlowEditFieldType.FieldType        := dftText;
    fmWorkFlowEditFieldType.FieldFormat      := '';

    if(fmWorkFlowEditFieldType.ShowModal() = mrOk) then
    begin
      // update database.
      qInsertFieldType.ParamByName('name').AsString    := fmWorkFlowEditFieldType.FieldName;
      qInsertFieldType.ParamByName('caption').AsString := fmWorkFlowEditFieldType.FieldCaption;
      qInsertFieldType.ParamByName('descr').AsString   := fmWorkFlowEditFieldType.FieldDescription;
      qInsertFieldType.ParamByName('type').AsString    := TDataFieldTypeCode[fmWorkFlowEditFieldType.FieldType];
      if(fmWorkFlowEditFieldType.FieldFormat <> '') then
        qInsertFieldType.ParamByName('format').AsString    := fmWorkFlowEditFieldType.FieldFormat
      else
        qInsertFieldType.ParamByName('format').Clear();
      qInsertFieldType.ExecSQL();

      LNode := vtFieldTypes.AddChild(nil);
      LData := vtFieldTypes.GetNodeData(LNode);

      LData.Name      := fmWorkFlowEditFieldType.FieldName;
      LData.Caption   := fmWorkFlowEditFieldType.FieldCaption;
      LData.Descr     := fmWorkFlowEditFieldType.FieldDescription;
      LData.FieldType := fmWorkFlowEditFieldType.FieldType;
      LData.Format    := fmWorkFlowEditFieldType.FieldFormat;

      vtFieldTypes.SortTree(0,sdAscending);

      vtFieldTypes.FocusedNode := LNode;
      vtFieldTypes.Selected[LNode] := True;
      vtFieldTypes.ScrollIntoView(vtFieldTypes.FocusedNode,True)
    end;
  finally
    vtFieldTypes.EndUpdate();
    FreeAndNil(fmWorkFlowEditFieldType);
    FreeAndNil(LNames);
  end;
end;

procedure TfmWorkFlowDataForms.aFieldTypeEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtFieldTypes.FocusedNode);
end;

procedure TfmWorkFlowDataForms.aFieldTypeEditExecute(Sender: TObject);
var
  LData: PFieldType;
  LNames: TStringList;
begin
  LNames := TStringList.Create();
  LData := vtFieldTypes.GetNodeData(vtFieldTypes.FocusedNode);

  fmWorkFlowEditFieldType := TfmWorkFlowEditFieldType.Create(Self);
  vtFieldTypes.BeginUpdate();
  try
    GetListFieldNames(LNames);
    LNames.Delete(LNames.IndexOf(LData.Name));

    fmWorkFlowEditFieldType.FieldNames       := LNames;
    fmWorkFlowEditFieldType.FieldName        := LData.Name;
    fmWorkFlowEditFieldType.FieldCaption     := LData.Caption;
    fmWorkFlowEditFieldType.FieldDescription := LData.Descr;
    fmWorkFlowEditFieldType.FieldType        := LData.FieldType;
    fmWorkFlowEditFieldType.FieldFormat      := LData.Format;

    if(fmWorkFlowEditFieldType.ShowModal() = mrOk) then
    begin
      // update database.
      qUpdateFieldTypes.ParamByName('oldname').AsString := LData.Name;

      qUpdateFieldTypes.ParamByName('name').AsString    := fmWorkFlowEditFieldType.FieldName;
      qUpdateFieldTypes.ParamByName('caption').AsString := fmWorkFlowEditFieldType.FieldCaption;
      qUpdateFieldTypes.ParamByName('descr').AsString   := fmWorkFlowEditFieldType.FieldDescription;
      qUpdateFieldTypes.ParamByName('type').AsString    := TDataFieldTypeCode[fmWorkFlowEditFieldType.FieldType];
      if(fmWorkFlowEditFieldType.FieldFormat <> '') then
        qUpdateFieldTypes.ParamByName('format').AsString    := fmWorkFlowEditFieldType.FieldFormat
      else
        qUpdateFieldTypes.ParamByName('format').Clear();
      qUpdateFieldTypes.ExecSQL();

      LData.Name      := fmWorkFlowEditFieldType.FieldName;
      LData.Caption   := fmWorkFlowEditFieldType.FieldCaption;
      LData.Descr     := fmWorkFlowEditFieldType.FieldDescription;
      LData.FieldType := fmWorkFlowEditFieldType.FieldType;
      LData.Format    := fmWorkFlowEditFieldType.FieldFormat;

      vtFieldTypes.RepaintNode(vtFieldTypes.FocusedNode);
      vtFieldTypes.SortTree(0,sdAscending);
      vtFieldTypes.Selected[vtFieldTypes.FocusedNode] := True;
      vtFieldTypes.ScrollIntoView(vtFieldTypes.FocusedNode,True)

    end;
  finally
    vtFieldTypes.EndUpdate();
    FreeAndNil(fmWorkFlowEditFieldType);
  end;
end;

procedure TfmWorkFlowDataForms.aFieldTypeDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtFieldTypes.FocusedNode);
end;

procedure TfmWorkFlowDataForms.aFieldTypeDeleteExecute(Sender: TObject);
var
  LData: PFieldType;
begin
  LData := vtFieldTypes.GetNodeData(vtFieldTypes.FocusedNode);
  if(MessageDlg('Are you sure you want to delete the field type ''' + LData.Name + '''?'#13#10'All data entered under it will be deleted to.', mtConfirmation, [mbYes,mbNo], 0) <> mrYes) then
    Exit;

  qDeleteFieldType.ParamByName('name').AsString := LData.Name;
  qDeleteFieldType.ExecSQL();
  vtFieldTypes.DeleteNode(vtFieldTypes.FocusedNode);
  
end;

procedure TfmWorkFlowDataForms.vtFieldTypesCompareNodes(
  Sender: TBaseVirtualTree; Node1, Node2: PVirtualNode;
  Column: TColumnIndex; var Result: Integer);
var
  LData1, LData2: PFieldType;
begin
  LData1 := Sender.GetNodeData(Node1);
  LData2 := Sender.GetNodeData(Node2);

  case TDataFieldColumns(Column) of
    dfcName:        Result := CompareText(LData1.Name,LData2.Name);
    dfcCaption:     Result := CompareText(LData1.Caption,LData2.Caption);
    dfcDescription: Result := CompareText(LData1.Descr,LData2.Descr);
    dfcType:        Result := CompareText(TDataFieldTypeCaption[LData1.FieldType],TDataFieldTypeCaption[LData2.FieldType]);
    dfcFormat:      Result := CompareText(LData1.Format,LData2.Format);
  end;


end;

procedure TfmWorkFlowDataForms.FormCreate(Sender: TObject);
var
  LClass: TMergeDocumentClass;
begin
  if(SettingExists(C_SETTINGOWNER,'LEFT')) then
  begin
    if(SettingLoadInteger(C_SETTINGOWNER,'LEFT') <> 0) then
    begin
      Left        := SettingLoadInteger(C_SETTINGOWNER,'LEFT');
      Width       := SettingLoadInteger(C_SETTINGOWNER,'WIDTH');
      Top         := SettingLoadInteger(C_SETTINGOWNER,'TOP');
      Height      := SettingLoadInteger(C_SETTINGOWNER,'HEIGHT');
    end;
    WindowState := TWindowState(SettingLoadInteger(C_SETTINGOWNER,'WINDOWSTATE'));
    pBottom.Height := SettingLoadInteger(C_SETTINGOWNER,'SPLITPOS');
  end;

  aTranslate.Enabled := False;
  LClass := GetWorkFlowMergeTypeClass();
  if(Assigned(LClass)) then
    aTranslate.Enabled := moNeedsFieldTranslate in LClass.Options;
end;

procedure TfmWorkFlowDataForms.vtDataFormsGetNodeDataSize(Sender: TBaseVirtualTree; var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TDataForm);
end;

procedure TfmWorkFlowDataForms.LoadDataForms;
var
  LDataFormNode, LFieldsNode, LFieldNode: PVirtualNode;
  LDataFormData, LFieldsData, LFieldData: PDataForm;
begin
  vtDataForms.BeginUpdate();
  try
    DataFormsModified := False;
    vtDataForms.Clear();
    qDataForms.Open();
    try
      while(not qDataForms.Eof) do
      begin
        LDataFormNode := vtDataForms.AddChild(nil);
        LDataFormData := vtDataForms.GetNodeData(LDataFormNode);

        LDataFormData.RowType               := dfrForm;
        LDataFormData.Code                  := qDataFormsCODE.AsString;
        LDataFormData.Caption               := qDataFormsCAPTION.AsString;
        LDataFormData.Descr                 := qDataFormsDESCR.AsString;
        LDataFormData.WorkFlowTypeCode      := qDataFormsWORKFLOWTYPECODE.AsString;
        LDataFormData.WorkFlowType          := qDataFormsWORKFLOWTYPE.AsString;
        LDataFormData.PartyType             := qDataFormsPARTY.AsString;
        LDataFormData.PartyIsMatterSpecific := qDataFormsPARTYISMATTERSPECIFIC.AsString = 'Y';
        LDataFormData.OriginalCode          := LDataFormData.Code;
        LDataFormData.Status                := dfsDefault;

        LFieldsNode := vtDataForms.AddChild(LDataFormNode);
        LFieldsData := vtDataForms.GetNodeData(LFieldsNode);
        LFieldsData.RowType := dfrFields;

        qDataFormFields.ParamByName('dataform').AsString := LDataFormData.Code;
        qDataFormFields.Open();
        try
          while(Not qDataFormFields.Eof) do
          begin
            LFieldNode := vtDataForms.AddChild(LFieldsNode);
            LFieldData := vtDataForms.GetNodeData(LFieldNode);

            LFieldData.RowType := dfrField;

            LFieldData.Code                  := LDataFormData.Code;
            LFieldData.Caption               := LDataFormData.Caption;
            LFieldData.Descr                 := LDataFormData.Descr;
            LFieldData.WorkFlowTypeCode      := LDataFormData.WorkFlowTypeCode;
            LFieldData.WorkFlowType          := LDataFormData.WorkFlowType;
            LFieldData.PartyType             := LDataFormData.PartyType;
            LFieldData.PartyIsMatterSpecific := LDataFormData.PartyIsMatterSpecific;
            LFieldData.OriginalCode          := LDataFormData.Code;
            LFieldData.Status                := dfsDefault;

            LFieldData.Field.Name      := qDataFormFieldsFIELDNAME.AsString;
            LFieldData.Field.Caption   := qDataFormFieldsCAPTION.AsString;
            LFieldData.Field.Descr     := qDataFormFieldsDESCR.AsString;
            LFieldData.Field.Format    := qDataFormFieldsFORMAT.AsString;
            LFieldData.Field.FieldType := GetDataFieldTypeFromCode(qDataFormFieldsFIELDTYPE.AsString);
            LFieldData.Field.Seq       := qDataFormFieldsSEQ.AsInteger;

            qDataFormFields.Next();
          end;
        finally
          qDataFormFields.Close();
        end;
        qDataForms.Next();
      end;
      ReSizeDataFormColumns();
    finally
      qDataForms.Close();
    end;
  finally
    vtDataForms.EndUpdate();
  end;
end;

procedure TfmWorkFlowDataForms.vtDataFormsGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  LData: PDataForm;

  function CreateTypeText(): String;
  begin
    Result := '';
    if(LData.WorkFlowTypeCode <> '') and (LData.PartyType = '') then
      Result := 'Matters of Work Flow Type ' + LData.WorkFlowType // C
    else if(LData.WorkFlowTypeCode = '') and (LData.PartyType <> '')  and (not LData.PartyIsMatterSpecific) then
      Result := 'Party Type ' + LData.PartyType  // B
    else if(LData.WorkFlowTypeCode = '') and (LData.PartyType <> '') and LData.PartyIsMatterSpecific then
      Result := 'Party Type ' + LData.PartyType + ' specific to each matter the party is a contact on' // D
    else if(LData.WorkFlowTypeCode <> '') and (LData.PartyType <> '') and LData.PartyIsMatterSpecific then  // E
      Result := 'Party Type ' + LData.PartyType + ' specific to each ' + LData.WorkFlowType + ' matter the party is a contact on' // E
    else if(LData.WorkFlowTypeCode <> '') and (LData.PartyType <> '') and (not LData.PartyIsMatterSpecific) then // F
      Result := 'INCORRECT SELECTION - Selecting party type and matter type and not party is matter specific is an error'
    else
      Result := 'All Matters'; // A
  end;

  function CreateFormatText(): String;
  begin
    Result := TDataFieldTypeCaption[LData.Field.FieldType];
    if(LData.Field.Format <> '') then
      Result := Result + ' - Formatted ' + LData.Field.Format;
  end;

begin
  CellText := '';
  LData := Sender.GetNodeData(Node);
  case LData.RowType of
    dfrForm:
      begin
        case Column of
          0: CellText := LData.Code;
          1: CellText := LData.Caption;
          2: CellText := LData.Descr;
          3: CellText := CreateTypeText();
        end;
      end;
    dfrFields:
      begin
        case Column of
          0: CellText := 'Fields (' + IntToStr(Node.ChildCount) + ')';
          1:;
          2:;
        end;
      end;
    dfrField:
      begin
        case Column of
          0: CellText := LData.Field.Name;
          1: CellText := LData.Field.Caption;
          2: CellText := LData.Field.Descr;
          3: CellText := CreateFormatText();
        end;
      end;
  end;
end;

procedure TfmWorkFlowDataForms.vtDataFormsPaintText(
  Sender: TBaseVirtualTree; const TargetCanvas: TCanvas;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType);
var
  LData: PDataForm;
begin
  LData := Sender.GetNodeData(Node);
  case LData.RowType of
    dfrForm: if(Column < 3) then TargetCanvas.Font.Style := [fsBold];
    dfrFields: TargetCanvas.Font.Color := clMaroon;
  end;

  if(LData.Status in [dfsNew,dfsEdited]) and (Column = 0) then
  begin
    TargetCanvas.Font.Style := TargetCanvas.Font.Style + [fsItalic];
    TargetCanvas.Font.Color := clBlue;
  end;

  if(LData.Status = dfsDeleted) then
  begin
    TargetCanvas.Font.Style := [fsStrikeOut];
    TargetCanvas.Font.Color := clLtGray;
  end;
end;

procedure TfmWorkFlowDataForms.aDataFormAddUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := True;
end;

procedure TfmWorkFlowDataForms.GetListFieldNames(AStrings: TStringList);
var
  LNode: PVirtualNode;
  LData: PFieldType;
begin
  LNode := vtFieldTypes.RootNode.FirstChild;
  AStrings.Clear();
  while(Assigned(LNode)) do
  begin
    LData := vtFieldTypes.GetNodeData(LNode);
    AStrings.Add(LData.Name);
    LNode := LNode.NextSibling;
  end;
end;

procedure TfmWorkFlowDataForms.GetListFormNames(AStrings: TStringList);
var
  LNode: PVirtualNode;
  LData: PDataForm;
begin
  LNode := vtDataForms.RootNode.FirstChild;
  AStrings.Clear();
  while(Assigned(LNode)) do
  begin
    LData := vtDataForms.GetNodeData(LNode);
    AStrings.Add(LData.Code);
    LNode := LNode.NextSibling;
  end;
end;

procedure TfmWorkFlowDataForms.aDataFormAddExecute(Sender: TObject);
var
  LNode, LFieldsNode: PVirtualNode;
  LData, LFieldsData: PDataForm;
  LNames: TStringList;
begin
  LNames := TStringList.Create();
  fmWorkFlowEditDataFormDialog := TfmWorkFlowEditDataFormDialog.Create(self);
  try
    GetListFormNames(LNames);

    fmWorkFlowEditDataFormDialog.DataFormNames                := LNames;
    fmWorkFlowEditDataFormDialog.DataFormName                 := '';
    fmWorkFlowEditDataFormDialog.DataFormCaption              := '';
    fmWorkFlowEditDataFormDialog.DataFormDescription          := '';
    fmWorkFlowEditDataFormDialog.DataFormWorkFlowTypeCode     := '';
    fmWorkFlowEditDataFormDialog.DataFormPartyType            := '';
    fmWorkFlowEditDataFormDialog.DataFormPartyMatterSpecific  := False;

    if(fmWorkFlowEditDataFormDialog.ShowModal() = mrOk) then
    begin
      LNode := vtDataForms.AddChild(nil);
      LData := vtDataForms.GetNodeData(LNode);

      LData.Code                  := fmWorkFlowEditDataFormDialog.DataFormName;
      LData.Caption               := fmWorkFlowEditDataFormDialog.DataFormCaption;
      LData.Descr                 := fmWorkFlowEditDataFormDialog.DataFormDescription;
      LData.WorkFlowTypeCode      := fmWorkFlowEditDataFormDialog.DataFormWorkFlowTypeCode;
      LData.WorkFlowType          := fmWorkFlowEditDataFormDialog.DataFormWorkFlowType;
      LData.PartyType             := fmWorkFlowEditDataFormDialog.DataFormPartyType;
      LData.PartyIsMatterSpecific := fmWorkFlowEditDataFormDialog.DataFormPartyMatterSpecific;
      LData.Status                := dfsNew;
      LData.RowType               := dfrForm;
      DataFormsModified           := True;

      LFieldsNode         := vtDataForms.AddChild(LNode);
      LFieldsData         := vtDataForms.GetNodeData(LFieldsNode);
      LFieldsData.RowType := dfrFields;

      vtDataForms.Expanded[LNode] := True;
      ReSizeDataFormColumns();
    end;
  finally
    FreeAndNil(fmWorkFlowEditDataFormDialog);
    FreeAndNil(LNames);
  end;
end;

procedure TfmWorkFlowDataForms.aDataFormEditUpdate(Sender: TObject);
var
  LData: PDataForm;
begin
  if(Assigned(vtDataForms.FocusedNode)) then
  begin
    LData := vtDataForms.GetNodeData(vtDataForms.FocusedNode);
    TAction(Sender).Enabled := (LData.RowType = dfrForm) and (LData.Status <> dfsDeleted);
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowDataForms.aDataFormEditExecute(Sender: TObject);
var
  LData: PDataForm;
  LNames: TStringList;
begin
  LNames := TStringList.Create();
  LData := vtDataForms.GetNodeData(vtDataForms.FocusedNode);
  fmWorkFlowEditDataFormDialog := TfmWorkFlowEditDataFormDialog.Create(self);
  try
    GetListFormNames(LNames);
    LNames.Delete(LNames.IndexOf(LData.Code));

    fmWorkFlowEditDataFormDialog.DataFormNames                := LNames;
    fmWorkFlowEditDataFormDialog.DataFormName                 := LData.Code;
    fmWorkFlowEditDataFormDialog.DataFormCaption              := LData.Caption;
    fmWorkFlowEditDataFormDialog.DataFormDescription          := LData.Descr;
    fmWorkFlowEditDataFormDialog.DataFormWorkFlowTypeCode     := LData.WorkFlowTypeCode;
    fmWorkFlowEditDataFormDialog.DataFormPartyType            := LData.PartyType;
    fmWorkFlowEditDataFormDialog.DataFormPartyMatterSpecific  := LData.PartyIsMatterSpecific;

    if(fmWorkFlowEditDataFormDialog.ShowModal() = mrOk) then
    begin
      if(LData.Code                  <> fmWorkFlowEditDataFormDialog.DataFormName) or
        (LData.Caption               <> fmWorkFlowEditDataFormDialog.DataFormCaption) or
        (LData.Descr                 <> fmWorkFlowEditDataFormDialog.DataFormDescription) or
        (LData.WorkFlowTypeCode      <> fmWorkFlowEditDataFormDialog.DataFormWorkFlowTypeCode) or
        (LData.PartyType             <> fmWorkFlowEditDataFormDialog.DataFormPartyType) or
        (LData.PartyIsMatterSpecific <> fmWorkFlowEditDataFormDialog.DataFormPartyMatterSpecific) then
      begin
        LData.Code                  := fmWorkFlowEditDataFormDialog.DataFormName;
        LData.Caption               := fmWorkFlowEditDataFormDialog.DataFormCaption;
        LData.Descr                 := fmWorkFlowEditDataFormDialog.DataFormDescription;
        LData.WorkFlowTypeCode      := fmWorkFlowEditDataFormDialog.DataFormWorkFlowTypeCode;
        LData.PartyType             := fmWorkFlowEditDataFormDialog.DataFormPartyType;
        LData.PartyIsMatterSpecific := fmWorkFlowEditDataFormDialog.DataFormPartyMatterSpecific;
        LData.Status                := dfsEdited;
        DataFormsModified           := True;
      end;
      ReSizeDataFormColumns();
    end;
  finally
    FreeAndNil(fmWorkFlowEditDataFormDialog);
    FreeAndNil(LNames);
  end;
end;

procedure TfmWorkFlowDataForms.aDataFormDeleteUpdate(Sender: TObject);
var
  LData: PDataForm;
begin
  if(Assigned(vtDataForms.FocusedNode)) then
  begin
    LData := vtDataForms.GetNodeData(vtDataForms.FocusedNode);
    TAction(Sender).Enabled := (LData.RowType = dfrForm) and (LData.Status <> dfsDeleted);
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowDataForms.aDataFormDeleteExecute(Sender: TObject);
var
  LData: PDataForm;
  LNode: PVirtualNode;
begin
  vtDataForms.BeginUpdate();
  try
    LData := vtDataForms.GetNodeData(vtDataForms.FocusedNode);
    if MessageDlg('Are you sure you want to delete the data form ''' + LData.Caption + '''?'#13#10'Doing so will delete any data entered in it.', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      DataFormsModified := True;
      LData.Status := dfsDeleted;
      LNode := vtDataForms.FocusedNode.FirstChild.FirstChild; // first field.
      while(Assigned(LNode)) do
      begin
        LData := vtDataForms.GetNodeData(LNode);
        LData.Status := dfsDeleted;

        LNode := LNode.NextSibling;
      end;
    end;
  finally
    vtDataForms.EndUpdate();
  end;
end;

procedure TfmWorkFlowDataForms.DataFormPostCancelUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := DataFormsModified;
end;

procedure TfmWorkFlowDataForms.aDataFormCancelExecute(Sender: TObject);
begin
  if MessageDlg('This will clear any changes made to the data forms!', mtConfirmation, [mbOK,mbCancel], 0) = mrOk then
    LoadDataForms();
end;

procedure TfmWorkFlowDataForms.vtFieldTypesDragAllowed(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  var Allowed: Boolean);
begin
  Allowed := True;
end;

procedure TfmWorkFlowDataForms.vtFieldTypesDragOver(
  Sender: TBaseVirtualTree; Source: TObject; Shift: TShiftState;
  State: TDragState; Pt: TPoint; Mode: TDropMode; var Effect: Integer;
  var Accept: Boolean);
begin
  Accept := False;
end;

procedure TfmWorkFlowDataForms.vtDataFormsDragAllowed(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  var Allowed: Boolean);
var
  LData: PDataForm;
begin
  LData := Sender.GetNodeData(Node);
  Allowed := LData.RowType = dfrField;
end;

procedure TfmWorkFlowDataForms.vtDataFormsDragOver(
  Sender: TBaseVirtualTree; Source: TObject; Shift: TShiftState;
  State: TDragState; Pt: TPoint; Mode: TDropMode; var Effect: Integer;
  var Accept: Boolean);

  function FieldNotExists(AName: String; ANode: PVirtualNode): Boolean;
  var
    LNode: PVirtualNode;
    LData: PDataForm;
  begin
    LData := vtDataForms.GetNodeData(ANode);
    LNode := ANode;
    if(LData.RowType = dfrForm) then
      LNode := ANode.FirstChild.FirstChild
    else if(LData.RowType = dfrFields) then
      LNode := ANode.FirstChild
    else if(LData.RowType = dfrField) then
      LNode := ANode.Parent.FirstChild;

    Result := True;
    while(Assigned(LNode)) do
    begin
      LData := vtDataForms.GetNodeData(LNode);
      if(LData.Field.Name = AName) then
      begin
        Result := False;
        Exit;
      end;
      LNode := LNode.NextSibling;
    end;
  end;

var
  LDestNode: PVirtualNode;
  LSourceData: PFieldType;
  LDestData: PDataForm;
begin
  Accept := False;
  if(Source = vtFieldTypes) then
  begin
    LSourceData := vtFieldTypes.GetNodeData(vtFieldTypes.FocusedNode);

    LDestNode := Sender.DropTargetNode;
    LDestData := Sender.GetNodeData(LDestNode);
    if(Assigned(LDestData)) then
    begin
      if(LDestData.Status <> dfsDeleted) then
        // check same field is not in data form.
        Accept := FieldNotExists(LSourceData.Name,LDestNode);
    end;
  end else if(Source = vtDataForms) then
  begin
    LDestNode := Sender.DropTargetNode;
    if(Assigned(LDestNode)) then
      Accept := Sender.FocusedNode.Parent = LDestNode.Parent;
  end;
end;

procedure TfmWorkFlowDataForms.vtDataFormsDragDrop(
  Sender: TBaseVirtualTree; Source: TObject; DataObject: IDataObject;
  Formats: TFormatArray; Shift: TShiftState; Pt: TPoint;
  var Effect: Integer; Mode: TDropMode);
var
  LNode, LDestNode: PVirtualNode;
  LSourceData: PFieldType;
  LData, LDestData: PDataForm;
begin
  if(Source = vtFieldTypes) then
  begin
    LSourceData := vtFieldTypes.GetNodeData(vtFieldTypes.FocusedNode);

    LDestNode := Sender.DropTargetNode;
    LDestData := Sender.GetNodeData(LDestNode);
    if(Assigned(LDestData)) then
    begin
      LNode := LDestNode;
      if(LDestData.RowType = dfrForm) then
        LNode := Sender.AddChild(LDestNode.FirstChild)
      else if(LDestData.RowType = dfrFields) then
        LNode := Sender.AddChild(LDestNode)
      else if(LDestData.RowType = dfrField) then
      begin
        case Mode of
          dmAbove,
          dmOnNode:  LNode := Sender.InsertNode(LDestNode,amInsertBefore);
          dmBelow:   LNode := Sender.InsertNode(LDestNode,amInsertAfter);
        end;
      end;

      LData := Sender.GetNodeData(LNode);

      LData.RowType := dfrField;

      LData.Code                  := LDestData.Code;
      LData.Caption               := LDestData.Caption;
      LData.Descr                 := LDestData.Descr;
      LData.WorkFlowTypeCode      := LDestData.WorkFlowTypeCode;
      LData.WorkFlowType          := LDestData.WorkFlowType;
      LData.PartyType             := LDestData.PartyType;
      LData.PartyIsMatterSpecific := LDestData.PartyIsMatterSpecific;
      LData.OriginalCode          := LDestData.Code;
      LData.Status                := dfsNew;

      LData.Field.Name      := LSourceData.Name;
      LData.Field.Caption   := LSourceData.Caption;
      LData.Field.Descr     := LSourceData.Descr;
      LData.Field.Format    := LSourceData.Format;
      LData.Field.FieldType := LSourceData.FieldType;

      Sender.Expanded[LNode.Parent] := True;
      if(LNode.Parent.Parent = Sender.RootNode) then
        Sender.Expanded[LNode.Parent.Parent] := True;
      DataFormsModified := True;

      ReSeqFields(LNode.Parent);

      ReSizeDataFormColumns();
    end;
  end else if(Source = vtDataForms) then
  begin
    LDestNode := Sender.DropTargetNode;
    LNode     := Sender.FocusedNode;

    case Mode of
      dmOnNode,
      dmAbove:  Sender.MoveTo(LNode,LDestNode,amInsertBefore,False);
      dmBelow:  Sender.MoveTo(LNode,LDestNode,amInsertAfter,False);
    end;
    DataFormsModified := True;
    ReSeqFields(LNode.Parent);
  end;
end;

procedure TfmWorkFlowDataForms.ReSizeDataFormColumns;
var
  LFont: TFont;
  i: Integer;
  LColumn: TVirtualTreeColumn;
  LWidth: Integer;
begin
  if(vtDataForms.RootNode.ChildCount > 0) then
  begin
//    vtDataForms.Header.AutoFitColumns(False);

    LFont := Canvas.Font;
    try
      Canvas.Font := vtDataForms.Header.Font;
      for i := 0 to vtDataForms.Header.Columns.Count - 1 do
      begin
        LColumn := vtDataForms.Header.Columns[i];
        LWidth  := Canvas.TextWidth(LColumn.Text) + 20;
        if(LWidth > LColumn.Width) then
          LColumn.Width := LWidth;
      end;
    finally
      Canvas.Font := LFont;
    end;
  end;
end;

procedure TfmWorkFlowDataForms.vtDataFormsExpanded(
  Sender: TBaseVirtualTree; Node: PVirtualNode);
begin
  ReSizeDataFormColumns();
end;

procedure TfmWorkFlowDataForms.ReSeqFields(AParent: PVirtualNode);
var
  LData: PDataForm;
  LNode: PVirtualNode;
  LSeq: Integer;
begin
  LSeq := 0;
  LNode := AParent.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtDataForms.GetNodeData(LNode);
    if(LData.Field.Seq <> LSeq) then
    begin
      LData.Field.Seq := LSeq;
      if(LData.Status = dfsDefault) then
        LData.Status := dfsEdited;
    end;
    Inc(LSeq);
    LNode := LNode.NextSibling;
  end;
end;

procedure TfmWorkFlowDataForms.aDataFormPostExecute(Sender: TObject);
var
  LDataFormNode, LFieldNode: PVirtualNode;
  LDataFormData, LFieldData: PDataForm;
begin
  if MessageDlg('Are you sure you want to post the changes you have made?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    LDataFormNode := vtDataForms.RootNode.FirstChild;
    while(Assigned(LDataFormNode)) do
    begin
      LDataFormData := vtDataForms.GetNodeData(LDataFormNode);

      // update data form.
      case LDataFormData.Status of
        dfsNew:
          begin
            qAddDataForm.ParamByName('code').AsString                   := LDataFormData.Code;
            qAddDataForm.ParamByName('caption').AsString                := LDataFormData.Caption;
            qAddDataForm.ParamByName('descr').AsString                  := LDataFormData.Descr;
            if(LDataFormData.PartyType = '') then
              qAddDataForm.ParamByName('party').Clear()
            else
              qAddDataForm.ParamByName('party').AsString                  := LDataFormData.PartyType;
            if(LDataFormData.PartyIsMatterSpecific) then
              qAddDataForm.ParamByName('partyismatterspecific').AsString := 'Y'
            else
              qAddDataForm.ParamByName('partyismatterspecific').AsString := 'N';
            if(LDataFormData.WorkFlowTypeCode = '') then
              qAddDataForm.ParamByName('workflowtypecode').Clear()
            else
              qAddDataForm.ParamByName('workflowtypecode').AsString       := LDataFormData.WorkFlowTypeCode;
            qAddDataForm.ExecSQL();
          end;
        dfsEdited:
          begin
            qUpdateDataForm.ParamByName('oldcode').AsString                := LDataFormData.OriginalCode;
            qUpdateDataForm.ParamByName('code').AsString                   := LDataFormData.Code;
            qUpdateDataForm.ParamByName('caption').AsString                := LDataFormData.Caption;
            qUpdateDataForm.ParamByName('descr').AsString                  := LDataFormData.Descr;
            if(LDataFormData.PartyType = '') then
              qUpdateDataForm.ParamByName('party').Clear()
            else
              qUpdateDataForm.ParamByName('party').AsString                  := LDataFormData.PartyType;
            if(LDataFormData.PartyIsMatterSpecific) then
              qUpdateDataForm.ParamByName('partyismatterspecific').AsString := 'Y'
            else
              qUpdateDataForm.ParamByName('partyismatterspecific').AsString := 'N';
            if(LDataFormData.WorkFlowTypeCode = '') then
              qUpdateDataForm.ParamByName('workflowtypecode').Clear()
            else
              qUpdateDataForm.ParamByName('workflowtypecode').AsString       := LDataFormData.WorkFlowTypeCode;
            qUpdateDataForm.ExecSQL();
          end;
        dfsDeleted:
          begin
            qDeleteAllDataFormFields.ParamByName('code').AsString := LDataFormData.OriginalCode;
            qDeleteAllDataFormFields.ExecSQL();

            qDeleteDataForm.ParamByName('code').AsString := LDataFormData.OriginalCode;
            qDeleteDataForm.ExecSQL();
          end;
      end;

      if(LDataFormData.Status <> dfsDeleted) then
      begin
        LFieldNode := LDataFormNode.FirstChild.FirstChild;
        while(Assigned(LFieldNode)) do
        begin
          LFieldData := vtDataForms.GetNodeData(LFieldNode);
          // update dataformfield.
          case LFieldData.Status of
            dfsNew:
              begin
                qAddDataFormField.ParamByName('dataform').AsString  := LDataFormData.Code;
                qAddDataFormField.ParamByName('fieldname').AsString := LFieldData.Field.Name;
                qAddDataFormField.ParamByName('seq').AsInteger      := LFieldData.Field.Seq;
                qAddDataFormField.ExecSQL();
              end;
            dfsEdited:
              begin
                qUpdateDataFormField.ParamByName('olddataform').AsString  := LDataFormData.OriginalCode;
                qUpdateDataFormField.ParamByName('dataform').AsString     := LDataFormData.Code;
                qUpdateDataFormField.ParamByName('oldfieldname').AsString := LFieldData.Field.Name;
                qUpdateDataFormField.ParamByName('seq').AsInteger         := LFieldData.Field.Seq;
                qUpdateDataFormField.ExecSQL();
              end;
            dfsDeleted:
              begin
                qDeleteDataFormField.ParamByName('dataform').AsString    := LFieldData.Code;
                qDeleteDataFormField.ParamByName('fieldname').AsString   := LFieldData.Field.Name;
                qDeleteDataFormField.ExecSQL();
              end;
            dfsDefault:
              begin
                if(LDataFormData.Status = dfsEdited) and (LDataFormData.OriginalCode <> LDataFormData.Code) then
                begin
                  qUpdateDataFormField.ParamByName('olddataform').AsString  := LDataFormData.OriginalCode;
                  qUpdateDataFormField.ParamByName('dataform').AsString     := LDataFormData.Code;
                  qUpdateDataFormField.ParamByName('oldfieldname').AsString := LFieldData.Field.Name;
                  qUpdateDataFormField.ParamByName('seq').AsInteger         := LFieldData.Field.Seq;
                  qUpdateDataFormField.ExecSQL();
                end;
              end;
          end;

          LFieldData.Status := dfsDefault;

          LFieldNode := LFieldNode.NextSibling;
        end;
      end;
      LDataFormData.Status := dfsDefault;
      LDataFormNode := LDataFormNode.NextSibling;
    end;
    LoadDataForms();
  end;
end;

procedure TfmWorkFlowDataForms.aDataFormFieldDeleteUpdate(Sender: TObject);
var
  LData: PDataForm;
begin
  if(Assigned(vtDataForms.FocusedNode)) then
  begin
    LData := vtDataForms.GetNodeData(vtDataForms.FocusedNode);
    TAction(Sender).Enabled := (LData.RowType = dfrField) and (LData.Status <> dfsDeleted);
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowDataForms.aDataFormFieldDeleteExecute(
  Sender: TObject);
var
  LData: PDataForm;
begin
  vtDataForms.BeginUpdate();
  try
    LData := vtDataForms.GetNodeData(vtDataForms.FocusedNode);
    if MessageDlg('Are you sure you want to delete the field ''' + LData.Field.Caption + ''' from data form ''' + LData.Caption + '''?'#13#10'Doing so will delete any data entered in it.', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      DataFormsModified := True;
      LData.Status := dfsDeleted;
    end;
  finally
    vtDataForms.EndUpdate();
  end;
end;

procedure TfmWorkFlowDataForms.aDataFormMoveFieldUpUpdate(Sender: TObject);
var
  LData: PDataForm;
begin
  if(Assigned(vtDataForms.FocusedNode)) then
  begin
    LData := vtDataForms.GetNodeData(vtDataForms.FocusedNode);
    TAction(Sender).Enabled := (LData.RowType = dfrField) and (LData.Status <> dfsDeleted) and Assigned(vtDataForms.FocusedNode.PrevSibling);
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowDataForms.aDataFormMoveFieldUpExecute(Sender: TObject);
begin
  vtDataForms.MoveTo(vtDataForms.FocusedNode,vtDataForms.FocusedNode.PrevSibling,amInsertBefore,False);
  ReSeqFields(vtDataForms.FocusedNode.Parent);
end;

procedure TfmWorkFlowDataForms.aDataFormMoveFieldDownExecute(Sender: TObject);
begin
  vtDataForms.MoveTo(vtDataForms.FocusedNode,vtDataForms.FocusedNode.NextSibling,amInsertAfter,False);
  ReSeqFields(vtDataForms.FocusedNode.Parent);
end;

procedure TfmWorkFlowDataForms.aDataFormMoveFieldDownUpdate(Sender: TObject);
var
  LData: PDataForm;
begin
  if(Assigned(vtDataForms.FocusedNode)) then
  begin
    LData := vtDataForms.GetNodeData(vtDataForms.FocusedNode);
    TAction(Sender).Enabled := (LData.RowType = dfrField) and (LData.Status <> dfsDeleted) and Assigned(vtDataForms.FocusedNode.NextSibling);
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowDataForms.aTranslateExecute(Sender: TObject);
begin
  if(not Assigned(fmWorkFlowFieldTranslate)) then
    fmWorkFlowFieldTranslate := TfmWorkFlowFieldTranslate.Create(nil);
  fmWorkFlowFieldTranslate.Show();
end;

procedure TfmWorkFlowDataForms.actExitExecute(Sender: TObject);
begin
   Self.Close;
   RemoveFromDesktop(Self);
end;

end.
