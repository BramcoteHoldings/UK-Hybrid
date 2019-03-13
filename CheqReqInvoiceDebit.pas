unit CheqReqInvoiceDebit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  MemDS, OracleUniProvider, Uni, DBAccess, DateTimeAccount, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxCalendar, cxLookAndFeelPainters,
  cxButtons, cxCheckBox, EnforceCustomDateEdit, variants, cxGraphics,
  cxLookAndFeels, Menus, dxCore, cxDateUtils;

type
  TfrmCheqReqInvoiceDebit = class(TForm)
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
    Label10: TLabel;
    mmoNotes: TcxMemo;
    dtpReqDate: TEnforceCustomDateEdit;
    edtChequeReq: TcxTextEdit;
    qryCheqreqUpdate: TUniQuery;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
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
    procedure tbLedgerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dtpReqDatePropertiesCloseUp(Sender: TObject);
    procedure tbFilePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tbLedgerPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);

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
    procedure DisplayCheqReq(iCheqReq : integer);
  end;

implementation

uses
  CheqReqPrint, MiscFunc, AxiomData, MSearch, NSearch, LSearch, citfunc,
  InvoiceSearch, CheqReqs,glComponentUtil;

{$R *.DFM}


procedure TfrmCheqReqInvoiceDebit.FormShow(Sender: TObject);
begin
  if not qryCheqReq.Active then
  begin
    cmbBank.EditValue := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
    cmbAuthor.EditValue := dmAxiom.UserID;
  end;
  ShowTotal;
end;


procedure TfrmCheqReqInvoiceDebit.DisplayFile(sFile : string);
begin
  tbLedger.Text := '';
  lblLgrDesc.Caption := '';
  tbFile.Text := sFile;
  lblClient.Caption := MatterString(sFile, 'TITLE');
  lblMatterDescr.Caption := MatterString(sFile, 'SHORTDESCR');
end;


procedure TfrmCheqReqInvoiceDebit.DisplayLedger(sCode : string);
begin
  tbFile.Text := '';
  lblClient.Caption := '';
  lblMatterDescr.Caption := '';
  tbLedger.Text := sCode;
  lblLgrDesc.Caption := LedgerString(sCode, 'REPORT_DESC');
end;


procedure TfrmCheqReqInvoiceDebit.DisplayCheqReq(iCheqReq : integer);
var
   Author,sAccount: string;
   glComponentSetup : TglComponentSetup;
   glResult: TglComponentInstance ;
begin

   glComponentSetup := dmAxiom.getGlComponents;

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
         cmbBank.Properties.OnChange(Self);
         cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(FieldByName('TAXCODE').AsString);

         tbPayee.Text := FieldByName('PAYEE').AsString;
         tbDesc.Text := FieldByName('DESCR').AsString;
         neAmount.EditValue := FieldByName('AMOUNT').AsCurrency;
         fcCurrentAmount := neAmount.EditValue;
         neTax.EditValue := FieldByName('TAX').AsCurrency;
         cOriginalAmount := FieldByName('AMOUNT').AsCurrency;
         cOriginalTax := FieldByName('TAX').AsCurrency;
         cmbAuthor.EditValue := FieldByName('AUTHOR').AsString;
         cmbExpenseType.EditValue := FieldByName('SUNDRYTYPE').AsString;
         mmoNotes.Text := FieldByName('NOTE').AsString;
         dfSlipNo.Text := qryCheqReq.FieldByName('CREDITOR_INVOICE').AsString;
         FNName := qryCheqReq.FieldByName('NNAME').AsInteger;
         edtChequeReq.Text:= IntToStr(iCheqReq);

         Author := cmbAuthor.EditValue;
         Author := TableString('MATTER', 'NMATTER', tbFile.Text , 'AUTHOR') ;
         if (TableString('EMPLOYEE', 'CODE', Author , 'DISBWOFF_CHART')) <> '' then
            sAccount := TableString('EMPLOYEE', 'CODE', Author, 'DISBWOFF_CHART')
         else
            sAccount := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_DR');

         try

         glResult := glComponentSetup.buildLedgerComponent(qryCheqReq.FieldByName('NMATTER').AsString, sAccount, '', false, '', []);
         tbLedger.Text := glResult.fullCode;

         except on e:Exception do
         begin
                tbLedger.Text := '';
         end;
         end;
         glResult.Free;


         lblLgrDesc.Caption := LedgerString(tbLedger.Text, 'REPORT_DESC');

         if FieldByName('LEDGER').AsString <> '' then
            DisplayLedger(tbLedger.Text);

         ToggleFields(False);
         tbLedger.Enabled := True;
         if (FieldByName('BILLED').AsString = 'Y') and (FieldByName('NMEMO').AsString <> '') then
         begin
            tbFile.Properties.Buttons.Items[0].Visible := False;
            lblInvoiceMsg.Visible := True;
            lblInvoice.Visible := True;
            lblInvoice.Caption := TableString('NMEMO', 'NMEMO', FieldByName('NMEMO').AsInteger, 'REFNO');
         end;
      end
      else
         Self.Close;
   end;
