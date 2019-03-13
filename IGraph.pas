unit IGraph;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, Db, OracleUniProvider, Uni, MemDS,
  DBAccess;

type
  TfrmInvoiceGraph = class(TForm)
    qryInvoice: TUniQuery;
    dbchFeePie: TDBChart;
    Series1: TPieSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayInvoice(iInvoice: integer);
  end;

var
  frmInvoiceGraph: TfrmInvoiceGraph;

implementation

{$R *.DFM}

procedure TfrmInvoiceGraph.DisplayInvoice(iInvoice: integer);
begin
  frmInvoiceGraph.Caption := 'Invoice Fee Distribution for Invoice ' + IntToStr(iInvoice);
  qryInvoice.Active := False;
  qryInvoice.ParamByName('P_Invoice').AsInteger := iInvoice;
  qryInvoice.Active := True;
  qryInvoice.Open;
end;


procedure TfrmInvoiceGraph.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryInvoice.Close;
  
  Self.Release;
end;

end.
