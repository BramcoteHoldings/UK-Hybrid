unit invoicelist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCalendar, cxCurrencyEdit, cxBlobEdit, cxTextEdit, dxBar, OracleUniProvider, Uni,
  DBAccess, MemDS, cxSplitter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, cxContainer, cxCheckBox,
  StdCtrls, cxMaskEdit, cxButtonEdit, DateChangeButton, ComCtrls,
  ppParameter, ppModule, raCodMod, ppBands, ppCtrls, ppClass, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  cxGridExportLink, ppDesignLayer, cxPCdxBarPopupMenu, cxGroupBox,
  cxRadioGroup, cxNavigator, dxBarExtItems, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog;

const
   UM_CHECK = WM_USER + 10000;

type
  TfrmInvoiceList = class(TForm)
    pagInvoices: TcxPageControl;
    tabInvoices: TcxTabSheet;
    tabFilter: TcxTabSheet;
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
    qryAccounts: TUniQuery;
    dsAccounts: TUniDataSource;
    qryTransactions: TUniQuery;
    dsTransactions: TUniDataSource;
    tvInvoicesNAME: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    btnClose: TdxBarButton;
    popPrint: TdxBarPopupMenu;
    popPay: TdxBarPopupMenu;
    popGrid: TdxBarPopupMenu;
    tbtnReverse: TdxBarButton;
    tbtnPayInvoice: TdxBarButton;
    tbtnCreditNote: TdxBarButton;
    btnHold: TdxBarButton;
    btnI: TdxBarButton;
    tbtnPrint: TdxBarButton;
    cbShowAll: TcxCheckBox;
    editCreditor: TcxButtonEdit;
    Label1: TLabel;
    popPrintTrialBalance: TdxBarButton;
    dxBarButton3: TdxBarButton;
    plInvoices: TppDBPipeline;
    rptCreditorTrans: TppReport;
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
    ppParameterList1: TppParameterList;
    qryInvoices: TUniQuery;
    dsInvoices: TUniDataSource;
    dxBarButton2: TdxBarButton;
    tbtnExport2Excel: TdxBarButton;
    OpenDialog: TOpenDialog;
    tvInvoicesPAY_DATE: TcxGridDBColumn;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    fraInvoiceSearch: TcxGroupBox;
    Label4: TLabel;
    tbInvoiceNumber: TcxTextEdit;
    fraActive: TcxRadioGroup;
    fraEqual: TcxGroupBox;
    Label7: TLabel;
    tbCreditorCode: TcxTextEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    chkDateFrom: TCheckBox;
    chkDateTo: TCheckBox;
    dtpDateFrom: TDateTimePicker;
    dtpDateTo: TDateTimePicker;
    dcToday: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    GroupBox2: TGroupBox;
    rbDueDate: TRadioButton;
    rbInvoiceDate: TRadioButton;
    tvInvoicesINCLUDE: TcxGridDBColumn;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    procedure btnCloseClick(Sender: TObject);
    procedure pagInvoicesChange(Sender: TObject);
    procedure tvInvoicesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure qryAccountsAfterScroll(DataSet: TDataSet);
    procedure qryTransactionsBeforeOpen(DataSet: TDataSet);
    procedure btnIClick(Sender: TObject);
    procedure btnHoldClick(Sender: TObject);
    procedure qryAccountsAfterOpen(DataSet: TDataSet);
    procedure qryAccountsBeforeClose(DataSet: TDataSet);
    procedure qryAccountsBeforeScroll(DataSet: TDataSet);
    procedure tbtnReverseClick(Sender: TObject);
    procedure tbtnPayInvoiceClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tbtnPrintClick(Sender: TObject);
    procedure popPrintTrialBalanceClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure tbtnExport2ExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvInvoicesINCLUDEPropertiesEditValueChanged(Sender: TObject);
    procedure tvInvoicesFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvInvoicesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
  private
    { Private declarations }
    procedure MakeSQL;
    procedure SetButtons;
    procedure ViewAttacheInvoice;
  public
    { Public declarations }
    procedure Check(AGridView: TcxGridDBTableView);
    procedure UmCheck(var Message: TMessage); message UM_CHECK;
  end;

