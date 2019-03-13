unit GenericDocNoMerge;

interface

uses WorkFlowDocumentMerge, WorkFlowMergeDocument, Classes, SysUtils, Data.DB;


type
  TGenMergeProperties = (
    msSaveInDb);

type
  // use this as a basic template for creating new merge types.
  TGenMergeDocument = class(TMergeDocument)
  private
    LCategory: String;

  protected
    function MergeDocument(): Integer;    override;
  public
    function PostProcess(AChangedDataValues: TCollection): boolean; override;
    class function ExportDescription(): String; override;
    class function Options(): TMergeOptions; override;

    class procedure LoadSettings(); override;
    class procedure SaveSettings(); override;

    class function NumberOfProperties(): Integer; override;
    class function PropertyType(AProperty: Integer): TMergePropertyType;    overload; override;
    class function PropertyType(AProperty: String): TMergePropertyType;     overload; override;
    class function GetPropertyName(AProperty: Integer): String; override;
    class function GetPropertyValue(AProperty: Integer): Variant; override;
    class function GetPropertyValue(AProperty: String): Variant; override;
    class procedure SetPropertyValue(AProperty: Integer; AValue: Variant); override;
    class procedure SetPropertyValue(AProperty: String; AValue: Variant); override;
  end;

implementation

uses
  Dialogs, ComObj, Variants, Windows, MiscFunc, Controls,
  WorkFlowDataModule, DocDescription, AxiomData,
  WorkFlowDataModuleMerge, fmxutils;


  { TGenMergeDocument }
var
   TGenPropertyNames: array  [TGenMergeProperties] of String =
    ('Save To Db');

   TGenPropertyTypes: array  [TGenMergeProperties] of TMergePropertyType =
    (mptBoolean);

   TGenPropertyValues: array [TGenMergeProperties] of Variant;

class function TGenMergeDocument.ExportDescription: String;
begin
  Result := 'Generic Documents - No Merge';
end;


class function TGenMergeDocument.GetPropertyName(AProperty: Integer): String;
begin
   Result := 'NONE';
end;

class function TGenMergeDocument.GetPropertyValue(AProperty: Integer): Variant;
begin
   Result := NULL;
end;

class function TGenMergeDocument.GetPropertyValue(
  AProperty: String): Variant;
begin
   Result := NULL;
end;

class procedure TGenMergeDocument.LoadSettings;
var
   i: TGenMergeProperties;
begin
   for i := Low(TGenMergeProperties) to High(TGenMergeProperties) do
   begin
      case TGenPropertyTypes[i] of
         mptBoolean: TGenPropertyValues[i] := GlobalSettingLoadBoolean(C_WKF,C_WORKFLOW,'GEN_' + TGenPropertyNames[i]);
      end;
   end;
end;


class function TGenMergeDocument.NumberOfProperties: Integer;
begin
   Result := Length(TGenPropertyNames);
end;

class function TGenMergeDocument.PropertyType(AProperty: Integer): TMergePropertyType;
begin
   Result := mptNone;
end;

class function TGenMergeDocument.PropertyType(AProperty: String): TMergePropertyType;
begin
   Result := mptNone;
end;

class procedure TGenMergeDocument.SetPropertyValue(AProperty: Integer;
  AValue: Variant);
begin
   TGenPropertyValues[TGenMergeProperties(AProperty)] := AValue;
end;

class procedure TGenMergeDocument.SaveSettings;
begin
  // do nothing.
end;

class procedure TGenMergeDocument.SetPropertyValue(AProperty: String;
  AValue: Variant);
begin
// DO NOTHING.
end;

class function TGenMergeDocument.Options: TMergeOptions;
begin
   Result := [moCheckTemplateExists, moNeedsTemplatePath,
             moNeedsDocumentPath, moNeedsDataFilePath, moSaveToDB];
end;

function TGenMergeDocument.PostProcess(AChangedDataValues: TCollection): boolean;
begin
  Result := True;
end;

function TGenMergeDocument.MergeDocument(): Integer;
var
   AHandle: THandle;
   DocErrMsg,
   LFile: string;
begin
   AHandle := ExecuteFile(TemplatePath, '', '.', SW_SHOWNORMAL, DocErrMsg);
   if (AHandle < 33) and (DocErrMsg <> '') then
       MsgInfo('Unable to open Document. - ' + DocErrMsg);

   if(not DirectoryExists(ExtractFilePath(DocumentPath))) then
      ForceDirectories(ExtractFilePath(DocumentPath));

   LFile := ExtractFileName(TemplatePath);
   DocumentPath := IncludeTrailingPathDelimiter(DocumentPath) + LFile;

   CopyFileIFileOperationForceDirectories(TemplatePath, DocumentPath);

   Result := mrOk;
end;

initialization
  // register TGenMergeDocument as a merge type.
  RegisterWorkflowMergeType(TGenMergeDocument);

end.
