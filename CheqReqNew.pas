Unit CheqReqNew;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  DBCtrls,
  ComCtrls,
  StdCtrls,
  Mask,
  Db,
  Buttons,
  NumberEdit,
  MemDS,
  OracleUniProvider,
  Uni,
  DBAccess,
  DateTimeAccount,
  cxMaskEdit,
  cxButtonEdit,
  cxControls,
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxMemo,
  cxDBEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxCurrencyEdit,
  cxCalendar,
  cxLookAndFeelPainters,
  cxButtons,
  cxCheckBox,
  cxLabel,
  cxEditRepositoryItems,
  cxGraphics,
  Menus,
  dxStatusBar,
  Variants,
  cxLookAndFeels,
  dxCore,
  vcl.themes,
  cxDateUtils,
  cxClasses,
  cxGroupBox,
  cxPropertiesStore,
  vcl.PlatformDefaultStyleActnCtrls,
  System.Actions,
  vcl.ActnList,
  vcl.ActnMan,
  EnforceCustomDateEdit,
  cxRadioGroup,
  dxSkinsCore,
  dxSkinBlack,
  dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide,
  dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle,
  dxSkinFoggy,
  dxSkinGlassOceans,
  dxSkinHighContrast,
  dxSkiniMaginary,
  dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis,
  dxSkinMetropolisDark,
  dxSkinMoneyTwins,
  dxSkinOffice2007Black,
  dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin,
  dxSkinSeven,
  dxSkinSevenClassic,
  dxSkinSharp,
  dxSkinSharpPlus,
  dxSkinSilver,
  dxSkinSpringTime,
  dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinTheBezier,
  dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type

  TCheqReqMode = (ClientPayment, BillTransfer, DisbTransfer, DisbPayment, SupplierPayment, ExpensePayment);

  TfrmCheqReqNew = class(TForm)
    dsCheqReq : TUniDataSource;
    lblMajorSelection : TLabel;
    Label2 : TLabel;
    Label3 : TLabel;
    lblReason : TLabel;
    lblAmount : TLabel;
    lblTypeDesc : TLabel;
    qryCheqReq : TUniQuery;
    Label5 : TLabel;
    lblMinorDescription : TLabel;
    lblRequestedBy : TLabel;
    lblAuthorName : TLabel;
    lblLgrDesc : TLabel;
    lblNotes : TLabel;
    lblInvoiceMsg : TLabel;
    lblInvoice : TLabel;
    lblMajorDescription : TLabel;
    lblTaxType : TLabel;
    Label7 : TLabel;
    lblTotal : TLabel;
    lblMinorSelection : TLabel;
    lblNmemo : TLabel;
    tbMajor : TcxButtonEdit;
    tbMinor : TcxButtonEdit;
    tbLedger : TcxButtonEdit;
    cmbBank : TcxLookupComboBox;
    tbDesc : TcxTextEdit;
    tbPayee : TcxButtonEdit;
    neAmount : TcxCurrencyEdit;
    neTax : TcxCurrencyEdit;
    cbTaxType : TcxComboBox;
    dfSlipNo : TcxTextEdit;
    cmbAuthor : TcxLookupComboBox;
    cmbExpenseType : TcxLookupComboBox;
    qrySundryType : TUniQuery;
    dsSundryType : TUniDataSource;
    chkFunds : TcxCheckBox;
    chkInvoiceSupplied : TcxCheckBox;
    chkPrint : TcxCheckBox;
    chkNoExit : TcxCheckBox;
    chkBill : TcxCheckBox;
    chkUrgent : TcxCheckBox;
    chkHeld : TcxCheckBox;
    btnSave : TcxButton;
    btnCancel : TcxButton;
    Label10 : TLabel;
    mmoNotes : TcxMemo;
    dtpReqDate : TEnforceCustomDateEdit;
    qryDepositAccount : TUniQuery;
    dsAccountType : TUniDataSource;
    cxCBAccountType : TcxLookupComboBox;
    chkDeposit : TcxCheckBox;
    qryInvestmentTrans : TUniQuery;
    cmbOld : TcxLookupComboBox;
    qryMatterBills : TUniQuery;
    dsMatterBills : TUniDataSource;
    cxEditRepository1 : TcxEditRepository;
    cxEditRepository1CurrencyItem1 : TcxEditRepositoryCurrencyItem;
    StatusBar : TdxStatusBar;
    qryGetTrust : TUniQuery;
    cmbInvoice : TcxLookupComboBox;
    qryBillInv : TUniQuery;
    dsBillInv : TUniDataSource;
    qryBillPayment : TUniQuery;
    lblChequeNo : TcxLabel;
    teChequeNo : TcxTextEdit;
    qryPrinter : TUniQuery;
    qryCheckCheque : TUniQuery;
    qryChequeRange : TUniQuery;
    CheqReqActManager : TActionManager;
    cbAuthorise : TcxCheckBox;
    rgChequeType : TcxRadioGroup;
    gbMajorMinor : TcxGroupBox;
    gbDetails : TcxGroupBox;
    lblPaymentType : TLabel;
    cbType : TcxLookupComboBox;
    lblTax : TcxLabel;
    qryPaymentType : TUniQuery;
    dsPaymentType : TUniDataSource;
    lblDocument : TLabel;
    tbDocument : TcxTextEdit;
    gbBankDetails : TcxGroupBox;
    lblSortCode : TLabel;
    lblAccountNo : TLabel;
    lblReference : TLabel;
    tbSortCode : TcxTextEdit;
    tbAccountNo : TcxTextEdit;
    tbBankReference : TcxTextEdit;
    chkForeignBank : TcxCheckBox;
    lblAutorised : TLabel;
    procedure btnSaveClick(Sender : TObject);
    procedure btnCancelClick(Sender : TObject);
    procedure cbBankChange(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure cbAuthor1Change(Sender : TObject);
    procedure btnMatterClick(Sender : TObject);
    procedure btnPayeeClick(Sender : TObject);
    procedure btnLedgerClick(Sender : TObject);
    procedure tbMajorExit(Sender : TObject);
    procedure tbLedgerExit(Sender : TObject);
    procedure tbPayeeExit(Sender : TObject);
    procedure tbPayeeKeyPress(
      Sender  : TObject;
      var Key : Char);
    procedure chkBillClick(Sender : TObject);
    procedure chkFundsClick(Sender : TObject);
    procedure FormClose(
      Sender     : TObject;
      var Action : TCloseAction);
    procedure FormCreate(Sender : TObject);
    procedure cbTaxTypeClick(Sender : TObject);
    procedure neAmountExit(Sender : TObject);
    procedure cbExpenseTypeChange(Sender : TObject);
    procedure neAmountChange(Sender : TObject);
    procedure cbTaxTypeChange(Sender : TObject);
    procedure neTaxChange(Sender : TObject);
    procedure btnBillClick(Sender : TObject);
    procedure tbPayeePropertiesButtonClick(
      Sender       : TObject;
      AButtonIndex : Integer);
    procedure tbFilePropertiesButtonClick(
      Sender       : TObject;
      AButtonIndex : Integer);
    procedure tbLedgerPropertiesButtonClick(
      Sender       : TObject;
      AButtonIndex : Integer);
    procedure dtpReqDatePropertiesCloseUp(Sender : TObject);
    procedure tbFilePropertiesValidate(
      Sender           : TObject;
      var DisplayValue : Variant;
      var ErrorText    : TCaption;
      var Error        : Boolean);
    procedure FormDestroy(Sender : TObject);
    procedure chkDepositClick(Sender : TObject);
    procedure cxCBAccountTypePropertiesInitPopup(Sender : TObject);
    procedure cmbBillsPropertiesInitPopup(Sender : TObject);
    procedure cmbBillsPropertiesCloseUp(Sender : TObject);
    procedure cmbInvoicePropertiesInitPopup(Sender : TObject);
    procedure cmbInvoicePropertiesCloseUp(Sender : TObject);
    procedure cmbBankPropertiesCloseUp(Sender : TObject);
    procedure cmbBankPropertiesChange(Sender : TObject);
    procedure cmbBankPropertiesEditValueChanged(Sender : TObject);
    procedure cmbBillsPropertiesEditValueChanged(Sender : TObject);
    procedure tbLedgerPropertiesChange(Sender : TObject);
    procedure teChequeNoPropertiesValidate(
      Sender           : TObject;
      var DisplayValue : Variant;
      var ErrorText    : TCaption;
      var Error        : Boolean);
    procedure cbAuthorisePropertiesEditValueChanged(Sender : TObject);
    procedure rgChequeTypePropertiesChange(Sender : TObject);
    procedure tbMinorPropertiesButtonClick(
      Sender       : TObject;
      AButtonIndex : Integer);
    procedure chkForeignBankPropertiesChange(Sender : TObject);
    procedure cmbExpenseTypeExit(Sender: TObject);

    private
      { Private declarations }
      cOriginalAmount : Currency;
      cOriginalTax : Currency;
      fcCurrentAmount : Currency;
      FNName : Integer;

      DefaultTax : String;

      FBankType : String;
      FFromMatter : Boolean;
      FLedger : string;
      FNMemo : Integer;
      FNMatter : Integer;
      FPassedFileID : String;
      FLoading : Boolean;
      ChequeReqMode : TCheqReqMode;
      FReqType : String;

      function OKtoPost : Boolean;
      function MajorOk : String;
      function MinorOk : String;
      function IsMatterTypePosting : Boolean;
      function IsSupplierTypePosting : Boolean;
      function IsGLTypePosting : Boolean;

      function IsWitholdingTax : Boolean;

      procedure CalcTax;
      procedure ShowTotal;
      procedure ToggleFields(bEnable : Boolean);
      procedure DisplayTrust(AMatter : Integer);
      procedure DisplayDisb(qry : TUniQuery);
      procedure DisplayCreditorInvoice(
        Invoice     : String;
        Owing       : Currency;
        Description : String);
      procedure ClearForm();
      procedure SetDefaultTax();

    public
      { Public declarations }
      property FromMatter : Boolean
        read FFromMatter
        write FFromMatter;
      procedure DisplayFile(sFile : string);
      procedure SetForDisbRequestOnly();
      procedure DisplayLedger(sCode : string);
      procedure DisplaySupplier(
        sSupplier : string;
        sName     : String);
      procedure DisplayCheqReq(iCheqReq : Integer);
      procedure DisplayBill(sBill : String); overload;
      procedure DisplayBill(qry : TUniQuery); overload;
      procedure SetAuthorised(NCHEQREQ : Integer);
  end;

implementation

uses
  CheqReqPrint,
  MiscFunc,
  AxiomData,
  MSearch,
  NSearch,
  LSearch,
  citfunc,
  InvoiceSearch,
  glComponentUtil,
  vcl.Styles.FormStyleHooks,
  ScreenSave,
  CreditorSearch,
  CreditorAccountsSearch,
  DisbSearch;

{$R *.DFM}

procedure TfrmCheqReqNew.FormShow(Sender : TObject);
  begin
    if not qryCheqReq.Active
    then
    begin
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
    tbMajor.Text := sFile;
    FNMatter := StrToInt(MatterString(sFile, 'NMATTER'));
    lblMajorDescription.Caption := MatterString(sFile, 'SHORTDESCR') + '/' + MatterString(sFile, 'TITLE');
    lblMinorDescription.Caption := '';
    qryDepositAccount.ParamByName('nmatter').AsInteger := FNMatter;
    qryDepositAccount.Open;
    qryMatterBills.ParamByName('nmatter').AsInteger := FNMatter;
    qryMatterBills.Open;
    { if chkDeposit.Visible and chkDeposit.Checked
      then
      tbMinor.Visible := False
      else if not chkDeposit.Visible
      then
      tbMinor.Visible := True;
    }
    if FBankType = 'T'
    then
      DisplayTrust(FNMatter);

    if FFromMatter
    then
      FPassedFileID := sFile;

  end;

procedure TfrmCheqReqNew.SetForDisbRequestOnly();
  //
  // Forces the screen into Disbursement Payment mode.
  //
  begin

    cmbBank.EditValue := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_OFFICE_BANK');
    cmbBank.Enabled := False;
    rgChequeType.Enabled := False;

  end;

procedure TfrmCheqReqNew.DisplaySupplier(
  sSupplier : string;
  sName     : String);
  begin
    tbMajor.Text := sSupplier;
    lblMajorDescription.Caption := sName;
    lblMinorDescription.Caption := '';
  end;

procedure TfrmCheqReqNew.DisplayDisb(qry : TUniQuery);
  begin
    neAmount.EditValue := qry.FieldByName('AMOUNT').AsCurrency;
    neTax.EditValue := 0;
    tbMinor.Text := qry.FieldByName('NALLOC').AsString;
    lblMinorDescription.Caption := Format('%m', [qry.FieldByName('AMOUNT').AsCurrency]) + '/' + qry.FieldByName('DESCR').AsString;
  end;

procedure TfrmCheqReqNew.DisplayCreditorInvoice(
  Invoice     : String;
  Owing       : Currency;
  Description : String);
  begin
    neAmount.EditValue := Owing;
    neTax.EditValue := 0;
    tbMinor.Text := Invoice;
    lblMinorDescription.Caption := Format('%m', [Owing]) + '/' + Description;
  end;

procedure TfrmCheqReqNew.DisplayBill(qry : TUniQuery);
  var
    cTrust : Currency;
    cOwing : Currency;
  begin

    tbMinor.EditValue := qry.FieldByName('REFNO').AsString;
    lblMinorDescription.Caption := qry.FieldByName('DISPATCHED').AsString;

    cTrust := ClearTrust(qry.FieldByName('FILEID').AsString);
    cOwing := qry.FieldByName('OWING').AsCurrency;
    if cTrust < cOwing
    then
      fcCurrentAmount := cTrust
    else
      fcCurrentAmount := cOwing;
    neAmount.EditValue := fcCurrentAmount;
    CalcTax;

    chkHeld.Checked := False;
    tbMajor.Text := qry.FieldByName('FILEID').AsString;

    FNMemo := qry.FieldByName('NMEMO').AsInteger;

  end;

procedure TfrmCheqReqNew.DisplayBill(sBill : String);
  var
    cTrust, cOwing : Currency;
  begin

    tbMinor.EditValue := sBill;

    cOwing := TableCurrency('NMEMO', 'REFNO', sBill, 'OWING');
    cTrust := ClearTrust(tbMajor.Text);

    neAmount.EditValue := cOwing;

    fcCurrentAmount := cOwing;
    CalcTax;

    chkHeld.Checked := False;
  end;

procedure TfrmCheqReqNew.DisplayLedger(sCode : string);
  begin
    tbMajor.Text := '';
    lblMajorDescription.Caption := '';
    lblMinorDescription.Caption := '';
    FLedger := LedgerString(sCode, 'code');

    tbMajor.Text := LedgerString(sCode, 'COMPONENT_CODE_DISPLAY');
    lblLgrDesc.Caption := LedgerString(sCode, 'REPORT_DESC');
    chkFunds.Checked := False;
    chkFunds.Enabled := False;
    chkHeld.Checked := False;
    chkHeld.Enabled := False;
    chkBill.Checked := False;
    chkBill.Enabled := False;

    chkFunds.StyleDisabled.Color := Self.Color;
    chkHeld.StyleDisabled.Color := Self.Color;
    chkBill.StyleDisabled.Color := Self.Color;
    if chkDeposit.Visible
    then
      chkDeposit.StyleDisabled.Color := Self.Color;
  end;

procedure TfrmCheqReqNew.DisplayCheqReq(iCheqReq : Integer);
  begin
    with qryCheqReq do
    begin
      Close;
      ParamByName('NCHEQREQ').AsInteger := iCheqReq;
      Open;
      ToggleFields(True);
      if not IsEmpty
      then
      begin

        FLoading := True;

        //
        // This will set the from for Trust/General item.
        //
        cmbBank.EditValue := FieldByName('BANK').AsString;
        cmbBank.Properties.OnChange(Self); // OnChange(Self);
        // cbBank.Enabled := False;

        if FieldByName('FILEID').AsString <> ''
        then
          DisplayFile(FieldByName('FILEID').AsString);

        dtpReqDate.Date := FieldByName('REQDATE').AsDateTime;

        if FBankType = 'T'
        then
        Begin
          if FieldByName('NMEMO').AsInteger <> 0
          then
          Begin
            rgChequeType.ItemIndex := 1;
            tbMinor.Text := FieldByName('BILLNO').AsString;
            FNMemo := FieldByName('NMEMO').AsInteger;
          End
          else if FieldByName('NALLOC').AsInteger <> 0
          then
          Begin
            rgChequeType.ItemIndex := 2;
            tbMinor.Text := FieldByName('NALLOC').AsString;
          End
          else
          Begin
            rgChequeType.ItemIndex := 0;
            tbMinor.Text := '';
          End;
        end
        else
        Begin
          if FieldByName('NINVOICE').AsInteger <> 0
          then
          begin
            rgChequeType.ItemIndex := 1;
            DisplaySupplier(FieldByName('CODE').AsString, FieldByName('NAME').AsString);
            DisplayCreditorInvoice(FieldByName('NINVOICE').AsString, FieldByName('OWING').AsCurrency, FieldByName('INVOICEDESCR').AsString);
          end
          else if FieldByName('FILEID').AsString <> ''
          then
          Begin
            rgChequeType.ItemIndex := 0;
            cmbExpenseType.EditValue := FieldByName('SUNDRYTYPE').AsString;
          end
          else
          begin
            rgChequeType.ItemIndex := 2;
            tbMinor.Text := '';
          end;
        End;

        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(FieldByName('TAXCODE').AsString);
        if FieldByName('LEDGER').AsString <> ''
        then

          DisplayLedger(FieldByName('LEDGER').AsString);
        cbType.EditValue := FieldByName('TYPE').AsString;
        tbPayee.Text := FieldByName('PAYEE').AsString;
        tbDocument.Text := FieldByName('DOCUMENT').AsString;
        tbDesc.Text := FieldByName('DESCR').AsString;
        tbSortCode.Text := FieldByName('SORTCODE').AsString;
        tbAccountNo.Text := FieldByName('ACCOUNTNO').AsString;
        tbBankReference.Text := FieldByName('BANKREF').AsString;
        if FieldByName('FOREIGNBANK').AsString = 'Y'
        then
          chkForeignBank.Checked := True
        else
          chkForeignBank.Checked := False;
        neAmount.EditValue := FieldByName('AMOUNT').AsCurrency;
        fcCurrentAmount := neAmount.EditValue;
        neTax.EditValue := FieldByName('TAX').AsCurrency;
        cOriginalAmount := FieldByName('AMOUNT').AsCurrency;
        cOriginalTax := FieldByName('TAX').AsCurrency;
        cmbAuthor.EditValue := FieldByName('AUTHOR').AsString;
        mmoNotes.Text := FieldByName('NOTE').AsString;
        chkInvoiceSupplied.Checked := FieldByName('INVOICESUPPLIED').AsString = 'Y';
        dfSlipNo.Text := qryCheqReq.FieldByName('CREDITOR_INVOICE').AsString;
        FNName := qryCheqReq.FieldByName('NNAME').AsInteger;
        chkBill.State := cbsUnChecked;
        chkFunds.State := cbsUnChecked;
        teChequeNo.Text := qryCheqReq.FieldByName('CHQNO').AsString;
        if (FieldByName('ANTICIPATED').AsString = 'Y') and (FieldByName('HELD').AsString = 'W')
        then
        begin
          chkBill.State := cbsChecked;
          chkFunds.State := cbsChecked;
        end
        else if (FieldByName('ANTICIPATED').AsString = 'Y') and (FieldByName('HELD').AsString <> 'W')
        then
          chkBill.State := cbsChecked;

        if FieldByName('BILLED').AsString = 'N'
        then
          // chkBill.State := cbsChecked
        else
        begin
          if FieldByName('NMEMO').AsString <> ''
          then
          begin
            chkBill.Enabled := False;
            chkFunds.Enabled := False;
            chkFunds.StyleDisabled.Color := Self.Color;
            chkBill.StyleDisabled.Color := Self.Color;
            if chkDeposit.Visible
            then
              chkDeposit.StyleDisabled.Color := Self.Color;
          end;
        end;

        if FieldByName('HELD').AsString = 'Y'
        then
          chkHeld.State := cbsChecked
        else if FieldByName('HELD').AsString = 'W'
        then
        begin
          chkFunds.State := cbsChecked;
          chkFunds.OnClick(Self);
        end
        else
          chkHeld.State := cbsUnChecked;

        if qryCheqReq.FieldByName('DEP_ACCOUNT').AsString = 'Y'
        then
        begin
          cxCBAccountType.Text := qryCheqReq.FieldByName('DEP_ACCOUNT_TYPE').AsString;
          chkDeposit.EditValue := qryCheqReq.FieldByName('DEP_ACCOUNT').AsString;

          cxCBAccountType.Visible := True;
          lblMinorSelection.Visible := False;
          cmbOld.Visible := False;
          tbMinor.Visible := False;
        end;

        ToggleFields(False);
        if (qryCheqReq.FieldByName('NCHEQUE').IsNull) and (qryCheqReq.FieldByName('REV_NCHEQREQ').IsNull) and (qryCheqReq.FieldByName('NMEMO').IsNull)
        then
        begin
          if ChequeReqMode = DisbTransfer
          then
            neAmount.Enabled := False
          else
            neAmount.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
          cbTaxType.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
          tbPayee.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
          cmbExpenseType.Enabled := dmAxiom.Security.CheqReq.ChangeDetails;
        end;

        cbAuthorise.Properties.OnEditValueChanged := nil;
        if qryCheqReq.FieldByName('Authorised').AsString = 'Y'
        then
        begin
          cbAuthorise.Enabled := False;
          cbAuthorise.State := cbsChecked;
          // RDW - Added text Box to display Authorised By
          lblAutorised.Caption := 'Authorised By: ' + qryCheqReq.FieldByName('Authorised_By').AsString;
          lblAutorised.Visible := True;
        end
        else if (FieldByName('FILEID').AsString <> '') and
          (CanAuthoriseBills(dmAxiom.UserID, StrToInt(MatterString(FieldByName('FILEID').AsString, 'NMATTER')), MatterString(FieldByName('FILEID').AsString, 'DEPT')) = True)
        then
        begin
          cbAuthorise.Enabled := True;
          // cbAuthorise.State := cbsChecked;
        end;
        cbAuthorise.Properties.OnEditValueChanged := cbAuthorisePropertiesEditValueChanged;

        chkFunds.Enabled := False;
        chkBill.Enabled := False;

        // pb- if (FieldByName('BILLED').AsString = 'Y') and (FieldByName('NMEMO').AsInteger <> 0) then
        if (FieldByName('BILLED').AsString = 'Y') and (FieldByName('NMEMO').AsString <> '')
        then
        begin
          chkHeld.Enabled := False;
          chkFunds.StyleDisabled.Color := Self.Color;
          chkHeld.StyleDisabled.Color := Self.Color;
          chkBill.StyleDisabled.Color := Self.Color;
          if chkDeposit.Visible
          then
            chkDeposit.StyleDisabled.Color := Self.Color;
          tbMajor.Properties.Buttons.Items[0].Visible := False;

          if Self.Caption <> 'Anticipated Disbursement' then
            lblInvoiceMsg.Visible := True;

          lblInvoice.Visible := True;

          lblInvoice.Caption := TableString('NMEMO', 'NMEMO', FieldByName('NMEMO').AsInteger, 'REFNO');
          tbMinor.EditValue := lblInvoice.Caption;
          cmbOld.Text := lblInvoice.Caption;
        end;

        // RDW - Added to Allow editing of Fields - if not Authorised
        if (FieldByName('AUTHORISED').AsString = 'N') or (FieldByName('AUTHORISED').AsString = Null)
        then
        begin
          ToggleFields(True);
        end;
      end
      else
        Self.Close;
    end;

    FLoading := False;

  end;

procedure TfrmCheqReqNew.ToggleFields(bEnable : Boolean);
  begin
    dtpReqDate.Enabled := bEnable;
    cmbBank.Enabled := bEnable;
    tbLedger.Enabled := bEnable;
    tbPayee.Enabled := bEnable;
    if ChequeReqMode = DisbTransfer
    then
      neAmount.Enabled := False
    else
      neAmount.Enabled := bEnable;
    cmbAuthor.Enabled := bEnable;
    tbMajor.Enabled := bEnable;
    cmbOld.Enabled := bEnable;
    dfSlipNo.Enabled := bEnable;
    cbTaxType.Enabled := bEnable;
    cmbExpenseType.Enabled := bEnable;
    tbMinor.Enabled := bEnable;
    chkDeposit.Enabled := bEnable;
    cxCBAccountType.Enabled := bEnable;
    cmbInvoice.Enabled := bEnable;
  end;

function TfrmCheqReqNew.OKtoPost : Boolean;
  var
    sTmp : String;
    bOKtoPost : Boolean;
  begin
    bOKtoPost := True;

    sTmp := '';
    sTmp := MajorOk;
    sTmp := sTmp + MinorOk;
    if cmbBank.Text = ''
    then
      sTmp := sTmp + '       Bank Account Code' + #13;
    if tbPayee.Text = ''
    then
      sTmp := sTmp + '       Payee' + #13;
    if tbDesc.Text = ''
    then
      sTmp := sTmp + '       Reason' + #13;
    if (tbMajor.Text = '') and (tbLedger.Text = '')
    then
      sTmp := sTmp + '       Matter Number/Supplier Code/Ledger Code' + #13;
    if neAmount.EditValue = 0
    then
      sTmp := sTmp + '       Amount' + #13;
    if cmbAuthor.Text = ''
    then
      sTmp := sTmp + '       Requested By' + #13;
    if cbType.Text = ''
    then
      sTmp := sTmp + '       Payment type' + #13;

    if ChequeReqMode = ClientPayment
    then
    begin
      If qryPaymentType.FieldByName('ELECTRONIC').AsString = 'Y'
      then
      begin
        if (tbSortCode.Text = '') Or (tbAccountNo.Text = '') Or (tbBankReference.Text = '')
        then
          sTmp := sTmp + '       Destination Bank Details' + #13;

      end;
    end;

    if chkDeposit.Visible
    then
    begin
      if (chkDeposit.Checked) and (cxCBAccountType.Text = '')
      then
        sTmp := sTmp + '       Account Type' + #13;
    end;

    if (teChequeNo.Text <> '')
    then
    begin
      with dmAxiom.qryTmp do
      begin
        Close;
        SQL.Text := 'select chqno from cheque where printer = :printer and acct = :acct and chqno = :chqno';
        if dmAxiom.qryDefaultBankList.FieldByName('TRUST').AsString = 'G'
        then
          ParamByName('printer').AsString := dmAxiom.UserChequePrinter
        else
          ParamByName('printer').AsString := dmAxiom.UserTrustChequePrinter;
        ParamByName('acct').AsString := cmbBank.EditValue;
        ParamByName('chqno').AsString := teChequeNo.Text;
        Open;
        if EOF = False
        then
          sTmp := sTmp + '       Cheque Number has already been used. Please select a new number.' + #13;
      end;
    end;

    if sTmp <> ''
    then
    begin
      MsgInfo('Please complete the following Cheque Requisition details before saving:    ' + #13#13 + sTmp);
      bOKtoPost := False;
    end;
    result := bOKtoPost
  end;

function TfrmCheqReqNew.MajorOk : String;
  var
    glInstance : TglComponentInstance;
    defaultLedgerTaxCode : String;
    ErrorMsg : String;
  begin

    ErrorMsg := '';

    if (FBankType = 'T') Or (rgChequeType.ItemIndex = 0)
    then
    begin
      if IsMatterArchived(tbMajor.Text)
      then
        ErrorMsg := 'A new cheque requisition cannot be created for this matter. This matter is Archived.'
      else if IsValidMatterForEntity(tbMajor.Text)
      then
      begin
        if MatterString(tbMajor.Text, 'TITLE') = ''
        then
        begin
          ErrorMsg := 'Invalid Matter file number.';
        end
      end
      else
      begin
        ErrorMsg := 'This matter #' + tbMajor.Text + ' is not valid for the current Entity.';
      end;

      if FBankType = 'T'
      then
      begin
        //
        // For trust banks only, refresh the trust amounts.
        //
        if ErrorMsg = ''
        then
        begin
          DisplayTrust(StrToInt(MatterString(tbMajor.Text, 'NMATTER')));
          if Double(neAmount.Value) > (qryGetTrust.FieldByName('cl_trust_bal').AsFloat) + (qryGetTrust.FieldByName('req_amount').AsFloat)
          then
          begin
            //
            // Not enough funds.
            //
            ErrorMsg := 'There are insufficient cleared Client funds (including expected receipts to the requested date) to create this requisition.';
          end;
        end;

      end;

    end
    else
    begin
      case rgChequeType.ItemIndex of
        1 :
          Begin
            with dmAxiom.qryTmp do
            begin
              Close;
              SQL.Text := 'select NAME from CREDITOR Where CODE = :CODE and ACTIVE = ''Y'' ';
              ParamByName('CODE').AsString := tbMajor.Text;
              Open;
              if IsEmpty
              then
              begin
                ErrorMsg := 'Invalid creditor code.';
              end;
              Close;
            end;
          End;

        2 :
          Begin
            glInstance := dmAxiom.getGlComponents.parseString(tbMajor.Text, True);
            if not glInstance.valid
            then
            begin
              ErrorMsg := 'Invalid GL code entered.';
            end;

            if not AllowDirectPost(glInstance.ledgerKey)
            then
            begin
              ErrorMsg := 'You may not post to ledger Reference #' + tbMajor.Text;
            end
            else if LedgerString(glInstance.ledgerKey, 'REPORT_DESC') = ''
            then
            begin
              ErrorMsg := 'Invalid Ledger code';
            end
            else

          End;

      End;

    end;

    if ErrorMsg <> ''
    then
      ErrorMsg := ErrorMsg + #13;

    result := ErrorMsg;

  end;

function TfrmCheqReqNew.MinorOk : String;
  var
    ErrorMsg : String;
  begin

    ErrorMsg := '';

    if FBankType = 'T'
    then
    begin
      case rgChequeType.ItemIndex of
        0 :
          //
          // There is no minor code for a straight client payment.
          //
          begin
          end;
        1 :
          //
          // Bill for a matter.
          //
          begin
            with dmAxiom.qryTmp do
            begin
              Close;
              SQL.Text := 'select NMEMO from NMEMO Where FILEID = :FILEID And REFNO = :REFNO';
              ParamByName('FILEID').AsString := tbMajor.Text;
              ParamByName('REFNO').AsString := tbMinor.Text;
              Open;
              if IsEmpty
              then
              begin
                ErrorMsg := 'Invalid Matter/Bill combination entered.';
              end;
              Close;
            end;
          end;
        2 :
          //
          // Disbursement for a matter.
          //
          Begin
            with dmAxiom.qryTmp do
            begin
              Close;
              SQL.Text := 'select NALLOC from ALLOC Where FILEID = :FILEID And NALLOC = :NALLOC';
              ParamByName('FILEID').AsString := tbMajor.Text;
              ParamByName('NALLOC').AsString := tbMinor.Text;
              Open;
              if IsEmpty
              then
              begin
                ErrorMsg := 'Invalid Matter/Disbursement combination entered.';
              end;
              Close;
            end;

          End;
      end;
    end
    else
    begin
      case rgChequeType.ItemIndex of
        0 :
          Begin
            if VarIsNull(cmbExpenseType.EditValue)
            Then
            begin
              ErrorMsg := 'Invalid Disbursement code entered.';
            end
            else
            Begin
              with dmAxiom.qryTmp do
              begin
                Close;
                SQL.Text := 'select CODE from SUNDRYTYPE Where CODE = :CODE';
                ParamByName('CODE').AsString := cmbExpenseType.EditValue;
                Open;
                if IsEmpty
                then
                begin
                  ErrorMsg := 'Invalid Disbursement code entered.';
                end;
                Close;
              end;
            End;

          end;
        1 :
          Begin
            with dmAxiom.qryTmp do
            begin
              Close;
              SQL.Text := 'select NINVOICE from INVOICE ' + 'Inner Join CREDITOR On INVOICE.NCREDITOR = CREDITOR.NCREDITOR ' +
                'Where NINVOICE = :NINVOICE And CODE = :CODE';
              ParamByName('CODE').AsString := tbMajor.Text;
              ParamByName('NINVOICE').AsString := tbMinor.Text;
              Open;
              if IsEmpty
              then
              begin
                ErrorMsg := 'Invalid Supplier/Invoice combination entered.';
              end;
              Close;
            end;

          End;
        2 :
          //
          // There is no minor code for a GL expense itrem.
          //
          Begin

          End;
      end;
    end;

    if ErrorMsg <> ''
    then
      ErrorMsg := ErrorMsg + #13;

    result := ErrorMsg;

  end;

function TfrmCheqReqNew.IsMatterTypePosting : Boolean;
  begin
    result := (FBankType = 'T') Or (rgChequeType.ItemIndex = 0)
  end;

function TfrmCheqReqNew.IsSupplierTypePosting : Boolean;
  begin
    result := (FBankType <> 'T') And (rgChequeType.ItemIndex = 1)
  end;

function TfrmCheqReqNew.IsGLTypePosting : Boolean;
  begin
    result := (FBankType <> 'T') And (rgChequeType.ItemIndex = 2)
  end;

procedure TfrmCheqReqNew.rgChequeTypePropertiesChange(Sender : TObject);
  begin

    if FLoading = False
    then
      ClearForm();

    neAmount.Enabled := True;
    tbMinor.Visible := False;
    cmbExpenseType.Left := tbMinor.Left;
    cmbExpenseType.Visible := False;
    tbDesc.Enabled := True;
    gbBankDetails.Enabled := False;

    if FBankType = 'T'
    then
    begin

      //
      // TAX/VAT boxes not required for client bank types.
      //
      lblTaxType.Visible := False;
      cbTaxType.Visible := False;
      neTax.Visible := False;
      lblTax.Visible := False;

      Case rgChequeType.ItemIndex Of
        0 :
          Begin
            if FPassedFileID <> ''
            then
              DisplayFile(FPassedFileID);
            ChequeReqMode := ClientPayment;
            FReqType := 'CPREQ';
            lblMajorSelection.Visible := True;
            tbMajor.Visible := True;
            lblMinorSelection.Visible := False;
            lblMajorSelection.Caption := 'Matter:';
            gbBankDetails.Enabled := True;
          End;
        1 :
          Begin
            if FPassedFileID <> ''
            then
              DisplayFile(FPassedFileID);
            ChequeReqMode := BillTransfer;
            FReqType := 'BTREQ';
            lblMajorSelection.Visible := True;
            tbMajor.Visible := True;
            lblMinorSelection.Visible := True;
            tbMinor.Visible := True;
            lblMajorSelection.Caption := 'Matter:';
            lblMinorSelection.Caption := 'Bill:';
            tbDesc.Enabled := False;
            tbDesc.Text := 'Client to Office Transfer';
          End;
        2 :
          Begin
            if FPassedFileID <> ''
            then
              DisplayFile(FPassedFileID);
            ChequeReqMode := DisbTransfer;
            FReqType := 'DTREQ';
            lblMajorSelection.Visible := True;
            tbMajor.Visible := True;
            lblMinorSelection.Visible := True;
            tbMinor.Visible := True;
            lblMajorSelection.Caption := 'Matter:';
            lblMinorSelection.Caption := 'Disb:';
            neAmount.Enabled := False;
            tbDesc.Enabled := False;
            tbDesc.Text := 'Client to Office Transfer';
          End;
      End;
    end
    else
    begin

      //
      // VAT boxes not required is we are doing an Office Supplier payment.
      //
      lblTaxType.Visible := (rgChequeType.ItemIndex <> 1);
      cbTaxType.Visible := (rgChequeType.ItemIndex <> 1);
      neTax.Visible := (rgChequeType.ItemIndex <> 1);
      lblTax.Visible := (rgChequeType.ItemIndex <> 1);

      Case rgChequeType.ItemIndex Of
        0 :
          Begin
            if FPassedFileID <> ''
            then
              DisplayFile(FPassedFileID);
            ChequeReqMode := DisbPayment;
            FReqType := 'DPREQ';
            lblMajorSelection.Visible := True;
            tbMajor.Visible := True;
            lblMinorSelection.Visible := True;
            cmbExpenseType.Visible := True;
            lblMajorSelection.Caption := 'Matter:';
            lblMinorSelection.Caption := 'Disb Code:';
            gbBankDetails.Enabled := True;
          End;
        1 :
          Begin
            FReqType := 'SPREQ';
            ChequeReqMode := SupplierPayment;
            lblMajorSelection.Visible := True;
            tbMajor.Visible := True;
            lblMinorSelection.Visible := True;
            tbMinor.Visible := True;
            lblMajorSelection.Caption := 'Supplier:';
            lblMinorSelection.Caption := 'Invoice:';
            gbBankDetails.Enabled := True;
          End;
        2 :
          Begin
            FReqType := 'EXREQ';
            ChequeReqMode := ExpensePayment;
            lblMajorSelection.Visible := True;
            tbMajor.Visible := True;
            lblMinorSelection.Visible := False;
            lblMajorSelection.Caption := 'Nominal:';
            gbBankDetails.Enabled := True;
          End;
      End;

    end

  end;

procedure TfrmCheqReqNew.btnSaveClick(Sender : TObject);
  var
    iCheqReq : Integer;
    bNewRecord : Boolean;
    bPostingFailed : Boolean;
    Bank_Trust, Bank : string;
    glComponentSetup : TglComponentSetup;
    sLedgerKey : String;
    glInstance : TglComponentInstance;
    iTransId : Integer;
    bContinuePosting : Boolean;
    CheqReqAmt, BillOwing : Currency;
    bCheck : Boolean;

    function decodeGlInstance(glInstance : TglComponentInstance) : string;
      begin
        if glInstance = nil
        then
          decodeGlInstance := ''
        else
          decodeGlInstance := glInstance.ledgerKey;
      end;

  begin
    iCheqReq := 0;
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
    if OKtoPost()
    then
    begin

      if IsGLTypePosting
      then
      begin
        // lookup the ledger code based on the value entered
        glInstance := dmAxiom.getGlComponents.parseString(tbMajor.Text, True);
        if not glInstance.valid
        then
        begin
          // something has gone very wrong !
          raise Exception.create('Error invalid ledger key');
        end;
      end;

      iTransId := 0;
      // Added 18.08.2003 AES
      // check if matter is valid for current entity
      if IsMatterTypePosting And (not IsValidMatterForEntity(tbMajor.Text) or not IsValidBankForEntity(cmbBank.EditValue))
      then
      begin
        MsgErr('This matter #' + tbMajor.Text + ' is not valid for the current Entity.');
        bContinuePosting := False;
      end
      else if IsMatterTypePosting And (tbMajor.Text <> '') and (IsMatterArchived(tbMajor.Text))
      then
      begin
        MsgErr('A new cheque requisition cannot be created for this matter. ' + 'This matter is Archived.');
        tbMajor.Text := '';
        bContinuePosting := False;
      end
      else if IsGLTypePosting And not (IsValidGLACCTForEntity(decodeGlInstance(glInstance)) or not IsValidBankForEntity(cmbBank.EditValue))
      then
      begin
        MsgErr('This Ledger #' + tbMajor.Text + ' is not valid for the current Entity.');
        bContinuePosting := False;
      end
      else if ((not qryCheqReq.Active) and (dfSlipNo.Text <> '') and (not (IsCRInvoiceUnique(dfSlipNo.Text, FNName)) and
        (SystemString('INVOICE_FROM_TRUST') = 'Y')))
      then
      begin
        MsgErr('Creditor Invoice #' + dfSlipNo.Text + ' is already being used.');
        bContinuePosting := False;
      end
      // AES 20/01/2010 cast neAmount.Value to double
      else if (cmbInvoice.Visible) and (cmbInvoice.Text <> '') and (Double(neAmount.Value) > qryGetTrust.FieldByName('cl_trust_bal').AsFloat)
      then
      begin
        MsgErr('There are insufficient Client funds in order to pay this Creditor Invoice.');
        bContinuePosting := False;
      end;

      if (FBankType = 'T') And (rgChequeType.ItemIndex = 1)
      then
      begin
        // added test to check whether cheqreq is being edited.  if being edited then no need to check for overpayment.
        // AES 05/08/2009
        bCheck := True;
        if qryCheqReq.Active
        then
          bCheck := qryCheqReq.FieldByName('NCHEQREQ').IsNull;

        if bCheck
        then
        begin
          qryBillPayment.Close;
          qryBillPayment.ParamByName('nmemo').AsInteger := FNMemo;
          qryBillPayment.Open;
          CheqReqAmt := qryBillPayment.FieldByName('PAYMENT').AsCurrency + neAmount.Value;
          qryBillPayment.Close;

          BillOwing := TableCurrency('NMEMO', 'refno', tbMinor.Text, 'owing');
          if (CheqReqAmt) > BillOwing
          then
          begin
            MsgErr('Bill # ' + tbMinor.Text + ' will be overpaid. ' + #13 + 'Amount owing on bill is ' + CurrToStrF(BillOwing, ffCurrency, 2) + #13 +
              'Total payment to bill is ' + CurrToStrF(CheqReqAmt, ffCurrency, 2) + #13 + 'Please verify transactions prior to continuing.');
            bContinuePosting := False;
          end;
        end;
      end;

      if bContinuePosting
      then
      begin
        try
          bPostingFailed := False;
          if dmAxiom.uniInsight.InTransaction
          then
            dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;
          if qryCheqReq.Active
          then
          //
          // We are editing an existing record.
          //
          begin
            qryCheqReq.Edit;
            iCheqReq := qryCheqReq.ParamByName('NCHEQREQ').AsInteger;
            bNewRecord := False;
          end
          else
          begin
            //
            // We need to create a new record.
            //
            iCheqReq := GetSeqnum('NCHEQREQ');
            qryCheqReq.ParamByName('NCHEQREQ').AsInteger := iCheqReq;
            qryCheqReq.Open;
            qryCheqReq.Insert;
            qryCheqReq.FieldByName('NCHEQREQ').AsInteger := iCheqReq;
            qryCheqReq.FieldByName('CONVERTED').AsString := 'N';
            bNewRecord := True;
          end;

          Bank := cmbBank.EditValue;
          Bank_Trust := TableString('BANK', 'ACCT', Bank, 'TRUST');
          qryCheqReq.FieldByName('REQDATE').AsDateTime := Trunc(dtpReqDate.Date);
          qryCheqReq.FieldByName('BANK').AsString := cmbBank.EditValue;
          qryCheqReq.FieldByName('TRUST').AsString := Bank_Trust;
          qryCheqReq.FieldByName('PAYEE').AsString := tbPayee.Text;
          qryCheqReq.FieldByName('DOCUMENT').AsString := tbDocument.Text;

          qryCheqReq.FieldByName('SORTCODE').AsString := tbSortCode.Text;
          qryCheqReq.FieldByName('ACCOUNTNO').AsString := tbAccountNo.Text;
          qryCheqReq.FieldByName('BANKREF').AsString := tbBankReference.Text;
          if chkForeignBank.Checked
          Then
            qryCheqReq.FieldByName('FOREIGNBANK').AsString := 'Y'
          else
            qryCheqReq.FieldByName('FOREIGNBANK').AsString := 'N';

          if (SystemString('show_cheqreq_no') = 'Y') and (iCheqReq <> 0)
          then
            qryCheqReq.FieldByName('DESCR').AsString := 'CQR' + inttostr(iCheqReq) + ' ' + tbDesc.Text
          else
            qryCheqReq.FieldByName('DESCR').AsString := tbDesc.Text;

          if iCheqReq > 0
          then
            qryCheqReq.FieldByName('CHQ_REQ_NO').AsString := qryCheqReq.FieldByName('CHQ_REQ_NO').AsString + ' ' + 'CQR' + inttostr(iCheqReq);

          qryCheqReq.FieldByName('AMOUNT').AsCurrency := neAmount.EditValue;
          qryCheqReq.FieldByName('TAX').AsCurrency := neTax.EditValue;
          qryCheqReq.FieldByName('TAXCODE').AsString := cbTaxType.Text;
          qryCheqReq.FieldByName('AUTHOR').AsString := cmbAuthor.EditValue;

          //
          // Set the values dependant on the cheque type, so first clear them all.
          //
          qryCheqReq.FieldByName('FILEID').Clear;
          qryCheqReq.FieldByName('NMATTER').Clear;
          qryCheqReq.FieldByName('NMEMO').Clear;
          qryCheqReq.FieldByName('BILLNO').Clear;
          qryCheqReq.FieldByName('NALLOC').Clear;
          qryCheqReq.FieldByName('SUNDRYTYPE').Clear;
          qryCheqReq.FieldByName('LEDGER').Clear;
          qryCheqReq.FieldByName('NINVOICE').Clear;

          if FBankType = 'T'
          then
          begin
            qryCheqReq.FieldByName('FILEID').AsString := tbMajor.Text;
            qryCheqReq.FieldByName('NMATTER').AsInteger := GetMatterNoFromFileid(tbMajor.Text);
            case rgChequeType.ItemIndex of
              0 :
                Begin
                  // No minor codes.
                End;
              1 :
                Begin
                  qryCheqReq.FieldByName('NMEMO').AsInteger := FNMemo;
                  qryCheqReq.FieldByName('BILLNO').AsString := tbMinor.Text;
                End;
              2 :
                begin
                  qryCheqReq.FieldByName('NALLOC').AsString := tbMinor.Text;
                end;
            end;
          end
          else
          begin
            case rgChequeType.ItemIndex of
              0 :
                Begin
                  qryCheqReq.FieldByName('FILEID').AsString := tbMajor.Text;
                  qryCheqReq.FieldByName('NMATTER').AsInteger := FNMatter;
                  qryCheqReq.FieldByName('SUNDRYTYPE').AsString := cmbExpenseType.EditValue;
                End;
              1 :
                Begin
                  qryCheqReq.FieldByName('NINVOICE').AsString := tbMinor.Text;
                End;
              2 :
                begin
                  qryCheqReq.FieldByName('LEDGER').AsString := FLedger;
                end;
            end;
          end;

          qryCheqReq.FieldByName('NOTE').AsString := mmoNotes.Text;
          qryCheqReq.FieldByName('HELD').AsString := 'N';
          qryCheqReq.FieldByName('URGENT').AsString := 'N';
          qryCheqReq.FieldByName('GROUPABLE').AsString := 'N';
          qryCheqReq.FieldByName('CREDITOR_INVOICE').AsString := dfSlipNo.Text;
          qryCheqReq.FieldByName('NNAME').AsInteger := FNName;

          if (teChequeNo.Text <> '')
          then
          begin
            qryCheqReq.FieldByName('CHQNO').AsString := teChequeNo.Text;
            if dmAxiom.qryDefaultBankList.FieldByName('TRUST').AsString = 'G'
            then
              qryCheqReq.FieldByName('PRINTER').AsString := dmAxiom.UserChequePrinter
            else
              qryCheqReq.FieldByName('PRINTER').AsString := dmAxiom.UserTrustChequePrinter;
          end;

          if (cmbInvoice.Visible) and (cmbInvoice.Text <> '')
          then
            qryCheqReq.FieldByName('NINVOICE').AsVariant := cmbInvoice.EditValue;
          if cxCBAccountType.Visible
          then
          begin
            qryCheqReq.FieldByName('DEP_ACCOUNT_TYPE').AsString := cxCBAccountType.Text;
            qryCheqReq.FieldByName('DEP_ACCOUNT').AsString := chkDeposit.EditValue;
            qryCheqReq.FieldByName('NDEPOSITACCOUNT').AsString := cxCBAccountType.EditValue;
          end;

          if chkInvoiceSupplied.Checked
          then
            qryCheqReq.FieldByName('INVOICESUPPLIED').AsString := 'Y'
          else
            qryCheqReq.FieldByName('INVOICESUPPLIED').AsString := 'N';

          if cbAuthorise.Checked
          then
          begin
            qryCheqReq.FieldByName('Authorised').AsString := 'Y';
            if qryCheqReq.FieldByName('Authorised_by').AsString = ''
            then
              qryCheqReq.FieldByName('Authorised_by').AsString := dmAxiom.UserID;
            qryCheqReq.FieldByName('Authorised_Date').AsDateTime := now; // RDW - Added Authorised Date
          end
          else
          begin
            qryCheqReq.FieldByName('Authorised').AsString := 'N';
            qryCheqReq.FieldByName('Authorised_by').Clear;
            qryCheqReq.FieldByName('Authorised_Date').Clear; // RDW - Added Authorised Date
          end;
          qryCheqReq.FieldByName('TRANSTYPE').AsString := 'CC';
          qryCheqReq.FieldByName('TYPE').AsString := cbType.EditValue;

          if chkUrgent.Checked
          then
            qryCheqReq.FieldByName('URGENT').AsString := 'Y';
          {
            Commented out SJW 10-Jan-2019 until we better understand the purpose of this.

            if (qryCheqReq.FieldByName('TRUST').AsString = 'G') and (tbMajor.Text <> '')
            then
            begin
            if ((qryCheqReq.State = dsInsert) and chkBill.Checked) or ((qryCheqReq.FieldByName('BILLED').AsString = 'Y')
            // pb- and (qryCheqReq.FieldByName('NMEMO').AsInteger = 0)
            and (qryCheqReq.FieldByName('NMEMO').AsString = '') and chkBill.Checked)
            then
            begin
            // It is a new cheqreq to be billed or it is unbilled, originally
            // flagged not to be billed, but now being billed
            // Post amounts entered to GL
            // Debit the Unbilled Anticipated Disbursements ledger
            // the tax free amount

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'), '', True, '');

            PostLedger(Date, 0 - neAmount.EditValue, 0 - neTax.EditValue, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text,
            sLedgerKey, '', - 1, '', cbTaxType.Text, False, tbLedger.Text, 0, qryCheqReq.FieldByName('NMATTER').AsInteger);

            // Debit the GST Input Tax Credits ledger the tax amount
            if (neTax.EditValue <> 0)
            then
            begin
            if (IsWitholdingTax)
            then
            begin
            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'), '', True, '');

            PostLedger(Date, neTax.EditValue, 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text, sLedgerKey, '', - 1,
            '', cbTaxType.Text, False, tbLedger.Text, 0, qryCheqReq.FieldByName('NMATTER').AsInteger);
            end
            else
            begin
            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'), '', True, '');

            PostLedger(Date, 0 - neTax.EditValue, 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text, sLedgerKey, '',
            - 1, '', cbTaxType.Text, False, tbLedger.Text, 0, qryCheqReq.FieldByName('NMATTER').AsInteger);
            end; // end if
            end; // end if

            //
            // If the tax type is Witholding Tax, then minus the tax from the
            // amount.
            //
            // BJ  06/11/2002


            if (IsWitholdingTax)
            then
            begin
            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'), '', True, '');

            // Credit Anticipated disbursements liability the full amount
            PostLedger(Date, neAmount.EditValue - neTax.EditValue, 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text,
            sLedgerKey, TableString('MATTER', 'FILEID', tbMajor.Text, 'AUTHOR'), - 1, '', cbTaxType.Text, False, tbLedger.Text, 0,
            qryCheqReq.FieldByName('NMATTER').AsInteger);
            end
            else
            begin

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'), '', True, '');

            // Credit Anticipated disbursements liability the full amount
            PostLedger(Date, neAmount.EditValue + neTax.EditValue, 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text,
            sLedgerKey, TableString('MATTER', 'FILEID', tbMajor.Text, 'AUTHOR'), - 1, '', cbTaxType.Text, False, tbLedger.Text, 0,
            qryCheqReq.FieldByName('NMATTER').AsInteger);
            end; // end if-else
            end
            else if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and not chkBill.Checked
            then
            begin
            // It is originally flagged to be billed, but now not to be billed
            // Take it off the matter
            MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_ANTD', 0 - cOriginalAmount);
            MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_CREQ', 0 - cOriginalAmount);
            // Unpost original amounts entered from GL
            // Debit the Unbilled Anticipated Disbursements ledger the tax free
            // amount

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'), '', True, '');

            PostLedger(Date, cOriginalAmount, cOriginalTax, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text, sLedgerKey,
            '', - 1, '', cbTaxType.Text, False, tbLedger.Text, 0, qryCheqReq.FieldByName('NMATTER').AsInteger);

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'), '', True, '');

            // Debit the GST Input Tax Credits ledger the tax amount
            PostLedger(Date, cOriginalTax, 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text, sLedgerKey, '', - 1, '',
            cbTaxType.Text, False, tbLedger.Text, 0, qryCheqReq.FieldByName('NMATTER').AsInteger);

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'), '', True, '');

            // Credit Anticipated disbursements liability the full amount
            PostLedger(Date, 0 - cOriginalAmount - cOriginalTax, 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text,
            sLedgerKey, TableString('MATTER', 'FILEID', tbMajor.Text, 'AUTHOR'), - 1, '', cbTaxType.Text, False, tbLedger.Text, 0,
            qryCheqReq.FieldByName('NMATTER').AsInteger);
            end
            else if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and chkBill.Checked and
            (neAmount.EditValue + neTax.EditValue <> cOriginalAmount + cOriginalTax)
            then
            begin
            // It was being billed, is still being billed, and the amounts have changed
            // update the GL with the difference

            // Debit the Unbilled Anticipated Disbursements ledger the tax free amount

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'), '', True, '');

            PostLedger(Date, 0 - (neAmount.EditValue - cOriginalAmount), 0 - (neTax.EditValue - cOriginalTax), tbMajor.Text, 'CHEQREQ',
            qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text, sLedgerKey, '', - 1, '', cbTaxType.Text, False, tbLedger.Text, 0,
            qryCheqReq.FieldByName('NMATTER').AsInteger);
            // Debit the GST Input Tax Credits ledger the tax amount
            if (neTax.EditValue - cOriginalTax) <> 0
            then
            begin
            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'), '', True, '');

            PostLedger(Date, 0 - (neTax.EditValue - cOriginalTax), 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text,
            sLedgerKey, TableString('MATTER', 'FILEID', tbMajor.Text, 'AUTHOR'), - 1, '', cbTaxType.Text, False, tbLedger.Text, 0,
            qryCheqReq.FieldByName('NMATTER').AsInteger);
            end;
            end
            else if (qryCheqReq.FieldByName('BILLED').AsString = 'N') and not chkBill.Checked
            then
            begin
            // It is originally flagged to be billed, but now not to be billed
            // Take it off the matter
            MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_ANTD', 0 - cOriginalAmount);
            MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_CREQ', 0 - cOriginalAmount);
            // Unpost original amounts entered from GL
            // Debit the Unbilled Anticipated Disbursements ledger the tax free
            // amount

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'), '', True, '');

            PostLedger(Date, cOriginalAmount, cOriginalTax, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text, sLedgerKey,
            '', - 1, '', cbTaxType.Text, False, tbLedger.Text, 0, qryCheqReq.FieldByName('NMATTER').AsInteger);

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'LEDGER'), '', True, '');

            // Debit the GST Input Tax Credits ledger the tax amount
            PostLedger(Date, cOriginalTax, 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text, sLedgerKey, '', - 1, '',
            cbTaxType.Text, False, tbLedger.Text, 0, qryCheqReq.FieldByName('NMATTER').AsInteger);
            // Credit Anticipated disbursements liability the full amount

            // post components
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'), '', True, '');

            PostLedger(Date, 0 - cOriginalAmount - cOriginalTax, 0, tbMajor.Text, 'CHEQREQ', qryCheqReq.FieldByName('NCHEQREQ').AsInteger, tbDesc.Text,
            sLedgerKey, TableString('MATTER', 'FILEID', tbMajor.Text, 'AUTHOR'), - 1, '', cbTaxType.Text, False, tbLedger.Text, 0,
            qryCheqReq.FieldByName('NMATTER').AsInteger);
            end;
            end;

          }

          if chkBill.Checked
          then
            qryCheqReq.FieldByName('ANTICIPATED').AsString := 'Y'
          else
            qryCheqReq.FieldByName('ANTICIPATED').AsString := 'N';

          if chkHeld.Checked
          then
            qryCheqReq.FieldByName('HELD').AsString := 'Y'
          else
            qryCheqReq.FieldByName('HELD').AsString := 'N';

          { if (qryCheqReq.FieldByName('NMEMO').AsString <> '')
            then
            qryCheqReq.FieldByName('BILLED').AsString := 'Y';
          }
          qryCheqReq.FieldByName('BILLED').AsString := 'N';
          // pb- if ((qryCheqReq.FieldByName('BILLED').AsString = 'Y') and (qryCheqReq.FieldByName('NMEMO').AsInteger = 0))
          //
          // Need to check what this is for SJW 07-01-2019.
          //
          { if ((qryCheqReq.FieldByName('BILLED').AsString = 'Y') and (qryCheqReq.FieldByName('NMEMO').AsString = '')) or (qryCheqReq.State = dsInsert)
            then
            begin
            if chkBill.Checked
            then
            begin
            // pb-
            MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_ANTD',
            neAmount.EditValue - cOriginalAmount);
            MatterUpdate(TableInteger('MATTER', 'FILEID', qryCheqReq.FieldByName('FILEID').AsString, 'NMATTER'), 'UNBILL_CREQ',
            (neAmount.EditValue) - cOriginalAmount);
            // qryCheqReq.FieldByName('BILLED').AsString := 'N';
            end
            else
            qryCheqReq.FieldByName('BILLED').AsString := 'Y';
            end;
          }
          if chkFunds.Checked
          then
          begin
            qryCheqReq.FieldByName('HELD').AsString := 'W';
          end;

          qryCheqReq.Post;

          // save cheque no
          if (teChequeNo.Text <> '')
          then
          begin
            with qryPrinter do
            begin
              Close;
              ParamByName('code').AsString := dmAxiom.UserChequePrinter;
              ParamByName('acct').AsString := cmbBank.EditValue;
              Open;
              Edit;
              FieldByName('NUM_LAST').AsString := teChequeNo.Text;
              Post;
              Close;
            end;
          end;

          CheckLedgerTotal;
        except
          on E : Exception do
          begin
            qryCheqReq.CancelUpdates;
            dmAxiom.uniInsight.Rollback;
            bPostingFailed := True;
            MsgErr('Cheque Requisition posting failed:' + #13#13 + E.Message);
          end;
        end;

        if not bPostingFailed
        then
        begin
          qryCheqReq.ApplyUpdates;
          dmAxiom.uniInsight.Commit;

          //
          // Now we can update the AUTHORISED flag to 'Y' if we don't need authorisation for this type of item.
          //
          SetAuthorised(iCheqReq);

          if chkPrint.Checked
          then
          begin
            with TfrmCheqReqPrint.create(Self) do
              PrintCheqReq(Self.qryCheqReq.FieldByName('NCHEQREQ').AsInteger);

          end;
          qryCheqReq.Close;
          if (bNewRecord)
          then
            if Self.Caption = 'Anticipated Disbursement' then
            begin
              MessageDlg('Anticipated Disbursement Created No: ' + inttostr(iCheqReq), mtInformation, [mbOK], 0);
            end
            else
              MessageDlg('Cheque Requisition Created CQR' + inttostr(iCheqReq), mtInformation, [mbOK], 0);

          if not chkNoExit.Checked
          then
            Self.Close
          else
          begin
            if not FromMatter
            then
            begin
              tbMajor.Text := '';
              lblMajorDescription.Caption := '';
              lblMinorDescription.Caption := '';
              chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
              chkDeposit.Checked := False;
            end;

            fcCurrentAmount := 0;
            tbLedger.Text := '';
            lblLgrDesc.Caption := '';
            tbPayee.Text := '';
            tbDesc.Text := '';
            tbSortCode.Text := '';
            tbAccountNo.Text := '';
            tbBankReference.Text := '';
            chkForeignBank.Checked := False;
            neAmount.EditValue := 0;
            neTax.EditValue := 0;
            mmoNotes.Text := '';
            if cmbOld.Visible
            then
              cmbOld.Text := '';
            lblTotal.Caption := '';
            lblTotal.Caption := 'Total = 0.00';
            qryDepositAccount.Close;
            cxCBAccountType.Text := '';

            ModalResult := mrNone;
          end;
        end;
      end;
    end
    else
      ModalResult := mrNone;
    // end;
  end;

procedure TfrmCheqReqNew.btnCancelClick(Sender : TObject);
  begin
    Close;
  end;

procedure TfrmCheqReqNew.cbBankChange(Sender : TObject);
  begin
    if cmbBank.Text <> ''
    then
    begin
      FBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue), 'TRUST');
      Self.Color := BankColour(cmbBank.EditValue);
      dfSlipNo.Visible := FBankType <> 'T';
      Label10.Visible := FBankType <> 'T';

      cxCBAccountType.Visible := False;
      cmbOld.Visible := True;

      chkInvoiceSupplied.Style.Color := Self.Color;
      chkPrint.Style.Color := Self.Color;
      chkNoExit.Style.Color := Self.Color;
      chkUrgent.Style.Color := Self.Color;
      chkDeposit.Visible := False;

      cmbInvoice.Visible := False;
      tbLedger.Visible := True;

      StatusBar.Panels[0].Text := '';
      StatusBar.Panels[1].Text := '';

      ClearForm();

      if FBankType = 'T'
      then
      begin
        tbLedger.Text := '';
        tbLedger.Enabled := False;
        tbMajor.Enabled := True;
        cmbOld.Visible := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        // changed by AES 26/06/2009
        // no reason to not allow cheqreq to be held
        // chkHeld.State := cbsUnchecked;
        chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
        chkHeld.Enabled := True; // False;

        chkBill.State := cbsUnChecked;
        chkBill.Enabled := False;
        chkDeposit.Visible := (SystemString('DEPOSIT_CHEQ_REQ') = 'Y');

        if (SystemString('INVOICE_FROM_TRUST') = 'Y')
        then
        begin
          cmbInvoice.Visible := True;

          tbLedger.Visible := False;
        end;

        chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible
        then
          chkDeposit.StyleDisabled.Color := Self.Color;
        {
          Instead of hard coding the default tax, we will request it from the
          TaxDefault table.

          BJ 07/01/2003
        }

      end
      else if FBankType = 'C'
      then
      begin
        tbMajor.Text := '';
        tbLedger.Enabled := True;
        tbMajor.Enabled := False;
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
        if chkDeposit.Visible
        then
          chkDeposit.StyleDisabled.Color := Self.Color;
      end
      else
      begin
        tbLedger.Enabled := True;
        tbMajor.Enabled := True;
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

