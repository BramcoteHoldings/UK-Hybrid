unit WorkFlowToDoReportDate;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora;

type
  TqrWorkFlowToDoReportDate = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    DetailBandTasks: TQRBand;
    PageFooterBand1: TQRBand;
    tFullSequence: TQRDBText;
    tTaskDescription: TQRDBText;
    tStarted: TQRDBText;
    tNMatter: TQRDBText;
    lMatter: TQRLabel;
    tShortDescr: TQRDBText;
    lClient: TQRLabel;
    tClientName: TQRDBText;
    TitleBand: TQRBand;
    QRLabel6: TQRLabel;
    lEmployee: TQRLabel;
    lDates: TQRLabel;
    qrlAxiomation: TQRLabel;
    lEntity: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    tCompleteByDate: TQRDBText;
    tDaysOverdue: TQRDBText;
    QRLabel8: TQRLabel;
    QRBandDueDateFooter: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBandMatterFooter: TQRBand;
    qToDoTasksDate: TOraQuery;
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
    procedure tDaysOverduePrint(sender: TObject; var Value: String);
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
    procedure Initialise(TasksList: TStrings; sSql: String);

  end;

var
  qrWorkFlowToDoReportDate: TqrWorkFlowToDoReportDate;
  reportSql : String;

implementation

uses WorkFlowDataModule, MiscFunc, WorkFlowDataModuleRun;

{$R *.DFM}

procedure TqrWorkFlowToDoReportDate.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  dmWorkflowDataModuleRun.qToDoTasksDate.Open();
end;

procedure TqrWorkFlowToDoReportDate.QuickRepAfterPrint(Sender: TObject);
begin
  dmWorkflowDataModuleRun.qToDoTasksDate.Close();
end;

procedure TqrWorkFlowToDoReportDate.DetailBandTasksBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  LSequence: String;
  i, LDots: Integer;
begin
  LDots := 0;
  LSequence := dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('FULLSEQUENCE').AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  tFullSequence.Size.Left := 40 * LDots;
  tFullSequence.Size.Width := 400 - tFullSequence.Size.Left;

  if(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').AsInteger = HighlightOverDueDays) then
    Sender.Color := clYellow
  else
    Sender.Color := clWhite;
end;

procedure TqrWorkFlowToDoReportDate.QRGroupMatterBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('NMATTER').AsInteger = HighlightMatter) then
    Sender.Color := clYellow
  else
    Sender.Color := clWhite;
end;

procedure TqrWorkFlowToDoReportDate.TitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lEmployee.Caption := 'Employee: ' + EmployeeName;
  lDates.Caption    := Dates;
end;

procedure TqrWorkFlowToDoReportDate.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lEntity.Caption := SystemString('COMPANY');
end;

procedure TqrWorkFlowToDoReportDate.tStartedPrint(sender: TObject;
  var Value: String);
begin
  Value := FormatDateTime('dd mmm yy',dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('STARTED').AsDateTime);
end;

procedure TqrWorkFlowToDoReportDate.tCompleteByPrint(sender: TObject;
  var Value: String);
begin
  Value := ExtendedDateFormat(FDateFrom,dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('COMPLETEBYDATE').AsDateTime,True);
end;

procedure TqrWorkFlowToDoReportDate.tDaysOverduePrint(sender: TObject;
  var Value: String);
begin
  if(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').AsInteger > 0) then
    Value := IntToStr(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').AsInteger)
  else if(dmWorkflowDataModuleRun.qToDoTasksDate.FieldByName('DAYSOVERDUE').AsInteger = 0) then
    Value := 'Due Today'
  else
    Value := '';
end;

procedure TqrWorkFlowToDoReportDate.Initialise(TasksList: TStrings; sSql: String);
var
  index : integer;
begin
//   dmWorkflowDataModuleRun.
   qToDoTasksDate.SQL.Text := sSql;
   if TasksList.Count > 0 then
   begin

      qToDoTasksDate.SQL.Add(' AND w.workflowtask IN (');

  for index := 0 to TasksList.Count - 1 do
  begin
         qToDoTasksDate.SQL.Add(TasksList.Strings[index]);

    if (index < (TasksList.Count - 1)) then
            qToDoTasksDate.SQL.Add(', ');
  end;

      qToDoTasksDate.SQL.Add(') ');
   end;

  qToDoTasksDate.SQL.Add(' ORDER BY nmatter, w.datetocomplete desc');

{
--  AND (m.archivenum IS NULL OR m.closed != 1)
--ORDER BY nmatter, w.datetocomplete desc
}
end;

end.

