unit FeeBatchPrint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OraSmart, Qrctrls, QuickRpt, ExtCtrls, ComCtrls;

type
  TfrmFeeBatchPrint = class(TForm)
    pagReports: TPageControl;
    tabTimesheet: TTabSheet;
    qrTimesheet: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrlblEntity: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    qrlblDate: TQRLabel;
    qrlblAuthorName: TQRLabel;
    QRLabel4: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel12: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    qryFeeList: TUniQuery;
  public
    { Public declarations }
{
 Modified 29.10.2002 GG

 Removed compiler warning

    constructor Create(AOwner: TComponent; qryFeeBatch: TUniQuery;
      BatchDate: TDateTime; Author: string);
}
   { constructor Create(AOwner: TComponent; qryFeeBatch: TUniQuery;
      BatchDate: TDateTime; Author: string); reintroduce;  }
     procedure DisplayReport(qryFeeBatch: TUniQuery;
            BatchDate: TDateTime; Author: string);
  end;

implementation

{$R *.DFM}

uses
  MiscFunc, AxiomData;

procedure TfrmFeeBatchPrint.DisplayReport(qryFeeBatch: TUniQuery;
  BatchDate: TDateTime; Author: string);
var
{
  Modified 25.10.2002 GG
  Removed compiler hint
}
  I{, J}: Integer;
begin
//  inherited Create(AOwner);
  qryFeeList := qryFeeBatch;
  qrlblEntity.Caption := dmAxiom.EntityName;
  qrTimesheet.DataSet := qryFeeList;
  qrlblDate.Caption := FormatDateTime('dddddd', BatchDate);
  qrlblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', Author, 'NAME') + ' (' + Author + ')';

  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TQRDBText then
          TQRDBText(Self.Components[I]).DataSet := qryFeeList;

  qrTimesheet.PreviewModal;
//  Self.Close;
end;

procedure TfrmFeeBatchPrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action := caFree;
end;


end.
