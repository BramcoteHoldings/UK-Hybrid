unit Receipt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Db, Menus, Buttons,
  Uni, DBAccess, MemDS, DateTimeAccount, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDropDownEdit, cxButtonEdit, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  cxLookAndFeelPainters, cxMaskEdit, cxButtons, cxContainer, cxCheckBox,
  cxGroupBox, cxGridCustomPopupMenu, cxGridPopupMenu, cxCalendar, Variants,
  ActnList, ActnMan, dxStatusBar, cxDBLookupComboBox,
  cxDBExtLookupComboBox, cxLookupEdit, cxDBLookupEdit, cxMemo,
  cxImageComboBox, Math, DateUtils, EnforceCustomDateEdit, XPStyleActnCtrls,
  cxLookAndFeels, dxCore, ExtCtrls, VCL.Themes, cxNavigator, cxDateUtils,
  dxSkinsCore, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarBuiltInMenu, System.Actions, Vcl.PlatformDefaultStyleActnCtrls,
  VCL.uRwMAPISession, uRwMAPIInterfaces, uRwEasyMAPI, cxPropertiesStore,
  VirtualTable, dxDateRanges;

const
  colTYPE = 0;
  colREFNO = 1;
  colLONGDESC = 2;
  colREASON = 3;
  colCREDIT = 4;

  pnlCREDITORS = 0;
  pnlDEBTORS = 1;
  pnlTRUST = 2;
  pnlFEES = 3;
  pnlDISB = 4;
  pnlANTD = 5;
  pnlSUND = 6;

  CM_SHOWNEDITOR = WM_APP + 402;

