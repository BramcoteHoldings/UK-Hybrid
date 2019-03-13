unit SendSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinINET, HttpAPP, StdCtrls, Buttons;

const
//   URL = 'http://www.mollie.nl/xml/sms/?username=%s&password=%' +
//         's&originator=%s&recipients=%s&gateway=%d&message=%s';
   ResponseSize = 1024;

type
  TfrmSendSMS = class(TForm)
    Label1: TLabel;
    lblRecipient: TLabel;
    Label3: TLabel;
    memoMessage: TMemo;
    btnSend: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Label2: TLabel;
    procedure btnSendClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure memoMessageKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FRecipient:   string;
    FFileID:      string;
    function SendSMS(const Username, Password, Originator, Recipients,
      Message: String; FileID: string; Gateway: integer = 1): String;
  public
    { Public declarations }
    property ARecipient: string read FRecipient write FRecipient;
    property AFileID: string read FFileID write FFileID;
  end;

var
  frmSendSMS: TfrmSendSMS;

implementation

{$R *.dfm}

uses
   miscfunc;

function TfrmSendSMS.SendSMS(const Username, Password, Originator, Recipients,
                             Message: String; FileID: string; Gateway: integer = 1): String;
var
   hSession, hURL: HInternet;
   Request, URL: String;
   ResponseLength: Cardinal;
begin
   hSession := InternetOpen('Insight', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
   try
      URL := SystemString('sms_url');
      Request := Format(URL,[Username,Password,Originator,Recipients,HttpEncode(Message), 10]);
      hURL := InternetOpenURL(hSession, PChar(Request), nil, 0,0,0);
      try
         SetLength(Result, ResponseSize);
         InternetReadFile(hURL, PChar(Result), ResponseSize, ResponseLength);
         SetLength(Result, ResponseLength);
      finally
         InternetCloseHandle(hURL);
         hURL := nil;
      end;
   finally
      InternetCloseHandle(hSession);
      hSession := nil;
   end;
end;

procedure TfrmSendSMS.btnSendClick(Sender: TObject);
var
   LUserName, LPassword, LOriginator: string;
   LReturn: string;
begin
   LUserName   := SystemString('sms_user');
   LPassword   := SystemString('sms_password');
   LOriginator := SystemString('sms_originator');

   LReturn := SendSMS(LUserName, LPassword, LOriginator, ARecipient,memoMessage.Text, AFileID);
//   MsgInfo(LReturn);
end;

procedure TfrmSendSMS.FormShow(Sender: TObject);
begin
   lblRecipient.Caption := ARecipient;
end;

procedure TfrmSendSMS.memoMessageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Label2.Caption := IntToStr(length(memoMessage.Text) )+'/1600';
end;

end.
