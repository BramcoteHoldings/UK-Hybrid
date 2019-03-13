unit EmployeeList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxImage,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, OracleUniProvider, Uni,
  DBAccess, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  dxBar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppReport, ppVar, myChkBox, cxGridExportLink,
  cxContainer, dxBarExtItems, ImgList, cxDBLookupComboBox, cxGridCardView,
  cxGridDBCardView, cxTextEdit, cxCalendar, cxLookAndFeels,
  cxLookAndFeelPainters, ppParameter, cxGridCustomLayoutView, ppDesignLayer,
  MemDS, cxNavigator, cxBarEditItem,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxPC, cxLabel, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, dxDateRanges, System.ImageList;

type
  TfrmEmployeeList = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    tvEmployees: TcxGridDBTableView;
    lvEmployees: TcxGridLevel;
    grdEmployees: TcxGrid;
    qryEmployeeList: TUniQuery;
    dsEmployeeList: TUniDataSource;
    tvEmployeesCODE: TcxGridDBColumn;
    tvEmployeesNAME: TcxGridDBColumn;
    tvEmployeesPHONE: TcxGridDBColumn;
    tvEmployeesTYPE: TcxGridDBColumn;
    tvEmployeesACCESSLEVEL: TcxGridDBColumn;
    tvEmployeesDEPT: TcxGridDBColumn;
    tvEmployeesACTIVE: TcxGridDBColumn;
    tvEmployeesISPARTNER: TcxGridDBColumn;
    tvEmployeesISAUTHOR: TcxGridDBColumn;
    tvEmployeesBIRTHDATE: TcxGridDBColumn;
    tvEmployeesBRANCH: TcxGridDBColumn;
    tvEmployeesDEFAULT_ENTITY: TcxGridDBColumn;
    tvEmployeesISCONTROLLER: TcxGridDBColumn;
    tvEmployeesISOPERATOR: TcxGridDBColumn;
    tvEmployeesRATE: TcxGridDBColumn;
    tvEmployeesCOST_PER_HOUR: TcxGridDBColumn;
    tvEmployeesEMAIL: TcxGridDBColumn;
    tvEmployeesSEX: TcxGridDBColumn;
    tvEmployeesISFEEEARNER: TcxGridDBColumn;
    tvEmployeesSIGNATORY: TcxGridDBColumn;
    tvEmployeesUSER_NAME: TcxGridDBColumn;
    tvEmployeesISPARALEGAL: TcxGridDBColumn;
    tvEmployeesPOSITION: TcxGridDBColumn;
    tvEmployeesIMAGE: TcxGridDBColumn;
    tvEmployeesSTART_DATE: TcxGridDBColumn;
    tvEmployeesEND_DATE: TcxGridDBColumn;
    tvEmployeesFEE_ENQUIRY_ACCESS: TcxGridDBColumn;
    tvEmployeesALLOW_TRUST_OD: TcxGridDBColumn;
    tvEmployeesDAILY_TARGET_CHARGE_UNITS: TcxGridDBColumn;
    tvEmployeesTARGET_DAILY_OH_UNITS: TcxGridDBColumn;
    tvEmployeesTARGET_DAILY_NONBILLABLE_UNITS: TcxGridDBColumn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBImage1: TppDBImage;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    btnReport: TdxBarButton;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppShape2: TppShape;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    btnEdit: TdxBarButton;
    btnAdd: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    tvEmployeesISTIME_RECORDER: TcxGridDBColumn;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ilstToolbar: TImageList;
    tvEmployeesNFEE_AUTHORITY: TcxGridDBColumn;
    qryFeeAuthority: TUniQuery;
    dsFeeAuthority: TUniDataSource;
    cvEmployees: TcxGridDBCardView;
    cvEmployeesCODE: TcxGridDBCardViewRow;
    cvEmployeesNAME: TcxGridDBCardViewRow;
    cvEmployeesPHONE: TcxGridDBCardViewRow;
    cvEmployeesTYPE: TcxGridDBCardViewRow;
    cvEmployeesACCESSLEVEL: TcxGridDBCardViewRow;
    cvEmployeesFEE_CHART: TcxGridDBCardViewRow;
    cvEmployeesFEEWOFF_CHART: TcxGridDBCardViewRow;
    cvEmployeesDISBWOFF_CHART: TcxGridDBCardViewRow;
    cvEmployeesDEPT: TcxGridDBCardViewRow;
    cvEmployeesACTIVE: TcxGridDBCardViewRow;
    cvEmployeesISPARTNER: TcxGridDBCardViewRow;
    cvEmployeesISAUTHOR: TcxGridDBCardViewRow;
    cvEmployeesBIRTHDATE: TcxGridDBCardViewRow;
    cvEmployeesBRANCH: TcxGridDBCardViewRow;
    cvEmployeesDEFAULT_ENTITY: TcxGridDBCardViewRow;
    cvEmployeesISCONTROLLER: TcxGridDBCardViewRow;
    cvEmployeesISOPERATOR: TcxGridDBCardViewRow;
    cvEmployeesRATE: TcxGridDBCardViewRow;
    cvEmployeesCOST_PER_HOUR: TcxGridDBCardViewRow;
    cvEmployeesEMAIL: TcxGridDBCardViewRow;
    cvEmployeesSEX: TcxGridDBCardViewRow;
    cvEmployeesISFEEEARNER: TcxGridDBCardViewRow;
    cvEmployeesSIGNATORY: TcxGridDBCardViewRow;
    cvEmployeesUSER_NAME: TcxGridDBCardViewRow;
    cvEmployeesISPARALEGAL: TcxGridDBCardViewRow;
    cvEmployeesPOSITION: TcxGridDBCardViewRow;
    cvEmployeesIMAGE: TcxGridDBCardViewRow;
    cvEmployeesSTART_DATE: TcxGridDBCardViewRow;
    cvEmployeesEND_DATE: TcxGridDBCardViewRow;
    cvEmployeesFEE_ENQUIRY_ACCESS: TcxGridDBCardViewRow;
    cvEmployeesALLOW_TRUST_OD: TcxGridDBCardViewRow;
    cvEmployeesTARGET_DAILY_CHARGE_UNITS: TcxGridDBCardViewRow;
    cvEmployeesTARGET_DAILY_OH_UNITS: TcxGridDBCardViewRow;
    cvEmployeesTARGET_DAILY_NONBILLABLE_UNITS: TcxGridDBCardViewRow;
    cvEmployeesDAILY_TARGET_CHARGE_UNITS: TcxGridDBCardViewRow;
    cvEmployeesISTIME_RECORDER: TcxGridDBCardViewRow;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    qryEmployeeListPrint: TUniQuery;
    dsEmployeeListPrint: TUniDataSource;
    pagEmployeeListing: TcxPageControl;
    tabEmployeeList: TcxTabSheet;
    tabFilter: TcxTabSheet;
    ActionManager1: TActionManager;
    actDisplayMode: TAction;
    actListing: TAction;
    actRefresh: TAction;
    actActive: TAction;
    actEditUser: TAction;
    cmbEntity: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cmbBranch: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cmbEmpType: TcxLookupComboBox;
    qryBranch: TUniQuery;
    dsBranch: TUniDataSource;
    qryEmpType: TUniQuery;
    dsEmpType: TUniDataSource;
    qryEmpDept: TUniQuery;
    dsEmpDept: TUniDataSource;
    qryEntity: TUniQuery;
    dsEntity: TUniDataSource;
    cxLabel4: TcxLabel;
    cmbEmpDept: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    actExportToExcel: TAction;
    dxBarButton6: TdxBarButton;
    OpenDialog: TFileOpenDialog;
    tvEmployeesPAYROLL_NUMBER: TcxGridDBColumn;
    tvEmployeesEMP_LEVEL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure tvEmployeesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxBarEditItem2Change(Sender: TObject);
    procedure cxBarEditItem3CurChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actDisplayModeUpdate(Sender: TObject);
    procedure actEditUserUpdate(Sender: TObject);
    procedure pagEmployeeListingChange(Sender: TObject);
    procedure actEditUserExecute(Sender: TObject);
    procedure actListingExecute(Sender: TObject);
    procedure actExportToExcelExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
    procedure MakeSQL;
  public
    { Public declarations }
  end;

