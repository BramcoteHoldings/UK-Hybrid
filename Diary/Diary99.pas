unit Diary99;

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
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxSchedulerDBStorage, cxSchedulerDialogs, cxCurrencyEdit, cxCheckBox,
  cxMemo, cxBlobEdit, cxImageComboBox, cxTimeEdit, cxLabel, cxDateNavigator,
  cxLookAndFeels, XPStyleActnCtrls, cxPCdxBarPopupMenu,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerYearView, cxSchedulerGanttView, ComCtrls, dxCore, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppVar,
  ppPrnabl, ppBands, ppCache, ppDesignLayer, ppParameter, LMDControl, cxDateUtils,
  cxSchedulerOutlookExchange, cxNavigator, System.Actions,
  cxSchedulercxGridConnection, cxBarEditItem, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxSchedulerLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon;

const
   DayView = 0;
   WorkWeekView = 1;
   WeekView = 2;
   MonthView = 3;

 {  DIARYFIELDS     = 'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY' +
                     ', D.NDIARY, D.DESCR, D.SEARCH_KEY, D.PRIORITY, D.FILEID' +
                     ', D.TASK, D.TYPE, D.LOCATION, D.JURISDICTION, D.EVENT' +
                     ', D.DATAFORMFIELD, D.EVENTPRINTDESCR'; }

    DIARYFIELDS     = 'D.START_DT, D.END_DT, D.REMINDER_FOR, D.ENTERED_BY, D.NDIARY,'+
                      'D.DESCR, D.SEARCH_KEY, D.PRIORITY, D.FILEID, D.TASK, D.TYPE,'+
                      'D.LOCATION, D.JURISDICTION, D.EVENT, D.DATAFORMFIELD, '+
                      'D.EVENTPRINTDESCR, NULL AS SHORTDESCR, NULL AS CLIENTNAME, '+
                      'D.NMATTER, D.OPTIONS, D.LABELCOLOUR, D.STATE, D.RESOURCEID,'+
                      'D.RECURRENCEINDEX, D.OPTIONS, D.REMINDER,'+
                      'D.descr as CAPTION, ' +
                      'D.EVENT_TYPE, D.ENTRYID, D.ROWID, D.NNAME ';

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
    cxTabSheet4: TcxTabSheet;
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
    LMDSimplePanel1: TLMDSimplePanel;
    Label1: TLabel;
    Label2: TLabel;
    dtpDateFrom: TcxDateEdit;
    dtpDateTo: TcxDateEdit;
    dcToday: TcxDateChangeButton;
    cxDateChangeButton2: TcxDateChangeButton;
    cxDateChangeButton3: TcxDateChangeButton;
    cxDateChangeButton4: TcxDateChangeButton;
    cxDateChangeButton5: TcxDateChangeButton;
    cxDateChangeButton6: TcxDateChangeButton;
    cxDateChangeButton7: TcxDateChangeButton;
    cxDateChangeButton8: TcxDateChangeButton;
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
    cxTabSheet1: TcxTabSheet;
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
  protected
    AnchorDate: TDateTime;
  private
    { Private declarations }
     CurrentView: integer;
     FFirstActivate: Boolean;
    function DiaryDelete(NDiary: integer): Boolean;
    procedure MakeSQL;
    procedure RefreshTaskGrid;
    function WhereClause(MatterTableAlias: string; AWhere: string = ' where '): string;
    procedure DiaryBindParams(qryBind: TUniQuery);
    function MakeTitle: string;
    procedure PopulateGrid;
  public
    { Public declarations }
  end;

var
  frmDiary99: TfrmDiary99;

implementation

{$R *.dfm}


uses
   Matters, AxiomData, FeeNew, miscfunc, citfunc, PhoneMessage, DiaryNew,
   Desktop,cxGeometry, PhoneBook;

type
  TcxSchedulerEventCellViewInfoAccess = class(TcxSchedulerEventCellViewInfo);

const
  IconOffset = 5;
  IconTopOffset = 1;

var
  userFeeEarner : boolean;
  FEventID: integer;

