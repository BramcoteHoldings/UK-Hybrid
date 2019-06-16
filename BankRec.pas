unit BankRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBGrids, Menus, Buttons,
  ExtCtrls, MemDS, OracleUniProvider, Uni, DBAccess, Variants,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxDropDownEdit, cxButtonEdit, cxMaskEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  cxLookAndFeelPainters, cxButtons, cxContainer, cxLabel, cxMemo,
  cxDBExtLookupComboBox, cxImageComboBox, cxCalendar, cxLookAndFeels, dxCore,
  ppDB, ppDBPipe, ppParameter, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, VCL.Themes, cxNavigator,
  cxDateUtils, ppDesignLayer, dxBar, cxCheckBox, cxGridCustomPopupMenu,
  cxGridPopupMenu, Vcl.ImgList, system.DateUtils, Registry, FMXUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  System.ImageList;

const
  // Transaction types
//  ttCheque = 'C';
//  ttDeposit = 'D';
//  ttMatter = 'M';
//  ttLedger = 'L';
 // Transaction descriptions
//  tdCheque = 'Cheque';
//  tdDeposit = 'Deposit';
//  tdMatter = 'Matter';
//  tdLedger = 'Ledger';

//  DepTypes: Array[0..3] of string = ('C','D','M','L');
//  DepTypeDesc: Array[0..3] of string = ('Cheque','Deposit','Matter','Ledger');

//  DepTypes: Array[0..1] of string = ('C','D');
//  DepTypeDesc: Array[0..1] of string = ('Cheque','Deposit');


  colBANKED = 0;
  colTYPE = 1;
  colREFNO = 2;
  colAMOUNT = 3;
  colCASHBOOK = 4;
  colPRESENTED = 5;
  colSTMTPAGE = 6;
  colDESCR = 7;

  IDX_CHEQUEPRESENT = 6;
  IDX_CHEQUEUNPRESENT = 7;
  IDX_DEPOSITPRESENT = 15;
  IDX_DEPOSITUNPRESENT = 16;

type
  TStatementRecord = record
    Bank : string;
    Currency : string;
    BankAccount : string;
    Banked : TDateTime;
    TransCode : string;
    TransType : string;
    ChequeNo : string;
    Desc : string;
    Amount : currency;
  end;

  ETrustOverdraw = class(Exception);
  TfrmBankRec = class(TForm)
    qryCheque: TUniQuery;
    qryBankRec: TUniQuery;
    dsLedger: TUniDataSource;
    popGrid: TPopupMenu;
    popNewAddition: TMenuItem;
    qryTmp: TUniQuery;
    qryFindCheque: TUniQuery;
    qryFindDeposit: TUniQuery;
    qryAllocInsert: TUniQuery;
    tmrShowReconciled: TTimer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleR: TcxStyle;
    cxStyleG: TcxStyle;
    cxStyleD: TcxStyle;
    OpenDialog: TOpenDialog;
    lblFileName: TcxLabel;
    ppReportBankRec: TppReport;
    plBankRec: TppDBPipeline;
    dsBankRec: TUniDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    Panel1: TPanel;
    cbBank: TComboBox;
    dtpStatementDate: TDateTimePicker;
    Panel2: TPanel;
    dbgrLedger: TcxGrid;
    tvLedger: TcxGridDBTableView;
    tvLedgerBANKED: TcxGridDBColumn;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerAMOUNT: TcxGridDBColumn;
    tvLedgerDESCR: TcxGridDBColumn;
    dbgrLedgerLevel1: TcxGridLevel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    tvCashBook: TcxGridDBTableView;
    dbgrCashBookLevel1: TcxGridLevel;
    dbgrCashBook: TcxGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edStatementBal: TcxCurrencyEdit;
    edCalculatedBal: TcxCurrencyEdit;
    Label4: TLabel;
    edVariance: TcxCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edReceipts: TcxCurrencyEdit;
    edPayments: TcxCurrencyEdit;
    edOpeningBalance: TcxCurrencyEdit;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dsCashbook: TUniDataSource;
    Label8: TLabel;
    qryCalculatedBalance: TUniQuery;
    Label9: TLabel;
    btnFinalize: TdxBarButton;
    bbrnNewAddition: TdxBarButton;
    cmbDRCR: TcxComboBox;
    Label10: TLabel;
    qryPriorReceipts: TUniQuery;
    qryPriorCheques: TUniQuery;
    qryCurrentReceipts: TUniQuery;
    qryCurrentCheques: TUniQuery;
    dtpLastReconciled: TDateTimePicker;
    Label11: TLabel;
    edClosingBalance: TcxCurrencyEdit;
    popPaymentReceipt: TdxBarPopupMenu;
    tbtnPresent: TdxBarButton;
    ilstToolbar: TImageList;
    qryCheques: TUniQuery;
    qryUpdate: TUniSQL;
    dxBarButton2: TdxBarButton;
    tvLedgerDEPOSIT: TcxGridDBColumn;
    tbtnReceiptPresent: TdxBarButton;
    qryDeposits: TUniQuery;
    btnSaveRec: TdxBarButton;
    qryCR_BankRec_Tmp: TUniQuery;
    tvCashBookCREATED: TcxGridDBColumn;
    tvCashBookACCT: TcxGridDBColumn;
    tvCashBookREFNO: TcxGridDBColumn;
    tvCashBookPAYEE: TcxGridDBColumn;
    tvCashBookDESCR: TcxGridDBColumn;
    tvCashBookTYPE: TcxGridDBColumn;
    tvCashBookNOWNER: TcxGridDBColumn;
    tvCashBookCHQAMT: TcxGridDBColumn;
    tvCashBookRCPAMT: TcxGridDBColumn;
    tvCashBookSYSTEM_DATE: TcxGridDBColumn;
    tvCashBookNBANKDEP: TcxGridDBColumn;
    tvCashBookBANKREC_SAVED: TcxGridDBColumn;
    qryCashBook: TUniQuery;
    qryBankRecTotal: TUniQuery;
    Remove1: TMenuItem;
    lblDRCR: TLabel;
    qryAdjustments: TUniQuery;
    edAdjustments: TcxCurrencyEdit;
    Label12: TLabel;
    qryCurrentTrans: TUniQuery;
    Reconcile1: TMenuItem;
    Reconcile2: TMenuItem;
    tvCashBookORIGINAL: TcxGridDBColumn;
    tbtnReceiptReqDel: TdxBarButton;
    tbtnConvertReceiptReq: TdxBarButton;
    lblBankName: TcxLabel;
    edBackdated: TcxCurrencyEdit;
    Label13: TLabel;
    qryBackDated: TUniQuery;
    dxBarButton3: TdxBarButton;
    procedure cbBankClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure qryBankRecAfterInsert(DataSet: TDataSet);
    procedure popEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryBankRecBeforeScroll(DataSet: TDataSet);
    procedure qryBankRecBeforePost(DataSet: TDataSet);
    procedure popGridDatestampClick(Sender: TObject);
    procedure qryBankRecAfterScroll(DataSet: TDataSet);
    procedure btnProcessClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dtpStatementDateChange(Sender: TObject);
    procedure tmrShowReconciledTimer(Sender: TObject);
    procedure qryBankRecREFNOChange(Sender: TField);
    procedure tvLedgerTypeDescPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerREFNOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure dtpDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure edStatementBalPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure bbrnNewAdditionClick(Sender: TObject);
    procedure tbtnPresentClick(Sender: TObject);
    procedure btnFinalizeClick(Sender: TObject);
    procedure popPaymentReceiptPopup(Sender: TObject);
    procedure tbtnReceiptPresentClick(Sender: TObject);
    procedure btnSaveRecClick(Sender: TObject);
    procedure tvCashBookBANKREC_SAVEDGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure dxBarButton2Click(Sender: TObject);
    procedure tvCashBookBANKREC_SAVEDPropertiesEditValueChanged(
      Sender: TObject);
    procedure cmbDRCRPropertiesChange(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edStatementBalPropertiesEditValueChanged(Sender: TObject);
    procedure Reconcile2Click(Sender: TObject);
    procedure popGridPopup(Sender: TObject);
    procedure popNewAdditionClick(Sender: TObject);
    procedure cbBankChange(Sender: TObject);
    procedure tbtnReceiptReqDelClick(Sender: TObject);
    procedure tbtnConvertReceiptReqClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    { Private declarations }
    sAllocType: string;
    BankStatement: string;
    function CreateBankFee: boolean;
    procedure SetRefnoButton;
    procedure ShowReconciled;
    procedure PresentCheque; overload;
    procedure PresentCheque(PresentDate: TDateTime; AOwner: integer); overload;
    procedure UnpresentCheque(AOwner: integer);
    procedure SetPresentButton;
    procedure PopulateGrids;
    procedure BuildBankrecTemp;
  public
    { Public declarations }

  end;

var
  frmBankRec: TfrmBankRec;
  recStatement : TStatementRecord;

implementation

uses
  MiscFunc, AxiomData, Desktop, LSearch, MSearch,glComponentUtil, citfunc,
  bankstatementimp, Vcl.Styles.FormStyleHooks, BankRecAddition, ChequePresent,
  PresentedConfirmation, Receipt;

{$R *.DFM}


procedure TfrmBankRec.cbBankChange(Sender: TObject);
var
   sTmp: string;
begin
   sTmp := SettingLoadString('Reconciliation', 'BankAmount');

   SettingSave('Reconciliation', 'Bank', cbBank.Text);
   SettingSave('Reconciliation', 'BankAmount', VarToStr(edStatementBal.Value));
   SettingSave('Reconciliation', 'BankDRCR', VarToStr(cmbDRCR.EditValue));
   SettingSave('Reconciliation', 'BankDate', DateToStr(dtpStatementDate.Date));

   if sTmp <> '' then
      edStatementBal.Value := StrToCurr(sTmp);
end;

procedure TfrmBankRec.cbBankClick(Sender: TObject);
begin
   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cbBank.Text);//set

   lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');

   dtpLastReconciled.Date := TableDateTime('BANK', 'ACCT', cbBank.Text, 'LAST_RECON_DATE');

   Self.Invalidate;

   PopulateGrids;

