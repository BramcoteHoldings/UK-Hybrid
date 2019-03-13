{D5CHK*************************************************************************}
{                                                                              }
{                            RAPware Easy MAPI V3.5                            }
{                                                                              }
{                       Copyright (c) 1999, 2005 RAPWare                       }
{                                                                              }
{******************************************************************************}
unit fMain;

interface

{$I RAPWare.inc}

uses
  Forms, Menus, Classes, ActnList, ImgList, Controls, StdCtrls, ComCtrls,
  ToolWin, ExtCtrls, uRwMapiV3Session, RwMAPI_TLB, Dialogs,
  fRwMapiV3FolderDialog, uRwMapiV3EntryID;

type
  TFrmMain = class(TForm)
    bvTop: TBevel;
    tbarMain: TToolBar;
    tbtnLogon: TToolButton;
    tbtnFlushQueues: TToolButton;
    tbtnClose: TToolButton;
    StatusBar: TStatusBar;
    MapiSession: TRwMapiSessionV3;
    ImageList: TImageList;
    ActionList: TActionList;
    actConnect: TAction;
    actClose: TAction;
    actFlushQueues: TAction;
    lvMessages: TListView;
    tbtnDetails: TToolButton;
    actDisplayProperties: TAction;
    popupDetails: TPopupMenu;
    actViewEasyMAPIForm: TAction;
    Details1: TMenuItem;
    DetailsinEasyMAPIForm1: TMenuItem;
    actViewMAPIForm: TAction;
    actViewFormManager: TAction;
    DetailsinEasyMAPIForm2: TMenuItem;
    DetailsinFormManagerForm1: TMenuItem;
    panRestrictions: TPanel;
    Label1: TLabel;
    chBxSuppressReadMessages: TCheckBox;
    edtShowMessagesFrom: TEdit;
    actRefresh: TAction;
    actNewEasyMAPI: TAction;
    actNewDefaultMAPIForm: TAction;
    actNewFormManager: TAction;
    PopupNew: TPopupMenu;
    actNewEasyMAPIAppointment1: TMenuItem;
    NewAppointmentDefaultMAPIForm1: TMenuItem;
    NewAppointmentFormManager1: TMenuItem;
    tbtnNew: TToolButton;
    actOpenFolder: TAction;
    ToolButton1: TToolButton;
    RwMapiFolderDialog: TRwMapiFolderDialogV3;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MapiSessionAfterLogon(Sender: TObject);
    procedure MapiSessionAfterLogoff(Sender: TObject);
    procedure actConnectExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure tbtnFlushQueuesClick(Sender: TObject);
    procedure lvMessagesDeletion(Sender: TObject; Item: TListItem);
    procedure lvMessagesCompare(Sender: TObject; Item1, Item2: TListItem; Data: Integer; var Compare: Integer);
    procedure lvMessagesColumnClick(Sender: TObject; Column: TListColumn);
    procedure actFlushQueuesExecute(Sender: TObject);
    procedure lvMessagesClick(Sender: TObject);
    procedure actDisplayPropertiesExecute(Sender: TObject);
    procedure actViewEasyMAPIFormExecute(Sender: TObject);
    procedure actViewMAPIFormExecute(Sender: TObject);
    procedure actViewFormManagerExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actNewEasyMAPIExecute(Sender: TObject);
    procedure actNewDefaultMAPIFormExecute(Sender: TObject);
    procedure actNewFormManagerExecute(Sender: TObject);
    procedure actOpenFolderExecute(Sender: TObject);
  private
    { Private declarations }
    FSortIndex: Integer;
    FCurrentFolderID: TRwMapiEntryID;
    function GetSelectedMessage: IRwMapiMessage;
  protected
    { Protected declarations }
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}
uses
  SysUtils
  , Graphics
  {$IFDEF VARIANTS}
  , Variants
  {$ENDIF VARIANTS}
  , uRwSysUtils
  , uRwDateTimeUtils
  , uRwMapiTagsH
  , uRwMapiV3Utils
  , fLogon
  , fMessage
  , fNewMessage
  ;

