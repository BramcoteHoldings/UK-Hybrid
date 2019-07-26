unit JournalReverse;

interface
            { 20 Nov 2017 DW - added ENTITY / ACCT parameter into AllocJournal qry to avoid reversing journals in another entity}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, DBCtrls, Db, OracleUniProvider, Uni, DBAccess, MemDS,
  DateTimeAccount, cxLookAndFeelPainters, cxMemo, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, EnforceCustomDateEdit, cxButtons, cxControls,
  cxContainer, cxEdit, cxLabel, cxDBLabel, cxGroupBox, Menus, cxGraphics,
  cxLookAndFeels, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TfrmJournalReverse = class(TForm)
    qryJournal: TUniQuery;
    dsJournal: TUniDataSource;
    qryJournalInsert: TUniQuery;
    qryTransItems: TUniQuery;
    qryTransItemInsert: TUniQuery;
    qryAllocs: TUniQuery;
    qryUpdateJournal: TUniQuery;
    qryUpdateTransItem: TUniQuery;
    btnOriginal: TcxButton;
    dtpReverse: TEnforceCustomDateEdit;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    tbReason: TcxMemo;
    qryNmemoUpdate: TUniQuery;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    qryJournalTotal: TUniQuery;
    dsJournalTotal: TUniDataSource;
    qryAllocInsert: TUniQuery;
    qryAllocJournal: TUniQuery;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOriginalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayJournal(NJournal: integer; NMemo: integer = 0; Acct: string = '');
  end;

var
  frmJournalReverse: TfrmJournalReverse;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmJournalReverse.DisplayJournal(NJournal, NMemo : integer; Acct: string);
begin
   with qryJournal do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT ACCT, NJOURNAL, CREATED, REASON, AMOUNT, TRUST, REFNO, NMEMO, TYPE '+
                  'FROM JOURNAL WHERE (ACCT = :ENTITY )' +
//                  OR ACCT IN (SELECT ACCT FROM BANK WHERE ENTITY = :ENTITY)) '+
                  'AND NJOURNAL = :NJOURNAL ';
      if (NMemo > 0) then
      begin
         SQL.Text := SQL.Text + 'UNION '+
                                'SELECT ACCT, NJOURNAL, CREATED, REASON, AMOUNT, TRUST, REFNO, NMEMO, TYPE '+
                                'FROM JOURNAL WHERE (ACCT = :ENTITY )'+
//                                OR ACCT IN (SELECT ACCT FROM BANK WHERE ENTITY = :ENTITY)) '+
                                'AND NMEMO= :NMEMO ';
         ParamByName('NMEMO').AsInteger := NMemo;
      end;
      ParamByName('ENTITY').AsString := Acct;
      ParamByName('NJOURNAL').AsInteger := NJournal;
      Open;
      if IsEmpty then
         Self.Close
      else
      begin
         qryJournalTotal.Close;
         qryJournalTotal.ParamByName('ENTITY').AsString := Acct;
         qryJournalTotal.ParamByName('NJOURNAL').AsInteger := NJournal;
         qryJournalTotal.ParamByName('NMEMO').Clear;
         if (qryJournal.FieldByName('NMEMO').AsInteger > 0) then
            qryJournalTotal.ParamByName('NMEMO').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
         qryJournalTotal.Open;
         if qryJournal.FieldByName('NMEMO').AsInteger > 0 then
            MsgInfo('This action will reverse the complete write-off.');
         Self.ShowModal;
      end;
   end;
end;

procedure TfrmJournalReverse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryJournal.Close;
  qryAllocs.Close;
  qryTransItems.Close;

  Self.Release;
end;

procedure TfrmJournalReverse.FormShow(Sender: TObject);
begin
  dtpReverse.Date := Now;
  tbReason.SetFocus;

  dtpReverse.Properties.MaxDate := Date;
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpReverse.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

{
  Added 24.10.2002  GG
  Allow user to change reverse date only if they have authority
}
  btnOriginal.Enabled:= dmAxiom.Security.Journal.ChangeDate;
  dtpReverse.Enabled:= dmAxiom.Security.Journal.ChangeDate;
end;

procedure TfrmJournalReverse.btnOKClick(Sender: TObject);
var
  sLedger : string;
  nJournal: Integer;
begin
{ Reverses the current Journal }
  if PostIntoLockedPeriod(dtpReverse.Date) in [prNotLocked, prOKToProceed] then
  begin
    try
      Screen.Cursor := crSQLWait;
      Application.ProcessMessages;
      dmAxiom.uniInsight.StartTransaction;
      if not qryJournal.IsEmpty then
      begin
