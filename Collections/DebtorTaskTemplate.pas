unit DebtorTaskTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, cxPC, cxControls, cxContainer, cxTreeView, DB, MemDS,
  DBAccess, OracleUniProvider, Uni, Menus, cxCurrencyEdit, cxDBEdit, cxTextEdit,
  cxEdit, cxLabel, dxBar, dxBarDBNav, ExtCtrls, DBCtrls, StdCtrls, Buttons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGrid, cxDBData, cxMemo, cxGridDBTableView, cxGridLevel, ShlObj,
  cxShellCommon, cxDropDownEdit, cxShellComboBox, cxDBShellComboBox,
  cxMaskEdit, cxGroupBox, cxListView, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ImgList, cxShellBrowserDialog,
  cxButtonEdit, cxBlobEdit, DebtorTaskNew, DebtorTaskDue,
  cxLookAndFeelPainters, cxButtons, cxImageComboBox, cxLookAndFeels,
  cxPCdxBarPopupMenu, ppParameter, ppBands, ppCache, ppClass, ppProd,
  ppReport, ppEndUsr, ppDsgnDB, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDesignLayer, cxNavigator, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList;

type

  TNodeTypes = (ROOT, TEMPLATE, TEMPLATEITEM, ITEMACTION, TEMPLATEITEMCOLLECTION);

  TNodeValue = class(TObject)
    iKey: integer;
    tType: TNodeTypes;

  public
    property key: integer read iKey;
    property nodeType: TNodeTypes read tType;
    constructor create(iKey: Integer; tType: TNodeTypes);

  end;


  TfrmDebtorTaskTemplate = class(TForm)
    pcMain: TcxPageControl;
    tabTemplate: TcxTabSheet;
    tabAction: TcxTabSheet;
    qrydebtorWorkflowTemplate: TUniQuery;
    dsdebtorWorkflowTemplate: TUniDataSource;
    qrydebtorWorkflowTemplateItem: TUniQuery;
    dsdebtorWorkflowTemplateItem: TUniDataSource;
    qryAction: TUniQuery;
    dsAction: TUniDataSource;
    tvTemplates: TcxTreeView;
    cxGroupBox1: TcxGroupBox;
    cxLabel3: TcxLabel;
    dbeActionDescription: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    dbcbActionType: TcxDBComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    pcType: TcxPageControl;
    tabDoc: TcxTabSheet;
    TabEmail: TcxTabSheet;
    tabTypeBlank: TcxTabSheet;
    cxLabel5: TcxLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxGroupBox2: TcxGroupBox;
    cxDBMEmail: TcxDBMemo;
    btnActionOk: TBitBtn;
    btnActionCancel: TBitBtn;
    treeImages: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dbeDocumentPath: TcxDBButtonEdit;
    dlFile: TOpenDialog;
    cxBtnAdd: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxBarGroup2: TdxBarGroup;
    cxBtnSubtract: TdxBarButton;
    cxLabel11: TcxLabel;
    cxDBSubject: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxDBDebtorNote: TcxDBTextEdit;
    dxFieldPopUp: TdxBarPopupMenu;
    dxliFields: TdxBarListItem;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    tabDocumentBlob: TcxTabSheet;
    cxLabel13: TcxLabel;
    btnImportBlob: TcxButton;
    btnExportBlob: TcxButton;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxedtGenDoc1: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    cxedtGenDoc2: TcxDBTextEdit;
    tabTemplateDetails: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    btnTemplateOK: TBitBtn;
    btnTemplateCancel: TBitBtn;
    tabTemplateItem: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxLabel7: TcxLabel;
    dblcAction: TcxDBLookupComboBox;
    edElapsedDays: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    dbeItemDest: TcxDBTextEdit;
    btnTemplateItemOk: TBitBtn;
    btnTemplateItemCancel: TBitBtn;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    tabTemplateBlank: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    pcTemplate: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cmbElapsedMode: TcxDBComboBox;
    cxDBCheckBox4: TcxDBCheckBox;
    edElapsedMonths: TcxDBTextEdit;
    tvActions: TcxGridDBTableView;
    grdActionsLevel1: TcxGridLevel;
    grdActions: TcxGrid;
    tvActionsDESCR: TcxGridDBColumn;
    tvActionsTYPE: TcxGridDBColumn;
    qryActions: TUniQuery;
    dsActions: TUniDataSource;
    tvActionsNACTION: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    tabSMS: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    cxDBCheckBox5: TcxDBCheckBox;
    Label1: TLabel;
    tabStatement: TcxTabSheet;
    cxLabel16: TcxLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxLabel17: TcxLabel;
    cxedtGenDoc3: TcxDBTextEdit;
    cxDBCheckBox6: TcxDBCheckBox;
    tbTables: TUniTable;
    tbFields: TUniTable;
    tbJoins: TUniTable;
    dsJoins: TUniDataSource;
    dsTables: TUniDataSource;
    dsFields: TUniDataSource;
    plJoins: TppDBPipeline;
    plFields: TppDBPipeline;
    plTables: TppDBPipeline;
    DataDictionary: TppDataDictionary;
    ppDesigner: TppDesigner;
    DebtorReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameterList2: TppParameterList;
    plDebtorTemplate: TppDBPipeline;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    cxDBCheckBox7: TcxDBCheckBox;
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rebuildActionList;
    procedure rebuildActionTree;
    procedure pcMainChange(Sender: TObject);
    procedure btnActionOkClick(Sender: TObject);
    procedure btnActionCancelClick(Sender: TObject);
    procedure qryActionBeforeEdit(DataSet: TDataSet);
    procedure qryActionAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qrydebtorWorkflowTemplateBeforeEdit(DataSet: TDataSet);
    procedure qrydebtorWorkflowTemplateAfterPost(DataSet: TDataSet);
    procedure btnTemplateOKClick(Sender: TObject);
    procedure btnTemplateCancelClick(Sender: TObject);
    procedure pmiTemplateClick(Sender: TObject);
    procedure tvTemplatesClick(Sender: TObject);
    procedure pmiTemplateItemClick(Sender: TObject);
    procedure qrydebtorWorkflowTemplateItemBeforeInsert(DataSet: TDataSet);
    procedure qrydebtorWorkflowTemplateItemAfterPost(DataSet: TDataSet);
    procedure btnTemplateItemOkClick(Sender: TObject);
    procedure btnTemplateItemCancelClick(Sender: TObject);
    procedure tvTemplatesExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure lvActionsClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure clearNode(tNode: TTreenode);
    procedure btnSubtractClick(Sender: TObject);
    procedure qryActionNewRecord(DataSet: TDataSet);
    procedure qrydebtorWorkflowTemplateItemNewRecord(DataSet: TDataSet);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnActionAddClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBtnAddClick(Sender: TObject);
    procedure cxBtnSubtractClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dxliFieldsClick(Sender: TObject);
    procedure pcTemplateChange(Sender: TObject);
    procedure btnImportBlobClick(Sender: TObject);
    procedure mergeDBEdit(tEdit : TcxDBTextEdit;sSelString : String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cmbElapsedModePropertiesChange(Sender: TObject);
    procedure tvActionsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);


  private
    { Private declarations }

    nAddParent: TTreeNode;
    procedure populateFields;
    function resetInserts: boolean;

  public
    { Public declarations }
  end;

