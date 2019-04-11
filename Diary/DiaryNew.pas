unit DiaryNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  Spin, ComObj, OracleUniProvider, Uni, DBAccess, MemDS, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  cxSchedulerStorage, cxGraphics, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLookAndFeels, cxLookAndFeelPainters, cxCalendar,
  cxDBEdit, cxGroupBox, cxRadioGroup, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxButtonEdit, cxClasses,
  dxLayoutControl;

type

  TDiaryAuthor = (daUser, daAuthor, daController, daPartner);

  TDiaryWith = (dwClient, dwNone, dwOther);

  TfrmDiaryNew = class(TForm)
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    chkOutlook: TCheckBox;
    qryDiary: TUniQuery;
    qryTmp: TUniQuery;
    qryTaskInsert: TUniQuery;
    qryDiaryEvents: TUniQuery;
    dsDiaryEvents: TUniDataSource;
    qryDiaryType: TUniQuery;
    dsDiaryType: TUniDataSource;
    dtpActionStartDate: TDateTimePicker;
    dtpStartTime: TDateTimePicker;
    dtpEndTime: TDateTimePicker;
    cbReminderFor: TComboBox;
    icbShowTimeAs: TcxImageComboBox;
    icbLabel: TcxImageComboBox;
    cbEvent: TcxLookupComboBox;
    chkPrivate: TCheckBox;
    mmoDesc: TMemo;
    chkEventPrintDescr: TCheckBox;
    Label6: TLabel;
    neNotify: TNumberEdit;
    chkNotify: TCheckBox;
    cbType: TcxLookupComboBox;
    lblClient: TLabel;
    lblStartDayName: TLabel;
    lblMatterDescr: TLabel;
    lblReminderForName: TLabel;
    edtSubject: TEdit;
    cbLocation: TcxLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    tbFile: TcxButtonEdit;
    tbSearch: TcxButtonEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    qryDiaryLoc: TUniQuery;
    dsDiaryLoc: TUniDataSource;
    chkInternal: TcxRadioButton;
    chkExternal: TcxRadioButton;
    dxLayoutItem26: TdxLayoutItem;
    dtpActionEndDate: TDateTimePicker;
    dxLayoutItem28: TdxLayoutItem;
    LblEndDayName: TLabel;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    procedure mmoDescKeyPress(Sender: TObject; var Key: Char);
    procedure cbReminderForClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtpActionStartDateChange(Sender: TObject);
    procedure mmoDescExit(Sender: TObject);
    procedure chkNotifyClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tbFileExit(Sender: TObject);
    procedure cbEventClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lblClientMouseEnter(Sender: TObject);
    procedure lblClientMouseLeave(Sender: TObject);
    procedure lblClientClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tbSearchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dtpActionEndDateChange(Sender: TObject);

  private
    { Private declarations }
    bLoaded: boolean;
    DefaultAuthor: TDiaryAuthor;
    DefaultWith: TDiaryWith;
    FWithSQL: TStringList;
    FEvent: TcxSchedulerControlEvent;
    function GetWithSQL: TStringList;
    function OKtoPost: Boolean;
    function DateFromDateTime(ADateTime: TDateTime): TDate;
    property WithSQL: TStringList read GetWithSQL;
    procedure InitReminderPanel;
    function GetStorage: TcxCustomSchedulerStorage;
    procedure InitLabel;
    function TimeFromDateTime(ADateTime: TDateTime): TTime;
  protected
    property Storage: TcxCustomSchedulerStorage read GetStorage;

  public
    { Public declarations }
    property Event: TcxSchedulerControlEvent read FEvent;
    procedure DisplayFile(sFile: string; ANName: integer);
    procedure DisplaySearch(Search: string);
    procedure LoadDiary(iRecnum: integer);
    procedure SetDateTime(dtStart: TDateTime; dtEnd: TDateTime);
  end;


implementation

