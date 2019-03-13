unit FeeDiary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxStyles, cxGraphics, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerWeekView, dxBar,
  cxSchedulerDBStorage, cxControls, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxImage, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, DBAccess,
  cxGridCustomPopupMenu, cxGridPopupMenu, ImgList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, ActnList, ActnMan, dxBarExtItems,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomLabel, LMDLabel, ExtCtrls, OraSmart, cxImageComboBox;

type
  TfrmFeeDiary = class(TForm)
    Scheduler: TcxScheduler;
    DBStorage: TcxSchedulerDBStorage;
    dxBarManager1: TdxBarManager;
    grdToDo: TcxGrid;
    tvgrdToDo: TcxGridDBTableView;
    tvgrdToDoMATTER: TcxGridDBColumn;
    tvgrdToDoDESCR: TcxGridDBColumn;
    tvgrdToDoCLIENTNAME: TcxGridDBColumn;
    tvgrdToDoD: TcxGridDBColumn;
    tvgrdToDoN: TcxGridDBColumn;
    tvgrdToDoDAYSOVERDUE: TcxGridDBColumn;
    tvgrdToDoFULLSEQUENCE: TcxGridDBColumn;
    tvgrdToDoSTARTED: TcxGridDBColumn;
    tvgrdToDoTASKDESCRIPTION: TcxGridDBColumn;
    tvgrdToDoCOMPLETEBYDATE: TcxGridDBColumn;
    grdToDoLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    styGroupHeader: TcxStyle;
    cxStyle1: TcxStyle;
    pmTasks: TPopupMenu;
    miCompleteTask: TMenuItem;
    miSkipTask: TMenuItem;
    miOpenMatterTasks: TMenuItem;
    miOpenMatter: TMenuItem;
    N1: TMenuItem;
    miMergeTaskDocs: TMenuItem;
    miTaskNotes: TMenuItem;
    N2: TMenuItem;
    miReAssignTask: TMenuItem;
    miEditDueDate: TMenuItem;
    N3: TMenuItem;
    miRefresh: TMenuItem;
    ImageList: TImageList;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dsDiary: TUniDataSource;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    ActionManager1: TActionManager;
    aWeek: TAction;
    aMonth: TAction;
    aDay: TAction;
    aToday: TAction;
    aWorkWeek: TAction;
    cxSplitter1: TcxSplitter;
    siFile: TdxBarSubItem;
    siView: TdxBarSubItem;
    pbFee: TdxBarButton;
    siNew: TdxBarSubItem;
    siOpen: TdxBarSubItem;
    pbSelected: TdxBarButton;
    pbExit: TdxBarButton;
    pbDelete: TdxBarButton;
    pnlControl: TPanel;
    qryDiary: TUniQuery;
    dsEmployee: TUniDataSource;
    imgGlyph: TImageList;
    qryEmployee: TUniQuery;
    dxBarDateCombo1: TdxBarDateCombo;
    procedure FormCreate(Sender: TObject);
    procedure aWeekExecute(Sender: TObject);
    procedure aMonthExecute(Sender: TObject);
    procedure aDayExecute(Sender: TObject);
    procedure aTodayExecute(Sender: TObject);
    procedure aWorkWeekExecute(Sender: TObject);
    procedure SchedulerContentPopupMenuPopup(
      Sender: TcxSchedulerContentPopupMenu; ABuiltInMenu: TPopupMenu;
      var AHandled: Boolean);
    procedure pbFeeClick(Sender: TObject);
    procedure DBStorageEventInserted(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure SchedulerEventPopupMenuPopup(
      Sender: TcxSchedulerEventPopupMenu; ABuiltInMenu: TPopupMenu;
      var AHandled: Boolean);
    procedure SchedulerBeforeEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AInplace: Boolean;
      var Allow: Boolean);
  protected
     AnchorDate: TDateTime;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SelectEvents(AStartIndex: Integer);
  end;

var
  frmFeeDiary: TfrmFeeDiary;

implementation

uses
   AxiomData, MiscFunc, DiaryFeeNew, cxSchedulerUtils;
{$R *.dfm}

procedure TfrmFeeDiary.FormCreate(Sender: TObject);
begin
   Scheduler.ViewDay.TimeScale := dmAxiom.TimeUnits;
   qryEmployee.Open;
   with qryDiary do
   begin
      Close();
      ParamByName('author').AsInteger := dmAxiom.EmployeeId;
      Open();
   end;
end;

