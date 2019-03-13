unit UserLogins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, OracleUniProvider, Uni, DBAccess, MemDS,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, dxGDIPlusClasses, dxDPIAwareUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmUserSessions = class(TForm)
    qryUserSessions: TUniQuery;
    dsUserSessions: TUniDataSource;
    tvUserSession: TcxGridDBTableView;
    grdUserSessionLevel1: TcxGridLevel;
    grdUserSession: TcxGrid;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    tvUserSessionUSERNAME: TcxGridDBColumn;
    tvUserSessionNAME: TcxGridDBColumn;
    tvUserSessionPHONE: TcxGridDBColumn;
    tvUserSessionSID: TcxGridDBColumn;
    tvUserSessionOSUSER: TcxGridDBColumn;
    tvUserSessionMACHINE: TcxGridDBColumn;
    tvUserSessionSTATUS: TcxGridDBColumn;
    tvUserSessionLOGON_TIME: TcxGridDBColumn;
    tvUserSessionPROGRAM: TcxGridDBColumn;
    dxBarButton2: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    tvUserSessionSERIAL: TcxGridDBColumn;
    spKillSession: TUniStoredProc;
    tvUserSessionColumn1: TcxGridDBColumn;
    grdUserSessionLevel2: TcxGridLevel;
    tvTransactionLocks: TcxGridDBTableView;
    qryLocks: TUniQuery;
    dsLocks: TUniDataSource;
    dxBarPopupMenu2: TdxBarPopupMenu;
    tvTransactionLocksOSUSER: TcxGridDBColumn;
    tvTransactionLocksUSERNAME: TcxGridDBColumn;
    tvTransactionLocksLOCKTYPE: TcxGridDBColumn;
    tvTransactionLocksOBJECT_NAME: TcxGridDBColumn;
    tvTransactionLocksHELD: TcxGridDBColumn;
    tvTransactionLocksREQUEST: TcxGridDBColumn;
    tvTransactionLocksSID: TcxGridDBColumn;
    tvTransactionLocksSERIAL: TcxGridDBColumn;
    btnKillUserSession: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btnKillUserSessionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserSessions: TfrmUserSessions;

implementation

uses
   Axiomdata, MiscFunc, DocDescrEdit;

{$R *.dfm}

function NetSend(dest, Source, Msg: string): Longint; overload;
type
   TNetMessageBufferSendFunction = function(servername, msgname, fromname: PWideChar;
                                            buf: PWideChar; buflen: Cardinal): Longint; stdcall;
var
   NetMessageBufferSend: TNetMessageBufferSendFunction;
   SourceWideChar: PWideChar;
   DestWideChar: PWideChar;
   MessagetextWideChar: PWideChar;
   Handle: THandle;
begin
   Handle := LoadLibrary('NETAPI32.DLL');
   if Handle = 0 then
   begin
      Result := GetLastError;
      Exit;
   end;
   @NetMessageBufferSend := GetProcAddress(Handle, 'NetMessageBufferSend');
   if @NetMessageBufferSend = nil then
   begin
      Result := GetLastError;
      Exit;
   end;

   MessagetextWideChar := nil;
   SourceWideChar := nil;
   DestWideChar := nil;

   try
      GetMem(MessagetextWideChar, Length(Msg) * SizeOf(WideChar) + 1);
      GetMem(DestWideChar, 20 * SizeOf(WideChar) + 1);
      StringToWideChar(Msg, MessagetextWideChar, Length(Msg) * SizeOf(WideChar) + 1);
      StringToWideChar(Dest, DestWideChar, 20 * SizeOf(WideChar) + 1);

      if Source = '' then
         Result := NetMessageBufferSend(DestWideChar, DestWideChar, nil,
                  MessagetextWideChar, Length(Msg) * SizeOf(WideChar) + 1)
      else
      begin
         GetMem(SourceWideChar, 20 * SizeOf(WideChar) + 1);
         StringToWideChar(Source, SourceWideChar, 20 * SizeOf(WideChar) + 1);
         Result := NetMessageBufferSend(DestWideChar, DestWideChar, SourceWideChar,
                                        MessagetextWideChar, Length(Msg) * SizeOf(WideChar) + 1);
         FreeMem(SourceWideChar);
      end;
   finally
      FreeMem(MessagetextWideChar);
      FreeLibrary(Handle);
   end;
end;

procedure TfrmUserSessions.dxBarButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmUserSessions.FormCreate(Sender: TObject);
begin
   qryUserSessions.Open;
   qryLocks.Open;
end;

procedure TfrmUserSessions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryUserSessions.Close;
   qryLocks.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmUserSessions.dxBarButton2Click(Sender: TObject);
begin
   qryUserSessions.Refresh;
   qryLocks.Refresh;
end;

procedure TfrmUserSessions.dxBarButton3Click(Sender: TObject);
var
   LfrmNotesMatter: TfrmDocDescription;
begin
   try
      try
         LfrmNotesMatter := TfrmDocDescription.Create(Self);
         LfrmNotesMatter.Caption := 'Message';
         if LfrmNotesMatter.ShowModal = mrOK then
         begin
            NetSend(tvUserSessionMACHINE.EditValue,GetComputerNetName,LfrmNotesMatter.Editor.Text);
         end;
      except
         ;
      end;
   finally
      LfrmNotesMatter.Free;
   end; 
end;

procedure TfrmUserSessions.dxBarButton4Click(Sender: TObject);
var
   ASerial: string;
   ADDLString: string;
begin
   with spKillSession do
   begin
//      ASerial := tvUserSessionSID.EditValue+','+tvUserSessionSERIAL.EditValue;
//      ADDLString := 'ALTER SYSTEM KILL SESSION '+ quotedstr(ASerial)+' IMMEDIATE';
      ParamByName('P_SID').AsInteger := tvTransactionLocksSID.EditValue;
      ParamByName('P_SERIAL').AsInteger := tvTransactionLocksSERIAL.EditValue;
      ParamByName('P_USER').AsString := tvUserSessionUSERNAME.EditValue;
      Execute;
   end;
end;

procedure TfrmUserSessions.btnKillUserSessionClick(Sender: TObject);
begin
   with spKillSession do
   begin
      ParamByName('P_SID').AsInteger := tvUserSessionSID.EditValue;
      ParamByName('P_SERIAL').AsInteger := tvUserSessionSERIAL.EditValue;
      ParamByName('P_USER').AsString := tvUserSessionUSERNAME.EditValue;
      Execute;
   end;
end;

end.
