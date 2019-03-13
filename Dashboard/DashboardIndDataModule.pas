unit DashboardIndDataModule;

interface

uses
  SysUtils, Classes, DB, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TdmDashboardInd = class(TDataModule)
    qryAgedDebtors: TUniQuery;
    qryAgedDebtorsADJ0: TFloatField;
    qryAgedDebtorsADJ1: TFloatField;
    qryAgedDebtorsADJ2: TFloatField;
    qryAgedDebtorsADJ3: TFloatField;
    qryAgedDebtorsADJ10: TFloatField;
    qryAgedDebtorsTOTALAGED: TFloatField;
    dsAgedDebtors: TUniDataSource;
    qryAgedDebtorsMatterCnt: TUniQuery;
    qryAgedDebtorsGraph: TUniQuery;
    qryFeesBilledMonth: TUniQuery;
    qryFeesBilledMonthNVLSUMAMOUNT0: TFloatField;
    dsFeesBilledMonth: TUniDataSource;
    dsAgedDebtorsMatterCnt: TUniDataSource;
    qryFeesBilledBudget: TUniQuery;
    qryFeesBilledBudgetMONTH_BUDGET: TFloatField;
    qryFeesBilledBudgetYEAR_BUDGET: TFloatField;
    qryFeesReceivedBudget: TUniQuery;
    qryFeesReceivedBudgetMONTH_BUDGET: TFloatField;
    qryFeesReceivedBudgetYEAR_BUDGET: TFloatField;
    qryWIPFigures: TUniQuery;
    qryWIPFiguresDSDesigner0days: TFloatField;
    qryWIPFiguresDSDesigner30days: TFloatField;
    qryWIPFiguresDSDesigner60days: TFloatField;
    qryWIPFiguresDSDesigner90days: TFloatField;
    qryWIPFiguresDSDesigner120days: TFloatField;
    dsWIPFigures: TUniDataSource;
    qryWipGeneratedBudget: TUniQuery;
    qryWipGeneratedBudgetMONTH_BUDGET: TFloatField;
    qryWipGeneratedBudgetYEAR_BUDGET: TFloatField;
    qryWIPGraph: TUniQuery;
    dsWipGeneratedBudget: TUniDataSource;
    dsFeesReceivedBudget: TUniDataSource;
    dsFeesBilledBudget: TUniDataSource;
    qryFeesBilledYTD: TUniQuery;
    qryFeesBilledYTDNVLSUMAMOUNT0: TFloatField;
    dsFeesBilledYTD: TUniDataSource;
    dsFeeReceivedMonth: TUniDataSource;
    qryFeeReceivedMonth: TUniQuery;
    qryFeeReceivedYear: TUniQuery;
    qryFeesBilledBudgetGraph: TUniQuery;
    qryFeesBilledGraph: TUniQuery;
    qryFeesReceivedGraph: TUniQuery;
    dsFeeReceivedYear: TUniDataSource;
    qryFeesReceivedBudgetGraph: TUniQuery;
    dsMattersClosed: TUniDataSource;
    qryMattersClosed: TUniQuery;
    dsMattersOpened: TUniDataSource;
    qryMattersOpened: TUniQuery;
    qryMattersOpenedMTD: TFloatField;
    qryMattersOpenedYTD: TFloatField;
    qryWIPGeneratedBudgetGraph: TUniQuery;
    qryWIPGeneratedGraph: TUniQuery;
    dsWIPGenerated: TUniDataSource;
    qryWIPGenerated: TUniQuery;
    qryWIPGeneratedMONTH_TOTAL: TFloatField;
    qryWIPGeneratedYEAR_TOTAL: TFloatField;
    qryWIPLockup: TUniQuery;
    qryWIPLockupMONTH_TOTAL: TFloatField;
    qryUnbilledDisbs: TUniQuery;
    qryUnbilledDisbsUNBILL_DISB: TFloatField;
    dsUnbilledDisbs: TUniDataSource;
    dsWIPLockup: TUniDataSource;
    qryClientMilestones: TUniQuery;
    qryLockupGraph: TUniQuery;
    qryDebtorLockup: TUniQuery;
    qryDebtorLockupDEBTOR_AMOUNT: TFloatField;
    dsDebtorLockup: TUniDataSource;
    dsClientMilestones: TUniDataSource;
    qryTotalMatters: TUniQuery;
    dsTotalMatters: TUniDataSource;
    qryTopClients: TUniQuery;
    dsTopClients: TUniDataSource;
    dsTopReferrers: TUniDataSource;
    qryTopReferrers: TUniQuery;
    dsClientCountMTD: TUniDataSource;
    dsTotalClients: TUniDataSource;
    qryTotalClients: TUniQuery;
    qryClientCountMTD: TUniQuery;
    dsClientCountYTD: TUniDataSource;
    qryClientCountYTD: TUniQuery;
    qryClientCountYTDCOUNTCLIENTNCLIENT: TFloatField;
    qryChargeSummary: TUniQuery;
    dsChargeSummary: TUniDataSource;
    qryHours: TUniQuery;
    dsqryFeesBilledGraph: TUniDataSource;
    dsFeesReceivedGraph: TUniDataSource;
    dsWIPGeneratedGraph: TUniDataSource;
    qryLockupCredSund: TUniQuery;
    dsLockupCredSund: TUniDataSource;
    qryLockupCredSundCRED_MONTH_TOTAL: TFloatField;
    qryLockupCredSundSUND_MONTH_TOTAL: TFloatField;
    qryHoursYTD: TUniQuery;
    qryFeeReceivedYearFE_RECEIPT: TFloatField;
    qryFeeReceivedMonthFE_RECEIPT: TFloatField;
    qryFeesListBudget: TUniQuery;
    dsFeesListBudget: TUniDataSource;
    qryFeesReceivedGrid: TUniQuery;
    dsFeesReceivedGrid: TUniDataSource;
    procDailyBudget: TUniStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDashboardInd: TdmDashboardInd;

implementation

uses
   AxiomData;

{$R *.dfm}

end.
