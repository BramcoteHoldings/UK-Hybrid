unit DiaryLoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, MemDS, OracleUniProvider, Uni, DBAccess,
  ImgList, Menus, ExtCtrls, ComCtrls, ToolWin,
  dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer;

type
  TfrmDiaryLoc = class(TfrmMaint)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiaryLoc: TfrmDiaryLoc;

implementation

{$R *.DFM}

procedure TfrmDiaryLoc.DBEdit1Change(Sender: TObject);
begin
  inherited;
  primaryfield := 'LOCATION';
end;

end.
