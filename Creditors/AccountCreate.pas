unit AccountCreate;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TdmAccountCreate = class(TDataModule)
    qryAccount: TUniQuery;
    qryAllocs: TUniQuery;
    qryUpdateInvoice: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function SaveAccount(AMatter, ACreditor, AOrderID: integer; ATotalAmt, ATax: currency;
                         ADescr, AFileID: string): boolean;
  end;

var
  dmAccountCreate: TdmAccountCreate;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
   MiscFunc, AxiomData, citfunc,glComponentUtil;

{$R *.dfm}

procedure TdmAccountCreate.DataModuleCreate(Sender: TObject);
begin
   qryAccount.Open;
   qryAllocs.Open;
end;

procedure TdmAccountCreate.DataModuleDestroy(Sender: TObject);
begin
   qryAccount.Close;
   qryAllocs.Close;
end;

function TdmAccountCreate.SaveAccount(AMatter, ACreditor, AOrderID: integer;
                                      ATotalAmt, ATax: currency;
                                      ADescr, AFileID: string): boolean;
var
  cAccTotal, cAccTax: Double;
  bPostingFailed, matterPosting: boolean;
  sCreditorCode, sLedgerCode, sLegalCode,
  sLedgerKey,sLedgerKeyDr, TaxCode: string;
  iNINVOICE, nmatter : integer;
  cMatterTotal, cTradeTotal : Double;
  glInstance : TglComponentInstance ;
  glComponentSetup : TglComponentSetup;
  iPos: integer;
