unit Dashboard_Team;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxContainer, cxLabel, Series, TeEngine, TeeProcs, Chart, DbChart,
  ExtCtrls, StdCtrls, cxDBLabel, OracleUniProvider, Uni, DBAccess, MemDS, DateUtils, dxBar,
  cxCurrencyEdit, cxGridDBTableView, cxPC, dxBarExtItems, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, Menus, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView,cxSchedulerUtils,
  cxSchedulerDateNavigator, cxSchedulerWeekView, cxSchedulerDBStorage,
  cxGroupBox, dxBarExtDBItems, cxCheckBox,
  cxLookAndFeels, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPSContainerLnk, cxPCdxBarPopupMenu,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxSchedulerLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, ppParameter,
  dxPSTextLnk, cxNavigator, cxGridChartView, cxGridDBChartView, ppDesignLayer,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  VclTee.TeeGDIPlus, dxDateRanges;

const
   pnlDebtorsCaption = 'Debtors';
   pnlUnbilledWIPCaption = 'Aged WIP';
   pnlWIPGeneratedCaption = 'Billable Time (12 Months)';
   pnlLockupCaption = 'Matter Author Lock Up';
   pnlFeesBilledCaption = 'Contributor Fees Billed';
   pnlFeesReceivedCaption = 'Contributor Fees Received';
   pnlMattersCaption = 'Matters Opened/Closed';


type
  TfrmDashboard_Team = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBtnexit: TdxBarButton;
    dxBDate: TdxBarStatic;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pagMain: TcxPageControl;
    tabWIP: TcxTabSheet;
    tabFees: TcxTabSheet;
    tabTopClient: TcxTabSheet;
    pnlTop: TPanel;
    qryDepts: TUniQuery;
    dsDepts: TUniDataSource;
    cmbteams: TdxBarLookupCombo;
    bbtnInd_Scorecard: TdxBarButton;
    bbtnRefresh: TdxBarButton;
    qryTmp: TUniQuery;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    cbThreeD: TcxCheckBox;
    btnPrint: TdxBarButton;
    ComponentPrinter: TdxComponentPrinter;
    ComponentPrinterLink4: TdxCustomContainerReportLink;
    ComponentPrinterLink5: TdxCustomContainerReportLink;
    ComponentPrinterLink9: TdxCustomContainerReportLink;
    pnlClients: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1DESCR: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Panel7: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grdClients: TcxGrid;
    tvClients: TcxGridDBTableView;
    tvClientsNAME: TcxGridDBColumn;
    tvClientsTOTAL: TcxGridDBColumn;
    grdClientsLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    grdReferrers: TcxGrid;
    tvReferrers: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel3: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    pnlMatters: TPanel;
    cxDBLabel22: TcxDBLabel;
    cxDBLabel23: TcxDBLabel;
    cxDBLabel24: TcxDBLabel;
    cxDBLabel25: TcxDBLabel;
    cxDBLabel26: TcxDBLabel;
    cxDBLabel27: TcxDBLabel;
    Panel4: TPanel;
    cxDBLabel28: TcxDBLabel;
    cxDBLabel30: TcxDBLabel;
    pnlFees: TPanel;
    pnlLockupMain: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    pnlLockup: TPanel;
    chartLockup: TDBChart;
    Series4: TBarSeries;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxLabel9: TcxLabel;
    teLockupTotal: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel1: TcxLabel;
    cxDBLabel43: TcxDBLabel;
    cxDBLabel44: TcxDBLabel;
    Panel11: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    pnlFeesReceived: TPanel;
    chartReceivedMonthly: TDBChart;
    Series7: TBarSeries;
    Series8: TBarSeries;
    cxDBLabel18: TcxDBLabel;
    cxDBLabel19: TcxDBLabel;
    cxDBLabel20: TcxDBLabel;
    cxDBLabel21: TcxDBLabel;
    Panel9: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    pnlFeesBilled: TPanel;
    chartBilledMonthly: TDBChart;
    Series6: TBarSeries;
    Series9: TBarSeries;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    cxDBLabel16: TcxDBLabel;
    cxDBLabel17: TcxDBLabel;
    pnlWIP: TPanel;
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    chartWIP: TDBChart;
    Series2: TBarSeries;
    pnlUnbilledWIP: TPanel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxLabel4: TcxLabel;
    lblWipTotal: TcxLabel;
    pnlWIPGeneratedMain: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    pnlWIPGenerated: TPanel;
    chrtWIPGenerated: TDBChart;
    Series3: TBarSeries;
    Series5: TBarSeries;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    chartDebtors: TDBChart;
    Series1: TBarSeries;
    pnlDebtors: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel31: TcxDBLabel;
    cxDBLabel32: TcxDBLabel;
    cxDBLabel33: TcxDBLabel;
    cxDBLabel34: TcxDBLabel;
    cxDBLabel35: TcxDBLabel;
    cxDBLabel36: TcxDBLabel;
    cxDBLabel37: TcxDBLabel;
    cxDBLabel38: TcxDBLabel;
    cxDBLabel39: TcxDBLabel;
    cxDBLabel40: TcxDBLabel;
    cxDBLabel41: TcxDBLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    Panel10: TPanel;
    cxLabel2: TcxLabel;
    Panel12: TPanel;
    cxLabel3: TcxLabel;
    procedure dxBtnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tabTopClientShow(Sender: TObject);
    procedure tabFeesShow(Sender: TObject);
    procedure tabWIPShow(Sender: TObject);
    procedure cmbteamsCloseUp(Sender: TObject);
    procedure bbtnInd_ScorecardClick(Sender: TObject);
    procedure bbtnRefreshClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chartDebtorsClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbThreeDClick(Sender: TObject);
    procedure chartWIPClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chrtWIPGeneratedClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartBilledMonthlyClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartReceivedMonthlyClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    UserDept: string;
    procedure SetHeadings;
    procedure DoNothing;
  public
    { Public declarations }
  end;

