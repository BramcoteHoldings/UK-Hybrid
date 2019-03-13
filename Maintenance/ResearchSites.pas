unit ResearchSites;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBar, cxClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBarDBNav;

type
  TfrmResearchList = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnClose: TdxBarButton;
    tvResearch: TcxGridDBTableView;
    grdResearchLevel1: TcxGridLevel;
    grdResearch: TcxGrid;
    dsResearch: TUniDataSource;
    qryResearch: TUniQuery;
    tvResearchDESCR: TcxGridDBColumn;
    tvResearchURL: TcxGridDBColumn;
    tvResearchUSERNAME: TcxGridDBColumn;
    tvResearchPASSWORD: TcxGridDBColumn;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResearchList: TfrmResearchList;

implementation

{$R *.dfm}

uses miscfunc, Axiomdata;

procedure TfrmResearchList.btnCloseClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmResearchList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryResearch.Close;

   RemoveFromDesktop(Self);
end;

procedure TfrmResearchList.FormShow(Sender: TObject);
begin
   qryResearch.Open;
end;

end.
