unit prac_num;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, Uni, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxBar;

type
  TfrmPracNum = class(TForm)
    tvPracNumber: TcxGridDBTableView;
    grdPracNumberLevel1: TcxGridLevel;
    grdPracNumber: TcxGrid;
    qryPracNum: TUniQuery;
    dsPracNum: TUniDataSource;
    tvPracNumberPRAC_NUM: TcxGridDBColumn;
    tvPracNumberDESCR: TcxGridDBColumn;
    tvPracNumberEFFECTIVE_FROM: TcxGridDBColumn;
    tvPracNumberEFFECTIVE_TO: TcxGridDBColumn;
    tvPracNumberROWID: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPracNum: TfrmPracNum;

implementation

{$R *.dfm}

uses
   axiomdata, miscfunc, Prac_num_process;

procedure TfrmPracNum.dxBarButton1Click(Sender: TObject);
begin
   qryPracNum.ApplyUpdates();
end;

procedure TfrmPracNum.dxBarButton2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmPracNum.dxBarButton3Click(Sender: TObject);
var
   frmProcessPracNum: TfrmProcessPracNum;
begin
   try
      frmProcessPracNum := TfrmProcessPracNum.Create(Self);
      frmProcessPracNum.ShowModal;
   finally
      frmProcessPracNum.Free;
   end;
end;

procedure TfrmPracNum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmPracNum.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
   MessageRet: word;
begin
   if qryPracNum.UpdatesPending = True then
   begin
      MessageRet := MsgAskCancel('There are unsaved changes.'+ CHR(13)+ 'Would you like to Save the changes?');
      case MessageRet of
         mrYes: begin
                   qryPracNum.ApplyUpdates();
                   qryPracNum.Close;
                   CanClose := True;
                end;
         mrNo: begin
                   qryPracNum.CancelUpdates;
                   qryPracNum.Close;
                   CanClose := True;
                end;
         mrCancel: CanClose := False;
      end;
   end
   else
      qryPracNum.Close;
end;

procedure TfrmPracNum.FormShow(Sender: TObject);
begin
   qryPracNum.Open;
end;

end.
