unit BillCredit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Db, ComCtrls, MemDS, OracleUniProvider, Uni,
  Menus, DateTimeAccount, DBAccess, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxDropDownEdit, cxDBLookupComboBox, cxButtonEdit, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxMaskEdit,
  cxCalendar, EnforceCustomDateEdit, dxCore, Math, cxNavigator, cxDateUtils,
  cxCheckBox, dxBar, cxBarEditItem,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

const
  colTYPE = 0;
  colCODE = 1;
  colLEDGER = 2;
  colREASON = 3;
  colTAXCODE = 4;
  colAMOUNT = 5;
  colTAX = 6;

  pnlFEES = 0;
  pnlDISB = 1;
  pnlANTD = 2;
  pnlSUND = 3;
//  pnlDEBTORS = 4;
  pnlCREDITORS = 4;

type
  TfrmBillCredit = class(TForm)
    lblBillFind: TLabel;
    lblBill: TLabel;
    lblClient: TLabel;
    lblMatterDesc: TLabel;
    qryBill: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    sbarDetails: TStatusBar;
    Label2: TLabel;
    lblTotalFees: TLabel;
    Label3: TLabel;
    lblTotalDisb: TLabel;
    Label5: TLabel;
    lblTotalSund: TLabel;
    Label4: TLabel;
    qryFee: TUniQuery;
    btnBillFind: TBitBtn;
    qryLastCreditNote: TUniQuery;
    qrySundry: TUniQuery;
    popGrid: TPopupMenu;
    popGridRemove: TMenuItem;
    Label1: TLabel;
    tbDescr: TEdit;
    Label6: TLabel;
    cbCreditType: TComboBox;
    Label7: TLabel;
    lblTotalAntd: TLabel;
    procBillCreate: TUniStoredProc;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerTYPE: TcxGridDBColumn;
    tvLedgerLONGDESC: TcxGridDBColumn;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerREASON: TcxGridDBColumn;
    tvLedgerTAXCODE: TcxGridDBColumn;
    tvLedgerAMOUNT: TcxGridDBColumn;
    tvLedgerTAX: TcxGridDBColumn;
    qryTaxRate: TUniQuery;
    dsTaxRate: TUniDataSource;
    dtpDate: TEnforceCustomDateEdit;
    tvLedgerAUTHOR: TcxGridDBColumn;
    tvLedgerSUNDRYTYPE: TcxGridDBColumn;
    qryFeeDist: TUniQuery;
    qryFeeDistInsert: TUniQuery;
    qryLedgerROWID: TStringField;
    qryLedgerTYPE: TStringField;
    qryLedgerREFNO: TStringField;
    qryLedgerLONGDESC: TStringField;
    qryLedgerREASON: TStringField;
    qryLedgerAMOUNT: TFloatField;
    qryLedgerBILLED: TStringField;
    qryLedgerUNIQUEID: TLargeintField;
    qryLedgerTAXCODE: TStringField;
    qryLedgerTAX: TFloatField;
    qryLedgerTAXRATE: TFloatField;
    qryLedgerWITHHOLD: TStringField;
    qryLedgerAUTHOR: TStringField;
    qryLedgerSUNDRYTYPE: TStringField;
    Label8: TLabel;
    lblTotalCred: TLabel;
    qryBillRV: TUniSQL;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnOk: TdxBarButton;
    btnCancel: TdxBarButton;
    chkPrint: TcxBarEditItem;
    qryAllocs: TUniQuery;
    procedure btnBillFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
    procedure qryLedgerAfterScroll(DataSet: TDataSet);
    procedure qryLedgerTYPEChange(Sender: TField);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure dbgrLedgerColExit(Sender: TObject);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure qryLedgerAMOUNTChange(Sender: TField);
    procedure qryLedgerTAXCODEChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryLedgerLONGDESCChange(Sender: TField);
    procedure popGridRemoveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1REFNO1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1REFNO1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerREFNOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure tvLedgerREFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerLONGDESCPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvLedgerTYPEPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    LastType: string;
    SundryTypes: TStringList;
    BillFees, BillDisb, BillAntd, BillSund, BillCred: currency;
    TotalFees, TotalDisb, TotalAntd, TotalSund, TotalCred: currency;
    procedure SetTypePicklist;
    procedure UpdateTotal;
    function OKtoPost(bShowError : boolean) : Boolean;
    procedure CalcTax;
    function GetNMemoTax: double;
  public
    { Public declarations }
    procedure DisplayInvoice(iNMemo : integer);
  end;

implementation

{$R *.DFM}

uses
  MiscFunc, InvoiceSearch, AxiomData, LSearch, citfunc, glComponentUtil,
  genericsearch;

procedure TfrmBillCredit.btnBillFindClick(Sender: TObject);
begin
  if not FormExists(frmInvoiceSearch) then
    Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);
  if frmInvoiceSearch.ShowModal = mrOK then
  begin
    DisplayInvoice(frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger);
    dbgrLedger.SetFocus;
  end;
end;

procedure TfrmBillCredit.DisplayInvoice(iNMemo : integer);
var
  sError: string;
begin
  sError := '';
  qryLedger.Close;
  with qryBill do
  begin
    Close;
    ParamByName('NMEMO').AsInteger := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger;
    Open;
  end;
  if not qryBill.IsEmpty then
  begin
    if not qryBill.FieldByName('DISPATCHED').IsNull then
    begin
      qryLedger.Open;
      BillFees := qryBill.FieldByName('FEES').AsCurrency - qryBill.FieldByName('FEES_PAID').AsCurrency;
      sbarDetails.Panels[pnlFEES].Text := 'Fees: ' + Format('%.2n', [BillFees]);
      BillDisb := qryBill.FieldByName('DISB').AsCurrency - qryBill.FieldByName('DISB_PAID').AsCurrency;
      sbarDetails.Panels[pnlDISB].Text := 'Disb: ' + Format('%.2n', [BillDisb]);
      BillAntd := qryBill.FieldByName('ANTD').AsCurrency - qryBill.FieldByName('ANTD_PAID').AsCurrency;
      sbarDetails.Panels[pnlANTD].Text := 'Ant Disb: ' + Format('%.2n', [BillAntd]);
      BillSund := qryBill.FieldByName('SUND').AsCurrency - qryBill.FieldByName('SUND_PAID').AsCurrency;
      sbarDetails.Panels[pnlSUND].Text := 'Sundry: ' + Format('%.2n', [BillSund]);
