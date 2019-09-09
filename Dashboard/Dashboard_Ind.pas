unit Dashboard_Ind;

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
  cxGroupBox, dxBarExtDBItems, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPSContainerLnk, dxPgsDlg, dxPSGraphicLnk, dxPSTCLnk, dxPSDBTCLnk,
  dxPScxCommon, dxPScxGridLnk, cxCheckBox, cxLookAndFeels,
  cxLookAndFeelPainters, ppParameter, cxPCdxBarPopupMenu,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerYearView,
  cxSchedulerGanttView, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLayoutViewLnk, dxPScxSchedulerLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, ppDesignLayer, dxPSTextLnk, cxNavigator,
  cxGridChartView, cxGridDBChartView, dxPScxDBEditorLnks, cxBarEditItem,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxSchedulerAgendaView, cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor, cxSchedulerTreeListBrowser,
  VclTee.TeeGDIPlus, dxDateRanges;

  const
   pnlDebtorsCaption = 'Debtors';
   pnlUnbilledWIPCaption = 'Unbilled WIP';
   pnlWIPGeneratedCaption = 'Recorded Billable Time (12 Months)';
   pnlLockupCaption = 'Matter Author Lock Up';
   pnlFeesBilledCaption = 'Contributor Fees Billed';
   pnlFeesReceivedCaption = 'Contributor Fees Received';
   pnlMattersCaption = 'Matters Opened/Closed';
   Months: array[0..11] of integer = (7,8,9,10,11,12,1,2,3,4,5,6);