begin
   TaxCode := 'GST';
   glComponentSetup := dmAxiom.getGlComponents;

   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      if not qryAccount.Modified then
         qryAccount.Edit;

      iNINVOICE := GetSeqNum('NINVOICE');
      qryAccount.FieldByName('ACCT').AsString := dmAxiom.Entity;
      qryAccount.FieldByName('TYPE').AsString := 'IV';
      qryAccount.FieldByName('CREDITOR').AsString := TableString('PHONEBOOK', 'NCREDITOR', ACreditor, 'NAME');
      qryAccount.FieldByName('AMOUNT').AsCurrency := ATotalAmt + ATax;
      qryAccount.FieldByName('TAX').AsCurrency := ATax;
      qryAccount.FieldByName('CREDITED').AsCurrency := ATotalAmt + ATax;
      qryAccount.FieldByName('REFNO').AsString := IntToStr(AOrderID);
      qryAccount.FieldByName('DESCR').AsString := ADescr;
      qryAccount.FieldByName('INVOICE_DATE').AsDateTime := Now;
      qryAccount.FieldByName('DUE_DATE').AsDateTime := Now + 30;
      qryAccount.FieldByName('PAY_DATE').AsDateTime := Now + 30;
      qryAccount.FieldByName('NCREDITOR').AsInteger := ACreditor;

      qryAccount.FieldByName('HOLD').AsString := TableString('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'HOLD');

      qryAccount.FieldByName('NINVOICE').AsInteger := iNINVOICE;
      qryAccount.FieldByName('OWING').AsCurrency := ATotalAmt + ATax;

      qryAccount.Post; // Puts Account into cached buffer

      sLedgerCode := TableStringEntity('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'CHART', dmAxiom.Entity);
      if not ValidLedger(dmAxiom.Entity, sLedgerCode) then
         sLedgerCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'CREDITORS');

      sLegalCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR');
      sCreditorCode := TableString('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'CODE');

     // Initialise the totals for legal (matter) and ledger (trade) creditors amount
      cMatterTotal := 0;
      cTradeTotal  := 0;

      nmatter := AMATTER;
      qryAllocs.Insert;
      qryAllocs.FieldByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
      qryAllocs.FieldByName('NMATTER').AsInteger := nmatter;
      qryAllocs.FieldByName('NCLIENT').AsInteger := TableInteger('MATTER', 'NMATTER', AMatter, 'NCLIENT');
      qryAllocs.FieldByName('FILEID').AsString := AFileID;
      qryAllocs.FieldByName('DESCR').AsString := ADescr;
      qryAllocs.FieldByName('CLIENT_NAME').AsString := MatterString(AMatter, 'TITLE');
      qryAllocs.FieldByName('MATTER_DESC').AsString := MatterString(AMatter, 'SHORTDESCR');
      qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
      qryAllocs.FieldByName('SYSTEM_DATE').AsDateTime := Date;
      qryAllocs.FieldByName('PAYER').AsString := qryAccount.FieldByName('CREDITOR').AsString;
      qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
      qryAllocs.FieldByName('TYPE').AsString := qryAccount.FieldByName('TYPE').AsString;
      qryAllocs.FieldByName('NINVOICE').AsInteger := iNINVOICE;
      qryAllocs.FieldByName('REFNO').AsString := qryAccount.FieldByName('REFNO').AsString;
      qryAllocs.FieldByName('BILLED').AsString := 'N';
      qryAllocs.FieldByName('TRUST').AsString := 'G';
      qryAllocs.FieldByName('AMOUNT').AsCurrency := 0 - (ATotalAmt + ATax);
      qryAllocs.FieldByName('UPCRED').AsCurrency :=  ATotalAmt + ATax;
      qryAllocs.FieldByName('TAX').AsFloat := 0 - ATax;
      qryAllocs.FieldByName('TAXCODE').AsString := TaxCode;
      qryAllocs.FieldByName('CREATED').AsDateTime := Now;
//      qryAllocs.FieldByName('SUNDRYTYPE').AsString := qryLedger.FieldByName('SUNDRYTYPE').AsString;;   // not sure what to do about this

      qryAllocs.Post;  // Put it into the cached bufer

      MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'UNBILL_UPCRED', 0 - (qryAllocs.FieldByName('AMOUNT').AsCurrency));
      MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'UNBILL_ANTD', 0 - (qryAllocs.FieldByName('AMOUNT').AsCurrency));

      // Now make the General Ledger entry
      cAccTotal := 0 - ATotalAmt;
      cAccTax := 0 - ATax;

      {post components}
      sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_CR'),'',true,'');

      PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
        , cAccTotal
        , cAccTax
        , qryAccount.FieldByName('REFNO').AsString
        , 'INVOICE'
        , qryAccount.FieldByName('NINVOICE').AsInteger
        , qryAllocs.FieldByName('DESCR').AsString
        , sLedgerKey
        , ''
        , qryAccount.FieldByName('NINVOICE').AsInteger
        , sCreditorCode
        , TaxCode //);
        , FALSE   // bJournalSplit: Default to False
        , '0'     // sParentChart: Default to '0'
        , qryAllocs.FieldByName('NALLOC').AsInteger     // nalloc
        , nmatter);  // nmatter

      // Total the legal creditor amount
      cMatterTotal := cMatterTotal + ATotalAmt + ATax;

      if (ATax <> 0) then
      begin
         {post components}
         sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', TAXCODE, 'LEDGER'),'',true,'');

         PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
            , 0 - ATax
            , 0
            , qryAccount.FieldByName('REFNO').AsString
            , 'INVOICE'
            , qryAccount.FieldByName('NINVOICE').AsInteger
            , ADescr
            , sLedgerKey
            , ''
            , qryAccount.FieldByName('NINVOICE').AsInteger
            , sCreditorCode
            , TaxCode //)
            , FALSE   // bJournalSplit: Default to False
            , '0'     // sParentChart: Default to '0'
            , qryAllocs.FieldByName('NALLOC').AsInteger   // nalloc
            , nmatter);                                   // nmatter
      end;

     {post components}
      sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLegalCode,'',true,'');

      // Create Creditor Control Entry
      PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
         , cMatterTotal
         , 0
         , qryAccount.FieldByName('REFNO').AsString, 'INVOICE'
         , qryAccount.FieldByName('NINVOICE').AsInteger
         , qryAccount.FieldByName('DESCR').AsString
         , sLedgerKey
         , ''
         , qryAccount.FieldByName('NINVOICE').AsInteger
         , sCreditorCode
         , TaxCode );

      {post components}
      sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedgerCode,'',true,'');

      PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
         , cTradeTotal
         , 0
         , qryAccount.FieldByName('REFNO').AsString, 'INVOICE'
         , qryAccount.FieldByName('NINVOICE').AsInteger
         , qryAccount.FieldByName('DESCR').AsString
         , sLedgerKey
         , ''
         , qryAccount.FieldByName('NINVOICE').AsInteger
         , sCreditorCode
         , TaxCode);

      if qryAccount.UpdatesPending then
         qryAccount.ApplyUpdates;

      if qryAllocs.UpdatesPending then
         qryAllocs.ApplyUpdates;

      CheckLedgerTotal;

      dmAxiom.uniInsight.Commit;

     // we need to commit prior to updating the invoice record. cannot update cached record.
      qryUpdateInvoice.ParamByName('LEGAL_CR_AMOUNT').AsFloat := cMatterTotal;
      qryUpdateInvoice.ParamByName('TRADE_CR_AMOUNT').AsFloat := cTradeTotal;
      qryUpdateInvoice.ParamByName('NINVOICE').AsInteger := qryAccount.FieldByName('NINVOICE').AsInteger;
      qryUpdateInvoice.ExecSQL;

   except
      on E: Exception do
      begin
         dmAxiom.uniInsight.Rollback;
         bPostingFailed := True;
         if qryAccount.UpdatesPending then
            qryAccount.CancelUpdates;
         if qryAllocs.UpdatesPending then
            qryAllocs.CancelUpdates;
         dmAxiom.uniInsight.Rollback;
      end;
   end;
end;

end.