{   SQL.Add('SELECT ''DEPOSITUN'' AS GRP, BANKREC.BANKED, BANKREC.DESCR, BANKREC.REFNO AS REFNO, Null, Null, (0-BANKREC.AMOUNT) AS AMOUNT');
   SQL.Add('FROM BANKREC');
   SQL.Add('WHERE BANKREC.BANK = :P_Acct AND BANKREC.TYPE = ''D'' AND ((TRUNC(BANKREC.BANKED) <= :P_DateTo AND RECONDATE IS NULL) OR ');
   SQL.Add('TRUNC(BANKREC.BANKED) < :P_DateTo AND TRUNC(RECONDATE) >= :P_DateTo)');
   SQL.Add('UNION ALL');
   SQL.Add('SELECT distinct ''DEPOSITUN'' AS GRP, BANKDEP.RECONDATE, Null, BANKDEP.NBANKDEP || '' '' AS REFNO, Null, Null, (0-BANKDEP.AMOUNT) AS AMOUNT ');
   SQL.Add('FROM BANKDEP, RECEIPT ');
   SQL.Add('WHERE BANKDEP.ACCT = :P_Acct AND BANKDEP.NBANKDEP = RECEIPT.NBANKDEP AND TRUNC(RECEIPT.SYSTEM_DATE) >= :P_DateTo AND ');
   SQL.Add('TRUNC(BANKDEP.DEPOSIT_DATE) <= :P_DateTo AND TRUNC(BANKDEP.RECONDATE) > :P_DateTo ');
   SQL.Add('UNION ALL');
   SQL.Add('SELECT ''DEPOSITUN'' AS GRP, BANKDEP.RECONDATE, Null, BANKDEP.NBANKDEP || '' '' AS REFNO, Null, Null, (0-BANKDEP.AMOUNT) AS AMOUNT');
   SQL.Add('FROM BANKDEP, RECEIPT');
   SQL.Add('WHERE BANKDEP.ACCT = :P_Acct AND BANKDEP.NBANKDEP = RECEIPT.NBANKDEP AND TRUNC(RECEIPT.SYSTEM_DATE) < :P_DateTo AND ');
   SQL.Add('TRUNC(BANKDEP.DEPOSIT_DATE) >= :P_DateTo AND TRUNC(BANKDEP.RECONDATE) < :P_DateTo');
}
end;

procedure TfrmBankRec.cmbDRCRPropertiesChange(Sender: TObject);
begin
   // 1 Deec 2018 DW this bit had been commented out
  { if not VarIsNull(edStatementBal.EditValue) then
   begin
      if cmbDRCR.Text = 'DR' then
         edStatementBal.Value := 0 - edStatementBal.Value;  // - edCalculatedBal.Value

      edVariance.Value := edStatementBal.Value + edCalculatedBal.Value;
   end;}
   PopulateGrids;
end;

procedure TfrmBankRec.PopulateGrids;
var
  sType,
  lsTrustasOffice: string;
  i: integer;
  cBal,
  cTmp: Currency;
begin
   lsTrustasOffice := SystemString('TRUST_AS_OFFICE');
   try
      //    AES 31/8/2017  Commit delete from bankrec_tmp
      if (dmAxiom.uniInsight.InTransaction = True) then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try
         tvCashBookBANKREC_SAVED.Properties.OnEditValueChanged := nil;
         qryTmp.SQL.Clear;
         qryTmp.SQL.Add('DELETE FROM BANKREC_TMP');
         qryTmp.Prepare;
         qryTmp.ExecSQL;
         dmAxiom.uniInsight.Commit;
      except
         dmAxiom.uniInsight.Rollback;
      end;

      cTmp := 0;
      cBal := 0;

      with qryCalculatedBalance do
      begin
         Close;
         ParamByName('P_DateFrom').AsDate       := Trunc(dtpStatementDate.Date);
         ParamByName('P_Acct').AsString         := cbBank.Text;
         ParamByName('trust').AsString          := TableString('BANK','ACCT', cbBank.Text, 'TRUST');
         // dw 27 Jan 2019
         ParamByName('trustasoffice').AsString  := lsTrustasOffice;
         //ParamByName('trustasoffice').AsString := 'Y';
         Prepare;
         Open;
      end;

      with qryPriorCheques do
      begin
         Close;
         ParamByName('P_DateFrom').AsDate := Trunc(dtpLastReconciled.Date);
         ParamByName('P_Acct').AsString   := cbBank.Text;
         ParamByName('trust').AsString    := TableString('BANK','ACCT', cbBank.Text, 'TRUST');
         ParamByName('trustasoffice').AsString  := lsTrustasOffice;
         Prepare;
         Open;
      end;

      with qryPriorReceipts do
      begin
         Close;
         ParamByName('P_DateFrom').AsDate := Trunc(dtpLastReconciled.Date);
         ParamByName('P_Acct').AsString   := cbBank.Text;
         ParamByName('trust').AsString    := TableString('BANK','ACCT', cbBank.Text, 'TRUST');
         ParamByName('trustasoffice').AsString  := lsTrustasOffice;
         Prepare;
         Open;
      end;
      cBal := qryPriorReceipts.FieldByName('Receipts').AsCurrency - qryPriorCheques.FieldByName('Cheques').AsCurrency;
      edOpeningBalance.Value := cBal;

      cTmp := 0;
      with qryCurrentReceipts do
      begin
         Close;
         ParamByName('P_DateFrom').AsDate := Trunc(dtpLastReconciled.Date) + 1;
         ParamByName('P_DateTo').AsDate   := Trunc(dtpStatementDate.Date);
         ParamByName('P_Acct').AsString   := cbBank.Text;
         ParamByName('trust').AsString    := TableString('BANK','ACCT', cbBank.Text, 'TRUST');
         ParamByName('trustasoffice').AsString  := lsTrustasOffice;
         Prepare;
         Open;
         cTmp := FieldByName('Receipts').AsCurrency;
         edReceipts.Value := cTmp;
         Close;
      end;

      cBal := cBal + cTmp;

      cTmp := 0;
      with qryCurrentCheques do
      begin
         Close;
         ParamByName('P_DateFrom').AsDate := Trunc(dtpLastReconciled.Date) + 1;
         ParamByName('P_DateTo').AsDate   := Trunc(dtpStatementDate.Date);
         ParamByName('P_Acct').AsString   := cbBank.Text;
         ParamByName('trust').AsString    := TableString('BANK','ACCT', cbBank.Text, 'TRUST');
         ParamByName('trustasoffice').AsString  := lsTrustasOffice;
         Prepare;
         Open;
         cTmp := 0 - FieldByName('Cheques').AsCurrency;
         edPayments.Value := cTmp;
         close;
      end;

      cBal := cBal + cTmp;

      edClosingBalance.Value := cBal;

      if cBal < 0 then
         lblDRCR.Caption := 'DR'
      else
         lblDRCR.Caption := 'CR';

      cTmp := 0;
      with qryBankRecTotal do
      begin
         Close;
         ParamByName('bank').AsString := cbBank.Text;
         ParamByName('P_DateTo').AsDate   := Trunc(dtpStatementDate.Date);