type
  TfrmDashboard_Ind = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBtnexit: TdxBarButton;
    dxBDate: TdxBarStatic;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pagMain: TcxPageControl;
    tabWIP: TcxTabSheet;
    tabFeesBilled: TcxTabSheet;
    tabTopClient: TcxTabSheet;
    tabCalendar: TcxTabSheet;
    cxSchedulerStorage1: TcxSchedulerStorage;
    pnlTop: TPanel;
    qryEmployeeList: TUniQuery;
    dsEmployeeList: TUniDataSource;
    empContainer: TdxBarControlContainerItem;
    dxBarStatic1: TdxBarStatic;
    bbtnRefresh: TdxBarButton;
    dxBarButton1: TdxBarButton;
    pnlFees: TPanel;
    pnlClients: TPanel;
    Panel3: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    cxDBLabel22: TcxDBLabel;
    cxDBLabel23: TcxDBLabel;
    cxDBLabel24: TcxDBLabel;
    cxDBLabel25: TcxDBLabel;
    cxDBLabel26: TcxDBLabel;
    cxDBLabel27: TcxDBLabel;
    Panel4: TPanel;
    cxDBLabel28: TcxDBLabel;
    cxDBLabel30: TcxDBLabel;
    pnlMatters: TPanel;
    pnlMatterProfit: TPanel;
    Panel7: TPanel;
    grdMatterProfitability: TcxGrid;
    tvMatterProfitability: TcxGridDBTableView;
    tvMatterProfitabilityDESCR: TcxGridDBColumn;
    tvMatterProfitabilityTOTAL: TcxGridDBColumn;
    glvMatterProfitability: TcxGridLevel;
    pnlCalendar: TPanel;
    Panel5: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    lblMthChargeable: TcxLabel;
    lblMthNonChargeable: TcxLabel;
    lblMonthTotal: TcxLabel;
    cxLabel9: TcxLabel;
    lblMthOverhead: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    lblYearChargeable: TcxLabel;
    lblYearNonChargeable: TcxLabel;
    lblYeartotal: TcxLabel;
    Overhead: TcxLabel;
    lblYearOverhead: TcxLabel;
    Scheduler: TcxScheduler;
    Panel8: TPanel;
    ComponentPrinter: TdxComponentPrinter;
    pnlWIP: TPanel;
    pnlUnbilledWIP: TPanel;
    chartWIP: TDBChart;
    Series2: TBarSeries;
    pnlWIPGenerated: TPanel;
    lblWipCurrent: TcxDBLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lblWipTotal: TcxLabel;
    lblwip120: TcxDBLabel;
    lblWip90: TcxDBLabel;
    lblWip60: TcxDBLabel;
    lblWip30: TcxDBLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    Label19: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel17: TcxDBLabel;
    cxDBLabel16: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    Label7: TLabel;
    Label10: TLabel;
    pnlFeesBilled: TPanel;
    Label27: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    cxDBLabel20: TcxDBLabel;
    cxDBLabel19: TcxDBLabel;
    ComponentPrinterLink4: TdxCustomContainerReportLink;
    ComponentPrinterLink5: TdxCustomContainerReportLink;
    ComponentPrinterLink9: TdxCustomContainerReportLink;
    ComponentPrinterLink10: TdxCustomContainerReportLink;
    dxPageSetupDialog1: TdxPageSetupDialog;
    dxPrintStyleManager1: TdxPrintStyleManager;
    dxPSEngineController1: TdxPSEngineController;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    cmbEmployee: TcxLookupComboBox;
    tvFeeBilled: TcxGridDBTableView;
    grdFeeBilledLevel1: TcxGridLevel;
    grdFeeBilled: TcxGrid;
    tvFeeBilledDISP_PERIOD: TcxGridDBColumn;
    tvFeeBilledPERIOD: TcxGridDBColumn;
    tvFeeBilledFEES_PAID: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tvFeeBilledFEES_BUDGET: TcxGridDBColumn;
    tvFeeBilledRATIO: TcxGridDBColumn;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    tabLockUp: TcxTabSheet;
    pnlLockupGraph: TPanel;
    pnlLockup: TPanel;
    chartLockup: TDBChart;
    Series4: TBarSeries;
    Label22: TLabel;
    cxDBLabel10: TcxDBLabel;
    Label23: TLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    Label24: TLabel;
    Label40: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    Label41: TLabel;
    Label25: TLabel;
    teLockupTotal: TcxLabel;
    Label42: TLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    ComponentPrinterLink1: TdxCustomContainerReportLink;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    grdFeesBilled: TcxGrid;
    grdFeesBilledDBTableView1: TcxGridDBTableView;
    grdFeesBilledDBTableView1DISP_PERIOD: TcxGridDBColumn;
    grdFeesBilledDBTableView1FEES: TcxGridDBColumn;
    grdFeesBilledDBTableView1FEES_BUDGET: TcxGridDBColumn;
    grdFeesBilledDBTableView1PERIOD: TcxGridDBColumn;
    grdFeesBilledDBTableView1RATIO: TcxGridDBColumn;
    tvFeesBilled: TcxGridDBChartView;
    tvFeesBilledSeries1: TcxGridDBChartSeries;
    tvFeesBilledSeries2: TcxGridDBChartSeries;
    grdFeesBilledLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBChartView1: TcxGridDBChartView;
    cxGrid3DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid3DBChartView1Series2: TcxGridDBChartSeries;
    cxGrid3Level1: TcxGridLevel;
    GroupBox1: TGroupBox;
    grdTopClients: TcxGrid;
    tvTopClients: TcxGridDBTableView;
    tvTopClientsNAME: TcxGridDBColumn;
    tvTopClientsTOTAL: TcxGridDBColumn;
    grdTopClientsLevel1: TcxGridLevel;
    GroupBox2: TGroupBox;
    grdTopReferrers: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tabDebtors: TcxTabSheet;
    pnlDebtors: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    chartDebtors: TDBChart;
    Series10: TBarSeries;
    Label1: TLabel;
    cxDBLabel36: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel31: TcxDBLabel;
    cxDBLabel32: TcxDBLabel;
    cxDBLabel33: TcxDBLabel;
    cxDBLabel34: TcxDBLabel;
    cxDBLabel35: TcxDBLabel;
    cxDBLabel41: TcxDBLabel;
    cxDBLabel40: TcxDBLabel;
    cxDBLabel39: TcxDBLabel;
    cxDBLabel38: TcxDBLabel;
    cxDBLabel37: TcxDBLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    tabFeesReceived: TcxTabSheet;
    pnlFeesReceived: TPanel;
    Label28: TLabel;
    cxDBLabel18: TcxDBLabel;
    cxDBLabel21: TcxDBLabel;
    grdFeeReceived: TcxGrid;
    tvFeeReceived: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    grdFeesReceived: TcxGrid;
    tvFeesReceived: TcxGridDBChartView;
    tvFeesReceivedSeries2: TcxGridDBChartSeries;
    tvFeesReceivedSeries1: TcxGridDBChartSeries;
    grdFeesReceivedLevel1: TcxGridLevel;
    pnlFeesReceivedTitle: TPanel;
    dxBarLookupCombo1: TdxBarLookupCombo;
    cbThreeD: TcxBarEditItem;
    ComponentPrinterLink2: TdxCustomContainerReportLink;
    ComponentPrinterLink3: TdxCustomContainerReportLink;
    Panel1: TPanel;
    cxLabel10: TcxLabel;
    Panel2: TPanel;
    cxLabel11: TcxLabel;
    procedure dxBtnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tabCalendarShow(Sender: TObject);
    procedure tabTopClientShow(Sender: TObject);
    procedure tabFeesBilledShow(Sender: TObject);
    procedure tabWIPShow(Sender: TObject);
    procedure cmbEmployeePropertiesChange(Sender: TObject);
    procedure bbtnRefreshClick(Sender: TObject);
    procedure DBChart5DblClick(Sender: TObject);
    procedure cgartReceivedMonthlyDblClick(Sender: TObject);
    procedure chrtWIPGeneratedDblClick(Sender: TObject);
    procedure cmbEmployeePropertiesCloseUp(Sender: TObject);
    procedure chrtWIPGeneratedUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure chartBilledMonthlyUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure chartReceivedMonthlyUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure chartLockupUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton1Click(Sender: TObject);
    procedure chrtWIPGeneratedClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartWIPClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartDebtorsClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartBilledMonthlyClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartReceivedMonthlyClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartLockupClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chartDebtorsClick(Sender: TObject);
    procedure chartWIPClick(Sender: TObject);
    procedure chartBilledMonthlyClick(Sender: TObject);
    procedure tabLockUpShow(Sender: TObject);
    procedure tabDebtorsShow(Sender: TObject);
    procedure tabFeesReceivedShow(Sender: TObject);
    procedure dxBarLookupCombo1CloseUp(Sender: TObject);
    procedure cxBarEditItem1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    AStorage: TcxCustomSchedulerStorage;
    EmpCode: string;

    procedure SetHeadings;
    function CalcYear(ASeriesCaption: string; AIndex: integer): integer;
    function GetEmpDailyUnitsBudget(ADate: TDateTime): integer;
  public
    { Public declarations }
  end;

var
  frmDashboard_Ind: TfrmDashboard_Ind;

implementation

uses AxiomData, Desktop, MiscFunc, DashboardIndDataModule, FeesBilledBreakdown,
     FeesRecBreakdown, Breakdown_WIP, BreakDown_UnbilledWIP, FeeListDataModule;

{$R *.dfm}

var
   LFinDateFirst, LDateLast, LMonthDateFirst, LEndOfMonth, ADate, LFinDateEnd: TDate;
   LDateFirstYear, LDateFirstMonth, LDateFirstDay: Word;
   LDateLastYear, LDateLastMonth, LDateLastDay: Word;
   WipLockup, UnbillDisbLockup, DebtorLockup,CreditorLockup,SundryLockup: Currency;

