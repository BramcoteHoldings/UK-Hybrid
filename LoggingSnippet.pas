unit LoggingSnippet;

interface

uses
  Classes, Windows;

{ This could be more complex, but simply expose the TStringList to outside world
seems easiest way to go. }


var
  AccessList: TStringList;

  // These values should be adjusted to fit with needs.
  LoggingEnabled: Boolean;
  LogFileName: String;
  LogFileOverFlowSize: Cardinal;

procedure LogEnter(AName: String);
procedure LogExit(AName: String);
procedure WriteLog(const AMessage: string);

implementation

uses
  System.SysUtils;

const
  DEFAULT_LOG_FILESIZE = 10000;

// If file logging is on, write the message to the file log.
// Used by LogEnter & LogExit.
procedure InternalSaveToLog(AMessage: String);
begin
  if LoggingEnabled then
    WriteLog(AMessage);
end;

procedure LogEnter(AName: String);
begin
  AccessList.Add('Enter ' + AName + '  ' + FormatDateTime('tt t ss zzz', Now));
  InternalSaveToLog(AccessList[AccessList.Count-1]);
end;

procedure LogExit(AName: String);
begin
  AccessList.Add('Exit ' + AName + '  ' + FormatDateTime('tt t ss zzz', Now));
  InternalSaveToLog(AccessList[AccessList.Count-1]);
end;

procedure SaveLog(AFileName: String);
begin
  AccessList.SaveToFile(AFileName);
end;

procedure WriteLog(const AMessage: string);
var
   value,
   formattedDateTime: string;
   FTextFile : TextFile;
   FileHandle: integer;
   FileSize: DWord;

   procedure RenameLogFile;
   var
     newName: String;
   begin
      DateTimeToString(formattedDateTime, 'ddmmyy_hhnnss', Now());
      newName := ChangeFileExt(LogFileName, formattedDateTime+'.log');
      RenameFile(LogFileName, newName);
   end;

begin
  if (not LoggingEnabled) or (AMessage = '') then
    exit;


  if (DirectoryExists(ExtractFileDir(LogFileName)) = False) then
     CreateDir(ExtractFileDir(LogFileName));

  AssignFile(FTextFile, LogFileName);

  if FileExists(LogFileName) then
    Append(FTextFile)
  else
    Rewrite(FTextFile);

  try
     value := DateTimeToStr(Now()) + ' - ' + AMessage;
     WriteLn(FTextFile, value);
  finally
    CloseFile(FTextFile);
  end;

  FileHandle := FileOpen(LogFileName, fmOpenRead);

  FileSize := GetFileSize(FileHandle, nil);
  FileClose(FileHandle);
  if (FileSize > LogFileOverflowSize) then
    RenameLogFile;

end;


initialization
  AccessList := TStringList.Create;
  // Make this large up front to reduce the likelihood of allocating more lines at runtime (which might take time).
  AccessList.Capacity := 1000000;
  AccessList.Add('Starting ' + FormatDateTime('dd/mm/yyyy tt ss zzz', Now));
  // By default, leave logging off.
  LoggingEnabled := false;
  // This folder can be relied on to exist.
  LogFileName := 'C:\Tmp\InsightErrors.log';
  LogFileOverFlowSize := DEFAULT_LOG_FILESIZE;

end.