var
  frmDashboard_Team: TfrmDashboard_Team;

implementation

uses AxiomData, Desktop, MiscFunc, Dashboard_Ind, DashboardTeamDataModule,
      BreakDown_UnbilledWIP, Breakdown_WIP;

{$R *.dfm}

var
   LFinDateFirst, LDateLast, LMonthDateFirst, LEndOfMonth, ADate, LFinDateEnd: TDate;
   LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
   LDateLastYear, LDateLastMonth, LDateLastDay: Word;
   LFinDateLastYear, LFinDateLastMonth, LFinDateLastDay: Word;
   WipLockup, UnbillDisbLockup, DebtorLockup,CreditorLockup, SundryLockup: Currency;
   I: Integer;

procedure TfrmDashboard_Team.dxBtnexitClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmDashboard_Team.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dmDasboardTeam <> nil then
   begin
      dmDasboardTeam.qryAgedDebtors.Close;
      dmDasboardTeam.qryAgedDebtorsGraph.close;
      dmDasboardTeam.qryAgedDebtorsMatterCnt.close;
      dmDasboardTeam.qryWIPFigures.Close;
      dmDasboardTeam.qryWIPGraph.Close;
      dmDasboardTeam.qryWipGeneratedBudget.close;
      dmDasboardTeam.qryWIPGenerated.Close;
      dmDasboardTeam.qryWIPGeneratedGraph.Close;
      dmDasboardTeam.qryWIPGeneratedBudgetGraph.Close;
      dmDasboardTeam.qryFeesBilledYTD.Close;
      dmDasboardTeam.qryFeesBilledMonth.Close;
      dmDasboardTeam.qryWIPLockup.Close;
      dmDasboardTeam.qryUnbilledDisbs.Close;
      dmDasboardTeam.qryDebtorLockup.Close;
      dmDasboardTeam.qryLockupGraph.Close;
      dmDasboardTeam.qryFeeReceivedMonth.Close;
      dmDasboardTeam.qryFeesReceivedBudget.Close;
      dmDasboardTeam.qryFeeReceivedYear.close;
      dmDasboardTeam.qryFeesBilledGraph.close;
      dmDasboardTeam.qryFeesBilledBudgetGraph.Close;
      dmDasboardTeam.qryFeesReceivedBudgetGraph.Close;
      dmDasboardTeam.qryFeesReceivedGraph.Close;
      dmDasboardTeam.qryBilledFeesBudget.Close;
      dmDasboardTeam.qryClientMilestones.Close;
      dmDasboardTeam.qryClientCountMTD.Close;
      dmDasboardTeam.qryClientCountYTD.Close;
      dmDasboardTeam.qryTotalMatters.Close;
      dmDasboardTeam.qryTotalClients.Close;
      dmDasboardTeam.qryTopClients.Close;
      dmDasboardTeam.qryMattersOpened.Close;
      dmDasboardTeam.qryMattersClosed.Close;
      dmDasboardTeam.qryMatterProfitability.close;
   end;

   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Action := caFree
   else
      RemoveFromDesktop(Self);
end;

procedure TfrmDashboard_Team.FormCreate(Sender: TObject);
begin
   tabWIP.OnShow := nil;
end;

