unit ReceiptReverse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ComCtrls, DBCtrls, OracleUniProvider, Uni, DBAccess, MemDS,
  DateTimeAccount, cxLookAndFeelPainters, cxButtons, cxLabel,
  cxDBLabel, cxControls, cxContainer, cxEdit, cxGroupBox, cxTextEdit,
  cxMemo, Menus, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  cxLookAndFeels, cxMaskEdit, cxDropDownEdit, cxCalendar,
  EnforceCustomDateEdit, dxCore, cxNavigator, cxDateUtils, dxSkinsCore,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TfrmReceiptReverse = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    qryReceipt: TUniQuery;
    dsReceipt: TUniDataSource;
    qryReceiptRV: TUniQuery;
    qryTransitems: TUniQuery;
    qryAllocs: TUniQuery;
    qryBankDepInsert: TUniQuery;
    qryTmp: TUniQuery;
    qryBillUpdate: TUniQuery;
    qryCheqreqTrans: TUniQuery;
    qryInsertCheqreqTrans: TUniQuery;
    qryBill: TUniQuery;
    gbOriginal: TcxGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    mlReason: TcxMemo;
    btnOriginal: TcxButton;
    grdSubBillsLevel1: TcxGridLevel;
    grdSubBills: TcxGrid;
    tvSubBills: TcxGridDBBandedTableView;
    qrySubbills: TUniQuery;
    dsSubbills: TUniDataSource;
    tvSubBillsDEBTOR_NAME: TcxGridDBBandedColumn;
    tvSubBillsFEES: TcxGridDBBandedColumn;
    tvSubBillsDISB: TcxGridDBBandedColumn;
    tvSubBillsANTD: TcxGridDBBandedColumn;
    tvSubBillsSUND: TcxGridDBBandedColumn;
    tvSubBillsTRUST: TcxGridDBBandedColumn;
    tvSubBillsTAX: TcxGridDBBandedColumn;
    tvSubBillsOWING: TcxGridDBBandedColumn;
    tvSubBillsTOTAL: TcxGridDBBandedColumn;
    tvSubBillsColumn1: TcxGridDBBandedColumn;
    tvSubBillsNSUBBILL_ID: TcxGridDBBandedColumn;
    qrySubBillUpdate: TUniQuery;
    dtpReverse: TEnforceCustomDateEdit;
    qryFeeDist: TUniQuery;
    qryFeeDistInsert: TUniQuery;
    qryReceiptUpdate: TUniQuery;
    ActionManager1: TActionManager;
    actOk: TAction;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    qryChequeRV: TUniQuery;
    qryCheque: TUniQuery;
    qryInvoice: TUniQuery;
    qryInvoiceUpdate: TUniQuery;
    qryTransItemChq: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOriginalClick(Sender: TObject);
    procedure actOkUpdate(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
    FNmemo: integer;
    FNSubBill: integer;
    FSubBills: boolean;
    procedure RvReceipt(iOldNreceipt : integer; dtReverse : TDateTime; sReason : string);
    procedure RvCheque(iOldNcheque : integer; dtReverse : TDateTime; sReason : string);

  public
    { Public declarations }
    procedure DisplayReceipt(iNReceipt : integer);
  end;

implementation

{$R *.DFM}

uses
  AxiomData, MiscFunc, glComponentUtil;

procedure TfrmReceiptReverse.DisplayReceipt(iNReceipt : integer);
begin
   FSubBills := False;
   with qryReceipt do
   begin
      Close;
      ParamByName('NRECEIPT').AsInteger := iNReceipt;
      Open;
      if IsEmpty then
         Self.Close
      else
      begin
         btnOriginal.Visible := FieldByName('CREATED').AsDateTime >= dtpReverse.Properties.MinDate;
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'select nmemo, nsubbill from alloc where nreceipt = :nreceipt';
            ParamByName('nreceipt').AsInteger := iNReceipt;
            Open;
            FNmemo := FieldByName('nmemo').AsInteger;
//            FNSubBill := FieldByName('nsubbill').AsInteger;
            Close;
         end;
//         qrySubbills.Close;
//         qrySubbills.ParamByName('NMEMO').AsInteger := FNmemo;
//         qrySubbills.ParamByName('NSUBBILL').AsInteger := FNSubBill;
//         qrySubbills.Open;
         if qrySubbills.RecordCount > 0 then
         begin
//            FSubBills := True;
//            Self.Height := 421;
//            Self.Width :=  671;
//            grdSubBills.Visible := True;
         end;
//         Self.ShowModal;
      end;
   end;
end;

procedure TfrmReceiptReverse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryReceipt.Close;
  qryAllocs.Close;
  qryTransItems.Close;

  Self.Release;
end;

procedure TfrmReceiptReverse.FormShow(Sender: TObject);
begin
   dtpReverse.Date := Date();
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpReverse.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

{
  Added 31.10.2002  GG
  Allow user to change reverse date only if they have authority
}
  btnOriginal.Enabled:= dmAxiom.Security.Receipt.ChangeDate;
  dtpReverse.Enabled:= dmAxiom.Security.Receipt.ChangeDate;

  mlReason.SetFocus;
end;

procedure TfrmReceiptReverse.RvReceipt(iOldNreceipt : integer; dtReverse : TDateTime; sReason : string);
var
  iRvNreceipt, iRvBankdep: integer;
  Amount: Currency;
  FeesTax, DisbTax, AntdTax, UpCredTax, SundTax: Currency;
  FeeDistAmt, TotalFeeDistAmt: Currency;
  FeeDistCount, TotalFeeDistCount: integer;
begin
{
  Added 27.9.2002 GG

  Zero the ledger total before beginning
}
   ZeroLedgerTotal;

   { Reverses the Receipt specified by the iOldNReceipt number }
   if not qryReceipt.IsEmpty then
   begin
      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         // If it is banked, reverse the entry and reconcile it
         iRvBankdep := 0;
         iRvNreceipt := 0;
         if qryReceipt.FieldByName('BANKED').AsString = 'Y' then
         begin
            with qryBankdepInsert do
            begin
               ParamByName('ACCT').AsString := qryReceipt.FieldByName('ACCT').AsString;
               ParamByName('DEPOSIT_DATE').AsDateTime := dtpReverse.Date;
               ParamByName('AMOUNT').AsFloat := 0 - qryReceipt.FieldByName('AMOUNT').AsCurrency;
               ParamByName('LAST_NRECEIPT').AsInteger := iRvNreceipt;
               iRvBankdep := TableInteger('BANK', 'ACCT', qryReceipt.FieldByName('ACCT').AsString, 'NBANKDEP') + 1;
               ParamByName('NBANKDEP').AsInteger := iRvBankdep;
               ParamByName('RECONCILED').AsString := 'Y';
               ParamByName('RECONDATE').AsDateTime := dtpReverse.Date;

               ExecSQL;
         end;
         with qryTmp do
         begin
            SQL.Text := 'UPDATE BANK SET NBANKDEP = (NBANKDEP + 1) WHERE ACCT = '+
                        QuotedStr(qryReceipt.FieldByName('ACCT').AsString);
            ExecSQL;
         end;

         // If this was a bank deposit all by itself, reconcile it now
         with qryTmp do
         begin
            SQL.Clear;
            SQL.Add('UPDATE BANKDEP');
            SQL.Add('SET RECONCILED = ''Y'', RECONDATE = :RECONDATE');
            SQL.Add('WHERE ACCT = ' + QuotedStr(qryReceipt.FieldByName('ACCT').AsString));
            SQL.Add('  AND NBANKDEP = ' + QuotedStr(qryReceipt.FieldByName('NBANKDEP').AsString));
            SQL.Add('  AND AMOUNT = :AMOUNT');
            ParamByName('RECONDATE').AsDateTime := Trunc(dtpReverse.Date);
            ParamByName('AMOUNT').AsCurrency := qryReceipt.FieldByName('AMOUNT').AsCurrency;
            ExecSQL;
         end;
      end;

      // Make a reversal copy of this record
      with qryReceiptRV do
      begin
         iRvNreceipt := GetSequenceNumber('SQNC_NRECEIPT');
         ParamByName('CREATED').AsDateTime := dtReverse;
         ParamByName('ACCT').AsString := qryReceipt.FieldByName('ACCT').AsString;
         ParamByName('RCPTNO').AsString := qryReceipt.FieldByName('RCPTNO').AsString + 'RV';
         ParamByName('AMOUNT').AsFloat := 0 - qryReceipt.FieldByName('AMOUNT').AsCurrency;
         ParamByName('PAYOR').AsString := qryReceipt.FieldByName('PAYOR').AsString;
         ParamByName('DRAWER').AsString := qryReceipt.FieldByName('DRAWER').AsString;
         ParamByName('BANK').AsString := qryReceipt.FieldByName('BANK').AsString;
         ParamByName('BRANCH').AsString := qryReceipt.FieldByName('BRANCH').AsString;
         ParamByName('CHQNO').AsString := qryReceipt.FieldByName('CHQNO').AsString;
         ParamByName('RVBY').AsString := dmAxiom.UserID;
         ParamByName('CCTYPE').AsString := qryReceipt.FieldByName('CCTYPE').AsString;
         ParamByName('BANKED').AsString := 'Y';
         ParamByName('CLEARED').AsString := qryReceipt.FieldByName('CLEARED').AsString;
         ParamByName('NRECEIPT').AsInteger := iRvNreceipt;
         ParamByName('TRUST').AsString := qryReceipt.FieldByName('TRUST').AsString;
         ParamByName('DESCR').AsString := sReason;
         ParamByName('REVERSED_DATE').AsDateTime := dtReverse;
         ParamByName('RV_NRECEIPT').AsInteger := iOldNreceipt;
         if iRvBankdep <> 0 then
            ParamByName('NBANKDEP').AsInteger := iRvBankdep;
         ExecSQL;
      end;

      with qryReceiptUpdate do
      begin
         ParamByName('RV_NRECEIPT').AsInteger := iRvNreceipt;
         ParamByName('NRECEIPT').AsInteger := iOldNreceipt;
         ExecSQL;
      end;

      // Now reverse the Transaction items
      with qryTransitems do
      begin
         Close;
         ParamByName('NOWNER').AsInteger := iOldNReceipt;
         Open;
         while not EOF do
         begin
//          Edit;
//          FieldByName('REFNO').AsString := qryReceipt.FieldByName('RCPTNO').AsString + 'CN';
//          FieldByName('RVDATE').AsDateTime := dtReverse;
//          Post;

{
  Code Added 27.9.2002 GG

  Keep track of the Ledger Transactions.  If they don't balance, this operation
  will ultimately fail when we check the ledger total later in this routine.
}
            UpdateLedgerTotal(qryTransItems.FieldByName('AMOUNT').AsCurrency);
            RvNaccount(qryTransitems, dtReverse, qryReceipt.FieldByName('RCPTNO').AsString + 'RV', sReason,
                     'RECEIPT', iRvNReceipt);
            Next;
         end;
      end;

{
  Code Modified 11.11.2002 GG

  Removed with clause

      with qryAllocs do
      begin
        Close;
        ParamByName('NRECEIPT').AsInteger := iOldNReceipt;
        Open;
        while not EOF do
        begin
//          Edit;
//          FieldByName('REFNO').AsString := qryReceipt.FieldByName('RCPTNO').AsString + 'CN';
//          FieldByName('PRIVATE').AsString := 'Y';
//          Post;
          if FieldByName('TRUST').AsString = 'T' then
            RvAlloc(qryAllocs, dtReverse, qryReceipt.FieldByName('RCPTNO').AsString + 'RV', sReason, 0, iRvNReceipt, 0, 'TRUST_BAL', 'RV')
          else
            if qryAllocs.FieldByName('TYPE').AsString = 'DR' then
              RvAlloc(qryAllocs, dtReverse, qryReceipt.FieldByName('RCPTNO').AsString + 'RV', sReason, 0, iRvNReceipt, 0, 'UNBILL_DISB', 'DR')
            else
              RvAlloc(qryAllocs, dtReverse, qryReceipt.FieldByName('RCPTNO').AsString + 'RV', sReason, 0, iRvNReceipt, 0, 'DEBTORS', 'RV');
          Next;
        end;
      end;
}
      // Now reverse the Allocs
      qryAllocs.Close;
      qryAllocs.ParamByName('NRECEIPT').AsInteger := iOldNReceipt;
      qryAllocs.Open;
      while not qryAllocs.EOF do
      begin
//        qryAllocs.Edit;
//        qryAllocs.FieldByName('REFNO').AsString := qryReceipt.FieldByName('RCPTNO').AsString + 'CN';
//        qryAllocs.FieldByName('PRIVATE').AsString := 'Y';
//        qryAllocs.Post;
         if qryAllocs.FieldByName('TRUST').AsString = 'T' then
            RvAlloc(qryAllocs, dtReverse, qryReceipt.FieldByName('RCPTNO').AsString + 'RV', sReason, 0, iRvNReceipt, 0, 'TRUST_BAL', 'RV',0,True)
         else
         begin
            if qryAllocs.FieldByName('TYPE').AsString = 'DR' then
            begin
               RvAlloc(qryAllocs, dtReverse, qryReceipt.FieldByName('RCPTNO').AsString + 'RV', sReason, 0, iRvNReceipt, 0, 'UNBILL_DISB', 'DR',0,True);
               //if disbursement receipt need to reset the alloc
               with qryTmp do
               begin
                  SQL.Clear;
                  SQL.Add('UPDATE ALLOC');
                  SQL.Add('SET BILLED = ''N'' ');
                  SQL.Add('WHERE NALLOC = :NALLOC');
                  ParamByName('NALLOC').AsInteger := qryAllocs.FieldByName('DISB_NALLOC_RECEIPT').AsInteger;
                  ExecSQL;
               end;
            end
            else
               RvAlloc(qryAllocs, dtReverse, qryReceipt.FieldByName('RCPTNO').AsString + 'RV', sReason, 0, iRvNReceipt, 0, 'DEBTORS', 'RV',0, True);
         end;

{
Code modified 11.11.2002 GG

Before finishing with this alloc, make sure that we deduct the amounts paid on the bill header.

We will need to replicate what goes on when we create the receipt
}
        if (qryAllocs.FieldByName('BILLED').AsString = 'N') and
           (qryAllocs.FieldByName('NMEMO').AsInteger <> 0) then
        begin
          try
            qryBillUpdate.ParamByName('DATE_LAST_RECPT').AsDateTime := qryReceipt.FieldByName('CREATED').AsDateTime;
            if FSubBills then
               qrySubBillUpdate.ParamByName('DATE_LAST_RECPT').AsDateTime := qryReceipt.FieldByName('CREATED').AsDateTime;

            if qryBill.Active then
              qryBill.Close;


            qryBill.ParamByName('NMEMO').AsInteger:= qryAllocs.FieldByName('NMEMO').AsInteger;
            qryBill.Open;

            // Allocate Fees
            if qryAllocs.FieldByName('FEE').AsCurrency = 0 then
            begin
              qryBillUpdate.ParamByName('FEES_PAID').AsCurrency:= 0;
              qryBillUpdate.ParamByName('FEESTAX_PAID').AsCurrency:= 0;
            end
            else
            begin
              // We have to proportion the tax out of the fees
              Amount:= qryAllocs.FieldByName('FEE').AsCurrency;
              FeesTax:= TaxCalc2(Amount, 'RATE', 'GSTIN' , Date);
              if FeesTax > qryBill.FieldByName('FEESTAX_PAID').AsCurrency then
              begin
                // recalculate amounts to be allocated to fees tax paid and fees paid
                FeesTax:= qryBill.FieldByName('FEESTAX_PAID').AsCurrency;
                Amount:= qryAllocs.FieldByName('FEE').AsCurrency - FeesTax
              end
              else
              if FeesTax < qryBill.FieldByName('FEESTAX_PAID').AsCurrency then
              begin
                {
                 Check we have paid enough tax, and aren't driving the ex-tax
                 amount into a negative value
                }
                if qryAllocs.FieldByName('FEE').AsCurrency - FeesTax >
                     qryBill.FieldByName('FEES_PAID').AsCurrency then
                begin
                  FeesTax:= FeesTax + ((qryAllocs.FieldByName('FEE').AsCurrency - FeesTax) - qryBill.FieldByName('FEES_PAID').AsCurrency);
                  Amount:= qryAllocs.FieldByName('FEE').AsCurrency - FeesTax
                end
              end;
              qryBillUpdate.ParamByName('FEESTAX_PAID').AsCurrency:= FeesTax;
              qryBillUpdate.ParamByName('FEES_PAID').AsCurrency:= Amount;
            end;
            if FSubBills then
            begin
               qrySubBillUpdate.ParamByName('FEES_PAID').AsCurrency:= 0;
               qrySubBillUpdate.ParamByName('FEESTAX_PAID').AsCurrency:= 0;
            end;

            // Allocate Disbursements
            if qryAllocs.FieldByName('DISB').AsCurrency = 0 then
            begin
              qryBillUpdate.ParamByName('DISB_PAID').AsCurrency:= 0;
              qryBillUpdate.ParamByName('DISBTAX_PAID').AsCurrency:= 0;
            end
            else
            begin
              Amount:= qryAllocs.FieldByName('DISB').AsCurrency;
              DisbTax:= TaxCalc2(Amount, 'RATE', 'GSTIN' , Date);
              if DisbTax > qryBill.FieldByName('DISBTAX_PAID').AsCurrency then
              begin
                // recalculate amounts to be allocated to fees tax paid and fees paid
                DisbTax:= qryBill.FieldByName('DISBTAX_PAID').AsCurrency;
                Amount:= qryAllocs.FieldByName('DISB').AsCurrency - DisbTax
              end
              else
              if DisbTax < qryBill.FieldByName('DISBTAX_PAID').AsCurrency then
              begin
                {
                 Check we have paid enough tax, and aren't driving the ex-tax
                 amount into a negative value
                }
                if qryAllocs.FieldByName('DISB').AsCurrency - DisbTax >
                     qryBill.FieldByName('DISB_PAID').AsCurrency then
                begin
                  DisbTax:= DisbTax + ((qryAllocs.FieldByName('DISB').AsCurrency - DisbTax) - qryBill.FieldByName('DISB_PAID').AsCurrency);
                  Amount:= qryAllocs.FieldByName('DISB').AsCurrency - DisbTax
                end
              end;
              qryBillUpdate.ParamByName('DISBTAX_PAID').AsCurrency:= DisbTax;
              qryBillUpdate.ParamByName('DISB_PAID').AsCurrency:= Amount;
            end;
            if FSubBills then
            begin
               qrySubBillUpdate.ParamByName('DISB_PAID').AsCurrency:= 0;
               qrySubBillUpdate.ParamByName('DISBTAX_PAID').AsCurrency:= 0;
            end;

            // Allocate Unpaid Creditors
            if qryAllocs.FieldByName('UPCRED').AsCurrency = 0 then
            begin
              qryBillUpdate.ParamByName('UPCRED_PAID').AsCurrency:= 0;
              qryBillUpdate.ParamByName('UPCREDTAX_PAID').AsCurrency:= 0;
            end
            else
            begin
              Amount:= qryAllocs.FieldByName('UPCRED').AsCurrency;
              UpCredTax:= TaxCalc2(Amount, 'RATE', 'GSTIN' , Date);
              if UpCredTax > qryBill.FieldByName('UPCREDTAX_PAID').AsCurrency then
              begin
                // recalculate amounts to be allocated to fees tax paid and fees paid
                UpCredTax:= qryBill.FieldByName('UPCREDTAX_PAID').AsCurrency;
                Amount:= qryAllocs.FieldByName('UPCRED').AsCurrency - UpCredTax
              end
              else
              if UpCredTax < qryBill.FieldByName('UPCREDTAX_PAID').AsCurrency then
              begin
                {
                 Check we have paid enough tax, and aren't driving the ex-tax
                 amount into a negative value
                }
                if qryAllocs.FieldByName('UPCRED').AsCurrency - UpCredTax >
                     qryBill.FieldByName('UPCRED_PAID').AsCurrency then
                begin
                  UpcredTax:= UpcredTax + ((qryAllocs.FieldByName('UPCRED').AsCurrency - UpCredTax) - qryBill.FieldByName('UPCRED_PAID').AsCurrency);
                  Amount:= qryAllocs.FieldByName('UPCRED').AsCurrency - UpCredTax
                end
              end;
              qryBillUpdate.ParamByName('UPCREDTAX_PAID').AsCurrency:= UpCredTax;
              qryBillUpdate.ParamByName('UPCRED_PAID').AsCurrency:= Amount;
            end;

           //******
           //*** subbills
            if FSubBills then
            begin
               qrySubBillUpdate.ParamByName('UPCRED_PAID').AsCurrency:= 0;
               qrySubBillUpdate.ParamByName('UPCREDTAX_PAID').AsCurrency:= 0;
            end;

            // Allocate Anticipated Disbursements
            if qryAllocs.FieldByName('ANTD').AsCurrency = 0 then
            begin
              qryBillUpdate.ParamByName('ANTD_PAID').AsCurrency:= 0;
              qryBillUpdate.ParamByName('ANTDTAX_PAID').AsCurrency:= 0;
            end
            else
            begin
              Amount:= qryAllocs.FieldByName('ANTD').AsCurrency;
              AntdTax:= TaxCalc2(Amount, 'RATE', 'GSTIN' , Date);
              if AntdTax > qryBill.FieldByName('ANTDTAX_PAID').AsCurrency then
              begin
                // recalculate amounts to be allocated to fees tax paid and fees paid
                AntdTax:= qryBill.FieldByName('ANTDTAX_PAID').AsCurrency;
                Amount:= qryAllocs.FieldByName('ANTD').AsCurrency - AntdTax
              end
              else
              if AntdTax < qryBill.FieldByName('ANTDTAX_PAID').AsCurrency then
              begin
                {
                 Check we have paid enough tax, and aren't driving the ex-tax
                 amount into a negative value
                }
                if qryAllocs.FieldByName('ANTD').AsCurrency - ANTDTax >
                     qryBill.FieldByName('ANTD_PAID').AsCurrency then
                begin
                  AntdTax:= AntdTax + ((qryAllocs.FieldByName('ANTD').AsCurrency - AntdTax) - qryBill.FieldByName('ANTD_PAID').AsCurrency);
                  Amount:= qryAllocs.FieldByName('ANTD').AsCurrency - AntdTax
                end
              end;
              qryBillUpdate.ParamByName('ANTDTAX_PAID').AsCurrency:= AntdTax;
              qryBillUpdate.ParamByName('ANTD_PAID').AsCurrency:= Amount
            end;
            if FSubBills then
            begin
               qrySubBillUpdate.ParamByName('ANTD_PAID').AsCurrency:= 0;
               qrySubBillUpdate.ParamByName('ANTDTAX_PAID').AsCurrency:= 0;
            end;

            // Allocate Sundries
            if qryAllocs.FieldByName('SUNDRY').AsCurrency = 0 then
            begin
              qryBillUpdate.ParamByName('SUND_PAID').AsCurrency:= 0;
              qryBillUpdate.ParamByName('SUNDTAX_PAID').AsCurrency:= 0;
            end
            else
            begin
              Amount:= qryAllocs.FieldByName('SUNDRY').AsCurrency;
              SundTax:= TaxCalc2(Amount, 'RATE', 'GSTIN' , Date);
              if SundTax > qryBill.FieldByName('SUNDTAX_PAID').AsCurrency then
              begin
                // recalculate amounts to be allocated to fees tax paid and fees paid
                SundTax:= qryBill.FieldByName('SUNDTAX_PAID').AsCurrency;
                Amount:= qryAllocs.FieldByName('SUNDRY').AsCurrency - SundTax
              end
              else
              if SundTax < qryBill.FieldByName('SUNDTAX_PAID').AsCurrency then
              begin
                {
                 Check we have paid enough tax, and aren't driving the ex-tax
                 amount into a negative value
                }
                if qryAllocs.FieldByName('SUNDRY').AsCurrency - SundTax >
                     qryBill.FieldByName('SUND_PAID').AsCurrency then
                begin
                  SundTax:= SundTax + ((qryAllocs.FieldByName('SUNDRY').AsCurrency - SundTax) - qryBill.FieldByName('SUND_PAID').AsCurrency);
                  Amount:= qryAllocs.FieldByName('SUNDRY').AsCurrency - SundTax
                end
              end;
              qryBillUpdate.ParamByName('SUNDTAX_PAID').AsCurrency:= SundTax;
              qryBillUpdate.ParamByName('SUND_PAID').AsCurrency:= Amount
            end;
            if FSubBills then
            begin
               qrySubBillUpdate.ParamByName('SUND_PAID').AsCurrency:= 0;
               qrySubBillUpdate.ParamByName('SUNDTAX_PAID').AsCurrency:= 0;
            end;

            qryBillUpdate.ParamByName('NMEMO').AsInteger:=
               qryAllocs.FieldByName('NMEMO').AsInteger;
            qryBillUpdate.ExecSQL;
   //         do the subbill
            qrySubBillUpdate.ParamByName('NMEMO').AsInteger:= qryAllocs.FieldByName('NMEMO').AsInteger;
//            qrySubBillUpdate.ParamByName('NSUBBILL').AsInteger:= FNSubBill;
            qrySubBillUpdate.ExecSQL;

            // saving REVERSAL amount against original distribution.
            qryFeeDist.Close;
            qryFeeDist.ParamByName('NMEMO').AsInteger := qryAllocs.FieldByName('NMEMO').AsInteger;
            qryFeeDist.Open;
            TotalFeeDistAmt := 0;
            FeeDistCount := 1;
            TotalFeeDistCount := qryFeeDist.RecordCount;
            while (qryFeeDist.Eof = False) do
            begin
               if (FeeDistCount = TotalFeeDistCount) and
                  (TotalFeeDistCount > 1)  then
                  FeeDistAmt :=  qryBill.FieldByName('FEES_PAID').AsCurrency - TotalFeeDistAmt
               else
                  FeeDistAmt := (qryBill.FieldByName('FEES_PAID').AsCurrency) * (qryFeeDist.FieldByNAme('ALLOC_PC').AsFloat/100);
               qryFeeDistInsert.ParamByName('nmemo').AsInteger         := qryFeeDist.FieldByName('nmemo').AsInteger;
               qryFeeDistInsert.ParamByName('author').AsString         := qryFeeDist.FieldByName('author').AsString;
               qryFeeDistInsert.ParamByName('nmatter').AsInteger       := qryFeeDist.FieldByName('nmatter').AsInteger;
               qryFeeDistInsert.ParamByName('dept').AsString           := qryFeeDist.FieldByName('dept').AsString;
               qryFeeDistInsert.ParamByName('matter_dept').AsString    := qryFeeDist.FieldByName('matter_dept').AsString;
               qryFeeDistInsert.ParamByName('receipt_amt').AsCurrency  := FeeDistAmt * -1;
               qryFeeDistInsert.ParamByName('name').AsString           := TableString('EMPLOYEE','CODE',qryFeeDist.FieldByName('author').AsString, 'NAME');
               qryFeeDistInsert.ExecSQL;
               qryFeeDist.Next;
               FeeDistCount := FeeDistCount + 1;
               TotalFeeDistAmt := TotalFeeDistAmt + FeeDistAmt;
            end;
            qryFeeDist.Close;
            qryFeeDistInsert.Close;

          finally
            qryBill.Close;
            qryBillUpdate.Close;
            qrySubBillUpdate.Close;
          end;

          // Were there any ANTD payments in this receipt?
          if qryAllocs.FieldByName('ANTD').AsCurrency > 0 then
          begin
            // Now reverse cheqreq_trans records
            try
              qryCheqreqTrans.ParamByName('NALLOC').AsInteger:= qryAllocs.FieldByName('NALLOC').AsInteger;
              qryCheqreqTrans.Open;
              if not qryCheqreqTrans.IsEmpty then
              begin
                qryCheqreqTrans.First;
                while not qryCheqreqTrans.EOF do
                begin
                  PostCheqReqTrans(-qryCheqreqTrans.FieldByName('AMOUNT').AsCurrency,
                                   qryCheqreqTrans.FieldByName('NALLOC').AsInteger,
                                   qryCheqreqTrans.FieldByName('NCHEQREQ').AsInteger);
                  qryCheqreqTrans.Next
                end
              end
            finally
              qryCheqreqTrans.Close;
            end
          end
        end;

        qryAllocs.Next;
      end;

      with qryReceipt do
      begin
        Edit;
        FieldByName('REVERSED').AsString := 'Y';
        FieldByName('BANKED').AsString := 'Y';
        FieldByName('RCPTNO').AsString := FieldByName('RCPTNO').AsString + 'CN';
        FieldByName('SUFCHQ').AsInteger := 1;
        FieldByName('RVBY').AsString := dmAxiom.UserID;
        Post;
      end;

      qryReceipt.ApplyUpdates;
//      if qryTransitems.UpdatesPending then
//        qryTransitems.ApplyUpdates;
//      if qryAllocs.UpdatesPending then
//        qryAllocs.ApplyUpdates;

{
  Added 27.9.2002 GG

  Check the ledger total is zero.  If not, ledgers are not balanced, and so this
  operation should fail.
}

      if not qryReceipt.FieldByName('BANK_TRANSFER_NCHEQUE').IsNull then
      begin
           qryCheque.Close;
           qryCheque.ParamByName('ncheque').AsInteger := qryReceipt.FieldByName('BANK_TRANSFER_NCHEQUE').AsInteger;
           qryCheque.Open;
           RvCheque(qryReceipt.FieldByName('BANK_TRANSFER_NCHEQUE').AsInteger, dtpReverse.Date, mlReason.Text);
      end;

      CheckLedgerTotal;

      dmAxiom.uniInsight.Commit;

      qryReceipt.Close;
      qryTransitems.Close;
      qryAllocs.Close;

      Self.Close;
    except
      On E: Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        MsgErr('Error reversing receipt:' + chr(13) + chr(13) + E.Message);
      end;
    end;
  end;
end;

procedure TfrmReceiptReverse.actOkExecute(Sender: TObject);
var
  bOKtoPost: boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= (PostIntoLockedPeriod(dtpReverse.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    RvReceipt(qryReceipt.FieldByName('NRECEIPT').AsInteger, dtpReverse.Date, mlReason.Text);
    Self.Close
  end;
end;

procedure TfrmReceiptReverse.actOkUpdate(Sender: TObject);
begin
   actOk.Enabled := (mlReason.Text <> '');
end;

procedure TfrmReceiptReverse.btnCancelClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmReceiptReverse.btnOriginalClick(Sender: TObject);
begin
   dtpReverse.Date := qryReceipt.FieldByName('CREATED').AsDateTime;
   mlReason.SetFocus;
end;

procedure TfrmReceiptReverse.RvCheque(iOldNcheque : integer; dtReverse : TDateTime; sReason : string);
var
   iRvNcheque : integer;
   sRVChqno : string;
   bGLExists : boolean;
   iRevTotal : Currency;
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,sLedgerKeyDr : String;
   ANInvoice: integer;
begin
    { Reverses the Cheque specified by the iOldNcheque number }
   ZeroLedgerTotal;
   iRevTotal := 0;
   glComponentSetup := dmAxiom.getGlComponents;

   try
      if dmAxiom.uniInsight.InTransaction then
          dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

      // Create a new record
      with qryChequeRV do
      begin
//       iRvNcheque := GetSeqnum('NCHEQUE');
//    14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
         iRvNcheque := GetSequenceNumber('SQNC_NCHEQUE');
         ParamByName('NCHEQUE').AsInteger := iRvNcheque;
         sRVChqno := qryCheque.FieldByName('CHQNO').AsString + 'RV';
         ParamByName('CHQNO').AsString := sRVChqno;
         ParamByName('RVBY').AsString := dmAxiom.UserID;
         ParamByName('CREATED').AsDateTime := dtReverse;
         ParamByName('PRESENTED').AsDateTime := dtReverse;
         ParamByName('RECONDATE').AsDateTime := dtReverse;
         ParamByName('ACCT').AsString := qryCheque.FieldByName('ACCT').AsString;
         ParamByName('PAYEE').AsString := qryCheque.FieldByName('PAYEE').AsString;
         ParamByName('APPROVAL').AsString := qryCheque.FieldByName('APPROVAL').AsString;
         ParamByName('REQBY').AsString := qryCheque.FieldByName('REQBY').AsString;
         ParamByName('TRUST').AsString := qryCheque.FieldByName('TRUST').AsString;
         ParamByName('DESCR').AsString := sReason;
         ParamByName('AMOUNT').AsFloat := 0 - qryCheque.FieldByName('AMOUNT').AsCurrency;
         ExecSQL;
      end;

      // Now reverse the Transaction Items
      bGLExists := False;
      qryTransItemChq.Close;
      qryTransItemChq.ParamByName('NOWNER').AsInteger := iOldNcheque;
      qryTransItemChq.Open;

      while not qryTransItemChq.EOF do
      begin
         bGLExists := True;
         RvNaccount(qryTransItemChq, dtReverse, sRVChqno, sReason, 'CHEQUE', iRvNcheque);

         qryTransItemChq.Next;
      end;

      with qryCheque do
      begin
         Edit;
         FieldByName('REVERSED').AsString := 'Y';
         FieldByName('CHQNO').AsString :=   FieldByName('CHQNO').AsString + 'CN';
         FieldByName('SUFCHQ').AsInteger := 1;
         FieldByName('RVBY').AsString := dmAxiom.UserID;
         FieldByName('PRESENTED').AsDateTime := dtReverse;
         FieldByName('RECONDATE').AsDateTime := dtReverse;
         Post;
      end;

     // unconvert any cheqreq with this cheque number
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'UPDATE CHEQREQ SET CONVERTED = ''N'',NCHEQUE = null ' +
                     'WHERE NCHEQUE = :NCHEQUE ' +
                     'AND CONVERTED = ''Y''';
         ParamByName('NCHEQUE').AsInteger := iOldNcheque;
         ExecSql;
         Close;
      end;

      qryCheque.ApplyUpdates;

      CheckLedgerTotal;

//     dmAxiom.uniInsight.Commit;

      qryCheque.Close;
      qryTransitems.Close;
      qryAllocs.Close;
      ModalResult := mrOk;

   except
      On E: Exception do
      begin
         dmAxiom.uniInsight.Rollback;
         MsgErr('Error reversing cheque:' + chr(13) + chr(13) + E.Message);
      end;
   end;
end;

end.