//         ParamByName('P_DateFrom').AsDate := Trunc(dtpLastReconciled.Date);
         Prepare;
         Open;
         cTmp := FieldByName('bankrecamt').AsCurrency;
         Close;
      end;

//      cBal := cBal + cTmp;

      cTmp := 0;
      with qryAdjustments do
      begin
         Close;
         ParamByName('P_DateTo').AsDate   := Trunc(dtpStatementDate.Date);
         ParamByName('P_Acct').AsString   := cbBank.Text;
         ParamByName('trust').AsString    := TableString('BANK','ACCT', cbBank.Text, 'TRUST');

         ParamByName('trustasoffice').AsString  := lsTrustasOffice;
         Prepare;
         Open;
         cTmp := FieldByName('adj_total').AsCurrency;
         Close;
      end;
      edAdjustments.Value := cTmp;

      cBal := cBal + (cTmp);

      cTmp := 0;
      with qryBackDated do
      begin
         Close;
         ParamByName('P_DateTo').AsDate   := Trunc(dtpStatementDate.Date);
         ParamByName('P_Acct').AsString   := cbBank.Text;
         ParamByName('trust').AsString    := TableString('BANK','ACCT', cbBank.Text, 'TRUST');

         ParamByName('trustasoffice').AsString  := lsTrustasOffice;
         Prepare;
         Open;
         cTmp := FieldByName('amount').AsCurrency;
         Close;
      end;
      edBackdated.Value := cTmp;

      cBal := cBal + (cTmp);

      if (cbBank.Text <> '') then
      begin
         BuildBankrecTemp;
      end;

      cTmp := 0;
      with qryCurrentTrans do
      begin
         close;
         Open;
         cTmp := FieldByName('tot_trans').AsCurrency;
         Close;
      end;

      // AES 12/10/2017  don't need to add adjustments.
      cBal := cBal {+ cTmp};
      edCalculatedBal.Value := cBal;

      if (VarIsNull(edStatementBal.EditValue) = False) then
      begin
         if (cmbDRCR.Text = 'DR') then
         begin
            edVariance.Value := (edStatementBal.Value * -1) - edCalculatedBal.Value;
         end
         ELSE
            edVariance.Value := edStatementBal.Value - edCalculatedBal.Value;
      end;

      with qryBankRec do
      begin
         Close;
         ParamByName('bank').AsString := cbBank.Text;
         ParamByName('P_DateTo').AsDate   := Trunc(dtpStatementDate.Date);
//         ParamByName('P_DateFrom').AsDate := Trunc(dtpLastReconciled.Date);
         Prepare;
         Open;
      end;
   finally
      tvCashBookBANKREC_SAVED.Properties.OnEditValueChanged := tvCashBookBANKREC_SAVEDPropertiesEditValueChanged;
      //    AES 31/8/2017  Close all queries once finished.
      qryCalculatedBalance.Close;
      qryCurrentTrans.Close;
      qryAdjustments.Close;
      qryBankRecTotal.Close;
      qryCurrentCheques.Close;
      qryCurrentReceipts.Close;
      qryPriorReceipts.Close;
      qryPriorCheques.Close;
   end;
end;

procedure TfrmBankRec.bbrnNewAdditionClick(Sender: TObject);
var
   lfrmBankRecAddition: TfrmBankRecAddition;
   cTemp: Currency;
begin
   cTemp := 0;
   lfrmBankRecAddition := TfrmBankRecAddition.Create(Self);
   lfrmBankRecAddition.DefBank := cbBank.Text;
   if lfrmBankRecAddition.ShowModal = mrOk then
   begin
      qryBankRec.Close;
      qryBankRec.Open;

      with qryBankRecTotal do
      begin
         Close;
         ParamByName('bank').AsString := cbBank.Text;
         Prepare;
         Open;
         cTemp := FieldByName('bankrecamt').AsCurrency;
         Close;
      end;

      edCalculatedBal.Value := edCalculatedBal.Value + cTemp;

      if not VarIsNull(edStatementBal.EditValue) then
      begin
         if (cmbDRCR.Text = 'DR') then
            edVariance.Value := (edStatementBal.Value * -1) - edCalculatedBal.Value
         ELSE
            edVariance.Value := edStatementBal.Value - edCalculatedBal.Value;
      end;
   end;
end;

procedure TfrmBankRec.BuildBankrecTemp;
var
   lsTreatTrustasOffice: string;
begin
   lsTreatTrustasOffice := SystemString('TRUST_AS_OFFICE');
   with qryCR_BankRec_Tmp do
   begin
     Close;
     SQL.Text := 'INSERT INTO BANKREC_TMP (ORIGINAL, CREATED, ACCT, REFNO,'+
                                          'PAYEE, DESCR, TRAN_TYPE, NOWNER, AMOUNT, '+
                                          'CHQAMT, RCPAMT, SYSTEM_DATE, NBANKDEP, BANKREC_SAVED)'+
                 'SELECT   *  '+
                 '    FROM (SELECT ''CHEQUE'' AS original, created, acct, chqno AS refno, payee,'+
                 '         descr, TYPE as tran_type, ncheque AS nowner, (0 - amount) AS amount,'+
                 '         amount AS chqamt, NULL AS rcpamt, system_date, 0 as nbankdep,'+
                 '         bankrec_saved'+
                 '    FROM cheque '+
                 '   WHERE ACCT = :Bank '+
                 '     AND reversed = ''N'' ';
                 if lsTreatTrustasOffice = 'Z' then
                 begin
                    SQL.Text := SQL.Text +
                 '     AND CASE WHEN ((:trust in (''T'', ''I'')) AND ((TRUNC (system_date) <= :p_dateto) AND (presented IS NULL or trunc(presented) > :p_dateto))) THEN 1 '+
                 '              WHEN ((:trust not in (''T'', ''I'')) AND ((TRUNC (created) <= :p_dateto) AND (presented IS NULL or trunc(presented) > :p_dateto))) THEN 1 ';
                 end
                 else
                    SQL.Text := SQL.Text +
                 '     AND CASE WHEN ((:trust in (''T'', ''I'')) AND ((TRUNC (created) <= :p_dateto) AND (presented IS NULL or trunc(presented) > :p_dateto))) THEN 1 '+
                 '              WHEN ((:trust not in (''T'', ''I'')) AND ((TRUNC (created) <= :p_dateto) AND (presented IS NULL or trunc(presented) > :p_dateto))) THEN 1 ';
                 SQL.Text := SQL.Text +
                 '              ELSE 0 END = 1 '+
