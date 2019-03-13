unit FeeListGroupedReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TqrFeeListGroupedReport = class(TQuickRep)
    QRBand5: TQRBand;
    QRSysData11: TQRSysData;
    QRLabel43: TQRLabel;
    QRSysData12: TQRSysData;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    lTitle: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    ghFeeGroup: TQRGroup;
    qlGroupField: TQRLabel;
    qtGroupField: TQRDBText;
    QRBand6: TQRBand;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    qtCreated: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    qrgfFeeGroup: TQRBand;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRBand7: TQRBand;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
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
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FTitle: String;
    FGroupField: String;
    FSQL: String;
    FDateTo: TDateTime;
    FDateFrom: TDateTime;
    FGroupCaption: String;

  public
    property SQL: String read FSQL write FSQL;
    property Title: String read FTitle write FTitle;
    property DateFrom: TDateTime read FDateFrom write FDateFrom;
    property DateTo:   TDateTime read FDateTo   write FDateTo;
    property GroupField: String read FGroupField write FGroupField;
    property GroupCaption: String read FGroupCaption write FGroupCaption;
  end;

var
  qrFeeListGroupedReport: TqrFeeListGroupedReport;

implementation

{$R *.DFM}

procedure TqrFeeListGroupedReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qFees.SQL.Text := SQL;
  lTitle.Caption := FTitle;
  ghFeeGroup.Expression := 'qFees.' + GroupField;
  qtGroupField.DataField := GroupField;
  qlGroupField.Caption   := GroupCaption;

  if(DateFrom <> 0) then
    qFees.ParamByName('P_DateFrom').AsDate := DateFrom;
  if(DateTo <> 0) then
    qFees.ParamByName('P_DateTo').AsDate := DateTo;
  qFees.Open();

end;

end.
