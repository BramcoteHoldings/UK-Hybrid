unit BillCreditTypes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, MemDS, OracleUniProvider, Uni,
  ImgList, Menus, ExtCtrls, ComCtrls, ToolWin, DBAccess,
  dxBarDBNav, dxBar, ppCtrls, ppDB, ppDBPipe, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer;

type
  TfrmBillCreditTypes = class(TfrmMaint)
    Label1: TLabel;
    dbtbCode: TDBEdit;
    Label2: TLabel;
    dbtbDescr: TDBEdit;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBillCreditTypes: TfrmBillCreditTypes;

implementation

{$R *.DFM}

end.