var
  frmInvoiceList: TfrmInvoiceList;

implementation

{$R *.dfm}

uses
   axiomdata, InvoiceChangeDueDate, InvoiceDebitNote, InvoiceReverse, MiscFunc,
   Cheque, CreditorSearch, Desktop, citfunc, Reports, ShellAPI;
   

procedure TfrmInvoiceList.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmInvoiceList.pagInvoicesChange(Sender: TObject);
begin
   if pagInvoices.ActivePage = tabInvoices then
   begin
      MakeSQL;
      qryAccounts.AfterScroll := nil;
      qryAccounts.Open;
      qryAccounts.AfterScroll := qryAccountsAfterScroll;
   end
   else
   begin
      tbtnReverse.Enabled:= False;
      tbtnPrint.Enabled := False;
      tbtnCreditNote.Enabled:= False;
      tbtnPayInvoice.Enabled:= False;
   end;
end;

procedure TfrmInvoiceList.MakeSQL;
var
   sSQL, sOrderBy, sWhere, sAND: string;
begin
   sAND := ' AND ';
   qryAccounts.Close;
   sSQL :=  'SELECT i.NCHEQUE, i.ROWID, TRUNC(i.INVOICE_DATE) AS INVOICE_DATE, '+
            'i.AMOUNT, i.OWING, i.ACCT, i.REFNO, i.DESCR,'+
            'TRUNC(i.DUE_DATE) AS DUE_DATE, i.HOLD, i.NINVOICE, i.INVOICE_COPY, i.INVOICE_COPY_EXT, '+
            '(i.amount - i.owing) AS paid, CASE WHEN (i.hold = ''Y'') THEN ''Held'' ELSE NULL END AS held,'+
            ' p.NAME, i.ncreditor, c.active, i.last_payment, i.rowid  '+
            'FROM phonebook p, creditor c, invoice i '+
            'WHERE i.ncreditor = c.ncreditor AND c.nname = p.nname ';  //and i.acct = '+ QuotedStr(dmAxiom.Entity);
   if (not cbShowAll.Checked) then
   begin
      sWhere := sAND + ' i.OWING <> 0 ';
      sAND := ' AND ';
   end;

   if (editCreditor.Text <> '') and (editCreditor.Tag <> 0) then
      sWhere := sWhere + sAND + ' i.ncreditor = ' + IntToStr(editCreditor.Tag);

   if tbCreditorCode.Text <> '' then
   begin
     sWhere := sWhere + sAND + 'c.CODE = ''' + tbCreditorCode.Text + '''';
     sAND := ' AND ';
   end;

   if rbInvoiceDate.Checked then
   begin
      if chkDateFrom.Checked then
      begin
         sWhere := sWhere + sAND + 'TRUNC(i.INVOICE_DATE) >= :P_DateFrom ';
         sAND := ' AND ';
      end
      else
         sWhere := sWhere + sAND + 'TRUNC(i.INVOICE_DATE) >= :P_DateFrom ';
         sAND := ' AND ';
   end;

   if rbDueDate.Checked then
   begin
      if chkDateFrom.Checked then
      begin
         sWhere := sWhere + sAND + 'TRUNC(i.DUE_DATE) >= :P_DateFrom ';
         sAND := ' AND ';
      end
      else
         sWhere := sWhere + sAND + 'TRUNC(i.DUE_DATE) >= :P_DateFrom ';
         sAND := ' AND ';
   end;



   case fraActive.ItemIndex of
     0: begin
          sWhere := sWhere + sAND + 'c.ACTIVE = ''Y''';
          sAND := ' AND ';
        end;
     1: begin
          sWhere := sWhere + sAND + 'c.ACTIVE = ''N''';
          sAND := ' AND ';
        end;
   end;

   if tbInvoiceNumber.Text <> '' then
   begin
     sWhere := sWhere + sAND + 'i.REFNO LIKE ' + QuotedStr('%' + tbInvoiceNumber.Text + '%');
     sAND := ' AND ';
   end;

   if chkDateTo.Checked then
   begin
      sWhere := sWhere + sAND + 'TRUNC(i.INVOICE_DATE) < :p_dateto ';
      sAND := ' AND ';
   end
   else
   begin
      sWhere := sWhere + sAND + 'TRUNC(i.INVOICE_DATE) < :p_dateto ';
   end;

   sOrderBy := ' ORDER BY i.INVOICE_DATE DESC';
   qryAccounts.SQL.Text := sSQL + sWhere + sOrderBy;

   if chkDateFrom.Checked then
   begin
      qryAccounts.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
   end
   else
      qryAccounts.ParamByName('P_DateFrom').AsDate := 0;

   if chkDateTo.Checked then
   begin
      qryAccounts.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
   end
   else
   begin
      qryAccounts.ParamByName('P_DateTo').AsDate := Now() + 1;
   end;
