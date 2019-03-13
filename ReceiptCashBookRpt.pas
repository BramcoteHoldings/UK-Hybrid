unit ReceiptCashBookRpt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS,
  MiscFunc;

type
  TqrCashReceiptsBook = class(TQuickRep)
    qryNallocs: TUniQuery;
    qryNallocsAUTHOR: TStringField;
    qryNallocsCODE: TStringField;
    qryNallocsDESCR: TStringField;
    qryNallocsAMOUNT: TFloatField;
    qryNallocsNMATTER: TFloatField;
    qryNallocsCLEARED: TStringField;
    qryReceiptsBankDeps: TUniQuery;
    qryTmp: TUniQuery;
    PageHeaderBand1: TQRBand;
    QRGroup1: TQRGroup;
    qrdetCheques: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    qrsubAllocs: TQRSubDetail;
    qrdblblPrintRcpAmount: TQRDBText;
    qrdblblPrintRcpDescr: TQRDBText;
    qrdblblPrintRcpCode: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand3: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel34: TQRLabel;
    qrsumTotals: TQRBand;
    qrexSumAmt: TQRExpr;
    qrexNumCheques: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    qrlblBanked: TQRLabel;
    QRShape1: TQRShape;
    qrlblOutstandingDeposits: TQRLabel;
    QRLabel31: TQRLabel;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel24: TQRLabel;
    qrlblPrintRcpTitle: TQRLabel;
    qrlblTitle: TQRLabel;
    qrsysPage: TQRSysData;
    PageFooterBand1: TQRBand;
    qrsysTime: TQRSysData;
    qrlblFilename: TQRLabel;
    qrlblCompany: TQRLabel;
    ChildBand4: TQRChildBand;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    qrlblUnbanked: TQRLabel;
    ChildBand5: TQRChildBand;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    ChildBand6: TQRChildBand;
    qryBankedDeposit: TUniQuery;
    qrlblReceiptCounter: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    procedure QuickRepAfterPreview(Sender: TObject);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure qrlblBankedPrint(sender: TObject; var Value: String);
    procedure qrlblOutstandingDepositsPrint(sender: TObject; var Value: String);
    procedure qrexSumAmtPrint(sender: TObject; var Value: String);
    procedure qryReceiptsBankDepsAfterScroll(DataSet: TDataSet);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure qrlblUnbankedPrint(sender: TObject; var Value: String);
    procedure qrdetChequesBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlblReceiptCounterPrint(sender: TObject; var Value: String);
  private
    foSession : TUniConnection;

    foBankDeposits : TStringList;

    fdtFromDate : TDateTime;
    fdtToDate   : TDateTime;

    fsBank      : String;
    fsWhere     : String;
    fsSQLWhere  : String;
    fsTitle     : String;

    fiReceipt   : Integer;
    fiCounter   : Integer;

    fcAmountBanked    : Currency;
    fcAmountReceipted : Currency;

    procedure SetCaptions;
    procedure AddBankDepositsToList;

    procedure GetReceiptsForPeriod;
    procedure GetBankDepositsForPeriod;
    procedure GetAllocTransactionsForReceipts;

    procedure setSession(oSession : TUniConnection);

  public
    property Session  : TUniConnection read foSession write setSession;

    property FromDate : TDateTime read fdtFromDate write fdtFromDate;
    property ToDate   : TDateTime read fdtToDate write fdtToDate;

    property Bank     : String read fsBank write fsBank;
    property Where    : String read fsWhere write fsWhere;
    property SQLWhere : String read fsSQLWhere write fsSQLWhere;
    property Title    : String read fsTitle write fsTitle;

    property Receipt  : Integer read fiReceipt write fiReceipt;

    procedure GetData;

  end;

var
  qrCashReceiptsBook: TqrCashReceiptsBook;

implementation

{$R *.DFM}



procedure TqrCashReceiptsBook.GetData;
begin
  try
    foBankDeposits := TStringlist.Create;

    GetAllocTransactionsForReceipts;
    GetReceiptsForPeriod;
    GetBankDepositsForPeriod;

    SetCaptions;

  except
      Raise;

  end;    //  end try-except

end;



procedure TqrCashReceiptsBook.SetCaptions;
begin
  qrlblCompany.Caption := SystemString('COMPANY');

  qrlblFileName.Caption := Application.ExeName;

  qrlblPrintRcpTitle.Caption := fsTitle;

