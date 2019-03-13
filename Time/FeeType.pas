unit FeeType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, DBCtrls, Db, Mask, ImgList,
  ExtCtrls, ComCtrls, ToolWin, Menus, OracleUniProvider, Uni, DBAccess, MemDS,
  dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, myChkBox,
  ppParameter, cxClasses, ppDesignLayer;

type
  TfrmFeeType = class(TfrmMaint)
    Label1: TLabel;
    dbtbCode: TDBEdit;
    dbtbDescr: TDBEdit;
    Label2: TLabel;
    dbtbRate: TDBEdit;
    Label3: TLabel;
    dbchkBillable: TDBCheckBox;
    dbtbTaxDescr: TDBText;
    dbcbTaxType: TDBLookupComboBox;
    Label4: TLabel;
    qryTaxType: TUniQuery;
    dsTaxType: TUniDataSource;
    qryTaxTypeCODE: TStringField;
    qryTaxTypeDESCR: TStringField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText4: TppDBText;
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFeeType: TfrmFeeType;

implementation

{$R *.DFM}

procedure TfrmFeeType.qrySourceAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrySource.FieldByName('BILLABLE').AsString := 'N';
end;

procedure TfrmFeeType.FormShow(Sender: TObject);
begin
  inherited;
  qryTaxType.Open;
end;

end.