end;

procedure TfrmCheqReqInvoiceDebit.ToggleFields(bEnable: boolean);
begin
   dtpReqDate.Enabled := bEnable;
   cmbBank.Enabled := bEnable;
   tbLedger.Enabled := bEnable;
   tbPayee.Enabled := bEnable;
   neAmount.Enabled := bEnable;
   cmbAuthor.Enabled := bEnable;
   tbFile.Enabled := bEnable;
   edtChequeReq.Enabled := bEnable;
   dfSlipNo.Enabled := bEnable;
   cbTaxType.Enabled := bEnable;
   neTax.Enabled := bEnable;
   cmbExpenseType.Enabled := bEnable;
end;

function TfrmCheqReqInvoiceDebit.OKtoPost : Boolean;
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


procedure TfrmCheqReqInvoiceDebit.btnSaveClick(Sender: TObject);
var
  iCheqReq: integer;
  bPostingFailed: boolean;
  Bank_Trust, Bank: string;
  glInstance : TglComponentInstance ;
  glComponentSetup : TglComponentSetup;
  sLedgerKey,sLedgerKeyDr : String;

   function decodeGlInstance(glInstance : TglComponentInstance) : String;
   begin
        if glInstance = nil then
                decodeGlInstance := ''
        else
           decodeGlInstance := glInstance.ledgerKey;

   end;

begin



   glComponentSetup := dmAxiom.getGlComponents;
   iCheqReq:=0;
   btnSave.SetFocus;

   if OKtoPost then
   begin
         glInstance := nil;
         if tbLedger.Text <> '' then
         begin
         // lookup the ledger code based on the value entered
         glInstance := dmAxiom.getGlComponents.parseString(tbLedger.Text,true);
         if not glInstance.valid then
         begin
                // something has gone very wrong !
                raise Exception.create('Error invalid ledger key');
         end;
         end;

      if (tbFile.Text <> '') and (not IsValidMatterForEntity(tbFile.Text) or
         not IsValidBankForEntity(cmbBank.EditValue)) then
         MsgErr('This matter #' + tbFile.Text +
                ' is not valid for the current Entity.')
      else if (tbLedger.Text <> '') and not (IsValidGLACCTForEntity(decodeGlInstance(glInstance)) or
         not IsValidBankForEntity(cmbBank.EditValue)) then
         MsgErr('This Ledger #' + tbLedger.Text +
                ' is not valid for the current Entity.')
      else if (not qryCheqReq.Active) and  (dfSlipNo.Text <> '') and not (IsCRInvoiceUnique(dfSlipNo.Text,FNName)) then
         MsgErr('Creditor Invoice #' + dfSlipNo.Text +
                ' is already being used.')
      else
      begin
      try
         if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
         bPostingFailed := False;
         dmAxiom.uniInsight.StartTransaction;

         iCheqReq := GetSeqnum('NCHEQREQ');
         qryCheqReq.ParamByName('NCHEQREQ').AsInteger := iCheqReq;
         qryCheqReq.Open;
         qryCheqReq.Insert;
         qryCheqReq.FieldByName('NCHEQREQ').AsInteger := iCheqReq;
         qryCheqReq.FieldByName('CONVERTED').AsString := 'Y';

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
         qryCheqReq.FieldByName('DESCR').AsString := 'Credit Note - ' + inttostr(iCheqReq) + ' ' + tbDesc.Text;
         qryCheqReq.FieldByName('AMOUNT').AsCurrency := 0 - neAmount.EditValue;
         qryCheqReq.FieldByName('TAX').AsCurrency := 0 - neTax.EditValue;
         qryCheqReq.FieldByName('TAXCODE').AsString := cbTaxType.Text;
         qryCheqReq.FieldByName('AUTHOR').AsString := cmbAuthor.EditValue;
         if cmbExpenseType.Text <> '' then
            qryCheqReq.FieldByName('SUNDRYTYPE').AsString := cmbExpenseType.EditValue;
         qryCheqReq.FieldByName('NOTE').AsString := mmoNotes.Text;
         qryCheqReq.FieldByName('HELD').AsString := 'N';
         qryCheqReq.FieldByName('NMEMO').AsString := lblnmemo.Caption;
         qryCheqReq.FieldByName('URGENT').AsString := 'N';
         qryCheqReq.FieldByName('GROUPABLE').AsString := 'N';
         qryCheqReq.FieldByName('BILLED').AsString := 'N';
