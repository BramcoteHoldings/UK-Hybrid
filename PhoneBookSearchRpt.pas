unit PhoneBookSearchRpt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS,
  QRExport, MiscFunc, AxiomData;

type
  TqrPhoneBookSearch = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    qrlblCompany: TQRLabel;
    ChildBand1: TQRChildBand;
    qrlblReportTitle: TQRLabel;
    QRSysData1: TQRSysData;
    qrlblFileName: TQRLabel;
    QRSysData2: TQRSysData;
    qryPhoneBook: TUniQuery;
    qrgrpEntry: TQRGroup;
    ChildBand3: TQRChildBand;
    qrlblSearchName: TQRLabel;
    qrdbtxtSearchName: TQRDBText;
    QRBand1: TQRBand;
    qrlblName: TQRLabel;
    qrlblTitle: TQRLabel;
    qrdbtxtName: TQRDBText;
    qrdbtxtGivenName: TQRDBText;
    qrlblHomePhone: TQRLabel;
    qrdbtxtHomePhone: TQRDBText;
    qrlblWorkPhone: TQRLabel;
    qrdbtxtWorkPhone: TQRDBText;
    qrlblFax: TQRLabel;
    qrdbtxtFax: TQRDBText;
    ChildBand4: TQRChildBand;
    qrlblStreetAddressTitle: TQRLabel;
    qrlblStreetAddress: TQRLabel;
    qrdbtxtStreetAddress: TQRDBText;
    qrlblPostalAddressTitle: TQRLabel;
    qrlblPostalAddress: TQRLabel;
    qrdbtxtPostalAddress: TQRDBText;
    ChildBand5: TQRChildBand;
    qrlblStreetTown: TQRLabel;
    qrdbtxtStreetTown: TQRDBText;
    qrlblStreetPostcode: TQRLabel;
    qrdbtxtStreetPostCode: TQRDBText;
    qrlblStreetState: TQRLabel;
    qrdbtxtStreetState: TQRDBText;
    qrlblPostalTown: TQRLabel;
    qrdbtxtPostalTown: TQRDBText;
    qrlblPostalPostCode: TQRLabel;
    qrdbtxtPostalPostCode: TQRDBText;
    qrlblPostalState: TQRLabel;
    qrdbtxtPostalState: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData3: TQRSysData;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);

  private
    fsSQL : String;

  public
    property SQL : String read fsSQL write fsSQL;

  end;

var
  qrPhoneBookSearch: TqrPhoneBookSearch;

implementation

{$R *.DFM}

procedure TqrPhoneBookSearch.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qryPhoneBook.Close;
  qryPhoneBook.SQL.Text := fsSQL;
  qryPhoneBook.Open;

  qrlblCompany.Caption := SystemString('COMPANY');
  qrlblFileName.Caption := Application.ExeName;

end;



end.


