unit EntityGroups;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGroupBox, cxDBLookupComboBox, Vcl.Menus,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxDBEdit, DBAccess,
  Uni, MemDS;

type
  TfrmEntityGroups = class(TForm)
    cxGroupBox1: TcxGroupBox;
    tvEntityGroups: TcxGridDBTableView;
    lvEntityGroups: TcxGridLevel;
    grdEntityGroups: TcxGrid;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    qryEntityGroups: TUniQuery;
    dsEntityGroups: TUniDataSource;
    tvEntityGroupsCODE: TcxGridDBColumn;
    tvEntityGroupsDESCRIPTION: TcxGridDBColumn;
    qryentity_group_link: TUniQuery;
    dsentity_group_link: TUniDataSource;
    qryEntity: TUniQuery;
    dsEntity: TUniDataSource;
    cxGridDBTableView1ENTITY_GROUP_CODE: TcxGridDBColumn;
    cxGridDBTableView1ENTITY_CODE: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    btnNew: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionManager1: TActionManager;
    Action1: TAction;
    DatasetInsert1: TDataSetInsert;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvEntityGroupsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntityGroups: TfrmEntityGroups;

implementation

{$R *.dfm}

uses
   axiomdata, miscfunc;

procedure TfrmEntityGroups.dxBarButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmEntityGroups.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryEntityGroups.Close;
   qryEntity.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmEntityGroups.FormShow(Sender: TObject);
begin
   qryEntity.Open;
   qryEntityGroups.Open;
end;

procedure TfrmEntityGroups.tvEntityGroupsCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   qryentity_group_link.Close;
   qryentity_group_link.ParamByName('ENTITY_GROUP_CODE').AsString := qryEntityGroups.FieldByName('CODE').AsString;
   qryentity_group_link.Open;
end;

end.
