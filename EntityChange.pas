unit EntityChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Db, OracleUniProvider, Uni, DBAccess, MemDS, cxControls,
  cxContainer, cxListBox, cxDBEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters,
  cxButtons, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Menus, cxLookAndFeels,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmEntityChange = class(TForm)
    qryEntitys: TUniQuery;
    dsEntitys: TUniDataSource;
    tvEntity: TcxGridDBTableView;
    grdEntityLevel1: TcxGridLevel;
    grdEntity: TcxGrid;
    tvEntityNAME: TcxGridDBColumn;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    tvEntityCODE: TcxGridDBColumn;
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure dbllbEntitysDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryEntitysAfterFetch(DataSet: TCustomDADataSet);
    procedure tvEntityDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntityChange: TfrmEntityChange;

implementation

uses
  AxiomData, MiscFunc, Desktop;

{$R *.DFM}


procedure TfrmEntityChange.btnOKClick(Sender: TObject);
begin
  dmAxiom.Entity := qryEntitys.FieldByName('CODE').AsString;
  frmDesktop.beEntity.Text := dmAxiom.EntityName;
//  frmDesktop.sbarStatus.Panels[1].Text := dmAxiom.EntityName;
  SettingSave('Desktop', 'Entity', dmAxiom.Entity);
  Self.Close;
end;

procedure TfrmEntityChange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryEntitys.Close;
  
  Self.Release;
end;

procedure TfrmEntityChange.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmEntityChange.dbllbEntitysDblClick(Sender: TObject);
begin
  btnOK.Click;
end;

procedure TfrmEntityChange.FormShow(Sender: TObject);
begin
   qryEntitys.Open;
end;

procedure TfrmEntityChange.qryEntitysAfterFetch(DataSet: TCustomDADataSet);
begin
   if DataSet.FieldByName('CODE').AsString = dmAxiom.Entity then
      tvEntity.DataController.FocusedRecordIndex := 2;
end;

procedure TfrmEntityChange.tvEntityDblClick(Sender: TObject);
begin
   btnOKClick(Sender);
end;

end.
