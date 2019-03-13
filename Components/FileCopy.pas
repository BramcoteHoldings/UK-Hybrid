unit FileCopy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TFileCopy = class(TComponent)
  private
    FSource,
    FDest: string;
    procedure DoCopyFile(const SrcFile, DstFile: string);
  public
    procedure CopyFile; virtual;
  published
    property FileSource: string read FSource write FSource;
    property FileDestination: string read FDest write FDest;
  end;

procedure Register;

implementation

uses
  CopyPrg;

procedure TFileCopy.CopyFile;
begin
  DoCopyFile(FileSource, FileDestination);
end;

procedure TFileCopy.DoCopyFile(const SrcFile, DstFile: string);
const
  bufSize = 16384; {Use a 16K buffer}
var
  sStream, dStream : TFileStream;
  pBuf: Pointer;
  cnt: Integer;
  prgFrm: TFileProg;
  totCnt, strmSize: LongInt;
begin
  totCnt := 0;
  {Open up the Source File to read it}
  sStream := TFileStream.Create(SrcFile, fmOpenRead or fmShareDenyWrite);

  {Create the copying progress form and set property values}
  prgFrm := TFileProg.Create(Application);
  {pb- with prgFrm.pgbFileCopy do begin
    MinValue := 0;
    MaxValue := 100;
    Position := 0;}
  //pb-end;
  //pb-prgFrm.lblFileName.Caption := 'Copying '+ExtractFileName(SrcFile);
  prgFrm.Show;
  Application.ProcessMessages;

  {Get the size of the entire stream to use for the progress gauge. Note
   we have to call FileSeek first because it will place the pointer
   at the end of the file when we get the file first return value.}
  strmSize := sStream.size;

  try
    { Create the destination file. If it already exists,
      overwrite it. }
    dStream := TFileStream.Create(DstFile, fmCreate or fmShareExclusive);
    try
      GetMem(pBuf, bufSize);
      try
        {Read and write first bufSize bytes from source into the buffer
         If the file size is smaller than the default buffer size, then
         all the user will see is a quick flash of the progress form.}
        cnt := sStream.Read(pBuf^, bufSize);
        cnt := dStream.Write(pBuf^, cnt);

        totCnt := totCnt + cnt;
        {Loop the process of reading and writing}
        while (cnt > 0) do begin
          {Let things in the background proceed while loop is processing}
          Application.ProcessMessages;

          {Read bufSize bytes from source into the buffer}
          cnt := sStream.Read(pBuf^, bufSize);

          {Now write those bytes into destination}
          cnt := dStream.Write(pBuf^, cnt);

          {Increment totCnt for progress and do arithmetic to update the
           gauge}
          totcnt := totcnt + cnt;
          {pb-if not(prgFrm.CancelIt) then
            with prgFrm.pgbFileCopy do begin
              Position := Round((totCnt / strmSize) * 100);
              Update;
            end
          else
            Break;       {If user presses cancel button, then break out of loop}
                         {which will make program go to finally blocks}
        end;

      finally
        FreeMem(pBuf, bufSize);
      end;
    finally
      FileSetDate(dStream.Handle, FileGetDate(sStream.Handle));
      dStream.Free;
      if prgFrm.CancelIt then {If copying was cancelled, delete the destination file}
        DeleteFile(DstFile);  {after stream has been freed, which will close the file.}
    end;
  finally
    sStream.Free;
    prgFrm.Close;
  end;
end;

procedure Register;
begin
  RegisterComponents('Colateral', [TFileCopy]);
end;

end.