var
  frmDebtorTaskTemplate: TfrmDebtorTaskTemplate;

implementation

uses MiscFunc, debtorDocumentMerge, strUtils, axiomData,InvestmentTransactions;

{$R *.dfm}

constructor TNodeValue.create(iKey: Integer; tType: TNodeTypes);
begin
  self.iKey := iKey;
  self.tType := tType;
end;


{

procedure TfrmDebtorWorkflowTemplate.initTree;
var tnode: TTreeNode;
  templateKey: ^TTreeNodeValue;
begin
  qrydebtorWorkflowTemplate.Close;
  qrydebtorWorkflowTemplate.Open;
  while not qrydebtorWorkflowTemplate.Eof do
  begin
    new(templateKey);
    templateKey^.tType := TEMPLATE;
    templateKey^.iKey := qrydebtorWorkflowTemplate.fieldByName('NTEMPLATE').AsInteger;
    tnode := cxTemplates.Items.AddChild(nil, qrydebtorWorkflowTemplate.fieldByName('DESCR').AsString);
    tnode.HasChildren := true;
    tnode.data := templateKey;
    qrydebtorWorkflowTemplate.Next;
  end;


end;

procedure TfrmDebtorWorkflowTemplate.freeTree;
var iLoop : integer;
nodepointer: ^TTreeNodeValue;
begin
    for iloop := 0 to (cxTemplates.Items.count -1) do
    begin
        nodepointer := cxTemplates.Items[iLoop].data;
        if nodePointer <> nil then
                dispose(nodePointer);


    end;
    cxTemplates.Items.Clear;
end;

procedure TfrmDebtorWorkflowTemplate.pmTreePopup(Sender: TObject);
var iLoop: integer;
begin
  pmidelete.Enabled := (cxTemplates.Selected <> nil);
end;

procedure TfrmDebtorWorkflowTemplate.pmiaddClick(Sender: TObject);
var
  selectedNodeType: TNodeTypes;
  nodepointer: ^TTreeNodeValue;
begin
  if cxTemplates.Selected = nil then
    selectedNodeType := ROOT
  else
  begin
    nodepointer := cxTemplates.Selected.data;
    selectedNodeType := nodepointer^.tType;
  end;

  case selectedNodeType of
    ROOT:
    begin
    pcData.ActivePage := tabHeader;
    qrydebtorWorkflowTemplate.insert;
    end;


    TEMPLATE:
      pcData.ActivePage := tabItem;

  end;

end;

procedure TfrmDebtorWorkflowTemplate.btnTemplateOKClick(Sender: TObject);
begin
        if qrydebtorWorkflowTemplate.State in [dsInsert,dsEdit] then
        begin
                qrydebtorWorkflowTemplate.post;
                freeTree();
                initTree();
        end;

        qrydebtorWorkflowTemplate.close;


end;

procedure TfrmDebtorWorkflowTemplate.cxTemplatesExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
//
AllowExpansion := true;
end;

procedure TfrmDebtorWorkflowTemplate.cxTemplatesClick(Sender: TObject);
var nodepointer: ^TTreeNodeValue;
begin
        if cxTemplates.Selected = nil then
                exit;

        nodepointer := cxTemplates.Selected.Data;

        if nodepointer = nil then
                exit;

        case nodepointer^.tType of
            TEMPLATE:
            displayTemplate(nodepointer^.iKey);
            TEMPLATEITEM:
        end;

end;

procedure TfrmDebtorWorkflowTemplate.FormShow(Sender: TObject);
begin
  initTree;
  pcData.HideTabs := true;
  pcData.ActivePage := tabBlank;
end;

procedure TfrmDebtorWorkflowTemplate.displayTemplate(iKey : integer);
begin
    qrydebtorWorkflowTemplate.Close;
    qrydebtorWorkflowTemplate.paramByName('NTEMPLATE').AsInteger := iKey;
    qrydebtorWorkflowTemplate.open;
    pcData.ActivePage := tabHeader;


end;

}


