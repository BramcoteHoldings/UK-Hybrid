unit ChequeRev;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TdmChequeRev = class(TDataModule)
    qryTransItemChq: TUniQuery;
    qryChequeRV: TUniQuery;
    qryChequeOrigRev: TUniQuery;
    qryTransitems: TUniQuery;
    qryAllocRev: TUniQuery;
    qryJnlAllocTrust: TUniQuery;
    qryJournal: TUniQuery;
    qryInvoice: TUniQuery;
    qryInvoiceUpdate: TUniQuery;
    qryInvUpdate: TUniQuery;
    qryCheque: TUniQuery;
    qryJournalInsert: TUniQuery;
    qryUpdateJournal: TUniQuery;
    qryJnlTransItem: TUniQuery;
    qryNmemo: TUniQuery;
    qryNmemoUpdate: TUniQuery;
  private
    { Private declarations }
    FdReverseDate: TDateTime;
    FReason: string;
    FnNMemo: integer;
    FnNMatter: integer;

    function  IsGSTCheque(sTaxCode : String) : Boolean;
  public
    { Public declarations }
    property dReverseDate: TDateTime read FdReverseDate write FdReverseDate;
    property sReason: string read FReason write FReason;
    property nNMemo: integer read FnNMemo write FnNMemo;
    property nNMatter: integer read FnNMatter write FnNMatter;

    procedure RVInvoice(ANInvoice, ANCheque: integer);
    procedure RvCheque(iOldNcheque : integer; dtReverse : TDateTime; sReason : string;
                       iNMemo: integer = -1 );
  end;

var
  dmChequeRev: TdmChequeRev;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses axiomdata, miscfunc, glComponentUtil;

procedure TdmChequeRev.RVInvoice(ANInvoice, ANCheque: integer);
var
  sLedger      : string;
  iRvNcheque   : Integer;
  liInvoiceNum : Integer;
  nJournal     : Integer;
begin
   try
      if ANInvoice > 0 then
      begin
         qryInvoice.Close;
         qryInvoice.ParamByName('NINVOICE').AsInteger := ANInvoice;
         qryInvoice.Open;

         // need to update original transaction
         qryInvUpdate.Close;
         // AES 14/09/2009changed this to use the cheque amount that is being reversed rather than the invoice amount as before
         qryInvUpdate.ParamByName('PAMOUNT').AsCurrency := qryCheque.FieldByName('AMOUNT').AsCurrency;
         qryInvUpdate.ParamByName('NINVOICE').AsInteger := ANInvoice;
         qryInvUpdate.ExecSQL;

         // need to reverse original journal
         qryJournal.Close;
         qryJournal.ParamByName('ENTITY').AsString := dmAxiom.Entity;
         qryJournal.ParamByName('NJOURNAL').AsInteger := qryCheque.FieldByName('NJOURNAL').AsInteger;
         qryJournal.Open;

         nJournal:= GetJournal;

         qryJournalInsert.ParamByName('CREATED').AsDateTime := dReverseDate;
         qryJournalInsert.ParamByName('ACCT').AsString := dmAxiom.Entity;
         qryJournalInsert.ParamByName('NJOURNAL').AsInteger := nJournal;
         qryJournalInsert.ParamByName('AMOUNT').AsFloat := qryInvoice.FieldByName('AMOUNT').AsCurrency;
         qryJournalInsert.ParamByName('REASON').AsString := 'Reversal of ' + qryJournal.FieldByName('REASON').AsString;
         qryJournalInsert.ParamByName('TRUST').AsString := qryJournal.FieldByName('TRUST').AsString;
         qryJournalInsert.ParamByName('REV_NJOURNAL').AsInteger := 0;
         qryJournalInsert.ParamByName('NMEMO').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
         qryJournalInsert.ParamByName('REFNO').AsString := qryJournal.FieldByName('REFNO').AsString;
         qryJournalInsert.ParamByName('TYPE').AsString := qryJournal.FieldByName('TYPE').AsString;
         qryJournalInsert.ParamByName('ENTITY').AsString := dmAxiom.Entity;
         qryJournalInsert.ExecSQL;

         // update the original journal record with the rev_njournal number
         qryUpdateJournal.ParamByName('REV_NJOURNAL').AsInteger:= nJournal;
         qryUpdateJournal.ParamByName('NJOURNAL').AsInteger:= qryJournal.FieldByName('NJOURNAL').AsInteger;
         qryUpdateJournal.ExecSQL;
         qryUpdateJournal.Close;

         // Now reverse the Transaction Items
         qryJnlTransItem.Close;
         qryJnlTransItem.ParamByName('NOWNER').AsInteger := qryCheque.FieldByName('NJOURNAL').AsInteger;
         qryJnlTransItem.Open;
         while not qryJnlTransItem.EOF do
         begin
            RvNaccount(qryJnlTransItem, dReverseDate, qryCheque.FieldByName('NJOURNAL').AsString, sReason, 'JOURNAL', liInvoiceNum);
            qryJnlTransItem.Next;
         end;