procedure TfrmDashboard_Team.SetHeadings;
begin
   pnlDebtors.Caption := '('+UserDept +') '+ pnlDebtorsCaption;
   pnlUnbilledWIP.Caption := '('+UserDept +') '+ pnlUnbilledWIPCaption;
   pnlWIPGenerated.Caption := '('+UserDept +') '+ pnlWIPGeneratedCaption;
   pnlLockup.Caption := '('+UserDept +') '+ pnlLockupCaption;
   pnlFeesBilled.Caption := '('+UserDept +') '+ pnlFeesBilledCaption;
   pnlFeesReceived.Caption := '('+UserDept +') '+ pnlFeesReceivedCaption;
   pnlMatters.Caption := '('+UserDept +') '+ pnlMattersCaption;
   pnltop.Caption :=  SystemString('Company') + ' - ( '+ UserDept + ' ) BALANCED SCORECARD';
end;

procedure TfrmDashboard_Team.DoNothing;
begin
//
end;

procedure TfrmDashboard_Team.tabTopClientShow(Sender: TObject);
begin
   with dmDasboardTeam.qryClientMilestones do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID; // UserDept;
      ParamByName('dept').AsString := UserDept;
      Open;
   end;
   with dmDasboardTeam.qryClientCountMTD do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;
   with dmDasboardTeam.qryClientCountYTD do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;
      with dmDasboardTeam.qryTotalMatters do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      Open();
   end;
   with dmDasboardTeam.qryTotalClients do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      Open();
   end;
   with dmDasboardTeam.qryTopClients do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      open();
   end;
   with dmDasboardTeam.qryTopReferrers do
      begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      open();
   end;
   with dmDasboardTeam.qryMattersOpened do
   begin
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('firstdate').AsDateTime := LMonthDateFirst;
      ParamByName('lastdate').AsDateTime := Now();
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open();
   end;

   with dmDasboardTeam.qryMattersClosed do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('firstdate').AsDateTime := LMonthDateFirst;
      ParamByName('lastdate').AsDateTime := Now();
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open();
   end;
   with dmDasboardTeam.qryMatterProfitability do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      Open();
   end;
end;

procedure TfrmDashboard_Team.tabFeesShow(Sender: TObject);
var
   sINClause: string;
begin
   with dmDasboardTeam.qryFeesBilledYTD do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;
   with dmDasboardTeam.qryFeesBilledMonth do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;
    with dmDasboardTeam.qryWIPLockup do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
//      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
//      ParamByName('year_end_date').AsDateTime := Now();
      open;
      WipLockup := FieldByName('Month_Total'). AsCurrency;
   end;
   with dmDasboardTeam.qryUnbilledDisbs do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
//      ParamByName('start_date').AsDateTime := LFinDateFirst;
//      ParamByName('end_date').AsDateTime := Now();
      open;
      UnbillDisbLockup := FieldByName('unbill_disb'). AsCurrency;
   end;
   with dmDasboardTeam.qryDebtorLockup do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
//      ParamByName('start_date').AsDateTime := LFinDateFirst;
//      ParamByName('end_date').AsDateTime := Now();
      open;
      DebtorLockup := FieldByName('debtor_amount'). AsCurrency;
   end;

   with dmDasboardTeam.qryCreditorsLockup do
   begin
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      Open;
      CreditorLockup := FieldByName('CRED_MONTH_TOTAL'). AsCurrency;
   end;
   with dmDasboardTeam.qrySundryLockup do
   begin
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      Open;
      SundryLockup := FieldByName('SUND_MONTH_TOTAL'). AsCurrency;
   end;
   teLockupTotal.Caption :=  CurrToStrF(DebtorLockup + UnbillDisbLockup + WipLockup + CreditorLockup + SundryLockup, ffCurrency, 2);

   with dmDasboardTeam.qryLockupGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
//      ParamByName('start_date').AsDateTime := LFinDateFirst;
//      ParamByName('end_date').AsDateTime := Now();
      Open();
   end;

   with dmDasboardTeam.qryFeeReceivedMonth do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;
   with dmDasboardTeam.qryFeesReceivedBudget do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open();
   end;

   with dmDasboardTeam.qryFeeReceivedYear do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;
   with dmDasboardTeam.qryFeesBilledGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open;
   end;
   with dmDasboardTeam.qryFeesBilledBudgetGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open;
   end;

   with dmDasboardTeam.qryFeesReceivedBudgetGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open;
   end;
   with dmDasboardTeam.qryFeesReceivedGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open;
   end;
   with dmDasboardTeam.qryBilledFeesBudget do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open();
   end;
end;

