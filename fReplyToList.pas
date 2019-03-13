{D5CHK*************************************************************************}
{                                                                              }
{                            RAPware Easy MAPI V3.0                            }
{                                                                              }
{                       Copyright (c) 1999, 2004 RAPWare                       }
{                                                                              }
{******************************************************************************}
unit fReplyToList;

interface

{$I RAPWare.inc}

uses
  Forms,
  {$IFDEF D7UP}XPMan, {$ENDIF}
  {$IFDEF VARIANTS}Variants, {$ENDIF VARIANTS}
  Buttons, StdCtrls, Controls, ExtCtrls, Classes,
  uRwMapiV3Session, RwMAPI_TLB, CheckLst;

type
  TRecipientRecord = class
  private
    FRecipientName: string;
    FRecipientID  : TRwMapiEntryID;
  public
    property RecipientName: string read FRecipientName write FRecipientName;
    property RecipientID: TRwMapiEntryID read FRecipientID write FRecipientID;
  end;

  TFrmReplyToList = class(TForm)
    panTop: TPanel;
    lblFunction: TLabel;
    lblDescription: TLabel;
    bvTop: TBevel;
    panFooter: TPanel;
    bvFooterLine: TBevel;
    lblApplicationGroup: TLabel;
    btnCancel: TButton;
    btnOK: TButton;
    edtRecipient: TEdit;
    sbSelectRecipient: TSpeedButton;
    sbAddRecip: TSpeedButton;
    lbRecipients: TListBox;
    procedure FormDestroy(Sender: TObject);
    procedure sbSelectRecipientClick(Sender: TObject);
    procedure edtRecipientChange(Sender: TObject);
    procedure sbAddRecipClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FRecipientID   : TRwMapiEntryID;
    FSession       : TRwMapiSessionV3;
    FAddressBook   : IRwMapiAddressbook;
    FRecipients    : IRwMapiRecipientTable;
    procedure DeleteRecipientFromList(idx: Integer);
    procedure SetRecipients(const Value: IRwMapiRecipientTable);
    function GetRecipients: IRwMapiRecipientTable;
  public
    { Public declarations }
    procedure Initialize(const ASession: TRwMapiSessionV3);
    property Recipients: IRwMapiRecipientTable read GetRecipients write SetRecipients;
    procedure AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TAddrBookDlgParams);
  end;

implementation

{$R *.dfm}
uses
  uRwMapiTagsH
  , uRwMapiV3Utils
  , uRwBoxes
  , Graphics
  ;

{ TFrmReplyToList }

procedure TFrmReplyToList.FormCreate(Sender: TObject);
begin
  {$IFDEF D7UP}
  // set the ParentBackGround to false to
  // make sure that the background is white
  // when the theme manager is used
  panTop.Color := clWhite;
  panTop.ParentBackground := False;
  {$ENDIF D7UP}
end;

procedure TFrmReplyToList.Initialize(const ASession: TRwMapiSessionV3);
begin
  FSession := ASession;
  FAddressBook := ASession.GetAddressBook(True);
  FAddressbook.BeforeDisplayAddressBookDlg := AddressBookBeforeDisplayAddressBookDlg;
  FRecipients := FAddressBook.GetRecipientTable;
end;

procedure TFrmReplyToList.FormDestroy(Sender: TObject);
var
  i: Integer;
begin
  FAddressBook := nil;
  for i := lbRecipients.Items.Count-1 downto 0 do
    DeleteRecipientFromList(i);
end;

procedure TFrmReplyToList.DeleteRecipientFromList(idx: Integer);
begin
  lbRecipients.Items.Objects[idx].Free;
  lbRecipients.Items.Delete(idx);
end;

procedure TFrmReplyToList.sbSelectRecipientClick(Sender: TObject);
var
  RecipTable : IRwMapiRecipientTable;
begin
  RecipTable := FAddressBook.GetRecipientTable;
  if edtRecipient.Text <> '' then
    RecipTable.AddRecipient(edtRecipient.Text, rtTo, False);
  FAddressbook.DisplayAddressbookDialog(RecipTable, Application.Title, True, True, False, 0);

  RecipTable.First;
  if RecipTable.RowCount > 0 then
  begin
    FRecipientID   := RecipTable.FieldByName(PR_ENTRYID).Value;
    edtRecipient.Text := RecipTable.FieldByName(PR_DISPLAY_NAME).AsString;;
  end;
end;

procedure TFrmReplyToList.edtRecipientChange(Sender: TObject);
begin
  FRecipientID := null;
end;

procedure TFrmReplyToList.sbAddRecipClick(Sender: TObject);
var
  RecipTable : IRwMapiRecipientTable;
  RecipRecord: TRecipientRecord;
begin
  if RwVarArrayCount(FRecipientID) = 0 then
  begin
    RecipTable := FAddressBook.GetRecipientTable;
    RecipTable.AddRecipient(edtRecipient.Text, rtTo, False);
    FAddressBook.ResolveNames(RecipTable, False, False, Application.Title);
    edtRecipient.Text := RecipTable.FieldByName(PR_DISPLAY_NAME).AsString;
    FRecipientID := RecipTable.FieldByName(PR_ENTRYID).Value;
  end;

  if RwVarArrayCount(FRecipientID) = 0 then
  begin
    BoxError('The specified recipient is not a valid recipient.');
    exit;
  end;

  RecipRecord := TRecipientRecord.Create;
  RecipRecord.RecipientName := edtRecipient.Text;
  RecipRecord.RecipientID := FRecipientID;
  lbRecipients.Items.AddObject(edtRecipient.Text, RecipRecord);
end;

procedure TFrmReplyToList.SetRecipients(const Value: IRwMapiRecipientTable);
var
  RecipRecord: TRecipientRecord;
begin
  Value.First;
  while not Value.EOF do
  begin
    if RwVarArrayCount(Value.FieldByName(PR_ENTRYID).Value) > 0 then
    begin
      RecipRecord := TRecipientRecord.Create;
      RecipRecord.RecipientName := Value.FieldByName(PR_DISPLAY_NAME).AsString;
      RecipRecord.RecipientID := Value.FieldByName(PR_ENTRYID).Value;
      lbRecipients.Items.AddObject(RecipRecord.RecipientName, RecipRecord);
    end;
  end;
end;

function TFrmReplyToList.GetRecipients: IRwMapiRecipientTable;
var
  i: Integer;
begin
  FRecipients.Clear;
  for i := 0 to lbRecipients.Items.Count-1 do
  begin
    FRecipients.Insert;
    FRecipients.FieldByName(PR_DISPLAY_NAME).AsString := TRecipientRecord(lbRecipients.Items.Objects[i]).RecipientName;
    FRecipients.FieldByName(PR_ENTRYID).Value := TRecipientRecord(lbRecipients.Items.Objects[i]).RecipientID;
  end;
  Result := FRecipients;
end;

procedure TFrmReplyToList.AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TAddrBookDlgParams);
begin
  AddrBookDlgParams.DestFields := 1;
  SetLength(AddrBookDlgParams.DestTitles,1);
  AddrBookDlgParams.DestTitles[0] := 'Reply To..';
end;

end.
