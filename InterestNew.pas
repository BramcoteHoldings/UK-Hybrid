unit InterestNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, DBAccess, MemDS, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, StdCtrls, Menus, ImgList, ComCtrls, ToolWin,
  MaintAncestor, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxBar, dxBarDBNav, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator;

type
  TfrmInterestNew = class(TForm)
    dsInterest: TUniDataSource;
    grdInterestDBTableView1: TcxGridDBTableView;
    grdInterestLevel1: TcxGridLevel;
    grdInterest: TcxGrid;
    grdInterestDBTableView1INTEREST: TcxGridDBColumn;
    grdInterestDBTableView1DESCR: TcxGridDBColumn;
    qryInterest: TUniQuery;
    ilstToolbar: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryInterestNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterestNew: TfrmInterestNew;

implementation

uses
   miscfunc, axiomdata;
{$R *.dfm}

procedure TfrmInterestNew.FormShow(Sender: TObject);
begin
// Open interest smart query
   qryInterest.Open;
end;

procedure TfrmInterestNew.qryInterestNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('CODE').AsInteger := StrToInt(dmAxiom.GetSeqNumber('SEQ_MARKETINTEREST'));
end;

procedure TfrmInterestNew.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmInterestNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

end.
