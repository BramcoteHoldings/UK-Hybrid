unit DiaryNotify;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleUniProvider, Uni, DBAccess, MemDS, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, cxLookAndFeels, Vcl.Menus, cxNavigator,
  DateUtils, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmDiaryNotify = class(TForm)
    qryDiaryNotify: TUniQuery;
    dsDiaryNotify: TUniDataSource;
    btnDismissAll: TcxButton;
    btnDismiss: TcxButton;
    btnOpenEvent: TcxButton;
    btnSnooze: TcxButton;
    Label1: TLabel;
    qryDiaryUnnotify: TUniQuery;
    cmbReminder: TcxComboBox;
    qryDiarySnooze: TUniQuery;
    lblEvent: TLabel;
    lblLocation: TLabel;
    lblTime: TLabel;
    lblsStartTime: TLabel;
    lblsLocation: TLabel;
    Image1: TImage;
    grdDiaryNotify: TcxGrid;
    grdDiaryNotifyLevel1: TcxGridLevel;
    tvDiaryNotify: TcxGridDBTableView;
    tvDiaryNotifyNDIARY: TcxGridDBColumn;
    tvDiaryNotifyDESCR: TcxGridDBColumn;
    tvDiaryNotifyDUE: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryDiaryNotifyDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnDismissAllClick(Sender: TObject);
    procedure btnOpenEventClick(Sender: TObject);
    procedure btnDismissClick(Sender: TObject);
    procedure btnSnoozeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DiaryNotify(dtTo : TDateTime);
  end;

implementation

{$R *.DFM}

uses
  AxiomData, DiaryNew;

procedure TfrmDiaryNotify.DiaryNotify(dtTo : TDateTime);
begin
   if qryDiaryNotify.Active = True then
      qryDiaryNotify.Close;

   with qryDiaryNotify do
   begin
      ParamByName('REMINDER_FOR').AsString := dmAxiom.UserID;
//      ParamByName('NOTIFYSTART').AsDateTime := Now();
//      ParamByName('NOTIFYEND').AsDateTime := dtTo;
//    ParamByName('NOW').AsDateTime := Now;
      Open;
   end;

   Self.Caption := 'Diary Alert: ' + IntToStr(qryDiaryNotify.RecordCount);
   if qryDiaryNotify.RecordCount > 1 then
      Self.Caption := Self.Caption + ' Reminders'
   else
      Self.Caption := Self.Caption + ' Reminder';

   cmbReminder.ItemIndex := 0;

   // Populate the strings for displaying details of events
   lblEvent.Caption := qryDiaryNotify.FieldByName('DESCR').AsString;
   lblTime.Caption := qryDiaryNotify.FieldByName('START_DT').AsString;
   lblLocation.Caption := qryDiaryNotify.FieldByName('LOCATION').AsString;

   //dbgrDiaryNotify.Columns[2].
end;


procedure TfrmDiaryNotify.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryDiaryNotify.Close;
  Self.Release;
end;

procedure TfrmDiaryNotify.qryDiaryNotifyDESCRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryDiaryNotify.FieldByName('DESCR').AsString;
end;

procedure TfrmDiaryNotify.btnDismissAllClick(Sender: TObject);
begin
  with qryDiaryNotify do
  begin
    qryDiaryNotify.First;
    while not EOF do
    begin
      qryDiaryUnnotify.ParamByName('NDIARY').AsInteger := FieldByName('NDIARY').AsInteger;
      qryDiaryUnnotify.ExecSQL;
      Next;
    end;
  end;
  qryDiaryNotify.Refresh;
end;

procedure TfrmDiaryNotify.btnOpenEventClick(Sender: TObject);
var
  LDiary : TfrmDiaryNew;
  ARowInfo: TcxRowInfo;
begin
   ARowInfo := tvDiaryNotify.DataController.GetRowInfo(tvDiaryNotify.DataController.FocusedRowIndex);
   LDiary := TfrmDiaryNew.Create(Self);
   LDiary.LoadDiary(tvDiaryNotify.DataController.GetRowValue(ARowInfo, tvDiaryNotifyNDIARY.Index)); // dbgrDiaryNotify.fields[0].AsInteger);
   LDiary.ShowModal();
end;

procedure TfrmDiaryNotify.btnDismissClick(Sender: TObject);
var
   ARowInfo: TcxRowInfo;
begin
   if tvDiaryNotify.Controller.FocusedRowIndex >= 0 then
   begin
      ARowInfo := tvDiaryNotify.DataController.GetRowInfo(tvDiaryNotify.DataController.FocusedRowIndex);
      qryDiaryUnnotify.ParamByName('NDIARY').AsInteger := tvDiaryNotify.DataController.GetRowValue(ARowInfo, tvDiaryNotifyNDIARY.Index); //dbgrDiaryNotify.Fields[0].AsInteger;//FieldByName('NDIARY').AsInteger;
      qryDiaryUnnotify.ExecSQL;
      qryDiaryNotify.Refresh;
   end;
end;

procedure TfrmDiaryNotify.btnSnoozeClick(Sender: TObject);
var
  snoozeTime : Integer;
  ARowInfo: TcxRowInfo;
begin
   if tvDiaryNotify.Controller.FocusedRowIndex < 0 then
      Exit;

   // 5 mins
   if cmbReminder.ItemIndex = 0 then snoozeTime := 5
   // 10 mins
   else if cmbReminder.ItemIndex = 1 then snoozeTime := 10
   // 15 mins
   else if cmbReminder.ItemIndex = 2 then snoozeTime := 15
   // 20 mins
   else if cmbReminder.ItemIndex = 3 then snoozeTime := 20
   // 30 mins
   else if cmbReminder.ItemIndex = 4 then snoozeTime := 30
   // 1 hour
   else if cmbReminder.ItemIndex = 5 then snoozeTime := 60
   // 2 hours
   else if cmbReminder.ItemIndex = 6 then snoozeTime := 120
   // 3 hours
   else if cmbReminder.ItemIndex = 7 then snoozeTime := 180
   // 4 hours
   else if cmbReminder.ItemIndex = 8 then snoozeTime := 320
   // 8 hours
   else if cmbReminder.ItemIndex = 9 then snoozeTime := 480
   // 0.5 day
   else if cmbReminder.ItemIndex = 10 then snoozeTime := 720
   // 1 day
   else if cmbReminder.ItemIndex = 11 then snoozeTime := 1440;

   ARowInfo := tvDiaryNotify.DataController.GetRowInfo(tvDiaryNotify.DataController.FocusedRowIndex);
   qryDiarySnooze.ParamByName('SNOOZE').AsDateTime := IncMinute(Now, snoozeTime);  //  Now + EncodeTime(snoozeTime div 60, snoozeTime mod 60, 0, 0);
   qryDiarySnooze.ParamByName('NDIARY').AsInteger := tvDiaryNotify.DataController.GetRowValue(ARowInfo, tvDiaryNotifyNDIARY.Index); // dbgrDiaryNotify.fields[0].AsInteger;
   qryDiarySnooze.ExecSQL;
   Self.Close;
end;


end.
