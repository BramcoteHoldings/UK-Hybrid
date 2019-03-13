unit FeesBilledBreakdown;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxLookAndFeels, Menus, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls;

type
  TfrmFeesBilledBreakdown = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FEES_PAID: TcxGridDBColumn;
    cxGrid1DBTableView1DECODETO_CHARSYSTEM_DATEMM172839410511612718293104115126: TcxGridDBColumn;
    Panel1: TPanel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    FAuthor: string;
  public
    { Public declarations }
    property Author: string read FAuthor write FAuthor;
  end;

var
  frmFeesBilledBreakdown: TfrmFeesBilledBreakdown;

implementation

uses AxiomData, DashboardIndDataModule;

{$R *.dfm}

procedure TfrmFeesBilledBreakdown.cxButton1Click(Sender: TObject);
begin
   close;
end;

end.