procedure TfrmDebtorTaskTemplate.populateFields;
var
   fMerge: TfrmDebtorDocumentMerge;
   field: TField;
   iloop: Integer;
begin
        // MOVE THIS QUERY TO DMAXIOM!
   fMerge := TfrmDebtorDocumentMerge.Create(self);
   with fMerge.qryDataSource do
   begin
      ParamByName('nmemo').AsInteger := -1;
      open;
      for iLoop := 0 to Fields.Count - 1 do
      begin
         field := Fields[iloop];
         dxliFields.Items.Add('<<' + upperCase(field.FieldName) + '>>');
      end;
      close;
   end;

   fMerge.free;
end;

procedure TfrmDebtorTaskTemplate.cxDBComboBox1PropertiesChange(
  Sender: TObject);
begin
   if dbcbActionType.Text = 'Email' then
      pcType.ActivePage := TabEmail
   else if dbcbActionType.Text = 'SMS' then
   begin
      if SystemString('sms_reg') = C_SMSPASSWORD then
         pcType.ActivePage := TabSMS
      else
      begin
         MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
         dbcbActionType.ClearSelection;
      end;
   end
   else if dbcbActionType.Text = 'Statement' then
      pcType.ActivePage := TabStatement
   else if (dbcbActionType.Text = 'Document') and (systemString('debtor_document_blob') = 'N') then
      pcType.ActivePage := tabDoc
   else if (dbcbActionType.Text = 'Document') and (systemString('debtor_document_blob') = 'Y') then
      pcType.ActivePage := tabDocumentBlob
   else
      pcType.ActivePage := tabTypeBlank;

end;

procedure TfrmDebtorTaskTemplate.FormCreate(Sender: TObject);
begin
   qryEmployee.Open;
   pcType.HideTabs := true;
   pcTemplate.HideTabs := true;
   pcTemplate.ActivePage := tabTemplateBlank;
   dxFieldPopUp.ItemLinks.Add.Item := dxliFields;
   populateFields;
end;

procedure TfrmDebtorTaskTemplate.rebuildActionList;
var iLoop: integer;
  pnodeValue: TNodeValue;
  nnode: TListItem;
begin
{   for iloop := 0 to lvActions.Items.Count - 1 do
   begin
      pnodeValue := lvActions.Items[iLoop].Data;
      if pNodeValue <> nil then
         pNodeValue.Free;
   end;
   lvActions.Items.Clear;
   lvActions.Columns.Items[0].Width := -1;

   qryAction.Close;
   qryAction.paramByName('NACTION').Clear;
   qryAction.Open;
   while not qryAction.Eof do
   begin
      pnodeValue := TNodeValue.create(qryAction.fieldByName('NACTION').AsInteger, ITEMACTION);
      nnode := lvActions.Items.add;
      nnode.Caption := qryAction.fieldByName('DESCR').AsString;
      nnode.data := pnodeValue;
      if qryAction.fieldByName('TYPE').AsString = 'Document' then
         nnode.imageIndex := 5
      else
         nnode.imageIndex := 6;

      qryAction.Next;
   end;
   qryAction.close;       }
end;


procedure TfrmDebtorTaskTemplate.rebuildActionTree;
var iLoop: integer;
  pnodeValue: TNodeValue;
  treeNode, treeRoot, subNode: TTreeNode;
