// HTML Email builder component for Indy 10
//
// By Tim Sullivan, Unlimited Intelligence Limited
// Copyright (c) 2005.
//
// You can download the latest version of this file from:
// http://www.uil.net/files/MailBuilder.pas
//
// Version History:
// Version  : 1.0
// Released : June 23, 2005
//  - Everything is new.
//
// Disclaimer:
// No matter what happens, it isn't my fault.
// Using this code could destroy your computer. Even worse, it could cause it to
// destroy other computers. There is the possibility that this code will   cause
// your computer to sprout chicken legs, like Baba Yaga's house. It could  then run
// around beating up your family, eating your dog, and generally be a bother.
//
// If anything bad happens, you are solely responsible. So don't come crying to me.
// Cry to your momma.
//
// This was developed with Delphi 7. No guarantee that it'll work with any other
// versions of Delphi. For sure it won't work with earlier versions of Indy.
//
// Very warm thanks go to:
// Remy Lebeau - tireless and endlessly patient keeper of delphi.winsock
// Trevor Oke  - found the one bug that made me want to kill myself
//
//
// License:
// Use the code if you want. Send me an email at tim uil net if you want. That
// might be nice. A postcard would also be nice:
// Tim Sullivan
// 44 St Joseph St., Suite 1407
// Toronto, ON  M4Y 2W4
// Canada
//
// Please don't show up at my door unannounced. That would be rude.
//
// If you make any changes, please let me know. I'll add them and make them
// available to everyone.
//
// Usage:
//
// property Body : TStrings
//   This property stores the HTML for the message.
//
// property TextMessage : TStrings
//   This property stores the message in plain text format.
//   Use this for either the plaintext version of the HTML,
//   or for a message indicating the message is in HTML and
//   maybe it's time that the receiver be dragged kicking and
//   screaming into the year 1994 and get an email client that
//   can view HTML.
//
// property EmbeddedAttach : TStrings
//   This stores a list of files (full path!) that will be
//   embedded into the email.
//
// property FileAttach : TStrings
//   This stores a list of files (full path!) that will be
//   attached to the email.
//
// Once you've set those properties, call the only method there is:
//
// procedure BuildMessage(AMessage : TIdMessage)
//   This will fill the passed message with the HTML email as
//   well as the embedded and attached files.
//
// Things you should be aware of:
//
// This class generates a CID for the embedded files using the
// filename. So, if you're embedding the file abc.gif into your
// email, you'll need to reference it as <img src="cid:abc.gif">
// in your HTML body. If you're using something like Purposesoft's
// THtmlEdit, you can do this automagically in the OnSaveTag
// event (v3.0 only, at this time):
//
// if LowerCase(ioTag.TagName) = 'img' then
// begin
//   ioTag.Attribute['src'] := GetCIDByImagePath(ioTag.Attribute['src']);
// end;
//
// There is some additional documentation inline, if you want to know
// more about the structure of the various types of HTML emails.
//
// Hope this makes someone's day a little brighter. I wish I'd
// had this several days ago. :-)


unit MailBuilder;


interface


uses
   Classes,
   SysUtils,
   IdMessage;


type
   TEmailBuilder = class
   private
      FBody           : TStrings;
      FFileAttach     : TStrings;
      FEmbeddedAttach : TStrings;
      FTextMessage    : TStrings;
   protected
      function GetTextMessage: TStrings;
      procedure SetTextMessage(const Value: TStrings);
      function GetEmbeddedAttach: TStrings;
      procedure SetEmbeddedAttach(const Value: TStrings);
      function GetFileAttach: TStrings;
      procedure SetFileAttach(const Value: TStrings);
      function GetBody: TStrings;
      procedure SetBody(const Value: TStrings);


      procedure BuildPlainHTML(AMessage : TIdMessage);
      procedure BuildHTMLAndAttachments(AMessage : TIdMessage);
      procedure BuildHTMLAndEmbedded(AMessage : TIdMessage);
      procedure BuildHTMLAndAttachmentsAndEmbedded(AMessage : TIdMessage);
   public
      constructor Create; virtual;
      destructor Destroy; override;


      procedure BuildMessage(AMessage : TIdMessage);
      property Body: TStrings read GetBody write SetBody;
      property FileAttach: TStrings read GetFileAttach write SetFileAttach;
      property EmbeddedAttach: TStrings read GetEmbeddedAttach write 
