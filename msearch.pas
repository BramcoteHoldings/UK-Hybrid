unit MSearch;

interface

uses
  Windows, Forms, SysUtils, Variants, FMXUtils, Graphics, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxMaskEdit, cxCurrencyEdit, cxDBLookupComboBox, cxContainer, Vcl.Menus,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  scExcelExport, ppDB, Vcl.Dialogs, dxPSCore, dxPScxCommon,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBar, dxBarExtItems, cxClasses,
  ppDBPipe, ppDBBDE, ppParameter, ppDesignLayer, raCodMod, ppModule, ppBands,
  ppMemo, ppCtrls, ppStrtch, ppRegion, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, Vcl.StdActns, System.Classes,
  System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan, DBAccess,
  Uni, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Controls, MemDS,
  cxLabel, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, Vcl.StdCtrls,
  NumberEdit, cxGroupBox, cxRadioGroup, Vcl.ComCtrls, cxButtons, cxCheckBox,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, cxGridExportLink, ppIniStorage,
  cxDateUtils, ComObj, ppFileUtils, DateUtils, Types, dxCore, dxPSDBTCLnk;


const
  imgWORD = 2;
  imgWP = 3;
  pnlMATTERS = 0;
  pnlFILTER = 1;
  opSTATIC = 'Static Other Parties';
  opVARIABLE = 'Variable Other Parties';
  MinWidth = 688;

