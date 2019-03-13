unit ClientPositionReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TqrClientPositionReport = class(TQuickRep)
    HeaderBand: TQRBand;
    qClientDetails: TUniQuery;
    qClientDetailsNNAME: TFloatField;
    qClientDetailsGIVENNAMES: TStringField;
    qClientDetailsLASTNAME: TStringField;
    qClientDetailsSEARCH: TStringField;
    qClientDetailsADDRESS: TStringField;
    qClientDetailsWORKPHONE: TStringField;
    qClientDetailsHOMEPHONE: TStringField;
    qClientDetailsCODE: TStringField;
    qClientDetailsNAME: TStringField;
    qClientDetailsSHORTNAME: TStringField;
    qClientDetailsLONGNAME: TStringField;
    qClientDetailsEMAIL: TStringField;
    qClientDetailsMOBILE: TStringField;
    lReportTitle: TQRSysData;
    lCompany: TQRLabel;
    sDateTime: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape1: TQRShape;
    qClientDetailsFAX: TStringField;
    qClientDetailsTOTALWIP: TFloatField;
    qClientDetailsTOTALUNBDISB: TFloatField;
    qClientDetailsTOTALBILLED: TFloatField;
    qClientDetailsTOTALPAID: TFloatField;
    qClientDetailsTOTALWRITEOFF: TFloatField;
    qClientDetailsTOTALOWING: TFloatField;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText16: TQRDBText;
    qClientDetailsINTRODUCED: TDateTimeField;
    qClientDetailsPARTNERCODE: TStringField;
    qClientDetailsPARTNER: TStringField;
    QRShape2: TQRShape;
    Cheques: TQRLabel;
    Sundries: TQRLabel;
    Anticipated: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    qClientDetailsTOTALUNBILLEDDISB: TFloatField;
    qClientDetailsTOTALCHEQREQ: TFloatField;
    qClientDetailsTOTALSUNDRIES: TFloatField;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText20: TQRDBText;
    qClientDetailsTOTALCREDITORS: TFloatField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure HeaderBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FNClient: Integer;

  public
    property NClient: Integer read FNClient write FNClient;
  end;

var
  qrClientPositionReport: TqrClientPositionReport;

implementation

uses AxiomData;

{$R *.DFM}

procedure TqrClientPositionReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qClientDetails.ParamByName('nclient').AsInteger := NClient;
  qClientDetails.Open();
end;

procedure TqrClientPositionReport.HeaderBandBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lCompany.Caption := dmAxiom.EntityName;
end;

end.
