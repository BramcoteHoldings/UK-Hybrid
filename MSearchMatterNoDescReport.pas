unit MSearchMatterNoDescReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrMSearchMatterNoDescReport = class(TQuickRep)
    QRBand3: TQRBand;
    QRSysData5: TQRSysData;
    qrlblCompany2: TQRLabel;
    QRSysData6: TQRSysData;
    qrlblTitle2: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand2: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel8: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrMSearchMatterNoDescReport: TqrMSearchMatterNoDescReport;

implementation

uses MSearch, MiscFunc;

{$R *.DFM}

procedure TqrMSearchMatterNoDescReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qrlblCompany2.Caption := SystemString('COMPANY');
  qrlblTitle2.Caption := frmMatterSearch.Caption;
end;

end.
