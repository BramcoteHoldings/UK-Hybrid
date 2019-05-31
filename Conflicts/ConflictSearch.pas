unit ConflictSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Db, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxTextEdit, cxCheckBox, cxEditRepositoryItems, VirtualTable,
  Vcl.StdActns, System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan,
  ppParameter, ppDesignLayer, raCodMod, ppModule, ppBands, ppClass, ppCtrls,
  ppMemo, ppStrtch, ppRegion, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, DBAccess, Uni, dxBar, cxClasses, MemDS,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, NumberEdit,
  cxGroupBox, cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxButtons, cxPC, dxCore;

const
  imgWORD = 2;
  imgWP = 3;
  pnlMATTERS = 0;
  pnlFILTER = 1;
  MinWidth = 688;

// These are the values that are retrieved from the 'Cat' field of the conflicts search
const
  ConflictClientID          = 'Client ID';
  ConflictMatterID          = 'Matter ID';
  ConflictClientName        = 'Client Name';        // Use ClientID
  ConflictPhoneBookNRIC     = 'Contact NRIC';     // Use ClientID/NName
  ConflictMatterDescription = 'Matter Description'; // Use nmatter
  ConflictFieldName         = 'Field Name';         // Unable to easily find out if the field relates to a matter or a client.
  ConflictFieldTextValue    = 'Field Text Value';

type
  TConflictDataSourceKind = (cdskMatter, cdskClient, cdskPhonebook);

  TConflictDetails = record
    KeyValue : integer;
    KeyKind: TConflictDataSourceKind;
  end;

  TfrmConflictSearch = class(TForm)
    ilstToolbar: TImageList;
    sbarFilter: TStatusBar;
    tmrSearch: TTimer;
    qAuthor: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StyleRepository: TcxStyleRepository;
    styBand: TcxStyle;
    styHeader: TcxStyle;
    stySelection: TcxStyle;
    styContent: TcxStyle;
    styChildBitmap: TcxStyle;
    dxBarManager1: TdxBarManager;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
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
    rgMatterOptions: TcxRadioGroup;
    cbWorkFlowType: TcxLookupComboBox;
    cxStyle1: TcxStyle;
    lblParaLegal: TLabel;
    cmbParaLegal: TcxLookupComboBox;
    styDebtorStatus: TcxStyle;
    cmbDebtorStatus: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    dxBarButton11: TdxBarButton;
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
    Label33: TLabel;
    Label34: TLabel;
    chkArchivedDateTo: TCheckBox;
    dtpArchivedDateTo: TDateTimePicker;
    Panel1: TPanel;
    Label9: TLabel;
    edtConflictSearch: TcxTextEdit;
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
    qryConflicts: TUniQuery;
    dsConflicts: TUniDataSource;
    Label38: TLabel;
    edtBarcode: TcxTextEdit;
    styArchivedMatter: TcxStyle;
    vConflicts: TcxGridDBTableView;
    dbGrConflictsLevel1: TcxGridLevel;
    dbGrConflicts: TcxGrid;
    vConflictsFileID: TcxGridDBColumn;
    vConflictsClientName: TcxGridDBColumn;
    vConflictsMatterDesc: TcxGridDBColumn;
    vConflictsDataFieldName: TcxGridDBColumn;
    vConflictsData: TcxGridDBColumn;
    vConflictsWhereFound: TcxGridDBColumn;
    plConflicts: TppDBPipeline;
    rptConflictsList: TppReport;
    ppParameterList1: TppParameterList;
    ActionManager: TActionManager;
    aRefresh: TAction;
    aClearAll: TAction;
    aMerge: TAction;
    aPrint: TAction;
    aFileExit: TWindowClose;
    aPrintLabelsAll: TAction;
    qPrintLabelsSelected: TAction;
    aPrintDetails: TAction;
    aPrintStatus: TAction;
    aButtonOk: TAction;
    aRecentHolder: TAction;
    aPrintGrid: TAction;
    aPrinttoXL: TAction;
    btnCreateClient: TcxButton;
    btnCreateMatter: TcxButton;
    vConflictsExclude: TcxGridDBColumn;
    dxBarButton13: TdxBarButton;
    vtConflicts: TVirtualTable;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1CheckBoxItem1: TcxEditRepositoryCheckBoxItem;
    qrySaveConflict: TUniQuery;
    qrySaveDoc: TUniQuery;
    qrySavePhoneBookDoc: TUniQuery;
    QrySaveConflictItems: TUniQuery;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppVariable1: TppVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppRegion1: TppRegion;
    ppDBMemo1: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppPageStyle1: TppPageStyle;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLblIsConflictGroup: TppLabel;
    ppLabel1: TppLabel;
    ppLabel8: TppLabel;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayer1: TppDesignLayer;
    qryOldConflicts: TUniQuery;
    vConflictsClientID: TcxGridDBColumn;
    ppLabel9: TppLabel;
    dbMatterNo: TppDBText;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc2: TppDBCalc;
    vConflictsNMatter: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EnableTimer(Sender: TObject);
    procedure CheckReturn(Sender: TObject; var Key: Char);
    procedure tabGridShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
