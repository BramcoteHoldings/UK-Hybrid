unit Desktop;
      //RDW
interface

uses
  System.Classes, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar, dxBarExtItems,
  dxBarExtDBItems, Data.DB, DBAccess, Uni, Vcl.ExtCtrls, MemDS, Vcl.Dialogs,
  Vcl.Menus, Vcl.ImgList, cxSplitter, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxTreeView, dxNavBarCollns,
  dxNavBarBase, dxNavBar, dxDockPanel, cxTextEdit, Vcl.Styles.Ext,
  cxMaskEdit, cxButtonEdit, dxStatusBar, Vcl.MPlayer, Vcl.Forms,
  System.INIFiles, System.SysUtils, Windows, Registry, Messages, Vcl.graphics,
  Vcl.Buttons, vcl.themes, AppEvnts, System.Actions, XML.Win.msxmldom,
  dxRibbonGallery, dxRibbonSkins, dxRibbon, dxBarApplicationMenu, Variants,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxSchedulerStorage,
  cxSchedulerDBStorage, cxSchedulercxGridConnection, cxSchedulerDialogs,
  cxImageComboBox, cxMemo, cxCalendar, cxCheckBox, cxColorComboBox,
  cxProgressBar, cxBarEditItem, cxLabel, cxRadioGroup, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxRibbonCustomizationForm, dxSkinsCore, WorkflowMergeDocument, System.Win.ComObj,
  dxDPIAwareUtils, cxPropertiesStore, ConflictSearch,
  cxScheduler, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerAgendaView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor, cxSchedulerTreeListBrowser,
  System.ImageList, dxDateRanges, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxPC, Vcl.ComCtrls, dxDockControl,
  cxEditRepositoryItems, cxClasses, Vcl.Controls
  {, Cromis.DirectoryWatch};

{$DEFINE AXIOM}

const
  IDXMATTER = 69; // 13;  //0;
  IDXCLIENT = 70;  //1;
  IDXPHONEBOOK = 71; //14  //2;
  IDXREPORT = 15;
  IDXARCHIVE = 1;  //9;

  imgARCHIVE = 1;
  imgMATTER = 69;  //13;
  imgCLIENT = 70;
  imgPHONEBOOK = 71;
  imgROCKET = 72;

  NETWORK_EXCEPTION = 'C0000006';

  sFeeTmpSQL = 'SELECT   ft.uniqueid, ft.created AS created, ft.fileid, ft.author, '+
               '      ft.reason, ft.units, ft.rate, ft.amount, ft.taxcode, ft.tax,'+
               '      ft.taxrate, ft.elapsed, ft.empcode, '+
               '      ft.matlocate, ft.nmatter, ft.time_type, ft.fee_template, ft.start_date,'+
               '      ft.end_date, ft.items, ft.billtype, FT.processed, ft.nfee, ft.notes, '+
               '      ft.event_type, ft.options, ft.is_task,'+
               '      ft.p_uniqueid, ft.LABELCOLOUR, ft.state, ft.resourceid, ft.caption, ft.task_completed,'+
               '      ft.version, ft.program_name, ft.emp_type, ft.type, ft.prec_id, ft.NPROJECTTEMPL, ft.parent_id,'+
               '      ft.COLOUR, ft.SEQ_ORDER, ft.DAYS, ft.nscalecost, ft.nscalecost, ft.budget_low, ft.budget_high, ft.time_estimate,'+
               '      ft.max_time_estimate, ft.id, ft.task_completed_pct  '+
               ' FROM feetmp ft '+
               'WHERE ft.author = :author  '+
               '  AND FT.IS_TASK = ''Y'' '+
               '  AND FT.TASK_COMPLETED IS NULL '+
               '  ORDER BY 2 ';

  sProjectTaskSQL =  'SELECT   ts.uniqueid, ts.created AS created, ts.fileid, ts.author, '+
                     '         ts.reason, ts.units, ts.rate, ts.amount, ts.taxcode, ts.tax,'+
                     '         ts.taxrate, ts.elapsed, ts.empcode, ts.matlocate, '+
                     '         ts.nmatter, ts.time_type, ts.fee_template, ts.start_date, '+
                     '         ts.end_date, ts.items, ts.billtype, ts.processed, ts.nfee, ts.notes, '+
                     '         ts.event_type, ts.options, ts.is_task, '+
                     '         ts.p_uniqueid, ts.LABELCOLOUR, ts.state, ts.resourceid, ts.caption, ts.task_completed, '+
                     '         ts.version, ts.program_name, ts.emp_type, ts.type, ts.prec_id, ts.NPROJECTTEMPL, ts.parent_id, '+
                     '         ts.COLOUR, ts.SEQ_ORDER, ts.DAYS, ts.nscalecost, ts.budget_low, ts.budget_high, ts.time_estimate, ts.max_time_estimate, ts.id, '+
                     '         ts.task_completed_pct '+
                     '    FROM tasktmp ts '+
                     '   WHERE ts.author = :author '+
                     '     AND (ts.TASK_COMPLETED_pct IS NULL or (ts.TASK_COMPLETED_pct >= 0) and (ts.task_completed_pct < 100)) '+
                     '  ORDER BY 2 ';