type
  // The TRwListItemData is a "container" object.
  // It's primary purpose is to store the data from the contenttable
  // It's secondary purpose is to set the current value in the listview item (via the property setters)
  TRwListItemData = class
  private
    FListItem   : TListItem;
    FMsgStore   : IRwMapiMsgStore;
    FEntryID    : TRwMapiEntryID;
    FPriority   : Integer;
    FMsgRead    : Boolean;
    FHasAttach  : Boolean;
    FFrom       : string;
    FSubject    : string;
    FSize       : Integer;
    FReceivedOn : TDateTime;
    procedure SetPriority(const Value: Integer);
    procedure SetMsgRead(const Value: Boolean);
    procedure SetHasAttach(const Value: Boolean);
    procedure SetFrom(const Value: string);
    procedure SetSubject(const Value: string);
    procedure SetSize(const Value: Integer);
    procedure SetReceivedOn(const Value: TDateTime);
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
  end;

{ TRwListItemData }

constructor TRwListItemData.Create(AListItem: TListItem);
var
  i: Integer;
begin
  FListItem := AListItem;
  AListItem.Data := Self;

  // initialize 6 empty subitems
  for i := 1 to 6 do
    AListItem.SubItems.Add('');
end;

procedure TRwListItemData.SetPriority(const Value: Integer);
begin
  FPriority := Value;
  case FPriority of
    -1 : FListItem.ImageIndex := 9;
    1  : FListItem.ImageIndex := 8;
  else
    FListItem.ImageIndex := -1;
  end;
end;

procedure TRwListItemData.SetMsgRead(const Value: Boolean);
begin
  FMsgRead := Value;
  if FMsgRead then
    FListItem.SubItemImages[0] := 5
  else
    FListItem.SubItemImages[0] := 4;
end;

procedure TRwListItemData.SetHasAttach(const Value: Boolean);
begin
  FHasAttach := Value;
  if FHasAttach then
    FListItem.SubItemImages[1] := 6;
end;

procedure TRwListItemData.SetFrom(const Value: string);
begin
  FFrom := Value;
  FListItem.SubItems[2] := Value;
end;

procedure TRwListItemData.SetSubject(const Value: string);
begin
  FSubject := Value;
  FListItem.SubItems[3] := Value;
end;

procedure TRwListItemData.SetSize(const Value: Integer);
begin
  FSize := Value;
  if Value < 1024 then
    FListItem.SubItems[4] := Format('%d B',[Value])
  else
    FListItem.SubItems[4] := Format('%d kB',[Value div 1024])
end;

procedure TRwListItemData.SetReceivedOn(const Value: TDateTime);
begin
  FReceivedOn := Value;
  FListItem.SubItems[5] := FormatDateTime('ddd dd-mm-yyyy hh:mm', FReceivedOn)
end;

{ TFrmMain }

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  {$IFDEF D7UP}
  // set the ParentBackGround to false to
  // make sure that the background is white
  // when the theme manager is used
  panTop.Color := clWhite;
  panTop.ParentBackground := False;
  {$ENDIF D7UP}

  // initialize enabled, readonly, caption etc.
  MapiSessionAfterLogoff(Sender);
end;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
  if MapiSession.Active then
    MapiSession.Active := False;
end;

procedure TFrmMain.actConnectExecute(Sender: TObject);
begin
  if MapiSession.Active then
    MapiSession.Active := False
  else
    ShowLogonDlg(Self.MapiSession, True {yes.. this example also allows Simple MAPI});
end;

procedure TFrmMain.MapiSessionAfterLogon(Sender: TObject);
var
  MsgStore: IRwMapiMsgStore;
begin
  actConnect.Caption := 'Logoff';
  actConnect.ImageIndex := 1;
  StatusBar.Panels[0].Text := 'Connected';

  // not all functionality is available when using Simple MAPI
  actRefresh.Enabled := True;
  edtShowMessagesFrom.Enabled := MapiSession.LogonInfo.UseExtendedMapi;
  actFlushQueues.Enabled := MapiSession.LogonInfo.UseExtendedMapi;
  actViewFormManager.Enabled := MapiSession.LogonInfo.UseExtendedMapi;
  actOpenFolder.Enabled := MapiSession.LogonInfo.UseExtendedMapi;
  tbtnNew.Enabled := True;

  // initialize the FCurrentFolderID to the inbox
  MsgStore := MapiSession.GetDefaultMsgStore(alBestAccess);
  FCurrentFolderID := MsgStore.FolderIDByType(ftInbox);

  // fill the listview
  actRefreshExecute(Sender);
end;

