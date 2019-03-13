unit ReceiptReqNarrative;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MaintAncestorNoRep, dxBarDBNav, dxBar,
  cxClasses, Data.DB, MemDS, DBAccess, Uni, Vcl.ImgList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmReceiptReqNarrative = class(TfrmMaintNoRep)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NARRATIVECODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1DTCREATED: TcxGridDBColumn;
    cxGrid1DBTableView1CREATED_BY: TcxGridDBColumn;
    cxGrid1DBTableView1MODBY: TcxGridDBColumn;
    cxGrid1DBTableView1MODIFIED: TcxGridDBColumn;
    cxGrid1DBTableView1ROWID: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceiptReqNarrative: TfrmReceiptReqNarrative;

implementation

{$R *.dfm}

uses
   axiomdata;

procedure TfrmReceiptReqNarrative.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   qrySource.Close;
end;

procedure TfrmReceiptReqNarrative.FormCreate(Sender: TObject);
begin
  inherited;
   qrySource.Open;
end;

end.