procedure TfrmDashboard_Ind.dxBtnexitClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmDashboard_Ind.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dmDashboardInd.qryAgedDebtors.Close;
   dmDashboardInd.qryAgedDebtorsGraph.Close;
   dmDashboardInd.qryAgedDebtorsMatterCnt.Close;
   dmDashboardInd.qryWIPFigures.Close;
   dmDashboardInd.qryWIPGraph.Close;
   dmDashboardInd.qryWipGeneratedBudget.Close;
   dmDashboardInd.qryWIPGenerated.Close;
   dmDashboardInd.qryWIPGeneratedGraph.Close;
   dmDashboardInd.qryWIPGeneratedBudgetGraph.Close;
   dmDashboardInd.qryHours.Close;
   dmDashboardInd.qryFeesBilledYTD.Close;
   dmDashboardInd.qryFeesBilledMonth.Close;
   dmDashboardInd.qryWIPLockup.Close;
   dmDashboardInd.qryUnbilledDisbs.Close;
   dmDashboardInd.qryDebtorLockup.Close;
   dmDashboardInd.qryLockupGraph.Close;
   dmDashboardInd.qryFeeReceivedMonth.Close;
   dmDashboardInd.qryFeeReceivedYear.Close;
   dmDashboardInd.qryFeesReceivedBudgetGraph.Close;
   dmDashboardInd.qryFeesReceivedGraph.Close;
   dmDashboardInd.qryFeesBilledGraph.Close;
   dmDashboardInd.qryFeesBilledBudgetGraph.Close;
   dmDashboardInd.qryFeesBilledBudget.Close;
   dmDashboardInd.qryFeesReceivedBudget.Close;
   dmDashboardInd.qryLockupCredSund.Close;
   dmDashboardInd.qryClientMilestones.Close;
   dmDashboardInd.qryClientCountMTD.Close;
   dmDashboardInd.qryClientCountYTD.Close;
   dmDashboardInd.qryTotalMatters.Close;
   dmDashboardInd.qryTotalClients.Close;
   dmDashboardInd.qryTopClients.Close;
   dmDashboardInd.qryMattersClosed.Close;
   dmDashboardInd.qryChargeSummary.Close;
   dmDashboardInd.qryTopReferrers.Close;
   dmDashboardInd.qryHoursYTD.Close;
   dmDashboardInd.qryFeesListBudget.Close;
   dmDashboardInd.qryFeesReceivedGrid.Close;
   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Action := caFree
   else
      RemoveFromDesktop(Self);
end;

procedure TfrmDashboard_Ind.FormShow(Sender: TObject);
begin
   Scheduler.SelectDays(Now-20,Now);
end;

procedure TfrmDashboard_Ind.SetHeadings;
begin
   pnlDebtors.Caption := '('+EmpCode +') '+ pnlDebtorsCaption;
   pnlUnbilledWIP.Caption := '('+EmpCode +') '+ pnlUnbilledWIPCaption;
   pnlWIPGenerated.Caption := '('+EmpCode +') '+ pnlWIPGeneratedCaption;
   pnlLockup.Caption := '('+EmpCode +') '+ pnlLockupCaption;
   pnlFeesBilled.Caption := '('+EmpCode +') '+ pnlFeesBilledCaption;
   pnlFeesReceived.Caption := '('+EmpCode +') '+ pnlFeesReceivedCaption;
   pnlMatters.Caption := '('+EmpCode +') '+ pnlMattersCaption;
   pnltop.Caption :=  SystemString('Company') + ' - ( '+ EmpCode + ' ) BALANCED SCORECARD';

end;

procedure TfrmDashboard_Ind.FormCreate(Sender: TObject);
begin
   if(not Assigned(dmFeeList)) then
      dmFeeList := TdmFeeList.Create(Application);

   EmpCode := dmAxiom.UserID;
   SetHeadings;

   if not Assigned(dmDashboardInd) then
      dmDashboardInd := TdmDashboardInd.Create(application);

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

   if SystemString('Use_Fee_Authority') = 'Y' then
   begin
      try
        qryEmployeeList.Close;
        cmbEmployee.Properties.ListSource := dsEmployeeList;
        qryEmployeeList.ParamByName('code').AsString := dmAxiom.UserID;
        qryEmployeeList.Open;
      except
        //
      end;
   end
   else
   begin
      cmbEmployee.Properties.ListSource := dmFeeList.dsFeeEarners;
      dmFeeList.qFeeEarners.Open;
   end;

   cmbEmployee.EditValue := EmpCode;
//   cmbEmployee.Enabled := (TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'FEE_ENQUIRY_ACCESS') = 'Y'); //dmAxiom.Security.Scorecard.ViewEmployees;
   cmbEmployee.Enabled := (dmAxiom.Security.ScorecardIndividual.ViewEmployees);
   tabDebtors.TabVisible := dmAxiom.Security.ScorecardIndividual.ShowDebtorsTab;
   pnlMatterProfit.Visible := dmAxiom.Security.ScorecardIndividual.ShowMatterProfitability;
   tabLockUp.TabVisible := dmAxiom.Security.ScorecardIndividual.ShowLockUpTab;
   pnlFeesReceived.Visible := dmAxiom.Security.ScorecardIndividual.ShowFeesReceived;
end;

procedure TfrmDashboard_Ind.tabCalendarShow(Sender: TObject);
//var
//   AStorage: TcxCustomSchedulerStorage;
begin
   Panel8.Caption := 'Monthly Chargeable/Non Chargeable Units - Summary for ('+EmpCode + ')';
   with dmDashboardInd.qryChargeSummary do
   begin
      Close;
      ParamByName('author').AsString := EmpCode;
      open;
      AStorage := Scheduler.Storage;
      AStorage.Clear;
      if AStorage = nil then Exit;
      AStorage.BeginUpdate;
      try
         while not dmDashboardInd.qryChargeSummary.eof do
         begin
            with AStorage.CreateEvent do
            begin
               ADate := dmDashboardInd.qryChargeSummary.FieldByName('created').AsDateTime;
               Start := ADate;
               Finish := ADate;// * MinuteToTime;
               State := 2;
               if dmDashboardInd.qryChargeSummary.FieldByName('eventtype').AsInteger = 4 then
               begin
                  if dmDashboardInd.qryChargeSummary.FieldByName('tot_units').AsInteger >= GetEmpDailyUnitsBudget(ADate) then
                     LabelColor := $002CCB73  //EventLabelColors[4]
                  else
                     LabelColor := $000C1DFC;
               end
               else
                     LabelColor := $00D7E0DC;  //EventLabelColors[dmDashboardInd.qryChargeSummary.FieldByName('eventtype').AsInteger];

               Caption := dmDashboardInd.qryChargeSummary.FieldByName('units').AsString;
               ResourceID := 5;
            end;
            dmDashboardInd.qryChargeSummary.Next;
         end;
      finally
         AStorage.EndUpdate;
      end;
   end;
   with dmDashboardInd.qryHours do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := Now();
      Open;
      lblMthChargeable.Caption := FieldByName('Billable').AsString;
      lblMthNonChargeable.Caption := FieldByName('NonBillable').AsString;
      lblMthOverhead.Caption := FieldByName('Overhead').AsString;
      lblMonthTotal.Caption := FieldByName('Total').AsString;
   end;

   with dmDashboardInd.qryHoursYTD do
   begin
      ParamByName('author').AsString := EmpCode;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := trunc(Now());
      Open();
      lblYearChargeable.Caption := FieldByName('Billable').AsString;
      lblYearNonChargeable.Caption := FieldByName('NonBillable').AsString;
      lblYearOverhead.Caption := FieldByName('Overhead').AsString;
      lblYearTotal.Caption := FieldByName('Total').AsString;
   end;
