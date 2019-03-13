unit PostcodeSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, ExtCtrls,
  ImgList, ToolWin, OracleUniProvider, Uni, DBAccess, MemDS, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCurrencyEdit, cxCalendar, cxTextEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, cxPC, cxPCdxBarPopupMenu, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator;

type
  TfrmPostcodeSearch = class(TForm)
    qryPostcodes: TUniQuery;
    dsPostcodes: TUniDataSource;
    tmrLocate: TTimer;
    tbarMain: TToolBar;
    tbtnRefresh: TToolButton;
    tbtnClearAll: TToolButton;
    ToolButton3: TToolButton;
    tbtnMerge: TToolButton;
    tbtnPrint: TToolButton;
    qryPostcodesSUBURB: TStringField;
    qryPostcodesPCODE: TStringField;
    qryPostcodesSUBREAL: TStringField;
    qryPostcodesSTATE: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    pageSearch: TcxPageControl;
    tabGrid: TcxTabSheet;
    Panel1: TPanel;
    Label8: TLabel;
    tbSuburbSearch: TEdit;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    dbgrTasks: TcxGrid;
    tvTasks: TcxGridDBTableView;
    tvTasksSUBURB: TcxGridDBColumn;
    tvTasksSTATE: TcxGridDBColumn;
    tvTasksPCODE: TcxGridDBColumn;
    dbgrTasksLevel1: TcxGridLevel;
    tabFilter: TcxTabSheet;
    Label1: TLabel;
    cbState: TComboBox;
    btnClearAll: TBitBtn;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrTasksDblClick(Sender: TObject);
    procedure dbgrTasksColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbSuburbSearchChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tmrLocateTimer(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tbtnClearAllClick(Sender: TObject);
    procedure tbSuburbSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure MakeSQL;
  public
    { Public declarations }
  end;

var
  frmPostcodeSearch: TfrmPostcodeSearch;
  sSQL : string;
  sWhereClause : string;
  sOrderBy : string;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}


procedure TfrmPostcodeSearch.btnClearAllClick(Sender: TObject);
begin
  cbState.ItemIndex := -1;
end;

procedure TfrmPostcodeSearch.FormShow(Sender: TObject);
begin
  if not qryPostcodes.Active then
  begin
    cbState.Text := SettingLoadString('Task Search', 'State');
    MakeSQL;
  end;

  qryPostcodes.Open;

  if Self.Visible then
    tbSuburbSearch.SetFocus;
end;


procedure TfrmPostcodeSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
    end;
  end;
end;


procedure TfrmPostcodeSearch.dbgrTasksDblClick(Sender: TObject);
begin
  btnOk.Click;
end;


procedure TfrmPostcodeSearch.MakeSQL;
var
  sAND : string;
begin
  // Build the SQL Filter query
  Screen.Cursor := crHourGlass;
  qryPostcodes.Close;
  sWhereClause := '';
  sAND := ' WHERE ';

  if cbState.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'STATE = ''' + cbState.Text + '''';
    sAND := ' AND ';

  end;

  if tbSuburbSearch.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + ' upper(SUBURB) LIKE ' + QuotedStr(Uppercase(tbSuburbSearch.Text) + '%');
    sAND := ' AND ';

  end;

  if sWhereClause = '' then
    sWhereClause := ' WHERE SUBURB > '' ''';

  qryPostcodes.SQL.Text := sSQL + sWhereClause + sOrderBy;
  qryPostcodes.Open;
  Screen.Cursor := crDefault;
end;


procedure TfrmPostcodeSearch.dbgrTasksColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
begin
{  qryPostcodes.Close;
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
  qryPostcodes.SQL.Text := sSQL + sWhereClause + sOrderBy;
  qryPostcodes.Open;    }
end;


procedure TfrmPostcodeSearch.FormCreate(Sender: TObject);
begin
   sSQL := 'SELECT * FROM POSTCODE ';
   sOrderBy := ' ORDER BY SUBREAL';
   pageSearch.ActivePage := tabGrid;
end;


procedure TfrmPostcodeSearch.FormDestroy(Sender: TObject);
begin
   try
      if tmrLocate.Enabled = True then
         tmrLocate.Enabled := False;
   finally
      tmrLocate.Free;
   end;
end;

procedure TfrmPostcodeSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('Task Search', 'State', cbState.Text);
//  RemoveFromDesktop(Self);
end;

procedure TfrmPostcodeSearch.tbSuburbSearchChange(Sender: TObject);
var
  iSel : integer;
begin
  tmrLocate.Enabled := False;
  if tbSuburbSearch.Text <> '' then
  begin
    iSel := tbSuburbSearch.SelStart;
    tbSuburbSearch.Text := FirstCap(tbSuburbSearch.Text);
    tbSuburbSearch.SelStart := iSel;
  end;
  tmrLocate.Enabled := True;
end;


procedure TfrmPostcodeSearch.btnCancelClick(Sender: TObject);
begin
  if Self.FormState <> [fsModal] then
    Self.Close;
end;


procedure TfrmPostcodeSearch.btnOKClick(Sender: TObject);
begin
  if Self.FormState <> [fsModal] then
    Self.Close;
end;

procedure TfrmPostcodeSearch.tmrLocateTimer(Sender: TObject);
begin
  tmrLocate.Enabled := False;
  MakeSQL;
end;

procedure TfrmPostcodeSearch.tbtnRefreshClick(Sender: TObject);
begin
  qryPostcodes.Close;
  qryPostcodes.Open;
end;

procedure TfrmPostcodeSearch.tbtnClearAllClick(Sender: TObject);
begin
  btnClearAll.Click;
  MakeSQL;
end;

procedure TfrmPostcodeSearch.tbSuburbSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryPostcodes.Next;
    VK_UP: qryPostcodes.Prior;
    VK_NEXT: qryPostcodes.MoveBy(10);
    VK_PRIOR: qryPostcodes.MoveBy(-10);
    VK_HOME: qryPostcodes.First;
    VK_END: qryPostcodes.Last;
  end;
end;

procedure TfrmPostcodeSearch.ToolButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

end.

