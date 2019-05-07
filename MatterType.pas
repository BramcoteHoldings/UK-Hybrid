unit MatterType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, ImgList, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, ExtCtrls, Menus, Buttons, OracleUniProvider, Uni, DBAccess, MemDS, AxiomData,
  Grids, DBGrids, dxBarDBNav, dxBar, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxPC,
  cxContainer, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeels, cxLookAndFeelPainters, ppCtrls, ppDB, ppDBPipe, ppBands,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  cxPCdxBarPopupMenu, ppParameter, ppDesignLayer, cxNavigator, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxButtonEdit,
  dxDateRanges, cxCheckBox, System.ImageList;

type
  TfrmMatterType = class(TfrmMaint)
    dbtbCode: TDBEdit;
    Label1: TLabel;
    dbtbDescr: TDBEdit;
    Label2: TLabel;
    qryTmp: TUniQuery;
    btnCodeSearch: TBitBtn;
    qrySubType: TUniQuery;
    dsSubType: TUniDataSource;
    Label13: TLabel;
    edLedgerComponent: TDBEdit;
    qryDebtorTaskTemplate: TUniQuery;
    dsDebtorTaskTemplate: TUniDataSource;
    pagDetails: TcxPageControl;
    tabWorkflow: TcxTabSheet;
    Label11: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    tabFees: TcxTabSheet;
    Label5: TLabel;
    dbtbFeeRate: TDBEdit;
    Label4: TLabel;
    cbFeeCode: TComboBox;
    Label6: TLabel;
    btnBillTemplate: TBitBtn;
    dblblBilltemplate: TDBText;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    tabParties: TcxTabSheet;
    Label7: TLabel;
    dbtbParty1: TDBEdit;
    dbtbParty2: TDBEdit;
    dbtbParty3: TDBEdit;
    Label9: TLabel;
    Label8: TLabel;
    tabSubType: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tabDebtorTask: TcxTabSheet;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    lblFeeCodeDescr: TLabel;
    spSundryPercent: TcxDBSpinEdit;
    Label15: TLabel;
    Label16: TLabel;
    cmbSundryType: TcxDBLookupComboBox;
    qrySundryType: TUniQuery;
    dsSundryType: TUniDataSource;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    btnDataForm: TcxDBButtonEdit;
    btnWorkflowType: TcxDBButtonEdit;
    btnTask: TcxDBButtonEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cbFeeCodeClick(Sender: TObject);
    procedure cbFeeCodeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCodeSearchClick(Sender: TObject);
    procedure btnWorkflowTypeClick(Sender: TObject);
    procedure btnBillTemplateClick(Sender: TObject);
    procedure qrySubTypeNewRecord(DataSet: TDataSet);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function validateData(var sError : String): boolean;override;
    procedure pagDetailsChange(Sender: TObject);
    procedure qrySourceBeforePost(DataSet: TDataSet);
    procedure qrySourceBeforeScroll(DataSet: TDataSet);
    procedure btnDataFormPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnWorkflowTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnTaskPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    iGlComponentLength : integer;
  public
    { Public declarations }
  end;

var
  frmMatterType: TfrmMatterType;

implementation

{$R *.DFM}

uses
  GenericSearch, MiscFunc;

procedure TfrmMatterType.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cbFeeCode.ItemIndex := cbFeeCode.Items.IndexOf(qrySource.FieldByName('FEECODE').AsString);
  qrySubType.Close;
  qrySubType.Open;
end;

procedure TfrmMatterType.FormShow(Sender: TObject);
begin
  inherited;
  StringPopulate(cbFeeCode.Items, 'FEECODE', 'CODE');
end;

procedure TfrmMatterType.cbFeeCodeClick(Sender: TObject);
begin
  inherited;
  if not qrySource.Modified then
    qrySource.Edit;
  qrySource.FieldByName('FEECODE').AsString := cbFeeCode.Text;
  lblFeeCodeDescr.Caption := FeeCodeString(cbFeeCode.Text, 'DESCR');
end;

procedure TfrmMatterType.cbFeeCodeExit(Sender: TObject);
begin
  inherited;
  if cbFeeCode.Text <> qrySource.FieldByName('FEECODE').AsString then
  begin
    if not qrySource.Modified then
      qrySource.Edit;
    qrySource.FieldByName('FEECODE').AsString := cbFeeCode.Text;
  end;
end;

procedure TfrmMatterType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryTmp.Close;
  qryDebtorTaskTemplate.close;
  qrySundryType.Close;
  inherited;
end;

procedure TfrmMatterType.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM MATTERTYPE ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end; 

procedure TfrmMatterType.btnDataFormPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  inherited;

  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM DATAFORM ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      if not Self.qrySource.Modified then
        Self.qrySource.Edit;
      Self.qrySource.FieldByName('DATAFORM').AsString := qrySource.FieldByName('CODE').AsString;
    end;
    Release;
  end;