end;

procedure TfrmDashboard_Ind.tabDebtorsShow(Sender: TObject);
begin
   with dmDashboardInd.qryAgedDebtors do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;
   with dmDashboardInd.qryAgedDebtorsGraph do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;
   with dmDashboardInd.qryAgedDebtorsMatterCnt do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;
end;

procedure TfrmDashboard_Ind.tabTopClientShow(Sender: TObject);
begin
   with dmDashboardInd.qryClientMilestones do
   begin
//      Close;
      if SystemString('TOP_20_CLIENTS_ROLLING') = 'Y' then
      begin
           ParamByName('datefrom').AsDate := trunc(Now) - 365;
      end
      else
      begin
           ParamByName('datefrom').AsDate := GetFinYearStart(trunc(Now));
       end;
      ParamByName('author').AsString := EmpCode;
      Open;
   end;
   with dmDashboardInd.qryClientCountMTD do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;
   with dmDashboardInd.qryClientCountYTD do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := trunc(Now());
      Open;
   end;
   with dmDashboardInd.qryTotalMatters do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      Open();
   end;
   with dmDashboardInd.qryTotalClients do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      Open();
   end;
   with dmDashboardInd.qryTopReferrers do
   begin
//      Close;
      if SystemString('TOP_20_CLIENTS_ROLLING') = 'Y' then
      begin
           ParamByName('datefrom').AsDate := trunc(Now) - 365;
           ParamByName('dateto').AsDate := trunc(Now);
           cxLabel11.Caption := 'Figures are for rolling 12 months';
      end
      else
      begin
           ParamByName('datefrom').AsDate := GetFinYearStart(trunc(Now));
           ParamByName('dateto').AsDate := trunc(Now);
           cxLabel11.Caption := 'Figures are for financial year';
      end;
      ParamByName('author').AsString := EmpCode;
      open();
   end;
   with dmDashboardInd.qryTopClients do
   begin
//      Close;
      if SystemString('TOP_20_CLIENTS_ROLLING') = 'Y' then
      begin
           ParamByName('datefrom').AsDate := trunc(Now) - 365;
           ParamByName('dateto').AsDate := trunc(Now);
           cxLabel10.Caption := 'Figures are for rolling 12 months';
      end
      else
      begin
           ParamByName('datefrom').AsDate := GetFinYearStart(trunc(Now));
           ParamByName('dateto').AsDate := trunc(Now);
           cxLabel10.Caption := 'Figures are for financial year';
      end;
      ParamByName('author').AsString := EmpCode;
      open();
   end;
   with dmDashboardInd.qryMattersClosed do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('firstdate').AsDateTime := LMonthDateFirst;
      ParamByName('lastdate').AsDateTime := Now();
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open();
   end;
   with dmDashboardInd.qryMattersOpened do
   begin
      ParamByName('author').AsString := EmpCode;
      ParamByName('firstdate').AsDateTime := LMonthDateFirst;
      ParamByName('lastdate').AsDateTime := Now();
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open();
   end;
   if SystemString('HIDE_MATTER_PROFIT') = 'Y' then
   begin
     Panel7.Visible := False;
     grdMatterProfitability.Visible := False;
   end
   else
   begin
     Panel7.Visible := True;
     grdMatterProfitability.Visible := True;

     if TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'HIDE_MATTER_PROFIT') = 'Y' then
     begin
          Panel7.Visible := False;
          grdMatterProfitability.Visible := False;
     end
     else
     begin
          Panel7.Visible := True;
          grdMatterProfitability.Visible := True;
     end;
   end;
end;

procedure TfrmDashboard_Ind.tabFeesBilledShow(Sender: TObject);
begin
   with dmDashboardInd.qryFeesListBudget do
      begin
      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open();
   end;
   with dmDashboardInd.qryFeesBilledYTD do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;
   with dmDashboardInd.qryFeesBilledMonth do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;

     with dmDashboardInd.qryFeesBilledBudget do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now;
      open;
   end;


end;

procedure TfrmDashboard_Ind.tabFeesReceivedShow(Sender: TObject);
begin
  with dmDashboardInd.qryFeeReceivedMonth do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      Open();
   end;
   with dmDashboardInd.qryFeeReceivedYear do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;

      with dmDashboardInd.qryFeesReceivedBudget do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now;
      open;
   end;
   with dmDashboardInd.qryFeesReceivedGrid do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      open;
   end;
end;

procedure TfrmDashboard_Ind.tabWIPShow(Sender: TObject);
begin
   with dmDashboardInd.qryWIPFigures do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
      lblWipTotal.Caption := CurrToStrF(dmDashboardInd.qryWIPFigures.Fields.Fields[0].AsCurrency +
            dmDashboardInd.qryWIPFigures.Fields.Fields[1].AsCurrency +
            dmDashboardInd.qryWIPFigures.Fields.Fields[2].AsCurrency +
            dmDashboardInd.qryWIPFigures.Fields.Fields[3].AsCurrency +
            dmDashboardInd.qryWIPFigures.Fields.Fields[4].AsCurrency, ffCurrency, 2);
   end;

   with dmDashboardInd.qryWIPGraph do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('P1').AsInteger := 29;
      ParamByName('P2').AsInteger := 59;
      ParamByName('P3').AsInteger := 89;
      ParamByName('P4').AsInteger := 119;
      Open;
   end;

