unit WorkFlowDocTemplates;
(*
  WorkFlow Document Templates

  Used for entry of workflow document templates.

  Mathew Dredge, Aug-Sep 2002
  --alter table workflowdoctemplates add referredoptional char(1) default 'N'
--update workflowdoctemplates set referredoptional = 'N'
 *)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ImgList, ActnList, ToolWin, ComCtrls, DBActns,
  VirtualTrees, ActnMan, ActnCtrls, StdCtrls, ExtCtrls, StdActns, Menus,
  WorkFlowDocumentMerge, ActiveX, dxBar,
  dxBarExtItems, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxGraphics, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppDB,
  ppDBPipe, DB, OracleUniProvider, Uni, DBAccess, MemDS, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, myChkBox, ppRegion, ppStrtch, ppSubRpt, ppParameter,
  XPStyleActnCtrls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  ppDesignLayer, System.Actions, cxBarEditItem, cxCheckBox, System.ImageList;

const
  C_SETTINGOWNER      = 'WKFDOCTEMPLATES';
  C_SHOWNOTUSEDID     = '--SHOW NOT USED';
  C_INSERTNOTUSEDHERE = '-- INSERT NOT USED HERE';
  C_SHOWNOTUSED       = 'AND docid NOT IN (SELECT DOCID FROM workflowtaskdoclink)';
  C_ADMINDOCSCAPTION  = 'Admin Documents';
  C_CLIENT            = 'Client';
  C_SHOWNOTUSEDORDER  = 'order by documentname';

type
  // node information for tree
  TTDNodeType = (ntParty,ntOther,ntDoc,ntAdmin, ntGroup, ntGroupParty, ntGroupOther, ntNone);
var
  TTDNoteTypeDesc: array[TTDNodeType] of String = ('Party','Other','Doc','Admin','Group', 'Group Party','Group Other','None');
