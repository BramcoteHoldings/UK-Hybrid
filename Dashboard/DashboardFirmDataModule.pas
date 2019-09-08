unit DashboardFirmDataModule;

interface

uses
  SysUtils, Classes, DB, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TdmDashboardFirm = class(TDataModule)
    qryAgedDebtors: TUniQuery;
    dsAgedDebtors: TUniDataSource;
    qryAgedDebtorsMatterCnt: TUniQuery;
    qryFeesBilledMonth: TUniQuery;
    dsFeesBilledMonth: TUniDataSource;
    qryFeesBilledYTD: TUniQuery;
    dsFeesBilledYTD: TUniDataSource;
    qryWipGeneratedBudget: TUniQuery;
    qryWipGeneratedBudgetMONTH_BUDGET: TFloatField;
    qryWipGeneratedBudgetYEAR_BUDGET: TFloatField;
    qryWIPFigures: TUniQuery;
    dsWIPFigures: TUniDataSource;
    qryWIPGraph: TUniQuery;
    qryBFeesReceivedBudgetGraph: TUniQuery;
    dsAgedDebtorsMatterCnt: TUniDataSource;
    qryAgedDebtorsGraph: TUniQuery;
    dsFeeReceivedMonth: TUniDataSource;
    qryFeeReceivedMonth: TUniQuery;
    qryFeeReceivedYear: TUniQuery;
    dsFeeReceivedYear: TUniDataSource;
    qryEstimatedfees: TUniQuery;
    qryEstimatedfeesMTD: TFloatField;
    qryEstimatedfeesYTD: TFloatField;
    dsEstimatedfees: TUniDataSource;
    dsTopClients: TUniDataSource;
    dsTopReferrers: TUniDataSource;
    qryTopReferrers: TUniQuery;
    dsClientCountMTD: TUniDataSource;
    qryClientCountMTD: TUniQuery;
    dsClientCountYTD: TUniDataSource;
    qryClientCountYTD: TUniQuery;
    dsTotalMatters: TUniDataSource;
    qryTotalMatters: TUniQuery;
    qryGraphWIPGenerated: TUniQuery;
    dsWIPLockup: TUniDataSource;
    qryWIPLockup: TUniQuery;
    qryUnbilledDisbs: TUniQuery;
    qryUnbilledDisbsUNBILL_DISB: TFloatField;
    dsUnbilledDisbs: TUniDataSource;
    qrytotal_wip: TUniQuery;
    qrytotal_wipTOTAL_WIP: TFloatField;
    dstotal_wip: TUniDataSource;
    qryLockupGraph: TUniQuery;
    qryDebtorLockup: TUniQuery;
    qryDebtorLockupDEBTOR_AMOUNT: TFloatField;
    dsDebtorLockup: TUniDataSource;
    qryProfit_Loss: TUniQuery;
    dsProfit_Loss: TUniDataSource;
    qryChargeSummary: TUniQuery;
    dsChargeSummary: TUniDataSource;
    qryFirmCreditors: TUniQuery;
    qryFirmCreditorsNVLSUMOWING0: TFloatField;
    dsFirmCreditors: TUniDataSource;
    qryTrustCashFlow: TUniQuery;
    dsMatterProfitability: TUniDataSource;
    qryMatterProfitability: TUniQuery;
    qryPercMatterProfitabilityPercent: TUniQuery;
    qryCashflow: TUniQuery;
    qryTopClients: TUniQuery;
    qryWIPGenerated: TUniQuery;
    qryWIPGeneratedMONTH_TOTAL: TFloatField;
    qryWIPGeneratedYEAR_TOTAL: TFloatField;
    dsWIPGenerated: TUniDataSource;
    qryWIPGeneratedBudgetGraph: TUniQuery;
    qryClientMilestones: TUniQuery;
    dsClientMilestones: TUniDataSource;
    qryMattersOpened: TUniQuery;
    qryMattersOpenedMTD: TFloatField;
    qryMattersOpenedYTD: TFloatField;
    dsMattersOpened: TUniDataSource;
    qryClientTotalAmountMTD: TUniQuery;
    qryClientTotalAmountMTDNVLSUMESTIMATEDFEE0: TFloatField;
    dsClientTotalAmountMTD: TUniDataSource;
    qryClientTotalAmountYTD: TUniQuery;
    dsClientTotalAmountYTD: TUniDataSource;
    qryFeesReceivedGraph: TUniQuery;
    qryAgedDebtorsTOTALAGED: TFloatField;
    qryAgedDebtorsADJ0: TFloatField;
    qryAgedDebtorsADJ1: TFloatField;
    qryAgedDebtorsADJ2: TFloatField;
    qryAgedDebtorsADJ3: TFloatField;
    qryAgedDebtorsADJ10: TFloatField;
    qryWIPFiguresTOTALWIP: TFloatField;
    qryWIPFiguresADJ0: TFloatField;
    qryWIPFiguresADJ1: TFloatField;
    qryWIPFiguresADJ2: TFloatField;
    qryWIPFiguresADJ3: TFloatField;
    qryWIPFiguresADJ10: TFloatField;
    qryWIPGraphDSDesigner1: TFloatField;
    qryWIPGraphCURRENT: TStringField;
    qryWIPGraphAPAID0: TFloatField;
    dsWipGeneratedBudget: TUniDataSource;
    qryGraphWIPGeneratedUNBILLED: TFloatField;
    qryGraphWIPGeneratedVIEWDATE: TStringField;
    qryFeesBilledGraph: TUniQuery;
    qryFeesBilledBudgetGraph: TUniQuery;
    dsLockupGraph: TUniDataSource;
    qryFeesReceivedBudget: TUniQuery;
    qryFeeReceivedYearFE_RECEIPT: TFloatField;
    qryFeeReceivedMonthFE_RECEIPT: TFloatField;
    qryBilledFeesBudget: TUniQuery;
    qryBilledFeesBudgetMONTH_BUDGET: TFloatField;
    qryBilledFeesBudgetYEAR_BUDGET: TFloatField;
    dsBilledFeesBudget: TUniDataSource;
    qryFeesBilledMonthNVLSUMAMOUNT0: TFloatField;
    qryFeesBilledYTDNVLSUMAMOUNT0: TFloatField;
    qryFeesReceivedBudgetMONTH_BUDGET: TFloatField;
    qryFeesReceivedBudgetYEAR_BUDGET: TFloatField;
    dsFeesReceivedBudget: TUniDataSource;
    qryClientTotalAmountYTDNVLSUMESTIMATEDFEE0: TFloatField;
    qryMattersClosed: TUniQuery;
    dsMattersclosed: TUniDataSource;
    dsGraphWIPGenerated: TUniDataSource;
    qryTopClientsPY: TUniQuery;
    dsTopClientsPY: TUniDataSource;
    qryTopReferrersPY: TUniQuery;
    dsTopReferrersPY: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDashboardFirm: TdmDashboardFirm;

implementation

{$R *.dfm}

uses
   AxiomData;

end.
