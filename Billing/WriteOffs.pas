unit WriteOffs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, NumberEdit, ComCtrls, ExtCtrls, MemDS,
  OracleUniProvider, Uni, DBAccess, DateTimeAccount, dxBar, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxGraphics, cxButtonEdit,
  cxLookAndFeels, cxLookAndFeelPainters, cxCalendar, EnforceCustomDateEdit,
  dxCore, cxClasses, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutControl;

type
  TfrmWriteOff = class(TForm)
    lblClient: TLabel;
    lblMatterDesc: TLabel;
    lblAuthor: TLabel;
    lblDept: TLabel;
    mmoDesc: TMemo;
    cbAuthor: TComboBox;
    cbDept: TComboBox;
    qryFee: TUniQuery;
    chkPrivate: TCheckBox;
    qryMatter: TUniQuery;
    qryAlloc: TUniQuery;
    qryJournal: TUniQuery;
    qrySundry: TUniQuery;
    neFees: TNumberEdit;
    neDisb: TNumberEdit;
    neSund: TNumberEdit;
    qryBill: TUniQuery;
    neAntD: TNumberEdit;
    neFeesTax: TNumberEdit;
    neDisbTax: TNumberEdit;
    neSundTax: TNumberEdit;
    neAntdTax: TNumberEdit;
    Label10: TLabel;
    Label11: TLabel;
    qryBillUpdate: TUniQuery;
    neUpCred: TNumberEdit;
    neUpCredTax: TNumberEdit;
    qryCheqReqInsert: TUniQuery;
    rgledgertype: TRadioGroup;
    edAdjust: TEdit;
    edDisbWOCR: TEdit;
    Label13: TLabel;
    edUpCredWOCR: TEdit;
    edAntdWOCR: TEdit;
    edSundWOCR: TEdit;
    edFeeWOCR: TEdit;
    edSundWODR: TEdit;
    edAntdWODR: TEdit;
    edUpCredWODR: TEdit;
    edDisbWODR: TEdit;
    edFeeWODR: TEdit;
    Label15: TLabel;
    lblfileid: TLabel;
    Label16: TLabel;
    neTotalFees: TNumberEdit;
    neTotalDisbs: TNumberEdit;
    neTotalSundries: TNumberEdit;
    neTotalAntDisbs: TNumberEdit;
    neTotalUPCreds: TNumberEdit;
    neTotalofTotals: TNumberEdit;
    StatusBar1: TStatusBar;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxDBLSubBill: TcxLookupComboBox;
    SmartQuery1: TUniQuery;
    qrySubBill: TUniQuery;
    dsSubBill: TUniDataSource;
    qrySubBillUpdate: TUniQuery;
    qrySubBillDisplay: TUniQuery;
    chkNoExit: TcxCheckBox;
    beBillNo: TcxButtonEdit;
    qryGetBill: TUniQuery;
    dtpCreated: TEnforceCustomDateEdit;
    OraQuery1: TUniQuery;
    qryFeeDist: TUniQuery;
    qryFeeDistInsert: TUniQuery;
    cbNoDistribute: TCheckBox;
    procBillDiscReverse: TUniStoredProc;
    qryFeeAlloc: TUniQuery;
    lblDispatched: TLabel;
    qryCheqReqUpdate: TUniQuery;
    qryBillTransItem: TUniQuery;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    chkBadDebtWO: TcxCheckBox;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    edBadDebtWOCR: TcxTextEdit;
    edBadDebtWODR: TcxTextEdit;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbAuthorClick(Sender: TObject);
    procedure cbDeptClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure rgledgertypeClick(Sender: TObject);
    procedure neEditableAmountsExit(Sender: TObject);
    procedure lblCheqReqClick(Sender: TObject);
    procedure lblCheqReqMouseEnter(Sender: TObject);
    procedure lblCheqReqMouseLeave(Sender: TObject);
    procedure cxDBLSubBillPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure neFeesChange(Sender: TObject);
    procedure neSundChange(Sender: TObject);
  private
    fiNAlloc   : Integer;
    fiNCheqReq : Integer;
    FNMemo     : Integer;

    function OktoPost : boolean;
    procedure DisplayInvoice(iNMemo : integer; bFromBillSearch: boolean = False);
    procedure DisplaySubBill(iNSubBill : integer);
    // 20 Dec 2017 DW added taxcode
    //function CreateJournal(sType, sItem: string; dAmount, dTax : Double; sCaption: string; nmemo: integer): integer;
    function CreateJournal(sType, sItem: string; dAmount, dTax : Double; sCaption: string; nmemo: integer; sTaxCode: string): integer;
    procedure UpdateTotals;
    procedure ResetFields;
  public
    { Public declarations }
  end;

  //types of journal/alloc transactions
const
  cnTYP_DEBTOR = '1';
  cnTYP_DISB = '2';
  cnTYP_TRUST = '3';

var
  frmWriteOff: TfrmWriteOff;

implementation

uses
  AxiomData, MiscFunc, InvoiceSearch, citfunc, forcepay,glComponentUtil;

{$R *.DFM}


procedure TfrmWriteOff.btnCancelClick(Sender: TObject);
begin
  Self.Close;
//  RemoveFromDesktop(Self);
end;

procedure TfrmWriteOff.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qryBill.Close;

  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmWriteOff.FormShow(Sender: TObject);
begin
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpCreated.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

  Self.Caption := Self.Caption; // + ' - ' + dmAxiom.EntityName;
  cbAuthor.Items := dmAxiom.Employees;
  cbAuthor.ItemIndex := cbAuthor.Items.IndexOf(dmAxiom.UserID);
  cbAuthorClick(Self);
  StringPopulate(cbDept.Items, 'EMPDEPT', 'CODE');
  cbDept.ItemIndex := cbDept.Items.IndexOf(TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'DEPT'));
  cbDeptClick(Self);
end;