type
  TSelectedNodeInfo = record
    NodeType: TTDNodeType;
    PartyType: String;
    DocID: Integer;
    GroupID: Integer;
  end;

  TfmWorkFlowDocTemplates = class(TForm)
    ImageList: TImageList;
    aDelete: TDataSetDelete;
    aEdit: TDataSetEdit;
    aAdd: TDataSetInsert;
    vtDocs: TVirtualStringTree;
    ActionManager: TActionManager;
    pBottom: TPanel;
    bnCancel: TButton;
    bnOk: TButton;
    pmDocuments: TPopupMenu;
    miAddDocument: TMenuItem;
    miEditDocument: TMenuItem;
    miDeleteDocument: TMenuItem;
    aOpenDocument: TAction;
    N1: TMenuItem;
    miOpenDocument: TMenuItem;
    aFileCopy: TAction;
    aFileRename: TAction;
    aFileMove: TAction;
    aFileDelete: TAction;
    aFileExplorer: TAction;
    SystemImages: TImageList;
    N2: TMenuItem;
    miFileRename: TMenuItem;
    miFileMove: TMenuItem;
    miFileCopy: TMenuItem;
    miFileDelete: TMenuItem;
    miFileExplorer: TMenuItem;
    aClose: TAction;
    aOptions: TAction;
    aEditCut: TEditCut;
    aEditCopy: TEditCopy;
    aEditPaste: TEditPaste;
    N3: TMenuItem;
    miCut: TMenuItem;
    miCopy: TMenuItem;
    miPaste: TMenuItem;
    aPrint: TAction;
    aFileSaveAs: TFileSaveAs;
    aGroups: TAction;
    actExit: TAction;
    cmbType: TcxComboBox;
    cmbShow: TcxComboBox;
    cmbWorkflowType: TcxLookupComboBox;
    dxBarManager1: TdxBarManager;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarStatic3: TdxBarStatic;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    dxBarButton1: TdxBarButton;
    tbtnEdit: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    dxBarControlContainerItem5: TdxBarControlContainerItem;
    ppReport1: TppReport;
    qryDocTemplates: TUniQuery;
    dsDocTemplates: TUniDataSource;
    plDocTemplates: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape1: TppShape;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    OraQuery2: TUniQuery;
    OraDataSource2: TUniDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText8: TppDBText;
    ppParameterList1: TppParameterList;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppDBText7: TppDBText;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    actCopyTmplate: TAction;
    CopyTemplate1: TMenuItem;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    procedure aAddExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure vtDocsInitNode(Sender: TBaseVirtualTree; ParentNode,
      Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
    procedure vtDocsInitChildren(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var ChildCount: Cardinal);
    procedure aDeleteExecute(Sender: TObject);
    procedure aEditUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aWorkflowTypeLookupChanged(Sender: TObject);
    procedure aAddUpdate(Sender: TObject);
    procedure vtDocsExpanded(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure aOpenDocumentUpdate(Sender: TObject);
    procedure aOpenDocumentExecute(Sender: TObject);
    procedure aFileExplorerExecute(Sender: TObject);
    procedure aFileCopyExecute(Sender: TObject);
    procedure aFileRenameExecute(Sender: TObject);
    procedure aFileMoveExecute(Sender: TObject);
    procedure aFileDeleteExecute(Sender: TObject);
    procedure vtDocsGetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure aOptionsExecute(Sender: TObject);
    procedure vtDocsDragAllowed(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure vtDocsDragDrop(Sender: TBaseVirtualTree; Source: TObject;
      DataObject: IDataObject; Formats: TFormatArray; Shift: TShiftState;
      Pt: TPoint; var Effect: Integer; Mode: TDropMode);
    procedure vtDocsDragOver(Sender: TBaseVirtualTree; Source: TObject;
      Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
      var Effect: Integer; var Accept: Boolean);
    procedure vtDocsNodeCopied(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vtDocsNodeMoved(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vtDocsNodeCopying(Sender: TBaseVirtualTree; Node,
      NewParent: PVirtualNode; var Allowed: Boolean);
    procedure vtDocsNodeMoving(Sender: TBaseVirtualTree; Node,
      NewParent: PVirtualNode; var Allowed: Boolean);
    procedure vtDocsLoadNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Stream: TStream);
    procedure vtDocsSaveNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Stream: TStream);
    procedure aEditCutExecute(Sender: TObject);
    procedure aEditCutUpdate(Sender: TObject);
    procedure aEditCopyExecute(Sender: TObject);
    procedure aEditPasteExecute(Sender: TObject);
    procedure aEditPasteUpdate(Sender: TObject);
    procedure aDeleteUpdate(Sender: TObject);
    procedure aShowFilterComboChange(Sender: TObject);
    procedure aWorkflowTypeLookupUpdate(Sender: TObject);
    procedure aTypeListComboChange(Sender: TObject);
    procedure aFileSaveAsAccept(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure vtDocsPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure aGroupsExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSubReport1Print(Sender: TObject);
    procedure vtDocsGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure actCopyTmplateExecute(Sender: TObject);
    procedure cmbWorkflowTypePropertiesSortingChanged(Sender: TObject);
    procedure cmbWorkflowTypePropertiesInitPopup(Sender: TObject);
  private
    FLimitTo: String;
    FEmptyTree: Boolean;

    FSelectedNode: TSelectedNodeInfo;
    FExpandedNodes: array of TSelectedNodeInfo;
    FDocImageIndexes: TStringList;
    FMergeType: TMergeDocumentClass;
    FDontUpdate: Boolean;
    FUpdate: Boolean;
    FAdminDocs: Boolean;
    FExpanding: Boolean;

    procedure SetWorkflowTypeCode(const Value: String);
    procedure CheckMatterOthers(AMatter: String);
    procedure CheckMatterParty(AMatter: String);
    procedure CheckMatterPartyDocs(AMatter, AParty: String);
    procedure CheckMatterGroupParty(AMatter: String; AGroupID: Integer);
    procedure CheckMatterGroupPartyDocs(AMatter: String; AGroupID: Integer; AParty: String);
    procedure CheckMatterGroupOthers(AMatter: String; AGroupID: Integer);
    procedure CheckAdminDocs(AGroupID: Integer; AWorkflow: string = '');
    procedure RefreshTree();
    procedure RefreshTreeTaskDocs();
    procedure RefreshTreeAdminDocs();
    { Private declarations }
    procedure IterateID(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);

    procedure IterSaveExpanded(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    procedure SaveTreeExpanded();
    procedure ResizeColumns();
    procedure GetFileIcon(AName: String);
    function GetWorkflowTypeCode: String;
    procedure AddWorkflowDoc(TemplCopy: boolean = False);
    procedure AddAdminDoc;
    procedure EditAdminDoc;
    procedure EditWorkflowDoc;
    function GetOtherParties(ANode: PVirtualNode): String;
    procedure IterSelectLast(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
    procedure SelectLastSelected();
    procedure ExpandToSelectedDoc(ADocType: String);
    procedure ExpandToSelectedAdminDoc(ADocType: String);
    function HasDataForms(ADocID: integer): boolean;
  public
    { Public declarations }
    procedure GetDocIDs(AIDs: TStringList);
    property WorkflowTypeCode: String read GetWorkflowTypeCode write SetWorkflowTypeCode;
    property LimitTo: String read FLimitTo write FLimitTo;
    property AdminDocs: Boolean read FAdminDocs write FAdminDocs default false;

    procedure DoMouseWheel(Sender: TObject);
    procedure LookupViewMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  end;

var
  fmWorkFlowDocTemplates: TfmWorkFlowDocTemplates;

implementation

uses WorkFlowDataModule, WorkFlowAddDocTemplateDialog, ShellAPI, CommCtrl,
  CopyMoveFileDialog, WorkFlowDocumentMergeOptions, MiscFunc, ClipBrd,
  WorkflowAddAdminDocTemplateDialog, Printers, 
  WorkFlowDocumentGroupsDialog, WorkFlowDataModuleDocs, Desktop, AxiomData;

{$R *.DFM}

// tree data record definition.
type
  PDocData = ^TDocData;
  TDocData = record
    NodeType: TTDNodeType;
    DocId,
    GroupID: Integer;
    GroupName,
    MatterCode,
    PartyType,
    DocName,
    DocPath,
    TemplatePath,
    DataFilePath,
    DataForm: String;
    OtherParties: array of String;
    ReferredOptional: Boolean;
    Active,
    WorkFlowOnly: String;
    Classification: String;
    Category: String;

  end;
TDocColumns = (tdcDocument = 0, tdcOtherParties = 1, tdcTemplateFileName = 2, tdcDataFileName = 3, tdcDocumentFileName = 4, tdcDataForm = 5, tdcActive = 6, tdcWorkflowOnly = 7, tdcCategory = 8, tdcClassification = 9);

// add a document to the tree.
procedure TfmWorkFlowDocTemplates.aAddExecute(Sender: TObject);
begin
  SaveTreeExpanded();
  dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();

  dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Open();
  try
    dmWorkFlowDataModuleDocs.tbdocTemplatesEdit.FieldByName('WORKFLOW_ONLY').DefaultExpression := QuotedStr(SystemString('DFLT_WKFLOW_DOC_TEMPL_2_WKFLOW'));
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Append();

    dmWorkFlowDataModuleDocs.tbdocTemplatesEdit.FieldByName('ACTIVE').AsString := 'Y';
    dmWorkFlowDataModuleDocs.tbdocTemplatesEdit.FieldByName('MERGE_DOCUMENT').AsString := 'Y';
    dmWorkFlowDataModuleDocs.qPhoneGroupings.Open();

//    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger := 0;
    if(AdminDocs) then
    begin
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOWTYPECODE').Clear();
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEADMIN;
      AddAdminDoc();
    end else
    begin
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOWTYPECODE').AsString := cmbWorkflowType.EditValue;
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPECLIENT;
      AddWorkflowDoc();
    end;
  finally
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();
  end;
end;

procedure TfmWorkFlowDocTemplates.AddWorkflowDoc(TemplCopy: boolean = False);
var
  LGroupData, LPartyData, LNodeData, LOtherData, LNoPartyData: PDocData;
  LNode: PVirtualNode;

  LOPID, LOPOrder,LOPLastOrder: Integer;
  LOPPartyType,
  LOldTemplate,
  LNewTemplate: String;
begin
   fmWorkFlowAddDocTemplateDialog := TfmWorkFlowAddDocTemplateDialog.Create(Self);
   try

    // select party/other depending on selected node.. yupee..
      if(Assigned(vtDocs.FocusedNode)) then
      begin
         LNode := vtDocs.FocusedNode;
         LPartyData := nil;
         LGroupData := nil;
         LOtherData := nil;
         while(Assigned(LNode) and (LNode <> vtDocs.RootNode)) do
         begin
            LNodeData := vtDocs.GetNodeData(LNode);

            case LNodeData.NodeType of
               ntGroupParty,
               ntParty:       LPartyData := LNodeData;
               ntGroupOther,
               ntOther:       LOtherData := LNodeData;
               ntGroup:       LGroupData := LNodeData;
            end;
            LNode := LNode.Parent;
         end;

         if(Assigned(LPartyData)) then
         begin
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEPARTY;
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString := LPartyData.PartyType;
         end;

         if(Assigned(LOtherData)) or (Assigned(LNoPartyData)) then
         begin
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPECLIENT;
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').Clear();
         end;

         if(Assigned(LGroupData)) then
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsInteger := LGroupData.GroupID
         else
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').Clear();
      end;

      fmWorkFlowAddDocTemplateDialog.feTemplatePath.Enabled := moNeedsTemplatePath in FMergeType.Options;
      fmWorkFlowAddDocTemplateDialog.feDataFilePath.Enabled := moNeedsDataFilePath in FMergeType.Options;
      fmWorkFlowAddDocTemplateDialog.feDocumentName.Enabled := moNeedsDocumentPath in FMergeType.Options;
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('REFERREDOPTIONAL').AsString := 'N';

      LOldTemplate := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString;

      if(fmWorkFlowAddDocTemplateDialog.ShowModal() = mrOk) then
      begin
         if (LOldTemplate <> dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString) and
            (TemplCopy = True) then
         begin
            LNewTemplate := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString;
            if CopyFile(PChar(LOldTemplate),PChar(LNewTemplate), False) = false then
               MsgErr('Template File not copied');
         end;

         if fmWorkFlowAddDocTemplateDialog.rbAddrTypeClient.Checked then
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPECLIENT
         else
         if fmWorkFlowAddDocTemplateDialog.rbAddrTypeParty.Checked then
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEPARTY
         else
         if fmWorkFlowAddDocTemplateDialog.rbAddrTypeNone.Checked then
            dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEADMIN;

         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Post();

         LOPLastOrder := 0;
         while(fmWorkFlowAddDocTemplateDialog.GetNextParty(LOPLastOrder,LOPID, LOPOrder, LOPPartyType)) do
         begin
            dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('docid').AsInteger     := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;
            dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('listorder').AsInteger := LOPOrder;
            dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('partytype').AsString  := LOPPartyType;
            dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ExecSQL();
            LOPLastOrder := LOPOrder;
         end;

      // ensure selected.
         FSelectedNode.DocID     := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;
         FSelectedNode.NodeType  := ntDoc;
         FSelectedNode.PartyType := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString;
         if(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').IsNull) then
            FSelectedNode.GroupID := -1
         else
            FSelectedNode.GroupID := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsInteger;

         ExpandToSelectedDoc(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString);

         RefreshTree();
         if frmDesktop.pagMainControl.ActivePageIndex = 1 then
            ActiveControl := vtDocs;
    end
    else
    begin
      dmWorkFlowDataModuleDocs.qPhoneGroupings.Close();
      if (TemplCopy = True) then
      begin
         with dmWorkflowDataModuleDocs.qryTmp do
         begin
            SQL.Text := 'DELETE FROM AXIOM.WKFLOWDOCTEMPLATES_DATAFIELDS W '+
                        'WHERE W.WORKFLOWDOCTEMPLATES_DOCID = :DOCID ';
             ParamByName('DOCID').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;
             ExecSQL;
         end;

         with dmWorkflowDataModuleDocs.qryTmp do
         begin
            SQL.Text := 'DELETE FROM AXIOM.workflowdtotherparties W '+
                        'WHERE W.DOCID = :DOCID ';
             ParamByName('DOCID').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;
             ExecSQL;
         end;
      end;
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Cancel();
    end;
   finally
      FreeAndNil(fmWorkFlowAddDocTemplateDialog);
   end;
end;

procedure TfmWorkFlowDocTemplates.actCopyTmplateExecute(Sender: TObject);
var
   LNodeData: PDocData;
   LOldDOCID,
   LNewDOCID: integer;
   LOldDOCTYPE,
   LOldREFERREDOPTIONAL,
   LOldGROUPID,
   LOldNPRECCATEGORY,
   LOldNPRECCLASSIFICATION,
   LOldWORKFLOW_ONLY,
   LOldACTIVE,
   LOldDATAFORM,
   LOldWORKFLOWTYPECODE,
   LOldDOCUMENTNAME,
   LOldDOCUMENTPATH,
   LOldTEMPLATEPATH,
   LOldDATAFILEPATH,
   LOldPARTYTYPE,
   LOldOTHERPARTY1,
   LOldOTHERPARTY2,
   LOldOTHERPARTY3: string;
begin
   SaveTreeExpanded();
   LNodeData := vtDocs.GetNodeData(vtDocs.FocusedNode);

   dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();

   dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Open();
   try
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.First();
      if(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Locate('docid',LNodeData.DocId,[])) then
      begin
         // store current record details
         LOldDOCID := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('docid').AsInteger;
         LOldDOCTYPE := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('doctype').AsString;
         LOldREFERREDOPTIONAL  := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('REFERREDOPTIONAL').AsString;
         LOldGROUPID  := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsString;
         LOldNPRECCATEGORY  := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCATEGORY').AsString;
         LOldNPRECCLASSIFICATION  := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCLASSIFICATION').AsString;
         LOldWORKFLOW_ONLY  := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOW_ONLY').AsString;
         LOldACTIVE  := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('ACTIVE').AsString;
         LOldDATAFORM  := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFORM').AsString;
         LOldWORKFLOWTYPECODE  := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOWTYPECODE').AsString;
         LOldDOCUMENTNAME := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTNAME').AsString;
         LOldDOCUMENTPATH := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTPATH').AsString;
         LOldTEMPLATEPATH := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString;
         LOldDATAFILEPATH := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFILEPATH').AsString;
         LOldPARTYTYPE := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString;
         LOldOTHERPARTY1 := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('OTHERPARTY1').AsString;
         LOldOTHERPARTY2 := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('OTHERPARTY2').AsString;
         LOldOTHERPARTY3 := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('OTHERPARTY3').AsString;

         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Open();

         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Append();

         LNewDOCID := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('docid').AsInteger;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('doctype').AsString := LOldDOCTYPE;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('REFERREDOPTIONAL').AsString := LOldREFERREDOPTIONAL;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsString := LOldGROUPID;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCATEGORY').AsString := LOldNPRECCATEGORY;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCLASSIFICATION').AsString := LOldNPRECCLASSIFICATION;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOW_ONLY').AsString := LOldWORKFLOW_ONLY;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('ACTIVE').AsString := LOldACTIVE;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFORM').AsString := LOldDATAFORM;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOWTYPECODE').AsString := LOldWORKFLOWTYPECODE;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTNAME').AsString := LOldDOCUMENTNAME;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTPATH').AsString := LOldDOCUMENTPATH;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString := LOldTEMPLATEPATH;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFILEPATH').AsString := LOldDATAFILEPATH;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString := LOldPARTYTYPE;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('OTHERPARTY1').AsString := LOldOTHERPARTY1;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('OTHERPARTY2').AsString := LOldOTHERPARTY2;
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('OTHERPARTY3').AsString := LOldOTHERPARTY3;

         with dmWorkflowDataModuleDocs.qryTmp do
         begin
            SQL.Text := 'INSERT INTO AXIOM.WKFLOWDOCTEMPLATES_DATAFIELDS (WORKFLOWDOCTEMPLATES_DOCID,'+
                       'SEQ, CAPTION, DATAFORM, FIELDNAME ) '+
                       'SELECT :LNewDOCID, W.SEQ, W.CAPTION, '+
                       'W.DATAFORM, W.FIELDNAME '+
                       'FROM AXIOM.WKFLOWDOCTEMPLATES_DATAFIELDS W '+
                       'WHERE W.WORKFLOWDOCTEMPLATES_DOCID = :DOCID ';
             ParamByName('LNewDOCID').AsInteger := LNewDOCID;
             ParamByName('DOCID').AsInteger := LOldDOCID;
             ExecSQL;
         end;

         with dmWorkflowDataModuleDocs.qryTmp do
         begin
            SQL.Text := 'INSERT INTO AXIOM.WORKFLOWDTOTHERPARTIES (DOCID, LISTORDER,PARTYTYPE) '+
                       'SELECT :LNewDOCID, W.LISTORDER, W.PARTYTYPE '+
                       'FROM AXIOM.workflowdtotherparties W '+
                       'WHERE W.DOCID = :DOCID ';
             ParamByName('LNewDOCID').AsInteger := LNewDOCID;
             ParamByName('DOCID').AsInteger := LOldDOCID;
             ExecSQL;
         end;

         dmWorkFlowDataModuleDocs.qPhoneGroupings.Open();
         if(AdminDocs) then
            AddAdminDoc()
         else
            AddWorkflowDoc(True)
      end;
   finally
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();
   end;
end;

procedure TfmWorkFlowDocTemplates.AddAdminDoc();
begin

  fmWorkFlowAddAdminDocTemplateDialog := TfmWorkFlowAddAdminDocTemplateDialog.Create(Self);
  try
    fmWorkFlowAddAdminDocTemplateDialog.feTemplatePath.Enabled := moNeedsTemplatePath in FMergeType.Options;
    fmWorkFlowAddAdminDocTemplateDialog.feDataFilePath.Enabled := moNeedsDataFilePath in FMergeType.Options;
    fmWorkFlowAddAdminDocTemplateDialog.feDocumentName.Enabled := moNeedsDocumentPath in FMergeType.Options;

    if(fmWorkFlowAddAdminDocTemplateDialog.ShowModal() = mrOk) then
    begin
      FSelectedNode.DocID     := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;
      FSelectedNode.NodeType  := ntDoc;
      FSelectedNode.PartyType := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString;
      FSelectedNode.GroupID   := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsInteger;

      ExpandToSelectedAdminDoc(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString);

      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Post();
      RefreshTree();
      if frmDesktop.pagMainControl.ActivePageIndex = 1 then
         ActiveControl := vtDocs;
    end else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Cancel();
  finally
    FreeAndNil(fmWorkFlowAddAdminDocTemplateDialog);
  end;
end;

procedure TfmWorkFlowDocTemplates.SetWorkflowTypeCode(const Value: String);
begin
  cmbWorkflowType.EditValue := Value;
end;

// edit the document.
procedure TfmWorkFlowDocTemplates.aEditExecute(Sender: TObject);
var
  LNodeData: PDocData;
begin
   if assigned(FMergeType) then
   begin
     SaveTreeExpanded();
     LNodeData := vtDocs.GetNodeData(vtDocs.FocusedNode);

     dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();

     dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Open();
     try
       dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.First();
       if(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Locate('docid',LNodeData.DocId,[])) then
       begin
         dmWorkFlowDataModuleDocs.qPhoneGroupings.Open();
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Edit();
         if(AdminDocs) then
           EditAdminDoc()
         else
           EditWorkflowDoc()
       end;
     finally
       dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();
     end;
   end;
end;

procedure TfmWorkFlowDocTemplates.EditAdminDoc();
begin
  fmWorkFlowAddAdminDocTemplateDialog := TfmWorkFlowAddAdminDocTemplateDialog.Create(self);
  try
    fmWorkFlowAddAdminDocTemplateDialog.Caption := 'Edit Admin Document Template';
    fmWorkFlowAddAdminDocTemplateDialog.feTemplatePath.Enabled := moNeedsTemplatePath in FMergeType.Options;
    fmWorkFlowAddAdminDocTemplateDialog.feDataFilePath.Enabled := moNeedsDataFilePath in FMergeType.Options;
    fmWorkFlowAddAdminDocTemplateDialog.feDocumentName.Enabled := moNeedsDocumentPath in FMergeType.Options;

    if(fmWorkFlowAddAdminDocTemplateDialog.ShowModal() = mrOk) then
    begin
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Post();
      FSelectedNode.DocID     := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;
      FSelectedNode.NodeType  := ntDoc;
      FSelectedNode.PartyType := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString;
      FSelectedNode.GroupID   := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsInteger;

      ExpandToSelectedAdminDoc(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString);
      RefreshTree();
      if frmDesktop.pagMainControl.ActivePageIndex = 1 then
         ActiveControl := vtDocs;
    end else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Cancel();
    dmWorkFlowDataModuleDocs.qPhoneGroupings.Close();
  finally
    FreeAndNil(fmWorkFlowAddAdminDocTemplateDialog);
  end;
end;

procedure TfmWorkFlowDocTemplates.EditWorkflowDoc();
var
  LOPID, LOPOrder,LOPLastOrder: Integer;
  LOPPartyType: String;
  i: Integer;
begin
  fmWorkFlowAddDocTemplateDialog := TfmWorkFlowAddDocTemplateDialog.Create(Self);
  try
    dmWorkFlowDataModuleDocs.qDocTemplOtherParties.ParamByName('docid').AsInteger := FSelectedNode.DocID;
    dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Open();
    try
      while(not dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Eof) do
      begin
        fmWorkFlowAddDocTemplateDialog.AddPartyType(
          dmWorkFlowDataModuleDocs.qDocTemplOtherParties.FieldByName('ID').AsInteger,
          dmWorkFlowDataModuleDocs.qDocTemplOtherParties.FieldByName('LISTORDER').AsInteger,
          dmWorkFlowDataModuleDocs.qDocTemplOtherParties.FieldByName('PARTYTYPE').AsString);

        dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Next();
      end;
    finally
      dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Close();
    end;

    fmWorkFlowAddDocTemplateDialog.Caption := 'Edit Document Template';
    fmWorkFlowAddDocTemplateDialog.feTemplatePath.Enabled := moNeedsTemplatePath in FMergeType.Options;
    fmWorkFlowAddDocTemplateDialog.feDataFilePath.Enabled := moNeedsDataFilePath in FMergeType.Options;
    fmWorkFlowAddDocTemplateDialog.feDocumentName.Enabled := moNeedsDocumentPath in FMergeType.Options;

    if(fmWorkFlowAddDocTemplateDialog.ShowModal() = mrOk) then
    begin
      if fmWorkFlowAddDocTemplateDialog.rbAddrTypeClient.Checked then
          dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPECLIENT
      else
      if fmWorkFlowAddDocTemplateDialog.rbAddrTypeParty.Checked then
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEPARTY
      else
      if fmWorkFlowAddDocTemplateDialog.rbAddrTypeNone.Checked then
         dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEADMIN;

      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Post();

      // save other parties..
      LOPLastOrder := 0;
      while(fmWorkFlowAddDocTemplateDialog.GetNextParty(LOPLastOrder,LOPID, LOPOrder, LOPPartyType)) do
      begin
        if(LOPID = 0) then
        begin
          // insert
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('docid').AsInteger     := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('listorder').AsInteger := LOPOrder;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('partytype').AsString  := LOPPartyType;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ExecSQL();
        end else
        begin
          // update.
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesUpdate.ParamByName('id').AsInteger     :=    LOPID;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesUpdate.ParamByName('listorder').AsInteger := LOPOrder;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesUpdate.ParamByName('partytype').AsString  := LOPPartyType;
          dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesUpdate.ExecSQL();
        end;

        LOPLastOrder := LOPOrder;
      end;

      // delete the deleted ones.
      for i := 0 to Length(fmWorkFlowAddDocTemplateDialog.FDeleted) - 1 do
      begin
        dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesDelete.ParamByName('id').AsInteger := fmWorkFlowAddDocTemplateDialog.FDeleted[i];
        dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesDelete.ExecSQL();
      end;

      FSelectedNode.DocID     := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;
      FSelectedNode.NodeType  := ntDoc;
      FSelectedNode.PartyType := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString;

      if(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').IsNull) then
        FSelectedNode.GroupID := -1
      else
        FSelectedNode.GroupID := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsInteger;

      ExpandToSelectedDoc(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString);

      RefreshTree();
      if frmDesktop.pagMainControl.ActivePageIndex = 1 then
         ActiveControl := vtDocs;
    end else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Cancel();
    dmWorkFlowDataModuleDocs.qPhoneGroupings.Close();
  finally
    FreeAndNil(fmWorkFlowAddDocTemplateDialog);
  end;
end;

procedure TfmWorkFlowDocTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FreeAndNil(FDocImageIndexes);
//   RemoveFromDesktop(Self);
{  SettingSave(C_SETTINGOWNER,'WINDOWSTATE', Integer(WindowState));
  if(WindowState <> wsMaximized) then
  begin
    SettingSave(C_SETTINGOWNER,'LEFT', Left);
    SettingSave(C_SETTINGOWNER,'WIDTH', Width);
    SettingSave(C_SETTINGOWNER,'TOP', Top);
    SettingSave(C_SETTINGOWNER,'HEIGHT', Height);
  end;

  Action := caFree;               }
  RemoveFromDesktop(Self);
end;

procedure TfmWorkFlowDocTemplates.FormCreate(Sender: TObject);
begin
  DoMouseWheel(cmbWorkflowType);
  FExpanding := False;
  FDontUpdate := True;
  FUpdate := False;
  FMergeType := GetWorkFlowMergeTypeClass();
  FEmptyTree := True;
  FDocImageIndexes := TStringList.Create();

  if(not Assigned(dmWorkFlowDataModule)) then
    dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);

//  dmWorkFlowDataModuleDocs.tbDocTemplates.Open();
  vtDocs.NodeDataSize := SizeOf(TDocData);

{  if(SettingLoadInteger(C_SETTINGOWNER,'LEFT') <> 0) then
  begin
    Left        := SettingLoadInteger(C_SETTINGOWNER,'LEFT');
    Width       := SettingLoadInteger(C_SETTINGOWNER,'WIDTH');
    Top         := SettingLoadInteger(C_SETTINGOWNER,'TOP');
    Height      := SettingLoadInteger(C_SETTINGOWNER,'HEIGHT');
  end;
  WindowState := TWindowState(SettingLoadInteger(C_SETTINGOWNER,'WINDOWSTATE')); }
end;

// initalise the data for the tree node.
procedure TfmWorkFlowDocTemplates.vtDocsInitNode(Sender: TBaseVirtualTree;
  ParentNode, Node: PVirtualNode;
  var InitialStates: TVirtualNodeInitStates);
var
  LNodeData, LParentData: PDocData;
  i: Integer;

  procedure GetOtherParties(ANodeData: PDocData);
  var
    i: Integer;
  begin
    dmWorkFlowDataModuleDocs.qDocTemplOtherParties.ParamByName('docid').AsInteger := ANodeData.DocID;
    dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Open();
    try
      SetLength(ANodeData.OtherParties,dmWorkFlowDataModuleDocs.qDocTemplOtherParties.RecordCount);
      i := 0;
      while(not dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Eof) do
      begin
        ANodeData.OtherParties[i] := dmWorkFlowDataModuleDocs.qDocTemplOtherParties.FieldByName('PARTYTYPE').AsString;
        Inc(i);
        dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Next();
      end;
    finally
      dmWorkFlowDataModuleDocs.qDocTemplOtherParties.Close();
    end;
  end;
begin
//    if(vsInitialized in Node.States) then
//      Exit;

  if(not Assigned(ParentNode)) then
  begin
    LNodeData   := Sender.GetNodeData(Node);

    if(AdminDocs) then
    begin
      LNodeData.NodeType := ntAdmin;
      LNodeData.PartyType := '';
      LNodeData.DocId := -1;
      if(not dmWorkFlowDataModuleDocs.qAdminUsedGroups.Active) then
        dmWorkFlowDataModuleDocs.qAdminUsedGroups.Open();

      if(Assigned(Node.PrevSibling)) then
        dmWorkFlowDataModuleDocs.qAdminUsedGroups.Next()
      else
        dmWorkFlowDataModuleDocs.qAdminUsedGroups.First();
      LNodeData.GroupID   := dmWorkFlowDataModuleDocs.qAdminUsedGroups.FieldByName('GROUPID').AsInteger;
      LNodeData.GroupName := dmWorkFlowDataModuleDocs.qAdminUsedGroups.FieldByName('NAME').AsString;
    end else
    begin
      CheckMatterParty(cmbWorkflowType.EditValue);

      if(Assigned(Node.PrevSibling)) then
        dmWorkFlowDataModuleDocs.qDocTemplMatterParty.Next()
      else
        dmWorkFlowDataModuleDocs.qDocTemplMatterParty.First();

      LNodeData.MatterCode := cmbWorkflowType.EditValue;
      LNodeData.DocId      := -1;

      if(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.FieldByName('TYPE').AsString = 'P') then
      begin
        LNodeData.PartyType  := dmWorkFlowDataModuleDocs.qDocTemplMatterParty.FieldByName('NAME').AsString;
        if(LNodeData.PartyType = C_CLIENT) then
          LNodeData.NodeType   := ntOther
        else
          LNodeData.NodeType   := ntParty;
        LNodeData.GroupID   := -1;
      end
      else
      if(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.FieldByName('TYPE').AsString = 'A') then
      begin
        LNodeData.PartyType  := dmWorkFlowDataModuleDocs.qDocTemplMatterParty.FieldByName('NAME').AsString;
        LNodeData.NodeType   := ntAdmin;
        LNodeData.GroupID   := dmWorkFlowDataModuleDocs.qDocTemplMatterParty.FieldByName('ID').AsInteger;
      end
      else
      begin
        LNodeData.GroupID   := dmWorkFlowDataModuleDocs.qDocTemplMatterParty.FieldByName('ID').AsInteger;
        LNodeData.GroupName := dmWorkFlowDataModuleDocs.qDocTemplMatterParty.FieldByName('NAME').AsString;
        LNodeData.NodeType  := ntGroup;
      end;
    end;
    InitialStates := InitialStates + [ivsHasChildren];
  end else
  begin
    LParentData := Sender.GetNodeData(ParentNode);
    LNodeData   := Sender.GetNodeData(Node);
    case LParentData.NodeType of
      ntParty:
      begin
        CheckMatterPartyDocs(LParentData.MatterCode, LParentData.PartyType);

        if(Assigned(Node.PrevSibling)) then
          dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.Next()
        else
          dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.First();

        LNodeData.NodeType          := ntDOC;
        LNodeData.MatterCode        := LParentData.MatterCode;
        LNodeData.PartyType         := LParentData.PartyType;
        LNodeData.DocID             := dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('DOCID').AsInteger;
        LNodeData.DocName           := dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('DOCUMENTNAME').DisplayText;
        LNodeData.DocPath           := dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('DOCUMENTPATH').DisplayText;
        LNodeData.TemplatePath      := dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('TEMPLATEPATH').DisplayText;
        LNodeData.DataFilePath      := dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('DATAFILEPATH').DisplayText;
        LNodeData.ReferredOptional  := dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('REFERREDOPTIONAL').AsString = 'Y';
        if dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('DATAFORM').IsNull and
            (not HasDataForms(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('DOCID').AsInteger)) then
            LNodeData.DataForm         := 'N'
        else
            LNodeData.DataForm         := 'Y';
        LNodeData.GroupID           := LParentData.GroupID;
        LNodeData.GroupName         := LParentData.GroupName;
        LNodeData.Active            := dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('ACTIVE').DisplayText;
        LNodeData.WorkFlowOnly      := dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('WORKFLOW_ONLY').DisplayText;
        LNodeData.Classification    := TableString('PRECCLASSIFICATION','NPRECCLASSIFICATION', dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('NPRECCATEGORY').AsString, 'DESCR');
        LNodeData.Category          := TableString('PRECCATEGORY','NPRECCATEGORY', dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.FieldByName('NPRECCLASSIFICATION').AsString, 'DESCR');

        GetOtherParties(LNodeData);

        GetFileIcon(LNodeData.DocPath);
      end;
      ntOther:
      begin
        CheckMatterOthers(LParentData.MatterCode);
        if(Assigned(Node.PrevSibling)) then
          dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.Next()
        else
          dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.First();
        LNodeData.NodeType          := ntDOC;
        LNodeData.MatterCode        := LParentData.MatterCode;
        LNodeData.DocID             := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('DOCID').AsInteger;
        LNodeData.DocName           := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('DOCUMENTNAME').DisplayText;
        LNodeData.DocPath           := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('DOCUMENTPATH').DisplayText;
        LNodeData.TemplatePath      := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('TEMPLATEPATH').DisplayText;
        LNodeData.DataFilePath      := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('DATAFILEPATH').DisplayText;
        LNodeData.ReferredOptional  := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('REFERREDOPTIONAL').AsString = 'Y';
        if dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('DATAFORM').IsNull and (not HasDataForms(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('DOCID').AsInteger)) then
         LNodeData.DataForm         := 'N'
        else
         LNodeData.DataForm         := 'Y';
//        LNodeData.DataForm          := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocsDATAFORM.AsString;
        LNodeData.GroupID           := LParentData.GroupID;
        LNodeData.GroupName         := LParentData.GroupName;
        LNodeData.Active            := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('ACTIVE').DisplayText;
        LNodeData.WorkFlowOnly      := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('WORKFLOW_ONLY').DisplayText;
        LNodeData.Classification    := TableString('PRECCLASSIFICATION','NPRECCLASSIFICATION', dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('NPRECCATEGORY').AsString, 'DESCR');
        LNodeData.Category          := TableString('PRECCATEGORY','NPRECCATEGORY', dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.FieldByName('NPRECCLASSIFICATION').AsString, 'DESCR');

        GetOtherParties(LNodeData);

        GetFileIcon(LNodeData.DocPath);
      end;
      ntAdmin:
      begin
        if FUpdate then
          CheckAdminDocs(LParentData.GroupID, WorkflowTypeCode)
        else
         CheckAdminDocs(LParentData.GroupID);

        if(Assigned(Node.PrevSibling)) then
          dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Next()
        else
          dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.First();
        LNodeData.NodeType          := ntDOC;
        LNodeData.MatterCode        := LParentData.MatterCode;
        LNodeData.DocID             := dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DOCID').AsInteger;
        LNodeData.DocName           := dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DOCUMENTNAME').DisplayText;
        LNodeData.DocPath           := dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DOCUMENTPATH').DisplayText;
        LNodeData.TemplatePath      := dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('TEMPLATEPATH').DisplayText;
        LNodeData.DataFilePath      := dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DATAFILEPATH').DisplayText;
        if dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DATAFORM').IsNull and (not HasDataForms(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('DOCID').AsInteger)) then
           LNodeData.DataForm         := 'N'
        else
           LNodeData.DataForm         := 'Y';
//        LNodeData.DataForm          := dmWorkFlowDataModuleDocs.qDocTemplAdminDocsDATAFORM.AsString;
        LNodeData.GroupID           := LParentData.GroupID;
        LNodeData.GroupName         := LParentData.GroupName;
        LNodeData.Active            := dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('ACTIVE').DisplayText;
        LNodeData.WorkFlowOnly      := dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('WORKFLOW_ONLY').DisplayText;
        LNodeData.Classification    := TableString('PRECCLASSIFICATION','NPRECCLASSIFICATION', dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('NPRECCLASSIFICATION').AsString, 'DESCR');
        LNodeData.Category          := TableString('PRECCATEGORY','NPRECCATEGORY', dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.FieldByName('NPRECCATEGORY').AsString, 'DESCR');
        GetFileIcon(LNodeData.DocPath);
      end;
      ntGroup:
      begin
        CheckMatterGroupParty(cmbWorkflowType.EditValue,LParentData.GroupID);

        if(Assigned(Node.PrevSibling)) then
          dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.Next()
        else
          dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.First();

        LNodeData.MatterCode := cmbWorkflowType.EditValue;
        LNodeData.DocId      := -1;

        LNodeData.PartyType  := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.FieldByName('NAME').AsString;
        LNodeData.GroupID      := LParentData.GroupID;
        LNodeData.GroupName    := LParentData.GroupName;
        if(LNodeData.PartyType = C_CLIENT) then
          LNodeData.NodeType   := ntGroupOther
        else
          LNodeData.NodeType   := ntGroupParty;
        InitialStates := InitialStates + [ivsHasChildren];
      end;
      ntGroupParty:
      begin
        CheckMatterGroupPartyDocs(LParentData.MatterCode, LParentData.GroupID, LParentData.PartyType);

        if(Assigned(Node.PrevSibling)) then
          dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.Next()
        else
          dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.First();

        LNodeData.NodeType          := ntDOC;
        LNodeData.MatterCode        := LParentData.MatterCode;
        LNodeData.PartyType         := LParentData.PartyType;
        LNodeData.DocID             := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('DOCID').AsInteger;
        LNodeData.DocName           := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('DOCUMENTNAME').DisplayText;
        LNodeData.DocPath           := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('DOCUMENTPATH').DisplayText;
        LNodeData.TemplatePath      := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('TEMPLATEPATH').DisplayText;
        LNodeData.DataFilePath      := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('DATAFILEPATH').DisplayText;
        LNodeData.ReferredOptional  := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('REFERREDOPTIONAL').AsString = 'Y';
        if dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('DATAFORM').IsNull and (not HasDataForms(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('DOCID').AsInteger)) then
         LNodeData.DataForm         := 'N'
        else
         LNodeData.DataForm         := 'Y';
//        LNodeData.DataForm          := dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocsDATAFORM.AsString;
        LNodeData.GroupID           := LParentData.GroupID;
        LNodeData.GroupName         := LParentData.GroupName;
        LNodeData.Active            := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('ACTIVE').DisplayText;
        LNodeData.WorkFlowOnly      := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('WORKFLOW_ONLY').DisplayText;
        LNodeData.Classification    := TableString('PRECCLASSIFICATION','NPRECCLASSIFICATION',dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('NPRECCLASSIFICATION').AsString, 'DESCR');
        LNodeData.Category          := TableString('PRECCATEGORY','NPRECCATEGORY', dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.FieldByName('NPRECCATEGORY').AsString, 'DESCR');

        GetOtherParties(LNodeData);

        GetFileIcon(LNodeData.DocPath);
      end;
      ntGroupOther:
      begin
        CheckMatterGroupOthers(LParentData.MatterCode, LParentData.GroupID);
        if(Assigned(Node.PrevSibling)) then
          dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.Next()
        else
          dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.First();
        LNodeData.NodeType          := ntDOC;
        LNodeData.MatterCode        := LParentData.MatterCode;
        LNodeData.PartyType         := '';
        LNodeData.DocID             := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('DOCID').AsInteger;
        LNodeData.DocName           := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('DOCUMENTNAME').DisplayText;
        LNodeData.DocPath           := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('DOCUMENTPATH').DisplayText;
        LNodeData.TemplatePath      := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('TEMPLATEPATH').DisplayText;
        LNodeData.DataFilePath      := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('DATAFILEPATH').DisplayText;
        LNodeData.ReferredOptional  := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('REFERREDOPTIONAL').AsString = 'Y';
        if dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('DATAFORM').IsNull and (not HasDataForms(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('DOCID').AsInteger)) then
         LNodeData.DataForm         := 'N'
        else
         LNodeData.DataForm         := 'Y';
//        LNodeData.DataForm          := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocsDATAFORM.AsString;
        LNodeData.GroupID           := LParentData.GroupID;
        LNodeData.GroupName         := LParentData.GroupName;
        LNodeData.Active            := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('ACTIVE').DisplayText;
        LNodeData.WorkFlowOnly      := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('WORKFLOW_ONLY').DisplayText;
        LNodeData.Classification    := TableString('PRECCLASSIFICATION','NPRECCLASSIFICATION',dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('NPRECCLASSIFICATION').AsString, 'DESCR');
        LNodeData.Category          := TableString('PRECCATEGORY','NPRECCATEGORY', dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.FieldByName('NPRECCATEGORY').AsString, 'DESCR');

        GetOtherParties(LNodeData);

        GetFileIcon(LNodeData.DocPath);
      end;
    end;
  end;

  if(Assigned(LNodeData)) then
  begin
    for i := 0 to Length(FExpandedNodes) - 1 do
    begin
      if((LNodeData.DocID     = FExpandedNodes[i].DOCID) and
         (LNodeData.NodeType  = FExpandedNodes[i].NodeType) and
         (LNodeData.GroupID   = FExpandedNodes[i].GroupID) and
         (LNodeData.PartyType = FExpandedNodes[i].PartyType)) then
      begin
        InitialStates := InitialStates + [ivsExpanded];
        break;
      end;
    end;
  end;
end;

// re-open the query when the matter type code changes..
procedure TfmWorkFlowDocTemplates.CheckMatterParty(AMatter: String);
begin
   if dmAxiom.bShutDown = False then
   begin
      if ((dmWorkFlowDataModuleDocs.qDocTemplMatterParty.Active) and
         (dmAxiom.uniInsight.Connected = True))   then
      begin
         if(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.ParamByName('workflowtypecode').AsString <> AMatter) then
            dmWorkFlowDataModuleDocs.qDocTemplMatterParty.Close();
      end;

      if ((not dmWorkFlowDataModuleDocs.qDocTemplMatterParty.Active) and
         (dmAxiom.uniInsight.Connected = True))  then
      begin
         dmWorkFlowDataModuleDocs.qDocTemplMatterParty.ParamByName('workflowtypecode').AsString := AMatter;
         dmWorkFlowDataModuleDocs.qDocTemplMatterParty.Open();
      end;
   end;
end;

// reopen the query when the matter type and party type changes.
procedure TfmWorkFlowDocTemplates.CheckMatterPartyDocs(AMatter, AParty: String);
begin
   if dmAxiom.bShutDown = False then
   begin
     if (dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.Active) then
     begin
       if(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.ParamByName('workflowtypecode').AsString <> AMatter) or
         (dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.ParamByName('partytype').AsString <> AParty) then
       begin
         dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.Close();
         dmWorkFlowDataModuleDocs.qCountPartyDocs.Close();
       end;
     end;

     if ((not dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.Active) and
        (dmAxiom.uniInsight.Connected = True)) then
     begin
       dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.ParamByName('workflowtypecode').AsString := AMatter;
       dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.ParamByName('partytype').AsString := AParty;
       dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.Open();

       dmWorkFlowDataModuleDocs.qCountPartyDocs.ParamByName('workflowtypecode').AsString := AMatter;
       dmWorkFlowDataModuleDocs.qCountPartyDocs.ParamByName('partytype').AsString := AParty;
       dmWorkFlowDataModuleDocs.qCountPartyDocs.Open();
     end;
   end;
end;

procedure TfmWorkFlowDocTemplates.cmbWorkflowTypePropertiesInitPopup(
  Sender: TObject);
begin
   dmWorkFlowDataModule.tbWorkflowType.Close;
   dmWorkFlowDataModule.tbWorkflowType.Open;
end;

procedure TfmWorkFlowDocTemplates.cmbWorkflowTypePropertiesSortingChanged(
  Sender: TObject);
begin

end;

// re-open the query when the matter type code changes.
procedure TfmWorkFlowDocTemplates.CheckMatterOthers(AMatter: String);
begin
   if dmAxiom.bShutDown = False then
   begin
      if(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.Active) then
      begin
         if(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.ParamByName('workflowtypecode').AsString <> AMatter) then
         begin
            dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.Close();
            dmWorkFlowDataModuleDocs.qCountOtherDocs.Close();
         end;
      end;

      if ((not dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.Active) and
         (dmAxiom.uniInsight.Connected = True)) then
      begin
         dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.ParamByName('workflowtypecode').AsString := AMatter;
         dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.Open();
         dmWorkFlowDataModuleDocs.qCountOtherDocs.ParamByName('workflowtypecode').AsString := AMatter;
         dmWorkFlowDataModuleDocs.qCountOtherDocs.Open();
      end;
   end;
end;

// tell the tree how many children the node has.
procedure TfmWorkFlowDocTemplates.vtDocsInitChildren(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var ChildCount: Cardinal);
var
  LNodeData: PDocData;
begin
  ChildCount := 0;
  LNodeData := Sender.GetNodeData(Node);
  case LNodeData.NodeType of
    ntOther:
    begin
      CheckMatterOthers(LNodeData.MatterCode);
      ChildCount := dmWorkFlowDataModuleDocs.qCountOtherDocs.FieldByName('NUMDOCS').AsInteger;
    end;
    ntParty:
    begin
      CheckMatterPartyDocs(LNodeData.MatterCode,LNodeData.PartyType);
      ChildCount := dmWorkFlowDataModuleDocs.qCountPartyDocs.FieldByName('NUMDOCS').AsInteger;
    end;
    ntAdmin:
    begin
      CheckAdminDocs(LNodeData.GroupID, WorkflowTypeCode);
      ChildCount := dmWorkFlowDataModuleDocs.qCountAdminDocs.FieldByName('NUMDOCS').AsInteger;
    end;
    ntGroup:
    begin
      CheckMatterGroupParty(LNodeData.Mattercode, LNodeData.GroupID);
      ChildCount := dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.RecordCount;
    end;
    ntGroupOther:
    begin
      CheckMatterGroupOthers(LNodeData.MatterCode, LNodeData.GroupID);
      ChildCount := dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.FieldByName('NUMDOCS').AsInteger;
    end;
    ntGroupParty:
    begin
      CheckMatterGroupPartyDocs(LNodeData.MatterCode,LNodeData.GroupID,LNodeData.PartyType);
      ChildCount := dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.FieldByName('NUMDOCS').AsInteger;
    end;
  end;
end;

// get text for the cell..
function TfmWorkFlowDocTemplates.GetOtherParties(ANode: PVirtualNode): String;
var
  LNodeData: PDocData;
  i: Integer;
begin
  LNodeData := vtDocs.GetNodeData(ANode);
  Result := '';
  for i := 0 to Length(LNodeData.OtherParties) - 1 do
  begin
    if(Result <> '') then
      Result := Result + ', ';
    Result := Result + LNodeData.OtherParties[i];
  end;
  if((Result <> '') and LNodeData.ReferredOptional) then
    Result := Result + ' (optional)';
end;


// reload the tree from scratch.
procedure TfmWorkFlowDocTemplates.RefreshTree;
begin
  if(FDontUpdate) then
    Exit;
  vtDocs.BeginUpdate();
  try
    vtDocs.FocusedNode   := Nil;
    vtDocs.RootNodeCount := 0;
    vtDocs.Clear();
    if(AdminDocs) then
      RefreshTreeAdminDocs()
    else
      RefreshTreeTaskDocs();

    ResizeColumns();
    SelectLastSelected();
  finally
    vtDocs.EndUpdate();
  end;
  FEmptyTree := vtDocs.RootNodeCount = 0;
end;

// delete node from the treee.
procedure TfmWorkFlowDocTemplates.aDeleteExecute(Sender: TObject);
var
  LNodeData: PDocData;
  LNode: PVirtualNode;
begin
  SaveTreeExpanded();

  LNode := vtDocs.GetFirstSelected;
  while(Assigned(LNode)) do
  begin
    LNodeData := vtDocs.GetNodeData(LNode);
    if MessageDlg('Are you sure you want to delete the document record '#13#10 + LNodeData.DocName, mtConfirmation, [mbYes,mbNo], 0) = mrNo then
      Exit;
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Open();
    try
      dmAxiom.uniInsight.StartTransaction;
      if(dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Locate('docid',LNodeData.DocId,[])) then
        dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Delete();
    finally
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();
      dmAxiom.uniInsight.Commit;
      FUpdate := True;
    end;
    LNode := vtDocs.GetNextSelected(LNode);
  end;
  RefreshTree();
  if frmDesktop.pagMainControl.ActivePageIndex = 1 then
     ActiveControl := vtDocs;
end;


procedure TfmWorkFlowDocTemplates.aEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtDocs.FocusedNode)
    and (PDocData(vtDocs.GetNodeData(vtDocs.FocusedNode)).NodeType = ntDoc)
    and (vtDocs.SelectedCount = 1);
end;

procedure TfmWorkFlowDocTemplates.FormShow(Sender: TObject);
var
  LCode: String;
begin
  if(BorderStyle = bsDialog) then
  begin
    pBottom.Visible := True;
    bnOk.Enabled := True;
    bnCancel.Enabled := True;
    vtDocs.TreeOptions.SelectionOptions := vtDocs.TreeOptions.SelectionOptions - [toSiblingSelectConstraint];
  end;
  LCode := SettingLoadString(C_SETTINGWORKFLOWGENERAL,C_SETTINGWORKFLOWTYPE);
  if(LCode = '') then
    LCode := dmWorkFlowDataModule.tbWorkflowTypeCODE.Value;
  cmbWorkflowType.EditValue := LCode;

  cmbType.ItemIndex := 0;
  if(BorderStyle = bsDialog) then
    cmbShow.ItemIndex := 1
  else
    cmbShow.ItemIndex := 0;
  FDontUpdate := False;
  aShowFilterComboChange(cmbShow);
end;

// return a list of selected document id's
procedure TfmWorkFlowDocTemplates.GetDocIDs(AIDs: TStringList);
begin
  vtDocs.IterateSubtree(nil,IterateID,AIDs);
end;

// iterator callback for the above.
procedure TfmWorkFlowDocTemplates.IterateID(Sender: TBaseVirtualTree;  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
var
  LNodeData: PDocData;
begin
  if(Sender.Selected[Node]) then
  begin
    LNodeData := Sender.GetNodeData(Node);
    if(LNodeData.NodeType = ntDoc) then
      TStringList(Data).Add(IntToStr(LNodeData.DocId));
  end;
end;

// matter type changed, re-load the tree.
procedure TfmWorkFlowDocTemplates.aWorkflowTypeLookupChanged(Sender: TObject);
 procedure AddNotUsed(AStrings: TStrings);
  var
    i, BIndex: Integer;
    LIns: Boolean;
  begin
    LIns := False;

 {   for i := AStrings.Count - 1 downto 0 do
    begin
      if (trim(AStrings[i]) = 'order by documentname') then
      begin
        AStrings.Delete(i)
      end;
    end;  }

    with AStrings do
    begin
      BIndex := IndexOf('order by documentname');
      if BIndex = -1 then
         BIndex := IndexOf('order by documentname ');

      if BIndex > -1 then
         Delete(BIndex);
    end;

    for i := AStrings.Count - 1 downto 0 do
    begin
      if(AStrings[i] = C_INSERTNOTUSEDHERE) then
      begin
        AStrings.Insert(i + 1,C_SHOWNOTUSED);
        AStrings.Insert(i + 1,C_SHOWNOTUSEDID);
        LIns := True;
      end;
    end;
    if(not LIns) then
    begin
      AStrings.Add(C_SHOWNOTUSEDID);
      AStrings.Add(C_SHOWNOTUSED);
    end;
  end;

  procedure AddNotUsedOrder(AStrings: TStrings);
  var
    i, BIndex: Integer;
    LIns: Boolean;
  begin
    LIns := False;

    with AStrings do
    begin
      BIndex := IndexOf('order by documentname');
      if BIndex = -1 then
         BIndex := IndexOf('order by documentname ');

      if BIndex > -1 then
         Delete(BIndex);
    end;

    for i := AStrings.Count - 1 downto 0 do
    begin
      if(AStrings[i] = C_INSERTNOTUSEDHERE) then
      begin
        AStrings.Insert(i + 1,C_SHOWNOTUSED);
        AStrings.Insert(i + 1,C_SHOWNOTUSEDID);
        LIns := True;
      end;
    end;
    if(not LIns) then
    begin
      AStrings.Add(C_SHOWNOTUSEDID);
      AStrings.Add(C_SHOWNOTUSED);
      AStrings.Add(C_SHOWNOTUSEDORDER);
    end;
  end;

  procedure AddOrderOnly(AStrings: TStrings);
  var
    BIndex: Integer;
  begin

    with AStrings do
    begin
      BIndex := IndexOf('order by documentname');
      if BIndex = -1 then
         BIndex := IndexOf('order by documentname ');

      if BIndex > -1 then
         Delete(BIndex);
    end;
    AStrings.Add(C_SHOWNOTUSEDORDER);
  end;


  procedure RemoveNotUsed(AStrings: TStrings);
  var
    i, BIndex: Integer;
    d: Boolean;
  begin
     with AStrings do
    begin
      BIndex := IndexOf('order by documentname');
      if BIndex = -1 then
         BIndex := IndexOf('order by documentname ');

      if BIndex > -1 then
         Delete(BIndex);
    end;

    for i := AStrings.Count - 1 downto 0 do
    begin
      d := AStrings[i] = C_SHOWNOTUSEDID;
      if(not d) then
        d := AStrings[i] = C_SHOWNOTUSED;
      if(d) then
        AStrings.Delete(i);
    end;
  end;
begin
  SaveTreeExpanded();

  dmWorkFlowDataModuleDocs.qDocTemplMatterParty.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountPartyDocs.Close();

  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.Close();

  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qCountOtherDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qCountPartyDocs.SQL);

  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.SQL);

  if(cmbShow.ItemIndex = 1) then
  begin
    AddNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.SQL);

    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.SQL);
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountPartyDocs.SQL);

    AddNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.SQL);
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.SQL);
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.SQL);

    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.SQL);
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.SQL);
  end
  else
  begin
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountPartyDocs.SQL);

    AddNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.SQL);

 {   AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.SQL); }
  end;

  RefreshTree();
  SettingSave(C_SETTINGWORKFLOWGENERAL,C_SETTINGWORKFLOWTYPE,String(cmbWorkflowType.EditValue));