//                 '     AND TRUNC (created) <= :p_dateto  '+
                 '  UNION  '+
                 '  SELECT ''DEPOSIT'' AS original, b.deposit_date, b.acct, to_char(nbankdep) AS refno, '+
                 '         ''Deposit'' AS payee, '''' descr, ''D'' as tran_typeabc, b.nbankdep AS nowner, '+
                 '         b.amount, NULL AS chqamt, b.amount AS rcpamt, b.system_date, b.nbankdep, '+
                 '         b.bankrec_saved '+
                 '    FROM bankdep b '+
                 '   WHERE b.acct = :bank  ';
                 // 10 Mar 2019 to display all transactionsabc

                 if lsTreatTrustasOffice = 'Z' then
                 begin
                   SQL.Text := SQL.Text +
                 '     AND CASE WHEN ((:trust in (''T'', ''I'')) AND (TRUNC (b.system_date) <= :p_dateto)) THEN 1 '+
                 '              WHEN ((:trust <> ''T'') AND (TRUNC (b.deposit_date) <= :p_dateto)) THEN 1 ';
                 end
                 else
                    SQL.Text := SQL.Text +
                 '     AND CASE WHEN ((:trust in (''T'', ''I'')) AND (TRUNC (b.deposit_date) <= :p_dateto)) THEN 1 '+
                 '               WHEN ((:trust not in (''T'', ''I'')) AND (TRUNC (b.deposit_date) <= :p_dateto)) THEN 1 ';
                 SQL.Text := SQL.Text +
                 '              ELSE 0 END = 1 '+
//                 '     AND TRUNC (r.created) <= :p_dateto  '+
                 '     AND b.reconciled = ''N'' '+
                 '     AND b.acct = :bank '+
                 '   UNION '+
                 '   SELECT ''RECEIPT REQ'' AS original, r.exp_date, r.bank, to_char(NRECEIPTREQ) AS refno, '+
                 '            ''Receipt Requisition - ''||r.payor AS payee, r.descr, null, r.nreceipt AS nowner,'+
                 '            r.amount, NULL AS chqamt, r.amount AS rcpamt, r.system_date, 0,'+
                 '            bankrec_saved '+
                 '     FROM receipt_req r '+
                 '   WHERE r.bank = :bank '+
                 '      AND r.nreceipt is null '+
{                 'UNION '+
                 '  SELECT '''+dmAxiom.UserID+''' AS empcode, ''DEPOSIT1'' AS original, r.created, r.acct, '+
                 '         r.rcptno AS refno, payor AS payee, descr, TYPE AS tran_type, '+
                 '         r.nbankdep AS nowner, r.amount, NULL AS chqamt, '+
                 '         r.amount AS rcpamt, r.system_date, b.nbankdep,  '+
                 '         b.bankrec_saved  '+
                 '    FROM bankdep b, receipt r  '+
                 '   WHERE b.acct = :bank '+
                 '     AND b.nbankdep = r.nbankdep '+
                 '     AND CASE '+
                 '            WHEN (    (:trust IN (''T'', ''I''))  '+
                 '                  AND (TRUNC (r.system_date) <= :p_dateto)  '+
                 '                 ) '+
                 '               THEN 1 '+
                 '            WHEN ((:trust <> ''T'') AND (TRUNC (r.created) <= :p_dateto)) '+
                 '               THEN 1 '+
                 '            ELSE 0 '+
                 '         END = 1 '+
                 '     AND b.reconciled = ''N'' '+
                 '     AND b.acct = :bank  '+
                 '     AND b.deposit_date > :p_dateto'+  }
                 ') '+
//                 ' WHERE acct = :bank  '+
                 ' ORDER BY created DESC  ';

     if (dmAxiom.RunningIde) then
         qryCR_BankRec_Tmp.SQL.SaveToFile('C:\tmp\qInsightBankReq.sql');

     ParamByName('bank').AsString := cbBank.Text;
     ParamByName('p_dateto').AsDate := dtpStatementDate.Date;
     ParamByName('trust').AsString    := TableString('BANK','ACCT', cbBank.Text, 'TRUST');
     Prepare;
     Execute;
   end;

   with qryCashBook do
   begin
      close;
//      ParamByName('EMPCODE').AsString := dmAxiom.UserID;
      Open;
   end;
end;

procedure TfrmBankRec.btnFinalizeClick(Sender: TObject);
var
   Row: integer;
   ACheqAmt,
   ARcptAmt,
   ANOwner,
   ANBankDep,
   ADRecondate: variant;
begin
   if (edVariance.Value <> 0) then
   begin
      MsgInfo('Bank Reconciliation does not reconcile. Please finalise the reconciliation or save the current state and return to it later.')
   end
   else
   begin
      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;

         dmAxiom.uniInsight.StartTransaction;
         tvCashBook.BeginUpdate();
         for Row := 0 to tvCashBook.DataController.RecordCount - 1 do
         begin
            tvCashBook.DataController.FocusedRowIndex := Row;
            ACheqAmt    := tvCashBook.DataController.GetValue(Row, tvCashBookCHQAMT.Index);
            ARcptAmt    := tvCashBook.DataController.GetValue(Row, tvCashBookRCPAMT.Index);
            ANOwner     := tvCashBook.DataController.GetValue(Row, tvCashBookNOWNER.Index);
            ANBankDep   := tvCashBook.DataController.GetValue(Row, tvCashBookNBANKDEP.Index);
            ADRecondate := tvCashBook.DataController.GetValue(Row, tvCashBookCREATED.Index);
            if tvCashBook.DataController.GetValue(Row, tvCashBookBANKREC_SAVED.Index) = 'Y' then
            begin
               if (ACheqAmt > 0) then
               begin
                  with qryUpdate do
                  begin
                     SQL.Clear;
                     SQL.Add('UPDATE CHEQUE SET PRESENTED = :presented, RECONDATE = :recondate WHERE NCHEQUE = :ncheque');
                     ParamByName('presented').AsDateTime := dtpStatementDate.DateTime;
                     ParamByName('recondate').AsDateTime := dtpStatementDate.DateTime;
                     ParamByName('ncheque').AsInteger := integer(ANOwner);
                     Execute;
                  end;
               end;
               if (ARcptAmt > 0) then
               begin
                  with qryUpdate do
                  begin
                     SQL.Clear;
                     SQL.Add('UPDATE BANKDEP');
                     SQL.Add('SET RECONDATE = :RECONDATE, DEPOSIT_DATE =:DEPOSIT_DATE, RECONCILED = ''Y''');
                     SQL.Add('WHERE ACCT = :ACCT');
                     SQL.Add('  AND NBANKDEP = :NBANKDEP');
                     ParamByName('RECONDATE').AsDateTime := dtpStatementDate.DateTime;
                     ParamByName('DEPOSIT_DATE').AsDateTime := dtpStatementDate.DateTime;
                     ParamByName('ACCT').AsString := cbBank.Text;
                     ParamByName('NBANKDEP').AsInteger := ANBankDep;
                     Execute;
                  end;
               end;

             {  with qryUpdate do
               begin
                  SQL.Clear;
                  SQL.Add('UPDATE BANKREC');
                  SQL.Add('SET RECONDATE = :RECONDATE');
                  SQL.Add('WHERE BANK = :ACCT');
                  SQL.Add('  AND BANKED <= :BANKED');
                  ParamByName('RECONDATE').AsDateTime := dtpStatementDate.DateTime;
                  ParamByName('BANKED').AsDateTime := dtpStatementDate.DateTime;
                  ParamByName('ACCT').AsString := cbBank.Text;
                  Execute;
               end; }
            end;
         end;
      finally
         with qryUpdate do
         begin
            SQL.Clear;
            SQL.Add('UPDATE BANK SET LAST_RECON_DATE = :recondate WHERE ACCT = :acct');
            ParamByName('ACCT').AsString := cbBank.Text;
            ParamByName('recondate').AsDateTime := dtpStatementDate.DateTime;
            Execute;
         end;
         dtpLastReconciled.DateTime := dtpStatementDate.DateTime;

         dmAxiom.uniInsight.Commit;
         tvCashBook.EndUpdate();
         MsgInfo('Bank reconciliation Finalized');
         PopulateGrids;
      end;
   end;
end;