//         qryCheqReq.FieldByName('BILLNO').AsString := edtBillRef.Text;
         qryCheqReq.FieldByName('CREDITOR_INVOICE').AsString := dfSlipNo.Text;
         qryCheqReq.FieldByName('NNAME').AsInteger := FNName;
         qryCheqReq.FieldByName('TYPE').AsString := 'C/Note';

        {post components}
        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'),'',true,'');


         PostLedger(Date                      // date
            , 0 - neAmount.EditValue - neTax.EditValue // cAmount
            , 0                               // cTax
            , tbFile.Text                     // sRefNo
            , 'CHEQREQ'                       // sOwnerCode
            , qryCheqReq.FieldByName('NCHEQREQ').AsInteger // iOwner
            , 'Credit Note - ' + tbDesc.Text // sDesc
            , sLedgerKey
            , ''                              // sAuthor
            , -1                              // iInvoice
            , ''                              // CreditorCode
            , cbTaxType.Text                  // sTaxCode
            , FALSE                           // bJournalSplit
            , decodeGlInstance(glInstance)              // sParentChart
            , 0                               // nAlloc
            , qryCheqReq.FieldByName('NMATTER').AsInteger ); // nMatter


         PostLedger(Date                      // date
            , neAmount.EditValue              // cAmount
            , 0                               // cTax
            , tbFile.Text                     // sRefNo
            , 'CHEQREQ'                       // sOwnerCode
            , qryCheqReq.FieldByName('NCHEQREQ').AsInteger // iOwner
            , 'Credit Note - ' + tbDesc.Text       // sDesc
            , glInstance.ledgerKey              // sLedger
            , ''                              // sAuthor
            , -1                              // iInvoice
            , ''                              // CreditorCode
            , cbTaxType.Text                  // sTaxCode
            , FALSE                           // bJournalSplit
            , decodeGlInstance(glInstance)                   // sParentChart
            , 0                               // nAlloc
            , qryCheqReq.FieldByName('NMATTER').AsInteger ); // nMatter

         {post components}
         sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'),'',true,'');

         PostLedger(Date                      // date
            , neTax.EditValue                 // cAmount
            , 0                               // cTax
            , tbFile.Text                     // sRefNo
            , 'CHEQREQ'                       // sOwnerCode
            , qryCheqReq.FieldByName('NCHEQREQ').AsInteger // iOwner
            , 'Credit Note - ' + tbDesc.Text      // sDesc
            , sLedgerKey // sLedger
            , ''                              // sAuthor
            , -1                              // iInvoice
            , ''                              // CreditorCode
            , cbTaxType.Text                  // sTaxCode
            , FALSE                           // bJournalSplit
            , decodeGlInstance(glInstance)                   // sParentChart
            , 0                               // nAlloc
            , qryCheqReq.FieldByName('NMATTER').AsInteger ); // nMatter

         qryCheqReq.Post;

         with qryCheqreqUpdate do
         begin
            ParamByName('CREDIT_NOTE').AsInteger := iCheqReq;
            ParamByName('NCHEQREQ').AsInteger := edtChequeReq.EditValue;
            ExecSql;
         end;
         CheckLedgerTotal;
      except
         on E: Exception do
         begin
           qryCheqReq.CancelUpdates;
           dmAxiom.uniInsight.Rollback;
           bPostingFailed := True;
           MsgErr('Credit Note posting failed:' + #13#13 + E.Message);
         end;
      end;

      if not bPostingFailed then
      begin
         qryCheqReq.ApplyUpdates;
         dmAxiom.uniInsight.Commit;

         qryCheqReq.Close;
         if (iCheqReq <> 0) then
           MessageDlg('Credit Note Created - CQR' + inttostr(iCheqReq),mtInformation,[mbOK],0);
           Self.Close
      end;
    end;
    end
    else
      ModalResult := mrNone;
//  end;
end;

procedure TfrmCheqReqInvoiceDebit.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCheqReqInvoiceDebit.cbBankChange(Sender: TObject);
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
        tbFile.Enabled := True;

        lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

        if lsDefaultTax = '' then
          lsDefaultTax := 'NOTAX';
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);
      end
      else if sBankType = 'C' then
      begin
        tbFile.Text := '';
        tbLedger.Enabled := True;
        tbFile.Enabled := False;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
      end
      else
      begin
        tbLedger.Enabled := True;
        tbFile.Enabled := True;
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
      end;
    end;