//      sbarDetails.Panels[pnlDEBTORS].Text := 'Debtors: ' + Format('%.2n', [TableCurrency('MATTER', 'FILEID', qryBill.FieldByName('FILEID').AsString, 'DEBTORS')]);
      BillCred := qryBill.FieldByName('UPCRED').AsCurrency - qryBill.FieldByName('UPCRED_PAID').AsCurrency;
      sbarDetails.Panels[pnlCREDITORS].Text := 'Creditors: ' + Format('%.2n', [BillCred]);

      //if (qryBill.FieldByName('FEES').AsCurrency - qryBill.FieldByName('FEES_PAID').AsCurrency + qryBill.FieldByName('DISB').AsCurrency + qryBill.FieldByName('DISB_PAID').AsCurrency + qryBill.FieldByName('ANTD').AsCurrency - qryBill.FieldByName('ANTD_PAID').AsCurrency + qryBill.FieldByName('SUND').AsCurrency - qryBill.FieldByName('SUND_PAID').AsCurrency) > 0 then
      if (qryBill.FieldByName('FEES').AsCurrency - qryBill.FieldByName('FEES_PAID').AsCurrency + qryBill.FieldByName('DISB').AsCurrency + qryBill.FieldByName('DISB_PAID').AsCurrency + qryBill.FieldByName('ANTD').AsCurrency - qryBill.FieldByName('ANTD_PAID').AsCurrency + qryBill.FieldByName('SUND').AsCurrency - qryBill.FieldByName('SUND_PAID').AsCurrency + qryBill.FieldByName('UPCRED').AsCurrency - qryBill.FieldByName('UPCRED_PAID').AsCurrency) > 0 then
      begin
        if MatterIsCurrent(qryBill.FieldByName('FILEID').AsString) then
        begin
          lblBill.Caption := qryBill.FieldByName('REFNO').AsString;
          lblClient.Caption := TableString('MATTER', 'FILEID', qryBill.FieldByName('FILEID').AsString, 'TITLE');
          lblMatterDesc.Caption := TableString('MATTER', 'FILEID', qryBill.FieldByName('FILEID').AsString, 'SHORTDESCR');
        end
        else
          sError := 'Matter ' + qryBill.FieldByName('FILEID').AsString + ' is not current';
      end
      else
        sError := 'There is no money outstanding on this Bill';
    end
    else
      sError := 'This Bill has not been dispatched';

  end
  else
    sError := 'No such Bill';

  if sError <> '' then
  begin
    MsgErr(sError);
    lblBill.Caption := '';
    lblClient.Caption := '';
    lblMatterDesc.Caption := '';
  end;
end;

procedure TfrmBillCredit.FormCreate(Sender: TObject);
begin
//  SundryTypes := TStringList.Create;
//  StringPopulate(SundryTypes, 'SUNDRYTYPE', 'CODE', 'CODE <> ''ia''');
//  StringPopulate(dbgrLedger.Columns[colTAXCODE].PickList, 'TAXTYPE', 'CODE', 'WITHHOLDING <> ''Y''');
  StringPopulate(cbCreditType.Items, 'CREDITTYPE', 'DESCR');
  if cbCreditType.Items.Count > 0 then
    cbCreditType.ItemIndex := 0;
  qryTaxRate.Open;
end;

procedure TfrmBillCredit.btnCancelClick(Sender: TObject);
begin
   if qryLedger.UpdatesPending then
      qryLedger.CancelUpdates;

   Self.Close;
end;

