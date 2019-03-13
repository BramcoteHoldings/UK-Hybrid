unit FeeListBarReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DbChart, QRTEE, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TqrFeeListBarReport = class(TQuickRep)
    TitleBand2: TQRBand;
    QRSysData5: TQRSysData;
    lBarTitle: TQRLabel;
    QRDBChart1: TQRDBChart;
    qrChart: TQRChart;
    qBar: TUniQuery;
    qBarPIE: TFloatField;
    QRSysData1: TQRSysData;
    Series1: TBarSeries;
    qBarLABELS: TDateTimeField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure TitleBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FBarTitle: String;
    FSQL: String;
    FDateFrom: TDateTime;
    FDateTo: TDateTime;

  public
    property SQL: String read FSQL write FSQL;
    property BarTitle: String read FBarTitle write FBarTitle;
    property DateFrom: TDateTime read FDateFrom write FDateFrom;
    property DateTo:   TDateTime read FDateTo   write FDateTo;
  end;

var
  qrFeeListBarReport: TqrFeeListBarReport;

implementation

uses AxiomData;

{$R *.DFM}

procedure TqrFeeListBarReport.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qBar.SQL.Text := SQL;
  lBarTitle.Caption := FBarTitle;
  qrChart.Chart.Title.Text.Text := qrFeeListBarReport.ReportTitle;
  if(DateFrom <> 0) then
    qBar.ParamByName('P_DateFrom').AsDate := DateFrom;
  if(DateTo <> 0) then
    qBar.ParamByName('P_DateTo').AsDate := DateTo;
  qBar.Open();
end;

procedure TqrFeeListBarReport.QuickRepAfterPrint(Sender: TObject);
begin
  qBar.Close();
end;

procedure TqrFeeListBarReport.TitleBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := True;
end;

end.
