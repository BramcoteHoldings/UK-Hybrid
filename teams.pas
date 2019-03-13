unit teams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MaintAncestor, cxMaskEdit, cxButtonEdit, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, StdCtrls, dxBarDBNav, dxBar, DB, MemDS,
  DBAccess, OracleUniProvider, Uni, ImgList, ExtCtrls, ComCtrls,
  cxLookAndFeelPainters, cxButtons, cxListBox, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ActnList, ActnMan, cxGroupBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxDropDownEdit,
  cxLookAndFeels, XPStyleActnCtrls, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, ppDesignLayer, cxNavigator, System.Actions,
  cxDataControllerConditionalFormattingRulesManagerDialog;

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
    grdEmpListDBTableView1CODE: TcxGridDBColumn;
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
    procedure dbtbCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actTeamSaveUpdate(Sender: TObject);
    procedure actTeamSaveExecute(Sender: TObject);
    procedure tvEmpListMemberPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure tvEmpListWkflowMemberPropertiesChange(Sender: TObject);
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
begin
   inherited;
   qryTemp.Close;
   qryTemp.SQL.Clear;
   qryTemp.SQL.Text := 'delete from team_employee where team_code = ' + QuotedStr(dbtbCode.Text);
   qryTemp.ExecSQL;
   qryTemp.Close;
   qryTemp.SQL.Clear;
   tvEmpList.BeginUpdate;
   try
      for Row := 0 to tvEmpList.DataController.RecordCount - 1 do
      begin
         tvEmpList.DataController.FocusedRowIndex := Row;
         if tvEmpList.DataController.GetValue(Row, tvEmpListMember.Index) = True then
         begin
            qryTemp.SQL.Text := 'insert into team_employee values('+
                                QuotedStr(dbtbCode.Text) +',' +QuotedStr(tvEmpList.DataController.GetValue(Row, tvEmpListCODE.Index)) + ')';
            qryTemp.ExecSQL;
         end;
      end;
   except
     //
   end;
   tvEmpList.EndUpdate;
   ListChanged := False;
   tvEmpList.DataController.FocusedRowIndex := 0;
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
   qryEmployee.Open;
   tvEmpList.BeginUpdate;
   for Row := 0 to tvEmpList.DataController.RecordCount - 1 do
   begin
      qryEmployeeCode.Close;
      qryEmployeeCode.ParamByName('code').AsString := dbtbCode.Text;
      qryEmployeeCode.ParamByName('emp').AsString := tvEmpList.DataController.GetValue(Row, tvEmpListCODE.Index);
      qryEmployeeCode.Open;
      tvEmpList.DataController.FocusedRowIndex := Row;
      if qryEmployeeCode.Eof then
      begin
         tvEmpList.DataController.SetValue(Row, tvEmpListMember.Index, False);
//         tvEmpList.DataController.SetValue(Row, tvEmpListWkflowMember.Index, '');
      end
      else
      begin
         tvEmpList.DataController.SetValue(Row, tvEmpListMember.Index, True);
 //        tvEmpList.DataController.SetValue(Row, tvEmpListWkflowMember.Index, qryEmployeeCode.FieldByName('WORKFLOW_TEAM').AsString);
      end;
   end;
   tvEmpList.EndUpdate;
   tvEmpList.DataController.FocusedRowIndex := 0;
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
   tvEmpList.BeginUpdate;
   for Row := 0 to tvEmpList.DataController.RecordCount - 1 do
   begin
      qryEmployeeCode.Close;
      qryEmployeeCode.ParamByName('code').AsString := dbtbCode.Text;
      qryEmployeeCode.ParamByName('emp').AsString := tvEmpList.DataController.GetValue(Row, tvEmpListCODE.Index);
      qryEmployeeCode.Open;
      tvEmpList.DataController.FocusedRowIndex := Row;
      if qryEmployeeCode.Eof then
      begin
         tvEmpList.DataController.SetValue(Row, tvEmpListMember.Index, False);
//         tvEmpList.DataController.SetValue(Row, tvEmpListWkflowMember.Index, '');
      end
      else
      begin
         tvEmpList.DataController.SetValue(Row, tvEmpListMember.Index, True);
//         tvEmpList.DataController.SetValue(Row, tvEmpListWkflowMember.Index, qryEmployeeCode.FieldByName('WORKFLOW_TEAM').AsString);
      end;
   end;
   tvEmpList.EndUpdate;
   tvEmpList.DataController.FocusedRowIndex := 0;

end;

procedure TfrmTeams.tvEmpListWkflowMemberPropertiesChange(Sender: TObject);
begin
  inherited;
    ListChanged := True;
end;

end.