end;

procedure TfrmCheqReqInvoiceDebit.cbAuthor1Change(Sender: TObject);
begin
  lblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', string(cmbAuthor.EditValue), 'NAME');
end;

procedure TfrmCheqReqInvoiceDebit.btnMatterClick(Sender: TObject);
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

procedure TfrmCheqReqInvoiceDebit.btnPayeeClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
    tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
    FNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
  if Self.Visible then
    dfSlipNo.SetFocus;
end;

procedure TfrmCheqReqInvoiceDebit.btnLedgerClick(Sender: TObject);
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

procedure TfrmCheqReqInvoiceDebit.tbFileExit(Sender: TObject);
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

procedure TfrmCheqReqInvoiceDebit.tbLedgerExit(Sender: TObject);
var
  defaultLedgerTaxCode : String;
  glInstance : TglComponentInstance ;
begin
  if tbLedger.Text <> '' then
  begin
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
     end;

     defaultLedgerTaxCode := LedgerString(glInstance.ledgerKey, 'DEFAULT_TAXCODE');

     if defaultLedgerTaxCode <> '' then
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(defaultLedgerTaxCode)
     else
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
end;

procedure TfrmCheqReqInvoiceDebit.tbPayeeExit(Sender: TObject);
begin
  Quickcode(Sender);
end;

procedure TfrmCheqReqInvoiceDebit.tbPayeeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(Sender);
end;

procedure TfrmCheqReqInvoiceDebit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryCheqReq.CLose;

  Action := caFree;
end;

procedure TfrmCheqReqInvoiceDebit.FormCreate(Sender: TObject);
begin
  tbLedger.Visible := dmAxiom.Security.CheqReq.Ledger;
  lblLgrDesc.Visible := dmAxiom.Security.CheqReq.Ledger;
  lblLgr.Visible := dmAxiom.Security.CheqReq.Ledger;
  lblBillNo.Visible := dmAxiom.Security.Bill.Post;
//  edtBillRef.Visible := dmAxiom.Security.Bill.Post;

  dmAxiom.qryEmplyeeList.Open;

  dtpReqDate.EditValue := trunc(Now());
  neTax.EditValue := 0.00;

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

end;

procedure TfrmCheqReqInvoiceDebit.cbTaxTypeClick(Sender: TObject);
begin
  CalcTax;
end;


procedure TfrmCheqReqInvoiceDebit.CalcTax;
var
  dAmount: double;
begin
  dAmount := fcCurrentAmount;
  neTax.EditValue := TaxCalc(dAmount, 'BILL', cbTaxType.Text, dtpReqDate.Date);

  if not (IsWitholdingTax) then
    fcCurrentAmount:= dAmount;

  neAmount.EditValue := fcCurrentAmount