SetEmbeddedAttach;
      property TextMessage: TStrings read GetTextMessage write 
SetTextMessage;
   end;


function GetCIDByImagePath(AImagePath : string; IncludeCID : boolean = True): string;

implementation


uses
   IdGlobalProtocols,
   IdText,
   IdAttachmentFile;




// This is a very poor function, but it does the job. If anything needs to 
be
// revised, this is probably it.
function GetCIDByImagePath(AImagePath : string; IncludeCID : boolean = True): string;
begin
   Result := Format('%s', [ExtractFileName(AImagePath)]);


   if IncludeCID then
      Result := Format('cid:%s', [Result]);
end;




{ TEmailBuilder }


// Terribly uninteresting Get/Set methods.
function TEmailBuilder.GetTextMessage: TStrings;
begin
   Result := FTextMessage;
end;


procedure TEmailBuilder.SetTextMessage(const Value: TStrings);
begin
   FTextMessage.Assign(Value);
end;


function TEmailBuilder.GetEmbeddedAttach: TStrings;
begin
   Result := FEmbeddedAttach;
end;


procedure TEmailBuilder.SetEmbeddedAttach(const Value: TStrings);
begin
   FEmbeddedAttach.Assign(Value);
end;


function TEmailBuilder.GetFileAttach: TStrings;
begin
   Result := FFileAttach;
end;


procedure TEmailBuilder.SetFileAttach(const Value: TStrings);
begin
   FFileAttach.Assign(Value);
end;


procedure TEmailBuilder.SetBody(const Value: TStrings);
begin
   FBody.Assign(Value);
end;


function TEmailBuilder.GetBody: TStrings;
begin
   Result := FBody;
end;


// The fun part starts here. There are basically four types of HTML
// email messages, and each need to be formatted differently. Depending
// on which types of attachments there are, this method builds the
// correct one.
procedure TEmailBuilder.BuildMessage(AMessage: TIdMessage);
begin
   if (FFileAttach.Count = 0) and (FEmbeddedAttach.Count = 0) then
      BuildPlainHTML(AMessage)


   else if (FFileAttach.Count > 0) and (FEmbeddedAttach.Count = 0) then
      BuildHTMLAndAttachments(AMessage)


   else if (FFileAttach.Count = 0) and (FEmbeddedAttach.Count > 0) then
      BuildHTMLAndEmbedded(AMessage)


   else if (FFileAttach.Count > 0) and (FEmbeddedAttach.Count > 0) then
      BuildHTMLAndAttachmentsAndEmbedded(AMessage);
end;


// Build the HTML email without any attachments.
// This is the most simple type of HTML email. The structure is as follows:
//
// multipart/alternative  -- the message type
//   text/plain           -- the plaintext part
//   text/html            -- the html part
//
procedure TEmailBuilder.BuildPlainHTML(AMessage: TIdMessage);
begin
   AMessage.ContentType := 'multipart/alternative';


   with TIdText.Create(AMessage.MessageParts, FTextMessage) do
      ContentType := 'text/plain';


   with TIdText.Create(AMessage.MessageParts, FBody) do
      ContentType := 'text/html';
end;


// Build the HTML email and add any attachments
// This is a little more tricky. The structure is as follows:
//
// multipart/mixed          -- the message type
//   multipart/alternative  -- a container for the plaintext and the html 
text
//     text/plain           -- the plaintext part
//     text/html            -- the html part
//   application/zip        -- the attachment (this could be any type; 
application/zip is just simple to understand)
//
procedure TEmailBuilder.BuildHTMLAndAttachments(AMessage: TIdMessage);
var
   j : Integer;
begin
   AMessage.ContentType := 'multipart/mixed';


   // Create the text part which holds both the plain text and the HTML text 
parts
   with TIdText.Create(AMessage.MessageParts) do
      ContentType := 'multipart/alternative';


   with TIdText.Create(AMessage.MessageParts, FTextMessage) do
   begin
      ContentType := 'text/plain';
      ParentPart := 0
   end;


   with TIdText.Create(AMessage.MessageParts, FBody) do
   begin
      ContentType := 'text/html';
      ParentPart := 0;
   end;


   // Create the attachment parts
   for j := 0 to FFileAttach.Count - 1 do
   begin
      with TIdAttachmentFile.Create(AMessage.MessageParts, FFileAttach[j]) 
do
      begin
         // Set content type or parent part?
      end;      // with
   end;
end;


