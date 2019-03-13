unit StreamFilters;

// (C) Lasse Vågsæther Karlsen, 1998
// lasse.karlsen@c2i.net

interface

uses
	Classes;

type
{ TStringStream class }
	TStringStream = class(TStream)
		FString		: string;
		FPosition	: Integer;
	public
		constructor Create(S: string);
		destructor Destroy; override;

		function Read(var Buffer; Count: LongInt): LongInt; override;
		function Write(const Buffer; Count: Longint): Longint; override;
		function Seek(Offset: Longint; Origin: Word): Longint; override;
	end; // class TStringStream

{ TBasicStreamFilter class }
	TBasicStreamFilter	= class(TStream)
		FCoreStream	: TStream;
		FFreeCore		: Boolean;
	public
		constructor Create(ACoreStream: TStream; DoFreeCore: Boolean=FALSE);
		destructor Destroy; override;

		property CoreStream: TStream read FCoreStream;
		property FreeCore: Boolean read FFreeCore write FFreeCore;

		function Read(var Buffer; Count: LongInt): LongInt; override;
		function Write(const Buffer; Count: Longint): Longint; override;
		function Seek(Offset: Longint; Origin: Word): Longint; override;
	end; // class TBasicStreamFilter

{ TPasstruFilter class }
	TPasstruFilter = class(TBasicStreamFilter)
	public
		constructor Create(ACoreStream: TStream; DoFreeCore: Boolean=FALSE);
		destructor Destroy; override;

		function Read(var Buffer; Count: LongInt): LongInt; override;
		function Write(const Buffer; Count: Longint): Longint; override;
		function Seek(Offset: Longint; Origin: Word): Longint; override;
	end; // class TPasstruFilter

{ TPartialStream class }
	TPartialStream = class(TBasicStreamFilter)
	private
		FStartPosition	: Integer;
		FLength					: Integer;
	public
		constructor Create(ACoreStream: TStream;
			DoFreeCore: Boolean=FALSE;
			AStartPosition: Integer=0;
			ALength: Integer=-1);
		destructor Destroy; override;

		function Read(var Buffer; Count: LongInt): LongInt; override;
		function Seek(Offset: Longint; Origin: Word): Longint; override;

		property Length: Integer read FLength;
		property StartPosition: Integer read FStartPosition;
	end; // class TPartialStream

implementation

resourcestring
	SUnableToRead		= 'Cannot read from this type of stream filter [%s]';
	SUnableToWrite	= 'Cannot write to this type of stream filter [%s]';
	SUnableToSeek		= 'Cannot seek on this type of stream filter [%s]';

{ TBasicStreamFilter }

constructor TBasicStreamFilter.Create(ACoreStream: TStream; DoFreeCore: Boolean);
begin
	inherited Create;
	FFreeCore		:= DoFreeCore;
	FCoreStream	:= ACoreStream;
end; // constructor TBasicStreamFilter.Create

destructor TBasicStreamFilter.Destroy;
begin
	if FreeCore then
		FCoreStream.Free;
	inherited;
end; // destructor TBasicStreamFilter.Destroy

function TBasicStreamFilter.Read(var Buffer; Count: Integer): LongInt;
begin
	raise EStreamError.CreateFmt(SUnableToRead, [TBasicStreamFilter.ClassName]);
end; // function TBasicStreamFilter.Read

function TBasicStreamFilter.Seek(Offset: Integer; Origin: Word): Longint;
begin
	raise EStreamError.CreateFmt(SUnableToSeek, [TBasicStreamFilter.ClassName]);
end; // function TBasicStreamFilter.Seek

function TBasicStreamFilter.Write(const Buffer; Count: Integer): Longint;
begin
	raise EStreamError.CreateFmt(SUnableToWrite, [TBasicStreamFilter.ClassName]);
end; // function TBasicStreamFilter.Write

{ TPasstruFilter }

constructor TPasstruFilter.Create(ACoreStream: TStream; DoFreeCore: Boolean);
begin
	inherited Create(ACoreStream, DoFreeCore);
end; // constructor TPasstruFilter.Create

destructor TPasstruFilter.Destroy;
begin
	inherited Destroy;
end; // destructor TPasstruFilter.Destroy

function TPasstruFilter.Read(var Buffer; Count: Integer): LongInt;
begin
	Result := CoreStream.Read(Buffer, Count);
