unit TimeDiary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxEdit, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerAgendaView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerRecurrence, dxBarBuiltInMenu,
  cxSchedulerRibbonStyleEventEditor, cxSchedulerTreeListBrowser, cxContainer,
  cxCheckBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, ppParameter, ppDesignLayer, raCodMod, ppModule,
  ppVar, ppCtrls, ppBands, ppMemo, ppStrtch, ppRegion, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, dxPSCore,
  dxPScxCommon, Data.DB, dxBar, dxBarExtDBItems, cxBarEditItem, dxBarExtItems,
  cxClasses, System.ImageList, Vcl.ImgList, MemDS, DBAccess, Uni,
  System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan,
  cxSchedulerDBStorage, cxImage, cxLabel, Vcl.StdCtrls, cxTextEdit, cxMemo,
  Vcl.ExtCtrls, cxSchedulerDialogs, ppTypes, dxPScxDBEditorLnks, dxPSTextLnk;


const
   DayView = 0;
   WorkWeekView = 1;
   WeekView = 2;
   MonthView = 3;
   //AES 15/10/2009  added constant to cope with refreshing totals when deleting
   CM_RESETTOTALS = WM_USER + 1005;


type
  TcxSchedulerControlEventAccess = class(TcxSchedulerControlEvent);

  TfrmTimeDiary = class(TForm)
    SchedulerTimeDiary: TcxScheduler;
    DBStorage: TcxSchedulerDBStorage;
    dsDiary: TUniDataSource;
    ActionManager1: TActionManager;
    aWeek: TAction;
    aMonth: TAction;
    aDay: TAction;
    aToday: TAction;
    aWorkWeek: TAction;
    pnlControl: TPanel;
    qryDiary: TUniQuery;
    dsEmployee: TUniDataSource;
    imgGlyph: TImageList;
    qryEmployee: TUniQuery;
    dxBarManager1: TdxBarManager;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    siFile: TdxBarSubItem;
    siView: TdxBarSubItem;
    pbTimeEntry: TdxBarButton;
    siNew: TdxBarSubItem;
    siOpen: TdxBarSubItem;
    pbSelected: TdxBarButton;
    pbExit: TdxBarButton;
    pbDelete: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    bbAtLeft: TdxBarButton;
    bbAtRight: TdxBarButton;
    bbSave: TdxBarButton;
    actSave: TAction;
    bbConvertFees: TdxBarButton;
    actConvert: TAction;
    qryFeeInsert: TUniQuery;
    qryTempFeeInsert: TUniQuery;
    qryTmp: TUniQuery;
    qryGetAuthorTotals: TUniQuery;
    cxMemo1: TcxMemo;
    qryGetAuthorTotalsFromFeeTmp: TUniQuery;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBBRefresh: TdxBarButton;
    qryBillType: TUniQuery;
    dxBarButton1: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    Panel1: TPanel;
    cxLabel4: TcxLabel;
    cxImage1: TcxImage;
    lblUnPostedMatters: TcxLabel;
    cxLabel2: TcxLabel;
    cxImage7: TcxImage;
    lblNonBillableMatters: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    lblUnPostedOverhead: TcxLabel;
    lblUnPostedHeld: TcxLabel;
    qryUnpostedTotals: TUniQuery;
    dxBarButton7: TdxBarButton;
    qryFeeTempUpdate: TUniQuery;
    qryGetFeeTemp: TUniQuery;
    qryGetMaxTimeForDay: TUniQuery;
    imgPopupMenu: TImageList;
    bbtanPrint: TdxBarButton;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarDockControl1: TdxBarDockControl;
    qryAuthors: TUniQuery;
    dsAuthors: TUniDataSource;
    cmbAuthors: TdxBarLookupCombo;
    qryEmployeeList: TUniQuery;
    dsEmployeeList: TUniDataSource;
    qryAuthorsCODE: TStringField;
    qryAuthorsNAME: TStringField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxSchedulerReportLink;
    btnPrintDiary: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    Label1: TLabel;
    qryTodayTotal: TUniQuery;
    qryFeeTmpRpt: TUniQuery;
    dsFeeTmpRpt: TUniDataSource;
    plFeeTmpRpt: TppDBPipeline;
    rptFeeTmp: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppRegion1: TppRegion;
    ppDBMemo1: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppVariable1: TppVariable;
    ppLabel16: TppLabel;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    cbTimeSheetViewByRecorder: TcxBarEditItem;
    cbKeepOpen: TcxBarEditItem;
    cbShowAllEntries: TcxBarEditItem;
    qryTmpProcess: TUniQuery;
    dsTmpProcess: TUniDataSource;
    plTmpProcess: TppDBPipeline;
    ppFileNoteRpt: TppReport;
    ppHeaderBand2: TppHeaderBand;
    pplblTransTitle: TppLabel;
    ppLabel18: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    pplblClient: TppLabel;
    ppRegion2: TppRegion;
    ppLabel25: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBMemo2: TppDBMemo;
    pplblMatterDesc: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    pplblFooter: TppLabel;
    ppLine4: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppLine5: TppLine;
    cbShowTasks: TcxBarEditItem;
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
    procedure SchedulerEventPopupMenuPopup(
      Sender: TcxSchedulerEventPopupMenu; ABuiltInMenu: TPopupMenu;
      var AHandled: Boolean);
    procedure ViewPositionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actConvertExecute(Sender: TObject);
    procedure SchedulerDateNavigatorCustomDrawDayCaption(Sender: TObject;
      ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerDateNavigatorDayCaptionViewInfo;
      var ADone: Boolean);
    procedure SchedulerTimeDiaryCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
    procedure SchedulerDateNavigatorCustomDrawDayNumber(Sender: TObject;
      ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo;
      var ADone: Boolean);
    procedure SchedulerDateNavigatorSelectionChanged(Sender: TObject;
      const AStart, AFinish: TDateTime);
    procedure FormActivate(Sender: TObject);
    procedure dxBBRefreshClick(Sender: TObject);
    procedure pbExitClick(Sender: TObject);
    procedure ViewModeClick(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure qryDiaryAfterPost(DataSet: TDataSet);
    procedure cbShowAllEntriesClick(Sender: TObject);
    procedure bbtanPrintClick(Sender: TObject);
    procedure SchedulerTimeDiaryBeforeEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AInplace: Boolean;
      var Allow: Boolean);
    procedure cmbAuthorsCloseUp(Sender: TObject);
    procedure SchedulerTimeDiaryGetEventDisplayText(Sender: TObject;
      AEvent: TcxSchedulerControlEvent; var AText: String);
    procedure btnPrintDiaryClick(Sender: TObject);
    procedure SchedulerTimeDiaryBeforeDragEvent(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Allow: Boolean);
    procedure SchedulerTimeDiaryBeforeSizingEvent(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Allow: Boolean);
    procedure SchedulerEventPopupMenuClick(
      Sender: TcxSchedulerEventPopupMenu;
      AItem: TcxSchedulerEventPopupMenuItem; ASubItemIndex: Integer;
      var AHandled: Boolean);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure dxBarSubItem3Popup(Sender: TObject);
    procedure pbDeleteClick(Sender: TObject);
    procedure actConvertUpdate(Sender: TObject);
    procedure qryDiaryNewRecord(DataSet: TDataSet);
    procedure cbShowAllEntriesPropertiesEditValueChanged(Sender: TObject);
    procedure ppFileNoteRptBeforePrint(Sender: TObject);
    procedure cbShowTasksClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
