unit EditContactNoteDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, ComCtrls, cxControls, cxContainer, cxEdit, cxCheckBox,
  DB, MemDS, DBAccess, OracleUniProvider, Uni, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, uRwMapiFormManager;

type
  TfmEditContactNoteDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    eContactNote: TMemo;
    Label1: TLabel;
    Label3: TLabel;
    dtDate: TDateTimePicker;
    dtTime: TDateTimePicker;
    cbReminder: TcxCheckBox;
    btnEmail: TSpeedButton;
    qryPhonebook: TUniQuery;
    qTmp: TUniQuery;
    FormMgr: TRwMapiFormManager;
    procedure FormCreate(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bnOkClick(Sender: TObject);
  private
    FNName: integer;
    FNewNote: boolean;
    FNDiary: integer;
    function GetDateTime: TDateTime;
    function GetNote: String;
    procedure SetDateTime(const Value: TDateTime);
    procedure SetNote(const Value: String);
    function BuildMsgBody: string;
    function SaveNewNote: boolean;
    function UpdateNote: boolean;
    function UpdateSentNote: boolean;
    { Private declarations }
  public
    { Public declarations }
    property ContactDateTime: TDateTime read GetDateTime write SetDateTime;
    property ContactNote: String read GetNote write SetNote;
    property NName: integer read FNName write FNName;
    property NewNote: boolean read FNewNote write FNewNote;
    property NDiary: integer read  FNDiary write FNDiary;
  end;

var
  fmEditContactNoteDialog: TfmEditContactNoteDialog;

implementation

uses
   AxiomData, miscfunc
   , uRwMapiInterfaces
   , uRwMapiUtils
   , uRwMapiProps;

{$R *.dfm}

{ TfmEditContactNoteDialog }

function TfmEditContactNoteDialog.GetDateTime: TDateTime;
//var
//  wDay, wMonth, wYear, wHour, wMinute, wSecond, wMSec: Word;
begin
//  DecodeDate(dtDate.Date, wYear, wMonth, wDay);
//  DecodeTime(dtTime.Time,wHour, wMinute, wSecond, wMSec);

  Result := Trunc(dtDate.Date);
  ReplaceTime(Result,dtTime.Time);
end;

function TfmEditContactNoteDialog.GetNote: String;
begin
  Result := eContactNote.Lines.Text;
end;

procedure TfmEditContactNoteDialog.SetDateTime(const Value: TDateTime);
begin
  dtDate.Date := Value;
  dtTime.Time := Value;
end;

procedure TfmEditContactNoteDialog.SetNote(const Value: String);
begin
  eContactNote.Lines.Text := Value;
end;

procedure TfmEditContactNoteDialog.FormCreate(Sender: TObject);
begin
   btnEmail.Enabled := (SystemString('email_reg') = C_EMAILPASSWORD);
end;

procedure TfmEditContactNoteDialog.btnEmailClick(Sender: TObject);
var
   tmpFileName: string;
   Msg : IRwMapiMessage;
//   MsgForm: TFrmNewMessage;
   OldCursor: TCursor;
//   FormMgr : IRwMapiFormMgr;
//   FormRect: TRwMapiRect;
   SiteStatus, ViewStatus, i, x: Integer;
   Folder  : IRwMapiFolder;
   MsgStore: IRwMapiMsgStore;
   MsgClass, sSubject, FileID: string;
   MsgBody, ADisp_Path: string;
begin
   bnOk.Click;
   if (not dmAxiom.MapiSession.Active) then
   begin
      OldCursor := Screen.Cursor;
      Screen.Cursor := crHourGlass;
      try
         dmAxiom.MapiSession.LogonInfo.UseExtendedMapi    := True;
         dmAxiom.MapiSession.LogonInfo.ProfileName        := dmAxiom.EMailProfileDefault;
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

   try
 {     if SystemInteger('EMAIL_TYPE_DEFAULT') = 0 then
      begin
         try
            MsgStore := dmAxiom.MapiSession.GetDefaultMsgStore(alReadWrite);
            Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
            // create a new message in the drafts folder

            // Display the new message in a custom build form. This is a 100% Delphi solution
            MsgForm := TFrmNewMessage.Create(Self);
            MsgForm.Initialize(dmAxiom.MapiSession, Msg);
   //         MsgForm.AddFileAttachment(tmpFileName);
            MsgForm.Show;
         except
         //
         end;
      end
      else  }
      begin
         MsgStore := dmAxiom.MapiSession.OpenDefaultMsgStore();
         Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite);
         Msg := Folder.CreateMessage('IPM.Note');

         sSubject := Msg.PropByName(PR_SUBJECT).AsString;
         MsgBody := BuildMsgBody();
         Msg.SetMessageText(MsgBody, fmtHTML);

         Msg.PropByName(PR_SUBJECT).Value :=
                 Msg.PropByName(PR_SUBJECT).Value +
                  'Contact Note - '+ qryPhonebook.FieldByName('name').AsString + ', ' + qryPhonebook.FieldByName('workphone').AsString;

         Msg.SaveChanges(smKeepOpenReadWrite);           // if you set HTML messagetext you must! first save the message in order to see the HTML

         SiteStatus := 0;
         ViewStatus := vsModal;
         MsgClass := 'IPM.Note';
         Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
         SiteStatus := stDelete + stCopy
            + stMove + stSubmit + stDeleteIsMove
            + stSave + stNewMessage;

         FormMgr.ShowMessage(Msg{, FormRect, SiteStatus, ViewStatus});
      end;
   finally
       UpdateSentNote;
   end;
