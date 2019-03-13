unit ScaleCostNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Mask, Db, OracleUniProvider, Uni, DBAccess, MemDS,
  Buttons, cxMemo, cxDBEdit, cxCurrencyEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxLookAndFeelPainters, cxButtons, cxGroupBox, cxLabel, cxCheckBox, cxPC,
  cxGraphics, cxLookAndFeels, Menus, cxPCdxBarPopupMenu, Variants, dxSkinsCore,
  dxBarBuiltInMenu, cxSpinEdit, cxButtonEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutControlAdapters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxGrid;

type
  TfrmScaleCostNew = class(TForm)
    qryScaleCost: TUniQuery;
    dsScaleCosts: TUniDataSource;
    Label8: TLabel;
    Label2: TLabel;
    dbtbCode: TcxDBTextEdit;
    cbType: TcxDBLookupComboBox;
    dbmmoFeeDesc: TcxDBMemo;
    dbmmoNotes: TcxDBMemo;
    qryMatterType: TUniQuery;
    dsMatterType: TUniDataSource;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    cmbBillType: TcxDBComboBox;
    pageSelections: TcxPageControl;
    tsTimeCost: TcxTabSheet;
    tsItemCost: TcxTabSheet;
    Label39: TLabel;
    dbtbAmount: TcxDBCurrencyEdit;
    Label4: TLabel;
    dbtbRate: TcxDBCurrencyEdit;
    dbtbDefaultUnits: TcxDBTextEdit;
    Label9: TLabel;
    cbZeroFee: TcxDBCheckBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cbActive: TcxDBCheckBox;
    cbAutoTimer: TcxDBCheckBox;
    Label6: TLabel;
    dbtbUTBMSCode: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cmbEmployee: TcxDBLookupComboBox;
    qryDisplayNames: TUniQuery;
    dsDisplayNames: TUniDataSource;
    tsEstimate: TcxTabSheet;
    cxLabel5: TcxLabel;
    currEditBudgetLow: TcxDBCurrencyEdit;
    cxLabel6: TcxLabel;
    currEditBudgetHigh: TcxDBCurrencyEdit;
    cmbParent: TcxDBLookupComboBox;
    tblScaleCostList: TUniTable;
    dslScaleCostList: TUniDataSource;
    spinDays: TcxDBSpinEdit;
    cxLabel9: TcxLabel;
    teTimeEstimateMin: TcxDBTextEdit;
    tsDocument: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dbgDocs: TcxGrid;
    tvDocs: TcxGridTableView;
    tvDocsDOCUMENTNAME: TcxGridColumn;
    tvDocsID: TcxGridColumn;
    dbgDocsLevel1: TcxGridLevel;
    bnAddDoc: TButton;
    bnDeleteDoc: TButton;
    tbScalecostDocLink: TUniTable;
    dsScalecostDocLink: TDataSource;
    tbScalecostDocLinkROWID: TStringField;
    tbScalecostDocLinkDOCID: TFloatField;
    tbScalecostDocLinkNSCALECOST: TFloatField;
    cxLabel1: TcxLabel;
    teTimeEstimateMax: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    currEstimatedHourlyCost: TcxDBCurrencyEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    dxLayoutItem16: TdxLayoutItem;
    cbProjectTask: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbTypeChange(Sender: TObject);
    procedure cbTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryScaleCostAfterScroll(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure qryScaleCostBeforePost(DataSet: TDataSet);
    procedure qryScaleCostAfterInsert(DataSet: TDataSet);
    procedure currEditBudgetLowExit(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesInitPopup(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bnAddDocClick(Sender: TObject);
    procedure bnDeleteDocClick(Sender: TObject);
    procedure qryScaleCostNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cbProjectTaskClick(Sender: TObject);
    procedure cbProjectTaskPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshDocList();
  public
    { Public declarations }
    procedure DisplayScaleCost(sCode : string);
    procedure InsertScaleCost;
  end;

implementation


uses
  AxiomData, MiscFunc, ScaleCosts, PrecedentSearchList, WorkFlowDocTemplates,
  WorkFlowDataModuleTasks, WorkFlowDataModule;

{$R *.DFM}


procedure TfrmScaleCostNew.DisplayScaleCost(sCode : string);
begin
  qryScaleCost.ParamByName('Code').AsString := sCode;
  qryScaleCost.Open;
  if qryScaleCost.IsEmpty then
    Self.Close
  else
  begin
    Self.Show;
    RefreshDocList;
  end;
end;

procedure TfrmScaleCostNew.InsertScaleCost;
begin
  qryScaleCost.ParamByName('Code').AsString := 'zzz';
  qryScaleCost.Open;
  qryScaleCost.Insert;
  Self.Show;
end;

procedure TfrmScaleCostNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryScaleCost.Close;
  qryDisplayNames.Close;
  tblScaleCostList.Close;
  tbScalecostDocLink.Close;
  Action := caFree;
end;

procedure TfrmScaleCostNew.FormCreate(Sender: TObject);
begin
//  StringPopulate(cbType.Items, 'MATTERTYPE', 'CODE');
   if (not assigned(dmWorkFlowDataModule)) then
      dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);

   if (not assigned(dmWorkFlowDataModuleTasks)) then
      dmWorkFlowDataModuleTasks := TdmWorkFlowDataModuleTasks.Create(Application);

   qryMatterType.Open;
   qryDisplayNames.ParamByName('ENTITY').AsString := dmAxiom.Entity;
   qryDisplayNames.Open;
   tblScaleCostList.Open;
   tbScalecostDocLink.Open;
   cmbBillType.EditValue := 'Billable';
end;

procedure TfrmScaleCostNew.FormShow(Sender: TObject);
begin

//   RefreshDocList;
end;

procedure TfrmScaleCostNew.cbProjectTaskClick(Sender: TObject);
var
   AChecked: boolean;
begin
   AChecked := cbProjectTask.Checked;
   tsTimeCost.Enabled := (not AChecked);
   tsItemCost.Enabled := (not AChecked);
   tsEstimate.Enabled := AChecked;
end;

procedure TfrmScaleCostNew.cbProjectTaskPropertiesEditValueChanged(
  Sender: TObject);
var
   AChecked: boolean;
begin
   AChecked := cbProjectTask.Checked;
   tsTimeCost.Enabled := (not AChecked);
   tsItemCost.Enabled := (not AChecked);
   tsEstimate.Enabled := AChecked;
end;

procedure TfrmScaleCostNew.cbTypeChange(Sender: TObject);
begin
  if cbType.Text <> qryScaleCost.FieldByName('TYPE').AsString then
  begin
    if qryScaleCost.Modified = False then
      qryScaleCost.Edit;
//    if cbType.ItemIndex = -1 then
//      qryScaleCost.FieldByName('TYPE').Clear
//    else
//      qryScaleCost.FieldByName('TYPE').AsString := cbType.Text;
  end;
end;

procedure TfrmScaleCostNew.cbTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
    cbType.ItemIndex := -1;
end;

procedure TfrmScaleCostNew.currEditBudgetLowExit(Sender: TObject);
begin
   if currEditBudgetHigh.Value = 0 then
      currEditBudgetHigh.Value := currEditBudgetLow.Value;
end;

procedure TfrmScaleCostNew.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   fmPrecedentSearch: TfrmPrecedentSearch;
begin
{   try
      fmPrecedentSearch := TfrmPrecedentSearch.Create(Self);
      with fmPrecedentSearch do
      begin
         dmAxiom.qryPrecedentList.Open;
         ShowModal;
         if qryScaleCost.State = dsBrowse then qryScaleCost.Edit;

         btnedPrecedentName.Text := tvPrecedentListFILENAME.EditValue;
         qryScaleCost.FieldByName('prec_id').AsInteger := tvPrecedentListDOCID.EditValue;
      end;
   finally
      FreeAndNil(fmPrecedentSearch);
   end;    }
end;

procedure TfrmScaleCostNew.cxDBLookupComboBox2PropertiesInitPopup(
  Sender: TObject);
begin
   tblScaleCostList.Filtered := False;
   tblScaleCostList.Filter := 'code <> '+quotedstr(qryScaleCost.FieldByName('code').AsString);
   tblScaleCostList.Filtered := True;
end;

procedure TfrmScaleCostNew.qryScaleCostAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('UNIT').AsString := 'Item';
end;

procedure TfrmScaleCostNew.qryScaleCostAfterScroll(DataSet: TDataSet);
begin
//  if qryScaleCost.FieldByName('TYPE').AsString <> '' then
//    cbType.ItemIndex := cbType.Items.IndexOf(qryScaleCost.FieldByName('TYPE').AsString);
{   if (qryScaleCost.FieldByName('PREC_ID').IsNull = False) then
      btnedPrecedentName.Text := TableString('WORKFLOWDOCTEMPLATES','DOCID', qryScaleCost.FieldByName('PREC_ID').AsInteger, 'DOCUMENTNAME');  }
end;

procedure TfrmScaleCostNew.btnOKClick(Sender: TObject);
var
  iCtr: integer;
  bFormUpdated: boolean;
begin
  if qryScaleCost.Modified then
  begin
    qryScaleCost.Post;
//    qryScaleCost.ApplyUpdates;
    iCtr := 0;
    bFormUpdated := False;
    while (iCtr < Screen.FormCount) and not bFormUpdated do
    begin
      if Screen.Forms[iCtr].ClassName = 'TfrmScaleCosts' then
      begin
        (Screen.Forms[iCtr] as TfrmScaleCosts).MakeSQL;
        bFormUpdated := True;
      end;
      iCtr := iCtr + 1;
    end;
  end;
  Self.Close;
end;

procedure TfrmScaleCostNew.bnAddDocClick(Sender: TObject);
var
  LDocs: TfmWorkFlowDocTemplates;
  LID: TStringList;
  i: Integer;
begin
   LDocs := TfmWorkFlowDocTemplates.Create(Self);
   try
      LDocs.BorderStyle := bsDialog;
//      LDocs.LimitTo := FWorkflowType;
      if(LDocs.ShowModal <> mrOk) then
         Exit;
      LID := TStringList.Create();
      try
         LDocs.GetDocIDs(LID);
         tbScalecostDocLink.Open;
         for i := 0 to LID.Count - 1 do
         begin
            tbScalecostDocLink.Append();
            tbScalecostDocLink.FieldByName('NSCALECOST').AsInteger := qryScaleCost.FieldByName('NSCALECOST').AsInteger;
            tbScalecostDocLink.FieldByName('DOCID').AsString := LID[i];
//            tbScalecostDocLink.Post();
            tbScalecostDocLink.ApplyUpdates();
         end;
         RefreshDocList();
      finally
         FreeAndNil(LID);
      end;
   finally
      FreeAndNil(LDocs);
   end;
end;

procedure TfrmScaleCostNew.bnDeleteDocClick(Sender: TObject);
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

procedure TfrmScaleCostNew.btnCancelClick(Sender: TObject);
begin
  if qryScaleCost.UpdatesPending then
    qryScaleCost.CancelUpdates;
  Self.Close;
end;

procedure TfrmScaleCostNew.qryScaleCostBeforePost(DataSet: TDataSet);
begin
   if dbtbRate.EditValue > 0 then
   begin
//      qryScaleCost.FieldByName('Unit').AsString := 'Item';
      qryScaleCost.FieldByName('Amount').AsCurrency := 0;
   end
   else
   begin
      qryScaleCost.FieldByName('Unit').AsString := qryScaleCost.FieldByName('item_unit').AsString;
      qryScaleCost.FieldByName('Rate').AsCurrency := 0;
   end;
end;

procedure TfrmScaleCostNew.qryScaleCostNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('NSCALECOST').AsInteger := GetSequenceNumber('SQNC_SCALECOST');
end;

procedure TfrmScaleCostNew.RefreshDocList;

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
    with tbScalecostDocLink do
    begin
      Close;
      FilterSQL := ' nscalecost = ' + qryScaleCost.FieldByName('NSCALECOST').AsString;
      Open;
      First();
      while (not EOF) do
      begin
         LSL.Add(FieldByName('DOCID').AsString);
         tbScalecostDocLink.Next();
      end;
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
    tbScalecostDocLink.Close;
  end;
end;


end.

