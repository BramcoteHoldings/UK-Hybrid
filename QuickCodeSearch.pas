unit QuickCodeSearch;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleUniProvider, Uni, DBAccess, MemDS, StdCtrls, Buttons, Grids, DBGrids,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, Menus, cxLookAndFeelPainters, cxButtons, cxLookAndFeels, cxNavigator;

type
  TfrmQuickCodeSearch = class(TForm)
    lblCode: TLabel;
    lblName: TLabel;
    edCode: TEdit;
    edName: TEdit;
    qryQuickCode: TUniQuery;
    dsQuickCodes: TUniDataSource;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    procedure edNameChange(Sender: TObject);
    procedure edCodeChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    fResult : String;
  public
    { Public declarations }
    property QuickCode : String read FResult;
  end;

var
  frmQuickCodeSearch: TfrmQuickCodeSearch;

implementation

{$R *.DFM}

uses
   AxiomData;

procedure TfrmQuickCodeSearch.edNameChange(Sender: TObject);
begin
   qryQuickCode.Close;
   qryQUickCode.ParamByName('NAME').AsString := edName.Text;
   qryQuickCode.Open;
end;

procedure TfrmQuickCodeSearch.edCodeChange(Sender: TObject);
begin
   qryQuickCode.Close;
   qryQUickCode.ParamByName('CODE').AsString := edCODE.Text;
   qryQuickCode.Open;
end;

procedure TfrmQuickCodeSearch.DBGrid1DblClick(Sender: TObject);
begin
   btnOk.Click;
end;

procedure TfrmQuickCodeSearch.FormCreate(Sender: TObject);
begin
   qryQuickCode.Open;
end;

procedure TfrmQuickCodeSearch.btnOkClick(Sender: TObject);
begin
    fResult := qryQuickCode.FieldByName('DESCR').AsString;
    ModalResult := mrOK;
end;

end.
