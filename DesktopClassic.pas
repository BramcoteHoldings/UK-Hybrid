unit DesktopClassic;

interface

{$DEFINE AXIOM}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs,
  ComCtrls, Buttons, Db, Menus, MPlayer, Controls, ExtCtrls, ImgList,
  Registry, FMXUtils, OraSmart, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, DBAccess, MiscFunc, ToolWin,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  LMDStatusBar, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomStatusBar, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDInformationLabel, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, LMDCustomComponent, LMDContainerComponent,
  LMDBaseDialog, dxBar, dxBarExtItems, cxSplitter,
  dxBarExtDBItems, LMDGraphicControl, LMDBaseImage, LMDCustomLImage,
  LMDLImage, ActnList, ActnMan, cxGraphics, LMDClass, dxStatusBar,
  ehshelprouter;

const
  IDXMATTER = 13;  //0;
  IDXCLIENT = 7;  //1;
  IDXPHONEBOOK = 14;  //2;
  IDXREPORT = 6;
//  IDXTIMESHEET = 7;
  IDXARCHIVE = 1;  //9;

  imgARCHIVE = 1;
  imgMATTER = 13;
  imgCLIENT = 70;
  imgPHONEBOOK = 71;
  imgROCKET = 72;

type
  TfrmDesktopClassic = class(TForm)
    ilstMatter: TImageList;
    popSnapshots: TPopupMenu;
    popSnapshotsOpen: TMenuItem;
    popSnapshotsDelete: TMenuItem;
    popSnapshotsClearAll: TMenuItem;
    ilstMatterHot: TImageList;
    popSnapshotsAddHint: TMenuItem;
    popSnapshotsColour: TMenuItem;
    cdlgColour: TColorDialog;
    qryEmps: TUniQuery;
    tbarMatter: TToolBar;
    tbtnMatters: TToolButton;
    tbtnClient: TToolButton;
    tbtnPhoneBook: TToolButton;
    tbtnLaunch: TToolButton;
    tbtnHelp: TToolButton;
    qryDesktop: TUniQuery;
    ilstShortcuts: TImageList;
    popDesktop: TPopupMenu;
    popDesktopOpen: TMenuItem;
    popDesktopDelete: TMenuItem;
    popDesktopClear: TMenuItem;
    MenuItem5: TMenuItem;
    popDesktopColour: TMenuItem;
    MenuItem7: TMenuItem;
    popDesktopLarge: TMenuItem;
    popDesktopSmall: TMenuItem;
    popDesktopDetail: TMenuItem;
    popDesktopList: TMenuItem;
    popSnapshotsLarge: TMenuItem;
    popSnapshotsSmall: TMenuItem;
    popSnapshotsList: TMenuItem;
    popSnapshotsDetail: TMenuItem;
    tbtnDiary: TToolButton;
    tmrDiaryNotify: TTimer;
    qryDiaryNotify: TUniQuery;
    qryDiaryUnnotify: TUniQuery;
    popHelp: TPopupMenu;
    popHelpContents: TMenuItem;
    popHelpIndex: TMenuItem;
    popHelpLine1: TMenuItem;
    popHelpForum: TMenuItem;
    popHelpDownload: TMenuItem;
    popHelpLine2: TMenuItem;
    popHelpAbout: TMenuItem;
    popLaunch: TPopupMenu;
    popLaunchLock: TMenuItem;
    popLaunchLine1: TMenuItem;
    ilstHelp: TImageList;
    popMatter: TPopupMenu;
    popPhoneBook: TPopupMenu;
    popClient: TPopupMenu;
    medSoundEffects: TMediaPlayer;
    popLaunchPassword: TMenuItem;
    popSnapshotsAutocost: TMenuItem;
    popHelpLine3: TMenuItem;
    popHelpSQLTrace: TMenuItem;
    popHelpSQLTraceStop: TMenuItem;
    popHelpSQLTraceLine1: TMenuItem;
    popHelpSQLTraceTol1: TMenuItem;
    popHelpSQLTraceTol5: TMenuItem;
    popHelpSQLTraceAll: TMenuItem;
    popHelpSQLTraceTol9: TMenuItem;
    popHelpSQLTraceTol20: TMenuItem;
    popHelpSQLTraceTol3: TMenuItem;
    miCurrentReleaseNotes: TMenuItem;
    N1: TMenuItem;
    qryEntitys: TUniQuery;
    dsEntitys: TUniDataSource;
    dxBarManager: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButtonDiary: TdxBarButton;
    dxBarLaunch: TdxBarSubItem;
    bbMatterSearch: TdxBarButton;
    bbClientSearch: TdxBarButton;
    dxBarListClients: TdxBarMRUListItem;
    bsWindow: TdxBarSubItem;
    dxBarSubItemClients: TdxBarSubItem;
    bbPhonebookSearch: TdxBarButton;
    dxBarListPhonebook: TdxBarMRUListItem;
    dxBarSubItemPhonebook: TdxBarSubItem;
    dxBarListLaunch: TdxBarMRUListItem;
    dxBarPopMatters: TdxBarPopupMenu;
    dxBarSubItemMatters: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarPopClients: TdxBarPopupMenu;
    dxBarButton7: TdxBarButton;
    dxBarPopPhonebook: TdxBarPopupMenu;
    qryEmpCuts: TUniQuery;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItemOptions: TdxBarSubItem;
    dxBarMRUListItem1: TdxBarMRUListItem;
    dxBarShortcuts: TdxBarSubItem;
    dxBarSnapshots: TdxBarSubItem;
    dxBarSnapshotList: TdxBarMRUListItem;
    dxBarShortcutList: TdxBarMRUListItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarLookupEntity: TdxBarLookupCombo;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarColorCmbShortcuts: TdxBarColorCombo;
    dxBarColorCmbSnapshots: TdxBarColorCombo;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    bbPassword: TdxBarButton;
    ActionManager1: TActionManager;
    actFindMatter: TAction;
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    bbFindMatter: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    bbDiaryFee: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarWindowList: TdxBarListItem;
    cmbMatterFind: TcxLookupComboBox;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    Panel1: TPanel;
    lvDesktop: TListView;
    lvSnapshots: TListView;
    cxSplitter1: TcxSplitter;
    dxBarSubItem4: TdxBarSubItem;
    StatusBar: TdxStatusBar;
    dxStatusBar1Container1: TdxStatusBarContainerControl;
    cmbEntity: TcxLookupComboBox;
    dxStatusBar1Container5: TdxStatusBarContainerControl;
    LMDInformationLabel1: TLMDInformationLabel;
    procedure tbtnMattersClick(Sender: TObject);
    procedure tbtnClientClick(Sender: TObject);
    procedure tbtnPhoneBookClick(Sender: TObject);
    procedure tbtnHelpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure popSnapshotsDeleteClick(Sender: TObject);
    procedure popSnapshotsClearAllClick(Sender: TObject);
    procedure popSnapshotsPopup(Sender: TObject);
    procedure tbtnLaunchClick(Sender: TObject);
    procedure popSnapshotsAddHintClick(Sender: TObject);
    procedure popSnapshotsDetailClick(Sender: TObject);
    procedure popSnapshotsColourClick(Sender: TObject);
    procedure popDesktopColourClick(Sender: TObject);
    procedure tbarMatterClick(Sender: TObject);
    procedure popSnapshotsLargeClick(Sender: TObject);
    procedure popSnapshotsSmallClick(Sender: TObject);
    procedure popSnapshotsListClick(Sender: TObject);
    procedure popDesktopLargeClick(Sender: TObject);
    procedure popDesktopSmallClick(Sender: TObject);
    procedure popDesktopListClick(Sender: TObject);
    procedure popDesktopDetailClick(Sender: TObject);
    procedure popDesktopDeleteClick(Sender: TObject);
    procedure popDesktopClearClick(Sender: TObject);
    procedure splBarMoved(Sender: TObject);
    procedure popDesktopPopup(Sender: TObject);
    procedure lvDesktopClick(Sender: TObject);
    procedure lvSnapshotsClick(Sender: TObject);
    procedure sbarStatusDblClick(Sender: TObject);
    procedure tbtnDiaryClick(Sender: TObject);
    procedure tmrDiaryNotifyTimer(Sender: TObject);
    procedure popHelpContentsClick(Sender: TObject);
    procedure popHelpIndexClick(Sender: TObject);
    procedure popHelpHomePageClick(Sender: TObject);
    procedure popHelpAboutClick(Sender: TObject);
    procedure popLaunchLockClick(Sender: TObject);
    procedure popLaunchPopup(Sender: TObject);
    procedure popMatterPopup(Sender: TObject);
    procedure popClientPopup(Sender: TObject);
    procedure popPhoneBookPopup(Sender: TObject);
    procedure popHelpDownloadClick(Sender: TObject);
    procedure popLaunchPasswordClick(Sender: TObject);
    procedure popSnapshotsAutocostClick(Sender: TObject);
    procedure popSnapshotsOpenClick(Sender: TObject);
    procedure lvDesktopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lvDesktopMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lvDesktopMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lvDesktopInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure lvSnapshotsInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure popHelpSQLTraceStopClick(Sender: TObject);
    procedure popHelpSQLTraceAllClick(Sender: TObject);
    procedure popHelpSQLTraceTol1Click(Sender: TObject);
    procedure popHelpSQLTraceTol3Click(Sender: TObject);
    procedure popHelpSQLTraceTol5Click(Sender: TObject);
    procedure popHelpSQLTraceTol9Click(Sender: TObject);
    procedure popHelpSQLTraceTol20Click(Sender: TObject);
    procedure popHelpForumClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure miCurrentReleaseNotesClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cmbEntityPropertiesCloseUp(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure dxBarSubItemClientsPopup(Sender: TObject);
    procedure dxBarSubItemMattersPopup(Sender: TObject);
    procedure dxBarListClientsClick(Sender: TObject);
    procedure dxBarMatterListClick(Sender: TObject);
    procedure dxBarSubItemPhonebookPopup(Sender: TObject);
    procedure dxBarListPhonebookClick(Sender: TObject);
    procedure dxBarLaunchPopup(Sender: TObject);
    procedure dxBarSubItem6Popup(Sender: TObject);
    procedure dxBarLookupEntityCloseUp(Sender: TObject);
    procedure dxBarSubItemOptionsPopup(Sender: TObject);
    procedure dxBarColorCmbShortcutsCloseUp(Sender: TObject);
    procedure dxBarColorCmbSnapshotsCloseUp(Sender: TObject);
    procedure dxBarColorCmbShortcutsChange(Sender: TObject);
    procedure dxBarColorCmbSnapshotsChange(Sender: TObject);
    procedure LaunchModule(Sender: TObject);
    procedure dxBarSnapshotsPopup(Sender: TObject);
    procedure cmbMatterFindPropertiesCloseUp(Sender: TObject);
    procedure cmbMatterFindKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure bbDiaryFeeClick(Sender: TObject);
    procedure cmbMatterFindPropertiesInitPopup(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure bsWindowPopup(Sender: TObject);
    procedure ShowWindowSelected(Sender: TObject);
    procedure dxBarWindowListGetData(Sender: TObject);
    procedure dxBarWindowListClick(Sender: TObject);
    procedure bbPasswordClick(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure cmbMatterFindPropertiesPopup(Sender: TObject);
    procedure cmbMatterFindMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbMatterFindExit(Sender: TObject);
  private
    { Private declarations }
    FDragging: Boolean;
    function LoadName(ACode : string) : boolean;

    procedure LoadUserDesktop;
    procedure SaveUserSettings;
    procedure popLaunchOpenWindow(Sender: TObject);
    procedure StartSQLTrace(Tolerance: integer);
    procedure DoReleaseNotes;
    procedure SetReopenList(List: string; mnuReopen: TdxBarSubItem; Category: integer);
    procedure DisplaySnapshots;
//    procedure SetReopenList(List: string; mnuReopen: TdxBarPopupMenu; Category: integer = 0); overload;
  public
    { Public declarations }
    procedure AddSnapshot(iPic : integer; sUnique : string);
    procedure AddShortcut(iPic : integer; sUnique : string);
    function WindowReShow(sWindowName : string) : boolean;
    procedure ShowWindows;
    procedure DisplayIcons;
    procedure LoadToolbars;
    procedure DisplayMenuIcons;
    procedure LoadMatter(Sender: TObject);
    procedure LoadClient(Sender: TObject);
    procedure LoadPhoneBook(Sender: TObject);
  end;

var
  frmDesktopClassic: TfrmDesktopClassic;

implementation

uses
  About, Archives, AutoCost,
  Clients, Creditors, Diary, DiaryOutlook, DiaryNotify, Launch, AxiomLogin, Matters,
  AxiomData, EntityChange, Password, PhoneBook, Process,
  Reports, Timesht, Unlock, citfunc,
  InvoiceSearch, PostcodeSearch, MSearch, NSearch, CSearch, LSearch, ArchiveSearch,
  CreditorSearch, CreditorAccountsSearch, TaskSearch, TaskItemSearch,
  ReleaseNotes, TimeDiary, Employees;

{$R *.DFM}

var
  iDiaryNotify : integer;   // Notification time in seconds

procedure TfrmDesktopClassic.FormShow(Sender: TObject);
var
  LFrmLogin: TfrmLogin;
{  sEntity : String;}
begin
  // Log in screen
  LFrmLogin := TfrmLogin.Create(Self);
  try
    begin
      if LFrmLogin.ShowModal <> mrOk then
      begin
        Application.Terminate();
        Exit;
      end;
      if not LoadName(LfrmLogin.qryEmps.FieldByName('CODE').AsString) then
      begin
        Application.Terminate;  // They didn't log in - boot them
        Exit;
      end;
    end;
  finally
    LfrmLogin.qryEmps.Close;
    LFrmLogin.qryVersion.Close;
    FreeAndNil(LfrmLogin);
  end;

  if (dmAxiom.uniInsight.Connected) then
  begin
// rb - not dome here any more
//    sEntity := TableString('EMPLOYEE','CODE',dmAxiom.UserID,'DEFAULT_ENTITY');
//    if sEntity <> '' then
//      dmAxiom.Entity := sEntity;

//    LoadUserDesktop;

    dmAxiom.HelpRouter1.HelpType := ehshelprouter.THelpType(dmAxiom.HelpType);

    popHelpSQLTrace.Visible := dmAxiom.Security.System.SQLTrace;
    popHelpLine3.Visible := dmAxiom.Security.System.SQLTrace;

    iDiaryNotify := TableInteger('EMPLOYEE', 'CODE', dmAxiom.UserID, 'REFRESH');
    if iDiaryNotify = 0 then
      iDiaryNotify := 60;
    tmrDiaryNotify.Interval := iDiaryNotify * 1000;
//    tmrDiaryNotify.Enabled := True;
    qryMRUList.Close;
    qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
    qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
    qryMRUList.Open;
    cmbMatterFind.Text := 'Type a matter to find';
  end;
end;

procedure TfrmDesktopClassic.LoadUserDesktop;
begin

end;


procedure TfrmDesktopClassic.DisplayIcons;
var
  newListItem: TListItem;
  TotalItems, iCtr: integer;
  ShortcutItem: TdxBarButton;
  SnapShotItem: TdxBarButton;
begin
  // Initialize Tables
  qryDesktop.Close;
  qryDesktop.SQL.Text := 'SELECT * FROM DESKTOP WHERE EMP = :Emp ORDER BY PRIORITY';
  qryDesktop.Params[0].AsString := dmAxiom.UserID;
  qryDesktop.Open;
  // Defer drawing ListViews until EndUpdate
  TotalItems := dxBarShortcuts.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 0 do
      dxBarShortcuts.ItemLinks.Delete(iCtr);

  TotalItems := dxBarSnapshots.ItemLinks.Count;
  for iCtr := TotalItems - 1 downto 0 do
     dxBarSnapshots.ItemLinks.Delete(iCtr);

  lvDesktop.Items.Clear;
  lvDesktop.Items.BeginUpdate;
  lvSnapshots.Items.Clear;
  lvSnapshots.Items.BeginUpdate;
  // Add all Shortcuts and Snapshots to the Desktop
  while not qryDesktop.EOF do
  begin
//   dxBarListLaunch.ItemIndex := 0;
    if qryDesktop.FieldByName('TYPE').AsInteger = 0 then
    begin
      dxBarManager.Images := ilstShortcuts;
      dxBarManager.HotImages := ilstShortcuts;
      dxBarManager.LargeImages := ilstShortcuts;
      newListItem := lvDesktop.Items.Add;
      ShortcutItem := TdxBarButton.Create(Self);
      ShortcutItem.Caption := qryDesktop.FieldByName('CAPTION').AsString;
      ShortcutItem.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
      ShortcutItem.Category := 6;
      ShortcutItem.Hint := qryDesktop.FieldByName('HINT').AsString;
      dxBarShortcuts.ItemLinks.Add.Item := ShortcutItem;
      ShortcutItem.OnClick := LaunchModule;
    end
    else
    begin
      dxBarManager.Images := ilstMatter;
      dxBarManager.HotImages := ilstMatterHot;
      dxBarManager.LargeImages := ilstMatter;
      newListItem := lvSnapshots.Items.Add;
      SnapShotItem := TdxBarButton.Create(Self);
      SnapShotItem.Caption := qryDesktop.FieldByName('CAPTION').AsString;
      SnapShotItem.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
      SnapShotItem.Hint := qryDesktop.FieldByName('HINT').AsString;
      SnapShotItem.Category := 7;
      dxBarSnapshots.ItemLinks.Add.Item := SnapShotItem;
      SnapShotItem.OnClick := LaunchModule;
    end;

    newListItem.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
    newListItem.Caption :=    qryDesktop.FieldByName('CAPTION').AsString;
    newListItem.SubItems.Add(qryDesktop.FieldByName('HINT').AsString);
    qryDesktop.Next;
  end;
  // Now Draw the TListView now that all items are loaded
  lvDesktop.Items.EndUpdate;
  lvSnapshots.Items.EndUpdate;
  qryDesktop.Close;
  if dxBarShortcuts.ItemLinks.Count = 0 then
  begin
     ShortcutItem := TdxBarButton.Create(Self);
     ShortcutItem.Caption := '(Empty)';
     ShortcutItem.ImageIndex := -1;
     ShortcutItem.Category := 6;
     dxBarShortcuts.ItemLinks.Add.Item := ShortcutItem;
  end;
  if dxBarSnapshots.ItemLinks.Count = 0 then
  begin
     SnapShotItem := TdxBarButton.Create(Self);
     SnapShotItem.Caption := '(Empty)';
     SnapShotItem.ImageIndex := -1;
     SnapShotItem.Category := 7;
     dxBarSnapshots.ItemLinks.Add.Item := SnapShotItem;
  end;
  dxBarManager.Images := ilstShortcuts;
  dxBarManager.HotImages := ilstShortcuts;
  dxBarManager.LargeImages := ilstShortcuts;
end;

procedure TfrmDesktopClassic.DisplaySnapshots;
var
  TotalItems, iCtr: integer;
  SnapShotItem: TdxBarButton;
begin
  // Initialize Tables
   qryDesktop.Close;
   qryDesktop.SQL.Text := 'SELECT * FROM DESKTOP WHERE EMP = :Emp ORDER BY PRIORITY';
   qryDesktop.Params[0].AsString := dmAxiom.UserID;
   qryDesktop.Open;

   TotalItems := dxBarSnapshots.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 0 do
      dxBarSnapshots.ItemLinks.Delete(iCtr);

   dxBarManager.Images := ilstMatter;
   dxBarManager.HotImages := ilstMatterHot;
   dxBarManager.LargeImages := ilstMatter;
   while not qryDesktop.EOF do
   begin
      if qryDesktop.FieldByName('TYPE').AsInteger = 1 then
      begin
         SnapShotItem := TdxBarButton.Create(Self);
         SnapShotItem.Caption := qryDesktop.FieldByName('CAPTION').AsString;
         SnapShotItem.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
         SnapShotItem.Hint := qryDesktop.FieldByName('HINT').AsString;
         SnapShotItem.Category := 7;
         dxBarSnapshots.ItemLinks.Add.Item := SnapShotItem;
         SnapShotItem.OnClick := LaunchModule;
      end;
      qryDesktop.Next;
  end;
  qryDesktop.Close;

  if dxBarSnapshots.ItemLinks.Count = 0 then
  begin
     SnapShotItem := TdxBarButton.Create(Self);
     SnapShotItem.Caption := '(Empty)';
     SnapShotItem.ImageIndex := -1;
     SnapShotItem.Category := 7;
     dxBarSnapshots.ItemLinks.Add.Item := SnapShotItem;
  end;
  dxBarManager.Images := ilstShortcuts;
  dxBarManager.HotImages := ilstShortcuts;
  dxBarManager.LargeImages := ilstShortcuts;
end;



procedure TfrmDesktopClassic.LoadToolbars;
  // Load the images for the Shortcuts
begin
  ilstShortcuts.Clear;
  GetBitmap(ilstShortcuts, 'LOADERROR');
  GetBitmap(ilstShortcuts, 'ARCHIVE');
  GetBitmap(ilstShortcuts, 'AUTOCOSTHAND');
  GetBitmap(ilstShortcuts, 'AUTOGEN');
  GetBitmap(ilstShortcuts, 'AUTOINV');
  GetBitmap(ilstShortcuts, 'CHEQREQ');
  GetBitmap(ilstShortcuts, 'CHEQUE');
  GetBitmap(ilstShortcuts, 'CLIENT');
  GetBitmap(ilstShortcuts, 'FEELIST');
  GetBitmap(ilstShortcuts, 'FEESBLUE');
  GetBitmap(ilstShortcuts, 'INVOICEOPEN');   //10
  GetBitmap(ilstShortcuts, 'JOURNAL');
  GetBitmap(ilstShortcuts, 'LEDGER');
  GetBitmap(ilstShortcuts, 'MATTER');
  GetBitmap(ilstShortcuts, 'PHONEBOOK');
  GetBitmap(ilstShortcuts, 'PRINT');
  GetBitmap(ilstShortcuts, 'RECEIPT');
  GetBitmap(ilstShortcuts, 'SUNDRYBLUE');
  GetBitmap(ilstShortcuts, 'SUNDRYBATCH');
  GetBitmap(ilstShortcuts, 'TIMESHEET');
  GetBitmap(ilstShortcuts, 'SOUNDS');        //20
  GetBitmap(ilstShortcuts, SystemString('WORDPROC'));
  GetBitmap(ilstShortcuts, 'EMPLOYEES');
  GetBitmap(ilstShortcuts, 'MATTERTYPES');
  GetBitmap(ilstShortcuts, 'SUNDRYTYPES');
  GetBitmap(ilstShortcuts, 'SCALECOSTS');
  GetBitmap(ilstShortcuts, 'DIARY');
  GetBitmap(ilstShortcuts, 'CHEQREQ');
  GetBitmap(ilstShortcuts, 'EXPLORER');
  GetBitmap(ilstShortcuts, 'BANK');
  GetBitmap(ilstShortcuts, 'CHEQUE');            //30
  GetBitmap(ilstShortcuts, 'RECEIPT');
  GetBitmap(ilstShortcuts, 'FEEBATCH');
  GetBitmap(ilstShortcuts, 'DIARYNEW');
  GetBitmap(ilstShortcuts, 'PETTYCASH');
  GetBitmap(ilstShortcuts, 'CREDITOR');
  GetBitmap(ilstShortcuts, 'ENTITY');
  GetBitmap(ilstShortcuts, 'WRITEOFF');
  GetBitmap(ilstShortcuts, 'TASK');
  GetBitmap(ilstShortcuts, 'TASKNEW');
  GetBitmap(ilstShortcuts, 'BANKDEPOSIT');       //40
  GetBitmap(ilstShortcuts, 'QUICKCODE');
  GetBitmap(ilstShortcuts, 'POSTCODE');
  GetBitmap(ilstShortcuts, 'CHEQUEPRESENT');
  GetBitmap(ilstShortcuts, 'ARCHIVAL');
  GetBitmap(ilstShortcuts, 'PHONEBOOK');
  GetBitmap(ilstShortcuts, 'FIELDTYPES');
  GetBitmap(ilstShortcuts, 'DATAFORM');
  GetBitmap(ilstShortcuts, 'DATAREPORT');
  GetBitmap(ilstShortcuts, 'SUNDRYLIST');
  GetBitmap(ilstShortcuts, 'POSTCODESEARCH');      //50
  GetBitmap(ilstShortcuts, 'FEETYPE');
  GetBitmap(ilstShortcuts, 'LEDGER');
  GetBitmap(ilstShortcuts, 'LEDGER');
  GetBitmap(ilstShortcuts, 'FEECODE');
  GetBitmap(ilstShortcuts, 'PETTYCASH');
  GetBitmap(ilstShortcuts, 'JOURNAL');
  GetBitmap(ilstShortcuts, 'CLIENT');
  GetBitmap(ilstShortcuts, 'SUNDRYBLUE');
  GetBitmap(ilstShortcuts, 'TOOLS');
  GetBitmap(ilstShortcuts, 'JOURNAL');             //60
  GetBitmap(ilstShortcuts, 'JOURNAL');
  GetBitmap(ilstShortcuts, 'SUNDRYBLUE');
  GetBitmap(ilstShortcuts, 'SUNDRYBLUE');
  GetBitmap(ilstShortcuts, 'BANKREC');
  GetBitmap(ilstShortcuts, 'ARCHIVAL');
  GetBitmap(ilstShortcuts, 'TOOLS');
  GetBitmap(ilstShortcuts, 'TASKNEW');
  GetBitmap(ilstShortcuts, 'LOCKSHUT');
  GetBitmap(ilstShortcuts, 'MATTER');
  GetBitmap(ilstShortcuts, 'CLIENT');              //70
  GetBitmap(ilstShortcuts, 'PHONEBOOK');
  GetBitmap(ilstShortcuts, 'ROCKET');
  GetBitmap(ilstShortcuts, SystemString('WORDPROC'));
  GetBitmap(ilstShortcuts, 'OPTIONS');
  GetBitmap(ilstShortcuts, 'BANKDEPOSITQUERY');
  GetBitmap(ilstShortcuts, 'PETTYCASH');
  GetBitmap(ilstShortcuts, 'LEDGER');
  GetBitmap(ilstShortcuts, 'INVOICEOPEN');
  GetBitmap(ilstShortcuts, 'INVOICEOPEN');
  GetBitmap(ilstShortcuts, 'KEY');                 //80
  GetBitmap(ilstShortcuts, SystemString('WORDPROC'));
  GetBitmap(ilstShortcuts, 'JOURNAL');
  GetBitmap(ilstShortcuts, SystemString('WORDPROC'));
  GetBitmap(ilstShortcuts, 'PHONEBOOK');
  GetBitmap(ilstShortcuts, 'PHONEBOOK');
  GetBitmap(ilstShortcuts, 'DIARY');
  GetBitmap(ilstShortcuts, 'DIARY');
  GetBitmap(ilstShortcuts, 'DIARY');
  GetBitmap(ilstShortcuts, 'TOOLS');
  GetBitmap(ilstShortcuts, 'TOOLS');              //90
  GetBitmap(ilstShortcuts, 'PRINTSETUP');
  GetBitmap(ilstShortcuts, 'BATCHREPORT');
  GetBitmap(ilstShortcuts, 'SIGNATURE');
  GetBitmap(ilstShortcuts, 'MATTERSTATUS');
  GetBitmap(ilstShortcuts, SystemString('WORDPROC'));
  GetBitmap(ilstShortcuts, 'TASK');
  GetBitmap(ilstShortcuts, 'ADMINDOCS');
  GetBitmap(ilstShortcuts, 'DIARY');
  GetBitmap(ilstShortcuts, 'PETTYCASH');
  GetBitmap(ilstShortcuts, 'DATAFORM');          //100
  GetBitmap(ilstShortcuts, 'TOOLS');
  GetBitmap(ilstShortcuts, 'TOOLS');
  GetBitmap(ilstShortcuts, 'POSTCODE');
  GetBitmap(ilstShortcuts, 'EVENT');
  GetBitmap(ilstShortcuts, 'EVENT');
  GetBitmap(ilstShortcuts, 'EVENTPARTICIPANT');
  GetBitmap(ilstShortcuts, 'EVENT');
  GetBitmap(ilstShortcuts, 'ADDRESS');
  GetBitmap(ilstShortcuts, 'ADDRESS');
  GetBitmap(ilstShortcuts, 'ADDRESS');          //110
  GetBitmap(ilstShortcuts, 'FEELIST');			//111
  GetBitmap(ilstShortcuts, 'FEELIST');          //112 diary notify
  GetBitmap(ilstShortcuts, 'TOOLS');            //113 toolkit
  GetBitmap(ilstShortcuts, 'FEELIST');          //114 archivesearch
  GetBitmap(ilstShortcuts, 'ADDRESS');          //115 market referral
  GetBitmap(ilstShortcuts, 'TIMEDIARY');        //116 time diary

end;


procedure TfrmDesktopClassic.tbtnMattersClick(Sender: TObject);

begin
//   tbtnMatters.OnClick := nil;

   ShowWindows;

   if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if dmAxiom.WANEnabled then
   begin
      if frmMatterSearch.ShowModal = mrOk then
      begin
         Application.CreateForm(TfrmMatters, frmMatters);
//         LfrmMatters := TfrmMatters.Create(Self);
         frmMatters.Tag := imgMATTER;
         frmMatters.DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
         frmMatters.Visible := True;
      end;
   end
   else
   begin
      Application.CreateForm(TfrmMatters, frmMatters);
 //     frmMatters := TfrmMatters.Create(Self);
      frmMatters.Tag := imgMATTER;
      frmMatters.ChooseMatter;
   end;

//   tbtnMatters.OnClick := tbtnMattersClick;

end;

procedure TfrmDesktopClassic.tbtnClientClick(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
  tbtnClient.OnClick := nil;

  ShowWindows;
  LfrmClients := TfrmClients.Create(Self);
  LfrmClients.Tag := imgCLIENT;
  LfrmClients.ChooseClient;

  tbtnClient.OnClick := tbtnClientClick;

end;

procedure TfrmDesktopClassic.tbtnPhoneBookClick(Sender: TObject);
var
  LfrmPhoneBook: TfrmPhoneBook;
begin
  tbtnPhoneBook.OnClick := nil;

  ShowWindows;
  LfrmPhoneBook := TfrmPhoneBook.Create(Self);
  LfrmPhoneBook.Tag := imgPHONEBOOK;
  LfrmPhoneBook.ChoosePhonebook;

  tbtnPhoneBook.OnClick := tbtnPhoneBookClick;

end;


procedure TfrmDesktopClassic.tbtnHelpClick(Sender: TObject);
begin
  tbtnHelp.OnClick := nil;

  ShowWindows;
  Application.HelpCommand(HELP_INDEX, 0);

  tbtnHelp.OnClick := tbtnHelpClick;

end;


procedure TfrmDesktopClassic.AddShortcut(iPic : integer; sUnique : string);
var
  LNewListItem : TListItem;
  i: integer;
begin
  PlaySound('Snapshot');

  for i := 0 to lvDesktop.Items.Count - 1 do
  begin
    if lvDesktop.Items[i].ImageIndex = iPic then
      Exit;
  end;

  LNewListItem := lvDesktop.Items.Add;
  LNewListItem.ImageIndex := iPic;
  LNewListItem.Caption := sUnique;
  LNewListItem.SubItems.Add(ShortcutDesc(iPic));

  qryDesktop.SQL.Text := 'INSERT INTO DESKTOP (EMP, IMAGEINDEX, CAPTION, HINT, PRIORITY, TYPE) VALUES (:EMP, :IMAGEINDEX, :CAPTION, :HINT, :PRIORITY, :TYPE)';
  qryDesktop.ParamByName('EMP').AsString         := dmAxiom.UserID;
  qryDesktop.ParamByName('IMAGEINDEX').AsInteger := LNewListItem.ImageIndex;
  qryDesktop.ParamByName('CAPTION').AsString     := LNewListItem.Caption;
  qryDesktop.ParamByName('HINT').AsString        := LNewListItem.Subitems.Strings[0];
  qryDesktop.ParamByName('PRIORITY').AsInteger   := LNewListItem.Index;
  qryDesktop.ParamByName('TYPE').AsInteger       := 0;
  qryDesktop.ExecSQL;
end;


procedure TfrmDesktopClassic.AddSnapshot(iPic : integer; sUnique : string);
var
  LNewListItem : TListItem;
  i: integer;
begin
  PlaySound('Snapshot');

  for i := 0 to lvSnapshots.Items.Count - 1 do
  begin
    if (lvSnapshots.Items[i].Caption = sUnique) and (lvSnapshots.Items[i].ImageIndex = iPic) then
      Exit;
  end;

  LNewListItem := lvSnapshots.Items.Add;
  LNewListItem.ImageIndex := iPic;
  LNewListItem.Caption := sUnique;
  LNewListItem.SubItems.Add('');

  qryDesktop.SQL.Text := 'INSERT INTO DESKTOP (EMP, IMAGEINDEX, CAPTION, HINT, PRIORITY, TYPE) VALUES (:EMP, :IMAGEINDEX, :CAPTION, :HINT, :PRIORITY, :TYPE)';
  qryDesktop.ParamByName('EMP').AsString         := dmAxiom.UserID;
  qryDesktop.ParamByName('IMAGEINDEX').AsInteger := LNewListItem.ImageIndex;
  qryDesktop.ParamByName('CAPTION').AsString     := LNewListItem.Caption;
  qryDesktop.ParamByName('HINT').AsString        := LNewListItem.Subitems.Strings[0];
  qryDesktop.ParamByName('PRIORITY').AsInteger   := LNewListItem.Index;
  qryDesktop.ParamByName('TYPE').AsInteger       := 1;
  qryDesktop.ExecSQL;


end;


procedure TfrmDesktopClassic.FormClose(Sender: TObject; var Action: TCloseAction);
var
  regAxiom : TRegistry;
begin
  tmrDiaryNotify.Enabled := False;
{  try
    dmAxiom.oalAxiom.Stop;
  except
    // Silent exception
  end;
}
  // Get rid of the user from the registry so that they can't run reports
  // without being in Axiom
  regAxiom := TRegistry.Create;
  try
    regAxiom.RootKey := HKEY_LOCAL_MACHINE;
    if regAxiom.OpenKey(dmAxiom.RegistryRoot, False) then
      regAxiom.DeleteValue('User');
  finally
    regAxiom.Free;
  end;
  if dmAxiom.uniInsight.Connected then
  begin
    PlaySound('Exit');
    SaveUserSettings;
  end;
{
  if DirectoryExists(dmAxiom.SysInfo.TempPath+'$affinity') then
    if not RemoveDir(dmAxiom.SysInfo.TempPath+'$affinity') then
      ShowMessage('Cannot remove '+dmAxiom.SysInfo.TempPath+'$affinity');
}
//  dmAxiom.dbAxiom.CloseDataSets;
//  dmAxiom.dbAxiom.Close;
end;


procedure TfrmDesktopClassic.SaveUserSettings;
begin
  SettingSave('Desktop', 'Entity', dmAxiom.Entity);
end;


function TfrmDesktopClassic.LoadName(ACode : string) : boolean;
begin
  Result := False;
  qryEmps.Close;
  qryEmps.ParamByName('code').AsString := ACode;
  qryEmps.Open;
  if not qryEmps.EOF then
  begin
    Result := True;
    StatusBar.Panels[0].Text := 'User: ' + qryEmps.FieldByName('NAME').AsString;
    dmAxiom.UserID            := qryEmps.FieldByName('CODE').AsString;
    dmAxiom.ReopenItems       := qryEmps.FieldByName('REOPENLENGTH').AsInteger;
    dmAxiom.AuthorRate        := qryEmps.FieldByName('RATE').AsCurrency;
    dmAxiom.RefreshRate       := qryEmps.FieldByName('REFRESH').AsInteger;
  end;
  DoReleaseNotes();
end;


procedure TfrmDesktopClassic.popSnapshotsDeleteClick(Sender: TObject);
begin
  PlaySound('Delete');

  qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum AND CAPTION = :CAPTION AND IMAGEINDEX = :IMAGEINDEX';
  qryDesktop.ParamByName('Emp').AsString         := dmAxiom.UserID; // Emp
  qryDesktop.ParamByName('TypeNum').AsInteger    := 1;              // Type
  qryDesktop.ParamByName('IMAGEINDEX').AsInteger := lvSnapshots.Selected.ImageIndex;
  qryDesktop.ParamByName('CAPTION').AsString     := lvSnapshots.Selected.Caption;

  qryDesktop.ExecSQL();

  lvSnapshots.Selected.Delete();
end;


procedure TfrmDesktopClassic.popSnapshotsClearAllClick(Sender: TObject);
begin
  PlaySound('Delete All');

  qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum';
  qryDesktop.Params[0].AsString  := dmAxiom.UserID; // Emp
  qryDesktop.Params[1].AsInteger := 1;              // Type
  qryDesktop.ExecSQL();
  lvSnapshots.Items.Clear();

end;

procedure TfrmDesktopClassic.popSnapshotsPopup(Sender: TObject);
begin
  popSnapshotsOpen.Enabled    := lvSnapshots.SelCount > 0;
  popSnapshotsAddHint.Enabled := lvSnapshots.SelCount > 0;
  popSnapshotsDelete.Enabled  := lvSnapshots.SelCount > 0;
  if lvSnapshots.SelCount > 0 then
    popSnapshotsAutocost.Visible := lvSnapshots.Selected.ImageIndex = IDXMATTER
  else
    popSnapshotsAutocost.Visible := False;
end;


procedure TfrmDesktopClassic.tbtnLaunchClick(Sender: TObject);
var
  LfrmLaunch: TfrmLaunch;
begin
  tbtnLaunch.OnClick := nil;

  ShowWindows;
  if not WindowReShow('frmLaunch') then
  begin
    LfrmLaunch := TfrmLaunch.Create(Self);
    LfrmLaunch.Tag := imgROCKET;
    LfrmLaunch.Show;
  end;
  tbtnLaunch.OnClick := tbtnLaunchClick; 
end;


procedure TfrmDesktopClassic.popSnapshotsAddHintClick(Sender: TObject);
begin
  lvSnapshots.Selected.SubItems.Strings[0] := InputBox('Enter Reminder', 'Please enter a reminder for this Snapshot', lvSnapshots.Selected.subitems.strings[0]);

  qryDesktop.SQL.Text := 'UPDATE DESKTOP SET HINT = :HINT WHERE EMP = :Emp AND TYPE = :TypeNum AND CAPTION = :CAPTION AND IMAGEINDEX = :IMAGEINDEX';
  qryDesktop.ParamByName('Emp').AsString         := dmAxiom.UserID; // Emp
  qryDesktop.ParamByName('TypeNum').AsInteger    := 1;              // Type
  qryDesktop.ParamByName('IMAGEINDEX').AsInteger := lvSnapshots.Selected.ImageIndex;
  qryDesktop.ParamByName('HINT').AsString        := lvSnapshots.Selected.SubItems.Strings[0];
  qryDesktop.ParamByName('CAPTION').AsString     := lvSnapshots.Selected.Caption;
  qryDesktop.ExecSQL();

end;


procedure TfrmDesktopClassic.popSnapshotsColourClick(Sender: TObject);
begin
  cdlgColour.Color := lvSnapshots.Color;
  if cdlgColour.Execute then
    lvSnapshots.Color := cdlgColour.Color;
  SettingSave('Snapshot', 'Colour', lvSnapshots.Color);
end;


procedure TfrmDesktopClassic.popDesktopColourClick(Sender: TObject);
begin
  cdlgColour.Color := lvDesktop.Color;
  if cdlgColour.Execute then
    lvDesktop.Color := cdlgColour.Color;
  SettingSave('Desktop', 'Colour', lvDesktop.Color);
end;


procedure TfrmDesktopClassic.ShowWindows;
var
  iCtr : integer;
begin
  for iCtr := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[iCtr].Visible then
      Screen.Forms[iCtr].Show;
  end;
end;

function TfrmDesktopClassic.WindowReShow(sWindowName : string) : boolean;
var
  iCtr : integer;
begin
  WindowReShow := False;
  for iCtr := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[iCtr].Name = sWindowName then
    begin
      Screen.Forms[iCtr].Show;
      WindowReShow := True;
    end;
  end;
end;

procedure TfrmDesktopClassic.ShowWindowSelected(Sender: TObject);
var
  iCtr : integer;
begin
  for iCtr := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[iCtr].Caption = (Sender as TdxBarMRUListItem).Caption then
    begin
      Screen.Forms[iCtr].Show;
//      WindowReShow := True;
    end;
  end;
end;


procedure TfrmDesktopClassic.tbarMatterClick(Sender: TObject);
begin
  ShowWindows();
end;


procedure TfrmDesktopClassic.popSnapshotsLargeClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsIcon;
  popSnapshotsLarge.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;

procedure TfrmDesktopClassic.popSnapshotsSmallClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsSmallIcon;
  popSnapshotsSmall.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;

procedure TfrmDesktopClassic.popSnapshotsListClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsList;
  popSnapshotsList.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;

procedure TfrmDesktopClassic.popSnapshotsDetailClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsReport;
  popSnapshotsDetail.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;


procedure TfrmDesktopClassic.popDesktopLargeClick(Sender: TObject);
begin
  lvDesktop.ViewStyle := vsIcon;
  popDesktopLarge.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktopClassic.popDesktopSmallClick(Sender: TObject);
begin
  lvDesktop.ViewStyle := vsSmallIcon;
  popDesktopSmall.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktopClassic.popDesktopListClick(Sender: TObject);
begin
  lvDesktop.ViewStyle := vsList;
  popDesktopList.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktopClassic.popDesktopDetailClick(Sender: TObject);
begin
  lvDesktop.ViewStyle := vsReport;
  popDesktopDetail.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktopClassic.popDesktopDeleteClick(Sender: TObject);
begin
  PlaySound('Delete');

  qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum AND CAPTION = :CAPTION AND IMAGEINDEX = :IMAGEINDEX';
  qryDesktop.ParamByName('Emp').AsString         := dmAxiom.UserID; // Emp
  qryDesktop.ParamByName('TypeNum').AsInteger    := 0;              // Type
  qryDesktop.ParamByName('IMAGEINDEX').AsInteger := lvDesktop.Selected.ImageIndex;
  qryDesktop.ParamByName('CAPTION').AsString     := lvDesktop.Selected.Caption;

  qryDesktop.ExecSQL();

  lvDesktop.Selected.Delete();
end;

procedure TfrmDesktopClassic.popDesktopClearClick(Sender: TObject);
begin
  PlaySound('Delete All');

  qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum';
  qryDesktop.Params[0].AsString  := dmAxiom.UserID; // Emp
  qryDesktop.Params[1].AsInteger := 0;                // Type
  qryDesktop.ExecSQL();
  lvDesktop.Items.Clear;
end;

procedure TfrmDesktopClassic.splBarMoved(Sender: TObject);
begin
  SettingSave('Desktop', 'Height', lvDesktop.Height);
end;

procedure TfrmDesktopClassic.popDesktopPopup(Sender: TObject);
begin
  if lvDesktop.SelCount = 0 then
  begin
    popDesktopOpen.Enabled := False;
    popDesktopDelete.Enabled := False;
  end else
  begin
    popDesktopOpen.Enabled := True;
    popDesktopDelete.Enabled := True;
  end;
end;

procedure TfrmDesktopClassic.lvDesktopClick(Sender: TObject);
begin
  if not FDragging then
  begin
    if lvDesktop.SelCount > 0 then
    begin
      if not Assigned(frmLaunch) then
      begin
        frmLaunch  := TfrmLaunch.Create(Self);
        frmLaunch.Tag := imgROCKET;
      end;
      frmLaunch.Launch(lvDesktop.Selected.ImageIndex);
    end;
  end;
end;

procedure TfrmDesktopClassic.lvSnapshotsClick(Sender: TObject);
var
  frmNewReports : TfrmReports;
  LfrmMatters: TfrmMatters;
  LfrmClients: TfrmClients;
  LfrmPhonebook: TfrmPhonebook;
  LfrmReports: TfrmReports;
  LfrmArchive: TfrmArchive;
  LfrmTimesheet: TfrmTimesheet;
begin
  if lvSnapshots.SelCount > 0 then
  begin
    case lvSnapshots.Selected.ImageIndex of
      IDXMATTER : // Matter
        begin
           Application.CreateForm(TfrmMatters, frmMatters);
           frmMatters.DisplayMatter(Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1));
           frmMatters.Tag := IMGMATTER;
        end;
      IDXCLIENT : // Client
        begin
          LfrmClients := TfrmClients.Create(Self);
          LfrmClients.DisplayClient(Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1));
          LfrmClients.Tag := imgCLIENT;
        end;
      IDXPHONEBOOK : // PhoneBook
        begin
          LfrmPhonebook := TfrmPhonebook.Create(Self);
          LfrmPhonebook.Search := Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1);
          LfrmPhonebook.Show;
          LfrmPhonebook.Tag := imgPHONEBOOK;
        end;
      IDXTIMESHEET : // Timesheet
        begin
          LfrmTimesheet := TfrmTimesheet.Create(Self);
          LfrmTimesheet.Show;
//          LfrmTimesheet.DisplayTimesheet(lvSnapshots.Selected.Caption);
        end;
      IDXREPORT : // Report
        begin
          if not frmDesktopClassic.WindowReShow('frmReports') then
          begin
            LfrmReports := TfrmReports.Create(Self);
            LfrmReports.LaunchReport(lvSnapshots.Selected.Caption);
            dxBarWindowList.Items.AddObject(LfrmReports.Caption, LfrmReports);
          end else
          begin
            frmNewReports := (Screen.ActiveForm as TfrmReports);
            frmNewReports.Show;
            frmNewReports.LaunchReport(lvSnapshots.Selected.Caption);
            dxBarWindowList.Items.AddObject(frmNewReports.Caption, frmNewReports);
          end;
        end;
      IDXARCHIVE : // Archived Matter
        begin
          LfrmArchive := TfrmArchive.Create(Self);
          LfrmArchive.Show;
          LfrmArchive.DisplayArchive(Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1));
          LfrmArchive.Tag := imgARCHIVE;
        end;
    end;
  end;
