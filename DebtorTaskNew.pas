unit DebtorTaskNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxGroupBox, DB, MemDS,
  DBAccess, OracleUniProvider, Uni, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, cxLabel,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxImage, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxListView, ImgList, ComCtrls, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxCheckBox, cxPC, dxBar, Buttons, cxDBLabel, cxCurrencyEdit,
  cxLookAndFeels, cxPCdxBarPopupMenu;


type TListData = record
    bookMark: TBookMark;
    dueDate: TDateTime;
    sType: string;
    fileId: string;
    nMemo: integer;
    iTaskKey: integer;
  end;

type
  TfrmDebtorTasknew = class(TForm)
    cxGroupBox1: TcxGroupBox;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    lvActions: TcxListView;
    qryTemplate: TUniQuery;
    qryTemplateItem: TUniQuery;
    ilListImages: TImageList;
    dsTemplate: TUniDataSource;
    cxImportGroup: TcxGroupBox;
    dbcTemplate: TcxLookupComboBox;
    qryDebtorWorkflowTask: TUniQuery;
    dsDebtorWorkflowTaskI: TUniDataSource;
    cxLabel4: TcxLabel;
    dxBarManager1: TdxBarManager;
    dxBtnSave: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxBtnAdd: TdxBarButton;
    cxBtnSubtract: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxBarGroup2: TdxBarGroup;
    qryActions: TUniQuery;
    dsActions: TUniDataSource;
    pcData: TcxPageControl;
    tabData: TcxTabSheet;
    tabBlank: TcxTabSheet;
    cxLabel5: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxLabel7: TcxLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    btnActionOk: TBitBtn;
    btnActionCancel: TBitBtn;
    dxPopUpList: TdxBarPopupMenu;
    dxAddDate: TdxBarEdit;
    qryBill: TUniQuery;
    cxLabel1: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    lblBill: TcxLabel;
    dxUnProcess: TdxBarButton;
    procedure buildListFromTemplate(iTemplate: integer; bRefresh: boolean = False);
    procedure FormShow(Sender: TObject);
    procedure lvActionsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure dxBtnSaveClick(Sender: TObject);
    procedure cxBtnAddClick(Sender: TObject);
    procedure refreshList;
    procedure qryDebtorWorkflowTaskAfterInsert(DataSet: TDataSet);
    procedure qryDebtorWorkflowTaskAfterPost(DataSet: TDataSet);
    procedure qryDebtorWorkflowTaskNewRecord(DataSet: TDataSet);
    procedure btnActionOkClick(Sender: TObject);
    procedure btnActionCancelClick(Sender: TObject);
    procedure init(iNmemo: integer);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxBtnSubtractClick(Sender: TObject);
    procedure lvActionsExit(Sender: TObject);
    procedure dbcTemplatePropertiesChange(Sender: TObject);
    procedure dxPopUpListPopup(Sender: TObject);
    procedure dxAddDateExit(Sender: TObject);
    function getEmployee(sEmployeeType, sFileId: string): string;
    procedure lvActionsCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dxUnProcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    iNmemo: integer;
    FNTemplate: integer;
    bExternalTransaction: boolean;
    procedure getDefaultTemplate;
  public
    { Public declarations }
    property externalTransaction: boolean write bExternalTransaction;
    function getImageIndex(iAction : integer) : integer;
  end;

var
  frmDebtorTasknew: TfrmDebtorTasknew;

implementation

uses dateUtils, axiomData, miscFunc;

{$R *.dfm}


procedure TfrmDebtorTasknew.getDefaultTemplate;
var iTemplate, iClient, iNmatter: Integer;
  sMatterType: string;
