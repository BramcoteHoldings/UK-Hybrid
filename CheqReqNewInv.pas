unit CheqReqNewInv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, OraSmart, DateTimeAccount, DBAccess, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxCalendar, cxLookAndFeelPainters,
  cxButtons, cxCheckBox, EnforceCustomDateEdit;

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

  private
    { Private declarations }
    cOriginalAmount : Currency;
    cOriginalTax    : Currency;
    fcCurrentAmount : Currency;
    FNName: integer;

    DefaultTax      : String;
    s               : String;

    function OKtoPost : Boolean;
    function IsWitholdingTax : Boolean;
    
    procedure CalcTax;
    procedure ShowTotal;
    procedure ToggleFields(bEnable: boolean);

  public
    { Public declarations }
    procedure DisplayFile(sFile : string);
    procedure DisplayLedger(sCode : string);
    procedure DisplayBill(sBill,sBank,sFile: String;cOwing : Currency);
    procedure DisplayCheqReq(iCheqReq : integer);
  end;

implementation

uses
  CheqReqPrint, MiscFunc, AxiomData, MSearch, NSearch, LSearch, citfunc,
  InvoiceSearch,glComponentUtil;

{$R *.DFM}


procedure TfrmCheqReqNew.FormShow(Sender: TObject);
begin
  if not qryCheqReq.Active then
  begin
//    AddBanks(cbBank, '');
    cmbBank.EditValue := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
//    cbBank.ItemIndex := cbBank.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
//    cbBank.OnChange(Self);
//    cbAuthor.Items := dmAxiom.Employees;
    cmbAuthor.EditValue := dmAxiom.UserID;
//    cmbAuthor.OnChange(Self);
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
//  if TableString('BANK', 'ACCT', cmbBank.EditValue, 'TRUST') = 'G' then
//  begin
//    chkFunds.Enabled := True;
//    chkFunds.OnClick(Self);
//  end;
end;

procedure TfrmCheqReqNew.DisplayBill(sBill,sBank,sFile : String;cOwing : Currency);
var cTrust : Currency;
begin

    edtBillRef.Text := sBill;
    cTrust := ClearTrust(sFile);
    if cTrust < cOwing then
        neAmount.EditValue := cTrust
    else
        neAmount.EditValue := cOwing;

    //addBanks(cbBank,'');
    
//    cbBank.ItemIndex := cbBank.Items.IndexOf(sBank);
//    cbBankChange(Self);

    CalcTax;

    chkHeld.Checked := False;
    tbFile.Text := sFile;
    // set the bank to the trust bank from the matter

end;

procedure TfrmCheqReqNew.DisplayLedger(sCode : string);
begin
  tbFile.Text := '';
  lblClient.Caption := '';
  lblMatterDescr.Caption := '';
  tbLedger.Text := sCode;
  lblLgrDesc.Caption := LedgerComponentString (sCode, 'REPORT_DESC');
  chkFunds.Checked := False;
  chkFunds.Enabled := False;
  chkHeld.Checked := False;
  chkHeld.Enabled := False;
  chkBill.Checked := False;
  chkBill.Enabled := False;
end;


procedure TfrmCheqReqNew.DisplayCheqReq(iCheqReq : integer);
begin
  with qryCheqReq do
  begin
    Close;
    ParamByName('NCHEQREQ').AsInteger := iCheqReq;
    Open;
    ToggleFields(True);
    if not IsEmpty then
    begin
//      AddBanks(cbBank, '');
//      cbAuthor.Items := dmAxiom.Employees;
      if FieldByName('FILEID').AsString <> '' then
        DisplayFile(FieldByName('FILEID').AsString);
      dtpReqDate.Date := FieldByName('REQDATE').AsDateTime;
      cmbBank.EditValue := FieldByName('BANK').AsString;
      cmbBank.Properties.OnChange(Self);
      //cbBank.Enabled := False;
      cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(FieldByName('TAXCODE').AsString);
      if FieldByName('LEDGER').AsString <> '' then
        DisplayLedger(FieldByName('LEDGER').AsString);
      tbPayee.Text := FieldByName('PAYEE').AsString;
      tbDesc.Text := FieldByName('DESCR').AsString;
      neAmount.EditValue := FieldByName('AMOUNT').AsCurrency;
      fcCurrentAmount := neAmount.EditValue;
      neTax.EditValue := FieldByName('TAX').AsCurrency;
      cOriginalAmount := FieldByName('AMOUNT').AsCurrency;
      cOriginalTax := FieldByName('TAX').AsCurrency;
      cmbAuthor.EditValue := FieldByName('AUTHOR').AsString;
