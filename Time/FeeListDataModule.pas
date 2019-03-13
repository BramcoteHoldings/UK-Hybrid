unit FeeListDataModule;

interface

uses
  SysUtils, Classes, OracleUniProvider, Uni, DBAccess, MemDS, DB;

type
  TdmFeeList = class(TDataModule)
    qBudgetGraphAuthQtrWIP: TUniQuery;
    qBudgetGraphAuthYrWIP: TUniQuery;
    qBudgetGraphDeptYrWIP: TUniQuery;
    qBudgetGraphDeptQtrWIP: TUniQuery;
    qBudgetGraphDeptMthWIP: TUniQuery;
    qBudgetGraphAuthMonthWIP: TUniQuery;
    qPartner: TUniQuery;
    dsPartner: TDataSource;
    dsScaleCost: TDataSource;
    qFeeEarners: TUniQuery;
    qDelete: TUniQuery;
    qWorked: TUniQuery;
    qUnbilled: TUniQuery;
    dsFees: TUniDataSource;
    dsFeeEarners: TDataSource;
    qBilled: TUniQuery;
    qScaleCost: TUniQuery;
    dsAuthorType: TDataSource;
    qAuthorType: TUniQuery;
    qEntity: TUniQuery;
    dsEntity: TDataSource;
    dsBranch: TDataSource;
    qBranch: TUniQuery;
    qDepartment: TUniQuery;
    dsDepartment: TDataSource;
    qFeeType: TUniQuery;
    dsFeeType: TDataSource;
    qBudgetGraphAuthMonthFee: TUniQuery;
    qBudgetGraphDeptMonthFee: TUniQuery;
    qBudgetGraphAuthMthHr: TUniQuery;
    qBdgtGraphAuthQtrFee: TUniQuery;
    qBdgtGraphDeptQtrFee: TUniQuery;
    qBdgtGraphDeptMthHr: TUniQuery;
    qBdgtGraphAuthQtrHr: TUniQuery;
    qBdgtGraphDeptQtrHr: TUniQuery;
    qBdgtGraphAuthYrFee: TUniQuery;
    qBdgtGraphDeptYrFee: TUniQuery;
    qBdgtGraphAuthYrHr: TUniQuery;
    qBdgtGraphDeptYrHr: TUniQuery;
    qFees: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFeeList: TdmFeeList;

implementation

{$R *.dfm}

uses
   AxiomData;

end.
