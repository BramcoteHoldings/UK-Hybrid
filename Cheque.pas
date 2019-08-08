unit Cheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  citfunc,ExtCtrls, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS, DateTimeAccount,
  mATH, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxRadioGroup, cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxDropDownEdit, cxButtonEdit,
  cxTextEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  cxCalendar, cxMaskEdit, cxDBLookupComboBox, cxCheckBox, cxDBEdit, cxLabel,
  cxMemo, cxImageComboBox, DateUtils, EnforceCustomDateEdit, cxLookAndFeels,
  dxCore, vcl.Themes, cxNavigator, cxDateUtils, System.Win.ComObj,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  System.Actions, Vcl.ActnList, dxDateRanges, cxLookupEdit, cxDBLookupEdit;

const
  colTYPE = 0;
  colREFNO = 1;
  colLONGDESC = 2;
  colREASON = 3;
  colTAXCODE = 4;
  colAMOUNT = 5;
  colTAX = 6;
  colSUNDRYTYPE = 7;

  pnlDEBTORS = 0;
  pnlTRUST = 1;
  pnlFEES = 2;
  pnlDISB = 3;
  pnlANTD = 4;
  pnlSUND = 5;

{
  Modified 3.10.2002 GG
  
  Moved to miscfunc
}
//  C_OVERDRAWPASSWORD = 'albion';