procedure TfrmBankRec.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{  if not(qryBankRec.UpdatesPending) or (MessageDlg('Are you sure you want to cancel the updates to Bank Reconciliation?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    qryBankRec.CancelUpdates;
    CanClose := True;
  end
  else
    CanClose := False; }
end;


procedure TfrmBankRec.btnOKClick(Sender: TObject);
begin
  if qryBankRec.Modified then
    qryBankRec.Post;

  if qryBankRec.UpdatesPending then
    qryBankRec.ApplyUpdates;

  Self.Close;
//  RemoveFromDesktop(Self);
end;


function TfrmBankRec.CreateBankFee: boolean;
var
  sLedger: string;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
   // Creates a cheque direct debit bank fee for this entry
   glComponentSetup := dmAxiom.getGlComponents;
   try
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      // Create the Cheque entry
//       14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
      qryCheque.ParamByName('NCHEQUE').AsInteger := GetSequenceNumber('SQNC_NCHEQUE');
//      qryCheque.ParamByName('CREATED').AsDateTime := dtpDate.Date;
      qryCheque.ParamByName('CHQNO').AsString := 'BP' + IntToStr(qryCheque.ParamByName('NCHEQUE').AsInteger);
      qryCheque.ParamByName('PRESENTED').AsDateTime := qryBankRec.FieldByName('BANKED').AsDateTime;
      qryCheque.ParamByName('ACCT').AsString := cbBank.Text;
      qryCheque.ParamByName('APPROVAL').AsString := dmAxiom.UserID;
      qryCheque.ParamByName('PAYEE').AsString := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
      qryCheque.ParamByName('DESCR').AsString := qryBankRec.FieldByName('DESCR').AsString;
      qryCheque.ParamByName('AMOUNT').AsFloat := qryBankRec.FieldByName('AMOUNT').AsCurrency;
      qryCheque.ParamByName('TRUST').AsString := TableString('BANK', 'ACCT', cbBank.Text, 'TRUST');

      qryCheque.ExecSQL;

      // Create Cash At Bank Entry

      {post components}
      sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('BANK', 'ACCT', cbBank.Text, 'CASH_AT_BANK'),'',true,'');


      PostLedger(qryCheque.ParamByName('CREATED').AsDateTime
        , qryBankRec.FieldByName('AMOUNT').AsCurrency
        , 0
        , qryCheque.ParamByName('CHQNO').AsString
        , 'CHEQUE'
        , qryCheque.ParamByName('NCHEQUE').AsInteger
        , qryCheque.ParamByName('DESCR').AsString
        , sLedgerKey
        , ''
        , -1
        , ''
        , '');

      // Update the bank balance
      with qryTmp do
      begin
        SQL.Clear;
        SQL.Add('UPDATE BANK SET BALANCE = (BALANCE + ' + CurrToStrF(qryBankRec.FieldByName('AMOUNT').AsCurrency, ffFixed, 15) + '), CL_BALANCE = (CL_BALANCE + ' + CurrToStrF(qryBankRec.FieldByName('AMOUNT').AsCurrency, ffFixed, 15) + ') ');
        SQL.Add('WHERE ACCT = ' + QuotedStr(cbBank.Text));
        ExecSQL;
      end;

      // Create the disbursement ledger entry
//      if qryBankRec.FieldByName('TYPE').AsString = tdLedger then
//        sLedger := qryBankRec.FieldByName('REFNO').AsString
//      else
        sLedger := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR');

      {post components}
      sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedger,'',true,'');

{      PostLedger(dtpDate.Date
        , 0 - qryBankRec.FieldByName('AMOUNT').AsCurrency
        , 0
        , qryCheque.ParamByName('CHQNO').AsString
        , 'CHEQUE'
        , qryCheque.ParamByName('NCHEQUE').AsInteger
        , qryBankRec.FieldByName('DESCR').AsString
        , sLedgerKey
        , ''
        , -1
        , ''
        , '');           }

      // If it is a matter based disbursment, create the matter ledger entry
 {     if qryBankRec.FieldByName('TYPE').AsString = tdMatter then
      begin
        with qryAllocInsert do
        begin
          ParamByName('AMOUNT').AsFloat := 0 - qryBankRec.FieldByName('AMOUNT').AsCurrency;
          ParamByName('ACCT').AsString := qryCheque.ParamByName('ACCT').AsString;
          ParamByName('CREATED').AsDateTime := qryCheque.ParamByName('CREATED').AsDateTime;
          ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryBankRec.FieldByName('REFNO').AsString, 'NMATTER');
          ParamByName('REFNO').AsString := qryCheque.ParamByName('CHQNO').AsString;
          ParamByName('PAYER').AsString := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
          ParamByName('DESCR').AsString := qryBankRec.FieldByName('DESCR').AsString;
          ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryBankRec.FieldByName('REFNO').AsString, 'NCLIENT');
          ParamByName('NCHEQUE').AsInteger := qryCheque.ParamByName('NCHEQUE').AsInteger;
          ParamByName('FILEID').AsString := qryBankRec.FieldByName('REFNO').AsString;
          ParamByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
          ParamByName('CLIENT_NAME').AsString := MatterString(qryBankRec.FieldByName('REFNO').AsString, 'TITLE');
          ParamByName('MATTER_DESC').AsString := MatterString(qryBankRec.FieldByName('REFNO').AsString, 'SHORTDESCR');

          ExecSQL;
          MatterUpdate(ParamByName('NMATTER').AsInteger, 'UNBILL_DISB', qryBankRec.FieldByName('AMOUNT').AsCurrency);
        end;

      end; }

      CheckLedgerTotal;

      dmAxiom.uniInsight.Commit;
      result:= True;
   except
     on E: Exception do
     begin
       dmAxiom.uniInsight.Rollback;
       MsgErr('Bank Payment posting failed:' + chr(13) + chr(13) + E.Message);
       result:= False;
     end;
   end;
end;


procedure TfrmBankRec.edStatementBalPropertiesEditValueChanged(Sender: TObject);
begin
   if (VarIsNull(edStatementBal.EditValue) = False) then
   begin
      if (cmbDRCR.Text = 'DR') then
         edVariance.Value := (edStatementBal.Value * -1) - edCalculatedBal.Value
      else
         edVariance.Value := edStatementBal.Value - edCalculatedBal.Value;
   end;
end;

procedure TfrmBankRec.edStatementBalPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if (VarIsNull(edStatementBal.EditValue) = False) then
   begin
      if (cmbDRCR.Text = 'DR') then
         edVariance.Value := (0 - edStatementBal.Value) + edCalculatedBal.Value
      else
         edVariance.Value := edStatementBal.Value - edCalculatedBal.Value;
   end;
end;

procedure TfrmBankRec.qryBankRecAfterInsert(DataSet: TDataSet);
begin
  if sAllocType = '' then
    qryBankRec.FieldByName('TYPE').AsString := tdCheque
  else
    qryBankRec.FieldByName('TYPE').AsString := sAllocType;
  qryBankRec.FieldByName('BANKSTATEMENT').AsString := BankStatement;
  if qryBankRec.FieldByName('BANKED').Value = Null then
//    qryBankRec.FieldByName('BANKED').AsDateTime := Trunc(dtpDate.Date);
  qryBankRec.FieldByName('BANK').AsString := cbBank.Text;
//  dbgrLedger.SelectedIndex := colREFNO;
end;


procedure TfrmBankRec.popEditClick(Sender: TObject);
begin
   if not qryBankRec.IsEmpty then
      qryBankRec.Edit;
end;


procedure TfrmBankRec.FormDestroy(Sender: TObject);
begin
   try
      if tmrShowReconciled.Enabled = True then
         tmrShowReconciled.Enabled := False;
   finally
       tmrShowReconciled.Free;
   end;
end;

procedure TfrmBankRec.FormShow(Sender: TObject);
var
   sTmp: string;
begin
   try
      sAllocType := '';
      BankStatement := '';
      dtpStatementDate.DateTime := Now;
      tmrShowReconciled.Enabled := False;

      AddBanks(cbBank, '');
      cbBank.ItemIndex := cbBank.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));

      sTmp := SettingLoadString('Reconciliation', 'Bank');

      if sTmp <> '' then
         cbBank.ItemIndex := cbBank.Items.IndexOf(sTmp);

      sTmp := SettingLoadString('Reconciliation', 'BankAmount');

      if sTmp <> '' then
         edStatementBal.Value := StrToCurr(sTmp);

      sTmp := SettingLoadString('Reconciliation', 'BankDRCR');

      if sTmp <> '' then
         cmbDRCR.EditValue := sTmp;


      sTmp := SettingLoadString('Reconciliation', 'BankDate');

      if sTmp <> '' then
         dtpStatementDate.Date := StrToDate(sTmp);
   finally
      cbBank.OnClick(Self);
   end;
end;

procedure TfrmBankRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SettingSave('Reconciliation', 'Bank', cbBank.Text);
   SettingSave('Reconciliation', 'BankAmount', VarToStr(edStatementBal.Value));
   SettingSave('Reconciliation', 'BankDRCR', VarToStr(cmbDRCR.EditValue));
   SettingSave('Reconciliation', 'BankDate', DateToStr(dtpStatementDate.Date));
   qryBankRec.Close;
   RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmBankRec.qryBankRecBeforeScroll(DataSet: TDataSet);
begin
  sAllocType := qryBankRec.FieldByName('TYPE').AsString;
  BankStatement := qryBankRec.FieldByName('BANKSTATEMENT').AsString;
end;

procedure TfrmBankRec.qryBankRecBeforePost(DataSet: TDataSet);
begin
//   if qryBankRec.FieldByName('TypeDesc').AsString = tdCheque then
//      qryBankRec.FieldByName('TYPE').AsString := ttCheque
//   else if qryBankRec.FieldByName('TypeDesc').AsString = tdDeposit then
//      qryBankRec.FieldByName('TYPE').AsString := ttDeposit;

