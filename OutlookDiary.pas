unit OutlookDiary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, OutlookView_TLB, ActnList, ImgList, ActnMan, ToolWin,
  ActnCtrls, OutlookIntegrator, ComCtrls, Outlook8, XPStyleActnCtrls;

const
  C_SETTING = 'OLD';
type
  TfmOutlookDiary = class(TForm)
    ActionManager: TActionManager;
    ImageList: TImageList;
    aNewAppointment: TAction;
    aNewMeetingRequest: TAction;
    aPrint: TAction;
    aToday: TAction;
    aFind: TAction;
    tcDiary: TTabControl;
    aAddDiary: TAction;
    aRemoveDiary: TAction;
    OD: TOVCtl;

    procedure FormCreate(Sender: TObject);
    procedure aNewAppointmentExecute(Sender: TObject);
    procedure aNewMeetingRequestExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aPrintUpdate(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure aDeleteUpdate(Sender: TObject);
    procedure aTodayExecute(Sender: TObject);
    procedure aTodayUpdate(Sender: TObject);
    procedure aFindExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tcDiaryChange(Sender: TObject);
    procedure aAddDiaryExecute(Sender: TObject);
    procedure aAddDiaryUpdate(Sender: TObject);
    procedure aRemoveDiaryUpdate(Sender: TObject);
    procedure aRemoveDiaryExecute(Sender: TObject);
  private
    { Private declarations }
    FOutlookIntegrator: TOutlookIntegrator;
  public
    { Public declarations }
  end;

var
  fmOutlookDiary: TfmOutlookDiary;

implementation

uses AxiomData, MiscFunc;

{$R *.dfm}

procedure TfmOutlookDiary.FormCreate(Sender: TObject);
var
  i,y: Integer;
begin
  FOutlookIntegrator := TOutlookIntegrator.Create();

  if(not FOutlookIntegrator.UseDefaultCalender) then
  begin
    if(FOutlookIntegrator.AppendMatterType) then
    begin
      dmAxiom.qryTmp.SQL.Text := 'SELECT CODE, DESCR FROM MATTERTYPE';
      dmAxiom.qryTmp.Open();
      try
        while(not dmAxiom.qryTmp.Eof) do
        begin
          tcDiary.Tabs.Append(dmAxiom.qryTmp.FieldByName('DESCR').AsString);
          dmAxiom.qryTmp.Next();
        end;
      finally
        dmAxiom.qryTmp.Close();
      end;
    end else
      tcDiary.Tabs.Append('Global Calendar');
  end else
  begin
    i := SettingLoadInteger(C_SETTING, 'NUMDIARYPEOPLE');
    for y := 1 to i do
      tcDiary.Tabs.Add(SettingloadString(C_SETTING,'DIARYPEOPLE' + IntToStr(y)));
  end;
//  OD.Folder := 'Calendar';
end;

procedure TfmOutlookDiary.aNewAppointmentExecute(Sender: TObject);
begin
  FOutlookIntegrator.NewAppointment(Trim(tcDiary.Tabs[tcDiary.TabIndex]),tcDiary.TabIndex = 0)
end;

procedure TfmOutlookDiary.aNewMeetingRequestExecute(Sender: TObject);
begin
  OD.NewMeetingRequest();
end;

procedure TfmOutlookDiary.aPrintExecute(Sender: TObject);
begin
  OD.PrintItem();
end;

procedure TfmOutlookDiary.aPrintUpdate(Sender: TObject);
begin
//  OD.ActiveFolder
end;

procedure TfmOutlookDiary.aDeleteExecute(Sender: TObject);
begin
  OD.Delete();
end;

procedure TfmOutlookDiary.aDeleteUpdate(Sender: TObject);
begin
//
end;

procedure TfmOutlookDiary.aTodayExecute(Sender: TObject);
begin
  OD.GoToToday();
end;

procedure TfmOutlookDiary.aTodayUpdate(Sender: TObject);
begin
//
end;

procedure TfmOutlookDiary.aFindExecute(Sender: TObject);
begin
  OD.AdvancedFind;
end;

procedure TfmOutlookDiary.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FOutlookIntegrator);
end;

procedure TfmOutlookDiary.tcDiaryChange(Sender: TObject);
begin
  if(tcDiary.TabIndex = 0) then
    OD.Folder := 'Calendar'
  else
  begin
    if(not FOutlookIntegrator.UseDefaultCalender) then
    begin
      if(FOutlookIntegrator.AppendMatterType) then
        OD.Folder := FOutlookIntegrator.CalendarFolder + ' ' + Trim(tcDiary.Tabs[tcDiary.TabIndex])
      else
        OD.Folder := FOutlookIntegrator.CalendarFolder;
    end else
    begin
      try
        OD.OpenSharedDefaultFolder(tcDiary.Tabs[tcDiary.TabIndex],olFolderCalendar);
      except
        MessageDlg(tcDiary.Tabs[tcDiary.TabIndex] + '''s calendar is not accessible!', mtWarning, [mbOK], 0);
      end;
    end;
  end;
end;

procedure TfmOutlookDiary.aAddDiaryExecute(Sender: TObject);
var
  LName: String;
  y: Integer;
begin
  if(InputQuery('Enter Name of the Diary Owner','Name',LName)) then
  begin
    if(tcDiary.Tabs.IndexOf(LName) = -1) then
    begin
      try
        OD.OpenSharedDefaultFolder(LName,olFolderCalendar);
      except
        MessageDlg(LName + '''s calendar is not accessible!', mtWarning, [mbOK], 0);
        Exit;
      end;
      y := tcDiary.Tabs.Add(LName);
      SettingSave(C_SETTING,'DIARYPEOPLE' + IntToStr(y),LName);
      tcDiary.TabIndex := y;
      SettingSave(C_SETTING,'NUMDIARYPEOPLE',tcDiary.Tabs.Count - 1);
    end else
      MessageDlg('You already have ' + LName + ' setup!', mtWarning, [mbOK], 0);
  end;
end;

procedure TfmOutlookDiary.aAddDiaryUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := FOutlookIntegrator.UseDefaultCalender;
end;

procedure TfmOutlookDiary.aRemoveDiaryUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := FOutlookIntegrator.UseDefaultCalender and
    (tcDiary.TabIndex > 0);
end;

procedure TfmOutlookDiary.aRemoveDiaryExecute(Sender: TObject);
var
  LName: String;
  y: Integer;
begin
  y :=tcDiary.TabIndex;
  LName := tcDiary.Tabs[y];
  if MessageDlg('Are you sure you want to remove the diary for ' + LName, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    tcDiary.TabIndex := 0;
    tcDiary.Tabs.Delete(y);

    SettingSave(C_SETTING,'NUMDIARYPEOPLE',tcDiary.Tabs.Count - 1);
    for y := 1 to tcDiary.Tabs.Count - 1 do
      SettingSave(C_SETTING,'DIARYPEOPLE' + IntToStr(y),tcDiary.Tabs[y]);
  end;
  tcDiaryChange(tcDiary);
end;

end.