//        dmAxiom.uniInsight.StartTransaction;
        // Create a new record
        nJournal:= GetJournal;

        qryJournalInsert.ParamByName('CREATED').AsDateTime := dtpReverse.Date;
        qryJournalInsert.ParamByName('ACCT').AsString := qryJournal.FieldByName('ACCT').AsString;
        qryJournalInsert.ParamByName('NJOURNAL').AsInteger := nJournal;
        qryJournalInsert.ParamByName('AMOUNT').AsFloat := qryJournalTotal.FieldByName('AMOUNT').AsCurrency;
        qryJournalInsert.ParamByName('REASON').AsString := tbReason.Text;
        qryJournalInsert.ParamByName('TRUST').AsString := qryJournal.FieldByName('TRUST').AsString;
        qryJournalInsert.ParamByName('REV_NJOURNAL').AsInteger := 0; //qryJournal.FieldByName('NJOURNAL').AsInteger;
        qryJournalInsert.ParamByName('NMEMO').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
        qryJournalInsert.ParamByName('REFNO').AsString := qryJournal.FieldByName('REFNO').AsString;
        qryJournalInsert.ParamByName('TYPE').AsString := qryJournal.FieldByName('TYPE').AsString;
        qryJournalInsert.ParamByName('ENTITY').AsString := dmAxiom.Entity;
        qryJournalInsert.ParamByName('TRAN_TYPE').AsString := 'C';
        qryJournalInsert.ExecSQL;

        // update the original journal record with the rev_njournal number
        qryUpdateJournal.ParamByName('REV_NJOURNAL').AsInteger := nJournal;
        qryUpdateJournal.ParamByName('NJOURNAL').AsInteger     := qryJournal.FieldByName('NJOURNAL').AsInteger;
        qryUpdateJournal.ParamByName('NMEMO').Clear;
        if (qryJournal.FieldByName('NMEMO').AsInteger > 0) then
           qryUpdateJournal.ParamByName('NMEMO').AsInteger     := qryJournal.FieldByName('NMEMO').AsInteger;
        qryUpdateJournal.ParamByName('ACCT').AsString          := qryJournal.FieldByName('ACCT').AsString;
        qryUpdateJournal.ParamByName('TRAN_TYPE').AsString     := 'R';
        qryUpdateJournal.ExecSQL;
        qryUpdateJournal.Close;

        {if True then
        begin
           with qryAllocInsert do
           begin
              if qryLedger.FieldByName('DEBIT').AsCurrency > 0 then
              begin
                  ParamByName('AMOUNT').AsFloat := qryLedger.FieldByName('DEBIT').AsFloat;
                  ParamByName('TAX').AsFloat := qryLedger.FieldByName('TAX').AsFloat;
              end
              else
              begin
                  ParamByName('AMOUNT').AsFloat := qryLedger.FieldByName('CREDIT').AsCurrency;
                  ParamByName('TAX').AsFloat := qryLedger.FieldByName('TAX').AsCurrency;
              end;
              ParamByName('ACCT').AsString := dmAxiom.Entity;
              ParamByName('CREATED').AsDateTime := dtpReverse.Date;
              ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
              ParamByName('REFNO').AsString := IntToStr(nJournal);
              ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
              ParamByName('NJOURNAL').AsInteger := nJournal;
              ParamByName('TYPE').AsString := 'J' + qryJournal.FieldByName('TYPE').AsString;
              ParamByName('PAYER').AsString := 'Journal ' + IntToStr(nJournal);
              ParamByName('DESCR').AsString := tbReason.Text;
              ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
              ParamByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
              ParamByName('CLIENT_NAME').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'TITLE');
              ParamByName('MATTER_DESC').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'SHORTDESCR');
              ParamByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
              ParamByName('SUNDRYTYPE').AsString := qryLedger.FieldByName('SUNDRYTYPE').AsString;
              ExecSQL;
              case rgType.ItemIndex of
                  typDISB :
                  begin
                     sMatter := 'UNBILL_DISB';
                     sLedger := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR');
                  end;
                  typDEBT :
                  begin
                     sMatter := 'DEBTORS';
                     sLedger := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_DR');
                  end;
              end;
           end;
        end
        else }
        begin
           qryJournal.First;
           while (not qryJournal.EOF) do
           begin
               // Now reverse the Naccounts
               qryTransItems.Close;
               qryTransItems.ParamByName('OWNER_CODE').AsString := 'JOURNAL';
               qryTransItems.ParamByName('NOWNER').AsInteger := qryJournal.FieldByName('NJOURNAL').AsInteger;
               qryTransItems.ParamByName('ACCT').AsString := qryJournal.FieldByName('ACCT').AsString;
               qryTransItems.Open;

               // Now update the original journal entry.
               qryUpdateTransItem.Close;
               qryUpdateTransItem.ParamByName('NJOURNAL').AsInteger := qryJournal.FieldByName('NJOURNAL').AsInteger;
               qryUpdateTransItem.ParamByName('REV_NJOURNAL').AsInteger := qryJournalInsert.ParamByName('NJOURNAL').AsInteger;
               qryUpdateTransItem.ParamByName('ACCT').AsString := qryJournal.FieldByName('ACCT').AsString;
               qryUpdateTransItem.ParamByName('TRAN_TYPE').AsString := 'R';
               qryUpdateTransItem.ExecSQL;
               qryUpdateTransItem.Close;

               qryJournal.Next;
           end;
           // Fill in the parameters that don't change
           qryTransItemInsert.ParamByName('CREATED').AsDateTime := dtpReverse.Date;
           qryTransItemInsert.ParamByName('ACCT').AsString := qryJournal.FieldByName('ACCT').AsString;
           qryTransItemInsert.ParamByName('DESCR').AsString := tbReason.Text;
           qryTransItemInsert.ParamByName('NJOURNAL').AsInteger := qryJournalInsert.ParamByName('NJOURNAL').AsInteger;
           qryTransItemInsert.ParamByName('REFNO').AsString := IntToStr(qryJournalInsert.ParamByName('NJOURNAL').AsInteger);
           qryTransItemInsert.ParamByName('NOWNER').AsInteger := qryJournalInsert.ParamByName('NJOURNAL').AsInteger;
           qryTransItemInsert.ParamByName('REV_NJOURNAL').AsInteger := 0; //qryJournalInsert.ParamByName('NJOURNAL').AsInteger;
          // ToDo: Either populate version with information or don't save this.
           qryTransItemInsert.ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;;
           qryTransItemInsert.ParamByName('NMATTER').AsInteger := qryTransItems.FieldByName('NMATTER').AsInteger;
           qryTransItemInsert.ParamByName('WHO').AsString := dmAxiom.UserID;
           qryTransItemInsert.ParamByName('TRAN_TYPE').AsString := 'C';
           qryTransItemInsert.ParamByName('PROGRAM_NAME').AsString := 'Journal Reverse';

           qryJournal.First;
           while (not qryJournal.Eof) do
           begin
              // Now reverse the Naccounts
              qryTransItems.Close;
              qryTransItems.ParamByName('OWNER_CODE').AsString := 'JOURNAL';
              qryTransItems.ParamByName('NOWNER').AsInteger := qryJournal.FieldByName('NJOURNAL').AsInteger;
              qryTransItems.Open;

              while (not qryTransItems.Eof) do
              begin
                 qryTransItemInsert.ParamByName('AMOUNT').AsFloat := 0 - qryTransItems.FieldByName('AMOUNT').AsCurrency;
                 qryTransItemInsert.ParamByName('TAX').AsFloat := 0 - qryTransItems.FieldByName('TAX').AsCurrency;
                 qryTransItemInsert.ParamByName('CHART').AsString  := qryTransItems.FieldByName('CHART').AsString;
                 qryTransItemInsert.ParamByName('NACCOUNT').AsInteger := StrToInt(dmAxiom.GetSeqNumber('sqnc_naccount'));
                 qryTransItemInsert.ParamByName('TAXCODE').AsString  := qryTransItems.FieldByName('TAXCODE').AsString;
                 qryTransItemInsert.ParamByName('PARENT_CHART').AsString  := qryTransItems.FieldByName('PARENT_CHART').AsString;
                 {
                  Added 23.10.2002 GG

                  New Parameter 'WHO' holds the UserID of the current user
                  }
