unit DiaryEventsReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrDiaryEvents = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    qrlblEventTitle: TQRLabel;
    QRSysData3: TQRSysData;
    qrghDay: TQRGroup;
    QRDBText15: TQRDBText;
    qrchdDayGroup: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    qrdetEvents: TQRBand;
    QRDBText17: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText10: TQRDBText;
    qrlblJurLoc: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    qrdblblEventReminderFor: TQRDBText;
    qrgfDay: TQRBand;
    procedure qrdetEventsBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrghDayAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrgfDayAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    FLastLocation: String;
  public
    FDayBreak: Boolean;
  end;

var
  qrDiaryEvents: TqrDiaryEvents;

implementation

uses Diary99;

{$R *.DFM}

procedure TqrDiaryEvents.qrdetEventsBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrdetEvents.Frame.DrawTop := DataSet.FieldByName('JurLoc').AsString <> FLastLocation;
  qrlblJurLoc.Enabled := qrdetEvents.Frame.DrawTop; // Same comparison sets value
end;

procedure TqrDiaryEvents.qrghDayAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrghDay.ForceNewPage := not FDayBreak;
  qrlblJurLoc.Enabled := True;

end;

procedure TqrDiaryEvents.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  FLastLocation := 'xxx';
  qrghDay.ForceNewPage := False;
end;

procedure TqrDiaryEvents.qrgfDayAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrdetEvents.Frame.DrawTop := DataSet.FieldByName('JurLoc').AsString <> FLastLocation;
  qrlblJurLoc.Enabled := qrdetEvents.Frame.DrawTop; // Same comparison sets value
end;

end.