end;

procedure TfmWorkFlowDocTemplates.aAddUpdate(Sender: TObject);
begin
  if(not FEmptyTree) then
    TAction(Sender).Enabled := Assigned(vtDocs.FocusedNode) and Assigned(FMergeType)
  else
    TAction(Sender).Enabled := Assigned(FMergeType);
end;

// iterator callback to save the expanded nodes.
procedure TfmWorkFlowDocTemplates.IterSaveExpanded(Sender: TBaseVirtualTree; Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
var
  LDocData: PDocData;
begin
  if(vsExpanded in Node.States) then
  begin
    SetLength(FExpandedNodes,Length(FExpandedNodes) + 1);

    LDocData := Sender.GetNodeData(Node);

    FExpandedNodes[Length(FExpandedNodes) - 1].NodeType  := LDocData.NodeType;
    FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := LDocData.PartyType;
    FExpandedNodes[Length(FExpandedNodes) - 1].DocID     := LDocData.DocId;
    FExpandedNodes[Length(FExpandedNodes) - 1].GroupID   := LDocData.GroupID;
  end;
end;

// resize the tree columns to make all data and headers visible.
procedure TfmWorkFlowDocTemplates.ResizeColumns();
var
  i: Integer;
  LColumn: TVirtualTreeColumn;
  LWidth: Integer;
  LFont: TFont;
begin
  if(FExpanding) then
    Exit;
  vtDocs.BeginUpdate();
  try
    vtDocs.Header.AutoFitColumns();

    LFont := Canvas.Font;
    try
      Canvas.Font := vtDocs.Header.Font;
      for i := 0 to vtDocs.Header.Columns.Count - 1 do
      begin
        LColumn := vtDocs.Header.Columns[i];
        LWidth  := Canvas.TextWidth(LColumn.Text) + 20;
        if(LWidth > LColumn.Width) then
          LColumn.Width := LWidth;
      end;
    finally
      Canvas.Font := LFont;
    end;
  finally
    vtDocs.EndUpdate();
  end;
end;

// save the tree's expanded state.
procedure TfmWorkFlowDocTemplates.SaveTreeExpanded();
var
  LSelData: PDocData;
begin
  if(Assigned(vtDocs.FocusedNode)) then
  begin
    LSelData                := vtDocs.GetNodeData(vtDocs.FocusedNode);
    FSelectedNode.NodeType  := LSelData.NodeType;
    FSelectedNode.PartyType := LSelData.PartyType;
    FSelectedNode.DocID     := LSelData.DocId;
    FSelectedNode.GroupID   := LSelData.GroupID;
  end;

  SetLength(FExpandedNodes,0);
  vtDocs.IterateSubtree(nil,IterSaveExpanded,nil);
end;

procedure TfmWorkFlowDocTemplates.vtDocsExpanded(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
  ResizeColumns();
end;

procedure TfmWorkFlowDocTemplates.aOpenDocumentUpdate(Sender: TObject);
begin
  if(Assigned(vtDocs.FocusedNode)) then
    TAction(Sender).Enabled := (vtDocs.SelectedCount = 1)
      and (PDocData(vtDocs.GetNodeData(vtDocs.FocusedNode)).TemplatePath <> '')
  else
    TAction(Sender).Enabled := False;
end;

// open the document template
procedure TfmWorkFlowDocTemplates.aOpenDocumentExecute(Sender: TObject);
begin
  ShellExecute(Handle,'open',PChar(PDocData(vtDocs.GetNodeData(vtDocs.FocusedNode)).TemplatePath),
    '','',SW_SHOWNORMAL);
end;

// open explorer and select the template.
procedure TfmWorkFlowDocTemplates.aFileExplorerExecute(Sender: TObject);
var
  LParam: String;
begin
  LParam := '/select,' + PDocData(vtDocs.GetNodeData(vtDocs.FocusedNode)).TemplatePath;
  ShellExecute(Handle,'open','explorer.exe',PChar(LParam),'',SW_SHOWNORMAL);
end;

// copy the template, updating the database as required.
procedure TfmWorkFlowDocTemplates.aFileCopyExecute(Sender: TObject);
var
  LData: PDocData;
  LNewFile: String;
begin
  LData := vtDocs.GetNodeData(vtDocs.FocusedNode);
  SaveTreeExpanded();
  fmCopyMoveFileDialog := TfmCopyMoveFileDialog.Create(Self);
  try
    fmCopyMoveFileDialog.Operation   := cmfCopy;
    fmCopyMoveFileDialog.ShowOptions := [cmfThisTemplate, cmfAllTemplates, cmfNoTemplate];
    fmCopyMoveFileDialog.Option      := cmfAllTemplates;
    fmCopyMoveFileDialog.FileName    := LData.TemplatePath;
    fmCopyMoveFileDialog.Destination := LData.TemplatePath;

    if(fmCopyMoveFileDialog.ShowModal() <> mrOk) then
      Exit;

    LNewFile := fmCopyMoveFileDialog.Destination;
    case fmCopyMoveFileDialog.Option of
      cmfThisTemplate:
      begin
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'UPDATE workflowdoctemplates SET templatepath = :docpath WHERE docid = :docid';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docpath').AsString := LNewFile;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docid').AsInteger  := LData.DocId;
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      end;

      cmfAllTemplates:
      begin
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'UPDATE workflowdoctemplates SET templatepath = :docpath WHERE templatepath = :oldname';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docpath').AsString := LNewFile;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('oldname').AsString := LData.TemplatePath;
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      end;
    end;

    RefreshTree();
  finally
    FreeAndNil(fmCopyMoveFileDialog);
  end;
end;

// rename the documnet template , updating the database as required.
procedure TfmWorkFlowDocTemplates.aFileRenameExecute(Sender: TObject);
var
  LData: PDocData;
  LNewFile: String;
begin
  LData := vtDocs.GetNodeData(vtDocs.FocusedNode);
  SaveTreeExpanded();
  fmCopyMoveFileDialog := TfmCopyMoveFileDialog.Create(Self);
  try
    fmCopyMoveFileDialog.Operation   := cmfRename;
    fmCopyMoveFileDialog.ShowOptions := [cmfThisTemplate, cmfAllTemplates, cmfNoTemplate];
    fmCopyMoveFileDialog.Option      := cmfAllTemplates;
    fmCopyMoveFileDialog.FileName    := LData.TemplatePath;
    fmCopyMoveFileDialog.Destination := LData.TemplatePath;  //ExtractFileName(LData.TemplatePath);


    if(fmCopyMoveFileDialog.ShowModal() <> mrOk) then
      Exit;

    if(ExtractFilePath(fmCopyMoveFileDialog.Destination) = '') then
      LNewFile := ExtractFilePath(LData.TemplatePath) + fmCopyMoveFileDialog.Destination
    else
      LNewFile := fmCopyMoveFileDialog.Destination;
    case fmCopyMoveFileDialog.Option of
      cmfThisTemplate:
      begin
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'UPDATE workflowdoctemplates SET templatepath = :docpath WHERE docid = :docid';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docpath').AsString := LNewFile;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docid').AsInteger  := LData.DocId;
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      end;

      cmfAllTemplates:
      begin
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'UPDATE workflowdoctemplates SET templatepath = :docpath WHERE templatepath = :oldname';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docpath').AsString := LNewFile;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('oldname').AsString := LData.TemplatePath;
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      end;
    end;

    RefreshTree();
  finally
    FreeAndNil(fmCopyMoveFileDialog);
  end;
