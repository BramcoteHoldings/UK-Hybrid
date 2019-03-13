unit MailIt;

{requires indy10 - the LATER VERSIONS}

interface

uses Classes, SysUtils, IdSMTP, IdLogFile;

type
//this class encapsulates the "where to" and "what" portions of the message
//basically, it sends the BODY, including the files in the FILES list, using the SUBJECT to every person on the SendTo, etc. list
//SendTo, CCSendTo, and BccSendTo all take comma separated addresses (i.e, SendTo:='first@me.com,second@me.com';)
   TDestinationPart = class
   SendTo : string; //list of addresses
   CCSendTo : string;
   BccSendTo : string;
   ReturnAddy: string; //if this is blank, there will be no return receipt

   Subject : string;
   Body : string;
   Files : TStringList;

   constructor Create(aSndTo, aCCSndTo, aBCCSndTo, aRtrnRcptAddy, aSubject, aBody:string; aFiles:TStringList);
   destructor Free;
end;

   //this class encapsulates the "how do i get it there" and "who from" portion of the message
   //since this doesn't frequently change, you can use CreateFromFile and SaveToFile to create a template
   // and save the typing every time you set it up
TOriginPart = class
   AuthType : TIdSMTPAuthenticationType;
   FromAddy : string;
   UserName : string;
   Password : string;
   Server : string;
   Port : integer;
   Debug : boolean;
   constructor Create(aAuthType:TIdSMTPAuthenticationType; aFromAddy, aUserName, aPassword, aServer: string; aPort:integer);
   constructor CreateFromFile(fn:string);
   procedure SaveToFile(fn:string);
end;

//this is the entire message
//you provide a DestinationPart and OriginPart and send the file using SendNow.
// Check SentOk afterwards to make sure it went.
// Any error message will be in SendMsg
TMailMessage = class
public
   Destination : TDestinationPart;
   Origin : TOriginPart;
   SentOk : boolean;
   SentMsg : string;
   logFile : TIdLogFile;

   constructor Create(Dest:TDestinationPart; Orig:TOriginPart);
   procedure SendNow;
   destructor Free;
end;

//this REPLACES TMailMessage with a Threaded version.
//You may want to use the FreeOnTerminate flag to create a "Fire and Forget" threaded solution
// NOTE: DO NOT GO CRAZY
// Pay attention to the documentation of the OS (try this for what I mean http://blogs.msdn.com/oldnewthing/archive/2005/07/29/444912.aspx)
// If you've got a really great quad-cpu quad-core rig, you may want to use a bigger number
TThreadMailMessage = class(TThread) //you get no error results or other
   protected //information from this class, it just tries to send the message in the
   MailMsg : TMailMessage; //background.make sure you use the debug function if you're having problems
   procedure Execute; override;
   public
   constructor Create(aDestinationPart:TDestinationPart;
   aOriginPart:TOriginPart);
end;


//NOTE: The following utility entries use CriticalSections. DO NOT HAMMER THEM.

//You can test this to see if all the TThreadedMailMessages have completed
function MailThreadsDone:boolean;
//A count of the number of TThreadedMailMessages are still out there
function ActiveMailThreadCount:integer;

implementation

uses IdGlobal, IdResourceStringsCore, IdGlobalProtocols, IdResourceStrings, IdExplicitTLSClientServerBase,
IDPOP3, IdMessage, IdEmailAddress, IdWinSock2, IdIOHandler, IdSSLOpenSSL, IdException,
IdAttachmentFile, IdText, IdSASL_CRAM_MD5, IdUserPassProvider, IniFiles,
IdIOHandlerStream, Dialogs, windows;

const
logFileName='mailit.log'; //the default log file name

var
   ActiveMailThreads : integer=0;
   MailThreadCSR : TRTLCriticalSection;

// ---------------------------------------------------------------------------

type
// this is a descendant of TidLogFile, it will create a plain text file with
// information about the transfer session
TlogFile = class(TidLogFile)
   protected
      procedure LogReceivedData(const AText, AData: string); override;
      procedure LogSentData(const AText, AData: string); override;
      procedure LogStatus(const AText: string); override;
   public
      procedure LogWriteString(const AText: string); override;
      class function buildLogLine(data, prefix: string) : string;
end;