begin
  for iloop := 0 to tvTemplates.Items.Count - 1 do
  begin
    pnodeValue := tvTemplates.Items[iLoop].Data;
    if pNodeValue <> nil then
      pNodeValue.Free;
  end;
  tvTemplates.Items.Clear;

  qrydebtorWorkflowTemplate.close;
  qrydebtorWorkflowTemplate.ParamByname('ntemplate').AsString := '';
  qrydebtorWorkflowTemplate.open;

  // create the root node
  treeRoot := tvTemplates.Items.AddChild(nil, 'Templates');
  treeRoot.ImageIndex := 0;
  treeRoot.SelectedIndex := 0;
  treeRoot.Data := TNodeValue.create(-1, ROOT);


  while not qrydebtorWorkflowTemplate.Eof do
  begin
    pnodeValue := TNodeValue.create(qrydebtorWorkflowTemplate.fieldByname('ntemplate').AsInteger, TEMPLATE);
    treeNode := tvTemplates.Items.AddChild(treeRoot, qrydebtorWorkflowTemplate.fieldByname('descr').AsString);
    treeNode.Data := pnodeValue;
    treeNode.ImageIndex := 2;
    treeNode.SelectedIndex := 2;
    treeNode.HasChildren := true;

    // create the node that will contain the items
    {subNode := tvTemplates.Items.AddChild(treeNode, 'Tasks');

    pnodeValue := TNodeValue.create(qrydebtorWorkflowTemplate.fieldByname('ntemplate').AsInteger, TEMPLATEITEMCOLLECTION);
    subNode.data := pnodeValue;
    subNode.HasChildren := true;
    subNode.ImageIndex := 3;
    subNode.SelectedIndex := 3;
    }

    qrydebtorWorkflowTemplate.Next;
  end;

  qrydebtorWorkflowTemplate.Close;
  treeRoot.Expand(false);
end;


procedure TfrmDebtorTaskTemplate.pcMainChange(Sender: TObject);
begin
  //btnAdd.Enabled := false;
  //btnSubtract.Enabled := false;
  cxBtnAdd.Enabled := false;
  cxBtnSubtract.Enabled := false;


  if pcMain.ActivePage = tabAction then
  begin
    qryActions.Open;
    rebuildActionList;
    cxBtnAdd.Enabled := dmAxiom.Security.CollectionsManagement.CreateAction;
  end
  else
  begin
    rebuildActionTree;
    qryAction.close;
    qryAction.paramByName('naction').AsString := '';
    qryAction.open;
    qryAction.ReadOnly := not dmAxiom.Security.CollectionsManagement.EditAction;
  end;
end;

procedure TfrmDebtorTaskTemplate.btnActionOkClick(Sender: TObject);
begin
  if qryAction.State in [dsEdit, dsInsert] then
  begin
    qryAction.Post;
    qryAction.Close;
    qryAction.Open;
//    rebuildActionList;
  end;
end;

procedure TfrmDebtorTaskTemplate.btnActionCancelClick(Sender: TObject);
begin
  if qryAction.State in [dsEdit, dsInsert] then
    qryAction.Cancel;
end;

procedure TfrmDebtorTaskTemplate.qryActionBeforeEdit(
  DataSet: TDataSet);
begin
  btnActionOk.Enabled := true;
  btnActionCancel.Enabled := true;
end;

procedure TfrmDebtorTaskTemplate.qryActionAfterPost(DataSet: TDataSet);
begin
  btnActionOk.Enabled := false;
  btnActionCancel.Enabled := false;
end;

procedure TfrmDebtorTaskTemplate.FormShow(Sender: TObject);
begin
  pcMainChange(self);
end;

procedure TfrmDebtorTaskTemplate.qrydebtorWorkflowTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  btnTemplateOK.Enabled := true;
  btnTemplateCancel.Enabled := true;
end;

procedure TfrmDebtorTaskTemplate.qrydebtorWorkflowTemplateAfterPost(
  DataSet: TDataSet);
begin
  btnTemplateOK.Enabled := false;
  btnTemplateCancel.Enabled := false;
end;

procedure TfrmDebtorTaskTemplate.btnTemplateOKClick(Sender: TObject);
begin
  qrydebtorWorkflowTemplate.post;
  rebuildActionTree;
  //clearNode (nAddParent);
end;

procedure TfrmDebtorTaskTemplate.btnTemplateCancelClick(
  Sender: TObject);
begin
  qrydebtorWorkflowTemplate.Cancel;
end;

procedure TfrmDebtorTaskTemplate.pmiTemplateClick(Sender: TObject);
begin
  if not qrydebtorWorkflowTemplate.Active then
    qrydebtorWorkflowTemplate.Open;
  pcTemplate.ActivePage := tabTemplate;
  qrydebtorWorkflowTemplate.Insert;
end;

