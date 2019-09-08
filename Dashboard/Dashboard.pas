unit Dashboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxContainer, cxLabel, Series, TeEngine, TeeProcs, Chart, DbChart,
  ExtCtrls, StdCtrls, cxDBLabel, OracleUniProvider, Uni, DBAccess, MemDS,
  DateUtils, dxBar,
  cxCurrencyEdit, cxGridDBTableView, cxPC, dxBarExtItems, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, Menus, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView,cxSchedulerUtils,
  cxSchedulerDateNavigator, cxSchedulerWeekView, cxSchedulerDBStorage,
  cxGroupBox, dxBarExtDBItems, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSGraphicLnk, dxPSTCLnk, dxPSDBTCLnk, dxPSCore,
  dxPSContainerLnk, dxPScxCommon, dxPScxGridLnk, cxGridChartView,
  cxGridDBChartView, cxCheckBox, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPScxSchedulerLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, ppParameter,
  ppDesignLayer, dxPSTextLnk, cxNavigator, cxBarEditItem, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, VclTee.TeeGDIPlus,
  dxDateRanges;

const
   pnlDebtorsCaption = 'Debtors (Firm)';
   pnlUnbilledWIPCaption = 'Unbilled WIP (Firm)';
   pnlWIPGeneratedCaption = 'Billable Time (12 Months) (Firm)';
   pnlLockupCaption = 'Lock Up (WIP, Debtors, Disbursements)'; // 'Matter Author Lock Up';
   pnlFeesBilledCaption = 'Contributor Fees Billed';
   pnlFeesReceivedCaption = 'Contributor Fees Received';
//   pnlMattersCaption = 'Matters Opened/Closed';

type
  TfrmDashboard = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBtnexit: TdxBarButton;
    dxBDate: TdxBarStatic;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pagMain: TcxPageControl;
    tsWIP: TcxTabSheet;
    tsFees: TcxTabSheet;
    tabTopClient: TcxTabSheet;
    Panel3: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    pnlMatters: TPanel;
    cxDBLabel22: TcxDBLabel;
    cxDBLabel23: TcxDBLabel;
    cxDBLabel25: TcxDBLabel;
    cxDBLabel26: TcxDBLabel;
    Panel4: TPanel;
    cxDBLabel28: TcxDBLabel;
    cxDBLabel30: TcxDBLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnlFees: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    cxDBLabel16: TcxDBLabel;
    cxDBLabel17: TcxDBLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1DESCR: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    Panel5: TPanel;
    tvProfitLoss: TcxGridDBTableView;
    grdProfitLossLevel1: TcxGridLevel;
    grdProfitLoss: TcxGrid;
    cxDBLabel42: TcxDBLabel;
    cxDBLabel43: TcxDBLabel;
    Panel8: TPanel;
    Panel10: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    pnltop: TPanel;
    Panel13: TPanel;
    Label8: TLabel;
    Panel14: TPanel;
    cxDBLabel10: TcxDBLabel;
    tvProfitLossEXPENSE: TcxGridDBColumn;
    tvProfitLossSUMAMOUNT: TcxGridDBColumn;
    lblOffice: TcxLabel;
    lblService: TcxLabel;
    lblTrust: TcxLabel;
    bbtnTeamScorecard: TdxBarButton;
    bbtnIndScorecard: TdxBarButton;
    bbtnRefresh: TdxBarButton;
    pnlWIP: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    lblWiptotal: TcxDBLabel;
    cxDBLabel35: TcxDBLabel;
    cxDBLabel34: TcxDBLabel;
    cxDBLabel33: TcxDBLabel;
    cxDBLabel32: TcxDBLabel;
    cxDBLabel31: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    pnlDebtors: TPanel;
    pnlUnbilledWIP: TPanel;
    pnlWIPGenerated: TPanel;
    chartWIPGenerated: TDBChart;
    Series3: TBarSeries;
    Series5: TBarSeries;
    chartUnbilledWIP: TDBChart;
    Series2: TBarSeries;
    dxBarButton1: TdxBarButton;
    ComponentPrinter: TdxComponentPrinter;
    ComponentPrinterLink1: TdxCustomContainerReportLink;
    Label27: TLabel;
    Label9: TLabel;
    Label39: TLabel;
    cxDBLabel20: TcxDBLabel;
    cxDBLabel21: TcxDBLabel;
    cxDBLabel18: TcxDBLabel;
    Label28: TLabel;
    cxDBLabel19: TcxDBLabel;
    pnlFeesBilled: TPanel;
    chartFeesBilled: TDBChart;
    Series6: TBarSeries;
    Series9: TBarSeries;
    pnlFeesReceived: TPanel;
    chartFeesReceived: TDBChart;
    BarSeries1: TBarSeries;
    Series7: TBarSeries;
    pnlLockup: TPanel;
    chartLockup: TDBChart;
    Series4: TPieSeries;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5DBTableView1WORKFLOW: TcxGridDBColumn;
    cxGrid5DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid5Level1: TcxGridLevel;
    chartDebtors: TDBChart;
    Series1: TBarSeries;
    ComponentPrinterLink5: TdxCustomContainerReportLink;
    ComponentPrinterLink9: TdxGridReportLink;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    cbThreeD: TcxBarEditItem;
    Panel1: TPanel;
    cxLabel2: TcxLabel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    procedure dxBtnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tabTopClientShow(Sender: TObject);
    procedure tsFeesShow(Sender: TObject);
    procedure tsWIPShow(Sender: TObject);
    procedure cxGrid4DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure bbtnTeamScorecardClick(Sender: TObject);
    procedure bbtnIndScorecardClick(Sender: TObject);
    procedure bbtnRefreshClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure chartDebtorsClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartDebtorsClick(Sender: TObject);
    procedure cbThreeDClick(Sender: TObject);
    procedure chartUnbilledWIPClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartWIPGeneratedClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartFeesBilledClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartFeesReceivedClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxBarEditItem1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure SetHeadings;
    procedure SetGridView(ANewView: integer);
  public
    { Public declarations }
  end;