//   else if qryBankRec.FieldByName('TypeDesc').AsString = tdLedger then
//      qryBankRec.FieldByName('TYPE').AsString := ttLedger
//   else if qryBankRec.FieldByName('TypeDesc').AsString = tdMatter then
//      qryBankRec.FieldByName('TYPE').AsString := ttMatter;
end;

procedure TfrmBankRec.popGridDateStampClick(Sender: TObject);
begin
  if not qryBankrec.IsEmpty then
  begin
    if not qryBankrec.Modified then
      qryBankrec.Edit;
//    qryBankrec.FieldByName('BANKED').AsDateTime := Trunc(dtpDate.Date);
    if not qryBankRec.FieldByName('RECONDATE').IsNull then
    begin
//      qryBankrec.FieldByName('RECONDATE').AsDateTime := Trunc(dtpDate.Date);
//      qryBankrec.FieldByName('PresentedDate').AsDateTime := dtpDate.Date;
      with qryTmp do
      begin
        SQL.Text := 'UPDATE CHEQUE SET PRESENTED = :Presented WHERE ACCT = ' + QuotedStr(cbBank.Text) + ' AND CHQNO = ' + QuotedStr(qryBankRec.FieldByName('REFNO').AsString);
//        ParamByName('Presented').AsDateTime := Trunc(dtpDate.Date);
        ExecSQL;
      end;
    end;
  end;
end;

procedure TfrmBankRec.popGridPopup(Sender: TObject);
begin
   popGrid.Items[1].Enabled := (tvLedger.Controller.SelectedRowCount > 0);
   popGrid.Items[3].Enabled := (tvLedger.Controller.SelectedRowCount > 0);
end;

procedure TfrmBankRec.popNewAdditionClick(Sender: TObject);
begin
   bbrnNewAddition.Click;
end;

procedure TfrmBankRec.popPaymentReceiptPopup(Sender: TObject);
begin
   tbtnPresent.Enabled           := (VarIsNull(tvCashBookCHQAMT.EditValue) = False);
   tbtnReceiptPresent.Enabled    := VarIsNull(tvCashBookCHQAMT.EditValue);
   tbtnReceiptReqDel.Enabled     := tvCashBookORIGINAL.EditValue = 'RECEIPT REQ';
   tbtnConvertReceiptReq.Enabled := tvCashBookORIGINAL.EditValue = 'RECEIPT REQ';
end;

procedure TfrmBankRec.qryBankRecAfterScroll(DataSet: TDataSet);
begin
   SetRefnoButton;
end;

procedure TfrmBankRec.SetRefnoButton;
begin
//   if (qryBankRec.FieldByName('TYPE').AsString = tdLedger) or
//      (qryBankRec.FieldByName('TYPE').AsString = tdMatter) then
//      TcxButtonEditProperties(tvLedgerREFNO.Properties).Buttons.Items[0].Visible := True
//   else
      TcxButtonEditProperties(tvLedgerREFNO.Properties).Buttons.Items[0].Visible := False;
end;

procedure TfrmBankRec.btnProcessClick(Sender: TObject);
var
  bGetNext: Boolean;
  dChequeAmount, dDepositAmount: Double;
  dtPresentedDate: TDateTime;
begin
end;

procedure TfrmBankRec.btnSaveRecClick(Sender: TObject);
var
   Row: integer;
   ACheqAmt,
   ARcptAmt,
   ANOwner,
   ANBankDep: variant;
   ARecValue: string;
   ASaveRec: string;
begin
   try
      tvCashBook.BeginUpdate();
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;

      dmAxiom.uniInsight.StartTransaction;
      for Row := 0 to tvCashBook.DataController.RecordCount - 1 do
      begin
         tvCashBook.DataController.FocusedRowIndex := Row;
         ACheqAmt := tvCashBook.DataController.GetValue(Row, tvCashBookCHQAMT.Index);
         ARcptAmt := tvCashBook.DataController.GetValue(Row, tvCashBookRCPAMT.Index);
         ANOwner := tvCashBook.DataController.GetValue(Row, tvCashBookNOWNER.Index);
         ANBankDep := tvCashBook.DataController.GetValue(Row, tvCashBookNBANKDEP.Index);
         ARecValue := (tvCashBook.DataController.GetValue(Row, tvCashBookBANKREC_SAVED.Index));
         if ARecValue = 'Y' then
            ASaveRec := 'Y'
         else
            ASaveRec := 'N';

//         if (tvCashBook.DataController.GetValue(Row, tvCashBookBANKREC_SAVED.Index) = 'Y') then
//         begin
            if (ACheqAmt > 0) then
            begin
               with qryUpdate do
               begin
                  SQL.Clear;
                  SQL.Add('UPDATE CHEQUE ');
                  SQL.Add('SET BANKREC_SAVED = :pbankrec_saved ');
                  SQL.Add('WHERE NCHEQUE = :ncheque ');
                  ParamByName('pbankrec_saved').AsString := ASaveRec;
                  ParamByName('ncheque').AsInteger := integer(ANOwner);
                  Execute;
               end;
            end;
            if (ARcptAmt > 0) then
            begin
               with qryUpdate do
               begin
                  SQL.Clear;
                  SQL.Add('UPDATE BANKDEP');
                  SQL.Add('SET BANKREC_SAVED = :pBANKREC_SAVED');
                  SQL.Add('WHERE ACCT = :ACCT');
                  SQL.Add('  AND NBANKDEP = :NBANKDEP');
                  ParamByName('pBANKREC_SAVED').AsString := ASaveRec;
                  ParamByName('ACCT').AsString := cbBank.Text;
                  ParamByName('NBANKDEP').AsInteger := integer(ANOwner);
                  Execute;
               end;
            end;
//         end;
      end;
   finally
      dmAxiom.uniInsight.Commit;
      tvCashBook.EndUpdate();
   end;
end;

procedure TfrmBankRec.tmrShowReconciledTimer(Sender: TObject);
begin
//  tmrShowReconciled.Enabled := False;
  ShowReconciled;
end;

procedure TfrmBankRec.ShowReconciled;
begin
   qryCashbook.Close;
   qryCashbook.ParamByName('bank').AsString := cbBank.Text;
   qryCashbook.Open;
end;

procedure TfrmBankRec.dtpStatementDateChange(Sender: TObject);
begin
//  tmrShowReconciled.Enabled := True;
   PopulateGrids;
end;


procedure TfrmBankRec.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmBankRec.dxBarButton2Click(Sender: TObject);
begin
   PopulateGrids;
end;

procedure TfrmBankRec.dxBarButton3Click(Sender: TObject);
var
  regAxiom: TRegistry;
  sNetworkDir,
  OldDir,
  DocErrMsg,
  sParams: string;
begin
   try
      OldDir := GetCurrentDir;
      SetCurrentDir(ExtractFilePath(Application.EXEName));

      regAxiom := TRegistry.Create;
      regAxiom.RootKey := HKEY_CURRENT_USER;

      if regAxiom.OpenKey(dmAxiom.RegistryRoot, False) then
         sNetworkDir := regAxiom.ReadString('NetworkDir');
      if sNetworkDir = '' then
         sNetworkDir := ExtractFilePath(Application.EXEName);
      if FileExists(sNetworkDir + 'Reports\BANKRECONCILIATION.EXE') then
      begin
         sParams := '/FD'+DateToStr(dtpLastReconciled.Date)+' /TD'+DateToStr(dtpStatementDate.Date)+
                    ' /BB'+CurrToStr(edStatementBal.Value)+' /BA'+cbBank.Text + ' /DR'+cmbDRCR.EditValue;
         ExecuteFile(sNetworkDir + 'Reports\BANKRECONCILIATION.EXE', sParams, '', 0,DocErrMsg);
      end
      else
         ExecuteFile(sNetworkDir + 'Reports\Reconciliation2.EXE', dmAxiom.UserID, '', SW_SHOW, DocErrMsg);
   finally
      regAxiom.Free;
      SetCurrentDir(OldDir);
   end;
end;

procedure TfrmBankRec.tbtnConvertReceiptReqClick(Sender: TObject);
begin
   if tvCashBook.Controller.SelectedRowCount = 1 then
   begin
      TfrmReceipt.Create(Self).AutoReceiptBankRec(tvCashBookREFNO.EditValue, cbBank.Text);
   end;
end;