end;



procedure TqrCashReceiptsBook.GetReceiptsForPeriod;
begin
  try
    qryReceiptsBankDeps.Close;
    qryReceiptsBankDeps.SQL.Clear;

    if(fsWhere = '') then
    begin
      qryReceiptsBankDeps.SQL.Add('SELECT TRUNC(CREATED) AS CREATED, RCPTNO, ');
      qryReceiptsBankDeps.SQL.Add('ACCT, PAYOR, TYPE, DESCR, AMOUNT, BANKED, NRECEIPT ');
      qryReceiptsBankDeps.SQL.Add('FROM RECEIPT WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo ' + fsSQLWhere + ' ORDER BY CREATED');

      qryReceiptsBankDeps.ParamByName('P_DateFrom').AsDate := Trunc(fdtFromDate);
      qryReceiptsBankDeps.ParamByName('P_DateTo').AsDate := Trunc(fdtToDate);

    end else
    begin
      qryReceiptsBankDeps.SQL.Add('SELECT TRUNC(CREATED) AS CREATED, RCPTNO, ');
      qryReceiptsBankDeps.SQL.Add('ACCT, PAYOR, TYPE, DESCR, AMOUNT, BANKED, NRECEIPT ');
      qryReceiptsBankDeps.SQL.Add('FROM RECEIPT WHERE 0=0 ');

      if (fdtFromDate <> 0) then
      begin
        qryReceiptsBankDeps.SQL.Add('AND trunc(CREATED) >= :p_datefrom');
        qryReceiptsBankDeps.ParamByName('P_DateFrom').AsDate := Trunc(fdtFromDate);

      end;

      if (fdtToDate <> 0) then
      begin
        qryReceiptsBankDeps.SQL.Add('AND trunc(CREATED) <= :p_dateto');
        qryReceiptsBankDeps.ParamByName('P_DateTo').AsDate := Trunc(fdtToDate);

      end;

      qryReceiptsBankDeps.SQL.Add(fsWhere);

//      qryReceiptsBankDeps.SQL.Add('ORDER BY CREATED');

    end;

    qryReceiptsBankDeps.Open;

  except
    Raise;

  end;    //  end try-except

end;


procedure TqrCashReceiptsBook.GetBankDepositsForPeriod;
var
  lsWhere : String;