{   with dmDashboardInd.qryWIPGeneratedBudgetGraph do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('firstdate').AsDateTime := LFinDateFirst;
      ParamByName('lastdate').AsDateTime := LFinDateEnd;
      Open();
   end;  }

   with dmDashboardInd.qryWipGeneratedBudget do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();  //LFinDateEnd;
      open;
   end;
   with dmDashboardInd.qryWIPGenerated do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('month_start_date').AsDateTime := LMonthDateFirst;
      ParamByName('month_end_date').AsDateTime := trunc(Date());
      ParamByName('year_start_date').AsDateTime := LFinDateFirst;
      ParamByName('year_end_date').AsDateTime := Now();
      Open;
   end;
   with dmDashboardInd.qryWIPGeneratedGraph do
   begin
      Close;
      ParamByName('author').AsString := EmpCode;
      ParamByName('firstdate').AsDateTime := LFinDateFirst;
      ParamByName('lastdate').AsDateTime := Now();
      ParamByName('year_end_date').AsDateTime := LFinDateEnd;
      Open();
   end;  

end;

procedure TfrmDashboard_Ind.cmbEmployeePropertiesChange(Sender: TObject);
begin
//   bbtnRefresh.Click;
{   if cmbEmployee.Text <> '' then
   begin
      EmpCode := cmbEmployee.EditValue;
      SetHeadings;
      case pagMain.ActivePageIndex of
         0: tabWIP.OnShow(Sender);
         1: tabFees.OnShow(Sender);
         2: tabTopClient.OnShow(Sender);
         3: tabCalendar.OnShow(Sender);
      end;
   end;    }
end;

procedure TfrmDashboard_Ind.bbtnRefreshClick(Sender: TObject);
begin
   if cmbEmployee.Text <> '' then
   begin
      dmDashboardInd.qryAgedDebtors.Close;
      dmDashboardInd.qryAgedDebtorsGraph.Close;
      dmDashboardInd.qryAgedDebtorsMatterCnt.Close;
      dmDashboardInd.qryWIPFigures.Close;
      dmDashboardInd.qryWIPGraph.Close;
      dmDashboardInd.qryWipGeneratedBudget.Close;
      dmDashboardInd.qryWIPGenerated.Close;
      dmDashboardInd.qryWIPGeneratedGraph.Close;
      dmDashboardInd.qryWIPGeneratedBudgetGraph.Close;
      dmDashboardInd.qryHours.Close;
      dmDashboardInd.qryFeesBilledYTD.Close;
      dmDashboardInd.qryFeesBilledMonth.Close;
      dmDashboardInd.qryWIPLockup.Close;
      dmDashboardInd.qryUnbilledDisbs.Close;
      dmDashboardInd.qryDebtorLockup.Close;
      dmDashboardInd.qryLockupGraph.Close;
      dmDashboardInd.qryFeeReceivedMonth.Close;
      dmDashboardInd.qryFeeReceivedYear.Close;
      dmDashboardInd.qryFeesReceivedBudgetGraph.Close;
      dmDashboardInd.qryFeesReceivedGraph.Close;
      dmDashboardInd.qryFeesBilledGraph.Close;
      dmDashboardInd.qryFeesBilledBudgetGraph.Close;
      dmDashboardInd.qryFeesBilledBudget.Close;
      dmDashboardInd.qryFeesReceivedBudget.Close;
      dmDashboardInd.qryLockupCredSund.Close;
      dmDashboardInd.qryClientMilestones.Close;
      dmDashboardInd.qryClientCountMTD.Close;
      dmDashboardInd.qryClientCountYTD.Close;
      dmDashboardInd.qryTotalMatters.Close;
      dmDashboardInd.qryTotalClients.Close;
      dmDashboardInd.qryTopClients.Close;
      dmDashboardInd.qryMattersClosed.Close;
      dmDashboardInd.qryChargeSummary.Close;
      dmDashboardInd.qryTopReferrers.Close;
      dmDashboardInd.qryHoursYTD.Close;
      dmDashboardInd.qryFeesListBudget.Close;
      dmDashboardInd.qryFeesReceivedGrid.Close;
      EmpCode := cmbEmployee.EditValue;
      SetHeadings;
      case pagMain.ActivePageIndex of
         0: begin
               tabWIP.OnShow(Sender);
            end;
         1: begin
               tabDebtors.OnShow(Sender);
            end;
         2: begin
               tabFeesBilled.OnShow(Sender);
            end;
         3: begin
               tabFeesReceived.OnShow(Sender);
            end;
         4: begin
               tabLockup.OnShow(Sender);
            end;
         5: begin
              tabTopClient.OnShow(Sender);
            end;
         6: begin
               tabCalendar.OnShow(Sender);
            end;
      end;
      dxBDate.Caption := FormatDateTime('dddd, mmmm d, yyyy, hh:mm AM/PM', Now);
   end;
end;

procedure TfrmDashboard_Ind.DBChart5DblClick(Sender: TObject);
var
   frmFeesBilledBreakdown: TfrmFeesBilledBreakdown;
begin
   frmFeesBilledBreakdown := TfrmFeesBilledBreakdown.Create(Self);
   frmFeesBilledBreakdown.ShowModal;
   frmFeesBilledBreakdown.Free;
end;

procedure TfrmDashboard_Ind.cgartReceivedMonthlyDblClick(Sender: TObject);
var
   frmFeesRecBreakdown: TfrmFeesRecBreakdown;
begin
   frmFeesRecBreakdown := TfrmFeesRecBreakdown.Create(Self);
   frmFeesRecBreakdown.ShowModal;
   frmFeesRecBreakdown.Free;
