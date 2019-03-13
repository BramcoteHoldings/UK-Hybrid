unit TaskItemSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, ToolWin,
  ImgList, Ora, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TfrmTaskItemSearch = class(TForm)
    qryTaskItems: TUniQuery;
    dsTaskItems: TUniDataSource;
    pageSearch: TPageControl;
    tabGrid: TTabSheet;
    dbgrTasks: TDBGrid;
    tabFilters: TTabSheet;
    fraEqual: TGroupBox;
    Label3: TLabel;
    cbType: TComboBox;
    fraIncludes: TGroupBox;
    Label5: TLabel;
    tbDesc: TEdit;
    btnClearAll: TBitBtn;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    Label8: TLabel;
    tbTaskSearch: TEdit;
    chkGeneral: TCheckBox;
    lblTypeDesc: TLabel;
    cbItemType: TComboBox;
    Label1: TLabel;
    ilstToolbar: TImageList;
    tbarMain: TToolBar;
    tbtnRefresh: TToolButton;
    tbtnClearAll: TToolButton;
    tbtnSep2: TToolButton;
    tbtnPrint: TToolButton;
    tbtnSep3: TToolButton;
    tbtnHelp: TToolButton;
    tbtnNew: TToolButton;
    tbtnEdit: TToolButton;
    tbtnSep1: TToolButton;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrTasksDblClick(Sender: TObject);
    procedure dbgrTasksColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbTaskSearchChange(Sender: TObject);
    procedure cbTypeChange(Sender: TObject);
    procedure tbTaskSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tbtnClearAllClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnEditClick(Sender: TObject);
  private
    { Private declarations }
    procedure MakeSQL;
  public
    { Public declarations }
  end;

var
  frmTaskItemSearch: TfrmTaskItemSearch;
  sSQL : string;
  sWhereClause : string;
  sOrderBy : string;

implementation

uses
  AxiomData, MiscFunc, TaskItemNew, TaskTempNew;

{$R *.DFM}


procedure TfrmTaskItemSearch.btnClearAllClick(Sender: TObject);
begin
  cbType.ItemIndex := -1;
  cbItemType.ItemIndex := -1;
  lblTypeDesc.Caption := '';
  tbDesc.Text := '';
end;


procedure TfrmTaskItemSearch.FormShow(Sender: TObject);
begin
  StringPopulate(cbType.Items, 'MATTERTYPE', 'CODE');
  cbItemType.ItemIndex := cbItemType.Items.IndexOf(SettingLoadString('Task Item Search', 'Item Type'));
  cbType.ItemIndex := cbType.Items.IndexOf(SettingLoadString('Task Item Search', 'Type'));
  tbDesc.Text := SettingLoadString('Task Item Search', 'Descr');
  if SettingLoadInteger('Task Item Search', 'General') = 0 then
    chkGeneral.Checked := False
  else
    chkGeneral.Checked := True;
  MakeSQL;

  pageSearch.ActivePage := tabGrid;
  tbTaskSearch.SetFocus;
end;


procedure TfrmTaskItemSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
    end;
  end;
end;


procedure TfrmTaskItemSearch.dbgrTasksDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;


procedure TfrmTaskItemSearch.MakeSQL;
var
  sAND : string;
begin
  // Build the SQL Filter query
  tbTaskSearch.Text := '';
  qryTaskItems.Close;
  sWhereClause := '';
  sAND := ' WHERE ';
  if cbItemType.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'TYPE = ''' + cbItemType.Text + '''';
    sAND := ' AND ';
  end;
  if cbType.Text <> '' then
  begin
    if chkGeneral.Checked then
      sWhereClause := sWhereClause + sAND + '(MATTERTYPE = ''' + cbType.Text + ''' OR MATTERTYPE = '''')'
    else
      sWhereClause := sWhereClause + sAND + 'MATTERTYPE = ''' + cbType.Text + '''';
    sAND := ' AND ';
  end;
  if tbDesc.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'REASON LIKE ' + QuotedStr('%' + tbDesc.Text + '%');
    sAND := ' AND ';
  end;

  qryTaskItems.SQL.Clear;
  qryTaskItems.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryTaskItems.Open;
end;


procedure TfrmTaskItemSearch.dbgrTasksColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
begin
  qryTaskItems.Close;
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
  qryTaskItems.SQL.Clear;
  qryTaskItems.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryTaskItems.Open;
end;


procedure TfrmTaskItemSearch.FormCreate(Sender: TObject);
begin
  sSQL := 'SELECT CODE, REASON, MATTERTYPE, TYPE FROM TASKITEM ';
  sOrderBy := ' ORDER BY CODE';
end;


procedure TfrmTaskItemSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('Task Item Search', 'Item Type', cbItemType.Text);
  SettingSave('Task Item Search', 'Type', cbType.Text);
  SettingSave('Task Item Search', 'Descr', tbDesc.Text);
  SettingSave('Task Item Search', 'General', chkGeneral.Checked)
end;


procedure TfrmTaskItemSearch.tbTaskSearchChange(Sender: TObject);
begin
  if tbTaskSearch.Text <> '' then
    qryTaskItems.Locate('CODE', tbTaskSearch.Text, [loPartialKey]);
end;

procedure TfrmTaskItemSearch.cbTypeChange(Sender: TObject);
begin
  lblTypeDesc.Caption := TypeString(cbType.Text, 'DESCR');
end;


procedure TfrmTaskItemSearch.tbTaskSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryTaskItems.Next;
    VK_UP: qryTaskItems.Prior;
    VK_NEXT: qryTaskItems.MoveBy(10);
    VK_PRIOR: qryTaskItems.MoveBy(-10);
    VK_HOME: qryTaskItems.First;
    VK_END: qryTaskItems.Last;
  end;
end;


procedure TfrmTaskItemSearch.tbtnRefreshClick(Sender: TObject);
begin
  qryTaskItems.Close;
  qryTaskItems.Open;
end;


procedure TfrmTaskItemSearch.tbtnClearAllClick(Sender: TObject);
begin
  btnClearAll.Click;
  MakeSQL;
end;

procedure TfrmTaskItemSearch.tbtnNewClick(Sender: TObject);
begin
  qryTaskItems.Close;
  with TfrmTaskItemNew.Create(Self) do
    ShowModal;
  qryTaskItems.Open;
end;


procedure TfrmTaskItemSearch.tbtnEditClick(Sender: TObject);
var
  sTemplateCode, sTaskItemCode: string;
begin
  if qryTaskItems.FieldByName('TYPE').AsString = 'Task' then
  begin
    sTemplateCode := qryTaskItems.FieldByName('CODE').AsString;
    with TfrmTaskTempNew.Create(Self) do
    begin
      FindTemplate(sTemplateCode);
      Caption := 'Task Template Edit';
      ShowModal;
    end;
  end
  else
  begin
    sTaskItemCode := qryTaskItems.FieldByName('CODE').AsString;
    with TfrmTaskItemNew.Create(Self) do
    begin
      FindTaskItem(sTaskItemCode);
      Caption := 'Task Item Edit';
      ShowModal;
    end;
  end;
end;

end.
