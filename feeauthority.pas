unit feeauthority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxButtons, cxControls, cxContainer, cxListBox,
  cxMemo, DB, OracleUniProvider, Uni, DBAccess, MemDS, cxButtonEdit, ExtCtrls,
  dxBar, dxBarDBNav, cxListView, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Menus, cxLookAndFeels, cxNavigator;

type
  TfrmFeeAuthority = class(TForm)
    btnMoveRight: TcxButton;
    btnMoveallRight: TcxButton;
    btnMoveLeft: TcxButton;
    btnMoveAllLeft: TcxButton;
    Label1: TLabel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    qryFeeAuthority: TUniQuery;
    dsFeeAuthority: TUniDataSource;
    cxDBMemo1: TcxDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnEdGroupName: TcxDBButtonEdit;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    Bevel1: TBevel;
    qryAvailGroup: TUniQuery;
    dsAvailGroup: TUniDataSource;
    dsAssignedGroups: TUniDataSource;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    tvAvailableGroups: TcxGridDBTableView;
    lbAvailableGroupsLevel1: TcxGridLevel;
    lbAvailableGroups: TcxGrid;
    tvAvailableGroupsNFEE_AUTHORITY: TcxGridDBColumn;
    tvAvailableGroupsNAME: TcxGridDBColumn;
    tvAssignedGroups: TcxGridDBTableView;
    lbAssignedGroupsLevel1: TcxGridLevel;
    lbAssignedGroups: TcxGrid;
    qryAssignedGroups: TUniQuery;
    tvAssignedGroupsNAME: TcxGridDBColumn;
    tvAssignedGroupsNFEE_AUTHORITY: TcxGridDBColumn;
    tvAssignedGroupsNFEE_AUTHORITY_RELATED_TO: TcxGridDBColumn;
    qryInsertGroup: TUniQuery;
    qryDeleteGroup: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEdGroupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lbAssignedGroupsDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure lbAssignedGroupsDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure qryFeeAuthorityAfterScroll(DataSet: TDataSet);
    procedure btnMoveRightClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnMoveAllLeftClick(Sender: TObject);
    procedure qryFeeAuthorityAfterPost(DataSet: TDataSet);
    procedure btnMoveallRightClick(Sender: TObject);
    procedure btnMoveLeftClick(Sender: TObject);
  private
    { Private declarations }
    btnEdGroupID: integer;
    procedure PopulateLists(ParentGroupId: integer);
  public
    { Public declarations }
  end;

var
  frmFeeAuthority: TfrmFeeAuthority;

implementation

{$R *.dfm}

uses GenericSearch, AxiomData;

procedure TfrmFeeAuthority.FormCreate(Sender: TObject);
begin
   qryFeeAuthority.Open;
   PopulateLists(qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger);
end;

procedure TfrmFeeAuthority.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   dmAxiom.uniInsight.Rollback;
   qryFeeAuthority.Close;
end;

procedure TfrmFeeAuthority.btnCancelClick(Sender: TObject);
begin
   close;
end;

procedure TfrmFeeAuthority.btnEdGroupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   LfrmGenericSearch: TfrmGenericSearch;
begin
   try
      LfrmGenericSearch := TfrmGenericSearch.Create(Self);
      with LfrmGenericSearch do
      begin
         SQL := 'SELECT NAME as Code, DESCR, NFEE_AUTHORITY, ''N'' AS DEFAULTITEM FROM FEE_AUTHORITY ORDER BY NAME';
         SearchField := sfDescription;
         if ShowModal = mrOK then
         begin
            qryFeeAuthority.edit;
            qryFeeAuthority.FieldByName('NAME').AsString := qrySource.FieldByName('CODE').AsString;
            qryFeeAuthority.FieldByName('DESCR').AsString := qrySource.FieldByName('DESCR').AsString;
            btnEdGroupID := qrySource.FieldByName('NFEE_AUTHORITY').AsInteger;
            PopulateLists(btnEdGroupID);
         end;
      end;
   finally
      LfrmGenericSearch.Free;
   end;
end;

procedure TfrmFeeAuthority.PopulateLists(ParentGroupId: integer);
begin
   with qryAvailGroup do
   begin
      Close;
      ParamByName('NFEE_AUTHORITY').AsInteger := ParentGroupId;
      Open;
   end;

   with qryAssignedGroups do
   begin
      Close;
      ParamByName('NFEE_AUTHORITY_RELATED_TO').AsInteger := ParentGroupId;
      Open;
   end;