// Build the HTML email with embedded attachments, but not regular 
attachments
// This is also a little tricky. The structure is as follows:
//
// multipart/alternative    -- the message type
//   text/plain             -- the plaintext part
//   multipart/related      -- a container for the html text and any 
embedded attachments
//     text/html            -- the html part
//     image/gif            -- the embedded attachment (there could be more 
than one here, as required)
//
procedure TEmailBuilder.BuildHTMLAndEmbedded(AMessage: TIdMessage);
var
   j : Integer;
begin
   AMessage.ContentType := 'multipart/alternative';


   // Create plain text part
   with TIdText.Create(AMessage.MessageParts, FTextMessage) do
      ContentType := 'text/plain';


   // create part to hold html and attachments
   with TIdText.Create(AMessage.MessageParts) do
      ContentType := 'multipart/related';


   with TIdText.Create(AMessage.MessageParts, FBody) do
   begin
      ContentType := 'text/html';
      ParentPart := 1;
   end;


   // Create embedded attachments
   for j := 0 to FEmbeddedAttach.Count - 1 do
   begin
      with TIdAttachmentFile.Create(AMessage.MessageParts, 
FEmbeddedAttach[j]) do
      begin
         ContentType := GetMimeTypeFromFile(FEmbeddedAttach[j]);
         ContentID := GetCIDByImagePath(FEmbeddedAttach[j], false);
         ContentDisposition := 'inline';
         ParentPart := 1;
      end;      // with
   end;


end;


// Build the HTML email with both regular and embedded attachments
// This one is the one that made me want to kill myself and those around me. 
The structure
// is as follows:
//
// multipart/mixed            -- the message type
//   multipart/related        -- a container for the plain and html text and 
any embedded attachments
//     multipart/alternative  -- this holds the plain and html text parts
//       text/plain           -- the plaintext part
//       text/html            -- a container for the html text and any 
embedded attachments
//     image/gif              -- the embedded attachment (there could be 
more than one here, as required)
//   application/zip          -- the attachment (there could be more than 
one here, as required)
//
// Notice that the plain and html parts are grouped together in an 
alternative part, and
// that alternative part is grouped with the embedded attachments. See? 
Tricksy it is.
procedure TEmailBuilder.BuildHTMLAndAttachmentsAndEmbedded(AMessage: 
TIdMessage);
var
   j: Integer;
begin
   AMessage.ContentType := 'multipart/mixed';


   // create overall group
   with TIdText.Create(AMessage.MessageParts) do
      ContentType := 'multipart/related'; // alternative


   // create part to hold html and attachments
   with TIdText.Create(AMessage.MessageParts) do
   begin
      ContentType := 'multipart/alternative';   // related
      ParentPart := 0;
   end;


   // Create plain text part
   with TIdText.Create(AMessage.MessageParts, FTextMessage) do
   begin
      ContentType := 'text/plain';
      ParentPart := 1;
   end;


   with TIdText.Create(AMessage.MessageParts, FBody) do
   begin
      ContentType := 'text/html';
      ParentPart := 1;
   end;


   // Create embedded attachments
   for j := 0 to FEmbeddedAttach.Count - 1 do
   begin
      with TIdAttachmentFile.Create(AMessage.MessageParts, 
FEmbeddedAttach[j]) do
      begin
         ContentType := GetMimeTypeFromFile(FEmbeddedAttach[j]);
         ContentID := GetCIDByImagePath(FEmbeddedAttach[j], false);
         ContentDisposition := 'inline';
         ParentPart := 0;
      end;      // with
   end;


   // Create the attachment parts
   for j := 0 to FFileAttach.Count - 1 do
   begin
      with TIdAttachmentFile.Create(AMessage.MessageParts, FFileAttach[j]) do
      begin
         // Set content type or parent part?
         ContentType := GetMimeTypeFromFile(FFileAttach[j]);
      end;      // with
   end;
end;


// snore.
constructor TEmailBuilder.Create;
begin
   inherited;
   FBody           := TStringList.Create;
   FFileAttach     := TStringList.Create;
   FEmbeddedAttach := TStringList.Create;
   FTextMessage    := TStringList.Create;
end;


destructor TEmailBuilder.Destroy;
begin
   FreeAndNil(FBody);
   FreeAndNil(FFileAttach);
   FreeAndNil(FEmbeddedAttach);
   FreeAndNil(FTextMessage);
   inherited;
end;


end.
 