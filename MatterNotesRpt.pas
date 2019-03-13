unit MatterNotesRpt;

interface

uses
     Windows, SysUtils, Messages, Classes, Graphics, Controls,
     StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS,
     MiscFunc;

type
  TqrMatterNotesRpt = class(TQuickRep)
    qbPageHeaderBand: TQRBand;
    qbColumnHeaderBand: TQRBand;
    qbDetailBand: TQRBand;
    qtCreated: TQRDBText;
    qtCreatedByName: TQRDBText;
    qtNote: TQRDBText;
    qlCreated: TQRLabel;
    qlNote: TQRLabel;
    qtEnteredBy: TQRLabel;
    ChildBand1: TQRChildBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    qsPrinted: TQRSysData;
    qlCompany: TQRLabel;
    qsPage: TQRSysData;
    qryMatterNotes: TUniQuery;
    qrlblFileName: TQRLabel;
    qrlblLawyerName: TQRLabel;
    qrlblPracticeArea: TQRLabel;
    qrlblMatterID: TQRLabel;
    qrlblMatterDesc: TQRLabel;
    qrlblClient: TQRLabel;
    qlLawyerName: TQRLabel;
    qlPraticeArea: TQRLabel;
    qlFileID: TQRLabel;
    qlMatterDescription: TQRLabel;
    qlClient: TQRLabel;
    procedure qrlblFileNamePrint(sender: TObject; var Value: String);
    procedure qlCompanyPrint(sender: TObject; var Value: String);

  private
    fdtFromDate : TDateTime;
    fdtToDate   : TDateTime;

    procedure SetMatter(const Value: String);
    procedure SetMatterID(const Value: Integer);
    procedure SetLawyer(const Value: String);
    procedure SetPracticeArea(const Value: String);
    procedure setSession(oSession : TUniConnection);
    procedure SetFileID(const Value: String);
    procedure SetClient(const Value: String);

  public
    property Matter : String write SetMatter;
    property MatterID : Integer write SetMatterID;
    property Lawyer : String write setLawyer;
    property PracticeArea : String write setPracticeArea;
    property Session : TUniConnection write setSession;
    property FromDate : TDateTime read fdtFromDate  write fdtFromDate ;
    property ToDate : TDateTime read fdtToDate write fdtToDate ;
    property FileID: String write SetFileID;
    property Client: String write SetClient;

    procedure RetrieveData;

  end;

var
  qrMatterNotesRpt: TqrMatterNotesRpt;

implementation


{$R *.DFM}

{ TqrMatterNotesRpt }



procedure TqrMatterNotesRpt.SetMatter(const Value: String);
begin
  qlMatterDescription.Caption := Value;

end;


procedure TqrMatterNotesRpt.SetMatterID(const Value: Integer);
begin
  qryMatterNotes.ParamByName('MATTER').AsInteger := Value;
end;


procedure TqrMatterNotesRpt.SetLawyer(const Value: String);
begin
  qlLawyerName.Caption := Value;

end;


procedure TqrMatterNotesRpt.SetPracticeArea(const Value: String);
begin
  qlPraticeArea.Caption := Value;

end;


procedure TqrMatterNotesRpt.setSession(oSession : TUniConnection);
begin
  qryMatterNotes.Session := oSession;

end;



procedure TqrMatterNotesRpt.qrlblFileNamePrint(sender: TObject;
  var Value: String);
begin
  Value := Application.ExeName;

end;



procedure TqrMatterNotesRpt.RetrieveData;
var
  lsSQL : String;
begin
  lsSQL := qryMatterNotes.SQL.Text;

  if (fdtFromDate <> 0) then
    lsSQL := lsSQL + ' AND TRUNC(M.CREATED) >= :FROMDATE ';

  if (fdtToDate <> 0) then
    lsSQL := lsSQL + ' AND TRUNC(M.CREATED) <= :TODATE ';

  lsSQL := lsSQL + ' ORDER BY M.CREATED ';

  qryMatterNotes.SQL.Text := lsSQL;

  if (fdtFromDate <> 0) then
    qryMatterNotes.ParamByName('FROMDATE').AsDateTime := Trunc(fdtFromDate);

  if (fdtToDate <> 0) then
    qryMatterNotes.ParamByName('TODATE').AsDateTime := Trunc(fdtToDate);

  qryMatterNotes.Open;

end;


procedure TqrMatterNotesRpt.qlCompanyPrint(sender: TObject;
  var Value: String);
begin
  Value := SystemString('COMPANY');
end;

procedure TqrMatterNotesRpt.SetFileID(const Value: String);
begin
  qlFileID.Caption := Value;
end;

procedure TqrMatterNotesRpt.SetClient(const Value: String);
begin
  qlClient.Caption := Value;
end;

end.