{         // Now reverse the Allocs
         qryJnlAlloc.Close;
         qryJnlAlloc.ParamByName('NJOURNAL').AsInteger := qryCheque.FieldByName('NJOURNAL').AsInteger;
         qryJnlAlloc.Open;
         while not qryJnlAlloc.EOF do
         begin
           RvAlloc(qryJnlAlloc, dtpReverse.Date, qryCheque.FieldByName('NJOURNAL').AsString, mlReason.Text, 0, 0, 0, 'UNBILL_DISB', 'RV', liInvoiceNum);
           qryJnlAlloc.Next;
         end;                       }

         if (qryJournal.FieldByName('NMEMO').AsInteger > 0) then
         begin
            // only impact nmemo if the creditor part of bill has been paid otherwise bill goes crazy
            qryNmemo.Close;
            qryNmemo.ParamByName('nmemo').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
            qryNmemo.Open;
            if (qryNmemo.FieldByName('UPCRED_PAID').AsCurrency > 0) then
            begin
               qryNmemoUpdate.ParamByName('NMEMO').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
//               qryNmemoUpdate.ParamByName('UPCRED').AsCurrency := qryInvoice.FieldByName('AMOUNT').AsCurrency - qryInvoice.FieldByName('TAX').AsCurrency;
               qryNmemoUpdate.ParamByName('UPCREDPAID').AsCurrency := qryInvoice.FieldByName('AMOUNT').AsCurrency - qryInvoice.FieldByName('TAX').AsCurrency;