var
  frmDashboard: TfrmDashboard;

implementation

uses AxiomData, Desktop, MiscFunc, Dashboard_team, Dashboard_Ind, DashboardFirmDataModule,
      BreakDown_UnbilledWIP_Firm;

{$R *.dfm}

var
   LFinDateFirst, LDateLast, LMonthDateFirst, LEndOfMonth, ADate, LFinDateEnd: TDate;
   LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
   LDateLastYear, LDateLastMonth, LDateLastDay: Word;
   LFinDateLastYear, LFinDateLastMonth, LFinDateLastDay: Word;
   WipLockup, UnbillDisbLockup, DebtorLockup: Currency;
   I: Integer;
   frmUnbilledWIPFirm: TfrmUnbilledWIPFirm;

procedure TfrmDashboard.dxBtnexitClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmDashboard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Action := caFree
   else
      RemoveFromDesktop(Self);
end;

procedure TfrmDashboard.FormCreate(Sender: TObject);
begin
   dxBDate.Caption := FormatDateTime('dddd, mmmm d, yyyy, hh:mm AM/PM', Now);
   SetHeadings;

    if not Assigned(dmDashboardFirm) then
      dmDashboardFirm := TdmDashboardFirm.Create(application);

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
end;

procedure TfrmDashboard.SetHeadings;
begin
   pnlDebtors.Caption := pnlDebtorsCaption;
   pnlUnbilledWIP.Caption := pnlUnbilledWIPCaption;
   pnlWIPGenerated.Caption := pnlWIPGeneratedCaption;
   pnlLockup.Caption := pnlLockupCaption;
   pnlFeesBilled.Caption := pnlFeesBilledCaption;
   pnlFeesReceived.Caption := pnlFeesReceivedCaption;
   pnlMatters.Caption := pnlMattersCaption;
   pnltop.Caption :=  SystemString('Company') + ' - FIRM BALANCED SCORECARD';

end;

