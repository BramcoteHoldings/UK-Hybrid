unit FeeListSummaryReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS,
  Variants;

type
  TqrFeeListSummaryReport = class(TQuickRep)
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    TitleBand: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lReportTitle: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel38: TQRLabel;
    qFees: TUniQuery;
    qFeesCREATED: TDateTimeField;
    qFeesAUTHOR: TStringField;
    qFeesFILEID: TStringField;
    qFeesNMATTER: TFloatField;
    qFeesDESCR: TStringField;
    qFeesNFEE: TFloatField;
    qFeesAMOUNT: TFloatField;
    qFeesUNITS: TIntegerField;
    qFeesMINS: TIntegerField;
    qFeesRATE: TFloatField;
    qFeesINVOICEDATE: TDateTimeField;
    qFeesBILLED: TStringField;
    qFeesTYPE: TStringField;
    qFeesTASK: TStringField;
    qFeesTASK_AMOUNT: TFloatField;
    qFeesBILLNO: TStringField;
    qFeesTITLE: TStringField;
    qFeesSHORTDESCR: TStringField;
    qFeesBRANCH: TStringField;
    QRLabel12: TQRLabel;
    qFeesNMEMO: TFloatField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure QRLabel13Print(sender: TObject; var Value: String);
  private
    FTitle: String;
    FSQL: String;
    FDateTo: TDateTime;
    FDateFrom: TDateTime;

  public
    property SQL: String read FSQL write FSQL;
    property Title: String read FTitle  write FTitle;
    property DateFrom: TDateTime read FDateFrom write FDateFrom;
    property DateTo:   TDateTime read FDateTo   write FDateTo;
  end;

var
  qrFeeListSummaryReport: TqrFeeListSummaryReport;

implementation

uses FeeList;

{$R *.DFM}

procedure TqrFeeListSummaryReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qFees.SQL.Text := SQL;
  lReportTitle.Caption := FTitle;

  if(DateFrom <> 0) then
    qFees.ParamByName('P_DateFrom').AsDate := DateFrom;
  if(DateTo <> 0) then
    qFees.ParamByName('P_DateTo').AsDate := DateTo;
  qFees.Open();

end;

procedure TqrFeeListSummaryReport.QuickRepAfterPrint(Sender: TObject);
begin
  qFees.Close();
end;

procedure TqrFeeListSummaryReport.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  {
  if not VarIsNull(qFees.FieldByName('NMEMO').AsVariant) then
  begin
    if qFees.FieldByName('NMEMO').AsString <> '' then Value := 'Y'
    else Value := 'N';
  end
  else Value := 'N';
  }
end;

end.
