unit MiscClasses;

interface

uses
  Classes, Windows, Dialogs, SysUtils, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TPrecInfo = record
    PrecCategory: string;
    PrecPath: string;
    PrecSavePath: string;
    PrecDescription: string;
    WorkflowType: string;
    ControlMacro: string;
    AfterMacro: string;
    MainDataFile: string;
    MergeFile: string;
    DataFilePath: string;
    PrecClassification: string;
  end;

type
  TValueObject = class
    private
      FIntegerValue: Integer;
      FStringValue: string;
      function GetIntegerValue: Integer;
      function GetStringValue: string;
      procedure SetIntegerValue(Value: Integer);
      procedure SetStringValue(Value: string);
    public
      constructor Create(Value: Integer); overload;
      constructor Create(Value: string); reintroduce; overload;
      property AsInteger: Integer read GetIntegerValue write SetIntegerValue;
      property AsString: string read GetStringValue write SetStringValue;
  end;

  // this is purely a container class for merge objects and should be used with TStringList
  TMergeObject = class
    public
      MultipleFilesFromList: Boolean;
      FieldNames: TStringList;
      FieldValues: TStringList;
      constructor Create(MultipleFiles: Boolean = True);
      destructor Destroy; override;
  end;

implementation

constructor TValueObject.Create(Value: Integer);
begin
  inherited Create;
  FIntegerValue := Value;
  FStringValue := IntToStr(Value);
end;


constructor TValueObject.Create(Value: string);
begin
  inherited Create;
  FStringValue := Value;
  FIntegerValue := StrToIntDef(Value, 0);
end;


function TValueObject.GetIntegerValue: Integer;
begin
  Result := FIntegerValue;
end;


function TValueObject.GetStringValue: string;
begin
  Result := FStringValue;
end;


procedure TValueObject.SetIntegerValue(Value: Integer);
begin
  FIntegerValue := Value;
  FStringValue := IntToStr(Value);
end;


procedure TValueObject.SetStringValue(Value: string);
begin
  FStringValue := Value;
  FIntegerValue := StrToIntDef(Value, 0);
end;

constructor TMergeObject.Create(MultipleFiles: Boolean = True);
begin
  inherited Create;
  MultipleFilesFromList := MultipleFiles;
  FieldNames := TStringList.Create;
  FieldValues := TStringList.Create;
end;

destructor TMergeObject.Destroy;
begin
  FieldNames.Free;
  FieldValues.Free;
  inherited Destroy;
end;


end.
