unit RptMatterDetails;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, ComCtrls, Db, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, DBAccess;

type
  TfrmRptMatterDetails = class(TForm)
    pagLedgers: TPageControl;
    tabRptDetails: TTabSheet;
    qrDetails: TQuickRep;
    QRBand8: TQRBand;
    QRSysData14: TQRSysData;
    QRLabel47: TQRLabel;
    QRBand9: TQRBand;
    QRLabel105: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel106: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRLabel107: TQRLabel;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRLabel108: TQRLabel;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRLabel109: TQRLabel;
    QRDBText100: TQRDBText;
    QRLabel110: TQRLabel;
    QRDBText101: TQRDBText;
    QRLabel111: TQRLabel;
    QRDBText102: TQRDBText;
    QRLabel112: TQRLabel;
    QRDBText103: TQRDBText;
    QRLabel113: TQRLabel;
    QRDBText104: TQRDBText;
    QRLabel114: TQRLabel;
    QRDBText105: TQRDBText;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRDBText108: TQRDBText;
    qrlblLabelPartner: TQRLabel;
    qrlblLabelAuthor: TQRLabel;
    qrlblLabelType: TQRLabel;
    QRLabel120: TQRLabel;
    QRDBText112: TQRDBText;
    QRDBText115: TQRDBText;
    QRLabel121: TQRLabel;
    QRDBText117: TQRDBText;
    QRLabel122: TQRLabel;
    QRDBText119: TQRDBText;
    QRLabel123: TQRLabel;
    QRDBText121: TQRDBText;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRDBText123: TQRDBText;
    QRLabel126: TQRLabel;
    QRDBText125: TQRDBText;
    QRLabel127: TQRLabel;
    QRDBText127: TQRDBText;
    QRLabel128: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    qryDetails: TUniQuery;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    qrlblLabelController: TQRLabel;
    qryDetailsOPENED: TDateTimeField;
    qryDetailsPARTNER: TStringField;
    qryDetailsCONTROLLER: TStringField;
    qryDetailsAUTHOR: TStringField;
    qryDetailsTYPE: TStringField;
    qryDetailsFILEID: TStringField;
    qryDetailsSHORTDESCR: TStringField;
    qryDetailsLONGDESCR: TStringField;
    qryDetailsNOTES: TStringField;
    qryDetailsTRUST_BAL: TFloatField;
    qryDetailsCL_TRUST_BAL: TFloatField;
    qryDetailsUNBILL_FEES: TFloatField;
    qryDetailsBILL_FEES: TFloatField;
    qryDetailsUNBILL_DISB: TFloatField;
    qryDetailsUNBILL_ANTD: TFloatField;
    qryDetailsUNBILL_SUND: TFloatField;
    qryDetailsDEBTORS: TFloatField;
    qryDetailsTITLE: TStringField;
    qryDetailsLONGNAME: TStringField;
    qryDetailsADDRESS: TStringField;
    qryDetailsSUBURB: TStringField;
    qryDetailsSTATE: TStringField;
    qryDetailsPOSTCODE: TStringField;
    qryDetailsDX: TStringField;
    qryDetailsDXLOC: TStringField;
    qryDetailsWORKPHONE: TStringField;
    qryDetailsHOMEPHONE: TStringField;
    qryDetailsFAX: TStringField;
    QRDBText3: TQRDBText;
    qryDetailsCLIENTID: TStringField;
    procedure qrDetailsBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Print(NMatter: Integer); overload;
  end;

var
  frmRptMatterDetails: TfrmRptMatterDetails;

implementation

{$R *.DFM}

uses
  MiscFunc;

constructor TfrmRptMatterDetails.Print(NMatter: Integer);
begin
  inherited Create(nil);
  qryDetails.ParamByName('NMATTER').AsInteger := NMatter;
  qryDetails.Open;
  qrDetails.PreviewModal;
  qryDetails.Close;
  Self.Release;
end;

procedure TfrmRptMatterDetails.qrDetailsBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlblLabelPartner.Caption := TableString('EMPLOYEE', 'CODE', qryDetails.FieldByName('PARTNER').AsString, 'NAME');
  qrlblLabelController.Caption := TableString('EMPLOYEE', 'CODE', qryDetails.FieldByName('CONTROLLER').AsString, 'NAME');
  qrlblLabelAuthor.Caption := TableString('EMPLOYEE', 'CODE', qryDetails.FieldByName('AUTHOR').AsString, 'NAME');
  qrlblLabelType.Caption := TableString('MATTERTYPE', 'CODE', qryDetails.FieldByName('TYPE').AsString, 'DESCR');
end;

end.
