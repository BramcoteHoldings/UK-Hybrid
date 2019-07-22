unit AccountPayable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, ActnList, ActnMan, ImgList, cxGraphics, cxPC,
  dxStatusBar, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCalendar, cxCurrencyEdit, cxTextEdit, Ora,
  MemDS, DBAccess, OraSmart, cxSplitter, cxCheckBox, cxLabel, cxGroupBox,
  cxRadioGroup, StdCtrls, DateChangeButton, ComCtrls, cxContainer,
  GLComponentFilterCxGroup, cxGridDBDataDefinitions, cxMaskEdit,
  cxDropDownEdit, cxGridStrs, Math, Menus, cxProgressBar, cxButtonEdit,
  cxDBLookupComboBox, StrUtils, cxBlobEdit, cxLookAndFeelPainters, cxButtons,
  XPStyleActnCtrls, cxLookAndFeels, cxPCdxBarPopupMenu, cxNavigator,
  System.Actions, Uni, dxBarBuiltInMenu, dxCore,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinsCore,
  dxDateRanges, System.ImageList, glComponentFilterGroup;

const
   CM_EXPANDGROUPS = WM_USER + 1002;
   AXM_SCAN = WM_APP + 401;

   isINVOICES = 0;
   isFILTER = 1;
   BTNGREENLIGHT = 10;
   BTNREDLIGHT = 11;