procedure TfrmDiary99.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
   tmrQuery.Interval := (neListRefresh.Value * 1000);
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
         LMatters := TfrmMatters.Create(Self);
         LMatters.DisplayMatter(TableString('DIARY','NDIARY',FEventID,'FILEID'));
         frmDesktop.fdTab.AddForm(LMatters, true);
      end;
   end;
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
      LFeeNew := TfrmFeeNew.Create(Self);
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

           LFeeNew := TfrmFeeNew.Create(Self);
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
   if qryFeeEarner.EOF then
      userFeeEarner := False
   else
      userFeeEarner := True;
   qryFeeEarner.Close;
end;

procedure TfrmDiary99.dxBarButton11Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

//initialization
//  cxEventEditorClass := TfrmDairy99New; // indicate that the
//  new Event modal dialog will be invoked at runtime


procedure TfrmDiary99.actNewDiaryEntryExecute(Sender: TObject);
var
  SelectedDateTimeStart, SelectedDateTimeEnd: TDateTime;
  SelectedList: TStringList;
  LDiary: TfrmDiaryNew;
begin
   SelectedList := TStringList.Create;
   if pagDiary.ActivePage = tabDay then
   begin
 //    GetSelectedList(SelectedList);
     if SelectedList.Count > 1 then
     begin
       SelectedDateTimeStart := StrToDateTime(SelectedList.Strings[0]);
 //      SelectedDateTimeEnd := StrToDateTime(SelectedList.Strings[SelectedList.Count-1])+
 //        (1/(60*24))*cwDayView.Interval;
     end else
     begin
 //      SelectedDateTimeStart := (cwDayView.Cell[cwDayView.ColumnIndex, cwDayView.RowIndex] as TcwDayViewCell).DateTime;
 //      SelectedDateTimeEnd := SelectedDateTimeStart + (1/48)
     end;
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
 //  RefreshCalendarEvents();
 //  qryDiary.Close;
 //  qryDiary.Open;
      MakeSQL;
   end;

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
begin
   if pagDiary.ActivePage = tabDay then
   begin
      with SchedulerDBStorage do
      begin
         AEvent := GetEventByID(FEventID);
         if AEvent <> nil then
         begin
            if DiaryDelete(FEventID) then
            begin
               qryDiary.Close;
               qryDiary.Open;
//        RefreshMatter(GetEventInfo(Cell[ColumnIndex, RowIndex] as TcwDayViewCell, eiRecourceID));
            end;
         end;
      end;
   end
   else if pagDiary.ActivePage = tabGrid then
   begin
      if DiaryDelete(qryDiary.FieldByName('NDIARY').AsInteger) then
      begin
         qryDiary.Close;
         qryDiary.Open;
      end;
   end;
end;

procedure TfrmDiary99.DiarySchedulerDateNavigatorPeriodChanged(
  Sender: TObject; const AStart, AFinish: TDateTime);
begin
   qryTime.Connection := dmAxiom.uniInsight;
   qryTime.Close;
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
begin
   HitTest := TcxScheduler(Sender).CurrentView.HitTest;
   if HitTest.HitAtResource then
      TargetResourceID := HitTest.Resource.ResourceID;
   with SchedulerDBStorage do
   begin
      try
         AEvent := GetEventByID(FEventID);
         if (AEvent <> nil) then
         begin
            try
               LDiary := TfrmDiaryNew.Create(Self);
               LDiary.LoadDiary(FEventID);
               LDiary.ShowModal();
            finally
               MakeSQL();
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
               MakeSQL();
            end;
         end;
      finally
         AEvent := nil;
         FEventID := -1;
      end;
   end;
end;

procedure TfrmDiary99.DiarySchedulerEventSelectionChanged(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent);
begin
   if (AEvent <> nil) and (not VarIsNull(AEvent.ID)) then
      FEventID := AEvent.ID
   else
      FEventID := -1;
end;