//                qryTransItemInsert.ParamByName('WHO').AsString := dmAxiom.UserID;
                 qryTransItemInsert.ExecSQL;
                 qryTransItems.Next;
              end;
              qryJournal.Next;
           end;

           qryTransItems.Close;
        end;

        // reset the nmemo values
//        qryNmemoUpdate.Close();
        if qryJournal.FieldByName('NMEMO').AsInteger > 0 then
        begin
           qryNmemoUpdate.ParamByName('NMEMO').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
           qryNmemoUpdate.ExecSQL;

           with dmAxiom.qryTmp do
           begin
              Close;
              SQL.Text := 'DELETE FROM SUNDRY WHERE TYPE = ''wo'' AND PRIVATE = ''Y'' AND AMOUNT < 0 AND NMEMO = :nmemo';
              ParamByName('nmemo').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
              Execute;

              Close;
              SQL.Text := 'UPDATE SUNDRY SET BILLED = ''N'', NMEMO = NULL WHERE NMEMO = :nmemo AND BILLED = ''Y'' ';
              ParamByName('nmemo').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
              Execute;

              // added back in the removal of the write off fee line

              Close;
              SQL.Text := 'DELETE FROM FEE WHERE TYPE = ''wo'' AND WOFF = ''N'' AND NMEMO = :nmemo';
              ParamByName('nmemo').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
              Execute;