type
  EInvalidBill = class(Exception);

  EImbalancedAllocation = class(Exception);

  EInvalidMatter = class(Exception);

  EInvalidMatterBank = class(Exception);

  TfrmReceipt = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    lblBankName: TLabel;
    dsReceipt: TUniDataSource;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    qryReceipt: TUniQuery;
    qryBill: TUniQuery;
    qryAllocs: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    qryBanks: TUniQuery;
    qryMatters: TUniQuery;
    qryCheckReceipt: TUniQuery;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qryCheque: TUniQuery;
    qryChequeNallocs: TUniQuery;
    qryBillUpdate: TUniQuery;
    qryTmp: TUniQuery;
    Label11: TLabel;
    lblUnallocated: TLabel;
    popGridLine1: TMenuItem;
    popGridOpenMatter: TMenuItem;
    qryBankdepInsert: TUniQuery;
    popGridDistribute: TMenuItem;
    Label12: TLabel;
    qryPrinter: TUniQuery;
    qryCheqNCheqReq: TUniQuery;
    qryMatterTotals: TUniQuery;
    qryCheqReqTrans: TUniQuery;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerTYPE: TcxGridDBColumn;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerDESCR: TcxGridDBColumn;
    tvLedgerREASON: TcxGridDBColumn;
    tvLedgerCREDIT: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    chkPrint: TcxCheckBox;
    cbTrustCheck: TcxCheckBox;
    chkCheckMultipleMatters: TcxCheckBox;
    chkUpdateStatus: TcxCheckBox;
    chkNoExit: TcxCheckBox;
    neAmount: TcxCurrencyEdit;
    tbRcptno: TcxTextEdit;
    tbDesc: TcxTextEdit;
    tbPayee: TcxButtonEdit;
    cmbPrinter: TcxComboBox;
    cbBank: TcxComboBox;
    gbCheque: TcxGroupBox;
    lblChequeDrawer: TLabel;
    lblChequeBank: TLabel;
    lblCheque: TLabel;
    lblChequeBranch: TLabel;
    tbDrawer: TcxTextEdit;
    tbChqBank: TcxTextEdit;
    tbBranch: TcxTextEdit;
    tbChqno: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    cbBankImport: TcxComboBox;
    btnImport: TcxButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    styTrustOD: TcxStyle;
    styFooter: TcxStyle;
    sbarBalances: TdxStatusBar;
    tvLedgerNsubbill: TcxGridDBColumn;
    qrySubBills: TUniQuery;
    dsSubBills: TUniDataSource;
    dbgrSubBill: TcxGridDBTableView;
    dbgrSubBillDBColumn1: TcxGridDBColumn;
    dbgrSubBillDBColumn2: TcxGridDBColumn;
    dbgrSubBillDBColumn3: TcxGridDBColumn;
    qrySubBillUpdate: TUniQuery;
    qrySubBillLocate: TUniQuery;
    qrySubBilltotal: TUniQuery;
    qryMatterTotalsCL_TRUST_BAL: TFloatField;
    qryMatterTotalsBILL_CRED_OWING: TFloatField;
	  qrySubBillLookup: TUniQuery;
    qryFilterSubBill: TUniQuery;
    dsFilterSubBill: TUniDataSource;
    procgetDebtorsAmount: TUniStoredProc;
    cbType: TcxLookupComboBox;
    dtClearanceDate: TDateTimePicker;
    Label3: TLabel;
    edImport: TcxButtonEdit;
    qryBillPayment: TUniQuery;
    dsPaymentType: TUniDataSource;
    qryPaymentType: TUniQuery;
    dtpDate: TEnforceCustomDateEdit;
    tvLedgerDEBIT: TcxGridDBColumn;
    tvLedgerINVOICE: TcxGridDBColumn;
    tvLedgerNSUBBILL_ID: TcxGridDBColumn;
    qryFeeDist: TUniQuery;
    qryFeeDistInsert: TUniQuery;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    tvLedgerTAXCODE: TcxGridDBColumn;
    qryTaxRate: TUniQuery;
    dsTaxRate: TUniDataSource;
    tvLedgerTAX: TcxGridDBColumn;
    qryBankClearance: TUniQuery;
    Label6: TLabel;
    dtBankedDate: TDateTimePicker;
    qryLedgerTYPE: TStringField;
    qryLedgerREFNO: TStringField;
    qryLedgerDESCR: TStringField;
    qryLedgerREASON: TStringField;
    qryLedgerDEBIT: TFloatField;
    qryLedgerCREDIT: TFloatField;
    qryLedgerFEESDR: TFloatField;
    qryLedgerFEESCR: TFloatField;
    qryLedgerDISBDR: TFloatField;
    qryLedgerDISBCR: TFloatField;
    qryLedgerANTDDR: TFloatField;
    qryLedgerANTDCR: TFloatField;
    qryLedgerSUNDDR: TFloatField;
    qryLedgerSUNDCR: TFloatField;
    qryLedgerINVOICE: TLargeintField;
    qryLedgerUPCREDDR: TFloatField;
    qryLedgerUPCREDCR: TFloatField;
    qryLedgerNSUBBILL: TLargeintField;
    qryLedgerNSUBBILL_ID: TLargeintField;
    qryLedgerTAXCODE: TStringField;
    qryLedgerTAX: TFloatField;
    gbPayorAddress: TcxGroupBox;
    tbStreet: TcxTextEdit;
    tbSuburb: TcxTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    tbState: TcxTextEdit;
    tbPostcode: TcxTextEdit;
    Label15: TLabel;
    Label16: TLabel;
    tbEmail: TcxTextEdit;
    Label17: TLabel;
    qryReceiptTax: TUniQuery;
    tvLedgerFILEID: TcxGridDBColumn;
    qryLedgerFILEID: TStringField;
    qryLedgerNALLOC: TLargeintField;
    ActionManager1: TActionManager;
    actOk: TAction;
    qryFeeReceipt: TUniQuery;
    qryFeeRcptUpdate: TUniQuery;
    qryFeeReceiptTotal: TUniQuery;
    qryReceiptReq: TUniQuery;
    PropsReceipt: TcxPropertiesStore;
    gbTemplateOps: TcxGroupBox;
    btnChooseTemplate: TcxButton;
    BtnSave: TcxButton;
    BtnDelete: TcxButton;
    ActionTemplates: TActionList;
    ActSave: TAction;
    ActDelete: TAction;
    ActSelectTemplate: TAction;
    edtSaveNeAmount: TEdit;
    Label18: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure btnPhoneBookClick(Sender: TObject);
    procedure tbDrawerEnter(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure tbPayeeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbPayeeExit(Sender: TObject);
    procedure dbgrLedgerColEnter(Sender: TObject);
    procedure neAmountExit(Sender: TObject);
    procedure tbRcptnoExit(Sender: TObject);
    procedure qryLedgerBeforeScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure cbBankChange(Sender: TObject);
    procedure qryLedgerAfterScroll(DataSet: TDataSet);
    procedure popGridPopup(Sender: TObject);
    procedure popGridOpenMatterClick(Sender: TObject);
    procedure qryLedgerREFNOChange(Sender: TField);
    procedure popGridDistributeClick(Sender: TObject);
    procedure cmbPrinterChange(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure Label12DblClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure cbTrustCheckClick(Sender: TObject);
    procedure qryLedgerBeforeInsert(DataSet: TDataSet);
    function GetEntity(sMatterNo: string): string;
    procedure cxGrid1DBTableView1REFNOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView1REFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerCREDITPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure actOkUpdate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure cbBankPropertiesCloseUp(Sender: TObject);
    procedure qryLedgerNSUBBILLValidate(Sender: TField);
    procedure tvLedgerNsubbillPropertiesCloseUp(Sender: TObject);
    procedure showSubBillColumn;
    procedure tvLedgerInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure tvLedgerCREDITPropertiesChange(Sender: TObject);
    procedure cbTypePropertiesCloseUp(Sender: TObject);
    procedure tvLedgerDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure tvLedgerDataControllerDataChanged(Sender: TObject);
    procedure edChqImportPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbTypePropertiesEditValueChanged(Sender: TObject);
    procedure dtpDatePropertiesChange(Sender: TObject);
    procedure dtpDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure btnCancelClick(Sender: TObject);
    procedure tvLedgerTYPEPropertiesCloseUp(Sender: TObject);
    procedure tvLedgerTAXCODEPropertiesChange(Sender: TObject);
    procedure tvLedgerCREDITPropertiesEditValueChanged(Sender: TObject);
    procedure tvLedgerNsubbillPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure tvLedgerREFNOPropertiesChange(Sender: TObject);
    procedure tvLedgerNSUBBILL_IDPropertiesCloseUp(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure btnChooseTemplateClick(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
  protected
    procedure CmShownEditor(var Msg: TMessage); message CM_SHOWNEDITOR;
  private
    { Private declarations }

    bUpdateStatus       : Boolean;
    bTrustTrans         : Boolean;
    TotalAmt            : Currency;
    DefaultDescr        : String;
    AllocType           : String;
    DefaultTax          : String;
    sNName              : String;
    sPayee              : String;
    sCheque             : String;
    fsMatter            : String;
    FFileId             : string;
    bAutoReceiptMatter  : Boolean;
    KillForm            : Boolean;
    bAutoReceiptBankRec : boolean;

    fsCheqreqList       : TStringList;
    foMatterTotals      : TStringList;
    foMultipleMatters   : TStringList;
    foBillsTotal        : TStringList;
    lmsgBody            : TStringList;

    FBank               : string;

    FCreditorTotal      : currency;
    Fnreceiptreq        : string;
    FReqBy              : string;

    FSelected           : boolean;
    FCurrentStencilID   : Integer;

    procedure UpdateTotal;
    procedure FindBank;
    procedure DistributeBill; overload;
    procedure DistributeBill(bDoPost : boolean); overload;
    procedure StatusDisplay;
    procedure SetupBill;
    procedure PostCheqReqTrans(cAmount : currency; iNALLOC, iNCHEQREQ : integer);
    procedure setQuerySessions;
    procedure AddToRunningTotalForMatter(cTrustAmount : Currency);
    procedure ChequeGroupEnabled(bFlag : Boolean);
    procedure CheckForMultipleMatters(sRefNo : String);
    procedure ValidateCurrentRecord(ValidateValue: Currency = 0; ADebitValue: Currency = 0);
    procedure DeleteFromRunningTotalForBill(sRefNo : String; cTrustAmount : Currency);
    procedure AddToRunningTotalForBill(sRefNo : String; cTrustAmount : Currency);
    procedure ValidateBillTotal(AddValue: Currency = 0; ADebitValue: Currency = 0);
    procedure DisplayDistributionScreen;
    procedure ProcessImportedBill;
    procedure setUpSubBill(iNSubBill : Integer);

    function  OKtoPost(bShowError: boolean): Boolean;
    function  CheckReceipt(inreceipt : integer) : integer;
    function  GetRunningTotalForMatter : Currency;
    function  OverdrawTheTrust : Boolean;
    function  ValidateReceipt: Boolean;
    function  CheckForOverdrawnTrust : Boolean;
    function  GetRunningTotalForBill(sRefNo : String) : Currency;
    function  HasRunningTotalForBill(sRefNo : String) : Boolean;
    function  IsValidMatterForAccount(sRefNo : String; var lsMessage: string; bFromValidate: boolean = False) : Boolean;
    function CalcTax(var AAmount: Currency; ATaxCode: string): Currency;
    procedure SaveTaxAmount(iReceipt: Integer; cAmt: Currency; sParent: String; ATaxCode: string);
    procedure CalcGridTax;
    procedure SetDefaultMessageData;
    procedure ClearHeaderControls;
    procedure ClearTransGrid;

  public
    { Public declarations }

    Created: boolean;
    procedure AutoReceipt(NMemo: integer);
    procedure AutoReceiptMatter(FileID: string; Bank: string = '');
    procedure TrustTransfer(sBank: string; iCheque: integer);
    procedure TrustTransferRequisition(sBank : string; iCheque : integer);
    procedure ReceiptFromReceipts;
    procedure AutoReceiptBankRec(ReceiptReq: string; Bank: string = '');
  end;

var
  frmReceipt: TfrmReceipt;

implementation

uses
  System.UITypes, AxiomData, CashRcp, InvoiceSearch, Matters, MSearch, MiscFunc, LSearch, NSearch,
  ReceiptPrint, ReceiptDistribute, Desktop, citfunc,glComponentUtil, cxGridDBDataDefinitions,
  cxLookupDBGrid, CheqImport, Vcl.Styles.FormStyleHooks, uRwSysUtils, VCL.uRwBoxes, uRwMAPIProps,
  ScreenSave, StencilSelect, DisbSearch;

{$R *.DFM}

var
  lcTrust        : Currency;
  lcRunningTotal : Currency;
  VisualColumnFieldNames : Array of string;

const
  TEMPLATE_SECURITY_ITEM = 'Template.Receipt';

procedure TfrmReceipt.FormShow(Sender: TObject);
begin

   dtpDate.Properties.MaxDate := Today;
   Screen.Cursor := crSQLWait;
   if not Created then
   begin
      try
         dtpDate.Properties.OnChange := nil;
         AddBanks(cbBank, 'G,T,C');


         cbBank.ItemIndex := cbBank.Properties.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
         cbBank.OnClick(Self);
         cbBank.Properties.OnCloseUp(Self);

         cbType.EditValue := 'CQ';

         TotalAmt := 0;

         dtpDate.Date := Today;

         dtBankedDate.Date := Today;

{      Added 25.10.2002 GG

      If the user does not have authority to post into a locked period, prevent
      them from changing the transaction date into the locked period
}
         dtpDate.EnforceLock := not dmAxiom.Security.PriorPeriodTransactions.Post;


         if (qryLedger.RecordCount = 0) then
         begin
            cmbPrinter.Text := dmAxiom.UserReceiptPrinter;
            cmbPrinterChange(Self);
            cbBankChange(Self);
            sCheque := '';
         end;
      finally
         tbPayee.SetFocus;
         Created := True;
         dtpDate.Properties.OnChange := dtpDatePropertiesChange;
      end;
   end
   else
   begin
      cbType.EditValue := 'CQ';
   end;
   Self.Update;
   Self.Repaint;
   dtClearanceDate.Date := GetClearDate(dtpDate.Date, string(cbType.EditValue));  //qryBanks.FieldByName('CLEARANCE').AsInteger);
   dtClearanceDate.Enabled := dmAxiom.Security.Receipt.ChangeClearanceDate;
   tvLedger.DataController.Summary.OnAfterSummary := tvLedgerDataControllerSummaryAfterSummary;
   Screen.Cursor := crDefault;
end;

procedure TfrmReceipt.ReceiptFromReceipts;
begin
   KillForm := True;
end;

procedure TfrmReceipt.cbBankClick(Sender: TObject);
var
 iOptCount: integer;
begin
   FindBank;
   iOptCount := 0;

   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cbBank.Text);//set
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

   if not qryBanks.IsEmpty then
   begin
      lblBankName.Caption := qryBanks.FieldByName('NAME').AsString;
   end;

   TcxCurrencyEditProperties(tvLedgerCREDIT.Properties).MaxValue := 0;
   TcxCurrencyEditProperties(tvLedgerCREDIT.Properties).MinValue := 0;
   TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Clear;
   if qryBanks.FieldByName('TRUST').AsString = 'T' then
   begin
      TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
      iOptCount := iOptCount + 1;
      TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Protected');
      iOptCount := iOptCount + 1;
      if (qryLedger.State = dsEdit) or (qryLedger.State = dsInsert) then
         qryLedger.FieldByName('TYPE').AsString := 'Matter';
   end
   else if qryBanks.FieldByName('TRUST').AsString = 'G' then
   begin
      if not dmAxiom.Security.Receipt.ForbidDisbursements then
      begin
         TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Disburse');
         iOptCount := iOptCount + 1;
      end;
      TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Bill');
      iOptCount := iOptCount + 1;
      TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Ledger');
      iOptCount := iOptCount + 1;
   end
   else if qryBanks.FieldByName('TRUST').AsString = 'C' then
   begin
    TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Ledger');
    iOptCount := iOptCount + 1;
    if (qryLedger.State = dsEdit) or (qryLedger.State = dsInsert) then
         qryLedger.FieldByName('TYPE').AsString := 'Ledger';
   end;
   TcxComboBoxProperties(tvLedgerTYPE.Properties).DropDownRows := iOptCount;
   showSubBillColumn;
end;


procedure TfrmReceipt.FindBank;
begin
  with qryBanks do
  begin
    Close;
    ParamByName('P_Acct').AsString := cbBank.Text;
    Open;
  end;
end;

procedure TfrmReceipt.StatusDisplay;
var
  bDisplayed : boolean;
  sFileID : string;
begin
  bDisplayed := False;
  if not chkUpdateStatus.checked then
    exit;
  if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
     (qryLedger.FieldByName('TYPE').AsString = 'Protected') or
     (qryLedger.FieldByName('TYPE').AsString = 'Bill') then
  begin
    sFileID := '';
    if qryLedger.FieldByName('TYPE').AsString <> 'Bill' then
      sFileID := qryLedger.FieldByName('REFNO').AsString
    else
      sFileId := TableString('NMEMO','REFNO',qryLedger.FieldByName('REFNO').AsString,'NMATTER');

    if sFileID <> '' then
      with qryMatterTotals do
      begin
        Close;
        ParamByName('P_FILE').AsString := MatterString(sFileId,'NMATTER');  // sFileId;
        ParamByName('P_BILL').AsString := qryLedger.FieldByName('REFNO').AsString;
        Open;
        FCreditorTotal := 0;
        if not IsEmpty then
        begin
          sbarBalances.Panels[pnlCREDITORS].Text := 'Creditors: ' + Format('%m', [FieldByName('BILL_CRED_OWING').AsCurrency]);
          sbarBalances.Panels[pnlTRUST].Text := 'Trust: ' + Format('%m', [FieldByName('cl_trust_bal').AsCurrency]);
          FCreditorTotal := FieldByName('BILL_CRED_OWING').AsCurrency;
          bDisplayed := True;
          bUpdateStatus := False;
        end;
        Close;
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
        sbarBalances.Panels[pnlCREDITORS].Text := 'Balance: ' + Format('%m', [FieldByName('BALANCE').AsCurrency]);
        sbarBalances.Panels[pnlDEBTORS].Text := '';
        sbarBalances.Panels[pnlTRUST].Text := '';
        sbarBalances.Panels[pnlFEES].Text := '';
        sbarBalances.Panels[pnlDISB].Text := '';
        sbarBalances.Panels[pnlANTD].Text := '';
        sbarBalances.Panels[pnlSUND].Text := '';
        bDisplayed := True;
      end;
      Close;
    end;
  end;
  if not bDisplayed then
  begin
    sbarBalances.Panels[pnlCREDITORS].Text := '';
    sbarBalances.Panels[pnlDEBTORS].Text := '';
    sbarBalances.Panels[pnlTRUST].Text := '';
    sbarBalances.Panels[pnlFEES].Text := '';
    sbarBalances.Panels[pnlDISB].Text := '';
    sbarBalances.Panels[pnlANTD].Text := '';
    sbarBalances.Panels[pnlSUND].Text := '';
  end;
end;


procedure TfrmReceipt.DistributeBill;
begin
   DistributeBill(false);
end;

procedure TfrmReceipt.DistributeBill(bDoPost : boolean);
var
  cRemainder : Currency;
begin
   Screen.Cursor := crSQLWait;
   qryLedger.Edit;
   cRemainder := qryLedger.FieldByName('CREDIT').AsCurrency;

   if qryLedger.FieldByName('ANTDDR').AsCurrency <= cRemainder then
   begin
      qryLedger.FieldByName('ANTDCR').AsCurrency := qryLedger.FieldByName('ANTDDR').AsCurrency;
      cRemainder := cRemainder - qryLedger.FieldByName('ANTDCR').AsCurrency;
   end
   else
   begin
      qryLedger.FieldByName('ANTDCR').AsCurrency := cRemainder;
      cRemainder := 0.0;
   end;

   if qryLedger.FieldByName('DISBDR').AsCurrency <= cRemainder then
   begin
      qryLedger.FieldByName('DISBCR').AsCurrency := qryLedger.FieldByName('DISBDR').AsCurrency;
      cRemainder := cRemainder - qryLedger.FieldByName('DISBCR').AsCurrency;
   end
   else
   begin
      qryLedger.FieldByName('DISBCR').AsCurrency := cRemainder;
      cRemainder := 0.0;
   end;

   if qryLedger.FieldByName('UPCREDDR').AsCurrency <= cRemainder then
   begin
      qryLedger.FieldByName('UPCREDCR').AsCurrency := qryLedger.FieldByName('UPCREDDR').AsCurrency;
      cRemainder := cRemainder - qryLedger.FieldByName('UPCREDCR').AsCurrency;
   end
   else
   begin
      qryLedger.FieldByName('UPCREDCR').AsCurrency := cRemainder;
      cRemainder := 0.0;
   end;

   if qryLedger.FieldByName('SUNDDR').AsCurrency <= cRemainder then
   begin
      qryLedger.FieldByName('SUNDCR').AsCurrency := qryLedger.FieldByName('SUNDDR').AsCurrency;
      cRemainder := cRemainder - qryLedger.FieldByName('SUNDCR').AsCurrency;
   end
   else
   begin
      qryLedger.FieldByName('SUNDCR').AsCurrency := cRemainder;
      cRemainder := 0.0;
   end;

   qryLedger.FieldByName('FEESCR').AsCurrency := cRemainder;
   if bDoPost then
      qryLedger.Post;
   Screen.Cursor := crDefault;
end;


function TfrmReceipt.OKtoPost(bShowError : boolean) : Boolean;
var
  sTmp : String;
  bOKtoPost : boolean;
begin
  bOKtoPost := True;
  sTmp := '';
  if pos('NAN', VarToStr(neAmount.EditValue)) > 0 then
    neAmount.EditValue := 0;
  try
    if (not VarIsNull(neAmount.EditValue)) then
    begin
       if ((neAmount.EditValue <> 0) or (dmAxiom.Security.Receipt.ForceTally)) and
          (ABS(TotalAmt - neAmount.EditValue) > 0.0049) then       // (neAmount.EditValue <> TotalAmt) then
          sTmp := sTmp + '       Receipt is not fully allocated. Amount allocated is ' + CurrToStr(TotalAmt) + #13;
    end;
  except
    //
  end;

  if cbBank.Text = '' then
    sTmp := sTmp + '       Bank Account Code' + Chr(13);

  if tbPayee.Text = '' then
    sTmp := sTmp + '       Payor' + Chr(13);

  if tbDesc.Text = '' then
    sTmp := sTmp + '       Reason' + Chr(13);

  if tbRcptno.Text = '' then
    sTmp := sTmp + '       Receipt Number' + Chr(13);

  if (cbType.EditValue = 'BC') OR (cbType.EditValue = 'CQ') then
  begin
    if (tbDrawer.Text = '') or (tbChqBank.Text = '') or (tbBranch.Text = '') or (tbChqno.Text = '') then
      sTmp := sTmp + '       Cheque Details' + #13;
  end;

  if cmbPrinter.Text = '' then
    sTmp := sTmp + '       Printer' + #13;

  if sTmp <> '' then
  begin
    if bShowError then
      MsgErr('Please complete the following Receipt details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False;
  end;

  if bOKtoPost and bShowError then
  begin
    with qryCheckReceipt do
    begin
      ParamByName('P_Acct').AsString := cbBank.Text;
      ParamByName('P_Rcptno').AsString := tbRcptno.Text;
      Open;

      if not IsEmpty then
      begin
        MsgInfo('This Receipt Number has already been entered.');
        bOKtoPost := False;
      end;
      Close;
    end;
  end;
  OKtoPost := bOKtoPost;
end;


function  TfrmReceipt.CheckReceipt(inreceipt : integer) : integer;
var
   bok : boolean;
   iret : integer;
begin
   bok := false;
   iret :=  inreceipt;
   while (bok = False) do
   begin
      with TUniQuery.Create(Self) do
      begin
         Connection := dmAxiom.uniInsight;
         Close;
         SQL.Text := 'SELECT COUNT(*) as CNT FROM RECEIPT WHERE NRECEIPT = :NRECEIPT';
         ParamByName('NRECEIPT').AsInteger := iret;
         open;
         bok := FieldByName('CNT').AsInteger = 0;
         close;
         free;
      end;
      if bOk = False then
         iret := GetSequenceNumber('SQNC_NRECEIPT');
   end;
   CheckReceipt := iret;
end;

procedure TfrmReceipt.PostCheqReqTrans(cAmount : currency; iNALLOC, iNCHEQREQ : integer);
begin
  with qryCheqReqTrans do
    begin
      //distribute the ANTD to the oldest unpaid chequreq here!!!
      if (Active = false) then
        Open;
      Insert;
      FieldbyName('CREATED').AsDateTime := Trunc(Now);
      FieldbyName('AMOUNT').AsCurrency := cAmount;
      FieldbyName('NALLOC').AsInteger := iNALLOC;
      FieldbyName('NCHEQREQ').AsInteger := iNCHEQREQ;
      FieldbyName('OPERATOR').AsString := dmAxiom.UserId;
      Post;
      // Doh! Don't close as it is posted after the alloc!
      //Close;
    end;
end;

procedure TfrmReceipt.AutoReceipt(NMemo: integer);
begin
   // This procedure sets up a receipt Automagically from a bill
   // supplied
   Screen.Cursor := crSQLWait;
   KillForm := True;
   Self.Show;
   qryBill.Close;
   qryBill.ParamByName('NMEMO').AsInteger := NMemo;
   qryBill.Open;

   qrySubBills.Open;

   bAutoReceiptMatter := False;
   if not qryBill.IsEmpty then
   begin
      if tbDesc.Text = '' then
      begin
         // Create a new one
         cbBank.ItemIndex := cbBank.Properties.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
         cbBankClick(Self);
         tbDesc.Text := 'Payment of Bill ' + qryBill.FieldbyName('REFNO').AsString;
         tbDrawer.Text := tbPayee.Text;
      end;

      with qryLedger do
      begin
         Append;
         FieldByName('TYPE').AsString := 'Bill';
         SetupBill;
         DistributeBill;
         neAmount.EditValue := neAmount.EditValue + FieldByName('CREDIT').AsCurrency;
         foMultipleMatters.Add(qryLedger.FieldByName('REFNO').AsString);
         if State <> dsInsert then
            Edit;
      end;
      CheckUnpaidCreditors(qryBill.FieldByName('REFNO').AsString);

   end;
   UpdateTotal;
   Screen.Cursor := crDefault;
end;


procedure TfrmReceipt.AutoReceiptMatter(FileID: string; Bank: string = '');
var
    sTrust : String;
begin
   // This procedure sets up a receipt Automagically from a FileID supplied
   Screen.Cursor := crSQLWait;
   Created := True;
   qryMatters.Close;
   qryMatters.ParamByName('P_File').AsString := FileID;
   qryMatters.Open;
   if (not qryMatters.IsEmpty) then
   begin
      FFileId := FileID;
      if Bank <> '' then
      begin
        cbBank.EditValue := Bank;
        cbBank.Text := Bank;
      end
      else
        cbBank.ItemIndex := cbBank.Properties.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
      cbBankClick(Self);

      sTrust := TableString('BANK','ACCT',Bank,'TRUST');

      bAutoReceiptMatter := True;

      tbDrawer.Text := tbPayee.Text;
      if not qryLedger.Active then
         qryLedger.Open;

      with qryLedger do
      begin
         Insert;
         if sTrust = 'T' then
         begin
            TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
            FieldByName('TYPE').AsString := 'Matter';
            FieldByName('REFNO').AsString := FileID;
            FieldByName('DESCR').AsString := MatterString(qryMatters.FieldbyName('FILEID').AsString, 'MATLOCATE');
         end
         else
         begin
            FileID := '';
            FFileId := FileID;
            TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Bill');
            FieldByName('TYPE').AsString := 'Bill';
            FieldByName('REFNO').AsString := '';
            FieldByName('DESCR').AsString := '';
            tvLedgerREFNO.EditValue := Null;
            tvLedgerDESCR.EditValue := Null;
         end;

         if State <> dsInsert then
            Edit;
         Post;
      end;
      if Self.Visible then
      begin
         if tbDesc.Visible then
            tbDesc.SetFocus;
      end;
   end;
   qryMatters.Close;
   Screen.Cursor := crDefault;
end;


function TfrmReceipt.CalcTax(var AAmount: Currency; ATaxCode: string): Currency;
var
  cAmount,
  cTax: currency;
begin
  Result := 0;
  if ATaxCode <> '' then
  begin
    cAmount := AAmount;
    cTax := TaxCalc(cAmount, '', DefaultTax, dtpDate.Date);
    AAmount := cAmount;
    Result := cTax;
  end;
end;

{-------------------------------------------------------------------------------
  Name:         SaveTaxAmount
  Description:  Save the tax portion of the current entry to the ledger. The
                ledger code will come from the tax type, that is, GST Input or
                GST Output.
  Return:       <none>
  Parameters:   iReceipt - The same receipt number generated by the system for
                           all the entries.
                cAmt - The amount either credit or debit of the current entry.
  Programmer:
  Date:

-------------------------------------------------------------------------------}

procedure TfrmReceipt.SaveTaxAmount(iReceipt: Integer; cAmt: Currency; sParent: String; ATaxCode: string);
var
  lsLedger      : String;
  lsDefaultTax  : String;
  lsAccountCode : String;
  lcTax         : Currency;
  glComponentSetup : TglComponentSetup;
  sLedgerKey    : String;
begin
   try
      glComponentSetup := dmAxiom.getGlComponents;

      lcTax := cAmt;

      if (lcTax <> 0) then
      begin
         lsDefaultTax := get_default_gst('GeneralLedgerTax');

         if (lsDefaultTax = '') then
            lsDefaultTax := 'N/A';

         lsLedger := 'OUTPUTLEDGER';

         lsAccountCode := TableString('TAXTYPE', 'CODE', ATaxCode, lsLedger);

         if (lsAccountCode <> '') then
         begin
            sLedgerKey :=  glComponentSetup.buildLedgerKey('',lsAccountCode,'',true,'');

            PostLedger(dtpDate.Date
                , lcTax
                , 0
                , qryReceipt.FieldByName('RCPTNO').AsString
                , 'RECEIPT'
                , iReceipt
                , qryLedger.FieldByName('REASON').AsString
                , sLedgerKey
                , ''
                , -1
                , ''
                , lsDefaultTax
                , False
                , sParent);
         end;    //  end if
      end;    //  end if
   except
      on E: Exception do
      begin
         Raise;
      end;
   end;
end;

procedure TfrmReceipt.btnCancelClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmReceipt.TrustTransfer(sBank : string; iCheque : integer);
var
  sDesc : string;
begin
  // This procedure sets up a receipt Automagically from an cheque
  // supplied
  bTrustTrans := True;
  with qryCheque do
  begin
    ParamByName('P_Ncheque').AsInteger := iCheque;
    Open;
    if not IsEmpty then
    begin
      cbBank.ItemIndex := cbBank.Properties.Items.IndexOf(sBank);
      cbBankClick(Self);
      sDesc := 'Trust Transfer from ' + FieldByName('ACCT').AsString + ' ' + FieldByName('CHQNO').AsString;
      tbDesc.Text := sDesc;
      tbDrawer.Text := TableString('BANK', 'ACCT', FieldByName('ACCT').AsString, 'NAME');
      tbBranch.Text := TableString('BANK', 'ACCT', FieldByName('ACCT').AsString, 'SUBURB');
      tbChqBank.Text := TableString('BANK', 'ACCT', FieldByName('ACCT').AsString, 'BANK_ABBREV');
      tbChqno.Text := FieldByName('CHQNO').AsString;
      neAmount.EditValue := FieldByName('AMOUNT').AsCurrency;
    end;
  end;
  //show;
  with qryChequeNallocs do
  begin
    ParamByName('P_Ncheque').AsInteger := iCheque;
    Open;
    qryLedger.Open;
    while not EOF do
    begin
      with qryLedger do
      begin
        Insert;
        FieldByName('TYPE').AsString := 'Matter';
        FieldByName('REFNO').AsString := qryChequeNallocs.FieldByName('FILEID').AsString;
        FieldByName('DESCR').AsString :=  qryChequeNallocs.FieldByName('CLIENT_NAME').AsString + ' ' + qryChequeNallocs.FieldByName('MATTER_DESC').AsString + ' ' + qryChequeNallocs.FieldByName('FILEID').AsString;
        FieldByName('REASON').AsString := sDesc;
        FieldByName('CREDIT').AsCurrency := 0 - qryChequeNallocs.FieldbyName('AMOUNT').AsCurrency;
        Post;
      end;
      Next;
    end;
  end;
  qryCheque.Close;
  qryChequeNallocs.Close;
  btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceipt.TrustTransferRequisition(sBank : string; iCheque : integer);
begin
end;

procedure TfrmReceipt.UpdateTotal;
var
  Unallocated: Currency;
  Row: integer;
begin
   bUpdateStatus := False;
   TotalAmt := 0;			{ use temp for efficiency }
   for Row := 0 to tvLedger.DataController.RecordCount - 1 do
   begin
      tvLedger.DataController.FocusedRowIndex := Row;
      if not VarIsNull(tvLedgerCREDIT.EditValue) then
      begin
         if tvLedgerTAX.Visible then
            TotalAmt := TotalAmt + tvLedger.DataController.GetValue(Row, tvLedgerCREDIT.Index) +
                        tvLedger.DataController.GetValue(Row, tvLedgerTAX.Index)
         else
            TotalAmt := TotalAmt + tvLedger.DataController.GetValue(Row, tvLedgerCREDIT.Index);
      end;
   end;
   lblTotal.Caption := Format('%m', [TotalAmt]);

   if (neAmount.EditValue <> 0) or dmAxiom.Security.Receipt.ForceTally then
   begin
      Unallocated := neAmount.EditValue - TotalAmt; //Format('%m', [neAmount.EditValue - TotalAmt]);
      lblUnallocated.Caption := Format('%m', [Unallocated]);
   end;
   btnOk.Enabled := OKtoPost(False);
   bUpdateStatus := True;
end;


procedure TfrmReceipt.dbgrLedgerExit(Sender: TObject);
var
   Row: integer;
begin
   UpdateTotal;
   TotalAmt := 0;
   for Row := 0 to tvLedger.DataController.RecordCount - 1 do
   begin
      tvLedger.DataController.FocusedRowIndex := Row;
      If not VarIsNull(tvLedger.DataController.GetValue(Row, tvLedgerCREDIT.Index)) then
      begin
         if tvLedgerTAX.Visible = True then
            TotalAmt := TotalAmt + tvLedger.DataController.GetValue(Row, tvLedgerCREDIT.Index) +
                        tvLedger.DataController.GetValue(Row, tvLedgerTAX.Index)
         else
            TotalAmt := TotalAmt + tvLedger.DataController.GetValue(Row, tvLedgerCREDIT.Index);
      end;
   end;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmReceipt.btnPhoneBookClick(Sender: TObject);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      sPayee := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      sNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsString;
      tbDesc.SetFocus;
   end;
end;

procedure TfrmReceipt.tbDrawerEnter(Sender: TObject);
begin
  if tbDrawer.Text = '' then
    tbDrawer.Text := tbPayee.Text;
end;

procedure TfrmReceipt.qryLedgerAfterInsert(DataSet: TDataSet);
begin

  if AllocType = '' then
  begin
    if qryBanks.FieldByName('TRUST').AsString = 'C' then
      qryLedger.FieldByName('TYPE').AsString := 'Ledger'
    else if qryBanks.FieldByName('TRUST').AsString = 'T' then
      qryLedger.FieldByName('TYPE').AsString := 'Matter'
    else
      qryLedger.FieldByName('TYPE').AsString := 'Bill';
  end
  else
    qryLedger.FieldByName('TYPE').AsString := AllocType;

  qryLedger.FieldByName('REASON').AsString := DefaultDescr;
  qryLedger.FieldByName('DEBIT').AsCurrency := 0.0;
  qryLedger.FieldByName('FEESDR').AsCurrency := 0.0;
  qryLedger.FieldByName('ANTDDR').AsCurrency := 0.0;
  qryLedger.FieldByName('ANTDDR').AsCurrency := 0.0;
  qryLedger.FieldByName('SUNDDR').AsCurrency := 0.0;
end;


procedure TfrmReceipt.popRemoveClick(Sender: TObject);
begin
  if (qryLedger.RecordCount > 0) then
    begin
      qryLedger.Delete;
    end;    //  end if

end;

procedure TfrmReceipt.popEditClick(Sender: TObject);
begin
  if qryLedger.RecordCount > 0 then
    qryLedger.Edit;
end;



procedure TfrmReceipt.tbPayeeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    QuickCode(Sender);
end;

procedure TfrmReceipt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SettingSave('RECEIPT', 'BANK', cbBank.Text);

   qryReceipt.Close;
   qryMatters.Close;
   qryBill.Close;
   qryAllocs.Close;
   qryLedger.Close;
   qryBanks.Close;
   qryCheckReceipt.Close;
   qryCheque.Close;
   qryChequeNallocs.Close;
   qryTmp.Close;
   qryPaymentType.Close;
   qryTaxRate.Close;

   FreeAndNil(foMatterTotals);
   FreeAndNil(foMultipleMatters);
   FreeAndNil(foBillsTotal);
   FreeAndNil(fsCheqreqList);

   if (frmDesktop.pagMainControl.ActivePageIndex = 1) then
      Action := caFree
   else if KillForm then
      Action := caFree
   else
   begin
      Action := caFree;
   end;
   TFormStyleHookBackground.BackGroundSettings.Color := clBtnFace;//set
end;

procedure TfrmReceipt.tbPayeeExit(Sender: TObject);
begin
   Quickcode(Sender);
   btnOk.Enabled := OKtoPost(False);
   if DefaultDescr = '' then
      DefaultDescr := tbDesc.Text;
   if not qryLedger.Modified then
      qryLedger.Edit;
   if tvLedgerREASON.DataBinding.Field.Text = '' then
   begin
      tvLedgerREASON.DataBinding.Field.Text := DefaultDescr;
      qryLedger.FieldByName('Reason').AsString := DefaultDescr;
      if (qryLedger.FieldByName('TYPE').AsString <> 'Disburse') then
         qryLedger.FieldByName('refno').AsString := FFileId;
   end;
end;

procedure TfrmReceipt.dbgrLedgerColEnter(Sender: TObject);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   if tvLedgerREASON.DataBinding.Field.Text = '' then
   begin
      tvLedgerREASON.DataBinding.Field.Text := DefaultDescr;
      qryLedger.FieldByName('Reason').AsString := DefaultDescr;
      if (qryLedger.FieldByName('TYPE').AsString <> 'Disburse') then
         qryLedger.FieldByName('refno').AsString := FFileId;
   end;
end;

procedure TfrmReceipt.neAmountExit(Sender: TObject);
begin
  if VarIsNull(neAmount.EditValue) then
    neAmount.Value := 0;

  btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceipt.tbRcptnoExit(Sender: TObject);
begin
  btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceipt.qryLedgerBeforeScroll(DataSet: TDataSet);
begin
  AllocType := qryLedger.FieldByName('TYPE').AsString;
end;

procedure TfrmReceipt.FormCreate(Sender: TObject);
begin
   sNName:='';
   sPayee:='';
   bTrustTrans := False;
   AllocType := '';
   DefaultDescr := '';
   neAmount.EditValue := 0;
   FFileId := '';
   KillForm := False;
   bAutoReceiptBankRec := False;

   tvLedger.DataController.Summary.OnAfterSummary := nil;

   FSelected := False;
   FCurrentStencilID := -1;

   Screen.Cursor := crSQLWait;

   if dbgrLedger.Font.Size <> dmAxiom.GridFont then
      dbgrLedger.Font.Size := dmAxiom.GridFont;

   qryLedger.Open;
   StringPopulate(cmbPrinter.Properties.Items, 'PRINTER', 'CODE', 'TYPE = ''R'' AND BANK_ACCT = ''' + cbBank.Text + '''');
   cmbPrinter.Enabled := True;
   DefaultTax := get_default_gst('Receipt');
   if DefaultTax = '' then
      DefaultTax := 'NOTAX';
   //rb
   bUpdateStatus := True;
   AddBanks(cbBankImport, 'T');
   AddBanks(cbBank, 'G,T,C');

   if (IsTrustAccount(cbBank.Text) = True) then
      cbTrustCheck.Checked := (SystemString('CHECK_TRUST_ODRAW_TTO') = 'Y');

   setQuerySessions;

   foMatterTotals := TStringList.Create;
   foMultipleMatters := TStringList.Create;
   foBillsTotal := TStringList.Create;

   Created := False;

   qrySubBills.Close;
   qrySubBills.Open;
   qryPaymentType.Open;
   qryTaxRate.Open;
   Screen.Cursor := crDefault;

   gbTemplateOps.Visible := dmAxiom.Secure(TEMPLATE_SECURITY_ITEM);
end;

procedure TfrmReceipt.dbgrLedgerEnter(Sender: TObject);
begin
  if DefaultDescr = '' then
    DefaultDescr := tbDesc.Text;
end;


procedure TfrmReceipt.cbBankChange(Sender: TObject);
begin
   // this is to stop the qryledger being reset during a trust transfer
   if ((not bTrustTrans) and (qryLedger.State <> dsInsert)
      and (qryLedger.RecordCount = 0)) then
   begin
      qryLedger.Close;
      qryLedger.Open;
      bTrustTrans := False;
      foMatterTotals.Clear;
      foMultipleMatters.Clear;
      foBillsTotal.Clear;
      lblUnallocated.Caption := '';
      lblTotal.Caption := '';
   end;

   if (qryLedger.State <> dsInsert) and (qryLedger.RecordCount = 0) then
   begin
      tbRcptNo.Text := '';
      cmbPrinter.Properties.Items.Clear;
      cmbPrinter.Text := '';
      StringPopulate(cmbPrinter.Properties.Items, 'PRINTER', 'CODE', 'TYPE = ''R'' AND BANK_ACCT = ''' + cbBank.Text + '''');
      cmbPrinter.Enabled := True;
      cmbPrinterChange(Self);
      FBank := cbBank.Text;
   end;
end;


procedure TfrmReceipt.qryLedgerAfterScroll(DataSet: TDataSet);
begin
   if bUpdateStatus then
   begin
      StatusDisplay;
   end;

end;


procedure TfrmReceipt.popGridPopup(Sender: TObject);
begin
  popGridOpenMatter.Enabled := (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
                               (qryLedger.FieldByName('TYPE').AsString = 'Protected') or
                               (qryLedger.FieldByName('TYPE').AsString = 'Disburse') or
                               (qryLedger.FieldByName('TYPE').AsString = 'Bill');
  popGridDistribute.Visible := qryLedger.FieldByName('TYPE').AsString = 'Bill';
end;


procedure TfrmReceipt.popGridOpenMatterClick(Sender: TObject);
var
  sFileID : string;
begin
  sFileID := '';
  if qryLedger.FieldByName('TYPE').AsString = 'Bill' then
    sFileID := qryBill.FieldByName('NMATTER').AsString
  else
    if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
       (qryLedger.FieldByName('TYPE').AsString = 'Protected') {or
       (qryLedger.FieldByName('TYPE').AsString = 'Disburse')} then
      sFileID := qryLedger.FieldByName('REFNO').AsString;
  if sFileID <> '' then
    with TfrmMatters.Create(Self) do
      DisplayMatter(sFileID);
end;


procedure TfrmReceipt.qryLedgerREFNOChange(Sender: TField);
begin
   qryLedgerREFNO.OnChange := nil;
   if (qryLedger.FieldByName('REFNO').AsString <> '') and (not bAutoReceiptMatter) then
   begin
      qryLedger.FieldByName('REFNO').AsString := UpperCase(Trim(qryLedger.FieldByName('REFNO').AsString));
      if (qryLedger.FieldByName('TYPE').AsString = 'Matter') then
         qryLedger.FieldByName('DESCR').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'MATLOCATE');

      if tvLedgerTYPE.DataBinding.Field.Text = 'Bill' then
      begin
         with qryTmp do
         begin
            Close;
            SQL.Text := 'SELECT FILEID FROM NMEMO WHERE REFNO = ' + QuotedStr(qryLedger.FieldByName('REFNO').AsString);
            Open;
            qryLedger.FieldByName('DESCR').AsString := MatterString(FieldByName('FILEID').AsString, 'MATLOCATE');
            Close;
         end;
         with qryBill do
         begin
            Close;
            ParamByName('NMEMO').AsString :=  GetNMemoRef('NMEMO', qryLedger.FieldByName('REFNO').AsString);
            Open;
            if not IsEmpty then
            begin
               SetupBill;
               DistributeBill;
            end;    //  end if
         end;
      end;
      if tvLedgerTYPE.DataBinding.Field.Text = 'Ledger' then
      begin
         if not LedgerHead(qryLedger.FieldByName('REFNO').AsString) then
            qryLedger.FieldByName('DESCR').AsString := LedgerComponentString(qryLedger.FieldByName('REFNO').AsString, 'REPORT_DESC')
         else
         begin
            MsgErr('You may not post to a header ledger');
            qryLedger.FieldByName('REFNO').AsString := '';
         end;
      end;
  end;

   StatusDisplay;
   qryLedgerREFNO.OnChange := qryLedgerREFNOChange;
end;

procedure TfrmReceipt.popGridDistributeClick(Sender: TObject);
begin
  DisplayDistributionScreen;
end;

procedure TfrmReceipt.SetupBill;
begin
  if qryLedger.State = dsBrowse then
    qryLedger.Edit;


  qryLedger.FieldByName('REFNO').AsString := qryBill.FieldByName('REFNO').AsString;
  if qryLedger.State = dsBrowse then
    qryLedger.Edit;
  qryLedger.FieldByName('DESCR').AsString := MatterString(qrybill.FieldByName('FILEID').AsString, 'MATLOCATE');

  if qryLedger.FieldByName('REASON').AsString = '' then
    qryLedger.FieldByName('REASON').AsString := DefaultDescr;

  if qryLedger.FieldByName('REASON').AsString = '' then
    qryLedger.FieldByName('REASON').AsString := 'Payment of Bill ' + qryBill.FieldbyName('REFNO').AsString;

  if (tbDesc.Text = '') then
    tbDesc.Text := qryLedger.FieldByName('REASON').AsString;

  qryLedger.FieldByName('CREDIT').AsCurrency := qryBill.FieldbyName('OWING').AsCurrency;  //  qryBill.FieldbyName('FEES').AsCurrency + qryBill.FieldbyName('DISB').AsCurrency + qryBill.FieldbyName('UPCRED').AsCurrency + qryBill.FieldbyName('ANTD').AsCurrency + qryBill.FieldbyName('SUND').AsCurrency + qryBill.FieldbyName('TAX').AsCurrency - qryBill.FieldbyName('FEES_PAID').AsCurrency - qryBill.FieldbyName('DISB_PAID').AsCurrency - qryBill.FieldbyName('ANTD_PAID').AsCurrency - qryBill.FieldbyName('UPCRED_PAID').AsCurrency - qryBill.FieldbyName('SUND_PAID').AsCurrency - qryBill.FieldByName('TAX_PAID').AsCurrency;
  qryLedger.FieldByName('DEBIT').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
  qryLedger.FieldByName('FEESDR').AsCurrency := qryBill.FieldByName('FEES').AsCurrency - qryBill.FieldByName('FEES_PAID').AsCurrency + qryBill.FieldByName('FEESTAX').AsCurrency - qryBill.FieldByName('FEESTAX_PAID').AsCurrency;
  qryLedger.FieldByName('DISBDR').AsCurrency := qryBill.FieldByName('DISB').AsCurrency - qryBill.FieldByName('DISB_PAID').AsCurrency + qryBill.FieldByName('DISBTAX').AsCurrency - qryBill.FieldByName('DISBTAX_PAID').AsCurrency;
  qryLedger.FieldByName('UPCREDDR').AsCurrency := qryBill.FieldByName('UPCRED').AsCurrency - qryBill.FieldbyName('UPCRED_PAID').AsCurrency + qryBill.FieldByName('UPCREDTAX').AsCurrency - qryBill.FieldByName('UPCREDTAX_PAID').AsCurrency;
  qryLedger.FieldByName('ANTDDR').AsCurrency := qryBill.FieldByName('ANTD').AsCurrency - qryBill.FieldbyName('ANTD_PAID').AsCurrency + qryBill.FieldByName('ANTDTAX').AsCurrency - qryBill.FieldByName('ANTDTAX_PAID').AsCurrency;
  qryLedger.FieldByName('SUNDDR').AsCurrency := qryBill.FieldByName('SUND').AsCurrency - qryBill.FieldByName('SUND_PAID').AsCurrency + qryBill.FieldByName('SUNDTAX').AsCurrency - qryBill.FieldByName('SUNDTAX_PAID').AsCurrency;
  qryLedger.FieldByName('INVOICE').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;

  qryLedger.Post;

end;

procedure TfrmReceipt.cmbPrinterChange(Sender: TObject);
begin
   qryPrinter.Close;
   qryPrinter.ParamByName('CODE').AsString := cmbPrinter.Text;
   qryPrinter.Open;
   tbRcptno.Text := NextRefno(qryPrinter.FieldByName('NUM_LAST').AsString);
   if qryPrinter.IsEmpty then
      begin
        chkPrint.Checked := False;
        chkPrint.Enabled := False;
        chkPrint.StyleDisabled.Color := Self.Color;
      end
   else
   begin
      chkPrint.Enabled := True;
      chkPrint.Checked := True;
   end;
   qryPrinter.Close;

   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceipt.btnQueryClick(Sender: TObject);
begin
   ActiveSmartQuery(self);
end;

procedure TfrmReceipt.Label12DblClick(Sender: TObject);
begin
   ActiveSmartQuery(self);
end;

procedure TfrmReceipt.btnImportClick(Sender: TObject);
var
   sNCheque : string;
   sDesc : String;
   frmChequeImport: TfrmChequeImport;
   bChequeFound: boolean;
begin
   bChequeFound := True;
   if edImport.Text <> '' then
   begin
      // first we need the ncheque
      qryLedger.Close;
      qryLedger.Open;

      with dmAxiom.qryTmp do
      begin
         close;
         SQL.Text := 'SELECT count(1) as ChqCnt FROM CHEQUE WHERE CHQNO = :CHQNO AND ACCT = :ACCT';
         ParamByName('CHQNO').AsString := edImport.Text;
         ParamByName('ACCT').AsString := cbBankImport.Text;
         open;
         if (FieldByName('ChqCnt').AsInteger > 1) and (not FSelected) then
         begin
            frmChequeImport := TfrmChequeImport.Create(Self);
            try
               frmChequeImport.qryCheques.Close;
               frmChequeImport.qryCheques.ParamByName('CHQNO').AsString := edImport.Text;
               frmChequeImport.qryCheques.ParamByName('ACCT').AsString := cbBankImport.Text;
               frmChequeImport.qryCheques.Open;
               if frmChequeImport.ShowModal = mrOk then
               begin
                  sNCheque := frmChequeImport.pNCheque;
                  sCheque := sNCheque;
               end;
            finally
               frmChequeImport.qryCheques.Close;
               frmChequeImport.Destroy;
            end;
         end
         else
         begin
            SQL.Text := 'SELECT NCHEQUE FROM CHEQUE WHERE CHQNO = :CHQNO AND ACCT = :ACCT';
            ParamByName('CHQNO').AsString := edImport.Text;
            ParamByName('ACCT').AsString := cbBankImport.Text;
            open;
            sNCheque := FieldByName('NCHEQUE').AsString;
            sCheque := sNCheque;
         end;
         Close;
      end;


      with qryCheqNCheqReq do
      begin
         close;
         ParamByName('P_NCHEQUE').AsString := sNCheque;
         Open;

         first;
         if EOF then // not cheqreqs
         begin
             MessageDlg('The Cheque could not be found', mtWarning, [mbOK], 0);
             close;
             bChequeFound := False;
         end;
      end;

      if bChequeFound then
      begin
           // set the bank to the office accoutn for this entity
         if qryBanks.FieldByName('TRUST').AsString = 'T' then
         with dmAxiom.qryTmp do
         begin
            close;
            SQL.Text := 'SELECT ACCT FROM BANK WHERE TRUST = ''G'' AND ENTITY = :ENTITY';
            ParamByName('ENTITY').AsString := dmAxiom.Entity;
            open;
            cbBank.ItemIndex := cbBank.Properties.Items.IndexOf(FieldByName('ACCT').AsString);
            cbBankClick(Self);
            Close;
         end;

         with qryCheque do
         begin
            Close;
            ParamByName('P_Ncheque').AsString := sNCheque;
            Open;
            if not IsEmpty then
            begin
               cbBankClick(Self);
               sDesc := 'Trust Transfer from ' + FieldByName('ACCT').AsString + ' ' + FieldByName('CHQNO').AsString;
               tbDesc.Text := sDesc;
               tbDrawer.Text := TableString('BANK', 'ACCT', FieldByName('ACCT').AsString, 'NAME');
               tbBranch.Text := TableString('BANK', 'ACCT', FieldByName('ACCT').AsString, 'SUBURB');
               tbChqBank.Text := TableString('BANK', 'ACCT', FieldByName('ACCT').AsString, 'BANK_ABBREV');
               tbChqno.Text := FieldByName('CHQNO').AsString;
               neAmount.EditValue := FieldByName('AMOUNT').AsCurrency;
            end;
            close;
         end;

         with qryCheqNCheqReq do
         begin
            // populate the fields
            First;
            while not eof do
            begin
               with qryLedger do
               begin
                  Insert;

                  FieldByName('TYPE').AsString := 'Bill';

                  if (State <> dsInsert) and (State <> dsEdit) then Edit;
                  FieldByName('INVOICE').AsInteger := qryCheqNCheqReq.FieldByName('NMEMO').AsInteger;

                  if (State <> dsInsert) and (State <> dsEdit) then Edit;
                  FieldByName('REFNO').AsString := qryCheqNCheqReq.FieldByName('BILLNO').AsString;

                  if (State <> dsInsert) and (State <> dsEdit) then Edit;
                  FieldByName('DESCR').AsString :=  qryCheqNCheqReq.FieldByName('DESCR').AsString;

                  if (State <> dsInsert) and (State <> dsEdit) then Edit;
                  FieldByName('REASON').AsString := sDesc;

                  if (State <> dsInsert) and (State <> dsEdit) then Edit;
                  FieldByName('CREDIT').AsCurrency := qryCheqNCheqReq.FieldbyName('AMOUNT').AsCurrency;

                  if (State <> dsInsert) and (State <> dsEdit) then Edit;
                  Post;
                  CheckUnpaidCreditors(FieldByName('REFNO').AsString);
               end;

               ProcessImportedBill;
               Next;
            end;
            close;
         end;
      end;
   end;
end;

procedure TfrmReceipt.setQuerySessions;
begin
   qryMatterTotals.Connection := dmAxiom.uniInsight;
   qryPrinter.Connection := dmAxiom.uniInsight;
   qryReceipt.Connection := dmAxiom.uniInsight;
   qryMatters.Connection := dmAxiom.uniInsight;
   qryBill.Connection := dmAxiom.uniInsight;
   qryAllocs.Connection := dmAxiom.uniInsight;
   qryLedger.Connection := dmAxiom.uniInsight;
   qryBanks.Connection := dmAxiom.uniInsight;
   qryCheckReceipt.Connection := dmAxiom.uniInsight;
   qryCheque.Connection := dmAxiom.uniInsight;
   qryChequeNallocs.Connection := dmAxiom.uniInsight;
   qryBillUpdate.Connection := dmAxiom.uniInsight;
   qryTmp.Connection := dmAxiom.uniInsight;
   qryBankdepInsert.Connection := dmAxiom.uniInsight;
   qryCheqNCheqReq.Connection := dmAxiom.uniInsight;
   qryCheqReqTrans.Connection := dmAxiom.uniInsight;
end;

procedure TfrmReceipt.ValidateCurrentRecord(ValidateValue: Currency; ADebitValue: Currency);
begin
   if (qryLedger.FieldByName('TYPE').AsString = 'Bill') then
   begin
      try
        if (ValidateValue <> ADebitValue) then
          begin
            if not qryLedger.Modified then
              qryLedger.Edit;
            qryLedger.FieldByName('CREDIT').AsCurrency := ValidateValue;
            DistributeBill;
            DisplayDistributionScreen;
          end;    //  end if
      except
      //
      end;
   end;    //  end if
end;

{-------------------------------------------------------------------------------
  Name:         CheckForOverdrawnTrust
  Description:  Compares the amount in the trust against the amount entered by
                the user. If the entered amount is larger, the user must enter
                a password to over draw the trust.
  Return:       <none>
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         28-10-2002

-------------------------------------------------------------------------------}

function TfrmReceipt.CheckForOverdrawnTrust : Boolean;
begin
   Result := FALSE;
   lcTrust := ClearTrust(GetNMemoRef('FILEID', tvLedgerREFNO.DataBinding.Field.Text));
   lcRunningTotal :=   GetRunningTotalForMatter;

   lcRunningTotal := lcRunningTotal + qryLedger.FieldByName('CREDIT').AsCurrency;

   if (lcRunningTotal > lcTrust) then
   begin
      if OverDrawTheTrust then
      begin
         AddToRunningTotalForMatter(qryLedger.FieldByName('CREDIT').AsCurrency);
         tvLedgerCREDIT.Styles.Content := styTrustOD;
         Result := FALSE;
      end
      else
      begin
         tvLedgerCREDIT.Styles.Content := styTrustOD;
         Result := TRUE;
      end;    //  end if-else
   end
   else
      AddToRunningTotalForMatter(qryLedger.FieldByName('CREDIT').AsCurrency);
end;

{-------------------------------------------------------------------------------
  Name:         GetRunningTotalForMatter
  Description:  For the entered receipt or matter, receive the running total.
                The user may have entered more than one receipt for a matter.
                The sum must not exceed the amount in the trust.
  Return:       Sum of the running total as a currency.
  Parameters:   Reference number for the current record in the grid.
  Programmer:   Brendan Jagtenberg
  Date:         28-10-2002

-------------------------------------------------------------------------------}

function TfrmReceipt.GetRunningTotalForMatter : Currency;
var
  liPos : Integer;
begin
  liPos := foMatterTotals.IndexOfName(fsMatter);

  if (liPos = -1) then
    Result := 0.00
  else
    Result := StrToCurr(foMatterTotals.Values[fsMatter]);
end;

{-------------------------------------------------------------------------------
  Name:         AddToRunningTotalForMatter
  Description:  For the current record add the Matter No. and amount to the
                history list, just in case, the user adds more records for the
                same Matter No. The total can not exceed the trust amount.
  Return:       <none>
  Parameters:   Reference number for the current record in the grid.
                The amount entered by the user.
  Programmer:   Brendan Jagtenberg
  Date:         28-10-2002

-------------------------------------------------------------------------------}

procedure TfrmReceipt.AddToRunningTotalForMatter(cTrustAmount : Currency);
var
  liPos   : Integer;
  lcTotal : Currency;
begin
  liPos := foMatterTotals.IndexOfName(fsMatter);

  if (liPos = -1) then
    begin
      foMatterTotals.Add(fsMatter + '=' + CurrtoStr(cTrustAmount));

    end
  else
    begin
      lcTotal := StrToCurr(foMatterTotals.Values[fsMatter]);
      lcTotal := lcTotal + cTrustAmount;

      foMatterTotals.Strings[liPos] := fsMatter + '=' + CurrtoStr(lcTotal);

    end;    //  end if-else
end;

{-------------------------------------------------------------------------------
  Name:         ChequeGroupEnabled
  Description:  Enable/Disable the cheque group, but do not make it disappear.
  Return:       <none>
  Parameters:   Boolean value.
  Programmer:   Brendan Jagtenberg
  Date:         30-10-2002

-------------------------------------------------------------------------------}

procedure TfrmReceipt.ChequeGroupEnabled(bFlag : Boolean);
begin
  gbCheque.Enabled := bFlag;
  lblChequeDrawer.Enabled := bFlag;
  lblChequeBank.Enabled := bFlag;
  lblChequeBranch.Enabled := bFlag;
  lblCheque.Enabled := bFlag;
  gbCheque.StyleDisabled.Color := Self.Color;
end;

{-------------------------------------------------------------------------------
  Name:         CheckForMultipleMatters
  Description:  Check the history for mutltiple matters, if so, warn the user.
  Return:       <none>
  Parameters:   Reference Number for the current record.
  Programmer:   Brendan Jagtenberg
  Date:         01-11-2002

-------------------------------------------------------------------------------}

procedure TfrmReceipt.CheckForMultipleMatters(sRefNo : String);
begin
   if (foMultipleMatters.IndexOf(sRefNo) <> -1) then
      MessageDlg('A record with the same Matter\Bill number has already been entered.', mtWarning, [mbOK], 0)
   else
      foMultipleMatters.Add(sRefNo);
end;

{-------------------------------------------------------------------------------
  Name:         OverdrawTheTrust
  Description:  If the amount entered or the total running amount exceeds the
                trust limit, request the user enters a password to verify they
                have the right to over draw the trust.
  Return:       <none>
  Parameters:   True, the user can over draw the trust.
                False, improper access level.
  Programmer:   Brendan Jagtenberg
  Date:         01-11-2002

-------------------------------------------------------------------------------}

function TfrmReceipt.OverdrawTheTrust : Boolean;
var
   LTries   : Integer;
   LEntered : String;
   LMsg,
   LTrustODPasswd     : String;
begin
   Result := FALSE;

   // Does this person have enough access to overdraw trust?
   if dmAxiom.Security.Trust.PasswdOverdraw then
   begin
      LTries := 0;
      while(LTries < 3) do
      begin
         LEntered := '';
         LMsg := Format('This Receipt will result in overdrawn trust funds for Bill %s.',
                           [qryLedger.FieldByName('REFNO').AsString]);
         if(InputQueryPassword('Axiom', LMsg + #13#10'To continue, please enter the password',LEntered)) then
         begin
            LTrustODPasswd := SystemString('TRUST_OD_PASSWD');
            if LTrustODPasswd = '' then
               LTrustODPasswd := C_OVERDRAWPASSWORD;

            if (LEntered = LTrustODPasswd) then
            begin
               Result:= True;
               Break;
            end
            else
               Inc(LTries);
         end
         else
            Break;
      end;    //  end while

      if (LTries = 3) then
          MessageDlg('Incorrect password given.  You cannot add this receipt.', mtWarning, [mbOK], 0);

   end
   else
      MessageDlg(Format('Trust would have overdrawn on Bill %s', [qryLedger.FieldByName('REFNO').AsString]) + #13 + #13 +
                        'You do not have sufficient access to overdraw Trust Accounts.', mtError, [mbOK], 0);

end;


{-------------------------------------------------------------------------------
  Name:         cbTrustCheckClick
  Description:  The user must select the "Check for Over Drawn Trust" check box
                to either enable validation or cancel it. If enabling, then
                automatically select the "Check for Multiple Matters" check box.
  Return:       <none>
  Parameters:   Check Box component.
  Programmer:   Brendan Jagtenberg
  Date:         01-11-2002

-------------------------------------------------------------------------------}

procedure TfrmReceipt.cbTrustCheckClick(Sender: TObject);
begin
  if (cbTrustCheck.Checked) then
    chkCheckMultipleMatters.Checked := TRUE;

end;

{-------------------------------------------------------------------------------
  Name:         qryLedgerBeforeInsert
  Description:  Check the current record for both Over Drawn trust and/or
                multiple matters.
  Return:       <none>
  Parameters:   Dataset component linked to the grid.
  Programmer:   Brendan Jagtenberg
  Date:         01-11-2002

-------------------------------------------------------------------------------}

procedure TfrmReceipt.qryLedgerBeforeInsert(DataSet: TDataSet);
begin
  ValidateBillTotal;
end;

{-------------------------------------------------------------------------------
  Name:         ValidateReceipt
  Description:  Check that the receipt has not overdrawn the trust.
  Return:       True - Receipt will not over draw the trust(s).
                False - Have a problem.
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         09-01-2003

-------------------------------------------------------------------------------}


function TfrmReceipt.ValidateReceipt : Boolean;
begin
   Result := TRUE;


   if (qryLedger.FieldByName('TYPE').AsString = 'Bill') then
   begin
      qryLedger.First;

      if (cbTrustCheck.Checked) then
      begin
         while (not qryLedger.Eof) do
         begin
            fsMatter := GetNMemoRef('NMATTER', qryLedger.FieldByName('REFNO').AsString);
            if CheckForOverdrawnTrust then
            begin
                Result := FALSE;
                Break;
            end;    //  end if
            qryLedger.Next;
         end;    //  end while
      end;  //  end if
   end;
   foMatterTotals.Clear;

end;

{-------------------------------------------------------------------------------
  Name:         GetRunningTotalForBill
  Description:  For the entered receipt or matter, receive the running total.
                The user may have entered more than one bill for a matter.
                The sum must not exceed the amount in the trust.
  Return:       Sum of the running total as a currency.
  Parameters:   Reference number for the current record in the grid.
  Programmer:   Brendan Jagtenberg
  Date:         09-01-2003

-------------------------------------------------------------------------------}

function TfrmReceipt.GetRunningTotalForBill(sRefNo : String) : Currency;
var
  liPos : Integer;
  lcTotal : Currency;
begin
  liPos := foBillsTotal.IndexOfName(sRefNo);

  if (liPos = -1) then
    Result := 0.00
  else
  begin
    lcTotal := StrToCurr(foBillsTotal.Values[sRefNo]);
    Result := lcTotal;

  end;    //  end if-else

end;


{-------------------------------------------------------------------------------
  Name:         DeleteFromRunningTotalForBill
  Description:  For the current record add the Bill No. and amount to the
                history list, just in case, the user adds more records for the
                same Bill No. The total can not exceed the bill amount.
  Return:       <none>
  Parameters:   Reference number for the current record in the grid.
                The amount entered by the user.
  Programmer:   Brendan Jagtenberg
  Date:         09-01-2003

-------------------------------------------------------------------------------}

procedure TfrmReceipt.DeleteFromRunningTotalForBill(sRefNo : String; cTrustAmount : Currency);
var
  liPos   : Integer;
  lcTotal : Currency;
begin
  liPos := foBillsTotal.IndexOfName(sRefNo);

  if (liPos = -1) then
    begin
      foBillsTotal.Add(sRefNo + '=' + CurrtoStr(cTrustAmount));
    end
  else
    begin
      lcTotal := StrToCurr(foBillsTotal.Values[sRefNo]);
      lcTotal := lcTotal - cTrustAmount;

      if (lcTotal >= 0) then
        foBillsTotal.Strings[liPos] := sRefNo + '=' + CurrtoStr(lcTotal);
    end;    //  end if-else
end;

{-------------------------------------------------------------------------------
  Name:         AddToRunningTotalForBill
  Description:  For the current record add the Bill No. and amount to the
                history list, just in case, the user adds more records for the
                same Bill No. The total can not exceed the bill amount.
  Return:       <none>
  Parameters:   Reference number for the current record in the grid.
                The amount entered by the user.
  Programmer:   Brendan Jagtenberg
  Date:         09-01-2003

-------------------------------------------------------------------------------}

procedure TfrmReceipt.ActSaveExecute(Sender: TObject);
begin
  if FCurrentStencilID <> -1 then
    if MessageDlg('Overwrite this template?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;

  // Used to save the value of neAmount as text.
  // cxProperties has trouble neAmount.EditValue which is a variant.
  EdtSaveneAmount.Text := neAmount.EditValue;
  // Save the stencil
  FCurrentStencilID := TFrmSelectStencil.SaveStencil(PropsReceipt, TotalAmt, tbDesc.Text,
    qryLedger, FCurrentStencilID);
  // Debugging.
  Label18.Caption := IntToStr(FCurrentStencilID);
end;

procedure TfrmReceipt.btnChooseTemplateClick(Sender: TObject);
begin
  FCurrentStencilID := TFrmSelectStencil.SelectStencil(PropsReceipt, VisualColumnFieldNames, QryLedger);

  Label18.Caption := IntToStr(FcurrentStencilID); // This is not nice, but it works.
  if EdtSaveNeAmount.Text <> '' then
    neAmount.EditingText := EdtSaveNeAmount.Text;
end;

procedure TfrmReceipt.ActDeleteExecute(Sender: TObject);
begin
  // No stencil selected, Exit.
  if FCurrentStencilID = -1 then
    exit;

  TFrmSelectStencil.DeleteStencil(FCurrentStencilID);
  FCurrentStencilID := -1;
  ClearTransGrid;
  ClearHeaderControls;
end;

procedure TfrmReceipt.AddToRunningTotalForBill(sRefNo : String; cTrustAmount : Currency);
var
  liPos   : Integer;
  lcTotal : Currency;
begin
  liPos := foBillsTotal.IndexOfName(sRefNo);

  if (liPos = -1) then
    begin
      foBillsTotal.Add(sRefNo + '=' + CurrtoStr(cTrustAmount));
    end
  else
    begin
      lcTotal := StrToCurr(foBillsTotal.Values[sRefNo]);
      lcTotal := lcTotal + cTrustAmount;
      foBillsTotal.Strings[liPos] := sRefNo + '=' + CurrtoStr(lcTotal);
    end;    //  end if-else
end;

{-------------------------------------------------------------------------------
  Name:         HasRunningTotalForBill
  Description:  Find out if their is a running total for this bill
  Return:       Boolean
  Parameters:   Reference number for the current record in the grid.
  Programmer:   Brendan Jagtenberg
  Date:         09-01-2003

-------------------------------------------------------------------------------}

function TfrmReceipt.HasRunningTotalForBill(sRefNo : String) : Boolean;
begin
  Result := (foBillsTotal.IndexOfName(sRefNo) <> -1);
end;

{-------------------------------------------------------------------------------
  Name:         ValidateBillTotal
  Description:  For the current bill, check the running total.
  Return:       <none>
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         09-01-2003

-------------------------------------------------------------------------------}

procedure TfrmReceipt.ValidateBillTotal(AddValue: Currency; ADebitValue: Currency);
var
  lsRefNo : String;
  lcTotal : Currency;
begin
  lsRefNo := qryLedger.FieldByName('REFNO').AsString;

  if not VarIsNull(tvLedgerCREDIT.EditValue) then
  begin
    if (lsRefNo <> '') then
      begin
        if (HasRunningTotalForBill(lsRefNo)) then
        begin
           if AddValue = 0 then
              DeleteFromRunningTotalForBill(lsRefNo, Currency(tvLedgerCREDIT.EditValue))        //  qryLedger.FieldByName('CREDIT').AsCurrency)
           else
              DeleteFromRunningTotalForBill(lsRefNo, AddValue);
        end
        else
        begin
           if AddValue = 0 then
              AddToRunningTotalForBill(lsRefNo, Currency(tvLedgerCREDIT.EditValue) )  //   qryLedger.FieldByName('CREDIT').AsCurrency);
           else
              AddToRunningTotalForBill(lsRefNo, AddValue );
        end;

        lcTotal := GetRunningTotalForBill(lsRefNo);

        if (lcTotal < 0) then
          begin
            AddToRunningTotalForBill(lsRefNo, Currency(tvLedgerCREDIT.EditValue));   //qryLedger.FieldByName('CREDIT').AsCurrency);
            qryLedger.Edit;
            qryLedger.FieldByName('CREDIT').AsCurrency := GetRunningTotalForBill(lsRefNo);
          end;    //  end if
      end;    //  end if
    end;
end;

{-------------------------------------------------------------------------------
  Name:         DisplayDistributionScreen
  Description:  First, distribute the bill then show the results in the
                distribution screen.
  Return:       <none>
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         15-01-2003

-------------------------------------------------------------------------------}

procedure TfrmReceipt.DisplayDistributionScreen;
var
  LfrmReceiptDistribute :TfrmReceiptDistribute;
  Row: integer;
  AView: TcxGridTableView;
begin
   Screen.Cursor := crSQLWait;

   if fsCheqreqList = Nil then
      fsCheqreqList := TStringList.Create
   else
      try
         fsCheqreqList.Clear;
      except
         // nothing
      end;

   LfrmReceiptDistribute :=  TfrmReceiptDistribute.Create(Self);
   try
      if(LfrmReceiptDistribute.SetupDistribution(tbRcptno.Text,
                        qryLedger.FieldByName('INVOICE').AsInteger,
                        qryLedger.FieldByName('NSUBBILL').AsInteger,
                        qryLedger.FieldByName('FEESCR').AsCurrency,
                        qryLedger.FieldByName('DISBCR').AsCurrency,
                        qryLedger.FieldByName('UPCREDCR').AsCurrency,
                        qryLedger.FieldByName('ANTDCR').AsCurrency,
                        qryLedger.FieldByName('SUNDCR').AsCurrency)) then
      begin
         if(LfrmReceiptDistribute.ShowModal = mrOk) then
         begin
            if LfrmReceiptDistribute.Distributed then
            begin
               if not qryLedger.Modified then
                  qryLedger.Edit;

               AView := LfrmReceiptDistribute.tvCheqReqs;
               try
                  AView.BeginUpdate;

                  AView.DataController.FocusedRowIndex := 0;
                  for Row := 0 to (AView.DataController.RecordCount) - 1 do
                  begin
                     AView.ViewData.Records[Row].Focused := True;
                     if AView.ViewData.GetRecordByIndex(Row).Values[5] = True then
                     begin
                        fsCheqreqList.Add(LfrmReceiptDistribute.tvCheqReqsNCHEQREQ.EditValue);
                     end;
                  end;

                  qryLedger.FieldByName('FEESCR').AsCurrency := LfrmReceiptDistribute.neFees.Value;
                  qryLedger.FieldByName('DISBCR').AsCurrency := LfrmReceiptDistribute.neDisb.Value;
                  qryLedger.FieldByName('UPCREDCR').AsCurrency := LfrmReceiptDistribute.neUpCred.Value;
                  qryLedger.FieldByName('ANTDCR').AsCurrency := LfrmReceiptDistribute.neAntd.Value;
                  qryLedger.FieldByName('SUNDCR').AsCurrency := LfrmReceiptDistribute.neSund.Value;
               finally
                  AView.EndUpdate;
               end;
            end;
         end
         else
            btnOk.Enabled := False;
      end;
   finally
      LfrmReceiptDistribute.Free();
      Screen.Cursor := crDefault;
   end;
end;

{-------------------------------------------------------------------------------
  Name:         ProcessImportedBill
  Description:  If the imported bill is a full payment, that is, we are paying
                the total bill, then simply calculated the figures and
                distribute them. If it is a part payment of the bill, then
                calculated the figures, distribute the amounts and display them
                for the user to check and alter.
  Return:       <none>
  Parameters:   The current bill number.
  Programmer:   Brendan Jagtenberg
  Date:         15-01-2003

-------------------------------------------------------------------------------}

procedure TfrmReceipt.ProcessImportedBill;
var
  lcBillAmount   : Currency;
  lcImportedBill : Currency;
begin

   qryBill.Close;
   qryBill.ParamByName('NMEMO').AsString :=  GetNMemoRef('NMEMO', qryLedger.FieldByName('REFNO').AsString);
   qryBill.Open;

   lcBillAmount := qryBill.FieldbyName('OWING').AsCurrency;

   lcImportedBill := qryLedger.FieldByName('CREDIT').AsCurrency;

   if (lcBillAmount = lcImportedBill) then
   begin
      DistributeBill;
   end
   else
   begin
      DistributeBill(True);
      DisplayDistributionScreen;
   end;    //  end if-else

   StatusDisplay;
end;

function TfrmReceipt.IsValidMatterForAccount(sRefNo: string; var lsMessage: string; bFromValidate: boolean) : Boolean;
var
   lsAcct    : String;
   bValidBank: boolean;
begin
   Result := TRUE;
   if (IsTrustAccount(cbBank.Text)) then
   begin
      lsAcct := MatterString(sRefNo, 'ACCT');
      with dmAxiom.qryValidateMatterTrust do
      begin
         Close;
         ParamByName('acct').AsString     := cbBank.Text;
         ParamByName('nmatter').AsInteger := StrToInt(MatterString(sRefNo, 'NMATTER'));
         Open;
         bValidBank := (RecordCount > 0);
         Close;
      end;
      if bValidBank = False {(lsAcct <> cbBank.Text)} then
      begin
         lsMessage := 'You cannot post a receipt against a matter (' +
                      sRefNo + ') with a' + #13 + #10 +
                      'trust bank account (' + lsAcct + ') different to the selected trust account (' +
                      cbBank.Text + ').';

         if bFromValidate then
            lsMessage := lsMessage  + #13 + #10 + 'Press the Esc key to cancel.';
         Result := False;
      end;
   end;
end;

function TfrmReceipt.GetEntity(sMatterNo: string): string;
var
  loQry : TUniQuery;
begin
  loQry := nil;

  try
    loQry := TUniQuery.Create(nil);
    loQry.Connection := dmAxiom.uniInsight;

    loQry.Close;
    loQry.SQL.Clear;
    loQry.SQL.Add('SELECT ENTITY');
    loQry.SQL.Add('FROM MATTER ');
    loQry.SQL.Add('WHERE NMATTER = :MatterNo ');
    loQry.Params[0].AsString := sMatterNo;
    loQry.Open;

    Result := (loQry.FieldByName('ENTITY').AsString);
  finally
    loQry.Close;
    FreeAndNil(loQry);
  end;    //  end try-finally
end;

procedure TfrmReceipt.cxGrid1DBTableView1REFNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   ErrorMessage: string;
   MultipleCheck: Boolean;
   ADispValue: string;
begin
   MultipleCheck := False;
   ADispValue := '';
   StatusDisplay;

   if (tvLedgerTYPE.DataBinding.Field.Text = 'Matter') or
      (tvLedgerTYPE.DataBinding.Field.Text = 'Protected') then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOk then
      begin
         if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
         begin
            MsgErr('You may not Bank money to a matter that is archived.');
            qryLedger.FieldByName('REFNO').AsString := '';
            qryLedger.FieldByName('DESCR').AsString := '';
         end
         else
            if (IsValidMatterForAccount(dmAxiom.qryMSearch.FieldByName('FILEID').AsString, ErrorMessage)) then
            begin
               qryLedger.Edit;
               qryLedger.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
               ADispValue := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
               qryLedger.FieldByName('DESCR').AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('NMATTER').AsString;

               if tbPayee.Text = '' then
                  dmAxiom.qryMSearch.FieldByName('TITLE').AsString;

               if qryLedger.FieldByName('REASON').AsString = '' then
                  qryLedger.FieldByName('REASON').AsString := DefaultDescr;

               if (chkCheckMultipleMatters.Checked) then
               begin
                  CheckForMultipleMatters(ADispValue);
                  MultipleCheck := True;
               end;
            end
            else
               raise EInvalidMatterBank.Create(ErrorMessage);
      end;
   end;

   if tvLedgerTYPE.DataBinding.Field.Text = 'Ledger' then
   begin
      frmLedgerSearch := TfrmLedgerSearch.Create(Self);
      with frmLedgerSearch do
      begin
        if ShowModal = mrOK then
          begin
            qryLedger.Edit;
            qryLedger.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
            qryLedger.FieldByName('DESCR').AsString := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
            if qryLedger.FieldByName('REASON').AsString = '' then
              qryLedger.FieldByName('REASON').AsString := DefaultDescr;
          end;
        Release;
      end;
   end;

   if tvLedgerTYPE.DataBinding.Field.Text = 'Bill' then
   begin
      if not FormExists(frmInvoiceSearch) then
        Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);
      if frmInvoiceSearch.ShowModal = mrOk then
      begin
        qryBill.Close;
        qryBill.ParamByName('NMEMO').AsInteger := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger;
        qryBill.Open;
        SetupBill;
        DistributeBill;
        ADispValue:= qryLedger.FieldByName('REFNO').AsString;
        if (chkCheckMultipleMatters.Checked) then
        begin
           CheckForMultipleMatters(ADispValue);
           MultipleCheck := True;
        end;

        CheckUnpaidCreditors(qryLedger.FieldByName('REFNO').AsString);
      end;
   end;

   if (tvLedgerTYPE.DataBinding.Field.Text = 'Disburse') then
   begin
      try
         frmDisbSearch := TfrmDisbSearch.Create(Self);
         with frmDisbSearch do
         begin
            if ShowModal = mrOK then
            begin
               qryLedger.Edit;
               qryLedger.FieldByName('REFNO').AsString := frmDisbSearch.qryLedgers.FieldByName('refno').AsString;
               qryLedger.FieldByName('DESCR').AsString := frmDisbSearch.qryLedgers.FieldByName('DESCR').AsString;
               qryLedger.FieldByName('CREDIT').AsFloat := frmDisbSearch.qryLedgers.FieldByName('AMOUNT').AsFloat;
               qryLedger.FieldByName('FILEID').AsString := frmDisbSearch.qryLedgers.FieldByName('FILEID').AsString;
               qryLedger.FieldByName('NALLOC').AsInteger := frmDisbSearch.qryLedgers.FieldByName('NALLOC').AsInteger;
               if qryLedger.FieldByName('REASON').AsString = '' then
                  qryLedger.FieldByName('REASON').AsString := DefaultDescr;
               tvLedgerCREDIT.EditValue := frmDisbSearch.qryLedgers.FieldByName('AMOUNT').AsFloat;
            end;
         end;
      finally

         frmDisbSearch.Free();
      end;
   end;

   if ((chkCheckMultipleMatters.Checked) and not MultipleCheck) then
       CheckForMultipleMatters(ADispValue);

   StatusDisplay;
end;

procedure TfrmReceipt.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Screen.Cursor := crHourGlass;
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      sPayee := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      sNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsString;
      tbDesc.SetFocus;
      gbPayorAddress.Enabled := False;
   end;
   screen.Cursor := crDefault;
end;

procedure TfrmReceipt.cxGrid1DBTableView1REFNOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
   MultipleCheck: boolean;
   ErrorMessage: string;
   glInstance : TglComponentInstance ;
   ARefNo: string;
begin
   MultipleCheck := False;
   ARefNo := '';
   Error := False;
   bAutoReceiptMatter := False;
   if not qryLedger.Modified then
      qryLedger.Edit;

   ARefNo := UpperCase(string(DisplayValue));

   if ((tvLedgerTYPE.DataBinding.Field.Text = 'Matter') or
      (tvLedgerTYPE.DataBinding.Field.Text = 'Protected')) and
      (ARefNo <> '') then
   begin
      if (MatterString(ArefNo, 'PROSPECTIVE') = 'Y') then
      begin
           ErrorText := 'You may not Bank money to a matter that is Prospective.';
           Error := True;
      end
      else if (IsValidMatterForAccount(ARefNo, ErrorMessage)) then
      begin
         if IsValidMatterForEntity(ARefNo) then
         begin
            if (IsMatterArchived(ARefNo)) then
            begin
               ErrorText := 'You may not Bank money to a matter that is archived.';
               Error := True;
            end
            else
            begin
               if qryLedger.State = dsBrowse then
                  qryLedger.Edit;
               qryLedger.FieldByName('REFNO').AsString := ARefNo;
               qryLedger.FieldByName('DESCR').AsString := MatterString(ARefNo,'TITLE');
               if (chkCheckMultipleMatters.Checked) then
               begin
                  CheckForMultipleMatters(ARefNo);
                  MultipleCheck := True;
               end;
            end;
         end
         else
         begin
            if qryLedger.State = dsBrowse then
               qryLedger.Edit;
            qryLedger.FieldByName('REFNO').AsString := ARefNo;
            qryLedger.FieldByName('DESCR').AsString := MatterString(ARefNo,'TITLE');
            if (chkCheckMultipleMatters.Checked) then
            begin
               CheckForMultipleMatters(ARefNo);
               MultipleCheck := True;
            end;
         end;
      end
      else
      begin
            ErrorText := 'This matter #' + ARefNo +
                ' is not valid for the current Entity.';
            Error := True;
      end;
   end
   else
      begin
         ErrorText := ErrorMessage;
         Error := True;
	   end;
//   end;

   if tvLedgerTYPE.DataBinding.Field.Text = 'Ledger' then
   begin
      // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(ARefNo,true);

      if not glInstance.valid then
      begin
         glInstance.displayError;
         qryLedger.FieldByName('REFNO').AsString := '';
         qryLedger.FieldByName('DESCR').AsString := '';
         glInstance.free;
         exit;
      end
      else
      begin
        DisplayValue := glInstance.fullCode;
      end;

      if not AllowDirectPost(glInstance.ledgerkey) then
      begin
          ErrorText := 'You may not post to ledger Reference #' + ARefNo;
          Error := True;
      end
      else
      if (chkCheckMultipleMatters.Checked) then
      begin
         CheckForMultipleMatters(ARefNo);
         MultipleCheck := True;
      end;
      glInstance.free;
   end;

   if tvLedgerTYPE.DataBinding.Field.Text = 'Bill' then
   begin
      if DisplayValue <> '' then
      begin
         if IsRefnoExisting(ARefNo) then
         begin
            if Tablestring('NMEMO', 'REFNO', ARefNo, 'IS_Draft') = 'N' then
            begin
               qryBill.Close;
               qryBill.ParamByName('NMEMO').AsInteger := TableINTEGER('NMEMO','REFNO',ARefNo,'NMEMO');
               qryBill.Open;
               SetupBill;
               DistributeBill;

               CheckUnpaidCreditors(ARefNo);
            end
            else
            begin
               ErrorText := 'This Bill #' + ARefNo +
                  ' is a DRAFT Bill.  Please post prior to receipting.';
               Error := True;
               DisplayValue := '';
            end;
         end
         else
         begin
            ErrorText := 'This Bill #' + ARefNo +
                ' is not valid for the current Entity.';
            Error := True;
         end;
      end;
   end;

   if ((chkCheckMultipleMatters.Checked) and not MultipleCheck) and
      (not Error) then
      CheckForMultipleMatters(ARefNo);

   StatusDisplay;
end;

procedure TfrmReceipt.tvLedgerCREDITPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if not VarIsNull(DisplayValue) and (Error = False) then
   begin

     //* for this to work, had to change code in unit cxGridCustomTableView - no longer needed
     ValidateCurrentRecord(Currency(DisplayValue));
     ValidateBillTotal(Currency(DisplayValue));

      if not qryLedger.Modified then
         qryLedger.Edit;

      qryLedger.FieldByName('CREDIT').AsCurrency := DisplayValue;

      if (tvLedgerTYPE.DataBinding.Field.Text = 'Bill') then
      begin
         if DisplayValue > qryLedger.FieldByName('DEBIT').AsCurrency then
         begin
            if qryLedger.FieldByName('DEBIT').AsCurrency <> 0.0 then
               MsgErr('There is only ' + Format('%m', [qryLedger.FieldByName('DEBIT').AsCurrency]) + ' owing on this Bill')
            else
               MsgErr('There is nothing owing on this Bill');
            tvLedgerCREDIT.DataBinding.Field.AsCurrency := qryLedger.FieldByName('DEBIT').AsCurrency;
         end;
      end;

   end;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmReceipt.tvLedgerTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
var
   ATotal: Currency;
begin
   if not VarIsNull(tvLedger.DataController.Summary.FooterSummaryValues[0]) then
   begin
      ATotal := neAmount.EditValue - (StrToCurr(tvLedger.DataController.Summary.FooterSummaryValues[0]) +
                                     StrToCurr(tvLedger.DataController.Summary.FooterSummaryValues[2]))   ;
      AText := 'Unallocated: ' + CurrToStrF(ATotal,(ffCurrency),2);
   end;
end;

procedure TfrmReceipt.tvLedgerTYPEPropertiesCloseUp(Sender: TObject);
begin
   if tvLedgerTYPE.EditValue = 'Ledger' then
   begin
      tvLedgerTAXCODE.Visible := True;
      tvLedgerTAX.Visible     := True;
   end
   else
   begin
      tvLedgerTAXCODE.Visible := False;
      tvLedgerTAX.Visible     := False;
      tvLedgerTAX.EditValue := 0;
   end;
end;

procedure TfrmReceipt.actOkExecute(Sender: TObject);
var
   bProceed,
   bPostingFailed,
   bTrustCheckProceed,
   bReceiptTax: boolean;
   sSQL, sSQLWhere: string;
   sCreditChart, sBank: string;
   NBankdep: integer;
   iCtr: integer;
   bFormUpdated: boolean;
   cBalance, cAllocAmnt : Currency;
   lsMessage : String;
   nAccount, i, Row, TempCheqReq, nListRow: integer;
   ErrorMessage: string;
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,sLedgerKeyDr, LedgerCR : String;
   bBankDep: boolean;
   SplitPercent: Real;
   TaxCalc,
   TotalFees,
   FeeDistAmt,
   TotalFeeDistAmt,
   BillTotal,
   cClearedTrust,
   cDiff,
   cAmt,
   cTax,
   TotalFeeRcptAmt,
   cTotalReceiptFees: Currency;
   GLDefaultTaxCode,
   AValue: string;
   FeeDistCount, TotalFeeDistCount: integer;
   nfeeRatio: double;
   NewMessage: IRwMAPIMailMessage;
   OldCursor: TCursor;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
begin
    // check that sub bills are selected.
    bTrustCheckProceed := True;
    bReceiptTax := False;
    if qryLedger.Modified then
       qryLedger.ApplyUpdates();

    qryLedger.first;
    while not qryLedger.Eof do
    begin
       if qryLedger.fieldByName('type').AsString <> 'Bill' then
       begin
          qryLedger.Next;
          continue;
       end;

       qryFilterSubBill.Close;
       qryFilterSubBill.ParamByName('NMEMO').AsInteger := qryLedger.fieldByName('INVOICE').AsInteger;
       qryFilterSubBill.open;
       if (not qryFilterSubBill.eof) and (qryLedger.fieldByName('NSUBBILL').AsInteger = 0) then
       begin
           MsgErr('Please select a sub bill for bill ' + qryLedger.fieldByName('REFNO').AsString);
           exit;
       end;
       qryLedger.Next;
    end;

   Screen.Cursor := crSQLWait;
   glComponentSetup := dmAxiom.getGlComponents;
   lcTrust := 0;
   lcRunningTotal := 0;
   if not (IsValidBankForEntity(cbBank.Text)) then
   begin
      Screen.Cursor := crDefault;
      MsgErr('The bank chosen does not belong to the selected entity. '+
             'The transaction cannot be applied');
   end
   else
      // clean up grid prior to doing anything.
      for Row := 0 to tvLedger.DataController.RecordCount - 1 do
      begin
         tvLedger.DataController.FocusedRowIndex := Row;
         if tvLedger.DataController.GetDisplayText(Row, tvLedgerREFNO.Index) = '' then
            tvLedger.DataController.DeleteFocused;
      end;

      TotalAmt := 0;
      for Row := 0 to tvLedger.DataController.RecordCount - 1 do
      begin
         tvLedger.DataController.FocusedRowIndex := Row;
         if (tvLedgerTAX.Visible = True) then
            TotalAmt := TotalAmt + tvLedger.DataController.GetValue(Row, tvLedgerCREDIT.Index) +
                        tvLedger.DataController.GetValue(Row, tvLedgerTAX.Index)
         else
            TotalAmt := TotalAmt + tvLedger.DataController.GetValue(Row, tvLedgerCREDIT.Index);
      end;

      if IsTrustAccount(cbBank.Text) then
      begin
         for Row := 0 to tvLedger.DataController.RecordCount - 1 do
         begin
            if (tvLedgerCREDIT.EditValue < 0) then
            begin
               MsgErr('Negative Receipts against Trust are not allowed.' + chr(13) +
                      'Please correct and try again');
               bTrustCheckProceed := False;
               break;
            end;
         end;
      end;

      if IsTrustAccount(cbBank.Text) then
      begin
         for Row := 0 to tvLedger.DataController.RecordCount - 1 do
         begin
            tvLedger.DataController.FocusedRowIndex := Row;
            if VarIsNull(tvLedgerREASON.EditValue) then
            begin
               MsgErr('Every transaction requires a Reason.' + Chr(13) +
                      'Please correct and try again');
               bTrustCheckProceed := False;
               break;
            end;
         end;
      end;

      try
         if bTrustCheckProceed then
         begin
            if (ValidateReceipt) then
            begin
                ZeroLedgerTotal;
                if qryLedger.Modified and (qryLedger.state in [dsEdit,dsInsert]) then
                  qryLedger.Post;

                bProceed := OKtoPost(True);
                if bProceed then
                  if qryLedger.IsEmpty then
                    if MsgAsk('There are no transactions entered.'#13#13'Are you sure you want to post this receipt?') = mrNo then
                      bProceed := False;
              {
                Added 25.10.2002 GG

                Show message if transaction is being posted into a locked period
              }
                if bProceed then
                     bProceed:= (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]);
                if bProceed then
                begin
                  // Create a RECEIPT entry
                  try
                    bPostingFailed := False;
                    if dmAxiom.uniInsight.InTransaction then
                        dmAxiom.uniInsight.Commit;
                    dmAxiom.uniInsight.StartTransaction;

                    // Create the RECEIPT entry - as we are using Cached Updates
                    // this won't save until we explicitly ApplyUdates
                    qryReceipt.Open;

                    qryReceipt.Insert;
                    qryReceipt.FieldByName('PRINTER').AsString := cmbPrinter.Text;
                    // 22/05/2018 - AES changed to use sequence rather than seqnum table.  needs reset sequence to be run
                    qryReceipt.FieldByName('NRECEIPT').AsInteger := GetSequenceNumber('SQNC_NRECEIPT');
                    qryReceipt.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                    qryReceipt.FieldByName('ACCT').AsString := cbBank.Text;
                    qryReceipt.FieldByName('TYPE').AsString := cbType.EditValue;
                    qryReceipt.FieldByName('RCPTNO').AsString := tbRcptno.Text;
                    qryReceipt.FieldByName('PAYOR').AsString := tbPayee.Text;
                    qryReceipt.FieldByName('DRAWER').AsString := tbDrawer.Text;
                    qryReceipt.FieldByName('BANK').AsString := tbChqBank.Text;
                    qryReceipt.FieldByName('BRANCH').AsString := tbBranch.Text;
                    qryReceipt.FieldByName('CHQNO').AsString := tbChqno.Text;
                    qryReceipt.FieldByName('DESCR').AsString := tbDesc.Text;
                    qryReceipt.FieldByName('AMOUNT').AsCurrency := TotalAmt;
                    qryReceipt.FieldByName('TRUST').AsString := qryBanks.FieldByName('TRUST').AsString;
                    qryReceipt.FieldByName('CLEARED').AsString := 'Y';
                    qryReceipt.FieldByName('DCLEARDATE').AsDateTime := Date;
                    qryReceipt.FieldByName('BANKED').AsString := 'N';
                    qryReceipt.FieldByName('REVERSED').AsString := 'N';
                    qryReceipt.FieldByName('NCHEQUE').AsString := sCheque;
                    qryReceipt.FieldByName('NNAME').AsString := sNName;

                    if (gbPayorAddress.Enabled = True) then
                    begin
                       qryReceipt.FieldByName('STREET').AsString := tbStreet.Text;
                       qryReceipt.FieldByName('SUBURB').AsString := tbSuburb.Text;
                       qryReceipt.FieldByName('STATE').AsString := tbState.Text;
                       qryReceipt.FieldByName('POSTCODE').AsString := tbPostcode.Text;
                       qryReceipt.FieldByName('EMAIL').AsString := tbEmail.Text;
                    end;

                    //check receipt number
                    qryReceipt.FieldByName('NRECEIPT').AsInteger := CheckReceipt(qryReceipt.FieldByName('NRECEIPT').AsInteger);

                          // force error;
                    //qryReceipt.FieldByName('RERE').AsString := ' fd';

                    qryReceipt.FieldByName('DCLEARDATE').AsDateTime := dtClearanceDate.Date;

                    if trunc(qryReceipt.FieldByName('DCLEARDATE').AsDateTime) > trunc(Now) then
                        qryReceipt.FieldByName('CLEARED').AsString := 'N';


                    with qryBankClearance do
                    begin
                       bBankDep := False;
                       Close;
                       ParamByName('CODE').AsString := cbType.EditValue;
                       Open;
                       if EOF = False then
                          bBankDep := True;
                       Close;
                    end;

                    with cbType.Properties.Grid.DataController do
                       AValue := Values[FocusedRecordIndex, 3];

                    if (AValue = 'N') then
                    begin
                       // Create a banking for this receipt if it is a direct deposit or TT
                       with qryBankdepInsert do
                       begin
                          ParamByName('ACCT').AsString := qryReceipt.FieldByName('ACCT').AsString;
                          ParamByName('DEPOSIT_DATE').AsDateTime := qryReceipt.FieldByName('CREATED').AsDateTime;
                          ParamByName('AMOUNT').AsCurrency := qryReceipt.FieldByName('AMOUNT').AsCurrency;
                          ParamByName('LAST_NRECEIPT').AsInteger := qryReceipt.FieldByName('NRECEIPT').AsInteger;
                          NBankdep := TableInteger('BANK', 'ACCT', qryReceipt.FieldByName('ACCT').AsString, 'NBANKDEP') + 1;
                          ParamByName('NBANKDEP').AsInteger := Nbankdep;
                          ExecSQL;
                          Close;
                       end;
                       with qryTmp do
                       begin
                         SQL.Text := 'UPDATE BANK SET NBANKDEP = (NBANKDEP + 1) WHERE ACCT = ' + QuotedStr(qryReceipt.FieldByName('ACCT').AsString);
                         ExecSQL;
                         Close;
                       end;
                       qryReceipt.FieldByName('BANKED').AsString := 'Y';
                       qryReceipt.FieldByName('BANKED_DATE').AsDateTime := qryReceipt.FieldByName('CREATED').AsDateTime;
                       qryReceipt.FieldByName('NBANKDEP').AsInteger := NBankdep;
                    end;

                    qryReceipt.FieldByName('PRINTED').AsString := 'N';
                    qryReceipt.Post; // Puts Receipt into cached buffer

                    nAccount := GetSequenceNumber('sqnc_naccount');
                    if qryReceipt.FieldByName('TRUST').AsString <> 'T' then
		      	        begin
                      {post components}
                      sLedgerKey :=  glComponentSetup.buildLedgerKey('',
                                          qryBanks.FieldByName('CASH_AT_BANK').AsString,'',true,'');

                      if GLDefaultTaxCode <> '' then
                         DefaultTax := GLDefaultTaxCode;

                      PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                        , 0 - TotalAmt
                        , 0
                        , qryReceipt.FieldByName('RCPTNO').AsString
                        , 'RECEIPT'
                        , qryReceipt.FieldByName('NRECEIPT').AsInteger
                        , qryReceipt.FieldByName('DESCR').AsString
                        , sLedgerKey
                        , ''
                        , -1
                        , ''
                        , DefaultTax
                        , FALSE
                        , '0'
                        , 0
                        , 0
                        , nAccount );
		      	        end;
                    // Now, iterate through the entered allocations
                    qryAllocs.Close;
                    qryAllocs.ParamByName('P_Nreceipt').AsInteger := qryReceipt.FieldByName('NRECEIPT').AsInteger;
                    qryAllocs.Open;

                    qryLedger.First;

                    while not qryLedger.EOF do
                    begin
                       if qryLedger.FieldByName('CREDIT').AsCurrency <> 0 then
                       begin
                         if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or
                            (qryLedger.FieldByName('TYPE').AsString = 'Protected')
                            then
                         begin
                           if (IsValidMatterForAccount(qryLedger.FieldByName('REFNO').AsString, ErrorMessage)) then
                           begin
                           if MatterExists(qryLedger.FieldByName('REFNO').AsString) then
                           begin
                             qryAllocs.Insert;
                             qryAllocs.FieldByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
                             qryMatters.Close;
                             qryMatters.ParamByName('P_File').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString,'FILEID');
                             qryMatters.Open;
                             qryAllocs.FieldByName('NMATTER').AsInteger := qryMatters.FieldByName('NMATTER').AsInteger;
                             qryAllocs.FieldByName('NCLIENT').AsInteger := qryMatters.FieldByName('NCLIENT').AsInteger;
                             qryAllocs.FieldByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
                             qryAllocs.FieldByName('CLIENT_NAME').AsString := qryMatters.FieldByName('CLIENT_NAME').AsString;    //qryMatters.FieldByName('TITLE').AsString;
                             qryAllocs.FieldByName('MATTER_DESC').AsString := qryMatters.FieldByName('SHORTDESCR').AsString;
                             qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
                             qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                             qryAllocs.FieldByName('TRUST').AsString := qryReceipt.FieldByName('TRUST').AsString;
                             qryAllocs.FieldByName('PAYER').AsString := qryReceipt.FieldByName('PAYOR').AsString;
                             qryAllocs.FieldByName('BANK').AsString := cbBank.Text;
                             qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
                             qryAllocs.FieldByName('TYPE').AsString := qryReceipt.FieldByName('TYPE').AsString;
                             if (qryLedger.FieldByName('TYPE').AsString = 'Disburse') then
                               qryAllocs.FieldByName('TYPE').AsString := 'DR';
                             qryAllocs.FieldByName('CLEARED').AsString := qryReceipt.FieldByName('CLEARED').AsString;
                             qryAllocs.FieldByName('DCLEARDATE').AsDateTime := qryReceipt.FieldByName('DCLEARDATE').AsDateTime;
                             qryAllocs.FieldByName('NRECEIPT').AsInteger := qryReceipt.FieldByName('NRECEIPT').AsInteger;
                             qryAllocs.FieldByName('REFNO').AsString := qryReceipt.FieldByName('RCPTNO').AsString;
                             qryAllocs.FieldByName('BILLED').AsString := 'Y';
                             qryAllocs.FieldByName('AMOUNT').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
                             qryAllocs.FieldByName('BILLED_AMOUNT').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
                             qryAllocs.FieldByName('TAX').AsCurrency := 0;
                             qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                             if qryLedger.FieldByName('TYPE').AsString = 'Disburse' then
                               qryAllocs.FieldByName('OUTLAY').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
                             if qryLedger.FieldByName('TYPE').AsString = 'Protected' then
                               qryAllocs.FieldByName('SPEC_PURPOSE').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;

                             if qryLedger.fieldByname('NSUBBILL').AsInteger <> 0 then
                                      qryAllocs.fieldByname('NSUBBILL').AsInteger := qryLedger.fieldByname('NSUBBILL').AsInteger;

                             if nAccount > 0 then begin
                                TransItemUpdate(nAccount, qryAllocs.FieldByName('NMATTER').AsInteger,qryAllocs.FieldByName('NALLOC').AsInteger);
                                nAccount := 0;
                             end;

                             qryAllocs.Post;  // Put it into the cached buffer

                             cClearedTrust := 0;
                             if qryReceipt.FieldByName('TRUST').AsString = 'T' then
                             begin
                               cClearedTrust := ClearTrust( qryLedger.FieldbyName('REFNO').AsString);  //GetNMemoRef('FILEID', qryLedger.FieldbyName('REFNO').AsString));
                               if (qryLedger.FieldByName('CREDIT').AsCurrency < 0) then
                               begin
                                 if (cClearedTrust + qryLedger.FieldByName('CREDIT').AsCurrency) < 0 then
                                    raise EInvalidBill.Create('This transaction will overdraw trust: ' + qryLedger.FieldByName('REFNO').AsString + chr(13) + chr(13) + 'Posting cancelled');
                               end;
                               sBank := TableString('MATTER','FILEID',qryLedger.FieldbyName('REFNO').AsString,'ACCT');
                               if (sBank = '') then
                                 with qryTmp do
                                 begin
                                   SQL.Text := 'UPDATE MATTER SET ACCT = :ACCT WHERE FILEID = ' + QuotedStr(qryLedger.FieldByName('REFNO').AsString);
                                   ParambyName('ACCT').AsString := cbBank.Text;
                                   ExecSQL;
                                   Close;
                                 end;
                             end
                             else // it is general - update debtors
                             begin
                               sCreditChart := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_FEE_CR');
                               // and say we recovered some fees
                               // Now make the General Ledger entries
                               // Fees, Disbursements and Sundries
                               if qryLedger.FieldByName('CREDIT').AsCurrency <> 0.0 then
		      				       begin
                               {post components}
                                 sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatters.fieldByName('NMATTER').AsString,sCreditChart,'',true,'');

                                 PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                                   , qryLedger.FieldByName('CREDIT').AsCurrency
                                   , 0
                                   , qryReceipt.FieldByName('RCPTNO').AsString
                                   , 'RECEIPT'
                                   , qryReceipt.FieldByName('NRECEIPT').AsInteger
                                   , qryLedger.FieldByName('REASON').AsString
                                   , sLedgerKey
                                   , qryMatters.FieldByName('AUTHOR').AsString
                                   , -1
                                   , ''
                                   , DefaultTax
                                   , FALSE
                                   , '0'
                                   , qryAllocs.FieldByName('NALLOC').AsInteger
                                   , qryAllocs.FieldByName('NMATTER').AsInteger);
		      			 		 end;

                             end;
                             qryMatters.Close;
                           end
                           else // Matter does not exist
                             raise EInvalidMatter.Create('Invalid Matter code "' + qryLedger.FieldByName('REFNO').AsString + '"');
                           end
                           else
                              raise EInvalidMatterBank.Create(ErrorMessage);
                         end;

                         // Disbursement Receipt
                         // ******** AES 19/01/2018  *******************
                         if (qryLedger.FieldByName('TYPE').AsString = 'Disburse') then
                         begin
                           if (IsValidMatterForAccount(qryLedger.FieldByName('FILEID').AsString, ErrorMessage)) then
                           begin
                              if MatterExists(qryLedger.FieldByName('FILEID').AsString) then
                              begin
                                 qryAllocs.Insert;
                                 qryAllocs.FieldByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
                                 qryMatters.Close;
                                 qryMatters.ParamByName('P_File').AsString := qryLedger.FieldByName('FILEID').AsString;
                                 qryMatters.Open;
                                 qryAllocs.FieldByName('NMATTER').AsInteger := qryMatters.FieldByName('NMATTER').AsInteger;
                                 qryAllocs.FieldByName('NCLIENT').AsInteger := qryMatters.FieldByName('NCLIENT').AsInteger;
                                 qryAllocs.FieldByName('FILEID').AsString := qryLedger.FieldByName('FILEID').AsString;
                                 qryAllocs.FieldByName('CLIENT_NAME').AsString := qryMatters.FieldByName('CLIENT_NAME').AsString;
                                 qryAllocs.FieldByName('MATTER_DESC').AsString := qryMatters.FieldByName('SHORTDESCR').AsString;
                                 qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
                                 qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                                 qryAllocs.FieldByName('TRUST').AsString := qryReceipt.FieldByName('TRUST').AsString;
                                 qryAllocs.FieldByName('PAYER').AsString := qryReceipt.FieldByName('PAYOR').AsString;
                                 qryAllocs.FieldByName('BANK').AsString := cbBank.Text;
                                 qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
                                // disbursement
                                 qryAllocs.FieldByName('TYPE').AsString := 'DR';
                                 qryAllocs.FieldByName('CLEARED').AsString := qryReceipt.FieldByName('CLEARED').AsString;
                                 qryAllocs.FieldByName('DCLEARDATE').AsDateTime := qryReceipt.FieldByName('DCLEARDATE').AsDateTime;
                                 qryAllocs.FieldByName('NRECEIPT').AsInteger := qryReceipt.FieldByName('NRECEIPT').AsInteger;
                                 qryAllocs.FieldByName('REFNO').AsString := qryReceipt.FieldByName('RCPTNO').AsString;
                                 qryAllocs.FieldByName('BILLED').AsString := 'Y';
                                 qryAllocs.FieldByName('AMOUNT').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
                                 qryAllocs.FieldByName('BILLED_AMOUNT').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
                                 qryAllocs.FieldByName('TAX').AsCurrency := 0;
                                 qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                                 qryAllocs.FieldByName('DISB_NALLOC_RECEIPT').AsInteger := qryLedger.FieldByName('NALLOC').AsInteger;
                                 qryAllocs.FieldByName('TAXCODE').AsString := TableString('TAXDEFAULT', 'TYPE', 'Receipt', 'CODE');;

                                 qryAllocs.FieldByName('OUTLAY').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;

                                 if nAccount > 0 then begin
                                    TransItemUpdate(nAccount, qryAllocs.FieldByName('NMATTER').AsInteger,qryAllocs.FieldByName('NALLOC').AsInteger);
                                    nAccount := 0;
                                 end;

                                 qryAllocs.Post;  // Put it into the cached buffer

                                 cClearedTrust := 0;
                                 if qryReceipt.FieldByName('TRUST').AsString = 'T' then
                                 begin
                                    cClearedTrust := ClearTrust( qryLedger.FieldbyName('FILEID').AsString);  //GetNMemoRef('FILEID', qryLedger.FieldbyName('REFNO').AsString));
                                    if (qryLedger.FieldByName('CREDIT').AsCurrency < 0) then
                                    begin
                                       if (cClearedTrust + qryLedger.FieldByName('CREDIT').AsCurrency) < 0 then
                                          raise EInvalidBill.Create('This transaction will overdraw trust: ' + qryLedger.FieldByName('REFNO').AsString + chr(13) + chr(13) + 'Posting cancelled');
                                    end;
                                    sBank := TableString('MATTER','FILEID',qryLedger.FieldbyName('FILEID').AsString,'ACCT');
                                    if (sBank = '') then
                                    with qryTmp do
                                    begin
                                       SQL.Text := 'UPDATE MATTER SET ACCT = :ACCT WHERE FILEID = ' + QuotedStr(qryLedger.FieldByName('FILEID').AsString);
                                       ParambyName('ACCT').AsString := cbBank.Text;
                                       ExecSQL;
                                       Close;
                                    end;
                                 end
                                 else // it is general - update debtors
                                 begin
                                    sCreditChart := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_UNDISB_CR');
                                    // and say we recovered some Disbursements
                                    // Now make the General Ledger entries
                                    // Disbursements
                                    if qryLedger.FieldByName('CREDIT').AsCurrency <> 0.0 then
		      				            begin
                                    {post components}
                                       sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatters.fieldByName('NMATTER').AsString,sCreditChart,'',true,'');

                                       PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                                          , qryLedger.FieldByName('CREDIT').AsCurrency
                                          , 0
                                          , qryReceipt.FieldByName('RCPTNO').AsString
                                          , 'RECEIPT'
                                          , qryReceipt.FieldByName('NRECEIPT').AsInteger
                                          , qryLedger.FieldByName('REASON').AsString
                                          , sLedgerKey
                                          , qryMatters.FieldByName('AUTHOR').AsString
                                          , -1
                                          , ''
                                          , DefaultTax
                                          , FALSE
                                          , '0'
                                          , qryAllocs.FieldByName('NALLOC').AsInteger
                                          , qryAllocs.FieldByName('NMATTER').AsInteger);
		      			 		         end;
                                 end;
                                 // update original alloc
                                 with qryTmp do
                                 begin
                                    SQL.Text := 'UPDATE ALLOC SET BILLED = ''Y'' WHERE NALLOC = :NALLOC';
                                    ParambyName('NALLOC').AsInteger := qryLedger.FieldByName('NALLOC').AsInteger;
                                    ExecSQL;
                                    Close;
                                 end;
                                 qryMatters.Close;
                              end
                              else // Matter does not exist
                                 raise EInvalidMatter.Create('Invalid Matter code "' + qryLedger.FieldByName('FILEID').AsString + '"');
                              end
                           else
                              raise EInvalidMatterBank.Create(ErrorMessage);
                         end;

                         if qryLedger.FieldByName('TYPE').AsString = 'Bill' then
                         begin
                           cDiff := qryLedger.FieldByName('CREDIT').AsCurrency - (qryLedger.FieldByName('FEESCR').AsCurrency + qryLedger.FieldByName('DISBCR').AsCurrency + qryLedger.FieldByName('UPCREDCR').AsCurrency + qryLedger.FieldByName('ANTDCR').AsCurrency + qryLedger.FieldByName('SUNDCR').AsCurrency);
                           if abs(cDiff) > 0.001 then
                             raise EInvalidBill.Create(formatcurr('0.00',cDiff) + ' Total does not agree with Fees, Disbursements, Cheque Reqs, Unpaid Creditors, and Sundries allocation on Bill number : ' + qryLedger.FieldByName('REFNO').AsString + #13 + #13 + 'Posting cancelled');

                           try
                             with qryBill do
                             begin
                               Close;
                               ParamByName('NMEMO').AsInteger := qryLedger.FieldByName('INVOICE').AsInteger;
                               Open;
                             end;
                           except
                             raise EInvalidBill.Create('Invalid Bill number: ' + qryLedger.FieldByName('REFNO').AsString + chr(13) + chr(13) + 'Posting cancelled');
                           end;
                           if qryBill.IsEmpty then
                             raise EInvalidBill.Create('Invalid Bill number: ' + qryLedger.FieldByName('REFNO').AsString + chr(13) + chr(13) + 'Posting cancelled');

                           qryMatters.Close;
                           qryMatters.ParamByName('P_File').AsString := qryBill.FieldByName('FILEID').AsString;
                           qryMatters.Open;

                           qryAllocs.Insert;
                           qryAllocs.FieldByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
                           qryAllocs.FieldByName('NMATTER').AsInteger := qryMatters.FieldByName('NMATTER').AsInteger;
                           qryAllocs.FieldByName('NCLIENT').AsInteger := qryMatters.FieldByName('NCLIENT').AsInteger;
                           qryAllocs.FieldByName('FILEID').AsString := qryMatters.FieldByName('FILEID').AsString;
                           qryAllocs.FieldByName('CLIENT_NAME').AsString := qryMatters.FieldByName('CLIENT_NAME').AsString;
                           qryAllocs.FieldByName('MATTER_DESC').AsString := qryMatters.FieldByName('SHORTDESCR').AsString;
                           qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
                           qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                           qryAllocs.FieldByName('TRUST').AsString := qryReceipt.FieldByName('TRUST').AsString;
                           qryAllocs.FieldByName('PAYER').AsString := qryReceipt.FieldByName('PAYOR').AsString;
                           qryAllocs.FieldByName('BANK').AsString := cbBank.Text;
                           qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
                           if qryBill.FieldByName('RV_TYPE').AsString = 'D' then
                           begin
                             qryAllocs.FieldByName('TYPE').AsString := 'J2';
                             qryAllocs.FieldByName('AMOUNT').AsCurrency := qryLedger.FieldByName('DISBCR').AsCurrency;
                             qryAllocs.FieldByName('BILLED_AMOUNT').AsCurrency := qryLedger.FieldByName('DISBCR').AsCurrency;
                           end
                           else
                           begin
                             qryAllocs.FieldByName('TYPE').AsString := qryReceipt.FieldByName('TYPE').AsString;
                             qryAllocs.FieldByName('AMOUNT').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
                             qryAllocs.FieldByName('BILLED_AMOUNT').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
                           end;
                           qryAllocs.FieldByName('TAX').AsCurrency := 0;
                           qryAllocs.FieldByName('CLEARED').AsString := qryReceipt.FieldByName('CLEARED').AsString;
                           qryAllocs.FieldByName('DCLEARDATE').AsDateTime := qryReceipt.FieldByName('DCLEARDATE').AsDateTime;
                           qryAllocs.FieldByName('NRECEIPT').AsInteger := qryReceipt.FieldByName('NRECEIPT').AsInteger;
                           qryAllocs.FieldByName('REFNO').AsString := qryReceipt.FieldByName('RCPTNO').AsString;
                           qryAllocs.FieldByName('BILLED').AsString := 'N';
                           qryAllocs.FieldByName('FEE').AsCurrency := qryLedger.FieldByName('FEESCR').AsCurrency;
                           qryAllocs.FieldByName('OUTLAY').AsCurrency := qryLedger.FieldByName('DISBCR').AsCurrency + qryLedger.FieldByName('ANTDCR').AsCurrency;
                           qryAllocs.FieldByName('SUNDRY').AsCurrency := qryLedger.FieldByName('SUNDCR').AsCurrency;
                           qryAllocs.FieldByName('DISB').AsCurrency := qryLedger.FieldByName('DISBCR').AsCurrency;
                           qryAllocs.FieldByName('ANTD').AsCurrency := qryLedger.FieldByName('ANTDCR').AsCurrency;
                           qryAllocs.FieldByName('SUNDRY').AsCurrency := qryLedger.FieldByName('SUNDCR').AsCurrency;

                           qryAllocs.FieldByName('UPCRED').AsCurrency := qryLedger.FieldByName('UPCREDCR').AsCurrency;
                           qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                           qryAllocs.FieldByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;

                           if qryLedger.fieldByname('NSUBBILL').AsInteger <> 0 then
                              qryAllocs.fieldByname('NSUBBILL').AsInteger := qryLedger.fieldByname('NSUBBILL').AsInteger;


                           if nAccount > 0 then begin
                              TransItemUpdate(nAccount, qryAllocs.FieldByName('NMATTER').AsInteger,qryAllocs.FieldByName('NALLOC').AsInteger);
                              nAccount := 0;
                           end;

                           qryAllocs.Post;  // Put it into the cached buffer

                           bReceiptTax := True;

                           if qryBill.FieldByName('RV_TYPE').AsString = 'D' then
                           begin
                             MessageDlg('ERROR: Please contact support -> RV_TYPE = D', mtError, [mbOK], 0);
                           end
                           else
                           begin
                             // Now make the General Ledger entries
                             // Fees, Disbursements and Sundries

                             {post components}

                             if qryLedger.FieldByName('FEESCR').AsCurrency <> 0.0 then
                             begin
                               sLedgerKey := glComponentSetup.buildLedgerKey(qryMatters.fieldByName('NMATTER').AsString,
                                             TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_FEE_CR'),'',true,'');

                               PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                                 , qryLedger.FieldByName('FEESCR').AsCurrency
                                 , 0
                                 , qryReceipt.FieldByName('RCPTNO').AsString
                                 , 'RECEIPT'
                                 , qryReceipt.FieldByName('NRECEIPT').AsInteger
                                 , qryLedger.FieldByName('REASON').AsString
                                 , sLedgerKey
                                 , qryMatters.FieldByName('AUTHOR').AsString
                                 , -1
                                 , ''
                                 , DefaultTax
                                 , FALSE
                                 , '0'
                                 , qryAllocs.FieldByName('NALLOC').AsInteger
                                 , qryMatters.FieldByName('NMATTER').AsInteger);
                             end;

                             if qryLedger.FieldByName('DISBCR').AsCurrency <> 0.0 then
                             begin
                               {post components}
                               sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatters.fieldByName('NMATTER').AsString,
                                              TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_DISB_CR'),'',true,'');

                               PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                                 , qryLedger.FieldByName('DISBCR').AsCurrency
                                 , 0
                                 , qryReceipt.FieldByName('RCPTNO').AsString
                                 , 'RECEIPT'
                                 , qryReceipt.FieldByName('NRECEIPT').AsInteger
                                 , qryLedger.FieldByName('REASON').AsString
                                 , sledgerKey
                                 , qryMatters.FieldByName('AUTHOR').AsString
                                 , -1
                                 , ''
                                 , DefaultTax
                                 , FALSE
                                 , '0'
                                 , qryAllocs.FieldByName('NALLOC').AsInteger
                                 , qryMatters.FieldByName('NMATTER').AsInteger);
                             end;

                             if qryLedger.FieldByName('ANTDCR').AsCurrency <> 0.0 then
                             begin
                               {post components}
                               sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatters.fieldByName('NMATTER').AsString,
                                              TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_ANTD_CR'),'',true,'');

                               PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                                 , qryLedger.FieldByName('ANTDCR').AsCurrency
                                 , 0
                                 , qryReceipt.FieldByName('RCPTNO').AsString
                                 , 'RECEIPT'
                                 , qryReceipt.FieldByName('NRECEIPT').AsInteger
                                 , qryLedger.FieldByName('REASON').AsString
                                 , sLedgerKey
                                 , qryMatters.FieldByName('AUTHOR').AsString
                                 , -1
                                 , ''
                                 , DefaultTax
                                 , FALSE
                                 , '0'
                                 , qryAllocs.FieldByName('NALLOC').AsInteger
                                 , qryMatters.FieldByName('NMATTER').AsInteger);
                             end;

                             if qryLedger.FieldByName('UPCREDCR').AsCurrency <> 0.0 then
                             begin
                               {post components}
                               sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatters.fieldByName('NMATTER').AsString,
                                              TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_UPCRED_CR'),'',true,'');

                               PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                                 , qryLedger.FieldByName('UPCREDCR').AsCurrency
                                 , 0
                                 , qryReceipt.FieldByName('RCPTNO').AsString
                                 , 'RECEIPT'
                                 , qryReceipt.FieldByName('NRECEIPT').AsInteger
                                 , qryLedger.FieldByName('REASON').AsString
                                 , sLedgerKey
                                 , qryMatters.FieldByName('AUTHOR').AsString
                                 , -1
                                 , ''
                                 , DefaultTax
                                 , FALSE
                                 , '0'
                                 , qryAllocs.FieldByName('NALLOC').AsInteger
                                 , qryMatters.FieldByName('NMATTER').AsInteger);
                             end;

                             if qryLedger.FieldByName('SUNDCR').AsCurrency <> 0.0 then
                             begin
                               {post components}
                               sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatters.fieldByName('NMATTER').AsString,
                                              TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_SUND_CR'),'',true,'');

                               PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                                 , qryLedger.FieldByName('SUNDCR').AsCurrency
                                 , 0
                                 , qryReceipt.FieldByName('RCPTNO').AsString
                                 , 'RECEIPT'
                                 , qryReceipt.FieldByName('NRECEIPT').AsInteger
                                 , qryLedger.FieldByName('REASON').AsString
                                 , sLedgerKey
                                 , qryMatters.FieldByName('AUTHOR').AsString
                                 , -1
                                 , ''
                                 , DefaultTax
                                 , FALSE
                                 , '0'
                                 , qryAllocs.FieldByName('NALLOC').AsInteger
                                 , qryMatters.FieldByName('NMATTER').AsInteger);
                             end;
                           end;

                           with qryBillUpdate do
                           begin
                             ParamByName('DATE_LAST_RECPT').AsDateTime := qryReceipt.FieldByName('CREATED').AsDateTime;

                             if qryLedger.FieldByName('FEESCR').AsCurrency = 0 then
                             begin
                               ParamByName('FEES_PAID').AsCurrency := 0;
                               ParamByName('FEESTAX_PAID').AsCurrency := 0;
                             end
                             else
                             begin
                               if (qryBill.FieldByName('FEES').AsCurrency <> 0) then
                               begin
                                 SplitPercent := (qryLedger.FieldByName('FEESCR').AsCurrency/
                                                (qryBill.FieldByName('FEES').AsCurrency + qryBill.FieldByName('FEESTAX').AsCurrency));
                                 TaxCalc := RoundTo((qryBill.FieldByName('FEESTAX').AsCurrency * SplitPercent),-2);
                                 ParamByName('FEESTAX_PAID').AsCurrency := TaxCalc;
                                 ParamByName('FEES_PAID').AsCurrency := (qryLedger.FieldByName('FEESCR').AsCurrency - TaxCalc);

                               // saving receipt amount against original distribution.
                                 qryFeeDist.Close;
                                 qryFeeDist.ParamByName('NMEMO').AsInteger := tvLedgerINVOICE.EditValue;
                                 qryFeeDist.Open;
                                 TotalFeeDistAmt := 0;
                                 FeeDistCount := 1;
                                 TotalFeeDistCount := qryFeeDist.RecordCount;
                                 TotalFees := RoundTo((qryLedger.FieldByName('FEESCR').AsCurrency - TaxCalc), -2);
                                 while (qryFeeDist.Eof = False) do
                                 begin
                                    if (FeeDistCount = TotalFeeDistCount) and
                                       (TotalFeeDistCount > 1)  then
                                       FeeDistAmt :=   RoundTo(TotalFees - TotalFeeDistAmt,-2)
                                    else
                                       FeeDistAmt := RoundTo(TotalFees * (qryFeeDist.FieldByNAme('ALLOC_PC').AsFloat/100),-2);

                                    qryFeeDistInsert.ParamByName('nmemo').AsInteger         := qryFeeDist.FieldByName('nmemo').AsInteger;
                                    qryFeeDistInsert.ParamByName('author').AsString         := qryFeeDist.FieldByName('author').AsString;
                                    qryFeeDistInsert.ParamByName('nmatter').AsInteger       := qryFeeDist.FieldByName('nmatter').AsInteger;
                                    qryFeeDistInsert.ParamByName('dept').AsString           := qryFeeDist.FieldByName('dept').AsString;
                                    qryFeeDistInsert.ParamByName('matter_dept').AsString    := qryFeeDist.FieldByName('matter_dept').AsString;
                                    qryFeeDistInsert.ParamByName('receipt_amt').AsCurrency  := FeeDistAmt;
                                    qryFeeDistInsert.ParamByName('name').AsString           := TableString('EMPLOYEE','CODE',qryFeeDist.FieldByName('author').AsString, 'NAME');
                                    qryFeeDistInsert.ParamByName('created_date').AsDateTime := dtpDate.Date;
                                    qryFeeDistInsert.ExecSQL;
                                    TotalFeeDistAmt := TotalFeeDistAmt + FeeDistAmt;
                                    qryFeeDist.Next;
                                    FeeDistCount := FeeDistCount + 1;
                                 end;
                                 qryFeeDist.Close;
                                 qryFeeDistInsert.Close;

                                 // now do fee receipts
                                 qryFeeReceipt.Close;
                                 qryFeeReceipt.ParamByName('NMEMO').AsInteger := tvLedgerINVOICE.EditValue;
                                 qryFeeReceipt.Open;
                                 // get sum of fees for this bill
                                 qryFeeReceiptTotal.Close;
                                 qryFeeReceiptTotal.ParamByName('NMEMO').AsInteger := tvLedgerINVOICE.EditValue;
                                 qryFeeReceiptTotal.Open;
                                 cTotalReceiptFees := qryFeeReceiptTotal.FieldByName('total_fees').AsCurrency;
                                 qryFeeReceiptTotal.Close;

                                 TotalFeeRcptAmt := 0;
                                 TotalFeeDistCount := qryFeeReceipt.RecordCount;
                                 TotalFees := RoundTo((qryLedger.FieldByName('FEESCR').AsCurrency - TaxCalc), -2);
                                 nfeeRatio := RoundTo(TotalFees/cTotalReceiptFees, -2);
                                 while (qryFeeReceipt.Eof = False) do
                                 begin

                                    qryFeeRcptUpdate.ParamByName('FEES_RECVD').AsCurrency := (qryFeeReceipt.FieldByName('AMOUNT').AsCurrency * nfeeRatio);
                                    qryFeeRcptUpdate.ParamByName('DATE_LAST_RECPT').AsDateTime := dtpDate.Date;
                                    qryFeeRcptUpdate.ParamByName('NFEE').AsInteger := qryFeeReceipt.FieldByName('NFEE').AsInteger;
                                    qryFeeRcptUpdate.ExecSQL;

                                    TotalFees := TotalFees - (qryFeeReceipt.FieldByName('AMOUNT').AsCurrency * nfeeRatio);
                                    qryFeeReceipt.Next;
                                 end;
                                 qryFeeReceipt.Close;
                                 qryFeeRcptUpdate.Close;

                               end;

                             end;

                             if qryLedger.FieldByName('DISBCR').AsCurrency = 0 then
                             begin
                               ParamByName('DISB_PAID').AsCurrency := 0;
                               ParamByName('DISBTAX_PAID').AsCurrency := 0;
                             end
                             else
                             begin
                               SplitPercent := (qryLedger.FieldByName('DISBCR').AsCurrency/(qryBill.FieldByName('DISB').AsCurrency + qryBill.FieldByName('DISBTAX').AsCurrency));
                               TaxCalc := RoundTo((qryBill.FieldByName('DISBTAX').AsCurrency * SplitPercent),-2);
                               ParamByName('DISBTAX_PAID').AsCurrency := TaxCalc;
                               ParamByName('DISB_PAID').AsCurrency := (qryLedger.FieldByName('DISBCR').AsCurrency - TaxCalc);


                             end;

                             if qryLedger.FieldByName('UPCREDCR').AsCurrency = 0 then
                             begin
                               ParamByName('UPCRED_PAID').AsCurrency := 0;
                               ParamByName('UPCREDTAX_PAID').AsCurrency := 0;
                             end
                             else
                             begin

                               SplitPercent := (qryLedger.FieldByName('UPCREDCR').AsCurrency/(qryBill.FieldByName('UPCRED').AsCurrency + qryBill.FieldByName('UPCREDTAX').AsCurrency));
                               TaxCalc := RoundTo((qryBill.FieldByName('UPCREDTAX').AsCurrency * SplitPercent),-2);
                               ParamByName('UPCREDTAX_PAID').AsCurrency := TaxCalc;
                               ParamByName('UPCRED_PAID').AsCurrency := (qryLedger.FieldByName('UPCREDCR').AsCurrency - TaxCalc);

                             end;

                             if qryLedger.FieldByName('ANTDCR').AsCurrency = 0 then
                             begin
                               ParamByName('ANTD_PAID').AsCurrency := 0;
                               ParamByName('ANTDTAX_PAID').AsCurrency := 0;
                             end
                             else
                             begin
                               SplitPercent := (qryLedger.FieldByName('ANTDCR').AsCurrency/(qryBill.FieldByName('ANTD').AsCurrency + qryBill.FieldByName('ANTDTAX').AsCurrency));
                               TaxCalc := RoundTo((qryBill.FieldByName('ANTDTAX').AsCurrency * SplitPercent),-2);
                               ParamByName('ANTDTAX_PAID').AsCurrency := TaxCalc;
                               ParamByName('ANTD_PAID').AsCurrency := (qryLedger.FieldByName('ANTDCR').AsCurrency - TaxCalc);

                             end;

                             if qryLedger.FieldByName('SUNDCR').AsCurrency = 0 then
                             begin
                               ParamByName('SUND_PAID').AsCurrency := 0;
                               ParamByName('SUNDTAX_PAID').AsCurrency := 0;
                             end
                             else
                             begin
                               SplitPercent := (qryLedger.FieldByName('SUNDCR').AsCurrency/(qryBill.FieldByName('SUND').AsCurrency + qryBill.FieldByName('SUNDTAX').AsCurrency));
                               TaxCalc := RoundTo((qryBill.FieldByName('SUNDTAX').AsCurrency * SplitPercent),-2);
                               ParamByName('SUNDTAX_PAID').AsCurrency := TaxCalc;
                               ParamByName('SUND_PAID').AsCurrency := (qryLedger.FieldByName('SUNDCR').AsCurrency - TaxCalc);

                             end;
                             ParamByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
                             ExecSQL;
                             Close;
                           end;

                        // update subbills
                           if qryLedger.fieldByName('nsubBill').AsInteger <> 0 then
                           begin
                              with qrySubBillLocate do
                              begin
                                  close;
                                  paramByname('NMEMO').AsInteger := qryLedger.FieldByName('INVOICE').AsInteger;
                                  paramByname('NSUBBILL').AsInteger := qryLedger.FieldByName('NSUBBILL').AsInteger;
                                  open;
                              end;

                              with qrySubBillUpdate do
                              begin
                                if qryLedger.FieldByName('FEESCR').AsCurrency = 0 then
                                begin
                                  ParamByName('FEES_PAID').AsCurrency := 0;
                                  ParamByName('FEESTAX_PAID').AsCurrency := 0;
                                end
                                else
                                begin
                                  if qryLedger.FieldByName('FEESCR').AsCurrency = (qrySubBillLocate.FieldByName('FEES').AsCurrency - qrySubBillLocate.FieldByName('FEES_PAID').AsCurrency + qrySubBillLocate.FieldByName('FEESTAX').AsCurrency - qrySubBillLocate.FieldByName('FEESTAX_PAID').AsCurrency) then
                                  begin
                                    ParamByName('FEES_PAID').AsCurrency := qrySubBillLocate.FieldByName('FEES').AsCurrency - qrySubBillLocate.FieldByName('FEES_PAID').AsCurrency;
                                    ParamByName('FEESTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('FEESTAX').AsCurrency - qrySubBillLocate.FieldByName('FEESTAX_PAID').AsCurrency;
                                  end
                                  else
                                  begin
                                    // We have to proportion the tax out of the fees
                                    if (qrySubBillLocate.FieldByName('FEES').AsCurrency - qrySubBillLocate.FieldByName('FEES_PAID').AsCurrency + qrySubBillLocate.FieldByName('FEESTAX').AsCurrency - qrySubBillLocate.FieldByName('FEESTAX_PAID').AsCurrency) = 0 then
                                       ParamByName('FEESTAX_PAID').AsCurrency := 0
                                    else
                                    ParamByName('FEESTAX_PAID').AsCurrency := qryLedger.FieldByName('FEESCR').AsCurrency * ((qrySubBillLocate.FieldByName('FEESTAX').AsCurrency - qrySubBillLocate.FieldByName('FEESTAX_PAID').AsCurrency) / (qrySubBillLocate.FieldByName('FEES').AsCurrency - qrySubBillLocate.FieldByName('FEES_PAID').AsCurrency + qrySubBillLocate.FieldByName('FEESTAX').AsCurrency - qrySubBillLocate.FieldByName('FEESTAX_PAID').AsCurrency));
                                    ParamByName('FEES_PAID').AsCurrency := qryLedger.FieldByName('FEESCR').AsCurrency - ParamByName('FEESTAX_PAID').AsCurrency;
                                  end;
                                end;

                                if qryLedger.FieldByName('DISBCR').AsCurrency = 0 then
                                begin
                                  ParamByName('DISB_PAID').AsCurrency := 0;
                                  ParamByName('DISBTAX_PAID').AsCurrency := 0;
                                end
                                else
                                  if qryLedger.FieldByName('DISBCR').AsCurrency = (qrySubBillLocate.FieldByName('DISB').AsCurrency - qrySubBillLocate.FieldByName('DISB_PAID').AsCurrency + qrySubBillLocate.FieldByName('DISBTAX').AsCurrency - qrySubBillLocate.FieldByName('DISBTAX_PAID').AsCurrency) then
                                  begin
                                    ParamByName('DISB_PAID').AsCurrency := qrySubBillLocate.FieldByName('DISB').AsCurrency - qrySubBillLocate.FieldByName('DISB_PAID').AsCurrency;
                                    ParamByName('DISBTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('DISBTAX').AsCurrency - qrySubBillLocate.FieldByName('DISBTAX_PAID').AsCurrency;
                                  end
                                  else
                                  begin
                                    // We have to proportion the tax out of the disbursements
                                    if (qrySubBillLocate.FieldByName('DISB').AsCurrency - qrySubBillLocate.FieldByName('DISB_PAID').AsCurrency + qrySubBillLocate.FieldByName('DISBTAX').AsCurrency - qrySubBillLocate.FieldByName('DISBTAX_PAID').AsCurrency) <> 0 then
                                      begin
                                        try
                                          ParamByName('DISBTAX_PAID').AsCurrency := qryLedger.FieldByName('DISBCR').AsCurrency * ((qrySubBillLocate.FieldByName('DISBTAX').AsCurrency - qrySubBillLocate.FieldByName('DISBTAX_PAID').AsCurrency) / (qrySubBillLocate.FieldByName('DISB').AsCurrency - qrySubBillLocate.FieldByName('DISB_PAID').AsCurrency + qrySubBillLocate.FieldByName('DISBTAX').AsCurrency - qrySubBillLocate.FieldByName('DISBTAX_PAID').AsCurrency));
                                        except
                                           on EZeroDivide do ParamByName('DISBTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('DISBTAX_PAID').AsCurrency;
                                        end;
                                      end;
                                    ParamByName('DISB_PAID').AsCurrency := qryLedger.FieldByName('DISBCR').AsCurrency - ParamByName('DISBTAX_PAID').AsCurrency;
                                  end;
                                if qryLedger.FieldByName('UPCREDCR').AsCurrency = 0 then
                                begin
                                  ParamByName('UPCRED_PAID').AsCurrency := 0;
                                  ParamByName('UPCREDTAX_PAID').AsCurrency := 0;
                                end
                                else
                                  if qryLedger.FieldByName('UPCREDCR').AsCurrency = (qrySubBillLocate.FieldByName('UPCRED').AsCurrency - qrySubBillLocate.FieldByName('UPCRED_PAID').AsCurrency + qrySubBillLocate.FieldByName('UPCREDTAX').AsCurrency - qrySubBillLocate.FieldByName('UPCREDTAX_PAID').AsCurrency) then
                                  begin
                                    ParamByName('UPCRED_PAID').AsCurrency := qrySubBillLocate.FieldByName('UPCRED').AsCurrency - qrySubBillLocate.FieldByName('UPCRED_PAID').AsCurrency;
                                    ParamByName('UPCREDTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('UPCREDTAX').AsCurrency - qrySubBillLocate.FieldByName('UPCREDTAX_PAID').AsCurrency;
                                  end
                                  else
                                  begin
                                    // We have to proportion the tax out of the Anticipated Disbursements
                                    try
                                       ParamByName('UPCREDTAX_PAID').AsCurrency := qryLedger.FieldByName('UPCREDCR').AsCurrency * ((qrySubBillLocate.FieldByName('UPCREDTAX').AsCurrency - qrySubBillLocate.FieldByName('ANTDTAX_PAID').AsCurrency) / (qrySubBillLocate.FieldByName('ANTD').AsCurrency - qrySubBillLocate.FieldByName('UPCRED_PAID').AsCurrency + qrySubBillLocate.FieldByName('UPCREDTAX').AsCurrency - qrySubBillLocate.FieldByName('UPCREDTAX_PAID').AsCurrency));
                                    except
                                       on EZeroDivide do ParamByName('UPCREDTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('UPCREDTAX_PAID').AsCurrency;
                                    end;
                                    ParamByName('UPCRED_PAID').AsCurrency := qryLedger.FieldByName('UPCREDCR').AsCurrency - ParamByName('UPCREDTAX_PAID').AsCurrency;
                                  end;

                                if qryLedger.FieldByName('ANTDCR').AsCurrency = 0 then
                                begin
                                  ParamByName('ANTD_PAID').AsCurrency := 0;
                                  ParamByName('ANTDTAX_PAID').AsCurrency := 0;
                                end
                                else
                                  if qryLedger.FieldByName('ANTDCR').AsCurrency = (qrySubBillLocate.FieldByName('ANTD').AsCurrency - qrySubBillLocate.FieldByName('ANTD_PAID').AsCurrency + qrySubBillLocate.FieldByName('ANTDTAX').AsCurrency - qrySubBillLocate.FieldByName('ANTDTAX_PAID').AsCurrency) then
                                  begin
                                    ParamByName('ANTD_PAID').AsCurrency := qrySubBillLocate.FieldByName('ANTD').AsCurrency - qrySubBillLocate.FieldByName('ANTD_PAID').AsCurrency;
                                    ParamByName('ANTDTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('ANTDTAX').AsCurrency - qrySubBillLocate.FieldByName('ANTDTAX_PAID').AsCurrency;
                                  end
                                  else
                                  begin
                                    // We have to proportion the tax out of the Anticipated Disbursements
                                    try
                                       ParamByName('ANTDTAX_PAID').AsCurrency := qryLedger.FieldByName('ANTDCR').AsCurrency * ((qrySubBillLocate.FieldByName('ANTDTAX').AsCurrency - qrySubBillLocate.FieldByName('ANTDTAX_PAID').AsCurrency) / (qrySubBillLocate.FieldByName('ANTD').AsCurrency - qrySubBillLocate.FieldByName('ANTD_PAID').AsCurrency + qrySubBillLocate.FieldByName('ANTDTAX').AsCurrency - qrySubBillLocate.FieldByName('ANTDTAX_PAID').AsCurrency));
                                    except
                                       on EZeroDivide do ParamByName('ANTDTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('ANTDTAX_PAID').AsCurrency;
                                    end;
                                    ParamByName('ANTD_PAID').AsCurrency := qryLedger.FieldByName('ANTDCR').AsCurrency - ParamByName('ANTDTAX_PAID').AsCurrency;
                                  end;
                                if qryLedger.FieldByName('SUNDCR').AsCurrency = 0 then
                                begin
                                  ParamByName('SUND_PAID').AsCurrency := 0;
                                  ParamByName('SUNDTAX_PAID').AsCurrency := 0;
                                end
                                else
                                  if qryLedger.FieldByName('SUNDCR').AsCurrency = (qrySubBillLocate.FieldByName('SUND').AsCurrency - qrySubBillLocate.FieldByName('SUND_PAID').AsCurrency + qrySubBillLocate.FieldByName('SUNDTAX').AsCurrency - qrySubBillLocate.FieldByName('SUNDTAX_PAID').AsCurrency) then
                                  begin
                                    ParamByName('SUND_PAID').AsCurrency := qrySubBillLocate.FieldByName('SUND').AsCurrency - qrySubBillLocate.FieldByName('SUND_PAID').AsCurrency;
                                    ParamByName('SUNDTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('SUNDTAX').AsCurrency - qrySubBillLocate.FieldByName('SUNDTAX_PAID').AsCurrency;
                                  end
                                  else
                                  begin
                                    // We have to proportion the tax out of the fees
                                    try
                                       ParamByName('SUNDTAX_PAID').AsCurrency := qryLedger.FieldByName('SUNDCR').AsCurrency * ((qrySubBillLocate.FieldByName('SUNDTAX').AsCurrency - qrySubBillLocate.FieldByName('SUNDTAX_PAID').AsCurrency) / (qrySubBillLocate.FieldByName('SUND').AsCurrency - qrySubBillLocate.FieldByName('SUND_PAID').AsCurrency + qrySubBillLocate.FieldByName('SUNDTAX').AsCurrency - qrySubBillLocate.FieldByName('SUNDTAX_PAID').AsCurrency));
                                    except
                                       on EZeroDivide do ParamByName('SUNDTAX_PAID').AsCurrency := qrySubBillLocate.FieldByName('SUNDTAX_PAID').AsCurrency;
                                    end;
                                    ParamByName('SUND_PAID').AsCurrency := qryLedger.FieldByName('SUNDCR').AsCurrency - ParamByName('SUNDTAX_PAID').AsCurrency;
                                  end;
                                ParamByName('NMEMO').AsInteger := qrySubBillLocate.FieldByName('NMEMO').AsInteger;
                                ParamByName('NSUBBILL').AsInteger := qryLedger.FieldByName('NSUBBILL').AsInteger;
                                ExecSQL;
                                Close;
                              end;
                           end;
                           // endupdate subbills


                           if qryLedger.FieldByName('ANTDCR').AsCurrency > 0 then
                             with qryTmp do
                             begin
                               SQL.Clear;
                               SQL.Add('select a.ncheqreq, a.reqdate, nvl(a.amount,0) + nvl(a.tax,0) as amount, nvl(paid.amount,0) as ALLOC, a.nmemo');
                               SQL.Add('from cheqreq a,');
                               SQL.Add('(select sum(amount) as amount, ncheqreq from cheqreq_trans group by ncheqreq) paid');
                               SQL.Add('where a.ncheqreq =  paid.ncheqreq (+)');
                               SQL.Add('and a.NMEMO =:NMEMO');
                               SQL.Add('and a.REV_NCHEQREQ IS NULL');
              {
                End19.9.02 GG
              }
                               SQL.Add('order by nmemo, reqdate asc');
                               ParambyName('NMEMO').AsInteger := qryAllocs.FieldbyName('NMEMO').AsInteger;
                               Open;
                               cBalance := qryLedger.FieldByName('ANTDCR').AsCurrency;

                               while not EOF do
                                 begin
                                   if (FieldbyName('AMOUNT').AsCurrency > FieldbyName('ALLOC').AsCurrency) and (cBalance > 0) then
                                     begin
                                       cAllocAmnt := (FieldbyName('AMOUNT').AsCurrency - FieldbyName('ALLOC').AsCurrency);

                                       if ((fsCheqreqList <> nil) and (fsCheqreqList.Count > 0)) then
                                       begin
                                          for nListRow := 0 to fsCheqreqList.Count - 1 do
                                          begin
                                             if (StrToInt(fsCheqreqList.Strings[nListRow]) = FieldbyName('NCHEQREQ').AsInteger) then
                                             begin
                                                TempCheqReq := StrToInt(fsCheqreqList.Strings[nListRow]);
                                                if cAllocAmnt <= cBalance then
                                                begin
                                                  cBalance := cBalance - cAllocAmnt;
                                                  PostCheqReqTrans(cAllocAmnt, qryAllocs.FieldbyName('NALLOC').AsInteger, TempCheqReq ); //FieldbyName('NCHEQREQ').AsInteger);

                                                  // paid in full so make as not waiting
                                                  dmAxiom.qryTmp2.Close;
                                                  dmAxiom.qryTmp2.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''N'' WHERE NCHEQREQ = :NCHEQREQ';
                                                  dmAxiom.qryTmp2.ParamByName('NCHEQREQ').AsInteger := TempCheqReq; //FieldbyName('NCHEQREQ').AsInteger;
                                                  dmAxiom.qryTmp2.ExecSql;
                                                  dmAxiom.qryTmp2.Close;
                                                end
                                                else
                                                begin
                                                  PostCheqReqTrans(cBalance, qryAllocs.FieldbyName('NALLOC').AsInteger, TempCheqReq ); // FieldbyName('NCHEQREQ').AsInteger);
                                                  cBalance := 0;
                                                end;
                                             end;
                                          end;
                                       end
                                       else
                                       begin
                                          TempCheqReq := FieldbyName('NCHEQREQ').AsInteger;
                                          if cAllocAmnt <= cBalance then
                                            begin
                                              cBalance := cBalance - cAllocAmnt;
                                              PostCheqReqTrans(cAllocAmnt, qryAllocs.FieldbyName('NALLOC').AsInteger, TempCheqReq ); //FieldbyName('NCHEQREQ').AsInteger);

                                              // paid in full so make as not waiting
                                              dmAxiom.qryTmp2.Close;
                                              dmAxiom.qryTmp2.SQL.Text := 'UPDATE CHEQREQ SET HELD = ''N'' WHERE NCHEQREQ = :NCHEQREQ';
                                              dmAxiom.qryTmp2.ParamByName('NCHEQREQ').AsInteger := TempCheqReq; //FieldbyName('NCHEQREQ').AsInteger;
                                              dmAxiom.qryTmp2.ExecSql;
                                              dmAxiom.qryTmp2.Close;
                                            end
                                          else
                                            begin
                                              PostCheqReqTrans(cBalance, qryAllocs.FieldbyName('NALLOC').AsInteger, TempCheqReq ); // FieldbyName('NCHEQREQ').AsInteger);
                                              cBalance := 0;
                                            end;
                                       end;
                                    end;
                                   Next;
                                 end;

                             end;
                         end;

                         if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
                         begin
                           // lookup the ledger code based on the value entered
                           glInstance := dmAxiom.getGlComponents.parseString(qryLedger.FieldByName('REFNO').AsString,true);

                           if not glInstance.valid then
                           begin
                               // something has gone very wrong !
                               raise Exception.create('Error invalid ledger key');
                           end;

                           if qryLedger.FieldByName('TAXCODE').IsNull then
                           begin
                              GLDefaultTaxCode := TableStringEntity('chart','component_code_display',
                                                                 qryLedger.FieldByName('REFNO').AsString,
                                                                 'default_taxcode',
                                                                 dmAxiom.Entity);
                              if GLDefaultTaxCode <> '' then
                                 DefaultTax := GLDefaultTaxCode;
                           end
                           else
                           begin
                              DefaultTax := qryLedger.FieldByName('TAXCODE').AsString;
                           end;

                           cAmt := qryLedger.FieldByName('CREDIT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency;
                           if DefaultTax <> '' then
                              cTax := CalcTax(cAmt, DefaultTax);

                           PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
                             , qryLedger.FieldByName('CREDIT').AsCurrency
                             , cTax
                             , qryReceipt.FieldByName('RCPTNO').AsString
                             , 'RECEIPT'
                             , qryReceipt.FieldByName('NRECEIPT').AsInteger
                             , qryLedger.FieldByName('REASON').AsString
                             ,glInstance.ledgerKey
                             , ''
                             , -1
                             , ''
                             , DefaultTax
                             , FALSE
                             , '0'
                             , qryAllocs.FieldByName('NALLOC').AsInteger
                             //, strtoint(glInstance.ledgerkey))    // having ledger code causes BAS report issue 17 Oct 2018 DW
                             ,0);

                             SaveTaxAmount(qryReceipt.FieldByName('NRECEIPT').AsInteger,
                                           cTax, glInstance.ledgerKey, DefaultTax);
                           end;
                         qryMatters.Close;
                       end;
                       qryLedger.Next;
                    end;


                    if not bPostingFailed then
                    begin
                       // Update the last Receipt number and balance
                       with qryTmp do
                       begin
                         sSQL := 'UPDATE BANK SET BALANCE = ' + CurrToStrF(qryBanks.FieldByName('BALANCE').AsCurrency + qryReceipt.FieldByName('AMOUNT').AsCurrency, ffFixed, 15);
                         if qryReceipt.FieldByName('CLEARED').AsString = 'Y' then
                           sSQL := sSQL + ', CL_BALANCE = ' + CurrToStrF(qryBanks.FieldByName('CL_BALANCE').AsCurrency + qryReceipt.FieldByName('AMOUNT').AsCurrency, ffFixed, 15);
                         sSQL := sSQL + ', LASTRCP = ' + QuotedStr(tbRcptno.Text);
                         sSQLWhere := ' WHERE ACCT = ' + QuotedStr(qryReceipt.FieldByName('ACCT').AsString);
                         Close;
                         SQL.Text := sSQL + sSQLWhere;
                         ExecSQL;
                         Close;
                       end;
                       // update the last receipt number
                       qryPrinter.ParamByName('CODE').AsString := cmbPrinter.Text;
                       qryPrinter.Open;
                       qryPrinter.Edit;
                       qryPrinter.FieldByName('NUM_LAST').AsString := tbRcptno.Text;
                       qryPrinter.ApplyUpdates;
                       qryPrinter.Close;

                       CheckLedgerTotal;

                       // Now save the data
                       qryReceipt.ApplyUpdates;
                       qryAllocs.ApplyUpdates;

                       if bReceiptTax = True then
                       //update receipt record with tax amount from bill - for cash based bas reporting
                       //**********************************************************************************
                       begin
                          with qryReceiptTax do
                          begin
                             ParamByName('NRECEIPT').AsInteger := qryReceipt.FieldByName('NRECEIPT').AsInteger;
                             Open;
                             Edit;
                             if (qryLedger.FieldByName('CREDIT').AsCurrency = qryBill.FieldByName('OWING').AsCurrency) then
                                FieldByName('TAX').AsCurrency := qryBill.FieldByName('TAX').AsCurrency
                             else
                             begin
                                FieldByName('TAX').AsCurrency :=
                                          (qryLedger.FieldByName('CREDIT').AsCurrency/qryBill.FieldByName('OWING').AsCurrency) *
                                          (qryBill.FieldByName('TAX').AsCurrency - qryBill.FieldByName('TAX_PAID').AsCurrency);
                             end;
                             Post;
                          end;
                       end;

                       if (qryReceiptTax.Active = True) then
                          qryReceiptTax.ApplyUpdates();

                       if (qryCheqReqTrans.Active = true) then
                       begin
                         if (qryCheqReqTrans.RecordCount > 0) then
                           qryCheqReqTrans.ApplyUpdates;
                       end;

                       lmsgBody := TStringList.Create;
                       if bAutoReceiptBankRec = True then
                       begin
                          with dmAxiom.qryTmp do
                          begin
                             Close;
                             SQL.Text := 'update receipt_req set nreceipt = :nreceipt where nreceiptreq = :nreceiptreq';
                             ParamByName('nreceiptreq').AsString := Fnreceiptreq;
                             ParamByName('nreceipt').AsString := qryReceipt.FieldByName('NRECEIPT').AsString;
                             ExecSQL;
                          end;
                          SetDefaultMessageData;

                          if not dmAxiom.MapiSession.Active then
                          begin
                              OldCursor := Screen.Cursor;
                              Screen.Cursor := crHourGlass;
                              try
                                 dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                                 dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;
                                 dmAxiom.MapiSession.LogonInfo.Password           := '';
                                 dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                                 dmAxiom.MapiSession.LogonInfo.NewSession         := False;
                                 dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                                 dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
                                 dmAxiom.MapiSession.Active                       := True;
                              finally
                                 Screen.Cursor := OldCursor;
                              end;
                          end;

                           // create a new message of class IPM.Note in the drafts folder of the default messagestore
                          MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
                          Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
                          NewMessage := Folder.CreateMessage('IPM.Note') as IRwMapiMailMessage;

                          NewMessage.RecipTo := TableString('EMPLOYEE','CODE',FReqBy ,'EMAIL');
                          NewMessage.Subject := 'Receipt requisition';
                          NewMessage.HTMLBody := lmsgBody.Text;
                          NewMessage.SubmitMessage(astMoveToSentItems);
                       end;
                       dmAxiom.uniInsight.Commit;

                       qryCheqReqTrans.Close;

                       FreeAndNil(lmsgBody);
                       FreeAndNil(fsCheqreqList);
                    end;
                  except
                    on E: Exception do
                    begin
                      dmAxiom.uniInsight.Rollback;
                      if (qryReceipt.Active = true) then
                         qryReceipt.CancelUpdates;
                      if (qryAllocs.Active = True) then
                         qryAllocs.CancelUpdates;

                      bPostingFailed := True;

                      if (qryCheqReqTrans.Active = true) then
                        qryCheqReqTrans.CancelUpdates;

                      lsMessage := 'Posting failed:' + chr(13) + chr(13) + E.Message;
                      lsMessage := lsMessage + #13#10 + 'On Nreceipt: ' + qryReceipt.FieldByName('NRECEIPT').AsString;

                      MsgErr(lsMessage);
                      // close the receipt
                      Screen.Cursor := crDefault;
                    end;
                  end;


                  if not bPostingFailed then
                  begin
                    qryAllocs.Close;
                    Screen.Cursor := crDefault;
                    try
                        if (chkPrint.Enabled) and (chkPrint.Checked) then
                        begin
                           with TfrmReceiptPrint.Create(Self) do
                           begin
                              PrinterPath := cmbPrinter.Text;
                              PrintReceipt(Self.qryReceipt.FieldByName('NRECEIPT').AsInteger);
                           end;
                        end;
                    except
                      on E: Exception do
                        MsgErr('Printing failed:' + #13 + E.Message + #13 + #13 + 'You may print this receipt by locating it in the Receipts screen');
                    end;

                    // Refresh the Cash Receipts screen if it is open
                    Screen.Cursor := crSQLWait;
                    iCtr := 0;
                    bFormUpdated := False;
                    while (iCtr < Screen.FormCount) and not bFormUpdated do
                    begin
                       if Screen.Forms[iCtr].ClassName = 'TfrmCashRcp' then
                       begin
                         try
                            (Screen.Forms[iCtr] as TfrmCashRcp).MakeSQL;
                            bFormUpdated := True;
                         except
                           //
                         end;
                       end;
                       if Screen.Forms[iCtr].ClassName = 'TfrmMatters' then
                       begin
                         try
                            (Screen.Forms[iCtr] as TfrmMatters).qryInvoices.Close;
                            (Screen.Forms[iCtr] as TfrmMatters).qryInvoices.Open;
                            (Screen.Forms[iCtr] as TfrmMatters).qrySubBill.Close;
                            (Screen.Forms[iCtr] as TfrmMatters).qrySubBill.Open;
                            bFormUpdated := True;
                         except
                           //
                         end;
                       end;
                       iCtr := iCtr + 1;
                    end;

                    qryReceipt.Close;
                    qryAllocs.Close;

                    Screen.Cursor := crDefault;
                    if (chkNoExit.Checked) then
                    begin
                      // Create a new receipt
                      sNName := '';
                      tbPayee.Text := '';
                      tbDesc.Text := '';
                      tbDrawer.Text := '';
                      tbChqBank.Text := '';
                      tbBranch.Text := '';
                      tbChqno.Text := '';
                      DefaultDescr := '';
                      neAmount.EditValue := 0;
                      TotalAmt := 0;
                      lblTotal.Caption := '0.00';
                      lblUnallocated.Caption := '0.00';
                      qryLedger.Close;
                      qryLedger.Open;
                      qryBanks.Close;
                      qryBanks.Open;
                      cmbPrinterChange(sender);
                      foMatterTotals.Clear;
                      foMultipleMatters.Clear;
                      foBillsTotal.Clear;
                      sbarBalances.Panels[pnlCREDITORS].Text := '$0.00';
                      sbarBalances.Panels[pnlTrust].Text := '$0.00';
                      tbPayee.SetFocus;
                    end
                    else
                    begin
                      ModalResult := mrOk;
                      Self.Close;
                    end;
                  end
                  else
                    begin
                      if (qryReceipt.Active = true) then
                         qryReceipt.CancelUpdates;
                      if (qryAllocs.Active = True) then
                         qryAllocs.CancelUpdates;

                      if (qryCheqReqTrans.Active = true) then
                        qryCheqReqTrans.CancelUpdates;

                      Screen.Cursor := crDefault;
                      MessageDlg('The receipt was not saved to the database.' + #13#10 + 'Please correct errors then retry.', mtWarning, [mbOK], 0);
                      qryReceipt.Close;
                      qryAllocs.Close;
                    end;
                end;
            end;    //  end if
         end;
      finally
         Screen.Cursor := crDefault;
      end;
end;

procedure TfrmReceipt.actOkUpdate(Sender: TObject);
begin
   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceipt.tvLedgerTAXCODEPropertiesChange(Sender: TObject);
begin
   if (qryLedger.FieldbyName('REFNO').AsString <> '') then
   begin
      CalcGridTax;
   end;
end;

procedure TfrmReceipt.actCancelExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmReceipt.cbBankPropertiesCloseUp(Sender: TObject);
begin
   if (FBank <> cbBank.Text) then
   begin
      tbRcptNo.Text := '';
      cmbPrinter.Properties.Items.Clear;
      cmbPrinter.Text := '';
      StringPopulate(cmbPrinter.Properties.Items, 'PRINTER', 'CODE', 'TYPE = ''R'' AND BANK_ACCT = ''' + cbBank.Text + '''');
      cmbPrinter.Enabled := True;
      cmbPrinterChange(Self);
      FBank := cbBank.Text;
   end;
end;

procedure TfrmReceipt.setUpSubBill(iNSubBill : Integer);
begin
  qrySubBillLookup.Close;
  qrySubBillLookup.paramByName('NSUBBILL').AsInteger := iNSubBill;
  qrySubBillLookup.paramByName('NMEMO').AsInteger := qryLedger.fieldByName('INVOICE').AsInteger;
  qrySubBillLookup.Open;

  qryLedger.FieldByName('CREDIT').AsCurrency := qrySubBillLookup.fieldByName('OWING').AsCurrency;
  qryLedger.FieldByName('DEBIT').AsCurrency := qryLedger.FieldByName('CREDIT').AsCurrency;
  qryLedger.FieldByName('FEESDR').AsCurrency := qrySubBillLookup.FieldByName('FEES').AsCurrency - qrySubBillLookup.FieldByName('FEES_PAID').AsCurrency + qrySubBillLookup.FieldByName('FEESTAX').AsCurrency - qrySubBillLookup.FieldByName('FEESTAX_PAID').AsCurrency;
  qryLedger.FieldByName('DISBDR').AsCurrency := qrySubBillLookup.FieldByName('DISB').AsCurrency - qrySubBillLookup.FieldByName('DISB_PAID').AsCurrency + qrySubBillLookup.FieldByName('DISBTAX').AsCurrency - qrySubBillLookup.FieldByName('DISBTAX_PAID').AsCurrency;
  qryLedger.FieldByName('UPCREDDR').AsCurrency := qrySubBillLookup.FieldByName('UPCRED').AsCurrency - qrySubBillLookup.FieldbyName('UPCRED_PAID').AsCurrency + qrySubBillLookup.FieldByName('UPCREDTAX').AsCurrency - qrySubBillLookup.FieldByName('UPCREDTAX_PAID').AsCurrency;
  qryLedger.FieldByName('ANTDDR').AsCurrency := qrySubBillLookup.FieldByName('ANTD').AsCurrency - qrySubBillLookup.FieldbyName('ANTD_PAID').AsCurrency + qrySubBillLookup.FieldByName('ANTDTAX').AsCurrency - qrySubBillLookup.FieldByName('ANTDTAX_PAID').AsCurrency;
  qryLedger.FieldByName('SUNDDR').AsCurrency := qrySubBillLookup.FieldByName('SUND').AsCurrency - qrySubBillLookup.FieldByName('SUND_PAID').AsCurrency + qrySubBillLookup.FieldByName('SUNDTAX').AsCurrency - qrySubBillLookup.FieldByName('SUNDTAX_PAID').AsCurrency;
  DistributeBill(false);
  ValidateCurrentRecord(qrySubBillLookup.fieldByName('OWING').AsCurrency);

  qrySubBillLookup.close;
end;

procedure TfrmReceipt.qryLedgerNSUBBILLValidate(Sender: TField);
begin
   setUpSubBill(Sender.AsInteger) ;
end;

procedure TfrmReceipt.tvLedgerNsubbillPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
    setUpSubBill(StrToInt(tvLedgerNsubbill.EditValue));
end;

procedure TfrmReceipt.tvLedgerNSUBBILL_IDPropertiesCloseUp(Sender: TObject);
begin
   try
      if qryLedger.State = dsBrowse then
         qryLedger.edit;
      qryLedger.FieldByName('NSUBBILL').AsINTEGER := tvLedgerNSUBBILL_ID.EditValue;  //TableINTEGER('SUBBILLS','NSUBBILL_ID',integer(tvLedgerNsubbill.EditValue),'NSUBBILL');
      // sometimes qry closes prior to doing the next step
      if qryLedger.State = dsBrowse then
         qryLedger.edit;
      qryLedger.FieldByName('CREDIT').AsCurrency := TableCurrency('SUBBILLS','NSUBBILL_ID',integer(tvLedgerNSUBBILL_ID.EditValue),'OWING');
   finally
      setUpSubBill(StrToInt(tvLedgerNSUBBILL_ID.EditValue));
   end;
end;

procedure TfrmReceipt.tvLedgerREFNOPropertiesChange(Sender: TObject);
begin
   if (qryLedger.FieldByName('REFNO').AsString <> '') and (not bAutoReceiptMatter) then
   begin
     qryLedger.FieldByName('REFNO').AsString := UpperCase(Trim(qryLedger.FieldByName('REFNO').AsString));
     if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or (qryLedger.FieldByName('TYPE').AsString = 'Disburse') then
       qryLedger.FieldByName('DESCR').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'MATLOCATE');

     if tvLedgerTYPE.DataBinding.Field.Text = 'Bill' then
     begin
       with qryTmp do
       begin
         Close;
         SQL.Text := 'SELECT FILEID FROM NMEMO WHERE REFNO = ' + QuotedStr(qryLedger.FieldByName('REFNO').AsString);
         Open;
         qryLedger.FieldByName('DESCR').AsString := MatterString(FieldByName('FILEID').AsString, 'MATLOCATE');
         Close;
       end;
       with qryBill do
       begin
         Close;
         ParamByName('NMEMO').AsString :=  GetNMemoRef('NMEMO', qryLedger.FieldByName('REFNO').AsString);
         Open;
         if not IsEmpty then
           begin
             SetupBill;
             DistributeBill;
           end;    //  end if
       end;
     end;
     if tvLedgerTYPE.DataBinding.Field.Text = 'Ledger' then
       if not LedgerHead(qryLedger.FieldByName('REFNO').AsString) then
         qryLedger.FieldByName('DESCR').AsString := LedgerComponentString(qryLedger.FieldByName('REFNO').AsString, 'REPORT_DESC')
       else
       begin
         MsgErr('You may not post to a header ledger');
         qryLedger.FieldByName('REFNO').AsString := '';
       end;
  end;

   StatusDisplay;
end;

procedure TfrmReceipt.tvLedgerNsubbillPropertiesCloseUp(Sender: TObject);
begin
   try
      if qryLedger.State = dsBrowse then
         qryLedger.edit;
      qryLedger.FieldByName('NSUBBILL').AsINTEGER := tvLedgerNsubbill.EditValue;  //TableINTEGER('SUBBILLS','NSUBBILL_ID',integer(tvLedgerNsubbill.EditValue),'NSUBBILL');
      // sometimes qry closes prior to doing the next step
      if qryLedger.State = dsBrowse then
         qryLedger.edit;
      qryLedger.FieldByName('CREDIT').AsCurrency := TableCurrency('SUBBILLS','NSUBBILL_ID',integer(tvLedgerNsubbill.EditValue),'OWING');
   except
   //
   end;
end;

procedure TfrmReceipt.showSubBillColumn;
begin
    if SystemString('ALLOW_SPLIT_BILLS') = 'N' then
    begin
        tvLedgerNSUBBILL_ID.Visible := false;
        exit;
    end;
    tvLedgerNSUBBILL_ID.Visible := qryBanks.FieldByName('TRUST').AsString = 'G';
end;

procedure TfrmReceipt.tvLedgerInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
var
  BillValue: variant;
  colBillIndex: Integer;

  DC: TcxGridDBDataController;
  LookupProp: TcxLookupComboBoxProperties;

  LGrid: TcxCustomLookupDBGrid;
begin
   DC := TcxGridDBDataController(Sender.DataController);
   colBillIndex := DC.GetItemByFieldName('REFNO').Index;
   BillValue := DC.Values[DC.FocusedRecordIndex, colBillIndex];
   try
      if (AItem = tvLedgerNSUBBILL_ID) then  // subbill Name
      begin
         LGrid := TcxLookupComboBox(AEdit).Properties.Grid;
         with LGrid.DataController.Filter do
         begin
            if qryFilterSubBill.Active then
               qryFilterSubBill.Close;

            qryFilterSubBill.ParamByName('NMEMO').AsInteger := TableINTEGER('NMEMO','REFNO',string(BillValue),'NMEMO');

            LookupProp := TcxLookupComboBox(AEdit).Properties;
            LookupProp.ListSource := dsFilterSubBill;
            LookupProp.KeyFieldNames := 'NSUBBILL_ID';
            LookupProp.ListFieldNames := 'DEBTOR_NAME;OWING';
            qryFilterSubBill.Open;
         end;
      end;
   except
      ;
   end;

end;

procedure TfrmReceipt.CmShownEditor(var Msg: TMessage);
var
  Obj: TObject;
begin
  Obj := Pointer(Msg.WParam);
  if Obj is TcxCustomEdit then
    TcxCustomEdit(Obj).ModifiedAfterEnter := True;
end;

procedure TfrmReceipt.tvLedgerCREDITPropertiesChange(Sender: TObject);
begin
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmReceipt.tvLedgerCREDITPropertiesEditValueChanged(Sender: TObject);
begin
  if tvLedgerTAXCODE.Visible = True then
    CalcGridTax;
end;


procedure TfrmReceipt.cbTypePropertiesCloseUp(Sender: TObject);
begin
   try
      if (cbType.EditValue = 'BC') OR (cbType.EditValue = 'CQ') then
         ChequeGroupEnabled(TRUE)
      else
         ChequeGroupEnabled(FALSE);
   except
     //
   end;
end;

procedure TfrmReceipt.tvLedgerDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
var
   V1: Variant;
begin
    try
      V1 := 0;
      V1 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(tvLedgerCREDIT)];
      if (not VarIsNull(V1)) then
         TotalAmt := V1;
    except
       //
    end;
end;

procedure TfrmReceipt.tvLedgerDataControllerDataChanged(Sender: TObject);
begin
   btnOK.Enabled := OKtoPost(False);
end;


procedure TfrmReceipt.edChqImportPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   frmChequeImport: TfrmChequeImport;
begin
  frmChequeImport := nil;
   try
      FSelected := False;
      frmChequeImport := TfrmChequeImport.Create(Self);
      with frmChequeImport do
      begin
         FromButton := True;
         qryCheques.Close;
         qryCheques.ParamByName('CHQNO').Clear;
         qryCheques.ParamByName('ACCT').AsString := cbBankImport.Text;
         qryCheques.Open;
         if ShowModal = mrOk then
         begin
            edImport.EditValue := tvChequeImportCHQNO.EditValue;
            FSelected := True;
         end;
      end;
   finally
      frmChequeImport.free;
   end;
end;

procedure TfrmReceipt.cbTypePropertiesEditValueChanged(Sender: TObject);
var
   AValue: integer;
begin
  try
      if (cbType.EditValue = 'BC') OR (cbType.EditValue = 'CQ') then
         ChequeGroupEnabled(TRUE)
      else
         ChequeGroupEnabled(FALSE);
      with cbType.Properties.Grid.DataController do
         AValue := Values[FocusedRecordIndex, 1];
      dtClearanceDate.Date := GetClearDate(dtpDate.Date, AValue);
   except
     //
   end;
end;

procedure TfrmReceipt.dtpDatePropertiesChange(Sender: TObject);
var
   AValue: integer;
begin
   try
      if (cbType.Text <> '') then
      begin

         with cbType.Properties.Grid.DataController do
            AValue := Values[FocusedRecordIndex, 1];
         dtClearanceDate.Date := GetClearDate(dtpDate.Date, AValue);
         dtBankedDate.Date := dtpDate.Date;
      end;
   except
     //
   end;

end;

procedure TfrmReceipt.dtpDatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if DisplayValue > TcxDateEdit(Sender).Properties.MaxDate  then
      DisplayValue := DateToStr(TcxDateEdit(Sender).Properties.MaxDate);
end;

procedure TfrmReceipt.tvLedgerFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);

begin
  if (AFocusedItem = tvLedgerCREDIT) then
  begin
    tvLedgerCREDIT.Editing := (tvLedgerTYPE.EditValue <> 'Disburse');
    tvLedgerCREDIT.Focused := tvLedgerCREDIT.Editing;
  end;
end;

procedure TfrmReceipt.CalcGridTax;
var
  dAmount: double;
  taxcode: STRING;
begin
   if (tvLedgerTAXCODE.Visible) then
   begin
      if qryLedger.State = dsBrowse  then
         qryLedger.Edit;

      dAmount := qryLedger.FieldByName('CREDIT').AsCurrency;
      if DefaultTax <> qryLedger.FieldByName('TAXCODE').AsString then
      begin
         taxcode := DefaultTax;
         DefaultTax := qryLedger.FieldByName('TAXCODE').AsString;
      end;
      qryLedger.FieldByName('TAX').AsFloat := TaxCalc(dAmount, 'BILL', DefaultTax, dtpDate.Date);
      qryLedger.FieldByName('CREDIT').AsCurrency := dAmount;
      if qryLedger.State in [dsInsert, dsEdit] then
         UpdateTotal;
      if Taxcode <> '' then
         DefaultTax := taxcode;
   end;
end;

procedure TfrmReceipt.AutoReceiptBankRec(ReceiptReq: string; Bank: string = '');
var
   sTrust : String;
begin
   // This procedure sets up a receipt Automagically from a receipt req supplied
   Screen.Cursor := crSQLWait;
   Created := True;
   Self.Show;
   qryReceiptReq.Close;
   qryReceiptReq.ParamByName('NRECEIPTREQ').AsString := ReceiptReq;
   qryReceiptReq.Open;
   if (not qryReceiptReq.IsEmpty) then
   begin
      Fnreceiptreq := ReceiptReq;
      if Bank <> '' then
      begin
         cbBank.EditValue := Bank;
         cbBank.Text := Bank;
      end
      else
         cbBank.ItemIndex := cbBank.Properties.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
      cbBankClick(Self);

      sTrust := TableString('BANK','ACCT',Bank,'TRUST');
      FReqBy := qryReceiptReq.FieldByName('REQBY').AsString;

      bAutoReceiptBankRec := True;

      tbDrawer.Text := tbPayee.Text;
      if not qryLedger.Active then
         qryLedger.Open;

      with qryLedger do
      begin
         Insert;
         if sTrust = 'T' then
         begin
            TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Matter');
            FieldByName('TYPE').AsString := 'Matter';
            FieldByName('REFNO').AsString := qryReceiptReq.FieldByName('FILEID').AsString;
            FieldByName('DESCR').AsString := MatterString(qryReceiptReq.FieldbyName('FILEID').AsString, 'MATLOCATE');
            tbPayee.Text := qryReceiptReq.FieldByName('PAYOR').AsString;
            tbDesc.Text := qryReceiptReq.FieldByName('DESCR').AsString;
            FieldByName('REASON').AsString := qryReceiptReq.FieldByName('DESCR').AsString;
            neAmount.Value := qryReceiptReq.FieldByName('AMOUNT').AsFloat;
            FieldByName('CREDIT').AsFloat := qryReceiptReq.FieldByName('AMOUNT').AsFloat;
         end
         else
         begin
            FFileId := qryReceiptReq.FieldByName('FILEID').AsString;
            TcxComboBoxProperties(tvLedgerTYPE.Properties).Items.Add('Bill');
            FieldByName('TYPE').AsString := 'Bill';
            FieldByName('REFNO').AsString := '';
            FieldByName('DESCR').AsString := '';
            tvLedgerREFNO.EditValue := Null;
            tvLedgerDESCR.EditValue := Null;
         end;

         if State <> dsInsert then
            Edit;
         Post;
      end;
      if Self.Visible then
      begin
         if tbDesc.Visible then
            tbDesc.SetFocus;
      end;
   end;
   qryMatters.Close;
   Screen.Cursor := crDefault;
end;

procedure TfrmReceipt.SetDefaultMessageData;
begin
   lmsgBody.Clear;
   lmsgBody.Add('<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml">');
   lmsgBody.Add('<head>');
   lmsgBody.Add('<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />');
   lmsgBody.Add('<title>Insight Receipt Requisition</title>');
   lmsgBody.Add('<style type="text/css">');
   lmsgBody.Add('  v\:* { behavior: url(#default#VML); display:inline-block}');
   lmsgBody.Add('</style>');
   lmsgBody.Add('</head>');
   lmsgBody.Add('  <body>');
   lmsgBody.Add('    <h2>Receipt Requisition</h2>');
   lmsgBody.Add('    <p>');
   lmsgBody.Add('      The amount of '+ FloatToStrF(neAmount.Value, ffCurrency, 10, 2) +' has been received from '+tbPayee.Text);
   lmsgBody.Add('    </p>');
   lmsgBody.Add('    <p>');
   lmsgBody.Add('    </p>');

   lmsgBody.Add('    <p>');
   lmsgBody.Add('    Accounts');
   lmsgBody.Add('    </p>');

   lmsgBody.Add('  </body>');
   lmsgBody.Add('</html>');
end;

procedure TfrmReceipt.ClearTransGrid;
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

procedure TfrmReceipt.ClearHeaderControls;
begin
   FCurrentStencilID := -1;
   cbBank.Text := '';
   cbBankClick(nil);
   dtpDate.Date := date;
   tbChqno.Text := '';
   tbRcptnoExit(nil);
   tbPayee.Text := '';
   tbPayeeExit(nil);
   tbDesc.Text := '';
   neAmount.EditValue := 0;
   neAmountExit(nil);
   cmbPrinter.Text := '';
   cmbPrinterChange(nil);
   cbBankImport.Text := '';
   // Clear address edits.
   tbStreet.Text := '';
   tbSuburb.Text := '';
   tbState.Text := '';
   tbPostcode.Text := '';
   tbEmail.Text := '';
   // Clear Bank Details
   tbDrawer.Text := '';
   tbChqBank.Text := '';
   tbBranch.Text := '';
   cbBankImport.ItemIndex := -1;
   edImport.Text := '';
end;


initialization
  TStyleManager.Engine.RegisterStyleHook(TfrmReceipt, TFormStyleHookBackground);
  SetLength(VisualColumnFieldNames, 11);
  VisualColumnFieldNames[0] := 'TYPE';
  VisualColumnFieldNames[1] := 'REFNO';
  VisualColumnFieldNames[2] := 'NSUBBILL_ID';
  VisualColumnFieldNames[3] := 'DESCR';
  VisualColumnFieldNames[4] := 'REASON';
  VisualColumnFieldNames[5] := 'TAXCODE';
  VisualColumnFieldNames[6] := 'CREDIT';
  VisualColumnFieldNames[7] := 'TAX';
  VisualColumnFieldNames[8] := 'DEBIT';
  VisualColumnFieldNames[9] := 'INVOICE';
  VisualColumnFieldNames[10] := 'FILEID';
end.





