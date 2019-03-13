unit TransitSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TfrmTransitSearch = class(TForm)
    qryTransit: TUniQuery;
    dsTasks: TUniDataSource;
    pageSearch: TPageControl;
    tabGrid: TTabSheet;
    dbgrTasks: TDBGrid;
    tabFilters: TTabSheet;
    fraIncludes: TGroupBox;
    Label5: TLabel;
    tbDesc: TEdit;
    btnClearAll: TBitBtn;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    Label8: TLabel;
    tbTaskSearch: TEdit;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrTasksDblClick(Sender: TObject);
    procedure dbgrTasksColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbTaskSearchChange(Sender: TObject);
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
  frmTransitSearch: TfrmTransitSearch;
  sSQL : string;
  sWhereClause : string;
  sOrderBy : string;

implementation

uses
  GenericSearch, AxiomData, MiscFunc, citfunc;

{$R *.DFM}


procedure TfrmTransitSearch.SetFilter(sMatterType : string);
begin
  btnClearAll.Click;
  //tbWorkflowType.Text := TypeString(sMatterType, 'WORKFLOWTYPE');
  //chkGeneral.Checked := True;
end;


procedure TfrmTransitSearch.btnClearAllClick(Sender: TObject);
begin
  //tbWorkflowType.Text := '';
  tbDesc.Text := '';
  //chkGeneral.Checked := False;
end;

procedure TfrmTransitSearch.FormShow(Sender: TObject);
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


procedure TfrmTransitSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
    end;
  end;
end;

procedure TfrmTransitSearch.dbgrTasksDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmTransitSearch.MakeSQL;
begin
  // Build the SQL Filter query
  tbTaskSearch.Text := '';
  qryTransit.Close;
{  sWhereClause := 'WHERE MASTER = ''Y''';
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
}
  qryTransit.SQL.Clear;
  qryTransit.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryTransit.Open;
end;


procedure TfrmTransitSearch.dbgrTasksColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
begin
  qryTransit.Close;
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
  qryTransit.SQL.Clear;
  qryTransit.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryTransit.Open;
end;


procedure TfrmTransitSearch.FormCreate(Sender: TObject);
begin
  sSQL := 'SELECT * FROM TRANSIT ';
  sOrderBy := ' ORDER BY DESCR';
end;


procedure TfrmTransitSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{
  SettingSave('Task Search', 'Type', tbWorkflowType.Text);
  SettingSave('Task Search', 'Descr', tbDesc.Text);
  SettingSave('Task Search', 'General', chkGeneral.Checked);
}
end;

procedure TfrmTransitSearch.tbTaskSearchChange(Sender: TObject);
begin
  if tbTaskSearch.Text <> '' then
    qryTransit.Locate('DESCR', tbTaskSearch.Text, [loPartialKey]);
end;


procedure TfrmTransitSearch.tbTaskSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryTransit.Next;
    VK_UP: qryTransit.Prior;
    VK_NEXT: qryTransit.MoveBy(10);
    VK_PRIOR: qryTransit.MoveBy(-10);
    VK_HOME: qryTransit.First;
    VK_END: qryTransit.Last;
  end;
end;

end.