procedure TfrmDashboard_Team.tabWIPShow(Sender: TObject);
var
   sINClause: string;
   sSQL: string;
begin
   with dmDasboardTeam.qryAgedDebtors do
   begin
//      close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;

   with dmDasboardTeam.qryAgedDebtorsGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;

   with dmDasboardTeam.qryAgedDebtorsMatterCnt do
   begin
//      Close;
{      qryTmp.ParamByName('code').AsString := UserDept;
      qryTmp.Open;
      sINClause := qryTmp.FieldByName('inlist').AsString;
      qryTmp.Close;
      sSQL := 'SELECT '+
              '   a.apaid0 + b.apaid1 + c.apaid2 + d.apaid3 + e.apaid10 AS TotalMatters, '+
              '   a.apaid0 AS adj0, '+
              '   b.apaid1 AS adj1, '+
              '   c.apaid2 AS adj2, '+
              '   d.apaid3 AS adj3, '+
              '   e.apaid10 AS adj10 '+
              'from (  '+
              'select  '+
              '  count( n.nmatter) AS apaid0 '+
              'FROM nmemo n '+
              'WHERE n.author IN '+ sINClause +
              'AND dispatched IS NOT NULL  '+
              'AND n.refno <> ''DRAFT''  '+
              'AND n.rv_type <> ''D''  '+
              'and owing <> 0  '+
              'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p1, TRUNC(SYSDATE), n.nmatter) <> 0 ) a,  '+
              '(select  '+
              '   count(n.nmatter) as apaid1   '+
              'FROM nmemo n  '+
              'WHERE n.author in '+ sINClause +
              'AND dispatched IS NOT NULL  '+
              'AND n.refno <> ''DRAFT''  '+
              'AND n.rv_type <> ''D'' '+
              'and owing <> 0  '+
              'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p2, TRUNC(SYSDATE) - (:p1 + 1), n.nmatter) <> 0 ) b, '+
              '(select  '+
              '  count(n.nmatter) AS apaid2  '+
              'FROM nmemo n  '+
              'WHERE n.author in  '+ sINClause +
              'AND dispatched IS NOT NULL  '+
              'AND n.refno <> ''DRAFT''  '+
              'AND n.rv_type <> ''D'' '+
              'and owing <> 0  '+
              'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p3, TRUNC(SYSDATE) - (:p2 + 1), n.nmatter) <> 0) c, '+
              '(select  '+
              '  count(n.nmatter) AS apaid3 '+
              'FROM nmemo n  '+
              'WHERE n.author in '+ sINClause +
              'AND dispatched IS NOT NULL '+
              'AND n.refno <> ''DRAFT'' '+
              'AND n.rv_type <> ''D''  '+
              'and owing <> 0 '+
              'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(SYSDATE) - :p4, TRUNC(SYSDATE) - (:p3 + 1), n.nmatter) <> 0) d, '+
              '(select '+
              '  count(n.nmatter) AS apaid10  '+
              'FROM nmemo n  '+
              'WHERE n.author in '+ sINClause +
              'AND dispatched IS NOT NULL '+
              'AND n.refno <> ''DRAFT'' '+
              'AND n.rv_type <> ''D'' '+
              'and owing <> 0  '+
              'and DATE_BETWEEN(TRUNC(n.dispatched), TRUNC(TO_DATE(''01/01/1900'',''dd/mm/yyyy'')),TRUNC(SYSDATE) - (:p4 + 1),   n.nmatter) <> 0) e ';
      SQL.Clear;
      SQL.Text := sSQL;     }
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;

   with dmDasboardTeam.qryWIPFigures do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
      lblWipTotal.Caption := CurrToStrF(Fields.Fields[0].AsCurrency +
            Fields.Fields[1].AsCurrency +
            Fields.Fields[2].AsCurrency +
            Fields.Fields[3].AsCurrency +
            Fields.Fields[4].AsCurrency, ffCurrency, 2);
   end;

   with dmDasboardTeam.qryWIPGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;

   with dmDasboardTeam.qryWipGeneratedBudget do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      open;
   end;


   with dmDasboardTeam.qryWIPGenerated do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;

   with dmDasboardTeam.qryWIPGeneratedGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('firstdate').AsDateTime := LFinDateFirst; // IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
      ParamByName('lastdate').AsDateTime := LFinDateEnd;  // IntToStr(LFinDateLastMonth) + '-' + IntToStr(LFinDateLastYear);
      Open();
   end;

   with dmDasboardTeam.qryWIPGeneratedBudgetGraph do
   begin
