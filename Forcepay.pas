unit forcepay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, MemDS, StdCtrls, DBCtrls, Buttons,  cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCalendar, cxMaskEdit, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, cxLookAndFeelPainters, cxButtons, cxCurrencyEdit,
  OracleUniProvider, Uni, DBAccess, cxLookAndFeels, Vcl.Menus, cxNavigator;

type
  TfrmForcePay = class(TForm)
    dbgrdCheqReqs: TcxGrid;
    dbgrdCheqReqsLevel1: TcxGridLevel;
    tvCheqReqs: TcxGridDBTableView;
    tvCheqReqsREQDATE: TcxGridDBColumn;
    tvCheqReqsDESCR: TcxGridDBColumn;
    tvCheqReqsPAYEE: TcxGridDBColumn;
    tvCheqReqsAMOUNT: TcxGridDBColumn;
    tvCheqReqsTAX: TcxGridDBColumn;
    tvCheqReqsTAXCODE: TcxGridDBColumn;
    tvCheqReqsFORCEPAY: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    qryCheqReqs: TUniQuery;
    dsCheqReqs: TUniDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure dbgrdCheqReqsFORCEPAYChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    BillNo: string;
    constructor Create(AOwner:TComponent; AParam:string); overload;

  end;

var
  frmForcePay: TfrmForcePay;

implementation

uses AxiomData;


{$R *.dfm}

constructor TfrmForcePay.Create(AOwner:TComponent; AParam: string);
begin
   inherited Create(AOwner);
   BillNo := Aparam;
end;

procedure TfrmForcePay.FormShow(Sender: TObject);
begin
   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   qryCheqReqs.Close;
   qryCheqReqs.ParamByName('BillNo').AsString := BillNo;
   qryCheqReqs.Open;
end;

procedure TfrmForcePay.btnOkClick(Sender: TObject);
begin
   qryCheqReqs.ApplyUpdates;
end;

procedure TfrmForcePay.dbgrdCheqReqsFORCEPAYChange(Sender: TObject);
begin
   btnOk.Enabled := True;
end;

procedure TfrmForcePay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmForcePay.btnCancelClick(Sender: TObject);
begin
   qryCheqReqs.CancelUpdates;
end;

end.