end;

procedure TfrmDashboard_Ind.chrtWIPGeneratedDblClick(Sender: TObject);
var
   frmWIPBreakdown: TfrmWIPBreakdown;
begin
   frmWIPBreakdown := TfrmWIPBreakdown.Create(Self);
   frmWIPBreakdown.ShowModal;
   frmWIPBreakdown.Free;
end;

procedure TfrmDashboard_Ind.cmbEmployeePropertiesCloseUp(Sender: TObject);
begin
   bbtnRefresh.Click;
end;

procedure TfrmDashboard_Ind.cxBarEditItem1PropertiesEditValueChanged(
  Sender: TObject);
var
   bChecked: boolean;
begin
   bChecked := boolean(cbThreeD.EditValue);

   chartDebtors.View3D           := bChecked;
   chartWIP.View3D               := bChecked;
//   chrtWIPGenerated.View3D       := bChecked;
//   chartBilledMonthly.View3D     := bChecked;
//   chartReceivedMonthly.View3D   := bChecked;
   chartLockup.View3D            := bChecked;

end;

procedure TfrmDashboard_Ind.chrtWIPGeneratedUnDock(Sender: TObject;
  Client: TControl; NewTarget: TWinControl; var Allow: Boolean);
begin
   Allow := False;
end;

procedure TfrmDashboard_Ind.chartBilledMonthlyUnDock(Sender: TObject;
  Client: TControl; NewTarget: TWinControl; var Allow: Boolean);
begin
   Allow := False;
end;

procedure TfrmDashboard_Ind.chartReceivedMonthlyUnDock(Sender: TObject;
  Client: TControl; NewTarget: TWinControl; var Allow: Boolean);
begin
   Allow := False;
end;

procedure TfrmDashboard_Ind.chartLockupUnDock(Sender: TObject;
  Client: TControl; NewTarget: TWinControl; var Allow: Boolean);
begin
   Allow := False;
end;

procedure TfrmDashboard_Ind.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = VK_F5) then
      bbtnRefresh.Click;
end;

procedure TfrmDashboard_Ind.dxBarButton1Click(Sender: TObject);
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
      3: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink10);
         end;
      4: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink1);
         end;
      5: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink2);
         end;
      6: begin
            ComponentPrinter.Preview(True, ComponentPrinterLink3);
         end;
   end;
end;

procedure TfrmDashboard_Ind.dxBarLookupCombo1CloseUp(Sender: TObject);
begin
   bbtnRefresh.Click;
end;

procedure TfrmDashboard_Ind.chrtWIPGeneratedClickSeries(
  Sender: TCustomChart; Series: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   frmWIPBreakdown: TfrmWIPBreakdown;
   LYear: word;
   LMonthDateFirst,LMonthDateEnd: TDateTime;
begin
   if Series.Title = 'Actual Data' then
   begin
      frmWIPBreakdown := TfrmWIPBreakdown.Create(Self);
{      if (ValueIndex > 5) and (ValueIndex < 12) then
         LYear := YearOf(Date)
      else
         LYear := YearOf(IncYear(Date(),-1)); }

      LYear := CalcYear(series.ValueMarkText[ValueIndex],ValueIndex);

      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmWIPBreakdown do
      begin
         try
            FormTitle := '('+EmpCode +') Billable Time for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            Author   := EmpCode;
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;
end;

procedure TfrmDashboard_Ind.chartWIPClickSeries(Sender: TCustomChart;
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
   frmUnbilledWIP.Author := EmpCode;
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
            frmUnbilledWIP.Caption := '('+EmpCode +') Unbilled WIP - Current';
            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - :p1 AND  TRUNC(SYSDATE) ';
//            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - :p1 AND TRUNC(FEE.CREATED) <= TRUNC(SYSDATE) ';
            frmUnbilledWIP.P30Days := 29;
         end;
      1: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Unbilled WIP - 30 Days';
            frmUnbilledWIP.SQL := LSql +  'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p2) AND TRUNC(SYSDATE) - (:p1+1) ';
//            frmUnbilledWIP.SQL := LSql +  'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p2) AND TRUNC(FEE.CREATED) <= TRUNC(SYSDATE) - (:p1+1) ';
            frmUnbilledWIP.P30Days := 29;
            frmUnbilledWIP.P60Days := 59;
         end;
      2: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Unbilled WIP - 60 Days';
            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p3) AND TRUNC(SYSDATE) - (:p2+1) ';
//            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p3) AND TRUNC(FEE.CREATED) <= TRUNC(SYSDATE) - (:p2+1) ';
            frmUnbilledWIP.P60Days := 59;
            frmUnbilledWIP.P90Days := 89;
         end;
      3: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Unbilled WIP - 90 Days';
            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) between TRUNC(SYSDATE) - (:p4) AND TRUNC(SYSDATE) - (:p3+1) ';
//            frmUnbilledWIP.SQL := LSql + 'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p4) AND TRUNC(FEE.CREATED) <= TRUNC(SYSDATE) - (:p3+1) ';
            frmUnbilledWIP.P90Days := 89;
            frmUnbilledWIP.P120Days := 119;
         end;
      4: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Unbilled WIP - 120 + Days';
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

