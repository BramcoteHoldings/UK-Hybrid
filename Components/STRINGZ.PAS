unit stringz;
{  TStringz v1.0 by Daniel Parnell   20th November 1996

   This component allows lists of strings to be included in Delphi application
  quickly and easily.

  Properties:
              Strings  - The lists of strings stored in a TStringList

  Events: None

  Procedures/Functions: None

}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TStringz = class(TComponent)
  private
    { Private declarations }
    fStrings : TStringList;

    procedure SetStrings(value : TStringList);
  protected
    { Protected declarations }
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
  public
    { Public declarations }
    procedure GetSection(sect : string; list : TStringList);
    function SectionExists(sect : string):boolean;
    function GetValue(sect,key : string):string;
  published
    { Published declarations }
    property Strings : TStringList read fStrings write SetStrings;
  end;

procedure Register;

implementation

constructor TStringz.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);

  fStrings:=TStringList.Create;
end;

destructor TStringz.Destroy;
begin
  fStrings.Free;

  inherited Destroy;
end;

procedure TStringz.SetStrings(value : TStringList);
begin
  if value<>nil then
    fStrings.Assign(value)
  else
    fStrings.Clear;
end;

procedure TStringz.GetSection(sect : string; list : TStringList);
var
  i,j : integer;

begin
  sect:=UpperCase(sect);
  list.clear;

  if SectionExists(sect) then
    for i:=0 to strings.count-1 do
      if copy(strings[i],1,1)='[' then
        if UpperCase(copy(strings[i],2,length(strings[i])-2))=sect then
          begin
            j:=i+1;
            while (j<strings.count) and (copy(strings[j],1,1)<>'[') do
              begin
                list.add(strings[j]);
                inc(j);
              end;
          end;
end;

function TStringz.SectionExists(sect : string):boolean;
var
  i : integer;

begin
  sect:=UpperCase(sect);

  result:=FALSE;

  for i:=0 to strings.count-1 do
    if copy(strings[i],1,1)='[' then
      if UpperCase(copy(strings[i],2,length(strings[i])-2))=sect then
        begin
          result:=TRUE;
          break;
        end;
end;

function TStringz.GetValue(sect,key : string):string;
var
  list : TStringList;

begin
  list:=TStringList.Create;
  try
    GetSection(sect,list);

    result:=list.values[key];
  finally
    list.free;
  end;
end;

procedure Register;
begin
  RegisterComponents('CoLateral', [TStringz]);
end;

end.
