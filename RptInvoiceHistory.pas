unit RptInvoiceHistory;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, Db, quickrpt, ExtCtrls, ComCtrls, Buttons, StdCtrls,
  DateChangeButton, NumberEdit, QRPrntr, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, DBAccess;

type
  TfrmRptInvoiceHistory = class(TForm)
    pagReport: TPageControl;
    tabReport: TTabSheet;
    qryInvoice: TUniQuery;
    qryInvoiceHistory: TUniQuery;
    qrInvoiceHistory: TQuickRep;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    qrlblTitle: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowHistory(const Entity: string; const Invoice: integer);
  end;

implementation

uses
  AxiomData;

{$R *.DFM}

{
  Code modified 23.01.2003 GG

  Added Entity parameter and made both parameters constant values
}
procedure TfrmRptInvoiceHistory.ShowHistory(const Entity: string; const Invoice: integer);
begin
  qryInvoice.ParamByName('INVOICE').AsInteger := Invoice;
  qryInvoice.ParamByName('ACCT').AsString := Entity;
  qryInvoice.Open;
  if not qryInvoice.IsEmpty then
  begin
    qryInvoiceHistory.ParamByName('INVOICE').AsInteger := Invoice;
    qryInvoiceHistory.ParamByName('ACCT').AsString := Entity;
    qryInvoiceHistory.Open;
    qrInvoiceHistory.Preview;
  end;
  Self.Close;
end;


procedure TfrmRptInvoiceHistory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Self.Release;
end;

end.

