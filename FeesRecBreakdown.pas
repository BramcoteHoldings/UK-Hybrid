unit FeesRecBreakdown;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLookAndFeels, Menus, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls;

type
  TfrmFeesRecBreakdown = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FEES_PAID: TcxGridDBColumn;
    cxGrid1DBTableView1TO_CHARSYSTEM_DATEMONYYYY: TcxGridDBColumn;
    Panel1: TPanel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFeesRecBreakdown: TfrmFeesRecBreakdown;

implementation

uses AxiomData, DashboardIndDataModule;

{$R *.dfm}

procedure TfrmFeesRecBreakdown.cxButton1Click(Sender: TObject);
begin
   Close;
end;

end.
