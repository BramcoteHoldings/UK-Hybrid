unit GsString;

interface

uses
  Classes;

type
  TGSStringList = class(TComponent)
  private
    FStrings: TStrings;
    function  GetCount: integer;
    procedure SetStrings(AStrings: TStrings);
  protected
  public
    property Count: integer read GetCount;

    constructor Create( AOwner: TComponent ); override;
    destructor Destroy; override;

    Procedure Clear;
    Procedure LoadFromStream(AStream: TStream);
    Procedure SaveToStream(AStream: TStream);
  published
    property Strings: TStrings read FStrings write SetStrings;
  end;

procedure Register;

implementation

constructor TGSStringList.Create( AOwner: TComponent );
begin
  inherited Create( AOwner );
  FStrings := TStringList.Create;
end;

destructor TGSStringList.Destroy;
begin
  FStrings.Free;
  inherited Destroy;
end;

function TGSStringList.GetCount: integer;
begin
  Result := FStrings.Count;
end;

procedure TGSStringList.SetStrings(AStrings: TStrings);
begin
  FStrings.Assign(AStrings);
end;

Procedure TGSStringList.Clear;
begin
  FStrings.Clear;
end;

Procedure TGSStringList.LoadFromStream(AStream: TStream);
begin
  FStrings.LoadFromStream(AStream);
end;

Procedure TGSStringList.SaveToStream(AStream: TStream);
begin
  FStrings.SaveToStream(AStream);
end;

procedure Register;
begin
  RegisterComponents('CoLateral', [TGSStringList]);
end;

end.
 