end;

// move the document template, updating the database as required.
procedure TfmWorkFlowDocTemplates.aFileMoveExecute(Sender: TObject);
var
  LData: PDocData;
  LNewFile: String;
begin
  LData := vtDocs.GetNodeData(vtDocs.FocusedNode);
  SaveTreeExpanded();
  fmCopyMoveFileDialog := TfmCopyMoveFileDialog.Create(Self);
  try
    fmCopyMoveFileDialog.Operation   := cmfMove;
    fmCopyMoveFileDialog.ShowOptions := [cmfThisTemplate, cmfAllTemplates, cmfNoTemplate];
    fmCopyMoveFileDialog.Option      := cmfAllTemplates;
    fmCopyMoveFileDialog.FileName    := LData.TemplatePath;
    fmCopyMoveFileDialog.Destination := ExtractFilePath(LData.TemplatePath);


    if(fmCopyMoveFileDialog.ShowModal() <> mrOk) then
      Exit;

    LNewFile := fmCopyMoveFileDialog.Destination + ExtractFileName(LData.TemplatePath);
    case fmCopyMoveFileDialog.Option of
      cmfThisTemplate:
      begin
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'UPDATE workflowdoctemplates SET templatepath = :docpath WHERE docid = :docid';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docpath').AsString := LNewFile;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docid').AsInteger  := LData.DocId;
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      end;

      cmfAllTemplates:
      begin
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'UPDATE workflowdoctemplates SET templatepath = :docpath WHERE templatepath = :oldname';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docpath').AsString := LNewFile;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('oldname').AsString := LData.TemplatePath;
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      end;
    end;

    RefreshTree();
  finally
    FreeAndNil(fmCopyMoveFileDialog);
  end;
