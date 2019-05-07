unit Diary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxStyles, cxGraphics, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, DateUtils,
  cxSchedulerCustomResourceView, cxSchedulerDayView, Types,
  cxSchedulerDateNavigator, cxSchedulerWeekView, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ExtCtrls, OracleUniProvider, Uni, DBAccess, MemDS, ActnList, ActnMan, ImgList,
  dxBar, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxDateChangeButton, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxGroupBox, NumberEdit, Buttons,
  cxSchedulerDBStorage, cxSchedulerDialogs, cxCurrencyEdit, cxCheckBox,
  cxMemo, cxBlobEdit, cxImageComboBox, cxTimeEdit, cxLabel, cxDateNavigator,
  cxLookAndFeels, XPStyleActnCtrls, cxPCdxBarPopupMenu,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerYearView, cxSchedulerGanttView, ComCtrls, dxCore, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppVar,
  ppPrnabl, ppBands, ppCache, ppDesignLayer, ppParameter, cxDateUtils,
  cxSchedulerOutlookExchange, cxNavigator, System.Actions,
  cxSchedulercxGridConnection, cxBarEditItem, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxSchedulerLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  dxPSDBTCLnk, cxOutlook2WaySynchronize, dxBarBuiltInMenu,
  cxSchedulerAgendaView, cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor, cxSchedulerTreeListBrowser,
  cxDataControllerConditionalFormattingRulesManagerDialog, Outlook2010,
  dxBarExtItems, Progress, dxDateRanges, System.ImageList;

const
   DayView = 0;
   WorkWeekView = 1;
   WeekView = 2;
   MonthView = 3;
   GridView = 4;

   CM_OUTLOOK_SYNC = WM_USER + 1003;

 {  DIARYFIELDS     = 'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY' +
                     ', D.NDIARY, D.DESCR, D.SEARCH_KEY, D.PRIORITY, D.FILEID' +
                     ', D.TASK, D.TYPE, D.LOCATION, D.JURISDICTION, D.EVENT' +
                     ', D.DATAFORMFIELD, D.EVENTPRINTDESCR'; }

DIARYFIELDS     = 'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY,'+
                      'CASE WHEN (d.PRIVATE = ''Y'' AND ((reminder_for <> :Disp_ReminderFor) and (entered_by <> :Disp_ReminderFor))) THEN ''Private Appointment'' '+
                      '     WHEN (d.PRIVATE = ''Y'' AND reminder_for = :Disp_ReminderFor) THEN descr ELSE ''Appointment for: '' || D.REMINDER_FOR || '' - '' || d.DESCR END AS descr1, '+
                      //'D.DESCR, ' +
                      'D.SEARCH_KEY, D.PRIORITY, D.FILEID, D.TASK, D.TYPE,'+
                      'D.LOCATION, D.JURISDICTION, D.EVENT, D.DATAFORMFIELD, '+
                      'D.EVENTPRINTDESCR, NULL AS SHORTDESCR, NULL AS CLIENTNAME, '+
                      'D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D.STATE, D.RESOURCEID,'+
                      'D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.DESCR, '+
                      'CASE WHEN (d.PRIVATE = ''Y'' AND ((reminder_for <> :Disp_ReminderFor) and (entered_by <> :Disp_ReminderFor))) THEN ''Private Appointment'' '+
                      '     WHEN (d.PRIVATE = ''Y'' AND reminder_for = :Disp_ReminderFor) THEN d.caption else d.caption END AS CAPTION1, '+
//                      '     WHEN (d.PRIVATE = ''Y'' AND reminder_for = :Disp_ReminderFor) THEN D.REMINDER_FOR||'' - ''||D.ENTERED_BY||'' - ''|| descr ELSE D.REMINDER_FOR||'' - ''||D.ENTERED_BY||'' - ''|| d.descr END AS CAPTION, '+
                      'D.EVENTTYPE, D.EVENT_TYPE, D.ENTRYID, D.ROWID, D.NNAME, D.PRIVATE, D.NOTIFY_MINS, D.MODIFIED ';

