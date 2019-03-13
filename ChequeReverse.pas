unit ChequeReverse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ComCtrls, DBCtrls, OracleUniProvider, Uni, MemDS,
  DateTimeAccount, DBAccess, cxLookAndFeelPainters, cxMemo, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  EnforceCustomDateEdit, cxControls, cxContainer, cxEdit, cxLabel,
  cxDBLabel, cxGroupBox, Menus, cxGraphics, cxLookAndFeels, dxCore, cxDateUtils,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TfrmChequeReverse = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    dsCheque: TUniDataSource;
    qryChequeRV: TUniQuery;
    qryTransitems: TUniQuery;
    qryAllocs: TUniQuery;
    qryCheque: TUniQuery;
    qryInvoiceUpdate: TUniQuery;
    dtpReverse: TEnforceCustomDateEdit;
    btnOriginal: TcxButton;
    mlReason: TcxMemo;
    cxButton2: TcxButton;
    btnCancel: TcxButton;
    gbOriginal: TcxGroupBox;
    Label7: TLabel;
    cxDBLabel1: TcxDBLabel;
    Label1: TLabel;
    cxDBLabel2: TcxDBLabel;
    Label2: TLabel;
    cxDBLabel3: TcxDBLabel;
    Label3: TLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    Label4: TLabel;
    qryCreditorCheqReversal: TUniQuery;
    qryInvoice: TUniQuery;
    qryInvUpdate: TUniQuery;
    qryJnlAlloc: TUniQuery;
    qryJnlTransItem: TUniQuery;
    qryUpdateJournal: TUniQuery;
    qryJournalInsert: TUniQuery;
    qryJournal: TUniQuery;
    qryNmemoUpdate: TUniQuery;
    qryJnlAllocTrust: TUniQuery;
    qryNmemo: TUniQuery;
    ActionManager1: TActionManager;
    actOk: TAction;
    qryReceipt: TUniQuery;
    qryBankDepInsert: TUniQuery;
    qryReceiptRV: TUniQuery;
    qryReceiptUpdate: TUniQuery;
    qryTransItemRcpt: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOriginalClick(Sender: TObject);
    procedure actOkUpdate(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    procedure RvCheque(iOldNcheque : integer; dtReverse : TDateTime; sReason : string);

    function  IsGSTCheque(sTaxCode : String) : Boolean;
    function OKtoPost(nCheque: integer): Boolean;
    procedure RVInvoice(ANInvoice, ANCheque: integer);
    procedure RvReceipt(iOldNreceipt : integer; dtReverse : TDateTime; sReason : string);
  public
    procedure DisplayCheque(iNCheque : integer);

  end;

implementation

{$R *.DFM}

uses
  Axiomdata, MiscFunc,glComponentUtil;

procedure TfrmChequeReverse.DisplayCheque(iNCheque : integer);
begin
  with qryCheque do
  begin
    Close;
    ParamByName('NCHEQUE').AsInteger := iNCheque;
    Open;
    if IsEmpty then
      Self.Close
    else
    begin
//      Self.Show;
      btnOriginal.Visible := qryCheque.FieldByName('CREATED').AsDateTime >= dtpReverse.Properties.MinDate;
    end;
  end;
end;


procedure TfrmChequeReverse.FormShow(Sender: TObject);
begin
   dtpReverse.Date := Date();
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
   dtpReverse.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

{
  Added 31.10.2002  GG
  Allow user to change reverse date only if they have authority
}
   btnOriginal.Enabled:= dmAxiom.Security.Cheque.ChangeDate;
   dtpReverse.Enabled:= dmAxiom.Security.Cheque.ChangeDate;

   mlReason.SetFocus;
end;

procedure TfrmChequeReverse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryCheque.Close;
   qryAllocs.Close;
   qryTransItems.Close;

//  Self.Release;
end;

procedure TfrmChequeReverse.actOkExecute(Sender: TObject);
var
  bOKtoPost: Boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= (PostIntoLockedPeriod(dtpReverse.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    ZeroLedgerTotal;
    RvCheque(qryCheque.FieldByName('NCHEQUE').AsInteger, dtpReverse.Date, mlReason.Text);
//    Self.Close;
  end;
end;

procedure TfrmChequeReverse.actOkUpdate(Sender: TObject);
begin
   actOk.Enabled := (mlReason.Text <> '');
end;

procedure TfrmChequeReverse.btnCancelClick(Sender: TObject);
begin
//  Self.Close;
end;

procedure TfrmChequeReverse.btnOriginalClick(Sender: TObject);
begin
   dtpReverse.Date := qryCheque.FieldByName('CREATED').AsDateTime;
   mlReason.SetFocus;
end;
 
procedure TfrmChequeReverse.RvCheque(iOldNcheque : integer; dtReverse : TDateTime; sReason : string);
var
   iRvNcheque : integer;
   sRVChqno : string;
   bGLExists : boolean;
   iRevTotal : Currency;
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,sLedgerKeyDr : String;
   ANInvoice: integer;
begin
    { Reverses the Cheque specified by the iOldNcheque number }
   ZeroLedgerTotal;
   iRevTotal := 0;
   glComponentSetup := dmAxiom.getGlComponents;
   if OkToPost(iOldNcheque) then
   begin
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;

        // Create a new record
        with qryChequeRV do
        begin
//          iRvNcheque := GetSeqnum('NCHEQUE');
//       14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
          iRvNcheque := GetSequenceNumber('SQNC_NCHEQUE');
          ParamByName('NCHEQUE').AsInteger := iRvNcheque;
          sRVChqno := qryCheque.FieldByName('CHQNO').AsString + 'RV';
          ParamByName('CHQNO').AsString := sRVChqno;
          ParamByName('RVBY').AsString := dmAxiom.UserID;
          ParamByName('CREATED').AsDateTime := dtReverse;
          ParamByName('PRESENTED').AsDateTime := dtReverse;
          ParamByName('RECONDATE').AsDateTime := dtReverse;
          ParamByName('ACCT').AsString := qryCheque.FieldByName('ACCT').AsString;
          ParamByName('PAYEE').AsString := qryCheque.FieldByName('PAYEE').AsString;
          ParamByName('APPROVAL').AsString := qryCheque.FieldByName('APPROVAL').AsString;
          ParamByName('REQBY').AsString := qryCheque.FieldByName('REQBY').AsString;
          ParamByName('TRUST').AsString := qryCheque.FieldByName('TRUST').AsString;
          ParamByName('DESCR').AsString := sReason;
          ParamByName('AMOUNT').AsFloat := 0 - qryCheque.FieldByName('AMOUNT').AsCurrency;
          ExecSQL;
        end;

        // Now reverse the Transaction Items
        bGLExists := False;
        qryTransitems.Close;
        qryTransitems.ParamByName('NOWNER').AsInteger := iOldNcheque;
        qryTransitems.Open;

        while not qryTransitems.EOF do
        begin
           bGLExists := True;
    //       qryTransitems.Edit;
    //       qryTransitems.FieldByName('REFNO').AsString := qryCheque.FieldByName('CHQNO').AsString + 'CN';
    //       qryTransitems.FieldByName('RVDATE').AsDateTime := dtReverse;
    //       qryTransitems.Post;
           RvNaccount(qryTransitems, dtReverse, sRVChqno, sReason, 'CHEQUE', iRvNcheque);

           if qryTransitems.FieldByName('NINVOICE').AsInteger > 0 then
           begin
              // Reversing an invoice - reset the amount owing
              qryInvoiceUpdate.ParamByName('AMOUNT').AsCurrency := qryTransitems.FieldByName('AMOUNT').AsCurrency;
              {
                 Modified 6.12.2002 GG

                Um,  Yeah.  Great.  Almost Genius.  Pity it's wrong though, hey?

                 qryInvoiceUpdate.ParamByName('NCHEQUE').AsInteger := qryTransitems.FieldByName('NINVOICE').AsInteger;
              }
              qryInvoiceUpdate.ParamByName('NINVOICE').AsInteger := qryTransitems.FieldByName('NINVOICE').AsInteger;
              qryInvoiceUpdate.ExecSQL;
           end;
           qryTransitems.Next;
        end;

        // Now reverse the Allocs
        qryAllocs.Close;
        qryAllocs.ParamByName('NCHEQUE').AsInteger := iOldNcheque;
        qryAllocs.Open;
        while not qryAllocs.EOF do
        begin
          if qryAllocs.FieldByName('TRUST').AsString = 'T' then
          begin
            ANInvoice := TableInteger('CHEQREQ','NCHEQUE', iOldNcheque,'NINVOICE');
            if ANInvoice > 0 then
               RVInvoice(ANInvoice, iOldNcheque)
            else
               RvAlloc(qryAllocs, dtReverse, sRVChqno, sReason, iRvNcheque, 0, 0, 'TRUST_BAL', 'RV', 0, False, 'Y');
          end
          else
          begin
            RvAlloc(qryAllocs, dtReverse, sRVChqno, sReason, iRvNcheque, 0, 0, 'UNBILL_DISB', 'RV', 0, False, 'Y');
            if not bGLExists then
            begin
              // Create the reversing entries for the General Ledger
              if qryAllocs.FieldByName('TYPE').AsString = 'RF' then
              begin
                {post components}
                sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_DR'),'',true,'');

                PostLedger(dtReverse
                  , 0 - qryAllocs.FieldByName('AMOUNT').AsCurrency
                  , 0 - qryAllocs.FieldByName('TAX').AsCurrency
                  , sRVChqno
                  , 'CHEQUE'
                  , iRvNcheque
                  , mlReason.Text
                  , sLedgerKey
                  , qryCheque.FieldByName('REQBY').AsString
                  , -1
                  , ''
                  , qryAllocs.FieldByName('TAXCODE').AsString
                  , FALSE
                  , '0'
                  , qryAllocs.FieldByName('NALLOC').AsInteger
                  , qryAllocs.FieldByName('NMATTER').AsInteger
                  , 0
                  , False
                  , 0
                  , 0 - qryAllocs.FieldByName('TAX').AsCurrency);

                iRevTotal := iRevTotal + qryAllocs.FieldByName('AMOUNT').AsCurrency;

                if (IsGSTCheque(qryAllocs.FieldByName('TAXCODE').AsString)) then
                begin

                   {post components}
                   sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryAllocs.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                     PostLedger(dtReverse
                     , 0 - qryAllocs.FieldByName('TAX').AsCurrency
                     , 0
                     , sRVChqno
                     , 'CHEQUE'
                     , iRvNcheque
                     , mlReason.Text
                     , sLedgerKey
                     , ''
                     , -1
                     , ''
                     , qryAllocs.FieldByName('TAXCODE').AsString
                     , FALSE
                     , '0'
                     , qryAllocs.FieldByName('NALLOC').AsInteger
                     , qryAllocs.FieldByName('NMATTER').AsInteger);

                     iRevTotal := iRevTotal + qryAllocs.FieldByName('TAX').AsCurrency;
                end;
              end
              else
              begin
                 {post components}
                 sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR'),'',true,'');

                   PostLedger(dtReverse
                     , 0 - qryAllocs.FieldByName('AMOUNT').AsCurrency
                     , 0 - qryAllocs.FieldByName('TAX').AsCurrency
                     , sRVChqno
                     , 'CHEQUE'
                     , iRvNcheque
                     , mlReason.Text
                     , sLedgerKey
                     , qryCheque.FieldByName('REQBY').AsString
                     , -1
                     , ''
                     , qryAllocs.FieldByName('TAXCODE').AsString
                     , FALSE
                     , '0'
                     , qryAllocs.FieldByName('NALLOC').AsInteger
                     , qryAllocs.FieldByName('NMATTER').AsInteger
                     , 0
                     , False
                     , 0
                     , 0 - qryAllocs.FieldByName('TAX').AsCurrency);

                   iRevTotal := iRevTotal + qryAllocs.FieldByName('AMOUNT').AsCurrency;

                   if (IsGSTCheque(qryAllocs.FieldByName('TAXCODE').AsString)) then
                   begin
                     {post components}
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryAllocs.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                     PostLedger(dtReverse
                        , 0 - qryAllocs.FieldByName('TAX').AsCurrency
                        , 0
                        , sRVChqno
                        , 'CHEQUE'
                        , iRvNcheque
                        , mlReason.Text
                        , sLedgerKey
                        , ''
                        , -1
                        , ''
                        , qryAllocs.FieldByName('TAXCODE').AsString
                        , FALSE
                        , '0'
                        , qryAllocs.FieldByName('NALLOC').AsInteger
                        , qryAllocs.FieldByName('NMATTER').AsInteger);

                     iRevTotal := iRevTotal + qryAllocs.FieldByName('TAX').AsCurrency;
                   end;
               end;
            end;
          end;
          qryAllocs.Next;
        end;

        if (not bGLExists) and (qryCheque.FieldByName('TRUST').AsString <> 'T') then
        begin
          {post components}
          sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('BANK', 'ACCT', qryCheque.FieldByName('ACCT').AsString, 'CASH_AT_BANK'),'',true,'');

          // Create the Cash at Bank reversing entries for the General Ledger
          PostLedger(dtReverse
            , iRevTotal
            , 0
            , sRVChqno
            , 'CHEQUE'
            , iRVNCheque
            , mlReason.Text
            , sLedgerKey
            , qryCheque.FieldByName('REQBY').AsString
            , -1
            , ''
            , ''
            , FALSE
            , '0'
            , qryAllocs.FieldByName('NALLOC').AsInteger
            , qryAllocs.FieldByName('NMATTER').AsInteger);
          end;

        with qryCheque do
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

        qryCheque.ApplyUpdates;
    //    if qryTransitems.UpdatesPending then
    //      qryTransitems.ApplyUpdates;
    //    if qryAllocs.UpdatesPending then
    //      qryAllocs.ApplyUpdates;

        if not qryCheque.FieldByName('BANK_TRANSFER_NRECEIPT').IsNull then
        begin
           qryReceipt.Close;
           qryReceipt.ParamByName('nreceipt').AsInteger := qryCheque.FieldByName('BANK_TRANSFER_NRECEIPT').AsInteger;
           qryReceipt.Open;
           RvReceipt(qryCheque.FieldByName('BANK_TRANSFER_NRECEIPT').AsInteger, dtpReverse.Date, mlReason.Text);
        end;

        CheckLedgerTotal;

        dmAxiom.uniInsight.Commit;

        qryCheque.Close;
        qryTransitems.Close;
        qryAllocs.Close;
        ModalResult := mrOk;
    //    Self.Close;

      except
        On E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          MsgErr('Error reversing cheque:' + chr(13) + chr(13) + E.Message);
        end;
      end;
   end;
end;

function TfrmChequeReverse.IsGSTCheque(sTaxCode : String) : Boolean;
begin
  Result := ((sTaxCode <> 'NOTAX') AND (sTaxCode <> 'GSTNC'));
end;

function TfrmChequeReverse.OKtoPost(nCheque: integer): Boolean;
var
   sTmp : String;
   bOKtoPost: boolean;
begin
   bOKtoPost:= True;
   sTmp := '';
   if TableString('CHEQUE','NCHEQUE',nCheque ,'REVERSED') = 'Y' then
      sTmp := sTmp + '       This cheque has already been reversed.' + #13;

   if sTmp <> '' then
   begin
      MsgInfo('Cheque posting ERROR:    ' + #13 + #13 + sTmp);
      bOKtoPost := False
   end;

   OKtoPost := bOKtoPost;
end;

procedure TfrmChequeReverse.RVInvoice(ANInvoice, ANCheque: integer);
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

         qryJournalInsert.ParamByName('CREATED').AsDateTime := dtpReverse.Date;
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
            RvNaccount(qryJnlTransItem, dtpReverse.Date, qryCheque.FieldByName('NJOURNAL').AsString, mlReason.Text, 'JOURNAL', liInvoiceNum);
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
            qryAllocs.Close;
            qryAllocs.ParamByName('NCHEQUE').AsInteger := ANCheque; //qryJournal.FieldByName('NCHEQUE').AsInteger;
            qryAllocs.Open;
            while (not qryAllocs.EOF) do
            begin
               if qryAllocs.FieldByName('TYPE').AsString = 'J1' then
                  sLedger := 'DEBTORS'
               else if qryAllocs.FieldByName('TYPE').AsString = 'J2' then
                  sLedger := 'UNBILL_DISB'
               else if qryAllocs.FieldByName('TYPE').AsString = 'J3' then
                  sLedger := 'TRUST_BAL';

               RvAlloc(qryAllocs, dtpReverse.Date, IntToStr(ANCheque), mlReason.Text, 0, 0, ANCheque, sLedger, qryAllocs.FieldByName('TYPE').AsString);
               qryAllocs.Next;
            end;

            // Now reverse the journal in Allocs
            qryJnlAllocTrust.Close;
            qryJnlAllocTrust.ParamByName('NJOURNAL').AsInteger := qryJournal.FieldByName('NJOURNAL').AsInteger;
            qryJnlAllocTrust.ParamByName('NMEMO').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
            qryJnlAllocTrust.Open;
            while not qryJnlAllocTrust.EOF do
            begin
              RvAlloc(qryJnlAllocTrust, dtpReverse.Date, qryJournal.FieldByName('NJOURNAL').AsString, mlReason.Text, 0, 0, qryJournal.FieldByName('NJOURNAL').AsInteger, 'UNBILL_DISB', 'J1', liInvoiceNum);
              qryJnlAllocTrust.Next;
            end;

         end;
         dmAxiom.uniInsight.Commit;
         qryJournal.Close;
         Close;
      end;
   except
      On E: Exception do
      begin
         dmAxiom.uniInsight.Rollback;
         MsgErr('Error reversing Invoice:' + #13 + #13 + E.Message);
      end;
   end;
end;

procedure TfrmChequeReverse.RvReceipt(iOldNreceipt : integer; dtReverse : TDateTime; sReason : string);
var
  iRvNreceipt, iRvBankdep: integer;
  Amount: Currency;
  FeesTax, DisbTax, AntdTax, UpCredTax, SundTax: Currency;
  FeeDistAmt, TotalFeeDistAmt: Currency;
  FeeDistCount, TotalFeeDistCount: integer;
begin
   ZeroLedgerTotal;

   { Reverses the Receipt specified by the iOldNReceipt number }
   if not qryReceipt.IsEmpty then
   begin
      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         // If it is banked, reverse the entry and reconcile it
         iRvBankdep := 0;
         iRvNreceipt := 0;
         if qryReceipt.FieldByName('BANKED').AsString = 'Y' then
         begin
            with qryBankdepInsert do
            begin
               ParamByName('ACCT').AsString := qryReceipt.FieldByName('ACCT').AsString;
               ParamByName('DEPOSIT_DATE').AsDateTime := dtpReverse.Date;
               ParamByName('AMOUNT').AsFloat := 0 - qryReceipt.FieldByName('AMOUNT').AsCurrency;
               ParamByName('LAST_NRECEIPT').AsInteger := iRvNreceipt;
               iRvBankdep := TableInteger('BANK', 'ACCT', qryReceipt.FieldByName('ACCT').AsString, 'NBANKDEP') + 1;
               ParamByName('NBANKDEP').AsInteger := iRvBankdep;
               ParamByName('RECONCILED').AsString := 'Y';
               ParamByName('RECONDATE').AsDateTime := dtpReverse.Date;

               ExecSQL;
         end;
         with dmAxiom.qryTmp do
         begin
            SQL.Text := 'UPDATE BANK SET NBANKDEP = (NBANKDEP + 1) WHERE ACCT = '+
                        QuotedStr(qryReceipt.FieldByName('ACCT').AsString);
            ExecSQL;
         end;

         // If this was a bank deposit all by itself, reconcile it now
         with dmAxiom.qryTmp do
         begin
            SQL.Clear;
            SQL.Add('UPDATE BANKDEP');
            SQL.Add('SET RECONCILED = ''Y'', RECONDATE = :RECONDATE');
            SQL.Add('WHERE ACCT = ' + QuotedStr(qryReceipt.FieldByName('ACCT').AsString));
            SQL.Add('  AND NBANKDEP = ' + QuotedStr(qryReceipt.FieldByName('NBANKDEP').AsString));
            SQL.Add('  AND AMOUNT = :AMOUNT');
            ParamByName('RECONDATE').AsDateTime := Trunc(dtpReverse.Date);
            ParamByName('AMOUNT').AsCurrency := qryReceipt.FieldByName('AMOUNT').AsCurrency;
            ExecSQL;
         end;
      end;

      // Make a reversal copy of this record
      with qryReceiptRV do
      begin
         iRvNreceipt := GetSequenceNumber('SQNC_NRECEIPT');
         ParamByName('CREATED').AsDateTime := dtReverse;
         ParamByName('ACCT').AsString := qryReceipt.FieldByName('ACCT').AsString;
         ParamByName('RCPTNO').AsString := qryReceipt.FieldByName('RCPTNO').AsString + 'RV';
         ParamByName('AMOUNT').AsFloat := 0 - qryReceipt.FieldByName('AMOUNT').AsCurrency;
         ParamByName('PAYOR').AsString := qryReceipt.FieldByName('PAYOR').AsString;
         ParamByName('DRAWER').AsString := qryReceipt.FieldByName('DRAWER').AsString;
         ParamByName('BANK').AsString := qryReceipt.FieldByName('BANK').AsString;
         ParamByName('BRANCH').AsString := qryReceipt.FieldByName('BRANCH').AsString;
         ParamByName('CHQNO').AsString := qryReceipt.FieldByName('CHQNO').AsString;
         ParamByName('RVBY').AsString := dmAxiom.UserID;
         ParamByName('CCTYPE').AsString := qryReceipt.FieldByName('CCTYPE').AsString;
         ParamByName('BANKED').AsString := 'Y';
         ParamByName('CLEARED').AsString := qryReceipt.FieldByName('CLEARED').AsString;
         ParamByName('NRECEIPT').AsInteger := iRvNreceipt;
         ParamByName('TRUST').AsString := qryReceipt.FieldByName('TRUST').AsString;
         ParamByName('DESCR').AsString := sReason;
         ParamByName('REVERSED_DATE').AsDateTime := dtReverse;
         ParamByName('RV_NRECEIPT').AsInteger := iOldNreceipt;
         if iRvBankdep <> 0 then
            ParamByName('NBANKDEP').AsInteger := iRvBankdep;
         ExecSQL;
      end;

      with qryReceiptUpdate do
      begin
         ParamByName('RV_NRECEIPT').AsInteger := iRvNreceipt;
         ParamByName('NRECEIPT').AsInteger := iOldNreceipt;
         ExecSQL;
      end;

      // Now reverse the Transaction items
      with qryTransItemRcpt do
      begin
         Close;
         ParamByName('NOWNER').AsInteger := iOldNReceipt;
         Open;
         while not EOF do
         begin
//            UpdateLedgerTotal(qryTransItemRcpt.FieldByName('AMOUNT').AsCurrency);
            RvNaccount(qryTransItemRcpt, dtReverse, qryReceipt.FieldByName('RCPTNO').AsString + 'RV', sReason,
                     'RECEIPT', iRvNReceipt);
            Next;
         end;
      end;

      with qryReceipt do
      begin
        Edit;
        FieldByName('REVERSED').AsString := 'Y';
        FieldByName('BANKED').AsString := 'Y';
        FieldByName('RCPTNO').AsString := FieldByName('RCPTNO').AsString + 'CN';
        FieldByName('SUFCHQ').AsInteger := 1;
        FieldByName('RVBY').AsString := dmAxiom.UserID;
        Post;
      end;

      qryReceipt.ApplyUpdates;

      CheckLedgerTotal;

//      dmAxiom.uniInsight.Commit;

      qryReceipt.Close;
      qryTransitems.Close;
      qryAllocs.Close;

      Self.Close;
    except
      On E: Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        MsgErr('Error reversing receipt:' + chr(13) + chr(13) + E.Message);
      end;
    end;
  end;
end;


end.
