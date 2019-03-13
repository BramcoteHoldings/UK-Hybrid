unit CountryList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, DBAccess, Uni, MemDS,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar;

type
  TfrmCountryList = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryCountryList: TUniQuery;
    dsCountryList: TUniDataSource;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ISO_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DISPLAY_ORDER: TcxGridDBColumn;
    cxGrid1DBTableView1ROWID: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCountryList: TfrmCountryList;

implementation

{$R *.dfm}

uses
   AxiomData, MiscFunc;

procedure TfrmCountryList.dxBarButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmCountryList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryCountryList.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmCountryList.FormCreate(Sender: TObject);
begin
   qryCountryList.Open;
end;

end.