//      cbAuthor.OnChange(Self);
      cmbExpenseType.EditValue := FieldByName('SUNDRYTYPE').AsString;
//      cbExpenseType.OnChange(Self);
      mmoNotes.Text := FieldByName('NOTE').AsString;
      chkInvoiceSupplied.Checked := FieldByName('INVOICESUPPLIED').AsString = 'Y';
      dfSlipNo.Text := qryCheqReq.FieldByName('CREDITOR_INVOICE').AsString;
      FNName := qryCheqReq.FieldByName('NNAME').AsInteger;
      if FieldByName('BILLED').AsString = 'N' then
        chkBill.State := cbsChecked
      else
      begin
        chkBill.State := cbsUnChecked;
        //pb- if FieldByName('NMEMO').AsInteger > 0 then
        if FieldByName('NMEMO').AsString <> '' then
        begin
          chkBill.Enabled := False;
          chkFunds.Enabled := False;
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

      ToggleFields(False);
      //pb- if (FieldByName('BILLED').AsString = 'Y') and (FieldByName('NMEMO').AsInteger <> 0) then
      if (FieldByName('BILLED').AsString = 'Y') and (FieldByName('NMEMO').AsString <> '') then
      begin
        chkFunds.Enabled := False;
        chkHeld.Enabled := False;
        chkBill.Enabled := False;
        tbFile.Properties.Buttons.Items[0].Visible := False;
//        btnPayee.Enabled := False;
//        dtpReqDate.Enabled := False;
//        cmbBank.Enabled := False;
//        tbLedger.Enabled := False;
//        tbPayee.Enabled := False;
//        neAmount.Enabled := False;
//        cmbAuthor.Enabled := False;
        lblInvoiceMsg.Visible := True;
        lblInvoice.Visible := True;
        lblInvoice.Caption := TableString('NMEMO', 'NMEMO', FieldByName('NMEMO').AsInteger, 'REFNO');
      end;
    end
    else
      Self.Close;
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
   neTax.Enabled := bEnable;
   cmbExpenseType.Enabled := bEnable;
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
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Cheque Requisition details before saving:    ' + #13#13 + sTmp);
    bOKtoPost := False;
  end;
  result:= bOKtoPost
end;