end;



procedure TfrmDesktopClassic.sbarStatusDblClick(Sender: TObject);
var
  LfrmEntityChange: TfrmEntityChange;
begin
  LfrmEntityChange := TfrmEntityChange.Create(Self);
  try
    LfrmEntityChange.ShowModal;
  finally
    LfrmEntityChange.Free;
  end;
end;


procedure TfrmDesktopClassic.tbtnDiaryClick(Sender: TObject);
var
  LfrmDiary: TfrmDiary;
begin
  tbtnDiary.OnClick := nil;

  if not frmDesktopClassic.WindowReShow('frmDiary') then
  begin
//    LfrmDiaryOutlook := TfrmDiaryOutlook.Create(Self);
//    LfrmDiaryOutlook.Show;
     LfrmDiary := TfrmDiary.Create(Self);
     LfrmDiary.Show;
  end;
  tbtnDiary.OnClick := tbtnDiaryClick;
end;


procedure TfrmDesktopClassic.tmrDiaryNotifyTimer(Sender: TObject);
var
  bNotifyUser : boolean;
  diaryNotify : TfrmDiaryNotify;
begin
  // TONY DIARY WORK
  with qryDiaryNotify do
  begin
    ParamByName('REMINDER_FOR').AsString := dmAxiom.UserID;
    ParamByName('NOTIFYSTART').AsDateTime := Trunc(Date);
    ParamByName('NOTIFYEND').AsDateTime := Now + EncodeTime(iDiaryNotify div 60, iDiaryNotify mod 60, 0, 0);
    Open;

    bNotifyUser := not IsEmpty;

    if bNotifyUser then
    begin
      diaryNotify := TfrmDiaryNotify(FindorCreate(TfrmDiaryNotify, IDXDIARYNOTIFY));
      diaryNotify.DiaryNotify(Self.qryDiaryNotify.ParamByName('NOTIFYEND').AsDateTime);
      diaryNotify.Show;
      diaryNotify.BringToFront;
    end;
    {
      with TfrmDiaryNotify.Create(Self) do
      begin

        DiaryNotify(Self.qryDiaryNotify.ParamByName('NOTIFYEND').AsDateTime);
        Show;
        Application.BringToFront;
      end;
    }

    // After notifying, unnotify all events
    {
    while not EOF do
    begin
      qryDiaryUnnotify.ParamByName('NDIARY').AsInteger := FieldByName('NDIARY').AsInteger;
      qryDiaryUnnotify.ExecSQL;
      Next;
    end;
    }
    ///////////////////////////////////////

    Close;
  end;

