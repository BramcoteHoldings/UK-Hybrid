unit WorkFlowTaskTemplateSimpleReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrWorkFlowTaskTemplateSimpleReport = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    qrlAxiomation: TQRLabel;
    lEntity: TQRLabel;
    QRLabel6: TQRLabel;
    lWorkflowType: TQRLabel;
    ColumnHeader: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel9: TQRLabel;
    Detail: TQRBand;
    qtSkipWhen: TQRDBText;
    qtCompleteWhen: TQRDBText;
    qtDaysToComplete: TQRDBText;
    qtStartsWhen: TQRDBText;
    qtTaskDescription: TQRDBText;
    qtFullSeq: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FWorkFlowType: String;

  public
    property WorkFlowType: String read FWorkFlowType write FWorkFlowType;

  end;

var
  qrWorkFlowTaskTemplateSimpleReport: TqrWorkFlowTaskTemplateSimpleReport;

implementation

uses WorkFlowDataModule, MiscFunc, WorkFlowDataModuleTasks;

{$R *.DFM}

procedure TqrWorkFlowTaskTemplateSimpleReport.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lEntity.Caption := SystemString('COMPANY');
end;

procedure TqrWorkFlowTaskTemplateSimpleReport.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lWorkflowType.Caption := 'WorkFlow Type: ' + WorkFlowType;
end;

procedure TqrWorkFlowTaskTemplateSimpleReport.DetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  LSequence: String;
  i, LDots: Integer;
begin
  LDots := 0;
  LSequence := dmWorkFlowDataModuleTasks.vtTaskTemplateReportFullSequence.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  qtFullSeq.Size.Left := 25 * LDots;
  qtFullSeq.Size.Width := 250 - qtFullSeq.Size.Left;
end;

end.
