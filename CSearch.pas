unit CSearch;

{AES 1/6/2017
 added nclient is not null to where clause
 }

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Db, Buttons, ExtCtrls,
  CheckLst, ToolWin, ImgList, OracleUniProvider, Uni, MemDS,
  DBAccess, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Variants,
  cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGridLevel, cxGrid, cxCalendar,
  cxCurrencyEdit, dxBar, cxCheckListBox, cxGroupBox, cxRadioGroup, cxMemo,
  cxLabel, cxPC, dxBarExtItems, cxLookAndFeelPainters,
  cxLookAndFeels, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPSContainerLnk, dxPScxCommon, dxPScxGridLnk,
  cxGridExportLink, ppCtrls, ppPrnabl, ppClass, ppVar, ppBands, ppCache,
  ppDB, ppDesignLayer, ppParameter, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, cxPCdxBarPopupMenu, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPSDBTCLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxDBEditorLnks,
  dxPSTextLnk, dxPScxSchedulerLnk, dxCore, cxNavigator, cxBarEditItem,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxCustomListBox, dxDateRanges, System.ImageList;

const
  imgWORD = 2;
  imgWP = 3;
  pnlCLIENTS = 0;
  pnlFILTER = 1;

type
  TLookup = (luUnassigned, luSearch, luCode);

  TfrmClientSearch = class(TForm)
    qryClientList: TUniQuery;
    dsClients: TUniDataSource;
    qryClientGroup: TUniQuery;
    ilstToolbar: TImageList;
    qryClientReport: TUniQuery;
    tmrSearch: TTimer;
    qryPartner: TUniQuery;
    qryController: TUniQuery;
    qryAuthor: TUniQuery;
    qryOperator: TUniQuery;
    qryWorkFlow: TUniQuery;
    qryType: TUniQuery;
    qrySubtype: TUniQuery;
    qryBranch: TUniQuery;
    qryJurisdiction: TUniQuery;
    qryStatus: TUniQuery;
    dsOperator: TUniDataSource;
    dsAuthor: TUniDataSource;
    dsType: TUniDataSource;
    dsSubtype: TUniDataSource;
    dsWorkFlow: TUniDataSource;
    dsBranch: TUniDataSource;
    dsJurisdiction: TUniDataSource;
    dsStatus: TUniDataSource;
    dsController: TUniDataSource;
    dsPartner: TUniDataSource;
    dsClientPartner: TUniDataSource;
    dsClientGender: TUniDataSource;
    qryClientGender: TUniQuery;
    sbarStatus: TStatusBar;
    qryClientCount: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxAltColumn: TcxStyle;
    cxSelection: TcxStyle;
    dxBarManager1: TdxBarManager;
    tbtnRefresh: TdxBarButton;
    tbtnClearAll: TdxBarButton;
    tbtnMerge: TdxBarButton;
    tbtnPrint: TdxBarButton;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
    tabFilters: TcxTabSheet;
    dbgrClients: TcxGrid;
    tvdbgrClients: TcxGridDBTableView;
    tvdbgrClientsSEARCH: TcxGridDBColumn;
    tvdbgrClientsADDRESS: TcxGridDBColumn;
    tvdbgrClientsPARTNER: TcxGridDBColumn;
    tvdbgrClientsGenderDesc: TcxGridDBColumn;
    dbgrClientsLevel1: TcxGridLevel;
    btnClearAll: TBitBtn;
    gbGroups: TGroupBox;
    btnGroupsRefresh: TBitBtn;
    clbGroups: TcxCheckListBox;
    rgGroupSelect: TcxRadioGroup;
    fraIncludes: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    rbContaining: TRadioButton;
    rbStarting: TRadioButton;
    edClientCode: TcxTextEdit;
    edContact: TcxTextEdit;
    edName: TcxTextEdit;
    edSearch: TcxTextEdit;
    fraEqual: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    lblPacketID: TLabel;
    cmbClientPartner: TcxLookupComboBox;
    cmbClientGender: TcxLookupComboBox;
    chkPacketDeed: TcxCheckBox;
    GroupBox1: TGroupBox;
    lblPartner: TLabel;
    lblAuthor: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    lblController: TLabel;
    Label13: TLabel;
    lblOperator: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lblParaLegal: TLabel;
    cmbPartner: TcxLookupComboBox;
    cmbController: TcxLookupComboBox;
    cmbAuthor: TcxLookupComboBox;
    cmbOperator: TcxLookupComboBox;
    cmbWorkFlow: TcxLookupComboBox;
    cmbType: TcxLookupComboBox;
    cmbSubtype: TcxLookupComboBox;
    cmbBranch: TcxLookupComboBox;
    cmbJurisdiction: TcxLookupComboBox;
    cmbStatus: TcxLookupComboBox;
    cmbParaLegal: TcxLookupComboBox;
    rbEquals: TRadioButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    rbNone: TRadioButton;
    tvdbgrClientsROW_COLOUR: TcxGridDBColumn;
    edPacketID: TcxTextEdit;
    dxBarSubItem1: TdxBarSubItem;
    btnExp2Excel: TdxBarButton;
    btnPrintGrid: TdxBarButton;
    ComponentPrinter: TdxComponentPrinter;
    ComponentPrinterLink1: TdxGridReportLink;
    OpenDialog: TOpenDialog;
    dsClientReport: TUniDataSource;
    plClientReport: TppDBPipeline;
    rptClient: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    lblEntity: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    lblSelection: TppLabel;
    cbIncludeArchived: TcxBarEditItem;
    tvdbgrClientsCLIENTID: TcxGridDBColumn;
    tvdbgrClientsCONTACT_NAME: TcxGridDBColumn;
    Panel2: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    cxLabel1: TcxLabel;
    cmbFilter: TcxComboBox;
    tbClientSearch: TcxTextEdit;
    tbCode: TEdit;
    Panel3: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    cbProspectiveClients: TcxBarEditItem;
    cbProspectiveOnly: TcxBarEditItem;
    Label8: TLabel;
    edPacket: TcxTextEdit;
    tvdbgrClientsEMAIL: TcxGridDBColumn;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure tvdbgrClientsDblClick(Sender: TObject);
    procedure dbgrClientsColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure tbClientSearchChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnGroupsRefreshClick(Sender: TObject);
    procedure tbCodeChange(Sender: TObject);
    procedure tbCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbClientSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbtnMergeClick(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tbtnClearAllClick(Sender: TObject);
    procedure tabGridShow(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure rbStartingClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure edNameChange(Sender: TObject);
    procedure edContactChange(Sender: TObject);
    procedure edClientCodeChange(Sender: TObject);
    { Replaced by LookupComboBox
    procedure cbPartnerChange(Sender: TObject);
    procedure cbGenderChange(Sender: TObject);
    }
    procedure rgGroupSelectClick(Sender: TObject);
    procedure clbGroupsClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure cmbTypePropertiesChange(Sender: TObject);
    procedure cmbPropertiesChange(Sender: TObject);
    procedure edPacketChange(Sender: TObject);
    procedure edPacketIDChange(Sender: TObject);
    procedure chkPacketDeedClick(Sender: TObject);
    procedure edPacketEnter(Sender: TObject);
    procedure edPacketIDEnter(Sender: TObject);
    procedure tvdbgrClientsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbClientSearchPropertiesChange(Sender: TObject);
    procedure cmbFilterPropertiesCloseUp(Sender: TObject);
    procedure cmbFilterPropertiesChange(Sender: TObject);
    procedure cbIncludeArchivedClick(Sender: TObject);
    procedure tvdbgrClientsCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnPrintGridClick(Sender: TObject);
    procedure btnExp2ExcelClick(Sender: TObject);
    procedure rptClientBeforePrint(Sender: TObject);
    procedure cxBarEditItem1Click(Sender: TObject);
    procedure cbProspectiveClientsPropertiesEditValueChanged(Sender: TObject);
    procedure cbProspectiveOnlyPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FLookup: TLookup;
    SaveFilter, SaveConfig, RefreshSearch: Boolean;
    FReturnSelection : TBookmark;
    FLookupValue: string;
    procedure MakeSQL;
    procedure MakeTitle;
    procedure setDisplayNames;
  public
    { Public declarations }
    sWhereClause : string;
    sCountWhereClause: string;
    sFromClause : string;
    sOrderBy : string;
    function FindClient(sClient : string) : boolean;
    property Lookup : TLookup read FLookup write FLookup;
    property LookupValue : string read FLookupValue write FLookupValue;
  end;

  TCBItems = (ciExclude = 0,ciContains = 1,ciBegins = 2,ciEquals = 3);

var
  frmClientSearch: TfrmClientSearch;

implementation

uses
  AxiomData, MiscFunc, WriteMerge;

{$R *.DFM}

var
  sSQL: string;
  bUsingGroups : boolean;
  sLastClient : string;

procedure TfrmClientSearch.btnClearAllClick(Sender: TObject);
var
  iCtr : integer;
begin
  edSearch.Clear;
  edName.Clear;
  edContact.Clear;
  edClientCode.Clear;
  edPacket.Clear;
  edPacketId.Clear;
  cmbClientPartner.EditValue := '' ;
  cmbClientGender.EditValue := '' ;
  cmbPartner.EditValue := '' ;
  cmbController.EditValue := '' ;
  cmbAuthor.EditValue := '' ;
  cmbOperator.EditValue := '' ;
  cmbType.EditValue := '' ;
  cmbSubtype.EditValue := '' ;
  cmbBranch.EditValue := '' ;
  cmbJurisdiction.EditValue := '' ;
  cmbStatus.EditValue := '' ;
  cmbWorkFlow.EditValue := '' ;
  cmbFilter.ItemIndex := 2;
  rbStarting.Checked := True;
  tbClientSearch.Clear;

  for iCtr := 0 to clbGroups.Items.Count - 1 do
    clbGroups.Items[iCtr].Checked := False;
end;

procedure TfrmClientSearch.FormShow(Sender: TObject);
begin
   if dmAxiom.WANEnabled then
   begin
      pageSearch.ActivePage := tabFilters;
      edSearch.Text := LookupValue;
   end
   else
   begin
      pageSearch.ActivePage := tabGrid;
      // TONY
      // tbClientSearch.Clear;
      // tbCode.Clear;
      case FLookup of
         luUnassigned, luSearch: tbClientSearch.SetFocus;
         luCode: tbCode.SetFocus;
      end;

      if LookupValue <> '' then
         tbClientSearch.Text := LookupValue;

{      if FReturnSelection = Nil then
         MakeSQL
      else
         try
            qryClientList.GotoBookmark(FReturnSelection);
         except
            ;
         end;  }
   end;
end;

procedure TfrmClientSearch.pageSearchChange(Sender: TObject);
begin
   case pageSearch.ActivePage.TabIndex of
      0: // Back to the Grid page
      begin
         if RefreshSearch = True then
         begin
            if tbClientSearch.Text <> '' then
               tbClientSearch.Text := edSearch.Text;
            MakeSQL;
         end;
         tbClientSearch.SetFocus;
         tbtnPrint.Enabled := True;
         btnExp2Excel.Enabled := True;
         btnPrintGrid.Enabled := True;
      end;
      1: // Back to Filter page
      begin
         RefreshSearch := False;
         tbtnPrint.Enabled := False;
         btnExp2Excel.Enabled := False;
         btnPrintGrid.Enabled := False;
      end;
   end;
end;

procedure TfrmClientSearch.tvdbgrClientsDblClick(Sender: TObject);
begin
//  ReturnSelection := qryClientList.GetBookmark;
//  ModalResult := mrOK;
   btnOk.Click;
end;

procedure TfrmClientSearch.MakeSQL;
var
  iCtr, iGroups: integer;
  addMatterTable : boolean;
//  sFromClause : string;
  sAND,
  sLeadingWildcard,
  sSQLCount: string;
begin
   Screen.Cursor := crSQLWait;
   // Free the bookmark
{   try
      if FReturnSelection <> Nil then
      begin
         qryClientList.FreeBookmark(FReturnSelection);
         FReturnSelection := Nil;
      end;
   except
      FReturnSelection := Nil;
   end;      }

   // Build the SQL Filter query
   qryClientList.Close;
   sCountWhereClause := '';
   sWhereClause := '';
   sFromClause := '';
   iCtr := 0;
   bUsingGroups := False;
   while (iCtr < clbGroups.Items.Count) and not bUsingGroups do
   begin
     if clbGroups.Items[iCtr].Checked then
       bUsingGroups := True;
     iCtr := iCtr + 1;
   end;

   sAND := ' WHERE ';
   addMatterTable := True;

   // Client Related Fields group box
   // Required here since it references another table
   // Packet ID (DocReg table)
   if chkPacketDeed.Checked = True then
   begin
     sFromClause := sFromClause + ', DOCREG';
     sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = docreg.nclient';
     sAND := ' AND ';
   end
   else if (edPacket.Text <> '') or (edPacketID.Text <> '')then
   begin
     sFromClause := sFromClause + ', DOCREGITEM';
//     sWhereClause := sWhereClause + sAND + 'client.nclient = docreg.nclient and docreg.packetid like ' + QuotedStr('%' + edPacketID.Text + '%');
     if (edPacket.Text <> '') then
     begin
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = docregitem.nclient and upper(docregitem.packetid) like ' + QuotedStr(uppercase(edPacket.Text));
     end
     else
     begin
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = docregitem.nclient and contains(docregitem.dummy,' + QuotedStr('%'+edPacketID.Text+'%') + ',1) > 0';
     end;
     sAND := ' AND ';
   end;

   // Matter Related Fields
   if not varIsNull(cmbPartner.EditValue) then
   begin
     if String(cmbPartner.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       addMatterTable := False;
       sWhereClause := sWhereClause + sAND + 'matter.partner = ' + QuotedStr(cmbPartner.EditValue);
       sAND := ' AND ';
     end;
   end;

   if varIsNull(cmbController.EditValue) = False then
   begin
     if String(cmbController.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       addMatterTable := False;
       sWhereClause := sWhereClause + sAND + 'matter.controller = ' + QuotedStr(cmbController.EditValue);
       sAND := ' AND ';
     end;
   end;

   if not varIsNull(cmbAuthor.EditValue) then
   begin
     if String(cmbAuthor.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       addMatterTable := False;
       sWhereClause := sWhereClause + sAND + 'matter.author = ' + QuotedStr(cmbAuthor.EditValue);
       sAND := ' AND ';
     end;
   end;

   if not varIsNull(cmbOperator.EditValue) then
   begin
     if String(cmbOperator.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       addMatterTable := False;
       sWhereClause := sWhereClause + sAND + 'matter.operator = ' + QuotedStr(cmbOperator.EditValue);
       sAND := ' AND ';
     end;
   end;

   if not varIsNull(cmbParaLegal.EditValue) then
   begin
     if String(cmbParaLegal.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       addMatterTable := False;
       sWhereClause := sWhereClause + sAND + 'matter.paralegal = ' + QuotedStr(cmbController.EditValue);
       sAND := ' AND ';
     end;
   end;

   if not varIsNull(cmbType.EditValue) then
   begin
     if String(cmbType.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       addMatterTable := False;
       sWhereClause := sWhereClause + sAND + 'matter.type = ' + QuotedStr(cmbType.EditValue);
       sAND := ' AND ';
     end;
   end;

   if not varIsNull(cmbBranch.EditValue) then
   begin
     if String(cmbBranch.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       addMatterTable := False;
       sWhereClause := sWhereClause + sAND + 'matter.branch = ' + QuotedStr(cmbBranch.EditValue);
       sAND := ' AND ';
     end;
   end;

   if not varIsNull(cmbJurisdiction.EditValue) then
   begin
     if String(cmbJurisdiction.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       addMatterTable := False;
       sWhereClause := sWhereClause + sAND + 'matter.jurisdiction = ' + QuotedStr(cmbJurisdiction.EditValue);
       sAND := ' AND ';
     end;
   end;

   if not varIsNull(cmbStatus.EditValue) then
   begin
     if String(cmbStatus.EditValue) <> '' then
     begin
       if addMatterTable then
       begin
         sFromClause := sFromClause + ', matter';
         sWhereClause := sWhereClause + sAND + 'PHONEBOOK.nclient = matter.nclient';
         sAND := ' AND ';
       end;
       sWhereClause := sWhereClause + sAND + 'matter.status = ' + QuotedStr(cmbStatus.EditValue);
       sAND := ' AND ';
     end;
   end;
   // End of Matter Related Fields

   // Client Related Fields group box
   if not varIsNull(cmbClientPartner.EditValue) then
   begin
     if String(cmbClientPartner.EditValue) <> '' then
     begin
       sWhereClause := sWhereClause + sAND + 'PHONEBOOK.partner = ' + QuotedStr(cmbClientPartner.EditValue);
       sAND := ' AND ';
     end;
   end;
   {
   if cbPartner.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'CLIENT.PARTNER = ''' + cbPartner.Text + '''';
     sAND := ' AND ';
   end;
   }
   if not varIsNull(cmbClientGender.EditValue) then
   begin
     if String(cmbClientGender.EditValue) <> '' then
     begin
       sWhereClause := sWhereClause + sAND + 'PHONEBOOK.gender = ' + QuotedStr(cmbClientGender.EditValue);
       sAND := ' AND ';
     end;
   end;

   {
   if cbGender.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'CLIENT.GENDER = ''' + cbGender.Text + '''';
     sAND := ' AND ';
   end;
   }

   if rbContaining.Checked then
     sLeadingWildcard := '%'
   else
     sLeadingWildcard := '';

   // Select Group Box
   // Tony : commented out the following line, due to the
   // fact that it kept overwriting the proper search string of edSearch
   //edSearch.Text := tbClientSearch.Text;

   if edSearch.Text <> '' then
   begin
     case TCBItems(cmbfilter.ItemIndex) of
       ciEquals:    sWhereClause := sWhereClause + sAND + 'UPPER(PHONEBOOK.SEARCH) ' + '= '    + QuotedStr(Trim(UpperCase(edSearch.Text))) + ' ';
       ciContains:  sWhereClause := sWhereClause + sAND + 'contains(phonebook.dummy,upper('+ QuotedStr(edSearch.Text) +')) > 0';  //'UPPER(CLIENT.SEARCH) ' + 'LIKE ' + QuotedStr('%' + Trim(UpperCase(edSearch.Text)) + '%') + ' ';
       ciBegins:    sWhereClause := sWhereClause + sAND + 'UPPER(PHONEBOOK.SEARCH) ' + 'LIKE ' + QuotedStr(Trim(UpperCase(edSearch.Text)) + '%') + ' ';
     end;
// /    sWhereClause := sWhereClause + sAND + 'UPPER(CLIENT.SEARCH) LIKE ' + QuotedStr(sLeadingWildCard + Uppercase(edSearch.Text) + '%');
     sAND := ' AND ';
   end;

   if edName.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'UPPER(PHONEBOOK.NAME) LIKE ' + QuotedStr(sLeadingWildCard + Uppercase(edName.Text) + '%');
     sAND := ' AND ';
   end;
   if edContact.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'UPPER(PHONEBOOK.CONTACT_NAME) LIKE ' + QuotedStr(sLeadingWildCard + Uppercase(edContact.Text) + '%');
     sAND := ' AND ';
   end;

   // Tony : commented out the following line, due to the
   // fact that it kept overwriting the proper search string of edClientCode
   // edClientCode.Text := tbCode.Text;
   if edClientCode.Text <> '' then
   begin
     sWhereClause := sWhereClause + sAND + 'PHONEBOOK.CODE LIKE ' + QuotedStr(sLeadingWildCard + Uppercase(edClientCode.Text) + '%');
     sAND := ' AND ';
   end;

   if bUsingGroups then
   begin
     sWhereClause := sWhereClause + sAND + ' PHONEBOOK.NCLIENT IN (SELECT CLIENTGROUPINGS.NCLIENT FROM CLIENTGROUPINGS WHERE ';
     sAND := '';
     iGroups := 0;
     for iCtr := 0 to clbGroups.Items.Count - 1 do
     begin
       if clbGroups.Items[iCtr].Checked then
       begin
         sWhereClause := sWhereClause + sAND + ' CLIENTGROUPINGS.CATEGORY = ' + QuotedStr(clbGroups.Items[iCtr].Text);
         sAND := ' OR ';
         iGroups := iGroups + 1;
       end;
     end;
     sWhereClause := sWhereClause + '  GROUP BY CLIENTGROUPINGS.NCLIENT ';
// /    if rgGroupSelect.ItemIndex = 0 then
// /      sWhereClause := sWhereClause + ' HAVING COUNT(CLIENTGROUPINGS.NCLIENT) = ' + IntToStr(iGroups);
     sWhereClause := sWhereClause + ')';
   end;

   if sWhereClause = '' then
   begin
     sCountWhereClause := 'WHERE PHONEBOOK.SEARCH > '' ''';
     sWhereClause := 'WHERE PHONEBOOK.SEARCH > '' '' AND PHONEBOOK.DEBTORSTATUS = DEBTORSTATUS.DEBTORSTATUS(+) ';
   end
   ELSE
   begin
     sCountWhereClause := sWhereClause;
     sWhereClause := sWhereClause +  ' AND PHONEBOOK.DEBTORSTATUS = DEBTORSTATUS.DEBTORSTATUS(+) ';
   end;

   if (boolean(cbIncludeArchived.EditValue) = False) then
      sWhereClause := sWhereClause + ' AND PHONEBOOK.ARCHIVED = ''N'' ';

   if (boolean(cbProspectiveClients.EditValue) = True) then
      sWhereClause := sWhereClause + ' AND NVL(PHONEBOOK.PROSPECTIVE, ''N'') IN (''N'', ''Y'') '
   else
      sWhereClause := sWhereClause + ' AND NVL(PHONEBOOK.PROSPECTIVE, ''N'') = ''N'' ';

   if (boolean(cbProspectiveOnly.EditValue) = True) then
      sWhereClause := sWhereClause + ' AND NVL(PHONEBOOK.PROSPECTIVE, ''N'') = ''Y'' ';

   sWhereClause := sWhereClause + ' AND PHONEBOOK.NCLIENT IS NOT NULL ';

   if (systemstring('locale_name') <> '') then
         sWhereClause := sWhereClause + ' AND phonebook.nname = phonebook_entity.nname and phonebook_entity.entity = :DefEntity ';
//   sWhereClause := sWhereClause + ' AND contactaccess(PHONEBOOK.NNAME, :Entity, :DefEntity ) = 0 ';

   qryClientList.SQL.Clear;
   qryClientList.SQL.Text := sSQL + sFromClause + sWhereClause + sOrderBy;
   if dmAxiom.runningide = True then
      qryClientList.SQL.SaveToFile('c:\tmp\clientsearch.sql');

//   qryClientList.ParamByName('entity').AsString := dmAxiom.Entity;
   if (systemstring('locale_name') <> '') then
   begin
      if (dmAxiom.Security.Employee.ChangeEntity = true) then
         qryClientList.ParamByName('DefEntity').AsString := dmAxiom.Entity
      else
         qryClientList.ParamByName('DefEntity').AsString := dmAxiom.EmpEntity;
   end;

   qryClientList.Open;
   //qryClientList.Locate('SEARCH', sLastClient, [loCaseInsensitive]);


   if qryClientCount.Active = True then
     qryClientCount.Close;
   sSQLCount := 'SELECT distinct COUNT(''x'') AS clienttotal FROM DEBTORSTATUS, PHONEBOOK ';
   if (systemstring('locale_name') <> '') then
      sSQLCount := sSQLCount + ', PHONEBOOK_ENTITY ';

   sSQLCount := sSQLCount + sFromClause + sWhereClause;

   qryClientCount.SQL.Text :=  sSQLCount;
   if (systemstring('locale_name') <> '') then
      begin
      if (dmAxiom.Security.Employee.ChangeEntity = true) then
         qryClientCount.ParamByName('DEFENTITY').AsString := dmAxiom.Entity
      else
         qryClientCount.ParamByName('DEFENTITY').AsString := dmAxiom.EmpEntity;
   end;

   qryClientCount.Open;

   if not qryClientCount.Eof then
   begin
     sbarStatus.Panels[pnlCLIENTS].Text := qryClientCount.FieldByName('clienttotal').AsString + ' Client';
     if qryClientCount.FieldByName('clienttotal').AsInteger > 1 then
       sbarStatus.Panels[pnlCLIENTS].Text := sbarStatus.Panels[pnlCLIENTS].Text + 's';
   end;

   MakeTitle;
   if lblSelection.Caption <> '' then
     sbarStatus.Panels[pnlFILTER].Text := lblSelection.Caption
   else
     sbarStatus.Panels[pnlFILTER].Text := 'Not Filtered ';
   Screen.Cursor := crDefault;
end;


procedure TfrmClientSearch.MakeTitle;
var
  iCtr: integer;
  sSep, sOpr: string;
begin
  // Build the SQL Filter query
  lblSelection.Caption := '';
  sSep := '';

  // Fields in Client related fields group box
  if not varIsNull(cmbClientPartner.EditValue) then
  begin
    if cmbClientPartner.EditValue <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Partner = ' + cmbClientPartner.Text + '(' + cmbClientPartner.EditValue + ')';
      sSep := '. ';
    end;
  end;
  {
  if cbPartner.Text <> '' then
  begin
    lblSelection.Caption := lblSelection.Caption + sSep + 'Partner = ' + TableString('EMPLOYEE', 'CODE', cbPartner.Text, 'NAME') + '(' + cbPartner.Text + ')';
    sSep := '. ';
  end;
  }

  if not varIsNull(cmbClientGender.EditValue) then
  begin
    if cmbClientGender.EditValue <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Gender in ' + cmbClientGender.Text;
      sSep := '. ';
    end;
  end;
  {
  if cbGender.Text <> '' then
  begin
    lblSelection.Caption := lblSelection.Caption + sSep + 'Gender in ' + cbGender.Text;
    sSep := '. ';
  end;
  }

  if chkPacketDeed.Checked = True then
  begin
    lblSelection.Caption := lblSelection.Caption + sSep + 'Client with Packets';
    sSep := '. ';
  end
  else if (edPacket.Text <> '') or (edPacketID.Text <> '') then
  begin
    if (edPacket.Text <> '') then
    begin
        lblSelection.Caption := lblSelection.Caption + sSep + 'Client with Packet ID ' + edPacket.Text;
    end
    else
    begin
        lblSelection.Caption := lblSelection.Caption + sSep + 'Client with Packet Description / Notes ' + edPacketID.Text;
    end;
    sSep := '. ';
  end;
  // End of fields in client related fields group box

  if rbContaining.Checked then
    sOpr := ' containing '
  else
  if rbStarting.Checked then
    sOpr := ' starting with '
  else
    sOpr := ' equals ';

  // Fields in Select group box
  if edSearch.Text <> '' then
  begin
    lblSelection.Caption := lblSelection.Caption + sSep + 'Search Key' + sOpr + edSearch.Text;
    sSep := '. ';
  end;
  if edName.Text <> '' then
  begin
    lblSelection.Caption := lblSelection.Caption + sSep + 'Name' + sOpr + edName.Text;
    sSep := '. ';
  end;
  if edContact.Text <> '' then
  begin
    lblSelection.Caption := lblSelection.Caption + sSep + 'Contact' + sOpr + edContact.Text;
    sSep := '. ';
  end;
  if edClientCode.Text <> '' then
  begin
    lblSelection.Caption := lblSelection.Caption + sSep + 'Code' + sOpr + edClientCode.Text;
    sSep := '. ';
  end;
  // End of fields in select group box

  // Matter related fields
  if not varIsNull(cmbPartner.EditValue) then
  begin
    if String(cmbPartner.EditValue) <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Matter Partner ' + cmbPartner.Text;
      sSep := '. ';
    end;
  end;

  if not varIsNull(cmbController.EditValue) then
  begin
    if String(cmbController.EditValue) <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Matter Controller ' + cmbController.Text;
      sSep := '. ';
    end;
  end;

  if not varIsNull(cmbAuthor.EditValue) then
  begin
    if String(cmbAuthor.EditValue) <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Matter Author ' + cmbAuthor.Text;
      sSep := '. ';
    end;
  end;

  if not varIsNull(cmbOperator.EditValue) then
  begin
    if String(cmbOperator.EditValue) <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Matter Operator ' + cmbOperator.Text;
      sSep := '. ';
    end;
  end;

  if not varIsNull(cmbType.EditValue) then
  begin
    if String(cmbType.EditValue) <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Matter Type ' + cmbType.Text;
      sSep := '. ';
    end;
  end;

  if not varIsNull(cmbBranch.EditValue) then
  begin
    if String(cmbBranch.EditValue) <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Matter Branch ' + cmbBranch.Text;
      sSep := '. ';
    end;
  end;

  if not varIsNull(cmbJurisdiction.EditValue) then
  begin
    if String(cmbJurisdiction.EditValue) <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Matter Jurisdiction ' + cmbJurisdiction.Text;
      sSep := '. ';
    end;
  end;

  if not varIsNull(cmbStatus.EditValue) then
  begin
    if String(cmbStatus.EditValue) <> '' then
    begin
      lblSelection.Caption := lblSelection.Caption + sSep + 'Matter Status '+ cmbStatus.Text;
      sSep := '. ';
    end;
  end;
  // End of matter related fields

  if bUsingGroups then
  begin
    lblSelection.Caption := lblSelection.Caption + sSep + 'Client Groups';
    if rgGroupSelect.ItemIndex = 0 then
      sSep := ' (All): '
    else
      sSep := ' (Any): ';
    for iCtr := 0 to clbGroups.Items.Count - 1 do
      if clbGroups.Items[iCtr].Checked then
      begin
        lblSelection.Caption := lblSelection.Caption + sSep + clbGroups.Items[iCtr].Text;
        sSep := '; ';
      end;
    lblSelection.Caption := lblSelection.Caption + '.';
  end;

end;


procedure TfrmClientSearch.dbgrClientsColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
  sTmp : string;
begin
  SaveConfig := True;
  qryClientList.Close;
  sOrderBy := 'ORDER BY';
  sComma := ' ';
  bFinished := False;
  iCtr := 0;
  while (iCtr < tvdbgrClients.ColumnCount) and (not bFinished) do
  begin
    sTmp := tvdbgrClients.Columns[iCtr].DataBinding.FieldName;
    if tvdbgrClients.Columns[iCtr].DataBinding.FieldName = 'Code' then
      sTmp := 'CLIENTID';
    if tvdbgrClients.Columns[iCtr].DataBinding.FieldName = 'Contact' then
      sTmp := 'CONTACT_NAME';
    if tvdbgrClients.Columns[iCtr].DataBinding.FieldName = 'GenderDesc' then
      sTmp := 'GENDER';
    sOrderBy := sOrderBy + sComma + sTmp;
    if tvdbgrClients.Columns[iCtr].DataBinding.FieldName = 'SEARCH' then
      bFinished := True;
    iCtr := iCtr + 1;
    sComma := ', ';
  end;
  qryClientList.Close;
  qryClientList.SQL.Text := sSQL + sWhereClause + sOrderBy;
  qryClientList.Open;
end;

procedure TfrmClientSearch.FormCreate(Sender: TObject);
var
  iCtr, iTmp: Integer;
  sTmp: string;
  LPacketID: string;
begin
   sWhereClause := '';
   sFromClause := '';

   if dbgrClients.Font.Size <> dmAxiom.GridFont then
      dbgrClients.Font.Size := dmAxiom.GridFont;

   FReturnSelection := nil;
   sSQL := 'SELECT distinct PHONEBOOK.SEARCH, PHONEBOOK.CONTACT_NAME, PHONEBOOK.PARTNER,'+
           'PHONEBOOK.CLIENTID, PHONEBOOK.GENDER, PHONEBOOK.NCLIENT, '+
           'PHONEBOOK.ADDRESS ||'' ''|| PHONEBOOK.SUBURB ||'' ''|| PHONEBOOK.STATE AS ADDRESS,  '+
           'GETGENDER(PHONEBOOK.GENDER) as GENDERDESC, ROW_COLOUR, PHONEBOOK.EMAIL '+
           ' FROM DEBTORSTATUS, PHONEBOOK  ';
   if (SystemString('locale_name') <> '') then
      sSQL := sSQL + ', PHONEBOOK_ENTITY ';

   sOrderBy := ' ORDER BY PHONEBOOK.SEARCH';
   if SystemString('WORDPROC') = 'WORD97' then
      tbtnMerge.ImageIndex := imgWORD
   else if SystemString('WORDPROC') = 'WORDPERFECT8' then
      tbtnMerge.ImageIndex := imgWP;

   { Replaced by LookupComboBox
   StringPopulate(cbGender.Items, 'GENDER', 'CODE');
   StringPopulate(cbPartner.Items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y'' AND ISPARTNER = ''Y''');
   }

   SetDisplayNames;

   rbStarting.OnClick := Nil;
   rbContaining.Checked := SettingLoadInteger('Client Search', 'Containing') = 1;
   rgGroupSelect.ItemIndex := SettingLoadInteger('Client Search', 'GroupSelect');
   rbStarting.Checked := (not rbContaining.Checked);
   rbStarting.OnClick := rbStartingClick;

   // Client related fields
   edSearch.Text := SettingLoadString('Client Search', 'Search');
   edName.Text := SettingLoadString('Client Search', 'Name');
   edContact.Text := SettingLoadString('Client Search', 'Contact');
   edClientCode.Text := SettingLoadString('Client Search', 'Code');

   { Replaced by LookupComboBox
     TONY
   cbPartner.Text := SettingLoadString('Client Search', 'Partner');
   cbGender.Text := SettingLoadString('Client Search', 'Gender');
   }

   cmbFilter.Text := SettingLoadString('Client Search', 'Filter');
   if cmbFilter.Text = '' then
      cmbFilter.ItemIndex := 2;
   
   cmbClientPartner.EditValue := SettingLoadString('Client Search', 'Partner');
   cmbClientGender.EditValue := SettingLoadString('Client Search', 'Gender');
   if SettingLoadString('Client Search', 'PacketDeed') = 'True' then
     chkPacketDeed.Checked := True;

//   edPacketID.Text := SettingLoadString('Client Search', 'PacketID');
   LPacketID := SettingLoadString('Client Search', 'PacketID');
   if LPacketID <> '' then
   begin
      edPacketID.Text := LPacketID;
   end;
   edPacket.Text := SettingLoadString('Client Search', 'Packet');

   // Matter related fields
   cmbPartner.EditValue    := SettingLoadString('Client Search', 'MPartner');
   cmbController.EditValue := SettingLoadString('Client Search', 'MController');
   cmbAuthor.EditValue     := SettingLoadString('Client Search', 'MAuthor');
   cmbOperator.EditValue   := SettingLoadString('Client Search', 'MOperator');
   cmbWorkFlow.EditValue   := SettingLoadString('Client Search', 'MWorkFlow');

   cmbType.EditValue       := SettingLoadString('Client Search', 'MType');
   cmbSubtype.EditValue    := SettingLoadString('Client Search', 'MSubtype');
   cmbBranch.EditValue     := SettingLoadString('Client Search', 'MBranch');
   cmbJurisdiction.EditValue := SettingLoadString('Client Search', 'MJurisdiction');
   cmbStatus.EditValue     := SettingLoadString('Client Search', 'MStatus');

   case SettingLoadInteger('Client Search', 'Lookup') of
     0 : FLookup := luUnassigned;
     1 : FLookup := luSearch;
     2 : FLookup := luCode;
   end;
   btnGroupsRefresh.Click;

   for iCtr := 0 to tvdbgrClients.ColumnCount - 1 do
   begin
     sTmp := SettingLoadString(dmAxiom.UserID, 'CLIENT SEARCH', 'COLUMN' + IntToStr(iCtr));
     if sTmp <> '' then
       tvdbgrClients.Columns[iCtr].DataBinding.FieldName := sTmp;
     sTmp := SettingLoadString(dmAxiom.UserID, 'CLIENT SEARCH', 'COLUMNTITLE' + IntToStr(iCtr));
     if sTmp <> '' then
       tvdbgrClients.Columns[iCtr].Caption := sTmp;
     iTmp := SettingLoadInteger(dmAxiom.UserID, 'CLIENT SEARCH', 'COLUMNWIDTH' + IntToStr(iCtr));
     if iTmp <> 0 then
       tvdbgrClients.Columns[iCtr].Width := iTmp;
   end;

   if SettingLoadBoolean(dmAxiom.UserID, 'CLIENT SEARCH', 'MAXIMIZED') then
     Self.WindowState := wsMaximized
   else
   begin
     iTmp := SettingLoadInteger(dmAxiom.UserID, 'CLIENT SEARCH', 'WIDTH');
     { TONY }
     if iTmp <> 0 then
       Self.Width := iTmp;
     iTmp := SettingLoadInteger(dmAxiom.UserID, 'CLIENT SEARCH', 'HEIGHT');
     if iTmp <> 0 then
       Self.Height := iTmp;
   end;
   if tbClientSearch.Text <> '' then
      edSearch.Text := tbClientSearch.Text;

   if edSearch.Text <> '' then
      tbClientSearch.Text := edSearch.Text;

   SaveFilter := False;
   SaveConfig := False;

//   RefreshSearch := False;
//   if dmAxiom.WANEnabled then
      RefreshSearch  := True;

   qryPartner.Open;
   qryController.Open;
   qryAuthor.Open;
   qryOperator.Open;
   qryType.Open;
   qryBranch.ParamByName('ENTITY').AsString := dmAxiom.Entity;
   qryBranch.Open;
   qryJurisdiction.Open;
   qryStatus.Open;
   qryWorkFlow.Open;
   qryClientGender.Open; 
end;


procedure TfrmClientSearch.tbClientSearchChange(Sender: TObject);
//var
  //iSel : integer;
begin
  tmrSearch.Enabled := true;
  edSearch.Text := tbClientSearch.Text;
{  FLookup := luSearch;
  if tbClientSearch.Text <> '' then
  begin
    iSel := tbClientSearch.SelStart;
    tbClientSearch.Text := FirstCap(tbClientSearch.Text);
    tbClientSearch.SelStart := iSel;
    //qryClientList.Locate('SEARCH', tbClientSearch.Text, [loPartialKey]);
  end;
}
end;

procedure TfrmClientSearch.btnOKClick(Sender: TObject);
begin
//  ReopenListUpdate('CLIENT', qryClientList.FieldByName('NCLIENT').AsString);
//  sLastClient := qryClientList.FieldByName('NCLIENT').AsString;
//   FReturnSelection := qryClientList.GetBookmark;
   ModalResult := mrOK;
end;


function TfrmClientSearch.FindClient(sClient : string) : boolean;
begin
  sLastClient := sClient;
  if not qryClientList.Active then
    MakeSQL;
  Result := qryClientList.Locate('NCLIENT', sClient, []);
end;


procedure TfrmClientSearch.btnGroupsRefreshClick(Sender: TObject);
var
  iCtr : integer;
begin
  // Load the Phonebook groups
  clbGroups.Clear;
  with qryClientGroup do
  begin
    Open;
    iCtr := 0;
    while not EOF do
    begin
      with clbGroups.Items.Add do
      begin
         Text := FieldByName('CATEGORY').AsString;
         if SettingLoadBoolean('Client Search', FieldByName('CATEGORY').AsString) then
            State := cbsChecked
         else
            State := cbsUnchecked;
      end;
      iCtr := iCtr + 1;
      Next;
    end;
    Close;
  end;
end;



procedure TfrmClientSearch.tbCodeChange(Sender: TObject);
begin
  tmrSearch.Enabled := true;
  edClientCode.Text := tbCode.Text;

{  FLookup := luCode;
  if tbCode.Text <> '' then
    qryClientList.Locate('CODE', tbCode.Text, [loPartialKey]);
}
end;

procedure TfrmClientSearch.tbCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN : qryClientList.Next;
    VK_UP : qryClientList.Prior;
  end;
end;

procedure TfrmClientSearch.tbClientSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryClientList.Next;
    VK_UP: qryClientList.Prior;
    VK_NEXT: qryClientList.MoveBy(10);
    VK_PRIOR: qryClientList.MoveBy(-10);
    VK_HOME: qryClientList.First;
    VK_END: qryClientList.Last;
  end;
end;

procedure TfrmClientSearch.tbtnMergeClick(Sender: TObject);
var
  sTmpSQL : string;
begin
   with TfrmWriteMerge.Create(Self) do
   begin
      sTmpSQL := 'SELECT PHONEBOOK.SEARCH, PHONEBOOK.CONTACT_NAME, PHONEBOOK.GENDER, PHONEBOOK.CLIENTID, '+
                 'PHONEBOOK.PARTNER, PHONEBOOK.TITLE, PHONEBOOK.SALUTATION, '+
                 'PHONEBOOK.ADDRESS, PHONEBOOK.SUBURB, PHONEBOOK.STATE, PHONEBOOK.POSTCODE, '+
                 'PHONEBOOK.COUNTRY, PHONEBOOK.NAME, PHONEBOOK.WORKPHONE, PHONEBOOK.FAX, '+
                 'PHONEBOOK.HOMEPHONE, PHONEBOOK.DX, PHONEBOOK.DXLOC, PHONEBOOK.WWW, PHONEBOOK.EMAIL, '+
                 'PHONEBOOK.GIVENNAMES, PHONEBOOK.LASTNAME, PHONEBOOK.ARCHIVED_WHEN, MARKETINDUSTRY.DESCR AS INDUSTRY'+
                 ' FROM MARKETINDUSTRY, DEBTORSTATUS, PHONEBOOK ';
      if (systemstring('locale_name') <> '') then
         sTmpSQL := sTmpSQL + ', PHONEBOOK_ENTITY';

      if sFromClause <> '' then
         sTmpSQL := sTmpSQL + sFromClause;
//    if sWhereClause = '' then
//      sTmpSQL := sTmpSQL + ' WHERE PHONEBOOK.SEARCH = CLIENT.SEARCH'
//    else
      sTmpSQL := sTmpSQL + ' WHERE ' + Copy(sWhereClause, 7, 999) + ' AND PHONEBOOK.INDUSTRYCODE = MARKETINDUSTRY.CODE(+) ';
      SQL := sTmpSQL;
      AddSortField('SEARCH');
      Show;
   end;
end;

procedure TfrmClientSearch.tbtnRefreshClick(Sender: TObject);
begin
  qryClientList.Close;
  qryClientList.Open;
end;

procedure TfrmClientSearch.tbtnClearAllClick(Sender: TObject);
begin
   btnClearAll.Click;
   if(pageSearch.ActivePage = tabGrid) then
      MakeSQL;
end;

procedure TfrmClientSearch.tabGridShow(Sender: TObject);
begin
  case FLookup of
    luUnassigned, luSearch : tbClientSearch.SetFocus;
    luCode : tbCode.SetFocus;
  end;
end;

procedure TfrmClientSearch.tbtnPrintClick(Sender: TObject);
var
  sClientSQL, sTablesSQL: string;
begin
  sTablesSQL := Copy(qryClientList.SQL.Text, 7, Pos('FROM', UpperCase(qryClientList.SQL.Text))-7);
  sClientSQL := StringReplace(qryClientList.SQL.Text, sTablesSQL, ' PHONEBOOK.SEARCH ', [rfReplaceAll, rfIgnoreCase]);
  if Pos('ORDER BY', UpperCase(sClientSQL)) > 0 then
    sClientSQL := Copy(sClientSQL, 1, Pos('ORDER BY', sClientSQL)-1);
  if Pos('GROUP BY', UpperCase(sClientSQL)) > 0 then
    sClientSQL := Copy(sClientSQL, 1, Pos('GROUP BY', sClientSQL)-1) + ') ';
  with qryClientReport do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PHONEBOOK ');
    SQL.Add('WHERE SEARCH IN (');
    SQL.Add(sClientSQL+')');
    SQL.Add('ORDER BY SEARCH');
    Open;
  end;
  rptClient.Print;
//  qrClient.PreviewModal;
end;

procedure TfrmClientSearch.rbStartingClick(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
  cmbFilter.ItemIndex := TRadioButton(Sender).Tag;
end;

procedure TfrmClientSearch.edSearchChange(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.edNameChange(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.edContactChange(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.edClientCodeChange(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
end;
{ Replaced by LookupComboBox
procedure TfrmClientSearch.cbPartnerChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmClientSearch.cbGenderChange(Sender: TObject);
begin
  SaveFilter := True;
end;
}
procedure TfrmClientSearch.rgGroupSelectClick(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmClientSearch.clbGroupsClick(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.FormResize(Sender: TObject);
begin
  SaveConfig := True;
end;

procedure TfrmClientSearch.tmrSearchTimer(Sender: TObject);
begin
  tmrSearch.Enabled := false;
   MakeSQL;
end;

procedure TfrmClientSearch.cmbTypePropertiesChange(Sender: TObject);
begin
  qrySubtype.SQL.Text := 'SELECT code, descr FROM mattersubtype WHERE mattertype = ' + QuotedStr(cmbType.EditValue);
  qrySubtype.SQL.Text := qrySubtype.SQL.Text + ' ORDER BY descr';
  qrySubtype.Open;
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.cxBarEditItem1Click(Sender: TObject);
begin
   MakeSQL();
end;

procedure TfrmClientSearch.cmbPropertiesChange(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.edPacketIDChange(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.edPacketChange(Sender: TObject);
begin
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.setDisplayNames;
var
   imaxLength : integer;
begin
  imaxLength := 0;

  GetLabel(lblPartner,'MATTER','PARTNER',imaxLength);
  GetLabel(lblOperator,'MATTER','OPERATOR',imaxLength);
  GetLabel(lblAuthor,'MATTER','AUTHOR',imaxLength);
  GetLabel(lblController,'MATTER','CONTROLLER',imaxLength);
  GetLabel(lblParaLegal,'MATTER','LAWCLERK',imaxLength);
end;

procedure TfrmClientSearch.chkPacketDeedClick(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked = True then
  begin
    edPacket.Text := '';
    edPacketID.Text := '';
  end;
  SaveFilter := True;
  RefreshSearch := True;
end;

procedure TfrmClientSearch.edPacketIDEnter(Sender: TObject);
begin
  edPacket.Text := '';
  chkPacketDeed.Checked := False;
  SaveFilter := True;
end;

procedure TfrmClientSearch.edPacketEnter(Sender: TObject);
begin
  edPacketID.Text := '';
  chkPacketDeed.Checked := False;
  SaveFilter := True;
end;

procedure TfrmClientSearch.tvdbgrClientsColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   SaveConfig := True;
   qryClientList.Close;
   sOrderBy := ' ORDER BY ';

   if TcxGridDBColumn(AColumn).DataBinding.FieldName = 'SEARCH' then
      sOrderBy := sOrderBy + {'PHONEBOOK.' +} TcxGridDBColumn(AColumn).DataBinding.FieldName
   else if TcxGridDBColumn(AColumn).DataBinding.FieldName = 'CONTACT' then
      sOrderBy := sOrderBy + 'PHONEBOOK.CONTACT_NAME'
   else if TcxGridDBColumn(AColumn).DataBinding.FieldName = 'CODE' then
      sOrderBy := sOrderBy + 'PHONEBOOK.CLIENTID'
   else
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

procedure TfrmClientSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iCtr : integer;
begin
  SettingSave('Client Search', 'Lookup', Ord(FLookup));

  if SaveFilter then
  begin
    if rbContaining.Checked then
      SettingSave('Client Search', 'Containing', 1)
    else
      SettingDelete('Client Search', 'Containing');

    // Client related fields
    SettingSave('Client Search', 'Search', edSearch.Text);
    SettingSave('Client Search', 'Name', edName.Text);
    SettingSave('Client Search', 'Contact', edContact.Text);
    SettingSave('Client Search', 'Code', edClientCode.Text);
    { TONY
    SettingSave('Client Search', 'Partner', cbPartner.Text);
    SettingSave('Client Search', 'Gender', cbGender.Text);
    }
    SettingSave('Client Search', 'Filter', cmbFilter.Text);

    if varIsNull(cmbClientPartner.EditValue) then
      cmbClientPartner.EditValue := '';
    SettingSave('Client Search', 'Partner', String(cmbClientPartner.EditValue));

    if varIsNull(cmbClientGender.EditValue) then
      cmbClientGender.EditValue := '';
    SettingSave('Client Search', 'Gender', String(cmbClientGender.EditValue));

    SettingSave('Client Search', 'PacketDeed', String(chkPacketDeed.EditValue));
    SettingSave('Client Search', 'Packet', String(edPacket.Text));
    SettingSave('Client Search', 'PacketID', String(edPacketID.Text));

    // Matter related fields
    if varIsNull(cmbPartner.EditValue) then
      cmbPartner.EditValue := '';
    SettingSave('Client Search', 'MPartner', String(cmbPartner.EditValue));

    if varIsNull(cmbController.EditValue) then
      cmbController.EditValue := '';
    SettingSave('Client Search', 'MController', String(cmbController.EditValue));

    if varIsNull(cmbAuthor.EditValue) then
      cmbAuthor.EditValue := '';
    SettingSave('Client Search', 'MAuthor', String(cmbAuthor.EditValue));

    if varIsNull(cmbOperator.EditValue) then
      cmbOperator.EditValue := '';
    SettingSave('Client Search', 'MOperator', String(cmbOperator.EditValue));

    if varIsNull(cmbWorkFlow.EditValue) then
      cmbWorkFlow.EditValue := '';
    SettingSave('Client Search', 'MWorkFlow', String(cmbWorkFlow.EditValue));

    if varIsNull(cmbType.EditValue) then
      cmbType.EditValue := '';
    SettingSave('Client Search', 'MType', String(cmbType.EditValue));

    if varIsNull(cmbSubtype.EditValue) then
      cmbSubtype.EditValue := '';
    SettingSave('Client Search', 'MSubtype', String(cmbSubtype.EditValue));

    if varIsNull(cmbBranch.EditValue) then
      cmbBranch.EditValue := '';
    SettingSave('Client Search', 'MBranch', String(cmbBranch.EditValue));

    if varIsNull(cmbJurisdiction.EditValue) then
      cmbJurisdiction.EditValue := '';
    SettingSave('Client Search', 'MJurisdiction', String(cmbJurisdiction.EditValue));

    if varIsNull(cmbStatus.EditValue) then
      cmbStatus.EditValue := '';
    SettingSave('Client Search', 'MStatus', String(cmbStatus.EditValue));

    SettingSave('Client Search', 'GroupSelect', rgGroupSelect.ItemIndex);
    for iCtr := 0 to clbGroups.Items.Count - 1 do
      if clbGroups.Items[iCtr].Checked then
        SettingSave('Client Search', clbGroups.Items[iCtr].Text, True)
      else
        SettingDelete('Client Search', clbGroups.Items[iCtr].Text);
  end;

  if SaveConfig then
  begin
    for iCtr := 0 to tvdbgrClients.ColumnCount - 1 do
    begin
      SettingSave('CLIENT SEARCH', 'COLUMN' + IntToStr(iCtr), tvdbgrClients.Columns[iCtr].DataBinding.FieldName);
      SettingSave('CLIENT SEARCH', 'COLUMNTITLE' + IntToStr(iCtr), tvdbgrClients.Columns[iCtr].Caption);
      SettingSave('CLIENT SEARCH', 'COLUMNWIDTH' + IntToStr(iCtr), tvdbgrClients.Columns[iCtr].Width);
    end;
    if Self.WindowState = wsMaximized then
      SettingSave('CLIENT SEARCH', 'MAXIMIZED', True)
    else
    begin
      SettingDelete('CLIENT SEARCH', 'MAXIMIZED');
      SettingSave('CLIENT SEARCH', 'WIDTH', Self.Width);
      SettingSave('CLIENT SEARCH', 'HEIGHT', Self.Height);
    end;
  end;

  // Free bookmark
  try
    qryClientList.FreeBookmark(FReturnSelection);
  except
     ;
  end;

end;

procedure TfrmClientSearch.tbClientSearchPropertiesChange(Sender: TObject);
begin
   tmrSearch.Enabled := true;
   edSearch.Text := tbClientSearch.Text;
end;

procedure TfrmClientSearch.cmbFilterPropertiesCloseUp(Sender: TObject);
begin
   try
      case TCBItems(cmbfilter.ItemIndex) of
         ciExclude:   rbNone.Checked := True;
         ciEquals:    rbEquals.Checked := True;
         ciContains:  rbContaining.Checked := True;
         ciBegins:    rbStarting.Checked := True;
      end;
   except
      ;
   end;
end;

procedure TfrmClientSearch.cmbFilterPropertiesChange(Sender: TObject);
begin
   SaveFilter := True;
   MakeSQL;
end;

procedure TfrmClientSearch.cbIncludeArchivedClick(Sender: TObject);
begin
   MakeSQL();
end;

procedure TfrmClientSearch.cbProspectiveClientsPropertiesEditValueChanged(
  Sender: TObject);
begin
   if (boolean(cbProspectiveOnly.EditValue) = True) then
      cbProspectiveOnly.EditValue := False;
   MakeSQL;
end;

procedure TfrmClientSearch.cbProspectiveOnlyPropertiesEditValueChanged(
  Sender: TObject);
begin
   if boolean(cbProspectiveClients.EditValue) = True  then
      cbProspectiveClients.EditValue := False;
   MakeSQL;
end;

procedure TfrmClientSearch.tvdbgrClientsCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
   V, C: Variant;
   AColumn, AColourColumn: TcxCustomGridTableItem;
   AColour: integer;
begin
   AColourColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('ROW_COLOUR');
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('SEARCH');
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

procedure TfrmClientSearch.btnPrintGridClick(Sender: TObject);
begin
   try
      ComponentPrinterLink1.Active := True;
      ComponentPrinter.Preview(True, ComponentPrinterLink1);
   finally
      ComponentPrinterLink1.Active := False;
   end;
end;

procedure TfrmClientSearch.btnExp2ExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrClients, True, True,True,'xls');
   end; 
end;

procedure TfrmClientSearch.rptClientBeforePrint(Sender: TObject);
begin
   lblEntity.Caption := dmAxiom.EntityName;
   MakeTitle;
end;

end.

