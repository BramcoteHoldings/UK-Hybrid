unit WorkFlowAddDocTemplateDialog;
(*
  WorkFlow Add Document Template

  Called from the workflow doc templates form to add or edit
  document templates.

  Mathew Dredge, Aug-Sep 2002
 *)

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls, Dialogs, Grids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter,
  Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, cxClasses,
  DBAccess, Uni, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, MemDS,
  VirtualTable, cxImageComboBox, JvExMask, JvToolEdit, cxLabel, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Vcl.Menus, cxCheckBox, System.ImageList,
  dxDateRanges;


const
  C_DOCTYPEPARTY  = 'P';
  C_DOCTYPECLIENT = 'O';
  C_DOCTYPEADMIN  = 'A';

type
  TfmWorkFlowAddDocTemplateDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    lTemplateName: TLabel;
    lDocumentFilePath: TLabel;
    lWorkflowType: TLabel;
    lTemplatePath: TLabel;
    lDataFilePath: TLabel;
    vtReferredTo: TVirtualTable;
    dsReferredTo: TDataSource;
    ActionList: TActionList;
    ImageList: TImageList;
    aDataSetInsert: TDataSetInsert;
    aDataSetDelete: TDataSetDelete;
    aDataSetEdit: TDataSetEdit;
    aMoveUp: TAction;
    aMoveDown: TAction;
    vtReferredToID: TIntegerField;
    vtReferredToVIEWORDER: TIntegerField;
    vtReferredToPartyType: TStringField;
    lGroupLabel: TLabel;
    beDataForm: TcxButtonEdit;
    cxLabel1: TcxLabel;
    qryDataFields: TUniQuery;
    dsDataFields: TUniDataSource;
    qryAssignedFields: TUniQuery;
    dsAssignedFields: TUniDataSource;
    qryDeleteAssignedFields: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    qryPRECCATEGORY: TUniQuery;
    dsPRECCATEGORY: TUniDataSource;
    qryPRECCLASSIFICATION: TUniQuery;
    dsPRECCLASSIFICATION: TUniDataSource;
    feTemplatePath: TJvFilenameEdit;
    feDataFilePath: TJvFilenameEdit;
    feDocumentName: TJvFilenameEdit;
    dbeDocName: TEdit;
    dblGroup: TcxImageComboBox;
    btnDataFilePath: TBitBtn;
    btnDocFilePath: TBitBtn;
    Label4: TLabel;
    memoTemplateDescr: TMemo;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    lPartyMergeType: TLabel;
    lPartyType: TLabel;
    lNoAddressee: TLabel;
    lClientAddressee: TLabel;
    lOtherParty1: TLabel;
    rbAddrTypeClient: TRadioButton;
    rbAddrTypeParty: TRadioButton;
    rbAddrTypeNone: TRadioButton;
    cbActive: TCheckBox;
    cbWorkflowOnly: TCheckBox;
    cbPartyType: TcxComboBox;
    dbgReferred: TcxGrid;
    tvReferred: TcxGridDBTableView;
    tvReferredPartyType: TcxGridDBColumn;
    tvReferredID: TcxGridDBColumn;
    tvReferredVIEWORDER: TcxGridDBColumn;
    dbgReferredLevel1: TcxGridLevel;
    ckReferredOptional: TDBCheckBox;
    tbDataSet: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Label2: TLabel;
    grdAssigned: TcxGrid;
    tvAssignedFields: TcxGridDBTableView;
    tvAssignedFieldsSEQ: TcxGridDBColumn;
    tvAssignedFieldsCAPTION: TcxGridDBColumn;
    tvAssignedFieldsDATAFORM: TcxGridDBColumn;
    tvAssignedFieldsFIELDNAME: TcxGridDBColumn;
    tvAssignedFieldsWORKFLOWDOCTEMPLATES_DOCID: TcxGridDBColumn;
    grdAssignedLevel1: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    grdAvailable: TcxGrid;
    tvAvailable: TcxGridDBTableView;
    tvAvailableFIELDNAME: TcxGridDBColumn;
    tvAvailableDATAFORM: TcxGridDBColumn;
    tvAvailableSEQ: TcxGridDBColumn;
    tvAvailableMANDATORY: TcxGridDBColumn;
    tvAvailableCAPTION: TcxGridDBColumn;
    grdAvailableLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    Label3: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    cmbCategory: TcxLookupComboBox;
    cmbClassification: TcxLookupComboBox;
    cxLookupComboBox1: TcxLookupComboBox;
    popMenuMacroList: TPopupMenu;
    lTemplateType: TLabel;
    cmbTemplateType: TcxComboBox;
    cxLabel2: TcxLabel;
    procedure bnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bnClearOP1Click(Sender: TObject);
    procedure bnClearOP2Click(Sender: TObject);
    procedure bnClearOP3Click(Sender: TObject);
    procedure rbAddrTypeClick(Sender: TObject);
    procedure vtReferredToAfterInsert(DataSet: TDataSet);
    procedure aMoveUpUpdate(Sender: TObject);
    procedure aMoveUpExecute(Sender: TObject);
    procedure aMoveDownExecute(Sender: TObject);
    procedure aMoveDownUpdate(Sender: TObject);
    procedure vtReferredToBeforeDelete(DataSet: TDataSet);
    procedure vtReferredToAfterPost(DataSet: TDataSet);
    procedure aDataSetInsertExecute(Sender: TObject);
    procedure vtReferredToBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure beDataFormPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvAvailableMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tvAssignedFieldsDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure tvAssignedFieldsDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure tvAvailableDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure tvAssignedFieldsEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure tvAvailableEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure dbgReferredEnter(Sender: TObject);
    procedure btnDataFilePathClick(Sender: TObject);
    procedure btnDocFilePathClick(Sender: TObject);
    procedure dbeDocNameEnter(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure popMenuMacroListPopup(Sender: TObject);
    procedure cbMergedocumentClick(Sender: TObject);
    procedure cmbTemplateTypePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FDontAfterPost: Boolean;
    procedure MenuItemClick(Sender: TObject);
  public
    FDeleted: array of Integer;
    { Public declarations }
    procedure AddPartyType(AID, AViewOrder: Integer; APartyType: String);
    function GetNextParty(ALastViewOrder: Integer; var AId, AViewOrder: Integer; var APartyType: String): boolean;
  end;

var
  fmWorkFlowAddDocTemplateDialog: TfmWorkFlowAddDocTemplateDialog;

implementation

uses WorkFlowDataModule, WorkFlowAdminDocs, WorkFlowDataModuleDocs, GenericSearch, cxGridStrs,
      AxiomData, MiscFunc;

{$R *.DFM}

procedure TfmWorkFlowAddDocTemplateDialog.bnOkClick(Sender: TObject);
begin
   ActiveControl := bnOk; // ensures data back to table.
   ModalResult := mrNone;

  tvReferred.DataController.Cancel;
   if(vtReferredTo.State in [dsEdit, dsInsert]) then
      vtReferredTo.Post();


   if (rbAddrTypeParty.Checked) then
   begin
      if cbPartyType.Text = '' then
      begin
         ActiveControl := cbPartyType;
         MessageDlg('Please select an Addressee type',mtError,[mbOk],0);
         Exit;
      end;
   end;

   if(dbeDocName.Text = '') then
   begin
      ActiveControl := dbeDocName;
      MessageDlg('Please enter the document name',mtError,[mbOk],0);
      Exit;
   end;

   if(cmbTemplateType.Enabled and (cmbTemplateType.Text = '')) then
   begin
     cmbTemplateType.Text :=  ''   // Set to default for the system.
   end;

   if(feTemplatePath.Enabled and (feTemplatePath.Text = '')) then
   begin
      ActiveControl := feTemplatePath;
      MessageDlg('Please enter the template filename',mtError,[mbOk],0);
      Exit;
   end;

   if (feDataFilePath.Enabled and (feDataFilePath.Text = '')) then
   begin
      ActiveControl := feDataFilePath;
      MessageDlg('Please enter the data filename',mtError,[mbOk],0);
      Exit;
   end;

   if (feDocumentName.Enabled and (feDocumentName.Text = '')) then
   begin
      ActiveControl := feDocumentName;
      MessageDlg('Please enter the document filename',mtError,[mbOk],0);
      Exit;
   end;

   dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTNAME').AsString := dbeDocName.Text;

   if(feDocumentName.Enabled) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTPATH').AsString := feDocumentName.Text;
   if(feTemplatePath.Enabled) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString := feTemplatePath.Text;
    if(cmbTemplateType.Enabled) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATETYPE').AsString := cmbTemplateType.Text;
   if(feDataFilePath.Enabled) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFILEPATH').AsString := feDataFilePath.Text;
   if(beDataform.Enabled) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFORM').AsString := beDataform.Text;
   if memoTemplateDescr.enabled then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DESCRIPTION').AsString := memoTemplateDescr.Text;



   if(rbAddrTypeClient.Checked) or (rbAddrTypeNone.Checked)  then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').Clear();

   if cbActive.Checked then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('ACTIVE').AsString := 'Y'
   else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('ACTIVE').AsString := 'N';

   if cbWorkflowOnly.Checked then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOW_ONLY').AsString := 'Y'
   else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOW_ONLY').AsString := 'N';

   if cbPartyType.Text <> '' then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString := cbPartyType.Text;

   if dblGroup.Text <> '' then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsInteger := dblGroup.EditValue;

   if cmbCategory.Text <> '' then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCATEGORY').AsInteger := cmbCategory.EditValue
   else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCATEGORY').Clear;

   if cmbClassification.Text <> '' then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCLASSIFICATION').AsInteger := cmbClassification.EditValue
   else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCLASSIFICATION').Clear;

   if cmbTemplateType.Text <> '' then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATETYPE').AsString := cmbTemplateType.EditValue
   else
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATETYPE').Clear;



   {     else
   begin
    dmWorkFlowDataModuleDocs.tbDocTemplatesOTHERPARTY1.Clear();
    dmWorkFlowDataModuleDocs.tbDocTemplatesOTHERPARTY2.Clear();
    dmWorkFlowDataModuleDocs.tbDocTemplatesOTHERPARTY3.Clear();
   end;}

   ModalResult := mrOk;
end;

procedure TfmWorkFlowAddDocTemplateDialog.btnDocFilePathClick(Sender: TObject);
begin
   feDocumentName.FileName := SystemString('DOC_DEFAULT_DIRECTORY');
end;

procedure TfmWorkFlowAddDocTemplateDialog.FormShow(Sender: TObject);
var
   AItem: TcxImageComboboxItem;
begin
   rbAddrTypeClient.Checked   := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString = C_DOCTYPECLIENT;
   rbAddrTypeParty.Checked    := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString = C_DOCTYPEPARTY;
   rbAddrTypeNone.Checked     := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString = C_DOCTYPEADMIN;

   cbPartyType.Enabled := rbAddrTypeParty.Checked;
   cbPartyType.Visible := cbPartyType.Enabled;
   lClientAddressee.Visible := rbAddrTypeClient.Checked; //  not cbPartyType.Visible;
   lNoAddressee.Visible := rbAddrTypeNone.Checked;
   dbgReferred.Enabled := not rbAddrTypeNone.Checked;
   //  tbDataSet.Enabled := not rbAddrTypeNone.Checked;

   cbActive.Checked := (dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('ACTIVE').AsString = 'Y');
   cbWorkflowOnly.Checked := (dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOW_ONLY').AsString = 'Y');

   dbeDocName.text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTNAME').AsString;
   if(feDocumentName.Enabled) then
      feDocumentName.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTPATH').AsString;
   if(feTemplatePath.Enabled) then
      feTemplatePath.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString;
   if(cmbTemplateType.Enabled) then
   begin
      cmbTemplateType.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATETYPE').AsString;
      if cmbTemplateType.Text = '' then
          cmbTemplateType.Text :=  ''   // Set to default for the system.
   end;

   if cmbTemplateType.Text <> '' then
      feDataFilePath.Enabled := (cmbTemplateType.Text <> 'Generic Documents - No Merge');
   if(feDataFilePath.Enabled) then
      feDataFilePath.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFILEPATH').AsString;
   if(beDataform.Enabled) then
      beDataform.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFORM').AsString;
   if memoTemplateDescr.enabled then
      memoTemplateDescr.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DESCRIPTION').AsString;


   lTemplatePath.Enabled := feTemplatePath.Enabled;
   lTemplateType.Enabled := cmbTemplateType.Enabled;
   lDataFilePath.Enabled := feDataFilePath.Enabled;
 //  lDocumentFilePath.Enabled := feDocumentName.Enabled;

   dblGroup.Properties.Items.Clear;
   dmWorkFlowDataModuleDocs.tbDocGroups.First();
   while(not dmWorkFlowDataModuleDocs.tbDocGroups.Eof) do
   begin
      AItem := dblGroup.Properties.Items.Add;
      AItem.Description := dmWorkFlowDataModuleDocs.tbDocGroups.FieldByName('NAME').AsString;
      AItem.Value := dmWorkFlowDataModuleDocs.tbDocGroups.FieldByName('GROUPID').AsString;

      dmWorkFlowDataModuleDocs.tbDocGroups.Next();
   end;
   dblGroup.EditValue := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('GROUPID').AsInteger;

   cbPartyType.Properties.Items.Clear;
   dmWorkFlowDataModuleDocs.qPhoneGroupings.First();
   while(not dmWorkFlowDataModuleDocs.qPhoneGroupings.Eof) do
   begin
      cbPartyType.Properties.Items.Add(dmWorkFlowDataModuleDocs.qPhoneGroupings.FieldByName('CATEGORY').AsString);
      dmWorkFlowDataModuleDocs.qPhoneGroupings.Next();
   end;

   cbPartyType.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString;

   vtReferredTo.First();

   //  if (tvReferred.DataController.RowCount = 0) and (not dmWorkFlowDataModuleDocs.qPhoneGroupings.Eof) then
   //      tvReferred.DataController.Append;

   dmWorkFlowDataModuleDocs.qPhoneGroupings.First();
   while(not dmWorkFlowDataModuleDocs.qPhoneGroupings.Eof) do
   begin
      TcxComboBoxProperties(tvReferredPartyType.Properties).Items.Add(dmWorkFlowDataModuleDocs.qPhoneGroupings.FieldByName('CATEGORY').AsString);
   //   dbgReferred.Columns.Items[0].PickList.Add(dmWorkFlowDataModuleDocs.qPhoneGroupingsCATEGORY.AsString);
      dmWorkFlowDataModuleDocs.qPhoneGroupings.Next();
   end;

   qryDataFields.ParamByName('docid').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('docid').AsInteger;
   //  qryDataFields.ParamByName('dataform').AsString := dmWorkFlowDataModuleDocs.tbDocTemplates.FieldByName('DATAFORM').AsString;
   qryDataFields.Open;

   qryAssignedFields.Close;
   qryAssignedFields.ParamByName('docid').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('docid').AsInteger;
   //  qryAssignedFields.ParamByName('dataform').AsString := dmWorkFlowDataModuleDocs.tbDocTemplates.FieldByName('DATAFORM').AsString;
   qryAssignedFields.Open;

   try
      cmbCategory.EditValue := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCATEGORY').AsInteger;
      cmbClassification.EditValue := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('NPRECCLASSIFICATION').AsInteger;
   except
   //
   end;

   cmbTemplateType.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATETYPE').AsString;
   cxLabel2.Caption := TableString('workflowtype','code', dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('WORKFLOWTYPECODE').AsString, 'descr');
end;

procedure TfmWorkFlowAddDocTemplateDialog.FormCreate(Sender: TObject);
begin
   vtReferredTo.Open();
   feDocumentName.Text := '';
   feTemplatePath.Text := '';
   feDataFilePath.Text := '';
   SetLength(FDeleted,0);
   dmWorkFlowDataModuleDocs.tbDocGroups.Open();
   qryPRECCATEGORY.Open;
   qryPRECCLASSIFICATION.Open;
end;

procedure TfmWorkFlowAddDocTemplateDialog.bnClearOP1Click(Sender: TObject);
begin
//  dmWorkFlowDataModuleDocs.tbDocTemplatesOTHERPARTY1.Clear();
end;

procedure TfmWorkFlowAddDocTemplateDialog.bnClearOP2Click(Sender: TObject);
begin
//  dmWorkFlowDataModuleDocs.tbDocTemplatesOTHERPARTY2.Clear();
end;

procedure TfmWorkFlowAddDocTemplateDialog.bnClearOP3Click(Sender: TObject);
begin
//  dmWorkFlowDataModuleDocs.tbDocTemplatesOTHERPARTY3.Clear();
end;

procedure TfmWorkFlowAddDocTemplateDialog.rbAddrTypeClick(Sender: TObject);
begin
  if(Sender = rbAddrTypeClient) then
  begin
    if(rbAddrTypeClient.Checked) then
    begin
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPECLIENT;
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('PARTYTYPE').AsString := '';
    end
    else
    if(rbAddrTypeParty.Checked) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEPARTY
    else
    if(rbAddrTypeNone.Checked) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEADMIN;
    rbAddrTypeParty.Checked := not rbAddrTypeClient.Checked;
  end else
  if (Sender = rbAddrTypeParty) then
  begin
    if(rbAddrTypeParty.Checked) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEPARTY
    else if(rbAddrTypeClient.Checked) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPECLIENT
    else
    if(rbAddrTypeNone.Checked) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEADMIN;
    rbAddrTypeClient.Checked := not rbAddrTypeParty.Checked;
  end else
  if (Sender = rbAddrTypeNone) then
  begin
    if(rbAddrTypeNone.Checked) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEPARTY
    else if(rbAddrTypeClient.Checked) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPECLIENT
    else
    if(rbAddrTypeNone.Checked) then
      dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCTYPE').AsString := C_DOCTYPEADMIN;
    rbAddrTypeNone.Checked := not rbAddrTypeParty.Checked;
  end;

  cbPartyType.Enabled := rbAddrTypeParty.Checked;
  cbPartyType.Visible := cbPartyType.Enabled;
  lClientAddressee.Visible := rbAddrTypeClient.Checked;  // not cbPartyType.Visible;
  lNoAddressee.Visible := rbAddrTypeNone.Checked;
  dbgReferred.Enabled := not rbAddrTypeNone.Checked;
//  tbDataSet.Enabled := not rbAddrTypeNone.Checked;
end;

procedure TfmWorkFlowAddDocTemplateDialog.TabSheet2Show(Sender: TObject);
begin
   grdAssigned.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfmWorkFlowAddDocTemplateDialog.ToolButton1Click(Sender: TObject);
begin
   vtReferredTo.Append();
end;

procedure TfmWorkFlowAddDocTemplateDialog.AddPartyType(AID,
  AViewOrder: Integer; APartyType: String);
begin
  FDontAfterPost := True;
  try
    vtReferredTo.Append();
    vtReferredToID.AsInteger        := AID;
    vtReferredToVIEWORDER.AsInteger := AViewOrder;
    vtReferredToPartyType.AsString  := APartyType;
    vtReferredTo.Post();
  finally
    FDontAfterPost := False;
  end;
end;

function TfmWorkFlowAddDocTemplateDialog.GetNextParty(ALastViewOrder: Integer; var AId, AViewOrder: Integer;
  var APartyType: String): boolean;
begin
  Result := False;
  vtReferredTo.First();
  while(not vtReferredTo.Eof) do
  begin
    if(vtReferredToVIEWORDER.AsInteger = ALastViewOrder + 1) then
    begin
      AID        := vtReferredToID.AsInteger;
      AViewOrder := vtReferredToVIEWORDER.AsInteger;
      APartyType := vtReferredToPartyType.AsString;

      Result := True;
      Break;
    end;

    vtReferredTo.Next();
  end;
end;

procedure TfmWorkFlowAddDocTemplateDialog.popMenuMacroListPopup(
  Sender: TObject);
var
   i: integer;
   Item: TMenuItem;

begin
   popMenuMacroList.Items.Clear;
   for I := 0 to length(WkFlowMacrosDescr) - 1 do
   begin
      Item := TMenuItem.Create(popMenuMacroList);
      Item.Caption := WkFlowMacrosDescr[i];
      Item.OnClick := MenuItemClick;

      popMenuMacroList.Items.Add(Item);
   end;
end;

procedure TfmWorkFlowAddDocTemplateDialog.MenuItemClick(Sender: TObject);
var
   Caller: TObject;
begin
   Caller := ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  (Caller as TJvFileNameEdit).Text := (Caller as TJvFileNameEdit).Text +
      WkFlowMacrosValues[(Sender as TMenuItem).MenuIndex];
end;

procedure TfmWorkFlowAddDocTemplateDialog.vtReferredToAfterInsert(
  DataSet: TDataSet);
begin
  vtReferredToVIEWORDER.AsInteger := vtReferredTo.RecordCount;
  vtReferredToID.AsInteger := 0;
end;

procedure TfmWorkFlowAddDocTemplateDialog.aMoveUpUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not (vtReferredTo.Bof or (vtReferredTo.RecNo = 1));
end;

procedure TfmWorkFlowAddDocTemplateDialog.aMoveUpExecute(Sender: TObject);
var
  LCurrentP, LPrevP: String;
begin
  LCurrentP := vtReferredToPartyType.AsString;
  vtReferredTo.Prior();
  LPrevP    := vtReferredToPartyType.AsString;

  FDontAfterPost := True;
  vtReferredTo.Edit();
  vtReferredToPartyType.AsString := LCurrentP;
  vtReferredTo.Post();
  FDontAfterPost := False;

  vtReferredTo.Next();
  vtReferredTo.Edit();
  vtReferredToPartyType.AsString := LPrevP;
  vtReferredTo.Post();
  vtReferredTo.Prior();
end;

procedure TfmWorkFlowAddDocTemplateDialog.aMoveDownExecute(Sender: TObject);
var
  LCurrentP, LNextP: String;
begin
  LCurrentP := vtReferredToPartyType.AsString;
  vtReferredTo.Next();
  LNextP    := vtReferredToPartyType.AsString;

  FDontAfterPost := True;
  vtReferredTo.Edit();
  vtReferredToPartyType.AsString := LCurrentP;
  vtReferredTo.Post();
  FDontAfterPost := False;

  vtReferredTo.Prior();
  vtReferredTo.Edit();
  vtReferredToPartyType.AsString := LNextP;
  vtReferredTo.Post();
  vtReferredTo.Next();
end;

procedure TfmWorkFlowAddDocTemplateDialog.aMoveDownUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not (vtReferredTo.Eof or (vtReferredTo.RecNo = vtReferredTo.RecordCount));
end;

procedure TfmWorkFlowAddDocTemplateDialog.vtReferredToBeforeDelete(
  DataSet: TDataSet);
begin
  if(vtReferredToID.AsInteger > 0) then
  begin
    SetLength(FDeleted,Length(FDeleted) + 1);
    FDeleted[Length(FDeleted) - 1] := vtReferredToID.AsInteger;
  end;
end;

procedure TfmWorkFlowAddDocTemplateDialog.vtReferredToAfterPost(
  DataSet: TDataSet);
var
  LBookMark: TBookmark;
begin
  if(not FDontAfterPost) then
  begin
    FDontAfterPost := True;
    try
      LBookMark := vtReferredTo.GetBookmark();
      vtReferredTo.DisableControls();
      try

        vtReferredTo.First();
        while(not vtReferredTo.Eof) do
        begin
          vtReferredTo.Edit();
          vtReferredToVIEWORDER.AsInteger := vtReferredTo.RecNo;
          vtReferredTo.Post();

          vtReferredTo.Next();
        end;
      finally
        vtReferredTo.GotoBookmark(LBookMark);
        vtReferredTo.EnableControls();
      end;
    finally
      FDontAfterPost := False;
    end;
  end;
end;

procedure TfmWorkFlowAddDocTemplateDialog.aDataSetInsertExecute(
  Sender: TObject);
begin
  vtReferredTo.Append();
end;

procedure TfmWorkFlowAddDocTemplateDialog.vtReferredToBeforePost(
  DataSet: TDataSet);
begin
  // check to see if the value is in the list, stops people ryping
  // which is something I cant stop.
{  if(not FDontAfterPost) then
  begin
    if(dbgReferred.Columns[0].PickList.IndexOf(vtReferredToPartyType.AsString) < 0) then
    begin
      MessageBeep(MB_ICONEXCLAMATION);
      vtReferredToPartyType.AsString := '';
      Abort();
    end;
  end;      }
end;

procedure TfmWorkFlowAddDocTemplateDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dmWorkFlowDataModuleDocs.tbDocGroups.Close();
   qryPRECCATEGORY.Close();
   qryPRECCLASSIFICATION.Close();
end;

procedure TfmWorkFlowAddDocTemplateDialog.beDataFormPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   with TfrmGenericSearch.Create(Self) do
   begin
      SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM DATAFORM WHERE CODE <> ''SINGLEFIELDFORM'' ORDER BY CODE';
      if ShowModal = mrOK then
      begin
         beDataForm.Text := qrySource.FieldByName('CODE').AsString;
         qryDataFields.Close;
         qryDataFields.ParamByName('docid').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('docid').AsInteger;
//         qryDataFields.ParamByName('dataform').AsString := qrySource.FieldByName('CODE').AsString;
         qryDataFields.Open;
      end;
   end;
end;

procedure TfmWorkFlowAddDocTemplateDialog.btnDataFilePathClick(Sender: TObject);
begin
   feDataFilePath.FileName := SystemString('DFLT_MERGE_DATA_PATH');
end;

procedure TfmWorkFlowAddDocTemplateDialog.tvAvailableMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
   with TcxGridSite(Sender) do
   begin
      if ViewInfo.GetHitTest(X, Y).HitTestCode = htCell then
         BeginDrag(False);
   end;
end;

procedure TfmWorkFlowAddDocTemplateDialog.tvAssignedFieldsDragOver(
  Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
   if TcxGridSite(Sender) <> TcxGridSite(Source) then
      Accept := True;
end;

procedure TfmWorkFlowAddDocTemplateDialog.tvAssignedFieldsDragDrop(
  Sender, Source: TObject; X, Y: Integer);
var
  AView : TcxGridDBTableView;
  ADropView: TcxGridDBTableView;
  i, ARecIdx, ARowCount, ANewSEQ: integer;
begin
   if TcxDragControlObject(Source).Control is TcxGridSite then
   begin
      AView := TcxGridSite(TcxDragControlObject(Source).Control).GridView as TcxGridDBTableView;
      ADropView := tvAssignedFields;
      ARowCount := 0;
      ADropView.BeginUpdate;

      dmAxiom.qryTmp.SQL.Clear;
      dmAxiom.qryTmp.SQL.Text := 'SELECT nvl(max(seq),0) + 1 FROM WKFLOWDOCTEMPLATES_DATAFIELDS '+
                                 ' where WORKFLOWDOCTEMPLATES_DOCID = :WORKFLOWDOCTEMPLATES_DOCID '+
                                 ' and DATAFORM = :DATAFORM';
//      dmAxiom.qryTmp.ParamByName('WORKFLOWDOCTEMPLATES_DOCID').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplates.FieldByName('docid').AsInteger;
//      dmAxiom.qryTmp.ParamByName('DATAFORM').AsString := AView.DataController.Values[ARecIdx, 4];
//      dmAxiom.qryTmp.Open;
//      ANewSEQ := dmAxiom.qryTmp.Fields.Fields[0].AsInteger;
//      dmAxiom.qryTmp.Close;

      for i := 0 to AView.Controller.SelectedRecordCount - 1 do
      begin
         ARowCount := ADropView.DataController.RecordCount;
//         qryAssignedFields.Last;
         qryAssignedFields.Insert;
         ARecIdx := AView.Controller.SelectedRecords[I].RecordIndex;

         dmAxiom.qryTmp.ParamByName('WORKFLOWDOCTEMPLATES_DOCID').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('docid').AsInteger;
         dmAxiom.qryTmp.ParamByName('DATAFORM').AsString := AView.DataController.Values[ARecIdx, 1];
         dmAxiom.qryTmp.Open;
         ANewSEQ := dmAxiom.qryTmp.Fields.Fields[0].AsInteger;
         dmAxiom.qryTmp.Close;

         begin
            qryAssignedFields.FieldByName('caption').AsString := AView.DataController.Values[ARecIdx, 0];
            qryAssignedFields.FieldByName('fieldname').AsString := AView.DataController.Values[ARecIdx, 0];
            qryAssignedFields.FieldByName('dataform').AsString := AView.DataController.Values[ARecIdx, 1];
            qryAssignedFields.FieldByName('WORKFLOWDOCTEMPLATES_DOCID').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('docid').AsInteger;
            qryAssignedFields.FieldByName('SEQ').AsInteger := ANewSEQ;  //ARowCount;
         end;
///         Inc(ANewSEQ);
      end;
      qryAssignedFields.Post;
      ADropView.EndUpdate;
   end;
end;

procedure TfmWorkFlowAddDocTemplateDialog.tvAvailableDragDrop(
  Sender, Source: TObject; X, Y: Integer);
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
            qryDeleteAssignedFields.ParamByName('fieldname').AsString := AView.DataController.Values[ARecIdx, 3];
            qryDeleteAssignedFields.ParamByName('dataform').AsString := AView.DataController.Values[ARecIdx, 2];
            qryDeleteAssignedFields.ParamByName('DOCID').AsInteger := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('docid').AsInteger;
            qryDeleteAssignedFields.ExecSQL;
         end;
      end;
      ADropView.EndUpdate;
   end;
end;

procedure TfmWorkFlowAddDocTemplateDialog.tvAssignedFieldsEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
   qryDataFields.Refresh;
   qryAssignedFields.Refresh;
//   grdAvailable.FocusedView.DataController.Groups.FullExpand;
   grdAssigned.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfmWorkFlowAddDocTemplateDialog.tvAvailableEndDrag(
  Sender, Target: TObject; X, Y: Integer);
begin
   qryDataFields.Refresh;
   qryAssignedFields.Refresh;
//   grdAvailable.FocusedView.DataController.Groups.FullExpand;
   grdAssigned.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfmWorkFlowAddDocTemplateDialog.cbMergedocumentClick(Sender: TObject);
begin
//   feDataFilePath.Enabled := cbMergedocument.Checked;
//   feDocumentName.Enabled := cbMergedocument.Checked;
end;

procedure TfmWorkFlowAddDocTemplateDialog.cmbTemplateTypePropertiesEditValueChanged(
  Sender: TObject);
begin
   feDataFilePath.Enabled := (cmbTemplateType.ItemIndex <> 5);
   btnDataFilePath.Enabled := (cmbTemplateType.ItemIndex <> 5);
end;

procedure TfmWorkFlowAddDocTemplateDialog.cxTabSheet2Show(Sender: TObject);
begin
//     grdAvailable.FocusedView.DataController.Groups.FullExpand;

end;


procedure TfmWorkFlowAddDocTemplateDialog.dbeDocNameEnter(Sender: TObject);
begin
  if dbeDocName.Text = '' then
    dbeDocName.Text := Copy(ExtractFileName(feTemplatePath.Text),1,length(ExtractFileName(feTemplatePath.Text))- length(ExtractFileExt(feTemplatePath.Text)));
end;

procedure TfmWorkFlowAddDocTemplateDialog.dbgReferredEnter(
  Sender: TObject);
begin
//   if (tvReferred.DataController.RowCount = 0) and (not dmWorkFlowDataModuleDocs.qPhoneGroupings.IsEmpty()) then
 //     tvReferred.DataController.Append;
end;

end.