type
  TdxBarControlAccess = class(TdxBarControl);
  TcxSchedulerControlEventAccess = class(TcxSchedulerControlEvent);
  TfrmDesktop = class(TForm)
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
    medSoundEffects: TMediaPlayer;
    popLaunchPassword: TMenuItem;
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
    subItemMatter: TdxBarSubItem;
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
    barBtnSupport: TdxBarButton;
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
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    bbFindMatter: TdxBarButton;
    dxBarButton28: TdxBarButton;
    bbDiaryFee: TdxBarButton;
    bbtnEmployee: TdxBarButton;
    dxBarWindowList: TdxBarListItem;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarSubItem4: TdxBarSubItem;
    StatusBar: TdxStatusBar;
    dxStatusBar1Container1: TdxStatusBarContainerControl;
    dxBarInPlaceSubItem1: TdxBarInPlaceSubItem;
    pmLaunch: TdxBarPopupMenu;
    btnAddToFavourites: TdxBarButton;
    dxMnuStartup: TdxBarSubItem;
    popDesktopAddTostartup: TMenuItem;
    N2: TMenuItem;
    popRemoveFromStartup: TMenuItem;
    qryStartupScreens: TUniQuery;
    btnAddToStartup: TdxBarButton;
    btnRemoveFromStartup: TdxBarButton;
    qryClientMRU: TUniQuery;
    dsClientMRU: TUniDataSource;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ImageItem1: TcxEditRepositoryImageItem;
    qryPhonebookMRU: TUniQuery;
    dsPhonebookMRU: TUniDataSource;
    pagMainControl: TcxPageControl;
    tsAxiomNew: TcxTabSheet;
    tsClassicAxiom: TcxTabSheet;
    Panel1: TPanel;
    lvClassicDesktop: TListView;
    lvClassicSnapshots: TListView;
    cxSplitter1: TcxSplitter;
    dxBarDockControl2: TdxBarDockControl;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    popDesktopClassic: TPopupMenu;
    MenuItem1: TMenuItem;
    popDesktopClassicDelete: TMenuItem;
    popDesktopClassicClear: TMenuItem;
    MenuItem4: TMenuItem;
    popDesktopClassicColour: TMenuItem;
    MenuItem8: TMenuItem;
    popDesktopClassicLarge: TMenuItem;
    popDesktopClassicSmall: TMenuItem;
    popDesktopClassicList: TMenuItem;
    popDesktopClassicDetails: TMenuItem;
    popSnapShotsClassic: TPopupMenu;
    popSnapShotsClassicOpen: TMenuItem;
    popSnapShotsClassicAddHint: TMenuItem;
    popSnapShotsClassicAutoCost: TMenuItem;
    popSnapShotsClassicDelete: TMenuItem;
    popSnapShotsClassicClearAll: TMenuItem;
    MenuItem11: TMenuItem;
    popSnapShotsClassicColour: TMenuItem;
    MenuItem13: TMenuItem;
    popSnapShotsClassicLarge: TMenuItem;
    popSnapShotsClassicSmall: TMenuItem;
    popSnapShotsClassicList: TMenuItem;
    popSnapShotsClassicDetail: TMenuItem;
    dxBarLargeButton6: TdxBarLargeButton;
    dxDockingManager1: TdxDockingManager;
    dxDockSite1: TdxDockSite;
    dpNavBar: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    nbMain: TdxNavBar;
    ngMyFavourites: TdxNavBarGroup;
    ngLaunch: TdxNavBarGroup;
    ngSearch: TdxNavBarGroup;
    ngSnapshots: TdxNavBarGroup;
    ngMyFavouritesControl: TdxNavBarGroupControl;
    lvDesktop: TListView;
    ngLaunchControl: TdxNavBarGroupControl;
    tvLaunch: TcxTreeView;
    ngSearchControl: TdxNavBarGroupControl;
    cmbMatterFind: TcxLookupComboBox;
    cmbClientFind: TcxLookupComboBox;
    cmbPhonebookFind: TcxLookupComboBox;
    ngSnapshotsControl: TdxNavBarGroupControl;
    lvSnapshots: TListView;
    dxDockPanel1: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    pnlNewDesktop: TPanel;
    beEntity: TcxButtonEdit;
    qryLaunchDiary: TUniQuery;
    bbtnQuickCodes: TdxBarButton;
    dxBarButton3: TdxBarButton;
    tmrUserCount: TTimer;
    qryTmp: TUniQuery;
    dxBarButton4: TdxBarButton;
    beMatterSearch: TdxBarEdit;
    edClient: TdxBarEdit;
    dxBarMRUListItem2: TdxBarMRUListItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxBarLargeButton7: TdxBarLargeButton;
    StatusBarContainer5: TdxStatusBarContainerControl;
    pnlTimeTrack: TPanel;
    lblTimer: TLabel;
    btnAutoTimer: TdxBarButton;
    bbContactCreate: TdxBarButton;
    bbClientNew: TdxBarButton;
    dxbbtnCreateMatter: TdxBarButton;
    edContact: TdxBarEdit;
    popHideTabs: TPopupMenu;
    mnuHideBHLSupport: TMenuItem;
    MenuItem3: TMenuItem;
    barClientsMatters: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    barQAT: TdxBar;
    dxBarButton2: TdxBarButton;
    barCCIMatterList: TdxBarControlContainerItem;
    barCCIClientList: TdxBarControlContainerItem;
    barView: TdxBar;
    barcmbStyles: TdxBarCombo;
    RibbonMainTab1: TdxRibbonTab;
    RibbonMain: TdxRibbon;
    dxBarButton5: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dockpnlTimePlanner: TdxDockPanel;
    barSearch: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    dxLayoutDockSite1: TdxLayoutDockSite;
    barbtnShowWindows: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarApplicationMenu: TdxBarApplicationMenu;
    barbtnFindDocuments: TdxBarButton;
    edDocument: TdxBarEdit;
    dxBarSubItemDocs: TdxBarSubItem;
    Panel2: TPanel;
    grdTaskListLevel1: TcxGridLevel;
    grdTaskList: TcxGrid;
    SchedulerGridConnection: TcxSchedulerGridConnection;
    DBTaskStorage: TcxSchedulerDBStorage;
    qryDiary: TUniQuery;
    dsDiary: TUniDataSource;
    tvTaskList: TcxGridTableView;
    imgPopupMenu: TImageList;
    tbtnNewTask: TBitBtn;
    barDocCenter: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    styTaskComplete: TcxStyle;
    styTaskNotComplete: TcxStyle;
    tvTaskListcxGridColumn1: TcxGridColumn;
    tvTaskListcxGridColumn2: TcxGridColumn;
    tvTaskListcxGridColumn3: TcxGridColumn;
    tvTaskListcxGridColumn4: TcxGridColumn;
    tvTaskListcxGridColumn5: TcxGridColumn;
    tvTaskListcxGridColumn6: TcxGridColumn;
    tvTaskListcxGridColumn7: TcxGridColumn;
    tvTaskListcxGridColumn8: TcxGridColumn;
    tvTaskListcxGridColumn9: TcxGridColumn;
    tvTaskListcxGridColumn10: TcxGridColumn;
    tvTaskListcxGridColumn11: TcxGridColumn;
    tvTaskListcxGridColumn12: TcxGridColumn;
    tvTaskListcxGridColumn13: TcxGridColumn;
    tvTaskListcxGridColumn14: TcxGridColumn;
    tvTaskListcxGridColumn15: TcxGridColumn;
    tvTaskListcxGridColumn16: TcxGridColumn;
    tvTaskListcxGridColumn17: TcxGridColumn;
    tvTaskListcxGridColumn18: TcxGridColumn;
    tvTaskListcxGridColumn19: TcxGridColumn;
    tvTaskListcxGridColumn20: TcxGridColumn;
    tvTaskListcxGridColumn21: TcxGridColumn;
    tvTaskListcxGridColumn22: TcxGridColumn;
    tvTaskListcxGridColumn23: TcxGridColumn;
    tvTaskListcxGridColumn24: TcxGridColumn;
    tvTaskListcxGridColumn25: TcxGridColumn;
    tvTaskListcxGridColumn26: TcxGridColumn;
    tvTaskListcxGridColumn27: TcxGridColumn;
    tvTaskListcxGridColumn28: TcxGridColumn;
    tvTaskListcxGridColumn29: TcxGridColumn;
    tvTaskListcxGridColumn30: TcxGridColumn;
    tvTaskListcxGridColumn31: TcxGridColumn;
    tvTaskListcxGridColumn32: TcxGridColumn;
    tvTaskListcxGridColumn33: TcxGridColumn;
    tvTaskListcxGridColumn34: TcxGridColumn;
    tvTaskListcxGridColumn35: TcxGridColumn;
    tvTaskListcxGridColumn36: TcxGridColumn;
    tvTaskListcxGridColumn37: TcxGridColumn;
    tvTaskListcxGridColumn38: TcxGridColumn;
    tvTaskListcxGridColumn39: TcxGridColumn;
    tvTaskListcxGridColumn40: TcxGridColumn;
    tvTaskListcxGridColumn41: TcxGridColumn;
    tvTaskListcxGridColumn42: TcxGridColumn;
    tvTaskListcxGridColumn43: TcxGridColumn;
    tvTaskListcxGridColumn44: TcxGridColumn;
    tvTaskListcxGridColumn45: TcxGridColumn;
    tvTaskListcxGridColumn46: TcxGridColumn;
    tvTaskListcxGridColumn47: TcxGridColumn;
    tvTaskListcxGridColumn48: TcxGridColumn;
    tvTaskListcxGridColumn49: TcxGridColumn;
    popCloseTabs: TPopupMenu;
    CloseAllOpentabs1: TMenuItem;
    chkIncludeClosed: TcxBarEditItem;
    dxBarLargeButton12: TdxBarLargeButton;
    pageForms: TcxPageControl;
    qryScalecostDocCount: TUniQuery;
    BitBtn1: TBitBtn;
    qryCompleteTask: TUniQuery;
    BarConflicts: TdxBar;
    edConflict: TdxBarEdit;
    dxBarConflicts: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarFindConflicts: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    TaskScheduler: TcxScheduler;
    cxStyle1: TcxStyle;
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
    procedure miCurrentReleaseNotesClick(Sender: TObject);
    procedure dxBarSubItemClientsPopup(Sender: TObject);
    procedure dxBarSubItemMattersPopup(Sender: TObject);
    procedure dxBarListClientsClick(Sender: TObject);
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
    procedure cmbMatterFind1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton28Click(Sender: TObject);
    procedure bbDiaryFeeClick(Sender: TObject);
    procedure cmbMatterFindPropertiesInitPopup(Sender: TObject);
    procedure bbtnEmployeeClick(Sender: TObject);
    procedure ShowWindowSelected(Sender: TObject);
    procedure dxBarWindowListGetData(Sender: TObject);
    procedure dxBarWindowListClick(Sender: TObject);
    procedure bbPasswordClick(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure cmbMatterFindPropertiesPopup(Sender: TObject);
    procedure cmbMatterFind1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbMatterFind1Exit(Sender: TObject);
    procedure tvLaunchClick(Sender: TObject);
    procedure btnAddToFavouritesClick(Sender: TObject);
    procedure lvDesktopStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure popDesktopAddTostartupClick(Sender: TObject);
    procedure popRemoveFromStartupClick(Sender: TObject);
    procedure dxMnuStartupPopup(Sender: TObject);
    procedure pmLaunchPopup(Sender: TObject);
    procedure btnAddToStartupClick(Sender: TObject);
    procedure btnRemoveFromStartupClick(Sender: TObject);
    procedure cmbClientFindPropertiesCloseUp(Sender: TObject);
    procedure cmbPhonebookFindPropertiesCloseUp(Sender: TObject);
    procedure cmbPhonebookFindPropertiesInitPopup(Sender: TObject);
    procedure cmbClientFindPropertiesInitPopup(Sender: TObject);
    procedure cmbMatterFindClick(Sender: TObject);
    procedure cmbClientFindMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbPhonebookFindMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lvDesktopDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lvDesktopDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure popDesktopClassicColourClick(Sender: TObject);
    procedure popDesktopClassicDeleteClick(Sender: TObject);
    procedure popDesktopClassicClearClick(Sender: TObject);
    procedure popDesktopClassicDetailsClick(Sender: TObject);
    procedure popDesktopClassicListClick(Sender: TObject);
    procedure popDesktopClassicLargeClick(Sender: TObject);
    procedure popDesktopClassicSmallClick(Sender: TObject);
    procedure popSnapShotsClassicDetailClick(Sender: TObject);
    procedure popSnapShotsClassicListClick(Sender: TObject);
    procedure popSnapShotsClassicSmallClick(Sender: TObject);
    procedure popSnapShotsClassicLargeClick(Sender: TObject);
    procedure popSnapShotsClassicColourClick(Sender: TObject);
    procedure popSnapShotsClassicClearAllClick(Sender: TObject);
    procedure popSnapShotsClassicDeleteClick(Sender: TObject);
    procedure popSnapShotsClassicAddHintClick(Sender: TObject);
    procedure popSnapShotsClassicOpenClick(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure lvClassicDesktopClick(Sender: TObject);
    procedure lvClassicSnapshotsClick(Sender: TObject);
    procedure dpNavBarAutoHideChanged(Sender: TdxCustomDockControl);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarLookupEntityDropDown(Sender: TObject);
    procedure bbtnQuickCodesClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cmbPhonebookFindExit(Sender: TObject);
    procedure cmbMatterFindExit(Sender: TObject);
    procedure cmbMatterFindMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbClientFindExit(Sender: TObject);
    procedure tmrUserCountTimer(Sender: TObject);
    procedure dxBarSubItem10Popup(Sender: TObject);
    procedure beMatterSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbClientFindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClientKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarMRUListItem2Click(Sender: TObject);
    procedure cmbMatterFindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure popDesktopOpenClick(Sender: TObject);
    procedure tbtnNewTaskClick(Sender: TObject);
    procedure cmbPhonebookFindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAutoTimerClick(Sender: TObject);
    procedure bbContactCreateClick(Sender: TObject);
    procedure bbClientNewClick(Sender: TObject);
    procedure dxbbtnCreateMatterClick(Sender: TObject);
    procedure edContactKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fdTabChange(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure ApplicationEvents1Restore(Sender: TObject);
    procedure cmbMatterFind1Click(Sender: TObject);
    procedure barcmbStylesChange(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cmbClientFind1Click(Sender: TObject);
    procedure cmbClientFind1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure barbtnShowWindowsClick(Sender: TObject);
    procedure edDocumentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure barbtnFindDocumentsClick(Sender: TObject);
    procedure dxBarApplicationMenuPopup(Sender: TObject);
    procedure SchedulerGridConnectionNewEvent(
      Sender: TcxSchedulerGridConnection; var AEvent: TcxSchedulerControlEvent;
      var AHandled: Boolean);
    procedure SchedulerGridConnectionEditEvent(
      Sender: TcxSchedulerGridConnection; AEvent: TcxSchedulerControlEvent;
      var AModified, AHandled: Boolean);
    procedure cxSchedulerGridConnection1GridPopupMenuPopup(
      Sender: TcxSchedulerGridBuildInPopupMenu; ABuiltInMenu: TPopupMenu;
      var AHandled: Boolean);
    procedure dxBarManagerShowCustomizingPopup(Sender: TdxBarManager;
      PopupItemLinks: TdxBarItemLinks);
    procedure RibbonMainMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RibbonMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure tvTaskListStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure CloseAllOpentabs1Click(Sender: TObject);
    procedure chkIncludeClosedPropertiesChange(Sender: TObject);
    procedure dxBarSubItemDocsPopup(Sender: TObject);
    procedure InfoTrackDirWatchChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure fdTabDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pageFormsDrawTabEx(AControl: TcxCustomTabControl;
      ATab: TcxTab; Font: TFont);
    procedure pageFormsStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure pageFormsUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure RibbonMainMinimizedChanged(Sender: TdxCustomRibbon);
    procedure dxBarConflictsClick(Sender: TObject);
    procedure edConflictKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarConflictsPopup(Sender: TObject);
    procedure SchedulerGridConnectionInitEditDialog(
      Sender: TcxSchedulerGridConnection;
      var AEditInfo: TcxSchedulerEventEditInfo);
    procedure TaskSchedulerBeforeEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
    procedure Panel2Enter(Sender: TObject);
    procedure pageFormsTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click(
      Sender: TObject);
    procedure pageFormsChange(Sender: TObject);
    procedure pageFormsPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
  private
    { Private declarations }
    FDragging: Boolean;
    CurrentRibbonItem: TdxBarItem;

    TabImage: TImage;
    FWorkFlowMergeDocument: TfmWorkFlowMergeDocument;
    FTabIndex: integer;

    function LoadName(ACode : string) : boolean;

    procedure LoadUserSettings;
    procedure SaveUserSettings;
    procedure popLaunchOpenWindow(Sender: TObject);
    procedure StartSQLTrace(Tolerance: integer);
    procedure DoReleaseNotes;
    procedure SetReopenList(List: string; mnuReopen: TdxBarSubItem; Category: integer);
    procedure DisplaySnapshots;

    procedure MattersFind;
    procedure LoadClient;  overload;
    procedure LoadClient(Sender: TObject; clientid: string); overload;
    procedure LoadPhonebook; overload;
    procedure LaunchSnapshots(Sender: TObject);
    procedure RefreshSnapshots;
    procedure LoadClientFromSearch(Sender: TObject; ASearch: string);
    procedure LoadContactFromSearch(Sender: TObject; ASearch: string);
    procedure LoadDocSearchFromSearch(Sender: TObject; ASearch: string);

    procedure CreateRibbons;
    procedure AddFavourites(ANewToolbar: TdxBar);
    procedure ReassignTask(Sender: TObject);
    procedure ReassignTasktoMatter(Sender: TObject);
    procedure LinkTask(Sender: TObject);
    procedure CompleteTask(Sender: TObject);
    procedure AttachTaskDocument(Sender: TObject);
    procedure MergeTaskDocument(Sender: TObject);
    procedure GetUserCount;
    procedure MergeFormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnUpdateWindowEvent(Sender: TObject);
    procedure LoadConflictFromSearch(Sender: TObject; ASearchText: string);
  public
    { Public declarations }

    property TabIndex: integer read FTabIndex write FTabIndex default -1;
    procedure AddSnapshot(iPic : integer; sUnique : string);
    procedure AddShortcut(iPic : integer; sUnique : string);
    function WindowReShow(sWindowName : string) : boolean;
    procedure ShowWindows;
    procedure DisplayIcons;
    procedure DisplayDesktopIcons;
    procedure LoadToolbars;
    procedure DisplayMenuIcons;
    procedure LoadMatter(Sender: TObject); overload;
    procedure LoadMatter(AFileID: string); overload;
    procedure LoadClient(Sender: TObject); overload;
    procedure LoadConflict(Sender: TObject);
    procedure LoadPhoneBook(Sender: TObject); overload;
    procedure Launch(iProgramID: integer);
    function IsInStartUpStatus(progID: integer): boolean;
    procedure UpdateStartupStatus(progID: integer; startup: string);
    function FindOrCreate(aformclass: TFormclass; Icon: integer; ADisplay: boolean = True ): TCustomForm;
    procedure LoadDocument(Sender: TObject); overload;
    function AddFormToTab(aformclass: TForm; Icon: integer): TCustomForm;
  end;

var
  frmDesktop: TfrmDesktop;

implementation

uses
  {AutoCost, AutoInv,} Archival, ArchiveBatch,{ ArchiveBoxMgmt, Archives,
  Archivesearch,} Bank, BankDeposit, BankRec, BASGroups, BillCredit, About,
  BillCreditTypes, BillTemplates, Bills, CashPay, CashRcp, CheqReqNew, CheqReqs,
  Cheque, ChequePresent, Clients, ClientGroups, EntityChange, FeeBasis,
  CodeRules, Creditors,  DataForm, Diary, DiaryNotify, BatchReport,
  DiaryNew, DiaryLoc, DiaryJur, DiaryEvt, DocSearch, Employees,
  Entitys, FeeNew, FeeCodes, {FeeType,} FieldTypes, Genders,
  JournalBill, JournalMatter, Journals, Ledgers,
  Matters, MatterType, MatterReportBuilder, AxiomData,  TableCache, MatterStatus,
  MonitorImport, OptionsUser, {Overview,} Password, PettyCash, PettyJournal,
  Phonebook, PhonebookGroups, Printer,
  PhoneBookNew, Postcode, PostcodeSearch, PrecCategories, Quickcodes, Receipt,
  RelateDict, Reports, ScaleCosts, Sounds, SoftlogImport, SundryNew,
  SundryBatch, SundryError, SundryList, SundryType, SystemFile,
  {TaskExplorer, TaskTempNew,} Projects, TaxTypes,
  Timesht, TrustJournal, WriteOffs, BankDepositQuery, WriteOffDisb,
  {WorkflowType,} Jurisdiction, Signature,
  WorkFlowDocTemplates, WorkFlowTaskTemplates, WorkFlowAdminDocs,
  WorkFlowToDo, Budgets, NSearch, citfunc,
  DebtorStatusList, MarketEventEventTypes, documenttypelist, marketevent,
  marketeventparticipants, marketeventlist, SolicitorCode, CourtAddress,
  IndustryNew, InterestNew, FeeEnquiry, Toolkit, unlock,
  MarketReferralOther, TimeDiary, MSearch, ReleaseNotes, browser,
  EmpType, {DiaryEvents,} BatchChequePrint,DebtorTaskTemplate,DebtorTaskDue,
  AccountPayable,DepositAccount,InvestmentTransactions, Teams, DebtorNotesEntry, Dashboard,
  CrystalReportDef,CriticalAlert, Dashboard_Team, Dashboard_Ind, feeauthority, FinYearStartReg,
  outlookdiarynew, DocumentList, ArchiveType, dtSearchDocSearch, PrecClassifications, EmployeeList,
  UserLogins, BudgetImport, GLReportGrp, splashScreen, MatterNoteTypes ,Bulkbills,
  AutoGenList, invoicelist, PhonebookImport, GenericSearch, SettingsMaint, Home,
  BHLSupport, AxiomLogin, MiscFunc, fmxutils, marketrelationshiptypes, MarketRelationshipStatus,
  MarketRelationshipAction, ResearchSites, AdMaint, AdvRegion, AdvSupplier,
  AdvMedia, AdvSubMedia, CountryList, CreditorSearch, MatterNew, Vcl.Styles,
  Vcl.Styles.FormStyleHooks, BankTransfer, CSearch,
  documentcenter, emailtemplates, WriteOffWIP, BankRecEdit, prac_num, debtortaskcodes,
  EntityGroups, ExpenseTemplates, NewTaskNew, ReceiptReqNew, PrecedentSearchList,
  Phonebook_Status, EmployeeFindDialog, ReceiptReqs, ReceiptReqNarrative,
  FolderTemplate, JCLStrings, System.UITypes, System.Types, ConflictSelect,
  WinAPI.ShellAPI, SearchIndexConfig;


{$R *.DFM}
{$R AXIOMAVI.RES}

var
  iDiaryNotify :  integer;   // Notification time in seconds
  LfrmdtSearch:   TfrmdtSearch;
  LfrmDocSearch:  TfrmDocSearch;
  iMtrSearchLimit: integer;



procedure TfrmDesktop.FormShow(Sender: TObject);
var
   LFrmLogin: TfrmLogin;
   SplashScreen: TfrmSplashScreen;
   bLoginSuccess: boolean;
   OutlookApp: oleVariant;
begin
   // This is not nice, but seems to be necessary.
   // The conflict search text control seems to keep shrinking at design time,
   // so I'm going to slave it's width to the Document Search Text field.
   edConflict.Width := edDocument.Width;

  SplashScreen := nil;
   // Log in screen
   bLoginSuccess := False;
   LFrmLogin := TfrmLogin.Create(Self);
   try
      Application.Title := Format('%s %s',
                           [CN_PROGRAM_NAME, dmAxiom.GetVersionInfo]);
      begin
         if (LFrmLogin.ShowModal = mrOk) then
         begin
            bLoginSuccess := True;
         end;

         if bLoginSuccess and LoadName(LFrmLogin.qryEmps.FieldByName('CODE').AsString) then
         begin
            bLoginSuccess := True;
         end;
      end;

      if bLoginSuccess then
      begin
         if (dmAxiom.uniInsight.Connected) then
         begin
            SplashScreen := TfrmSplashScreen.Create(Application);
            SplashScreen.Show;
            Application.ProcessMessages;

            qryDiary.SQL.Clear;
            if SystemString('USE_PROJECT_BUDGETING') = 'N' then
            begin
               qryDiary.SQL.Text := sFeeTmpSQL;
            end
            else
            begin
               qryDiary.SQL.Text := sProjectTaskSQL;
            end;

            RibbonMain.ShowTabGroups := SettingLoadBooleanTrueWhenEmpty(dmAxiom.UserID, 'Desktop','RibbonBar');

            //************************************************

            try
            // see if the dictionary is installed
              if  not DirectoryExists(ExtractFilePath(Application.EXEName) + 'Dictionaries') then
                 CreateDir(ExtractFilePath(Application.EXEName) + 'Dictionaries');
              dmAxiom.DictionaryInstalled := (FileExists(ExtractFilePath(Application.EXEName) + 'Dictionaries\en_au_v2.2.0.adm')) or
                                             (FileExists(ExtractFilePath(Application.EXEName) + 'Spelling\en_US.dic'));
            except
              // silent
            end;

            application.helpfile := SystemString('HELP_FILE_PATH');

            with qryEntitys do
            begin
              while not eof do
              begin
                 beEntity.Properties.LookupItems.Add(FieldByName('NAME').AsString);
                 next;
              end;
            end;

            beEntity.Text := TableString('ENTITY','CODE',dmAxiom.Entity,'NAME');
            beEntity.Enabled := dmAxiom.Security.Employee.ChangeEntity;
            dxBarLookupEntity.KeyValue := dmAxiom.Entity;
            if TableInteger('ENTITY','CODE', qryEntitys.FieldByName('CODE').AsString,'COLOUR') > 0 then
            begin
               beEntity.Style.Color := TableInteger('ENTITY','CODE',dmAxiom.Entity,'COLOUR');
               beEntity.StyleDisabled.Color := TableInteger('ENTITY','CODE',dmAxiom.Entity,'COLOUR');
            end;

            if (dmAxiom.UserAutoTimer = 'Y') then
               btnAutoTimer.Visible := ivAlways
            else
               btnAutoTimer.Visible := ivNever;

            CreateRibbons;
//           AddFavourites;
            LoadUserSettings();

           // only create browser window and load forms if in new look
            if (pagMainControl.ActivePageIndex = 0) then
            begin
               dpNavBar.AutoHide := (dmAxiom.ShowMenuBar = 'N');


               nbMain.View := dmAxiom.ViewType;

               if nbMain.View = 12 then
                  nbMain.NavigationPaneMaxVisibleGroups := SettingLoadInteger(dmAxiom.UserID,'Desktop','VisibleGroups');

//              fdTab.AddFormClass(TfrmBrowser,True);

               pageForms.OnChange := nil;


               if (dmAxiom.Security.System.BHLSupportTab = True) then
               begin
                  frmBHLSupport := TfrmBHLSupport.Create(Application);
                  frmDesktop.AddFormToTab(frmBHLSupport, 1);
//                 FindorCreate(TfrmBHLSupport,159).Show;
               end;
               if (dmAxiom.Security.System.BrowserTab = true) then
               begin
                  frmBrowser := TfrmBrowser.Create(Application);
                  frmDesktop.AddFormToTab(frmBrowser, 1);
//                  FindorCreate(TfrmBrowser, 158).Show;
               end;

//              fdTab.ActiveFormIndex := 0;
               pageForms.OnChange := fdTabChange;

               with qryStartupScreens do
               begin
                  Close;
                  ParamByName('emp').AsString := dmAxiom.UserID;
                  Open;
                  While not eof do
                  begin
                     Launch(FieldByName('imageindex').AsInteger);
                     next;
                  end;
               end;


              //cmbEntity.IsFocused
               if pagMainControl.ActivePageIndex = 0 then
               begin
                  qryMRUList.Close;
                  qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
                  qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
                  qryMRUList.Open;
                  cmbMatterFind.Text := 'Type a matter to find';

                  qryClientMRU.Close;
                  qryClientMRU.ParamByName('P_Author').AsString := dmAxiom.UserID;
                  qryClientMRU.Open;
                  cmbClientFind.Text := 'Type a client to find';

                  qryPhonebookMRU.Close;
                  qryPhonebookMRU.ParamByName('P_Author').AsString := dmAxiom.UserID;
                  qryPhonebookMRU.Open;
                  cmbPhonebookFind.Text := 'Type a contact name to find';
               end;
            end;

           // register the year start date
           finYearStart := TFinYearStartReg.Create(SystemInteger('FinYear_start_month'));
           iMtrSearchLimit := SystemInteger('MTRSEARCHLIMIT');

           if Systemstring('EMAILS_LISTENER') = 'Y' then
           begin
              // test to see if Outlook installed
              try
                  OutlookApp := GetActiveOleObject('Outlook.Application');
              except
                     // silent
              end;

              if (VarIsNull(OutlookApp) = False) then
                 OutlookApp := CreateOleObject('Outlook.Application');


              if VarIsNull(OutlookApp) = False then
              begin
                 if SystemString('email_reg') = C_EMAILPASSWORD then
                 begin
                    if (dmAxiom.MapiSession.Active = False) then
                    begin
                      dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
                      dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault; //'Outlook';
                      dmAxiom.MapiSession.LogonInfo.Password           := '';
                      dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
                      dmAxiom.MapiSession.LogonInfo.NewSession         := False;
                      dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
                      dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := False;
                      dmAxiom.MapiSession.Active                       := True;
                    end;
                 end;
              end;
           end;

           // pre-load matter search screen.
           if not FormExists(frmMatterSearch) then
              Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

           Application.ProcessMessages;
           if dmAxiom.Security.Cheque.Create then
              ClearCheques;
         end;

         Application.Title := Format('%s %s',
                           [CN_PROGRAM_NAME, dmAxiom.GetVersionInfo]);

         if SystemString('DisplayDiary') = 'N' then
            dxBarButtonDiary.Visible := ivNever;

          // work flow alerts
         with TfrmCritialAlert.Create(self)do
         begin
            loadAlert(dmAxiom.userid);
            Application.ProcessMessages;
            if hasAlerts then
            begin
               Show;
               SetFocus;
            end;
         end;

         with qryDiary do
         begin
            Close;
            ParambyName('AUTHOR').AsString := dmAxiom.UserID;
            Open;
         end;

         with qryLaunchDiary do
         begin
           Close;
           ParamByName('emp').AsString := dmAxiom.UserID;
           Open;
           if EOF then
             dxBarButtonDiary.Visible := ivNever
           else
           begin
             dxBarButtonDiary.Visible := ivAlways;
             iDiaryNotify := TableInteger('EMPLOYEE', 'CODE', dmAxiom.UserID, 'REFRESH');
             if iDiaryNotify = 0 then
               iDiaryNotify := 60;
             tmrDiaryNotify.Interval := iDiaryNotify * 1000;
             try
               tmrDiaryNotify.Enabled := (SystemString('USE_DIARY_NOTIFY') = 'Y');  //  True;
             except
               tmrDiaryNotify.Enabled := False;
             end;
           end;
         end;

         with dmAxiom.qryTasks do
         begin
            Close;
            ParamByName('author').AsString := dmAxiom.UserID;
            Open;
         end;

         StatusBar.Visible := SettingLoadBooleanTrueWhenEmpty(dmAxiom.UserID, 'Desktop', 'StatusBar');
         chkIncludeClosed.EditValue := SettingLoadBoolean('DESKTOP','SHOWALLMATTERS');
         barDocCenter.Visible := (SystemString('SHOW_DOCUMENT_CENTER') = 'Y');
         BarConflicts.Visible := DirectoryExists(SystemString('CONFLICT_DOC_FOLDER'));
      end;
   finally
      dmAxiom.qryEmpsLogin.Close;
      LFrmLogin.qryVersion.Close;
      LfrmLogin.Free;

      if (bLoginSuccess = False) then
      begin
         Application.Terminate();
         Sleep(250);
      end
      else
      begin
         try
            GetUserCount;
            tmrUserCount.Enabled := True;
            if Assigned(SplashScreen) then
            begin
               SplashScreen.Close;
               SplashScreen.Free;
               SplashScreen := nil;
            end;
         except
            //
         end;
      end;
   end;
   // in some cases the SplashScreen does not get destroyed correctly
   if Assigned(SplashScreen) then
   begin
      SplashScreen.Close;
      SplashScreen.Free;
   end;

end;

procedure TfrmDesktop.DisplayIcons;
var
  tnParent, tnChild: TTreeNode;
  shortgroup_id: integer;
begin
   // Initialize Tables
   qryDesktop.Close;
   qryDesktop.SQL.Text := 'SELECT S.IMAGEINDEX,S.SHORTCUT_GROUP, E.NAME, SG.DESCRIPTION, SG.IMAGEINDEX AS SGIMAGEINDEX'+
                         ' FROM SHORTCUT S, EMPCUTS E ,SHORTCUT_GROUP SG WHERE '+
                         'E.EMP = :P_Emp AND E.IMAGEINDEX = S.IMAGEINDEX AND '+
                         'S.SHORTCUT_GROUP = SG.CODE (+)'+
                         'GROUP BY S.SHORTCUT_GROUP,S.IMAGEINDEX,E.NAME,SG.DESCRIPTION, SG.IMAGEINDEX, SG.DISPLAY_ORDER '+
                         'ORDER BY SG.DISPLAY_ORDER, S.SHORTCUT_GROUP,E.NAME ';
   qryDesktop.Params[0].AsString := dmAxiom.UserID;
   qryDesktop.Open;

   // Add all Shortcuts and Snapshots to the Desktop
   tnParent := tvLaunch.Items.Add(nil, qryDesktop.FieldByName('DESCRIPTION').AsString);
   tnParent.ImageIndex := qryDesktop.FieldByName('SGIMAGEINDEX').AsInteger;
   tnParent.SelectedIndex := qryDesktop.FieldByName('SGIMAGEINDEX').AsInteger;
   shortgroup_id := qryDesktop.FieldByName('SHORTCUT_GROUP').AsInteger;
   while not qryDesktop.EOF do
   begin
     if shortgroup_id <>  qryDesktop.FieldByName('SHORTCUT_GROUP').AsInteger then
     begin
        tnParent := tvLaunch.Items.Add(nil, qryDesktop.FieldByName('DESCRIPTION').AsString);
        shortgroup_id := qryDesktop.FieldByName('SHORTCUT_GROUP').AsInteger;
        tnParent.ImageIndex := qryDesktop.FieldByName('SGIMAGEINDEX').AsInteger;
        tnParent.SelectedIndex := qryDesktop.FieldByName('SGIMAGEINDEX').AsInteger;
     end;
     tnChild := tvLaunch.Items.AddChild(tnParent,qryDesktop.FieldByName('NAME').AsString);
     tnChild.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
     tnChild.SelectedIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
     qryDesktop.Next;
   end;
   lvSnapshots.Items.EndUpdate;
   qryDesktop.Close;
end;

procedure TfrmDesktop.DisplayDesktopIcons;
var
  newListItem: TListItem;
  TotalItems, iCtr: integer;
  ShortcutItem: TdxBarButton;
  SnapShotItem: TdxBarButton;
begin
   // Initialize Tables
   qryDesktop.Close;
//   qryDesktop.SQL.Text := 'SELECT * FROM DESKTOP WHERE EMP = :Emp ORDER BY PRIORITY';
   qryDesktop.SQL.Clear;
   qryDesktop.SQL.Text := 'SELECT D.*,'''' s_caption, D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 0 '+
                          ' union '+
                          ' SELECT D.*, '''' s_caption, '+
                          ' D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 1 and imageindex not in (35,70, 69, 71) '+
                          ' union '+
                          ' SELECT D.*, '+
                          'substr(caption, length(SUBSTR(caption, 1,INSTR(caption, '' '', 1, 1))), length(caption) - length(SUBSTR(caption, 1  ,INSTR(caption, '' '', 1, 1)))) s_caption,'+
                          ' D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 1 and imageindex in (35,70, 69, 71) '+
                          ' order by 6,3,7,5 ';
   qryDesktop.ParamByName('Emp').AsString := dmAxiom.UserID;
   qryDesktop.Open;

   if pagMainControl.ActivePageIndex = 0 then
   begin
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
         dxBarShortcuts.Visible := ivNever;
      end;
      if dxBarSnapshots.ItemLinks.Count = 0 then
      begin
         SnapShotItem := TdxBarButton.Create(Self);
         SnapShotItem.Caption := '(Empty)';
         SnapShotItem.ImageIndex := -1;
         SnapShotItem.Category := 7;
         dxBarSnapshots.ItemLinks.Add.Item := SnapShotItem;
         dxBarSnapshots.Visible := ivNever;
      end;
      dxBarManager.Images := ilstShortcuts;
      dxBarManager.HotImages := ilstShortcuts;
      dxBarManager.LargeImages := ilstShortcuts;
   end
   else
   begin
      lvClassicDesktop.Items.Clear;
      lvClassicDesktop.Items.BeginUpdate;
      lvClassicSnapshots.Items.Clear;
      lvClassicSnapshots.Items.BeginUpdate;
      // Add all Shortcuts and Snapshots to the Desktop
      while not qryDesktop.EOF do
      begin
    //   dxBarListLaunch.ItemIndex := 0;
         if qryDesktop.FieldByName('TYPE').AsInteger = 0 then
            newListItem := lvClassicDesktop.Items.Add
         else
            newListItem := lvClassicSnapshots.Items.Add;

        newListItem.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
        newListItem.Caption :=    qryDesktop.FieldByName('CAPTION').AsString;
        newListItem.SubItems.Add(qryDesktop.FieldByName('HINT').AsString);
        qryDesktop.Next;
      end;
      // Now Draw the TListView now that all items are loaded
      lvClassicDesktop.Items.EndUpdate;
      lvClassicSnapshots.Items.EndUpdate;
      qryDesktop.Close;
   end;
end;

procedure TfrmDesktop.DisplaySnapshots;
var
  TotalItems, iCtr: integer;
  SnapShotItem: TdxBarButton;
begin
  // Initialize Tables
   qryDesktop.Close;
//   qryDesktop.SQL.Text := 'SELECT * FROM DESKTOP WHERE EMP = :Emp ORDER BY PRIORITY';
   qryDesktop.SQL.Clear;
   qryDesktop.SQL.Text := 'SELECT D.*,'''' s_caption, D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 0 '+
                          ' union '+
                          ' SELECT D.*, '''' s_caption, '+
                          ' D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 1 and imageindex not in (35,70, 69, 71) '+
                          ' union '+
                          ' SELECT D.*, '+
                          'substr(caption, length(SUBSTR(caption, 1,INSTR(caption, '' '', 1, 1))), length(caption) - length(SUBSTR(caption, 1  ,INSTR(caption, '' '', 1, 1)))) s_caption,'+
                          ' D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 1 and imageindex in (35,70, 69, 71) '+
                          ' order by 6,3,7,5 ';
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
         SnapShotItem.OnClick := LaunchSnapshots;  // LaunchModule;
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



procedure TfrmDesktop.LoadToolbars;
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
  GetBitmap(ilstShortcuts, 'MYDETAILS');
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
  GetBitMap(ilstShortcuts, 'CLIENTGROUP');     // 117
  GetBitMap(ilstShortcuts, 'FINANCIALGROUP');  //118
  GetBitMap(ilstShortcuts, 'MAINTENANCEGROUP'); //119
  GetBitMap(ilstShortcuts, 'TIMEGROUP'); //120
  GetBitMap(ilstShortcuts, 'WORKFLOWGROUP'); //121
  GetBitMap(ilstShortcuts, 'DEBTORSGROUP'); //122
  GetBitMap(ilstShortcuts, 'PRINTERGROUP'); //123
  GetBitMap(ilstShortcuts, 'MARKETINGGROUP'); //124
  GetBitMap(ilstShortcuts, 'RECORDSGROUP'); //125
  GetBitMap(ilstShortcuts, 'PERSONALGROUP'); //126
  GetBitMap(ilstShortcuts, 'EMPTYPE'); //127
  GetBitMap(ilstShortcuts, 'AXRPTBUILDER');  //128
  GetBitMap(ilstShortcuts, 'CREDITORNEW'); //129
  GetBitMap(ilstShortcuts, 'BATCHCHEQUEPRINT'); //130
  GetBitMap(ilstShortcuts, 'DEBTORTEMPLATE'); //131
  GetBitMap(ilstShortcuts, 'DEBTORTASK'); //132
  GetBitMap(ilstShortcuts, 'ACCOUNTPAYABLE'); //133
  GetBitMap(ilstShortcuts, 'CONTROLLEDMONIES'); //134
  GetBitMap(ilstShortcuts, 'CONTROLLEDMONIES'); //135
  GetBitMap(ilstShortcuts, 'TEAMS'); //136
  GetBitMap(ilstShortcuts, 'IDXEXPRESSDEBTORNOTES'); //137
  GetBitMap(ilstShortcuts, 'DASHBOARD'); // 138
  GetBitMap(ilstShortcuts, 'DATAREPORT'); // 139
  GetBitMap(ilstShortcuts, 'DASHBOARD'); // 140;
  GetBitMap(ilstShortcuts, 'DASHBOARD'); //141
  GetBitMap(ilstShortcuts, 'FEEAUTHORITY'); //142
  GetBitMap(ilstShortcuts, 'FEEAUTHORITY'); //143
  GetBitMap(ilstShortcuts, 'FEEAUTHORITY'); //144
  GetBitMap(ilstShortcuts, 'ARCHIVE'); //145
  GetBitMap(ilstShortcuts, 'TOOLS'); //146
  GetBitMap(ilstShortcuts, 'TOOLS'); //147
  GetBitMap(ilstShortcuts, 'AXIOMSEARCH'); //148
  GetBitMap(ilstShortcuts, 'SEARCHGROUP'); //149
  GetBitMap(ilstShortcuts, 'FILESEARCH'); //150
  GetBitMap(ilstShortcuts, 'EMPLOYEES'); //151
  GetBitMap(ilstShortcuts, 'USERSESSIONS'); //152
  GetBitMap(ilstShortcuts, 'BUDGETIMP'); //153
  GetBitMap(ilstShortcuts, 'LEDGER'); //154
  GetBitMap(ilstShortcuts, 'MATTER');  //155
  GetBitMap(ilstShortcuts, 'MATTERNOTESTYPE'); //156
  GetBitMap(ilstShortcuts, 'AUTOINV'); //157
  GetBitMap(ilstShortcuts, 'MATTER'); //158
  GetBitMap(ilstShortcuts, 'AUTOGEN'); //159
  GetBitMap(ilstShortcuts, 'CREDITOR');  //160
  GetBitMap(ilstShortcuts, 'PHONEBOOK'); //161
  GetBitMap(ilstShortcuts, 'TOOLS');  //162
  GetBitMap(ilstShortcuts, 'DIARY'); //163
  GetBitMap(ilstShortcuts, 'EVENT'); //164
  GetBitMap(ilstShortcuts, 'EVENT'); //165
  GetBitMap(ilstShortcuts, 'EVENT'); //166
  GetBitMap(ilstShortcuts, 'EVENT'); //167
  GetBitMap(ilstShortcuts, 'AXIOMSEARCH'); //168
  GetBitMap(ilstShortcuts, 'AXIOMSEARCH'); //169
  GetBitMap(ilstShortcuts, 'AXIOMSEARCH'); //170
  GetBitMap(ilstShortcuts, 'AXIOMSEARCH'); //171
  GetBitMap(ilstShortcuts, 'AXIOMSEARCH'); //172
  GetBitMap(ilstShortcuts, 'AXIOMSEARCH'); //173
  GetBitmap(ilstShortcuts, 'CREDITOR'); //174
  GetBitMap(ilstShortcuts, 'DASHBOARDS'); //175
  GetBitmap(ilstShortcuts, 'PETTYCASH');  //176
  GetBitmap(ilstShortcuts, 'MATTER_NEW'); //177
  GetBitmap(ilstShortcuts, 'CLIENT_NEW'); //178
  GetBitMap(ilstShortcuts, 'TIMEGROUP');  //179
  GetBitMap(ilstShortcuts, 'FEELIST');  //180
  GetBitMap(ilstShortcuts, 'BANKREC');  //181
  GetBitMap(ilstShortcuts, 'TOOLS'); //182
  GetBitMap(ilstShortcuts, 'COINS'); //183
  GetBitMap(ilstShortcuts, 'RECORDSGROUP'); //184
  GetBitMap(ilstShortcuts, 'RECORDSGROUP'); //185
  GetBitMap(ilstShortcuts, 'RECEIPT'); //186
  GetBitMap(ilstShortcuts, 'CLIENTGROUP');  //187
  GetBitMap(ilstShortcuts, 'RECEIPT');  //188
  GetBitMap(ilstShortcuts, 'JOURNAL');  //189
  GetBitmap(ilstShortcuts, 'MATTER');  //190
  GetBitmap(iLstShortcuts, 'AXIOMSEARCH'); // 191
  GetBitmap(iLstShortcuts, 'COINS'); // 192
  GetBitmap(iLstShortcuts, 'BANKDEPOSIT'); // 193
  GetBitmap(iLstShortcuts, 'RECEIPT'); // 194
  GetBitmap(iLstShortcuts, 'RECEIPT'); // 195
  GetBitmap(iLstShortcuts, 'AUTHORISE'); // 196
  GetBitmap(iLstShortcuts, 'RECEIPT'); // 196
  // TODO: 197 LEDES Stuff
  GetBitmap(iLstShortcuts, 'RECEIPT'); // 198
  GetBitmap(iLstShortcuts, 'COINS');   // 199 - need to add correct image to repository
  GetBitmap(iLstShortcuts, 'COINS');   // 200 - Fee Earner / Level Rates

end;

procedure TfrmDesktop.MattersFind;
var
   LfrmMatters: TfrmMatters;
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if dmAxiom.WANEnabled then
   begin
      if frmMatterSearch.ShowModal = mrOk then
      begin
         LfrmMatters := TfrmMatters.Create(Application);
         LfrmMatters.DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
         AddFormToTab(LfrmMatters, 1);
         LfrmMatters.Tag := imgMATTER;
         try
            LfrmMatters.dxbtnRefresh.Click;
         except
         //
         end;
      end;
   end
   else
   begin

      LfrmMatters := TfrmMatters.Create(Application);
      if LfrmMatters.ChooseMatter  then
      begin
         AddFormToTab(LfrmMatters, IMGMATTER);
         LfrmMatters.Tag := IMGMATTER;
         try
            LfrmMatters.dxbtnRefresh.Click;
         except
         //
         end;
      end
      else
         LfrmMatters.Close;
   end;
end;

procedure TfrmDesktop.tbtnMattersClick(Sender: TObject);
begin
   if pagMainControl.ActivePage = tsClassicAxiom then
   begin
      ShowWindows;

      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if dmAxiom.WANEnabled then
      begin
         if frmMatterSearch.ShowModal = mrOk then
         begin
            if (dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '') then
            begin
               frmMatters := TfrmMatters.Create(Application);
//          LfrmMatters := TfrmMatters.Create(Self);
               frmMatters.Tag := imgMATTER;
               frmMatters.DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
               frmMatters.Visible := True;
            end;
         end;
      end
      else
      begin
         frmMatters := TfrmMatters.Create(Application);
 //     frmMatters := TfrmMatters.Create(Self);
         frmMatters.Tag := imgMATTER;
         frmMatters.ChooseMatter;
      end;
   end
   else
//      LoadMatter(Sender);
      MattersFind;
end;

procedure TfrmDesktop.tbtnClientClick(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
  ShowWindows;
  LfrmClients := TfrmClients.Create(Self);
  LfrmClients.Tag := imgCLIENT;
  LfrmClients.ChooseClient;
end;

procedure TfrmDesktop.tbtnPhoneBookClick(Sender: TObject);
var
  LfrmPhoneBook: TfrmPhoneBook;
begin
//  tbtnPhoneBook.OnClick := nil;

  ShowWindows;
  LfrmPhoneBook := TfrmPhoneBook.Create(Self);
  LfrmPhoneBook.Tag := imgPHONEBOOK;
  LfrmPhoneBook.ChoosePhonebook;

//  tbtnPhoneBook.OnClick := tbtnPhoneBookClick;

end;

procedure TfrmDesktop.tbtnHelpClick(Sender: TObject);
begin
//  tbtnHelp.OnClick := nil;

  ShowWindows;
  Application.HelpCommand(HELP_INDEX, 0);

//  tbtnHelp.OnClick := tbtnHelpClick;

end;

procedure TfrmDesktop.Action1Execute(Sender: TObject);
begin
   Close;
end;

procedure TfrmDesktop.AddShortcut(iPic : integer; sUnique : string);
var
  LNewListItem : TListItem;
  i: integer;
begin
   PlaySound('Snapshot');

   if frmDesktop.pagMainControl.ActivePageIndex = 0 then
   begin
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
   end
   else
   begin
      for i := 0 to lvClassicDesktop.Items.Count - 1 do
      begin
        if lvClassicDesktop.Items[i].ImageIndex = iPic then
          Exit;
      end;

      LNewListItem := lvClassicDesktop.Items.Add;
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
   if (dxBarShortcuts.Visible = ivNever) then
      dxBarShortcuts.Visible := ivAlways;
end;

procedure TfrmDesktop.AddSnapshot(iPic : integer; sUnique : string);
var
  LNewListItem : TListItem;
  i: integer;
begin
   PlaySound('Snapshot');

   if frmDesktop.pagMainControl.ActivePageIndex = 0 then
   begin
      for i := 0 to lvSnapshots.Items.Count - 1 do
      begin
        if (lvSnapshots.Items[i].Caption = sUnique) and (lvSnapshots.Items[i].ImageIndex = iPic) then
          Exit;
      end;

      LNewListItem := lvSnapshots.Items.Add;
      LNewListItem.ImageIndex := iPic;
      LNewListItem.Caption := sUnique;
      LNewListItem.SubItems.Add('');

      try
         dmAxiom.uniInsight.StartTransaction;
         qryDesktop.SQL.Text := 'INSERT INTO DESKTOP (EMP, IMAGEINDEX, CAPTION, HINT, PRIORITY, TYPE) VALUES (:EMP, :IMAGEINDEX, :CAPTION, :HINT, :PRIORITY, :TYPE)';
         qryDesktop.ParamByName('EMP').AsString         := dmAxiom.UserID;
         qryDesktop.ParamByName('IMAGEINDEX').AsInteger := LNewListItem.ImageIndex;
         qryDesktop.ParamByName('CAPTION').AsString     := LNewListItem.Caption;
         qryDesktop.ParamByName('HINT').AsString        := LNewListItem.Subitems.Strings[0];
         qryDesktop.ParamByName('PRIORITY').AsInteger   := LNewListItem.Index;
         qryDesktop.ParamByName('TYPE').AsInteger       := 1;
         qryDesktop.ExecSQL;
      finally
         dmAxiom.uniInsight.Commit;
         RefreshSnapshots;
      end;
   end
   else
      begin
      for i := 0 to lvClassicSnapshots.Items.Count - 1 do
      begin
        if (lvClassicSnapshots.Items[i].Caption = sUnique) and (lvClassicSnapshots.Items[i].ImageIndex = iPic) then
          Exit;
      end;

      LNewListItem := lvClassicSnapshots.Items.Add;
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
   end
end;

procedure TfrmDesktop.FormClose(Sender: TObject; var Action: TCloseAction);
var
  regAxiom : TRegistry;
begin

   // Get rid of the user from the registry so that they can't run reports
   // without being in Insight
   if (dmAxiom.USE_ACTIVE_DIRECTORY = 'N') then
   begin
      regAxiom := TRegistry.Create;
      try
         regAxiom.RootKey := HKEY_CURRENT_USER;
         if regAxiom.OpenKey(dmAxiom.RegistryRoot + '\Database', False) then
            regAxiom.DeleteValue('Password');
      finally
         regAxiom.Free;
      end;
   end;

   try
      if tmrUserCount.Enabled = True then
         tmrUserCount.Enabled := False;
      if tmrDiaryNotify.Enabled = True then
         tmrDiaryNotify.Enabled := False;
   finally
      dmAxiom.qryBanks.Close;
      tmrUserCount.Free;
      tmrDiaryNotify.Free;
      TabImage.Free;
   end;
end;

procedure TfrmDesktop.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if MsgAsk('Are you sure you want to close '+CN_PROGRAM_NAME +'.?') = mrNo then
      CanClose := False
   else
   begin
      dmAxiom.bShutDown := True;
      tmrDiaryNotify.Enabled := False;

      // Free up the conflict screen to prevent AVs.
      TfrmConflictSearch.FinishWithSearchScreen;

      dmAxiom.qryBankList.Close;

      if dmAxiom.PostTimeOnExit = 'Y' then
      begin
         dmAxiom.ConvertExecute;
      end
      else if dmAxiom.PostTimeOnExit = 'A' then
      begin
         if MsgAsk('Process outstanding Time Entries?') = mrYes then
         begin
            dmAxiom.ConvertExecute;
         end;
      end;

      if dmAxiom.uniInsight.Connected then
      begin
         SaveUserSettings;
      end;

      if dmAxiom.MapiSession.Active = True then
         dmAxiom.MapiSession.Logoff;

      qryClientMRU.Close;
      qryEntitys.Close;

      try
         if finYearStart <> nil then
            finYearStart.Destroy;
      finally
         if (dmAxiom.orsAxiom.Connected = True) then
            dmAxiom.orsAxiom.Disconnect;
         dmAxiom.uniInsight.Disconnect;
      end;
   end;
end;

procedure TfrmDesktop.FormCreate(Sender: TObject);
var
   i : integer;
begin
  //Related to Favorites
   CurrentRibbonItem := nil;

   for i := 0 to dxBarManager.Bars.Count - 1 do
   begin
      if TdxBarControlAccess(dxBarManager.Bars[i].Control) <> nil then
         TdxBarControlAccess(dxBarManager.Bars[i].Control).OnMouseUp := RibbonMain.OnMouseUp;
   end;

   TabImage := TImage.Create(Self);
   TabImage.Picture.LoadFromFile('.\images\close_16.png');
   cxEventEditorClass := TfrmNewTaskNew;
   dmAxiom.bShutDown := False;
end;

procedure TfrmDesktop.FormDestroy(Sender: TObject);
begin
  frmDeskTop.edConflict.Text := '';
end;

procedure TfrmDesktop.SaveUserSettings;
begin
   if pagMainControl.ActivePageIndex = 0 then
   begin
      SettingSave('Desktop', 'Entity', dmAxiom.Entity);
      SettingSave('Desktop', 'BarGroup1', nbMain.Groups.Items[0].Caption);
      SettingSave('Desktop', 'BarGroup2', nbMain.Groups.Items[1].Caption);
      SettingSave('Desktop', 'BarGroup3', nbMain.Groups.Items[2].Caption);
      SettingSave('Desktop', 'BarGroup4', nbMain.Groups.Items[3].Caption);
      SettingSave('Desktop', 'PanelWidth', dpNavBar.width);
      SettingSave('Desktop', 'PanelHeigth', dpNavBar.Height);
      SettingSave('Desktop', 'VisibleGroups', nbMain.NavigationPaneMaxVisibleGroups);
      SettingSave('Desktop', 'TaskPanelWidth', dockpnlTimePlanner.width);
      SettingSave('Desktop', 'TaskPanelHeigth', dockpnlTimePlanner.Height);
      SettingSave('Desktop', 'TaskPanelAutoHide', dockpnlTimePlanner.Showing);
   end;
end;

procedure TfrmDesktop.LoadUserSettings;
var
   sText: string;
   nPos, nGroup, pnlWidth, pnlHeight,
   taskpnlWidth, taskpnlHeight: integer;
begin
   if pagMainControl.ActivePageIndex = 0 then
   begin
      dxBarButton3.Caption := 'Show Status Bar...';
//      StatusBar.Visible := SettingLoadBoolean('Desktop', 'StatusBar');
      if StatusBar.Visible then
         dxBarButton3.Caption := 'Hide Status Bar...';
//      pnlNavBar.Visible := (dmAxiom.ShowMenuBar = 'Y');
      pnlWidth := SettingLoadInteger(dmAxiom.UserID,'Desktop', 'PanelWidth');
      pnlHeight := SettingLoadInteger(dmAxiom.UserID,'Desktop', 'PanelHeigth');
      if pnlWidth > 0 then
      begin
         if pnlWidth > 1000 then
            pnlWidth := 150;
         dpNavBar.Width := pnlWidth;
      end;
      if pnlHeight > 0 then
         dpNavBar.Height := pnlHeight;

      taskpnlWidth := SettingLoadInteger(dmAxiom.UserID, 'Desktop',  'TaskPanelWidth');
      taskpnlHeight := SettingLoadInteger(dmAxiom.UserID, 'Desktop',  'TaskPanelHeigth');
      if SettingLoadBoolean('Desktop', 'TaskPanelAutoHide') = True then
      begin
         dockpnlTimePlanner.AutoHide := False;
         dockpnlTimePlanner.show;
      end
      else
      begin
         dockpnlTimePlanner.AutoHide := True;
         dockpnlTimePlanner.Hide;
      end;

      if taskpnlWidth > 0 then
      begin
         if taskpnlWidth > 1000 then
            taskpnlWidth := 150;
         dockpnlTimePlanner.width := taskpnlWidth;
      end;

     if taskpnlHeight > 0 then
         dockpnlTimePlanner.Height := taskpnlHeight;

      sText := SettingLoadString(dmAxiom.UserID,'Desktop', 'BarGroup1');
      for nGroup := 2 to 4 do
      begin
         for nPos := 0 to 3 do
         begin
            if nbMain.Groups.Items[nPos].Caption = sText then
            begin
               nbMain.Groups.Items[nPos].Index := nPos;
               Exit;
            end;
         end;
         sText := SettingLoadString(dmAxiom.UserID,'Desktop', 'BarGroup'+inttostr(nGroup));
      end;
   //   nbMain.ActiveGroupIndex := 0;

   end;
end;


function TfrmDesktop.LoadName(ACode : string) : boolean;
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

procedure TfrmDesktop.popSnapshotsDeleteClick(Sender: TObject);
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

procedure TfrmDesktop.popSnapshotsClearAllClick(Sender: TObject);
begin
  PlaySound('Delete All');

  qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum';
  qryDesktop.Params[0].AsString  := dmAxiom.UserID; // Emp
  qryDesktop.Params[1].AsInteger := 1;              // Type
  qryDesktop.ExecSQL();
  lvSnapshots.Items.Clear();
end;

procedure TfrmDesktop.popSnapshotsPopup(Sender: TObject);
begin
  popSnapshotsOpen.Enabled    := lvSnapshots.SelCount > 0;
  popSnapshotsAddHint.Enabled := lvSnapshots.SelCount > 0;
  popSnapshotsDelete.Enabled  := lvSnapshots.SelCount > 0;
//  if lvSnapshots.SelCount > 0 then
//    popSnapshotsAutocost.Visible := lvSnapshots.Selected.ImageIndex = IDXMATTER
//  else
//    popSnapshotsAutocost.Visible := False;
end;


procedure TfrmDesktop.tbtnLaunchClick(Sender: TObject);
//var
//  LfrmLaunch: TfrmLaunch;
begin
//  tbtnLaunch.OnClick := nil;

{  ShowWindows;
  if not WindowReShow('frmLaunch') then
  begin
    LfrmLaunch := TfrmLaunch.Create(Self);
    LfrmLaunch.Tag := imgROCKET;
    LfrmLaunch.Show;
  end; }
//  tbtnLaunch.OnClick := tbtnLaunchClick;
end;

procedure TfrmDesktop.popSnapshotsAddHintClick(Sender: TObject);
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

procedure TfrmDesktop.popSnapshotsColourClick(Sender: TObject);
begin
  cdlgColour.Color := lvSnapshots.Color;
  if cdlgColour.Execute then
    lvSnapshots.Color := cdlgColour.Color;
  SettingSave('Snapshot', 'Colour', lvSnapshots.Color);
end;

procedure TfrmDesktop.popDesktopColourClick(Sender: TObject);
begin
  cdlgColour.Color := lvDesktop.Color;
  if cdlgColour.Execute then
  begin
    lvDesktop.Color := cdlgColour.Color;
  end;
  SettingSave('Desktop', 'Colour', lvDesktop.Color);
end;

procedure TfrmDesktop.ShowWindows;
var
  iCtr : integer;
begin
  for iCtr := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[iCtr].Visible then
      Screen.Forms[iCtr].Show;
  end;
end;

function TfrmDesktop.WindowReShow(sWindowName : string) : boolean;
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

procedure TfrmDesktop.ShowWindowSelected(Sender: TObject);
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

procedure TfrmDesktop.popSnapshotsLargeClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsIcon;
  popSnapshotsLarge.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;

procedure TfrmDesktop.popSnapshotsSmallClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsSmallIcon;
  popSnapshotsSmall.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;

procedure TfrmDesktop.popSnapshotsListClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsList;
  popSnapshotsList.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;

procedure TfrmDesktop.popSnapshotsDetailClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsReport;
  popSnapshotsDetail.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;


procedure TfrmDesktop.popDesktopLargeClick(Sender: TObject);
begin
  lvDesktop.ViewStyle := vsIcon;
  popDesktopLarge.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktop.popDesktopSmallClick(Sender: TObject);
begin
  lvDesktop.ViewStyle := vsSmallIcon;
  popDesktopSmall.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktop.popDesktopListClick(Sender: TObject);
begin
  lvDesktop.ViewStyle := vsList;
  popDesktopList.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktop.popDesktopOpenClick(Sender: TObject);
begin
   lvDesktop.OnDblClick(Self);
end;

procedure TfrmDesktop.popDesktopDetailClick(Sender: TObject);
begin
  lvDesktop.ViewStyle := vsReport;
  popDesktopDetail.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktop.popDesktopDeleteClick(Sender: TObject);
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

procedure TfrmDesktop.popDesktopClearClick(Sender: TObject);
begin
  PlaySound('Delete All');

  qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum';
  qryDesktop.Params[0].AsString  := dmAxiom.UserID; // Emp
  qryDesktop.Params[1].AsInteger := 0;                // Type
  qryDesktop.ExecSQL();
  lvDesktop.Items.Clear;
end;

procedure TfrmDesktop.splBarMoved(Sender: TObject);
begin
  SettingSave('Desktop', 'Height', lvDesktop.Height);
end;

procedure TfrmDesktop.popDesktopPopup(Sender: TObject);
begin
    if lvDesktop.SelCount > 0 then
    begin
       popDesktopAddTostartup.Visible := not IsInStartUpStatus(lvDesktop.Selected.ImageIndex);
       popRemoveFromStartup.Visible := IsInStartUpStatus(lvDesktop.Selected.ImageIndex);
    end;

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

procedure TfrmDesktop.InfoTrackDirWatchChange(Sender: TObject);
begin
   MsgInfo('File changed');
end;

function TfrmDesktop.IsInStartUpStatus(progID: integer): boolean ;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;
      try
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('SELECT startup FROM EMPCUTS WHERE EMP = :emp AND IMAGEINDEX = :progID');

         loQry.ParamByName('emp').AsString := dmAxiom.UserID;
         loQry.ParamByName('progID').AsInteger := progID;
         loQry.Open;
         if loQry.FieldByName('startup').AsString = 'Y' then
            Result := TRUE
         else
            Result := FALSE;
      finally
      loQry.Close;
      FreeAndNil(loQry);
    end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
end;

procedure TfrmDesktop.lvDesktopClick(Sender: TObject);
begin
  if not FDragging then
  begin
    if lvDesktop.SelCount > 0 then
    begin
{      if not Assigned(frmLaunch) then
      begin
        frmLaunch  := TfrmLaunch.Create(Self);
        frmLaunch.Tag := imgROCKET;
      end;    }
      Launch(lvDesktop.Selected.ImageIndex);
    end;
  end;
end;

procedure TfrmDesktop.lvSnapshotsClick(Sender: TObject);
var
  LfrmMatters: TfrmMatters;
  LfrmClients: TfrmClients;
  LfrmPhonebook: TfrmPhonebook;
  LfrmReports: TfrmReports;
  LfrmTimesheet: TfrmTimesheet;
begin
  if lvSnapshots.SelCount > 0 then
  begin
    case lvSnapshots.Selected.ImageIndex of
      IDXMATTER : // Matter
        begin
           LfrmMatters := TfrmMatters.Create(frmDesktop);
           LfrmMatters.DisplayMatter(Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1));
           frmDesktop.AddFormToTab(LfrmMatters, 1);
           LfrmMatters.Tag := IMGMATTER;
        end;
      IDXCLIENT : // Client
        begin
          LfrmClients := TfrmClients.Create(Self);
          frmDesktop.AddFormToTab(LfrmClients, 1);
          LfrmClients.DisplayClient(Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1));
          LfrmClients.Tag := imgCLIENT;
        end;
      IDXPHONEBOOK : // PhoneBook
        begin
          LfrmPhonebook := TfrmPhonebook.Create(Self);
          LfrmPhonebook.Search := Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1);
          frmDesktop.AddFormToTab(LfrmPhonebook, 1);
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
//          if not frmDesktop.WindowReShow('frmReports') then
//          begin

            LfrmReports := TfrmReports.Create(Self);
            try
//            frmDesktop.fdTab.AddForm(LfrmReports, true);
               LfrmReports.LaunchReport(lvSnapshots.Selected.Caption);
//            dxBarWindowList.Items.AddObject(LfrmReports.Caption, LfrmReports);
//          end else
//          begin
//            frmNewReports := (Screen.ActiveForm as TfrmReports);
//            frmNewReports.Show;
//            frmNewReports.LaunchReport(lvSnapshots.Selected.Caption);
//            dxBarWindowList.Items.AddObject(frmNewReports.Caption, frmNewReports);
//          end;
            finally
               LfrmReports.Close;
            end;
        end;
{      IDXARCHIVE : // Archived Matter
        begin
          LfrmArchive := TfrmArchive.Create(Self);
          LfrmArchive.Show;
          LfrmArchive.DisplayArchive(Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1));
          LfrmArchive.Tag := imgARCHIVE;
        end;  }
    end;
  end;
end;


procedure TfrmDesktop.sbarStatusDblClick(Sender: TObject);
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

procedure TfrmDesktop.tbtnDiaryClick(Sender: TObject);
var
  LfrmDiary: TfrmDiary99;
begin
   if pagMainControl.ActivePage = tsClassicAxiom then
   begin
      //  tbtnDiary.OnClick := nil;
      if not frmDesktop.WindowReShow('frmDiary') then
      begin
         LfrmDiary := TfrmDiary99.Create(Self);
         LfrmDiary.Show;
      end;
   end
   else
   begin
      Launch(IDXDIARY);
   end;
{
// tbtnDiary.OnClick := nil;
      if not frmDesktop.WindowReShow('frmDiary') then
      begin
//    LfrmDiaryOutlook := TfrmDiaryOutlook.Create(Self);
//    LfrmDiaryOutlook.Show;
         Application.CreateForm(TfrmDiary, LfrmDiary);
         fdTab.AddForm(LfrmDiary, true);
//     LfrmDiary := TfrmDiary.Create(Self);
//     LfrmDiary.Show;
      end;
   end;
//  tbtnDiary.OnClick := tbtnDiaryClick;  }
end;


procedure TfrmDesktop.tmrDiaryNotifyTimer(Sender: TObject);
var
  bNotifyUser : boolean;
  diaryNotify : TfrmDiaryNotify;
begin
  // TONY DIARY WORK
  with qryDiaryNotify do
  begin
    ParamByName('REMINDER_FOR').AsString := dmAxiom.UserID;
//    ParamByName('NOTIFYSTART').AsDateTime := Now();
//    ParamByName('NOTIFYEND').AsDateTime := Now - EncodeTime(iDiaryNotify div 60, iDiaryNotify mod 60, 0, 0);
    Open;

    bNotifyUser := not IsEmpty;

    if bNotifyUser then
    begin
      diaryNotify := TfrmDiaryNotify(FindorCreateClassic(TfrmDiaryNotify, IDXDIARYNOTIFY));
      diaryNotify.DiaryNotify(Now {Self.qryDiaryNotify.ParamByName('NOTIFYEND').AsDateTime});
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

procedure TfrmDesktop.popHelpContentsClick(Sender: TObject);
begin
//  tbtnHelp.Click;
end;

procedure TfrmDesktop.popHelpIndexClick(Sender: TObject);
begin
  ShowWindows;
  Application.HelpCommand(HELP_INDEX, 0);
end;

procedure TfrmDesktop.popHelpHomePageClick(Sender: TObject);
begin
  //ExecuteFile('http://www.colateral.com.au', '', '', 0);
end;

procedure TfrmDesktop.popHelpAboutClick(Sender: TObject);
var
  LfrmAbout: TfrmAbout;
begin
  LfrmAbout := TfrmAbout.Create(Self);
  LfrmAbout.ShowModal;
end;

procedure TfrmDesktop.popLaunchLockClick(Sender: TObject);
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
    // Destroy any open Windows
    for iCtr := Screen.FormCount - 1 downto 0 do
    begin
      if (Screen.Forms[iCtr].Name <> 'frmDesktop') and (Screen.Forms[iCtr].Visible) then
        Screen.Forms[iCtr].Release;
    end;
  end;
  WindowState := wsMaximized;
end;

procedure TfrmDesktop.popLaunchPopup(Sender: TObject);
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
    if (Screen.Forms[iCtr].Name <> 'frmDesktop') AND (Screen.Forms[iCtr].Name <> 'frmWindows') AND Screen.Forms[iCtr].Visible then
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

procedure TfrmDesktop.popLaunchOpenWindow(Sender: TObject);
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

procedure TfrmDesktop.popMatterPopup(Sender: TObject);
begin
// rb Opt for WAN
  ReopenListSet('MATTER',popMatter);
end;

procedure TfrmDesktop.LoadMatter(Sender: TObject);
var
  LFileID: String;
  bExtraScan: boolean;
begin
      bExtraScan := True;
      if (Sender is TdxBarButton) then
      begin
         LFileID := Copy((Sender as TdxBarButton).Caption, 1, Pos(' ', (Sender as TdxBarButton).Caption)-1);
         bExtraScan := False;
      end
      else if (sender is TdxBarEdit) then
         LFileID := Uppercase((Sender as TdxBarEdit).CurText)
      else if (sender is TcxLookupComboBox) then
      begin
         LFileID := Uppercase((Sender as TcxLookupComboBox).Text);
         if LFileID = 'SEARCH...' then
            MattersFind;
         bExtraScan := False;
      end;

      if bExtraScan then
      begin
        with dmAxiom.qryNew do
        begin
           Close;
           SQL.Text := 'SELECT matter.fileid as code, phonebook.search||'' ''||matter.shortdescr as descr, ''N'' AS DEFAULTITEM '+
                       'FROM phonebook, matter WHERE matter.nclient = phonebook.nclient ';
           if boolean(chkIncludeClosed.EditValue) = False then
               SQL.Text := SQL.Text + ' and closed = 0 ';
           if dmAxiom.Security.Employee.ChangeEntity = False then
              SQL.Text := SQL.Text + ' AND efematteraccess (matter.nmatter, :author, :entity, :defentity) = 0 ';
           if (Trim(LFileID) <> '') then
               SQL.Text := SQL.Text + ' and contains(matter.dummy,'+ QuotedStr(LFileID) +') > 0';
           Open;
           if (dmAxiom.qryNew.RecordCount > 1) and (LFileID <> '') then
           begin
              try
                 frmGenericSearch := TfrmGenericSearch.Create(Self);
                 frmGenericSearch.Caption := 'Select Matter...';
                 frmGenericSearch.SQL := SQL.Text;
                 if frmGenericSearch.ShowModal = mrOK then
                 begin
                    LFileID := frmGenericSearch.qrySource.FieldByName('CODE').AsString;
                 end
                 else
                    LFileID := '';
              finally
                 begin
                    frmGenericSearch.Free();
                    Close;
                 end;
              end;
           end
           else
           if (dmAxiom.qryNew.RecordCount > 1) and (Trim(LFileID) = '') then
           begin
              if not FormExists(frmMatterSearch) then
                 Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
              if frmMatterSearch.ShowModal = mrOk then
                 LFileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
           end
           else
           begin
              if (dmAxiom.qryNew.RecordCount = 1) then
                 LFileID := dmAxiom.qryNew.FieldByName('code').AsString
              else
                 LFileID := '';
           end;
        end;
      end;
{   end;
   else if (Sender is TdxBarButton) then
      LFileID :=  Copy((Sender as TdxBarButton).Caption, 1, Pos(' ', (Sender as TdxBarButton).Caption)-1)
   else if (Sender is TdxBarMRUListItem) then
   begin
      LFileID := Copy((Sender as TdxBarMRUListItem).Items[(Sender as TdxBarMRUListItem).ItemIndex], 1, Pos(' ', (Sender as TdxBarMRUListItem).Items[(Sender as TdxBarMRUListItem).ItemIndex])-1);
      frmMatterSearch.Close;
   end
   else
      if (Sender is TcxLookupComboBox) then
      begin
         if cmbMatterFind.Text = 'Search...' then
            MattersFind
         else
            LFileID := cmbMatterFind.Text;
      end;     }

   if ((Trim(LFileID) <> '') and MatterExists(LFileID)) then
   begin
      if IsMatterPrivate(StrToInt(MatterString(LFileID, 'NMATTER')),MatterString(LFileID, 'RESTRICT_ACCESS'))
          {AND
          (dmAxiom.SecureMatterAccess = 'N'))} then
      begin
         MsgInfo('This matter is marked as private. You do not have permission to view it.');
      end
      else
      begin
         frmMatters := TfrmMatters.Create(Application);
         frmMatters.Tag := imgMATTER;
         frmMatters.DisplayMatter(LFileID);
         if pagMainControl.ActivePageIndex = 0 then
         begin
            AddFormToTab(frmMatters, imgMATTER);
//            fdTab.AddForm(frmMatters,True);
         end;

         if (not frmMatters.Visible) then
            frmMatters.Show;
         frmMatters.Repaint;
         frmMatters.Invalidate;
      end;
   end
   else
       if (LFileID <> '') then
         MsgErr('The selected Matter is not valid.  Please check and re-try.');

   cmbMatterFind.Text := '';
   try
      beMatterSearch.Text := '';
      SetFocusedControl(Self);
   except
   //
   end;
  // end;
end;

procedure TfrmDesktop.LoadMatter(AFileID: string);
var
  LFileID: String;
begin
   LFileID := Uppercase(AFileID);
   with dmAxiom.qryNew do
   begin
      Close;
      SQL.Text := 'SELECT matter.fileid as code, phonebook.search||'' ''||matter.shortdescr as descr, ''N'' AS DEFAULTITEM '+
                  'FROM phonebook, matter WHERE matter.nclient = phonebook.nclient ';
      if boolean(chkIncludeClosed.EditValue) = False then
         SQL.Text := SQL.Text + ' and closed = 0 ';
      if dmAxiom.Security.Employee.ChangeEntity = False then
      begin
         SQL.Text := SQL.Text + ' AND efematteraccess (matter.nmatter, :author, :entity, :defentity) = 0 ';
         ParamByName('AUTHOR').AsString := dmAxiom.UserID;
         ParamByName('DEFENTITY').AsString := dmAxiom.EmpEntity;
         ParamByName('ENTITY').AsString := dmAxiom.Entity;
      end
      else
         SQL.Text := SQL.Text + 'and matter.entity = '+ QuotedStr(dmAxiom.Entity) ;

      if (Trim(LFileID) <> '') then
         SQL.Text := SQL.Text + ' and contains(matter.dummy,'+ QuotedStr(trim(LFileID)) +') > 0';
      Prepare;
      Open;
      if (dmAxiom.qryNew.RecordCount > 1) and (Trim(LFileID) <> '') then
      begin
         try
            frmGenericSearch := TfrmGenericSearch.Create(Self);
            frmGenericSearch.Caption := 'Select Matter...';
            frmGenericSearch.SQL := SQL.Text;
            if frmGenericSearch.ShowModal = mrOK then
            begin
               LFileID := frmGenericSearch.qrySource.FieldByName('CODE').AsString;
            end
            else
               LFileID := '';
         finally
            begin
               frmGenericSearch.Free();
               Close;
            end;
         end;
      end
      else
      if (dmAxiom.qryNew.RecordCount > 1) and (Trim(LFileID) = '') then
      begin
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
         if frmMatterSearch.ShowModal = mrOk then
            LFileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      end
      else
      begin
         if (dmAxiom.qryNew.RecordCount = 1) then
            LFileID := dmAxiom.qryNew.FieldByName('code').AsString
         else
         begin
            MsgErr('The selected Matter is not valid.  Please check and re-try.');
            LFileID := '';
            Exit;
         end;
      end;
   end;

   if ((Trim(LFileID) <> '') and MatterExists(LFileID)) then
   begin
      if (IsMatterPrivate(StrToInt(MatterString(LFileID, 'NMATTER')),MatterString(LFileID, 'RESTRICT_ACCESS')) AND
          (dmAxiom.SecureMatterAccess = 'N')) then
      begin
         MsgInfo('This matter is marked as private. You do not have permission to view it.');
      end
      else
      begin
         try
            frmMatters := TfrmMatters.Create(Application);
            frmMatters.Tag := imgMATTER;
            frmMatters.DisplayMatter(LFileID);
         finally
//            if pagMainControl.ActivePageIndex = 0 then
//            fdTab.AddForm(frmMatters,True);
            try
//               if (subItemMatter.DropDown()) then
               AddFormToTab(frmMatters, imgMATTER);
//               fdTab.AddForm(frmMatters,True);
               beMatterSearch.CurText := '';
            finally
               if (not frmMatters.Visible) then
                  frmMatters.Show;
               frmMatters.Repaint;
               frmMatters.Invalidate;
            end;
         end;
      end;
   end
   else
       if (LFileID <> '') then
         MsgErr('The selected Matter is not valid.  Please check and re-try.');

   cmbMatterFind.Text := '';
   try
      beMatterSearch.Text := '';
      SetFocusedControl(Self);
   except
   //
   end;
end;


procedure TfrmDesktop.LoadClient(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
   LfrmClients := TfrmClients.Create(Self);
   if pagMainControl.ActivePageIndex = 0 then
      AddFormToTab(LfrmClients,1);
   LfrmClients.DisplayClient((Sender as TdxBarButton).Tag);
end;

procedure TfrmDesktop.LoadConflict(Sender: TObject);
var
  frmConflicts: TfrmConflictSearch;
begin
  frmConflicts := TfrmConflictSearch.Create(Self);
  frmConflicts.PreviousSearchID := (Sender as TComponent).Tag;
  frmConflicts.Show;
   // ToDo: Work out how we show an old conflict search.
   // Make them readonly?
   //LfrmClients.DisplayClient((Sender as TdxBarButton).Tag);
end;

procedure TfrmDesktop.popPhoneBookPopup(Sender: TObject);
begin
   ReopenListSet('PHONEBOOK',popPhoneBook);
end;

procedure TfrmDesktop.LoadPhoneBook(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
   LfrmPhonebook := TfrmPhonebook.Create(Self);
//   LfrmPhonebook.Tag := imgPHONEBOOK;
   LfrmPhonebook.Search := IntToStr((Sender as TdxBarButton).Tag);
//   LfrmPhonebook.Search := ReplaceAndAnd(Copy((Sender as TdxBarButton).Caption, 1, Pos(' ', (Sender as TdxBarButton).Caption)-1));
   if pagMainControl.ActivePageIndex = 0 then
   begin
      AddFormToTab(LfrmPhonebook, 1);
//      fdTab.AddForm(LfrmPhonebook,True);
   end
   else
       //  LfrmPhonebook.Search := ReplaceAndAnd((Sender as TMenuItem).Caption);
      LfrmPhonebook.Show();
end;

procedure TfrmDesktop.popHelpDownloadClick(Sender: TObject);
var
   DocErrMsg: string;
begin
  ExecuteFile('http://releases.bhl.com.au', '', '', 0, DocErrMsg);
end;

procedure TfrmDesktop.popLaunchPasswordClick(Sender: TObject);
var
  LfrmPassword: TfrmPassword;
begin
  LfrmPassword := TfrmPassword.Create(Self);
  LfrmPassword.Tag := 80;
  LfrmPassword.LoadEmp(dmAxiom.UserID);
end;

procedure TfrmDesktop.popSnapshotsAutocostClick(Sender: TObject);
//var
//  LfrmAutoCost: TfrmAutoCost;
begin
{  LfrmAutoCost := TfrmAutoCost(FindorCreate(TfrmAutoCost, IDXAUTOCOST));
  LfrmAutoCost.Show();
  LfrmAutoCost.CreateTimer(Copy(lvSnapshots.Selected.Caption, 1, Pos(' ', lvSnapshots.Selected.Caption)-1));}
end;

procedure TfrmDesktop.popSnapshotsOpenClick(Sender: TObject);
begin
  lvSnapshots.OnDblClick(Self);
end;

procedure TfrmDesktop.lvDesktopMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  FDragging := False;
end;

procedure TfrmDesktop.lvDesktopMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  FDragging := False;
end;

procedure TfrmDesktop.lvDesktopMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//  FDragging := True;
end;

procedure TfrmDesktop.lvDesktopInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
begin
  InfoTip := Item.Subitems[0];
end;

procedure TfrmDesktop.lvSnapshotsInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
begin
  InfoTip := Item.Subitems[0];
end;

procedure TfrmDesktop.popHelpSQLTraceStopClick(Sender: TObject);
begin
  dmAxiom.QueryTracing := False;
  MsgInfo('SQL performance tracing is now off for this database session.');
end;

procedure TfrmDesktop.StartSQLTrace(Tolerance: integer);
begin
  dmAxiom.QueryTracing := True;
  dmAxiom.QueryTolerance := Tolerance;
  MsgInfo('SQL performance tracing is now on for this database session.' + #13#13 + 'Traceable database queries taking longer than ' + IntToStr(Tolerance) + ' seconds will be recorded for investigation.');
end;

procedure TfrmDesktop.TaskSchedulerBeforeEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
begin
   if not AInPlace then
      cxEventEditorClass := TfrmNewTaskNew;
end;

procedure TfrmDesktop.popHelpSQLTraceAllClick(Sender: TObject);
begin
  StartSQLTrace(0);
end;

procedure TfrmDesktop.popHelpSQLTraceTol1Click(Sender: TObject);
begin
  StartSQLTrace(1);
end;

procedure TfrmDesktop.popHelpSQLTraceTol3Click(Sender: TObject);
begin
 StartSQLTrace(3);
end;

procedure TfrmDesktop.popHelpSQLTraceTol5Click(Sender: TObject);
begin
  StartSQLTrace(5);
end;

procedure TfrmDesktop.popHelpSQLTraceTol9Click(Sender: TObject);
begin
  StartSQLTrace(9);
end;

procedure TfrmDesktop.popHelpSQLTraceTol20Click(Sender: TObject);
begin
  StartSQLTrace(20);
end;

procedure TfrmDesktop.popHelpForumClick(Sender: TObject);
var
   DocErrMsg: string;
begin
  ExecuteFile('https://bhlsupport.zendesk.com', '', '', 0, DocErrMsg);
end;

procedure TfrmDesktop.DoReleaseNotes;
var
  LLastVersion, LCurrentVersion: String;
begin
  // here we check versions, old version against new for the logged in user..
  dmAxiom.qryTmp.SQL.Text := 'SELECT CURRENTAXIOMATIONVERSION FROM EMPLOYEE where code = ''' + dmAxiom.UserID + '''';
  dmAxiom.qryTmp.Open();
  try
    LLastVersion    := dmAxiom.qryTmp.FieldByName('CURRENTAXIOMATIONVERSION').AsString;
    LCurrentVersion := dmAxiom.GetVersionInfo;
  finally
    dmAxiom.qryTmp.Close();
  end;


  if(LLastVersion <> LCurrentVersion) then
  begin
    dmAxiom.qryTmp.SQL.Text := 'UPDATE employee SET CURRENTAXIOMATIONVERSION = ''' + LCurrentVersion + '''  where code = ''' + dmAxiom.UserID + '''';
    dmAxiom.qryTmp.ExecSQL();

   { if MessageDlg('The Version of Insight has changed.'#13#10'Do you want to view the release notes?', mtInformation, [mbYes,mbNo], 0) = mrYes then
    begin
      fmReleaseNotes := TfmReleaseNotes.Create(Application);
      fmReleaseNotes.Show();
    end;}
  end;
end;


procedure TfrmDesktop.miCurrentReleaseNotesClick(Sender: TObject);
begin
  fmReleaseNotes := TfmReleaseNotes.Create(Application);
  fmReleaseNotes.Show();
end;

procedure TfrmDesktop.SetReopenList(List: string; mnuReopen: TdxBarSubItem; Category: integer);
begin
   ReopenListSet(List, mnuReopen, category);
end;

procedure TfrmDesktop.dxBarSubItemClientsPopup(Sender: TObject);
begin
//   bbClientNew.Enabled := (dmAxiom.Security.Client.Create = True);
   SetReopenList('CLIENT',dxBarSubItemClients, 2);
//   ReopenListSet('CLIENT',dxBarPopClients);
end;

procedure TfrmDesktop.dxBarSubItemMattersPopup(Sender: TObject);
begin
   beMatterSearch.Text := '';
   SetReopenList('MATTER',dxBarSubItemMatters, 4);
//   ReopenListSet('MATTER',dxBarPopMatters);
end;

procedure TfrmDesktop.dxBarListClientsClick(Sender: TObject);
var
  LfrmClients: TfrmClients;
begin
  LfrmClients := TfrmClients.Create(Self);
  LfrmClients.Tag := imgCLIENT;
  LfrmClients.DisplayClient(dxBarListClients.Items[dxBarListClients.ItemIndex]);
end;

procedure TfrmDesktop.dxBarManagerShowCustomizingPopup(Sender: TdxBarManager;
  PopupItemLinks: TdxBarItemLinks);
var
   AItemLink: TdxBarItemLink;
   ABarButton: TdxBarButton;
begin
   if ( CurrentRibbonItem <> nil ) then
   begin
      AItemLink := PopupItemLinks.AddButton;
      ABarButton := TdxBarButton(AItemLink.Item);
      ABarButton.Caption := CurrentRibbonItem.Caption;
//      ABarButton.OnClick := RibbonFavoritesOnClick;

//      if unFavorites.InFavorites( TAction(CurrentRibbonItem.Action) ) then
//         ABarButton.Caption := 'Remove ''' + CurrentRibbonItem.Caption + ''' from Favorites'
//      else
         ABarButton.Caption := 'Add ''' + CurrentRibbonItem.Caption + ''' to Favorites';
  end;
end;


procedure TfrmDesktop.dxBarSubItemPhonebookPopup(Sender: TObject);
begin
//   bbContactCreate.Enabled := (dmAxiom.Security.Phonebook.Create = True);
   SetReopenList('PHONEBOOK',dxBarSubItemPhonebook, 3);
//   ReopenListSet('PHONEBOOK',dxBarPopPhonebook);
end;

procedure TfrmDesktop.dxBarListPhonebookClick(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
  LfrmPhonebook := TfrmPhonebook.Create(Self);
  LfrmPhonebook.Tag := imgPHONEBOOK;
  LfrmPhonebook.Search := dxBarListPhonebook.Items[dxBarListPhonebook.ItemIndex];
  LfrmPhonebook.Show();
end;

procedure TfrmDesktop.DisplayMenuIcons;
var
   iCtr: integer;
   TotalItems, shortgroup_id: integer;
   LaunchItem: TdxBarButton;
   ParentLaunchItem: TdxBarSubItem;
begin
   dxBarManager.Images := ilstShortcuts;
   TotalItems := dxBarLaunch.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 0 do
      dxBarLaunch.ItemLinks.Delete(iCtr);

  qryEmpCuts.Close;
  qryEmpCuts.ParamByName('P_Emp').AsString := dmAxiom.UserID;
  qryEmpCuts.Open;

  ParentLaunchItem := TdxBarSubItem.Create(Self);
  ParentLaunchItem.Caption := qryEmpCuts.FieldByName('DESCRIPTION').AsString;
  ParentLaunchItem.ImageIndex := qryEmpCuts.FieldByName('GROUP_IMAGEINDEX').AsInteger;
  dxBarLaunch.ItemLinks.Add.Item := ParentLaunchItem;
  shortgroup_id := qryEmpCuts.FieldByName('SHORTCUT_GROUP').AsInteger;

  while not qryEmpCuts.EOF do
  begin
     if shortgroup_id <>  qryEmpCuts.FieldByName('SHORTCUT_GROUP').AsInteger then
     begin
        ParentLaunchItem := TdxBarSubItem.Create(Self);
        ParentLaunchItem.Caption := qryEmpCuts.FieldByName('DESCRIPTION').AsString;
        ParentLaunchItem.ImageIndex := qryEmpCuts.FieldByName('GROUP_IMAGEINDEX').AsInteger;
        dxBarLaunch.ItemLinks.Add.Item := ParentLaunchItem;
        shortgroup_id := qryEmpCuts.FieldByName('SHORTCUT_GROUP').AsInteger;
     end;

     LaunchItem := TdxBarButton.Create(Self);
     LaunchItem.Caption := qryEmpCuts.FieldByName('NAME').AsString;
     LaunchItem.ImageIndex := qryEmpCuts.FieldByName('IMAGEINDEX').AsInteger;
//     LaunchItem.Category := 5;
     ParentLaunchItem.ItemLinks.Add.Item := LaunchItem;
     LaunchItem.OnClick := LaunchModule;

    qryEmpCuts.Next;
  end;
//  dxBarListLaunch.ItemIndex := 0;
end;

procedure TfrmDesktop.LaunchModule(Sender: TObject);
begin
 {  if not Assigned(frmLaunch) then
   begin
      frmLaunch  := TfrmLaunch.Create(Self);
      frmLaunch.Tag := imgROCKET;
   end;    }
   Launch(TdxBarItem( Sender ).ImageIndex);
end;

procedure TfrmDesktop.dxBarLaunchPopup(Sender: TObject);
begin
   DisplayMenuIcons
end;

procedure TfrmDesktop.dxBarSubItem6Popup(Sender: TObject);
begin
   dxBarLookupEntity.KeyValue := dmAxiom.Entity;
   dxBarLookupEntity.Enabled := dmAxiom.Security.Employee.ChangeEntity;
end;

procedure TfrmDesktop.dxBarLookupEntityCloseUp(Sender: TObject);
begin
   dmAxiom.Entity := qryEntitys.FieldByName('CODE').AsString;
   frmDesktop.beEntity.Text := qryEntitys.FieldByName('NAME').AsString;
   if TableInteger('ENTITY','CODE', dmAxiom.Entity,'COLOUR') > 0 then
   begin
      beEntity.Style.Color := TableInteger('ENTITY','CODE', dmAxiom.Entity,'COLOUR');
      dxBarLookupEntity.Color := TableInteger('ENTITY','CODE', dmAxiom.Entity,'COLOUR');
   end
   else
   begin
      beEntity.Style.Color := clWindow;
      dxBarLookupEntity.Color := clWindow;
   end;
//   frmDesktop.cmbEntity.EditValue := dmAxiom.Entity;
   SettingSave('Desktop', 'Entity', dmAxiom.Entity);
end;

procedure TfrmDesktop.dxBarSubItemOptionsPopup(Sender: TObject);
begin
   dxBarColorCmbShortcuts.Color := lvDesktop.Color;
   dxBarColorCmbSnapshots.Color := lvSnapshots.Color;
   bbPassword.Enabled := dmAxiom.Security.Employee.Password;
   bbtnEmployee.Enabled := dmAxiom.Security.Employee.Access;
end;

procedure TfrmDesktop.dxBarColorCmbShortcutsCloseUp(Sender: TObject);
begin
//  cdlgColour.Color := lvDesktop.Color;
//  if cdlgColour.Execute then
  lvDesktop.Color := dxBarColorCmbShortcuts.Color;
  SettingSave('Desktop', 'Colour', lvDesktop.Color);
end;

procedure TfrmDesktop.dxBarColorCmbSnapshotsCloseUp(Sender: TObject);
begin
   lvSnapshots.Color := dxBarColorCmbSnapshots.Color;
   SettingSave('Snapshot', 'Colour', lvSnapshots.Color);
end;

procedure TfrmDesktop.edDocumentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = vkReturn) then
   begin
      LoadDocSearchFromSearch(Sender, edDocument.CurText);
      edDocument.CurText := '';
   end;
end;

procedure TfrmDesktop.barbtnFindDocumentsClick(Sender: TObject);

begin
   if SystemString('use_external_search') = 'Y' then
      FindorCreate(TfrmdtSearch,1)
   else
      FindorCreate(TfrmDocSearch, 0).Show;
end;

procedure TfrmDesktop.barbtnShowWindowsClick(Sender: TObject);
begin
   ShowWindows;
end;

procedure TfrmDesktop.barcmbStylesChange(Sender: TObject);
begin
   if MsgAsk('Changing this will restart '+CN_PROGRAM_NAME+'. Continue?') = mrYes then
   begin
      if Assigned(TStyleManager.ActiveStyle) then
      begin
         TStyleManager.TrySetStyle(barcmbStyles.Text);
      end;
   end;
end;

procedure TfrmDesktop.edContactKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = vkReturn) then
   begin
      LoadContactFromSearch(Sender, edContact.CurText);
      edContact.CurText := '';
   end;
end;

procedure TfrmDesktop.fdTabChange(Sender: TObject);
begin
//   if fdTab.Tabs.Count = 3 then
//      fdTab.ActiveFormIndex := 0;
end;

procedure TfrmDesktop.fdTabDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
//    fdTab.Canvas.Draw(Rect.Left,Rect.Top, TabImage.Picture.Graphic);
end;

procedure TfrmDesktop.dxBarColorCmbShortcutsChange(Sender: TObject);
begin
   lvDesktop.Color := dxBarColorCmbShortcuts.Color;
   SettingSave('Desktop', 'Colour', lvDesktop.Color);
end;

procedure TfrmDesktop.dxBarColorCmbSnapshotsChange(Sender: TObject);
begin
   lvSnapshots.Color := dxBarColorCmbSnapshots.Color;
   SettingSave('Snapshot', 'Colour', lvSnapshots.Color);
end;

procedure TfrmDesktop.dxBarSnapshotsPopup(Sender: TObject);
begin
   DisplaySnapshots;
end;

procedure TfrmDesktop.cmbMatterFindPropertiesCloseUp(Sender: TObject);
begin
   if (cmbMatterFind.Text <> '') and
      (cmbMatterFind.Text <> 'Type a matter to find') then
   begin
      LoadMatter(Sender);
      cmbMatterFind.Text := 'Type a matter to find';
   end;
end;

procedure TfrmDesktop.cmbMatterFind1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      if (TcxLookupComboBox(Sender).Text <> 'Type a matter to find') then
      with dxBarManager do
      begin
         BeginUpdate;
         try
            LoadMatter(TcxLookupComboBox(Sender).Text);
         finally
            EndUpdate;
            subItemMatter.UnclickAfterDoing := True;
         end;
      end;
//         LoadMatter(Sender);
      TcxLookupComboBox(Sender).Text := 'Type a matter to find';
   end;
end;

procedure TfrmDesktop.dxBarButton28Click(Sender: TObject);
begin
   ShowWindows();
end;

procedure TfrmDesktop.dxBarButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmDesktop.bbClientNewClick(Sender: TObject);
var
   LfrmClients: TfrmClients;
   LfmPBNew: TfrmPhoneBookNew;
begin
   begin
     if(SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) then
     begin
       if not FormExists(frmPhoneBookSearch) then
         Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
       frmPhoneBookSearch.SelectingClients := True;
       if(frmPhoneBookSearch.ShowModal() = mrOk) then
       begin
         LfrmClients := TfrmClients.Create(Application);
         LfrmClients.DisplayClient(frmPhoneBookSearch.NClient);
       end;
     end else
     begin
       LfmPBNew := TfrmPhoneBookNew.Create(frmDesktop);
       try
         LfmPBNew.Tag := 0;
         LfmPBNew.bDoShow := True;
         LfmPBNew.SetupForClient(0);
         if(LfmPBNew.ShowModal() = mrOk) then
         begin
           Application.CreateForm(TfrmClients, LfrmClients);
           frmDesktop.AddFormToTab(LfrmClients, 1);
           LfrmClients.DisplayClient(LfmPBNew.NClient);
           LfrmClients.Show();
         end;
       finally
         FreeAndNil(LfmPBNew);
       end;
     end;
   end;
end;

procedure TfrmDesktop.bbContactCreateClick(Sender: TObject);
var
   LfrmPhoneBook: TfrmPhoneBook;
   LfmPBNew: TfrmPhoneBookNew;
begin
  if dmAxiom.Security.Phonebook.Create then
  begin
    LfmPBNew := TfrmPhoneBookNew.Create(frmDesktop);
    try
       LfmPBNew.Tag := 0;
       LfmPBNew.bDoShow := False;
       if(LfmPBNew.ShowModal = mrOk) then
       begin
          LfrmPhoneBook := TfrmPhoneBook.Create(Self);
          LfrmPhoneBook.Search := IntToStr(LfmPBNew.NName);
          LfrmPhoneBook.NName := LfmPBNew.NName;
          frmDesktop.AddFormToTab(LfrmPhoneBook, 1);
          LfrmPhoneBook.Show;
       end;
    finally
      FreeAndNil(LfmPBNew);
    end;
  end;
end;

procedure TfrmDesktop.bbDiaryFeeClick(Sender: TObject);
var
   LfrmTimeDiary: TfrmTimeDiary;
begin
   if not frmDesktop.WindowReShow('frmFeeDiary') then
   begin
      LfrmTimeDiary := TfrmTimeDiary.Create(Self);
      LfrmTimeDiary.Show;
   end;
//   tbtnDiary.OnClick := tbtnDiaryClick;
end;

procedure TfrmDesktop.cmbMatterFindPropertiesInitPopup(Sender: TObject);
begin
   qryMRUList.Close;
   qryMRUList.Open;
end;

procedure TfrmDesktop.bbtnEmployeeClick(Sender: TObject);
var
  LfrmEmployees: TfrmEmployees;
begin
   if not frmDesktop.WindowReShow('frmEmployees') then
   begin
     Application.CreateForm(TfrmEmployees, LfrmEmployees);
     LfrmEmployees.UserCode := dmAxiom.UserID;
     AddFormToTab(LfrmEmployees, 1);
   end;
end;

procedure TfrmDesktop.dxBarWindowListGetData(Sender: TObject);
begin
   with dxBarWindowList do
      ItemIndex := Items.IndexOfObject(Screen.ActiveForm);
end;

procedure TfrmDesktop.dxbbtnCreateMatterClick(Sender: TObject);
var
   LMatterNew :TfrmMatterNew;
begin
   LMatterNew := TfrmMatterNew.Create(Self);
   begin
      LMatterNew.DisplayClient(0);
      LMatterNew.ShowModal;
   end;
end;

procedure TfrmDesktop.dxBarWindowListClick(Sender: TObject);
begin
   with dxBarWindowList do
      TCustomForm(Items.Objects[ItemIndex]).Show;
end;

procedure TfrmDesktop.bbPasswordClick(Sender: TObject);
begin
   with TfrmPassword.Create(frmDesktop) do
   begin
      LoadEmp(dmAxiom.UserID);
   end;
end;

procedure TfrmDesktop.dxBarApplicationMenuPopup(Sender: TObject);
begin
   dxBarColorCmbShortcuts.Color := lvDesktop.Color;
   dxBarColorCmbSnapshots.Color := lvSnapshots.Color;
   bbPassword.Enabled := dmAxiom.Security.Employee.Password;
   bbtnEmployee.Enabled := dmAxiom.Security.Employee.Access;
   dxBarLookupEntity.Enabled := dmAxiom.Security.Employee.ChangeEntity;
   barBtnSupport.Enabled := dmAxiom.Security.System.SupportButton;
end;

procedure TfrmDesktop.dxBarButton11Click(Sender: TObject);
begin
   ShowWindows;
//   dmAxiom.helprouter1.HelpContent;
//   Application.HelpCommand(HELP_FINDER, 0);
end;

procedure TfrmDesktop.dxBarButton12Click(Sender: TObject);
begin
   ShowWindows;
//   dmAxiom.helprouter1.HelpKeyword('');
//   Application.HelpCommand(HELP_INDEX, 0);
end;

procedure TfrmDesktop.cmbMatterFindPropertiesPopup(Sender: TObject);
begin
//   if cmbMatterFind.Text = '' then
 //     cmbMatterFind.Text := '';
end;

procedure TfrmDesktop.cmbMatterFind1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if cmbMatterFind.Text = 'Type a matter to find' then
      cmbMatterFind.Text := '';
end;

procedure TfrmDesktop.cmbMatterFind1Click(Sender: TObject);
begin
   if (TcxLookupComboBox(Sender).Text <> 'Type a matter to find') and
      (TcxLookupComboBox(Sender).DroppedDown = True) then
   with dxBarManager do
   begin
      BeginUpdate;
      try
         LoadMatter(TcxLookupComboBox(Sender).Text);
      finally
         EndUpdate;
      end;
   end;
end;

procedure TfrmDesktop.cmbMatterFind1Exit(Sender: TObject);
begin
   if TcxLookupComboBox(Sender).Text = '' then
      TcxLookupComboBox(Sender).Text := 'Type a matter to find';
end;

procedure TfrmDesktop.tvLaunchClick(Sender: TObject);
begin
   if (not tvLaunch.Selected.HasChildren) then
      Launch(tvLaunch.Selected.ImageIndex);
end;

procedure TfrmDesktop.tvTaskListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin

   AColumn := (Sender as TcxGridTableView).FindItemByName('tvTaskListcxGridColumn49');

   if (VarToStr(ARecord.Values[AColumn.Index]) <> '') then
      AStyle := styTaskComplete
   else
      AStyle := styTaskNotComplete;
end;

procedure TfrmDesktop.Launch(iProgramID: integer);
var
  csrPrev: TCursor;
  LfmPBNew: TfrmPhoneBookNew;
  LfrmClients: TfrmClients;
  LfmCheque: TfrmCheque;
  LfrmCreditors: TfrmCreditors;
  regAxiom: TRegistry;
  sNetworkDir : string;
  LfrmPhoneBook: TfrmPhoneBook;
  LfrmReceipt: TfrmReceipt;
  LfrmCreditor: TfrmCreditors;
  OldDir,
  DocErrMsg: string;
  AHandle: THandle;
begin
   csrPrev := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   case iProgramID of
      idxMATTERSTATUS: FindorCreate(TfrmMatterStatus, iProgramID).Show;

      IDXARCHIVAL: FindorCreateClassic(TfrmArchival, iProgramID).Show;

{    IDXARCHIVE:
      with TfrmArchive.Create(Self) do
      begin
        Tag := iProgramID;
        ChooseArchive;
      end;   }

      IDXARCHIVEBATCH: FindorCreate(TfrmArchiveBatch, iProgramID).Show;

//      IDXAUTOCOST: FindorCreate(TfrmAutoCost, iProgramID).Show;

//    IDXAUTOGEN: FindorCreate(TfrmAutoGen, iProgramID).Show;

      IDXAUTOINV: FindorCreate(TfrmBulkBills, iProgramID).Show;

      IDXBANK: FindorCreate(TfrmBank, iProgramID).Show;

      IDXBANKREC:
//            if (dmAxiom.RunningIde = true) then
               FindorCreate(TfrmBankRec, iProgramID).Show;
//            else
//               FindorCreate(TfrmBankRecEdit, iProgramID).Show;

    IDXBANKDEPOSIT: FindorCreate(TfrmBankDeposit, iProgramID).Show;

    IDXBANKDEPOSITQUERY: FindorCreate(TfrmBankDepositQuery, iProgramID).Show;

    IDXBASGROUPS: FindorCreate(TfrmBASGroups, iProgramID).Show;

    IDXBILLCREDIT: FindorCreate(TfrmBillCredit, iProgramID).Show;

    IDXBILLCREDITTYPE: FindorCreate(TfrmBillCreditTypes, iProgramID).Show;

    IDXBILLTEMPLATES: FindorCreate(TfrmBillTemplates, iProgramID).Show;

    IDXJURISDICTION : FindorCreate(TfrmJurisdiction, iProgramID).Show;

    IDXBATCHREPORT : FindorCreate(TfrmBatchReport, iProgramID).Show;

    IDXFEEBASIS : FindorCreate(TfrmFeeBasis, iProgramID).Show;

    IDXCHEQREQ:
      with TfrmCheqReqNew.Create(Self) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXCHEQREQS: FindorCreate(TfrmCheqReqs, iProgramID).Show;


    IDXSIGNATURE : FindorCreate(TfrmSignature, iProgramID).Show;


    IDXCHEQUE: // FindOrCreateClassic(TfrmCheque, iProgramID).Show;
      begin
        LfmCheque := TfrmCheque.Create(Self);
        LfmCheque.Tag := iProgramID;
        LfmCheque.ShowModal;
      end;

    IDXCHEQUEPRESENT: FindorCreate(TfrmChequePresent, iProgramID).Show;

    IDXCHEQUES: FindorCreate(TfrmCashPay, iProgramID).Show;

    idxCLIENT:
      with TfrmClients.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        ChooseClient;
      end;

    IDXCLIENTGROUPS: FindorCreate(TfrmClientGroups, iProgramID).Show;

    IDXCLIENTNEW:
      begin
        if(SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) then
        begin
          if not FormExists(frmPhoneBookSearch) then
            Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
          frmPhoneBookSearch.SelectingClients := True;
          if(frmPhoneBookSearch.ShowModal() = mrOk) then
          begin
            LfrmClients := TfrmClients.Create(Application);
            LfrmClients.DisplayClient(frmPhoneBookSearch.NClient);
          end;
        end else
        begin
          LfmPBNew := TfrmPhoneBookNew.Create(frmDesktop);
          try
            LfmPBNew.Tag := IDXCLIENTNEW;
            LfmPBNew.NewClient := True;
            LfmPBNew.bDoShow := True;
            LfmPBNew.SetupForClient(0);
            if(LfmPBNew.ShowModal() = mrOk) then
            begin
              Application.CreateForm(TfrmClients, LfrmClients);
              frmDesktop.AddFormToTab(LfrmClients, IDXCLIENTNEW);
//              LfmClients := TfrmClients.Create(frmDesktop);
              LfrmClients.DisplayClient(LfmPBNew.NClient);
              LfrmClients.Show();
            end;
          finally
            FreeAndNil(LfmPBNew);
          end;
        end;
      end; 

    IDXCODERULES: FindorCreate(TfrmCodeRules, iProgramID).Show;

    IDXPRINTERS : FindorCreate(TfrmPrinter, iProgramID).Show;

    IDXCREDITORS:
      begin
         if dmAxiom.CreditorsExist then
         begin
            if not FormExists(frmCreditorSearch) then
                Application.CreateForm(TfrmCreditorSearch, frmCreditorSearch);
            if (frmCreditorSearch.ShowModal = mrOk) then
            begin
               if (frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').IsNull = False) then
               begin
                  Application.CreateForm(TfrmCreditors, LfrmCreditor);
                  with LfrmCreditor do
                  begin
                     LfrmCreditor.NCreditor := frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger;
                     Tag := iProgramID;
                     AddFormToTab(LfrmCreditor, iProgramID);

//                     DisplayCreditor(frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger);
//                     ChooseCreditor;
//                   Show;
                  end;
               end;
            end;
        end
        else
          with TfrmPhoneBookNew.Create(frmDesktop) do
          begin
            Tag := iProgramID;
            SetupForCreditor(0);
            ShowModal;
          end;
      end;

    IDXCREDITORNEW:
    begin
       LfmPBNew := TfrmPhoneBookNew.Create(frmDesktop);
       try
          LfmPBNew.Tag := iProgramID;
          LfmPBNew.SetupForCreditor(0);
          LfmPBNew.bDoShow := False;
          if (LfmPBNew.ShowModal = mrOk) then
          begin
             Application.CreateForm(TfrmCreditors, LfrmCreditors);
             LfrmCreditors.bFromCreation := True;
             AddFormToTab(LfrmCreditors, iProgramID);
//             LfrmCreditors := FindorCreate(TfrmCreditors, iProgramID).Show;
             LfrmCreditors.DisplayCreditor(LfmPBNew.qCreditor.FieldByName('NCREDITOR').AsInteger);
             LfrmCreditors.Show;
             pageForms.ActivePage.Caption := 'Creditor: ' + LfrmCreditors.qryCreditor.FieldByName('SEARCH').AsString;
          end;
       finally
         FreeAndNil(LfmPBNew);
       end;
    end;

    IDXENTITY:     FindorCreate(TfrmEntity, iProgramID).Show;

    IDXDATAFORM:   FindorCreate(TfrmDataForm, iProgramID).Show;

    IDXDATAREPORT: FindorCreate(TfrmMatterReportBuilder, iProgramID).Show;

    IDXDIARY:  FindorCreate(TfrmDiary99, iProgramID).Show;
      {begin
        if(Not Assigned(FOutlookIntegrator)) then
          FOutlookIntegrator := TOutlookIntegrator.Create();
        if(FOutlookIntegrator.UseOutlook) then
          FindorCreate(TfmOutlookDiary,iProgramID).Show
        else
          FindorCreate(TfrmDiary, iProgramID).Show;
      end;  }

    IDXDIARYLOC: FindorCreate(TfrmDiaryLoc, iProgramID).Show;

    IDXDIARYJUR: FindorCreate(TfrmDiaryJur, iProgramID).Show;

    IDXDIARYEVT: FindorCreate(TfrmDiaryEvt, iProgramID).Show;

    IDXDIARYNEW:
      with TfrmDiaryNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXDOCSEARCH: FindorCreate(TfrmDocSearch, iProgramID).Show;

    idxEMPLOYEES: FindorCreate(TfrmEmployees, iProgramID).Show;

//    idxEXPLORER: FindorCreate(TfrmOverview, iProgramID).Show;

//    IDXFEEBATCH: FindorCreate(TfrmFeeBatch, iProgramID).Show;

//    IDXFEELIST: FindorCreate(TfrmFeeList, iProgramID).Show;

    IDXNEWFEELIST: FindorCreate(TfrmFeeListNew, iProgramID).Show;

    IDXFEENEW:
      with TfrmFeeNew.Create(frmDesktop, False) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXFEERATECODE: FindorCreate(TfrmFeeCode, iProgramID).Show;

//    IDXFEETYPE: FindorCreate(TfrmFeeType, iProgramID).Show;

    IDXFIELDTYPE: FindorCreate(TfrmFieldTypes, iProgramID).Show;

    IDXGENDER: FindorCreate(TfrmGenders, iProgramID).Show;

    IDXINVOICES: FindorCreate(TfrmBills, iProgramID).Show;

    IDXLEDGER: FindorCreate(TfrmLedgers, iProgramID).Show;

    IDXJOURNAL: FindorCreate(TfrmJournals, iProgramID).Show;

    idxJOURNALBILL: FindorCreate(TfrmJournalBill, iProgramID).Show;

{      with TfrmJournalBill.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;    }

    idxMATTER:
      with TfrmMatters.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        MattersFind;
//        ChooseMatter;
      end;

    idxMATTERJOURNAL: FindorCreate(TfrmJournalMatter, iProgramID).Show;
      {with TfrmJournalMatter.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;   }

    idxMATTERTYPES: FindorCreate(TfrmMatterType, iProgramID).Show;

    idxMONITORIMPORT: FindorCreate(TfrmMonitorImport, iProgramID).Show;

    IDXOPTIONSUSER: FindorCreate(TfrmOptionsUser, iProgramID).Show;

    IDXPASSWORD:
      with TfrmPassword.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        LoadEmp(dmAxiom.UserID);
      end;

    IDXPETTYCASH: FindorCreate(TfrmPettyCash, iProgramID).Show;

    IDXPETTYJOURNAL: FindorCreate(TfrmPettyJournal, iProgramID).Show;

    idxPHONEBOOK:
      with TfrmPhonebook.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        ChoosePhonebook;
//        Show;
      end;

    IDXPHONEBOOKGROUP: FindorCreate(TfrmPhonebookGroups, iProgramID).Show;

    IDXPHONEBOOKNEW:
         if dmAxiom.Security.Phonebook.Create then
         begin
            LfmPBNew := TfrmPhoneBookNew.Create(frmDesktop);
            try
               LfmPBNew.Tag := iProgramID;
               LfmPBNew.bDoShow := False;
               if(LfmPBNew.ShowModal = mrOk) then
               begin
                  LfrmPhoneBook := TfrmPhoneBook.Create(Self);
                  LfrmPhoneBook.Search := IntToStr(LfmPBNew.NName);
                  LfrmPhoneBook.NName := LfmPBNew.NName;
                  frmDesktop.AddFormToTab(LfrmPhoneBook, iProgramID);
                  LfrmPhoneBook.Show;
               end;
            finally
              FreeAndNil(LfmPBNew);
            end;
         end;

       {     with TfrmPhoneBookNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        if ShowModal = mrOk then
      end; }

    IDXPOSTCODE: FindorCreate(TfrmPostcode, iProgramID).Show;

    IDXPOSTCODESEARCH: FindorCreate(TfrmPostcodeSearch, iProgramID).Show;

//    IDXPRECS: FindorCreate(TfrmTaskExplorer, iProgramID).Show;

    IDXPRECCATEGORIES: FindorCreate(TfrmPrecCategories, iProgramID).Show;

    IDXQUICKCODES: FindorCreate(TfrmQuickCodes, iProgramID).Show;

    IDXRECEIPT: //FindorCreate(TfrmReceipt,iProgramID).Show;
      begin
        LfrmReceipt := TfrmReceipt.Create(Self);
        LfrmReceipt.Tag := iProgramID;
        LfrmReceipt.Show;
      end;

    IDXRECEIPTS: FindorCreate(TfrmCashRcp, iProgramID).Show;

    IDXRELATEDICT: FindorCreate(TfrmRelateDict, iProgramID).Show;

    IDXREPORTS: FindorCreate(TfrmReports, iProgramID).Show;

    idxSCALECOSTS: FindorCreate(TfrmScaleCosts, iProgramID).Show;

    idxSOUNDS: FindorCreate(TfrmSounds, iProgramID).Show;

    idxSOFTLOGIMPORT: FindorCreate(TfrmSoftlogImport, iProgramID).Show;

    idxSUNDRY:
      with TfrmSundryNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXSUNDRYBATCH: FindorCreate(TfrmSundryBatch, iProgramID).Show;

    IDXSUNDRYERROR: FindorCreate(TfrmSundryError, iProgramID).Show;

    idxSUNDRYLIST: FindorCreate(TfrmSundryList, iProgramID).Show;

    idxSUNDRYTYPES: FindorCreate(TfrmSundryType, iProgramID).Show;

    idxSYSTEMFILE: FindorCreate(TfrmSystemFile, iProgramID).Show;

{    IDXTASKTEMPNEW:
      with TfrmTaskTempNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;   }

    IDXTASKS: FindorCreate(TfrmProjects, iProgramID).Show;

    IDXTAXTYPES: FindorCreate(TfrmTaxTypes, iProgramID).Show;

    IDXTRUSTJOURNAL: FindorCreate(TfrmTrustJournal, iProgramID).Show;

    IDXTIMESHEET: FindorCreate(TfrmTimeSheet, iProgramID).Show;

    IDXWRITEOFF: FindorCreate(TfrmWriteOff, iProgramID).Show;
{      with TfrmWriteOff.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;     }

    IDXWRITEOFFDISB: FindorCreate(TfrmWriteOffDisb, iProgramID).Show;
{      with TfrmWriteOffDisb.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end; }

//    IDXWORKFLOWTYPE: FindorCreate(TfrmWorkflowType, iProgramID).Show;

//    IDXYEAREND1: FindorCreate(TfrmYearEnd1, iProgramID).Show;

//    IDXYEAREND2: FindorCreate(TfrmYearEnd2, iProgramID).Show;

    IDXWORKFLOWDOCTEMPLATE:  FindorCreate(TfmWorkFlowDocTemplates, iProgramID).Show;
    IDXWORKFLOWTASKTEMPLATE: FindorCreate(TfmWorkFlowTaskTemplates, iProgramID).Show;
    IDXWORKFLOWADMINDOCS:    FindorCreate(TfmWorkFlowAdminDocs, iProgramID).Show;
    // AES 20-May-2009
    IDXWORKFLOWTODO:         FindorCreate(TfmWorkFlowToDo, iProgramID).Show;
{    IDXWORKFLOWTODO:
         begin
            LfmWorkFlowToDo := TfmWorkFlowToDo.Create(Self);
            fdTab.AddForm(LfmWorkFlowToDo, True);
            Tag := iProgramID;
            Show;
         end; }
    IDXBUDGETS:              FindorCreate(TfmBudgets, iProgramID).Show;
{    IDXWORKFLOWDATAFORM:     FindorCreate(TfmWorkFlowDataForms, iProgramID).Show;}
    IDXDEBTORSTATUSLIST:     FindorCreate(TfmDebtorStatusList, iProgramID).Show;
    IDXEVENTTYPES:           FindorCreate(TfmMarketEventEventTypes, iProgramID).Show;
    IDXDOCUMENTTYPES:        FindorCreate(TfrmDocumentTypeList, iProgramID).Show;
    IDXEVENTS:               FindorCreate(TfrmMarketEvent, iProgramID).Show;
    IDXEVENTPARTICIPANTS:    FindorCreate(TfrmMarketEventParticipants, iProgramID).Show;
    {
         with TfrmMarketEventParticipants.Create(frmDesktop) do
         begin
            Tag := iProgramID;
            InitialiseScreen(True);
            Show;
         end;
         }
    IDXEVENTLIST:            FindorCreate(TfrmEventList, iProgramID).Show;
    IDXSOLICITORCODE:        FindorCreate(TfrmSolicitorCode, iProgramID).Show;
    IDXCOURTADDRESS:         FindorCreate(TfrmCourtAddress, iProgramID).Show;
    IDXINDUSTRY:             FindorCreate(TfrmIndustryNew, iProgramID).Show;
    IDXINTEREST:             FindorCreate(TfrmInterestNew, iProgramID).Show;
    IDXTOOLKIT:              //FindorCreate(TfrmToolkit, iProgramID).ShowModal;
      with TfrmToolkit.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        ShowModal;
        frmToolkit.Free;
      end;

//    IDXARCHIVESEARCH:        FindorCreate(TfrmArchiveSearch, iProgramID).Show;
    IDXMARKETREFERRAL:       FindorCreate(TfrmMarketReferralOther, iProgramID).Show;
    IDXTIMEDIARY:
         begin
            if dmAxiom.FeeEarner = 'Y' then
               FindorCreate(TfrmTimeDiary, iProgramID).Show
            else
               MsgInfo('This functionality is only available for Fee Earners.');
         end;
    IDXEMPTYPE:              FindorCreate(TfrmEmpType, iProgramID).Show;
    IDXBATCHCHEQUEPRINT:
         with TfrmBatchChequePrint.Create(frmDesktop) do
         begin
            Tag := iProgramID;
            ShowModal;
            frmBatchChequePrint.Free;
         end;
    IDXAXRPTBUILDER:
         BEGIN
            OldDir := GetCurrentDir;
            SetCurrentDir(ExtractFilePath(Application.EXEName));
            regAxiom := TRegistry.Create;
            regAxiom.RootKey := HKEY_CURRENT_USER;

            if regAxiom.OpenKey(dmAxiom.RegistryRoot, False) then
            begin
               sNetworkDir := regAxiom.ReadString('NetworkDir');
               //if the standard network dir is null, look where the setup program defaults to
               if sNetworkDir = '' then
               begin
                  regAxiom.OpenKey('', True);
                  sNetworkDir := regAxiom.ReadString('NetworkDir');
               end;
               if sNetworkDir = '' then
                 sNetworkDir := ExtractFilePath(Application.EXEName);
               if FileExists(sNetworkDir + 'Reports\INSIGHTREPORTBUILDER.EXE') then
                  ExecuteFile(sNetworkDir + 'Reports\INSIGHTREPORTBUILDER.EXE', dmAxiom.UserID, '', 0,DocErrMsg)
               else
                  ExecuteFile(sNetworkDir + 'Reports\AXIOMREPORTBUILDER.EXE', dmAxiom.UserID, '', 0, DocErrMsg);
            end;
            regAxiom.Free;
            SetCurrentDir(OldDir);
         end;
    IDXDEBTORWORKTEMP:      begin
                              if SystemString('collections_mgr_reg') = C_COLLECTIONSPASSWORD then
                                 FindorCreate(TfrmDebtorTaskTemplate,iProgramID).show
                              else
                                 MsgInfo(dmAxiom.Registered_Message);
                            end;
    IDXDEBTORWORKDUE:       begin
                              if SystemString('collections_mgr_reg') = C_COLLECTIONSPASSWORD then
                                 FindorCreate(TfrmDebtorTaskDue,iProgramID).show
                              else
                                 MsgInfo(dmAxiom.Registered_Message);
                            end;
    IDXACCTPAYABLE:         FindorCreate(TfrmAcctPayable,iProgramID).show;
    IDXDEPOSITTRANS:        FindorCreate(TfrmInvestmentTransactions,iProgramID).show;
    IDXDEPOSITS:            FindorCreate(TfrmDepositAccount,iProgramID).show;
    IDXTEAMS:               FindorCreate(TfrmTeams,iProgramID).show;
    IDXEXPRESSDEBTORNOTES:  FindorCreate(TfrmDebtorNotesEntry,iProgramID).show; 
    IDXDASHBOARD:           FindorCreate(TfrmDashboard,iProgramID).show;
    IDXCRYSTALREPORTDEF:    FindOrCreate(TfrmCrystalReportDef,iProgramID).show;
    IDXDASHBOARD_TEAM:      FindorCreate(TfrmDashboard_Team,iProgramID).show;
    IDXDASHBOARD_IND:       FindorCreate(TfrmDashboard_Ind,iProgramID).show;

    IDXFEEAUTHORITY:        begin
                              with TfrmFeeAuthority.Create(frmDesktop) do
                              begin
                                 Tag := iProgramID;
                                 ShowModal;
                                 frmFeeAuthority.Free;
                              end;
                            end;

    IDXEMAILS:             begin
                              if SystemString('email_reg') = C_EMAILPASSWORD then
                                 FindorCreate(TfrmOutLookDiaryNew,iProgramID).show
                              else
                                 MsgInfo(dmAxiom.Registered_Message);
                           end;

    IDXDOCUMENTLIST:       begin
                              if SystemString('docs_reg') = C_DOCUMENTPASSWORD then
                                 FindorCreate(TfrmDocSearch{TfrmDocumentList},iProgramID).show
                              else
                                 MsgInfo(dmAxiom.Registered_Message);
                           end;

    IDXARCHIVETYPE:         FindorCreate(TfrmArchiveType, iProgramID).Show;

    IDXMATTERCARRIAGEMAINT:
         BEGIN
            OldDir := GetCurrentDir;
            SetCurrentDir(ExtractFilePath(Application.EXEName));
            regAxiom := TRegistry.Create;
            regAxiom.RootKey := HKEY_CURRENT_USER;

            if regAxiom.OpenKey(dmAxiom.RegistryRoot, False) then
            begin
               sNetworkDir := regAxiom.ReadString('NetworkDir');
               //if the standard network dir is null, look where the setup program defaults to
               if sNetworkDir = '' then
               begin
                  regAxiom.OpenKey('', True);
                  sNetworkDir := regAxiom.ReadString('NetworkDir');
               end;
               if sNetworkDir = '' then
                  sNetworkDir := ExtractFilePath(Application.EXEName);
               AHandle := ExecuteFile(sNetworkDir + 'MatterCarriageTransfer.exe', dmAxiom.UserID, '', 0, DocErrMsg);
               if AHandle < 33 then
                  MsgInfo(dmAxiom.Registered_Message);
            end;
            regAxiom.Free;
            SetCurrentDir(OldDir);
         end;

    IDXDTSEARCH: FindorCreate(TfrmdtSearch, iProgramID).Show;
    IDXPRECCLASSIFICATION: FindorCreate(TfrmPrecClassifications, iProgramID).Show;
    IDXEMPLOYEELIST: FindorCreate(TfrmEmployeeList, iProgramID).Show;
    IDXUSERSESSIONS: FindorCreate(TfrmUserSessions, iProgramID).Show;
    IDXBUDGETIMP: FindorCreate(TfrmBudgetImport, iProgramID).Show;
    IDXGLREPORTGRP: FindorCreate(TfrmGLReportGrp, iProgramID).Show;
//    IDXSECUREMATTERS: FindorCreate(TfrmSecureMatters, iProgramID).Show;
    IDXMATTERNOTESTYPE: FindorCreate(TfrmMatterNoteTypes, iProgramID).Show;
    IDXBULKBILLS: FindorCreate(TfrmBulkBills, iProgramID).Show;
{    IDXQUICKMATTERS:       begin
                              with TfrmQuickMatter.Create(frmDesktop) do
                              begin
                                 Tag := iProgramID;
                                 ShowModal;
                                 frmQuickMatter.Free;
                              end;
                           end;  }
    IDXAUTOGENLIST: FindorCreate(TfrmAutoGenList, iProgramID).Show;
    IDXINVOICESLIST: FindorCreate(TfrmInvoiceList, iProgramID).Show;
    IDXPHONEBOOKIMP: FindorCreate(TfrmPhonebookImport, iProgramID).Show;
    IDXEMPSETTINGSMAINT: FindorCreate(TfrmEmpSettingsMaint, iProgramID).Show;
//    IDXMARKETINGDETAILS: FindorCreate(TfrmMarketingDetails, iProgramID).Show;
    IDXRELATIONSHIPSTATUS: FindorCreate(TfrmMarketRelationshipStatus, iProgramID).Show;
    IDXRELATIONSHIPTYPE: FindorCreate(TfrmMarketRelationshipTypes, iProgramID).Show;
    IDXRELATIONSHIPACTION: FindorCreate(TfrmMarketRelationshipAction, iProgramID).Show;
    IDXRESEARCHLIST: FindorCreate(TfrmResearchList, iProgramID).Show;
    IDXADVREGION: FindorCreate(TfrmAdvRegionMaint, iProgramID).Show;
    IDXADVERTISING: FindorCreate(TfrmAdvertising, iProgramID).Show;
    IDXSUPPLIER: FindorCreate(TfrmAdvSupplierMaint, iProgramID).Show;
    IDXADVMEDIA: FindorCreate(TfrmAdMediaMaint, iProgramID).Show;
    IDXSUBMEDIA: FindorCreate(TfrmAdvSubMediaMaint, iProgramID).Show;
    IDXCOUNTRYLIST: FindOrCreate(TfrmCountryList, iProgramID).Show;
    IDXBANKTRANSFER: begin
                        try
                           with TfrmTransferMoney.Create(frmDesktop) do
                           begin
                              Tag := iProgramID;
                              ShowModal;
                           end;
                        finally
                           frmTransferMoney.Free;
                        end;
                     end;
    IDXEMAILTEMPLATE: FindOrCreate(TfrmEmailTemplates, iProgramID).Show;
    IDXWIPWRITEOFF: FindOrCreate(TfrmWIPWriteOff, iProgramID).Show;
    IDXBANKRECADJ: FindOrCreate(TfrmBankRecEdit, iProgramID).Show;
    IDXPROCNUM: FindOrCreate(TfrmPracNum, iProgramID).Show;
    IDXDEBTORTASKCODES: FindOrCreate(TfrmDebtorTaskCodes, iProgramID).Show;
    IDXENTITYGROUP: FindOrCreate(TfrmEntityGroups, iProgramID).Show;
    IDXEXPENSETEMPLATE: FindOrCreate(TfrmExpenseTemplates, iProgramID).Show;
    IDXRECEIPTREQNEW: begin
                       with TfrmReceiptReqNew.Create(frmDesktop) do
                       begin
                          Tag := iProgramID;
                          ShowModal;
                        end;        //FindOrCreate(TfrmReceiptReqNew, iProgramID).Show;
                    end;
    IDXPHONEBOOKSTATUS: FindOrCreate(TfrmPhonebook_Status, iProgramID).Show;
    IDXRECEIPTREQS: FindOrCreate(TfrmReceiptReqs, iProgramID).Show;
    IDXNARRATIVE: FindOrCreate(TfrmReceiptReqNarrative, iProgramID).Show;
    IDXDOCFOLDERTMPL: FindOrCreate(TfrmDoc_Fldr_Tmpl, iProgramID).Show;
    IDXDOCINDEXUSERS: FindOrCreate(TfrmIndexConfig, iProgramID).Show;
  end;
  Screen.Cursor := csrPrev;  // Restore cursor
end;

function TfrmDesktop.AddFormToTab(aformclass: TForm; Icon: integer): TCustomForm;
begin
   aformClass.DragKind := dkDock;
   aformClass.DragMode := dmManual; //dmAutomatic;
   aformclass.WindowState := wsMaximized;
   aformclass.ManualDock(frmDesktop.pageForms);
   pageForms.ActivePageIndex := frmDesktop.pageForms.PageCount - 1;
   pageForms.Pages[frmDesktop.pageForms.PageCount - 1].TabVisible := True;
   aformclass.Show;

   Result := nil; // ToDo: This doesn't need to be a function. Called in many places.
end;

function TfrmDesktop.FindOrCreate(aformclass: TFormclass; Icon: integer; ADisplay: boolean = True): TCustomForm;
var
   i: Integer;
   frmLocal: TForm;
begin
   for i:= 0 to pageForms.PageCount -1 do
   begin
      if TForm(pageForms.Pages[i].Controls[0]) is aFormclass then
      begin
         pageForms.ActivePageIndex := i;
         try
            Result := TForm(pageForms.Pages[i].Controls[0]);
            Result.Tag := Icon;
            Exit;
         except
            //
         end;
      end;
   end;

   frmLocal := aformclass.Create(frmDesktop);
   frmLocal.DragKind := dkDock;
   frmLocal.DragMode := dmManual;  //dmAutomatic;

   frmLocal.WindowState := wsMaximized;
   frmLocal.ManualDock(frmDesktop.pageForms);
   frmLocal.Show;
   frmDesktop.pageForms.ActivePageIndex := frmDesktop.pageForms.PageCount - 1;

 //  frmLocal := aformclass.Create(Self);
//   fdTab.AddForm(frmLocal, ADisplay);
   Result := frmLocal;
end;

procedure TfrmDesktop.btnAddToFavouritesClick(Sender: TObject);
begin
   AddShortcut(tvLaunch.Selected.ImageIndex, tvLaunch.Selected.Text);
end;

procedure TfrmDesktop.lvDesktopStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
//   FDragging := True;
end;

procedure TfrmDesktop.UpdateStartupStatus(progID: integer; startup: string);
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;
      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;

         dmAxiom.uniInsight.StartTransaction;
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('UPDATE EMPCUTS SET startup = :STARTUP WHERE EMP = :emp AND IMAGEINDEX = :progID');

         loQry.ParamByName('emp').AsString := dmAxiom.UserID;
         loQry.ParamByName('progID').AsInteger := progID;
         loQry.ParamByName('startup').AsString := startup;
         loQry.Execute;
      finally
         loQry.Close;
         dmAxiom.uniInsight.Commit;
         FreeAndNil(loQry);
      end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
end;

procedure TfrmDesktop.popDesktopAddTostartupClick(Sender: TObject);
begin
   if lvDesktop.Selected.ImageIndex > 0 then
      UpdateStartupStatus(lvDesktop.Selected.ImageIndex, 'Y');
end;

procedure TfrmDesktop.popRemoveFromStartupClick(Sender: TObject);
begin
   UpdateStartupStatus(lvDesktop.Selected.ImageIndex, 'N');
end;

procedure TfrmDesktop.dxMnuStartupPopup(Sender: TObject);
var
  iCtr: integer;
  TotalItems: integer;
  menuReopen: TdxBarButton;
begin
   TotalItems := dxMnuStartup.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 1 do
      dxMnuStartup.ItemLinks.Delete(iCtr);

  dxMnuStartup.ItemLinks.Add; // ToDo: Is this needed?
   with qryStartupScreens do
   begin
      Close;
      ParamByName('emp').AsString := dmAxiom.UserID;
      Open;
      While not eof do
      begin
         menuReopen := TdxBarButton.Create(nil);
         menuReopen.Caption := FieldByName('NAME').AsString;
         menuReopen.ImageIndex := FieldByName('IMAGEINDEX').AsInteger;
         dxMnuStartup.ItemLinks.Add.Item := menuReopen;
         next;
      end;
   end;
end;

procedure TfrmDesktop.pmLaunchPopup(Sender: TObject);
begin
   if (tvLaunch.Selected.HasChildren) then
   begin
      btnAddToStartup.Enabled := False;
      btnRemoveFromStartup.Enabled := False;
      btnAddToFavourites.Enabled := False;
   end
   else
   begin
      if (tvLaunch.SelectionCount > 0) then
      begin
         btnAddToFavourites.Enabled := True;
         if IsInStartUpStatus(tvLaunch.Selected.ImageIndex) then
         begin
            btnAddToStartup.Visible := ivNever;
            btnRemoveFromStartup.Visible := ivAlways;
            btnRemoveFromStartup.Enabled := True;
         end
         else
         begin
            btnAddToStartup.Visible  := ivAlways;
            btnRemoveFromStartup.Visible := ivNever;
            btnAddToStartup.Enabled := True;
         end;
      end;
   end;
end;

procedure TfrmDesktop.btnAddToStartupClick(Sender: TObject);
begin
   UpdateStartupStatus(tvLaunch.Selected.ImageIndex, 'Y');
end;

procedure TfrmDesktop.btnAutoTimerClick(Sender: TObject);
begin
   if btnAutoTimer.Down = True then
      btnAutoTimer.Caption := 'Auto Timer On'
   else
      btnAutoTimer.Caption := 'Auto Timer Off';
end;

procedure TfrmDesktop.btnRemoveFromStartupClick(Sender: TObject);
begin
   UpdateStartupStatus(tvLaunch.Selected.ImageIndex, 'N');
end;

procedure TfrmDesktop.chkIncludeClosedPropertiesChange(Sender: TObject);
begin
   if boolean(chkIncludeClosed.EditValue) then
      SettingSave('DESKTOP','SHOWALLMATTERS',1)
   else
      SettingSave('DESKTOP','SHOWALLMATTERS',0);
end;

procedure TfrmDesktop.CloseAllOpentabs1Click(Sender: TObject);
var
  i: integer;
begin
   with pageforms do
   begin
       for i := (TabCount -1) downto 0 do
          Pages[i].Free;
   end;
end;

procedure TfrmDesktop.cmbClientFindPropertiesCloseUp(Sender: TObject);
begin
   try
      if (cmbClientFind.Text <> '') and
         (cmbClientFind.Text <> 'Type a client to find') then
      begin
         LoadClient;
         cmbClientFind.Text := 'Type a client to find';
      end;
   except
      ;
   end;
end;

procedure TfrmDesktop.LoadPhonebook;
var
  LfrmPhoneBook: TfrmPhoneBook;
  LNName: integer;
begin
   LfrmPhoneBook := TfrmPhoneBook.Create(Self);
   LfrmPhoneBook.Tag := imgPHONEBOOK;

   if cmbPhonebookFind.Text = 'Search...' then
      LfrmPhoneBook.ChoosePhonebook
   else
   begin
      if (VarIsNull(cmbPhonebookFind.EditValue) or
         (cmbPhonebookFind.EditValue = 'Type a contact name to find') or
         (cmbPhonebookFind.EditValue = '')) then
         LNName := 0
      else
      begin
         try
            LNName := cmbPhonebookFind.EditValue;
         except
            LNName := 0;
         end;
      end;

      if (LNName > 0) then
      begin
         LfrmPhoneBook.NName := LNName; //  cmbPhonebookFind.Properties.DataController.GetValue(cmbPhonebookFind.ItemIndex - 1 ,1);
         LfrmPhoneBook.Search := IntToStr(LNName);  //cmbPhonebookFind.Properties.DataController.GetValue(cmbPhonebookFind.ItemIndex - 1 ,1);
         if pagMainControl.ActivePageIndex = 0 then
            AddFormToTab(LfrmPhoneBook,1);
      end;
   end;

   cmbPhonebookFind.Text := '';
end;

procedure TfrmDesktop.LoadClient();
var
   LfrmClients: TfrmClients;
   LNClient: string;
begin
   if cmbClientFind.Text = 'Search...' then
   begin
      LfrmClients := TfrmClients.Create(Self);
      LfrmClients.Tag := imgCLIENT;
      LfrmClients.ChooseClient;
      cmbClientFind.Text := '';
   end
   else
   begin
      LNClient := cmbClientFind.Text;
      if TableString('CLIENT','CODE', LNClient, 'NCLIENT') <> '' then
      begin
         LfrmClients := TfrmClients.Create(Self);
         LfrmClients.Tag := imgCLIENT;

         if pagMainControl.ActivePageIndex = 0 then
            AddFormToTab(LfrmClients,1);
         LfrmClients.DisplayClient(TableString('CLIENT','CODE', LNClient, 'NCLIENT'));  //  cmbClientFind.Properties.DataController.GetValue(cmbClientFind.ItemIndex-1 ,1));
      end;
      cmbClientFind.Text := '';
   end; 
end;

procedure TfrmDesktop.LoadClient(Sender: TObject; clientid: string);
var
   LfrmClients: TfrmClients;
   LNClient: string;
begin
   LfrmClients := TfrmClients.Create(Self);
   LfrmClients.Tag := imgCLIENT;

   if clientid = 'Search...' then
      LfrmClients.ChooseClient
   else
   begin
      LNClient := clientid;
      if pagMainControl.ActivePageIndex = 0 then
         AddFormToTab(LfrmClients,1);
      LfrmClients.DisplayClient(TableInteger('CLIENT','CODE', LNClient, 'NCLIENT'));  //  cmbClientFind.Properties.DataController.GetValue(cmbClientFind.ItemIndex-1 ,1));
   end;

   if (Sender is TcxLookupComboBox) then
      TcxLookupComboBox(Sender).Text := '';  // cmbClientFind.Text := '';
   if (Sender is TdxBarEdit) then
      TdxBarEdit(Sender).Text := '';

end;

procedure TfrmDesktop.cmbPhonebookFindPropertiesCloseUp(Sender: TObject);
begin
   if (cmbPhonebookFind.Text <> '') and
      (cmbPhonebookFind.Text <> 'Type a contact name to find') then
   begin
      LoadPhonebook;
      cmbPhonebookFind.Text := 'Type a contact name to find';
   end;
end;

procedure TfrmDesktop.cmbPhonebookFindPropertiesInitPopup(Sender: TObject);
begin
   qryPhonebookMRU.Close;
   qryPhonebookMRU.Open;
end;

procedure TfrmDesktop.cmbClientFindPropertiesInitPopup(Sender: TObject);
begin
   qryClientMRU.Close;
   qryClientMRU.Open;
end;

procedure TfrmDesktop.cmbMatterFindClick(Sender: TObject);
begin
   if cmbMatterFind.Text = 'Type a matter to find' then
      cmbMatterFind.Text := '';
end;

procedure TfrmDesktop.cmbClientFindMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if TcxLookupComboBox(Sender).Text = 'Type a client to find' then
      TcxLookupComboBox(Sender).Text := '';
end;

procedure TfrmDesktop.cmbPhonebookFindMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if cmbPhonebookFind.Text = 'Type a contact name to find' then
      cmbPhonebookFind.Text := '';
end;

procedure TfrmDesktop.lvDesktopDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
   try
      AddShortcut(tvLaunch.Selected.ImageIndex, tvLaunch.Selected.Text);
      FDragging := False;
   except
      //
   end;
end;

procedure TfrmDesktop.lvDesktopDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TfrmDesktop.popDesktopClassicColourClick(Sender: TObject);
begin
   cdlgColour.Color := lvClassicDesktop.Color;
   if cdlgColour.Execute then
      lvClassicDesktop.Color := cdlgColour.Color;
   SettingSave('Desktop', 'Colour', lvClassicDesktop.Color);
end;

procedure TfrmDesktop.popDesktopClassicDeleteClick(Sender: TObject);
begin
   PlaySound('Delete');

   qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum AND CAPTION = :CAPTION AND IMAGEINDEX = :IMAGEINDEX';
   qryDesktop.ParamByName('Emp').AsString         := dmAxiom.UserID; // Emp
   qryDesktop.ParamByName('TypeNum').AsInteger    := 0;              // Type
   qryDesktop.ParamByName('IMAGEINDEX').AsInteger := lvClassicDesktop.Selected.ImageIndex;
   qryDesktop.ParamByName('CAPTION').AsString     := lvClassicDesktop.Selected.Caption;

   qryDesktop.ExecSQL();

   lvClassicDesktop.Selected.Delete();
end;

procedure TfrmDesktop.popDesktopClassicClearClick(Sender: TObject);
begin
   PlaySound('Delete All');

   qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum';
   qryDesktop.Params[0].AsString  := dmAxiom.UserID; // Emp
   qryDesktop.Params[1].AsInteger := 0;                // Type
   qryDesktop.ExecSQL();
   lvClassicDesktop.Items.Clear;
end;

procedure TfrmDesktop.popDesktopClassicDetailsClick(Sender: TObject);
begin
  lvClassicDesktop.ViewStyle := vsReport;
  popDesktopClassicDetails.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvClassicDesktop.ViewStyle));
end;

procedure TfrmDesktop.popDesktopClassicListClick(Sender: TObject);
begin
  lvClassicDesktop.ViewStyle := vsList;
  popDesktopClassicList.Checked := true;
  SettingSave('Desktop', 'ViewStyle', Ord(lvClassicDesktop.ViewStyle));
end;

procedure TfrmDesktop.popDesktopClassicLargeClick(Sender: TObject);
begin
   lvClassicDesktop.ViewStyle := vsIcon;
   popDesktopClassicLarge.Checked := true;
   SettingSave('Desktop', 'ViewStyle', Ord(lvDesktop.ViewStyle));
end;

procedure TfrmDesktop.popDesktopClassicSmallClick(Sender: TObject);
begin
   lvClassicDesktop.ViewStyle := vsSmallIcon;
   popDesktopSmall.Checked := true;
   SettingSave('Desktop', 'ViewStyle', Ord(lvClassicDesktop.ViewStyle));
end;

procedure TfrmDesktop.popSnapShotsClassicDetailClick(Sender: TObject);
begin
  lvClassicSnapshots.ViewStyle := vsReport;
  popSnapshotsClassicDetail.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvClassicSnapshots.ViewStyle));
end;

procedure TfrmDesktop.popSnapShotsClassicListClick(Sender: TObject);
begin
   lvClassicSnapshots.ViewStyle := vsList;
   popSnapshotsClassicList.Checked := true;
   SettingSave('Snapshot', 'ViewStyle', Ord(lvClassicSnapshots.ViewStyle));
end;

procedure TfrmDesktop.popSnapShotsClassicSmallClick(Sender: TObject);
begin
  lvSnapshots.ViewStyle := vsSmallIcon;
  popSnapshotsSmall.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvSnapshots.ViewStyle));
end;

procedure TfrmDesktop.popSnapShotsClassicLargeClick(Sender: TObject);
begin
  lvClassicSnapshots.ViewStyle := vsIcon;
  popSnapshotsClassicLarge.Checked := true;
  SettingSave('Snapshot', 'ViewStyle', Ord(lvClassicSnapshots.ViewStyle));
end;

procedure TfrmDesktop.popSnapShotsClassicColourClick(Sender: TObject);
begin
  cdlgColour.Color := lvClassicSnapshots.Color;
  if cdlgColour.Execute then
    lvClassicSnapshots.Color := cdlgColour.Color;
  SettingSave('Snapshot', 'Colour', lvClassicSnapshots.Color);
end;

procedure TfrmDesktop.popSnapShotsClassicClearAllClick(Sender: TObject);
begin
   PlaySound('Delete All');

   qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum';
   qryDesktop.Params[0].AsString  := dmAxiom.UserID; // Emp
   qryDesktop.Params[1].AsInteger := 1;              // Type
   qryDesktop.ExecSQL();
   lvClassicSnapshots.Items.Clear();
end;

procedure TfrmDesktop.popSnapShotsClassicDeleteClick(Sender: TObject);
begin
   PlaySound('Delete');

   qryDesktop.SQL.Text := 'DELETE FROM DESKTOP WHERE EMP = :Emp AND TYPE = :TypeNum AND CAPTION = :CAPTION AND IMAGEINDEX = :IMAGEINDEX';
   qryDesktop.ParamByName('Emp').AsString         := dmAxiom.UserID; // Emp
   qryDesktop.ParamByName('TypeNum').AsInteger    := 1;              // Type
   qryDesktop.ParamByName('IMAGEINDEX').AsInteger := lvClassicSnapshots.Selected.ImageIndex;
   qryDesktop.ParamByName('CAPTION').AsString     := lvClassicSnapshots.Selected.Caption;

   qryDesktop.ExecSQL();

   lvClassicSnapshots.Selected.Delete();
end;

procedure TfrmDesktop.popSnapShotsClassicAddHintClick(Sender: TObject);
begin
   lvClassicSnapshots.Selected.SubItems.Strings[0] := InputBox('Enter Reminder', 'Please enter a reminder for this Snapshot', lvSnapshots.Selected.subitems.strings[0]);

   qryDesktop.SQL.Text := 'UPDATE DESKTOP SET HINT = :HINT WHERE EMP = :Emp AND TYPE = :TypeNum AND CAPTION = :CAPTION AND IMAGEINDEX = :IMAGEINDEX';
   qryDesktop.ParamByName('Emp').AsString         := dmAxiom.UserID; // Emp
   qryDesktop.ParamByName('TypeNum').AsInteger    := 1;              // Type
   qryDesktop.ParamByName('IMAGEINDEX').AsInteger := lvClassicSnapshots.Selected.ImageIndex;
   qryDesktop.ParamByName('HINT').AsString        := lvClassicSnapshots.Selected.SubItems.Strings[0];
   qryDesktop.ParamByName('CAPTION').AsString     := lvClassicSnapshots.Selected.Caption;
   qryDesktop.ExecSQL();
end;

procedure TfrmDesktop.popSnapShotsClassicOpenClick(Sender: TObject);
begin
   lvClassicSnapshots.OnClick(Self);
end;

procedure TfrmDesktop.dxBarLargeButton10Click(Sender: TObject);

begin
   FindorCreate(TfrmdtSearch, 0).Show;
end;

procedure TfrmDesktop.dxBarLargeButton11Click(Sender: TObject);
begin
   FindorCreate(TfrmDocumentCenter, 0).Show;
end;

procedure TfrmDesktop.dxBarLargeButton6Click(Sender: TObject);
begin
   ShowWindows();
end;

procedure TfrmDesktop.lvClassicDesktopClick(Sender: TObject);
begin
{   if not FDragging then
   begin
      if lvClassicDesktop.SelCount > 0 then
         frmLaunch.Launch(lvClassicDesktop.Selected.ImageIndex);
   end;     }
end;

procedure TfrmDesktop.lvClassicSnapshotsClick(Sender: TObject);
var
  frmNewReports : TfrmReports;
  LfrmMatters: TfrmMatters;
  LfrmClients: TfrmClients;
  LfrmPhonebook: TfrmPhonebook;
  LfrmReports: TfrmReports;
//  LfrmArchive: TfrmArchive;
  LfrmTimesheet: TfrmTimesheet;
begin
  if lvClassicSnapshots.SelCount > 0 then
  begin
    case lvClassicSnapshots.Selected.ImageIndex of
      IDXMATTER : // Matter
        begin
           LfrmMatters := TfrmMatters.Create(frmDesktop);
           LfrmMatters.DisplayMatter(Copy(lvClassicSnapshots.Selected.Caption, 1, Pos(' ', lvClassicSnapshots.Selected.Caption)-1));
           LfrmMatters.Show;
           LfrmMatters.Tag := IMGMATTER;
        end;
      IDXCLIENT : // Client
        begin
          LfrmClients := TfrmClients.Create(Self);
          LfrmClients.DisplayClient(Copy(lvClassicSnapshots.Selected.Caption, 1, Pos(' ', lvClassicSnapshots.Selected.Caption)-1));
          LfrmClients.Show;
          LfrmClients.Tag := imgCLIENT;
        end;
      IDXPHONEBOOK : // PhoneBook
        begin
          LfrmPhonebook := TfrmPhonebook.Create(Self);
          LfrmPhonebook.Search := Copy(lvClassicSnapshots.Selected.Caption, 1, Pos(' ', lvClassicSnapshots.Selected.Caption)-1);
          LfrmPhonebook.Show;
          LfrmPhonebook.Tag := imgPHONEBOOK;
        end;
      IDXTIMESHEET : // Timesheet
        begin
          LfrmTimesheet := TfrmTimesheet.Create(Self);
          LfrmTimesheet.Show;
        end;
      IDXREPORT : // Report
        begin
          if not frmDesktop.WindowReShow('frmReports') then
          begin
            LfrmReports := TfrmReports.Create(Self);
            LfrmReports.LaunchReport(lvClassicSnapshots.Selected.Caption);
          end else
          begin
            frmNewReports := (Screen.ActiveForm as TfrmReports);
            frmNewReports.Show;
            frmNewReports.LaunchReport(lvClassicSnapshots.Selected.Caption);
          end;
        end;
{      IDXARCHIVE : // Archived Matter
        begin
          LfrmArchive := TfrmArchive.Create(Self);
          LfrmArchive.Show;
          LfrmArchive.DisplayArchive(Copy(lvClassicSnapshots.Selected.Caption, 1, Pos(' ', lvClassicSnapshots.Selected.Caption)-1));
          LfrmArchive.Tag := imgARCHIVE;
        end;   }
    end;
  end;
end;

procedure TfrmDesktop.dpNavBarAutoHideChanged(
  Sender: TdxCustomDockControl);
begin
   if dpNavBar.AutoHide then
      dmAxiom.ShowMenuBar := 'N'
   else
      dmAxiom.ShowMenuBar := 'Y';
end;

procedure TfrmDesktop.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   LfrmEntityChange: TfrmEntityChange;
begin
   LfrmEntityChange := TfrmEntityChange.Create(Self);
   try
      LfrmEntityChange.ShowModal;
//      beEntity.Text := qryEntitys.FieldByName('NAME').AsString;
      if TableInteger('ENTITY','CODE', dmAxiom.Entity,'COLOUR') > 0 then
      begin
         beEntity.Style.Color := TableInteger('ENTITY','CODE', dmAxiom.Entity,'COLOUR');
         dxBarLookupEntity.Color := TableInteger('ENTITY','CODE', dmAxiom.Entity,'COLOUR');
      end
      else
      begin
         beEntity.Style.Color := clWindow;
         dxBarLookupEntity.Color := clWindow;
      end;
   finally
      LfrmEntityChange.Free;
   end;
end;

procedure TfrmDesktop.pageFormsChange(Sender: TObject);
begin
   TabIndex := -1;
end;

procedure TfrmDesktop.pageFormsDrawTabEx(AControl: TcxCustomTabControl;
  ATab: TcxTab; Font: TFont);
begin
   if ATab.IsMainTab then
      Font.Style := [fsBold];
end;

procedure TfrmDesktop.pageFormsPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
   TabIndex := -1;
end;

procedure TfrmDesktop.pageFormsStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
//   DragObject.
end;

procedure TfrmDesktop.pageFormsTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click(
  Sender: TObject);
var
   ChildControl: TControl;
   APageCount: integer;
begin
   APageCount := pageForms.PageCount;
   TabIndex := pageForms.Controller.HitTest.HitTab.Index;
   ChildControl := pageForms.Pages[TabIndex].Controls[0];
   TForm(ChildControl).Close;
   if APageCount = pageForms.PageCount then
      pageForms.Pages[TabIndex].Destroy;

   pageforms.Repaint;
end;

procedure TfrmDesktop.pageFormsUnDock(Sender: TObject; Client: TControl;
  NewTarget: TWinControl; var Allow: Boolean);
begin
   Allow := False;
end;

procedure TfrmDesktop.Panel2Enter(Sender: TObject);
begin
   cxEventEditorClass := TfrmNewTaskNew;
end;

procedure TfrmDesktop.SchedulerGridConnectionEditEvent(
  Sender: TcxSchedulerGridConnection; AEvent: TcxSchedulerControlEvent;
  var AModified, AHandled: Boolean);
begin
   AHandled := True;
   with TfrmNewTaskNew.CreateEx(AEvent) do
   begin
      ShowModal;
      dmAxiom.qryTasks.Close;
      dmAxiom.qryTasks.Open;
   end;
end;

procedure TfrmDesktop.SchedulerGridConnectionInitEditDialog(
  Sender: TcxSchedulerGridConnection; var AEditInfo: TcxSchedulerEventEditInfo);
begin
   AEditInfo.DialogsStyle := TaskScheduler.DialogsStyle;
end;

procedure TfrmDesktop.cxSchedulerGridConnection1GridPopupMenuPopup(
  Sender: TcxSchedulerGridBuildInPopupMenu; ABuiltInMenu: TPopupMenu;
  var AHandled: Boolean);
var
  AItem: TMenuItem;
begin
   inherited;
//  ABuiltInMenu.Images := imgPopupMenu;

//  AItem := NewItem('Re Assign Task ', scNone, False, True, ReassignTask, 0, '');
   if (tvTaskList.DataController.RowCount > 0) and
      (tvTaskList.Controller.SelectedRowCount = 1) then
   begin
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Re Assign Task to another Employee';
      AItem.OnClick := ReassignTask;
//     AItem.ImageIndex := 5;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(0, AItem);
      ABuiltInMenu.Items.Insert(1, NewLine);
      //-------------------------------
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Re Assign Task to another Matter';
      AItem.OnClick := ReassignTasktoMatter;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(2, AItem);
      ABuiltInMenu.Items.Insert(3, NewLine);
      //-----------------------------------------
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Attach Document to Task';
      AItem.OnClick := AttachTaskDocument;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(4, AItem);
      ABuiltInMenu.Items.Insert(5, NewLine);
      //-----------------------------------------
      if SystemString('USE_PROJECT_BUDGETING') = 'Y' then
      begin
         AItem := TMenuItem.Create(ABuiltInMenu);
         AItem.Caption := 'Merge Document(s)';
         AItem.OnClick := MergeTaskDocument;
         AItem.Tag := 1;
         ABuiltInMenu.Items.Insert(4, AItem);
         ABuiltInMenu.Items.Insert(5, NewLine);
      end;

      //-----------------------------------------
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Link Task';
      AItem.OnClick := LinkTask;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(6, AItem);
      ABuiltInMenu.Items.Insert(7, NewLine);
      //-----------------------------------------
      AItem := TMenuItem.Create(ABuiltInMenu);
      AItem.Caption := 'Complete Task';
      AItem.OnClick := CompleteTask;
      AItem.Tag := 1;
      ABuiltInMenu.Items.Insert(6, AItem);
      ABuiltInMenu.Items.Insert(7, NewLine);

   end;
end;

procedure TfrmDesktop.SchedulerGridConnectionNewEvent(
  Sender: TcxSchedulerGridConnection; var AEvent: TcxSchedulerControlEvent;
  var AHandled: Boolean);
begin
   AHandled := True;
   with TfrmNewTaskNew.CreateEx(AEvent) do
   begin
      ShowModal;
      dmAxiom.qryTasks.Close;
      dmAxiom.qryTasks.Open;
   end;
end;

procedure TfrmDesktop.dxBarLookupEntityDropDown(Sender: TObject);
begin
//   qryEntitys.FieldByName('CODE').AsString := dmAxiom.Entity;
end;

procedure TfrmDesktop.LaunchSnapshots(Sender: TObject);
var
  frmNewReports : TfrmReports;
  LfrmMatters: TfrmMatters;
  LfrmClients: TfrmClients;
  LfrmPhonebook: TfrmPhonebook;
  LfrmReports: TfrmReports;
//  LfrmArchive: TfrmArchive;
  LfrmTimesheet: TfrmTimesheet;
begin
   case TdxBarButton(Sender).ImageIndex of
     IDXMATTER : // Matter
       begin
          LfrmMatters := TfrmMatters.Create(frmDesktop);
          LfrmMatters.DisplayMatter(Copy(TdxBarButton(Sender).Caption, 1, Pos(' ', TdxBarButton(Sender).Caption)-1));
          frmDesktop.AddFormToTab(LfrmMatters, 1);
          LfrmMatters.Tag := IMGMATTER;
       end;
     IDXCLIENT : // Client
       begin
         LfrmClients := TfrmClients.Create(Self);
         frmDesktop.AddFormToTab(LfrmClients, 1);
         LfrmClients.DisplayClient(Copy(TdxBarButton(Sender).Caption, 1, Pos(' ', TdxBarButton(Sender).Caption)-1));
         LfrmClients.Tag := imgCLIENT;
       end;
     IDXPHONEBOOK : // PhoneBook
       begin
         LfrmPhonebook := TfrmPhonebook.Create(Self);
         LfrmPhonebook.Search := Copy(TdxBarButton(Sender).Caption, 1, Pos(' ', TdxBarButton(Sender).Caption)-1);
         frmDesktop.AddFormToTab(LfrmPhonebook, 1);
         LfrmPhonebook.Tag := imgPHONEBOOK;
       end;
     IDXTIMESHEET : // Timesheet
       begin
         LfrmTimesheet := TfrmTimesheet.Create(Self);
         frmDesktop.AddFormToTab(LfrmTimesheet, 1);
       end;
     IDXREPORT : // Report
       begin
         if not frmDesktop.WindowReShow('frmReports') then
         begin
           LfrmReports := TfrmReports.Create(Self);
           LfrmReports.LaunchReport(TdxBarButton(Sender).Caption);
         end else
         begin
           frmNewReports := (Screen.ActiveForm as TfrmReports);
           frmDesktop.AddFormToTab(frmNewReports, 1);
           frmNewReports.LaunchReport(TdxBarButton(Sender).Caption);
         end;
       end;
{     IDXARCHIVE : // Archived Matter
       begin
         LfrmArchive := TfrmArchive.Create(Self);
         frmDesktop.fdTab.AddForm(LfrmArchive, true);
         LfrmArchive.DisplayArchive(Copy(TdxBarButton(Sender).Caption, 1, Pos(' ', TdxBarButton(Sender).Caption)-1));
         LfrmArchive.Tag := imgARCHIVE;
       end;         }
   end;
end;

procedure TfrmDesktop.bbtnQuickCodesClick(Sender: TObject);
begin
   Launch(IDXQUICKCODES);
end;

procedure TfrmDesktop.RefreshSnapshots;
var
  newListItem: TListItem;
  SnapShotItem: TdxBarButton;
begin
   // Initialize Tables
   qryDesktop.Close;

   qryDesktop.SQL.Clear;
   qryDesktop.SQL.Text := 'SELECT D.*,'''' s_caption, D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 0 '+
                          ' union '+
                          ' SELECT D.*, '''' s_caption, '+
                          ' D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 1 and imageindex not in (35,70, 69, 71) '+
                          ' union '+
                          ' SELECT D.*, '+
                          'substr(caption, length(SUBSTR(caption, 1,INSTR(caption, '' '', 1, 1))), length(caption) - length(SUBSTR(caption, 1  ,INSTR(caption, '' '', 1, 1)))) s_caption,'+
                          ' D.ROWID FROM DESKTOP D WHERE EMP = :Emp and type = 1 and imageindex in (35,70, 69, 71) '+
                          ' order by 6,7,5 ';
   qryDesktop.ParamByName('Emp').AsString := dmAxiom.UserID;
   qryDesktop.Open;

   lvSnapshots.Items.Clear;
   lvSnapshots.Items.BeginUpdate;
   // Add all Shortcuts and Snapshots to the Desktop
   while not qryDesktop.EOF do
   begin
      if qryDesktop.FieldByName('TYPE').AsInteger = 1 then
      begin

         newListItem := lvSnapshots.Items.Add;
         SnapShotItem := TdxBarButton.Create(Self);
         SnapShotItem.Caption := qryDesktop.FieldByName('CAPTION').AsString;
         SnapShotItem.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
         SnapShotItem.Hint := qryDesktop.FieldByName('HINT').AsString;
         SnapShotItem.Category := 7;
         SnapShotItem.OnClick := LaunchModule;

         newListItem.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
         newListItem.Caption :=    qryDesktop.FieldByName('CAPTION').AsString;
         newListItem.SubItems.Add(qryDesktop.FieldByName('HINT').AsString);
      end;
      qryDesktop.Next;
   end;
   // Now Draw the TListView now that all items are loaded
   lvSnapshots.Items.EndUpdate;
   qryDesktop.Close;
end;

procedure TfrmDesktop.RibbonMainMinimizedChanged(Sender: TdxCustomRibbon);
begin
   SettingSaveBoolean('Desktop', 'RibbonBar', RibbonMain.ShowTabGroups);

//MsgInfo('min changed - '+IntToStr(RibbonMain.Height));
end;

procedure TfrmDesktop.RibbonMainMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   CurrentRibbonItem := nil; //clear current item
end;

procedure TfrmDesktop.RibbonMainMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  AItemControl: TdxBarItemControl;
begin
   CurrentRibbonItem := nil; //clear current item

   if Button = mbRight then
   begin
      if ( Sender.ClassType = TdxRibbonGroupBarControl ) {or ( Sender.ClassType = TdxRibbonQuickAccessBarControl)} then
      begin
         AItemControl := TdxBarControl(Sender).ItemAtPos(Point(X, Y));

         if (AItemControl <> nil) {and (AItemControl.Item.Action <> nil)} then
            CurrentRibbonItem := AItemControl.Item;
      end;
   end;
end;

procedure TfrmDesktop.cmbPhonebookFindExit(Sender: TObject);
begin
   cmbPhonebookFind.Text := 'Type a contact name to find';
end;

procedure TfrmDesktop.cmbPhonebookFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vkReturn then
   begin
      LoadContactFromSearch(Sender, cmbPhonebookFind.Text);
      cmbPhonebookFind.Text := '';
   end;
end;

procedure TfrmDesktop.cmbMatterFindExit(Sender: TObject);
begin
    TcxLookupComboBox(Sender).Text := 'Type a matter to find';
end;

procedure TfrmDesktop.cmbMatterFindMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if TcxLookupComboBox(Sender).Text = 'Type a matter to find' then
      TcxLookupComboBox(Sender).Text := '';
end;

procedure TfrmDesktop.dxBarButton3Click(Sender: TObject);
begin
   if StatusBar.Visible then
   begin
      StatusBar.Visible := False;
      dxBarButton3.Caption := 'Show Status Bar...';
      SettingSaveBoolean('Desktop', 'StatusBar', False);
   end
   else
   begin
      StatusBar.Visible := True;
      dxBarButton3.Caption := 'Hide Status Bar...';
      SettingSaveBoolean('Desktop', 'StatusBar', True);
   end;
end;

procedure TfrmDesktop.cmbClientFind1Click(Sender: TObject);
begin
   if (TcxLookupComboBox(Sender).Text <> 'Type a Client to find') and
      (TcxLookupComboBox(Sender).DroppedDown = True) then
   with dxBarManager do
   begin
      BeginUpdate;
      try
         LoadClientFromSearch(Sender, TcxLookupComboBox(Sender).Text);
       finally
         EndUpdate;
      end;
   end;
end;

procedure TfrmDesktop.cmbClientFind1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      if (TcxLookupComboBox(Sender).Text <> 'Type a client to find') then
      with dxBarManager do
      begin
         BeginUpdate;
         try
            LoadClientFromSearch(Sender, TcxLookupComboBox(Sender).Text);
         finally
            EndUpdate;
            subItemMatter.UnclickAfterDoing := True;
         end;
      end;
//         LoadMatter(Sender);
      TcxLookupComboBox(Sender).Text := 'Type a client to find';
   end;
end;

procedure TfrmDesktop.cmbClientFindExit(Sender: TObject);
begin
   TcxLookupComboBox(Sender).Text := 'Type a client to find';
end;

procedure TfrmDesktop.tmrUserCountTimer(Sender: TObject);
begin
   if dmAxiom.bShutdown = False then
      GetUserCount;

//   StatusBar.Panels.Items[3].Text := 'User '+ IntToStr(dmAxiom.UserCount) + ' of '+IntToStr(nTotal);
end;

procedure TfrmDesktop.GetUserCount;
var
  nTotal, nActiveTotal: integer;
begin
  nActiveTotal := 0;
  nTotal := 0;
  try
    dmAxiom.procGetUserCount.Execute;

    nTotal := dmAxiom.procGetUserCount.ParamByName('RESULT').AsInteger;

    dmAxiom.procGetUserCount.Close;

    dmAxiom.procGetActiveEmps.Execute;
    nActiveTotal := dmAxiom.procGetActiveEmps.ParamByName('RESULT').AsInteger;
    dmAxiom.procGetActiveEmps.Close;
  finally
    StatusBar.Panels.Items[3].Text := IntToStr(nActiveTotal) + ':' + IntToStr(nTotal) + ' Online';
  end;
end;

procedure TfrmDesktop.dxBarSubItem10Popup(Sender: TObject);
begin
   if (SystemString('HELP_FILE_PATH') = '') then
   begin
      dxBarButton11.Visible := ivNever;
      dxBarButton12.Visible := ivNever;
   end;

end;

procedure TfrmDesktop.dxBarConflictsClick(Sender: TObject);
var
  OpenFileErr: Integer;
  FileName: String;
  frmConflictSelect: TfrmConflictSelect;
begin
  // ToDo: Eventually this will display the conflict select dialog and let the
  // user see changes to the conflict based on the search term, since it was entered.

  frmConflictSelect := TfrmConflictSelect.Create(nil);
  try
    frmConflictSelect.ShowModal;
    // ToDo: Need to work out how to show differences between conflict searches
    // over time. ie. New client/matter/NRIC entries that conflict with old search term.
    FileName := frmConflictSelect.SelectedFileName;
    if FileName <> '' then
    begin
      OpenFileErr := ShellExecute(Handle, 'open', PChar(FileName), nil, nil, SW_SHOWNORMAL);
      if OpenFileErr = SE_ERR_NOASSOC then
        MsgInfo('There is no application associated with the given filename extension.');
    end;
  finally
    frmConflictSelect.Release;
  end;
end;

procedure TfrmDesktop.dxBarConflictsPopup(Sender: TObject);
begin
   edConflict.Text := '';
   SetReopenList(ConflictTableName, dxBarConflicts, 4);
end;

procedure TfrmDesktop.edConflictKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Need to replace this with something like this but for conflicts.
  if (Key = vkReturn) and (edConflict.CurText <> '') then
  begin
    LoadConflictFromSearch(Sender, TdxBarEdit(Sender).CurText);
    edConflict.CurText := '';
  end;
end;

procedure TfrmDesktop.dxBarSubItemDocsPopup(Sender: TObject);
begin
   SetReopenList('DOCUMENT',dxBarSubItemDocs, 4);
end;

procedure TfrmDesktop.beMatterSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   sNewFileID: string;
begin
   SetFocusedControl(Self);
   if (Key = vkReturn) then
   begin
      with dxBarManager do
      begin
         BeginUpdate;
         try
            sNewFileID := PadFileID(TdxBarEdit(Sender).CurText);
            if (length(sNewFileID) >= iMtrSearchLimit) then
            begin
               try
                  LoadMatter(sNewFileID);
                  TdxBarEdit(Sender).CurText := sNewFileID;
                  TdxBarEdit(Sender).Text := sNewFileID;
               finally
                  TdxBarEdit(Sender).CurText := '';
                  TdxBarEdit(Sender).Text := '';
                  subItemMatter.UnclickAfterDoing := True;
               end;
            end
         finally
            EndUpdate;
         end;
      end;
   end;
end;

procedure TfrmDesktop.BitBtn1Click(Sender: TObject);
begin
   with qryDiary do
   begin
      Close;
      ParambyName('AUTHOR').AsString := dmAxiom.UserID;
      Open;
   end;
end;

procedure TfrmDesktop.tbtnNewTaskClick(Sender: TObject);
var
   AEvent: TcxSchedulerEvent;
   AControlEvent: TcxSchedulerControlEvent;
begin
   AEvent := DBTaskStorage.createEvent;
   if AEvent = nil then
      Exit;
   AControlEvent := TcxSchedulerControlEvent.Create(DBTaskStorage);

   if AControlEvent = nil then
      Exit;
   try
      AControlEvent.Caption := 'New Task';

     try
         Taskscheduler.EditEventUsingDialog(AControlEvent, True);
//         FModified := True;
      except
   //
      end;
   finally
      DBTaskStorage.DataSource.DataSet.Refresh;
      FreeAndNil(AControlEvent);
      FreeAndNil(AEvent);
   end;

{      try
         with TfrmNewTaskNew.CreateEx(eEvent) do
         begin

            ShowModal;
         end;
      except
   //
      end;
   finally
      DBStorage.DataSource.DataSet.Refresh;
      FreeAndNil(eEvent);  // To release the consumed memory
  end; }
end;

procedure TfrmDesktop.cmbClientFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vkReturn then
   begin
      LoadClientFromSearch(Sender, TcxLookupComboBox(Sender).Text);
      TcxLookupComboBox(Sender).Text := '';
   end;
end;


procedure TfrmDesktop.LoadConflictFromSearch(Sender: TObject; ASearchText: string);
begin
  TfrmConflictSearch.ShowConflictSearch(ASearchText);
end;

procedure TfrmDesktop.LoadClientFromSearch(Sender: TObject; ASearch: string);
var
  LfrmClientSearch : TfrmClientSearch;
  LfrmClients: TfrmClients;
  LNClient,
  LClientSearch: string;
begin
  LFrmClientSearch := nil;
   with dmAxiom.qryNew do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT clientid as code, search as descr, ''N'' AS DEFAULTITEM '+
                  'FROM phonebook ';
      if (systemstring('locale_name') <> '') then
      begin
         SQL.Text := SQL.Text + ', phonebook_entity WHERE nclient is not null ';
         SQL.Text := SQL.Text + ' AND phonebook.nname = phonebook_entity.nname and phonebook_entity.entity = :DefEntity ';
         ParamByName('DefEntity').AsString := dmAxiom.Entity;
      end
      else
         SQL.Text := SQL.Text + 'WHERE nclient is not null ';

      SQL.Text := SQL.Text + ' and contains(dummy,upper('+ QuotedStr(ASearch) +')) > 0';

      Open;
      if (RecordCount > 1) then
      begin
         try
            // more than 1 record found that matches search criteria
            if not FormExists(frmClientSearch) then
               LfrmClientSearch := TfrmClientSearch.Create(Self)
            else
               LfrmClientSearch := frmClientSearch;

            if (Sender is TcxLookupComboBox) then
               LClientSearch := TcxLookupComboBox(Sender).Text;
            if (Sender is TdxBarEdit) then
               LClientSearch := TdxBarEdit(Sender).CurText;

            LfrmClientSearch.tbClientSearch.Text := LClientSearch;
            if (LfrmClientSearch.ShowModal = mrOK) then
            begin
               LfrmClients := TfrmClients.Create(Self);

               LNClient := LfrmClientSearch.qryClientList.FieldByName('NCLIENT').AsString;
               AddFormToTab(LfrmClients,1);
               LfrmClients.DisplayClient(StrToInt(LNClient));

               if (Sender is TcxLookupComboBox) then
                  TcxLookupComboBox(Sender).Text := '';
               if (Sender is TdxBarEdit) then
                  TdxBarEdit(Sender).CurText := '';
            end
            else
            begin
               // user cancelled
               if (Sender is TcxLookupComboBox) then
                  TcxLookupComboBox(Sender).Text := '';
               if (Sender is TdxBarEdit) then
                  TdxBarEdit(Sender).CurText := '';
            end;
         finally
           LfrmClientSearch.Free();
           Close;
         end;
      end
      else
      begin
         // only 1 record found.  display it
         if (RecordCount = 1) then
         begin
            LoadClient(Sender, dmAxiom.qryNew.FieldByName('Code').AsString);
            if (Sender is TcxLookupComboBox) then
               TcxLookupComboBox(Sender).Text := '';
            if (Sender is TdxBarEdit) then
               TdxBarEdit(Sender).CurText := '';
         end
         else
         begin
            // no records found
            MsgInfo('No records found that match ['+ASearch+']');
            if (Sender is TcxLookupComboBox) then
               TcxLookupComboBox(Sender).Text := '';
            if (Sender is TdxBarEdit) then
               TdxBarEdit(Sender).CurText := '';
         end;
      end;
   end;
end;

procedure TfrmDesktop.edClientKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = vkReturn) then
   begin
      LoadClientFromSearch(Sender, TdxBarEdit(Sender).CurText );
      edClient.CurText := '';
   end;
end;

procedure TfrmDesktop.dxBarMRUListItem2Click(Sender: TObject);
var
   LFileID: string;
begin
   LFileID := Copy((Sender as TdxBarMRUListItem).Items[(Sender as TdxBarMRUListItem).ItemIndex], 1, Pos(' ', (Sender as TdxBarMRUListItem).Items[(Sender as TdxBarMRUListItem).ItemIndex])-1);
   LoadMatter(LFileID);
end;

procedure TfrmDesktop.cmbMatterFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = vkReturn) then
   begin
      LoadMatter(Sender {cmbMatterFind.Text});
      beMatterSearch.Text := '';
   end;
end;

procedure TfrmDesktop.LoadContactFromSearch(Sender: TObject; ASearch: string);
var
  LSearch: String;
  LfrmPhoneBookSearch: TfrmPhoneBookSearch;
  LfrmPhonebook: TfrmPhoneBook;
begin
   if not FormExists(frmPhoneBookSearch) then
      LfrmPhoneBookSearch := TfrmPhoneBookSearch.Create(Self)
   else
      LfrmPhoneBookSearch := frmPhoneBookSearch;

   if (Sender is TcxLookupComboBox) then
   begin
       LfrmPhoneBookSearch.eSearchBottom.Text := cmbPhonebookFind.Text;
       LSearch := cmbPhonebookFind.Text;
   end
   else
   begin
       LfrmPhoneBookSearch.eSearchBottom.Text := edContact.CurText;
       LSearch := edContact.CurText;
   end;

   try
      if(LfrmPhoneBookSearch.ShowModal() = mrOk) then
      begin
         LfrmPhonebook := TfrmPhonebook.Create(Self);
         LfrmPhonebook.Search := IntToStr(LfrmPhoneBookSearch.NName);
         frmDesktop.AddFormToTab(LfrmPhonebook, 1);
         LfrmPhonebook.Tag := imgPHONEBOOK;

         if (Sender is TcxLookupComboBox) then
            TcxLookupComboBox(Sender).Text := '';
         if (Sender is TdxBarEdit) then
            TdxBarEdit(Sender).CurText := '';
      end
      else
      begin
        // user cancelled
         if (Sender is TcxLookupComboBox) then
            TcxLookupComboBox(Sender).Text := '';
         if (Sender is TdxBarEdit) then
            TdxBarEdit(Sender).CurText := '';
       end;
   finally
       begin
          LfrmPhoneBookSearch.Free();
//          Close;
       end;
    end;
end;

procedure TfrmDesktop.ApplicationEvents1Minimize(Sender: TObject);
begin
   tmrUserCount.Enabled := False;
   tmrDiaryNotify.Enabled := False;
end;

procedure TfrmDesktop.ApplicationEvents1Restore(Sender: TObject);
begin
   tmrUserCount.Enabled := True;
   tmrDiaryNotify.Enabled := True;
end;

procedure TfrmDesktop.CreateRibbons;
var
   shortgroup_id: integer;
   TabItem: TdxRibbonTab;
   RibbonGroup: TdxRibbonTabGroup;
   ShortcutItem: TdxBarButton;//  TdxBarButton;
   NewToolbar: TdxBar;
begin
   try
      qryEmpCuts.Close;
      qryEmpCuts.ParamByName('P_Emp').AsString := dmAxiom.UserID;
      qryEmpCuts.ParamByName('p_emptype').AsString := dmAxiom.UserType;
      qryEmpCuts.Open;

      TabItem := RibbonMain.Tabs.Add;
      TabItem.Caption := qryEmpCuts.FieldByName('DESCRIPTION').AsString;
      shortgroup_id := qryEmpCuts.FieldByName('SHORTCUT_GROUP').AsInteger;
      TabItem.KeyTip := Copy(qryEmpCuts.FieldByName('DESCRIPTION').AsString,1,1);

      RibbonGroup := TabItem.Groups.Add;
      NewToolbar := dxBarManager.AddToolBar();
      NewToolbar.Name := 'bar' + trim(stringreplace(qryEmpCuts.FieldByName('DESCRIPTION').AsString,' ','',[rfReplaceAll]));
      NewToolbar.Caption := qryEmpCuts.FieldByName('DESCRIPTION').AsString;
      RibbonGroup.ToolBar := NewToolbar;

      while not qryEmpCuts.EOF do
      begin
         if (shortgroup_id <>  qryEmpCuts.FieldByName('SHORTCUT_GROUP').AsInteger) then
         begin
            TabItem := RibbonMain.Tabs.Add;
            TabItem.Caption := qryEmpCuts.FieldByName('DESCRIPTION').AsString;
            shortgroup_id := qryEmpCuts.FieldByName('SHORTCUT_GROUP').AsInteger;
            TabItem.KeyTip := Copy(qryEmpCuts.FieldByName('DESCRIPTION').AsString,1,1);

            RibbonGroup := TabItem.Groups.Add;
            NewToolbar := dxBarManager.AddToolBar();
            NewToolbar.Name := 'bar' + trim(stringreplace(qryEmpCuts.FieldByName('DESCRIPTION').AsString,' ','',[rfReplaceAll]));
            NewToolbar.Caption := qryEmpCuts.FieldByName('DESCRIPTION').AsString;
            RibbonGroup.ToolBar := NewToolbar;
         end;

         if qryEmpCuts.FieldByName('big_button').AsString = 'N' then
            ShortcutItem := TdxBarButton.Create(Self)
         else
         begin
            ShortcutItem := TdxBarButton.Create(Self);  //TdxBarLargeButton.Create(Self);
            ShortcutItem.LargeImageIndex := qryEmpCuts.FieldByName('IMAGEINDEX').AsInteger;
         end;

         if qryEmpCuts.FieldByName('DESCRIPTION').AsString = 'Favourites' then
         begin
            AddFavourites(NewToolbar);
         end
         else
         begin
           ShortcutItem.caption := qryEmpCuts.FieldByName('NAME').AsString;
           ShortcutItem.ImageIndex := qryEmpCuts.FieldByName('IMAGEINDEX').AsInteger;
           ShortcutItem.Hint := qryEmpCuts.FieldByName('NAME').AsString;

           ShortcutItem.OnClick := LaunchModule;
           with NewToolbar as TdxBar do
           begin
              ItemLinks.Add.Item := ShortcutItem;
           end;
         end;
         qryEmpCuts.Next;
      end;
   finally
      RibbonMain.Tabs.Items[0].Active := true;
   end;
end;

procedure TfrmDesktop.AddFavourites(ANewToolbar: TdxBar);
var
   TotalItems,
   iCtr: integer;
   ShortcutItem: TdxBarButton;
begin
   TotalItems := ANewToolbar.ItemLinks.Count;
   for iCtr := TotalItems - 1 downto 0 do
       ANewToolbar.ItemLinks.Delete(iCtr);

   try
      if qryDesktop.Active = false then
         qryDesktop.Open;
      // Add all Shortcuts to the Ribbon
      while not qryDesktop.EOF do
      begin
        if qryDesktop.FieldByName('TYPE').AsInteger = 0 then
        begin
          dxBarManager.Images := ilstShortcuts;
          dxBarManager.HotImages := ilstShortcuts;
          dxBarManager.LargeImages := ilstShortcuts;
          if qryDesktop.FieldByName('big_button').AsString = 'N' then
             ShortcutItem := TdxBarButton.Create(Self)
          else
          begin
             ShortcutItem := TdxBarButton.Create(Self);  //TdxBarLargeButton.Create(Self);
             ShortcutItem.LargeImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
          end;
          ShortcutItem.caption := qryDesktop.FieldByName('CAPTION').AsString;
          ShortcutItem.ImageIndex := qryDesktop.FieldByName('IMAGEINDEX').AsInteger;
          ShortcutItem.Category := 6;
          ShortcutItem.Hint := qryDesktop.FieldByName('HINT').AsString;

          ANewToolbar.ItemLinks.Add.Item := ShortcutItem;
          ShortcutItem.OnClick := LaunchModule;
        end;
        qryDesktop.Next;
      end;
   finally
      qryDesktop.Close
   end;
end;

procedure TfrmDesktop.LoadDocSearchFromSearch(Sender: TObject; ASearch: string);

begin
   try
      if SystemString('use_external_search') = 'Y' then
         LfrmdtSearch := TfrmdtSearch(FindorCreate(TfrmdtSearch,1))
      else
         LfrmDocSearch := TfrmDocSearch(FindorCreate(TfrmDocSearch, 0));
   finally
      if SystemString('use_external_search') = 'Y' then
      begin
         LfrmdtSearch.TextSearch := ASearch;
         LfrmdtSearch.btnSearch.Click;
      end
      else
      begin
         try
            LfrmDocSearch. TextSearch := ASearch;
            if LfrmDocSearch.PageSearch.ActivePageIndex = 0 then
               LfrmDocSearch.PageSearch.ActivePageIndex := 1;
            LfrmDocSearch.MakeSQL;
         finally
            LfrmDocSearch.PageSearch.ActivePageIndex := 0;
         end;
      end;
   end;
end;

procedure TfrmDesktop.ReAssignTask(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   selectCode,
   eventID: variant;
   AEmpRate: double;
begin
   if not FormExists(fmEmployeeFindDialog) then
      fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(self);

   if fmEmployeeFindDialog.ShowModal = mrOK then
   begin
      selectCode := fmEmployeeFindDialog.lbEmployees.EditValue;

      eventID := tvTaskList.Controller.FocusedRecord.Values[tvTaskListcxGridColumn47.Index];

      eEvent := DBTaskStorage.GetEventByID(eventID);
      AEmpRate := FeeRate('N', eEvent.GetCustomFieldValueByName('FILEID') , selectCode, eEvent.GetCustomFieldValueByName('CREATED'));

      if eEvent <> nil then
      begin
         eEvent.BeginEditing;
         eEvent.SetCustomFieldValueByName('AUTHOR', selectCode);
         eEvent.SetCustomFieldValueByName('RATE', AEmpRate);
         eEvent.EndEditing;
         eEvent.Post;
         DBTaskStorage.DataSource.DataSet.Refresh;
      end;
   end;
end;

procedure TfrmDesktop.ReassignTasktoMatter(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   selectCode,
   eventID,
   selectFileID: variant;
begin
   if not FormExists(frmMatterSearch) then
      frmMatterSearch := TfrmMatterSearch.Create(self);

   if frmMatterSearch.ShowModal = mrOK then
   begin
      selectCode := frmMatterSearch.vMattersNMATTER.EditValue;
      selectFileID := frmMatterSearch.vMattersFILEID.EditValue;
      eventID := tvTaskList.Controller.FocusedRecord.Values[tvTaskListcxGridColumn47.Index];

      eEvent := DBTaskStorage.GetEventByID(eventID);

      if eEvent <> nil then
      begin
         eEvent.BeginEditing;
         eEvent.SetCustomFieldValueByName('NMATTER', selectCode);
         eEvent.SetCustomFieldValueByName('FILEID', selectFileID);
         eEvent.EndEditing;
         eEvent.Post;
         DBTaskStorage.DataSource.DataSet.Refresh;
      end;
   end;
end;

procedure TfrmDesktop.LinkTask(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
   eEvent: TcxSchedulerEvent;
   selectCode,
   eventID: variant;
begin
  frmGenericSearch := nil;
  try
    frmGenericSearch := TfrmGenericSearch.Create(Self);
    frmGenericSearch.SQL := 'SELECT FILEID AS CODE, REASON AS DESCR, UNIQUEID AS DEFAULTITEM FROM FEETMP WHERE IS_TASK = ''Y'' ORDER BY 1';
    if frmGenericSearch.ShowModal = mrOK then
    begin
       selectCode := frmGenericSearch.qrySource.FieldByName('DEFAULTITEM').AsString;
       eventID := tvTaskList.Controller.FocusedRecord.Values[tvTaskListcxGridColumn47.Index];

         eEvent := DBTaskStorage.GetEventByID(eventID);

         if eEvent <> nil then
         begin
            eEvent.BeginEditing;
            eEvent.ParentID := selectCode;
            eEvent.EndEditing;
            eEvent.Post;
            DBTaskStorage.DataSource.DataSet.Refresh;
         end;
      end;
   finally
      frmGenericSearch.Free();
   end;
end;

procedure TfrmDesktop.CompleteTask(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   eventID: variant;
begin
   eventID := tvTaskList.Controller.FocusedRecord.Values[tvTaskListcxGridColumn47.Index];

   eEvent := DBTaskStorage.GetEventByID(eventID);

   if (eEvent <> nil) then
   begin
      if (SystemString('USE_PROJECT_BUDGETING') = 'Y') then
      begin
         if (VarIsNull(eEvent.GetCustomFieldValueByName('NSCALECOST')) = False) then
         begin
            try
               qryScalecostDocCount.Close;
               qryScalecostDocCount.ParamByName('nscalecost').AsInteger := eEvent.GetCustomFieldValueByName('NSCALECOST');
               qryScalecostDocCount.Open;
               if (qryScalecostDocCount.FieldByName('doc_count').AsInteger > 0) then
               begin
                  if VarIsNull(eEvent.GetCustomFieldValueByName('NSCALECOST')) = False then
                  begin
                     if(not Assigned(FWorkFlowMergeDocument)) then
                        FWorkFlowMergeDocument                  := TfmWorkFlowMergeDocument.Create(Application);

                     FWorkFlowMergeDocument.DocIDProject        := eEvent.GetCustomFieldValueByName('NSCALECOST');
                     FWorkFlowMergeDocument.ShowNoTaskDocuments := True;
                     FWorkFlowMergeDocument.NMatter             := eEvent.GetCustomFieldValueByName('NMATTER');
                     FWorkFlowMergeDocument.WorkFlow            := '';
                     FWorkFlowMergeDocument.Task                := nil;
                     FWorkFlowMergeDocument.OnClose             := MergeFormClose;
                     FWorkFlowMergeDocument.UpdateWindowEvent   := OnUpdateWindowEvent;

                     dmAxiom.qryTmp.SQL.Text := 'select DOCID, DOCTYPE from workflowdoctemplates where '+
                                                'DOCID = :DOCID ';

                     FWorkFlowMergeDocument.ShowModal();
                  end;
               end;
               qryScalecostDocCount.Close;
             except
               on E: exception do
               begin
                  MessageDlg(E.Message, mtError, [mbOK], 0);
                  FreeAndNil(FWorkFlowMergeDocument);
               end;
            end;
         end;
         qryCompleteTask.Close;
         qryCompleteTask.ParamByName('uniqueid').AsInteger := eEvent.GetCustomFieldValueByName('UNIQUEID');
         qryCompleteTask.Prepare;
         qryCompleteTask.Execute;
      end;

      eEvent.BeginEditing;
      eEvent.SetCustomFieldValueByName('TASK_COMPLETED_PCT', 100);
      eEvent.SetCustomFieldValueByName('TASK_COMPLETED', Date);
      eEvent.EndEditing;
      eEvent.Post;
      DBTaskStorage.DataSource.DataSet.Refresh;

   end;
end;

procedure TfrmDesktop.AttachTaskDocument(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   eventID: variant;
   fmPrecedentSearch: TfrmPrecedentSearch;
begin
   eventID := tvTaskList.Controller.FocusedRecord.Values[tvTaskListcxGridColumn47.Index];

   eEvent := DBTaskStorage.GetEventByID(eventID);

   if (eEvent <> nil) then
   begin
      try
         fmPrecedentSearch := TfrmPrecedentSearch.Create(Self);
         with fmPrecedentSearch do
         begin
            dmAxiom.qryPrecedentList.Open;
            if ShowModal = mrOk then
            begin
               eEvent.BeginEditing;
               eEvent.SetCustomFieldValueByName('PREC_ID', tvPrecedentListDOCID.EditValue);
               eEvent.EndEditing;
               eEvent.Post;
               DBTaskStorage.DataSource.DataSet.Refresh;
            end;
         end;
      finally
         FreeAndNil(fmPrecedentSearch);
      end;
   end;
end;

procedure TfrmDesktop.MergeTaskDocument(Sender: TObject);
var
   eEvent: TcxSchedulerEvent;
   eventID: variant;
begin
   eventID := tvTaskList.Controller.FocusedRecord.Values[tvTaskListcxGridColumn47.Index];

   eEvent := DBTaskStorage.GetEventByID(eventID);

   if (eEvent <> nil) and (VarIsNull(eEvent.GetCustomFieldValueByName('NSCALECOST')) = False)  then
   begin
      try
         if VarIsNull(eEvent.GetCustomFieldValueByName('NSCALECOST')) = False then
         begin
            if(not Assigned(FWorkFlowMergeDocument)) then
               FWorkFlowMergeDocument                  := TfmWorkFlowMergeDocument.Create(Application);

            FWorkFlowMergeDocument.DocIDProject        := eEvent.GetCustomFieldValueByName('NSCALECOST');
            FWorkFlowMergeDocument.ShowNoTaskDocuments := True;
            FWorkFlowMergeDocument.NMatter             := eEvent.GetCustomFieldValueByName('NMATTER');
            FWorkFlowMergeDocument.WorkFlow            := '';
            FWorkFlowMergeDocument.Task                := nil;
            FWorkFlowMergeDocument.OnClose             := MergeFormClose;
            FWorkFlowMergeDocument.UpdateWindowEvent   := OnUpdateWindowEvent;

            dmAxiom.qryTmp.SQL.Text := 'select DOCID, DOCTYPE from workflowdoctemplates where '+
                                       'DOCID = :DOCID ';
               FWorkFlowMergeDocument.ShowModal();
         end;
      except
         on E: exception do
         begin
            MessageDlg(E.Message, mtError, [mbOK], 0);
            FreeAndNil(FWorkFlowMergeDocument);
         end;
      end;
   end;
end;

procedure TfrmDesktop.LoadDocument(Sender: TObject);
var
   DocErrMsg: string;
   AHandle: THandle;
begin
   try
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Clear;
         SQL.Text := 'select path, display_path from doc where docid = :docid';
         ParamByName('docid').AsInteger := (Sender as TdxBarButton).Tag;
         Open;
      end;
      AHandle := ExecuteFile(dmAxiom.qryTmp.FieldByName('PATH').AsString, '', '.', SW_SHOW, DocErrMsg);
      if AHandle <= 32 then
      begin
         AHandle := ExecuteFile(dmAxiom.qryTmp.FieldByName('DISPLAY_PATH').AsString, '', '.', SW_SHOW, DocErrMsg);
         if AHandle <= 32 then
            MsgInfo('Unable to open Document. The document may not exist or the extension for this document is not associated with any program.');
      end;
   finally
     dmAxiom.qryTmp.Close
   end;
   //
end;

// the merge form close event, free and set pointer to nil
procedure TfrmDesktop.MergeFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FWorkFlowMergeDocument := Nil;
end;

procedure TfrmDesktop.OnUpdateWindowEvent(Sender: TObject);
begin
end;


initialization
   Xml.Win.msxmldom.MSXMLDOMDocumentFactory.AddDOMProperty('ProhibitDTD', False);

end.
