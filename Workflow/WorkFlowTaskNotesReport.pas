unit WorkFlowTaskNotesReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrWorkFlowTaskNotesReport = class(TQuickRep)
    qbPageHeaderBand: TQRBand;
    qbTitleBand: TQRBand;
    qbColumnHeaderBand: TQRBand;
    qbDetailBand: TQRBand;
    qlCompany: TQRLabel;
    qsPage: TQRSysData;
    qsPrinted: TQRSysData;
    qsReportTitle: TQRSysData;
    qlMatter: TQRLabel;
    qlTask: TQRLabel;
    qtCreated: TQRDBText;
    qtCreatedByName: TQRDBText;
    qtNote: TQRDBText;
    qlCreated: TQRLabel;
    qlNote: TQRLabel;
    qtEnteredBy: TQRLabel;
    qlMatterTitle: TQRLabel;
    qlTaskTitle: TQRLabel;
    qhBottom: TQRShape;
    procedure qbDetailBandAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    procedure SetCompany(const Value: String);
    procedure SetMatter(const Value: String);
    procedure SetTask(const Value: String);

  public
    property Company: String write SetCompany;
    property Matter: String write SetMatter;
    property Task: String write SetTask;
  end;

var
  qrWorkFlowTaskNotesReport: TqrWorkFlowTaskNotesReport;

implementation

uses WorkFlowDataModule, WorkFlowDataModuleRun;

{$R *.DFM}

{ TqrWorkFlowTaskNotesReport }

procedure TqrWorkFlowTaskNotesReport.SetCompany(const Value: String);
begin
  qlCompany.Caption := Value;
end;

procedure TqrWorkFlowTaskNotesReport.SetMatter(const Value: String);
begin
  qlMatter.Caption := Value;
end;

procedure TqrWorkFlowTaskNotesReport.SetTask(const Value: String);
begin
  qlTask.Caption := Value;
end;

procedure TqrWorkFlowTaskNotesReport.qbDetailBandAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  qhBottom.Enabled := True;
end;

procedure TqrWorkFlowTaskNotesReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qhBottom.Enabled := False;
end;

end.