//  tmrDiaryNotify.Enabled := True;
end;

procedure TfrmDesktopClassic.popHelpContentsClick(Sender: TObject);
begin
  tbtnHelp.Click;
end;

procedure TfrmDesktopClassic.popHelpIndexClick(Sender: TObject);
begin
  ShowWindows;
  Application.HelpCommand(HELP_INDEX, 0);
end;

procedure TfrmDesktopClassic.popHelpHomePageClick(Sender: TObject);
begin
  //ExecuteFile('http://www.colateral.com.au', '', '', 0);
end;

procedure TfrmDesktopClassic.popHelpAboutClick(Sender: TObject);
var
  LfrmAbout: TfrmAbout;
begin
  LfrmAbout := TfrmAbout.Create(Self);
  LfrmAbout.ShowModal;
end;

procedure TfrmDesktopClassic.popLaunchLockClick(Sender: TObject);
var
  iCtr : integer;
  sOldUserID, sNewUserID : string;
  LfrmUnlock: TfrmUnlock;
begin
  Self.WindowState := wsMinimized;
  sOldUSerID := dmAxiom.UserID;
  LfrmUnlock := TfrmUnlock.Create(Self);
  LfrmUnlock.ShowModal;
  if dmAxiom.UserID <> sOldUserID then
  begin
    // Save the old user's settings
    sNewUserID := dmAxiom.UserID;
    dmAxiom.UserID := sOldUserID;
    SaveUserSettings;
    // Load the new user's settings
    dmAxiom.UserID := sNewUserID;
    LoadName(dmAxiom.UserID);
    LoadUserDesktop;
    // Destroy any open Windows
    for iCtr := Screen.FormCount - 1 downto 0 do
    begin
      if (Screen.Forms[iCtr].Name <> 'frmDesktopClassic') and (Screen.Forms[iCtr].Visible) then
        Screen.Forms[iCtr].Release;
    end;
  end;
  WindowState := wsMaximized;
