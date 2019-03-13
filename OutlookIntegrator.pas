unit OutlookIntegrator;

interface

{$WARN SYMBOL_PLATFORM	OFF}
{$WARN UNIT_PLATFORM	OFF}

uses  Variants, SysUtils, Forms, ComCtrls, ComOBJ, ActiveX, cxListView;

const
  C_EMP = 'sys';
  C_OWNER = 'outlook';
  C_OUTLOOKENTRYID = 4;
const
  olFolderDeletedItems = $00000003;
  olFolderOutbox = $00000004;
  olFolderSentMail = $00000005;
  olFolderInbox = $00000006;
  olFolderCalendar = $00000009;
  olFolderContacts = $0000000A;
  olFolderJournal = $0000000B;
  olFolderNotes = $0000000C;
  olFolderTasks = $0000000D;
type
  OlUserPropertyType = TOleEnum;
const
  olText = $00000001;
  olNumber = $00000003;
  olDateTime = $00000005;
  olYesNo = $00000006;
  olDuration = $00000007;
  olKeywords = $0000000B;
  olPercent = $0000000C;
  olCurrency = $0000000E;
  olFormula = $00000012;
  olCombination = $00000013;
const
  olSave = $00000000;
  olDiscard = $00000001;
  olPromptForSave = $00000002;

type
  TOutlookIntegrator = class(TObject)
  private
    FAppendMatterType,
    FUseOutlook,
    FUseDefaultCalender: Boolean;
    FOutlookForm,
    FCalendarFolder,
    FFieldMatterNumber,
    FFieldClient,
    FFieldClientRef,
    FFieldShortDesc,
    FFieldFullDesc,
    FFieldType,
    FFieldPartner,
    FFieldController,
    FFieldOperator,
    FFieldAuthor,
    FFieldBranch: String;

    FLastMatterNumber: Integer;
    FLastMatterType: String;
    FLastPerson: String;

    FOutlook,
    FCalendarMAPIFolder,
    FMatterCalendarFolder,
    FMatterTypeCalendarFolder,
    FGlobalMAPIFolder,
    FLastPersonsCalendar: OLEVariant;

    function GetOutlookApplication: OLEVariant;
    function GetCalendarMAPIFolder: OLEVariant;
    function GetMatterCalendarFolder(ANMatter: Integer): OLEVariant;
    function FindFolderName(ANameSpace: OLEVariant; AName: String): OLEVariant;
    function GetMatterTypeCalendarFolder(AMatterType: String): OLEVariant;
    function GetGlobalMAPICalendarFolder: OLEVariant;
    function GetPersonsCalendarFolder(APerson: String): OLEVariant;
  public
    class function NewInstance: TObject; override;
    procedure FreeInstance; override;
    procedure Initalise();
    procedure UnInitalise();

    procedure ReLoadSettings();

    function NewAppointment(ANMatter: Integer; APersonal: Boolean = False; AOtherPerson: String = ''; ASubject: String = ''; ALocation:String = ''): Boolean; overload;
    function NewAppointment(AMatterType: String; APersonal: Boolean = False; AOtherPerson: String = ''; ASubject: String = ''; ALocation:String = ''): Boolean; overload;

    procedure ListMatterAppointments(AList: TcxListView; ANMatter: Integer; APersonal: Boolean = False; AOtherPerson: String = '');
    procedure OpenAppointment(AEntryID: String);

    property UseOutlook:          Boolean read FUseOutlook;
    property UseDefaultCalender:  Boolean read FUseDefaultCalender;
    property AppendMatterType:    Boolean read FAppendMatterType;
    property OutlookForm:         String  read FOutlookForm;
    property CalendarFolder:      String  read FCalendarFolder;
    property FieldMatterNumber:   String  read FFieldMatterNumber;
    property FieldClient:         String  read FFieldClient;
    property FieldClientRef:      String  read FFieldClientRef;
    property FieldShortDesc:      String  read FFieldShortDesc;
    property FieldFullDesc:       String  read FFieldFullDesc;
    property FieldType:           String  read FFieldType;
    property FieldPartner:        String  read FFieldPartner;
    property FieldController:     String  read FFieldController;
    property FieldOperator:       String  read FFieldOperator;
    property FieldAuthor:         String  read FFieldAuthor;
    property FieldBranch:         String  read FFieldBranch;

    property OutlookApplication: OLEVariant read GetOutlookApplication;
    property CalendarMAPIFolder: OLEVariant read GetCalendarMAPIFolder;
    property MatterCalendarFolder[ANMatter: Integer]: OLEVariant read GetMatterCalendarFolder;
    property MatterTypeCalendarFolder[AMatterType: String]: OLEVariant read GetMatterTypeCalendarFolder;
    property GlobalMAPICalendarFolder: OLEVariant read GetGlobalMAPICalendarFolder;
    property PersonsCalendarFolder[APerson: String]: OLEVariant read GetPersonsCalendarFolder;

  end;

