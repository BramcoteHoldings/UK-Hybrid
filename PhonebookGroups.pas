unit PhonebookGroups;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, DBCtrls, Mask, Db, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Menus, OracleUniProvider, Uni,
  DBAccess, Grids, DBGrids, dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppParameter, cxClasses, ppDesignLayer, MemDS;

type
  TfrmPhonebookGroups = class(TfrmMaint)
    Label1: TLabel;
    dbtbCategory: TDBEdit;
    dbchkOtherParty: TDBCheckBox;
    gbOPOptions: TGroupBox;
    dbchkActingFor: TDBCheckBox;
    Label2: TLabel;
    cbFieldName: TComboBox;
    dbgCategorys: TDBGrid;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    qrySourceCATEGORY: TStringField;
    qrySourceOTHERPARTY: TStringField;
    qrySourceACTINGFOR: TStringField;
    qrySourceFIELDNAME: TStringField;
    qrySourceROWID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure cbFieldNameChange(Sender: TObject);
    procedure cbFieldNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbchkOtherPartyClick(Sender: TObject);
    procedure dbtbCategoryKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhonebookGroups: TfrmPhonebookGroups;

implementation

{$R *.DFM}

uses
  MiscFunc;

procedure TfrmPhonebookGroups.FormCreate(Sender: TObject);
begin
  StringPopulate(cbFieldName.Items, 'FIELDTYPE', 'NAME', 'TYPE = ''OP''');
  inherited;
  PrimaryField := 'CATEGORY';
end;

procedure TfrmPhonebookGroups.qrySourceAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrySource.FieldByName('OTHERPARTY').AsString := 'N';
  qrySource.FieldByName('ACTINGFOR').AsString := 'N';
end;

procedure TfrmPhonebookGroups.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  gbOPOptions.Enabled := qrySource.FieldByName('OTHERPARTY').AsString = 'Y';
  cbFieldName.ItemIndex := cbFieldName.Items.IndexOf(qrySource.FieldByName('FIELDNAME').AsString);
end;

procedure TfrmPhonebookGroups.cbFieldNameChange(Sender: TObject);
begin
  if not qrySource.Modified then
    qrySource.Edit;
  qrySource.FieldByName('FIELDNAME').AsString := cbFieldName.Text;
end;

procedure TfrmPhonebookGroups.cbFieldNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then
    cbFieldName.ItemIndex := -1;
  if not qrySource.Modified then
    qrySource.Edit;
  qrySource.FieldByName('FIELDNAME').Clear;
end;

procedure TfrmPhonebookGroups.dbchkOtherPartyClick(Sender: TObject);
begin
  gbOPOptions.Enabled := dbchkOtherParty.Checked;
end;

procedure TfrmPhonebookGroups.dbtbCategoryKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  {MGD - added to stop dots going into category's}
  if(Key = '.') then
    Key := #0;
end;

end.

