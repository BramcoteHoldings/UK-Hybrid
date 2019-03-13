unit WorkFlowDataModuleTasks;

interface

uses
  SysUtils, Classes, DB, VirtualTable, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TdmWorkFlowDataModuleTasks = class(TDataModule)
    qUWFTAdd: TUniQuery;
    qUWFTSequence: TUniQuery;
    qUWFTDelete: TUniQuery;
    qUWFTUpdate: TUniQuery;
    qTaskTemplate: TUniQuery;
    qTaskTemplateLINEID: TFloatField;
    qTaskTemplateWORKFLOWTYPECODE: TStringField;
    qTaskTemplateSEQNO: TFloatField;
    qTaskTemplatePARENTLINEID: TFloatField;
    qTaskTemplateTASKDESCRIPTION: TStringField;
    qTaskTemplateTASKNOTE: TStringField;
    qTaskTemplateCHILDCOUNT: TFloatField;
    qTaskTemplateSTARTWHEN: TStringField;
    qTaskTemplateDAYSFROM: TFloatField;
    qTaskTemplateCOMPLETEDAYS: TFloatField;
    qTaskTemplateDOCCOUNT: TFloatField;
    qTaskTemplateASSIGNTO: TStringField;
    qTaskTemplateSTARTWHENRELATED: TFloatField;
    qTaskTemplateCOMPLETEWHEN: TStringField;
    qTaskTemplateCOMPLETEWHENRELATED: TFloatField;
    qTaskTemplateSKIPWHEN: TStringField;
    qTaskTemplateSKIPWHENRELATED: TFloatField;
    qTaskTemplateLINKDATETO: TStringField;
    qTaskTemplateLINKDATETORELATED: TFloatField;
    qTaskTemplateLINKDATEDAYSFROM: TFloatField;
    qTaskTemplateSCALECOSTCODE: TStringField;
    qTaskTemplateSHOWFEE: TStringField;
    qTaskTemplateEMAILOVERDUE: TStringField;
    qTaskTemplateWATCHER: TStringField;
    qTaskTemplateWATCHFOR: TStringField;
    qTaskChildCount: TUniQuery;
    qTaskChildCountCHILDCOUNT: TFloatField;
    qDeleteTask: TUniQuery;
    qGetNextSeqNo: TUniQuery;
    qGetNextSeqNoNEXTSEQNO: TFloatField;
    qTaskDocs: TUniQuery;
    qTaskDocsDOCID: TFloatField;
    qTaskDocsWORKFLOWTYPECODE: TStringField;
    qTaskDocsDOCUMENTNAME: TStringField;
    qTaskDocsDOCUMENTPATH: TStringField;
    qTaskDocsPARTYTYPE: TStringField;
    qTaskDocsDOCTYPE: TStringField;
    qTaskDocsTEMPLATEPATH: TStringField;
    qTaskDocsDATAFILEPATH: TStringField;
    qTaskDocsGROUPID: TFloatField;
    qTaskDocsREFERREDOPTIONAL: TStringField;
    dsTaskDocs: TDataSource;
    tbTaskDocLink: TUniTable;
    tbTaskDocLinkDOCID: TFloatField;
    tbTaskDocLinkTASKLINEID: TFloatField;
    tbTaskDocLinkROWID: TStringField;
    dsTaskDocLink: TDataSource;
    tbTaskTemplates: TUniTable;
    tbTaskTemplatesLINEID: TFloatField;
    tbTaskTemplatesWORKFLOWTYPECODE: TStringField;
    tbTaskTemplatesSEQNO: TFloatField;
    tbTaskTemplatesPARENTLINEID: TFloatField;
    tbTaskTemplatesTASKDESCRIPTION: TStringField;
    tbTaskTemplatesTASKNOTE: TStringField;
    tbTaskTemplatesSTARTWHEN: TStringField;
    tbTaskTemplatesDAYSFROM: TFloatField;
    tbTaskTemplatesCOMPLETEDAYS: TFloatField;
    tbTaskTemplatesASSIGNTO: TStringField;
    tbTaskTemplatesSTARTWHENRELATED: TFloatField;
    tbTaskTemplatesCOMPLETEWHEN: TStringField;
    tbTaskTemplatesCOMPLETEWHENRELATED: TFloatField;
    tbTaskTemplatesSKIPWHEN: TStringField;
    tbTaskTemplatesSKIPWHENRELATED: TFloatField;
    tbTaskTemplatesLINKDATETO: TStringField;
    tbTaskTemplatesLINKDATETORELATED: TFloatField;
    tbTaskTemplatesLINKDATEDAYSFROM: TFloatField;
    tbTaskTemplatesSCALECOSTCODE: TStringField;
    tbTaskTemplatesSHOWFEE: TStringField;
    tbTaskTemplatesEMAILOVERDUE: TStringField;
    tbTaskTemplatesWATCHER: TStringField;
    tbTaskTemplatesWATCHFOR: TStringField;
    dsTaskTemplates: TDataSource;
    qFeeTemplates: TUniQuery;
    qFeeTemplatesCODE: TStringField;
    qFeeTemplatesDESCR: TStringField;
    dsFeeTemplates: TDataSource;
    vtTaskTemplateReport: TVirtualTable;
    vtTaskTemplateReportFullSequence: TStringField;
    vtTaskTemplateReportTaskDescription: TStringField;
    vtTaskTemplateReportTaskNote: TStringField;
    vtTaskTemplateReportStartsWhen: TStringField;
    vtTaskTemplateReportCompleteDays: TIntegerField;
    vtTaskTemplateReportCompleteWhen: TStringField;
    vtTaskTemplateReportSkipWhen: TStringField;
    vtTaskTemplateReportDueDateLink: TStringField;
    vtTaskTemplateReportDocumentName: TStringField;
    vtTaskTemplateReportDocumentRefersTo: TStringField;
    vtTaskTemplateReportAssignTo: TStringField;
    vtTaskTemplateReportDocumentAddressee: TStringField;
    qRptTaskDocs: TUniQuery;
    qRptTaskDocsDOCID: TFloatField;
    qRptTaskDocsDOCTYPE: TStringField;
    qRptTaskDocsPARTYTYPE: TStringField;
    qRptTaskDocsDOCUMENTNAME: TStringField;
    qRptTaskDocsDOCUMENTPATH: TStringField;
    qRptTaskDocsTEMPLATEPATH: TStringField;
    qRptTaskDocsDATAFILEPATH: TStringField;
    qRptTaskDocsWORKFLOWTYPECODE: TStringField;
    qRptTaskDocsReferred: TStringField;
    qRptTaskDocsRef: TUniQuery;
    qRptTaskDocsRefID: TFloatField;
    qRptTaskDocsRefDOCID: TFloatField;
    qRptTaskDocsRefPARTYTYPE: TStringField;
    qRptTaskDocsRefLISTORDER: TFloatField;
    qTaskTemplateVALUE: TStringField;
    tbTaskTemplatesCRITICAL_DATE: TStringField;
    tbTaskTemplatesCRITICAL_ALERT: TStringField;
    tbTaskTemplatesSAMEDAY_DUE: TStringField;
    tbTaskTemplatesREPORTABLE: TStringField;
    qTaskTemplateCRITICAL_DATE: TStringField;
    qTaskTemplateCRITICAL_ALERT: TStringField;
    qTaskTemplateSAMEDAY_DUE: TStringField;
    qTaskTemplateREPORTABLE: TStringField;
    qCopyDocTemplates: TUniQuery;
    qTaskTemplateDATAFORMCOUNT: TFloatField;
    qCopyDataform: TUniQuery;
    tbTaskTemplatesEMAILSTATUSCHANGE: TStringField;
    tbTaskTemplatesEMAILOVERDUENAME: TStringField;
    tbTaskTemplatesWATCHERNAME: TStringField;
    tbTaskTemplatesASSIGNEDTOTEAM: TStringField;
    tbTaskTemplatesASSIGNEDTOTEAMCHANGEDBY: TStringField;
    procedure qRptTaskDocsRefCalcFields(DataSet: TDataSet);
    procedure qTaskTemplateSTARTWHENGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qTaskTemplateSTARTWHENSetText(Sender: TField;
      const Text: String);
    procedure qTaskTemplateCOMPLETEWHENGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qTaskTemplateCOMPLETEWHENSetText(Sender: TField;
      const Text: String);
    procedure qTaskTemplateSKIPWHENGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qTaskTemplateSKIPWHENSetText(Sender: TField;
      const Text: String);
    procedure qTaskTemplateLINKDATETOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qTaskTemplateLINKDATETOSetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmWorkFlowDataModuleTasks: TdmWorkFlowDataModuleTasks;

