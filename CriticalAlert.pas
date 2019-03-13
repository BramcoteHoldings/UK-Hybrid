unit CriticalAlert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, DBAccess, MemDS, ComCtrls, ExtCtrls,
  StdCtrls, Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, Menus, cxLookAndFeelPainters,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeels, cxNavigator;

type
  TListData = record
    iNMatter: Integer;
  end;

  TfrmCritialAlert = class(TForm)
    qryCriticalAlert: TUniQuery;
    dsCriticalAlert: TUniDataSource;
    tmShow: TTimer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel1: TPanel;
    pnlMain: TPanel;
    grdCriticalDates: TcxGrid;
    tvCriticalDates: TcxGridDBTableView;
    tvCriticalDatesDATETOCOMPLETE: TcxGridDBColumn;
    tvCriticalDatesTASKDESCRIPTION: TcxGridDBColumn;
    tvCriticalDatesFILEID: TcxGridDBColumn;
    tvCriticalDatesNMATTER: TcxGridDBColumn;
    tvCriticalDatesCLIENT: TcxGridDBColumn;
    grdCriticalDatesLevel1: TcxGridLevel;
    btnHide: TBitBtn;
    btnClose: TBitBtn;
    procedure tmShowTimer(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnHideClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure loadWorkflow(iNMatter: integer);
    procedure lvAlertsDblClick(Sender: TObject);
    procedure tvCriticalDatesDblClick(Sender: TObject);
    procedure tvCriticalDatesColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    { Private declarations }
    bIsHide: boolean;
    sUser,
    FOrderBy,
    sSQL: string;
    function hasData: boolean;

  public
    { Public declarations }

    procedure loadAlert(sUser: string = ''; From_Grid: boolean = False);
    procedure Refresh;

    property hasAlerts: boolean read hasData;
  end;

var
  frmCritialAlert: TfrmCritialAlert;

implementation


uses WorkflowMatterTasks, AxiomData, dxCore;

{$R *.dfm}

procedure TfrmCritialAlert.loadAlert(sUser: string; From_Grid: boolean);
//var
//  liNew: TListItem;
//  listData: ^TListData;
begin
   self.sUser := sUser;

   with qryCriticalAlert do
   begin
      close;
      SQL.Text := sSQL;
      if From_Grid = True then
         SQL.Text := SQL.Text + FOrderBy;
      ParamByName('AUTHOR').AsString := sUser;
      open;
   end;
 // load alerts into View
{  lvAlerts.Items.Clear;

  qryCriticalAlert.First;
  while not qryCriticalAlert.eof do
  begin
    new(listData);

    listData.iNMatter := qryCriticalAlert.fieldByname('NMATTER').AsInteger;

    liNew := lvAlerts.Items.Add;
    liNew.Data := listData;
    liNew.Caption := FormatDateTime(ShortDateFormat, qryCriticalAlert.fieldByname('datetocomplete').AsDateTime);
    liNew.SubItems.Add(qryCriticalAlert.fieldByname('taskDescription').AsString);
    liNew.SubItems.Add(qryCriticalAlert.fieldByname('fileid').AsString);
    qryCriticalAlert.Next;
  end;       }
end;

procedure TfrmCritialAlert.Refresh;
begin
   if sUser <> '' then
      loadAlert(sUser);
end;

function TfrmCritialAlert.hasData: boolean;
begin
   hasData := tvCriticalDates.DataController.RecordCount > 0;  //  lvAlerts.Items.Count > 0;
end;

procedure TfrmCritialAlert.tmShowTimer(Sender: TObject);
begin
   if bIsHide then
   begin
      bIsHide := false;
      tmShow.Enabled := false;
      tmShow.Interval := 1000;
      tmShow.Enabled := true;
      self.Refresh;
      if self.hasData then
         self.show
      else
         close;
   end
   else
      self.BringToFront;
end;

procedure TfrmCritialAlert.btnCloseClick(Sender: TObject);
begin
   self.close;
end;

procedure TfrmCritialAlert.btnHideClick(Sender: TObject);
begin
   self.Hide;
   tmShow.Enabled := false;
   tmShow.Interval := 1000 * 10;
   tmShow.Enabled := true;
   bIsHide := true;
end;

procedure TfrmCritialAlert.FormCreate(Sender: TObject);
begin
   bIsHide := false;
   if grdCriticalDates.Font.Size <> dmAxiom.GridFont then
      grdCriticalDates.Font.Size := dmAxiom.GridFont;

   sSQL := 'SELECT W.DATETOCOMPLETE, W.TASKDESCRIPTION, W.NMATTER, '+
           ' m.fileid || '' - '' || Get_FileDescr(w.nmatter) as fileid, '+
           'GetClientCode(m.nclient) || '' - '' || GetClientName(m.nclient) as client '+
           ' FROM WORKFLOWTASKS w, matter m ' +
           ' WHERE w.assignedto = :AUTHOR ' +
           ' AND w.critical_alert = ''Y'' ' +
           ' AND w.completed IS NULL '+
           ' AND w.datetocomplete <= SYSDATE '+
           ' and w.nmatter = m.nmatter ';
end;

procedure TfrmCritialAlert.FormClose(Sender: TObject;
var
   Action: TCloseAction);
begin
   tmShow.Enabled := false;
end;

procedure TfrmCritialAlert.loadWorkflow(iNMatter: integer);
var
   LMT: TfmWorkflowMatterTasks;
   i: Integer;
begin
   for i := 0 to Screen.FormCount - 1 do
   begin
      if (Screen.Forms[i] is TfmWorkflowMatterTasks) then
      begin
         LMT := TfmWorkflowMatterTasks(Screen.Forms[i]);
         if (LMT.NMatter = iNMatter) then
         begin
            LMT.Show();
            Exit;
         end;
      end;
   end;
   LMT := TfmWorkflowMatterTasks.Create(Application);
   LMT.NMatter := iNMatter;
   LMT.Show();
end;

procedure TfrmCritialAlert.lvAlertsDblClick(Sender: TObject);
var listData: ^TListData;
begin
{  if not Assigned(lvAlerts.Selected) then
    exit;

  listData := lvAlerts.Selected.Data;
  loadWorkflow(listData.iNMatter);
        // hide the form
  btnHideClick(self);    }
end;

procedure TfrmCritialAlert.tvCriticalDatesColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   qryCriticalAlert.Close;
   FOrderBy := ' ORDER BY ';

   FOrderBy := FOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      FOrderBy := FOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      FOrderBy := FOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else
   begin
      FOrderBy := FOrderBy + ' DESC';
      AColumn.SortOrder := soDescending;
   end;

   LoadAlert(self.sUser, True);
end;

procedure TfrmCritialAlert.tvCriticalDatesDblClick(Sender: TObject);
   function GetRecordValue(ARecordIndex, AItemIndex: Integer): Variant;
   begin
      Result := tvCriticalDates.DataController.GetValue(ARecordIndex, AItemIndex);
   end;
begin
   loadWorkflow(qryCriticalAlert.FieldByName('nmatter').AsInteger);  //GetRecordValue(tvCriticalDates.DataController.FocusedRowIndex, tvCriticalDatesNMatter.Index));
        // hide the form
   btnHideClick(self);
end;

end.