uses
  MiscFunc, AxiomData, MSearch, NSearch, citfunc, Variants,
  cxSchedulerStrs, cxSchedulerUtils, PhoneBook;

{$R *.DFM}

const
  Add30Minutes = 30;

function TfrmDiaryNew.GetWithSQL: TStringList;
var
  iCtr: Integer;
  sTmp: string;
begin
  if FWithSQL.Count = 0 then
  begin
    iCtr := 0;
    repeat
      sTmp := SettingLoadString('OPTIONSDIARY', 'WITHSQL' + IntToStr(iCtr));
      if sTmp <> '' then
        FWithSQL.Add(sTmp);
      Inc(iCtr);
    until sTmp = '';
  end;
  Result := FWithSQL;
end;


procedure TfrmDiaryNew.SetDateTime(dtStart: TDateTime; dtEnd: TDateTime);
begin
  bLoaded := True;
  dtpActionStartDate.Date := DateFromDateTime(dtStart);
  dtpActionStartDate.OnClick(Self);
  dtpActionEndDate.Date := DateFromDateTime(dtEnd);
  dtpActionStartDate.OnClick(Self);

  try
    dtpStartTime.ShowCheckbox := true;
    dtpEndTime.ShowCheckbox := true;
    dtpStartTime.Time := dtStart;
    //dtpEndTime.Time := dtEnd;
    dtpEndTime.Time := dtpStartTime.Time + EncodeTime(0, Add30Minutes, 0, 0);
  finally
    dtpStartTime.ShowCheckbox := false;
    dtpEndTime.ShowCheckbox := false;
  end;
end;


procedure TfrmDiaryNew.DisplayFile(sFile: string; ANName: integer);
begin
   tbFile.Text := sFile;
   if sFile = '' then
      lblClient.Caption := TableString('phonebook','nname',anname, 'search')
   else
      lblClient.Caption := MatterString(sFile, 'TITLE');
   lblMatterDescr.Caption := MatterString(sFile, 'SHORTDESCR');
   case DefaultAuthor of
      daUser: cbReminderFor.ItemIndex := cbReminderFor.Items.IndexOf(dmAxiom.UserID);
      daAuthor: cbReminderFor.ItemIndex := cbReminderFor.Items.IndexOf(MatterString(sFile, 'AUTHOR'));
      daController: cbReminderFor.ItemIndex := cbReminderFor.Items.IndexOf(MatterString(sFile, 'CONTROLLER'));
      daPartner: cbReminderFor.ItemIndex := cbReminderFor.Items.IndexOf(MatterString(sFile, 'PARTNER'));
   end;
   cbReminderFor.OnClick(Self);
   case DefaultWith of
      dwClient: tbSearch.Text := lblClient.Caption;
      dwNone: tbSearch.Clear;
      dwOther:
      begin
         if tbFile.Text <> '' then
         try
            qryTmp.SQL := WithSQL;
            qryTmp.ParamByName('FILEID').AsString := tbFile.Text;
            qryTmp.Open;
            if not qryTmp.IsEmpty then
               tbSearch.Text := qryTmp.Fields[0].AsString;
         finally
            qryTmp.Close;
         end;
      end;
   end;
end;


procedure TfrmDiaryNew.DisplaySearch(Search: string);
begin
  tbSearch.Text := Search;
end;