implementation

uses AxiomData, WorkFlowTaskDef;

{$R *.dfm}

procedure TdmWorkFlowDataModuleTasks.qRptTaskDocsRefCalcFields(DataSet: TDataSet);
var
  LS: String;
begin
  LS := '';

  qRptTaskDocsRef.ParamByName('docid').AsInteger := qRptTaskDocsDOCID.AsInteger;
  qRptTaskDocsRef.Open();
  try

    while(not qRptTaskDocsRef.Eof) do
    begin
      if(LS <> '') then
        LS := LS + ', ';
      LS := LS + qRptTaskDocsRefPARTYTYPE.AsString;

      qRptTaskDocsRef.Next();
    end;
  finally
    qRptTaskDocsRef.Close();
  end;
  qRptTaskDocsReferred.AsString := LS;
end;

procedure TdmWorkFlowDataModuleTasks.qTaskTemplateSTARTWHENGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := GetTaskStartDescriptionFromCode(Sender.AsString);
end;

procedure TdmWorkFlowDataModuleTasks.qTaskTemplateSTARTWHENSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := GetTaskStartCodeFromDescription(Text);
end;

procedure TdmWorkFlowDataModuleTasks.qTaskTemplateCOMPLETEWHENGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := GetTaskCompleteDescriptionFromCode(Sender.AsString);
end;

procedure TdmWorkFlowDataModuleTasks.qTaskTemplateCOMPLETEWHENSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := GetTaskCompleteCodeFromDescription(Text);
end;

procedure TdmWorkFlowDataModuleTasks.qTaskTemplateSKIPWHENGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := GetTaskSkipDescriptionFromCode(Sender.AsString);
end;

procedure TdmWorkFlowDataModuleTasks.qTaskTemplateSKIPWHENSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := GetTaskSkipCodeFromDescription(Text);
end;

procedure TdmWorkFlowDataModuleTasks.qTaskTemplateLINKDATETOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := GetTaskDueDateLinkToDescriptionFromCode(Sender.AsString);
end;

procedure TdmWorkFlowDataModuleTasks.qTaskTemplateLINKDATETOSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := GetTaskDueDateLinkToCodeFromDescription(Text);
end;

end.
