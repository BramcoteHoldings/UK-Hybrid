unit WorkFlowSAGTCPMerge;
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
{$DEFINE DYNAMIC_LINK}
uses Classes, SysUtils, ScktComp,
     WorkFlowDocumentMerge, StrUtils,
     JwaWtsApi32, JwaWinUser, JwaWinBase, JwaWinSock;
const
  C_SAVEPREFIX = 'TCPMERGE_';

type
  TTCPProperties = (ippIPPort,ippUseXML);

  TTCPMerge = class(TMergeDocument)
  private
    FData: TStringList;

    class function GetPropertyIndex(AProperty: String): TTCPProperties;
    function GetRemoteAddress: String;
    procedure GenerateXMLData();
    procedure GenerateCSVData();
  protected
    function GenerateDataFile(): boolean; override;
    function MergeDocument(): integer;    override;
  public
    function PostProcess(AChangedDataValues: TCollection): boolean; override;
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
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
  MiscFunc, Dialogs, ShellAPI, Windows, WaitFormAppStop, Controls,
  WorkFlowTCPCommunication, WorkFlowXML, XMLDoc, XMLIntf;

var
  TTCPPropertyNames: array  [TTCPProperties] of String =
    ('Port Number','Use XML');
  TTCPPropertyTypes: array  [TTCPProperties] of TMergePropertyType =
    (mptInteger, mptBoolean);
  TTCPPropertyValues: array [TTCPProperties] of Variant;

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

{ TTCPMerge }

class function TTCPMerge.ExportDescription: String;
begin
  Result := 'Slater & Gordon TCP/IP Precedents';
end;

function TTCPMerge.GenerateDataFile: boolean;
begin
  if(TTCPPropertyValues[ippUseXML]) then
    GenerateXMLData()
  else
    GenerateCSVData();
  Result := True;
end;

class function TTCPMerge.GetPropertyIndex(AProperty: String): TTCPProperties;
var
  i: TTCPProperties;
begin
  Result := Low(TTCPProperties);
  for i := Low(TTCPProperties) to High(TTCPProperties) do
  begin
    if(TTCPPropertyNames[i] = AProperty) then
    begin
      Result := i;
      break;
    end;
  end;
end;

class function TTCPMerge.GetPropertyName(AProperty: Integer): String;
begin
  Result := TTCPPropertyNames[TTCPProperties(AProperty)];
end;

class function TTCPMerge.GetPropertyValue(AProperty: Integer): Variant;
begin
  Result := TTCPPropertyValues[TTCPProperties(AProperty)];
end;

class function TTCPMerge.GetPropertyValue(AProperty: String): Variant;
begin
  Result := TTCPPropertyValues[GetPropertyIndex(AProperty)];
end;

class procedure TTCPMerge.LoadSettings();
var
  i: TTCPProperties;
begin
  for i := Low(TTCPProperties) to High(TTCPProperties) do
  begin
    case TTCPPropertyTypes[i] of
      mptFilePath,
      mptPath,
      mptString:  TTCPPropertyValues[i] := GlobalSettingLoadString (C_WKF,C_WORKFLOW,C_SAVEPREFIX + TTCPPropertyNames[i]);
      mptInteger: TTCPPropertyValues[i] := GlobalSettingLoadInteger(C_WKF,C_WORKFLOW,C_SAVEPREFIX + TTCPPropertyNames[i]);
      mptBoolean: TTCPPropertyValues[i] := GlobalSettingLoadBoolean(C_WKF,C_WORKFLOW,C_SAVEPREFIX + TTCPPropertyNames[i]);
    end;
  end;
end;

function TTCPMerge.GetRemoteAddress(): String;
var
  LClientAddress: PWtsClientAddress;
  LBytes: Cardinal;
