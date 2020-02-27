unit Creditors;

interface

uses
  Forms, Messages, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxTextEdit, cxCalendar, cxCurrencyEdit, cxCheckBox, cxBlobEdit, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxBar, dxBarDBNav, cxClasses, Vcl.Dialogs, dxPSCore,
  dxPScxCommon, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppModule, raCodMod,
  ppBands, ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, DBAccess, Uni, MemDS, System.ImageList, Vcl.ImgList, Vcl.Controls,
  cxDBLabel, Vcl.StdCtrls, Vcl.DBCtrls, cxDropDownEdit, cxDBEdit, cxMaskEdit,
  cxLabel, Vcl.Mask, NumberLabel, cxSplitter, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, cxImage, System.Classes,
  AxiomData, SysUtils, ppFileUtils, ppIniStorage, Variants, cxGridExportLink, Windows,
  dxScrollbarAnnotations;



const
  UM_CHECK = WM_USER + 10000;

type
  TfrmCreditors = class(TForm)
    ilstToolbar: TImageList;
    qryCreditor: TUniQuery;
    dsCreditor: TUniDataSource;
    qryAccounts: TUniQuery;
    dsAccounts: TUniDataSource;
    qryPhoneBook: TUniQuery;
    dsPhoneBook: TUniDataSource;
    qryDue: TUniQuery;
    qryTransactions: TUniQuery;
    dsTransactions: TUniDataSource;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    qryBankList: TUniQuery;
    dsBankList: TUniDataSource;
    rptCreditorTrans: TppReport;
    plInvoices: TppDBPipeline;
    qryInvoices: TUniQuery;
    dsInvoices: TUniDataSource;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBText6: TppDBText;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    dlFile: TOpenDialog;
    qGender: TUniQuery;
    dsGender: TDataSource;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    SaveDialog1: TSaveDialog;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    popPaySelected: TdxBarButton;
    popPayAll: TdxBarButton;
    popPrintTrialBalance: TdxBarButton;
    popPrintRequisition: TdxBarButton;
    dxBarButton1: TdxBarButton;
    tbtnNew: TdxBarButton;
    tbEdit: TdxBarButton;
    tbtnDelete: TdxBarButton;
    tbtnAccountNew: TdxBarButton;
    tbtnReverse: TdxBarButton;
    tbtnCreditNote: TdxBarButton;
    tbtnPayInvoice: TdxBarButton;
    tbtnFind: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    tbtnMerge: TdxBarButton;
    dxBarButton13: TdxBarButton;
    btnHold: TdxBarButton;
    btnChangeDate: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btnRemoveAttachment: TdxBarButton;
    btnViewAttachment: TdxBarButton;
    dxButtonExportExcel: TdxBarButton;
    dxBarButton4: TdxBarButton;
    tbtnPrev: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavigator1: TdxBarDBNavigator;
    popPrint: TdxBarPopupMenu;
    popPay: TdxBarPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    stySelected: TcxStyle;
    lblName: TLabel;
    lblContact: TLabel;
    lblGender: TLabel;
    lblCreditorGroup: TLabel;
    cbActive: TDBCheckBox;
    dbtbCreditorGroup: TDBEdit;
    cmbGender: TDBLookupComboBox;
    dbtbContact: TDBEdit;
    Label21: TLabel;
    Label11: TLabel;
    dbchkHold: TDBCheckBox;
    Label20: TLabel;
    chkOnlyOwing: TCheckBox;
    dbedTaxno: TDBEdit;
    cbPAY_BY_EFT: TDBCheckBox;
    dbtCreditorCode: TcxDBLabel;
    dbtbCreditorNumber: TcxDBLabel;
    Label26: TLabel;
    DBMemo1: TDBMemo;
    imgDocument: TcxImage;
    pagDetails: TcxPageControl;
    tabAccounts: TcxTabSheet;
    dbgrTransactions: TcxGrid;
    tvTransactions: TcxGridDBTableView;
    tvTransactionsCHART: TcxGridDBColumn;
    tvTransactionsCREATED: TcxGridDBColumn;
    tvTransactionsFILEID: TcxGridDBColumn;
    tvTransactionsOWNER_CODE: TcxGridDBColumn;
    tvTransactionsCHQNO: TcxGridDBColumn;
    tvTransactionsDESCR: TcxGridDBColumn;
    tvTransactionsAMOUNT: TcxGridDBColumn;
    dbgrTransactionsLevel1: TcxGridLevel;
    Panel2: TPanel;
    Label28: TLabel;
    lblTotalSelected: TLabel;
    Label30: TLabel;
    tbSearch: TEdit;
    dbgrInvoices: TcxGrid;
    tvInvoices: TcxGridDBTableView;
    tvInvoicesREFNO: TcxGridDBColumn;
    tvInvoicesACCT: TcxGridDBColumn;
    tvInvoicesINVOICE_DATE: TcxGridDBColumn;
    tvInvoicesDESCR: TcxGridDBColumn;
    tvInvoicesDUE_DATE: TcxGridDBColumn;
    tvInvoicesOWING: TcxGridDBColumn;
    tvInvoicesPaid: TcxGridDBColumn;
    tvInvoicesHeld: TcxGridDBColumn;
    tvInvoicesAMOUNT: TcxGridDBColumn;
    tvInvoicesINVOICE_COPY: TcxGridDBColumn;
    dbgrInvoicesLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    tabBalances: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    neCurrent: TNumberLabel;
    Label4: TLabel;
    neOverdue: TNumberLabel;
    Label23: TLabel;
    neTotalDue: TNumberLabel;
    Label5: TLabel;
    dblblAccountsPayable: TDBText;
    Label6: TLabel;
    dblblAccountsPaid: TDBText;
    Label7: TLabel;
    dblblLastPurchase: TDBText;
    dblblLastPayment: TDBText;
    Label22: TLabel;
    dbtbTerms: TDBEdit;
    dbtbLimit: TDBEdit;
    tabAddress: TcxTabSheet;
    lblPhoneBookKey: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label24: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    dbtbState: TDBEdit;
    dbtbPostcode: TDBEdit;
    dbtbSuburb: TDBEdit;
    dbmmoAddress: TDBMemo;
    dbtbPBTitle: TDBEdit;
    dbtbPBName: TDBEdit;
    dbtbSearchkey: TDBEdit;
    dbtbWorkPhone: TDBEdit;
    dbtbFax: TDBEdit;
    dbtbHomePhone: TDBEdit;
    dbtbDX: TDBEdit;
    dbtbDXLoc: TDBEdit;
    dbmmoNotes: TDBMemo;
    tabBankDetails: TcxTabSheet;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    teAccountName: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    teBSB: TcxDBMaskEdit;
    teAccount: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cmbBank: TcxDBComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    popAmendInvAmt: TdxBarButton;
    dbtbName: TcxDBTextEdit;
    tvInvoicesINCLUDE: TcxGridDBColumn;
    dxbbtnRefresh: TdxBarButton;
    btnPaySearches: TdxBarButton;
    pnlDateSearch: TPanel;
    dtpTo: TDateTimePicker;
    dtpFrom: TDateTimePicker;
    Label25: TLabel;
    Label31: TLabel;
    BitBtn1: TBitBtn;
    procedure tbtnSnapshotClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnAccountNewClick(Sender: TObject);
    procedure tbtnFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagDetailsChange(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure mnuReopen(Sender: TObject);
    procedure qryPhoneBookBeforePost(DataSet: TDataSet);
    procedure qryCreditorAfterScroll(DataSet: TDataSet);
    procedure qryAccountsAfterScroll(DataSet: TDataSet);
    procedure chkOnlyOwingClick(Sender: TObject);
    procedure qryAccountsDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure popGridHoldClick(Sender: TObject);
    procedure qryAccountsAfterInsert(DataSet: TDataSet);
    procedure pagDetailsChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure popPayAllClick(Sender: TObject);
    procedure popPaySelectedClick(Sender: TObject);
    procedure tbtnPayInvoiceClick(Sender: TObject);
    procedure tbtnCreditNoteClick(Sender: TObject);
    procedure popGridHistoryClick(Sender: TObject);
    procedure mnuSearchFindInvoiceClick(Sender: TObject);
    procedure qryCreditorSEARCHChange(Sender: TField);
    procedure tbtnReverseClick(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure popPrintTrialBalanceClick(Sender: TObject);
    procedure popPrintRequisitionClick(Sender: TObject);
    procedure mnuFilePrintTrialBalanceClick(Sender: TObject);
    procedure mnuFilePrintRequisitionClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure qryAccountsBeforeScroll(DataSet: TDataSet);
    procedure qryAccountsBeforeClose(DataSet: TDataSet);
    procedure qryAccountsAfterOpen(DataSet: TDataSet);
    procedure qryTransactionsBeforeOpen(DataSet: TDataSet);
    procedure qryCreditorBeforeScroll(DataSet: TDataSet);
    procedure cbActiveClick(Sender: TObject);
    procedure qryCreditorAfterOpen(DataSet: TDataSet);
    procedure tbSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbSearchChange(Sender: TObject);
    procedure mnuFileMergeClick(Sender: TObject);
    procedure tbEditClick(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure pagDetailsPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxDBMaskEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbPAY_BY_EFTClick(Sender: TObject);
    procedure tvInvoicesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure popChangeInvoiceDueDateClick(Sender: TObject);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btnRemoveAttachmentClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnViewAttachmentClick(Sender: TObject);
    procedure tvInvoicesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure dxButtonExportExcelClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure tvInvoicesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure popAmendInvAmtClick(Sender: TObject);
    procedure popPayPopup(Sender: TObject);
    procedure tvInvoicesINCLUDEPropertiesEditValueChanged(Sender: TObject);
    procedure tvInvoicesFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxbbtnRefreshClick(Sender: TObject);
    procedure btnPaySearchesClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FCreated: integer;
    FLastKey: Word;
    FNCreditor: integer;
    FbFromCreation: boolean;
    procedure NavigateCreditor;
    procedure SetHoldPopup;
    procedure SetButtons;
    procedure InternalDisplayCreditor;
    procedure ViewAttacheInvoice;
    procedure StartScan;
    function Find(var ANCreditor: integer): boolean;
    procedure ChooseCreditorInternal;
  public
    { Public declarations }
//    procedure DisplayCreditor(sCreditor: string);   overload;
    procedure DisplayCreditor(AnCreditor: Integer); overload;
    procedure SetReopenList;
    procedure ChooseCreditor;
    procedure Check(AGridView: TcxGridDBTableView);
    procedure UmCheck(var Message: TMessage); message UM_CHECK;
    property NCreditor: integer read FNCreditor write FNCreditor;
    property bFromCreation: boolean read FbFromCreation write FbFromCreation default false;
  end;

implementation

uses
  AccountNew, CheqReqPrint, Cheque, PhoneBookNew, CreditorSearch,
  Desktop, InvoiceDebitNote, InvoiceReverse, MiscFunc, PostcodeSearch, Reports,
  CreditorAccountsSearch, citfunc, CreditorMerge,
  CreditorMergeProgress, InvoiceChangeDueDate, ShellAPI, InvoiceScan{, InvoiceAmountChange},
  NSearch;

{$R *.DFM}

procedure TfrmCreditors.ChooseCreditorInternal;
var
   LNCreditor: integer;
begin
   try
      if Find(LNCreditor) then
      begin
         NCreditor := LNCreditor;
         DisplayCreditor(LNCreditor);

         if not Self.Visible then
            Self.Show;
      end
      else
         frmCreditorSearch.Release;

      if not qryCreditor.Active then
         Self.Close;
   finally
//      SetReopenList;
      Self.Invalidate;
   end;
end;

procedure TfrmCreditors.ChooseCreditor;
var
   LNCreditor: integer;
begin
   try
      if Find(LNCreditor) then
      begin
         if frmDesktop.pagMainControl.ActivePageIndex = 0 then
             frmDesktop.AddFormToTab(Self, 1);
         NCreditor := LNCreditor;
         DisplayCreditor(LNCreditor);

{         if (frmDesktop.pagMainControl.ActivePageIndex = 0) then
            frmDesktop.fdTab.Tabs[frmDesktop.fdTab.ActiveFormIndex] :=
                  'Creditor: ' + qryCreditor.FieldByName('SEARCH').AsString;
}
         if not Self.Visible then
            Self.Show;
      end
      else
         frmCreditorSearch.Release;

      if not qryCreditor.Active then
         Self.Close;
   finally
      SetReopenList;
      Self.Invalidate;
   end;
end;


function TfrmCreditors.Find(var ANCreditor: integer): boolean;
var
   AResult: boolean;
begin
{   if qryCreditor.Modified then
      qryCreditor.Post;

   if qryPhoneBook.Modified then
      qryPhoneBook.Post;}
   AResult := False;
   if not FormExists(frmCreditorSearch) then
      Application.CreateForm(TfrmCreditorSearch, frmCreditorSearch);
   if (frmCreditorSearch.ShowModal = mrOk) then
   begin
      ANCreditor := frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger;
      AResult := True;
   end;
   Find := AResult;
end;

{procedure TfrmCreditors.DisplayCreditor(sCreditor: string);
begin
   cbActive.OnClick := nil;
   qryCreditor.Close;
   qryCreditor.SQL[2] := 'WHERE trim(SEARCH) = Trim(:P_Search)';
   qryCreditor.ParamByName('P_Search').AsString := sCreditor;
   qryCreditor.Open;
   if qryCreditor.IsEmpty then
      Close
   else
      InternalDisplayCreditor();

   cbActive.OnClick := cbActiveClick;
   if (frmDesktop.pagMainControl.ActivePageIndex = 0) then
     frmDesktop.fdTab.Tabs[frmDesktop.fdTab.ActiveFormIndex] :=
                  'Creditor: ' + qryCreditor.FieldByName('SEARCH').AsString;

   Self.Invalidate;

end;  }

procedure TfrmCreditors.DisplayCreditor(AnCreditor: Integer);
begin
   cbActive.OnClick := nil;
   qryCreditor.Close;
   qryCreditor.Open;
   qryCreditor.Filtered := False;
//   qryCreditor.SQL[2] := 'WHERE NCREDITOR = :NCREDITOR';
   qryCreditor.Filter := 'NCREDITOR = '+IntToStr(AnCreditor);
//   qryCreditor.ParamByName('NCREDITOR').AsInteger := AnCreditor;
   qryCreditor.Filtered := True;
   if qryCreditor.IsEmpty and Self.Visible then
      Close
   else
   begin
      qryCreditor.Refresh;
      InternalDisplayCreditor();
   end;

   cbActive.OnClick := cbActiveClick;

   if qryCreditor.Active then
   begin
      if (frmDesktop.pagMainControl.ActivePageIndex = 0) then
         frmDesktop.pageForms.ActivePage.Caption :=
                  'Creditor: ' + qryCreditor.FieldByName('SEARCH').AsString;
   end;
   if qryCreditor.FieldByName('NCREDITOR').AsInteger = SystemInteger('infotrack_ncreditor') then
   begin
      btnPaySearches.Visible  := ivAlways;
      pnlDateSearch.Visible   := True;
   end
   else
   begin
      btnPaySearches.Visible  := ivNever;
      pnlDateSearch.Visible   := False;
   end;
   Self.Invalidate;
end;

procedure TfrmCreditors.InternalDisplayCreditor();
begin
  Caption := 'Creditor: ' + qryCreditor.FieldByName('SEARCH').AsString;
  ReopenListUpdate('CREDITOR', qryCreditor.FieldByName('NCREDITOR').AsString);

//  ReopenListUpdate('CREDITOR', qryCreditor.FieldByName('SEARCH').AsString);
  SetReopenList;

  if qryCreditor.FieldByName('GENDER').AsString = 'C' then
  begin
    lblName.Caption := 'Company';
    lblContact.Caption := 'Contact';
//    lblGenderDesc.Caption := 'Company';
  end else
  begin
    lblName.Caption := 'Name';
    lblContact.Caption := 'Contact';
  end;

  tabBankdetails.TabVisible := (qryCreditor.FieldByName('PAY_BY_EFT').AsString = 'Y');
  tabBankdetails.Visible := (qryCreditor.FieldByName('PAY_BY_EFT').AsString = 'Y');

  if pagDetails.ActivePage.TabIndex = tabAccounts.PageIndex then
  begin
  // AES 29-11-2011
    qryAccounts.AfterScroll := nil;
//             TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
    qryAccounts.Close;
    qryAccounts.ParamByName('NCREDITOR').AsInteger := qryCreditor.FieldByName('NCREDITOR').AsInteger;
    if chkOnlyOwing.Checked then
        qryAccounts.ParamByName('FILTER').AsInteger := 1
    else
        qryAccounts.ParamByName('FILTER').AsInteger := 0;
    qryAccounts.Open;
    qryAccounts.AfterScroll := qryAccountsAfterScroll;
  end;

  if pagDetails.ActivePage.TabIndex = tabAddress.PageIndex then
  begin
    qryPhoneBook.Close;
    qryPhoneBook.ParamByName('P_Search').AsInteger := qryCreditor.FieldByName('NNAME').AsInteger;
    qryPhoneBook.Open;
    if qryPhoneBook.EOF then
    begin
      qryPhoneBook.Insert;
      qryPhoneBook.FieldByName('NNAME').AsInteger := qryCreditor.FieldByName('NNAME').AsInteger;
      qryPhoneBook.Post;
    end;
  end;
end;

procedure TfrmCreditors.tbtnSnapshotClick(Sender: TObject);
begin
  frmDesktop.AddSnapshot(35, dbtbSearchkey.Text);
end;

procedure TfrmCreditors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryDue.Close;
   qryCreditor.Close;
   qryAccounts.Close;
   qryPhonebook.Close;
   qGender.Close;
   qryBankList.Close;
   RemoveFromDesktop(Self);
end;


procedure TfrmCreditors.tbtnAccountNewClick(Sender: TObject);
var
  LfrmAccountNew: TfrmAccountNew;
begin
   if qryCreditor.Active then
   begin
      if qryCreditor.Modified then
         qryCreditor.Post;
   end;
   LfrmAccountNew := TfrmAccountNew.Create(Self);
   LfrmAccountNew.DisplayCreditor(qryCreditor.FieldByName('NAME').AsString, qryCreditor.FieldByName('NCREDITOR').AsInteger);
//   LfrmAccountNew.DisplayCreditor(qryCreditor.FieldByName('SEARCH').AsString, qryCreditor.FieldByName('NCREDITOR').AsInteger);
   LfrmAccountNew.Show;
end;


procedure TfrmCreditors.tbtnFindClick(Sender: TObject);
begin
   ChooseCreditorInternal;
   dxbbtnRefresh.Click;
   Self.Invalidate;
end;


procedure TfrmCreditors.FormShow(Sender: TObject);
begin
//   Self.Invalidate;

{
  Code Added 17.12.2002 GG

  Add list of Entities to dbcbEntity drop-down list.
}
//   StringPopulate(dbcbEntity.Items, 'ENTITY', 'CODE');

//  tbtnFind.Click;

//   if qryCreditor.Active then
   if bFromCreation = false then
      DisplayCreditor(NCreditor);
end;


procedure TfrmCreditors.pagDetailsChange(Sender: TObject);
begin
  qryAccounts.Close;
  qryPhoneBook.Close;
  qryDue.Close;

  if pagDetails.ActivePage.TabIndex = tabAccounts.PageIndex then
  begin
     // AES 29-11-2011
    qryAccounts.AfterScroll := nil;
    qryAccounts.ParamByName('NCREDITOR').AsInteger := qryCreditor.FieldByName('NCREDITOR').AsInteger;
    if chkOnlyOwing.Checked then
      qryAccounts.ParamByName('FILTER').AsInteger := 1
    else
      qryAccounts.ParamByName('FILTER').AsInteger := 0;
    qryAccounts.Open;
    qryAccounts.AfterScroll := qryAccountsAfterScroll;
  end;

  if (pagDetails.ActivePage.TabIndex = tabBalances.PageIndex) then
  begin
    qryDue.SQL.Clear;
    qryDue.SQL.Add('SELECT SUM(OWING) AS SUM_OWING FROM INVOICE WHERE NCREDITOR = :NCREDITOR AND DUE_DATE >= :P_Today AND OWING <> 0');
    qryDue.ParamByName('NCREDITOR').AsInteger := qryCreditor.FieldByName('NCREDITOR').AsInteger;
    qryDue.ParamByName('P_Today').AsDate := Date;
    qryDue.Open;
    if not qryDue.EOF then
      neCurrent.AsCurrency := qryDue.FieldByName('SUM_OWING').AsCurrency
    else
      neCurrent.AsCurrency := 0.0;

    qryDue.Close;
    qryDue.SQL.Clear;
    qryDue.SQL.Add('SELECT SUM(OWING) AS SUM_OWING FROM INVOICE WHERE NCREDITOR = :NCREDITOR AND DUE_DATE < :P_Today AND OWING <> 0');
    qryDue.ParamByName('NCREDITOR').AsInteger := qryCreditor.FieldByName('NCREDITOR').AsInteger;
    qryDue.ParamByName('P_Today').AsDate := Date;
    qryDue.Open;
    if not qryDue.EOF then
      neOverdue.AsCurrency := qryDue.FieldByName('SUM_OWING').AsCurrency
    else
      neOverdue.AsCurrency := 0.0;
    qryDue.Close;

    neTotalDue.AsCurrency := neCurrent.AsCurrency + neOverdue.AsCurrency;
  end;

  if (pagDetails.ActivePage.TabIndex = tabAddress.PageIndex) then
  begin
    qryPhoneBook.ParamByName('NNAME').AsString := qryCreditor.FieldByName('NNAME').AsString;
    qryPhoneBook.Open;
  end; 

end;


procedure TfrmCreditors.tbtnFirstClick(Sender: TObject);
begin
  if qryCreditor.Modified then
    qryCreditor.Post;
  if qryPhoneBook.Modified then
    qryPhoneBook.Post;
  frmCreditorSearch.qryCreditors.First;
  NavigateCreditor;
end;


procedure TfrmCreditors.tbtnPrevClick(Sender: TObject);
begin
  if qryCreditor.Modified then
    qryCreditor.Post;
  if qryPhoneBook.Modified then
    qryPhoneBook.Post;
  frmCreditorSearch.RefreshSearch(qryCreditor.FieldByName('SEARCH').AsString);
  frmCreditorSearch.qryCreditors.Prior;
  NavigateCreditor;
end;


procedure TfrmCreditors.tbtnNextClick(Sender: TObject);
begin
  if qryCreditor.Modified then
    qryCreditor.Post;
  if qryPhoneBook.Modified then
    qryPhoneBook.Post;
  frmCreditorSearch.RefreshSearch(qryCreditor.FieldByName('SEARCH').AsString);
  frmCreditorSearch.qryCreditors.Next;
  NavigateCreditor;
end;


procedure TfrmCreditors.tbtnLastClick(Sender: TObject);
begin
  if qryCreditor.Modified then
    qryCreditor.Post;
  if qryPhoneBook.Modified then
    qryPhoneBook.Post;
  frmCreditorSearch.qryCreditors.Last;
  NavigateCreditor;
end;


procedure TfrmCreditors.NavigateCreditor;
begin
   NCreditor := frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger;
   DisplayCreditor(NCreditor);
end;


procedure TfrmCreditors.tbtnNewClick(Sender: TObject);
var
  LfrmCreditorNew: TfrmPhoneBookNew;
begin
//  if not FormExists(frmPhoneBookSearch) then
//    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
//  frmPhoneBookSearch.SelectingCreditors := True;
//  if(frmPhoneBookSearch.ShowModal() = mrOk) then
//  begin
     LfrmCreditorNew := TfrmPhoneBookNew.Create(Self);
     try
       LfrmCreditorNew.SetupForCreditor(0);
       LfrmCreditorNew.NewClient := False;
       if (LfrmCreditorNew.ShowModal = mrOK) then
       begin
         SetReopenList;
         if Assigned(frmCreditorSearch) = True then
            frmCreditorSearch.RefreshSearch(LfrmCreditorNew.Search);
         DisplayCreditor(LfrmCreditorNew.NCreditor);
       end;
    finally
       LfrmCreditorNew.Free;
     end;
//  end;
end;


procedure TfrmCreditors.SetReopenList;
var
  iCtr : integer;
begin
//  ReopenListSet('CREDITOR', mnuFileReopen);
//  For iCtr := 0 to mnuFileReopen.Count - 1 do
//    mnuFileReopen.Items[iCtr].OnClick := mnuReopen;

end;


procedure TfrmCreditors.mnuReopen(Sender: TObject);
begin
//  DisplayCreditor(Copy((Sender as TMenuItem).Caption, 1, Pos(' ', (Sender as TMenuItem).Caption)-1));  //   (Sender as TMenuItem).Caption);
end;


procedure TfrmCreditors.qryPhoneBookBeforePost(DataSet: TDataSet);
begin
  SuburbSave(dbtbSuburb.Text, dbtbState.Text, dbtbPostcode.Text);
end;


procedure TfrmCreditors.qryCreditorAfterScroll(DataSet: TDataSet);
begin
//  tbtnLast.Enabled        := not frmCreditorSearch.qryCreditors.EOF;
//  mnuSearchLast.Enabled   := not frmCreditorSearch.qryCreditors.EOF;
//  tbtnNext.Enabled        := not frmCreditorSearch.qryCreditors.EOF;
//  mnuSearchNext.Enabled   := not frmCreditorSearch.qryCreditors.EOF;
//  tbtnFirst.Enabled       := not frmCreditorSearch.qryCreditors.BOF;
//  mnuSearchFirst.Enabled  := not frmCreditorSearch.qryCreditors.BOF;
//  tbtnPrev.Enabled        := not frmCreditorSearch.qryCreditors.BOF;
//  mnuSearchPrev.Enabled   := not frmCreditorSearch.qryCreditors.BOF;

//  cbActive.Checked:= qryCreditor.FieldByName('ACTIVE').AsString = 'Y';
{
  Removed 18.01.2003 GG

  This has been moved to qryAccountsAfterOpen

  SetButtons;
}
//  pagDetails.OnChange(Self);
end;


procedure TfrmCreditors.qryAccountsAfterScroll(DataSet: TDataSet);
begin
  SetHoldPopup;
  if qryAccounts.Active then
     qryTransactions.Open
end;

procedure TfrmCreditors.SetHoldPopup;
begin

end;

procedure TfrmCreditors.chkOnlyOwingClick(Sender: TObject);
begin
   qryAccounts.Close;
   qryAccounts.SQL.Clear;
   qryAccounts.SQL.Add('SELECT NCHEQUE, ROWID, TRUNC(INVOICE_DATE) AS INVOICE_DATE,');
   qryAccounts.SQL.Add('AMOUNT, OWING, ACCT, REFNO, DESCR,');
   qryAccounts.SQL.Add('TRUNC(DUE_DATE) AS DUE_DATE, HOLD, NINVOICE, INVOICE_COPY, INVOICE_COPY_EXT, ');
   qryAccounts.SQL.Add('(amount - owing) AS paid, CASE WHEN (hold = ''Y'') THEN ''Held'' ELSE NULL END AS held  ');
   qryAccounts.SQL.Add('FROM INVOICE');
   qryAccounts.SQL.Add('WHERE NCREDITOR = :NCREDITOR AND ');
   qryAccounts.SQL.Add('case when ((:filter = 1) and (OWING <> 0)) then 1 ');
   qryAccounts.SQL.Add('     when (:filter = 0) then 1 ');
   qryAccounts.SQL.Add('     else 0 end = 1 ');
   qryAccounts.SQL.Add('ORDER BY DUE_DATE DESC');

   pagDetails.OnChange(Self);
end;

procedure TfrmCreditors.qryAccountsDESCRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryAccounts.FieldByName('DESCR').AsString;
end;

procedure TfrmCreditors.FormActivate(Sender: TObject);
begin
   Self.Invalidate;
end;

procedure TfrmCreditors.popGridHoldClick(Sender: TObject);
begin
   if not qryAccounts.IsEmpty then
   begin
      qryAccounts.Edit;
      if qryAccounts.FieldByName('HOLD').AsString = 'Y' then
         qryAccounts.FieldByName('HOLD').AsString := 'N'
      else
         qryAccounts.FieldByName('HOLD').AsString := 'Y';
      qryAccounts.ApplyUpdates;
//    qryAccounts.Post;
      qryAccounts.AfterScroll := nil;
      qryAccounts.Close;
      qryAccounts.Open;
      qryAccounts.AfterScroll := qryAccountsAfterScroll;
  end;
  SetHoldPopup;
end;

procedure TfrmCreditors.qryAccountsAfterInsert(DataSet: TDataSet);
begin
  qryAccounts.Delete;
end;

procedure TfrmCreditors.pagDetailsChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if pagDetails.ActivePage = tabAddress then
  begin
    if qryPhonebook.Modified then
      qryPhonebook.Post;
  end;
end;

procedure TfrmCreditors.popPayAllClick(Sender: TObject);
var
  frmCheque: TfrmCheque;
begin
   try
      frmCheque := TfrmCheque.Create(Self);

      tvInvoices.BeginUpdate();
      qryAccounts.First;
      while not qryAccounts.EOF do
      begin
         if (qryAccounts.FieldByName('OWING').AsFloat <> 0) and (qryAccounts.FieldByName('HOLD').AsString <> 'Y') then
            frmCheque.ChequeFromInvoice(qryAccounts.FieldByName('NINVOICE').AsInteger);
         qryAccounts.Next;
      end;
   finally
      tvInvoices.EndUpdate;
      frmCheque.Show;
   end;
end;

procedure TfrmCreditors.popPayPopup(Sender: TObject);
begin
   if (qryAccounts.IsEmpty = True) or
      (qryAccounts.FieldByName('OWING').AsFloat = 0) then
   begin
      popPaySelected.Enabled := False;
      popPayAll.Enabled := False;
      popAmendInvAmt.Enabled := False;
   end
   else
   begin
      popPaySelected.Enabled := True;
      popPayAll.Enabled := True;
      popAmendInvAmt.Enabled := True;
   end

end;

procedure TfrmCreditors.popPaySelectedClick(Sender: TObject);
var
  frmCheque: TfrmCheque;
  iCtr: integer;
  ARowIndex: integer;
begin
   // Automatically post the selected items
   frmCheque := TfrmCheque.Create(Self);

   for iCtr := 0 to tvInvoices.Controller.SelectedRowCount - 1 do
   begin
 //    dbgrInvoices.DataSource.DataSet.GotoBookmark(Pointer(dbgrInvoices.SelectedRows.Items[iCtr]));
      ARowIndex := tvInvoices.DataController.GetSelectedRowIndex(iCtr);
      tvInvoices.ViewData.Records[ARowIndex].Focused  := True;
      if ((qryAccounts.FieldByName('OWING').AsFloat <> 0) and
         (qryAccounts.FieldByName('HOLD').AsString <> 'Y')) then
         frmCheque.ChequeFromInvoice(qryAccounts.FieldByName('NINVOICE').AsInteger);
   end;

   // MGD 30/9/02 - if none selected, dont show.....
   if(tvInvoices.Controller.SelectedRowCount > 0) then
      frmCheque.Show()
   else
      frmCheque.Close();
end;

procedure TfrmCreditors.tbtnPayInvoiceClick(Sender: TObject);
begin
  popPaySelected.Click;
end;

procedure TfrmCreditors.tbtnCreditNoteClick(Sender: TObject);
begin
  TfrmInvoiceDebit.Create(Self).DisplayCreditor(Self.qryCreditor.FieldByName('NCREDITOR').AsInteger);
end;

procedure TfrmCreditors.popGridHistoryClick(Sender: TObject);
begin
{
  Code modified 22.01.2003 GG

  This should also search on ACCT (Entity), as there is the possibility that a
  cheque number will be common across entities.

  TfrmRptInvoiceHistory.Create(Self).ShowHistory(qryAccounts.FieldByName('NCHEQUE').AsInteger);
}
//  TfrmRptInvoiceHistory.Create(Self).ShowHistory(qryAccounts.FieldByName('ACCT').AsString, qryAccounts.FieldByName('NCHEQUE').AsInteger);
end;

procedure TfrmCreditors.mnuSearchFindInvoiceClick(Sender: TObject);
var
  LfrmCreditorAccountsSearch: TfrmCreditorAccountsSearch;
begin
  LfrmCreditorAccountsSearch := TfrmCreditorAccountsSearch.Create(Self);
  try
    LfrmCreditorAccountsSearch.tbCreditor.Text:= qryCreditor.FieldByName('NAME').AsString;

    if(LfrmCreditorAccountsSearch.ShowModal = mrOK) then
      DisplayCreditor(LfrmCreditorAccountsSearch.qryAccounts.FieldByName('NCREDITOR').AsInteger);
  finally
    LfrmCreditorAccountsSearch.Free
  end
end;

procedure TfrmCreditors.qryCreditorSEARCHChange(Sender: TField);
begin
  if not qryPhonebook.Modified then
    qryPhonebook.Edit;
  qryPhonebook.FieldByName('SEARCH').AsString := qryCreditor.FieldByName('SEARCH').AsString;
end;

procedure TfrmCreditors.tbtnReverseClick(Sender: TObject);
var
  LfrmInvoiceReverse: TfrmInvoiceReverse;
  lRet: integer;
begin
   if not qryAccounts.IsEmpty then
   begin
      if qryAccounts.FieldByName('OWING').AsFloat = qryAccounts.FieldByName('AMOUNT').AsFloat then
      begin
         if MsgAsk('Do you want to reverse Invoice ' + qryAccounts.FieldByName('REFNO').AsString + '?') = mrYes then
         begin
            try
               LfrmInvoiceReverse := TfrmInvoiceReverse.Create(Self);
               LfrmInvoiceReverse.DisplayInvoice(Self.qryAccounts.FieldByName('NINVOICE').AsInteger);
               lRet := LfrmInvoiceReverse.ShowModal;
               if lRet = mrOk then
               begin
                  qryTransactions.Close;
                  qryAccounts.AfterScroll := nil;
                  qryAccounts.Refresh;
                  qryAccounts.AfterScroll := qryAccountsAfterScroll;
               end;
            finally
               LfrmInvoiceReverse.Free;
            end;
         end;
      end else
         MsgErr('There have been payments on this Invoice.' + #13 + #13 + 'You will need to issue a credit note if you want to reduce the amount owing.');
   end;
end;

procedure TfrmCreditors.tbtnPrintClick(Sender: TObject);
begin
  popPrintTrialBalance.Click;
end;

procedure TfrmCreditors.popPrintTrialBalanceClick(Sender: TObject);
var
   LfrmReports: TfrmReports;
begin
   if frmDesktop.pagMainControl.ActivePageIndex = 0 then
   begin
      LfrmReports := TfrmReports.Create(Self);
      LfrmReports.LaunchReport('Creditors Trial Balance');
   end
   else
      TfrmReports(FindorCreateClassic(TfrmReports, 15)).LaunchReport('Creditors Trial Balance')
end;

procedure TfrmCreditors.popPrintRequisitionClick(Sender: TObject);
var
  LfrmCheqReqPrint: TfrmCheqReqPrint;
begin
  LfrmCheqReqPrint := TfrmCheqReqPrint.Create(Self);
  LfrmCheqReqPrint.PrintInvoice(Self.qryAccounts.FieldByName('NCHEQUE').AsInteger);
end;

procedure TfrmCreditors.mnuFilePrintTrialBalanceClick(Sender: TObject);
begin
  popPrintTrialBalance.Click;
end;

procedure TfrmCreditors.mnuFilePrintRequisitionClick(Sender: TObject);
begin
  popPrintRequisition.Click;
end;

procedure TfrmCreditors.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCreditors.tbtnDeleteClick(Sender: TObject);
begin
  // mgd 3/10/02 - added delete button..
  // musnt delete any with invoices or creditor notes.
{
  Modified 3.12.2002 GG

  Cannot delete a creditor if it is active, too.
}
  if (qryCreditor.State = dsInsert) or
     (qryCreditor.State = dsEdit) then
    qryCreditor.Post;

  if TableString('CREDITOR', 'NCREDITOR', qryCreditor.FieldByName('NCREDITOR').AsString, 'ACTIVE') = 'Y' then
    MessageDlg('This creditor is Active, so it can not be deleted.', mtInformation, [mbOK], 0)
  else if(TableInteger('INVOICE','NCREDITOR',qryCreditor.FieldByName('NCREDITOR').AsString,'NINVOICE') <> 0) then
    MessageDlg('There are invoices for this creditor so it can not be deleted.', mtInformation, [mbOK], 0)
  else if(Trim(TableString('CREDITORNOTES','NCREDITOR',qryCreditor.FieldByName('NCREDITOR').AsString,'NOTES')) <> '') then
    MessageDlg('There are creditor notes for this creditor so it can not be deleted.', mtInformation, [mbOK], 0)
  else
  begin
    MessageBeep(MB_ICONQUESTION);
    if MessageDlg('Are you sure you want to delete the creditor ''' + qryCreditor.FieldByName('NAME').AsString + '''?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      qryCreditor.Delete();
      tbtnPrev.Click();
    end;
  end;
end;

procedure TfrmCreditors.qryAccountsBeforeScroll(DataSet: TDataSet);
begin
  qryTransactions.Close;
end;

procedure TfrmCreditors.qryAccountsBeforeClose(DataSet: TDataSet);
begin
  qryTransactions.Close
end;

procedure TfrmCreditors.qryAccountsAfterOpen(DataSet: TDataSet);
begin
{ Added 16.01.2003 GG

  Set the buttons
}
  SetButtons;

//  qryTransactions.Open
end;

procedure TfrmCreditors.qryTransactionsBeforeOpen(DataSet: TDataSet);
begin
//  qryTransactions.ParamByName('ACCT').AsString:= qryAccounts.FieldByName('ACCT').AsString;
  qryTransactions.ParamByName('NINVOICE').AsInteger:= qryAccounts.FieldByName('NINVOICE').AsInteger;
end;

procedure TfrmCreditors.qryCreditorBeforeScroll(DataSet: TDataSet);
begin
  if (qryCreditor.State = dsInsert) or
     (qryCreditor.State = dsEdit) then
    qryCreditor.Post;
end;

procedure TfrmCreditors.cbActiveClick(Sender: TObject);
var
  InvoiceCount: Integer;
  qryInvoices: TUniQuery;
  PostOnChange: Boolean;
  msg: string;
begin
  PostOnChange:= False;
  if not cbActive.Checked then
  begin
    // find out if the state was previously Active
    if qryCreditor.FieldByName('ACTIVE').AsString = 'Y' then
    begin
      // if previously active, and now inactive, check if there are any outstanding invoices or invoice history
      qryInvoices:= TUniQuery.Create(Self);
      qryInvoices.Connection:= dmAxiom.uniInsight;
      try
        qryInvoices.SQL.Clear;
        qryInvoices.SQL.Add('SELECT COUNT(*) AS INVOICES');
        qryInvoices.SQL.Add('FROM INVOICE');
        qryInvoices.SQL.Add('WHERE NCREDITOR = :NCREDITOR');
        qryInvoices.ParamByName('NCREDITOR').AsInteger:=
          qryCreditor.FieldByName('NCREDITOR').AsInteger;
        qryInvoices.Open;
        InvoiceCount:= qryInvoices.FieldByName('INVOICES').AsInteger;
        qryInvoices.Close;

      finally
        qryInvoices.Free
      end;

      if InvoiceCount > 0 then
      begin
        // if so, disallow this change in status, unless the user is authorised,
        // and agrees that this is what they want to do
        if dmAxiom.Security.Creditor.Activate then
        begin
          msg:= 'This Creditor has outstanding or historical Invoices.' + #13#10 +
                'De-activating this Creditor means that you won''t be able to pay outstanding invoices.' + #13#10#13#10 +
                'Do you really want to De-activate this Creditor?';
          if MessageDlg(msg, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
          begin
            // Write the change to the database
            if qryCreditor.State = dsBrowse then
            begin
              qryCreditor.Edit;
              PostOnChange:= True
            end;
            qryCreditor.FieldByName('ACTIVE').AsString:= 'N';
            if PostOnChange then
            begin
              qryCreditor.Post;
              DisplayCreditor(qryCreditor.FieldByName('NCREDITOR').AsInteger)
            end
          end
          else
            cbActive.Checked:= True;
        end
        else
        begin
          MessageDlg('You are not authorised to De-activate this Creditor.', mtError, [mbOK], 0);
          cbActive.Checked:= True
        end
      end
      else
      begin
        // Write the change to the database
        if qryCreditor.State = dsBrowse then
        begin
          qryCreditor.Edit;
          PostOnChange:= True
        end;
        qryCreditor.FieldByName('ACTIVE').AsString:= 'N';
        if PostOnChange then
        begin
          qryCreditor.Post;
          DisplayCreditor(qryCreditor.FieldByName('NCREDITOR').AsInteger)
        end
      end
    end
  end
  else
  begin
    // find out if the state was previously Active
    if qryCreditor.FieldByName('ACTIVE').AsString <> 'Y' then
    begin
      // state was inactive, and now this creditor is being re-activated
      // this can only be done with authority
      if dmAxiom.Security.Creditor.Activate then
      begin
        if qryCreditor.State = dsBrowse then
        begin
          qryCreditor.Edit;
          PostOnChange:= True
        end;
        qryCreditor.FieldByName('ACTIVE').AsString:= 'Y';
        if PostOnChange then
        begin
          qryCreditor.Post;
          DisplayCreditor(qryCreditor.FieldByName('NCREDITOR').AsInteger)
        end
      end
      else
      begin
        MessageDlg('You are not authorised to Activate this Creditor.', mtError, [mbOK], 0);
        cbActive.Checked:= False
      end
    end
  end
end;

procedure TfrmCreditors.SetButtons;
begin
  // set the buttons based on security settings
  tbtnNew.Enabled:= dmAxiom.Security.Creditor.Create;
  tbtnDelete.Enabled:= (dmAxiom.Security.Creditor.Delete and
                       (qryCreditor.FieldByName('ACTIVE').AsString = 'Y'));
  dbtbName.Properties.ReadOnly := dmAxiom.Security.Creditor.Edit;
  dbtbContact.Enabled:= dmAxiom.Security.Creditor.Edit;
  cmbGender.Enabled:= dmAxiom.Security.Creditor.Edit;
  dbtbCreditorGroup.Enabled:= dmAxiom.Security.Creditor.Edit;
  cbActive.Enabled:= dmAxiom.Security.Creditor.Edit and
                     dmAxiom.Security.Creditor.Activate;
  dbchkHold.Enabled:= dmAxiom.Security.Creditor.Edit;
  // 31/05/2004 Tony - disabled the chart code field and made invisible
  // dbtbChartCode.Enabled:= dmAxiom.Security.Creditor.Edit;
  dbedTaxno.Enabled:= dmAxiom.Security.Creditor.Edit;

  tvInvoices.OptionsData.Editing := dmAxiom.Security.Creditor.Edit;

  dbtbTerms.Enabled:= dmAxiom.Security.Creditor.Edit;
  dbtbLimit.Enabled:= dmAxiom.Security.Creditor.Edit;

  dbtbSearchkey.Enabled:= dmAxiom.Security.Creditor.Edit;
  dbtbPBName.Enabled:= dmAxiom.Security.Creditor.Edit;
  dbtbPBTitle.Enabled:= dmAxiom.Security.Creditor.Edit;
  dbmmoAddress.Enabled:= dmAxiom.Security.Creditor.Edit;

  tbEdit.Enabled := dmAxiom.Security.Creditor.Edit;

{
  Code modified 18.12.2002 GG

  For now, TC entity is not a concern

  tbtnAccountNew.Enabled:= dmAxiom.Security.Invoice.Create and
                           (qryCreditor.FieldByName('ACTIVE').AsString = 'Y') and
                           (qryCreditorENTITY.AsString = dmAxiom.Entity);
}
  tbtnAccountNew.Enabled:= dmAxiom.Security.Invoice.Create and
                           (qryCreditor.FieldByName('ACTIVE').AsString = 'Y');

  tbtnReverse.Enabled:= (dmAxiom.Security.Invoice.Reverse and
                        (qryCreditor.FieldByName('ACTIVE').AsString = 'Y') and
  //                      (qryAccounts.FieldByName('ACCT').AsString = dmAxiom.Entity) and
                        (TableString('ALLOC','NINVOICE', qryAccounts.FieldByName('NINVOICE').AsInteger, 'NMEMO') = '')) ;

{
  Code modified 18.12.2002 GG

  For now, TC entity is not a concern

  tbtnCreditNote.Enabled:= dmAxiom.Security.Invoice.CreditNote and
                           (qryCreditor.FieldByName('ACTIVE').AsString = 'Y') and
                           (qryCreditorENTITY.AsString = dmAxiom.Entity);
}

  tbtnCreditNote.Enabled:= dmAxiom.Security.Invoice.CreditNote and
                           (qryCreditor.FieldByName('ACTIVE').AsString = 'Y');

  tbtnPayInvoice.Enabled:= dmAxiom.Security.Cheque.Create and
                           (qryCreditor.FieldByName('ACTIVE').AsString = 'Y');
//                            and (qryAccounts.FieldByName('ACCT').AsString = dmAxiom.Entity);

  tbtnMerge.Enabled:= dmAxiom.Security.Creditor.Merge and
                      (qryCreditor.FieldByName('ACTIVE').AsString = 'Y');
end;

procedure TfrmCreditors.qryCreditorAfterOpen(DataSet: TDataSet);
begin
{
  Removed 18.01.2003 GG

  This has been moved to qryAccountsAfterOpen

  SetButtons;
}
end;

procedure TfrmCreditors.tbSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN : qryAccounts.Next;
    VK_UP : qryAccounts.Prior;
  end;
end;

procedure TfrmCreditors.tbSearchChange(Sender: TObject);
begin
  if tbSearch.Text <> '' then
    qryAccounts.Locate('REFNO', tbSearch.Text, [loPartialKey]);
end;

procedure TfrmCreditors.mnuFileMergeClick(Sender: TObject);
var
  frmCreditorMerge: TfrmCreditorMerge;
  msg: string;
begin
  // merge this creditor with another creditor
  frmCreditorMerge:= TfrmCreditorMerge.Create(Self);
  try
    frmCreditorMerge.NCreditor:= qryCreditor.FieldByName('NCREDITOR').AsInteger;
    if frmCreditorMerge.CreditorFound then
    begin
      frmCreditorMerge.ShowModal;
      if frmCreditorMerge.ModalResult = mrOK then
      begin
        msg:= 'This process is irreversible.  Are you sure that this is what you want to do?';
        if MessageDlg(msg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          frmCreditorMergeProgress:= TfrmCreditorMergeProgress.Create(Self);
          msg:= Format('Processing Creditor Merge from Creditor #%d into Creditor #%d',
                       [qryCreditor.FieldByName('NCREDITOR').AsInteger,
                        frmCreditorMerge.MergingNCreditor]);

          if frmCreditorMergeProgress.DoCreditorMerge(msg,
                                                      qryCreditor.FieldByName('NCREDITOR').AsInteger,
                                                      frmCreditorMerge.MergingNCreditor) then
            MessageDlg('Merge completed', mtInformation, [mbOK], 0)
          else
            MessageDlg('Merge failed', mtError, [mbOK], 0);
        end
        else
          MessageDlg('Cancelled Merge request', mtInformation, [mbOK], 0);
      end
      else
        MessageDlg('Cancelled Merge request', mtInformation, [mbOK], 0);
    end
  finally
    frmCreditorMerge.Free
  end
end;

procedure TfrmCreditors.tbEditClick(Sender: TObject);
var
  LForm: TfrmPhoneBookNew;
begin
   LForm := TfrmPhoneBookNew.Create(Self);
   try
      LForm.SetupForCreditor(qryCreditor.FieldByName('ncreditor').AsInteger);
      LForm.bDoShow := True;
      if LForm.ShowModal() = mrOk then
      begin
         frmCreditorSearch.RefreshSearch(LForm.Search);
         DisplayCreditor(LForm.NCreditor);
      end;
  finally
    FreeAndNil(LForm);
  end;
end;

procedure TfrmCreditors.ToolButton6Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmCreditors.pagDetailsPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if pagDetails.ActivePage = tabAddress then
  begin
    if qryPhonebook.Modified then
      qryPhonebook.Post;
  end;
end;

procedure TfrmCreditors.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);
   
   FCreated := 0;
   qryBankList.Close;
   qryBankList.ParamByName('Entity').AsString := dmAxiom.Entity;
   qryBankList.Open;
   qGender.Open;
   qryCreditor.Open;
end;

procedure TfrmCreditors.cxDBMaskEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   ErrorText := 'A valid B.S.B. format is 999-999. Please re-enter.';
end;

procedure TfrmCreditors.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
   sTmp: String;
begin
   sTmp := '';
   if cbPAY_BY_EFT.Checked then
   begin
//      if VarIsNull(cmbBank.EditValue) or (cmbBank.EditValue = '') then
//         sTmp := '       Bank must be selected.' + #13;
      if teAccountName.Text = '' then
         sTmp := sTmp + '       Account name must be entered.' + #13;
      if teBSB.Text = '' then
         sTmp := sTmp + '       B.S.B. must be entered.' + #13;
      if teAccount.Text = '' then
         sTmp := sTmp + '       Account number must be entered.' + #13;

      if sTmp <> '' then
      begin
         CanClose := False;
         MsgInfo('Please complete the following Creditor details before closing:    ' + #13#13 + sTmp);
      end
      else
      begin
         if(qryCreditor.Modified) or (qryCreditor.State = dsEdit) then
         begin
            if MsgAsk('There are unsaved changes. Do you want to save them?') = mrYes then
               qryCreditor.Post
            else
               qryCreditor.Cancel;
         end;
         CanClose := True;
//         RemoveFromDesktop(Self);
      end;
   end
   else
   begin
      if(qryCreditor.Modified) or (qryCreditor.State = dsEdit) then
      begin
         if MsgAsk('There are unsaved changes. Do you want to save them?') = mrYes then
            qryCreditor.Post
         else
            qryCreditor.Cancel;
      end;
      CanClose := True;
//      RemoveFromDesktop(Self);
   end;
end;

procedure TfrmCreditors.cbPAY_BY_EFTClick(Sender: TObject);
begin
   if pagDetails.ActivePageIndex = 3 then
      pagDetails.ActivePageIndex := 0;

//   pagDetails.ActivePage := tabBankDetails;
   tabBankdetails.TabVisible := cbPAY_BY_EFT.Checked;
   tabBankdetails.Visible := cbPAY_BY_EFT.Checked;
end;

procedure TfrmCreditors.tvInvoicesCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   SetButtons;
   if (TcxCustomGridTableView(Sender).DataController.FocusedRowIndex = 0) then
   begin
      if qryAccounts.Active then
         qryTransactions.Open
   end;
end;

procedure TfrmCreditors.popChangeInvoiceDueDateClick(Sender: TObject);
var
   LfrmInvoiceChangeDue: TfrmInvoiceChangeDue;
begin
   if not qryAccounts.IsEmpty then
   begin
      if qryAccounts.FieldByName('OWING').AsFloat = qryAccounts.FieldByName('AMOUNT').AsFloat then
      begin
         if MsgAsk('Do you want to change the Due Date for Invoice ' + qryAccounts.FieldByName('REFNO').AsString + '?') = mrYes then
         begin
            LfrmInvoiceChangeDue := TfrmInvoiceChangeDue.Create(Self);
            LfrmInvoiceChangeDue.DisplayInvoice(Self.qryAccounts.FieldByName('NINVOICE').AsInteger);
            LfrmInvoiceChangeDue.ShowModal;
            qryAccounts.Close;
            qryAccounts.Open;
         end;
      end
      else
         MsgErr('There have been payments on this Invoice.');
   end;
end;

procedure TfrmCreditors.dxBarPopupMenu1Popup(Sender: TObject);
begin
   if qryAccounts.FieldByName('HOLD').AsString = 'Y' then
      btnHold.Caption := 'Unhold'
   else
      btnHold.Caption := 'Hold';

   popPaySelected.Enabled := dmAxiom.Security.Cheque.Create and
                           (qryCreditor.FieldByName('ACTIVE').AsString = 'Y') and
 //                          (qryAccounts.FieldByName('ACCT').AsString = dmAxiom.Entity)and
                           (not qryAccounts.IsEmpty) and
                           (qryAccounts.FieldByName('OWING').AsCurrency <> 0);
   btnHold.Enabled := dmAxiom.Security.Cheque.Create and
                      (qryCreditor.FieldByName('ACTIVE').AsString = 'Y') and
//                      (qryAccounts.FieldByName('ACCT').AsString = dmAxiom.Entity) and
                      (not qryAccounts.IsEmpty) and
                      (qryAccounts.FieldByName('OWING').AsCurrency <> 0);
   btnViewAttachment.Enabled := (not qryAccounts.FieldByName('INVOICE_COPY').IsNull);
   btnRemoveAttachment.Enabled := (not qryAccounts.FieldByName('INVOICE_COPY').IsNull);
end;

procedure TfrmCreditors.dxbbtnRefreshClick(Sender: TObject);
begin
   DisplayCreditor(qryCreditor.FieldByName('NCREDITOR').AsInteger);
end;

procedure TfrmCreditors.dxBarButton1Click(Sender: TObject);
begin
   qryInvoices.Close;
   qryInvoices.ParamByName('NCREDITOR').AsInteger := qryCreditor.FieldByName('NCREDITOR').AsInteger;
   if (chkOnlyOwing.Checked) then
      qryInvoices.ParamByName('showall').AsInteger := 0
   else
      qryInvoices.ParamByName('showall').AsInteger := 1;
   qryInvoices.Open;
   rptCreditorTrans.Print;
end;

procedure TfrmCreditors.BitBtn1Click(Sender: TObject);
begin
   if (dtpFrom.Checked = True) and (dtpTo.Checked = True) then
   begin
      qryAccounts.AfterScroll := nil;
      qryAccounts.Close;
      qryAccounts.ParamByName('NCREDITOR').AsInteger := qryCreditor.FieldByName('NCREDITOR').AsInteger;
      qryAccounts.ParamByName('FILTER').AsInteger := 1;
      qryAccounts.ParamByName('pDateFrom').AsDate := dtpFrom.Date;
      qryAccounts.ParamByName('pDateTo').AsDate := dtpTo.Date;
      qryAccounts.Open;
      qryAccounts.AfterScroll := qryAccountsAfterScroll;
   end;
end;

procedure TfrmCreditors.btnPaySearchesClick(Sender: TObject);
var
  frmCheque: TfrmCheque;
begin
   // Automatically post the selected items
   frmCheque := TfrmCheque.Create(Self);
   frmCheque.ChequeFromInvoice(qryCreditor.FieldByName('NCREDITOR').AsInteger);
   frmCheque.Show;
end;

procedure TfrmCreditors.btnRemoveAttachmentClick(Sender: TObject);
begin
   if MsgAsk('Do you want to remove the attached invoice.') = mrYes then
   begin
      if qryAccounts.fieldByname('INVOICE_COPY').IsNull then
         exit;
      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         if qryAccounts.State in [dsBrowse] then
            qryAccounts.edit;

         qryAccounts.fieldByname('INVOICE_COPY').Clear;

         qryAccounts.ApplyUpdates;
//          btnViewDoc.Enabled := False;
//          btnRemoveAttDoc.Enabled := False;
      except
         Raise;
      end;
   end;
end;

procedure TfrmCreditors.dxBarButton2Click(Sender: TObject);
var
   sFileName: string;
  iPos: integer;
  bStream, fStream: TStream;
begin
   if not dlFile.Execute then
      exit;

   dlFile.Options := [ofHideReadOnly,ofExtensionDifferent,ofPathMustExist,ofFileMustExist,ofEnableSizing];
   sFileName := dlFile.FileName;

   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      try
         dmAxiom.uniInsight.StartTransaction;
         if qryAccounts.State in [dsBrowse] then
            qryAccounts.edit;

         if (not qryAccounts.fieldByname('INVOICE_COPY').IsNull) then
            if MsgAsk('There is a document currently attached. Do you want to continue?') = mrNo then
               Exit;

         qryAccounts.fieldByname('INVOICE_COPY').Clear;
 // c   heck the document
         try
            qryAccounts.FieldByName('INVOICE_COPY_EXT').AsString := Copy(ExtractFileExt(sFileName),2,3);
            bStream := qryAccounts.CreateBlobStream(qryAccounts.FieldByName('INVOICE_COPY') , bmReadWrite);
            try
               fStream := TFileStream.Create(sFileName, fmOpenRead);
               bStream.CopyFrom(fStream, fStream.Size);
            finally
               FreeAndNil(fStream);
            end;
         finally
            FreeAndNil(bStream);
         end;
         qryAccounts.ApplyUpdates;
      finally
         dmAxiom.uniInsight.Commit;
      end;
//         btnViewDoc.Enabled := True;
//         btnRemoveAttDoc.Enabled := True;
   except
      Raise;
   end;
end;

procedure TfrmCreditors.dxBarButton3Click(Sender: TObject);
var
   frmInvScan: TfrmInvScan;
begin
   try
      frmInvScan := TfrmInvScan.Create(Self,qryAccounts.fieldByname('NINVOICE').AsInteger);
      frmInvScan.ShowModal;
      frmInvScan.Free;
   finally
      qryAccounts.Refresh;
   end;
//    PostMessage(Self.Handle, WM_NEWMESSAGE, 0, 0);
end;


procedure TfrmCreditors.btnViewAttachmentClick(Sender: TObject);
begin
   ViewAttacheInvoice;
end;

procedure TfrmCreditors.tvInvoicesCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   ViewAttacheInvoice;
end;

procedure TfrmCreditors.ViewAttacheInvoice;
var
   sFileName: string;
   bStream, fStream: TStream;
   OpenFileErr: integer;
begin
   if qryAccounts.fieldByname('INVOICE_COPY').IsNull then
      exit;

   try
      // load the image in external application
      try
         bStream := qryAccounts.CreateBlobStream(qryAccounts.fieldByname('INVOICE_COPY'), bmRead);

         sFileName := dmAxiom.GetEnvVar('TMP')+'\';  //'c:\tmp\';
         sFileName := sFileName + qryAccounts.fieldByName('ninvoice').AsString+ '_safe.' + qryAccounts.FieldByName('INVOICE_COPY_EXT').AsString;
         try
            fStream := TFileStream.Create(sFileName, fmCreate);
            fStream.CopyFrom(bStream,bStream.Size);
         finally
            FreeAndNil(fStream);
         end;
      finally
         FreeAndNil(bStream);
      end;

      OpenFileErr := ShellExecute(Handle,'open',PChar(sFileName),nil,nil,SW_SHOWNORMAL);
      if OpenFileErr = SE_ERR_NOASSOC then
         MsgInfo('There is no application associated with the given filename extension.');
   except
      Raise;
   end;
end;

procedure TfrmCreditors.StartScan;
begin
end;


procedure TfrmCreditors.Button1Click(Sender: TObject);
var
   frmInvScan: TfrmInvScan;
begin
   frmInvScan := TfrmInvScan.Create(Self,qryAccounts.fieldByname('NINVOICE').AsInteger);
   frmInvScan.Show;
end;

procedure TfrmCreditors.dxButtonExportExcelClick(Sender: TObject);
var
   filename: string;
begin
   SaveDialog1.Filter := 'Excel Files (*.xls)|*.xls';
   SaveDialog1.options := [ofOverwritePrompt,ofHideReadOnly,ofCreatePrompt,ofEnableSizing];
   if SaveDialog1.Execute then
   begin
      filename := SaveDialog1.FileName;
      ExportGridToExcel(filename,dbgrTransactions, True, True,True,'xls');
   end;
end;

procedure TfrmCreditors.dxBarButton4Click(Sender: TObject);
begin
   dxComponentPrinter1.Preview();
end;

procedure TfrmCreditors.popAmendInvAmtClick(Sender: TObject);
var
//   frmInvoiceAmountChange: TfrmInvoiceAmountChange;
   ARowInfo: TcxRowInfo;
begin
   ARowInfo := tvInvoices.DataController.GetRowInfo(tvInvoices.DataController.FocusedRowIndex);
//   frmInvoiceAmountChange := TfrmInvoiceAmountChange.Create(nil);
   try
//      if frmInvoiceAmountChange.ShowModal() = mrOk then
      begin
//         qryCheques.Close;
//         qryCheques.Open;
      end;
   finally
 //     frmInvoiceAmountChange.Free;
   end;
end;

procedure TfrmCreditors.tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
  try
      if not VarIsNull(AValue) then
      begin
         if (tvInvoices.Controller.SelectedRowCount > 0) then
            lblTotalSelected.Caption := 'Total selected = $' + string(AValue)
         else
            lblTotalSelected.Caption := 'Total selected $0.00';
      end
      else
         lblTotalSelected.Caption := 'Total selected $0.00';
   except
   //
   end;
end;

procedure TfrmCreditors.tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
   try
      if not VarIsNull(AValue) then
      begin
         if (tvInvoices.Controller.SelectedRowCount > 0) then
            Label30.Caption := 'Number of records selected = ' + string(AValue)
         else
            Label30.Caption := 'Number of records selected 0';
      end;
   except
   //
   end;
end;

function IsGroupedRecord(ARecord: TcxCustomGridRecord): Boolean;
begin
  Result := not (ARecord.Level = ARecord.GridView.DataController.Groups.GroupingItemCount);
end;

procedure TfrmCreditors.tvInvoicesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  AView: TcxGridDBTableView;
  I, J: integer;
begin
   AView := TcxGridDBTableView(TcxGridSite(Sender).GridView);
   AHitTest := AView.ViewInfo.GetHitTest(X,Y);
   if AHitTest is TcxGridRowIndicatorHitTest then
   begin
      I := TcxGridRowIndicatorHitTest(AHitTest).GridRecord.Index;
      J := tvInvoicesINCLUDE.Index;
      AView.DataController.Values[I, J] := True;
      Check(AView);
   end;
end;

procedure TfrmCreditors.tvInvoicesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  AView: TcxGridDBTableView;
begin
  AView := Sender as TcxGridDBTableView;
  PostMessage(Handle, UM_CHECK, Integer(AView), 0);
end;

procedure TfrmCreditors.tvInvoicesINCLUDEPropertiesEditValueChanged(
  Sender: TObject);
var
   ACheck: TcxCheckBox;
   AGridSite: TcxGridSite;
   AGridView: TcxGridDBTableView;
begin
   ACheck := Sender as TcxCheckBox;
   AGridSite := ACheck.Parent as TcxGridSite;
   AGridView := AGridSite.GridView as TcxGridDBTableView;
   Check(AGridView);
end;

procedure TfrmCreditors.Check(AGridView: TcxGridDBTableView);
var
  i: integer;
begin
   for i:= 0 to AGridView.DataController.RecordCount - 1 do
   begin
      if AGridView.DataController.Values[i, tvInvoicesINCLUDE.Index] = True then
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True),true)
      else
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True), false);
   end;
end;

procedure TfrmCreditors.UmCheck(var Message: TMessage);
begin
  Check(TcxGridDBTableView(Message.WParam));
end;

end.

