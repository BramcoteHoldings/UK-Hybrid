unit documenttypelist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  ImgList, DBActns, ActnList, ActnMan, ToolWin, ActnCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxMaskEdit, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, dxBar, dxBarDBNav,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator;

type
  TfrmDocumentTypeList = class(TForm)
    tDocumentType: TUniTable;
    dsDocumentType: TUniDataSource;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DOCUMENT_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1ROWID: TcxGridDBColumn;
    cxGrid1DBTableView1AUDIT_REQ: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocumentTypeList: TfrmDocumentTypeList;

implementation

uses
   axiomdata, miscfunc;
{$R *.dfm}

procedure TfrmDocumentTypeList.FormDestroy(Sender: TObject);
begin
   tDocumentType.Close;
end;

procedure TfrmDocumentTypeList.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmDocumentTypeList.FormShow(Sender: TObject);
begin
   tDocumentType.Open;
end;

procedure TfrmDocumentTypeList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

end.
