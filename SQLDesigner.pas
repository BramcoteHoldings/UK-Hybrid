unit SQLDesigner;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleUniProvider, Uni, DBAccess, MemDS, ExtCtrls, ToolWin, ComCtrls,
  StdCtrls, Grids, DBGrids, VirtualTable, ImgList;

type
  TfrmSQLDesigner = class(TForm)
    qryStatement: TUniQuery;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    StatusBar: TStatusBar;
    Panel2: TPanel;
    Splitter1: TSplitter;
    pagResult: TPageControl;
    tabResultGrid: TTabSheet;
    tabParameters: TTabSheet;
    dbgResult: TDBGrid;
    dbgParameters: TDBGrid;
    vtParameters: TVirtualTable;
    dsStatement: TUniDataSource;
    dsParameters: TUniDataSource;
    ImageList: TImageList;
    tbnExecute: TToolButton;
    tbnExit: TToolButton;
    ToolButton1: TToolButton;
    meOutput: TMemo;
    splResult: TSplitter;
    vtParametersNAME: TStringField;
    vtParametersVALUE: TStringField;
    tbnSave: TToolButton;
    SQLEditor: TMemo;
    procedure tbnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbnExecuteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SQLEditorChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure vtParametersBeforeInsert(DataSet: TDataSet);
    procedure pagResultChange(Sender: TObject);
    procedure pagResultChanging(Sender: TObject; var AllowChange: Boolean);
    procedure vtParametersEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbnSaveClick(Sender: TObject);
  private
    { Private declarations }
    FAllowClose: Boolean;
    FParameterValues: TStringList;
    procedure RefreshParameters;
  public
    { Public declarations }
    EditSave: Boolean;
  end;

var
  frmSQLDesigner: TfrmSQLDesigner;

implementation

{$R *.DFM}

uses
  MiscFunc, axiomdata;

procedure TfrmSQLDesigner.RefreshParameters;
var
  bAddValues: Boolean;
  i: Integer;
begin
  vtParameters.Clear;
  vtParameters.BeforeInsert := nil;
  vtParameters.FieldByName('NAME').ReadOnly := False;
  with qryStatement do
  begin
    if Params.Count = FParameterValues.Count then
      bAddValues := True
    else
    begin
      FParameterValues.Clear;
      bAddValues := False;
    end;
    for i := 0 to Params.Count-1 do
    begin
      if bAddValues then
        vtParameters.AppendRecord([Params[i].Name, FParameterValues[i]])
      else
      begin
        vtParameters.AppendRecord([Params[i].Name, '']);
        FParameterValues.Add('');
      end;
    end;
  end;
  vtParameters.BeforeInsert := vtParametersBeforeInsert;
  vtParameters.FieldByName('NAME').ReadOnly := True;
end;

procedure TfrmSQLDesigner.tbnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSQLDesigner.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FParameterValues.Free;

  Action := caFree;
end;

procedure TfrmSQLDesigner.tbnExecuteClick(Sender: TObject);
var
  i: Integer;
begin
  (* check to see if there are any illegal words in the statement *)
  if IsIllegalStatement(SQLEditor.Text) then
  begin
    MessageDlg('Illegal SQL Statement!', mtError, [mbOK], 0);
    Exit;
  end;

  if pagResult.ActivePage <> tabResultGrid then
    pagResult.SelectNextPage(False);
  // refresh parameter list
  RefreshParameters();

  // execute statement
  with qryStatement do
  begin
    SQL.Text := SQLEditor.Text;
    for i := 0 to qryStatement.Params.Count-1 do
      qryStatement.Params[i].AsString := FParameterValues[i];
    try
      Open;
      FAllowClose := True;
      StatusBar.SimpleText := '';
      meOutput.Visible := False;
      splResult.Visible := False;
    except
      on E:Exception do
      begin
        FAllowClose := False;
        StatusBar.SimpleText := 'Error in statement';
        meOutput.Text := E.Message;
        meOutput.Visible := True;
        splResult.Visible := True;
      end;
    end;
  end;
end;

procedure TfrmSQLDesigner.FormShow(Sender: TObject);
begin
  meOutput.Visible := False;
  splResult.Visible := False;

  FParameterValues := TStringList.Create;

  vtParameters.Open;

  FAllowClose := True;
  StatusBar.SimpleText := '';

  EditSave := False;
end;

procedure TfrmSQLDesigner.SQLEditorChange(Sender: TObject);
begin
  FAllowClose := False;
  StatusBar.SimpleText := 'Modified';
  qryStatement.SQL.Text := SQLEditor.Text;
end;

procedure TfrmSQLDesigner.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if not FAllowClose then
    if MessageDlg('Do you wish to cancel your changes?', mtWarning, [mbYes, mbNo], 0) = mrNo then
      CanClose := False;
end;

procedure TfrmSQLDesigner.pagResultChange(Sender: TObject);
begin
  if pagResult.ActivePage = tabParameters then
    RefreshParameters();
end;

procedure TfrmSQLDesigner.pagResultChanging(Sender: TObject;
  var AllowChange: Boolean);
var
  iCtr: Integer;
begin
  if pagResult.ActivePage = tabParameters then
    with vtParameters do
    begin
      if State = dsEdit then
        Post;
      if RecordCount <> FParameterValues.Count then
      begin
        FParameterValues.Clear;
        First;
        while not Eof do
        begin
          FParameterValues.Add(FieldByName('VALUE').AsString);
          Next;
        end;
      end
      else
      begin
        First;
        iCtr := 0;
        while not Eof do
        begin
          FParameterValues[iCtr] := FieldByName('VALUE').AsString;
          Inc(iCtr);
          Next;
        end;
      end;
    end;
end;

procedure TfrmSQLDesigner.vtParametersBeforeInsert(DataSet: TDataSet);
begin
  DatabaseError('Not allowed to add new parameters');
end;

procedure TfrmSQLDesigner.vtParametersEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  if E.Message = 'Not allowed to add new parameters' then
    Action := daAbort;
end;

procedure TfrmSQLDesigner.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if Key = VK_F9 then
  //  tbnExecute.Click;
end;

procedure TfrmSQLDesigner.tbnSaveClick(Sender: TObject);
begin
  FAllowClose := True;
  EditSave := True;
  Close;
end;

end.