procedure TFrmMain.MapiSessionAfterLogoff(Sender: TObject);
begin
  actConnect.Caption := 'Logon';
  actConnect.ImageIndex := 0;
  StatusBar.Panels[0].Text := 'Not Connected';

  actRefresh.Enabled := False;
  actFlushQueues.Enabled := False;
  tbtnDetails.Enabled := False;
  tbtnNew.Enabled := False;
end;

procedure TFrmMain.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmMain.tbtnFlushQueuesClick(Sender: TObject);
begin
  MapiSession.FlushQueues(ffUpload or ffDownload or ffForce);
  actRefreshExecute(Sender);
end;

procedure TFrmMain.lvMessagesDeletion(Sender: TObject; Item: TListItem);
begin
  if assigned(Item.Data) then
    TRwListItemData(Item.Data).Free;
end;

procedure TFrmMain.lvMessagesCompare(Sender: TObject; Item1, Item2: TListItem; Data: Integer; var Compare: Integer);
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
    1 {priority}    : Compare := Left.Priority - Right.Priority;
    2 {msg read}    : Compare := Integer(Left.MsgRead) - Integer(Right.MsgRead);
    3 {has attach}  : Compare := Integer(Left.HasAttach) - Integer(Right.HasAttach);
    4 {from}        : Compare := CompareText(Left.From, Right.From);
    5 {subject}     : Compare := CompareText(Left.Subject, Right.Subject);
    6 {size}        : Compare := Left.Size - Right.Size;
    7 {received on} : Compare := Trunc(Left.ReceivedOn*24*3600) - Trunc(Right.ReceivedOn*24*3600);
  end; 
end;

procedure TFrmMain.lvMessagesColumnClick(Sender: TObject; Column: TListColumn);
begin
  // sort on the clicked column
  // a click on the same column is a toggle (from ascending to descanding or back)
  if Column.Index+1 = FSortIndex then
    FSortIndex := -1 * FSortIndex {toggle}
  else
    FSortIndex := Column.Index+1;
  lvMessages.OnCompare := nil;
  lvMessages.SortType := stNone;
  lvMessages.OnCompare := lvMessagesCompare;
  lvMessages.SortType := stData;
end;

procedure TFrmMain.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if (not (csDestroying in Self.ComponentState))
  and (Operation = opRemove)
  and ((AComponent is TFrmMessage) or (AComponent is TFrmNewMessage)) then
    actRefreshExecute(Self);
end;

procedure TFrmMain.actRefreshExecute(Sender: TObject);
var
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
  ContentTable: IRwMapiTable;
  lvItem: TListItem;
  Data: TRwListItemData;
  RestrictionAnd: IRwMapiRestrictionAnd;
  RestrictionBM: IRwMapiRestrictionBitMask;
  RestrictionContent: IRwMapiRestrictionContent;