begin
        // load the matter
   iNmatter := TableInteger('NMEMO', 'NMEMO', iNmemo, 'NMATTER');

         // get default for matter
   iTemplate := TableInteger('MATTER', 'NMATTER', iNMatter, 'NDEBTORTASKTEMPLATE');
         // get default for client
   if iTemplate = 0 then
   begin
      iClient := TableInteger('MATTER', 'NMATTER', iNMatter, 'NCLIENT');
      iTemplate := TableInteger('CLIENT', 'NCLIENT', iClient, 'NDEBTORTASKTEMPLATE');
   end;

   if iTemplate = 0 then
   begin
      sMatterType := TableString('MATTER', 'NMATTER', iNMatter, 'TYPE');
      iTemplate := TableInteger('MATTERTYPE', 'CODE', sMatterType, 'NDEBTORTASKTEMPLATE');
   end;

         // get the semplate from the system file
   if iTemplate = 0 then
   begin
      iTemplate := SystemInteger('NTEMPLATE');
   end;

   if iTemplate <> 0 then
   begin
 //    buildListFromTemplate(iTemplate);
            // this need to be a security feature
//      cxImportGroup.Enabled := dmAxiom.Security.CollectionsManagement.ChangeTemplate;
      dbcTemplate.EditValue := iTemplate;
   end;
    cxImportGroup.Enabled := dmAxiom.Security.CollectionsManagement.ChangeTemplate;
       // get default for matter Type
end;

procedure TfrmDebtorTasknew.init(iNmemo: integer);
var
   iTemplate: integer;
begin
   qryActions.Open;
   Self.iNmemo := iNmemo;
   qryDebtorWorkflowTask.Close;
   qryDebtorWorkflowTask.ParamByName('nmemo').AsInteger := iNmemo;
   qryDebtorWorkflowTask.open;
   FNTemplate := qryDebtorWorkflowTask.FieldByName('ntemplate').AsInteger;
   qryDebtorWorkflowTask.first;
   lblBill.caption := TableString('NMEMO','NMEMO', intToStr(iNmemo),'REFNO');

   if (qryDebtorWorkflowTask.Eof) and (bExternalTransaction) then
   begin
      cxImportGroup.Enabled := true;
      qryDebtorWorkflowTask.insert;
      getDefaultTemplate;
   end
   else
   begin
      dbcTemplate.EditValue := qryDebtorWorkflowTask.FieldByName('NTEMPLATE').AsString;
      dxBtnSave.Enabled := true;
      refreshList;
   end;
   cxBtnAdd.Enabled := dmAxiom.Security.CollectionsManagement.CreateTask;
end;

function TfrmDebtorTasknew.getEmployee(sEmployeeType, sFileId: string): string;
begin
   if sEmployeeType = 'MA-AUTH' then
      getEmployee := matterString(sFileId, 'AUTHOR')
   else if sEmployeeType = 'MA-PART' then
      getEmployee := matterString(sFileId, 'PARTNER')
   else if sEmployeeType = 'MA-CONT' then
      getEmployee := matterString(sFileId, 'CONTROLLER')
   else if sEmployeeType = 'MA-OPER' then
      getEmployee := matterString(sFileId, 'OPERATOR')
   else getEmployee := sEmployeeType;
end;

procedure TfrmDebtorTasknew.buildListFromTemplate(iTemplate: integer; bRefresh: boolean);
var
   dueDate: TDateTime;
begin
// clear the items
   if bRefresh then
   begin
      with dmAxiom.qryTmp do
      begin
         SQL.Text := 'delete from debtorworkflowtask where nmemo = :nmemo';
         ParamByName('nmemo').AsInteger := iNmemo;
//         ParamByName('ntemplate').AsInteger := iTemplate;
         ExecSQL;
      end;
      lvActions.Clear;
   end;

   qryTemplate.close;
