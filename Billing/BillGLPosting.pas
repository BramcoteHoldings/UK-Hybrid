unit BillGLPosting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBAccess, OracleUniProvider, Uni, MemDS, StdCtrls, Buttons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxContainer, cxGridExportLink,
  cxLabel, cxDBLabel, Vcl.DBCtrls, cxCurrencyEdit, cxNavigator;

type
  TfrmBillGLPostings = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    tvBillGLPostings: TcxGridDBTableView;
    lvBillGLPostings: TcxGridLevel;
    grdBillGLPostings: TcxGrid;
    BitBtn1: TBitBtn;
    qryBillGLPostings: TUniQuery;
    dsBillGLPostings: TUniDataSource;
    tvBillGLPostingsDESCR: TcxGridDBColumn;
    tvBillGLPostingsCOMPONENT_CODE_DISPLAY: TcxGridDBColumn;
    tvBillGLPostingsCREATED_1: TcxGridDBColumn;
    tvBillGLPostingsDESCR_1: TcxGridDBColumn;
    tvBillGLPostingsAMOUNT: TcxGridDBColumn;
    tvBillGLPostingsTAX: TcxGridDBColumn;
    Label1: TLabel;
    qryBillTotal: TUniQuery;
    dsBillTotal: TUniDataSource;
    qryBillTotalTOTAL: TFloatField;
    DBText1: TDBText;
    btnExportToExcel: TBitBtn;
    OpenDialog: TOpenDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnExportToExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBillGLPostings: TfrmBillGLPostings;

implementation

{$R *.dfm}

uses
   AxiomData;

procedure TfrmBillGLPostings.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmBillGLPostings.btnExportToExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,grdBillGLPostings, True, True,True,'xls');
   end;
end;

procedure TfrmBillGLPostings.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   qryBillTotal.Close;
   qryBillGLPostings.Close;
end;

end.
