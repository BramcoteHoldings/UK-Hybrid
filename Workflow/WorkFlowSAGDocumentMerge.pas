unit WorkFlowSAGDocumentMerge;
(*
  WorkFlow Slater and Gordon Merge Type

  This is a merge type that executes an application passing the documnet
  Name, there is no need for data, or parties in this method. there is
  one property, which when set to true means that axiom will put up a
  wait form and quitely wait for the called application to finish.

  Use this class as a template for creating merge types that require
  properties, this one though only having one property can very
  eaisaly have more properties by changing TSAGMergeProperties and the
  respective arrays.

  Mathew Dredge, Aug-Sep 2002
 *)
 
interface

uses Classes, SysUtils,
     WorkFlowDocumentMerge;

type
  TSAGMergeProperties = (sagExecutableLocation,sagWaitAppExit);

  TSAGMergeDocument = class(TMergeDocument)
  private
    class function GetPropertyIndex(AProperty: String): TSAGMergeProperties;
  protected
    function GenerateDataFile(): boolean; override;
    function MergeDocument(): integer;    override;
  public
    function PostProcess(AChangedDataValues: TCollection): boolean; override;
    class function ExportDescription(): String; override;
    class function Options(): TMergeOptions; override;

    class procedure LoadSettings(); override;
    class procedure SaveSettings(); override;

    class function NumberOfProperties(): Integer; override;
    class function PropertyType(AProperty: Integer): TMergePropertyType; override;
    class function PropertyType(AProperty: String): TMergePropertyType; override;
    class function GetPropertyName(AProperty: Integer): String; override;
    class function GetPropertyValue(AProperty: Integer): Variant; override;
    class function GetPropertyValue(AProperty: String): Variant; override;
    class procedure SetPropertyValue(AProperty: Integer; AValue: Variant); override;
    class procedure SetPropertyValue(AProperty: String; AValue: Variant); override;

  end;

function Win32Error(): String;

implementation

uses
  MiscFunc, Dialogs, ShellAPI, Windows, WaitFormAppStop, Controls;

var
  TSAGPropertyNames: array  [TSAGMergeProperties] of String =
    ('Executable Location','Wait For App to Exit');
  TSAGPropertyTypes: array  [TSAGMergeProperties] of TMergePropertyType =
    (mptFilePath, mptBoolean);
  TSAGPropertyValues: array [TSAGMergeProperties] of Variant;

// format win32 error from the system string list..
function Win32Error(): String;
var
  LMsgBuf: Array[0..2000] of Char;
begin
  FormatMessage(
    FORMAT_MESSAGE_FROM_SYSTEM,
    nil,
    GetLastError(),
    0, // Default language
    LMsgBuf,
    2000,
    nil);
  Result := String(LMsgBuf);
end;
{ TSAGMergeDocument }



class function TSAGMergeDocument.ExportDescription: String;
begin
  Result := 'Slater & Gordon Precedents';
end;

function TSAGMergeDocument.GenerateDataFile: boolean;
begin
  Result := False;
end;

class function TSAGMergeDocument.GetPropertyIndex(AProperty: String): TSAGMergeProperties;
var
  i: TSAGMergeProperties;
begin
  Result := sagExecutableLocation;
  for i := Low(TSAGMergeProperties) to High(TSAGMergeProperties) do
  begin
    if(TSAGPropertyNames[i] = AProperty) then
    begin
      Result := i;
      break;
    end;
  end;
end;

class function TSAGMergeDocument.GetPropertyName(AProperty: Integer): String;
begin
  Result := TSAGPropertyNames[TSAGMergeProperties(AProperty)];
end;

class function TSAGMergeDocument.GetPropertyValue(AProperty: Integer): Variant;
begin
  Result := TSAGPropertyValues[TSAGMergeProperties(AProperty)];
end;

class function TSAGMergeDocument.GetPropertyValue(AProperty: String): Variant;
begin
  Result := TSAGPropertyValues[GetPropertyIndex(AProperty)];
end;

class procedure TSAGMergeDocument.LoadSettings();
var
  i: TSAGMergeProperties;
