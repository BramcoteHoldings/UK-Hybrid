unit YearEnd1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Buttons, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TfrmYearEnd1 = class(TForm)
    mmoMessage: TMemo;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    Label1: TLabel;
    dtpYearEnd: TDateTimePicker;
    Label2: TLabel;
    tbPLSum: TEdit;
    qryYearEnd: TUniQuery;
    qryChart: TUniQuery;
    qryJournalInsert: TUniQuery;
    qryTransitemInsert: TUniQuery;
    btnLedger: TBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLedgerClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmYearEnd1: TfrmYearEnd1;

implementation

{$R *.DFM}

uses
  AxiomData, LSearch, MiscFunc, Process;

procedure TfrmYearEnd1.btnOKClick(Sender: TObject);
var
  iNJournal,iNumCharts : integer;
  frmProcess : TfrmProcess;
  cPLSummary : currency;
  bOKtoPost: Boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= (PostIntoLockedPeriod(dtpYearEnd.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    if ValidLedger(dmAxiom.Entity, tbPLSum.Text) then
    begin
      if MsgAsk('This will close off your accounts for the End of Financial Year' + #13 + #13 + 'Are you SURE that you want to continue?') = mrYes then
      begin
  {
    Modified 25.10.2002 GG
    Removed compiler warning
  }
        frmProcess:= nil; 
        try
          frmProcess := TfrmProcess.Create(Self);
          // Find out how many charts there are
          with qryYearEnd do
          begin
            Close;
            SQL.Text := 'SELECT COUNT(*) AS CNT FROM CHART WHERE BANK = ''' + dmAxiom.Entity + '''';
            Open;
            iNumCharts := FieldByName('CNT').AsInteger;
          end;
          frmProcess.pbProcess.Max := iNumCharts * 4 + 3;
          frmProcess.Show;
          Application.ProcessMessages;

          if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;
          // Save the closing balances to the previous year
          frmProcess.lblProcess.Caption := 'Updating prior year balances';
          with qryYearEnd do
          begin
            Close;
            SQL.Text := 'UPDATE CHART SET BALPY = BALANCE, JULPY = JULBAL, AUGPY = AUGBAL, SEPPY = SEPBAL, OCTPY = OCTBAL, NOVPY = NOVBAL, DECPY = DECBAL, JANPY = JANBAL, FEBPY = FEBBAL, MARPY = MARBAL, APRPY = APRBAL, MAYPY = MAYBAL, JUNPY = JUNBAL WHERE BANK = ''' + dmAxiom.Entity + '''';
            ExecSQL;
          end;
          frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + iNumCharts;
          frmProcess.lblProcess.Caption := 'Removing subchart balances';
          Application.ProcessMessages;
          with qryYearEnd do
          begin
            // Update the charts so that the charts only have their balance,
            // not any cumulative balance from any subcharts
            qryChart.Close;
            qryChart.SQL.Clear;
            qryChart.SQL.Add('SELECT ADDTO, MAX(BANK) AS BANK, SUM(BALANCE) AS BALANCE');
            qryChart.SQL.Add(',SUM(JULBAL) AS JULBAL');
            qryChart.SQL.Add(',SUM(AUGBAL) AS AUGBAL');
            qryChart.SQL.Add(',SUM(SEPBAL) AS SEPBAL');
            qryChart.SQL.Add(',SUM(OCTBAL) AS OCTBAL');
            qryChart.SQL.Add(',SUM(NOVBAL) AS NOVBAL');
            qryChart.SQL.Add(',SUM(DECBAL) AS DECBAL');
            qryChart.SQL.Add(',SUM(JANBAL) AS JANBAL');
            qryChart.SQL.Add(',SUM(FEBBAL) AS FEBBAL');
            qryChart.SQL.Add(',SUM(MARBAL) AS MARBAL');
            qryChart.SQL.Add(',SUM(APRBAL) AS APRBAL');
            qryChart.SQL.Add(',SUM(MAYBAL) AS MAYBAL');
            qryChart.SQL.Add(',SUM(JUNBAL) AS JUNBAL');
            qryChart.SQL.Add(' FROM CHART ');
            qryChart.SQL.Add(' WHERE BANK = ''' + dmAxiom.Entity + ''' AND (TYPE = ''I'' OR TYPE = ''E'') AND ADDTO IS NOT NULL');
            qryChart.SQL.Add(' GROUP BY ADDTO');
            qryChart.Open;
            while not qryChart.EOF do
            begin
              frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
              Application.ProcessMessages;

              Close;
              SQL.Clear;
              SQL.Add('UPDATE CHART SET BALANCE = (BALANCE - ' + CurrToStrF(qryChart.FieldByName('BALANCE').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',JULBAL = (JULBAL - ' + CurrToStrF(qryChart.FieldByName('JULBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',AUGBAL = (AUGBAL - ' + CurrToStrF(qryChart.FieldByName('AUGBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',SEPBAL = (SEPBAL - ' + CurrToStrF(qryChart.FieldByName('SEPBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',OCTBAL = (OCTBAL - ' + CurrToStrF(qryChart.FieldByName('OCTBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',NOVBAL = (NOVBAL - ' + CurrToStrF(qryChart.FieldByName('NOVBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',DECBAL = (DECBAL - ' + CurrToStrF(qryChart.FieldByName('DECBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',JANBAL = (JANBAL - ' + CurrToStrF(qryChart.FieldByName('JANBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',FEBBAL = (FEBBAL - ' + CurrToStrF(qryChart.FieldByName('FEBBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',MARBAL = (MARBAL - ' + CurrToStrF(qryChart.FieldByName('MARBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',APRBAL = (APRBAL - ' + CurrToStrF(qryChart.FieldByName('APRBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',MAYBAL = (MAYBAL - ' + CurrToStrF(qryChart.FieldByName('MAYBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(',JUNBAL = (JUNBAL - ' + CurrToStrF(qryChart.FieldByName('JUNBAL').AsCurrency, ffFixed, 15) + ')');
              SQL.Add(' WHERE BANK = ''' + dmAxiom.Entity + ''' AND CODE = ''' + qryChart.FieldByName('ADDTO').AsString + '''');
              ExecSQL;

              qryChart.Next;
            end;
          end;
          frmProcess.pbProcess.Position := iNumCharts * 2;
          Application.ProcessMessages;
          // Now create a journal to do the year end closing of profit and loss
          iNJournal := GetJournal;
          // Find the amount of the journal (sum of credit balances)
          frmProcess.lblProcess.Caption := 'Initialising journal';
          with qryChart do
          begin
            Close;
            SQL.Text := 'SELECT SUM(BALANCE) AS JOURNALAMOUNT FROM CHART WHERE BANK = ''' + dmAxiom.Entity + ''' AND (TYPE = ''I'' OR TYPE = ''E'') AND BALANCE > 0';
            Prepare;
            Open;
          end;
          frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
          Application.ProcessMessages;

          frmProcess.lblProcess.Caption := 'Creating journal';
          with qryJournalInsert do
          begin
            ParamByName('CREATED').AsDateTime := dtpYearEnd.DateTime;
            ParamByName('ACCT').AsString := dmAxiom.Entity;
            ParamByName('REASON').AsString := 'Year End Closing Journal';
            ParamByName('AMOUNT').AsFloat := qryChart.FieldByName('JOURNALAMOUNT').AsCurrency;
            ParamByName('NJOURNAL').AsInteger := iNJournal;
            ExecSQL;
          end;
          frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
          Application.ProcessMessages;

          frmProcess.lblProcess.Caption := 'Creating journal transactions';
          cPLSummary := 0;
          with qryChart do
          begin
            Close;
            SQL.Text := 'SELECT CODE, BALANCE FROM CHART WHERE BANK = ''' + dmAxiom.Entity + ''' AND (TYPE = ''I'' OR TYPE = ''E'') AND BALANCE <> 0';
            Prepare;
            Open;
            while not EOF do
            begin
              frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
              Application.ProcessMessages;
            
              PostLedger(dtpYearEnd.DateTime
                , 0 - FieldByName('BALANCE').AsCurrency
                , 0
                , 'JYE' + IntToStr(iNJournal)
                , 'JOURNAL'
                , iNJournal
                , 'Year End Closing Journal'
                , FieldByName('CODE').AsString
                , ''
                , -1
                , ''
                , '');

              cPLSummary := cPLSummary + FieldByName('BALANCE').AsCurrency;

              Next;
            end;
            Close;
          end;

          // Post the Profit/Loss summary amount as the difference between credits and debits
          PostLedger(dtpYearEnd.DateTime
            , cPLSummary
            , 0
            , 'JYE' + IntToStr(iNJournal)
            , 'JOURNAL'
            , iNJournal
            , 'Year End Closing Journal'
            , tbPLSum.Text
            , ''
            , -1
            , ''
            , '');

          frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
          Application.ProcessMessages;

          // Now set all the profit and loss charts to zero
          frmProcess.lblProcess.Caption := 'Resetting Profit and Loss ledgers';
          with qryChart do
          begin
            Close;
            SQL.Text := 'UPDATE CHART SET BALANCE = 0, JULBAL = 0, AUGBAL = 0, SEPBAL = 0, OCTBAL = 0, NOVBAL = 0, DECBAL = 0, JANBAL = 0, FEBBAL = 0, MARBAL = 0, APRBAL = 0, MAYBAL = 0, JUNBAL = 0 WHERE BANK = ''' + dmAxiom.Entity + ''' AND (TYPE = ''I'' OR TYPE = ''E'')';
            ExecSQL;
          end;

          frmProcess.pbProcess.Position := frmProcess.pbProcess.Max;
          Application.ProcessMessages;

          dmAxiom.uniInsight.Commit;
          frmProcess.Release;
          Self.Close;
        except
          On E: Exception do
          begin
            dmAxiom.uniInsight.Rollback;
            MsgErr('Error occured during Year End Close 1' + #13 + #13 + E.Message);
            frmProcess.Release;
          end;
        end;
      end;
    end
    else
      MsgErr('The Profit/Loss Summary ledger does not exist');
  end
end;


procedure TfrmYearEnd1.FormCreate(Sender: TObject);
begin
  frmYearEnd1.Caption := 'Year End Close - ' + SystemString('COMPANY');
end;

procedure TfrmYearEnd1.btnLedgerClick(Sender: TObject);
begin
  if frmLedgerSearch.ShowModal = mrOK then
    tbPLSum.Text := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
end;

procedure TfrmYearEnd1.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmYearEnd1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryChart.Close;
  qryYearEnd.Close;

  Self.Release;
end;

end.
