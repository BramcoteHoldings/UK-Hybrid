unit feebasis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, MemDS, DBAccess, OracleUniProvider, Uni, ImgList, Menus,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, dxBarDBNav, dxBar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer;

type
  TfrmFeeBasis = class(TfrmMaint)
    Label1: TLabel;
    Label2: TLabel;
    lblBillType: TLabel;
    edCode: TcxDBTextEdit;
    edDescr: TcxDBTextEdit;
    cmbBillType: TcxDBComboBox;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFeeBasis: TfrmFeeBasis;

implementation

{$R *.DFM}

end.
