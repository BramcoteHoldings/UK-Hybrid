unit DebtorStatusList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, DBAccess, MemDS, Grids, DBGrids, ToolWin,
  ActnMan, ActnCtrls, ActnList, ImgList, DBActns, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, dxBar, dxBarDBNav,
  cxColorComboBox, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator;

type
  TfmDebtorStatusList = class(TForm)
    ImageList: TImageList;
    tDebtorStatus: TUniTable;
    dsDebtorStatus: TUniDataSource;
    tDebtorStatusDESCRIPTION: TStringField;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    dbgDebtorStatus: TcxGrid;
    dbgDebtorStatusLevel1: TcxGridLevel;
    tvDebtorStatus: TcxGridDBTableView;
    tvDebtorStatusDESCRIPTION: TcxGridDBColumn;
    tvDebtorStatusROW_COLOUR: TcxGridDBColumn;
    tDebtorStatusROW_COLOUR: TFloatField;
    tDebtorStatusSTOP_WORK: TStringField;
    tvDebtorStatusColumn1: TcxGridDBColumn;
    tDebtorStatusDEBTORSTATUS: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDebtorStatusList: TfmDebtorStatusList;

implementation

uses AxiomData, miscfunc;

{$R *.dfm}

procedure TfmDebtorStatusList.FormCreate(Sender: TObject);
begin
  tDebtorStatus.Open();
end;

procedure TfmDebtorStatusList.FormDestroy(Sender: TObject);
begin
  tDebtorStatus.Close();
end;

procedure TfmDebtorStatusList.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfmDebtorStatusList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

end.
