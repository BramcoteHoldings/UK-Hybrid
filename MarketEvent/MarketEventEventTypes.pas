unit MarketEventEventTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, Grids, DBGrids, ToolWin, ActnMan,
  ActnCtrls, ImgList, ComCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxMaskEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid, dxBar, dxBarDBNav,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator;

type
  TfmMarketEventEventTypes = class(TForm)
    grdEvents: TcxGrid;
    grdEventsLevel1: TcxGridLevel;
    grdEventsDBTableView1: TcxGridDBTableView;
    grdEventsDBTableView1EVENT_TYPE_ID: TcxGridDBColumn;
    grdEventsDBTableView1EVENT_TYPE_DESCR: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMarketEventEventTypes: TfmMarketEventEventTypes;

implementation

uses MarketEventDataModule, miscfunc, axiomdata;

{$R *.dfm}

procedure TfmMarketEventEventTypes.FormCreate(Sender: TObject);
begin
  if(not Assigned(dmMarketEventDataModule)) then
    dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);
  dmMarketEventDataModule.tbEventTypes.Open();
end;

procedure TfmMarketEventEventTypes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := dmMarketEventDataModule.dsEventTypes.State in [dsBrowse,dsInactive];
  if(not CanClose) then
    MessageDlg('You must commit or cancel your changes before closing', mtInformation, [mbOK], 0);
end;

procedure TfmMarketEventEventTypes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmMarketEventDataModule.tbEventTypes.Close();
//  fmMarketEventEventTypes := nil;
//  Action := caFree;
   RemoveFromDesktop(Self);
end;

procedure TfmMarketEventEventTypes.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

end.