procedure TfrmWriteOff.cbAuthorClick(Sender: TObject);
begin
  lblAuthor.Caption := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'NAME');
  cbDept.ItemIndex := cbDept.Items.IndexOf(TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DEPT'));
  cbDeptClick(Self);
end;

procedure TfrmWriteOff.cbDeptClick(Sender: TObject);
begin
  lblDept.Caption := TableString('EMPDEPT', 'CODE', cbDept.Text, 'DESCR');
end;


function TfrmWriteOff.OKtoPost : boolean;
var
  sTmp : String;
  bOKtoPost: boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= True;

  sTmp := '';
  if not qryBill.Active then
    sTmp :=          '       - No Bill selected'#13;
  if cbAuthor.Text = '' then
    sTmp := sTmp +   '       - Author'#13;
  if mmoDesc.Text = '' then
    sTmp := sTmp +   '       - Reason'#13;
  if (neFees.AsCurrency + neDisb.AsCurrency + neUpCred.AsCurrency + neAntD.AsCurrency + neSund.AsCurrency + neFeesTax.AsCurrency + neDisbTax.AsCurrency + neUpCredTax.AsCurrency + neAntDTax.AsCurrency + neSundTax.AsCurrency) = 0 then
    sTmp := sTmp +   '       - Amount(s) to Write Off'#13;
  if neTotalofTotals.AsCurrency > qryBill.FieldByName('OWING').AsCurrency then
    sTmp := sTmp +   '       - Amount to Write Off is greater than Bill Owing amount'#13;
  if sTmp <> '' then
  begin
    MsgInfo('Please complete or rectify the following Write Off details before posting: '#13#13 + sTmp);
    bOKtoPost := False
  end;

  result:= bOKtoPost;
end;

procedure TfrmWriteOff.btnOKClick(Sender: TObject);
var
   iNJournal : integer;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,sLedgerKeyDr,sLedgerKeyTax,
   lsTaxCode, sWoffDr, sWoffCr : String;
   rDepartmentOverride : TComponentOverride;
   FeeDistAmt, TotalFeeDistAmt,
   TotalAmount, TotalAmountGST: Currency;
   FeeDistCount, TotalFeeDistCount: integer;
begin
  glComponentSetup := dmAxiom.getGlComponents;

  // create the department override
  rDepartmentOverride.componentType := EMPDEPT;
  rDepartmentOverride.value := cbDept.Text;

  if (qryBill.FieldByName('SPLIT_BILL').AsString = 'Y') and (cxDBLSubBill.text = '') then
  begin
        MsgErr('You need to select a subbill for this invoice');
        exit;
  end;

  if OKtoPost then
  begin
    if (PostIntoLockedPeriod(dtpCreated.Date) in [prNotLocked, prOKToProceed]) then
    begin
      try
        Screen.Cursor := crSQLWait;
        //if (neFeesTax.AsCurrency <> 0) then
        //  lsTaxCode := 'GST'
        //else
        //  lsTaxCode := TableString('TAXTYPE','TAXTYPE','N\A','CODE');
        //  18 Dec 2017 DW addedd query to get tax code from original transitems for the bill
        qryBillTransItem.Close;
        qryBillTransItem.ParamByName('NMEMO').AsInteger := FNMemo;
        qryBillTransItem.Open;
        lsTaxCode := qryBillTransItem.FieldByName('TAXCODE').AsString;

        iNJournal := -1;
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Rollback;
        dmAxiom.uniInsight.StartTransaction;
        //remove discount if any
{         with procBillDiscReverse do
         begin
            ParamByName('P_NMEMO').AsInteger := FNMemo;
            ParamByName('P_RVDATE').AsDateTime := Now;

            ParamByName('P_WHO').AsString:= dmAxiom.UserID;
            Execute;
         end;  }

        if chkBadDebtWO.Checked = True then
        begin
           {post components}
           sLedgerKeyDr :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edBadDebtWODR.Text,cbAuthor.text,false,'',[rDepartmentOverride]);
           sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edBadDebtWOCR.Text,cbAuthor.text,true,'',[rDepartmentOverride]);
           sLedgerKeyTax :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edAdjust.Text,cbAuthor.text,true,'',[rDepartmentOverride]);

           TotalAmount     := neFees.AsCurrency + neSund.AsCurrency + neDisb.AsCurrency + neAntD.AsCurrency + neUpCred.AsCurrency;
           TotalAmountGST  := neFeesTax.AsCurrency + neSundTax.AsCurrency + neDisbTax.AsCurrency + neAntdTax.AsCurrency + neUpCredTax.AsCurrency;

           iNJournal := CreateJournal(cnTYP_DEBTOR, '', TotalAmount,
                                      TotalAmountGST, beBillNo.Text, FNMemo, lsTaxCode);

           PostLedgersGST(dtpCreated.Date
                     , TotalAmount
                     , TotalAmountGST
                     , qryMatter.FieldByName('FILEID').AsString
                     , 'JOURNAL'
                     , iNJournal
                     , lblfileid.caption + ':' + mmoDesc.Lines.Text
                     , sLedgerKeyTax
                     , sLedgerKeyDr
                     , sLedgerKey
                     , cbAuthor.Text
                     , lsTaxCode
                     , FALSE
                     ,'0'
                     , 0
                     , qryMatter.FieldByName('NMATTER').AsInteger);
        end
        else
        begin
           // part 1 - process the Fee/Sundry adjustment together as ONE JOURNAL as these are type J1
           //rb if (neFees.AsCurrency <> 0) and (neSund.AsCurrency <> 0) then
             if (neFees.AsCurrency <> 0) or (neSund.AsCurrency <> 0) or (neFeesTax.AsCurrency <> 0) or (neSundTax.AsCurrency <> 0) then
           begin
              iNJournal := CreateJournal(cnTYP_DEBTOR, '', (neFees.AsCurrency + neSund.AsCurrency), (neFeesTax.AsCurrency + neSundTax.AsCurrency), beBillNo.Text, FNMemo, lsTaxCode);
