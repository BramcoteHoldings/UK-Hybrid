unit SolicitorCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, OracleUniProvider, Uni, DBAccess, MemDS,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxLookAndFeelPainters, ActnMenus, ToolWin, ActnMan, ActnCtrls, ActnList,
  Menus, StdCtrls, cxButtons, ImgList, ComCtrls, dxBar, cxLookAndFeels,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmSolicitorCode = class(TForm)
    tvSolicitorCode: TcxGridDBTableView;
    grdSolicitorCodeLevel1: TcxGridLevel;
    grdSolicitorCode: TcxGrid;
    qryBranchSubJurisdiction: TUniQuery;
    dsBranchSubJurisdiction: TUniDataSource;
    tvSolicitorCodeSOLICITOR_CODE: TcxGridDBColumn;
    tvSolicitorCodeDESCR: TcxGridDBColumn;
    tvSolicitorCodeSTREET: TcxGridDBColumn;
    tvSolicitorCodeSUBURB: TcxGridDBColumn;
    tvSolicitorCodeSTATE: TcxGridDBColumn;
    tvSolicitorCodePOSTCODE: TcxGridDBColumn;
    tvSolicitorCodeDESCR_1: TcxGridDBColumn;
    tvSolicitorCodeDESCR_2: TcxGridDBColumn;
    ilstToolbar: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    dxBarManager1: TdxBarManager;
    fmNewCode: TdxBarButton;
    fmEditCode: TdxBarButton;
    fmDeleteCode: TdxBarButton;
    fmRefresh: TdxBarButton;
    fmMain: TdxBarSubItem;
    fmAddEdit: TdxBarButton;
    fmCourtDetails: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure fmNewCodeClick(Sender: TObject);
    procedure fmRefreshClick(Sender: TObject);
    procedure fmEditCodeClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure fmDeleteCodeClick(Sender: TObject);
    procedure fmAddEditClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSolicitorCode: TfrmSolicitorCode;

implementation

uses SolicitorCodeNew, citFunc, CourtAddress, miscfunc;
{$R *.dfm}

procedure TfrmSolicitorCode.FormCreate(Sender: TObject);
begin
   qryBranchSubJurisdiction.Open;

   if SystemString('LOCALE_NAME') <> '' then
   begin
      tvSolicitorCodeSTATE.Caption := 'County';
   end;
end;

procedure TfrmSolicitorCode.fmNewCodeClick(Sender: TObject);
begin
   if (not Assigned(frmSolicitorCodeNew)) then
      frmSolicitorCodeNew := TfrmSolicitorCodeNew.Create(Application);
   frmSolicitorCodeNew.Show;
   frmSolicitorCodeNew.OpenSolicitorCode(0,True);
end;

procedure TfrmSolicitorCode.fmRefreshClick(Sender: TObject);
begin
   qryBranchSubJurisdiction.Close;
   qryBranchSubJurisdiction.Open;
end;

procedure TfrmSolicitorCode.fmEditCodeClick(Sender: TObject);
begin
   if (not Assigned(frmSolicitorCodeNew)) then
      frmSolicitorCodeNew := TfrmSolicitorCodeNew.Create(Application);
   frmSolicitorCodeNew.Show;
   frmSolicitorCodeNew.OpenSolicitorCode(qryBranchSubJurisdiction.FieldByName('code').AsInteger, False);
end;

procedure TfrmSolicitorCode.cxButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmSolicitorCode.fmDeleteCodeClick(Sender: TObject);
begin

   qryBranchSubJurisdiction.Delete;
end;

procedure TfrmSolicitorCode.fmAddEditClick(Sender: TObject);
begin
   if (not Assigned(frmCourtAddress)) then
      frmCourtAddress := TfrmCourtAddress.Create(Application);
   frmCourtAddress.Show;
end;

procedure TfrmSolicitorCode.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmSolicitorCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

end.