procedure TfrmCheqReqNew.cbAuthor1Change(Sender : TObject);
  begin
    lblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', string(cmbAuthor.EditValue), 'NAME');
  end;

procedure TfrmCheqReqNew.cbAuthorisePropertiesEditValueChanged(Sender : TObject);
  var
    LEntered : string;
  begin

    if self.Caption = 'Anticipated Disbursement' then       // RDW - Don't need password for Anticipated
      exit;


    cbAuthorise.Properties.OnEditValueChanged := nil;

    try
      if cbAuthorise.Checked
      then

        if (InputQueryPassword(CN_PROGRAM_NAME, 'Please enter you authorisation password', LEntered))
        then
        begin
          if (LEntered <> dmAxiom.Auth_Password)
          then
          begin
            cbAuthorise.Checked := False;
            MsgErr('Invalid Password');
          end;
        end
        else
          cbAuthorise.Checked := False;
      begin
      end;

    finally
      cbAuthorise.Properties.OnEditValueChanged := cbAuthorisePropertiesEditValueChanged;
    end;

  end;

procedure TfrmCheqReqNew.btnMatterClick(Sender : TObject);
  begin
    if not FormExists(frmMatterSearch)
    then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

    if frmMatterSearch.ShowModal = mrOk
    then
    begin
      if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> ''
      then
      begin
        tbLedger.Text := '';
        if IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)
        then
          MsgErr('A new cheque requisition cannot be created for this matter. ' + 'This matter is Archived.')
        else
          DisplayFile(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
      end;
    end;
  end;

procedure TfrmCheqReqNew.btnPayeeClick(Sender : TObject);
  begin
    if not FormExists(frmPhoneBookSearch)
    then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
    if frmPhoneBookSearch.ShowModal = mrOk
    then
      tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
    FNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
    if Self.Visible
    then
      dfSlipNo.SetFocus;
  end;

procedure TfrmCheqReqNew.btnLedgerClick(Sender : TObject);
  begin
    SettingSave('Ledger Search', 'Bank', cmbBank.Text);
    if not FormExists(frmLedgerSearch)
    then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
    if frmLedgerSearch.ShowModal = mrOk
    then
    begin
      tbMajor.Text := '';
      DisplayLedger(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString);
    end;
  end;

procedure TfrmCheqReqNew.tbMajorExit(Sender : TObject);
  var
    glInstance : TglComponentInstance;
    defaultLedgerTaxCode : String;
  begin
    if tbMajor.Text <> ''
    then
    begin
      if (FBankType = 'T') Or (rgChequeType.ItemIndex = 0)
      then
      begin
        if IsMatterArchived(tbMajor.Text)
        then
          MsgErr('A new cheque requisition cannot be created for this matter. ' + 'This matter is Archived.')
        else if IsValidMatterForEntity(tbMajor.Text)
        then
        begin
          if MatterString(tbMajor.Text, 'TITLE') = ''
          then
          begin
            MsgErr('Invalid Matter file number.');
            tbMajor.SetFocus;
          end
          else
            DisplayFile(tbMajor.Text);
        end
        else
        begin
          MsgErr('This matter #' + tbMajor.Text + ' is not valid for the current Entity.');
          tbMajor.Text := '';
        end;
      end
      else
      begin
        case rgChequeType.ItemIndex of
          1 :
            Begin
              with dmAxiom.qryTmp do
              begin
                Close;
                SQL.Text := 'select NAME from CREDITOR Where CODE = :CODE and ACTIVE = ''Y'' ';
                ParamByName('CODE').AsString := tbMajor.Text;
                Open;
                if IsEmpty
                then
                begin
                  tbMajor.Text := '';
                  lblMajorDescription.Caption := '';
                  tbMajor.SetFocus;
                  exit;
                end
                else
                begin
                  lblMajorDescription.Caption := FieldByName('NAME').AsString;
                end;
                Close;
              end;
            End;

          2 :
            Begin
              glInstance := dmAxiom.getGlComponents.parseString(tbMajor.Text, True);
              if not glInstance.valid
              then
              begin
                glInstance.displayError;
                tbMajor.Text := '';
                lblMajorDescription.Caption := '';
                tbMajor.SetFocus;
                glInstance.free;
                exit;
              end
              else
              begin

                begin
                  tbMajor.Text := glInstance.fullCode;
                  FLedger := glInstance.ledgerKey;
                end;
              end;

              if not AllowDirectPost(glInstance.ledgerKey)
              then
              begin
                MsgErr('You may not post to ledger Reference #' + tbMajor.Text);
                tbMajor.Text := '';
                tbMajor.SetFocus;
              end
              else if LedgerString(glInstance.ledgerKey, 'REPORT_DESC') = ''
              then
              begin
                MsgErr('Invalid Ledger code');
                tbMajor.SetFocus;
              end
              else
                // AES 12/12/2011 - CHANGED THIS TO USE THE CODE RATHER THAN DISPLAY VALUE
                DisplayLedger(glInstance.ledgerKey);

              defaultLedgerTaxCode := LedgerString(glInstance.ledgerKey, 'DEFAULT_TAXCODE');

              if defaultLedgerTaxCode <> ''
              then
                cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(defaultLedgerTaxCode)
              else
                cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);

            End;
        End;
      end;
    end;

  end;

