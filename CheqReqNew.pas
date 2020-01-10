unit CheqReqNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  MemDS, OracleUniProvider, Uni, DBAccess, DateTimeAccount, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxCalendar, cxLookAndFeelPainters,
  cxButtons, cxCheckBox, EnforceCustomDateEdit, cxLabel,
  cxEditRepositoryItems, cxGraphics, Menus, dxStatusBar, Variants,
  cxLookAndFeels, dxCore, vcl.themes, cxDateUtils, cxClasses, cxGroupBox,
  cxPropertiesStore;

type
  TfrmCheqReqNew = class(TForm)
    dsCheqReq: TUniDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    lblTypeDesc: TLabel;
    qryCheqReq: TUniQuery;
    Label5: TLabel;
    lblClient: TLabel;
    Label6: TLabel;
    lblAuthorName: TLabel;
    lblLgr: TLabel;
    lblLgrDesc: TLabel;
    Label9: TLabel;
    lblInvoiceMsg: TLabel;
    lblInvoice: TLabel;
    lblMatterDescr: TLabel;
    lblTaxType: TLabel;
    Label7: TLabel;
    lblTotal: TLabel;
    lblBillNo: TLabel;
    lblNmemo: TLabel;
    tbFile: TcxButtonEdit;
    edtBillRef: TcxButtonEdit;
    tbLedger: TcxButtonEdit;
    cmbBank: TcxLookupComboBox;
    tbDesc: TcxTextEdit;
    tbPayee: TcxButtonEdit;
    neAmount: TcxCurrencyEdit;
    neTax: TcxCurrencyEdit;
    cbTaxType: TcxComboBox;
    dfSlipNo: TcxTextEdit;
    cmbAuthor: TcxLookupComboBox;
    cmbExpenseType: TcxLookupComboBox;
    qrySundryType: TUniQuery;
    dsSundryType: TUniDataSource;
    chkFunds: TcxCheckBox;
    chkInvoiceSupplied: TcxCheckBox;
    chkPrint: TcxCheckBox;
    chkNoExit: TcxCheckBox;
    chkBill: TcxCheckBox;
    chkUrgent: TcxCheckBox;
    chkHeld: TcxCheckBox;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    Label10: TLabel;
    mmoNotes: TcxMemo;
    dtpReqDate: TEnforceCustomDateEdit;
    lblAccountType: TcxLabel;
    qryDepositAccount: TUniQuery;
    dsAccountType: TUniDataSource;
    cxCBAccountType: TcxLookupComboBox;
    chkDeposit: TcxCheckBox;
    qryInvestmentTrans: TUniQuery;
    cmbBills: TcxLookupComboBox;
    qryMatterBills: TUniQuery;
    dsMatterBills: TUniDataSource;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem;
    StatusBar: TdxStatusBar;
    qryGetTrust: TUniQuery;
    qryBillInv: TUniQuery;
    dsBillInv: TUniDataSource;
    lblInv: TLabel;
    qryBillPayment: TUniQuery;
    cxLabel1: TcxLabel;
    teChequeNo: TcxTextEdit;
    qryPrinter: TUniQuery;
    qryCheckCheque: TUniQuery;
    qryChequeRange: TUniQuery;
    lblDebugStencilID: TLabel;
    cmbInvoice: TcxLookupComboBox;
    qryInvBilled: TUniQuery;
    dsInv: TUniDataSource;
    chkPreviewPDF: TcxCheckBox;
    qryInvUnbilled: TUniQuery;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cbBankChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbAuthor1Change(Sender: TObject);
    procedure btnMatterClick(Sender: TObject);
    procedure btnPayeeClick(Sender: TObject);
    procedure btnLedgerClick(Sender: TObject);
    procedure tbFileExit(Sender: TObject);
    procedure tbLedgerExit(Sender: TObject);
    procedure tbPayeeExit(Sender: TObject);
    procedure tbPayeeKeyPress(Sender: TObject; var Key: Char);
    procedure chkBillClick(Sender: TObject);
    procedure chkFundsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbTaxTypeClick(Sender: TObject);
    procedure neAmountExit(Sender: TObject);
    procedure cbExpenseTypeChange(Sender: TObject);
    procedure neAmountChange(Sender: TObject);
    procedure cbTaxTypeChange(Sender: TObject);
    procedure neTaxChange(Sender: TObject);
    procedure btnBillClick(Sender: TObject);
    procedure tbPayeePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tbFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtBillRefPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tbLedgerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dtpReqDatePropertiesCloseUp(Sender: TObject);
    procedure tbFilePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure chkDepositClick(Sender: TObject);
    procedure cxCBAccountTypePropertiesInitPopup(Sender: TObject);
    procedure cmbBillsPropertiesInitPopup(Sender: TObject);
    procedure cmbBillsPropertiesCloseUp(Sender: TObject);
    procedure cmbInvoicePropertiesInitPopup(Sender: TObject);
    procedure cmbInvoicePropertiesCloseUp(Sender: TObject);
    procedure cmbBankPropertiesCloseUp(Sender: TObject);
    procedure cmbBankPropertiesChange(Sender: TObject);
    procedure cmbBankPropertiesEditValueChanged(Sender: TObject);
    procedure cmbBillsPropertiesEditValueChanged(Sender: TObject);
    procedure tbLedgerPropertiesChange(Sender: TObject);
    procedure teChequeNoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);

  private
    { Private declarations }
    cOriginalAmount : Currency;
    cOriginalTax    : Currency;
    fcCurrentAmount : Currency;
    FNName          : integer;

    DefaultTax      : String;
    FBankType       : String;
    FFromMatter     : Boolean;
    FLedger         : string;

    function OKtoPost : Boolean;
    function IsWitholdingTax : Boolean;
    
    procedure CalcTax;
    procedure ShowTotal;
    procedure ToggleFields(bEnable: boolean);
    procedure DisplayTrust(AFileID: string);

  public
    { Public declarations }
    property FromMatter: boolean read FFromMatter write FFromMatter;
    procedure DisplayFile(sFile : string);
    procedure DisplayLedger(sCode : string);
    procedure DisplayBill(sBill,sBank,sFile: String;cOwing : Currency); overload;
    procedure DisplayCheqReq(iCheqReq : integer);
    procedure DisplayBill(sBill: String); overload;
  end;

implementation

uses
  CheqReqPrint, MiscFunc, AxiomData, MSearch, NSearch, LSearch, citfunc,
  InvoiceSearch,glComponentUtil, Vcl.Styles.FormStyleHooks, ScreenSave  ;

{$R *.DFM}


procedure TfrmCheqReqNew.FormShow(Sender: TObject);
begin
  if not qryCheqReq.Active then
  begin
    cmbBank.EditValue := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
    cmbAuthor.EditValue := dmAxiom.UserID;
  end;
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}

  dtpReqDate.EnforceLock := not dmAxiom.Security.PriorPeriodTransactions.Post;

  ShowTotal;
end;


procedure TfrmCheqReqNew.DisplayFile(sFile : string);
begin
   tbLedger.Text := '';
   lblLgrDesc.Caption := '';
   tbFile.Text := sFile;
   lblClient.Caption := MatterString(sFile, 'TITLE');
   lblMatterDescr.Caption := MatterString(sFile, 'SHORTDESCR');
   qryDepositAccount.ParamByName('nmatter').AsString := MatterString(sFile, 'NMATTER');
   qryDepositAccount.Open;
   qryMatterBills.ParamByName('nmatter').AsString := MatterString(sFile, 'NMATTER');
   qryMatterBills.Open;
   if chkDeposit.Visible and chkDeposit.Checked then
      cmbBills.Visible := False
   else if not chkDeposit.Visible then
      cmbBills.Visible := True;

   if FBankType = 'T' then
      DisplayTrust(MatterString(sFile, 'NMATTER'));
   edtBillRef.Visible := False;
   if cmbBills.Visible = True then
      cmbBills.Enabled := (FBankType = 'T');
   if edtBillRef.Visible = True then
      edtBillRef.Enabled := (FBankType = 'T');
end;

procedure TfrmCheqReqNew.DisplayBill(sBill,sBank,sFile : String;cOwing : Currency);
var
   cTrust : Currency;
begin
    if edtBillRef.Visible then
      edtBillRef.Text := sBill
    else
      cmbBills.EditValue := sBill;

    cTrust := ClearTrust(sFile);
    if cTrust < cOwing then
        neAmount.EditValue := cTrust
    else
        neAmount.EditValue := cOwing;

    CalcTax;

    chkHeld.Checked := False;
    tbFile.Text := sFile;
    // set the bank to the trust bank from the matter
end;

procedure TfrmCheqReqNew.DisplayBill(sBill: String);
var
   cTrust, cOwing : Currency;
begin
    if edtBillRef.Visible then
      edtBillRef.Text := sBill
    else
      cmbBills.EditValue := sBill;

    cOwing := TableCurrency('NMEMO','REFNO',sBill,'OWING');
    cTrust := ClearTrust(tbFile.Text);

    neAmount.EditValue := cOwing;

    fcCurrentAmount := cOwing;
    CalcTax;

    chkHeld.Checked := False;
end;

procedure TfrmCheqReqNew.DisplayLedger(sCode : string);
begin
   tbFile.Text := '';
   lblClient.Caption := '';
   lblMatterDescr.Caption := '';
   FLedger := LedgerString (sCode, 'code');

   tbLedger.Text := LedgerString(sCode, 'COMPONENT_CODE_DISPLAY');
   lblLgrDesc.Caption := LedgerString (sCode, 'REPORT_DESC');
   chkFunds.Checked := False;
   chkFunds.Enabled := False;
   chkHeld.Checked := False;
   chkHeld.Enabled := False;
   chkBill.Checked := False;
   chkBill.Enabled := False;

   chkFunds.StyleDisabled.Color := Self.Color;
   chkHeld.StyleDisabled.Color := Self.Color;
   chkBill.StyleDisabled.Color := Self.Color;
   if chkDeposit.Visible then
      chkDeposit.StyleDisabled.Color := Self.Color;
end;


