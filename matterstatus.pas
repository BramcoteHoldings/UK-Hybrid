unit matterstatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, StdCtrls, Mask, DBCtrls, ImgList, ComCtrls,
  ToolWin, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, OracleUniProvider, Uni, DBAccess, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Buttons, ppDB,
  ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, dxBarDBNav, dxBar, ppParameter, ppDesignLayer,
  cxNavigator;

type
  TfrmMatterStatus = class(TfrmMaint)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dbtbDescr: TDBEdit;
    Label2: TLabel;
    btnCodeSearch: TBitBtn;
    dsTaxType: TUniDataSource;
    qryTaxType: TUniQuery;
    qryTaxTypeCODE: TStringField;
    qryTaxTypeDESCR: TStringField;
    GroupBox1: TGroupBox;
    dsSubStatus: TUniDataSource;
    qrySubStatus: TUniQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    DBCheckBox1: TDBCheckBox;
    procedure btnCodeSearchClick(Sender: TObject);
    procedure qrySubStatusNewRecord(DataSet: TDataSet);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.DFM}

uses
  AxiomData, GenericSearch, MiscFunc, SundryTypeGroups;

procedure TfrmMatterStatus.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM MATTERSTATUS WHERE CODE < ''aa'' ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;

procedure TfrmMatterStatus.qrySubStatusNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySubStatus.FieldByName('MATTERSTATUS').AsString := qrySource.FieldByName('CODE').AsString;
end;

procedure TfrmMatterStatus.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qrySubStatus.Close;
  qrySubStatus.Open;
end;

procedure TfrmMatterStatus.FormHide(Sender: TObject);
begin
  inherited;
  qrySubStatus.Close;
end;

end.