//               MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'DEBTORS', 0 - (neFees.AsCurrency + neDisb.AsCurrency + neAntD.AsCurrency + neSund.AsCurrency + neFeesTax.AsCurrency + neDisbTax.AsCurrency + neAntDTax.AsCurrency + neSundTax.AsCurrency));

              if (neFees.AsCurrency <> 0 ) or (neFeesTax.AsCurrency <> 0 ) then
              begin
                 if (cbNoDistribute.Checked = False) then
                 begin
                     qryFeeAlloc.Close;
                     qryFeeAlloc.ParamByName('NMEMO').AsInteger := FNMemo;
                     qryFeeAlloc.Open;
                     while not qryFeeAlloc.Eof do
                     begin
                        if (qryFeeAlloc.FieldByName('split').AsFloat > 0) then
                        begin
                           with qryFee do
                           begin
                              ParamByName('CREATED').AsDateTime := dtpCreated.Date;
                              ParamByName('DESCR').AsString := mmoDesc.Lines.Text;
                              ParamByName('AUTHOR').AsString := qryFeeAlloc.FieldByName('AUTHOR').AsString;  // cbAuthor.Text;
                              ParamByName('PARTNER').AsString := qryMatter.FieldByName('PARTNER').AsString;
                              if neFees.AsCurrency > 0 then
                                 ParamByName('AMOUNT').AsFloat := (0 - neFees.AsCurrency) * qryFeeAlloc.FieldByName('split').AsFloat
                              else
                                 ParamByName('AMOUNT').AsFloat := neFees.AsCurrency * qryFeeAlloc.FieldByName('split').AsFloat;

                              if neFeesTax.AsCurrency > 0 then
                                 ParamByName('TAX').AsFloat := (0 - neFeesTax.AsCurrency) * qryFeeAlloc.FieldByName('split').AsFloat
                              else
                                 ParamByName('TAX').AsFloat := neFeesTax.AsCurrency * qryFeeAlloc.FieldByName('split').AsFloat;

                              ParamByName('TAXCODE').AsString := lsTaxCode;
                              ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                              ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
                              ParamByName('DEPT').AsString := cbDept.Text;
                              ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'TYPE');
                              ParamByName('INVOICEDATE').AsDateTime := dtpCreated.Date;
                              ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
                              ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
                              ParamByName('NMEMO').AsInteger := FNMemo;
                              if chkPrivate.Checked then
                                 ParamByName('PRIVATE').AsString := 'Y'
                              else
                                 ParamByName('PRIVATE').AsString := 'N';
                              ExecSQL;
                           end;
                        end;
                        qryFeeAlloc.Next;
                     end;
                 end;
                 // Billed Fees
                 //MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'BILL_FEES', 0 - neFees.AsCurrency);
                  MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'WIPWOFF', neFees.AsCurrency + neFeesTax.AsCurrency);
                 //pb-MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'CREQWOFF', neAntd.AsCurrency + neAntdTax.AsCurrency);

                 //if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'FEEWOFF_CHART') <> '') then
                 //  sWoffDr := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'FEEWOFF_CHART')
                 //else
                 //  sWoffDr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_DR');
                 //
                 //sWoffCr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_CR');
                 //

                 {post components}
                  sLedgerKeyDr :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edFeeWODR.Text,cbAuthor.text,false,'',[rDepartmentOverride]);
                  sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edFeeWOCR.Text,cbAuthor.text,true,'',[rDepartmentOverride]);
                  sLedgerKeyTax :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edAdjust.Text,cbAuthor.text,true,'',[rDepartmentOverride]);

                  PostLedgersGST(dtpCreated.Date
                     , neFees.AsCurrency
                     , neFeesTax.AsCurrency
                     , qryMatter.FieldByName('FILEID').AsString
                     , 'JOURNAL'
                     , iNJournal
                     , lblfileid.caption + ':' + mmoDesc.Lines.Text
                     , sLedgerKeyTax
                     , sLedgerKeyDr
                     , sLedgerKey
                     , cbAuthor.Text
                     , lsTaxCode
                     , FALSE
                     ,'0'
                     , 0
                     , qryMatter.FieldByName('NMATTER').AsInteger);


                  if (neFees.AsCurrency <> 0) then
                  begin
                     if cbNoDistribute.Checked then
                    begin
                        try
                           FeeDistAmt := (neFees.AsCurrency);
                           qryFeeDistInsert.ParamByName('nmemo').AsInteger         := FNMemo;
                           qryFeeDistInsert.ParamByName('author').AsString         := cbAuthor.Text;
                           qryFeeDistInsert.ParamByName('nmatter').AsInteger       := qryMatter.FieldByName('NMATTER').AsInteger;
                           qryFeeDistInsert.ParamByName('dept').AsString           := TableString('EMPLOYEE','CODE',cbAuthor.Text, 'dept');
                           qryFeeDistInsert.ParamByName('matter_dept').AsString    := TableString('matter','nmatter', qryMatter.FieldByName('NMATTER').AsInteger,'dept');
                           qryFeeDistInsert.ParamByName('writeoff_amt').AsCurrency := FeeDistAmt;
                           qryFeeDistInsert.ParamByName('name').AsString           := TableString('EMPLOYEE','CODE',cbAuthor.Text, 'NAME');
                           qryFeeDistInsert.ExecSQL;
                        finally
                           qryFeeDistInsert.Close;
                        end;
                    end
                    else
                    begin
                     // saving WRITE OFF amount against original distribution.
                        qryFeeDist.Close;
                        qryFeeDist.ParamByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
                        qryFeeDist.Open;

                        TotalFeeDistAmt := 0;
                        FeeDistCount := 1;
                        TotalFeeDistCount := qryFeeDist.RecordCount;
                        while (qryFeeDist.Eof = False) do
                        begin
                           if (FeeDistCount = TotalFeeDistCount) and
                              (TotalFeeDistCount > 1)  then
                              FeeDistAmt :=  (neFees.AsCurrency) - TotalFeeDistAmt
                           else
                              FeeDistAmt := (neFees.AsCurrency) * (qryFeeDist.FieldByNAme('ALLOC_PC').AsFloat/100);
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
                  end;
               end;

               if (neSund.AsCurrency <> 0) or (neSundTax.AsCurrency <> 0)  then
               begin
                 with qrySundry do
                 begin
                   ParamByName('ACCT').AsString := dmAxiom.Entity;
                   ParamByName('CREATED').AsDateTime := dtpCreated.Date;
                   ParamByName('AMOUNT').AsFloat := 0 - neSund.AsCurrency;
                   ParamByName('TAX').AsFloat := 0 - neSundTax.AsCurrency;
//                   if neSundTax.AsCurrency <> 0 then
                     ParamByName('TAXCODE').AsString := lsTaxCode;