procedure TfrmCheqReqNew.tbMinorPropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : Integer);
  var
    LfrmCreditorAccountsSearch : TfrmCreditorAccountsSearch;
  begin

    if FBankType = 'T'
    then
    begin
      case rgChequeType.ItemIndex of
        0 :
          Begin
            //
            // There is no minor code for a straight matter payment.
            //
          End;
        1 :
          begin
            lblMinorDescription.Caption := '';
            if not FormExists(frmInvoiceSearch)
            then
              Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

            if tbMajor.Text <> ''
            then
            begin
              frmInvoiceSearch.BillsForMatter := True;
              frmInvoiceSearch.tbMatterSearch.Text := tbMajor.Text;
            end;
            if frmInvoiceSearch.ShowModal = mrOk
            then
            begin
              DisplayBill(frmInvoiceSearch.qryInvoices);
            end;

          end;
        2 :
          Begin
            try
              frmDisbSearch := TfrmDisbSearch.create(Self);
              frmDisbSearch.tbLedgerSearch.Text := tbMajor.Text;
              frmDisbSearch.TaxFreeOnly := True;
              with frmDisbSearch do
              begin
                if ShowModal = mrOk
                then
                begin
                  DisplayDisb(frmDisbSearch.qryLedgers);
                end;
              end;
            finally

              frmDisbSearch.free();
            end;

          End;
      end;
    end
    else
    begin
      case rgChequeType.ItemIndex of
        0 :
          begin
            //
            // We use a combo box for the disbursement type.
            //
          end;
        1 :
          Begin
            LfrmCreditorAccountsSearch := TfrmCreditorAccountsSearch.create(Self);
            try
              LfrmCreditorAccountsSearch.CreditorCode := tbMajor.Text;
              if (LfrmCreditorAccountsSearch.ShowModal = mrOk)
              then
                DisplayCreditorInvoice(LfrmCreditorAccountsSearch.qryAccounts.FieldByName('NINVOICE').AsString,
                  LfrmCreditorAccountsSearch.qryAccounts.FieldByName('OWING').AsCurrency, LfrmCreditorAccountsSearch.qryAccounts.FieldByName('DESCR').AsString);
            finally
              LfrmCreditorAccountsSearch.free
            end

          End;
        2 :
          begin
            //
            // No Minor value for an expense payment.
            //
          end;
      end;
    end;

  end;