//   qryTemplate.ParamByName('ntemplate').AsInteger := iTemplate;
   qryTemplate.open;

   qryTemplateItem.close;
   qryTemplateItem.ParamByName('ntemplate').AsInteger := iTemplate;
   qryTemplateItem.open;

   qryDebtorWorkflowTask.Close;
   qryDebtorWorkflowTask.ParamByName('nmemo').AsInteger := iNmemo;
   qryDebtorWorkflowTask.ParamByName('ntemplate').AsInteger := iTemplate;
   qryDebtorWorkflowTask.Open;
   if qryDebtorWorkflowTask.IsEmpty then
   begin
      qryBill.Close;
      qryBill.ParamByName('nmemo').AsInteger := iNmemo;
      qryBill.open;

      dxBtnSave.Enabled := true;

      qryTemplateItem.First;
      while not qryTemplateItem.Eof do
      begin
         if qryTemplateItem.FieldByName('UseDispatchDate').AsString = 'Y' then
            dueDate := qryBill.FieldByName('dispatched').AsDateTime
         else
            dueDate := qryBill.FieldByName('exppayment').AsDateTime;

         if qryTemplateItem.FieldByName('elapse_mode').AsString = 'Days' then
            dueDate := IncDay(dueDate, qryTemplateItem.fieldByname('ELAPSE_DAYS').AsInteger)
         else
            dueDate := IncMonth(dueDate, qryTemplateItem.fieldByname('ELAPSE_MONTHS').AsInteger);

         qryDebtorWorkflowTask.Insert;
         // get alert to and assign To
         qryDebtorWorkflowTask.fieldByname('ASSIGNED_TO').AsString := getEmployee(qryTemplateItem.fieldByname('ASSIGN_TO_TYPE').AsString, qryBill.fieldByname('fileId').AsString);
         qryDebtorWorkflowTask.fieldByname('ALERT_TO').AsString := getEmployee(qryTemplateItem.fieldByname('ALERT_TO_TYPE').AsString, qryBill.fieldByname('fileId').AsString);
         qryDebtorWorkflowTask.fieldByname('ALERT_TO_ADD').AsString := getEmployee(qryTemplateItem.fieldByname('ALERT_TO_TYPE_ADD').AsString, qryBill.fieldByname('fileId').AsString);

         qryDebtorWorkflowTask.fieldByname('NACTION').AsInteger := qryTemplateItem.fieldByname('NACTION').AsInteger;
         qryDebtorWorkflowTask.fieldByname('MIN_BALANCE').AsCurrency := qryTemplateItem.fieldByname('MIN_BALANCE').AsCurrency;
         qryDebtorWorkflowTask.fieldByname('DESCR').AsString := qryTemplateItem.fieldByname('DESCR').AsString;
         qryDebtorWorkflowTask.fieldByname('ACTION_DATE').AsDateTime := dueDate;
         qryDebtorWorkflowTask.fieldByname('CONFIRMATION_REQUIRED').AsString := qryTemplateItem.fieldByname('CONFIRMATION_REQUIRED').AsString;
         qryDebtorWorkflowTask.fieldByname('NTEMPLATE').AsInteger := qryTemplateItem.fieldByname('NTEMPLATE').AsInteger;
         qryDebtorWorkflowTask.Post;
         qryTemplateItem.Next;
      end;
      qryTemplate.Close;
//      qryTemplate.ParamByName('ntemplate').Clear;
      qryTemplate.open;
   end;                                                                                
   refreshList;
end;

function TfrmDebtorTasknew.getImageIndex(iAction : integer) : integer;
begin
   qryActions.locate('NACTION',iAction,[]);
   if qryActions.FieldByName('TYPE').AsString = 'Email' then
      getImageIndex := 6
   else if qryActions.FieldByName('TYPE').AsString = 'SMS' then
      getImageIndex := 9
   else if qryActions.FieldByName('TYPE').AsString = 'Statement' then
      getImageIndex := 8
   else
      getImageIndex := 7;
end;

procedure TfrmDebtorTasknew.refreshList;
var
   iLoop: integer;
   lNode: TListItem;
   dueDate: TDateTime;
   dData: ^TListData;
