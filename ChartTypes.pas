unit ChartTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBarDBNav, dxBar, DB, OracleUniProvider, Uni, DBAccess, MemDS, ImgList,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls,
  ComCtrls, cxLookAndFeels, cxLookAndFeelPainters,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPSDBTCLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore,
  dxPScxCommon, cxNavigator, dxPScxSchedulerLnk;

type
  TfrmChartTypes = class(TForm)
    ilstToolbar: TImageList;
    qrySource: TUniQuery;
    dsSource: TUniDataSource;
    dxBarDBNavigator1: TdxBarDBNavigator;
    bmMain: TdxBarManager;
    mnuFile: TdxBarSubItem;
    mnuFileDelete: TdxBarButton;
    mnuFilePrint: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuSearch: TdxBarSubItem;
    mnuSearchFirst: TdxBarButton;
    mnuSearchPrior: TdxBarButton;
    mnuSearchNext: TdxBarButton;
    mnuSearchLast: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    cxGrid1: TcxGrid;
    tvCharttype: TcxGridDBTableView;
    tvCharttypeCODE: TcxGridDBColumn;
    tvCharttypeDESCR: TcxGridDBColumn;
    tvCharttypeREPORTTYPE: TcxGridDBColumn;
    tvCharttypeREPORTSEQ: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    tvCharttypeCHART_CATEGORY: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuFileExitClick(Sender: TObject);
    procedure mnuFilePrintClick(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChartTypes: TfrmChartTypes;

implementation

uses
  AxiomData, MiscFunc;

{$R *.dfm}

procedure TfrmChartTypes.FormShow(Sender: TObject);
begin
   qrySource.Open;
end;

procedure TfrmChartTypes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmChartTypes.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmChartTypes.mnuFilePrintClick(Sender: TObject);
var
  ReportBookmark: TBookmark;
begin
{  ReportBookmark := qrySource.GetBookmark;
  qrMaintReport.PreviewModal;
  qrySource.GotoBookmark(ReportBookmark);
  qrySource.FreeBookmark(ReportBookmark);  }
   dxComponentPrinter1.Preview();
end;


procedure TfrmChartTypes.qrySourceAfterInsert(DataSet: TDataSet);
begin
   qrySource.FieldByName('REPORTTYPE').AsString := 'P';
end;

end.
