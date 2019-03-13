unit Phonebook_Status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MaintAncestorNoRep, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxTextEdit, cxDBEdit, cxGridLevel, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  dxBarDBNav, dxBar, cxClasses, MemDS, DBAccess, Uni, Vcl.ImgList, cxLabel;

type
  TfrmPhonebook_Status = class(TfrmMaintNoRep)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryImage: TUniQuery;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1ROWID: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure qrySourceNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhonebook_Status: TfrmPhonebook_Status;

implementation

uses AxiomData, System.zLib, FileCtrl, ImageManager;

{$R *.dfm}


procedure TfrmPhonebook_Status.qrySourceNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('phonebbok_status_id').AsInteger := StrToInt(dmAxiom.GetSeqNumber('SQNC_PHONEBOOK_STATUS'));
end;

procedure TfrmPhonebook_Status.FormCreate(Sender: TObject);
begin
  inherited;
   PrimaryField := 'phonebbok_status_id';
end;

end.
