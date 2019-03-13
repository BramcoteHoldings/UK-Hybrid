unit OutlookDiaryNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxContainer, cxListView, dxBar, cxPC, cxControls,
  Menus, ActnList, ImgList,
  uRwMapiInterfaces, cxStyles, cxSplitter, cxTreeView,
  uRwMapiMsgStoreEvents, DB, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxImage, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, ExtCtrls, ToolWin,
  cxSchedulerDateNavigator, cxSchedulerWeekView, dxBarExtItems,
  cxCheckBox, cxGridDBTableView, cxImageComboBox, cxCalc, cxLabel, uRwMapiExceptions, cxTextEdit,
  VirtualTrees, MemDS, VirtualTable, OracleUniProvider, Uni, DBAccess, cxDBData, ComCtrls,
  cxMaskEdit, cxLookAndFeels,
  dxNavBarCollns, dxNavBarBase, dxNavBar, cxDateNavigator, cxGridCardView,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxSchedulerStorage,
  cxSchedulerCustomControls, cxGridCustomTableView, cxGridTableView,
  uRwMapiFolderDialog, uRwMapiFormManager, uRwMapiTableEvents,
  dxRibbonSkins, dxRibbon, JvExComCtrls, JvComCtrls, cxNavigator,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog;

const
  WM_NEWMESSAGE = WM_USER + 1;