procedure TfrmBillCredit.btnOKClick(Sender: TObject);
var
   iNMemo: integer;
   cDebtors, cTaxFees, cTaxDisb, cTaxAntd, cTaxSund, cTaxCred: currency;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,sLedgerKeyDr : String;
   FeeDistAmt, TotalFeeDistAmt: Currency;
   FeeDistCount, TotalFeeDistCount: integer;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}

  glComponentSetup := dmAxiom.getGlComponents;
  if OKtoPost(True) then
  begin
    if PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed] then
    begin
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Rollback;
        dmAxiom.uniInsight.StartTransaction;

        cDebtors := StrToCurr(ProcString('getDebtorsAmount',qryBill.FieldByName('NMATTER').AsInteger));   // TableCurrency('MATTER', 'FILEID', qryBill.FieldByName('FILEID').AsString, 'DEBTORS');

        with procBillCreate do
        begin
          ParamByName('P_Entity').AsString    := dmAxiom.Entity;
          ParamByName('P_NMatter').AsInteger  := qryBill.FieldByName('NMATTER').AsInteger;
          ParamByName('P_CREATEDBY').AsString := dmAxiom.UserID;
          Execute;
          iNMemo := ParamByName('Result').AsInteger;
        end;

        cTaxFees := 0;
        cTaxDisb := 0;
        cTaxAntd := 0;
        cTaxSund := 0;
        cTaxCred := 0;

        qryLedger.First;
        while not qryLedger.EOF do
        begin
          if qryLedger.FieldByName('TYPE').AsString = 'Fees' then
          begin
            with qryFee do
            begin
              ParamByName('CREATED').AsDateTime := dtpDate.Date;
              ParamByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
              ParamByName('AUTHOR').AsString := qryLedger.FieldByName('AUTHOR').AsString;
              ParamByName('PARTNER').AsString := qryBill.FieldByName('PARTNER').AsString;
              ParamByName('AMOUNT').AsFloat := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;
              ParamByName('NMATTER').AsInteger := qryBill.FieldByName('NMATTER').AsInteger;
              ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
              ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', qryLedger.FieldByName('AUTHOR').AsString, 'DEPT');;
              ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', qryLedger.FieldByName('AUTHOR').AsString, 'TYPE');
              ParamByName('INVOICEDATE').AsDateTime := dtpDate.Date;
              ParamByName('NMEMO').AsInteger := iNMemo;
              ParamByName('NCLIENT').AsInteger := qryBill.FieldByName('NCLIENT').AsInteger;
              ParamByName('FILEID').AsString := qryBill.FieldByName('FILEID').AsString;
              ParamByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
              ParamByName('TAX').AsFloat := 0 - qryLedger.FieldByName('TAX').AsCurrency;
              ParamByName('PROGRAM_NAME').AsString := 'Bill Credit Note';
              ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;
              ParamByName('EMPCODE').AsString := dmAxiom.UserID;
              ParamByName('VALUE').AsFloat := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;
              cTaxFees := cTaxFees + qryLedger.FieldByName('TAX').AsCurrency;
              ExecSQL;

              // Billed Fees
              MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'BILL_FEES', 0 - qryLedger.FieldByName('AMOUNT').AsCurrency);

              {post components}
              sLedgerKey := glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_CR'),'',true,'');

              // create alloc
              qryAllocs.Open;
              qryAllocs.Insert;
              qryAllocs.FieldByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
              qryAllocs.FieldByName('NMATTER').AsInteger := qryBill.FieldByName('NMATTER').AsInteger;
              qryAllocs.FieldByName('NCLIENT').AsInteger := qryBill.FieldByName('NCLIENT').AsInteger;
              qryAllocs.FieldByName('FILEID').AsString := qryBill.FieldByName('FILEID').AsString;
              qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
              qryAllocs.FieldByName('CLIENT_NAME').AsString := MatterString(qryBill.FieldByName('FILEID').AsString, 'CLIENT_NAME');
              qryAllocs.FieldByName('MATTER_DESC').AsString := MatterString(qryBill.FieldByName('FILEID').AsString, 'SHORTDESCR');
              qryAllocs.FieldByName('CLEARED').AsString := 'Y';
              qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
              qryAllocs.FieldByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
              qryAllocs.FieldByName('TAX').AsCurrency := qryLedger.FieldByName('TAX').AsCurrency;
              qryAllocs.FieldByName('AMOUNT').AsCurrency := qryLedger.FieldByName('AMOUNT').AsCurrency;
              qryAllocs.FieldByName('FEE').AsCurrency := qryLedger.FieldByName('AMOUNT').AsCurrency;
              qryAllocs.FieldByName('BILLED_AMOUNT').AsCurrency := 0;
              qryAllocs.FieldByName('SUNDRYTYPE').AsString := qryLedger.FieldByName('SUNDRYTYPE').AsString;
              qryAllocs.FieldByName('TRUST').AsString := 'G';
 //             qryAllocs.FieldByName('PAYER').AsString := qryCheque.FieldByName('PAYEE').AsString;

              qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
              qryAllocs.FieldByName('BANK').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');

              qryAllocs.FieldByName('TYPE').AsString := 'J4';   // new credit note entry
              qryAllocs.FieldByName('NMEMO').AsInteger := iNMemo;
