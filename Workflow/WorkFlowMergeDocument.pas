unit WorkFlowMergeDocument;
(*
  WorkFlow Merge Document

  Uses the current MergeType class, to configure screen
  and display all documents for the given task, and
  all related parties, then launch the merge type.

  *** Note.
  Uses two synchronised virtual trees, vtLeft and vtRight
  which gives the functionality of check boxes in two levels
  of the tree..

  Mathew Dredge, Aug-Sep 2002

  ***
 *)

{$DEFINE COLLAPSEGROUP}

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, VirtualTrees, WorkflowTask, ActnList, ActnMan,
  ToolWin, ActnCtrls, ImgList, StdActns, Menus, Variants, cxDateUtils,
  WorkFlowDocumentMerge, OracleUniProvider, Uni, DBAccess, MemDS, ActiveX,
  cxControls, cxContainer, cxEdit, cxCheckBox, dxBarExtItems, dxBar,
  WorkFlowDataModule, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  XPStyleActnCtrls, cxClasses, Data.DB, System.Actions, cxBarEditItem,
  Vcl.PlatformDefaultStyleActnCtrls, System.ImageList;

const
  C_SETTINGOWNER = 'WKFMERGEDOC';

  C_SHOWTASKDOCS     = 'IN (SELECT docid FROM workflowtaskdoclink WHERE tasklineid = :tasklineid)';
  C_SHOWNOTASKDOCS   = 'NOT IN (SELECT docid FROM workflowtaskdoclink) AND workflowtypecode = :workflowtypecode';
  C_SHOWNOTASKDOC    = '= :docid ';
  C_SHOWPROJTASKDOCS = 'IN (SELECT docid FROM SCALECOSTDOCLINK WHERE '+
                       ' SCALECOSTDOCLINK.NSCALECOST = :NSCALECOST)';

type
  TDocNodeType = (dntDoc, dntOtherParty, dntAddresseeParty, dntParty, dntNoTaskParty, dntGroup);

  TPartyNName = array of integer;

  // tree data.
  TOtherParties = record
    Party: String;
    Count: Integer;
  end;

  TOtherPartiesArray = array of TOtherParties;

  PDocData = ^TDocData;
  TDocData = record
    NodeType: TDocNodeType;
    GroupID,
    DocID,
    NMatter,
    PartyCount,
    NName,
    ClientNName: Integer;
    GroupName,
    PartyType,
    PartySearch,
    DocumentName,
    DocumentPath,
    TemplatePath,
    DataFilePath,
    DataForm,
    Workflow: String;
    OtherParties: TOtherPartiesArray;
    ReferredOptional: Boolean;
    DocIndexPath: string;
    PrecClassification: string;
    PrecCategory: string;
    IManageDoc: string;
    TemplateType: string;
  end;

  PPartyData = ^TPartyData;
  TPartyData = record
    NName: Integer;
    PartyType,
    PartySearch: String;
    ActingFor,
    Through: Boolean;
    sThrough: String;
  end;

