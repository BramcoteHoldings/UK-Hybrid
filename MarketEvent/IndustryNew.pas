unit IndustryNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, MemDS, DBAccess, StdCtrls, Mask, DBCtrls, Menus,
  ImgList, ComCtrls, ToolWin, MaintAncestor, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, dxBar, dxBarDBNav, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator;

type
  TfrmIndustryNew = class(TForm)
    dsIndustry: TUniDataSource;
    ilstToolbar: TImageList;
    grdIndustryDBTableView1: TcxGridDBTableView;
    grdIndustryLevel1: TcxGridLevel;
    grdIndustry: TcxGrid;
    grdIndustryDBTableView1INDUSTRY: TcxGridDBColumn;
    grdIndustryDBTableView1DESCR: TcxGridDBColumn;
    qryIndustry: TUniQuery;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    grdIndustryDBTableView1CODE: TcxGridDBColumn;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryIndustryNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIndustryNew: TfrmIndustryNew;

implementation

uses
   miscfunc, axiomdata;
{$R *.dfm}

procedure TfrmIndustryNew.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmIndustryNew.FormShow(Sender: TObject);
begin
   // Open industry query
  qryIndustry.Open;
end;

procedure TfrmIndustryNew.qryIndustryNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('CODE').AsInteger := StrToInt(dmAxiom.GetSeqNumber('SEQ_MARKETINDUSTRY'));
end;

procedure TfrmIndustryNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

end.