begin
  if not MapiSession.Active then
    exit;

  lvMessages.Items.BeginUpdate;
  try
    // clean possible existing data
    lvMessages.OnCompare := nil;
    lvMessages.SortType := stNone;
    lvMessages.Items.Clear;

    // get the default messagestore
    MsgStore := MapiSession.GetDefaultMsgStore(alReadWrite);

    // open the specified folder
    Folder := MsgStore.OpenFolder(FCurrentFolderID, alReadWrite, False);

    // get the contenttable for the inbox
    ContentTable := Folder.GetContentsTable;

    // specify the fields (=tags of the properties) we want to retrieve
    // The PR_ENTRYID is the most important property
    // this is the unique identifier of each message
    // we can use the value of this property later on to open the message
    ContentTable.SetFields(VarArrayOf([PR_ENTRYID, PR_SENDER_NAME, PR_SUBJECT, PR_MESSAGE_SIZE, PR_MESSAGE_DELIVERY_TIME, PR_PRIORITY, PR_PRIORITY, PR_MESSAGE_FLAGS, PR_HASATTACH]));

    // initialze restictions to NIL
    RestrictionAnd := nil;
    RestrictionBM := nil;
    RestrictionContent := nil;

    // check for Suppres Messages restriction.
    // This is the only restriction that is also allowed in Simple MAPI
    if chBxSuppressReadMessages.Checked then
    begin
      RestrictionBM := ContentTable.CreateRestriction(rtBitmask) as IRwMapiRestrictionBitMask;
      RestrictionBM.PropertyTag := PR_MESSAGE_FLAGS;
      RestrictionBM.Operator    := bmoEqualsZero;
      RestrictionBM.Mask        := mmfRead;
      if MapiSession.LogonInfo.UseExtendedMapi then
      begin
        // A restriction of type "and" is not allowed in Simple MAPI
        RestrictionAnd := ContentTable.CreateRestriction(rtAnd) as IRwMapiRestrictionAnd;
        RestrictionAnd.AddRestriction(RestrictionBM);
      end;
    end;

    if MapiSession.LogonInfo.UseExtendedMapi and (edtShowMessagesFrom.Text <> '') then
    begin
      // build the Sender restriction
      RestrictionContent := ContentTable.CreateRestriction(rtContent) as IRwMapiRestrictionContent;
      RestrictionContent.PropertyTag := PR_SENDER_NAME;
      RestrictionContent.CompareType := sctLoose;
      RestrictionContent.MatchType   := smtPrefix;
      RestrictionContent.Value       := edtShowMessagesFrom.Text;

      // Is there already a RestrictionAnd? If not ... create it
      if not assigned(RestrictionAnd) then
        RestrictionAnd := ContentTable.CreateRestriction(rtAnd) as IRwMapiRestrictionAnd;
      RestrictionAnd.AddRestriction(RestrictionContent);
    end;

    // Apply the created restriction(s)
    if assigned(RestrictionAnd) then
      ContentTable.Restrict(RestrictionAnd) {in case of extended mapi}
    else
    if assigned(RestrictionBM) then
      ContentTable.Restrict(RestrictionBM); {in case of simple mapi}

    // open the table
    ContentTable.Open;

    // loop through the table
    ContentTable.First;
    while not ContentTable.EOF do
    begin
      lvItem := lvMessages.Items.Add;

      // Create a TRwListItemData object to store the record values
      // This object is also responsible for filling the ListItem with the
      // correct values (see the property setters of this object)
      // This object is deleted in the OnDeletion event of the ListView
      Data := TRwListItemData.Create(lvItem);

      Data.MsgStore   := MsgStore;
      Data.EntryID    := ContentTable.FieldByName(PR_ENTRYID).Value;
      Data.Priority   := ContentTable.FieldByName(PR_PRIORITY).AsInteger;
      Data.MsgRead    := RwValueInSet(mmfRead, ContentTable.FieldByName(PR_MESSAGE_FLAGS).AsInteger);
      Data.HasAttach  := ContentTable.FieldByName(PR_HASATTACH).AsBoolean;
      Data.From       := ContentTable.FieldByName(PR_SENDER_NAME).AsString;
      Data.Subject    := ContentTable.FieldByName(PR_SUBJECT).AsString;
      Data.Size       := ContentTable.FieldByName(PR_MESSAGE_SIZE).AsInteger;
      Data.ReceivedOn := RwUTCToLocal(ContentTable.FieldByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);

      // * Note
      // date time values in MAPI are always stored in UTC format (Universal Time Coordinates)
      // You can use the RwUTCToLocal to convert a UTC datetime to a local datetime

      ContentTable.Next;
    end;

    // sort descending on date
    FSortIndex := -7;
    lvMessages.OnCompare := lvMessagesCompare;
    lvMessages.SortType := stData;
  finally
    lvMessages.Items.EndUpdate;
  end;
end;

procedure TFrmMain.actFlushQueuesExecute(Sender: TObject);
begin
  // Send/Receive all messages
  Screen.Cursor := crHourGlass;
  try
    MapiSession.FlushQueues(ffUpload or ffDownload or ffForce);
    actRefreshExecute(Sender);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmMain.lvMessagesClick(Sender: TObject);
begin
  // Something is selected.. enable the details button
  tbtnDetails.Enabled := True;
end;

function TFrmMain.GetSelectedMessage: IRwMapiMessage;
var
  MsgStore: IRwMapiMsgStore;
  EntryID: TRwMapiEntryID;
begin
  if not assigned(lvMessages.Selected) then
    raise EAbort.Create('');

  // A list item represents a message
  // A message can be retrieved by its PR_ENTRYID value
  // The PR_ENTRYID value is stored in the TRwListItem object that is linked
  // to the listitem (by using the Data property of the listitem)

  // get the stored data
  MsgStore := TRwListItemData(lvMessages.Selected.Data).MsgStore;
  EntryID  := TRwListItemData(lvMessages.Selected.Data).EntryID;

  // now use that data to open the message
  Result := MsgStore.OpenMessage(EntryID, alReadWrite, False);
end;

