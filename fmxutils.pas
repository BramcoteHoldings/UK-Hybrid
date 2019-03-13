unit FmxUtils;

interface

uses SysUtils, Windows, Classes, Consts;

type
  EInvalidDest = class(EStreamError);
  EFCantMove = class(EStreamError);

procedure CopyFile(const FileName, DestName: string);
procedure MoveFile(const FileName, DestName: string);
function GetFileSize(const FileName: string): LongInt;
function FileDateTime(const FileName: string): TDateTime;
function HasAttr(const FileName: string; Attr: Word): Boolean;
function ExecuteFile(const FileName, Params, DefaultDir: string;
  ShowCmd: Integer; var AMsg: string): THandle;

implementation

uses Forms, ShellAPI;

const
   SInvalidDest = 'Destination %s does not exist';
   SFCantMove = 'Cannot move file %s';


procedure CopyFile(const FileName, DestName: string);
var
  CopyBuffer: Pointer; { buffer for copying }
  BytesCopied: Longint;
  Source, Dest: Integer; { handles }
  Len: Integer;
  Destination: TFileName; { holder for expanded destination name }
const
  ChunkSize: Longint = 8192; { copy in 8K chunks }
begin
  Destination := ExpandFileName(DestName); { expand the destination path }
  if HasAttr(Destination, faDirectory) then { if destination is a directory... }
  begin
    Len :=  Length(Destination);
    if Destination[Len] = '\' then
      Destination := Destination + ExtractFileName(FileName) { ...clone file name }
    else
      Destination := Destination + '\' + ExtractFileName(FileName); { ...clone file name }
  end;
GetMem(CopyBuffer, ChunkSize); { allocate the buffer }
  try
    Source := FileOpen(FileName, fmShareDenyWrite); { open source file }
    //if Source < 0 then raise EFOpenError.CreateFmt(SFOpenError, [FileName]);
    try
      Dest := FileCreate(Destination); { create output file; overwrite existing }
      //if Dest < 0 then raise EFCreateError.CreateFmt(SFCreateError, [Destination]);
      try
        repeat
          BytesCopied := FileRead(Source, CopyBuffer^, ChunkSize); { read chunk }
          if BytesCopied > 0 then { if we read anything... }
            FileWrite(Dest, CopyBuffer^, BytesCopied); { ...write chunk }
        until BytesCopied < ChunkSize; { until we run out of chunks }
      finally
        FileClose(Dest); { close the destination file }
      end;
    finally
      FileClose(Source); { close the source file }
    end;
  finally
    FreeMem(CopyBuffer, ChunkSize); { free the buffer }
  end;
end;


{ MoveFile procedure }
{
  Moves the file passed in FileName to the directory specified in DestDir.
  Tries to just rename the file.  If that fails, try to copy the file and
  delete the original.

  Raises an exception if the source file is read-only, and therefore cannot
  be deleted/moved.
}

procedure MoveFile(const FileName, DestName: string);
var
  Destination: string;
begin
  Destination := ExpandFileName(DestName); { expand the destination path }
  if not RenameFile(FileName, Destination) then { try just renaming }
  begin
    if HasAttr(FileName, faReadOnly) then  { if it's read-only... }
      raise EFCantMove.Create(Format(SFCantMove, [FileName])); { we wouldn't be able to delete it }
      CopyFile(FileName, Destination); { copy it over to destination...}
//      DeleteFile(FileName); { ...and delete the original }
  end;
end;

{ GetFileSize function }
{
  Returns the size of the named file without opening the file.  If the file
  doesn't exist, returns -1.
}

function GetFileSize(const FileName: string): LongInt;
var
  SearchRec: TSearchRec;
begin
  if FindFirst(ExpandFileName(FileName), faAnyFile, SearchRec) = 0 then
  begin
    Result := SearchRec.Size;
    FindClose(SearchRec.FindHandle);
  end else
    Result := -1;
end;

function FileDateTime(const FileName: string): System.TDateTime;
begin
  FileAge(FileName, Result);
end;

function HasAttr(const FileName: string; Attr: Word): Boolean;
var
 FileAttr: Integer;
begin
  FileAttr := FileGetAttr(FileName);
  if FileAttr = -1 then FileAttr := 0;
  Result := (FileAttr and Attr) = Attr;
end;

function ExecuteFile(const FileName, Params, DefaultDir: string;
  ShowCmd: Integer; var AMsg: string): THandle;
var
   ARet: THandle;
begin
   AMsg := '';
   ARet := ShellExecute(Application.MainForm.Handle, nil,
                        PChar(FileName), PChar(Params),
                        PChar(DefaultDir), ShowCmd);
   case ARet of
      0: AMsg :=  '(0) The operating system is out of memory or resources';
      2: AMsg :=  '(2) The specified file was not found';
      3: AMsg :=  '(3) The specified path was not found';
      5: AMsg :=  '(5) Windows 95 only: The operating system denied access to the specified file';
      8: AMsg :=  '(8) Windows 95 only: There was not enough memory to complete the operation';
      10: AMsg :=  '(10) Wrong Windows version';
      11: AMsg :=  '(11) The .EXE file is invalid (non-Win32 .EXE or error in .EXE image)';
      12: AMsg :=  '(12) Application was designed for a different operating system';
      13: AMsg :=  '(13) Application was designed for MS-DOS 4.0';
      15: AMsg :=  '(15) Attempt to load a real-mode program';
      16: AMsg :=  '(16) Attempt to load a second instance of an application with non-readonly data segments';
      19: AMsg :=  '(19) Attempt to load a compressed application file';
      20: AMsg :=  '(20) Dynamic-link library (DLL) file failure';
      26: AMsg :=  '(26) A sharing violation occurred';
      27: AMsg :=  '(27) The filename association is incomplete or invalid';
      28: AMsg :=  '(28) The DDE transaction could not be completed because the request timed out';
//      29: AMsg :=  '(29) The DDE transaction failed';
      30: AMsg :=  '(30) The DDE transaction could not be completed because other DDE transactions were being processed';
      31: AMsg :=  '(31) There is no application associated with the given filename extension';
      32: AMsg :=  '(32) Windows 95 only: The specified dynamic-link library was not found';
   end;
   Result := ARet;
end;

end.
