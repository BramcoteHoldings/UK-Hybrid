unit InvoicePrint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, Db, ExtCtrls, ComCtrls, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, OraSmart, DBAccess;

type
  TfrmInvoicePrint = class(TForm)
    qryInvoice: TUniQuery;
    qryItems: TUniQuery;
    pagReports: TPageControl;
    tabInvoicePrint: TTabSheet;
    qrInvoice: TQuickRep;
    qryPhonebook: TUniQuery;
    qryMatter: TUniQuery;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    qrghItems: TQRGroup;
    qrlblType: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    qrgfType: TQRBand;
    qrlblTypeFtr: TQRLabel;
    QRExpr1: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText15: TQRDBText;
    qrlblDate: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    procedure qrghItemsBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrgfTypeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintInvoice(NMemo : integer; Preview: boolean);
  end;

implementation

{$R *.DFM}

uses
  AxiomData;

procedure TfrmInvoicePrint.PrintInvoice(NMemo: integer; Preview: boolean);
begin
  with qryInvoice do
  begin
    ParamByName('NMEMO').AsInteger := NMemo;
    Open;
  end;

  if not qryInvoice.IsEmpty then
  begin
    with qryItems do
    begin
      ParamByName('NMATTER').AsInteger := qryInvoice.FieldByName('NMATTER').AsInteger;
      ParamByName('FILEID').AsString := qryInvoice.FieldByName('FILEID').AsString;
      ParamByName('NMEMO').AsInteger := NMemo;
      Open;
    end;

    with qryMatter do
    begin
      ParamByName('FILEID').AsString := qryInvoice.FieldByName('FILEID').AsString;
      Open;
    end;

    if not qryMatter.IsEmpty then
      with qryPhonebook do
      begin
        ParamByName('SEARCH').AsString := qryMatter.FieldByName('BILL_TO').AsString;
        Open;
      end;
  end;

  if Preview then
    qrInvoice.PreviewModal
  else
    qrInvoice.Print;

  Self.Close;
end;


procedure TfrmInvoicePrint.qrghItemsBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  case qryItems.FieldByName('Type').AsInteger of
    1: qrlblType.Caption := 'Professional Fees';
    2: qrlblType.Caption := 'Disbursements';
    3: qrlblType.Caption := 'Anticipated Disbursements';
    4: qrlblType.Caption := 'Sundry Expenses';
    5: qrlblType.Caption := 'Creditors';
  end;
end;

procedure TfrmInvoicePrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryInvoice.Close;
  qryItems.Close;
  qryMatter.Close;
  qryPhonebook.Close;

  Self.Release;
end;

procedure TfrmInvoicePrint.qrgfTypeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlblTypeFtr.Caption := 'Total ' + qrlblType.Caption;
end;

procedure TfrmInvoicePrint.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (qryInvoice.FieldByName('dispatched').IsNull) then
    qrlblDate.Caption := FormatDateTime('ddddd', Date)
  else
    qrlblDate.Caption := FormatDateTime('ddddd', qryInvoice.FieldByName('dispatched').AsDateTime);
end;

end.