//    procedure SchedulerResize(Sender: TObject);
  protected
     AnchorDate: TDateTime;
     procedure GenerateTotalEvents;
     function FirstTime99: Boolean;
     procedure CopyCurrentFee(Sender: TObject);
  private
    { Private declarations }
    ShowDialog: boolean;
    CurrentView: integer;
    FTimeType: string;
    bFirstTime: boolean;
    AStorage: TcxCustomSchedulerStorage;
    procedure MakeSql(AUserID: string);
    procedure CalcUnpostedTotals;
    //AES 15/10/2009  added message to cope with refreshing totals when deleting
    procedure CmResetTotals(var Msg: TMessage); message CM_RESETTOTALS;
  public
    { Public declarations }

    procedure GetAuthTotalsFromFeeTmp;
  end;

var
  frmTimeDiary: TfrmTimeDiary;


implementation

uses
   AxiomData, MiscFunc, TimeDiaryNew,
   WorkFlowDataModuleRun, Desktop, FeeEnquiry;
{$R *.dfm}


var
  iMinsPerUnit : integer;
  iRecords : integer;


procedure TfrmTimeDiary.FormCreate(Sender: TObject);
var
   iCtr: integer;
begin
   Screen.Cursor := crSQLWait;

   cxEventEditorClass := TfrmTimeDiaryNew; // indicate that the
//  new Event modal dialog will be invoked at runtime

   bFirstTime := True;
   CurrentView := DayView;
   SchedulerTimeDiary.ViewDay.TimeScale := dmAxiom.TimeUnits;
   qryEmployee.Open;
//   qryAuthors.ParamByName('code').AsString := dmAxiom.UserID;

   if SystemString('Use_Fee_Authority') = 'Y' then
   begin
      cmbAuthors.ListSource := dsEmployeeList;
      qryEmployeeList.ParamByName('code').AsString := dmAxiom.UserID;
      qryEmployeeList.Open;
   end
   else
   begin
      cmbAuthors.ListSource := dsAuthors;
      qryAuthors.Open;
   end;

