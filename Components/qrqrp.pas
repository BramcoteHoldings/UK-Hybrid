{ :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  :: QuickReport 3.0 for Delphi 3 or newer                   ::
  ::                                                         ::
  :: Functions for manipulating QRP files(saved reports)     ::
  ::                                                         ::
  :: Copyright (c) 1998 QuSoft AS                            ::
  :: All Rights Reserved                                     ::
  ::                                                         ::
  :: web: http://www.qusoft.no   fax: +47 22 41 74 91        ::
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: }
unit qrqrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  StdCtrls, qrprntr, qrextra;

type
  {
  The following is defined locally in the qrprintr unit.  We need this
  to handle the QRP files, so we copy it here.
  }

  TQRFileHeader = record
    FormatVersion : word;                   { File format version }
    QRVersion : word;                       { QR version }
    PageSize : TQRPaperSize;
    PageCount : integer;
    CreateDateTime : TDateTime;
    Portrait : boolean;                     { field added in header version 2 }
    Compression : byte;                     { 0 - no compression, 1 - splay }
    EmptySpace : array[0..100] of byte;
  end;

function CombineQRP(sFileName: string; sList: TStrings): integer;
function SaveWMF(aQRPfile, aBaseName: string; StartNum: integer; iList: TList): boolean;
function RangeFromQRP(sFileName, dFileName: string; FromPage, ToPage: integer): boolean;

implementation


// This function will save a QRP file out as a series of WMF files.
function SaveWMF(aQRPfile, aBaseName: string; StartNum: integer; iList: TList): boolean;
var
  plSrc, plDest: TQRPageList;
  nIdx: integer;
  aMetafile: TMetafile;
begin
  {
  Some simple error checking to make sure the correct parameters
  have been passed in.
  }
  result := True;

  if Result then
  begin
    {
    Each page of a rendered report is stored in the qrprinter's
    PageList.  We'll need two of them to merge the QRP files
    }

    plSrc := TQRPageList.Create;
    plDest := TQRPageList.Create;
    {
    The PageList object has a TQRStream to hold the data.  The source
    pagelist will create it's TQRStream when we load the QRP files.
    The destination PageList will need to have it's TQRStream created
    by us first
    }
    plDest.Stream := TQRStream.Create(100000);

    with plSrc do
    begin
      { Clear the PageList of the previous file's data }
      Clear;

      { Load the QRP file, which will create the TQRStream that it needs }
      LoadFromFile(aQRPfile);

      { Loop through each page and add it to the destination PageList }
      for nIdx := 1 to PageCount do
      begin
        { Retrieve the current page as a metafile }
        aMetaFile := GetPage(nIdx);

        aMetaFile.Enhanced := True;

        aMetaFile.SaveToFile(aBaseName + format('%3.3d', [nIdx+StartNum-1]) + '.wmf');
      end;
    end;
    plSrc.free;
  end;
end;

// This function will take a list of QRP files and combine them into
// one large QRP file.

function CombineQRP(sFileName: string; sList: TStrings): integer;
var
  plSrc, plDest: TQRPageList;
  FileCount, nIdx: integer;
  aMetafile: TMetafile;
  aFileHeader: TQRFileHeader;
begin
  {
  Some simple error checking to make sure the correct parameters
  have been passed in.
  }
  result := 0;

  if sFileName = '' then
    result := -1;

  if (sList = nil) then
    result := -2;

  if (sList.Count = 0) then
    result := -3;

  if result = 0 then
  begin
    {
    Each page of a rendered report is stored in the qrprinter's
    PageList.  We'll need two of them to merge the QRP files
    }

    plSrc := TQRPageList.Create;
    plDest := TQRPageList.Create;
    {
    The PageList object has a TQRStream to hold the data.  The source
    pagelist will create it's TQRStream when we load the QRP files.
    The destination PageList will need to have it's TQRStream created
    by us first
    }
    plDest.Stream := TQRStream.Create(100000);

    with plSrc do
    begin
      { Loop through the list of file names }
      for FileCount := 0 to (sList.Count - 1) do
      begin

        { Clear the PageList of the previous file's data }
        Clear;

        { Load the QRP file, which will create the TQRStream that it needs }
        LoadFromFile(sList[FileCount]);

        { Loop through each page and add it to the destination PageList }
        for nIdx := 1 to PageCount do
        begin
          { Retrieve the current page as a metafile }
          aMetaFile := GetPage(nIdx);

          { Add it to the destination }
          plDest.AddPage(AMetafile);
        end;
      end;

      {
      At this point the destination PageList has all of the pages from
      the list of QRP files.  It's header will have the pagecount of the
      the last QRP file to be read in.  Here's where we fix it.
      }
      with plDest.Stream do
      begin
        // Go to the start of the stream
        Position := 0;

        // Read in the header block
        Read(aFileHeader, SizeOf(TQRFileHeader));

        {
        Update the pagecount member of the header with the actual
        count of pages
        }
        aFileHeader.PageCount := plDest.PageCount;

        { Go back to the start again }
        Position := 0;

        { Write the updated header back into the PageList }
        write(aFileHeader, SizeOf(TQRFileHeader));
      end;

      // Everything should be all set, now save the file.
      plDest.SaveToFile(sFileName);
    end;
    { All done, free the pagelists }

    plDest.free;
    plSrc.free;
  end;
end;

function RangeFromQRP(sFileName, dFileName: string; FromPage, ToPage: integer): boolean;
var
  plSrc, plDest: TQRPageList;
  nIdx: integer;
  aMetafile: TMetafile;
  aFileHeader: TQRFileHeader;
begin
  result := TRUE;
  if result = TRUE then
  begin
    {
    Each page of a rendered report is stored in the qrprinter's
    PageList.  We'll need two of them to merge the QRP files
    }

    plSrc := TQRPageList.Create;
    plDest := TQRPageList.Create;
    {
    The PageList object has a TQRStream to hold the data.  The source
    pagelist will create it's TQRStream when we load the QRP files.
    The destination PageList will need to have it's TQRStream created
    by us first
    }
    plDest.Stream := TQRStream.Create(100000);

    with plSrc do
    begin
      LoadFromFile(sFileName);

      for nIdx := 1 to PageCount do
      begin
        // Read only the pages that fall within the range.  If the user
        // selected all pages, then they all fall within the range.
        if ((nIdx >= FromPage) and (nIdx <= ToPage)) or (FromPage = 0) then
        begin
          { Retrieve the current page as a metafile }
          aMetaFile := GetPage(nIdx);

          { Add it to the destination }
          plDest.AddPage(AMetafile);
        end;
      end;
      {
      At this point the destination PageList has all of the pages from
      the list of QRP files.  It's header will have the pagecount of the
      the last QRP file to be read in.  Here's where we fix it.
      }
      with plDest.Stream do
      begin
        // Go to the start of the stream
        Position := 0;

        // Read in the header block
        Read(aFileHeader, SizeOf(TQRFileHeader));

        {
        Update the pagecount member of the header with the actual
        count of pages
        }
        aFileHeader.PageCount := plDest.PageCount;

        { Go back to the start again }
        Position := 0;

        { Write the updated header back into the PageList }
        write(aFileHeader, SizeOf(TQRFileHeader));
      end;

      // Everything should be all set, now save the file.
      plDest.SaveToFile(DFileName);
    end;
    { All done, free the pagelists }

    plDest.free;
    plSrc.free;
  end;
end;

end.
