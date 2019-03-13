unit MarketReferralOther;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, OracleUniProvider, Uni, DBAccess, MemDS, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxBar,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator;

type
  TfrmMarketReferralOther = class(TForm)
    dxManager: TdxBarManager;
    dxbtnAdd: TdxBarButton;
    dxbtnDelete: TdxBarButton;
    dxbtnEdit: TdxBarButton;
    dxbtnSave: TdxBarButton;
    dxbtnCancel: TdxBarButton;
    grdReferralDBTableView1: TcxGridDBTableView;
    grdReferralLevel1: TcxGridLevel;
    grdReferral: TcxGrid;
    dsReferralSource: TUniDataSource;
    qryReferralSource: TUniQuery;
    grdReferralDBTableView1REFERRAL: TcxGridDBColumn;
    dxSubItemFile: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    procedure dxbtnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxbtnCancelClick(Sender: TObject);
    procedure dxbtnSaveClick(Sender: TObject);
    procedure dxbtnDeleteClick(Sender: TObject);
    procedure dxbtnEditClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarketReferralOther: TfrmMarketReferralOther;

implementation

{$R *.dfm}

uses
  AxiomData, miscfunc;

procedure TfrmMarketReferralOther.FormCreate(Sender: TObject);
begin
  qryReferralSource.Open;
end;

procedure TfrmMarketReferralOther.dxbtnAddClick(Sender: TObject);
begin
  try
    if qryReferralSource.Active <> True then
      qryReferralSource.Open;

    qryReferralSource.Insert;
  except
    on E: Exception do
    begin
      MessageDlg('Error adding item: ' + E.Message, mtError, [mbOK], 0);
    end
  end;
end;


procedure TfrmMarketReferralOther.dxbtnCancelClick(Sender: TObject);
begin
  try
    if qryReferralSource.Active = True then
      qryReferralSource.Cancel;
  except
    on E: Exception do
    begin
      MessageDlg('Error cancelling: ' + E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmMarketReferralOther.dxbtnSaveClick(Sender: TObject);
begin
  try
    if qryReferralSource.Active = True then
      if qryReferralSource.State <> dsBrowse then
        qryReferralSource.Post
      else
        MessageDlg('No changes need to be saved.', mtInformation, [mbOK], 0);
  except
    on E: Exception do
    begin
      MessageDlg('Error saving: ' + E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmMarketReferralOther.dxbtnDeleteClick(Sender: TObject);
begin
  try
    if qryReferralSource.Active = True then
      if not qryReferralSource.Eof then
      begin
        MessageDlg('', mtConfirmation, [mbOK, mbCancel], 0);

        qryReferralSource.Delete;
      end;
  except
    on E: Exception do
    begin
      MessageDlg('Error deleting item: ' + E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmMarketReferralOther.dxbtnEditClick(Sender: TObject);
begin
  try
    if qryReferralSource.Active <> True then
      qryReferralSource.Open;

    qryReferralSource.Edit;
  except
    on E: Exception do
    begin
      MessageDlg('Error editing item: ' + E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmMarketReferralOther.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmMarketReferralOther.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

end.