end;

// delete the document template file, updating the database as required.
procedure TfmWorkFlowDocTemplates.aFileDeleteExecute(Sender: TObject);
var
  LData: PDocData;
begin
  LData := vtDocs.GetNodeData(vtDocs.FocusedNode);
  SaveTreeExpanded();
  fmCopyMoveFileDialog := TfmCopyMoveFileDialog.Create(Self);
  try
    fmCopyMoveFileDialog.Operation   := cmfDelete;
    fmCopyMoveFileDialog.ShowOptions := [cmfThisTemplate, cmfAllTemplates, cmfNoTemplate];
    fmCopyMoveFileDialog.Option      := cmfAllTemplates;
    fmCopyMoveFileDialog.FileName    := LData.TemplatePath;

    if(fmCopyMoveFileDialog.ShowModal() <> mrOk) then
      Exit;

    case fmCopyMoveFileDialog.Option of
      cmfThisTemplate:
      begin
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'DELETE FROM workflowtaskdoclink WHERE docid IN (SELECT docid FROM workflowdoctemplates WHERE docid = :docid)';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('docid').AsInteger := LData.DocID;
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'DELETE FROM workflowdoctemplates WHERE docid = :docid';
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      end;

      cmfAllTemplates:
      begin
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'DELETE FROM workflowtaskdoclink WHERE docid IN (SELECT docid FROM workflowdoctemplates WHERE templatepath = :FILENAME)';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('FILENAME').AsString := LData.TemplatePath;
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
        dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
          'DELETE FROM workflowdoctemplates WHERE templatepath = :FILENAME';
        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      end;
    end;
    RefreshTree();
  finally
    FreeAndNil(fmCopyMoveFileDialog);
  end;