end;

procedure TfmEditContactNoteDialog.FormShow(Sender: TObject);
begin
   qryPhonebook.ParamByName('nname').AsInteger := FNName;
   qryPhonebook.Open;
end;

procedure TfmEditContactNoteDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryPhonebook.Close;
end;

function TfmEditContactNoteDialog.BuildMsgBody: string;
var
   MsgBody: string;
begin
   MsgBody := '<html><head></head><body>';
   MsgBody := MsgBody + '<table width="100%" cellpadding="0" cellspacing="0">';
   MsgBody := MsgBody + '<tr>';
   MsgBody := MsgBody + '<td style="width:10%;" align="left">  Name: </td> ';
   MsgBody := MsgBody + '<td align="left"> ' + qryPhonebook.FieldByName('name').AsString;
   MsgBody := MsgBody + '</td></tr>';
   MsgBody := MsgBody + '<td style="width:10%;" align="left">  Work Phone: </td> ';
   MsgBody := MsgBody + '<td align="left"> ' + qryPhonebook.FieldByName('workphone').AsString;
   MsgBody := MsgBody + '</td></tr>';
   MsgBody := MsgBody + '<td style="width:10%;" align="left">  Mobile: </td> ';
   MsgBody := MsgBody + '<td align="left"> ' + qryPhonebook.FieldByName('mobile').AsString;
   MsgBody := MsgBody + '</td></tr>';
   MsgBody := MsgBody + '<td style="width:10%;" align="left">  Email: </td> ';
   MsgBody := MsgBody + '<td align="left"> ' + qryPhonebook.FieldByName('email').AsString;
   MsgBody := MsgBody + '</td></tr>';
   MsgBody := MsgBody + '<tr>';
   MsgBody := MsgBody + '<td colspan="2""> </td></tr>';
   MsgBody := MsgBody + '<td style="width:10%;" align="left">  Address: </td> ';
   MsgBody := MsgBody + '<td align="left"> ' + qryPhonebook.FieldByName('address').AsString;
   MsgBody := MsgBody + '</td></tr>';
   MsgBody := MsgBody + '</table>';
   MsgBody := MsgBody + '<p> </p>';
   MsgBody := MsgBody + '**********************************************************************************************';
   MsgBody := MsgBody + '<p></p>';
   MsgBody := MsgBody + '<table width="100%" cellpadding="0" cellspacing="0">';
   MsgBody := MsgBody + '<tr>';
   MsgBody := MsgBody + '<td style="width:10%;" align="left">  Date: </td> ';
   MsgBody := MsgBody + '<td align="left"> ' + DateToStr(dtDate.Date);
   MsgBody := MsgBody + '</td></tr>';
   MsgBody := MsgBody + '<td style="width:10%;" align="left">  Who: </td> ';
   MsgBody := MsgBody + '<td align="left"> ' + dmAxiom.UserID;
   MsgBody := MsgBody + '</td></tr>';
   MsgBody := MsgBody + '<td style="width:10%;" align="left">  Details: </td> ';
   MsgBody := MsgBody + '<td align="left"> ' + eContactNote.Text;
   MsgBody := MsgBody + '</td></tr>';
   MsgBody := MsgBody + '</table>';
   MsgBody := MsgBody + '</body></html>';
   Result := MsgBody;
