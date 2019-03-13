unit PhoneBookEntryRpt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS,
  QRExport, MiscFunc, AxiomData, OraSmart, ppComm, ppRelatv, ppProd,
  ppClass, ppReport;

type
  TqrPhoneBookEntry = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    qrdtbPersonDetails: TQRBand;
    PageFooterBand1: TQRBand;
    qrlblCompany: TQRLabel;
    ChildBand1: TQRChildBand;
    qrlblReportTitle: TQRLabel;
    QRSysData1: TQRSysData;
    qrlblFileName: TQRLabel;
    QRSysData2: TQRSysData;
    qrsubdtbAddress: TQRSubDetail;
    qrsubdtbOther: TQRSubDetail;
    qrsubdtbGroup: TQRSubDetail;
    qrlblGender: TQRLabel;
    qrdbtxtGender: TQRDBText;
    qrdbtxtTitleLabel: TQRDBText;
    qrdbtxtTitle: TQRDBText;
    qrlblGivenName: TQRLabel;
    qrdbtxtGivenName: TQRDBText;
    qrlblLastName: TQRLabel;
    qrdbtxtLastName: TQRDBText;
    qryGroupings: TUniQuery;
    qryPhoneBook: TUniQuery;
    qrdbtxtNameCompanyLabel: TQRDBText;
    qrdbtxtShortNameLabel: TQRDBText;
    qrdbtxtLongNameLabel: TQRDBText;
    qrdbtxtNameCompany: TQRDBText;
    qrdbtxtShortName: TQRDBText;
    qrdbtxtLongName: TQRDBText;
    qrlblHomePhone: TQRLabel;
    qrlblWorkPhone: TQRLabel;
    qrlblMobilePhone: TQRLabel;
    qrlblFax: TQRLabel;
    qrdbtxtHomePhone: TQRDBText;
    qrdbtxtWorkPhone: TQRDBText;
    qrdbtxtMobile: TQRDBText;
    qrdbtxtFax: TQRDBText;
    qrlblStreetAddressTitle: TQRLabel;
    qrlblPostalAddressTitle: TQRLabel;
    qrlblStreetAddress: TQRLabel;
    qrlblPostalAddress: TQRLabel;
    qrdbtxtStreetAddress: TQRDBText;
    qrdbtxtPostalAddress: TQRDBText;
    qrlblEmailAddress: TQRLabel;
    qrlblWebSiteAddress: TQRLabel;
    qrdbtxtACNLabel: TQRDBText;
    qrdbtxtOccupationLabel: TQRDBText;
    qrlblDateOfBirth: TQRLabel;
    qrlblDefaultRef: TQRLabel;
    qrlblCode: TQRLabel;
    qrdbtxtEmailAddress: TQRDBText;
    qrdbtxtWebSiteAddress: TQRDBText;
    qrdbtxtACN: TQRDBText;
    qrdbtxtOccupation: TQRDBText;
    qrdbtxtDateOfBirth: TQRDBText;
    qrdbtxtDefaultRef: TQRDBText;
    QRDBText13: TQRDBText;
    ChildBand2: TQRChildBand;
    qrlblStreetTown: TQRLabel;
    qrdbtxtStreetTown: TQRDBText;
    qrlblStreetState: TQRLabel;
    qrdbtxtStreetState: TQRDBText;
    qrlblStreetPostcode: TQRLabel;
    qrdbtxtStreetPostCode: TQRDBText;
    qrlblStreetCountry: TQRLabel;
    qrdbtxtStreetCountry: TQRDBText;
    qrlblPostalTown: TQRLabel;
    qrdbtxtPostalTown: TQRDBText;
    qrlblPostalState: TQRLabel;
    qrdbtxtPostalState: TQRDBText;
    qrlblPostalPostCode: TQRLabel;
    qrdbtxtPostalPostCode: TQRDBText;
    qrlblPostalCountry: TQRLabel;
    qrdbtxtPostalCountry: TQRDBText;
    qrdbtxtCategory: TQRDBText;
    qrdbtxtOtherParty: TQRDBText;
    qrlblCategory: TQRLabel;
    qrlblOtherParty: TQRLabel;
    ChildBand3: TQRChildBand;
    qrlblGroupings: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    qRelationships: TUniQuery;
    qRelationshipsFORWARD: TStringField;
    qRelationshipsRELATIONSHIP: TStringField;
    qRelationshipsBACKWARD: TStringField;
    qRelationshipsROWID: TStringField;
    qRelationshipsDELETEABLE: TStringField;
    qRelationshipsBACKWARDCATEGORY: TStringField;
    qRelationshipsBACKWARDSEQ: TFloatField;
    qRelationshipsFORWARDCATEGORY: TStringField;
    qRelationshipsFORWARDSEQ: TFloatField;
    qRelationshipsLINKTABLE: TStringField;
    qRelationshipsNUNIQUE: TFloatField;
    qRelationshipsSEARCH: TStringField;
    qRelationshipsNCHILD: TFloatField;
    qRelationshipsADDRESS: TStringField;
    QRDBText1: TQRDBText;
    ppReport1: TppReport;
    ppReport2: TppReport;
    QRCompositeReport1: TQRCompositeReport;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrdbtxtTitleLabelPrint(sender: TObject; var Value: String);
    procedure qrdbtxtNameCompanyLabelPrint(sender: TObject;
      var Value: String);
    procedure qrdbtxtShortNameLabelPrint(sender: TObject;
      var Value: String);
    procedure qrdbtxtLongNameLabelPrint(sender: TObject;
      var Value: String);
    procedure qrdbtxtACNLabelPrint(sender: TObject; var Value: String);
    procedure qrdbtxtOccupationLabelPrint(sender: TObject;
      var Value: String);
  private
    //fsSearch : String;
    fiNname  : Integer;

  public
    //property Search : String read fsSearch write fsSearch;
    property Nname  : Integer read fiNname write fiNname;

  end;