type
  ETrustOverdraw = class(Exception);
  EInvalidMatter = class(Exception);

  TfrmCheque = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    tbChqno: TEdit;
    tbDesc: TEdit;
    lblBankName: TLabel;
    lblAuthByName: TLabel;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    qryCheque: TUniQuery;
    qryMatters: TUniQuery;
    qryBank: TUniQuery;
    qryAllocs: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    qryCheckCheque: TUniQuery;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    lblBankTransferMsg: TLabel;
    lblBankTransferName: TLabel;
    cbBankTransfer: TComboBox;
    qryInvoice: TUniQuery;
    qryBankBalance: TUniQuery;
    qryTmp: TUniQuery;
    Label11: TLabel;
    neAmount: TNumberEdit;
    lblUnallocatedMsg: TLabel;
    lblUnallocated: TLabel;
    sbarBalances: TStatusBar;
    popGridLine1: TMenuItem;
    popGridOpenMatter: TMenuItem;
    lblTax: TLabel;
    lblBalance: TLabel;
    qryAllocNInvoice: TUniQuery;
    popGridDistributeAllocations: TMenuItem;
    cmbPrinter: TComboBox;
    Label3: TLabel;
    qryPrinter: TUniQuery;
    lblName: TLabel;
    edtImport: TEdit;
    qryChequeNallocs: TUniQuery;
    btnQuery: TSpeedButton;
    qryCheqReqBal: TUniQuery;
    qryGetTaxCode: TUniQuery;
    qryTransItem: TUniQuery;
    qryInvoiceCRAmount: TUniQuery;
    btnImport: TcxButton;
    rgType: TcxRadioGroup;
    qryBulkCheqReqBal: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerTYPE: TcxGridDBColumn;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerLONGDESC: TcxGridDBColumn;
    tvLedgerREASON: TcxGridDBColumn;
    tvLedgerTAXCODE: TcxGridDBColumn;
    tvLedgerAMOUNT: TcxGridDBColumn;
    tvLedgerTAX: TcxGridDBColumn;
    tvLedgerSUNDRYTYPE: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    qryTaxRate: TUniQuery;
    dsTaxRate: TUniDataSource;
    qrySundryType: TUniQuery;
    dsSundryType: TUniDataSource;
    chkPrint: TcxCheckBox;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    qryLedgerTYPE: TStringField;
    qryLedgerREFNO: TStringField;
    qryLedgerLONGDESC: TStringField;
    qryLedgerREASON: TStringField;
    qryLedgerAMOUNT: TFloatField;
    qryLedgerBILLED: TStringField;
    qryLedgerTAXCODE: TStringField;
    qryLedgerTAX: TFloatField;
    qryLedgerROWID: TStringField;
    qryLedgerWITHHOLD: TStringField;
    qryLedgerSUNDRYTYPE: TStringField;
    qryLedgerACCOUNT_NAME: TStringField;
    qryLedgerACCOUNT: TStringField;
    qryLedgerBSB: TStringField;
    grpDirectDebit: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    qryInvestmentTrans: TUniQuery;
    qryLedgerDEP_ACCOUNT_TYPE: TStringField;
    tvLedgerANTICIPATED: TcxGridDBColumn;
    qryLedgerANTICIPATED: TStringField;
    tvLedgerORIGINAL_TX: TcxGridDBColumn;
    qryLedgerORIGINAL_TX: TStringField;
    tbPayee: TcxButtonEdit;
    dfBSB: TcxTextEdit;
    dfAccount: TcxTextEdit;
    dfAccountName: TcxTextEdit;
    qryNMEMOUpdate: TUniQuery;
    qryJournalInsert: TUniQuery;
    qryBill: TUniQuery;
    dtpDate: TEnforceCustomDateEdit;
    qryLedgerCHART: TStringField;
    qryLedgerUNIQUEID: TLargeintField;
    qryLedgerNCREDITOR: TLargeintField;
    qryLedgerNDEPOSITACCOUNT: TLargeintField;
    qryLedgerBAS_TAX: TFloatField;
    lblAddress: TLabel;
    tvLedgerFILEID: TcxGridDBColumn;
    qryLedgerFILEID: TStringField;
    QryChequeTmpl: TUniQuery;
    ActSave: TAction;
    ActDelete: TAction;
    ActTemplate: TAction;
    QryTransTmpl: TUniQuery;
    QryLastChequeTmplID: TUniQuery;
    QryDeleteLastTransItem: TUniQuery;
    dsLedgerTemplate: TUniDataSource;
    cbBankImport: TComboBox;
    gbChequeTemplate: TcxGroupBox;
    btnChooseTemplate: TcxButton;
    BtnSave: TcxButton;
    BtnDelete: TcxButton;
    chkNoExit: TcxCheckBox;
    ActionList1: TActionList;
    chkReplacementCheque: TcxCheckBox;
    qryInvoiceUpdate: TUniQuery;
    qryLedgerNINVOICE: TLargeintField;
    qryLedgerLGRALLOC_ID: TFloatField;
    cbBank: TcxLookupComboBox;
    cbAuthBy: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure cbAuthByClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrLedgerColExit(Sender: TObject);
    procedure btnPhoneBookClick(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure rgTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbBankTransferClick(Sender: TObject);
    procedure tbPayeeKeyPress(Sender: TObject; var Key: Char);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure tbPayeeExit(Sender: TObject);
    procedure neAmountExit(Sender: TObject);
    procedure tbChqnoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
    procedure qryLedgerBeforeScroll(DataSet: TDataSet);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure dbgrLedgerColEnter(Sender: TObject);
    procedure cbBankChange(Sender: TObject);
    procedure cbAuthByDropDown(Sender: TObject);
    procedure qryLedgerAfterScroll(DataSet: TDataSet);
    procedure popGridPopup(Sender: TObject);
    procedure popGridOpenMatterClick(Sender: TObject);
    procedure cbAuthByExit(Sender: TObject);
    procedure qryLedgerAMOUNTChange(Sender: TField);
    procedure qryLedgerTAXCODEChange(Sender: TField);
    procedure qryLedgerTYPEChange(Sender: TField);
    procedure qryLedgerREASONChange(Sender: TField);
    procedure cbAuthByChange(Sender: TObject);
    procedure popGridDistributeAllocationsClick(Sender: TObject);
    procedure chkPrintClick(Sender: TObject);
    procedure cmbPrinterChange(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryLedgerBeforeInsert(DataSet: TDataSet);
    procedure tvLedgerREFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1Enter(Sender: TObject);
    procedure tvLedgerREFNOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1Exit(Sender: TObject);
    procedure tvLedgerREASONPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerREASONPropertiesEditValueChanged(Sender: TObject);
    procedure chkNoExitClick(Sender: TObject);
    procedure tvLedgerEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure tvLedgerAMOUNTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure qryAllocsAfterInsert(DataSet: TDataSet);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dtpDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnChooseTemplateClick(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActTemplateUpdate(Sender: TObject);
    procedure dsLedgerTemplateStateChange(Sender: TObject);
    procedure ActDeleteUpdate(Sender: TObject);
    procedure chkNoExitContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tvLedgerTYPEPropertiesCloseUp(Sender: TObject);
    procedure chkReplacementChequeClick(Sender: TObject);
    procedure cbBankPropertiesChange(Sender: TObject);
    procedure cbAuthByPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FCurrentTemplateDescr: String;
    FGridUpdatingByTemplate: Boolean;
    fLedgerTaxCode: string;
    DefaultDescr: string;
    Balance, Tax, TotalAmt, WithholdTax: currency;
    Created: boolean;
    AllocType, DefaultTax, DefaultInvoice: string; //
    LastBank: string;
    sNName, sPayee: string;
    FChequePrinter: string;
    FromCheque : Boolean;
    FClearedTrust : Currency;
    FNCheque: integer;
    FNMemo: integer;
    FBilled: string;
    FNAlloc: integer;
    FAmount: Double;
    FTax: Double;
    function NextChqno: string;
    function OKtoPost(bShowError: Boolean): Boolean;
    function GetDefaultTax(sType : String; sDefaultTax : String) : String;
    function IsBankOverDrawn : Boolean;
    function IsValidMatterForAccount : Boolean;
    function IsValidInvoice(cOwing : Currency; sInvoiceType : String) : Boolean;
    //

    procedure UpdateTotal;
    procedure CreateCheque;
    procedure SetBankTransfer(bVisible: boolean);
    procedure StatusDisplay;
    procedure CalcTax;
    procedure ConvertTagCheqReq(iNCheque : integer);
    procedure SaveColumnSettings;
    procedure SaveScreenSettings;
    procedure RestoreColumnSettings;
    procedure RestoreScreenSettings;
    procedure DisableScreen(bEnabled: boolean);
    procedure ChequeFromCheqReq(AQuery: TUniQuery);

    procedure SaveScreenControlValues(ADataSet: TUniQuery);
    procedure RestoreScreenControlValues(ADataSet: TUniQuery);
    procedure SaveTemplate;
    procedure ClearTransGrid;
    procedure ClearHeaderControls;
    procedure RestoreHeaderDetails;
    procedure ClearTotal;
    procedure ReplacementCheque;

  public
    { Public declarations }
    property ChequePrinter: string read FChequePrinter write FChequePrinter;
    procedure AutoChequeFromCheqReq(iNCheqReq: integer); overload;
    procedure AutoChequeFromCheqReq(sNCheqReq: string); overload;
    procedure AutoCheque(sBank, sPayee, sDesc, sFile, sLedger, sReqBy, sBilled: string; cAmount: Currency; iNCheqReq: integer);
    procedure AutoChequeAdd(sFile, sLedger, sDesc, sBilled : string; cAmount: Currency; iNCheqReq: integer);
    procedure ChequeFromInvoice(NCheque: integer);
    procedure ChequeFromPayCashbook(NCheque: integer);
    procedure ChequeFromInvoiceInfoTrack(ANCreditor: integer);

  end;

implementation

uses
  CashPay, ChequePrint, CreditorAccountsSearch, LSearch, Matters, MSearch,
  MiscFunc, Process, AxiomData, NSearch, Receipt, Desktop, ChequeUpCredAlloc,
  Variants,glComponentUtil, CheqReqs, AccountPayable, Vcl.Styles,
  Vcl.Styles.FormStyleHooks, TemplateSelect, System.UITypes, GenericSearch,
  ChequeRev;

{$R *.DFM}

{ AES 15.01.2010
  removed references to Debtors from selection lists }


const
   PaymentTypeDirectDebit = 'DD';
   PaymentTypeCheque      = 'CH';


procedure TfrmCheque.FormShow(Sender: TObject);
begin
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
{  dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

  btnQuery.Visible := dmAxiom.runningide;

  if not qryCheque.Modified then
    CreateCheque;
  cmbPrinter.Text := dmAxiom.UserChequePrinter;
  cmbPrinterChange(Self);
  cbBankChange(Self);  }

//        dmaxiom.qryBranchList.Close;
//      dmaxiom.qryBranchList.ParamByName('ENTITY').AsString:=dmaxiom.Entity;
//      dmaxiom.qryBranchList.Open;
//      dmaxiom.qryDepartment.Close;
//      dmaxiom.qryDepartment.Open;
end;

procedure TfrmCheque.CreateCheque;
var
  sBank : string;
begin
   if not Created then
   begin
      if cbBank.Text = '' then
      begin
//      AddBanks(cbBank, 'G,T,C');
//      AddBanks(cbBankImport, 'G');
         sBank := SettingLoadString('CHEQUE', 'BANK');
         if sBank <> '' then
        //cbBank.ItemIndex := cbBank.Items.IndexOf(sBank)
            cbBank.Text := sBank
         else
            //cbBank.ItemIndex := cbBank.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
            cbBank.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
            //cbBank.OnClick(Self);
      end;
//    if cbAuthBy.Items.Count = 0 then
//      cbAuthBy.Text := dmAxiom.Employees;
      cbAuthBy.Text := dmAxiom.UserID;
      if Self.Visible then
         tbPayee.SetFocus;

      Created := True;
   end;
end;

procedure TfrmCheque.cbBankClick(Sender: TObject);
begin
   SaveColumnSettings;
   RestoreColumnSettings;
   LastBank := cbBank.Text;

   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cbBank.Text);
//   TStyleHook.BackGroundSettings.Color := BankColour(cbBank.Text);
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

//   Self.Color := BankColour(cbBank.Text);
   with qryBank do
   begin
     Close;
     ParamByName('P_Entity').AsString := dmAxiom.Entity;
     ParamByName('P_Code').AsString := cbBank.Text;
     Prepare;
     Open;
     lblBankName.Caption := qryBank.FieldByName('NAME').AsString;
   end;
   TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Clear;
   tvLedgerTAX.Visible := True;
   tvLedgerTAXCODE.Visible := True;

//   dbgrLedger.Columns[colTYPE].PickList.Clear;
//   dbgrLedger.Columns[colTAXCODE].Visible := True;
//   dbgrLedger.Columns[colTAX].Visible := True;
   lblBalance.Visible := True;
   lblTax.Visible := True;
   //DefaultTax := dmAxiom.DefaultTax;

   DefaultTax := GetDefaultTax('Cheque', 'NOTAX');
   //AES 06/08/2018
   chkReplacementCheque.Visible := False;
   if qryBank.FieldByName('TRUST').AsString = 'T' then
   begin
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Protected');
     tvLedgerTAX.Visible := False;
     tvLedgerTAXCODE.Visible := False;

{     dbgrLedger.Columns[colTYPE].PickList.Add('Matter');
     dbgrLedger.Columns[colTYPE].PickList.Add('Protected');
     dbgrLedger.Columns[colTYPE].DropDownRows := 2;
     dbgrLedger.Columns[colTAXCODE].Visible := False;
     dbgrLedger.Columns[colTAX].Visible := False; }
     lblBalance.Visible := False;
     lblTax.Visible := False;
     DefaultTax := 'NOTAX';
     SetBankTransfer(True);
     grpDirectDebit.Visible := (GetEnforceBSBDD(cbBank.Text) = 'Y') and (rgType.ItemIndex = 1);
   end
   else if qryBank.FieldByName('TRUST').AsString = 'G' then
   begin
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Ledger');
//     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Debtors');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Invoice');

  {   dbgrLedger.Columns[colTYPE].PickList.Add('Matter');
     dbgrLedger.Columns[colTYPE].PickList.Add('Ledger');
     dbgrLedger.Columns[colTYPE].PickList.Add('Debtors');
     dbgrLedger.Columns[colTYPE].PickList.Add('Invoice');
     dbgrLedger.Columns[colTYPE].DropDownRows := 4;        }
     SetBankTransfer(False);
     chkReplacementCheque.Visible := True;
   end
   else if qryBank.FieldByName('TRUST').AsString = 'C' then
   begin
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Ledger');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Invoice');

 {    dbgrLedger.Columns[colTYPE].PickList.Add('Ledger');
     dbgrLedger.Columns[colTYPE].PickList.Add('Invoice');
     dbgrLedger.Columns[colTYPE].DropDownRows := 2;     }
     SetBankTransfer(False);
   end;

   NextChqno;

   cmbPrinter.Items.Clear;
   tbChqNo.Text := '';
   cmbPrinter.Text := '';
   StringPopulate(cmbPrinter.Items, 'PRINTER', 'CODE', 'TYPE = ''C'' AND BANK_ACCT = ''' + cbBank.Text + '''');
   cmbPrinter.Enabled := True;
   StatusDisplay;
end;


procedure TfrmCheque.cbBankPropertiesChange(Sender: TObject);
begin
   SaveColumnSettings;
   RestoreColumnSettings;
   LastBank := cbBank.Text;

   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cbBank.Text);

   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

   with qryBank do
   begin
     Close;
     ParamByName('P_Entity').AsString := dmAxiom.Entity;
     ParamByName('P_Code').AsString := cbBank.Text;
     Prepare;
     Open;
     lblBankName.Caption := qryBank.FieldByName('NAME').AsString + ' - (' + qryBank.FieldByname('CURRENCY').AsString + ')';
   end;
   TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Clear;
   tvLedgerTAX.Visible := True;
   tvLedgerTAXCODE.Visible := True;

   lblBalance.Visible := True;
   lblTax.Visible := True;

   DefaultTax := GetDefaultTax('Cheque', 'NOTAX');
   //AES 06/08/2018
   chkReplacementCheque.Visible := False;
   if qryBank.FieldByName('TRUST').AsString = 'T' then
   begin
      if not dmAxiom.Security.Receipt.ForbidDisbursements
      then
      Begin
        TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Disburse');
        TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Bill');
      End;
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Protected');
     tvLedgerTAX.Visible := False;
     tvLedgerTAXCODE.Visible := False;

     lblBalance.Visible := False;
     lblTax.Visible := False;
     DefaultTax := 'NOTAX';
     SetBankTransfer(True);
     grpDirectDebit.Visible := (GetEnforceBSBDD(cbBank.Text) = 'Y') and (rgType.ItemIndex = 1);
   end
   else if qryBank.FieldByName('TRUST').AsString = 'G' then
   begin
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Ledger');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Invoice');

     SetBankTransfer(False);
     chkReplacementCheque.Visible := True;
   end
   else if qryBank.FieldByName('TRUST').AsString = 'C' then
   begin
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Ledger');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Invoice');
     SetBankTransfer(False);
   end;

   NextChqno;

   cmbPrinter.Items.Clear;
   tbChqNo.Text := '';
   cmbPrinter.Text := '';
   StringPopulate(cmbPrinter.Items, 'PRINTER', 'CODE', 'TYPE = ''C'' AND BANK_ACCT = ''' + cbBank.Text + '''');
   cmbPrinter.Enabled := True;
   StatusDisplay;

end;

procedure TfrmCheque.cbAuthByClick(Sender: TObject);
begin
  lblAuthByName.Caption := TableString('EMPLOYEE', 'CODE', cbAuthBy.Text, 'NAME');
  btnOK.Enabled := OKtoPost(False);
end;


function TfrmCheque.NextChqno : string;
begin
   if rgType.ItemIndex = 1 then
   begin
      if SystemString('SHOW_DD_CHEQUE_NO') = 'Y' then
      begin
         if (not qryPrinter.EOF) then
            chkPrint.Checked := (TableString('BANK','ACCT',cbBank.Text, 'default_print') = 'Y');
         tbChqno.Color := clWindow;
         if cmbPrinter.Text <> '' then
            tbChqno.Text := NextRefno(qryPrinter.FieldByName('NUM_LAST').AsString);
      end
      else
      begin
         tbChqNo.Color := clInactiveCaption;
         tbChqNo.Text := 'Bank Payment';
         chkPrint.Checked := False;
      end;
  end
  else
  begin
    if not qryPrinter.EOF then
      chkPrint.Checked := (TableString('BANK','ACCT',cbBank.Text, 'default_print') = 'Y');
    tbChqno.Color := clWindow;
    if cmbPrinter.Text <> '' then
      tbChqno.Text := NextRefno(qryPrinter.FieldByName('NUM_LAST').AsString);
  end;
end;


procedure TfrmCheque.btnCancelClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCheque.btnChooseTemplateClick(Sender: TObject);
begin
   {
       There is now a copy of the cheque table called cheque_tmpl.
      The user can click on the template button to load a template.
      If there is just one template, the template will automatically
      override any entries on the screen at the time.

      If the user has made changes to the screen, they have the option of
      saving their changes over the template they just chose or of
      saving a new template (if this was not a chosen template).
      There is also the option of deleting the current template you've loaded.

      Need a way to take all of the entered data on the cheque form and transfer
      it over to the cheque_tmpl table.
   }

   QryChequeTmpl.Open;  // Just in case it's not open...

   if (QryChequeTmpl.RecordCount > 1) and (TFrmSelectTemplate.SelectChequeTemplate(QryChequeTmpl)) then
      RestoreScreenControlValues(QryChequeTmpl)
   else if QryChequeTmpl.RecordCount = 1 then
      RestoreScreenControlValues(QryChequeTmpl);

   ActDeleteUpdate(nil);
end;

procedure TfrmCheque.StatusDisplay;
//var
//  bDisplayed : boolean;
begin
   if TableString('BANK','ACCT',cbBank.Text,'TRUST') = 'T' then
   begin
      with qryTmp do
      begin
         FClearedTrust := 0;
         Close;
         SQL.Clear;
         SQL.Add('SELECT getTrustUnconCheqReqAmount(' + QuotedStr(MatterString(qryLedger.FieldByName('REFNO').AsString,'nmatter')) + ') as trust, ');
         SQL.Add(' getTrustBalAmount(' + QuotedStr(MatterString(qryLedger.FieldByName('REFNO').AsString,'nmatter')) + ') as trusttotal, ');
         SQL.Add(' getspecialpurpose(' + QuotedStr(MatterString(qryLedger.FieldByName('REFNO').AsString,'nmatter')) + ') as spec_purpose, ');
         SQL.Add('getClearedTrustAmount(' + QuotedStr(MatterString(qryLedger.FieldByName('REFNO').AsString,'nmatter')) + ') as cl_trust ');
         SQL.Add('FROM DUAL');
         Open;
         if not IsEmpty then
         begin
            sbarBalances.Panels[pnlTRUST].Text := 'Trust Reqs: ' + Format('%m', [FieldByName('TRUST').AsCurrency]);
            sbarBalances.Panels[pnlDEBTORS].Text := 'Total Trust: ' + Format('%m', [FieldByName('trusttotal').AsCurrency]);
            sbarBalances.Panels[pnlFEES].Text := 'Protected: ' + Format('%m', [FieldByName('spec_purpose').AsCurrency]);
            sbarBalances.Panels[pnlDISB].Text := 'Cleared: ' + Format('%m', [FieldByName('cl_trust').AsCurrency]);
            if SystemString('show_net_trust') = 'Y' then
            begin
               sbarBalances.Panels[pnlSUND].Text := 'Available: ' + Format('%m', [FieldByName('cl_trust').AsCurrency-FieldByName('TRUST').AsCurrency]);
               FClearedTrust := (FieldByName('cl_trust').AsCurrency - qryTmp.FieldByName('TRUST').AsCurrency);
            end
            else
            begin
               sbarBalances.Panels[pnlSUND].Text := 'Available: ' + Format('%m', [FieldByName('cl_trust').AsCurrency]);
               FClearedTrust := (FieldByName('cl_trust').AsCurrency);
            end;
         end;
      end;
   end
   else
   begin
      sbarBalances.Panels[pnlTRUST].Text := '';
      sbarBalances.Panels[pnlSUND].Text := '';
      sbarBalances.Panels[pnlDEBTORS].Text := '';
      sbarBalances.Panels[pnlFEES].Text := '';
      sbarBalances.Panels[pnlDISB].Text := '';
   end;
{  bDisplayed := False;
  if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
     (qryLedger.FieldByName('TYPE').AsString = 'Protected') or
     (qryLedger.FieldByName('TYPE').AsString = 'Debtors') then
  begin
    with qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DEBTORS, TRUST_BAL, UNBILL_FEES, UNBILL_DISB, UNBILL_ANTD, UNBILL_SUND');
      SQL.Add('FROM MATTER');
      SQL.Add('WHERE FILEID = ' + QuotedStr(qryLedger.FieldByName('REFNO').AsString));
      Open;
      if not IsEmpty then
      begin
        sbarBalances.Panels[pnlDEBTORS].Text := 'Debtors: ' + Format('%m', [FieldByName('DEBTORS').AsCurrency]);
        sbarBalances.Panels[pnlTRUST].Text := 'Trust: ' + Format('%m', [FieldByName('TRUST_BAL').AsCurrency]);
        sbarBalances.Panels[pnlFEES].Text := 'WIP: ' + Format('%m', [FieldByName('UNBILL_FEES').AsCurrency]);
        sbarBalances.Panels[pnlDISB].Text := 'Disb: ' + Format('%m', [FieldByName('UNBILL_DISB').AsCurrency]);
        sbarBalances.Panels[pnlANTD].Text := 'AntDisb: ' + Format('%m', [FieldByName('UNBILL_ANTD').AsCurrency]);
        sbarBalances.Panels[pnlSUND].Text := 'Sundry: ' + Format('%m', [FieldByName('UNBILL_SUND').AsCurrency]);

        bDisplayed := True;
      end;
    end;
  end
  else if (qryLedger.FieldByName('TYPE').AsString = 'Ledger') then
  begin
    with qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT BALANCE');
      SQL.Add('FROM CHART');
      SQL.Add('WHERE BANK = ''' + dmAxiom.Entity + ''' AND CODE = ' + QuotedStr(qryLedger.FieldByName('REFNO').AsString));
      Open;
      if not IsEmpty then
      begin
        sbarBalances.Panels[pnlDEBTORS].Text := 'Balance: ' + Format('%m', [FieldByName('BALANCE').AsCurrency]);
        sbarBalances.Panels[pnlTRUST].Text := '';
        sbarBalances.Panels[pnlFEES].Text := '';
        sbarBalances.Panels[pnlDISB].Text := '';
        sbarBalances.Panels[pnlANTD].Text := '';
        sbarBalances.Panels[pnlSUND].Text := '';
       
        bDisplayed := True;
      end;
    end;
  end;
  if not bDisplayed then
  begin
    sbarBalances.Panels[pnlDEBTORS].Text := '';
    sbarBalances.Panels[pnlTRUST].Text := '';
    sbarBalances.Panels[pnlFEES].Text := '';
    sbarBalances.Panels[pnlDISB].Text := '';
    sbarBalances.Panels[pnlANTD].Text := '';
    sbarBalances.Panels[pnlSUND].Text := '';
  end;  }
end;


procedure TfrmCheque.ClearTotal;
// It's very hard to get UpdateTotal to work correctly after clearing template
// data from the grid. Hence, this routine does a simple update of the onscreen
// totals to 0.
begin
   lblBalance.Caption := Format('%m', [0.0]);
   lblTax.Caption := Format('%m', [0.0]);
   lblTotal.Caption := Format('%m', [0.0]);
end;

procedure TfrmCheque.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
  if FGridUpdatingByTemplate then
     exit;

  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
  try
    qryLedger.DisableControls;
    qryLedger.Edit;
    qryLedger.First;
    TotalAmt := 0;			{ use temp for efficiency }
    Balance := 0;
    Tax := 0;
    WithholdTax := 0;
    while not qryLedger.EOF do
    begin
      TotalAmt := TotalAmt + qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency;
      Balance := Balance + qryLedger.FieldByName('AMOUNT').AsCurrency;
      Tax := Tax + qryLedger.FieldByName('TAX').AsCurrency;
      if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
        WithholdTax := WithholdTax + qryLedger.FieldByName('TAX').AsCurrency;
      qryLedger.Next;
    end;
    lblBalance.Caption := Format('%m', [Balance]);
    lblTax.Caption := Format('%m', [Tax]);
    lblTotal.Caption := Format('%m', [TotalAmt]);
  finally
     qryLedger.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qryLedger.GoToBookmark(bmPrevRecord);
       qryLedger.FreeBookmark(bmPrevRecord);
     end;
  end;
  if (neAmount.AsCurrency <> 0) or dmAxiom.Security.Cheque.ForceTally then
    lblUnallocated.Caption := Format('%m', [neAmount.AsCurrency - TotalAmt]);
  btnOK.Enabled := OKtoPost(False);
end;


function TfrmCheque.OKtoPost(bShowError: Boolean): Boolean;
var
  sTmp : String;
  bOKtoPost: boolean;
begin
  bOKtoPost:= True;
  sTmp := '';
  if ((neAmount.AsCurrency <> 0) or dmAxiom.Security.Cheque.ForceTally ) and
      (neAmount.AsCurrency <> TotalAmt) {and (qryLedger.FieldByName('TYPE').AsString <> 'Invoice')} then
    sTmp := sTmp + '       Cheque is not fully allocated' + #13;
  if cbBank.Text = '' then
    sTmp := sTmp + '       Bank Account Code' + #13;
  if cbAuthBy.Text = '' then
    sTmp := sTmp + '       Authorised By' + #13;
  if tbPayee.Text = '' then
    sTmp := sTmp + '       Payee' + #13;
  if tbDesc.Text = '' then
    sTmp := sTmp + '       Reason' + #13;
  if tbChqno.Text = '' then
    sTmp := sTmp + '       Cheque Number' + #13;
  if cmbPrinter.Text = '' then
    sTmp := sTmp + '       Printer' + #13;

  if sTmp <> '' then
  begin
    if bShowError then
      MsgInfo('Please complete the following Cheque details before posting:    ' + #13 + #13 + sTmp);
    bOKtoPost := False
  end;
  if bOKtoPost and bShowError then
  begin
    with qryCheckCheque do
    begin
//      ParamByName('P_Acct').AsString := cbBank.Text;
      ParamByName('P_Chqno').AsString := tbChqno.Text;
      Prepare;
      Open;
      if not EOF then
      begin
        MsgErr('This Cheque Number has already been entered');
        bOKtoPost := False;
      end;
      Close;
    end
  end;

  if (FNMemo > 0) and (chkReplacementCheque.Checked = True) and bOKtoPost and bShowError then
   begin
      if (neAmount.AsCurrency ) <> (tvLedgerAMOUNT.EditValue + tvLedgerTAX.EditValue) then
      begin
         MsgErr('The cheque selected has been billed.  Replacement cheque has to be for the same amount.');
         bOKtoPost := False;
      end;
   end;
  OKtoPost := bOKtoPost;
end;


procedure TfrmCheque.btnOKClick(Sender: TObject);
var
  iNcheque: Integer;
  bProceed, bPostingFailed, bMatterAccumulate, bProtectedAccumulate: Boolean;
{
  Code Modified 9.9.02 G.Groube

  removed sCreditorCode to eliminate Compiler Hint
}
  sSQL, sSQLWhere, sLedger, {sCreditorCode,} sLegalCode, sNCreditor, sLedgerCode: string;
  cTrust, cProtected, cAmount, {cTaxAdjust,} iCheqReqAmount, iCheqReqTax, cMatterAmount, cAvailTrust: Currency;
{  dTaxFree: double;}
  iCtr: integer;
  bFormUpdated,
  bTrustCheckProceed: boolean;

  LTries: Integer;
  LEntered: String;
  LMsg: String;
  MatterList,MatterAmountList, ProtectedList, ProtectedAmountList: TStringList;
  n, nAccount: integer;
  cMatterTotal,
  cTradeTotal,
  cMatterTotalTax,
  cTradeTotalTax  : Double;
  glInstance : TglComponentInstance ;
  glComponentSetup : TglComponentSetup;
  sLedgerKey,sLedgerKeyDr : String;
  iTransId ,
  RowItemCount,
  Row,
  lNewNAlloc,
  iRows: Integer;
  sBankDetails,
  sOldMatter,
  LTrustODPasswd: string;
  Overdrawn: boolean;
  bTrustInvoice: boolean;
  ANInvoice, ANJournal: integer;
  SplitPercent: Real;
  TaxCalc: Currency;
begin
{
  Code Modified 9.9.02 G.Groube
  Initialize iNcheque to eliminate compiler Warning
}
   glComponentSetup := dmAxiom.getGlComponents;
   bTrustCheckProceed := True;

   LTrustODPasswd := SystemString('TRUST_OD_PASSWD');
   if LTrustODPasswd = '' then
      LTrustODPasswd := C_OVERDRAWPASSWORD;

   sOldMatter := '';
   iNcheque:= 0;

   if not (IsValidBankForEntity(cbBank.Text)) then
      MsgErr('The bank chosen does not belong to the selected entity. '+
              'The transaction cannot be applied')
   else
   begin
      // clean up grid prior to doing anything.
      for Row := 0 to tvLedger.DataController.RecordCount - 1 do
      begin
         tvLedger.DataController.FocusedRowIndex := Row;
         if tvLedger.DataController.GetDisplayText(Row, tvLedgerREFNO.Index) = '' then
            tvLedger.DataController.DeleteFocused;
      end;

      if IsTrustAccount(cbBank.Text) then
      begin
         if (rgType.ItemIndex = 1) and grpDirectDebit.Visible then
         begin
            if ((dfBSB.Text = '') and (dfAccount.Text = '') and (dfAccountName.Text = '')) then
            begin
               MsgErr('You must enter a BSB, Account Number and Account Name when using the Direct Debit option.' + Chr(13) +
                      'Please correct and try again');
               Exit;
            end;
         end;
      end;

      if ((not IsBankOverDrawn) AND (IsValidMatterForAccount) AND (bTrustCheckProceed)) then
      begin
         ZeroLedgerTotal;
         if qryLedger.Modified then
            qryLedger.Post;
         bProceed := OKtoPost(True);
        {
          Added 25.10.2002 GG
          Show message if transaction is being posted into a locked period
        }
         if bProceed then
            bProceed:= (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]);

         if bProceed then
            if qryLedger.IsEmpty then
               if MsgAsk('There are no transactions entered.' + #13#13 + 'Are you sure you want to post this cheque?') = mrNo then
                  bProceed := False;

          // Beginning to post ledgers
         if bProceed then
         begin
            try
               bPostingFailed := False;
               if dmAxiom.uniInsight.InTransaction = True then
                  dmAxiom.uniInsight.Rollback;
               dmAxiom.uniInsight.StartTransaction;
              // Create the Cheque entry - as we are using Cached Updates
              // this won't save until we explicitly ApplyUpdates
              // 22/05/2018 - AES changed to use sequence rather than seqnum table.  needs reset sequence to be run
               iNcheque := GetSequenceNumber('SQNC_NCHEQUE');
               qryCheque.ParamByName('P_Ncheque').AsInteger := iNcheque;
               qryCheque.Open;

               qryCheque.Insert;
               qryCheque.FieldByName('NCHEQUE').AsInteger := iNcheque;
               qryCheque.FieldByName('PRINTER').AsString := cmbPrinter.Text;
               qryCheque.FieldByName('CREATED').AsDateTime := dtpDate.Date;
               if rgType.ItemIndex = 1 then
               begin
                  if SystemString('SHOW_DD_CHEQUE_NO') = 'Y' then
                  begin
                     qryPrinter.Edit;
                     qryPrinter.FieldByName('NUM_LAST').AsString :=  tbChqno.Text;
                     qryPrinter.Post;
                     qryCheque.FieldByName('CHQNO').AsString := 'BP' + tbChqno.Text;
                  end
                  else
                     qryCheque.FieldByName('CHQNO').AsString := 'BP' + IntToStr(iNCheque);
                  qryCheque.FieldByName('BANKED').AsString := 'N';
                  if (TableString('BANK','ACCT', cbBank.Text, 'AUTO_PRESENT_EFT') = 'Y') then
                  begin
                     qryCheque.FieldByName('PRESENTED').AsDateTime := dtpDate.Date;
                     qryCheque.FieldByName('BANKED').AsString := 'Y';
                  end;
                  qryCheque.FieldByName('TYPE').AsString := 'BP';
                  if (grpDirectDebit.Visible = True) then
                  begin
                     qryCheque.FieldByName('DESCR').AsString := tbDesc.Text + ' ('+ dfBSB.Text +'-'+dfAccount.Text +' '+ dfAccountName.Text +')';
//                  qryCheque.FieldByName('ACCOUNT').AsString := dfAccount.Text;
//                   qryCheque.FieldByName('ACCOUNT_NAME').AsString := dfAccountName.Text;
                  end
                  else
                     qryCheque.FieldByName('DESCR').AsString := tbDesc.Text;
               end
               else
               begin
                  qryCheque.FieldByName('CHQNO').AsString := tbChqno.Text;
                  qryCheque.FieldByName('TYPE').AsString := 'PY';
                  qryCheque.FieldByName('BANKED').AsString := 'N';

                  if (qryPrinter.FieldByName('CODE').IsNull = True) then
                  begin
                     qryPrinter.Close;
                     qryPrinter.ParamByName('CODE').AsString := cmbPrinter.Text;
                     qryPrinter.Open;
                  end;
                  qryPrinter.Edit;
                  qryPrinter.FieldByName('NUM_LAST').AsString :=  qryCheque.FieldByName('CHQNO').AsString;
                  qryCheque.FieldByName('DESCR').AsString := tbDesc.Text;
                  qryPrinter.Post;
               end;
//              qryCheque.FieldByName('SYSTEM_DATE').AsDateTime := Date;
               qryCheque.FieldByName('ACCT').AsString := cbBank.Text;
               qryCheque.FieldByName('REQBY').AsString := cbAuthby.Text;
               qryCheque.FieldByName('PAYEE').AsString := tbPayee.Text;
               qryCheque.FieldByName('AMOUNT').AsCurrency := TotalAmt - WithholdTax;
               qryCheque.FieldByName('TRUST').AsString := qryBank.FieldByName('TRUST').AsString;
               qryCheque.FieldByName('REVERSED').AsString := 'N';
               qryCheque.FieldByName('PRINTED').AsString := 'N';
               qryCheque.FieldbyName('NNAME').AsString := sNName;
//             qryCheque.FieldbyName('EFT').AsString

               if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
                  (qryLedger.FieldByName('TYPE').AsString = 'Protected')then
                  qryCheque.FieldByName('BILLING_TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;

               qryCheque.Post; // Puts cheque into cached buffer

              // Create Cash At Bank Entry
               nAccount := StrToInt(dmAxiom.GetSeqNumber('sqnc_naccount'));
               if qryCheque.FieldByName('TRUST').AsString <> 'T' then
               begin
                // If it's a Ledger cheque, need to save chart used on posting
                  if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
                  begin
                   {post components}
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
                        , sLedgerKey
                        , 0
                        , 0
                        , nAccount
                        , FALSE
                        , 0
                        , 0 - qryLedger.FieldByName('TAX').AsCurrency
                        , '' //sTranCurrency
                        , 0 // lcFXRate
                        , 0 //lcValBase
                        , 0 //lcCurrencyTaxValBase
                        , 0 //LcValEntity
                        , 0 //lcCurrencyTaxValEntity
                        , '' //tvLedgerBRANCH.EditValue
                        , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                        , '' //vartostr(tvLedgerDEPT.EditValue)
                        , 'N'
                        );
                  end
                  else
                  begin
                     {post components}
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
                        , nAccount
                        , FALSE
                        , 0
                        , 0
                        , '' //sTranCurrency
                        , 0 // lcFXRate
                        , 0 //lcValBase
                        , 0 //lcCurrencyTaxValBase
                        , 0 //LcValEntity
                        , 0 //lcCurrencyTaxValEntity
                        , '' //tvLedgerBRANCH.EditValue
                        , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                        , '' //vartostr(tvLedgerDEPT.EditValue)
                        , 'N'
                         );
                  end;
               end;
               // END: Create Cash At Bank Entry

               // Update the last cheque number and balance
               with qryBankBalance do
               begin
                  sSQL := 'UPDATE BANK SET BALANCE = ' + CurrToStrF(qryBank.FieldByName('BALANCE').AsCurrency + qryCheque.FieldByName('AMOUNT').AsCurrency, ffFixed, 15) + ', CL_BALANCE = ' + CurrToStrF(qryBank.FieldByName('CL_BALANCE').AsCurrency + qryCheque.FieldByName('AMOUNT').AsCurrency, ffFixed, 15);
                  if rgType.ItemIndex <> 1 then
                     sSQL := sSQL + ', LASTCHQ = ''' + qryCheque.FieldByName('CHQNO').AsString + '''';
                  sSQLWhere := ' WHERE ACCT = ''' + qryCheque.FieldByName('ACCT').AsString + '''';
                  Close;
                  SQL.Text := sSQL + sSQLWhere;
                  ExecSQL;
                  Close;
               end;
               MatterList := TStringList.Create;
               MatterAmountList := TStringList.Create;
               ProtectedList := TStringList.Create;
               ProtectedAmountList := TStringList.Create;
               // END: Update the last cheque number and balance

               // if (qryAllocs.FieldByName('AMOUNT').AsCurrency + cTrust) < 0 then
               bMatterAccumulate := False;
               bProtectedAccumulate := False;
               qryLedger.First;
               while not qryLedger.EOF do
               begin
                  if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
                     (qryLedger.FieldByName('TYPE').AsString = 'Protected'){ or
                   (qryLedger.FieldByName('TYPE').AsString = 'Debtors') } then
                  begin
                     if qryLedger.FieldByName('TYPE').AsString = 'Matter' then
                     begin
                        if MatterList.Count > 0 then
                        begin
                           for n :=0 to MatterList.Count - 1 do
                           begin
                              if qryLedger.FieldByName('REFNO').AsString = MatterList.Strings[n] then
                              begin
                                 MatterAmountList.Strings[n] := floattostr(strtofloat(MatterAmountList.Strings[n]) +
                                                        qryLedger.FieldByName('AMOUNT').AsCurrency );
                                 bMatterAccumulate := True;
                                 break;
                              end
                           end;
                           if not bMatterAccumulate then
                           begin
                              MatterList.Add(qryLedger.FieldByName('REFNO').AsString);
                              MatterAmountList.Add(qryLedger.FieldByName('AMOUNT').AsString);
                           end;
                        end
                        else
                        begin
                           MatterList.Add(qryLedger.FieldByName('REFNO').AsString);
                           MatterAmountList.Add(qryLedger.FieldByName('AMOUNT').AsString);
                        end;
                     end
                     else
                     if qryLedger.FieldByName('TYPE').AsString = 'Protected' then
                     begin
                        if ProtectedList.Count > 0 then
                        begin
                           for n :=0 to ProtectedList.Count - 1 do
                           begin
                              if qryLedger.FieldByName('REFNO').AsString = ProtectedList.Strings[n] then
                              begin
                                 ProtectedAmountList.Strings[n] := floattostr(strtofloat(ProtectedAmountList.Strings[n]) +
                                                               qryLedger.FieldByName('AMOUNT').AsCurrency );
                                 bProtectedAccumulate := True;
                                 break;
                              end
                           end;
                           if not bProtectedAccumulate then
                           begin
                              ProtectedList.Add(qryLedger.FieldByName('REFNO').AsString);
                              ProtectedAmountList.Add(qryLedger.FieldByName('AMOUNT').AsString);
                           end;
                        end
                        else
                        begin
                           ProtectedList.Add(qryLedger.FieldByName('REFNO').AsString);
                           ProtectedAmountList.Add(qryLedger.FieldByName('AMOUNT').AsString);
                        end;
                     end
                  end;
                  bMatterAccumulate := False;
                  bProtectedAccumulate := False;
                  qryLedger.Next;
               end;
                  // END: qryLedger.First;

               // Now, iterate through the entered Ledger Entries
               qryLedger.First;
               qryAllocs.Open;
               RowItemCount := 0;
//              if grpDirectDebit.Visible then
//                 sBankDetails := ' ('+ dfBSB.Text +'-'+dfAccount.Text +' '+ dfAccountName.Text +')';
               bTrustInvoice := False;
               while not qryLedger.EOF do
                  begin
//               b   egin
                     if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
                        (qryLedger.FieldByName('TYPE').AsString = 'Protected')
                     {or (qryLedger.FieldByName('TYPE').AsString = 'Debtors')} then
                     // begin
                     //////////////////////////////////////////////////////////////////
                     if MatterIsCurrent(qryLedger.FieldByName('REFNO').AsString) then
                     begin
                        bTrustInvoice := ((SystemString('INVOICE_FROM_TRUST') = 'Y') and
                                         (TableString('CHEQREQ','NCHEQREQ', qryLedger.FieldByName('UNIQUEID').AsString,'NINVOICE') <> ''));
                        if bTrustInvoice then
                           ANInvoice := TableInteger('CHEQREQ','NCHEQREQ', qryLedger.FieldByName('UNIQUEID').AsString,'NINVOICE');
                        qryAllocs.Insert;
                        lNewNAlloc := GetSequenceNumber('SQNC_NALLOC');  // GetSeqnum('NALLOC');
                        qryAllocs.FieldByName('NALLOC').AsInteger := lNewNAlloc;
                        qryAllocs.FieldByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
                        qryAllocs.FieldByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
                        qryAllocs.FieldByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
//                       if grpDirectDebit.Visible then
//                         qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString + sBankDetails
//                       else
                        qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                        qryAllocs.FieldByName('CLIENT_NAME').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'CLIENT_NAME');
                        qryAllocs.FieldByName('MATTER_DESC').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'SHORTDESCR');
                        qryAllocs.FieldByName('CLEARED').AsString := 'Y';
                        qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
//                       qryAllocs.FieldByName('SYSTEM_DATE').AsDateTime := Date;
                        qryAllocs.FieldByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
                        qryAllocs.FieldByName('TAX').AsCurrency := 0 - qryLedger.FieldByName('TAX').AsCurrency;
                        qryAllocs.FieldByName('AMOUNT').AsCurrency := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;
                        qryAllocs.FieldByName('BILLED_AMOUNT').AsCurrency := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;
                        qryAllocs.FieldByName('SUNDRYTYPE').AsString := qryLedger.FieldByName('SUNDRYTYPE').AsString;
                        if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
                           qryAllocs.FieldByName('BILLED_TAX_AMOUNT').AsCurrency := 0 - qryLedger.FieldByName('TAX').AsCurrency;

                        // Check we won't overdraw trust
                        qryAllocs.FieldByName('TRUST').AsString := qryCheque.FieldByName('TRUST').AsString;
                        if qryAllocs.FieldByName('TRUST').AsString = 'T' then
                        begin
                           qryAllocs.FieldByName('PRIORBALANCE').AsCurrency := TableCurrency('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'TRUST_BAL');

                           // cTrust := TableCurrency('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'CL_TRUST_BAL');
                           cTrust := ClearTrust(qryLedger.FieldByName('REFNO').AsString);

                           cProtected := TableCurrency('ALLOC', 'NMATTER', TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER'), 'sum(SPEC_PURPOSE)');
                           if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
                              (qryLedger.FieldByName('TYPE').AsString = 'Protected') then
                           begin
                              // MGD - 20/9/02 - fixed this so it works correctly, added password check..

                              if (qryLedger.FieldByName('TYPE').AsString = 'Matter') then
                              begin
                                 for n :=0 to MatterList.Count - 1 do
                                 begin
                                    if MatterList.Strings[n] = qryLedger.FieldByName('REFNO').AsString then
                                    begin
                                       RowItemCount := n;
                                       break;
                                    end;
                                 end;
                                 try
                                    cTrust := ClearTrust(MatterList.Strings[n]);
                                 except
                                    ctrust := 0;
                                 end;
                              end;

                              if (qryLedger.FieldByName('TYPE').AsString = 'Protected') then
                              begin
                                 for n :=0 to ProtectedList.Count - 1 do
                                 begin
                                    if ProtectedList.Strings[n] = qryLedger.FieldByName('REFNO').AsString then
                                    begin
                                       RowItemCount := n;
                                       break;
                                    end;
                                 end;
                                 try
                                    cTrust := 0;
                                    cProtected := ClearProtectedTrust(ProtectedList.Strings[n]);
                                 except
                                    cProtected := 0;
                                 end;
                              end;

                              if (cProtected > 0) then
                                 cAvailTrust := cTrust - cProtected
                              else
                                 cAvailTrust := cTrust;

                              Overdrawn := False;

                              if (qryLedger.FieldByName('TYPE').AsString = 'Matter') then
                              begin
                                 if ((MatterAmountList.Count > 0) and
                                    (((StrToCurr(MatterAmountList.Strings[RowItemCount]) * -1) + cAvailTrust) < 0)) then
                                    Overdrawn := True;
                              end;

                              if (qryLedger.FieldByName('TYPE').AsString = 'Protected') then
                              begin
                                 if ((ProtectedList.Count > 0) and
                                    (((StrToCurr(ProtectedAmountList.Strings[RowItemCount]) * -1) + cProtected) < 0))  then
                                    Overdrawn := True;
                              end;

                              if Overdrawn then
                              begin
                                 // Does this person have enough access to overdraw trust?
//                               if TableInteger('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ACCESSLEVEL') = 0 then
                                 if dmAxiom.Security.Trust.PasswdOverdraw then
                                 begin
                                    LTries := 0;
                                    while(LTries < 3) do
                                    begin
                                       LEntered := '';
                                       if(cTrust >= 0) then
                                          LMsg := Format('There is %m in cleared Trust funds on File %s'#13#10'Continuing will result in the Trust funds being overdrawn by %m',
                                                      [cTrust,qryLedger.FieldByName('REFNO').AsString, -(cAvailTrust - StrToCurr(MatterAmountList.Strings[RowItemCount]) )])
                                       else
                                          LMsg := Format('The Trust funds for File %s is overdrawn by %m.'#13#10'Continuing will result in the Trust funds being overdrawn by %m',
                                                   [qryLedger.FieldByName('REFNO').AsString, -(cAvailTrust), -(cAvailTrust - StrToCurr(MatterAmountList.Strings[RowItemCount]) )]);
                                       if(InputQueryPassword('Insight', LMsg + #13#10'To continue, please enter the password',LEntered)) then
                                       begin
                                          if (LEntered = LTrustODPasswd) then
                                          Break;
                                       end
                                       else
                                          Break;
                                       Inc(LTries);
                                    end;

                                 if (LEntered <> LTrustODPasswd) then
                                    raise ETrustOverDraw.Create('Cleared Trust would have overdrawn on File ' + qryLedger.FieldByName('REFNO').AsString)
                                 else
                                 begin
                                    if (cProtected > 0) then
                                       qryAllocs.FieldByName('OVERDRAWN').AsString := 'P'
                                    else
                                       qryAllocs.FieldByName('OVERDRAWN').AsString := 'Y';
                                 end;
                              end
                              else
                                 raise ETrustOverDraw.Create('Trust would have overdrawn on File ' + qryLedger.FieldByName('REFNO').AsString + #13 + #13 + 'You do not have sufficient access to overdraw Trust Accounts');
                                 // END: Does this person have enough access to overdraw trust?
                              end
                              else
                              if (qryLedger.FieldByName('TYPE').AsString = 'Matter') and
                                 (MatterAmountList.Count > 0 ) and
                                 (((cTrust - Abs(StrToCurr(MatterAmountList.Strings[RowItemCount]))) - cProtected) < -0.001) and
                                 (StrToCurr(MatterAmountList.Strings[RowItemCount]) > 0) then
                              begin
                                 //check to see if it's a stat deposit transaction
                                 if not (TableInteger('BANK', 'ACCT', cbBank.Text, 'STAT_DEP_MATTER') = qryAllocs.FieldbyName('NMATTER').AsInteger) then
                                    raise ETrustOverDraw.Create('Not enough unprotected Trust funds on File ' + qryLedger.FieldByName('REFNO').AsString);
                              end
                              // end ?
                              else
                              if (qryLedger.FieldByName('TYPE').AsString = 'Protected') then
                              begin
                                 if StrToCurr(ProtectedAmountList.Strings[RowItemCount]) > cProtected then
                                    raise ETrustOverDraw.Create('Trust would have overdrawn. There is only ' + Format('%m', [cProtected]) + ' in the Protected Trust Balance of File ' + qryLedger.FieldByName('REFNO').AsString);
                              end;
                              // END: if ((StrToCurr(AmountList.Strings[n]) * -1) + cTrust) < 0 then
                           end;
                           // END: if (qryLedger.FieldByName('TYPE').AsString = 'Matter') then
                        end;
                        // END: if qryAllocs.FieldByName('TRUST').AsString = 'T' then

                        qryAllocs.FieldByName('PAYER').AsString := qryCheque.FieldByName('PAYEE').AsString;

                        qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
                        qryAllocs.FieldByName('BANK').AsString := cbBank.Text;

                        qryAllocs.FieldByName('TYPE').AsString := qryCheque.FieldByName('TYPE').AsString;
                        qryAllocs.FieldByName('NCHEQUE').AsInteger := qryCheque.FieldByName('NCHEQUE').AsInteger;
                        qryAllocs.FieldByName('REFNO').AsString := qryCheque.FieldByName('CHQNO').AsString;
                        qryAllocs.FieldByName('BILLED').AsString := qryLedger.FieldByName('BILLED').AsString;
                        qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                        if qryLedger.FieldByName('TYPE').AsString = 'Protected' then
                           qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;

                        if nAccount > 0 then begin
                           TransItemUpdate(nAccount, qryAllocs.FieldByName('NMATTER').AsInteger,qryAllocs.FieldByName('NALLOC').AsInteger);
                           nAccount := 0;
                        end;

                        if qryAllocs.FieldByName('TRUST').AsString = 'G' then
                        begin
{                          if qryLedger.FieldByName('TYPE').AsString = 'Debtors' then
                           begin
                             qryAllocs.FieldByName('PRIORBALANCE').AsCurrency := TableCurrency('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'DEBTORS');
                             qryAllocs.FieldByName('TYPE').AsString := 'RF';
                             qryAllocs.FieldByName('BILLED').AsString := 'Y';
                           end
                           else  }
                          qryAllocs.FieldByName('PRIORBALANCE').AsCurrency := 0 - TableCurrency('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'UNBILL_DISB');
                        end;

                        // update the ncheqreq field here....
                        if (qryAllocs.FieldByName('TRUST').AsString = 'G') and (qryLedger.FieldByName('UNIQUEID').AsInteger > 0) then
                           qryAllocs.FieldbyName('NCHEQREQ').AsInteger := qryLedger.FieldByName('UNIQUEID').AsInteger;

                        qryAllocs.Post;  // Put it into the cached buffer
                        if qryAllocs.FieldByName('TRUST').AsString = 'T' then
                        begin
                           MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'TRUST_BAL', qryAllocs.FieldByName('AMOUNT').AsCurrency);
                           MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'CL_TRUST_BAL', qryAllocs.FieldByName('AMOUNT').AsCurrency);
                           if qryLedger.FieldByName('TYPE').AsString = 'Protected' then
                              MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'SPEC_PURPOSE', qryAllocs.FieldByName('AMOUNT').AsCurrency);
                        end;

                        if qryAllocs.FieldByName('TRUST').AsString = 'G' then
                        begin
                           if qryLedger.FieldByName('TYPE').AsString = 'Debtors' then
                           begin
                              MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'DEBTORS', 0 - (qryAllocs.FieldByName('AMOUNT').AsCurrency + qryAllocs.FieldByName('TAX').AsCurrency));
                           // Now make the General Ledger entry

                           // post components
                              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_DR'),'',true,'');


                              PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                                  , 0 - qryLedger.FieldByName('AMOUNT').AsCurrency
                                  , 0
                                  , qryCheque.FieldByName('CHQNO').AsString
                                  , 'CHEQUE'
                                  , qryCheque.FieldByName('NCHEQUE').AsInteger
                                  , qryLedger.FieldByName('REASON').AsString
                                  , sLedgerKey
                                  , qryCheque.FieldByName('REQBY').AsString
                                  , -1
                                  , ''
                                  , qryLedger.FieldByName('TAXCODE').AsString
                                  , FALSE
                                  , '0'
                                  , qryAllocs.FieldByName('NALLOC').AsInteger
                                  , qryAllocs.FieldByName('NMATTER').AsInteger
                                  , 0
                                  , FALSE
                                  , 0
                                  , 0 - qryLedger.FieldByName('TAX').AsCurrency
                                  , '' //sTranCurrency
                                  , 0 // lcFXRate
                                  , 0 //lcValBase
                                  , 0 //lcCurrencyTaxValBase
                                  , 0 //LcValEntity
                                  , 0 //lcCurrencyTaxValEntity
                                  , '' //tvLedgerBRANCH.EditValue
                                  , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                                  , '' //vartostr(tvLedgerDEPT.EditValue)
                                  , 'N'
                                  );
                           end
                           else
                           begin
                              // Now make the General Ledger entry
                              sLedger := 'NEW_DISB_DR';
                              if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
                                 cAmount := 0 - (qryLedger.FieldByName('AMOUNT').AsCurrency
                                             + qryLedger.FieldByName('TAX').AsCurrency)
                              else
                                 cAmount := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;

                              if qryLedger.FieldByName('UNIQUEID').AsInteger > 0 then
                              begin
                                 // It is a CheqReq
                                 if TableString('CHEQREQ','NCHEQREQ',qryLedger.FieldByName('UNIQUEID').AsInteger,'ANTICIPATED') = 'Y' then
                                 begin
                                    // Pretend the anticipated disbursement never happened
                                    ConvertTagCheqreq(iNcheque);
                                    if qryLedger.FieldByName('BILLED').AsString = 'Y' then
                                       sLedger := 'NEW_ANTD_CR';
                                 end;
                                 // If this allocation is not for the same amount as the original CheqReq, we must adjust the ledgers
                                 qryTmp.Close;
                                 qryTmp.SQL.Text := 'SELECT AMOUNT, TAX, TAXCODE FROM CHEQREQ WHERE NCHEQREQ = ' + qryLedger.FieldByName('UNIQUEID').AsString;
                                 qryTmp.Open;

                                 qryTmp.Close;
                              end;

                              MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'UNBILL_DISB', 0 - (cAmount));

                              {post components}
                              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, sLedger),'',true,'');

                              PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                                  , cAmount
                                  , 0 - qryLedger.FieldByName('TAX').AsCurrency
                                  , qryCheque.FieldByName('CHQNO').AsString
                                  , 'CHEQUE'
                                  , qryCheque.FieldByName('NCHEQUE').AsInteger
                                  , qryLedger.FieldByName('REASON').AsString
                                  , sLedgerKey
                                  , qryCheque.FieldByName('REQBY').AsString
                                  , -1
                                  , ''
                                  , qryLedger.FieldByName('TAXCODE').AsString
                                  , FALSE
                                  , '0'
                                  , qryAllocs.FieldByName('NALLOC').AsInteger
                                  , qryAllocs.FieldByName('NMATTER').AsInteger
                                  , 0
                                  , FALSE
                                  , 0
                                  , 0 - qryLedger.FieldByName('TAX').AsCurrency
                                  , '' //sTranCurrency
                                  , 0 // lcFXRate
                                  , 0 //lcValBase
                                  , 0 //lcCurrencyTaxValBase
                                  , 0 //LcValEntity
                                  , 0 //lcCurrencyTaxValEntity
                                  , '' //tvLedgerBRANCH.EditValue
                                  , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                                  , '' //vartostr(tvLedgerDEPT.EditValue)
                                  , 'N'
                                  );
                           end;
                           // END: if qryLedger.FieldByName('TYPE').AsString = 'Debtors' then
                        end;
                        // END: if qryAllocs.FieldByName('TRUST').AsString = 'G' then
                        // end; ?
                     end // END ELSE: if MatterIsCurrent(qryLedger.FieldByName('REFNO').AsString) then
                     else // Matter does not exist
                        raise EInvalidMatter.Create('Matter ' + qryLedger.FieldByName('REFNO').AsString + ' is not current');
                        // end; ?
                        // END: if MatterIsCurrent(qryLedger.FieldByName('REFNO').AsString) then => old note: End of Type = 'Matter'
                        //////////////////////////////////////////////////////////////////

                        // Or is it a General Ledger Allocation?
                     if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
                     begin
                        if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
                           cAmount := 0 - (qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency)
                        else
                           cAmount := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;

                        // lookup the ledger code cased on the value entered
                        glInstance := dmAxiom.getGlComponents.parseString(qryLedger.FieldByName('REFNO').AsString,true);

                        if not glInstance.valid then
                        begin
                           // something has gone very wrong !
                           raise Exception.create('Error invalid ledger key');
                        end;

                        PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                            , cAmount
                            , 0 - qryLedger.FieldByName('TAX').AsCurrency
                            , qryCheque.FieldByName('CHQNO').AsString
                            , 'CHEQUE'
                            , qryCheque.FieldByName('NCHEQUE').AsInteger
                            , qryLedger.FieldByName('REASON').AsString
                            , glInstance.ledgerKey
                            , qryCheque.FieldByName('REQBY').AsString
                            , -1
                            , ''
                            , qryLedger.FieldByName('TAXCODE').AsString
                            , FALSE
                            , ''
                            , 0
                            , 0
                            , 0
                            , FALSE
                            , 0
                            , 0 - qryLedger.FieldByName('TAX').AsCurrency
                            , '' //sTranCurrency
                            , 0 // lcFXRate
                            , 0 //lcValBase
                            , 0 //lcCurrencyTaxValBase
                            , 0 //LcValEntity
                            , 0 //lcCurrencyTaxValEntity
                            , '' //tvLedgerBRANCH.EditValue
                            , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                            , '' //vartostr(tvLedgerDEPT.EditValue)
                            , 'N'
                            );

                        glInstance.Free;
                     end;
                //    END: Or is it a General Ledger Allocation?

                //    Or is it a Creditor Account Payable?
                     if qryLedger.FieldByName('TYPE').AsString = 'Invoice' then
                     begin
                     //create two allocs one to reduce upcred and another to add a disb

                     // check creditor screen first, else use the creditor code from the entity;
                        sNCreditor := TableString('INVOICE', 'NINVOICE', qryLedger.FieldByName('UNIQUEID').AsInteger, 'NCREDITOR');
                     {
                       Code Modified 20.01.2003 GG
                       Now needs to search on entity as well as chart.
                       sLedgerCode := TableString('CREDITOR', 'NCREDITOR', sNCreditor, 'CHART');
                     }

                        sLedgerCode := TableStringEntity('CREDITOR', 'NCREDITOR', sNCreditor, 'CHART', dmAxiom.Entity);
                        if not ValidLedger(dmAxiom.Entity, sLedgerCode) then
                           sLedgerCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'CREDITORS');

                        sLegalCode    := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR');
                     // sCreditorCode := TableString('CREDITOR', 'NCREDITOR', sNCreditor, 'CODE');

                     {
                       Creditor work 9/6/2004 TH
                       Get records from TransItem using NINVOICE to determine
                       the amounts for legal (matter) and trade (ledger) respectively.
                     }
                        qryTransItem.Close;
                        qryTransItem.ParamByName('p_ninvoice').AsInteger := qryLedger.FieldByName('UNIQUEID').AsInteger;
                        qryTransItem.Open;

                     // Initialise the totals for legal (matter) and ledger (trade) creditors amount
                        cMatterTotalTax   := 0;
                        cTradeTotalTax    := 0;
                        cTradeTotal       := 0;
                        cMatterTotal      := 0;

                        with qryInvoiceCRAmount do
                        begin
                           Close;
                           ParamByName('p_ninvoice').AsInteger := qryLedger.FieldByName('UNIQUEID').AsInteger;
                           Open;
                           cMatterTotalTax := (FieldByName('legal_cr_amount').AsFloat/FieldByName('amount').AsFloat) * qryLedger.FieldByName('tax').AsFloat;
                           cTradeTotalTax := (FieldByName('trade_cr_amount').AsFloat/FieldByName('amount').AsFloat) * qryLedger.FieldByName('tax').AsFloat;
                           if FieldByName('trade_cr_amount').AsFloat <> 0 then
                              cTradeTotal :=  FieldByName('trade_cr_amount').AsFloat;// - qryLedger.FieldByName('amount').AsFloat - cTradeTotalTax;
                           if FieldByName('legal_cr_amount').AsFloat <> 0 then
                              cMatterTotal :=  FieldByName('legal_cr_amount').AsFloat; // - qryLedger.FieldByName('amount').AsFloat - cMatterTotalTax;
                           if (TaxRate('BILL', qryLedger.FieldByName('TAXCODE').AsString, Now) <> 0) then
                             //(qryLedger.FieldByName('TAXCODE').AsString = 'GST')
                             //or (qryLedger.FieldByName('TAXCODE').AsString = 'GSTIN')) then
                           begin
                              if cMatterTotal > 0 then
                                 cMatterTotalTax := qryLedger.FieldByName('TAX').AsFloat;  //FieldByName('legal_cr_amount').AsFloat/
                                              //  (FieldByName('amount').AsFloat - qryLedger.FieldByName('TAX').AsFloat) * qryLedger.FieldByName('tax').AsFloat;
                              if cTradeTotal > 0 then
                                 cTradeTotalTax := qryLedger.FieldByName('TAX').AsFloat; //FieldByName('trade_cr_amount').AsFloat/
                                               // (FieldByName('amount').AsFloat - qryLedger.FieldByName('TAX').AsFloat) * qryLedger.FieldByName('tax').AsFloat;
                           end;
                        end;

                     // this test is for invoices that were created prior to version 314
                        if (cMatterTotal + cTradeTotal) = 0 then
                        begin
                           // we need to look this value up in the chart table
                           // so we can find the ledger key

                           sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedgerCode,'',true,'');

                           while not qryTransItem.EOF do
                           begin
                           // If trade
                              if qryTransItem.FieldByName('CHART').AsString = sLedgerKey then
                              begin
                                 cTradeTotal := cTradeTotal + qryTransItem.FieldByName('AMOUNT').AsFloat;
                                 cTradeTotalTax := cTradeTotalTax + qryTransItem.FieldByName('TAX').AsFloat;
                              end
                              else if qryTransItem.FieldByName('CHART').AsString = sLedgerKey then
                              begin
                                 cMatterTotal := cMatterTotal + qryTransItem.FieldByName('AMOUNT').AsFloat;
                                 cMatterTotalTax := cMatterTotalTax + qryTransItem.FieldByName('TAX').AsFloat;
                              end;

                              qryTransItem.Next;
                           end;
                        end;

                        if (qryLedger.FieldByName('AMOUNT').AsFloat <>  (cMatterTotal + cTradeTotal)) then
                        begin
                           if cMatterTotal <> 0 then
                           begin
						            cMatterTotal := RoundTo((qryLedger.FieldByName('AMOUNT').AsFloat/(cMatterTotal + cTradeTotal))* cMatterTotal,-2);
                              cMatterTotalTax := RoundTo((qryLedger.FieldByName('TAX').AsFloat/(cMatterTotalTax + cTradeTotalTax))* cMatterTotalTax,-2);
                              if (qryLedger.FieldByName('TAX').AsFloat = 0) then
                                 cMatterTotalTax := 0;

{                           if (TaxRate('BILL',qryLedger.FieldByName('TAXCODE').AsString,Now) < 0) then
                               cMatterTotal := qryLedger.FieldByName('AMOUNT').AsFloat + qryLedger.FieldByName('TAX').AsFloat - cTradeTotal;
                           //cMatterTotal := RoundTo((qryLedger.FieldByName('AMOUNT').AsFloat/(cMatterTotal + cTradeTotal))* cMatterTotal,-2);
                           if (qryLedger.FieldByName('TAX').AsFloat <> 0) then
                              cMatterTotalTax := RoundTo((qryLedger.FieldByName('TAX').AsFloat/(cMatterTotalTax + cTradeTotalTax))* cMatterTotalTax,-2)
                           else
                              cMatterTotalTax := 0;}
                           end;

                           if cTradeTotal <> 0 then
                           begin
                              if (TaxRate('BILL',qryLedger.FieldByName('TAXCODE').AsString,Now) < 0) then
                                 cTradeTotal := qryLedger.FieldByName('AMOUNT').AsFloat + qryLedger.FieldByName('TAX').AsFloat - cMatterTotal
                              else
                                 cTradeTotal := qryLedger.FieldByName('AMOUNT').AsFloat;// - cMatterTotal;
                              cTradeTotalTax := qryLedger.FieldByName('TAX').AsFloat;// - cMatterTotalTax;
                           end;
                        end;

                        // Check if totals are equal to Ledger amount??
                        // Post for trade

                        {post components}
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedgerCode,'',true,'');
                        PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                           //, 0 - qryLedger.FieldByName('AMOUNT').AsCurrency
                            , 0 - (cTradeTotal - cTradeTotalTax)
                            , 0 - cTradeTotalTax
                            , qryCheque.FieldByName('CHQNO').AsString, 'CHEQUE'
                            , qryCheque.FieldByName('NCHEQUE').AsInteger
                            , qryLedger.FieldByName('REASON').AsString
                            , sLedgerKey
                            , qryCheque.FieldByName('REQBY').AsString
                            , qryLedger.FieldByName('UNIQUEID').AsInteger
                            , ''
                            , qryLedger.FieldByName('TAXCODE').AsString
                            , FALSE
                            , '0'
                            , qryAllocs.FieldByName('NALLOC').AsInteger
                            , qryAllocs.FieldByName('NMATTER').AsInteger
                            , 0
                            , FALSE
                            , 0
                            , 0 - cTradeTotalTax
                            , '' //sTranCurrency
                            , 0 // lcFXRate
                            , 0 //lcValBase
                            , 0 //lcCurrencyTaxValBase
                            , 0 //LcValEntity
                            , 0 //lcCurrencyTaxValEntity
                            , '' //tvLedgerBRANCH.EditValue
                            , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                            , '' //vartostr(tvLedgerDEPT.EditValue)
                            , 'N'
                            );
                        // Post for legal
                        {post components}
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLegalCode,'',true,'');

                        PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                            , 0 - (cMatterTotal - cMatterTotalTax)
                            , 0 - cMatterTotalTax
                            , qryCheque.FieldByName('CHQNO').AsString, 'CHEQUE'
                            , qryCheque.FieldByName('NCHEQUE').AsInteger
                            , qryLedger.FieldByName('REASON').AsString
                            , sLedgerKey
                            , qryCheque.FieldByName('REQBY').AsString
                            , qryLedger.FieldByName('UNIQUEID').AsInteger
                            , ''
                            , qryLedger.FieldByName('TAXCODE').AsString
                            , FALSE
                            , '0'
                            , qryAllocs.FieldByName('NALLOC').AsInteger
                            , qryAllocs.FieldByName('NMATTER').AsInteger
                            , 0
                            , FALSE
                            , 0
                            , 0 - cMatterTotalTax
                            , '' //sTranCurrency
                            , 0 // lcFXRate
                            , 0 //lcValBase
                            , 0 //lcCurrencyTaxValBase
                            , 0 //LcValEntity
                            , 0 //lcCurrencyTaxValEntity
                            , '' //tvLedgerBRANCH.EditValue
                            , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                            , '' //vartostr(tvLedgerDEPT.EditValue)
                            , 'N'
                            );

//                    21 nov 2017 --  commented out to remove duplicate tax calculation
                     if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
                     begin
                       //post components
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE_LEDGER', 'CODE',qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                         PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                         , 0 - qryLedger.FieldByName('TAX').AsCurrency, 0
                         , qryCheque.FieldByName('CHQNO').AsString, 'CHEQUE'
                         , qryCheque.FieldByName('NCHEQUE').AsInteger
                         , qryLedger.FieldByName('REASON').AsString
                         , sLedgerKey
                         , ''
                         , -1
                         , ''
                         , qryLedger.FieldByName('TAXCODE').AsString
                         , FALSE
                         , '0'
                         , qryAllocs.FieldByName('NALLOC').AsInteger
                         , qryAllocs.FieldByName('NMATTER').AsInteger
                         , 0
                         , FALSE
                         , 0
                         , 0
                         , '' //sTranCurrency
                         , 0 // lcFXRate
                         , 0 //lcValBase
                         , 0 //lcCurrencyTaxValBase
                         , 0 //LcValEntity
                         , 0 //lcCurrencyTaxValEntity
                         , '' //tvLedgerBRANCH.EditValue
                         , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                         , '' //vartostr(tvLedgerDEPT.EditValue)
                         , 'N'
                         );
                     end;

                        with qryInvoiceUpdate do
                        begin
                           ParamByName('AMOUNT').AsFloat := (qryLedger.FieldByName('AMOUNT').AsFloat + qryLedger.FieldByName('TAX').AsFloat);
                           ParamByName('Last_Payment').AsDateTime := qryCheque.FieldByName('CREATED').AsDateTime;
                           ParamByName('NCHEQUE').AsInteger := qryCheque.FieldByName('NCHEQUE').AsInteger;
                           ParamByName('NINVOICE').AsInteger := qryLedger.FieldByName('NINVOICE').AsInteger;
                           ParamByName('LegalAmount').AsFloat := (cMatterTotal + cMatterTotalTax);
                           ParamByName('TradeAmount').AsFloat := (cTradeTotal + cTradeTotalTax);
                           ExecSQL;
                           Close;
                        end;

                        MatterUpdate(TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER'), 'UNBILL_ANTD', 0 - qryLedger.FieldByName('AMOUNT').AsCurrency);
                     end;
                //    END: Or is it a Creditor Account Payable?

                     if (qryLedger.FieldByName('UNIQUEID').AsInteger > 0) and
                        (qryLedger.FieldByName('TYPE').AsString <> 'Invoice') then
                     begin
                        // It's a CheqReq - Flag it as converted but only if fully paid
                        //qryTmp.SQL.Text := 'UPDATE CHEQREQ SET CONVERTED = ''Y'', BILLED = ''Y''  WHERE NCHEQREQ = ' + IntToStr(qryLedger.FieldByName('UNIQUEID').AsInteger);
                        qryTmp.Close;
                        qryTmp.SQL.Text := 'SELECT nvl(SUM(AMOUNT),0) *-1 as AMOUNT,nvl(SUM(TAX),0) *-1 as TAX FROM ALLOC WHERE NCHEQREQ = :NCHEQREQ';
                        qryTmp.ParamByName('NCHEQREQ').AsString := qryLedger.FieldByName('UNIQUEID').AsString;
                        qryTmp.Open;
                        iCheqReqAmount := qryTmp.FieldByName('AMOUNT').AsFloat;
                        iCheqReqTax :=  qryTmp.FieldByName('TAX').AsFloat;
                        qryTmp.Close;

                        qryTmp.SQL.Text := 'SELECT AMOUNT,TAX FROM CHEQREQ WHERE NCHEQREQ = :NCHEQREQ';
                        qryTmp.ParamByName('NCHEQREQ').AsString := qryLedger.FieldByName('UNIQUEID').AsString;
                        qryTmp.Open;
                        // floating poing error maybe?

                     {
                       Code Modified 9.9.02 G.Groube
                       Should include tax values from both ALLOC and qryledger in this selection guard
                     }
                     // if qryTmp.FieldByName('AMOUNT').asCurrency <= ((iCheqReqAmount + qryLedger.FieldByName('AMOUNT').AsCurrency) + 0.001) then
                     // made abs by AES 16/06/2008
                        if abs(qryTmp.FieldByName('AMOUNT').asCurrency) <=
                           abs((iCheqReqAmount + iCheqReqTax + qryLedger.FieldByName('AMOUNT').AsFloat + qryLedger.FieldByName('TAX').AsFloat) + 0.001) then
                     {
                       End code modified 9.9.02
                     }
                        begin
                           qryTmp.Close;
                           qryTmp.SQL.Text := 'UPDATE CHEQREQ SET CONVERTED = ''Y'', BILLED = ''Y'', NCHEQUE = ' + InttoStr(iNcheque) + ' WHERE NCHEQREQ = ' + qryLedger.FieldByName('UNIQUEID').AsString;
                           qryTmp.ExecSQL;
                        end;

                        qryTmp.Close;
                     end;
                //    END: if (qryLedger.FieldByName('UNIQUEID').AsInteger > 0) and ...

                     if (qryLedger.FieldByName('TAX').AsFloat <> 0) then
                     begin
                        // For ledger cheque, need to store chart used when posting
                        if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
                        begin
                           if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
                           begin
                         {post components}
                              sLedgerKey := glComponentSetup.buildLedgerKey('',TableString('TAXTYPE_LEDGER', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                              PostLedger(dtpDate.Date
                                 , qryLedger.FieldByName('TAX').AsFloat
                                 , 0
                                 , tbChqno.Text
                                 , 'CHEQUE'
                                 , qryCheque.FieldByName('NCHEQUE').AsInteger
                                 , qryLedger.FieldByName('REASON').AsString
                                 , sLedgerKey
                                 , ''
                                 , -1
                                 , ''
                                 , qryLedger.FieldByName('TAXCODE').AsString
                                 , FALSE
                                 , sLedgerKey
                                 , qryAllocs.FieldByName('NALLOC').AsInteger
                                 , qryAllocs.FieldByName('NMATTER').AsInteger
                                 , 0
                                 , FALSE
                                 , 0
                                 , 0
                                 , '' //sTranCurrency
                                 , 0 // lcFXRate
                                 , 0 //lcValBase
                                 , 0 //lcCurrencyTaxValBase
                                 , 0 //LcValEntity
                                 , 0 //lcCurrencyTaxValEntity
                                 , '' //tvLedgerBRANCH.EditValue
                                 , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                                 , '' //vartostr(tvLedgerDEPT.EditValue)
                                 , 'N'
                                 );
                           end
                           else
                           begin
                           {post components}
                              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE_LEDGER', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                              PostLedger(dtpDate.Date
                                 , 0 - qryLedger.FieldByName('TAX').AsFloat
                                 , 0
                                 , tbChqno.Text
                                 , 'CHEQUE'
                                 , qryCheque.FieldByName('NCHEQUE').AsInteger
                                 , qryLedger.FieldByName('REASON').AsString
                                 , sLedgerKey
                                 , ''
                                 , -1
                                 , ''
                                 , qryLedger.FieldByName('TAXCODE').AsString
                                 , FALSE
                                 , sLedgerKey
                                 , qryAllocs.FieldByName('NALLOC').AsInteger
                                 , qryAllocs.FieldByName('NMATTER').AsInteger
                                 , 0
                                 , FALSE
                                 , 0
                                 , 0
                                 , '' //sTranCurrency
                                 , 0 // lcFXRate
                                 , 0 //lcValBase
                                 , 0 //lcCurrencyTaxValBase
                                 , 0 //LcValEntity
                                 , 0 //lcCurrencyTaxValEntity
                                 , '' //tvLedgerBRANCH.EditValue
                                 , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                                 , '' //vartostr(tvLedgerDEPT.EditValue)
                                 , 'N'
                                 );
                           end;
                        end // END ELSE: For ledger cheque, need to store chart used when posting
                        else
                        begin
                           if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
                           begin
                              {post components}
                              sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE_LEDGER', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                              PostLedger(dtpDate.Date
                                 , qryLedger.FieldByName('TAX').AsFloat
                                 , 0
                                 , tbChqno.Text
                                 , 'CHEQUE'
                                 , qryCheque.FieldByName('NCHEQUE').AsInteger
                                 , qryLedger.FieldByName('REASON').AsString
                                 , sLedgerKey
                                 , ''
                                 , -1
                                 , ''
                                 , qryLedger.FieldByName('TAXCODE').AsString
                                 , FALSE
                                 , '0'
                                 , qryAllocs.FieldByName('NALLOC').AsInteger
                                 , qryAllocs.FieldByName('NMATTER').AsInteger
                                 , 0
                                 , FALSE
                                 , 0
                                 , 0
                                 , '' //sTranCurrency
                                 , 0 // lcFXRate
                                 , 0 //lcValBase
                                 , 0 //lcCurrencyTaxValBase
                                 , 0 //LcValEntity
                                 , 0 //lcCurrencyTaxValEntity
                                 , '' //tvLedgerBRANCH.EditValue
                                 , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                                 , '' //vartostr(tvLedgerDEPT.EditValue)
                                 , 'N'
                                 );
                           end
                           else
                           begin
                              {post components}
                              if (qryLedger.FieldByName('TYPE').AsString <> 'Invoice') then
                              begin
                                 sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE_LEDGER', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                                 PostLedger(dtpDate.Date
                                    , 0 - qryLedger.FieldByName('TAX').AsFloat
                                    , 0
                                    , tbChqno.Text
                                    , 'CHEQUE'
                                    , qryCheque.FieldByName('NCHEQUE').AsInteger
                                    , qryLedger.FieldByName('REASON').AsString
                                    , sLedgerKey
                                    , ''
                                    , -1
                                    , ''
                                    , qryLedger.FieldByName('TAXCODE').AsString
                                    , FALSE
                                    , '0'
                                    , qryAllocs.FieldByName('NALLOC').AsInteger
                                    , qryAllocs.FieldByName('NMATTER').AsInteger
                                    , 0
                                    , FALSE
                                    , 0
                                    , 0
                                    , '' //sTranCurrency
                                    , 0 // lcFXRate
                                    , 0 //lcValBase
                                    , 0 //lcCurrencyTaxValBase
                                    , 0 //LcValEntity
                                    , 0 //lcCurrencyTaxValEntity
                                    , '' //tvLedgerBRANCH.EditValue
                                    , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                                    , '' //vartostr(tvLedgerDEPT.EditValue)
                                    , 'N'
                                    );
                              end;
                           end;
                        end;
                     // END: For ledger cheque, need to store chart used when posting
                     end;
                     // END: if qryLedger.FieldByName('TAX').AsFloat <> 0 then

//                   do trans for cheqreq
                     if qryLedger.FieldByName('DEP_ACCOUNT_TYPE').AsString <> '' then
                     begin
//                     if iTransId <= 0 then
                        iTransId := strToInt(dmAxiom.GetSeqNumber('SQNC_NINVTRAN'));
                        qryInvestmentTrans.Close;
                        qryInvestmentTrans.Open;
                        qryInvestmentTrans.insert;
                        qryInvestmentTrans.FieldByName('NINVTRAN').AsInteger := iTransId;
                        qryInvestmentTrans.FieldByName('NMATTER').AsInteger := qryAllocs.FieldByName('NMATTER').AsInteger;
                        qryInvestmentTrans.FieldByName('NDEPOSITACCOUNT').AsInteger := qryLedger.FieldByName('NDEPOSITACCOUNT').AsInteger;
                        qryInvestmentTrans.FieldByName('TYPE').AsString := 'DEP';
                        qryInvestmentTrans.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                        qryInvestmentTrans.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                        qryInvestmentTrans.FieldByName('Reference').AsString := qryLedger.FieldByName('UNIQUEID').AsString;
                        qryInvestmentTrans.FieldByName('PayeePayor').AsString := tbPayee.Text;
                        qryInvestmentTrans.FieldByName('AMOUNT').AsFloat := qryLedger.FieldByName('AMOUNT').AsFloat;

                        qryInvestmentTrans.post;
                     end;

                     if bTrustInvoice then
                     begin
                        with qryJournalInsert do
                        begin
                           ANJournal := GetJournal;
                           ParamByName('NJOURNAL').AsInteger := ANJournal;
                           ParamByName('CREATED').AsDateTime := dtpDate.Date;
                           ParamByName('ACCT').AsString := dmAxiom.Entity;
                           ParamByName('REASON').AsString := 'Creditor Payment from Trust-' + qryLedger.FieldByName('REASON').AsString ;
                           ParamByName('AMOUNT').AsCurrency := qryLedger.FieldByName('AMOUNT').AsFloat;
                           ParamByName('NMEMO').AsString := TableString('CHEQREQ','NCHEQREQ',qryLedger.FieldByName('UNIQUEID').AsInteger,'NMEMO');  //qryAllocs.FieldByName('NMEMO').AsString;

                           ExecSQL; // Puts Journal into cached buffer
                        end;

                        if qryCheque.State = dsBrowse then
                           qryCheque.Edit;
                        qryCheque.FieldByName('NJOURNAL').AsInteger := ANJournal;
                        qryCheque.Post;

                        qryAllocs.Insert;
                        lNewNAlloc := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
                        qryAllocs.FieldByName('NALLOC').AsInteger := lNewNAlloc;
                        qryAllocs.FieldByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
                        qryAllocs.FieldByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
                        qryAllocs.FieldByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
                        qryAllocs.FieldByName('CLIENT_NAME').AsString := TableString('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'CLIENT_NAME');
                        qryAllocs.FieldByName('MATTER_DESC').AsString := TableString('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'SHORTDESCR');
                        qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
                        qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                        qryAllocs.FieldByName('TRUST').AsString := 'G';
                        qryAllocs.FieldByName('PAYER').AsString := 'Journal ' + qryJournalInsert.ParamByName('NJOURNAL').AsString;
                        qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
                        qryAllocs.FieldByName('TYPE').AsString := 'J1';
                        qryAllocs.FieldByName('AMOUNT').AsFloat := qryLedger.FieldByName('AMOUNT').AsFloat;
                        qryAllocs.FieldByName('BILLED_AMOUNT').AsCurrency := qryLedger.FieldByName('AMOUNT').AsCurrency;
                        qryAllocs.FieldByName('TAX').AsFloat := 0;
                        qryAllocs.FieldByName('CLEARED').AsString := 'Y';
                        qryAllocs.FieldByName('NRECEIPT').AsInteger := 0;
                        qryAllocs.FieldByName('REFNO').AsString := qryJournalInsert.ParamByName('NJOURNAL').AsString;
                        qryAllocs.FieldByName('BILLED').AsString := 'N';
                        qryAllocs.FieldByName('UPCRED').AsFloat := qryLedger.FieldByName('AMOUNT').AsFloat;
                        qryAllocs.FieldByName('NINVOICE_PAID').AsInteger := ANInvoice;
//                     qryAllocs.FieldByName('SUNDRY').AsFloat := qryLedger.FieldByName('SUNDCR').AsFloat;
                        qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                        qryAllocs.FieldByName('NMEMO').AsString := TableString('CHEQREQ','NCHEQREQ',qryLedger.FieldByName('UNIQUEID').AsInteger,'NMEMO');
                        qryAllocs.FieldByName('NJOURNAL').AsInteger := qryJournalInsert.ParamByName('NJOURNAL').AsInteger;

                        qryAllocs.Post;  // Put it into the cached buffer

                        sLedgerCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR');
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedgerCode,'',true,'');
                        // do creditor control account

                        PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                            , 0 - qryLedger.FieldByName('AMOUNT').AsFloat
                            , 0 - qryLedger.FieldByName('TAX').AsFloat
                            , qryJournalInsert.ParamByName('NJOURNAL').AsString
                            , 'JOURNAL'
                            , qryJournalInsert.ParamByName('NJOURNAL').AsInteger
                            , qryLedger.FieldByName('REASON').AsString
                            , sLedgerKey
                            , qryCheque.FieldByName('REQBY').AsString
                            , ANInvoice
                            , ''
                            , qryLedger.FieldByName('TAXCODE').AsString
                            , FALSE
                            , '0'
                            , qryAllocs.FieldByName('NALLOC').AsInteger
                            , qryAllocs.FieldByName('NMATTER').AsInteger
                            , 0
                            , FALSE
                            , 0
                            , 0
                            , '' //sTranCurrency
                            , 0 // lcFXRate
                            , 0 //lcValBase
                            , 0 //lcCurrencyTaxValBase
                            , 0 //LcValEntity
                            , 0 //lcCurrencyTaxValEntity
                            , '' //tvLedgerBRANCH.EditValue
                            , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                            , '' //vartostr(tvLedgerDEPT.EditValue)
                            , 'N'
                            );

                        sLedgerCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_UPCRED_CR');
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedgerCode,'',true,'');
                        // do debtor control account

                        PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
                            , qryLedger.FieldByName('AMOUNT').AsFloat
                            , qryLedger.FieldByName('TAX').AsFloat
                            , qryJournalInsert.ParamByName('NJOURNAL').AsString
                            , 'JOURNAL'
                            , qryJournalInsert.ParamByName('NJOURNAL').AsInteger
                            , qryLedger.FieldByName('REASON').AsString
                            , sLedgerKey
                            , qryCheque.FieldByName('REQBY').AsString
                            , -1
                            , ''
                            , qryLedger.FieldByName('TAXCODE').AsString
                            , FALSE
                            , '0'
                            , qryAllocs.FieldByName('NALLOC').AsInteger
                            , qryAllocs.FieldByName('NMATTER').AsInteger
                            , 0
                            , FALSE
                            , 0
                            , 0
                            , '' //sTranCurrency
                            , 0 // lcFXRate
                            , 0 //lcValBase
                            , 0 //lcCurrencyTaxValBase
                            , 0 //LcValEntity
                            , 0 //lcCurrencyTaxValEntity
                            , '' //tvLedgerBRANCH.EditValue
                            , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                            , '' //vartostr(tvLedgerDEPT.EditValue)
                            , 'N'
                            );

                        with qryInvoiceUpdate do
                        begin
                           ParamByName('AMOUNT').AsFloat := qryLedger.FieldByName('AMOUNT').AsFloat;
                           ParamByName('Last_Payment').AsDateTime := qryCheque.FieldByName('CREATED').AsDateTime;
                           ParamByName('NCHEQUE').AsInteger := qryCheque.FieldByName('NCHEQUE').AsInteger;
                           ParamByName('NINVOICE').AsInteger := ANInvoice;
                           ExecSQL;
                        end;

                        with qryNMEMOUpdate do
                        begin
                           if not qryInvoiceCRAmount.Active then
                           begin
                              qryInvoiceCRAmount.Close;
                              qryInvoiceCRAmount.ParamByName('p_ninvoice').AsInteger := ANInvoice;
                              qryInvoiceCRAmount.Open;
                           end;

                           with qryBill do
                           begin
                              Close;
                              ParamByName('nmemo').AsString := TableString('CHEQREQ','NCHEQREQ',qryLedger.FieldByName('UNIQUEID').AsInteger,'NMEMO');;
                              Open;
                           end;
                           SplitPercent := RoundTo(qryLedger.FieldByName('AMOUNT').AsFloat/(qryBill.FieldByName('UPCRED').AsFloat + qryBill.FieldByName('UPCREDTAX').AsFloat),-2);

                           TaxCalc := RoundTo((qryBill.FieldByName('UPCREDTAX').AsFloat * SplitPercent),-2);
                           ParamByName('UPCREDTAX_PAID').AsFloat := TaxCalc;
                           ParamByName('UPCRED_PAID').AsFloat := (qryLedger.FieldByName('AMOUNT').AsFloat - TaxCalc);

                           ParamByName('NMEMO').AsString := TableString('CHEQREQ','NCHEQREQ',qryLedger.FieldByName('UNIQUEID').AsInteger,'NMEMO');
                           ParamByName('TAX_PAID').AsCurrency := TaxCalc;  //qryInvoiceCRAmount.FieldByName('TAX').AsCurrency;
                           ExecSQL;
                           qryBill.Close;
                           qryInvoiceCRAmount.Close;
                        end;
                     end;

                     sOldMatter := qryLedger.FieldByName('REFNO').AsString;
                     qryLedger.Next;
                     if sOldMatter <> qryLedger.FieldByName('REFNO').AsString then
                        inc(RowItemCount);
                  end;
              // ***************   end of loop through G/L entries
              // END:  while not qryLedger.EOF do

               qryCheque.ApplyUpdates;
               qryAllocs.ApplyUpdates;
               qryPrinter.ApplyUpdates;
              // AES 06/08/2018
               if (chkReplacementCheque.Checked = True) and (FNCheque <> -1) then
               begin
                  try
                     if not assigned(dmChequeRev) then
                        dmChequeRev := TdmChequeRev.Create(Self);
                     dmChequeRev.dReverseDate := dtpDate.Date;
                     dmChequeRev.sReason := tbDesc.Text;
                     dmChequeRev.nNMemo := FNMemo;
                     dmChequeRev.nNMatter := qryAllocs.FieldByName('NMATTER').AsInteger;
                     dmChequeRev.RvCheque(FNCheque, dtpDate.Date, 'Cheque reissue');
                     if FNMemo > 0 then
                     begin
                        with dmAxiom.qryTmp do
                        begin
                           Close;
                           SQL.Text := 'UPDATE ALLOC SET NMEMO = :NMEMO, BILLED = ''Y'' ' +
                                       'WHERE NALLOC = :NALLOC ';
                           ParamByName('NALLOC').AsInteger := lNewNAlloc;
                           ParamByName('NMEMO').AsInteger := FNMemo;
                           ExecSql;
                           Close;
                        end;
                     end;
                  finally
                     FreeAndNil(dmChequeRev);
                  end;
               end;

               CheckLedgerTotal;

            except
                 on E: Exception do
                 begin
                    if dmAxiom.uniInsight.InTransaction then
                       dmAxiom.uniInsight.Rollback;
                    if qryAllocs.UpdatesPending then
                       qryAllocs.CancelUpdates;
                    if qryCheque.UpdatesPending then
                       qryCheque.CancelUpdates;
                    bPostingFailed := True;
                    MsgErr('Posting failed:' + #13#13 + E.Message);
                 end;
            end;

            if not bPostingFailed then
            begin
               if dmAxiom.uniInsight.InTransaction then
                  dmAxiom.uniInsight.Commit;
               if rgType.ItemIndex = 1 then
                  MsgInfo('The Direct Debit no ['+ qryCheque.FieldByName('CHQNO').AsString +'] was saved to the database.');

               qryAllocs.Close;
               qryCheque.Close;
               qryPrinter.Close;

                 // Do the trust transfer receipt into general if required
               if cbBankTransfer.Text <> '' then
               begin
                  with TfrmReceipt.Create(Application) do
                  begin
                     TrustTransfer(cbBankTransfer.Text, iNcheque);
                     Show;
                  end;
               end;

                 // print the cheque if set
               try
                  if chkPrint.Visible and chkPrint.Checked then
                     with TfrmChequePrint.Create(Self) do
                     begin;
                        PrinterPath := cmbPrinter.Text;
                        PrintCheque(iNcheque);
                     end;
               except
                  on E: Exception do
                     MsgErr('Printing failed:' + #13 + E.Message + #13#13 + 'You may print this cheque by locating it in the Cheques screen');
               end;

                 // Refresh the Cah Payments screen
               iCtr := 0;
               bFormUpdated := False;
               while (iCtr < Screen.FormCount) and not bFormUpdated do
               begin
                  if Screen.Forms[iCtr].ClassName = 'TfrmCashPay' then
                  begin
                     (Screen.Forms[iCtr] as TfrmCashPay).MakeSQL;
                     bFormUpdated := True;
                  end
                  else
                  if Screen.Forms[iCtr].ClassName = 'TfrmCheqReqs' then
                  begin
                     (Screen.Forms[iCtr] as TfrmCheqReqs).MakeSQL;
                     bFormUpdated := True;
                  end
                  else
                  if Screen.Forms[iCtr].ClassName = 'TfrmAcctPayable' then
                  begin
                     (Screen.Forms[iCtr] as TfrmAcctPayable).MakeSQL;
                     bFormUpdated := True;
                  end;
                  iCtr := iCtr + 1;
               end;

               if chkNoExit.Checked then
               begin
                  // Create a new cheque
                  sNName := '';
                  tbPayee.Text := '';
                  tbDesc.Text := '';
                  DefaultDescr := '';
                  neAmount.AsCurrency := 0;
                  TotalAmt := 0;
                  Balance := 0;
                  Tax := 0;
                  lblBalance.Caption := '0.00';
                  lblTotal.Caption := '0.00';
                  lblTax.Caption := '0.00';
                  lblUnallocated.Caption := '0.00';
                  lblName.Caption := '';
                  lblAddress.Caption := '';

                  qryLedger.Close;
                  qryPrinter.Close;
                  qryBank.Close;
                  qryInvoiceCRAmount.Close;

                  qryBank.Open;
                  qryLedger.Open;
                  qryPrinter.Open;

                  NextChqno;
                  Created := True;
                  tbPayee.SetFocus;
               end
               else
                  Self.Close;
            end
            else
            begin
               if dmAxiom.uniInsight.InTransaction then
                  dmAxiom.uniInsight.Rollback;
                  showmessage('Transaction Cancelled.');
            end;
         end;
      end;    //  end if
      if MatterList <> nil then MatterList.Destroy;
      if MatterAmountList <> nil then MatterAmountList.Destroy;
      if ProtectedList <> nil then ProtectedList.Destroy;
      if ProtectedAmountList <> nil then ProtectedAmountList.Destroy;
   end;
end;


procedure TfrmCheque.ConvertTagCheqReq(iNCheque : Integer);
var
  {iNCheqreq,} iNMemo: integer;
  qryUpd: TUniQuery;
  msg, sBilled, sWaiting: string;
begin
  if (qryLedger.FieldByName('TYPE').AsString = 'Matter') then
  begin
    qryUpd := TUniQuery.Create(nil);
    qryUpd.Connection := dmAxiom.uniInsight;
    iNMemo := TableInteger('CHEQREQ', 'NCHEQREQ', qryLedger.FieldByName('UNIQUEID').AsInteger, 'NMEMO');
    sBilled := TableString('CHEQREQ', 'NCHEQREQ', qryLedger.FieldByName('UNIQUEID').AsInteger, 'BILLED');
    sWaiting := TableString('CHEQREQ', 'NCHEQREQ', qryLedger.FieldByName('UNIQUEID').AsInteger, 'HELD');
    if (iNMemo = 0) or (sBilled = 'N') or (sWaiting = 'W') then
    begin
(*
      // Create a deleted CheqReq for the ledger card
      qryUpd.SQL.Clear;
      qryUpd.SQL.Add('INSERT INTO CHEQREQ');
      qryUpd.SQL.Add('(FILEID, LEDGER, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE, TAXCODE, TAX, SUNDRYTYPE)');
      qryUpd.SQL.Add('SELECT FILEID, LEDGER, PAYEE, ''Converted - '' || DESCR, 0-AMOUNT, AUTHOR, :ReqDate, BANK, ''N'', GROUPABLE, ANTICIPATED, ''Y'', NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, ''Y'', TRUST, ''N'', TAXCODE, 0-TAX, SUNDRYTYPE');
      qryUpd.SQL.Add('FROM CHEQREQ');
      qryUpd.SQL.Add('WHERE NCHEQREQ = ' + qryLedger.FieldByName('UNIQUEID').AsString);
      iNCheqreq := GetSeqnum('NCHEQREQ');
      qryUpd.ParamByName('NCHEQREQ').AsInteger := iNCheqreq;
      qryUpd.ParamByName('ReqDate').AsDateTime := dtpDate.Date;
      qryUpd.ExecSQL;
      qryUpd.Close;
      qryUpd.SQL.Clear;
      qryUpd.SQL.Text := 'SELECT AMOUNT, TAXCODE, TAX FROM CHEQREQ WHERE NCHEQREQ = ' + qryLedger.FieldByName('UNIQUEID').AsString;
      qryUpd.Open;

      //pb-
      //MatterUpdate(TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER'), 'UNBILL_ANTD', 0 - qryUpd.FieldByName('AMOUNT').AsCurrency);
      //MatterUpdate(TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER'), 'UNBILL_CREQ', 0 - qryUpd.FieldByName('AMOUNT').AsCurrency);

      // Debit Anticipated creditors liability the full amount
      PostLedger(dtpDate.Date, 0 - (qryUpd.FieldByName('AMOUNT').AsFloat
        + qryUpd.FieldByName('TAX').AsFloat), 0
        , qryLedger.FieldByName('REFNO').AsString, 'CHEQREQ', iNCheqreq
        , qryLedger.FieldByName('REASON').AsString
        , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_CR'), '');
      // Credit the Unbilled Anticipated Disbursements ledger the tax free amount
      PostLedger(dtpDate.Date, qryUpd.FieldByName('AMOUNT').AsFloat
        , qryUpd.FieldByName('TAX').AsFloat
        , qryLedger.FieldByName('REFNO').AsString, 'CHEQREQ', iNCheqreq
        , qryLedger.FieldByName('REASON').AsString
        , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR'), '');
      // Credit the Tax Adjustment ledger the tax amount
      if qryUpd.FieldByName('TAX').AsFloat <> 0 then
        PostLedger(dtpDate.Date, qryUpd.FieldByName('TAX').AsFloat, 0
          , qryLedger.FieldByName('REFNO').AsString, 'CHEQREQ', iNCheqreq
          , qryLedger.FieldByName('REASON').AsString
          , TableString('TAXTYPE', 'CODE', qryUpd.FieldByName('TAXCODE').AsString
          , 'LEDGER'), '');
*)
{
      // Debit the Unbilled Disbursements ledger the paid amount
      PostLedger(dtpDate.Date,
        0 - (qryLedger.FieldByName('AMOUNT').AsFloat + qryLedger.FieldByName('TAX').AsFloat),
        0
        , qryCheque.FieldByName('CHQNO').AsString, 'CHEQUE'
        , qryCheque.FieldByName('NCHEQUE').AsInteger
        , qryLedger.FieldByName('REASON').AsString
        , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR')
        , qryCheque.FieldByName('REQBY').AsString);
      // Credit the Unbilled Anticipated Disbursements ledger the paid amount
      PostLedger(dtpDate.Date
        , qryLedger.FieldByName('AMOUNT').AsFloat + qryLedger.FieldByName('TAX').AsFloat
        , 0
        , qryCheque.FieldByName('CHQNO').AsString, 'CHEQUE'
        , qryCheque.FieldByName('NCHEQUE').AsInteger
        , qryLedger.FieldByName('REASON').AsString
        , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR')
        , qryCheque.FieldByName('REQBY').AsString);
}
      msg:= 'This Anticipated Disbursement has not been billed.' + #10#13#10#13 +
            'You cannot pay an unbilled Anticipated Disbursement.' + #10#13#10#13 +
            'Reverse out this Anticipated Disbursement, raise a ' + #10#13 +
            'disbursement for the amount you want to pay, and re-raise' + #10#13 +
            'an Anticipated Disbursement for the remaining amount' + #10#13;
      raise Exception.Create(msg)
    end
    else
    begin
      // if it is on a draft bill, alter the amount of the bill
      qryUpd.SQL.Text := 'UPDATE NMEMO SET ANTD = ANTD - :ADJUST WHERE DISPATCHED IS NULL AND NMEMO = ' + IntToStr(iNMemo);
      qryUpd.ParamByName('ADJUST').AsFloat := qryLedger.FieldByName('AMOUNT').AsCurrency;
      qryUpd.ExecSQL;
      qryUpd.Close;
    end;
    qryUpd.Close;
    //qryUpd.SQL.Text := 'UPDATE CHEQREQ SET CONVERTED = ''Y'', BILLED = ''Y'', HELD = ''N'', NCHEQUE = ' + InttoStr(iNcheque) + ' WHERE NCHEQREQ = ' + qryLedger.FieldByName('UNIQUEID').AsString;
    //qryUpd.ExecSQL;
    //qryUpd.Close;
    qryUpd.Free;
    end
end;

procedure TfrmCheque.dbgrLedgerColExit(Sender: TObject);
{
var

  defaultLedgerTaxCode : String;
  glInstance : TglComponentInstance ;
  }
begin
{   case dbgrLedger.SelectedIndex of
    //pb - added colTYPE from frmReceipt
   colTYPE:
   begin
      if not qryLedger.Modified then
         qryLedger.Edit;
      if dbgrLedger.Columns.Items[colTYPE].Field.Text <> '' then
         dbgrLedger.Columns.Items[colTYPE].Field.Text := Trim(dbgrLedger.Columns.Items[colTYPE].Field.Text);
    end;
    colREFNO: // Display the long Description
    begin
       if dbgrLedger.Columns.Items[colREFNO].Field.Text <> '' then
       begin
          if not qryLedger.Modified then
             qryLedger.Edit;
          dbgrLedger.Columns.Items[colREFNO].Field.Text := Trim(dbgrLedger.Columns.Items[colREFNO].Field.Text);
          dbgrLedger.Columns.Items[colREFNO].Field.Text := UpperCase(dbgrLedger.Columns.Items[colREFNO].Field.Text);
          if (dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Matter') then
          begin
          // AES 15/08/2003
          // test to ensure that matter is current and that the matter is valid for
          // the current entity.
             if MatterIsCurrent(dbgrLedger.Columns.Items[colREFNO].Field.Text) and
                not (IsMatterArchived(dbgrLedger.Columns.Items[colREFNO].Field.Text)) then
                if IsValidMatterForEntity(dbgrLedger.Columns.Items[colREFNO].Field.Text) then
                begin
                   qryLedger.FieldByName('LONGDESC').AsString := MatterString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'MATLOCATE');
                   if cbAuthBy.Text = '' then
                   begin
                      cbAuthBy.ItemIndex := cbAuthBy.Items.IndexOf(MatterString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'AUTHOR'));
                      cbAuthBy.OnClick(Self);
                   end;
                end
                else
                begin
                   MsgErr('This matter #' + qryLedger.FieldByName('REFNO').AsString +
                          ' is not valid for the current Entity.');
                   qryLedger.Delete;
                end
             else
                begin
                   MsgErr('This matter #' + dbgrLedger.Columns.Items[colREFNO].Field.Text +
                          ' is closed or does not exist');
                   qryLedger.Delete;
                end;
          end;

          if (dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Protected') or
             (dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Debtors') then
          begin
             if MatterIsCurrent(dbgrLedger.Columns.Items[colREFNO].Field.Text) then
             begin
                qryLedger.FieldByName('LONGDESC').AsString := MatterString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'MATLOCATE');
                if cbAuthBy.Text = '' then
                begin
                   cbAuthBy.ItemIndex := cbAuthBy.Items.IndexOf(MatterString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'AUTHOR'));
                   cbAuthBy.OnClick(Self);
                end;
             end
             else
             begin
                MessageDlg('This matter #' + dbgrLedger.Columns.Items[colREFNO].Field.Text + ' is closed or does not exist',mtError, [mbOK], 0);
                qryLedger.Delete;
             end;
          end;

          if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Ledger' then
          begin
                // lookup the ledger code based on the value entered
             glInstance := dmAxiom.getGlComponents.parseString(dbgrLedger.Columns.Items[colREFNO].Field.Text,true);
             if not glInstance.valid then
             begin
                glInstance.displayError;
                qryLedger.FieldByName('REFNO').AsString := '';
                qryLedger.FieldByName('LONGDESC').AsString := '';
                glInstance.free;
                exit;
             end
             else
             begin
                qryLedger.FieldByName('REFNO').AsString  := glInstance.fullCode;
             end;

             if not AllowDirectPost(glInstance.ledgerKey) then
             begin
                MsgErr('You may not post to ledger Reference #' + dbgrLedger.Columns.Items[colREFNO].Field.Text);
                dbgrLedger.Columns.Items[colREFNO].Field.Text := '';
             end
             else
             begin
                if not LedgerHead(glInstance.ledgerKey) then
                begin
                   qryLedger.FieldByName('LONGDESC').AsString := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
                   // Tony
                   // 03/05/2004
                   // Obtain default_taxcode (if any)
                   defaultLedgerTaxCode := LedgerString(glInstance.ledgerKey, 'DEFAULT_TAXCODE');

                   if defaultLedgerTaxCode <> '' then
                     qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode;
                end
                else
                begin
                   MsgErr('You may not post to a header ledger');
                   dbgrLedger.Columns.Items[colREFNO].Field.Text := '';
                end;
             end;
          end;

          if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Invoice' then
          begin
             with qryInvoice do
             begin
                Close;
                ParamByName('Acct').AsString := dmAxiom.Entity;
                ParamByName('Refno').AsString := dbgrLedger.Columns.Items[colREFNO].Field.Text;
                Prepare;
                Open;
                if not IsEmpty then
                begin
                   if not qryLedger.Modified then
                      qryLedger.Edit;
                   if (IsValidInvoice(qryInvoice.FieldByName('OWING').AsCurrency,
                       qryInvoice.FieldByName('TYPE').AsString)) then
                   begin
                      qryLedgerAMOUNT.OnChange := nil;
                      qryLedger.FieldByName('LONGDESC').AsString := qryInvoice.FieldByName('CREDITOR').AsString;
                      qryLedger.FieldByName('REASON').AsString := qryInvoice.FieldByName('DESCR').AsString;
                      qryLedger.FieldByName('AMOUNT').AsCurrency := qryInvoice.FieldByName('OWING').AsCurrency;
                      qryLedger.FieldByName('UNIQUEID').AsInteger := qryInvoice.FieldByName('NINVOICE').AsInteger;
                      qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
                   end
                   else
                   begin
                      MsgErr('There is nothing owing on this Invoice');
                      qryLedger.FieldByName('REFNO').AsString := '';
                   end;
                end
                else
                begin
                   MsgErr('Invalid Invoice number');
                   qryLedger.FieldByName('REFNO').AsString := '';
                end;
            Close;
          end;
        end;
      end;
//      StatusDisplay;
    end;
    colREASON:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      QuickCode(dbgrLedger.Columns.Items[colREASON].Field);
    end;
  end;                                                  }
end;


procedure TfrmCheque.ActDeleteExecute(Sender: TObject);
var
   DlgString: String;
begin
   // No template selected, just exit.
   if FCurrentTemplateDescr = '' then
      exit;

   DlgString := Format('Delete template %s ?', [FCurrentTemplateDescr]);
   if MessageDlg(DlgString, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
      QryChequeTmpl.Delete;

      if QryTransTmpl.RowsAffected <> 0 then
         QryChequeTmpl.CommitUpdates;

      ClearHeaderControls;
      ClearTransGrid;
   end;

   // Delete the Transaction details from the grid.
   FGridUpdatingByTemplate := True;
   try
      QryTransTmpl.First;
      QryTransTmpl.Edit;
      while QryTransTmpl.RecordCount > 0 do
      begin
         QryTransTmpl.Delete;
         //QryLedger.Delete;
      end;
      if QryTransTmpl.RowsAffected <> 0 then
         QryTransTmpl.CommitUpdates;
      if QryLedger.RowsAffected <> 0 then
         QryLedger.CommitUpdates;

      DefaultDescr := '';
      qryLedger.Close;
      qryLedger.Open;

      tvLedger.DataController.DataSource := nil;
      tvLedger.DataController.DataSource := dsLedger;


      tvLedger.DataController.RecordCount := 0;
      tvLedger.ViewChanged;

      //   tvLedger.DataController.d
      tvLedger.DataController.RefreshExternalData;
   finally
      FGridUpdatingByTemplate := false;
      ActTemplateUpdate(nil);
      ClearTotal;
   end;
end;

procedure TfrmCheque.ActTemplateUpdate(Sender: TObject);
begin
   ActTemplate.Enabled := (QryChequeTmpl.Active)
      and (QryChequeTmpl.RecordCount > 0);
end;

procedure TfrmCheque.ActDeleteUpdate(Sender: TObject);
begin
   ActDelete.Enabled := QryChequeTmpl.RecordCount > 0;
end;

procedure TfrmCheque.ActSaveExecute(Sender: TObject);
var
   DlgString: String;
begin
   if QryChequeTmpl.Active = false then
      QryChequeTmpl.Open;

   DlgString := Format('Overwrite template %s with these changes ?', [FCurrentTemplateDescr]);

   if not ((QryChequeTmpl.FieldByName('TEMPLATE_DESCR').AsString = FCurrentTemplateDescr)
      and (QryChequeTmpl.FieldByName('TEMPLATE_DESCR').AsString <> '')
      and (MessageDlg(DlgString, mtConfirmation, [mbYes, mbNo], 0) = mrYes)) then
   begin
      FCurrentTemplateDescr := '';
      QryChequeTmpl.Insert;
   end;

   SaveTemplate;
   ActTemplateUpdate(nil);
end;

procedure TfrmCheque.SaveTemplate;
begin
   if FCurrentTemplateDescr = '' then
      FCurrentTemplateDescr := 'Pending ' + DateToStr(Now);

   SaveScreenControlValues(QryChequeTmpl);

   if (QryChequeTmpl.Modified) then
      QryChequeTmpl.Post;
   QryChequeTmpl.CommitUpdates;
end;

procedure TfrmCheque.AutoCheque(sBank, sPayee, sDesc, sFile, sLedger, sReqBy, sBilled: string; cAmount: Currency; iNCheqReq: integer);
begin
   // This procedure sets up a Cheque Automagically from the
   // details supplied
   CreateCheque;
   //if cbBank.Items.Count = 0 then
    //AddBanks(cbBank, 'G,T,C');
   cbBank.Text := sBank;
   //cbBankClick(Self);
   cbBankPropertiesChange(Self);
   tbPayee.Text := sPayee;
   tbDesc.Text := sDesc;
   cbAuthBy.Text := sReqBy;
//  cbAuthBy.OnClick(Self);
   AutoChequeAdd(sFile, sLedger, sDesc, sBilled, cAmount, iNCheqReq);
   if iNCheqReq = 0 then
      tbPayee.SetFocus
   else
   begin
      dbgrLedger.SetFocus;
//    dbgrLedger.SelectedIndex := colAMOUNT;
      tvLedgerAMOUNT.Focused := true;
   end;

{  // This procedure sets up a Cheque Automagically from the
  // details supplied
  CreateCheque;
//  if cbBank.Items.Count = 0 then
//    AddBanks(cbBank, 'G,T,C');
  cbBank.ItemIndex := cbBank.Items.IndexOf(sBank);
  cbBankClick(Self);
  tbPayee.Text := sPayee;
  tbDesc.Text := sDesc;
  cbAuthBy.ItemIndex := cbAuthBy.Items.IndexOf(sReqBy);
  cbAuthBy.OnClick(Self);
  AutoChequeAdd(sFile, sLedger, sDesc, sBilled, cAmount, iNCheqReq);
  if iNCheqReq = 0 then
    tbPayee.SetFocus
  else
  begin
    dbgrLedger.SetFocus;
//    dbgrLedger.SelectedIndex := colAMOUNT;
    tvLedgerAMOUNT.Focused := true;
  end;  }
end;

procedure TfrmCheque.AutoChequeFromCheqReq(iNCheqReq: integer);
var
  qryCheqReq: TUniQuery;
begin
  // This procedure sets up a Cheque Automagically from the
  // CheqReq supplied
  qryCheqReq := TUniQuery.Create(Self);
  with qryCheqreq do
  begin
    Connection := dmAxiom.uniInsight;
    SQL.Text := 'SELECT * FROM CHEQREQ WHERE NCHEQREQ = :NCHEQREQ';
    Params[0].AsInteger := iNCheqReq;
    Open;
    if not IsEmpty then
    begin
       ChequeFromCheqReq(qryCheqreq);
    end;
    Close;
  end;
  qryCheqReq.Free;
end;

procedure TfrmCheque.AutoChequeFromCheqReq(sNCheqReq: string);
var
  qryCheqReq: TUniQuery;
begin
   qryCheqReq := TUniQuery.Create(Self);
   with qryCheqreq do
   begin
      Connection := dmAxiom.uniInsight;
      SQL.Text := 'SELECT * FROM CHEQREQ WHERE NCHEQREQ IN ('+ sNCheqReq + ')';
      Open;
      if not IsEmpty then
      begin
         ChequeFromCheqReq(qryCheqreq);
      end;
      Close;
   end;
   qryCheqReq.Free;
end;

procedure TfrmCheque.ChequeFromCheqReq(AQuery: TUniQuery);
var
  iCheqreqAmount,iCheqreqTax : Currency;
  lsDefaultTax : String;
begin
   with AQuery do
   begin
      if tbPayee.Text = '' then
      begin
         // Create a new cheque
         CreateCheque;
        //if cbBank.Items.Count = 0 then
           // AddBanks(cbBank, 'G,T,C');
         //ShowMessage(FieldByName('BANK').AsString);
         cbBank.Text := FieldByName('BANK').AsString;
         //cbBankClick(Self);
         cbBankPropertiesChange(Self);
        // cbBankChange(Self);
         cbBank.Enabled := False;
         tbPayee.Text := FieldByName('PAYEE').AsString;
         tbDesc.Text := FieldByName('DESCR').AsString;
         cbAuthBy.Text := FieldByName('AUTHOR').AsString;
//         cbAuthBy.OnClick(Self);
         if FieldByName('PRINTER').AsString <> '' then
         begin

            if (cmbPrinter.Items.Count = 0) then
               StringPopulate(cmbPrinter.Items, 'PRINTER', 'CODE', 'TYPE = ''C'' AND BANK_ACCT = ''' + cbBank.Text + '''');
            cmbPrinter.OnChange := nil;
            cmbPrinter.ItemIndex := cmbPrinter.Items.IndexOf(FieldByName('PRINTER').AsString);
            tbChqno.Text := FieldByName('CHQNO').AsString;
            cmbPrinter.OnChange := cmbPrinterChange;
            dtpDate.Date := AQuery.FieldByName('REQDATE').AsDateTime;
         end
         else
            cmbPrinter.ItemIndex := cmbPrinter.Items.IndexOf(FChequePrinter);
      end;
      // Create an allocation in the grid for this cheqreq

      qryLedgerTYPE.OnChange := nil;
      qryLedgerAMOUNT.OnChange := nil;
      qryLedgerTAXCODE.OnChange := nil;
      qryLedger.AfterInsert := nil;
      qryLedger.AfterPost := nil;
      qryLedger.AfterScroll := nil;
      qryLedger.Insert;

      qryLedger.FieldByName('UNIQUEID').AsInteger := AQuery.FieldByName('NCHEQREQ').AsInteger;

      // get the amount owing on the cheqreq
      qryCheqreqBal.Close;
      qryCheqreqBal.ParamByName('NCHEQREQ').AsInteger := qryLedger.FieldByName('UNIQUEID').AsInteger;
      qryCheqreqBal.open;

      iCheqreqAmount := qryCheqreqBal.FieldByName('AMOUNT').AsCurrency;
      iCheqreqTax := qryCheqreqBal.FieldByName('TAX').AsCurrency;
      qryCheqReqBal.Close;

      if iCheqreqAmount = 0.00 then
      begin
         iCheqreqAmount := FieldByName('AMOUNT').AsFloat;
         iCheqreqTax := FieldByName('Tax').AsFloat
      end;

{
     Added 30.9.2002 GG

        If the original cheqreq has a tax code of "GSTNC", use the ex-tax amount
        of the original cheqreq as the amount for the cheque.

        Otherwise, sum the ex-tax amount and the tax amount to come up with the
        cheque amount.  This will need to be verified for WHOLD and INPUT tax codes
}
      if UpperCase(FieldByName('TAXCODE').AsString) = 'GSTNC' then
        // ignore the tax component, as the tax is not being paid to the creditor
         iCheqreqTax := 0;

      if dmAxiom.Security.Cheque.ForceTally then
         neAmount.AsCurrency := neAmount.AsCurrency + iCheqreqAmount + iCheqreqTax;

      //if FieldByName('BILLNO').AsString <> '' then
      //begin
      //      qryLedger.FieldByName('TYPE').AsString := 'Bill';
      //      qryLedger.FieldByName('REFNO').AsString := FieldByName('BILLNO').AsString;
      //      qryLedger.FieldByName('LONGDESC').AsString := TableString('NMEMO','REFNO',FieldByName('BILLNO').AsString,'INV_NOTE');
      //
      //end
      //else
      if FieldByName('FILEID').AsString <> '' then
      begin
        qryLedger.FieldByName('TYPE').AsString := 'Matter';
        qryLedger.FieldByName('REFNO').AsString := FieldByName('FILEID').AsString;
        qryLedger.FieldByName('FILEID').AsString := FieldByName('FILEID').AsString;
        qryLedger.FieldByName('LONGDESC').AsString := MatterString(FieldByName('FILEID').AsString, 'MATLOCATE');
      end
      else
      begin
        qryLedger.FieldByName('TYPE').AsString := 'Ledger';
        qryLedger.FieldByName('CHART').AsString := FieldByName('LEDGER').AsString ;
        qryLedger.FieldByName('REFNO').AsString := LedgerString(FieldByName('LEDGER').AsString, 'COMPONENT_CODE_DISPLAY');
        qryLedger.FieldByName('LONGDESC').AsString := LedgerString(FieldByName('LEDGER').AsString, 'REPORT_DESC');
      end;
      qryLedger.FieldByName('REASON').AsString := FieldByName('DESCR').AsString;
      qryLedger.FieldByName('SUNDRYTYPE').AsString := FieldByName('SUNDRYTYPE').AsString;

      if ((SystemString('INVOICE_FROM_TRUST') = 'Y') and
         (TableString('CHEQREQ','NCHEQREQ', qryLedger.FieldByName('UNIQUEID').AsString,'NINVOICE') <> '')) then
      begin
         tvLedger.OptionsData.Editing := False;
         tvLedger.OptionsData.Inserting := False;
         tvLedger.OptionsData.Appending := False;
         tvLedger.OptionsData.Deleting := False;
      end;

      if (FieldByName('BILLED').AsString = 'Y') and (FieldByName('NMEMO').AsInteger > 0) then
      begin
        //qryLedger.FieldByName('AMOUNT').AsFloat := FieldByName('AMOUNT').AsFloat + FieldByName('TAX').AsFloat;
        qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount + iCheqreqTax;

        {
          Instead of hard coding the tax type for anticipated disbursements,
          we will simple hit the DefaultTax table and request the default tax
          for anticipated disbursements.

          BJ  07/01/2003
        }

        lsDefaultTax := GetDefaultTax('ChequeAntDisb', 'NOTAX');

        qryLedger.FieldByName('TAXCODE').AsString := lsDefaultTax;
        qryLedger.FieldByName('TAX').AsFloat := 0;
        qryLedger.FieldByName('BILLED').AsString := 'Y';
{
     Added 30.9.2002 GG

     Make the Tax Rate column Read-Only if converted from a billed cheqreq
}

{
     Modified 2.10.2002 GG

     Put this back the way it was until we resolve an issue with billing GSTNC cheqreqs.
}
{
     Modified 3.12.2002 GG

     Re-instated at the request of SAG
}
//   AES 24/1/2007
//        tvLedger.Columns[colTAXCODE].Properties.ReadOnly := True;
//        tvLedger.Columns[colTAXCODE].  Font.Color:= clGray;
{
     Modified 2.10.2002 GG

     Only for an anticipated disbursement - left out until confirmation that this is
     the correct way of determining that this cheqreq is for a disbursement.
}
{
        if (UpperCase(FieldByName('ANTD').AsString) = 'Y') then
        begin
          dbgrLedger.Columns[5].ReadOnly:= True;
          dbgrLedger.Columns[5].Font.Color:= clGray;
        end
        else
        begin
          dbgrLedger.Columns[5].ReadOnly:= False;
          dbgrLedger.Columns[5].Font.Color:= clWindowText;
        end
{}
      end
      else
      begin
        //qryLedger.FieldByName('AMOUNT').AsFloat := FieldByName('AMOUNT').AsFloat;
        qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount;
        qryLedger.FieldByName('TAXCODE').AsString := FieldByName('TAXCODE').AsString;
        //qryLedger.FieldByName('TAX').AsFloat := FieldByName('TAX').AsFloat;
        qryLedger.FieldByName('TAX').AsFloat :=  iCheqreqTax;
        qryLedger.FieldByName('BILLED').AsString := 'N';
{
     Added 30.9.2002 GG

     Make the Tax Rate column writable if converted from an un-billed cheqreq
}
{
     Modified 2.10.2002 GG

     Put this back the way it was until we resolve an issue with billing GSTNC cheqreqs.
}
{
     Modified 3.12.2002 GG

     Re-instated at the request of SAG
}

//   AES 24/1/2007
//        tvLedger.Columns[colTAXCODE].Properties.ReadOnly:= False;
//        dbgrLedger.Columns[colTAXCODE].Font.Color:= clWindowText;
      end;
      qryLedger.FieldByName('DEP_ACCOUNT_TYPE').AsString := FieldByName('DEP_ACCOUNT_TYPE').AsString;
      qryLedger.FieldByName('NDEPOSITACCOUNT').AsInteger := FieldByName('NDEPOSITACCOUNT').AsInteger;
      qryLedger.FieldByName('ANTICIPATED').AsString := FieldByName('ANTICIPATED').AsString;
      qryLedger.FieldByName('ORIGINAL_TX').AsString := 'Y';
      qryLedger.Post;

      qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
      qryLedgerTAXCODE.OnChange := qryLedgerTAXCODEChange;
      qryLedger.AfterInsert := qryLedgerAfterInsert;
      qryLedger.AfterPost := qryLedgerAfterPost;

      UpdateTotal;
      dbgrLedger.SetFocus;
//      dbgrLedger.SelectedIndex := colAMOUNT;
      tvLedgerAMOUNT.Focused := True;
      qryLedgerTYPE.OnChange := qryLedgerTYPEChange;
      qryLedger.AfterScroll := qryLedgerAfterScroll;
   end;
end;

procedure TfrmCheque.AutoChequeAdd(sFile, sLedger, sDesc, sBilled: string; cAmount: Currency; iNCheqReq: integer);
begin
  with qryLedger do
  begin
    Insert;
    if sFile <> '' then
    begin
      Edit;
      FieldByName('TYPE').AsString := 'Matter';
      Edit;
      FieldByName('REFNO').AsString := sFile;
      qryLedger.FieldByName('FILEID').AsString := sFile;
      FieldByName('LONGDESC').AsString := MatterString(sFile, 'MATLOCATE');
    end
    else
    begin
      Edit;
      FieldByName('TYPE').AsString := 'Ledger';
      FieldByName('REFNO').AsString := sLedger;
      FieldByName('LONGDESC').AsString := LedgerString(sLedger, 'REPORT_DESC');
    end;
    Edit;
    FieldByName('REASON').AsString := sDesc;
    FieldByName('AMOUNT').AsCurrency := cAmount;
    Edit;
    FieldByName('BILLED').AsString := sBilled;
    FieldByName('UNIQUEID').AsInteger := iNCheqReq;
    Post;
  end;
  UpdateTotal;
end;

procedure TfrmCheque.ChequeFromInvoice(NCheque: integer);
var
  iType : integer;
  qryDetails: TUniQuery;
  dAmount, dOwingPC : Double;
  sSQL, sTaxCode : string;
begin
   // This procedure sets up a Cheque Automagically from the Invoice identified by NCheque
   DefaultTax := GetDefaultTax('Invoice', 'NOTAX');

   qryDetails := TUniQuery.Create(Self);
   with qryDetails do
   begin
      Connection := dmAxiom.uniInsight;
      //SQL.Text := 'SELECT * FROM INVOICE, ALLOC WHERE ALLOC.NINVOICE = INVOICE.NINVOICE AND INVOICE.NINVOICE = ' + InttoStr(NCheque);
      iType := 0;
      if ((DefaultTax = 'NOTAX') OR (DefaultTax = 'N/A')) then
      BEGIN
          sSQL := 'SELECT NULL AS TAX_RATE, p.NINVOICE, P.ACCT, P.CREDITOR, P.DESCR, P.OWING, P.AMOUNT, 0 AS TAX, P.REFNO, P.NCREDITOR, -1 * (P.AMOUNT - P.OWING) AS U_AMOUNT, 0 AS U_TAX, -1 * P.AMOUNT AS T_AMOUNT, 0 AS T_TAX, MIN(A.NALLOC), TAXCODE ';
          sSQL := sSQL + 'FROM INVOICE P, ALLOC A WHERE A.NINVOICE = P.NINVOICE AND P.ACCT = ' + QuotedStr(dmAxiom.Entity) + ' AND P.NINVOICE = ' + InttoStr(NCheque) + ' ';
          sSQL := sSQL + 'GROUP BY p.NINVOICE, P.ACCT, P.CREDITOR, P.DESCR, P.OWING, P.AMOUNT, P.REFNO, P.NCREDITOR, (P.AMOUNT - P.OWING), P.AMOUNT, TAXCODE ';          SQL.Text := sSQL;
      END
      ELSE
      BEGIN
          //SQL.Text := 'SELECT * FROM INVOICE, ALLOC WHERE ALLOC.NINVOICE = INVOICE.NINVOICE AND INVOICE.NINVOICE = ' + InttoStr(NCheque);
          sSQL := 'SELECT P.TAX_RATE, p.NINVOICE, P.ACCT, P.CREDITOR, P.DESCR, P.OWING, P.AMOUNT, P.TAX, P.REFNO, P.NCREDITOR, SUM(P.U_AMOUNT) AS U_AMOUNT, SUM(P.U_TAX) AS U_TAX, SUM(P.T_AMOUNT) AS T_AMOUNT, SUM(P.T_TAX) AS T_TAX, P.TAXCODE ';
          sSQL := sSQL + 'FROM ';
          sSQL := sSQL + '(SELECT (R.RATE) AS TAX_RATE,  I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, 0 AS U_AMOUNT, 0 AS U_TAX, T.AMOUNT AS T_AMOUNT, T.TAX AS T_TAX, (R.COMMENCE), T.TAXCODE ';
          sSQL := sSQL + 'FROM INVOICE I ';
          sSQL := sSQL + 'INNER JOIN TRANSITEM T ON I.NINVOICE = T.NOWNER AND T.OWNER_CODE = ''INVOICE'' ';
          sSQL := sSQL + 'INNER JOIN MATTER M ON T.NMATTER = M.NMATTER ';
          sSQL := sSQL + 'INNER JOIN CHART C ON T.CHART = C.CODE AND C.CHARTTYPE NOT IN (''CRED'',''GSTINP'') ';
          sSQL := sSQL + 'LEFT OUTER JOIN TAXRATE R ON t.taxcode = r.taxcode AND  ((trunc(r.commence) >= :commence) and (trunc(r.commence) <= :commence))';
          sSQL := sSQL + 'where I.ACCT = ' + QuotedStr(dmAxiom.Entity) + ' AND I.NINVOICE = ' + InttoStr(NCheque) + ' ';
 //         sSQL := sSQL + 'group by ABS(R.RATE), I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, T.TAXCODE, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, T.AMOUNT, T.TAX ';
 {         sSQL := sSQL + 'UNION ALL ';
          sSQL := sSQL + 'SELECT ABS(R.RATE) AS TAX_RATE,  I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, T.AMOUNT AS U_AMOUNT, T.TAX AS U_TAX, 0 AS T_AMOUNT, 0 AS T_TAX, MAX(R.COMMENCE) ';
          sSQL := sSQL + 'FROM INVOICE I ';
          sSQL := sSQL + 'INNER JOIN TRANSITEM T ON I.NINVOICE = T.NINVOICE AND T.OWNER_CODE = ''CHEQUE'' ';
          sSQL := sSQL + 'INNER JOIN TRANSITEM S ON I.NINVOICE = S.NINVOICE AND S.OWNER_CODE = ''INVOICE'' ';
          sSQL := sSQL + 'INNER JOIN MATTER M ON S.NMATTER = M.NMATTER ';
          sSQL := sSQL + 'INNER JOIN CHART C ON T.CHART = C.CODE AND C.CHARTTYPE = ''CRED'' ';
          sSQL := sSQL + 'LEFT OUTER JOIN TAXRATE R ON T.TAXCODE = R.TAXCODE AND R.COMMENCE <= :COMMENCE ';
          sSQL := sSQL + 'where I.ACCT = ' + QuotedStr(dmAxiom.Entity) + ' AND I.NINVOICE = ' + InttoStr(NCheque) + ' ';  }
          sSQL := sSQL + {'group by ABS(R.RATE),  I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, T.AMOUNT, T.TAX} ') P ';
          sSQL := sSQL + 'GROUP BY P.TAX_RATE, p.NINVOICE, P.ACCT, P.CREDITOR, P.DESCR, P.TAXCODE, P.OWING, P.AMOUNT, P.TAX, P.REFNO,P.NCREDITOR ';
          SQL.Text := sSQL;
          ParamByName('COMMENCE').AsDateTime := Trunc(Now);
      END;

      if dmAxiom.RunningIde then
          SQL.SaveToFile('c:\tmp\CHEQUEmINVOICE.sql');
      Open;

      if (qryDetails.IsEmpty = True) then
      begin
          // it must be a GL invoice
          //Close;
          //SQL.Text := 'SELECT * FROM INVOICE WHERE INVOICE.NINVOICE = ' + InttoStr(NCheque);
          //Open;
          Close;
          if ((DefaultTax = 'NOTAX') OR (DefaultTax = 'N/A')) then
          BEGIN
              sSQL := 'SELECT NULL AS TAX_RATE, p.NINVOICE, P.ACCT, P.CREDITOR, P.DESCR, P.OWING, P.AMOUNT, 0 AS TAX, P.REFNO, P.NCREDITOR, -1 * (P.AMOUNT - P.OWING) AS U_AMOUNT, 0 AS U_TAX, -1 * P.AMOUNT AS T_AMOUNT, 0 AS T_TAX, ''NOTAX'' AS TAXCODE ';
              sSQL := sSQL + 'FROM INVOICE P WHERE P.ACCT = ' + QuotedStr(dmAxiom.Entity) + ' AND P.NINVOICE = ' + InttoStr(NCheque) + ' ';
              SQL.Text := sSQL;
          END
          ELSE
          BEGIN
              iType := 1;
             //sSQL := 'SELECT P.TAX_RATE, p.NINVOICE, P.ACCT, P.CREDITOR, P.DESCR, P.OWING, P.AMOUNT, P.TAX, P.REFNO,P.NCREDITOR, SUM(P.U_AMOUNT) AS U_AMOUNT, SUM(P.U_TAX) AS U_TAX, SUM(P.T_AMOUNT) AS T_AMOUNT, SUM(P.T_TAX) AS T_TAX ';
             // sSQL := sSQL + 'FROM ';
              //sSQL := sSQL + '(SELECT ABS(R.RATE) AS TAX_RATE,  I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, 0 AS U_AMOUNT, 0 AS U_TAX, T.AMOUNT AS T_AMOUNT, T.TAX AS T_TAX, MAX(R.COMMENCE) ';
              sSQL := 'SELECT R.RATE AS TAX_RATE,  I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, ';
              sSQL := sSQL + '(T.AMOUNT - ((I.OWING/I.AMOUNT) * T.AMOUNT)) AS U_AMOUNT, (T.TAX - ((I.OWING/I.AMOUNT) * T.TAX)) AS U_TAX, ';
//              sSQL := sSQL + 'case when i.amount > 0 then t.amount else t.amount * -1 end AS t_amount, ';
//              sSQL := sSQL + 'case when i.amount > 0 then t.tax else t.tax * -1 end AS t_tax, MAX(R.COMMENCE) ';
              sSQL := sSQL + 't.amount as t_amount , t.tax as t_tax, (R.COMMENCE), T.TAXCODE ';
              sSQL := sSQL + 'FROM INVOICE I ';
              sSQL := sSQL + 'INNER JOIN TRANSITEM T ON I.NINVOICE = T.NOWNER AND T.OWNER_CODE = ''INVOICE'' ';
              sSQL := sSQL + 'INNER JOIN CHART C ON T.CHART = C.CODE AND C.CHARTTYPE NOT IN (''CRED'',''GSTINP'') ';
              sSQL := sSQL + 'LEFT OUTER JOIN TAXRATE R ON T.TAXCODE = R.TAXCODE AND  ((trunc(r.commence) >= :commence) and (trunc(r.commence) <= :commence))';
              sSQL := sSQL + 'where I.ACCT = ' + QuotedStr(dmAxiom.Entity) + ' AND I.NINVOICE = ' + InttoStr(NCheque) + ' ';
//              sSQL := sSQL + 'group by R.RATE,  I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, T.TAXCODE, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, T.AMOUNT, T.TAX ';
              //sSQL := sSQL + 'UNION ALL ';
              //sSQL := sSQL + 'SELECT ABS(R.RATE) AS TAX_RATE,  I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, T.AMOUNT AS U_AMOUNT, T.TAX AS U_TAX, 0 AS T_AMOUNT, 0 AS T_TAX, MAX(R.COMMENCE) ';
              //sSQL := sSQL + 'FROM INVOICE I ';
              //sSQL := sSQL + 'INNER JOIN TRANSITEM T ON I.NINVOICE = T.NINVOICE AND T.OWNER_CODE = ''CHEQUE'' ';
              //sSQL := sSQL + 'INNER JOIN CHART C ON T.CHART = C.CODE AND C.CHARTTYPE = ''CRED'' ';
              //sSQL := sSQL + 'LEFT OUTER JOIN TAXRATE R ON T.TAXCODE = R.TAXCODE AND R.COMMENCE <= :COMMENCE ';
              //sSQL := sSQL + 'where I.ACCT = ' + QuotedStr(dmAxiom.Entity) + ' AND I.NINVOICE = ' + InttoStr(NCheque) + ' ';
              //sSQL := sSQL + 'group by ABS(R.RATE),  I.NINVOICE, I.ACCT, I.CREDITOR, I.DESCR, I.OWING, I.AMOUNT, I.TAX, I.REFNO, I.NCREDITOR, T.AMOUNT, T.TAX) P ';
              //sSQL := sSQL + 'GROUP BY P.TAX_RATE, p.NINVOICE, P.ACCT, P.CREDITOR, P.DESCR, P.OWING, P.AMOUNT, P.TAX, P.REFNO,P.NCREDITOR ';
              SQL.Text := sSQL;
              ParamByName('COMMENCE').AsDateTime := Trunc(Now);
              //SQL.Text := 'SELECT * FROM INVOICE WHERE INVOICE.NINVOICE = ' + InttoStr(NCheque);
          END;
          if dmAxiom.RunningIde then
              SQL.SaveToFile('c:\tmp\CHEQUEINVOICE.sql');
          Open;
      end;
   end;

   if (qryDetails.IsEmpty = False) then
   begin
      if (qryDetails.FieldByName('ACCT').AsString = dmAxiom.Entity) then
      qryDetails.First;
      while not qryDetails.Eof do
      begin
         {if cbBank.Items.Count = 0 then
           AddBanks(cbBank, 'G,T,C');
         cbBank.ItemIndex := cbBank.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
         cbBankClick(Self);
         if cbAuthBy.Items.Count = 0 then
           cbAuthBy.Items := dmAxiom.Employees;
         cbAuthBy.ItemIndex := cbAuthBy.Items.IndexOf(dmAxiom.UserID);
         cbAuthBy.OnClick(Self);
         tbPayee.Text := qryDetails.FieldByName('CREDITOR').AsString; //TableString('PHONEBOOK', 'SEARCH', qryDetails.FieldByName('CREDITOR').AsString, 'LONGNAME');
         tbDesc.Text := qryDetails.FieldByName('DESCR').AsString;
//       end;
         qryLedgerTYPE.OnChange := nil;
         qryLedgerAMOUNT.OnChange := nil;
         qryLedgerTAXCODE.OnChange := nil;
         qryLedger.AfterInsert := nil;
         qryLedger.AfterPost := nil;
         with qryLedger do
         begin
            Insert;
            FieldByName('TYPE').AsString := 'Invoice';
            FieldByName('REFNO').AsString := qryDetails.FieldByName('REFNO').AsString;
            FieldByName('LONGDESC').AsString := qryDetails.FieldByName('CREDITOR').AsString;
            FieldByName('REASON').AsString := qryDetails.FieldByName('DESCR').AsString;
            FieldByName('AMOUNT').AsFloat := qryDetails.FieldByName('OWING').AsFloat;
            FieldByName('NCREDITOR').AsInteger := qryDetails.FieldByName('NCREDITOR').AsInteger;
            if qryDetails.FindField('FILEID') <> nil then
               FieldByName('FILEID').AsString := qryDetails.FieldByName('FILEID').AsString;
            Edit;  }
        if (qryDetails.FieldByName('ACCT').AsString = dmAxiom.Entity) then
        begin
  //    if not Created then
  //    begin
  //      CreateCheque;
            dOwingPC := qryDetails.FieldByName('OWING').AsFloat / qryDetails.FieldByName('AMOUNT').AsFloat;
//           if cbBank.Items.Count = 0 then
//             AddBanks(cbBank, 'G,T,C');
            cbBank.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
            cbBankPropertiesChange(Self);
//         if cbAuthBy.Items.Count = 0 then
//           cbAuthBy.Text := dmAxiom.Employees;
            cbAuthBy.Text := dmAxiom.UserID;
//         cbAuthBy.OnClick(Self);
           tbPayee.Text := qryDetails.FieldByName('CREDITOR').AsString; //TableString('PHONEBOOK', 'SEARCH', qryDetails.FieldByName('CREDITOR').AsString, 'LONGNAME');
           tbDesc.Text := qryDetails.FieldByName('DESCR').AsString;
  //       end;
           qryLedgerTYPE.OnChange := nil;
           qryLedgerAMOUNT.OnChange := nil;
           qryLedgerTAXCODE.OnChange := nil;
           qryLedger.AfterInsert := nil;
           qryLedger.AfterPost := nil;
           with qryLedger do
           begin
              Insert;
              if (qryDetails.FieldByName('OWING').AsFloat <> 0) then
                  dOwingPC := qryDetails.FieldByName('OWING').AsFloat / qryDetails.FieldByName('AMOUNT').AsFloat
              else
                  dOwingPC := 0;
              FieldByName('TYPE').AsString := 'Invoice';
              FieldByName('REFNO').AsString := qryDetails.FieldByName('REFNO').AsString;
              FieldByName('LONGDESC').AsString := qryDetails.FieldByName('CREDITOR').AsString;
              FieldByName('REASON').AsString := qryDetails.FieldByName('DESCR').AsString;
              FieldByName('AMOUNT').AsFloat := qryDetails.FieldByName('OWING').AsFloat;
              FieldByName('NCREDITOR').AsInteger := qryDetails.FieldByName('NCREDITOR').AsInteger;
              if qryDetails.FindField('FILEID') <> nil then
                 FieldByName('FILEID').AsString := qryDetails.FieldByName('FILEID').AsString;
              FieldByName('NINVOICE').AsInteger := qryDetails.FieldByName('NINVOICE').AsInteger;
              FieldByName('TAXCODE').AsString := qryDetails.FieldByName('TAXCODE').AsString;
              Edit;
  {
    Added 17.12.2002 GG

    Make the Tax Rate column Read-Only if converted from a billed cheqreq
  }
//              tvLedger.Columns[colTAXCODE].Properties.ReadOnly:= True;
  //      dbgrLedger.Columns[colTAXCODE].Font.Color:= clGray;
  {
    Modified 20.12.2002 GG

    Temp mod to allow Invoice cheques to come up with an NCR tax code instead of NOTAX.

    A better way of doing this needs to be designed, and followed up on in the New Year.

        FieldByName('TAXCODE').AsString := 'NOTAX';  NCR
  }
       {     DefaultTax := GetDefaultTax('Invoice', 'NOTAX');
            FieldByName('TAXCODE').AsString := DefaultTax;
            Edit;
            qryLedger.FieldByName('UNIQUEID').AsInteger := NCheque;
            FieldByName('TAX').AsFloat := qryDetails.FieldByName('TAX').AsFloat;
            FieldByName('BAS_TAX').AsFloat := qryDetails.FieldByName('TAX').AsFloat;
            Post;
         end;
         neAmount.AsCurrency := neAmount.AsCurrency + qryDetails.FieldByName('OWING').AsFloat;
         qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
         qryLedgerTAXCODE.OnChange := qryLedgerTAXCODEChange;
         qryLedger.AfterInsert := qryLedgerAfterInsert;
         qryLedger.AfterPost := qryLedgerAfterPost;
         UpdateTotal;
         tvLedgerAMOUNT.Focused := True;
         qryLedgerTYPE.OnChange := qryLedgerTYPEChange;
      end
      else
      begin
         MsgErr('Invoice being paid does not belong to the currently selected Entity.'+chr(13)+
                'Change Entity to ' + qryDetails.FieldByName('ACCT').AsString +' - '+
                TableString('ENTITY','CODE',qryDetails.FieldByName('ACCT').AsString,'NAME') +
                ' to pay this invoice.' );
         Self.Close;  }

//              DefaultTax := GetDefaultTax('Invoice', 'NOTAX');

{
              if ((DefaultTax = 'NOTAX') OR (DefaultTax = 'N/A')) then
                  FieldByName('TAXCODE').AsString := DefaultTax
              else
              begin
                  sTaxCode := TaxCode('BOTH', qryDetails.FieldByName('TAXCODE').AsString, Now);
                  FieldByName('TAXCODE').AsString := sTaxCode;
              end;
 }
              Edit;
              qryLedger.FieldByName('UNIQUEID').AsInteger := NCheque;
              // 11 Feb 2019 DW handle Invoice GST defaul tax setting
              if dOwingPC <> 0 then
              begin
                //qryLedger.FieldByName('AMOUNT').AsCurrency := abs(qryDetails.FieldByName('T_AMOUNT').AsFloat) - abs(qryDetails.FieldByName('U_AMOUNT').AsFloat);
                //qryLedger.FieldByName('TAX').AsFloat := abs(qryDetails.FieldByName('T_TAX').AsFloat) - abs(qryDetails.FieldByName('U_TAX').AsFloat);
                //if qryDetails.FieldByName('T_AMOUNT').AsFloat > 0 then
               // begin
               //   qryLedger.FieldByName('AMOUNT').AsCurrency := (qryDetails.FieldByName('T_AMOUNT').AsFloat - qryDetails.FieldByName('U_AMOUNT').AsFloat);
                //  qryLedger.FieldByName('TAX').AsFloat :=(qryDetails.FieldByName('T_TAX').AsFloat - qryDetails.FieldByName('U_TAX').AsFloat);
                //end
               // else
               // begin
                  qryLedger.FieldByName('AMOUNT').AsCurrency :=-1 * (qryDetails.FieldByName('T_AMOUNT').AsFloat - qryDetails.FieldByName('U_AMOUNT').AsFloat);
                  qryLedger.FieldByName('TAX').AsFloat := -1 * (qryDetails.FieldByName('T_TAX').AsFloat - qryDetails.FieldByName('U_TAX').AsFloat);
               // end;
              end
              else
              begin
                qryLedger.FieldByName('AMOUNT').AsCurrency := 0;
                qryLedger.FieldByName('TAX').AsFloat := 0;
              end;
              //    FieldByName('TAX').AsFloat := qryDetails.FieldByName('TAX').AsFloat
              //FieldByName('BAS_TAX').AsFloat := abs(qryDetails.FieldByName('T_TAX').AsFloat) - abs(qryDetails.FieldByName('U_TAX').AsFloat);
              //if qryDetails.FieldByName('T_AMOUNT').AsFloat > 0 then
              //    FieldByName('BAS_TAX').AsFloat := (qryDetails.FieldByName('T_TAX').AsFloat - qryDetails.FieldByName('U_TAX').AsFloat);
              //else
                  FieldByName('BAS_TAX').AsFloat := -1 * (qryDetails.FieldByName('T_TAX').AsFloat - qryDetails.FieldByName('U_TAX').AsFloat);
              Post;
           end;
           //neAmount.AsCurrency := neAmount.AsCurrency + (abs(qryDetails.FieldByName('T_AMOUNT').AsFloat + qryDetails.FieldByName('T_TAX').AsFloat)) - (abs(qryDetails.FieldByName('U_AMOUNT').AsFloat + qryDetails.FieldByName('U_TAX').AsFloat));
           //if qryDetails.FieldByName('T_AMOUNT').AsFloat > 0 then
           //   neAmount.AsCurrency := neAmount.AsCurrency + (qryDetails.FieldByName('T_AMOUNT').AsCurrency + qryDetails.FieldByName('T_TAX').AsCurrency - (qryDetails.FieldByName('U_AMOUNT').AsCurrency + qryDetails.FieldByName('U_TAX').AsCurrency))
           //else
              neAmount.AsCurrency := neAmount.AsCurrency + (-1 * (qryDetails.FieldByName('T_AMOUNT').AsCurrency + qryDetails.FieldByName('T_TAX').AsCurrency - (qryDetails.FieldByName('U_AMOUNT').AsCurrency + qryDetails.FieldByName('U_TAX').AsCurrency)));
           qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
           qryLedgerTAXCODE.OnChange := qryLedgerTAXCODEChange;
           qryLedger.AfterInsert := qryLedgerAfterInsert;
           qryLedger.AfterPost := qryLedgerAfterPost;
           UpdateTotal;
           tvLedgerAMOUNT.Focused := True;
           qryLedgerTYPE.OnChange := qryLedgerTYPEChange;
        end
        else
        begin
           MsgErr('Invoice being paid does not belong to the currently selected Entity.'+chr(13)+
                  'Change Entity to ' + qryDetails.FieldByName('ACCT').AsString +' - '+
                  TableString('ENTITY','CODE',qryDetails.FieldByName('ACCT').AsString,'NAME') +
                  ' to pay this invoice.' );
           Self.Close;
        end;
        qryDetails.Next;
      end;
      qryDetails.Close;
      qryDetails.Free;
   end;
end;

procedure TfrmCheque.ChequeFromInvoiceInfoTrack(ANCreditor: integer);
var
  bProceed: boolean;
  StatementFileName,
  LExt,
  AXLSFile: string;
  XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  X, Y, line: integer;
  f: file of Byte;
  size: Longint;
const
   xlCellTypeLastCell = $0000000B;
begin
   bProceed := True;
   StatementFileName := SystemString('INFOTRACK_INV_PATH')+'\bhl sample.csv';
   if not FileExists(StatementFileName) then
   begin
      MsgErr('The import file does not exist');
      bProceed := False;
   end;

   if bProceed then
   begin
      //if cbBank.Items.Count = 0 then
       //  AddBanks(cbBank, 'G,T,C');
      cbBank.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
      cbBankPropertiesChange(Self);
//      if cbAuthBy.Items.Count = 0 then
//         cbAuthBy.Text := dmAxiom.Employees;
      cbAuthBy.Text := dmAxiom.UserID;
//      cbAuthBy.OnClick(Self);

      tbPayee.Text :=  TableString('PHONEBOOK', 'NCREDITOR', ANCreditor, 'NAME');
      tbDesc.Text := 'InfoTrack Invoices';

      AssignFile(f, StatementFileName);
      Reset(f);
      try
         size := FileSize(f);
      finally
         CloseFile(f);
      end;

      if (size > 0) then
      begin
         LExt := ExtractFileExt(StatementFileName);
         if (UpperCase(Copy(LExt, 2, Length(LExt)-1)) = 'CSV') or
            (UpperCase(Copy(LExt, 2, Length(LExt)-1)) = 'XLSX') or
            (UpperCase(Copy(LExt, 2, Length(LExt)-1)) = 'XLS') then
         begin
            AXLSFile := StatementFileName;

          //load the tab delimited txt file
            try
               // Create Excel-OLE Object
               XLApp := CreateOleObject('Excel.Application');
               try
                  // Hide Excel
                  XLApp.Visible := False;

                  //Open the Workbook
                  XLApp.Workbooks.Open(AXLSFile);

                  Sheet := XLApp.Workbooks[1].WorkSheets[1];
                  Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];

                  //In order to know the dimension of the WorkSheet, i.e the number of rows
                  //and the number of columns, we activate the last non-empty cell of it

                  Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
                  //Get the value of the last row
                  x :=XLApp.ActiveCell.Row;
                  // Get the value of the last column
                  y := XLApp.ActiveCell.Column;

                  // Assign the Variant associated with the WorkSheet to the Delphi Variant
                  RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[X,Y]].Value;

                  Application.ProcessMessages;

                  qryLedgerTYPE.OnChange := nil;
                  qryLedgerAMOUNT.OnChange := nil;
                  qryLedgerTAXCODE.OnChange := nil;
                  qryLedger.AfterInsert := nil;
                  qryLedger.AfterPost := nil;
                  //Define the loop for filling in the Grid
                  line := 1;
                  repeat
                     if (TableString('INVOICE','REFNO', string(RangeMatrix[line, 1]), 'ACCT')  =
                        dmAxiom.Entity) then
                     begin
                        with qryLedger do
                        begin
                           Insert;
                           FieldByName('TYPE').AsString := 'Invoice';
                           FieldByName('REFNO').AsString := RangeMatrix[line, 1];
                           FieldByName('LONGDESC').AsString := TableString('PHONEBOOK','NCREDITOR', ANCreditor, 'NAME');
                           FieldByName('REASON').AsString := RangeMatrix[line, 5];
                           FieldByName('AMOUNT').AsFloat := RangeMatrix[line, 13];
                           FieldByName('NCREDITOR').AsInteger := ANCreditor;
                           Edit;

                           tvLedger.Columns[colTAXCODE].Properties.ReadOnly:= True;

                           DefaultTax := GetDefaultTax('Invoice', 'NOTAX');
                           FieldByName('TAXCODE').AsString := DefaultTax;
                           Edit;
                           qryLedger.FieldByName('UNIQUEID').AsInteger := TableInteger('INVOICE','REFNO', string(RangeMatrix[line, 1]), 'ninvoice' );
                           FieldByName('TAX').AsFloat := 0;
                           FieldByName('BAS_TAX').AsFloat := RangeMatrix[line, 14];
                           Post;
                        end;

                        neAmount.AsCurrency := neAmount.AsCurrency + RangeMatrix[line, 13];
                     end;
                     Inc(line, 1);
                  until line > x;

                  qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
                  qryLedgerTAXCODE.OnChange := qryLedgerTAXCODEChange;
                  qryLedger.AfterInsert := qryLedgerAfterInsert;
                  qryLedger.AfterPost := qryLedgerAfterPost;
                  UpdateTotal;
                  tvLedgerAMOUNT.Focused := True;
                  qryLedgerTYPE.OnChange := qryLedgerTYPEChange;

                  // Unassign the Delphi Variant Matrix
                  RangeMatrix := Unassigned;
               finally
                  // Quit Excel
                  if not VarIsEmpty(XLApp) then
                  begin
                     XLApp.DisplayAlerts := False;
                     XLApp.Quit;
                     XLAPP := Unassigned;
                     Sheet := Unassigned;
                  end;
               end;
            finally
               Application.ProcessMessages;
            end;
         end
      end
      else
         MsgErr('The import file is empty');
   end;

{   else
   begin
      MsgErr('Invoice being paid does not belong to the currently selected Entity.'+chr(13)+
             'Change Entity to ' + qryDetails.FieldByName('ACCT').AsString +' - '+
             TableString('ENTITY','CODE',qryDetails.FieldByName('ACCT').AsString,'NAME') +
             ' to pay this invoice.' );
      Self.Close;
   end; }
end;


procedure TfrmCheque.ChequeFromPayCashbook(NCheque: integer);
var
  qryDetails: TUniQuery;
  qryCheqReq: TUniQuery;
begin
   // This procedure sets up a Cheque Automagically from the cheque identified by NCheque
   FromCheque := True;
   qryDetails := TUniQuery.Create(Self);
   with qryDetails do
   begin
      Connection := dmAxiom.uniInsight;
      SQL.Text := 'SELECT * FROM CHEQUE WHERE NCHEQUE = ' + InttoStr(NCheque);
      Open;
   end;

   if not qryDetails.IsEmpty then
   begin
      cbBank.Text := qryDetails.FieldByName('ACCT').AsString;  //ItemIndex := cbBank.Items.IndexOf(qryDetails.FieldByName('ACCT').AsString);
      cbBankClick(Self);
      cbBankChange(Self);
      cbBank.Enabled := False;
      tbPayee.Text := qryDetails.FieldByName('PAYEE').AsString;
      tbDesc.Text := qryDetails.FieldByName('DESCR').AsString;
      cbAuthBy.Text := qryDetails.FieldByName('REQBY').AsString;   //.ItemIndex := cbAuthBy.Items.IndexOf(qryDetails.FieldByName('REQBY').AsString);
//      cbAuthBy.OnClick(Self);
      cmbPrinter.ItemIndex := cmbPrinter.Items.IndexOf(FChequePrinter);
      cmbPrinterChange(Self);

      with qryLedger do
      begin
         qryCheqReq := TUniQuery.Create(Self);
         qryCheqReq.SQL.Text := 'SELECT * FROM CHEQREQ WHERE NCHEQUE = '+ InttoStr(NCheque);
         qryCheqReq.Open;
         while not qryCheqReq.Eof do
         begin
            qryLedger.Insert;
            if qryCheqReq.FieldByName('FILEID').AsString <> '' then
            begin
               qryLedger.FieldByName('TYPE').AsString := 'Matter';
               qryLedger.FieldByName('REFNO').AsString := qryCheqReq.FieldByName('FILEID').AsString;
               qryLedger.FieldByName('LONGDESC').AsString := MatterString(qryCheqReq.FieldByName('FILEID').AsString,'TITLE');
            end
            else
            begin
               qryLedger.FieldByName('TYPE').AsString := 'Ledger';
               qryLedger.FieldByName('REFNO').AsString := qryCheqReq.FieldByName('LEDGER').AsString;
               qryLedger.FieldByName('LONGDESC').AsString := TableString('CHART','CODE',qryCheqReq.FieldByName('DESCR').AsString,'DESCR');
            end;
            qryLedger.FieldByName('REASON').AsString := qryCheqReq.FieldByName('DESCR').AsString;
            qryLedger.FieldByName('TAXCODE').AsString := qryCheqReq.FieldByName('TAXCODE').AsString;
            qryLedger.Edit;
            qryLedger.FieldByName('AMOUNT').AsString := qryCheqReq.FieldByName('AMOUNT').AsString;
            qryLedger.Edit;
            qryLedger.FieldByName('TAX').AsString := qryCheqReq.FieldByName('TAX').AsString;
            qryLedger.FieldByName('SUNDRYTYPE').AsString := qryCheqReq.FieldByName('SUNDRYTYPE').AsString;
            qryCheqReq.Next;
         end;
      end;
   end;

   neAmount.AsCurrency := qryDetails.FieldByName('AMOUNT').AsFloat;
   qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
   qryLedgerTAXCODE.OnChange := qryLedgerTAXCODEChange;
   qryLedger.AfterInsert := qryLedgerAfterInsert;
   qryLedger.AfterPost := qryLedgerAfterPost;
   UpdateTotal;
   tvLedgerAMOUNT.Focused := True;
   qryLedgerTYPE.OnChange := qryLedgerTYPEChange;

   qryDetails.Close;
   qryDetails.Free;
   DisableScreen(False);
end;

procedure TfrmCheque.DisableScreen(bEnabled: boolean);
begin
   dtpDate.Enabled := bEnabled;
   cbBank.Enabled := bEnabled;
   cbAuthBy.Enabled := bEnabled;
   tbChqno.Enabled := bEnabled;
   tbDesc.Enabled := bEnabled;
   dbgrLedger.Enabled := bEnabled;
   tbPayee.Enabled := bEnabled;
   tbPayee.Properties.Buttons[0].Enabled := bEnabled;
//    btnPhoneBook.Enabled := bEnabled;
   cbBankTransfer.Enabled := bEnabled;
   chkPrint.Enabled := bEnabled;
   neAmount.Enabled := bEnabled;
   chkNoExit.Enabled := bEnabled;
   cmbPrinter.Enabled := bEnabled;
   edtImport.Enabled := bEnabled;
   cbBankImport.Enabled := bEnabled;
   btnQuery.Enabled := bEnabled;
   btnImport.Enabled := bEnabled;
   rgType.Enabled := bEnabled;
end;

procedure TfrmCheque.btnPhoneBookClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
  begin
    tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
    sPayee := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
    sNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsString;
    lblName.Caption := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;

    lblAddress.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('full_ADDRESS').AsString;
{    if (frmPhoneBookSearch.qryPhoneBook.FieldbyName('WHICHADDRESS').AsString = '') or (frmPhoneBookSearch.qryPhoneBook.FieldbyName('WHICHADDRESS').AsString = 'S') then
      begin
        lblAddress.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('ADDRESS').AsString;
        lblAddress1.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('SUBURB').AsString + ' ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('STATE').AsString + ' ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTCODE').AsString;
        lblCountry.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('COUNTRY').AsString;
      end;
    if (frmPhoneBookSearch.qryPhoneBook.FieldbyName('WHICHADDRESS').AsString = 'P') then
      begin
        lblAddress.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALADDRESS').AsString;
        lblAddress1.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALSUBURB').AsString + ' ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALSTATE').AsString + ' ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALPOSTCODE').AsString;
        lblCountry.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALCOUNTRY').AsString;
      end;
    if (frmPhoneBookSearch.qryPhoneBook.FieldbyName('WHICHADDRESS').AsString = 'D') then
      begin
        lblAddress.Caption := 'DX ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('DX').AsString;
        lblAddress1.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('DXLOC').AsString;
      end;   }
    tbDesc.SetFocus;
  end;
end;

procedure TfrmCheque.qryLedgerAfterInsert(DataSet: TDataSet);
begin
   if FGridUpdatingByTemplate then
      exit;

  if AllocType = '' then
  begin
    if (qryBank.FieldByName('TRUST').AsString = 'T') OR (qryBank.FieldByName('TRUST').AsString = 'G') then
      qryLedger.FieldByName('TYPE').AsString := 'Matter'
    else
      qryLedger.FieldByName('TYPE').AsString := 'Ledger';
  end
  else
    qryLedger.FieldByName('TYPE').AsString := AllocType;
  qryLedger.Edit;
  qryLedger.FieldByName('REASON').AsString := DefaultDescr;
  if qryLedger.FieldByName('BILLED').Value = Null then
    qryLedger.FieldByName('BILLED').AsString := 'N';
{
  Code modified 17.12.2002 GG

  Use the tax code from the prvious line, if one exists, otherwise use defaults

  qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
}
  if qryLedger.FieldByName('TYPE').AsString = 'Matter' then
  begin
    if fLedgerTaxCode= '' then
      qryLedger.FieldByName('TAXCODE').AsString:= DefaultTax
    else
       try
          if ((VarIsNull(tvLedgerANTICIPATED.EditValue)) or
             (string(tvLedgerANTICIPATED.EditValue) = 'N') or
             (string(tvLedgerANTICIPATED.EditValue) = '')) then
             qryLedger.FieldByName('TAXCODE').AsString:= DefaultTax
          else
            qryLedger.FieldByName('TAXCODE').AsString:= fLedgerTaxCode;
       except
          qryLedger.FieldByName('TAXCODE').AsString:= DefaultTax;
       end;
  end
  else
    // TYPE = 'Ledger'
  begin
{
  Modified 20.12.2002 GG

  Temp mod to allow Invoice cheques to come up with an NCR tax code instead of NOTAX.
  A better way of doing this needs to be designed, and followed up on in the New Year.
    qryLedger.FieldByName('TAXCODE').AsString:= 'NOTAX'
}
    try
       if (fLedgerTaxCode = '') then
         qryLedger.FieldByName('TAXCODE').AsString:= GetDefaultTax('ChequeLedger', 'NCR')
       else
         if (VarIsNull(tvLedgerANTICIPATED.EditValue)) or
            (string(tvLedgerANTICIPATED.EditValue) = 'N') or
            (string(tvLedgerANTICIPATED.EditValue) = '') then
            qryLedger.FieldByName('TAXCODE').AsString:= DefaultTax
          else
            qryLedger.FieldByName('TAXCODE').AsString:= fLedgerTaxCode;
    except
       //
    end;
  end;
  qryLedger.FieldByName('ANTICIPATED').AsString := 'N';
  qryLedger.FieldByName('ORIGINAL_TX').AsString := 'N'; 
end;

procedure TfrmCheque.dbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmCheque.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;


procedure TfrmCheque.popRemoveClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmCheque.popEditClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Edit;
end;


procedure TfrmCheque.rgTypeClick(Sender: TObject);
begin
   NextChqno;
   grpDirectDebit.Visible := (GetEnforceBSBDD(cbBank.Text) = 'Y') AND (rgType.ItemIndex = 1);
end;


procedure TfrmCheque.FormCreate(Sender: TObject);
var
  frmProcess: TfrmProcess;
begin
   sNName := '';
   sPayee := '';
   LastBank := '';
   DefaultDescr := '';
   FCurrentTemplateDescr := '';
   FGridUpdatingByTemplate := false;
   FromCheque := False;
   RestoreScreenSettings;
   FNCheque := -1;

   lblBankName.AutoSize := TRUE;
   lblAuthByName.AutoSize := TRUE;

   dmAxiom.qryCurrencyList.Open;
   dmAxiom.qryBankList.Open;

   if dmAxiom.qryEmplyeeList.Active = False then
   dmAxiom.qryEmplyeeList.Open;

 //  qryDepartment.Open;
   DefaultTax := GetDefaultTax('Cheque', 'NOTAX');
   // 27/04/2004 Tony
   // Obtain default tax for DefaultInvoice
   qryGetTaxCode.Params[0].AsString := 'Invoice';
   qryGetTaxCode.Open;
   if not varIsNull(qryGetTaxCode.FieldByName('CODE').AsVariant) then
      if qryGetTaxCode.FieldByName('CODE').AsString <> '' then
         DefaultInvoice := qryGetTaxCode.FieldByName('CODE').AsString;

   // Do clearance if needed
   if Trunc(SystemDate('LASTCLEAR')) < Trunc(Now) + 1 then
   begin
      with qryTmp do
      begin
         Close;
         SQL.Text := 'SELECT COUNT(AMOUNT) AS CLEARS FROM RECEIPT where trunc(DCLEARDATE) < :TODAY AND banked = ''Y'' and cleared = ''N'' and reversed <> ''Y'' ';
         ParamByName('TODAY').AsDateTime := Trunc(Now) + 1;
         Open;
         if FieldByName('CLEARS').AsInteger > 0 then
         begin
            frmProcess := TfrmProcess.Create(Self);
            frmProcess.lblProcess.Caption := 'Clearing banked receipts';
            frmProcess.pbProcess.Max := FieldByName('CLEARS').AsInteger;
            frmProcess.Show;
            Application.ProcessMessages;

         // Get the list to process
            Close;
            SQL.Text := 'SELECT NRECEIPT FROM RECEIPT where trunc(DCLEARDATE) < :TODAY AND banked = ''Y'' and cleared = ''N'' and reversed <> ''Y'' ';
            ParamByName('TODAY').AsDateTime := Trunc(Now) + 1;
            Open;

            while not eof do
            begin
               ReceiptClear(FieldByName('NRECEIPT').AsInteger);
               frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
               Application.ProcessMessages;

               Next;
            end;
            frmProcess.Release;
         end;

         Close;
         SQL.Text := 'UPDATE SYSTEMFILE SET LASTCLEAR = :TODAY';
         ParamByName('TODAY').AsDateTime := Now;
         ExecSQL;
         Close;
      end;
   end;

   TotalAmt := 0;
   Balance := 0;
   Tax := 0;
   Created := False;
   AllocType := '';

   if not qryLedger.Active then
      qryLedger.Open;

//   StringPopulate(dbgrLedger.Columns[colTAXCODE].PickList, 'TAXTYPE', 'CODE');
//   StringPopulate(dbgrLedger.Columns[colSUNDRYTYPE].PickList, 'SUNDRYTYPE', 'CODE');

   qryTaxRate.Open;
   qrySundrytype.ParamByName('ENTITY').AsString := dmAxiom.Entity;
   qrySundrytype.Open;

   lblUnallocatedMsg.Visible := dmAxiom.Security.Cheque.ForceTally;
   lblUnallocated.Visible := dmAxiom.Security.Cheque.ForceTally;
   cmbPrinter.Items.Clear;
   StringPopulate(cmbPrinter.Items, 'PRINTER', 'CODE', 'TYPE = ''C'' AND BANK_ACCT = ''' + cbBank.Text + '''');


   // from onShow
   dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;
   dtpDate.Date := Today;

   btnQuery.Visible := dmAxiom.runningide;

   if not qryCheque.Modified then
      CreateCheque;
   cmbPrinter.Text := dmAxiom.UserChequePrinter;
   cmbPrinterChange(Self);
   cbBankChange(Self);
   lblAddress.Color := Self.Color;
   ActTemplateUpdate(nil);

   gbChequeTemplate.Visible := SystemString('SHOW_CHEQUE_TEMPLATE') = 'Y';
end;


procedure TfrmCheque.SetBankTransfer(bVisible: boolean);
begin
{
  lblBankTransferMsg.Visible := bVisible;
  cbBankTransfer.Visible := bVisible;
  lblBankTransferName.Visible := bVisible;
}
  if bVisible then
    AddBanks(cbBankTransfer, 'G')
  else
    cbBankTransfer.ItemIndex := -1;
end;

procedure TfrmCheque.cbBankTransferClick(Sender: TObject);
begin
  lblBankTransferName.Caption := TableString('BANK', 'ACCT', cbBankTransfer.Text, 'NAME');
  if lblBankTransferName.Caption = '' then
    lblBankTransferName.Caption := '(Blank for none)';
end;


procedure TfrmCheque.tbPayeeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(tbPayee);
end;


procedure TfrmCheque.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(Sender);
end;


procedure TfrmCheque.tbPayeeExit(Sender: TObject);
begin
   Quickcode(Sender);
   btnOK.Enabled := OKtoPost(False);
   if (sPayee <> tbPayee.Text) then
   begin
      sNName := '';
      sPayee := tbPayee.Text;
      lblName.Caption := '';
      lblAddress.Caption := '';
   end;
   DefaultDescr := tbDesc.Text;
end;


procedure TfrmCheque.neAmountExit(Sender: TObject);
begin
  if (neAmount.AsCurrency = 0) and not dmAxiom.Security.Cheque.ForceTally then
  begin
    lblUnallocatedMsg.Visible := False;
    lblUnallocated.Visible := False;
  end
  else
  begin
    lblUnallocatedMsg.Visible := True;
    lblUnallocated.Visible := True;
  end;
  UpdateTotal;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.tbChqnoExit(Sender: TObject);
begin
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SettingSave('CHEQUE', 'BANK', cbBank.Text);

  SaveColumnSettings;
  SaveScreenSettings;

  qryCheckCheque.Close;
  qryLedger.Close;
  qryCheque.Close;
  qryMatters.Close;
  qryAllocs.Close;
  qryBank.Close;
  qryInvoice.Close;
  qryBankBalance.Close;
  qryTmp.Close;
  qryInvoiceCRAmount.Close;

//  RemoveFromDesktop(Self);
  Action := caFree;
end;

procedure TfrmCheque.dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
{var
  sType : string;}
begin

{  case dbgrLedger.SelectedIndex of
    colAMOUNT, colTAXCODE, colTAX:
      if Key = #13 then
        UpdateTotal;
  end;

  // Default the type if a key pressed
  if dbgrLedger.SelectedIndex = colTYPE then
  begin
    sType := '';
    if (Key = 'I') or (Key = 'i') then
      sType := 'Invoice'
    else if (Key = 'D') or (Key = 'd') then
      sType := 'Debtors'
    else if (Key = 'L') or (Key = 'l') then
      sType := 'Ledger'
    else if (Key = 'M') or (Key = 'm') then
      sType := 'Matter'
    else if (Key = 'P') or (Key = 'p') then
      sType := 'Protected';
    Key := #0;
    if (sType <> '') and (dbgrLedger.Columns.Items[colTYPE].PickList.IndexOf(sType) >= 0) then
    begin
      if not qryLedger.Modified then
        if qryLedger.IsEmpty then
          qryLedger.Insert
        else
          qryLedger.Edit;
      qryLedger.FieldByName('TYPE').AsString := sType;
      dbgrLedger.SelectedIndex := colREFNO;
    end;
  end;                                                    }
{  if dbgrLedger.SelectedIndex = colREASON then
    if Key = ' ' then
      Quickcode(qryLedger.FieldByName('REASON').AsString);
}
end;

procedure TfrmCheque.qryLedgerBeforeScroll(DataSet: TDataSet);
begin
  AllocType := qryLedger.FieldByName('TYPE').AsString;
end;

procedure TfrmCheque.dbgrLedgerEnter(Sender: TObject);
begin
//  dbgrLedger.SelectedIndex := colTYPE;
  DefaultDescr := tbDesc.Text;
end;

procedure TfrmCheque.dbgrLedgerColEnter(Sender: TObject);
begin
  //pb - added colREASON from frmReceipt
{  case dbgrLedger.SelectedIndex of
    colREASON:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      if dbgrLedger.Columns.Items[colREASON].Field.Text = '' then
        dbgrLedger.Columns.Items[colREASON].Field.Text := DefaultDescr;
    end;
  end; // case                       }
{  if (dbgrLedger.SelectedIndex = colREASON) and (dbgrLedger.Columns.Items[colREASON].Field.Text = '') then
  begin
    if not qryLedger.Modified then
      qryLedger.Edit;
    dbgrLedger.Columns.Items[colREASON].Field.Text := DefaultDescr;
  end;
}
end;

procedure TfrmCheque.cbBankChange(Sender: TObject);
begin
  {qryLedger.CancelUpdates;
  qryLedger.Close;
  qryLedger.Open;}
  cmbPrinter.Items.Clear;
  tbChqNo.Text := '';
  cmbPrinter.Text := '';
  StringPopulate(cmbPrinter.Items, 'PRINTER', 'CODE', 'TYPE = ''C'' AND BANK_ACCT = ''' + cbBank.Text + '''');
  cmbPrinter.Enabled := True;
  //cmbPrinterChange(Self);
//  StatusDisplay;
   grpDirectDebit.Visible := False;
   TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Clear;
   DefaultTax := GetDefaultTax('Cheque', 'NOTAX');
   if qryBank.FieldByName('TRUST').AsString = 'T' then
   begin
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Protected');
     tvLedgerTAX.Visible := False;
     tvLedgerTAXCODE.Visible := False;

     lblBalance.Visible := False;
     lblTax.Visible := False;
     DefaultTax := 'NOTAX';
     SetBankTransfer(True);
     grpDirectDebit.Visible := (GetEnforceBSBDD(cbBank.Text) = 'Y') and (rgType.ItemIndex = 1);
   end
   else if qryBank.FieldByName('TRUST').AsString = 'G' then
   begin
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Ledger');
//     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Debtors');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Invoice');

     SetBankTransfer(False);
   end
   else if qryBank.FieldByName('TRUST').AsString = 'C' then
   begin
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Ledger');
     TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Invoice');

     SetBankTransfer(False);
   end;
end;

procedure TfrmCheque.cbAuthByDropDown(Sender: TObject);
begin
//  cbAuthBy.ItemIndex := cbAuthBy.Items.IndexOf(dmAxiom.UserID);
//  cbAuthBy.OnClick(Self);
end;

procedure TfrmCheque.qryLedgerAfterScroll(DataSet: TDataSet);
begin
   StatusDisplay;
end;

procedure TfrmCheque.popGridPopup(Sender: TObject);
begin
  popGridOpenMatter.Enabled := (qryLedger.FieldByName('TYPE').AsString = 'Matter') or (qryLedger.FieldByName('TYPE').AsString = 'Protected') {or (qryLedger.FieldByName('TYPE').AsString = 'Debtors')};
end;

procedure TfrmCheque.popGridOpenMatterClick(Sender: TObject);
begin
  with TfrmMatters.Create(Self) do
    DisplayMatter(qryLedger.FieldByName('REFNO').AsString);
end;

procedure TfrmCheque.cbAuthByExit(Sender: TObject);
begin
  btnOK.Enabled := OKtoPost(False);
end;


procedure TfrmCheque.cbAuthByPropertiesEditValueChanged(Sender: TObject);
begin
   lblAuthByName.Caption := TableString('EMPLOYEE', 'CODE', cbAuthBy.Text, 'NAME');
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.qryLedgerAMOUNTChange(Sender: TField);
begin
  CalcTax;
end;


procedure TfrmCheque.qryLedgerTAXCODEChange(Sender: TField);
begin
  if (qryLedger.FieldbyName('REFNO').AsString <> '') then
    begin
      qryLedger.FieldByName('WITHHOLD').AsString := TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'WITHHOLDING');
      CalcTax;
    end;
end;


procedure TfrmCheque.CalcTax;
var
  dAmount: double;
  taxcode: STRING;
begin
   if FGridUpdatingByTemplate then
      exit;

   if (not FromCheque) and
      (tvLedgerTAXCODE.Visible) then
   begin
      qryLedgerAMOUNT.OnChange := nil;
      dAmount := qryLedger.FieldByName('AMOUNT').AsCurrency;
      if DefaultTax <> qryLedger.FieldByName('TAXCODE').AsString then
      begin
         taxcode := DefaultTax;
         DefaultTax := qryLedger.FieldByName('TAXCODE').AsString;
      end;
     //calculate the amount of tax as bill_rate
      qryLedger.FieldByName('TAX').AsFloat := TaxCalc(dAmount, 'CHEQUE', DefaultTax, dtpDate.Date);
   //  qryLedger.FieldByName('TAX').AsFloat := TaxCalc(dAmount, 'BILL', qryLedger.FieldByName('TAXCODE').AsString, dtpDate.Date);
      qryLedger.FieldByName('AMOUNT').AsCurrency := dAmount;
      if qryLedger.State in [dsInsert, dsEdit] then
         UpdateTotal;
      qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
      if Taxcode <> '' then
         DefaultTax := taxcode;
   end;
end;

procedure TfrmCheque.qryLedgerTYPEChange(Sender: TField);
begin
  //pb- added to stop error
  // 9.9.02 gg - what error?
  qryLedger.Edit;
  if qryLedger.FieldByName('TYPE').AsString = 'Invoice' then

  {
  Modified 20.12.2002 GG

  Temp mod to allow Invoice cheques to come up with an NCR tax code instead of NOTAX.
  A better way of doing this needs to be designed, and followed up on in the New Year.
    qryLedger.FieldByName('TAXCODE').AsString := 'NOTAX'
  }

  {
  Modified 27/04/2004 Tony

  Instead of hardcoding the default tax code for Invoices, going
  to obtain the 'DBhardcode' default tax code for Invoices

    qryLedger.FieldByName('TAXCODE').AsString := 'NCR'
  }
    qryLedger.FieldByName('TAXCODE').AsString := DefaultInvoice
  else
  begin
  {
  Code Modified 9.9.02 gg
  Check to make sure that there isn't already a TAX CODE set for this record
  }
  {
  Modified 27/04/2004 Tony
  On selection of anything other then Invoice "after" Invoice has
  already been selected doesnt change the Tax Code field.  Should
  be changing the Tax Code to the DefaultTax.

    if qryLedger.FieldByName('TAXCODE').AsString = '' then
  }
   if qryLedger.State in [dsInsert] then
   begin
//      if qryLedger.FieldByName('TAXCODE').AsString = '' and
//         qryLedger.FieldByName('AMOUNT').AsFloat > 0 then
         qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
   end;
  end;
end;

procedure TfrmCheque.qryLedgerREASONChange(Sender: TField);
begin
  DefaultDescr := qryLedger.FieldByName('REASON').AsString;
end;

procedure TfrmCheque.SaveScreenSettings;
begin
  if Self.WindowState = wsMaximized then
    SettingSave('CHEQUE', 'MAXIMIZED', True)
  else
  begin
    SettingDelete('CHEQUE', 'MAXIMIZED');
    SettingSave('CHEQUE', 'WIDTH', Self.Width);
    SettingSave('CHEQUE', 'HEIGHT', Self.Height);
  end; 
  SaveColumnSettings;
end;


procedure TfrmCheque.SaveColumnSettings;
var
  iCtr: Integer;
begin
  if LastBank <> '' then
    for iCtr := 0 to tvLedger.ColumnCount - 1 do
      SettingSave('CHEQUE', LastBank + '.COLUMNWIDTH:' + tvLedger.Columns[iCtr].DataBinding.FieldName, tvLedger.Columns[iCtr].Width);
end;

procedure TfrmCheque.RestoreHeaderDetails;
begin
   cbBank.Text := QryChequeTmpl.FieldByName('Acct').AsString;
   cbBankClick(nil);
   cbAuthBy.Text := QryChequeTmpl.FieldByName('ReqBy').AsString;
   cbAuthByExit(nil);
   tbPayee.Text := QryChequeTmpl.FieldByName('Payee').AsString;
   tbPayeeExit(nil);
   tbDesc.Text := QryChequeTmpl.FieldByName('Descr').AsString;
   DefaultDescr := tbDesc.Text;  // This is used for each of the trans lines.
   neAmount.AsCurrency := QryChequeTmpl.FieldByName('Amount').AsCurrency;
   neAmountExit(nil);
   cmbPrinter.ItemIndex := cmbPrinter.Items.IndexOf(QryChequeTmpl.FieldByName('Printer').AsString);
   cmbPrinterChange(nil);
   cbBankTransfer.Text := QryChequeTmpl.FieldByName('Transfer_Bank_Name').AsString;
   cbBankTransferClick(nil);
   cbBankImport.Text := QryChequeTmpl.FieldByName('Bank_Import_Name').AsString;
   edtImport.Text := QryChequeTmpl.FieldByName('IMPORT_TEXT').AsString;
   // No OnExit events plugged in for Direct Debit related controls.
   dfbsb.Text := QryChequeTmpl.FieldByName('DD_BSB').AsString;
   dfAccount.Text := QryChequeTmpl.FieldByName('DD_ACCOUNT_NO').AsString;
   dfAccountName.Text := QryChequeTmpl.FieldByName('DD_ACCOUNT_NAME').AsString;

   // In Cheque, "Type" might be used in a different way. Just using it here as it's available.
   if QryChequeTmpl.FieldByName('Type').AsString = PaymentTypeDirectDebit then
      rgType.ItemIndex := 1
   else
      rgType.ItemIndex := 0;
end;

procedure TfrmCheque.RestoreScreenControlValues(ADataSet: TUniQuery);
var
   ChequeTmplKey: Integer;
begin
   // Ensure that the click/exit methods of each of the controls
   // are called. This ensures that things like Direct Debit Payments
   // display correctly when a trust account is selected. Also Allocation
   // and total get updated when amount is changed.
   FCurrentTemplateDescr := QryChequeTmpl.FieldByName('Template_Descr').AsString;
   FGridUpdatingByTemplate := true;
   try
      RestoreHeaderDetails;

      QryLastChequeTmplID.Close;
      // Template name isn't unique and should probably change to something more unique.
      QryLastChequeTmplID.Params[0].AsString := QryChequeTmpl.FieldByName('Template_Descr').AsString;;
      QryLastChequeTmplID.Open;
      ChequeTmplKey := QryLastChequeTmplID.FieldByName('NCHEQUE_TMPL').AsInteger;

      QryTransTmpl.Close;
      QryTransTmpl.Params[0].AsInteger := ChequeTmplKey;
      QryTransTmpl.Open;

      ClearTransGrid;

      QryTransTmpl.First;
      tvledger.DataController.Options := tvledger.DataController.Options + [dcoImmediatePost] ;

      while qryLedger.RecordCount > 0 do
      begin
         qryLedger.Edit;
         qryLedger.Delete;
      end;
      qryLedger.CommitUpdates;

      While not QryTransTmpl.eof do
      begin
         qryledger.Insert;
         // Always set Type first. It controls other fields.
         qryLedger.FieldByName('Type').AsString := QryTransTmpl.FieldByName('Type').AsString;
         // Always set TAX code first. It controls how the amount is broken into amount + tax.
         qryLedger.FieldByName('TaxCode').AsString := QryTransTmpl.FieldByName('TaxCode').AsString;
         if QryTransTmpl.FieldByName('Tax').AsFloat > 0 then
         begin
            // If tax is in the mix, add it to amount. CalcTax will recalculate it.
            qryLedger.FieldByName('Tax').AsFloat := 0;
            qryLedger.FieldByName('AMOUNT').AsFloat := QryTransTmpl.FieldByName('Amount').AsFloat +
               QryTransTmpl.FieldByName('Tax').AsFloat;
         end
         else
         begin
            qryLedger.FieldByName('Tax').AsFloat := 0;
            qryLedger.FieldByName('AMOUNT').AsFloat := QryTransTmpl.FieldByName('Amount').AsFloat;
         end;


         qryLedger.FieldByName('RefNo').AsString := QryTransTmpl.FieldByName('RefNo').AsString;
         qryLedger.FieldByName('LONGDESC').AsString := QryTransTmpl.FieldByName('LONGDESC').AsString;
         qryLedger.FieldByName('Reason').AsString := QryTransTmpl.FieldByName('Reason').AsString;
         qryLedger.Post;

         QryTransTmpl.Next;
      end;
      qryLedger.CommitUpdates;
      tvLedger.DataController.Refresh;
   finally
      FGridUpdatingByTemplate := false;
      // If tax code requires it, recalculate tax. Ok to call this for all tax types.
      qryLedger.Edit;
      CalcTax;
      // CalcTax puts the dataset into browse mode. User needs to be able to edit ledger details.
      qryLedger.Edit;
   end;
   UpdateTotal;
end;

procedure TfrmCheque.ClearTransGrid;
begin
   // Clear transaction grid.
   with tvLedger.DataController do
   begin
     BeginUpdate;
     try
       while RecordCount > 0 do
         DeleteRecord(0);
     finally
       EndUpdate;
     end;
   end;

end;

procedure TfrmCheque.ClearHeaderControls;
begin
   FCurrentTemplateDescr := '';
   cbBank.Text := '';
   cbBankClick(nil);
   dtpDate.Date := date;
   tbChqno.Text := '';
   tbChqnoExit(nil);
   cbAuthBy.Text := '';
   cbAuthByExit(nil);
   tbPayee.Text := '';
   tbPayeeExit(nil);
   tbDesc.Text := '';
   neAmount.AsCurrency := 0;
   neAmountExit(nil);
   cmbPrinter.Text := '';
   cmbPrinterChange(nil);
   cbBankTransfer.Text := '';
   cbBankTransferClick(nil);
   cbBankImport.Text := '';
   edtImport.Text := '';
   // No OnExit events plugged in for Direct Debit related controls.
   dfbsb.Text := '';
   dfAccount.Text := '';
   dfAccountName.Text := '';
end;

procedure TfrmCheque.SaveScreenControlValues(ADataSet: TUniQuery);
var
   i: Integer;
   ChequeTmplKey: Integer;
   RowRecordIndex: Integer;
begin
   if FCurrentTemplateDescr = '' then
   begin
      QryChequeTmpl.Insert;
      FCurrentTemplateDescr := 'Pending ' + DateTimeToStr(now);
   end
   else
      QryChequeTmpl.Edit;

   QryChequeTmpl.FieldByName('Acct').AsString := cbBank.Text;
   QryChequeTmpl.FieldByName('ChqNo').AsString := tbChqno.Text;
   QryChequeTmpl.FieldByName('ReqBy').AsString := cbAuthBy.Text;
   QryChequeTmpl.FieldByName('Payee').AsString := tbPayee.Text;
   QryChequeTmpl.FieldByName('Descr').AsString := tbDesc.Text;
   QryChequeTmpl.FieldByName('Amount').AsCurrency := neAmount.AsCurrency;
   QryChequeTmpl.FieldByName('Printer').AsString := cmbPrinter.Text;
   QryChequeTmpl.FieldByName('Transfer_Bank_Name').AsString := cbBankTransfer.Text;
   QryChequeTmpl.FieldByName('Bank_Import_Name').AsString := cbBankImport.Text;
   QryChequeTmpl.FieldByName('IMPORT_TEXT').AsString := edtImport.Text;
   QryChequeTmpl.FieldByName('TEMPLATE_NAME').AsString := FCurrentTemplateDescr;
   QryChequeTmpl.FieldByName('DD_BSB').AsString := dfBSB.Text;
   QryChequeTmpl.FieldByName('DD_ACCOUNT_NO').AsString := dfAccount.Text;
   QryChequeTmpl.FieldByName('DD_ACCOUNT_NAME').AsString := dfAccountName.Text;

   QryChequeTmpl.FieldByName('TEMPLATE_MODIFIED').AsDateTime := Now;
   QryChequeTmpl.FieldByName('TEMPLATE_MODBY').AsString := dmAxiom.UserID;
   // Use reason for description of the template.
   QryChequeTmpl.FieldByName('template_descr').AsString := tbDesc.Text;

   // In Cheque, "Type" might be used in a different way. Just using it here as it's available.
   if rgType.ItemIndex = 1 then
      QryChequeTmpl.FieldByName('Type').AsString := PaymentTypeDirectDebit
   else
      QryChequeTmpl.FieldByName('Type').AsString := PaymentTypeCheque;

   // Need to do this so that cheque key can be retrieved for transactions.
   QryChequeTmpl.Post;
   QryChequeTmpl.ApplyUpdates();
   //QryChequeTmpl.Refresh;

   FCurrentTemplateDescr := tbDesc.Text;
   QryLastChequeTmplID.Close;
   // Template name isn't unique and should probably change to something more unique.
   QryLastChequeTmplID.Params[0].AsString := FCurrentTemplateDescr;
   QryLastChequeTmplID.Open;
   ChequeTmplKey := QryLastChequeTmplID.FieldByName('NCHEQUE_TMPL').AsInteger;

   // Clear off last trans items.
   QryDeleteLastTransItem.Close;
   QryDeleteLastTransItem.Params[0].AsInteger := ChequeTmplKey;
   QryDeleteLastTransItem.ExecSQL;

   QryTransTmpl.Close;
   QryTransTmpl.Params[0].AsInteger := ChequeTmplKey;
   QryTransTmpl.Open;

   for I := 0 to tvLedger.ViewData.RowCount-1 do
   begin
      RowRecordIndex := tvLedger.ViewData.Rows[i].RecordIndex;
      QryTransTmpl.Insert;
      QryTransTmpl.FieldByName('NCHEQUE_TMPL').AsInteger := ChequeTmplKey;
      QryTransTmpl.FieldByName('Amount').AsVariant :=
         tvLedger.DataController.Values[RowRecordIndex, tvLedgerAMOUNT.Index];
      QryTransTmpl.FieldByName('Type').AsVariant :=
         tvLedger.DataController.Values[RowRecordIndex, tvLedgerTYPE.Index];
      QryTransTmpl.FieldByName('REFNO').AsVariant :=
         tvLedger.DataController.Values[RowRecordIndex, tvLedgerREFNO.Index];
      QryTransTmpl.FieldByName('LongDesc').AsVariant :=
         tvLedger.DataController.Values[RowRecordIndex, tvLedgerLONGDESC.Index];
      QryTransTmpl.FieldByName('REASON').AsVariant :=
         tvLedger.DataController.Values[RowRecordIndex, tvLedgerREASON.Index];
      QryTransTmpl.FieldByName('TAXCODE').AsVariant :=
         tvLedger.DataController.Values[RowRecordIndex, tvLedgerTAXCODE.Index];
      QryTransTmpl.FieldByName('TAX').AsVariant :=
         tvLedger.DataController.Values[RowRecordIndex, tvLedgerTAX.Index];
      QryTransTmpl.Post;
   end;

   QryTransTmpl.ApplyUpdates;
end;


procedure TfrmCheque.RestoreScreenSettings;
var
  iTmp: Integer;
begin
  if SettingLoadBoolean(dmAxiom.UserID, 'CHEQUE', 'MAXIMIZED') then
    Self.WindowState := wsMaximized
  else
  begin
    iTmp := SettingLoadInteger(dmAxiom.UserID, 'CHEQUE', 'WIDTH');
    if iTmp <> 0 then
      Self.Width := iTmp;
    iTmp := SettingLoadInteger(dmAxiom.UserID, 'CHEQUE', 'HEIGHT');
    if iTmp <> 0 then
      Self.Height := iTmp;
  end;
  RestoreColumnSettings;
end;


procedure TfrmCheque.RestoreColumnSettings;
var
  iCtr, iTmp: Integer;
begin
  for iCtr := 0 to tvLedger.ColumnCount - 1 do
  begin
    iTmp := SettingLoadInteger(dmAxiom.UserID, 'CHEQUE', cbBank.Text + '.COLUMNWIDTH:' + tvLedger.Columns[iCtr].Databinding.FieldName);
    if iTmp <> 0 then
      tvLedger.Columns[iCtr].Width := iTmp;
  end;
end;

procedure TfrmCheque.cbAuthByChange(Sender: TObject);
begin
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.popGridDistributeAllocationsClick(Sender: TObject);
begin
{ DistributeBill;
  with TfrmReceiptDistribute.Create(Self) do
  begin
    SetupDistribution(tbRcptno.Text, qryLedger.FieldByName('INVOICE').AsInteger, qryLedger.FieldByName('FEESCR').AsCurrency, qryLedger.FieldByName('DISBCR').AsCurrency, qryLedger.FieldByName('UPCREDCR').AsCurrency, qryLedger.FieldByName('ANTDCR').AsCurrency, qryLedger.FieldByName('SUNDCR').AsCurrency);
    if Distributed then
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      qryLedger.FieldByName('FEESCR').AsFloat := neFees.AsCurrency;
      qryLedger.FieldByName('DISBCR').AsFloat := neDisb.AsCurrency;
      qryLedger.FieldByName('UPCREDCR').AsFloat := neUpCred.AsCurrency;
      qryLedger.FieldByName('ANTDCR').AsFloat := neAntd.AsCurrency;
      qryLedger.FieldByName('SUNDCR').AsFloat := neSund.AsCurrency;
      qryLedger.Post;
      Destroy;
    end;
  end;}
end;

procedure TfrmCheque.chkPrintClick(Sender: TObject);
begin
  cmbPrinter.Enabled := chkPrint.Checked;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.chkReplacementChequeClick(Sender: TObject);
begin
   ReplacementCheque;
end;

procedure TfrmCheque.cmbPrinterChange(Sender: TObject);
begin
   qryPrinter.Close;
   qryPrinter.ParamByName('CODE').AsString := cmbPrinter.Text;
   qryPrinter.Open;
   if qryPrinter.IsEmpty  then
   begin
      chkPrint.Checked := False;
      chkPrint.Visible := False;
   end
   else
      chkPrint.Visible := (TableString('PRINTER','CODE',cmbPrinter.Text,'EFT_PRINTER') = 'N');  //True and (SystemString('SHOW_DD_CHEQUE_NO') = 'N');
  if (tbChqno.Text = '') then
     NextChqno;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.btnImportClick(Sender: TObject);
var
  sNReceipt : string;
begin
  with qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NRECEIPT FROM RECEIPT WHERE RCPTNO=:RCPTNO AND ACCT=:ACCT');
      ParambyName('RCPTNO').AsString := edtImport.Text;
      ParambyName('ACCT').AsString := cbBankImport.Text;
      Open;
      if RecordCount > 0 then
        sNReceipt := FieldbyName('NRECEIPT').AsString;
      Close;
    end;
  if (sNReceipt <> '') then
    begin
      DefaultTax := 'NOTAX';
      with qryChequeNallocs do
      begin
        ParamByName('P_Nreceipt').AsString := sNReceipt;
        Open;
        qryLedger.Open;
        while not EOF do
        begin
          with qryLedger do
          begin
            Insert;
            FieldByName('TYPE').AsString := 'Matter';
            FieldByName('REFNO').AsString := qryChequeNallocs.FieldByName('FILEID').AsString;
            FieldByName('LONGDESC').AsString := qryChequeNallocs.FieldByName('CLIENT_NAME').AsString; //TableString('MATTER','FILEID', qryChequeNallocs.FieldByName('FILEID').AsString, 'SHORTDESCR');
            FieldByName('REASON').AsString := qryChequeNallocs.FieldByName('DESCR').AsString; // + ' ' + qryChequeNallocs.FieldByName('FILEID').AsString;
            FieldByName('AMOUNT').AsFloat := qryChequeNallocs.FieldbyName('AMOUNT').AsFloat;
          end;
          Next;
        end;
      end;
      qryCheque.Close;
      qryChequeNallocs.Close;
  end
  else
    MessageDlg('The receipt could not be found', mtWarning, [mbOK], 0);
end;

procedure TfrmCheque.SpeedButton1Click(Sender: TObject);
begin
  ActiveSmartQuery(self);
end;

procedure TfrmCheque.qryLedgerBeforeInsert(DataSet: TDataSet);
begin
  {
    Remember the TAXCODE fo the previous record
  }
  fLedgerTaxCode := qryLedger.FieldByName('TAXCODE').AsString;

end;

function TfrmCheque.GetDefaultTax(sType : String; sDefaultTax : String) : String;
var
  lsDefaultTax : String;
begin
  lsDefaultTax := Get_Default_GST(sType);

  if (lsDefaultTax = '') then
     lsDefaultTax := sDefaultTax;

  Result := lsDefaultTax;

end;

function TfrmCheque.IsBankOverDrawn : Boolean;
var
  loQryTmp    : TUniQuery;
  lcCashTotal : Currency;
  LMsg: string;
  LEntered,
  LTrustODPasswd: String;
begin
  loQryTmp := nil;
  Result := false;

  if (IsTrustAccount(cbBank.Text)) then
    begin
      try
        loQryTmp := TUniQuery.Create(self);
        loQryTmp.Connection := dmAxiom.uniInsight;
        loQryTmp.SQL.Text := 'SELECT SUM(AMOUNT) AS CASHTOTAL FROM CASHBOOK WHERE ACCT = ' +
                              QuotedStr(cbBank.Text);

        loQryTmp.Open;
        lcCashTotal := loQryTmp.FieldByName('CASHTOTAL').AsCurrency;

        if (TotalAmt > lcCashTotal) then
        begin
           if Trim(SystemString('STATE')) = 'TAS' then
           begin
              LMsg := 'This transaction will overdraw your cashbook bank balance. ' +
                       #13 + #10 + 'Organise a transfer of monies from the Statutory Deposit.';
              if(InputQueryPassword('Insight', LMsg + #13#10'To continue, please enter the password',LEntered)) then
              begin
                 LTrustODPasswd := SystemString('TRUST_OD_PASSWD');
                 if LTrustODPasswd = '' then
                     LTrustODPasswd := C_OVERDRAWPASSWORD;

                 if (LEntered = LTrustODPasswd) then
                    Result := False
                 else
                    Result := True;
              end;
           end
           else
           begin
               MessageDlg('This transaction will overdraw your cashbook bank balance. ' +
                        #13 + #10 + 'Organise a transfer of monies from the Statutory Deposit.',
                        mtWarning, [mbOK], 0);
               Result := True;
           end;
        end
        else
          Result := False;
      finally
        loQryTmp.Close;
        FreeAndNil(loQryTmp);
      end;    //  end try-finally
    end
  else
    Result := False;
end;

function TfrmCheque.IsValidMatterForAccount : Boolean;
var
   lsAcct,
   lsMessage    : String;
   bValidBank: boolean;
begin
   Result := TRUE;
   bValidBank := False;
   if (IsTrustAccount(cbBank.Text)) then
   begin
      qryLedger.First;
      while (qryLedger.EOF = False) do
      begin

         if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
            ((qryLedger.FieldByName('TYPE').AsString = 'Invoice') and (qryLedger.FieldByName('FILEID').AsString <> '')) then
         begin
            lsAcct := MatterString(qryLedger.FieldByName('FILEID').AsString, 'ACCT');
            with dmAxiom.qryValidateMatterTrust do
            begin
               Close;
               ParamByName('acct').AsString     := cbBank.Text;
               ParamByName('nmatter').AsInteger := StrToInt(MatterString(qryLedger.FieldByName('FILEID').AsString, 'NMATTER'));
               Open;
               bValidBank := (RecordCount > 0);
               Close;
            end;
         end;

         if bValidBank = False {(lsAcct <> cbBank.Text)} then
         begin
            lsMessage := 'You cannot draw a cheque against matter (' +
                               qryLedger.FieldByName('FILEID').AsString + ') with a' + #13 + #10 +
                               'trust bank account (' + lsAcct + ') different to the selected trust account (' +
                               cbBank.Text + ').';

            MessageDlg(lsMessage, mtWarning, [mbOK], 0);
            Result := False;
            Break
         end;
         qryLedger.Next;
      end;
   end;
end;


function TfrmCheque.IsValidInvoice(cOwing : Currency; sInvoiceType : String) : Boolean;
begin
  if (sInvoiceType <> 'CN') then
    begin
      Result := (cOwing > 0);
    end
  else
    begin
      Result := (cOwing < 0);
    end;    //  end if-else
end;

procedure TfrmCheque.tvLedgerREFNOPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  defaultLedgerTaxCode : String;
  glInstance : TglComponentInstance;
  //sTaxCode, sTaxCodeDef, sTaxTypeDef: String;
  //dTaxRate, dTaxRateDef: Double;
  ARefNo: string;
begin
   if DisplayValue <> '' then
   begin
      if not qryLedger.Modified then
         qryLedger.Edit;

      ARefNo := UpperCase(string(DisplayValue));
      if (tvLedgerTYPE.DataBinding.Field.Text = 'Matter') then
      begin
         if (MatterString(ARefNo, 'PROSPECTIVE') = 'Y') then
         begin
               MsgErr('This matter #' + ARefNo +
                      ' is flagged as Prospective.');
               qryLedger.Delete;
         end
         else if MatterIsCurrent(ARefNo) and
            not (IsMatterArchived(ARefNo)) then
            if IsValidMatterForEntity(ARefNo) then
            begin
               qryLedger.FieldByName('REFNO').AsString := ARefNo;
               qryLedger.FieldByName('FILEID').AsString := ARefNo;
               qryLedger.FieldByName('LONGDESC').AsString := MatterString(ARefNo, 'MATLOCATE');
               if cbAuthBy.Text = '' then
               begin
                  cbAuthBy.Text := MatterString(ARefNo, 'AUTHOR');   //cbAuthBy.ItemIndex := cbAuthBy.Items.IndexOf(MatterString(ARefNo, 'AUTHOR'));
//                  cbAuthBy.OnClick(Self);
               end;
            end
            else
            begin
               MsgErr('This matter #' + ARefNo +
                      ' is not valid for the current Entity.');
               qryLedger.Delete;
            end
         else
         begin
            MsgErr('This matter #' + ARefNo +
                   ' is closed or does not exist');
            qryLedger.Delete;
         end;
      end;

      if (tvLedgerTYPE.DataBinding.Field.Text = 'Protected'){ or
         (tvLedgerTYPE.DataBinding.Field.Text = 'Debtors') } then
         begin
            if MatterIsCurrent(ARefNo) then
            begin
               qryLedger.FieldByName('LONGDESC').AsString := MatterString(ARefNo, 'MATLOCATE');
               qryLedger.FieldByName('REFNO').AsString := ARefNo;
               if cbAuthBy.Text = '' then
               begin
                  cbAuthBy.Text := MatterString(ARefNo, 'AUTHOR');   //cbAuthBy.ItemIndex := cbAuthBy.Items.IndexOf(MatterString(ARefNo, 'AUTHOR'));
//                  cbAuthBy.OnClick(Self);
               end;
            end
            else
            begin
               MessageDlg('This matter #' + ARefNo + ' is closed or does not exist',mtError, [mbOK], 0);
               qryLedger.Delete;
            end;
         end;

         if tvLedgerTYPE.DataBinding.Field.Text = 'Ledger' then
         begin
            // lookup the ledger code based on the value entered
            glInstance := dmAxiom.getGlComponents.parseString(ARefNo,true);
            if not glInstance.valid then
            begin
               glInstance.displayError;
               qryLedger.FieldByName('REFNO').AsString := '';
               qryLedger.FieldByName('LONGDESC').AsString := '';
               glInstance.free;
               exit;
            end
            else
            begin
               qryLedger.FieldByName('REFNO').AsString  := glInstance.fullCode;
            end;

            if not AllowDirectPost(glInstance.ledgerKey) then
            begin
               MsgErr('You may not post to ledger Reference #' + ARefNo);
               DisplayValue := '';
            end
            else
            begin
               if not LedgerHead(glInstance.ledgerKey) then
               begin
                  qryLedger.FieldByName('LONGDESC').AsString := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
                   // Tony
                   // 03/05/2004
                   // Obtain default_taxcode (if any)
                  defaultLedgerTaxCode := LedgerString(glInstance.ledgerKey, 'DEFAULT_TAXCODE');

                  if defaultLedgerTaxCode <> '' then
                     qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode;
               end
               else
               begin
                  MsgErr('You may not post to a header ledger');
                  DisplayValue := '';
               end;
            end;
         end;

         if tvLedgerTYPE.DataBinding.Field.Text = 'Invoice' then
         begin
            with qryInvoice do
            begin
               Close;
               ParamByName('Acct').AsString := dmAxiom.Entity;
               ParamByName('Refno').AsString := ARefNo;
               Prepare;
               Open;
               if (RecordCount > 1) then
               begin
                  if not FormExists(frmCreditorAccountsSearch) then
                     Application.CreateForm(TfrmCreditorAccountsSearch, frmCreditorAccountsSearch);
                  frmCreditorAccountsSearch.InvoiceNo := ARefNo;
                  if frmCreditorAccountsSearch.ShowModal = mrOk then
                  begin
                     if (IsValidInvoice(frmCreditorAccountsSearch.qryAccounts.FieldByName('OWING').AsCurrency,
                        frmCreditorAccountsSearch.qryAccounts.FieldByName('TYPE').AsString)) then
                     begin
                        qryLedger.Edit;
                        qryLedger.FieldByName('REFNO').AsString := frmCreditorAccountsSearch.qryAccounts.FieldByName('REFNO').AsString;
                        qryLedger.FieldByName('LONGDESC').AsString := frmCreditorAccountsSearch.qryAccounts.FieldByName('CREDITOR').AsString;
                        qryLedger.FieldByName('REASON').AsString := frmCreditorAccountsSearch.qryAccounts.FieldByName('DESCR').AsString;
                        qryLedger.FieldByName('AMOUNT').AsCurrency := frmCreditorAccountsSearch.qryAccounts.FieldByName('OWING').AsCurrency;
                        qryLedger.Edit;
                        qryLedger.FieldByName('UNIQUEID').AsInteger := frmCreditorAccountsSearch.qryAccounts.FieldByName('NINVOICE').AsInteger;
                     end;
                  end
                  else
                     MsgErr('There is nothing owing on this Invoice');
               end
               else
               if not IsEmpty then
               begin
                  if not qryLedger.Modified then
                     qryLedger.Edit;
                  if (IsValidInvoice(qryInvoice.FieldByName('OWING').AsCurrency,
                     qryInvoice.FieldByName('TYPE').AsString)) then
                  begin
                     qryLedgerAMOUNT.OnChange := nil;
                     qryLedger.FieldByName('REFNO').AsString := ARefNo;
                     qryLedger.FieldByName('LONGDESC').AsString := qryInvoice.FieldByName('CREDITOR').AsString;
                     qryLedger.FieldByName('REASON').AsString := qryInvoice.FieldByName('DESCR').AsString;
                     qryLedger.FieldByName('AMOUNT').AsCurrency := qryInvoice.FieldByName('OWING').AsCurrency;
                     qryLedger.FieldByName('UNIQUEID').AsInteger := qryInvoice.FieldByName('NINVOICE').AsInteger;
                     qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
                  end
                  else
                  begin
                     MsgErr('There is nothing owing on this Invoice');
                     qryLedger.FieldByName('REFNO').AsString := '';
                  end;
               end
               else
               begin
                  MsgErr('Invalid Invoice number');
                  qryLedger.FieldByName('REFNO').AsString := '';
               end;
            Close;
         end;
      end;
      ReplacementCheque;
      StatusDisplay;
   end;
end;

procedure TfrmCheque.tvLedgerTYPEPropertiesCloseUp(Sender: TObject);
begin
   ReplacementCheque;
end;

procedure TfrmCheque.cxGrid1Enter(Sender: TObject);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   if tvLedger.Columns[colREASON].DataBinding.Field.Text = '' then
      tvLedger.Columns[colREASON].DataBinding.Field.Text := DefaultDescr;
end;

procedure TfrmCheque.tvLedgerREFNOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  defaultLedgerTaxCode : String;
  glInstance : TglComponentInstance;
  //sTaxCode, sTaxCodeDef, sTaxTypeDef, sMatterTmp: String;
  //dTaxRate, dTaxRateDef: Double;
begin
   if tvLedgerTYPE.DataBinding.Field.Text <> '' then
   begin
      if (tvLedgerTYPE.DataBinding.Field.Text = 'Matter') or
         (tvLedgerTYPE.DataBinding.Field.Text = 'Protected') {or
         (tvLedgerTYPE.DataBinding.Field.Text = 'Debtors') }then
      begin
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
         if frmMatterSearch.ShowModal = mrOk then
         begin
            // dbw 27 Jan 2019 set tax code based on Matter Fee Tax Basis
            //sTaxCode := '';
            //sTaxCodeDef := '';
            //dTaxRate := 0;
            //dTaxRateDef := 0;
            //sMatterTmp := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            //sTaxCode := TableString('MATTER', 'FILEID', sMatterTmp, 'FEE_TAX_BASIS');
            //dTaxRate := abs(TableFloat('TAXRATE', 'TAXCODE', sTaxCode, 'BILL_RATE'));
            //if (qryLedger.FieldByName('TAXCODE').AsString <> '') then
           // begin
           //      sTaxCodeDef := qryLedger.FieldByName('TAXCODE').AsString;
           //      sTaxTypeDef := TableString('TAXTYPE', 'CODE', sTaxCodeDef, 'TAXTYPE');
           //      if (sTaxTypeDef = 'TAX') then
           //           dTaxRateDef := abs(TableFloat('TAXRATE', 'TAXCODE', sTaxCodeDef, 'BILL_RATE'));
           // end;
            qryLedger.Edit;
            //if (dTaxRate < dTaxRateDef) then
            //    qryLedger.FieldByName('TAXCODE').AsString := sTaxCode;
            qryLedger.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            qryLedger.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            qryLedger.FieldByName('LONGDESC').AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            if qryLedger.FieldByName('REASON').AsString = '' then
               qryLedger.FieldByName('REASON').AsString := DefaultDescr;
         end;
      end;

      if tvLedgerTYPE.DataBinding.Field.Text = 'Ledger' then
      begin
         if not FormExists(frmLedgerSearch) then
            Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
         if (frmLedgerSearch.ShowModal = mrOk) then
         begin
            glInstance := dmAxiom.getGlComponents.parseString(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString,true);
            if not AllowDirectPost(glInstance.ledgerKey) then
            begin
               MsgErr('You may not post to ledger Reference #' + tvLedgerREFNO.EditValue);
            end
            else
            begin
               if not LedgerHead(glInstance.ledgerKey) then
               begin
                  qryLedger.Edit;
                  qryLedger.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
                  qryLedger.FieldByName('LONGDESC').AsString := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
                  if qryLedger.FieldByName('REASON').AsString = '' then
                     qryLedger.FieldByName('REASON').AsString := DefaultDescr;

                  defaultLedgerTaxCode := LedgerString(glInstance.ledgerKey{frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString}, 'DEFAULT_TAXCODE');

                  if defaultLedgerTaxCode <> '' then
                    qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode;
               end
               else
               begin
                  MsgErr('You may not post to a header ledger');
               end;
            end;
         end;
      end;

      if (tvLedgerTYPE.DataBinding.Field.Text = 'Invoice') then
      begin
         if not FormExists(frmCreditorAccountsSearch) then
            Application.CreateForm(TfrmCreditorAccountsSearch, frmCreditorAccountsSearch);
         if (tbPayee.Text <> '') then
            frmCreditorAccountsSearch.tbCreditor.Text := tbPayee.Text;
         if frmCreditorAccountsSearch.ShowModal = mrOk then
         begin
            if (IsValidInvoice(frmCreditorAccountsSearch.qryAccounts.FieldByName('OWING').AsCurrency,
               frmCreditorAccountsSearch.qryAccounts.FieldByName('TYPE').AsString)) then
            begin
               if (tbPayee.Text = '') then
                  tbPayee.Text := frmCreditorAccountsSearch.qryAccounts.FieldByName('CREDITOR').AsString;
               tbDesc.Text := frmCreditorAccountsSearch.qryAccounts.FieldByName('DESCR').AsString;
               neAmount.Text := frmCreditorAccountsSearch.qryAccounts.FieldByName('OWING').AsString;
               qryLedger.Edit;
               qryLedger.FieldByName('REFNO').AsString := frmCreditorAccountsSearch.qryAccounts.FieldByName('REFNO').AsString;
               qryLedger.FieldByName('LONGDESC').AsString := frmCreditorAccountsSearch.qryAccounts.FieldByName('CREDITOR').AsString;
               qryLedger.FieldByName('REASON').AsString := frmCreditorAccountsSearch.qryAccounts.FieldByName('DESCR').AsString;
               qryLedger.FieldByName('AMOUNT').AsCurrency := frmCreditorAccountsSearch.qryAccounts.FieldByName('OWING').AsCurrency;
               qryLedger.Edit;
               qryLedger.FieldByName('UNIQUEID').AsInteger := frmCreditorAccountsSearch.qryAccounts.FieldByName('NINVOICE').AsInteger;
            end
            else
               MsgErr('There is nothing owing on this Invoice');
         end;
      end;
      ReplacementCheque;
      StatusDisplay;
   end;
end;

procedure TfrmCheque.cxGrid1Exit(Sender: TObject);
begin
   UpdateTotal;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.tvLedgerREASONPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
//   QuickCode(tvLedger.Columns[colREASON].DataBinding.Field);
end;

procedure TfrmCheque.tvLedgerREASONPropertiesEditValueChanged(
  Sender: TObject);
begin
   DefaultDescr := qryLedger.FieldByName('REASON').AsString;
end;

procedure TfrmCheque.chkNoExitClick(Sender: TObject);
begin
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.chkNoExitContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmCheque.tvLedgerEditKeyPress(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
begin
   if (AItem.Name = 'tvLedgerREASON') then
   begin
      if Key = ' ' then
         QuickCode(AEdit, TcxTextEdit(AEdit).Text);
   end;
   if (AItem.Name = 'tvLedgerREFNO') then
      FNCheque := -1;
end;

procedure TfrmCheque.tvLedgerAMOUNTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
{   try
      if SystemString('show_net_trust') = 'Y' then
      begin
         if (StrToCurr(DisplayValue) > FClearedTrust) and (FClearedTrust <> 0) then
            MsgInfo('There are insufficient available Trust Funds for this transaction.');
      end;
   except
      //
   end;   }
end;

procedure TfrmCheque.tvLedgerEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
   try
      if (string(tvLedgerTYPE.EditValue) = 'Invoice') then
         AAllow := True
      else
      if (VarIsNull(tvLedgerANTICIPATED.EditValue) = False) then
      begin
         if ((string(tvLedgerANTICIPATED.EditValue) = 'N') or
            (VarIsNull(tvLedgerANTICIPATED.EditValue))) and
            (string(tvLedgerORIGINAL_TX.EditValue) = 'N') then
            AAllow := True
         else
            AAllow := False;
      end
      else
         AAllow := False;
   except
     // silent
   end;
end;

procedure TfrmCheque.qryAllocsAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('ACCT').AsString := cbBank.Text;
end;

procedure TfrmCheque.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      sPayee := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      sNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsString;
      lblName.Caption := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;

      lblAddress.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('full_ADDRESS').AsString;
   { if (frmPhoneBookSearch.qryPhoneBook.FieldbyName('WHICHADDRESS').AsString = '') or (frmPhoneBookSearch.qryPhoneBook.FieldbyName('WHICHADDRESS').AsString = 'S') then
      begin
        lblAddress.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('ADDRESS').AsString;
        lblAddress1.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('SUBURB').AsString + ' ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('STATE').AsString + ' ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTCODE').AsString;
        lblCountry.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('COUNTRY').AsString;
      end;
    if (frmPhoneBookSearch.qryPhoneBook.FieldbyName('WHICHADDRESS').AsString = 'P') then
      begin
        lblAddress.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALADDRESS').AsString;
        lblAddress1.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALSUBURB').AsString + ' ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALSTATE').AsString + ' ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALPOSTCODE').AsString;
        lblCountry.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('POSTALCOUNTRY').AsString;
      end;
    if (frmPhoneBookSearch.qryPhoneBook.FieldbyName('WHICHADDRESS').AsString = 'D') then
      begin
        lblAddress.Caption := 'DX ' + frmPhoneBookSearch.qryPhoneBook.FieldbyName('DX').AsString;
        lblAddress1.Caption := frmPhoneBookSearch.qryPhoneBook.FieldbyName('DXLOC').AsString;
      end; }
      tbDesc.SetFocus;
   end;
end;


procedure TfrmCheque.dsLedgerTemplateStateChange(Sender: TObject);
begin
   ActDeleteUpdate(nil);
end;

procedure TfrmCheque.dtpDatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if DisplayValue > TcxDateEdit(Sender).Properties.MaxDate  then
      DisplayValue := DateToStr(TcxDateEdit(Sender).Properties.MaxDate);
end;

procedure TfrmCheque.ReplacementCheque;
var
   ModalRet: integer;
begin
  if (chkReplacementCheque.Checked = True) and (FNCheque = -1) then
   begin
      if tvLedgerTYPE.EditValue = 'Ledger' then
      begin
         if (not VarIsNull(tvledgerREFNO.EditValue)) then
         begin
            frmGenericSearch := TfrmGenericSearch.Create(Self);
            frmGenericSearch.lvLookup.GridView := frmGenericSearch.tvLookupExtra;
            FNCheque := -1;
            with frmGenericSearch do
            begin
               SQL := 'select distinct cheque.ncheque as id, component_code_display code, cheque.created, cheque.chqno as refno, '+
                      ' cheque.descr, cheque.amount, cheque.payee from cheque, transitem, chart where cheque.presented is null and trust <> ''T'' '+
                      ' and cheque.reversed <> ''R'' and cheque.ncheque = transitem.ncheque and transitem.chart = chart.code '+
                      ' and cheque.acct = '+quotedstr(cbBank.Text)+' and chart.charttype <> ''BANK'' '+
                      ' and cheque.ncheque not in (select alloc.ncheque from alloc where ncheque is not null) ';
               ModalRet := ShowModal;
               if ModalRet = mrOK then
                  FNCheque := qrySource.FieldByName('id').AsInteger
               else
                  if (ModalRet = mrCancel) and (FNCheque = -1) then
                     chkReplacementCheque.Checked := False;
               Release;
            end;
         end;
      end;

      if tvLedgerTYPE.EditValue = 'Matter' then
      begin
         if (not VarIsNull(tvledgerREFNO.EditValue)) then
         begin
            frmGenericSearch := TfrmGenericSearch.Create(Self);
            frmGenericSearch.lvLookup.GridView := frmGenericSearch.tvLookupExtra;
            FNCheque := -1;
            with frmGenericSearch do
            begin
               SQL := 'select cheque.chqno as code, cheque.ncheque as id, fileid as refno, cheque.created, cheque.descr, '+
                      'cheque.amount, cheque.payee from alloc, cheque where cheque.presented is null and cheque.trust <> ''T'' '+
                      'and cheque.reversed <> ''R'' and cheque.ncheque = alloc.ncheque and nvl(alloc.private, ''N'') = ''N'' and fileid = '+ quotedstr(tvledgerREFNO.EditValue);
                 ModalRet := ShowModal;
               if ModalRet = mrOK then
               begin
                  FNCheque := qrySource.FieldByName('id').AsInteger;
                  with dmAxiom.qryTmp do
                  begin
                     Close;
                     SQL.Text := 'select billed, nmemo, nalloc, amount, tax from alloc where ncheque = :ncheque';
                     ParamByName('ncheque').AsInteger := FNCheque;
                     Open;
                     FBilled := FieldByName('billed').AsString;
                     FNMemo := FieldByName('nmemo').AsInteger;
                     FNAlloc := FieldByName('nalloc').AsInteger;
                     FAmount := FieldByName('amount').AsFloat;
                     FTax := FieldByName('tax').AsFloat;
                     Close;
                  end;
               end
               else
                  if (ModalRet = mrCancel) and (FNCheque = -1) then
                     chkReplacementCheque.Checked := False;
               Release;
            end;
         end;
      end;
   end;
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmCheque, TFormStyleHookBackground);

end.


