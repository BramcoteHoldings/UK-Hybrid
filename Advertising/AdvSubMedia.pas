unit AdvSubMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MaintAncestor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxBar,
  Vcl.ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ppDB, ppDBPipe, ppParameter,
  ppDesignLayer, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, dxBarDBNav, MemDS, DBAccess, Uni, Vcl.ImgList,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmAdvSubMediaMaint = class(TfrmMaint)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Splitter1: TSplitter;
    dxBarDockControl1: TdxBarDockControl;
    bmMainBar3: TdxBar;
    qryMedia: TUniQuery;
    dsMedia: TUniDataSource;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1ADV_MEDIA_ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdvSubMediaMaint: TfrmAdvSubMediaMaint;

implementation

{$R *.dfm}

procedure TfrmAdvSubMediaMaint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryMedia.Close;
   inherited;
end;

procedure TfrmAdvSubMediaMaint.FormCreate(Sender: TObject);
begin
  inherited;
   qryMedia.Open;
end;

procedure TfrmAdvSubMediaMaint.qrySourceAfterInsert(DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('ADV_MEDIA_ID').AsInteger := qryMedia.FieldByName('ID').AsInteger;
end;

end.