procedure TFrmMain.actDisplayPropertiesExecute(Sender: TObject);
var
  Msg : IRwMapiMessage;
  AttTable: IRwMapiTable;
  Attachment: IRwMapiAttachment;
begin
  Msg := GetSelectedMessage;

  // display a dialog with all the available properties
  Msg.DisplayProperties;

  AttTable := Msg.GetAttachmentTable;
  AttTable.SetFields(VarArrayOf([PR_ATTACH_NUM]));
  AttTable.First;
  while not AttTable.EOF do
  begin
    Attachment := Msg.OpenAttachment(AttTable.FieldByName(PR_ATTACH_NUM).AsInteger, alReadOnly, False);
    Attachment.DisplayProperties;
    AttTable.Next;
  end;
end;

procedure TFrmMain.actViewEasyMAPIFormExecute(Sender: TObject);
var
  Msg : IRwMapiMessage;
  MsgForm: TFrmMessage;
begin
  Msg := GetSelectedMessage;

  if not RwSameText(Msg.PropByName(PR_MESSAGE_CLASS).AsString, 'IPM.Note') then
    raise Exception.Create('Unsupported Message Class');

  // Display the message in a custom build form. This is a 100% Delphi solution
  MsgForm := TFrmMessage.Create(Self);
  MsgForm.LoadMessage(MapiSession, Msg);
  MsgForm.Show; // The form frees itself when closed

  // set the readflag
  Msg.SetReadFlag(True);
  Msg.SaveChanges(smKeepOpenReadOnly);
  TRwListItemData(lvMessages.Selected.Data).MsgRead := True;
end;

procedure TFrmMain.actViewMAPIFormExecute(Sender: TObject);
var
  Msg : IRwMapiMessage;
begin
  Msg := GetSelectedMessage;

  // Display the message in the default MAPI form.
  Msg.ShowForm(False, True);
end;

procedure TFrmMain.actViewFormManagerExecute(Sender: TObject);
var
  Msg : IRwMapiMessage;
  FormMgr : IRwMapiFormMgr;
  FormRect: TRwMapiRect;
begin
  Msg := GetSelectedMessage;

  // Display the message in a Form Manager form.
  // A Form Manager Form is more flexible than the default mapi form

  // get a form manager
  FormMgr := MapiSession.GetFormMgr;

  // get the last known size and position of a form this type
  FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 400, 400);

  // Show the form
  FormMgr.ShowMessage(Msg, FormRect);
end;

procedure TFrmMain.actNewEasyMAPIExecute(Sender: TObject);
var
  Msg : IRwMapiMessage;
  MsgForm: TFrmNewMessage;
begin
  Msg := MapiSession.CreateMessage('', ftOutbox, 'IPM.Note');

  // Display the new message in a custom build form. This is a 100% Delphi solution
  MsgForm := TFrmNewMessage.Create(Self);
  MsgForm.Initialize(MapiSession, Msg);
  MsgForm.Show; // the form will free itself when closed
end;

procedure TFrmMain.actNewDefaultMAPIFormExecute(Sender: TObject);
var
  Msg : IRwMapiMessage;
begin
  Msg := MapiSession.CreateMessage('', ftOutbox, 'IPM.Note');
  Msg.ShowForm(True, False);
end;

procedure TFrmMain.actNewFormManagerExecute(Sender: TObject);
var
  FormMgr : IRwMapiFormMgr;
  FormRect: TRwMapiRect;
  MsgStore: IRwMapiMsgStore;
  Folder: IRwMapiFolder;
begin
  MsgStore := MapiSession.GetDefaultMsgStore(alReadWrite);
  Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);

  // Display the message in a Form Manager form.
  // A Form Manager Form is more flexible than the default mapi form

  // get a form manager
  FormMgr := MapiSession.GetFormMgr;

  // get the last known size and position of a form this type
  FormRect := FormMgr.GetStoredRect('IPM.Note', 100, 100, 400, 400);

  // Show the form
  FormMgr.NewMessage(Folder, 'IPM.Note', FormRect);
end;

procedure TFrmMain.actOpenFolderExecute(Sender: TObject);
begin
  RwMapiFolderDialog.InitialMsgStoreID := MapiSession.GetDefaultMsgStoreID;
  if RwMapiFolderDialog.Execute then
  begin
    FCurrentFolderID := RwMapiFolderDialog.FolderID;
    actRefreshExecute(Sender);
  end;
end;

end.
