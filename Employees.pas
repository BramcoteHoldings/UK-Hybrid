unit Employees;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Mask, Db, Buttons,
  ToolWin, ImgList, Menus, MemDS, OracleUniProvider, Uni, DBAccess,
  DBDateTimePicker, DBActns, ActnList, ActnMan, ActnMenus,
  ActnCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckBox,
  cxHyperLinkEdit, cxButtonEdit, dxBarDBNav, dxBar, cxCurrencyEdit, cxLabel,
  cxPC, cxImage, cxLookAndFeelPainters, cxButtons, cxCalendar, Registry, INIFiles,
  uRwMapidefsH, cxGraphics, Printers, XPStyleActnCtrls, cxLookAndFeels, cxListBox, cxMemo,
  memdata, cxPCdxBarPopupMenu, cxClasses, cxSpinEdit, ppCtrls, ppBands,
  ppClass, ppVar, ppPrnabl, ppCache, ppDB, ppDesignLayer, ppParameter,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, uRwMapiFolderDialog,
  uRwMapiInterfaces, VCL.Themes, System.TypInfo, cxRichEdit, cxDBRichEdit,
  System.Actions, dxBarBuiltInMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Variants, Vcl.OleCtrls, SHDocVw, System.ImageList,
  dxDateRanges;

