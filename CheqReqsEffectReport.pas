unit CheqReqsEffectReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DBGrids;

type
  TqrCheqReqEffectReport = class(TQuickRep)
    PageHeaderBand: TQRBand;
    TitleBand: TQRBand;
    ColumnHeaderBand: TQRBand;
    lRefNo: TQRLabel;
    lPayee: TQRLabel;
    lDescription: TQRLabel;
    lAmount: TQRLabel;
    lPreBalance: TQRLabel;
    lPostBalance: TQRLabel;
    DetailBand: TQRBand;
    tRefNo: TQRDBText;
    tPayee: TQRDBText;
    tDescr: TQRDBText;
    tPreBalance: TQRLabel;
    tPostBalance: TQRLabel;
    tAmount: TQRLabel;
    QRSysData1: TQRSysData;
    lCompany: TQRLabel;
    QRSysData2: TQRSysData;
    SummaryBand: TQRBand;
    tTotalAmounts: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    tNumOverdrawn: TQRLabel;
    tOverdrawnBy: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRSysData3: TQRSysData;
    procedure DetailBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FLastRefNo: String;
    FLastTrustBalance: Currency;
    FTotalAmounts: Currency;
    FTotalOverdrawn: Currency;
    FNumOverDrawn: Integer;
    FSelectedOnly: Boolean;
    FDBGrid: TDBGrid;
  public

    property SelectedOnly: Boolean read FSelectedOnly write FSelectedOnly;
    property DBGrid: TDBGrid read FDBGrid write FDBGrid;
  end;

var
  qrCheqReqEffectReport: TqrCheqReqEffectReport;

implementation

uses CheqReqs, MiscFunc;

{$R *.DFM}

procedure TqrCheqReqEffectReport.DetailBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  function CustomNum(ANumber: Currency): String;
  begin
    if(ANumber = 0) then
      Result := '-'
    else if(ANumber > 0) then
      Result := Format('%.2n',[ANumber])
    else
      Result := Format('(%.2n)',[-ANumber]);
  end;
var
  LAmount: Currency;
  LBookMark: String;
begin
  if(not Assigned(DataSet)) then
    Exit;
  if(FSelectedOnly and Assigned(FDBGrid)) then
  begin
    LBookMark := DataSet.Bookmark;
    PrintBand := FDBGrid.SelectedRows.IndexOf(LBookMark) > -1;
  end;

  PrintBand := PrintBand and (DataSet.FieldByName('trust').AsString = 'T');


  if(PrintBand) then
  begin
    if(FLastRefNo <> DataSet.FieldByName('crefno').AsString) then
    begin
      if(FLastTrustBalance < 0) then
      begin
        Inc(FNumOverDrawn);
        FTotalOverdrawn := FTotalOverdrawn + FLastTrustBalance;
      end;

      FLastRefNo := DataSet.FieldByName('crefno').AsString;
      FLastTrustBalance := ClearTrust(FLastRefNo);
    end;
    LAmount              := DataSet.FieldByName('amount').AsCurrency;
    tPreBalance.Caption  := CustomNum(FLastTrustBalance);
    FLastTrustBalance    := FLastTrustBalance - LAmount;
    tPostBalance.Caption := CustomNum(FLastTrustBalance);
    tAmount.Caption      := CustomNum(LAmount);
    FTotalAmounts        := FTotalAmounts + LAmount;
  end;
end;

procedure TqrCheqReqEffectReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  FLastRefNo        := '';
  FTotalAmounts     := 0;
  FNumOverdrawn     := 0;
  FLastTrustBalance := 0;
end;

procedure TqrCheqReqEffectReport.PageHeaderBandBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lCompany.Caption := SystemString('COMPANY');
end;

procedure TqrCheqReqEffectReport.SummaryBandBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    if(FLastTrustBalance < 0) then
    begin
      Inc(FNumOverDrawn);
      FTotalOverdrawn := FTotalOverdrawn + FLastTrustBalance;
    end;

  tTotalAmounts.Caption := Format('%.2n',[FTotalAmounts]);
  tNumOverdrawn.Caption := IntToStr(FNumOverdrawn);
  tOverDrawnBy.Caption  := Format('%.2n',[-FTotalOverDrawn]);
end;

end.