end;

procedure TfrmFeeAuthority.lbAssignedGroupsDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TfrmFeeAuthority.lbAssignedGroupsDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
//   TcxListView(Source).Items.Item;
end;

procedure TfrmFeeAuthority.qryFeeAuthorityAfterScroll(DataSet: TDataSet);
begin
   PopulateLists(qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger);
end;

procedure TfrmFeeAuthority.btnMoveRightClick(Sender: TObject);
var
   row: integer;
begin
   for Row := 0 to tvAvailableGroups.DataController.GetSelectedCount - 1 do
   begin
      tvAvailableGroups.DataController.FocusedRowIndex :=  tvAvailableGroups.DataController.GetSelectedRowIndex(Row);

      qryInsertGroup.ParamByName('NFEE_AUTHORITY_RELATED_TO').AsInteger := qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger;
      qryInsertGroup.ParamByName('NFEE_AUTHORITY').AsInteger :=
            tvAvailableGroups.DataController.GetValue(tvAvailableGroups.DataController.GetSelectedRowIndex(Row),
                                                      tvAvailableGroupsNFEE_AUTHORITY.Index);
      qryInsertGroup.ExecSQL;
//      tvAvailableGroups.DataController.DeleteFocused;
   end;
   PopulateLists(qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger);
end;

procedure TfrmFeeAuthority.btnOkClick(Sender: TObject);
begin
//   dmAxiom.uniInsight.Commit;
end;

procedure TfrmFeeAuthority.btnMoveAllLeftClick(Sender: TObject);
var
   row, ARowIndex: integer;
begin
   for Row := 0 to tvAssignedGroups.DataController.GetSelectedCount - 1 do
   begin
//      tvAssignedGroups.DataController.FocusedRowIndex :=
      ARowIndex := tvAssignedGroups.DataController.GetSelectedRowIndex(Row);
      qryDeleteGroup.ParamByName('NFEE_AUTHORITY_RELATED_TO').AsInteger := qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger;
      qryDeleteGroup.ParamByName('NFEE_AUTHORITY').AsInteger :=
            tvAssignedGroups.DataController.GetValue(ARowIndex, tvAssignedGroupsNFEE_AUTHORITY.Index);
      qryDeleteGroup.ExecSQL;
//      tvAssignedGroups.DataController.DeleteFocused;
   end;
   PopulateLists(qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger);
end;

procedure TfrmFeeAuthority.qryFeeAuthorityAfterPost(DataSet: TDataSet);
begin
   PopulateLists(qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger);
end;

procedure TfrmFeeAuthority.btnMoveallRightClick(Sender: TObject);
var
   row: integer;
begin
   for Row := 0 to tvAvailableGroups.DataController.GetRowCount - 1 do
   begin
      tvAvailableGroups.DataController.FocusedRowIndex :=  Row;

      qryInsertGroup.ParamByName('NFEE_AUTHORITY_RELATED_TO').AsInteger := qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger;
      qryInsertGroup.ParamByName('NFEE_AUTHORITY').AsInteger :=
            tvAvailableGroups.DataController.GetValue(tvAvailableGroups.DataController.GetFocusedRowIndex,
                                                      tvAvailableGroupsNFEE_AUTHORITY.Index);
      qryInsertGroup.ExecSQL;
//      tvAvailableGroups.DataController.DeleteFocused;
   end;
   PopulateLists(qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger);
end;

procedure TfrmFeeAuthority.btnMoveLeftClick(Sender: TObject);
var
   row: integer;
begin
   for Row := 0 to tvAssignedGroups.DataController.GetRowCount - 1 do
   begin
      tvAssignedGroups.DataController.FocusedRowIndex :=  Row;

      qryDeleteGroup.ParamByName('NFEE_AUTHORITY_RELATED_TO').AsInteger := qryFeeAuthority.FieldByName('NFEE_AUTHORITY').AsInteger;
      qryDeleteGroup.ParamByName('NFEE_AUTHORITY').AsInteger :=
            tvAssignedGroups.DataController.GetValue(tvAssignedGroups.DataController.GetFocusedRowIndex,
                                                     tvAssignedGroupsNFEE_AUTHORITY.Index);
      qryDeleteGroup.ExecSQL;
//      tvAssignedGroups.DataController.DeleteFocused;
   end;
   PopulateLists(qryAssignedGroups.FieldByName('NFEE_AUTHORITY').AsInteger);

end;

end.
