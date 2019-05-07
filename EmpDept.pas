unit EmpDept;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Menus, OracleUniProvider, Uni, MemDS,
  DBAccess, dxBarDBNav, dxBar, ppCtrls, ppDB, ppDBPipe, ppBands, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, cxDBEdit,
  System.ImageList;

type
  TfrmEmpDept = class(TfrmMaint)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edLedgerComponent: TDBEdit;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    function validateData(var sError : String): boolean;override;
  private
    { Private declarations }
    iGlComponentLength : integer;
  public
    { Public declarations }
  end;

var
  frmEmpDept: TfrmEmpDept;

implementation

uses AxiomData;

{$R *.DFM}

procedure TfrmEmpDept.FormCreate(Sender: TObject);
begin
  inherited;
  // get the lenght of thr gl_component field
  iGlComponentLength := dmAxiom.getGlComponents.getComponentLength('BRANCH');
  if iGlComponentLength = 0 then
        edLedgerComponent.Enabled := false
  else
        edLedgerComponent.MaxLength := iGlComponentLength;
end;

function TfrmEmpDept.validateData(var sError : String): boolean;
begin
        validateData := true;
        if (iGlComponentLength > 0) and (iGlComponentLength <> length(edLedgerComponent.Text))then
        begin
                validateData := false;
                sError := 'Error Ledger Component must be ' + intToStr(iGlComponentLength) + ' characters long';
        end;

end;

end.
