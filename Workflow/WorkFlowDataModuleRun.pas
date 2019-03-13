unit WorkFlowDataModuleRun;

interface

uses
  SysUtils, Classes, DB, VirtualTable, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TdmWorkFlowDataModuleRun = class(TDataModule)
    dsWorkflowTaskNotes: TDataSource;
    qWorkflowTaskNotes: TUniQuery;
    qWorkflowTaskNotesCREATED: TDateTimeField;
    qWorkflowTaskNotesCREATEDBY: TStringField;
    qWorkflowTaskNotesNOTE: TStringField;
    qWorkflowTaskNotesCREATEDBYNAME: TStringField;
    qWorkflowTaskNotesNOTEID: TFloatField;
    qCheckWorkflowTasks: TUniQuery;
    qCheckWorkflowTasksWORKFLOWTYPECODE: TStringField;
    qCheckWorkflowTasksWORKFLOW: TStringField;
    qCheckWorkflowTasksWORKFLOWDESCR: TStringField;
    qCheckWorkflowTasksMATTERDESCR: TStringField;
    qCreateCustomTask: TUniQuery;
    qCreateWorkflowTasks: TUniQuery;
    qDeleteCustomTask: TUniQuery;
    qLatestTaskNote: TUniQuery;
    qLatestTaskNoteNOTE: TStringField;
    qLatestTaskNoteCREATED: TDateTimeField;
    qLatestTaskNoteCREATEDBY: TStringField;
    qLatestTaskNoteCREATEDBYNAME: TStringField;
    qLatestTaskNoteNOTEID: TFloatField;
    qMatterDetails: TUniQuery;
    qToDoMatterOrder: TUniQuery;
    qToDoTasks: TUniQuery;
    qToDoTasksDate: TUniQuery;
    qWorkflowTasks: TUniQuery;
    qWorkFlowTasks2: TUniQuery;
    vtWorkFlowTasksReport: TVirtualTable;
    vtWorkFlowTasksReportFULLSEQUENCE: TStringField;
    vtWorkFlowTasksReportTASKDESCRIPTION: TStringField;
    vtWorkFlowTasksReportTaskNote: TStringField;
    vtWorkFlowTasksReportStartedBy: TStringField;
    vtWorkFlowTasksReportCompletedBy: TStringField;
    vtWorkFlowTasksReportSkippedBy: TStringField;
    vtWorkFlowTasksReportAssignedToName: TStringField;
    vtWorkFlowTasksReportOverDueDays: TIntegerField;
    vtWorkFlowTasksReportStarted: TDateTimeField;
    vtWorkFlowTasksReportCompleted: TDateTimeField;
    vtWorkFlowTasksReportSkipped: TDateTimeField;
    vtWorkFlowTasksReportCompleteBy: TDateTimeField;
    qDeleteWorkFlowTasks: TUniQuery;
    dsToDoTasks: TUniDataSource;
    qToDoTasksSequence: TUniQuery;
    qToDoTasksSequenceWORKFLOWTASK: TFloatField;
    qToDoTasksSequenceFULLSEQUENCE: TStringField;
    qToDoTasksSequenceTASKORDER: TStringField;
    qToDoTasksSequenceNMATTER: TFloatField;
    qToDoTasksSequenceTEMPLATELINEID: TFloatField;
    qToDoTasksSequenceREPETITION: TFloatField;
    qToDoTasksSequenceREPETITIONBASE: TStringField;
    qToDoTasksSequenceCUSTOM: TStringField;
    qToDoTasksSequenceSTARTED: TDateTimeField;
    qToDoTasksSequenceSTARTEDBY: TStringField;
    qToDoTasksSequenceSTARTEDBYNAME: TStringField;
    qToDoTasksSequenceWORKFLOWTYPECODE: TStringField;
    qToDoTasksSequencePARENTLINEID: TFloatField;
    qToDoTasksSequenceTASKDESCRIPTION: TStringField;
    qToDoTasksSequenceTASKNOTE: TStringField;
    qToDoTasksSequenceCOMPLETEDAYS: TFloatField;
    qToDoTasksSequenceCOMPLETEBYDATE: TDateTimeField;
    qToDoTasksSequenceDAYSOVERDUE: TFloatField;
    qToDoTasksSequenceSHORTDESCR: TStringField;
    qToDoTasksSequenceFILEID: TStringField;
    qToDoTasksSequenceWORKFLOWTYPE: TStringField;
    qToDoTasksSequenceHASDOCUMENTS: TFloatField;
    qToDoTasksSequenceHASNOTES: TFloatField;
    qToDoTasksSequenceCLIENTNAME: TStringField;
    qCreateCriticalDates: TUniQuery;
    qHasMatterCriticalDates: TUniQuery;
    qDeleteCriticalDates: TUniQuery;
    qUpdateCriticalDates: TUniQuery;
    procStartTask: TUniStoredProc;
    qGetParentLineID: TUniQuery;
    qGetCriticalDateCount: TUniQuery;
    qToDoTasksSequenceCRITICAL_DATE: TStringField;
    qToDoTasksSequenceCRITICAL_ALERT: TStringField;
    qToDoTasksSequenceCOMPLETED: TDateTimeField;
    qToDoTasksSequenceSEQNO: TFloatField;
    qToDoTasksSequenceSKIPPED: TDateTimeField;
    qToDoTasksWORKFLOWTASK: TFloatField;
    qToDoTasksFULLSEQUENCE: TStringField;
    qToDoTasksTASKORDER: TStringField;
    qToDoTasksNMATTER: TLargeintField;
    qToDoTasksTEMPLATELINEID: TFloatField;
    qToDoTasksREPETITION: TFloatField;
    qToDoTasksREPETITIONBASE: TStringField;
    qToDoTasksCUSTOM: TStringField;
    qToDoTasksSTARTED: TDateTimeField;
    qToDoTasksSTARTEDBY: TStringField;
    qToDoTasksSTARTEDBYNAME: TStringField;
    qToDoTasksWORKFLOWTYPECODE: TStringField;
    qToDoTasksSEQNO: TFloatField;
    qToDoTasksPARENTLINEID: TFloatField;
    qToDoTasksTASKDESCRIPTION: TStringField;
    qToDoTasksTASKNOTE: TStringField;
    qToDoTasksCOMPLETEDAYS: TFloatField;
    qToDoTasksCRITICAL_DATE: TStringField;
    qToDoTasksCRITICAL_ALERT: TStringField;
    qToDoTasksCOMPLETED: TDateTimeField;
    qToDoTasksSKIPPED: TDateTimeField;
    qToDoTasksCOMPLETEBYDATE: TDateTimeField;
    qToDoTasksDAYSOVERDUE: TFloatField;
    qToDoTasksSHORTDESCR: TStringField;
    qToDoTasksFILEID: TStringField;
    qToDoTasksWORKFLOWTYPE: TStringField;
    qToDoTasksHASDOCUMENTS: TFloatField;
    qToDoTasksHASNOTES: TFloatField;
    qToDoTasksCLIENTNAME: TStringField;
    qToDoMatterOrderFILEID: TStringField;
    qToDoMatterOrderNMATTER: TLargeintField;
    qToDoMatterOrderDAYSOVERDUE: TFloatField;
    qToDoTasksDateWORKFLOWTASK: TFloatField;
    qToDoTasksDateFULLSEQUENCE: TStringField;
    qToDoTasksDateTASKORDER: TStringField;
    qToDoTasksDateNMATTER: TLargeintField;
    qToDoTasksDateTEMPLATELINEID: TFloatField;
    qToDoTasksDateREPETITION: TFloatField;
    qToDoTasksDateREPETITIONBASE: TStringField;
    qToDoTasksDateCUSTOM: TStringField;
    qToDoTasksDateSTARTED: TDateTimeField;
    qToDoTasksDateSTARTEDBY: TStringField;
    qToDoTasksDateSTARTEDBYNAME: TStringField;
    qToDoTasksDateWORKFLOWTYPECODE: TStringField;
    qToDoTasksDateSEQNO: TFloatField;
    qToDoTasksDatePARENTLINEID: TFloatField;
    qToDoTasksDateTASKDESCRIPTION: TStringField;
    qToDoTasksDateTASKNOTE: TStringField;
    qToDoTasksDateCOMPLETEDAYS: TFloatField;
    qToDoTasksDateDATETOCOMPLETE: TDateTimeField;
    qToDoTasksDateCRITICAL_DATE: TStringField;
    qToDoTasksDateCRITICAL_ALERT: TStringField;
    qToDoTasksDateCOMPLETED: TDateTimeField;
    qToDoTasksDateSKIPPED: TDateTimeField;
    qToDoTasksDateCOMPLETEBYDATE: TDateTimeField;
    qToDoTasksDateDAYSOVERDUE: TFloatField;
    qToDoTasksDateSHORTDESCR: TStringField;
    qToDoTasksDateFILEID: TStringField;
    qToDoTasksDateWORKFLOWTYPE: TStringField;
    qToDoTasksDateHASDOCUMENTS: TFloatField;
    qToDoTasksDateHASNOTES: TFloatField;
    qToDoTasksDateCLIENTNAME: TStringField;
    qMatterDetailsFILEID: TStringField;
    qMatterDetailsNMATTER: TLargeintField;
    qMatterDetailsSHORTDESCR: TStringField;
    qMatterDetailsCLIENTNAME: TStringField;
    qMatterDetailsWORKFLOWTYPE: TStringField;
    qMatterDetailsWORKFLOWTYPECODE: TStringField;
    qToDoTasksASSIGNEDTO: TStringField;
    qToDoTasksASSIGNEDTOTEAM: TStringField;
    qToDoTasksDateASSIGNEDTO: TStringField;
    qToDoTasksDateASSIGNEDTOTEAM: TStringField;
    qToDoTasksSequenceASSIGNEDTO: TStringField;
    qToDoTasksSequenceASSIGNEDTOTEAM: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmWorkFlowDataModuleRun: TdmWorkFlowDataModuleRun;

implementation

uses AxiomData;

{$R *.dfm}

end.