end;

procedure TfrmInvoiceList.tvInvoicesCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   SetButtons;
end;

procedure TfrmInvoiceList.tvInvoicesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  AView: TcxGridDBTableView;
begin
  AView := Sender as TcxGridDBTableView;
  PostMessage(Handle, UM_CHECK, Integer(AView), 0);
end;

procedure TfrmInvoiceList.tvInvoicesINCLUDEPropertiesEditValueChanged(
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

procedure TfrmInvoiceList.tvInvoicesMouseDown(Sender: TObject;
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

procedure TfrmInvoiceList.tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  try
      if not VarIsNull(AValue) then
      begin
         if (tvInvoices.Controller.SelectedRowCount > 0) then
            dxBarStatic1.Caption := 'Total selected = $' + string(AValue)
         else
            dxBarStatic1.Caption := 'Total selected = $0.00';
      end
      else
         dxBarStatic1.Caption := 'Total selected = $0.00';
   except
   //
   end;
end;

procedure TfrmInvoiceList.tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
   try
      if not VarIsNull(AValue) then
      begin
         if (tvInvoices.Controller.SelectedRowCount > 0) then
            dxBarStatic2.Caption := 'Number of records selected = ' + string(AValue)
         else
            dxBarStatic2.Caption := 'Number of records selected = 0';
      end;
   except
   //
   end;
end;

procedure TfrmInvoiceList.qryAccountsAfterScroll(DataSet: TDataSet);
begin
   if qryAccounts.Active then
      qryTransactions.Open
end;


procedure TfrmInvoiceList.qryTransactionsBeforeOpen(DataSet: TDataSet);
begin
//   qryTransactions.ParamByName('ACCT').AsString:= qryAccounts.FieldByName('ACCT').AsString;
   qryTransactions.ParamByName('NINVOICE').AsInteger:= qryAccounts.FieldByName('NINVOICE').AsInteger;
end;

procedure TfrmInvoiceList.SetButtons;
begin
  // set the buttons based on security settings
//  tbtnNew.Enabled:= dmAxiom.Security.Creditor.Create;
//  tbtnDelete.Enabled:= dmAxiom.Security.Creditor.Delete and (qryCreditor.FieldByName('ACTIVE').AsString <> 'Y');
//  dbtbName.Enabled:= dmAxiom.Security.Creditor.Edit;
//  dbtbContact.Enabled:= dmAxiom.Security.Creditor.Edit;
//  cmbGender.Enabled:= dmAxiom.Security.Creditor.Edit;
//  dbtbCreditorGroup.Enabled:= dmAxiom.Security.Creditor.Edit;
//  cbActive.Enabled:= dmAxiom.Security.Creditor.Edit and dmAxiom.Security.Creditor.Activate;
//  dbchkHold.Enabled:= dmAxiom.Security.Creditor.Edit;
  // 31/05/2004 Tony - disabled the chart code field and made invisible
  // dbtbChartCode.Enabled:= dmAxiom.Security.Creditor.Edit;
//  dbedTaxno.Enabled:= dmAxiom.Security.Creditor.Edit;

  tvInvoices.OptionsData.Editing := dmAxiom.Security.Creditor.Edit;

//  dbtbTerms.Enabled:= dmAxiom.Security.Creditor.Edit;
//  dbtbLimit.Enabled:= dmAxiom.Security.Creditor.Edit;

//  dbtbSearchkey.Enabled:= dmAxiom.Security.Creditor.Edit;
//  dbtbPBName.Enabled:= dmAxiom.Security.Creditor.Edit;
//  dbtbPBTitle.Enabled:= dmAxiom.Security.Creditor.Edit;
//  dbmmoAddress.Enabled:= dmAxiom.Security.Creditor.Edit;

//  tbEdit.Enabled := dmAxiom.Security.Creditor.Edit;

//  tbtnAccountNew.Enabled:= dmAxiom.Security.Invoice.Create and
//                           (qryCreditor.FieldByName('ACTIVE').AsString = 'Y');
  tbtnReverse.Enabled:= dmAxiom.Security.Invoice.Reverse and
                        (qryAccounts.FieldByName('ACTIVE').AsString = 'Y');
//                         and  (qryAccounts.FieldByName('ACCT').AsString = dmAxiom.Entity);

  tbtnCreditNote.Enabled:= dmAxiom.Security.Invoice.CreditNote and
                           (qryAccounts.FieldByName('ACTIVE').AsString = 'Y');
  tbtnPayInvoice.Enabled:= dmAxiom.Security.Cheque.Create and
                           (qryAccounts.FieldByName('ACTIVE').AsString = 'Y');
//                            and (qryAccounts.FieldByName('ACCT').AsString = dmAxiom.Entity);
  tbtnPrint.Enabled := dmAxiom.Security.Invoice.Access;

//  tbtnMerge.Enabled:= dmAxiom.Security.Creditor.Merge and
//                      (qryCreditor.FieldByName('ACTIVE').AsString = 'Y');
end;

procedure TfrmInvoiceList.btnIClick(Sender: TObject);
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
            if LfrmInvoiceChangeDue.ShowModal = mrOk then
            begin
               qryAccounts.AfterScroll := nil;
               qryAccounts.Close;
               qryAccounts.Open;
               qryAccounts.AfterScroll := qryAccountsAfterScroll;
            end;
         end;
      end
      else
         MsgErr('There have been payments on this Invoice.');
   end;
end;

procedure TfrmInvoiceList.btnHoldClick(Sender: TObject);
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
      qryAccounts.Refresh;
  end;
//  SetHoldPopup;
end;

procedure TfrmInvoiceList.qryAccountsAfterOpen(DataSet: TDataSet);
begin
   SetButtons;

   qryTransactions.Open
end;

procedure TfrmInvoiceList.qryAccountsBeforeClose(DataSet: TDataSet);
begin
   qryTransactions.Close;
end;

procedure TfrmInvoiceList.qryAccountsBeforeScroll(DataSet: TDataSet);
begin
   qryTransactions.Close;
end;

procedure TfrmInvoiceList.tbtnReverseClick(Sender: TObject);
var
  LfrmInvoiceReverse: TfrmInvoiceReverse;
begin
  if not qryAccounts.IsEmpty then
  begin
    if qryAccounts.FieldByName('OWING').AsFloat = qryAccounts.FieldByName('AMOUNT').AsFloat then
    begin
      if MsgAsk('Do you want to reverse Invoice ' + qryAccounts.FieldByName('REFNO').AsString + '?') = mrYes then
      begin
        LfrmInvoiceReverse := TfrmInvoiceReverse.Create(Self);
        LfrmInvoiceReverse.DisplayInvoice(Self.qryAccounts.FieldByName('NINVOICE').AsInteger);
        if LfrmInvoiceReverse.ShowModal = mrOK then
        begin
          qryAccounts.AfterScroll := nil;
          qryAccounts.Close;
          qryAccounts.Open;
          qryAccounts.AfterScroll := qryAccountsAfterScroll;
        end;
      end;
    end else
      MsgErr('There have been payments on this Invoice.' + #13 + #13 + 'You will need to issue a credit note if you want to reduce the amount owing.');
  end;
end;

procedure TfrmInvoiceList.tbtnPayInvoiceClick(Sender: TObject);
var
  frmCheque: TfrmCheque;
  iCtr: integer;
  ARowIndex: integer;
begin
   // Automatically post the selected items
   frmCheque := TfrmCheque.Create(Self);

   for iCtr := 0 to tvInvoices.Controller.SelectedRowCount - 1 do
   begin
      ARowIndex := tvInvoices.DataController.GetSelectedRowIndex(iCtr);
      tvInvoices.ViewData.Records[ARowIndex].Focused  := True;
      if (qryAccounts.FieldByName('OWING').AsFloat <> 0) and (qryAccounts.FieldByName('HOLD').AsString <> 'Y') then
         frmCheque.ChequeFromInvoice(qryAccounts.FieldByName('NINVOICE').AsInteger);
   end;

   // MGD 30/9/02 - if none selected, dont show.....
   if(tvInvoices.Controller.SelectedRowCount > 0) then
      frmCheque.Show()
   else
      frmCheque.Close();
end;

procedure TfrmInvoiceList.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   try
      if not FormExists(frmCreditorSearch) then
         Application.CreateForm(TfrmCreditorSearch, frmCreditorSearch);
      if frmCreditorSearch.ShowModal = mrOk then
      begin
         editCreditor.Tag := frmCreditorSearch.qryCreditors.FieldByName('ncreditor').AsInteger;
         editCreditor.Text := frmCreditorSearch.qryCreditors.FieldByName('search').AsString;
      end;
   finally
      frmCreditorSearch.Release;
   end;
end;

procedure TfrmInvoiceList.tbtnPrintClick(Sender: TObject);
begin
   popPrintTrialBalance.Click;
end;

procedure TfrmInvoiceList.popPrintTrialBalanceClick(Sender: TObject);
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

procedure TfrmInvoiceList.dxBarButton3Click(Sender: TObject);
begin
   qryInvoices.Close;
//   qryInvoices.ParamByName('NCREDITOR').AsInteger := qryCreditor.FieldByName('NCREDITOR').AsInteger;
   if (cbShowAll.Checked) then
      qryInvoices.ParamByName('showall').AsInteger := 1
   else
      qryInvoices.ParamByName('showall').AsInteger := 0;

   qryInvoices.Open;
   rptCreditorTrans.Print;
end;

procedure TfrmInvoiceList.FormCreate(Sender: TObject);
begin
   dcToday.Click;
end;

procedure TfrmInvoiceList.ViewAttacheInvoice;
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


procedure TfrmInvoiceList.dxBarButton2Click(Sender: TObject);
begin
   ViewAttacheInvoice;
end;

procedure TfrmInvoiceList.tbtnExport2ExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrInvoices, True, True,True,'xls');
   end;

end;

procedure TfrmInvoiceList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmInvoiceList.Check(AGridView: TcxGridDBTableView);
var
  i: integer;
begin
   for i:= 0 to AGridView.DataController.RecordCount - 1 do
   begin
      if AGridView.DataController.Values[i, tvInvoicesINCLUDE.Index] = True then
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True), true)
      else
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True), false);
   end;
end;

procedure TfrmInvoiceList.UmCheck(var Message: TMessage);
begin
  Check(TcxGridDBTableView(Message.WParam));
end;

end.