type
  TfrmEmployees = class(TForm)
    qryEmployees: TUniQuery;
    dsEmployees: TUniDataSource;
    Label1: TLabel;
    Label3: TLabel;
    dsTypes: TUniDataSource;
    qryTypes: TUniQuery;
    qryDepts: TUniQuery;
    dsDepts: TUniDataSource;
    Department: TLabel;
    Label2: TLabel;
    dbtbMonthTime: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    ilstToolbar: TImageList;
    Label16: TLabel;
    Label17: TLabel;
    qryRateChange: TUniQuery;
    qryEmpList: TUniQuery;
    Label18: TLabel;
    qryBranch: TUniQuery;
    dsBranch: TUniDataSource;
    qryEntity: TUniQuery;
    dsEntity: TUniDataSource;
    ActionManager: TActionManager;
    aDataSetFirst: TDataSetFirst;
    aDataSetPrior: TDataSetPrior;
    aDataSetNext: TDataSetNext;
    aDataSetLast: TDataSetLast;
    aNew: TDataSetInsert;
    aDelete: TDataSetDelete;
    aPost: TDataSetPost;
    aCancel: TDataSetCancel;
    aHelp: TAction;
    aPassword: TAction;
    aEmpType: TAction;
    aEmpDept: TAction;
    aLaunch: TAction;
    aPrint: TAction;
    aExit: TAction;
    Label6: TLabel;
    Label26: TLabel;
    dbcbType: TcxDBLookupComboBox;
    cbDepartment: TcxDBLookupComboBox;
    Label28: TLabel;
    rgSex: TcxDBRadioGroup;
    dbtbCode: TcxDBButtonEdit;
    dbedPhone: TcxDBTextEdit;
    eFax: TcxDBTextEdit;
    eEmail: TcxDBHyperLinkEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dbedExperience: TcxDBTextEdit;
    dfUserName: TcxDBTextEdit;
    dbchkActive: TcxDBCheckBox;
    dbcbFeeEarner: TcxDBCheckBox;
    dbtbName: TcxDBButtonEdit;
    dxBarManager1: TdxBarManager;
    dxBarButton2: TdxBarButton;
    btnPassword: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dbNav: TdxBarDBNavigator;
    btnFirst: TdxBarDBNavButton;
    btnPrev: TdxBarDBNavButton;
    btnNext: TdxBarDBNavButton;
    btnLast: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dfPosition: TcxDBTextEdit;
    dxBarButton1: TdxBarButton;
    btnBudget: TdxBarButton;
    qryEmpCuts: TUniQuery;
    qryUpdate: TUniQuery;
    qryEmpTypeCuts: TUniQuery;
    dlFile: TOpenDialog;
    cxGroupBox1: TcxGroupBox;
    imgEmployee: TcxDBImage;
    dxPopupImage: TdxBarPopupMenu;
    dxattachImage: TdxBarButton;
    tbChangeImage: TdxBarButton;
    tbRemoveImage: TdxBarButton;
    btnAttachImage: TcxButton;
    qryFeeAuthority: TUniQuery;
    dsFeeAuthority: TUniDataSource;
    Label30: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    btnDictionaryOptions: TdxBarButton;
    bbtnUnlockUser: TdxBarButton;
    cbIsTimeRecorder: TcxDBCheckBox;
    bbtonEmployeeTypes: TdxBarButton;
    rptEmployeeList: TppReport;
    plEmployeeList: TppDBPipeline;
    dsEmployeeList: TUniDataSource;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText7: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppShape1: TppShape;
    ppLine2: TppLine;
    MainMenu1: TMainMenu;
    RwMapiFolderDialog: TRwMapiFolderDialog;
    Label40: TLabel;
    qryAutoTimerTask: TUniQuery;
    dsAutoTimerTask: TUniDataSource;
    Label42: TLabel;
    DBEdit1: TDBEdit;
    Label43: TLabel;
    DBEdit5: TDBEdit;
    chkILARSNo: TDBCheckBox;
    dbedILARSNo: TDBEdit;
    procNonWorkingDays: TUniStoredProc;
    cxPageControl1: TcxPageControl;
    tabDefaults: TcxTabSheet;
    dblEntity: TcxDBLookupComboBox;
    dbcLabelPrinter: TcxDBComboBox;
    dblBranch: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    chkGSTDefault: TcxDBCheckBox;
    DBComboBox1: TDBComboBox;
    Label34: TLabel;
    Label24: TLabel;
    Label38: TLabel;
    lblAutoTimerTask: TLabel;
    lblBranch: TLabel;
    tabRoles: TcxTabSheet;
    gbShowAs: TcxGroupBox;
    dbcbController: TcxDBCheckBox;
    dbcbAuthor: TcxDBCheckBox;
    cbParalegal: TcxDBCheckBox;
    dbcbPartner: TcxDBCheckBox;
    dbcbOperator: TcxDBCheckBox;
    tabGL: TcxTabSheet;
    gbGLPosting: TcxGroupBox;
    Label7: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label19: TLabel;
    dfLedgerSuffix: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    tabFinancial: TcxTabSheet;
    Label39: TLabel;
    Label9: TLabel;
    Label44: TLabel;
    dbtbRate: TcxDBCurrencyEdit;
    dbtbCost: TcxDBCurrencyEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    tabDates: TcxTabSheet;
    dtStartDate: TcxDBDateEdit;
    cxLabel5: TcxLabel;
    dtEndDate: TcxDBDateEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    dtDOB: TcxDBDateEdit;
    tabSignatory: TcxTabSheet;
    Label27: TLabel;
    dbeSignatory: TcxDBTextEdit;
    btnHTML: TcxButton;
    btnRTF: TcxButton;
    btnJPG: TcxButton;
    cxDBImage3: TcxDBImage;
    cxDBRichEdit1: TcxDBRichEdit;
    tabSecurity: TcxTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label29: TLabel;
    cbSecurity: TcxDBComboBox;
    cmbFeeAuthority: TcxDBLookupComboBox;
    cbFeeEnquiryAccess: TcxDBCheckBox;
    cbRestrictedMatters: TcxDBCheckBox;
    cbInfoTrack: TcxGroupBox;
    Label65: TLabel;
    Label66: TLabel;
    tabOptions: TcxTabSheet;
    Label35: TLabel;
    Label45: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxLabel7: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxDBCheckBox7: TcxDBCheckBox;
    rgPostTime: TcxDBRadioGroup;
    cxDBComboBox2: TcxDBComboBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    cbAllowMultipleCopies: TcxCheckBox;
    DBCheckBox27: TDBCheckBox;
    cmbRptOutputLevel: TcxDBSpinEdit;
    tabWorkingWeek: TcxTabSheet;
    tabEmailOptions: TcxTabSheet;
    Label36: TLabel;
    cxLabel6: TcxLabel;
    cmbBxProfiles: TcxDBComboBox;
    btnedtFolderList: TcxDBButtonEdit;
    tabNotes: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    tabMatterOptions: TcxTabSheet;
    GroupBox1: TGroupBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    cxGroupBox2: TcxGroupBox;
    Label22: TLabel;
    dbcCPrinter: TcxDBComboBox;
    Label23: TLabel;
    dbcRPrinter: TcxDBComboBox;
    cxGroupBox3: TcxGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    dbcTrustCPrinter: TcxDBComboBox;
    dbcTrustRPrinter: TcxDBComboBox;
    cxTabSheet1: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel8: TcxLabel;
    edAuthPassword: TcxDBTextEdit;
    edAuthClientPaymentLimit: TcxDBCurrencyEdit;
    edAuthDisbPatmentLimit: TcxDBCurrencyEdit;
    DBCheckBox1: TDBCheckBox;
    tvEmpDepartments: TcxGridDBTableView;
    lvEmpDepartments: TcxGridLevel;
    grdEmpDepartments: TcxGrid;
    qryEmpAuthDept: TUniQuery;
    dsEmpAuthDept: TUniDataSource;
    tvEmpDepartmentsEMP_CODE: TcxGridDBColumn;
    tvEmpDepartmentsDEPT_CODE: TcxGridDBColumn;
    tvEmpDepartmentsROWID: TcxGridDBColumn;
    cxDBCheckBox11: TcxDBCheckBox;
    grpWorkHours: TcxGroupBox;
    Label37: TLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    spinWorkMonday: TcxDBSpinEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    spinWorkTuesday: TcxDBSpinEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    spinWorkWednesday: TcxDBSpinEdit;
    cxDBCheckBox5: TcxDBCheckBox;
    spinWorkThursday: TcxDBSpinEdit;
    cxDBCheckBox6: TcxDBCheckBox;
    spinWorkFriday: TcxDBSpinEdit;
    cxDBCheckBox8: TcxDBCheckBox;
    spinWorkSaturday: TcxDBSpinEdit;
    cxDBCheckBox9: TcxDBCheckBox;
    spinWorkSunday: TcxDBSpinEdit;
    edWeeklyHours: TcxDBTextEdit;
    cxGroupBox5: TcxGroupBox;
    Label48: TLabel;
    spinChargeMonday: TcxDBSpinEdit;
    spinChargeTuesday: TcxDBSpinEdit;
    spinChargeWednesday: TcxDBSpinEdit;
    spinChargeThursday: TcxDBSpinEdit;
    spinChargeFriday: TcxDBSpinEdit;
    spinChargeSaturday: TcxDBSpinEdit;
    spinChargeSunday: TcxDBSpinEdit;
    Label32: TLabel;
    dbtxtOverheadUnits: TcxDBTextEdit;
    Label33: TLabel;
    dbtxtNonBillUnits: TcxDBTextEdit;
    dbtbDailyChargeUnits: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBCheckBox12: TcxDBCheckBox;
    cxLabel9: TcxLabel;
    Label41: TLabel;
    cbViews: TcxComboBox;
    tePayrollNumber: TcxDBTextEdit;
    cbBankLineApprover: TcxDBCheckBox;
    cbFinancialDirector: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    qryEmpLevel: TUniQuery;
    dsEmpLevel: TUniDataSource;
    dbcbEmpLevel: TcxDBLookupComboBox;
    lblEmpLevel: TLabel;
    cmbCurrencyList: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    dbtxtInitials: TcxDBTextEdit;
    lblInitials: TcxLabel;
    cxDBRichEdit2: TcxDBRichEdit;
    procedure qryEmployeesAfterPost(DataSet: TDataSet);
    procedure btnNameFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure tbtnLaunchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryEmployeesBeforePost(DataSet: TDataSet);
    procedure tbtnEmpDeptClick(Sender: TObject);
    procedure tbtnEmpTypeClick(Sender: TObject);
    procedure qryEmployeesAfterInsert(DataSet: TDataSet);
    procedure tbtnPasswordClick(Sender: TObject);
    procedure btnCodeSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbtnPostClick(Sender: TObject);
    procedure tbtnCancelClick(Sender: TObject);
    procedure dtpBirthDateChange(Sender: TObject);
    procedure qryEmployeesTYPEChange(Sender: TField);
    procedure qryEmployeesRATEChange(Sender: TField);
    procedure mnuFileExitClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure dblBranchExit(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure aPasswordExecute(Sender: TObject);
    procedure aPostExecute(Sender: TObject);
    procedure aEmpTypeExecute(Sender: TObject);
    procedure aEmpDeptExecute(Sender: TObject);
    procedure aLaunchExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aHelpExecute(Sender: TObject);
    procedure PostCancelUpdate(Sender: TObject);
    procedure NewDeleteUpdate(Sender: TObject);
    procedure dbtbCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtbNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBLookupComboBox2PropertiesCloseUp(Sender: TObject);
    procedure dbtbCodeExit(Sender: TObject);
    procedure cbViewsPropertiesChange(Sender: TObject);
    procedure dfPositionPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnBudgetClick(Sender: TObject);
    procedure dbcbTypeClick(Sender: TObject);
    procedure dxPopupImagePopup(Sender: TObject);
    procedure dxattachImageClick(Sender: TObject);
    procedure qryEmployeesAfterScroll(DataSet: TDataSet);
    procedure tbRemoveImageClick(Sender: TObject);
    procedure qryEmployeesAfterCancel(DataSet: TDataSet);
    procedure btnHTMLClick(Sender: TObject);
    procedure cbAllowMultipleCopiesPropertiesChange(Sender: TObject);
    procedure btnedtFolderListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bbtnUnlockUserClick(Sender: TObject);
    procedure bbtonEmployeeTypesClick(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure cxDBComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure chkILARSNoClick(Sender: TObject);
    procedure dblEntityPropertiesChange(Sender: TObject);
    procedure qryEmpAuthDeptAfterInsert(DataSet: TDataSet);
    procedure spinWorkSundayPropertiesChange(Sender: TObject);
    procedure spinChargeMondayPropertiesChange(Sender: TObject);
    procedure dbcbEmpLevelClick(Sender: TObject);
    //procedure cbDepartmentPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    EmpTypeChanged: boolean;
    EmpLevelChanged: boolean;             // Added RDW 07/12/2018
    FINIstartup: TINIFile;
    FRegAxiom : TRegistry;
    FUserCode: string;
    FPrinters: TPrinter;
    FGridChanged: boolean;
//    fWBW: TWebBrowserWrapper;
    procedure SetWorkHours(Sender: TObject);
    procedure SetChargeHours(Sender: TObject);
  public
    { Public declarations }
    property UserCode: string read FUserCode write FUserCode;
  end;

var
  frmEmployees: TfrmEmployees;

implementation

uses EmpDept, EmpLaunch, EmpType, GenericSearch, AxiomData, MiscFunc, NSearch,
  Password, citfunc, Desktop, dxNavBarViewsFact, Budgets, glComponentUtil,StrUtils,
  Security, uRwMapiUtils, uRwBoxes, uRwMapiMessage, uRwMapiProps;

{$R *.DFM}


procedure TfrmEmployees.qryEmployeesAfterPost(DataSet: TDataSet);
var
  sCode : string;
begin
  if qryEmployees.FieldByName('CODE').AsString = dmAxiom.UserID then
    dmAxiom.ReopenItems := qryEmployees.FieldByName('REOPENLENGTH').AsInteger;
  try
    sCode := qryEmployees.FieldByName('CODE').AsString;
//    dsEmployees.DataSet.DisableControls;
    qryEmployees.Close;
    qryEmployees.Open;
    try
      if FGridChanged then
      begin
         with dmAxiom.qryTmp do
         begin
            SQL.Text := 'delete from settings where owner = '+QuotedStr('tvFeeTmp Layout')+' and emp = '+ QuotedStr(sCode) ;
            Execute;
//            dmAxiom.uniInsight.Commit;
         end;
      end;
    except
    //
    end;
    if not qryEmployees.Locate('CODE', sCode, []) then
      qryEmployees.First;
  finally
//    dsEmployees.DataSet.EnableControls;
  end;
end;


procedure TfrmEmployees.btnNameFindClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not qryEmployees.Modified then
      qryEmployees.Edit;
    qryEmployees.FieldByName('NAME').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmEmployees.FormShow(Sender: TObject);
var
   LregAxiom: TRegistry;

   procedure GetLabel(AControl: TcxDBCheckBox; AClass, AName: String);
   var
      LTmp: String;
   begin
      try
         Ltmp := GetDisplayName(AClass,AName);
         if(LTmp <> '') then
            AControl.Properties.Caption := LTmp;
      except
      //
      end;
   end;
begin
   spinWorkMonday.Properties.OnChange := nil;
   spinWorkTuesday.Properties.OnChange := nil;
   spinWorkWednesday.Properties.OnChange := nil;
   spinWorkThursday.Properties.OnChange := nil;
   spinWorkFriday.Properties.OnChange := nil;
   spinWorkSaturday.Properties.OnChange := nil;
   spinWorkSunday.Properties.OnChange := nil;

   qryEmployees.BeforeScroll := nil;
   try
      qryEmployees.Open;
   finally
      qryEmployees.First;
   end;
   qryEmployees.BeforeScroll := qryEmployeesAfterScroll;

   qryDepts.Open;
   qryTypes.Open;
   qryEmpLevel.Open;              // RDW 07/12/2018
   qryEntity.Open;
   with qryBranch do
   begin
      if dblEntity.Text <> '' then
      begin
         Close;
         ParamByName('entity').AsString := dblEntity.EditValue;
         Open;
      end;
   end;

//   qryBranch.Open;
   qryFeeAuthority.Open;
   try
      if FUserCode <> '' then
      begin
         try
            qryEmployees.LocateEx('CODE', FUserCode, [lxCaseInsensitive]);
         except
         //
         end;
      end
      else
      begin
         try
            qryEmployees.Locate('CODE', dmAxiom.UserID, [loCaseInsensitive]);
         except
         //
         end;
      end;
   except
      //
   end;
   btnAttachImage.Visible := qryEmployees.FieldByName('IMAGE').IsNull;  //cxDBImage1.Picture.Graphic.Empty;

   SetReqFieldsColour('EMPLOYEE',qryEmployees, tabDefaults);

   spinWorkMonday.Properties.OnChange := spinWorkSundayPropertiesChange;
   spinWorkTuesday.Properties.OnChange := spinWorkSundayPropertiesChange;
   spinWorkWednesday.Properties.OnChange := spinWorkSundayPropertiesChange;
   spinWorkThursday.Properties.OnChange := spinWorkSundayPropertiesChange;
   spinWorkFriday.Properties.OnChange := spinWorkSundayPropertiesChange;
   spinWorkSaturday.Properties.OnChange := spinWorkSundayPropertiesChange;
   spinWorkSunday.Properties.OnChange := spinWorkSundayPropertiesChange;


   GetLabel(dbcbPartner,    'MATTER','PARTNER');
   GetLabel(dbcbOperator,   'MATTER','OPERATOR');
   GetLabel(dbcbAuthor,     'MATTER','AUTHOR');
   GetLabel(dbcbController, 'MATTER','CONTROLLER');
   GetLabel(cbParalegal,    'MATTER','LAWCLERK');

  { LregAxiom := TRegistry.Create;
   try
      LregAxiom.RootKey := HKEY_CURRENT_USER;
      FINIstartup := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'Axiom.INI');
      dmAxiom.RegistryRoot := FINIstartup.ReadString('Main', 'RegistryRoot', 'Software\Colateral\Axiom');
      LregAxiom.OpenKey(dmAxiom.RegistryRoot + '\Database', True);
      cbAllowMultipleCopies.Checked := False;
      try
         cbAllowMultipleCopies.Checked := LregAxiom.ReadBool('AllowMultipleCopies');
      except
         LregAxiom.WriteBool('AllowMultipleCopies', False);
      end;
   finally
      LregAxiom.Free;
   end;    }
end;

procedure TfrmEmployees.tbtnFirstClick(Sender: TObject);
begin
  if qryEmployees.Modified then
    qryEmployees.Post;
  qryEmployees.First;
end;

procedure TfrmEmployees.tbtnPrevClick(Sender: TObject);
begin
  if qryEmployees.Modified then
    qryEmployees.Post;
  qryEmployees.Prior;
end;

procedure TfrmEmployees.tbtnNextClick(Sender: TObject);
begin
  if qryEmployees.Modified then
    qryEmployees.Post;
  qryEmployees.Next;
end;

procedure TfrmEmployees.tbtnLastClick(Sender: TObject);
begin
  if qryEmployees.Modified then
    qryEmployees.Post;
  qryEmployees.Last;
end;

procedure TfrmEmployees.tbtnNewClick(Sender: TObject);
begin
  if qryEmployees.Modified then
    qryEmployees.Post;
  qryEmployees.Insert;
  dbtbCode.SetFocus;
end;

procedure TfrmEmployees.tbtnDeleteClick(Sender: TObject);
begin
  if MsgAsk('Are you sure you want to delete this employee?') = mrYes then
    qryEmployees.Delete;
end;

procedure TfrmEmployees.tbtnLaunchClick(Sender: TObject);
begin
  with TfrmEmpLaunch.Create(Self) do
    SetEmp(qryEmployees.FieldByName('CODE').AsString);
end;


procedure TfrmEmployees.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   try
      if qryEmployees.Modified then
         qryEmployees.Post;
      qryEmployees.Close;
      qryDepts.Close;
      qryTypes.Close;
      qryEmpLevel.Close;                // RDW - 07/12/2018
      qryAutoTimerTask.Close;
      qryEmpAuthDept.Close;
//      dmAxiom.qryCurrencyList.Close;    // AES - 12/12/2018
//   FRegAxiom.Free;
      RemoveFromDesktop(Self);
   except
   //
   end;
end;

procedure TfrmEmployees.qryEmployeesBeforePost(DataSet: TDataSet);
begin
  if qryEmployees.FieldByName('CODE').AsString = '' then
  begin
    MsgErr('You must enter an Employee code');
    Abort;
  end;
  if qryEmployees.FieldByName('USER_NAME').AsString = '' then
  begin
    MsgErr('You must enter an Login Name');
    Abort;
  end
  else if qryEmployees.FieldByName('PASSWORD').AsString = '' then
    qryEmployees.FieldByName('PASSWORD').AsString := qryEmployees.FieldByName('CODE').AsString;
end;

procedure TfrmEmployees.tbtnEmpDeptClick(Sender: TObject);
var
  LfrmEmpDept: TfrmEmpDept;
begin
  qryDepts.Close;
  LfrmEmpDept := TfrmEmpDept.Create(Self);
  LfrmEmpDept.qrySource.Open;
  LfrmEmpDept.qrySource.Locate('CODE', Self.qryEmployees.FieldByName('DEPT').AsString, []);
  LfrmEmpDept.ShowModal;
  qryDepts.Open;
end;

procedure TfrmEmployees.tbtnEmpTypeClick(Sender: TObject);
var
  LfrmEmpType: TfrmEmpType;
begin
  qryTypes.Close;
  LfrmEmpType := TfrmEmpType.Create(Self);
  LfrmEmpType.qrySource.Open;
  LfrmEmpType.qrySource.Locate('CODE', Self.qryEmployees.FieldByName('TYPE').AsString, []);
  LfrmEmpType.ShowModal;
  qryTypes.Open;
end;

procedure TfrmEmployees.qryEmployeesAfterInsert(DataSet: TDataSet);
begin
//  cbViews.EditValue := 11;
  qryEmployees.FieldByName('ACCESSLEVEL').AsInteger := 9;
  qryEmployees.FieldByName('REFRESH').AsInteger := 60;
  qryEmployees.FieldByName('REOPENLENGTH').AsInteger := 10;
  qryEmployees.FieldByName('ACTIVE').AsString := 'Y';
  qryEmployees.FieldByName('ISPARTNER').AsString := 'N';
  qryEmployees.FieldByName('ISAUTHOR').AsString := 'N';
  qryEmployees.FieldByName('ISCONTROLLER').AsString := 'N';
  qryEmployees.FieldByName('ISOPERATOR').AsString := 'N';
  qryEmployees.FieldByName('ISFEEEARNER').AsString := 'N';
  qryEmployees.FieldByName('ISPARALEGAL').AsString := 'N';
  qryEmployees.FieldByName('VIEW_TYPE').AsInteger :=  11;
  qryEmployees.FieldByName('CLASSIC_VERSION').AsString := 'N';
end;

procedure TfrmEmployees.tbtnPasswordClick(Sender: TObject);
var
  LfrmPassword: TfrmPassword;
begin
  LfrmPassword := TfrmPassword.Create(Self);
  LfrmPassword.LoadEmp(qryEmployees.FieldByName('CODE').AsString);
end;

procedure TfrmEmployees.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  frmGenericSearch.SQL := 'SELECT CODE, NAME AS DESCR, ''N'' AS DEFAULTITEM FROM EMPLOYEE ORDER BY CODE';
  if frmGenericSearch.ShowModal = mrOK then
      qryEmployees.Locate('CODE', frmGenericSearch.qrySource.FieldByName('CODE').AsString, []);
  frmGenericSearch.Free();
end;

procedure TfrmEmployees.FormCreate(Sender: TObject);
var
   I, iCtr: integer;
begin
   FUserCode := '';
//   fWBW := TWebBrowserWrapper.Create(html_signature);
   qryAutoTimerTask.Open;
   aNew.Visible      := dmAxiom.Security.Employee.Create;
 //  aPassword.Enabled := dmAxiom.Security.Employee.Password;
   aDelete.Visible   := dmAxiom.Security.Employee.Delete;
   aEmpType.Enabled  := dmAxiom.Security.Employee.EmpType.Access;
   aEmpDept.Enabled  := dmAxiom.Security.Employee.Department;
   aLaunch.Enabled   := dmAxiom.Security.Employee.Security;
 //  aSecurity.Visible := dmAxiom.Security.Employee.Security;
   aDataSetFirst.Visible := dmAxiom.Security.Employee.Delete;
   aDataSetNext.Visible := dmAxiom.Security.Employee.Delete;
   aDataSetPrior.Visible := dmAxiom.Security.Employee.Delete;
   aDataSetLast.Visible := dmAxiom.Security.Employee.Delete;
   aPrint.Enabled := dmAxiom.Security.Employee.Security;
   btnFirst.Enabled := dmAxiom.Security.Employee.Delete;
   btnPrev.Enabled := dmAxiom.Security.Employee.Delete;
   btnNext.Enabled := dmAxiom.Security.Employee.Delete;
   btnLast.Enabled := dmAxiom.Security.Employee.Delete;

   dfUserName.Enabled := False;
   dbcbType.Enabled := dmAxiom.Security.Employee.Security;
   dbchkActive.Enabled := dmAxiom.Security.Employee.Security;
   dbcbFeeEarner.Enabled := dmAxiom.Security.Employee.Security;
   cbDepartment.Enabled := dmAxiom.Security.Employee.Security;
   dbtbRate.Enabled := dmAxiom.Security.Employee.Security;
   dbtbCost.Enabled := dmAxiom.Security.Employee.Security;
   cbSecurity.Enabled := dmAxiom.Security.Employee.Security;
   gbGLPosting.Enabled := dmAxiom.Security.Employee.Security;
   dblEntity.Enabled := dmAxiom.Security.Employee.Security;
   dblBranch.Enabled := dmAxiom.Security.Employee.Security;
   gbShowAs.Enabled := dmAxiom.Security.Employee.Security;
   dbeSignatory.Enabled := dmAxiom.Security.Employee.Security;
   dbtbName.Enabled := dmAxiom.Security.Employee.Security;
   dbtbCode.Enabled := dmAxiom.Security.Employee.Security;
   dbcCPrinter.Enabled := dmAxiom.Security.Employee.Security;
   dbcRPrinter.Enabled := dmAxiom.Security.Employee.Security;
   btnBudget.Enabled := dmAxiom.Security.Employee.Security;
   dtDOB.Enabled := dmAxiom.Security.Employee.Security;
   dtstartDate.Enabled := dmAxiom.Security.Employee.Security;
   dtEndDate.Enabled := dmAxiom.Security.Employee.Security;
   cmbfeeAuthority.Enabled := dmAxiom.Security.Employee.Security;
   cbFeeEnquiryAccess.Enabled := dmAxiom.Security.Employee.Security;
   bbtnUnlockUser.Enabled := dmAxiom.Security.Employee.Security;
   cbIsTimeRecorder.Enabled := dmAxiom.Security.Employee.Security;
   bbtonEmployeeTypes.Enabled := dmAxiom.Security.Employee.Security;
 //  cbAllowMultipleCopies.Enabled := dmAxiom.Security.Employee.Security;
   btnPassword.Enabled := dmAxiom.Security.Employee.Password;
   dbtxtOverheadUnits.Enabled := dmAxiom.Security.Employee.Edit;
   dbtbDailyChargeUnits.Enabled := dmAxiom.Security.Employee.Edit;
   dbtxtNonBillUnits.Enabled := dmAxiom.Security.Employee.Edit;
   rgSex.Enabled := dmAxiom.Security.Employee.Edit;
   dfPosition.Enabled := dmAxiom.Security.Employee.Edit;
   cbRestrictedMatters.Enabled := dmAxiom.Security.Employee.Edit;
   cbInfoTrack.Enabled := dmAxiom.Security.Employee.Edit;
//   pnlWorkingWeek.Enabled := dmAxiom.Security.Employee.Edit;
   chkGSTDefault.Enabled := dmAxiom.Security.Employee.Edit;
   rgPostTime.Enabled := dmAxiom.Security.Employee.Edit;
   tabNotes.TabVisible := dmAxiom.Security.Employee.Edit;
   cmbRptOutputLevel.Enabled := dmAxiom.Security.Employee.Edit;
   tabFinancial.TabVisible := dmAxiom.Security.Employee.Edit;
   grdEmpDepartments.Enabled := dmAxiom.Security.Employee.Edit;
   edAuthPassword.Enabled := dmAxiom.Security.Employee.Edit;
   edAuthClientPaymentLimit.Enabled := dmAxiom.Security.Employee.Edit;
   edAuthDisbPatmentLimit.Enabled := dmAxiom.Security.Employee.Edit;
   cbBankLineApprover.Enabled := dmAxiom.Security.Employee.Edit;
   cbFinancialDirector.Enabled := dmAxiom.Security.Employee.Edit;

   cbViews.Properties.Items.Clear;
   for I := 0 to dxNavBarViewsFactory.Count - 1 do
      cbViews.Properties.Items.Add(dxNavBarViewsFactory.Names[I]);
   cbViews.ItemIndex := frmDesktop.nbMain.View;

   cbViews.Enabled := (qryEmployees.FieldByName('CLASSIC_VERSION').AsString = 'N');

   StringPopulate(dbcCPrinter.Properties.Items, 'PRINTER', 'CODE','TYPE = ''C'' AND TRUST = ''G'' ');
   StringPopulate(dbcRPrinter.Properties.Items, 'PRINTER', 'CODE', 'TYPE = ''R'' AND TRUST = ''G'' ');
   StringPopulate(dbcTrustCPrinter.Properties.Items, 'PRINTER', 'CODE','TYPE = ''C'' AND TRUST = ''T'' ');
   StringPopulate(dbcTrustRPrinter.Properties.Items, 'PRINTER', 'CODE', 'TYPE = ''R'' AND TRUST = ''T'' ');

   dbcLabelPrinter.Properties.Items.Clear;
   FPrinters := TPrinter.Create;
   for iCtr := 0 to FPrinters.Printers.Count-1 do
      dbcLabelPrinter.Properties.Items.Add(FPrinters.Printers.Strings[iCtr]);

//   FRegAxiom := TRegistry.Create;

   tabEmailOptions.TabVisible := (SystemString('EMAIL_REG') <> '');
 //  cmbBxProfiles.Visible := (SystemString('EMAIL_REG') <> '');
   btnHTML.Visible := (SystemString('EMAIL_REG') <> '');
   btnRTF.Visible := (SystemString('EMAIL_REG') <> '');

   if cmbBxProfiles.Visible = True then
   begin
      try
        cmbBxProfiles.Properties.Items.Text := dmAxiom.MapiSession.GetProfiles(#13#10);
        cmbBxProfiles.Properties.Items.Add(''); // also add empty profilename for testing purposes
        cmbBxProfiles.ItemIndex  := cmbBxProfiles.Properties.Items.IndexOf(dmAxiom.MapiSession.GetDefaultProfile);
      except
    //    on e: Exception do
    //      MessageDlg(e.Message, mtError, [mbOK], 0);
      end;
   end;

//   dmAxiom.qryCurrencyList.Open;

   if SystemString('LOCALE_NAME') <> '' then
   begin
      chkILARSNo.Visible := False;
      dbedILARSNo.Visible := False;
   end;
end;

procedure TfrmEmployees.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if qryEmployees.State in [dsEdit, dsInsert] then
  begin
    if MsgAsk('Do you want to save your changes?') = mrYes then
      qryEmployees.Post
    else
      qryEmployees.Cancel;
  end;
end;

procedure TfrmEmployees.tbtnPostClick(Sender: TObject);
begin
  qryEmployees.FieldByName('ENTITY').AsString := dmAxiom.Entity;
  qryEmployees.Post;
end;

procedure TfrmEmployees.tbtnCancelClick(Sender: TObject);
begin
  qryEmployees.Cancel;
end;

procedure TfrmEmployees.dtpBirthDateChange(Sender: TObject);
begin
  if not(qryEmployees.Modified) and (qryEmployees.State <> dsInsert) then
    qryEmployees.Edit;
end;

procedure TfrmEmployees.qryEmployeesTYPEChange(Sender: TField);
begin
//  dmAxiom.oalAxiom.SendEvent('SECURITY_UPDATE', 'Update security settings');
end;

procedure TfrmEmployees.qryEmployeesRATEChange(Sender: TField);
begin
  if MsgAsk('Do you want to change the hourly rate for all employees who are type ' + qryTypes.FieldByName('DESCR').AsString) = mrYes then
  begin
    qryRateChange.ParamByName('Rate').AsFloat := qryEmployees.FieldByName('RATE').AsFloat;
    qryRateChange.ParamByName('EmpType').AsString := qryEmployees.FieldByName('TYPE').AsString;
    qryRateChange.ExecSQL;
  end;
end;

procedure TfrmEmployees.mnuFileExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmployees.FormHide(Sender: TObject);
begin
  qryBranch.Close;
  qryEntity.Close;
end;

procedure TfrmEmployees.dblBranchExit(Sender: TObject);
begin
  dbcCPrinter.Properties.Items.Clear;
  dbcRPrinter.Properties.Items.Clear;
  StringPopulate(dbcCPrinter.Properties.Items, 'PRINTER', 'CODE','TYPE = ''C'' AND BRANCH_CODE = nvl(''' + qryEmployees.FieldByName('BRANCH').AsString + ''',BRANCH_CODE)');
  StringPopulate(dbcRPrinter.Properties.Items, 'PRINTER', 'CODE', 'TYPE = ''C'' AND BRANCH_CODE = nvl(''' + qryEmployees.FieldByName('BRANCH').AsString + ''',BRANCH_CODE)');
end;

procedure TfrmEmployees.dblEntityPropertiesChange(Sender: TObject);
begin
   with qryBranch do
   begin
      if dblEntity.Text <> '' then
      begin
         Close;
         ParamByName('entity').AsString := dblEntity.EditValue;
         Open;
      end;
   end;
end;

procedure TfrmEmployees.aNewExecute(Sender: TObject);
begin
   qryEmployees.Insert;
   dfUserName.Enabled := True;
   dbtbCode.Properties.ReadOnly := False;
   dbtbCode.SetFocus;
end;

procedure TfrmEmployees.aDeleteExecute(Sender: TObject);
begin
  if MsgAsk('Are you sure you want to delete this employee?') = mrYes then
    qryEmployees.Delete;
end;

procedure TfrmEmployees.aPasswordExecute(Sender: TObject);
var
  LfrmPassword: TfrmPassword;
begin
  LfrmPassword := TfrmPassword.Create(Self);
//  LfrmPassword.tbOldPassword.Text := qryEmployees.FieldByName('PASSWORD').AsString;
  LfrmPassword.LoadEmp(qryEmployees.FieldByName('CODE').AsString);
end;

procedure TfrmEmployees.aPostExecute(Sender: TObject);
var
   sqlStatement: string;
   iCtr: integer;
   iGlComponentLength : integer;
   glComponentSetup : TglComponentSetup;
   sError : String;
   LregAxiom: TRegistry;
begin
    // validate the account length
    if CheckReqFields('EMPLOYEE', qryEmployees ) = False then
      exit;

    glComponentSetup := dmAxiom.getGlComponents;
    sError := '';
    iGlComponentLength := glComponentSetup.getComponentLength('ACCOUNT');
    if iGlComponentLength > 0 then // 0 if there is only gl component
    begin
        glComponentSetup.checkAccountField(qryEmployees,'FEE_CHART','Fee Chart',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEmployees,'FEEWOFF_CHART','Fee W/O Chart',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEmployees,'DISBUNREC_CHART','Fee U/R',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEmployees,'DISBWOFF_CHART','Disb W/O',iGlComponentLength,sError);
    end;

    if sError <> '' then
    begin
        MsgErr(sError);
        exit;
    end;

    try
       if qryEmployees.State in [dsInsert] then
       begin
         dmAxiom.procAddUser.ParamByName('username').AsString := dfUserName.Text;
         dmAxiom.procAddUser.ParamByName('u_password').AsString := dfUserName.Text;
         dmAxiom.procAddUser.Execute;
         dmAxiom.procAddUser.Close;
       end;
         // 23 Dec 2017 DW added profile change is Active directory being used
         if dmAxiom.USE_ACTIVE_DIRECTORY = 'Y' then
         begin
             dmAxiom.procAlterUserProfile.ParamByName('username').AsString := dfUserName.Text;
             dmAxiom.procAlterUserProfile.ParamByName('u_profile').AsString := 'AD_USER';
             dmAxiom.procAlterUserProfile.Execute;
             dmAxiom.procAlterUserProfile.Close;
         end;
    except
       on E: Exception do
          MsgErr('User '+dfUserName.Text+' appears to already exist in the database. Will attempt to add user to Insight.');
    end;

 
    if (EmpTypeChanged) then
    begin
      // Delete the Employee Type current shortcuts
      qryUpdate.SQL.Text := 'DELETE FROM EMPCUTS WHERE EMP = ' + quotedstr(dbtbCode.Text);
      qryUpdate.ExecSQL;
      qryEmpTypeCuts.Close;
      qryEmpTypeCuts.ParamByName('CODE').AsString := dbcbType.EditValue;
      qryEmpTypeCuts.Open;
      with qryEmpCuts do
      begin
         qryEmpCuts.Open;
         while not qryEmpTypeCuts.eof do
         begin
            qryEmpCuts.Insert;
            qryEmpCuts.FieldByName('EMP').AsString := dbtbCode.Text;
            qryEmpCuts.FieldByName('NAME').AsString := qryEmpTypeCuts.FieldByName('NAME').AsString;
            qryEmpCuts.FieldByName('IMAGEINDEX').AsInteger := qryEmpTypeCuts.FieldByName('IMAGEINDEX').AsInteger;
            qryEmpCuts.FieldByName('SHORTCUT_GROUP').AsInteger := qryEmpTypeCuts.FieldByName('SHORTCUT_GROUP').AsInteger;
            qryEmpCuts.Post;
            qryEmpTypeCuts.next;
         end;
      end;
      // Make sure there is nothing on the Desktop that shouldn't be there
      with qryUpdate do
      begin
         SQL.Clear;
         SQL.Add('delete from desktop');
         SQL.Add('where emp = ' + quotedstr(dbtbCode.Text));
         SQL.Add('  and imageindex not in ');
         SQL.Add('      (select imageindex from empcuts where emp = ' + quotedstr(dbtbCode.Text) + ')');
         ExecSQL;
      end;
   end;
{   begin
      with dmAxiom.qryUserAdd do
      begin
         sqlStatement := '';
         SQL.Clear;
         sqlStatement := 'CREATE USER '+ dfUserName.Text + ' IDENTIFIED BY '+ dfUserName.Text +
                         ' DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP ';
         SQL.Add(sqlStatement);
         try
            Execute;
         except
               // do nothing
         end;

         sqlStatement := '';
         SQL.Clear;
         sqlStatement := 'GRANT CONNECT TO '+ dfUserName.Text ;
         SQL.Add(sqlStatement);
         try
            Execute;
         except
               // do nothing
         end;

         sqlStatement := '';
         SQL.Clear;
         sqlStatement := 'GRANT AXIOM_UPDATE_ROLE TO '+ dfUserName.Text;
         SQL.Add(sqlStatement);
         try
            Execute;
         except
               // do nothing
         end;
      end;
   end;  }

{   LregAxiom := TRegistry.Create;
   try
      LregAxiom.RootKey := HKEY_CURRENT_USER;
      FINIstartup := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'Axiom.INI');
      dmAxiom.RegistryRoot := FINIstartup.ReadString('Main', 'RegistryRoot', 'Software\Colateral\Axiom');
      LregAxiom.OpenKey(dmAxiom.RegistryRoot + '\Database', True);
      LregAxiom.WriteBool('AllowMultipleCopies', cbAllowMultipleCopies.Checked);
   finally
      LregAxiom.Free;
   end;    }
   qryEmployees.FieldByName('ENTITY').AsString := dmAxiom.Entity;
   qryEmployees.Post;
   dfUserName.Enabled := False;
   dbtbCode.Properties.ReadOnly := True;
   procNonWorkingDays.ParamByName('P_Code').AsString := dbtbCode.Text;
   procNonWorkingDays.Execute;
   procNonWorkingDays.Close;
end;

procedure TfrmEmployees.aEmpTypeExecute(Sender: TObject);
begin
   with TfrmSecurity.Create(Self) do
      ShowSecurity('EMP', Self.qryEmployees.FieldByName('CODE').AsString, Self.qryEmployees.FieldByName('TYPE').AsString );

{  qryTypes.Close;
  LfrmEmpType := TfrmEmpType.Create(Self);
  LfrmEmpType.qrySource.Open;
  LfrmEmpType.qrySource.Locate('CODE', Self.qryEmployees.FieldByName('TYPE').AsString, []);
  LfrmEmpType.ShowModal;
  qryTypes.Open;  }
end;

procedure TfrmEmployees.aEmpDeptExecute(Sender: TObject);
var
  LfrmEmpDept: TfrmEmpDept;
begin
  qryDepts.Close;
  LfrmEmpDept := TfrmEmpDept.Create(Self);
  LfrmEmpDept.qrySource.Open;
  LfrmEmpDept.qrySource.Locate('CODE', Self.qryEmployees.FieldByName('DEPT').AsString, []);
  LfrmEmpDept.ShowModal;
  qryDepts.Open;
end;

procedure TfrmEmployees.aLaunchExecute(Sender: TObject);
var
  LfrmEmpLaunch: TfrmEmpLaunch;
begin
  LfrmEmpLaunch := TfrmEmpLaunch.Create(Self);
  LfrmEmpLaunch.SetEmp(qryEmployees.FieldByName('CODE').AsString);
end;

procedure TfrmEmployees.aPrintExecute(Sender: TObject);
begin
//  qrEmplist.Preview;
  rptEmployeeList.Print;
end;

procedure TfrmEmployees.aExitExecute(Sender: TObject);
begin
  Close();
//  RemoveFromDesktop(Self);
end;

procedure TfrmEmployees.aHelpExecute(Sender: TObject);
begin
  MessageDlg('No help yet', mtConfirmation, [mbOK], 0);
end;

procedure TfrmEmployees.PostCancelUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := qryEmployees.State in [dsInsert, dsEdit];
end;

procedure TfrmEmployees.NewDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := qryEmployees.State  = dsBrowse;
end;

procedure TfrmEmployees.dbtbCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  frmGenericSearch : TfrmGenericSearch;
begin
   try
      frmGenericSearch := TfrmGenericSearch.Create(Self);
      frmGenericSearch.SQL := 'SELECT CODE, NAME AS DESCR, ''N'' AS DEFAULTITEM FROM EMPLOYEE ORDER BY CODE';
      if frmGenericSearch.ShowModal = mrOK then
         qryEmployees.Locate('CODE', frmGenericSearch.qrySource.FieldByName('CODE').AsString, []);
   finally
//      frmGenericSearch.Free();
   end;

end;

procedure TfrmEmployees.dbtbNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    if not qryEmployees.Modified then
      qryEmployees.Edit;
    qryEmployees.FieldByName('NAME').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  end;
end;

procedure TfrmEmployees.cxDBLookupComboBox2PropertiesCloseUp(
  Sender: TObject);
begin
     dbcCPrinter.Properties.Items.Clear;
  dbcRPrinter.Properties.Items.Clear;
  StringPopulate(dbcCPrinter.Properties.Items, 'PRINTER', 'CODE','TYPE = ''C'' AND BRANCH_CODE = nvl(''' + qryEmployees.FieldByName('BRANCH').AsString + ''',BRANCH_CODE)');
  StringPopulate(dbcRPrinter.Properties.Items, 'PRINTER', 'CODE', 'TYPE = ''C'' AND BRANCH_CODE = nvl(''' + qryEmployees.FieldByName('BRANCH').AsString + ''',BRANCH_CODE)');

end;

procedure TfrmEmployees.dbtbCodeExit(Sender: TObject);
begin
   dfUserName.Text := dbtbCode.Text;
   dfUserName.EditValue := dbtbCode.Text;
end;

procedure TfrmEmployees.cbViewsPropertiesChange(Sender: TObject);
begin
   if not qryEmployees.Modified then
   begin
      if (not qryEmployees.Active) then
         qryEmployees.Open;
      qryEmployees.Edit;
   end;
   frmDesktop.nbMain.View := cbViews.ItemIndex;
   qryEmployees.FieldByName('VIEW_TYPE').AsInteger := cbViews.ItemIndex;
end;

procedure TfrmEmployees.dfPositionPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   QuickCode(dfPosition, DisplayValue);
end;

procedure TfrmEmployees.btnBudgetClick(Sender: TObject);
var
   loTfmBudgets : TfmBudgets;
begin
   loTfmBudgets := TfmBudgets.Create(self);
   loTfmBudgets.setForEmployee(dbtbCode.Text);

   loTfmBudgets.ShowModal;
end;

procedure TfrmEmployees.dbcbEmpLevelClick(Sender: TObject);
begin
  EmpLevelChanged := True;
end;

procedure TfrmEmployees.dbcbTypeClick(Sender: TObject);
begin
   EmpTypeChanged := True
end;

procedure TfrmEmployees.chkILARSNoClick(Sender: TObject);
begin
   dbedILARSNo.Enabled := chkILARSNo.Checked;
end;

procedure TfrmEmployees.dxPopupImagePopup(Sender: TObject);
begin
//        dxPopupImage.ItemLinks.Clear;
//        dxPopupImage.ItemLinks.Add.Item :=  dxattachImage;
end;

procedure TfrmEmployees.dxattachImageClick(Sender: TObject);
var
   sFileName: string;
   iPos: integer;
   bStream, fStream: TStream;
begin
  dlFile.Filter := 'JPG|*.jpg';
  if not dlFile.Execute then
    exit;

  sFileName := dlFile.FileName;

  if qryEmployees.State in [dsBrowse] then
    qryEmployees.edit;


  // make sure the file exists

  // check the document

  bStream := qryEmployees.CreateBlobStream(qryEmployees.fieldByname('IMAGE'), bmReadWrite);
  fStream := TFileStream.Create(sFileName, fmOpenRead);
  bStream.CopyFrom(fStream, fStream.Size);
  bStream.free;
  fStream.free;
  btnAttachImage.Visible := False;
end;

procedure TfrmEmployees.qryEmployeesAfterScroll(DataSet: TDataSet);
var
   LregAxiom: TRegistry;
   Stm: TMemoryStream;
   Blob: TStream;
   BlobFld: TBlobField;
begin
   btnAttachImage.Visible := qryEmployees.FieldByName('IMAGE').IsNull;

   with qryBranch do
   begin
      if dblEntity.Text <> '' then
      begin
         Close;
         ParamByName('entity').AsString := dblEntity.EditValue;
         Open;
      end;
   end;

   qryEmpAuthDept.Close;
   qryEmpAuthDept.ParamByName('emp_code').AsString := DataSet.FieldByName('code').AsString;
   qryEmpAuthDept.Open;

   Self.Caption := 'Employee - ' + DataSet.FieldByName('code').AsString;

{   Stm := TMemoryStream.Create;
   try
      Stm.Position := 0;
      BlobFld := DataSet.fieldByname('EMAIL_SIGNATURE_HTML') as TBlobField;
      Blob := DataSet.CreateBlobStream(BlobFld, bmRead);
      if not BlobFld.IsNull then
      begin
         Stm.CopyFrom(Blob, Blob.Size);
         fWBW.LoadFromStream(Stm);
      end;
   finally
      Stm.Free;
      Blob.Free;
   end;      }

{   if qryEmployees.FieldByName('CODE').AsString <> dmAxiom.UserID then
      cbAllowMultipleCopies.Checked := False
   else
   begin
      LregAxiom := TRegistry.Create;
      try
         LregAxiom.RootKey := HKEY_CURRENT_USER;
         FINIstartup := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'Axiom.INI');
         dmAxiom.RegistryRoot := FINIstartup.ReadString('Main', 'RegistryRoot', 'Software\Colateral\Axiom');
         LregAxiom.OpenKey(dmAxiom.RegistryRoot + '\Database', True);
         cbAllowMultipleCopies.Checked := LregAxiom.ReadBool('AllowMultipleCopies');
      finally
         LregAxiom.Free;
      end;
   end;      }
end;

procedure TfrmEmployees.tbRemoveImageClick(Sender: TObject);
var
   iPos: integer;
   bStream, fStream: TStream;
begin
  if qryEmployees.State in [dsBrowse] then
    qryEmployees.edit;

  qryEmployees.fieldByname('IMAGE').Clear;
{  bStream := qryEmployees.  CreateBlobStream(qryEmployees.fieldByname('IMAGE'), bmReadWrite);
  fStream := TFileStream. Create(sFileName, fmOpenRead);
  bStream.  CopyFrom(fStream, fStream.Size);
  bStream.free;
  fStream.free;  }
  btnAttachImage.Visible := True;
end;

procedure TfrmEmployees.qryEmpAuthDeptAfterInsert(DataSet: TDataSet);
begin
   Dataset.FieldByName('emp_code').AsString := qryEmployees.FieldByName('code').AsString;
end;

procedure TfrmEmployees.qryEmployeesAfterCancel(DataSet: TDataSet);
begin
   btnAttachImage.Visible := qryEmployees.FieldByName('IMAGE').IsNull;
end;

procedure TfrmEmployees.btnHTMLClick(Sender: TObject);
var
//   frmGenEditor : TfrmGenEditor;
   sFileName: string;
//   bStream: TMemoryStream;
   bStream, fStream: TStream;
begin
  { frmGenEditor := TfrmGenEditor.Create(frmEmployees);
   frmGenEditor.EditorValue := TMemoryStream.Create;
   TBlobField(qryEmployees.FieldByName('email_Signature')).SaveToStream(frmGenEditor.EditorValue);

   if frmGenEditor.ShowModal = mrOk then
   begin
      if qryEmployees.State in [dsBrowse] then
         qryEmployees.edit;

      bStream := TMemoryStream.Create;
      frmGenEditor.Editor.Lines.SaveToStream(bStream);
      TBlobField(qryEmployees.FieldByName('email_Signature')).LoadFromStream(bStream);
      bStream.free;
   end;
   frmGenEditor.Free;   }

   case TcxButton(Sender).Tag of
      0:  dlFile.Filter := 'HTM|*.htm|HTML|*.html';
      1:  dlFile.Filter := 'RTF|*.rtf';
      2:  dlFile.Filter := 'JPG|*.jpg|JPEG|*.jpeg|PNG|*.png';
   end;

   if not dlFile.Execute then
      exit;

   sFileName := dlFile.FileName;

   if qryEmployees.State in [dsBrowse] then
      qryEmployees.edit;

  // check the document
   case TcxButton(Sender).Tag of
      0: begin
//            bStream := qryEmployees.CreateBlobStream(qryEmployees.fieldByname('email_Signature_html'), bmReadWrite);
//            fWBW.LoadFromFile(sFileName);
         end;
      1: bStream := qryEmployees.CreateBlobStream(qryEmployees.fieldByname('email_Signature_rtf'), bmReadWrite);
      2: bStream := qryEmployees.CreateBlobStream(qryEmployees.fieldByname('email_Signature'), bmReadWrite);
   end;
   fStream := TFileStream.Create(sFileName, fmOpenRead);
   bStream.CopyFrom(fStream, fStream.Size);
   bStream.free;
   fStream.free;
end;

procedure TfrmEmployees.cbAllowMultipleCopiesPropertiesChange(
  Sender: TObject);
begin
   qryEmployees.Edit;
end;

procedure TfrmEmployees.btnedtFolderListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   CurrentFolderID: TRwMapiEntryID;
begin
   RwMapiFolderDialog.InitialMsgStoreID := dmAxiom.MapiSession.GetDefaultMsgStoreID;
   if RwMapiFolderDialog.Execute then
   begin
      CurrentFolderID := RwMapiFolderDialog.FolderID;
      btnedtFolderList.Text := RwMapiFolderDialog.FolderName;
      if qryEmployees.State = dsBrowse then
         qryEmployees.Edit;
      qryEmployees.FieldByName('EMAIL_INCOMING_FLDR').AsString := RwMapiFolderDialog.FolderName;
   end;
end;

procedure TfrmEmployees.bbtnUnlockUserClick(Sender: TObject);
begin
   try
      dmAxiom.procUnlockUser.ParamByName('username').AsString := dfUserName.Text;
      dmAxiom.procUnlockUser.Execute;
   finally
      dmAxiom.procUnlockUser.Close;
   end;
end;


procedure TfrmEmployees.bbtonEmployeeTypesClick(Sender: TObject);
var
  LfrmEmpType: TfrmEmpType;
begin
   qryTypes.Close;
   try
      LfrmEmpType := TfrmEmpType.Create(Self);
      LfrmEmpType.qrySource.Open;
      LfrmEmpType.qrySource.Locate('CODE', Self.qryEmployees.FieldByName('TYPE').AsString, []);
      LfrmEmpType.ShowModal;
   finally
      LfrmEmpType.Free
   end;
   qryTypes.Open;
end;

procedure TfrmEmployees.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmEmployees.cxDBComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
   FGridChanged := True;
end;

procedure TfrmEmployees.SetWorkHours(Sender: TObject);
var
   ATotal: double;
begin
   ATotal := 0;
   ATotal :=   spinWorkMonday.Value + spinWorkTuesday.Value + spinWorkWednesday.Value + spinWorkThursday.Value + spinWorkFriday.Value + spinWorkSaturday.Value + spinWorkSunday.Value;
   if ATotal < 0 then
   begin
      ATotal := 0;
   end;
   if (ATotal > 0) then
      edWeeklyHours.EditValue :=  FloatToStr(ATotal);

   if VarIsNull(edWeeklyHours.EditValue) = False then
   begin
      if (ATotal = 0) and (StrToFloat(edWeeklyHours.EditValue) = 0) then
         edWeeklyHours.EditValue :=  FloatToStr(40);
   end;
end;

procedure TfrmEmployees.SetChargeHours(Sender: TObject);
var
   ATotal: double;
begin
   ATotal := 0;
   ATotal :=   spinChargeMonday.Value + spinChargeTuesday.Value + spinChargeWednesday.Value + spinChargeThursday.Value + spinChargeFriday.Value + spinChargeSaturday.Value + spinChargeSunday.Value;
   if ATotal < 0 then
   begin
      ATotal := 0;
   end;
   if (ATotal > 0) then
      dbtbDailyChargeUnits.EditValue :=  FloatToStr(ATotal);

   if VarIsNull(dbtbDailyChargeUnits.EditValue) = False then
   begin
      if (ATotal = 0) and (StrToFloat(dbtbDailyChargeUnits.EditValue) = 0) then
         dbtbDailyChargeUnits.EditValue :=  FloatToStr(40);
   end;
end;

procedure TfrmEmployees.spinChargeMondayPropertiesChange(Sender: TObject);
begin
   SetChargeHours(Sender);
end;

procedure TfrmEmployees.spinWorkSundayPropertiesChange(Sender: TObject);
begin
   SetWorkHours(Sender);
end;

end.