procedure TfrmDashboard.tabTopClientShow(Sender: TObject);
begin
   with dmDashboardFirm.qryMatterProfitability do
   begin
      if SystemString('TOP_20_CLIENTS_ROLLING') = 'Y' then
      begin
           ParamByName('datefrom').AsDate := trunc(Now) - 365;
      end
      else
      begin
           ParamByName('datefrom').AsDate := GetFinYearStart(trunc(Now));
       end;
      Open();
   end;

   with dmDashboardFirm.qryClientMilestones do
   begin
      Open;
   end;

   with dmDashboardFirm.qryClientCountMTD do
   begin
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;

   with dmDashboardFirm.qryClientCountYTD do
   begin
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;

   with dmDashboardFirm.qryClientTotalAmountYTD do
   begin
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open();
   end;
   
   with dmDashboardFirm.qryClientTotalAmountMTD do
   begin
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;

   with dmDashboardFirm.qryTopClients do
   begin
      if SystemString('TOP_20_CLIENTS_ROLLING') = 'Y' then
      begin
           ParamByName('datefrom').AsDate := trunc(Now) - 365;
           ParamByName('dateto').AsDate := trunc(Now);
           cxLabel2.Caption := 'Figures are for rolling 12 months';
      end
      else
      begin
           ParamByName('datefrom').AsDate := GetFinYearStart(trunc(Now));
           ParamByName('dateto').AsDate := trunc(Now);
           cxLabel2.Caption := 'Figures are for financial year';
      end;
      open();
   end;

   with dmDashboardFirm.qryTopClientsPY do
   begin
      if SystemString('TOP_20_CLIENTS_ROLLING') = 'Y' then
      begin
           ParamByName('datefrom').AsDate := trunc(Now) - 710;
           ParamByName('dateto').AsDate := trunc(Now) - 366;
           cxLabel2.Caption := 'Figures are for rolling 12 months';
      end
      else
      begin
           ParamByName('datefrom').AsDate := GetFinYearStart(trunc(Now) - 366);
           ParamByName('dateto').AsDate := trunc(Now) - 366;
           cxLabel2.Caption := 'Figures are for financial year';
      end;
      open();
   end;

   with dmDashboardFirm.qryTopReferrers do
   begin
      if SystemString('TOP_20_CLIENTS_ROLLING') = 'Y' then
      begin
           ParamByName('datefrom').AsDate := trunc(Now) - 365;
           ParamByName('dateto').AsDate := trunc(Now);
           cxLabel1.Caption := 'Figures are for rolling 12 months';
      end
      else
      begin
           ParamByName('datefrom').AsDate := GetFinYearStart(trunc(Now));
           ParamByName('dateto').AsDate := trunc(Now);
           cxLabel1.Caption := 'Figures are for financial year';
      end;
      open();
   end;

   with dmDashboardFirm.qryTopReferrersPY do
   begin
      if SystemString('TOP_20_CLIENTS_ROLLING') = 'Y' then
      begin
           ParamByName('datefrom').AsDate := trunc(Now) - 710;
           ParamByName('dateto').AsDate := trunc(Now) - 366;
           cxLabel1.Caption := 'Figures are for rolling 12 months';
      end
      else
      begin
           ParamByName('datefrom').AsDate := GetFinYearStart(trunc(Now) - 366);
           ParamByName('dateto').AsDate := trunc(Now) - 366;
           cxLabel1.Caption := 'Figures are for financial year';
      end;
      open();
   end;

   with dmDashboardFirm.qryFirmCreditors do
   begin
      Open();
   end;
   with dmDashboardFirm.qryEstimatedfees do
   begin
      ParamByName('firstdate').AsDateTime := LMonthDateFirst;
      ParamByName('lastdate').AsDateTime := Now();
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open();
   end;

   with dmDashboardFirm.qryMattersOpened do
   begin
//      ParamByName('author').AsString := dmAxiom.UserID;
      ParamByName('firstdate').AsDateTime := LMonthDateFirst;
      ParamByName('lastdate').AsDateTime := Now();
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open();
   end;
   with dmDashboardFirm.qryMattersClosed do
   begin
      ParamByName('firstdate').AsDateTime := LMonthDateFirst;
      ParamByName('lastdate').AsDateTime := Now();
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open();
   end;
   with dmDashboardFirm.qryProfit_Loss do
   begin
      ParamByName('start_date').AsDateTime := LFinDateFirst;
      ParamByName('end_date').AsDateTime := Now();