{              Close;
              SQL.Text := 'DELETE FROM FEE WHERE TYPE = ''wo'' AND PRIVATE = ''Y'' AND NMEMO = :nmemo';
              ParamByName('nmemo').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
              Execute;   }
           end;

           // Now reverse the Allocs
           qryAllocs.Close;
           qryAllocs.ParamByName('NMEMO').AsInteger := qryJournal.FieldByName('NMEMO').AsInteger;
           qryAllocs.ParamByName('ACCT').AsString := qryJournal.FieldByName('ACCT').AsString;
           qryAllocs.ParamByName('TRUST').AsString := qryJournal.FieldByName('TRUST').AsString;
           qryAllocs.Open;

           while (not qryAllocs.EOF) do
           begin
             if qryAllocs.FieldByName('TYPE').AsString = 'J1' then
               sLedger := 'DEBTORS'
             else if qryAllocs.FieldByName('TYPE').AsString = 'J2' then
               sLedger := 'UNBILL_DISB'
             else if qryAllocs.FieldByName('TYPE').AsString = 'J3' then
               sLedger := 'TRUST_BAL';

             RvAlloc(qryAllocs, dtpReverse.Date, IntToStr(qryJournalInsert.ParamByName('NJOURNAL').AsInteger), tbReason.Text, 0, 0, qryJournalInsert.ParamByName('NJOURNAL').AsInteger, sLedger, qryAllocs.FieldByName('TYPE').AsString);
             qryAllocs.Next;
           end;
        end
        else
        begin
           qryAllocJournal.Close;
           qryAllocJournal.ParamByName('NJOURNAL').AsInteger := qryJournal.FieldByName('NJOURNAL').AsInteger;
            { 20 Nov 2017 DW - added ENTITY / ACCT parameter into AllocJournal qry to avoid reversing journals in another entity}
           qryAllocJournal.ParamByName('ACCT').AsString := qryJournal.FieldByName('ACCT').AsString;
           qryAllocJournal.Open;

           while (not qryAllocJournal.EOF) do
           begin
             if qryAllocJournal.FieldByName('TYPE').AsString = 'J1' then
               sLedger := 'DEBTORS'
             else if qryAllocJournal.FieldByName('TYPE').AsString = 'J2' then
               sLedger := 'UNBILL_DISB'
             else if qryAllocJournal.FieldByName('TYPE').AsString = 'J3' then
               sLedger := 'TRUST_BAL';

             RvAlloc(qryAllocJournal, dtpReverse.Date, IntToStr(qryJournalInsert.ParamByName('NJOURNAL').AsInteger),
                     tbReason.Text, 0, 0, qryJournalInsert.ParamByName('NJOURNAL').AsInteger, sLedger,
                     qryAllocJournal.FieldByName('TYPE').AsString, 0, FALSE, 'Y');
             qryAllocJournal.Next;
           end;
        end;

        qryAllocs.Close;
        dmAxiom.uniInsight.Commit;

        Screen.Cursor := crDefault;
        Application.ProcessMessages;
        MsgInfo('Posted Reversing Journal ' + IntToStr(qryJournalInsert.ParamByName('NJOURNAL').AsInteger));
        Self.Close;
      end;
    except
      On E: Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        Screen.Cursor := crDefault;
        Application.ProcessMessages;
        MsgErr('Error reversing Journal.' + #13 + #13 + E.Message);
      end;
    end;
  end;
end;

procedure TfrmJournalReverse.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmJournalReverse.btnOriginalClick(Sender: TObject);
begin
{
  Added 21.10.2002 GG

  Allow users to revert to the original date if required
}
  dtpReverse.Date := qryJournal.FieldByName('CREATED').AsDateTime;
  tbReason.SetFocus;
end;

end.