//      Close;
      ParamByName('code').AsString := dmAxiom.UserID;
      ParamByName('dept').AsString := UserDept;
      ParamByName('firstdate').AsDateTime := LFinDateFirst; //  IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
      ParamByName('lastdate').AsDateTime :=  LFinDateEnd; //IntToStr(LFinDateLastMonth) + '-' + IntToStr(LFinDateLastYear);
      Open();
   end;
end;

procedure TfrmDashboard_Team.cmbteamsCloseUp(Sender: TObject);
begin
   bbtnRefresh.Click;
{   if cmbTeams.Text <> '' then
   begin
      UserDept := cmbTeams.KeyValue;
      SetHeadings;
      case pagMain.ActivePageIndex of
         0: tabWIP.OnShow(Sender);
         1: tabFees.OnShow(Sender);
         2: tabTopClient.OnShow(Sender);
      end;
   end;  }
end;

procedure TfrmDashboard_Team.bbtnInd_ScorecardClick(Sender: TObject);
begin
   FindorCreate(TfrmDashboard_Ind,IDXDASHBOARD_IND).show;
end;

procedure TfrmDashboard_Team.bbtnRefreshClick(Sender: TObject);
begin
   if cmbTeams.Text <> '' then
   begin
      UserDept := cmbTeams.KeyValue;
      SetHeadings;
      case pagMain.ActivePageIndex of
         0: begin
               dmDasboardTeam.qryAgedDebtors.Close;
               dmDasboardTeam.qryAgedDebtorsGraph.close;
               dmDasboardTeam.qryAgedDebtorsMatterCnt.close;
               dmDasboardTeam.qryWIPFigures.Close;
               dmDasboardTeam.qryWIPGraph.Close;
               dmDasboardTeam.qryWipGeneratedBudget.close;
               dmDasboardTeam.qryWIPGenerated.Close;
               dmDasboardTeam.qryWIPGeneratedGraph.Close;
               dmDasboardTeam.qryWIPGeneratedBudgetGraph.Close;
               tabWIP.OnShow(Sender);
            end;
         1: begin
               with dmDasboardTeam do
               begin
//               dmDasboardTeam.qryFeesBilledYTD.Close;
//               dmDasboardTeam.qryFeesBilledMonth.Close;
                  qryWIPLockup.Close;
                  qryUnbilledDisbs.Close;
                  qryDebtorLockup.Close;
                  qryLockupGraph.Close;
                  qryFeeReceivedMonth.Close;
                  qryFeesReceivedBudget.Close;
                  qryFeeReceivedYear.close;
                  qryFeesBilledGraph.close;
                  qryFeesBilledBudgetGraph.Close;
                  qryFeesReceivedBudgetGraph.Close;
                  qryFeesReceivedGraph.Close;
                  qryBilledFeesBudget.Close;
                  qryFeesBilledYTD.Close;
                  qryFeesBilledMonth.Close;
                  qryCreditorsLockup.Close;
                  qrySundryLockup.Close;
                  qryBilledFeesBudget.Close;
               end;
               tabFees.OnShow(Sender);
            end;
         2: begin
               dmDasboardTeam.qryClientMilestones.Close;
               dmDasboardTeam.qryClientCountMTD.Close;
               dmDasboardTeam.qryClientCountYTD.Close;
               dmDasboardTeam.qryTotalMatters.Close;
               dmDasboardTeam.qryTotalClients.Close;
               dmDasboardTeam.qryTopClients.Close;
               dmDasboardTeam.qryMattersOpened.Close;
               dmDasboardTeam.qryMattersClosed.Close;
               dmDasboardTeam.qryMatterProfitability.close;
               tabTopClient.OnShow(Sender);
            end;
      end;
      dxBDate.Caption := FormatDateTime('dddd, mmmm d, yyyy, hh:mm AM/PM', Now);
   end;
end;

procedure TfrmDashboard_Team.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = VK_F5) then
      bbtnRefresh.Click;
end;

procedure TfrmDashboard_Team.FormShow(Sender: TObject);
begin

   if TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'nfee_authority') <> '' then
   begin
      qryDepts.Close;
      qryDepts.ParamByName('CODE').AsString := dmAxiom.UserID;
      try
         qryDepts.Open;
      except
         try
            MessageDlg('Teams have not been set up or were incorrectly set up.',mtInformation,[mbOk],0);
         finally
            Self.Close;
         end;
      end;

      cmbTeams.KeyValue := qryDepts.FieldByName('CODE').AsString;
      UserDept := qryDepts.FieldByName('CODE').AsString;
