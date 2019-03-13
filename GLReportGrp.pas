unit GLReportGrp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MaintAncestor, StdCtrls, DBCtrls, Mask, dxBarDBNav, dxBar, DB,
  MemDS, DBAccess, OracleUniProvider, Uni, ImgList, ExtCtrls,
  ComCtrls, cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxLookAndFeels,
  cxLookAndFeelPainters, ppCtrls, ppDB, ppDBPipe, ppBands, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer;

type
  TfrmGLReportGrp = class(TfrmMaint)
    Label1: TLabel;
    Label2: TLabel;
    dbtbCode: TDBEdit;
    dbtbDescr: TDBEdit;
    Label3: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLReportGrp: TfrmGLReportGrp;

implementation

{$R *.dfm}

end.