type
  TLookup = (luUnassigned, luClient, luFileID);

  TfrmMatterSearch = class(TForm)
    qryMatters1: TUniQuery;
    dsMatters: TDataSource;
    ilstToolbar: TImageList;
    sbarFilter: TStatusBar;
    qryTotal: TUniQuery;
    tmrSearch: TTimer;
    dsMatterType: TUniDataSource;
    qPartner: TUniQuery;
    qPartnerCODE: TStringField;
    qPartnerNAME: TStringField;
    dsPartner: TDataSource;
    qController: TUniQuery;
    dsController: TDataSource;
    qControllerCODE: TStringField;
    qControllerNAME: TStringField;
    qAuthor: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    dsAuthor: TDataSource;
    qOperator: TUniQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    dsOperator: TDataSource;
    ActionManager: TActionManager;
    aRefresh: TAction;
    aClearAll: TAction;
    aMerge: TAction;
    aPrint: TAction;
    aHelp: TAction;
    aFileExit: TWindowClose;
    aPrintLabelsAll: TAction;
    qPrintLabelsSelected: TAction;
    aPrintDetails: TAction;
    aPrintStatus: TAction;
    aButtonOk: TAction;
    aRecentHolder: TAction;
    rptMatterList: TppReport;
    ppBDEPipeline2: TppBDEPipeline;
    rptMatterStatus: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppVariable2: TppVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBFileId: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppVariable3: TppVariable;
    ppLabel20: TppLabel;
    ppDBText5: TppDBText;
    qryMatterType: TUniQuery;
    dsMatterType1: TUniDataSource;
    qryMatterSubType: TUniQuery;
    dsMatterSubType: TUniDataSource;
    qryBranch: TUniQuery;
    dsBranch: TUniDataSource;
    qryJurisdiction: TUniQuery;
    qryMatterStatus: TUniQuery;
    dsJurisdiction: TUniDataSource;
    dsMatterStatus: TUniDataSource;
    StyleRepository: TcxStyleRepository;
    styBand: TcxStyle;
    styHeader: TcxStyle;
    stySelection: TcxStyle;
    qryGetLabelName: TUniQuery;
    qryGetLabelNameFIELDNAME: TStringField;
    styContent: TcxStyle;
    styChildBitmap: TcxStyle;
    dxBarManager1: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarMRUListMatters: TdxBarMRUListItem;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
    dbgrMatters: TcxGrid;
    vMatters: TcxGridDBTableView;
    vMattersPARENT: TcxGridDBColumn;
    vMattersTITLE: TcxGridDBColumn;
    vMattersFILEID: TcxGridDBColumn;
    vMattersSHORTDESCR: TcxGridDBColumn;
    vMattersLONGDESCR: TcxGridDBColumn;
    vMattersNMATTER: TcxGridDBColumn;
    vMattersPARTNER: TcxGridDBColumn;
    vMattersAUTHOR: TcxGridDBColumn;
    vMattersTYPE: TcxGridDBColumn;
    vMattersCLIENTID: TcxGridDBColumn;
    vMattersARCHIVENUM: TcxGridDBColumn;
    vMattersSUBTYPE: TcxGridDBColumn;
    vMattersSTATUS: TcxGridDBColumn;
    vMattersJURISDICTION: TcxGridDBColumn;
    vMattersMATTERSTATUS2: TcxGridDBColumn;
    dbgrMattersLevel1: TcxGridLevel;
    tabFilters: TcxTabSheet;
    cbShowRecentlyAccessed: TcxCheckBox;
    Label14: TLabel;
    edtClientSearch: TEdit;
    Label21: TLabel;
    edtFileSearch: TEdit;
    gbOpened: TcxGroupBox;
    Label19: TLabel;
    dtpOpenedSince: TDateTimePicker;
    dtpOpenedBefore: TDateTimePicker;
    Label20: TLabel;
    cxGroupBox1: TcxGroupBox;
    gbCompleted: TcxGroupBox;
    Label27: TLabel;
    dtpCompletedSince: TDateTimePicker;
    dtpCompletedBefore: TDateTimePicker;
    Label28: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label30: TLabel;
    dtpSLESince: TDateTimePicker;
    dtpSLEBefore: TDateTimePicker;
    Label29: TLabel;
    gbBalances: TcxGroupBox;
    Label10: TLabel;
    neWIP: TNumberEdit;
    neDebtors: TNumberEdit;
    neDisb: TNumberEdit;
    neFeesBilled: TNumberEdit;
    neSund: TNumberEdit;
    neTrust: TNumberEdit;
    neClearTrust: TNumberEdit;
    Label18: TLabel;
    lblTrust: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    fraIncludes: TcxGroupBox;
    Label5: TLabel;
    tbDesc: TEdit;
    tbOPRef: TEdit;
    tbOtherParty: TEdit;
    tbContact: TEdit;
    edBillTo: TEdit;
    tbNotes: TEdit;
    tbClientCode: TEdit;
    cmbOPCategory: TComboBox;
    Label23: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label22: TLabel;
    Label7: TLabel;
    bnClearAll: TcxButton;
    fraEqual: TcxGroupBox;
    lblPartner: TLabel;
    lblController: TLabel;
    lblAuthor: TLabel;
    lblOperator: TLabel;
    Label6: TLabel;
    cbOperator: TcxLookupComboBox;
    cbAuthor: TcxLookupComboBox;
    cbController: TcxLookupComboBox;
    cbPartner: TcxLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label24: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    chkEntity: TcxCheckBox;
    cbType: TcxLookupComboBox;
    cbSubType: TcxLookupComboBox;
    cbBranch: TcxLookupComboBox;
    cbJurisdiction: TcxLookupComboBox;
    cbStatus: TcxLookupComboBox;
    dxBarButton10: TdxBarButton;
    cmbDepartment: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    qryDepartment: TUniQuery;
    dsDepartment: TUniDataSource;
    rgMatterOptions: TcxRadioGroup;
    cbWorkFlowType: TcxLookupComboBox;
    qryWorkFlowType: TUniQuery;
    dsWorkFlowType: TUniDataSource;
    bbtnMSWord: TdxBarButton;
    cxStyle1: TcxStyle;
    lblParaLegal: TLabel;
    qParaLegal: TUniQuery;
    dsParaLegal: TUniDataSource;
    cmbParaLegal: TcxLookupComboBox;
    vMattersDESCRIPTION: TcxGridDBColumn;
    cxGridPopupMenu: TcxGridPopupMenu;
    vMattersROW_COLOUR: TcxGridDBColumn;
    styDebtorStatus: TcxStyle;
    cmbDebtorStatus: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    qryDebtorStatus: TUniQuery;
    dsDebtorStatus: TUniDataSource;
    ppParameterList1: TppParameterList;
    vMattersARCHIVEREVIEW: TcxGridDBColumn;
    vMattersARCHIVEDEST: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    GridReportLink: TdxGridReportLink;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    OpenDialog: TOpenDialog;
    aPrintGrid: TAction;
    aPrinttoXL: TAction;
    vMattersARCHIVEBOX: TcxGridDBColumn;
    vMattersARCHVLOCN: TcxGridDBColumn;
    chkOpenedSince: TCheckBox;
    chkOpenedBefore: TCheckBox;
    chkCompletedSince: TCheckBox;
    chkCompletedBefore: TCheckBox;
    chkSLESince: TCheckBox;
    chkSLEBefore: TCheckBox;
    cxGroupBox3: TcxGroupBox;
    chkArchivedDate: TCheckBox;
    dtpArchivedDate: TDateTimePicker;
    Label26: TLabel;
    Label31: TLabel;
    edArchivedNotes: TcxTextEdit;
    Label32: TLabel;
    edBoxNumber: TcxTextEdit;
    dsArchiveExp: TUniDataSource;
    qryArchiveExp: TUniQuery;
    Label33: TLabel;
    Label34: TLabel;
    chkArchivedDateTo: TCheckBox;
    dtpArchivedDateTo: TDateTimePicker;
    dbgrMattersLevel2: TcxGridLevel;
    qryMatterArch: TUniQuery;
    dsMatterArch: TUniDataSource;
    tvMatterArch: TcxGridDBTableView;
    tvMatterArchNMATTER: TcxGridDBColumn;
    tvMatterArchARCHIVEBOX: TcxGridDBColumn;
    tvMatterArchARCHVLOCN: TcxGridDBColumn;
    tvMatterArchCREATED: TcxGridDBColumn;
    tvMatterArchCREATED_BY: TcxGridDBColumn;
    tvMatterArchNARCH_LOC: TcxGridDBColumn;
    vMattersRESTRICT_ACCESS: TcxGridDBColumn;
    Panel1: TPanel;
    Label9: TLabel;
    tbClientSearch: TcxTextEdit;
    Label8: TLabel;
    tbClientMatterSearch: TcxTextEdit;
    cbShowChildren: TcxCheckBox;
    lblArchiveSearch: TLabel;
    tbArchiveSearch: TEdit;
    bnOk: TcxButton;
    bnCancel: TcxButton;
    cxGroupBox4: TcxGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    dtpArchivedSince: TDateTimePicker;
    dtpArchivedBefore: TDateTimePicker;
    chkArchivedSince: TCheckBox;
    chkArchivedBefore: TCheckBox;
    lblArchivedNo: TLabel;
    edtArchiveNumber: TcxTextEdit;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    plMatters: TppDBPipeline;
    qryMattersRpt: TUniQuery;
    dsMattersRpt: TUniDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppVariable1: TppVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppRegion1: TppRegion;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText7: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppDBText1: TppDBText;
    ppLine5: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppVariable4: TppVariable;
    ppLabel21: TppLabel;
    ppLine4: TppLine;
    raCodeModule1: TraCodeModule;
    Label38: TLabel;
    edtBarcode: TcxTextEdit;
    tvMatterArchBARCODE: TcxGridDBColumn;
    vMattersWIP: TcxGridDBColumn;
    vMattersDEBTORS: TcxGridDBColumn;
    vMattersTRUST: TcxGridDBColumn;
    Label39: TLabel;
    edtBarcodeSearch: TcxTextEdit;
    styArchivedMatter: TcxStyle;
    tvMatterArchFOLDER_DTLS: TcxGridDBColumn;
    tvMatterArchBOX_DESTROY_DATE: TcxGridDBColumn;
    tvMatterArchAUTHORISED_BY: TcxGridDBColumn;
    tvMatterArchCHECKED_BY_1: TcxGridDBColumn;
    tvMatterArchCHECKED_BY_2: TcxGridDBColumn;
    scExcelExport: TscExcelExport;
    bbtnWIPNotes: TdxBarButton;
    aWIPNotes: TAction;
    vMattersBILL_AMOUNT: TcxGridDBColumn;
    vMattersCONTROLLER: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrMatters1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EnableTimer(Sender: TObject);
    procedure CheckReturn(Sender: TObject; var Key: Char);
    procedure cbPartnerKeyPress(Sender: TObject; var Key: Char);
    procedure tabGridShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FilterItemChange(Sender: TObject);
    procedure cbBranchChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cbWorkFlowTypeChange(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure chkArchivedClick(Sender: TObject);
    procedure cbJurisdictionChange(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure cbSubType1Change(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aClearAllExecute(Sender: TObject);
    procedure aMergeExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aPrintLabels(Sender: TObject);
    procedure aPrintStatusExecute(Sender: TObject);
    procedure aButtonOkExecute(Sender: TObject);
    procedure OnUpdatePage(Sender: TObject);
    procedure aRecentHolderExecute(Sender: TObject);
    procedure aFileExitExecute(Sender: TObject);
    procedure aFileExitUpdate(Sender: TObject);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
    procedure rptMatterStatusPreviewFormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable4Calc(Sender: TObject; var Value: Variant);
    procedure cbTypeChange(Sender: TObject);
    procedure cbSubTypeChange(Sender: TObject);
    procedure cbTypeDropDown(Sender: TObject);
    procedure cbSubTypeDropDown(Sender: TObject);
    procedure cbPartnerDropDown(Sender: TObject);
    procedure cbControllerDropDown(Sender: TObject);
    procedure cbAuthorDropDown(Sender: TObject);
    procedure cbOperatorDropDown(Sender: TObject);
    procedure cbOperatorEnter(Sender: TObject);
    procedure cbAuthorEnter(Sender: TObject);
    procedure cbControllerEnter(Sender: TObject);
    procedure cbPartnerEnter(Sender: TObject);
    procedure cbWorkFlowTypeDropDown(Sender: TObject);
    procedure cmbOPCategoryChange(Sender: TObject);
    procedure vMattersColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure tbFileSearchChange(Sender: TObject);
    procedure tbClientSearchChange(Sender: TObject);
    procedure dxBarSubItem2Popup(Sender: TObject);
    procedure cbTypePropertiesInitPopup(Sender: TObject);
    procedure cbSubTypePropertiesInitPopup(Sender: TObject);
    procedure cbBranchPropertiesInitPopup(Sender: TObject);
    procedure cbJurisdictionPropertiesInitPopup(Sender: TObject);
    procedure cbStatusPropertiesInitPopup(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cmbDepartmentPropertiesInitPopup(Sender: TObject);
    procedure cmbDepartmentPropertiesChange(Sender: TObject);
    procedure rgMatterOptionsClick(Sender: TObject);
    procedure cxLookupComboBox1PropertiesInitPopup(Sender: TObject);
    procedure tabFiltersShow(Sender: TObject);
    procedure bbtnMSWordClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbParaLegalEnter(Sender: TObject);
    procedure vMattersCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aPrintGridExecute(Sender: TObject);
    procedure aPrinttoXLExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkOpenedSinceClick(Sender: TObject);
    procedure chkOpenedBeforeClick(Sender: TObject);
    procedure chkCompletedSinceClick(Sender: TObject);
    procedure chkCompletedBeforeClick(Sender: TObject);
    procedure chkSLESinceClick(Sender: TObject);
    procedure chkSLEBeforeClick(Sender: TObject);
    procedure chkArchivedDateClick(Sender: TObject);
    procedure chkArchivedDateToClick(Sender: TObject);
    procedure chkArchivedSinceClick(Sender: TObject);
    procedure chkArchivedBeforeClick(Sender: TObject);
    procedure vMattersStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure vMattersPARTNERStylesGetHeaderStyle(Sender: TcxGridTableView;
      AColumn: TcxGridColumn; var AStyle: TcxStyle);
    procedure vMattersAUTHORStylesGetHeaderStyle(Sender: TcxGridTableView;
      AColumn: TcxGridColumn; var AStyle: TcxStyle);
    procedure edtBarcodeSearchPropertiesChange(Sender: TObject);
    procedure edtBarcodePropertiesChange(Sender: TObject);
    procedure edBoxNumberPropertiesChange(Sender: TObject);
    procedure aWIPNotesExecute(Sender: TObject);
    procedure vMattersCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
  private
    { Private declarations }
    FLookup: TLookup;
    SaveFilter, SaveConfig, RefreshSearch: Boolean;
    sMatterTypeCode : String;
    sMatterSubTypeCode : String;
    sWorkFlowCode : String;
    sBranchCode : String;
    sJurisdictionCode : String;
    sStatusCode : String;
    bClosedOnly : boolean;
    FRecentActions: TList;


    procedure MakeSQL(bSearch: boolean = False);
    procedure MakeTitle;
    procedure AddTitle(sDescr: string; sValue: string);
    procedure SetReopenList;
    procedure setDisplayNames;
    procedure DoSetParameters(DataSet: TUniQuery; DataSetTotal: TUniQuery = nil);
  public
    { Public declarations }
    function FindMatter(sFileID: string): boolean;
    procedure MatterArchiveInit;
    property Lookup: TLookup read FLookup write FLookup;
  end;

var
  frmMatterSearch: TfrmMatterSearch;


implementation

uses
  AxiomData, MiscFunc, WriteMerge,
  OptionsUser, WaitAnimate, TableCache, Word2000, Office2000, DebtorNotes,
  MatterLabel, FeeNotes;

{$R *.DFM}

var
  sSQL,
  sTables,
  sSQLArchive,
  sSQLArchiveTemp,
  sTotalTables,
  sSQLArchiveExport,
  sSQLArchiveExcelTemp : string;
  sWhereClause : string;
  sOrderBy : string;
  sLastFileID : string;
  bAlreadyShown : boolean;
  bNoFilter : boolean;
  sTitle : string;
  sAND : string;
  sGroupBy, sChildGroupBy: string;
  MatterLabel: TMatterLabel;

procedure TfrmMatterSearch.FormShow(Sender: TObject);
var
   sTempValue: string;
begin
   if dmAxiom.WANEnabled then
      PageSearch.ActivePage := tabFilters
   else
   begin
      pageSearch.ActivePage := tabGrid;
      MakeSql();
   end;

   if not bAlreadyShown then
   begin
{     sTempValue := '';

     sTempValue := SettingLoadString('Matter Search', 'Operator');
     if(sTempValue = '') then
       cbOperator.EditValue := sTempValue
     else
     begin
       qOperator.Open();
       cbOperator.EditValue    := sTempValue;
     end;

     sTempValue := SettingLoadString('Matter Search', 'Partner');
     if( sTempValue = '') then
       cbPartner.EditValue := sTempValue
     else
     begin
       qPartner.Open();
       cbPartner.EditValue     := sTempValue;
     end;

     sTempValue := SettingLoadString('Matter Search', 'Controller');
     if( sTempValue = '') then
       cbController.EditValue := sTempValue
     else
     begin
       qController.Open();
       cbController.EditValue  := sTempValue;
     end;

     sTempValue := SettingLoadString('Matter Search', 'Author');
     if( sTempValue = '') then
       cbAuthor.EditValue := sTempValue
     else
     begin
       qAuthor.Open();
       cbAuthor.EditValue      := sTempValue;
     end;

     sTempValue := SettingLoadString('Matter Search', 'Type');
     if (sTempValue <> '') then
     begin
        qryMatterType.Open();
        cbType.LookupKeyValue := sTempValue;
        cbTypeChange(Self);
     end;

     sTempValue := SettingLoadString('Matter Search', 'SubType');
     if ( sTempValue <> '' ) then
     begin
         qryMatterSubType.Open();
         cbSubType.LookupKeyValue := sTempValue;
         cbSubTypeChange(Self);
     end;

     sTempValue := SettingLoadString('MATTER SEARCH', 'WORKFLOWTYPE');
     if ( sTempValue <> '' ) then
     begin
        StringPopulate(cbWorkFlowType.Items, 'WORKFLOWTYPE', 'CODE');
        cbWorkFlowType.Text := sTempValue;
        cbWorkFlowTypeChange(self);
     end;

     sTempValue := SettingLoadString('Matter Search', 'Branch');
     if ( sTempValue <> '' ) then
     begin
        qryBranch.Open();
        cbBranch.LookupKeyValue := sTempValue;
        cbBranchChange(self);
     end;

     sTempValue := SettingLoadString('Matter Search', 'Jurisdiction');
     if (sTempValue <> '' ) then
     begin
        qryJurisdiction.Open();
        cbJurisdiction.LookupKeyValue := sTempValue;
        cbJurisdictionChange(self);
     end;

     sTempValue := SettingLoadString('Matter Search', 'MatterStatus');
     if ( sTempValue <> '' ) then
     begin
        qryMatterStatus.Open();
        cbStatus.LookupKeyValue := sTempValue;
        cbStatusChange(self);
     end;

     //tbClient.Text := SettingLoadString('Matter Search', 'Client');
      tbDesc.Text := SettingLoadString('Matter Search', 'Descr');

     cmbOPCategory.ItemIndex := cmbOPCategory.Items.IndexOf(SettingLoadString('MATTER SEARCH', 'OPCATEGORY'));
     if cmbOPCategory.ItemIndex = -1 then
       cmbOPCategory.ItemIndex := 0; // Default to Static Other Party Search
     tbOtherParty.Text := SettingLoadString('Matter Search', 'Other Party');

     tbContact.Text := SettingLoadString('Matter Search', 'Contact');
     //tbFile.Text := SettingLoadString('Matter Search', 'FileID');
     tbClientCode.Text := SettingLoadString('Matter Search', 'ClientCode');
     tbNotes.Text := SettingLoadString('Matter Search', 'Notes');
     //chkOnlyCurrent.Checked := SettingLoadBoolean('MATTER SEARCH', 'ONLYCURRENT');

     case SettingLoadInteger('Matter Search', 'Lookup') of
       0: FLookup := luUnassigned;
       1: FLookup := luClient;
       2: FLookup := luFileID;
     end;             }

     case SettingLoadInteger('Matter Search', 'Lookup') of
        0: FLookup := luUnassigned;
        1: FLookup := luClient;
        2: FLookup := luFileID;
     end;

     bAlreadyShown := True;
   end;

//   if not dmAxiom.WANEnabled then
//   begin
      case FLookup of
         luUnassigned, luFileID: tbClientSearch.SetFocus;
         luClient:  tbClientMatterSearch.SetFocus;
      end;
      Self.BringToFront;
//   end;  }
//   tbClientSearch.SetFocus;

   bNoFilter := true;
end;

procedure TfrmMatterSearch.pageSearchChange(Sender: TObject);
begin
   case pageSearch.ActivePage.TabIndex of
      0: // Back to the Grid page
      begin
         aWIPNotes.Enabled := True;
         if RefreshSearch then
         begin
            MakeSQL(not bNoFilter);
            bNoFilter := true;
         end;
      end;
      1: aWIPNotes.Enabled := False;
   end;
end;

procedure TfrmMatterSearch.dbgrMatters1DblClick(Sender: TObject);
begin
  aButtonOk.Execute();
end;

procedure TfrmMatterSearch.MakeSQL(bSearch: boolean);
var
  sAND, unionSQL, childSQL, sTotalWhereClause : string;
  LHasSelection: Boolean;
begin
   Screen.Cursor := crSQLWait;
   sSQLArchiveTemp := '';
   LHasSelection := False;
   // Build the SQL Filter query
   dmAxiom.qryMSearch.Close;
   qryMatterArch.Close;
 //  qryMatters.Close;
//   sTables :=  ' FROM DEBTORSTATUS, MATTERTYPE, MATTERSTATUS, MATTERSUBTYPE, PHONEBOOK, MATTER ';

   sTables :=  ' FROM PHONEBOOK, MATTER, archive_location al ';
   sTotalTables := ' FROM PHONEBOOK, MATTER, archive_location al  ';

   //   sTables :=  ' FROM PHONEBOOK, MATTER, (SELECT archivebox, archvlocn, max(nmatter) as nmatter, max(created) FROM archive_location group by archivebox,archvlocn) al ';
//   sWhereClause := 'WHERE MATTER.TYPE = MATTERTYPE.CODE (+) AND MATTER.SUBTYPE = MATTERSUBTYPE.CODE (+) ';
//   sWhereClause := sWhereClause + 'AND MATTER.STATUS = MATTERSTATUS.CODE (+) AND MATTER.TYPE = MATTERSUBTYPE.MATTERTYPE (+) ';
//   sWhereClause := sWhereClause + ' AND MATTER.NCLIENT = PHONEBOOK.NCLIENT AND MATTER.DEBTORSTATUS = DEBTORSTATUS.DEBTORSTATUS(+) ';
   if (dmAxiom.Security.Employee.ChangeEntity = True) then
      sWhereClause := ' WHERE MATTER.NCLIENT = PHONEBOOK.NCLIENT AND MATTER.NMATTER = al.nmatter(+) '
   else
      sWhereClause := ' WHERE MATTER.NCLIENT = PHONEBOOK.NCLIENT AND MATTER.NMATTER = al.nmatter(+) AND efematteraccess(matter.nmatter, :Author, :Entity, :DefEntity) = 0 ';
   if cbShowRecentlyAccessed.Checked then
   begin
      sWhereClause := sWhereClause + ' AND O.AUTHOR = :P_Author AND O.TYPE = :P_Type AND O.CODE = MATTER.FILEID ';
      sTables := sTables + ', OPENLIST O ';
      sTotalTables := sTotalTables + ', OPENLIST O ';
   end;

   sAND := ' AND ';
   //if (pageSearch.ActivePageIndex = 0) then
   //if bNoFilter then
   begin
     if tbClientMatterSearch.Text <> '' then
     begin
       LHasSelection := True;

       //sWhereClause := sWhereClause + sAND + 'MATTER.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(tbClientSearch.Text) + '%') + ') ';
//         sTables :=  ' FROM MATTERTYPE, MATTERSTATUS, MATTERSUBTYPE, PHONEBOOK, MATTER ';
//         sWhereClause := sWhereClause + sAND + ' MATTER.NCLIENT = PHONEBOOK.NCLIENT ';
// AES 23/06/2010 changed this to use function based index with concatenated columns.
       if SystemString('MATTER_ONLY_SEARCH') = 'N' then
          sWhereClause := sWhereClause + sAND + ' CONTAINS (matter.dummy,' + QuotedStr('%' + tbClientMatterSearch.Text + '%') + ') > 0'
       else
          sWhereClause := sWhereClause + sAND + ' UPPER(MATTER.FILEID) LIKE ' + QuotedStr(UpperCase(tbClientMatterSearch.Text) + '%');

//         sWhereClause := sWhereClause + sAND + ' UPPER(PHONEBOOK.SEARCH) LIKE ' + QuotedStr('%' + Uppercase(tbClientSearch.Text) + '%');
// AES 29/10/2004   following line not needed.  some records will never appear.
//         sWhereClause := sWhereClause + sAND + ' PHONEBOOK.NNAMEMASTER IS NULL';

       if cbShowRecentlyAccessed.Checked then
       begin
            sWhereClause := sWhereClause + ' AND O.AUTHOR = :P_Author AND O.TYPE = :P_Type AND O.CODE = MATTER.FILEID ';
            if Pos('OPENLIST', sTables) = 0 then
            begin
               sTables := sTables + ', OPENLIST O ';
               sTotalTables := sTotalTables + ', OPENLIST O ';
            end;
         end;

       {
       if (not cbShowChildren.Checked) then
         sWhereClause := sWhereClause + sAND + 'MATTER.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(tbClientSearch.Text) + '%') + ') '
       else
         sWhereClause := sWhereClause + sAND + 'MATTER.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE NNAMEMASTER IN (SELECT NNAME FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(tbClientSearch.Text) + '%')+ ')) ';
       }
       sAND := ' AND ';
     end;
{     if tbFileSearch.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'UPPER(MATTER.FILEID) LIKE ' + QuotedStr(UpperCase(tbFileSearch.Text) + '%');
       sAND := ' AND ';
     end;  }

     if tbClientSearch.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + ' UPPER(PHONEBOOK.SEARCH) LIKE ' + QuotedStr('%' + Uppercase(tbClientSearch.Text) + '%');

         if cbShowRecentlyAccessed.Checked then
         begin
            sWhereClause := sWhereClause + ' AND O.AUTHOR = :P_Author AND O.TYPE = :P_Type AND O.CODE = MATTER.FILEID ';
            if Pos('OPENLIST', sTables) = 0 then
            begin
               sTables := sTables + ', OPENLIST O ';
               sTotalTables := sTotalTables + ', OPENLIST O ';
            end;
         end;

       sAND := ' AND ';
     end;

     if tbArchiveSearch.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.ARCHIVENUM LIKE ' + QuotedStr(tbArchiveSearch.Text + '%');
       sAND := ' AND ';
     end;
   end;
   //else
   begin
 {    qryMatters.Close;
     sTables :=  ' FROM MATTER';
     sWhereClause := '';
     sAND := ' WHERE ';
 }
     case rgMatterOptions.ItemIndex of
         0,1,3: begin
                  LHasSelection := True;
                  sWhereClause := sWhereClause + sAND + 'MATTER.PROSPECTIVE = ''N'' ';
                  sAND := ' AND ';
               end;
         4:    begin
                  LHasSelection := True;
                  sWhereClause := sWhereClause + sAND + 'MATTER.PROSPECTIVE = ''Y'' AND MATTER.CLOSED = 0 ';
                  sAND := ' AND ';
               end;
      end;

     if (rgMatterOptions.ItemIndex = 1) then // bClosedOnly then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.CLOSED = 1 AND ((MATTER.ARCHIVED IS NULL) OR (MATTER.ARCHIVENUM IS NULL))';
       sAND := ' AND ';
     end;

     if cbPartner.Text <> '' then   //(not VarIsNull(cbPartner.EditValue) AND (qPartner.Active)) then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.PARTNER = ''' + cbPartner.EditValue + '''';
       sAND := ' AND ';
     end;

     if cbController.Text <> '' then    // (not VarIsNull(cbController.EditValue) AND (qController.Active)) then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.CONTROLLER = ''' + cbController.EditValue + '''';
       sAND := ' AND ';
     end;

     if cbAuthor.Text <> '' then  // (not VarIsNull(cbAuthor.EditValue) AND (qAuthor.Active)) then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.AUTHOR = ''' + cbAuthor.EditValue + '''';
       sAND := ' AND ';
     end;

     if cbOperator.Text <> '' then  // (not VarIsNull(cbOperator.EditValue) AND (qOperator.Active)) then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.OPERATOR = ''' + cbOperator.EditValue + '''';
       sAND := ' AND ';
     end;

     if cmbParaLegal.Text <> '' then  // (not VarIsNull(cmbParaLegal.EditValue) AND (qParaLegal.Active)) then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.PARALEGAL = ''' + cmbParaLegal.EditValue + '''';
       sAND := ' AND ';
     end;

     if sMatterTypeCode <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.TYPE = ''' + sMatterTypeCode + '''';
       sAND := ' AND ';
     end;

     if sMatterSubTypeCode <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.SUBTYPE = ''' + sMatterSubTypeCode + '''';
       sAND := ' AND ';
     end;

     if sWorkFlowCode <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.WORKFLOW = ''' + sWorkFlowCode + '''';
       sAND := ' AND ';
     end;
     if sBranchCode <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.BRANCH = ''' + sBranchCode + '''';
       sAND := ' AND ';
     end;

     if sJurisdictionCode <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.JURISDICTION = ''' + sJurisdictionCode + '''';
       sAND := ' AND ';
     end;

     if edtClientSearch.Text <> '' then
     begin
       LHasSelection := True;
       if(not cbShowChildren.Checked) then
         sWhereClause := sWhereClause + sAND + 'MATTER.NCLIENT IN (SELECT PHONEBOOK.NCLIENT FROM PHONEBOOK WHERE UPPER(PHONEBOOK.SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edtClientSearch.Text) + '%') + ') '
       else
         sWhereClause := sWhereClause + sAND + 'MATTER.NCLIENT IN (SELECT P.NCLIENT FROM PHONEBOOK P WHERE P.NNAMEMASTER IN (SELECT P1.NNAME FROM PHONEBOOK P1 WHERE UPPER(P1.SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edtClientSearch.Text) + '%')+ ')) ';
       sAND := ' AND ';
     end;

     if edtFileSearch.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'UPPER(MATTER.FILEID) LIKE ' + QuotedStr(UpperCase(edtFileSearch.Text) + '%');
       sAND := ' AND ';
     end;

     if sStatusCode <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.STATUS = ''' + sStatusCode + '''';
       sAND := ' AND ';
     end;

     if cmbDebtorStatus.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.DEBTORSTATUS = ''' + IntToStr(cmbDebtorStatus.EditValue) + '''';
       sAND := ' AND ';
     end;

     //tbClient.Text := tbClientSearch.Text;
     {
     if tbClient.Text <> '' then
     begin
       sWhereClause := sWhereClause + sAND + 'UPPER(MATTER.TITLE) LIKE ' + QuotedStr('%' + Uppercase(tbClient.Text) + '%');
       sAND := ' AND ';
     end;
     }

     if tbDesc.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'UPPER(MATTER.LONGDESCR) LIKE ' + QuotedStr('%' + Uppercase(tbDesc.Text) + '%');
       sAND := ' AND ';
     end;

     if tbOtherParty.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.NMATTER IN (SELECT DISTINCT OP.NMATTER FROM MATTERPARTY OP, PHONEBOOK P WHERE OP.CATEGORY = ' + QuotedStr(cmbOPCategory.text) + ' AND OP.NNAME = P.NNAME AND UPPER(P.SEARCH) LIKE ' + QuotedStr('%' + Uppercase(tbOtherParty.Text) + '%') + ')';
       sAND := ' AND ';
     end;

     if tbContact.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.NMATTER IN (SELECT DISTINCT OP.NMATTER FROM MATTERPARTY OP, PHONEBOOK P WHERE OP.NNAME = P.NNAME AND UPPER(P.SEARCH) LIKE ' + QuotedStr('%' + Uppercase(tbContact.Text) + '%') + ')';
 //      sWhereClause := sWhereClause + sAND + 'UPPER(MATTER.CONTACT) LIKE ' + QuotedStr('%' + Uppercase(tbContact.Text) + '%');
       sAND := ' AND ';
     end;
     if tbOPRef.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'UPPER(MATTER.OPREF) LIKE ' + QuotedStr('%' + Uppercase(tbOPRef.Text) + '%');
       sAND := ' AND ';
     end;
     if edBillTo.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'UPPER(MATTER.BILL_TO) LIKE ' + QuotedStr('%' + Uppercase(edBillTo.Text) + '%');
       sAND := ' AND ';
     end;
     if tbNotes.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'UPPER(MATTER.NOTES) LIKE ' + QuotedStr('%' + Uppercase(tbNotes.Text) + '%');
       sAND := ' AND ';
     end;
     try
      if ((not VarIsNull(cmbDepartment.EditValue) AND (cmbDepartment.Text <> '')) AND (qryDepartment.Active)) then
      begin
         LHasSelection := True;
         sWhereClause := sWhereClause + sAND + 'MATTER.DEPT = ''' + cmbDepartment.EditValue + '''';
         sAND := ' AND ';
      end;
     except
        //
     end;
   //  tbFile.Text := tbFileSearch.Text;

     {if tbFile.Text <> '' then
     begin
       sWhereClause := sWhereClause + sAND + 'MATTER.FILEID LIKE ' + QuotedStr(tbFile.Text + '%');
       sAND := ' AND ';
     end;
   }
     if tbClientCode.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + ' MATTER.NCLIENT = PHONEBOOK.NCLIENT AND UPPER(PHONEBOOK.CLIENTID) LIKE UPPER(' + QuotedStr('%' + tbClientCode.Text + '%') +  ')';
       sAND := ' AND ';
       sTables :=  ' FROM PHONEBOOK, MATTER, archive_location al ';
//       sTables :=  ' FROM DEBTORSTATUS, MATTERTYPE, MATTERSTATUS, MATTERSUBTYPE, PHONEBOOK, CLIENT, MATTER ';
     end;

     if edtArchiveNumber.Text <> '' then
     begin
         LHasSelection := True;
         sWhereClause := sWhereClause + sAND + 'MATTER.ARCHIVENUM = :ARCHIVENUM';
         sAND := ' AND ';
     end;
     if chkOpenedSince.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.OPENED >= :OPENEDSINCE';
       sAND := ' AND ';
     end;
     if chkOpenedBefore.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.OPENED <= :OPENEDBEFORE';
       sAND := ' AND ';
     end;
     if chkSLESince.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.SLEDATE >= :SLESINCE';
       sAND := ' AND ';
     end;
     if chkSLEBefore.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.SLEDATE <= :SLEBEFORE';
       sAND := ' AND ';
     end;

     if chkArchivedSince.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + '((TRUNC(al.CREATED) >= :ARCHIVEDSINCE) or (trunc(matter.archived) >= :ARCHIVEDSINCE))';
       sAND := ' AND ';
     end;
     if chkArchivedBefore.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + '((TRUNC(al.CREATED) <= :ARCHIVEDBEFORE) or (trunc(matter.archived) >= :ARCHIVEDBEFORE))';
       sAND := ' AND ';
     end;

     if chkArchivedDate.Checked and chkArchivedDateTo.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + ' MATTER.nmatter in (select nmatter from ARCHIVE_LOCATION where trunc(created) between :ARCHIVED and :archivedto) ';
//                                             ' or trunc(matter.archived) between :ARCHIVED and :archivedto ';
       sAND := ' AND ';
     end
     else if chkArchivedDate.Checked or chkArchivedDateTo.Checked  then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + ' MATTER.nmatter in (select nmatter from ARCHIVE_LOCATION where trunc(created) <= :ARCHIVED) ';
//                                             ' or trunc(matter.archived) <= :ARCHIVED';
       sAND := ' AND ';
     end;

     if edArchivedNotes.Text <> '' then
     begin
        LHasSelection := True;
        sWhereClause := sWhereClause + sAND + ' CONTAINS (matter.archivenotes,' + QuotedStr('%' + edArchivedNotes.Text + '%') + ') > 0';
        sAND := ' AND ';
     end;
     if edBoxNumber.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'UPPER(al.ARCHIVEBOX) LIKE ' + QuotedStr('%' + Uppercase(edBoxNumber.Text) + '%');
       sAND := ' AND ';
     end;

     if edtBarcode.Text <> '' then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'UPPER(al.BARCODE) LIKE ' + QuotedStr('%' + Uppercase(edtBarcode.Text) + '%');
       sAND := ' AND ';
     end;

     // only show matters in the entity

{     if chkEntity.Checked then
     begin

       sWhereClause := sWhereClause + sAND + 'MATTER.ENTITY = ''' + dmAxiom.Entity + '''';
       sAND := ' AND ';
     end;}

     if rgMatterOptions.ItemIndex = 0 then // chkOnlyCurrent.Checked then
     begin
       sWhereClause := sWhereClause + sAND + 'MATTER.CLOSED = 0';
       sAND := ' AND ';
     end;

     if rgMatterOptions.ItemIndex = 3 then  // chkArchived.Checked then
     begin
       sWhereClause := sWhereClause + sAND + '((MATTER.ARCHIVED IS NOT NULL) OR (MATTER.ARCHIVENUM IS NOT NULL ))';
       sAND := ' AND ';
     end else
       LHasSelection := True;

     if chkCompletedSince.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.COMPLETED >= :COMPLETEDSINCE';
       sAND := ' AND ';
     end;
     if chkCompletedBefore.Checked then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'MATTER.COMPLETED < :COMPLETEDBEFORE';
       sAND := ' AND ';
     end;
     if neWIP.AsCurrency <> 0 then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'getwipamount(MATTER.NMATTER) > ' + neWIP.EditText;  //MATTER.UNBILL_FEES
       sAND := ' AND ';
     end;
     if neDebtors.AsCurrency <> 0 then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'getDebtorsAmount(MATTER.NMATTER)*-1 > ' + neDebtors.EditText;    //MATTER.DEBTORS
       sAND := ' AND ';
     end;
     if neDisb.AsCurrency <> 0 then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'getUnbillDisbAmount(MATTER.NMATTER) > ' + neDisb.EditText;    //MATTER.UNBILL_DISB
       sAND := ' AND ';
     end;
     if neFeesBilled.AsCurrency <> 0 then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'getBillFees(MATTER.NMATTER) > ' + neFeesBilled.EditText;   //MATTER.BILL_FEES
       sAND := ' AND ';
     end;
     {if neFeesRecvd.AsCurrency <> 0 then
     begin
       sWhereClause := sWhereClause + sAND + 'MATTER.RECVD_FEES > ' + neFeesRecvd.EditText;
       sAND := ' AND ';
     end;}
     if neSund.AsCurrency <> 0 then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'getBillSundriesAmount(MATTER.NMATTER) > ' + neSund.EditText;     //MATTER.UNBILL_SUND
       sAND := ' AND ';
     end;
     if neTrust.AsCurrency <> 0 then
     begin
       LHasSelection := True;
       sWhereClause := sWhereClause + sAND + 'getTrustBalAmount(MATTER.NMATTER) > ' + neTrust.EditText;    //MATTER.TRUST_BAL
       sAND := ' AND ';
     end;
     if neClearTrust.AsCurrency <> 0 then
     begin
       LHasSelection := True;
//       sWhereClause := sWhereClause + sAND + 'getClearedTrustAmount(MATTER.NMATTER) > ' + neClearTrust.EditText;
       sWhereClause := sWhereClause + sAND + 'getClearedTrustAmount(MATTER.NMATTER) > ' + neClearTrust.EditText;          //MATTER.CL_TRUST_BAL
       sAND := ' AND ';
     end;
   end;

//   sWhereClause := sWhereClause + sAND + ' isallowedmatteraccess(MATTER.NMATTER,'+QUOTEDSTR(dmAxiom.UserID)+',restrict_access) = 0';
   dmAxiom.qryMSearch.SQL.Text := 'select * from ('+ sSQL + sTables + sWhereClause + sGroupBy + ') where restrict_access = 0 ';
   sSQLArchiveTemp := 'select * from (' + sSQLArchive + sTables + sWhereClause + ') where restrict_access = 0 ';
   sSQLArchiveExcelTemp := 'select * from (' + sSQLArchiveExport + sTables + sWhereClause + ') where restrict_access = 0 ';

     // Append child SQL to qryMSearch
   if (cbShowChildren.Checked){ AND (tbClientSearch.Text <> '')} then
   begin
      unionSQL := ' UNION ALL ';
      childSQL := 'SELECT ''C'' as PARENT, max(MATTER.FILEID), max(c.nnamemaster), max(P.SEARCH) as TITLE, ';
      childSQL := childSQL + ' max(c.nclient), max(MATTER.SHORTDESCR), max(MATTER.LONGDESCR), MATTER.NMATTER, max(MATTER.PARTNER), ';
//      childSQL := 'SELECT ''c'' as PARENT, MATTER.FILEID, c.nnamemaster, MATTER.TITLE, c.nclient, MATTER.SHORTDESCR, MATTER.LONGDESCR, MATTER.NMATTER, MATTER.PARTNER, ';
//      childSQL := childSQL + 'MATTER.AUTHOR, nvl(MATTERTYPE.DESCR,''Unknown'') as TYPE_DESC, MATTER.TYPE, MATTER.CLIENTID, ';
      childSQL := childSQL + 'max(MATTER.AUTHOR), MATTER.TYPE, max(MATTER.CLIENTID), nvl(MATTER.STATUS,0) as STATUS , ';

      childSQL := childSQL + ' nvl(tablevalueembed(''mattertype'',''mattertype.code'',''''''''||matter.TYPE||'''''''',''mattertype.descr''), ''Unknown'') AS type_desc, ';
      childSQL := childSQL + ' tablevalue(''matterstatus'',''matterstatus.code'',''''''''||matter.status||'''''''',''matterstatus.descr'') AS matterstatus,';
      childSQL := childSQL + ' tablevalue(''mattersubtype'',''code'',''''''''||subtype||'''''''',''mattersubtype.descr'') AS mattersubtype, ';
      childSQL := childSQL + '(select description from debtorstatus where debtorstatus.debtorstatus = matter.debtorstatus) as description, ';
      childSQL := childSQL + '(select row_colour from debtorstatus where debtorstatus.row_colour = matter.debtorstatus) as row_colour, ';


      //      childSQL := childSQL + ' tablevalue(''debtorstatus'',''debtorstatus.debtorstatus'',''''''''||matter.debtorstatus||'''''''',''debtorstatus.description'') as description,';
//      childSQL := childSQL + ' tablevalue(''debtorstatus'',''debtorstatus.debtorstatus'',''''''''||matter.debtorstatus||'''''''', ''debtorstatus.row_colour'') as row_colour, ';

      childSQL := childSQL + ' nvl(MATTER.JURISDICTION,0) as JURISDICTION, nvl(MATTER.SUBTYPE,0) as SUBTYPE, MATTER.ACCT,archivereview, MATTER.ARCHIVENUM,archivedest, '+
                             ' max(al.archivebox) archivebox, max(al.archvlocn) archvlocn, max(TRUNC (al.created)), '+
                             ' isallowedmatteraccess(MATTER.NMATTER,'+ QUOTEDSTR(dmAxiom.UserID)+',max(restrict_access)) RESTRICT_ACCESS, ';
      childSQL := childSQL + ' getwipamount (matter.nmatter) AS wip, CASE WHEN (getdebtorsamount (matter.nmatter) < 0 )'+
                             ' THEN (getdebtorsamount (matter.nmatter) * -1) ELSE getdebtorsamount (matter.nmatter) '+
                             ' END AS debtors, getclearedtrust (matter.nmatter) AS trust, matter.nname, '+
                             ' NVL ((SELECT bill_amount FROM (SELECT nfee_debtornotes, bill_amount, nmatter, '+
                             ' MAX(nfee_debtornotes) OVER (PARTITION BY nmatter) AS rmax_nfee_debtornotes '+
                             ' FROM fee_debtornotes) WHERE nfee_debtornotes = rmax_nfee_debtornotes AND nmatter = matter.nmatter), '+
                             ' 0)  AS bill_amount ';

//      childSQL := childSQL + 'MATTER.ARCHIVENUM,MATTERSTATUS.DESCR AS MATTERSTATUS, MATTERSTATUS.DESCR AS MATTERSTATUS2, ';
//      childSQL := childSQL + 'MATTERSUBTYPE.DESCR AS MATTERSUBTYPE, nvl(MATTER.STATUS,0) as STATUS , ';
//      childSQL := childSQL + 'nvl(MATTER.JURISDICTION,0) as JURISDICTION, nvl(MATTER.SUBTYPE,0) as SUBTYPE, MATTER.ACCT, ';
//      childSQL := childSQL + 'DEBTORSTATUS.DESCRIPTION, DEBTORSTATUS.ROW_COLOUR, archivereview, archivedest, archivebox, matter.dummy ';

      childSQL := childSQL + 'FROM phonebook c, phonebook p, archive_location al, matter ';
//      childSQL := childSQL + 'FROM DEBTORSTATUS, MATTER,MATTERTYPE, MATTERSTATUS, MATTERSUBTYPE, phonebook c, phonebook p ';

      if cbShowRecentlyAccessed.Checked then
         childSQL := childSQL + ', OPENLIST O ';
//      childSQL := childSQL + 'WHERE MATTER.ENTITY = ' + QuotedStr(dmAxiom.Entity);

      //      childSQL := childSQL + ' AND MATTER.TYPE = MATTERTYPE.CODE (+) ';
//      childSQL := childSQL + 'AND MATTER.SUBTYPE = MATTERSUBTYPE.CODE (+) ';
//      childSQL := childSQL + 'AND MATTER.STATUS = MATTERSTATUS.CODE (+) ';
//      childSQL := childSQL + 'AND MATTER.TYPE = MATTERSUBTYPE.MATTERTYPE (+) ';

      childSQL := childSQL + 'WHERE MATTER.NMATTER = al.nmatter(+) ';
      childSQL := childSQL + 'AND MATTER.NCLIENT = p.nclient ';
      childSQL := childSQL + 'AND c.nnamemaster = p.nname (+) ';
      childSQL := childSQL + 'AND c.nnamemaster IS NOT NULL ';
//      childSQL := childSQL + 'AND MATTER.DEBTORSTATUS = DEBTORSTATUS.DEBTORSTATUS(+) ';
      if tbClientSearch.Text <> '' then
         childSQL := childSQL + 'AND UPPER(c.search) LIKE ' + QuotedStr('%' + Uppercase(tbClientSearch.Text) + '%');

         {      if tbFileSearch.Text <> '' then
         childSQL := childSQL + ' AND MATTER.FILEID LIKE ' + QuotedStr(tbFileSearch.Text + '%');
}

      if cbShowRecentlyAccessed.Checked then
         childSQL := childSQL + ' AND O.AUTHOR = :P_Author AND O.TYPE = :P_Type AND O.CODE = MATTER.FILEID ';

      dmAxiom.qryMSearch.SQL.Text := 'select /*FIRST_ROWS(10)*/ parent, fileid,title,nclient,shortdescr, '+
                                     'longdescr,nmatter,partner,author,type,clientid,status,type_desc,'+
                                     'matterstatus, mattersubtype,description, row_colour, '+
                                     'subtype, acct,archivereview, archivenum, archivedest,'+
                                     'archivebox, archvlocn, al_created,restrict_access, debtors, trust, wip from (' +
                                     dmAxiom.qryMSearch.SQL.Text + unionSQL + childSQL + sChildGroupBy +
                                     ') where restrict_access = 0';
   end;

   dmAxiom.qryMSearch.SQL.Text := dmAxiom.qryMSearch.SQL.Text + sOrderBy;



   sTotalWhereClause := StringReplace(sWhereClause, 'AND MATTER.NMATTER = al.nmatter(+)','',[rfReplaceAll, rfIgnoreCase]);
   qryTotal.SQL.Text := 'SELECT COUNT(distinct(MATTER.NMATTER)) AS CNT ' + sTables + sWhereClause;

   DoSetParameters(dmAxiom.qryMSearch, qryTotal);

   if(LHasSelection or True) then
   begin
     if dmAxiom.runningide then
     begin
        dmAxiom.qryMSearch.SQL.SaveToFile('c:\tmp\msearch.sql');
        qryTotal.SQL.SaveToFile('c:\tmp\msearchTotal.sql');
     end;

     qryMatterArch.Open;
     dmAxiom.qryMSearch.Open;

     RefreshSearch := False;
     if not dmAxiom.WANEnabled then
     begin
       qryTotal.Open;
       try
          sbarFilter.Panels[pnlMATTERS].Text := qryTotal.FieldByName('CNT').AsString + ' Matter';
          if qryTotal.FieldByName('CNT').AsInteger <> 1 then
             sbarFilter.Panels[pnlMATTERS].Text := sbarFilter.Panels[pnlMATTERS].Text + 's';
          finally
             qryTotal.Close;
       end;
     end;

     MakeTitle;
     if sTitle <> 'Matters' then
       sbarFilter.Panels[pnlFILTER].Text := 'Filter = ' + sTitle
     else
       sbarFilter.Panels[pnlFILTER].Text := 'Not Filtered';
   end else
     sbarFilter.Panels[pnlFILTER].Text := 'Please make a filter selection';
   Screen.Cursor := crDefault;
end;

procedure TfrmMatterSearch.DoSetParameters(DataSet: TUniQuery; DataSetTotal: TUniQuery);
begin
   if chkOpenedSince.Checked then
   begin
      DataSet.ParamByName('OPENEDSINCE').AsDate := Trunc(dtpOpenedSince.Date);
      if DataSetTotal <> nil then
         DataSetTotal.ParamByName('OPENEDSINCE').AsDate := Trunc(dtpOpenedSince.Date);
   end;

   if chkOpenedBefore.Checked then
   begin
      DataSet.ParamByName('OPENEDBEFORE').AsDate := Trunc(dtpOpenedBefore.Date) + 1;
      if DataSetTotal <> nil then
         DataSetTotal.ParamByName('OPENEDBEFORE').AsDate := Trunc(dtpOpenedBefore.Date) + 1;
   end;

   if chkCompletedSince.Checked then
   begin
      DataSet.ParamByName('COMPLETEDSINCE').AsDate := Trunc(dtpCompletedSince.Date);
      if DataSetTotal <> nil then
         DataSetTotal.ParamByName('COMPLETEDSINCE').AsDate := Trunc(dtpCompletedSince.Date);
   end;

   if chkCompletedBefore.Checked then
   begin
      DataSet.ParamByName('COMPLETEDBEFORE').AsDate := Trunc(dtpCompletedBefore.Date) + 1;
      if DataSetTotal <> nil then
         DataSetTotal.ParamByName('COMPLETEDBEFORE').AsDate := Trunc(dtpCompletedBefore.Date) + 1;
   end;

   if chkArchivedSince.Checked then
   begin
      DataSet.ParamByName('ARCHIVEDSINCE').AsDate := Trunc(dtpArchivedSince.Date);
      if DataSetTotal <> nil then
         DataSetTotal.ParamByName('ARCHIVEDSINCE').AsDate := Trunc(dtpArchivedSince.Date);
   end;

   if chkArchivedBefore.Checked then
   begin
      DataSet.ParamByName('ARCHIVEDBEFORE').AsDate := Trunc(dtpArchivedBefore.Date);
      if DataSetTotal <> nil then
         DataSetTotal.ParamByName('ARCHIVEDBEFORE').AsDate := Trunc(dtpArchivedBefore.Date);
   end;

   if edtArchiveNumber.Text <> '' then
   begin
      DataSet.ParamByName('ARCHIVENUM').AsString := edtArchiveNumber.Text;
      if DataSetTotal <> nil then
         DataSetTotal.ParamByName('ARCHIVENUM').AsString := edtArchiveNumber.Text; 
   end;

   if chkArchivedDate.Checked and chkArchivedDateTo.Checked then
   begin
     DataSet.ParamByName('ARCHIVED').AsDate := Trunc(dtpArchivedDate.Date);
     DataSet.ParamByName('ARCHIVEDTO').AsDate := Trunc(dtpArchivedDateTo.Date);
     if DataSetTotal <> nil then
     begin
      DataSetTotal.ParamByName('ARCHIVED').AsDate := Trunc(dtpArchivedDate.Date);
      DataSetTotal.ParamByName('ARCHIVEDTO').AsDate := Trunc(dtpArchivedDateTo.Date);
     end;
   end
   else
   if chkArchivedDate.Checked or chkArchivedDateTo.Checked then
   begin
      DataSet.ParamByName('ARCHIVED').AsDate := Trunc(dtpArchivedDate.Date);
      if DataSetTotal <> nil then
         DataSetTotal.ParamByName('ARCHIVED').AsDate := Trunc(dtpArchivedDate.Date);
   end;

   if chkSLESince.Checked then
     DataSet.ParamByName('SLESINCE').AsDate := Trunc(dtpSLESince.Date);
   if chkSLEBefore.Checked then
     DataSet.ParamByName('SLEBEFORE').AsDate := Trunc(dtpSLEBefore.Date) + 1;

   if cbShowRecentlyAccessed.Checked then
   begin
      DataSet.ParamByName('P_TYPE').AsString := 'MATTER';
      DataSet.ParamByName('P_Author').AsString := dmAxiom.UserID;
      if DataSetTotal <> nil then
      begin
         DataSetTotal.ParamByName('P_TYPE').AsString := 'MATTER';
         DataSetTotal.ParamByName('P_Author').AsString := dmAxiom.UserID;
      end;
   end;

   if (dmAxiom.Security.Employee.ChangeEntity = False) then
   begin
      if chkEntity.Checked then
      begin
         DataSet.ParamByName('entity').AsString := dmAxiom.Entity;
         DataSetTotal.ParamByName('entity').AsString := dmAxiom.Entity;
      end
      else
      begin
         DataSet.ParamByName('entity').AsString := '';
         DataSetTotal.ParamByName('entity').AsString := '';
      end;
      DataSet.ParamByName('Author').AsString := dmAxiom.UserID;
      DataSetTotal.ParamByName('Author').AsString := dmAxiom.UserID;

      DataSet.ParamByName('DefEntity').AsString := dmAxiom.EmpEntity;
      DataSetTotal.ParamByName('DefEntity').AsString := dmAxiom.EmpEntity;
   end
end;

procedure TfrmMatterSearch.FormCreate(Sender: TObject);
var
  iCtr, iTmp: integer;
  sTempValue: string;
  dtTempValue: TDateTime;
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);

   SettingLoadStream(dmAxiom.UserID,'MATTER SEARCH GRID', vMatters);

   setDisplayNames;

   chkEntity.Enabled := dmAxiom.Security.Employee.ChangeEntity;

   FRecentActions := TList.Create();
//   bClosedOnly := False;
   dmTableCache.LoadVirtualTable(dmTableCache.vtWorkFlow,'WORKFLOWTYPE','','DESCR');
   qryDebtorStatus.Open;

   if dmAxiom.WANEnabled then
   begin
      PageSearch.ActivePage := tabFilters;
//      vMatters.DataController.DataModeController.GridMode := True;
      vMatters.DataController.DataModeController.GridModeBufferCount := 30;
      vMatters.OptionsCustomize.ColumnSorting := False;
   end
   else
   begin
//      vMatters.DataController.DataModeController.GridMode := False;
      pageSearch.ActivePage := tabGrid;
   end;

   if dbgrMatters.Font.Size <> dmAxiom.GridFont then
      dbgrMatters.Font.Size := dmAxiom.GridFont;

  sSQL := 'SELECT ''P'' as PARENT, MAX(MATTER.FILEID) FILEID, 0, MAX(PHONEBOOK.SEARCH) as TITLE, '+
   ' max(matter.nclient) nclient, max(MATTER.SHORTDESCR) shortdescr, MAX(MATTER.LONGDESCR) longdescr, MAX(MATTER.NMATTER) nmatter,'+
   ' max(MATTER.PARTNER) partner, max(MATTER.AUTHOR) author, max(MATTER.TYPE) type, '+
   ' GETCLIENTCODE(MATTER.NCLIENT) AS CLIENTID,nvl(MATTER.STATUS,0) as STATUS ,'+
   ' nvl(tablevalueembed(''mattertype'',''mattertype.code'',''''''''||matter.TYPE||'''''''',''mattertype.descr''), ''Unknown'') AS type_desc, '+
   ' tablevalue(''matterstatus'',''matterstatus.code'',''''''''||matter.status||'''''''',''matterstatus.descr'') AS matterstatus,'+
   ' tablevalue(''mattersubtype'',''code'',''''''''||subtype||'''''''',''mattersubtype.descr'') AS mattersubtype, '+
   '(select description from debtorstatus where debtorstatus.debtorstatus = matter.debtorstatus) as description, '+
   '(select row_colour from debtorstatus where debtorstatus.row_colour = matter.debtorstatus) as row_colour, '+

//   ' tablevalue(''debtorstatus'',''debtorstatus.debtorstatus'',''''''''||matter.debtorstatus||'''''''',''debtorstatus.description'') as description,'+
//   ' tablevalue(''debtorstatus'',''debtorstatus.debtorstatus'',''''''''||matter.debtorstatus||'''''''', ''debtorstatus.row_colour'') as row_colour,'+

//   ' nvl(MATTERTYPE.DESCR,''Unknown'') as TYPE_DESC, MATTER.TYPE, GETCLIENTCODE(MATTER.NCLIENT) AS CLIENTID,'+
//   'MATTER.ARCHIVENUM,MATTERSTATUS.DESCR AS MATTERSTATUS, MATTERSTATUS.DESCR AS MATTERSTATUS2,'+
//   'MATTERSUBTYPE.DESCR AS MATTERSUBTYPE, nvl(MATTER.STATUS,0) as STATUS ,'+

   'nvl(MATTER.JURISDICTION,0) as JURISDICTION, nvl(MATTER.SUBTYPE,0) as SUBTYPE, MATTER.ACCT, '+

//   'DEBTORSTATUS.DESCRIPTION, DEBTORSTATUS.ROW_COLOUR, archivereview, archivedest, archivebox, matter.dummy  ';

   'archivereview, matter.archivenum, archivedest, max(al.archivebox) archivebox ,'+
   ' max(al.archvlocn) archvlocn, max(TRUNC (al.created)) as al_created, isallowedmatteraccess(MATTER.NMATTER,'+ QUOTEDSTR(dmAxiom.UserID)+',max(restrict_access)) RESTRICT_ACCESS '+
   ',getwipamount(matter.nmatter) as wip, '+
   'case when (getDebtorsAmount(matter.nmatter) < 0) then (getDebtorsAmount(matter.nmatter) * -1) '+
   'else getDebtorsAmount(matter.nmatter) end as debtors, getClearedTrust(matter.nmatter) as trust, matter.nname, '+
   ' NVL ((SELECT bill_amount FROM (SELECT nfee_debtornotes, bill_amount, nmatter, '+
   ' MAX(nfee_debtornotes) OVER (PARTITION BY nmatter) AS rmax_nfee_debtornotes '+
   ' FROM fee_debtornotes) WHERE nfee_debtornotes = rmax_nfee_debtornotes AND nmatter = matter.nmatter), 0)  AS bill_amount, MAX(CONTROLLER) AS CONTROLLER ';
   //min(MATTER.RESTRICT_ACCESS) RESTRICT_ACCESS ';

   sTables := ' FROM PHONEBOOK, MATTER, archive_location al';
//   sTables := ' FROM DEBTORSTATUS, MATTERTYPE, STATUS, MATTERSUBTYPE, PHONEBOOK, MATTER ';
   sGroupBy := ' GROUP BY MATTER.NMATTER, matter.status, matter.TYPE, SUBTYPE, matter.debtorstatus,'+
               'jurisdiction,SUBTYPE,matter.acct,archivereview,matter.archivenum,archivedest,  matter.nclient, matter.nname ';

   sChildGroupBy := ' GROUP BY MATTER.NMATTER, matter.status, matter.TYPE, SUBTYPE, matter.debtorstatus,'+
               'jurisdiction,SUBTYPE,matter.acct,archivereview,matter.archivenum,archivedest,  matter.nclient, matter.nname ';


{   sSQL := 'SELECT ''P'' as PARENT, MATTER.FILEID, 0, MATTER.TITLE, matter.nclient, MATTER.SHORTDESCR, MATTER.LONGDESCR, MATTER.NMATTER,'+
   ' MATTER.PARTNER, MATTER.AUTHOR, nvl(MATTERTYPE.DESCR,''Unknown'') as TYPE_DESC, MATTER.TYPE, MATTER.CLIENTID,'+
   'MATTER.ARCHIVENUM,MATTERSTATUS.DESCR AS MATTERSTATUS, MATTERSTATUS.DESCR AS MATTERSTATUS2,'+
   'MATTERSUBTYPE.DESCR AS MATTERSUBTYPE, nvl(MATTER.STATUS,0) as STATUS ,'+
   'nvl(MATTER.JURISDICTION,0) as JURISDICTION, nvl(MATTER.SUBTYPE,0) as SUBTYPE, MATTER.ACCT ';
   sTables := ' FROM MATTER,MATTERTYPE, STATUS, MATTERSUBTYPE, PHONEBOOK';  }

      sSQLArchive := 'SELECT ''P'' as PARENT, MAX(MATTER.FILEID) FILEID, 0, MAX(PHONEBOOK.SEARCH) as TITLE, '+
                     ' max(matter.nclient) nclient, max(MATTER.SHORTDESCR) shortdescr, MAX(MATTER.LONGDESCR) longdescr, MAX(MATTER.NMATTER) nmatter,'+
                     ' max(MATTER.PARTNER) partner, max(MATTER.AUTHOR) author, max(MATTER.TYPE) type, '+
                     ' GETCLIENTCODE(MATTER.NCLIENT) AS CLIENTID,nvl(MATTER.STATUS,0) as STATUS ,'+
                     ' nvl(tablevalueembed(''mattertype'',''mattertype.code'',''''''''||matter.TYPE||'''''''',''mattertype.descr''), ''Unknown'') AS type_desc, '+
                     ' tablevalue(''matterstatus'',''matterstatus.code'',''''''''||matter.status||'''''''',''matterstatus.descr'') AS matterstatus,'+
                     ' tablevalue(''mattersubtype'',''code'',''''''''||subtype||'''''''',''mattersubtype.descr'') AS mattersubtype, '+
                     '(select description from debtorstatus where debtorstatus.debtorstatus = matter.debtorstatus) as description, '+
                     '(select row_colour from debtorstatus where debtorstatus.row_colour = matter.debtorstatus) as row_colour, '+
//                     ' tablevalue(''debtorstatus'',''debtorstatus.debtorstatus'',''''''''||matter.debtorstatus||'''''''',''debtorstatus.description'') as description,'+
//                     ' tablevalue(''debtorstatus'',''debtorstatus.debtorstatus'',''''''''||matter.debtorstatus||'''''''', ''debtorstatus.row_colour'') as row_colour,'+
                     'nvl(MATTER.JURISDICTION,0) as JURISDICTION, nvl(MATTER.SUBTYPE,0) as SUBTYPE, MATTER.ACCT, '+
                     'archivereview, matter.archivenum, archivedest, al.archivebox, al.archvlocn, TRUNC (al.created) as al_created, '+
                     'isallowedmatteraccess(MATTER.NMATTER,'+QUOTEDSTR(dmAxiom.UserID)+',max(restrict_access)) RESTRICT_ACCESS ,'+
                     'getwipamount (matter.nmatter) AS wip, CASE WHEN (getdebtorsamount (matter.nmatter) < 0) THEN (getdebtorsamount (matter.nmatter) * -1)'+
                     ' ELSE getdebtorsamount (matter.nmatter) END AS debtors, '+
                     ' getclearedtrust (matter.nmatter) AS trust, al.FOLDER_DTLS, al.barcode, matter.nname, '+
                     ' NVL ((SELECT bill_amount FROM (SELECT nfee_debtornotes, bill_amount, nmatter, '+
                     ' MAX(nfee_debtornotes) OVER (PARTITION BY nmatter) AS rmax_nfee_debtornotes, MAX(CONTROLLER) AS CONTROLLER '+
                     ' FROM fee_debtornotes) WHERE nfee_debtornotes = rmax_nfee_debtornotes AND nmatter = matter.nmatter), '+
                     ' 0)  AS bill_amount ';
                    // min(MATTER.RESTRICT_ACCESS) RESTRICT_ACCESS ';

   sSQLArchiveExport := 'SELECT ''P'' AS PARENT, matter.fileid fileid, 0, '+
                        'phonebook.search AS title, matter.nclient nclient, matter.shortdescr shortdescr, '+
                        'matter.longdescr longdescr, matter.nmatter nmatter, matter.partner partner, '+
                        'matter.author author, matter.TYPE TYPE, getclientcode (matter.nclient) AS clientid, '+
                        'NVL (matter.status, 0) AS status, '+
                        'NVL (tablevalueembed (''mattertype'',''mattertype.code'','''''''' || matter.TYPE || '''''''','+
                             ' ''mattertype.descr'' ), ''Unknown'' ) AS type_desc, '+
                        'tablevalue (''matterstatus'', ''matterstatus.code'', '''''''' || matter.status || '''''''', '+
                                    ' ''matterstatus.descr'' ) AS matterstatus, '+
                        'tablevalue (''mattersubtype'', ''code'', '''''''' || SUBTYPE || '''''''',''mattersubtype.descr'' '+
                        '  ) AS mattersubtype, '+
                        '(SELECT description FROM debtorstatus WHERE debtorstatus.debtorstatus = matter.debtorstatus) AS debtorstatus, '+
                        'NVL (matter.SUBTYPE, 0) AS SUBTYPE, matter.acct, archivereview, matter.archivenum, archivedest, '+
                        'al.archivebox archivebox, al.archvlocn archvlocn, TRUNC (al.created) AS al_created, '+
                        'isallowedmatteraccess (matter.nmatter, '+QUOTEDSTR(dmAxiom.UserID)+', restrict_access ) restrict_access,'+
                        'getwipamount (matter.nmatter) AS wip, CASE WHEN (getdebtorsamount (matter.nmatter) < 0) THEN (getdebtorsamount (matter.nmatter) * -1)'+
                        ' ELSE getdebtorsamount (matter.nmatter) END AS debtors, '+
                        ' getclearedtrust (matter.nmatter) AS trust, al.FOLDER_DTLS, al.barcode, matter.nname, '+
                        ' NVL ((SELECT bill_amount FROM (SELECT nfee_debtornotes, bill_amount, nmatter, '+
                        ' MAX(nfee_debtornotes) OVER (PARTITION BY nmatter) AS rmax_nfee_debtornotes, MAX(CONTROLLER) AS CONTROLLER '+
                        ' FROM fee_debtornotes) WHERE nfee_debtornotes = rmax_nfee_debtornotes AND nmatter = matter.nmatter), '+
                        ' 0)  AS bill_amount ';

   bAlreadyShown := False;
   if SystemString('WORDPROC') = 'WORD97' then
     aMerge.ImageIndex := imgWORD
   else if SystemString('WORDPROC') = 'WORDPERFECT8' then
     aMerge.ImageIndex := imgWP;

//   FLookup := luUnassigned;
   dtpOpenedSince.DateTime := Trunc(Date);
   chkOpenedSince.Checked := False;
   dtpOpenedBefore.DateTime := Trunc(Date);
   chkOpenedBefore.Checked := False;

   // Opened
   dtTempValue := SettingLoadDate('Matter Search', 'Opened Since Date');
   if dtTempValue <> NullDate then
   begin
      chkOpenedSince.Checked := True;
      dtpOpenedSince.Date := dtTempValue;
   end;
   dtTempValue := SettingLoadDate('Matter Search', 'Opened Before Date');
   if dtTempValue <> NullDate then
   begin
     chkOpenedBefore.Checked := True;
     dtpOpenedBefore.Date := dtTempValue;
   end;
   // Completed
   dtTempValue := SettingLoadDate('Matter Search', 'Completed Since Date');
   if dtTempValue <> NullDate then
   begin
      chkCompletedSince.Checked := True;
      dtpCompletedSince.Date := dtTempValue;
   end;
   dtTempValue := SettingLoadDate('Matter Search', 'Completed Before Date');
   if dtTempValue <> NullDate then
   begin
     chkCompletedBefore.Checked := True;
     dtpCompletedBefore.Date := dtTempValue;
   end;
     // SLE
   dtTempValue := SettingLoadDate('Matter Search', 'SLE Since Date');
   if dtTempValue <> NullDate then
   begin
      chkSLESince.Checked := True;
      dtpSLESince.Date := dtTempValue;
   end;
   dtTempValue := SettingLoadDate('Matter Search', 'SLE Before Date');
   if dtTempValue <> NullDate then
   begin
     chkSLEBefore.Checked := True;
     dtpSLEBefore.Date := dtTempValue;
   end;

   if not dmAxiom.WANEnabled then
   begin
 {     for iCtr := 0 to vMatters.ColumnCount - 1 do
      begin
    {    sTmp := SettingLoadString(dmAxiom.UserID, 'MATTER SEARCH', 'COLUMN' + IntToStr(iCtr));
        if sTmp <> '' then
          dbgrMatters.Columns[iCtr].FieldName := sTmp;
        sTmp := SettingLoadString(dmAxiom.UserID, 'MATTER SEARCH', 'COLUMNTITLE' + IntToStr(iCtr));
        if sTmp <> '' then
          dbgrMatters.Columns[iCtr].Title.Caption := sTmp;
    }
{       iTmp := SettingLoadInteger(dmAxiom.UserID, 'MATTER SEARCH', 'COLUMNWIDTH' + IntToStr(iCtr));
        if iTmp <> 0 then
          vMatters.Columns[iCtr].Width := iTmp;
      end;    }

//      SettingLoadStream(dmAxiom.UserID,'MATTER SEARCH GRID', vMatters);

      if SettingLoadBoolean(dmAxiom.UserID, 'MATTER SEARCH', 'MAXIMIZED') then
        Self.WindowState := wsMaximized
      else
      begin
        iTmp := SettingLoadInteger(dmAxiom.UserID, 'MATTER SEARCH', 'WIDTH');
        if iTmp <> 0 then
          Self.Width := iTmp;
        iTmp := SettingLoadInteger(dmAxiom.UserID, 'MATTER SEARCH', 'HEIGHT');
        if iTmp <> 0 then
          Self.Height := iTmp;
      end;
   end;

//   SettingLoadStream(dmAxiom.UserID,'MATTER SEARCH GRID', vMatters);

   StringPopulate(cmbOPCategory.Items, 'PBGROUP', 'CATEGORY', 'OTHERPARTY = ''Y''');

   SaveFilter := False;
   SaveConfig := False;

   Label14.Visible := dmAxiom.WANEnabled;
   Label21.Visible := dmAxiom.WANEnabled;
   edtClientSearch.Visible := dmAxiom.WANEnabled;
   edtFileSearch.Visible := dmAxiom.WANEnabled;

   sTempValue := '';


   sTempValue := SettingLoadString('Matter Search', 'Operator');
   if(sTempValue = '') then
     cbOperator.EditValue := sTempValue
   else
   begin
     qOperator.Open();
     cbOperator.EditValue    := sTempValue;
   end;

   sTempValue := SettingLoadString('Matter Search', 'Partner');
   if( sTempValue = '') then
     cbPartner.EditValue := sTempValue
   else
   begin
     qPartner.Open();
     cbPartner.EditValue     := sTempValue;
   end;

   sTempValue := SettingLoadString('Matter Search', 'Controller');
   if( sTempValue = '') then
     cbController.EditValue := sTempValue
   else
   begin
     qController.Open();
     cbController.EditValue  := sTempValue;
   end;

   sTempValue := SettingLoadString('Matter Search', 'Author');
   if( sTempValue = '') then
     cbAuthor.EditValue := sTempValue
   else
   begin
     qAuthor.Open();
     cbAuthor.EditValue      := sTempValue;
   end;

   sTempValue := SettingLoadString('Matter Search', 'Type');
   if (sTempValue <> '') then
   begin
      qryMatterType.Open();
      cbType.EditValue := sTempValue;
      cbTypeChange(Self);
   end;

   sTempValue := SettingLoadString('Matter Search', 'SubType');
   if ( sTempValue <> '' ) then
   begin
       qryMatterSubType.Open();
       cbSubType.EditValue := sTempValue;
       cbSubTypeChange(Self);
   end;

   sTempValue := SettingLoadString('Matter Search', 'Deptartment');
   if ( sTempValue <> '' ) then
   begin
       qryDepartment.Open();
       cmbDepartment.EditValue := sTempValue;
       cmbDepartmentPropertiesChange(Self);
   end;

   sTempValue := SettingLoadString('MATTER SEARCH', 'WORKFLOWTYPE');
   if ( sTempValue <> '' ) then
   begin
      if not qryWorkFlowType.Active then
         qryWorkFlowType.Open;