//                   else
//                     ParamByName('TAXCODE').AsString := lsTaxCode;
                   ParamByName('DESCR').AsString := mmoDesc.Lines.Text;
                   ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                   ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
                   ParamByName('NMEMO').AsInteger := FNMemo;
                   if chkPrivate.Checked then
                     ParamByName('PRIVATE').AsString := 'Y'
                   else
                     ParamByName('PRIVATE').AsString := 'N';
                   ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
                   ExecSQL;
                 end;
                 // Billed Sundries
                 MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'SUNDWOFF', neSund.AsCurrency + neSundTax.AsCurrency);

                 {post components}
                 sLedgerKeyDr :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edSundWODR.Text,cbAuthor.text,false,'',[rDepartmentOverride]);
                 sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edSundWOCR.Text,cbAuthor.text,true,'',[rDepartmentOverride]);
                 sLedgerKeyTax :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edAdjust.Text,cbAuthor.text,true,'',[rDepartmentOverride]);

                 PostLedgersGST(dtpCreated.Date
                   , neSund.AsCurrency
                   , neSundTax.AsCurrency
                   , qryMatter.FieldByName('FILEID').AsString
                   , 'JOURNAL'
                   , iNJournal
                   , lblfileid.caption + ':' + mmoDesc.Lines.Text
                   , sLedgerKeyTax
                   , sLedgerKeyDr
                   , sLedgerKey
                   , cbAuthor.Text
                   , lsTaxCode
                   , FALSE
                   ,'0'
                   ,0
                   , qryMatter.FieldByName('NMATTER').AsInteger);
               end;
               //if (neFeesTax.AsCurrency + neDisbTax.AsCurrency + neAntDTax.AsCurrency + neSundTax.AsCurrency) = 0 then
                 //PostLedgers(dtpCreated.Date, (neFeesTax.AsCurrency+neDisbTax.AsCurrency+neAntDTax.AsCurrency+neSundTax.AsCurrency), qryMatter.FieldByName('FILEID').AsString, 'JOURNAL', iNJournal, mmoDesc.Lines.Text, TableString('TAXTYPE', 'CODE', 'GST', 'ADJUSTLEDGER'), TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_CR'), cbAuthor.Text);
           end; //part 1

           // part 2 - process the Disbursements/Anticipated Disbs aka Cheque Reqs and Unpaid Creditors together as these are type J2
           if (neDisb.AsCurrency <> 0) or (neAntd.AsCurrency <> 0) or (neUpCred.AsCurrency <> 0) or (neDisbTax.AsCurrency <> 0) or (neAntdTax.AsCurrency <> 0) or (neUpCredTax.AsCurrency <> 0) then
           begin
              if (neDisb.AsCurrency <> 0) or (neDisbTax.AsCurrency <> 0)  then
              begin   //rb
                   iNJournal := CreateJournal(cnTYP_DEBTOR, 'DISB', neDisb.AsCurrency, neDisbTax.AsCurrency, beBillNo.Text, FNMemo, lsTaxCode);
                   MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'DISBSWOFF', neDisb.AsCurrency + neDisbTax.AsCurrency);

                   //if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART') <> '') then
                   //  sWoffDr := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
                   //else //load the chart from the entity
                   //  sWoffDr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');

                  { if rgledgertype.itemindex = 0 then
                      sWoffDr := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
                   else if rgledgertype.itemindex = 1 then
                      sWoffDr := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBUNREC_CHART')
                   else }
                      sWoffDr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');

                   sWoffCr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_CR');

                  {post components}
                  sLedgerKeyDr :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edDisbWODR.Text,cbAuthor.text,false,'',[rDepartmentOverride]);
                  sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edDisbWOCR.Text,cbAuthor.text,true,'',[rDepartmentOverride]);
                  sLedgerKeyTax :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edAdjust.Text,cbAuthor.text,true,'',[rDepartmentOverride]);

                   PostLedgersGST(dtpCreated.Date
                     , neDisb.AsCurrency
                     , neDisbTax.AsCurrency
                     , qryMatter.FieldByName('FILEID').AsString
                     , 'JOURNAL'
                     , iNJournal
                     , lblfileid.caption + ':' + mmoDesc.Lines.Text
                     , sLedgerKeyTax
                     , sLedgerKeyDr
                     , sLedgerKey
                     , cbAuthor.Text
                     , lsTaxCode
                     , FALSE
                     ,'0'
                     ,0
                     , qryMatter.FieldByName('NMATTER').AsInteger);
                   // must create a journal + alloc here
                  end;

               if (neUpCred.AsCurrency <> 0) or (neUpCredTax.AsCurrency <> 0)  then
                 begin
                   iNJournal := CreateJournal(cnTYP_DEBTOR, 'UPCRED', neUpCred.AsCurrency, neUpCredTax.AsCurrency, beBillNo.Text, FNMemo, lsTaxCode);
                   MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'UPCREDWOFF', neUpCred.AsCurrency + neUpCredTax.AsCurrency);

                   if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART') <> '') then
                     sWoffDr := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
                   else
                     sWoffDr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_DR');

                   sWoffCr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_CR');

                   {post components}
                   sLedgerKeyDr :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edUpCredWODR.Text,cbAuthor.text,false,'',[rDepartmentOverride]);
                   sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edUpCredWOCR.Text,cbAuthor.text,true,'',[rDepartmentOverride]);
                   sLedgerKeyTax :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edAdjust.Text,cbAuthor.text,true,'',[rDepartmentOverride]);

                   PostLedgersGST(dtpCreated.Date
                     , neUpCred.AsCurrency
                     , neUpCredTax.AsCurrency
                     , qryMatter.FieldByName('FILEID').AsString
                     , 'JOURNAL'
                     , iNJournal
                     , lblfileid.caption + ':' + mmoDesc.Lines.Text
                     , sLedgerKeyTax
                     , sLedgerKeyDr
                     , sLedgerKey
                     , cbAuthor.Text
                     , lsTaxCode
                     , FALSE
                     ,'0'
                     ,0
                     , qryMatter.FieldByName('NMATTER').AsInteger);
                   // must create a journal + alloc here
                  end;

               if (neAntD.AsCurrency <> 0) or (neAntDTax.AsCurrency <> 0) then
                 begin
                   // rb
                   iNJournal := CreateJournal(cnTYP_DEBTOR, 'ANTD', neAntd.AsCurrency, neAntdTax.AsCurrency, beBillNo.Text, FNMemo, lsTaxCode);
                   MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'CREQWOFF', neAntd.AsCurrency + neAntdTax.AsCurrency);

                   // 20 Dec 2017 DW set cheqreqs to converted
                   qryCheqReqUpdate.Close;
                   With qryCheqReqUpdate do
                   begin
                      ParamByName('NMEMO').AsInteger := FNMemo;
                      ExecSQL;
                   end;

                   if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART') <> '') then
                     sWoffDr := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
                   else
                     sWoffDr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_DR');

                   sWoffCr := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_CR');

                   {post components}
                   sLedgerKeyDr :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edAntdWODR.Text,cbAuthor.text,false,'',[rDepartmentOverride]);
                   sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edAntdWOCR.Text,cbAuthor.text,true,'',[rDepartmentOverride]);
                   sLedgerKeyTax :=  glComponentSetup.buildLedgerKey(qryMatter.fieldByName('NMATTER').AsString,edAdjust.Text,cbAuthor.text,true,'',[rDepartmentOverride]);

                   PostLedgersGST(dtpCreated.Date
                     , neAntD.AsCurrency
                     , neAntDTax.AsCurrency
                     , qryMatter.FieldByName('FILEID').AsString
                     , 'JOURNAL'
                     , iNJournal
                     , lblfileid.caption + ':' + mmoDesc.Lines.Text
                     , sLedgerKeyTax
                     , sLedgerKeyDr
                     , sLedgerKey
                     , cbAuthor.Text
                     , lsTaxCode
                     , FALSE
                     ,'0'
                     , 0
                     , qryMatter.FieldByName('NMATTER').AsInteger);

                     fiNCheqReq := GetSequenceNumber('sqnc_ncheqreq');

                     with qryCheqReqInsert do
                     begin
                       //ParamByName('AMOUNT').AsFloat := 0 - qryLedger.FieldByName('DEBIT').AsFloat;
                       ParamByName('AMOUNT').AsFloat := 0 - neAntd.AsCurrency;
                       ParamByName('BANK').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
                       ParamByName('AUTHOR').AsString := dmAxiom.UserID;
                       ParamByName('REQDATE').AsDateTime := Trunc(dtpCreated.Date);
                       ParamByName('NCHEQREQ').AsInteger := fiNCheqReq;
                       ParamByName('PAYEE').AsString := 'Write Off';
                       ParamByName('DESCR').AsString := mmoDesc.Lines.Text; //qryLedger.FieldByName('REASON').AsString;
                       ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
                       ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                       // rb do we need to do this?
                       ExecSQL;
                     end;
                   PostCheqReqTrans(neTotalAntDisbs.AsCurrency, fiNAlloc, fiNCheqReq);
                 end;
            end; //part 2
        end;

        with qryBillUpdate do
        begin
          // made everything currency
          ParamByName('FEES_WOFF').AsCurrency := neFees.AsCurrency;
          ParamByName('DISB_WOFF').AsCurrency := neDisb.AsCurrency;
          ParamByName('ANTD_WOFF').AsCurrency := neAntd.AsCurrency;
          ParamByName('UPCRED_WOFF').AsCurrency := neUpCred.AsCurrency;
          ParamByName('SUND_WOFF').AsCurrency := neSund.AsCurrency;
          ParamByName('FEESTAX_WOFF').AsCurrency := neFeesTax.AsCurrency;
          ParamByName('DISBTAX_WOFF').AsCurrency := neDisbTax.AsCurrency;
          ParamByName('UPCREDTAX_WOFF').AsCurrency := neUpCredTax.AsCurrency;
          ParamByName('ANTDTAX_WOFF').AsCurrency := neAntdTax.AsCurrency;
          ParamByName('SUNDTAX_WOFF').AsCurrency := neSundTax.AsCurrency;
          ParamByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
          ExecSQL;
        end;

        if  cxDBLSubBill.text <> '' then
        begin
           with qrySubBillUpdate do
           begin
             ParamByName('FEES_WOFF').AsFloat := neFees.AsCurrency;
             ParamByName('DISB_WOFF').AsFloat := neDisb.AsCurrency;
             ParamByName('ANTD_WOFF').AsFloat := neAntd.AsCurrency;
             ParamByName('UPCRED_WOFF').AsFloat := neUpCred.AsCurrency;
             ParamByName('SUND_WOFF').AsFloat := neSund.AsCurrency;
             ParamByName('FEESTAX_WOFF').AsFloat := neFeesTax.AsCurrency;
             ParamByName('DISBTAX_WOFF').AsFloat := neDisbTax.AsCurrency;
             ParamByName('UPCREDTAX_WOFF').AsFloat := neUpCredTax.AsCurrency;
             ParamByName('ANTDTAX_WOFF').AsFloat := neAntdTax.AsCurrency;
             ParamByName('SUNDTAX_WOFF').AsFloat := neSundTax.AsCurrency;
             ParamByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
             ParamByName('NSUBBILL').AsInteger := cxDBLSubBill.EditValue;
             ExecSQL;
           end;
        end;

        CheckLedgerTotal;

        dmAxiom.uniInsight.Commit;
        Screen.Cursor := crDefault;
        MsgInfo('Posted Journal ' + IntToStr(iNJournal));

        if chkNoExit.Checked then
           ResetFields
        else
        begin
           Self.Close;