procedure TfrmDiary99.ViewContactdetails1Click(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
  AEvent: TcxSchedulerEvent;
begin
      with SchedulerDBStorage do
      begin
         AEvent := GetEventByID(FEventID);
         if AEvent <> nil then
         begin
            LfrmPhonebook := TfrmPhonebook.Create(Self);
//            if frmDesktop.pagMainControl.ActivePageIndex = 0 then
//               frmDesktop.fdTab.AddForm(LfrmPhonebook,True);
            LfrmPhonebook.btnCreate.Enabled := False;

            LfrmPhonebook.Search := AEvent.GetCustomFieldValueByIndex(2);
            LfrmPhonebook.Show();
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
      // Load the combo boxes
      qryPartner.Open;
      qryAuthor.Open;
      qryController.Open;
//      StringPopulate(cbPartner.Items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y'' AND ISPARTNER = ''Y''');
//      cbController.Items := dmAxiom.Employees;
//      StringPopulate(cbAuthor.Items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y'' AND ISAUTHOR = ''Y''');
//      cbReminderFor.Items := dmAxiom.Employees;
//      StringPopulate(cbDept.Items, 'EMPDEPT', 'CODE');
      cmbReminderFor.EditValue := dmAxiom.UserID;
      cmbReminderForClick(Self);


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
   end;
end;

procedure TfrmDiary99.RefreshTaskGrid;
begin
   MakeSQL;
end;

procedure TfrmDiary99.MakeSQL;
begin
  qryDiary.Close;
  qryDiary.SQL.Clear;

  qryDiary.SQL.Add('SELECT /*+ FIRST_ROWS */');
{  qryDiary.SQL.Add(DIARYFIELDS);
  qryDiary.SQL.Add(', NULL AS SHORTDESCR, NULL AS CLIENTNAME ');
  qryDiary.SQL.Add('FROM DIARY D, PHONEBOOK P');
  qryDiary.SQL.Add('WHERE ');
//  qryDiary.SQL.Add(' D.START_DT >= :DateFrom AND D.START_DT < :DateTo');
  qryDiary.SQL.Add('  D.FILEID IS NULL AND d.nname = p.nname');
  qryDiary.SQL.Add(WhereClause(''));
  qryDiary.SQL.Add('UNION ALL');
  qryDiary.SQL.Add('SELECT /*+ FIRST_ROWS */');}
  qryDiary.SQL.Add(DIARYFIELDS);
//  qryDiary.SQL.Add(', M.SHORTDESCR, P.SEARCH AS CLIENTNAME');
  qryDiary.SQL.Add('FROM DIARY D');
//  qryDiary.SQL.Add('WHERE ');
//  qryDiary.SQL.Add('D.START_DT >= :DateFrom AND D.START_DT < :DateTo ');
//  qryDiary.SQL.Add(' M.NCLIENT = P.NCLIENT(+)');
//  qryDiary.SQL.Add('  AND D.FILEID(+) = M.FILEID ');
  qryDiary.SQL.Add(WhereClause('M'));

{  qryDiary.SQL.Add('UNION ALL');
  qryDiary.SQL.Add('SELECT /*+ FIRST_ROWS */');
  qryDiary.SQL.Add(DIARYFIELDS);
  qryDiary.SQL.Add(', A.SHORTDESCR, A.TITLE AS CLIENTNAME ');
  qryDiary.SQL.Add('FROM DIARY D, ARCHIVE A');
  qryDiary.SQL.Add('WHERE ');
//  qryDiary.SQL.Add(' D.START_DT >= :DateFrom AND D.START_DT < :DateTo');
  qryDiary.SQL.Add(' D.FILEID IS NOT NULL AND D.FILEID = A.FILEID');
  qryDiary.SQL.Add(WhereClause('A'));     }
  qryDiary.SQL.Add('ORDER BY 1');

  DiaryBindParams(qryDiary);
  qryDiary.Open;

  qryPhoneMessage.Close;
  qryPhoneMessage.ParamByName('EMPCODE').AsString := cmbReminderFor.EditValue;
  qryPhoneMessage.Open;

  Self.Caption := MakeTitle;

{  DiaryScheduler.BeginUpdate;
  try
    cxSchedulerSynchronizeStorageWithOutlook(SchedulerDBStorage, SchedulerDBStorage.CustomFields.ItemByFieldName('EntryID'));
    cxSchedulerSynchronizeOutlookWithStorage(SchedulerDBStorage, SchedulerDBStorage.CustomFields.ItemByFieldName('EntryID'));
  finally
    DiaryScheduler.EndUpdate;
  end;    }

end;

procedure TfrmDiary99.chkViewAllEntriesPropertiesChange(Sender: TObject);
begin
   btnRefresh.Click;
end;

procedure TfrmDiary99.cmbReminderForClick(Sender: TObject);
begin
//  lblReminderForName.Caption := TableString('EMPLOYEE', 'CODE', string(cmbReminderFor.EditValue), 'NAME');
   btnRefresh.Click;
end;

procedure TfrmDiary99.ConverttoFee1Click(Sender: TObject);
var
  LFeeNew: TfrmFeeNew;
  eventTime, eventUnits, nfee : integer;
  errorSaving : boolean;
  AEvent: TcxSchedulerEvent;
  AControlEvent: TcxSchedulerControlEvent;
begin
   with SchedulerDBStorage do
   begin
      AEvent := GetEventByID(FEventID);
      if AEvent <> nil then
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
                  LFeeNew := TfrmFeeNew.Create(Self);
                  // Set the date field for the fee to correspond with the event
                  LFeeNew.dtpCreated.Date := DiaryScheduler.DateNavigator.Date; //  Trunc(cwMonthBrowser.Date);

                  LFeeNew.DisplayMatter(qryEvent.FieldByName('FILEID').AsString);
                  LFeeNew.SetAuthor := qryEvent.FieldByName('REMINDER_FOR').AsString;
                  LFeeNew.SetStartTime := qryEvent.FieldByName('START_DT').AsDateTime;
                  LFeeNew.SetEndTime := qryEvent.FieldByName('END_DT').AsDateTime;
                  LFeeNew.SetUnits := IntToStr(eventUnits);
                  LFeeNew.SetDescription := qryEvent.FieldByName('DESCR').AsString;

                  nfee := LFeeNew.ShowModal();
{                  LFeeNew.CreateFee(qryEvent.FieldByName('FILEID').AsString,
                                   qryEvent.FieldByName('REMINDER_FOR').AsString,
                                   qryEvent.FieldByName('DESCR').AsString,
                                   IntToStr(eventUnits),         // sUnits
                                   eventTime,                    // iMinutes
                                   dmAxiom.AuthorRate,           // cRate
                                   0,                            // cAmount
                                   'N');                         // sFeeType  }


                  // Post fee
 //                 nfee := LFeeNew.SaveFee();

                  // Destroy the form
 //                 LFeeNew.Destroy;

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
      qryBind.Params[iCtr].AsString := UpperCase(cmbReminderFor.EditValue)
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
      if Trunc(dtpDateFrom.Date) = Trunc(dtpDateTo.Date) then
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
   if cmbReminderFor.Text = '' then
      qryTime.ParamByName('REMINDER_FOR').AsString := dmAxiom.UserID
   else
      qryTime.ParamByName('REMINDER_FOR').AsString := cmbReminderFor.EditValue;
   qryTime.ParamByName('START_DT').AsDateTime := AStart;
   qryTime.Open;
end;

procedure TfrmDiary99.cxDateNavigator1DblClick(Sender: TObject);
begin
   pagDiary.ActivePageIndex := 0;
end;

procedure TfrmDiary99.btnRefreshClick(Sender: TObject);
begin
   MakeSQL;
end;

procedure TfrmDiary99.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SettingSaveStream(dmAxiom.UserID, 'tvDiary Layout', tvDiary );
   RemoveFromDesktop(Self);
end;

procedure TfrmDiary99.pagDiaryChange(Sender: TObject);
begin
   btnPrint.Enabled := False;
   if pagDiary.ActivePage = tabgrid then
   begin
      if (dtpDateTo.Date <> NullDate) and
         (dtpDateFrom.Date <> NullDate) then
      begin
         populateGrid;

         btnPrint.Enabled := True;
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
      SQL.Add('D.START_DT >= :DateFrom AND D.START_DT < :DateTo ');
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
   if (dtpDateTo.Date <> NullDate) and
     (dtpDateFrom.Date <> NullDate) then
      qryDiaryList.Open;
end;

procedure TfrmDiary99.dtpDateFromPropertiesChange(Sender: TObject);
begin
   try
      PopulateGrid;
   finally
      btnPrint.Enabled := True;
   end;
end;

procedure TfrmDiary99.dtpDateToPropertiesChange(Sender: TObject);
begin
   try
      PopulateGrid;
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

end.
