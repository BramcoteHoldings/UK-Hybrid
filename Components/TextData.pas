unit TextData;


interface

uses
  SysUtils, Windows, DB, Classes, Forms;

type
  TIntArray = array[0..1000000] of Integer;
  PIntArray = ^TIntArray;
  TByteArray = array[0..1000000000] of Byte;
  PByteArray = ^TByteArray;

  TRecordData = packed record
    Bookmark: Integer;
    BookmarkFlag: TBookmarkFlag;
    ArraySize: Integer;
    Bytes: TByteArray;
  end;
  PRecordData = ^TRecordData;

  // Collection item object for records
  TTextRecord = class(TCollectionItem)
  public
    destructor Destroy; override;
  protected
    Data: PRecordData;
  end;

{ TTextDataSet }

  TTextDataSet = class(TDataSet)
  private
    Records: TCollection;
    FieldOffSets: PIntArray;
    FFieldRoster: TStrings;
    FRecBufSize: Integer;
    FCurRec: Integer;
    FFileName: string;
    FLastBookmark: Integer;
    MaxFieldNo: Integer;
    FRecordSize: Integer;
    FFilterBuffer : PRecordData;
    procedure SetFieldRoster(Value : TStrings);
    function GetRecBufSize: Integer;
    procedure QueryRecords;
    procedure FieldToRecord(Field: TField; FieldIsNull: Boolean; FieldData: Pointer; RecordData: PRecordData);
    function FieldOffset(Field: TField): Integer;
    function GetActiveRecBuf(var RecBuf: PRecordData): Boolean;
    procedure InternalUpdate;
    procedure SaveRecordData(Buffer: PRecordData; Index: Integer);
    procedure SaveToDisk;
  protected
    { Overriden abstract methods (required) }
    function AllocRecordBuffer: TRecordBuffer; override;
    procedure FreeRecordBuffer(var Buffer: TRecordBuffer); override;
    procedure GetBookmarkData(Buffer: TRecordBuffer; Data: Pointer); override;
    function GetBookmarkFlag(Buffer: TRecordBuffer): TBookmarkFlag; override;
    function GetFieldData(Field: TField; Buffer: Pointer): Boolean; override;
    function GetRecord(Buffer: TRecordBuffer; GetMode: TGetMode; DoCheck: Boolean): TGetResult; override;
    function GetRecordSize: Word; override;
    procedure InternalAddRecord(Buffer: Pointer; Append: Boolean); override;
    procedure InternalClose; override;
    procedure InternalDelete; override;
    procedure InternalFirst; override;
    procedure InternalGotoBookmark(Bookmark: Pointer); override;
    procedure InternalHandleException; override;
    procedure InternalInitFieldDefs; override;
    procedure InternalInitRecord(Buffer: TRecordBuffer); override;
    procedure InternalLast; override;
    procedure InternalOpen; override;
    procedure InternalPost; override;
    procedure InternalSetToRecord(Buffer: TRecordBuffer); override;
    function IsCursorOpen: Boolean; override;
    procedure SetBookmarkFlag(Buffer: TRecordBuffer; Value: TBookmarkFlag); override;
    procedure SetBookmarkData(Buffer: TRecordBuffer; Data: Pointer); override;
    procedure SetFieldData(Field: TField; Buffer: Pointer); override;
  protected
    { Additional overrides (optional) }
    function GetRecordCount: Integer; override;
    function GetRecNo: Integer; override;
    procedure SetRecNo(Value: Integer); override;
  public
    constructor Create(AOwner : TComponent); Override;
    destructor Destroy; override;
  published
    property FieldRoster : TStrings read FFieldRoster write SetFieldRoster;
    property FileName: string read FFileName write FFileName;
    property Active;
    property OnNewRecord;

  end;

const
  RecInfoSize = SizeOf(TRecordData) - SizeOf(TByteArray);


procedure Register;

implementation

destructor TTextRecord.Destroy;
begin
  if Data <> nil then
  begin
    FreeMem(Data, Data^.ArraySize + RecInfoSize);
  end;
  inherited;
end;

{ TTextDataSet }