procedure TfrmDebtorTaskTemplate.tvTemplatesClick(Sender: TObject);
var
  selectednode: TTreeNode;
  pnodeValue: TNodeValue;

begin
  if resetInserts then
  begin
    tvTemplates.Selected := nil;
    exit;
  end;
  qrydebtorWorkflowTemplate.ReadOnly := false;
  qrydebtorWorkflowTemplateItem.ReadOnly := false;

  selectednode := tvTemplates.Selected;
  if selectednode = nil then
  begin
    pcTemplate.ActivePage := tabTemplateBlank;
    exit;
  end;

  nAddParent := selectednode.Parent;

  pnodeValue := selectednode.data;
  if pnodeValue = nil then
  begin
    pcTemplate.ActivePage := tabTemplateBlank;
    exit;
  end;

  cxbtnAdd.Enabled := false;
  cxbtnSubtract.Enabled := false;

  case pnodeValue.nodeType of
    TEMPLATE:
      begin
        qrydebtorWorkflowTemplate.Close;
        qrydebtorWorkflowTemplate.ParamByName('ntemplate').AsInteger := pnodeValue.key;
        qrydebtorWorkflowTemplate.Open;
        qrydebtorWorkflowTemplate.ReadOnly := not dmAxiom.Security.CollectionsManagement.EditTemplate;

        pcTemplate.ActivePage := tabTemplateDetails;
        cxbtnAdd.Enabled := dmAxiom.Security.CollectionsManagement.CreateTemplateItem;
        //cxbtnSubtract.Enabled := dmAxiom.Security.CollectionsManagement.EditTemplate;
      end;
    TEMPLATEITEM:
      begin
        qrydebtorWorkflowTemplateItem.Close;
        qrydebtorWorkflowTemplateItem.ParamByName('ntemplate').AsString := '';
        qrydebtorWorkflowTemplateItem.ParamByName('ntemplateitem').AsInteger := pnodeValue.key;
        qrydebtorWorkflowTemplateItem.Open;
        qrydebtorWorkflowTemplateItem.ReadOnly := not dmAxiom.Security.CollectionsManagement.EditTemplateItem;
        pcTemplate.ActivePage := tabTemplateItem;
        cxbtnSubtract.Enabled := dmAxiom.Security.CollectionsManagement.EditTemplateItem;

      end;
    ROOT:
      begin
        pcTemplate.ActivePage := tabTemplateBlank;
        cxbtnAdd.Enabled := dmAxiom.Security.CollectionsManagement.CreateTemplate;
      end;
    {TEMPLATEITEMCOLLECTION:
      begin
        pcTemplate.ActivePage := tabTemplateBlank;
        cxbtnAdd.Enabled := true;
      end;
      }
  else
    pcTemplate.ActivePage := tabTemplateBlank;
  end;
end;

procedure TfrmDebtorTaskTemplate.pmiTemplateItemClick(Sender: TObject);
var
  selectednode: TTreeNode;
  pnodeValue: TNodeValue;
begin
  selectednode := tvTemplates.Selected;
  if selectednode = nil then
    exit;

  pnodeValue := selectednode.data;

  if pnodeValue.nodeType <> TEMPLATE then
    exit;

  qrydebtorWorkflowTemplateItem.open;
  qrydebtorWorkflowTemplateItem.insert;
  qrydebtorWorkflowTemplateItem.fieldByName('NTEMPLATE').AsInteger := pnodeValue.key;


  pcTemplate.ActivePage := tabTemplateItem;
end;

procedure TfrmDebtorTaskTemplate.qrydebtorWorkflowTemplateItemBeforeInsert(
  DataSet: TDataSet);
begin
  btnTemplateItemOk.Enabled := true;
  btnTemplateItemCancel.Enabled := true;
end;

procedure TfrmDebtorTaskTemplate.qrydebtorWorkflowTemplateItemAfterPost(
  DataSet: TDataSet);
begin
  btnTemplateItemOk.Enabled := false;
  btnTemplateItemCancel.Enabled := false;
end;

procedure TfrmDebtorTaskTemplate.btnTemplateItemOkClick(
  Sender: TObject);
begin
  qrydebtorWorkflowTemplateItem.Post;
  clearNode(nAddParent);
  // rebuild the node
end;

procedure TfrmDebtorTaskTemplate.btnTemplateItemCancelClick(
  Sender: TObject);
begin
  qrydebtorWorkflowTemplateItem.Cancel;
end;

procedure TfrmDebtorTaskTemplate.tvTemplatesExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  pnodeValue, pnewnodeValue: TNodeValue;
  newNode: TTreeNode;
  sTmp: string;
