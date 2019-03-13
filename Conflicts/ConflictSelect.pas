unit ConflictSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  MemDS, DBAccess, Uni, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLabel,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxCheckBox, Vcl.ExtCtrls;

type
  TFrmConflictSelect = class(TForm)
    dbGrConflicts: TcxGrid;
    vSelectConflicts: TcxGridDBTableView;
    dbGrConflictsLevel1: TcxGridLevel;
    vSelectConflictsUser: TcxGridDBColumn;
    vSelectConflictsDescription: TcxGridDBColumn;
    vSelectConflictsSearchText: TcxGridDBColumn;
    vSelectConflictsSystemDate: TcxGridDBColumn;
    QryConflictSearches: TUniQuery;
    dsConflictSearches: TDataSource;
    tmrApplyFilter: TTimer;
    vSelectConflictsName: TcxGridDBColumn;
    vSelectConflictsPath: TcxGridDBColumn;
    Panel1: TPanel;
    cbShowMineOnly: TcxCheckBox;
    edtSearchText: TcxTextEdit;
    btnSelect: TcxButton;
    btnCancel: TcxButton;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cbShowMineOnlyPropertiesChange(Sender: TObject);
    procedure tmrApplyFilterTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtSearchTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelectClick(Sender: TObject);
    procedure vSelectConflictsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    FFilterVals: TStrings;
    procedure ApplyFilter;
  public
    { Public declarations }
    ConflictDocID: Integer;
    SelectedFileName: String;
  end;

var
  FrmConflictSelect: TFrmConflictSelect;

implementation

{$R *.dfm}

uses
  AxiomData, BHLStrUtils;

const
  SearchFieldName = 'Search_Text';
  UserIDFieldName = 'User_ID';

procedure TFrmConflictSelect.ApplyFilter;
begin

  if cbShowMineOnly.Checked then
    FFilterVals.Values[UserIDFieldName] := QuotedStr(dmAxiom.UserID)
  else if FFilterVals.Values[UserIDFieldName] <> '' then
    FFilterVals.Delete(FFilterVals.IndexOfName(UserIDFieldName));

  if edtSearchText.EditingText <> '' then
    FFilterVals.Values[SearchFieldName] := 'like ' + QuotedStr('%' + edtSearchText.Text + '%')
  else if FFilterVals.Values[SearchFieldName] <> '' then
    FFilterVals.Delete(FFilterVals.IndexOfName(SearchFieldName));

  QryConflictSearches.Filter := FilterPartsToFilter(FFilterVals);
  QryConflictSearches.Filtered := True;

  btnSelect.Enabled := QryConflictSearches.RecordCount > 0;
end;

procedure TFrmConflictSelect.btnSelectClick(Sender: TObject);
begin
  ConflictDocID := QryConflictSearches.FieldByName('DocID').AsInteger;
end;

procedure TFrmConflictSelect.cbShowMineOnlyPropertiesChange(Sender: TObject);
begin
  tmrApplyFilter.Enabled := True;
end;

procedure TFrmConflictSelect.edtSearchTextKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  tmrApplyFilter.Enabled := true;
end;

procedure TFrmConflictSelect.FormCreate(Sender: TObject);
begin
  FFilterVals := TStringList.Create;
  QryConflictSearches.Open;
  btnSelect.Enabled := QryConflictSearches.RecordCount > 0;
  ConflictDocID := -1;
  SelectedFileName := '';
end;

procedure TFrmConflictSelect.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FFilterVals);
end;

procedure TFrmConflictSelect.tmrApplyFilterTimer(Sender: TObject);
begin
  tmrApplyFilter.Enabled := False;
  ApplyFilter;
end;

procedure TFrmConflictSelect.vSelectConflictsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  SelectedFileName := ACellViewInfo.GridRecord.Values[5];
  ConflictDocID := QryConflictSearches.FieldByName('DocID').AsInteger;
  btnSelect.Click;
end;

end.