//      UserDept := dmAxiom.UserDept;
      SetHeadings;

      if not Assigned(dmDasboardTeam) then
         dmDasboardTeam := TdmDasboardTeam.Create(application);

      dxBDate.Caption := FormatDateTime('dddd, mmmm d, yyyy, hh:mm AM/PM', Now);

      if (MonthOfTheYear(Date()) > 6) and (MonthOfTheYear(Date()) <= 12) then
      begin
         LFinDateFirst := EncodeDate(YearOf(Date()),7,1);
         LFinDateEnd := EncodeDate(YearOf(IncYear(Date(),+1)),6,30);
      end
      else
      begin
         LFinDateFirst := EncodeDate(YearOf(IncYear(Date(),-1)),7,1);
         LFinDateEnd := EncodeDate(YearOf(Date()),6,30);
      end;

      LMonthDateFirst := EncodeDate(YearOf(Date()),MonthOf(Date()),1);

      LDateLast  := DateOf(Date);
      LEndOfMonth := EndOfTheMonth(Date);

      DecodeDate(LFinDateFirst, LDateFirstYear, LDateFirstMonth, LDateFirstDay);
      DecodeDate(LDateLast, LDateLastYear, LDateLastMonth, LDateLastDay);
      DecodeDate(LFinDateEnd, LFinDateLastYear, LFinDateLastMonth, LFinDateLastDay);

      tabWip.OnShow := tabWIPShow;
   end
   else
   begin
      try
         MessageDlg('Teams have not been set up or were incorrectly set up.',mtInformation,[mbOk],0);
      finally
         Self.Close;
      end;
   end;
end;

procedure TfrmDashboard_Team.chartDebtorsClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   frmUnbilledWIP: TfrmUnbilledWIP;
   LSql: string;
begin
   LSql := '';
   frmUnbilledWIP := TfrmUnbilledWIP.Create(Self);
   frmUnbilledWIP.Caption := 'Debtors';
   frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[1];
   frmUnbilledWIP.P30Days := 0;
   frmUnbilledWIP.P60Days := 0;
   frmUnbilledWIP.P90Days := 0;
   frmUnbilledWIP.P120Days := 0;
   frmUnbilledWIP.Author := dmAxiom.UserID;
   frmUnbilledWIP.Dept := cmbteams.KeyValue;
   LSql := 'SELECT '+
           'n.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, FEES, '+
           'DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, '+
           'ANTD_PAID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE ,'+
           '(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(TAX,0) + nvl(UPCRED,0)) AS TOTAL ,'+
           '((nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(TAX,0) + nvl(UPCRED,0)) - '+
	        'NVL(FEES_PAID,0) +  nvl(DISB_PAID,0) + nvl(ANTD_PAID,0) + nvl(SUND_PAID,0) + nvl(TAX_PAID,0) + '+
           'NVL(FEES_WOFF,0) + nvl(DISB_WOFF,0) + nvl(ANTD_WOFF,0) + nvl(SUND_WOFF,0) + nvl(TAX_WOFF,0) + '+
           'nvl(UPCRED_PAID, 0) + nvl(UPCRED_WOFF,0)) AS OWING, UPCRED, UPCRED_PAID,SPLIT_BILL, '+
           'EXPPAYMENT, INV_NOTE '+
           'FROM  matter m, nmemo n '+
           'WHERE m.author in ( SELECT distinct e.CODE '+
           ' FROM  employee e '+
           ' where '+
           ' e.NFEE_AUTHORITY in '+
           ' (select distinct nfee_authority from fee_authority_relation '+
           '  start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authority from employee where code = :author) '+
           ' connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO '+
           ' and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'+
           'and dept = :dept ) '+
           'AND n.fileid = m.fileid '+
           'AND n.IS_DRAFT => ''N'' '+
           'AND n.rv_type <> ''D'' '+
           'AND n.owing <> 0 '+
	        'AND dispatched IS NOT NULL ';
   case ValueIndex of
      0: begin
            frmUnbilledWIP.Caption := '('+cmbteams. Text +') Aged Debtors - Current';
            frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p1) AND TRUNC(n.dispatched) <= TRUNC(SYSDATE) ';
            frmUnbilledWIP.P30Days := 29;
         end;
      1: begin
            frmUnbilledWIP.Caption := '('+cmbteams. Text +') Aged Debtors - 30 Days';
	         frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p2) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p1+1)) ';
            frmUnbilledWIP.P30Days := 29;
            frmUnbilledWIP.P60Days := 59;
         end;
      2: begin
            frmUnbilledWIP.Caption := '('+cmbteams. Text +') Aged Debtors - 60 Days';
	         frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p3) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p2+1)) ';
            frmUnbilledWIP.P90Days := 89;
            frmUnbilledWIP.P60Days := 59;
         end;
      3: begin
            frmUnbilledWIP.Caption := '('+cmbteams. Text +') Aged Debtors - 90 Days';
	         frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p4) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p3+1)) ';
            frmUnbilledWIP.P90Days := 89;
            frmUnbilledWIP.P120Days := 119;
         end;
      4: begin
            frmUnbilledWIP.Caption := '('+cmbteams. Text +') Aged Debtors - 120+ Days';
	         frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= TRUNC(TO_DATE(''01/01/1900'',''dd/mm/yyyy'')) AND TRUNC(n.dispatched) < (TRUNC(SYSDATE) - (:p4+1)) ';
            frmUnbilledWIP.P120Days := 119;
         end;
   end;
   try
      frmUnbilledWIP.ShowModal;
   finally
      frmUnbilledWIP.Free;
   end;