end;

// return the image for the document template.
procedure TfmWorkFlowDocTemplates.vtDocsGetImageIndex(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Kind: TVTImageKind;
  Column: TColumnIndex; var Ghosted: Boolean; var ImageIndex: Integer);
var
  LData: PDocData;
begin
  ImageIndex := -1;
  if(Column = 1) then
  begin
    LData := Sender.GetNodeData(Node);
    if(LData.NodeType = ntDoc) then
      ImageIndex := FDocImageIndexes.IndexOf(ExtractFileExt(LData.TemplatePath));
  end;
end;

procedure TfmWorkFlowDocTemplates.vtDocsGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LNodeData: PDocData;
begin
  LNodeData := Sender.GetNodeData(Node);
  CellText := '';
  case TDocColumns(Column) of
    tdcDocument:
    begin
      case LNodeData.NodeType of
        ntAdmin:   begin
                     if LNodeData.PartyType = '' then
                        CellText := LNodeData.GroupName
                     else
                        CellText := LNodeData.PartyType;
                   end;
        ntGroupParty,
        ntParty:   CellText := LNodeData.PartyType;
        ntDOC:     CellText := LNodeData.DocName;
        ntGroupOther,
        ntOther:   CellText := C_CLIENT;
        ntGroup:   CellText := LNodeData.GroupName;
      else
        CellText   := TTDNoteTypeDesc[LNodeData.NodeType];
      end;
    end;
    tdcOtherParties:     CellText := GetOtherParties(Node);
    tdcTemplateFileName: CellText := LNodeData.TemplatePath;
    tdcDataFileName:     CellText := LNodeData.DataFilePath;
    tdcDocumentFileName: CellText := LNodeData.DocPath;
    tdcDataForm:         CellText := LNodeData.DataForm;
    tdcActive:           CellText := LNodeData.Active;
    tdcWorkFlowOnly:     CellText := LNodedata.WorkFlowOnly;
    tdcCategory:         CellText := LNodedata.Category;
    tdcClassification:   CellText := LNodedata.Classification;
  end;
//  CellText := AndReplace(CellText);
end;

procedure TfmWorkFlowDocTemplates.FormDestroy(Sender: TObject);
begin
//  FreeAndNil(FDocImageIndexes);
end;

// gets from the system image list the icon for the file type
// and adds it to the image list.
procedure TfmWorkFlowDocTemplates.GetFileIcon(AName: String);
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
          SystemImages.AddIcon(LIcon);
          FDocImageIndexes.Add(LExt);
        finally
          LIcon.Free();
        end;
      end;
    end;
  end;
end;

function TfmWorkFlowDocTemplates.GetWorkflowTypeCode: String;
begin
  Result := cmbWorkflowType.EditValue;
end;

procedure TfmWorkFlowDocTemplates.aCloseExecute(Sender: TObject);
begin
  Close();
end;

// open the options dialog and change merge type.
procedure TfmWorkFlowDocTemplates.aOptionsExecute(Sender: TObject);
begin
  fmWorkFlowDocumentMergeOptionsDialog := TfmWorkFlowDocumentMergeOptionsDialog.Create(Self);
  try
    fmWorkFlowDocumentMergeOptionsDialog.ShowModal();
    FMergeType := GetWorkFlowMergeTypeClass();
  finally
    FreeAndNil(fmWorkFlowDocumentMergeOptionsDialog);
  end;
end;

procedure TfmWorkFlowDocTemplates.vtDocsDragAllowed(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  var Allowed: Boolean);
var
  LData: PDocData;
begin
  LData := Sender.GetNodeData(Node);
  Allowed := (Column = 0) and (LData.NodeType = ntDoc);
end;

