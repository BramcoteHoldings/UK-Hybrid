unit MultiSelect;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, MemDS, OracleUniProvider, Uni, DBAccess, ImgList, Menus,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, Grids,
  DBGrids, Buttons, dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppParameter, cxClasses, ppDesignLayer;

type
  TfrmMultiSelect = class(TfrmMaint)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    qryMultiSelectData: TUniQuery;
    dsMultiSelectData: TUniDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    btnCodeSearch: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryMultiSelectDataAfterInsert(DataSet: TDataSet);
    procedure btnCodeSearchClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMultiSelect: TfrmMultiSelect;

implementation

{$R *.DFM}

uses
  AxiomData, GenericSearch;

procedure TfrmMultiSelect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmMultiSelect.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_DELETE then
    if MessageDlg('Are you sure you want to delete '+#13#10+
      Copy(qryMultiSelectData.FieldByName('DESCR').AsString, 1, 20)+'...', mtWarning, [mbYes, mbNo], 0) = mrYes then
        qryMultiSelectData.Delete;
end;

procedure TfrmMultiSelect.qryMultiSelectDataAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryMultiSelectData.FieldByName('PARENTCODE').AsString := qrySource.FieldByName('CODE').AsString;
end;

procedure TfrmMultiSelect.btnCodeSearchClick(Sender: TObject);
begin
  inherited;
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM MULTISELECTION ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
  end;
end;

procedure TfrmMultiSelect.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT DESCR AS CODE, PATH AS DESCR, ''N'' AS DEFAULTITEM FROM PREC ORDER BY DESCR';
    if ShowModal = mrOK then
    begin
      Self.qryMultiSelectData.FieldByName('DATAVALUE').AsString := qrySource.FieldByName('CODE').AsString;
    end;
  end;
end;

end.