//      StringPopulate(cbWorkFlowType.Items, 'WORKFLOWTYPE', 'CODE');
      cbWorkFlowType.Text := sTempValue;
      cbWorkFlowTypeChange(self);
   end;

   sTempValue := SettingLoadString('Matter Search', 'Branch');
   if ( sTempValue <> '' ) then
   begin
      qryBranch.ParamByName('entity').AsString := dmAxiom.Entity;
      qryBranch.Open();
      cbBranch.EditValue := sTempValue;
      cbBranchChange(self);
   end;

   sTempValue := SettingLoadString('Matter Search', 'Jurisdiction');
   if (sTempValue <> '' ) then
   begin
      qryJurisdiction.Open();
      cbJurisdiction.EditValue := sTempValue;
      cbJurisdictionChange(self);
   end;

   sTempValue := SettingLoadString('Matter Search', 'MatterStatus');
   if ( sTempValue <> '' ) then
   begin
      qryMatterStatus.Open();
      cbStatus.EditValue := sTempValue;
      cbStatusChange(self);
   end;

   sTempValue := SettingLoadString('Matter Search', 'DebtorStatus');
   if ( sTempValue <> '' ) then
   begin
      qryDebtorStatus.Open();
      cmbDebtorStatus.EditValue := sTempValue;
   end;

   tbClientSearch.Text := SettingLoadString('Matter Search', 'ClientSearch');

   //tbClient.Text := SettingLoadString('Matter Search', 'Client');
    tbDesc.Text := SettingLoadString('Matter Search', 'Descr');

   cmbOPCategory.ItemIndex := cmbOPCategory.Items.IndexOf(SettingLoadString('MATTER SEARCH', 'OPCATEGORY'));
   if cmbOPCategory.ItemIndex = -1 then
     cmbOPCategory.ItemIndex := 0; // Default to Static Other Party Search
   tbOtherParty.Text := SettingLoadString('Matter Search', 'Other Party');

   tbContact.Text := SettingLoadString('Matter Search', 'Contact');
   //tbFile.Text := SettingLoadString('Matter Search', 'FileID');
   tbClientCode.Text := SettingLoadString('Matter Search', 'ClientCode');
   tbNotes.Text := SettingLoadString('Matter Search', 'Notes');
   //chkOnlyCurrent.Checked := SettingLoadBoolean('MATTER SEARCH', 'ONLYCURRENT');
   cbShowRecentlyAccessed.Checked := SettingLoadBoolean('MATTER SEARCH', 'CURRENTMATTERS');

   if dmAxiom.WANEnabled then
   begin
      edtClientSearch.Text := SettingLoadString('MATTER SEARCH', 'WANClientSearch');
      edtFileSearch.Text := SettingLoadString('MATTER SEARCH', 'WANFileSearch');
   end;

   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblTrust.Caption := 'Client Funds';
      vMattersTRUST.Caption := 'Client Funds';
   end;

   vMatters.OptionsCustomize.ColumnsQuickCustomization := dmAxiom.Security.System.GridColumnCustomizing;

   case SettingLoadInteger('Matter Search', 'Lookup') of
     0: FLookup := luUnassigned;
     1: FLookup := luClient;
     2: FLookup := luFileID;
   end;