{ This method is called by TDataSet.Open and also when FieldDefs need to
  be updated (usually by the DataSet designer).  Everything which is
  allocated or initialized in this method should also be freed or
  uninitialized in the InternalClose method. }

constructor TTextDataSet.Create(AOwner : TComponent);
begin
  Inherited Create(AOwner);
  FFieldRoster := TStringList.Create;
end;

destructor TTextDataSet.Destroy;
begin
  FFieldRoster.Free;
  Inherited Destroy;
end;

procedure TTextDataSet.SetFieldRoster(Value : TStrings);
begin
  FFieldRoster.Assign(Value);
end;

// Calculate Buffer Size. Can only be called after BindFields
function TTextDataSet.GetRecBufSize: Integer;
var
  i : Integer;

begin
  MaxFieldNo := 0;
  for i := 0 to FieldCount - 1 do
    with Fields[i] do
      if FieldNo > MaxFieldNo then
        MaxFieldNo := FieldNo;
  Inc(MaxFieldNo);

  GetMem(FieldOffsets, MaxFieldNo * SizeOf(Integer));

  Result := 0;
  FRecordSize := 0;
  for i := 0 to FieldCount - 1 do with Fields[i] do
  begin
    if FieldNo >= 0 then
      FieldOffsets^[FieldNo] := FRecordSize;
    Inc(Result, DataSize + 1);
    Inc(FRecordSize, DataSize + 1);
  end;
  Inc(Result, RecInfoSize);
end;


procedure TTextDataSet.QueryRecords;
var
  f: Integer;
  Buffer: Pointer;
  ps: array[0..2000] of char;
  FieldIsNull: Boolean;

  DFile : TextFile;
  Tmp : String;
  Line : String;
  TabPos : Integer;

