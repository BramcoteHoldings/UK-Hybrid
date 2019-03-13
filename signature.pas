unit signature;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, OracleUniProvider, Uni, DBAccess, MemDS, ImgList, Menus,
  ExtDlgs, ppDB, ppCtrls, StdCtrls, Buttons, DBCtrls, Mask, ppDBPipe,
  ppParameter, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, dxBarDBNav, dxBar, cxClasses,
  ExtCtrls, ComCtrls, ToolWin, ppDesignLayer;

type
  TfrmSignature = class(TfrmMaint)
    DBEdit1: TDBEdit;
    dbSignature: TDBImage;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    loadPicture: TOpenPictureDialog;
    ppDBText1: TppDBText;
    ppDBImage1: TppDBImage;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSignature: TfrmSignature;

implementation

{$R *.DFM}

procedure TfrmSignature.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if loadpicture.Execute then
  begin
    dbSignature.picture.LoadFromFile(loadpicture.filename);
  end;
end;

end.