end;

procedure TfrmMattersearch.setDisplayNames;
var
   imaxLength : integer;
begin
   imaxLength := 0;
   lblPartner.Caption := getLabelValue('MATTER','PARTNER',imaxLength, 'Partner');
   lblOperator.Caption := getLabelValue('MATTER','OPERATOR',imaxLength, 'Operator');
   lblAuthor.Caption := getLabelValue('MATTER','AUTHOR',imaxLength, 'Author');
   lblController.Caption := getLabelValue('MATTER','CONTROLLER',imaxLength, 'Controller');
   lblParaLegal.Caption := getLabelValue('MATTER','PARA LEGAL',imaxLength, 'Para Legal');
   vMattersARCHIVENUM.Caption := getLabelValue('MATTER','ARCHIVENUM',imaxLength, 'Archived No');
   vMattersPARTNER.Caption := getLabelValue('MATTER','PARTNER',imaxLength,'Partner');
   vMattersAUTHOR.Caption := getLabelValue('MATTER','AUTHOR',imaxLength,'Author');
   vMattersARCHIVENUM.Caption := getLabelValue('MATTER','ARCHIVENUM', imaxLength, 'Archived No');
   lblArchivedNo.Caption := getLabelValue('MATTER','ARCHIVENUM', imaxLength, 'Archived No');
   vMattersCONTROLLER.Caption := getLabelValue('MATTER','CONTROLLER',imaxLength, 'Controller');