type
  TfmWorkFlowMergeDocument = class(TForm)
    pGrids: TPanel;
    vtDocs: TVirtualStringTree;
    vtParties: TVirtualStringTree;
    ImageList: TImageList;
    ActionManager: TActionManager;
    aMerge: TAction;
    aAddParty: TAction;
    aEditParty: TAction;
    aDeleteParty: TAction;
    PopupMenu: TPopupMenu;
    miAddParty: TMenuItem;
    miEditParty: TMenuItem;
    miDeleteParty: TMenuItem;
    aPartyMoveUp: TAction;
    aPartyMoveDown: TAction;
    aRemove: TAction;
    pmDocs: TPopupMenu;
    miRemove: TMenuItem;
    miDocMoveDown: TMenuItem;
    miDocMoveUp: TMenuItem;
    N2: TMenuItem;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    Splitter1: TSplitter;
    aDraft: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure vtPartiesColumnDblClick(Sender: TBaseVirtualTree;
      Column: TColumnIndex; Shift: TShiftState);
    procedure aEditPartyExecute(Sender: TObject);
    procedure aEditPartyUpdate(Sender: TObject);
    procedure aDeletePartyExecute(Sender: TObject);
    procedure aAddPartyUpdate(Sender: TObject);
    procedure aAddPartyExecute(Sender: TObject);
    procedure aMergeExecute(Sender: TObject);
    procedure aMergeUpdate(Sender: TObject);
    procedure FormHide(Sender: TObject);
    function HandleCreateException: boolean; override;
    procedure FormResize(Sender: TObject);
    procedure aPartyMoveUpUpdate(Sender: TObject);
    procedure aPartyMoveUpExecute(Sender: TObject);
    procedure aPartyMoveDownExecute(Sender: TObject);
    procedure aPartyMoveDownUpdate(Sender: TObject);
    procedure vtDocsPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure vtPartiesPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure vtPartiesDragAllowed(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure vtPartiesDragOver(Sender: TBaseVirtualTree; Source: TObject;
      Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
      var Effect: Integer; var Accept: Boolean);
    procedure vtDocsDragOver(Sender: TBaseVirtualTree; Source: TObject;
      Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
      var Effect: Integer; var Accept: Boolean);
    procedure vtPartiesCollapsing(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var Allowed: Boolean);
    procedure vtDocsCollapsing(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var Allowed: Boolean);
    procedure vtDocsDragAllowed(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure vtDocsDragDrop(Sender: TBaseVirtualTree; Source: TObject;
      DataObject: IDataObject; Formats: TFormatArray; Shift: TShiftState;
      Pt: TPoint; var Effect: Integer; Mode: TDropMode);
    procedure aRemoveExecute(Sender: TObject);
    procedure aRemoveUpdate(Sender: TObject);
    procedure vtDocsGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vtDocsHeaderClick(Sender: TVTHeader; HitInfo: TVTHeaderHitInfo);
    procedure vtPartiesGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vtPartiesHeaderClick(Sender: TVTHeader;
      HitInfo: TVTHeaderHitInfo);
  private
    FMatterClient: String;
    procedure SetNMatter(const Value: Integer);
    procedure EnableChecks(ANode: PVirtualNode);
    procedure GetAddresseeList(ANode: PVirtualNode; var ANodeList: TNodeArray);
    procedure GetAddresseePartyList(ANode: PVirtualNode; var ANodeList: TNodeArray);
    procedure SetWorkflow(const Value: string);
  private
    { Private declarations }

    FTask: TWorkflowTask;
    FNMatter: Integer;
    FMatterDesc: String;
    FWorkflowType: String;
    FMergeType: TMergeDocumentClass;
    FShowNoTaskDocuments: Boolean;
    FWorkflowTypeCode: String;
    FPhoneBookClose: TCloseEvent;
    FUpdateWindowEvent: TNotifyEvent;
    FDocParties: TStringList;
    FFilterParties: Boolean;
    FExpandedParties: Boolean;
    FThrough: Boolean;
    FDocID: Integer;
    bFromDoc : boolean;
    FWorkflow: string;
    FWorkFlowAdminDoc: boolean;
    dmWorkFlowDataModule: TdmWorkFlowDataModule;
    FDocIDProject: Integer;


//    procedure CopyNode(ALeft, ARight: PVirtualNode);
    procedure SetTask(const Value: TWorkflowTask);
    procedure OtherPartyClose(Sender: TObject; var Action: TCloseAction);
    procedure UpdateMatterForm();

    procedure AddDataFormData(AMergeDoc: TMergeDocument; ADataFor: TDataFor; APartyType: String; ANName: Integer; APartyCounter: Integer);
    procedure AddDataFormFields(AMergeDoc: TMergeDocument; ADataFor: TDataFor; APartyType: String; ANName: integer);

    procedure AddDataFormMatterData(AMergeDoc: TMergeDocument; ADataFor: TDataFor; APartyType: String; ANName: Integer; ANMatter: Integer; APartyCounter: Integer);
    procedure AddDataFormMatterFields(AMergeDoc: TMergeDocument; ADataFor: TDataFor; APartyType: String; ANName: Integer);

    procedure AddClientData(AMergeDoc: TMergeDocument; ANMatter: Integer);

    procedure AddPartyFields(AMergeDoc: TMergeDocument; ADataFor: TDataFor);
    procedure AddPartyData(AMergeDoc: TMergeDocument; ADataFor: TDataFor; ANMatter: Integer; ANName: Integer; APartyNumber: Integer; APartyType: String);
    procedure MergeWithParties();

    procedure AddEmployeeData(AMergeDoc: TMergeDocument; ANMatter: Integer);
    procedure AddBranchData(AMergeDoc: TMergeDocument);
    procedure AddEntityData(AMergeDoc: TMergeDocument);
    procedure AddMatterPartyData(AMergeDoc: TMergeDocument; ANMatter: Integer);

//    procedure AddMatterData(AMergeDoc: TMergeDocument);
    procedure CopyDataTable(AMergeDoc: TMergeDocument; ADataFor: TDataFor; AQuery: TUniQuery);
    procedure CopyFieldDefsTable(AMergeDoc: TMergeDocument; ADataFor: TDataFor; AQuery: TUniQuery);

    procedure AddClientFormData(AMergeDoc: TMergeDocument; ANMatter: Integer);
    procedure AddClientFormDataDefs(AMergeDoc: TMergeDocument; ANMatter: Integer);

    procedure ShowParties();

    property MatterDesc:          String     read FMatterDesc          write FMatterDesc;
    property MatterClient:        String     read FMatterClient        write FMatterClient;
    property WorkflowType:        String     read FWorkflowType        write FWorkflowType;
    property WorkflowTypeCode:    String     read FWorkflowTypeCode    write FWorkflowTypeCode;
    procedure AddMatterData(AMergeDoc: TMergeDocument);

    procedure AddMatterCarriageRates(AMergeDoc: TMergeDocument; ANMatter: integer);
  public
    { Public declarations }
    LPartyNName: TPartyNName;

    procedure ShowDocuments();
    procedure MergeFromAddressee(AAddresseeNode: PVirtualNode; FileID: string; AMergeDoc: TMergeDocument);
    procedure AddMatterDataForms(AMergeDoc: TMergeDocument; ANMatter: integer);
    procedure AddPartyFormData(AMergeDoc: TMergeDocument; ANMatter: Integer; ANName: integer; APartyType: string; ADataFor: TDataFor);
//    procedure MergeWithParties();

    property ActThrough:          Boolean       read FThrough             write FThrough;
    property Task:                TWorkflowTask read FTask                write SetTask;
    property NMatter:             Integer       read FNMatter             write SetNMatter;
    property ShowNoTaskDocuments: Boolean       read FShowNoTaskDocuments write FShowNoTaskDocuments;
    property UpdateWindowEvent:   TNotifyEvent  read FUpdateWindowEvent   write FUpdateWindowEvent;
    property DocID:               Integer       read FDocID               write FDocID;
    property WorkFlow:            string        read FWorkflow            write SetWorkflow;
    property WorkFlowAdminDoc:    Boolean       read FWorkFlowAdminDoc    write FWorkFlowAdminDoc Default False;
    property DocIDProject:        Integer       read FDocIDProject        write FDocIDProject;
  end;

var
  fmWorkFlowMergeDocument: TfmWorkFlowMergeDocument;

implementation

uses MiscFunc, Matters, NSearch, citFunc, Dialogs, PhoneBook, WorkFlowDataChangedDialog,
  WorkFlowDataModuleMerge, WorkFlowDataModuleDocs, AxiomData, Process;

{$R *.dfm}



// gets the text for the specified node and column for the tree..

procedure TfmWorkFlowMergeDocument.FormCreate(Sender: TObject);
begin
  FDocParties := TStringList.Create();
  vtDocs.NodeDataSize := SizeOf(TDocData);
  vtParties.NodeDataSize := SizeOf(TPartyData);
  FFilterParties := True;
  FExpandedParties := False;
  FDocID := 0;
  bFromDoc := False;

  FMergeType := GetWorkFlowMergeTypeClass('');
  if(not Assigned(FMergeType)) then
    raise Exception.Create('No Merge Type has been selected for use.'#13#10'Please use the Options on the Workflow Document Templates screen to select one.');

  if(SettingLoadInteger(C_SETTINGOWNER,'LEFT') <> 0) then
  begin
    Left        := SettingLoadInteger(C_SETTINGOWNER,'LEFT');
    Width       := SettingLoadInteger(C_SETTINGOWNER,'WIDTH');
    Top         := SettingLoadInteger(C_SETTINGOWNER,'TOP');
    Height      := SettingLoadInteger(C_SETTINGOWNER,'HEIGHT');
  end;
  WindowState := TWindowState(SettingLoadInteger(C_SETTINGOWNER,'WINDOWSTATE'));

  if(SettingExists(C_SETTINGOWNER,'SPLIT')) then
    vtParties.Width := SettingLoadInteger(C_SETTINGOWNER,'SPLIT')
  else
    vtParties.Width := Width div 3;
end;

// load the documents and parties into the tree (not very virtual)
procedure TfmWorkFlowMergeDocument.ShowDocuments();
  procedure ReplaceLine(ALine: String; AStrings: TStrings);
  var
    i: Integer;
  begin
    for i := 0 to AStrings.Count - 1 do
    begin
      if(AStrings[i] = '-- CHANGE NEXT') then
      begin
        AStrings[i + 1] := ALine;
        Break;
      end;
    end;
  end;

  procedure AddTreeParty(AParty: String; ANodeLeft: PVirtualNode; AReferredOptional: Boolean);
  var
    LNode: PVirtualNode;
    LData: PDocData;
  begin
    dmWorkFlowDataModuleMerge.qTaskParty2.ParamByName('nmatter').AsInteger  := NMatter;
    dmWorkFlowDataModuleMerge.qTaskParty2.ParamByName('partytype').AsString := AParty;
    dmWorkFlowDataModuleMerge.qTaskParty2.Open();

    while(not dmWorkFlowDataModuleMerge.qTaskParty2.Eof) do
    begin
      LNode := vtDocs.AddChild(ANodeLeft);

      LData := vtDocs.GetNodeData(LNode);

      LData.NodeType         := dntParty;
      LData.NName            := dmWorkFlowDataModuleMerge.qTaskParty2.FieldByName('NNAME').AsInteger;
      LData.PartyType        := dmWorkFlowDataModuleMerge.qTaskParty2.FieldByName('CATEGORY').AsString;
      LData.PartySearch      := dmWorkFlowDataModuleMerge.qTaskParty2.FieldByName('SEARCH').AsString;
      LData.ReferredOptional := AReferredOptional;
      dmWorkFlowDataModuleMerge.qTaskParty2.Next();
    end;
    dmWorkFlowDataModuleMerge.qTaskParty2.Close();
  end;

  procedure AddOtherParties(ANode: PVirtualNode; AOtherParties: TOtherPartiesArray; AReferredOptional: Boolean);
  var
    LOtherPartyData: PDocData;
    LOtherParty: PVirtualNode;
    i: Integer;
  begin
    for i := 0 to Length(AOtherParties) - 1 do
    begin

      LOtherParty :=  vtDocs.AddChild(ANode);
      LOtherPartyData := vtDocs.GetNodeData(LOtherParty);
      LOtherPartyData.NodeType         := dntOtherParty;
      LOtherPartyData.ReferredOptional := AReferredOptional;
      LOtherPartyData.PartyType        := AOtherParties[i].Party;

      if(AOtherParties[i].Count = 1) then
        AddTreeParty(AOtherParties[i].Party, LOtherParty, AReferredOptional);
    end;
  end;

  function AddTreeAddressee(AParty: String; ANodeLeft: PVirtualNode; AOtherParties: TOtherPartiesArray; AReferredOptional: Boolean): Integer;
  var
    LNode: PVirtualNode;
    LData: PDocData;
  begin
    Result := 0;

    if(AParty <> 'Client') then
    begin

      dmWorkFlowDataModuleMerge.qTaskParty.ParamByName('nmatter').AsInteger := NMatter;
      dmWorkFlowDataModuleMerge.qTaskParty.ParamByName('partytype').AsString := AParty;
      dmWorkFlowDataModuleMerge.qTaskParty.Open();

      while(not dmWorkFlowDataModuleMerge.qTaskParty.Eof) do
      begin
        Inc(Result);
        LNode := vtDocs.AddChild(ANodeLeft);

        LData := vtDocs.GetNodeData(LNode);

        LData.NodeType         := dntAddresseeParty;
        LData.NName            := dmWorkFlowDataModuleMerge.qTaskParty.FieldByName('NNAME').AsInteger;
        LData.PartyType        := dmWorkFlowDataModuleMerge.qTaskParty.FieldByName('CATEGORY').AsString;
        LData.PartySearch      := dmWorkFlowDataModuleMerge.qTaskParty.FieldByName('SEARCH').AsString;
        LData.ReferredOptional := AReferredOptional;

        AddOtherParties(LNode, AOtherParties, AReferredOptional);

        vtDocs.Expanded[LNode] := True;

        dmWorkFlowDataModuleMerge.qTaskParty.Next();
      end;
      dmWorkFlowDataModuleMerge.qTaskParty.Close();
    end else
    begin // client
      LNode := vtDocs.AddChild(ANodeLeft);
      LData := vtDocs.GetNodeData(LNode);

      LData.NodeType         := dntAddresseeParty;
      LData.NName            := dmWorkFlowDataModuleMerge.qMatterClient.FieldByName('NNAME').AsInteger;
      LData.PartyType        := 'Client';
      LData.PartySearch      := dmWorkFlowDataModuleMerge.qMatterClient.FieldByName('SEARCH').AsString;
      LData.ReferredOptional := AReferredOptional;

      AddOtherParties(LNode, AOtherParties, AReferredOptional);

      vtDocs.Expanded[LNode] := True;
    end;
  end;

  procedure GetOtherParties(ANodeData: PDocData);
  var
    i: Integer;
  begin
    dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.ParamByName('nmatter').AsInteger := NMatter;
    dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.ParamByName('docid').AsInteger := ANodeData.DocID;
    dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.Open();
    try
      SetLength(ANodeData.OtherParties,dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.RecordCount);
      i := 0;
      while(not dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.Eof) do
      begin
        ANodeData.OtherParties[i].Party := dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.FieldByName('PARTYTYPE').AsString;
        ANodeData.OtherParties[i].Count := dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.FieldByName('PARTYTYPECOUNT').AsInteger;
        FDocParties.Add(ANodeData.OtherParties[i].Party);
        Inc(i);
        dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.Next();
      end;
    finally
      dmWorkFlowDataModuleMerge.qTaskDocumentsOtherParties.Close();
    end;
  end;

var
   LAddresseeData, LData, LDocData, LDataDoc: PDocData;
   LGroupNode, LNodeDoc: PVirtualNode;
   LParty: String;
   LGroup: Integer;

   LDocuments: TCollection;
   LMergeDoc: TMergeDocument;
   LDocID, i: Integer;
   DummyNode: PVirtualNode;
   LDocType: string;
   ANMatter: integer;
   bFromDoc: boolean;
   ARecCount: integer;
   LPartyNName: array of integer;
   ANClient: integer;

   LLastPartyType: String;
   LPartyCounter: Integer;
   LPartyList, LAddressees: TNodeArray;
begin
  LGroup     := -1;
  LGroupNode := nil;
  ARecCount := 0;

  vtDocs.BeginUpdate();
  try
    vtDocs.Clear();
    FDocParties.Clear();

    LParty := '';
    dmWorkFlowDataModuleMerge.qTaskDocuments.Close();

    if(ShowNoTaskDocuments) then
    begin
      if (DocID > 0) then
      begin
         ReplaceLine(C_SHOWNOTASKDOC, dmWorkFlowDataModuleMerge.qTaskDocuments.SQL);
         dmWorkFlowDataModuleMerge.qTaskDocuments.ParamByName('docid').AsInteger := DocID;
         bFromDoc := True;
      end
      else
      if (DocID = 0) and (DocIDProject > 0) then
      begin
         ReplaceLine(C_SHOWPROJTASKDOCS, dmWorkFlowDataModuleMerge.qTaskDocuments.SQL);
         dmWorkFlowDataModuleMerge.qTaskDocuments.ParamByName('NSCALECOST').AsInteger := DocIDProject;
      end
      else
      begin
         ReplaceLine(C_SHOWNOTASKDOCS, dmWorkFlowDataModuleMerge.qTaskDocuments.SQL);
         dmWorkFlowDataModuleMerge.qTaskDocuments.ParamByName('workflowtypecode').AsString := WorkflowTypeCode;
      end;
    end else
    begin
      ReplaceLine(C_SHOWTASKDOCS, dmWorkFlowDataModuleMerge.qTaskDocuments.SQL);
      dmWorkFlowDataModuleMerge.qTaskDocuments.ParamByName('tasklineid').AsInteger := Task.TemplateLineID;
    end;

    with dmAxiom.qryTmp do
    begin
       try
         Close;
         try
            begin
               if Task <> nil then
               begin
                  SQL.Text := 'select a.DOCID, a.DOCTYPE from workflowdoctemplates a, workflowtaskdoclink b where '+
                              ' a.DOCID = b.DOCID and b.TASKLINEID = :taskid ';
                  ParamByName('taskid').AsInteger := Task.TemplateLineID;
                  bFromDoc := False;
               end
               else
               begin
                  SQL.Text := 'select a.DOCID, a.DOCTYPE from workflowdoctemplates a where '+
                              ' a.DOCID = :DOCID ';
                  ParamByName('docid').AsInteger := DocID;
                  bFromDoc := True;
               end;
            end;
         except
             //
         end;
         open;
         LDocID := FieldByName('DOCID').AsInteger;
         LDocType :=  FieldByName('DOCTYPE').AsString;
         ARecCount := dmAxiom.qryTmp.RecordCount;
         Close;
       except
       //
       end;
    end;

    if (LDocType = 'A') and (ARecCount = 1) then
    begin
      try
        WorkFlowAdminDoc := True;
        LDocuments := TCollection.Create(TMergeDocument);
        dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.Close();
  //      dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.ParamByName('groupid').AsInteger := dmWorkFlowDataModuleMerge.qTaskDocumentsGROUPID.AsInteger;
        dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.Open();

  //      LDocID := 4735;  // Integer(tvDocs.Selected.Data);
        if(not dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.Locate('docid',LDocID,[])) then
          MessageDlg('For some reason the document template '#13#10'['+ dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('DOCUMENTNAME').AsString +
          ']'#13#10'[' + ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('TEMPLATEPATH').AsString, ANMatter) + '] '#13#10' can no-longer be located.', mtError, [mbOK], 0)
        else
        begin


          FMergeType :=  GetWorkFlowMergeTypeClass(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('TEMPLATETYPE').AsString);
          LMergeDoc := FMergeType.Create(LDocuments);
          LMergeDoc.ParentForm   := Self;
//          if Task = nil then
//             ANMatter := 0
//          else
          ANMatter := NMatter;
          LMergeDoc.NMatter            := ANMatter;
          LMergeDoc.TemplateName       := dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('DOCUMENTNAME').AsString;
          LMergeDoc.TemplatePath       := ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('TEMPLATEPATH').AsString, ANMatter);
          LMergeDoc.DataFilePath       := ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('DATAFILEPATH').AsString, ANMatter);
          LMergeDoc.DocumentPath       := ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('DOCUMENTPATH').AsString, ANMatter, LDocID, dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('DOCUMENTNAME').AsString);
          LMergeDoc.DataForm           := ParseMacros(dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('DATAFORM').AsString, ANMatter);
          LMergeDoc.DocumentID         := LDocID;
          LMergeDoc.PrecClassification := dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('NPRECCLASSIFICATION').AsString;
          LMergeDoc.PrecCategory       := dmWorkFlowDataModuleDocs.qDocTemplWKAdminDocs.FieldByName('NPRECCATEGORY').AsString;

           // added by AES 17-Oct-2011
          LMergeDoc.WorkFlow           := WorkflowTypeCode;
          AddMatterData(LMergeDoc);

          if (not LMergeDoc.IsFieldsEmpty(dfClient)) then
            LMergeDoc.Clear(dfClient);
          AddClientData(LMergeDoc, NMatter);

          AddMatterCarriageRates(LMergeDoc, NMatter);
          // AES 28/05/2014
          // this is done inside the AddClientData function
//          AddClientFormData(LMergeDoc,NMatter);

          if (not LMergeDoc.IsFieldsEmpty(dfUserBranch)) then
             LMergeDoc.Clear(dfUserBranch);

          if (not LMergeDoc.IsFieldsEmpty(dfBranch)) then
             LMergeDoc.Clear(dfBranch);
          AddBranchData(LMergeDoc);

          if (not LMergeDoc.IsFieldsEmpty(dfEntity)) then
             LMergeDoc.Clear(dfEntity);
          AddEntityData(LMergeDoc);

          if(moNeedsData in LMergeDoc.Options) then
          begin
             AddEmployeeData(LMergeDoc, NMatter );
             LMergeDoc.NMatter := NMatter;
             // this is really a place holder cos admin documents need no data as far as we know..
             LMergeDoc.AddColumn(dfOther, 'DocumentName',ftString,1000);
             LMergeDoc.AddRow(dfOther);
             LMergeDoc.AddValue(dfOther,'DocumentName',LMergeDoc.TemplateName);
             LMergeDoc.PostRow(dfOther);
          end;

//          MergeWithParties();

          AddPartyFields(LMergeDoc,dfAddressee);
          ANClient := TableInteger('MATTER','NMATTER',NMATTER,'NCLIENT');
          LMergeDoc.AddRow(dfAddressee);
          AddPartyData(LMergeDoc,dfAddressee,NMatter,TableInteger('PHONEBOOK','NCLIENT',ANClient,'NNAME'),-1,'Client');
          LMergeDoc.PostRow(dfAddressee);
        end;

      // for each document, merge and check result to see what
      // to do next.. cancel will stop without going to any
      // more documents.
      for i := 0 to LDocuments.Count - 1 do
      begin
        LMergeDoc := TMergeDocument(LDocuments.Items[i]);
        ModalResult := LMergeDoc.DoMerge(LDocID, DummyNode, LMergeDoc, LPartyNName, bFromDoc);
        case ModalResult of
          mrOk:;    // do nothing, all oky dokie..
          mrNo:     Exit; // pressed cancel
          mrCancel: Exit; // error of some type..
        else
          Exit; // dunno so just exit.
        end;
      end
      finally
        FreeAndNil(LDocuments);
      end
    end
    else
    // AES
    // this is original stuff
    begin
        dmWorkFlowDataModuleMerge.qTaskDocuments.ParamByName('nmatter').AsInteger := NMatter;
        dmWorkFlowDataModuleMerge.qTaskDocuments.Open();
        dmWorkFlowDataModuleMerge.qMatterClient.ParamByName('nmatter').AsInteger  := NMatter;
        dmWorkFlowDataModuleMerge.qMatterClient.Open();

        while(not dmWorkFlowDataModuleMerge.qTaskDocuments.Eof) do
        begin
          if(not dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('GROUPID').IsNull) then
          begin
            if(LGroup <> dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('GROUPID').AsInteger) then
            begin
              LGroup := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('GROUPID').AsInteger;
              LGroupNode := vtDocs.AddChild(nil);
              LDataDoc   := vtDocs.GetNodeData(LGroupNode);

              LDataDoc.NodeType     := dntGroup;
              LDataDoc.DocID        := -1;
              LDataDoc.GroupName    := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('GROUPNAME').AsString;
              LDataDoc.GroupID      := LGroup;
            end;
          end else
          begin
            LGroup     := -1;
            LGroupNode := nil;
          end;

          LNodeDoc := vtDocs.AddChild(LGroupNode);
          LDataDoc := vtDocs.GetNodeData(LNodeDoc);

          LDataDoc.NodeType         := dntDoc;
          LDataDoc.DocID            := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('DOCID').AsInteger;
          LDataDoc.DocumentName     := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('DOCUMENTNAME').AsString;
          LDataDoc.DocumentPath     := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('DOCUMENTPATH').AsString;
          LDataDoc.TemplatePath     := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('TEMPLATEPATH').AsString;
          LDataDoc.DataFilePath     := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('DATAFILEPATH').AsString;
          LDataDoc.DataForm         := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('DATAFORM').AsString;
          LDataDoc.ReferredOptional := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('REFERREDOPTIONAL').AsString = 'Y';
          LDataDoc.DocIndexPath     := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('DOCUMENTPATH').AsString;
          LDataDoc.PrecClassification := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('NPRECCLASSIFICATION').AsString;
          LDataDoc.PrecCategory     :=  dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('NPRECCATEGORY').AsString;
          LDataDoc.TemplateType     := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('TEMPLATETYPE').AsString;

          GetOtherParties(LDataDoc);

          LDataDoc.PartyType    := dmWorkFlowDataModuleMerge.qTaskDocuments.FieldByName('PARTYTYPE').AsString;
          LDataDoc.NName        := -1;

          FDocParties.Add(LDataDoc.PartyType);

          FDocParties.Sorted := True;

          if(LDataDoc.PartyType <> '') then
            AddTreeAddressee(LDataDoc.PartyType, LNodeDoc, LDataDoc.OtherParties, LDataDoc.ReferredOptional);

          vtDocs.Expanded[LNodeDoc] := True;
          if(Assigned(LGroupNode)) then
   {$IFNDEF COLLAPSEGROUP}
            vtDocs.Expanded[LGroupNode] := True;
   {$ELSE}
            vtDocs.Expanded[LGroupNode] := False;
   {$ENDIF}
          EnableChecks(LNodeDoc);
          dmWorkFlowDataModuleMerge.qTaskDocuments.Next();
        end;
    end;
    dmWorkFlowDataModuleMerge.qTaskDocuments.Close();
    dmWorkFlowDataModuleMerge.qMatterClient.Close();
  finally
    vtDocs.EndUpdate();
  end;
end;

// given the task, update the display..
procedure TfmWorkFlowMergeDocument.SetTask(const Value: TWorkflowTask);
begin
  FTask := Value;
  ShowDocuments();
  ShowParties();
end;

procedure TfmWorkFlowMergeDocument.FormShow(Sender: TObject);
begin
  if((not ShowNoTaskDocuments) and Assigned(Task)) then
    Caption := 'Task Document Assembly - [' + Task.Sequence + '] - ' + dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter) + ' - ' + MatterClient + ' (' + Trim(WorkflowType) + ')'
  else
    Caption := 'Generic Document Assembly - ' + dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter) + ' - ' + MatterClient + ' (' + Trim(WorkflowType) + ')'
