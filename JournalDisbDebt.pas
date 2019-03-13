unit JournalDisbDebt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ComCtrls, DBCtrls, OracleUniProvider, Uni, DBAccess, MemDS,
  DateTimeAccount, NumberEdit;

type
  TfrmJournalDisbDebt = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    edReason: TEdit;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    dtpDate: TDateTimeAccount;
    Label3: TLabel;
    lblFile: TLabel;
    lblClient: TLabel;
    lblDesc: TLabel;
    btnMatter: TBitBtn;
    Label1: TLabel;
    neAmount: TNumberEdit;
    qryMatter: TUniQuery;
    qryJournal: TUniQuery;
    qryAllocInsert: TUniQuery;
    qryMatterFILEID: TStringField;
    qryMatterNCLIENT: TFloatField;
    qryMatterTITLE: TStringField;
    qryMatterSHORTDESCR: TStringField;
    qryMatterNMATTER: TFloatField;
    qryMatterAUTHOR: TStringField;
    qryMatterUNBILL_DISB: TFloatField;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnMatterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayMatter(NMatter: integer);
  end;

implementation

{$R *.DFM}

uses
  Axiomdata, MSearch, MiscFunc,glComponentUtil;

procedure TfrmJournalDisbDebt.btnOKClick(Sender: TObject);
var
  iJournal: integer;
  bOKtoPost: boolean;
  glComponentSetup : TglComponentSetup;
  sLedgerKey,sLedgerKeyDr : String;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}

  glComponentSetup := dmAxiom.getGlComponents;
  bOKtoPost:= (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    try
      // Set up a journal
      qryJournal.Open;
      iJournal := GetJournal;
      if iJournal = -1 then
        Raise EPostError.Create('Could not get next Journal number for Entity ' + dmAxiom.Entity);

      qryJournal.Insert;
      qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
      qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
      qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.DateTime;
      qryJournal.FieldByName('REASON').AsString := edReason.Text;
      qryJournal.FieldByName('TRUST').AsString := 'G';
      qryJournal.FieldByName('TYPE').AsString := '1';
      qryJournal.FieldByName('AMOUNT').AsCurrency := neAmount.AsCurrency;
      qryJournal.Post; // Puts journal into cached buffer

      with qryAllocInsert do
      begin
        // Create an Alloc for the disbursement side
        ParamByName('AMOUNT').AsFloat := 0 - neAmount.AsCurrency;
        ParamByName('ACCT').AsString := dmAxiom.Entity;
        ParamByName('CREATED').AsDateTime := dtpDate.DateTime;
        ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
        ParamByName('REFNO').AsString := IntToStr(iJournal);
        ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
        ParamByName('NJOURNAL').AsInteger := iJournal;
        ParamByName('TYPE').AsString := 'J2';
        ParamByName('PAYER').AsString := 'Journal ' + IntToStr(iJournal);
        ParamByName('DESCR').AsString := edReason.Text;
        ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
        ParamByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
        ParamByName('CLIENT_NAME').AsString := qryMatter.FieldByName('TITLE').AsString;
        ParamByName('MATTER_DESC').AsString := qryMatter.FieldByName('SHORTDESCR').AsString;
        ExecSQL;

        {post components}
        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_CR'),'',true,'');


        PostLedger(dtpDate.DateTime
          , ParamByName('AMOUNT').AsFloat
          , 0
          , ParamByName('REFNO').AsString
          , 'JOURNAL'
          , iJournal
          , edReason.Text
          , sLedgerKey
          , qryMatter.FieldByName('AUTHOR').AsString
          , -1
          , ''
          , '');

        MatterUpdate(ParamByName('NMATTER').AsInteger, 'UNBILL_DISB', 0 - ParamByName('AMOUNT').AsFloat);
        // Create an Alloc for the debtors side
        ParamByName('AMOUNT').AsFloat := neAmount.AsCurrency;
        ParamByName('ACCT').AsString := dmAxiom.Entity;
        ParamByName('CREATED').AsDateTime := dtpDate.DateTime;
        ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
        ParamByName('REFNO').AsString := IntToStr(iJournal);
        ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
        ParamByName('NJOURNAL').AsInteger := iJournal;
        ParamByName('TYPE').AsString := 'J1';
        ParamByName('PAYER').AsString := 'Journal ' + IntToStr(iJournal);
        ParamByName('DESCR').AsString := edReason.Text;
        ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
        ParamByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
        ParamByName('CLIENT_NAME').AsString := qryMatter.FieldByName('TITLE').AsString;
        ParamByName('MATTER_DESC').AsString := qryMatter.FieldByName('SHORTDESCR').AsString;
        ExecSQL;

        {post components}
        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_DR'),'',true,'');


        PostLedger(dtpDate.DateTime
          , ParamByName('AMOUNT').AsFloat
          , 0
          , ParamByName('REFNO').AsString
          , 'JOURNAL'
          , iJournal
          , edReason.Text
          , sLedgerKey
          , qryMatter.FieldByName('AUTHOR').AsString
          , -1
          , ''
          , '');

        MatterUpdate(ParamByName('NMATTER').AsInteger, 'DEBTORS', 0 - ParamByName('AMOUNT').AsFloat);
      end;

      // Now save the general ledger items
      qryJournal.ApplyUpdates;

      CheckLedgerTotal;

      dmAxiom.uniInsight.Commit;
      MsgInfo('Posted Journal ' + IntToStr(iJournal));
      Self.Close;

    except
      on E: Exception do
      begin
        if qryJournal.UpdatesPending then
          qryJournal.CancelUpdates;
        dmAxiom.uniInsight.Rollback;
        MsgErr('Posting failed:' + #13 + #13 + E.Message);
      end
    end
  end;
end;


procedure TfrmJournalDisbDebt.FormShow(Sender: TObject);
begin
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

  edReason.SetFocus;
end;


procedure TfrmJournalDisbDebt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qryJournal.Close;

  Self.Release;
end;

procedure TfrmJournalDisbDebt.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TfrmJournalDisbDebt.btnMatterClick(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOK then
    DisplayMatter(dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger);
end;


procedure TfrmJournalDisbDebt.DisplayMatter(NMatter: integer);
begin
  with qryMatter do
  begin
    Close;
    SQL.Text := 'SELECT FILEID, NCLIENT, TITLE, SHORTDESCR, AUTHOR, NMATTER, UNBILL_DISB FROM MATTER WHERE NMATTER = ' + IntToStr(NMatter);
    Prepare;
    Open;
    if not IsEmpty then
    begin
      lblFile.Caption := FieldByName('FILEID').AsString;
      lblClient.Caption := FieldByName('TITLE').AsString;
      lblDesc.Caption := FieldByName('SHORTDESCR').AsString;
      neAmount.AsCurrency := 0 - FieldByName('UNBILL_DISB').AsFloat;
      Self.Show;
    end
    else
      Self.Close;
  end;
end;


end.

