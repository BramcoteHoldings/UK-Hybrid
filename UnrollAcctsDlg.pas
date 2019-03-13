unit UnrollAcctsDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, DBCtrls, DB, OracleUniProvider, Uni, DBAccess, MemDS, Grids,
  DBGrids;

type
  TfrmUnrollAccounts = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    dbtEntityCode: TDBText;
    dbtEntityName: TDBText;
    Label2: TLabel;
    dbtCurrentRollupDate: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    dbtPreviousRollup: TDBText;
    qryPreviousRollup: TUniQuery;
    dsPreviousRollup: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnrollAccounts: TfrmUnrollAccounts;

implementation

uses
  Entitys, AxiomData;

{$R *.dfm}

procedure TfrmUnrollAccounts.FormShow(Sender: TObject);
begin
  // show the previous rollover date
  qryPreviousRollup.Open;

end;

procedure TfrmUnrollAccounts.FormDestroy(Sender: TObject);
begin
  qryPreviousRollup.Close
end;

end.