end;

procedure TfrmDashboard_Team.cbThreeDClick(Sender: TObject);
var
   bChecked: boolean;
begin
   bChecked := cbThreeD.Checked;

   chartDebtors.View3D           := bChecked;
   chartWIP.View3D               := bChecked;
   chrtWIPGenerated.View3D       := bChecked;
   chartBilledMonthly.View3D     := bChecked;
   chartReceivedMonthly.View3D   := bChecked;
   chartLockup.View3D            := bChecked;
//   chartMatterProfit.View3D      := bChecked;
end;

procedure TfrmDashboard_Team.chartWIPClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   frmUnbilledWIP: TfrmUnbilledWIP;
   LSql: string;
begin
   LSql := '';
   frmUnbilledWIP := TfrmUnbilledWIP.Create(Self);
   frmUnbilledWIP.Caption := 'Unbilled WIP';
   frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[0];
   frmUnbilledWIP.P30Days := 0;
   frmUnbilledWIP.P60Days := 0;
   frmUnbilledWIP.P90Days := 0;
   frmUnbilledWIP.P120Days := 0;
   frmUnbilledWIP.Author := dmAxiom.UserID;
   LSql := 'SELECT FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE.AUTHOR, FEE.FILEID, FEE.NMATTER '+
           ', FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS '+
           ', FEE.RATE,FEE.TYPE, FEE.TASK '+
           ', FEE.TASK_AMOUNT, PHONEBOOK.SEARCH AS TITLE '+
           ', MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR AS FEETYPE,PART.NAME AS PARTNERNAME, AUTH.NAME AS AUTHORNAME '+
           ', DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, TIME_TYPE '+
           'FROM MATTER, PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPLOYEE AUTH, BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT, FEE '+
           'WHERE FEE.AUTHOR = :AUTHOR '+
           'AND FEE.NMATTER = MATTER.NMATTER '+
           'AND FEE.TYPE = FEETYPE.CODE(+) AND FEE.PARTNER = PART.CODE(+) '+
           'AND FEE.AUTHOR = AUTH.CODE '+
           'AND MATTER.BRANCH = BR.CODE(+) '+
           'AND FEE.DEPT = DPT.CODE(+) ' +
           'AND PART.DEPT = PARTDPT.CODE(+) ' +
           'AND MATTER.NCLIENT = PHONEBOOK.NCLIENT(+) '+
           'AND NVL(FEE.BILLTYPE,''Billable'') = ''Billable'' '+
           'AND NVL(FEE.BILLED,''N'') = ''N'' '+
           'AND FEE.TYPE NOT IN (''ia'',''wo'') ' ;
   case ValueIndex of
      0: begin
            frmUnbilledWIP.Caption := '('+cmbteams. Text +') Unbilled WIP - Current';
            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - :p1 AND  TRUNC(SYSDATE) ';
//            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - :p1 AND TRUNC(FEE.CREATED) <= TRUNC(SYSDATE) ';
            frmUnbilledWIP.P30Days := 29;
         end;
      1: begin
            frmUnbilledWIP.Caption := '('+cmbteams.Text +') Unbilled WIP - 30 Days';
            frmUnbilledWIP.SQL := LSql +  'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p2) AND TRUNC(SYSDATE) - (:p1+1) ';
//            frmUnbilledWIP.SQL := LSql +  'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p2) AND TRUNC(FEE.CREATED) <= TRUNC(SYSDATE) - (:p1+1) ';
            frmUnbilledWIP.P30Days := 29;
            frmUnbilledWIP.P60Days := 59;
         end;
      2: begin
            frmUnbilledWIP.Caption := '('+cmbteams.Text +') Unbilled WIP - 60 Days';
            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p3) AND TRUNC(SYSDATE) - (:p2+1) ';