procedure TfrmBankRec.tbtnPresentClick(Sender: TObject);
var
   dtDepositDate: TDateTime;
begin
   if VarIsNull(tvCashBookCHQAMT.EditValue) = False then
   begin
      case tbtnPresent.ImageIndex of
        IDX_CHEQUEPRESENT:
        begin
          with TfrmPresentedConf.Create(Self) do
          begin
            Caption := 'Cheque Present (Cheque No: ' + tvCashBookREFNO.EditValue + ')';
            if (VarIsNull(tvCashBookCHQAMT.EditValue) = True) then
               Amount := tvCashBookRCPAMT.EditValue
            else
               Amount := tvCashBookCHQAMT.EditValue;
            dtpDepositDate.DateTime :=  tvCashBookCREATED.EditValue;
            dtDepositDate := tvCashBookCREATED.EditValue;  // Now - 1;
            Case DayOfTheWeek(dtDepositDate) of
               DaySaturday: dtDepositDate := dtDepositDate - 1;
               DaySunday: dtDepositDate := dtDepositDate - 2;
            End;

            dtpPresentedDate.Date := dtpStatementDate.Date;  // dtDepositDate;
            if ShowModal = mrOk then
            begin
              dtDepositDate := dtpPresentedDate.Date;
              if PostIntoLockedPeriod(dtDepositDate) in [prNotLocked, prOKToProceed] then
              begin
                PresentCheque(dtDepositDate, tvCashBookNOWNER.EditValue);
              end
            end
          end
        end;
        IDX_CHEQUEUNPRESENT:
        begin
          if PostIntoLockedPeriod(qryCheques.FieldByName('PRESENTED').AsDateTime) in [prNotLocked, prOKToProceed] then
          begin
            UnpresentCheque(tvCashBookNOWNER.EditValue);
          end
        end;
      end;
//      SetPresentButton();
      qryCashbook.Refresh;
   end;
end;

procedure TfrmBankRec.tbtnReceiptPresentClick(Sender: TObject);
begin
   qryDeposits.close;
   qryDeposits.ParamByName('nbankdep').AsInteger := tvCashBookNBANKDEP.EditValue;
   qryDeposits.ParamByName('bank').AsString := cbBank.Text;
   qryDeposits.Open;
   case tbtnReceiptPresent.ImageIndex of
         IDX_DEPOSITPRESENT:
         begin
            with TfrmPresentedConf.Create(Self) do
            begin
              Caption := 'Bank Deposit Presentation...';
              Amount := tvCashBookRCPAMT.EditValue;
              dtpDepositDate.DateTime := qryDeposits.FieldByName('DEPOSIT_DATE').AsDateTime;
              dtpPresentedDate.DateTime := qryDeposits.FieldByName('DEPOSIT_DATE').AsDateTime;
              if ShowModal = mrOk then
              begin
                qryTmp.SQL.Clear;
                qryTmp.SQL.Add('UPDATE BANKDEP');
                qryTmp.SQL.Add('SET RECONDATE = :RECONDATE, DEPOSIT_DATE =:DEPOSIT_DATE, RECONCILED = ''Y''');
                qryTmp.SQL.Add('WHERE ACCT = :ACCT');
                qryTmp.SQL.Add('  AND NBANKDEP = :NBANKDEP');
                qryTmp.ParamByName('RECONDATE').AsDateTime := dtpPresentedDate.DateTime;
                qryTmp.ParamByName('DEPOSIT_DATE').AsDateTime := dtpDepositDate.DateTime;
                qryTmp.ParamByName('ACCT').AsString := qryDeposits.FieldByName('ACCT').AsString;
                qryTmp.ParamByName('NBANKDEP').AsString := qryDeposits.FieldByName('NBANKDEP').AsString;
                qryTmp.ExecSQL;
              end;
            end;
         end;
         IDX_DEPOSITUNPRESENT:
         begin
            // Unreconcile this deposit
            qryTmp.SQL.Clear;
            qryTmp.SQL.Add('UPDATE BANKDEP');
            qryTmp.SQL.Add('SET RECONDATE = NULL, RECONCILED = ''N''');
            qryTmp.SQL.Add('WHERE ACCT = :ACCT');
            qryTmp.SQL.Add('  AND NBANKDEP = :NBANKDEP');
            qryTmp.ParamByName('ACCT').AsString := qryDeposits.FieldByName('ACCT').AsString;
            qryTmp.ParamByName('NBANKDEP').AsString := qryDeposits.FieldByName('NBANKDEP').AsString;
            qryTmp.ExecSQL;

            qryTmp.SQL.Clear;
            qryTmp.SQL.Add('UPDATE BANKREC');
            qryTmp.SQL.Add('SET RECONDATE = NULL');
            qryTmp.SQL.Add('WHERE BANK = :Bank');
            qryTmp.SQL.Add('  AND TYPE = ''Deposit''');
            qryTmp.SQL.Add('  AND TRUNC(RECONDATE) = :ReconDate');
            qryTmp.SQL.Add('  AND AMOUNT = :Amount');
            qryTmp.ParamByName('Bank').AsString := qryDeposits.FieldByName('ACCT').AsString;
            qryTmp.ParamByName('ReconDate').AsDateTime := Trunc(qryDeposits.FieldByName('RECONDATE').AsDateTime);
            qryTmp.ParamByName('Amount').AsString := tvCashBookRCPAMT.EditValue;;
            qryTmp.ExecSQL;
         end;
   end;
   qryDeposits.close;
end;

procedure TfrmBankRec.tbtnReceiptReqDelClick(Sender: TObject);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'delete from receipt_req where nreceiptreq = :nreceiptreq';
      ParamByName('nreceiptreq').AsString := tvCashBookREFNO.EditValue;
      ExecSQL;
   end;
end;

procedure TfrmBankRec.qryBankRecREFNOChange(Sender: TField);
begin
  if qryBankRec.State = dsInsert then
  begin
    if qryBankRec.FieldByName('REFNO').AsString <> '' then
      with qryTmp do
      begin
        SQL.Text := 'SELECT BANKED FROM BANKREC WHERE BANK = ' + QuotedStr(cbBank.Text) + ' AND REFNO = ' + QuotedStr(qryBankRec.FieldByName('REFNO').AsString);
        Open;
        if (not IsEmpty) then
        begin
          MsgErr(qryBankRec.FieldByName('REFNO').AsString + ' has already been entered on ' + FormatDateTime('ddddd', FieldByName('BANKED').AsDateTime));
          qryBankRec.FieldByName('REFNO').AsString := '';
        end;
        Close;
      end;
  end;
end;


procedure TfrmBankRec.Reconcile2Click(Sender: TObject);
begin
   if not qryBankrec.IsEmpty then
   begin
      if not qryBankrec.Modified then
         qryBankrec.Edit;
      if qryBankRec.FieldByName('RECONDATE').IsNull then
      begin
         qryBankrec.FieldByName('RECONDATE').AsDateTime := Trunc(dtpStatementDate.Date);
//         qryBankrec.FieldByName('PresentedDate').AsDateTime := dtpStatementDate.Date;
         with qryTmp do
         begin
            SQL.Text := 'UPDATE CHEQUE SET PRESENTED = :Presented WHERE ACCT = ' + QuotedStr(cbBank.Text) + ' AND CHQNO = ' + QuotedStr(qryBankRec.FieldByName('REFNO').AsString);
            ParamByName('Presented').AsDateTime := Trunc(dtpStatementDate.Date);
            ExecSQL;
         end;
      end;
   end;
end;

procedure TfrmBankRec.Remove1Click(Sender: TObject);
begin
   if (qryBankRec.IsEmpty = False) then
   begin
      qryBankRec.Delete;
      if qryBankRec.Modified = True then
         qryBankRec.Post;
   end;
end;

procedure TfrmBankRec.tvLedgerTypeDescPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if qryBankRec.State = dsBrowse then qryBankRec.Edit;
   SetRefnoButton;
end;

procedure TfrmBankRec.tvCashBookBANKREC_SAVEDGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
   RowVal: string;
   I: integer;
begin
   I := ARecordIndex;
{   if (AText = 'Y') then
      tvCashBook.DataController.SetValue(I, tvCashBookSelect.Index, True)
   else
      tvCashBook.DataController.SetValue(I, tvCashBookSelect.Index, False);
 }
end;

procedure TfrmBankRec.tvCashBookBANKREC_SAVEDPropertiesEditValueChanged(
  Sender: TObject);
