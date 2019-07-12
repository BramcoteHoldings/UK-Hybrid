unit teams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MaintAncestor, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxDBLookupComboBox, cxCheckBox, cxTextEdit, System.Actions, Vcl.ActnList,
  Vcl.XPStyleActnCtrls, Vcl.ActnMan, ppDB, dxBar, cxGridLevel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxGroupBox,
  cxMaskEdit, cxButtonEdit, cxDBEdit, Vcl.StdCtrls, ppDBPipe, ppParameter,
  ppDesignLayer, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, dxBarDBNav, cxClasses, MemDS, DBAccess, Uni,
  System.ImageList, Vcl.ImgList;

type
  TfrmTeams = class(TfrmMaint)
    Label1: TLabel;
    Label2: TLabel;
    dbtbDescr: TcxDBTextEdit;
    dbtbCode: TcxDBButtonEdit;
    qryEmployee: TUniQuery;
    qryEmployeeCode: TUniQuery;
    dsEmployee: TUniDataSource;
    cxGroupBox1: TcxGroupBox;
    grdEmpList: TcxGrid;
    grdEmpListDBTableView1: TcxGridDBTableView;
    grdEmpListDBTableView1Member: TcxGridDBColumn;
    grdEmpListDBTableView1NAME: TcxGridDBColumn;
    grdEmpListLevel1: TcxGridLevel;
    dxBarButton1: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    ActionManager1: TActionManager;
    actTeamSave: TAction;
    grdEmpListBandedTableView1: TcxGridBandedTableView;
    tvEmpList: TcxGridDBBandedTableView;
    tvEmpListCODE: TcxGridDBBandedColumn;
    tvEmpListNAME: TcxGridDBBandedColumn;
    tvEmpListMember: TcxGridDBBandedColumn;
    qryTemp: TUniQuery;
    tvEmpListDESCR: TcxGridDBBandedColumn;
    qryTeamEmployees: TUniQuery;
    dsTeamEmployees: TUniDataSource;
    procedure dbtbCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actTeamSaveUpdate(Sender: TObject);
    procedure actTeamSaveExecute(Sender: TObject);
    procedure tvEmpListMemberPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure tvEmpListWkflowMemberPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryTeamEmployeesAfterInsert(DataSet: TDataSet);
    procedure grdEmpListDBTableView1MemberPropertiesChange(Sender: TObject);
    procedure qryTeamEmployeesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    ListChanged: boolean;
//    procedure LoadEmployees(sCode : string);
  public
    { Public declarations }
  end;

var
  frmTeams: TfrmTeams;

implementation

{$R *.dfm}

uses
   GenericSearch, MiscFunc, axiomdata;

procedure TfrmTeams.dbtbCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with TfrmGenericSearch.Create(Self) do
   begin
      SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM TEAM ORDER BY CODE';
      if ShowModal = mrOK then
         Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
      Release;
   end;
end;

procedure TfrmTeams.actTeamSaveUpdate(Sender: TObject);
begin
   inherited;
   actTeamSave.Enabled := ListChanged;
end;

procedure TfrmTeams.actTeamSaveExecute(Sender: TObject);
var
   Row: integer;
   AView: TcxCustomGridView;
   ADataController: TcxCustomDataController;
begin
   inherited;
   qryTeamEmployees.Post;
   ListChanged := False;
{   qryTemp.Close;
   qryTemp.SQL.Clear;
   qryTemp.SQL.Text := 'delete from team_employee where team_code = ' + QuotedStr(dbtbCode.Text);
   qryTemp.ExecSQL;
   qryTemp.Close;
   qryTemp.SQL.Clear;
   try
      AView := grdEmpListDBTableView1;
      ADataController := Aview.DataController;
      AView.BeginUpdate;
      for Row := 0 to ADataController.RecordCount - 1 do
      begin
         ADataController.FocusedRowIndex := Row;
         qryTemp.SQL.Text := 'insert into team_employee (team_code, emp_code) values('+
                              QuotedStr(dbtbCode.Text) +',' +QuotedStr(ADataController.GetValue(Row, 0)) + ')';
         qryTemp.ExecSQL;
      end;
   finally
      AView.EndUpdate;
      ListChanged := False;
      ADataController.FocusedRowIndex := 0;
   end;     }
end;

procedure TfrmTeams.tvEmpListMemberPropertiesChange(Sender: TObject);
begin
  inherited;
   ListChanged := True;
end;

procedure TfrmTeams.FormCreate(Sender: TObject);
var
   Row: integer;
begin
  inherited;
   qrySource.Open;
   if dmAxiom.qryEmplyeeList.Active = False then
      dmAxiom.qryEmplyeeList.Open;
end;

procedure TfrmTeams.FormShow(Sender: TObject);
begin
  inherited;
  qryTeamEmployees.Close;
  qryTeamEmployees.ParamByName('code').AsString := dbtbCode.Text;
  qryTeamEmployees.Open;
end;

procedure TfrmTeams.grdEmpListDBTableView1MemberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  ListChanged := True;
end;

procedure TfrmTeams.qrySourceAfterInsert(DataSet: TDataSet);
var
   Row: integer;
begin
   inherited;
   tvEmpList.BeginUpdate;
   for Row := 0 to tvEmpList.DataController.RecordCount - 1 do
   begin
      tvEmpList.DataController.FocusedRowIndex := Row;
      tvEmpList.DataController.SetValue(Row, tvEmpListMember.Index, False);
   end;
   tvEmpList.EndUpdate;
   ListChanged := False;
   tvEmpList.DataController.FocusedRowIndex := 0;
end;

procedure TfrmTeams.qrySourceAfterScroll(DataSet: TDataSet);
var
   Row: integer;
begin
   inherited;
   qryTeamEmployees.Close;
   qryTeamEmployees.ParamByName('code').AsString := dbtbCode.Text;
   qryTeamEmployees.Open;
end;

procedure TfrmTeams.qryTeamEmployeesAfterInsert(DataSet: TDataSet);
begin
   inherited;
   ListChanged := True;
end;

procedure TfrmTeams.qryTeamEmployeesNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('team_code').AsString := dbtbCode.Text;
end;

procedure TfrmTeams.tvEmpListWkflowMemberPropertiesChange(Sender: TObject);
begin
  inherited;
    ListChanged := True;
end;

end.
