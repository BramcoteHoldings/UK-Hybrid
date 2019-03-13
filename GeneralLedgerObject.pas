unit GeneralLedgerObject;

interface

uses
  SysUtils, Classes, Windows;

type
  TGeneralLedgerObj = class(TObject)

  private
    fsChart    : String;
    fsLongDesc : String;
    fsReason   : String;
    fsTaxCode  : String;
    fsType     : String;

    fiDebit    : Double;
    fiCredit   : Double;

    fcTax      : Currency;

    procedure setAmount(iAmount : Double);

    function IsDebit : Boolean;
    function getAmount : Double;

  public
    property Chart       : String read fsChart write fsChart;
    property Description : String read fsLongDesc write fsLongDesc;
    property Reason      : String read fsReason write fsReason;
    property TaxCode     : String read fsTaxCode write fsTaxCode;
    property ChartType   : String read fsType write fsType;
    property Debit       : Double read fiDebit write fiDebit;
    property Credit      : Double read fiCredit write fiCredit;
    property Tax         : Currency read fcTax write fcTax;
    property Amount      : Double read getAmount write setAmount;

    function HasTax : Boolean;

    constructor Create;
    destructor Destroy; override;

  end;



implementation



constructor TGeneralLedgerObj.Create;
begin
  inherited;

end;



destructor TGeneralLedgerObj.Destroy;
begin

  inherited;

end;






function TGeneralLedgerObj.IsDebit : Boolean;
begin
  Result := (fiDebit <> 0);

end;




function TGeneralLedgerObj.HasTax : Boolean;
begin
  Result := (fcTax <> 0);

end;




function TGeneralLedgerObj.getAmount : Double;
begin
  if (IsDebit) then
    Result := fiDebit
  else
    Result := fiCredit;

end;



procedure TGeneralLedgerObj.setAmount(iAmount : Double);
begin
  if (IsDebit) then
    fiDebit := iAmount
  else
    fiCredit := iAmount;

end;




end.