end;

procedure TfrmMatterSearch.EnableTimer(Sender: TObject);
begin
   SaveFilter := True;
   tmrSearch.Enabled := true;
end;

function TfrmMatterSearch.FindMatter(sFileID : string) : boolean;
begin
  sLastFileID := sFileID;
  if not dmAxiom.qryMSearch.Active then
    MakeSQL;
  Result := dmAxiom.qryMSearch.Locate('FILEID', sFileID, []);
end;

procedure TfrmMatterSearch.CheckReturn(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    MakeSQL;
    pageSearch.ActivePage := tabGrid;
    Key := #0;
  end;
end;

procedure TfrmMatterSearch.cbPartnerKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key >= 'a') and (Key <= 'z') then
    Key := Chr(Ord(Key) + Ord('A') - Ord('a'));
  CheckReturn(Sender, Key);
end;

procedure TfrmMatterSearch.tabGridShow(Sender: TObject);
begin
{   case FLookup of
      luUnassigned, luClient : tbClientSearch.SetFocus;
      luFIleID : tbFileSearch.SetFocus;
   end;   }
   case FLookup of
         luUnassigned, luFileID: tbClientSearch.SetFocus;
         luClient:  tbClientMatterSearch.SetFocus;
   end;
//   tbClientSearch.SetFocus;
   if SystemString('docs_reg') = C_DOCUMENTPASSWORD then
      bbtnMSWord.Enabled := True;
