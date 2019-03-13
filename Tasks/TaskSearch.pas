unit TaskSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, Ora, OracleUniProvider, Uni,
  DBAccess, MemDS;

type
  TfrmTaskSearch = class(TForm)
    qryTasks: TUniQuery;
    dsTasks: TUniDataSource;
    pageSearch: TPageControl;
    tabGrid: TTabSheet;
    dbgrTasks: TDBGrid;
    tabFilters: TTabSheet;
    fraEqual: TGroupBox;
    Label3: TLabel;
    fraIncludes: TGroupBox;
    Label5: TLabel;
    tbDesc: TEdit;
    btnClearAll: TBitBtn;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    Label8: TLabel;
    tbTaskSearch: TEdit;
    chkGeneral: TCheckBox;
    tbWorkflowType: TEdit;
    btnWorkflowType: TBitBtn;
    qryTasksCODE: TStringField;
    qryTasksDESCR: TStringField;
    qryTasksWORKFLOWTYPE: TStringField;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrTasksDblClick(Sender: TObject);
    procedure dbgrTasksColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbTaskSearchChange(Sender: TObject);
    procedure btnWorkflowTypeClick(Sender: TObject);
    procedure tbTaskSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure MakeSQL;
  public
    { Public declarations }
    procedure SetFilter(sMatterType : string);
  end;

var
  frmTaskSearch: TfrmTaskSearch;
  sSQL : string;
  sWhereClause : string;
  sOrderBy : string;

implementation

uses
  GenericSearch, AxiomData, MiscFunc;

{$R *.DFM}


procedure TfrmTaskSearch.SetFilter(sMatterType : string);
begin
  btnClearAll.Click;
  tbWorkflowType.Text := TypeString(sMatterType, 'WORKFLOWTYPE');
  chkGeneral.Checked := True;
end;


procedure TfrmTaskSearch.btnClearAllClick(Sender: TObject);
begin
  tbWorkflowType.Text := '';
  tbDesc.Text := '';
  chkGeneral.Checked := False;
end;

procedure TfrmTaskSearch.FormShow(Sender: TObject);
begin
{  tbWorkflowType.Text := SettingLoadString('Task Search', 'Type');
  tbDesc.Text := SettingLoadString('Task Search', 'Descr');
  if SettingLoadInteger('Task Search', 'General') = 0 then
    chkGeneral.Checked := False
  else
    chkGeneral.Checked := True;
}
  MakeSQL;

  pageSearch.ActivePage := tabGrid;
  tbTaskSearch.SetFocus;
end;


procedure TfrmTaskSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
    end;
  end;
end;

procedure TfrmTaskSearch.dbgrTasksDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmTaskSearch.MakeSQL;
var
  sAND : string;
begin
  // Build the SQL Filter query
  tbTaskSearch.Text := '';
  qryTasks.Close;
  sWhereClause := 'WHERE MASTER = ''Y''';
  sAND := ' AND ';
  if tbWorkflowType.Text <> '' then
  begin
    if chkGeneral.Checked then
      sWhereClause := sWhereClause + sAND + '(WORKFLOWTYPE LIKE ''' + tbWorkflowType.Text + '%'' OR WORKFLOWTYPE IS NULL)'
    else
      sWhereClause := sWhereClause + sAND + 'WORKFLOWTYPE = ''' + tbWorkflowType.Text + '''';
  end;
  if tbDesc.Text <> '' then
    sWhereClause := sWhereClause + sAND + 'DESCR LIKE ' + QuotedStr('%' + tbDesc.Text + '%');

  qryTasks.SQL.Clear;
  qryTasks.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryTasks.Open;
end;


procedure TfrmTaskSearch.dbgrTasksColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
begin
  qryTasks.Close;
  sOrderBy := 'ORDER BY';
  sComma := ' ';
  bFinished := False;
  iCtr := 0;
  while (iCtr < dbgrTasks.Columns.Count) and (not bFinished) do
  begin
    sOrderBy := sOrderBy + sComma + dbgrTasks.Columns[iCtr].FieldName;
    iCtr := iCtr + 1;
    sComma := ', ';
  end;
  qryTasks.SQL.Clear;
  qryTasks.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryTasks.Open;
end;


procedure TfrmTaskSearch.FormCreate(Sender: TObject);
begin
  sSQL := 'SELECT CODE, SUBSTR(DESCR, 1, 200) AS DESCR, WORKFLOWTYPE FROM TASKTEMP ';
  sOrderBy := ' ORDER BY DESCR, CODE';
end;


procedure TfrmTaskSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{
  SettingSave('Task Search', 'Type', tbWorkflowType.Text);
  SettingSave('Task Search', 'Descr', tbDesc.Text);
  SettingSave('Task Search', 'General', chkGeneral.Checked);
}
end;

procedure TfrmTaskSearch.tbTaskSearchChange(Sender: TObject);
begin
  if tbTaskSearch.Text <> '' then
    qryTasks.Locate('DESCR', tbTaskSearch.Text, [loPartialKey]);
end;


procedure TfrmTaskSearch.btnWorkflowTypeClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM WORKFLOWTYPE ORDER BY CODE';
    if ShowModal = mrOK then
      tbWorkflowType.Text := qrySource.FieldByName('CODE').AsString;
    Release;
  end;
end;

procedure TfrmTaskSearch.tbTaskSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryTasks.Next;
    VK_UP: qryTasks.Prior;
    VK_NEXT: qryTasks.MoveBy(10);
    VK_PRIOR: qryTasks.MoveBy(-10);
    VK_HOME: qryTasks.First;
    VK_END: qryTasks.Last;
  end;
end;

end.