procedure TfrmCheqReqNew.btnSaveClick(Sender: TObject);
var
  iCheqReq: integer;
  bPostingFailed: boolean;
  Bank_Trust, Bank: string;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
  glInstance: TglComponentInstance;

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
   if OKtoPost then
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


   // Added 18.08.2003 AES
   // check if matter is valid for current entity
      if (tbFile.Text <> '') and (not IsValidMatterForEntity(tbFile.Text) or
         not IsValidBankForEntity(cmbBank.EditValue)) then
         MsgErr('This matter #' + tbFile.Text +
                ' is not valid for the current Entity.')
      else if (tbFile.Text <> '') and (IsMatterArchived(tbFile.Text)) then
         begin
            MsgErr('A new cheque requisition cannot be created for this matter. '+
                   'This matter is Archived.');
            tbFile.Text := '';
         end
      else if (tbLedger.Text <> '') and not (IsValidGLACCTForEntity(decodeGlInstance(glInstance)) or
         not IsValidBankForEntity(cmbBank.EditValue)) then
         MsgErr('This Ledger #' + tbLedger.Text +
                ' is not valid for the current Entity.')
      else if (not qryCheqReq.Active) and  (dfSlipNo.Text <> '') and not (IsCRInvoiceUnique(dfSlipNo.Text,FNName)) then
         MsgErr('Creditor Invoice #' + dfSlipNo.Text +
                ' is already being used.')
      else
  // if PostIntoLockedPeriod(dtpReqDate.Date) in [prNotLocked, prOKToProceed] then
      begin
      try
         bPostingFailed := False;
         dmAxiom.uniInsight.StartTransaction;
         if qryCheqReq.Active then
           qryCheqReq.Edit
         else
         begin
           iCheqReq := GetSeqnum('NCHEQREQ');
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
         qryCheqReq.FieldByName('LEDGER').AsString := tbLedger.Text;
         qryCheqReq.FieldByName('PAYEE').AsString := tbPayee.Text;
         qryCheqReq.FieldByName('DESCR').AsString := 'CQR' + inttostr(iCheqReq) + ' ' + tbDesc.Text;
         qryCheqReq.FieldByName('AMOUNT').AsCurrency := neAmount.EditValue;
         qryCheqReq.FieldByName('TAX').AsCurrency := neTax.EditValue;
         qryCheqReq.FieldByName('TAXCODE').AsString := cbTaxType.Text;
         qryCheqReq.FieldByName('AUTHOR').AsString := cmbAuthor.EditValue;
         if cmbExpenseType.Text <> '' then
            qryCheqReq.FieldByName('SUNDRYTYPE').AsString := cmbExpenseType.EditValue;
         qryCheqReq.FieldByName('NOTE').AsString := mmoNotes.Text;
         qryCheqReq.FieldByName('HELD').AsString := 'N';
         qryCheqReq.FieldByName('NMEMO').AsString := lblnmemo.Caption;
         qryCheqReq.FieldByName('URGENT').AsString := 'N';
         qryCheqReq.FieldByName('GROUPABLE').AsString := 'N';
         qryCheqReq.FieldByName('BILLNO').AsString := edtBillRef.Text;
         qryCheqReq.FieldByName('CREDITOR_INVOICE').AsString := dfSlipNo.Text;
         qryCheqReq.FieldByName('NNAME').AsInteger := FNName;


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
               //pb- and (qryCheqReq.FieldByName('NMEMO').AsInteger = 0)
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
           if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and not chkBill.Checked then
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
           if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and chkBill.Checked and (neAmount.EditValue + neTax.EditValue <> cOriginalAmount+cOriginalTax) then
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
             if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and not chkBill.Checked then
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

         if chkBill.Checked then
           qryCheqReq.FieldByName('ANTICIPATED').AsString := 'Y'
         else
           qryCheqReq.FieldByName('ANTICIPATED').AsString := 'N';

         if chkHeld.Checked then
           qryCheqReq.FieldByName('HELD').AsString := 'Y'
         else
           qryCheqReq.FieldByName('HELD').AsString := 'N';

         //pb- if ((qryCheqReq.FieldByName('BILLED').AsString = 'Y') and (qryCheqReq.FieldByName('NMEMO').AsInteger = 0))
         if ((qryCheqReq.FieldByName('BILLED').AsString = 'Y') and (qryCheqReq.FieldByName('NMEMO').AsString = ''))
           or (qryCheqReq.State = dsInsert) then
         begin
           if chkBill.Checked then
           begin
             //pb-
             MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_ANTD', neAmount.EditValue - cOriginalAmount);
             MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_CREQ', (neAmount.EditValue) - cOriginalAmount);
             qryCheqReq.FieldByName('BILLED').AsString := 'N';
           end
           else
             qryCheqReq.FieldByName('BILLED').AsString := 'Y';
         end;

         if chkFunds.Checked then
           qryCheqReq.FieldByName('HELD').AsString := 'W';

         //if qryCheqReq.FieldByName('BILLED').AsString <> 'Y' then
           //qryCheqReq.FieldByName('NMEMO').AsInteger := 0;

         qryCheqReq.Post;


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
         qryCheqReq.ApplyUpdates;
         dmAxiom.uniInsight.Commit;
         if chkPrint.Checked then
           with TfrmCheqReqPrint.Create(Self) do
             PrintCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);

         qryCheqReq.Close;
         if (iCheqReq <> 0) then
           MessageDlg('Cheque Requisition Created CQR' + inttostr(iCheqReq),mtInformation,[mbOK],0);
         if not chkNoExit.Checked then
           Self.Close
         else
         begin
           tbFile.Text := '';
           lblClient.Caption := '';
           lblMatterDescr.Caption := '';
           tbLedger.Text := '';
           lblLgrDesc.Caption := '';
           tbPayee.Text := '';
           tbDesc.Text := '';
           neAmount.EditValue := 0;
           neTax.EditValue := 0;
           mmoNotes.Text := '';
           edtBillRef.Text := '';
           lblTotal.Caption :=  '';
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
  sBankType    : String;
  lsDefaultTax : String;