end;

procedure TfrmDesktopClassic.popLaunchPopup(Sender: TObject);
var
  iCtr : integer;
  mnuNew : TMenuItem;
begin
  // Destroy the current menu
  for iCtr := 4 to popLaunch.Items.Count do
    popLaunch.Items[3].Free;
  popLaunchLine1.Visible := False;
  for iCtr := 0 to Screen.Formcount - 1 do
  begin
    if (Screen.Forms[iCtr].Name <> 'frmDesktopClassic') AND (Screen.Forms[iCtr].Name <> 'frmWindows') AND Screen.Forms[iCtr].Visible then
    begin
      popLaunchLine1.Visible := True;
      mnuNew := TMenuItem.Create(Self);
      mnuNew.Caption := Screen.Forms[iCtr].Caption;
      mnuNew.Name := 'popLaunch' + IntToStr(iCtr);
      mnuNew.Default := False;
      if Screen.Forms[iCtr].Tag <> 0 then
        mnuNew.ImageIndex := Screen.Forms[iCtr].Tag;
      mnuNew.OnClick := popLaunchOpenWindow;
      popLaunch.Items.Add(mnuNew);
    end;
  end;
end;


procedure TfrmDesktopClassic.popLaunchOpenWindow(Sender: TObject);
var
  iCtr : integer;
