unit DiaryEvt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, ppCtrls, ppDB, StdCtrls, Mask, DBCtrls, ppDBPipe, ppBands,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxBarDBNav, dxBar, DB, MemDS, DBAccess, OracleUniProvider, Uni, ImgList,
  ppParameter, cxClasses, ppDesignLayer;

type
  TfrmDiaryEvt = class(TfrmMaint)
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
  frmDiaryEvt: TfrmDiaryEvt;

implementation

{$R *.DFM}

procedure TfrmDiaryEvt.DBEdit1Change(Sender: TObject);
begin
  inherited;
  primaryfield := 'EVENT';
end;

end.
