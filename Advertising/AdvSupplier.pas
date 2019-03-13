unit AdvSupplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MaintAncestor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ppDB, ppDBPipe, ppParameter,
  ppDesignLayer, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, dxBarDBNav, dxBar, MemDS, DBAccess, Uni,
  Vcl.ImgList;

type
  TfrmAdvSupplierMaint = class(TfrmMaint)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1ROWID: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdvSupplierMaint: TfrmAdvSupplierMaint;

implementation

{$R *.dfm}

end.