begin
  if popLaunch.Items.Count > 2 then
  begin
    for iCtr := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[iCtr].Caption = (Sender as TMenuItem).Caption then
      begin
        Screen.Forms[iCtr].Show;
        if Screen.Forms[iCtr].WindowState = wsMinimized then
          Screen.Forms[iCtr].WindowState := wsNormal;
      end;
    end;
  end;
end;

procedure TfrmDesktopClassic.popMatterPopup(Sender: TObject);
var
  mnuNewItem : TMenuItem;
begin

// rb Opt for WAN  
  ReopenListSet('MATTER',popMatter);
{  popMatter.Items.Clear;

  dmAxiom.qrySql.Close();
  dmAxiom.qrySql.SQL.Text := 'SELECT M.FILEID,M.TITLE,M.SHORTDESCR ' +
              'FROM MATTER M,OPENLIST O ' +
              'WHERE O.AUTHOR = :P_Author ' +
              'AND O.TYPE = :P_Type ' +
              'AND O.CODE = M.FILEID ' +
			   'ORDER BY O.IDX';
  dmAxiom.qrySql.ParamByName('P_TYPE').AsString := 'MATTER';
  dmAxiom.qrySql.ParamByName('P_Author').AsString := dmAxiom.UserID;

  dmAxiom.qrySql.Open();

  while not dmAxiom.qrySql.EOF do
  begin
    mnuNewItem := TMenuItem.Create(popMatter);
    popMatter.Items.Add(mnuNewItem);
    mnuNewItem.Caption := dmAxiom.qrySql.FieldByName('FILEID').AsString + ' ' +
      AndReplace(dmAxiom.qrySql.FieldByName('TITLE').AsString) + ' ' +
      AndReplace(dmAxiom.qrySql.FieldByName('SHORTDESCR').AsString);
    mnuNewItem.ImageIndex := imgMATTER;
    mnuNewItem.OnClick := LoadMatter;
    dmAxiom.qrySql.Next();
  end;

  dmAxiom.qrySql.Close();	}