end;

procedure TfrmMatterSearch.MakeTitle;
begin
   sTitle := ' Matter ';
   sAnd := ' for ';

   case rgMatterOptions.ItemIndex of
      0: AddTitle('Only current', 'Matters');
      1: AddTitle('Only Closed', 'Matters');
      2: AddTitle('All', 'Matters');
      3: AddTitle('Only Archived', 'Matters');
      4: AddTitle('Only Prospective','Matters');
   end;


   if(not VarIsNull(cbOperator.EditValue)) then
     AddTitle('Operator', cbOperator.EditValue);
   if(not VarIsNull(cbPartner.EditValue)) then
     AddTitle('Partner', cbPartner.EditValue);
   if(not VarIsNull(cbController.EditValue)) then
     AddTitle('Controller', cbController.EditValue);
   if(not VarIsNull(cbAuthor.EditValue)) then
     AddTitle('Author', cbAuthor.EditValue);

   AddTitle('Type', cbType.Text);
   AddTitle('Sub Type', cbSubType.Text);
   AddTitle('Branch', cbBranch.Text);
   AddTitle('WorkFlow Type', cbWorkFlowType.Text);
   if tbClientSearch.Text <> '' then
     AddTitle('Client Client Name containing', QuotedStr(tbClientSearch.Text));
   if tbClientMatterSearch.Text <> '' then
   begin
     if SystemString('MATTER_ONLY_SEARCH') = 'N' then
        AddTitle('Client Code, Client Name, Matter or Matter description containing', QuotedStr(tbClientMatterSearch.Text))
     else
        AddTitle('Matter containing', QuotedStr(tbClientMatterSearch.Text));
   end;
   AddTitle('Description containing', tbDesc.Text);
   AddTitle(cmbOPCategory.Text + ' containing', tbOtherParty.Text);
   AddTitle('Contact containing', tbContact.Text);
   //AddTitle('File Number like', tbFile.Text);
   AddTitle('Client Code like', tbClientCode.Text);
   if chkOpenedSince.Checked and chkOpenedBefore.Checked then
     AddTitle('Matters opened between', FormatDateTime('ddddd', dtpOpenedSince.Date) + ' and ' + FormatDateTime('ddddd', dtpOpenedBefore.Date))
   else if chkOpenedSince.Checked then
     AddTitle('Matters opened since', FormatDateTime('ddddd', dtpOpenedSince.Date))
   else if chkOpenedBefore.Checked then
     AddTitle('Matters opened before', FormatDateTime('ddddd', dtpOpenedBefore.Date));

 //  if rgMatterOptions.ItemIndex = 0 then  // chkOnlyCurrent.Checked then
 //    AddTitle('Only current', 'Matters');
   if chkCompletedSince.Checked and chkCompletedBefore.Checked then
     AddTitle('Matters completed between', FormatDateTime('ddddd', dtpCompletedSince.Date) + ' and ' + FormatDateTime('ddddd', dtpCompletedBefore.Date))
   else if chkCompletedSince.Checked then
     AddTitle('Matters completed since', FormatDateTime('ddddd', dtpCompletedSince.Date))
   else if chkCompletedBefore.Checked then
     AddTitle('Matters completed before', FormatDateTime('ddddd', dtpOpenedBefore.Date));
   if neWIP.AsCurrency <> 0 then
     AddTitle('WIP >', neWIP.Text);
   if neDebtors.AsCurrency <> 0 then
     AddTitle('Debtors >', neDebtors.Text);
   if neDisb.AsCurrency <> 0 then
     AddTitle('Disbursements >', neDisb.Text);
   if neFeesBilled.AsCurrency <> 0 then
     AddTitle('Fees Billed >', neFeesBilled.Text);
   {if neFeesRecvd.AsCurrency <> 0 then
     AddTitle('Fees Received >', neFeesRecvd.Text);}
   if neSund.AsCurrency <> 0 then
     AddTitle('Sundries >', neSund.Text);
   if neTrust.AsCurrency <> 0 then
     AddTitle('Trust >', neTrust.Text);
   if neClearTrust.AsCurrency <> 0 then
     AddTitle('Cleared Trust >', neClearTrust.Text);
   if cbShowRecentlyAccessed.Checked then
     AddTitle('Recently Accessed Matters','');
   if cmbDebtorStatus.Text <> '' then
      AddTitle('Debtor Status is',cmbDebtorStatus.Text);
   if cmbDepartment.Text <> '' then
      AddTitle('Department is', cmbDepartment.Text);

   if chkArchivedSince.Checked and chkArchivedBefore.Checked then
     AddTitle('Matters Archived between', FormatDateTime('ddddd', dtpArchivedSince.Date) + ' and ' + FormatDateTime('ddddd', dtpArchivedBefore.Date))
   else if chkArchivedSince.Checked then
     AddTitle('Matters Archived since', FormatDateTime('ddddd', dtpArchivedSince.Date))
   else if chkArchivedBefore.Checked then
     AddTitle('Matters Archived before', FormatDateTime('ddddd', dtpArchivedBefore.Date));

   if edtArchiveNumber.Text <> '' then
      AddTitle('Archived number = ', edtArchiveNumber.Text);

   if edtBarcode.Text <> '' then
      AddTitle('Barcode number = ', edtBarcode.Text);
end;

procedure TfrmMatterSearch.AddTitle(sDescr : string; sValue : string);
begin
   if sValue <> '' then
   begin
      sTitle := sTitle + sAnd + sDescr + ' '  + sValue;
    sAnd := ' and ';
   end;
end;

procedure TfrmMatterSearch.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Self.ModalResult = mrOK then
  begin

