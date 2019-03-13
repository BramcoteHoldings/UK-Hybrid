unit WorkflowType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Menus, Db, ImgList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, ppCtrls,
  ppDB, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Buttons,
  ppDBPipe, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, dxBarDBNav, dxBar, MemDS, DBAccess, OracleUniProvider, Uni,
  ppParameter, ppDesignLayer, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmWorkflowType = class(TfrmMaint)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    btnCodeSearch: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    btnCopy: TcxButton;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    qrySourceCODE: TStringField;
    qrySourceDESCR: TStringField;
    qrySourceROWID: TStringField;
    procedure btnCodeSearchClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure qrySourceBeforeInsert(DataSet: TDataSet);
    procedure qrySourceAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkflowType: TfrmWorkflowType;

implementation

{$R *.DFM}

uses
  GenericSearch, WorkFlowCopyTemplate;

procedure TfrmWorkflowType.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM WORKFLOWTYPE ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;


procedure TfrmWorkflowType.btnCopyClick(Sender: TObject);
var
   frmCopyTemplate:  TfrmCopyTemplate;
begin
  inherited;
   frmCopyTemplate := TfrmCopyTemplate.Create(Self);
   frmCopyTemplate.WorkFlowType := Self.qrySource.FieldByName('CODE').AsString;
   frmCopyTemplate.ShowModal;
end;

procedure TfrmWorkflowType.qrySourceBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  btnCopy.Enabled := False; 
end;

procedure TfrmWorkflowType.qrySourceAfterPost(DataSet: TDataSet);
begin
  inherited;
   btnCopy.Enabled := True;
end;

end.
