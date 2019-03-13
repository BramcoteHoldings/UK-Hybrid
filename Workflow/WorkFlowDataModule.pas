unit WorkFlowDataModule;
(*
  WorkFlow Data Module

  All workflow queries and tables are stored here..

  Mathew Dredge, Aug-Sep 2002
 *)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleUniProvider, Uni, DBAccess, MemDS, VirtualTable;
const
  C_SETTINGWORKFLOWGENERAL = 'WORKFLOWGENERAL';
  C_SETTINGWORKFLOWTYPE    = 'WORKFLOWTYPE';
type
  TdmWorkFlowDataModule = class(TDataModule)
    tbWorkflowType: TUniTable;
    dsWorkflowType: TDataSource;
    qListCarriage: TUniQuery;
    qAnyQuery: TUniQuery;
    tbWorkflowTypeCODE: TStringField;
    tbWorkflowTypeDESCR: TStringField;
    dsListCarriage: TDataSource;
    qGenDocuments: TUniQuery;
    qGenDocParties: TUniQuery;
    qTmp: TUniQuery;
    qAssignTo: TUniQuery;
    dsAssignTo: TDataSource;
    qryDataform: TUniQuery;
    qryDataformFields: TUniQuery;
    qryTranslations: TUniQuery;
    qPartyCount: TUniQuery;
    qryTaskTree: TUniQuery;
    qryWorkflowDataForms: TUniQuery;
    qryCheckCriticalDates: TUniQuery;
    qGenDocumentsWORKFLOWGENDOCUMENT: TFloatField;
    qGenDocumentsNMATTER: TLargeintField;
    qGenDocumentsTEMPLATELINEID: TFloatField;
    qGenDocumentsFILEPATH: TStringField;
    qGenDocumentsTEMPLATEPATH: TStringField;
    qGenDocumentsDATAFILEPATH: TStringField;
    qGenDocumentsWHENGENERATED: TDateTimeField;
    qGenDocumentsWHO: TStringField;
    qGenDocumentsDATAFORM: TStringField;
    qGenDocumentsINDEX_PATH: TStringField;
    qGenDocumentsNPRECCATEGORY: TLargeintField;
    qGenDocumentsNPRECCLASSIFICATION: TLargeintField;
    qGenDocumentsDOCFILEPATH: TStringField;
    qGenDocumentsDESCR: TStringField;
    qGenDocumentsDOC_DOCID: TFloatField;
    qGenDocumentsDOCUMENTNAME: TStringField;
    qGenDocumentsEMPLOYEENAME: TStringField;
    qGenDocumentsTASKSEQUENCE: TStringField;
    qGenDocumentsTASKDESCRIPTION: TStringField;
    qGenDocumentsPARTYTYPECOUNT: TFloatField;
    qGenDocPartiesPARTYTYPE: TStringField;
    qGenDocPartiesSEARCH: TStringField;
    qListCarriageID: TStringField;
    qListCarriageTYPE: TStringField;
    qListCarriageNAME: TStringField;
    qListCarriageCODE: TStringField;
    qAssignToVALUE: TStringField;
    qAssignToCODE: TStringField;
    qGenDocPartiesNNAME: TFloatField;
    qGenDocumentsDOCID: TFloatField;
    dsTeams: TDataSource;
    qTeams: TUniQuery;
    qTeamsCODE: TStringField;
    qTeamsDESCR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FEMailInstalled: Boolean;

    function GetUserID: String;
    function GetUserName: String;
    function GetEntity: String;
    { Private declarations }
  public
    { Public declarations }
    FSavedWFTTaskSQL: String;
    function GetFileIDFromNMatter(ANMatter: Integer): String;
    property UserID: String read GetUserID;
    property UserName: String read GetUserName;
    property Entity: String read GetEntity;
    property WorkFlowEMailInstalled: Boolean read FEMailInstalled;
  end;

var
  dmWorkFlowDataModule: TdmWorkFlowDataModule;