// this ensures the output of error and debug logs are in the same format, regardless of source
class function TlogFile.buildLogLine(data, prefix: string) : string;
begin

   data := StringReplace(data, EOL, RSLogEOL, [rfReplaceAll]);
   data := StringReplace(data, CR, RSLogCR, [rfReplaceAll]);
   data := StringReplace(data, LF, RSLogLF, [rfReplaceAll]);

   result := FormatDateTime('yy/mm/dd hh:nn:ss', now) + ' ';
   if (prefix <> '') then
      result := result + prefix + ' ';
   result := result + data + EOL;
end;

// ---------------------------------------------------------------------------

procedure TlogFile.LogReceivedData(const AText, AData: string);
begin
// ignore AText as it contains the date/time
   LogWriteString(buildLogLine(Adata, '<<'));
end;

// ---------------------------------------------------------------------------

procedure TlogFile.LogSentData(const AText, AData: string);
begin
// ignore AText as it contains the date/time
   LogWriteString(buildLogLine(Adata, '>>'));
end;

// ---------------------------------------------------------------------------

procedure TlogFile.LogStatus(const AText: string);
begin
   LogWriteString(buildLogLine(AText, '**'));
end;

// ---------------------------------------------------------------------------

procedure TlogFile.LogWriteString(const AText: string);
begin
// protected --> public
   inherited;
end;

// ---------------------------------------------------------------------------


// ---------------------------------------------------------------------------
{TMailMessage}
// ---------------------------------------------------------------------------

constructor TMailMessage.Create(Dest:TDestinationPart; Orig:TOriginPart);
begin
   Destination:=Dest;
   Origin:=Orig;
//the class expects these, it will create them by default
   if Destination=nil then Destination:=TDestinationPart.Create('','','','','','',TStringList.Create);
   if Origin=nil then Origin:=TOriginPart.Create(satDefault,'','','','',0);
end;

// ---------------------------------------------------------------------------
procedure TMailMessage.SendNow;
var
   MsgSend:TIdMessage;
   SMTP:TIdSMTP;
   ix:integer;
   SASLLogin:TIdSASLCramMD5;
   UserPassProv:TIdUserPassProvider;
   textPart:TIdText;