//           RemoveFromDesktop(Self);
        end;
      except
        On E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          Screen.Cursor := crDefault;
          MsgErr('Error occured writing off'#13#13 + E.Message);
        end;
      end;
    end
  end;
end;

function TfrmWriteOff.CreateJournal(sType, sItem: string; dAmount, dTax : Double;
                                    sCaption: string; nmemo: integer; sTaxCode: string): integer;
var
  iNJournal : integer;
begin
  with qryJournal do
  begin
    ParamByName('CREATED').AsDateTime := dtpCreated.Date;
    ParamByName('ACCT').AsString := dmAxiom.Entity;
    ParamByName('AMOUNT').AsFloat := dAmount + dTax;
    iNJournal := GetJournal;
    ParamByName('NJOURNAL').AsInteger := iNJournal;
    ParamByName('REASON').AsString := mmoDesc.Lines.text;
    ParamByName('TYPE').AsString := sType;
    ParamByName('NMEMO').AsInteger := nmemo;
    ParamByName('REFNO').AsString := sCaption;
    ParamByName('ENTITY').AsString := dmAxiom.Entity;
    ExecSQL;
  end;
  with qryAlloc do
  begin
    if (dAmount <> 0) or (dTax <> 0) then
    begin
      ParamByName('AMOUNT').AsFloat := dAmount;
      ParamByName('TAX').AsFloat := dTax;
      // 20 Dec 2017 DW Tax code passed as a parameter
      //if ParamByName('TAX').AsFloat <> 0 then
        ParamByName('TAXCODE').AsString := 'GST';
      //else
      //  ParamByName('TAXCODE').AsString := 'NOTAX';
      if sType = cnTYP_DEBTOR then  // debtors adjustment
        begin
          ParamByName('FEE').AsFloat := neFees.AsCurrency;
          ParamByName('OUTLAY').AsFloat := neDisb.AsCurrency + neAntd.AsCurrency;
          ParamByName('SUNDRY').AsFloat := neSund.AsCurrency;
        end;

      if sType = cnTYP_DISB then
        begin
          if (sItem = 'DISB') then
            ParamByName('DISB').AsFloat := neDisb.AsCurrency;
          if (sItem = 'ANTD') then
            ParamByName('ANTD').AsFloat := neAntd.AsCurrency;
          if (sItem = 'UPCRED') then
            ParamByName('UPCRED').AsFloat := neUpCred.AsCurrency;
        end;

      fiNAlloc := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');

      ParamByName('DESCR').AsString := mmoDesc.Lines.text;
      ParamByName('APPROVAL').AsString := dmAxiom.UserID;
      ParamByName('CREATED').AsDateTime := dtpCreated.Date;
      ParamByName('ACCT').AsString := dmAxiom.Entity;
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      ParamByName('REFNO').AsString := IntToStr(iNJournal);
      ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
      ParamByName('NJOURNAL').AsInteger := iNJournal;
      ParamByName('TYPE').AsString := 'J' + sType;
      ParamByName('PAYER').AsString := 'Write Off from Bill ' + qryBill.FieldByName('REFNO').AsString;
      ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
      ParamByName('NALLOC').AsInteger := fiNAlloc;
      ParamByName('CLIENT_NAME').AsString := qryMatter.FieldByName('TITLE').AsString;
      ParamByName('MATTER_DESC').AsString := qryMatter.FieldByName('SHORTDESCR').AsString;
      if chkPrivate.Checked then
        ParamByName('PRIVATE').AsString := 'Y'
      else
        ParamByName('PRIVATE').AsString := 'N';
      ParamByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
      ExecSQL;
    end;
  end;
  CreateJournal := iNJournal;
end;


procedure TfrmWriteOff.DisplayInvoice(iNMemo : integer; bFromBillSearch: boolean);
var
  sError: string;
  sAUWO,sAUUR, lsTaxCode : string;
begin
  sError := '';
  // 20 Dec 2017 DW  get the Tax Code from the original transitem for the bill
  with qryBillTransItem do
  begin
     Close;
     ParamByName('NMEMO').AsInteger := iNMemo;
     Open;
     lsTaxCode := qryBillTransItem.FieldByName('TAXCODE').AsString;
  end;

  with qryBill do
  begin
    Close;
//    ParamByName('NMEMO').AsInteger := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger;
    ParamByName('NMEMO').AsInteger := iNMemo;
    Open;
  end;
  if not qryBill.IsEmpty then
  begin
    if not qryBill.FieldByName('DISPATCHED').IsNull then
    begin
      if (((qryBill.FieldByName('FEES').AsCurrency - qryBill.FieldByName('FEES_PAID').AsCurrency -
          qryBill.FieldByName('FEES_WOFF').AsCurrency +
          qryBill.FieldByName('DISB').AsCurrency - qryBill.FieldByName('DISB_PAID').AsCurrency -
          qryBill.FieldByName('DISB_WOFF').AsCurrency +
          qryBill.FieldByName('UPCRED').AsCurrency - qryBill.FieldByName('UPCRED_PAID').AsCurrency -
          qryBill.FieldByName('UPCRED_WOFF').AsCurrency +
          qryBill.FieldByName('ANTD').AsCurrency - qryBill.FieldByName('ANTD_PAID').AsCurrency -
          qryBill.FieldByName('ANTD_WOFF').AsCurrency +
          qryBill.FieldByName('SUND').AsCurrency - qryBill.FieldByName('SUND_PAID').AsCurrency -
          qryBill.FieldByName('SUND_WOFF').AsCurrency +
          qryBill.FieldByName('TAX').AsCurrency - qryBill.FieldByName('TAX_PAID').AsCurrency -
          qryBill.FieldByName('TAX_WOFF').AsCurrency) +
          qryBill.FieldByName('DISCOUNT').AsCurrency) > 0) or
          (bFromBillSearch) then
      begin
        beBillNo.Text := qryBill.FieldByName('REFNO').AsString;
        FNMemo := qryBill.FieldByName('NMEMO').AsInteger;
        with qryMatter do
        begin
          Close;
          ParamByName('FILEID').AsString := qryBill.FieldByName('FILEID').AsString;
          Open;
          if not IsEmpty then
          begin
            dxLayoutItem5.Visible := False;
//            lblSubBill.Visible := false;
//            cxDBLSubBill.Visible := false;

            if qryBill.FieldByName('SPLIT_BILL').AsString = 'Y' then
            begin
                qrySubBill.close;
                qrySubBill.paramByName('NMEMO').AsInteger := qryBill.fieldByname('NMEMO').AsInteger;
                qrySubBill.open;

                dxLayoutItem5.Visible := true;
//                cxDBLSubBill.Visible := true;
            end;

            lblClient.Caption := FieldByName('TITLE').AsString;
            lblMatterDesc.Caption := FieldByName('SHORTDESCR').AsString;
            lblFileId.Caption := FieldByName('FILEID').AsString;
            neFees.AsCurrency := qryBill.FieldByName('FEES').AsCurrency - qryBill.FieldByName('FEES_PAID').AsCurrency - qryBill.FieldByName('FEES_WOFF').AsCurrency + qryBill.FieldByName('DISCOUNT').AsCurrency - qryBill.FieldByName('DISCOUNT_GST').AsCurrency;
            neUpCred.AsCurrency := qryBill.FieldByName('UPCRED').AsCurrency - qryBill.FieldByName('UPCRED_PAID').AsCurrency - qryBill.FieldByName('UPCRED_WOFF').AsCurrency;
            neDisb.AsCurrency := qryBill.FieldByName('DISB').AsCurrency - qryBill.FieldByName('DISB_PAID').AsCurrency - qryBill.FieldByName('DISB_WOFF').AsCurrency - qryBill.FieldByName('DISB_CRDIT').AsCurrency ;
            neAntd.AsCurrency := qryBill.FieldByName('ANTD').AsCurrency - qryBill.FieldByName('ANTD_PAID').AsCurrency - qryBill.FieldByName('ANTD_WOFF').AsCurrency - qryBill.FieldByName('ANTD_CRDIT').AsCurrency;
            neSund.AsCurrency := qryBill.FieldByName('SUND').AsCurrency - qryBill.FieldByName('SUND_PAID').AsCurrency - qryBill.FieldByName('SUND_WOFF').AsCurrency;
            neFeesTax.AsCurrency := qryBill.FieldByName('FEESTAX').AsCurrency - qryBill.FieldByName('FEESTAX_PAID').AsCurrency - qryBill.FieldByName('FEESTAX_WOFF').AsCurrency + qryBill.FieldByName('DISCOUNT_GST').AsCurrency;
            neUpCredTax.AsCurrency := qryBill.FieldByName('UPCREDTAX').AsCurrency - qryBill.FieldByName('UPCREDTAX_PAID').AsCurrency - qryBill.FieldByName('UPCREDTAX_WOFF').AsCurrency;
            neDisbTax.AsCurrency := qryBill.FieldByName('DISBTAX').AsCurrency - qryBill.FieldByName('DISBTAX_PAID').AsCurrency - qryBill.FieldByName('DISBTAX_WOFF').AsCurrency;
            neAntdTax.AsCurrency := qryBill.FieldByName('ANTDTAX').AsCurrency - qryBill.FieldByName('ANTDTAX_PAID').AsCurrency - qryBill.FieldByName('ANTDTAX_WOFF').AsCurrency;
            neSundTax.AsCurrency := qryBill.FieldByName('SUNDTAX').AsCurrency - qryBill.FieldByName('SUNDTAX_PAID').AsCurrency - qryBill.FieldByName('SUNDTAX_WOFF').AsCurrency;
            cbAuthor.ItemIndex := cbAuthor.Items.IndexOf(FieldByName('AUTHOR').AsString);
            lblDispatched.Caption := 'Dispatched: ' + DateToStr(qryBill.FieldByName('DISPATCHED').AsDateTime);
            cbAuthor.OnClick(Self);
            cbDept.ItemIndex := cbDept.Items.IndexOf(tableString('EMPLOYEE','CODE',FieldByName('AUTHOR').AsString,'DEPT'));
            cbDept.OnClick(Self);
            UpdateTotals;
            mmoDesc.SetFocus;

            // what ledger has the auther got?
            sAUWO := tablestring('EMPLOYEE','CODE',FieldByName('AUTHOR').AsString,'DISBWOFF_CHART');
            sAUUR := tablestring('EMPLOYEE','CODE',FieldByName('AUTHOR').AsString,'DISBUNREC_CHART');

            if (sAUWO = '') and (sAUUR = '') then
            begin
               rgledgertype.itemIndex := -1;
               rgledgertype.enabled := false;
            end
            else if (sAUWO = '') and (sAUUR <> '') then
            begin
               rgledgertype.itemIndex := 1;
               rgledgertype.enabled := false;

            end
            else if (sAUWO <> '') and (sAUUR = '') then
            begin
               rgledgertype.itemIndex := 0;
               rgledgertype.enabled := false;
            end
            else
            begin
               rgledgertype.enabled := true;
               if nefees.AsCurrency = 0 then
                  rgledgertype.itemIndex := 1
               else
                  rgledgertype.itemIndex := 0;
            end;

            // setup the ledger
            // 20 Dec 2017 DW pulled tax code from original billtransitems
            edAdjust.Text := TableString('TAXTYPE', 'CODE', lsTaxCode, 'OUTPUTLEDGER');

            if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'FEEWOFF_CHART') <> '') then
                edFeeWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'FEEWOFF_CHART')
            else
                edFeeWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_DR');

                edFeeWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_CR');

                edSundWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_SUND_DR');
                edSundWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_SUND_CR');

              if rgledgertype.itemindex = 0 then
                 edDisbWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
              else if rgledgertype.itemindex = 1 then
                 edDisbWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBUNREC_CHART')
              else
                 edDisbWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');

                 edDisbWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_CR');

              if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART') <> '') then
                edUpCredWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
              else
                edUpCredWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');
                //edUpCredWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_DR');

              edUpCredWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_CR');

              if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART') <> '') then
                edAntdWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
              else
                edAntdWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_DR');

              edAntdWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_CR');
              // AES 19/6/2018
              edBadDebtWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_BAD_DEBT_DR');
              edBadDebtWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_BAD_DEBT_CR');
          end
          else
            sError := 'There is no Matter for this Bill';
        end;
      end
      else
      begin
        sError := 'There is no money outstanding on this bill';
        with qryMatter do
        begin
          Close;
          ParamByName('FILEID').AsString := qryBill.FieldByName('FILEID').AsString;
          Open;
          cbAuthor.ItemIndex := cbAuthor.Items.IndexOf(FieldByName('AUTHOR').AsString);
          cbAuthor.OnClick(Self);
          cbDept.ItemIndex := cbDept.Items.IndexOf(tableString('EMPLOYEE','CODE',FieldByName('AUTHOR').AsString,'DEPT'));
          cbDept.OnClick(Self);
          UpdateTotals;
          mmoDesc.SetFocus;

          // what ledger has the auther got?
          sAUWO := tablestring('EMPLOYEE','CODE',FieldByName('AUTHOR').AsString,'DISBWOFF_CHART');
          sAUUR := tablestring('EMPLOYEE','CODE',FieldByName('AUTHOR').AsString,'DISBUNREC_CHART');

          if (sAUWO = '') and (sAUUR = '') then
          begin
            rgledgertype.itemIndex := -1;
            rgledgertype.enabled := false;
          end
          else if (sAUWO = '') and (sAUUR <> '') then
          begin
            rgledgertype.itemIndex := 1;
            rgledgertype.enabled := false;

          end
          else if (sAUWO <> '') and (sAUUR = '') then
          begin
            rgledgertype.itemIndex := 0;
            rgledgertype.enabled := false;
          end
          else
          begin
            rgledgertype.enabled := true;
            if nefees.AsCurrency = 0 then
               rgledgertype.itemIndex := 1
            else
               rgledgertype.itemIndex := 0;
          end;

          // setup the ledger

          edAdjust.Text := TableString('TAXTYPE', 'CODE', lsTaxCode, 'OUTPUTLEDGER');

          if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'FEEWOFF_CHART') <> '') then
             edFeeWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'FEEWOFF_CHART')
          else
             edFeeWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_DR');

          edFeeWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_CR');

          edSundWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_SUND_DR');
          edSundWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_SUND_CR');

          if rgledgertype.itemindex = 0 then
             edDisbWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
          else if rgledgertype.itemindex = 1 then
             edDisbWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBUNREC_CHART')
          else
             edDisbWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');

          edDisbWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_CR');

          if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART') <> '') then
             edUpCredWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
          else
             edUpCredWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_DR');

          edUpCredWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_CR');

          if (TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART') <> '') then
             edAntdWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
          else
             edAntdWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_DR');

          edAntdWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_CR');
          // AES 19/6/2018
          edBadDebtWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_BAD_DEBT_DR');
          edBadDebtWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_BAD_DEBT_CR');
        end;
      end;
    end
    else
      sError := 'This bill has not been dispatched';

  end
  else
    sError := 'No such Bill';
  if sError <> '' then
  begin
    MsgErr(sError);
//    lblBill.Caption := '';
    lblClient.Caption := '';
    lblMatterDesc.Caption := '';
  end;

end;

procedure TfrmWriteOff.DisplaySubBill(iNSubBill : integer);
begin
   qrySubBillDisplay.close;
   qrySubBillDisplay.ParamByName('NMEMO').AsInteger := qryBill.fieldByname('NMEMO').AsInteger;
   qrySubBillDisplay.ParamByName('NSUBBILL').AsInteger := iNSubBill;
   qrySubBillDisplay.open;

   neFees.AsCurrency := qrySubBillDisplay.FieldByName('FEES').AsCurrency - qrySubBillDisplay.FieldByName('FEES_PAID').AsCurrency - qrySubBillDisplay.FieldByName('FEES_WOFF').AsCurrency ;
   neUpCred.AsCurrency := qrySubBillDisplay.FieldByName('UPCRED').AsCurrency - qrySubBillDisplay.FieldByName('UPCRED_PAID').AsCurrency - qrySubBillDisplay.FieldByName('UPCRED_WOFF').AsCurrency;
   neDisb.AsCurrency := qrySubBillDisplay.FieldByName('DISB').AsCurrency - qrySubBillDisplay.FieldByName('DISB_PAID').AsCurrency - qrySubBillDisplay.FieldByName('DISB_WOFF').AsCurrency;
   neAntd.AsCurrency := qrySubBillDisplay.FieldByName('ANTD').AsCurrency - qrySubBillDisplay.FieldByName('ANTD_PAID').AsCurrency - qrySubBillDisplay.FieldByName('ANTD_WOFF').AsCurrency;
   neSund.AsCurrency := qrySubBillDisplay.FieldByName('SUND').AsCurrency - qrySubBillDisplay.FieldByName('SUND_PAID').AsCurrency - qrySubBillDisplay.FieldByName('SUND_WOFF').AsCurrency;
   neFeesTax.AsCurrency := qrySubBillDisplay.FieldByName('FEESTAX').AsCurrency - qrySubBillDisplay.FieldByName('FEESTAX_PAID').AsCurrency - qrySubBillDisplay.FieldByName('FEESTAX_WOFF').AsCurrency;
   neUpCredTax.AsCurrency := qrySubBillDisplay.FieldByName('UPCREDTAX').AsCurrency - qrySubBillDisplay.FieldByName('UPCREDTAX_PAID').AsCurrency - qrySubBillDisplay.FieldByName('UPCREDTAX_WOFF').AsCurrency;
   neDisbTax.AsCurrency := qrySubBillDisplay.FieldByName('DISBTAX').AsCurrency - qrySubBillDisplay.FieldByName('DISBTAX_PAID').AsCurrency - qrySubBillDisplay.FieldByName('DISBTAX_WOFF').AsCurrency;
   neAntdTax.AsCurrency := qrySubBillDisplay.FieldByName('ANTDTAX').AsCurrency - qrySubBillDisplay.FieldByName('ANTDTAX_PAID').AsCurrency - qrySubBillDisplay.FieldByName('ANTDTAX_WOFF').AsCurrency;
   neSundTax.AsCurrency := qrySubBillDisplay.FieldByName('SUNDTAX').AsCurrency - qrySubBillDisplay.FieldByName('SUNDTAX_PAID').AsCurrency - qrySubBillDisplay.FieldByName('SUNDTAX_WOFF').AsCurrency;
end;


(*
function TfrmWriteOff.CreateJournal: integer;
var
  iNJournal : integer;
begin
  with qryJournal do
  begin
    ParamByName('CREATED').AsDateTime := dtpCreated.Date;
    ParamByName('ACCT').AsString := dmAxiom.Entity;
    ParamByName('AMOUNT').AsFloat := neFees.AsCurrency + neSund.AsCurrency + neDisb.AsCurrency;
    iNJournal := GetJournal;
    ParamByName('NJOURNAL').AsInteger := iNJournal;
    ParamByName('REASON').AsString := mmoDesc.Lines.text;
    ParamByName('TYPE').AsString := '1';
    ExecSQL;
  end;
  with qryAlloc do
  begin
    if (neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neSund.AsCurrency) <> 0 then
    begin
      ParamByName('AMOUNT').AsFloat := neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neSund.AsCurrency;
      ParamByName('TAX').AsFloat := neFeesTax.AsCurrency + neDisbTax.AsCurrency + neAntdTax.AsCurrency + neSundTax.AsCurrency;
      if ParamByName('TAX').AsFloat <> 0 then
        ParamByName('TAXCODE').AsString := 'GST'
      else
        ParamByName('TAXCODE').AsString := 'NOTAX';
      ParamByName('FEE').AsFloat := neFees.AsCurrency;
      ParamByName('OUTLAY').AsFloat := neDisb.AsCurrency + neAntd.AsCurrency;
      ParamByName('SUNDRY').AsFloat := neSund.AsCurrency;
      ParamByName('DESCR').AsString := mmoDesc.Lines.text;
      ParamByName('APPROVAL').AsString := dmAxiom.UserID;
      ParamByName('CREATED').AsDateTime := dtpCreated.Date;
      ParamByName('ACCT').AsString := dmAxiom.Entity;
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      ParamByName('REFNO').AsString := IntToStr(iNJournal);
      ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
      ParamByName('NJOURNAL').AsInteger := iNJournal;
      ParamByName('TYPE').AsString := 'J1';
      ParamByName('PAYER').AsString := 'Write Off from Bill ' + qryBill.FieldByName('REFNO').AsString;
      ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
      ParamByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
      ParamByName('CLIENT_NAME').AsString := qryMatter.FieldByName('TITLE').AsString;
      ParamByName('MATTER_DESC').AsString := qryMatter.FieldByName('SHORTDESCR').AsString;
      if chkPrivate.Checked then
        ParamByName('PRIVATE').AsString := 'Y'
      else
        ParamByName('PRIVATE').AsString := 'N';
      ParamByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
      ExecSQL;
    end;
*)

procedure TfrmWriteOff.rgledgertypeClick(Sender: TObject);
begin
    if rgledgertype.itemindex = 0 then
       edDisbWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBWOFF_CHART')
    else if rgledgertype.itemindex = 1 then
       edDisbWODR.Text := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'DISBUNREC_CHART')
    else
       edDisbWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');