procedure ConvertToHighColor(ImageList: TImageList);
function ExtendedDateFormat(ADatumDate, ADate: TDate; ALongDate: Boolean = False): String;

implementation

uses AxiomData, MiscFunc,CommCtrl, WorkFlowTaskDef, WorkFlowDataModuleMerge,
  WorkFlowDataModuleRun, WorkFlowDataModuleDocs, WorkFlowDataModuleTasks;

{$R *.DFM}

function ExtendedDateFormat(ADatumDate, ADate: TDate; ALongDate: Boolean): String;
var
  LDate :TDate;
begin
  LDate := Trunc(ADatumDate);
  if(ADate = 0) then
    Result := ''
  else if(Trunc(ADate) = LDate) then
    Result := 'Today'
  else if(Trunc(ADate) = LDate - 1) then
    Result := 'Yesterday'
  else if(Trunc(ADate) = LDate + 1) then
    Result := 'Tomorrow'
  else if(ALongDate) then
    Result := FormatDateTime('dddd dd mmmm yyyy',ADate)
  else
    Result := FormatDateTime('ddd dd mmm yy',ADate);
end;

procedure ConvertToHighColor(ImageList: TImageList);
var
  IL: TImageList;
begin
  IL := TImageList.Create(nil);
  IL.Assign(ImageList);

  with ImageList do
    Handle := ImageList_Create(Width, Height, ILC_COLOR16 or ILC_MASK, Count, AllocBy);
  ImageList.Assign(IL);
  IL.Free;
end;

function TdmWorkFlowDataModule.GetUserID: String;
begin
  if(Assigned(dmAxiom)) then
    Result := dmAxiom.UserID
  else
    Result := '';
end;

function TdmWorkFlowDataModule.GetUserName: String;
begin
  Result := TableString('EMPLOYEE', 'CODE', UserID, 'NAME');
end;

function TdmWorkFlowDataModule.GetFileIDFromNMatter(ANMatter: Integer): String;
begin
  qTmp.Close();
  qTmp.SQL.Text := 'select fileid from matter where nmatter = ' + IntToStr(ANMatter);
  qTmp.Open();
  try
    Result := qTmp.FieldByName('FILEID').AsString;
  finally
    qTmp.Close();
  end;
end;

function TdmWorkFlowDataModule.GetEntity: String;
begin
  Result := dmAxiom.Entity;
end;

procedure TdmWorkFlowDataModule.DataModuleCreate(Sender: TObject);
begin
   dmWorkFlowDataModuleMerge := TdmWorkFlowDataModuleMerge.Create(Self);
   dmWorkFlowDataModuleRun   := TdmWorkFlowDataModuleRun.Create(Self);
   dmWorkFlowDataModuleDocs  := TdmWorkFlowDataModuleDocs.Create(Self);
   dmWorkFlowDataModuleTasks := TdmWorkFlowDataModuleTasks.Create(Self);

   tbWorkflowType.Open();
   tbWorkflowType.Locate('CODE','10',[]);
   FSavedWFTTaskSQL := dmWorkFlowDataModuleTasks.qTaskDocs.SQL.Text + ' and ';

   qTmp.SQL.Text := 'select status from all_triggers where trigger_name = ''WORKFLOW_STATECHANGE_STARTED'' AND table_name = ''WORKFLOWTASKS''';

   FEMailInstalled := False;
   qTmp.Open;
   try
      if (not qTmp.Eof) then
         FEMailInstalled := qTmp.FieldByName('STATUS').AsString = 'ENABLED';
   finally
      qTmp.Close;
   end;
end;

procedure TdmWorkFlowDataModule.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(dmWorkFlowDataModuleMerge);
  FreeAndNil(dmWorkFlowDataModuleRun);
  FreeAndNil(dmWorkFlowDataModuleDocs);
  FreeAndNil(dmWorkFlowDataModuleTasks);
end;

end.