procedure TfrmDiaryNew.LoadDiary(iRecnum: integer);
begin
  with qryDiary do
  begin
    Close;
    ParamByName('NDIARY').AsInteger := iRecnum;
    Open;
    if not EOF then
    begin
      bLoaded := True;
      dtpActionStartDate.Date := DateFromDateTime(qryDiary.FieldByName('START_DT').AsDateTime);
      dtpActionStartDate.OnClick(Self);
      dtpStartTime.DateTime := TimeFromDateTime(qryDiary.FieldByName('START_DT').AsDateTime);
      dtpActionEndDate.DateTime := DateFromDateTime(qryDiary.FieldByName('END_DT').AsDateTime);
      dtpActionEndDate.OnClick(Self) ;
      dtpEndTime.DateTime := TimeFromDateTime(qryDiary.FieldByName('END_DT').AsDateTime);
      tbFile.Text := qryDiary.FieldByName('FILEID').AsString;
      DisplayFile(qryDiary.FieldByName('FILEID').AsString, qryDiary.FieldByName('nname').AsInteger);
      cbReminderFor.ItemIndex := cbReminderFor.Items.IndexOf(qryDiary.FieldByName('REMINDER_FOR').AsString);
      cbReminderFor.OnClick(Self);
      tbSearch.Text := qryDiary.FieldByName('SEARCH_KEY').AsString;
      cbEvent.EditValue := qryDiary.FieldByName('EVENT_TYPE').AsInteger;
      cbType.EditValue := qryDiary.FieldByName('TYPE').AsString;
      cbLocation.EditValue := qryDiary.FieldByName('LOCATION').AsString;
      mmoDesc.Text := qryDiary.FieldByName('MESSAGE').AsString;
      chkEventPrintDescr.Checked := qryDiary.FieldByName('EVENTPRINTDESCR').AsString = 'Y';
      icbLabel.EditValue := qryDiary.FieldByName('LABELCOLOUR').AsInteger;
      if (qryDiary.FieldByName('NOTIFY').AsString <> '') then
      begin
        chkNotify.Checked := True;
        neNotify.AsInteger := qryDiary.FieldByName('NOTIFY_MINS').AsInteger;  // wHour * 60 + wMin;
      end
      else
        chkNotify.Checked := False;
      cbType.Text := qryDiary.FieldByName('TYPE').AsString;
      chkPrivate.Checked := (qryDiary.FieldByName('PRIVATE').AsString = 'Y');
      if qryDiary.FieldByName('INT_EXT').AsString = 'I' then
         chkInternal.Checked := True
      else
         chkExternal.Checked := True;
      edtSubject.Text := qryDiary.FieldByName('SUBJECT').AsString;
    end;
  end;
end;


function TfrmDiaryNew.OKtoPost: Boolean;
var
  sTmp: String;
  StartDateTime, EndDateTime: TDateTime;
begin
  OKtoPost := True;
  sTmp := '';
  if cbReminderFor.Text = '' then
    sTmp := '       Person Diary entry is for' + #13;

  // Hopefully all dates are just the date part and times are just the time part...
  // But just in case they are not, make them just date or time.
  StartDateTime := DateFromDateTime(dtpActionStartDate.Date) + TimeFromDateTime(dtpStartTime.Time);
  EndDateTime := DateFromDateTime(dtpActionEndDate.Date) + TimeFromDateTime(dtpEndTime.Time);

  if (StartDateTime) > (EndDateTime) then
    sTmp := sTmp + '       Start time must be less than end time' + #13;
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Diary details before saving:    ' + #13#13 + sTmp);
    OKtoPost := False;
  end;
end;


procedure TfrmDiaryNew.mmoDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(Sender);
end;

procedure TfrmDiaryNew.cbReminderForClick(Sender: TObject);
begin
  lblReminderForName.Caption := TableString('EMPLOYEE', 'CODE', cbReminderFor.Text, 'NAME');
end;

procedure TfrmDiaryNew.FormCreate(Sender: TObject);

begin
  FWithSQL := TStringList.Create;
  DefaultAuthor := TDiaryAuthor(Ord(SettingLoadInteger('OPTIONSDIARY', 'AUTHOR')));
  DefaultWith := TDiaryWith(Ord(SettingLoadInteger('OPTIONSDIARY', 'WITH')));
  chkEventPrintDescr.Checked := SettingLoadBoolean('OPTIONSDIARY', 'EVENTPRINTDESCR');
  cbReminderFor.Items := dmAxiom.Employees;