//      ParamByName('entity').AsString := dmAxiom.Entity;
      Open();
   end;
   with dmDashboardFirm.qryCashFlow do
   begin
      close;
      open;
{      if (SystemString('CUST_ID') = 'WAL') or
         (SystemString('CUST_ID') = 'BHL') then
      begin
         while not eof do
         begin
            if FieldByName('ENTITY').AsString = '01' then
               lblOffice.Caption := Format('%.2m', [FieldByName('TOTAL').AsCurrency]);
            if FieldByName('ENTITY').AsString = '02' then
               lblService.Caption := Format('%.2m', [FieldByName('TOTAL').AsCurrency]);
            Next;
         end;
         dmDashboardFirm.qryTrustCashFlow.Open;
         lblTrust.Caption :=  Format('%.2m', [dmDashboardFirm.qryTrustCashFlow.FieldByName('TRUST').AsCurrency]);
      end
      else  }
      try
         begin
            while not eof do
            begin
               if FieldByName('acct_type').AsString = 'Office' then
                  lblOffice.Caption := Format('%.2m', [FieldByName('TOTAL').AsCurrency]);
               if FieldByName('acct_type').AsString = 'Service' then
                  lblService.Caption := Format('%.2m', [FieldByName('TOTAL').AsCurrency]);
               if FieldByName('trust').AsString = 'T' then
                  lblTrust.Caption :=  Format('%.2m', [FieldByName('TOTAL').AsCurrency]);
               Next;
            end;
//         dmDashboardFirm.qryTrustCashFlow.Open;
//         lblTrust.Caption :=  Format('%.2m', [dmDashboardFirm.qryTrustCashFlow.FieldByName('TRUST').AsCurrency]);
         end;
      except
      //
      end;
   end;
end;

procedure TfrmDashboard.tsFeesShow(Sender: TObject);
begin
   with dmDashboardFirm.qryFeesBilledYTD do
   begin
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;
   with dmDashboardFirm.qryFeesBilledMonth do
   begin
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;

   with dmDashboardFirm.qryFeesBilledGraph{qryFeesReceivedGraph} do
   begin
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open;
   end;
   with dmDashboardFirm.qryFeesBilledBudgetGraph{qryFeesReceivedBudgetGraph} do
   begin
      ParamByName('year_start_date').AsDateTime := LFinDateFirst; // IntToStr(LDateFirstMonth) + '-' + IntToStr(LDateFirstYear);
      ParamByName('year_end_date').AsDateTime := LFinDateEnd; // IntToStr(LFinDateLastMonth) + '-' + IntToStr(LFinDateLastYear);
      Open;
   end;

   with dmDashboardFirm.qryBilledFeesBudget do
   begin
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
//      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open;
   end;

{   with dmDashboardFirm.qryWIPLockup do
   begin
      ParamByName('start_date').AsDateTime := LFinDateFirst;
      ParamByName('end_date').AsDateTime := Now();
      open;
   end;   }

   with dmDashboardFirm.qryLockupGraph do
   begin
      open;
   end;

   with dmDashboardFirm.qryMatterProfitability do
   begin
      open;
   end;

   with dmDashboardFirm.qryPercMatterProfitabilityPercent do
   begin
      open;
   end;

   with dmDashboardFirm.qryFeesReceivedGraph do
   begin
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      open();
   end;

   with dmDashboardFirm.qryFeesReceivedBudget do
   begin
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := Now();
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      open();
   end;

    with dmDashboardFirm.qryBFeesReceivedBudgetGraph do
    begin
       ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      open();
    end;

   with dmDashboardFirm.qryFeeReceivedMonth do
   begin
//      Close;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := Now();
      Open();
   end;

      with dmDashboardFirm.qryFeeReceivedYear do
   begin
//      Close;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;
end;

procedure TfrmDashboard.tsWIPShow(Sender: TObject);
begin
   with dmDashboardFirm.qryAgedDebtors do
   begin
//      Close;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;
   with dmDashboardFirm.qryAgedDebtorsGraph do
   begin
