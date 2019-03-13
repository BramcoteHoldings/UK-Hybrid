unit MatterNoteTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, ImgList, dxBar, OracleUniProvider, Uni,
  MemDS, DBAccess, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator;

type
  TfrmMatterNoteTypes = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qrySource: TUniQuery;
    dsSource: TUniDataSource;
    bmMain: TdxBarManager;
    mnuFile: TdxBarSubItem;
    mnuFileDelete: TdxBarButton;
    mnuFilePrint: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuSearch: TdxBarSubItem;
    mnuSearchFirst: TdxBarButton;
    mnuSearchPrior: TdxBarButton;
    mnuSearchNext: TdxBarButton;
    mnuSearchLast: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev3: TdxBarDBNavButton;
    dxBarDBNavNext3: TdxBarDBNavButton;
    dxBarDBNavLast3: TdxBarDBNavButton;
    dxBarDBNavInsert4: TdxBarDBNavButton;
    dxBarDBNavDelete3: TdxBarDBNavButton;
    dxBarDBNavPost3: TdxBarDBNavButton;
    dxBarDBNavCancel3: TdxBarDBNavButton;
    ilstToolbar: TImageList;
    dxBarDBNavigator1: TdxBarDBNavigator;
    procedure mnuFileExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatterNoteTypes: TfrmMatterNoteTypes;

implementation

{$R *.dfm}

uses
   miscfunc;

procedure TfrmMatterNoteTypes.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmMatterNoteTypes.FormCreate(Sender: TObject);
begin
   qrySource.Open;
end;

procedure TfrmMatterNoteTypes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qrySource.Close;
   RemoveFromDesktop(Self);
end;

end.