//  StringPopulate(cbEvent.Items, 'FIELDTYPE', 'NAME', 'TYPE LIKE ''D%'' AND LENGTH(TYPE) > 1');
//  StringPopulate(cbEvent.Items, 'DIARYEVT', 'EVENT');
  qryDiaryEvents.Open;
  qryDiaryType.Open;
  qryDiaryLoc.Open;
//  StringPopulate(cbLocation.Items, 'DIARYLOC', 'LOCATION');
//  StringPopulate(cbJurisdiction.Items, 'DIARYJUR', 'JURISDICTION');

  bLoaded := False;
  if dmAxiom.Security.Diary.Location.ForceChoice then
    cbLocation.Properties.DropDownListStyle  := lsEditFixedList;
//  if dmAxiom.Security.Diary.Jurisdiction.ForceChoice then
//    cbJurisdiction.Style := csDropDownList;
  chkNotify.Enabled := SystemVal('USE_DIARY_NOTIFY');
  neNotify.Enabled := SystemVal('USE_DIARY_NOTIFY');

  chkNotify.Checked := SettingLoadBoolean('OPTIONSDIARY', 'NOTIFY');
  neNotify.AsInteger := SettingLoadInteger('OPTIONSDIARY', 'NOTIFYMINS');

  dtpActionStartDate.Date := DateFromDateTime(date);
  dtpStartTime.DateTime := TimeFromDateTime(time);
  dtpActionEndDate.DateTime := DateFromDateTime(date);
  dtpEndTime.DateTime := dtpStartTime.DateTime + EncodeTime(0, Add30Minutes, 0, 0);
  cbReminderFor.ItemIndex := cbReminderFor.Items.IndexOf(dmAxiom.UserID);

  with qryDiary do
  begin
    Close;
    ParamByName('NDIARY').AsInteger := -1;
    Open;
  end;
  cbReminderFor.OnClick(Self);
  InitReminderPanel;
  InitLabel;
end;

procedure TfrmDiaryNew.dtpActionEndDateChange(Sender: TObject);
begin
  lblEndDayName.Caption := FormatDateTime('dddd', dtpActionEndDate.Date);
end;

procedure TfrmDiaryNew.dtpActionStartDateChange(Sender: TObject);
begin
  lblStartDayName.Caption := FormatDateTime('dddd', dtpActionStartDate.Date);
end;

procedure TfrmDiaryNew.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   qryDiary.Close;
   qryTmp.Close;
   qryDiaryEvents.Close;
   qryDiaryType.Close;
   qryDiaryLoc.Close;
end;

procedure TfrmDiaryNew.mmoDescExit(Sender: TObject);
begin
  QuickCode(mmoDesc);
end;

procedure TfrmDiaryNew.chkNotifyClick(Sender: TObject);
begin
  if chkNotify.Checked then
  begin
    neNotify.Enabled := True;
    if cbReminderFor.Text <> '' then
      neNotify.AsInteger := TableInteger('EMPLOYEE', 'CODE', cbReminderFor.Text, 'DIARYNOTIFY');
  end
  else
    neNotify.Enabled := False;
end;

procedure TfrmDiaryNew.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmMatterSearch) then
    Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
  if frmMatterSearch.ShowModal = mrOk then
  begin
    DisplayFile(dmAxiom.qryMSearch.FieldByName('FILEID').AsString, dmAxiom.qryMSearch.FieldByName('NNAME').AsInteger);
    tbSearch.Text := dmAxiom.qryMSearch.FieldByName('TITLE').AsString;
    mmoDesc.SetFocus;
  end;
end;

procedure TfrmDiaryNew.btnSaveClick(Sender: TObject);
var
  varOutlook, varDiary : Variant;