implementation

uses MiscFunc, Dialogs, WorkFlowDataModule, WorkFlowDataModuleMerge;

{ TOutlookIntegrator }

var
  GInstance: TOutlookIntegrator = nil;
  GRefCount: Integer = 0;

function OleAssigned(AVar: OleVariant): Boolean;
begin
  Result := not VarIsEmpty(AVar);//  <> UnAssigned;
end;

procedure TOutlookIntegrator.FreeInstance;
begin
  dec(GRefCount);
  if(GRefCount = 0) then
  begin
    GInstance.UnInitalise();
    inherited;
    GInstance := nil;
  end;
end;

function TOutlookIntegrator.GetCalendarMAPIFolder: OLEVariant;
var
  LNameSpace: OLEVariant;
begin
  try
    if(not OleAssigned(FCalendarMAPIFolder)) then
    begin
      FCalendarMAPIFolder := UnAssigned;
      LNameSpace := OutlookApplication.GetNameSpace('MAPI');
      FCalendarMAPIFolder := LNameSpace.GetDefaultFolder(olFolderCalendar);
      if(not OleAssigned(FCalendarMAPIFolder)) then
        MessageDlg('Unable to locate configured MAPI calendar folder', mtWarning, [mbOK], 0);
    end;
  finally
    Result := FCalendarMAPIFolder;
  end;
end;

function TOutlookIntegrator.GetOutlookApplication: OLEVariant;
begin
  if(not OleAssigned(FOutLook)) then
    FOutlook := CreateOLEObject('Outlook.Application');//CoOutlookApplication.Create();
  Result := FOutlook;
end;

procedure TOutlookIntegrator.Initalise;
begin
  FOutlook := UnAssigned;
  FCalendarMAPIFolder := UnAssigned;
  FMatterCalendarFolder := UnAssigned;
  FMatterTypeCalendarFolder := UnAssigned;
  FGlobalMAPIFolder := UnAssigned;
  FLastPersonsCalendar := UnAssigned;
  ReLoadSettings();
end;

procedure TOutlookIntegrator.ListMatterAppointments(AList: TcxListView; ANMatter: Integer; APersonal: Boolean; AOtherPerson: String);
var
  LItems: OLEVariant;
  LItem: OLEVariant;
  i: Integer;
  LLI: TListItem;
  LRestrict: String;
  LFolder: OLEVariant;
begin
  AList.Items.BeginUpdate();
  try
    AList.Clear();

    if(APersonal) then
      LFolder := CalendarMAPIFolder
    else if(FUseDefaultCalender) then
      LFolder := PersonsCalendarFolder[AOtherPerson]
    else
      LFolder := MatterCalendarFolder[ANMatter];

    if(not OleAssigned(LFolder)) then
      Exit;

    LItems := LFolder.Items;

    try
      LItems.IncludeRecurrences := True;
      LRestrict := '[' + FFieldMatterNumber + '] = ' + IntToStr(ANMatter);

      LItems := LItems.Restrict(LRestrict);
      LItems.Sort('[Start]',True);

      for i := 1 to LItems.Count do
      begin
        LItem := LItems.Item(i);
        LLI := AList.Items.Add();
        LLI.Caption := LItem.Subject;
        LLI.SubItems.Add(LItem.Organizer);
        LLI.SubItems.Add(DateTimeToStr(LItem.Start));
        LLI.SubItems.Add(DateTimeToStr(LItem.End));
        LLI.SubItems.Add(LItem.Location);
        LLI.SubItems.Add(LItem.EntryID);
      end;
    except
    end;

    LItem := UnAssigned;
    LItems := UnAssigned;
  finally
    AList.Items.EndUpdate();

    if(AList.Items.Count > 0) then
    begin
      for i := 0 to AList.Columns.Count - 1 do
        AList.Column[i].Width := -1;
    end else
    begin
      for i := 0 to AList.Columns.Count - 1 do
        AList.Column[i].Width := -2;
    end;

    AList.Invalidate();
  end;