type
  TfrmDiary99 = class(TForm)
    pagDiary: TcxPageControl;
    tabDay: TcxTabSheet;
    DiaryScheduler: TcxScheduler;
    tvPhoneMessage: TcxGridDBTableView;
    grdPhoneMessageLevel1: TcxGridLevel;
    grdPhoneMessage: TcxGrid;
    qryPhoneMessage: TUniQuery;
    qryPhoneMessageEMPCODEFOR: TStringField;
    qryPhoneMessageCREATED: TDateTimeField;
    qryPhoneMessageMESSAGE: TStringField;
    qryPhoneMessageEMPCODEBY: TStringField;
    qryPhoneMessageROWID: TStringField;
    dsPhoneMessage: TUniDataSource;
    tvPhoneMessageMESSAGE: TcxGridDBColumn;
    tvPhoneMessageCreatedDate: TcxGridDBColumn;
    tvPhoneMessageCreatedTime: TcxGridDBColumn;
    tabGrid: TcxTabSheet;
    tabFilter: TcxTabSheet;
    dxBarManager1: TdxBarManager;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    siFile: TdxBarSubItem;
    siView: TdxBarSubItem;
    pbAppointment: TdxBarButton;
    siNew: TdxBarSubItem;
    siOpen: TdxBarSubItem;
    pbSelected: TdxBarButton;
    pbExit: TdxBarButton;
    pbDelete: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    imgGlyph: TImageList;
    amPhoneMessages: TActionManager;
    Action7: TAction;
    Action8: TAction;
    ActionManager1: TActionManager;
    aWeek: TAction;
    aMonth: TAction;
    aDay: TAction;
    aToday: TAction;
    aWorkWeek: TAction;
    dxBarButton8: TdxBarButton;
    btnFee: TdxBarButton;
    dxBarButton10: TdxBarButton;
    tvDiary: TcxGridDBTableView;
    grdDiaryLevel1: TcxGridLevel;
    grdDiary: TcxGrid;
    dsDiary: TUniDataSource;
    tvDiarySTART_DT: TcxGridDBColumn;
    tvDiaryEND_DT: TcxGridDBColumn;
    tvDiaryREMINDER_FOR: TcxGridDBColumn;
    tvDiaryENTERED_BY: TcxGridDBColumn;
    tvDiarySEARCH_KEY: TcxGridDBColumn;
    tvDiaryPRIORITY: TcxGridDBColumn;
    tvDiaryFILEID: TcxGridDBColumn;
    tvDiaryTASK: TcxGridDBColumn;
    tvDiaryTYPE: TcxGridDBColumn;
    tvDiaryLOCATION: TcxGridDBColumn;
    tvDiaryEVENT: TcxGridDBColumn;
    tvDiaryDATAFORMFIELD: TcxGridDBColumn;
    tvDiaryEVENTPRINTDESCR: TcxGridDBColumn;
    tvDiarySHORTDESCR: TcxGridDBColumn;
    tvDiaryCLIENTNAME: TcxGridDBColumn;
    cxPageControl2: TcxPageControl;
    dxBarButton11: TdxBarButton;
    tvDiaryDESCR: TcxGridDBColumn;
    qryEvents: TUniQuery;
    qryEventsGROUPFIELD: TDateTimeField;
    qryEventsJURLOC: TStringField;
    qryEventsSTART_DT: TDateTimeField;
    qryEventsFILEID: TStringField;
    qryEventsMATTERDESCR: TStringField;
    qryEventsEVENT: TStringField;
    qryEventsPEOPLE: TStringField;
    qryEventsSEARCH_KEY: TStringField;
    qryEventsDESCR: TStringField;
    qryEventsEVENTPRINTDESCR: TStringField;
    qryEventsEventDescr: TStringField;
    qryEventsREMINDER_FOR: TStringField;
    tmrQuery: TTimer;
    SchedulerDBStorage: TcxSchedulerDBStorage;
    qryTime: TUniQuery;
    qryUpdateNFee: TUniQuery;
    qryFeeInsert: TUniQuery;
    qrySundryInsert: TUniQuery;
    qryDiary: TUniQuery;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    popDayView: TPopupMenu;
    N5Minutes1: TMenuItem;
    actNewDiaryEntry: TAction;
    E1: TMenuItem;
    N1: TMenuItem;
    DeleteEntry1: TMenuItem;
    qryTmp: TUniQuery;
    qryFeeEarner: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    lblAuthor: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    tbMatter: TcxButtonEdit;
    edDescr: TcxTextEdit;
    tbType: TcxTextEdit;
    cbLocation: TcxLookupComboBox;
    cbJurisdiction: TcxLookupComboBox;
    cbEvent: TcxLookupComboBox;
    cxGroupBox2: TcxGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cmbPartner: TcxLookupComboBox;
    cmbController: TcxLookupComboBox;
    cmbAuthor: TcxLookupComboBox;
    cmbReminderFor: TcxLookupComboBox;
    cbDept: TcxLookupComboBox;
    Label4: TLabel;
    neListRefresh: TcxSpinEdit;
    cxLabel1: TcxLabel;
    qryPartner: TUniQuery;
    qryAuthor: TUniQuery;
    qryController: TUniQuery;
    dsPartner: TUniDataSource;
    dsAuthor: TUniDataSource;
    dsController: TUniDataSource;
    tabCalendar: TcxTabSheet;
    cxDateNavigator1: TcxDateNavigator;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnRefresh: TdxBarButton;
    dsDiaryList: TUniDataSource;
    btnPrint: TdxBarButton;
    ppDiaryList: TppReport;
    plDiaryListRpt: TppDBPipeline;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    dsDiaryListRpt: TUniDataSource;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    qryDiaryList: TUniQuery;
    qryDiaryListRpt: TUniQuery;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    dxbtnConvertSelEntry: TdxBarButton;
    N2: TMenuItem;
    ConverttoFee1: TMenuItem;
    qryEvent: TUniQuery;
    N3: TMenuItem;
    ViewContactdetails1: TMenuItem;
    cxSchedulerGridConnection1: TcxSchedulerGridConnection;
    chkViewAllEntries: TcxBarEditItem;
    tvDiaryINT_EXT: TcxGridDBColumn;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    btnTimeGrid: TdxBarButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtpDateTo: TcxDateEdit;
    dtpDateFrom: TcxDateEdit;
    dcToday: TcxDateChangeButton;
    cxDateChangeButton2: TcxDateChangeButton;
    cxDateChangeButton3: TcxDateChangeButton;
    cxDateChangeButton4: TcxDateChangeButton;
    cxDateChangeButton5: TcxDateChangeButton;
    cxDateChangeButton6: TcxDateChangeButton;
    cxDateChangeButton7: TcxDateChangeButton;
    cxDateChangeButton8: TcxDateChangeButton;
    dxBarButton9: TdxBarButton;
    actOutlookSync: TAction;
    tvDiaryCAPTION: TcxGridDBColumn;
    tvDiaryNDIARY: TcxGridDBColumn;
    SecureSchedulerDBStorage: TcxSchedulerDBStorage;
    dsDiaryLoc: TUniDataSource;
    qryDiaryJur: TUniQuery;
    dsDiaryJur: TUniDataSource;
    qryDiaryEvent: TUniQuery;
    dsDiaryEvent: TUniDataSource;
    qryEmpDept: TUniQuery;
    dsEmpDept: TUniDataSource;
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
    procedure tmrQueryTimer(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure btnFeeClick(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure actNewDiaryEntryExecute(Sender: TObject);
    procedure DiarySchedulerDateNavigatorCustomDrawDayNumber(
      Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo;
      var ADone: Boolean);
    procedure DiarySchedulerDateNavigatorCustomDrawDayCaption(
      Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerDateNavigatorDayCaptionViewInfo;
      var ADone: Boolean);
    procedure pbDeleteClick(Sender: TObject);
    procedure DiarySchedulerDateNavigatorPeriodChanged(Sender: TObject;
      const AStart, AFinish: TDateTime);
    procedure DiarySchedulerDblClick(Sender: TObject);
    procedure DiarySchedulerEventSelectionChanged(
      Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent);
    procedure dxBarButton2Click(Sender: TObject);
    procedure ViewModeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbReminderForClick(Sender: TObject);
    procedure DiarySchedulerCustomDrawEvent(Sender: TObject;
      ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo;
      var ADone: Boolean);
    procedure DiarySchedulerDateNavigatorSelectionChanged(Sender: TObject;
      const AStart, AFinish: TDateTime);
    procedure cxDateNavigator1DblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pagDiaryChange(Sender: TObject);
    procedure dtpDateFromPropertiesChange(Sender: TObject);
    procedure dtpDateToPropertiesChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ConverttoFee1Click(Sender: TObject);
    procedure ViewContactdetails1Click(Sender: TObject);
    procedure chkViewAllEntriesPropertiesChange(Sender: TObject);
    procedure popDayViewPopup(Sender: TObject);
    procedure qryDiaryNewRecord(DataSet: TDataSet);
    procedure actOutlookSyncExecute(Sender: TObject);
    procedure actOutlookSyncUpdate(Sender: TObject);
    procedure DiarySchedulerEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure DiarySchedulerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DiarySchedulerDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure chkViewAllEntriesChange(Sender: TObject);
    procedure tbMatterPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  protected
    AnchorDate: TDateTime;
  private
    { Private declarations }
    CurrentView: integer;
    FFirstActivate: Boolean;
    FOverrideSync: Boolean;
    function DiaryDelete(NDiary: integer): Boolean;
    procedure MakeSQL;
    procedure RefreshTaskGrid;
    function WhereClause(MatterTableAlias: string; AWhere: string = ' where '): string;
    procedure DiaryBindParams(qryBind: TUniQuery);
    function MakeTitle: string;
    procedure PopulateGrid;

    procedure CmOutlookSync(var Msg: TMessage); message CM_OUTLOOK_SYNC;
    procedure DoOutlookSynchronise;
  public
    { Public declarations }
    procedure TwoWaySynch;
  end;

var
   frmDiary99: TfrmDiary99;

implementation
{$R *.dfm}

uses
   Matters, AxiomData, FeeNew, miscfunc, citfunc, PhoneMessage, DiaryNew,
   Desktop,cxGeometry, PhoneBook, MSearch;

type
  TcxSchedulerEventCellViewInfoAccess = class(TcxSchedulerEventCellViewInfo);

const
  IconOffset = 5;
  IconTopOffset = 1;

var
  userFeeEarner : boolean;
  FEventID: integer;
  afrmProgress: TfrmProgress;
  bDelete: boolean;

procedure GetResource(AEvent: TcxSchedulerEvent; const AppointmentItem: OleVariant );
begin
    if AEvent.GetCustomFieldValueByName('private') = 'Y' then
        AppointmentItem.Sensitivity := olPrivate
    else
        AppointmentItem.Sensitivity := olNormal;

end;

procedure SetResource( const AppointmentItem: OleVariant; AEvent: TcxSchedulerEvent );
var
   sEntryID,
   sLocation,
   sSubject,
   sBody, sMessage,
   sReminder_for,
   sTmpSub: string;

begin
   if AppointmentItem.Sensitivity = olPrivate then
      AEvent.SetCustomFieldValueByName('private','Y')
   else
      AEvent.SetCustomFieldValueByName('private', 'N');
   sMessage := AEvent.Message;

   sSubject := AppointmentItem.Subject;
   if sSubject <> '' then
      AEvent.Caption := sSubject;

   sLocation := trim(AppointmentItem.Location);
   if (sLocation <> '') then
   begin
      if dmAxiom.qryDiaryLoc.Locate('LOCATION', sLocation, [loCaseInsensitive]) = False then
      begin
         with dmAxiom.qryTmp do
         begin
            SQL.Text := 'insert into DIARYLOC (LOCATION) values (' + QuotedStr(sLocation) + ')';
            ExecSQL;
            dmAxiom.qryDiaryLoc.Refresh;
         end;
      end;
   end;
end;

procedure ASyncProc(ACurrent, ACount: Integer; var Abort: Boolean);
begin
  with afrmProgress do
  begin
     with cxProgressBar1 do
     begin
       Properties.Max := ACount;
       Position := ACurrent;
     end;
     lblAppointmentCount.caption := Format('Synchronising %d of %d appointments.', [ACurrent, ACount]);
  end;
end;


procedure TfrmDiary99.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
   tmrQuery.Interval := (neListRefresh.Value * 1000);
end;

procedure TfrmDiary99.tbMatterPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOk then
   begin
      tbMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString; //  dmAxiom.qryMSearch.FieldByName('TITLE').AsString;
   end;
end;

procedure TfrmDiary99.tmrQueryTimer(Sender: TObject);
begin
   tmrQuery.Enabled := False;
 //  MakeSQL;
end;

procedure TfrmDiary99.dxBarButton8Click(Sender: TObject);
var
  LMatters: TfrmMatters;
  AEvent: TcxSchedulerEvent;
begin
   with SchedulerDBStorage do
   begin
      AEvent := GetEventByID(FEventID);
      if AEvent <> nil then
      begin
         if TableString('DIARY','NDIARY',FEventID,'FILEID') <> '' then
         begin
           LMatters := TfrmMatters.Create(Self);
           LMatters.DisplayMatter(TableString('DIARY','NDIARY',FEventID,'FILEID'));
           frmDesktop.AddFormToTab(LMatters, 1);
         end
         else
            ShowMessage('No associated matter');
      end;
   end;
end;

procedure TfrmDiary99.DoOutlookSynchronise;
begin
   dxBarButton9.Enabled := False;
   PostMessage(Handle, CM_OUTLOOK_SYNC, 0, 0);
end;

procedure TfrmDiary99.btnFeeClick(Sender: TObject);
var
  EntityID: String;
  LFeeNew: TfrmFeeNew;
begin
{   if pagDiary.ActivePage = tabDay then
   begin
      EntityID := GetEventInfo(cwDayView.Cell[cwDayView.ColumnIndex, cwDayView.RowIndex] as TcwDayViewCell, eiEntityID);
      if not qryTime.Locate('NDIARY', StrToInt(EntityID), []) then
         Exit;
   end;   }
   if not qryTime.EOF then
   begin
      LFeeNew := TfrmFeeNew.Create(Self, False);
      LFeeNew.Show;
      LFeeNew.CreateFee(qryTime.FieldByName('FILEID').AsString,
            qryTime.FieldByName('REMINDER_FOR').AsString,
            qryTime.FieldByName('DESCR').AsString, '1', 0, dmAxiom.AuthorRate, 0, 'N');
   end;
end;

procedure TfrmDiary99.dxBarButton10Click(Sender: TObject);
var
  LFeeNew: TfrmFeeNew;
  eventTime, eventUnits, nfee : integer;
  errorSaving : boolean;
begin
   {
   diaryEntry has the following fields:
    - date, start time, end time, reminder for (user),
    - matter, event type, location, jurisdiction
    - client, description, type?

   fee requires the following fields:
   - task and task_amount
   - created
   - amount
   - author
   - partner
   - bank_acct
   - dept
   - descr
   - nmatter
   - nclient
   - fileid

   => Against fee earner
   - units
   - rate
   - mins

   - type
   - taxcode
   - tax
   - private
   - billed
   }

   if MessageDlg('Are you sure you want to convert all diary events on the date selected to fees?',
                 mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

//   if (DiaryScheduler.ViewDay.Active) then //  pagDiary.ActivePage = tabDay) then
//   begin
//      if DiaryScheduler.DateNavigator. {(cwMonthBrowser.ColumnIndex < 0) or (cwMonthBrowser.RowIndex < 0)} then
//      begin
//         MessageDlg('There are no diary events to convert to fees.  Please check the date and try again.', mtWarning, [mbOK], 0);
//         Exit;
//      end;

//      if true {(cwMonthBrowser.Cell[cwMonthBrowser.ColumnIndex, cwMonthBrowser.RowIndex].FontBold = False)} then
//      begin
//         MessageDlg('There are no diary events to convert to fees.  Please check the date and try again.', mtWarning, [mbOK], 0);
//         Exit;
//      end;
//   end;

   errorSaving := False;

   // Loop through events retreived via qryTime
   qryTime.First;
   while not qryTime.EOF do
   begin
     // Check to see if the event is for that particular day
//     if CompareDate(qryTime.FieldByName('START_DT').AsDateTime, DiaryScheduler.DateNavigator.FirstDate) <> EqualsValue then
//     begin
//       qryTime.Next;
//       Continue;
//     end;

     // Check if diary entry has matter linked to it, if so, then bill it
     if not VarIsNull(qryTime.FieldByName('FILEID').AsVariant) then
     begin
       if qryTime.FieldByName('FILEID').AsString <> '' then
       begin
         try
           // Determine the time interval of the event and the sUnits
           eventTime := MinutesBetween(qryTime.FieldByName('START_DT').AsDateTime, qryTime.FieldByName('END_DT').AsDateTime);
           eventUnits := Round ( eventTime / SystemInteger('TIME_UNITS') ) ;

           LFeeNew := TfrmFeeNew.Create(Self, False);
           LFeeNew.FormShow(Self);
           LFeeNew.CreateFee(qryTime.FieldByName('FILEID').AsString,
                             qryTime.FieldByName('REMINDER_FOR').AsString,
                             qryTime.FieldByName('DESCR').AsString,
                             IntToStr(eventUnits),         // sUnits
                             eventTime,                    // iMinutes
                             dmAxiom.AuthorRate,           // cRate
                             0,                            // cAmount
                             'N');                         // sFeeType

           // Set the date field for the fee to correspond with the event
           LFeeNew.dtpCreated.Date := DiaryScheduler.DateNavigator.Date; //  Trunc(cwMonthBrowser.Date);

           // Post fee
           nfee := LFeeNew.SaveFee();

           // Destroy the form
           LFeeNew.Destroy;

           // Save the nfee for the event to the diary
           if qryUpdateNFee.Active = True then
             qryUpdateNFee.Close;
           qryUpdateNFee.Params[0].AsInteger := nfee;
           qryUpdateNFee.Params[1].AsInteger := qryTime.FieldByName('NDIARY').AsInteger;
           qryUpdateNFee.ExecSQL;
           qryUpdateNFee.Close;
         except
           errorSaving := True;
           if MessageDlg('Error creating fee for diary event: ' + qryTime.FieldByName('DESCR').AsString +
                         ', please check the diary event and try again.  Continue with the rest of the events?',
                         mtError, [mbYes, mbNo], 0) = mrNo then
             break;
         end;
       end;
     end;

     qryTime.Next;
   end;

   if not errorSaving then
      MessageDlg('Succesfully completed converting diary events to fees.', mtInformation, [mbOK], 0);
end;

procedure TfrmDiary99.dxBarButton1Click(Sender: TObject);
var
  LMsg: TfrmPhoneMessage;
begin
  LMsg := TfrmPhoneMessage.Create(Self);
  LMsg.ShowModal();
  qryPhoneMessage.Close;
  qryPhoneMessage.Open;
end;

procedure TfrmDiary99.dxBarButton7Click(Sender: TObject);
begin
   if MsgAsk('Are you sure you want to delete this message?') = mrYes then
      qryPhoneMessage.Delete;
end;

procedure TfrmDiary99.FormCreate(Sender: TObject);
begin
   FFirstActivate := True;
//   qryDiary.ParamByName('DateFrom').AsDateTime := dtpDateFrom.Date;
//   qryDiary.ParamByName('DateTo').AsDateTime := dtpDateTo.Date;
{   qryDiary.ParamByName('author').AsString := dmAxiom.UserID;
   try
      qryDiary.Open;
   except
      //
   end; }

    SettingLoadStream(dmAxiom.UserID, 'tvDiary Layout', tvDiary );

    qryPhoneMessage.ParamByName('EMPCODE').AsString := dmAxiom.UserID;
    qryPhoneMessage.Open;

    if qryFeeEarner.Active = True then
      qryFeeEarner.Close;
    qryFeeEarner.ParamByName('p_code').AsString := dmAxiom.UserID;
    qryFeeEarner.Open;
    if qryFeeEarner.EOF = True then
      userFeeEarner := False
    else
      userFeeEarner := True;
    qryFeeEarner.Close;
    dmAxiom.qryDiaryLoc.Open;
    qryDiaryJur.Open;
    qryDiaryEvent.Open;
    qryEmpDept.Open;
    bDelete := False;
end;

procedure TfrmDiary99.dxBarButton11Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

//initialization
//  cxEventEditorClass := TfrmDairy99New; // indicate that the
//  new Event modal dialog will be invoked at runtime


procedure TfrmDiary99.actOutlookSyncExecute(Sender: TObject);
begin
   DoOutlookSynchronise;
   MakeSQL;
end;

procedure TfrmDiary99.actOutlookSyncUpdate(Sender: TObject);
begin
   actOutlookSync.Enabled := (dmAxiom.UserID = cmbReminderFor.EditValue);
end;

procedure TfrmDiary99.actNewDiaryEntryExecute(Sender: TObject);
var
  LDiary: TfrmDiaryNew;
const
  Add30Minutes = 30;
begin
  LDiary := TfrmDiaryNew.Create(Self);

  LDiary.SetDateTime(DiaryScheduler.SelStart ,DiaryScheduler.SelFinish);
  if LDiary.ShowModal() = mrOK then
    MakeSQL;
end;

procedure TfrmDiary99.DiarySchedulerDateNavigatorCustomDrawDayNumber(
  Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo;
  var ADone: Boolean);
begin
   if DayOfWeek(AViewInfo.Date) in [1, 7] then  // Sunday and Saturday are off days
      ACanvas.Font.Color := clRed
end;

procedure TfrmDiary99.DiarySchedulerDateNavigatorCustomDrawDayCaption(
  Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxSchedulerDateNavigatorDayCaptionViewInfo;
  var ADone: Boolean);
begin
   if AViewInfo.Index in [5, 6] then  // Sunday and Saturday are off days
      ACanvas.Font.Color := clRed;
   ACanvas.Font.Style := [fsBold];
end;

procedure TfrmDiary99.pbDeleteClick(Sender: TObject);
var
   AEvent: TcxSchedulerEvent;
   bPrivate: boolean;
begin
   FOverrideSync := True;
   if pagDiary.ActivePage = tabDay then
   begin
      with SchedulerDBStorage do
      begin
         AEvent := GetEventByID(FEventID);
         if AEvent <> nil then
         begin
            with dmAxiom.qryTmp do
            begin
               SQL.Text := 'select CASE WHEN (PRIVATE = ''Y'' AND '+
                           '((reminder_for <> :Disp_ReminderFor) and (entered_by <> :Disp_ReminderFor))) then 0 '+
                           ' WHEN (PRIVATE = ''Y'' AND reminder_for = :disp_reminderfor) THEN 1 '+
                           ' WHEN (PRIVATE = ''N'' ) then 1 else 0 end as aallow from diary where ndiary = :ndiary';
               ParamByName('ndiary').AsInteger := FEventID;
               ParamByName('disp_reminderfor').AsString := dmAxiom.UserID;
               Open;
               bPrivate := (FieldByName('aallow').AsInteger = 0);
               Close;
            end;
            if bPrivate = False then
            begin
               if DiaryDelete(FEventID) then
               begin
                  qryDiary.Close;
                  qryDiary.Open;
                  bDelete := True;
                  DoOutlookSynchronise;
//        RefreshMatter(GetEventInfo(Cell[ColumnIndex, RowIndex] as TcwDayViewCell, eiRecourceID));
               end;
            end;
         end;
      end;
   end
   else if pagDiary.ActivePage = tabGrid then
   begin
      if DiaryDelete(tvDiaryNDIARY.EditValue) then
      begin
          if tvDiaryNDIARY.EditValue > 0 then
          begin
            qryDiary.Close;
            qryDiary.Open;
            bDelete := True;
            DoOutlookSynchronise;
          end;
          if (dtpDateTo.Date <> NullDate) and
             (dtpDateFrom.Date <> NullDate) then
          begin
             //MakeSQL;  //populateGrid;
             populateGrid;
             btnPrint.Enabled := True;
          end;
      end;
   end;
end;

procedure TfrmDiary99.popDayViewPopup(Sender: TObject);
begin
   ViewContactdetails1.Enabled := FEventID > 0;
   if (cmbReminderFor.EditValue <> dmAxiom.UserID) then
      E1.Enabled := False
   else
      E1.Enabled := FEventID > 0;
   ConverttoFee1.Enabled := FEventID > 0;
   if (cmbReminderFor.EditValue <> dmAxiom.UserID) then
      DeleteEntry1.Enabled := False
   else
      DeleteEntry1.Enabled := FEventID > 0;
end;

procedure TfrmDiary99.DiarySchedulerDateNavigatorPeriodChanged(
  Sender: TObject; const AStart, AFinish: TDateTime);
begin
   qryTime.Connection := dmAxiom.uniInsight;
   qryTime.Close;
//   qryTime.ParamByName('DISP_REMINDERFOR').AsString := dmAxiom.UserID;
   if cmbReminderFor.Text = '' then
      qryTime.ParamByName('REMINDER_FOR').AsString := dmAxiom.UserID
   else
      qryTime.ParamByName('REMINDER_FOR').AsString := cmbReminderFor.EditValue;
   qryTime.ParamByName('START_DT').AsDateTime := AStart;
   qryTime.Open;
end;

procedure TfrmDiary99.DiarySchedulerDblClick(Sender: TObject);
var
  LDiary: TfrmDiaryNew;
  AEvent: TcxSchedulerEvent;
  AControlEvent: TcxSchedulerControlEvent;
  SelectedDateTimeStart, SelectedDateTimeEnd: TDateTime;
  SelectedList: TStringList;
  FormResult: integer;
  HitTest: TcxSchedulerViewHitTest;
  TargetResourceID: Variant;
  bPrivate: boolean;
begin
// AES 14/08/2018  commented the following lines as they are not needed. to be removed
{   TargetResourceID := null;
   HitTest := TcxScheduler(Sender).CurrentView.HitTest;
   if HitTest <> nil then
   begin
      if HitTest.HitAtResource then
         TargetResourceID := HitTest.Resource.ResourceID;
   end;   }

   if (FEventID > 0) then
   begin
      with SchedulerDBStorage do
      begin
         try
            with dmAxiom.qryTmp do
            begin
               SQL.Text := 'select CASE WHEN (PRIVATE = ''Y'' AND '+
                           '((reminder_for <> :Disp_ReminderFor) and (entered_by <> :Disp_ReminderFor))) then 0 '+
                           ' WHEN (PRIVATE = ''Y'' AND reminder_for = :disp_reminderfor) THEN 1 '+
                           ' WHEN (PRIVATE = ''N'' ) then 1 else 0 end as aallow from diary where ndiary = :ndiary';
               ParamByName('ndiary').AsInteger := FEventID;
               ParamByName('disp_reminderfor').AsString := dmAxiom.UserID;
               Open;
               bPrivate := (FieldByName('aallow').AsInteger = 0);
               Close;
            end;

            if (bPrivate = False) then
            begin
               try
                  AEvent := GetEventByID(FEventID);
                  if (AEvent <> nil) then
                  begin
                     try
                        LDiary := TfrmDiaryNew.Create(Self);
                        LDiary.LoadDiary(FEventID);
                        FormResult := LDiary.ShowModal() ;
                        if FormResult = mrOk then
                        begin
                          RefreshTaskGrid();
                          FOverrideSync := True;
                          DoOutlookSynchronise;
                        end;
                     except
                       //
                     end;
                  end
                  else
                  begin
                     SelectedList := TStringList.Create;
                     if pagDiary.ActivePage = tabDay then
                     begin
                       if SelectedList.Count > 1 then
                       begin
                         SelectedDateTimeStart := StrToDateTime(SelectedList.Strings[0]);
                       end;
                     end
                     else
                     begin
                       SelectedDateTimeStart := Now;
                       SelectedDateTimeEnd := SelectedDateTimeStart+EncodeTime(0, 30, 0, 0);
                     end;

                     LDiary := TfrmDiaryNew.Create(Self);

                     LDiary.SetDateTime(DiaryScheduler.SelStart ,DiaryScheduler.SelFinish );
                     FormResult := LDiary.ShowModal();
                     if FormResult = mrOK then  // for some reason ShowModal does not work if you wish to return the modal status.
                     begin
                        SelectedList.Free;
                        RefreshTaskGrid();
                        FOverrideSync := True;
                        DoOutlookSynchronise;
                     end;
                  end;
               finally
                  AEvent := nil;
                  FEventID := -1;
               end;
            end;
         except
         // silent
         end;
      end;
   end
   else
   begin
      SelectedList := TStringList.Create;
      if pagDiary.ActivePage = tabDay then
      begin
         if SelectedList.Count > 1 then
         begin
            SelectedDateTimeStart := StrToDateTime(SelectedList.Strings[0]);
         end else
         begin
            SelectedDateTimeStart := Now;
            SelectedDateTimeEnd := SelectedDateTimeStart+EncodeTime(0, 30, 0, 0);
         end;

         LDiary := TfrmDiaryNew.Create(Self);

         LDiary.SetDateTime(DiaryScheduler.SelStart ,DiaryScheduler.SelFinish );
         if LDiary.ShowModal() = mrOK then  // for some reason ShowModal does not work if you wish to return the modal status.
         begin
            SelectedList.Free;
            RefreshTaskGrid;
         end;
      end;
   end;
end;

procedure TfrmDiary99.DiarySchedulerDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    if ((chkViewAllEntries.EditValue = true) or (cmbReminderFor.EditValue <> dmAxiom.UserID)) then
       Accept := False
    else
       Accept := True;
end;

procedure TfrmDiary99.DiarySchedulerEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
        dxBarButton9.Enabled := False;
        FOverrideSync := True;
        DoOutlookSynchronise;
end;

procedure TfrmDiary99.DiarySchedulerEventSelectionChanged(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent);
begin
   if (AEvent <> nil) and (not VarIsNull(AEvent.ID)) then
      FEventID := AEvent.ID
   else
      FEventID := -1;
end;

procedure TfrmDiary99.DiarySchedulerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) and (chkViewAllEntries.EditValue = False) and (cmbReminderFor.EditValue = dmAxiom.UserID) then
  begin
        dxBarButton9.Enabled := False;
        FOverrideSync := True;
        DoOutlookSynchronise;
  end;
end;

procedure TfrmDiary99.ViewContactdetails1Click(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
  AEvent: TcxSchedulerEvent;
  iContact: integer;
begin
      with SchedulerDBStorage do
      begin
         AEvent := GetEventByID(FEventID);
         if AEvent <> nil then
         begin
            if (not VarIsNull(AEvent.GetCustomFieldValueByIndex(0))) then
            begin
               iContact := AEvent.GetCustomFieldValueByIndex(0);
               if iContact > 0 then
               begin
                   LfrmPhonebook := TfrmPhonebook.Create(Self);
    //               if frmDesktop.pagMainControl.ActivePageIndex = 0 then
    //                  frmDesktop.fdTab.AddForm(LfrmPhonebook,True);
                   LfrmPhonebook.btnCreate.Enabled := False;

                   LfrmPhonebook.Search := AEvent.GetCustomFieldValueByIndex(0);
                   LfrmPhonebook.Show();
               end
               else
                   ShowMessage('No associated contact');
            end
            else
                ShowMessage('No associated contact');
         end;
      end;
end;

procedure TfrmDiary99.ViewModeClick(Sender: TObject);
begin
   if not DiaryScheduler.ViewWeek.Active then
      AnchorDate := DiaryScheduler.SelectedDays[0];
   DiaryScheduler.SelectDays([AnchorDate], TdxBarButton(Sender).Tag in [0, 1]);
   case TdxBarButton(Sender).Tag of
      0: begin
            DiaryScheduler.EventOperations.Creating := True;
            CurrentView := DayView;
            DiaryScheduler.ViewDay.Active := True;
         end;
      1: begin
            DiaryScheduler.EventOperations.Creating := False;
            CurrentView := WorkWeekView;
            DiaryScheduler.SelectWorkDays(Date);
         end;
      2: begin
            DiaryScheduler.EventOperations.Creating := False;
            CurrentView := WeekView;
            DiaryScheduler.ViewWeek.Active := True;
         end;
      3: begin
            DiaryScheduler.EventOperations.Creating := False;
            CurrentView := MonthView;
            DiaryScheduler.GoToDate(DiaryScheduler.SelectedDays[0], vmMonth);
         end;
      4: begin
            DiaryScheduler.EventOperations.Creating := False;
            CurrentView := GridView;
            DiaryScheduler.ViewTimeGrid.Active := True;
         end;
   end;
end;

function TfrmDiary99.DiaryDelete(NDiary: Integer): Boolean;
begin
  if MsgAsk('Are you sure you want to delete this Diary entry?') = mrYes then
  begin
    qryTmp.SQL.Text := 'DELETE FROM DIARY WHERE NDIARY = ' + IntToStr(NDiary);
    qryTmp.ExecSQL;
    Result := True;
  end else
    Result := False;
end;


procedure TfrmDiary99.dxBarButton2Click(Sender: TObject);
begin
   CurrentView := DayView;
   DiaryScheduler.ViewDay.Active := True;
   DiaryScheduler.GoToDate(Now);
   DiaryScheduler.EventOperations.Creating := True;
end;

procedure TfrmDiary99.FormShow(Sender: TObject);
begin
   if(FFirstActivate) then
   begin
      FFirstActivate := False;
      FOverrideSync := False;
      // Load the combo boxes
      qryPartner.Open;
      qryAuthor.Open;
      qryController.Open;

      cmbReminderFor.OnClick := nil;
      cmbReminderFor.Properties.OnChange := nil;
      cmbReminderFor.EditValue := dmAxiom.UserID;

//      cmbReminderForClick(Self);

      // Load the saved settings
      //cbReminderFor.ItemIndex := cbReminderFor.Items.IndexOf(SettingLoadString('Diary', 'Author'));
      tbMatter.Text := SettingLoadString('Diary', 'Matter');
      cbLocation.Text := SettingLoadString('Diary', 'Location');
      cbJurisdiction.Text := SettingLoadString('Diary', 'Jurisdiction');
      cbEvent.Text := SettingLoadString('Diary', 'Event');
      tbType.Text := SettingLoadString('Diary', 'Type');
      cbDept.EditValue := SettingLoadString('Diary', 'Dept');
      cmbPartner.EditValue := SettingLoadString('DIARY', 'MATTERPARTNER');
      cmbController.EditValue := SettingLoadString('DIARY', 'MATTERCONTROLLER');
      cmbAuthor.EditValue := SettingLoadString('DIARY', 'MATTERAUTHOR');

      // load calander view settings

//      LDayViewInterval := SettingLoadInteger('Diary', 'DayViewInterval');
//      if LDayViewInterval >= 10 then
//         cwDayView.Interval := LDayViewInterval;

//      edEventRptTitle.Text := SettingLoadString('Diary', 'EventTitle');
//      if edEventRptTitle.Text = '' then
//         edEventRptTitle.Text := 'Court Commitments';
//      chkEventHideAttending.Checked := SettingLoadBoolean('DIARY', 'HIDEATTENDING');
//      chkEventDayBreak.Checked := SettingLoadBoolean('Diary', 'EventDayBreak');
      neListRefresh.Value := SettingLoadInteger('DIARY', 'LISTREFRESH');
      if neListRefresh.Value = 0 then
         neListRefresh.Value := 1200;
      tmrQuery.Interval := neListRefresh.Value;
      DiaryScheduler.GoToDate(NOW);

  //    dcToday.Click;
      tmrQuery.Enabled := False;
      RefreshTaskGrid();
      cmbReminderFor.OnClick := cmbReminderForClick;
      cmbReminderFor.Properties.OnChange := cmbReminderForClick;
      if pagDiary.ActivePage = tabgrid then
         dxBarButton9.Enabled := False;
      pagDiary.ActivePage := tabday;
      //DoOutlookSynchronise;
   end;
end;

procedure TfrmDiary99.RefreshTaskGrid;
begin
   if dmAxiom.bShutDown = False then
   begin
      MakeSQL;
//      DoOutlookSynchronise;
   end;
end;

procedure TfrmDiary99.CmOutlookSync(var Msg: TMessage);
var
   iOutlookSync, buttonselected: integer;
begin
   if (SystemString('outlook_synchronise') = 'Y') and (pagDiary.ActivePage = tabday) then
   begin
      if IsObjectActive('Outlook.Application') = True then
      begin
         DiaryScheduler.BeginUpdate;
         SchedulerDBStorage.BeginUpdate;
         afrmProgress := TfrmProgress.Create(Application);
         try
            Screen.Cursor := crHourGlass;
            iOutlookSync := TableInteger('EMPLOYEE','CODE', dmAxiom.UserID, 'OUTLOOK_SYNC');
            case iOutlookSync of
               //from outlook
               1: begin
                    dmAxiom.qryTmp.Close;
                    dmAxiom.qryTmp.SQL.Text := 'SELECT COUNT(*) AS EM_COUNT FROM DIARY WHERE ENTRYID IS NOT NULL AND REMINDER_FOR = ' + QuotedStr(dmAxiom.UserID);
                    dmAxiom.qryTmp.Open;
                    if dmAxiom.qryTmp.FieldByName('EM_COUNT').AsInteger > 0 then
                        bDelete := True
                    else
                        bDelete := False;
                     afrmProgress.Show;
                     if FOverrideSync = False then
                        cxSchedulerSynchronizeStorageWithOutlook(SchedulerDBStorage, SchedulerDBStorage.CustomFields.ItemByFieldName('EntryID'), bDelete, nil, SetResource, ASyncProc);
                  end;
               // to outlook
               2: begin
                     afrmProgress.Show;
                     cxSchedulerSynchronizeOutlookWithStorage(SchedulerDBStorage, SchedulerDBStorage.CustomFields.ItemByFieldName('EntryID'), bDelete, nil, GetResource, ASyncProc);
                  end;
               // bi directional
               3: begin
                    dmAxiom.qryTmp.Close;
                    dmAxiom.qryTmp.SQL.Text := 'SELECT COUNT(*) AS EM_COUNT FROM DIARY WHERE ENTRYID IS NOT NULL AND REMINDER_FOR = ' + QuotedStr(dmAxiom.UserID);
                    dmAxiom.qryTmp.Open;
                    if dmAxiom.qryTmp.FieldByName('EM_COUNT').AsInteger > 0 then
                    begin
                         if FOverrideSync = False then
                              cxSchedulerSynchronizeStorageWithOutlook(SchedulerDBStorage, SchedulerDBStorage.CustomFields.ItemByFieldName('EntryID'), False, nil, SetResource, ASyncProc);
                         cxSchedulerSynchronizeOutlookWithStorage(SchedulerDBStorage, SchedulerDBStorage.CustomFields.ItemByFieldName('EntryID'), True, nil, GetResource, ASyncProc);
                         //TwoWaySynch;
                         //TwoWaySynch;
                    end
                    else
                    begin
                        buttonselected := messagedlg('You have not run the Synchronisation with Outlook previously, replicating Outlook calendar entries into BHL Insight', mtConfirmation, mbOKCancel, 0);
                        if (buttonSelected = mrOK) then
                        begin
                          afrmProgress.Show;
                          cxSchedulerSynchronizeStorageWithOutlook(SchedulerDBStorage, SchedulerDBStorage.CustomFields.ItemByFieldName('EntryID'), False, nil, SetResource, ASyncProc);
                        end;
                    end;
                  end;
            end;
         finally
            DiaryScheduler.EndUpdate;
            Screen.Cursor := crDefault;
            SchedulerDBStorage.EndUpdate;
            FreeAndNil(afrmProgress);
         end;
      end;
   end;
   FOverrideSync := False;
   bDelete := False;
   dxBarButton9.Enabled := True;
   RefreshTaskGrid;
end;

procedure TfrmDiary99.MakeSQL;
begin
   DiaryScheduler.BeginUpdate;
   try
      qryDiary.Close;
      qryDiary.SQL.Clear;

      qryDiary.SQL.Add('SELECT /*+ FIRST_ROWS */');
      qryDiary.SQL.Add(DIARYFIELDS);
      qryDiary.SQL.Add('FROM DIARY D LEFT OUTER JOIN EMPLOYEE E ON D.REMINDER_FOR = E.CODE ');
      if ((cmbPartner.Text <> '') or (cmbController.Text <> '') or (cmbAuthor.Text <> '')) then
      begin
         qryDiary.SQL.Add('INNER JOIN MATTER M ON D.NMATTER = M.NMATTER ');
      end;
      qryDiary.SQL.Add(WhereClause('M'));
      qryDiary.SQL.Add('ORDER BY 1');

      DiaryBindParams(qryDiary);
      if dmAxiom.runningide = true then
         qryDiary.SQL.SaveToFile('c:\tmp\diary.sql');
      qryDiary.Open;

      qryPhoneMessage.Close;
      if (cmbReminderFor.Text <> '') then
         qryPhoneMessage.ParamByName('EMPCODE').AsString := cmbReminderFor.EditValue;
      qryPhoneMessage.Open;

      Self.Caption := MakeTitle;
   finally
      DiaryScheduler.EndUpdate;
   end;
end;


procedure TfrmDiary99.chkViewAllEntriesChange(Sender: TObject);
begin
    If (chkViewAllEntries.EditValue = True) then
    begin
        DiaryScheduler.EventOperations.Deleting := False;
        dxBarButton9.Enabled := False;
    end
    else
    begin
        DiaryScheduler.EventOperations.Deleting := True;
        dxBarButton9.Enabled := True;
    end;
    PopulateGrid;
    RefreshTaskGrid;
end;

procedure TfrmDiary99.chkViewAllEntriesPropertiesChange(Sender: TObject);
begin
   btnRefresh.Click;
   If (chkViewAllEntries.EditValue = True) then
   begin
      dxBarButton9.Enabled := False;
      pbDelete.Enabled := False;
   end;
   if (pagDiary.ActivePage = tabDay) and (cmbReminderFor.EditValue = dmAxiom.UserID) then
   begin
       If (chkViewAllEntries.EditValue = True) then
       begin
          dxBarButton9.Enabled := False;
          pbDelete.Enabled := False;
       end
       else
       begin
          dxBarButton9.Enabled := True;
          pbDelete.Enabled := True;
       end;
   end;
end;

procedure TfrmDiary99.cmbReminderForClick(Sender: TObject);
begin
//  lblReminderForName.Caption := TableString('EMPLOYEE', 'CODE', string(cmbReminderFor.EditValue), 'NAME');
   btnRefresh.Click;
   if (cmbReminderFor.EditValue = dmAxiom.UserID) and (chkViewAllEntries.EditValue = False) then
   begin
        DiaryScheduler.EventOperations.Deleting := True;
        dxBarButton9.Enabled := True;
   end
   else
   begin
        DiaryScheduler.EventOperations.Deleting := False;
        dxBarButton9.Enabled := False;
   end;
end;

procedure TfrmDiary99.ConverttoFee1Click(Sender: TObject);
var
  LFeeNew: TfrmFeeNew;
  eventTime, eventUnits, nfee : integer;
  errorSaving,
  bPrivate : boolean;
  AEvent: TcxSchedulerEvent;
  AControlEvent: TcxSchedulerControlEvent;
begin
   with SchedulerDBStorage do
   begin
      AEvent := GetEventByID(FEventID);
      if AEvent <> nil then
      begin
         with dmAxiom.qryTmp do
         begin
            SQL.Text := 'select CASE WHEN (PRIVATE = ''Y'' AND '+
                        '((reminder_for <> :Disp_ReminderFor) and (entered_by <> :Disp_ReminderFor))) then 0 '+
                        ' WHEN (PRIVATE = ''Y'' AND reminder_for = :disp_reminderfor) THEN 1 '+
                        ' WHEN (PRIVATE = ''N'' ) then 1 else 0 end as aallow from diary where ndiary = :ndiary';
            ParamByName('ndiary').AsInteger := FEventID;
            ParamByName('disp_reminderfor').AsString := dmAxiom.UserID;
            Open;
            bPrivate := (FieldByName('aallow').AsInteger = 0);
            Close;
         end;

         if bPrivate = False then
         begin
            with qryEvent do
            begin
               Close;
               ParamByName('NDIARY').AsInteger := FEventID;
               Open;
               if not EOF then
               begin
                  eventTime := MinutesBetween(qryEvent.FieldByName('START_DT').AsDateTime, qryEvent.FieldByName('END_DT').AsDateTime);
                  eventUnits := Round ( eventTime / SystemInteger('TIME_UNITS') ) ;
                  if (qryEvent.FieldByName('FILEID').AsString <> '') then
                  begin
                     LFeeNew := TfrmFeeNew.Create(Self, False);
                     // Set the date field for the fee to correspond with the event
                     LFeeNew.dtpCreated.Date := DiaryScheduler.DateNavigator.Date; //  Trunc(cwMonthBrowser.Date);

                     LFeeNew.DisplayMatter(qryEvent.FieldByName('FILEID').AsString);
                     LFeeNew.SetAuthor := qryEvent.FieldByName('REMINDER_FOR').AsString;
                     LFeeNew.SetStartTime := qryEvent.FieldByName('START_DT').AsDateTime;
                     LFeeNew.SetEndTime := qryEvent.FieldByName('END_DT').AsDateTime;
                     LFeeNew.SetUnits := IntToStr(eventUnits);
                     LFeeNew.SetDescription := qryEvent.FieldByName('DESCR').AsString;

                     nfee := LFeeNew.ShowModal();
{                     LFeeNew.CreateFee(qryEvent.FieldByName('FILEID').AsString,
                                      qryEvent.FieldByName('REMINDER_FOR').AsString,
                                      qryEvent.FieldByName('DESCR').AsString,
                                      IntToStr(eventUnits),         // sUnits
                                      eventTime,                    // iMinutes
                                      dmAxiom.AuthorRate,           // cRate
                                      0,                            // cAmount
                                      'N');                         // sFeeType  }


                     // Post fee
 //                    nfee := LFeeNew.SaveFee();

                     // Destroy the form
 //                    LFeeNew.Destroy;

                     if nfee <> mrCancel then
                     begin
                        // Save the nfee for the event to the diary
                        if qryUpdateNFee.Active = True then
                           qryUpdateNFee.Close;
                        qryUpdateNFee.Params[0].AsInteger := nfee;
                        qryUpdateNFee.Params[1].AsInteger := qryEvent.FieldByName('NDIARY').AsInteger;
                        qryUpdateNFee.ExecSQL;
                        qryUpdateNFee.Close;
                     end;
                  end
                  else
                     MsgInfo('Not converted to Fee because there is no Matter number');
               end;
            end;
         end;
      end;
   end;
end;

function TfrmDiary99.WhereClause(MatterTableAlias: string; AWhere: string = ' where '): string;
var
  sAND: string;
  sSQLWhere: string;
begin
  // Build the SQL Filter query
  sSQLWhere := '';
  sAND := ' AND ';

  if (cmbReminderFor.Text <> '') AND BOOLEAN(chkViewAllEntries.Editvalue) = false then
      sSQLWhere := sSQLWhere + AWhere + 'D.REMINDER_FOR = NVL(:ReminderFor, D.REMINDER_FOR)';
  if (cmbReminderFor.Text = '') AND (BOOLEAN(chkViewAllEntries.Editvalue) = false) AND (cbDept.EditValue <> '') then
      sSQLWhere := sSQLWhere + AWhere + 'E.DEPT = ' + cbDept.EditValue;
  if tbMatter.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'D.FILEID = :FileID';
  if cbLocation.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'UPPER(D.LOCATION) = :Location';
  if cbJurisdiction.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'UPPER(D.JURISDICTION) = :Jurisdiction';
  if cbEvent.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'UPPER(D.EVENT) = :Event';
  if tbType.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'D.TYPE IN :Type';
  if edDescr.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'UPPER(D.DESCR) LIKE :Descr';
  if MatterTableAlias <> '' then
  begin
    if cmbPartner.Text <> '' then
      sSQLWhere := sSQLWhere + sAND + MatterTableAlias +'.PARTNER = :MatterPartner';
    if cmbController.Text <> '' then
      sSQLWhere := sSQLWhere + sAND + MatterTableAlias +'.CONTROLLER = :MatterController';
    if cmbAuthor.Text <> '' then
      sSQLWhere := sSQLWhere + sAND + MatterTableAlias +'.AUTHOR = :MatterAuthor';
  end;

  Result := sSQLWhere;
end;

procedure TfrmDiary99.DiaryBindParams(qryBind: TUniQuery);
var
  iCtr: integer;
begin
  // Populate the parameter list of the query
  for iCtr := 0 to qryBind.Params.Count - 1 do
  begin
    if qryBind.Params[iCtr].Name = 'DateFrom' then
    begin
      if (dtpDateFrom.Date <> NullDate) then
         qryBind.Params[iCtr].AsDate := Trunc(dtpDateFrom.Date)
    end
    else if qryBind.Params[iCtr].Name = 'DateTo' then
    begin
      if (dtpDateTo.Date <> NullDate) then
         qryBind.Params[iCtr].AsDate := Trunc(dtpDateTo.Date) + 1;
    end
    else if qryBind.Params[iCtr].Name = 'ReminderFor' then
    begin
       if (cmbReminderFor.Text <> '') then
         qryBind.Params[iCtr].AsString := UpperCase(cmbReminderFor.EditValue);
    end
    else if qryBind.Params[iCtr].Name = 'FileID' then
      qryBind.Params[iCtr].AsString := UpperCase(tbMatter.Text)
    else if qryBind.Params[iCtr].Name = 'Location' then
      qryBind.Params[iCtr].AsString := UpperCase(cbLocation.EditValue)
    else if qryBind.Params[iCtr].Name = 'Jurisdiction' then
      qryBind.Params[iCtr].AsString := UpperCase(cbJurisdiction.EditValue)
    else if qryBind.Params[iCtr].Name = 'Event' then
      qryBind.Params[iCtr].AsString := UpperCase(cbEvent.EditValue)
    else if qryBind.Params[iCtr].Name = 'Type' then
      qryBind.Params[iCtr].AsString := UpperCase(tbType.Text)
    else if qryBind.Params[iCtr].Name = 'Descr' then
      qryBind.Params[iCtr].AsString := '%' + UpperCase(edDescr.Text) + '%'
    else if qryBind.Params[iCtr].Name = 'MatterPartner' then
      qryBind.Params[iCtr].AsString := cmbPartner.EditValue
    else if qryBind.Params[iCtr].Name = 'MatterController' then
      qryBind.Params[iCtr].AsString := cmbController.EditValue
    else if qryBind.Params[iCtr].Name = 'MatterAuthor' then
      qryBind.Params[iCtr].AsString := cmbAuthor.EditValue
    else if qryBind.Params[iCtr].Name = 'Disp_ReminderFor' then
      qryBind.Params[iCtr].AsString := UpperCase(dmAxiom.UserID)
    else
      qryBind.Params[iCtr].Value := Null;
  end;
end;

function TfrmDiary99.MakeTitle: string;
var
  sTitle : string;
begin
   sTitle := 'Diary';
   if (Boolean(chkViewAllentries.EditValue) = True) then
       sTitle := sTitle + ' for All Staff '
   else
   begin
      if (cmbReminderFor.Text <> '') and (Boolean(chkViewAllentries.EditValue) = False)  then
         sTitle := sTitle + ' for ' + cmbReminderFor.Text + ' (' + cmbReminderFor.EditValue + ')';
      if cmbPartner.Text <> '' then
         sTitle := sTitle + ' for Matter Partner ' + cmbPartner.Text + ' (' + cmbPartner.EditValue + ')';
      if cmbController.Text <> '' then
         sTitle := sTitle + ' for Matter Controller ' + cmbController.Text + ' (' + cmbController.EditValue + ')';
      if cmbPartner.Text <> '' then
         sTitle := sTitle + ' for Matter Author ' + cmbAuthor.Text + ' (' + cmbAuthor.EditValue + ')';
   end;

   if(pagDiary.ActivePage = tabGrid) then
   begin
      if Trunc(dtpDateFrom.Date) = NullDate then
         sTitle := sTitle + ' for ' + FormatDateTime('ddddd', DiaryScheduler.DateNavigator.Date)
      else if Trunc(dtpDateFrom.Date) = Trunc(dtpDateTo.Date) then
         sTitle := sTitle + ' for ' + FormatDateTime('ddddd', dtpDateFrom.Date)
      else
         sTitle := sTitle + ' for the period ' + FormatDateTime('ddddd', dtpDateFrom.Date) +
                  ' to ' + FormatDateTime('ddddd', dtpDateTo.Date);
   end
   else
      sTitle := sTitle + ' for ' + FormatDateTime('ddddd', DiaryScheduler.DateNavigator.Date);

   Result := sTitle;
end;


procedure TfrmDiary99.DiarySchedulerCustomDrawEvent(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo;
  var ADone: Boolean);

 { procedure OffsetEventContent(AViewInfo: TcxSchedulerEventCellViewInfo;
    ADelta: Integer);
  begin
    TcxSchedulerEventCellViewInfoAccess(AViewInfo).FContentRect.Left :=
      TcxSchedulerEventCellViewInfoAccess(AViewInfo).FContentRect.Left + ADelta;
    if AViewInfo.ShowStartTime then
      OffsetRect(TcxSchedulerEventCellViewInfoAccess(AViewInfo).FStartRect, ADelta, 0);
    if AViewInfo.ShowFinishTime then
      OffsetRect(TcxSchedulerEventCellViewInfoAccess(AViewInfo).FFinishRect, ADelta, 0);
  end;    }
var
  AIconHeight, AHeightDelta: Integer;
begin
{  // setting the event's clip region
  TcxSchedulerEventCellViewInfoAccess(AViewInfo).FCanvas := ACanvas;
  TcxSchedulerEventCellViewInfoAccess(AViewInfo).ClippingCreate(True);

  // offset content rects to the right
  OffsetEventContent(AViewInfo, imgGlyph.Width + 2 * IconOffset);

  // calculating the Icon's Height with offsets
  AIconHeight := imgGlyph.Height + 2 * IconTopOffset;
  AHeightDelta := AIconHeight - cxRectHeight(AViewInfo.ContentRect);

  //offset the message's top side to the bottom if the Icon doesn't fit into event's content
  if AHeightDelta > 0 then
  begin
    Inc(TcxSchedulerEventCellViewInfoAccess(AViewInfo).FMessageRect.Top, AHeightDelta);
    Inc(TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect.Top, AHeightDelta);
  end;

  AViewInfo.Draw(ACanvas);

  with AViewInfo.Bounds do
    ACanvas.DrawImage(imgGlyph, Left + IconOffset, Top + IconTopOffset, 13, True);

  // restore the previous clip region
  TcxSchedulerEventCellViewInfoAccess(AViewInfo).ClippingRestore;

  // restore the previous content rects' bounds
  OffsetEventContent(AViewInfo, -(imgGlyph.Width + 2 * IconOffset));

  // restore the message's top position
  if AHeightDelta > 0 then
  begin
    Dec(TcxSchedulerEventCellViewInfoAccess(AViewInfo).FMessageRect.Top, AHeightDelta);
    Dec(TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect.Top, AHeightDelta);
  end;

  ADone := True;        }

end;

procedure TfrmDiary99.DiarySchedulerDateNavigatorSelectionChanged(
  Sender: TObject; const AStart, AFinish: TDateTime);
begin
   qryTime.Close;
//   qryTime.ParamByName('DISP_REMINDERFOR').AsString := dmAxiom.UserID;
   if cmbReminderFor.Text = '' then
      qryTime.ParamByName('REMINDER_FOR').AsString := dmAxiom.UserID
   else
      qryTime.ParamByName('REMINDER_FOR').AsString := cmbReminderFor.EditValue;
   qryTime.ParamByName('START_DT').AsDateTime := AStart;
   qryTime.Open;
   Self.Caption := MakeTitle;
end;

procedure TfrmDiary99.cxDateNavigator1DblClick(Sender: TObject);
begin
   pagDiary.ActivePageIndex := 0;
end;

procedure TfrmDiary99.btnRefreshClick(Sender: TObject);
begin
    PopulateGrid;
    RefreshTaskGrid;
end;

procedure TfrmDiary99.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    cmbReminderFor.OnClick := nil;
    qryDiary.Close;
    qryDiaryList.Close;
    qryPhoneMessage.Close;
    qryEvents.Close;
    qryTime.Close;
    qryEmployee.Close;
    qryFeeEarner.Close;
    dmAxiom.qryDiaryLoc.Open;
    qryDiaryJur.Open;
    qryDiaryEvent.Open;
    qryEmpDept.Open;
    qryPartner.Close;
    qryPartner.Close;
    qryController.Close;

   SettingSaveStream(dmAxiom.UserID, 'tvDiary Layout', tvDiary );
   RemoveFromDesktop(Self);
end;

procedure TfrmDiary99.pagDiaryChange(Sender: TObject);
begin
   btnPrint.Enabled := False;
   if pagDiary.ActivePage = tabFilter then
   begin
      dxBarButton9.Enabled := False;
      pbDelete.Enabled := False;
      pbAppointment.Enabled := False;
   end;
   if pagDiary.ActivePage = tabgrid then
   begin
      pbAppointment.Enabled := True;
      pbDelete.Enabled := False;
      if (dtpDateTo.Date <> NullDate) and
         (dtpDateFrom.Date <> NullDate) then
      begin
         //MakeSQL;  //populateGrid;
          populateGrid;
          btnPrint.Enabled := True;
          if (chkViewAllEntries.EditValue = True) or (cmbReminderFor.EditValue <> dmAxiom.UserID) then
              pbDelete.Enabled := False
          else
              pbDelete.Enabled := True;
      end;
{      qryDiary.SQL.Clear;
      qryDiary.SQL.Text :=
              ' SELECT '+
              'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY, D.DESCR, D.SEARCH_KEY,'+
              ' D.PRIORITY, D.FILEID, D.TASK, D.TYPE, D.LOCATION, D.JURISDICTION, '+
              ' D.EVENT, D.DATAFORMFIELD, D.EVENTPRINTDESCR, NULL AS SHORTDESCR, NULL AS CLIENTNAME,'+
              ' D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D.STATE, D.RESOURCEID,'+
              ' D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.ROWID '+
              ' FROM DIARY D '+
              ' WHERE '+
              ' D.START_DT >= :DateFrom
              ' AND D.START_DT < :DateTo AND
              ' D.NMATTER IS NULL '+
              ' AND D.REMINDER_FOR = :Author '+
              ' UNION '+
              ' SELECT '+
              ' D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY, D.DESCR, D.SEARCH_KEY, '+
              ' D.PRIORITY, D.FILEID, D.TASK, D.TYPE, D.LOCATION, D.JURISDICTION, '+
              ' D.EVENT, D.DATAFORMFIELD, D.EVENTPRINTDESCR, M.SHORTDESCR, P.SEARCH AS CLIENTNAME, '+
              ' D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D.STATE, D.RESOURCEID, '+
              ' D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER, D.CAPTION, D.ROWID '+
              ' FROM MATTER M, PHONEBOOK P, DIARY D '+
              ' WHERE '+
              ' D.START_DT >= :DateFrom
              ' AND D.START_DT < :DateTo AND
              ' D.NMATTER IS NOT NULL AND D.NMATTER = M.NMATTER '+
              ' AND D.REMINDER_FOR = :Author '+
              ' AND M.NCLIENT = P.NCLIENT '+
              ' ORDER BY 1 ';     }
      dxBarButton9.Enabled := False;
   end;
   if pagDiary.ActivePage = tabCalendar then
   begin
      pbAppointment.Enabled := True;
      dxBarButton9.Enabled := False;
      pbDelete.Enabled := False;
   end;
   if pagDiary.ActivePage = tabDay then
   begin
      pbAppointment.Enabled := True;
      if (chkViewAllEntries.EditValue = True) or (cmbReminderFor.EditValue <> dmAxiom.UserID) then
      begin
        dxBarButton9.Enabled := False;
        pbDelete.Enabled := False;
      end
      else
      begin
        dxBarButton9.Enabled := True;
        pbDelete.Enabled := True;
      end;
   end;
end;

procedure TfrmDiary99.PopulateGrid;
begin
   with qryDiaryList do
   begin
      Close;
      SQL.Clear;

{      SQL.Add('SELECT /*+ FIRST_ROWS */');
      SQL.Add(DIARYFIELDS);
      SQL.Add(', NULL AS SHORTDESCR, NULL AS CLIENTNAME ');
      SQL.Add('FROM DIARY D, PHONEBOOK P');
      SQL.Add('WHERE ');
      SQL.Add(' D.START_DT >= :DateFrom AND D.START_DT < :DateTo');
      SQL.Add(' AND ');
      SQL.Add(' D.FILEID IS NULL AND d.nname = p.nname(+)  and ');
      SQL.Add(WhereClause(''));
      SQL.Add('UNION ALL');
}
      SQL.Add('SELECT /*+ FIRST_ROWS */');
      SQL.Add(DIARYFIELDS);
      SQL.Add(', M.SHORTDESCR as grid_shortdescr, P.SEARCH AS grid_CLIENTNAME');
      SQL.Add(', DECODE(D.INT_EXT, ''I'', ''Internal'', ''E'', ''External'') as int_ext ');
      SQL.Add('FROM DIARY D, MATTER M, PHONEBOOK P');
      SQL.Add('WHERE ');
      //SQL.Add('D.START_DT >= :DateFrom AND D.START_DT < :DateTo ');
      SQL.Add('((D.START_DT <= :DateFrom AND D.END_DT >= :DateFrom) OR (D.START_DT >= :DateFrom AND D.START_DT < :DateTo)) ');
      SQL.Add(' AND ');
      SQL.Add(' M.NCLIENT = P.NCLIENT(+)');
      SQL.Add('  AND D.FILEID = M.FILEID(+) ');
      SQL.Add(WhereClause('M', ' AND '));
{      SQL.Add('UNION ALL');
      SQL.Add('SELECT /*+ FIRST_ROWS */');
      SQL.Add(DIARYFIELDS);
      SQL.Add(', A.SHORTDESCR, A.TITLE AS CLIENTNAME ');
      SQL.Add('FROM DIARY D, ARCHIVE A');
      SQL.Add('WHERE ');
      SQL.Add(' D.START_DT >= :DateFrom AND D.START_DT < :DateTo');
      SQL.Add(' AND D.FILEID IS NOT NULL AND D.FILEID = A.FILEID');
      SQL.Add(WhereClause('A'));    }
      SQL.Add('ORDER BY 1');
   end;

   DiaryBindParams(qryDiaryList);
      if dmAxiom.runningide = true then
          qryDiaryList.SQL.SaveToFile('c:\tmp\diarylist.sql');
   if (dtpDateTo.Date <> NullDate) and
      (dtpDateFrom.Date <> NullDate) then
      qryDiaryList.Open;
end;

procedure TfrmDiary99.dtpDateFromPropertiesChange(Sender: TObject);
begin
   try
      //MakeSQL;  //PopulateGrid;
      PopulateGrid;
      Self.Caption := MakeTitle;
   finally
      btnPrint.Enabled := True;
   end;
end;

procedure TfrmDiary99.dtpDateToPropertiesChange(Sender: TObject);
begin
   try
      //MakeSQL;   //PopulateGrid;
      PopulateGrid;
      Self.Caption := MakeTitle;
   finally
      btnPrint.Enabled := True;
   end;
end;

procedure TfrmDiary99.btnPrintClick(Sender: TObject);
begin
   with dxComponentPrinter do
   begin
      dxComponentPrinterLink1.ReportTitle.Text := MakeTitle;
      Preview();
   end;


{   try
      with qryDiaryListRpt do
      begin
         Close;
         SQL.Text := qryDiaryList.SQL.Text;
         DiaryBindParams(qryDiaryListRpt);
      end;
   finally
      ppDiaryList.Print;
   end;
   }

{   qrDiaryList := TqrDiaryList.Create(Self);
   try
      qrDiaryList.qrlblDiaryListTitle.Caption := MakeTitle;
      qrDiaryList.PreviewModal();
   finally
      FreeAndNil(qrDiaryList);
   end; }
end;

procedure TfrmDiary99.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := MakeTitle;
end;

procedure TfrmDiary99.qryDiaryNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('NDIARY').AsInteger := GetSequenceNumber('SQNC_NDIARY');
   DataSet.FieldByName('REMINDER_FOR').AsString := dmAxiom.UserID;
end;

procedure TfrmDiary99.TwoWaySynch;
begin
   cxSchedulerTwoWaySynchronize(SchedulerDBStorage, SchedulerDBStorage.CustomFields.ItemByFieldName('EntryID'), 'MODIFIED', 'LastModificationTime', True, nil, nil, SetResource, nil)
end;

end.
