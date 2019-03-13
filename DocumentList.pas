unit DocumentList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxBlobEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, OracleUniProvider, Uni, MemDS, DBAccess, dxBar, dxStatusBar,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu;

const
  isDOCUMENTS = 0;
  isFILTER = 1;

type
  TfrmDocumentList = class(TForm)
    dxStatusBar1: TdxStatusBar;
    dxBarManager1: TdxBarManager;
    qryDoc: TUniQuery;
    dsDocs: TUniDataSource;
    pagDocuments: TcxPageControl;
    tabDocuments: TcxTabSheet;
    tabFilter: TcxTabSheet;
    grdDocList: TcxGrid;
    tvDocList: TcxGridDBTableView;
    grdDocListLevel1: TcxGridLevel;
    tvDocListDOC_NAME: TcxGridDBColumn;
    tvDocListSEARCH: TcxGridDBColumn;
    tvDocListDOC_CODE: TcxGridDBColumn;
    tvDocListD_CREATE: TcxGridDBColumn;
    tvDocListAUTH1: TcxGridDBColumn;
    tvDocListPATH: TcxGridDBColumn;
    tvDocListDESCR: TcxGridDBColumn;
    tvDocListFILEID: TcxGridDBColumn;
    tvDocListDOCUMENT: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure pagDocumentsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocumentList: TfrmDocumentList;

implementation

uses AxiomData, MiscFunc, citfunc;

{$R *.dfm}


procedure TfrmDocumentList.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmDocumentList.pagDocumentsChange(Sender: TObject);
begin
   case pagDocuments.ActivePage.TabIndex of
      isDOCUMENTS:
         begin
            qryDoc.Open;
         end;
   end;
end;

end.
