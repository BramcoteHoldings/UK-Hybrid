unit SearchIndexConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  DBAccess, Uni, MemDS, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxCheckBox, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  dxBar, cxGridBandedTableView, cxGridDBBandedTableView, cxGroupBox, dxBarDBNav,
  Vcl.ImgList, Vcl.StdCtrls, System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls,
  Vcl.ActnMan, MaintAncestor, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdActns, Vcl.DBActns,
  cxLabel, Vcl.Menus, cxButtons, cxDBLookupComboBox, JvBaseDlg,
  JvSelectDirectory, Vcl.Mask, JvExMask, JvToolEdit, cxDBLabel,
  dxBarBuiltInMenu, cxGridCustomPopupMenu, cxGridPopupMenu, dxDateRanges,
  JvActionsEngine, JvDBActions, System.ImageList;

type
  TfrmIndexConfig = class(TfrmMaint)
    QryDocIndexUsers: TUniQuery;
    dsDocIndexUsers: TUniDataSource;
    Label1: TLabel;
    Label2: TLabel;
    ActionManager1: TActionManager;
    actIndexUserSave: TAction;
    JVCLDBJvDatabaseInsertAction1: TJvDatabaseInsertAction;
    DatasetPost1: TDataSetPost;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetCancel1: TDataSetCancel;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    WindowClose1: TWindowClose;
    cxLabel1: TcxLabel;
    GrdIndexes: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridBandedTableView2: TcxGridBandedTableView;
    cxGridIndexesView: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridIndexesViewIndexName: TcxGridDBBandedColumn;
    cxGridIndexesViewDescription: TcxGridDBBandedColumn;
    qryUsers: TUniQuery;
    dsUsers: TUniDataSource;
    btnAddIndexUser: TcxButton;
    cxButton1: TcxButton;
    Label4: TLabel;
    edtIndexDescription: TcxDBTextEdit;
    cxGridIndexesViewLocation: TcxGridDBBandedColumn;
    cxGridIndexesViewColumn1: TcxGridDBBandedColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    lblSanityCheck: TcxDBLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableViewUserID: TcxGridDBColumn;
    cxGrid1DBTableViewUserName: TcxGridDBColumn;
    dlgChooseIndexPath: TFileOpenDialog;
    procedure dxBarDBNavInsert4Click(Sender: TObject);
    procedure dxBarDBNavPost3Click(Sender: TObject);
    procedure dxBarDBNavDelete3Click(Sender: TObject);
    procedure dxBarDBNavCancel3Click(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure actIndexUserSaveExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure WindowClose1Execute(Sender: TObject);
    procedure btnAddIndexUserClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure qrySourceBeforePost(DataSet: TDataSet);
    procedure cxDBButtonEdit1Click(Sender: TObject);
    procedure QryDocIndexUsersBeforePost(DataSet: TDataSet);
    procedure QryDocIndexUsersAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIndexConfig: TfrmIndexConfig;

implementation

{$R *.dfm}

uses AxiomData, MiscFunc;

procedure TfrmIndexConfig.actIndexUserSaveExecute(Sender: TObject);
begin
  QrySource.Post;
end;

procedure TfrmIndexConfig.btnAddIndexUserClick(Sender: TObject);
begin
  inherited;
  QryDocIndexUsers.Insert;
end;

procedure TfrmIndexConfig.cxButton1Click(Sender: TObject);
begin
  inherited;
  if QryDocIndexUsers.State in [dsEdit, dsInsert] then
    QryDocIndexUsers.Post;
end;

procedure TfrmIndexConfig.cxDBButtonEdit1Click(Sender: TObject);
begin
  inherited;
  if dlgChooseIndexPath.Execute then
    cxDBButtonEdit1.EditingText := dlgChooseIndexPath.FileName;
end;

procedure TfrmIndexConfig.dxBarDBNavCancel3Click(Sender: TObject);
begin
  QrySource.Cancel;
end;

procedure TfrmIndexConfig.dxBarDBNavDelete3Click(Sender: TObject);
begin
  QrySource.Delete;
end;

procedure TfrmIndexConfig.dxBarDBNavInsert4Click(Sender: TObject);
begin
  QrySource.Insert;
end;

procedure TfrmIndexConfig.dxBarDBNavPost3Click(Sender: TObject);
begin
  QrySource.Post;
end;

procedure TfrmIndexConfig.FormShow(Sender: TObject);
begin
  inherited;
  QrySource.Open;
  QryDocIndexUsers.Open;
  QryUsers.Open;

  PrimaryField := 'NDOCIndex';
end;

procedure TfrmIndexConfig.mnuFileExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmIndexConfig.QryDocIndexUsersAfterPost(DataSet: TDataSet);
begin
  inherited;
  QryDocIndexUsers.Refresh;
end;

procedure TfrmIndexConfig.QryDocIndexUsersBeforePost(DataSet: TDataSet);
begin
  inherited;
  QryDocIndexUsers.FieldByName('NDocIndex').AsInteger := QrySource.FieldByName('NDocIndex').AsInteger;
end;

procedure TfrmIndexConfig.qrySourceBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrySource.FieldByName('NDocIndex').IsNull then
    qrySource.FieldByName('NDocIndex').AsInteger := GetNextSequence('SQNC_DOCINDEX');
end;

procedure TfrmIndexConfig.WindowClose1Execute(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
