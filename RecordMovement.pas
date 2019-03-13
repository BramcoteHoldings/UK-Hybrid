unit RecordMovement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, OracleUniProvider, Uni, DBAccess, MemDS,
  cxLookAndFeelPainters, StdCtrls, cxButtons, Menus, cxCheckBox, cxLookAndFeels,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls;

type
  TfrmRecordMovement = class(TForm)
    tvRecordMovement: TcxGridDBTableView;
    grdRecordMovementLevel1: TcxGridLevel;
    grdRecordMovement: TcxGrid;
    qryRecMovement: TUniQuery;
    dsRecMovement: TUniDataSource;
    tvRecordMovementRELEASED_TO: TcxGridDBColumn;
    tvRecordMovementDATE_RETURNED: TcxGridDBColumn;
    tvRecordMovementMOVEMENT_REASON: TcxGridDBColumn;
    tvRecordMovementDATE_RELEASED: TcxGridDBColumn;
    tvRecordMovementDESCR: TcxGridDBColumn;
    tvRecordMovementMOD_BY: TcxGridDBColumn;
    tvRecordMovementCREATED: TcxGridDBColumn;
    tvRecordMovementDOCUMENT_ATTACHED: TcxGridDBColumn;
    tvRecordMovementMOVEMENT_ACTION: TcxGridDBColumn;
    Panel1: TPanel;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);

  published
    constructor Create(AOwner: TComponent; DocId: integer); reintroduce; overload;
  private
    { Private declarations }
    FDocId: integer;
  public
    { Public declarations }
  end;

var
  frmRecordMovement: TfrmRecordMovement;

implementation

uses
   AxiomData, miscfunc;
{$R *.dfm}

constructor TfrmRecordMovement.Create(AOwner: TComponent; DocId: integer);
begin
  inherited Create(AOwner);
  FDocId := DocId;
end;

procedure TfrmRecordMovement.FormShow(Sender: TObject);
begin
   qryRecMovement.Close;
   qryRecMovement.ParamByName('ndocument').AsInteger := FDocId;
   qryRecMovement.Open;
end;

procedure TfrmRecordMovement.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmRecordMovement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SettingSaveStream(dmAxiom.UserID, 'RECORD_MOVEMENT', tvRecordMovement );
end;

procedure TfrmRecordMovement.FormCreate(Sender: TObject);
begin
   SettingLoadStream(dmAxiom.UserID, 'RECORD_MOVEMENT', tvRecordMovement );
end;

end.
