unit Postcode;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Menus, Buttons, OracleUniProvider, Uni, DBAccess, MemDS,
  dxBarDBNav, dxBar, ppCtrls, ppDB, ppDBPipe, ppBands,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, cxClasses, ppDesignLayer;

type
  TfrmPostcode = class(TfrmMaint)
    Label1: TLabel;
    dbtbSuburb: TDBEdit;
    DBEdit1: TDBEdit;
    lblState: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    btnCodeSearch: TBitBtn;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    procedure btnCodeSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrySourceSUBURBChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPostcode: TfrmPostcode;

implementation

{$R *.DFM}

uses
  GenericSearch, miscfunc;

procedure TfrmPostcode.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT SUBURB AS CODE, STATE || '' '' || PCODE AS DESCR, ''N'' AS DEFAULTITEM FROM POSTCODE ORDER BY SUBURB';
    if ShowModal = mrOK then
      Self.qrySource.Locate('SUBURB', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;


procedure TfrmPostcode.FormCreate(Sender: TObject);
begin
   inherited;
   PrimaryField := 'SUBREAL';

   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblState.Caption := 'County';
   end;
end;


procedure TfrmPostcode.qrySourceSUBURBChange(Sender: TField);
begin
  qrySource.FieldByName('SUBREAL').AsString := uppercase(qrySource.FieldByName('SUBURB').AsString);
end;

end.