{    if tbFileSearch.Text <> '' then
      if UpperCase(tbFileSearch.Text) <> Copy(dmAxiom.qryMSearch.FieldByName('FILEID').AsString, 1, Length(tbFileSearch.Text)) then
      begin
        MsgInfo('The Matter number being searched on does not match the Matter located.' + #13 + #13 +
                'You may need to clear the filter or refresh the Matters displayed,' + #13 +
                'or the Matter may have been archived.');
        CanClose := False;
      end;   }

    try
      if CanClose then
      begin
         ReopenListUpdate('MATTER', dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
         sLastFileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      end;
    except
    //
    end;
//    else
//      tbFileSearch.SelectAll;
  end;
end;

procedure TfrmMatterSearch.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
//  if dbgrMatters.Visible then
//    dmAxiom.qryMSearch.MoveBy(5);
end;

procedure TfrmMatterSearch.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
//  if dbgrMatters.Visible then
//    dmAxiom.qryMSearch.MoveBy(-5);
end;

procedure TfrmMatterSearch.FormDestroy(Sender: TObject);
var
  iCtr: integer;
begin
  FreeAndNil(FRecentActions);

  FreeAndNil(MatterLabel);
//  SettingSave('Matter Search', 'Lookup', Ord(FLookup));

  SettingSave('Matter Search', 'Lookup', Ord(FLookup));
  if SaveFilter then
  begin
     if(VarIsNull(cbOperator.EditValue)) then
       SettingSave('Matter Search', 'Operator', '')
     else
       SettingSave('Matter Search', 'Operator', VarToStr(cbOperator.EditValue));
     if(VarIsNull(cbPartner.EditValue)) then
       SettingSave('Matter Search', 'Partner', '')
     else
       SettingSave('Matter Search', 'Partner', VarToStr(cbPartner.EditValue));
     if(VarIsNull(cbController.EditValue)) then
       SettingSave('Matter Search', 'Controller', '')
     else
       SettingSave('Matter Search', 'Controller', VarToStr(cbController.EditValue));
     if(VarIsNull(cbAuthor.EditValue)) then
       SettingSave('Matter Search', 'Author', '')
     else
       SettingSave('Matter Search', 'Author', VarToStr(cbAuthor.EditValue));
     // opened
     if chkOpenedSince.Checked then
         SettingSave('Matter Search', 'Opened Since Date', DateToStr(dtpOpenedSince.Date))
     else
         SettingSave('Matter Search', 'Opened Since Date', NullDate);
     if chkOpenedBefore.Checked then
         SettingSave('Matter Search', 'Opened Before Date', DateToStr(dtpOpenedBefore.Date))
     else
         SettingSave('Matter Search', 'Opened Before Date', NullDate);
     // completed
     if chkCompletedSince.Checked then
         SettingSave('Matter Search', 'Completed Since Date', DateToStr(dtpCompletedSince.Date))
     else
         SettingSave('Matter Search', 'Completed Since Date', NullDate);
     if chkCompletedBefore.Checked then
         SettingSave('Matter Search', 'Completed Before Date', DateToStr(dtpCompletedBefore.Date))
     else
         SettingSave('Matter Search', 'Completed Before Date', NullDate);
     //sle
     if chkSLESince.Checked then
         SettingSave('Matter Search', 'SLE Since Date', DateToStr(dtpSLESince.Date))
     else
         SettingSave('Matter Search', 'SLE Since Date', NullDate);
     if chkSLEBefore.Checked then
         SettingSave('Matter Search', 'SLE Before Date', DateToStr(dtpSLEBefore.Date))
     else
         SettingSave('Matter Search', 'SLE Before Date', NullDate);

     if (VarIsNull(tbClientSearch.EditingValue)) then
        SettingSave('Matter Search', 'ClientSearch', '')
     else
        SettingSave('Matter Search', 'ClientSearch', VarToStr(tbClientSearch.EditValue));

     if (VarIsNull(tbClientMatterSearch.EditingValue)) then
        SettingSave('Matter Search', 'ClientMatterSearch', '')
     else
        SettingSave('Matter Search', 'ClientMatterSearch', VarToStr(tbClientMatterSearch.EditValue));

     if (VarIsNull(cmbDebtorStatus.EditingValue)) then
        SettingSave('Matter Search', 'DebtorStatus', '')
     else
        SettingSave('Matter Search', 'DebtorStatus', VarToStr(cmbDebtorStatus.EditValue));

     SettingSave('Matter Search', 'Deptartment', VarToStr(cmbDepartment.EditValue));
     SettingSave('Matter Search', 'Type', VarToStr(cbType.EditValue) {cbType.Text});
     SettingSave('Matter Search', 'SubType', VarToStr(cbSubType.EditValue));
     SettingSave('MATTER SEARCH', 'WORKFLOWTYPE', cbWorkFlowType.Text);
     SettingSave('Matter Search', 'Branch', VarToStr(cbBranch.EditValue));
     SettingSave('Matter Search', 'Jurisdiction', VarToStr(cbJurisdiction.EditValue));
     SettingSave('Matter Search', 'MatterStatus', VarToStr(cbStatus.EditValue));
     //SettingSave('Matter Search', 'Client', tbClient.Text);
     SettingSave('Matter Search', 'Descr', tbDesc.Text);
     SettingSave('MATTER SEARCH', 'OPCATEGORY', cmbOPCategory.Text);
     SettingSave('Matter Search', 'Other Party', tbOtherParty.Text);
     SettingSave('Matter Search', 'Contact', tbContact.Text);
     //SettingSave('Matter Search', 'FileID', tbFile.Text);
     SettingSave('Matter Search', 'ClientCode', tbClientCode.Text);
     SettingSave('Matter Search', 'Notes', tbNotes.Text);
//     SettingSave('MATTER SEARCH', 'ONLYCURRENT', chkOnlyCurrent.Checked);
     SettingSave('MATTER SEARCH', 'CURRENTMATTERS', cbShowRecentlyAccessed.Checked);
     if dmAxiom.WANEnabled then
     begin
       SettingSave('MATTER SEARCH', 'WANClientSearch', edtClientSearch.Text);
       SettingSave('MATTER SEARCH', 'WANFileSearch', edtFileSearch.Text);
     end;
    end;

  if SaveConfig then
  begin
    if Self.WindowState = wsMaximized then
      SettingSave('MATTER SEARCH', 'MAXIMIZED', True)
    else
    begin
      SettingDelete('MATTER SEARCH', 'MAXIMIZED');
      SettingSave('MATTER SEARCH', 'WIDTH', Self.Width);
      SettingSave('MATTER SEARCH', 'HEIGHT', Self.Height);
    end;

    SettingSaveStream(dmAxiom.UserID, 'MATTER SEARCH GRID', vMatters);

{    for iCtr := 0 to vMatters.ColumnCount - 1 do
    begin
      SettingSave('MATTER SEARCH', 'COLUMN' + IntToStr(iCtr), vMatters.Columns[iCtr].DataBinding.FieldName);
      SettingSave('MATTER SEARCH', 'COLUMNTITLE' + IntToStr(iCtr), vMatters.Columns[iCtr].Caption);
      SettingSave('MATTER SEARCH', 'COLUMNWIDTH' + IntToStr(iCtr), vMatters.Columns[iCtr].Width);
    end; }
  end;
end;

procedure TfrmMatterSearch.FilterItemChange(Sender: TObject);
begin
  SaveFilter := True;
  bNoFilter := false;
  RefreshSearch := True;
end;

procedure TfrmMatterSearch.cbBranchChange(Sender: TObject);
begin
{  SaveFilter := True;
  bNoFilter := false;
  if (cbBranch.Text <> '') then
    sBranchCode := dmTableCache.VGetString(dmTableCache.vtBranches ,'DESCR',cbBranch.Text,'CODE')
  else
    sBranchCode := ''; }
  RefreshSearch := True;
  SaveFilter := True;
   bNoFilter := false;
   if (cbBranch.Text <> '') then
      sBranchCode := cbBranch.EditValue //  qryBranch.FieldByName('code').AsString
   else
      sBranchCode := '';
end;

procedure TfrmMatterSearch.FormResize(Sender: TObject);
begin
   if Self.Width < MinWidth then
      Self.Width := MinWidth;
   SaveConfig := True;
end;

procedure TfrmMatterSearch.SetReopenList;
var
  LAction: TAction;
  i: Integer;
begin
  dmAxiom.qryOpenList.Close();
  dmAxiom.qryOpenList.ParamByName('p_author').AsString := dmAxiom.UserID;
  dmAxiom.qryOpenList.ParamByName('p_type').AsString := 'MATTER';
  dmAxiom.qryOpenList.Open();
  try
    LAction := Nil;
    while(not dmAxiom.qryOpenList.Eof) do
    begin
      if(dmAxiom.qryOpenList.FieldByName('IDX').AsInteger > FRecentActions.Count) then
      begin
        LAction := TAction.Create(ActionManager);
        FRecentActions.Add(LAction);
        LAction.ActionList := ActionManager;
        LAction.OnExecute := aRecentHolder.OnExecute;
        LAction.Category  := aRecentHolder.Category;
      end else
        LAction := FRecentActions[dmAxiom.qryOpenList.FieldByName('IDX').AsInteger - 1];

      LAction.Caption   := dmAxiom.qryOpenList.FieldByName('CODE').AsString + ' ' + dmAxiom.qryOpenList.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryOpenList.FieldByName('SHORTDESCR').AsString;
      LAction.Hint      := dmAxiom.qryOpenList.FieldByName('CODE').AsString;
      LAction.Tag       := dmAxiom.qryOpenList.FieldByName('IDX').AsInteger;
      LAction.Enabled   := True;
      LAction.Visible   := True;
      dmAxiom.qryOpenList.Next();
    end;
    if(Assigned(LAction)) then
    begin
      if(LAction.Tag < FRecentActions.Count) then
      begin
        i := LAction.Tag;
        while(i < FRecentActions.Count) do
        begin
          LAction := FRecentActions[i];
          LAction.Enabled := False;
          LAction.Visible := False;
          Inc(i);
        end;
      end;
    end;
  finally
    dmAxiom.qryOpenList.Close();

//    amHelper.DeleteItem(aRecentHolder.Category);
//    amHelper.AddCategory(aRecentHolder.Category,amHelper.FindItemByCaption('File'));

    aRecentHolder.Visible := False;
  end;
end;

procedure TfrmMatterSearch.cbWorkFlowTypeChange(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
  sWorkFlowCode := dmTableCache.VGetString(dmTableCache.vtWorkFlow ,'DESCR',cbWorkFlowType.Text,'CODE');
  sWorkFlowCode := cbWorkFlowType.Text;
end;

procedure TfrmMatterSearch.tmrSearchTimer(Sender: TObject);
begin
  //do something here on the timer
  tmrSearch.Enabled := false;
  if ((tbClientSearch.Text = '') and (tbClientMatterSearch.Text = '')) then
    MakeSQL()
  else
    MakeSQL(True);
end;

procedure TfrmMatterSearch.chkArchivedClick(Sender: TObject);
begin
  SaveFilter := True;
  bNoFilter := false;
//  chkOnlyCurrent.Checked := not chkArchived.Checked;
//  chkOnlyCurrent.Enabled := not chkArchived.Checked;
  lblArchiveSearch.Visible := rgMatterOptions.ItemIndex = 3;  // chkArchived.Checked;
  tbArchiveSearch.Visible := rgMatterOptions.ItemIndex = 3;  //chkArchived.Checked;
end;

procedure TfrmMatterSearch.MatterArchiveInit;
begin
//  bClosedOnly := (Trim(SystemString('ARCHIVEUNCLOSED')) <> 'Y');
  {bClosedOnly := True;}
  {changed so S&G can see open matters to archive}
end;

procedure TfrmMatterSearch.cbJurisdictionChange(Sender: TObject);
begin
   SaveFilter := True;
   bNoFilter := false;
   RefreshSearch := True;
   if (cbJurisdiction.Text <> '') then
//    sJurisdictionCode := dmTableCache.VGetString(dmTableCache.vtJurisdiction ,'DESCR',cbJurisdiction.Text,'CODE')
       sJurisdictionCode := cbJurisdiction.EditValue // qryJurisdiction.FieldByName('code').AsString
   else
      sJurisdictionCode := '';
end;

procedure TfrmMatterSearch.cbStatusChange(Sender: TObject);
begin
  SaveFilter := True;
  bNoFilter := false;
  RefreshSearch := True;
  if (cbStatus.Text <> '') then
//    sStatusCode := dmTableCache.VGetString(dmTableCache.vtMatterStatus ,'DESCR',cbStatus.Text,'CODE')
    sStatusCode := cbStatus.EditValue //   qryMatterStatus.FieldByName('code').AsString
  else
    sStatusCode := '';
end;

procedure TfrmMatterSearch.cbSubType1Change(Sender: TObject);
begin
  SaveFilter := True;
  bNoFilter := false;
  if (cbSubType.Text <> '') then
    sMatterSubTypeCode := dmTableCache.VGetString(dmTableCache.vtMatterSubType ,'DESCR',cbSubType.Text,'CODE')
  else
    sMatterSubTypeCode := '';
end;

procedure TfrmMatterSearch.aRefreshExecute(Sender: TObject);
begin
  dmAxiom.qryMSearch.Close;
  dmAxiom.qryMSearch.Open;
  pageSearch.ActivePage := tabGrid;
end;

procedure TfrmMatterSearch.aWIPNotesExecute(Sender: TObject);
var
  LDateStart,
  LDateEnd : TDateTime;
  lsUserName : String;
  lNMatter: integer;
  lYear, lMonth, lDay : Word;
begin
   if (vMatters.Controller.SelectedRowCount = 1) then
   begin
      frmFeeNotes := TfrmFeeNotes.Create(Self);

      lsUserName := dmAxiom.GetUserName;
      lNMatter := vMattersNMATTER.EditValue;
      try
         LDateStart := Now();
         LDateEnd := Now();
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'select min(created) as start_date, max(created) as end_date '+
                        '  from fee '+
                        '  where nmemo is null and type = ''N'' '+
                        '  and nmatter = :nmatter ';
            ParamByName('nmatter').AsInteger := lNMatter;
            Open;
            LDateStart := FieldByName('start_date').AsDateTime;
            LDateEnd   := FieldByName('end_date').AsDateTime;
            Close;
         end;
         with frmFeeNotes do
         begin
            EntryDate := LDateStart;
            EndDate   := LDateEnd;
            By        := lsUserName;
            Note      := '';
            Refno     := '';
            NMemo     := 0;
            NMatter   := lNMatter;
            Editing   := False;
            DecodeDate(Date, lYear, lMonth, lDay);
            BillDate  := EndOfAMonth(lYear, lMonth);

            qryAuthors.Close;
            qryAuthors.ParamByName('nmatter').AsInteger := lNMatter;
            qryAuthors.Open;

            if(ShowModal <> mrOk) then
               Exit;
         end;
      finally
         FreeAndNil(frmDebtorNotes);
      end;
   end;
end;

procedure TfrmMatterSearch.aClearAllExecute(Sender: TObject);
begin
  cbOperator.EditValue := '';
  cbPartner.EditValue := '';
  cbController.EditValue := '';
  cbAuthor.EditValue := '';
  cbType.EditValue := '';
  cbSubType.EditValue := '';
  sMatterTypeCode := '';
  sMatterSubTypeCode := '';
  cbWorkFlowType.Text := '';
  sWorkFlowCode := '';
  cbBranch.EditValue := '';
  sBranchCode := '';
  cmbDepartment.EditValue := '';
  chkOpenedSince.Checked := False;
  chkOpenedBefore.Checked := False;
  rgMatterOptions.ItemIndex := 0;
//  chkOnlyCurrent.Checked := True;
  chkCompletedSince.Checked := False;
  chkCompletedBefore.Checked := False;
  chkSLESince.Checked := False;
  chkSLEBefore.Checked := False;
//  chkArchived.Checked := False;
  tbDesc.Clear;
  tbOPRef.Clear;
  tbOtherParty.Clear;
  tbContact.Clear;
  //tbFile.Clear;
  tbClientCode.Clear;
  edBillTo.Clear;
  tbNotes.Clear;
  neWIP.AsCurrency := 0;
  neDebtors.AsCurrency := 0;
  neDisb.AsCurrency := 0;
  neFeesBilled.AsCurrency := 0;
  //neFeesRecvd.AsCurrency := 0;
  neSund.AsCurrency := 0;
  neTrust.AsCurrency := 0;
  neClearTrust.AsCurrency := 0;
  cbJurisdiction.EditValue := '';
  sJurisdictionCode := '';
  sBranchCode := '';
  sMatterSubTypeCode := '';
  sMatterTypeCode := '';
  cbStatus.EditValue := '';
  sStatusCode := '';
  cbShowRecentlyAccessed.Checked := False;
  cmbParaLegal.EditValue := '';
  cmbDebtorStatus.EditValue := '';
  chkArchivedDate.Checked := False;
  chkArchivedDateTo.Checked := False;
  edtBarcodeSearch.Text := '';
  edtBarcode.Text := '';
  edtArchiveNumber.Clear;
  edArchivedNotes.Clear;
  edBoxNumber.Clear;
  tbClientSearch.Clear;
  chkArchivedSince.Checked := False;
  chkArchivedBefore.Checked := False;
  tbClientMatterSearch.Clear;
{  if dmAxiom.WANEnabled then
  begin
      edtClientSearch.Clear;
      edtFileSearch.Clear;
  end;
}
  cmbDepartment.Properties.OnChange := nil;
  try
   cmbDebtorStatus.Clear;
  except

  end;
  cmbDebtorStatus.Properties.OnChange := cmbDepartmentPropertiesChange;

  bNoFilter := True;

  if(pageSearch.ActivePage = tabGrid) then
    MakeSQL(dmAxiom.WANEnabled);
end;

procedure TfrmMatterSearch.aMergeExecute(Sender: TObject);
var
  sTmpSQL : string;
  LWriteMerge: TfrmWriteMerge;
begin
  LWriteMerge := TfrmWriteMerge.Create(Self);
  sTmpSQL := 'SELECT MATTER.OPENED, MATTER.PARTNER, MATTER.AUTHOR, MATTER.RATE, MATTER.FILEID, MATTER.TITLE AS CLIENT, MATTER.PARTY1, MATTER.PARTY2, MATTER.PARTY3, MATTER.SHORTDESCR, '+
             'MATTER.LONGDESCR, MATTER.OFFICE, MATTER.TRUST_BAL, MATTER.CL_TRUST_BAL, MATTER.BILL_TO, MATTER.LASTTRANS, MATTER.LASTTRUST, PHONEBOOK.REFERREDBY, MATTER.DEBTORS, MATTER.NOTES, '+
             'MATTER.CONTACT AS MATTER_CONTACT, MATTER.EXP_COMPLETION, OPREF, PERIOD0, PERIOD1, PERIOD2, PERIOD3, MATTER.COMPLETED AS MATTER_COMPLETED,'+
             'MATTER.ARCHIVED as MATTER_ARCHIVED, MATTER.BARCODE, MATTER.CONTROLLER, PHONEBOOK.* '+
             ' FROM DEBTORSTATUS, PHONEBOOK, archive_location al, MATTER ' + sWhereClause;
//             ' FROM DEBTORSTATUS, PHONEBOOK, mattersubtype, matterstatus, mattertype, archive_location al, MATTER ' + sWhereClause;
  if sWhereClause = '' then
    sTmpSQL := sTmpSQL + ' WHERE '
  else
    sTmpSQL := sTmpSQL + ' AND ';
   sTmpSQL := sTmpSQL + ' MATTER.DEBTORSTATUS = DEBTORSTATUS.DEBTORSTATUS(+) ';
  LWriteMerge.SQL := sTmpSQL;
  LWriteMerge.AddSortField('SEARCH');
  LWriteMerge.AddSortField('SHORTDESCR');
  LWriteMerge.AddSortField('FILEID');
  if chkOpenedSince.Checked then
     LWriteMerge.OpenedSince := Trunc(dtpOpenedSince.Date);
  if chkOpenedBefore.Checked then
     LWriteMerge.OPENEDBEFORE := Trunc(dtpOpenedBefore.Date) + 1;
  if chkCompletedSince.Checked then
     LWriteMerge.COMPLETEDSINCE := Trunc(dtpCompletedSince.Date);
  if chkCompletedBefore.Checked then
     LWriteMerge.COMPLETEDBEFORE := Trunc(dtpCompletedBefore.Date) + 1;
  if chkSLESince.Checked then
     LWriteMerge.SLESINCE := Trunc(dtpSLESince.Date);
  if chkSLEBefore.Checked then
     LWriteMerge.SLEBEFORE := Trunc(dtpSLEBefore.Date) + 1;
   if chkArchivedSince.Checked then
      LWriteMerge.ARCHIVEDSINCE := Trunc(dtpArchivedSince.Date);
   if chkArchivedBefore.Checked then
      LWriteMerge.ARCHIVEDBEFORE := Trunc(dtpArchivedBefore.Date);

  LWriteMerge.Show;
end;

procedure TfrmMatterSearch.aPrintExecute(Sender: TObject);
begin
   try
      with qryMattersRpt do
      begin
         Close;
         SQL.Clear;
         SQL.Text := dmAxiom.qryMSearch.SQL.Text;
      end;
   finally
      DoSetParameters(qryMattersRpt, qryTotal);
      rptMatterList.Print;
   end;
{  qrMSearchMattersReport := TqrMSearchMattersReport.Create(self);
  try
    qrMSearchMattersReport.PreviewModal;
  finally
    FreeAndNil(qrMSearchMattersReport);
  end; }
end;

procedure TfrmMatterSearch.aPrintLabels(Sender: TObject);

  procedure GridChooseMatters();
  var
    iCtr, ARowIndex: Integer;
  begin
    if TAction(Sender) = aPrintLabelsAll then // the print all matter labels menu option was clicked
    begin
      vMatters.DataController.DataSource.DataSet.First;
      while not(vMatters.DataController.DataSource.DataSet.EOF) do
      begin
        MatterLabel.Add(vMatters.DataController.DataSource.DataSet.FieldByName('NMATTER').AsInteger);
        vMatters.DataController.DataSource.DataSet.Next;
      end;
    end else // the print selected matter labels option was clicked
    begin
      if vMatters.DataController.GetSelectedCount > 0 then
      begin
        with vMatters.DataController.DataSource.DataSet do
        begin
          for iCtr := 0 to vMatters.DataController.GetSelectedCount - 1 do
          begin
             ARowIndex := vMatters.DataController.GetSelectedRowIndex(iCtr);
             vMatters.ViewData.Records[ARowIndex].Focused := True;
             MatterLabel.Add(FieldByName('NMATTER').AsInteger);
          end;

//          for iCtr := 0 to vMatters.Controller.SelectedRowCount - 1 do
//          begin
//            GotoBookmark(Pointer(vMatters.Controller.SelectedRows[iCtr]));
//            MatterLabel.Add(FieldByName('NMATTER').AsInteger);
//          end;
        end;
      end else // just in case the the grid does not pick up that a cell is selected
        MatterLabel.Add(vMatters.DataController.DataSource.DataSet.FieldByName('NMATTER').AsInteger);
    end;
  end;

begin
  if TAction(Sender) = aPrintLabelsAll then
    if MsgAsk('Are you sure you want to print labels for all the Matters displayed?') = mrNo then
      Exit;

  if MatterLabel = nil then
    MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
  if not MatterLabel.Cancelled then
  begin
    GridChooseMatters();
    MatterLabel.Print;
  end;
end;

procedure TfrmMatterSearch.aPrintStatusExecute(Sender: TObject);
begin
  rptMatterStatus.Print;

 { qrMSearchMatterNoDescReport :=TqrMSearchMatterNoDescReport.Create(Self);
  try
    qrMSearchMatterNoDescReport.PreviewModal();
  finally
    FreeAndNil(qrMSearchMatterNoDescReport);
  end;  }
end;

procedure TfrmMatterSearch.aButtonOkExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmMatterSearch.OnUpdatePage(Sender: TObject);
begin
  TAction(Sender).Enabled := pageSearch.ActivePage.TabIndex = 0;
end;

procedure TfrmMatterSearch.aRecentHolderExecute(Sender: TObject);
var
  LFileID: string;
begin
  LFileID := Copy(dxBarMRUListMatters.Items[dxBarMRUListMatters.ItemIndex], 1, Pos(' ', dxBarMRUListMatters.Items[dxBarMRUListMatters.ItemIndex])-1);
  if Pos('&', LFileID) > 0 then
    LFileID := Copy(LFileID, 1, Pos('&', LFileID) - 1);

  if FindMatter(LFileID) then
    aButtonOk.Execute()
  else
  begin
    // Couldn't find the matter  - try clearing the filter
    if MsgAsk('This matter is not currently in your list.'#13'Do you want to clear the filter and search again?') = mrYes then
    begin
      aClearAll.Execute();
      MakeSQL;
      if FindMatter(LFileID) then
        aButtonOk.Execute()
      else
        MsgErr('Could not find matter ' + LFileID + '.'#13#13'Please change your filter criteria.');
    end else
      MsgErr('Could not find matter ' + LFileID + '.'#13#13'Please change your filter criteria.');
  end;
end;

procedure TfrmMatterSearch.aFileExitExecute(Sender: TObject);
begin
  Self.Close();
//  RemoveFromDesktop(Self);
end;

procedure TfrmMatterSearch.aFileExitUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := pageSearch.ActivePage.TabIndex = 0;
end;

procedure TfrmMatterSearch.ppVariable1GetText(Sender: TObject;
  var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmMatterSearch.rptMatterStatusPreviewFormCreate(
  Sender: TObject);
begin
   rptMatterStatus.PreviewForm.WindowState := wsMaximized;
//   TppViewer(rptMatterStatus.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TfrmMatterSearch.ppVariable3Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := Value + 1;
end;

procedure TfrmMatterSearch.ppVariable4Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := Value + 1;
end;

procedure TfrmMatterSearch.cbTypeChange(Sender: TObject);
begin
   SaveFilter := True;
   bNoFilter := false;
   RefreshSearch := True;
   if (cbType.Text <> '') then
      sMatterTypeCode := cbType.EditValue  //   qryMatterType.FieldByName('code').AsString
   else
      sMatterTypeCode := '';
  //clear the subtype and load the new ones....
//   cbSubType.Items.Clear;
   qryMatterSubType.Close();
   qryMatterSubType.ParamByName('mattertype').AsString := sMatterTypeCode;
   qryMatterSubType.Open();
//   cbSubType.Text := '';
//   dmTableCache.StringPopulate(cbSubType.Items, dmTableCache.vtMatterSubType, 'DESCR', 'MATTERTYPE', sMatterTypeCode);
end;

procedure TfrmMatterSearch.cbSubTypeChange(Sender: TObject);
begin
   SaveFilter := True;
   bNoFilter := false;
   RefreshSearch := True;
   if (cbSubType.Text <> '') then
      sMatterSubTypeCode := cbSubType.EditValue //  qryMatterSubType.FieldByName('code').AsString
   else
      sMatterSubTypeCode := '';
end;

procedure TfrmMatterSearch.cbTypeDropDown(Sender: TObject);
begin
   if not qryMatterType.Active then
      qryMatterType.Open();
end;

procedure TfrmMatterSearch.cbSubTypeDropDown(Sender: TObject);
begin
   if not qryMatterSubType.Active then
      qryMatterSubType.Open();
end;

procedure TfrmMatterSearch.cbPartnerDropDown(Sender: TObject);
begin
   if not qPartner.Active then
      qPartner.Open();
end;

procedure TfrmMatterSearch.cbControllerDropDown(Sender: TObject);
begin
   if not qController.Active then
      qController.Open();
end;

procedure TfrmMatterSearch.cbAuthorDropDown(Sender: TObject);
begin
   if not qAuthor.Active then
      qAuthor.Open();
end;

procedure TfrmMatterSearch.cbOperatorDropDown(Sender: TObject);
begin
   if not qOperator.Active then
      qOperator.Open();
end;

procedure TfrmMatterSearch.vMattersStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   if (ARecord.Values[0] = 'c') then
      AStyle := styContent;

   if ((ARecord.Level = 0) and (ARecord.Expandable = True))then
   begin
      AStyle := styArchivedMatter;
   end;

//   if (not VarIsNull(ARecord.Values[1])) then
//       AStyle.Color := TColor(ARecord.Values[1]);
end;

procedure TfrmMatterSearch.cbOperatorEnter(Sender: TObject);
begin
   if not qOperator.Active then
      qOperator.Open();
end;

procedure TfrmMatterSearch.cbAuthorEnter(Sender: TObject);
begin
   if not qAuthor.Active then
      qAuthor.Open();
end;

procedure TfrmMatterSearch.cbControllerEnter(Sender: TObject);
begin
   if not qController.Active then
      qController.Open();
end;

procedure TfrmMatterSearch.cbPartnerEnter(Sender: TObject);
begin
   if not qPartner.Active then
      qPartner.Open();
end;

procedure TfrmMatterSearch.cbWorkFlowTypeDropDown(Sender: TObject);
begin
//   if cbWorkflowType.Items.Count = 0 then
//      StringPopulate(cbWorkFlowType.Items, 'WORKFLOWTYPE', 'CODE');
end;

procedure TfrmMatterSearch.cmbOPCategoryChange(Sender: TObject);
begin
   RefreshSearch := True;
end;

procedure TfrmMatterSearch.vMattersAUTHORStylesGetHeaderStyle(
  Sender: TcxGridTableView; AColumn: TcxGridColumn; var AStyle: TcxStyle);
var
   imaxLength : integer;
begin
  imaxLength := 0;
   AColumn.Caption := getLabelValue('MATTER','AUTHOR',imaxLength); //qryGetLabelName.FieldByName('fieldname').AsString;
end;

procedure TfrmMatterSearch.vMattersCanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
aWIPNotes.Enabled := True;
end;

procedure TfrmMatterSearch.vMattersColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   SaveConfig := True;
   dmAxiom.qryMSearch.Close;
   sOrderBy := ' ORDER BY ';

   sOrderBy := sOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      sOrderBy := sOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      sOrderBy := sOrderBy + ' ASC';
   end
   else
   begin
      sOrderBy := sOrderBy + ' DESC';
   end;

   MakeSql();
end;

procedure TfrmMatterSearch.tbFileSearchChange(Sender: TObject);
begin
  EnableTimer(Sender);
  FLookup := luFileID;
end;

procedure TfrmMatterSearch.tbClientSearchChange(Sender: TObject);
begin
   EnableTimer(Sender);
   FLookup := luClient;
end;

procedure TfrmMatterSearch.dxBarSubItem2Popup(Sender: TObject);
begin
   ReopenListSet('MATTER', dxBarMRUListMatters);
end;

procedure TfrmMatterSearch.edBoxNumberPropertiesChange(Sender: TObject);
begin
   rgMatterOptions.ItemIndex := 3;
   FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.edtBarcodePropertiesChange(Sender: TObject);
begin
   rgMatterOptions.ItemIndex := 3;
   edtBarcodeSearch.Text := edtBarcode.Text;
   FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.edtBarcodeSearchPropertiesChange(Sender: TObject);
begin
   rgMatterOptions.ItemIndex := 3;
   edtBarcode.Text := edtBarcodeSearch.Text;
   FilterItemChange(Sender);
   EnableTimer(Sender);
end;

procedure TfrmMatterSearch.cbTypePropertiesInitPopup(Sender: TObject);
begin
   if not qryMatterType.Active then
      qryMatterType.Open();
end;

procedure TfrmMatterSearch.cbSubTypePropertiesInitPopup(Sender: TObject);
begin
   if not qryMatterSubType.Active then
      qryMatterSubType.Open();
end;

procedure TfrmMatterSearch.cbBranchPropertiesInitPopup(Sender: TObject);
begin
   if not qryBranch.Active then
   begin
      qryBranch.ParamByName('entity').AsString := dmAxiom.Entity;
      qryBranch.Open();
   end;
end;

procedure TfrmMatterSearch.cbJurisdictionPropertiesInitPopup(
  Sender: TObject);
begin
   if not qryJurisdiction.Active then
      qryJurisdiction.Open();
end;

procedure TfrmMatterSearch.cbStatusPropertiesInitPopup(Sender: TObject);
begin
   if not qryMatterStatus.Active then
      qryMatterStatus.Open();
end;

procedure TfrmMatterSearch.dxBarButton10Click(Sender: TObject);
begin
   Self.Close();
end;

procedure TfrmMatterSearch.cmbDepartmentPropertiesInitPopup(
  Sender: TObject);
begin
   if not qryDepartment.Active then qryDepartment.Open;
end;

procedure TfrmMatterSearch.cmbDepartmentPropertiesChange(Sender: TObject);
begin
   SaveFilter := True;
   bNoFilter := false;
   RefreshSearch := True;
end;

procedure TfrmMatterSearch.rgMatterOptionsClick(Sender: TObject);
begin
   RefreshSearch := True;
end;

procedure TfrmMatterSearch.cxLookupComboBox1PropertiesInitPopup(
  Sender: TObject);
begin
   if not qryWorkFlowType.Active then
      qryWorkFlowType.Open;
end;

procedure TfrmMatterSearch.tabFiltersShow(Sender: TObject);
begin
   if SystemString('docs_reg') <> C_DOCUMENTPASSWORD then
      bbtnMSWord.Enabled := False
end;

procedure TfrmMatterSearch.bbtnMSWordClick(Sender: TObject);
var
  varWord, varDoc, PropName : OleVariant;
  DocName,
  FileID,
  DocErrMsg: string;
  nCat: integer;
begin
   if IsObjectActive('Word.Application') = False then
      varWord := CreateOleObject('Word.Application')
   else
      varWord := GetActiveOleObject('Word.Application');
{   try
       varWord := GetActiveOleObject('Word.Application');
   except
      on EOleSysError do
      begin
         try
            varWord := CreateOleObject('Word.Application');
            varWord := GetActiveOleObject('Word.Application');
         except
            on e: Exception do
            begin
               MessageDlg('Error Starting MS Word: ' + E.Message, mtError, [mbOK], 0);
               varWord := null;
            end;
         end;
      end;
   end; }

   if(not VarIsNull(varWord)) then
   begin
      varWord.Visible := True;
      varDoc := varWord.Documents.Add;

      DocName := varWord.ActiveDocument.Name;
      varDoc := varWord.ActiveDocument;

      varDoc.Application.Activate;
      varDoc.Activewindow.WindowState := wdWindowStateMaximize;

      FileID := dmAxiom.qryMSearch.FieldByName('fileid').AsString;
      try
         varDoc.CustomDocumentProperties.Add('MatterNo', False, msoPropertyTypeString, FileID,'');
      except
        // silent means property already there
      end;

      try
         varDoc.BuiltIndocumentProperties(wdPropertyCategory) := FileID;
      except
          //
      end;
      if SystemString('doc_prompt_descr') = 'Y' then
         ExecuteFile('DocToDBSave.exe', dmAxiom.UserID, '', SW_SHOW, DocErrMsg )
   end;

{  OpWord1.Connected := True;
  OpWord1.Visible := True;
   try
       varWord := GetActiveOleObject('Word.Application');
   except
      on EOleSysError do
      begin
         try
            varWord := CreateOleObject('Word.Application');
         except
            on e: Exception do
            begin
               MessageDlg('Error Starting MS Word: ' + E.Message, mtError, [mbOK], 0);
               varWord := null;
            end;
         end;
      end;
   end;

   if(not VarIsNull(varWord)) then
   begin
      DocName := varWord.ActiveDocument.Name;
      varDoc := varWord.ActiveDocument;

      FileID := dmAxiom.qryMSearch.FieldByName('fileid').AsString;
      varDoc.CustomDocumentProperties.Add('MatterNo', False, msoPropertyTypeString, FileID,'');
      try
         varDoc.BuiltInDocumentProperties('Category').Value := FileID;
      except
          //
      end;
   end;    }
end;

procedure TfrmMatterSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SettingSave('Matter Search', 'Lookup', Ord(FLookup));
//   if OpWord1.Connected then
//      OpWord1.Connected := False;
   SettingSaveStream(dmAxiom.UserID, 'MATTER SEARCH GRID', vMatters);
end;

procedure TfrmMatterSearch.cmbParaLegalEnter(Sender: TObject);
begin
   if not qParaLegal.Active then
      qParaLegal.Open();
end;

procedure TfrmMatterSearch.vMattersCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  V, C: Variant;
  AColumn, AColourColumn: TcxCustomGridTableItem;
  AColour: integer;
begin
   AColourColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('ROW_COLOUR');
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('DESCRIPTION');
   if AColumn <> nil then
   begin
      V := VarToStr(AViewInfo.GridRecord.Values[AColumn.Index]);
      C := VarToStr(AViewInfo.GridRecord.Values[AColourColumn.Index]);
      if (C <> '') then
         AColour := StrToInt(C);
      if ( V <> '') and (C <> '')  then
      begin
         ACanvas.SetBrushColor(AColour);
    //    AFont.Color := clBlue;
         ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
      end;
   end;
end;  

procedure TfrmMatterSearch.vMattersPARTNERStylesGetHeaderStyle(
  Sender: TcxGridTableView; AColumn: TcxGridColumn; var AStyle: TcxStyle);
var
   imaxLength : integer;
begin
  imaxLength := 0;
  AColumn.Caption := getLabelValue('MATTER','PARTNER',imaxLength); //qryGetLabelName.FieldByName('fieldname').AsString;
end;

procedure TfrmMatterSearch.aPrintGridExecute(Sender: TObject);
begin
   try
      GridReportLink.Active := True;
      dxComponentPrinter1.Preview();
   finally
      GridReportLink.Active := False;
   end;
end;

procedure TfrmMatterSearch.aPrinttoXLExecute(Sender: TObject);
var
   filename: string;
   j, ColumnCount, FileHandle: integer;
   lPosition: TPoint;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      case rgMatterOptions.ItemIndex of
         3: begin
               try
                  with qryArchiveExp do
                  begin
                     Close;
//                     if chkArchivedDate.Checked or chkArchivedDateTo.Checked then
                        SQL.Text := sSQLArchiveExcelTemp + ' order by nmatter';
//                     else
//                        SQL.Text := dmAxiom.qryMSearch.SQL.Text;

                     if dmAxiom.runningide then
                        SQL.SaveToFile('c:\tmp\marchsearch.sql');
                     DoSetParameters(qryArchiveExp);
                     Open;
                  end;
                  try
                     if ExtractFileExt(FileName) = '' then
                        FileName := Filename + '.xls';
                     if FileExists(FileName) then
                        DeleteFile(filename);
                  except
                  //
                  end;

                  try
                     FileHandle := FileCreate(FileName);
                  finally
                     FileClose(FileHandle);
                  end;

                  if FileHandle <> -1 then
                  begin
                    try
                       scExcelExport.Filename := filename;
                       scExcelExport.ExcelVisible := False;
                       scExcelExport.Dataset := qryArchiveExp;
                       scExcelExport.ExportDataset;
                       scExcelExport.SaveAs(Filename,ffXLS);
                    finally
                       scExcelExport.Disconnect();
                       qryArchiveExp.Close;
                    end;
                  end
                  else
                    raise Exception.Create('Unable to create file.');

//                  ExportGrid4ToExcel(filename,dbgrMatters, True, True,True,'xls');
//                  ExportGridToExcel(filename,dbgrMatters, True, True, True, 'xls');
               finally
                  Self.Cursor := crDefault;
               end;
            end;
       else
          ExportGridToExcel(filename,dbgrMatters, True, True,True,'xls');
      end;
   end;
   GetCursorPos(lPosition);
   SetCursorPos(lPosition.X, lPosition.Y);
   Self.Cursor := crDefault;
end;

procedure TfrmMatterSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
     bnCancel.Click;
end;

procedure TfrmMatterSearch.chkOpenedSinceClick(Sender: TObject);
begin
  dtpOpenedSince.Enabled := chkOpenedSince.Checked;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkOpenedBeforeClick(Sender: TObject);
begin
  dtpOpenedBefore.Enabled := chkOpenedBefore.Checked;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkCompletedSinceClick(Sender: TObject);
begin
  dtpCompletedSince.Enabled := chkCompletedSince.Checked;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkCompletedBeforeClick(Sender: TObject);
begin
  dtpCompletedBefore.Enabled := chkCompletedBefore.Checked;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkSLESinceClick(Sender: TObject);
begin
  dtpSLESince.Enabled := chkSLESince.Checked;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkSLEBeforeClick(Sender: TObject);
begin
  dtpSLEBefore.Enabled := chkSLEBefore.Checked;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkArchivedDateClick(Sender: TObject);
begin
   dtpArchivedDate.Enabled := chkArchivedDate.Checked;
   if chkArchivedDate.Checked then
      dtpArchivedDate.Date := Now;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkArchivedDateToClick(Sender: TObject);
begin
   dtpArchivedDateTo.Enabled := chkArchivedDateTo.Checked;
   if chkArchivedDateTo.Checked then
      dtpArchivedDateTo.Date := Now;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkArchivedSinceClick(Sender: TObject);
begin
  dtpArchivedSince.Enabled := (Sender as TcheckBox).Checked;
  FilterItemChange(Sender);
end;

procedure TfrmMatterSearch.chkArchivedBeforeClick(Sender: TObject);
begin
   dtpArchivedBefore.Enabled := (Sender as TcheckBox).Checked;
   FilterItemChange(Sender);
end;

end.