begin
   cxBtnSubtract.Enabled := false;
   pcData.ActivePage := tabBlank;

   for iLoop := 0 to lvActions.Items.Count - 1 do
   begin
      lNode := lvActions.Items[iLoop];
      if lNode.Data = nil then
        continue;
      dData := lNode.Data;
      if qryDebtorWorkflowTask.BookmarkValid(dData^.bookMark) then
         qryDebtorWorkflowTask.FreeBookmark(dData^.bookMark);
      Dispose(dData);
      lNode.Data := nil;
   end;

   lvActions.Items.Clear;

   qryDebtorWorkflowTask.First;

   while not qryDebtorWorkflowTask.Eof do
   begin
      dueDate := qryDebtorWorkflowTask.fieldByname('ACTION_DATE').AsDateTime;
      lNode := lvActions.Items.Add;
      lNode.StateIndex := -1;

      lNode.ImageIndex := getImageIndex(qryDebtorWorkflowTask.FieldByName('NACTION').AsInteger);
      lNode.Caption := qryDebtorWorkflowTask.fieldByname('DESCR').AsString;
      lNode.SubItems.Add(FormatDateTime('dd/mm/yyyy', dueDate));
      lNode.SubItemImages[0] := 0;
      lNode.SubItems.Add('');

      if qryDebtorWorkflowTask.fieldByname('CONFIRMATION_REQUIRED').AsString = 'Y' then
         lNode.SubItemImages[1] := 1
      else
         lNode.SubItemImages[1] := 2;

      lNode.SubItems.Add(qryDebtorWorkflowTask.fieldByname('ASSIGNED_TO').AsString);
      lNode.SubItemImages[2] := 5;

      lNode.SubItems.Add(qryDebtorWorkflowTask.fieldByname('ALERT_TO').AsString);
      lNode.SubItemImages[3] := 5;

      lNode.SubItems.Add(qryDebtorWorkflowTask.fieldByname('ALERT_TO_ADD').AsString);
      lNode.SubItemImages[4] := 5;

      lNode.SubItems.Add(qryDebtorWorkflowTask.fieldByname('MIN_BALANCE').AsString);
      lNode.SubItemImages[5] := 4;

      new(ddata);
      ddata.bookMark := qryDebtorWorkflowTask.GetBookmark;
      ddata.dueDate := qryDebtorWorkflowTask.fieldByname('ACTION_DATE').AsDateTime;
      ddata.iTaskKey := qryDebtorWorkflowTask.fieldByname('NDEBTORTASK').AsInteger;

      lNode.SubItems.Add('');
      if qryDebtorWorkflowTask.fieldByname('PROCESSED_DATE').IsNull then
      begin
         lNode.SubItemImages[6] := 2;
         lNode.SubItems.Add('');
      end
      else
      begin
         lNode.SubItemImages[6] := 1;
         lNode.SubItems.Add(FormatDateTime('dd/mm/yyyy', qryDebtorWorkflowTask.fieldByname('PROCESSED_DATE').AsDateTime));
         lNode.SubItemImages[7] := 0;
      end;

      lNode.SubItems.Add('');
      if qryDebtorWorkflowTask.fieldByname('CONFIRMED_DATE').IsNull then
      begin
         lNode.SubItemImages[8] := 2;
         lNode.SubItems.Add('');
      end
      else
      begin
         lNode.SubItemImages[8] := 1;
         lNode.SubItems.Add(FormatDateTime('dd/mm/yyyy', qryDebtorWorkflowTask.fieldByname('CONFIRMED_DATE').AsDateTime));
         lNode.SubItemImages[9] := 0;
      end;

      lNode.Data := ddata;
      qryDebtorWorkflowTask.Next;
   end;
end;

procedure TfrmDebtorTasknew.FormShow(Sender: TObject);
begin
   qryEmployee.open;
   qryTemplate.Close;
   qryTemplate.open;
   qryActions.open;
   pcData.ActivePage := tabBlank;
end;