end;

function TOutlookIntegrator.NewAppointment(ANMatter: Integer; APersonal: Boolean; AOtherPerson: String; ASubject, ALocation: String): Boolean;
var
  LItem: OLEVariant;
  LFolder: OLEVariant;

  procedure SetUserProperty(AName, AValue: String; AType: OlUserPropertyType = olText);
  var
    LProp: OLEVariant;
  begin
    if(AName <> '') then
    begin
      try
        LProp := LItem.UserProperties.Item(AName);
        LProp.Value := AValue;
      except
        LProp := LItem.UserProperties.Add(AName,AType,True,EmptyParam);
        LProp.Value := AValue;
      end;
//      if(LProp = $0) then
//        LProp := LItem.UserProperties.Add(AName,AType,True,EmptyParam);
//      LProp.Value := AValue;
    end;
  end;
begin
  Result := False;

  if(APersonal) then
    LFolder := CalendarMAPIFolder
  else if(FUseDefaultCalender) then
    LFolder := PersonsCalendarFolder[AOtherPerson]
  else
    LFolder := MatterCalendarFolder[ANMatter];

  if(not OleAssigned(LFolder)) then
    Exit;

  LItem := LFolder.Items.Add(FOutlookForm);
  LItem.Subject := ASubject;
  LItem.Location := ALocation;

  SetUserProperty(FFieldMatterNumber, IntToStr(ANMatter),olNumber);

  if(not Assigned(dmWorkFlowDataModule)) then
    dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);

  dmWorkFlowDataModuleMerge.qExportMatter.ParamByName('nmatter').AsInteger := ANMatter;
  dmWorkFlowDataModuleMerge.qExportMatter.Open();
  try
    SetUserProperty(FFieldClient,     dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('CLIENTNAME').AsString);
    SetUserProperty(FFieldClientRef,  dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('OPREF').AsString);
    SetUserProperty(FFieldShortDesc,  dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('SHORTDESCR').AsString);
    SetUserProperty(FFieldFullDesc,   dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('LONGDESCR').AsString);
    SetUserProperty(FFieldType,       dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('MATTERTYPE').AsString);
    SetUserProperty(FFieldPartner,    dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('PARTNER').AsString);
    SetUserProperty(FFieldController, dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('CONTROLLER').AsString);
    SetUserProperty(FFieldOperator,   dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('OPERATOR').AsString);
    SetUserProperty(FFieldAuthor,     dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('AUTHOR').AsString);
    SetUserProperty(FFieldBranch,     dmWorkFlowDataModuleMerge.qExportMatter.FieldByName('MATTERBRANCH').AsString);
  finally
    dmWorkFlowDataModuleMerge.qExportMatter.Close();
  end;
  LItem.Display(True);
  Result := LItem.Saved;
  LItem := UnAssigned;
end;

class function TOutlookIntegrator.NewInstance: TObject;
begin
  if(not Assigned(GInstance)) then
  begin
    GInstance := TOutlookIntegrator(inherited NewInstance);
    GInstance.Initalise();
  end;
  Result := GInstance;
  Inc(GRefCount);
end;

procedure TOutlookIntegrator.OpenAppointment(AEntryID: String);
var
  LItem: OLEVariant;
begin
  LItem := OutlookApplication.GetNamespace('MAPI').GetItemFromID(AEntryID,EmptyParam);
  if(OleAssigned(LItem)) then
    LItem.Display(True)
  else
    MessageDlg('The appointment item can no longer be found in Outlook, it might  have been deleted.', mtWarning, [mbOK], 0);
end;

procedure TOutlookIntegrator.UnInitalise;
begin

end;