{   qryAuthors.Open;
   if (not qryAuthors.Eof ) then
   begin
      cmbAuthors.KeyValue := dmAxiom.UserID;
   end
   else
      cmbAuthors.Enabled := False; }

   if ((TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y') and
      (TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISTIME_RECORDER') = 'Y')) then
      cmbAuthors.KeyValue := dmAxiom.UserID
   else
      cmbAuthors.KeyValue := qryAuthorsCODE.AsString;

   dmAxiom.Employee := dmAxiom.UserID;
   Showdialog := False;

   Self.Caption := 'Time Diary for - ' + dmAxiom.UserName;

   qryGetAuthorTotals.Close;
   qryGetAuthorTotals.ParamByName('author').AsString := dmAxiom.Employee; //dmAxiom.UserID;  // dmAxiom.EmployeeId;
   qryGetAuthorTotals.ExecSQL;

   frmDesktop.dxBarWindowList.Items.AddObject(Self.Caption, Self);

   if(not Assigned(dmWorkFlowDataModuleRun)) then
      dmWorkFlowDataModuleRun := TdmWorkFlowDataModuleRun.Create(Application);

   with dmWorkFlowDataModuleRun do
   begin
      qToDoTasks.ParamByName('emp').AsString := dmAxiom.UserID;
      qToDoTasks.ParamByName('startdate').AsDateTime := Date;
      qToDoTasks.ParamByName('enddate').AsDateTime := Date;
      qToDoTasks.Open();
   end;

 {  Scheduler.Height := SettingLoadInteger(dmAxiom.UserID, 'TIMEDIARY', 'SCHEDULER');

   if SettingLoadBoolean(dmAxiom.UserID, 'TIMEDIARY', 'MAXIMIZED') then
      Self.WindowState := wsMaximized
   else
   begin
      iCtr := SettingLoadInteger(dmAxiom.UserID, 'TIMEDIARY', 'WIDTH');
      if iCtr <> 0 then
         Self.Width := iCtr;
      iCtr := SettingLoadInteger(dmAxiom.UserID, 'TIMEDIARY', 'HEIGHT');
      if iCtr <> 0 then
         Self.Height := iCtr;
   end;      }
   cbShowAllEntries.EditValue := SettingLoadBoolean('TIMEDIARY','SHOWDAYONLYENTRIES');
   cbTimeSheetViewByRecorder.EditValue := SettingLoadBoolean('TIMEDIARY','TIMESHEETVIEWBYRECORDER');

   Screen.Cursor := crDefault;
end;

procedure TfrmTimeDiary.aWeekExecute(Sender: TObject);
begin
   if not SchedulerTimeDiary.ViewWeek.Active then
      AnchorDate := SchedulerTimeDiary.SelectedDays[0];
//   bFirstTime := True;
   SchedulerTimeDiary.EventOperations.Creating := False;
   CurrentView := WeekView;
   SchedulerTimeDiary.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
   SchedulerTimeDiary.ViewWeek.Active := True;
end;

procedure TfrmTimeDiary.aMonthExecute(Sender: TObject);
begin
   if not SchedulerTimeDiary.ViewWeek.Active then
      AnchorDate := SchedulerTimeDiary.SelectedDays[0];
//   bFirstTime := True;
   SchedulerTimeDiary.EventOperations.Creating := False;
   CurrentView := MonthView;
   SchedulerTimeDiary.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
   SchedulerTimeDiary.GoToDate(SchedulerTimeDiary.SelectedDays[0], vmMonth);
end;

procedure TfrmTimeDiary.aDayExecute(Sender: TObject);
begin
   if not SchedulerTimeDiary.ViewWeek.Active then
      AnchorDate := SchedulerTimeDiary.SelectedDays[0];
   SchedulerTimeDiary.EventOperations.Creating := True;
   CurrentView := DayView;
   SchedulerTimeDiary.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
   SchedulerTimeDiary.ViewDay.Active := True;
//   Scheduler.GoToDate(Now);
end;

procedure TfrmTimeDiary.aTodayExecute(Sender: TObject);
begin
   CurrentView := DayView;
   SchedulerTimeDiary.ViewDay.Active := True;
   SchedulerTimeDiary.GoToDate(Now);
   SchedulerTimeDiary.EventOperations.Creating := True;
end;

procedure TfrmTimeDiary.aWorkWeekExecute(Sender: TObject);
begin
   if not SchedulerTimeDiary.ViewWeek.Active then
      AnchorDate := SchedulerTimeDiary.SelectedDays[0];
//   bFirstTime := True;
   SchedulerTimeDiary.EventOperations.Creating := False;
   CurrentView := WorkWeekView;
   SchedulerTimeDiary.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
   SchedulerTimeDiary.SelectWorkDays(Now);
end;

procedure TfrmTimeDiary.SchedulerContentPopupMenuPopup(
  Sender: TcxSchedulerContentPopupMenu; ABuiltInMenu: TPopupMenu;
  var AHandled: Boolean);
var
  AItem: TMenuItem;
begin
  inherited;
  ABuiltInMenu.Images := imgGlyph;
  ABuiltInMenu.Items.Items[0].Caption := 'Add Time Diary Entry';
  ABuiltInMenu.Items.Items[0].ImageIndex := 0;
//  ABuiltInMenu.Items.Items[0].ShortCut := ShortCut(Word(VK_F5), [ssCtrl]);
//  ABuiltInMenu.Items.Delete(1);
//  AItem := NewItem('Add Time Diary Entry', scNone, False, True, pbFeeClick, 0, '');
//  AItem.ImageIndex := 0;
//  ABuiltInMenu.Items.Insert(0, AItem);

//  ABuiltInMenu.Items.Insert(2, NewLine);

end;

procedure TfrmTimeDiary.pbFeeClick(Sender: TObject);
var
  ACount: Integer;
begin
   SchedulerTimeDiary.ContentPopupMenu.Execute(cpmiNewEvent);
end;

procedure TfrmTimeDiary.SchedulerEventPopupMenuPopup(
  Sender: TcxSchedulerEventPopupMenu; ABuiltInMenu: TPopupMenu;
  var AHandled: Boolean);
var
  AItem: TMenuItem;
begin
  inherited;
  ABuiltInMenu.Images := imgPopupMenu;

  AItem := NewItem('Copy ', scNone, False, True, CopyCurrentFee, 0, '');
  AItem.ImageIndex := 3;
  AItem.Tag := 1;
  ABuiltInMenu.Items.Insert(0, AItem);
  ABuiltInMenu.Items.Insert(1, NewLine);
end;

procedure TfrmTimeDiary.ViewPositionClick(Sender: TObject);
begin
   with TdxBarButton(Sender) do
   begin
      case Tag of
        0: begin
              SchedulerTimeDiary.OptionsView.ViewPosition := vpLeft;
              bbAtLeft.ImageIndex := -1;
              bbAtRight.ImageIndex := 6;
           end;
        1: begin
              SchedulerTimeDiary.OptionsView.ViewPosition := vpRight;
              bbAtRight.ImageIndex := -1;
              bbAtLeft.ImageIndex := 6;
           end;
      end;
   end;
end;

procedure TfrmTimeDiary.FormShow(Sender: TObject);
begin
   cxEventEditorClass := TfrmTimeDiaryNew; // indicate that the
   //  new Event modal dialog will be invoked at runtime

   if SettingLoadString('TIMEDIARY', 'CALENDARPOS') =  'Left' then
   begin
      SchedulerTimeDiary.OptionsView.ViewPosition := vpLeft;
      bbAtLeft.ImageIndex := -1;
      bbAtRight.ImageIndex := 6;
   end
   else
   begin
      SchedulerTimeDiary.OptionsView.ViewPosition := vpRight;
      bbAtRight.ImageIndex := -1;
      bbAtLeft.ImageIndex := 6;
   end;
   iMinsPerUnit := SystemInteger('TIME_UNITS');
   GetAuthTotalsFromFeeTmp;
   MakeSql(dmAxiom.Employee);
end;

procedure TfrmTimeDiary.GetAuthTotalsFromFeeTmp;
begin
   try
      with qryTodayTotal do
      begin
         Close;
         ParamByName('author').AsString := dmAxiom.Employee;
         ParamByName('created').AsDateTime := SchedulerTimeDiary.DateNavigator.Date;
         Open;
         cxMemo1.Clear;
         cxMemo1.Lines.Add('Total for: ' + FormatDateTime('dddd, mmmm d, yyyy', SchedulerTimeDiary.DateNavigator.Date));
         cxMemo1.Lines.Add('');
         if eof then
            cxMemo1.Lines.Add('***No entries.***')
         else
            cxMemo1.Lines.Add(FieldByName('totalunits').AsString + ' - Units');
         Close;
      end;
// commented the following and replaced it with the entry above.  need total of wip entries irrespective of whether they are processed or not
// AES 28/07/2009
   {
   qryGetAuthorTotalsFromFeeTmp.Close;
   qryGetAuthorTotalsFromFeeTmp.ParamByName('author').AsString := dmAxiom.Employee;  //dmAxiom.UserID;
   qryGetAuthorTotalsFromFeeTmp.ParamByName('fee_date').AsDateTime := Scheduler.DateNavigator.Date;
   qryGetAuthorTotalsFromFeeTmp.ExecSQL;
   cxMemo1.Clear;
   cxMemo1.Lines.Add('Total for: ');
   cxMemo1.Lines.Add(FormatDateTime('dddd, mmmm d, yyyy', Scheduler.DateNavigator.Date));
   cxMemo1.Lines.Add('');
   if (qryGetAuthorTotalsFromFeeTmp.Eof) then
      cxMemo1.Lines.Add('***No entries.***')
   else
      while not qryGetAuthorTotalsFromFeeTmp.Eof do
      begin
         if qryGetAuthorTotalsFromFeeTmp.FieldByName('time_type').AsString = 'M' then
            cxMemo1.Lines.Add(qryGetAuthorTotalsFromFeeTmp.FieldByName('units').AsString + ' - Units');
         if qryGetAuthorTotalsFromFeeTmp.FieldByName('time_type').AsString = 'O' then
            cxMemo1.Lines.Add(qryGetAuthorTotalsFromFeeTmp.FieldByName('units').AsString + ' - Overhead Units');
         if qryGetAuthorTotalsFromFeeTmp.FieldByName('time_type').AsString = 'H' then
            cxMemo1.Lines.Add(qryGetAuthorTotalsFromFeeTmp.FieldByName('units').AsString + ' - Held Units');
         qryGetAuthorTotalsFromFeeTmp.Next;
      end;
   }

      with qryUnpostedTotals do
      begin
         close;
        // AES 25/09/2009 changed date selection to use the selected date
        // AES 15/10/2009 added trunc to dates
         ParambyName('AUTHOR').AsString := dmAxiom.Employee;  //   dmAxiom.UserID;
         ParamByName('first_date').AsDateTime :=  trunc(SchedulerTimeDiary.SelStart);// DateNavigator.FirstDate;
         ParamByName('last_date').AsDateTime := trunc(SchedulerTimeDiary.SelFinish);//  DateNavigator.LastDate;
         Open;
         lblUnPostedMatters.Caption := '0';
         lblNonBillableMatters.Caption := '0';
         lblUnPostedOverhead.Caption := '0';
         lblUnPostedHeld.Caption := '0';
         while not Eof do
         begin
            if FieldByName('TYPE').AsString = 'MB' then
               lblUnPostedMatters.Caption := FieldByName('UNITS').AsString;
            if FieldByName('TYPE').AsString = 'MN' then
               lblNonBillableMatters.Caption := FieldByName('UNITS').AsString;
            if FieldByName('TYPE').AsString = 'O' then
               lblUnPostedOverhead.Caption := FieldByName('UNITS').AsString;
            if FieldByName('TYPE').AsString = 'H' then
               lblUnPostedHeld.Caption := FieldByName('UNITS').AsString;
            next;
         end;
      end;
   except
   //
   end;
end;

procedure TfrmTimeDiary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   try
      qryTmp.SQL.Clear;
      qryTmp.SQL.Text := 'delete from feetmp where state = 99';
      qryTmp.Execute;
   finally
//      dmAxiom.uniInsight.Commit;
   end;

   qryDiary.Close;
   qryEmployee.Close;
   qryFeeInsert.Close;
   qryTempFeeInsert.Close;
   qryTmp.Close;
   qryGetAuthorTotals.Close;
   qryGetAuthorTotalsFromFeeTmp.Close;
   qryBillType.Close;
   qryUnpostedTotals.Close;
   qryFeeTempUpdate.Close;
   qryGetFeeTemp.Close;
   qryGetMaxTimeForDay.Close;
   qryAuthors.Close;
   RemoveFromDesktop(Self);
//   Action := caFree;
end;

procedure TfrmTimeDiary.FormDeactivate(Sender: TObject);
begin
   cxEventEditorClass := nil;
end;

procedure TfrmTimeDiary.FormDestroy(Sender: TObject);
var
   pos: string;
begin
{   if Self.WindowState = wsMaximized then
      SettingSave('TIMEDIARY', 'MAXIMIZED', True)
   else
   begin
      SettingDelete('TIMEDIARY', 'MAXIMIZED');
      SettingSave('TIMEDIARY', 'WIDTH', Self.Width);
      SettingSave('TIMEDIARY', 'HEIGHT', Self.Height);
   end;    }

   SettingSave('TIMEDIARY','SCHEDULER',SchedulerTimeDiary.Height);

   SettingSaveBoolean('TIMEDIARY','SHOWDAYONLYENTRIES',boolean(cbShowAllEntries.EditValue));
   SettingSaveBoolean('TIMEDIARY','TIMESHEETVIEWBYRECORDER',boolean(cbTimeSheetViewByRecorder.EditValue));

   if SchedulerTimeDiary.OptionsView.ViewPosition in [vpLeft] then
      pos := 'Left'
   else
      pos := 'Right';

   SettingSave('TIMEDIARY', 'CALENDARPOS', pos);

   cxEventEditorClass := nil;
   try
      with frmDesktop.dxBarWindowList.Items do
         Delete(IndexOfObject(Self));
   except
      // do nothing
   end;
end;

procedure TfrmTimeDiary.actConvertUpdate(Sender: TObject);
begin
   actConvert.Enabled := dmAxiom.UserAutoTimer = 'N';
end;

procedure TfrmTimeDiary.actSaveExecute(Sender: TObject);
begin
   dmAxiom.uniInsight.Commit;
end;

procedure TfrmTimeDiary.actConvertExecute(Sender: TObject);
var
   bPostingFailed: boolean;
   dAmount: double;
   nFee,
   ANewDocName,
   AParsedDocName,
   AParsedDir:        string;
begin
   Screen.Cursor := crSQLWait;
   if qryDiary.Modified then
      qryDiary.Post;

   qryTempFeeInsert.Close;
   qryTempFeeInsert.ParambyName('EMPCODE').AsString := string(cmbAuthors.KeyValue); //  dmAxiom.UserId;
   qryTempFeeInsert.ParambyName('CREATED').AsDate   := SchedulerTimeDiary.SelectedDays.Items[0];
   qryTempFeeInsert.Open;

   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      bPostingFailed := False;
      with qryTempFeeInsert do
      begin
         First;
         while not EOF do
         begin
            if ((MatterIsCurrent(FieldByName('FILEID').AsString) and (FieldByName('TIME_TYPE').AsString = 'M')) OR
               (FieldByName('TIME_TYPE').AsString = 'O')) then
            begin
               nFee := dmAxiom.GetSeqNumber('SQNC_NFEE');
               qryFeeInsert.ParamByName('CREATED').AsDateTime := FieldByName('START_DATE').AsDateTime; // FieldByName('CREATED').AsDateTime;
               qryFeeInsert.ParamByName('DESCR').AsString := FieldByName('REASON').AsString;
               qryFeeInsert.ParamByName('UNITS').AsFloat := FieldByName('UNITS').AsFloat;
               if iMinsPerUnit > 0 then
               begin
                  qryFeeInsert.ParamByName('MINS').AsInteger := round(FieldByName('UNITS').AsFloat * iMinsPerUnit);
                  qryFeeInsert.ParamByName('UNIT').AsString := 'Units';
               end
               else
               begin
                  qryFeeInsert.ParamByName('MINS').AsInteger := FieldByName('UNITS').AsInteger;
                  qryFeeInsert.ParamByName('UNIT').AsString := 'Mins';
               end;
               qryFeeInsert.ParamByName('NFEE').AsString := nFee;
               qryFeeInsert.ParamByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
               qryFeeInsert.ParamByName('RATE').AsFloat := FieldByName('RATE').AsCurrency;
               qryFeeInsert.ParamByName('NMATTER').AsInteger :=  FieldByName('NMATTER').AsInteger; // TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NMATTER');
               qryFeeInsert.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'NMATTER', FieldByName('NMATTER').AsInteger, 'NCLIENT');
               qryFeeInsert.ParamByName('PARTNER').AsString := MatterString(FieldByName('NMATTER').AsInteger, 'PARTNER');
               qryFeeInsert.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
               qryFeeInsert.ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
               qryFeeInsert.ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('AUTHOR').AsString, 'DEPT');
               qryFeeInsert.ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('AUTHOR').AsString, 'TYPE');
               qryFeeInsert.ParamByName('TAXCODE').AsString := FieldByName('TAXCODE').AsString;
               qryFeeInsert.ParamByName('START_DATE').AsDateTime := FieldByName('START_DATE').AsDateTime;
               qryFeeInsert.ParamByName('END_DATE').AsDateTime := FieldByName('END_DATE').AsDateTime;
               dAmount := FieldByName('AMOUNT').AsCurrency;
               qryFeeInsert.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', FieldByName('TAXCODE').AsString, FieldByName('CREATED').AsDateTime);
               qryFeeInsert.ParamByName('AMOUNT').AsFloat := dAmount;
               qryFeeInsert.ParamByName('VALUE').AsFloat := dAmount;
               qryFeeInsert.ParamByName('DISCOUNT').AsFloat := 0;
               qryFeeInsert.ParamByName('TIME_TYPE').AsString := FieldByName('TIME_TYPE').AsString;
               qryFeeInsert.ParamByName('ITEMS').AsString := FieldByName('ITEMS').AsString;
               qryFeeInsert.ParamByName('LABELCOLOUR').AsInteger := $000C1DFC;   //EventLabelColors[5];     // RED
               qryFeeInsert.ParamByName('PROGRAM_NAME').AsString := 'Time Diary';
               qryFeeInsert.ParamByName('EMPCODE').AsString := FieldByName('EMPCODE').AsString;
               qryFeeInsert.ParamByName('NOTES').AsString := FieldByName('NOTES').AsString;
               qryFeeInsert.ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;
               qryFeeInsert.ParamByName('PROCESSING_UNIT').AsString := 'TimeDiary';
               if FieldByName('TIME_TYPE').AsString = 'O' then
                  qryFeeInsert.ParamByName('BILLTYPE').AsString := 'NonBillable'
               else
               begin
                  qryFeeInsert.ParamByName('BILLTYPE').AsString := FieldByName('BillType').AsString;
        {          qryBillType.Close;
                  qryBillType.ParamByName('p_nmatter').AsInteger := qryFeeInsert.ParamByName('NMATTER').AsInteger;
                  qryBillType.Open;
                  if not qryBillType.Eof then
                     qryFeeInsert.ParamByName('BILLTYPE').AsString := qryBillType.FieldByName('BillType').AsString
                  else
                     qryFeeInsert.ParamByName('BILLTYPE').AsString := 'Billable';  }
               end;
               qryFeeInsert.ParamByName('TASK').AsString := FieldByName('FEE_TEMPLATE').AsString;
               qryFeeInsert.ExecSQL;

               qryFeeTempUpdate.ParamByName('nfee').AsString := nFee;
               qryFeeTempUpdate.ParamByName('labelcolour').AsInteger := $000C1DFC;  //EventLabelColors[5]; RED
               qryFeeTempUpdate.ParamByName('uniqueid').AsInteger := FieldByName('UNIQUEID').AsInteger;
               qryFeeTempUpdate.ExecSQL;

               if ((dmAxiom.Fee_file_notes = 'Y') and (not FieldByName('NOTES').IsNull)) then
               begin
                  qryTmpProcess.Close;
                  qryTmpProcess.ParambyName('uniqueid').AsInteger := qryTempFeeInsert.FieldByName('UNIQUEID').AsInteger;
                  qryTmpProcess.Open;

                  ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\File Note - ' + nfee + '_'+
                                             qryTmpProcess.FieldByName('AUTHOR').AsString + '.pdf';

                  AParsedDocName := ParseMacros(ANewDocName, qryTmpProcess.FieldByName('NMATTER').AsInteger);
                  AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
                  // check directory exists, if not create it
                  if not DirectoryExists(AParsedDir) then
                     ForceDirectories(AParsedDir);

                  ppFileNoteRpt.AllowPrintToFile := True;
                  ppFileNoteRpt.ShowPrintDialog := False;
                  ppFileNoteRpt.DeviceType := dtPDF;
                  ppFileNoteRpt.PDFSettings.OpenPDFFile := False;
                  ppFileNoteRpt.TextFileName := AParsedDocName;

                  try
                     ppFileNoteRpt.Print;
                  finally
                     SaveFileNotesToDoc(qryTmpProcess.FieldByName('START_DATE').AsDateTime, qryTmpProcess.FieldByName('NOTES').AsString,
                                        qryTmpProcess.FieldByName('REASON').AsString,
                                        qryTmpProcess.FieldByName('FILEID').AsString, qryTmpProcess.FieldByName('AUTHOR').AsString,
                                        AParsedDocName, StrToInt(nFee) );
                     qryTmpProcess.Close;
                  end;
               end;
            end
            else
               raise Exception.Create('Matter: ' + FieldByName('FILEID').AsString + ' is closed');
            qryTempFeeInsert.Next;
         end;
      end;