end;

// close is the same as cancel, use mrCancel for modal forms of this dialog..
procedure TfmWorkFlowMergeDocument.aCloseExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close();
end;

// if the right column is double clicked, edit the party.
procedure TfmWorkFlowMergeDocument.vtPartiesColumnDblClick(
  Sender: TBaseVirtualTree; Column: TColumnIndex; Shift: TShiftState);
begin
  aEditParty.Execute();
end;

// action to edit the selected party..
procedure TfmWorkFlowMergeDocument.aEditPartyExecute(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
  LData: PPartyData;
begin
 LData := vtParties.GetNodeData(vtParties.FocusedNode);
  if(LData.NName > -1) then
  begin
    LfrmPhonebook                    := TfrmPhonebook.Create(Self);
    LfrmPhonebook.Search             := IntToStr(LData.NName); //  PartySearch;
    LfrmPhonebook.ShowMatterSpecific := True;
    LfrmPhonebook.LimitToNMatter     := NMatter;
    FPhoneBookClose                  := LfrmPhonebook.OnClose;
    LfrmPhonebook.OnClose            := OtherPartyClose;
    LfrmPhonebook.Show();
  end;
end;

// action update.
procedure TfmWorkFlowMergeDocument.aEditPartyUpdate(Sender: TObject);
var
  LData: PPartyData;
begin
 if(Assigned(vtParties.FocusedNode)) then
  begin
    LData := vtParties.GetNodeData(vtParties.FocusedNode);
    TAction(Sender).Enabled := (ActiveControl = vtParties) and (LData.NName > -1);
  end else
    TAction(Sender).Enabled := False;
end;

// delete the selected party action
procedure TfmWorkFlowMergeDocument.aDeletePartyExecute(Sender: TObject);
var
  LData: PPartyData;

  procedure RecurseDeleteParty(ANode: PVirtualNode; ANName: Integer);
  var
    LNode: PVirtualNode;
    LData: PDocData;
  begin
    if(ANode <> vtDocs.RootNode) then
    begin
      LData := vtDocs.GetNodeData(ANode);
      if((LData.NodeType in [dntParty,dntAddresseeParty]) and (LData.NName = ANName)) then
      begin
        vtDocs.DeleteNode(ANode);
        Exit;
      end;
    end;
    LNode := ANode.FirstChild;
    while(Assigned(LNode)) do
    begin
      RecurseDeleteParty(LNode,ANName);
      LNode := LNode.NextSibling;
    end;
  end;

begin
 LData := vtParties.GetNodeData(vtParties.FocusedNode);
  if(LData.NName < 0) then
    Exit;

  if(MsgAsk('Are you sure you want to remove the link to ' + AndReplace(LData.PartySearch) + '?') = mrYes) then
  begin
    dmWorkFlowDataModule.qAnyQuery.SQL.Text := 'DELETE FROM MATTERPARTY WHERE nmatter = :nmatter and nname = :nname and category = :category';
    dmWorkFlowDataModule.qAnyQuery.ParamByName('nmatter').AsInteger := NMatter;
    dmWorkFlowDataModule.qAnyQuery.ParamByName('nname').AsInteger := LData.NName;
    dmWorkFlowDataModule.qAnyQuery.ParamByName('category').AsString := LData.PartyType;
    dmWorkFlowDataModule.qAnyQuery.ExecSQL;

    dmWorkFlowDataModule.qAnyQuery.SQL.Text := 'DELETE FROM mattercontactactingfor WHERE nmatter = :nmatter and nname = :nname';
    dmWorkFlowDataModule.qAnyQuery.ParamByName('nmatter').AsInteger := NMatter;
    dmWorkFlowDataModule.qAnyQuery.ParamByName('nname').AsInteger := LData.NName;
    dmWorkFlowDataModule.qAnyQuery.ExecSQL;

    dmWorkFlowDataModule.qAnyQuery.SQL.Text := 'DELETE FROM mattercontactactingfor WHERE nmatter = :nmatter and actingfornname = :nname';
    dmWorkFlowDataModule.qAnyQuery.ParamByName('nmatter').AsInteger := NMatter;
    dmWorkFlowDataModule.qAnyQuery.ParamByName('nname').AsInteger := LData.NName;
    dmWorkFlowDataModule.qAnyQuery.ExecSQL;


    PlaySound('Delete');
    vtDocs.BeginUpdate();
    try
      RecurseDeleteParty(vtDocs.RootNode,LData.NName);
    finally
      vtDocs.EndUpdate();
    end;
    ShowParties();
    UpdateMatterForm();
  end;
end;

// action update
procedure TfmWorkFlowMergeDocument.aAddPartyUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (ActiveControl = vtParties)
    and Assigned(vtParties.FocusedNode);
end;

// add party action.. adda new party..
procedure TfmWorkFlowMergeDocument.aAddPartyExecute(Sender: TObject);
var
  LFieldName,
  LSearch,
  LParty: String;
  LData: PPartyData;

begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

  if(Assigned(vtParties.FocusedNode)) then
  begin
    LData := vtParties.GetNodeData(vtParties.FocusedNode);
    if(Assigned(LData)) then
    begin
      if(LData.PartyType <> 'Client') then
        frmPhoneBookSearch.Party := LData.PartyType;
    end;
  end;
  frmPhoneBookSearch.LimitToPartySelection := True;

  try
    if(frmPhoneBookSearch.ShowModal() = mrOk) then
    begin
      LParty     := frmPhoneBookSearch.Party;
      LSearch    := frmPhoneBookSearch.Search;
//      LNName     := frmPhonebookSearch.NName;

      if(LParty = '') then
      begin
        MessageDlg('A party (group) must be selected.', mtError, [mbOK], 0);
        Exit;
      end;

      if(LSearch = '') then
      begin
        MessageDlg('A phone book entry must be selected.', mtError, [mbOK], 0);
        Exit;
      end;

      LFieldName := TableString('PBGROUP', 'CATEGORY', LParty, 'FIELDNAME');
      try
        dmWorkFlowDataModule.qAnyQuery.SQL.Clear;
        dmWorkFlowDataModule.qAnyQuery.SQL.Add('INSERT INTO MATTERPARTY');
        dmWorkFlowDataModule.qAnyQuery.SQL.Add('(NMATTER, CATEGORY, NNAME)');
        dmWorkFlowDataModule.qAnyQuery.SQL.Add('VALUES (:NMATTER, :CATEGORY, :NNAME)');

        dmWorkFlowDataModule.qAnyQuery.ParamByName('NMATTER').AsInteger := NMatter;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('CATEGORY').AsString := LParty;
        dmWorkFlowDataModule.qAnyQuery.ParamByName('NNAME').AsInteger   := frmPhonebookSearch.NName;

        dmWorkFlowDataModule.qAnyQuery.ExecSQL();
      except
        on E: Exception do
        begin
          MsgErr('Error adding Contact:'#13#13 + E.Message);
          Exit;
        end;
      end;
    end;
  finally
    frmPhoneBookSearch.LimitToPartySelection := False;
    ShowDocuments();
    ShowParties();
    UpdateMatterForm();
  end;
end;

// if the other party form is closed, then re-show databases and trigger update on
// matter form, also free the form..
procedure TfmWorkFlowMergeDocument.OtherPartyClose(Sender: TObject; var Action: TCloseAction);
begin
  if(Assigned(FPhoneBookClose)) then
    FPhoneBookClose(Sender,Action);
  ShowDocuments();
  ShowParties();
  UpdateMatterForm();
end;


// scan the forms for a matter form on the same matter and re-query
// parties..
procedure TfmWorkFlowMergeDocument.UpdateMatterForm();
var
  Lfm: TfrmMatters;
  i: Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
  begin
    if(Screen.Forms[i] is TfrmMatters) then
    begin
      Lfm := TfrmMatters(Screen.Forms[i]);
      if(Lfm.qryMatter.FieldByName('nmatter').AsInteger = FNMatter) then
      begin
        Lfm.qryMatterParty.Close();
        Lfm.qryMatterParty.Open();

        Exit;
      end;
    end;
  end;
end;

// execute a merge baised on if the merge type needs party information.
procedure TfmWorkFlowMergeDocument.aMergeExecute(Sender: TObject);
var
   AHasDocuments, AHasDataForm: boolean;
begin
   if(Assigned(Task)) then
   begin
      if(not Task.Started) and (not boolean(aDraft.EditValue)) then
      begin
         Task.StartTask(Now());
         if(Assigned(FUpdateWindowEvent)) then
            FUpdateWindowEvent(Self);
      end;
   end;

 //  if(moNeedsParties in FMergeType.Options) then
//  APartyData := PPartyData(vtDocs.GetNodeData(vtDocs.FocusedNode));
   if Task <> nil then
   begin
      AHasDocuments := Task.HasDocuments;
      AHasDataForm := Task.HasDataForm;
   end;

   MergeWithParties();

   if(Assigned(FUpdateWindowEvent)) then
      FUpdateWindowEvent(Self);
end;

procedure TfmWorkFlowMergeDocument.MergeFromAddressee(AAddresseeNode: PVirtualNode; FileID: string; AMergeDoc: TMergeDocument);
var
   LLastPartyType: String;
   LPartyCounter: Integer;
   i: Integer;
   LAddresseeData, LData, LDocData: PDocData;
   LPartyList: TNodeArray;
   TestMatter: string;
begin
   TestMatter := MatterString(FileId,'NMATTER');
   if StrToInt(TestMatter) > 0 then
      FNMatter := StrToInt(TestMatter)
   else
      FNMatter := StrToInt(FileID);
   SetLength(LPartyList,0);
   if AAddresseeNode <> nil then
   begin
      GetAddresseePartyList(AAddresseeNode, LPartyList);
      LDocData := vtDocs.GetNodeData(AAddresseeNode.Parent);
   end;
   //tttttttttttttttttttt
   AddBranchData(AMergeDoc);
   AddEntityData(AMergeDoc);

   if(moNeedsData in AMergeDoc.Options) and (AAddresseeNode <> nil) then
   begin
      LAddresseeData := vtDocs.GetNodeData(AAddresseeNode);

      // addressee
      AddPartyFields(AMergeDoc,dfAddressee);
      AddDataFormFields(AMergeDoc,dfAddressee,LAddresseeData.PartyType, LData.NName);
      AddDataFormMatterFields(AMergeDoc,dfAddressee,LAddresseeData.PartyType, LData.NName);

      AMergeDoc.AddRow(dfAddressee);
      AddPartyData(AMergeDoc,dfAddressee,FNMatter,LAddresseeData.NName,-1,LAddresseeData.PartyType);
      AddDataFormData(AMergeDoc,dfAddressee,LAddresseeData.PartyType,LAddresseeData.NName,0);
      AddDataFormMatterData(AMergeDoc,dfAddressee,LAddresseeData.PartyType,LAddresseeData.NName, NMatter,0);
      AMergeDoc.PostRow(dfAddressee);

//      if (not AMergeDoc.IsFieldsEmpty(dfClient)) then
//         AMergeDoc.Clear(dfClient);

      AddClientData(AMergeDoc,FNMatter);
      // AES 28/05/2014
      // this is done inside the AddClientData function
//      AddClientFormData(AMergeDoc,FNMatter);

//      AddPartyData(AMergeDoc,dfClient,FNMatter,StrToInt(MatterString(FNMatter,'NNAME')),-1,'Client');
      AddEmployeeData(AMergeDoc,FNMatter);
      AddMatterPartyData(AMergeDoc,FNMatter);
      AddMatterCarriageRates(AMergeDoc,FNMatter);

//      if (not AMergeDoc.IsFieldsEmpty(dfMatter)) then
//         AmergeDoc.Clear(dfMatter);

      AddMatterCarriageRates(AMergeDoc,FNMatter);

//      AddMatterData(AMergeDoc);


      // fields for the party information (phone book)
      if(Length(LPartyList) > 0) then
      begin
         AddPartyFields(AMergeDoc,dfParty);

         LLastPartyType := '';
         for i := 0 to Length(LPartyList) - 1 do
         begin
            LData := vtDocs.GetNodeData(LPartyList[i]);
            // fields for form data.
            if(LLastPartyType <> LData.PartyType) then
            begin
               AddDataFormFields(AMergeDoc,dfParty, LData.PartyType, LData.NName);
               // fields for party matter specific.
               AddDataFormMatterFields(AMergeDoc,dfParty, LData.PartyType, LData.NName);
               LLastPartyType := LData.PartyType;
            end;
         end;

         LPartyCounter := 0;
         LLastPartyType := '';
         for i := 0 to Length(LPartyList) - 1 do
         begin
            LData := vtDocs.GetNodeData(LPartyList[i]);
            if(LLastPartyType <> LData.PartyType) then
            begin
               LPartyCounter := 1;
               LLastPartyType := LData.PartyType;
            end;

            AMergeDoc.AddRow(dfParty);

            // party data
            AddPartyData(AMergeDoc,dfParty, FNMatter, LData.NName,LPartyCounter,LLastPartyType);
            // form data
            AddDataFormData(AMergeDoc,dfParty,LData.PartyType,LData.NName, LPartyCounter);
            AddDataFormMatterData(AMergeDoc,dfParty,LData.PartyType,LData.NName, NMatter, LPartyCounter);

            Inc(LPartyCounter);
            AMergeDoc.PostRow(dfParty);
         end;
      end;
   end;
end;


// merging with parties means adding data for each party - this is not totally
// complete but will probably do for anyone.. (needs matter detail export
// but since we are not using this for s&g wont worry for now..
procedure TfmWorkFlowMergeDocument.MergeWithParties();
var
   LMergeDoc: TMergeDocument;
   LDocuments,
   LChangedDataValues: TCollection;
   i: Integer;
   LAddressees: TNodeArray;
   ADocData: PDocData;
   LPartyNName: TPartyNName;
   ANName: integer;

   procedure MergeFromAddressee(AAddresseeNode: PVirtualNode; APartyNum: integer = 0);
   var
      LLastPartyType: String;
      LPartyCounter: Integer;
      i, LPartyNum: Integer;
      LAddresseeData, LData, LDocData: PDocData;
      LPartyList: TNodeArray;
   begin
      SetLength(LPartyList,0);
      GetAddresseePartyList(AAddresseeNode, LPartyList);

      LData := vtDocs.GetNodeData(AAddresseeNode);

      LDocData := vtDocs.GetNodeData(AAddresseeNode.Parent);
      FMergeType :=  GetWorkFlowMergeTypeClass(LDocData.TemplateType);

      LMergeDoc                := FMergeType.Create(LDocuments);
      LMergeDoc.ParentForm     := Self;
      LMergeDoc.TemplateName   := LDocData.DocumentName;
      LMergeDoc.TemplatePath   := ParseMacros(LDocData.TemplatePath, FNMatter);
      LMergeDoc.DataFilePath   := ParseMacros(LDocData.DataFilePath, FNMatter);
      LMergeDoc.DocumentPath   := ParseMacros(LDocData.DocumentPath, FNMatter, LDocData.DocID, LDocData.DocumentName);
      LMergeDoc.DataForm       := ParseMacros(LDocData.DataForm, FNMatter);
      LMergeDoc.NMatter        := NMatter;
      LMergeDoc.WorkFlow       := WorkFlow;
      LMergeDoc.PrecClassification := LDocData.PrecClassification;
      LMergeDoc.PrecCategory   := LDocData.PrecCategory;
      if(Assigned(Task)) then
         LMergeDoc.TemplateLineID := Task.TemplateLineID
      else
         LMergeDoc.TemplateLineID := -1;
      LMergeDoc.DocumentID     := LDocData.DocID;

      if FileExists(LMergeDoc.DataFilePath) then
         SysUtils.DeleteFile(LMergeDoc.DataFilePath);
      //wwwwwwwwwwwwwwwwwwwww
      AddBranchData(LMergeDoc);
      AddEntityData(LMergeDoc);

      if(moNeedsData in LMergeDoc.Options) then
      begin
         LAddresseeData := vtDocs.GetNodeData(AAddresseeNode);

         // addressee
         AddPartyFields(LMergeDoc,dfAddressee);
         AddDataFormFields(LMergeDoc,dfAddressee,LAddresseeData.PartyType, LData.NName);
         AddDataFormMatterFields(LMergeDoc,dfAddressee,LAddresseeData.PartyType, LData.NName);

         LMergeDoc.AddRow(dfAddressee);
         AddPartyData(LMergeDoc,dfAddressee,FNMatter,LAddresseeData.NName,-1,LAddresseeData.PartyType);
         AddDataFormData(LMergeDoc,dfAddressee,LAddresseeData.PartyType,LAddresseeData.NName,0);
         AddDataFormMatterData(LMergeDoc,dfAddressee,LAddresseeData.PartyType,LAddresseeData.NName, NMatter,0);
         LMergeDoc.PostRow(dfAddressee);

         AddClientData(LMergeDoc,FNMatter);
        // this is new
        // by AES
        // AES 28/05/2014
        // this is done inside the AddClientData function
 //        AddClientFormData(LMergeDoc,FNMatter);

         AddEmployeeData(LMergeDoc,FNMatter);
         AddMatterPartyData(LMergeDoc,FNMatter);

         AddMatterCarriageRates(LMergeDoc,FNMatter);

//         AddMatterData(LMergeDoc);

         // fields for the party information (phone book)
         if(Length(LPartyList) > 0) then
         begin
//            SetLength(LPartyNName,0);
            AddPartyFields(LMergeDoc,dfParty);

            LLastPartyType := '';
            for i := 0 to Length(LPartyList) - 1 do
            begin
               LData := vtDocs.GetNodeData(LPartyList[i]);
               // fields for form data.
               if(LLastPartyType <> LData.PartyType) then
               begin
                  AddDataFormFields(LMergeDoc,dfParty, LData.PartyType, LData.NName);
                  // fields for party matter specific.
                  AddDataFormMatterFields(LMergeDoc,dfParty, LData.PartyType, LData.NName);
                  LLastPartyType := LData.PartyType;
               end;
            end;

            LPartyCounter := 0;
            LLastPartyType := '';
            for LPartyNum := 0 to Length(LPartyList) - 1 do
            begin
               LData := vtDocs.GetNodeData(LPartyList[LPartyNum]);
               if(LLastPartyType <> LData.PartyType) then
               begin
                  LPartyCounter := 1;
                  LLastPartyType := LData.PartyType;
               end;

               LMergeDoc.AddRow(dfParty);

               // party data
               AddPartyData(LMergeDoc,dfParty, FNMatter, LData.NName,LPartyCounter,LLastPartyType);
               // changed
//               LPartyNName[APartyNum] := LData.NName;
               LPartyNName[LPartyNum] := LData.NName;
               // form data
               AddDataFormData(LMergeDoc,dfParty,LData.PartyType,LData.NName, LPartyCounter);
               AddDataFormMatterData(LMergeDoc,dfParty,LData.PartyType,LData.NName, NMatter, LPartyCounter);

               Inc(LPartyCounter);
               LMergeDoc.PostRow(dfParty);
            end;
         end;
      end;
   end;

begin
  ModalResult := mrNone;
  ANName := 0;
  LDocuments := TCollection.Create(TMergeDocument);
  LChangedDataValues := TCollection.Create(TCustomFieldInfo);
  try
    // get list of addressees
    SetLength(LAddressees,0);
    GetAddresseeList(vtDocs.RootNode, LAddressees);
    // 11-02-2010 AES added, unlikely to be more than 20 parties to a document
    SetLength(LPartyNName,20);
//    SetLength(LPartyNName,Length(LAddressees));
    for i := 0 to Length(LAddressees) - 1 do
      MergeFromAddressee(LAddressees[i], i);

    // for each document, merge and check result to see what
    // to do next.. cancel will stop without going to any
    // more documents.
    ModalResult := mrOk;
    for i := 0 to LDocuments.Count - 1 do
    begin
       LMergeDoc := TMergeDocument(LDocuments.Items[i]);
       if (LPartyNName[i] <> 0) then
          ANName := LPartyNName[i]
       else
       begin
          ADocData := vtDocs.GetNodeData(LAddressees[i]);
          ANName := ADocData.NName;
       end;

       if(LDocuments.Count = 1) then
       begin
          ADocData := vtDocs.GetNodeData(LAddressees[i]);
          LMergeDoc.DoMerge(0, LAddressees[i], LMergeDoc, LPartyNName, bFromDoc, ANName);
       end
       else
          LMergeDoc.DoMerge(i + 1, LAddressees[i], LMergeDoc, LPartyNName, bFromDoc, ANName );

       case LMergeDoc.MergeResult of
          mrOk:
           begin
             if(Assigned(Task)) and (not boolean(aDraft.EditValue)) then
                Task.CompleteTask(Now());
             LMergeDoc.PostProcess(LChangedDataValues);
           end;
          mrNo,          // pressed cancel
          mrCancel:      // error of some type..
           begin
             if((LDocuments.Count > 0) and (i < LDocuments.Count - 1)) then
             begin
               if (MessageDlg('Do you wish to continue with any remaining document merges?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) = mrNo) then
               begin
                 ModalResult := mrNone;
                 Break;
               end;
             end else
               ModalResult := mrNone;
           end;
       else
          Exit; // dunno so just exit.
       end;
    end;

    // if there was values changed, then we show the dialog allowing
    // the user to select what they want to put back into axiom.
    if(LChangedDataValues.Count > 0) then
    begin
      // initalise and show dialog which will check and apply
      // changes (here).
      fmWorkFlowDataChangedDialog := TfmWorkFlowDataChangedDialog.Create(nil);
      try
        fmWorkFlowDataChangedDialog.ChangedData := LChangedDataValues;
        BringToFront();
        fmWorkFlowDataChangedDialog.ShowModal();
      finally
        FreeAndNil(fmWorkFlowDataChangedDialog);
      end;
    end;
  finally
    FreeAndNil(LChangedDataValues);
    FreeAndNil(LDocuments);
    SetLength(LAddressees,0);
  end;
end;

// action update - enable merge if criteria is met..
procedure TfmWorkFlowMergeDocument.aMergeUpdate(Sender: TObject);
var
  LAddressees: TNodeArray;
begin
   SetLength(LAddressees,0);
   GetAddresseeList(vtDocs.RootNode,LAddressees);
   TAction(Sender).Enabled := (Length(LAddressees) > 0);
   SetLength(LAddressees,0);
end;

// add data form fields for the party into the merge document.
procedure TfmWorkFlowMergeDocument.AddDataFormFields(AMergeDoc: TMergeDocument; ADataFor: TDataFor; APartyType: String; ANName: integer);
var
  LFieldType: TFieldType;
  LFieldName: String;
begin
  dmWorkFlowDataModuleMerge.qPartyFormData.ParamByName('partytype').AsString := APartyType;
  dmWorkFlowDataModuleMerge.qPartyFormData.ParamByName('nunique').AsInteger := ANName;
  dmWorkFlowDataModuleMerge.qPartyFormData.Open();
  try
    while(not dmWorkFlowDataModuleMerge.qPartyFormData.Eof) do
    begin
      LFieldName := dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('DATAFORM').AsString +
                    '_' + dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('FIELDNAME').AsString;
      case dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('TYPE').AsString[1] of
        C_FIELDTYPECURRENCY: LFieldType := ftFloat;
        C_FIELDTYPEDATE    : LFieldType := ftDateTime;
        C_FIELDTYPEINTEGER : LFieldType := ftInteger;
        C_FIELDTYPECHECKBOX: LFieldType := ftString;
        else LFieldType := ftString; // 'T' or something else
      end;
      if(LFieldType = ftString) then
        AMergeDoc.AddColumn(ADataFor,LFieldName, LFieldType, 2000)
      else
        AMergeDoc.AddColumn(ADataFor,LFieldName, LFieldType);

      dmWorkFlowDataModuleMerge.qPartyFormData.Next();
    end;
  finally
    dmWorkFlowDataModuleMerge.qPartyFormData.Close();
  end;
end;

// add data for the above fields, for the party identified by ANName
procedure TfmWorkFlowMergeDocument.AddDataFormData(AMergeDoc: TMergeDocument; ADataFor: TDataFor; APartyType: String;
                                                   ANName: Integer; APartyCounter: Integer);
var
  LFieldName: String;
begin
  dmWorkFlowDataModuleMerge.qPartyFormData.ParamByName('partytype').AsString := APartyType;
  dmWorkFlowDataModuleMerge.qPartyFormData.ParamByName('nunique').AsInteger := ANName;
  dmWorkFlowDataModuleMerge.qPartyFormData.Open();
  try
    while(not dmWorkFlowDataModuleMerge.qPartyFormData.Eof) do
    begin
      if(not dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('TEXTVALUE').IsNull) then
      begin
        LFieldName := dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('DATAFORM').AsString +
                      '_' + dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('FIELDNAME').AsString;

        case dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('TYPE').AsString[1] of
          C_FIELDTYPECURRENCY: AMergeDoc.AddValue(ADataFor, LFieldName, dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('NUMBERVALUE').Value);
          C_FIELDTYPEDATE    : AMergeDoc.AddValue(ADataFor, LFieldName, dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('DATEVALUE').Value);
          C_FIELDTYPEINTEGER : AMergeDoc.AddValue(ADataFor, LFieldName, dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('NUMBERVALUE').Value);
          else AMergeDoc.AddValue(ADataFor, LFieldName, dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('TEXTVALUE').AsString);
        end;
      end;

      AMergeDoc.AddCustomField(
        dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('NUNIQUE').ASInteger,
        dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('NUNIQUE2').AsInteger,
        dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('DATAFORM').AsString,
        dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('FIELDNAME').AsString,
        ADataFor,
        dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('TYPE').AsString,
        dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('CAPTION').AsString,
        dmWorkFlowDataModuleMerge.qPartyFormData.FieldByName('DATAFORMCAPTION').AsString,
        APartyType,
        APartyCounter);

      dmWorkFlowDataModuleMerge.qPartyFormData.Next();
    end;
  finally
    dmWorkFlowDataModuleMerge.qPartyFormData.Close();
  end;
end;

// add the party fields to the merge document
procedure TfmWorkFlowMergeDocument.AddPartyFields(AMergeDoc: TMergeDocument; ADataFor: TDataFor);
begin
   dmWorkFlowDataModuleMerge.qPartyDetails.ParamByName('nname').AsInteger := 0;
   dmWorkFlowDataModuleMerge.qPartyDetails.ParamByName('partytype').AsString := 'x';
   dmWorkFlowDataModuleMerge.qPartyDetails.Open;
   dmWorkFlowDataModuleMerge.qPartyDetails.FieldDefs.Update();

   AMergeDoc.CopyFieldDefs(ADataFor, dmWorkFlowDataModuleMerge.qPartyDetails.FieldDefs,
                           dmWorkFlowDataModuleMerge.qPartyDetails);
   AMergeDoc.AddColumn(ADataFor,C_INTERNALPARTYTYPE,ftString,100);
end;

// add party data to the merge document..
procedure TfmWorkFlowMergeDocument.AddPartyData(AMergeDoc: TMergeDocument;
                                                ADataFor: TDataFor; ANMatter: Integer;
                                                ANName: Integer; APartyNumber: Integer;
                                                APartyType: String);
var
  LFieldDef: TFieldDef;
  y: Integer;
  LPartyType: String;
begin
  AMergeDoc.AddUsedParty(ANName, APartyType);
  dmWorkFlowDataModuleMerge.qPartyDetails.Close;
  dmWorkFlowDataModuleMerge.qPartyDetails.ParamByName('partytype').AsString := APartyType;
  dmWorkFlowDataModuleMerge.qPartyDetails.ParamByName('nname').AsInteger := ANName;
  dmWorkFlowDataModuleMerge.qPartyDetails.Open();

  LPartyType := UpperCase(StringReplace(APartyType,' ','_',[rfReplaceAll]));
  try
    // only one row..
    for y := 0 to dmWorkFlowDataModuleMerge.qPartyDetails.FieldDefs.Count - 1 do
    begin
      LFieldDef := dmWorkFlowDataModuleMerge.qPartyDetails.FieldDefs[y];
//      if (not dmWorkFlowDataModuleMerge.qPartyDetailsFields.Fields[y].IsNull) then
//      begin
        if(LFieldDef.Name = 'TYPE') then
        begin
          AMergeDoc.AddValue(ADataFor,C_INTERNALPARTYTYPE, LPartyType);
          if(APartyNumber > -1) then
            AMergeDoc.AddValue(ADataFor,LFieldDef.Name, LPartyType + IntToStr(APartyNumber))
          else
            AMergeDoc.AddValue(ADataFor,LFieldDef.Name, LPartyType);
        end else
          AMergeDoc.AddValue(ADataFor,LFieldDef.Name, dmWorkFlowDataModuleMerge.qPartyDetails.Fields[y].Value);
//      end;
    end;
  finally
    dmWorkFlowDataModuleMerge.qPartyDetails.Close();
  end;
end;

procedure TfmWorkFlowMergeDocument.FormHide(Sender: TObject);
begin
  SettingSave(C_SETTINGOWNER,'WINDOWSTATE', Integer(WindowState));
  if(WindowState <> wsMaximized) then
  begin
    SettingSave(C_SETTINGOWNER,'LEFT', Left);
    SettingSave(C_SETTINGOWNER,'WIDTH', Width);
    SettingSave(C_SETTINGOWNER,'TOP', Top);
    SettingSave(C_SETTINGOWNER,'HEIGHT', Height);
  end;
  SettingSave(C_SETTINGOWNER,'SPLIT',vtParties.Width);
end;

procedure TfmWorkFlowMergeDocument.AddMatterData(AMergeDoc: TMergeDocument);
var
  i, x: Integer;
  LFieldDef: TFieldDef;
  LDataForm: String;
  LFieldType: TFieldType;
  LFieldName: String;
begin
  dmWorkFlowDataModuleMerge.qExportMatter.Close();
  dmWorkFlowDataModuleMerge.qExportMatterData.Close();

  dmWorkFlowDataModuleMerge.qExportMatter.ParamByName('nmatter').AsInteger := FNMatter;
  dmWorkFlowDataModuleMerge.qExportMatterData.ParamByName('nmatter').AsInteger := FNMatter;
  // AES added this for new precedents merging
  if AMergeDoc.WorkFlow <> '' then WorkFlow := AMergeDoc.WorkFlow;
  dmWorkFlowDataModuleMerge.qExportMatterData.ParamByName('workflow').AsString := FWorkflow;

  try
    dmWorkFlowDataModuleMerge.qExportMatter.Open();
    dmWorkFlowDataModuleMerge.qExportMatterData.Open();

    AMergeDoc.CopyFieldDefs(dfMatter, dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs,
                            dmWorkFlowDataModuleMerge.qExportMatter);

    // create field names for data forms.
    dmWorkFlowDataModuleMerge.qExportMatterData.First();
    LDataForm := '';
    x := 0;
    while(not dmWorkFlowDataModuleMerge.qExportMatterData.Eof) do
    begin
      if(LDataForm <> dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('dataform').AsString) then
        LDataForm := dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('dataform').AsString;

//      AMergeDoc.AddColumn(dfMatter,LDataForm + '_' + dmWorkFlowDataModuleMerge.qExportMatterDatafieldname.AsString, ftString, 2000);

      LFieldName := LDataForm + '_' + dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('fieldname').AsString;

      case dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('TYPE').AsString[1] of
        C_FIELDTYPECURRENCY: LFieldType := ftFloat;
        C_FIELDTYPEDATE    : LFieldType := ftDateTime;
        C_FIELDTYPEINTEGER : LFieldType := ftInteger;
        C_FIELDTYPECHECKBOX: LFieldType := ftString;
        else LFieldType := ftString; // 'T' or something else
      end;

      if(LFieldType = ftString) then
        AMergeDoc.AddColumn(dfMatter,LFieldName, LFieldType, 2000)
      else
        AMergeDoc.AddColumn(dfMatter,LFieldName, LFieldType);

      AMergeDoc.AddCustomField(
        dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('NUNIQUE').AsInteger,
        dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('NUNIQUE2').AsInteger,
        dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('LINKTABLE').AsString,
        dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('FIELDNAME').AsString,
        dfMatter,
        dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('TYPE').AsString,
        dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('CAPTION').AsString,
        dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('DATAFORMCAPTION').AsString
      );
      dmWorkFlowDataModuleMerge.qExportMatterData.Next();
//      inc(x);
    end;
//    MsgInfo(IntToStr(x));
    dmWorkFlowDataModuleMerge.qExportMatter.First();
    // only one row..
    AMergeDoc.AddRow(dfMatter);
    for i := 0 to dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs.Count - 1 do
    begin
      LFieldDef := dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs[i];
      if(not dmWorkFlowDataModuleMerge.qExportMatter.Fields[i].IsNull) then
        AMergeDoc.AddValue(dfMatter,LFieldDef.Name, dmWorkFlowDataModuleMerge.qExportMatter.Fields[i].Value);
    end;

    // create data for data forms.
    dmWorkFlowDataModuleMerge.qExportMatterData.First();
    LDataForm := '';
    while(not dmWorkFlowDataModuleMerge.qExportMatterData.Eof) do
    begin
      if(LDataForm <> dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('dataform').AsString) then
        LDataForm := dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('dataform').AsString;

      LFieldName := LDataForm + '_' + dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('fieldname').AsString;

      case dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('TYPE').AsString[1] of
        C_FIELDTYPECURRENCY: AMergeDoc.AddValue(dfMatter,LFieldName, dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('NUMBERVALUE').Value);
        C_FIELDTYPEDATE    : AMergeDoc.AddValue(dfMatter,LFieldName, dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('DATEVALUE').Value);
        C_FIELDTYPEINTEGER : AMergeDoc.AddValue(dfMatter,LFieldName, dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('NUMBERVALUE').Value);
        else AMergeDoc.AddValue(dfMatter,LFieldName, dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('TEXTVALUE').AsString);
      end;

      dmWorkFlowDataModuleMerge.qExportMatterData.Next();
    end;

    AMergeDoc.PostRow(dfMatter);
  finally
    dmWorkFlowDataModuleMerge.qExportMatterData.Close();
    dmWorkFlowDataModuleMerge.qExportMatter.Close();
  end;
end;

procedure TfmWorkFlowMergeDocument.AddDataFormMatterData(
  AMergeDoc: TMergeDocument; ADataFor: TDataFor; APartyType: String; ANName,
  ANMatter: Integer; APartyCounter: Integer);
var
  LFieldName: String;
begin
  dmWorkFlowDataModuleMerge.qMatterFormData.ParamByName('partytype').AsString := APartyType;
  dmWorkFlowDataModuleMerge.qMatterFormData.ParamByName('nunique').AsInteger := ANName;
  dmWorkFlowDataModuleMerge.qMatterFormData.ParamByName('nmatter').AsInteger := ANMatter;
  dmWorkFlowDataModuleMerge.qMatterFormData.Open();
  try  
    while(not dmWorkFlowDataModuleMerge.qMatterFormData.Eof) do
    begin
      LFieldName := dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('DATAFORM').AsString + '_' + dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('FIELDNAME').AsString;
      if(not dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('TEXTVALUE').IsNull) then
      begin
        case dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('FIELDTYPE').AsString[1] of
          C_FIELDTYPECURRENCY: AMergeDoc.AddValue(ADataFor,LFieldName, dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('NUMBERVALUE').Value);
          C_FIELDTYPEDATE    : AMergeDoc.AddValue(ADataFor,LFieldName, dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('DATEVALUE').Value);
          C_FIELDTYPEINTEGER : AMergeDoc.AddValue(ADataFor,LFieldName, dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('NUMBERVALUE').Value);
          else AMergeDoc.AddValue(ADataFor,LFieldName, dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('TEXTVALUE').AsString);
        end;
      end;

      AMergeDoc.AddCustomField(
        ANName,
        ANMatter,
        dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('DATAFORM').AsString,
        dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('FIELDNAME').AsString,
        ADataFor,
        dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('FIELDTYPE').AsString,
        dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('CAPTION').AsString,
        dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('DATAFORMCAPTION').AsString,
        APartyType, APartyCounter
      );

      dmWorkFlowDataModuleMerge.qMatterFormData.Next();
    end;
  finally
    dmWorkFlowDataModuleMerge.qMatterFormData.Close();
  end;
end;

procedure TfmWorkFlowMergeDocument.AddDataFormMatterFields(
  AMergeDoc: TMergeDocument; ADataFor: TDataFor; APartyType: String; ANName: integer);
var
  LFieldType: TFieldType;
  LFieldName: String;
begin
  dmWorkFlowDataModuleMerge.qMatterFormData.ParamByName('partytype').AsString := APartyType;
  dmWorkFlowDataModuleMerge.qMatterFormData.ParamByName('nunique').AsInteger := ANName;
  dmWorkFlowDataModuleMerge.qMatterFormData.ParamByName('nmatter').AsInteger := AMergeDoc.NMatter;
  dmWorkFlowDataModuleMerge.qMatterFormData.Open();
  try
    while(not dmWorkFlowDataModuleMerge.qMatterFormData.Eof) do
    begin
      LFieldName := dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('DATAFORM').AsString +
                    '_' + dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('FIELDNAME').AsString;

      case dmWorkFlowDataModuleMerge.qMatterFormData.FieldByName('FIELDTYPE').AsString[1] of
        C_FIELDTYPECURRENCY: LFieldType := ftFloat;
        C_FIELDTYPEDATE    : LFieldType := ftDateTime;
        C_FIELDTYPEINTEGER : LFieldType := ftInteger;
        C_FIELDTYPECHECKBOX: LFieldType := ftString;
        else LFieldType := ftString; // 'T' or something else
      end;
      if(LFieldType = ftString) then
        AMergeDoc.AddColumn(ADataFor,LFieldName, LFieldType, 2000)
      else
        AMergeDoc.AddColumn(ADataFor,LFieldName, LFieldType);

      dmWorkFlowDataModuleMerge.qMatterFormData.Next();
    end;
  finally
    dmWorkFlowDataModuleMerge.qMatterFormData.Close();
  end;
end;

procedure TfmWorkFlowMergeDocument.AddClientData(AMergeDoc: TMergeDocument; ANMatter: Integer);
begin
   dmWorkFlowDataModuleMerge.qExportClients.ParamByName('nmatter').AsInteger := ANMatter;
   CopyFieldDefsTable(AMergeDoc, dfClient, dmWorkFlowDataModuleMerge.qExportClients);

   AddClientFormDataDefs(AMergeDoc,NMatter);

   CopyDataTable(AMergeDoc, dfClient,dmWorkFlowDataModuleMerge.qExportClients);

   AddClientFormData(AMergeDoc,NMatter);
   dmWorkFlowDataModuleMerge.qExportClients.Open();
   try
      dmWorkFlowDataModuleMerge.qExportMultiClients.ParamByName('nname').AsInteger :=
                       dmWorkFlowDataModuleMerge.qExportClients.FieldByName('NNAME').AsInteger;

      CopyDataTable(AMergeDoc, dfMultiClient,dmWorkFlowDataModuleMerge.qExportMultiClients);
   finally
      dmWorkFlowDataModuleMerge.qExportClients.Close();
   end;
end;

procedure TfmWorkFlowMergeDocument.AddEmployeeData(AMergeDoc: TMergeDocument; ANMatter: Integer);
begin
   dmWorkFlowDataModuleMerge.qExportEmployees.ParamByName('nmatter').AsInteger := ANMatter;
//  dmWorkFlowDataModuleMerge.qExportEmployees.ParamByName('employee').AsString := dmWorkFlowDataModule.UserID;
   CopyFieldDefsTable(AMergeDoc, dfEmployee,dmWorkFlowDataModuleMerge.qExportEmployees);
   CopyDataTable(AMergeDoc, dfEmployee,dmWorkFlowDataModuleMerge.qExportEmployees);
end;

procedure TfmWorkFlowMergeDocument.AddMatterCarriageRates(AMergeDoc: TMergeDocument; ANMatter: Integer);
var
   lFeeCode: string;
begin
   lFeeCode := dmAxiom.GetClientFeeRate(ANMatter);
   if  lFeeCode = '' then
      lFeeCode := MatterString(ANMatter,'FEECODE');

   dmWorkFlowDataModuleMerge.qEmployeeTypeRates.ParamByName('code').AsString :=  lFeeCode;
   dmWorkFlowDataModuleMerge.qEmployeeTypeRates.ParamByName('stdcode').AsString := SystemString('DFLT_MATTER_FEE_RATE');
   CopyFieldDefsTable(AMergeDoc, dfEmployeeRates,dmWorkFlowDataModuleMerge.qEmployeeTypeRates);
   CopyDataTable(AMergeDoc, dfEmployeeRates,dmWorkFlowDataModuleMerge.qEmployeeTypeRates);
end;

procedure TfmWorkFlowMergeDocument.AddMatterPartyData(AMergeDoc: TMergeDocument; ANMatter: Integer);
begin
   dmWorkFlowDataModuleMerge.qMatterActingFor.ParamByName('nmatter').AsInteger := FNMatter;
   CopyFieldDefsTable(AMergeDoc, dfActing,dmWorkFlowDataModuleMerge.qMatterActingFor);
   CopyDataTable(AMergeDoc, dfActing,dmWorkFlowDataModuleMerge.qMatterActingFor);
end;

procedure TfmWorkFlowMergeDocument.CopyFieldDefsTable(AMergeDoc: TMergeDocument;
  ADataFor: TDataFor; AQuery: TUniQuery);
var
  i: Integer;
  LFieldDef: TFieldDef;
begin
   AQuery.Open();
   try
      AMergeDoc.CopyFieldDefs(ADataFor,AQuery.FieldDefs, AQuery);
  finally
    AQuery.Close();
  end;
end;

procedure TfmWorkFlowMergeDocument.CopyDataTable(AMergeDoc: TMergeDocument;
  ADataFor: TDataFor; AQuery: TUniQuery);
var
  i: Integer;
  LFieldDef: TFieldDef;
begin
  AQuery.Open();
  try
//    AMergeDoc.CopyFieldDefs(ADataFor,AQuery.FieldDefs, AQuery);

    AQuery.First();
    // only one row..
    while(not AQuery.Eof) do
    begin
      AMergeDoc.AddRow(ADataFor);
      // for i := 0 to AQuery.FieldDefs.Count - 1 do
      for i := 0 to AQuery.FieldCount - 1 do
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

function TfmWorkFlowMergeDocument.HandleCreateException: boolean;
begin
  Result := False;
end;

procedure TfmWorkFlowMergeDocument.FormResize(Sender: TObject);
begin
//  vtParties.Width := Width div 3;
end;

procedure TfmWorkFlowMergeDocument.aPartyMoveUpUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled :=
    Assigned(vtDocs.FocusedNode)
    and (PDocData(vtDocs.GetNodeData(vtDocs.FocusedNode)).NodeType = dntParty)
    and Assigned(vtDocs.FocusedNode.PrevSibling);
end;

procedure TfmWorkFlowMergeDocument.aPartyMoveUpExecute(Sender: TObject);
var
  LNode2,
  LNode1: PVirtualNode;
begin
  vtDocs.BeginUpdate();
  try
    LNode1 := vtDocs.FocusedNode;
    LNode2 := LNode1.PrevSibling;
    vtDocs.MoveTo(LNode1,LNode2,amInsertBefore,False);
  finally
    vtDocs.EndUpdate();
  end;
end;

procedure TfmWorkFlowMergeDocument.aPartyMoveDownExecute(Sender: TObject);
var
  LNode2,
  LNode1: PVirtualNode;
begin
  vtDocs.BeginUpdate();
  try
    LNode1 := vtDocs.FocusedNode;
    LNode2 := LNode1.NextSibling;
    vtDocs.MoveTo(LNode1,LNode2,amInsertAfter,False);
  finally
    vtDocs.EndUpdate();
  end;
end;

procedure TfmWorkFlowMergeDocument.aPartyMoveDownUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled :=
    Assigned(vtDocs.FocusedNode)
    and (PDocData(vtDocs.GetNodeData(vtDocs.FocusedNode)).NodeType = dntParty)
    and Assigned(vtDocs.FocusedNode.NextSibling);
end;

procedure TfmWorkFlowMergeDocument.AddBranchData(AMergeDoc: TMergeDocument);
begin
  dmWorkFlowDataModuleMerge.qExportBranchUser.ParamByName('employee').AsString := dmWorkFlowDataModule.UserID;
  CopyFieldDefsTable(AMergeDoc, dfUserBranch,dmWorkFlowDataModuleMerge.qExportBranchUser);
  CopyDataTable(AMergeDoc, dfUserBranch,dmWorkFlowDataModuleMerge.qExportBranchUser);

  dmWorkFlowDataModuleMerge.qExportBranchMatter.ParamByName('nmatter').AsInteger := NMatter;
  CopyFieldDefsTable(AMergeDoc, dfBranch,dmWorkFlowDataModuleMerge.qExportBranchMatter);
  CopyDataTable(AMergeDoc, dfBranch,dmWorkFlowDataModuleMerge.qExportBranchMatter);
end;

procedure TfmWorkFlowMergeDocument.SetNMatter(const Value: Integer);
begin
  FNMatter := Value;
  if(not Assigned(dmWorkflowDataModule)) then
     dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);

  dmWorkFlowDataModuleMerge.qMatterDetails.ParamByName('nmatter').AsInteger := FNMatter;
  dmWorkFlowDataModuleMerge.qMatterDetails.Open();
  try
    MatterDesc       := dmWorkFlowDataModuleMerge.qMatterDetails.FieldByName('SHORTDESCR').AsString;
    MatterClient     := dmWorkFlowDataModuleMerge.qMatterDetails.FieldByName('CLIENTNAME').AsString;
    WorkflowType     := dmWorkFlowDataModuleMerge.qMatterDetails.FieldByName('WORKFLOWTYPE').AsString;
    WorkflowTypeCode := dmWorkFlowDataModuleMerge.qMatterDetails.FieldByName('WORKFLOWTYPECODE').AsString;
  finally
    dmWorkFlowDataModuleMerge.qMatterDetails.Close();
  end;
end;

procedure TfmWorkFlowMergeDocument.vtDocsPaintText(
  Sender: TBaseVirtualTree; const TargetCanvas: TCanvas;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType);
var
  LData: PDocData;
begin
  LData := Sender.GetNodeData(Node);
  if(TextType = ttNormal) then
  begin
    if(ShowNoTaskDocuments) then
    begin
      if(Node.Parent = Sender.RootNode) then
        TargetCanvas.Font.Style := [fsBold]
      else
        TargetCanvas.Font.Style := [];
    end;

    case LData.NodeType of
      dntDoc:
        begin
          TargetCanvas.Font.Color := clBlue;
          TargetCanvas.Font.Style := [fsBold];
        end;
      dntAddresseeParty:
        begin
          TargetCanvas.Font.Style := [fsBold];
        end;
      dntOtherParty:
        begin
          if(Node.ChildCount = 0) then
          begin
            if(LData.ReferredOptional) then
              TargetCanvas.Font.Color := $000080ff // orange..
            else
              TargetCanvas.Font.Color := clRed;
          end else
            TargetCanvas.Font.Color := clGreen;
        end;
      dntGroup:
        begin
          TargetCanvas.Font.Color := clNavy;
          TargetCanvas.Font.Style := [fsBold];
        end;
    end;
  end else
  begin
{$IFDEF COLLAPSEGROUP}
    if(LData.NodeType = dntGroup) then
    begin
      TargetCanvas.Font.Color := clBlack;
      TargetCanvas.Font.Style := [fsBold];
    end;
{$ENDIF}    
  end;
end;

procedure TfmWorkFlowMergeDocument.ShowParties;
var
  LNextPartyType, LPartyType: String;
  LParentNode, LNode, LAFNode: PVirtualNode;
  LParentData, LData, LAFData: PPartyData;
  LLastNName: Integer;
begin
  vtParties.BeginUpdate();
  try
    vtParties.Clear();
    LLastNName := -1;

    dmWorkFlowDataModuleMerge.qMatterParty.ParamByName('nmatter').AsInteger := NMatter;
    dmWorkFlowDataModuleMerge.qMatterParty.Open();
    try
      LParentNode := nil;
      LData := Nil;
      LNode := Nil;
      dmWorkFlowDataModuleMerge.qMatterParty.First();
      while(not dmWorkFlowDataModuleMerge.qMatterParty.Eof) do
      begin
        LNextPartyType := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('category').AsString;
        if((not FFilterParties) or (FDocParties.IndexOf(LNextPartyType) > -1)) then
        begin

          if(LPartyType <> dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('category').AsString) then
          begin
            LPartyType  := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('category').AsString;
            LParentNode := vtParties.AddChild(nil);
            LParentData := vtParties.GetNodeData(LParentNode);

            LParentData.NName     := -1;
            LParentData.PartyType := LPartyType;
          end;
          if(Assigned(LParentNode)) then
          begin
            if(dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('NNAME').AsInteger <> LLastNName) then
            begin
              LLastNName       := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('NNAME').AsInteger;
              LNode            := vtParties.AddChild(LParentNode);
              LData            := vtParties.GetNodeData(LNode);
              LData.PartyType  := LPartyType;
              LData.NName      := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('NNAME').AsInteger;
              LData.PartySearch:= dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('SEARCH').AsString;
              LData.ActingFor  := False;
              LData.Through    := False;
              LData.sThrough   := 'N';

              vtParties.Expanded[LParentNode] := True;
            end;

            if(not dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('ACTINGFORNNAME').IsNull) then
            begin
              LAFNode            := vtParties.AddChild(LNode);
              LAFData            := vtParties.GetNodeData(LAFNode);

              LAFData.NName       := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('ACTINGFORNNAME').AsInteger;
              LAFData.PartySearch := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('ACTINGFORSEARCH').AsString;
              LAFData.PartyType   := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('ACTINGFORCATEGORY').AsString;
              LData.ActingFor     := True;

              vtParties.Expanded[LNode] := True;
            end;
            if(not dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('THROUGHNNAME').IsNull) then
            begin
              LAFNode             := vtParties.AddChild(LNode);
              LAFData             := vtParties.GetNodeData(LAFNode);
              LAFData.NName       := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('THROUGHNNAME').AsInteger;
              LAFData.PartySearch := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('THROUGHNAME').AsString;
              LAFData.PartyType   := dmWorkFlowDataModuleMerge.qMatterParty.FieldByName('THROUGHCATEGORY').AsString;
              LData.Through       := True;
              LData.sThrough      := 'Y';

              vtParties.Expanded[LNode] := True;
            end;

          end;
        end else
          LPartyType := '';
        dmWorkFlowDataModuleMerge.qMatterParty.Next();
      end;
    finally
      dmWorkFlowDataModuleMerge.qMatterParty.Close();
    end;
  finally
    vtParties.EndUpdate();
  end;
end;

procedure TfmWorkFlowMergeDocument.vtPartiesPaintText(
  Sender: TBaseVirtualTree; const TargetCanvas: TCanvas;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType);
begin
  if(TextType = ttNormal) and (Node.Parent = Sender.RootNode) then
    TargetCanvas.Font.Style := [fsBold]
  else if(TextType = ttStatic) then
  begin
    if(Node.Parent.Parent.Parent = Sender.RootNode) then
      TargetCanvas.Font.Color := clGreen
    else
      TargetCanvas.Font.Color := clBlue;
  end;
end;



procedure TfmWorkFlowMergeDocument.vtPartiesDragAllowed(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  var Allowed: Boolean);
begin
  Allowed := True;//(Node.Parent <> Sender.RootNode)
end;

procedure TfmWorkFlowMergeDocument.vtPartiesDragOver(
  Sender: TBaseVirtualTree; Source: TObject; Shift: TShiftState;
  State: TDragState; Pt: TPoint; Mode: TDropMode; var Effect: Integer;
  var Accept: Boolean);
begin
  Accept := False;
end;

procedure TfmWorkFlowMergeDocument.vtPartiesGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PPartyData;
begin
  CellText := '';
  LData := Sender.GetNodeData(Node);
  if(TextType = ttNormal) and (Column = 0) then
  begin
    if(LData.NName < 0) then
      CellText := LData.PartyType
    else
      CellText := LData.PartySearch
  end else if(TextType = ttStatic) and (Column = 0) then
  begin
    if(LData.ActingFor) then
      CellText := 'Acting For'
    else if(LData.Through) then
      CellText := 'Through'
    else if(Node.Parent.Parent.Parent = Sender.RootNode) then
      CellText := LData.PartyType;
  end;
end;


procedure TfmWorkFlowMergeDocument.vtPartiesHeaderClick(Sender: TVTHeader;
  HitInfo: TVTHeaderHitInfo);
begin
  if(HitInfo.Column = 0) then
  begin
    FFilterParties := not FFilterParties;
    if(FFilterParties) then
    begin
      Sender.Columns[HitInfo.Column].Text := 'Relevant Contacts';
    end else
    begin
      Sender.Columns[HitInfo.Column].Text := 'Matter Contacts';
    end;
    ShowParties();
  end;
end;

procedure TfmWorkFlowMergeDocument.vtDocsDragOver(Sender: TBaseVirtualTree;
  Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint;
  Mode: TDropMode; var Effect: Integer; var Accept: Boolean);
var
  LDest: PVirtualNode;
  LData: PDocData;
  LSourceData: PPartyData;

  function HasPartyType(ANode: PVirtualNode; APartyType: String; ANName: Integer): Boolean;
  var
    LNode, LPartyNode: PVirtualNode;
    LData, LPartyData: PDocData;
  begin
    LData := Sender.GetNodeData(ANode);
    if(LData.NodeType = dntOtherParty) and (UpperCase(LData.PartyType) = APartyType) then
    begin
      // check to see if party already there..
      LPartyNode := ANode.FirstChild;
      while(Assigned(LPartyNode)) do
      begin
        LPartyData := Sender.GetNodeData(LPartyNode);
        if(LPartyData.NName = ANName) then
        begin
          Result := False;
          Exit;
        end;
        LPartyNode := LPartyNode.NextSibling;
      end;

      Result := True;
      Exit;
    end;

    LNode := ANode.FirstChild;
    while(Assigned(LNode)) do
    begin
      Result := HasPartyType(LNode,APartyType,ANName);
      if(Result) then
        Exit;
      LNode := LNode.NextSibling;
    end;
    Result := False;
  end;
begin
  Accept := False;
  if(Source = vtParties) then
  begin
    LSourceData := vtParties.GetNodeData(vtParties.FocusedNode);
    if(Assigned(LSourceData)) then
    begin
      LDest := Sender.DropTargetNode;
      LData := Sender.GetNodeData(LDest);
      if(Assigned(LData)) then
        Accept := HasPartyType(LDest, UpperCase(LSourceData.PartyType),LSourceData.NName);
    end;
  end;
end;

procedure TfmWorkFlowMergeDocument.vtDocsGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  LData: PDocData;
begin
  LData := Sender.GetNodeData(Node);
  CellText := '';
  if(TextType = ttNormal) then
  begin
    if(Column = 0) then
    begin
      case LData.NodeType of
        dntDoc:
          begin
            if(Node.ChildCount > 0) then
              CellText := LData.DocumentName
            else
              CellText := LData.DocumentName + ' - ' + LData.PartyType + ' addressee required';
          end;
        dntOtherParty:     CellText := 'Referred - ' + LData.PartyType;
        dntAddresseeParty: CellText := LData.PartyType + ' - ' + LData.PartySearch;
        dntParty:          CellText := LData.PartySearch;
        dntNoTaskParty:    CellText := LData.PartyType;
        dntGroup:          CellText := LData.GroupName;
      end;
    end;
  end else
  begin
{$IFDEF COLLAPSEGROUP}
    if((not (vsExpanded in Node.States)) and (LData.NodeType = dntGroup)) then
      CellText := ' (' + IntToStr(Node.ChildCount) + ' Documents)';
{$ENDIF}
  end;
//  CellText := AndReplace(CellText);
end;

procedure TfmWorkFlowMergeDocument.vtDocsHeaderClick(Sender: TVTHeader;
  HitInfo: TVTHeaderHitInfo);
 procedure ExpandEnds(ANode: PVirtualNode);
  var
    LNode: PVirtualNode;
  begin
    vtDocs.Expanded[ANode] := True;
    LNode := ANode.FirstChild;
    while(Assigned(LNode)) do
    begin
      ExpandEnds(LNode);
      LNode := LNode.NextSibling;
    end;
  end;

  procedure ContractEnds(ANode: PVirtualNode);
  var
    LNode: PVirtualNode;
    LData: PDocData;
  begin
    LData := vtDocs.GetNodeData(ANode);
    if(Assigned(LData) and (LData.NodeType = dntOtherParty)) then
      vtDocs.Expanded[ANode] := False
    else
    begin
      LNode := ANode.FirstChild;
      while(Assigned(LNode)) do
      begin
        ContractEnds(LNode);
        LNode := LNode.NextSibling;
      end;
    end;
  end;
begin
  if(HitInfo.Column = 0) then
  begin
    vtDocs.BeginUpdate();
    try
      FExpandedParties := not FExpandedParties;

      if(FExpandedParties) then
      begin
        Sender.Columns[HitInfo.Column].Text := 'Document Content - Detail';
        ExpandEnds(vtDocs.RootNode);
      end else
      begin
        Sender.Columns[HitInfo.Column].Text := 'Document Content - Summary';
        ContractEnds(vtDocs.RootNode);
      end;
    finally
      vtDocs.EndUpdate();
    end;
  end;
end;

procedure TfmWorkFlowMergeDocument.vtPartiesCollapsing(
  Sender: TBaseVirtualTree; Node: PVirtualNode; var Allowed: Boolean);
begin
  Allowed := False;
end;

procedure TfmWorkFlowMergeDocument.vtDocsCollapsing(
  Sender: TBaseVirtualTree; Node: PVirtualNode; var Allowed: Boolean);
var
  LData: PDocData;
{$IFDEF COLLAPSEGROUP}
  LAddressees: TNodeArray;
{$ENDIF}
begin
  LData := Sender.GetNodeData(Node);

{$IFDEF COLLAPSEGROUP}
  if(LData.NodeType = dntGroup) then
  begin
    // if any child is checked, dont allow collapse.. (aint I nasty)..
//    SetLength(LAddressees,0);
    GetAddresseeList(Node,LAddressees);
    Allowed := (Length(LAddressees) = 0);
//    SetLength(LAddressees,0);
  end else
{$ENDIF}
  Allowed := LData.NodeType = dntOtherParty;
end;

procedure TfmWorkFlowMergeDocument.vtDocsDragAllowed(
  Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  var Allowed: Boolean);
begin
  Allowed := False;
end;

procedure TfmWorkFlowMergeDocument.FormDestroy(Sender: TObject);
begin
   try
      FreeAndNil(FDocParties);
   except
      //
   end;
end;

procedure TfmWorkFlowMergeDocument.vtDocsDragDrop(Sender: TBaseVirtualTree;
  Source: TObject; DataObject: IDataObject; Formats: TFormatArray;
  Shift: TShiftState; Pt: TPoint; var Effect: Integer; Mode: TDropMode);
var
  LEnable: Boolean;

  function HasParty(ANode: PVirtualNode; ANName: Integer): Boolean;
  var
    LNode: PVirtualNode;
    LData: PDocData;
  begin
    Result := False;
    LNode := ANode.FirstChild;
    while(Assigned(LNode)) do
    begin
      LData := Sender.GetNodeData(LNode);
      if(LData.NName = ANName) then
      begin
        Result := True;
        Exit;
      end;
      LNode := LNode.NextSibling;
    end;
  end;

  procedure AddParty(ANode: PVirtualNode; ANName: Integer; APartyType, APartySearch: String);
  var
    LNode: PVirtualNode;
    LData: PDocData;
    LNewNode: PVirtualNode;
    LNewData: PDocData;
  begin
    LData := Sender.GetNodeData(ANode);
    if(LData.NodeType = dntOtherParty) and (UpperCase(LData.PartyType) = UpperCase(APartyType)) then
    begin
      if(not HasParty(ANode,ANName)) then
      begin
        LNewNode := Sender.AddChild(ANode);
        LNewData := Sender.GetNodeData(LNewNode);
        LNewData.NodeType := dntParty;
        LNewData.NName := ANName;
        LNewData.PartyType := APartyType;
        LNewData.PartySearch := APartySearch;
      end;
      Sender.Expanded[ANode] := True;
      Exit;
    end;

    LNode := ANode.FirstChild;
    while(Assigned(LNode)) do
    begin
      AddParty(LNode,ANName,APartyType, APartySearch);
      LNode := LNode.NextSibling;
    end;
  end;

  procedure RecurseNodes(ANode, ADest: PVirtualNode; var AEnable: Boolean);
  var
    LNode: PVirtualNode;
    LSourceData: PPartyData;
  begin
    if(vtParties.Selected[ANode]) then
    begin
      if(vtParties.FocusedNode.Parent = vtParties.RootNode) then
      begin
        LNode := ANode.FirstChild;
        while(Assigned(LNode)) do
        begin
          LSourceData := vtParties.GetNodeData(LNOde);
          if(Assigned(LSourceData)) then
          begin
            AddParty(ADest,LSourceData.NName, LSourceData.PartyType, LSourceData.PartySearch);
            AEnable := True;
          end;
          LNode := LNode.NextSibling;
        end;
      end else
      begin
        LSourceData := vtParties.GetNodeData(ANode);
        if(Assigned(LSourceData)) then
        begin
          AddParty(ADest,LSourceData.NName, LSourceData.PartyType, LSourceData.PartySearch);
          AEnable := True;
        end;
      end;
    end else
    begin
      LNode := ANode.FirstChild;
      while(Assigned(LNode)) do
      begin
        RecurseNodes(LNode,ADest,AEnable);
        LNode := LNode.NextSibling;
      end;
    end;
  end;

begin
  if(Source = vtParties) then
  begin
    LEnable := False;
    RecurseNodes(vtParties.RootNode,Sender.DropTargetNode,LEnable);
    if(LEnable) then
      EnableChecks(Sender.DropTargetNode);
  end;
end;

procedure TfmWorkFlowMergeDocument.aRemoveExecute(Sender: TObject);
var
  LParent: PVirtualNode;
begin
  LParent := vtDocs.FocusedNode.Parent;
  vtDocs.BeginUpdate();
  try
    vtDocs.DeleteNode(vtDocs.FocusedNode);
    EnableChecks(LParent);
    vtDocs.FocusedNode := LParent;
  finally
    vtDocs.EndUpdate();
  end;
end;

procedure TfmWorkFlowMergeDocument.aRemoveUpdate(Sender: TObject);
var
  LData: PDocData;
begin
  if(Assigned(vtDocs.FocusedNode)) then
  begin
    LData := vtDocs.GetNodeData(vtDocs.FocusedNode);
    TAction(Sender).Enabled := LData.NodeType = dntParty;
  end else
    TAction(Sender).Enabled := False;

end;

procedure TfmWorkFlowMergeDocument.EnableChecks(ANode: PVirtualNode);
  function CheckAddressee(ANode: PVirtualNode): Boolean;
  var
    LReferNode: PVirtualNode;
    LCount: Cardinal;
    LData: PDocData;
  begin
    if(ANode.ChildCount = 0) then
      Result := True
    else
    begin
      LData := vtDocs.GetNodeData(ANode);
      if(LData.ReferredOptional) then
        Result := True
      else
      begin
        LCount := 0;
        LReferNode := ANode.FirstChild;
        while(Assigned(LReferNode)) do
        begin
          if(LReferNode.ChildCount > 0) then
            Inc(LCount);
          LReferNode := LReferNode.NextSibling;
        end;
        Result := LCount = ANode.ChildCount;
      end;
    end;
  end;

  procedure DoAddressee(ANode: PVirtualNode);
  var
    LAddresseeNode: PVirtualNode;
    LAddresseeData: PDocData;
  begin
    LAddresseeNode := ANode;
    LAddresseeData := vtDocs.GetNodeData(LAddresseeNode);
    while(LAddresseeData.NodeType <> dntAddresseeParty) do
    begin
      LAddresseeNode := LAddresseeNode.Parent;
      if(LAddresseeNode = vtDocs.RootNode) then
        Exit;
      LAddresseeData := vtDocs.GetNodeData(LAddresseeNode);
    end;
    if(Assigned(LAddresseeNode)) then
    begin
      if(CheckAddressee(LAddresseeNode)) then
        vtDocs.CheckType[LAddresseeNode] := ctCheckBox
      else
        vtDocs.CheckType[LAddresseeNode] := ctNone;
    end;
  end;

  procedure DoDoc(ANode: PVirtualNode);
  var
    LAddresseeNode: PVirtualNode;
  begin
    LAddresseeNode := ANode.FirstChild;
    while(Assigned(LAddresseeNode)) do
    begin
      if(CheckAddressee(LAddresseeNode)) then
        vtDocs.CheckType[LAddresseeNode] := ctCheckBox
      else
        vtDocs.CheckType[LAddresseeNode] := ctNone;

      LAddresseeNode := LAddresseeNode.NextSibling;
    end;
  end;
var
  LNode: PVirtualNode;
  LData: PDocData;
begin
  LData := vtDocs.GetNodeData(ANode);
  case LData.NodeType of
    dntDoc: DoDoc(ANode);
    dntGroup:
      begin
        LNode := ANode.FirstChild;
        while(Assigned(LNode)) do
        begin
          DoDoc(LNode);
          LNode := LNode.NextSibling;
        end;
      end;
  else
    DoAddressee(ANode);
  end;
end;

procedure TfmWorkFlowMergeDocument.GetAddresseeList(ANode: PVirtualNode; var ANodeList: TNodeArray);
var
  LNode: PVirtualNode;
  LData: PDocData;
  i: Integer;
begin
  if(ANode <> vtDocs.RootNode) then
  begin
    LData := vtDocs.GetNodeData(ANode);
    if(LData.NodeType = dntAddresseeParty) then
    begin
      if(vtDocs.CheckState[ANode] = csCheckedNormal) then
      begin
        i := Length(ANodeList);
        SetLength(ANodeList,i+1);
        ANodeList[i] := ANode;
      end;
      Exit;
    end;
  end;

  LNode := ANode.FirstChild;
  while(Assigned(LNode)) do
  begin
    GetAddresseeList(LNode,ANodeList);
    LNode := LNode.NextSibling;
  end;
end;

procedure TfmWorkFlowMergeDocument.GetAddresseePartyList(ANode: PVirtualNode; var ANodeList: TNodeArray);
var
  LNode: PVirtualNode;
  LData: PDocData;
  i: Integer;
begin
  LData := vtDocs.GetNodeData(ANode);
  if(LData.NodeType = dntAddresseeParty) then
  begin
    if(LData.PartyType <> 'Client') then
    begin
      i := Length(ANodeList);
      SetLength(ANodeList,i+1);
      ANodeList[i] := ANode;
    end;
  end;

  if(LData.NodeType = dntParty) then
  begin
    if(LData.PartyType <> 'Client') then
    begin
      i := Length(ANodeList);
      SetLength(ANodeList,i+1);
      ANodeList[i] := ANode;
    end;
    Exit;
  end;

  LNode := ANode.FirstChild;
  while(Assigned(LNode)) do
  begin
    GetAddresseePartyList(LNode,ANodeList);
    LNode := LNode.NextSibling;
  end;
end;

procedure TfmWorkFlowMergeDocument.AddEntityData(
  AMergeDoc: TMergeDocument);
begin
   dmWorkFlowDataModuleMerge.qExportEntity.ParamByName('entity').AsString := dmWorkFlowDataModule.Entity;
   CopyFieldDefsTable(AMergeDoc, dfEntity,dmWorkFlowDataModuleMerge.qExportEntity);
   CopyDataTable(AMergeDoc, dfEntity,dmWorkFlowDataModuleMerge.qExportEntity);
end;

procedure TfmWorkFlowMergeDocument.SetWorkflow(const Value: string);
begin
   FWorkFlow := Value;
end;

procedure TfmWorkFlowMergeDocument.AddClientFormData(AMergeDoc: TMergeDocument; ANMatter: Integer);
var
  i: Integer;
  LFieldDef: TFieldDef;
  LDataForm: String;
  LFieldType: TFieldType;
  LFieldName: String;
  bData,
  b: boolean;
begin
      with dmWorkFlowDataModuleMerge.qPGroups do
      begin
//         AMergeDoc.AddRow(dfClient);
         Close;
         ParamByName('nname').AsInteger := StrToInt(MatterString(nmatter,'NNAME'));
         Open;
         while (not Eof) do
         begin
            if(dmWorkFlowDataModuleMerge.qPGroups.FieldByName('OTHERPARTY').AsString = 'Yes') then
            begin
               dmWorkFlowDataModuleMerge.qClientFormData.Close();
               dmWorkFlowDataModuleMerge.qClientFormData.ParamByName('partytype').AsString :=
                           dmWorkFlowDataModuleMerge.qPGroups.FieldByName('CATEGORY').AsString;
               dmWorkFlowDataModuleMerge.qClientFormData.ParamByName('nunique').AsInteger :=
                           StrToInt(MatterString(ANMatter,'NNAME'));
               dmWorkFlowDataModuleMerge.qClientFormData.Open();

               while (not dmWorkFlowDataModuleMerge.qClientFormData.Eof) do
               begin
                  if (LDataForm <> dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('DATAFORM').AsString) then
                     LDataForm := dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('DATAFORM').AsString;

                  LFieldName := LDataForm + '_' + dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('FIELDNAME').AsString;

                  case dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('TYPE').AsString[1] of
                     C_FIELDTYPECURRENCY : AMergeDoc.AddValue(dfClient,LFieldName, dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('NUMBERVALUE').Value);
                     C_FIELDTYPEDATE     : AMergeDoc.AddValue(dfClient,LFieldName, dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('DATEVALUE').Value);
                     C_FIELDTYPEINTEGER  : AMergeDoc.AddValue(dfClient,LFieldName, dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('NUMBERVALUE').Value);
                     else                  AMergeDoc.AddValue(dfClient,LFieldName, dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('TEXTVALUE').AsString);
                  end;
                  dmWorkFlowDataModuleMerge.qClientFormData.Next();
               end;
            end;
            next;
         end;
      end;
end;

procedure TfmWorkFlowMergeDocument.AddClientFormDataDefs(AMergeDoc: TMergeDocument; ANMatter: Integer);
var
  i: Integer;
  LFieldDef: TFieldDef;
  LDataForm: String;
  LFieldType: TFieldType;
  LFieldName: String;
  bData,
  b: boolean;
begin
//   try
   with dmWorkFlowDataModuleMerge.qPGroups do
   begin
      Close;
      ParamByName('nname').AsInteger := StrToInt(MatterString(nmatter,'NNAME'));
      Open;
      while (not Eof) do
      begin
         if(dmWorkFlowDataModuleMerge.qPGroups.FieldByName('OTHERPARTY').AsString = 'Yes') then
         begin
            dmWorkFlowDataModuleMerge.qClientFormData.Close();
            dmWorkFlowDataModuleMerge.qClientFormData.ParamByName('partytype').AsString :=
                        dmWorkFlowDataModuleMerge.qPGroups.FieldByName('CATEGORY').AsString;
            dmWorkFlowDataModuleMerge.qClientFormData.ParamByName('nunique').AsInteger :=
                        StrToInt(MatterString(ANMatter,'NNAME'));
            dmWorkFlowDataModuleMerge.qClientFormData.Open();

            // create data for data forms.
            bData := (dmWorkFlowDataModuleMerge.qClientFormData.Eof = False);
            LDataForm := '';
            while (not dmWorkFlowDataModuleMerge.qClientFormData.Eof) do
            begin
               if (LDataForm <> dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('DATAFORM').AsString) then
                  LDataForm := dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('DATAFORM').AsString;

               LFieldName := LDataForm + '_' + dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('FIELDNAME').AsString;

               case dmWorkFlowDataModuleMerge.qClientFormData.FieldByName('TYPE').AsString[1] of
                     C_FIELDTYPECURRENCY: LFieldType := ftFloat;
                     C_FIELDTYPEDATE    : LFieldType := ftDateTime;
                     C_FIELDTYPEINTEGER : LFieldType := ftInteger;
                     C_FIELDTYPECHECKBOX: LFieldType := ftString;
                     else LFieldType := ftString; // 'T' or something else
               end;
//               AMergeDoc.AppendRow(dfClient);
               AMergeDoc.AddRow(dfClient);
               if(LFieldType = ftString) then
                  AMergeDoc.AddColumn(dfClient,LFieldName, LFieldType, 2000)
               else
                  AMergeDoc.AddColumn(dfClient,LFieldName, LFieldType);
               dmWorkFlowDataModuleMerge.qClientFormData.Next();
            end;
         end;
         next;
      end;
   end;

end;


procedure TfmWorkFlowMergeDocument.AddMatterDataForms(AMergeDoc: TMergeDocument; ANMatter: integer);
var
  i, x: Integer;
  LFieldDef: TFieldDef;
  LDataForm: String;
  LFieldType: TFieldType;
  LFieldName: String;
  AWorkflow: string;
  frmProcess: TfrmProcess;
begin
   AMergeDoc.Clear(dfMatter);
   dmWorkFlowDataModuleMerge.qExportMatter.Close();
   dmWorkFlowDataModuleMerge.qExportMatterData.Close();

   dmWorkFlowDataModuleMerge.qExportMatter.ParamByName('nmatter').AsInteger := ANMatter;
   dmWorkFlowDataModuleMerge.qExportMatterData.ParamByName('nmatter').AsInteger := ANMatter;
   // AES added this for new precedents merging
   if AMergeDoc.WorkFlow <> '' then AWorkFlow := AMergeDoc.WorkFlow;
   dmWorkFlowDataModuleMerge.qExportMatterData.ParamByName('workflow').AsString := AWorkflow;

   try
      dmWorkFlowDataModuleMerge.qExportMatter.Open();
      dmWorkFlowDataModuleMerge.qExportMatterData.Open();

      AMergeDoc.CopyFieldDefs(dfMatter, dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs, dmWorkFlowDataModuleMerge.qExportMatter);

      // create field names for data forms.
      dmWorkFlowDataModuleMerge.qExportMatterData.First();
      LDataForm := '';
      x := 0;
      // creating datafile
//      frmProcess := TfrmProcess.Create(application);
//      frmProcess.lblProcess.Caption := 'Creating Merge Datafile...';
//      frmProcess.lblRecsProcessed.Caption := 'Records to Process - '+ InttoStr(dmWorkFlowDataModuleMerge.qExportMatterData.RecordCount);
//      frmProcess.pbProcess.Max := dmWorkFlowDataModuleMerge.qExportMatterData.RecordCount;
//      frmProcess.Show;
      Application.ProcessMessages;
      while(not dmWorkFlowDataModuleMerge.qExportMatterData.Eof) do
      begin
         if(LDataForm <> dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('dataform').AsString) then
           LDataForm := dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('dataform').AsString;

         LFieldName := LDataForm + '_' + dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('fieldname').AsString;

         case dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('TYPE').AsString[1] of
           C_FIELDTYPECURRENCY: LFieldType := ftFloat;
           C_FIELDTYPEDATE    : LFieldType := ftDateTime;
           C_FIELDTYPEINTEGER : LFieldType := ftInteger;
           C_FIELDTYPECHECKBOX: LFieldType := ftString;
           else LFieldType := ftString; // 'T' or something else
         end;

         if(LFieldType = ftString) then
           AMergeDoc.AddColumn(dfMatter,LFieldName, LFieldType, 2000)
         else
           AMergeDoc.AddColumn(dfMatter,LFieldName, LFieldType);

         AMergeDoc.AddCustomField(
           dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('NUNIQUE').AsInteger,
           dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('NUNIQUE2').AsInteger,
           dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('LINKTABLE').AsString,
           dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('FIELDNAME').AsString,
           dfMatter,
           dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('TYPE').AsString,
           dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('CAPTION').AsString,
           dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('DATAFORMCAPTION').AsString
         );
         dmWorkFlowDataModuleMerge.qExportMatterData.Next();

//         frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
//         frmProcess.lblRecsProcessed.Caption := 'Processing record ' + Inttostr(frmProcess.pbProcess.Position)+' of '+ InttoStr(dmWorkFlowDataModuleMerge.qExportMatterData.RecordCount);
//         Sleep(1);
         Application.ProcessMessages;
//      inc(x);
      end;
//      frmProcess.Release;
      Application.ProcessMessages;
//    MsgInfo(IntToStr(x));
      dmWorkFlowDataModuleMerge.qExportMatter.First();
      // only one row..
      AMergeDoc.AddRow(dfMatter);
      // add form to show record processing  aes 17-oct-2011
{      frmProcess := TfrmProcess.Create(application);
      frmProcess.lblProcess.Caption := 'Creating Merge Data...';
      frmProcess.lblRecsProcessed.Caption := 'Records to Process - '+ InttoStr(dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs.Count);
      frmProcess.pbProcess.Max := dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs.Count;
      frmProcess.Show;
      Application.ProcessMessages; }
      for i := 0 to dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs.Count - 1 do
      begin
         LFieldDef := dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs[i];
         if(not dmWorkFlowDataModuleMerge.qExportMatter.Fields[i].IsNull) then
            AMergeDoc.AddValue(dfMatter,LFieldDef.Name, dmWorkFlowDataModuleMerge.qExportMatter.Fields[i].Value);
//         frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
//         frmProcess.lblRecsProcessed.Caption := 'Processing record ' + Inttostr(frmProcess.pbProcess.Position)+' of '+ InttoStr(dmWorkFlowDataModuleMerge.qExportMatter.FieldDefs.Count);
//         Sleep(1);
//         Application.ProcessMessages;

      end;
//      frmProcess.Release;
//      Application.ProcessMessages;
      // create data for data forms.
      dmWorkFlowDataModuleMerge.qExportMatterData.First();
      LDataForm := '';
      while(not dmWorkFlowDataModuleMerge.qExportMatterData.Eof) do
      begin
      if(LDataForm <> dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('dataform').AsString) then
        LDataForm := dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('dataform').AsString;

      LFieldName := LDataForm + '_' + dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('fieldname').AsString;

      case dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('TYPE').AsString[1] of
        C_FIELDTYPECURRENCY: AMergeDoc.AddValue(dfMatter,LFieldName, dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('NUMBERVALUE').Value);
        C_FIELDTYPEDATE    :  begin
                                 if (VarIsNull(dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('DATEVALUE').Value) = True) then
                                    AMergeDoc.AddValue(dfMatter,LFieldName, Null)
                                 else
                                    AMergeDoc.AddValue(dfMatter,LFieldName, dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('DATEVALUE').Value);
                               end;
        C_FIELDTYPEINTEGER : AMergeDoc.AddValue(dfMatter,LFieldName, dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('NUMBERVALUE').Value);
        else AMergeDoc.AddValue(dfMatter,LFieldName, dmWorkFlowDataModuleMerge.qExportMatterData.FieldByName('TEXTVALUE').AsString);
      end;

      dmWorkFlowDataModuleMerge.qExportMatterData.Next();
      end;

      AMergeDoc.PostRow(dfMatter);
  finally
      dmWorkFlowDataModuleMerge.qExportMatterData.Close();
      dmWorkFlowDataModuleMerge.qExportMatter.Close();
  end;
end;

procedure TfmWorkFlowMergeDocument.AddPartyFormData(AMergeDoc: TMergeDocument; ANMatter: Integer; ANName: integer; APartyType: string; ADataFor: TDataFor);
var
  i: Integer;
  LFieldDef: TFieldDef;
  LDataForm: String;
  LFieldType: TFieldType;
  LFieldName: String;
  bData: boolean;
begin
   dmWorkFlowDataModuleMerge.qMatterPartyData.Close();
   dmWorkFlowDataModuleMerge.qMatterPartyData.ParamByName('partytype').AsString := APartyType;
   dmWorkFlowDataModuleMerge.qMatterPartyData.ParamByName('nunique').AsInteger := ANName;
   dmWorkFlowDataModuleMerge.qMatterPartyData.ParamByName('nunique2').AsInteger := ANMatter;

   dmWorkFlowDataModuleMerge.qMatterPartyData.Open();

   // create data for data forms.
   bData := (not dmWorkFlowDataModuleMerge.qMatterPartyData.Eof);
   LDataForm := '';
   while(not dmWorkFlowDataModuleMerge.qMatterPartyData.Eof) do
   begin
      if(LDataForm <> dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('DATAFORM').AsString) then
            LDataForm := dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('DATAFORM').AsString;

      LFieldName := LDataForm + '_' + dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('FIELDNAME').AsString;

      case dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('TYPE').AsString[1] of
            C_FIELDTYPECURRENCY: LFieldType := ftFloat;
            C_FIELDTYPEDATE    : LFieldType := ftDateTime;
            C_FIELDTYPEINTEGER : LFieldType := ftInteger;
            C_FIELDTYPECHECKBOX: LFieldType := ftString;
            else LFieldType := ftString; // 'T' or something else
      end;
//      AMergeDoc.AppendRow(ADataFor);
      if(LFieldType = ftString) then
         AMergeDoc.AddColumn(ADataFor,LFieldName, LFieldType, 2000)
      else
         AMergeDoc.AddColumn(ADataFor,LFieldName, LFieldType);

      case dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('TYPE').AsString[1] of
        C_FIELDTYPECURRENCY : AMergeDoc.AddValue(ADataFor,LFieldName, dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('NUMBERVALUE').Value);
        C_FIELDTYPEDATE     : AMergeDoc.AddValue(ADataFor,LFieldName, dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('DATEVALUE').Value);
        C_FIELDTYPEINTEGER  : AMergeDoc.AddValue(ADataFor,LFieldName, dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('NUMBERVALUE').Value);
        else                  AMergeDoc.AddValue(ADataFor,LFieldName, dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('TEXTVALUE').AsString);
      end;
{
      AMergeDoc.AddCustomField(
        ANName,
        ANMatter,
        LDataForm,
        dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('FIELDNAME').AsString,
        dfParty,
        dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('TYPE').AsString,
        dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('CAPTION').AsString,
        dmWorkFlowDataModuleMerge.qMatterPartyData.FieldByName('dataformcaption').AsString,
        APartyType,1
      );                                   }
      dmWorkFlowDataModuleMerge.qMatterPartyData.Next();
   end;
end;


end.