begin
  // Clear the record collection
  Records.Clear;

  if FFileName <> '' then
  begin
    AssignFile(DFile, FFileName);
    Reset(DFile);

    While Not System.Eof(DFile) do
    begin
      ReadLn(DFile, Line);
      if Copy(Line, 1, 4) <> '++fr' then
      begin
        FFilterBuffer := PRecordData(AllocRecordBuffer);
        for f := 0 to FieldCount - 1 do
        begin
          if Fields[f].FieldKind = fkData then
          begin
            Buffer := nil;
            TabPos := Pos(#9, Line);
            if TabPos = 0 then
              Tmp := Line
            else
              Tmp := Copy(Line, 1, TabPos - 1);
            System.Delete(Line, 1, TabPos);
            Tmp := Copy(Tmp, 1, Fields[f].Size);

            FieldIsNull := Tmp = '';

            if (not FieldIsNull) then
            begin
              StrPCopy(ps, AdjustLineBreaks(Tmp));
              Buffer := @ps;
            end;

            if (Buffer <> nil) or FieldIsNull then
              FieldToRecord(Fields[f], FieldIsNull, Buffer, FFilterBuffer)
            else
              raise Exception.Create('Unexpected datatype: ' + Fields[f].FieldName);
          end;
        end;
        with TTextRecord.Create(Records) do
        begin
          Data := FFilterBuffer;
          Inc(FLastBookMark);
          Data^.Bookmark := FLastBookMark;
          Data^.BookmarkFlag := bfCurrent;
        end;
      end;
    end;
    CloseFile(DFile);
  end;
end;

procedure TTextDataSet.FieldToRecord(Field: TField; FieldIsNull: Boolean; FieldData: Pointer; RecordData: PRecordData);
var
  OffSet, DataSize: Integer;

begin
  OffSet := FieldOffset(Field);
  DataSize := Field.DataSize;
  if FieldIsNull then
    RecordData^.Bytes[Offset] := 1
  else begin
    RecordData^.Bytes[Offset] := 0;
    if RecordData.ArraySize < Offset + 1 + DataSize then MessageBeep($FFFF);
    Move(FieldData^, RecordData^.Bytes[OffSet + 1], DataSize);
  end;
end;

function TTextDataSet.FieldOffset(Field: TField): Integer;
begin
  Result := FieldOffsets[Field.FieldNo];
end;

procedure TTextDataSet.InternalOpen;
begin
  FieldOffsets := nil;
  // Initialize our internal position.
  // We use -1 to indicate the "crack" before the first record.
  FCurRec := -1;
  // Tell TDataSet how big our Bookmarks are
  BookmarkSize := SizeOf(Integer);

  InternalInitFieldDefs;
  // Create TField components when no persistent fields have been created
  if DefaultFields then CreateFields;
  // Bind the TField components to the physical fields
  BindFields(True);
  // Create collection for records
  Records := TCollection.Create(TTextRecord);

  // Calculate the size of the record buffers.
  // Note: This is NOT the same as the RecordSize property which
  // only gets the size of the data in the record buffer
  FRecBufSize := GetRecBufSize;
  // Query records to fill collection
  QueryRecords;
end;

procedure TTextDataSet.InternalClose;
begin
  // Free the record collection
  Records.Free;
  Records := nil;
  // Destroy the TField components if no persistent fields
  if DefaultFields then
    DestroyFields;
  // Reset these internal flags
  FLastBookmark := 0;
  FCurRec := -1;
  // Free memory for Field offset array
  if FieldOffsets <> nil then
    FreeMem(FieldOffsets, MaxFieldNo * SizeOf(Integer));
  FieldOffsets := nil;
end;

function TTextDataSet.IsCursorOpen: Boolean;
begin
  Result := Assigned(Records);
end;

procedure TTextDataSet.InternalInitFieldDefs;
var
  i: Integer;
  FieldName: string;
  FieldRequired: boolean;
  FieldSize: Integer;
  FieldType: TFieldType;
  FieldNo: Integer;
  ColPos : Integer;

  DFile : TextFile;
  Line      : String;
  fieldLine : string;
begin
  FieldDefs.Clear;

  //load field defs from file...
  if FFileName <> '' then
  begin
    FFieldRoster.Clear;
    AssignFile(DFile, FFileName);
    Reset(DFile);

    While Not System.Eof(DFile) do
    begin
      ReadLn(DFile, Line);
      if Copy(Line, 1, 4) = '++fr' then
        FFieldRoster.Add(Copy(Line, 5, 255))
      else
        Break;
    end;
    CloseFile(DFile);
  end;

  // Create a field in the dataset for each field in the query
  if FFieldRoster.Count = 0 then
    raise Exception.Create('There are no fields in the Field Roster');

  FieldNo := 1;

  for i := 0 to FFieldRoster.Count - 1 do
  begin
    ColPos := Pos(':', FFieldRoster[i]);
    FieldName := Copy(FFieldRoster[i], 1, ColPos - 1);
    FieldRequired := false;
    //
    //fieldLine := copy(FFielfRoster[i],ColPos+1,length(FFieldRoster[i]));
    //
    FieldSize := StrToInt(Copy(FFieldRoster[i], ColPos + 1, 255));
    if FieldSize > 0 then
       FieldType := ftString
    else
       FieldType := ftCurrency;

    TFieldDef.Create(FieldDefs, FieldName, FieldType, FieldSize, FieldRequired, FieldNo);
    Inc(FieldNo);
  end;
end;

procedure TTextDataSet.InternalHandleException;
begin
  Application.HandleException(Self);
end;

procedure TTextDataSet.InternalGotoBookmark(Bookmark: Pointer);
var
  i, b: Integer;

begin
  b := PInteger(Bookmark)^;
  if (b - 1 > 0) and (b - 1 < Records.Count) then
  begin
    if b = TTextRecord(Records.Items[b - 1]).Data^.Bookmark then
    begin
      FCurRec := b - 1;
      Exit;
    end;
  end;
  for i := 0 to Records.Count - 1 do
  begin
    if PInteger(Bookmark)^ = TTextRecord(Records.Items[i]).Data^.Bookmark then
    begin
      FCurRec := i;
      Exit;
    end;
  end;
  DatabaseError('Bookmark not found');
end;

procedure TTextDataSet.InternalSetToRecord(Buffer: TRecordBuffer);
begin
  InternalGotoBookmark(@PRecordData(Buffer).Bookmark);
end;

function TTextDataSet.GetBookmarkFlag(Buffer: TRecordBuffer): TBookmarkFlag;
begin
  Result := PRecordData(Buffer).BookmarkFlag;
end;

procedure TTextDataSet.SetBookmarkFlag(Buffer: TRecordBuffer; Value: TBookmarkFlag);
begin
  PRecordData(Buffer).BookmarkFlag := Value;
end;

procedure TTextDataSet.GetBookmarkData(Buffer: TRecordBuffer; Data: Pointer);
begin
  PInteger(Data)^ := PRecordData(Buffer).Bookmark;
end;

procedure TTextDataSet.SetBookmarkData(Buffer: TRecordBuffer; Data: Pointer);
begin
  PRecordData(Buffer).Bookmark := PInteger(Data)^;
end;

function TTextDataSet.GetRecordSize: Word;
begin
  Result := FRecordSize;
end;

function TTextDataSet.AllocRecordBuffer: TRecordBuffer;
var b: PRecordData;
begin
  GetMem(Result, FRecBufSize);
  b := PRecordData(Result);
  b^.ArraySize := FRecBufSize - RecInfoSize;
end;

procedure TTextDataSet.FreeRecordBuffer(var Buffer: TRecordBuffer);
begin
  FreeMem(Buffer, FRecBufSize);
end;

function TTextDataSet.GetRecord(Buffer: TRecordBuffer; GetMode: TGetMode;
  DoCheck: Boolean): TGetResult;
begin
  Result := grOK;
  case GetMode of
    gmNext:
      if FCurRec < Records.Count - 1 then
        Inc(FCurRec)
      else
        Result := grEOF;

    gmPrior:
      if FCurRec <= 0 then
        Result := grBOF
      else
        Dec(FCurRec);

    gmCurrent:
      if (FCurRec < 0) or (FCurRec >= Records.Count) then
      begin
        Result := grError
      end;
  end;
  if Result = grOK then
  begin
    Move(TTextRecord(Records.Items[FCurRec]).Data^, Buffer^, FRecBufSize);
    with PRecordData(Buffer)^ do
      BookmarkFlag := bfCurrent;
  end
  else
    if (Result = grError) and DoCheck then
      DatabaseError('No Records');
end;

procedure TTextDataSet.InternalInitRecord(Buffer: TRecordBuffer);
begin
  FillChar(PRecordData(Buffer)^.Bytes[0], FRecordSize + CalcFieldsSize, 1);
end;

function TTextDataSet.GetActiveRecBuf(var RecBuf: PRecordData): Boolean;
var
  i: Integer;

begin
  case State of
    dsBrowse:
      if IsEmpty then
        RecBuf := nil
      else
        RecBuf := PRecordData(ActiveBuffer);

    dsEdit, dsInsert:
      RecBuf := PRecordData(ActiveBuffer);

    dsNewValue,
    dsCurValue:
      RecBuf := PRecordData(ActiveBuffer);

    dsOldValue:
      begin
        i := FCurRec;
        if i < 0 then
          i := 0;
        if i < Records.Count then
          RecBuf := TTextRecord(Records.Items[i]).Data
        else
          RecBuf := nil;
        end;
  else
    RecBuf := nil;
  end;
  Result := RecBuf <> nil;
end;

function TTextDataSet.GetFieldData(Field: TField; Buffer: Pointer): Boolean;
var
  b : PRecordData;
begin
  Result := False;
  if not GetActiveRecBuf(b) then Exit;
  if b^.Bytes[FieldOffset(Field)] = 0 then
  begin
    if Buffer <> nil then
      Move(b^.Bytes[FieldOffset(Field) + 1], Buffer^, Field.DataSize);
    Result := True;
  end;
end;

procedure TTextDataSet.SetFieldData(Field: TField; Buffer: Pointer);
var
  b : PRecordData;
begin
  if not GetActiveRecBuf(b) then
    Exit;
  if State in [dsEdit, dsInsert] then
    Field.Validate(Buffer);

  if Buffer = nil then
    b^.Bytes[FieldOffset(Field)] := 1
  else begin
    b^.Bytes[FieldOffset(Field)] := 0;

    Move(Buffer^, b^.Bytes[FieldOffset(Field) + 1], Field.DataSize);
  end;
  if not (State in [dsCalcFields, dsFilter, dsNewValue]) then
    DataEvent(deFieldChange, Longint(Field));
end;

procedure TTextDataSet.InternalFirst;
begin
  FCurRec := -1;
end;

procedure TTextDataSet.InternalLast;
begin
  FCurRec := Records.Count;
end;


procedure TTextDataSet.SaveRecordData(Buffer: PRecordData; Index: Integer);
var
  b: PRecordData;

begin
  b := TTextRecord(Records.Items[Index]).Data;
  Move(Buffer^, b^, FRecBufSize);
end;


procedure TTextDataSet.InternalUpdate;
var
  b: PRecordData;

begin
  if not GetActiveRecBuf(b) then
    Exit;
  // Update the record in the collection
  SaveRecordData(b, FCurRec);
end;

procedure TTextDataSet.SaveToDisk;
var
  b: PRecordData;
  Idx : Integer;
  Idy : Integer;
  DFile : TextFile;
  Line : String;
  Buffer: PChar;

begin
  AssignFile(DFile, FFileName);
  Rewrite(DFile);
  try
    //save header...
    for Idx := 0 to FieldCount - 1 do
    begin
      if Fields[Idx].FieldKind = fkData then
      begin
        Line := '++fr' + Fields[Idx].FieldName + ':' + IntToStr(Fields[Idx].Size);
        WriteLn(DFile, Line);
      end;
    end;

    //save data...
    for Idx := 0 to Records.Count - 1 do
    begin
      Line := '';
      b := TTextRecord(Records.Items[Idx]).Data;
      for Idy := 0 to FieldCount - 1 do
      begin
        Buffer := StrAlloc(Fields[Idy].DataSize + 1);
        try
          if b^.Bytes[FieldOffset(Fields[Idy])] = 0 then
          begin
            Move(b^.Bytes[FieldOffset(Fields[Idy]) + 1], Buffer^, Fields[Idy].DataSize);
            Line := Line + String(Buffer) + #9;
          end;
        finally
          StrDispose(Buffer);
        end;
      end;
      if Line[Length(Line)] = #9 then
        Line := Copy(Line, 1, Length(Line) - 1);
      WriteLn(DFile, Line);
    end;
  finally
    CloseFile(DFile);
  end;
end;

procedure TTextDataSet.InternalPost;
var
  b: PRecordData;

begin
  if State = dsEdit then
    InternalUpdate
  else
  begin
    GetActiveRecBuf(b);
    InternalAddRecord(b, False);
  end;
  if FFileName <> '' then
    SaveToDisk;
end;

procedure TTextDataSet.InternalAddRecord(Buffer: Pointer; Append: Boolean);
var
  b: PRecordData;
  r: TTextRecord;

begin
  if not GetActiveRecBuf(b) then
    Exit;
  if b <> Buffer then
    raise Exception.Create('InternalAddRecord: b <> buffer');

  if Append then
    InternalLast;

  r := TTextRecord.Create(Records);
  if FCurRec >= 0 then
    r.Index := FCurRec;

  r.Data := PRecordData(AllocRecordBuffer);
  SaveRecordData(b, r.Index);
  Inc(FLastBookmark);
  r.Data^.Bookmark := FLastBookmark;
  r.Data^.BookmarkFlag := bfCurrent;
end;

procedure TTextDataSet.InternalDelete;
var
  b: PRecordData;

begin
  if not GetActiveRecBuf(b) then
    Exit;
  Records.Items[FCurRec].Free;
  if FFileName <> '' then
    SaveToDisk;
end;

function TTextDataSet.GetRecordCount: Longint;
begin
  Result := Records.Count;
end;

function TTextDataSet.GetRecNo: Longint;
begin
  UpdateCursorPos;
  if (FCurRec = -1) and (RecordCount > 0) then
    Result := 1
  else
    Result := FCurRec + 1;
end;

procedure TTextDataSet.SetRecNo(Value: Integer);
begin
  if (Value >= 0) and (Value < Records.Count) then
  begin
    FCurRec := Value - 1;
    Resync([]);
  end;
end;

{ This procedure is used to register this component on the component palette }

procedure Register;
begin
  RegisterComponents('CoLateral', [TTextDataSet]);
end;

end.