begin
   if OKtoPost then
   begin
      if qryDiary.IsEmpty then
        qryDiary.Insert
      else
      begin
        if qryDiary.FieldByName('DATAFORMFIELD').AsString <> '' then
        begin
          with qryTmp do
          begin
            Close;
            qryTmp.SQL.Text := 'UPDATE FIELDTYPELINK SET DATEVALUE = :DATEVALUE, TEXTVALUE = ''' + FormatDateTime('ddddd', dtpActionStartDate.Date) + ''' WHERE NUNIQUE = ' + IntToStr(TableInteger('MATTER', 'FILEID', qryDiary.FieldByName('FILEID').AsString, 'NMATTER')) + ' AND LINKTABLE = ''MATTER'' AND FIELDNAME = ' + QuotedStr(qryDiary.FieldByName('DATAFORMFIELD').AsString);
            ParamByName('DATEVALUE').AsDateTime := Trunc(dtpActionStartDate.Date);
            ExecSQL;
          end;
        end;
        qryDiary.Edit;
      end;

      if (cbEvent.Text <> '') and (cbEvent.Text <> qryDiary.FieldByName('EVENT').AsString) and
         (tbFile.Text <> '')then
      begin
        // Make the Task list for this scheduled task
        qryTmp.Close;
        qryTmp.SQL.Text := 'SELECT CODE, DESCR, DAYS FROM TASKTEMP WHERE SCHEDULEFIELD = ' + QuotedStr(cbEvent.Text);
        qryTmp.Open;
        while not qryTmp.EOF do
        begin
          with qryTaskInsert do
          begin
            ParamByName('CODE').AsString := qryTmp.FieldByName('CODE').AsString;
            ParamByName('FILEID').AsString := tbFile.Text;
            ParamByName('DESCR').AsString := qryTmp.FieldByName('DESCR').AsString;
            ParamByName('AUTHOR').AsString := cbReminderFor.Text;
            ParamByName('COMMENCE').AsDateTime := DateBusinessCalc(dtpActionStartDate.DateTime, qryTmp.FieldByName('DAYS').AsInteger);
            ParamByName('DUE').AsDateTime := DateBusinessCalc(dtpActionStartDate.DateTime, qryTmp.FieldByName('DAYS').AsInteger);
            ExecSQL;
          end;
          qryTmp.Next;
        end;
      end;

      qryDiary.FieldByName('START_DT').AsDateTime := Trunc(dtpActionStartDate.Date) + TimeFromDateTime(dtpStartTime.Time);
      qryDiary.FieldByName('END_DT').AsDateTime := Trunc(dtpActionEndDate.Date) + TimeFromDateTime(dtpEndTime.Time);
      qryDiary.FieldByName('CREATION_DATE').AsDateTime := Now;
      qryDiary.FieldByName('REMINDER_FOR').AsString := cbReminderFor.Text;
      qryDiary.FieldByName('ENTERED_BY').AsString := dmAxiom.UserID;
      qryDiary.FieldByName('FILEID').AsString := tbFile.Text;
      qryDiary.FieldByName('NMATTER').AsString := MatterString(tbFile.Text,'NMATTER');
      if tbFile.Text <> '' then
         qryDiary.FieldByName('PARTNER').AsString := MatterString(tbFile.Text, 'PARTNER');
      qryDiary.FieldByName('SEARCH_KEY').AsString := tbSearch.Text;
      if cbType.Text <> '' then
         qryDiary.FieldByName('TYPE').AsString := cbType.EditValue;
      qryDiary.FieldByName('DESCR').AsString := mmoDesc.Text;
      if chkEventPrintDescr.Checked then
         qryDiary.FieldByName('EVENTPRINTDESCR').AsString := 'Y'
      else
        qryDiary.FieldByName('EVENTPRINTDESCR').AsString := 'N';
      qryDiary.FieldByName('LOCATION').AsString := cbLocation.Text;
//      qryDiary.FieldByName('JURISDICTION').AsString := cbJurisdiction.Text;
      if cbEvent.Text <> '' then
         qryDiary.FieldByName('EVENT_TYPE').AsString := cbEvent.EditValue;

      qryDiary.FieldByName('State').AsInteger := icbShowTimeAs.EditValue;
      if icbLabel.EditValue = 0 then
         qryDiary.FieldByName('LABELCOLOUR').AsInteger := 536870912
      else
         qryDiary.FieldByName('LABELCOLOUR').AsInteger := icbLabel.EditValue;

      qryDiary.FieldByName('NOTIFY').Value := Null;
      if chkNotify.Checked then
      begin
        qryDiary.FieldByName('NOTIFY_MINS').AsInteger := neNotify.AsInteger;
        qryDiary.FieldByName('NOTIFY').AsDateTime := qryDiary.FieldByName('START_DT').AsDateTime -
                                                     EncodeTime(neNotify.AsInteger div 60, neNotify.AsInteger mod 60, 0, 0);
      end;

      if chkPrivate.Checked then
         qryDiary.FieldByName('PRIVATE').AsString := 'Y'
      else
         qryDiary.FieldByName('PRIVATE').AsString := 'N';

      if chkInternal.Checked then
         qryDiary.FieldByName('INT_EXT').AsString := 'I'
      else
         qryDiary.FieldByName('INT_EXT').AsString := 'E';

  {      Value Meaning
         etNone The user event is not recurring.
         etPattern The user event is a parent of the recurrence chain.
         etOccurrence The occurrence is spawned from the parent.
         etException No reoccurrence at the specified time in the chain of reoccurrences for the recurring user event.
         etCustom The occurrence's details are changed. }
//      qryDiary.FieldByName('EVENT_TYPE').AsInteger := 0;
      qryDiary.FieldByName('RESOURCEID').AsInteger := TableInteger('EMPLOYEE', 'CODE', cbReminderFor.Text, 'NEMPLOYEE');
      qryDiary.FieldByName('CAPTION').AsString := edtSubject.Text;

      qryDiary.Post;

      if qryDiary.FieldByName('FILEID').AsString <> '' then
        RefreshMatter(qryDiary.FieldByName('FILEID').AsString);

     { if dmAxiom.Security.Diary.Location.AutoSave and
         (cbLocation.Text <> '') and
         (cbLocation.Properties.Items.IndexOf(cbLocation.Text) < 0) then
        try
          with qryTmp do
          begin
            SQL.Text := 'insert into DIARYLOC (LOCATION) values (' + QuotedStr(cbLocation.Text) + ')';
            ExecSQL;
          end;
        except
          // silent exception
        end;     }

{      if dmAxiom.Security.Diary.Jurisdiction.AutoSave and (cbJurisdiction.Text <> '') and (cbJurisdiction.Items.IndexOf(cbJurisdiction.Text) < 0) then
        try
          with qryTmp do
          begin
            SQL.Text := 'insert into DIARYJUR (JURISDICTION) values (' + QuotedStr(cbJurisdiction.Text) + ')';
            ExecSQL;
          end;
        except
          // silent exception
        end;
}
      if chkOutlook.Checked then
      begin
        // Open Outlook and send data to it
        try
          varOutlook := CreateOLEObject('Outlook.Application');
          try
            varDiary := varOutlook.CreateItem(1);
            varDiary.Subject := mmoDesc.Text;
            //varDiary.Start := dtpStarttime.DateTime;
            varDiary.Start := Trunc(dtpActionStartDate.Date) + TimeFromDateTime(dtpStartTime.Time);
            //varDiary.End := dtpActionEndDate.Date + TimeFromDateTime(dtpEndTime.Time);
            varDiary.End := Trunc(dtpActionEndDate.Date) + TimeFromDateTime(dtpEndTime.Time);
            varDiary.Location := cbLocation.Text;
            varDiary.Save;
          except
            on E: Exception do
              MsgErr('Diary Entry Error:' + chr(13) + chr(13) + E.Message);
          end;
        except
          on E: Exception do
            MsgErr('Diary Entry Error:' + chr(13) + chr(13) + E.Message);
        end;
      end;

      if (fsModal in FormState) then
         ModalResult := mrOk
      else
         Close;
   end;
end;

procedure TfrmDiaryNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmDiaryNew.tbFileExit(Sender: TObject);
begin
  DisplayFile(tbFile.Text, StrToInt(MatterString(tbFile.Text,'nname')));
end;

procedure TfrmDiaryNew.tbSearchPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOk then
    tbSearch.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
  mmoDesc.SetFocus;
end;

function TfrmDiaryNew.TimeFromDateTime(ADateTime: TDateTime): TTime;
begin
  // Time is the fractional part of a TDateTime (Which is a double behind the scenes).
  Result := ADateTime - Trunc(ADateTime);
end;

function TfrmDiaryNew.DateFromDateTime(ADateTime: TDateTime): TDate;
begin
  // Date is the whole number part of a TDateTime (Which is a double behind the scenes).
  Result := Trunc(ADateTime);
end;

procedure TfrmDiaryNew.cbEventClick(Sender: TObject);
begin
  with qryTmp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCR FROM FIELDTYPE WHERE NAME = ' + QuotedStr(cbEvent.Text));
    Open;
    if not IsEmpty then
      mmoDesc.Text := FieldByName('DESCR').AsString;
    Close;
  end;
end;

procedure TfrmDiaryNew.FormDestroy(Sender: TObject);
begin
  FWithSQL.Destroy;
end;

procedure TfrmDiaryNew.InitReminderPanel;
var
  I: Integer;
  AItem: TcxImageComboboxItem;
begin
 //  TcxSchedulerDateTimeHelper.FillAdvanceStrings(cbAdvanceTime.Properties.Items);
 //  cbAdvanceTime.ItemIndex := 0; //todo:
   for I := 0 to 3 do
   begin
      AItem := TcxImageComboboxItem(icbShowTimeAs.Properties.Items.Add);
//      AItem.Description := cxGetResourceString(ATimeTypes[I]);
      AItem.ImageIndex := I;
      AItem.Value := I;
   end;
   icbShowTimeAs.ItemIndex := 2; //Integer(Event.State);
   icbShowTimeAs.Properties.Images := TimeLinePatterns;
//   icbShowTimeAs.Enabled := Storage.IsStateAvailable;
end;

procedure TfrmDiaryNew.lblClientClick(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
   LfrmPhonebook := TfrmPhonebook.Create(Self);
   LfrmPhonebook.btnCreate.Enabled := False;

   LfrmPhonebook.Search := qryDiary.FieldByName('nname').AsString;
   LfrmPhonebook.Show();
end;

procedure TfrmDiaryNew.lblClientMouseEnter(Sender: TObject);
begin
   lblClient.font.Style := [fsUnderline, fsBold];
end;

procedure TfrmDiaryNew.lblClientMouseLeave(Sender: TObject);
begin
   lblClient.font.Style := [];
end;

function TfrmDiaryNew.GetStorage: TcxCustomSchedulerStorage;
begin
  Result := Event.Storage;
end;

procedure TfrmDiaryNew.InitLabel;

  function GetIndex: Integer;
  var
    I: Integer;
  begin
    Result := -1;
    for I := LOW(EventLabelColors) to HIGH(EventLabelColors) do
      if Event.LabelColor = EventLabelColors[I] then
      begin
        Result := I;
        break;
      end;
  end;

var
  I: Integer;
  AItem: TcxImageComboboxItem;
begin
  for I := LOW(EventLabelColors) to HIGH(EventLabelColors) do
  begin
    AItem := TcxImageComboboxItem(icbLabel.Properties.Items.Add);
//    AItem.Description := cxGetResourceString(sEventLabelCaptions[I]);
    AItem.ImageIndex := I + 11;
    AItem.Value := EventLabelColors[I];
  end;
  icbLabel.ItemIndex := 0;
  icbLabel.Properties.Images := MenuImages;
//  icbLabel.Enabled := Storage.IsLabelColorAvailable;
end;


end.