end; // function TPasstruFilter.Read

function TPasstruFilter.Seek(Offset: Integer; Origin: Word): Longint;
begin
	Result := CoreStream.Seek(Offset, Origin);
end; // function TPasstruFilter.Seek

function TPasstruFilter.Write(const Buffer; Count: Integer): Longint;
begin
	Result := CoreStream.Write(Buffer, Count);
end; // function TPasstruFilter.Write

{ TPartialStream }

constructor TPartialStream.Create(ACoreStream: TStream;
	DoFreeCore: Boolean;
	AStartPosition, ALength: Integer);
begin
	inherited Create(ACoreStream, DoFreeCore);
	FStartPosition	:= AStartPosition;
	FLength					:= ALength;
	CoreStream.Seek(FStartPosition, soFromBeginning);
end; // constructor TPartialStream.Create

destructor TPartialStream.Destroy;
begin
	inherited Destroy;
end; // destructor TPartialStream.Destroy

function TPartialStream.Read(var Buffer; Count: Integer): LongInt;
begin
	Result := CoreStream.Read(Buffer, Count);
end; // function TPartialStream.Read

function TPartialStream.Seek(Offset: Integer; Origin: Word): Longint;

	function SeekFromBeginning(Offset: Integer): Integer;
	begin
		if (Offset < 0) then
			Offset := 0
		else if (Offset > Length) then
			Offset := Length;
		Result := CoreStream.Seek(StartPosition + Offset, soFromBeginning);
	end; // function SeekFromBeginning

	function SeekFromCurrent(Offset: Integer): Integer;
	begin
		Result := SeekFromBeginning(Position + Offset);
	end; // function SeekFromCurrent

	function SeekFromEnd(Offset: Integer): Integer;
	begin
		Result := SeekFromBeginning(Length + Offset);
	end; // function SeekFromEnd

begin
	case Origin of
		soFromBeginning	: Result := SeekFromBeginning(Offset);
		soFromCurrent		: Result := SeekFromCurrent(Offset);
		soFromEnd				: Result := SeekFromEnd(Offset);
	else
		Result := 0;
	end; // case Origin
	if (Result < StartPosition) then
		Result := 0
	else if (Result >= (StartPosition + Length)) then
		Result := Length
	else
		Result := (Result - StartPosition);
end; // function TPartialStream.Seek

{ TStringStream }

constructor TStringStream.Create(S: string);
begin
	inherited Create;
	FString		:= S;
	FPosition	:= 0;
end; // constructor TStringStream.Create

destructor TStringStream.Destroy;
begin
	inherited Destroy;
end; // destructor TStringStream.Destroy

function TStringStream.Read(var Buffer; Count: Integer): LongInt;
var
	S	: string;
begin
	S := Copy(FString, Position + 1, Count);
	Move(S[1],Buffer,Length(S));
	Inc(FPosition, Length(S));
	Result := Length(S);
end; // function TStringStream.Read

function TStringStream.Seek(Offset: Integer; Origin: Word): Longint;

	procedure SeekFromBeginning(Offset: Integer);
	begin
		if (Offset < 0) then
			Offset := 0
		else if (Offset > Length(FString)) then
			Offset := Length(FString);
		FPosition := Offset;
	end; // procedure SeekFromBeginning

	procedure SeekFromCurrent(Offset: Integer);
	begin
		SeekFromBeginning(Position + Offset);
	end; // procedure SeekFromCurrent

	procedure SeekFromEnd(Offset: Integer);
	begin
		SeekFromBeginning(Length(FString) + Offset);
	end; // procedure SeekFromEnd

begin
	case Origin of
		soFromBeginning	: SeekFromBeginning(Offset);
		soFromCurrent		: SeekFromCurrent(Offset);
		soFromEnd				: SeekFromEnd(Offset);
	end; // case Origin
	Result := FPosition;
end; // function TStringStream.Seek

function TStringStream.Write(const Buffer; Count: Integer): Longint;
var
	S	: string;
begin
	SetLength(S, Count);
	Move(Buffer, S[1], Count);
	FString := Copy(FString, 1, FPosition) + S + Copy(FString, FPosition + Length(S), Length(FString));
	Inc(FPosition, Length(S));
	Result := Length(S);
end; // function TStringStream.Write

end. // unit StreamFilters