procedure TfrmCheqReqNew.tbLedgerExit(Sender : TObject);
  var
    defaultLedgerTaxCode : String;
    glInstance : TglComponentInstance;
  begin
    if tbLedger.Text <> ''
    then
    begin // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(tbLedger.Text, True);
      if not glInstance.valid
      then
      begin
        glInstance.displayError;
        tbLedger.Text := '';
        lblLgrDesc.Caption := '';
        tbLedger.SetFocus;
        glInstance.free;
        exit;
      end
      else
      begin

        begin
          tbLedger.Text := glInstance.fullCode;
          FLedger := glInstance.ledgerKey;
        end;
      end;

      if not AllowDirectPost(glInstance.ledgerKey)
      then
      begin
        MsgErr('You may not post to ledger Reference #' + tbLedger.Text);
        tbLedger.Text := '';
        tbLedger.SetFocus;
      end
      else if LedgerString(glInstance.ledgerKey, 'REPORT_DESC') = ''
      then
      begin
        MsgErr('Invalid Ledger code');
        tbLedger.SetFocus;
      end
      else
        // AES 12/12/2011 - CHANGED THIS TO USE THE CODE RATHER THAN DISPLAY VALUE
        DisplayLedger(glInstance.ledgerKey);

      defaultLedgerTaxCode := LedgerString(glInstance.ledgerKey, 'DEFAULT_TAXCODE');

      if defaultLedgerTaxCode <> ''
      then
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(defaultLedgerTaxCode)
      else
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);
    end;
  end;