var
   ADataSet: TDataSet;
   ACheqAmt,
   ARcptAmt,
   ATansDate: variant;
begin
    ADataSet := TcxGridDBTableView(tvCashbook).DataController.DataSet;
    if (ADataSet <> nil) then
    begin
       ACheqAmt := ADataSet.FieldByName('CHQAMT').AsCurrency;
       ARcptAmt := ADataSet.FieldByName('RCPAMT').AsCurrency;
    end;

   if (string(tvCashbook.DataController.Values[tvCashbook.DataController.FocusedRecordIndex,tvCashBookBANKREC_SAVED.Index]) = 'Y') then
   begin
      if Double(ACheqAmt) > 0 then
      begin
         edCalculatedBal.EditValue := edCalculatedBal.EditValue - ACheqAmt;
      end;
      if Double(ARcptAmt) > 0 then
      begin
         edCalculatedBal.EditValue := edCalculatedBal.EditValue + ARcptAmt;
      end;
   end
   else
    begin
      if Double(ACheqAmt) > 0 then
      begin
         edCalculatedBal.EditValue := edCalculatedBal.EditValue + ACheqAmt;
      end;
      if Double(ARcptAmt) > 0 then
      begin
         edCalculatedBal.EditValue := edCalculatedBal.EditValue - ARcptAmt;
      end;
   end;

{   begin
      ADataSet := TcxGridDBTableView(tvCashbook).DataController.DataSet;
      if (ADataSet <> nil) then
         ACheqAmt := ADataSet.FieldByName('CHQAMT').AsCurrency;
         ARcptAmt := ADataSet.FieldByName('RCPAMT').AsCurrency;
         ATansDate := ADataSet.FieldByName('CREATED').AsDateTime;
         if Double(ACheqAmt) > 0 then
         begin
            edCalculatedBal.EditValue := edCalculatedBal.EditValue + ACheqAmt;
            PresentCheque(ATansDate, tvCashBookNOWNER.EditValue);
         end;
         if Double(ARcptAmt) > 0 then
         begin
            edCalculatedBal.EditValue := edCalculatedBal.EditValue - ARcptAmt;
            // reconcile receipt
            qryTmp.SQL.Clear;
            qryTmp.SQL.Add('UPDATE BANKDEP');
            qryTmp.SQL.Add('SET RECONDATE = :RECONDATE, RECONCILED = ''Y''');
            qryTmp.SQL.Add('WHERE ACCT = :ACCT');
            qryTmp.SQL.Add('  AND NBANKDEP = :NBANKDEP');
            qryTmp.ParamByName('RECONDATE').AsDateTime := ATansDate;
//            qryTmp.ParamByName('DEPOSIT_DATE').AsDateTime := ATansDate;
            qryTmp.ParamByName('ACCT').AsString := cbBank.Text;
            qryTmp.ParamByName('NBANKDEP').AsString := tvCashBookNOWNER.EditValue;
            qryTmp.ExecSQL;
         end;
   end
   else
   begin
      ADataSet := TcxGridDBTableView(tvCashbook).DataController.DataSet;
      if (ADataSet <> nil) then
         ACheqAmt := ADataSet.FieldByName('CHQAMT').AsCurrency;
         ARcptAmt := ADataSet.FieldByName('RCPAMT').AsCurrency;
         if Double(ACheqAmt) > 0 then
         begin
            edCalculatedBal.EditValue := edCalculatedBal.EditValue - ACheqAmt;
            UnpresentCheque(tvCashBookNOWNER.EditValue);
         end;
         if Double(ARcptAmt) > 0 then
         begin
            edCalculatedBal.EditValue := edCalculatedBal.EditValue + ARcptAmt;
            qryTmp.SQL.Clear;
            qryTmp.SQL.Add('UPDATE BANKDEP');
            qryTmp.SQL.Add('SET RECONDATE = NULL, RECONCILED = ''N''');
            qryTmp.SQL.Add('WHERE ACCT = :ACCT');
            qryTmp.SQL.Add('  AND NBANKDEP = :NBANKDEP');
            qryTmp.ParamByName('ACCT').AsString := cbBank.Text;
            qryTmp.ParamByName('NBANKDEP').AsString := tvCashBookNOWNER.EditValue;
            qryTmp.ExecSQL;
         end;
   end;  }

   if not VarIsNull(edStatementBal.EditValue) then
   begin
      if (cmbDRCR.Text = 'DR') then
      begin
         if edCalculatedBal.Value < 0 then
            edVariance.Value := (edStatementBal.Value) + edCalculatedBal.Value
         else
            edVariance.Value := (0 - edStatementBal.Value) + edCalculatedBal.Value;
      end
      else
         edVariance.Value := edStatementBal.Value - edCalculatedBal.Value;
   end;
end;

procedure TfrmBankRec.tvLedgerREFNOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
{   if tvLedger.Columns[colTYPE].DataBinding.Field.Text = tdLedger then
   begin
      if not FormExists(frmLedgerSearch) then
         Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
      if frmLedgerSearch.ShowModal = mrOk then
      begin
         qryBankRec.Edit;
         qryBankRec.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CHART').AsString;
      end;
   end
   else if tvLedger.Columns[colTYPE].DataBinding.Field.Text = tdMatter then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOk then
      begin
        qryBankRec.Edit;
        qryBankRec.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      end;
   end;  }
end;

procedure TfrmBankRec.tvLedgerStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn, AColumn1, AColumn2: TcxCustomGridTableItem;
begin
   if not qryBankRec.Eof then
   begin
 {     AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('AMOUNT');
      AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('DEPOSIT');
      AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('WITHDRAWL');

      if (VarToStr(ARecord.Values[AColumn.Index]) <> VarToStr(ARecord.Values[AColumn1.Index])) and
         (not VarIsNull(ARecord.Values[AColumn.Index])) then
         AStyle := cxStyleR
      else if (not VarIsNull(ARecord.Values[AColumn2.Index])) and (VarToStr(ARecord.Values[AColumn.Index]) = VarToStr(ARecord.Values[AColumn1.Index])) and
              (VarIsNull(ARecord.Values[AColumn.Index])) then
         AStyle := cxStyleG
      else if (VarIsNull(ARecord.Values[AColumn2.Index])) then
         AStyle := cxStyleD; }
   end;
end;

procedure TfrmBankRec.dbgrLedgerEnter(Sender: TObject);
begin
//   if qryBankRec.IsEmpty then qryBankRec.Insert;
end;

procedure TfrmBankRec.dtpDatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue > TcxDateEdit(Sender).Properties.MaxDate  then
      DisplayValue := DateToStr(TcxDateEdit(Sender).Properties.MaxDate);
end;

procedure TfrmBankRec.PresentCheque;
begin
  qryCheques.Edit;
  qryCheques.FieldByName('PRESENTED').AsDateTime := dtpStatementDate.Date;
  qryCheques.FieldByName('RECONDATE').AsDateTime := dtpStatementDate.Date;
  qryCheques.Post;
end;

procedure TfrmBankRec.PresentCheque(PresentDate: TDateTime; AOwner: integer);
begin
//  dtpPresent.Date := PresentDate;
   with qryCheques do
   begin
      try
         Close;
         ParamByName('P_NCheque').AsInteger := AOwner;
         Open;
         Edit;
         FieldByName('PRESENTED').AsDateTime := PresentDate;
         FieldByName('RECONDATE').AsDateTime := PresentDate;
         Post;
      finally
         Close;
      end;
   end;
end;

procedure TfrmBankRec.UnpresentCheque(AOwner: integer);
begin
   with qryCheques do
   begin
      try
         Close;
         ParamByName('P_NCheque').AsInteger := AOwner;
         Open;
         Edit;
         FieldByName('PRESENTED').Clear;
         FieldByName('RECONDATE').Clear;
         Post;
      finally
         Close;
      end;
   end;
end;

procedure TfrmBankRec.SetPresentButton;
begin
  if qryCheques.FieldByName('PRESENTED').AsString = '' then
  begin
    tbtnPresent.ImageIndex := IDX_CHEQUEPRESENT;
    tbtnPresent.Hint := 'Present this cheque...';
  end
  else
  begin
    tbtnPresent.ImageIndex := IDX_CHEQUEUNPRESENT;
    tbtnPresent.Hint := 'Unpresent this cheque...';
  end;
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmBankRec, TFormStyleHookBackground);

end.