procedure TfrmDebtorTasknew.lvActionsSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
var dData: ^TListData;
begin
   cxBtnSubtract.Enabled := dmAxiom.Security.CollectionsManagement.EditTask;
   qryDebtorWorkflowTask.cancel;
   btnActionOk.Enabled := false;
   btnActionCancel.Enabled := false;

   dData := Item.data;

   if dData <> nil then
      qryDebtorWorkflowTask.GotoBookmark(dData^.bookmark);

   qryDebtorWorkflowTask.readOnly := not qryDebtorWorkflowTask.FieldByName('CONFIRMED_DATE').IsNull or not dmAxiom.Security.CollectionsManagement.EditTask;

   pcData.ActivePage := tabData;
end;

procedure TfrmDebtorTasknew.dxBtnSaveClick(Sender: TObject);
begin
   self.Close;

{  try
    if not bExternalTransaction then
      dmAxiom.uniInsight.StartTransaction;
    qryDebtorWorkflowTask.readOnly := false;

    qryDebtorWorkflowTask.ApplyUpdates;

    if not bExternalTransaction then
      dmAxiom.uniInsight.Commit;

    self.Close;

    ModalResult := mrOk;

  except on e: Exception do
    begin
      if not bExternalTransaction then
        dmAxiom.uniInsight.Rollback;
      raise;
    end;
  end;                           }
end;

procedure TfrmDebtorTasknew.cxBtnAddClick(Sender: TObject);
begin
  qryDebtorWorkflowTask.readOnly := false;
  qryDebtorWorkflowTask.Insert;
  qryDebtorWorkflowTask.FieldByName('ntemplate').AsInteger := dbcTemplate.EditValue;
  pcData.ActivePage := tabData;
end;

procedure TfrmDebtorTasknew.qryDebtorWorkflowTaskAfterInsert(
  DataSet: TDataSet);
begin
  btnActionOk.Enabled := true;
  btnActionCancel.Enabled := true;
end;

procedure TfrmDebtorTasknew.qryDebtorWorkflowTaskAfterPost(
  DataSet: TDataSet);
begin
  btnActionOk.Enabled := false;
  btnActionCancel.Enabled := false;
end;

procedure TfrmDebtorTasknew.qryDebtorWorkflowTaskNewRecord(
  DataSet: TDataSet);
begin
  qryDebtorWorkflowTask.fieldByName('CONFIRMATION_REQUIRED').AsString := 'N';
  qryDebtorWorkflowTask.fieldByName('NMEMO').AsInteger := iNmemo;
end;

procedure TfrmDebtorTasknew.btnActionOkClick(Sender: TObject);
begin
   qryDebtorWorkflowTask.Post;
   dxBtnSave.Enabled := true;
   refreshList;
end;

procedure TfrmDebtorTasknew.btnActionCancelClick(Sender: TObject);
begin
   qryDebtorWorkflowTask.Cancel;
end;

procedure TfrmDebtorTasknew.dxBarButton2Click(Sender: TObject);
begin
  if (qryDebtorWorkflowTask.UpdatesPending) then
  begin
    if MsgAsk('There is saved data, are you sure you want to quit') <> mrYes then
      exit;
  end;
  ModalResult := mrCancel;
  self.close;
end;

procedure TfrmDebtorTasknew.cxBtnSubtractClick(Sender: TObject);
var iNode: TListItem;
begin
   iNode := lvActions.Selected;
   if iNode = nil then
      exit;

   if iNode.data = nil then
      exit;

   qryDebtorWorkflowTask.GotoBookmark(iNode.data);
   if not qryDebtorWorkflowTask.FieldByName('PROCESSED_DATE').IsNull then
      exit;

   qryDebtorWorkflowTask.Delete;
   refreshList;
end;

procedure TfrmDebtorTasknew.lvActionsExit(Sender: TObject);
begin
   cxBtnSubtract.Enabled := false;
end;

procedure TfrmDebtorTasknew.dbcTemplatePropertiesChange(Sender: TObject);
begin
   if ((dbcTemplate.EditValue <> 0) and
      (FNTemplate <> dbcTemplate.EditValue)) then
   begin
      FNTemplate := dbcTemplate.EditValue;
      buildListFromTemplate(dbcTemplate.EditValue, True);
   end;
