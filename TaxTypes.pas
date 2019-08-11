unit TaxTypes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, ImgList,
  ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, Menus, Buttons,
  MiscFunc, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDropDownEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid, cxDBLookupComboBox, cxTextEdit, cxCalendar, cxMaskEdit, cxDBEdit,
  cxContainer, cxLookupEdit, cxDBLookupEdit, cxCheckBox, cxPC, dxBarDBNav,
  dxBar, cxImageComboBox, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, ppParameter,
  ppDesignLayer, cxNavigator, dxGDIPlusClasses, dxDPIAwareUtils,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, System.ImageList;

type
  TfrmTaxTypes = class(TfrmMaint)
    dsTaxRates: TUniDataSource;
    qryTaxRates: TUniQuery;
    qryTaxRateDelete: TUniQuery;
    popTaxRate: TPopupMenu;
    popTaxRateRemove: TMenuItem;
    qryTaxDefault: TUniQuery;
    dsTaxDefault: TUniDataSource;
    qryTaxTypeLedger: TUniQuery;
    dsTaxTypeLedger: TUniDataSource;
    qryTaxRatesTAXCODE: TStringField;
    qryTaxRatesCOMMENCE: TDateTimeField;
    qryTaxRatesRATE: TFloatField;
    qryTaxRatesBILL_RATE: TFloatField;
    qryTaxRatesROWID: TStringField;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    ImageList1: TImageList;
    dsTaxType: TUniDataSource;
    qryEntities: TUniQuery;
    dsEntities: TUniDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    tvGrdDefaultTax: TcxGridDBTableView;
    tvGrdDefaultTaxTYPE: TcxGridDBColumn;
    tvGrdDefaultTaxCODE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    tvTaxRates: TcxGridDBTableView;
    tvTaxRatesCOMMENCE: TcxGridDBColumn;
    tvTaxRatesRATE: TcxGridDBColumn;
    tvTaxRatesBILL_RATE: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1ENTITY: TcxGridDBColumn;
    cxGrid3DBTableView1LEDGER: TcxGridDBColumn;
    cxGrid3DBTableView1ADJUSTLEDGER: TcxGridDBColumn;
    cxGrid3DBTableView1OUTPUTLEDGER: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    qryTaxType: TUniQuery;
    qryTaxRatesEND_PERIOD: TDateTimeField;
    tvTaxRatesEND_PERIOD: TcxGridDBColumn;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    Panel1: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cbTaxType: TcxDBImageComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    qrySourceCODE: TStringField;
    qrySourceDESCR: TStringField;
    qrySourceLEDGER: TStringField;
    qrySourceOUTPUTLEDGER: TStringField;
    qrySourceADJUSTLEDGER: TStringField;
    qrySourceDEFAULTTAX: TStringField;
    qrySourceWITHHOLDING: TStringField;
    qrySourceTAXTYPE: TStringField;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    qrySourceACTIVE: TStringField;
    qrySourceUSE_FOR_BILLING: TStringField;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label1: TLabel;
    qrySourceTAX_CODE_BILLING: TStringField;
    procedure qrySourceBeforeScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qrySourceBeforeDelete(DataSet: TDataSet);
    procedure btnAddTaxRateClick(Sender: TObject);
    procedure popTaxRateRemoveClick(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure qryTaxTypeLedgerNewRecord(DataSet: TDataSet);
    procedure qryTaxRatesAfterInsert(DataSet: TDataSet);
    procedure qrySourceAfterCancel(DataSet: TDataSet);
    procedure qrySourceAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  AxiomData;

{$R *.DFM}

var
  bInserting : boolean;

procedure TfrmTaxTypes.qrySourceBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if qryTaxRates.UpdatesPending then
    qryTaxRates.ApplyUpdates;

    qryTaxTypeLedger.Close;
end;

procedure TfrmTaxTypes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryTaxRates.Close;
  
  inherited;
end;

procedure TfrmTaxTypes.FormCreate(Sender: TObject);
begin
  inherited;
  bInserting := False;
  qryTaxRates.Open;
  qryTaxDefault.Open;
  qryTaxType.Open;
  qryEntities.Open;
  if dmAxiom.qryTaxList.Active = False then
     dmAxiom.qryTaxList.Open;
//  StringPopulate(tvGrdDefaultTax.Properties.Items,'TAXTYPE','CODE','1=1');
//  pagTaxRates.ActivePageIndex := 0;
end;

procedure TfrmTaxTypes.qrySourceBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  qryTaxRateDelete.SQL.Text := 'DELETE FROM TAXRATE WHERE TAXCODE = ' + QuotedStr(qrySource.FieldByName('CODE').AsString);
  qryTaxRateDelete.ExecSQL;
end;

procedure TfrmTaxTypes.btnAddTaxRateClick(Sender: TObject);
begin
  inherited;

{  qryTaxRates.Insert;
  qryTaxRates.FieldByName('TAXCODE').AsString := qrySource.FieldByName('CODE').AsString;
  qryTaxRates.FieldByName('COMMENCE').AsDateTime := Trunc(dtpCommence.Date);
  qryTaxRates.FieldByName('RATE').AsFloat := neRate.AsDouble;
  qryTaxRates.FieldByName('BILL_RATE').AsFloat := neCheqRate.AsDouble;
  qryTaxRates.Post;
  qryTaxRates.ApplyUpdates;

  qryTaxRates.Close;
  qryTaxRates.Open;     }
end;

procedure TfrmTaxTypes.popTaxRateRemoveClick(Sender: TObject);
begin
  inherited;
  qryTaxRates.Delete;
  qryTaxRates.ApplyUpdates;
end;

procedure TfrmTaxTypes.qrySourceAfterInsert(DataSet: TDataSet);
begin
  inherited;
  bInserting := True;
  qrySource.FieldByName('DEFAULTTAX').AsString := 'N';
  qrySource.FieldByName('WITHHOLDING').AsString := 'N';
//  cbTaxType.Enabled := True;
end;

procedure TfrmTaxTypes.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryTaxTypeLedger.Open;
end;

procedure TfrmTaxTypes.qryTaxTypeLedgerNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryTaxTypeLedger.FieldByName('CODE').AsString := qrySource.FieldByName('CODE').AsString;
end;

procedure TfrmTaxTypes.qryTaxRatesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryTaxRates.FieldByName('TAXCODE').AsString := qrySource.FieldByName('CODE').AsString;
end;

// Tax Type should for a current record should not be
// changable.  The Tax Type combo box is ReadOnly and the
// follow two procedures enable and disable it when new
// or cancel is clicked, respectively.
procedure TfrmTaxTypes.qrySourceAfterCancel(DataSet: TDataSet);
begin
  inherited;
//  cbTaxType.Enabled := False;
end;

procedure TfrmTaxTypes.qrySourceAfterPost(DataSet: TDataSet);
begin
  inherited;
//  cbTaxType.Enabled := False;
end;

end.