begin
  pnodeValue := Node.data;
  if pnodeValue = nil then
    exit;

  if Node.getFirstChild <> nil then
    exit;

  AllowExpansion := false;
  Node.HasChildren := false;

  case pnodeValue.nodeType of
    TEMPLATE:
      begin
        qrydebtorWorkflowTemplateItem.close;
        qrydebtorWorkflowTemplateItem.ParamByName('ntemplateitem').AsString := '';
        qrydebtorWorkflowTemplateItem.ParamByName('ntemplate').AsInteger := pnodeValue.key;
        qrydebtorWorkflowTemplateItem.open;
        while not qrydebtorWorkflowTemplateItem.Eof do
        begin

          pnewnodeValue := TNodeValue.create(qrydebtorWorkflowTemplateItem.FieldByName('ntemplateitem').AsInteger, TEMPLATEITEM);

          sTmp := qrydebtorWorkflowTemplateItem.FieldByName('descr').AsString;
          if qrydebtorWorkflowTemplateItem.FieldByName('elapse_mode').AsString = 'Days' then
            sTmp := sTmp + ' (' + qrydebtorWorkflowTemplateItem.FieldByName('elapse_days').AsString + ' days)'
          else
            sTmp := sTmp + ' (' + qrydebtorWorkflowTemplateItem.FieldByName('elapse_months').AsString + ' month(s))';
          newNode := tvTemplates.items.AddChild(Node, sTmp);
          newNode.data := pnewnodeValue;
          AllowExpansion := true;
          Node.HasChildren := true;
          newNode.ImageIndex := 4;
          newNode.SelectedIndex := 4;
          qrydebtorWorkflowTemplateItem.Next;
        end;
      end;

  end;
end;

procedure TfrmDebtorTaskTemplate.clearNode(tNode: TTreenode);
var child: TTreeNode;
  pnodeValue: TNodeValue;

begin
  if tNode = nil then
    exit;

  repeat
    child := tNode.getFirstChild;
    if child = nil then
      continue;
    pnodeValue := child.data;
    if pnodeValue <> nil then
      pnodeValue.Free;
    tvTemplates.Items.Delete(child);

  until (child = nil);

  tNode.HasChildren := true;
  tNode.Expand(false);
end;

procedure TfrmDebtorTaskTemplate.lvActionsClick(Sender: TObject);
var pnodeValue: TNodeValue;
  Item: TListItem;
begin
{  if resetInserts then
  begin
    lvActions.Selected := nil;
    exit;
  end;
  Item := lvActions.Selected;
  if Item = nil then
    exit;
  pnodeValue := Item.Data;
  if pnodeValue <> nil then
  begin
    qryAction.close;
    qryAction.ParamByName('NACTION').AsInteger := pnodeValue.key;
    qryAction.open;
    qryAction.ReadOnly := not dmAxiom.Security.CollectionsManagement.EditAction;

  end;     }

end;

procedure TfrmDebtorTaskTemplate.btnAddClick(Sender: TObject);
var pnodeValue: TNodeValue;
  Item: TTreeNode;
begin

  Item := tvTemplates.Selected;
  if Item = nil then
    exit;
  pnodeValue := Item.Data;
  if pnodeValue = nil then
    exit;

  nAddParent := Item;

  case pnodeValue.tType of
    ROOT:
      begin
        if not qrydebtorWorkflowTemplate.Active then
          qrydebtorWorkflowTemplate.Open;
        pcTemplate.ActivePage := tabTemplateDetails;
        qrydebtorWorkflowTemplate.Insert;
      end;
    TEMPLATEITEMCOLLECTION:
      begin
        qrydebtorWorkflowTemplateItem.open;
        qrydebtorWorkflowTemplateItem.insert;
        qrydebtorWorkflowTemplateItem.fieldByName('NTEMPLATE').AsInteger := pnodeValue.key;

        pcTemplate.ActivePage := tabTemplateItem;

      end;
  end;
end;

procedure TfrmDebtorTaskTemplate.btnSubtractClick(Sender: TObject);
var pnodeValue: TNodeValue;
  Item: TTreeNode;
begin
  Item := tvTemplates.Selected;
  if Item = nil then
    exit;
  pnodeValue := Item.Data;
  if pnodeValue = nil then
    exit;

  //nAddParent := Item;

  case pnodeValue.tType of
    TEMPLATEITEM:
      begin
        qrydebtorWorkflowTemplateItem.close;
        qrydebtorWorkflowTemplateItem.ParamByName('ntemplateitem').AsInteger := pnodeValue.key;
        qrydebtorWorkflowTemplateItem.Open;
        qrydebtorWorkflowTemplateItem.Delete;
        qrydebtorWorkflowTemplateItem.close;
        clearNode(nAddParent);
      end;
  end;
end;

procedure TfrmDebtorTaskTemplate.qryActionNewRecord(DataSet: TDataSet);
begin
  qryAction.FieldByName('AUTO_EMAIL').AsString := 'N';
  qryAction.FieldByName('EMAIL_ALERT').AsString := 'N';
end;

procedure TfrmDebtorTaskTemplate.qrydebtorWorkflowTemplateItemNewRecord(
  DataSet: TDataSet);