procedure TfrmCheqReqNew.DisplayCheqReq(iCheqReq : integer);
begin
   try
      cmbExpenseType.Properties.OnChange := nil;
      with qryCheqReq do
      begin
         Close;
         ParamByName('NCHEQREQ').AsInteger := iCheqReq;
         Open;
         ToggleFields(True);
         if not IsEmpty then
         begin
            if FieldByName('FILEID').AsString <> '' then
               DisplayFile(FieldByName('FILEID').AsString);
            dtpReqDate.Date := FieldByName('REQDATE').AsDateTime;
            cmbBank.EditValue := FieldByName('BANK').AsString;
            cmbBank.Properties.OnChange(Self); //  OnChange(Self);
            //cbBank.Enabled := False;
            cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(FieldByName('TAXCODE').AsString);
            if FieldByName('LEDGER').AsString <> '' then
               DisplayLedger(FieldByName('LEDGER').AsString);
            tbPayee.Text := FieldByName('PAYEE').AsString;
            tbDesc.Text := FieldByName('DESCR').AsString;
            neAmount.EditValue := FieldByName('AMOUNT').AsCurrency;   //  this value has to be amount not total AES 19/9/2019   FieldByName('TOTAL').AsCurrency;  //FieldByName('AMOUNT').AsCurrency;
            fcCurrentAmount := neAmount.EditValue;
            neTax.EditValue := FieldByName('TAX').AsCurrency;
            cOriginalAmount := FieldByName('AMOUNT').AsCurrency;
            cOriginalTax := FieldByName('TAX').AsCurrency;
            cmbAuthor.EditValue := FieldByName('AUTHOR').AsString;
            cmbExpenseType.EditValue := FieldByName('SUNDRYTYPE').AsString;
            mmoNotes.Text := FieldByName('NOTE').AsString;
            chkInvoiceSupplied.Checked := FieldByName('INVOICESUPPLIED').AsString = 'Y';
            dfSlipNo.Text := qryCheqReq.FieldByName('CREDITOR_INVOICE').AsString;
            lblNMemo.Caption := FieldByName('NMEMO').AsString;
            FNName := qryCheqReq.FieldByName('NNAME').AsInteger;
            chkBill.State := cbsUnChecked;
            chkFunds.State := cbsUnChecked;
            teChequeNo.Text := qryCheqReq.FieldByName('CHQNO').AsString;
            if (FieldByName('ANTICIPATED').AsString = 'Y') and
               (FieldByName('HELD').AsString = 'W') then
            begin
               chkBill.State := cbsChecked;
               chkFunds.State := cbsChecked;
            end
            else
               if (FieldByName('ANTICIPATED').AsString = 'Y') and
                  (FieldByName('HELD').AsString <> 'W') then
                  chkBill.State := cbsChecked;

            if FieldByName('BILLED').AsString = 'N' then
//              chkBill.State := cbsChecked
            else
            begin
               if FieldByName('NMEMO').AsString <> '' then
               begin
                  chkBill.Enabled := False;
                  chkFunds.Enabled := False;
                  chkFunds.StyleDisabled.Color := Self.Color;
                  chkBill.StyleDisabled.Color := Self.Color;
                  if chkDeposit.Visible then
                     chkDeposit.StyleDisabled.Color := Self.Color;
               end;
            end;

            if FieldByName('HELD').AsString = 'Y' then
               chkHeld.State := cbsChecked
            else if FieldByName('HELD').AsString = 'W' then
            begin
               chkFunds.State := cbsChecked;
               chkFunds.OnClick(Self);
            end
            else
               chkHeld.State := cbsUnChecked;

            if qryCheqReq.FieldByName('DEP_ACCOUNT').AsString = 'Y' then
            begin
               cxCBAccountType.Text := qryCheqReq.FieldByName('DEP_ACCOUNT_TYPE').AsString;
               chkDeposit.EditValue := qryCheqReq.FieldByName('DEP_ACCOUNT').AsString;

               lblAccountType.Visible := True;
               cxCBAccountType.Visible := True;
               lblBillNo.Visible := False;
               edtBillRef.Visible := false;
               cmbBills.Visible := False;
            end;

{            ToggleFields(False);
            if (qryCheqReq.FieldByName('NCHEQUE').IsNull) and
               (qryCheqReq.FieldByName('REV_NCHEQREQ').IsNull) and
               (qryCheqReq.FieldByName('NMEMO').IsNull) then
            begin
               neAmount.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
               cbTaxType.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
               tbPayee.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
               cmbExpenseType.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
            end;  }

            chkFunds.Enabled := False;
            chkBill.Enabled := False;

            //pb- if (FieldByName('BILLED').AsString = 'Y') and (FieldByName('NMEMO').AsInteger <> 0) then
            if (FieldByName('BILLED').AsString = 'Y') and
                FieldByName('invoicedate').IsNull = False {(FieldByName('NMEMO').AsString <> '')} then
            begin
               ToggleFields(False);
               if (qryCheqReq.FieldByName('NCHEQUE').IsNull) and
                  (qryCheqReq.FieldByName('REV_NCHEQREQ').IsNull) and
                  (qryCheqReq.FieldByName('NMEMO').IsNull) then
               begin
                  neAmount.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
                  cbTaxType.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
                  tbPayee.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
                  cmbExpenseType.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
               end;

               chkHeld.Enabled := False;
               chkFunds.StyleDisabled.Color := Self.Color;
               chkHeld.StyleDisabled.Color := Self.Color;
               chkBill.StyleDisabled.Color := Self.Color;
               if chkDeposit.Visible then
                  chkDeposit.StyleDisabled.Color := Self.Color;
               tbFile.Properties.Buttons.Items[0].Visible := False;

               lblInvoiceMsg.Visible := True;
               lblInvoice.Visible := True;

               lblInvoice.Caption := TableString('NMEMO', 'NMEMO', FieldByName('NMEMO').AsInteger, 'REFNO');
               cmbBills.EditValue := lblInvoice.Caption;
               edtBillRef.Text := lblInvoice.Caption;
            end
            else
            if ((FieldByName('BILLED').AsString = 'Y') and
               (FieldByName('NMEMO').IsNull = False)) then
               ToggleFields(False);
         end
         else
            Self.Close;
      end;
   finally
      cmbExpenseType.Properties.OnChange := cbExpenseTypeChange;
   end;
end;

procedure TfrmCheqReqNew.ToggleFields(bEnable: boolean);
begin
   dtpReqDate.Enabled := bEnable;
   cmbBank.Enabled := bEnable;
   tbLedger.Enabled := bEnable;
   tbPayee.Enabled := bEnable;
   neAmount.Enabled := bEnable;
   cmbAuthor.Enabled := bEnable;
   tbFile.Enabled := bEnable;
   edtBillRef.Enabled := bEnable;
   dfSlipNo.Enabled := bEnable;
   cbTaxType.Enabled := bEnable;
   cmbExpenseType.Enabled := bEnable;
   cmbBills.Enabled := bEnable;
   chkDeposit.Enabled := bEnable;
   cxCBAccountType.Enabled := bEnable;
   cmbInvoice.Enabled := bEnable;
   neAmount.Enabled := bEnable;
end;

function TfrmCheqReqNew.OKtoPost : Boolean;
var
  sTmp : String;
  bOKtoPost: Boolean;
begin
   bOKtoPost:= True;

   sTmp := '';
   if cmbBank.Text = '' then
      sTmp := '       Bank Account Code' + #13;
   if tbPayee.Text = '' then
      sTmp := sTmp + '       Payee' + #13;
   if tbDesc.Text = '' then
      sTmp := sTmp + '       Reason' + #13;
   if (tbFile.Text = '') and (tbLedger.Text = '') then
      sTmp := sTmp + '       Matter Number or Ledger Code' + #13;
   if neAmount.EditValue = 0 then
      sTmp := sTmp + '       Amount' + #13;
   if cmbAuthor.Text = '' then
      sTmp := sTmp + '       Requested By' + #13;

   if chkDeposit.Visible then
   begin
      if (chkDeposit.Checked) and (cxCBAccountType.Text = '') then
         sTmp := sTmp + '       Account Type' + #13;
   end;

   if (teChequeNo.Text <> '') then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'select chqno from cheque where printer = :printer and acct = :acct and chqno = :chqno';
         if dmAxiom.qryEntityBank.FieldByName('TRUST').AsString = 'G' then
            ParamByName('printer').AsString := dmAxiom.UserChequePrinter
         else
            ParamByName('printer').AsString := dmAxiom.UserTrustChequePrinter;
         ParamByName('acct').AsString := cmbBank.EditValue;
         ParamByName('chqno').AsString := teChequeNo.Text;
         Open;
         if EOF = False then
            sTmp := sTmp + '       Cheque Number has already been used. Please select a new number.' + #13;
      end;
   end;

 //  if neAmount.Value < 1 then