//    procedure dbgrMatters1TitleClick(Column: TColumn);
    procedure FormResize(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure OnUpdatePage(Sender: TObject);
    procedure aFileExitExecute(Sender: TObject);
    procedure aFileExitUpdate(Sender: TObject);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure cmbOPCategoryChange(Sender: TObject);
    procedure vConflictsOldColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure dxBarButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vMattersStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure edtConflictSearchPropertiesChange(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: string);
    procedure vConflictsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCreateClientClick(Sender: TObject);
    procedure vConflictsEditDblClick(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure ppLblIsConflictGroupGetText(Sender: TObject; var Text: string);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ppGroup1BeforeGroupBreak(Sender: TObject);
  private
    { Private declarations }
    SaveFilter, SaveConfig, RefreshSearch: Boolean;
    FConflictClientID : Integer;
    FConflictDocID: Integer;
    FConflictPDFFileName,
    FConflictDocName, FConflictDocDescription: String;
    FConflictSaved: Boolean;
    FConflictNClientID,
    FLastConflictID: Integer;
    FConflictDocFolder: String;
    FNewPhoneBookCreated,
    FNewMatterCreated: Boolean;
    function GenerateConflictPDF: String;
    function GetCurrentNConflictID: Integer;
    procedure DisplayNewPhoneBookDialog;
    procedure ShowPhoneBook(AClientID: Integer);
    procedure ShowMatter(AFileID: String);
    procedure ShowDetailLink(ACellViewInfo: TcxGridTableDataCellViewInfo);
    function SaveConflict: Boolean;
    function SaveConflictItems: Boolean;
    function SaveDocument: Boolean;
    function SaveEverything: Boolean;
    procedure SaveAndClose;
  protected
    FSaveChanges: Boolean;
  public
    { Public declarations }
    PreviousSearchID: Integer;
    class procedure ShowConflictSearch(AConflictText: String = ''); overload;
    // This will be used to display a previous Conflict Search.
    class procedure ShowConflictSearch(APreviousInteger: Integer); overload;
    class procedure FinishWithSearchScreen;
  end;

implementation

uses
  AxiomData, MiscFunc, WriteMerge,
  OptionsUser, WaitAnimate,
  TableCache, Word2000, Office2000, DebtorNotes, JCLStrings, System.UITypes,
  PhoneBookNew, Desktop, Clients, PhoneBook, MatterNew, SelectConflictDocName;

{$R *.DFM}

var
  sOrderBy : string;
  bAlreadyShown : boolean;
  bNoFilter : boolean;
  frmConflictSearch: TfrmConflictSearch;

const
  GridSaveName = 'CONFLICT SEARCH GRID';
  SYSConflictDocFolderFieldName = 'CONFLICT_DOC_FOLDER';

procedure TfrmConflictSearch.FormShow(Sender: TObject);
begin
  // Get rid of this page control.
   pageSearch.ActivePage := tabGrid;

   if not bAlreadyShown then
     bAlreadyShown := True;

  if edtConflictSearch.Text <> '' then
    tmrSearchTimer(nil);

   edtConflictSearch.SetFocus;

   Self.BringToFront;

   bNoFilter := true;

   sbarFilter.Panels[0].Text := '';

   if PreviousSearchID > 0 then
   begin
     qryOldConflicts.ParamByName('nconflict').AsInteger := PreviousSearchID;
     qryOldConflicts.Open;
     edtConflictSearch.Text := qryOldConflicts.FieldByName('search_text').AsString;
   end;

end;

procedure TfrmConflictSearch.FormCreate(Sender: TObject);
var
  CheckVal: Integer;
begin
  SettingLoadStream(dmAxiom.UserID, GridSaveName, vConflicts);

  CheckVal := SettingLoadInteger(ClassName, 'Top');
  if CheckVal <> 0 then
    Top := CheckVal;
  CheckVal := SettingLoadInteger(ClassName, 'Left');
  if CheckVal <> 0 then
    Left := CheckVal;
  CheckVal := SettingLoadInteger(ClassName, 'Width');
  if CheckVal <> 0 then
    Width := CheckVal;
  CheckVal := SettingLoadInteger(ClassName, 'Height');
  if CheckVal <> 0 then
    Height := CheckVal;

  FNewPhoneBookCreated := False;
  FNewMatterCreated := False;

  FConflictClientID := -1;
  FConflictSaved := False;
  FConflictDocName := '';
  FSaveChanges := false;

  chkEntity.Enabled := dmAxiom.Security.Employee.ChangeEntity;

  // These seem like sensible defaults to adopt
  if dbgrConflicts.Font.Size <> dmAxiom.GridFont then
    dbgrConflicts.Font.Size := dmAxiom.GridFont;

  vConflicts.OptionsCustomize.ColumnsQuickCustomization := dmAxiom.Security.System.GridColumnCustomizing;
end;

procedure TfrmConflictSearch.EnableTimer(Sender: TObject);
begin
   SaveFilter := True;
   tmrSearch.Enabled := true;
end;

class procedure TfrmConflictSearch.ShowConflictSearch(AConflictText: String);
begin
  frmConflictSearch := TFrmConflictSearch.Create(nil);
  frmConflictSearch.edtConflictSearch.Text := AConflictText;

  frmConflictSearch.Show;
end;

function TfrmConflictSearch.SaveConflict: Boolean;
begin
{
DESCRIPTION	3			Y	VARCHAR2 (500 Byte)	null	None							False
DOC_ID	5			Y	NUMBER (10)	null	None							False
NCONFLICT	1	1	1	N	NUMBER (10)	null	None							False
SEARCH_TEXT	2			Y	VARCHAR2 (200 Byte)	null	None							False
SYSTEMDATE	6			Y	DATE	sysdate	None							False
USER_ID	4			N	VARCHAR2 (5 Byte)		None							False

insert into CONFLICT (DESCRIPTION, DOC_ID, NCONFLICT, SEARCH_TEXT, SYSTEMDATE, USER_ID)
values(:DESCRIPTION, :DOC_ID, :NCONFLICT, :SEARCH_TEXT, sysdate, :USER_ID)
}
  try
    qrySaveConflict.ParamByName('Name').AsString := FConflictDocName;
    qrySaveConflict.ParamByName('Description').AsString := FConflictDocDescription;
    qrySaveConflict.ParamByName('DocID').AsInteger := FConflictDocID;
    qrySaveConflict.ParamByName('NConflict').AsInteger := FLastConflictID;
    qrySaveConflict.ParamByName('Search_Text').AsString := edtConflictSearch.Text;
    qrySaveConflict.ParamByName('User_ID').AsString := dmAxiom.UserID;
    qrySaveConflict.ExecSQL;  // Insert the record.
    Result := True;
  except
    Result := False;
  end;

  FConflictSaved := Result;
end;

function TfrmConflictSearch.SaveConflictItems: Boolean;
var
  Category: String;
  ConflictItem: Cardinal;
begin
{
  NConflict	number(10)		    default null,
  NKey	        number(10)	            default NULL,
  KeyKind       varchar2(10 byte)           default null,
  Exclude       varchar2(1 byte)            default 'N',
}
  try
    vConflicts.BeginUpdate;

    vtConflicts.First;
    ConflictItem := 1;
    while not vtConflicts.EOF do
    begin
      QrySaveConflictItems.ParamByName('NConflict').AsInteger := qrySaveConflict.ParamByName('NConflict').AsInteger;

      Category := vtConflicts.FieldByName('Cat').AsString;

      if StrMatches('Client*', Category) then
      begin
        QrySaveConflictItems.ParamByName('KeyKind').AsString := 'Client';
        QrySaveConflictItems.ParamByName('NKey').AsInteger := vtConflicts.FieldByName('NClient').AsInteger
      end
      else if StrMatches('Contact*', Category) then
      begin
        QrySaveConflictItems.ParamByName('KeyKind').AsString := 'Contact';
        QrySaveConflictItems.ParamByName('NKey').AsInteger := vtConflicts.FieldByName('NClient').AsInteger
      end
      // Fields link only to matters.
      else if (StrMatches('Matter*', Category)) or (StrMatches('Field*', Category)) then
      begin
        QrySaveConflictItems.ParamByName('KeyKind').AsString := 'Matter';
        QrySaveConflictItems.ParamByName('NKey').AsInteger := vtConflicts.FieldByName('MatterNo').AsInteger;
      end;

      QrySaveConflictItems.ParamByName('Exclude').AsString := vtConflicts.FieldByName('Exclude').AsString;
      QrySaveConflictItems.ParamByName('NConflictItem').AsInteger := ConflictItem;
      QrySaveConflictItems.ExecSQL;
      inc(ConflictItem);
      vtConflicts.Next;
    end;
    vConflicts.EndUpdate;

    Result := True;
  except
    Result := False;
  end;
end;

function TfrmConflictSearch.SaveDocument: Boolean;
begin
  Result := False;
  if GenerateConflictPDF = '' then
    exit;

  qrySaveDoc.ParamByName('Doc_Name').AsString :=  StrLeft(ExtractFileName(FConflictPDFFileName),
    length(ExtractFileName(FConflictPDFFileName)) - 4); // Strip off the '.pdf'
  qrySaveDoc.ParamByName('Search').AsString := ExtractFileName(FConflictPDFFileName);
  FConflictDocID := GetNextSequence('Doc_DocID');
  qrySaveDoc.ParamByName('DocID').AsInteger := FConflictDocID;
  qrySaveDoc.ParamByName('Descr').AsString := FConflictDocDescription;
  qrySaveDoc.ParamByName('Path').AsString := FConflictPDFFileName;
  qrySaveDoc.ParamByName('Display_Path').AsString := FConflictPDFFileName;
  qrySaveDoc.ParamByName('Auth1').AsString := dmAxiom.UserID;
  qrySaveDoc.ExecSQL;
  Result := True;
end;

function TfrmConflictSearch.SaveEverything : Boolean;
begin
  // Ensure Document is saved first, it is stored in conflict record.
  Result :=
    SaveDocument and
    SaveConflict and
    SaveConflictItems;
end;

procedure TfrmConflictSearch.CheckReturn(Sender: TObject; var Key: Char);
begin
  if Key = char(vkReturn) then
  begin
    pageSearch.ActivePage := tabGrid;
    Key := #0;
  end;
end;

procedure TfrmConflictSearch.tabGridShow(Sender: TObject);
begin
  edtConflictSearch.SetFocus;
end;

procedure TfrmConflictSearch.FormDestroy(Sender: TObject);
begin
  frmConflictSearch := nil;
end;

class procedure TfrmConflictSearch.FinishWithSearchScreen;
begin
  if Assigned(frmConflictSearch) then
    frmConflictSearch.Free;
end;

{procedure TfrmConflictSearch.dbgrMatters1TitleClick(Column: TColumn);
begin
  if not FConflictSaved then
    SaveConflict;
  SaveConfig := True;
end;   }

procedure TfrmConflictSearch.FormResize(Sender: TObject);
begin
   if Self.Width < MinWidth then
      Self.Width := MinWidth;
   SaveConfig := True;
end;


procedure TfrmConflictSearch.tmrSearchTimer(Sender: TObject);
begin
  //do something here on the timer
  tmrSearch.Enabled := false;

  qryConflicts.ParamByName('SearchText').AsString := edtConflictSearch.Text;

  if qryConflicts.Active then
    qryConflicts.Refresh
  else
    qryConflicts.Open;

  vtConflicts.Assign(qryConflicts);
  vtConflicts.Open;
  vtConflicts.Edit;

  sbarFilter.Panels[1].Text := IntToStr(qryConflicts.RecordCount) + ' Conflicts Found';
end;

procedure TfrmConflictSearch.aPrintExecute(Sender: TObject);
begin
  try
    vConflicts.BeginUpdate;
    // Order the data by Exclude, so conflict/no conflict group together sensibly.
    vtConflicts.IndexFieldNames := 'Exclude asc';
    vtConflicts.Refresh;
    rptConflictsList.DeviceType := 'Printer';
    rptConflictsList.Print;

  finally
    vtConflicts.IndexFieldNames := 'cat asc';
    vtConflicts.Refresh;
    vConflicts.EndUpdate;
  end;

end;

procedure TfrmConflictSearch.OnUpdatePage(Sender: TObject);
begin
  TAction(Sender).Enabled := pageSearch.ActivePage.TabIndex = 0;
end;

procedure TfrmConflictSearch.aFileExitExecute(Sender: TObject);
begin
  SaveAndClose;
end;

procedure TfrmConflictSearch.aFileExitUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := pageSearch.ActivePage.TabIndex = 0;
end;

procedure TfrmConflictSearch.ppGroup1BeforeGroupBreak(Sender: TObject);
begin
  if vtConflicts.FieldByName('Exclude').AsString = 'Y' then
    ppLabel10.Text := 'No Conflict Count'
  else
    ppLabel10.Text := 'Conflict Count';
end;

procedure TfrmConflictSearch.ppLabel4GetText(Sender: TObject; var Text: string);
begin
  Text := 'Conflict Search string: ' + edtConflictSearch.Text;
end;

procedure TfrmConflictSearch.ppLblIsConflictGroupGetText(Sender: TObject;
  var Text: string);
begin
  if vtConflicts.FieldByName('Exclude').AsString = 'Y' then
    Text := 'No Conflict'
  else
    Text := 'Conflict';
end;

procedure TfrmConflictSearch.ppVariable1GetText(Sender: TObject;
  var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmConflictSearch.ppVariable3Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := Value + 1;
end;

procedure TfrmConflictSearch.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
   Value := Value + 1;
end;

procedure TfrmConflictSearch.vMattersStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin

   if ((ARecord.Level = 0) and (ARecord.Expandable = True))then
   begin
    AStyle := styArchivedMatter;
   end;

end;

procedure TfrmConflictSearch.cmbOPCategoryChange(Sender: TObject);
begin

   RefreshSearch := True;
end;

function TfrmConflictSearch.GetCurrentNConflictID: Integer;
begin
  // Read off the DB the current NConflictID.
  Result := GetNextSequence('BHL_Conflict_SEQ');
end;

function TfrmConflictSearch.GenerateConflictPDF: String;
begin
  Result := '';

  FConflictDocFolder := SystemString(SYSConflictDocFolderFieldName);

  if not DirectoryExists(FConflictDocFolder) then
    raise exception.Create('Directory ' + FConflictDocFolder + ' does not exist');

  GetConflictDocDetails('Conflict Search - ' + edtConflictSearch.Text, FConflictDocName, FConflictDocDescription);

  try

    vConflicts.BeginUpdate();
    vtConflicts.IndexFieldNames := 'Exclude asc';
    vtConflicts.Refresh;

    if FConflictDocName <> '' then
    begin
      rptConflictsList.AllowPrintToFile := True;
      rptConflictsList.ShowPrintDialog := False;
      rptConflictsList.DeviceType := 'PDF';

      FLastConflictID := GetCurrentNConflictID;
      rptConflictsList.TextFileName :=
        IncludeTrailingPathDelimiter(FConflictDocFolder) +
        FConflictDocName +
        IntToStr(FLastConflictID) + '.pdf';
      rptConflictsList.OpenFile := False;
      rptConflictsList.ShowCancelDialog := false;

      rptConflictsList.PDFSettings.Author := dmAxiom.UserID;
      rptConflictsList.PDFSettings.Title := rptConflictsList.TextFileName;
      FConflictPDFFileName := rptConflictsList.TextFileName;

      rptConflictsList.Print;
      Result := rptConflictsList.TextFileName;
    end;
  finally
    vtConflicts.IndexFieldNames := '';
    vtConflicts.Refresh;
    vConflicts.EndUpdate;
  end;
end;

procedure TfrmConflictSearch.ShowMatter(AFileID: String);

begin
  frmMatters := TfrmMatters.Create(Application);
  frmMatters.Tag := imgMATTER;
  frmMatters.DisplayMatter(AFileID);
  if frmDeskTop.pagMainControl.ActivePageIndex = 0 then
    frmDeskTop.AddFormToTab(frmMatters, imgMATTER);

  if (not frmMatters.Visible) then
    frmMatters.Show;
  frmMatters.Repaint;
  frmMatters.Invalidate;
end;


procedure TfrmConflictSearch.ShowPhoneBook(AClientID: Integer);
var
  frmClient: TfrmClients;
begin
  frmClient := TfrmClients.Create(Self);
  if frmDeskTop.pagMainControl.ActivePageIndex = 0 then
    frmDeskTop.AddFormToTab(frmClient,1);
  frmClient.DisplayClient(AClientID);
end;


procedure TfrmConflictSearch.vConflictsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.Caption = vConflictsExclude.Caption then
    exit
  else
  begin
    ShowDetailLink(ACellViewInfo);
  end;

end;

procedure TfrmConflictSearch.vConflictsEditDblClick(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
  ShowDetailLink(AItem.FocusedCellViewInfo);
end;

class procedure TfrmConflictSearch.ShowConflictSearch(
  APreviousInteger: Integer);
begin
// This might be were we open up a previously created conflict search.
// ...It's left here to remind me of the planned design of it.
end;

procedure TfrmConflictSearch.ShowDetailLink(ACellViewInfo: TcxGridTableDataCellViewInfo);
var
  ColIdx: Integer;
  Category: String;
begin
  ColIdx := vConflicts.DataController.GetItemByFieldName('cat').Index;
  Category := ACellViewInfo.GridRecord.Values[ColIdx];

  if StrMatches('Client*', Category) then
  begin
    ColIdx := vConflicts.DataController.GetItemByFieldName('NClient').Index;
    ShowPhoneBook(ACellViewInfo.GridRecord.Values[ColIdx])
  end
  else if (StrMatches('Matter*', Category))
    // Field data is matter related. Handle as matter.
    or (StrMatches('Field*', Category)) then
  begin
    ColIdx := vConflicts.DataController.GetItemByFieldName('FileID').Index;
    ShowMatter(ACellViewInfo.GridRecord.Values[ColIdx])
  end
  else if StrMatches('Contact*', Category) then
  begin
    ColIdx := vConflicts.DataController.GetItemByFieldName('NClient').Index;
    ShowPhoneBook(ACellViewInfo.GridRecord.Values[ColIdx])
  end
  else
    raise exception.Create('Unable to display details for this conflict');
end;

procedure TfrmConflictSearch.vConflictsOldColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   SaveConfig := True;
   dmAxiom.qryMSearch.Close;
   sOrderBy := ' ORDER BY ';

   sOrderBy := sOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   case AColumn.SortOrder of
      soNone :
        begin
          sOrderBy := sOrderBy + SortOrders[soAscending];
          AColumn.SortOrder := soAscending;
        end;
      soAscending, soDescending : sOrderBy := sOrderBy + SortOrders[AColumn.SortOrder]
   end;

end;

procedure TfrmConflictSearch.edtConflictSearchPropertiesChange(Sender: TObject);
begin
  EnableTimer(Sender);
end;

procedure TfrmConflictSearch.dxBarButton10Click(Sender: TObject);
begin
  Self.Close();
end;

procedure TfrmConflictSearch.btnCreateClientClick(Sender: TObject);
begin
  // ToDo: Replace the gumby file numbering with real file numbering.
  DisplayNewPhoneBookDialog;
end;

procedure TfrmConflictSearch.DisplayNewPhoneBookDialog;
var
  frmPBNew: TfrmPhoneBookNew;
begin
  frmPBNew := TfrmPhoneBookNew.Create(frmDesktop);
  try
    frmPBNew.Tag := IDXCLIENTNEW;
    frmPBNew.NewClient := True;
    frmPBNew.bDoShow := True;
    frmPBNew.SetupForClient(0);   // 0 means new client.
    if(frmPBNew.ShowModal() = mrOk) then
    begin
      // On Desktop, showed FrmClients. Don't need to here.
      FConflictNClientID := frmPBNew.NClient;
    end;
  finally
    FreeAndNil(frmPBNew);
  end;
end;

procedure TfrmConflictSearch.SaveAndClose;
begin
  tmrSearch.Enabled := False;
  if vtConflicts.Active and (vtConflicts.RecordCount > 0) then
  begin
    SaveEverything;
    ReopenListUpdate('CONFLICT', IntToStr(FLastConflictID));
  end;

  SettingSaveStream(dmAxiom.UserID, 'MATTER SEARCH GRID', vConflicts);
  SettingSave(ClassName, 'Top', Top);
  SettingSave(ClassName, 'Left', Left);
  SettingSave(ClassName, 'Width', Width);
  SettingSave(ClassName, 'Height', Height);
  Close;
end;

procedure TfrmConflictSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSaveStream(dmAxiom.UserID, 'MATTER SEARCH GRID', vConflicts);
  Action := caFree;
  frmDeskTop.edConflict.Text := '';
end;

procedure TfrmConflictSearch.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if FConflictDocID = 0 then
    CanClose := MessageDlg('Conflict has not been saved. Save changes?',
      mtWarning, [mbYes, mbNo], 0) <> mrYes;

  FSaveChanges := not CanClose;
  if FSaveChanges then
    SaveAndClose;
end;

procedure TfrmConflictSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
     bnCancel.Click;
end;

initialization
  frmConflictSearch := nil;

end.