type
  TfrmAcctPayable = class(TForm)
    ilstToolbar: TImageList;
    ActionManager1: TActionManager;
    actCreditNote: TAction;
    actReverse: TAction;
    actConvert: TAction;
    actCheqReqEdit: TAction;
    actHold: TAction;
    dxBarManager1: TdxBarManager;
    mnuFile: TdxBarSubItem;
    tbtnAccountNew: TdxBarButton;
    mnuFileDelete: TdxBarButton;
    mnuFileConvertInvoices: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    dxBarButton3: TdxBarButton;
    miReportChequeRequests: TdxBarButton;
    miReportEffectofRequests: TdxBarButton;
    pmReports: TdxBarPopupMenu;
    pagAcctPayable: TcxPageControl;
    StatusBar: TdxStatusBar;
    tabAcctPayable: TcxTabSheet;
    tsFilter: TcxTabSheet;
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
    dbgrInvoicesLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    dbgrTransactions: TcxGrid;
    tvTransactions: TcxGridDBTableView;
    tvTransactionsCHART: TcxGridDBColumn;
    tvTransactionsFILEID: TcxGridDBColumn;
    tvTransactionsOWNER_CODE: TcxGridDBColumn;
    tvTransactionsCHQNO: TcxGridDBColumn;
    tvTransactionsDESCR: TcxGridDBColumn;
    tvTransactionsAMOUNT: TcxGridDBColumn;
    dbgrTransactionsLevel1: TcxGridLevel;
    qryAccounts: TUniQuery;
    dsAccounts: TUniDataSource;
    qryTransactions: TUniQuery;
    qryTransactionsCHART: TStringField;
    qryTransactionsOWNER_CODE: TStringField;
    qryTransactionsCHQNO: TStringField;
    qryTransactionsDESCR: TStringField;
    qryTransactionsAMOUNT: TFloatField;
    qryTransactionsFILEID: TStringField;
    dsTransactions: TUniDataSource;
    tvInvoicesNAME: TcxGridDBColumn;
    tvInvoicesCODE: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    lblDateFrom: TLabel;
    Label1: TLabel;
    dtpDateTo: TDateTimePicker;
    dtpDateFrom: TDateTimePicker;
    DateChangeButton1: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    rgShowBy: TcxRadioGroup;
    rgShowOnly: TcxGroupBox;
    cbOutstanding: TcxCheckBox;
    cbNotHeld: TcxCheckBox;
    cbPaid: TcxCheckBox;
    cxGroupBox3: TcxGroupBox;
    cbCheque: TcxCheckBox;
    cbEFT: TcxCheckBox;
    cxGroupBox4: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dfCreditorCode: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    dfInvoiceRef: TcxTextEdit;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    qryBank: TUniQuery;
    qryCheque: TUniQuery;
    qryBankBalance: TUniQuery;
    qryAllocs: TUniQuery;
    cxLabel5: TcxLabel;
    cbBank: TcxComboBox;
    qryTransItem: TUniQuery;
    qryInvoiceCRAmount: TUniQuery;
    qryInvoiceUpdate: TUniQuery;
    cxStyleRepository3: TcxStyleRepository;
    cxStyleGroupHeader: TcxStyle;
    dxBarButton1: TdxBarButton;
    tbtnCreditNote: TdxBarButton;
    bbtnHold: TdxBarButton;
    qryUpdate: TUniQuery;
    tvInvoicesPAY_BY_EFT: TcxGridDBColumn;
    dxStatusBar1Container0: TdxStatusBarContainerControl;
    progBarProcess: TcxProgressBar;
    qryPrinter: TUniQuery;
    qryCheqreqUpdate: TUniQuery;
    qryTemp: TUniQuery;
    tvInvoicesNINVOICE: TcxGridDBColumn;
    qryAccountTotals: TUniQuery;
    popGrid: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dfMatter: TcxButtonEdit;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    btnRemoveAttachment: TdxBarButton;
    btnViewAttachment: TdxBarButton;
    dlFile: TOpenDialog;
    tvInvoicesINVOICE_COPY: TcxGridDBColumn;
    Scan: TAction;
    chkDateFrom: TCheckBox;
    chkDateTo: TCheckBox;
    actRefresh: TAction;
    actDelete: TAction;
    actPaySelected: TAction;
    dfCreditor: TcxButtonEdit;
    GLComponentFilter: TGLComponentFilterGroup;
    procedure tbtnAccountNewClick(Sender: TObject);
    procedure qryAccountsBeforeScroll(DataSet: TDataSet);
    procedure qryAccountsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure pagAcctPayableChange(Sender: TObject);
    procedure tvInvoicesDataControllerGroupingChanged(Sender: TObject);
    procedure qryTransactionsBeforeOpen(DataSet: TDataSet);
    procedure mnuFileConvertInvoicesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvInvoicesCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure tvInvoicesFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvInvoicesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tbtnCreditNoteClick(Sender: TObject);
    procedure actConvertUpdate(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure popGridHoldClick(Sender: TObject);
    procedure popGridHistoryClick(Sender: TObject);
    procedure popGridPopup(Sender: TObject);
    procedure popGridPayClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnViewAttachmentClick(Sender: TObject);
    procedure btnRemoveAttachmentClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure tvInvoicesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ScanExecute(Sender: TObject);
    procedure actHoldExecute(Sender: TObject);
    procedure actHoldUpdate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actRefreshUpdate(Sender: TObject);
    procedure actCreditNoteExecute(Sender: TObject);
    procedure actPaySelectedExecute(Sender: TObject);
    procedure actPaySelectedUpdate(Sender: TObject);
    procedure actCreditNoteUpdate(Sender: TObject);
    procedure dfCreditorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dfCreditorPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    LastKey: Word;
    bConversionOn:  boolean;
    FNCreditor: integer;

    property NCreditor: integer read FNCreditor write FNCreditor;

    procedure CMExpandGroups(var Msg: TMessage); message CM_EXPANDGROUPS;
    function PostInvoices(DefaultPrinter: string; AuthBy: string; EFT_Bank: string = ''; sRefNo: string = ''; sCredInv: string = ''): boolean;
    function GetDefaultTax(sType : String; sDefaultTax : String) : String;
    procedure SetHoldPopup;
    procedure SetHeld;
    function AllAcctPayableTheSame: boolean;
    procedure ViewAttacheInvoice;


  protected
    procedure OpenScanScreen(var Message: TMessage); message AXM_SCAN;
  public
    { Public declarations }
    procedure MakeSQL;
  end;

var
  frmAcctPayable: TfrmAcctPayable;

implementation

uses
   AccountNew, MiscFunc, AxiomData, BulkCheques, Cheque, InvoiceDebitNote,
   InvoiceReverse, glComponentUtil, EFTFile, MSearch, citfunc,
   ShellAPI, InvoiceScan, CreditorSearch;

{$R *.dfm}

procedure TfrmAcctPayable.tbtnAccountNewClick(Sender: TObject);
var
  LfrmAccountNew: TfrmAccountNew;
begin
   LfrmAccountNew := TfrmAccountNew.Create(Self);
   if pagAcctPayable.ActivePage = tabAcctPayable then
      LfrmAccountNew.DisplayCreditor(qryAccounts.FieldByName('NAME').AsString, qryAccounts.FieldByName('NCREDITOR').AsInteger)
   else
      LfrmAccountNew.DisplayCreditor('', -1);
  LfrmAccountNew.Show;
end;

function TfrmAcctPayable.GetDefaultTax(sType : String; sDefaultTax : String) : String;
var
  lsDefaultTax : String;
begin
   lsDefaultTax := Get_Default_GST(sType);
   if (lsDefaultTax = '') then
      lsDefaultTax := sDefaultTax;
   Result := lsDefaultTax;
end;

procedure TfrmAcctPayable.qryAccountsBeforeScroll(DataSet: TDataSet);
begin
   if not bConversionOn then
      qryTransactions.Close;
end;

procedure TfrmAcctPayable.qryAccountsAfterScroll(DataSet: TDataSet);
begin
   if not bConversionOn then
   begin
      if qryAccounts.Active then
         qryTransactions.Open;
      SetHeld;
   end;
end;

procedure TfrmAcctPayable.FormCreate(Sender: TObject);
begin
   glComponentFilter.glComponentSetup := dmAxiom.getGlComponents;
   cxSetResourceString(@scxGridGroupByBoxCaption, 'Drag Creditor or Code to group Invoices into individual cheques');
   pagAcctPayable.ActivePageIndex := 1;
   NCreditor := -1;
end;

procedure TfrmAcctPayable.mnuFileExitClick(Sender: TObject);
begin
//   RemoveFromDesktop(Self);
   Close;
end;

procedure TfrmAcctPayable.CMExpandGroups(var Msg: TMessage);
begin
  TcxGridDBDataController(Msg.WParam).Groups.FullExpand;
end;

procedure TfrmAcctPayable.pagAcctPayableChange(Sender: TObject);
begin
   case pagAcctPayable.ActivePage.TabIndex of
      isINVOICES:
         begin
            if ((cbCheque.Checked) and (cbEFT.Checked)) or
               ((not cbCheque.Checked) and ( not cbEFT.Checked)) then
               tvInvoices.OptionsView.GroupByBox := False
            else
            if ((cbCheque.Checked) and (not cbEFT.Checked)) or
               ((not cbCheque.Checked) and (cbEFT.Checked)) then
               tvInvoices.OptionsView.GroupByBox := True;
            MakeSQL;

         end;
      isFilter :
         begin
            TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[0].IndicatorType := sitOff;
            TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[1].IndicatorType := sitOff;
            StatusBar.Panels.Items[0].Text := '';
            StatusBar.Panels.Items[1].Text := '';
         end;
   end;
end;

procedure TfrmAcctPayable.MakeSQL;
var
  sSQLWhere, sSql, sOrderBy, sSQLTotals : string;
  sAND : string;
  bFinished : Boolean;
  iCtr : Integer;
  sComma, sOwing, sChartWhere, sEFT : string;
begin
   Screen.Cursor := crHourGlass;
   sOwing := '';
   sEFT := '';
   if tvInvoices.GroupedColumnCount > 0 then
      tvInvoices.GroupedColumns[0].GroupIndex := -1;

   qryAccounts.Close;
   qryAccounts.SQL.Clear;
   sAND := ' AND ';
//   sSQLWhere := ' WHERE I.OWING <> 0 AND I.NCREDITOR = C.NCREDITOR AND I.ACCT = :ACCT ';
   sSQLWhere := ' WHERE I.NCREDITOR = C.NCREDITOR AND I.ACCT = :ACCT ';

//   if cbBank.Text <> '' then
//     sSQLWhere := sSQLWhere + sAND + 'I.BANK = ' + QuotedStr(cbBank.Text);
   if dfMatter.Text <> '' then
      sSQLWhere := sSQLWhere + sAND + 'I.NINVOICE in (select ninvoice from alloc where ninvoice is not null and fileid = ' + QuotedStr(dfMatter.Text)+')';
   if dfInvoiceRef.Text <> '' then
      sSQLWhere := sSQLWhere + sAND + 'I.NMEMO = ' + QuotedStr(dfInvoiceRef.Text);
   if dfCreditor.Text <> '' then
      if NCreditor = SystemInteger('INFOTRACK_NCREDITOR') then
         sSQLWhere := sSQLWhere + sAND + 'C.NCREDITOR = ' + QuotedStr(IntToStr(NCreditor))
      else
         sSQLWhere := sSQLWhere + sAND + 'UPPER(C.NAME) LIKE ' + QuotedStr('%' + Uppercase(dfCreditor.Text) + '%');
   if dfCreditorCode.Text <> '' then
      sSQLWhere := sSQLWhere + sAND + 'C.CODE = ' + QuotedStr(dfCreditorCode.Text);

   if (cbCheque.Checked) and (cbEFT.Checked) then
      sEFT := sAnd + '(PAY_BY_EFT = ''Y'' OR PAY_BY_EFT = ''N'')'
   else
      if (cbCheque.Checked) then
         sEFT := sAnd + 'PAY_BY_EFT = ''N'' '
      else
      if cbEFT.Checked then
         sEFT := sAnd + 'PAY_BY_EFT = ''Y'' ';

   sSQLWhere := sSQLWhere + sEFT  ;

   if cbOutstanding.Checked then
      sOwing := sAND + ' I.OWING <>  0 ';
   if cbNotHeld.Checked then
      sOwing :=  sOwing + ' AND NVL(I.HOLD,''N'') <> ''Y'' ';
   if cbPaid.Checked then
      sOwing := sOwing + ' AND (I.AMOUNT - I.OWING) <> 0 ';  // 'AND NVL(I.OWING,0) = 0 ';

    sSQLWhere := sSQLWhere + sOwing ;

   sSQL := 'SELECT I.NCHEQUE, I.ROWID, TRUNC(I.INVOICE_DATE) AS INVOICE_DATE, '+
           'I.OWING, I.REFNO, I.DESCR, TRUNC(I.DUE_DATE) AS DUE_DATE, I.HOLD, '+
           'I.NINVOICE, I.AMOUNT, I.ACCT, C.NAME, C.CODE, I.NCREDITOR, I.CHEQUE_GROUP_ID, '+
           'I.CREDITOR, I.BILLED, I.TAX, I.TAKE_ON, C.PAY_BY_EFT, I.INVOICE_COPY, I.INVOICE_COPY_EXT, '+
           '(I.AMOUNT - I.OWING) AS PAID, TAKE_ON, I.HOLD as Held '+
           'FROM CREDITOR C, INVOICE I ';

   sSQLTotals := 'SELECT NVL(SUM(LEGAL_CR_AMOUNT),0) "MATTER", NVL(SUM(TRADE_CR_AMOUNT),0) "TRADE" '+
                 'FROM CREDITOR C, INVOICE I ';

   case rgShowBy.ItemIndex of
      0: begin
            if chkDateFrom.Checked then
               sSQLWhere := sSQLWhere + 'and trunc(I.DUE_DATE) >= :P_DateFrom ';
            if chkDateTo.Checked then
               sSQLWhere := sSQLWhere + 'and trunc(I.DUE_DATE) <= :P_DateTo ';
         end;
      1: begin
            if chkDateFrom.Checked then
               sSQLWhere := sSQLWhere + 'and trunc(I.INVOICE_DATE) >= :P_DateFrom ';
            if chkDateTo.Checked then
               sSQLWhere := sSQLWhere + 'and trunc(I.INVOICE_DATE) <= :P_DateTo ';
         end;
      2: begin
            if chkDateFrom.Checked then
               sSQLWhere := sSQLWhere + 'and trunc(I.PAY_DATE) >= :P_DateFrom ';
            if chkDateTo.Checked then
               sSQLWhere := sSQLWhere + 'and trunc(I.PAY_DATE) <= :P_DateTo ';
         end;
   end;
   sChartWhere := glComponentFilter.getChartWhereClause('');

   sSql := sSql + sSQLWhere;

   sSQLTotals := sSQLTotals + sSQLWhere;

   sOrderBy := 'ORDER BY trunc(I.DUE_DATE) ASC ';

   qryAccountTotals.SQL.Text := sSQLTotals;
   qryAccounts.SQL.Text := sSql + sOrderBy;
   if chkDateFrom.Checked then
   begin
      qryAccounts.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
      qryAccountTotals.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
   end;
   if chkDateTo.Checked then
   begin
      qryAccounts.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
      qryAccountTotals.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
   end;
   qryAccounts.ParamByName('ACCT').AsString := dmAxiom.Entity;
   qryAccountTotals.ParamByName('ACCT').AsString := dmAxiom.Entity;
   qryAccountTotals.Open;
   StatusBar.Panels.Items[0].Text :=  'Legal Creditors Total: ' + CurrToStrF(qryAccountTotals.FieldByName('MATTER').AsCurrency,ffCurrency,2);
   StatusBar.Panels.Items[1].Text :=  'Trade Creditors Total: ' + CurrToStrF(qryAccountTotals.FieldByName('TRADE').AsCurrency,ffCurrency,2);
   try
      qryAccounts.Open;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TfrmAcctPayable.tvInvoicesDataControllerGroupingChanged(
  Sender: TObject);
begin
   if tvInvoices.GroupedColumnCount > 1 then
      tvInvoices.GroupedColumns[0].GroupIndex := -1;

   PostMessage(Handle, CM_EXPANDGROUPS, Integer(Sender), 0);
end;

procedure TfrmAcctPayable.qryTransactionsBeforeOpen(DataSet: TDataSet);
begin
   qryTransactions.ParamByName('ACCT').AsString:= qryAccounts.FieldByName('ACCT').AsString;
   qryTransactions.ParamByName('NINVOICE').AsInteger:= qryAccounts.FieldByName('NINVOICE').AsInteger;
end;

procedure TfrmAcctPayable.mnuFileConvertInvoicesClick(Sender: TObject);
var
  sBank: string;
  bOneBank, bNoneHeld, bFirst, bDiffEntity: boolean;
  iCtr: integer;
  x, RecIdx, ColIdx: Integer;
  ARecord: TcxCustomGridRecord;
  frmNewCheque: TfrmCheque;
  frmBulkCheques: TfrmBulkCheques;
  nRowCount, iNCheque: integer;
  iCheqreqAmount,iCheqreqTax, iCheqreqBalTax,iCheqreqBalAmount : Currency;
  lsDefaultTax : String;
  lsNAccPay_List: String;
  ARowIndex: Integer;
begin
   sBank := cbBank.EditValue;

   if tvInvoices.GroupedColumnCount > 0 then
   begin
      bConversionOn := True;
      qryTransactions.Close;
      if (AllAcctPayableTheSame) then
      begin
         try
            Screen.Cursor := crHourGlass;
            // will not work if not expanded
            dbgrInvoices.FocusedView.DataController.Groups.FullExpand;
            tvInvoices.BeginUpdate();
            progBarProcess.Position := 0;
            progBarProcess.Visible := True;
            Application.ProcessMessages;
            dbgrInvoices.FocusedView.DataController.Groups.FullExpand;
            tvInvoices.DataController.FocusedRowIndex := 0;
            qryLedger.Open;
            progBarProcess.Properties.Max := tvInvoices.DataController.RowCount;
//            tvInvoices.DataController.DataSet.DisableControls;
            for nRowCount := 0 to tvInvoices.DataController.RowCount - 1 do
            begin
               if (qryAccounts.FieldByName('ACCT').AsString <> dmAxiom.Entity) then Exit;
               if (tvInvoices.ViewData.Records[nRowCount].Level = 0) then
               begin
                  if nRowCount > 0 then
                  begin
                     qryLedger.Insert;
                     qryLedger.FieldByName('TYPE').AsString := 'Invoice';
                     qryLedger.FieldByName('REFNO').AsString := qryAccounts.FieldByName('REFNO').AsString;
                     qryLedger.FieldByName('LONGDESC').AsString := qryAccounts.FieldByName('CREDITOR').AsString;

                     qryLedger.FieldByName('PAYEE').AsString := qryAccounts.FieldByName('NAME').AsString;

                     qryLedger.FieldByName('REASON').AsString := qryAccounts.FieldByName('DESCR').AsString;

                     qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount;

                     lsDefaultTax := GetDefaultTax('CreditorInvoice', 'NOTAX');

                     qryLedger.FieldByName('TAXCODE').AsString := lsDefaultTax;
                     qryLedger.FieldByName('TAX').AsFloat := 0;
                     qryLedger.FieldByName('BILLED').AsString := 'Y';

                     qryLedger.FieldByName('CHEQUE_GROUP_ID').AsInteger := X;
                     qryLedger.FieldByName('BANK').AsString := sBank;
                     qryLedger.FieldByName('PROCESS').AsString := 'N';
                     qryLedger.FieldByName('NCREDITOR').AsInteger := qryAccounts.FieldByName('NCREDITOR').AsInteger;
                     qryLedger.FieldByName('NCHEQUE').AsInteger := iNcheque;
                     qryLedger.FieldByName('FILEID').AsString := qryAccounts.FieldByName('NCREDITOR').AsString;
                     qryLedger.FieldByName('CREATED').AsDateTime := Date;
                     qryLedger.FieldByName('NCHEQREQ_LIST').AsString := lsNAccPay_List;

                     qryLedger.Post;
                  end;
                  X := GetNextSequence('SEQ_CHEQUE_GROUP_ID');
//          14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
                  iNcheque := GetSequenceNumber('SQNC_NCHEQUE');  //GetSeqnum('NCHEQUE');
                  iCheqreqAmount := 0;
                  iCheqreqTax := 0;
                  lsNAccPay_List := '';
                  progBarProcess.Position := nRowCount;
                  Application.ProcessMessages;
               end
               else
               begin
                  tvInvoices.ViewData.Records[nRowCount].Focused := True;
                  if qryAccounts.State <> dsEdit then
                     qryAccounts.Edit;
                  qryAccounts.FieldByName('CHEQUE_GROUP_ID').AsInteger := X;

                  iCheqreqAmount := iCheqreqAmount + qryAccounts.FieldByName('OWING').AsFloat;
                  iCheqreqTax := iCheqreqTax + qryAccounts.FieldByName('TAX').AsFloat;

                  If lsNAccPay_List <> '' then
                     lsNAccPay_List := lsNAccPay_List + ',';
                  lsNAccPay_List := lsNAccPay_List + '''' + qryAccounts.FieldByName('NINVOICE').AsString + '''';

                  progBarProcess.Position := nRowCount;
                  Application.ProcessMessages;
               end;
            end;

            // this is here to handle the last row in the grid
            qryLedger.Insert;

            qryLedger.FieldByName('TYPE').AsString := 'Invoice';
            qryLedger.FieldByName('REFNO').AsString := qryAccounts.FieldByName('REFNO').AsString;
            qryLedger.FieldByName('LONGDESC').AsString := qryAccounts.FieldByName('CREDITOR').AsString;

            qryLedger.FieldByName('PAYEE').AsString := qryAccounts.FieldByName('NAME').AsString;

            qryLedger.FieldByName('REASON').AsString := qryAccounts.FieldByName('DESCR').AsString;

            qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount;

            lsDefaultTax := GetDefaultTax('CreditorInvoice', 'NOTAX');

            qryLedger.FieldByName('TAXCODE').AsString := lsDefaultTax;
            qryLedger.FieldByName('TAX').AsFloat := 0;
            qryLedger.FieldByName('BILLED').AsString := 'Y';

            qryLedger.FieldByName('CHEQUE_GROUP_ID').AsInteger := X;
            qryLedger.FieldByName('BANK').AsString := sBank;
            qryLedger.FieldByName('PROCESS').AsString := 'N';
//            qryLedger.FieldByName('NCREDITOR').AsInteger := qryAccounts.FieldByName('NCREDITOR').AsInteger;
            qryLedger.FieldByName('FILEID').AsString := qryAccounts.FieldByName('NCREDITOR').AsString;
            qryLedger.FieldByName('NCHEQUE').AsInteger := iNcheque;
            qryLedger.FieldByName('CREATED').AsDateTime := Date;
            qryLedger.FieldByName('NCHEQREQ_LIST').AsString := lsNAccPay_List;

            qryLedger.Post;
            if qryAccounts.Modified then
               qryAccounts.Post;

            if qryAccounts.Modified then
               qryAccounts.Post;
            progBarProcess.Visible := False;

//            tvInvoices.DataController.DataSet.EnableControls;
            // Now lets show the list of cheques created
            try
               frmBulkCheques:= TfrmBulkCheques.Create(frmAcctPayable);
               frmBulkCheques.DefaultBank := cbBank.EditValue;
               frmBulkCheques.tvBulkCheques.DataController.DataSource := dsLedger;
               frmBulkCheques.CreateCheque := cbCheque.Checked;

               Screen.Cursor := crDefault;
               if frmBulkCheques.ShowModal = mrOk then
               begin
                  // let's create them
                  if PostInvoices(frmBulkCheques.cmbPrinter.Text, frmBulkCheques.cbAuthBy.EditValue, frmBulkCheques.EFTBankCode, frmBulkCheques.teRefNo.Text, qryLedger.FieldByName('REFNO').AsString) then
                  begin
                     tvInvoices.GroupedColumns[0].GroupIndex := -1;
                     MakeSQL;
                  end;
               end;
            finally
               qryLedger.Close;
               frmBulkCheques.Free;
            end;
         finally
            tvInvoices.EndUpdate();
            Screen.Cursor := crDefault;
         end;

      end
      else
         MsgInfo('Mixed E.F.T. and Cheque transactions cannot be processed together.  Please use the '+
                  'filter to select either E.F.T. or Cheque.');
   end
   else
   begin
      // normal cheque creation starts
      if (ncreditor <> -1) then
      begin
         if (ncreditor = SystemInteger('infotrack_ncreditor')) then
         begin
            try
               frmNewCheque:= TfrmCheque.Create(Self);
               for nRowCount := 0 to tvInvoices.DataController.RowCount - 1 do
               begin
                  tvInvoices.Controller.FocusRecord(nRowCount, true);
                  frmNewCheque.ChequeFromInvoice(integer(tvInvoicesNINVOICE.EditValue));
               end;
            finally
               frmNewCheque.Show;
            end;
         end;
      end
      else
      case tvInvoices.DataController.GetSelectedCount of
         0, 1:
         begin
            if (qryAccounts.FieldByName('ACCT').AsString = dmAxiom.Entity) then
            begin
               if (qryAccounts.FieldByName('OWING').AsFloat <> 0) and (qryAccounts.FieldByName('HOLD').AsString <> 'Y') then
               begin
                  frmNewCheque:= TfrmCheque.Create(Self);
                  frmNewCheque.ChequeFromInvoice(qryAccounts.FieldByName('NINVOICE').AsInteger);
                  frmNewCheque.Show;
               end;
            end
            else
               MsgInfo('The selected Invoice(s) do(es) not belong to the active Entity.  '+
                       'Please check that you are on the correct Entity. '+
                       'Current Entity is <'+ dmAxiom.Entity +'> and Entity of Invoice is <'+ tvInvoicesACCT.EditValue+'>' );
         end
      else
         begin
            try
               bFirst := True;
               bOneBank := True;
               bNoneHeld := True;
               bDiffEntity := False;
         //    Make sure none are held or waiting, and they are all the one bank
               for iCtr := 0 to tvInvoices.DataController.GetSelectedCount - 1 do
               begin
                  ARowIndex := tvInvoices.DataController.GetSelectedRowIndex(iCtr);
                  tvInvoices.ViewData.Records[ARowIndex].Focused := True;
                  if (qryAccounts.FieldByName('HOLD').AsString <> 'N') then bNoneHeld := False;
                  if bFirst then
                  begin
                     sBank := cbBank.EditValue;
                     bFirst := False;
                  end;
                  if (tvInvoicesACCT.EditValue <> dmAxiom.Entity) then bDiffEntity := True;
               end;
               if not bOneBank then
                  MsgErr('Selected items must be for the one bank account')
               else if not bNoneHeld then
                  MsgErr('Selected items must not be Held or Waiting')
               else if bDiffEntity then
                  MsgInfo('The selected Invoice(s) do(es) not belong to the active Entity.  '+
                          'Please check that you are on the correct Entity. '+
                          'Current Entity is <'+ dmAxiom.Entity +'> and Entity of Invoice is <'+ tvInvoicesACCT.EditValue+'>' )
               else
               begin
                  frmNewCheque:= TfrmCheque.Create(Self);
                     for iCtr := 0 to tvInvoices.DataController.GetSelectedCount - 1 do
                     begin
                        ARowIndex := tvInvoices.DataController.GetSelectedRowIndex(iCtr);
                        tvInvoices.ViewData.Records[ARowIndex].Focused := True;
                        frmNewCheque.ChequeFromInvoice(qryAccounts.FieldByName('NINVOICE').AsInteger);
                     frmNewCheque.Show;
                  end;
               end;
            finally

            end;
         end; // else for case
      end; // case
   end;
   bConversionOn := False;
end;

function TfrmAcctPayable.PostInvoices(DefaultPrinter: string; AuthBy: string; EFT_Bank: string; sRefNo: string; sCredInv: string): boolean;
var
   iNcheque, n, LTries: integer;
   nAccount, I, Total_Recs: integer;
   LEntered, LMsg,
   sSQL, sSQLWhere, sLedger, sLegalCode, sNCreditor, sLedgerCode: string;
   // MatterList,AmountList, CheqReqUpdate: TStringList;
   CheqReqUpdate: TStringList;
   bProceed, bPostingFailed, bAccumulate: Boolean;
   cTrust, cProtected, cAmount, iCheqReqAmount, iCheqReqTax, cMatterAmount,
   TotalAmt, WithholdTax: Currency;
   cMatterTotal, cTradeTotal : Double;
   Record_Count: integer;
   glComponentSetup : TglComponentSetup;
   sLedgerKey, lInvoice, lsNAccPay_List: string;
   Owing, PaymentTotal: currency;
   frmEFTFileGeneration: TfrmEFTFileGeneration;
   GrandTotal: Currency;
   bCreateEFT: boolean;
begin
   try
      Screen.Cursor := crHourGlass;
      glComponentSetup := dmAxiom.getGlComponents;
      CheqReqUpdate := TStringList.Create;
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      Record_Count := 0;
      qryPrinter.Close;
      qryPrinter.ParamByName('CODE').AsString := DefaultPrinter;
      qryPrinter.Open;

      while not qryLedger.eof do
      begin
         if qryLedger.FieldByName('PROCESS').AsString = 'Y' then
            Inc(Total_Recs);
         qryLedger.Next;
      end;

      bCreateEFT := ((cbEFT.Checked) and (not cbCheque.Checked));
      if bCreateEFT then
      begin
         frmEFTFileGeneration:= TfrmEFTFileGeneration.Create(frmAcctPayable);
         frmEFTFileGeneration.Open_File;
         frmEFTFileGeneration.progressBar.Properties.Min := 0;
         frmEFTFileGeneration.progressBar.Properties.Max := Total_Recs;
         frmEFTFileGeneration.EFT_Bank := EFT_Bank;
         frmEFTFileGeneration.EFT_Header;
      end;
      // Create the Cheque entry - as we are using Cached Updates
      // this won't save until we explicitly ApplyUpdates
      with qryLedger do
      begin
         First;
         while not eof do
         begin
            if FieldByName('PROCESS').AsString = 'Y' then
            begin
               qryBank.Close;
               qryBank.ParamByName('P_CODE').AsString       := FieldByName('BANK').AsString;
               qryBank.ParamByName('P_ENTITY').AsString     := dmAxiom.Entity;
               qryBank.Open;

               iNcheque := FieldByName('NCHEQUE').AsInteger;
               qryCheque.ParamByName('P_Ncheque').AsInteger := iNcheque;
               qryCheque.Open;

               TotalAmt := FieldByName('AMOUNT').AsCurrency + FieldByName('TAX').AsCurrency;

               qryCheque.Insert;
               qryCheque.FieldByName('NCHEQUE').AsInteger   := iNcheque;
               qryCheque.FieldByName('PRINTER').AsString    := DefaultPrinter;
               qryCheque.FieldByName('CREATED').AsDateTime  := FieldByName('CREATED').AsDateTime;
               if cbCheque.Checked then
               begin
                  qryCheque.FieldByName('CHQNO').AsString := NextRefno(qryPrinter.FieldByName('NUM_LAST').AsString);
                  qryCheque.FieldByName('TYPE').AsString    := 'PY';
                  qryCheque.FieldByName('BANKED').AsString  := 'N';
                  qryPrinter.Edit;
                  qryPrinter.FieldByName('NUM_LAST').AsString :=  qryCheque.FieldByName('CHQNO').AsString;
                  qryPrinter.Post;
               end
               else
               begin
                  qryCheque.FieldByName('CHQNO').AsString   := sRefNo;
                  qryCheque.FieldByName('TYPE').AsString    := 'BP';
                  qryCheque.FieldByName('BANKED').AsString  := 'N';
                  qryCheque.FieldByName('EFT').AsString     := 'Y';
               end;

               qryCheque.FieldByName('SYSTEM_DATE').AsDateTime := Date;
               qryCheque.FieldByName('ACCT').AsString := FieldByName('BANK').AsString;
               qryCheque.FieldByName('REQBY').AsString := Authby;
               qryCheque.FieldByName('PAYEE').AsString := FieldByName('PAYEE').AsString;
               qryCheque.FieldByName('DESCR').AsString := FieldByName('REASON').AsString;
               qryCheque.FieldByName('AMOUNT').AsCurrency := TotalAmt - WithholdTax;
               qryCheque.FieldByName('TRUST').AsString := qryBank.FieldByName('TRUST').AsString;
               qryCheque.FieldByName('REVERSED').AsString := 'N';
               qryCheque.FieldByName('PRINTED').AsString := 'N';
               qryCheque.FieldByName('CHEQUE_GROUP_ID').AsInteger := FieldByName('CHEQUE_GROUP_ID').AsInteger;
               if FieldByName('NNAME').AsInteger > 0 then
                  qryCheque.FieldbyName('NNAME').AsInteger := FieldByName('NNAME').AsInteger;

               qryCheque.Post; // Puts cheque into cached buffer

               if bCreateEFT then
               begin
                  frmEFTFileGeneration.FTotal_Amount  := TotalAmt;
                  frmEFTFileGeneration.FCreditor      := StrToInt(FieldByName('FILEID').AsString);
                  if (SystemString('USE_CREDITOR_REFERENCE') = 'Y') then
                     frmEFTFileGeneration.RefNo       := sCredInv
                  else
                     frmEFTFileGeneration.RefNo       := sRefNo;
                  frmEFTFileGeneration.EFT_Detail;
               end;

               // Create cash at bank
               nAccount := StrToInt(dmAxiom.GetSeqNumber('sqnc_naccount'));   //GetSeqnum('NACCOUNT');
               if qryCheque.FieldByName('TRUST').AsString <> 'T' then
                 // If it's a Ledger cheque, need to save chart used on posting
                 if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
                 begin
                    sLedgerKey :=  glComponentSetup.buildLedgerKey('',qryBank.FieldByName('CASH_AT_BANK').AsString,'',true,'');

                    PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                      , TotalAmt - WithholdTax
                      , 0
                      , qryCheque.FieldByName('CHQNO').AsString
                      , 'CHEQUE'
                      , qryCheque.FieldByName('NCHEQUE').AsInteger
                      , qryCheque.FieldByName('DESCR').AsString
                      , sLedgerKey
                      , qryCheque.FieldByName('REQBY').AsString
                      , -1
                      , ''
                      , qryLedger.FieldByName('TAXCODE').AsString
                      , False
                      , qryLedger.FieldByName('REFNO').AsString
                      , 0
                      , 0
                      , nAccount);
                 end
                 else
                 begin
                    sLedgerKey :=  glComponentSetup.buildLedgerKey('',qryBank.FieldByName('CASH_AT_BANK').AsString,'',true,'');

                    PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                      , TotalAmt - WithholdTax
                      , 0
                      , qryCheque.FieldByName('CHQNO').AsString
                      , 'CHEQUE'
                      , qryCheque.FieldByName('NCHEQUE').AsInteger
                      , qryCheque.FieldByName('DESCR').AsString
                      , sLedgerKey
                      , qryCheque.FieldByName('REQBY').AsString
                      , -1
                      , ''
                      , qryLedger.FieldByName('TAXCODE').AsString
                      , False
                      , '0'
                      , 0
                      , 0
                      , nAccount );
                 end;
               // END: Create Cash At Bank Entry

               // Update the last cheque number and balance
               with qryBankBalance do
               begin
                 sSQL := 'UPDATE BANK SET BALANCE = ' + CurrToStrF(qryBank.FieldByName('BALANCE').AsCurrency + qryCheque.FieldByName('AMOUNT').AsCurrency, ffFixed, 15) + ', CL_BALANCE = ' + CurrToStrF(qryBank.FieldByName('CL_BALANCE').AsCurrency + qryCheque.FieldByName('AMOUNT').AsCurrency, ffFixed, 15);
                 sSQL := sSQL + ', LASTCHQ = ''' + qryCheque.FieldByName('CHQNO').AsString + '''';
                 sSQLWhere := ' WHERE ACCT = ''' + qryCheque.FieldByName('ACCT').AsString + '''';
                 Close;
                 SQL.Text := sSQL + sSQLWhere;
                 ExecSQL;
                 Close;
               end;
               // dw 20 sep not used
               //MatterList := TStringList.Create;
               //AmountList := TStringList.Create;
               // END: Update the last cheque number and balance

               qryAllocs.Open;
               lsNAccPay_List := '';
               // a Creditor Account Payable
               if qryLedger.FieldByName('TYPE').AsString = 'Invoice' then
               begin
                 lsNAccPay_List := qryLedger.FieldByName('NCHEQREQ_LIST').AsString;

                 qryTemp.SQL.Clear;
                 qryTemp.SQL.Text := 'SELECT * FROM INVOICE WHERE NINVOICE IN (' + qryLedger.FieldByName('NCHEQREQ_LIST').AsString + ') order by ninvoice';
                 qryTemp.Open;
                 PaymentTotal := qryLedger.FieldByName('AMOUNT').AsCurrency;
                 while not qryTemp.Eof do
                 begin
                    lInvoice := qryTemp.FieldByName('NINVOICE').AsString;

                    sNCreditor := TableString('INVOICE', 'NINVOICE', string(lInvoice), 'NCREDITOR');

                    sLedgerCode := TableStringEntity('CREDITOR', 'NCREDITOR', sNCreditor, 'CHART', dmAxiom.Entity);
                    if not ValidLedger(dmAxiom.Entity, sLedgerCode) then
                       sLedgerCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'CREDITORS');

                    sLegalCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR');

                    qryTransItem.Close;
                    qryTransItem.SQL.Text := 'SELECT naccount, chart, descr, ninvoice, refno, amount '+
                                             'FROM transitem WHERE ninvoice = ' + lInvoice +
                                             'and ncheque is null ';
                    qryTransItem.Open;

                    // Initialise the totals for legal (matter) and ledger (trade) creditors amount
                    cMatterTotal := 0;
                    cTradeTotal  := 0;

                    with qryInvoiceCRAmount do
                    begin
                       Close;
                       SQL.Text := 'SELECT sum(legal_cr_amount) as trade_cr_amount, '+
                                   'sum(trade_cr_amount) as legal_cr_amount FROM invoice '+
                                   'WHERE ninvoice = ' + lInvoice ;
                       Open;
                       cTradeTotal :=  FieldByName('trade_cr_amount').AsCurrency;
                       cMatterTotal :=  FieldByName('legal_cr_amount').AsCurrency;
                    end;

                    // this test is for invoices that were created prior to version 314
                    if (cMatterTotal + cTradeTotal) = 0 then
                    begin
                       sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedgerCode,'',true,'');
                       while not qryTransItem.EOF do
                       begin
                          // If trade
                          if qryTransItem.FieldByName('CHART').AsString = sLedgerCode then
                             cTradeTotal := cTradeTotal + qryTransItem.FieldByName('AMOUNT').AsCurrency
                          else if qryTransItem.FieldByName('CHART').AsString = sLegalCode then
                             cMatterTotal := cMatterTotal + qryTransItem.FieldByName('AMOUNT').AsCurrency;

                          qryTransItem.Next;
                       end;
                    end;

                    if (qryTemp.FieldByName('AMOUNT').AsCurrency <>  (cMatterTotal + cTradeTotal))                  then
                    begin
                       if cMatterTotal <> 0 then
                          cMatterTotal := RoundTo((qryTemp.FieldByName('AMOUNT').AsCurrency/(cMatterTotal + cTradeTotal))* cMatterTotal,-2);
                       if cTradeTotal <> 0 then
                          cTradeTotal := qryTemp.FieldByName('AMOUNT').AsCurrency - cMatterTotal;
                    end;

                    // Post for trade
                    sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedgerCode,'',true,'');
                    PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                        , 0 - cTradeTotal
                        , 0 - qryLedger.FieldByName('TAX').AsCurrency
                        , qryCheque.FieldByName('CHQNO').AsString, 'CHEQUE'
                        , qryCheque.FieldByName('NCHEQUE').AsInteger
                        , qryLedger.FieldByName('REASON').AsString
                        , sLedgerKey
                        , qryCheque.FieldByName('REQBY').AsString
                        , qryTemp.FieldByName('NINVOICE').AsInteger
//                        , qryLedger.FieldByName('UNIQUEID').AsInteger
                        , ''
                        , qryLedger.FieldByName('TAXCODE').AsString
                        , FALSE
                        , '0'
                        , qryAllocs.FieldByName('NALLOC').AsInteger
                        , qryAllocs.FieldByName('NMATTER').AsInteger );

                    // Post for legal
                    sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLegalCode,'',true,'');
                    PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                        , 0 - cMatterTotal
                        , 0 - qryLedger.FieldByName('TAX').AsCurrency
                        , qryCheque.FieldByName('CHQNO').AsString, 'CHEQUE'
                        , qryCheque.FieldByName('NCHEQUE').AsInteger
                        , qryLedger.FieldByName('REASON').AsString
                        , sLedgerKey
                        , qryCheque.FieldByName('REQBY').AsString
                        , qryTemp.FieldByName('NINVOICE').AsInteger
//                        , qryLedger.FieldByName('UNIQUEID').AsInteger
                        , ''
                        , qryLedger.FieldByName('TAXCODE').AsString
                        , FALSE
                        , '0'
                        , qryAllocs.FieldByName('NALLOC').AsInteger
                        , qryAllocs.FieldByName('NMATTER').AsInteger );

                    if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
                    begin
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE',qryLedger.FieldByName('TAXCODE').AsString, 'DEBIT'),'',true,'');
                        PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                        , 0 - qryLedger.FieldByName('TAX').AsCurrency, 0
                        , qryCheque.FieldByName('CHQNO').AsString, 'CHEQUE'
                        , qryCheque.FieldByName('NCHEQUE').AsInteger
                        , qryLedger.FieldByName('REASON').AsString
                        , sLedgerKey     // TableString('TAXTYPE', 'CODE',qryLedger.FieldByName('TAXCODE').AsString, 'DEBIT')
                        , ''
                        , -1
                        , ''
                        , qryLedger.FieldByName('TAXCODE').AsString
                        , FALSE
                        , '0'
                        , qryAllocs.FieldByName('NALLOC').AsInteger
                        , qryAllocs.FieldByName('NMATTER').AsInteger );
                    end;

                    if qryTemp.FieldByName('OWING').AsCurrency <= (cMatterTotal + cTradeTotal) then
                       Owing := 0
                    else
                       Owing :=  qryTemp.FieldByName('OWING').AsCurrency - (cMatterTotal + cTradeTotal);

                    PaymentTotal := (cMatterTotal + cTradeTotal) - qryTemp.FieldByName('OWING').AsCurrency;
                    CheqReqUpdate.Add('UPDATE INVOICE SET OWING = ' + Currtostr(Owing) + ',' +
                                      'LAST_PAYMENT = ' + quotedstr(FormatDateTime('dd-mmm-yyyy', qryCheque.FieldByName('CREATED').AsDateTime)) +
                                      ',NCHEQUE = '+ inttostr(qryCheque.FieldByName('NCHEQUE').AsInteger) +
                                      ' WHERE NINVOICE = ' + IntToStr(qryTemp.FieldByName('NINVOICE').AsInteger));
                    qryTemp.Next;
                 end;
               end;
               // END: a Creditor Account Payable

               if qryLedger.FieldByName('TAX').AsFloat <> 0 then
               begin
                 // For ledger cheque, need to store chart used when posting
                 if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
                 begin
                   if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
                   begin
                      sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                      PostLedger(qryLedger.FieldByName('CREATED').AsDateTime
                          , qryLedger.FieldByName('TAX').AsCurrency
                          , 0
                          , '0' // tbChqno.Text
                          , 'CHEQUE'
                          , qryCheque.FieldByName('NCHEQUE').AsInteger
                          , qryLedger.FieldByName('REASON').AsString
                          , sLedgerKey  // TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                          , ''
                          , -1
                          , ''
                          , qryLedger.FieldByName('TAXCODE').AsString
                          , FALSE
                          , qryLedger.FieldByName('REFNO').AsString
                          , qryAllocs.FieldByName('NALLOC').AsInteger
                          , qryAllocs.FieldByName('NMATTER').AsInteger );
                   end
                   else
                   begin
                      sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                      PostLedger(qryLedger.FieldByName('CREATED').AsDateTime
                          , 0 - qryLedger.FieldByName('TAX').AsCurrency
                          , 0
                          , '0'  // tbChqno.Text
                          , 'CHEQUE'
                          , qryCheque.FieldByName('NCHEQUE').AsInteger
                          , qryLedger.FieldByName('REASON').AsString
                          , sLedgerKey  // TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                          , ''
                          , -1
                          , ''
                          , qryLedger.FieldByName('TAXCODE').AsString
                          , FALSE
                          , qryLedger.FieldByName('REFNO').AsString
                          , qryAllocs.FieldByName('NALLOC').AsInteger
                          , qryAllocs.FieldByName('NMATTER').AsInteger );
                      end;
                 end // END ELSE: For ledger cheque, need to store chart used when posting
                 else
                 begin
                    if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
                    begin
                       sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                       PostLedger(qryLedger.FieldByName('CREATED').AsDateTime
                          , qryLedger.FieldByName('TAX').AsCurrency
                          , 0
                          , '0'  //tbChqno.Text
                          , 'CHEQUE'
                          , qryCheque.FieldByName('NCHEQUE').AsInteger
                          , qryLedger.FieldByName('REASON').AsString
                          , sLedgerKey   // TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                          , ''
                          , -1
                          , ''
                          , qryLedger.FieldByName('TAXCODE').AsString
                          , FALSE
                          , '0'
                          , qryAllocs.FieldByName('NALLOC').AsInteger
                          , qryAllocs.FieldByName('NMATTER').AsInteger );
                    end
                    else
                    begin
                       sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                       PostLedger(qryLedger.FieldByName('CREATED').AsDateTime
                          , 0 - qryLedger.FieldByName('TAX').AsCurrency
                          , 0
                          , '0'  // tbChqno.Text
                          , 'CHEQUE'
                          , qryCheque.FieldByName('NCHEQUE').AsInteger
                          , qryLedger.FieldByName('REASON').AsString
                          , sLedgerKey   // TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                          , ''
                          , -1
                          , ''
                          , qryLedger.FieldByName('TAXCODE').AsString
                          , FALSE
                          , '0'
                          , qryAllocs.FieldByName('NALLOC').AsInteger
                          , qryAllocs.FieldByName('NMATTER').AsInteger );
                    end;
                 end;
                 // END: For ledger cheque, need to store chart used when posting
               end;
               // END:
               GrandTotal := GrandTotal + TotalAmt;
               Inc(Record_Count);
            end;   // END FOR PROCESS FLAG = 'y'
            qryLedger.Next;
            if bCreateEFT then
               frmEFTFileGeneration.progressBar.Position := frmEFTFileGeneration.progressBar.Position  + 1;
         end;
         // ***************   end of loop through G/L entries

         qryCheque.ApplyUpdates;
         qryAllocs.ApplyUpdates;
         qryAccounts.ApplyUpdates;
         qryPrinter.ApplyUpdates;

         if bCreateEFT then
         begin
            frmEFTFileGeneration.FTotal_Amount := GrandTotal;
            frmEFTFileGeneration.FTotal_Credit := GrandTotal;
            frmEFTFileGeneration.FRecord_Count := Record_Count + 1;
            frmEFTFileGeneration.EFT_Total;
            frmEFTFileGeneration.EFT_Tail;
            frmEFTFileGeneration.Close_File;
         end;

         with qryCheqreqUpdate do
         begin
            for I := 0 to CheqReqUpdate.Count -1 do
            begin
               SQL.Clear;
               SQL.Text := CheqReqUpdate.Strings[I];
               ExecSQL;
            end;
         end;

         if bCreateEFT then frmEFTFileGeneration.Free;

         CheckLedgerTotal;
      end;
      except
         on E: Exception do
         begin
            dmAxiom.uniInsight.Rollback;
            if qryAllocs.UpdatesPending then
               qryAllocs.CancelUpdates;
            if qryCheque.UpdatesPending then
               qryCheque.CancelUpdates;
            if qryPrinter.UpdatesPending then
               qryPrinter.CancelUpdates;
            if qryCheqreqUpdate.UpdatesPending then
               qryCheqreqUpdate.CancelUpdates;
            bPostingFailed := True;
            Screen.Cursor := crDefault;
            MsgErr('Posting failed:' + #13#13 + E.Message);
            Result := False;
         end;
      end;

      if not bPostingFailed then
      begin
         dmAxiom.uniInsight.Commit;

         qryAllocs.Close;
         qryCheque.Close;
         qryAccounts.Close;
         qryPrinter.Close;
         CheqReqUpdate.Free;
         Screen.Cursor := crDefault;
         Result := True;
      end;
end;


procedure TfrmAcctPayable.FormShow(Sender: TObject);
begin
   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   AddBanks(cbBank, 'G,C');
   cbBank.ItemIndex := 0;//  EditValue := dmAxiom.DefaultBank;
   dtpDateFrom.Date := Int(Now);
   dtpDateFrom.Checked := False;
   dtpDateTo.Date :=  Int(Now);
   bConversionOn := False;
end;

function IsGroupedRecord(ARecord: TcxCustomGridRecord): Boolean;
begin
   Result := not (ARecord.Level = ARecord.GridView.DataController.Groups.GroupingItemCount);
end;

procedure TfrmAcctPayable.tvInvoicesCanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
   AAllow := not IsGroupedRecord(ARecord);
end;

procedure TfrmAcctPayable.tvInvoicesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  GroupItemCount: Integer;
  Data: TcxCustomDataController;
  I: Integer;
begin
   if (AFocusedRecord = nil) or (APrevFocusedRecord = nil) then
      Exit;

   if IsGroupedRecord(AFocusedRecord) then
   begin
      Data := Sender.DataController;
      GroupItemCount := Data.Groups.GroupingItemCount;

      if (LastKey = VK_NONAME) or  // record is clicked by mouse
         (APrevFocusedRecord.Index < AFocusedRecord.Index) then  // move down
         Data.FocusedRowIndex := AFocusedRecord.Index + (GroupItemCount - AFocusedRecord.Level)
      else  // move up
      begin
         if AFocusedRecord.Index < GroupItemCount then
            Data.FocusedRowIndex := AFocusedRecord.Index + (GroupItemCount - AFocusedRecord.Level)
         else
            for I := AFocusedRecord.Index - 1 downto 0 do
               if not IsGroupedRecord(Sender.ViewData.Records[I]) then
               begin
                  Sender.ViewData.Records[I].Focused := True;
                  Break;
               end;
               if I = 0 then APrevFocusedRecord.Focused := True;
      end;
   end;
end;

procedure TfrmAcctPayable.tvInvoicesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  HitTest: TcxCustomGridHitTest;
begin
   // Note that the Sender parameter is a Site
   HitTest := (Sender as TcxGridSite).GridView.ViewInfo.GetHitTest(X, Y);
   // The point belongs to a record
   if (HitTest is TcxGridRecordHitTest) and
      IsGroupedRecord(TcxGridRecordHitTest(HitTest).GridRecord) then
   begin
      LastKey := VK_NONAME;
   end;
end;

procedure TfrmAcctPayable.tbtnCreditNoteClick(Sender: TObject);
begin
    actCreditNote.Enabled := (tabAcctPayable.Visible) and (tvInvoices.Controller.SelectedRowCount = 1);
end;

procedure TfrmAcctPayable.actConvertUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := ((tabAcctPayable.Visible) and (not qryAccounts.IsEmpty));
end;

procedure TfrmAcctPayable.actReverseUpdate(Sender: TObject);
begin
   if pagAcctPayable.ActivePageIndex = 0 then
      actReverse.Enabled := ((tabAcctPayable.Visible) and (dmAxiom.Security.Invoice.Reverse)) OR
                         (qryAccounts.FieldByName('TAKE_ON').AsString = 'N');
end;

procedure TfrmAcctPayable.actCreditNoteExecute(Sender: TObject);
begin
   TfrmInvoiceDebit.Create(Self).DisplayCreditor(qryAccounts.FieldByName('NCREDITOR').AsInteger);
end;

procedure TfrmAcctPayable.actCreditNoteUpdate(Sender: TObject);
begin
    actCreditNote.Enabled := (tabAcctPayable.Visible) and (tvInvoices.Controller.SelectedRowCount = 1);
end;

procedure TfrmAcctPayable.actHoldExecute(Sender: TObject);
var
   iCtr: integer;
   ARowIndex: Integer;
   ARowInfo: TcxRowInfo;
begin
   with tvInvoices.DataController do
   begin
      BeginUpdate;
      try
         if GetSelectedCount > 0 then
         begin
            for iCtr := 0 to GetSelectedCount - 1 do
            begin
               ARowIndex := GetSelectedRowIndex(iCtr);
               ARowInfo := GetRowInfo(ARowIndex);
               if ARowInfo.Level < Groups.GroupingItemCount then
                  Continue
               else
               begin
                  qryAccounts.Edit;
                  if (qryAccounts.FieldByName('HOLD').AsString = 'Y') then
                  begin
                     qryUpdate.SQL.Text := 'UPDATE INVOICE SET HOLD = ''N'' WHERE NINVOICE =' + string(Values[ARowInfo.RecordIndex, tvInvoicesNINVOICE.Index]); // qryAccounts.FieldByName('NINVOICE').AsString;
                     qryUpdate.ExecSQL;
         //            qryUpdate.Close;
                  end
                  else
                  begin
                     qryUpdate.SQL.Text := 'UPDATE INVOICE SET HOLD = ''Y'' WHERE NINVOICE =' + string(Values[ARowInfo.RecordIndex, tvInvoicesNINVOICE.Index]);  //qryAccounts.FieldByName('NINVOICE').AsString;
                     qryUpdate.ExecSQL;
         //            qryUpdate.Close;
                  end;
                  SetHoldPopup;
               end;
            end;
      //      qryAccounts.Close;
      //      qryAccounts.Open;
            qryUpdate.Close;
            qryAccounts.Refresh; // MakeSql;
            if tvInvoices.GroupedColumnCount > 0 then
               PostMessage(Handle, CM_EXPANDGROUPS, Integer(Sender), 0);
         end
         else
            MessageDlg('No items selected', mtInformation, [mbOK], 0);
      finally
         EndUpdate;
      end;
   end;

end;

procedure TfrmAcctPayable.actHoldUpdate(Sender: TObject);
begin
   actHold.Enabled := ((tabAcctPayable.Visible) and (tvInvoices.Controller.SelectedRowCount = 1));

end;

procedure TfrmAcctPayable.actPaySelectedExecute(Sender: TObject);
var
  frmCheque: TfrmCheque;
  iCtr: integer;
  ARowIndex: integer;
begin
   if (tvInvoicesACCT.EditValue = dmAxiom.Entity) then
   begin
      frmCheque := TfrmCheque.Create(Self);

      for iCtr := 0 to tvInvoices.Controller.SelectedRowCount - 1 do
      begin
         ARowIndex := tvInvoices.DataController.GetSelectedRowIndex(iCtr);
         if (tvInvoicesACCT.EditValue <> dmAxiom.Entity) then Exit;
         tvInvoices.ViewData.Records[ARowIndex].Focused  := True;
         if (qryAccounts.FieldByName('OWING').AsFloat <> 0) and (qryAccounts.FieldByName('HOLD').AsString <> 'Y') then
            frmCheque.ChequeFromInvoice(qryAccounts.FieldByName('NINVOICE').AsInteger);
      end;

      if(tvInvoices.Controller.SelectedRowCount > 0) then
         frmCheque.Show()
      else
         frmCheque.Close();
   end
   else
   begin
      MsgInfo('The selected Invoice(s) do(es) not belong to the active Entity.  '+
              'Please check that you are on the correct Entity. '+
              'Current Entity is <'+ dmAxiom.Entity +'> and Entity of Invoice is <'+ tvInvoicesACCT.EditValue+'>' );

      if frmCheque <> nil then frmCheque.Close();
   end;
end;

procedure TfrmAcctPayable.actPaySelectedUpdate(Sender: TObject);
begin
   actPaySelected.Enabled := tabAcctPayable.Visible and (tvInvoices.Controller.SelectedRowCount = 1);
end;

procedure TfrmAcctPayable.actRefreshExecute(Sender: TObject);
begin
    MakeSQL;
end;

procedure TfrmAcctPayable.actRefreshUpdate(Sender: TObject);
begin
   actRefresh.Enabled := tabAcctPayable.Visible;
end;

procedure TfrmAcctPayable.actReverseExecute(Sender: TObject);
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

procedure TfrmAcctPayable.popGridHoldClick(Sender: TObject);
var
   iCtr: integer;
   ARowIndex: Integer;
   ARowInfo: TcxRowInfo;
begin
   with tvInvoices.DataController do
   begin
      BeginUpdate;
      try
         if GetSelectedCount > 0 then
         begin
            for iCtr := 0 to GetSelectedCount - 1 do
            begin
               ARowIndex := GetSelectedRowIndex(iCtr);
               ARowInfo := GetRowInfo(ARowIndex);
               if ARowInfo.Level < Groups.GroupingItemCount then
                  Continue
               else
               begin
                  qryAccounts.Edit;
                  if (qryAccounts.FieldByName('HOLD').AsString = 'Y') then
                  begin
                     qryUpdate.SQL.Text := 'UPDATE INVOICE SET HOLD = ''N'' WHERE NINVOICE =' + string(Values[ARowInfo.RecordIndex, tvInvoicesNINVOICE.Index]); // qryAccounts.FieldByName('NINVOICE').AsString;
                     qryUpdate.ExecSQL;
         //            qryUpdate.Close;
                  end
                  else
                  begin
                     qryUpdate.SQL.Text := 'UPDATE INVOICE SET HOLD = ''Y'' WHERE NINVOICE =' + string(Values[ARowInfo.RecordIndex, tvInvoicesNINVOICE.Index]);  //qryAccounts.FieldByName('NINVOICE').AsString;
                     qryUpdate.ExecSQL;
         //            qryUpdate.Close;
                  end;
                  SetHoldPopup;
               end;
            end;
      //      qryAccounts.Close;
      //      qryAccounts.Open;
            qryUpdate.Close;
            MakeSql;
            if tvInvoices.GroupedColumnCount > 0 then
               PostMessage(Handle, CM_EXPANDGROUPS, Integer(Sender), 0);
         end
         else
            MessageDlg('No items selected', mtInformation, [mbOK], 0);
      finally
         EndUpdate;
      end;
   end;
end;

procedure TfrmAcctPayable.popGridHistoryClick(Sender: TObject);
begin
//   TfrmRptInvoiceHistory.Create(Self).ShowHistory(qryAccounts.FieldByName('ACCT').AsString, qryAccounts.FieldByName('NCHEQUE').AsInteger);
end;

procedure TfrmAcctPayable.SetHoldPopup;
begin
   if qryAccounts.FieldByName('HOLD').AsString = 'Y' then
   begin
      bbtnHold.Caption := 'Un&hold';
      bbtnHold.ImageIndex := BTNREDLIGHT;
      TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[0].IndicatorType := sitRed;
      bbtnHold.Hint := 'Change to allow invoice to proceed';
   end
   else
   begin
      bbtnHold.Caption := '&Hold';
      bbtnHold.ImageIndex := BTNGREENLIGHT;
      TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[0].IndicatorType := sitGreen;
      bbtnHold.Hint := 'Change to hold invoice';
   end;
end;

procedure TfrmAcctPayable.popGridPopup(Sender: TObject);
begin
   if qryAccounts.FieldByName('HOLD').AsString = 'Y' then
   begin
      bbtnHold.Caption := 'Un&hold';
   end
   else
   begin
      bbtnHold.Caption := '&Hold';
   end;
   btnViewAttachment.Enabled := (not qryAccounts.FieldByName('INVOICE_COPY').IsNull);
   btnRemoveAttachment.Enabled := (not qryAccounts.FieldByName('INVOICE_COPY').IsNull);
end;

procedure TfrmAcctPayable.SetHeld;
begin
  TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[0].IndicatorType := sitOff;
  TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[1].IndicatorType := sitOff;
  if (qryAccounts.FieldByName('HOLD').AsString = 'Y') then
  begin
    bbtnHold.ImageIndex := BTNREDLIGHT;
    bbtnHold.Hint := 'Change to allow invoice to proceed';
    TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[1].IndicatorType := sitRed;
    TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[0].IndicatorType := sitOff;
  end
  else if (qryAccounts.FieldByName('HOLD').AsString = 'N') then
  begin
    bbtnHold.ImageIndex := BTNGREENLIGHT;
    bbtnHold.Hint := 'Change to hold invoice';
    TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[1].IndicatorType := sitOff;
    TdxStatusBarStateIndicatorPanelStyle(StatusBar.Panels[2].PanelStyle).Indicators.Items[0].IndicatorType := sitGreen;
  end;
end;

function TfrmAcctPayable.AllAcctPayableTheSame: boolean;
var
   nRowCount, Idx: Integer;
   ABookmark: TBookmark;
   bOriginal, bCurr: string;
begin
   AllAcctPayableTheSame := True;
   with tvInvoices.DataController.DataSet do
   begin
      DisableControls;
      ABookmark := GetBookmark;
//      GV.ViewData.Records[0].Focused := True;
      try
         for nRowCount := 0 to tvInvoices.DataController.RowCount - 1 do
         begin
            if (tvInvoices.ViewData.Records[nRowCount].Level > 0) then
            begin
               tvInvoices.ViewData.Records[nRowCount].Focused := True;
               if bOriginal = '' then
                  bOriginal := qryAccounts.FieldByName('PAY_BY_EFT').AsString
               else
               begin
                  bCurr := qryAccounts.FieldByName('PAY_BY_EFT').AsString;
                  if bCurr <> bOriginal then
                  begin
                     AllAcctPayableTheSame := False;
                     Break;
                  end;
               end;
            end;
            bOriginal := qryAccounts.FieldByName('PAY_BY_EFT').AsString;
         end;
         if BookmarkValid(ABookmark) then
            GotoBookmark(ABookmark);
         FreeBookmark(ABookmark);
         EnableControls;
      except
        // nothing
      end;
   end;
end;

procedure TfrmAcctPayable.popGridPayClick(Sender: TObject);
var
  frmCheque: TfrmCheque;
  iCtr: integer;
  ARowIndex: integer;
begin
   if (tvInvoicesACCT.EditValue = dmAxiom.Entity) then
   begin
      frmCheque := TfrmCheque.Create(Self);

      for iCtr := 0 to tvInvoices.Controller.SelectedRowCount - 1 do
      begin
         ARowIndex := tvInvoices.DataController.GetSelectedRowIndex(iCtr);
         if (tvInvoicesACCT.EditValue <> dmAxiom.Entity) then Exit;
         tvInvoices.ViewData.Records[ARowIndex].Focused  := True;
         if (qryAccounts.FieldByName('OWING').AsFloat <> 0) and (qryAccounts.FieldByName('HOLD').AsString <> 'Y') then
            frmCheque.ChequeFromInvoice(qryAccounts.FieldByName('NINVOICE').AsInteger);
      end;

      if(tvInvoices.Controller.SelectedRowCount > 0) then
         frmCheque.Show()
      else
         frmCheque.Close();
   end
   else
   begin
      MsgInfo('The selected Invoice(s) do(es) not belong to the active Entity.  '+
              'Please check that you are on the correct Entity. '+
              'Current Entity is <'+ dmAxiom.Entity +'> and Entity of Invoice is <'+ tvInvoicesACCT.EditValue+'>' );

      if frmCheque <> nil then frmCheque.Close();
   end;
end;

procedure TfrmAcctPayable.dfCreditorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmCreditorSearch) then
      Application.CreateForm(TfrmCreditorSearch, frmCreditorSearch);

   if frmCreditorSearch.ShowModal = mrOk then
   begin
      dfCreditor.Text := frmCreditorSearch.qryCreditors.FieldByName('SEARCH').AsString;
      NCreditor := frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger;
   end;
end;

procedure TfrmAcctPayable.dfCreditorPropertiesChange(Sender: TObject);
begin
   if dfCreditor.Text = '' then
      NCreditor := -1;
end;

procedure TfrmAcctPayable.dxBarButton3Click(Sender: TObject);
begin
   MakeSQL;
end;

procedure TfrmAcctPayable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryLedger.Close;
   qryTransactions.Close;
   qryAccountTotals.Close;
   qryCheque.Close;
   qryBank.Close;
   qryBankBalance.Close;
   qryCheqreqUpdate.Close;
   qryTransitem.Close;
   qryTemp.Close;
   qryAllocs.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmAcctPayable.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
      dfMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
end;

procedure TfrmAcctPayable.btnViewAttachmentClick(Sender: TObject);
begin
   ViewAttacheInvoice
end;

procedure TfrmAcctPayable.btnRemoveAttachmentClick(Sender: TObject);
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

procedure TfrmAcctPayable.dxBarButton4Click(Sender: TObject);
var
   sFileName: string;
  iPos: integer;
  bStream, fStream: TStream;
begin
//   if Save then
//   begin
      if not dlFile.Execute then
         exit;

      sFileName := dlFile.FileName;
      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         if qryAccounts.State in [dsBrowse] then
            qryAccounts.edit;

         if (not qryAccounts.fieldByname('INVOICE_COPY').IsNull) then
            if MsgAsk('There is a document currently attached. Do you want to continue?') = mrNo then
               Exit;

         qryAccounts.fieldByname('INVOICE_COPY').Clear;
    // check the document
         qryAccounts.FieldByName('INVOICE_COPY_EXT').AsString := Copy(ExtractFileExt(sFileName),2,3);
         bStream := qryAccounts.CreateBlobStream(qryAccounts.FieldByName('INVOICE_COPY') , bmReadWrite);
         fStream := TFileStream.Create(sFileName, fmOpenRead);
         bStream.CopyFrom(fStream, fStream.Size);

         qryAccounts.ApplyUpdates;
      except
         Raise;
      end;
      try
         bStream.free;
      except
        //
      end;
      try
         fStream.free;
      except
         //
      end;
//   end;
end;

procedure TfrmAcctPayable.dxBarButton5Click(Sender: TObject);
//var
//   frmScan: TfrmScan;
// frmInvxxxx: TfrmInvxxxx;
begin
//   PostMessage(Self.Handle, AXM_SCAN,0,0);

//   frmInvxxxx := TfrmInvxxxx.Create(Self, 0, '0');
//   frmInvxxxx.ShowModal;

//   frmScan := TfrmScan.Create(Self);
// frmScan.InvoiceNo := qryAccounts.FieldByName('NINVOICE').AsInteger;
//   if frmScan.ShowModal = mrOk then
//      qryAccounts.Refresh;
end;

procedure TfrmAcctPayable.ViewAttacheInvoice;
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

         sFileName := dmAxiom.GetEnvVar('TMP')+'\';
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

procedure TfrmAcctPayable.tvInvoicesCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   ViewAttacheInvoice;
end;

procedure TfrmAcctPayable.OpenScanScreen(var Message: TMessage);
var
   frmScan: TfrmInvScan;
//   frmInvxxxx: TfrmInvxxxx;
begin
   frmScan := TfrmInvScan.Create(Self, qryAccounts.FieldByName('NINVOICE').AsInteger);
   frmScan.ShowModal;

//   frmScan := TfrmScan.Create(Self);
//   frmScan.InvoiceNo := qryAccounts.FieldByName('NINVOICE').AsInteger;
//   if frmScan.ShowModal = mrOk then
//      qryAccounts.Refresh;
   inherited;
end;

procedure TfrmAcctPayable.ScanExecute(Sender: TObject);
begin
   PostMessage(Self.Handle, AXM_SCAN,0,0);
end;

end.
