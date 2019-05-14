unit NSearch;

interface

uses
  Forms, SysUtils, Windows, Graphics, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxTextEdit, cxCheckBox, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxSchedulerLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, ppParameter, ppDesignLayer,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, dxPSCore, dxPScxCommon, Vcl.Dialogs, dxBar,
  cxBarEditItem, dxBarExtItems, cxClasses, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Controls, DBAccess, Uni, MemDS,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Vcl.Buttons, Vcl.CheckLst,
  dxStatusBar, cxGridExportLink, dxCore, dxPSDBTCLnk;


const
  imgWORD = 4;
  imgWP = 5;
  C_WHERE = ' WHERE ';

type
  TfrmPhoneBookSearch = class(TForm)
    StatusBar: TdxStatusBar;
    pSearch: TPanel;
    lSearch: TLabel;
    lGivenNames: TLabel;
    lLastName: TLabel;
    lCompany: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    eSearch: TEdit;
    cbSearch: TComboBox;
    cbGivenNames: TComboBox;
    eGivenNames: TEdit;
    cbLastName: TComboBox;
    eLastName: TEdit;
    cbCompany: TComboBox;
    eCompany: TEdit;
    lbGroups: TCheckListBox;
    pAndOrGivenNames: TPanel;
    rbORGivenNames: TRadioButton;
    rbANDGivenNames: TRadioButton;
    pRadioGroups: TPanel;
    rbANYGroups: TRadioButton;
    rbALLGroups: TRadioButton;
    pAndOrFirstName: TPanel;
    rbORLastName: TRadioButton;
    rbANDLastName: TRadioButton;
    pAndOrCompany: TPanel;
    rbORCompany: TRadioButton;
    rbANDCompany: TRadioButton;
    ckANDGroups: TCheckBox;
    pGridClient: TPanel;
    pGridBottom: TPanel;
    pBottomClient: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    bnAdvanced: TBitBtn;
    bnMore: TBitBtn;
    cbAutoQuery: TCheckBox;
    bnExecute2: TBitBtn;
    pSimpleSearch: TPanel;
    pSimpleSearchKey: TPanel;
    Label2: TLabel;
    eSearchBottom: TEdit;
    cbSearchBottom: TComboBox;
    pSimpleParties: TPanel;
    lSimplePartyType: TLabel;
    cbSimplePartyType: TComboBox;
    pAdvancedSearch: TPanel;
    Bevel2: TBevel;
    lAdvancedSearch: TLabel;
    Bevel4: TBevel;
    pAdvancedButtons: TPanel;
    bnAdd: TButton;
    bnRemove: TButton;
    bnExecute: TBitBtn;
    pAdvancedStuff: TPanel;
    eValue: TEdit;
    cbOperator: TComboBox;
    bAdvancedButtons: TPanel;
    rbORAdvanced: TRadioButton;
    rbANDAdvanced: TRadioButton;
    lbSearchItems: TListBox;
    pSearchResult: TPanel;
    Bevel3: TBevel;
    lSearchResults: TLabel;
    sSearchChildren: TSplitter;
    pChildView: TPanel;
    lChildCaption: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    dbgChildren: TcxGrid;
    tvChildren: TcxGridDBTableView;
    tvChildrenSEARCH: TcxGridDBColumn;
    tvChildrenNAME: TcxGridDBColumn;
    tvChildrenSALUTATION: TcxGridDBColumn;
    tvChildrenLASTNAME: TcxGridDBColumn;
    tvChildrenGIVENNAMES: TcxGridDBColumn;
    tvChildrenDEFAULTADDRESS: TcxGridDBColumn;
    dbgChildrenLevel1: TcxGridLevel;
    dbgrPhoneBook: TcxGrid;
    tvPhoneBook: TcxGridDBTableView;
    tvPhoneBookSEARCH1: TcxGridDBColumn;
    tvPhoneBookNAME1: TcxGridDBColumn;
    tvPhoneBookSALUTATION1: TcxGridDBColumn;
    tvPhoneBookLASTNAME1: TcxGridDBColumn;
    tvPhoneBookGIVENNAMES1: TcxGridDBColumn;
    tvPhoneBookDEFAULTADDRESS1: TcxGridDBColumn;
    dbgrPhoneBookLevel1: TcxGridLevel;
    qPhoneBook: TUniQuery;
    dsPhoneBook: TUniDataSource;
    qGroups: TUniQuery;
    ImageList: TImageList;
    tSearch: TTimer;
    ActionManager: TActionManager;
    aNew: TAction;
    aEdit: TAction;
    aRefresh: TAction;
    aClearAll: TAction;
    aMerge: TAction;
    aPrint: TAction;
    aHelp: TAction;
    aQueryNow: TAction;
    aAdvancedAdd: TAction;
    aAdvancedRemove: TAction;
    aShowAdvanced: TAction;
    aMore: TAction;
    aShowHideChildren: TAction;
    qPhoneBookFields: TUniQuery;
    qPhoneBookChildren: TUniQuery;
    dsPhoneBookChildren: TUniDataSource;
    dxBarManager1: TdxBarManager;
    btnCreatePhonebook: TdxBarButton;
    btnEditPhonebook: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    qPhonebookCount: TUniQuery;
    tvPhoneBookWORKPHONE: TcxGridDBColumn;
    tvPhoneBookPARENT: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbField: TcxLookupComboBox;
    dsPhoneBookFields: TUniDataSource;
    tvPhoneBookCLIENTID: TcxGridDBColumn;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    tvPhoneBookNNAME: TcxGridDBColumn;
    btnBulkEmail: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    btnPrintGrid: TdxBarButton;
    btnExp2Excel: TdxBarButton;
    OpenDialog: TOpenDialog;
    ComponentPrinter: TdxComponentPrinter;
    ComponentPrinterLink1: TdxGridReportLink;
    qPhonebookRpt: TUniQuery;
    dsPhonebookRpt: TUniDataSource;
    plPhonebookRpt: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    ppLabel16: TppLabel;
    ppDBText13: TppDBText;
    ppLabel17: TppLabel;
    ppDBText14: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel18: TppLabel;
    ppShape3: TppShape;
    ppLabel19: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    tvPhoneBookEMAIL: TcxGridDBColumn;
    tvPhoneBookOCCUPATION: TcxGridDBColumn;
    qPhoneBookFieldsCOLUMN_NAME: TStringField;
    qPhoneBookFieldsDATA_TYPE: TStringField;
    tvPhoneBookRA_DESCR: TcxGridDBColumn;
    tvPhoneBookRS_DESCR: TcxGridDBColumn;
    tvPhoneBookRT_DESCR: TcxGridDBColumn;
    tvPhoneBookSYSTEM1: TcxGridDBColumn;
    tvPhoneBookSYSTEM2: TcxGridDBColumn;
    tvPhoneBookFIRM_SIZE: TcxGridDBColumn;
    tvPhoneBookSUBURB: TcxGridDBColumn;
    tvPhoneBookCREDITORID: TcxGridDBColumn;
    cbIncludeArchived: TcxBarEditItem;
    cbProspectiveClients: TcxBarEditItem;
    cbProspectiveOnly: TcxBarEditItem;
    tvPhoneBookACN: TcxGridDBColumn;
    tvPhoneBookMOBILE: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure dbgrPhoneBookDblClick(Sender: TObject);
    procedure dbgrPhoneBookColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tSearchTimer(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aNewUpdate(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aMergeExecute(Sender: TObject);
    procedure aHelpExecute(Sender: TObject);
    procedure aHelpUpdate(Sender: TObject);
    procedure lbGroupsClickCheck(Sender: TObject);
    procedure SearchControlChanged(Sender: TObject);
    procedure aClearAllExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aQueryNowExecute(Sender: TObject);
    procedure aQueryNowUpdate(Sender: TObject);
    procedure aAdvancedAddUpdate(Sender: TObject);
    procedure aAdvancedRemoveExecute(Sender: TObject);
    procedure aAdvancedRemoveUpdate(Sender: TObject);
    procedure aShowAdvancedExecute(Sender: TObject);
    procedure aShowAdvancedUpdate(Sender: TObject);
    procedure aAdvancedAddExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aMoreExecute(Sender: TObject);
    procedure aMoreUpdate(Sender: TObject);
    procedure cbAutoQueryClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure qPhoneBookAfterScroll(DataSet: TDataSet);
    procedure aShowHideChildrenUpdate(Sender: TObject);
    procedure aShowHideChildrenExecute(Sender: TObject);
//    procedure dbgChildrenCellClick(Column: TColumn);
    procedure qPhoneBookChildrenAfterScroll(DataSet: TDataSet);
    procedure tvPhoneBookCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvPhoneBookColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvChildrenCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvChildrenColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cbOperatorClick(Sender: TObject);
    procedure cbIncludeArchivedClick(Sender: TObject);
    procedure btnBulkEmailClick(Sender: TObject);
    procedure btnExp2ExcelClick(Sender: TObject);
    procedure btnPrintGridClick(Sender: TObject);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure cxBarEditItem1PropertiesEditValueChanged(Sender: TObject);
    procedure cbProspectiveClientsPropertiesEditValueChanged(Sender: TObject);
    procedure cbProspectiveOnlyPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FSaveFilter, FSaveConfig: Boolean;
    FSQL: String;
    FNoShow: Boolean;
    FWhereClause: String;
    FOrderBy: String;
    FLimitToPartySelection: Boolean;
    FDisableTimer: Boolean;
    FParty: String;
    FSelectingCreditors: Boolean;
    FSelectingClients: Boolean;
    FLimitClientToGroup: String;
    FMasterNName: Integer;
    FAfterScroll: Boolean;

    FLastSelectedSearch: String;
    FLastSelectedNName: Integer;
    FLastSelectedNClient: Integer;
    FLastSelectedNCreditor: Integer;
    ClickPoint: TPoint;
    FFormCreate: boolean;

    function MakeSQL(ATable: String = ''): String;
    procedure SetOrderBy();
    function GetSearch(): String;
    function GetNName(): Integer;
    function GetNClient(): Integer;
    function GetParty: String;
    procedure RefreshGroups();
    procedure ClearAll();
    procedure SetFirstFocus;
    procedure SetLimitToPartySelection(const Value: Boolean);
    procedure CopyImage(Btn: TBitBtn; ImageList: TCustomImageList;
      Index: Integer);
    procedure SetSelectingCreditors(const Value: Boolean);
    procedure SetSelectingClients(const Value: Boolean);
    procedure SaveSettings;
    function GetNCreditor(): Integer;
  public
    { Public declarations }
    function FindPhoneBook(ASearch : String) : Boolean;
    procedure GotoName(AName: String);
    procedure SelectOtherParty(AOtherParty : String);

    property WhereClause : String read FWhereClause;
    property OrderBy : String read FOrderBy;
    property Search: String read GetSearch;
    property NName: Integer read GetNName;
    property NClient : Integer read GetNClient;
    property NCreditor : Integer read GetNCreditor;
    property LimitToPartySelection: Boolean read FLimitToPartySelection write SetLimitToPartySelection default false;
    property Party: String read GetParty write FParty;
    property qryPhoneBook: TUniQuery read qPhoneBook; // compatability
    property SelectingCreditors: Boolean read FSelectingCreditors write SetSelectingCreditors default false;
    property SelectingClients: Boolean read FSelectingClients write SetSelectingClients default false;
    property MasterNName: Integer read FMasterNName write FMasterNName;
  end;

  TCBItems = (ciExclude = 0,ciEquals = 1,ciContains = 2,ciBegins = 3);
  TAIOperator = (oiEquals = 0, oiContains = 1, oiBegins = 2, oiNotEqual = 3, oiIsNull = 4, oiIsNotNull = 5);
  TAIAndOr = (aoOr, aoAnd);
  TAdvancedInfo = class
  public
    AndOr: TAIAndOr;
    FieldName: String;
    Operator:  TAIOperator;
    Value: String;
  end;


var
  frmPhoneBookSearch: TfrmPhoneBookSearch;

implementation

uses
  MiscFunc, Phonebook, PhoneBookNew, WriteMerge,
  SystemFile, Clients, WorkFlowDataModule,
  WorkFlowDataModuleMerge, BulkMailer, AxiomData;

{$R *.DFM}
var
  TAIAndOrValues: Array[TAIAndOr] of String = ('OR','AND');

procedure TfrmPhoneBookSearch.FormShow(Sender: TObject);
begin
  FNoShow := False;
  SetFirstFocus();
end;

function TfrmPhoneBookSearch.FindPhoneBook(ASearch : String) : Boolean;
var
  LLastFileID: String;
begin
  LLastFileID := ASearch;
  //if not qPhoneBook.Active then
  MakeSQL();
  Result := qPhoneBook.Locate('SEARCH', ASearch, []);
end;



procedure TfrmPhoneBookSearch.dbgrPhoneBookDblClick(Sender: TObject);
begin
   if tvPhonebook.DataController.RowCount > 0 then
      ModalResult := mrOK;
end;


function TfrmPhoneBookSearch.MakeSQL(ATable: String): String;
var
  i: Integer;
  LGroups: TStringList;
  LGroupQuery,
  LEditContains,
  LSQL,
  LWhereClause: String;

  procedure AddLineCriteria(AField: String; var ALine: String; ArbOR, ArbAND: TRadioButton; AcbClause: TComboBox; AeEdit: TEdit);
  var
    LLine: String;
  begin
    LLine := ' ';
    if(TCBItems(AcbClause.ItemIndex) = ciExclude) then
      Exit;
    if(Trim(AeEdit.Text) = '') then
      Exit;

    if(Assigned(ArbOR) and Assigned(ArbAND)) then
    begin
      if(ALine <> '') then
      begin
        if(ArbOR.Checked) then
          LLine := LLine + 'OR '
        else if(ArbAND.Checked) then
          LLine := LLine + 'AND ';
      end;
    end;

//    LLine := LLine + 'UPPER(' + AField + ') ';

    case TCBItems(AcbClause.ItemIndex) of
      ciEquals:    begin
                     LLine := LLine + 'UPPER(' + AField + ') ';
                     LLine := LLine + '= '     + QuotedStr(Trim(UpperCase(AeEdit.Text))) + ' ';
                   end;
      ciContains:  begin
//                     if pos(',',AeEdit.Text) > 0 then
//                       LEditContains := QuotedStr('{' + AeEdit.Text + '}')
//                     else
                       LEditContains := QuotedStr('%' + AeEdit.Text + '%');
                     LLine := LLine + ' CONTAINS (p.dummy1,' + LEditContains + ',1) > 0';   //  'LIKE ' + QuotedStr('%' + Trim(UpperCase(AeEdit.Text)) + '%') + ' ';
                   end;
      ciBegins:    begin
                     LLine := LLine + 'UPPER(' + AField + ') ';
                     LLine := LLine + 'LIKE ' + QuotedStr(Trim(UpperCase(AeEdit.Text)) + '%') + ' ';
                   end;
    end;
    ALine := ALine + LLine;
  end;

  function QuotedStrings(AStrings: TStrings): String;
  var
    i: Integer;
  begin
    Result := '';
    for i := 0 to AStrings.Count - 1 do
    begin
      if(i > 0) then
        Result := Result + ',';
      Result := Result + AnsiQuotedStr(AStrings[i],'''');
    end;
  end;

  procedure AddAdvancedCriteria(var ALine: String; AInfo: TAdvancedInfo);
  var
    LLine: String;
  begin
    LLine := '';
    if(Trim(ALine) <> '') then
      LLine := TAIAndOrValues[AInfo.AndOr] + ' ';

//    LLine := LLine + 'UPPER(' + ATable + AInfo.FieldName + ') ';
    LLine := LLine + 'UPPER(P.' + AInfo.FieldName + ') ';

    case AInfo.Operator of
      oiEquals:    LLine := LLine + '= '''     + Trim(UpperCase(AInfo.Value)) + ''' ';
      oiContains:  LLine := LLine + 'LIKE ''%' + Trim(UpperCase(AInfo.Value)) + '%'' ';
      oiBegins:    LLine := LLine + 'LIKE '''  + Trim(UpperCase(AInfo.Value)) + '%'' ';
      oiNotEqual:  LLine := LLine + '<> '''    + Trim(UpperCase(AInfo.Value)) + ''' ';
      oiIsNull:    LLine := LLine + 'Is Null';
      oiIsNotNull: LLine := LLine + 'Is Not Null';
    end;
    ALine := ALine + LLine;
  end;
begin
   FWhereClause := '';
  qPhonebook.AfterScroll := nil;
  qPhoneBook.Close();

  if(pSearch.Visible) then
  begin
    AddLineCriteria(ATable + 'P.SEARCH',     FWhereClause,nil,            nil,             cbSearch,     eSearch);
    AddLineCriteria(ATable + 'P.GIVENNAMES', FWhereClause,rbORGivenNames, rbANDGivenNames, cbGivenNames, eGivenNames);
    AddLineCriteria(ATable + 'P.LASTNAME',   FWhereClause,rbORLastName,   rbANDLastName,   cbLastName,   eLastName);
    AddLineCriteria(ATable + 'P.NAME',       FWhereClause,rbORCompany,    rbANDCompany,    cbCompany,    eCompany);

    if(ckANDGroups.Checked) then
    begin
      LGroups := TStringList.Create();
      try
        for i := 0 to lbGroups.Count - 1 do
        begin
          if(lbGroups.Checked[i]) then
            LGroups.Add(lbGroups.Items[i]);
        end;

        if(LGroups.Count > 0) then
        begin
          LGroups.Delimiter := ',';
          LGroups.QuoteChar := '''';

          if(Trim(FWhereClause) = '') then
            LGroupQuery := ''
          else
            LGroupQuery := ' AND ';
//          LGroupQuery := LGroupQuery + ATable + 'nname IN (SELECT g.nname FROM pbgroupings g WHERE category IN ('
          LGroupQuery := LGroupQuery + ATable + 'exists (SELECT 1 FROM pbgroupings g WHERE g.category IN ('
            + QuotedStrings(LGroups) + ') and P.nname = g.nname ';
          if(rbANDGivenNames.Checked) then
            LGroupQuery := LGroupQuery + 'HAVING COUNT(g.nname) = ' + IntToStr(LGroups.Count);
          LGroupQuery := LGroupQuery + ') ';
          FWhereClause := FWhereClause + LGroupQuery;
        end;
      finally
        FreeAndNil(LGroups);
      end;
    end;

    if(pAdvancedSearch.Visible) then
    begin
      for i := 0 to lbSearchItems.Count - 1 do
        AddAdvancedCriteria(FWhereClause, TAdvancedInfo(lbSearchItems.Items.Objects[i]));
    end;
  end else
  begin
    AddLineCriteria(ATable + 'P.SEARCH',     FWhereClause,nil,            nil,             cbSearchBottom,     eSearchBottom);
    if(pSimpleParties.Visible) then
    begin
      if(Trim(FWhereClause) <> '') then
        FWhereClause := FWhereClause + ' AND ';
      FWhereClause := FWhereClause + ATable + 'P.nname IN (SELECT g.nname FROM pbgroupings g WHERE category = ' + QuotedStr(cbSimplePartyType.Items[cbSimplePartyType.ItemIndex]) + ')';
    end;
  end;

  if (boolean(cbIncludeArchived.EditValue) = False) then
  begin
    if (Trim(FWhereClause) <> '') then
       FWhereClause := FWhereClause + ' AND ';
    FWhereClause := FWhereClause + ' NVL(P.ARCHIVED, ''N'') = ''N'' ';
  end;

  if (boolean(cbProspectiveClients.EditValue) = True) and (boolean(cbProspectiveOnly.EditValue) = False) then
  begin
     if (Trim(FWhereClause) <> '') then
       FWhereClause := FWhereClause + ' AND ';
    FWhereClause := FWhereClause + ' NVL(P.PROSPECTIVE, ''N'') IN (''N'', ''Y'') ';
  end;

  if (boolean(cbProspectiveOnly.EditValue) = True) and (boolean(cbProspectiveClients.EditValue) = False) then
  begin
     if (Trim(FWhereClause) <> '') then
       FWhereClause := FWhereClause + ' AND ';
    FWhereClause := FWhereClause + ' NVL(P.PROSPECTIVE, ''N'') = ''Y'' ';
  end;

  if (SystemString('locale_name') <> '' ) then
  begin
    if (Trim(FWhereClause) <> '') then
       FWhereClause := FWhereClause + ' AND ';
    FWhereClause := FWhereClause + '(p.nclient IS NULL OR (p.nclient IS NOT NULL AND p.nname IN (SELECT nname '+
                                   ' FROM phonebook_entity WHERE (entity = NVL (:Entity, entity))))) ';
  end;

//  if(Trim(FWhereClause) = '') then
//      C_WHERE := '';
//    FWhereClause := ' ' + ATable + 'SEARCH LIKE ''A%''';

  Result := FWhereClause;
  if(ATable <> '') then
    MakeSQL()
  else
  begin
    if(Trim(FWhereClause) <> '') then
      FWhereClause := C_WHERE + FWhereClause;
    qPhonebookCount.Close;
    LSQL := 'select count(*) as phonecount from phonebook P ';

    qPhonebookCount.SQL.Text := LSQL + FWhereClause;
    if (SystemString('locale_name') <> '' ) then
       qPhonebookCount.ParamByName('Entity').AsString := dmAxiom.EmpEntity;

    qPhonebookCount.Open;
    StatusBar.Panels[0].Text := 'Contact entries found: ' + qPhonebookCount.FieldByName('phonecount').asString;

    qPhoneBook.SQL.Text := FSQL + FWhereClause + FOrderBy;
    if (SystemString('locale_name') <> '' ) then
       qPhoneBook.ParamByName('Entity').AsString := dmAxiom.EmpEntity;

    if dmAxiom.runningide then
      qPhoneBook.SQL.SaveToFile('c:\tmp\nsearch.sql');
    qPhoneBook.Open();
  end;
  qPhoneBook.AfterScroll := qPhoneBookAfterScroll;
end;

procedure TfrmPhoneBookSearch.dbgrPhoneBookColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
begin
  FSaveConfig := True;
  qPhonebook.Close();
  SetOrderBy();
  qPhoneBook.SQL.Text := FSQL + FWhereClause + FOrderBy;
  qPhoneBook.Open();
end;

procedure TfrmPhoneBookSearch.SetOrderBy;
var
  LFinished : Boolean;
  i : Integer;
  LComma : String;
begin
{  FOrderBy := 'ORDER BY';
  LComma := ' ';
  LFinished := False;
  i := 0;
  while (i < dbgrPhoneBook.Columns.Count) and (not LFinished) do
  begin
    FOrderBy := FOrderBy + LComma + dbgrPhoneBook.Columns[i].FieldName;
    if dbgrPhoneBook.Columns[i].FieldName = 'SEARCH' then
      LFinished := True;
    i := i + 1;
    LComma := ', ';
  end;    }
end;

procedure TfrmPhoneBookSearch.btnOKClick(Sender: TObject);
begin
   if (tvPhonebook.DataController.RowCount > 0) then
      ModalResult := mrOK;
end;

procedure TfrmPhoneBookSearch.RefreshGroups();
var
  i,o : Integer;
begin
  // Load the Phonebook groups
  cbSimplePartyType.Clear();
  lbGroups.Clear();
  qGroups.Open();
  try
    while(not qGroups.EOF) do
    begin
      if(LimitToPartySelection) and (FLimitClientToGroup = '') then
      begin
        if(qGroups.FieldByName('OTHERPARTY').AsString = 'Y') then
        begin
          lbGroups.Items.Add(qGroups.FieldByName('CATEGORY').AsString);
          o := cbSimplePartyType.Items.Add(qGroups.FieldByName('CATEGORY').AsString);
          if(qGroups.FieldByName('CATEGORY').AsString = FParty) then
          begin
            cbSimplePartyType.ItemIndex := o;
            SearchControlChanged(cbSimplePartyType);
          end;
        end;
      end else if(LimitToPartySelection) and (FLimitClientToGroup <> '') then
      begin
        lbGroups.Items.Add(qGroups.FieldByName('CATEGORY').AsString);
        o := cbSimplePartyType.Items.Add(qGroups.FieldByName('CATEGORY').AsString);
        if(qGroups.FieldByName('CATEGORY').AsString = FParty) then
        begin
          cbSimplePartyType.ItemIndex := o;
          SearchControlChanged(cbSimplePartyType);
        end;
      end else
      begin
        i := lbGroups.Items.Add(qGroups.FieldByName('CATEGORY').AsString);
        lbGroups.Checked[i] := SettingLoadBoolean('PhoneBook Search', qGroups.FieldByName('CATEGORY').AsString);
      end;
      qGroups.Next();
    end;

    if(LimitToPartySelection and (lbGroups.ItemIndex < 0)) then
    begin
      cbSimplePartyType.ItemIndex := 0;
      SearchControlChanged(cbSimplePartyType);
    end;

    if(LimitToPartySelection) then
    begin
      ckANDGroups.Checked := True;
      // should it be disabled
//      ckANDGroups.Enabled := False;
    end;
  finally
    qGroups.Close();
  end;
end;

procedure TfrmPhoneBookSearch.GotoName(AName: String);
begin
  MakeSQL;
  qPhonebook.Locate('SEARCH', AName, []);
end;

procedure TfrmPhoneBookSearch.SelectOtherParty(AOtherParty : String);
//var
//  i : Integer;
begin
  MessageDlg('Not implemented', mtWarning, [mbOK], 0);
{  FNoShow := True;
  FUsingGroups := True;
  // Load the Phonebook groups
  ClearAll();
  lbGroups.Clear();

  qGroups.Open();
  try
    while(not qGroups.EOF) do
    begin
      i := lbGroups.Items.Add(qGroups.FieldByName('CATEGORY').AsString);
      if qGroups.FieldByName('CATEGORY').AsString = AOtherParty then
        lbGroups.Checked[i] := True;
      qGroups.Next;
    end;
  finally
    qGroups.Close();
  end;
  MakeSQL();}
end;

procedure TfrmPhoneBookSearch.FormCreate(Sender: TObject);
var
  i, y: Integer;
  LTmp: String;
begin
  FNoShow := False;
  FDisableTimer := True;
  FFormCreate := True;

  btnBulkEmail.Enabled := (SystemString('BULK_EMAIL_REG') = C_BULKEMAILPASSWORD);
  btnEditPhonebook.Enabled := dmAxiom.Security.Phonebook.Edit;
  btnCreatePhonebook.Enabled := dmAxiom.Security.Phonebook.Edit;

  if dbgrPhoneBook.Font.Size <> dmAxiom.GridFont then
      dbgrPhoneBook.Font.Size := dmAxiom.GridFont;

  if dbgChildren.Font.Size <> dmAxiom.GridFont then
      dbgChildren.Font.Size := dmAxiom.GridFont;

// /*+ FIRST_ROWS */
  FSQL := ' SELECT P.nname, P.search, P.nclient, P.name, P.salutation, P.givennames, P.lastname, ' +
    ' P.whichaddress, P.address,P.suburb,P.state,P.postcode,P.dx,P.dxloc,P.country,P.postaladdress, ' +
    ' P.postalsuburb,P.postalstate,P.postalpostcode,P.postalcountry, P.workphone, M.search as parent,P.nnamemaster,' +
    '  TRIM(DECODE(P.WHICHADDRESS, ' +
    '''S'', nvl(P.address, m.address) || ' +
    '     '' - '' || nvl(P.suburb, m.suburb) || '' '' || nvl(P.state,m.state) || '' '' || nvl(P.postcode, m.postcode) || ' +
    '     DECODE(P.country,NULL,'''', '' - '' || nvl(P.country, m.country)), ' +
    'NULL, P.address || ' +
    '      '' - '' || P.suburb || '' '' || P.state || '' '' || P.postcode || ' +
    '     DECODE(P.country,NULL,'''', '' - '' || P.country), ' +
    '''P'', nvl(P.postaladdress, m.postaladdress) || ' +
    '     '' - '' || nvl(P.postalsuburb, m.postalsuburb) || '' '' || nvl(P.postalstate, m.postalstate) || '+
    '     '' '' || nvl(P.postalpostcode, m.postalpostcode) || ' +
    '     DECODE(P.postalcountry,NULL,'''', '' - '' || nvl(P.postalcountry,m.postalcountry)), ' +
    '''D'', ''DX '' || nvl(P.dx, m.dx) || '' '' || nvl(P.dxloc,m.dxloc), ' +
    '''C'', nvl(P.cust_address,m.cust_address) ||      '' - '' || '+
    '     nvl(P.cust_suburb, m.cust_suburb) || '' '' || nvl(P.cust_state, m.cust_state) || '' '' || nvl(P.cust_postcode, m.cust_postcode) || '+
    '     DECODE(P.cust_country,NULL,'''', '' - '' || nvl(P.cust_country, m.cust_country))))'+
    ' AS defaultaddress, p.clientid, p.email, p.fax, p.homephone, p.title, p.occupation, ' +
    ' p.system1, p.system2, RA.DESCR ra_descr, RS.DESCR rs_descr, RT.DESCR rt_descr, p.firm_size, p.turnover, '+
    ' nvl(P.suburb, m.suburb) as suburb, p.creditorid, p.ncreditor, p.full_address, p.ACN, p.mobile '+
    ' FROM phonebook P '+
    '    left join phonebook M on M.nname = P.nnamemaster '+
    '    left join RELATIONSHIP_ACTION ra on RA.code = P.RELATIONSHIP_ACTION '+
    '    left join RELATIONSHIP_STATUS rs on RS.code = P.RELATIONSHIP_STATUS '+
    '    left join RELATIONSHIP_TYPE rt on RT.code = P.RELATIONSHIP_TYPE ';

  FOrderBy := ' ORDER BY SEARCH';

  qPhoneBookChildren.SQL.Text := FSQL + ' WHERE P.NNAMEMASTER = :NNAME ' + FOrderBy;

  if SystemString('WORDPROC') = 'WORD97' then
    aMerge.ImageIndex := imgWORD
  else if SystemString('WORDPROC') = 'WORDPERFECT8' then
    aMerge.ImageIndex := imgWP;

  eSearch.Text            := SettingLoadString( 'PhoneBook Search', 'Search');
  cbSearch.ItemIndex      := SettingLoadInteger('PhoneBook Search', 'SearchCB');

  cbGivenNames.ItemIndex  := SettingLoadInteger('PhoneBook Search', 'GivenNamesCB');
  eGivenNames.Text        := SettingLoadString( 'PhoneBook Search', 'GivenNames');
  rbANDGivenNames.Checked := SettingLoadBoolean('PhoneBook Search', 'ANDGivenNames');

  cbLastName.ItemIndex    := SettingLoadInteger('PhoneBook Search', 'LastNameCB');
  eLastName.Text          := SettingLoadString( 'PhoneBook Search', 'LastName');
  rbANDLastName.Checked   := SettingLoadBoolean('PhoneBook Search', 'ANDLastName');

  cbCompany.ItemIndex     := SettingLoadInteger('PhoneBook Search', 'CompanyCB');
  eCompany.Text           := SettingLoadString( 'PhoneBook Search', 'Company');
  rbANDCompany.Checked    := SettingLoadBoolean('PhoneBook Search', 'ANDCompany');

  ckANDGroups.Checked     := SettingLoadBoolean('PhoneBook Search', 'ANDGroups');
  rbANYGroups.Checked     := SettingLoadBoolean('PhoneBook Search', 'ANYGroups');

  cbAutoQuery.Checked     := SettingLoadBoolean('PhoneBook Search', 'AutoQuery');
  pChildView.Height       := SettingLoadInteger('PhoneBook Search', 'ChildPanelHeight');
  if(pChildView.Height < 5) then
    pChildView.Height := pSearchResult.Height div 2;
  pChildView.Visible      := SettingLoadBoolean('PhoneBook Search', 'ChildPanelVisible');
  sSearchChildren.Visible := pChildView.Visible;

  if(cbSearch.ItemIndex = 0) and (cbGivenNames.ItemIndex = 0)
     and (cbLastName.ItemIndex = 0) and (cbCompany.ItemIndex = 0) then
    cbSearch.ItemIndex := 2;

  eSearchBottom.Text      := eSearch.Text;
  cbSearchBottom.itemIndex := cbSearch.ItemIndex;

  RefreshGroups();

  if not qPhonebook.Active then
    SetOrderBy();

  // Set up the screen attributes
  // MGD - we added a column so the column restore code dont work properly.
  //       so count the columns stored and if its not the same as what we have
  //       then dont load the settings, go with the defaults.
   SettingLoadStream(dmAxiom.UserID,'NPHONEBOOK SEARCH',tvPhoneBook);

   if (dmAxiom.Security.Employee.ChangeEntity = False) then
   begin
      tvPhoneBookCLIENTID.Visible := True;
      tvPhoneBookCLIENTID.VisibleForCustomization := False;
      tvPhoneBookCREDITORID.Visible := True;
      tvPhoneBookCREDITORID.VisibleForCustomization := False;
   end;

{  i := SettingLoadInteger(dmAxiom.UserID, 'NPHONEBOOK SEARCH', 'NUMCOLUMNS');
  if(i = 0) then
  begin
    i := tvPhoneBook.ColumnCount - 1;
    while(i >= 0) do
    begin
      if(SettingLoadString(dmAxiom.UserID, 'NPHONEBOOK SEARCH', 'COLUMN' + IntToStr(i)) = '') then
        Break;
      Dec(i);
    end;
  end else
    i := -1;

  if(i < 0) then
  begin
    for i := 0 to tvPhoneBook.ColumnCount - 1 do
    begin
      LTmp := SettingLoadString(dmAxiom.UserID, 'NPHONEBOOK SEARCH', 'COLUMN' + IntToStr(i));
      if LTmp <> '' then
        tvPhoneBook.Columns[i].DataBinding.FieldName := LTmp;
      LTmp := SettingLoadString(dmAxiom.UserID, 'NPHONEBOOK SEARCH', 'COLUMNTITLE' + IntToStr(i));
      if LTmp <> '' then
        tvPhoneBook.Columns[i].Caption := LTmp;
      y := SettingLoadInteger(dmAxiom.UserID, 'NPHONEBOOK SEARCH', 'COLUMNWIDTH' + IntToStr(i));
      if y <> 0 then
        tvPhoneBook.Columns[i].Width := y;
    end;
  end; }    

  FSaveFilter             := False;
  FSaveConfig             := False;

  if SettingLoadBoolean(dmAxiom.UserID, 'PHONEBOOK SEARCH', 'MAXIMIZED') then
    Self.WindowState := wsMaximized
  else
  begin
    y := SettingLoadInteger(dmAxiom.UserID, 'PHONEBOOK SEARCH', 'WIDTH');
    if y <> 0 then
      Self.Width := y;
    y := SettingLoadInteger(dmAxiom.UserID, 'PHONEBOOK SEARCH', 'HEIGHT');
    if y <> 0 then
      Self.Height := y;
  end;

  if(Width + Left > Screen.Width) then
    Width := Screen.Width - Left;
  if(Height + Top > Screen.Height) then
    Height := Screen.Height - Top;

  pAdvancedSearch.Visible := False;
  pSearch.Visible         := False;
  pSimpleParties.Visible  := False;
  pBottomClient.Width := 384;//260;

  if(not qPhoneBook.Active) then
    MakeSQL();
//  FDisableTimer           := False;
   FDisableTimer := not cbAutoQuery.Checked;
   FFormCreate := False;
end;


procedure TfrmPhoneBookSearch.eSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qPhoneBook.Next;
    VK_UP: qPhoneBook.Prior;
    VK_NEXT: qPhoneBook.MoveBy(10);
    VK_PRIOR: qPhoneBook.MoveBy(-10);
    VK_HOME: qPhoneBook.First;
    VK_END: qPhoneBook.Last;
  end;
end;


procedure TfrmPhoneBookSearch.FormActivate(Sender: TObject);
begin
  SetFirstFocus();
end;

procedure TfrmPhoneBookSearch.SetFirstFocus();
var
  LFocus: TEdit;
begin
  LFocus := nil;
  if(pSearch.Visible) then
  begin
    if(eSearch.Enabled) then
      LFocus := eSearch
    else if(eGivenNames.Enabled) then
      LFocus := eGivenNames
    else if(eLastName.Enabled) then
      LFocus := eLastName
    else if(eCompany.Enabled) then
      LFocus := eCompany;
  end else
    LFocus := eSearchBottom;
  if(Assigned(LFocus)) then
  begin
    ActiveControl := LFocus;
    LFocus.SelectAll();
  end;
end;

procedure TfrmPhoneBookSearch.FormDestroy(Sender: TObject);
//var
//  i: Integer;
begin
   try
      if tSearch.Enabled = true then
          tSearch.Enabled := false;
   finally
        tSearch.Free;
   end;

 { if FSaveFilter then
  begin
    if(pSearch.Visible) then
    begin
      SettingSave('PhoneBook Search', 'Search',        eSearch.Text);
      SettingSave('PhoneBook Search', 'SearchCB',      cbSearch.ItemIndex);
    end else
    begin
      SettingSave('PhoneBook Search', 'Search',        eSearchBottom.Text);
      SettingSave('PhoneBook Search', 'SearchCB',      cbSearchBottom.ItemIndex);
    end;

    SettingSave('PhoneBook Search', 'GivenNamesCB',  cbGivenNames.ItemIndex);
    SettingSave('PhoneBook Search', 'GivenNames',    eGivenNames.Text);
    SettingSave('PhoneBook Search', 'ANDGivenNames', rbANDGivenNames.Checked);

    SettingSave('PhoneBook Search', 'LastNameCB',    cbLastName.ItemIndex);
    SettingSave('PhoneBook Search', 'LastName',      eLastName.Text);
    SettingSave('PhoneBook Search', 'ANDLastName',   rbANDLastName.Checked);

    SettingSave('PhoneBook Search', 'CompanyCB',     cbCompany.ItemIndex);
    SettingSave('PhoneBook Search', 'Company',       eCompany.Text);
    SettingSave('PhoneBook Search', 'ANDCompany',    rbANDCompany.Checked);

    SettingSave('PhoneBook Search', 'ANDGroups',     ckANDGroups.Checked);
    SettingSave('PhoneBook Search', 'ANYGroups',     rbANYGroups.Checked);

    SettingSave('PhoneBook Search', 'AutoQuery',     cbAutoQuery.Checked);

    for i := 0 to lbGroups.Items.Count - 1 do
    begin
      if lbGroups.Checked[i] then
        SettingSave('PhoneBook Search', lbGroups.Items[i], True)
      else
        SettingDelete('PhoneBook Search', lbGroups.Items[i]);
    end;
  end;

  SettingSave('PhoneBook Search', 'ChildPanelHeight', pChildView.Height);
  SettingSave('PhoneBook Search', 'ChildPanelVisible', pChildView.Visible);

  // Save the screen attributes
  if Self.WindowState = wsMaximized then
    SettingSave('PHONEBOOK SEARCH', 'MAXIMIZED', True)
  else
  begin
    SettingDelete('PHONEBOOK SEARCH', 'MAXIMIZED');
    SettingSave('PHONEBOOK SEARCH', 'WIDTH', Self.Width);
    SettingSave('PHONEBOOK SEARCH', 'HEIGHT', Self.Height);
  end;

  SettingSave('NPHONEBOOK SEARCH', 'NUMCOLUMNS',tvPhoneBook.ColumnCount);
  for i := 0 to tvPhoneBook.ColumnCount - 1 do
  begin
    SettingSave('NPHONEBOOK SEARCH', 'COLUMN'      + IntToStr(i), tvPhoneBook.Columns[i].DataBinding.FieldName);
    SettingSave('NPHONEBOOK SEARCH', 'COLUMNTITLE' + IntToStr(i), tvPhoneBook.Columns[i].Caption);
    SettingSave('NPHONEBOOK SEARCH', 'COLUMNWIDTH' + IntToStr(i), tvPhoneBook.Columns[i].Width);
  end; }
end;


procedure TfrmPhoneBookSearch.tSearchTimer(Sender: TObject);
begin
  tSearch.Enabled := false;
  MakeSQL();
end;

function TfrmPhoneBookSearch.GetSearch: String;
begin
{  if(dbgrPhoneBook.Focused or (not pChildView.Visible)) then
    Result := qPhoneBook.FieldByName('SEARCH').AsString
  else
    Result := qPhoneBookChildren.FieldByName('SEARCH').AsString}
  Result := FLastSelectedSearch;
end;

function TfrmPhoneBookSearch.GetNName: Integer;
begin
{  if(dbgrPhoneBook.Focused or (not pChildView.Visible)) then
    Result := qPhoneBook.FieldByName('NNAME').AsInteger
  else
    Result := qPhoneBookChildren.FieldByName('NNAME').AsInteger}
   if FLastSelectedNName = 0 then
      Result := qPhoneBook.FieldByName('NNAME').AsInteger
   else
      Result := FLastSelectedNName;
end;


function TfrmPhoneBookSearch.GetNClient : Integer;
begin
//  Result := qPhoneBook.FieldByName('NCLIENT').AsInteger;
  Result := FLastSelectedNClient;
end;

function TfrmPhoneBookSearch.GetNCreditor: Integer;
begin
   Result := FLastSelectedNCreditor;
end;

procedure TfrmPhoneBookSearch.aNewExecute(Sender: TObject);
var
  LChecked: TStringList;
  i: Integer;
  LSearch: String;
  LfrmPhoneBookNew: TfrmPhoneBookNew;
begin
  LfrmPhoneBookNew := TfrmPhoneBookNew.Create(Self);
  LChecked := TStringList.Create();
  try
    LfrmPhoneBookNew.MasterNName := MasterNName;
    if(pSearch.Visible) then
    begin
      for i := 0 to lbGroups.Count - 1 do
      begin
        if(lbGroups.Checked[i]) then
          LChecked.Add(lbGroups.Items[i]);
      end;
      LfrmPhoneBookNew.InitialGroups := LChecked.CommaText;
    end;

    if(SelectingCreditors) then
      LfrmPhoneBookNew.SetupForCreditor(0);
    if(SelectingClients) then
      LfrmPhoneBookNew.SetupForClient(0);

    LfrmPhoneBookNew.bDoShow := True;
    if(LfrmPhoneBookNew.ShowModal() = mrOk) then
    begin
      LSearch := LfrmPhoneBookNew.Search;
      if(Pos(' (',LSearch) > 0) then
        LSearch := Copy(LSearch,1,Pos(' (',LSearch) - 1);
      if(pSearch.Visible) then
        eSearch.Text := LSearch
      else
        eSearchBottom.Text := LSearch;

      MakeSQL();
      qPhoneBook.Locate('SEARCH',LfrmPhoneBookNew.Search,[]);
    end;
  finally
    FreeAndNil(LChecked);
    FreeAndNil(LfrmPhoneBookNew);
  end;
end;

procedure TfrmPhoneBookSearch.aNewUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := FLimitClientToGroup = '';
end;

procedure TfrmPhoneBookSearch.aEditExecute(Sender: TObject);
var
  LClient: Boolean;
  LOldSearch,
  LSearch: String;
  LfrmClients: TfrmClients;
  LfrmPhoneBookNew: TfrmPhoneBookNew;
begin
  if not qPhoneBook.IsEmpty then
  begin
    LfrmPhoneBookNew := TfrmPhoneBookNew.Create(Self);
    try
      LfrmPhoneBookNew.NName := NName;
      LfrmPhoneBookNew.MasterNName := MasterNName;

//      dmAxiom.qryTmp.SQL.Text := 'select ncreditor from creditor where search = ' + QuotedStr(Search);
      dmAxiom.qryTmp.SQL.Text := 'select ncreditor from creditor where nname = ' + IntToStr(NName);
      dmAxiom.qryTmp.Open();
      try
        if(dmAxiom.qryTmp.Eof) then
        begin
          if(SelectingCreditors) then
            LfrmPhoneBookNew.SetupForCreditor(0);
        end
        else
          LfrmPhoneBookNew.SetupForCreditor(dmAxiom.qryTmp.FieldByName('ncreditor').AsInteger);
      finally
        dmAxiom.qryTmp.Close();
      end;

      if(NClient = 0) then
      begin
        if(SelectingClients) then
          LfrmPhoneBookNew.SetupForClient(0);
      end else
        LfrmPhoneBookNew.SetupForClient(NClient);
      LClient := True;

      LOldSearch := Search;

      LfrmPhoneBookNew.bDoShow := True;
      if(LfrmPhoneBookNew.ShowModal() = mrOk) then
      begin
        if(LClient and SelectingClients) then
        begin
          LfrmClients := TfrmClients.Create(Application);
          LfrmClients.DisplayClient(LfrmPhoneBookNew.NClient);
        end else
        begin
          if(dbgrPhoneBook.Focused) then
          begin
            LSearch := LfrmPhoneBookNew.Search;
            if(LSearch <> LOldSearch) then
            begin
              if(Pos(' (',LSearch) > 0) then
                LSearch := Copy(LSearch,1,Pos(' (',LSearch) - 1);
              if(pSearch.Visible) then
                eSearch.Text := LSearch
              else
                eSearchBottom.Text := LSearch;
            end;

            MakeSQL();
            qPhoneBook.Locate('SEARCH',LfrmPhoneBookNew.Search,[]);
            qPhoneBookAfterScroll(qPhoneBook);
          end else
          begin
            MakeSQL();
            if qPhoneBookChildren.State <> dsInactive then
            begin
               qPhoneBookChildren.Refresh();
               qPhoneBookChildren.Locate('SEARCH',LfrmPhoneBookNew.Search,[]);
            end;
          end
        end;
      end;
    finally
      FreeAndNil(LfrmPhoneBookNew);
    end;
  end;
end;

procedure TfrmPhoneBookSearch.aMergeExecute(Sender: TObject);
var
  LfrmWriteMerge: TfrmWriteMerge;
  LSql: TStringList;
  ssql: string;
begin
   if(not Assigned(dmWorkFlowDataModuleMerge)) then
      dmWorkFlowDataModuleMerge := TdmWorkFlowDataModuleMerge.Create(Application);
   LSql := TStringList.Create();
   try
      LSql.Assign(dmWorkFlowDataModuleMerge.qPartyDetails.SQL);

      // get rid of blank lines..
      while(LSql[LSql.Count - 1] = '') do
         LSql.Delete(LSql.Count - 1);
      // delete the where clause.

      LSql.Delete(LSql.Count - 1);
      LSql.Delete(LSql.Count - 1);

      // delete party type
      LSql.Delete(1);

      ssql := MakeSQL(''); //MakeSQL('p.');
      if ssql <> '' then
         LSql.Add(' AND ' + ssql);

      if dmAxiom.runningide then
         LSQL.SaveToFile('c:\tmp\nsearch.sql');

      LfrmWriteMerge := TfrmWriteMerge.Create(Self);
      LfrmWriteMerge.FromPhoneBook := True;
      LfrmWriteMerge.SQL := LSQL.Text;

      LfrmWriteMerge.AddSortField('SEARCH');
   finally
      LSql.Free();
   end;
   LfrmWriteMerge.Show;
end;

procedure TfrmPhoneBookSearch.aHelpExecute(Sender: TObject);
begin
//
end;

procedure TfrmPhoneBookSearch.aHelpUpdate(Sender: TObject);
begin
//
end;

procedure TfrmPhoneBookSearch.lbGroupsClickCheck(Sender: TObject);
var
  i: Integer;
begin
  // when limiting to party selection we only allow one selection..
  if(LimitToPartySelection) then
  begin
    i := 0;
    if(lbGroups.ItemIndex < 0) then
      lbGroups.ItemIndex := 0;
    while(i < lbGroups.Items.Count) do
    begin
      lbGroups.Checked[i] := lbGroups.ItemIndex = i;
      inc(i);
    end;
  end;
  SearchControlChanged(lbGroups);
end;

function TfrmPhoneBookSearch.GetParty: String;
var
  i: Integer;
begin
  Result := '';
  if(LimitToPartySelection) then
  begin
    i := 0;
    while(i < lbGroups.Items.Count) do
    begin
      if(lbGroups.Checked[i]) then
      begin
        Result := lbGroups.Items[i];
        Break;
      end;
      inc(i);
    end;
  end;
end;

procedure TfrmPhoneBookSearch.ClearAll;
var
  i: Integer;
begin
  cbSearch.ItemIndex      := 2;
  eSearch.Text            := '';
  cbSearchBottom.ItemIndex := 2;
  eSearchBottom.Text      := '';
  cbGivenNames.ItemIndex  := 0;
  eGivenNames.Text        := '';
  rbORGivenNames.Checked  := True;
  cbLastName.ItemIndex    := 0;
  eLastName.Text          := '';
  rbORLastName.Checked    := True;
  cbCompany.ItemIndex     := 0;
  eCompany.Text           := '';
  rbORCompany.Checked     := True;

  ckANDGroups.Checked     := False;
  rbALLGroups.Checked     := True;
  for i := 0 to lbGroups.Count - 1 do
    lbGroups.Checked[i]   := False;

  if pAdvancedSearch.Visible then
     lbSearchItems.Clear;
end;

procedure TfrmPhoneBookSearch.SearchControlChanged(Sender: TObject);
var
  i: Integer;
  LGroup: String;
begin
   tSearch.Enabled := False;
   if ((Length(trim(eSearchbottom.Text)) >= 3) or
      (eSearchbottom.Text = '')) then
   begin
      if(pSearch.Visible) then
      begin
         eSearch.Enabled     := cbSearch.ItemIndex > 0;
         eGivenNames.Enabled := cbGivenNames.ItemIndex > 0;
         eLastName.Enabled   := cbLastName.ItemIndex > 0;
         eCompany.Enabled    := cbCompany.ItemIndex > 0;

         lSearch.Enabled     := eSearch.Enabled;
         lGivenNames.Enabled := eGivenNames.Enabled;
         lLastName.Enabled   := eLastName.Enabled;
         lCompany.Enabled    := eCompany.Enabled;

         rbORGivenNames.Enabled := eGivenNames.Enabled and eSearch.Enabled;
         rbORLastName.Enabled   := eLastName.Enabled and (eGivenNames.Enabled or eSearch.Enabled);
         rbORCompany.Enabled    := eCompany.Enabled and (eGivenNames.Enabled or eSearch.Enabled or eLastName.Enabled);

         rbANDGivenNames.Enabled := rbORGivenNames.Enabled;
         rbANDLastName.Enabled   := rbORLastName.Enabled;
         rbANDCompany.Enabled    := rbORCompany.Enabled;

         rbALLGroups.Enabled := ckANDGroups.Checked;
         rbANYGroups.Enabled := ckANDGroups.Checked;
         lbGroups.Enabled    := ckANDGroups.Checked;
      end;

      if(Sender = cbSimplePartyType) then
      begin
         LGroup := cbSimplePartyType.Items[cbSimplePartyType.ItemIndex];
         i := lbGroups.Items.IndexOf(LGroup);
         if(i > -1) then
         begin
            lbGroups.ItemIndex := i;
            lbGroupsClickCheck(lbGroups);
         end;
      end else if(Sender = lbGroups) then
      begin
         LGroup := GetParty();
         cbSimplePartyType.ItemIndex := cbSimplePartyType.Items.IndexOf(LGroup);
      end;

      FSaveFilter := True;
      tSearch.Enabled := not FDisableTimer;
   end;
end;

procedure TfrmPhoneBookSearch.aClearAllExecute(Sender: TObject);
begin
  ClearAll();
end;

procedure TfrmPhoneBookSearch.aRefreshExecute(Sender: TObject);
begin
  qPhoneBook.Close();
  qPhoneBook.Open();
end;

procedure TfrmPhoneBookSearch.aQueryNowExecute(Sender: TObject);
begin
  MakeSQL();
end;

procedure TfrmPhoneBookSearch.aQueryNowUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := FDisableTimer;
end;

procedure TfrmPhoneBookSearch.SetLimitToPartySelection(
  const Value: Boolean);
begin
  FLimitToPartySelection := Value;
  if(not pSimpleParties.Visible) then
  begin
    pSimpleSearch.Width := pSimpleSearch.Width + 200;
    pSimpleParties.Width   := 200;
    pSimpleParties.Visible := True;
  end;
  RefreshGroups();
  tSearch.Enabled := not FDisableTimer;
end;

procedure TfrmPhoneBookSearch.aAdvancedAddUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (eValue.Text <> '') or (cbOperator.Text = 'Is Null') or
                             (cbOperator.Text = 'Is Not Null');
end;

procedure TfrmPhoneBookSearch.aAdvancedRemoveExecute(Sender: TObject);
var
  LItem: TAdvancedInfo;
begin
  LItem := TAdvancedInfo(lbSearchItems.Items.Objects[lbSearchItems.ItemIndex]);
  lbSearchItems.Items.Delete(lbSearchItems.ItemIndex);
  FreeAndNil(LItem);
end;

procedure TfrmPhoneBookSearch.aAdvancedRemoveUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := lbSearchItems.ItemIndex > -1;
end;

procedure TfrmPhoneBookSearch.aShowAdvancedExecute(Sender: TObject);
begin
  if(pAdvancedSearch.Visible) then
  begin
    pAdvancedSearch.Visible := False;
    tSearch.Enabled := not FDisableTimer;
  end else
  begin
    FDisableTimer := True;

//    if(cbField.Items.Count = 0) then
//    begin
      qPhoneBookFields.Open();
{      try
        while(not qPhoneBookFields.Eof) do
        begin
          cbField.Items.Add(qPhoneBookFieldsCOLUMN_NAME.AsString);
          qPhoneBookFields.Next();
        end;       }
//        cbField.ItemIndex := 0;
        cbOperator.ItemIndex := 0;
        eValue.Text := '';
//      finally

//        qPhoneBookFields.Close();
//      end;
//    end;
    pAdvancedSearch.Visible := True;
    eValue.Width := pAdvancedStuff.Width - 2 - eValue.Left;
    lbSearchItems.Width := pAdvancedStuff.Width - 2 - lbSearchItems.Left;
  end;
end;

// this gets around a faling in the vcl to update the glyph when the action's
// image index changes.
procedure TfrmPhoneBookSearch.CopyImage(Btn: TBitBtn; ImageList: TCustomImageList; Index: Integer);
begin
  Btn.Glyph.Width := ImageList.Width;
  Btn.Glyph.Height := ImageList.Height;
  Btn.Glyph.Canvas.Brush.Color := clFuchsia;//! for lack of a better color
  Btn.Glyph.Canvas.FillRect(Rect(0,0, Btn.Glyph.Width, Btn.Glyph.Height));
  ImageList.Draw(Btn.Glyph.Canvas, 0, 0, Index);
end;

procedure TfrmPhoneBookSearch.cxBarEditItem1PropertiesEditValueChanged(
  Sender: TObject);
begin
   MakeSQL();
end;

procedure TfrmPhoneBookSearch.aShowAdvancedUpdate(Sender: TObject);
var
  LUpdate: Boolean;
begin
  LUpdate := False;

  TAction(Sender).Visible := pSearch.Visible;
  if(pSearch.Visible) then
  begin
    if(pAdvancedSearch.Visible) then
    begin
      if(TAction(Sender).ImageIndex <> 10) then
      begin
        LUpdate := True;
        TAction(Sender).ImageIndex := 10;
      end;
    end else
    begin
      if(TAction(Sender).ImageIndex <> 9) then
      begin
        LUpdate := True;
        TAction(Sender).ImageIndex := 9;
      end;
    end;

    if(LUpdate) then
      CopyImage(bnAdvanced,ImageList,TAction(Sender).ImageIndex);
  end;
end;

procedure TfrmPhoneBookSearch.aAdvancedAddExecute(Sender: TObject);
var
  LInfo: TAdvancedInfo;
begin
  LInfo := TAdvancedInfo.Create();
  if(rbORAdvanced.Checked) then
    LInfo.AndOr := aoOr
  else
    LInfo.AndOr := aoAnd;

  LInfo.FieldName := cbField.EditText;//  Items[cbField.ItemIndex];
  LInfo.Operator  := TAIOperator(cbOperator.ItemIndex);
  LInfo.Value     := eValue.Text;

  if (cbOperator.Text = 'Is Null') or (cbOperator.Text = 'Is Not Null') then
    lbSearchItems.AddItem(TAIAndOrValues[LInfo.AndOr] + ' ' + LInfo.FieldName + ' ' + cbOperator.Items[cbOperator.ItemIndex] ,LInfo)
  else
    lbSearchItems.AddItem(TAIAndOrValues[LInfo.AndOr] + ' ' + LInfo.FieldName + ' ' + cbOperator.Items[cbOperator.ItemIndex] + ' ''' + LInfo.Value + '''',LInfo);
end;

procedure TfrmPhoneBookSearch.aPrintExecute(Sender: TObject);
//var
//  LqrPhoneBookSearch: TqrPhoneBookSearch;
begin
//  LqrPhoneBookSearch := TqrPhoneBookSearch.Create(Self);
  try
//    LqrPhoneBookSearch.SQL :=  qPhoneBook.SQL.Text;  //'SELECT * FROM PHONEBOOK P' + FWhereClause + FOrderBy;
//    LqrPhoneBookSearch.Preview();
    qPhonebookRpt.SQL.Text :=  qPhoneBook.SQL.Text;
    ppReport1.Print;
  finally
//    FreeAndNil(LqrPhoneBookSearch);
  end;
end;

procedure TfrmPhoneBookSearch.aMoreExecute(Sender: TObject);
begin
  pSearch.Visible := not pSearch.Visible;
  pSimpleSearch.Visible := not pSearch.Visible;
  aShowAdvanced.Visible := pSearch.Visible;
  tSearch.Enabled := not FDisableTimer;
  FDisableTimer := not FDisableTimer;
end;

procedure TfrmPhoneBookSearch.aMoreUpdate(Sender: TObject);
var
  LUpdate: Boolean;
  LWidth: Integer;
begin
  LUpdate := False;
  LWidth := pBottomClient.Width;

  if(pSearch.Visible) then
  begin
    if(TAction(Sender).ImageIndex <> 10) then
    begin
      LUpdate := True;
      TAction(Sender).ImageIndex := 10;
      LWidth := 460; // 475;//350;
    end;
    TAction(Sender).Caption := 'No Filter';
  end else
  begin
    if(TAction(Sender).ImageIndex <> 9) then
    begin
      LUpdate := True;
      TAction(Sender).ImageIndex := 9;
      LWidth := 385;//260;
    end;
    TAction(Sender).Caption := 'Filter';
  end;

  if(LUpdate) then
    CopyImage(bnMore,ImageList,TAction(Sender).ImageIndex);
  if(pBottomClient.Width <> LWidth) then
    pBottomClient.Width := LWidth;
end;

procedure TfrmPhoneBookSearch.SetSelectingCreditors(const Value: Boolean);
var
  i: Integer;
begin
  FSelectingCreditors := Value;
  if(Value) then
  begin
    FSelectingClients := False;
    pSearch.Visible := True;
    pSimpleSearch.Visible := not pSearch.Visible;
    aShowAdvanced.Visible := pSearch.Visible;
    tSearch.Enabled := not FDisableTimer;

    for i := 0 to lbGroups.Count - 1 do
      lbGroups.Checked[i]   := False;

    i := lbGroups.Items.IndexOf('Creditor');
    if(i > -1) then
      lbGroups.Checked[i] := True;

    ckAndGroups.Checked := True;
    MakeSQL();
  end;
end;

procedure TfrmPhoneBookSearch.SetSelectingClients(const Value: Boolean);
var
  i: Integer;
begin
  FSelectingClients := Value;
  if(Value) then
  begin
  if(not SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) then
    begin
      FSelectingCreditors := False;
      pSearch.Visible := True;
      pSimpleSearch.Visible := not pSearch.Visible;
      aShowAdvanced.Visible := pSearch.Visible;
      tSearch.Enabled := not FDisableTimer;

      for i := 0 to lbGroups.Count - 1 do
        lbGroups.Checked[i]   := False;

      i := lbGroups.Items.IndexOf('Client');
      if(i > -1) then
        lbGroups.Checked[i] := True;

      ckAndGroups.Checked := True;
  end else
    begin
      // this is the NCS project code.. limits the user to only
      // selecting from the phonebook group specificed in the
      // system configuration.
      FLimitClientToGroup := SettingLoadString(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE);
      Party := FLimitClientToGroup;
      LimitToPartySelection := True;
      cbSimplePartyType.Enabled := False;
    end;
    MakeSQL();
  end;
end;

procedure TfrmPhoneBookSearch.cbAutoQueryClick(Sender: TObject);
begin
   if (FFormCreate = False) then
   begin
      FDisableTimer := not cbAutoQuery.Checked;
      tSearch.Enabled := not FDisableTimer;
      FSaveFilter := True;
   end;
end;

procedure TfrmPhoneBookSearch.FormHide(Sender: TObject);
begin
  FSelectingCreditors := False;
  FSelectingClients   := False;
  FLimitClientToGroup := '';
  cbSimplePartyType.Enabled := True;
end;

procedure TfrmPhoneBookSearch.qPhoneBookAfterScroll(DataSet: TDataSet);
begin
  FAfterScroll := True;
  if(pChildView.Visible) then
  begin
    qPhoneBookChildren.Close();
    qPhoneBookChildren.ParamByName('nname').AsInteger := DataSet.FieldByName('nname').AsInteger;
    qPhoneBookChildren.Open();

    FLastSelectedNName   := qPhoneBook.FieldByName('nname').AsInteger;
    FLastSelectedSearch  := qPhoneBook.FieldByName('search').AsString;
    FLastSelectedNClient := qPhoneBook.FieldByName('nclient').AsInteger;
    FLastSelectedNCreditor := qPhoneBook.FieldByName('ncreditor').AsInteger;

  end else if(qPhoneBookChildren.Active) then
    qPhoneBookChildren.Close();
  FAfterScroll := False;
end;

procedure TfrmPhoneBookSearch.aShowHideChildrenUpdate(Sender: TObject);
begin
  TAction(Sender).Checked := pChildView.Visible;

end;

procedure TfrmPhoneBookSearch.aShowHideChildrenExecute(Sender: TObject);
begin
  pChildView.Visible := not PChildView.Visible;
  sSearchChildren.Visible := not sSearchChildren.Visible;
  if(pChildView.Visible) then
  begin
    qPhoneBookChildren.Close();
    qPhoneBookChildren.ParamByName('nname').AsInteger := qPhoneBook.FieldByName('nname').AsInteger;
    qPhoneBookChildren.Open();
  end else
  begin
    qPhoneBookChildren.Close();
  end;
end;

{procedure TfrmPhoneBookSearch.dbgChildrenCellClick(Column: TColumn);
begin
  FLastSelectedNName   := qPhoneBookChildren.FieldByName('nname').AsInteger;
  FLastSelectedSearch  := qPhoneBookChildren.FieldByName('search').AsString;
  FLastSelectedNClient := qPhoneBookChildren.FieldByName('nclient').AsInteger;
  FLastSelectedNCreditor := qPhoneBook.FieldByName('ncreditor').AsInteger;
end; }

procedure TfrmPhoneBookSearch.qPhoneBookChildrenAfterScroll(
  DataSet: TDataSet);
begin
  if(not FAfterScroll) then
  begin
    FLastSelectedNName   := qPhoneBookChildren.FieldByName('nname').AsInteger;
    FLastSelectedSearch  := qPhoneBookChildren.FieldByName('search').AsString;
    FLastSelectedNClient := qPhoneBookChildren.FieldByName('nclient').AsInteger;
    FLastSelectedNCreditor := qPhoneBook.FieldByName('ncreditor').AsInteger;
  end;
end;

procedure TfrmPhoneBookSearch.tvPhoneBookCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   FLastSelectedNName   := qPhoneBook.FieldByName('nname').AsInteger;
   FLastSelectedSearch  := qPhoneBook.FieldByName('search').AsString;
   FLastSelectedNClient := qPhoneBook.FieldByName('nclient').AsInteger;
   FLastSelectedNCreditor := qPhoneBook.FieldByName('ncreditor').AsInteger;
end;

procedure TfrmPhoneBookSearch.tvPhoneBookColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var
   FieldList: TStringList;
   i, colIndexBy: integer;
begin
   qPhonebook.Close;
   try
        FieldList := TStringList.Create;
        FSaveConfig := True;
        FOrderBy := ' ORDER BY ';

        tvPhonebook.DataController.DataSet.GetFieldNames(FieldList);

        for I := 0 to FieldList.Count - 1 do
        begin
          if FieldList[i] = TcxGridDBColumn(AColumn).DataBinding.FieldName then
          begin
              colIndexBy := i + 1;
              break;
          end;
        end;
        FOrderBy := FOrderBy + inttostr(colIndexBy);

        //FOrderBy := FOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

        if  AColumn.SortOrder = soNone then
        begin
            FOrderBy := FOrderBy + ' ASC';
            AColumn.SortOrder := soAscending;
        end
        else if AColumn.SortOrder = soAscending then
        begin
            FOrderBy := FOrderBy + ' ASC';
        end
        else
        begin
            FOrderBy := FOrderBy + ' DESC';
        end;

        qPhoneBook.SQL.Text := FSQL + FWhereClause + FOrderBy;
   finally
        FreeAndNil(FieldList);
        qPhoneBook.Open();
   end;
end;

procedure TfrmPhoneBookSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SaveSettings;
   pSimpleParties.Visible := False;
   qPhoneBookFields.Close();
end;

procedure TfrmPhoneBookSearch.tvChildrenCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   FLastSelectedNName      := qPhoneBookChildren.FieldByName('nname').AsInteger;
   FLastSelectedSearch     := qPhoneBookChildren.FieldByName('search').AsString;
   FLastSelectedNClient    := qPhoneBookChildren.FieldByName('nclient').AsInteger;
   FLastSelectedNCreditor  := qPhoneBook.FieldByName('ncreditor').AsInteger;
end;

procedure TfrmPhoneBookSearch.tvChildrenColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   FSaveConfig := True;
   qPhonebook.Close;
   FOrderBy := ' ORDER BY ';

   FOrderBy := FOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      FOrderBy := FOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      FOrderBy := FOrderBy + ' ASC';
   end
   else
   begin
      FOrderBy := FOrderBy + ' DESC';
   end;

   qPhoneBook.SQL.Text := FSQL + FWhereClause + FOrderBy;
   qPhoneBook.Open();
end;

procedure TfrmPhoneBookSearch.cbOperatorClick(Sender: TObject);
begin
   eValue.Enabled := True;
   if (cbOperator.Text = 'Is Null') or (cbOperator.Text = 'Is Not Null') then
      eValue.Enabled := False;
end;

procedure TfrmPhoneBookSearch.cbProspectiveClientsPropertiesEditValueChanged(
  Sender: TObject);
begin
   MakeSQL;
end;

procedure TfrmPhoneBookSearch.cbProspectiveOnlyPropertiesEditValueChanged(
  Sender: TObject);
begin
   if (boolean(cbProspectiveClients.EditValue) = True) then
      cbProspectiveClients.EditValue := False;
   MakeSQL;
end;

procedure TfrmPhoneBookSearch.SaveSettings;
var
   i: integer;
begin
  if FSaveFilter then
  begin
    if(pSearch.Visible) then
    begin
      SettingSave('PhoneBook Search', 'Search',        eSearch.Text);
      SettingSave('PhoneBook Search', 'SearchCB',      cbSearch.ItemIndex);
    end else
    begin
      SettingSave('PhoneBook Search', 'Search',        eSearchBottom.Text);
      SettingSave('PhoneBook Search', 'SearchCB',      cbSearchBottom.ItemIndex);
    end;

    SettingSave('PhoneBook Search', 'GivenNamesCB',  cbGivenNames.ItemIndex);
    SettingSave('PhoneBook Search', 'GivenNames',    eGivenNames.Text);
    SettingSave('PhoneBook Search', 'ANDGivenNames', rbANDGivenNames.Checked);

    SettingSave('PhoneBook Search', 'LastNameCB',    cbLastName.ItemIndex);
    SettingSave('PhoneBook Search', 'LastName',      eLastName.Text);
    SettingSave('PhoneBook Search', 'ANDLastName',   rbANDLastName.Checked);

    SettingSave('PhoneBook Search', 'CompanyCB',     cbCompany.ItemIndex);
    SettingSave('PhoneBook Search', 'Company',       eCompany.Text);
    SettingSave('PhoneBook Search', 'ANDCompany',    rbANDCompany.Checked);

    SettingSave('PhoneBook Search', 'ANDGroups',     ckANDGroups.Checked);
    SettingSave('PhoneBook Search', 'ANYGroups',     rbANYGroups.Checked);

    SettingSave('PhoneBook Search', 'AutoQuery',     cbAutoQuery.Checked);

    for i := 0 to lbGroups.Items.Count - 1 do
    begin
      if lbGroups.Checked[i] then
        SettingSave('PhoneBook Search', lbGroups.Items[i], True)
      else
        SettingDelete('PhoneBook Search', lbGroups.Items[i]);
    end;
  end;

  SettingSave('PhoneBook Search', 'ChildPanelHeight', pChildView.Height);
  SettingSave('PhoneBook Search', 'ChildPanelVisible', pChildView.Visible);

  // Save the screen attributes
  if Self.WindowState = wsMaximized then
    SettingSave('PHONEBOOK SEARCH', 'MAXIMIZED', True)
  else
  begin
    SettingDelete('PHONEBOOK SEARCH', 'MAXIMIZED');
    SettingSave('PHONEBOOK SEARCH', 'WIDTH', Self.Width);
    SettingSave('PHONEBOOK SEARCH', 'HEIGHT', Self.Height);
  end;

  SettingSaveStream(dmAxiom.UserID,'NPHONEBOOK SEARCH',tvPhonebook);

{  SettingSave('NPHONEBOOK SEARCH', 'NUMCOLUMNS',tvPhoneBook.ColumnCount);
  for i := 0 to tvPhoneBook.ColumnCount - 1 do
  begin
    SettingSave('NPHONEBOOK SEARCH', 'COLUMN'      + IntToStr(i), tvPhoneBook.Columns[i].DataBinding.FieldName);
    SettingSave('NPHONEBOOK SEARCH', 'COLUMNTITLE' + IntToStr(i), tvPhoneBook.Columns[i].Caption);
    SettingSave('NPHONEBOOK SEARCH', 'COLUMNWIDTH' + IntToStr(i), tvPhoneBook.Columns[i].Width);
  end;   }
end;

procedure TfrmPhoneBookSearch.cbIncludeArchivedClick(Sender: TObject);
begin
   MakeSQL();
end;

procedure TfrmPhoneBookSearch.btnBulkEmailClick(Sender: TObject);
var
   LfrmBulkMailer: TfrmBulkMailer;
   LSql: TStringList;
   ssql: string;
begin
   if(not Assigned(dmWorkflowDataModule)) then
      dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
   LSql := TStringList.Create();
   try
    LSql.Assign(dmWorkFlowDataModuleMerge.qPartyDetails.SQL);

    // get rid of blank lines..
    while(LSql[LSql.Count - 1] = '') do
         LSql.Delete(LSql.Count - 1);
    // delete the where clause.

    LSql.Delete(LSql.Count - 1);
    LSql.Delete(LSql.Count - 1);

    // delete party type
    LSql.Delete(1);

    ssql := MakeSQL('');
    if ssql <> '' then
         LSql.Add(' AND ' + ssql);

    LfrmBulkMailer := TfrmBulkMailer.Create(Self);
    LfrmBulkMailer.EmailSQL := LSQL.Text;
//    LfrmDocNew.FileID := qryMatter.FieldByName('FILEID').AsString;
//    LfrmBulkMailer.qryEmails.Open;
    LfrmBulkMailer.ShowModal;
   finally
      LSql.Free;
   end;
end;

procedure TfrmPhoneBookSearch.btnExp2ExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrPhoneBook, True, True,True,'xls');
   end;
end;

procedure TfrmPhoneBookSearch.btnPrintGridClick(Sender: TObject);
begin
   ComponentPrinter.Preview(True, ComponentPrinterLink1);
end;

procedure TfrmPhoneBookSearch.ppLabel19GetText(Sender: TObject;
  var Text: String);
begin
  Text := SystemString('COMPANY');
end;

end.