begin
   if cmbBank.Text <> '' then
   begin
      sBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue) , 'TRUST');
      Self.Color := BankColour(cmbBank.EditValue);
      lblTaxType.Visible := sBankType <> 'T';
      cbTaxType.Visible := sBankType <> 'T';
      neTax.Visible := sBankType <> 'T';

      if sBankType = 'T' then
      begin
        tbLedger.Text := '';
        tbLedger.Enabled := False;
    //    btnLedger.Enabled := False;
        tbFile.Enabled := True;
    //    btnMatter.Enabled := True;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        chkHeld.State := cbsUnchecked;
        chkHeld.Enabled := False;
        chkBill.State := cbsUnchecked;
        chkBill.Enabled := False;

        {
          Instead of hard coding the default tax, we will request it from the
          TaxDefault table.

          BJ 07/01/2003
        }

        lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

        if lsDefaultTax = '' then
          lsDefaultTax := 'NOTAX';
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);
      end
      else if sBankType = 'C' then
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
        chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
        chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
        chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
      end;
    end;
end;

procedure TfrmCheqReqNew.cbAuthor1Change(Sender: TObject);
begin
  lblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', cmbAuthor.EditValue, 'NAME');
end;

procedure TfrmCheqReqNew.btnMatterClick(Sender: TObject);
begin
  if not FormExists(frmMatterSearch) then
    Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

  if frmMatterSearch.ShowModal = mrOk then
  begin
    tbLedger.Text := '';
    if IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
        MsgErr('A new cheque requisition cannot be created for this matter. '+
               'This matter is Archived.')
     else
        DisplayFile(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
  end;
end;

procedure TfrmCheqReqNew.btnPayeeClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
//    tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
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
  begin

        // lookup the ledger code based on the value entered
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
        tbLedger.Text :=  glInstance.fullCode;
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
        DisplayLedger(glInstance.fullCode);


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
    chkFunds.Checked := False;
end;

procedure TfrmCheqReqNew.chkFundsClick(Sender: TObject);
begin
  if chkFunds.Checked then
  begin
    chkHeld.Checked := True;
    chkHeld.Enabled := False;
    chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
//    chkBill.Checked := True;
    chkBill.Enabled := False;
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
 //  tbLedger.Visible := dmAxiom.Security.CheqReq.Ledger;
   lblLgrDesc.Visible := dmAxiom.Security.CheqReq.Ledger;
   lblLgr.Visible := dmAxiom.Security.CheqReq.Ledger;
   chkFunds.Visible := dmAxiom.Security.CheqReq.Funds.Visible;
   chkHeld.Visible := dmAxiom.Security.CheqReq.Held.Visible;
   chkBill.Visible := dmAxiom.Security.CheqReq.Bill.Visible;
   chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
   chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
   chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
   chkPrint.Checked := dmAxiom.Security.CheqReq.Print;
   lblBillNo.Visible := dmAxiom.Security.Bill.Post;
   edtBillRef.Visible := dmAxiom.Security.Bill.Post;
 //  btnBill.Visible := dmAxiom.Security.Bill.Post;

  dmAxiom.qryEmplyeeList.Open;

//  dtpReqDate.EditValue := Now();
  dtpReqDate.EditValue := trunc(Now());
  neTax.EditValue := 0.00;

  dmAxiom.qryEntityBank.Close;
  dmAxiom.qryEntityBank.ParamByName('ENTITY').AsString := dmAxiom.Entity;
  dmAxiom.qryEntityBank.Open;
  StringPopulate(cbTaxType.Properties.Items, 'TAXTYPE', 'CODE');
//  StringPopulate(cbExpenseType.Items, 'SUNDRYTYPE', 'CODE');

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
   cmbBank.Properties.OnChange(Self);
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
  neTax.EditValue := TaxCalc(dAmount, 'BILL', cbTaxType.Text, dtpReqDate.Date);

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
      CalcTax;

    end;    //  end if

end;

procedure TfrmCheqReqNew.cbExpenseTypeChange(Sender: TObject);
begin
//  lblExpenseTypeDescr.Caption := TableString('SUNDRYTYPE', 'CODE', cbExpenseType.Text, 'DESCR');
end;


procedure TfrmCheqReqNew.ShowTotal;
var
  lcTotalAmount : Currency;
begin
  if (IsWitholdingTax) then
    lcTotalAmount := fcCurrentAmount - neTax.EditValue
  else
    lcTotalAmount := fcCurrentAmount + neTax.EditValue;

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
//    tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
    tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
    FNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
  if Self.Visible then
    dfSlipNo.SetFocus;
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
    DisplayLedger(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString);
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

end.

