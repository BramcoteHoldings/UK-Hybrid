unit TaskDecisions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Db, ImgList, ComCtrls,
  ToolWin, Buttons, Menus, ExtCtrls, Ora, OracleUniProvider, Uni, DBAccess,
  dxBarDBNav, dxBar, ppDB, ppDBPipe, ppParameter, ppDesignLayer,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, cxClasses, MemDS;

type
  TfrmTaskDecision = class(TfrmMaint)
    Label1: TLabel;
    dbtbCode: TDBEdit;
    dbgrTaskBranches: TDBGrid;
    Label2: TLabel;
    dsTaskBranches: TDataSource;
    qryTaskBranches: TUniQuery;
    Label3: TLabel;
    tbAddTask: TEdit;
    btnTaskFind: TSpeedButton;
    qryDecisionInsert: TUniQuery;
    procedure btnTaskFindClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTaskDecision: TfrmTaskDecision;

implementation

uses
  TaskItemSearch, Axiomdata;

{$R *.DFM}

procedure TfrmTaskDecision.btnTaskFindClick(Sender: TObject);
begin
  inherited;
  if frmTaskItemSearch.ShowModal = mrOK then
    if frmTaskItemSearch.qryTaskItems.FieldByName('TYPE').AsString = 'Decision' then
    begin
      with qryDecisionInsert do
      begin
        ParamByName('DECISION').AsString := dbtbCode.Text;
        ParamByName('TASK').AsString := frmTaskItemSearch.qryTaskItems.FieldByName('TYPE').AsString;
        ExecSQL;
      end;
      qryTaskBranches.Refresh;
    end;
end;

procedure TfrmTaskDecision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryTaskBranches.Close;

  inherited;

end;

end.
