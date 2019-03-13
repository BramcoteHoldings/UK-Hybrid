unit BankDepositRpt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, Ora, OracleUniProvider, Uni, DBAccess, MemDS, VirtualTable,
  OraSmart, MemDS, DBAccess, MiscFunc;

type
  TqrBankDeposits = class(TQuickRep)
    qryBank: TUniQuery;
    qryAdjust: TUniQuery;
    vtDeposits: TVirtualTable;
    TitleBand1: TQRBand;
    qrlblCompanyName: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    qrdbtxtBank: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    qrlblCheques: TQRLabel;
    qrlblCash: TQRLabel;
    qrlblCredit: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    qrlblTotal: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel14: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    qrlblFilename: TQRLabel;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    qrlblReportTitle: TQRLabel;
    qrsysPageNumber: TQRSysData;
    QRGroup1: TQRGroup;
    ChildBand4: TQRChildBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    ChildBand5: TQRChildBand;
    qrlblType: TQRLabel;
    qrbndGroupFooter: TQRBand;
    ChildBand6: TQRChildBand;
    QRExpr1: TQRExpr;
    qrlblSubTotal: TQRLabel;
    QRLabel17: TQRLabel;
    qrlblDeposited: TQRLabel;
    qryAdjustCHQNO: TStringField;
    qryAdjustDRAWER: TStringField;
    qryAdjustBANK: TStringField;
    qryAdjustBRANCH: TStringField;
    qryAdjustAMOUNT: TFloatField;
    qryAdjustTYPE: TStringField;
    qryAdjustRCPTNO: TStringField;
    qryAdjustDESCR: TStringField;
    qryAdjustPAYOR: TStringField;
    QRDBText5: TQRDBText;
    procedure qrlblFilenamePrint(sender: TObject; var Value: String);
    procedure qrlblCompanyNamePrint(sender: TObject; var Value: String);
    procedure QuickRepAfterPreview(Sender: TObject);
    procedure qrlblChequesPrint(sender: TObject; var Value: String);
    procedure qrlblCashPrint(sender: TObject; var Value: String);
    procedure qrlblCreditPrint(sender: TObject; var Value: String);
    procedure qrlblTotalPrint(sender: TObject; var Value: String);
    procedure qrlblTypePrint(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlblDepositedPrint(sender: TObject; var Value: String);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    foSession : TUniConnection;
    foReceipts : TStringList;

    fsBank   : String;
    fsCheque : String;
    fsCash   : String;
    fsCredit : String;
    fsTotal  : String;
    fsDeposited : String;

    procedure setSession(oSession : TUniConnection);

    function  IsCheque : Boolean;

  public
    property Session : TUniConnection write setSession;
    property Receipts : TStringList write foReceipts;

    property Bank   : String read fsBank write fsBank;
    property Cheque : String read fsCheque write fsCheque;
    property Cash   : String read fsCash write fsCash;
    property Credit : String read fsCredit write fsCredit;
    property Total  : String read fsTotal write fsTotal;
    property Deposited : String read fsDeposited write fsDeposited;

    procedure RetrieveData;

  end;

var
  qrBankDeposits: TqrBankDeposits;

implementation

{$R *.DFM}

procedure TqrBankDeposits.qrlblFilenamePrint(sender: TObject;
  var Value: String);
begin
  Value := Application.ExeName;

end;

procedure TqrBankDeposits.qrlblCompanyNamePrint(sender: TObject;
  var Value: String);
begin
  Value := SystemString('Company');

end;

procedure TqrBankDeposits.RetrieveData;
var
  liCtr      : Integer;
  lsReceipts : String;
begin
  vtDeposits.Active := True;
  vtDeposits.Clear;

  lsReceipts := QuotedStr(foReceipts.Strings[0]);

  for liCtr := 1 to (foReceipts.Count - 1) do
    begin
      lsReceipts := lsReceipts + ', ' + QuotedStr(foReceipts.Strings[liCtr])

    end;    //  end for

  qryAdjust.Close;
  qryAdjust.SQL.Text := 'SELECT CHQNO, DRAWER, BANK, BRANCH, AMOUNT, TYPE, RCPTNO, DESCR, PAYOR FROM RECEIPT WHERE ACCT = ''' +
                        fsBank + ''' AND RCPTNO in (' + lsReceipts + ') ORDER BY TYPE';
  qryAdjust.Open;
  qryAdjust.First;

  while (not qryAdjust.EOF) do
    begin
      if ((qryAdjust.FieldByName('TYPE').AsString = 'CQ') or (qryAdjust.FieldByName('TYPE').AsString = 'BC') or
         (qryAdjust.FieldByName('TYPE').AsString = 'CA') or (qryAdjust.FieldByName('TYPE').AsString = 'CC')) then
      begin
        vtDeposits.Append;

        if ((qryAdjust.FieldByName('TYPE').AsString = 'CQ') or (qryAdjust.FieldByName('TYPE').AsString = 'BC')) then
          begin
            vtDeposits.FieldByName('REFNO').AsString := qryAdjust.FieldByName('CHQNO').AsString;
            vtDeposits.FieldByName('REASON').AsString := qryAdjust.FieldByName('DRAWER').AsString;
            vtDeposits.FieldByName('TYPE').AsString := qryAdjust.FieldByName('BANK').AsString;
            vtDeposits.FieldByName('LONGDESC').AsString := qryAdjust.FieldByName('BRANCH').AsString;
            vtDeposits.FieldByName('AMOUNT').AsFloat := qryAdjust.FieldByName('AMOUNT').AsFloat;
            vtDeposits.FieldByName('RCPTNO').AsString := qryAdjust.FieldByName('RCPTNO').AsString;
            vtDeposits.FieldByName('ACCTTYPE').AsString := qryAdjust.FieldByName('TYPE').AsString;

          end
        else
          begin
            vtDeposits.FieldByName('REFNO').AsString := '';
            vtDeposits.FieldByName('REASON').AsString := qryAdjust.FieldByName('DESCR').AsString;
            vtDeposits.FieldByName('TYPE').AsString := qryAdjust.FieldByName('PAYOR').AsString;
            vtDeposits.FieldByName('LONGDESC').AsString := '';
            vtDeposits.FieldByName('AMOUNT').AsFloat := qryAdjust.FieldByName('AMOUNT').AsFloat;
            vtDeposits.FieldByName('RCPTNO').AsString := qryAdjust.FieldByName('RCPTNO').AsString;
            vtDeposits.FieldByName('ACCTTYPE').AsString := qryAdjust.FieldByName('TYPE').AsString;

          end;    //  end if-else

        vtDeposits.Post;

      end;

      qryAdjust.Next;

    end;

  qryAdjust.Close;

  qryBank.Close;
  qryBank.ParamByName('P_Bank').AsString := fsBank;
  qryBank.Open;

end;

procedure TqrBankDeposits.setSession(oSession : TUniConnection);
begin
  foSession := oSession;
  qryAdjust.Session := oSession;
  qryBank.Session := oSession;

end;


procedure TqrBankDeposits.QuickRepAfterPreview(Sender: TObject);
begin
  vtDeposits.Active := False;

end;

procedure TqrBankDeposits.qrlblChequesPrint(sender: TObject;
  var Value: String);
begin
  Value := fsCheque;

end;

procedure TqrBankDeposits.qrlblCashPrint(sender: TObject;
  var Value: String);
begin
  Value := fsCash;

end;

procedure TqrBankDeposits.qrlblCreditPrint(sender: TObject;
  var Value: String);
begin
  Value := fsCredit;

end;

procedure TqrBankDeposits.qrlblTotalPrint(sender: TObject;
  var Value: String);
begin
  Value := fsTotal;

end;

procedure TqrBankDeposits.qrlblTypePrint(sender: TObject;
  var Value: String);
begin
  if (vtDeposits.FieldByName('ACCTTYPE').AsString = 'CQ') then
    Value := 'Cheque'
  else
    if (vtDeposits.FieldByName('ACCTTYPE').AsString = 'BC') then
      Value := 'Bank Cheque'
    else
      if (vtDeposits.FieldByName('ACCTTYPE').AsString = 'CA') then
        Value := 'Cash'
      else
        if (vtDeposits.FieldByName('ACCTTYPE').AsString = 'CC') then
          Value := 'Credit Card';

end;

function TqrBankDeposits.IsCheque : Boolean;
begin
  Result := ((vtDeposits.FieldByName('ACCTTYPE').AsString = 'CQ') OR
             (vtDeposits.FieldByName('ACCTTYPE').AsString = 'BC'));

end;

procedure TqrBankDeposits.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  if (IsCheque) then
    Value := 'Cheque#'
  else
    Value := '';

end;

procedure TqrBankDeposits.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  if (IsCheque) then
    Value := 'Drawer'
  else
    Value := 'Description';

end;

procedure TqrBankDeposits.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  if (IsCheque) then
    Value := 'Bank'
  else
    Value := 'Payor';

end;

procedure TqrBankDeposits.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  if (IsCheque) then
    Value := 'Branch'
  else
    Value := '';

end;

procedure TqrBankDeposits.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (IsCheque) then
    qrdbtxtBank.Width := 35
  else
    qrdbtxtBank.Width := 173;

end;

procedure TqrBankDeposits.qrlblDepositedPrint(sender: TObject;
  var Value: String);
begin
  //qrlblDeposited.Caption := Deposited;
end;

procedure TqrBankDeposits.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlblDeposited.Caption := Deposited;
end;

end.