end;

function TfmEditContactNoteDialog.SaveNewNote: boolean;
begin
   qTmp.SQL.Clear();
   NDiary := GetSequenceNumber('SQNC_NDIARY');
   qTmp.SQL.Add('insert into diary (ndiary, start_dt, end_dt, reminder_for, entered_by, descr, CREATION_DATE, nname');
   if fmEditContactNoteDialog.cbReminder.Checked then
      qTmp.SQL.Add(',notify ');
   qTmp.SQL.Add(')');
   qTmp.SQL.Add('values (:ndiary, :start_dt, :end_dt, :entered_by, :entered_by, :descr, :CREATION_DATE, :nname');
   if fmEditContactNoteDialog.cbReminder.Checked then
      qTmp.SQL.Add(', :notify ');
   qTmp.SQL.Add(')');
   qTmp.ParamByName('START_DT').AsDateTime := fmEditContactNoteDialog.ContactDateTime;
   qTmp.ParamByName('END_DT').AsDateTime   := (fmEditContactNoteDialog.ContactDateTime + 0.00416666);
   qTmp.ParamByName('DESCR').AsString      := fmEditContactNoteDialog.ContactNote;
   qTmp.ParamByName('NNAME').AsInteger     := NName;
   qTmp.ParamByName('ENTERED_BY').AsString := dmAxiom.UserID;
   qTmp.ParamByName('CREATION_DATE').AsDateTime := Now();
   qTmp.ParamByName('NDIARY').AsInteger    := NDiary;
   if fmEditContactNoteDialog.cbReminder.Checked then
   begin
      qTmp.ParamByName('notify').AsDateTime     := fmEditContactNoteDialog.ContactDateTime;
   end;
   qTmp.ExecSQL();
   NewNote := False;
end;

procedure TfmEditContactNoteDialog.bnOkClick(Sender: TObject);
begin
   if NewNote then
      SaveNewNote
   else
      UpdateNote;
end;

function TfmEditContactNoteDialog.UpdateNote: boolean;
begin
   qTmp.SQL.Clear();
   qTmp.SQL.Add('update diary set');
   qTmp.SQL.Add('start_dt = :start_dt, reminder_for = :entered_by, entered_by = :entered_by, descr = :descr, end_dt = :end_dt ');
   qTmp.SQL.Add('where ndiary = :ndiary');

   qTmp.ParamByName('START_DT').AsDateTime := fmEditContactNoteDialog.ContactDateTime;
   qTmp.ParamByName('END_DT').AsDateTime   := (fmEditContactNoteDialog.ContactDateTime + 0.0035);
   qTmp.ParamByName('DESCR').AsString      := fmEditContactNoteDialog.ContactNote;
   qTmp.ParamByName('NDIARY').AsInteger    := NDiary;
   qTmp.ParamByName('ENTERED_BY').AsString := dmAxiom.UserID;
   qTmp.ExecSQL();
end;

function TfmEditContactNoteDialog.UpdateSentNote: boolean;
begin
   qTmp.SQL.Clear();
   qTmp.SQL.Add('update diary set');
   qTmp.SQL.Add('email_sent_date = sysdate ');
   qTmp.SQL.Add('where ndiary = :ndiary');

   qTmp.ParamByName('NDIARY').AsInteger    := NDiary;
   qTmp.ExecSQL();
end;

end.