{    with qryTmp do
       begin
          SQL.Text := 'DELETE FROM FEETMP WHERE EMPCODE=:EMPCODE AND TIME_TYPE <> ''H''';
          ParambyName('EMPCODE').AsString := dmAxiom.UserId;
          ExecSQL;
          Close;
       end;     }

    except
       on E: Exception do
       begin
          dmAxiom.uniInsight.Rollback;
          bPostingFailed := True;
          Screen.Cursor := crDefault;
          MsgErr('Conversion process failed:'#13#13 + E.Message);
       end;
    end;

    if not bPostingFailed then
    begin
       dmAxiom.uniInsight.Commit;
       if qryDiary.UpdatesPending then
          qryDiary.CancelUpdates;
       qryDiary.Close;
       // changed the bind variable from user logged in to combo box value
       qryDiary.ParambyName('AUTHOR').AsString := string(cmbAuthors.KeyValue);  //  dmAxiom.UserId;
       qryDiary.Open;
       GetAuthTotalsFromFeeTmp;
       Screen.Cursor := crDefault;
       if boolean(cbKeepOpen.EditValue) = False then
       begin
         Self.Close;
//       RemoveFromDesktop(Self);
    end;
end;
end;

procedure TfrmTimeDiary.SchedulerDateNavigatorCustomDrawDayCaption(
  Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxSchedulerDateNavigatorDayCaptionViewInfo;
  var ADone: Boolean);
begin
   if AViewInfo.Index in [5, 6] then  // Sunday and Saturday are off days
      ACanvas.Font.Color := clRed;
   ACanvas.Font.Style := [fsBold];
end;

procedure TfrmTimeDiary.SchedulerTimeDiaryCustomDrawEvent(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo;
  var ADone: Boolean);
begin
//   AViewInfo.EventViewData.Caption := AViewInfo.Event.Caption + ' test';
//   AViewInfo.EventViewData.Caption := TcxSchedulerEventCellViewInfoAccess(AViewInfo).Caption + ' test';
   case CurrentView of
      2..4:begin
              AViewInfo.EventViewData.ShowStartTime := False;
              AViewInfo.EventViewData.ShowFinishTime := False;
           end;
   end;
end;

procedure TfrmTimeDiary.SchedulerDateNavigatorCustomDrawDayNumber(
  Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo;
  var ADone: Boolean);
begin
   if DayOfWeek(AViewInfo.Date) in [1, 7] then  // Sunday and Saturday are off days
      ACanvas.Font.Color := clRed
end;

procedure TfrmTimeDiary.GenerateTotalEvents;
var
  ADate: TDateTime;
//  AStorage: TcxCustomSchedulerStorage;
  i: integer;
begin
   if bFirstTime then
   begin
      AStorage := SchedulerTimeDiary.Storage;
      if AStorage = nil then Exit;
      AStorage.BeginUpdate;
      i := 0;
      // try to clean the table of any junk
      qryTmp.SQL.Clear;
      qryTmp.SQL.Text := 'delete from feetmp where state = 99';
      qryTmp.Execute;
      dmAxiom.uniInsight.Commit;
      try
         while not qryGetAuthorTotals.EOF do
         begin
            with AStorage.CreateEvent do
            begin
               Start := qryGetAuthorTotals.FieldByName('start_date').AsDateTime;
               Finish := qryGetAuthorTotals.FieldByName('start_date').AsDateTime;

               EventType := etNone;

               State := 99;
               SetCustomFieldValueByIndex(0, dmAxiom.UserID);

               FTimeType := qryGetAuthorTotals.FieldByName('time_type').AsString;
               if FTimeType = 'M' then
               begin
                  Caption := trim(qryGetAuthorTotals.FieldByName('units').AsString + ' - Matter Units');
           {       Caption := trim(qryGetAuthorTotals.FieldByName('fileid').AsString + ':' +
                             qryGetAuthorTotals.FieldByName('descr').AsString + ' - ' +
                             qryGetAuthorTotals.FieldByName('units').AsString + ' Units'); }
                  LabelColor := EventLabelColors[1];           //Salmon Pink
               end
               else
               if FTimeType = 'O' then
               begin
                  Caption := trim(qryGetAuthorTotals.FieldByName('units').AsString + ' - Overhead Units');
      {            Caption := trim(qryGetAuthorTotals.FieldByName('descr').AsString + ' - ' +
                                  qryGetAuthorTotals.FieldByName('units').AsString + ' Units');  }
                  LabelColor := EventLabelColors[2];          // bluey Purple
               end
               else
               begin
                  Caption := trim(qryGetAuthorTotals.FieldByName('units').AsString + ' - Held Units');
      {            Caption := trim(qryGetAuthorTotals.FieldByName('descr').AsString + ' - ' +
                                  qryGetAuthorTotals.FieldByName('units').AsString + ' Units'); }
                  LabelColor := EventLabelColors[3];      // light green
               end;

   //            ID := i;
               ResourceID := TableInteger('employee','code',dmAxiom.Employee, 'nemployee');  //dmAxiom.EmployeeId;
            end;
            qryGetAuthorTotals.Next;
            inc(i);
         end;
      finally
         AStorage.EndUpdate;
      end;
      qryGetAuthorTotals.First;
      bFirstTime := False;
   end;
end;

function TfrmTimeDiary.FirstTime99: Boolean;
begin

end;

procedure TfrmTimeDiary.SchedulerDateNavigatorSelectionChanged(
  Sender: TObject; const AStart, AFinish: TDateTime);
begin
//   CurrentView := WorkWeekView;
   if (AFinish - AStart) > 1 then
   begin
      if (AFinish - AStart) > 5 then
         SchedulerTimeDiary.EventOperations.Creating := False
      else
         SchedulerTimeDiary.EventOperations.Creating := True;
      if (bFirstTime) or (FirstTime99) then
      begin
//         GenerateTotalEvents;
         bFirstTime := False;
      end;
   end;
{   else
   if (AFinish - AStart) = 0 then
   begin
      qryTmp.SQL.Clear;
      qryTmp.SQL.Text := 'delete from feetmp where state = 99';
      qryTmp.Execute;
      dmAxiom.uniInsight.Commit;
      qryDiary.Refresh;
//      AStorage.FullRefresh;
      Scheduler.FullRefresh;
      bFirstTime := True;
      Scheduler.EventOperations.Creating := True;
   end
   else
      Scheduler.EventOperations.Creating := True; }
   GetAuthTotalsFromFeeTmp;
   with qryUnpostedTotals do
   begin
      close;
      ParambyName('AUTHOR').AsString := dmAxiom.UserID;
      ParamByName('first_date').AsDateTime := AStart;
      ParamByName('last_date').AsDateTime := AFinish;
      Open;
      lblUnPostedMatters.Caption := '0';
      lblNonBillableMatters.Caption := '0';
      lblUnPostedOverhead.Caption := '0';
      lblUnPostedHeld.Caption := '0';
      while not Eof do
      begin
         if FieldByName('TYPE').AsString = 'MB' then
            lblUnPostedMatters.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'MN' then
            lblNonBillableMatters.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'O' then
            lblUnPostedOverhead.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'H' then
            lblUnPostedHeld.Caption := FieldByName('UNITS').AsString;
         next;
      end;
   end;
end;
{
function TfrmTimeDiary.CalculateUnits: extended;
var
   Hour, Min, Sec, MSec: Word;
begin
   DecodeTime((teEnd.Time - teStart.Time), Hour, Min, Sec, MSec);
   CalculateUnits := (((Hour*60)+ Min)/dmAxiom.TimeUnits);
end;     }

procedure TfrmTimeDiary.FormActivate(Sender: TObject);
begin
   cxEventEditorClass := TfrmTimeDiaryNew; // indicate that the
   //  new Event modal dialog will be invoked at runtime

   GetAuthTotalsFromFeeTmp;
end;

procedure TfrmTimeDiary.dxBBRefreshClick(Sender: TObject);
begin
   MakeSql(dmAxiom.Employee);
   GetAuthTotalsFromFeeTmp;
end;

procedure TfrmTimeDiary.pbDeleteClick(Sender: TObject);
var
   AEvent: TcxSchedulerEvent;
   AControlEvent: TcxSchedulerControlEvent;
begin
   with DBStorage do
      AEvent := GetEventByID(qryDiary[FieldNames.ID]);

   if AEvent <> nil then
   begin
      try
         AControlEvent := TcxSchedulerControlEvent.Create(AEvent);
         SchedulerTimeDiary.DeleteEvent(AControlEvent);
      finally
         FreeAndNil(AControlEvent);
      end;
   end
   else
      AEvent.Delete;
end;

procedure TfrmTimeDiary.pbExitClick(Sender: TObject);
begin
   self.close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmTimeDiary.ViewModeClick(Sender: TObject);
begin
   if not SchedulerTimeDiary.ViewWeek.Active then
      AnchorDate := SchedulerTimeDiary.SelectedDays[0];
   SchedulerTimeDiary.SelectDays([AnchorDate], TdxBarButton(Sender).Tag in [0, 1]);
   case TdxBarButton(Sender).Tag of
      0: begin
            SchedulerTimeDiary.EventOperations.Creating := True;
            CurrentView := DayView;
            SchedulerTimeDiary.ViewDay.Active := True;
         end;
      1: begin
            SchedulerTimeDiary.EventOperations.Creating := False;
            CurrentView := WorkWeekView;
            SchedulerTimeDiary.SelectWorkDays(Date);
         end;
      2: begin
            SchedulerTimeDiary.EventOperations.Creating := False;
            CurrentView := WeekView;
            SchedulerTimeDiary.ViewWeek.Active := True;
         end;
      3: begin
            SchedulerTimeDiary.EventOperations.Creating := False;
            CurrentView := MonthView;
            SchedulerTimeDiary.GoToDate(SchedulerTimeDiary.SelectedDays[0], vmMonth);
         end;
   end;
end;

procedure TfrmTimeDiary.MakeSql(AUserID: string);
var
   LSql, LOrderBy: string;
begin
   Screen.Cursor := crHourglass;
   // changed the sql to handle nvl nmatter
   LSql := 'SELECT ROWID, UNIQUEID, CREATED, FILEID, REASON, MINS, AUTHOR, AMOUNT,'+
           'UNITS, RATE, NMATTER, TAXCODE, TAX, TIME_TYPE, TYPE, START_DATE,'+
           'END_DATE, LABELCOLOUR, STATE, RESOURCEID, OPTIONS, EMPCODE, EVENT_TYPE,'+
           'CAPTION, ITEMS, FEEBASIS, FEE_TEMPLATE, BILLTYPE, PROCESSED, NFEE, NOTES, '+
           'PROGRAM_NAME, VERSION '+
           'from feetmp '+
           'WHERE AUTHOR = :Author '+
           ' AND trunc(CREATED) = NVL(:CREATED,CREATED)  ';

   if (boolean(cbShowAllEntries.EditValue) = False) then
      LSql := LSql + ' AND NFEE IS NULL ';

{   if (boolean(cbShowAllEntries.EditValue) = True) then
      LSql := LSql + ' AND IS_TASK = ''Y'' '
   else
      LSql := LSql + ' AND IS_TASK = ''N'' ';  }

   if boolean(cbTimeSheetViewByRecorder.EditValue) then
      LSql := LSql + ' AND EMPCODE = ' + QuotedStr(dmAxiom.UserID);

   LOrderBy :=       ' order by uniqueid desc ';

   with qryDiary do
   begin
      Close;
      SQL.Clear;
      SQL.Text := LSql + LOrderBy;
      ParambyName('AUTHOR').AsString := AUserID;
      Open;
   end;

 {  with qryUnpostedTotals do
   begin
      close;
      ParambyName('AUTHOR').AsString := dmAxiom.UserID;
      ParamByName('first_date').AsDateTime := Scheduler.DateNavigator.RealFirstDate;
      ParamByName('last_date').AsDateTime := Scheduler.DateNavigator.RealLastDate;
      Open;
      lblUnPostedMatters.Caption := '0';
      lblNonBillableMatters.Caption := '0';
      lblUnPostedOverhead.Caption := '0';
      lblUnPostedHeld.Caption := '0';
      while not Eof do
      begin
         if FieldByName('TYPE').AsString = 'MB' then
            lblUnPostedMatters.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'MN' then
            lblNonBillableMatters.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'O' then
            lblUnPostedOverhead.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'H' then
            lblUnPostedHeld.Caption := FieldByName('UNITS').AsString;
         next;
      end;
   end;    }
end;

procedure TfrmTimeDiary.dxBarButton7Click(Sender: TObject);
var
   frmFeeListNew: TfrmFeeListNew;
begin
   Application.CreateForm(TfrmFeeListNew, frmFeeListNew);
   frmDesktop.AddFormToTab(frmFeeListNew, 1);
end;

procedure TfrmTimeDiary.CalcUnpostedTotals;
begin
   GetAuthTotalsFromFeeTmp;

{   with qryUnpostedTotals do
   begin
      close;
      ParambyName('AUTHOR').AsString := dmAxiom.UserID;
      Open;
      while not Eof do
      begin
         if FieldByName('TYPE').AsString = 'MB' then
            lblUnPostedMatters.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'MN' then
            lblNonBillableMatters.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'O' then
            lblUnPostedOverhead.Caption := FieldByName('UNITS').AsString;
         if FieldByName('TYPE').AsString = 'H' then
            lblUnPostedHeld.Caption := FieldByName('UNITS').AsString;
         next;
      end;
   end;      }
end;


procedure TfrmTimeDiary.qryDiaryAfterPost(DataSet: TDataSet);
begin
   CalcUnpostedTotals;
end;

procedure TfrmTimeDiary.qryDiaryNewRecord(DataSet: TDataSet);
begin
   with DataSet do
   begin
      FieldByName('PROGRAM_NAME').AsString := 'TimeDiary';
      FieldByName('VERSION').AsString := dmAxiom.GetVersionInfo;
   end;
end;

procedure TfrmTimeDiary.CopyCurrentFee(Sender: TObject);
var
   dCreated, dNewtime: TDateTime;
   sFileId, sType, sMatterDetails, sAuthor,sFeeTemplate,
   sReason, sTaxcode: string;
   nNMatter: integer;
   cRate: Currency;
   AEvent: TcxSchedulerEvent;
   eEvent: TcxSchedulerControlEvent;
   CurrentFee: integer;
begin
   with DBStorage do
      CurrentFee := qryDiary[FieldNames.ID];
   ShowDialog := True;

   qryGetFeeTemp.Close;
   qryGetFeeTemp.ParamByName('uniqueid').AsInteger := CurrentFee;
   qryGetFeeTemp.Open;

   qryGetMaxTimeForDay.Close;
   qryGetMaxTimeForDay.ParamByName('created').AsDateTime := qryGetFeeTemp.FieldByName('created').AsDateTime;
   qryGetMaxTimeForDay.ParamByName('author').AsString := qryGetFeeTemp.FieldByName('author').AsString;
   qryGetMaxTimeForDay.Open;
   dNewtime := qryGetMaxTimeForDay.FieldByName('NewTime').AsDateTime;
//   dNewtime := (dNewtime + 1);

   AEvent := DBStorage.CreateEvent;
   with AEvent do
   begin
      Caption := qryGetFeeTemp.FieldByName('caption').AsString;
      ResourceID := TableInteger('employee','code',dmAxiom.Employee, 'nemployee');
      LabelColor := qryGetFeeTemp.FieldByName('labelcolour').AsInteger;
      Start := dNewtime + 1 * MinuteToTime;
      Duration := 6 * MinuteToTime;
      Message := qryGetFeeTemp.FieldByName('reason').AsString;
      // post the data from the custom editing controls
      SetCustomFieldValueByIndex(0, dmAxiom.UserID);  // entered_by
//      SetCustomFieldValueByIndex(1, qryGetFeeTemp.FieldByName('units').AsInteger);  //units
      SetCustomFieldValueByIndex(2, qryGetFeeTemp.FieldByName('fileid').AsString);  //file id

      SetCustomFieldValueByIndex(4, qryGetFeeTemp.FieldByName('amount').AsCurrency);  //amount
      SetCustomFieldValueByIndex(5, qryGetFeeTemp.FieldByName('rate').AsCurrency);   //rate
      SetCustomFieldValueByIndex(6, qryGetFeeTemp.FieldByName('time_type').AsString);
      SetCustomFieldValueByIndex(7, qryGetFeeTemp.FieldByName('taxcode').AsString);
      SetCustomFieldValueByIndex(8, qryGetFeeTemp.FieldByName('empcode').AsString);
      SetCustomFieldValueByIndex(9, qryGetFeeTemp.FieldByName('nmatter').AsInteger);
      SetCustomFieldValueByIndex(10, qryGetFeeTemp.FieldByName('items').AsInteger);
      SetCustomFieldValueByIndex(11, qryGetFeeTemp.FieldByName('created').AsDateTime );   // created
      SetCustomFieldValueByIndex(12, qryGetFeeTemp.FieldByName('feebasis').AsString );

      SetCustomFieldValueByIndex(14, qryGetFeeTemp.FieldByName('BILLTYPE').AsString );
//      SetCustomFieldValueByIndex(15, TableString('EMPLOYEE','CODE',dmAxiom.UserId,'TYPE'));
      if qryGetFeeTemp.FieldByName('FEE_TEMPLATE').AsString <> '' then
      begin
         SetCustomFieldValueByIndex(13, qryGetFeeTemp.FieldByName('FEE_TEMPLATE').AsString );
         if TableString('SCALECOST', 'CODE', qryGetFeeTemp.FieldByName('FEE_TEMPLATE').AsString, 'UNIT') <> '' then
            SetCustomFieldValueByIndex(1, 1)
         else
            SetCustomFieldValueByIndex(10, 0);
//         qryGetFeeTemp.FieldByName('UNIT').AsString := sUnit;
      end
      else
      begin
         SetCustomFieldValueByIndex(10, 0);
      end;
      SetCustomFieldValueByIndex(1, 1);
      SetCustomFieldValueByIndex(18, qryGetFeeTemp.FieldByName('notes').AsString );
//      SetCustomFieldValueByIndex(19, qryGetFeeTemp.FieldByName('notes').AsString 'M.TITLE ||'' ''|| SHORTDESCR AS MATLOCATE';);
      Post;
   end;

   eEvent := TcxSchedulerControlEvent.Create(AEvent);
   if ShowDialog then
      SchedulerTimeDiary.EditEventUsingDialog(eEvent);
end;

procedure TfrmTimeDiary.cbShowAllEntriesClick(Sender: TObject);
begin
   MakeSQL(dmAxiom.Employee);
end;

procedure TfrmTimeDiary.cbShowAllEntriesPropertiesEditValueChanged(
  Sender: TObject);
begin
   MakeSQL(dmAxiom.Employee);
end;

procedure TfrmTimeDiary.cbShowTasksClick(Sender: TObject);
begin
   MakeSQL(dmAxiom.Employee);
end;

procedure TfrmTimeDiary.bbtanPrintClick(Sender: TObject);
//var
//    LfrmFeeBatchPrint: TfrmFeeBatchPrint;
begin
    qryFeeTmpRpt.Close;
    qryFeeTmpRpt.SQL.Text := qryDiary.SQL.Text;
    qryFeeTmpRpt.ParambyName('AUTHOR').AsString := String(cmbAuthors.KeyValue);
//    if (cbAllUnposted.checked) then
    qryFeeTmpRpt.ParambyName('CREATED').AsDateTime := SchedulerTimeDiary.SelectedDays.Items[0];
    rptFeeTmp.Print;
{
   LfrmFeeBatchPrint := TfrmFeeBatchPrint.Create(Self);
   LfrmFeeBatchPrint.DisplayReport(qryDiary, Scheduler.SelectedDays.Items[0], dmAxiom.UserID);
   LfrmFeeBatchPrint.Free;
   LfrmFeeBatchPrint := nil;    }
end;

procedure TfrmTimeDiary.SchedulerTimeDiaryBeforeEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
begin
   if AEvent.GetCustomFieldValueByIndex(15) > 0 then
      Allow := AInplace;
end;

procedure TfrmTimeDiary.cmbAuthorsCloseUp(Sender: TObject);
begin
   dmAxiom.Employee := cmbAuthors.KeyValue;
   Self.Caption := 'Time Diary for - ' + TableString('employee','code',dmAxiom.Employee,'name'); // dmAxiom.UserName;
   if frmDesktop.pagMainControl.ActivePageIndex = 0 then
 //     if frmDesktop.fdTab.ActiveFormIndex <> 0 then
         frmDesktop.pageForms.ActivePage.Caption := 'Time Diary for - ' + TableString('employee','code',dmAxiom.Employee,'name');
   MakeSQL(dmAxiom.Employee);
   GetAuthTotalsFromFeeTmp;
end;

procedure TfrmTimeDiary.SchedulerTimeDiaryGetEventDisplayText(Sender: TObject;
  AEvent: TcxSchedulerControlEvent; var AText: String);
begin
{   try
      if (AEvent.GetCustomFieldValueByIndex(6) <> 'O') then
         AText := AEvent.Caption + ' - ' + Copy(TableString('PHONEBOOK','nclient',TableInteger('MATTER','NMATTER',AEvent.GetCustomFieldValueByIndex(9),'NCLIENT'),'name'),1,40) + ' - ' + Copy(AEvent.Message, 1, 50)
      else
         AText := 'Overhead' + ' - ' + Copy(AEvent.Message, 1, 50);
   except
       //
   end;      }
end;

procedure TfrmTimeDiary.btnPrintDiaryClick(Sender: TObject);
begin
   with dxComponentPrinter1 do
   begin
      dxComponentPrinter1Link1.ReportTitle.Text := 'Time Diary for - '+ cmbAuthors.Text;
//      dxComponentPrinter1
      Preview();
   end;
end;

procedure TfrmTimeDiary.SchedulerTimeDiaryBeforeDragEvent(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; X,
  Y: Integer; var Allow: Boolean);
begin
   if AEvent.GetCustomFieldValueByIndex(15) > 0 then
      Allow := False;
end;

procedure TfrmTimeDiary.SchedulerTimeDiaryBeforeSizingEvent(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; X,
  Y: Integer; var Allow: Boolean);
begin
   if AEvent.GetCustomFieldValueByIndex(15) > 0 then
      Allow := False;
end;

// AES 15/10/2009  added following 2 entries to cater for the deletion of time entries
procedure TfrmTimeDiary.CmResetTotals(var Msg: TMessage);
begin
   GetAuthTotalsFromFeeTmp;
end;

procedure TfrmTimeDiary.SchedulerEventPopupMenuClick(
  Sender: TcxSchedulerEventPopupMenu;
  AItem: TcxSchedulerEventPopupMenuItem; ASubItemIndex: Integer;
  var AHandled: Boolean);
begin
   PostMessage(Handle, CM_RESETTOTALS, Integer(Sender), 0);
end;

procedure TfrmTimeDiary.ppFileNoteRptBeforePrint(Sender: TObject);
begin
   pplblFooter.Caption := 'Fee entry dated ' + FormatDateTime('dd/mm/yyyy hh:nn:ss',qryTmpProcess.FieldByName('start_date').AsDateTime) +
                         ' entered for ' + cmbAuthors.KeyValue + ' (' + cmbAuthors.Text+')';
   pplblTransTitle.Caption := dmAxiom.EntityName;
   pplblClient.Caption := TableString('MATTER','NMATTER',qryTmpProcess.FieldByName('nmatter').AsInteger,'TITLE');
   pplblMatterDesc.Caption := TableString('MATTER','NMATTER',qryTmpProcess.FieldByName('nmatter').AsInteger,'SHORTDESCR');
end;

procedure TfrmTimeDiary.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
   Text := FormatDateTime('dddd, mmmm d, yyyy' , SchedulerTimeDiary.SelectedDays.Items[0])
end;

procedure TfrmTimeDiary.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  Text := SystemString('COMPANY');
end;

procedure TfrmTimeDiary.ppLabel9GetText(Sender: TObject; var Text: String);
begin
   Text := 'Timesheet for - ' + cmbAuthors.Text;
end;

procedure TfrmTimeDiary.dxBarSubItem3Popup(Sender: TObject);
begin
   bbtanPrint.Enabled := (SchedulerTimeDiary.ViewDay.Active = True);
end;


end.

