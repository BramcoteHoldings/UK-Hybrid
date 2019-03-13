unit DiaryJur;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, MemDS, OracleUniProvider, Uni,
  ImgList, Menus, ExtCtrls, ComCtrls, ToolWin, DBAccess,
  dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer;

type
  TfrmDiaryJur = class(TfrmMaint)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiaryJur: TfrmDiaryJur;

implementation

{$R *.DFM}

procedure TfrmDiaryJur.FormCreate(Sender: TObject);
begin
  inherited;
  primaryfield := 'JURISDICTION';
end;

end.
