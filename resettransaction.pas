unit resettransaction;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, OracleUniProvider, Uni, DBAccess, MemDS,
  DAScript, UniScript;

const
  cnRECEIPT = 'RECEIPT';
  cnCHEQUE = 'CHEQUE';

type
  TfrmResetTransaction = class(TForm)
    cbResetTransaction: TGroupBox;
    lblReference: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cbBank: TComboBox;
    btnChange: TButton;
    orscrResetCheque1: TUniScript;
    orscrResetReceipt: TUniScript;
    cbEntityName: TComboBox;
    cbEntity: TComboBox;
    lblBank: TLabel;
    lblNReference: TLabel;
    Label1: TLabel;
    lblDetails: TLabel;
    Label2: TLabel;
    lblAmount: TLabel;
    qryTmp: TUniQuery;
    qryResetTransaction: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbEntityNameChange(Sender: TObject);
    procedure btnChangeClick(Sender: TObject);
  private
    { Private declarations }
    function CheckTrustToOffice(sACCT1, sACCT2 : string) : boolean;
  public
    { Public declarations }
    sType, sKey : string;
  end;

var
  frmResetTransaction: TfrmResetTransaction;

implementation

uses AxiomData, miscfunc;

{$R *.DFM}

procedure TfrmResetTransaction.FormCreate(Sender: TObject);
begin
  sType := '';
end;

procedure TfrmResetTransaction.FormShow(Sender: TObject);
begin
  if sType = 'CHEQUE' then
    lblReference.Caption := 'NCheque #';
  if sType = 'RECEIPT' then
    lblReference.Caption := 'NReceipt #';
    StringPopulateList(cbEntityName.items, cbEntity.items,'ENTITY','NAME','CODE');
end;

procedure TfrmResetTransaction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmResetTransaction.cbEntityNameChange(Sender: TObject);
begin
  cbBank.Items.Clear;
  cbBank.Text := '';
  StringPopulate(cbBank.items, 'BANK','ACCT', 'ENTITY=''' + cbEntity.Items[cbEntityName.ItemIndex] + '''');
end;

procedure TfrmResetTransaction.btnChangeClick(Sender: TObject);
begin
  if (lblNReference.Caption <> '') then
    begin
      if not ((cbEntityName.Text = '') or (cbBank.Text = '')) then
        begin
          if (sType = cnCHEQUE) or (sType = cnRECEIPT) then
            if CheckTrustToOffice(lblBank.Caption,cbBank.Text) then
              begin
                if MessageDlg('Do you wish to reset the transaction from ' + lblBank.Caption + ' to ' +
                  cbBank.Text + ' and to the ' + cbEntityName.Text + ' entity?', mtConfirmation, [mbYes, mbNo], 0)
                  = mrYes then
                  begin
                    try
                      if dmAxiom.uniInsight.InTransaction then
                        dmAxiom.uniInsight.Commit;
                      dmAxiom.uniInsight.StartTransaction;
                      with qryResetTransaction do
                        begin
                          if sType = cnCHEQUE then
                            sKey := 'NCHEQUE';
                          if sType = cnRECEIPT then
                            sKey := 'NRECEIPT';
                          Close;
                          SQL.Clear;
                          if sType = cnCHEQUE then
                            SQL.Add('UPDATE CHEQUE');
                          if sType = cnRECEIPT then
                            SQL.Add('UPDATE RECEIPT');
                          SQL.Add('SET ACCT =:BANK_ACCT');
                          SQL.Add('WHERE ' + sKey + '=:' + sKey);
                          ParambyName(sKey).AsString := lblNReference.Caption;
                          ParambyName('BANK_ACCT').AsString := cbBank.Text;
                          ExecSQL;
                          Close;
                          SQL.Clear;
                          SQL.Add('UPDATE ALLOC');
                          SQL.Add('SET BANK =:BANK_ACCT, ACCT =:ENTITY');
                          SQL.Add('WHERE ' + sKey + '=:' + sKey);
                          ParambyName(sKey).AsString := lblNReference.Caption;
                          ParambyName('BANK_ACCT').AsString := cbBank.Text;
                          ParambyName('ENTITY').AsString := cbEntity.Items[cbEntityName.ItemIndex];
                          ExecSQL;
                          Close;
                          SQL.Clear;
                          SQL.Add('UPDATE TRANSITEM');
                          SQL.Add('SET ACCT =:ENTITY,');
{
  Added 23.10.2002 GG

  New Parameter 'WHO' holds the UserID of the current user
}
                          SQL.Add('    WHO  =:WHO');
                          SQL.Add('WHERE ' + sKey + '=:' + sKey);
                          ParambyName(sKey).AsString := lblNReference.Caption;
                          ParambyName('ENTITY').AsString := cbEntity.Items[cbEntityName.ItemIndex];
{
  Added 23.10.2002 GG

  New Parameter 'WHO' holds the UserID of the current user
}
                          ParamByName('WHO').AsString := dmAxiom.UserID;
                          ExecSQL;
                          Close;
                        end;
                      dmAxiom.uniInsight.Commit;
                      ShowMessage('Transaction reset');
                      Close; //the form
                      except;
                        dmAxiom.uniInsight.Rollback;
                      end; // except
                    end
              end
            else
              MessageDlg('Bank Accounts are of different type (i.e. Trust and Office), cannot transfer as general ledger entries need to be adjusted manually', mtError, [mbOK], 0);
        end
      else
        MessageDlg('You must select an entity and bank account', mtError, [mbOK], 0)
    end
  else
    ShowMessage('Please select a valid transaction');
end;

function TfrmResetTransaction.CheckTrustToOffice(sACCT1, sACCT2 : string) : boolean;
begin
  //check to see that both accounts are of the same type using set notation
  with qryTmp do
    begin
      SQL.Clear;
      SQL.Add('SELECT TRUST FROM BANK WHERE ACCT =:ACCT1');
      SQL.Add('MINUS');
      SQL.Add('SELECT TRUST FROM BANK WHERE ACCT =:ACCT2');
      ParambyName('ACCT1').AsString := sACCT1;
      ParambyName('ACCT2').AsString := sACCT2;
      Open;
      if RecordCount = 1 then
        Result := false
      else
        Result := true;
      Close;
    end;
end;


end.