var
  qrPhoneBookEntry: TqrPhoneBookEntry;

implementation

{$R *.DFM}

procedure TqrPhoneBookEntry.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qryPhoneBook.Close;
  // TH 24/11/2004 - Using nname as the search criteria instead of search
  //qryPhoneBook.ParamByName('search').AsString := fsSearch;
  qryPhoneBook.ParamByName('nname').AsInteger := fiNname;
  qryPhoneBook.Open;

  qryGroupings.Close;
  qryGroupings.ParamByName('nname').AsInteger := fiNname;
  qryGroupings.Open;

  qRelationships.Close;
  qRelationships.ParamByName('nname').AsInteger := fiNname;
  qRelationships.Open;

  qrlblCompany.Caption := SystemString('COMPANY');
  qrlblFileName.Caption := Application.ExeName;

end;

procedure TqrPhoneBookEntry.qrdbtxtTitleLabelPrint(sender: TObject;
  var Value: String);
begin
  Value := Value + ':';

end;

procedure TqrPhoneBookEntry.qrdbtxtNameCompanyLabelPrint(sender: TObject;
  var Value: String);
begin
  Value := Value + ':';
  
end;

procedure TqrPhoneBookEntry.qrdbtxtShortNameLabelPrint(sender: TObject;
  var Value: String);
begin
  Value := Value + ':';

end;

procedure TqrPhoneBookEntry.qrdbtxtLongNameLabelPrint(sender: TObject;
  var Value: String);
begin
  Value := Value + ':';
  
end;

procedure TqrPhoneBookEntry.qrdbtxtACNLabelPrint(sender: TObject;
  var Value: String);
begin
  Value := Value + ':';
  
end;

procedure TqrPhoneBookEntry.qrdbtxtOccupationLabelPrint(sender: TObject;
  var Value: String);
begin
  Value := Value + ':';
  
end;

end.


