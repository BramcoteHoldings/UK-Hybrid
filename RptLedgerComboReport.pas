unit RptLedgerComboReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrComboLedger = class(TQuickRep)
    QRBand7: TQRBand;
    QRSysData11: TQRSysData;
    qrlblTitle: TQRLabel;
    QRSysData12: TQRSysData;
    QRLabel63: TQRLabel;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRLabel65: TQRLabel;
    QRDBText56: TQRDBText;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRLabel85: TQRLabel;
    QRDBText74: TQRDBText;
    QRLabel86: TQRLabel;
    QRDBText75: TQRDBText;
    QRLabel87: TQRLabel;
    QRLabel89: TQRLabel;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    qrdbtbArchived: TQRDBText;
    qrlblArchivedMsg: TQRLabel;
    qrlblArchiveMsg: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    qrlblCompany: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    qrbdCombo: TQRBand;
    qrtbComboAdate: TQRDBText;
    qrtbComboDesc1: TQRDBText;
    qrtbComboFeesDR: TQRDBText;
    qrtbComboRefno: TQRDBText;
    qrtbComboSundDR: TQRDBText;
    qrtbComboDisbDR: TQRDBText;
    qrtbComboDebtCR: TQRDBText;
    qrtbComboDebtDR: TQRDBText;
    qrtbComboTrustCR: TQRDBText;
    qrtbComboTrustDR: TQRDBText;
    qrtbComboType: TQRDBText;
    qrtbComboBank: TQRDBText;
    qrtbComboDebit: TQRDBText;
    qrExpTrustBal: TQRExpr;
    qrbsCombo: TQRBand;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel64: TQRLabel;
    QRExpr14: TQRExpr;
    QRLabel4: TQRLabel;
    QRExpr2: TQRExpr;
    ChildBand1: TQRChildBand;
    QRLabel88: TQRLabel;
    QRExpr23: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    qrlAddress: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel68Print(sender: TObject; var Value: String);
    procedure QRLabel69Print(sender: TObject; var Value: String);
    procedure QRLabel76Print(sender: TObject; var Value: String);
    procedure qrbdComboBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlAddressPrint(sender: TObject; var Value: String);
    procedure qrExpTrustBalPrint(sender: TObject; var Value: String);
    procedure qrtbComboAdatePrint(sender: TObject; var Value: String);
  private
    FCaption: String;
  public

  end;

var
  qrComboLedger: TqrComboLedger;

implementation

uses RptLedgerCombo, MiscFunc;

{$R *.DFM}

procedure TqrComboLedger.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlblCompany.Caption := SystemString('COMPANY');
  if(FCaption = '') then
  begin
    FCaption := qrlblTitle.Caption;
    if not TfrmRptLedgerCombo(Owner).chkFees.Checked then
      FCaption := FCaption + ' (without fees)';
    if TfrmRptLedgerCombo(Owner).chkUnbilled.Checked then
      FCaption := FCaption + ' for unbilled items';
  end;
  qrlblTitle.Caption := FCaption;
  qrtbComboDesc1.WordWrap := TfrmRptLedgerCombo(Owner).chkWrap.Checked;
  qrtbComboDesc1.AutoStretch := TfrmRptLedgerCombo(Owner).chkWrap.Checked;
end;

procedure TqrComboLedger.QRLabel68Print(sender: TObject;
  var Value: String);
begin
  if TfrmRptLedgerCombo(Owner).chkShowSundry.Checked then
    Value := 'Sundries';
end;

procedure TqrComboLedger.QRLabel69Print(sender: TObject;
  var Value: String);
begin
  if TfrmRptLedgerCombo(Owner).chkShowSundry.Checked then
    Value := 'GST';
end;

procedure TqrComboLedger.QRLabel76Print(sender: TObject;
  var Value: String);
begin
  if TfrmRptLedgerCombo(Owner).chkGst.Checked then
    Value := 'Disbursements (inc tax)'
  else
    Value := 'Disbursements (ex tax)';
end;

procedure TqrComboLedger.qrbdComboBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  LDesc: String;
begin
  if not TfrmRptLedgerCombo(Owner).chkWrap.Checked then
  begin
    LDesc := DataSet.FieldByName('DESCR').AsString;
    if Pos(#13, LDesc) > 0 then
    begin
      if(Pos ('From CheqReq#', LDesc) = 0) then
        qrtbComboDesc1.Height := 28
      else
        qrtbComboDesc1.Height := 41;
    end else
      qrtbComboDesc1.Height := 15;
    qrbdCombo.Height := qrtbComboDesc1.Height;
  end;


  if not TfrmRptLedgerCombo(Owner).cbHideStripe.Checked then
  begin
    if qrbdCombo.Color = clWhite then
      qrbdCombo.Color := clLtGray
    else
      qrbdCombo.Color := clWhite;
    qrtbComboDesc1.Color := qrbdCombo.Color;
  end;
end;

procedure TqrComboLedger.qrlAddressPrint(sender: TObject;
  var Value: String);
begin
  Value :=
    TfrmRptLedgerCombo(Owner).qryPhoneBookADDRESS.Value + ' ' +
    TfrmRptLedgerCombo(Owner).qryPhoneBookSUBURB.Value + ' ' +
    TfrmRptLedgerCombo(Owner).qryPhoneBookSTATE.Value + ' ' +
    TfrmRptLedgerCombo(Owner).qryPhoneBookPOSTCODE.Value;
end;

procedure TqrComboLedger.qrExpTrustBalPrint(sender: TObject;
  var Value: String);
begin
  if(DataSet.FieldByName('Type').AsString = 'Transit') then
    Value := '';
end;

procedure TqrComboLedger.qrtbComboAdatePrint(sender: TObject;
  var Value: String);
begin
   if ((Value = '30/12/1899') or (Value = '30 12 1899') or
       (Value = '30 12 99')) then
      Value := '';
end;

end.

