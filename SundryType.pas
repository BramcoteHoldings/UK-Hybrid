unit SundryType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, StdCtrls, Mask, DBCtrls, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Menus, Buttons, OracleUniProvider, Uni, DBAccess, MemDS,
  dxBarDBNav, dxBar, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxCheckBox,
  cxGraphics, ppBands, ppCache, ppClass, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, ppVar, ppCtrls, ppPrnabl, cxLookAndFeels,
  cxLookAndFeelPainters, ppParameter, cxClasses, ppDesignLayer, System.ImageList;

type
  TfrmSundryType = class(TfrmMaint)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dsTaxType: TUniDataSource;
    qryTaxType: TUniQuery;
    Label6: TLabel;
    qryTaxTypeCODE: TStringField;
    qryTaxTypeDESCR: TStringField;
    Label7: TLabel;
    dsEntity: TUniDataSource;
    lblSoftLog: TLabel;
    dxBarButton1: TdxBarButton;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dbtbDescr: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    dbcbTaxType: TcxDBLookupComboBox;
    cmbGroup: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    qrySundryGroup: TUniQuery;
    dsSundryGroup: TUniDataSource;
    qrySundryGroupCODE: TStringField;
    qrySundryGroupDESCR: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    qryRpt: TUniQuery;
    dsRpt: TUniDataSource;
    cxDBCheckBox4: TcxDBCheckBox;
    qryTmp: TUniQuery;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    procedure btnCodeSearchClick(Sender: TObject);
    procedure tbtnGroupsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    function validateData(var sError : String): boolean;override;
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cmbGroupPropertiesInitPopup(Sender: TObject);
    procedure dxBarDBNavDelete2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.DFM}

uses
  AxiomData, GenericSearch, MiscFunc, SundryTypeGroups, TableCache,glComponentUtil;

procedure TfrmSundryType.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM SUNDRYTYPE WHERE CODE < ''aa'' ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;

procedure TfrmSundryType.tbtnGroupsClick(Sender: TObject);
begin
  inherited;
  TfrmSundryTypeGroups.Create(nil).Show;
end;

procedure TfrmSundryType.FormCreate(Sender: TObject);
begin
  inherited;
  qryTaxType.Open;
  dmTableCache.LoadVirtualTable(dmTableCache.vtEntity,'ENTITY','','NAME');
  qrySundryGroup.Close;
  qrySundryGroup.Open;
end;

{
UNION
SELECT Null AS CODE, Null AS DESCR FROM DUAL
ORDER BY 1
}
procedure TfrmSundryType.dxBarButton1Click(Sender: TObject);
begin
  inherited;
   TfrmSundryTypeGroups.Create(nil).Show;
end;

procedure TfrmSundryType.dxBarDBNavDelete2Click(Sender: TObject);
begin
  //inherited;
  with qryTmp do
  begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) AS COUNT FROM SUNDRY WHERE BILLED = ''N'' AND TYPE = ' + QuotedStr(cxDBButtonEdit1.Text));
      Open;
  end;
  if (qryTmp.FieldByName('COUNT').AsInteger = 0) then
  Begin
     if qrySource.Modified then
        qrySource.Post;
     qrySource.Delete;
  End
  else
  Begin
      MsgInfo('You are not able to delete an Expense Type which has unbilled transactions.');
  End;
end;

function TfrmSundryType.validateData(var sError : String): boolean;
var iGlComponentLength : integer;
glComponentSetup : TglComponentSetup;
begin
   validateData := true;
   glComponentSetup := dmAxiom.getGlComponents;
   iGlComponentLength := glComponentSetup.getComponentLength('ACCOUNT');
   if iGlComponentLength > 0 then // 0 if there is only gl component
   begin
      glComponentSetup.checkAccountField(qrySource,'LEDGER','Ledger',iGlComponentLength,sError);
   end;

   if sError <> '' then
   begin
      validateData:= false;
   end;
end;

procedure TfrmSundryType.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  inherited;
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM SUNDRYTYPE WHERE CODE < ''aa'' ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;

procedure TfrmSundryType.cmbGroupPropertiesInitPopup(Sender: TObject);
begin
   inherited;
   qrySundryGroup.Refresh;
end;

end.
