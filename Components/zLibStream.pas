unit zLibStream;

// (C) Lasse Vågsæther Karlsen, 1998
// lasse.karlsen@c2i.net

interface

uses
	Math, SysUtils, zLib, Classes, StreamFilters{, AuxFuncs};

type
	TCompressionLevel				= (clNone, clBestSpeed, clBestCompression);

{ TBasiczLibStream class }
	TBasiczLibStream				= class(TBasicStreamFilter)
	private
		Fzs								: z_stream;
		FInputBuffer			: PChar;
		FOutputBuffer			: PChar;
		FBufferSize				: uInt;
		FPosition					: Integer;
		procedure ResetFzs; virtual;
		function GetTotalInput: Integer; virtual;
		function GetTotalOutput: Integer; virtual;
		function GetRatio: Real; virtual; abstract;
	public
		constructor Create(DestinationStream: TStream;
			DoFreeCore: Boolean=FALSE;
			ABufferSize: Integer=32768);
		destructor Destroy; override;

		property BufferSize: uInt read FBufferSize;
		property TotalInput: Integer read GetTotalInput;
		property TotalOutput: Integer read GetTotalOutput;
		property CompressionRatio: Real read GetRatio;
	end; // class TBasiczLibStream

{ TzLibCompressionStream class }
	TzLibCompressionStream	= class(TBasiczLibStream)
	private
		FCompressionLevel	: TCompressionLevel;
		procedure FlushBuffers;
		function CompressBuffer(LastBuffer: Boolean): Integer;
		function LazyFill(Source: PChar; Count: Integer): Integer;
		function GetRatio: Real; override;
	public
		constructor Create(DestinationStream: TStream;
			DoFreeCore: Boolean=FALSE;
			ACompressionLevel: TCompressionLevel=clBestCompression;
			ABufferSize: Integer=32768);
		destructor Destroy; override;

		function Seek(Offset: Longint; Origin: Word): Longint; override;
		function Write(const Buffer; Count: LongInt): LongInt; override;
		property CompressionLevel: TCompressionLevel read FCompressionLevel;
	end; // class TzLibCompressionStream

{ TzLibDecompressionStream class }
	TzLibDecompressionStream	= class(TBasiczLibStream)
	private
		PrivateBuffer		: PChar;
		InPrivateBuffer	: Integer;
		PrivateHead			: PChar;
		ZResult					: Integer;
		function GetRatio: Real; override;
	public
		constructor Create(SourceStream: TStream;
			DoFreeCore: Boolean=FALSE;
			ABufferSize: Integer=32768);
		destructor Destroy; override;

		function Seek(Offset: Longint; Origin: Word): Longint; override;
		function Read(var Buffer; Count: LongInt): LongInt; override;
	end; // class TzLibDecompressionStream

implementation

resourcestring
	SCannotCreateZS = 'Cannot initialize z_stream structure [%s]';

{ TBasiczLibStream }

constructor TBasiczLibStream.Create(
	DestinationStream	: TStream;
	DoFreeCore				: Boolean;
	ABufferSize				: Integer);
