unit FeeListAuthorSummaryReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TqrFeeListAuthorSummaryReport = class(TQuickRep)
    QRBand4: TQRBand;
    QRSysData9: TQRSysData;
    QRSysData10: TQRSysData;
    QRLabel39: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    lReportTitle: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    SummaryBand2: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    qAuthorSummary: TUniQuery;
    QRLabel12: TQRSysData;
    qAuthorSummaryAUTHOR: TStringField;
    qAuthorSummaryNAME: TStringField;
    qAuthorSummaryUNITS: TFloatField;
    qAuthorSummaryMINS: TFloatField;
    qAuthorSummaryAMOUNT: TFloatField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private
    FSQL: String;
    FTitle: String;
    FDateTo: TDateTime;
    FDateFrom: TDateTime;

  public
    property SQL: String read FSQL write FSQL;
    property Title: String read FTitle write FTitle;
    property DateFrom: TDateTime read FDateFrom write FDateFrom;
    property DateTo:   TDateTime read FDateTo   write FDateTo;
  end;

var
  qrFeeListAuthorSummaryReport: TqrFeeListAuthorSummaryReport;

implementation

uses AxiomData;

{$R *.DFM}

procedure TqrFeeListAuthorSummaryReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qAuthorSummary.SQL.Text := SQL;
  lReportTitle.Caption := FTitle;

  if(DateFrom <> 0) then
    qAuthorSummary.ParamByName('P_DateFrom').AsDate := DateFrom;
  if(DateTo <> 0) then
    qAuthorSummary.ParamByName('P_DateTo').AsDate := DateTo;
  qAuthorSummary.Open();
end;

procedure TqrFeeListAuthorSummaryReport.QuickRepAfterPrint(
  Sender: TObject);
begin
  qAuthorSummary.Close();
end;

end.