procedure TfrmDashboard_Ind.chartDebtorsClickSeries(Sender: TCustomChart;
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
   frmUnbilledWIP.Author := EmpCode;
   LSql := 'SELECT '+
           'n.BILL_TO, DISPATCHED, GENERATED, NMEMO, REFNO, FEES, '+
           'DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, '+
           'ANTD_PAID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE ,'+
           '(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(TAX,0) + nvl(UPCRED,0)) AS TOTAL ,'+
           '((nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(TAX,0) + nvl(UPCRED,0)) - '+
	        'NVL(FEES_PAID,0) +  nvl(DISB_PAID,0) + nvl(ANTD_PAID,0) + nvl(SUND_PAID,0) + nvl(TAX_PAID,0) + '+
           'NVL(FEES_WOFF,0) + nvl(DISB_WOFF,0) + nvl(ANTD_WOFF,0) + nvl(SUND_WOFF,0) + nvl(TAX_WOFF,0) + '+
           'nvl(UPCRED_PAID, 0) + nvl(UPCRED_WOFF,0)) AS OWING, UPCRED, UPCRED_PAID, SPLIT_BILL, '+
           'EXPPAYMENT, INV_NOTE '+
           'FROM  matter m, nmemo n '+
           'WHERE m.author = :author '+
           'AND n.nmatter = m.nmatter '+
           'AND n.IS_DRAFT = ''N'' '+
           'AND n.rv_type <> ''D'' '+
           'AND ((n.refno not like ''%CN'') and (n.refno not like ''%RV'')) '+
	        'AND dispatched IS NOT NULL '+
           'AND n.owing <> 0 ';
   case ValueIndex of
      0: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Aged Debtors - Current';
            frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) between (TRUNC(SYSDATE) - :p1) AND TRUNC(SYSDATE) ';
//            frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p1) AND TRUNC(n.dispatched) <= TRUNC(SYSDATE) ';
            frmUnbilledWIP.P30Days := 29;
         end;
      1: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Aged Debtors - 30 Days';
	         frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) between (TRUNC(SYSDATE) - :p2) AND (TRUNC(SYSDATE) - (:p1+1)) ';
//            frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p2) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p1+1)) ';
            frmUnbilledWIP.P30Days := 29;
            frmUnbilledWIP.P60Days := 59;
         end;
      2: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Aged Debtors - 60 Days';
	         frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) between (TRUNC(SYSDATE) - :p3) AND (TRUNC(SYSDATE) - (:p2 + 1)) ';
//            frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p3) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p2+1)) ';
            frmUnbilledWIP.P90Days := 89;
            frmUnbilledWIP.P60Days := 59;
         end;
      3: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Aged Debtors - 90 Days';
	         frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) between (TRUNC(SYSDATE) - :p4) AND (TRUNC(SYSDATE) - (:p3+1)) ';
//            frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= (TRUNC(SYSDATE) - :p4) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p3+1)) ';
            frmUnbilledWIP.P90Days := 89;
            frmUnbilledWIP.P120Days := 119;
         end;
      4: begin
            frmUnbilledWIP.Caption := '('+EmpCode +') Aged Debtors - 120+ Days';
	         frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) between TRUNC(TO_DATE(''01/01/1900'',''dd/mm/yyyy'')) AND (TRUNC(SYSDATE) - (:p4+1)) ';
//            frmUnbilledWIP.SQL :=  LSql + 'AND TRUNC(n.dispatched) >= TRUNC(TO_DATE(''01/01/1900'',''dd/mm/yyyy'')) AND TRUNC(n.dispatched) <= (TRUNC(SYSDATE) - (:p4+1)) ';
            frmUnbilledWIP.P120Days := 119;
         end;
   end;
   try
      frmUnbilledWIP.ShowModal;
   finally
      frmUnbilledWIP.Free;
   end;

end;

procedure TfrmDashboard_Ind.chartBilledMonthlyClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
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

      FYear := Copy(series.ValueMarkText[ValueIndex],Pos('-',series.ValueMarkText[ValueIndex])+1, 2);
      LYear := StrToInt('20'+ FYear);

//      LYear := CalcYear(series.ValueMarkText[ValueIndex],ValueIndex);

{      if (ValueIndex > 5) and (ValueIndex < 12) then
         LYear := YearOf(Date)
      else
         LYear := YearOf(IncYear(Date(),-1)); }

      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmUnbilledWIP do
      begin
         try
            FormTitle := '('+EmpCode +') ' + pnlFeesBilledCaption + ' for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            Author   := EmpCode;
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;
end;

