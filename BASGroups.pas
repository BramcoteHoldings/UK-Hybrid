unit BASGroups;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, MemDS, OracleUniProvider, Uni,
  ImgList, Menus, ExtCtrls, ComCtrls, ToolWin, DBAccess,
  dxBarDBNav, dxBar, ppCtrls, ppDB, ppDBPipe, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxNavigator;

type
  TfrmBASGroups = class(TfrmMaint)
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
