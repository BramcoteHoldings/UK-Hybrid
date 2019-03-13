unit MSearchMattersReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrMSearchMattersReport = class(TQuickRep)
    SummaryBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qrphHeader: TQRBand;
    QRSysData1: TQRSysData;
    qrlblCompany: TQRLabel;
    QRSysData2: TQRSysData;
    qrlblTitle: TQRLabel;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrMSearchMattersReport: TqrMSearchMattersReport;

implementation

uses MSearch, MiscFunc;

{$R *.DFM}

procedure TqrMSearchMattersReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qrlblCompany.Caption := SystemString('COMPANY');
  qrlblTitle.Caption := frmMatterSearch.Caption;
end;

end.