//            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p3) AND TRUNC(FEE.CREATED) <= TRUNC(SYSDATE) - (:p2+1) ';
            frmUnbilledWIP.P60Days := 59;
            frmUnbilledWIP.P90Days := 89;
         end;
      3: begin
            frmUnbilledWIP.Caption := '('+cmbteams.Text +') Unbilled WIP - 90 Days';
            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p4) AND TRUNC(SYSDATE) - (:p3+1) ';
//            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p4) AND TRUNC(FEE.CREATED) <= TRUNC(SYSDATE) - (:p3+1) ';
            frmUnbilledWIP.P90Days := 89;
            frmUnbilledWIP.P120Days := 119;
         end;
      4: begin
            frmUnbilledWIP.Caption := '('+cmbteams.Text +') Unbilled WIP - 120 + Days';
            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) < TRUNC(SYSDATE) - (:p4) ';
            frmUnbilledWIP.P120Days := 119;
         end;
   end;
   try
      frmUnbilledWIP.ShowModal;
   finally
      frmUnbilledWIP.Free;
   end;
end;

procedure TfrmDashboard_Team.chrtWIPGeneratedClickSeries(
  Sender: TCustomChart; Series: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   frmWIPBreakdown: TfrmWIPBreakdown;
   LYear: word;
   LMonthDateFirst,LMonthDateEnd: TDateTime;
   FYear: string;
begin
   if Series.Title = 'Actual Data' then
   begin
      frmWIPBreakdown := TfrmWIPBreakdown.Create(Self);
      
//      LYear := CalcYear(series.ValueMarkText[ValueIndex],ValueIndex);

      FYear := Copy(series.ValueMarkText[ValueIndex],Pos('-',series.ValueMarkText[ValueIndex])+1, 2);
      LYear := StrToInt('20'+ FYear);

      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmWIPBreakdown do
      begin
         try
            FormTitle := '('+cmbteams.Text +') Billable Time for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            Author   := dmAxiom.UserID;
            Team     := cmbTeams.KeyValue;
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;
end;


procedure TfrmDashboard_Team.chartBilledMonthlyClickSeries(
  Sender: TCustomChart; Series: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   frmUnbilledWIP: TfrmUnbilledWIP;
   LYear: word;
   LMonthDateFirst,LMonthDateEnd: TDateTime;
   FYear: string;
begin
   if Series.Title = 'Actual Data' then
   begin
      frmUnbilledWIP := TfrmUnbilledWIP.Create(Self);
      frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[2];

//      LYear := CalcYear(series.ValueMarkText[ValueIndex],ValueIndex);

      FYear := Copy(series.ValueMarkText[ValueIndex],Pos('-',series.ValueMarkText[ValueIndex])+1, 2);
      LYear := StrToInt('20'+ FYear);

{      if (ValueIndex > 5) and (ValueIndex < 12) then
         LYear := YearOf(Date)
      else
         LYear := YearOf(IncYear(Date(),-1)); }

      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmUnbilledWIP do
      begin
         try
            FormTitle := '('+cmbteams.Text +') ' + pnlFeesBilledCaption + ' for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            Author   := dmAxiom.UserID;
            Dept     := cmbTeams.KeyValue;
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;
end;

procedure TfrmDashboard_Team.chartReceivedMonthlyClickSeries(
  Sender: TCustomChart; Series: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   frmUnbilledWIP: TfrmUnbilledWIP;
   LYear: word;
   LMonthDateFirst,LMonthDateEnd: TDateTime;
   s: string;
   FYear: string;
begin
   if Series.Title = 'Actual Data' then
   begin
      frmUnbilledWIP := TfrmUnbilledWIP.Create(Self);
      frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[3];

//      LYear := CalcYear(series.ValueMarkText[ValueIndex],ValueIndex);

      FYear := Copy(series.ValueMarkText[ValueIndex],Pos('-',series.ValueMarkText[ValueIndex])+1, 2);
      LYear := StrToInt('20'+ FYear);

      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmUnbilledWIP do
      begin
         try
            FormTitle := '('+cmbteams.Text +') ' + pnlFeesReceivedCaption + ' for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            Author   := dmAxiom.UserID;
            Dept     := cmbTeams.KeyValue;
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;
end;


procedure TfrmDashboard_Team.btnPrintClick(Sender: TObject);
begin
   case pagMain.ActivePageIndex of
      0: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink4);
         end;
      1: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink5);
         end;
      2: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink9);
         end;
   end;
end;

end.