procedure TfmWorkFlowDocTemplates.vtDocsDragDrop(Sender: TBaseVirtualTree;
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

procedure TfmWorkFlowDocTemplates.vtDocsDragOver(Sender: TBaseVirtualTree;
  Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint;
  Mode: TDropMode; var Effect: Integer; var Accept: Boolean);
var
  LNode: PVirtualNode;
  LData: PDocData;
begin
  LNode := Sender.DropTargetNode;
  if(Assigned(LNode)) then
  begin
    LData := Sender.GetNodeData(LNode);
    Accept := (Source = Sender) and (LData.NodeType in [ntParty, ntOther, ntGroupParty, ntGroupOther]);
  end else
    Accept := False;
end;

procedure TfmWorkFlowDocTemplates.vtDocsNodeCopied(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  LNodeData,
  LParentData: PDocData;
  i: Integer;
begin
  LParentData := Sender.GetNodeData(Node.Parent);
  LNodeData   := Sender.GetNodeData(Node);

  dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Open();
  try
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Append();
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').Value := 0;
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOWTYPECODE').AsString := cmbWorkflowType.EditValue;

    if(LParentData.NodeType in [ntParty,ntGroupParty]) then
    begin
      LNodeData.PartyType := LParentData.PartyType;
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEPARTY;
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString := LNodeData.PartyType;
    end else
    begin
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPECLIENT;
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').Clear();
      LNodeData.PartyType := '';
    end;

    LNodeData.DocName := 'Copy Of - ' + LNodeData.DocName;
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTNAME').AsString :=  LNodeData.DocName;
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTPATH').AsString := LNodeData.DocPath;
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString := LNodeData.TemplatePath;
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFILEPATH').AsString := LNodeData.DataFilePath;
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFORM').AsString     := LNodeData.DataForm;
    LNodeData.GroupID := LParentData.GroupID;
    LNodeData.GroupName := LParentData.GroupName;
    if(LParentData.GroupID > 0) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsInteger     := LNodeData.GroupID
    else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').Clear();

    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Post();

    LNodeData.DocId := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCID').AsInteger;

    for i := 0 to Length(LNodeData.OtherParties) - 1 do
    begin
      dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('docid').AsInteger     := LNodeData.DocID;
      dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('listorder').AsInteger := i + 1;
      dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ParamByName('partytype').AsString  := LNodeData.OtherParties[i];
      dmWorkFlowDataModuleDocs.qDocTemplOtherPartiesInsert.ExecSQL();
    end;
  finally
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.Close();
  end;
end;

procedure TfmWorkFlowDocTemplates.vtDocsNodeMoved(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  LNodeData,
  LParentData: PDocData;
begin
  LParentData := Sender.GetNodeData(Node.Parent);
  LNodeData   := Sender.GetNodeData(Node);

  dmWorkFlowDataModule.qAnyQuery.SQL.Text :=
    'UPDATE workflowdoctemplates SET doctype = :doctype, partytype = :partytype, groupid = :groupid WHERE docid = :docid';

  case LParentData.NodeType of
    ntParty:
    begin
      LNodeData.PartyType := LParentData.PartyType;
      LNodeData.GroupID   := 0;
      LNodeData.GroupName := '';
      dmWorkFlowDataModule.qAnyQuery.ParamByName('doctype').AsString   := C_DOCTYPEPARTY;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('partytype').AsString := LNodeData.PartyType;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('groupid').Clear();
    end;
    ntOther:
    begin
      LNodeData.PartyType := '';
      LNodeData.GroupID   := 0;
      LNodeData.GroupName := '';
      dmWorkFlowDataModule.qAnyQuery.ParamByName('partytype').Clear();
      dmWorkFlowDataModule.qAnyQuery.ParamByName('doctype').AsString   := C_DOCTYPECLIENT;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('groupid').Clear();
    end;
    ntGroupParty:
    begin
      LNodeData.PartyType := LParentData.PartyType;
      LNodeData.GroupID   := LParentData.GroupID;
      LNodeData.GroupName := LParentData.GroupName;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('doctype').AsString   := C_DOCTYPEPARTY;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('partytype').AsString := LNodeData.PartyType;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('groupid').AsInteger  := LNodeData.GroupID;
    end;
    ntGroupOther:
    begin
      LNodeData.PartyType := LParentData.PartyType;
      LNodeData.GroupID   := LParentData.GroupID;
      LNodeData.GroupName := LParentData.GroupName;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('partytype').Clear();
      dmWorkFlowDataModule.qAnyQuery.ParamByName('doctype').AsString   := C_DOCTYPECLIENT;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('groupid').AsInteger  := LNodeData.GroupID;
    end;
    ntGroup:
    begin
      LNodeData.GroupID   := LParentData.GroupID;
      LNodeData.GroupName := LParentData.GroupName;
      if(LNodeData.NodeType = ntDoc) then
      begin
        dmWorkFlowDataModule.qAnyQuery.ParamByName('partytype').AsString := LNodeData.PartyType;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('doctype').AsString   := C_DOCTYPECLIENT;
      end else
      begin
        dmWorkFlowDataModule.qAnyQuery.ParamByName('partytype').Clear();
        dmWorkFlowDataModule.qAnyQuery.ParamByName('doctype').AsString   := C_DOCTYPECLIENT;
      end;
      dmWorkFlowDataModule.qAnyQuery.ParamByName('groupid').AsInteger  := LNodeData.GroupID;
    end;
  end;
  dmWorkFlowDataModule.qAnyQuery.ParamByName('docid').AsInteger     := LNodeData.DocID;
  dmWorkFlowDataModule.qAnyQuery.ExecSQL();
end;

procedure TfmWorkFlowDocTemplates.vtDocsNodeCopying(
  Sender: TBaseVirtualTree; Node, NewParent: PVirtualNode;
  var Allowed: Boolean);
var
  LParentData: PDocData;
begin
  LParentData := Sender.GetNodeData(NewParent);
  Allowed := (NewParent <> Sender.RootNode) and (LParentData.NodeType in [ntParty, ntOther, ntGroupParty, ntGroupOther]);
end;

procedure TfmWorkFlowDocTemplates.vtDocsNodeMoving(
  Sender: TBaseVirtualTree; Node, NewParent: PVirtualNode;
  var Allowed: Boolean);
var
  LParentData: PDocData;
begin
  LParentData := Sender.GetNodeData(NewParent);
  Allowed := (Node.Parent <> Sender.RootNode) and (Node.Parent <> NewParent) and (LParentData.NodeType in [ntParty, ntOther, ntGroupParty, ntGroupOther]);
end;

procedure TfmWorkFlowDocTemplates.vtDocsLoadNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Stream: TStream);
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
  LNodeData: PDocData;
  i: Integer;
begin
  LNodeData := Sender.GetNodeData(Node);
//  Stream.Read(LNodeData^,SizeOf(TDocData));

  Stream.Read(LNodeData.NodeType, SizeOf(LNodeData.NodeType));
  Stream.Read(LNodeData.DocId,    SizeOf(LNodeData.DocID));
  LNodeData.MatterCode   := ReadString();
  Stream.Read(LNodeData.GroupID,  SizeOf(LNodeData.GroupID));
  LNodeData.GroupName    := ReadString();
  LNodeData.PartyType    := ReadString();
  LNodeData.DocName      := ReadString();
  LNodeData.DocPath      := ReadString();
  LNodeData.TemplatePath := ReadString();
  LNodeData.DataFilePath := ReadString();
  Stream.Read(i,SizeOf(i));
  SetLength(LNodeData.OtherParties,i);
  while(i > 0) do
  begin
    LNodeData.OtherParties[i - 1] := ReadString();
    Dec(i);
  end;
end;

procedure TfmWorkFlowDocTemplates.vtDocsSaveNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Stream: TStream);
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
  LNodeData: PDocData;
  i: Integer;
begin
  LNodeData := Sender.GetNodeData(Node);
//  Stream.Write(LNodeData^,SizeOf(TDocData));
  Stream.Write(LNodeData.NodeType, SizeOf(LNodeData.NodeType));
  Stream.Write(LNodeData.DocId,    SizeOf(LNodeData.DocID));
  WriteString(LNodeData.MatterCode  );
  Stream.Write(LNodeData.GroupID,  SizeOf(LNodeData.GroupID));
  WriteString(LNodeData.GroupName   );
  WriteString(LNodeData.PartyType   );
  WriteString(LNodeData.DocName     );
  WriteString(LNodeData.DocPath     );
  WriteString(LNodeData.TemplatePath);
  WriteString(LNodeData.DataFilePath);
  i := Length(LNodeData.OtherParties);
  Stream.Write(i, SizeOf(i));
  while(i > 0) do
  begin
    WriteString(LNodeData.OtherParties[i - 1]);
    Dec(i);
  end;
end;

procedure TfmWorkFlowDocTemplates.aEditCutExecute(Sender: TObject);
begin
  if(ActiveControl = vtDocs) then
    vtDocs.CutToClipBoard();
end;

procedure TfmWorkFlowDocTemplates.aEditCutUpdate(Sender: TObject);
var
  LNodeData: PDocData;
begin
  if(Assigned(vtDocs.FocusedNode)) then
  begin
    LNodeData := vtDocs.GetNodeData(vtDocs.FocusedNode);
    TAction(Sender).Enabled := LNodeData.NodeType = ntDoc;
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowDocTemplates.aEditCopyExecute(Sender: TObject);
begin
  if(ActiveControl = vtDocs) then
    vtDocs.CopyToClipBoard();
end;

procedure TfmWorkFlowDocTemplates.aEditPasteExecute(Sender: TObject);
begin
  if(ActiveControl = vtDocs) then
    vtDocs.PasteFromClipboard();
end;

procedure TfmWorkFlowDocTemplates.aEditPasteUpdate(Sender: TObject);
var
  LNodeData: PDocData;
begin
  if(Assigned(vtDocs.FocusedNode)) then
  begin
    LNodeData := vtDocs.GetNodeData(vtDocs.FocusedNode);
    TAction(Sender).Enabled := (LNodeData.NodeType in [ntParty, ntOther, ntGroupParty, ntGroupOther])
      and Clipboard.HasFormat(CF_VIRTUALTREE);
  end else
    TAction(Sender).Enabled := False;
end;

procedure TfmWorkFlowDocTemplates.aDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(vtDocs.FocusedNode)
    and (PDocData(vtDocs.GetNodeData(vtDocs.FocusedNode)).NodeType = ntDoc);
end;

procedure TfmWorkFlowDocTemplates.aShowFilterComboChange(Sender: TObject);
  procedure AddNotUsed(AStrings: TStrings);
  var
    i, BIndex: Integer;
    LIns: Boolean;
  begin
    LIns := False;

 {   for i := AStrings.Count - 1 downto 0 do
    begin
      if (trim(AStrings[i]) = 'order by documentname') then
      begin
        AStrings.Delete(i)
      end;
    end;  }

    with AStrings do
    begin
      BIndex := IndexOf('order by documentname');
      if BIndex = -1 then
         BIndex := IndexOf('order by documentname ');

      if BIndex > -1 then
         Delete(BIndex);
    end;

    for i := AStrings.Count - 1 downto 0 do
    begin
      if(AStrings[i] = C_INSERTNOTUSEDHERE) then
      begin
        AStrings.Insert(i + 1,C_SHOWNOTUSED);
        AStrings.Insert(i + 1,C_SHOWNOTUSEDID);
        LIns := True;
      end;
    end;
    if(not LIns) then
    begin
      AStrings.Add(C_SHOWNOTUSEDID);
      AStrings.Add(C_SHOWNOTUSED);
    end;
  end;

  procedure AddNotUsedOrder(AStrings: TStrings);
  var
    i, BIndex: Integer;
    LIns: Boolean;
  begin
    LIns := False;

    with AStrings do
    begin
      BIndex := IndexOf('order by documentname');
      if BIndex = -1 then
         BIndex := IndexOf('order by documentname ');

      if BIndex > -1 then
         Delete(BIndex);
    end;

    for i := AStrings.Count - 1 downto 0 do
    begin
      if(AStrings[i] = C_INSERTNOTUSEDHERE) then
      begin
        AStrings.Insert(i + 1,C_SHOWNOTUSED);
        AStrings.Insert(i + 1,C_SHOWNOTUSEDID);
        LIns := True;
      end;
    end;
    if(not LIns) then
    begin
      AStrings.Add(C_SHOWNOTUSEDID);
      AStrings.Add(C_SHOWNOTUSED);
      AStrings.Add(C_SHOWNOTUSEDORDER);
    end;
  end;

  procedure AddOrderOnly(AStrings: TStrings);
  var
    BIndex: Integer;
  begin

    with AStrings do
    begin
      BIndex := IndexOf('order by documentname');
      if BIndex = -1 then
         BIndex := IndexOf('order by documentname ');

      if BIndex > -1 then
         Delete(BIndex);
    end;
    AStrings.Add(C_SHOWNOTUSEDORDER);
  end;


  procedure RemoveNotUsed(AStrings: TStrings);
  var
    i, BIndex: Integer;
    d: Boolean;
  begin
     with AStrings do
    begin
      BIndex := IndexOf('order by documentname');
      if BIndex = -1 then
         BIndex := IndexOf('order by documentname ');

      if BIndex > -1 then
         Delete(BIndex);
    end;

    for i := AStrings.Count - 1 downto 0 do
    begin
      d := AStrings[i] = C_SHOWNOTUSEDID;
      if(not d) then
        d := AStrings[i] = C_SHOWNOTUSED;
      if(d) then
        AStrings.Delete(i);
    end;
  end;
begin
  SaveTreeExpanded();

  dmWorkFlowDataModuleDocs.qDocTemplMatterParty.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountPartyDocs.Close();

  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.Close();

  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qCountOtherDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qCountPartyDocs.SQL);

  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.SQL);
  RemoveNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.SQL);

  if(cmbShow.ItemIndex = 1) then      // not used
  begin
    AddNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.SQL);

    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.SQL);
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountPartyDocs.SQL);

    AddNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.SQL);
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.SQL);
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.SQL);

    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.SQL);
    AddNotUsedOrder(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.SQL);
  end
  else
  begin
    RemoveNotUsed(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.SQL);

    AddNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterParty.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qCountOtherDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qCountPartyDocs.SQL);


//    AddNotUsed(dmWorkFlowDataModuleDocs.qCountOtherDocs.SQL);
//    AddNotUsed(dmWorkFlowDataModuleDocs.qCountPartyDocs.SQL);

//    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.SQL);
    AddNotUsed(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.SQL);

//    AddNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.SQL);
//    AddNotUsed(dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.SQL);


{    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.SQL);

    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.SQL);
    AddOrderOnly(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.SQL);   }
  end;

  RefreshTree();
end;

procedure TfmWorkFlowDocTemplates.RefreshTreeAdminDocs;
begin
  dmWorkFlowDataModuleDocs.qCountAdminDocs.Close();
  dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Close();
  dmWorkFlowDataModuleDocs.qAdminUsedGroups.Close();

  dmWorkFlowDataModuleDocs.qAdminUsedGroups.Open();
  dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.Open();
  vtDocs.RootNodeCount := dmWorkFlowDataModuleDocs.qAdminUsedGroups.RecordCount;
end;

procedure TfmWorkFlowDocTemplates.RefreshTreeTaskDocs;
begin
  dmWorkFlowDataModuleDocs.qDocTemplMatterParty.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterPartyDocs.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountPartyDocs.Close();
  dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.Close;
  dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Close;

  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.Close();
  dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.Close();
  dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.Close();

  if(FLImitTo <> '') then
  begin
//    cmbWorkflowType.EditValue := FLimitTo;
  // AES 05/06/2014 commented to allow selection of document from any workflow.
//    cmbWorkflowType.Enabled := False;
  end else
  begin
    cmbWorkflowType.Enabled := True;
  end;

  CheckMatterParty(cmbWorkflowType.EditValue);
  vtDocs.RootNodeCount := dmWorkFlowDataModuleDocs.qDocTemplMatterParty.RecordCount;
end;

procedure TfmWorkFlowDocTemplates.aWorkflowTypeLookupUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not AdminDocs;
end;

procedure TfmWorkFlowDocTemplates.aTypeListComboChange(Sender: TObject);
begin
  AdminDocs := cmbType.ItemIndex = 1;
  cmbShow.Enabled := cmbType.ItemIndex = 0;
  cmbWorkflowType.Enabled := cmbType.ItemIndex = 0;
  SetLength(FExpandedNodes,0);
  RefreshTree();
end;

procedure TfmWorkFlowDocTemplates.CheckAdminDocs(AGroupID: Integer; AWorkflow: string);
begin
   if(dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Active) then
   begin
      if ((dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.ParamByName('groupid').AsInteger <> AGroupID) or (FUpdate = True)) then
      begin
         dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Close();
         dmWorkFlowDataModuleDocs.qCountAdminDocs.Close();
         FUpdate := False;
      end;
   end;

   if(not dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Active) then
   begin
      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.ParamByName('groupid').AsInteger := AGroupID;
      // 7/4/2011 AES commented because it makes no sense
      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.ParamByName('workflowtypecode').AsString := AWorkflow;
      dmWorkFlowDataModuleDocs.qDocTemplAdminDocs.Open();

      dmWorkFlowDataModuleDocs.qCountAdminDocs.ParamByName('groupid').AsInteger := AGroupID;
      // 7/4/2011 AES commented because it makes no sense
      dmWorkFlowDataModuleDocs.qCountAdminDocs.ParamByName('workflowtypecode').AsString := AWorkflow;
      dmWorkFlowDataModuleDocs.qCountAdminDocs.Open();
   end;
