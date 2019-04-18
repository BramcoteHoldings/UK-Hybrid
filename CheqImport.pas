unit CheqImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  OracleUniProvider, Uni, DBAccess, MemDS, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCurrencyEdit, Menus, cxLookAndFeels, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls,
  dxDateRanges;

type
  TfrmChequeImport = class(TForm)
    grdChequeImportLevel1: TcxGridLevel;
    grdChequeImport: TcxGrid;
    qryCheques: TUniQuery;
    dsCheques: TUniDataSource;
    tvChequeImport: TcxGridDBBandedTableView;
    tvChequeImportCREATED: TcxGridDBBandedColumn;
    tvChequeImportCHQNO: TcxGridDBBandedColumn;
    tvChequeImportPAYEE: TcxGridDBBandedColumn;
    tvChequeImportDESCR: TcxGridDBBandedColumn;
    tvChequeImportNCHEQUE: TcxGridDBBandedColumn;
    tvChequeImportSELECT: TcxGridDBBandedColumn;
    tvChequeImportAMOUNT: TcxGridDBBandedColumn;
    Panel1: TPanel;
    btnSelect: TcxButton;
    btnCancel: TcxButton;
    procedure btnSelectClick(Sender: TObject);
  private
    { Private declarations }
    FNCheque: string;
    FFromButton:  boolean;
  public
    { Public declarations }
    property pNCheque: string read FNCheque write FNCheque;
    property FromButton: boolean read FFromButton write FFromButton default False;
  end;

var
  frmChequeImport: TfrmChequeImport;

implementation

{$R *.dfm}

uses
   AxiomData, miscfunc;

procedure TfrmChequeImport.btnSelectClick(Sender: TObject);
var
   ProcessSelected: boolean;
   Row: integer;
begin
   if not FFromButton then
   begin
       ProcessSelected := False;
       for Row := 0 to tvChequeImport.DataController.RecordCount - 1 do
       begin
          tvChequeImport.DataController.FocusedRowIndex := Row;
          if tvChequeImport.DataController.GetValue(Row, tvChequeImportSELECT.Index) = True then
          begin
             ProcessSelected := True;
             FNCheque := string(tvChequeImportNCHEQUE.EditValue);
          end;
       end;
       if (not ProcessSelected) then
       begin
          MsgWarn('Please select Cheque to import.');
          Exit;
       end;
   end;
end;

end.