//      Close;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;

   with dmDashboardFirm.qryWIPFigures do
   begin
//      Close;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;
   with dmDashboardFirm.qryWIPGraph do
   begin
//      Close;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;
   with dmDashboardFirm.qryWipGeneratedBudget do
   begin
//      Close;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      open;
   end;
   with dmDashboardFirm.qryWIPGenerated do
   begin
//      Close;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;
   with dmDashboardFirm.qryGraphWIPGenerated do
   begin
//      Close;
      ParamByName('firstdate').AsDateTime := LFinDateFirst;
      ParamByName('lastdate').AsDateTime := LFinDateEnd;
      Open();
   end;
   with dmDashboardFirm.qryWIPGeneratedBudgetGraph do
   begin
//      Close;
      ParamByName('firstdate').AsDateTime := LFinDateFirst;
      ParamByName('lastdate').AsDateTime := LFinDateEnd;
      Open();
   end;
end;

procedure TfrmDashboard.cxBarEditItem1PropertiesEditValueChanged(
  Sender: TObject);
var
   bChecked: boolean;
begin
   bChecked := boolean(cbThreeD.EditValue);

   chartDebtors.View3D           := bChecked;
   chartUnbilledWIP.View3D       := bChecked;
   chartWIPGenerated.View3D      := bChecked;
   chartFeesBilled.View3D        := bChecked;
   chartFeesReceived.View3D      := bChecked;
   chartLockup.View3D            := bChecked;

end;

procedure TfrmDashboard.cxGrid4DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
   AText := 'Profit/Loss';
end;

procedure TfrmDashboard.bbtnTeamScorecardClick(Sender: TObject);
begin
   //FindorCreate(TfrmDashboard_Team,IDXDASHBOARD_TEAM).show;
   Application.CreateForm(TfrmDashboard_Team, frmDashboard_Team);
   if frmDesktop.pagMainControl.ActivePageIndex = 0 then
     frmDesktop.AddFormToTab(frmDashboard_Team,1);
   if (not frmDashboard_Team.Visible) then
     frmDashboard_Team.Show;
end;

procedure TfrmDashboard.bbtnIndScorecardClick(Sender: TObject);
begin
   //FindorCreate(TfrmDashboard_Ind,IDXDASHBOARD_IND).show;
   Application.CreateForm(TfrmDashboard_Ind, frmDashboard_Ind);
   if frmDesktop.pagMainControl.ActivePageIndex = 0 then
     frmDesktop.AddFormToTab(frmDashboard_Ind,1);
   if (not frmDashboard_Ind.Visible) then
     frmDashboard_Ind.Show;
end;

procedure TfrmDashboard.bbtnRefreshClick(Sender: TObject);
begin
  SetHeadings;
  case pagMain.ActivePageIndex of
   0: begin
         with dmDashboardFirm do
         begin
            qryAgedDebtors.Close;
            qryAgedDebtorsGraph.Close;
            qryWIPFigures.Close;
            qryWIPGraph.Close;
            qrytotal_wip.Close;
            qryWipGeneratedBudget.Close;
            qryWIPGenerated.Close;
            qryGraphWIPGenerated.Close;
            qryWIPGeneratedBudgetGraph.Close;
         end;
         tsWIP.OnShow(Sender);
      end;
   1: begin
         with dmDashboardFirm do
         begin
            qryFeesBilledYTD.Close;
            qryFeesBilledMonth.Close;
            qryFeesReceivedGraph.Close;
            qryBFeesReceivedBudgetGraph.Close;
            qryWIPLockup.Close;
            qryMatterProfitability.Close;
            qryLockupGraph.Close;
            qryFeesBilledBudgetGraph.Close;
            qryFeesBilledGraph.Close;
            qryFeeReceivedMonth.Close;
            qryFeeReceivedYear.Close;
            qryFeesReceivedBudget.Close;
            qryBilledFeesBudget.Close;
            qryMatterProfitability.Close;
            qryPercMatterProfitabilityPercent.Close;
            qryFeesReceivedBudget.Close;
         end;
         tsFees.OnShow(Sender);
      end;
   2: begin
         with dmDashboardFirm do
         begin
            qryClientMilestones.Close;
            qryClientCountMTD.Close;
            qryClientCountYTD.Close;
            qryClientTotalAmountYTD.Close;
            qryClientTotalAmountMTD.Close;
            qryTopClients.Close;
            qryFirmCreditors.Close;
            qryEstimatedfees.Close;
            qryMattersOpened.Close;
            qryProfit_Loss.Close;
            qryCashFlow.Close;
            qryTrustCashFlow.Close;
            qryTopReferrers.Close;
            qryMatterProfitability.Close;
            qryFeesReceivedGraph.Close;
            qryMattersClosed.Close;
         end;
         tabTopClient.OnShow(Sender);
      end;
   end;
