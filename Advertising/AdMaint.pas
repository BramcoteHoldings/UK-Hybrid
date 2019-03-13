unit AdMaint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, Uni, MemDS, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGrid, cxCalendar, cxDBLookupComboBox,
  dxBarDBNav;

type
  TfrmAdvertising = class(TForm)
    dxBarManager1: TdxBarManager;
    tvAdvertising: TcxGridDBTableView;
    grdAdvertisingLevel1: TcxGridLevel;
    grdAdvertising: TcxGrid;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    qryAdvertising: TUniQuery;
    dsAdvertising: TUniDataSource;
    tvAdvertisingADID: TcxGridDBColumn;
    tvAdvertisingCODE: TcxGridDBColumn;
    tvAdvertisingDESCR: TcxGridDBColumn;
    tvAdvertisingDATE_START: TcxGridDBColumn;
    tvAdvertisingDATE_END: TcxGridDBColumn;
    tvAdvertisingCOST: TcxGridDBColumn;
    tvAdvertisingTERMS: TcxGridDBColumn;
    tvAdvertisingREGION: TcxGridDBColumn;
    tvAdvertisingSUPPLIER: TcxGridDBColumn;
    tvAdvertisingCREATEDDATE: TcxGridDBColumn;
    tvAdvertisingCREATEDUSER: TcxGridDBColumn;
    navMatter: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    tbAdvRegion: TUniTable;
    dsAdvRegion: TUniDataSource;
    tbAdvSupplier: TUniTable;
    dsAdvSupplier: TUniDataSource;
    tvAdvertisingADV_MEDIA_ID: TcxGridDBColumn;
    tvAdvertisingADV_SUBMEDIA_ID: TcxGridDBColumn;
    tbAdMedia: TUniTable;
    dsAdMedia: TUniDataSource;
    tbAdSubMedia: TUniTable;
    dsAdSubMedia: TUniDataSource;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdvertising: TfrmAdvertising;

implementation

{$R *.dfm}

uses
   axiomdata, miscfunc;



procedure TfrmAdvertising.dxBarButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmAdvertising.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   tbAdvRegion.Close;
   qryAdvertising.Close;
   tbAdvSupplier.Close;
   tbAdMedia.Close;
   tbAdSubMedia.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmAdvertising.FormShow(Sender: TObject);
begin
   tbAdvRegion.Open;
   qryAdvertising.Open;
   tbAdvSupplier.Open;
   tbAdMedia.Open;
   tbAdSubMedia.Open;
end;

end.