procedure TfrmCheqReqNew.tbPayeeExit(Sender : TObject);
  begin
    Quickcode(Sender);
  end;

procedure TfrmCheqReqNew.tbPayeeKeyPress(
  Sender  : TObject;
  var Key : Char);
  begin
    if Key = ' '
    then
      Quickcode(Sender);
  end;

procedure TfrmCheqReqNew.chkBillClick(Sender : TObject);
  begin
    if not chkBill.Checked
    then
    begin
      chkFunds.Checked := False;
      chkFunds.StyleDisabled.Color := Self.Color;
    end;
  end;

procedure TfrmCheqReqNew.chkForeignBankPropertiesChange(Sender : TObject);
  begin
    if chkForeignBank.Checked
    then
    begin
      lblSortCode.Caption := 'Swift Code:';
      lblAccountNo.Caption := 'IBAN Number:';
    end
    else
    begin
      lblSortCode.Caption := 'Sort Code:';
      lblAccountNo.Caption := 'Account No:';
    end;
  end;

procedure TfrmCheqReqNew.chkFundsClick(Sender : TObject);
  begin
    if chkFunds.Checked
    then
    begin
      chkHeld.Checked := True;
      chkHeld.Enabled := False;
      chkBill.Checked := True;
      chkBill.Enabled := False;
      chkHeld.StyleDisabled.Color := Self.Color;
      chkBill.StyleDisabled.Color := Self.Color;
      if chkDeposit.Visible
      then
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