begin
  qrydebtorWorkflowTemplateItem.fieldByName('confirmation_required').AsString := 'N';
end;

procedure TfrmDebtorTaskTemplate.dxBarButton2Click(Sender: TObject);
begin
  self.Close;
//  RemoveFromDesktop(Self);
end;

procedure TfrmDebtorTaskTemplate.btnActionAddClick(Sender: TObject);
begin
  if not qryAction.Active then
    qryAction.Open;
  qryAction.Insert;
end;

procedure TfrmDebtorTaskTemplate.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   tmpPath: string;
begin
     case AButtonIndex of
      0: begin
            dlFile.FileName := qryAction.fieldByName('document_path').AsString;
            dlFile.Filter := 'Debtor Statement (*.rtm)|*.rtm|All files (*.*)|*.*';
            if dlFile.Execute then
            begin
               if qryAction.state = dsBrowse then
                  qryAction.edit;
               qryAction.fieldByName('document_path').AsString := dlFile.FileName;
            end;
         end;
      1: begin
            if (pos('.rtm',qryAction.FieldByName('document_path').AsString) = 0) and
                (qryAction.FieldByName('document_path').AsString <> '') then
               MessageDlg('This is not a valid Template.',mtError, [mbOk], 0)
            else
            begin
               tmpPath := qryAction.FieldByName('document_path').AsString;
               if not qryAction.Modified then
                  qryAction.Edit;
               try
                  if (qryAction.FieldByName('document_path').AsString <> '') then
                  begin
                     DebtorReport.Template.FileName := '';
                     DebtorReport.Template.FileName := qryAction.FieldByName('document_path').AsString;
                     try
                        DebtorReport.Template.LoadFromFile;
                     except
                     //
                     end;
                  end;
                  try
                    ppDesigner.ShowModal;
                  except
                  //
                  end;
                  qryAction.FieldByName('document_path').AsString := tmpPath;
               finally
//                  ppDesigner.Free;
               end;
            end;
         end;
   end;
end;

function TfrmDebtorTaskTemplate.resetInserts: boolean;
begin
  resetInserts := false;

  if qrydebtorWorkflowTemplate.State in [dsInsert, dsEdit] then
  begin
    if MsgAsk('Updates pending, are you sure') = mrYes then
      qrydebtorWorkflowTemplate.Cancel
    else
      resetInserts := true;
  end;
  if qrydebtorWorkflowTemplateItem.State in [dsInsert, dsEdit] then
  begin
    if MsgAsk('Updates pending, are you sure') = mrYes then
      qrydebtorWorkflowTemplateItem.Cancel
    else
      resetInserts := true;

  end;
  if qryAction.State in [dsInsert, dsEdit] then
  begin
    if MsgAsk('Updates pending, are you sure') = mrYes then
      qryAction.Cancel
    else
      resetInserts := true;
  end;
end;

procedure TfrmDebtorTaskTemplate.cxBtnAddClick(Sender: TObject);
var pnodeValue: TNodeValue;
  Item: TTreeNode;
begin
  if resetInserts then exit;

  if pcMain.ActivePage = tabAction then
  begin
    qryAction.ReadOnly := false;
    if not qryAction.Active then
      qryAction.Open;
    qryAction.Insert;
  end
  else
  begin
    Item := tvTemplates.Selected;
    if Item = nil then
      exit;
    pnodeValue := Item.Data;
    if pnodeValue = nil then
      exit;

    nAddParent := Item;

    case pnodeValue.tType of
      ROOT:
        begin
          qrydebtorWorkflowTemplate.ReadOnly := false;
          if not qrydebtorWorkflowTemplate.Active then
            qrydebtorWorkflowTemplate.Open;
          pcTemplate.ActivePage := tabTemplateDetails;
          qrydebtorWorkflowTemplate.Insert;
        end;
      TEMPLATE:
        begin
          qrydebtorWorkflowTemplateItem.ReadOnly := false;
          qrydebtorWorkflowTemplateItem.open;
          qrydebtorWorkflowTemplateItem.insert;
          qrydebtorWorkflowTemplateItem.fieldByName('NTEMPLATE').AsInteger := pnodeValue.key;

          pcTemplate.ActivePage := tabTemplateItem;

        end;
    end;
  end;
end;

procedure TfrmDebtorTaskTemplate.cxBtnSubtractClick(Sender: TObject);
var pnodeValue: TNodeValue;
  Item: TTreeNode;
begin
  if resetInserts then exit;
  Item := tvTemplates.Selected;
  if Item = nil then
    exit;
  pnodeValue := Item.Data;
  if pnodeValue = nil then
    exit;

  //nAddParent := Item;

  case pnodeValue.tType of
    TEMPLATEITEM:
      begin
        qrydebtorWorkflowTemplateItem.close;
        qrydebtorWorkflowTemplateItem.ParamByName('ntemplateitem').AsInteger := pnodeValue.key;
        qrydebtorWorkflowTemplateItem.Open;
        qrydebtorWorkflowTemplateItem.Delete;
        qrydebtorWorkflowTemplateItem.close;
        clearNode(nAddParent);
      end;
  end;