begin
   logFile := nil; //init to no logging
   MsgSend:=TIdMessage.Create; //create the message
   with MsgSend do
   begin
      Body.Text:=Destination.Body;
      if POS('<html>',Body.Text)<>0 then
         if (Destination.Files<>nil) AND (Destination.Files.Count>0) then //if you are using attachments with html mail, you have do do it in sections
         begin
            Body.Text:=''; //clear the body
            contentType:='multipart/alternative'; //setup the message parts
            textPart:=TIdText.Create(MsgSend.MessageParts,nil); // this is for plain text
            textPart.ContentType:='text/plain'; // set the content type
            textPart.Body.Add('This message is formatted as HTML.');// just tell the user that the message is html - it would be nice to strip the html, but you'd never make it look right. probably should add support for a plain text and html text in the Destination class
            textPart.Body.Add(Destination.Body); // add the plain text part which is really html formatted
            textPart:=TIdText.Create(MsgSend.MessageParts,nil); // this is for html text (which is basically just plain text with special rules)
            textPart.ContentType:='text/html'; // set the content type - this is the magic that kicks in the special rules
            textPart.Body.Add(Destination.Body); // add the html formatted text
         end
         else
            contentType:='text/html'; //you can just send it as an html message
         From.Text := Origin.FromAddy; //setup the from address
         Recipients.EMailAddresses := Destination.SendTo; //setup who it's going to
         Subject := Destination.Subject; //set the subject
         Priority := mpNormal; //set the priority (note that you could add to Destination to support different priorities)
         CCList.EMailAddresses := Destination.CCSendTo; //set the CC list
         BccList.EMailAddresses := Destination.BCCSendTo; //set the BCC list
         ReceiptRecipient.Text := Destination.ReturnAddy; //set the return receipt address
   end;

   for ix:=0 to Destination.Files.Count-1 do //if we got a list of file names, add each file as an attachment
      TIdAttachmentFile.Create(MsgSend.MessageParts, Destination.Files.Strings[ix]);

   try
      SMTP:=TIdSMTP.Create; //create the SMTP object

      try
         TIdSSLContext.Create.Free; //try to create a SSL context (immediately disposes of it) - need OpenSSL to support this, if it fails, it will fall into the exception
         smtp.IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(smtp); //if we succeed, then we can create a SSL socket handler and assign it to the IOHandler
         smtp.UseTLS := utUseExplicitTLS; //and we can mark the we can use tls
      except
         smtp.IOHandler := TIdIOHandler.MakeDefaultIOHandler(smtp); //the SSL failed to create, so make the default IO handler
         smtp.UseTLS := utNoTLSSupport; //mark that we have no TLS support
      end;
      smtp.ManagedIOHandler := True; //either way, we now have a ManagedIOHandler

      if Origin.Debug then //if we marked that we wanted debugging, we need to do some setup
      begin
         logFile := TLogFile.Create(nil); //create the log file
         logFile.FileName:=logFileName; //set the default log file name - NOTE: you could get fancy with this, but I normally don't use it
         logFile.Active:=true; //activate the log file (creates the file and intializes everything)
         smtp.IOHandler.Intercept := logFile; //set the logFile to the intercept of the IOHandler to capture the events
         smtp.IOHandler.OnStatus := smtp.OnStatus; // - not sure why we do this, copied code -
      end;

      try
         SMTP.AuthType := Origin.AuthType; //setup the auth type : satNONE, satDEFAULT, satSASL
         SMTP.UserName := Origin.UserName; //setup the user name
         SMTP.Password := Origin.Password; //setup the password

         userPassProv:=TIdUserPassProvider.Create; //create the user/pass provider - this handles the login functions for SASL
         userPassProv.UserName:=SMTP.UserName; // setup user name
         userPassProv.Password:=SMTP.Password; // & password

         if SMTP.AuthType=satSASL then //if we are going to use SASL - basically, SASL just encrypts the login, everything else is still clear text
         begin
            SASLLogin:=TIdSASLCramMd5.Create; // create the CramMd5 provider - see http://en.wikipedia.org/wiki/CRAM-MD5 - this is the encryptor
            SASLLogin.UserPassProvider:=userPassProv; // assign the user pass provider to it
            SMTP.SASLMechanisms.Add.SASL:=SASLLogin; // add the SASL login back to the SMTP object
         end;

         {General setup}
         SMTP.Host := Origin.Server; //setup the server name
         SMTP.Port := Origin.Port; //setup the server port

         {now we send the message}
         SMTP.Connect; //connect to the server - this will automatically use TLS if configured and supported
         if not SMTP.Authenticate then //authenticate with the server - this will automatically use SASL if configured and supported
         begin
            MessageDlg('An error occurred attempting to send your e-mail. The error was : Unable to authenticate.', mtError, [mbOK], 0);
            exit;
         end;
         try
            try
               SMTP.Send(MsgSend); //send the message
               SentOk:=true; //indicate success
            finally
               SMTP.Disconnect; //disconnect from the server
            end;
         except on E :Exception do //if we had a failure, say so
         begin
            MessageDlg('An error occurred attempting to send your e-mail. The error was : '+E.Message, mtError, [mbOK], 0);
            SentOk:=false; //set failure
            SentMsg:=E.Message; //and grab the error message
         end;
      end;
      finally
         SMTP.Free; //free the memory
      end;
   finally
      if logFile<>nil then //if we had a log file, free that
         logFile.Free;
      MsgSend.Free; //free the message
   end;
end;

// ---------------------------------------------------------------------------
destructor TMailMessage.Free;
begin
   Destination.Free; //free the destination
   Origin.Free; //free the origin
end;

// ---------------------------------------------------------------------------


// ---------------------------------------------------------------------------
{TDestinationPart}
// ---------------------------------------------------------------------------

constructor TDestinationPart.Create(aSndTo, aCCSndTo, aBCCSndTo, aRtrnRcptAddy, aSubject, aBody:string; aFiles:TStringList);
begin
   SendTo := aSndTo; //send message to, comma separate list for multiple adddesses
   CCSendTo := aCCSndTo; //CC message to
   BccSendTo := aBCCSndTo; //BCC message to
   ReturnAddy:= aRtrnRcptAddy; //leave blank for not return receipt. set if you want a return receipt (me@mydomain.com)

   Subject := aSubject; //what's it about
   Body := aBody; //the text, supports HTML or TEXT
   Files := aFiles; //a list of files to upload - WATCH THIS - you are giving up control by passing in the list, this list is free'd in the destructor
   if Files=nil then
      Files:=TStringList.Create; //we must have a list, create if not provided