//               qryNmemoUpdate.ParamByName('UPCREDTAX').AsCurrency := qryInvoice.FieldByName('TAX').AsCurrency;
               qryNmemoUpdate.ParamByName('UPCREDTAX_PAID').AsCurrency := qryInvoice.FieldByName('TAX').AsCurrency;
               qryNmemoUpdate.ParamByName('TAX_PAID').AsCurrency := qryInvoice.FieldByName('TAX').AsCurrency;
               qryNmemoUpdate.ExecSQL;
            end;
            qryNmemo.Close;

            // Now reverse the trust cheque from Allocs
            qryAllocRev.Close;
            qryAllocRev.ParamByName('NCHEQUE').AsInteger := ANCheque;
            qryAllocRev.ParamByName('NMATTER').Clear;
            if (nNMatter <> 0) then
               qryAllocRev.ParamByName('NMATTER').AsInteger := nNMatter;
            qryAllocRev.Open;
            while (not qryAllocRev.EOF) do
            begin
               if qryAllocRev.FieldByName('TYPE').AsString = 'J1' then
                  sLedger := 'DEBTORS'
               else if qryAllocRev.FieldByName('TYPE').AsString = 'J2' then
                  sLedger := 'UNBILL_DISB'
               else if qryAllocRev.FieldByName('TYPE').AsString = 'J3' then
                  sLedger := 'TRUST_BAL';

               RvAlloc(qryAllocRev, dReverseDate, IntToStr(ANCheque), sReason, 0, 0, ANCheque, sLedger, qryAllocRev.FieldByName('TYPE').AsString);
               qryAllocRev.Next;
            end;

            // Now reverse the journal in Allocs
            qryJnlAllocTrust.Close;
            qryJnlAllocTrust.ParamByName('NJOURNAL').AsInteger := qryJournal.FieldByName('NJOURNAL').AsInteger;
            qryJnlAllocTrust.ParamByName('NMEMO').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
            qryJnlAllocTrust.Open;
            while not qryJnlAllocTrust.EOF do
            begin
              RvAlloc(qryJnlAllocTrust, dReverseDate, qryJournal.FieldByName('NJOURNAL').AsString, sReason, 0, 0, qryJournal.FieldByName('NJOURNAL').AsInteger, 'UNBILL_DISB', 'J1', liInvoiceNum);
              qryJnlAllocTrust.Next;
            end;

         end;
         dmAxiom.uniInsight.Commit;
         qryJournal.Close;
      end;
   except
      On E: Exception do
      begin
         dmAxiom.uniInsight.Rollback;
         MsgErr('Error reversing Invoice:' + #13 + #13 + E.Message);
      end;
   end;
end;

procedure TdmChequeRev.RvCheque(iOldNcheque : integer; dtReverse : TDateTime; sReason : string;
                                iNMemo: integer = -1 );
var
   iRvNcheque : integer;
   sRVChqno : string;
   bGLExists : boolean;
   iRevTotal : Currency;
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,sLedgerKeyDr : String;
   ANInvoice,
   lNewNAlloc: integer;
begin
    { Reverses the Cheque specified by the iOldNcheque number }
   ZeroLedgerTotal;
   iRevTotal := 0;
   glComponentSetup := dmAxiom.getGlComponents;
   try
      if dmAxiom.uniInsight.InTransaction then
          dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

      with qryChequeOrigRev do
      begin
         close;
         ParamByName('ncheque').AsInteger := iOldNcheque;
         Open;
      end;

      // Create a new record
      with qryChequeRV do
      begin
         iRvNcheque := GetSequenceNumber('SQNC_NCHEQUE');
         ParamByName('NCHEQUE').AsInteger := iRvNcheque;
         sRVChqno := qryChequeOrigRev.FieldByName('CHQNO').AsString + 'RV';
         ParamByName('CHQNO').AsString := sRVChqno;
         ParamByName('RVBY').AsString := dmAxiom.UserID;
         ParamByName('CREATED').AsDateTime := dtReverse;
         ParamByName('PRESENTED').AsDateTime := dtReverse;
         ParamByName('RECONDATE').AsDateTime := dtReverse;
         ParamByName('ACCT').AsString := qryChequeOrigRev.FieldByName('ACCT').AsString;
         ParamByName('PAYEE').AsString := qryChequeOrigRev.FieldByName('PAYEE').AsString;
         ParamByName('APPROVAL').AsString := qryChequeOrigRev.FieldByName('APPROVAL').AsString;
         ParamByName('REQBY').AsString := qryChequeOrigRev.FieldByName('REQBY').AsString;
         ParamByName('TRUST').AsString := qryChequeOrigRev.FieldByName('TRUST').AsString;
         ParamByName('DESCR').AsString := sReason;
         ParamByName('AMOUNT').AsFloat := 0 - qryChequeOrigRev.FieldByName('AMOUNT').AsCurrency;
         ExecSQL;
      end;

      // Now reverse the Transaction Items
      bGLExists := False;
      qryTransItemChq.Close;
      qryTransItemChq.ParamByName('NOWNER').AsInteger := iOldNcheque;
      qryTransItemChq.Open;

      while not qryTransItemChq.EOF do
      begin
         bGLExists := True;
         RvNaccount(qryTransItemChq, dtReverse, sRVChqno, sReason, 'CHEQUE', iRvNcheque);

         qryTransItemChq.Next;
      end;

      // Now reverse the Allocs
      qryAllocRev.Close;
      qryAllocRev.ParamByName('NCHEQUE').AsInteger := iOldNcheque;
      qryAllocRev.ParamByName('NMATTER').Clear;
      if (FnNMatter <> 0) then
         qryAllocRev.ParamByName('NMATTER').AsInteger := FnNMatter;
      qryAllocRev.Open;
      while not qryAllocRev.EOF do
      begin
         if qryAllocRev.FieldByName('TRUST').AsString = 'T' then
         begin
            ANInvoice := TableInteger('CHEQREQ','NCHEQUE', iOldNcheque,'NINVOICE');
            if ANInvoice > 0 then
               RVInvoice(ANInvoice, iOldNcheque)
            else
               lNewNAlloc := RvAlloc(qryAllocRev, dtReverse, sRVChqno, sReason, iRvNcheque, 0, 0, 'TRUST_BAL', 'RV', 0, False, 'Y');
         end
         else
         begin
            lNewNAlloc := RvAlloc(qryAllocRev, dtReverse, sRVChqno, sReason, iRvNcheque, 0, 0, 'UNBILL_DISB', 'RV', 0, False, 'Y');
            if not bGLExists then
            begin
               // Create the reversing entries for the General Ledger
               if qryAllocRev.FieldByName('TYPE').AsString = 'RF' then
               begin
                  {post components}
                  sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_DR'),'',true,'');

                  PostLedger(dtReverse
                     , 0 - qryAllocRev.FieldByName('AMOUNT').AsCurrency
                     , 0 - qryAllocRev.FieldByName('TAX').AsCurrency
                     , sRVChqno
                     , 'CHEQUE'
                     , iRvNcheque
                     , sReason
                     , sLedgerKey
                     , qryCheque.FieldByName('REQBY').AsString
                     , -1
                     , ''
                     , qryAllocRev.FieldByName('TAXCODE').AsString
                     , FALSE
                     , '0'
                     , qryAllocRev.FieldByName('NALLOC').AsInteger
                     , qryAllocRev.FieldByName('NMATTER').AsInteger
                     , 0
                     , False
                     , 0
                     , 0 - qryAllocRev.FieldByName('TAX').AsCurrency);

                  iRevTotal := iRevTotal + qryAllocRev.FieldByName('AMOUNT').AsCurrency;

                  if (IsGSTCheque(qryAllocRev.FieldByName('TAXCODE').AsString)) then
                  begin
                  {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryAllocRev.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                     PostLedger(dtReverse
                        , 0 - qryAllocRev.FieldByName('TAX').AsCurrency
                        , 0
                        , sRVChqno
                        , 'CHEQUE'
                        , iRvNcheque
                        , sReason
                        , sLedgerKey
                        , ''
                        , -1
                        , ''
                        , qryAllocRev.FieldByName('TAXCODE').AsString
                        , FALSE
                        , '0'
                        , qryAllocRev.FieldByName('NALLOC').AsInteger
                        , qryAllocRev.FieldByName('NMATTER').AsInteger);

                     iRevTotal := iRevTotal + qryAllocRev.FieldByName('TAX').AsCurrency;
                  end;
               end
               else
               begin
                  {post components}
                  sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR'),'',true,'');

                  PostLedger(dtReverse
                     , 0 - qryAllocRev.FieldByName('AMOUNT').AsCurrency
                     , 0 - qryAllocRev.FieldByName('TAX').AsCurrency
                     , sRVChqno
                     , 'CHEQUE'
                     , iRvNcheque
                     , sReason
                     , sLedgerKey
                     , qryChequeRv.FieldByName('REQBY').AsString
                     , -1
                     , ''
                     , qryAllocRev.FieldByName('TAXCODE').AsString
                     , FALSE
                     , '0'
                     , qryAllocRev.FieldByName('NALLOC').AsInteger
                     , qryAllocRev.FieldByName('NMATTER').AsInteger
                     , 0
                     , False
                     , 0
                     , 0 - qryAllocRev.FieldByName('TAX').AsCurrency);

                     iRevTotal := iRevTotal + qryAllocRev.FieldByName('AMOUNT').AsCurrency;

                  if (IsGSTCheque(qryAllocRev.FieldByName('TAXCODE').AsString)) then
                  begin
                     {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryAllocRev.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                     PostLedger(dtReverse
                        , 0 - qryAllocRev.FieldByName('TAX').AsCurrency
                        , 0
                        , sRVChqno
                        , 'CHEQUE'
                        , iRvNcheque
                        , sReason
                        , sLedgerKey
                        , ''
                        , -1
                        , ''
                        , qryAllocRev.FieldByName('TAXCODE').AsString
                        , FALSE
                        , '0'
                        , qryAllocRev.FieldByName('NALLOC').AsInteger
                        , qryAllocRev.FieldByName('NMATTER').AsInteger);

                        iRevTotal := iRevTotal + qryAllocRev.FieldByName('TAX').AsCurrency;
                  end;
               end;
            end;
         end;
         if (iNMemo > 0) then
         begin
            with dmAxiom.qryTmp do
            begin
               Close;
               SQL.Text := 'UPDATE ALLOC SET NMEMO = :NMEMO, BILLED = ''Y'' ' +
                           'WHERE NALLOC = :NALLOC ';
               ParamByName('NALLOC').AsInteger := lNewNAlloc;
               ParamByName('NMEMO').AsInteger := iNMemo;
               ExecSql;
               Close;
            end;
         end;
         qryAllocRev.Next;
      end;

      with qryChequeOrigRev do
      begin
         Edit;
         FieldByName('REVERSED').AsString := 'Y';
         FieldByName('CHQNO').AsString :=   FieldByName('CHQNO').AsString + 'CN';
         FieldByName('SUFCHQ').AsInteger := 1;
         FieldByName('RVBY').AsString := dmAxiom.UserID;
         FieldByName('PRESENTED').AsDateTime := dtReverse;
         FieldByName('RECONDATE').AsDateTime := dtReverse;
         Post;
      end;

     // unconvert any cheqreq with this cheque number
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'UPDATE CHEQREQ SET CONVERTED = ''N'',NCHEQUE = null ' +
                     'WHERE NCHEQUE = :NCHEQUE ' +
                     'AND CONVERTED = ''Y''';
         ParamByName('NCHEQUE').AsInteger := iOldNcheque;
         ExecSql;
         Close;
      end;

      qryChequeOrigRev.ApplyUpdates;

      CheckLedgerTotal;

      qryChequeOrigRev.Close;
      qryTransitems.Close;
      qryAllocRev.Close;
   except
      On E: Exception do
      begin
         dmAxiom.uniInsight.Rollback;
         MsgErr('Error reversing cheque:' + chr(13) + chr(13) + E.Message);
      end;
   end;
end;

function TdmChequeRev.IsGSTCheque(sTaxCode : String) : Boolean;
begin
  Result := ((sTaxCode <> 'NOTAX') AND (sTaxCode <> 'GSTNC'));
end;


end.
