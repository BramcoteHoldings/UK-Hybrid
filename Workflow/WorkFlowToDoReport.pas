unit WorkFlowToDoReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora;

type
  TqrWorkFlowToDoReport = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    DetailBandTasks: TQRBand;
    PageFooterBand1: TQRBand;
    tFullSequence: TQRDBText;
    tTaskDescription: TQRDBText;
    tStarted: TQRDBText;
    tDaysOverdue: TQRDBText;
    tCompleteBy: TQRDBText;
    QRGroupMatter: TQRGroup;
    tNMatter: TQRDBText;
    lMatter: TQRLabel;
    tShortDescr: TQRDBText;
    lClient: TQRLabel;
    tClientName: TQRDBText;
    TitleBand: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    lEmployee: TQRLabel;
    lDates: TQRLabel;
    qrlAxiomation: TQRLabel;
    lEntity: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    qryWorkFlowTaskReport: TOraQuery;
    qryWorkFlowTaskReportWORKFLOWTASK: TFloatField;
    qryWorkFlowTaskReportFULLSEQUENCE: TStringField;
    qryWorkFlowTaskReportTASKORDER: TStringField;
    qryWorkFlowTaskReportNMATTER: TFloatField;
    qryWorkFlowTaskReportTEMPLATELINEID: TFloatField;
    qryWorkFlowTaskReportREPETITION: TFloatField;
    qryWorkFlowTaskReportREPETITIONBASE: TStringField;
    qryWorkFlowTaskReportCUSTOM: TStringField;
    qryWorkFlowTaskReportSTARTED: TDateTimeField;
    qryWorkFlowTaskReportSTARTEDBY: TStringField;
    qryWorkFlowTaskReportSTARTEDBYNAME: TStringField;
    qryWorkFlowTaskReportWORKFLOWTYPECODE: TStringField;
    qryWorkFlowTaskReportSEQNO: TFloatField;
    qryWorkFlowTaskReportPARENTLINEID: TFloatField;
    qryWorkFlowTaskReportTASKDESCRIPTION: TStringField;
    qryWorkFlowTaskReportTASKNOTE: TStringField;
    qryWorkFlowTaskReportCOMPLETEDAYS: TFloatField;
    qryWorkFlowTaskReportCOMPLETEBYDATE: TDateTimeField;
    qryWorkFlowTaskReportDAYSOVERDUE: TFloatField;
    qryWorkFlowTaskReportSHORTDESCR: TStringField;
    qryWorkFlowTaskReportFILEID: TStringField;
    qryWorkFlowTaskReportWORKFLOWTYPE: TStringField;
    qryWorkFlowTaskReportHASDOCUMENTS: TFloatField;
    qryWorkFlowTaskReportHASNOTES: TFloatField;
    qryWorkFlowTaskReportCLIENTNAME: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure DetailBandTasksBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroupMatterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure tStartedPrint(sender: TObject; var Value: String);
    procedure tCompleteByPrint(sender: TObject; var Value: String);
  private
    FHighlightOverDueDays: Integer;
    FHighlightMatter: Integer;
    FDates: String;
    FEmployeeName: String;
    FDateFrom: TDate;
    FExcCritDate: boolean;
  public
    property HighlightOverDueDays: Integer read FHighlightOverDueDays write FHighlightOverDueDays;
    property HighlightMatter: Integer read FHighlightMatter write FHighlightMatter;
    property EmployeeName: String read FEmployeeName write FEmployeeName;
    property Dates: String read FDates write FDates;
    property DateFrom: TDate read FDateFrom write FDateFrom;
    property ExcCritDate: boolean read FExcCritDate write FExcCritDate;
    procedure Initialise(EmployeeCode: String; DateFrom, DateTo: TDate; AExcCritDate: boolean); overload;
    procedure Initialise(TasksList: TStrings; EmployeeCode: String; DateFrom, DateTo: TDate); overload;

  end;

var
  qrWorkFlowToDoReport: TqrWorkFlowToDoReport;

implementation

uses WorkFlowDataModule, MiscFunc, WorkFlowDataModuleRun;

{$R *.DFM}

procedure TqrWorkFlowToDoReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if qryWorkFlowTaskReport.Active = True then
    qryWorkFlowTaskReport.Close();
  qryWorkFlowTaskReport.Open();
end;

procedure TqrWorkFlowToDoReport.QuickRepAfterPrint(Sender: TObject);
begin
  if qryWorkFlowTaskReport.Active = True then
    qryWorkFlowTaskReport.Close();
end;

procedure TqrWorkFlowToDoReport.DetailBandTasksBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  LSequence: String;
  i, LDots: Integer;
begin
  LDots := 0;
  LSequence := dmWorkFlowDataModuleRun.qToDoTasksFULLSEQUENCE.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  tFullSequence.Size.Left := 40 * LDots;
  tFullSequence.Size.Width := 400 - tFullSequence.Size.Left;

  if(qryWorkFlowTaskReportDAYSOVERDUE.AsInteger = HighlightOverDueDays) then
    Sender.Color := clYellow
  else
    Sender.Color := clWhite;
end;

procedure TqrWorkFlowToDoReport.QRGroupMatterBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if(qryWorkFlowTaskReportNMATTER.AsInteger = HighlightMatter) then
    Sender.Color := clYellow
  else
    Sender.Color := clWhite;
end;

procedure TqrWorkFlowToDoReport.TitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lEmployee.Caption := 'Employee: ' + EmployeeName;
  lDates.Caption    := Dates;
end;

procedure TqrWorkFlowToDoReport.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lEntity.Caption := SystemString('COMPANY');
end;

procedure TqrWorkFlowToDoReport.tStartedPrint(sender: TObject;
  var Value: String);
begin
  Value := FormatDateTime('dd mmm yy',qryWorkFlowTaskReportSTARTED.AsDateTime);
end;

procedure TqrWorkFlowToDoReport.tCompleteByPrint(sender: TObject;
  var Value: String);
begin
  Value := FormatDateTime('dd mmm yy',qryWorkFlowTaskReportCOMPLETEBYDATE.AsDateTime);
end;

// Used to print all tasks for current employee and dates
procedure TqrWorkFlowToDoReport.Initialise(EmployeeCode: String; DateFrom, DateTo: TDate; AExcCritDate: boolean);
begin
  qryWorkFlowTaskReport.SQL.Add(' ORDER BY nmatter, w.datetocomplete desc');

  qryWorkFlowTaskReport.ParamByName('emp').AsString := EmployeeCode;
  qryWorkFlowTaskReport.ParamByName('startdate').AsDate := DateFrom;
  qryWorkFlowTaskReport.ParamByName('enddate').AsDate   := DateTo;
  qryWorkFlowTaskReport.ParamByName('critical_date').Clear;
  if AExcCritDate then
    qryWorkFlowTaskReport.ParamByName('critical_date').AsString := 'N';
end;

// Used to print selective tasks for current employee and dates
procedure TqrWorkFlowToDoReport.Initialise(TasksList: TStrings; EmployeeCode: String; DateFrom, DateTo: TDate);
var
  index : integer;
begin
  // Add selected tasks
  if TasksList.Count > 0 then
  begin
  qryWorkFlowTaskReport.SQL.Add(' AND w.workflowtask IN (');

  for index := 0 to TasksList.Count - 1 do
  begin
    qryWorkFlowTaskReport.SQL.Add(TasksList.Strings[index]);

    if (index < (TasksList.Count - 1)) then
      qryWorkFlowTaskReport.SQL.Add(', ');
  end;

  qryWorkFlowTaskReport.SQL.Add(') ');
  end;

  qryWorkFlowTaskReport.SQL.Add(' ORDER BY nmatter, w.datetocomplete desc');

  qryWorkFlowTaskReport.ParamByName('emp').AsString := EmployeeCode;
  qryWorkFlowTaskReport.ParamByName('startdate').AsDate := DateFrom;
  qryWorkFlowTaskReport.ParamByName('enddate').AsDate   := DateTo;
  qryWorkFlowTaskReport.ParamByName('critical_date').Clear;
  if ExcCritDate then
    qryWorkFlowTaskReport.ParamByName('critical_date').AsString := 'N';

end;

end.