function TOutlookIntegrator.FindFolderName(ANameSpace: OLEVariant; AName: String): OLEVariant;
var
  i: Integer;
  function FindFolder(AName: String; AParent: OLEVariant): OLEVariant;
  var
    i: Integer;
    LFolder: OLEVariant;
  begin
    if(AParent.Name = AName) then
    begin
      Result := AParent;
      Exit;
    end;

    for i := 1 to AParent.Folders.Count do
    begin
      LFolder := AParent.Folders.Item(i);
      Result := FindFolder(AName,LFolder);
      if(OleAssigned(Result)) then
        Exit;
    end;
    Result := UnAssigned;
  end;

  function GetMAPIFolder(AFolders: OLEVariant; AName: String): OLEVariant;
  var
    i: Integer;
  begin
    Result := UnAssigned;
    for i := 1 to AFolders.Count do
    begin
      if(AFolders.Item(i).Name = AName) then
      begin
        Result := AFolders.Item(i);
        break;
      end;
    end;
  end;

  function FindFolderPath(AFolder: OLEVariant; AName: String): OLEVariant;
  var
    LStr1,LStr2: String;
    p: Integer;
    LFolder: OLEVariant;
  begin
    p := Pos('\',AName);
    if(p = 0) then
      Result := GetMAPIFolder(AFolder.Folders,AName)
    else
    begin
      LStr1 := Copy(AName,1,p - 1);
      LStr2 := Copy(AName,p + 1,Length(AName));
      if(not OleAssigned(AFolder)) then
        LFolder := GetMAPIFolder(ANameSpace.Folders,LStr1)
      else
        LFolder := GetMAPIFolder(AFolder.Folders,LStr1);
      if(OleAssigned(LFolder)) then
        Result := FindFolderPath(LFolder,LStr2);
    end;
  end;
begin
  i := Pos('\',AName);
  if(i > 0) then
  begin
    if(i = 1) then
      Result := FindFolderPath(NULL,Copy(AName,2,Length(AName)))
    else
      Result := FindFolderPath(NULL, AName);
  end else
  begin
    for i := 1 to ANameSpace.Folders.Count do
    begin
      Result := FindFolder(AName,ANameSpace.Folders.Item(i));
      if(OleAssigned(Result)) then
        Exit;
    end;
    Result := UnAssigned;
  end;
end;


function TOutlookIntegrator.GetMatterCalendarFolder(ANMatter: Integer): OLEVariant;
var
  LNameSpace: OLEVariant;
  LFolderName: String;
begin
  try
    if((not OleAssigned(FMatterCalendarFolder)) or (FLastMatterNumber <> ANMatter)) then
    begin
      FMatterCalendarFolder := UnAssigned;
      LNameSpace := OutlookApplication.GetNamespace('MAPI');
      if(FAppendMatterType) then
      begin
        if(not Assigned(dmWorkFlowDataModule)) then
          dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
        dmWorkFlowDataModule.qAnyQuery.SQL.Text := 'select descr from matter, mattertype where code = type and nmatter = :nmatter';
        dmWorkFlowDataModule.qAnyQuery.ParamByName('nmatter').AsInteger := ANMatter;
        dmWorkFlowDataModule.qAnyQuery.Open();
        try
          LFolderName := FCalendarFolder + ' ' +  Trim(dmWorkFlowDataModule.qAnyQuery.FieldByName('descr').AsString);
        finally
          dmWorkFlowDataModule.qAnyQuery.Close();
        end;
      end else
        LFolderName := FCalendarFolder;

      FMatterCalendarFolder := FindFolderName(LNameSpace,LFolderName);
      FMatterTypeCalendarFolder := FMatterCalendarFolder;

      if(OleAssigned(FMatterCalendarFolder)) then
        FLastMatterNumber := ANMatter;
      if(not OleAssigned(FMatterCalendarFolder)) then
        MessageDlg('Unable to locate configured MAPI calendar folder', mtWarning, [mbOK], 0);
    end;
  finally
    Result := FMatterCalendarFolder;
  end;
end;

procedure TOutlookIntegrator.ReLoadSettings;
begin
  FUseOutlook         := SettingLoadBoolean(C_EMP,C_OWNER,'UseOutlookDiary');
  FUseDefaultCalender := SettingLoadBoolean(C_EMP,C_OWNER,'UseDefaultCalendar');
  FAppendMatterType   := SettingLoadBoolean(C_EMP,C_OWNER,'AppendMatterType');

  FOutlookForm        := SettingLoadString(C_EMP,C_OWNER,'OutlookForm');
  FCalendarFolder     := SettingLoadString(C_EMP,C_OWNER,'CalendarFolder');
  FFieldMatterNumber  := SettingLoadString(C_EMP,C_OWNER,'FieldMatterNumber');
  FFieldClient        := SettingLoadString(C_EMP,C_OWNER,'FieldClient');
  FFieldClientRef     := SettingLoadString(C_EMP,C_OWNER,'FieldClientRef');
  FFieldShortDesc     := SettingLoadString(C_EMP,C_OWNER,'FieldShortDesc');
  FFieldFullDesc      := SettingLoadString(C_EMP,C_OWNER,'FieldFullDesc');
  FFieldType          := SettingLoadString(C_EMP,C_OWNER,'FieldType');
  FFieldPartner       := SettingLoadString(C_EMP,C_OWNER,'FieldPartner');
  FFieldController    := SettingLoadString(C_EMP,C_OWNER,'FieldController');
  FFieldOperator      := SettingLoadString(C_EMP,C_OWNER,'FieldOperator');
  FFieldAuthor        := SettingLoadString(C_EMP,C_OWNER,'FieldAuthor');
  FFieldBranch        := SettingLoadString(C_EMP,C_OWNER,'FieldBranch');

  FLastMatterNumber := -1;
  FMatterCalendarFolder := UnAssigned;
  FCalendarMAPIFolder := UnAssigned;
end;

function TOutlookIntegrator.GetMatterTypeCalendarFolder(AMatterType: String): OLEVariant;
var
  LNameSpace: OLEVariant;
  LFolderName: String;
begin
  try
    if((not OleAssigned(FMatterTypeCalendarFolder)) or (FLastMatterType <> AMatterType)) then
    begin
      FMatterTypeCalendarFolder := UnAssigned;
      LNameSpace := OutlookApplication.GetNamespace('MAPI');
      if(FAppendMatterType) then
      begin
        FLastMatterType := AMatterType;
        LFolderName := FCalendarFolder + ' ' +  Trim(FLastMatterType);
      end else
        LFolderName := FCalendarFolder;
      FMatterTypeCalendarFolder :=FindFolderName(LNameSpace,LFolderName);
      if(not OleAssigned(FMatterTypeCalendarFolder)) then
        MessageDlg('Unable to locate configured MAPI calendar folder', mtWarning, [mbOK], 0);
    end;
  finally
    Result := FMatterTypeCalendarFolder;
  end;
end;

function TOutlookIntegrator.GetGlobalMAPICalendarFolder: OLEVariant;
var
  LNameSpace: OLEVariant;
begin
  if(not OleAssigned(FGlobalMAPIFolder)) then
  begin
    LNameSpace := OutlookApplication.GetNamespace('MAPI');
    FGlobalMAPIFolder := FindFolderName(LNameSpace,FCalendarFolder);
    if(not OleAssigned(FGlobalMAPIFolder)) then
      MessageDlg('Unable to locate configured MAPI calendar folder', mtWarning, [mbOK], 0);
  end;
  Result := FGlobalMAPIFolder;

end;

function TOutlookIntegrator.NewAppointment(AMatterType: String; APersonal: Boolean; AOtherPerson: String; ASubject, ALocation: String): Boolean;
var
  LItem: OLEVariant;
  LFolder: OLEVariant;
begin
  Result := False;

  if(APersonal) then
    LFolder := CalendarMAPIFolder
  else if(FUseDefaultCalender) then
    LFolder := PersonsCalendarFolder[AOtherPerson]
  else
    LFolder := MatterTypeCalendarFolder[AMatterType];

  if(not OleAssigned(LFolder)) then
    Exit;

  LItem := LFolder.Items.Add(FOutlookForm);
  LItem.Subject := ASubject;
  LItem.Location := ALocation;

  LItem.Display(True);
  Result := LItem.Saved;
  LItem.Close(olPromptForSave);
  LItem := UnAssigned;
end;

function TOutlookIntegrator.GetPersonsCalendarFolder(APerson: String): OLEVariant;
var
  LNameSpace: OLEVariant;
  LRecip: OLEVariant;
begin
  FLastPersonsCalendar := UnAssigned;
  if(APerson <> FLastPerson) then
  begin
    FLastPersonsCalendar := UnAssigned;

    LNameSpace := OutlookApplication.GetNamespace('MAPI');

    LRecip := LNameSpace.CreateRecipient(APerson);
    if(LRecip.Resolve) then
    begin
      FLastPersonsCalendar := LNameSpace.GetSharedDefaultFolder(LRecip, olFolderCalendar);
      if(not OleAssigned(FLastPersonsCalendar)) then
        MessageDlg('Unable to shared calendar for ' + APerson, mtWarning, [mbOK], 0);
    end else
      MessageDlg('Unable to resolve name for ' + APerson + ' on the exchange server', mtWarning, [mbOK], 0);
  end;
  Result := FLastPersonsCalendar;
end;

end.