end;

procedure TfrmDashboard.dxBarButton1Click(Sender: TObject);
begin
   case pagMain.ActivePageIndex of
      0: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink1);
         end;
      1: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink5);
         end;
      2: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink9);
         end;
   end;
end;

procedure TfrmDashboard.chartDebtorsClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
//   frmUnbilledWIPFirm: TfrmUnbilledWIPFirm;
   LSql: string;
begin
   LSql := '';
   frmUnbilledWIPFirm := TfrmUnbilledWIPFirm.Create(Self);
//   frmUnbilledWIPFirm.lvAged.GridView := frmUnbilledWIPFirm.grdAged.Views[1];
   SetGridView(1);

   frmUnbilledWIPFirm.P30Days := 0;
   frmUnbilledWIPFirm.P60Days := 0;
   frmUnbilledWIPFirm.P90Days := 0;
   frmUnbilledWIPFirm.P120Days := 0;
   LSql := 'SELECT '+
           'n.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, FEES, '+
           'DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, '+
           'ANTD_PAID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE ,'+
           '(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(TAX,0) + nvl(UPCRED,0)) AS TOTAL ,'+
           '((nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(TAX,0) + nvl(UPCRED,0)) - '+
           'NVL(FEES_PAID,0) +  nvl(DISB_PAID,0) + nvl(ANTD_PAID,0) + nvl(SUND_PAID,0) + nvl(TAX_PAID,0) + '+
           'NVL(FEES_WOFF,0) + nvl(DISB_WOFF,0) + nvl(ANTD_WOFF,0) + nvl(SUND_WOFF,0) + nvl(TAX_WOFF,0) + '+
           'nvl(UPCRED_PAID, 0) + nvl(UPCRED_WOFF,0)) AS OWING, UPCRED, UPCRED_PAID,SPLIT_BILL, '+
           'EXPPAYMENT, INV_NOTE, m.FILEID '+
           'FROM  matter m, nmemo n '+
           'WHERE n.fileid = m.fileid '+
           'AND n.IS_DRAFT = ''N'' '+
           'AND n.rv_type <> ''D'' '+
           'AND ((n.refno not like ''%CN'') and (n.refno not like ''%RV'')) '+
           'AND n.owing <> 0 '+
	   'AND dispatched IS NOT NULL ';
   case ValueIndex of
      0: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Aged Debtors - Current';
            frmUnbilledWIPFirm.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p1) AND TRUNC(n.dispatched) <= TRUNC(SYSDATE) ';
            frmUnbilledWIPFirm.P30Days := 29;
         end;
      1: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Aged Debtors - 30 Days';
	         frmUnbilledWIPFirm.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p2) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p1+1)) ';
            frmUnbilledWIPFirm.P30Days := 29;
            frmUnbilledWIPFirm.P60Days := 59;
         end;
      2: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Aged Debtors - 60 Days';
	         frmUnbilledWIPFirm.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p3) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p2+1)) ';
            frmUnbilledWIPFirm.P90Days := 89;
            frmUnbilledWIPFirm.P60Days := 59;
         end;
      3: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Aged Debtors - 90 Days';
	         frmUnbilledWIPFirm.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p4) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p3+1)) ';
            frmUnbilledWIPFirm.P90Days := 89;
            frmUnbilledWIPFirm.P120Days := 119;
         end;
      4: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Aged Debtors - 120+ Days';
	         frmUnbilledWIPFirm.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= TRUNC(TO_DATE(''01/01/1900'',''dd/mm/yyyy'')) AND TRUNC(n.dispatched) < (TRUNC(SYSDATE) - (:p4+1)) ';
            frmUnbilledWIPFirm.P120Days := 119;
         end;
   end;
   try
      frmUnbilledWIPFirm.ShowModal;
   finally
      frmUnbilledWIPFirm.Free;
   end;