end;

procedure TfrmDebtorTaskTemplate.Button1Click(Sender: TObject);
var tt: TfrmInvestmentTransactions;
begin
  tt := TfrmInvestmentTransactions.Create(self);
  tt.ShowModal;
end;

procedure TfrmDebtorTaskTemplate.mergeDBEdit(tEdit : TcxDBTextEdit;sSelString : String);
var snewString: string;
  iPos: integer;
begin
  if tEdit.IsFocused then
  begin
   //
    snewString := tEdit.text;
    iPos := tEdit.SelStart;
    Insert(sSelString, snewString, iPos+1);
   //cxDBDebtorNote.text := snewString;
    qryAction.FieldByName(tEdit.DataBinding.DataField).AsString := snewString;
    tEdit.SelStart := iPos + length(sSelString);
  end
end;

procedure TfrmDebtorTaskTemplate.dxliFieldsClick(Sender: TObject);
var sSelString, snewString: string;
  iPos: integer;
begin
  if dxliFields.ItemIndex = -1 then
    exit;

  sSelString := dxliFields.Items[dxliFields.ItemIndex];

  if qryAction.state = dsBrowse then
    qryAction.edit;

  mergeDBEdit(cxDBDebtorNote,sSelString);
  mergeDBEdit(cxedtGenDoc1,sSelString);
  mergeDBEdit(cxedtGenDoc2,sSelString);
  mergeDBEdit(cxDBSubject,sSelString);
  mergeDBEdit(cxedtGenDoc3, sSelString);

  if cxDBMEmail.IsFocused then
  begin
    snewString := cxDBMEmail.Lines.text;
    iPos := cxDBMEmail.SelStart;
    Insert(sSelString, snewString, iPos);
   //cxDBMEmail.Lines.text := snewString;
    qryAction.FieldByName(cxDBMEmail.DataBinding.DataField).AsString := snewString;
    cxDBMEmail.SelStart := iPos + length(sSelString);
  end;
end;

procedure TfrmDebtorTaskTemplate.pcTemplateChange(Sender: TObject);
begin
  qryEmployee.Close;
  if pcTemplate.ActivePage = tabTemplateItem then
    qryEmployee.open;
end;

procedure TfrmDebtorTaskTemplate.btnImportBlobClick(Sender: TObject);
var sFileName, sShortFile: string;
  iPos: integer;
  bStream, fStream: TStream;
begin
  if not dlFile.Execute then
    exit;

  sFileName := dlFile.FileName;
  sShortFile := sFileName;
        // remove the path information
  while (pos('\', sShortFile) <> 0) do
    sShortFile := RightStr(sShortFile, length(sShortFile) - pos('\', sShortFile));

  if qryAction.State in [dsBrowse] then
    qryAction.edit;

  qryAction.FieldByName('DOCUMENT_NAME').AsString := sShortFile;

        // make sure the file exists

        // check the document

  bStream := qryAction.CreateBlobStream(qryAction.fieldByname('document'), bmReadWrite);
  fStream := TFileStream.Create(sFileName, fmOpenRead);
  bStream.CopyFrom(fStream, fStream.Size);
  bStream.free;
  fStream.free;
end;

procedure TfrmDebtorTaskTemplate.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (ssCtrl in Shift) and (key = VK_F4) then
      Self.Close;
end;

procedure TfrmDebtorTaskTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryEmployee.Close;
   qryActions.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmDebtorTaskTemplate.cxDBComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
   if cmbElapsedMode.Text = 'Days' then
   begin
      edElapsedDays.Visible := True;
      edElapsedMonths.Visible := False;
      edElapsedMonths.EditValue := 0;
   end
   else
   begin
      edElapsedDays.Visible := False;
      edElapsedMonths.Visible := True;
      edElapsedDays.EditValue := 0;
   end;
end;

procedure TfrmDebtorTaskTemplate.cmbElapsedModePropertiesChange(
  Sender: TObject);
begin
   if cmbElapsedMode.Text = 'Days' then
   begin
      edElapsedDays.Visible := True;
      edElapsedMonths.Visible := False;
      edElapsedMonths.EditValue := 0;
   end
   else
   begin
      edElapsedDays.Visible := False;
      edElapsedMonths.Visible := True;
      edElapsedDays.EditValue := 0;
   end;
end;

procedure TfrmDebtorTaskTemplate.tvActionsCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   qryAction.close;
   qryAction.ParamByName('NACTION').AsInteger := tvActionsNACTION.EditValue;
   qryAction.open;
   qryAction.ReadOnly := not dmAxiom.Security.CollectionsManagement.EditAction;
end;

end.