procedure TfrmCheqReqNew.FormClose(
  Sender     : TObject;
  var Action : TCloseAction);
  begin
    qryCheqReq.Close;
    dmAxiom.qryDefaultBankList.Close;
    Action := caFree;
  end;

procedure TfrmCheqReqNew.FormCreate(Sender : TObject);
  begin

    FLoading := False;
    FPassedFileID := '';

    tbLedger.Visible := dmAxiom.Security.CheqReq.Ledger;
    lblLgrDesc.Visible := dmAxiom.Security.CheqReq.Ledger;
    chkFunds.Visible := dmAxiom.Security.CheqReq.Funds.Visible;
    chkHeld.Visible := dmAxiom.Security.CheqReq.Held.Visible;
    // chkBill.Visible := dmAxiom.Security.CheqReq.Bill.Visible;
    chkFunds.Checked := dmAxiom.Security.CheqReq.Funds.Checked;
    chkFunds.Enabled := not dmAxiom.Security.CheqReq.Funds.Disabled;
    chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked;
    chkBill.Checked := dmAxiom.Security.CheqReq.Bill.Checked;
    // chkPrint.Checked := dmAxiom.Security.CheqReq.Print;
    chkPrint.Checked := False;
    cmbOld.Visible := dmAxiom.Security.Bill.Post;

    dmAxiom.qryEmplyeeList.Open;

    dtpReqDate.EditValue := Trunc(now());
    neTax.EditValue := 0.00;
    FBankType := '';

    StringPopulate(cbTaxType.Properties.Items, 'TAXTYPE', 'CODE');

    qrySundryType.ParamByName('ENTITY').AsString := dmAxiom.Entity;
    qrySundryType.Open;
    qryPaymentType.Open;

    DefaultTax := get_default_gst('ChequeRequisition');

    if DefaultTax = ''
    then
      DefaultTax := 'NOTAX';

    cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(DefaultTax);

    cOriginalAmount := 0;
    cOriginalTax := 0;
    fcCurrentAmount := 0.00;

    if dmAxiom.Security.CheqReq.Funds.Checked
    then
      chkFunds.Checked := SettingLoadBoolean(dmAxiom.UserID, 'CHEQUEREQ', 'ANTCRED');
    chkHeld.Checked := SettingLoadBoolean(dmAxiom.UserID, 'CHEQUEREQ', 'HELD');

    //
    // Setup the bank and default to the client bank.
    //
    dmAxiom.qryDefaultBankList.Close;
    dmAxiom.qryDefaultBankList.ParamByName('ENTITY').AsString := dmAxiom.Entity;
    dmAxiom.qryDefaultBankList.Open;

    cmbBank.EditValue := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_CLIENT_BANK');
    cmbBank.Properties.OnChange(Self); // OnChange(Self);
  end;

procedure TfrmCheqReqNew.cbTaxTypeClick(Sender : TObject);
  begin
    CalcTax;
  end;

procedure TfrmCheqReqNew.CalcTax;
  var
    dAmount : Double;
  begin
    dAmount := fcCurrentAmount;
    if (ChequeReqMode = DisbPayment) Or (ChequeReqMode = ExpensePayment)
    then
      neTax.EditValue := TaxCalc(dAmount, '', cbTaxType.Text, dtpReqDate.Date)
    else
      // Amount will be gross for client bank cheques.
      neTax.EditValue := 0.0;

    {
      Code Modified 15.11.2002 GG

      This code does not update the fcCurrent amount value for GSTIN cheqreqs.

      if (IsWitholdingTax) then
      neAmount.AsCurrency := fcCurrentAmount
      else
      neAmount.AsCurrency := dAmount;
    }

    if not (IsWitholdingTax)
    then
      fcCurrentAmount := dAmount;

    neAmount.EditValue := fcCurrentAmount
  end;

