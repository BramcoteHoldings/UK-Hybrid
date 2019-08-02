unit FeeCodes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, ImgList,
  ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, Menus, Ora, OracleUniProvider, Uni,
  AxiomData, OraSmart, DBAccess, dxBarDBNav, dxBar, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxPC,
  cxContainer, cxGroupBox, cxCurrencyEdit, cxCalendar, cxDBLookupComboBox,
  cxDBEdit, cxSplitter, cxLookAndFeels, cxLookAndFeelPainters, ppDB,
  ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppParameter, cxPCdxBarPopupMenu,
  ppDesignLayer, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, ppStrtch, ppSubRpt, dxPSCore, cxNavigator,
  MemDS, dxPScxSchedulerLnk,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  dxDateRanges, System.ImageList;

type
  TfrmFeeCode = class(TfrmMaint)
    dsFeeRates: TUniDataSource;
    qryFeeCodeTypeChange: TUniQuery;
    qryReport: TUniQuery;
    qryReportFEECODE: TStringField;
    qryReportFEECODEDESCR: TStringField;
    qryReportEMPTYPE: TStringField;
    qryReportTYPERATE: TFloatField;
    qryReportEMPTYPEDESCR: TStringField;
    qryReportEMPTYPEORDER: TIntegerField;
    qrySourceCODE: TStringField;
    qrySourceDESCR: TStringField;
    qrySourceROWID: TStringField;
    dsEmpRates: TUniDataSource;
    qryFeeEarner: TUniQuery;
    dsFeeEarner: TUniDataSource;
    qryEmpRates: TUniQuery;
    qryFeeRates: TUniQuery;
    tvFeeCodes: TcxGridDBTableView;
    grdFeeCodesLevel1: TcxGridLevel;
    grdFeeCodes: TcxGrid;
    tvFeeCodesCODE: TcxGridDBColumn;
    tvFeeCodesDESCR: TcxGridDBColumn;
    qryEmptype: TUniQuery;
    dsEmptype: TUniDataSource;
    cxSplitter1: TcxSplitter;
    btnPrint: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    OraQuery1: TUniQuery;
    OraQuery2: TUniQuery;
    OraDataSource1: TUniDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    OraDataSource2: TUniDataSource;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppTitleBand2: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    OraQuery3: TUniQuery;
    OraDataSource3: TUniDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    Panel1: TPanel;
    gbFeeRates: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    tsEmpTypeRates: TcxTabSheet;
    dbgrFeeRates: TcxGrid;
    tvFeeRates: TcxGridDBTableView;
    tvFeeRatesEMPTYPE: TcxGridDBColumn;
    tvFeeRatesDESCR: TcxGridDBColumn;
    tvFeeRatesRATE: TcxGridDBColumn;
    tvFeeRatesEFFECTIVE_FROM: TcxGridDBColumn;
    tvFeeRatesEFFECTIVE_TO: TcxGridDBColumn;
    dbgrFeeRatesLevel1: TcxGridLevel;
    tsEmployeeRates: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1EMP_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1RATE: TcxGridDBColumn;
    cxGrid1DBTableView1EFFECTIVE_FROM: TcxGridDBColumn;
    cxGrid1DBTableView1EFFECTIVE_TO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tvFeeRatesColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1CURRENCY: TcxGridDBColumn;
    procedure qrySourceBeforeScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrySourceBeforePost(DataSet: TDataSet);
    procedure qrySourceBeforeDelete(DataSet: TDataSet);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure tbtnNewClick(Sender: TObject);
    procedure qrySourceAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryEmpRatesAfterInsert(DataSet: TDataSet);
    procedure dxBarDBNavPost2Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure qryFeeRatesBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

uses
   MiscFunc;

procedure TfrmFeeCode.qrySourceBeforeScroll(DataSet: TDataSet);
begin
   inherited;
   if qryFeeRates.UpdatesPending then
      qryFeeRates.ApplyUpdates;
   if qryEmpRates.UpdatesPending = True then
      qryEmpRates.ApplyUpdates();

end;

procedure TfrmFeeCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryFeeRates.Close;
   qryFeeEarner.Close;
   qrySource.Close;
   qryEmpRates.Close;
   qryFeeCodeTypeChange.Close;
   qryEmptype.Close;
   inherited;
end;

procedure TfrmFeeCode.qrySourceBeforePost(DataSet: TDataSet);
begin
  inherited;
  try
     dmAxiom.uniInsight.StartTransaction;
     if qrySource.State = dsInsert then
     begin
       with qryFeeCodeTypeChange do
       begin
         SQL.Text := 'INSERT INTO FEECODETYPE (FEECODE,EMPTYPE, RATE) SELECT ''' + qrySource.FieldByName('CODE').AsString + ''', EMPTYPE.CODE, NULL FROM EMPTYPE';
         ExecSQL;
       end;
     end;
  finally
     dmAxiom.uniInsight.Commit;
  end;
end;

procedure TfrmFeeCode.qrySourceBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with qryFeeCodeTypeChange do
  begin
    SQL.Text := 'DELETE FROM FEECODETYPE WHERE FEECODE = ''' + DataSet.FieldByName('CODE').AsString + '''';
    ExecSQL;
  end;
end;

procedure TfrmFeeCode.qrySourceAfterScroll(DataSet: TDataSet);
begin
   inherited;
//   qryFeeRates.Close;
//   qryFeeRates.ParamByName('CODE').AsString := qrySource.FieldByName('CODE').AsString;
//   qryFeeRates.Open;

//   qryEmpRates.Close;
//   qryEmpRates.Open;
end;

procedure TfrmFeeCode.tbtnNewClick(Sender: TObject);
begin
  inherited;
  gbFeeRates.Visible := False;
end;

procedure TfrmFeeCode.qrySourceAfterPost(DataSet: TDataSet);
begin
   inherited;
   gbFeeRates.Visible := True;
 //  qryFeeRates.Close;
//   qryFeeRates.ParamByName('CODE').AsString := qrySource.FieldByName('CODE').AsString;
//   qryFeeRates.Open;

//   qryEmpRates.Close;
//   qryEmpRates.Open;
end;

procedure TfrmFeeCode.FormCreate(Sender: TObject);
begin
  inherited;
   qryFeeEarner.Open;
   qryEmptype.Open;
   qryEmpRates.Open;
   qryFeeRates.Open;
   if dmAxiom.qryCurrencyList.Active = False then
      dmAxiom.qryCurrencyList.Open;
end;

procedure TfrmFeeCode.qryEmpRatesAfterInsert(DataSet: TDataSet);
begin
   inherited;
   DataSet.FieldByName('FEECODE').AsString := qrySource.FieldByName('CODE').AsString;
//   qryEmpRates.Close;
//   qryEmpRates.FieldByName('FEECODE').AsString := qrySource.FieldByName('CODE').AsString;
//   qryEmpRates.Open;
end;

procedure TfrmFeeCode.qryFeeRatesBeforeInsert(DataSet: TDataSet);
begin
   inherited;
   if qrySource.State <> dsBrowse then
      qrySource.Post;
end;

procedure TfrmFeeCode.dxBarDBNavPost2Click(Sender: TObject);
begin
   inherited;
   qryFeeRates.Post;
   qryFeeRates.ApplyUpdates;
end;

procedure TfrmFeeCode.btnPrintClick(Sender: TObject);
begin
  inherited;
   rpMaintReport.Print;
end;

end.