end;

// ---------------------------------------------------------------------------
destructor TDestinationPart.Free;
begin
   Files.Free; //free space claimed in create - watch this, it takes control of the list passed in the create and will dispose of it, can cause A/Vs
end;

// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
{TOriginPart}
// ---------------------------------------------------------------------------

constructor TOriginPart.Create(aAuthType:TIdSMTPAuthenticationType; aFromAddy, aUserName, aPassword, aServer: string; aPort:integer);
begin
   AuthType := aAuthType; //options are : 0=satNONE, 1=satDEFAULT, 2=satSASL
   FromAddy := aFromAddy; //me@mydomain.com
   UserName := aUserName; //me
   Password := aPassword; //mypassword
   Server := aServer; //smtp.mydomain.com
   Port := aPort; //SMTP connection port (25 is default)
   Debug := false; //debugging off/on
end;

// ---------------------------------------------------------------------------
constructor TOriginPart.CreateFromFile(fn:string);
var
   INF:TIniFile;
   i:integer;
begin
   INF:=TIniFile.Create(fn);
   i := INF.ReadInteger('SMTP','AuthType',ord(satDefault));
   case i of
      0 : AuthType := satNONE;
      1 : AuthType := satDEFAULT;
      2 : AuthType := satSASL;
   end;
   FromAddy := INF.ReadString ('SMTP', 'FromAddy', ''); //me@mydomain.com
   UserName := INF.ReadString ('SMTP', 'UserName', ''); //me
   Password := INF.ReadString ('SMTP', 'Password', ''); //mypassword
   Server := INF.ReadString ('SMTP', 'Server', ''); //smtp.mydomain.com
   Port := INF.ReadInteger('SMTP', 'Port', 25); //default SMTP is 25
   Debug := INF.ReadBool ('SMTP', 'Debug', false); //we don't we debugging on
   INF.Free;
end;

// ---------------------------------------------------------------------------
procedure TOriginPart.SaveToFile(fn:string);
var
   INF:TIniFile;
begin
   INF:=TIniFile.Create(fn);
   INF.WriteInteger('SMTP', 'AuthType', ord(AuthType)); //options are : 0=satNONE, 1=satDEFAULT, 2=satSASL
   INF.WriteString ('SMTP', 'FromAddy', FromAddy); //me@mydomain.com
   INF.WriteString ('SMTP', 'UserName', UserName); //me
   INF.WriteString ('SMTP', 'Password', Password); //mypassword
   INF.WriteString ('SMTP', 'Server', Server); //smtp.mydomain.com
   INF.WriteInteger('SMTP', 'Port', Port); //SMTP connection port
   INF.WriteBool ('SMTP', 'Debug', Debug); //debugging off/on
   INF.Free;
end;

// ---------------------------------------------------------------------------


// ---------------------------------------------------------------------------
{ TThreadMailMessage & util functions for it}
// ---------------------------------------------------------------------------

procedure IncMailThreadCount;
begin
   EnterCriticalSection(MailThreadCSR);
   inc(ActiveMailThreads);
   LeaveCriticalSection(MailThreadCSR);
end;

procedure DecMailThreadCount;
begin
   EnterCriticalSection(MailThreadCSR);
   dec(ActiveMailThreads);
   LeaveCriticalSection(MailThreadCSR);
end;

function MailThreadsDone:boolean;
begin
   result:=ActiveMailThreadCount=0;
end;

function ActiveMailThreadCount:integer;
begin
   EnterCriticalSection(MailThreadCSR);
   result:=ActiveMailThreads;
   LeaveCriticalSection(MailThreadCSR);
end;


constructor TThreadMailMessage.Create(aDestinationPart: TDestinationPart;
aOriginPart: TOriginPart);
begin
   inherited Create(false);
   IncMailThreadCount;
   if aDestinationPart=nil then raise Exception.Create('You must supply a destination');
   if aOriginPart=nil then raise Exception.Create('You must supply an origin');
   FreeOnTerminate:=true;

   MailMsg:=TMailMessage.Create(aDestinationPart, aOriginPart);
end;

procedure TThreadMailMessage.Execute;
begin
   try
      MailMsg.SendNow;
   finally
      DecMailThreadCount;
   end;
end;

initialization
   InitializeCriticalSection(MailThreadCSR);

finalization
   DeleteCriticalSection(MailThreadCSR);

end.