end;

procedure TfrmWriteOff.UpdateTotals;
begin
   neTotalFees.AsCurrency     := neFees.AsCurrency + neFeesTax.AsCurrency;
   neTotalDisbs.AsCurrency    := neDisb.AsCurrency + neDisbTax.AsCurrency;
   neTotalUPCreds.AsCurrency  := neUpCred.AsCurrency + neUpCredTax.AsCurrency;
   neTotalAntDisbs.AsCurrency := neAntD.AsCurrency + neAntdTax.AsCurrency;
   neTotalSundries.AsCurrency := neSund.AsCurrency + neSundTax.AsCurrency;

   neTotalofTotals.AsCurrency := neTotalFees.AsCurrency + neTotalDisbs.AsCurrency +
                                 neTotalUPCreds.AsCurrency + neTotalAntDisbs.AsCurrency +
                                 neTotalSundries.AsCurrency;
end;

procedure TfrmWriteOff.neEditableAmountsExit(Sender: TObject);
begin
  UpdateTotals
end;

procedure TfrmWriteOff.neFeesChange(Sender: TObject);
var
   ADate: TDateTime;
begin
   ADate := Date;
//   if neFees.Text <> '' then
//      neFeesTax.AsCurrency := TaxCalc(neFees.AsCurrency , '', dmAxiom.DefaultTax, ADate);
end;