procedure TfrmFeeDiary.aWeekExecute(Sender: TObject);
begin
   if not Scheduler.ViewWeek.Active then
      AnchorDate := Scheduler.SelectedDays[0];
   Scheduler.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
   Scheduler.ViewWeek.Active := True;
end;

procedure TfrmFeeDiary.aMonthExecute(Sender: TObject);
begin
   if not Scheduler.ViewWeek.Active then
      AnchorDate := Scheduler.SelectedDays[0];
   Scheduler.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
   Scheduler.GoToDate(Scheduler.SelectedDays[0], vmMonth);
end;

procedure TfrmFeeDiary.aDayExecute(Sender: TObject);
begin
   if not Scheduler.ViewWeek.Active then
      AnchorDate := Scheduler.SelectedDays[0];
   Scheduler.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
   Scheduler.ViewDay.Active := True;
   Scheduler.GoToDate(Now);
end;

procedure TfrmFeeDiary.aTodayExecute(Sender: TObject);
begin
   Scheduler.GoToDate(Now);
end;

procedure TfrmFeeDiary.aWorkWeekExecute(Sender: TObject);
begin
   if not Scheduler.ViewWeek.Active then
      AnchorDate := Scheduler.SelectedDays[0];
   Scheduler.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
   Scheduler.SelectWorkDays(Now);
end;

procedure TfrmFeeDiary.SchedulerContentPopupMenuPopup(
  Sender: TcxSchedulerContentPopupMenu; ABuiltInMenu: TPopupMenu;
  var AHandled: Boolean);
var
  AItem: TMenuItem;
begin
{  inherited;
  ABuiltInMenu.Images := imgGlyph;
  AItem := NewItem('Add Event', scNone, False, True, pbAppointmentClick, 0, '');
  AItem.ImageIndex := 0;
  ABuiltInMenu.Items.Insert(0, AItem);
  AItem := NewItem('Remove Event', scNone, False, True, pbAppointmentClick, 0, '');
  AItem.ImageIndex := 5;
  AItem.Tag := 1;
  ABuiltInMenu.Items.Insert(1, AItem);
  ABuiltInMenu.Items.Insert(2, NewLine);  }

end;

procedure TfrmFeeDiary.pbFeeClick(Sender: TObject);
var
  ACount: Integer;
begin
{   if (Sender as TComponent).Tag = 0 then
      with TfrmDiaryEventEditor.Create(Scheduler) do
      try
         ACount := DBStorage.EventCount;
         if ShowModal = mrOk then
         begin
            with DBStorage.CreateEvent do
            begin
               ResourceID := dmAxiom.EmployeeId;
               caption := teSubject.Text;
               location := teLocation.Text;
               State := icbShowTimeAs.ItemIndex;
               if icbLabel.ItemIndex <> -1 then
                  LabelColor := EventLabelColors[icbLabel.ItemIndex];
               if (EventType = etNone) or not ForceSeries then
               begin
                  Start := deStart.Date + teStart.Time + BiasTime;
                  Finish := deEnd.Date + teEnd.Time + Ord(cbAllDayEvent.Checked) + BiasTime;
                  AllDayEvent := cbAllDayEvent.Checked;
               end;
               SetCustomFieldValueByIndex(0, dmAxiom.UserID);  // entered_by
               SetCustomFieldValueByIndex(1, dmAxiom.UserID);  //reminder_for
               if beMatter.Text <> '' then
                  SetCustomFieldValueByIndex(2, FFileId);  //file id
               Message := meMessage.Text;
               Post;
            end;
   //        SyncVisibility(DateNavigator.Date, GetIndex(lvCars));
           SelectEvents(ACount);
         end;
      finally
         Free;
      end
   else
      with TfrmDiaryEventEditor.Create(DBStorage) do
      try
         ACount := DBStorage.EventCount;
         if ShowModal = mrOk then
         begin
            with DBStorage.Events[0] do
            begin
               ResourceID := dmAxiom.EmployeeId;
               teSubject.Text := caption;
               teLocation.Text := location;
               icbShowTimeAs.ItemIndex := State;
               icbLabel.ItemIndex := EventLabelColors[icbLabel.ItemIndex];
               if (EventType = etNone) or not ForceSeries then
               begin
                  Start := deStart.Date + teStart.Time + BiasTime;
                  Finish := deEnd.Date + teEnd.Time + Ord(cbAllDayEvent.Checked) + BiasTime;
                  AllDayEvent := cbAllDayEvent.Checked;
               end;
               SetCustomFieldValueByIndex(0, dmAxiom.UserID);  // entered_by
               SetCustomFieldValueByIndex(1, dmAxiom.UserID);  //reminder_for
               if beMatter.Text <> '' then
                  SetCustomFieldValueByIndex(2, FFileId);  //file id
               Message := meMessage.Text;
               Post;
            end;
   //        SyncVisibility(DateNavigator.Date, GetIndex(lvCars));
           SelectEvents(ACount);
         end;
      finally
         Free;
      end     }
{  else
    with TfrmCancelReservation.Create(nil) do
    try
      if ShowModal = mrOk then
        SyncVisibility(Date, Index);
    finally
      Free;
    end;
  FillTaskGrid;  }
