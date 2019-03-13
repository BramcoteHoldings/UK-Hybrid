unit DiaryType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Menus, Buttons, OracleUniProvider, Uni,
  DBAccess, dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, cxClasses, ppDesignLayer, MemDS;

type
  TfrmDiaryType = class(TfrmMaint)
    Label1: TLabel;
    dbtbCode: TDBEdit;
    Label2: TLabel;
    dbmmoDescr: TDBMemo;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiaryType: TfrmDiaryType;

implementation

{$R *.DFM}


end.
