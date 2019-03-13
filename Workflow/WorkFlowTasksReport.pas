unit WorkFlowTasksReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrWorkFlowTasksReport = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    qrlAxiomation: TQRLabel;
    lEntity: TQRLabel;
    DetailBandTasks: TQRBand;
    tFullSequence: TQRDBText;
    tTaskDescription: TQRDBText;
    tStarted: TQRDBText;
    tDaysOverdue: TQRDBText;
    tCompleteBy: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    TitleBand: TQRBand;
    QRLabel6: TQRLabel;
    lEmployee: TQRLabel;
    lDates: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lMatter: TQRLabel;
    lClient: TQRLabel;
    tAssignedTo: TQRDBText;
    tCompleted: TQRDBText;
    tSkipped: TQRDBText;
    tStartedBy: TQRDBText;
    tCompletedBy: TQRDBText;
    tSkippedBy: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    lClientName: TQRLabel;
    lShortDescr: TQRLabel;
    lNMatter: TQRLabel;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBandTasksBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure tDaysOverduePrint(sender: TObject; var Value: String);
    procedure tStartedPrint(sender: TObject; var Value: String);
    procedure tCompletedPrint(sender: TObject; var Value: String);
    procedure tSkippedPrint(sender: TObject; var Value: String);
    procedure tCompleteByPrint(sender: TObject; var Value: String);
  private
    FNMatter: Integer;
    FEmployeeName: String;
    FDateToShow: TDate;
    FMatterDesc: String;
    FMatterClient: String;

  public
    property NMatter: Integer read FNMatter write FNMatter;
    property EmployeeName: String read FEmployeeName write FEmployeeName;
    property DateToShow: TDate read FDateToShow write FDateToShow;
    property MatterDesc: String read FMatterDesc write FMatterDesc;
    property MatterClient: String read FMatterClient write FMatterClient;
  end;

var
  qrWorkFlowTasksReport: TqrWorkFlowTasksReport;

implementation

uses WorkFlowDataModule, MiscFunc, WorkFlowDataModuleRun;

{$R *.DFM}

procedure TqrWorkFlowTasksReport.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lEntity.Caption := SystemString('COMPANY');
  lEmployee.Caption := 'Employee: ' + EmployeeName;
  lDates.Caption    := 'For Date: ' + DateTimeToStr(DateToShow);

  dmWorkFlowDataModule.qAnyQuery.SQL.Text := 'SELECT m.shortdescr, c.name FROM matter m, client c WHERE nmatter = :nmatter AND c.nclient = m.nclient';
  dmWorkFlowDataModule.qAnyQuery.ParamByName('nmatter').AsInteger := NMatter;
  dmWorkFlowDataModule.qAnyQuery.Open();
  try
    lShortDescr.Caption := dmWorkFlowDataModule.qAnyQuery.FieldByName('shortdescr').AsString;
    lClientName.Caption := dmWorkFlowDataModule.qAnyQuery.FieldByName('name').AsString;
  finally
    dmWorkFlowDataModule.qAnyQuery.Close();
  end;
  lNMatter.Caption := dmWorkFlowDataModule.GetFileIDFromNMatter(NMatter);
end;

procedure TqrWorkFlowTasksReport.DetailBandTasksBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  LSequence: String;
  i, LDots: Integer;
begin
  LDots := 0;
  LSequence := dmWorkflowDataModuleRun.vtWorkFlowTasksReportFULLSEQUENCE.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  tFullSequence.Size.Left := 40 * LDots;
  tFullSequence.Size.Width := 400 - tFullSequence.Size.Left;
end;

procedure TqrWorkFlowTasksReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  dmWorkflowDataModuleRun.vtWorkFlowTasksReport.Active := True;
end;

procedure TqrWorkFlowTasksReport.QuickRepAfterPrint(Sender: TObject);
begin
  dmWorkflowDataModuleRun.vtWorkFlowTasksReport.Active := False;
  dmWorkflowDataModuleRun.vtWorkFlowTasksReport.Clear();
end;

procedure TqrWorkFlowTasksReport.tDaysOverduePrint(sender: TObject;
  var Value: String);
begin
  if(StrToInt(Value) < 0) then
    Value := ''
end;

procedure TqrWorkFlowTasksReport.tStartedPrint(sender: TObject;
  var Value: String);
begin
  if(Value <> '') then
    Value := FormatDateTime('dd mmm yy',dmWorkflowDataModuleRun.vtWorkFlowTasksReportSTARTED.AsDateTime);
end;

procedure TqrWorkFlowTasksReport.tCompletedPrint(sender: TObject;
  var Value: String);
begin
  if(Value <> '') then
    Value := FormatDateTime('dd mmm yy',dmWorkflowDataModuleRun.vtWorkFlowTasksReportCOMPLETED.AsDateTime);
end;

procedure TqrWorkFlowTasksReport.tSkippedPrint(sender: TObject;
  var Value: String);
begin
  if(Value <> '') then
    Value := FormatDateTime('dd mmm yy',dmWorkflowDataModuleRun.vtWorkFlowTasksReportSKIPPED.AsDateTime);
end;

procedure TqrWorkFlowTasksReport.tCompleteByPrint(sender: TObject;
  var Value: String);
begin
  if(Value <> '') then
    Value := FormatDateTime('dd mmm yy',dmWorkflowDataModuleRun.vtWorkFlowTasksReportCompleteBy.AsDateTime);
end;

end.