end;

procedure TfrmFeeDiary.SelectEvents(AStartIndex: Integer);
var
  I: Integer;
begin
   Scheduler.BeginUpdate;
   try
      Scheduler.UnselectEvents;
      for I := 0 to Scheduler.VisibleEventCount - 1 do
         if Scheduler.VisibleEvents[I].RecordIndex >= AStartIndex then
            Scheduler.SelectEvent(Scheduler.VisibleEvents[I], [ssCtrl, ssShift]);
   finally
      Scheduler.EndUpdate;
      Scheduler.CurrentView.Refresh;
  end;
end;

procedure TfrmFeeDiary.DBStorageEventInserted(Sender: TObject;
  AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
//   AEvent.ResourceID := dmAxiom.employeeID;
end;

procedure TfrmFeeDiary.SchedulerEventPopupMenuPopup(
  Sender: TcxSchedulerEventPopupMenu; ABuiltInMenu: TPopupMenu;
  var AHandled: Boolean);
var
  AItem: TMenuItem;
begin
  inherited;
  ABuiltInMenu.Images := imgGlyph;
//  AItem := NewItem('Open Event', scNone, False, True, pbAppointmentClick, 0, '');
  AItem.ImageIndex := 0;
    AItem.Tag := 1;
  ABuiltInMenu.Items.Insert(0, AItem);
  ABuiltInMenu.Items.Insert(1, NewLine);
end;

procedure TfrmFeeDiary.SchedulerBeforeEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
var
   ANewEvent: TcxSchedulerEvent;
   ACount: Integer;
   nReturn: Integer;
begin
   if not Ainplace then
   begin
      if not Assigned(frmDiaryFeeNew) then     // custom dialog
         frmDiaryFeeNew := TfrmDiaryFeeNew.Create(Application);

      if AEvent.RecordIndex = -1 then   // new event
      begin
         ANewEvent := AEvent.Storage.createEvent;
         ANewEvent.Assign(AEvent);
         frmDiaryFeeNew.FEvent :=  ANewEvent;
         ANewEvent.BeginEditing;
         with frmDiaryFeeNew do
         begin
            try
               nReturn := ShowModal;
               if nReturn = mrOk then
               begin
                  with ANewEvent do
                  begin
                     ResourceID := dmAxiom.EmployeeId;
                     caption := lblClient.Caption;//  teSubject.Text;
//                     location := teLocation.Text;
//                     State := icbShowTimeAs.ItemIndex;
//                     if icbLabel.ItemIndex <> -1 then
//                        LabelColor := EventLabelColors[icbLabel.ItemIndex];
                     if (EventType = etNone) or not ForceSeries then
                     begin
                        Start := deStart.Date + teStart.Time + BiasTime;
                        Finish := deEnd.Date + teEnd.Time + BiasTime;
//                        AllDayEvent := cbAllDayEvent.Checked;
                     end;
                     SetCustomFieldValueByIndex(0, dmAxiom.UserID);  // entered_by
                     SetCustomFieldValueByIndex(1, dmAxiom.UserID);  //reminder_for
                     if teMatter.Text <> '' then
                        SetCustomFieldValueByIndex(2, FFileId);  //file id
                     Message := mmoDesc.Text;
                     Post;
                  end;
         //        SyncVisibility(DateNavigator.Date, GetIndex(lvCars));
                 SelectEvents(ACount);
               end
               else
               if nReturn = mrCancel then
               begin
                  ANewEvent.EndEditing;
                  ANewEvent.Delete;
               end;
            finally
               if ANewEvent <> nil then
                  ANewEvent.EndEditing;
               FreeAndNil(frmDiaryFeeNew);
            end;
            ANewEvent.Post;
         end;
      end
      else
      begin
         ANewEvent := AEvent;
         with frmDiaryFeeNew do
         begin
            FEvent := ANewEvent;
            try
               if ShowModal = mrOk then

            finally
               FreeAndNil(frmDiaryFeeNew);
            end;
         end;
      end;
      Allow := False;
   end;
end;

end.