procedure TfrmDashboard_Ind.chartReceivedMonthlyClickSeries(
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
      frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[3];

//      LYear := CalcYear(series.ValueMarkText[ValueIndex],ValueIndex);
      FYear := Copy(series.ValueMarkText[ValueIndex],Pos('-',series.ValueMarkText[ValueIndex])+1, 2);
      LYear := StrToInt('20'+ FYear);

//      (series.ValueMarkText[ValueIndex])

      LMonthDateFirst := EncodeDate(LYear,Months[ValueIndex],1);
      LMonthDateEnd := EndOfTheMonth(EncodeDate(LYear,Months[ValueIndex],1));

      with frmUnbilledWIP do
      begin
         try
            FormTitle := '('+EmpCode +') ' + pnlFeesReceivedCaption + ' for period ' +
                         DateTostr(LMonthDateFirst)+' to '+DateTostr(LMonthDateEnd);
            Author   := EmpCode;
            DateFrom := LMonthDateFirst;
            DateTo   := LMonthDateEnd;
            ShowModal;
         finally
            Free;
         end;
      end;
   end;
end;

procedure TfrmDashboard_Ind.chartLockupClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   frmUnbilledWIP := TfrmUnbilledWIP.Create(Self);
   frmUnbilledWIP.P30Days := 0;
   frmUnbilledWIP.P60Days := 0;
   frmUnbilledWIP.P90Days := 0;
   frmUnbilledWIP.P120Days := 0;
   case ValueIndex of
      0: begin
            with frmUnbilledWIP do
            begin
               try
                  frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[7];
                  FormTitle := '('+EmpCode +') ' + pnlLockupCaption + ' - Creditors';
                  Author   := EmpCode;
                  ShowModal;
               finally
                  Free;
               end;
            end;
         end;
      1: begin
            with frmUnbilledWIP do
            begin
               try
                  frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[8];
                  FormTitle := '('+EmpCode +') ' + pnlLockupCaption + ' - Debtors';
                  Author   := EmpCode;
                  ShowModal;
               finally
                  Free;
               end;
            end;
         end;
      2: begin
            with frmUnbilledWIP do
            begin
               try
                  frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[6];
                  FormTitle := '('+EmpCode +') ' + pnlLockupCaption + ' - Sundries';
                  Author   := EmpCode;
                  ShowModal;
               finally
                  Free;
               end;
            end;
         end;
      3: begin
            with frmUnbilledWIP do
            begin
               try
                  frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[5];
                  FormTitle := '('+EmpCode +') ' + pnlLockupCaption + ' - Unbilled Disburesements';
                  Author   := EmpCode;
                  ShowModal;
               finally
                  Free;
               end;
            end;
         end;
      4: begin
            with frmUnbilledWIP do
            begin
               try
                  frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[4];
                  FormTitle := '('+EmpCode +') ' + pnlLockupCaption + ' - WIP Lockup';
                  Author   := EmpCode;
                  ShowModal;
               finally
                  Free;
               end;
            end;
         end;
   end;

end;

procedure TfrmDashboard_Ind.chartDebtorsClick(Sender: TObject);
begin
   frmUnbilledWIP := TfrmUnbilledWIP.Create(Self);
   frmUnbilledWIP.P30Days := 0;
   frmUnbilledWIP.P60Days := 0;
   frmUnbilledWIP.P90Days := 0;
   frmUnbilledWIP.P120Days := 0;
   with frmUnbilledWIP do
   begin
      try
         frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[9];
         FormTitle := '('+EmpCode +') ' + pnlLockupCaption + ' - Debtors';
         Author   := EmpCode;
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

procedure TfrmDashboard_Ind.chartWIPClick(Sender: TObject);
begin
   frmUnbilledWIP := TfrmUnbilledWIP.Create(Self);
   frmUnbilledWIP.P30Days := 0;
   frmUnbilledWIP.P60Days := 0;
   frmUnbilledWIP.P90Days := 0;
   frmUnbilledWIP.P120Days := 0;
   with frmUnbilledWIP do
   begin
      try
         frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[10];
         FormTitle := '('+EmpCode +') ' + pnlLockupCaption + ' - Unbilled WIP';
         Author   := EmpCode;
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

procedure TfrmDashboard_Ind.chartBilledMonthlyClick(Sender: TObject);
var
   frmUnbilledWIP: TfrmUnbilledWIP;
begin
   frmUnbilledWIP := TfrmUnbilledWIP.Create(Self);
   frmUnbilledWIP.lvAged.GridView := frmUnbilledWIP.grdAged.Views[12];

   with frmUnbilledWIP do
   begin
      try
         FormTitle := '('+EmpCode +') ' + pnlFeesBilledCaption + ' for period ' +
                      DateTostr(LFinDateFirst)+' to '+DateTostr(LFinDateEnd);
         Author   := EmpCode;
         DateFrom := LFinDateFirst;
         DateTo   := LFinDateEnd;
         ShowModal;
      finally
         Free;
      end;
   end;
end;

function TfrmDashboard_Ind.CalcYear(ASeriesCaption: string; AIndex: integer): Integer;
var
  CalcedYear: string;
begin
  Result := 0;
  CalcedYear := Copy(ASeriesCaption,Pos('-',ASeriesCaption)+1, 2);
  CalcedYear := '20'+ CalcedYear;
  case AIndex of
    0..5: begin
             if StrToInt(CalcedYear) = YearOf(Date) then
                Result := StrToInt(CalcedYear)
             else if StrToInt(CalcedYear) < YearOf(Date) then
                Result := StrToInt(CalcedYear) - 1;
          end;
    6..11:begin
             if StrToInt(CalcedYear) = YearOf(Date) then
                Result := StrToInt(CalcedYear)
             else if StrToInt(CalcedYear) < YearOf(Date) then
                Result := StrToInt(CalcedYear) - 1;
          end;
  end;
end;

procedure TfrmDashboard_Ind.tabLockUpShow(Sender: TObject);
begin
       with dmDashboardInd.qryWIPLockup do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
//      ParamByName('start_date').AsDateTime := LFinDateFirst;   //StrToDate('1/1/1900');
//      ParamByName('end_date').AsDateTime := Now();
      open;
      WipLockup := FieldByName('Month_Total'). AsCurrency;
   end;
   with dmDashboardInd.qryUnbilledDisbs do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
//      ParamByName('start_date').AsDateTime := LFinDateFirst;
//      ParamByName('end_date').AsDateTime := Now();
      open;
      UnbillDisbLockup := FieldByName('unbill_disb'). AsCurrency;
   end;
   with dmDashboardInd.qryDebtorLockup do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
//      ParamByName('start_date').AsDateTime := LFinDateFirst;
//      ParamByName('end_date').AsDateTime := Now();
      open;
      DebtorLockup := FieldByName('debtor_amount'). AsCurrency;
   end;
     with dmDashboardInd.qryLockupCredSund do
   begin
      ParamByName('author').AsString := EmpCode;
      Open;
      SundryLockup := FieldByName('sund_month_total'). AsCurrency;
      CreditorLockup := FieldByName('cred_month_total'). AsCurrency;
   end;

   teLockupTotal.Caption :=  CurrToStrF(DebtorLockup + UnbillDisbLockup + WipLockup + CreditorLockup + SundryLockup, ffCurrency, 2);

   with dmDashboardInd.qryLockupGraph do
   begin
//      Close;
      ParamByName('author').AsString := EmpCode;
//      ParamByName('start_date').AsDateTime := LFinDateFirst;
//      ParamByName('end_date').AsDateTime := Now();
      Open();
   end;
end;

function TfrmDashboard_Ind.GetEmpDailyUnitsBudget(ADate: TDateTime): integer;
begin
   with dmAxiom.qryDailyUnitsBudget do
   begin
      Close;
      ParamByName('employee').AsString := cmbEmployee.EditValue;
      ParamByName('rpt_date').AsDateTime := ADate;
      Open;
      Result := FieldByName('time').AsInteger;
      Close;
   end;

{   with dmDashboardInd.procDailyBudget do
   begin
      ParamByName('p_employee').AsString := cmbEmployee.EditValue;
      ParamByName('p_fromdate').AsDate := StartOfTheMonth(ADate);
      ParamByName('p_todate').AsDate := EndOfTheMonth(ADate);
      Execute;
      Result := ParamByName('result').AsInteger;
   end;  }
end;

end.
