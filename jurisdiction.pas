unit Jurisdiction;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, MemDS, DBAccess, OracleUniProvider, Uni, ImgList, Menus,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls,
  Grids, DBGrids, DBActns, ActnList, ActnMan, ActnCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, dxBarDBNav,
  dxBar, cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, ppDB, ppCtrls, ppDBPipe,
  ppParameter, ppDesignLayer, ppBands, ppPrnabl, ppClass, ppVar, ppCache,
  ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmJurisdiction = class(TfrmMaint)
    dbDescr: TDBEdit;
    Code: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dsSub: TDataSource;
    qSub: TUniQuery;
    qSubCODE: TStringField;
    qSubJURISDICTION: TStringField;
    qSubDESCR: TStringField;
    qSubROWID: TStringField;
    Bevel1: TBevel;
    dxBarDBNavigator2: TdxBarDBNavigator;
    dxBarDBNavFirst2: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dgSub: TcxGrid;
    dgSubLevel1: TcxGridLevel;
    tvSub: TcxGridDBTableView;
    tvSubCODE: TcxGridDBColumn;
    tvSubDESCR: TcxGridDBColumn;
    dbCode: TcxDBButtonEdit;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure qSubBeforePost(DataSet: TDataSet);
    procedure qrySourceBeforeScroll(DataSet: TDataSet);
    procedure dbCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJurisdiction: TfrmJurisdiction;

implementation

{$R *.DFM}

uses
   GenericSearch;

procedure TfrmJurisdiction.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qSub.Close();
  qSub.ParamByName('code').AsString := qrySource.FieldByName('code').AsString;
  qSub.Open();
end;

procedure TfrmJurisdiction.qSubBeforePost(DataSet: TDataSet);
begin
  inherited;
  qSubJURISDICTION.AsString := qrySource.FieldByName('code').AsString;
end;

procedure TfrmJurisdiction.qrySourceBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if(qSub.Active and (qSub.State in [dsEdit,dsInsert])) then
    qSub.Post();
end;

procedure TfrmJurisdiction.dbCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  inherited;
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR FROM JURISDICTION ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;

end.
