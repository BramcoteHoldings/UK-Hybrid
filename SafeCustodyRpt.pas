unit SafeCustodyRpt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms;

type
  TqrSafeCustody = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    qrlblCompany: TQRLabel;
    qrlblTitle: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    qrlblDocumentMsg: TQRLabel;
    QRBand2: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    procedure qrSafeCustodyBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrSafeCustody: TqrSafeCustody;

implementation

uses AxiomData, MiscFunc, Clients;

{$R *.DFM}

procedure TqrSafeCustody.qrSafeCustodyBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlblCompany.Caption := SystemString('COMPANY');
  qrlblTitle.Caption := 'Safe Custody Packet ' + dmAxiom.qryDocreg.FieldByName('PACKETID').AsString;
  qrlblDocumentMsg.Enabled := dmAxiom.qryDocreg.FieldByName('ADDRESS_PATH').AsString <> '';
end;

end.