// rb
  {with dmAxiom.qryOpenList do
  begin
    Close;
    ParamByName('P_Author').AsString := dmAxiom.UserID;
    ParamByName('P_Type').AsString := 'MATTER';
    Open;

    while not EOF do
    begin
      mnuNewItem := TMenuItem.Create(popMatter);
      popMatter.Items.Add(mnuNewItem);
      mnuNewItem.Caption := FieldByName('CODE').AsString + ' ' + MatterString(FieldByName('CODE').AsString, 'TITLE') + ' ' + MatterString(FieldByName('CODE').AsString, 'SHORTDESC');
      mnuNewItem.ImageIndex := imgMATTER;
      mnuNewItem.OnClick := LoadMatter;
      Next;
    end;
    Close;
  end;
 }
end;

procedure TfrmDesktopClassic.LoadMatter(Sender: TObject);
var
  LFileID: String;
begin
//   if cmbMatterFind.Text <> '' then
//   begin
      Application.CreateForm(TfrmMatters, frmMatters);
   //   frmMatters := TfrmMatters.Create(Self);
      frmMatters.Tag := imgMATTER;
      if (Sender is TdxBarButton) then
         LFileID := Copy((Sender as TdxBarButton).Caption, 1, Pos(' ', (Sender as TdxBarButton).Caption)-1)
      else
         if (Sender is TcxLookupComboBox) then
         begin
            if cmbMatterFind.Text = 'Search...' then
               tbtnMatters.Click
            else
               LFileID := cmbMatterFind.Text;
         end;

      if LFileID <> '' then
         frmMatters.DisplayMatter(LFileID);

      cmbMatterFind.Text := '';
  // end;
end;


procedure TfrmDesktopClassic.popClientPopup(Sender: TObject);
var
  mnuNewItem : TMenuItem;