end;

procedure TfrmCheqReqInvoiceDebit.neAmountExit(Sender: TObject);
begin
  if (fcCurrentAmount <> neAmount.EditValue) then
    begin
      fcCurrentAmount := neAmount.EditValue;
      CalcTax;
    end;    //  end if
end;

procedure TfrmCheqReqInvoiceDebit.cbExpenseTypeChange(Sender: TObject);
begin
//  lblExpenseTypeDescr.Caption := TableString('SUNDRYTYPE', 'CODE', cbExpenseType.Text, 'DESCR');
end;


procedure TfrmCheqReqInvoiceDebit.ShowTotal;
var
  lcTotalAmount : Currency;
begin
  if (IsWitholdingTax) then
    lcTotalAmount := fcCurrentAmount - neTax.EditValue
  else
    lcTotalAmount := fcCurrentAmount + neTax.EditValue;

  lblTotal.Caption := 'The Total Amount of the Credit Note will be ' + Format('%m', [lcTotalAmount]);

end;

procedure TfrmCheqReqInvoiceDebit.neAmountChange(Sender: TObject);
begin
  ShowTotal;
end;

procedure TfrmCheqReqInvoiceDebit.cbTaxTypeChange(Sender: TObject);
begin
  ShowTotal;
end;

procedure TfrmCheqReqInvoiceDebit.neTaxChange(Sender: TObject);
begin
  ShowTotal;
end;

procedure TfrmCheqReqInvoiceDebit.btnBillClick(Sender: TObject);
begin
{  lblNmemo.Caption := '';
  if not FormExists(frmInvoiceSearch) then
    Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

  if frmInvoiceSearch.ShowModal = mrOk then
  begin
  lblnmemo.Caption := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsString;
    DisplayBill(frmInvoiceSearch.qryInvoices.FieldByName('REFNO').AsString,frmInvoiceSearch.qryInvoices.FieldByName('ACCT').AsString,frmInvoiceSearch.qryInvoices.FieldByName('FILEID').AsString,
    frmInvoiceSearch.qryInvoices.FieldByName('OWING').AsCurrency);
  end;  }
end;

function TfrmCheqReqInvoiceDebit.IsWitholdingTax : Boolean;
begin
  Result := cbTaxType.Text = 'WHOLD';

end; 

procedure TfrmCheqReqInvoiceDebit.tbPayeePropertiesButtonClick(Sender: TObject;
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

procedure TfrmCheqReqInvoiceDebit.tbFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
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

procedure TfrmCheqReqInvoiceDebit.tbLedgerPropertiesButtonClick(Sender: TObject;
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

procedure TfrmCheqReqInvoiceDebit.dtpReqDatePropertiesCloseUp(Sender: TObject);
begin
   if dtpReqDate.Properties.MinDate > 0 then
      if dtpReqDate.Date < dtpReqDate.Properties.MinDate then
         dtpReqDate.Date := dtpReqDate.Properties.MinDate;
end;

procedure TfrmCheqReqInvoiceDebit.tbFilePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   tbLedger.Text := '';
   if IsMatterArchived(DisplayValue) then
      MsgErr('A new cheque requisition cannot be created for this matter. '+
               'This matter is Archived.')
   else
      DisplayFile(DisplayValue);
end;


procedure TfrmCheqReqInvoiceDebit.tbLedgerPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
  var
  glInstance : TglComponentInstance ;
begin
   if DisplayValue <> '' then
   begin

      // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(DisplayValue,true);

      if not glInstance.valid then
      begin
         glInstance.displayError;
         DisplayValue := '';
         lblLgrDesc.Caption := '';
         glInstance.free;
         tbLedger.SetFocus;
      end
      else
      begin
        DisplayValue := glInstance.fullCode;
        lblLgrDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
      end;

      //sTmp := LedgerString(tbLedger.Text, 'REPORT_DESC');
      //if sTmp <> '' then
      //   lblLedgerDesc.Caption := sTmp
      //else
      //begin
      //MsgErr('Invalid Ledger Code');
      //tbLedger.SetFocus;
      //end;
   end;
end;

end.

