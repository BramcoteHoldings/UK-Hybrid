unit FeeListPieReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DbChart, QRTEE, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TqrFeeListPieReport = class(TQuickRep)
    TitleBand2: TQRBand;
    QRSysData5: TQRSysData;
    lPieTitle: TQRLabel;
    QRDBChart1: TQRDBChart;
    qrChart: TQRChart;
    Series1: TPieSeries;
    qPie: TUniQuery;
    qPieLABELS: TStringField;
    qPiePIE: TFloatField;
    QRSysData1: TQRSysData;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure TitleBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FPieTitle: String;
    FSQL: String;
    FDateFrom: TDateTime;
    FDateTo: TDateTime;

  public
    property SQL: String read FSQL write FSQL;
    property PieTitle: String read FPieTitle write FPieTitle;
    property DateFrom: TDateTime read FDateFrom write FDateFrom;
    property DateTo:   TDateTime read FDateTo   write FDateTo;
  end;

var
  qrFeeListPieReport: TqrFeeListPieReport;

implementation

uses AxiomData;

{$R *.DFM}

procedure TqrFeeListPieReport.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qPie.SQL.Text := SQL;
  lPieTitle.Caption := FPieTitle;
  qrChart.Chart.Title.Text.Text := qrFeeListPieReport.ReportTitle;
  if(DateFrom <> 0) then
    qPie.ParamByName('P_DateFrom').AsDate := DateFrom;
  if(DateTo <> 0) then
    qPie.ParamByName('P_DateTo').AsDate := DateTo;
  qPie.Open();
end;

procedure TqrFeeListPieReport.QuickRepAfterPrint(Sender: TObject);
begin
  qPie.Close();
end;

procedure TqrFeeListPieReport.TitleBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := True;
end;

end.