end;

procedure TfrmDashboard.chartDebtorsClick(Sender: TObject);
begin
   frmUnbilledWIPFirm := TfrmUnbilledWIPFirm.Create(Self);
   frmUnbilledWIPFirm.P30Days := 0;
   frmUnbilledWIPFirm.P60Days := 0;
   frmUnbilledWIPFirm.P90Days := 0;
   frmUnbilledWIPFirm.P120Days := 0;
   with frmUnbilledWIPFirm do
   begin
      try
         lvAged.GridView := grdAged.Views[9];
//         FormTitle := '('+EmpCode +') ' + pnlLockupCaption + ' - Debtors';
//         Author   := EmpCode;
         P30Days := 29;
         P60Days := 59;
         P90Days := 89;
         P120Days := 119;
         ShowModal;
      finally
         Free;
      end;
   end;
end;

procedure TfrmDashboard.cbThreeDClick(Sender: TObject);
var
   bChecked: boolean;
begin
   bChecked := boolean(cbThreeD.EditValue);

   chartDebtors.View3D           := bChecked;
   chartUnbilledWIP.View3D       := bChecked;
   chartWIPGenerated.View3D      := bChecked;
   chartFeesBilled.View3D        := bChecked;
   chartFeesReceived.View3D      := bChecked;
   chartLockup.View3D            := bChecked;
end;

procedure TfrmDashboard.chartUnbilledWIPClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var

   LSql: string;
begin
   LSql := '';
   frmUnbilledWIPFirm := TfrmUnbilledWIPFirm.Create(Self);
   frmUnbilledWIPFirm.Caption := 'Unbilled WIP';
   SetGridView(0);
   frmUnbilledWIPFirm.lvAged.GridView := frmUnbilledWIPFirm.grdAged.Views[0];
   frmUnbilledWIPFirm.P30Days := 0;
   frmUnbilledWIPFirm.P60Days := 0;
   frmUnbilledWIPFirm.P90Days := 0;
   frmUnbilledWIPFirm.P120Days := 0;
   LSql := 'SELECT FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE.AUTHOR, FEE.FILEID, FEE.NMATTER '+
           ', FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS '+
           ', FEE.RATE,FEE.TYPE, FEE.TASK '+
           ', FEE.TASK_AMOUNT, PHONEBOOK.SEARCH AS TITLE '+
           ', MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR AS FEETYPE,PART.NAME AS PARTNERNAME, AUTH.NAME AS AUTHORNAME '+
           ', DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, TIME_TYPE '+
           'FROM MATTER, PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPLOYEE AUTH, BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT, FEE '+
           'WHERE FEE.NMATTER = MATTER.NMATTER '+
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
            frmUnbilledWIPFirm.Caption := '( Firm) Unbilled WIP - Current';
            frmUnbilledWIPFirm.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - :p1 AND  TRUNC(SYSDATE) ';
            frmUnbilledWIPFirm.P30Days := 29;
         end;
      1: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Unbilled WIP - 30 Days';
            frmUnbilledWIPFirm.SQL := LSql +  'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p2) AND TRUNC(SYSDATE) - (:p1+1) ';
            frmUnbilledWIPFirm.P30Days := 29;
            frmUnbilledWIPFirm.P60Days := 59;
         end;
      2: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Unbilled WIP - 60 Days';
            frmUnbilledWIPFirm.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p3) AND TRUNC(SYSDATE) - (:p2+1) ';
            frmUnbilledWIPFirm.P60Days := 59;
            frmUnbilledWIPFirm.P90Days := 89;
         end;
      3: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Unbilled WIP - 90 Days';
            frmUnbilledWIPFirm.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p4) AND TRUNC(SYSDATE) - (:p3+1) ';
            frmUnbilledWIPFirm.P90Days := 89;
            frmUnbilledWIPFirm.P120Days := 119;
         end;
      4: begin
            frmUnbilledWIPFirm.Caption := '( Firm ) Unbilled WIP - 120 + Days';
            frmUnbilledWIPFirm.SQL := LSql + 'AND TRUNC(FEE.CREATED) < TRUNC(SYSDATE) - (:p4) ';
            frmUnbilledWIPFirm.P120Days := 119;
         end;
   end;
   try
      frmUnbilledWIPFirm.ShowModal;
   finally
      frmUnbilledWIPFirm.Free;
   end;

