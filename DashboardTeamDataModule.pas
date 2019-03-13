unit DashboardTeamDataModule;

interface

uses
  SysUtils, Classes, DB, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TdmDasboardTeam = class(TDataModule)
    qryAgedDebtorsMatterCnt: TUniQuery;
    qryWipGeneratedBudget: TUniQuery;
    qryWipGeneratedBudgetMONTH_BUDGET: TFloatField;
    qryWipGeneratedBudgetYEAR_BUDGET: TFloatField;
    qryAgedDebtorsGraph: TUniQuery;
    dsAgedDebtorsMatterCnt: TUniDataSource;
    qryAgedDebtors: TUniQuery;
    qryAgedDebtorsADJ0: TFloatField;
    qryAgedDebtorsADJ1: TFloatField;
    qryAgedDebtorsADJ2: TFloatField;
    qryAgedDebtorsADJ3: TFloatField;
    qryAgedDebtorsADJ10: TFloatField;
    dsAgedDebtors: TUniDataSource;
    qryFeesBilledMonth: TUniQuery;
    dsFeesBilledMonth: TUniDataSource;
    dsFeesBilledYTD: TUniDataSource;
    qryFeesBilledYTD: TUniQuery;
    qryFeeReceivedMonth: TUniQuery;
    dsFeeReceivedMonth: TUniDataSource;
    qryFeesBilledGraph: TUniQuery;
    qryFeesBilledBudgetGraph: TUniQuery;
    qryFeesReceivedBudgetGraph: TUniQuery;
    qryFeesReceivedGraph: TUniQuery;
    dsFeeReceivedYear: TUniDataSource;
    qryFeeReceivedYear: TUniQuery;
    dsBilledFeesBudget: TUniDataSource;
    qryBilledFeesBudget: TUniQuery;
    qryBilledFeesBudgetMONTH_BUDGET: TFloatField;
    qryBilledFeesBudgetYEAR_BUDGET: TFloatField;
    dsWipGeneratedBudget: TUniDataSource;
    dsWIPFigures: TUniDataSource;
    qryWIPFigures: TUniQuery;
    qryWIPGraph: TUniQuery;
    qryMattersOpened: TUniQuery;
    qryMattersOpenedMTD: TFloatField;
    qryMattersOpenedYTD: TFloatField;
    qryClientMilestones: TUniQuery;
    dsFeesReceivedBudget: TUniDataSource;
    qryFeesReceivedBudget: TUniQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    qryWIPGenerated: TUniQuery;
    qryWIPGeneratedMONTH_TOTAL: TFloatField;
    qryWIPGeneratedYEAR_TOTAL: TFloatField;
    qryWIPLockup: TUniQuery;
    qryWIPLockupMONTH_TOTAL: TFloatField;
    dsWIPGenerated: TUniDataSource;
    dsWIPLockup: TUniDataSource;
    qryWIPGeneratedGraph: TUniQuery;
    qryLockupGraph: TUniQuery;
    dsDebtorLockup: TUniDataSource;
    qryDebtorLockup: TUniQuery;
    qryWIPGeneratedBudgetGraph: TUniQuery;
    qryChargeSummary: TUniQuery;
    dsChargeSummary: TUniDataSource;
    qryMatterProfitability: TUniQuery;
    dsMatterProfitability: TUniDataSource;
    qryTotalClients: TUniQuery;
    dsTotalClients: TUniDataSource;
    dsClientCountMTD: TUniDataSource;
    qryClientCountMTD: TUniQuery;
    dsClientCountYTD: TUniDataSource;
    qryClientCountYTD: TUniQuery;
    dsClientMilestones: TUniDataSource;
    qryTotalMatters: TUniQuery;
    dsTotalMatters: TUniDataSource;
    qryTopReferrers: TUniQuery;
    dsTopReferrers: TUniDataSource;
    dsTopClients: TUniDataSource;
    qryTopClients: TUniQuery;
    dsMattersClosed: TUniDataSource;
    qryMattersClosed: TUniQuery;
    dsMattersOpened: TUniDataSource;
    qryUnbilledDisbs: TUniQuery;
    qryUnbilledDisbsUNBILL_DISB: TFloatField;
    dsUnbilledDisbs: TUniDataSource;
    qryCreditorsLockup: TUniQuery;
    dsCreditorsLockup: TUniDataSource;
    qrySundryLockup: TUniQuery;
    dsSundryLockup: TUniDataSource;
    qryWIPFiguresDSDesigner0days: TFloatField;
    qryWIPFiguresDSDesigner30days: TFloatField;
    qryWIPFiguresDSDesigner60days: TFloatField;
    qryWIPFiguresDSDesigner90days: TFloatField;
    qryWIPFiguresDSDesigner120days: TFloatField;
    qryAgedDebtorsTOTALAGED: TFloatField;
    qryMatterProfitabilityDESCR: TStringField;
    qryMatterProfitabilityTOTAL: TFloatField;
    qryDebtorLockupDEBTOR_AMOUNT: TFloatField;
    qryCreditorsLockupCRED_MONTH_TOTAL: TFloatField;
    qrySundryLockupSUND_MONTH_TOTAL: TFloatField;
    qryFeeReceivedYearFE_RECEIPT: TFloatField;
    qryFeeReceivedMonthFE_RECEIPT: TFloatField;
    qryFeesBilledYTDFEES: TFloatField;
    qryFeesBilledMonthFEES: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDasboardTeam: TdmDasboardTeam;

implementation

{$R *.dfm}

uses
   AxiomData;

end.
