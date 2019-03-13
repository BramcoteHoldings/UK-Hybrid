unit RelateDict;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, MemDS, OracleUniProvider, Uni,
  ImgList, Menus, ExtCtrls, ComCtrls, ToolWin, DBAccess,
  dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer;

type
  TfrmRelateDict = class(TfrmMaint)
    Label1: TLabel;
    dbedForward: TDBEdit;
    dbedBackward: TDBEdit;
    Label2: TLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelateDict: TfrmRelateDict;

implementation

{$R *.DFM}

procedure TfrmRelateDict.FormCreate(Sender: TObject);
begin
  inherited;
  PrimaryField := 'FORWARD_DESC';
end;

end.
