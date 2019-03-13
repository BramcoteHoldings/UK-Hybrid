unit AccountType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MaintAncestor, dxBarDBNav, dxBar, DB, MemDS, DBAccess, OracleUniProvider, Uni,
  ImgList, ExtCtrls, ComCtrls, cxTextEdit,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxLabel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, ppDB, ppDBPipe, ppParameter,
  ppDesignLayer, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, cxClasses;

type
  TfrmAccountType = class(TfrmMaint)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    qrySourceACCOUNT_TYPE: TStringField;
    qrySourceROWID: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountType: TfrmAccountType;

implementation

{$R *.dfm}

procedure TfrmAccountType.FormCreate(Sender: TObject);
begin
  inherited;
  PrimaryField := 'ACCOUNT_TYPE';
end;

end.
