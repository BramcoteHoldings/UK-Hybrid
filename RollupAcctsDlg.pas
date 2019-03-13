unit RollupAcctsDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, ComCtrls, DBCtrls, DB, MemDS, DBAccess, OracleUniProvider, Uni;

type
  TfrmRollupAccounts = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    dbtEntityCode: TDBText;
    dbtEntityName: TDBText;
    Label2: TLabel;
    dbtCurrentRollupDate: TDBText;
    Label3: TLabel;
    dtmRollup: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRollupAccounts: TfrmRollupAccounts;

implementation

uses Entitys, AxiomData;

{$R *.dfm}

end.
