unit ArchiveType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MaintAncestor, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxBarDBNav, dxBar,
  MemDS, DBAccess, OracleUniProvider, Uni, ImgList, ExtCtrls,
  ComCtrls, cxLookAndFeels, cxLookAndFeelPainters, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppParameter, ppDesignLayer, cxNavigator;

type
  TfrmArchiveType = class(TfrmMaint)
    tvArchiveType: TcxGridDBTableView;
    grdArchiveTypeLevel1: TcxGridLevel;
    grdArchiveType: TcxGrid;
    tvArchiveTypeCODE: TcxGridDBColumn;
    tvArchiveTypeNAME: TcxGridDBColumn;
    tvArchiveTypeNEXTARCHIVE: TcxGridDBColumn;
    tvArchiveTypeDESCRIPTION: TcxGridDBColumn;
    tvArchiveTypeACTIVE: TcxGridDBColumn;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBCalc1: TppDBCalc;
    tvArchiveTypeDFLT_TYPE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArchiveType: TfrmArchiveType;

implementation

{$R *.dfm}

end.