//              qryAllocs.FieldByName('REFNO').AsString := qryCheque.FieldByName('CHQNO').AsString;
              qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
              qryAllocs.FieldByName('BILLED').AsString := 'Y';
              qryAllocs.Post;
              qryAllocs.ApplyUpdates;

              // Debtors
              PostLedger(dtpDate.Date
                , qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency
                , qryLedger.FieldByName('TAX').AsCurrency
                , qryBill.FieldByName('FILEID').AsString
                , 'NMEMO'
                , iNMemo
                , qryLedger.FieldByName('REASON').AsString
                , sLedgerKey
                , qryLedger.FieldByName('AUTHOR').AsString
                , -1
                , ''
                , qryLedger.FieldByName('TAXCODE').AsString);
              // Billed Fees

              {post components}
              //sLedgerKey :=  glComponentSetup.buildLedgerKey('',qryLedger.FieldByName('REFNO').AsString,'',true,'');
              sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',qryLedger.FieldByName('REFNO').AsString,'CODE',dmAxiom.Entity);

              PostLedger(dtpDate.Date
                , 0 - qryLedger.FieldByName('AMOUNT').AsCurrency
                , 0
                , qryBill.FieldByName('FILEID').AsString
                , 'NMEMO'
                , iNMemo
                , qryLedger.FieldByName('REASON').AsString
                , sLedgerKey
                , qryLedger.FieldByName('AUTHOR').AsString
                , -1
                , ''
                , qryLedger.FieldByName('TAXCODE').AsString);

              // Tax
              if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
                begin
                sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER'),'',true,'');
                PostLedger(dtpDate.Date
                  , 0 - qryLedger.FieldByName('TAX').AsCurrency
                  , 0
                  , qryBill.FieldByName('FILEID').AsString
                  , 'NMEMO'
                  , iNMemo
                  , qryLedger.FieldByName('REASON').AsString
                  , sLedgerKey
                  , qryLedger.FieldByName('AUTHOR').AsString
                  , -1
                  , ''
                  , qryLedger.FieldByName('TAXCODE').AsString);
                end;
            end;

            // saving WRITE OFF amount against original distribution.
            qryFeeDist.Close;
            qryFeeDist.ParamByName('NMEMO').AsInteger := iNMemo;
            TotalFeeDistAmt := 0;
            FeeDistCount := 1;
            TotalFeeDistCount := qryFeeDist.RecordCount;
            while (qryFeeDist.Eof = False) do
            begin
               if (FeeDistCount = TotalFeeDistCount) and
                  (TotalFeeDistCount > 1)  then
                  FeeDistAmt :=  RoundTo(qryLedger.FieldByName('AMOUNT').AsCurrency - TotalFeeDistAmt, -2)
               else
                  FeeDistAmt := RoundTo((qryLedger.FieldByName('AMOUNT').AsCurrency) * (qryFeeDist.FieldByNAme('ALLOC_PC').AsFloat/100), -2);
                qryFeeDistInsert.ParamByName('nmemo').AsInteger         := qryFeeDist.FieldByName('nmemo').AsInteger;
                qryFeeDistInsert.ParamByName('author').AsString         := qryFeeDist.FieldByName('author').AsString;
                qryFeeDistInsert.ParamByName('nmatter').AsInteger       := qryFeeDist.FieldByName('nmatter').AsInteger;
                qryFeeDistInsert.ParamByName('dept').AsString           := qryFeeDist.FieldByName('dept').AsString;
                qryFeeDistInsert.ParamByName('matter_dept').AsString    := qryFeeDist.FieldByName('matter_dept').AsString;
                qryFeeDistInsert.ParamByName('writeoff_amt').AsCurrency := FeeDistAmt;
                qryFeeDistInsert.ParamByName('name').AsString           := TableString('EMPLOYEE','CODE',qryFeeDist.FieldByName('author').AsString, 'NAME');
                qryFeeDistInsert.ExecSQL;
                TotalFeeDistAmt := TotalFeeDistAmt + FeeDistAmt;
                qryFeeDist.Next;
                FeeDistCount := FeeDistCount + 1;
            end;
            qryFeeDist.Close;
            qryFeeDistInsert.Close;
          end;

          if qryLedger.FieldByName('TYPE').AsString = 'Sundry' then
          begin
            with qrySundry do
            begin
              ParamByName('ACCT').AsString := dmAxiom.Entity;
              ParamByName('CREATED').AsDateTime := dtpDate.Date;
              ParamByName('AMOUNT').AsFloat := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;
              ParamByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
              ParamByName('NMATTER').AsInteger := qryBill.FieldByName('NMATTER').AsInteger;
              ParamByName('NCLIENT').AsInteger := qryBill.FieldByName('NCLIENT').AsInteger;
              ParamByName('FILEID').AsString := qryBill.FieldByName('FILEID').AsString;
              ParamByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
              ParamByName('TAX').AsFloat := 0 - qryLedger.FieldByName('TAX').AsCurrency;
              ParamByName('NMEMO').AsInteger := iNMemo;

              cTaxSund := cTaxSund + qryLedger.FieldByName('TAX').AsCurrency;
              ExecSQL;
            end;
            // Debtors
            PostLedger(dtpDate.Date
              , qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency
              , qryLedger.FieldByName('TAX').AsCurrency
              , qryBill.FieldByName('FILEID').AsString
              , 'NMEMO'
              , iNMemo
              , qryLedger.FieldByName('REASON').AsString
              , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_SUND_CR')
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
            // Sundry write off/discount ledger
            sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',qryLedger.FieldByName('REFNO').AsString,'CODE',dmAxiom.Entity);
            PostLedger(dtpDate.Date
              , 0 - qryLedger.FieldByName('AMOUNT').AsCurrency
              , 0
              , qryBill.FieldByName('FILEID').AsString
              , 'NMEMO'
              , iNMemo
              , qryLedger.FieldByName('REASON').AsString
              , sLedgerKey    //qryLedger.FieldByName('REFNO').AsString
              , qryLedger.FieldByName('AUTHOR').AsString
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
            // Tax
            sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER'),'CODE',dmAxiom.Entity);
            if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
              PostLedger(dtpDate.Date
                , 0 - qryLedger.FieldByName('TAX').AsCurrency
                , 0, qryBill.FieldByName('FILEID').AsString
                , 'NMEMO'
                , iNMemo
                , qryLedger.FieldByName('REASON').AsString
                , sLedgerKey                       //TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER')
                , qryLedger.FieldByName('AUTHOR').AsString
                , -1
                , ''
                , qryLedger.FieldByName('TAXCODE').AsString);
          end;

          if qryLedger.FieldByName('TYPE').AsString = 'Disburse' then
          begin
            // Debtors
            PostLedger(dtpDate.Date
              , qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency
              , qryLedger.FieldByName('TAX').AsCurrency
              , qryBill.FieldByName('FILEID').AsString
              , 'NMEMO'
              , iNMemo
              , qryLedger.FieldByName('REASON').AsString
              , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_CR')
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
            // Irrecoverable Disbursements
            sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',qryLedger.FieldByName('REFNO').AsString,'CODE',dmAxiom.Entity);
            PostLedger(dtpDate.Date
              , 0 - qryLedger.FieldByName('AMOUNT').AsCurrency
              , 0
              , qryBill.FieldByName('FILEID').AsString
              , 'NMEMO'
              , iNMemo
              , qryLedger.FieldByName('REASON').AsString
              , sLedgerKey                            //qryLedger.FieldByName('REFNO').AsString
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
            // Tax
            sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER'),'CODE',dmAxiom.Entity);
            if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
              PostLedger(dtpDate.Date
                , 0 - qryLedger.FieldByName('TAX').AsCurrency
                , 0
                , qryBill.FieldByName('FILEID').AsString
                , 'NMEMO'
                , iNMemo
                , qryLedger.FieldByName('REASON').AsString
                , sLedgerKey                       //TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER')
                , ''
                , -1
                , ''
                , qryLedger.FieldByName('TAXCODE').AsString);
            cTaxDisb := cTaxDisb + qryLedger.FieldByName('TAX').AsCurrency;
          end;

          if qryLedger.FieldByName('TYPE').AsString = 'Creditors' then
          begin
            // Debtors
            PostLedger(dtpDate.Date
              , qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency
              , qryLedger.FieldByName('TAX').AsCurrency
              , qryBill.FieldByName('FILEID').AsString
              , 'NMEMO'
              , iNMemo
              , qryLedger.FieldByName('REASON').AsString
              , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_CR')
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
            // Irrecoverable Disbursements
            sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',qryLedger.FieldByName('REFNO').AsString,'CODE',dmAxiom.Entity);
            PostLedger(dtpDate.Date
              , 0 - qryLedger.FieldByName('AMOUNT').AsCurrency
              , 0
              , qryBill.FieldByName('FILEID').AsString
              , 'NMEMO'
              , iNMemo
              , qryLedger.FieldByName('REASON').AsString
              , sLedgerKey                         //qryLedger.FieldByName('REFNO').AsString
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
            // Tax
            sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER'),'CODE',dmAxiom.Entity);
            if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
              PostLedger(dtpDate.Date
                , 0 - qryLedger.FieldByName('TAX').AsCurrency
                , 0
                , qryBill.FieldByName('FILEID').AsString
                , 'NMEMO'
                , iNMemo
                , qryLedger.FieldByName('REASON').AsString
                , sLedgerKey                       //TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER')
                , ''
                , -1
                , ''
                , qryLedger.FieldByName('TAXCODE').AsString);
            cTaxCred := cTaxCred + qryLedger.FieldByName('TAX').AsCurrency;
          end;

          if qryLedger.FieldByName('TYPE').AsString = 'AntDisb' then
          begin
            // Debtors
            PostLedger(dtpDate.Date
              , qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency
              , qryLedger.FieldByName('TAX').AsCurrency
              , qryBill.FieldByName('FILEID').AsString
              , 'NMEMO'
              , iNMemo
              , qryLedger.FieldByName('REASON').AsString
              , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_ANTD_DR')
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
            // Anticipated Disbursements
            sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',qryLedger.FieldByName('REFNO').AsString,'CODE',dmAxiom.Entity);
            PostLedger(dtpDate.Date
              , 0 - qryLedger.FieldByName('AMOUNT').AsCurrency
              , 0
              , qryBill.FieldByName('FILEID').AsString
              , 'NMEMO'
              , iNMemo
              , qryLedger.FieldByName('REASON').AsString
              , sLedgerKey                      //qryLedger.FieldByName('REFNO').AsString
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
            // Tax
            sLedgerKey := TableStringEntity('CHART','COMPONENT_CODE_DISPLAY',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER'),'CODE',dmAxiom.Entity);
            if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
              PostLedger(dtpDate.Date
                , 0 - qryLedger.FieldByName('TAX').AsCurrency
                , 0
                , qryBill.FieldByName('FILEID').AsString
                , 'NMEMO'
                , iNMemo
                , qryLedger.FieldByName('REASON').AsString
                , sLedgerKey                          //TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER')
                , ''
                , -1
                , ''
                , qryLedger.FieldByName('TAXCODE').AsString);
            cTaxAntd := cTaxAntd + qryLedger.FieldByName('TAX').AsCurrency;
            // Unbilled disbursements
            MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'UNBILL_DISB', qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency);
          end;

          qryLedger.Next;
        end;

        with qryBill do
        begin
          Edit;
          FieldByName('FEES_CRDIT').AsCurrency := FieldByName('FEES_CRDIT').AsCurrency + TotalFees;
          FieldByName('DISB_CRDIT').AsCurrency := FieldByName('DISB_CRDIT').AsCurrency + TotalDisb;
          FieldByName('ANTD_CRDIT').AsCurrency := FieldByName('ANTD_CRDIT').AsCurrency + TotalAntd;
          FieldByName('SUND_CRDIT').AsCurrency := FieldByName('SUND_CRDIT').AsCurrency + TotalSund;
          FieldByName('UPCRED_CRDIT').AsCurrency := FieldByName('UPCRED_CRDIT').AsCurrency + TotalCred;
          FieldByName('FEESTAX_CRDIT').AsCurrency := FieldByName('FEESTAX_CRDIT').AsCurrency + cTaxFees;
          FieldByName('DISBTAX_CRDIT').AsCurrency := FieldByName('DISBTAX_CRDIT').AsCurrency + cTaxDisb;
          FieldByName('ANTDTAX_CRDIT').AsCurrency := FieldByName('ANTDTAX_CRDIT').AsCurrency + cTaxAntd;
          FieldByName('SUNDTAX_CRDIT').AsCurrency := FieldByName('SUNDTAX_CRDIT').AsCurrency + cTaxSund;
          FieldByName('UPCREDTAX_CRDIT').AsCurrency := FieldByName('UPCREDTAX_CRDIT').AsCurrency + cTaxCred;
          FieldByName('TAX_CRDIT').AsCurrency := FieldByName('TAX_CRDIT').AsCurrency + cTaxFees + cTaxDisb + cTaxAntd + cTaxSund + cTaxCred;
          Post;
          ApplyUpdates;
        end;

        MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'DEBTORS', 0 - (TotalFees + TotalDisb + TotalAntd + TotalSund + cTaxFees + cTaxDisb + + cTaxAntd + cTaxSund + TotalCred + cTaxCred));

        // We have to commit here so that we can update the bill credit note via the NMemo
        dmAxiom.uniInsight.Commit;

        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;

        with qryBillRV do
        begin
           ParamByName('DISPATCHED').AsDateTime := qryBill.FieldByName('DISPATCHED').AsDateTime;
           ParamByName('FEES').AsFloat := 0 - TotalFees;
           ParamByName('DISB').AsFloat := 0 - TotalDisb;
           ParamByName('ANTD').AsFloat := 0 - TotalAntd;
           ParamByName('SUND').AsFloat := 0 - TotalSund;
           ParamByName('UPCRED').AsFloat := 0 - TotalCred;
           ParamByName('FEESTAX').AsFloat := 0 - cTaxFees;
           ParamByName('DISBTAX').AsFloat := 0 - cTaxDisb;
           ParamByName('ANTDTAX').AsFloat := 0 - cTaxAntd;
           ParamByName('SUNDTAX').AsFloat := 0 - cTaxSund;
           ParamByName('UPCREDTAX').AsFloat := 0 - cTaxCred;
           ParamByName('TAX').AsFloat := 0 - (cTaxFees + cTaxDisb + cTaxAntd + cTaxSund + cTaxCred);
           ParamByName('DEBTORS').AsFloat := cDebtors;
           ParamByName('NMEMO').AsInteger := iNMemo;
           ParamByName('REFNO').AsString := NextRefno(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'LASTCREDITNOTE'));
           ParamByName('INV_NOTE').AsString := tbDescr.Text;
           ParamByName('CREDITTYPE').AsString := TableString('CREDITTYPE', 'DESCR', cbCreditType.Text, 'CODE');
           ParamByName('RV_NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
           Execute;
        end;

        // Update the last bill number
        with qryLastCreditNote do
        begin
          ParamByName('LASTCREDITNOTE').AsString := qryBillRV.ParamByName('REFNO').AsString;
          ParamByName('ENTITY').AsString := dmAxiom.Entity;
          ExecSQL;
        end;

        CheckLedgerTotal;

        dmAxiom.uniInsight.Commit;
        if boolean(chkPrint.EditValue) then
        begin
           InvoiceMerge(iNmemo, qryBill.FieldByName('NMATTER').AsInteger, False, False, True);
        end;
        Self.Close;
      except
        On E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          MsgErr('Error occured writing off' + #13 + #13 + E.Message);
        end;
      end;
    end;
  end
end;

procedure TfrmBillCredit.dbgrLedgerKeyPress(Sender: TObject;
  var Key: Char);
var
  sType: string;
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
    if (Key = 'F') or (Key = 'f') then
      sType := 'Fees'
    else if (Key = 'D') or (Key = 'd') then
      sType := 'Disburse'
    else if (Key = 'A') or (Key = 'a') then
      sType := 'AntDisb'
    else if (Key = 'S') or (Key = 's') then
      sType := 'Sundry';
    Key := #0;
    if (sType <> '') and (dbgrLedger.Columns.Items[colTYPE].PickList.IndexOf(sType) >= 0) then
    begin
      if not qryLedger.Modified then
        if qryLedger.IsEmpty then
          qryLedger.Insert
        else
          qryLedger.Edit;
      qryLedger.FieldByName('TYPE').AsString := sType;
      dbgrLedger.SelectedIndex := colCODE;
    end;
  end;           }
end;

procedure TfrmBillCredit.qryLedgerAfterScroll(DataSet: TDataSet);
begin
//  if qryLedger.FieldByName('TYPE').AsString <> LastType then
//    SetTypePickList;
end;

procedure TfrmBillCredit.SetTypePicklist;
var
   LookupProp: TcxLookupComboBoxProperties;
begin
   dmAxiom.qryEmplyeeList.Close;
   LookupProp := TcxLookupComboBoxProperties(tvLedgerLONGDESC.Properties);
   if qryLedger.FieldByName('TYPE').AsString = 'Fees' then
   begin
      LookupProp.ListSource := dmAxiom.dsEmplyeeList;
      LookupProp.KeyFieldNames := 'CODE';
      LookupProp.ListFieldNames := 'NAME;CODE';
      dmAxiom.qryEmplyeeList.Open;
//      TcxLookupComboBoxProperties(tvLedgerLONGDESC)
   end
//    dbgrLedger.Columns[colCODE].PickList := dmAxiom.Employees
//   else if qryLedger.FieldByName('TYPE').AsString = 'Sundry' then
//   begin
//      LookupProp.ListSource := dsSundryTypes;
//      LookupProp.KeyFieldNames := 'CODE';
//      LookupProp.ListFieldNames := 'DESCR;CODE';
//      qrySundryTypes.Open;
//   end;
end;

procedure TfrmBillCredit.qryLedgerTYPEChange(Sender: TField);
begin
  SetTypePickList;
  qryLedger.FieldByName('LONGDESC').AsString := '';
  if qryLedger.FieldByName('TYPE').AsString = 'Fees' then
  begin
    qryLedger.FieldByName('LONGDESC').AsString := qryBill.FieldByName('AUTHOR').AsString;
    qryLedger.FieldByName('REFNO').AsString := GetSubchart(dmAxiom.Entity, TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_CR'), qryBill.FieldByName('AUTHOR').AsString);
  end
  else if qryLedger.FieldByName('TYPE').AsString = 'Disburse' then
  begin
    qryLedger.FieldByName('LONGDESC').AsString := '';
    qryLedger.FieldByName('REFNO').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');
  end
  else if qryLedger.FieldByName('TYPE').AsString = 'AntDisb' then
  begin
    qryLedger.FieldByName('LONGDESC').AsString := '';
    qryLedger.FieldByName('REFNO').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR');
  end
  else if qryLedger.FieldByName('TYPE').AsString = 'Sundry' then
  begin
    qryLedger.FieldByName('LONGDESC').AsString := '';
    qryLedger.FieldByName('REFNO').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_SUND_CR');
  end
  else if qryLedger.FieldByName('TYPE').AsString = 'Creditors' then
  begin
    qryLedger.FieldByName('LONGDESC').AsString := '';
    qryLedger.FieldByName('REFNO').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_DR');
  end
end;

procedure TfrmBillCredit.qryLedgerAfterInsert(DataSet: TDataSet);
begin
//  dbgrLedger.Columns[colCODE].PickList.Clear;
  qryLedger.FieldByName('TAXCODE').AsString := dmAxiom.DefaultTax;
  qryLedger.FieldByName('REASON').AsString := tbDescr.text;
end;

procedure TfrmBillCredit.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
//  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
   try
      qryLedger.DisableControls;
      qryLedger.First;
      TotalFees := 0;			{ use temp for efficiency }
      TotalDisb := 0;
      TotalAntd := 0;
      TotalSund := 0;
      TotalCred := 0;

      while not qryLedger.EOF do
      begin
         if qryLedger.FieldByName('TYPE').AsString = 'Fees' then
            TotalFees := TotalFees + qryLedger.FieldByName('AMOUNT').AsCurrency
         else if qryLedger.FieldByName('TYPE').AsString = 'Disburse' then
            TotalDisb := TotalDisb + qryLedger.FieldByName('AMOUNT').AsCurrency
         else if qryLedger.FieldByName('TYPE').AsString = 'AntDisb' then
            TotalAntd := TotalAntd + qryLedger.FieldByName('AMOUNT').AsCurrency
         else if qryLedger.FieldByName('TYPE').AsString = 'Sundry' then
            TotalSund := TotalSund + qryLedger.FieldByName('AMOUNT').AsCurrency
         else if qryLedger.FieldByName('TYPE').AsString = 'Creditors' then
            TotalCred := TotalCred + qryLedger.FieldByName('AMOUNT').AsCurrency;

         qryLedger.Next;
      end;
      lblTotalFees.Caption := Format('%.2n', [TotalFees]);
      lblTotalDisb.Caption := Format('%.2n', [TotalDisb]);
      lblTotalAntd.Caption := Format('%.2n', [TotalAntd]);
      lblTotalSund.Caption := Format('%.2n', [TotalSund]);
      lblTotalCred.Caption := Format('%.2n', [TotalCred]);
   finally
      qryLedger.EnableControls;
 //    if bmPrevRecord <> nil then
//     begin
//       qryLedger.GoToBookmark(bmPrevRecord);
//       qryLedger.FreeBookmark(bmPrevRecord);
//     end;
   end;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmBillCredit.dbgrLedgerColExit(Sender: TObject);
var
     glInstance : TglComponentInstance ;
begin
{if dbgrLedger.SelectedIndex = colLEDGER then
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   glInstance := dmAxiom.getGlComponents.parseString(qryLedger.fieldByName('REFNO').AsString,true);
   if not glInstance.valid then
      begin
         glInstance.displayError;
         qryLedger.FieldByName('REFNO').AsString := '';
         qryLedger.FieldByName('LONGDESC').AsString := '';
         qryLedger.FieldByName('TYPE').AsString := '';
         glInstance.free;
         exit;
      end
      else
      begin
        qryLedger.fieldByName('REFNO').AsString := glInstance.fullCode;
      end;
   end;

  UpdateTotal;    }
end;

procedure TfrmBillCredit.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmBillCredit.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;

function TfrmBillCredit.OKtoPost(bShowError : boolean) : Boolean;
var
  sTmp : String;
  bOKtoPost: boolean;
begin
  sTmp := '';
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= True;

  if TotalFees > BillFees then
    sTmp := sTmp + '       Allocated Fees are more than is owing on this Bill' + #13;
  if TotalDisb > BillDisb then
    sTmp := sTmp + '       Allocated Disbursements are more than is owing on this Bill' + #13;
  if TotalAntd > BillAntd then
    sTmp := sTmp + '       Allocated Anticipated Disbursements are more than is owing on this Bill' + #13;
  if TotalSund > BillSund then
    sTmp := sTmp + '       Allocated Sundries are more than is owing on this Bill' + #13;
  if TotalCred > BillCred then
    sTmp := sTmp + '       Allocated Creditors are more than is owing on this Bill' + #13;

  if sTmp <> '' then
  begin
    if bShowError then
      MsgInfo('Please allocate this Credit Note correctly before posting:    ' + #13 + #13 + sTmp);
    bOKtoPost := False
  end;

  Result := bOKtoPost;
end;

procedure TfrmBillCredit.qryLedgerAMOUNTChange(Sender: TField);
begin
   CalcTax;
   UpdateTotal;
end;

procedure TfrmBillCredit.CalcTax;
var
  dAmount,
  dTax: double;
  taxcode: STRING;
begin
   if (tvLedgerTAXCODE.Visible) then
   begin
      if qryLedger.State = dsBrowse  then
         qryLedger.Edit;

      qryLedgerAMOUNT.OnChange := nil;
      dAmount := qryLedger.FieldByName('AMOUNT').AsCurrency;

      dTax := TaxCalc(dAmount, 'BILL', qryLedger.FieldByName('TAXCODE').AsString, dtpDate.Date);
// AES 04/09/2017  is this test correct.  shouldn't the tax be always the calculated amount?
      if dTax > GetNMemoTax then
         qryLedger.FieldByName('TAX').AsFloat := GetNMemoTax
      else
         qryLedger.FieldByName('TAX').AsFloat := dTax;

      qryLedger.FieldByName('AMOUNT').AsCurrency := dAmount;
      if qryLedger.State in [dsInsert, dsEdit] then
         UpdateTotal;
      qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
   end;
end;

function TfrmBillCredit.GetNMemoTax: double;
var
   lTax: double;
begin
   try
      if tvLedgerTYPE.EditValue = 'Fees' then
      begin
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'select feestax - feestax_paid as total_tax from nmemo where nmemo = :nmemo';
            ParamByName('nmemo').AsInteger := qryBill.FieldByName('nmemo').AsInteger;
            Open;
            lTax :=  FieldByName('total_tax').AsFloat;
            dmAxiom.qryTmp.Close;
         end;
      end;
      if tvLedgerTYPE.EditValue = 'Sundry' then
      begin
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'select sundtax - sundtax_paid as total_tax from nmemo where nmemo = :nmemo';
            ParamByName('nmemo').AsInteger := qryBill.FieldByName('nmemo').AsInteger;
            Open;
            lTax :=  FieldByName('total_tax').AsFloat;
            dmAxiom.qryTmp.Close;
         end;
      end;
      if tvLedgerTYPE.EditValue = 'Creditors' then
      begin
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'select upcredtax - upcredtax_paid as total_tax from nmemo where nmemo = :nmemo';
            ParamByName('nmemo').AsInteger := qryBill.FieldByName('nmemo').AsInteger;
            Open;
            lTax :=  FieldByName('total_tax').AsFloat;
            dmAxiom.qryTmp.Close;
         end;
      end;
      if tvLedgerTYPE.EditValue = 'Disburse' then
      begin
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'select disbtax - disbtax_paid as total_tax from nmemo where nmemo = :nmemo';
            ParamByName('nmemo').AsInteger := qryBill.FieldByName('nmemo').AsInteger;
            Open;
            lTax :=  FieldByName('total_tax').AsFloat;
            dmAxiom.qryTmp.Close;
         end;
      end;
      if tvLedgerTYPE.EditValue = 'AntDisb' then
      begin
         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'select antdtax - antdtax_paid as total_tax from nmemo where nmemo = :nmemo';
            ParamByName('nmemo').AsInteger := qryBill.FieldByName('nmemo').AsInteger;
            Open;
            lTax :=  FieldByName('total_tax').AsFloat;
            dmAxiom.qryTmp.Close;
         end;
      end;
   finally
      Result := lTax;
   end;
end;


procedure TfrmBillCredit.qryLedgerTAXCODEChange(Sender: TField);
begin
   if (qryLedger.FieldbyName('REFNO').AsString <> '') then
   begin
      CalcTax;
   end;
end;

procedure TfrmBillCredit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Self.Release;
   qryTaxRate.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmBillCredit.qryLedgerLONGDESCChange(Sender: TField);
var
  sLedger: string;
begin
  if qryLedger.FieldByName('TYPE').AsString = 'Sundry' then
  begin
    sLedger := TableString('SUNDRYTYPE', 'CODE', qryLedger.FieldByName('SUNDRYTYPE').AsString, 'LEDGER');
    if sLedger <> '' then
      qryLedger.FieldByName('REFNO').AsString := sLedger;
  end;
end;

procedure TfrmBillCredit.popGridRemoveClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmBillCredit.FormShow(Sender: TObject);
begin
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;
end;

procedure TfrmBillCredit.cxGrid1DBTableView1REFNO1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
   if frmLedgerSearch.ShowModal = mrOk then
   begin
      if not qryLedger.Modified then
         qryLedger.Edit;
      qryLedger.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
   end;
end;

procedure TfrmBillCredit.cxGrid1DBTableView1REFNO1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
     glInstance : TglComponentInstance ;
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   glInstance := dmAxiom.getGlComponents.parseString(qryLedger.fieldByName('REFNO').AsString,true);
   if not glInstance.valid then
   begin
      glInstance.displayError;
      qryLedger.FieldByName('REFNO').AsString := '';
      qryLedger.FieldByName('LONGDESC').AsString := '';
      qryLedger.FieldByName('TYPE').AsString := '';
      glInstance.free;
      exit;
   end
   else
   begin
      qryLedger.fieldByName('REFNO').AsString := glInstance.fullCode;
   end;
end;

procedure TfrmBillCredit.tvLedgerREFNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
   if frmLedgerSearch.ShowModal = mrOk then
   begin
      if not qryLedger.Modified then
         qryLedger.Edit;
      qryLedger.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
   end;
end;

procedure TfrmBillCredit.dbgrLedgerEnter(Sender: TObject);
begin
   try
      if qryLedger.Active then
      begin
         if (qryLedger.State <> dsEdit) and (qryLedger.State <> dsInsert) then
            qryLedger.Insert;
         if tvLedger.Columns[colREASON].DataBinding.Field.Text = '' then
            tvLedger.Columns[colREASON].DataBinding.Field.Text := tbDescr.Text;
      end;
   except
      //
   end;
end;

procedure TfrmBillCredit.tvLedgerREFNOPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
     glInstance : TglComponentInstance ;
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   glInstance := dmAxiom.getGlComponents.parseString(qryLedger.fieldByName('REFNO').AsString,true);
   if not glInstance.valid then
   begin
      glInstance.displayError;
      qryLedger.FieldByName('REFNO').AsString := '';
      qryLedger.FieldByName('LONGDESC').AsString := '';
      qryLedger.FieldByName('TYPE').AsString := '';
      glInstance.free;
      exit;
   end
   else
   begin
      qryLedger.fieldByName('REFNO').AsString := glInstance.fullCode;
   end;

  UpdateTotal;
end;

procedure TfrmBillCredit.tvLedgerTYPEPropertiesCloseUp(Sender: TObject);
var
   glInstance: TglComponentInstance;
   lEmpChart,
   sLedgerKey: string;
   glComponentSetup : TglComponentSetup;
begin
   qryLedger.FieldByName('LONGDESC').AsString := '';
   if qryLedger.FieldByName('TYPE').AsString = 'Fees' then
   begin
      glComponentSetup := dmAxiom.getGlComponents;
      lEmpChart := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_CR');
      glInstance :=  glComponentSetup.buildLedgerComponent(qryBill.FieldByName('NMATTER').AsString,
                                                     lEmpChart, qryBill.fieldByName('AUTHOR').AsString, true,'');

      qryLedger.FieldByName('LONGDESC').AsString := qryBill.FieldByName('AUTHOR').AsString;
      qryLedger.FieldByName('REFNO').AsString := GetSubchart(dmAxiom.Entity, glInstance.fullCode, qryBill.FieldByName('AUTHOR').AsString);
      glInstance.Free;
   end
   else if qryLedger.FieldByName('TYPE').AsString = 'Disburse' then
   begin
      qryLedger.FieldByName('LONGDESC').AsString := '';
      qryLedger.FieldByName('REFNO').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');
   end
   else if qryLedger.FieldByName('TYPE').AsString = 'AntDisb' then
   begin
      qryLedger.FieldByName('LONGDESC').AsString := '';
      qryLedger.FieldByName('REFNO').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_ANTD_DR');
   end
   else if qryLedger.FieldByName('TYPE').AsString = 'Sundry' then
   begin
      qryLedger.FieldByName('LONGDESC').AsString := '';
      qryLedger.FieldByName('REFNO').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_SUND_CR');
   end
   else if qryLedger.FieldByName('TYPE').AsString = 'Creditors' then
   begin
      qryLedger.FieldByName('LONGDESC').AsString := '';
      qryLedger.FieldByName('REFNO').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_DR');
   end;
end;

procedure TfrmBillCredit.tvLedgerLONGDESCPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  frmGenericSearch: TfrmGenericSearch;
begin
   try
      frmGenericSearch := TfrmGenericSearch.Create(Self);

      if qryLedger.FieldByName('TYPE').AsString = 'Fees' then
      begin
         with frmGenericSearch do
         begin
            SQL := 'SELECT CODE, NAME AS DESCR, ''N'' AS DEFAULTITEM FROM EMPLOYEE WHERE active = ''Y'' ORDER BY CODE';
            if ShowModal = mrOK then
            begin
               if (qryLedger.State = dsBrowse) then
                  qryLedger.Edit;

               if (dmAxiom.AuthorFeeChart <> '') then
                  qryLedger.FieldByName('REFNO').AsString  := dmAxiom.AuthorFeeChart;
               qryLedger.FieldByName('AUTHOR').AsString := qrySource.FieldByName('CODE').AsString;
               qryLedger.FieldByName('LONGDESC').AsString := qrySource.FieldByName('DESCR').AsString;
            end;
         end;
      end;
{      else if qryLedger.FieldByName('TYPE').AsString = 'Sundry' then
      begin
         with frmGenericSearch do
         begin
            SQL := 'SELECT CODE, DESCR FROM SUNDRYTYPE WHERE CODE <> ''ia'' ORDER BY CODE';
            if ShowModal = mrOK then
            begin
               qryLedger.FieldByName('SUNDRYTYPE').AsString := qrySource.FieldByName('CODE').AsString;
               qryLedger.FieldByName('LONGDESC').AsString := qrySource.FieldByName('DESCR').AsString;
            end;
         end;

      end;  }
   finally
      frmGenericSearch.Release;
   end;
end;

end.