begin
  try
    lsWhere := '';

    qryTmp.Close;
    qryTmp.SQL.Clear;

    qryTmp.SQL.Add('SELECT SUM(AMOUNT) AS BANKED_AMOUNT, ');
    qryTmp.SQL.Add('TRUNC(DEPOSIT_DATE) AS DEPOSITED_DATE ');
    qryTmp.SQL.Add('FROM BANKDEP ');

    if (fdtFromDate <> 0) then
      begin
        lsWhere := 'WHERE TRUNC(DEPOSIT_DATE) >= :p_datefrom ';

      end;

    if (fdtToDate <> 0) then
      begin
        if (lsWhere = '') then
          lsWhere := 'WHERE TRUNC(DEPOSIT_DATE) <= :p_dateto '
        else
          lsWhere := lsWhere + 'AND TRUNC(DEPOSIT_DATE) <= :p_dateto ';

      end;

    if (fsBank <> '') then
      begin
        if (lsWhere = '') then
          lsWhere := 'WHERE ACCT = ''' + fsBank + ''' '
        else
          lsWhere := lsWhere + 'AND ACCT = ''' + fsBank + ''' ';

      end;    //  end if

    qryTmp.SQL.Add(lsWhere);
    qryTmp.SQL.Add('GROUP BY TRUNC(DEPOSIT_DATE) ');
    qryTmp.SQL.Add('ORDER BY TRUNC(DEPOSIT_DATE) ');

    if (fdtFromDate <> 0) then
      begin
        qryTmp.ParamByName('P_DateFrom').AsDate := Trunc(fdtFromDate);

      end;

    if (fdtToDate <> 0) then
      begin
        qryTmp.ParamByName('P_DateTo').AsDate := Trunc(fdtToDate);

      end;

    qryTmp.Open;

    if (not qryTmp.IsEmpty) then
      AddBankDepositsToList;

    qryTmp.Close;

  except
    Raise;

  end;    //  end try-except

end;


procedure TqrCashReceiptsBook.GetAllocTransactionsForReceipts;
begin
  try
    qryNallocs.Close;
    qryNallocs.ParamByName('P_Nreceipt').AsInteger := fiReceipt;
    qryNallocs.Open;
  except
    Raise;
  end;    //  end try-except

end;


procedure TqrCashReceiptsBook.AddBankDepositsToList;
var
  lsDate   : String;
  lsAmount : String;
begin
  foBankDeposits.Clear;
  qryTmp.First;

  while (not qryTmp.Eof) do
    begin
      lsDate := qryTmp.FieldByName('DEPOSITED_DATE').AsString;
      lsAmount := qryTmp.FieldByName('BANKED_AMOUNT').AsString;

      foBankDeposits.Add(lsDate + '=' + lsAmount);

      qryTmp.Next;

    end;    //  end while

end;


procedure TqrCashReceiptsBook.QuickRepAfterPreview(Sender: TObject);
begin
  FreeAndNil(foBankDeposits);
  
end;

procedure TqrCashReceiptsBook.QRLabel32Print(sender: TObject;
  var Value: String);
var
  lsDate   : String;
  lsAmount : String;
  lcAmount : Currency;
begin
  lsDate := DateToStr(qryReceiptsBankDeps.FieldByName('CREATED').AsDateTime);

  lsAmount := foBankDeposits.Values[lsDate];

  if (lsAmount = '') then
    lcAmount := 0
  else
    lcAmount := StrToCurr(lsAmount);

  fcAmountBanked := fcAmountBanked + lcAmount;

  Value := FormatFloat('##,##0.00;(##,##0.00);-', lcAmount);
end;


procedure TqrCashReceiptsBook.qrlblBankedPrint(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('##,##0.00;(##,##0.00);-', fcAmountBanked);
end;

procedure TqrCashReceiptsBook.qrlblOutstandingDepositsPrint(sender: TObject;
  var Value: String);
var
  lcTotal : Currency;
begin
  lcTotal := (fcAmountReceipted - fcAmountBanked) - fcAmountBanked;

  if (lcTotal > 0) then
    Value := FormatFloat('##,##0.00;(##,##0.00);-', lcTotal)
  else
    Value := '-';
end;

procedure TqrCashReceiptsBook.qrexSumAmtPrint(sender: TObject;
  var Value: String);
begin
  fcAmountReceipted := StrToFloat(Value);

  Value := FormatFloat('##,##0.00;(##,##0.00);-', fcAmountReceipted);

end;

procedure TqrCashReceiptsBook.qryReceiptsBankDepsAfterScroll(
  DataSet: TDataSet);
begin
  qryNallocs.Close;
  qryNallocs.ParamByName('P_Nreceipt').AsInteger := qryReceiptsBankDeps.FieldByName('NRECEIPT').AsInteger;
  qryNallocs.Open;

end;

procedure TqrCashReceiptsBook.QRDBText9Print(sender: TObject;
  var Value: String);

begin
  qryBankedDeposit.Close;
  qryBankedDeposit.ParamByName('RCPTNO').AsString := qryReceiptsBankDeps.FieldByName('RCPTNO').AsString;
  qryBankedDeposit.Open;

  if (qryBankedDeposit.IsEmpty) then
    Value := ''
  else
    Value := FormatFloat('##,##0.00;(##,##0.00);-', qryBankedDeposit.FieldByName('AMOUNT').AsCurrency);

end;

procedure TqrCashReceiptsBook.qrlblUnbankedPrint(sender: TObject;
  var Value: String);
var
  lcTotal : Currency;
begin
  lcTotal := fcAmountReceipted - fcAmountBanked;

  if (lcTotal > 0) then
    Value := FormatFloat('##,##0.00;(##,##0.00);-', lcTotal)
  else
    Value := '-';

end;

procedure TqrCashReceiptsBook.setSession(oSession : TUniConnection);
begin
  qryNallocs.Session := oSession;
  qryTmp.Session := oSession;
  qryReceiptsBankDeps.Session := oSession;
  qryBankedDeposit.Session := oSession;

  foSession := oSession;

end;
 
procedure TqrCashReceiptsBook.qrdetChequesBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  fiCounter := fiCounter + 1;
  
end;

procedure TqrCashReceiptsBook.qrlblReceiptCounterPrint(sender: TObject;
  var Value: String);
begin
  Value := 'Count: ' + IntToStr(fiCounter);

  fiCounter := 0;

end;

end.
