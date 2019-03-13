unit DataForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxBarBuiltInMenu, Vcl.StdCtrls,
  cxCustomListBox, cxListBox, Vcl.Buttons, cxPC, Uni, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppBands, ppClass, ppCtrls, ppPrnabl, ppVar,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, dxBarDBNav, dxBar, cxClasses,
  Data.DB, MemDS, DBAccess, Vcl.ImgList, cxButtonEdit, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.DBCtrls, Vcl.Mask, cxCheckBox;

type
  TfrmDataForm = class(TForm)
    dsSource: TUniDataSource;
    ilstToolbar: TImageList;
    qrySource: TUniQuery;
    bmMain: TdxBarManager;
    bmMainBar1: TdxBar;
    bmMainBar2: TdxBar;
    mnuFileDelete: TdxBarButton;
    mnuFilePrint: TdxBarButton;
    mnuFileExit: TdxBarButton;
    dxBarButton1: TdxBarButton;
    mnuSearchFirst: TdxBarButton;
    mnuSearchPrior: TdxBarButton;
    mnuSearchNext: TdxBarButton;
    mnuSearchLast: TdxBarButton;
    mnuHelpHelp: TdxBarButton;
    mnuFile: TdxBarSubItem;
    mnuSearch: TdxBarSubItem;
    mnuHelp: TdxBarSubItem;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev3: TdxBarDBNavButton;
    dxBarDBNavNext3: TdxBarDBNavButton;
    dxBarDBNavLast3: TdxBarDBNavButton;
    dxBarDBNavInsert4: TdxBarDBNavButton;
    dxBarDBNavDelete3: TdxBarDBNavButton;
    dxBarDBNavPost3: TdxBarDBNavButton;
    dxBarDBNavCancel3: TdxBarDBNavButton;
    dxBarDBNavigator1: TdxBarDBNavigator;
    rpMaintReport: TppReport;
    ppMaintHeaderBand: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    pplblEntity: TppLabel;
    ppLine1: TppLine;
    pplblTitle: TppLabel;
    ppMaintDetailBand: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppMaintSummaryBand: TppSummaryBand;
    ppLine2: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    plSource: TppDBPipeline;
    plSourceppField1: TppField;
    plSourceppField2: TppField;
    plSourceppField3: TppField;
    plSourceppField4: TppField;
    plSourceppField5: TppField;
    plSourceppField6: TppField;
    plSourceppField7: TppField;
    plSourceppField8: TppField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbedCaption: TDBEdit;
    dbedDescr: TDBEdit;
    dblPartyType: TDBLookupComboBox;
    dblWorkflowType: TDBLookupComboBox;
    dbedCode: TcxDBButtonEdit;
    qryDataFormFields: TUniQuery;
    qParties: TUniQuery;
    dsParties: TDataSource;
    qWorkflowTypes: TUniQuery;
    dsWorkflowTypes: TDataSource;
    dsDataForm: TUniDataSource;
    tblDataForm: TUniTable;
    qryDataFields: TUniQuery;
    OraQuery1: TUniQuery;
    OraDataSource1: TUniDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    GroupBox2: TGroupBox;
    btnUp: TBitBtn;
    btnDown: TBitBtn;
    btnLaunchAll: TBitBtn;
    btnLaunchSelect: TBitBtn;
    btnRemove: TBitBtn;
    btnLaunchNone: TBitBtn;
    lbDataFields: TcxListBox;
    lbDataFormFields: TcxListBox;
    gbFields: TGroupBox;
    lbDataformWorkflows: TListBox;
    lbWorkflowAvailable: TListBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    chkApplyAllMatters: TcxDBCheckBox;
    ckMatterSpecific: TcxDBCheckBox;
    procedure qrySourceAfterPost(DataSet: TDataSet);
    procedure qrySourceBeforeScroll(DataSet: TDataSet);
    procedure tbtnNewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure btnCodeSearchClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbedDescrEnter(Sender: TObject);
    procedure btnAddFieldClick(Sender: TObject);
    procedure cbDataFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnRemoveFieldClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure dblWorkflowTypeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbedCodeKeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btnLaunchAllClick(Sender: TObject);
    procedure btnLaunchSelectClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnLaunchNoneClick(Sender: TObject);
    procedure dblPartyTypeCloseUp(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure qrySourceNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure mnuFileExitClick(Sender: TObject);
    procedure mnuFilePrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure dbedCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
        FFieldNames: TStringList; // Names of Fields in the same order as the lbDataFormFields captions
    FLaunchChanged: Boolean;
    procedure SaveDataFormFields;
    procedure SaveDataFormWorkflow;
    procedure PopulateListBoxes(DataSet: TDataSet);

  public
    { Public declarations }
  end;

var
  frmDataForm: TfrmDataForm;

implementation

uses
  GenericSearch, MiscFunc,  WorkFlowFieldTranslate, AxiomData;

{$R *.DFM}

procedure TfrmDataForm.qrySourceAfterPost(DataSet: TDataSet);
begin
   if lbDataFormFields.Tag = 1 then
      SaveDataFormFields;
   SaveDataFormWorkflow;
end;

procedure TfrmDataForm.SaveDataFormFields;
var
  iCtr: integer;
begin
   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      with qryDataFormFields do
      begin
         Close;
         SQL.Text := 'DELETE FROM DATAFORMFIELD WHERE DATAFORM = ' + QuotedStr(qrySource.FieldByName('CODE').AsString);
         ExecSQL;
         SQL.Text := 'INSERT INTO DATAFORMFIELD (DATAFORM, FIELDNAME, SEQ, MANDATORY) VALUES (:DATAFORM, :FIELDNAME, :SEQ, ''N'')';
         for iCtr := 0 to lbDataFormFields.Count - 1 do
         begin
            ParamByName('DATAFORM').AsString := qrySource.FieldByName('CODE').AsString;
            ParamByName('FIELDNAME').AsString := lbDataFormFields.Items.Strings[iCtr];
            ParamByName('SEQ').AsInteger := iCtr;
            ExecSQL;
         end;
      end;
      lbDataFormFields.Tag := 0;
      dmAxiom.uniInsight.Commit;
   except
      dmAxiom.uniInsight.Rollback;
   end;
end;

procedure TfrmDataForm.qrySourceAfterScroll(DataSet: TDataSet);
begin
   PopulateListBoxes(DataSet)
end;

procedure TfrmDataForm.PopulateListBoxes(DataSet: TDataSet);
begin
   // Load the Fields
   if (Dataset.State <> dsInsert) then
   begin
      lbDataFormFields.Clear;
      FFieldNames.Clear;
      with qryDataFormFields do
      begin
         Close;
         SQL.Text := 'SELECT DATAFORMFIELD.FIELDNAME FROM DATAFORMFIELD, FIELDTYPE WHERE DATAFORMFIELD.DATAFORM = ' + QuotedStr(qrySource.FieldByName('CODE').AsString) + ' AND DATAFORMFIELD.FIELDNAME = FIELDTYPE.NAME ORDER BY SEQ';
         Open;
         while not EOF do
         begin
            lbDataFormFields.Items.Add(FieldByName('FIELDNAME').AsString);
            Next;
         end;
      end;

      lbDataFields.Clear;
      with qryDataFields do
      begin
         Close;
         SQL.Text := 'SELECT FT.NAME, FT.DESCR FROM FIELDTYPE FT WHERE '+
                   ' NOT EXISTS (SELECT 1 FROM DATAFORMFIELD DF WHERE DF.FIELDNAME = FT.NAME  '+
                   ' AND DF.DATAFORM = ' + QuotedStr(qrySource.FieldByName('CODE').AsString) +' )'+
                   ' order by 1 ';
         Open;
         while not EOF do
         begin
            lbDataFields.Items.Add(FieldByName('NAME').AsString);
            Next;
         end;
      end;
      ckMatterSpecific.Enabled := (dblPartyType.Text <> '');

      // Load the workflows
      lbDataformWorkflows.Clear;
      FFieldNames.Clear;
      with qryDataFormFields do
      begin
         Close;
         SQL.Text := 'SELECT WORKFLOWTYPECODE FROM dataform_workflow '+
                   'WHERE dataform_workflow.DATAFORM = ' + QuotedStr(qrySource.FieldByName('CODE').AsString) + ' ORDER BY WORKFLOWTYPECODE';
         Open;
         while not EOF do
         begin
            lbDataformWorkflows.Items.Add(FieldByName('WORKFLOWTYPECODE').AsString);
            Next;
         end;
      end;

      lbWorkflowAvailable.Clear;
      with qryDataFields do
      begin
         Close;
         SQL.Text := 'SELECT CODE FROM WORKFLOWTYPE DW WHERE '+
                   ' NOT EXISTS (SELECT 1 FROM dataform_workflow DF WHERE DF.WORKFLOWTYPECODE = DW.CODE  '+
                   ' AND DF.DATAFORM = ' + QuotedStr(qrySource.FieldByName('CODE').AsString) +' )'+
                   ' order by 1 ';
         Open;
         while not EOF do
         begin
            lbWorkflowAvailable.Items.Add(FieldByName('CODE').AsString);
            Next;
         end;
      end;
   end;
end;


procedure TfrmDataForm.qrySourceBeforeScroll(DataSet: TDataSet);
begin
   SaveDataFormFields;
   SaveDataFormWorkflow;
end;


procedure TfrmDataForm.tbtnNewClick(Sender: TObject);
begin
  FFieldNames.Clear;
  lbDataFormFields.Clear;
end;

procedure TfrmDataForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    SaveDataFormFields;
    SaveDataFormWorkflow;

  qryDataFormFields.Close;
    qrySource.Close;
  RemoveFromDesktop(Self);
end;

procedure TfrmDataForm.btnUpClick(Sender: TObject);
var
  OldSelectedIndex: integer;
begin
  if lbDataFormFields.ItemIndex > 0 then
  begin
    OldSelectedIndex := lbDataFormFields.ItemIndex;
    lbDataFormFields.Items.Move(lbDataFormFields.ItemIndex, lbDataFormFields.ItemIndex - 1);
    lbDataFormFields.SetFocus;
    lbDataFormFields.ItemIndex := OldSelectedIndex - 1;
    lbDataFormFields.Tag := 1;
  end;
  lbDataFormFields.SetFocus;
end;

procedure TfrmDataForm.btnDownClick(Sender: TObject);
var
  OldSelectedIndex: integer;
begin
  if lbDataFormFields.ItemIndex < lbDataFormFields.Items.Count then
  begin
    OldSelectedIndex := lbDataFormFields.ItemIndex;
    lbDataFormFields.Items.Move(lbDataFormFields.ItemIndex, lbDataFormFields.ItemIndex + 1);
    lbDataFormFields.SetFocus;
    lbDataFormFields.ItemIndex := OldSelectedIndex+1;
    lbDataFormFields.Tag := 1;
  end;
  lbDataFormFields.SetFocus;
end;

procedure TfrmDataForm.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch: TfrmGenericSearch;
begin
   frmGenericSearch := TfrmGenericSearch.Create(Self);
   with frmGenericSearch do
   begin
      SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM DATAFORM WHERE CODE <> ''SINGLEFIELDFORM'' ORDER BY CODE';
      if ShowModal = mrOK then
         Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
      Release;
   end;
end;

procedure TfrmDataForm.FormDestroy(Sender: TObject);
begin
  qParties.Close();
  qWorkflowTypes.Close();
  FFieldNames.Free;
end;

procedure TfrmDataForm.FormShow(Sender: TObject);
begin
   PopulateListBoxes(qrySource);
end;

procedure TfrmDataForm.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmDataForm.mnuFilePrintClick(Sender: TObject);
var
  ReportBookmark: TBookmark;
begin
  ReportBookmark := qrySource.GetBookmark;
  rpMaintReport.Print;
  qrySource.GotoBookmark(ReportBookmark);
  qrySource.FreeBookmark(ReportBookmark);

end;

procedure TfrmDataForm.dbedDescrEnter(Sender: TObject);
begin
  if qrySource.FieldByName('DESCR').AsString = '' then
    qrySource.FieldByName('DESCR').AsString := qrySource.FieldByName('CAPTION').AsString;
end;

procedure TfrmDataForm.BitBtn3Click(Sender: TObject);
begin
   if qrySource.Modified then
      qrySource.Post;
   ListBoxMoveAll(lbWorkflowAvailable, lbDataformWorkflows);
   FLaunchChanged := True;
   SaveDataFormWorkflow
end;

procedure TfrmDataForm.BitBtn4Click(Sender: TObject);
begin
   if qrySource.Modified then
      qrySource.Post;
   ListBoxMoveSelected(lbWorkflowAvailable, lbDataformWorkflows);
   FLaunchChanged := True;
   SaveDataFormWorkflow
end;

procedure TfrmDataForm.BitBtn5Click(Sender: TObject);
begin
   if qrySource.Modified then
      qrySource.Post;
   ListBoxMoveSelected(lbDataformWorkflows, lbWorkflowAvailable);
   FLaunchChanged := True;
   SaveDataFormWorkflow
end;

procedure TfrmDataForm.BitBtn6Click(Sender: TObject);
begin
   if qrySource.Modified then
      qrySource.Post;
   ListBoxMoveAll(lbDataformWorkflows, lbWorkflowAvailable);
   FLaunchChanged := True;
   SaveDataFormWorkflow
end;

procedure TfrmDataForm.btnAddFieldClick(Sender: TObject);
var
  frmGenericSearch: TfrmGenericSearch;
begin
  if qrySource.Modified then
    qrySource.Post;

  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT NAME AS CODE, DESCR, ''N'' AS DEFAULTITEM FROM FIELDTYPE ORDER BY NAME';
    if ShowModal = mrOK then
    begin
      if FFieldNames.IndexOf(qrySource.FieldByName('CODE').AsString) = -1 then
      begin
        FFieldNames.Add(qrySource.FieldByName('CODE').AsString);
        lbDataFormFields.Items.Add(qrySource.FieldByName('DESCR').AsString);
        lbDataFormFields.Tag := 1;
      end;
    end;
    Release;
  end;
  lbDataFormFields.SetFocus;
end;

procedure TfrmDataForm.cbDataFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if Key = VK_DELETE then
//    cbDataForm.ItemIndex := -1;
end;

procedure TfrmDataForm.FormCreate(Sender: TObject);
begin
  FFieldNames := TStringList.Create;
  qParties.Open();
  qWorkflowTypes.Open();
  tblDataForm.Open;
  if not qrySource.Active then
      qrySource.Open;
end;

procedure TfrmDataForm.btnRemoveFieldClick(Sender: TObject);
var
  iOldIndex: integer;
begin
  if (lbDataFormFields.Items.Count > 0) and (lbDataFormFields.ItemIndex >= 0) then
  begin
    iOldIndex := lbDataFormFields.ItemIndex;
    FFieldNames.Delete(lbDataFormFields.ItemIndex);
    lbDataFormFields.Items.Delete(lbDataFormFields.ItemIndex);
    lbDataFormFields.Tag := 1;
    if lbDataFormFields.Items.Count > 0 then
      if iOldIndex >= lbDataFormFields.Items.Count then
        lbDataFormFields.ItemIndex := lbDataFormFields.Items.Count - 1
      else
        lbDataFormFields.ItemIndex := iOldIndex;
  end;
  lbDataFormFields.SetFocus;
end;

procedure TfrmDataForm.btnClearClick(Sender: TObject);
begin
   if MsgAsk('Do you want to remove all fields from this form?') = mrYes then
   begin
      lbDataFormFields.Items.Clear;
      FFieldNames.Clear;
   end;
   lbDataFormFields.SetFocus;
end;

procedure TfrmDataForm.qrySourceAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('partyismatterspecific').Value := 'N';
end;

procedure TfrmDataForm.dblWorkflowTypeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if(Button = mbRight) then
  begin
    TDBLookupComboBox(Sender).KeyValue := NULL;
    ckMatterSpecific.Enabled := False;
  end;
end;

procedure TfrmDataForm.dbedCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if(not (Key in ['A'..'Z', '0'..'9', '_'])) then
    Key := #0;
end;

procedure TfrmDataForm.dbedCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  frmGenericSearch: TfrmGenericSearch;
begin
   frmGenericSearch := TfrmGenericSearch.Create(Self);
   with frmGenericSearch do
   begin
      SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM DATAFORM WHERE CODE <> ''SINGLEFIELDFORM'' ORDER BY CODE';
      if ShowModal = mrOK then
         Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
      Release;
   end;
end;

procedure TfrmDataForm.dxBarButton1Click(Sender: TObject);
begin
   if(not Assigned(fmWorkFlowFieldTranslate)) then
      fmWorkFlowFieldTranslate := TfmWorkFlowFieldTranslate.Create(nil);
   fmWorkFlowFieldTranslate.Show();
end;

procedure TfrmDataForm.btnLaunchAllClick(Sender: TObject);
begin
  if qrySource.Modified then
    qrySource.Post;
  ListBoxMoveAll(lbDataFields, lbDataFormFields);
  FLaunchChanged := True;
  SaveDataFormFields;
end;

procedure TfrmDataForm.btnLaunchSelectClick(Sender: TObject);
begin
  if qrySource.Modified then
    qrySource.Post;
  ListBoxMoveSelected(lbDataFields, lbDataFormFields);
  FLaunchChanged := True;
  SaveDataFormFields;
end;

procedure TfrmDataForm.btnRemoveClick(Sender: TObject);
begin
  if qrySource.Modified then
    qrySource.Post;
   ListBoxMoveSelected(lbDataFormFields, lbDataFields);
   FLaunchChanged := True;
   SaveDataFormFields;
end;

procedure TfrmDataForm.btnLaunchNoneClick(Sender: TObject);
begin
  if qrySource.Modified then
    qrySource.Post;
   ListBoxMoveAll(lbDataFormFields, lbDataFields);
   FLaunchChanged := True;
   SaveDataFormFields;
end;

procedure TfrmDataForm.dblPartyTypeCloseUp(Sender: TObject);
begin
   ckMatterSpecific.Enabled := (dblPartyType.Text <> '');
end;

procedure TfrmDataForm.cxButton1Click(Sender: TObject);
begin
   if qrySource.Modified then
      qrySource.Post;
   ListBoxMoveAll(lbWorkflowAvailable, lbDataformWorkflows);
   FLaunchChanged := True;
end;

procedure TfrmDataForm.cxButton2Click(Sender: TObject);
begin
   if qrySource.Modified then
      qrySource.Post;
   ListBoxMoveSelected(lbWorkflowAvailable, lbDataformWorkflows);
   FLaunchChanged := True;
end;

procedure TfrmDataForm.cxButton5Click(Sender: TObject);
begin
   if qrySource.Modified then
      qrySource.Post;
   ListBoxMoveSelected(lbDataformWorkflows, lbWorkflowAvailable);
   FLaunchChanged := True;
end;

procedure TfrmDataForm.cxButton4Click(Sender: TObject);
begin
   if qrySource.Modified then
      qrySource.Post;
   ListBoxMoveAll(lbDataformWorkflows, lbWorkflowAvailable);
   FLaunchChanged := True;
end;

procedure TfrmDataForm.SaveDataFormWorkflow;
var
  iCtr: integer;
begin
   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      with qryDataFormFields do
      begin
         Close;
         SQL.Text := 'DELETE FROM dataform_workflow WHERE DATAFORM = ' + QuotedStr(qrySource.FieldByName('CODE').AsString);
         ExecSQL;
         SQL.Text := 'INSERT INTO dataform_workflow (DATAFORM, WORKFLOWTYPECODE) VALUES (:DATAFORM, :WORKFLOWTYPECODE)';
         for iCtr := 0 to lbDataformWorkflows.Count - 1 do
         begin
            ParamByName('DATAFORM').AsString := qrySource.FieldByName('CODE').AsString;
            ParamByName('WORKFLOWTYPECODE').AsString := lbDataformWorkflows.Items.Strings[iCtr];
            ExecSQL;
         end;
      end;
      lbDataformWorkflows.Tag := 0;
      dmAxiom.uniInsight.Commit;
   except
      dmAxiom.uniInsight.Rollback;
   end;
end;

procedure TfrmDataForm.qrySourceNewRecord(DataSet: TDataSet);
begin
   lbDataformWorkflows.Clear;
   FFieldNames.Clear;
   lbDataFormFields.Clear;
   lbDataFields.Clear;
   with qryDataFields do
   begin
      Close;
      SQL.Text := 'SELECT FT.NAME, FT.DESCR FROM FIELDTYPE FT '+
                  ' order by 1 ';
      Open;
      while not EOF do
      begin
         lbDataFields.Items.Add(FieldByName('NAME').AsString);
         Next;
      end;
   end;
end;

procedure TfrmDataForm.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  frmGenericSearch: TfrmGenericSearch;
begin
   frmGenericSearch := TfrmGenericSearch.Create(Self);
   with frmGenericSearch do
   begin
      SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM DATAFORM WHERE CODE <> ''SINGLEFIELDFORM'' ORDER BY CODE';
      if ShowModal = mrOK then
         Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
      Release;
   end;
end;

end.