end;

procedure TfrmDebtorTasknew.dxPopUpListPopup(Sender: TObject);
var liSelected: TListItem;
  dData: ^TListData;
begin
   dxPopUpList.ItemLinks.Clear;

   liSelected := lvActions.Selected;
   if liSelected = nil then
     exit;
   dData := liSelected.Data;
   qryDebtorWorkflowTask.GotoBookmark(dData^.bookMark);

   if (lvActions.Selected = nil) or (not dmAxiom.Security.CollectionsManagement.EditTask) then
         exit;
   dxPopUpList.ItemLinks.add().item := dxAddDate;

   if not qryDebtorWorkflowTask.FieldByName('CONFIRMED_DATE').IsNull then
     dxPopUpList.ItemLinks.add().item := dxUnProcess;
end;

procedure TfrmDebtorTasknew.dxAddDateExit(Sender: TObject);
var sValue: string;
  iValue, iLoop, iIndex: integer;
  nListItem: TListItem;
  dNewDate: TDateTime;
  dData: ^TListData;
begin
   nListItem := lvActions.Selected;
   if nListItem = nil then
      exit;

   iIndex := nListItem.Index;

   sValue := dxAddDate.Text;
   try
      iValue := strToInt(sValue);
   except
      on e: Exception do
         exit;
   end;

   for iLoop := iIndex to lvActions.Items.Count - 1 do
   begin
      nListItem := lvActions.Items[iloop];
      dData := nListItem.data;
      qryDebtorWorkflowTask.GotoBookmark(dData^.bookMark);
      if not qryDebtorWorkflowTask.FieldByName('processed_date').isNull then
         continue;

      dNewDate := qryDebtorWorkflowTask.FieldByName('action_date').AsDateTime;
      dNewDate := IncDay(dNewDate, iValue);
      qryDebtorWorkflowTask.edit;
      qryDebtorWorkflowTask.FieldByName('action_date').AsDateTime := dNewDate;
      qryDebtorWorkflowTask.post;
   end;
   refreshList;
end;

procedure TfrmDebtorTasknew.lvActionsCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var dData1, dData2: ^TListData;
begin
   if (Item1.data = nil) or (Item2.data = nil) then
   begin
      Compare := 0;
      exit;
   end;
   dData1 := Item1.data;
   dData2 := Item2.data;
   compare := CompareDateTime(dData1^.dueDate, dData2^.dueDate);
end;

procedure TfrmDebtorTasknew.FormCreate(Sender: TObject);
begin
   bExternalTransaction := false;
end;

procedure TfrmDebtorTasknew.dxUnProcessClick(Sender: TObject);
var
   liSelected: TListItem;
   dData: ^TListData;
begin
   liSelected := lvActions.Selected;
   if liSelected = nil then
      exit;
   dData := liSelected.Data;
   qryDebtorWorkflowTask.GotoBookmark(dData^.bookMark);
   qryDebtorWorkflowTask.ReadOnly := false;
   qryDebtorWorkflowTask.Edit;
   qryDebtorWorkflowTask.FieldByName('CONFIRMED_DATE').AsVariant := null;
   qryDebtorWorkflowTask.Post;
   refreshList;
end;

procedure TfrmDebtorTasknew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   try
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      if not bExternalTransaction then
         dmAxiom.uniInsight.StartTransaction;
      qryDebtorWorkflowTask.readOnly := false;

      qryDebtorWorkflowTask.ApplyUpdates;

      if not bExternalTransaction then
         dmAxiom.uniInsight.Commit;

      qryEmployee.Close;
      qryTemplate.Close;
      qryActions.Close;

      Action := caFree;

      ModalResult := mrOk;
   except on e: Exception do
      begin
         if not bExternalTransaction then
            dmAxiom.uniInsight.Rollback;
         Action := caNone;
         raise;
      end;
   end;
end;

end.

