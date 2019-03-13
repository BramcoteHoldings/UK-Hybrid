unit MarketRelationshipAction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MaintAncestor, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, dxBarDBNav, dxBar, cxClasses,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ImgList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmMarketRelationshipAction = class(TfrmMaint)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1ROWID: TcxGridDBColumn;
    procedure qrySourceAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarketRelationshipAction: TfrmMarketRelationshipAction;

implementation

{$R *.dfm}

uses miscfunc, axiomdata;

procedure TfrmMarketRelationshipAction.qrySourceAfterInsert(DataSet: TDataSet);
begin
   inherited;
   DataSet.FieldByName('id').AsInteger := GetSequenceNumber('SEQ_RELATIONSHIP_ACTION') ;
   //DataSet.FieldByName('id').AsInteger := GetSeqNum('SEQ_RELATIONSHIP_ACTION') ;   Creelman strikes again
end;

end.
