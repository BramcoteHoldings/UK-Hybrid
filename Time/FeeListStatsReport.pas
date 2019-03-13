unit FeeListStatsReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrFeeListStatsReport = class(TQuickRep)
    BandDetail: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel13: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    qlTotalPercent: TQRLabel;
    qlUnbilledHours: TQRLabel;
    qlUnbilledMinsMoney: TQRLabel;
    qlTotalAverage: TQRLabel;
    qlTotalNumber: TQRLabel;
    qlUnbilledMins: TQRLabel;
    qlUnbilledUnitMoney: TQRLabel;
    qlUnbilledUnits: TQRLabel;
    qlUnbilledPercent: TQRLabel;
    qlTotalAmount: TQRLabel;
    qlUnbilledAverage: TQRLabel;
    qlUnbilledNumber: TQRLabel;
    qlUnbilledAmount: TQRLabel;
    qlBilledHours: TQRLabel;
    qlBilledMinsMoney: TQRLabel;
    qlBilledMins: TQRLabel;
    qlBilledUnitMoney: TQRLabel;
    qlBilledUnits: TQRLabel;
    qlBilledPercent: TQRLabel;
    qlBilledAverage: TQRLabel;
    qlBilledNumber: TQRLabel;
    qlBilledAmount: TQRLabel;
    qlTotalMins: TQRLabel;
    qlTotalMinsMoney: TQRLabel;
    qlTotalHours: TQRLabel;
    qlTotalUnitMoney: TQRLabel;
    qlTotalUnits: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    qlDaysWorked: TQRLabel;
    qlHoursWorked: TQRLabel;
    QRLabel30: TQRLabel;
    qlUnitsWorked: TQRLabel;
    QRLabel31: TQRLabel;
    qlMoneyWorked: TQRLabel;
    QRLabel32: TQRLabel;
    qlAuthorUnitsMoneyMsg: TQRLabel;
    qlAuthorUnitsMoney: TQRLabel;
    qlStatsTitle: TQRLabel;
    procedure BandDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrFeeListStatsReport: TqrFeeListStatsReport;

implementation

{$R *.DFM}

procedure TqrFeeListStatsReport.BandDetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := True;
end;

end.