begin
  if(GetSystemMetrics(SM_REMOTESESSION) > 0) then
  begin
    if(not WTSQuerySessionInformation(WTS_CURRENT_SERVER_HANDLE,WTS_CURRENT_SESSION,
                                  WTSClientAddress,Pointer(LClientAddress),LBytes)) then
    begin
      MessageDlg('Error: QuerySessionInformation'#13#10 + Win32Error(), mtError, [mbOK], 0);
      Result := '';
      Exit;
    end;

    if(LClientAddress.AddressFamily <> AF_INET) then
    begin
      MessageDlg('Error: QuerySessionInformation'#13#10'Client Address is not INET', mtError, [mbOK], 0);
      Result := '';
      Exit;
    end;
    Result := String(inet_ntoa(pin_addr(@LClientAddress.Address[2])^));
  end else
    Result := '127.0.0.1';
end;

function TTCPMerge.MergeDocument: integer;
var
  LRemoteAddress: String;
begin
  LRemoteAddress := GetRemoteAddress();
  if(LRemoteAddress = '') then
    Result := mrCancel
  else
    Result := WaitForCommunication(LRemoteAddress,TTCPPropertyValues[ippIPPort],FData);
end;

class function TTCPMerge.NumberOfProperties: Integer;
begin
  Result := Length(TTCPPropertyNames);
end;

class function TTCPMerge.PropertyType(AProperty: Integer): TMergePropertyType;
begin
  Result := TTCPPropertyTypes[TTCPProperties(AProperty)];
end;

class function TTCPMerge.PropertyType(AProperty: String): TMergePropertyType;
begin
  Result := TTCPPropertyTypes[GetPropertyIndex(AProperty)];
end;

class procedure TTCPMerge.SetPropertyValue(AProperty: Integer; AValue: Variant);
begin
  TTCPPropertyValues[TTCPProperties(AProperty)] := AValue;
end;

class procedure TTCPMerge.SaveSettings();
var
  i: TTCPProperties;
begin
  for i := Low(TTCPProperties) to High(TTCPProperties) do
  begin
    case TTCPPropertyTypes[i] of
      mptFilePath,
      mptPath,
      mptString:  SettingSave(C_WKF,C_WORKFLOW,C_SAVEPREFIX + TTCPPropertyNames[i], String(TTCPPropertyValues[i]));
      mptInteger: SettingSave(C_WKF,C_WORKFLOW,C_SAVEPREFIX + TTCPPropertyNames[i], Integer(TTCPPropertyValues[i]));
      mptBoolean: SettingSave(C_WKF,C_WORKFLOW,C_SAVEPREFIX + TTCPPropertyNames[i], Boolean(TTCPPropertyValues[i]));
    end;
  end;
end;

class procedure TTCPMerge.SetPropertyValue(AProperty: String;
  AValue: Variant);
begin
  TTCPPropertyValues[GetPropertyIndex(AProperty)] := AValue;
end;

class function TTCPMerge.Options: TMergeOptions;
begin
  Result := [moNeedsParties, moNeedsData];
end;

constructor TTCPMerge.Create(Collection: TCollection);
begin
  inherited Create(Collection);

  FData := TStringList.Create();
end;

destructor TTCPMerge.Destroy;
begin
  FreeAndNil(FData);
  inherited;
end;

procedure TTCPMerge.GenerateCSVData;
var
  LComma: TStringList;
  i: Integer;
  LDataFor: TDataFor;
  AMultiCount: integer;
  LTableName: String;
begin
  LComma := TStringList.Create();
  try
    AMultiCount := 0;
    FData.Clear();
    FData.Add('Template Name: ' + TemplateName);

    for LDataFor := Low(TDataFor) to High(TDataFor) do
    begin
      LComma.Clear();
      if(GetFieldCount(LDataFor) > 0) then
      begin
        LTableName := Trim(UpperCase(TDataForNames[LDataFor]));
        for i := 0 to GetFieldCount(LDataFor) - 1 do
          LComma.Add(GetFieldName(LDataFor,i));
        FData.Add(LTableName {TDataForNames[LDataFor]} + ' Fields: ' + LComma.CommaText);

        FirstRow(LDataFor);
        while(not Eof(LDataFor)) do
        begin
          LComma.Clear();
          for i := 0 to GetFieldCount(LDataFor) - 1 do
            LComma.Add(GetFieldValue(LDataFor,i));
          FData.Add(LTableName {TDataForNames[LDataFor] } + ' Data: ' + LComma.CommaText);
          NextRow(LDataFor);
          if LeftStr(LTableName,11) = 'MULTICLIENT' then
          begin
             inc(AMultiCount);
             LTableName := LeftStr(LTableName,11) + IntToStr(AMultiCount);
          end;
        end;
      end;
    end;
  finally
    FreeAndNil(LComma);
  end;
end;

procedure TTCPMerge.GenerateXMLData;
var
  LWorkFlow: IXMLAxiomationWorkFlowType;
  LDocument: IXMLDocumentType;
  LTable: IXMLTableType;
  LColumn: IXMLColumnType;
  LRow: IXMLRowType;
  LData: IXMLDataType;
  LDatafor: TDataFor;
  i: Integer;
begin
  LWorkFlow := NewAxiomationWorkFlow();
  LWorkFlow.OwnerDocument.Options := LWorkFlow.OwnerDocument.Options + [doNodeAutoIndent];

  LDocument := LWorkFlow.Add();
  LDocument.Name := TemplateName;

  for LDataFor := Low(TDataFor) to High(TDataFor) do
  begin
    LTable := LDocument.Add();
    LTable.Name := TDataForNames[LDataFor];
    LTable.RowCount := 0;
    for i := 0 to GetFieldCount(LDataFor) - 1 do
    begin
      LColumn := LTable.Columns.Add();
      LColumn.FieldName := GetFieldName(LDataFor,i);
      LColumn.FieldType := GetFieldType(LDataFor,i);
    end;

    FirstRow(LDataFor);
    while(not Eof(LDataFor)) do
    begin
      LTable.RowCount := LTable.RowCount + 1;
      LRow := LTable.Rows.Add();
      for i := 0 to GetFieldCount(LDataFor) - 1 do
      begin
        LData := LRow.Add();
        LData.FieldName := GetFieldName(LDataFor,i);
        LData.Text :=      GetFieldValue(LDataFor,i);
      end;
      NextRow(LDataFor);
    end;
  end;
//  LWorkFlow.OwnerDocument.SaveToFile('test.xml');
  FData.Assign(LWorkFlow.OwnerDocument.XML);
end;

function TTCPMerge.PostProcess(AChangedDataValues: TCollection): boolean;
begin
  Result := True;
end;

initialization
  RegisterWorkflowMergeType(TTCPMerge);
end.