begin
  for i := Low(TSAGMergeProperties) to High(TSAGMergeProperties) do
  begin
    case TSAGPropertyTypes[i] of
      mptFilePath,
      mptPath,
      mptString:  TSAGPropertyValues[i] := GlobalSettingLoadString (C_WKF,C_WORKFLOW,'SAGMERGE_' + TSAGPropertyNames[i]);
      mptInteger: TSAGPropertyValues[i] := GlobalSettingLoadInteger(C_WKF,C_WORKFLOW,'SAGMERGE_' + TSAGPropertyNames[i]);
      mptBoolean: TSAGPropertyValues[i] := GlobalSettingLoadBoolean(C_WKF,C_WORKFLOW,'SAGMERGE_' + TSAGPropertyNames[i]);
    end;
  end;
end;

function TSAGMergeDocument.MergeDocument: integer;
var
  LParam: String;
  LStartupInfo: TStartupInfo;
  LProcessInfo: TProcessInformation;
begin
  LParam  := '"' + String(TSAGPropertyValues[sagExecutableLocation]) + '" "' +
             TemplateName + '"';

  ZeroMemory(@LStartupInfo, SizeOf(TStartupInfo));
  ZeroMemory(@LProcessInfo, SizeOf(TProcessInformation));
  LStartupInfo.cb := SizeOf(TStartupInfo);
  LStartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  LStartupInfo.wShowWindow := SW_SHOWNORMAL;

  if(CreateProcess(nil,PChar(LParam),nil,nil,False,0,nil,nil,LStartupInfo,LProcessInfo)) then
  begin
    if(TSAGPropertyValues[sagWaitAppExit]) then
      Result := WaitForProcessToFinish(nil,LProcessInfo.hProcess,ExportDescription + ' - ' + TemplateName)
    else
      Result := mrOk;
  end else
  begin
    MessageDlg('An error occured while trying to execute ''' + TSAGPropertyValues[sagExecutableLocation] + ''''#13#10 + Win32Error(), mtError, [mbOK], 0);
    Result := mrCancel;
  end;
end;

class function TSAGMergeDocument.NumberOfProperties: Integer;
begin
  Result := Length(TSAGPropertyNames);
end;

class function TSAGMergeDocument.PropertyType(AProperty: Integer): TMergePropertyType;
begin
  Result := TSAGPropertyTypes[TSAGMergeProperties(AProperty)];
end;

class function TSAGMergeDocument.PropertyType(AProperty: String): TMergePropertyType;
begin
  Result := TSAGPropertyTypes[GetPropertyIndex(AProperty)];
end;

class procedure TSAGMergeDocument.SetPropertyValue(AProperty: Integer; AValue: Variant);
begin
  TSAGPropertyValues[TSAGMergeProperties(AProperty)] := AValue;
end;

class procedure TSAGMergeDocument.SaveSettings();
var
  i: TSAGMergeProperties;
begin
  for i := Low(TSAGMergeProperties) to High(TSAGMergeProperties) do
  begin
    case TSAGPropertyTypes[i] of
      mptFilePath,
      mptPath,
      mptString:  SettingSave(C_WKF,C_WORKFLOW,'SAGMERGE_' + TSAGPropertyNames[i], String(TSAGPropertyValues[i]));
      mptInteger: SettingSave(C_WKF,C_WORKFLOW,'SAGMERGE_' + TSAGPropertyNames[i], Integer(TSAGPropertyValues[i]));
      mptBoolean: SettingSave(C_WKF,C_WORKFLOW,'SAGMERGE_' + TSAGPropertyNames[i], Boolean(TSAGPropertyValues[i]));
    end;
  end;
end;

class procedure TSAGMergeDocument.SetPropertyValue(AProperty: String;
  AValue: Variant);
begin
  TSAGPropertyValues[GetPropertyIndex(AProperty)] := AValue;
end;

class function TSAGMergeDocument.Options: TMergeOptions;
begin
  Result := [];
end;

function TSAGMergeDocument.PostProcess(AChangedDataValues: TCollection): boolean;
begin
  Result := True;
end;

initialization
 // RegisterWorkflowMergeType(TSAGMergeDocument);
end.