var
  frmEmployeeList: TfrmEmployeeList;

implementation

uses
   AxiomData, miscfunc, Desktop, Employees, Password;

{$R *.dfm}

procedure TfrmEmployeeList.FormCreate(Sender: TObject);
var
   iMaxLength: integer;
begin
   qryFeeAuthority.Open;
   qryEmployeeList.Open;
   qryBranch.Open;
   qryEmpType.Open;
   qryEmpDept.Open;
   qryEntity.Open;
   tvEmployeesISPartner.Caption := GetLabelValue('MATTER', 'PARTNER', iMaxLength, 'Partner'); ;
   tvEmployeesISAUTHOR.Caption := GetLabelValue('MATTER','AUTHOR', iMaxLength, 'Author');
   tvEmployeesISCONTROLLER .Caption := GetLabelValue('MATTER','CONTROLLER', iMaxLength, 'Controller');
   tvEmployeesISOPERATOR.Caption := GetLabelValue('MATTER','OPERATOR', iMaxLength, 'Operator');
   tvEmployeesISPARALEGAL.Caption := GetLabelValue('MATTER','PARALEGAL', iMaxLength, 'Para Legal');
end;

procedure TfrmEmployeeList.FormShow(Sender: TObject);
begin
   with qryEmployeeList do
   begin
      if Boolean(cxBarEditItem2.EditValue) then
      begin
         Filter := 'Active = ''Y''';
         Filtered := True;
      end
      else
      begin
         Filtered := False;
         Filter := '';
      end;
   end;
