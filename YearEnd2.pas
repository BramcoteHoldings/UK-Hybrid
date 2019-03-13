unit YearEnd2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Buttons, MemDS, OracleUniProvider, Uni, DBAccess;

type
  TfrmYearEnd2 = class(TForm)
    mmoMessage: TMemo;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    Label1: TLabel;
    dtpYearEnd: TDateTimePicker;
    qryYearEnd: TUniQuery;
    qryChart: TUniQuery;
    qryJournalInsert: TUniQuery;
    qryTransitemInsert: TUniQuery;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.DFM}

uses
  AxiomData, LSearch, MiscFunc, Process;

procedure TfrmYearEnd2.btnOKClick(Sender: TObject);
var
  iNumCharts: integer;
  frmProcess: TfrmProcess;
  wYear, wMonth, wDay: Word;
  bOKtoPost: Boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= (PostIntoLockedPeriod(dtpYearEnd.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    if MsgAsk('This will create the new year''s accounts. ' + #13 + #13 + 'Are you SURE that you want to continue?') = mrYes then
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
          SQL.Text := 'SELECT COUNT(*) AS CNT FROM CHART WHERE BANK = ''' + dmAxiom.Entity + ''' AND TYPE <> ''I'' AND TYPE <> ''E'' AND BALANCE <> 0';
          Open;
          iNumCharts := FieldByName('CNT').AsInteger;
        end;
        frmProcess.pbProcess.Max := iNumCharts * 3;
        frmProcess.Show;
        Application.ProcessMessages;

        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;
        // Remember the opening balances for the new year
        frmProcess.lblProcess.Caption := 'Getting opening balances';
        with qryChart do
        begin
          Close;
          SQL.Text := 'SELECT CODE, BALANCE FROM CHART WHERE BANK = ''' + dmAxiom.Entity + ''' AND TYPE <> ''I'' AND TYPE <> ''E'' AND BALANCE <> 0';
          Open;
        end;
        frmProcess.pbProcess.Position := iNumCharts;
        Application.ProcessMessages;

        // Now set all the charts to zero
        frmProcess.lblProcess.Caption := 'Resetting Ledger Balances';
        with qryYearEnd do
        begin
          Close;
          SQL.Text := 'UPDATE CHART SET BALANCE = 0, JULBAL = 0, AUGBAL = 0, SEPBAL = 0, OCTBAL = 0, NOVBAL = 0, DECBAL = 0, JANBAL = 0, FEBBAL = 0, MARBAL = 0, APRBAL = 0, MAYBAL = 0, JUNBAL = 0 WHERE BANK = ''' + dmAxiom.Entity + '''';
          ExecSQL;
        end;

        frmProcess.pbProcess.Position := iNumCharts * 2;
        Application.ProcessMessages;


        // Remember the opening balances for the new year
        frmProcess.lblProcess.Caption := 'Creating opening balances';
        DecodeDate(dtpYearEnd.Date, wYear, wMonth, wDay);
        
        with qryChart do
        begin
          while not EOF do
          begin
            frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
            Application.ProcessMessages;

            PostLedger(Trunc(dtpYearEnd.DateTime) + 1
              , FieldByName('BALANCE').AsCurrency
              , 0
              , 'BBF'
              , 'BBF'
              , wYear
              , 'Balance Brought Forward'
              , FieldByName('CODE').AsString
              , ''
              , -1
              , ''
              , '');

            Next;

          end;
          Close;
        end;
        dmAxiom.uniInsight.Commit;
        frmProcess.Release;
        Self.Close;
      except
        On E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          MsgErr('Error occured during Year End Close 2' + #13 + #13 + E.Message);
          frmProcess.Release
        end
      end
    end
  end
end;


procedure TfrmYearEnd2.FormCreate(Sender: TObject);
begin
  Self.Caption := 'Year End Close - ' + SystemString('COMPANY');
end;

procedure TfrmYearEnd2.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmYearEnd2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryYearEnd.Close;
  qryChart.Close;

  Self.Release;
end;

end.