end;

procedure TfmWorkFlowDocTemplates.aFileSaveAsAccept(Sender: TObject);
var
  F: TextFile;
  LLine: String;
begin
  //
  AssignFile(F,aFileSaveAs.Dialog.FileName);
  Rewrite(F);
  if(UpperCase(ExtractFileExt(aFileSaveAs.Dialog.FileName)) = '.HTML') then
    LLine := vtDocs.ContentToHTML(tstAll,dmWorkFlowDataModule.tbWorkflowTypeDESCR.AsString)
  else
    LLine := vtDocs.ContentToRTF(tstAll);

  Writeln(F,LLine);
  CloseFile(F);
end;

procedure TfmWorkFlowDocTemplates.aPrintExecute(Sender: TObject);
  procedure LoadData(ANode: PVirtualNode; APartyType: String);
  var
    LData: PDocData;
    LChild: PVirtualNode;
  begin
    LChild := ANode;
    while(Assigned(LChild)) do
    begin
      LData := vtDocs.GetNodeData(LChild);

      if(Assigned(LChild.FirstChild)) then
        LoadData(LChild.FirstChild,LData.PartyType)
      else
      begin
        dmWorkFlowDataModuleDocs.vtDocTemplateReport.Append();
        dmWorkFlowDataModuleDocs.vtDocTemplateReportDocID.AsInteger       := LData.DocId;
        dmWorkFlowDataModuleDocs.vtDocTemplateReportDocumentName.AsString := LData.DocName;
        if(LData.GroupName = '') then
          dmWorkFlowDataModuleDocs.vtDocTemplateReportAddressee.AsString    := APartyType
        else
          dmWorkFlowDataModuleDocs.vtDocTemplateReportAddressee.AsString    := LData.GroupName + ' / ' + APartyType;
        dmWorkFlowDataModuleDocs.vtDocTemplateReportRefersTo.AsString     := GetOtherParties(LChild);
        dmWorkFlowDataModuleDocs.vtDocTemplateReport.Post();
      end;

      LChild := LChild.NextSibling;
    end;
  end;
var
  LPartyType: PVirtualNode;
  LPartyData: PDocData;
begin
 { FExpanding := true;
  try
    vtDocs.FullExpand();
  finally
    FExpanding := False;
    ResizeColumns();
  end; }
{  Printer.Orientation := poLandscape;
  vtDocs.Print(Printer,True);}
   oraquery2.Close;
   qryDocTemplates.Close;
   qryDocTemplates.ParamByName('workflowtypecode').AsString := cmbWorkflowType.EditValue;
   qryDocTemplates.Open;
//   oraquery2.Close;
//   oraquery2.ParamByName('workflowtypecode').AsString := cmbWorkflowType.EditValue;
//   oraquery2.Open;
   ppReport1.Print;

  // build data.
{  try
    dmWorkFlowDataModuleDocs.vtDocTemplateReport.Clear();
    dmWorkFlowDataModuleDocs.vtDocTemplateReport.Active := True;

    LPartyType := vtDocs.RootNode.FirstChild;
    while(Assigned(LPartyType)) do
    begin
      LPartyData := vtDocs.GetNodeData(LPartyType);
      LoadData(LPartyType.FirstChild,LPartyData.PartyType);
      LPartyType := LPartyType.NextSibling;
    end;

    qrWorkFlowDocTemplateReport := TqrWorkFlowDocTemplateReport.Create(self);
    try
      qrWorkFlowDocTemplateReport.AdminDocs := AdminDocs;
      qrWorkFlowDocTemplateReport.WorkFlowType := cmbWorkflowType.Text;
      qrWorkFlowDocTemplateReport.PreviewModal();
    finally
      FreeAndNil(qrWorkFlowDocTemplateReport);
    end;
  finally
    dmWorkFlowDataModuleDocs.vtDocTemplateReport.Clear();
    dmWorkFlowDataModuleDocs.vtDocTemplateReport.Active := False;
  end;    }

end;

procedure TfmWorkFlowDocTemplates.vtDocsPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  LNodeData: PDocData;
begin
  LNodeData := Sender.GetNodeData(Node);
  case TDocColumns(Column) of
    tdcDocument:
    begin
      case LNodeData.NodeType of
        ntGroup,
        ntAdmin:
          begin
            TargetCanvas.Font.Style := [fsBold];
            TargetCanvas.Font.Color := clNavy;
          end;
      else
        TargetCanvas.Font.Style := [];
      end;
    end;
  end;
end;

procedure TfmWorkFlowDocTemplates.CheckMatterGroupPartyDocs(
  AMatter: String; AGroupID: Integer; AParty: String);
begin
  if(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.Active) then
  begin
    if(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.ParamByName('workflowtypecode').AsString <> AMatter) or
      (dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.ParamByName('partytype').AsString <> AParty) or
      (dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.ParamByName('groupid').AsInteger <> AGroupID) then
    begin
      dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.Close();
      dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.Close();
    end;
  end;

  if(not dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.Active) then
  begin
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.ParamByName('workflowtypecode').AsString := AMatter;
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.ParamByName('partytype').AsString := AParty;
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.ParamByName('groupid').AsInteger := AGroupID;
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedPartyDocs.Open();

    dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.ParamByName('workflowtypecode').AsString := AMatter;
    dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.ParamByName('partytype').AsString := AParty;
    dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.ParamByName('groupid').AsInteger := AGroupID;
    dmWorkFlowDataModuleDocs.qCountGroupedPartyDocs.Open();
  end;

end;

procedure TfmWorkFlowDocTemplates.CheckMatterGroupParty(AMatter: String;
  AGroupID: Integer);
begin
  if(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.Active) then
  begin
    if(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.ParamByName('workflowtypecode').AsString <> AMatter) or
      (dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.ParamByName('groupid').AsInteger <> AGroupID) then
      dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.Close();
  end;

  if(not dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.Active) then
  begin
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.ParamByName('workflowtypecode').AsString := AMatter;
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.ParamByName('groupid').AsInteger := AGroupID;
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedParty.Open();
  end;
end;

procedure TfmWorkFlowDocTemplates.CheckMatterGroupOthers(AMatter: String;
  AGroupID: Integer);
begin
  if(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.Active) then
  begin
    if(dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.ParamByName('workflowtypecode').AsString <> AMatter) or
      (dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.ParamByName('groupid').AsInteger <> AGroupID) then
    begin
      dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.Close();
      dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.Close();
    end;
  end;

  if(not dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.Active) then
  begin
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.ParamByName('workflowtypecode').AsString := AMatter;
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.ParamByName('groupid').AsInteger         := AGroupID;
    dmWorkFlowDataModuleDocs.qDocTemplMatterGroupedOtherDocs.Open();
    dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.ParamByName('workflowtypecode').AsString := AMatter;
    dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.ParamByName('groupid').AsInteger := AGroupID;
    dmWorkFlowDataModuleDocs.qCountGroupedOtherDocs.Open();
  end;
end;

procedure TfmWorkFlowDocTemplates.aGroupsExecute(Sender: TObject);
begin
  fmWorkFlowDocumentGroupsDialog := TfmWorkFlowDocumentGroupsDialog.Create(Self);
  try
    fmWorkFlowDocumentGroupsDialog.ShowModal();

    RefreshTree();
  finally
    FreeAndNil(fmWorkFlowDocumentGroupsDialog);
  end;
end;

procedure TfmWorkFlowDocTemplates.SelectLastSelected;
begin
  vtDocs.IterateSubtree(nil,IterSelectLast,nil);
end;

procedure TfmWorkFlowDocTemplates.IterSelectLast(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Data: Pointer; var Abort: Boolean);
var
  LNodeData: PDocData;
begin
  LNodeData := Sender.GetNodeData(Node);
  if((LNodeData.DocID     = FSelectedNode.DOCID) and
     (LNodeData.NodeType  = FSelectedNode.NodeType) and
     (LNodeData.GroupID   = FSelectedNode.GroupID) and
     (LNodeData.PartyType = FSelectedNode.PartyType)) then
  begin
    Sender.Selected[Node] := true;
    Sender.FocusedNode := Node;   //causes some recusion when only child!!!..
    Sender.ScrollIntoView(NOde,True);
    FSelectedNode.DocID := -1;
    FSelectedNode.NodeType := ntNone;
    Abort := True;
  end;
end;

procedure TfmWorkFlowDocTemplates.ExpandToSelectedDoc(ADocType: String);
begin
  SetLength(FExpandedNodes,Length(FExpandedNodes) + 1);
  if (ADocType = C_DOCTYPEPARTY) then
  begin
    if(FSelectedNode.GroupID > -1) then
    begin
      FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
      FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntGroup;
      FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := '';
      FExpandedNodes[Length(FExpandedNodes) - 1].GroupID := FSelectedNode.GroupID;

      SetLength(FExpandedNodes,Length(FExpandedNodes) + 1);
      FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
      FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntGroupParty;
      FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := FSelectedNode.PartyType;
      FExpandedNodes[Length(FExpandedNodes) - 1].GroupID := FSelectedNode.GroupID;
    end else
    begin
      FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
      FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntParty;
      FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := FSelectedNode.PartyType;
      FExpandedNodes[Length(FExpandedNodes) - 1].GroupID := -1;
    end;
  end else
  if (ADocType = C_DOCTYPECLIENT) then
  begin
    if(FSelectedNode.GroupID > -1) then
    begin
      FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
      FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntGroup;
      FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := '';
      FExpandedNodes[Length(FExpandedNodes) - 1].GroupID := FSelectedNode.GroupID;

      SetLength(FExpandedNodes,Length(FExpandedNodes) + 1);
      FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
      FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntGroupOther;
      FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := C_CLIENT;
      FExpandedNodes[Length(FExpandedNodes) - 1].GroupID := FSelectedNode.GroupID;
    end else
    begin
      FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
      FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntOther;
      FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := C_CLIENT;
      FExpandedNodes[Length(FExpandedNodes) - 1].GroupID := -1;
    end;
  end else
  if (ADocType = C_DOCTYPEADMIN) then
  begin
    if(FSelectedNode.GroupID > -1) then
    begin
      FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
      FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntOther;
      FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := '';
      FExpandedNodes[Length(FExpandedNodes) - 1].GroupID := FSelectedNode.GroupID;
      SetLength(FExpandedNodes,Length(FExpandedNodes) + 1);
    end else
    begin
      FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
      FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntOther;
      FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := '';
      FExpandedNodes[Length(FExpandedNodes) - 1].GroupID := -1;
    end;
  end;
end;

procedure TfmWorkFlowDocTemplates.ExpandToSelectedAdminDoc(
  ADocType: String);
begin
  SetLength(FExpandedNodes,Length(FExpandedNodes) + 1);
  FExpandedNodes[Length(FExpandedNodes) - 1].DocID := -1;
  FExpandedNodes[Length(FExpandedNodes) - 1].NodeType := ntAdmin;
  FExpandedNodes[Length(FExpandedNodes) - 1].PartyType := FSelectedNode.PartyType;
  FExpandedNodes[Length(FExpandedNodes) - 1].GroupID   := FSelectedNode.GroupID;

end;

procedure TfmWorkFlowDocTemplates.actExitExecute(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfmWorkFlowDocTemplates.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
   Text := 'WorkFlow Type: ' + cmbWorkflowType.Text;
end;

procedure TfmWorkFlowDocTemplates.ppSubReport1Print(Sender: TObject);
begin
   ppSubReport1.Visible := True;
   if ppDBText8.Text = '' then
      ppSubReport1.Visible := False;
end;

type
  TcxLookupComboBoxAccess = class (TcxLookupComboBox);

procedure TfmWorkFlowDocTemplates.DoMouseWheel(Sender: TObject);
begin
  TcxLookupComboBoxAccess(Sender).OnMouseWheel := LookupViewMouseWheel;
end;

procedure TfmWorkFlowDocTemplates.LookupViewMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

function TfmWorkFlowDocTemplates.HasDataForms(ADocID: integer): boolean;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;

      try
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('SELECT COUNT(*) AS DOC_COUNT FROM WKFLOWDOCTEMPLATES_DATAFIELDS WHERE WORKFLOWDOCTEMPLATES_DOCID = :docid');
         loQry.ParamByName('docid').AsInteger := ADocID;
         loQry.Open;
         Result := (loQry.FieldByName('DOC_COUNT').AsInteger > 0);
      finally
         loQry.Close;
         FreeAndNil(loQry);
      end;
   except
      on E : Exception do
      begin
          Raise;
      end;
   end;
end;

end.
