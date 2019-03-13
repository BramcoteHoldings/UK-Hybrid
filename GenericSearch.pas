unit GenericSearch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Db, MemDS, OracleUniProvider, Uni, Contnrs, DBAccess,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid, cxContainer, cxTextEdit, ExtCtrls, cxLookAndFeelPainters,
  cxButtons, Menus, cxLookAndFeels, cxNavigator, cxCheckBox,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxCalendar,
  cxCurrencyEdit;

type
  TSearchField = (sfCode, sfDescription);

  TfrmGenericSearch = class(TForm)
    dsSource: TUniDataSource;
    qrySource: TUniQuery;
    qrySearch: TUniQuery;
    dbgrLookup: TcxGrid;
    lvLookup: TcxGridLevel;
    tvLookup: TcxGridDBTableView;
    tvLookupCODE: TcxGridDBColumn;
    tvLookupDESCR: TcxGridDBColumn;
    Panel1: TPanel;
    Label8: TLabel;
    Label1: TLabel;
    tbDescription: TcxTextEdit;
    tbSearch: TcxTextEdit;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    tvLookupDEFAULTITEM: TcxGridDBColumn;
    tvLookupExtra: TcxGridDBTableView;
    tvLookupExtraID: TcxGridDBColumn;
    tvLookupExtraCREATED: TcxGridDBColumn;
    tvLookupExtraREFNO: TcxGridDBColumn;
    tvLookupExtraDESCR: TcxGridDBColumn;
    tvLookupExtraAMOUNT: TcxGridDBColumn;
    tvLookupExtraPAYEE: TcxGridDBColumn;
    tvLookupExtraCODE: TcxGridDBColumn;
    procedure dbgrLookupDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbSearchChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tbDescriptionKeyPress(Sender: TObject; var Key: Char);
    procedure tvLookupExtraDblClick(Sender: TObject);
  private
    { Private declarations }
    FTableName: string;
    FSearchField: TSearchField;
    FSourceFieldList: TObjectList;
    procedure SetSQL(sValue: string);
    procedure SetSearchField(sfValue: TSearchField);
  public
    { Public declarations }
    property SearchField: TSearchField read FSearchField write SetSearchField;
    property SourceFieldList : TObjectList read FSourceFieldList write FSourceFieldList;
    property SQL: string write SetSQL;
    property TableName : string read FTableName write FTableName;
  end;

var
  frmGenericSearch: TfrmGenericSearch;

implementation

{$R *.DFM}

uses
  AxiomData, miscfunc;

procedure TfrmGenericSearch.SetSQL(sValue : string);
begin
   Screen.Cursor := crSQLWait;
   with qrySource do
   begin
      Close;
      SQL.Text := sValue;
      Open;
   end;
   FSearchField := sfCode;
   Screen.Cursor := crDefault;
end;


procedure TfrmGenericSearch.SetSearchField(sfValue: TSearchField);
begin
  FSearchField := sfValue;
{  case FSearchField of
    sfCode:
      if dbgrLookup.Columns.Items[0].FieldName <> 'CODE' then
        dbgrLookup.Columns.Items[0].Index := 1;
    sfDescription:
      if dbgrLookup.Columns.Items[0].FieldName <> 'DESCR' then
        dbgrLookup.Columns.Items[0].Index := 1;
  end;  }
end;


procedure TfrmGenericSearch.dbgrLookupDblClick(Sender: TObject);
begin
  btnOK.Click;
end;

procedure TfrmGenericSearch.FormShow(Sender: TObject);
begin
   if lvLookup.GridView = tvLookupExtra then
      SettingLoadStream(dmAxiom.UserID, 'GenericSearch', tvLookupExtra);
   tbSearch.SetFocus;
end;

procedure TfrmGenericSearch.tbSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qrySource.Next;
    VK_UP: qrySource.Prior;
    VK_NEXT: qrySource.MoveBy(10);
    VK_PRIOR: qrySource.MoveBy(-10);
    VK_HOME: qrySource.First;
    VK_END: qrySource.Last;
  end;
end;

procedure TfrmGenericSearch.tvLookupExtraDblClick(Sender: TObject);
begin
   btnOK.Click;
end;

procedure TfrmGenericSearch.tbSearchChange(Sender: TObject);
begin
  if (tbSearch.Text <> '') or (tbDescription.Text <> '') then
  begin
    (* need to change this to make it more generic ??? *)
    if FSourceFieldList.Count > 2 then
    begin
      with qrySearch do
      begin
        SQL.Clear;
        SQL.Add('SELECT PATH AS CODE FROM ' + FTableName);
        SQL.Add('WHERE PATH LIKE ' + QuotedStr('%' + tbSearch.Text + '%'));
        Open;
        qrySource.Locate('ORGCODE', qrySearch.FieldByName('CODE').AsString,
                         [loCaseInsensitive, loPartialKey]);
        Close;
      end;
    end
    else
    begin
      if FSearchField = sfCode then
        qrySource.Locate('CODE', tbSearch.Text, [loCaseInsensitive, loPartialKey])
      else
        qrySource.Locate('DESCR', tbDescription.Text, [loCaseInsensitive, loPartialKey]);
    end;
  end;
end;

procedure TfrmGenericSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if lvLookup.GridView = tvLookupExtra then
     SettingSaveStream(dmAxiom.UserID, 'GenericSearch', tvLookupExtra);
  Action := caFree;
end;

procedure TfrmGenericSearch.FormCreate(Sender: TObject);
begin
  FSourceFieldList := TObjectList.Create;
end;

procedure TfrmGenericSearch.FormDestroy(Sender: TObject);
begin
  FSourceFieldList.Free;
end;

procedure TfrmGenericSearch.tbDescriptionKeyPress(Sender: TObject;
  var Key: Char);
begin
   SetSearchField(sfDescription);
end;

end.
