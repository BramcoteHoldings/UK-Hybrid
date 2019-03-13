unit QuickCodes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Menus, Buttons, OracleUniProvider, Uni,
  DBAccess, dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, cxClasses, ppDesignLayer, MemDS;

type
  TfrmQuickCodes = class(TfrmMaint)
    Label1: TLabel;
    dbtbCode: TDBEdit;
    Label2: TLabel;
    btnCodeSearch: TBitBtn;
    dbmmoDescr: TDBMemo;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    procedure btnCodeSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuickCodes: TfrmQuickCodes;

implementation

{$R *.DFM}

uses
  GenericSearch;

procedure TfrmQuickCodes.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, SUBSTR(DESCR, 1, 200) AS DESCR, ''N'' AS DEFAULTITEM FROM QUICKCODES ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;

end.