end;

procedure TfrmMatterType.btnWorkflowTypeClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM WORKFLOWTYPE ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      if not Self.qrySource.Modified then
        Self.qrySource.Edit;
      Self.qrySource.FieldByName('WORKFLOWTYPE').AsString := qrySource.FieldByName('CODE').AsString;
    end;
    Release;
  end;

end;

procedure TfrmMatterType.btnWorkflowTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  frmGenericSearch : TfrmGenericSearch;
begin
   inherited;
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM WORKFLOWTYPE ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      if not Self.qrySource.Modified then
        Self.qrySource.Edit;
      Self.qrySource.FieldByName('WORKFLOWTYPE').AsString := qrySource.FieldByName('CODE').AsString;
    end;
    Release;
  end;
end;

procedure TfrmMatterType.btnTaskPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   frmGenericSearch : TfrmGenericSearch;
begin
   frmGenericSearch := TfrmGenericSearch.Create(Self);
   with frmGenericSearch do
   begin
      if (SystemString('USE_PROJECT_BUDGETING') = 'Y') then
         SQL := 'SELECT CODE, SUBSTR(DESCR, 1, 100) AS DESCR, ''N'' AS DEFAULTITEM FROM TASKTEMP WHERE MASTER = ''Y'' ORDER BY CODE'
      else
      begin
         if btnWorkflowType.Text <> '' then
            SQL := 'SELECT TO_CHAR(LINEID) CODE, SUBSTR(TASKDESCRIPTION, 1, 100) AS DESCR FROM WORKFLOWTASKTEMPLATES WHERE WORKFLOWTYPECODE = '+ QuotedStr(btnWorkflowType.EditValue) +' ORDER BY CODE';
      end;
      if ShowModal = mrOK then
      begin
         if not Self.qrySource.Modified then
            Self.qrySource.Edit;
         Self.qrySource.FieldByName('TASK').AsString := qrySource.FieldByName('CODE').AsString;
      end;
      Release;
   end;
end;

procedure TfrmMatterType.btnBillTemplateClick(Sender: TObject);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR FROM BILLTEMPLATE ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      if not Self.qrySource.Modified then
        Self.qrySource.Edit;
      Self.qrySource.FieldByName('BILLTEMPLATE').AsString := qrySource.FieldByName('CODE').AsString;
    end;
    Release;
  end;
end;

procedure TfrmMatterType.qrySubTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySubType.FieldByName('MATTERTYPE').AsString := qrySource.FieldByName('CODE').AsString;
end;

procedure TfrmMatterType.FormHide(Sender: TObject);
begin
  inherited;
  qrySubType.Close;
end;

procedure TfrmMatterType.FormCreate(Sender: TObject);
begin
  inherited;
  qrySundryType.Open;
  // get the lenght of thr gl_component field
  iGlComponentLength := dmAxiom.getGlComponents.getComponentLength('BRANCH');
  if iGlComponentLength = 0 then
        edLedgerComponent.Enabled := false
  else
        edLedgerComponent.MaxLength := iGlComponentLength;

  tabDebtorTask.TabVisible := systemString('DEBTOR_TASK') = 'Y';

end;

function TfrmMatterType.validateData(var sError : String): boolean;
begin
   validateData := true;
   if (iGlComponentLength > 0) and (iGlComponentLength <> length(edLedgerComponent.Text))then
   begin
      validateData := false;
      sError := 'Error:- A Ledger Component must be specified and must be ' + intToStr(iGlComponentLength) + ' characters long';
   end;
end;

procedure TfrmMatterType.pagDetailsChange(Sender: TObject);
begin
  inherited;
  qryDebtorTaskTemplate.close;
  if pagDetails.ActivePage = tabDebtorTask then
        qryDebtorTaskTemplate.open;
end;

procedure TfrmMatterType.qrySourceBeforePost(DataSet: TDataSet);
begin
{   if (Dataset.FieldByName('SUNDRY_PERCENT').AsInteger > 0) then
   begin
      if DataSet.FieldByName('SUNDRY_TYPE').IsNull then
      begin
         DataSet.Cancel;
         MsgWarn('If a percentage has been entered, you must select a Sundry Type.');
         Exit;
      end;
   end;
   inherited; }
end;

procedure TfrmMatterType.qrySourceBeforeScroll(DataSet: TDataSet);
begin
{   if (Dataset.FieldByName('SUNDRY_PERCENT').AsInteger > 0) then
   begin
      if DataSet.FieldByName('SUNDRY_TYPE').IsNull then
      begin
         DataSet.cancel;
         MsgWarn('If a percentage has been entered, you must select a Sundry Type.');
         Exit;
      end;
   end;
  inherited;  }
end;

end.