//      sTmp := sTmp + '       Amount should be 1 or greater' + #13;

   if sTmp <> '' then
   begin
      MsgInfo('Please complete the following Cheque Requisition details before saving:    ' + #13#13 + sTmp);
      bOKtoPost := False;
   end;

   if (TableString('BANK', 'ACCT', string(cmbBank.EditValue) , 'TRUST') = 'T') then
   begin
      if (IsValidMatterForBank(tbFile.Text, cmbBank.EditValue) = False) then
      begin
         MsgErr('The Client Bank selected ('+cmbBank.EditValue +') does not match the Client bank for the matter('+MatterString(tbFile.Text, 'ACCT') +')');
         cmbBank.ClearSelection;
         bOKtoPost := False;
      end;
   end;

   result:= bOKtoPost;
end;

procedure TfrmCheqReqNew.btnSaveClick(Sender: TObject);
var
  iCheqReq: integer;
  bPostingFailed: boolean;
  Bank_Trust, Bank: string;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
  glInstance: TglComponentInstance;
  iTransId : Integer;
  bContinuePosting: boolean;
  CheqReqAmt, BillOwing: Currency;
  bCheck,
  bPreviewPDF: boolean;
  dAmount: double;

  function decodeGlInstance(glInstance: TglComponentInstance): string;
  begin
    if glInstance = nil then
      decodeGlInstance := ''
    else
      decodeGlInstance := glInstance.ledgerKey;
  end;

begin
   iCheqReq:=0;
   btnSave.SetFocus;
{
  Added 25.10.2002 GG
  Show message if transaction is being posted into a locked period
}

{
   Added 2.10.2003 AES
   inserting nmatter into transitem when posting cheque.
}

   glComponentSetup := dmAxiom.getGlComponents;
   bContinuePosting := True;
   if OKtoPost() then
   begin
      if tbLedger.Text <> '' then
      begin
         // lookup the ledger code based on the value entered
         glInstance := dmAxiom.getGlComponents.parseString(tbLedger.Text, true);
         if not glInstance.valid then
         begin
                // something has gone very wrong !
            raise Exception.create('Error invalid ledger key');
         end;
      end;

      iTransId := 0;
      qryGetTrust.Open;
   // Added 18.08.2003 AES
   // check if matter is valid for current entity
      if (tbFile.Text <> '') and (not IsValidMatterForEntity(tbFile.Text) or
         not IsValidBankForEntity(cmbBank.EditValue)) then
      begin
         MsgErr('This matter #' + tbFile.Text +
                ' is not valid for the current Entity.');
         bContinuePosting := False;
      end
      else if (tbFile.Text <> '') and (IsMatterArchived(tbFile.Text)) then
      begin
         MsgErr('A new cheque requisition cannot be created for this matter. '+
                   'This matter is Archived.');
         tbFile.Text := '';
         bContinuePosting := False;
      end
      else if (tbLedger.Text <> '') and not (IsValidGLACCTForEntity(decodeGlInstance(glInstance)) or
         not IsValidBankForEntity(cmbBank.EditValue)) then
      begin
         MsgErr('This Ledger #' + tbLedger.Text + ' is not valid for the current Entity.');
         bContinuePosting := False;
      end
      else if ((not qryCheqReq.Active) and  (dfSlipNo.Text <> '') and (not (IsCRInvoiceUnique(dfSlipNo.Text,FNName)) and
              (SystemString('INVOICE_FROM_TRUST') = 'Y'))) then
      begin
         MsgErr('Creditor Invoice #' + dfSlipNo.Text +
                ' is already being used.');
         bContinuePosting := False;
      end
      // AES 20/01/2010 cast neAmount.Value to currency
      else if (cmbInvoice.Visible) and  (cmbInvoice.Text <> '') and (Double(neAmount.Value) > qryGetTrust.FieldByName('cl_trust_bal').AsFloat ) then
      begin
         MsgErr('There are insufficient funds in Trust in order to pay this Creditor Invoice.');
         bContinuePosting := false;
      end
      else if (TableString('BANK', 'ACCT', string(cmbBank.EditValue) , 'TRUST') = 'T') and
         (Double(neAmount.Value) > qryGetTrust.FieldByName('cl_trust_bal').AsFloat) then
      begin
         MsgErr('There are insufficient funds in Trust for this Cheque Request.');
         bContinuePosting := false;
      end
      else if (cmbBills.Visible) and (cmbBills.Text <> '')  then
      begin
         // added test to check whether cheqreq is being edited.  if being edited then no need to check for overpayment.
         // AES 05/08/2009
         bCheck := True;
         if qryCheqReq.Active then
            bCheck := qryCheqReq.FieldByName('NCHEQREQ').IsNull;

         if bCheck then
         begin
            qryBillPayment.Close;
            qryBillPayment.ParamByName('nmemo').AsString := lblnmemo.Caption;
            qryBillPayment.Open;
            CheqReqAmt := qryBillPayment.FieldByName('PAYMENT').AsCurrency + neAmount.Value;
            qryBillPayment.Close;

            BillOwing := TableCurrency('NMEMO','refno',cmbBills.Text,'owing');
            if (CheqReqAmt) > BillOwing then
            begin
               MsgErr('Bill # '+ cmbBills.Text + ' will be overpaid. '+ #13 + 'Amount owing on bill is ' + CurrToStrF(BillOwing, ffCurrency, 2) + #13 +
                     'Total payment to bill is ' + CurrToStrF(CheqReqAmt, ffCurrency, 2) + #13 + 'Please verify transactions prior to continuing.');
               bContinuePosting := False;
            end;
         end;
      end;
//      else
  // if PostIntoLockedPeriod(dtpReqDate.Date) in [prNotLocked, prOKToProceed] then

      if bContinuePosting then
      begin
          try
             bPostingFailed := False;
             if dmAxiom.uniInsight.InTransaction = True then
                dmAxiom.uniInsight.Rollback;
             dmAxiom.uniInsight.StartTransaction;
             if qryCheqReq.Active then
             begin
               qryCheqReq.Edit;
               if qryCheqReq.ParamByName('NCHEQREQ').IsNull then
               begin
                  iCheqReq := GetSequenceNumber('sqnc_ncheqreq');
                  qryCheqReq.ParamByName('NCHEQREQ').AsInteger := iCheqReq;
                  qryCheqReq.Open;
                  qryCheqReq.Insert;
                  qryCheqReq.FieldByName('NCHEQREQ').AsInteger := iCheqReq;
                  qryCheqReq.FieldByName('CONVERTED').AsString := 'N';
               end;
             end
             else
             begin
               iCheqReq := GetSequenceNumber('sqnc_ncheqreq');
               qryCheqReq.ParamByName('NCHEQREQ').AsInteger := iCheqReq;
               qryCheqReq.Open;
               qryCheqReq.Insert;
               qryCheqReq.FieldByName('NCHEQREQ').AsInteger := iCheqReq;
               qryCheqReq.FieldByName('CONVERTED').AsString := 'N';
             end;

             Bank := cmbBank.EditValue;
             Bank_Trust := TableString('BANK', 'ACCT', Bank, 'TRUST');
             dmAxiom.qryEntityBank.FieldByName('TRUST').AsString;
             qryCheqReq.FieldByName('REQDATE').AsDateTime := Trunc(dtpReqDate.Date);
             qryCheqReq.FieldByName('BANK').AsString := cmbBank.EditValue;
             qryCheqReq.FieldByName('TRUST').AsString := Bank_Trust;
             qryCheqReq.FieldByName('FILEID').AsString := tbFile.Text;
             qryCheqReq.FieldByName('NMATTER').AsInteger := GetMatterNoFromFileid(tbFile.Text);
             qryCheqReq.FieldByName('LEDGER').AsString := FLedger;
             qryCheqReq.FieldByName('PAYEE').AsString := tbPayee.Text;
             if (SystemString('show_cheqreq_no') = 'Y') and (iCheqReq <> 0) then
                qryCheqReq.FieldByName('DESCR').AsString := 'CQR' + inttostr(iCheqReq) + ' ' + tbDesc.Text
             else
                qryCheqReq.FieldByName('DESCR').AsString := tbDesc.Text;
             if iCheqReq > 0 then
                qryCheqReq.FieldByName('CHQ_REQ_NO').AsString := qryCheqReq.FieldByName('CHQ_REQ_NO').AsString+ ' ' + 'CQR' + inttostr(iCheqReq);
             qryCheqReq.FieldByName('AMOUNT').AsCurrency := neAmount.EditValue;
             qryCheqReq.FieldByName('TAX').AsCurrency := neTax.EditValue;
             qryCheqReq.FieldByName('TAXCODE').AsString := cbTaxType.Text;
             qryCheqReq.FieldByName('AUTHOR').AsString := cmbAuthor.EditValue;
             if cmbExpenseType.Text <> '' then
                qryCheqReq.FieldByName('SUNDRYTYPE').AsString := cmbExpenseType.EditValue;
             qryCheqReq.FieldByName('NOTE').AsString := mmoNotes.Text;
             qryCheqReq.FieldByName('HELD').AsString := 'N';
             if lblnmemo.Caption = '' then
             begin
                qryCheqReq.FieldByName('NMEMO').Clear;
                qryCheqReq.FieldByName('BILLNO').Clear;
             end
             else
             begin
                qryCheqReq.FieldByName('NMEMO').AsString := lblnmemo.Caption;
                qryCheqReq.FieldByName('BILLNO').AsString := edtBillRef.Text;
             end;
             qryCheqReq.FieldByName('URGENT').AsString := 'N';
             qryCheqReq.FieldByName('GROUPABLE').AsString := 'N';

             qryCheqReq.FieldByName('CREDITOR_INVOICE').AsString := dfSlipNo.Text;
             qryCheqReq.FieldByName('NNAME').AsInteger := FNName;

             qryCheqReq.FieldByName('BILLING_TAXCODE').AsString := TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'tax_code_billing');
             if qryCheqReq.FieldByName('BILLING_TAXCODE').IsNull = False then
             begin
                dAmount := neAmount.EditValue;
                qryCheqReq.FieldByName('BILLED_TAX').AsFloat := TaxCalc(dAmount, 'BILL', cbTaxType.Text, dtpReqDate.Date);
                qryCheqReq.FieldByName('BILLED_AMOUNT').AsFloat := neAmount.EditValue;
             end
             else
             begin
                qryCheqReq.FieldByName('BILLED_TAX').AsFloat := 0;
                qryCheqReq.FieldByName('BILLED_AMOUNT').AsFloat := 0;
             end;

             if (teChequeNo.Text <> '') then
             begin
                qryCheqReq.FieldByName('CHQNO').AsString := teChequeNo.Text;
                if dmAxiom.qryEntityBank.FieldByName('TRUST').AsString = 'G' then
                  qryCheqReq.FieldByName('PRINTER').AsString := dmAxiom.UserChequePrinter
               else
                  qryCheqReq.FieldByName('PRINTER').AsString := dmAxiom.UserTrustChequePrinter;
             end;

             if (cmbInvoice.Visible) and (cmbInvoice.Text <> '') then
                qryCheqReq.FieldByName('NINVOICE').AsVariant := cmbInvoice.EditValue;
             if cxCBAccountType.Visible then
             begin
                qryCheqReq.FieldByName('DEP_ACCOUNT_TYPE').AsString := cxCBAccountType.Text;
                qryCheqReq.FieldByName('DEP_ACCOUNT').AsString := chkDeposit.EditValue;
                qryCheqReq.FieldByName('NDEPOSITACCOUNT').AsString := cxCBAccountType.EditValue;
             end;

             if chkInvoiceSupplied.Checked then
               qryCheqReq.FieldByName('INVOICESUPPLIED').AsString := 'Y'
             else
               qryCheqReq.FieldByName('INVOICESUPPLIED').AsString := 'N';

             if chkUrgent.Checked then
               qryCheqReq.FieldByName('URGENT').AsString := 'Y';

             if (qryCheqReq.FieldByName('TRUST').AsString = 'G') and (tbFile.Text <> '') then
             begin
                if ((qryCheqReq.State = dsInsert) and chkBill.Checked)
                   or ((qryCheqReq.FieldByName('BILLED').AsString = 'Y')
                   and (qryCheqReq.FieldByName('NMEMO').AsString = '')
                   and chkBill.Checked) then
                begin
                   // It is a new cheqreq to be billed or it is unbilled, originally
                   // flagged not to be billed, but now being billed
                   // Post amounts entered to GL
                   // Debit the Unbilled Anticipated Disbursements ledger
                   // the tax free amount

                   {post components}
                   sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');

                   PostLedger(Date
                     , 0 - neAmount.EditValue
                     , 0 - neTax.EditValue
                     , tbFile.Text
                     , 'CHEQREQ'
                     , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                     , tbDesc.Text
                     , sLedgerKey
                     , ''
                     , -1
                     , ''
                     , cbTaxType.Text
                     , FALSE
                     , tbLedger.Text
                     , 0
                     , qryCheqReq.FieldByName('NMATTER').AsInteger );

                   // Debit the GST Input Tax Credits ledger the tax amount
                   if (neTax.EditValue <> 0) then
                     begin
                       if (IsWitholdingTax) then
                         begin
                         {post components}
                         sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'),'',true,'');

                           PostLedger(Date
                             , neTax.EditValue
                             , 0
                             , tbFile.Text
                             , 'CHEQREQ'
                             , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                             , tbDesc.Text, sLedgerKey
                             , ''
                             , -1
                             , ''
                             , cbTaxType.Text
                             , FALSE
                             , tbLedger.Text
                             , 0
                             , qryCheqReq.FieldByName('NMATTER').AsInteger );
                         end
                       else
                         begin
                           {post components}
                            sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'),'',true,'');

                           PostLedger(Date
                             , 0 - neTax.EditValue
                             , 0
                             , tbFile.Text
                             , 'CHEQREQ'
                             , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                             , tbDesc.Text, sLedgerKey
                             , ''
                             , -1
                             , ''
                             , cbTaxType.Text
                             , FALSE
                             , tbLedger.Text
                             , 0
                             , qryCheqReq.FieldByName('NMATTER').AsInteger );
                         end;    //  end if
                     end;    //  end if

                 {
                   If the tax type is Witholding Tax, then minus the tax from the
                   amount.

                   BJ  06/11/2002

                 }

                 if (IsWitholdingTax) then
                 begin
                   {post components}
                   sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');


                     // Credit Anticipated disbursements liability the full amount
                     PostLedger(Date
                       , neAmount.EditValue - neTax.EditValue
                       , 0
                       , tbFile.Text
                       , 'CHEQREQ'
                       , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                       , tbDesc.Text
                       , sLedgerKey
                       , TableString('MATTER', 'FILEID', tbFile.Text, 'AUTHOR')
                       , -1
                       , ''
                       , cbTaxType.Text
                       , FALSE
                       , tbLedger.Text
                       , 0
                       , qryCheqReq.FieldByName('NMATTER').AsInteger );
                 end
                 else
                 begin

                     {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');


                     // Credit Anticipated disbursements liability the full amount
                     PostLedger(Date
                       , neAmount.EditValue + neTax.EditValue
                       , 0
                       , tbFile.Text
                       , 'CHEQREQ'
                       , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                       , tbDesc.Text
                       , sLedgerKey
                       , TableString('MATTER', 'FILEID', tbFile.Text, 'AUTHOR')
                       , -1
                       , ''
                       , cbTaxType.Text
                       , FALSE
                       , tbLedger.Text
                       , 0
                       , qryCheqReq.FieldByName('NMATTER').AsInteger );
                 end;    //  end if-else
               end
             else
                if ((qryCheqReq.State = dsInsert) and (qryCheqReq.FieldByName('BILLED').AsString = 'N') and chkBill.Checked) then
                begin
                   // It is originally flagged to be billed, but now not to be billed
                   // Take it off the matter
                   MatterUpdate(TableInteger('MATTER', 'FILEID'
                     , qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER')
                     , 'UNBILL_ANTD', 0 - cOriginalAmount);
                   MatterUpdate(TableInteger('MATTER', 'FILEID'
                     , qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER')
                     , 'UNBILL_CREQ', 0 - cOriginalAmount);
                   // Unpost original amounts entered from GL
                   // Debit the Unbilled Anticipated Disbursements ledger the tax free
                   // amount

                   {post components}
                   sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');

                   PostLedger(Date
                     , cOriginalAmount
                     , cOriginalTax
                     , tbFile.Text
                     , 'CHEQREQ'
                     , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                     , tbDesc.Text
                     , sLedgerKey
                     , ''
                     , -1
                     , ''
                     , cbTaxType.Text
                     , FALSE
                     , tbLedger.Text
                     , 0
                     , qryCheqReq.FieldByName('NMATTER').AsInteger );

                   {post components}
                   sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'),'',true,'');

                   // Debit the GST Input Tax Credits ledger the tax amount
                   PostLedger(Date
                     , cOriginalTax
                     , 0
                     , tbFile.Text
                     , 'CHEQREQ'
                     , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                     , tbDesc.Text
                     , sLedgerKey
                     , ''
                     , -1
                     , ''
                     , cbTaxType.Text
                     , FALSE
                     , tbLedger.Text
                     , 0
                     , qryCheqReq.FieldByName('NMATTER').AsInteger );

                   {post components}
                   sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');

                   // Credit Anticipated disbursements liability the full amount
                   PostLedger(Date
                     , 0 - cOriginalAmount - cOriginalTax
                     , 0
                     , tbFile.Text
                     , 'CHEQREQ'
                     , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                     , tbDesc.Text
                     , sLedgerKey
                     , TableString('MATTER', 'FILEID', tbFile.Text, 'AUTHOR')
                     , -1
                     , ''
                     , cbTaxType.Text
                     , FALSE
                     , tbLedger.Text
                     , 0
                     , qryCheqReq.FieldByName('NMATTER').AsInteger );
                end
             else
                if ((qryCheqReq.State = dsInsert) and (qryCheqReq.FieldByName('BILLED').AsString = 'N') and chkBill.Checked and (neAmount.EditValue + neTax.EditValue <> cOriginalAmount+cOriginalTax)) then
                 begin
                   // It was being billed, is still being billed, and the amounts have changed
                   // update the GL with the difference

                   // Debit the Unbilled Anticipated Disbursements ledger the tax free amount

                   {post components}
                   sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');


                   PostLedger(Date
                     , 0 - (neAmount.EditValue - cOriginalAmount)
                     , 0 - (neTax.EditValue - cOriginalTax)
                     , tbFile.Text
                     , 'CHEQREQ'
                     , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                     , tbDesc.Text
                     , sLedgerKey
                     , ''
                     , -1
                     , ''
                     , cbTaxType.Text
                     , FALSE
                     , tbLedger.Text
                     , 0
                     , qryCheqReq.FieldByName('NMATTER').AsInteger );
                   // Debit the GST Input Tax Credits ledger the tax amount
                   if (neTax.EditValue - cOriginalTax) <> 0 then
                   begin
                     {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');

                     PostLedger(Date
                       , 0 - (neTax.EditValue - cOriginalTax)
                       , 0
                       , tbFile.Text
                       , 'CHEQREQ'
                       , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                       , tbDesc.Text
                       , sLedgerKey
                       , TableString('MATTER', 'FILEID', tbFile.Text, 'AUTHOR')
                       , -1
                       , ''
                       , cbTaxType.Text
                       , FALSE
                       , tbLedger.Text
                       , 0
                       , qryCheqReq.FieldByName('NMATTER').AsInteger );
                     end;
                   end
               else
                  if ((qryCheqReq.State = dsInsert) and (qryCheqReq.FieldByName('BILLED').AsString = 'N') and not chkBill.Checked) then
                  begin
                     // It is originally flagged to be billed, but now not to be billed
                     // Take it off the matter
                     MatterUpdate(TableInteger('MATTER', 'FILEID'
                       , qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER')
                       , 'UNBILL_ANTD', 0 - cOriginalAmount);
                     MatterUpdate(TableInteger('MATTER', 'FILEID'
                       , qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER')
                       , 'UNBILL_CREQ', 0 - cOriginalAmount);
                     // Unpost original amounts entered from GL
                     // Debit the Unbilled Anticipated Disbursements ledger the tax free
                     // amount

                     {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'),'',true,'');

                     PostLedger(Date
                       , cOriginalAmount
                       , cOriginalTax
                       , tbFile.Text
                       , 'CHEQREQ'
                       , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                       , tbDesc.Text
                       , sLedgerKey
                       , ''
                       , -1
                       , ''
                       , cbTaxType.Text
                       , FALSE
                       , tbLedger.Text
                       , 0
                       , qryCheqReq.FieldByName('NMATTER').AsInteger );

                     {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'),'',true,'');

                     // Debit the GST Input Tax Credits ledger the tax amount
                     PostLedger(Date
                       , cOriginalTax
                       , 0
                       , tbFile.Text
                       , 'CHEQREQ'
                       , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                       , tbDesc.Text
                       , sLedgerKey
                       , ''
                       , -1
                       , ''
                       , cbTaxType.Text
                       , FALSE
                       , tbLedger.Text
                       , 0
                       , qryCheqReq.FieldByName('NMATTER').AsInteger );
                     // Credit Anticipated disbursements liability the full amount

                     {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');

                     PostLedger(Date
                       , 0 - cOriginalAmount - cOriginalTax
                       , 0
                       , tbFile.Text
                       , 'CHEQREQ'
                       , qryCheqReq.FieldByName('NCHEQREQ').AsInteger
                       , tbDesc.Text
                       , sLedgerKey
                       , TableString('MATTER', 'FILEID', tbFile.Text, 'AUTHOR')
                       , -1
                       , ''
                       , cbTaxType.Text
                       , FALSE
                       , tbLedger.Text
                       , 0
                       , qryCheqReq.FieldByName('NMATTER').AsInteger );
                  end;
             end;

             qryCheqReq.FieldByName('BILLED').AsString := 'N';
             if chkBill.Checked then
               qryCheqReq.FieldByName('ANTICIPATED').AsString := 'Y'
             else
               qryCheqReq.FieldByName('ANTICIPATED').AsString := 'N';

             if chkHeld.Checked then
               qryCheqReq.FieldByName('HELD').AsString := 'Y'
             else
               qryCheqReq.FieldByName('HELD').AsString := 'N';

             if (qryCheqReq.FieldByName('NMEMO').AsString <> '') then
                qryCheqReq.FieldByName('BILLED').AsString := 'Y';

             //pb- if ((qryCheqReq.FieldByName('BILLED').AsString = 'Y') and (qryCheqReq.FieldByName('NMEMO').AsInteger = 0))
             if ((qryCheqReq.FieldByName('BILLED').AsString = 'Y') and
                (qryCheqReq.FieldByName('NMEMO').AsString = '')) or
                (qryCheqReq.State = dsInsert) then
             begin
               if chkBill.Checked then
               begin
                 //pb-
                 MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_ANTD', neAmount.EditValue - cOriginalAmount);
                 MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_CREQ', (neAmount.EditValue) - cOriginalAmount);
//                 qryCheqReq.FieldByName('BILLED').AsString := 'N';
               end
               else
//                 qryCheqReq.FieldByName('BILLED').AsString := 'Y';
             end;

             if chkFunds.Checked then
             begin
               qryCheqReq.FieldByName('HELD').AsString := 'W';
             end;

             qryCheqReq.Post;

             //save cheque no
             if (teChequeNo.Text <> '') then
             begin
                with qryPrinter do
                begin
                  Close;
                  ParamByName('code').AsString := dmAxiom.UserChequePrinter;
                  ParamByName('acct').AsString := cmbBank.EditValue;
                  Open;
                  Edit;
                  FieldByName('NUM_LAST').AsString :=  teChequeNo.Text;
                  Post;
                  Close;
                end;
             end;

             CheckLedgerTotal;
          except
             on E: Exception do
             begin
               qryCheqReq.CancelUpdates;
               dmAxiom.uniInsight.Rollback;
               bPostingFailed := True;
               MsgErr('Cheque Requisition posting failed:' + #13#13 + E.Message);
             end;
          end;

          if not bPostingFailed then
          begin
             if (iCheqReq <> 0) then
               MessageDlg('Cheque Requisition Created CQR' + inttostr(iCheqReq),mtInformation,[mbOK],0);

             qryCheqReq.ApplyUpdates;
             dmAxiom.uniInsight.Commit;
             if chkPrint.Checked then
             begin
                bPreviewPDF := False;
                if chkPreviewPDF.Visible = True then
                   bPreviewPDF := chkPreviewPDF.Checked;
                with TfrmCheqReqPrint.Create(Self) do
                   PrintCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger, bPreviewPDF);

             end;
             qryCheqReq.Close;
             qryGetTrust.Close;

             if not chkNoExit.Checked then
               Self.Close
             else
             begin
               if not FromMatter then
               begin
                  tbFile.Text := '';
                  lblClient.Caption := '';
                  lblMatterDescr.Caption := '';
                  chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
                  chkDeposit.Checked := False;
               end;

               fcCurrentAmount := 0;
               tbLedger.Text := '';
               lblLgrDesc.Caption := '';
               tbPayee.Text := '';
               tbDesc.Text := '';
               neAmount.EditValue := 0;
               neTax.EditValue := 0;
               mmoNotes.Text := '';
               if edtBillRef.Visible then
                  edtBillRef.Text := '';
               lblTotal.Caption :=  '';
               lblTotal.Caption := 'The Total Amount of the Cheque will be $0.00';
               qryDepositAccount.Close;
               cxCBAccountType.Text := '';

               ModalResult := mrNone;
             end;
          end;
      end;
   end
   else
      ModalResult := mrNone;
//  end;
end;

procedure TfrmCheqReqNew.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCheqReqNew.cbBankChange(Sender: TObject);
var
  lsDefaultTax : String;
begin
   if cmbBank.Text <> '' then
   begin
      FBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue) , 'TRUST');
      Self.Color := BankColour(cmbBank.EditValue);
      lblTaxType.Visible := FBankType <> 'T';
      cbTaxType.Visible := FBankType <> 'T';
      neTax.Visible := FBankType <> 'T';
      dfSlipNo.Visible := FBankType <> 'T';
      Label10.Visible := FBankType <> 'T';

      lblAccountType.Visible := False;
      cxCBAccountType.Visible := False;
      lblBillNo.Visible := True;
      edtBillRef.Visible := True;
      cmbBills.visible := False;

      chkInvoiceSupplied.Style.Color := Self.Color;
      chkPrint.Style.Color := Self.Color;
      chkNoExit.Style.Color := Self.Color;
      chkUrgent.Style.Color := Self.Color;
      chkDeposit.Visible := False;

      cmbInvoice.Visible := False;
      lblInv.Visible := False;
      lblLgr.Visible := True;
      tbLedger.Visible := True;

      StatusBar.Panels[0].Text := '';
      StatusBar.Panels[1].Text := '';
      if FBankType = 'T' then
      begin
        tbLedger.Text := '';
        tbLedger.Enabled := False;
        tbFile.Enabled := True;
        edtBillRef.Visible := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        // changed by AES 26/06/2009
        // no reason to not allow cheqreq to be held
//        chkHeld.State := cbsUnchecked;
        chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
        chkHeld.Enabled := False;

        chkBill.State := cbsUnchecked;
        chkBill.Enabled := False;
        chkDeposit.Visible := (SystemString('DEPOSIT_CHEQ_REQ') = 'Y');
        cmbBills.visible := True;


        if (SystemString('INVOICE_FROM_TRUST') = 'Y') then
        begin
           cmbInvoice.Visible := True;
           lblInv.Visible := True;

           lblLgr.Visible := False;
           tbLedger.Visible := False;
        end;

		  chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible then
          chkDeposit.StyleDisabled.Color := Self.Color;
        {
          Instead of hard coding the default tax, we will request it from the
          TaxDefault table.

          BJ 07/01/2003
        }

        lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

        if lsDefaultTax = '' then
          lsDefaultTax := 'NOTAX';
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);
        if tbFile.Text <> '' then
            DisplayTrust(MatterString(tbFile.Text, 'NMATTER'));
      end
      else if FBankType = 'C' then
      begin
        tbFile.Text := '';
        tbLedger.Enabled := True;
        tbFile.Enabled := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        chkHeld.Checked := False;
        chkHeld.Enabled := False;
        chkBill.Checked := False;
        chkBill.Enabled := False;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
        chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible then
            chkDeposit.StyleDisabled.Color := Self.Color;
      end
      else
      begin
        tbLedger.Enabled := True;
        tbFile.Enabled := True;
        chkFunds.Enabled := True;
        chkHeld.Enabled := True;
        chkBill.Enabled := True;
        chkFunds.Enabled := not dmAxiom.Security.CheqReq.Funds.Disabled;
        chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
        chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
        chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
        chkFunds.Style.Color := Self.Color;
        chkHeld.Style.Color := Self.Color;
        chkBill.Style.Color := Self.Color;
      end;
   end;
end;

procedure TfrmCheqReqNew.cbAuthor1Change(Sender: TObject);
begin
  lblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', string(cmbAuthor.EditValue), 'NAME');
end;

procedure TfrmCheqReqNew.btnMatterClick(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
      begin
         tbLedger.Text := '';
         if IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
            MsgErr('A new cheque requisition cannot be created for this matter. '+
                  'This matter is Archived.')
         else
            DisplayFile(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
      end;
  end;
end;

procedure TfrmCheqReqNew.btnPayeeClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
    tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
    FNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
  if Self.Visible then
    dfSlipNo.SetFocus;
end;

procedure TfrmCheqReqNew.btnLedgerClick(Sender: TObject);
begin
  SettingSave('Ledger Search', 'Bank', cmbBank.Text);
  if not FormExists(frmLedgerSearch) then
    Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
  if frmLedgerSearch.ShowModal = mrOk then
  begin
    tbFile.Text := '';
    DisplayLedger(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString);
  end;
end;

procedure TfrmCheqReqNew.tbFileExit(Sender: TObject);
begin
  if tbFile.Text <> '' then
  begin
     if IsMatterArchived(tbFile.Text) then
        MsgErr('A new cheque requisition cannot be created for this matter. '+
               'This matter is Archived.')
     else
     if IsValidMatterForEntity(tbFile.Text) then
     begin
        if MatterString(tbFile.Text, 'TITLE') = '' then
        begin
          MsgErr('Invalid Matter file number.');
          tbFile.SetFocus;
        end
        else
          DisplayFile(tbFile.Text);
     end
     else
     begin
        MsgErr('This matter #' + tbFile.Text +
               ' is not valid for the current Entity.');
        tbFile.Text := '';
     end;
  end;
end;

procedure TfrmCheqReqNew.tbLedgerExit(Sender: TObject);
var
  defaultLedgerTaxCode : String;
  glInstance : TglComponentInstance ;
begin
   if tbLedger.Text <> '' then
   begin        // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(tbLedger.Text,true);
      if not glInstance.valid then
      begin
         glInstance.displayError;
         tbLedger.Text := '';
         lblLgrDesc.caption := '';
         tbLedger.SetFocus;
         glInstance.free;
         exit;
      end
      else
      begin
      begin
         tbLedger.Text :=  glInstance.fullCode;
         FLedger := glInstance.ledgerKey;
      end;
   end;

   if not AllowDirectPost(glInstance.ledgerKey) then
   begin
      MsgErr('You may not post to ledger Reference #' + tbLedger.Text);
      tbLedger.Text := '';
      tbLedger.SetFocus;
   end
   else
   if LedgerString(glInstance.ledgerKey, 'REPORT_DESC') = '' then
   begin
      MsgErr('Invalid Ledger code');
      tbLedger.SetFocus;
   end
   else
      // AES 12/12/2011 - CHANGED THIS TO USE THE CODE RATHER THAN DISPLAY VALUE
      DisplayLedger(glInstance.ledgerKey);

   defaultLedgerTaxCode := LedgerString(glInstance.ledgerKey, 'DEFAULT_TAXCODE');

   if defaultLedgerTaxCode <> '' then
      cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(defaultLedgerTaxCode)
   else
      cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
   end;
end;

procedure TfrmCheqReqNew.tbPayeeExit(Sender: TObject);
begin
  Quickcode(Sender);
end;

procedure TfrmCheqReqNew.tbPayeeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(Sender);
end;

procedure TfrmCheqReqNew.chkBillClick(Sender: TObject);
begin
  if not chkBill.Checked then
  begin
    chkFunds.Checked := False;
    chkFunds.StyleDisabled.Color := Self.Color;
  end;
end;

procedure TfrmCheqReqNew.chkFundsClick(Sender: TObject);
begin
   if chkFunds.Checked then
   begin
      chkHeld.Checked := True;
      chkHeld.Enabled := False;
      chkBill.Checked := True;
      chkBill.Enabled := False;
      chkHeld.StyleDisabled.Color := Self.Color;
      chkBill.StyleDisabled.Color := Self.Color;
      if chkDeposit.Visible then
         chkDeposit.StyleDisabled.Color := Self.Color;
   end
   else
   begin
      chkHeld.Enabled := True;
      chkBill.Enabled := True;
      chkHeld.Checked := False;
      chkBill.Checked := False
   end;
end;

procedure TfrmCheqReqNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryCheqReq.CLose;

  Action := caFree;
end;

procedure TfrmCheqReqNew.FormCreate(Sender: TObject);
begin
   tbLedger.Visible := dmAxiom.Security.CheqReq.Ledger;
   lblLgrDesc.Visible := dmAxiom.Security.CheqReq.Ledger;
   lblLgr.Visible := dmAxiom.Security.CheqReq.Ledger;
   chkFunds.Visible := dmAxiom.Security.CheqReq.Funds.Visible;
   chkHeld.Visible := dmAxiom.Security.CheqReq.Held.Visible;
   chkBill.Visible := dmAxiom.Security.CheqReq.Bill.Visible;
   chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
   chkFunds.Enabled := not dmAxiom.Security.CheqReq.Funds.Disabled;
   chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
   chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
   chkPrint.Checked := dmAxiom.Security.CheqReq.Print;
   lblBillNo.Visible := dmAxiom.Security.Bill.Post;
   edtBillRef.Visible := dmAxiom.Security.Bill.Post;

   chkPreviewPDF.Visible := (SystemString('SaveCheqReq_as_pdf') = 'Y');

   dmAxiom.qryEmplyeeList.Open;

   dtpReqDate.EditValue := trunc(Now());
   neTax.EditValue := 0.00;
   FBankType := '';

   dmAxiom.qryEntityBank.Close;
   dmAxiom.qryEntityBank.ParamByName('ENTITY').AsString := dmAxiom.Entity;
   dmAxiom.qryEntityBank.Open;
   StringPopulate(cbTaxType.Properties.Items, 'TAXTYPE', 'CODE');

   qrySundryType.ParamByName('ENTITY').AsString := dmAxiom.Entity;
   qrySundryType.Open;

   DefaultTax := get_default_gst('ChequeRequisition');

   if DefaultTax = '' then
      DefaultTax := 'NOTAX';

   cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);

   cOriginalAmount := 0;
   cOriginalTax := 0;
   fcCurrentAmount := 0.00;
   cmbBank.EditValue := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');

   if dmAxiom.Security.CheqReq.Funds.Checked then
      chkFunds.Checked := SettingLoadBoolean(dmAxiom.UserID, 'CHEQUEREQ', 'ANTCRED');
   chkHeld.Checked := SettingLoadBoolean(dmAxiom.UserID, 'CHEQUEREQ', 'HELD');

   cmbBank.EditValue := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
   cmbBank.Properties.OnChange(Self);  // OnChange(Self);
end;

procedure TfrmCheqReqNew.cbTaxTypeClick(Sender: TObject);
begin
  CalcTax;
end;


procedure TfrmCheqReqNew.CalcTax;
var
  dAmount: double;
begin
  dAmount := fcCurrentAmount;
  neTax.EditValue := TaxCalc(dAmount, '', cbTaxType.Text, dtpReqDate.Date);

{
  Code Modified 15.11.2002 GG

  This code does not update the fcCurrent amount value for GSTIN cheqreqs.

  if (IsWitholdingTax) then
    neAmount.AsCurrency := fcCurrentAmount
  else
    neAmount.AsCurrency := dAmount;
}

  if not (IsWitholdingTax) then
    fcCurrentAmount:= dAmount;

  neAmount.EditValue := fcCurrentAmount
end;

procedure TfrmCheqReqNew.neAmountExit(Sender: TObject);
begin
  if (fcCurrentAmount <> neAmount.EditValue) then
  begin
    fcCurrentAmount := neAmount.EditValue;
    ShowTotal;
    CalcTax;
  end;    //  end if
end;

procedure TfrmCheqReqNew.cbExpenseTypeChange(Sender: TObject);
var
   lTaxCode: string;
begin
//  lblExpenseTypeDescr.Caption := TableString('SUNDRYTYPE', 'CODE', cbExpenseType.Text, 'DESCR');
   //if cmbExpenseType.Text <> '' then
   if ((cmbExpenseType.Text <> '') and (FBankType <> 'T')) then
   begin
      lTaxCode := TableString('SUNDRYTYPE','CODE', string(cmbExpenseType.EditValue), 'TAXCODE');
      if (lTaxCode <> '') and (dmAxiom.qryEntityBank.FieldByName('TRUST').AsString <> 'T') then
      begin
         cbTaxType.EditValue := lTaxCode;
         CalcTax;
      end;
   end;
end;


procedure TfrmCheqReqNew.ShowTotal;
var
  lcTotalAmount : Currency;
begin
   if (IsWitholdingTax) then
   begin
      if neTax.EditValue = null then
        lcTotalAmount := fcCurrentAmount - 0
      else
        lcTotalAmount := fcCurrentAmount - neTax.EditValue;
   end
   else
   begin
      if neTax.EditValue = null then
          lcTotalAmount := fcCurrentAmount + 0
      else
          lcTotalAmount := fcCurrentAmount + neTax.EditValue;
   end;

   lblTotal.Caption := 'The Total Amount of the Cheque will be ' + Format('%m', [lcTotalAmount]);
end;

procedure TfrmCheqReqNew.neAmountChange(Sender: TObject);
begin
   ShowTotal;
end;

procedure TfrmCheqReqNew.cbTaxTypeChange(Sender: TObject);
begin
   ShowTotal;
end;

procedure TfrmCheqReqNew.neTaxChange(Sender: TObject);
begin
  ShowTotal;
end;

procedure TfrmCheqReqNew.btnBillClick(Sender: TObject);
begin
   lblNmemo.Caption := '';
   if not FormExists(frmInvoiceSearch) then
      Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

   if tbFile.Text <> '' then
   begin
      frmInvoiceSearch.BillsForMatter := True;
      frmInvoiceSearch.tbMatterSearch.Text := tbFile.Text;
   end;
   if frmInvoiceSearch.ShowModal = mrOk then
   begin
      lblnmemo.Caption := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsString;
      DisplayBill(frmInvoiceSearch.qryInvoices.FieldByName('REFNO').AsString,frmInvoiceSearch.qryInvoices.FieldByName('ACCT').AsString,frmInvoiceSearch.qryInvoices.FieldByName('FILEID').AsString,
      frmInvoiceSearch.qryInvoices.FieldByName('OWING').AsCurrency);
   end;
end;

function TfrmCheqReqNew.IsWitholdingTax : Boolean;
begin
  Result := cbTaxType.Text = 'WHOLD';

end;

procedure TfrmCheqReqNew.tbPayeePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

   if frmPhoneBookSearch.ShowModal = mrOk then
      tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      FNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
   if Self.Visible then
      if dfSlipNo.Visible then
         dfSlipNo.SetFocus;
end;

procedure TfrmCheqReqNew.teChequeNoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   ADefPrinter: string;
   iCheqNoTest: integer;
begin
   if VarIsNull(DisplayValue) = False then
   begin
      if (TryStrToInt(string(DisplayValue), iCheqNoTest) = true) then
      begin
         if dmAxiom.qryEntityBank.FieldByName('TRUST').AsString = 'G' then
         begin
            if (dmAxiom.UserChequePrinter = '')  then
            begin
               MsgInfo('Office Cheque Printer not set up. Please ask your System Administrator to set up a default Office Cheque printer in the Employee screen');
               Error := False;
               teChequeNo.Clear;
               DisplayValue := '';
               Exit;
            end;
         end
         else if dmAxiom.qryEntityBank.FieldByName('TRUST').AsString = 'T' then
         begin
            if (dmAxiom.UserTrustChequePrinter = '') then
            begin
               MsgInfo('Trust Cheque Printer not set up. Please ask your System Administrator to set up a default Trust Cheque printer in the Employee screen');
               Error := False;
               teChequeNo.Clear;
               DisplayValue := '';
               Exit;
            end;
         end;

         with qryChequeRange do
         begin
            if (dmAxiom.qryEntityBank.FieldByName('TRUST').AsString = 'G') then
               ADefPrinter := dmAxiom.UserChequePrinter
            else
               ADefPrinter := dmAxiom.UserTrustChequePrinter;
            ParamByName('NUM_LAST').AsString := DisplayValue;
            ParamByName('P_Printer').AsString := dmAxiom.UserChequePrinter;
            Prepare;
            Open;
            if EOF then
            begin
               MsgErr('This Cheque Number is outside the range set for the printer.  Either enter a new number or adjust the range for the printer.');
               Error := False;
               teChequeNo.Clear;
               DisplayValue := '';
               Exit;
            end;
         end;
      end;
   end;
end;

procedure TfrmCheqReqNew.tbFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmMatterSearch) then
    Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

  if frmMatterSearch.ShowModal = mrOk then
  begin
    tbLedger.Text := '';
    if IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
    begin
        MsgErr('A new cheque requisition cannot be created for this matter. '+
               'This matter is Archived.');
        tbFile.Text := '';
     end
     else
        DisplayFile(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
  end;
end;

procedure TfrmCheqReqNew.edtBillRefPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   lblNmemo.Caption := '';
   if not FormExists(frmInvoiceSearch) then
      Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

   if frmInvoiceSearch.ShowModal = mrOk then
   begin
      lblnmemo.Caption := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsString;
      DisplayBill(frmInvoiceSearch.qryInvoices.FieldByName('REFNO').AsString,frmInvoiceSearch.qryInvoices.FieldByName('ACCT').AsString,frmInvoiceSearch.qryInvoices.FieldByName('FILEID').AsString,
      frmInvoiceSearch.qryInvoices.FieldByName('OWING').AsCurrency);
   end;
end;

procedure TfrmCheqReqNew.tbLedgerPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   SettingSave('Ledger Search', 'Bank', cmbBank.Text);
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
   if frmLedgerSearch.ShowModal = mrOk then
   begin
      tbFile.Text := '';
      DisplayLedger(LedgerComponentString(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString, 'code'));
   end;
end;

procedure TfrmCheqReqNew.tbLedgerPropertiesChange(Sender: TObject);
begin
   if (tbLedger.Text = '') then
   begin
      chkFunds.Checked := True;
      chkFunds.Enabled := True;
      chkHeld.Checked := True;
      chkHeld.Enabled := True;
      chkBill.Checked := True;
      chkBill.Enabled := True;
      lblLgrDesc.Caption := '';
   end;
end;

procedure TfrmCheqReqNew.dtpReqDatePropertiesCloseUp(Sender: TObject);
begin
   if dtpReqDate.Properties.MinDate > 0 then
      if dtpReqDate.Date < dtpReqDate.Properties.MinDate then
         dtpReqDate.Date := dtpReqDate.Properties.MinDate;
end;

procedure TfrmCheqReqNew.tbFilePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   tbLedger.Text := '';
   if IsMatterArchived(DisplayValue) then
   begin
      MsgErr('A new cheque requisition cannot be created for this matter. '+
               'This matter is Archived.');
      DisplayValue := '';
   end
   else
      DisplayFile(DisplayValue);
end;

procedure TfrmCheqReqNew.FormDestroy(Sender: TObject);
begin
   SettingSave('CHEQUEREQ', 'ANTCRED', chkFunds.Checked);
   SettingSave('CHEQUEREQ', 'HELD', chkHeld.Checked);
end;

procedure TfrmCheqReqNew.chkDepositClick(Sender: TObject);
begin
   if chkDeposit.Checked then
   begin
      lblAccountType.Visible := True;
      cxCBAccountType.Visible := True;
      lblBillNo.Visible := False;
      edtBillRef.Visible := false;
      cmbBills.Visible := False
   end
   else
   begin
      lblAccountType.Visible := False;
      cxCBAccountType.Visible := False;
      lblBillNo.Visible := True;
      if tbFile.Text <> '' then
         cmbBills.Visible := True
      else
         edtBillRef.Visible := True;
   end;
end;

procedure TfrmCheqReqNew.cxCBAccountTypePropertiesInitPopup(
  Sender: TObject);
begin
   if tbFile.Text <> '' then
   begin
      qryDepositAccount.Close;
      qryDepositAccount.ParamByName('nmatter').AsString := MatterString(tbFile.Text, 'NMATTER');
      qryDepositAccount.Open;
   end;
end;

procedure TfrmCheqReqNew.cmbInvoicePropertiesCloseUp(Sender: TObject);
var
   cTrust: Currency;
   cCreditor: Currency;
   cCreditorOwing: Currency;
begin
   try
      cTrust := ClearTrust(tbFile.Text);
      cCreditor := TableCurrency('INVOICE', 'NINVOICE', integer(cmbInvoice.EditValue), 'AMOUNT');
      cCreditorOwing := TableCurrency('INVOICE', 'NINVOICE', integer(cmbInvoice.EditValue), 'OWING');
      if cCreditor > cCreditorOwing then
      begin
          fcCurrentAmount := cCreditorOwing;
          neAmount.EditValue := cCreditorOwing;
      end
      else
      begin
          fcCurrentAmount := cCreditor;
          neAmount.EditValue := cCreditor;
      end;

      //neAmount.EditValue := cCreditor;
      tbPayee.Text := TableString('INVOICE', 'NINVOICE', integer(cmbInvoice.EditValue), 'CREDITOR'); // frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      FNName := TableInteger('CREDITOR', 'NCREDITOR', TableInteger('INVOICE', 'NINVOICE', integer(cmbInvoice.EditValue), 'NCREDITOR'), 'NNAME');  //frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
      tbDesc.Text := TableString('INVOICE', 'NINVOICE', integer(cmbInvoice.EditValue), 'DESCR');
   except
   //
   end;
end;

procedure TfrmCheqReqNew.cmbInvoicePropertiesInitPopup(Sender: TObject);
var
    iNmatter, iNmemo : integer;
begin
   if (tbFile.Text <> '') and (cmbBills.Text <> '') then
   begin
      try
         dsInv.DataSet := qryInvBilled;
         iNmatter := StrToInt(MatterString(tbFile.Text, 'NMATTER'));
         iNmemo := StrToInt(TableString('NMEMO','REFNO', string(cmbBills.EditValue), 'NMEMO'));
         qryInvBilled.Close;
         //qryBillCrd.ParamByName('NMATTER').AsInteger := iNmatter;
         qryInvBilled.ParamByName('NMEMO').AsInteger := iNmemo;
         //qryBillInv.ParamByName('NMATTER').AsString := MatterString(tbFile.Text, 'NMATTER');
         //qryBillInv.ParamByName('NMEMO').AsString := TableString('NMEMO','REFNO', string(cmbBills.EditValue), 'NMEMO');
         qryInvBilled.Open;
      except
         //
      end;
   end
   else
   if (tbFile.Text <> '') and (dmAxiom.qryEntityBank.FieldByName('TRUST').AsString = 'T') then
   begin
      try
         dsInv.DataSet := qryInvUnbilled;
         qryInvUnbilled.Close;
         iNmatter := StrToInt(MatterString(tbFile.Text, 'NMATTER'));
         qryInvUnbilled.ParamByName('NMATTER').AsInteger := iNmatter;
         qryInvUnbilled.Open;
      except
         //
      end;
   end
end;

procedure TfrmCheqReqNew.cmbBillsPropertiesInitPopup(Sender: TObject);
begin
   if tbFile.Text <> '' then
   begin
      qryMatterBills.Close;
      qryMatterBills.ParamByName('NMATTER').AsString := MatterString(tbFile.Text, 'NMATTER');
      qryMatterBills.Open;
   end;
end;

procedure TfrmCheqReqNew.cmbBillsPropertiesCloseUp(Sender: TObject);
var
   ANMemo: integer;
begin
   if cmbBills.Text <> '' then
   begin
      DisplayBill(cmbBills.Text);
      lblnmemo.Caption := TableString('NMEMO','REFNO',cmbBills.Text,'NMEMO');
      edtBillRef.Text := cmbBills.Text;
      CheckUnpaidCreditors(cmbBills.Text);

      ANMemo := TcxLookupComboBox(Sender).Properties.DataController.Values[TcxLookupComboBox(Sender).ItemIndex ,5];
      lblnmemo.Caption := IntToStr(ANMemo);
   end
   else
      ANMemo := 0;
end;

procedure TfrmCheqReqNew.DisplayTrust(AFileID: string);
begin
   with qryGetTrust do
   begin
      close;
      ParamByName('P_File').AsString := AFileID;
      Open;
      if not EOF then
      begin
         StatusBar.Panels[0].Text := 'Available Trust: ' + CurrToStrF(FieldByName('cl_trust_bal').AsCurrency - FieldByName('trust_uncon_cheqreq_amt').AsCurrency, ffCurrency, 2);
         StatusBar.Panels[1].Text := 'Total Trust: ' + CurrToStrF(FieldByName('trust_bal').AsCurrency, ffCurrency, 2);
      end;
   end;
end;

procedure TfrmCheqReqNew.cmbBankPropertiesCloseUp(Sender: TObject);
var
  lsDefaultTax : String;
begin
   if cmbBank.Text <> '' then
   begin
      FBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue) , 'TRUST');
      Self.Color := BankColour(cmbBank.EditValue);
      lblTaxType.Visible := FBankType <> 'T';
      cbTaxType.Visible := FBankType <> 'T';
      neTax.Visible := FBankType <> 'T';
      dfSlipNo.Visible := FBankType <> 'T';
      Label10.Visible := FBankType <> 'T';

      lblAccountType.Visible := False;
      cxCBAccountType.Visible := False;
      lblBillNo.Visible := True;
      edtBillRef.Visible := True;
      cmbBills.visible := False;

      chkInvoiceSupplied.Style.Color := Self.Color;
      chkPrint.Style.Color := Self.Color;
      chkNoExit.Style.Color := Self.Color;
      chkUrgent.Style.Color := Self.Color;
      chkDeposit.Visible := False;

      cmbInvoice.Visible := False;
      lblInv.Visible := False;
      lblLgr.Visible := True;
      tbLedger.Visible := True;

      StatusBar.Panels[0].Text := '';
      StatusBar.Panels[1].Text := '';
      if FBankType = 'T' then
      begin
        tbLedger.Text := '';
        tbLedger.Enabled := False;
    //    btnLedger.Enabled := False;
        tbFile.Enabled := True;
    //    btnMatter.Enabled := True;
        edtBillRef.Visible := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        chkHeld.State := cbsUnchecked;
        chkHeld.Enabled := False;
        chkBill.State := cbsUnchecked;
        chkBill.Enabled := False;
        chkDeposit.Visible := (SystemString('DEPOSIT_CHEQ_REQ') = 'Y');
        cmbBills.visible := True;


        if (SystemString('INVOICE_FROM_TRUST') = 'Y') then
        begin
           cmbInvoice.Visible := True;
           lblInv.Visible := True;

           lblLgr.Visible := False;
           tbLedger.Visible := False;
        end;

		  chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible then
          chkDeposit.StyleDisabled.Color := Self.Color;
        {
          Instead of hard coding the default tax, we will request it from the
          TaxDefault table.

          BJ 07/01/2003
        }

        lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

        if lsDefaultTax = '' then
          lsDefaultTax := 'NOTAX';
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);
        if tbFile.Text <> '' then
            DisplayTrust(MatterString(tbFile.Text, 'NMATTER'));
      end
      else if FBankType = 'C' then
      begin
        tbFile.Text := '';
        tbLedger.Enabled := True;
    //    btnLedger.Enabled := True;
        tbFile.Enabled := False;
    //    btnMatter.Enabled := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        chkHeld.Checked := False;
        chkHeld.Enabled := False;
        chkBill.Checked := False;
        chkBill.Enabled := False;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
        chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible then
            chkDeposit.StyleDisabled.Color := Self.Color;
      end
      else
      begin
        tbLedger.Enabled := True;
    //    btnLedger.Enabled := True;
        tbFile.Enabled := True;
    //    btnMatter.Enabled := True;
        chkFunds.Enabled := True;
        chkHeld.Enabled := True;
        chkBill.Enabled := True;
        chkFunds.Enabled := not dmAxiom.Security.CheqReq.Funds.Disabled;
        chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
        chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
        chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
        chkFunds.Style.Color := Self.Color;
        chkHeld.Style.Color := Self.Color;
        chkBill.Style.Color := Self.Color;
      end;
   end;

end;

procedure TfrmCheqReqNew.cmbBankPropertiesChange(Sender: TObject);
var
  lsDefaultTax : String;
  bValidBank: boolean;
begin
   bValidBank := True;
   if cmbBank.Text <> '' then
   begin
      FBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue) , 'TRUST');

      TFormStyleHookBackground.BackGroundSettings.Enabled := True;
      TFormStyleHookBackground.BackGroundSettings.UseColor := True;
      TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cmbBank.EditValue);//set

//      Self.Color := BankColour(cmbBank.EditValue);
      lblTaxType.Visible := FBankType <> 'T';
      cbTaxType.Visible := FBankType <> 'T';
      neTax.Visible := FBankType <> 'T';
      dfSlipNo.Visible := FBankType <> 'T';
      Label10.Visible := FBankType <> 'T';

      lblAccountType.Visible := False;
      cxCBAccountType.Visible := False;
      lblBillNo.Visible := True;
      edtBillRef.Visible := True;
      cmbBills.visible := False;

      chkInvoiceSupplied.Style.Color := Self.Color;
      chkPrint.Style.Color := Self.Color;
      chkNoExit.Style.Color := Self.Color;
      chkUrgent.Style.Color := Self.Color;
      chkDeposit.Visible := False;

      Self.Invalidate;
      Self.Perform(WM_PAINT, 0, 0);

      cmbInvoice.Visible := False;
      lblInv.Visible := False;
      lblLgr.Visible := True;
      tbLedger.Visible := True;

      StatusBar.Panels[0].Text := '';
      StatusBar.Panels[1].Text := '';
      if FBankType = 'T' then
      begin
        if (tbFile.Text <> '') then
        begin
           if (IsValidMatterForBank(tbFile.Text, cmbBank.EditValue) = False) then
           begin
              MsgErr('The Client Bank selected ('+cmbBank.EditValue +') does not match the Client bank for the matter('+MatterString(tbFile.Text, 'ACCT') +')');
              cmbBank.ClearSelection;
              bValidBank := False;
              Exit;
           end;
        end;

        if bValidBank = True then
        begin
           tbLedger.Text := '';
           tbLedger.Enabled := False;
    //       btnLedger.Enabled := False;
           tbFile.Enabled := True;
    //       btnMatter.Enabled := True;
           edtBillRef.Visible := False;
           chkFunds.Checked := False;
           chkFunds.Enabled := False;
           // changed by AES 26/06/2009
           // no reason to not allow cheqreq to be held
           chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;  // State := cbsUnchecked;
           chkHeld.Enabled := False;

           chkBill.State := cbsUnchecked;
           chkBill.Enabled := False;
           chkDeposit.Visible := (SystemString('DEPOSIT_CHEQ_REQ') = 'Y');
           cmbBills.visible := True;


           if (SystemString('INVOICE_FROM_TRUST') = 'Y') then
           begin
              cmbInvoice.Visible := True;
              lblInv.Visible := True;

              lblLgr.Visible := False;
              tbLedger.Visible := False;
           end;

		     chkFunds.StyleDisabled.Color := Self.Color;
           chkHeld.StyleDisabled.Color := Self.Color;
           chkBill.StyleDisabled.Color := Self.Color;
           if chkDeposit.Visible then
             chkDeposit.StyleDisabled.Color := Self.Color;
           {
             Instead of hard coding the default tax, we will request it from the
             TaxDefault table.

             BJ 07/01/2003
           }

           lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

           if lsDefaultTax = '' then
             lsDefaultTax := 'NOTAX';
           cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);
           if tbFile.Text <> '' then
               DisplayTrust(MatterString(tbFile.Text, 'NMATTER'));
        end;
      end
      else if FBankType = 'C' then
      begin
        tbFile.Text := '';
        tbLedger.Enabled := True;
    //    btnLedger.Enabled := True;
        tbFile.Enabled := False;
    //    btnMatter.Enabled := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        chkHeld.Checked := False;
        chkHeld.Enabled := False;
        chkBill.Checked := False;
        chkBill.Enabled := False;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
        chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible then
            chkDeposit.StyleDisabled.Color := Self.Color;
      end
      else
      begin
        tbLedger.Enabled := True;
    //    btnLedger.Enabled := True;
        tbFile.Enabled := True;
    //    btnMatter.Enabled := True;
        chkFunds.Enabled := True;
        chkHeld.Enabled := True;
        chkBill.Enabled := True;
        chkFunds.Enabled := not dmAxiom.Security.CheqReq.Funds.Disabled;
        chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
        chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
        chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
        chkFunds.Style.Color := Self.Color;
        chkHeld.Style.Color := Self.Color;
        chkBill.Style.Color := Self.Color;
      end;
      if cmbBills.Visible = True then
         cmbBills.Enabled := (FBankType = 'T');
      if edtBillRef.Visible = True then
         edtBillRef.Enabled := (FBankType = 'T');
   end;
end;

procedure TfrmCheqReqNew.cmbBankPropertiesEditValueChanged(
  Sender: TObject);
var
  lsDefaultTax : String;
  bValidBank : boolean;
begin
   bValidBank := True;
   if cmbBank.Text <> '' then
   begin
      FBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue) , 'TRUST');
      Self.Color := BankColour(cmbBank.EditValue);
      lblTaxType.Visible := FBankType <> 'T';
      cbTaxType.Visible := FBankType <> 'T';
      neTax.Visible := FBankType <> 'T';
      dfSlipNo.Visible := FBankType <> 'T';
      Label10.Visible := FBankType <> 'T';

      lblAccountType.Visible := False;
      cxCBAccountType.Visible := False;
      lblBillNo.Visible := True;
      edtBillRef.Visible := True;
      cmbBills.visible := False;

      chkInvoiceSupplied.Style.Color := Self.Color;
      chkPrint.Style.Color := Self.Color;
      chkNoExit.Style.Color := Self.Color;
      chkUrgent.Style.Color := Self.Color;
      chkDeposit.Visible := False;

      cmbInvoice.Visible := False;
      lblInv.Visible := False;
      lblLgr.Visible := True;
      tbLedger.Visible := True;

      StatusBar.Panels[0].Text := '';
      StatusBar.Panels[1].Text := '';
      if FBankType = 'T' then
      begin
        if (tbFile.Text <> '') then
        begin
           if (IsValidMatterForBank(tbFile.Text, cmbBank.EditValue) = False) then
           begin
              MsgErr('The Client Bank selected ('+cmbBank.EditValue +') does not match the Client bank for the matter('+MatterString(tbFile.Text, 'ACCT') +')');
              cmbBank.ClearSelection;
              bValidBank := False;
              Exit;
           end;
        end;

        if bValidBank = True then
        begin
           tbLedger.Text := '';
           tbLedger.Enabled := False;
    //       btnLedger.Enabled := False;
           tbFile.Enabled := True;
    //       btnMatter.Enabled := True;
           edtBillRef.Visible := False;
           chkFunds.Checked := False;
           chkFunds.Enabled := False;

           // changed by AES 26/06/2009
           // no reason to not allow cheqreq to be held
           chkHeld.Checked := False;  //dmAxiom.Security.CheqReq.Held.Checked; //  State := cbsUnchecked;
           chkHeld.Enabled := False;

           chkBill.State := cbsUnchecked;
           chkBill.Enabled := False;
           chkDeposit.Visible := (SystemString('DEPOSIT_CHEQ_REQ') = 'Y');
           cmbBills.visible := True;

           if (SystemString('INVOICE_FROM_TRUST') = 'Y') then
           begin
              cmbInvoice.Visible := True;
              lblInv.Visible := True;

              lblLgr.Visible := False;
              tbLedger.Visible := False;
           end;

		     chkFunds.StyleDisabled.Color := Self.Color;
           chkHeld.StyleDisabled.Color := Self.Color;
           chkBill.StyleDisabled.Color := Self.Color;
           if chkDeposit.Visible then
             chkDeposit.StyleDisabled.Color := Self.Color;
           {
             Instead of hard coding the default tax, we will request it from the
             TaxDefault table.

             BJ 07/01/2003
           }

           lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

           if lsDefaultTax = '' then
             lsDefaultTax := 'NOTAX';
           cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);
           if tbFile.Text <> '' then
               DisplayTrust(MatterString(tbFile.Text, 'NMATTER'));
        end;
      end
      else if FBankType = 'C' then
      begin
        tbFile.Text := '';
        tbLedger.Enabled := True;
    //    btnLedger.Enabled := True;
        tbFile.Enabled := False;
    //    btnMatter.Enabled := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        chkHeld.Checked := False;
        chkHeld.Enabled := False;
        chkBill.Checked := False;
        chkBill.Enabled := False;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
        chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible then
            chkDeposit.StyleDisabled.Color := Self.Color;
      end
      else
      begin
        tbLedger.Enabled := True;
    //    btnLedger.Enabled := True;
        tbFile.Enabled := True;
    //    btnMatter.Enabled := True;
        chkFunds.Enabled := True;
        chkHeld.Enabled := True;
        chkBill.Enabled := True;
        chkFunds.Enabled := not dmAxiom.Security.CheqReq.Funds.Disabled;
        chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
        chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
        chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
        chkFunds.Style.Color := Self.Color;
        chkHeld.Style.Color := Self.Color;
        chkBill.Style.Color := Self.Color;
      end;
   end;
end;

procedure TfrmCheqReqNew.cmbBillsPropertiesEditValueChanged(
  Sender: TObject);
begin
   if cmbBills.Text = '' then
   begin
      edtBillRef.Text := '';
      lblnmemo.Caption := '';
   end;
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmCheqReqNew, TFormStyleHookBackground);

finalization
   TStyleManager.Engine.UnRegisterStyleHook(TfrmCheqReqNew, TFormStyleHookBackground);

end.