end;

procedure TfrmEmployeeList.MakeSQL;
var
   sWhereAnd: string;
begin
   sWhereAnd := '';
   qryEmployeeList.Close;
   qryEmployeeList.SQL.Clear;
   qryEmployeeList.SQL.Add('select e.*, tablevalue(''entity'',''code'', entity, ''name'') as entity_name from employee e ');

   if (cmbEntity.Text <> '') then
   begin
      sWhereAnd := ' WHERE ';
      qryEmployeeList.SQL.Add(sWhereAnd);
      qryEmployeeList.SQL.Add(' e.entity = nvl(:entity, e.entity) ');
      qryEmployeeList.ParamByName('entity').AsString := cmbEntity.EditValue;
   end;
//   else
//      qryEmployeeList.ParamByName('entity').Clear;

   if cmbBranch.Text <> '' then
   begin
      if sWhereAnd = '' then
         sWhereAnd := ' WHERE '
      else
         sWhereAnd := ' AND ';
      qryEmployeeList.SQL.Add(sWhereAnd);
      qryEmployeeList.SQL.Add('e.branch = nvl(:branch, e.branch) ');
      qryEmployeeList.ParamByName('branch').AsString := cmbBranch.EditValue;
   end;
//   else
//      qryEmployeeList.ParamByName('branch').Clear;

   if cmbEmpType.Text <> '' then
   begin
      if sWhereAnd = '' then
         sWhereAnd := ' WHERE '
      else
         sWhereAnd := ' AND ';
      qryEmployeeList.SQL.Add(sWhereAnd);
      qryEmployeeList.SQL.Add('e.type = nvl(:type, e.type) ');
      qryEmployeeList.ParamByName('type').AsString := cmbEmpType.EditValue;
   end;
//   else
//      qryEmployeeList.ParamByName('type').Clear;

   if cmbEmpDept.Text <> '' then
   begin
      if sWhereAnd = '' then
         sWhereAnd := ' WHERE '
      else
         sWhereAnd := ' AND ';
      qryEmployeeList.SQL.Add(sWhereAnd);
      qryEmployeeList.SQL.Add('e.dept = nvl(:dept, e.dept) ');
      qryEmployeeList.ParamByName('dept').AsString := cmbEmpDept.EditValue;
   end;
//   else
//      qryEmployeeList.ParamByName('dept').Clear;
   qryEmployeeList.SQL.Add('order by e.code ');

   qryEmployeeList.Open;
end;


procedure TfrmEmployeeList.pagEmployeeListingChange(Sender: TObject);
begin
   if pagEmployeeListing.ActivePage = tabEmployeeList then
   begin
      MakeSQL;
   end;
end;