procedure TfrmWriteOff.neSundChange(Sender: TObject);
begin
//   if neSund.Text <> '' then
//      neSundTax.AsCurrency := TaxCalc(neSund.AsCurrency, '', dmAxiom.DefaultTax, Date);
end;

procedure TfrmWriteOff.lblCheqReqClick(Sender: TObject);
begin
   if neAntD.Text <> '' then
   begin
      frmForcePay := TfrmForcePay.Create(Application,qryBill.FieldByName('NMEMO').AsString);
      if frmForcePay.ShowModal = mrOk then
         frmForcePay.Free;
   end;
end;

procedure TfrmWriteOff.lblCheqReqMouseEnter(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Cheque Req payable once bill is written off.';
end;

procedure TfrmWriteOff.lblCheqReqMouseLeave(Sender: TObject);
begin
   StatusBar1.SimpleText := '';
end;

procedure TfrmWriteOff.cxDBLSubBillPropertiesChange(Sender: TObject);
begin
   DisplaySubBill(cxDBLSubBill.EditValue);
end;

procedure TfrmWriteOff.FormCreate(Sender: TObject);
begin
   dxLayoutItem5.Visible := false;
end;

procedure TfrmWriteOff.ResetFields;
begin
   lblClient.Caption := '';
   lblMatterDesc.Caption := '';
   lblFileId.Caption := '';
   neFees.Clear;
   neUpCred.Clear;
   neDisb.Clear;
   neAntd.Clear;
   neSund.Clear;
   neFeesTax.Clear;
   neUpCredTax.Clear;
   neDisbTax.Clear;
   neAntdTax.Clear;
   neSundTax.Clear;
   cbAuthor.ItemIndex := -1;
   cbDept.ItemIndex := -1;
   beBillNo.Text := '';
   mmoDesc.Clear;
   neTotalFees.Clear;
   neTotalDisbs.Clear;
   neTotalUPCreds.Clear;
   neTotalAntDisbs.Clear;
   neTotalSundries.Clear;
   neTotalofTotals.Clear;
   edFeeWODR.Clear;
   edFeeWOCR.Clear;
   edSundWODR.Clear;
   edSundWOCR.Clear;
   edDisbWODR.Clear;
   edDisbWOCR.Clear;
   edUpCredWOCR.Clear;
   edUpCredWODR.Clear;
   edAntdWODR.Clear;
   edAntdWOCR.Clear;
   edAdjust.Clear;
   cxDBLSubBill.EditValue := -1;
   lblAuthor.Caption := '';
   lblDept.Caption := '';
end;

procedure TfrmWriteOff.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmInvoiceSearch) then
    frmInvoiceSearch := TfrmInvoiceSearch.Create(Application,False);
  if frmInvoiceSearch.ShowModal = mrOK then
    begin
      if IsMatterArchived(frmInvoiceSearch.qryInvoices.FieldByName('FILEID').AsString) then
        MsgWarn('Matter is archived.  Bill cannot be reversed.')
      else
         DisplayInvoice(frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger, True);
    end;
end;

procedure TfrmWriteOff.cxButtonEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   try
      if DisplayValue <> '' then
      begin
         with qryGetBill do
         begin
            Close;
            ParamByName('refno').AsString := string(DisplayValue);
            Open;
            if (not eof) then
               if IsMatterArchived(FieldByName('FILEID').AsString) then
                  MsgWarn('Matter is archived.  Bill cannot be reversed.')
               else
                  DisplayInvoice(FieldByName('NMEMO').AsInteger,False)
            else
               MsgWarn('Bill No not found. Please try again');
         end;
      end;
   except
     //
   end;
end;

end.
