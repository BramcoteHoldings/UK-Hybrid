unit AxiomRptBuilder;

interface

{ By removing the 'x' which begins each of these compiler directives,
  you can enable different functionality within the end-user reporting
  solution.

  DADE - the data tab where queries can be created by the end-user

  BDE  - BDE support for the Query Tools

  ADO  - ADO support for the Query Tools

  IBExpress - Interbase Express support for the Query Tools


  RAP -  the calc tab, where calculations can be coded at run-time
         (You must download and install a copy of the RAP beta in order
         to enable this feature)

  CrossTab - adds the CrossTab component to the component palette in the
             report designer.

  CheckBox - adds a checkbox component to the component palette in the
         report designer.

  TeeChart - adds a teechart component to the report designer component
         palette. This component works with the TeeChart delivered
         with Delphi 3 and 4.  It does NOT work with TeeChart 4.01,
         which must be purchased from TeeMach.

  TeeChart401 - adds a teechart component for use with TeeChart 4.01 from
         TeeMach.

  UseDesignPath - determines whether the path used by the Database
         object on this form is replaced in the OnCreate event handler of
         this form with the current path.}

{$DEFINE DADE}            {remove the 'x' to enable DADE}
{x$DEFINE BDE}            {remove the 'x' to enable Borland Database Engine (BDE) }
{x$DEFINE ADO}            {remove the 'x' to enable ADO}
{x$DEFINE IBExpress}      {remove the 'x' to enable Interbase Express}
{$DEFINE ODAC}            {remove the 'x' to enable Oracle Data Access Components}
{$DEFINE CrossTab}        {remove the 'x' to enable CrossTab}
{x$DEFINE RAP}            {remove the 'x' to enable RAP}
{x$DEFINE CheckBox}       {remove the 'x' to enable CheckBox}
{x$DEFINE TeeChart}       {remove the 'x' to enable standard TeeChart}
{x$DEFINE TeeChart401}    {remove the 'x' to enable TeeChart 4.01}
{x$DEFINE UseDesignPath}  {remove the 'x' to use the design-time settings of Database object on this form}

uses

{$IFDEF DADE}
  daDatMan,
{$ENDIF}

{$IFDEF BDE}
  daDBBDE,
{$ENDIF}

{$IFDEF ADO}
  daADO,
{$ENDIF}

{$IFDEF IBExpress}
  daIBExpress,
{$ENDIF}

{$IFDEF ODAC}
  daODAC,
{$ENDIF}

{$IFDEF CrossTab}
  ppCTDsgn,
{$ENDIF}

{$IFDEF RAP}
  raIDE,
{$ENDIF}

{$IFDEF CheckBox}
  myChkBox,
{$ENDIF}

{$IFDEF TeeChart}
  ppChrt, ppChrtDB,
{$ENDIF}

{$IFDEF TeeChart401}
  ppChrt, ppChrtDP,
{$ENDIF}

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, DBAccess, OraSmart, cxLookAndFeelPainters,
  cxGraphics, cxControls, dxStatusBar, StdCtrls, cxButtons, ppRptExp,
  ppProd, ppClass, ppReport, ppEndUsr, ppDB, ppDsgnDB, ppComm, ppRelatv,
  ppDBPipe, ppViewr, ppPrnabl, ppCtrls, daDataView, daQueryDataView,
  ppModule, daDataModule, ppBands, ppCache;

type
  TfrmAxiomRptCreation = class(TForm)
    tbTable: TUniTable;
    dsTable: TUniDataSource;
    tbFields: TUniTable;
    dsFields: TUniDataSource;
    tbJoins: TUniTable;
    dsJoins: TUniDataSource;
    tbFolder: TUniTable;
    tbItem: TUniTable;
    dsFolder: TUniDataSource;
    dsItem: TUniDataSource;
    plTables: TppDBPipeline;
    plFields: TppDBPipeline;
    plJoins: TppDBPipeline;
    AxiomDictionary: TppDataDictionary;
    ppDesigner: TppDesigner;
    ppReport: TppReport;
    ppReportExplorer: TppReportExplorer;
    plFolder: TppDBPipeline;
    plItem: TppDBPipeline;
    Reports: TcxButton;
    pnlStatusBar: TdxStatusBar;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    daDataModule1: TdaDataModule;
    daODACQueryDataView1: TdaODACQueryDataView;
    ppDBText1: TppDBText;
    cxButton1: TcxButton;
    procedure ReportsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadEndEvent(Sender: TObject);
    procedure PreviewFormCreateEvent(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmAxiomRptCreation: TfrmAxiomRptCreation;

implementation

{$R *.dfm}

uses
   AxiomData;

procedure TfrmAxiomRptCreation.ReportsClick(Sender: TObject);
begin
   if not (ppReportExplorer.Execute) then
      MessageBeep(0)
  else
     pnlStatusBar.Panels[0].Text := 'Explorer Launch Successful.'
end;

procedure TfrmAxiomRptCreation.FormCreate(Sender: TObject);
begin
    ppReport.Template.OnLoadEnd := LoadEndEvent;
end;

procedure TfrmAxiomRptCreation.LoadEndEvent(Sender: TObject);
begin
   ppReport.OnPreviewFormCreate := PreviewFormCreateEvent;
end;

procedure TfrmAxiomRptCreation.PreviewFormCreateEvent(Sender: TObject);
begin
  ppReport.PreviewForm.WindowState := wsMaximized;

  TppViewer(ppReport.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TfrmAxiomRptCreation.cxButton1Click(Sender: TObject);
begin
   Self.Close;
end;

end.