procedure TfrmCheqReqNew.neAmountExit(Sender : TObject);
  begin
    if neAmount.Text = ''
    then
      fcCurrentAmount := 0
    else
      fcCurrentAmount := neAmount.EditValue;
    ShowTotal;
    CalcTax;
  end;

procedure TfrmCheqReqNew.cbExpenseTypeChange(Sender : TObject);
  var
    lTaxCode : string;
  begin
    // lblExpenseTypeDescr.Caption := TableString('SUNDRYTYPE', 'CODE', cbExpenseType.Text, 'DESCR');
    if not VarIsNull(cmbExpenseType.EditValue) then
    begin
      if (cmbExpenseType.Text <> '')
      then
      begin
        lTaxCode := TableString('SUNDRYTYPE', 'CODE', string(cmbExpenseType.EditValue), 'TAXCODE');
        if (lTaxCode <> '')
        then
        begin
          cbTaxType.EditValue := lTaxCode;
          CalcTax;
        end;
      end;
    end;
  end;

procedure TfrmCheqReqNew.ShowTotal;
  var
    lcTotalAmount : Currency;
  begin
    if (IsWitholdingTax)
    then
    begin
      if neTax.EditValue = Null
      then
        lcTotalAmount := fcCurrentAmount - 0
      else
        lcTotalAmount := fcCurrentAmount - neTax.EditValue;
    end
    else
    begin
      if neTax.EditValue = Null
      then
        lcTotalAmount := fcCurrentAmount + 0
      else
        lcTotalAmount := fcCurrentAmount + neTax.EditValue;
    end;



    lblTotal.Caption := 'Total = ' + Format('%10.2f', [lcTotalAmount]);
  end;

procedure TfrmCheqReqNew.neAmountChange(Sender : TObject);
  begin
    ShowTotal;
  end;

procedure TfrmCheqReqNew.cbTaxTypeChange(Sender : TObject);
  begin
    ShowTotal;
  end;

procedure TfrmCheqReqNew.neTaxChange(Sender : TObject);
  begin
    ShowTotal;
  end;

procedure TfrmCheqReqNew.btnBillClick(Sender : TObject);
  begin
    lblNmemo.Caption := '';
    if not FormExists(frmInvoiceSearch)
    then
      Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

    if tbMajor.Text <> ''
    then
    begin
      frmInvoiceSearch.BillsForMatter := True;
      frmInvoiceSearch.tbMatterSearch.Text := tbMajor.Text;
    end;
    if frmInvoiceSearch.ShowModal = mrOk
    then
    begin
      lblNmemo.Caption := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsString;
      DisplayBill(frmInvoiceSearch.qryInvoices);
    end;
  end;

function TfrmCheqReqNew.IsWitholdingTax : Boolean;
  begin
    result := cbTaxType.Text = 'WHOLD';

  end;

procedure TfrmCheqReqNew.tbPayeePropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : Integer);
  begin
    if not FormExists(frmPhoneBookSearch)
    then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

    if frmPhoneBookSearch.ShowModal = mrOk
    then
      tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
    FNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
    if Self.Visible
    then
      if dfSlipNo.Visible
      then
        dfSlipNo.SetFocus;
  end;

procedure TfrmCheqReqNew.teChequeNoPropertiesValidate(
  Sender           : TObject;
  var DisplayValue : Variant;
  var ErrorText    : TCaption;
  var Error        : Boolean);
  var
    ADefPrinter : string;
  begin
    if VarIsNull(DisplayValue) = False
    then
    begin
        if dmAxiom.qryDefaultBankList.FieldByName('TRUST').AsString = 'G'
      then
      begin
        if (dmAxiom.UserChequePrinter = '')
        then
        begin
          MsgInfo('Office Cheque Printer not set up. Please ask your System Administrator to set up a default Office Cheque printer in the Employee screen');
          Error := False;
          teChequeNo.Clear;
          DisplayValue := '';
          exit;
        end;
      end
      else if dmAxiom.qryDefaultBankList.FieldByName('TRUST').AsString = 'T'
      then
      begin
        if (dmAxiom.UserTrustChequePrinter = '')
        then
        begin
          MsgInfo('Client Funds Cheque Printer not set up. Please ask your System Administrator to set up a default Client Funds Cheque printer in the Employee screen');
          Error := False;
          teChequeNo.Clear;
          DisplayValue := '';
          exit;
        end;
      end;
      with qryChequeRange do
      begin
        if (dmAxiom.qryDefaultBankList.FieldByName('TRUST').AsString = 'G')
        then
          ADefPrinter := dmAxiom.UserChequePrinter
        else
          ADefPrinter := dmAxiom.UserTrustChequePrinter;
        ParamByName('NUM_LAST').AsString := DisplayValue;
        ParamByName('P_Printer').AsString := dmAxiom.UserChequePrinter;
        Prepare;
        Open;
        if EOF
        then
        begin
          MsgErr('This Cheque Number is outside the range set for the printer.  Either enter a new number or adjust the range for the printer.');
          Error := False;
          teChequeNo.Clear;
          DisplayValue := '';
          exit;
        end;
      end;

    end;
  end;

procedure TfrmCheqReqNew.tbFilePropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : Integer);
  begin

    if (FBankType = 'T') Or ((FBankType = 'G') And (rgChequeType.ItemIndex = 0))
    then
    begin
      if not FormExists(frmMatterSearch)
      then
        Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOk
      then
      begin
        tbLedger.Text := '';
        if IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)
        then
        begin
          MsgErr('A new cheque requisition cannot be created for this matter. ' + 'This matter is Archived.');
          tbMajor.Text := '';
        end
        else
          DisplayFile(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
        cbAuthorise.Enabled := CanAuthoriseBills(dmAxiom.UserID, dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger, MatterString(dmAxiom.qryMSearch.FieldByName('FILEID').AsString, 'DEPT'));
      end;
    end;

    if FBankType = 'G'
    then
    begin
      case rgChequeType.ItemIndex of
        1 :
          Begin
            if not FormExists(frmCreditorSearch)
            then
              Application.CreateForm(TfrmCreditorSearch, frmCreditorSearch);
            try
              frmCreditorSearch.sMatterCode := FPassedFileID;
              if (frmCreditorSearch.ShowModal = mrOk)
              then
              begin
                DisplaySupplier(frmCreditorSearch.qryCreditors.FieldByName('CODE').AsString, frmCreditorSearch.qryCreditors.FieldByName('NAME').AsString);
              end;
            finally
              frmCreditorSearch.sMatterCode := '';
            end;

          End;
        2 :
          Begin
            SettingSave('Ledger Search', 'Bank', cmbBank.Text);
            if not FormExists(frmLedgerSearch)
            then
              Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
            if frmLedgerSearch.ShowModal = mrOk
            then
            begin
              tbMajor.Text := '';
              DisplayLedger(LedgerComponentString(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString, 'code'));
            end;

          End;
      end;
    end;
  end;

procedure TfrmCheqReqNew.tbLedgerPropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : Integer);
  begin
    SettingSave('Ledger Search', 'Bank', cmbBank.Text);
    if not FormExists(frmLedgerSearch)
    then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
    if frmLedgerSearch.ShowModal = mrOk
    then
    begin
      tbMajor.Text := '';
      DisplayLedger(LedgerComponentString(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString, 'code'));
    end;
  end;

procedure TfrmCheqReqNew.tbLedgerPropertiesChange(Sender : TObject);
  begin
    if (tbLedger.Text = '')
    then
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

procedure TfrmCheqReqNew.dtpReqDatePropertiesCloseUp(Sender : TObject);
  begin
    if dtpReqDate.Properties.MinDate > 0
    then
      if dtpReqDate.Date < dtpReqDate.Properties.MinDate
      then
        dtpReqDate.Date := dtpReqDate.Properties.MinDate;

    //
    // REedisplay the status bar info on change of date, if appropriate.
    //
    if (FBankType = 'T') And (tbMajor.Text <> '')
    then
      DisplayTrust(StrToInt(MatterString(tbMajor.Text, 'NMATTER')));

  end;

procedure TfrmCheqReqNew.tbFilePropertiesValidate(
  Sender           : TObject;
  var DisplayValue : Variant;
  var ErrorText    : TCaption;
  var Error        : Boolean);
  begin
    tbLedger.Text := '';
    if IsMatterArchived(DisplayValue)
    then
    begin
      MsgErr('A new cheque requisition cannot be created for this matter. ' + 'This matter is Archived.');
      DisplayValue := '';
    end
    else
      DisplayFile(DisplayValue);
  end;

procedure TfrmCheqReqNew.FormDestroy(Sender : TObject);
  begin
    SettingSave('CHEQUEREQ', 'ANTCRED', chkFunds.Checked);
    SettingSave('CHEQUEREQ', 'HELD', chkHeld.Checked);
  end;

procedure TfrmCheqReqNew.chkDepositClick(Sender : TObject);
  begin
    if chkDeposit.Checked
    then
    begin
      cxCBAccountType.Visible := True;
      lblMinorSelection.Visible := False;
      cmbOld.Visible := False;
      tbMinor.Visible := False
    end
    else
    begin
      cxCBAccountType.Visible := False;
      lblMinorSelection.Visible := True;
      if tbMajor.Text <> ''
      then
        tbMinor.Visible := True
      else
        cmbOld.Visible := True;
    end;
  end;

procedure TfrmCheqReqNew.cxCBAccountTypePropertiesInitPopup(Sender : TObject);
  begin
    if tbMajor.Text <> ''
    then
    begin
      qryDepositAccount.Close;
      qryDepositAccount.ParamByName('nmatter').AsString := MatterString(tbMajor.Text, 'NMATTER');
      qryDepositAccount.Open;
    end;
  end;

procedure TfrmCheqReqNew.cmbBillsPropertiesInitPopup(Sender : TObject);
  begin
    if tbMajor.Text <> ''
    then
    begin
      qryMatterBills.Close;
      qryMatterBills.ParamByName('NMATTER').AsString := MatterString(tbMajor.Text, 'NMATTER');
      qryMatterBills.Open;
    end;
  end;