type
  TfrmOutLookDiaryNew = class(TForm)
    ImageList: TImageList;
    dxBarManager1: TdxBarManager;
    btnAppNew: TdxBarButton;
    btnDetails: TdxBarButton;
    btnNew: TdxBarButton;
    btnFlushQueues: TdxBarButton;
    AppImageList: TImageList;
    FoldersImageList: TImageList;
    btnDelete: TdxBarButton;
    btnclose: TdxBarButton;
    dxBarButton1: TdxBarButton;
    btnRefresh: TdxBarButton;
    btnAppRefresh: TdxBarButton;
    btnViewApp: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnAttachEmail: TdxBarButton;
    dxBarDateCombo1: TdxBarDateCombo;
    dxBarDateCombo2: TdxBarDateCombo;
    cxStyleRepository1: TcxStyleRepository;
    styUnread: TcxStyle;
    styDefault: TcxStyle;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Splitter1: TSplitter;
    PopupMenu1: TPopupMenu;
    mnuAttachEmailtoMatter: TMenuItem;
    Timer: TTimer;
    udFlushQueusInterval: TdxBarSpinEdit;
    dxBarStatic1: TdxBarStatic;
    btnMoveToFolder: TdxBarButton;
    btnPrint: TdxBarButton;
    btnReply: TdxBarButton;
    btnReplyAll: TdxBarButton;
    btnforward: TdxBarButton;
    imgImportance: TImageList;
    LookAndFeelController: TcxLookAndFeelController;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    emailNavBar: TdxNavBar;
    grpMail: TdxNavBarGroup;
    grpMailControl: TdxNavBarGroupControl;
    grpCalendar: TdxNavBarGroup;
    grpContacts: TdxNavBarGroup;
    grpCalendarControl: TdxNavBarGroupControl;
    cxDateNavigator1: TcxDateNavigator;
    grpContactsControl: TdxNavBarGroupControl;
    qryCheckEmail: TUniQuery;
    MapiFolderDialog: TRwMapiFolderDialog;
    RwMapiMsgStoreEvents1: TRwMapiMsgStoreEvents;
    FormMgr: TRwMapiFormManager;
    RwMapiTableEvents1: TRwMapiTableEvents;
    tvFolders: TTreeView;
    Panel1: TPanel;
    cxCheckBox1: TcxCheckBox;
    pagEmails: TcxPageControl;
    tabEmails: TcxTabSheet;
    grdMail: TcxGrid;
    tvMail: TcxGridTableView;
    tvMailImportance: TcxGridColumn;
    tvMailIcon: TcxGridColumn;
    tvMailAttachment: TcxGridColumn;
    tvMailFrom: TcxGridColumn;
    tvMailSubject: TcxGridColumn;
    tvMailReceived: TcxGridColumn;
    tvMailSize: TcxGridColumn;
    tvMailFileID: TcxGridColumn;
    tvMailEntry_ID: TcxGridColumn;
    tvMailFlag: TcxGridColumn;
    tvMailColumn1: TcxGridColumn;
    lvMail: TcxGridLevel;
    pnlInbox: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure actViewEasyMAPIFormExecute(Sender: TObject);
    procedure lvMessagesDeletion(Sender: TObject; Item: TListItem);
    procedure lvMessagesCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure lvMessagesClick(Sender: TObject);
    procedure MapiSessionAfterLogoff(Sender: TObject);
    procedure actNewFormManagerExecute(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btncloseClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnFlushQueuesClick(Sender: TObject);
    procedure btnViewAppClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDetailsClick(Sender: TObject);
    procedure btnAttachEmailClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvInboxStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure FormShow(Sender: TObject);
    procedure tvInboxDblClick(Sender: TObject);
    procedure tvInboxColumn7GetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: String);
    procedure tvInboxColumn3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure mnuAttachEmailtoMatterClick(Sender: TObject);
    procedure lvMessagesDblClick(Sender: TObject);
    procedure lvMessagesColumnClick(Sender: TObject; Column: TListColumn);
    procedure tvFoldersChange(Sender: TObject; Node: TTreeNode);
    procedure TimerTimer(Sender: TObject);
    procedure udFlushQueusIntervalChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnMoveToFolderClick(Sender: TObject);
    procedure btnReplyClick(Sender: TObject);
    procedure btnReplyAllClick(Sender: TObject);
    procedure btnforwardClick(Sender: TObject);
    procedure tvMailReceivedGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure tvMailDataControllerCompare(
      ADataController: TcxCustomDataController; ARecordIndex1,
      ARecordIndex2, AItemIndex: Integer; const V1, V2: Variant;
      var Compare: Integer);
    procedure tvMailSizeGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure tvMailDblClick(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure tvMailDataControllerBeforeDelete(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure tvMailDataControllerGroupingChanged(Sender: TObject);
    procedure emailNavBarActiveGroupChanged(Sender: TObject);
    procedure tabCalendarShow(Sender: TObject);
    procedure tabEmailsShow(Sender: TObject);
    procedure tabContactsShow(Sender: TObject);
    procedure RwMapiMsgStoreEvents1ObjectCreated(Sender: TObject;
      ObjectEntryID: TRwMapiEntryID; ObjectType: TRwMapiObjectType;
      ParentEntryID, OldObjectEntryID, OldParentEntryID: TRwMapiEntryID;
      const ChangedProperties: IRwMapiPropList);
    procedure FormMgrBeforeSubmitMessage(Sender: TObject;
      const MessageSite: IRwMapiMessageSite);
    procedure RwMapiTableEvents1TableRowDeleted(Sender: TObject;
      InstanceKey: TRwMapiByteArray);
    procedure tvMailStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
    FSortIndex: Integer;
    FCurrentFolderID: TRwMapiEntryID;
    FStartDateTag, FEndDateTag, FAllDayTag: Integer;
    FRecurStartDateTag, FRecurEndDateTag, FIsRecurringTag: Integer;
    FEmailShown, FAppShown, FFolderListBuilt: Boolean;
    FMsgStore: IRwMapiMsgStore;
    FInboxFolderID: TRwMapiEntryID;
    FAddressbook: IRwMapiAddressbook;
    FLastCreateMessage: OleVariant;    
    FFileID     : string;
    FShowMatter: Boolean;
    function GetSelectedMessage: IRwMapiMailMessage;
    procedure RefreshMsgStoresTreeView;
    procedure SetImageIndex(NewNode: TTreeNode; Index: Integer);
    procedure SetFolderTypeImageIndex(NewNode: TTreeNode; AFolderType: TRwMapiFolderType);
    procedure CreateTreeNodes(AParentNode: TTreeNode; AMsgStore: IRwMapiMsgStore; AParentFolder: IRwMapiFolder);
    procedure GetEmail(Sender: TObject);
    procedure NewMessage(var Message: TMessage); message WM_NEWMESSAGE;
    function CreateReply: IRwMapiMailMessage;
    function FindText(TreeView: TTreeView; AStr: string): TTreeNode;
//    procedure BeforeSubmitMessage(ASender: IRwMapiMessageSite);

    function GetDateValueIndex(ADate: TDateTime): Integer;
    function GetGroupDateDisplayText(ADate: TDateTime): string;
  public
    { Public declarations }
  end;

var
  frmOutLookDiaryNew: TfrmOutLookDiaryNew;

implementation

{$R *.dfm}

uses
   MiscFunc, AxiomData, MSearch, citfunc,
   AttachEmailToMatter, DateUtils, cxVariants, Math
   , uRwSysUtils
   , uRwDateTimeUtils
   , uRwMapiUtils
   , uRwBoxes
   , uRwMapiMessage
   , uRwMapiProps
   , uRwMapiBase;



const
{  DateValueIndexToday = 0;
  DateValueIndexYesterday = 1;
  DateValueIndexLastWeek = 2;
  DateValueIndexTwoWeeksAgo = 3;
  DateValueIndexThreeWeeksAgo = 4;
  DateValueIndexOlder = 5;  }

  DateValueIndexToday = 0;
  DateValueIndexYesterday = 1;
  DateValueIndexFriday = 2;
  DateValueIndexThursday = 3;
  DateValueIndexWednesday = 4;
  DateValueIndexTuesday = 5;
  DateValueIndexMonday = 6;
  DateValueIndexLastWeek = 7;       //2
  DateValueIndexTwoWeeksAgo = 8;   //3
  DateValueIndexThreeWeeksAgo = 9;
  DateValueIndexOlder = 10;      //4

const
  HoursPerDay   = 24;
  MinsPerDay    = HoursPerDay * 60;

function IncDay(const AValue: TDateTime;
  const ANumberOfDays: Integer = 1): TDateTime;
begin
  Result := AValue + ANumberOfDays;
end;

function IncHour(const AValue: TDateTime;
  const ANumberOfHours: Int64): TDateTime;
begin
  Result := (AValue * HoursPerDay + ANumberOfHours) / HoursPerDay;
end;

function IncMinute(const AValue: TDateTime;
  const ANumberOfMinutes: Int64): TDateTime;
begin
  Result := (AValue * MinsPerDay + ANumberOfMinutes) / MinsPerDay;
end;

function DaysBetween(const ANow, AThen: TDateTime): Integer;
begin
  if ANow > AThen then
    Result := Trunc(ANow - AThen)
  else
    Result := Trunc(AThen - ANow);
end;

type
  // The TRwListItemData is a "container" object.
  // It's primary purpose is to store the data from the contenttable
  // It's secondary purpose is to set the current value in the listview item (via the property setters)
  TRwListItemData = class
  private
    FListItem   : TListItem;
    FMsgStore   : IRwMapiMsgStore;
    FEntryID    : TRwMapiEntryID;
    FHasMatter  : Boolean;
    FPriority   : Integer;
    FMsgRead    : Boolean;
    FHasAttach  : Boolean;
    FFrom       : string;
    FSubject    : string;
    FSize       : Integer;
    FReceivedOn : TDateTime;
    FMatter     : string;
    procedure SetMatter(const Value: Boolean);
    procedure SetPriority(const Value: Integer);
    procedure SetMsgRead(const Value: Boolean);
    procedure SetHasAttach(const Value: Boolean);
    procedure SetFrom(const Value: string);
    procedure SetSubject(const Value: string);
    procedure SetSize(const Value: Integer);
    procedure SetReceivedOn(const Value: TDateTime);
    procedure DisplayMatter(const Value: string);
  public
    constructor Create(AListItem: TListItem);
    property MsgStore: IRwMapiMsgStore read FMsgStore write FMsgStore;
    property EntryID: TRwMapiEntryID read FEntryID write FEntryID;
    property Priority: Integer read FPriority write SetPriority;
    property MsgRead: Boolean read FMsgRead write SetMsgRead;
    property HasAttach: Boolean read FHasAttach write SetHasAttach;
    property From: string read FFrom write SetFrom;
    property Subject: string read FSubject write SetSubject;
    property Size: Integer read FSize write SetSize;
    property ReceivedOn: TDateTime read FReceivedOn write SetReceivedOn;
    property HasMatter: Boolean read FHasMatter write SetMatter;
    property Matter: string read FMatter write DisplayMatter;
  end;

{ TRwListItemData }

constructor TRwListItemData.Create(AListItem: TListItem);
var
  i: Integer;
begin
  FListItem := AListItem;
  AListItem.Data := Self;

  // initialize 7 empty subitems
  for i := 1 to 8 do
    AListItem.SubItems.Add('');
end;

procedure TRwListItemData.SetPriority(const Value: Integer);
begin
  FPriority := Value;
  case FPriority of
    -1 : FListItem.SubItemImages[0] := 9;
    1  : FListItem.SubItemImages[0] := 8;
  else
    FListItem.SubItemImages[0] := -1;
  end;
end;

procedure TRwListItemData.SetMatter(const Value: Boolean);
begin
  FHasMatter := Value;
  if FHasMatter then
   begin
    FListItem.ImageIndex := 18;
  end
  else
  begin
    FListItem.ImageIndex := -1;
  end;
end;

procedure TRwListItemData.SetMsgRead(const Value: Boolean);
begin
  FMsgRead := Value;
  if FMsgRead then
  begin
    FListItem.SubItemImages[1] := 5;
  end
  else
  begin
    FListItem.SubItemImages[1] := 4;
  end;
end;

procedure TRwListItemData.SetHasAttach(const Value: Boolean);
begin
  FHasAttach := Value;
  if FHasAttach then
    FListItem.SubItemImages[2] := 6;
end;

procedure TRwListItemData.SetFrom(const Value: string);
begin
  FFrom := Value;
  FListItem.SubItems[3] := Value;
end;

procedure TRwListItemData.SetSubject(const Value: string);
begin
  FSubject := Value;
  FListItem.SubItems[4] := Value;
end;

procedure TRwListItemData.SetSize(const Value: Integer);
begin
  FSize := Value;
  if Value < 1024 then
    FListItem.SubItems[5] := Format('%d B',[Value])
  else
    FListItem.SubItems[5] := Format('%d kB',[Value div 1024])
end;

procedure TRwListItemData.SetReceivedOn(const Value: TDateTime);
begin
  FReceivedOn := Value;
  FListItem.SubItems[6] := FormatDateTime('ddd dd-mm-yyyy hh:mm', FReceivedOn)
end;

procedure TRwListItemData.DisplayMatter(const Value: string);
begin
  FMatter := Value;
  FListItem.SubItems[7] := Value;
end;

type
  TRwTreeNodeData = class
  private
    FMsgStore       : IRwMapiMsgStore;
    FLevel          : Integer;
    FParentFolderID : OleVariant;
    FFolderID       : OleVariant;
  public
    destructor Destroy; override;
    property MsgStore: IRwMapiMsgStore read FMsgStore write FMsgStore;
    property ParentFolderID: OleVariant read FParentFolderID write FParentFolderID;
    property FolderID: OleVariant read FFolderID write FFolderID;
    property Level: Integer read FLevel write FLevel;
  end;

{ TRwTreeNode }

destructor TRwTreeNodeData.Destroy;
begin
  Self.FMsgStore := nil;
  inherited;
end;
{frmMain}

procedure TfrmOutLookDiaryNew.GetEmail(Sender: TObject);
var
   FMsgStore: IRwMapiMsgStore;
begin
   btnAppRefresh.Enabled := True;

   btnFlushQueues.Enabled := dmAxiom.MapiSession.LogonInfo.UseExtendedMAPI;
//   actViewFormManager.Enabled := MapiSession.LogonInfo.UseExtendedMapi;
//   actOpenFolder.Enabled := MapiSession.LogonInfo.UseExtendedMapi;
   btnNew.Enabled := True;

   // initialize the FCurrentFolderID to the inbox
//   FMsgStore := MapiSession.GetDefaultMsgStore(alBestAccess);

   // fill the listview
   btnRefresh.Click;
//   actRefreshExecute(Sender);
//   RefreshMsgStoresTreeView;
end;

procedure TfrmOutLookDiaryNew.FormCreate(Sender: TObject);
begin
//   MapiSession := AMapiSession;
   FShowMatter := False;
   FEmailShown := False;
   FAppShown := False;
   FFolderListBuilt := False;
end;

procedure TfrmOutLookDiaryNew.actViewEasyMAPIFormExecute(Sender: TObject);
var
  Msg : IRwMapiMailMessage;
begin
   Msg := GetSelectedMessage;

   // Display the message in the default MAPI form.
   Msg.ShowForm();

   Msg.Unread := False;
   Msg.SaveChanges(smKeepOpenReadOnly);
//   TRwListItemData(lvMessages.Selection.  Selected.Data).MsgRead := True;
end;

procedure TfrmOutLookDiaryNew.lvMessagesDeletion(Sender: TObject;
  Item: TListItem);
begin
   if assigned(Item.Data) then
      TRwListItemData(Item.Data).Free;
end;

procedure TfrmOutLookDiaryNew.lvMessagesCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  Left, Right: TRwListItemData;
begin
  // sort the listview
  // A sort index < 0 = descending
  // A sort index > 0 = ascending
  if FSortIndex < 0 then
  begin
    Left := TRwListItemData(Item2.Data);
    Right := TRwListItemData(Item1.Data);
  end else
  begin
    Left := TRwListItemData(Item1.Data);
    Right := TRwListItemData(Item2.Data);
  end;

  // The actual sort
  case Abs(FSortIndex) of
    1 {matter}      : Compare := Integer(Left.HasMatter) - Integer(Right.HasMatter);
    2 {priority}    : Compare := Left.Priority - Right.Priority;
    3 {msg read}    : Compare := Integer(Left.MsgRead) - Integer(Right.MsgRead);
    4 {has attach}  : Compare := Integer(Left.HasAttach) - Integer(Right.HasAttach);
    5 {from}        : Compare := CompareText(Left.From, Right.From);
    6 {subject}     : Compare := CompareText(Left.Subject, Right.Subject);
    7 {size}        : Compare := Left.Size - Right.Size;
    8 {received on} : Compare := Trunc(Left.ReceivedOn*24*3600) - Trunc(Right.ReceivedOn*24*3600);
    9 {file id}     : Compare := CompareText(Left.Matter, Right.Matter);
  end;
end;

procedure TfrmOutLookDiaryNew.lvMessagesClick(Sender: TObject);
begin
 // Something is selected.. enable the details button
  btnDetails.Enabled := True;
end;


procedure TfrmOutLookDiaryNew.MapiSessionAfterLogoff(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
      dmAxiom.MapiSession.FlushQueues();
   finally
      Screen.Cursor := crDefault;
   end;
   btnNew.Enabled := False;
end;

function TfrmOutLookDiaryNew.GetSelectedMessage: IRwMapiMailMessage;
var
  EntryID: TRwMapiEntryID;
//  ARowInfo : TcxRowInfo;
begin
//  if not assigned(lvMessages.Selected) then
//    raise EAbort.Create('');

//   ARowInfo := tvMail.DataController.GetRowInfo(tvMail.DataController.FocusedRowIndex);
   EntryID := StrToEntryID(tvMailEntry_ID.EditValue);

  // now use that data to open the message
  Result := dmAxiom.MsgStore.OpenMessage(EntryID) as IRwMapiMailMessage;//  dmAxiom.MsgStore.OpenMessage(EntryID, alReadwrite, False);
end;

procedure TfrmOutLookDiaryNew.actNewFormManagerExecute(Sender: TObject);
var
//  FormMgr : IRwMapiFormMgr;
  FormRect: TRect;
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
  Msg: IRwMapiMessage;
//  MsgForm: TFrmNewMessage;
begin
   MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
   Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite);

   // Display the message in a Form Manager form.
//   FormMgr := dmAxiom.MapiSession.GetFormMgr;

//   FormMgr.SetOnCreateMessage(OnCreateMessage);
//   FormMgr.SetBeforeSaveMessage(BeforeSaveMessage);
//   FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);
//   FormMgr.SetBeforeCopyMessage(BeforeCopyMessage);
//   FormMgr.SetBeforeDeleteMessage(BeforeDeleteMessage);
//   FormMgr.SetBeforeMoveMessage(BeforeMoveMessage);

//   FormMgr.SetOnNewMessage(OnNewMessage);
//   FormMgr.SetOnSaved(OnSaved);
//   FormMgr.SetOnShutdown(OnShutdown);
//   FormMgr.SetOnSubmitted(OnSubmitted);

   // get the last known size and position of a form this type
   FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 250, 300);
   // Show the form
   FormMgr.NewMessage(Folder{, 'IPM.Note', FormRect});

{   try
      Msg := MapiSession.CreateMessage('', ftOutbox, 'IPM.Note');

   // Display the new message in a custom build form. This is a 100% Delphi solution
      MsgForm := TFrmNewMessage.Create(Self);
      MsgForm.Initialize(MapiSession, Msg);
      MsgForm.Show;
   except
      //
   end;      }
end;

{procedure TfrmOutLookDiaryNew.OnCreateMessage(ASender: IRwMapiMessageSite);
var
  AddressBook: IRwMapiAddressBook;
  RecipTable: IRwMapiRecipientTable;
begin
//  memoEvents.Lines.Add('OnCreateMessage');
  ASender.MapiMessage.PropByName(PR_SUBJECT).AsString := 'Create, ' + ASender.MapiMessage.PropByName(PR_SUBJECT).AsString;
  if ASender.MapiMessage.PropByName(PR_MESSAGE_CLASS).AsString = 'IPM.Note' then
  begin
//    ASender.MapiMessage.SetMessageText('This is a newly created message', mtfPlainText);
    ASender.MapiMessage.SetMessageText('<html><body><h1>This is a newly created message</h1></body></html>', mtfHTML);

    // also set a default recpient
    AddressBook := MapiSession.GetAddressBook(False);
    RecipTable := AddressBook.GetRecipientTable;
    RecipTable.AddRecipient('default@somewhere.com', rtTo, True);
    ASender.MapiMessage.ModifyRecipients(moReplaceAll, RecipTable);
  end;
  FLastCreateMessage := ASender.MapiMessage.PropByName(PR_ENTRYID).Value;
end;   }

procedure TfrmOutLookDiaryNew.RefreshMsgStoresTreeView;
var
  FMsgStore: IRwMapiMsgStore;
  RootFld: IRwMapiFolder;
  MsgStoreNode: TTreeNode;
begin
//   tvFolders.Items.BeginUpdate;
   tvFolders.Items.BeginUpdate;
   Screen.Cursor := crHourGlass;
   try
//      tvFolders.Items.Clear;
      tvFolders.Items.Clear;

      // get the default messagestore
      FMsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;

      // add a rootnode to the tree
      MsgStoreNode := tvFolders.Items.Add(nil, FMsgStore.PropByName(PR_DISPLAY_NAME).AsString);
//      MsgStoreNode := tvFolders.Items.Add(nil, FMsgStore.PropByName(PR_DISPLAY_NAME).AsString);
      SetImageIndex(MsgStoreNode, 13);

      // get the rootfolder
      RootFld := FMsgStore.OpenFolderByType(ftIPMRoot, alReadOnly);

      MsgStoreNode.Data := TRwTreeNodeData.Create;
      TRwTreeNodeData(MsgStoreNode.Data).FMsgStore := FMsgStore;
      TRwTreeNodeData(MsgStoreNode.Data).Level := 0;
      TRwTreeNodeData(MsgStoreNode.Data).FolderID := RootFld.PropByName(PR_ENTRYID).Value;
      TRwTreeNodeData(MsgStoreNode.Data).ParentFolderID := unassigned;

      // create all the treenodes
      CreateTreeNodes(MsgStoreNode, FMsgStore, RootFld);
   finally
//      tvFolders.Items.EndUpdate;
      tvFolders.Items.EndUpdate;
      tvFolders.Selected := FindText(tvFolders, 'Inbox');
//      tvFolders.selected:= FindText(tvFolders, 'Inbox');
//      tvFolders.ItemIndex := tvFolders.Items.IndexOf('Inbox');
      Screen.Cursor := crDefault;
   end;

   MsgStoreNode.Expand(False);
end;

function TfrmOutLookDiaryNew.FindText(TreeView: TTreeView; AStr: string): TTreeNode;
var
   I: integer;
begin
   for I := 0 to (TreeView.Items.Count - 1) do
   begin
      if TreeView.Items.Item[I].Text = AStr then
      begin
         TreeView.Items.Item[I].Selected := True;
         Result := TreeView.Selected;
         Exit;
      end;
   end;
end;

procedure TfrmOutLookDiaryNew.SetImageIndex(NewNode: TTreeNode; Index: Integer);
begin
  NewNode.ImageIndex := Index;
  NewNode.SelectedIndex := Index;
  NewNode.StateIndex := -1;
end;

procedure TfrmOutLookDiaryNew.SetFolderTypeImageIndex(NewNode: TTreeNode; AFolderType: TRwMapiFolderType);
begin
  case AFolderType of
//    ftUnknown     : SetImageIndex(NewNode, 20);
    ftInbox       : SetImageIndex(NewNode, 11);
    ftOutbox      : SetImageIndex(NewNode, 15);
    ftDeleted     : SetImageIndex(NewNode, 19);
    ftSentItems   : SetImageIndex(NewNode, 17);
    ftIPMRoot     : SetImageIndex(NewNode, 16);
    ftSearch      : SetImageIndex(NewNode, 13);
    ftCommon      : SetImageIndex(NewNode, 13);
    ftPersonal    : SetImageIndex(NewNode, 13);
    ftContact     : SetImageIndex(NewNode, 10);
    ftAppointment : SetImageIndex(NewNode, 8);
    ftJournal     : SetImageIndex(NewNode, 12);
    ftStickyNote  : SetImageIndex(NewNode, 14);
    ftTask        : SetImageIndex(NewNode, 18);
  else
    SetImageIndex(NewNode, 20);
  end;
end;

procedure TfrmOutLookDiaryNew.CreateTreeNodes(AParentNode: TTreeNode; AMsgStore: IRwMapiMsgStore; AParentFolder: IRwMapiFolder);
var
  Table: IRwMapiTable;
  TreeNode: TTreeNode;
  Folder: IRwMapiFolder;
begin
  // first get the subfolders for the given AParentFolder
  Table := AParentFolder.GetHierarchyTable;
  Table.Fields.Add(PR_ENTRYID);
  Table.Fields.Add(PR_DISPLAY_NAME);
  Table.Fields.Add(PR_SUBFOLDERS);
  Table.First;
  while not Table.EOF do
  begin
    // open the folder
    Folder := AMsgStore.OpenFolder(Table.FieldByName(PR_ENTRYID).Value, alReadOnly);

    // create the treenode
    TreeNode := tvFolders.Items.AddChild(AParentNode, Table.FieldByName(PR_DISPLAY_NAME).AsString);
    TreeNode.Data := TRwTreeNodeData.Create;
    TRwTreeNodeData(TreeNode.Data).FMsgStore       := AMsgStore;
    TRwTreeNodeData(TreeNode.Data).Level          := TRwTreeNodeData(AParentNode.Data).Level + 1;
    TRwTreeNodeData(TreeNode.Data).ParentFolderID := AParentFolder.PropByName(PR_ENTRYID).Value;
    TRwTreeNodeData(TreeNode.Data).FolderID       := Table.FieldByName(PR_ENTRYID).Value;
    SetFolderTypeImageIndex(TreeNode, Folder.FolderType);

    // create the treenodes of the subfolder
    CreateTreeNodes(TreeNode, AMsgStore, Folder);
    Table.Next;
  end;
end;


procedure TfrmOutLookDiaryNew.btnDeleteClick(Sender: TObject);
var
   Trash, Folder: IRwMapiFolder;
   Msg : IRwMapiMailMessage;
   LRecCount:        integer;
   ARowIndex, iCtr:  integer;
   tv:               TcxGridTableView;
   Data:             TcxCustomDataController;
   DC:               TcxGridTableController;
   MsgStore: IRwMapiMsgStore;
   EntryID: TRwMapiEntryID;
begin
   if MsgAsk('Are you sure you want to delete the selected item(s)?') = mrYes then
   begin
      tv := grdMail.FocusedView as TcxGridTableView;
      tv.BeginUpdate;
      Data := tv.DataController;
      DC := tv.Controller;
      if (DC.SelectedRowCount > 0) then
      begin
         for iCtr := 0 to DC.SelectedRecordCount - 1 do
         begin
            ARowIndex := Data.GetSelectedRowIndex(iCtr);
            tv.ViewData.Records[ARowIndex].Focused  := True;
            Msg := GetSelectedMessage;
            // get the stored data
            EntryID  := Msg.PropByName(PR_ENTRYID).Value;

            // Open the folder
            Folder := FMsgStore.OpenFolder(FCurrentFolderID);

            // now tell the folder to delete the message
            Folder.DeleteMessage(EntryID);

            // The table events will take care of removing the entry from the listview
{            Trash := Msg.MsgStore.OpenFolderByType(ftDeleted, alReadWrite, False);
            if dmAxiom.MapiSession.CompareEntryIDs(Folder.PropByName(PR_ENTRYID).Value, Trash.PropByName(PR_ENTRYID).Value) then
               Folder.DeleteMessage(Msg.PropByName(PR_ENTRYID).Value)
            else
               Folder.CopyMessage(Msg.PropByName(PR_ENTRYID).Value, Trash, True);  }
            Data.DeleteRecord(ARowIndex);
          end;
      end;
      tv.EndUpdate;
//      btnRefresh.Click;
   end;
end;

procedure TfrmOutLookDiaryNew.btncloseClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmOutLookDiaryNew.btnRefreshClick(Sender: TObject);

   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      tvMail.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;

var
   FMsgStore: IRwMapiMsgStore;
   Folder: IRwMapiFolder;
   ContentTable: IRwMapiTable;
   lvItem: TListItem;
   Data: TRwListItemData;
   RestrictionAnd: IRwMapiRestrictionAnd;
   RestrictionBM: IRwMapiRestrictionBitMask;
   RestrictionContent: IRwMapiRestrictionContent;
   I: integer;
   RootFld: IRwMapiFolder;
   MsgStoreNode: TTreeNode;
   bStream: TStream;
   Msg : IRwMapiMessage;
   fileid, sSubject: string;
   NumRecords, x, FHashPos: integer;
begin
   if not dmAxiom.MapiSession.Active then
      exit;

   Screen.Cursor := crHourGlass;
   FFolderListBuilt := False;
   try
     // get the default messagestore
     FMsgStore := dmAxiom.MsgStore;
//     FMsgStore.UseUnicode := True;

     // open the specified folder
     Folder := FMsgStore.OpenFolder(FCurrentFolderID, alReadWrite);
//      Folder := FMsgStore.OpenFolderByType(ftInbox, alReadWrite, False);

     // get the contenttable for the inbox
     ContentTable := Folder.GetContentsTable;

     // specify the fields (=tags of the properties) we want to retrieve
     // The PR_ENTRYID is the most important property
     // this is the unique identifier of each message
     // we can use the value of this property later on to open the message
     ContentTable.Fields.Add(PR_ENTRYID);
     ContentTable.Fields.Add(PR_MESSAGE_CLASS);
     ContentTable.Fields.Add(PR_INSTANCE_KEY);
     ContentTable.Fields.Add(PR_SENDER_NAME);
     ContentTable.Fields.Add(PR_SUBJECT);
     ContentTable.Fields.Add(PR_MESSAGE_SIZE);
     ContentTable.Fields.Add(PR_MESSAGE_DELIVERY_TIME);
     ContentTable.Fields.Add(PR_IMPORTANCE);
     ContentTable.Fields.Add(PR_PRIORITY);
     ContentTable.Fields.Add(PR_MESSAGE_FLAGS);
     ContentTable.Fields.Add(PR_HASATTACH);
     ContentTable.Fields.Add(NPR_COMMON_HIDEPAPERCLIP);
     ContentTable.Fields.Add(PR_RECORD_KEY);
     // open the table
     ContentTable.Open;
     I := 0;
     // loop through the table
// /    tvInbox.BeginUpdate;
//     lvMessages.Items.BeginUpdate;
     tvMail.BeginUpdate;
     if tvMail.DataController.RecordCount > 0 then
     begin
       for NumRecords := tvMail.DataController.RecordCount - 1 downto 0 do
         tvMail.DataController.DeleteRecord(0);
     end;

     try
//       lvMessages.OnCompare := nil;
//       lvMessages.SortType := stNone;
//       lvMessages.Items.Clear;

       ContentTable.First;
       while not ContentTable.EOF do
       begin
         FileID := '';
{         lvItem := lvMessages.Items.Add;

         // Create a TRwListItemData object to store the record values
         // This object is also responsible for filling the ListItem with the
         // correct values (see the property setters of this object)
         // This object is deleted in the OnDeletion event of the ListView
         Data := TRwListItemData.Create(lvItem);

         Data.FMsgStore   := FMsgStore;
         Data.EntryID    := ContentTable.FieldByName(PR_ENTRYID).Value;
         Data.Priority   := ContentTable.FieldByName(PR_PRIORITY).AsInteger;
         Data.MsgRead    := RwValueInSet(mmfRead, ContentTable.FieldByName(PR_MESSAGE_FLAGS).AsInteger);
         Data.HasAttach  := ContentTable.FieldByName(PR_HASATTACH).AsBoolean;
         Data.From       := ContentTable.FieldByName(PR_SENDER_NAME).AsString;
         Data.Subject    := ContentTable.FieldByName(PR_SUBJECT).AsString;
         Data.Size       := ContentTable.FieldByName(PR_MESSAGE_SIZE).AsInteger;
         Data.ReceivedOn := RwUTCToLocal(ContentTable.FieldByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);
         Msg := FMsgStore.OpenMessage(Data.EntryID, alReadWrite, False);
         Data.Matter     := Msg.NamedProp(NPRFILEID).AsString;
         Data.HasMatter  := (Data.Matter <> '');   }

{         if not Data.MsgRead then
         begin
            if (pos('[Matter #', Data.Subject) > 0) or
               (pos('[Matter#', Data.Subject) > 0)  and
               TableInteger('DOC','DESCR',Data.Subject,'DOCID' ) = 0 then
            begin
               dmAxiom.uniInsight.StartTransaction;
               dmAxiom.qryMatterAttachments.Open;
               if dmAxiom.qryMatterAttachments.State in [dsBrowse] then
                  dmAxiom.qryMatterAttachments.insert;

               dmAxiom.qryMatterAttachments.FieldByName('fileid').AsString := '1';
               dmAxiom.qryMatterAttachments.FieldByName('nmatter').AsString := MatterString('1','NMATTER');
               dmAxiom.qryMatterAttachments.FieldByName('auth1').AsString := dmAxiom.UserID;
               dmAxiom.qryMatterAttachments.FieldByName('D_CREATE').AsDateTime := Now;
               dmAxiom.qryMatterAttachments.FieldByName('IMAGEINDEX').AsInteger := 1;
               dmAxiom.qryMatterAttachments.FieldByName('file_extension').AsString := 'msg';
               dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := 'EMAIL_' + ContentTable.FieldByName(PR_SENDER_NAME).AsString;
               dmAxiom.qryMatterAttachments.FieldByName('DESCR').AsString := ContentTable.FieldByName(PR_SUBJECT).AsString;
               bStream := dmAxiom.qryMatterAttachments.CreateBlobStream(dmAxiom.qryMatterAttachments.fieldByname('DOCUMENT'), bmReadWrite);
               Msg := Data.FMsgStore.OpenMessage(Data.EntryID, alReadWrite, False);
               Msg.SaveMessageTextToStream(bStream);
               bStream.free;
               dmAxiom.qryMatterAttachments.Post;
               dmAxiom.uniInsight.Commit;
            end;
         end; }
// /        tvInbox.BeginUpdate;

// /        try
            tvMail.DataController.AppendRecord;
            begin
               SetRecordValue(I, tvMailFrom.Index, ContentTable.FieldByName(PR_SENDER_NAME).AsString);
               SetRecordValue(I, tvMailSubject.Index, ContentTable.FieldByName(PR_SUBJECT).AsString);
               SetRecordValue(I, tvMailSize.Index, ContentTable.FieldByName(PR_MESSAGE_SIZE).AsInteger);
               SetRecordValue(I, tvMailReceived.Index, RwUTCToLocal(ContentTable.FieldByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime));
               SetRecordValue(I, tvMailIcon.Index, RwValueInSet(mmfRead, ContentTable.FieldByName(PR_MESSAGE_FLAGS).AsInteger));
               SetRecordValue(I, tvMailEntry_ID.Index, EntryIDToStr(ContentTable.FieldByName(PR_ENTRYID).Value));
               SetRecordValue(I, tvMailAttachment.Index, ContentTable.FieldByName(PR_HASATTACH).AsBoolean);
//               SetRecordValue(I, tvMailAttachment.Index, ContentTable.FieldByName(PR_HASATTACH).AsBoolean);

//               SetRecordValue(I, tvMailReceived.Index, Trunc(RwUTCToLocal(ContentTable.FieldByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime)));
//               SetRecordValue(I, tvMailColumn1.Index, RwValueInSet(mmfRead, ContentTable.FieldByName(PR_MESSAGE_FLAGS).AsInteger));
//               if FShowMatter then
//               begin
                  Msg := FMsgStore.OpenMessage(ContentTable.FieldByName(PR_ENTRYID).Value, alReadOnly, False);
                  try
                     FileId := Msg.PropByName(MATTER).AsString;
                  except
                     //
                  end;
                  if (FileId = '') then
                  begin
                     sSubject := Msg.PropByName(PR_SUBJECT).AsString;
                     if (pos('#',sSubject) > 0) then
                     begin
                        // clean up subject line
                        for x := i + 1 to length(sSubject) do
                        begin
                           if (sSubject[x] in ['/', '\', '?','"','<','>','|','*',':',';']) then
                              sSubject[x] := ' ';
                        end;
                     end;

	                  if ((FileID = '') and (pos('#',sSubject) > 0)) then
                     begin
                        FHashPos := pos('#',sSubject);
                        for x := FHashPos + 1 to length(sSubject) do
                        begin
                           if (sSubject[x] <> ' ') and ((sSubject[x] in ['A'..'Z', '0'..'9', 'a'..'z'])) then
                              FileID := FileID + sSubject[x];
                           if (not (sSubject[x] in ['A'..'Z', '0'..'9', 'a'..'z'])) then break;
                        end;
                     end;
                     FileID := UpperCase(FileID);
                     if (FileID <> '') and (MatterExists(FileID)) then
                        FileID := FileID
                     else
                        FileID := '';
                  end;
                  SetRecordValue(I, tvMailFileID.Index, FILEID);
//               end;
//               Msg := FMsgStore.OpenMessage(ContentTable.FieldByName(PR_ENTRYID).Value, alReadWrite, False);
//               SetRecordValue(I, tvMailFileID.Index, Msg.NamedProp(NPRFILEID).AsString);
            end;
// /        finally
            //
// /        end;
         Inc(I);
         // * Note
         // date time values in MAPI are always stored in UTC format (Universal Time Coordinates)
         // You can use the RwUTCToLocal to convert a UTC datetime to a local datetime     }

         ContentTable.Next;
       end;

       // sort descending on date
       FSortIndex := -8;
//       lvMessages.OnCompare := lvMessagesCompare;
//       lvMessages.SortType := stData;
    finally
//      lvMessages.Items.EndUpdate;
       tvMail.EndUpdate;
    end;
   finally
      FFolderListBuilt := True;
   end;
   grdMail.FocusedView.DataController.Groups.FullExpand;
   Screen.Cursor := crDefault;
end;

procedure TfrmOutLookDiaryNew.btnFlushQueuesClick(Sender: TObject);
begin
  // Send/Receive all messages
  Screen.Cursor := crHourGlass;
  try
    dmAxiom.MapiSession.FlushQueues();
//    actRefreshExecute(Sender);
  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TfrmOutLookDiaryNew.btnViewAppClick(Sender: TObject);
var
  Msg : IRwMapiMailMessage;
//  FormMgr : IRwMapiFormMgr;
  FormRect: TRect;
begin
  Msg := GetSelectedMessage;

  // Display the message in a Form Manager form.
  // A Form Manager Form is more flexible than the default mapi form

  // get a form manager
//  FormMgr := dmAxiom.MapiSession.GetFormMgr;

  // get the last known size and position of a form this type
  FormRect := FormMgr.GetStoredRect('IPM.Appointment', 100, 100, 400, 400);

  // Show the form
  FormMgr.ShowMessage(Msg);

end;

procedure TfrmOutLookDiaryNew.btnNewClick(Sender: TObject);
var
//   FormMgr : IRwMapiFormMgr;
   FormRect: TRect;
//   MsgStore: IRwMapiMsgStore;
   Folder: IRwMapiFolder;
 //  Msg: IRwMapiMessage;
//   MsgForm: TFrmNewMessage;
begin
   try
      begin
         Folder := FMsgStore.OpenFolderByType(ftOutbox, alReadWrite);
         // Display the message in a Form Manager form.
         // A Form Manager Form is more flexible than the default mapi form

         // get a form manager
//         FormMgr := dmAxiom.MapiSession.GetFormMgr;
//         FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);

         // get the last known size and position of a form this type
         FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 400, 400);

         // Show the form
         FormMgr.NewMessage(Folder{, 'IPM.Note', FormRect});
      end;
   FINALLY

   END;
end;

procedure TfrmOutLookDiaryNew.btnDetailsClick(Sender: TObject);
var
  Msg : IRwMapiMailMessage;
begin
   Msg := GetSelectedMessage;

   // Display the message in the default MAPI form.
   Msg.ShowForm();

//   Msg.SetReadFlag(True);
   Msg.SaveChanges(smKeepOpenReadOnly);
//   TRwListItemData(lvMessages.Selected.Data).MsgRead := True;

end;

procedure TfrmOutLookDiaryNew.btnAttachEmailClick(Sender: TObject);
var
  Msg : IRwMapiMailMessage;
begin
   frmAttachEmailToMatter := TfrmAttachEmailToMatter.Create(Self);
   frmAttachEmailToMatter.SetMessage( dmAxiom.MapiSession, GetSelectedMessage);

   frmAttachEmailToMatter.ShowModal;
   frmAttachEmailToMatter.Free;
end;


procedure TfrmOutLookDiaryNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   timer.Destroy;
   RemoveFromDesktop(Self);
end;

procedure TfrmOutLookDiaryNew.tvInboxStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
//   if ARecord.Values[11] = True then
//      TcxImageComboBoxProperties(tvInboxAttachment).DefaultImageIndex := 6
//   else
//      TcxImageComboBoxProperties(tvInboxAttachment).DefaultImageIndex := -1;

   if ARecord.Values[8] = -1 then
   begin
//      TcxImageComboBox(tvInboxReadBMP).EditValue := 1;
      AStyle := styDefault;
   end
   else
   begin
//      TcxImageComboBox(tvInboxReadBMP).EditValue := 0;
      AStyle := styUnread;
   end;  
end;

procedure TfrmOutLookDiaryNew.FormShow(Sender: TObject);
var
  OldCursor: TCursor;
  FMsgStore: IRwMapiMsgStore;
  i: integer;
  email_interval: integer;
begin
   email_interval := SettingLoadInteger('EMAILS','CHECK_INTERVAL');
   if email_interval = 0 then
      Timer.Interval := SystemInteger('email_check_interval') * 1000 * 60
   else
      Timer.Interval := email_interval * 1000 * 60;

   tvMailFileID.Visible := FShowMatter;
   if not FAppShown then
   begin
       if not dmAxiom.MapiSession.Active then
       begin
          OldCursor := Screen.Cursor;
          Screen.Cursor := crHourGlass;
          try
            dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
            dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;  //'Outlook';
            dmAxiom.MapiSession.LogonInfo.Password           := '';
            dmAxiom.MapiSession.LogonInfo.ProfileRequired    := True;
            dmAxiom.MapiSession.LogonInfo.NewSession         := False;
            dmAxiom.MapiSession.LogonInfo.ShowPasswordDialog := False;
            dmAxiom.MapiSession.LogonInfo.ShowLogonDialog    := True;
            dmAxiom.MapiSession.Active                       := True;
          finally
            Screen.Cursor := OldCursor;
          end;
       end;
       btnAppRefresh.Enabled := True;
       btnNew.Enabled := True;

       // get property tags for some named properties
       FMsgStore      := dmAxiom.MapiSession.OpenDefaultMsgStore;
{       FStartDateTag := FMsgStore.NamedPropTag(NPR_APPT_STARTDATE);
       FEndDateTag   := FMsgStore.NamedPropTag(NPR_APPT_ENDDATE);
       FAllDayTag    := FMsgStore.NamedPropTag(NPR_APPT_ALLDAYEVENT);

       FRecurStartDateTag  := FMsgStore.NamedPropTag(NPR_APPT_RECURRENCESTART);
       FRecurEndDateTag    := FMsgStore.NamedPropTag(NPR_APPT_RECURRENCEEND);
       FIsRecurringTag     := FMsgStore.NamedPropTag(NPR_APPT_ISRECURRING);  }

//       FMsgStore.UseUnicode := True;
       FCurrentFolderID := FMsgStore.FolderID[ftInbox];

       RefreshMsgStoresTreeView;
{      for i := 0 to (tvFolders.Items.Count - 1) do
      begin
         if tvFolders.Items.Item[i].HasAsParent(tvFolders.Items.GetFirstNode) then
         begin
            if (tvFolders.Items.Item[i].Text = 'Inbox') then
            begin
   //            tvFolders.Selected.Item[i].Selected := True;
               tvFolders.Items.Item[i].Selected := True;
               tvFolders.Items.Item[i].Focused := True;
               break;
            end;
         end;
      end;  }
       // fill the listview
       btnAppRefresh.Click;
//       actAppRefreshExecute(Sender);

       FAppShown := True;
   end;
   Timer.Enabled := True;
end;

procedure TfrmOutLookDiaryNew.tvInboxDblClick(Sender: TObject);
var
  Msg : IRwMapiMessage;
//  MsgForm: TFrmMessage;
begin
  Msg := GetSelectedMessage;

  if not RwSameText(Msg.PropByName(PR_MESSAGE_CLASS).AsString, 'IPM.Note') then
    raise Exception.Create('Unsupported Message Class');

{  // Display the message in a custom build form. This is a 100% Delphi solution
  MsgForm := TFrmMessage.Create(Self);
  MsgForm.LoadMessage(MapiSession, Msg);
  MsgForm.Show; // The form frees itself when closed

  // set the readflag
  Msg.SetReadFlag(True);
  Msg.SaveChanges(smKeepOpenReadOnly);      }
//  ARecord.Values[8] := True;
//  TcxImageComboBoxProperties(tvInboxReadBMP).DefaultImageIndex := 1;
//  AStyle := styDefault;
end;

procedure TfrmOutLookDiaryNew.tvInboxColumn7GetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
   if StrToInt(AText) < 1024 then
    Atext := Format('%d B',[StrToInt(AText)])
  else
    AText := Format('%d kB',[StrToInt(AText) div 1024])
end;

procedure TfrmOutLookDiaryNew.tvInboxColumn3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
//   ContentTable.FieldByName(PR_HASATTACH).AsBoolean;
end;

procedure TfrmOutLookDiaryNew.mnuAttachEmailtoMatterClick(Sender: TObject);
var
   Msg :             IRwMapiMailMessage;
   bStream:          TStream;
   FMessage:         IRwMapiMessage;
   tmpFileName:      string;
   RandFile, sSubject,
   FileID:           string;
   i, x: integer;
   ANewDocName,
   AParsedDocName,
   AParsedDir:       string;
//   LRecCount:        integer;
   ARowIndex, iCtr:  integer;
   tv:               TcxGridTableView;
   Data:             TcxCustomDataController;
   DC:               TcxGridTableController;
   AEmailDateTime:   TDatetime;
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOK then
   begin
      tv := grdMail.FocusedView as TcxGridTableView;
      tv.BeginUpdate;
      Data := tv.DataController;
      DC := tv.Controller;
      if (DC.SelectedRowCount > 0) then
      begin
         for iCtr := 0 to DC.SelectedRecordCount - 1 do
         begin
            try
               ARowIndex := Data.GetSelectedRowIndex(iCtr);
               tv.ViewData.Records[ARowIndex].Focused  := True;

               if dmAxiom.uniInsight.InTransaction then
                   dmAxiom.uniInsight.Commit;
               dmAxiom.uniInsight.StartTransaction;
               dmAxiom.qryMatterAttachments.Open;
               if dmAxiom.qryMatterAttachments.State in [dsBrowse] then
                  dmAxiom.qryMatterAttachments.insert;

//               FMessage := GetSelectedMessage();
//               FileID := dmAxiom.qryMSearch.FieldByName('fileid').AsString;

               FMessage := GetSelectedMessage();
 //              Msg := FMsgStore.OpenMessage(ContentTable.FieldByName(PR_ENTRYID).Value, alReadOnly, False);
               try
                  FileId := FMessage.PropByName(MATTER).AsString;
               except
               //
               end;

               sSubject := FMessage.PropByName(PR_SUBJECT).AsString;
               if (pos('#',sSubject) > 0) then
               begin
                  // clean up subject line
                  for x := i + 1 to length(sSubject) do
                  begin
                     if (sSubject[x] in ['/', '\', '?','"','<','>','|','*',':',';']) then
                        sSubject[x] := ' ';
                  end;
               end;

               if (FileID = '') then
               begin
                  FileID := dmAxiom.qryMSearch.FieldByName('fileid').AsString;
                  FMessage.PropByName(MATTER).Value := FileID;
                  FMessage.SaveChanges(smKeepOpenReadOnly);
               end;
               tvMailFileID.EditValue := FileID;

               // check if email has already been saved
               try
                  AEmailDateTime := RwUTCToLocal(FMessage.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);
               except
               //
               end;


               qryCheckEmail.Close;
               qryCheckEmail.ParamByName('descr').AsString := FMessage.PropByName(PR_SUBJECT).AsString;
               qryCheckEmail.ParamByName('D_CREATE').AsDateTime := AEmailDateTime;
               qryCheckEmail.ParamByName('fileid').AsString := FileID;
               qryCheckEmail.Open;
               if qryCheckEmail.FieldByName('rec_found').IsNull then
               begin
                  dmAxiom.qryMatterAttachments.FieldByName('fileid').AsString := FileID;
                  dmAxiom.qryMatterAttachments.FieldByName('nmatter').AsInteger := dmAxiom.qryMSearch.FieldByName('nmatter').AsInteger;
                  dmAxiom.qryMatterAttachments.FieldByName('auth1').AsString := dmAxiom.UserID;
                  dmAxiom.qryMatterAttachments.FieldByName('D_CREATE').AsDateTime := AEmailDateTime;  ///RwUTCToLocal(FMessage.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);
                  dmAxiom.qryMatterAttachments.FieldByName('IMAGEINDEX').AsInteger := 4;
//                  dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := FMessage.PropByName(PR_SUBJECT).AsString;
//                  dmAxiom.qryMatterAttachments.FieldByName('DESCR').AsString := FMessage.PropByName(PR_SUBJECT).AsString;
                  dmAxiom.qryMatterAttachments.FieldByName('FILE_EXTENSION').AsString := 'msg';
                  dmAxiom.qryMatterAttachments.FieldByName('NPRECCATEGORY').AsInteger := SystemInteger('EMAIL_DFLT_CATEGORY');
                  dmAxiom.qryMatterAttachments.FieldByName('NPRECCLASSIFICATION').AsInteger := SystemInteger('EMAIL_DFLT_CLASSIFICATION');
                  dmAxiom.qryMatterAttachments.FieldByName('EMAIL_SENT_TO').AsString := FMessage.PropByName(PR_DISPLAY_TO).AsString;
	        	      dmAxiom.qryMatterAttachments.FieldByName('EMAIL_FROM').AsString := FMessage.PropByName(PR_SENDER_NAME).AsString;

                  if (SystemInteger('DFLT_DOC_SAVE_OPTION') = 0) then
                  begin
                     Randomize;
                     RandFile := IntToStr(RandomRange(100, 10000));
                     tmpFileName := dmAxiom.GetEnvVar('TMP')+'\' + 'axeml' + RandFile + '.msg';

                     FMessage.SaveToFile(tmpFileName);
                     TBlobField(dmAxiom.qryMatterAttachments.fieldByname('DOCUMENT')).LoadFromFile(tmpFileName);
                     sSubject := FMessage.PropByName(PR_SUBJECT).AsString;
                     // clean up subject line
                     for i := 0 to (length(sSubject) - 1) do
                     begin
                        if (sSubject[i] in ['/','\','?','"','<','>','|','*',':',';']) then
                           sSubject[i] := ' ';
                     end;
                     dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := sSubject;
                     dmAxiom.qryMatterAttachments.FieldByName('DESCR').AsString := sSubject;

                     DeleteFile(tmpFileName);
                     dmAxiom.qryMatterAttachments.Post;
                     dmAxiom.uniInsight.Commit;
                  end
                  else
                  begin
                     try
                        sSubject := FMessage.PropByName(PR_SUBJECT).AsString;
                        // clean up subject line
                        for x := i + 1 to length(sSubject) do
                        begin
                           if (sSubject[x] in ['/','\','?','"','<','>','|','*',':',';']) then
                              sSubject[x] := ' ';
                        end;

                        ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\' + sSubject + '_' + '[DOCSEQUENCE]'+'.msg';
                        AParsedDocName := ParseMacros(ANewDocName, TableInteger('MATTER','FILEID',FileID,'NMATTER'));

                        AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
                        // check directory exists, if not create it
                        if not DirectoryExists(AParsedDir) then
                           ForceDirectories(AParsedDir);
                        try
                           FMessage.SaveToFile(AParsedDocName);
                        except
                           on e: Exception do
                           begin
                              MessageDlg('Error saving Email:'#13#13 + E.Message, mtError, [mbOK], 0);
                              dmAxiom.qryMatterAttachments.Cancel;
                              dmAxiom.uniInsight.Rollback;
                           end;
                        end;

                        dmAxiom.qryMatterAttachments.FieldByName('display_path').AsString := AParsedDocName;
                        dmAxiom.qryMatterAttachments.FieldByName('path').AsString := IndexPath(AParsedDocName, 'DOC_SHARE_PATH');
                        dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := sSubject;
                        dmAxiom.qryMatterAttachments.FieldByName('DESCR').AsString := sSubject;

                        dmAxiom.qryMatterAttachments.Post;
                        dmAxiom.uniInsight.Commit;
                     except
                        on e: Exception do
                        begin
                           MessageDlg('Error saving Email:'#13#13 + E.Message, mtError, [mbOK], 0);
                           dmAxiom.qryMatterAttachments.Cancel;
                           dmAxiom.uniInsight.Rollback;
                        end;
                     end;
                  end;
               end;
            except
               dmAxiom.uniInsight.Rollback;
            end;
         end;
      end;
      tv.EndUpdate;
      grdMail.FocusedView.DataController.Groups.FullExpand;
   end;
end;

procedure TfrmOutLookDiaryNew.lvMessagesDblClick(Sender: TObject);
var
   Msg : IRwMapiMessage;
//   MsgForm: TFrmMessage;
//   FormMgr : IRwMapiFormMgr;
   FormRect: TRect;
begin
   Msg := GetSelectedMessage;
//   Msg.DisplayProperties;

   begin
      // Display the message in a Form Manager form.
      // A Form Manager Form is more flexible than the default mapi form

      // get a form manager
 //     FormMgr := dmAxiom.MapiSession.GetFormMgr;

      // get the last known size and position of a form this type
      FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 250, 300);

      // Show the form
      FormMgr.ShowMessage(Msg);
   end;

    // set the readflag
//   Msg.SetReadFlag(True);
   Msg.SaveChanges(smKeepOpenReadOnly);
//   TRwListItemData(lvMessages.Selected.Data).MsgRead := True;
end;

procedure TfrmOutLookDiaryNew.lvMessagesColumnClick(Sender: TObject;
  Column: TListColumn);
begin
   // sort on the clicked column
   // a click on the same column is a toggle (from ascending to descanding or back)
   if Column.Index+1 = FSortIndex then
      FSortIndex := -1 * FSortIndex {toggle}
   else
      FSortIndex := Column.Index+1;
//   lvMessages.OnCompare := nil;
//   lvMessages.SortType := stNone;
//   lvMessages.OnCompare := lvMessagesCompare;
//   lvMessages.SortType := stData;
end;

procedure TfrmOutLookDiaryNew.tvFoldersChange(Sender: TObject;
  Node: TTreeNode);
var
   TreeNodeData: TRwTreeNodeData;
   Folder, RootFld: IRwMapiFolder;
   TreeNode, MsgStoreNode, DefaultMsgStoreNode: TTreeNode;
   ReceivedMsg : IRwMapiMessage;
begin
  // get (and open) the MessageStore in which the selected folder is located in
   if FFolderListBuilt then
   begin
      TreeNodeData := TRwTreeNodeData(Node.Data);
      try // ... finally
         FCurrentFolderID := TRwTreeNodeData(Node.Data).FolderID;  //TRwTreeNodeData(Node.Data).FMsgStore.OpenFolder(TRwTreeNodeData(Node.Data).FolderID, alReadOnly, False);
      finally
         pnlInbox.Caption := '  '+ tvFolders.Selected.Text;
         Getemail(sender);
      end;
   end;
end;

procedure TfrmOutLookDiaryNew.NewMessage(var Message: TMessage);
// Description:
//   React to an incoming message
//   This method is called by the PostMessage. The WParam contains a
//   pointer to a string that contains a messageid
var
  Msg: IRwMapiMessage;
  MsgId : TRwMapiEntryId;
  StrMsgId: Variant;
  bStream: TStream;
  sSubject, k, fileid: string;
  nPos, matter, i: integer;
begin
   // get the messageid
   StrMsgId := Message.WParam;
   try
     // convert it back to a valid TRwEntryID
     MsgId := StrMsgId;
   finally
//     StrMsgId := nil;
   end;

   // Get the folder which contains the message
   Msg := FMsgStore.OpenMessage(MsgId, alReadWrite, False);

   sSubject := Msg.PropByName(PR_SUBJECT).AsString;
   if (pos('[Matter #', sSubject) > 0) or
      (pos('[Matter#', sSubject) > 0)  and
      (TableInteger('DOC', 'DESCR', sSubject, 'DOCID') = 0) then
   begin
      dmAxiom.qryMatterAttachments.Open;
      dmAxiom.qryMatterAttachments.Insert;

      nPos := pos('#', sSubject);
      for  i := (nPos + 1) to length(sSubject) do
      begin
         k := sSubject[i];
         if k <> '' then
            fileid := fileid + k
         else
            break;
      end;

      fileid := Trim(fileid);
      matter := StrToInt(MatterString(fileid, 'NMATTER'));

      FMsgStore.OpenMessage(MsgId, alReadOnly, False);

      dmAxiom.qryMatterAttachments.FieldByName('fileid').AsString := fileid;
      dmAxiom.qryMatterAttachments.FieldByName('nmatter').AsInteger := matter;
      dmAxiom.qryMatterAttachments.FieldByName('D_CREATE').AsDateTime := Now;
      dmAxiom.qryMatterAttachments.FieldByName('IMAGEINDEX').AsInteger := 1;
      dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := Msg.PropByName(PR_SUBJECT).AsString;
      bStream := dmAxiom.qryMatterAttachments.CreateBlobStream(dmAxiom.qryMatterAttachments.fieldByname('DOCUMENT'), bmReadWrite);
//      Msg.SaveMessageTextToStream(bStream,);
      bStream.free;
      dmAxiom.qryMatterAttachments.Post;
   end;
end;

procedure TfrmOutLookDiaryNew.TimerTimer(Sender: TObject);
begin
   try
      dmAxiom.MapiSession.FlushQueues();
   except
     // catch
   end;
end;

procedure TfrmOutLookDiaryNew.udFlushQueusIntervalChange(Sender: TObject);
begin
   Timer.Interval := StrToInt(udFlushQueusInterval.Text) * 1000 * 60;
end;

procedure TfrmOutLookDiaryNew.btnPrintClick(Sender: TObject);
var
//  FormMgr: IRwMapiFormMgr;
  Msg : IRwMapiMailMessage;
begin
   Msg := GetSelectedMessage;
//   FormMgr := dmAxiom.MapiSession.GetFormMgr;
   FormMgr.PrintMessage(Msg);
end;

procedure TfrmOutLookDiaryNew.btnMoveToFolderClick(Sender: TObject);
var
  ParentFolder, DestFolder: IRwMapiFolder;
  Msg : IRwMapiMailMessage;
begin
   MapiFolderDialog.MapiSession := dmAxiom.MapiSession;
   Msg := GetSelectedMessage;
   MapiFolderDialog.InitialMsgStoreID := Msg.MsgStore.PropByName(PR_ENTRYID).Value;
   if MapiFolderDialog.Execute then
   begin
     DestFolder := FMsgStore.OpenFolder(MapiFolderDialog.FolderID, alReadWrite);
     ParentFolder := FMsgStore.OpenFolder(Msg.PropByName(PR_PARENT_ENTRYID).Value, alReadWrite);
     ParentFolder.CopyMessage(Msg.PropByName(PR_ENTRYID).Value, DestFolder, True);
   end; 
end;

procedure TfrmOutLookDiaryNew.btnReplyClick(Sender: TObject);
var
//  FrmNewMessage: TFrmNewMessage;
  Reply: IRwMapiMailMessage;
  ConvIndx: OleVariant;
  Recips: IRwMapiRecipientTable;
  Msg : IRwMapiMailMessage;
//  FormMgr : IRwMapiFormMgr;
  FormRect: TRect;
begin
   try
      Msg := GetSelectedMessage;
      Reply := CreateReply;

//      FAddressbook := ;
      Recips := dmAxiom.MapiSession.OpenAddressBook(True).CreateRecipientTable;

//      Recips.Insert;
      Recips.Recipients[rtTo] := Msg.PropByName(PR_SENDER_EMAIL_ADDRESS).Value;
//      Recips.FieldByName(PR_RECIPIENT_TYPE). := rtTo;
//      Recips.FieldByName(PR_DISPLAY_NAME).Value := Msg.PropByName(PR_SENDER_NAME).Value;
//      Recips.FieldByName(PR_ADDRTYPE).Value := Msg.PropByName(PR_SENDER_ADDRTYPE).Value;
//      Recips.FieldByName(PR_EMAIL_ADDRESS).Value := Msg.PropByName(PR_SENDER_EMAIL_ADDRESS).Value;
//      Recips.FieldByName(PR_ENTRYID).Value := Msg.PropByName(PR_SENDER_ENTRYID).Value;

      Reply.PropByName(PR_SUBJECT).AsString := 'RE: ' + Msg.PropByName(PR_SUBJECT).AsString;
//      Reply.ModifyRecipients(moReplaceAll, Recips);
      ConvIndx := Msg.PropByName(PR_CONVERSATION_INDEX).Value;
      Reply.PropByName(PR_CONVERSATION_INDEX).Value := RwCreateConversationIndex(ConvIndx);
   finally
      Msg := nil;
   end;
end;

procedure TfrmOutLookDiaryNew.btnReplyAllClick(Sender: TObject);
var
//  FrmNewMessage: TFrmNewMessage;
  Reply: IRwMapiMailMessage;
  ConvIndx: OleVariant;
  Recips: IRwMapiRecipientTable;
  OldMsgRecips: IRwMapiTable;
  Msg : IRwMapiMailMessage;
//  FormMgr : IRwMapiFormMgr;
  FormRect: TRect;
begin
   Msg := GetSelectedMessage;

{   if SystemInteger('EMAIL_TYPE_DEFAULT') = 0 then
   begin
      try
         Reply := CreateReply;

         FAddressbook := dmAxiom.MapiSession.GetAddressBook(False);
         Recips := FAddressbook.GetRecipientTable;

         // Forward all
         OldMsgRecips := Msg.GetRecipientTable;
         OldMsgRecips.SetFields(VarArrayOf([PR_RECIPIENT_TYPE, PR_DISPLAY_NAME, PR_ADDRTYPE, PR_EMAIL_ADDRESS, PR_ENTRYID]));
         OldMsgRecips.First;
         while not OldMsgRecips.EOF do
         begin
            if OldMsgRecips.FieldByName(PR_RECIPIENT_TYPE).AsInteger <> rtTo then
            begin
               Recips.Insert;
               Recips.FieldByName(PR_RECIPIENT_TYPE).AsInteger := rtTo;
               Recips.FieldByName(PR_DISPLAY_NAME).Value := OldMsgRecips.FieldByName(PR_DISPLAY_NAME).Value;
               Recips.FieldByName(PR_ADDRTYPE).Value := OldMsgRecips.FieldByName(PR_ADDRTYPE).Value;
               Recips.FieldByName(PR_EMAIL_ADDRESS).Value := OldMsgRecips.FieldByName(PR_EMAIL_ADDRESS).Value;
               Recips.FieldByName(PR_ENTRYID).Value := OldMsgRecips.FieldByName(PR_ENTRYID).Value;
            end;
            OldMsgRecips.Next;
         end;

         Recips.Insert;
         Recips.FieldByName(PR_RECIPIENT_TYPE).AsInteger := rtTo;
         Recips.FieldByName(PR_DISPLAY_NAME).Value := Msg.PropByName(PR_SENDER_NAME).Value;
         Recips.FieldByName(PR_ADDRTYPE).Value := Msg.PropByName(PR_SENDER_ADDRTYPE).Value;
         Recips.FieldByName(PR_EMAIL_ADDRESS).Value := Msg.PropByName(PR_SENDER_EMAIL_ADDRESS).Value;
         Recips.FieldByName(PR_ENTRYID).Value := Msg.PropByName(PR_SENDER_ENTRYID).Value;

         Reply.PropByName(PR_SUBJECT).AsString := 'RE: ' + Msg.PropByName(PR_SUBJECT).AsString;
         Reply.ModifyRecipients(moReplaceAll, Recips);
         ConvIndx := Msg.PropByName(PR_CONVERSATION_INDEX).Value;
         Reply.PropByName(PR_CONVERSATION_INDEX).Value := RwCreateConversationIndex(ConvIndx);

         FrmNewMessage := TFrmNewMessage.Create(Application);
         FrmNewMessage.Initialize(dmAxiom.MapiSession, Reply, Recips);
         FrmNewMessage.Show;
      except
      //
      end;
   end
   else   }
   begin
//      Folder := FMsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
      // Display the message in a Form Manager form.
      // A Form Manager Form is more flexible than the default mapi form

      // get a form manager
//      FormMgr := dmAxiom.MapiSession.GetFormMgr;
//      FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);

      // get the last known size and position of a form this type
      FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 400, 400);

      // Show the form
      FormMgr.ReplyToAll(Msg);
   end;

end;

procedure TfrmOutLookDiaryNew.btnforwardClick(Sender: TObject);
var
//  FrmNewMessage: TFrmNewMessage;
  DefMsgStore: IRwMapiMsgStore;
  OutBox: IRwMapiFolder;
  ForwardMsg: IRwMapiMailMessage;
  ConvIndx: OleVariant;
  Msg : IRwMapiMailMessage;
//  FormMgr : IRwMapiFormMgr;
   FormRect: TRect;
begin
   Msg := GetSelectedMessage;
   DefMsgStore := dmAxiom.MsgStore;;
   OutBox := DefMsgStore.OpenFolderByType(ftOutbox, alReadWrite);
//   ForwardMsg := OutBox.

//   CreateMailMessage('IPM.Message');

{   if SystemInteger('EMAIL_TYPE_DEFAULT') = 0 then
   begin
      try
         Msg.CopyTo(ForwardMsg,
           VarArrayOf([
             PR_CLIENT_SUBMIT_TIME
             , PR_MESSAGE_DELIVERY_TIME
             , PR_MESSAGE_DOWNLOAD_TIME
             , PR_MESSAGE_FLAGS
             , PR_MESSAGE_ATTACHMENTS
             , PR_MESSAGE_RECIPIENTS
             , PR_DISPLAY_TO
             , PR_DISPLAY_CC
             , PR_DISPLAY_BCC
             , PR_ORIGINATOR_DELIVERY_REPORT_REQUESTED
             , PR_READ_RECEIPT_ENTRYID
             , PR_READ_RECEIPT_REQUESTED
             , PR_REPORT_ENTRYID
             , PR_SENTMAIL_ENTRYID
             , PR_SUBJECT_PREFIX
             , PR_RCVD_REPRESENTING_ADDRTYPE
             , PR_RCVD_REPRESENTING_EMAIL_ADDRESS
             , PR_RCVD_REPRESENTING_ENTRYID
             , PR_RCVD_REPRESENTING_NAME
             , PR_RCVD_REPRESENTING_SEARCH_KEY
             , PR_RECEIVED_BY_ADDRTYPE
             , PR_RECEIVED_BY_EMAIL_ADDRESS
             , PR_RECEIVED_BY_ENTRYID
             , PR_RECEIVED_BY_NAME
             , PR_RECEIVED_BY_SEARCH_KEY
             , PR_REPLY_RECIPIENT_ENTRIES
             , PR_REPLY_RECIPIENT_NAMES
             , PR_SENDER_ADDRTYPE
             , PR_SENDER_EMAIL_ADDRESS
             , PR_SENDER_ENTRYID
             , PR_SENDER_NAME
             , PR_SENDER_SEARCH_KEY
             , PR_SENT_REPRESENTING_ADDRTYPE
             , PR_SENT_REPRESENTING_EMAIL_ADDRESS
             , PR_SENT_REPRESENTING_ENTRYID
             , PR_SENT_REPRESENTING_NAME
             , PR_SENT_REPRESENTING_SEARCH_KEY
             , PR_TRANSPORT_MESSAGE_HEADERS])
           , True
         );

         ForwardMsg.PropByName(PR_SENT_REPRESENTING_ADDRTYPE).Value      :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_ADDRTYPE).Value;
         ForwardMsg.PropByName(PR_SENT_REPRESENTING_EMAIL_ADDRESS).Value :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_EMAIL_ADDRESS).Value;
         ForwardMsg.PropByName(PR_SENT_REPRESENTING_ENTRYID).Value       :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_ENTRYID).Value;
         ForwardMsg.PropByName(PR_SENT_REPRESENTING_NAME).Value          :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_NAME).Value;
         ForwardMsg.PropByName(PR_SENT_REPRESENTING_SEARCH_KEY).Value    :=  ForwardMsg.PropByName(PR_RCVD_REPRESENTING_SEARCH_KEY).Value;

         ForwardMsg.PropByName(PR_SUBJECT).AsString := 'FW: ' + Msg.PropByName(PR_SUBJECT).AsString;
         ConvIndx := Msg.PropByName(PR_CONVERSATION_INDEX).Value;
         ForwardMsg.PropByName(PR_CONVERSATION_INDEX).Value := RwCreateConversationIndex(ConvIndx);

         FrmNewMessage := TFrmNewMessage.Create(Application);
         FrmNewMessage.Initialize(dmAxiom.MapiSession, ForwardMsg);
         FrmNewMessage.Show;
      except
      //
      end;
   end
   else   }
   begin
//      Folder := FMsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
      // Display the message in a Form Manager form.
      // A Form Manager Form is more flexible than the default mapi form

      // get a form manager
//      FormMgr := dmAxiom.MapiSession.GetFormMgr;
//      FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);

      // get the last known size and position of a form this type
      FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 400, 400);

      // Show the form
      FormMgr.ForwardMessage(Msg);
   end;
end;

function TfrmOutLookDiaryNew.CreateReply: IRwMapiMailMessage;
var
  DefMsgStore: IRwMapiMsgStore;
  OutBox: IRwMapiFolder;
  Msg : IRwMapiMailMessage;
//  FormMgr : IRwMapiFormMgr;
  FormRect: TRect;
begin
   Msg := GetSelectedMessage;
   DefMsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore;
   OutBox := DefMsgStore.OpenFolderByType(ftOutbox, alReadWrite);
//   Result := OutBox.CreateMessage('IPM.Message');
   begin
//      Folder := FMsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
      // Display the message in a Form Manager form.
      // A Form Manager Form is more flexible than the default mapi form

      // get a form manager
//      FormMgr := dmAxiom.MapiSession.GetFormMgr;
//      FormMgr.SetBeforeSubmitMessage(BeforeSubmitMessage);

      // get the last known size and position of a form this type
      FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 400, 400);

      // Show the form
      FormMgr.ReplyToSender(Msg);
   end;
end;


procedure TfrmOutLookDiaryNew.tvMailReceivedGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
   if ARecord is TcxGridGroupRow then
      AText := GetGroupDateDisplayText(ARecord.Values[Sender.Index]);
//   if ARecord is TcxGridDataRow then
//      AText := FormatDateTime('ddd dd/mm/yyyy hh:mm AM/PM', StrToDate(AText));
end;

procedure TfrmOutLookDiaryNew.tvMailDataControllerCompare(
  ADataController: TcxCustomDataController; ARecordIndex1, ARecordIndex2,
  AItemIndex: Integer; const V1, V2: Variant; var Compare: Integer);
begin
   if (AItemIndex <> tvMailReceived.Index) then
      Compare := VarCompare(V1, V2)
   else
      Compare := GetDateValueIndex(V1) - GetDateValueIndex(V2);
end;

function TfrmOutLookDiaryNew.GetDateValueIndex(ADate: TDateTime): Integer;
var
  ADaysBetween: Integer;
begin
 {  ADaysBetween := DaysBetween(Date, Trunc(ADate));
   Result := DateValueIndexOlder;
   if ADaysBetween = 0 then
      Result := DateValueIndexToday
   else
      if ADaysBetween = 1 then
         Result := DateValueIndexYesterday
      else
         if ADaysBetween < 7 then
            Result := DateValueIndexLastWeek
         else
            if ADaysBetween < 14 then
               Result := DateValueIndexTwoWeeksAgo
            else
               if (ADaysBetween < 21) then
                  Result := DateValueIndexThreeWeeksAgo
               else
                  if (ADaysBetween > 21) then
                     Result := DateValueIndexOlder; }

   ADaysBetween := DaysBetween(Date, Trunc(ADate));
   Result := DateValueIndexOlder;
   if ADaysBetween = 0 then
      Result := DateValueIndexToday
   else
      if ADaysBetween = 1 then
         Result := DateValueIndexYesterday
      else
         if (ADaysBetween < 7) then
         begin
            if DayOfTheWeek(ADate) > DayOfTheWeek(Now) then
               Result := DateValueIndexLastWeek
            else
            begin
               Case DayOfTheWeek(ADate) of
                  1: Result := DateValueIndexMonday;
                  2: Result := DateValueIndexTuesday;
                  3: Result := DateValueIndexWednesday;
                  4: Result := DateValueIndexThursday;
                  5: Result := DateValueIndexFriday;
               else
                  Result := DateValueIndexLastWeek;
               end;
            end;
         end
         else
            if (ADaysBetween < 14)  then
               Result := DateValueIndexTwoWeeksAgo
            else
               if  (ADaysBetween < 21) then
                  Result := DateValueIndexThreeWeeksAgo
               else
                  if (ADaysBetween > 21) then
                     Result := DateValueIndexOlder;
end;

function TfrmOutLookDiaryNew.GetGroupDateDisplayText(ADate: TDateTime): string;
const
   DisplayText: Array[DateValueIndexToday..DateValueIndexOlder] of String =
//    ('Today', 'Yesterday', 'Last Week', 'Two Weeks Ago', 'Three Weeks Ago', 'Older');
    ('Today', 'Yesterday', 'Friday', 'Thursday', 'Wednesday','Tuesday','Monday','Last Week', 'Two Weeks Ago', 'Three Weeks Ago', 'Older');
begin
   Result := ' Date: ' + DisplayText[GetDateValueIndex(ADate)];
end;

procedure TfrmOutLookDiaryNew.tvMailSizeGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
   if ARecord is TcxGridDataRow then
   begin
      if StrToInt(AText) < 1024 then
         AText := Format('%d B',[StrToInt(AText)])
      else
         AText := Format('%d kB',[StrToInt(AText) div 1024]);
   end;
end;

procedure TfrmOutLookDiaryNew.tvMailStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord is TcxGridDataRow then
  begin
    if ARecord.Values[tvMailIcon.Index] = 0 then
      AStyle := dmAxiom.UnreadStyle;
  end;
end;

procedure TfrmOutLookDiaryNew.tvMailDblClick(Sender: TObject);
var
   Msg : IRwMapiMailMessage;
//   MsgForm: TFrmMessage;
//   FormMgr : IRwMapiFormMgr;
   FormRect: TRect;
begin
   Msg :=  GetSelectedMessage;
//   Msg := dmAxiom.MsgStore.OpenMessage(RwConvertStrEntryIDToOle(tvMailEntry_ID.EditValue), alReadWrite, False);
   //   Msg.DisplayProperties;

   if not RwSameText(Msg.PropByName(PR_MESSAGE_CLASS).AsString, 'IPM.Note') then
      raise Exception.Create('Unsupported Message Class');

{   if SystemInteger('EMAIL_TYPE_DEFAULT') = 0 then
   begin
      try
         // Display the new message in a custom build form. This is a 100% Delphi solution
         MsgForm := TFrmMessage.Create(Self);
         MsgForm.LoadMessage(dmAxiom.MapiSession, Msg);
         MsgForm.Show;
      except
      //
      end;
   end
   else }
   begin
      // Display the message in a Form Manager form.
      // A Form Manager Form is more flexible than the default mapi form

      // get a form manager
//      FormMgr := dmAxiom.MapiSession.GetFormMgr;

      // get the last known size and position of a form this type
//      FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 250, 300);

      // Show the form
      FormMgr.ShowMessage(Msg{, FormRect});
   end;

    // set the readflag
//   Msg.SetReadFlag(True);
   Msg.SaveChanges(smKeepOpenReadOnly);
   Msg.UnRead;

   tvMailIcon.EditValue := True;
end;

procedure TfrmOutLookDiaryNew.cxCheckBox1Click(Sender: TObject);
begin
   FShowMatter := cxCheckBox1.Checked;
   tvMailFileID.Visible := FShowMatter;
end;

procedure TfrmOutLookDiaryNew.tvMailDataControllerBeforeDelete(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
begin
   btnDelete.Click;
end;

procedure TfrmOutLookDiaryNew.tvMailDataControllerGroupingChanged(
  Sender: TObject);
begin
   grdMail.FocusedView.DataController.Groups.FullExpand;
end;

procedure TfrmOutLookDiaryNew.emailNavBarActiveGroupChanged(Sender: TObject);
begin
   pagEmails.ActivePageIndex := emailNavBar.ActiveGroupIndex;
end;

procedure TfrmOutLookDiaryNew.tabCalendarShow(Sender: TObject);
begin
   pnlInbox.Caption := '  Calendar';
end;

procedure TfrmOutLookDiaryNew.tabEmailsShow(Sender: TObject);
begin
{   try
      pnlInbox.Caption := '  '+ tvFolders.Selected.Text;
   except
      pnlInbox.Caption := '  Inbox';
   end;        }
end;

procedure TfrmOutLookDiaryNew.tabContactsShow(Sender: TObject);
begin
   pnlInbox.Caption := '  Contacts';
end;

procedure TfrmOutLookDiaryNew.RwMapiMsgStoreEvents1ObjectCreated(
  Sender: TObject; ObjectEntryID: TRwMapiEntryID;
  ObjectType: TRwMapiObjectType; ParentEntryID, OldObjectEntryID,
  OldParentEntryID: TRwMapiEntryID;
  const ChangedProperties: IRwMapiPropList);
var
  StrMsgId: PChar;
begin
  FMsgStore.OpenFolderByType(ftInbox);
  if (ObjectType = otMessage) and FMsgStore.CompareEntryIDs(FInboxFolderID, ParentEntryID) then
  begin
//    StrMsgId := StrNew(PChar(RwConvertEntryIDToStr(ObjectEntryID)));
    PostMessage(Self.Handle, WM_NEWMESSAGE, Integer(ObjectEntryID), 0);
  end;
end;

procedure TfrmOutLookDiaryNew.FormMgrBeforeSubmitMessage(Sender: TObject;
  const MessageSite: IRwMapiMessageSite);
var
//   Folder: IRwMapiMailFolder;
//   bStream, fStream: TStream;
   sSubject: string;
   i, x: integer;
   iFileHandle: Integer;
   iFileLength: Integer;
   iBytesRead: Integer;
   Buffer: PChar;
   tmpFileName: string;
begin
   if FFileID = '' then
   begin
      sSubject := MessageSite.MapiMessage.PropByName(PR_SUBJECT).AsString;
      for i := 1 to length(sSubject) do
      begin
         if sSubject[i] = '#' then
         begin
            for x := i + 1 to length(sSubject) do
            begin
               if (sSubject[x] <> ' ') and (sSubject[x] <> ']') then
                  FFileID := FFileID + sSubject[x];
            end;
         end;
      end;
      if FFileID <> '' then
      begin
         MessageSite.MapiMessage.PropByName(MATTER).AsString := FFileID;
         MessageSite.MapiMessage.SaveChanges(smKeepOpenReadWrite);
      end;
   end;

end;

procedure TfrmOutLookDiaryNew.RwMapiTableEvents1TableRowDeleted(
  Sender: TObject; InstanceKey: TRwMapiByteArray);
var
  i: Integer;
begin
{  for i := 0 to lvMessages.Items.Count - 1 do
    if RwCompareVarArray(InstanceKey, TRwListItemData(lvMessages.Items[i].Data).InstanceKey) then
    begin
      lvMessages.Items.Delete(i);
      lvMessages.Invalidate;
      break;
    end;  }
end;

end.
