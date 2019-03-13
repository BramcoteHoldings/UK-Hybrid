unit BHLStrUtils;

interface

uses
  Classes;

function YNToBoolean(AYNString: String): Boolean;
function BooleanToYN(ABooleanValue: Boolean): String;
Function FilterPartsToFilter(AFilterParts: array of string): String; overload;
Function FilterPartsToFilter(AFilterParts: TStrings): String; overload;

{ Make StrStartsWith and StrEndsWith when more time available. }

implementation

Uses
  StrUtils, SysUtils, JCLStrings;

const
  BoolToYN : array [Boolean] of string = ('N', 'Y');

function YNToBoolean(AYNString: String): Boolean;
begin
  Result := Uppercase(AYNString) = 'Y';
end;

function BooleanToYN(ABooleanValue: Boolean): String;
begin
  Result := BoolToYN[ABooleanValue];
end;

Function FilterPartsToFilter(AFilterParts: TStrings): String;
{ Assume non empty list of filters.
Assume each item in the array is a non-empty string. }

var
  i: Integer;

  function HandleLike: String;
  begin
    if StrLeft(AFilterParts.Values[AFilterParts.Names[i]], length('like ')) = 'like ' then
      // The 'like' and the '%' chars are built into the value string.
      HandleLike := AFilterParts.Names[i] + ' ' + AFilterParts.Values[AFilterParts.Names[i]]
    else
      HandleLike := AFilterParts.Names[i] + ' = ' + AFilterParts.Values[AFilterParts.Names[i]]
  end;

begin
  Result := '';
  if (AFilterParts <> nil) and (AFilterParts.Count > 0) then
    for i := 0 to AFilterParts.Count-1 do
    begin
      if Result <> '' then
        Result := Result + ' and ' + HandleLike
{        if StrLeft(AFilterParts.Values[AFilterParts.Names[i]], length('like ')) = 'like ' then
          Result := Result + ' and ' + AFilterParts.Names[i] + AFilterParts.Values[AFilterParts.Names[i]]
        else
          Result := Result + ' and ' + AFilterParts.Names[i] + ' = ' + AFilterParts.Values[AFilterParts.Names[i]]
}      else
        Result := HandleLike;
    end;
end;

// Not tested. Might get rid of this one.
Function FilterPartsToFilter(AFilterParts: array of string): String;
{ Assume non empty list of filters.
Assume each item in the array is a non-empty string. }
var
  Part: String;
begin
  if Length(AFilterParts) = 0 then
    Result := ''
  else begin
    for Part in AFilterParts do
      if Result <> '' then
        Result := Result + ' and ' + Part
      else
        Result := Part;
  end;
end;

end.
