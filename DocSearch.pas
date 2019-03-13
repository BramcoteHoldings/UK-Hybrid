unit DocSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxHyperLinkEdit, cxCheckBox, cxProgressBar,
  cxContainer, Vcl.Menus, cxButtons, cxCheckListBox, cxButtonEdit,
  cxDropDownEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, JvComponentBase, JvComCtrls,
  JvExComCtrls, uRwMAPIFormManager, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPSCore, dxPScxCommon, dxBar, Uni, cxClasses, DBAccess, MemDS, uRwMapiInterfaces,
  JvStatusBar, dxCore, cxNavigator, dxPSDBTCLnk, dxPScxSchedulerLnk, fmxutils,
  cxRichEdit, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarBuiltInMenu, cxCustomListBox;

const
  imgWORD = 14;
  imgWP = 17;

type
  TfrmDocSearch = class(TForm)
    qryDocs: TUniQuery;
    dsDocs: TUniDataSource;
    qryPrecCategory: TUniQuery;
    dxBarManager1: TdxBarManager;
    btnRefresh: TdxBarButton;
    dxBarButton2: TdxBarButton;
    btnWP: TdxBarButton;
    dxBarButton1: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    Label3: TLabel;
    tblEmployee: TUniTable;
    dsEmployee: TUniDataSource;
    qryClassification: TUniQuery;
    qryMatterType: TUniQuery;
    dsMatterType: TUniDataSource;
    styContent: TcxStyle;
    OraStoredProc: TUniStoredProc;
    popEmailDoc: TdxBarPopupMenu;
    btnSendAsLink: TdxBarButton;
    btnSendAsAttachment: TdxBarButton;
    btnProfile: TdxBarButton;
    btnOpen: TdxBarButton;
    qrySingleDoc: TUniQuery;
    btnPrint: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    qryTotal: TUniQuery;
    cxGridPopupMenu1: TcxGridPopupMenu;
    FormMgr: TRwMapiFormManager;
    pageSearch: TJvPageControl;
    tabGrid: TTabSheet;
    tabFilters: TTabSheet;
    JvTabDefaultPainter1: TJvTabDefaultPainter;
    dbgrDocs: TcxGrid;
    tvDocs: TcxGridDBTableView;
    tvDocsDOCID: TcxGridDBColumn;
    tvDocsDESCR1: TcxGridDBColumn;
    tvDocsFILEID1: TcxGridDBColumn;
    tvDocsCLIENT: TcxGridDBColumn;
    tvDocsAUTH11: TcxGridDBColumn;
    tvDocsD_CREATE: TcxGridDBColumn;
    tvDocsD_MODIF1: TcxGridDBColumn;
    tvDocsDOC_NAME1: TcxGridDBColumn;
    tvDocsURL: TcxGridDBColumn;
    tvDocsKEYWORDS: TcxGridDBColumn;
    tvDocsCAT_DESCR: TcxGridDBColumn;
    tvDocsCLASS_DESCR: TcxGridDBColumn;
    tvDocsDEPT: TcxGridDBColumn;
    tvDocsEXTERNAL_ACCESS: TcxGridDBColumn;
    tvDocsRELEVANCE: TcxGridDBColumn;
    dbgrDocsLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Label5: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    edDescr: TcxTextEdit;
    edContains: TcxTextEdit;
    gbModified: TcxGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    dtpSince: TDateTimePicker;
    dtpBefore: TDateTimePicker;
    chkSince: TCheckBox;
    chkBefore: TCheckBox;
    gbCreated: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    dtpCreatedSince: TDateTimePicker;
    dtpCreatedBefore: TDateTimePicker;
    chkCreatedSince: TCheckBox;
    chkCreatedBefore: TCheckBox;
    edKeywords: TcxTextEdit;
    edExclude: TcxTextEdit;
    cbAuthor: TcxLookupComboBox;
    cmbConditionOne: TcxComboBox;
    cmbConditionEx: TcxComboBox;
    edURL: TcxTextEdit;
    cmbConditionURL: TcxComboBox;
    edDocName: TcxTextEdit;
    cxGroupBox4: TcxGroupBox;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    edFileID: TcxButtonEdit;
    cmbMatterType: TcxLookupComboBox;
    cmbMatterAuthor: TcxLookupComboBox;
    edClientID: TcxButtonEdit;
    cbPortalOnly: TcxCheckBox;
    gbGroups: TcxGroupBox;
    clbGroups: TcxCheckListBox;
    btnGroupsRefresh: TcxButton;
    cxGroupBox3: TcxGroupBox;
    clbCategories: TcxCheckListBox;
    btnRefreshClassification: TcxButton;
    StatusBar: TJvStatusBar;
    Label15: TLabel;
    edEmailFrom: TcxTextEdit;
    Label12: TLabel;
    edEmailTo: TcxTextEdit;
    Label16: TLabel;
    tvDocVersion: TcxGridDBTableView;
    Label17: TLabel;
    edNotes: TcxTextEdit;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrDocsDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGroupsRefreshClick(Sender: TObject);
    procedure cbAuthorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnWPClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure tvDocsDblClick(Sender: TObject);
    procedure tvDocsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cbAuthorPropertiesInitPopup(Sender: TObject);
    procedure edFileIDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnRefreshClassificationClick(Sender: TObject);
    procedure tvDocsRELEVANCEGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure tvDocsDataControllerCompare(
      ADataController: TcxCustomDataController; ARecordIndex1,
      ARecordIndex2, AItemIndex: Integer; const V1, V2: Variant;
      var Compare: Integer);
    procedure tvDocsStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure edContainsPropertiesChange(Sender: TObject);
    procedure btnSendAsAttachmentClick(Sender: TObject);
    procedure btnSendAsLinkClick(Sender: TObject);
    procedure dtpSinceClick(Sender: TObject);
    procedure btnProfileClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkSinceClick(Sender: TObject);
    procedure chkBeforeClick(Sender: TObject);
    procedure chkCreatedSinceClick(Sender: TObject);
    procedure chkCreatedBeforeClick(Sender: TObject);
    procedure FormMgrBeforeSubmitMessage(Sender: TObject;
      const MessageSite: IRwMapiMessageSite);
    procedure FormMgrNewMessage(Sender: TObject;
      const MessageSite: IRwMapiMessageSite);
    procedure FormMgrShutDown(Sender: TObject;
      const MessageSite: IRwMapiMessageSite);
    procedure FormMgrCreateMessage(Sender: TObject;
      const MessageSite: IRwMapiMessageSite);
    procedure JvPageControl1Change(Sender: TObject);
    procedure pageSearchChanging(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
    FAttachDoc: Boolean;
    FAttachFileName: TStringList;
    FLastCreateMessage: OleVariant;
    FRowIndex: integer;
    FTextSearch: string;


    function GetGroupDisplayText(ARelevance: integer): string;
    function GetRelevanceValueIndex(ARelevance: integer): Integer;
    function GetAttachFile(var ADocIDList: TStringList): TStringList;
    procedure SaveSelectedItems;
    procedure RestoreSelectedItems;

//    procedure OnShutdown(ASender: IRwMapiMessageSite);
//    procedure OnCreateMessage(ASender: IRwMapiMessageSite);

    procedure BeforeSubmitMessage(ASender: IRwMapiMessageSite);
    procedure OnNewMessage(ASender: IRwMapiMessageSite);
    procedure SetTextField(sSearchText: string);
  public
    { Public declarations }
    sWhereClause : string;
    sOrderBy : string;
    function FindDoc(sDoc: string) : boolean;
    property TextSearch: string read FTextSearch write SetTextField;

    procedure MakeSQL;
  end;

var
  frmDocSearch: TfrmDocSearch;

implementation

uses
  AxiomData, MiscFunc, WriteMerge, MSearch, citfunc, cxVariants, DocNew,
  Math, csearch
  , uRwDateTimeUtils
  , uRwMapiProps
  , uRwMapiUtils
  , uRwBoxes;

const
  RelevanceIndexHigh = 4;
  RelevanceIndexMedium = 3;
  RelevanceIndexLow = 2;
  RelevanceIndexInterest = 1;

{$R *.DFM}

var
  sSQL, sSQL1, sStdSQL, sGroupBySQL1, sGroupBySQL2, sGroupBySQL3 : string;
  bUsingGroups, bUsingCats : boolean;
  bAlreadyShown : boolean;

procedure TfrmDocSearch.btnClearAllClick(Sender: TObject);
var
  iCtr : integer;
begin
  cbAuthor.ItemIndex := -1;
  cbAuthor.Properties.Items.Clear;
  edContains.Text := '';
  edFileID.Text := '';
  edExclude.Text := '';
  edKeywords.Text := '';
  edURL.Text := '';
  cmbMatterAuthor.ItemIndex := -1;
  cmbMatterAuthor.Properties.Items.Clear;
  cmbMatterType.ItemIndex := -1;
  cmbMatterType.Properties.Items.Clear;
  edClientID.Clear;
  edClientID.Tag := 0;

  for iCtr := 0 to clbGroups.Items.Count - 1 do
    clbGroups.Items.Items[iCtr].Checked := False;
  for iCtr := 0 to clbCategories.Items.Count - 1 do
    clbCategories.Items.Items[iCtr].Checked := False;

  chkSince.Checked := False;
  chkBefore.Checked := False;
  chkCreatedSince.Checked := False;
  chkCreatedBefore.Checked := False;

  cbPortalOnly.Checked := False;
  edDescr.Text := '';
  edDocName.Text := '';
  if pageSearch.ActivePage.TabIndex = 0 then
     MakeSQL;
end;

procedure TfrmDocSearch.FormShow(Sender: TObject);
begin
   if not bAlreadyShown then
   begin
      qryDocs.Close;
      btnGroupsRefresh.Click;
      btnRefreshClassification.Click;

//    MakeSQL;
      bAlreadyShown := True;
      chkSince.Checked := False;
      chkBefore.Checked := False;
      chkCreatedSince.Checked := False;
      chkCreatedBefore.Checked := False;
   end;
//  pageSearch.ActivePage := tabGrid;
end;

procedure TfrmDocSearch.dbgrDocsDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmDocSearch.MakeSQL;
var
  iCtr, iGroups : integer;
  sAND : string;
  sBlobSQL: string;
  lsSQL: string;
  sTextSearch, sNewLine, sWord, sExcTextSearch, sCombSearch: string;
  sContainsSQL, sExcludeSQL, sURLSQL, sCountSQL: string;
  sFileContainsSQL, sFileExcludeSQL: string;
  sTables: string;
  s, s1: string;
begin
   // Build the SQL Filter query
   sSQL := '';
   sSQL1 := '';
   sBlobSQL := '';
   sStdSQL := 'SELECT ';
   if (edContains.Text <> '') OR ((edExclude.Text <> '') and (edExclude.Enabled)) then
      sStdSQL := sStdSQL + 'SCORE(1) AS RELEVANCE, ot_version as version, '
   else
      sStdSQL := sStdSQL + '100 AS RELEVANCE, ot_version as version, ';

 {  sStdSQL := sStdSQL + 'DOC_NAME, AUTH1, D_MODIF, DOC.DESCR, DOC.PATH, DOC.FILEID, DOCID, DOCUMENT, FILE_EXTENSION, KEYWORDS, SEARCH , DISPLAY_PATH ';

   sBlobSQL := ' union all '+
               'SELECT SCORE(1) AS RELEVANCE, DOC_NAME, AUTH1, D_MODIF, DOC.DESCR, PATH, DOC.FILEID, DOCID, DOCUMENT, FILE_EXTENSION, KEYWORDS, SEARCH, DISPLAY_PATH ';   }

   sStdSQL := sStdSQL + 'DOC_NAME, AUTH1, D_MODIF, DOC.DESCR, DOC.PATH, DOC.FILEID, DOCID, DOCUMENT, FILE_EXTENSION, KEYWORDS, SEARCH , DISPLAY_PATH, URL, '+
              ' tablevalue(''PRECCATEGORY'',''NPRECCATEGORY'',doc.NPRECCATEGORY,''DESCR'') as cat_descr,tablevalue(''PRECCLASSIFICATION'',''NPRECCLASSIFICATION'',doc.NPRECCLASSIFICATION,''DESCR'') as class_descr, '+
              ' tablevalue(''empdept'',''code'', tablevalueembed(''matter'',''nmatter'',doc.nmatter,''dept''),''descr'') as dept, '+
              ' tablevalue(''client'',''nclient'', tablevalueembed(''matter'',''nmatter'',doc.nmatter,''nclient''),''search'') as client, external_access, D_CREATE ';

   sBlobSQL := ' union all '+
               'SELECT SCORE(1) AS RELEVANCE, DOC_NAME, AUTH1, D_MODIF, DOC.DESCR, PATH, DOC.FILEID, DOCID, DOCUMENT, FILE_EXTENSION, KEYWORDS, SEARCH, DISPLAY_PATH, URL, '+
               ' tablevalue(''PRECCATEGORY'',''NPRECCATEGORY'',doc.NPRECCATEGORY,''DESCR'') as cat_descr,tablevalue(''PRECCLASSIFICATION'',''NPRECCLASSIFICATION'',doc.NPRECCLASSIFICATION,''DESCR'')as class_descr, '+
               ' tablevalue(''empdept'',''code'', tablevalueembed(''matter'',''nmatter'',doc.nmatter,''dept''),''descr'') as dept, '+
               ' tablevalue(''client'',''nclient'', tablevalueembed(''matter'',''nmatter'',doc.nmatter,''nclient''),''search'') as client, external_access, D_CREATE ';

   sCountSQL := 'SELECT COUNT(*) AS CNT ';

   qryDocs.Close;
   sWhereClause := '';
   iCtr := 0;
   bUsingGroups := False;
   bUsingCats := False;
   sTables := 'FROM DOC ';
   while (iCtr < clbGroups.Items.Count) and not bUsingGroups do
   begin
      if clbGroups.Items.Items[iCtr].Checked then
         bUsingGroups := True;
      iCtr := iCtr + 1;
   end;

   iCtr := 0;
   while (iCtr < clbCategories.Items.Count) and not bUsingCats do
   begin
      if clbCategories.Items.Items[iCtr].Checked then
         bUsingCats := True;
      iCtr := iCtr + 1;
   end;

   if bUsingGroups and bUsingCats then
   begin
//      sSQL := sStdSQL + ', PRECCATEGORY.DESCR as cat_descr, '''' as class_descr ' + sTables + ', PRECCATEGORY ';
//      sSQL := sStdSQL + ',PRECCATEGORY.DESCR as cat_descr, PRECCLASSIFICATION.DESCR as class_descr ' + sTables + ', PRECCATEGORY, PRECCLASSIFICATION ';
        sSQL := sStdSQL +  sTables + ', PRECCATEGORY, PRECCLASSIFICATION ';
        sCountSQL := sCountSQL + sTables + ', PRECCATEGORY, PRECCLASSIFICATION ';

//      sSQL1 := sStdSQL + ', '''' as cat_descr, PRECCLASSIFICATION.DESCR as class_descr ' + sTables + ', PRECCLASSIFICATION ';
//      sSQL := sStdSQL + ',PRECCATEGORY.DESCR as cat_descr, PRECCLASSIFICATION.DESCR as class_descr ' + sTables + ', PRECCATEGORY, PRECCLASSIFICATION ';
      sBlobSQL := sBlobSQL + sTables + ', PRECCATEGORY, PRECCLASSIFICATION ';
//      sTables := sTables + ', PRECCLASSIFICATION, PRECCATEGORY 'else
   end
   else if bUsingGroups then
   begin
      sSQL := sStdSQL +  sTables + ', PRECCATEGORY ';
      sBlobSQL := sBlobSQL +  sTables + ', PRECCATEGORY ';
      sCountSQL := sCountSQL + sTables + ', PRECCATEGORY ';
   end
   else if bUsingCats then
   begin
      sSQL := sStdSQL + sTables + ', PRECCLASSIFICATION ';
      sBlobSQL := sBlobSQL +  sTables + ', PRECCLASSIFICATION ';
      sCountSQL := sCountSQL + sTables + ', PRECCLASSIFICATION ';
   end;

   if (not bUsingCats) and (not bUsingGroups) then
   begin
      sSQL := sStdSQL + sTables;
      sBlobSQL := sBlobSQL + sTables;
      sCountSQL := sCountSQL + sTables;
   end;

//   sAND := ' WHERE ';
   sWhereClause := ' matter_doc_access(doc.nmatter,'+ quotedstr(dmAxiom.UserID) + ') > 0 ';
   sAND := ' AND ';

   if edDescr.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + ' CONTAINS (doc.dummy,' + QuotedStr('%' + edDescr.Text + '%') + ') > 0' ;
//      sWhereClause := sWhereClause + sAND + 'UPPER(DOC.DESCR) LIKE ' + QuotedStr('%' + Uppercase(edDescr.Text) + '%');
      sAND := ' AND ';
   end;

{   if edContains.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + 'UPPER(DOC.DESCR) LIKE ' + QuotedStr('%' + Uppercase(edContains.Text) + '%');
      sAND := ' AND ';
   end;      }

   if edKeywords.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + ' contains(DOC.KEYWORDS,' + QuotedStr('%' + edKeywords.Text + '%') + ',1) > 0';  // 'UPPER(DOC.KEYWORDS) LIKE ' + QuotedStr('%' + Uppercase(edKeywords.Text) + '%');
      sAND := ' AND ';
   end;

   if edNotes.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + ' contains(DOC.NOTES,' + QuotedStr('%' + edNotes.Text + '%') + ',1) > 0';  // 'UPPER(DOC.KEYWORDS) LIKE ' + QuotedStr('%' + Uppercase(edKeywords.Text) + '%');
      sAND := ' AND ';
   end;

   if edDocName.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + 'UPPER(DOC.DOC_NAME) LIKE ' + QuotedStr('%' + Uppercase(edDocName.Text) + '%');
      sAND := ' AND ';
   end;

   if cbAuthor.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + 'DOC.AUTH1 = ' + QuotedStr(cbAuthor.Text);
      sAND := ' AND ';
   end;

   if cmbMatterAuthor.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + 'DOC.NMATTER IN (select nmatter from matter where author = ' + QuotedStr(cmbMatterAuthor.Text)+')'; 
      sAND := ' AND ';
   end;

   if cmbMatterType.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + 'DOC.NMATTER IN (select nmatter from matter where type = ' + QuotedStr(cmbMatterType.EditValue)+')';
      sAND := ' AND ';
   end;

   if edFileID.Text <> '' then
   begin
//      sWhereClause := sWhereClause + sAND + 'upper(DOC.FILEID) LIKE ' + QuotedStr(Uppercase(edFileID.Text) + '%');
      sWhereClause := sWhereClause + sAND + 'upper(DOC.FILEID) = ' + QuotedStr(Uppercase(edFileID.Text));
      sAND := ' AND ';
   end;
   if chkSince.Checked then
   begin
      sWhereClause := sWhereClause + sAND + 'DOC.D_MODIF >= :SINCE';
      sAND := ' AND ';
   end;
   if chkBefore.Checked then
   begin
      sWhereClause := sWhereClause + sAND + 'DOC.D_MODIF <= :BEFORE';
      sAND := ' AND ';
   end;

   if chkCreatedSince.Checked then
   begin
      sWhereClause := sWhereClause + sAND + 'DOC.D_CREATE >= :CREATESINCE';
      sAND := ' AND ';
   end;
   if chkCreatedBefore.Checked then
   begin
      sWhereClause := sWhereClause + sAND + 'DOC.D_CREATE <= :CREATEBEFORE';
      sAND := ' AND ';
   end;
   if edClientID.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + 'DOC.NMATTER IN (select nmatter from matter where nclient = ' + IntToStr(edClientID.Tag) +')';
      sAND := ' AND ';
   end;
   if (cbPortalOnly.Checked) then
   begin
      sWhereClause := sWhereClause + sAND + ' DOC.EXTERNAL_ACCESS = ''Y'' ';
      sAND := ' AND ';
   end;
   if edEmailFrom.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + 'upper(DOC.EMAIL_FROM) = ' + QuotedStr(Uppercase(edEmailFrom.Text));
      sAND := ' AND ';
   end;
   if edEmailTo.Text <> '' then
   begin
      sWhereClause := sWhereClause + sAND + 'upper(DOC.EMAIL_SENT_TO) = ' + QuotedStr(Uppercase(edEmailTo.Text));
      sAND := ' AND ';
   end;

   if bUsingGroups then
   begin
      s := s + ' DOC.NPRECCATEGORY = PRECCATEGORY.NPRECCATEGORY AND (';
      sAND := '';
      iGroups := 0;
      for iCtr := 0 to clbGroups.Items.Count - 1 do
      begin
         if clbGroups.Items.Items[iCtr].Checked then
         begin
            s := s + sAND + ' PRECCATEGORY.DESCR = ' + QuotedStr(clbGroups.Items.Items[iCtr].Text);
            sAND := ' OR ';
            iGroups := iGroups + 1;
         end;
      end;
      s := s + ' ) '; // GROUP BY PRECCATEGORY.NPRECCATEGORY ';
//      if rgGroupSelect.ItemIndex = 0 then
//         sWhereClause := sWhereClause + ' HAVING COUNT(PRECCATEGORY.NPRECCATEGORY) = ' + IntToStr(iGroups);

   end;

   if bUsingCats then
   begin
      s1 := s1 + ' DOC.NPRECCLASSIFICATION = PRECCLASSIFICATION.NPRECCLASSIFICATION AND (';
      sAND := '';
      iGroups := 0;
      for iCtr := 0 to clbCategories.Items.Count - 1 do
      begin
         if clbCategories.Items.Items[iCtr].Checked then
         begin
            s1 := s1 + sAND + ' PRECCLASSIFICATION.DESCR = ' + QuotedStr(clbCategories.Items.Items[iCtr].Text);
            sAND := ' OR ';
            iGroups := iGroups + 1;
         end;
      end;
      s1 := s1 + ' ) '; // GROUP BY PRECCLASSIFICATION.NPRECCLASSIFICATION ';
//      if rgCategorySelected.ItemIndex = 0 then
//         sWhereClause := sWhereClause + ' HAVING COUNT(PRECCLASSIFICATION.NPRECCLASSIFICATION) = ' + IntToStr(iGroups);
//      sSQL1 := sSQL1 + ' WHERE ' + s;
   end;

   if bUsingCats and bUsingGroups then
   begin
      if sWhereClause <> '' then
      begin
         sSQL := sSQL + ' WHERE ' + sWhereClause + ' AND ' + s + ' AND ' + s1;
 //        sSQL1 := sSQL1 + ' WHERE ' + sWhereClause + ' AND ' + s1;
         sBlobSQL := sBlobSQL + ' WHERE ' + sWhereClause + ' AND ' + s;
         sCountSQL := sCountSQL + ' WHERE ' + sWhereClause + ' AND ' + s + ' AND ' + s1;
      end
      else
      begin
         sSQL := sSQL + ' WHERE ' + s;
         sSQL1 := sSQL1 + ' WHERE ' + s1;
         sBlobSQL := sBlobSQL + ' WHERE ' + s;
         sCountSQL := sCountSQL + ' WHERE ' + s;
      end;
   end
   else
   begin
      if bUsingCats then
      begin
         if sWhereClause <> '' then
         begin
            sSQL := sSQL + ' WHERE ' + sWhereClause + ' AND ' + s1;
            sCountSQL := sCountSQL + ' WHERE ' + sWhereClause + ' AND ' + s1;
         end
         else
         begin
            sSQL := sSQL + ' WHERE ' + s1;
            sCountSQL := sCountSQL + ' WHERE ' + s1;
         end;
      end
      else if bUsingGroups then
      begin
         if sWhereClause <> '' then
         begin
            sSQL := sSQL + ' WHERE ' + sWhereClause + ' AND ' + s;
            sBlobSQL := sBlobSQL + ' WHERE ' + sWhereClause + ' AND ' + s;
            sCountSQL := sCountSQL + ' WHERE ' + sWhereClause + ' AND ' + s;
         end
         else
         begin
            sBlobSQL := sBlobSQL + ' WHERE ' + s;
            sSQL := sSQL + ' WHERE ' + s;
            sCountSQL := sCountSQL + ' WHERE ' + s;
         end;
      end
      else
         if sWhereClause <> '' then
         begin
           sSQL := sSQL + ' WHERE ' + sWhereClause;
//           if sSQL1 <> '' then
//              sSQL1 := sSQL1 + ' WHERE ' + sWhereClause;
           sBlobSQL := sBlobSQL + ' WHERE ' + sWhereClause;
           sCountSQL := sCountSQL + ' WHERE ' + sWhereClause;
         end
         else
            sSQL := sSQL;
   end;

   if (edContains.Text <> '') OR (edExclude.Text <> '') OR
      (edURL.Text <> '')  then
   begin
      if (edContains.Text <> '') then
      begin
         sNewline := edContains.Text;
         while getnextword(sNewline ,sWord) do
         begin
            case cmbConditionOne.ItemIndex of
               0: if sTextSearch <> '' then sTextSearch := sTextSearch + ' AND ';
               1: if sTextSearch <> '' then sTextSearch := sTextSearch + ' OR ';
            end;
            sTextSearch := sTextSearch + sWord;
         end;

         if (edExclude.Text <> '') and (edExclude.Enabled) then
         begin
            sNewline := edExclude.Text;
            while getnextword(sNewline ,sWord) do
            begin
               case cmbConditionEx.ItemIndex of
                  0: if sExcTextSearch <> '' then sExcTextSearch := sExcTextSearch + ' AND ';
                  1: if sExcTextSearch <> '' then sExcTextSearch := sExcTextSearch + ' OR ';
               end;
               sExcTextSearch := sExcTextSearch + sWord;
            end;
         end;

         if sExcTextSearch <> '' then
            sExcTextSearch := ' not (' + sExcTextSearch + ') ';

         sCombSearch := sTextSearch + sExcTextSearch;

         sContainsSQL := 'contains(document,' + QuotedStr(sCombSearch) + ',1) > 0';
         if ({(sWhereClause = '') and }(Pos('WHERE',sBlobSQL) = 0)) then
            sContainsSQL := ' WHERE ' + sContainsSQL
         else
            sContainsSQL := ' and ' + sContainsSQL;

         sFileContainsSQL := 'contains(path,' + QuotedStr(sCombSearch) + ',1) > 0';
         if {(sWhereClause = '') and} (Pos('WHERE',sSQL) = 0) then
            sFileContainsSQL := ' WHERE ' + sFileContainsSQL
         else
            sFileContainsSQL := ' and ' + sFileContainsSQL;
      end;

//*************************************************
{      if (edExclude.Text <> '') then
      begin
         sNewline := edExclude.Text;
         while getnextword(sNewline ,sWord) do
         begin
            case cmbConditionEx.ItemIndex of
               0: if sTextSearch <> '' then sTextSearch := sTextSearch + ' AND ';
               1: if sTextSearch <> '' then sTextSearch := sTextSearch + ' OR ';
            end;
            sTextSearch := sTextSearch + sWord;
         end;
         sExcludeSQL := 'not contains(document,' + QuotedStr(sTextSearch) + ',1) > 0';
         if (sWhereClause = '') and (Pos('WHERE',sBlobSQL) = 0) then
            sExcludeSQL := ' WHERE ' + sExcludeSQL
         else
            sExcludeSQL := {' and ' +} //sExcludeSQL;

{         sFileExcludeSQL := 'not contains(path,' + QuotedStr(sTextSearch) + ',1) > 0';
         if (sWhereClause = '') and (Pos('WHERE',sSQL) = 0)  then
            sFileExcludeSQL := ' WHERE ' + sFileExcludeSQL
         else
            sFileExcludeSQL := {' and ' +} //sFileExcludeSQL;
//      end;     }
//*************************************************


      if (edURL.Text <> '') then
      begin
         sNewline := edURL.Text;
         while getnextword(sNewline ,sWord) do
         begin
            case cmbConditionURL.ItemIndex of
               0: if sTextSearch <> '' then sTextSearch := sTextSearch + ' AND ';
               1: if sTextSearch <> '' then sTextSearch := sTextSearch + ' OR ';
            end;
            sTextSearch := sTextSearch + sWord;
         end;
         sURLSQL := 'contains(URL,' + QuotedStr(sTextSearch) + ',1) > 0';
      end;

      if (edContains.Text <> '') then
      begin
         sSQL := sSQL + sFileContainsSQL;
//         if sSQL1 <> '' then
//            sSQL1 := sSQL1  + sFileContainsSQL;
         sBlobSQL := sBlobSQL + sContainsSQL;
         sCountSQL := sCountSQL + sContainsSQL;
         sAND := ' AND ';
      end;

{      if (edExclude.Text <> '') then
      begin
//         lsSQL := lsSQL + sFileExcludeSQL;
         sSQL := sSQL + sAND +  sExcludeSQL;
         sBlobSQL := sBlobSQL + sAND + sExcludeSQL;
         sAND := ' AND ';
      end;    }

      if (edURL.Text <> '') then
      begin
         sBlobSQL := sBlobSQL + sAND + sURLSQL;
      end;

//      if edDescr.Text <> '' then
//         sWhereClause := Copy(sWhereClause,pos('AND',sWhereClause), length(sWhereClause)- pos('AND',sWhereClause));

      if (sWhereClause <> '') and (Pos('WHERE',lsSQL) = 0) then
      begin
         if sSQL1 <> '' then
            lsSQL := sSQL + ' union ' + sSQL1 + sBlobSQL + ' AND ' + sWhereClause
         else
            if sFileContainsSQL <> '' then
               lsSQL := sSQL + sBlobSQL
            else
               lsSQL := sSQL;
//            lsSQL := sSQL + sBlobSQL   // + ' AND ' + sWhereClause
      end
      else
      begin
//         if sSQL1 <> '' then
//            lsSQL := sSQL + ' union ' + sSQL1 + sBlobSQL
//         else
            if sFileContainsSQL <> '' then
               lsSQL := sSQL + sBlobSQL
            else
               lsSQL := sSQL;
      end;
   end
   else
   begin
      if (sWhereClause <> '') and (Pos('WHERE',sSQL) = 0) then
      begin
         if sSQL1 <> '' then
         begin
            if sSQL <> '' then
               lsSQL := sSQL + ' union ' + sSQL1 + ' AND ' + sWhereClause
            else
               lsSQL := sSQL1 + ' AND ' + sWhereClause
         end
         else
            lsSQL := sSQL + ' AND ' + sWhereClause
      end
      else
      begin
//         if sSQL1 <> '' then
//            lsSQL := sSQL + ' union ' + sSQL1
//         else
            lsSQL := sSQL;
      end;
   end;

   qryDocs.SQL.Text := lsSQL;


   if bUsingGroups and bUsingCats then
   begin
        sTables := sTables + ', PRECCATEGORY, PRECCLASSIFICATION ';
   end
   else if bUsingGroups then
   begin
      sTables := sTables + ', PRECCATEGORY ';
   end
   else if bUsingCats then
   begin
      sTables := sTables + ', PRECCLASSIFICATION ';
   end;


   qryTotal.SQL.Text := sCountSQL {'SELECT COUNT(*) AS CNT ' + sTables + ' where '} ;
   if s <> '' then
      qryTotal.SQL.Text := qryTotal.SQL.Text + ' and ' + s;
   if s1 <> '' then
      qryTotal.SQL.Text := qryTotal.SQL.Text + ' and ' + s1;

   if not bUsingGroups then
      qryDocs.SQL.Add(sOrderBy);
   if chkSince.Checked then
   begin
      qryDocs.ParamByName('SINCE').AsDate := Trunc(dtpSince.Date);
      qryTotal.ParamByName('SINCE').AsDate := Trunc(dtpSince.Date);
   end;

   if chkBefore.Checked then
   begin
      qryDocs.ParamByName('BEFORE').AsDate := Trunc(dtpBefore.Date) + 1;
      qryTotal.ParamByName('BEFORE').AsDate := Trunc(dtpBefore.Date) + 1;
   end;

   if chkCreatedSince.Checked then
   begin
      qryDocs.ParamByName('CREATESINCE').AsDate := Trunc(dtpCreatedSince.Date);
      qryTotal.ParamByName('CREATESINCE').AsDate := Trunc(dtpCreatedSince.Date);
   end;

   if chkCreatedBefore.Checked then
   begin
      qryDocs.ParamByName('CREATEBEFORE').AsDate := Trunc(dtpCreatedBefore.Date) + 1;
      qryTotal.ParamByName('CREATEBEFORE').AsDate := Trunc(dtpCreatedBefore.Date) + 1;
   end;

   if dmAxiom.runningide then
      qryDocs.SQL.SaveToFile('c:\tmp\docs.sql');

   StatusBar.Panels[0].Text := '';
   try
      qryDocs.Open;
      try
         qryTotal.Open;
         if (qryTotal.IsEmpty ) then
           StatusBar.Panels[0].Text := 'No Documents found that match the search criteria'
         else
         begin
            StatusBar.Panels[0].Text := qryTotal.FieldByName('CNT').AsString + ' Document';
            if qryTotal.FieldByName('CNT').AsInteger <> 1 then
               StatusBar.Panels[0].Text := StatusBar.Panels[0].Text + 's';
            StatusBar.Panels[0].Text := StatusBar.Panels[0].Text + ' found';
         end;
      finally
         qryTotal.Close;
      end;
   except
      ;
   end;
end;

procedure TfrmDocSearch.FormCreate(Sender: TObject);
begin
   sWhereClause := '';
   dtpSince.DateTime := Trunc(Date);
   dtpBefore.DateTime := Trunc(Date);

   dtpCreatedSince.DateTime := Trunc(Date);
   dtpCreatedBefore.DateTime := Trunc(Date);

   dtpCreatedSince.Checked := False;
   dtpCreatedBefore.Checked := False;
   chkBefore.Checked := False;
   chkSince.Checked := False;

   bAlreadyShown := False;

   sGroupBySQL1 := 'SELECT MAX(DOC.DOC_NAME) AS DOC_NAME, MAX(DOC.AUTH1) AS AUTH1, MAX(DOC.D_MODIF) AS D_MODIF, '+
                   'MAX(DOC.DESCR) AS DESCR, MAX(DOC.PATH) AS PATH, MAX(DOC.FILEID) AS FILEID, MAX(DOCID) AS DOCID,' +
                   ' MAX(FILE_EXTENSION) AS FILE_EXTENSION, MAX(KEYWORDS) AS KEYWORDS, MAX(SEARCH) AS SEARCH, MAX(DISPLAY_PATH) as DISPLAY_PATH '+
                   ' FROM DOC, PRECCATEGORY ';
   sGroupBySQL2 := 'SELECT MAX(DOC.DOC_NAME) AS DOC_NAME, MAX(DOC.AUTH1) AS AUTH1, MAX(DOC.D_MODIF) AS D_MODIF, '+
                   'MAX(DOC.DESCR) AS DESCR, MAX(DOC.PATH) AS PATH, MAX(DOC.FILEID) AS FILEID, MAX(DOCID) AS DOCID, '+
                   ' MAX(FILE_EXTENSION) AS FILE_EXTENSION, MAX(KEYWORDS) AS KEYWORDS, MAX(SEARCH) AS SEARCH, MAX(DISPLAY_PATH) as DISPLAY_PATH '+
                   'FROM DOC, PRECCLASSIFICATION ';
   sGroupBySQL3 := 'SELECT MAX(DOC.DOC_NAME) AS DOC_NAME, MAX(DOC.AUTH1) AS AUTH1, MAX(DOC.D_MODIF) AS D_MODIF, '+
                   'MAX(DOC.DESCR) AS DESCR, MAX(DOC.PATH) AS PATH, MAX(DOC.FILEID) AS FILEID, MAX(DOCID) AS DOCID,'+
                   ' MAX(FILE_EXTENSION) AS FILE_EXTENSION, MAX(KEYWORDS) AS KEYWORDS, MAX(SEARCH) AS SEARCH, MAX(DISPLAY_PATH) as DISPLAY_PATH '+
                   'FROM DOC, PRECCATEGORY, PRECCLASSIFICATION ';

   sOrderBy := ' ORDER BY 1 desc, 2';
   if SystemString('WORDPROC') = 'WORD97' then
     btnWP.ImageIndex := imgWORD
   else if SystemString('WORDPROC') = 'WORDPERFECT8' then
     btnWP.ImageIndex := imgWP;

   with tblEmployee do
   begin
     Close;
     Filter := 'ACTIVE = ''Y'' AND ISAUTHOR = ''Y'' ';
     OrderFields := 'code';
     Open;
   end;
   qryMatterType.Open;
end;

procedure TfrmDocSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iCtr : integer;
begin
  for iCtr := 0 to clbGroups.Items.Count - 1 do
    if clbGroups.Items.Items[iCtr].Checked then
      SettingSave('Doc Search', clbGroups.Items.Items[iCtr].Text, True)
    else
      SettingDelete('Doc Search', clbGroups.Items.Items[iCtr].Text);
  qryMatterType.Close;
  qryDocs.close;
  qryPrecCategory.Close;
  qryClassification.Close;
  RemoveFromDesktop(Self);
end;

function TfrmDocSearch.FindDoc(sDoc: string) : boolean;
begin
  if not qryDocs.Active then
    MakeSQL;
  Result := qryDocs.Locate('NAME', sDoc, []);
end;

procedure TfrmDocSearch.btnGroupsRefreshClick(Sender: TObject);
var
  iCtr : integer;
begin
  // Load the Phonebook groups
  clbGroups.Clear;
  with qryPrecCategory do
  begin
    Open;
    iCtr := 0;
    while not EOF do
    begin
      with clbGroups.Items.Add do
      begin
         Text := (FieldByName('DESCR').AsString);
         Checked := SettingLoadBoolean('Doc Search', FieldByName('DESCR').AsString);
      end;
      iCtr := iCtr + 1;
      Next;
    end;
    Close;
  end;
end;

procedure TfrmDocSearch.cbAuthorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
    cbAuthor.ItemIndex := -1;
end;

procedure TfrmDocSearch.btnCancelClick(Sender: TObject);
begin
   self.close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmDocSearch.btnOKClick(Sender: TObject);
begin
   self.close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmDocSearch.btnRefreshClick(Sender: TObject);
begin
   qryDocs.Refresh;
//  qryDocs.Open;
end;

procedure TfrmDocSearch.dxBarButton2Click(Sender: TObject);
begin
//   btnClearAll.Click;
   if pageSearch.ActivePage.TabIndex = 0 then
      MakeSQL;
end;

procedure TfrmDocSearch.btnWPClick(Sender: TObject);
var
  DocErrMsg: string;
begin
   if not qryDocs.IsEmpty then
      ExecuteFile(qryDocs.FieldByName('PATH').AsString, '', '.', SW_SHOW, DocErrMsg);
end;

procedure TfrmDocSearch.dxBarButton1Click(Sender: TObject);
begin
   self.close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmDocSearch.tvDocsDblClick(Sender: TObject);
var
   bStream: TStream;
   tmpFileName,
   DocErrMsg: string;
   Msg : IRwMapiMessage;
   FormRect: TRwMapiRect;
   OldCursor: TCursor;
//   MsgForm: TFrmMessage;
   AHandle: THandle;
   MsgStore : IRwMapiMsgStore;
   Folder   : IRwMapiFolder;
begin
   if (not qryDocs.IsEmpty) then
   begin
      if (not qryDocs.FieldByName('URL').IsNull) then
      begin
         AHandle := ExecuteFile(qryDocs.FieldByName('URL').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
         if AHandle <= 32 then
            MsgInfo('Unable to open Link. The Link may no longer exist.');
      end
      else
      if qryDocs.FieldByName('PATH').IsNull then
      begin
         bStream := qryDocs.CreateBlobStream(qryDocs.FieldByName('DOCUMENT'),bmRead);
         try
            if ExtractFileExt(qryDocs.FieldByName('DOC_NAME').AsString) = '' then
               tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qryDocs.FieldByName('DOC_NAME').AsString +'.'+ qryDocs.FieldByName('file_extension').AsString
            else
               tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qryDocs.FieldByName('DOC_NAME').AsString;
            bStream.Seek(0, soFromBeginning);

            with TFileStream.Create(tmpFileName, fmCreate) do
            try
               CopyFrom(bStream, bStream.Size)
            finally
               Free
            end;
         finally
            bStream.Free
         end;
         if qryDocs.FieldByName('FILE_EXTENSION').AsString = 'msg' then
         begin
            {if not dmAxiom.MapiSession.Active then
            begin
               OldCursor := Screen.Cursor;
               Screen.Cursor := crHourGlass;
               try
                  dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                  dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault; // 'Outlook';
                  dmAxiom.MapiSession.LogonInfo.Password           := '';
                  dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                  dmAxiom.MapiSession.LogonInfo.NewSession         := True;
                  dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                  dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
                  dmAxiom.MapiSession.Active                       := True;
               finally
                  Screen.Cursor := OldCursor;
               end;
            end;
            try
               MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
               Folder   := GetSelectedFolder(MsgStore);
               //  GetDefaultMsgStore(alReadwrite).OpenSavedMessage(tmpFileName);
               begin
                  // Display the message in a Form Manager form.
                  // A Form Manager Form is more flexible than the default mapi form

                  // get a form manager
                  FormMgr := dmAxiom.MapiSession.GetFormMgr;

                  // get the last known size and position of a form this type
                  FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 250, 300);

                  // Show the form
                  FormMgr.ShowMessage(Msg, FormRect);
               end;

               DeleteFile(tmpFileName);
            except
               // error
            end;}
            ExecuteFile(tmpFileName, '', '.', SW_SHOW, DocErrMsg);
        end
        else
           ExecuteFile(tmpFileName, '', '.', SW_SHOW, DocErrMsg);
      end
      else
      begin
         try
            AHandle := ExecuteFile(qryDocs.FieldByName('PATH').AsString, '', '.', SW_SHOW, DocErrMsg);
            if AHandle <= 32 then
            begin
               AHandle := ExecuteFile(qryDocs.FieldByName('DISPLAY_PATH').AsString, '', '.', SW_SHOW, DocErrMsg);
               if AHandle <= 32 then
                  MsgInfo('Unable to open Document. The document may not exist or the extension for this document is not associated with any program.');
            end;
         finally
            if AHandle >= 33 then
               ReopenListUpdate('DOCUMENT', qryDocs.FieldByName('DOCID').AsString);
         end;
      end;
   end;

end;

procedure TfrmDocSearch.tvDocsColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
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

procedure TfrmDocSearch.cbAuthorPropertiesInitPopup(Sender: TObject);
begin
   if cbAuthor.Properties.Items.Count = 0 then
      StringPopulate(cbAuthor.Properties.Items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y'' AND ISAUTHOR = ''Y''');
end;

procedure TfrmDocSearch.edFileIDPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOK then
   begin
//      if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
//      begin
//         MsgErr('Matter is archived.');
//      end
//      else if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
//      begin
         edFileID.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
//      end
//      else
//         MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
   end;
end;

procedure TfrmDocSearch.btnRefreshClassificationClick(Sender: TObject);
var
  iCtr : integer;
begin
   clbCategories.Clear;
   with qryClassification do
   begin
      Open;
      iCtr := 0;
      while not EOF do
      begin
         with clbCategories.Items.Add do
         begin
            Text := (FieldByName('DESCR').AsString);
            Checked := SettingLoadBoolean('Doc Search', FieldByName('DESCR').AsString);
         end;
         iCtr := iCtr + 1;
         Next;
      end;
      Close;
   end;
end;

function TfrmDocSearch.GetGroupDisplayText(ARelevance: integer): string;
begin
   case ARelevance of
      100: Result := 'Relevance: Most Relevant';
      80..99: Result := 'Relevance: Medium Relevance';
      50..79: Result := 'Relevance: Low Relevance';
      0..49: Result := 'Relevance: May be of interest';
   end;
end;

procedure TfrmDocSearch.tvDocsRELEVANCEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
   if ARecord is TcxGridGroupRow then
      AText :=  GetGroupDisplayText(ARecord.Values[Sender.Index]);
end;

function TfrmDocSearch.GetRelevanceValueIndex(ARelevance: integer): Integer;
begin
   case ARelevance of
      100: Result := RelevanceIndexHigh;
      80..99: Result := RelevanceIndexMedium;
      50..79: Result := RelevanceIndexLow;
      0..49: Result := RelevanceIndexInterest;
   end;
end;

procedure TfrmDocSearch.JvPageControl1Change(Sender: TObject);
begin
   btnPrint.Enabled := False;
   case pageSearch.ActivePage.TabIndex of
     0: // Back to the Grid page
       begin
          MakeSQL;
          btnPrint.Enabled := True;
       end;
  end;
end;

procedure TfrmDocSearch.pageSearchChanging(Sender: TObject;
  var AllowChange: Boolean);
var
   iCtr: integer;
begin
   bUsingGroups := False;
   bUsingCats := False;
   if pageSearch.ActivePage = tabFilters then
   begin
     iCtr := 0;
     while (iCtr < clbGroups.Items.Count) do
     begin
        if clbGroups.Items.Items[iCtr].Checked then
           bUsingGroups := True;
        iCtr := iCtr + 1;
     end;

     iCtr := 0;
     while (iCtr < clbCategories.Items.Count)do
     begin
        if clbCategories.Items.Items[iCtr].Checked then
           bUsingCats := True;
        iCtr := iCtr + 1;
     end;

     if ((not bUsingGroups) and (not bUsingCats) and (edDescr.Text = '')  and (edKeywords.Text = '') and (cbAuthor.Text = '') and
        (cmbMatterAuthor.Text = '') and (cmbMatterType.Text = '') and (edFileID.Text = '') and not chkSince.Checked and not chkBefore.Checked and
        (not chkCreatedSince.Checked) and (not chkCreatedBefore.Checked) and (edContains.Text = '') and (edExclude.Text = '') and
        (edClientID.Text = '') and (edDocName.Text = '')) then
     begin
        if (MessageBox(Self.Handle,'You have not selected any search filters.  This action could take a long time.  Do you want to continue?','Insight', MB_YESNO+MB_ICONQUESTION) = IDNO) then
           AllowChange := False;
     end;
  end;
end;

procedure TfrmDocSearch.tvDocsDataControllerCompare(
  ADataController: TcxCustomDataController; ARecordIndex1, ARecordIndex2,
  AItemIndex: Integer; const V1, V2: Variant; var Compare: Integer);
begin
   if (AItemIndex <> tvDocsRELEVANCE.Index) then
      Compare := VarCompare(V1, V2)
   else
      Compare := VarCompare(GetRelevanceValueIndex(V1),GetRelevanceValueIndex(V2));
end;

procedure TfrmDocSearch.tvDocsStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
   RetVal: integer;
begin
   OraStoredProc.Params[1].AsInteger := StrToInt(MatterString(string(tvDocsFILEID1.EditValue),'NMATTER'));
   OraStoredProc.Params[2].AsString := dmAxiom.UserID;
   OraStoredProc.Execute;
   RetVal := OraStoredProc.Params[0].AsInteger;
   if RetVal = 0 then
      AStyle := styContent;
end;

procedure TfrmDocSearch.edContainsPropertiesChange(Sender: TObject);
begin
   cmbConditionEx.Enabled  := (edContains.Text <> '');
//   edExclude.Clear         := (edContains.Text <> '');
   edExclude.Enabled       := (edContains.Text <> '');
end;

procedure TfrmDocSearch.btnSendAsAttachmentClick(Sender: TObject);
var
   tmpFileName: string;
   Msg : IRwMapiMessage;
//   ARowIndex, SelRec, SelRec1: integer;
//   MsgForm: TFrmNewMessage;
   OldCursor: TCursor;
//   FormMgr : IRwMapiFormMgr;
   FormRect: TRect;
   SiteStatus, ViewStatus, i, x: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   MsgClass, sSubject, FileID: string;
   AAttachList, AAttachDocID: TStringList;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      FAttachDoc := True;
      AAttachList := TStringList.Create;
      AAttachDocID := TStringList.Create;
      AAttachList := GetAttachFile(AAttachDocID);;
      if not dmAxiom.MapiSession.Active then
      begin
         OldCursor := Screen.Cursor;
         Screen.Cursor := crHourGlass;
         try
            dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
            dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;  //'Outlook';
            dmAxiom.MapiSession.LogonInfo.Password           := '';
            dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
            dmAxiom.MapiSession.LogonInfo.NewSession         := False;
            dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
            dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
            dmAxiom.MapiSession.Active                       := True;
         finally
            Screen.Cursor := OldCursor;
         end;
      end;

   {   try
         if FMailCount > 25 then
         begin
            OldCursor := Screen.Cursor;
            Screen.Cursor := crHourGlass;
      //      MsgInfo('Preparing Email. Please Wait...');
            dmAxiom.MapiSession.FlushQueues(ffForce);
            FMailCount := 0;
         end
         else
            Inc(FMailCount);
      finally
         Screen.Cursor := OldCursor;
      end;   }

      try
      {   MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore; //  GetDefaultMsgStore(alReadWrite);
         Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite);
        // create a new message in the drafts folder
         Msg := Folder.CreateMessage('IPM.Note');

      //   Msg := dmAxiom.MapiSession.CreateMessage('', ftOutbox, 'IPM.Note');

         if SystemInteger('EMAIL_TYPE_DEFAULT') = 0 then
         begin
            try
               // Display the new message in a custom build form. This is a 100% Delphi solution
               MsgForm := TFrmNewMessage.Create(Self);
               MsgForm.FileID := qryDocs.FieldByName('FILEID').AsString;
               MsgForm.Initialize(dmAxiom.MapiSession, Msg);
               MsgForm.AddFileAttachment(tmpFileName);
               MsgForm.Show;
            except
            //
            end;
         end
         else   }
         begin
            FAttachFileName := AAttachList;
            MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;  //GetDefaultMsgStore(alReadWrite);
            Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite);
            // create a new message in the drafts folder
            Msg := Folder.CreateMessage('IPM.Note');

            // Display the message in a Form Manager form.
            // A Form Manager Form is more flexible than the default mapi form
            // get a form manager
//            FormMgr := dmAxiom.MapiSession.GetFormMgr;
//            FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);
//            FormMgr.SetOnNewMessage(OnNewMessage);

            // get the last known size and position of a form this type
            FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 250, 300);

            sSubject := Msg.PropByName(PR_SUBJECT).AsString;
            for i := 1 to length(sSubject) do
            begin
               if sSubject[i] = '#' then
               begin
                  for x := i + 1 to length(sSubject) do
                  begin
                     if (sSubject[x] <> ' ') and (sSubject[x] <> ']') then
                           FileID := FileID + sSubject[x];
                  end;
               end;
            end;

            for i := 0 to AAttachList.Count - 1 do
            begin
               if tmpFileName <> '' then
                  tmpFileName := tmpFileName + ',';
               tmpFileName := tmpFileName + ExtractFileName(AAttachList.Strings[i]);
            end;

            if FileID = '' then
               Msg.PropByName(PR_SUBJECT).Value :=
                    Msg.PropByName(PR_SUBJECT).Value +
                     tmpFileName +
                     ' [Matter#'+qryDocs.FieldByName('fileid').AsString+']'
            else
               Msg.PropByName(PR_SUBJECT).Value :=
                    Msg.PropByName(PR_SUBJECT).Value +
                     tmpFileName;

            SiteStatus := 0;
            ViewStatus := vsModal;
            MsgClass := 'IPM.Note';
            Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
            SiteStatus := stDelete + stCopy
               + stMove + stSubmit + stDeleteIsMove
               + stSave + stNewMessage;
    //         FormMgr.NewMessage(Folder, MsgClass, FormRect, SiteStatus, ViewStatus);
            FormMgr.ShowMessage(Msg, SiteStatus, ViewStatus);

    {
            FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);
    //       FormMgr.SetOnNewMessage(OnNewMessage);
            // Show the form
            FormMgr.ShowMessage(Msg, FormRect);    }
         end;
      finally
         AAttachList.Free;
         AAttachDocID.Free;
      end;
   end
   else
      MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
end;

procedure TfrmDocSearch.btnSendAsLinkClick(Sender: TObject);
var
   tmpFileName: string;
   Msg : IRwMapiMessage;
//   ARowIndex, SelRec, SelRec1: integer;
//   MsgForm: TFrmNewMessage;
   OldCursor: TCursor;
//   FormMgr : IRwMapiFormMgr;
   FormRect: TRect;
   SiteStatus, ViewStatus, i, x: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   MsgClass, sSubject, FileID: string;
   AAttachFile, AAttachDocID: TStringList;
   MsgBody, ADisp_Path: string;
begin
   if SystemString('email_reg') = C_EMAILPASSWORD then
   begin
      try
         FAttachDoc := False;
         AAttachFile := TStringList.Create;
         AAttachDocID := TStringList.Create;
         AAttachFile := GetAttachFile(AAttachDocID);
         if (not dmAxiom.MapiSession.Active) then
         begin
            OldCursor := Screen.Cursor;
            Screen.Cursor := crHourGlass;
            try
               dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
               dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;
               dmAxiom.MapiSession.LogonInfo.Password           := '';
               dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
               dmAxiom.MapiSession.LogonInfo.NewSession         := False;
               dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
               dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
               dmAxiom.MapiSession.Active                       := True;
            finally
               Screen.Cursor := OldCursor;
            end;
         end;

   {      try
            if FMailCount > 25 then
            begin
               OldCursor := Screen.Cursor;
               Screen.Cursor := crHourGlass;
         //      MsgInfo('Preparing Email. Please Wait...');
               dmAxiom.MapiSession.FlushQueues(ffForce);
               FMailCount := 0;
            end
            else
               Inc(FMailCount);
         finally
            Screen.Cursor := OldCursor;
         end;   }

         try
           { if SystemInteger('EMAIL_TYPE_DEFAULT') = 0 then
            begin
               try
                  MsgStore := dmAxiom.MapiSession.GetDefaultMsgStore(alReadWrite);
                  Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
                  // create a new message in the drafts folder

                  // Display the new message in a custom build form. This is a 100% Delphi solution
                  MsgForm := TFrmNewMessage.Create(Self);
                  MsgForm.FileID := qryDocs.FieldByName('FILEID').AsString;
                  MsgForm.Initialize(dmAxiom.MapiSession, Msg);
                  MsgForm.Show;
               except
               //
               end;
            end
            else }
            begin
               try
                  FAttachFileName := AAttachFile;
                  MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;  //   GetDefaultMsgStore(alReadWrite);
                  Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite);
                  Msg := Folder.CreateMessage('IPM.Note');

                  // get a form manager
//                  FormMgr := dmAxiom.MapiSession.GetFormMgr;
//                  FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);
//                  FormMgr.SetOnNewMessage(OnNewMessage);

                  // get the last known size and position of a form this type
                  FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 250, 300);

                  sSubject := Msg.PropByName(PR_SUBJECT).AsString;

                  MsgBody := '<html><head></head><h1>Documents for action</h1><body>';
                  for i := 0 to FAttachFileName.Count - 1 do
                  begin
                     if tmpFileName <> '' then
                        tmpFileName := tmpFileName + ', ';
                     ADisp_Path := TableString('doc','docid',StrToInt(AAttachDocID.Strings[i]) ,'display_path');

                     try
                        tmpFileName := tmpFileName + TableString('phonebook','nclient', tableInteger('matter','nmatter', qryDocs.FieldByName('nmatter').AsInteger,'nclient' ),'search') +' - ' + ExtractFileName(ADisp_Path);
                     except
                        tmpFileName := ExtractFileName(ADisp_Path);
                     end;
                     
                     ADisp_Path := TableString('doc','docid',StrToInt(AAttachDocID.Strings[i]) ,'display_path');
                     MsgBody := MsgBody + '<p><a href="file:///' + ADisp_Path+ '">'+ ExtractFileName(ADisp_Path) +'</a></p>';
                  end;
                  MsgBody := MsgBody + '</body></html>';
                  Msg.SetMessageText(MsgBody, fmtHTML);

                  SiteStatus := 0;
                  ViewStatus := vsModal;
                  MsgClass := 'IPM.Note';
                  Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
                  SiteStatus := stDelete + stCopy
                     + stMove + stSubmit + stDeleteIsMove
                     + stSave + stNewMessage;

                  FormMgr.ShowMessage(Msg, SiteStatus, ViewStatus);
               except
                  MsgInfo('There was an error generating this eMail.  Try doing a Send/Receive in Outlook and then trying again.');
               end;
            end;
         finally
            AAttachFile.Free;
            AAttachDocID.Free;
         end;
      except
         MsgInfo('There was an error generating this eMail.  Try doing a Send/Receive in Outlook and then trying again.');
      end;
   end
   else
      MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
end;

function TfrmDocSearch.GetAttachFile(var ADocIDList: TStringList): TStringList;  //string;
var
   bStream: TStream;
   tmpFileName: string;
   ARowIndex, SelRec, SelRec1, i: integer;
   OldCursor: TCursor;
   SiteStatus, ViewStatus: Integer;
   AAttachList, LAttachDocID: TStringList;
begin
   AAttachList := TStringList.Create;
   LAttachDocID := TStringList.Create;
   if tvDocs.Controller.SelectedRowCount > 0 then
   begin
      for i :=0 to tvDocs.Controller.SelectedRowCount - 1 do
      begin
         ARowIndex := tvDocs.DataController.GetSelectedRowIndex(i);
         tvDocs.ViewData.Records[ARowIndex].Focused  := True;
         if (not qryDocs.IsEmpty) then
         begin
            if qryDocs.FieldByName('PATH').IsNull then
            begin
               SelRec := qryDocs.FieldByName('DOCID').AsInteger;
               qrySingleDoc.Close;
               qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
               qrySingleDoc.Open;
               bStream := qrySingleDoc.CreateBlobStream(qrySingleDoc.FieldByName('DOCUMENT'),bmRead);
               try
                  if ExtractFileExt(qrySingleDoc.FieldByName('DOC_NAME').AsString) = '' then
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qrySingleDoc.FieldByName('DOC_NAME').AsString +'.'+ qrySingleDoc.FieldByName('file_extension').AsString
                  else
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ qrySingleDoc.FieldByName('DOC_NAME').AsString;
                  // in case file still sitting in tmp directory
                  DeleteFile(tmpFileName);

                  bStream.Seek(0, soFromBeginning);

                  with TFileStream.Create(tmpFileName, fmCreate) do
                  try
                     CopyFrom(bStream, bStream.Size)
                  finally
                     Free;
                  end;
               finally
                  bStream.Free
               end;
            end
            else
            begin
               SelRec := qryDocs.FieldByName('DOCID').AsInteger;
               qrySingleDoc.Close;
               qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
               qrySingleDoc.Open;
               tmpFileName := qrySingleDoc.FieldByName('DISPLAY_PATH').AsString;
               qrySingleDoc.Close;
            end;
            AAttachList.Add(tmpFileName);
            LAttachDocID.Add(IntToStr(SelRec));
         end;
      end;
      Result := AAttachList;
      ADocIDList := LAttachDocID;
   end;
end;

procedure TfrmDocSearch.OnNewMessage(ASender: IRwMapiMessageSite);
var
  ContentID, FileName : string;
   i: integer;
begin
   if FAttachDoc then
   begin
      ASender.MapiMessage.PropByName(MATTER).AsString := qryDocs.FieldByName('fileid').AsString;
      for i := 0 to FAttachFileName.Count - 1 do
      begin
         FileName  := FAttachFileName.Strings[i];

         // check for embedded image
         ContentID := lowercase(ChangeFileExt(ExtractFileName(FileName),''));
   //      if Pos('cid:'+ContentID, HtmlSource) > 0 then
   //         ASender.MapiMessage.AddEmbeddedImage(FileName)
   //      else

         ASender.MapiMessage.AddFileAttachment(FileName);


   {       try
            ASender.MapiMessage.AddFileAttachment(FAttachFileName);
          except
            //
          end;    }
     end;
     ASender.MapiMessage.SaveChanges(smKeepOpenReadWrite);
   end;
end;

procedure TfrmDocSearch.BeforeSubmitMessage(ASender: IRwMapiMessageSite);
var
   sSubject: string;
   x, i: integer;
   AFileID, FileID: string;
begin
   if FAttachDoc then
   begin
      try
         AFileID := ASender.MapiMessage.PropByName(MATTER).AsString;
      except
         try
            ASender.MapiMessage.PropByName(MATTER).AsString := qryDocs.FieldByName('fileid').AsString;
         except
            //
         end;
      end;
      sSubject := ASender.MapiMessage.PropByName(PR_SUBJECT).AsString;
      for i := 1 to length(sSubject) do
      begin
         if sSubject[i] = '#' then
         begin
            for x := i + 1 to length(sSubject) do
            begin
               if (sSubject[x] <> ' ') and (sSubject[x] <> ']') then
                  FileID := FileID + sSubject[x];
            end;
         end;
      end;
      if FileID = '' then
        Asender.MapiMessage.PropByName(PR_SUBJECT).Value :=
                 Asender.MapiMessage.PropByName(PR_SUBJECT).Value +
                 ' [Matter#'+AFileID+']';
      ASender.MapiMessage.SaveChanges(smKeepOpenReadWrite);
   end;
end;

procedure TfrmDocSearch.dtpSinceClick(Sender: TObject);
begin
   if chkSince.Checked = True then
      dtpSince.Date := Trunc(Date);
end;

procedure TfrmDocSearch.btnProfileClick(Sender: TObject);
var
   LfrmDocNew: TfrmDocNew;
begin
   if tvDocs.Controller.SelectedRowCount = 1 then
   begin
      try
         LfrmDocNew := TfrmDocNew.Create(Self);
         LfrmDocNew.ADocId := qryDocs.FieldByName('docid').AsInteger;
         LfrmDocNew.FileID := qrydocs.FieldByName('FILEID').AsString;
         LfrmDocNew.Editing := True;
         if LfrmDocNew.ShowModal = mrOk then
      except
         // qryDocs.Refresh;
      end;
   end;
end;

procedure TfrmDocSearch.btnOpenClick(Sender: TObject);
var
   bStream: TStream;
   tmpFileName: string;
   Msg : IRwMapiMessage;
//   FormMgr : IRwMapiFormMgr;
   FormRect: TRect;
   OldCursor: TCursor;
//   MsgForm: TFrmMessage;
   ARowIndex, SelRec, SelRec1: integer;
   MsgStore: IRwMapiMsgStore;
   Folder  : IRwMapiFolder;
   SiteStatus, ViewStatus: Integer;
   MsgClass: string;
   RandFile,
   DocErrMsg: string;
   ADataSet: TDataSet;
   AHandle: THandle;
begin
   SaveSelectedItems;

   with qryDocs do
   begin
      if (not IsEmpty) then
      begin
         if (not FieldByName('URL').IsNull) then
         begin
            AHandle := ExecuteFile(FieldByName('URL').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
            if AHandle <= 32 then
               MsgInfo('Unable to open Link. The Link may no longer exist.');
            UpdateModBy(InttoStr(SelRec));
         end
         else
         if FieldByName('PATH').IsNull then
         begin
            SelRec := FieldByName('DOCID').AsInteger;
            qrySingleDoc.Close;
            qrySingleDoc.ParamByName('docid').AsInteger := SelRec;
            qrySingleDoc.Open;
            Randomize;
            RandFile := IntToStr(RandomRange(100, 100000));
            bStream := qrySingleDoc.CreateBlobStream(qrySingleDoc.FieldByName('DOCUMENT'),bmRead);
            try
               if ExtractFileExt(qrySingleDoc.FieldByName('DOC_NAME').AsString) = '' then
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + qrySingleDoc.FieldByName('DOC_NAME').AsString + '.'+ qrySingleDoc.FieldByName('file_extension').AsString
               else
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ RandFile + qrySingleDoc.FieldByName('DOC_NAME').AsString;

               if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
                  tmpFileName := dmAxiom.GetEnvVar('TMP')+'\'+ 'axeml' + RandFile + '.msg';
               // in case file still sitting in tmp directory
               DeleteFile(tmpFileName);

               bStream.Seek(0, soFromBeginning);

               with TFileStream.Create(tmpFileName, fmCreate) do
               try
                  CopyFrom(bStream, bStream.Size)
               finally
                  Free
               end;
            finally
               bStream.Free
            end;
            if qrySingleDoc.FieldByName('FILE_EXTENSION').AsString = 'msg' then
            begin
               if not dmAxiom.MapiSession.Active then
               begin
                  OldCursor := Screen.Cursor;
                  Screen.Cursor := crHourGlass;
                  try
                     dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                     dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;  //'Outlook';
                     dmAxiom.MapiSession.LogonInfo.Password           := '';
                     dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                     dmAxiom.MapiSession.LogonInfo.NewSession         := False;
                     dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                     dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
                     dmAxiom.MapiSession.Active                       := True;
                  finally
                     Screen.Cursor := OldCursor;
                  end;
               end;
               try
                  Msg := dmAxiom.MapiSession.OpenDefaultMsgStore.OpenSavedMessage(tmpFileName);
//                  Msg.DisplayProperties;
                  begin
                     MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
                     Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite);
                     // Display the message in a Form Manager form.
                     // A Form Manager Form is more flexible than the default mapi form

                     // get a form manager
//                     FormMgr := dmAxiom.MapiSession.GetFormMgr;
//                     FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);

                     // get the last known size and position of a form this type
                     FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 250, 300);

                     SiteStatus := 0;
                     ViewStatus := 0;
                     MsgClass := 'IPM.Note';
                     Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
                     SiteStatus := stDelete + stCopy
                        + stMove + stSubmit + stDeleteIsMove
                        + stSave + stNewMessage;
               //      FormMgr.ShowMessage(Msg, FormRect, SiteStatus);
                     FormMgr.ShowMessage(Msg {,SiteStatus, FormRect});
                  end;
                  DeleteFile(tmpFileName);
               except
                  // error
               end;
           end
           else
           begin
              ExecuteFile(tmpFileName, '', '.', SW_SHOWNORMAL, DocErrMsg);
              UpdateModBy(InttoStr(SelRec));
           end;
         end
         else
         begin
            AHandle := ExecuteFile(qryDocs.FieldByName('PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
            if AHandle <= 32 then
               AHandle := ExecuteFile(qryDocs.FieldByName('Display_PATH').AsString, '', '.', SW_SHOWNORMAL, DocErrMsg);
               if AHandle <= 32 then
                  MsgInfo('Unable to open Document. The document may not exist or the extension for this document is not associated with any program.');
//            ExecuteFile(FieldByName('PATH').AsString, '', '.', SW_SHOW);
            UpdateModBy(InttoStr(SelRec));
         end;
      end;
      Refresh; // Close;
      RestoreSelectedItems;
   end;
end;

procedure TfrmDocSearch.SaveSelectedItems();
var
   rowIndex: integer;
begin
   try
      with tvDocs do
      begin
         rowIndex := Controller.FocusedRowIndex;
         FRowIndex := DataController.GetRowInfo(rowIndex).RecordIndex;
      end;
   except
     ;
   end;
end;

procedure TfrmDocSearch.RestoreSelectedItems();
var
   rowIndex: integer;
begin
   try
      with tvDocs do
         begin
            rowindex := DataController.GetRowIndexByRecordIndex(FRowIndex, False);
            if ( rowIndex >= 0 ) then
            begin
               DataController.ChangeRowSelection(rowIndex, True);
               Controller.FocusedRowIndex := rowIndex;
            end;
         end;
   except
     ;
   end;
end;

procedure TfrmDocSearch.btnPrintClick(Sender: TObject);
begin
     dxComponentPrinter1.Preview();
end;

procedure TfrmDocSearch.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmClientSearch) then
      Application.CreateForm(TfrmClientSearch, frmClientSearch);

   if frmClientSearch.ShowModal = mrOK then
   begin
      edClientID.Tag := frmClientSearch.qryClientList.FieldByName('NCLIENT').AsInteger;
      edClientID.Text := frmClientSearch.qryClientList.FieldByName('SEARCH').AsString;
   end;
end;

procedure TfrmDocSearch.chkSinceClick(Sender: TObject);
begin
  dtpSince.Enabled := chkSince.Checked;
end;

procedure TfrmDocSearch.chkBeforeClick(Sender: TObject);
begin
  dtpBefore.Enabled := chkBefore.Checked;
end;

procedure TfrmDocSearch.chkCreatedSinceClick(Sender: TObject);
begin
  dtpCreatedSince.Enabled := chkCreatedSince.Checked;
end;

procedure TfrmDocSearch.chkCreatedBeforeClick(Sender: TObject);
begin
  dtpCreatedBefore.Enabled := chkCreatedBefore.Checked;
end;

procedure TfrmDocSearch.FormMgrBeforeSubmitMessage(Sender: TObject;
  const MessageSite: IRwMapiMessageSite);
var
   sSubject: string;
   x, i: integer;
   AFileID, FileID: string;
begin
   if FAttachDoc then
   begin
      try
         AFileID := MessageSite.MapiMessage.PropByName(MATTER).AsString;
      except
         try
            MessageSite.MapiMessage.PropByName(MATTER).Value := qryDocs.FieldByName('fileid').AsString;
         except
            //
         end;
      end;
      sSubject := MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString;
      for i := 1 to length(sSubject) do
      begin
         if sSubject[i] = '#' then
         begin
            for x := i + 1 to length(sSubject) do
            begin
               if (sSubject[x] <> ' ') and (sSubject[x] <> ']') then
                  FileID := FileID + sSubject[x];
            end;
         end;
      end;
      if FileID = '' then
        MessageSite.MapiMessage.PropByName(PR_SUBJECT).Value :=
                 MessageSite.MapiMessage.PropByName(PR_SUBJECT).Value +
                 ' [Matter#'+AFileID+']';
      MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);
   end;

end;

procedure TfrmDocSearch.FormMgrNewMessage(Sender: TObject;
  const MessageSite: IRwMapiMessageSite);
var
  AddressBook: IRwMapiAddressBook;
  RecipTable: IRwMapiRecipientTable;
begin
  MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString :=  '[Matter #'+ qryDocs.FieldByName('fileid').AsString +']'; //'Create, ' + ASender.MapiMessage.PropByName(PR_SUBJECT).AsString;
  if MessageSite.MapiMessage.PropByName(PR_MESSAGE_CLASS).AsString = 'IPM.Note' then
  begin
    // also set a default recpient
    AddressBook := dmAxiom.MapiSession.OpenAddressBook;
    RecipTable := AddressBook.CreateRecipientTable;
    RecipTable.Recipients[rtTO] :=  '';
//    MessageSite.MapiMessage.  ModifyRecipients(moReplaceAll, RecipTable);
  end;
  FLastCreateMessage := MessageSite.MapiMessage.PropByName(PR_ENTRYID).Value;

end;

procedure TfrmDocSearch.FormMgrShutDown(Sender: TObject;
  const MessageSite: IRwMapiMessageSite);
var
   bStream: TStream;
begin
{   if dmAxiom.uniInsight.InTransaction then
      dmAxiom.uniInsight.Commit;
   dmAxiom.uniInsight.StartTransaction;
   dmAxiom.qryMatterAttachments.Open;
   if dmAxiom.qryMatterAttachments.State in [dsBrowse] then
      dmAxiom.qryMatterAttachments.insert;

   dmAxiom.qryMatterAttachments.FieldByName('fileid').AsString := qryDocs.FieldByName('fileid').AsString;
   dmAxiom.qryMatterAttachments.FieldByName('nmatter').AsString := qryDocs.FieldByName('NMATTER').AsString;
   dmAxiom.qryMatterAttachments.FieldByName('auth1').AsString := dmAxiom.UserID;
   dmAxiom.qryMatterAttachments.FieldByName('D_CREATE').AsDateTime := Now;
   dmAxiom.qryMatterAttachments.FieldByName('IMAGEINDEX').AsInteger := 4;
   dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString;
   bStream := dmAxiom.qryMatterAttachments.CreateBlobStream(dmAxiom.qryMatterAttachments.fieldByname('DOCUMENT'), bmReadWrite);

   MessageSite.MapiMessage.  SaveToStream(bStream);
   bStream.free;
   dmAxiom.qryMatterAttachments.Post;
   dmAxiom.uniInsight.Commit;  }
end;

procedure TfrmDocSearch.FormMgrCreateMessage(Sender: TObject;
  const MessageSite: IRwMapiMessageSite);
var
  AddressBook: IRwMapiAddressBook;
  RecipTable: IRwMapiRecipientTable;
begin
  MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString :=  '[Matter #'+ qryDocs.FieldByName('fileid').AsString +']'; //'Create, ' + ASender.MapiMessage.PropByName(PR_SUBJECT).AsString;
  if MessageSite.MapiMessage.PropByName(PR_MESSAGE_CLASS).AsString = 'IPM.Note' then
  begin
    // also set a default recpient
    AddressBook := dmAxiom.MapiSession.OpenAddressBook;
    RecipTable := AddressBook.CreateRecipientTable;
    RecipTable.Recipients[rtTO] := 'default@somewhere.com';
//    MessageSite.MapiMessage.ModifyRecipients(moReplaceAll, RecipTable);
  end;
  FLastCreateMessage := MessageSite.MapiMessage.PropByName(PR_ENTRYID).Value;

end;

procedure TfrmDocSearch.SetTextField(sSearchText: string);
begin
   try
      FTextSearch := sSearchText;
      edDescr.Text := sSearchText;
   finally
//      TextSearch := '';
   end;
end;

end.

