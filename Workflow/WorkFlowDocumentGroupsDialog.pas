unit WorkFlowDocumentGroupsDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, ToolWin, ActnMan, ActnCtrls, DBActns,
  ActnList, ImgList, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, dxBarDBNav, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, cxCheckBox, OracleUniProvider, Uni, DBAccess, MemDS,
  cxNavigator;

type
  TfmWorkFlowDocumentGroupsDialog = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1GROUPID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    dxBarDBNavigator2: TdxBarDBNavigator;
    dxBarManager1: TdxBarManager;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    cxGrid1DBTableView1COSTS_AGREEMENT: TcxGridDBColumn;
    tbDocGroups: TUniTable;
    tbDocGroupsGROUPID: TFloatField;
    tbDocGroupsNAME: TStringField;
    tbDocGroupsCOSTS_AGREEMENT: TStringField;
    dsDocGroups: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWorkFlowDocumentGroupsDialog: TfmWorkFlowDocumentGroupsDialog;

implementation

uses WorkFlowDataModule, WorkFlowDataModuleDocs, axiomdata;

{$R *.dfm}

procedure TfmWorkFlowDocumentGroupsDialog.FormShow(Sender: TObject);
begin
   tbDocGroups.Close();
   tbDocGroups.Open();
end;

procedure TfmWorkFlowDocumentGroupsDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tbDocGroups.Close();
end;

procedure TfmWorkFlowDocumentGroupsDialog.OKBtnClick(Sender: TObject);
begin
   if tbDocGroups.State in [dsEdit, dsInsert] then
      tbDocGroups.Post;
end;

end.