procedure TfrmEmployeeList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryFeeAuthority.Close;
   qryEmployeeList.Close;
   qryBranch.Close;
   qryEmpType.Close;
   qryEmpDept.Close;
   qryEntity.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmEmployeeList.dxBarButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmEmployeeList.tvEmployeesCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnEdit.Click;
end;

procedure TfrmEmployeeList.dxBarButton2Click(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,grdEmployees, True, True,True,'xls');
   end;
end;

procedure TfrmEmployeeList.btnEditClick(Sender: TObject);
var
  LfrmEmployees: TfrmEmployees;
begin
//   if not frmDesktop.WindowReShow('frmEmployees') then
//   begin
     Application.CreateForm(TfrmEmployees, LfrmEmployees);
     LfrmEmployees.UserCode := qryEmployeeList.FieldByName('CODE').AsString;
     frmDesktop.AddFormToTab(LfrmEmployees, 1);
//   end;

end;

procedure TfrmEmployeeList.actDisplayModeUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := (pagEmployeeListing.ActivePage = tabEmployeeList);
end;

procedure TfrmEmployeeList.actEditUserExecute(Sender: TObject);
var
   LfrmEmployees: TfrmEmployees;
begin
     Application.CreateForm(TfrmEmployees, LfrmEmployees);
     LfrmEmployees.UserCode := qryEmployeeList.FieldByName('CODE').AsString;
     frmDesktop.AddFormToTab(LfrmEmployees, 1);
end;

procedure TfrmEmployeeList.actEditUserUpdate(Sender: TObject);
begin
   actEditUser.Enabled := (pagEmployeeListing.ActivePage = tabEmployeeList) and
                           (tvEmployees.Controller.SelectedRowCount <> 0);
end;

procedure TfrmEmployeeList.actExportToExcelExecute(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToXLSX(filename,grdEmployees);
   end;
end;

procedure TfrmEmployeeList.actListingExecute(Sender: TObject);
begin
   qryEmployeeListPrint.Close;
   qryEmployeeListPrint.SQL.Text := qryEmployeeList.SQL.Text;
   ppReport1.Print;
end;

procedure TfrmEmployeeList.actRefreshExecute(Sender: TObject);
begin
   if pagEmployeeListing.ActivePage = tabEmployeeList then
   begin
      MakeSQL;
   end;
end;

procedure TfrmEmployeeList.btnAddClick(Sender: TObject);
var
   LfrmEmployees: TfrmEmployees;
begin
   LfrmEmployees := TfrmEmployees.Create(frmEmployeeList);
//   Application.CreateForm(TfrmEmployees, LfrmEmployees);
   LfrmEmployees.Show;
   LfrmEmployees.aNewExecute(Self);
end;

procedure TfrmEmployeeList.dxBarButton3Click(Sender: TObject);
begin
   if pagEmployeeListing.ActivePage = tabEmployeeList then
   begin
      MakeSQL;
   end;
end;

procedure TfrmEmployeeList.dxBarButton4Click(Sender: TObject);
begin
   dmAxiom.procUnlockUser.ParamByName('username').AsString := qryEmployeeList.FieldByName('CODE').AsString;
   dmAxiom.procUnlockUser.Execute;
   dmAxiom.procUnlockUser.Close;
end;

procedure TfrmEmployeeList.dxBarButton5Click(Sender: TObject);
var
  LfrmPassword: TfrmPassword;
begin
   LfrmPassword := TfrmPassword.Create(Self);
//  LfrmPassword.tbOldPassword.Text := qryEmployees.FieldByName('PASSWORD').AsString;
   LfrmPassword.LoadEmp(qryEmployeeList.FieldByName('CODE').AsString);
end;

procedure TfrmEmployeeList.cxBarEditItem2Change(Sender: TObject);
begin
   with qryEmployeeList do
   begin
      if Boolean(cxBarEditItem2.EditValue) then
      begin
         Filter := 'Active = ''Y''';
         Filtered := True;
      end
      else
      begin
         Filtered := False;
         Filter := '';
      end;
   end;
end;

procedure TfrmEmployeeList.cxBarEditItem3CurChange(Sender: TObject);
begin
   if Boolean(cxBarEditItem3.EditValue) then
      lvEmployees.GridView := tvEmployees
   else
      lvEmployees.GridView := cvEmployees;
end;

end.