end;

procedure TfrmDashboard.chartWIPGeneratedClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
//   frmUnbilledWIPFirm: TfrmUnbilledWIPFirm;
   LYear: word;
   LMonthDateFirst,LMonthDateEnd: TDateTime;
   FYear: string;
begin
   if Series.Title = 'Actual' then
   begin
      frmUnbilledWIPFirm := TfrmUnbilledWIPFirm.Create(Self);

//      frmUnbilledWIPFirm.lvAged.GridView := frmUnbilledWIPFirm.grdAged.Views[11];
      SetGridView(11);

      FYear := Copy(series.ValueMarkText[ValueIndex],Pos('-',series.ValueMarkText[ValueIndex])+1, 2);
      FYear := '20'+ FYear;

      LYear := StrToInt(FYear);

//      LYear := CalcYear(series.ValueMarkText[ValueIndex],ValueIndex);

      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmUnbilledWIPFirm do
      begin
         try
            FormTitle := '( Firm ) Billable Time for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;
end;

procedure TfrmDashboard.chartFeesBilledClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   frmUnbilledWIP: TfrmUnbilledWIPFirm;
   LYear: word;
   LMonthDateFirst,LMonthDateEnd: TDateTime;
   FYear: string;
begin
   if Series.Title = 'Actual' then
   begin
      frmUnbilledWIP := TfrmUnbilledWIPFirm.Create(Self);
      frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[2];

      FYear := Copy(series.ValueMarkText[ValueIndex],Pos('-',series.ValueMarkText[ValueIndex])+1, 2);
      LYear := StrToInt('20'+ FYear);


      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmUnbilledWIP do
      begin
         try
            FormTitle := '(Firm) ' + pnlFeesBilledCaption + ' for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;
end;

procedure TfrmDashboard.chartFeesReceivedClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   frmUnbilledWIP: TfrmUnbilledWIPFirm;
   LYear: word;
   LMonthDateFirst,LMonthDateEnd: TDateTime;
   s: string;
begin
   if Series.Title = 'Actual' then
   begin
      frmUnbilledWIP := TfrmUnbilledWIPFirm.Create(Self);
      frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[3];

      LYear := CalcYear(series.ValueMarkText[ValueIndex],ValueIndex);

      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmUnbilledWIP do
      begin
         try
            FormTitle := '(Firm) ' + pnlFeesReceivedCaption + ' for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;

end;

procedure TfrmDashboard.SetGridView(ANewView: integer);
var
   AView: TcxCustomGridTableView;
   AMasterRecord: TcxCustomGridRecord;
   AHandler: TcxGridFocusedViewChangedEvent;
   ItemIndex: integer;
begin
   //////

      ItemIndex := ANewView;
      AHandler := frmUnbilledWIPFirm.grdAged.OnFocusedViewChanged;
      try
         frmUnbilledWIPFirm.grdAged.OnFocusedViewChanged := nil;

         AView := frmUnbilledWIPFirm.grdAged.FocusedView as TcxCustomGridTableView;
         AMasterRecord := AView.MasterGridRecord;

         if AMasterRecord <> nil then // Detail View
            TcxGridMasterDataRow(AMasterRecord).ActiveDetailIndex := ItemIndex
         else  // Top-level View
            frmUnbilledWIPFirm.grdAged.ActiveLevel := frmUnbilledWIPFirm.grdAged.Levels[ItemIndex];
      finally
         frmUnbilledWIPFirm.grdAged.OnFocusedViewChanged := AHandler;
      end;

   ///
end;

end.
