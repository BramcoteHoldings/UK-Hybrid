unit BillsRpt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TqrBillsRpt = class(TQuickRep)
    qryBills: TUniQuery;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    qrlblTitle: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText12: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRSysData3: TQRSysData;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRExpr7: TQRExpr;
    qrlblGST: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    foSession   : TUniConnection;
    fsTitle     : String;
    fsSql       : String;
    fdtFromdate : TDateTime;
    fdtToDate   : TDateTime;

    procedure SetUp;
    procedure ExecuteReport;

  public
    property Session : TUniConnection read foSession write foSession;
    property Title : String read fsTitle write fsTitle;
    property Sql : String read fsSql write fsSql;
    property FromDate : TDateTime read fdtFromDate write fdtFromDate;
    property ToDate : TDateTime read fdtToDate write fdtToDate;

  end;

var
  qrBillsRpt: TqrBillsRpt;

implementation

{$R *.DFM}

procedure TqrBillsRpt.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  SetUp;
  ExecuteReport;

end;



procedure TqrBillsRpt.SetUp;
begin
  qryBills.Session := foSession;
  qrlblTitle.Caption := fsTitle;

end;




procedure TqrBillsRpt.ExecuteReport;
begin
  qryBills.SQL.Text := fsSql;
  qryBills.ParamByName('P_DateFrom').AsDate := fdtFromDate;
  qryBills.ParamByName('P_DateTo').AsDate := fdtToDate + 1;

  qryBills.Open;


end;




end.