begin
   ReopenListSet('CLIENT',popClient);
{  popClient.Items.Clear();
  dmAxiom.qryOpenList.Close();
  dmAxiom.qryOpenList.ParamByName('P_Author').AsString := dmAxiom.UserID;
  dmAxiom.qryOpenList.ParamByName('P_Type').AsString := 'CLIENT';
  dmAxiom.qryOpenList.Open();

  while not dmAxiom.qryOpenList.EOF do
  begin
    mnuNewItem := TMenuItem.Create(popClient);
    popClient.Items.Add(mnuNewItem);
    mnuNewItem.Caption := AndReplace(dmAxiom.qryOpenList.FieldByName('CODE').AsString);
    mnuNewItem.ImageIndex := imgCLIENT;
    mnuNewItem.OnClick := LoadClient;
    dmAxiom.qryOpenList.Next();
  end;
  dmAxiom.qryOpenList.Close(); }
end;

procedure TfrmDesktopClassic.LoadClient(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
  LfrmClients := TfrmClients.Create(Self);
  LfrmClients.Tag := imgCLIENT;
  LfrmClients.DisplayClient(Copy((Sender as TdxBarButton).Caption, 1, Pos(' ', (Sender as TdxBarButton).Caption)-1));
//  LfrmClients.DisplayClient(ReplaceAndAnd((Sender as TMenuItem).Caption));
end;


procedure TfrmDesktopClassic.popPhoneBookPopup(Sender: TObject);
var
  mnuNewItem : TMenuItem;
begin
   ReopenListSet('PHONEBOOK',popPhoneBook);
{  popPhoneBook.Items.Clear;
  dmAxiom.qryOpenList.Close();
  dmAxiom.qryOpenList.ParamByName('P_Author').AsString := dmAxiom.UserID;
  dmAxiom.qryOpenList.ParamByName('P_Type').AsString := 'PHONEBOOK';
  dmAxiom.qryOpenList.Open();

  while not dmAxiom.qryOpenList.EOF do
  begin
    mnuNewItem := TMenuItem.Create(popPhoneBook);
    popPhoneBook.Items.Add(mnuNewItem);
    mnuNewItem.Caption := AndReplace(dmAxiom.qryOpenList.FieldByName('CODE').AsString);
    mnuNewItem.ImageIndex := imgPHONEBOOK;
    mnuNewItem.OnClick := LoadPhoneBook;
    dmAxiom.qryOpenList.Next();
  end;
  dmAxiom.qryOpenList.Close(); }
end;

procedure TfrmDesktopClassic.LoadPhoneBook(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
   LfrmPhonebook := TfrmPhonebook.Create(Self);
   LfrmPhonebook.Tag := imgPHONEBOOK;
   LfrmPhonebook.Search := ReplaceAndAnd(Copy((Sender as TdxBarButton).Caption, 1, Pos(' ', (Sender as TdxBarButton).Caption)-1));
//  LfrmPhonebook.Search := ReplaceAndAnd((Sender as TMenuItem).Caption);
   LfrmPhonebook.Show();
end;


procedure TfrmDesktopClassic.popHelpDownloadClick(Sender: TObject);
begin
  ExecuteFile('http://www.bhl.com.au/axiomreleases', '', '', 0);
end;

procedure TfrmDesktopClassic.popLaunchPasswordClick(Sender: TObject);
var
  LfrmPassword: TfrmPassword;
begin
  LfrmPassword := TfrmPassword.Create(Self);
  LfrmPassword.Tag := 80;
  LfrmPassword.LoadEmp(dmAxiom.UserID);
end;

procedure TfrmDesktopClassic.popSnapshotsAutocostClick(Sender: TObject);
var
  LfrmAutoCost: TfrmAutoCost;
begin
  LfrmAutoCost := TfrmAutoCost(FindorCreate(TfrmAutoCost, IDXAUTOCOST));
  LfrmAutoCost.Show();
  LfrmAutoCost.CreateTimer(Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1));
end;

procedure TfrmDesktopClassic.popSnapshotsOpenClick(Sender: TObject);
begin
  lvSnapshots.OnClick(Self);
end;

procedure TfrmDesktopClassic.lvDesktopMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
end;

procedure TfrmDesktopClassic.lvDesktopMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
end;

procedure TfrmDesktopClassic.lvDesktopMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := True;
end;

procedure TfrmDesktopClassic.lvDesktopInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
begin
  InfoTip := Item.Subitems[0];
end;

procedure TfrmDesktopClassic.lvSnapshotsInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
begin
  InfoTip := Item.Subitems[0];
end;

procedure TfrmDesktopClassic.popHelpSQLTraceStopClick(Sender: TObject);
begin
  dmAxiom.QueryTracing := False;
  MsgInfo('SQL performance tracing is now off for this database session.');
end;

procedure TfrmDesktopClassic.StartSQLTrace(Tolerance: integer);
begin
  dmAxiom.QueryTracing := True;
  dmAxiom.QueryTolerance := Tolerance;
  MsgInfo('SQL performance tracing is now on for this database session.' + #13#13 + 'Traceable database queries taking longer than ' + IntToStr(Tolerance) + ' seconds will be recorded for investigation.');
end;

procedure TfrmDesktopClassic.popHelpSQLTraceAllClick(Sender: TObject);
begin
  StartSQLTrace(0);
end;

procedure TfrmDesktopClassic.popHelpSQLTraceTol1Click(Sender: TObject);
begin
  StartSQLTrace(1);
end;

procedure TfrmDesktopClassic.popHelpSQLTraceTol3Click(Sender: TObject);
begin
 StartSQLTrace(3);
end;

procedure TfrmDesktopClassic.popHelpSQLTraceTol5Click(Sender: TObject);
begin
  StartSQLTrace(5);
end;

procedure TfrmDesktopClassic.popHelpSQLTraceTol9Click(Sender: TObject);
begin
  StartSQLTrace(9);
end;

procedure TfrmDesktopClassic.popHelpSQLTraceTol20Click(Sender: TObject);
begin
  StartSQLTrace(20);
end;

procedure TfrmDesktopClassic.popHelpForumClick(Sender: TObject);
begin
  ExecuteFile('http://www.bhl.com.au', '', '', 0);
end;

procedure TfrmDesktopClassic.FormCreate(Sender: TObject);
begin
  //sOldDateFormat := set_date_format('d/MM/yyyy');
end;

procedure TfrmDesktopClassic.FormDestroy(Sender: TObject);
begin
  //set_date_format(sOldDateFormat);
end;

procedure TfrmDesktopClassic.DoReleaseNotes;
var
  LLastVersion, LCurrentVersion: String;
begin
  // here we check versions, old version against new for the logged in user..
  dmAxiom.qryTmp.SQL.Text := 'SELECT CURRENTAXIOMATIONVERSION FROM EMPLOYEE where code = ''' + dmAxiom.UserID + '''';
  dmAxiom.qryTmp.Open();
  try
    LLastVersion    := dmAxiom.qryTmp.FieldByName('CURRENTAXIOMATIONVERSION').AsString;
    LCurrentVersion := dmAxiom.Version + '.' + IntToStr(dmAxiom.BuildNumber);
  finally
    dmAxiom.qryTmp.Close();
  end;


  if(LLastVersion <> LCurrentVersion) then
  begin
    dmAxiom.qryTmp.SQL.Text := 'UPDATE employee SET CURRENTAXIOMATIONVERSION = ''' + LCurrentVersion + '''  where code = ''' + dmAxiom.UserID + '''';
    dmAxiom.qryTmp.ExecSQL();

    if MessageDlg('The Version of Axiomation has changed.'#13#10'Do you want to view the release notes?', mtInformation, [mbYes,mbNo], 0) = mrYes then
    begin
      fmReleaseNotes := TfmReleaseNotes.Create(Application);
      fmReleaseNotes.Show();
    end;
  end;
end;


procedure TfrmDesktopClassic.miCurrentReleaseNotesClick(Sender: TObject);
begin
  fmReleaseNotes := TfmReleaseNotes.Create(Application);
  fmReleaseNotes.Show();
end;

procedure TfrmDesktopClassic.FormKeyPress(Sender: TObject; var Key: Char);
begin
   showmessage(key);
end;

procedure TfrmDesktopClassic.cmbEntityPropertiesCloseUp(Sender: TObject);
begin
   dmAxiom.Entity := cmbEntity.EditValue;
   dxBarLookupEntity.KeyValue := dmAxiom.Entity;
   SettingSave('Desktop', 'Entity', dmAxiom.Entity);
end;

procedure TfrmDesktopClassic.ToolButton1Click(Sender: TObject);
begin
{   dlgAxiomWindowList.Create(Application);
   if dlgAxiomWindowList.Execute then
      dlgAxiomWindowList.Destroy;   }
end;

procedure TfrmDesktopClassic.SetReopenList(List: string; mnuReopen: TdxBarSubItem; Category: integer);
begin
   ReopenListSet(List, mnuReopen, category);
end;

//procedure TfrmDesktop.SetReopenList(List: string; mnuReopen: TdxBarPopupMenu; Category: integer); overload;
//begin
//   ReopenListSet(List, mnuReopen);
//end;

procedure TfrmDesktopClassic.dxBarSubItemClientsPopup(Sender: TObject);
begin
   SetReopenList('CLIENT',dxBarSubItem2, 2);
   ReopenListSet('CLIENT',dxBarPopClients);
end;

procedure TfrmDesktopClassic.dxBarSubItemMattersPopup(Sender: TObject);
begin
   SetReopenList('MATTER',dxBarSubItem1, 4);
//   ReopenListSet('MATTER',dxBarPopMatters);
end;

procedure TfrmDesktopClassic.dxBarListClientsClick(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
  LfrmClients := TfrmClients.Create(Self);
  LfrmClients.Tag := imgCLIENT;
  LfrmClients.DisplayClient(dxBarListClients.Items[dxBarListClients.ItemIndex]);
end;

procedure TfrmDesktopClassic.dxBarMatterListClick(Sender: TObject);
var
  LFileID: String;
  MenuCaption: string;
begin
{   Application.CreateForm(TfrmMatters, frmMatters);
//   frmMatters := TfrmMatters.Create(Self);
   frmMatters.Tag := imgMATTER;
   MenuCaption := TdxBarItem( Sender ).Links[dxBarMatterList.ItemIndex].Item.Caption; //  Items[dxBarMatterList.ItemIndex];
   LFileID := Copy(MenuCaption, 1, Pos(' ', MenuCaption) - 1);
   frmMatters.DisplayMatter(LFileID);  }

end;

procedure TfrmDesktopClassic.dxBarSubItemPhonebookPopup(Sender: TObject);
begin
   SetReopenList('PHONEBOOK',dxBarSubItem3, 3);
   ReopenListSet('PHONEBOOK',dxBarPopPhonebook);
end;

procedure TfrmDesktopClassic.dxBarListPhonebookClick(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
  LfrmPhonebook := TfrmPhonebook.Create(Self);
  LfrmPhonebook.Tag := imgPHONEBOOK;
  LfrmPhonebook.Search := dxBarListPhonebook.Items[dxBarListPhonebook.ItemIndex];
  LfrmPhonebook.Show();
end;

procedure TfrmDesktopClassic.DisplayMenuIcons;
var
  iCtr: integer;
  TotalItems: integer;
  LaunchItem: TdxBarButton;
begin
   dxBarManager.Images := ilstShortcuts;
   TotalItems := dxBarLaunch.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 0 do
      dxBarLaunch.ItemLinks.Delete(iCtr);

  qryEmpCuts.Close;
  qryEmpCuts.ParamByName('P_Emp').AsString := dmAxiom.UserID;
  qryEmpCuts.Open;
  while not qryEmpCuts.EOF do
  begin
    LaunchItem := TdxBarButton.Create(Self);
    LaunchItem.Caption := qryEmpCuts.FieldByName('NAME').AsString;
    LaunchItem.ImageIndex := qryEmpCuts.FieldByName('IMAGEINDEX').AsInteger;
    LaunchItem.Category := 5;
    dxBarLaunch.ItemLinks.Add.Item := LaunchItem;
    LaunchItem.OnClick := LaunchModule;

    qryEmpCuts.Next;
  end;
//  dxBarListLaunch.ItemIndex := 0;
end;

procedure TfrmDesktopClassic.LaunchModule(Sender: TObject);
begin
   if not Assigned(frmLaunch) then
   begin
      frmLaunch  := TfrmLaunch.Create(Self);
      frmLaunch.Tag := imgROCKET;
   end;
   frmLaunch.Launch(TdxBarItem( Sender ).ImageIndex);
end;

procedure TfrmDesktopClassic.dxBarLaunchPopup(Sender: TObject);
begin
   DisplayMenuIcons
end;

procedure TfrmDesktopClassic.dxBarSubItem6Popup(Sender: TObject);
begin
   dxBarLookupEntity.KeyValue := dmAxiom.Entity;
end;

procedure TfrmDesktopClassic.dxBarLookupEntityCloseUp(Sender: TObject);
begin
   dmAxiom.Entity := qryEntitys.FieldByName('CODE').AsString;
   frmDesktopClassic.cmbEntity.EditValue := dmAxiom.Entity;
   SettingSave('Desktop', 'Entity', dmAxiom.Entity);
end;

procedure TfrmDesktopClassic.dxBarSubItemOptionsPopup(Sender: TObject);
begin
   dxBarColorCmbShortcuts.Color := lvDesktop.Color;
   dxBarColorCmbSnapshots.Color := lvSnapshots.Color;
end;

procedure TfrmDesktopClassic.dxBarColorCmbShortcutsCloseUp(Sender: TObject);
begin
//  cdlgColour.Color := lvDesktop.Color;
//  if cdlgColour.Execute then
  lvDesktop.Color := dxBarColorCmbShortcuts.Color;
  SettingSave('Desktop', 'Colour', lvDesktop.Color);
end;

procedure TfrmDesktopClassic.dxBarColorCmbSnapshotsCloseUp(Sender: TObject);
begin
   lvSnapshots.Color := dxBarColorCmbSnapshots.Color;
   SettingSave('Snapshot', 'Colour', lvSnapshots.Color);
end;

procedure TfrmDesktopClassic.dxBarColorCmbShortcutsChange(Sender: TObject);
begin
   lvDesktop.Color := dxBarColorCmbShortcuts.Color;
   SettingSave('Desktop', 'Colour', lvDesktop.Color);
end;

procedure TfrmDesktopClassic.dxBarColorCmbSnapshotsChange(Sender: TObject);
begin
   lvSnapshots.Color := dxBarColorCmbSnapshots.Color;
   SettingSave('Snapshot', 'Colour', lvSnapshots.Color);end;

procedure TfrmDesktopClassic.dxBarSnapshotsPopup(Sender: TObject);
begin
   DisplaySnapshots;
end;

procedure TfrmDesktopClassic.cmbMatterFindPropertiesCloseUp(Sender: TObject);
begin
   if (cmbMatterFind.Text <> '') and
      (cmbMatterFind.Text <> 'Type a matter to find') then
   begin
      LoadMatter(Sender);
      cmbMatterFind.Text := 'Type a matter to find';
   end
   else
   if cmbMatterFind.Text = '' then
      cmbMatterFind.Text := 'Type a matter to find';
end;

procedure TfrmDesktopClassic.cmbMatterFindKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      if (cmbMatterFind.Text <> 'Type a matter to find') then
         LoadMatter(Sender);
      cmbMatterFind.Text := 'Type a matter to find';
   end;
end;

procedure TfrmDesktopClassic.dxBarButton28Click(Sender: TObject);
begin
   ShowWindows();
end;

procedure TfrmDesktopClassic.dxBarButton29Click(Sender: TObject);
begin
//   dlgAxiomWindowList.Execute;
end;

procedure TfrmDesktopClassic.bbDiaryFeeClick(Sender: TObject);
var
   LfrmTimeDiary: TfrmTimeDiary;
begin
   if not frmDesktopClassic.WindowReShow('frmFeeDiary') then
   begin
      LfrmTimeDiary := TfrmTimeDiary.Create(Self);
      LfrmTimeDiary.Show;
   end;
//   tbtnDiary.OnClick := tbtnDiaryClick;
end;

procedure TfrmDesktopClassic.cmbMatterFindPropertiesInitPopup(Sender: TObject);
begin
   qryMRUList.Refresh;
end;

procedure TfrmDesktopClassic.dxBarButton30Click(Sender: TObject);
var
  LfrmEmployees: TfrmEmployees;
begin

  if not frmDesktopClassic.WindowReShow('frmEmployees') then
  begin
     LfrmEmployees := TfrmEmployees.Create(Self);
     dxBarWindowList.Items.AddObject(LfrmEmployees.Caption, LfrmEmployees);
     LfrmEmployees.Show;
  end;
end;

procedure TfrmDesktopClassic.bsWindowPopup(Sender: TObject);
var
   iCtr : integer;
   TotalItems: integer;
begin
{   TotalItems := BarMRUWindowList.Items.Count;
   for iCtr := TotalItems - 1 downto 1 do
      BarMRUWindowList.Items.Delete(iCtr);

   if Screen.FormCount > 0 then
       bsWindow.Links[0].BeginGroup := True;

   for iCtr := 0 to Screen.FormCount - 1 do
   begin
      if Screen.Forms[iCtr].Visible then
      begin
         BarMRUWindowList.ItemIndex := BarMRUWindowList.Items.Add(Screen.Forms[iCtr].Caption);
         BarMRUWindowList.OnClick := ShowWindowSelected;
      end;
   end;
   BarMRUWindowList.ItemIndex := 0; }
end;

procedure TfrmDesktopClassic.dxBarWindowListGetData(Sender: TObject);
begin
   with dxBarWindowList do
      ItemIndex := Items.IndexOfObject(Screen.ActiveForm);
end;

procedure TfrmDesktopClassic.dxBarWindowListClick(Sender: TObject);
begin
   with dxBarWindowList do
      TCustomForm(Items.Objects[ItemIndex]).Show;
end;

procedure TfrmDesktopClassic.bbPasswordClick(Sender: TObject);
begin
   with TfrmPassword.Create(frmDesktopClassic) do
   begin
      LoadEmp(dmAxiom.UserID);
   end;
end;

procedure TfrmDesktopClassic.dxBarButton11Click(Sender: TObject);
begin
   ShowWindows;
   Application.HelpCommand(HELP_FINDER, 0);
end;

procedure TfrmDesktopClassic.dxBarButton12Click(Sender: TObject);
begin
   ShowWindows;
   Application.HelpCommand(HELP_INDEX, 0);
end;

procedure TfrmDesktopClassic.cmbMatterFindPropertiesPopup(Sender: TObject);
begin
//   if cmbMatterFind.Text = '' then
 //     cmbMatterFind.Text := '';
end;

procedure TfrmDesktopClassic.cmbMatterFindMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if cmbMatterFind.Text = 'Type a matter to find' then
      cmbMatterFind.Text := '';
end;

procedure TfrmDesktopClassic.cmbMatterFindExit(Sender: TObject);
begin
   if cmbMatterFind.Text = '' then
      cmbMatterFind.Text := 'Type a matter to find';
end;

end.