procedure TfrmCheqReqNew.cmbExpenseTypeExit(Sender: TObject);
begin

  if not varisnull(cmbExpenseType.EditValue) then
  begin
    if cmbExpenseType.EditValue <> ''
    then
    begin
      //
      // Disbursement payment requisition.
      //
      dmAxiom.qryTmp.Close;
      dmAxiom.qryTmp.SQL.Text := 'Select * From SUNDRYTYPE Where CODE = ''' + cmbExpenseType.EditValue + '''';
      dmAxiom.qryTmp.Open;
      if not dmAxiom.qryTmp.IsEmpty then
      begin
        cbTaxType.Text := dmAxiom.qryTmp.FieldByName('TAXCODE').AsString;
      end;
      dmAxiom.qryTmp.Close;

    end;
  end;

end;

procedure TfrmCheqReqNew.cmbBillsPropertiesCloseUp(Sender : TObject);
  var
    ANMemo : Integer;
  begin
    if tbMinor.Text <> ''
    then
    begin
      DisplayBill(tbMinor.Text);
      lblNmemo.Caption := TableString('NMEMO', 'REFNO', tbMinor.Text, 'NMEMO');
      cmbOld.Text := tbMinor.Text;
      CheckUnpaidCreditors(tbMinor.Text);

      ANMemo := TcxLookupComboBox(Sender).Properties.DataController.Values[TcxLookupComboBox(Sender).ItemIndex, 5];
      lblNmemo.Caption := inttostr(ANMemo);
    end
    else
      ANMemo := 0;
  end;

procedure TfrmCheqReqNew.DisplayTrust(AMatter : Integer);
  begin
    with qryGetTrust do
    begin
      Close;
      ParamByName('P_File').AsInteger := AMatter;
      ParamByName('P_DateTo').AsDate := dtpReqDate.Date;
      Open;
      if not EOF
      then
      begin
        StatusBar.Panels[0].Text := 'Cleared Client Funds: ' + CurrToStrF(FieldByName('cl_trust_bal').AsFloat, ffCurrency, 2);
        StatusBar.Panels[1].Text := 'Total Client funds: ' + CurrToStrF(FieldByName('trust_bal').AsFloat, ffCurrency, 2);
        StatusBar.Panels[2].Text := 'Expected receipts: ' + CurrToStrF(FieldByName('req_amount').AsFloat, ffCurrency, 2);
      end;
    end;
  end;

procedure TfrmCheqReqNew.cmbInvoicePropertiesInitPopup(Sender : TObject);
  begin
    if (tbMajor.Text <> '') and (tbMinor.Text <> '')
    then
    begin
      try
        qryBillInv.Close;
        qryBillInv.ParamByName('NMATTER').AsString := MatterString(tbMajor.Text, 'NMATTER');
        qryBillInv.ParamByName('NMEMO').AsString := TableString('NMEMO', 'REFNO', string(tbMinor.EditValue), 'NMEMO');
        qryBillInv.Open;
      except
        //
      end;
    end;

  end;

procedure TfrmCheqReqNew.cmbInvoicePropertiesCloseUp(Sender : TObject);
  var
    cTrust : Currency;
    cCreditor : Currency;
  begin
    try
      cTrust := ClearTrust(tbMajor.Text);
      cCreditor := TableCurrency('INVOICE', 'NINVOICE', Integer(cmbInvoice.EditValue), 'AMOUNT');
      fcCurrentAmount := cCreditor;

      neAmount.EditValue := cCreditor;
      tbPayee.Text := TableString('INVOICE', 'NINVOICE', Integer(cmbInvoice.EditValue), 'CREDITOR');
      // frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      FNName := TableInteger('CREDITOR', 'NCREDITOR', TableInteger('INVOICE', 'NINVOICE', Integer(cmbInvoice.EditValue), 'NCREDITOR'), 'NNAME');
      // frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
      tbDesc.Text := TableString('INVOICE', 'NINVOICE', Integer(cmbInvoice.EditValue), 'DESCR');
    except
      //
    end;
  end;

procedure TfrmCheqReqNew.cmbBankPropertiesCloseUp(Sender : TObject);
  var
    lsDefaultTax : String;
  begin
    if cmbBank.Text <> ''
    then
    begin
      FBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue), 'TRUST');
      Self.Color := BankColour(cmbBank.EditValue);
      dfSlipNo.Visible := FBankType <> 'T';
      Label10.Visible := FBankType <> 'T';

      cxCBAccountType.Visible := False;
      cmbOld.Visible := True;

      chkInvoiceSupplied.Style.Color := Self.Color;
      chkPrint.Style.Color := Self.Color;
      chkNoExit.Style.Color := Self.Color;
      chkUrgent.Style.Color := Self.Color;
      chkDeposit.Visible := False;

      cmbInvoice.Visible := False;
      tbLedger.Visible := True;

      StatusBar.Panels[0].Text := '';
      StatusBar.Panels[1].Text := '';
      if FBankType = 'T'
      then
      begin
        tbLedger.Text := '';
        tbLedger.Enabled := False;
        // btnLedger.Enabled := False;
        tbMajor.Enabled := True;
        // btnMatter.Enabled := True;
        cmbOld.Visible := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;
        chkHeld.State := cbsUnChecked;
        chkHeld.Enabled := False;
        chkBill.State := cbsUnChecked;
        chkBill.Enabled := False;
        chkDeposit.Visible := (SystemString('DEPOSIT_CHEQ_REQ') = 'Y');

        if (SystemString('INVOICE_FROM_TRUST') = 'Y')
        then
        begin
          cmbInvoice.Visible := True;

          tbLedger.Visible := False;
        end;

        chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible
        then
          chkDeposit.StyleDisabled.Color := Self.Color;
        {
          Instead of hard coding the default tax, we will request it from the
          TaxDefault table.

          BJ 07/01/2003
        }

        lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

        if lsDefaultTax = ''
        then
          lsDefaultTax := 'NOTAX';
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);
        if tbMajor.Text <> ''
        then
          DisplayTrust(StrToInt(MatterString(tbMajor.Text, 'NMATTER')));
      end
      else if FBankType = 'C'
      then
      begin
        tbMajor.Text := '';
        tbLedger.Enabled := True;
        // btnLedger.Enabled := True;
        tbMajor.Enabled := False;
        // btnMatter.Enabled := False;
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
        if chkDeposit.Visible
        then
          chkDeposit.StyleDisabled.Color := Self.Color;
      end
      else
      begin
        tbLedger.Enabled := True;
        // btnLedger.Enabled := True;
        tbMajor.Enabled := True;
        // btnMatter.Enabled := True;
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

procedure TfrmCheqReqNew.cmbBankPropertiesChange(Sender : TObject);
var
    lsDefaultTax : String;
begin
   if (cmbBank.Text <> '') then
   begin
      FBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue), 'TRUST');

      TFormStyleHookBackground.BackGroundSettings.Enabled := True;
      TFormStyleHookBackground.BackGroundSettings.UseColor := True;
      TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cmbBank.EditValue);
      // TStyleHook.BackGroundSettings.Color := BankColour(cbBank.Text);
      Self.Invalidate;
      Self.Perform(WM_PAINT, 0, 0);

      //
      // Start of new code.
      //
      if FBankType = 'T'
      then
      begin
         rgChequeType.Properties.Items[0].Caption := 'Client payment';
         rgChequeType.Properties.Items[1].Caption := 'Bill transfer';
         rgChequeType.Properties.Items[2].Caption := 'Disbursement transfer';
      end
      else
      begin
         rgChequeType.Properties.Items[0].Caption := 'Disbursement';
         rgChequeType.Properties.Items[1].Caption := 'Supplier';
         rgChequeType.Properties.Items[2].Caption := 'Expense';
      end;
      rgChequeType.ItemIndex := 0;
      rgChequeTypePropertiesChange(Self);

      // Self.Color := BankColour(cmbBank.EditValue);
      lblTaxType.Visible := FBankType <> 'T';
      cbTaxType.Visible := FBankType <> 'T';
      neTax.Visible := FBankType <> 'T';
      dfSlipNo.Visible := FBankType <> 'T';
      Label10.Visible := FBankType <> 'T';

      cxCBAccountType.Visible := False;
      cmbOld.Visible := True;

      chkInvoiceSupplied.Style.Color := Self.Color;
      chkPrint.Style.Color := Self.Color;
      chkNoExit.Style.Color := Self.Color;
      chkUrgent.Style.Color := Self.Color;
      chkDeposit.Visible := False;

      cmbInvoice.Visible := False;
      tbLedger.Visible := True;

      StatusBar.Panels[0].Text := '';
      StatusBar.Panels[1].Text := '';
      if FBankType = 'T' then
      begin
         tbLedger.Text := '';
         tbLedger.Enabled := False;
         // btnLedger.Enabled := False;
         tbMajor.Enabled := True;
         // btnMatter.Enabled := True;
         cmbOld.Visible := False;
         chkFunds.Checked := False;
         chkFunds.Enabled := False;
         // changed by AES 26/06/2009
         // no reason to not allow cheqreq to be held
         chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked; // State := cbsUnchecked;
         chkHeld.Enabled := True; // False;

         chkBill.State := cbsUnChecked;
         chkBill.Enabled := False;
         chkDeposit.Visible := (SystemString('DEPOSIT_CHEQ_REQ') = 'Y');

         if (SystemString('INVOICE_FROM_TRUST') = 'Y') then
         begin
            cmbInvoice.Visible := True;

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
         if tbMajor.Text <> '' then
            DisplayTrust(StrToInt(MatterString(tbMajor.Text, 'NMATTER')));
      end
      else if FBankType = 'C' then
      begin
         tbMajor.Text := '';
         tbLedger.Enabled := True;
         // btnLedger.Enabled := True;
         tbMajor.Enabled := False;
         // btnMatter.Enabled := False;
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
         // btnLedger.Enabled := True;
         tbMajor.Enabled := True;
         // btnMatter.Enabled := True;
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
      if tbMinor.Visible = True then
         tbMinor.Enabled := (FBankType = 'T');
      if cmbOld.Visible = True then
         cmbOld.Enabled := (FBankType = 'T');
   end;
end;

procedure TfrmCheqReqNew.cmbBankPropertiesEditValueChanged(Sender : TObject);
  var
    lsDefaultTax : String;
  begin
    if cmbBank.Text <> ''
    then
    begin
      FBankType := TableString('BANK', 'ACCT', string(cmbBank.EditValue), 'TRUST');
      Self.Color := BankColour(cmbBank.EditValue);
      lblTaxType.Visible := FBankType <> 'T';
      cbTaxType.Visible := FBankType <> 'T';
      neTax.Visible := FBankType <> 'T';
      dfSlipNo.Visible := FBankType <> 'T';
      Label10.Visible := FBankType <> 'T';

      cxCBAccountType.Visible := False;
      cmbOld.Visible := True;

      chkInvoiceSupplied.Style.Color := Self.Color;
      chkPrint.Style.Color := Self.Color;
      chkNoExit.Style.Color := Self.Color;
      chkUrgent.Style.Color := Self.Color;
      chkDeposit.Visible := False;

      cmbInvoice.Visible := False;
      tbLedger.Visible := True;

      StatusBar.Panels[0].Text := '';
      StatusBar.Panels[1].Text := '';
      if FBankType = 'T'
      then
      begin
        tbLedger.Text := '';
        tbLedger.Enabled := False;
        // btnLedger.Enabled := False;
        tbMajor.Enabled := True;
        // btnMatter.Enabled := True;
        cmbOld.Visible := False;
        chkFunds.Checked := False;
        chkFunds.Enabled := False;

        // changed by AES 26/06/2009
        // no reason to not allow cheqreq to be held
        chkHeld.Checked := dmAxiom.Security.CheqReq.Held.Checked; // State := cbsUnchecked;
        chkHeld.Enabled := True; // False;

        chkBill.State := cbsUnChecked;
        chkBill.Enabled := False;
        chkDeposit.Visible := (SystemString('DEPOSIT_CHEQ_REQ') = 'Y');

        if (SystemString('INVOICE_FROM_TRUST') = 'Y')
        then
        begin
          cmbInvoice.Visible := True;

          tbLedger.Visible := False;
        end;

        chkFunds.StyleDisabled.Color := Self.Color;
        chkHeld.StyleDisabled.Color := Self.Color;
        chkBill.StyleDisabled.Color := Self.Color;
        if chkDeposit.Visible
        then
          chkDeposit.StyleDisabled.Color := Self.Color;
        {
          Instead of hard coding the default tax, we will request it from the
          TaxDefault table.

          BJ 07/01/2003
        }

        lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

        if lsDefaultTax = ''
        then
          lsDefaultTax := 'NOTAX';
        cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);
        if tbMajor.Text <> ''
        then
          DisplayTrust(StrToInt(MatterString(tbMajor.Text, 'NMATTER')));
      end
      else if FBankType = 'C'
      then
      begin
        tbMajor.Text := '';
        tbLedger.Enabled := True;
        // btnLedger.Enabled := True;
        tbMajor.Enabled := False;
        // btnMatter.Enabled := False;
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
        if chkDeposit.Visible
        then
          chkDeposit.StyleDisabled.Color := Self.Color;
      end
      else
      begin
        tbLedger.Enabled := True;
        // btnLedger.Enabled := True;
        tbMajor.Enabled := True;
        // btnMatter.Enabled := True;
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

procedure TfrmCheqReqNew.cmbBillsPropertiesEditValueChanged(Sender : TObject);
  begin
    if tbMinor.Text = ''
    then
    begin
      cmbOld.Text := '';
      lblNmemo.Caption := '';
    end;
  end;

procedure TfrmCheqReqNew.ClearForm();
  begin
    tbMajor.Text := '';
    tbMinor.Text := '';
    cmbExpenseType.Text := '';
    lblMajorDescription.Caption := '';
    lblMinorDescription.Caption := '';

    cbType.Text := '';
    tbPayee.Text := '';
    tbDesc.Text := '';
    tbSortCode.Text := '';
    tbAccountNo.Text := '';
    tbBankReference.Text := '';
    chkForeignBank.Checked := False;
    SetDefaultTax();
    neAmount.Text := '';
    neTax.Text := '';
    teChequeNo.Text := '';
    mmoNotes.Text := '';
    lblTotal.Caption := '';

  end;

procedure TfrmCheqReqNew.SetDefaultTax();
  var
    lsDefaultTax : String;
  begin
    lsDefaultTax := get_default_gst('ChequeRequisitionTrust');

    if lsDefaultTax = ''
    then
      lsDefaultTax := 'NOTAX';
    cbTaxType.ItemIndex := cbTaxType.Properties.Items.IndexOf(lsDefaultTax);

  end;

procedure TfrmCheqReqNew.SetAuthorised(NCHEQREQ : Integer);
  begin
    if dmAxiom.uniInsight.InTransaction
    then
      dmAxiom.uniInsight.Commit;
    try
      dmAxiom.uniInsight.StartTransaction;
      with dmAxiom.qryTmp do
      begin
        Close;
        SQL.Clear;
        // RDW - Amended to update Authorised By and Date
        SQL.Add('update cheqreq ' + 'Set AUTHORISED = ''Y'', AUTHORISED_BY = :UserID, AUTHORISED_DATE = SYSDATE Where NCHEQREQ = ' + NCHEQREQ.ToString +
          ' And RequiresAuthorisation(''' + FReqType + ''', 1) = ''N''');
        ParamByName('UserID').AsString := dmAxiom.UserID;
        ExecSQL;
        Close;
      end;
    finally
      dmAxiom.uniInsight.Commit;
    end;
  end;

initialization

TStyleManager.Engine.RegisterStyleHook(TfrmCheqReqNew, TFormStyleHookBackground);

finalization

TStyleManager.Engine.UnRegisterStyleHook(TfrmCheqReqNew, TFormStyleHookBackground);

end.