begin
	// Initialize the reference members
	FBufferSize				:= ABufferSize;
	FPosition					:= 0;

	// Initalize the stream filter
	inherited Create(DestinationStream, DoFreeCore);

	// Allocate memory
	GetMem(FInputBuffer, BufferSize);
	GetMem(FOutputBuffer, BufferSize);

	// Initialize the compression engine structure
	FillChar(Fzs, SizeOf(Fzs), #0);
	Fzs.next_in		:= FInputBuffer;
	Fzs.next_out	:= FOutputBuffer;
	Fzs.avail_out	:= BufferSize;
end; // constructor TBasiczLibStream.Create

destructor TBasiczLibStream.Destroy;
begin
	FreeMem(FInputBuffer, BufferSize);
	FreeMem(FOutputBuffer, BufferSize);

	inherited Destroy;
end; // destructor TBasiczLibStream.Destroy

function TBasiczLibStream.GetTotalInput: Integer;
begin
	Result := Fzs.total_in;
end; // function TBasiczLibStream.GetTotalInput

function TBasiczLibStream.GetTotalOutput: Integer;
begin
	Result := Fzs.total_out;
end; // function TBasiczLibStream.GetTotalOutput

procedure TBasiczLibStream.ResetFzs;
begin
	FillChar(Fzs, SizeOf(Fzs), #0);
	Fzs.next_in		:= FInputBuffer;
	Fzs.next_out	:= FOutputBuffer;
	Fzs.avail_out	:= BufferSize;
end;

{ TzLibCompressionStream }

constructor TzLibCompressionStream.Create(
	DestinationStream	: TStream;
	DoFreeCore				: Boolean;
	ACompressionLevel	: TCompressionLevel;
	ABufferSize				: Integer);
const
	zLibLevels	: array[TCompressionLevel] of Integer = (
		Z_NO_COMPRESSION,				// clNone
		Z_BEST_SPEED,						// clBestSpeed
		Z_BEST_COMPRESSION			// clBestCompression
	);
begin
	inherited Create(DestinationStream, DoFreeCore, ABufferSize);
	FCompressionLevel	:= ACompressionLevel;

	// Call the initialization routine for the compression engine
	deflateInit(Fzs, zLibLevels[ACompressionLevel]);
end; // constructor TzLibCompressionStream.Create

destructor TzLibCompressionStream.Destroy;
begin
	// Make sure everything is compressed
	FlushBuffers;

	// Clean up the decompression structure
	deflateEnd(Fzs);
	inherited Destroy;
end; // destructor TzLibCompressionStream.Destroy

function TzLibCompressionStream.CompressBuffer(LastBuffer: Boolean): Integer;
begin
	// Call the compression routine
	if (LastBuffer) then
		Result := deflate(Fzs, Z_FINISH)
	else
		Result := deflate(Fzs, Z_STREAM_END);

	// Check if the output buffer is full
	if (Fzs.avail_out = 0) or (Result = Z_STREAM_END) then
	begin
		CoreStream.Write(FOutputBuffer^, (BufferSize - Fzs.avail_out));
		Fzs.avail_out	:= BufferSize;
		Fzs.next_out	:= FOutputBuffer;
	end; // if (Fzs.avail_out = 0)
end; // function TzLibCompressionStream.CompressBuffer

procedure TzLibCompressionStream.FlushBuffers;
var
	ZResult	: Integer;
begin
	repeat
		ZResult := CompressBuffer(TRUE);
	until (ZResult <> Z_OK) or ((Fzs.avail_in = 0) and (Fzs.avail_out = BufferSize));
end; // procedure TzLibCompressionStream.FlushBuffers

function TzLibCompressionStream.LazyFill(Source: PChar; Count: Integer): Integer;
var
	ToCopy	: Integer;
begin
	// Only copy more data to the input buffer if it is completely depleted
	if (Fzs.avail_in = 0) then
	begin
		Fzs.next_in := FInputBuffer;
		// Calculate how much we can copy
		ToCopy := Min(BufferSize, Count);

		// Now copy the data and adjust the compression structure
		Move(Source^, Fzs.next_in^, ToCopy);
		Fzs.avail_in := ToCopy;
		Result := ToCopy;
	end else begin
		Result := 0;
	end; // if (Fzs.avail_in = 0)
end;

function TzLibCompressionStream.Write(const Buffer; Count: Integer): LongInt;
var
	P				: PChar;
	ZResult	: Integer;
	Written	: Integer;
begin
	P				:= @Buffer;
	Result	:= 0;

	// Loop while we have more data to process
	while Count > 0 do
	begin
		// Write data to the input buffer (if possible)
		Written := LazyFill(P, Count);

		// Adjust the variables
		Inc(P, Written);
		Inc(Result, Written);
		Dec(Count, Written);

		// Now compress the input buffer
		ZResult := CompressBuffer(FALSE);
		if (ZResult <> Z_OK) then
			Break;
	end; // while Count > 0
	Inc(FPosition, Result);
end; // function TzLibCompressionStream.Write

function TzLibCompressionStream.Seek(Offset: Integer; Origin: Word): Longint;

	procedure SeekFromBeginning(Offset: Integer);
	var
		Buffer	: array[0..2047] of Byte;
	begin
		CoreStream.Seek(0, soFromBeginning);
		FPosition := 0;
		FillChar(Buffer, SizeOf(Buffer), #0);
		while Offset > 0 do
		begin
			if Offset < SizeOf(Buffer) then
			begin
				Write(Buffer, Offset);
				Offset := 0;
			end else begin
				Write(Buffer, SizeOf(Buffer));
				Dec(Offset, SizeOf(Buffer));
			end; // if Offset < SizeOf(Buffer)
		end; // while Offset > 0
	end; // procedure SeekFromBeginning

	procedure SeekFromCurrent(Offset: Integer);
	var
		Buffer	: array[0..2047] of Byte;
	begin
		FillChar(Buffer, SizeOf(Buffer), #0);
		while Offset > 0 do
		begin
			if Offset < SizeOf(Buffer) then
			begin
				Write(Buffer, Offset);
				Offset := 0;
			end else begin
				Write(Buffer, SizeOf(Buffer));
				Dec(Offset, SizeOf(Buffer));
			end; // if Offset < SizeOf(Buffer)
		end; // while Offset > 0
	end; // procedure SeekFromCurrent

	procedure SeekFromEnd(Offset: Integer);
	begin
		SeekFromCurrent(Offset);
	end; // procedure SeekFromEnd

begin
	case Origin of
		soFromBeginning	: SeekFromBeginning(Offset);
		soFromCurrent		: SeekFromCurrent(Offset);
		soFromEnd				: SeekFromEnd(Offset);
	end; // case Origin
	Result := FPosition;
end; // function TzLibCompressionStream.Seek

function TzLibCompressionStream.GetRatio: Real;
begin
	if (TotalOutput = 0) then
		Result := 0.0
	else
		Result := (TotalOutput / TotalInput);
end;

{ TzLibDecompressionStream }

constructor TzLibDecompressionStream.Create(
	SourceStream	: TStream;
	DoFreeCore		: Boolean;
	ABufferSize		: Integer);
begin
	inherited Create(SourceStream, DoFreeCore, ABufferSize);

	// Call the initialization routine for the decompression engine
	ZResult := inflateInit(Fzs);

	// Allocate local read buffer
	GetMem(PrivateBuffer, ABufferSize);
	PrivateHead := PrivateBuffer;
	InPrivateBuffer := 0;

	if (ZResult <> Z_OK) then
		raise EStreamError.CreateFmt(SCannotCreateZS, [ClassName]);
end; // constructor TzLibDecompressionStream.Create

destructor TzLibDecompressionStream.Destroy;
begin
	inflateEnd(Fzs);
	FreeMem(PrivateBuffer, BufferSize);
	inherited Destroy;
end; // destructor TzLibDecompressionStream.Destroy

function TzLibDecompressionStream.GetRatio: Real;
begin
	if (TotalOutput = 0) then
		Result := 0.0
	else
		Result := (TotalInput / TotalOutput);
end;

function TzLibDecompressionStream.Read(
	var Buffer;
	Count				: Integer): LongInt;
var
	P				: PChar;
	ToCopy	: uInt;
begin
	P				:= @Buffer;
	Result	:= 0;

	// Loop while we have more data to process
	while (Count > 0) and ((ZResult = Z_OK) or ((ZResult = Z_STREAM_END) and (InPrivateBuffer > 0))) do
	begin
		if (InPrivateBuffer > 0) then
		begin
			ToCopy := Min(Count, InPrivateBuffer);
			Move(PrivateHead^, P^, ToCopy);
			Inc(PrivateHead, ToCopy);
			Dec(InPrivateBuffer, ToCopy);

			Inc(P, ToCopy);
			Dec(Count, ToCopy);
			Inc(Result, ToCopy);
		end // if (InPrivateBuffer > 0)
		else begin
			// Check if the stream can accept more input for compression
			if (Fzs.avail_in = 0) then
			begin
				Fzs.next_in  := FInputBuffer;
				Fzs.avail_in := CoreStream.Read(Fzs.next_in^, BufferSize);
			end;

			// Now call the decompression routine
			if (Fzs.avail_in = 0) then
				ZResult := inflate(Fzs, Z_FINISH)
			else
				ZResult := inflate(Fzs, Z_STREAM_END);

			// Check if the output buffer is full
			if (Fzs.avail_out = 0) or (ZResult = Z_STREAM_END) then
			begin
				// Calculate how much to copy
				ToCopy := (BufferSize - Fzs.avail_out);

				// Copy to local buffer
				Move(FOutputBuffer^, PrivateBuffer^, ToCopy);
				PrivateHead := PrivateBuffer;
				InPrivateBuffer := ToCopy;

				// Reset zlib data
				Fzs.avail_out := BufferSize;
				Fzs.next_out := FOutputBuffer;
			end; // if (Fzs.avail_out = 0)
		end; // if (InPrivateBuffer > 0) ... else
	end; // while Count > 0
	Inc(FPosition, Result);
end; // function TzLibDecompressionStream.Read

function TzLibDecompressionStream.Seek(Offset: Integer; Origin: Word): Longint;

	procedure DeltaSeek(Offset: Integer);
	var
		Buffer		: array[0..2047] of Byte;
		ToRead		: Integer;
	begin
		while FPosition < Offset do
		begin
			ToRead := Min(SizeOf(Buffer), Offset-FPosition);
			if (Read(Buffer, ToRead) = 0) then
				Break;
		end; // while FPosition < Offset
	end; // procedure DeltaSeek

	procedure SeekFromBeginning(Offset: Integer);
	begin
		CoreStream.Seek(0, soFromBeginning);
		inflateEnd(Fzs);
		ResetFzs;
		ZResult := inflateInit(Fzs);
		FPosition := 0;
		DeltaSeek(Offset);
	end; // procedure SeekFromBeginning

	procedure SeekFromCurrent(Offset: Integer);
	begin
		if Offset < 0 then
			SeekFromBeginning(Position + Offset)
		else
			DeltaSeek(Offset);
	end; // procedure SeekFromCurrent

	procedure SeekFromEnd(Offset: Integer);
	var
		Pos	: Integer;
	begin
		if (Offset = 0) then
		begin
			repeat
				Pos := FPosition;
				DeltaSeek(Pos + 2048);
			until (Pos = FPosition);
		end
		else begin
			Offset := Size + Offset;
			if Offset > Position then
				SeekFromCurrent(Offset - Position)
			else
				SeekFromBeginning(Offset);
		end;
	end; // procedure SeekFromEnd

begin
	case Origin of
		soFromBeginning	: SeekFromBeginning(Offset);
		soFromCurrent		: SeekFromCurrent(Offset);
		soFromEnd				: SeekFromEnd(Offset);
	end; // case Origin
	Result := FPosition;
end; // function TzLibDecompressionStream.Seek

end. // unit zLibStream

