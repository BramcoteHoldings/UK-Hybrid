unit WorkFlowTaskTemplateReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrWorkFlowTaskTemplateReport = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRBand1: TQRBand;
    qrlAxiomation: TQRLabel;
    lEntity: TQRLabel;
    QRLabel6: TQRLabel;
    lWorkflowType: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    qtFullSeq: TQRDBText;
    qtTaskDescription: TQRDBText;
    qtStartsWhen: TQRDBText;
    qtDaysToComplete: TQRDBText;
    qtCompleteWhen: TQRDBText;
    qtSkipWhen: TQRDBText;
    lDocumentName: TQRLabel;
    lAddressee: TQRLabel;
    lRefersTo: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qtDueDateLink: TQRDBText;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FWorkFlowType: String;

  public
    property WorkFlowType: String read FWorkFlowType write FWorkFlowType;

  end;

var
  qrWorkFlowTaskTemplateReport: TqrWorkFlowTaskTemplateReport;

implementation

uses WorkFlowDataModule, MiscFunc, WorkFlowDataModuleTasks;

{$R *.DFM}

procedure TqrWorkFlowTaskTemplateReport.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lEntity.Caption := SystemString('COMPANY');
end;

procedure TqrWorkFlowTaskTemplateReport.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lWorkflowType.Caption := 'WorkFlow Type: ' + WorkFlowType;
end;

procedure TqrWorkFlowTaskTemplateReport.GroupHeaderBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  LSequence: String;
  i, LDots: Integer;
begin
 { LDots := 0;
  LSequence := dmWorkFlowDataModuleTasks.vtTaskTemplateReportFullSequence.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  qtFullSeq.Size.Left := 10 * LDots;
  qtFullSeq.Size.Width := 250 - qtFullSeq.Size.Left; }

{  if(Trim(dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString) <> '') then
  begin
    GroupHeader.Size.Height := 150;
  end
  else
  begin
    GroupHeader.Size.Height := 100;
  end; }

  lDocumentName.Enabled := Trim(dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString) <> '';
  lAddressee.Enabled := lDocumentName.Enabled;
  lRefersTo.Enabled := lDocumentName.Enabled;
end;

procedure TqrWorkFlowTaskTemplateReport.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  LSequence: String;
  i, LDots: Integer;
begin
//  PrintBand := Trim(dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString) <> '';
   LDots := 0;
  LSequence := dmWorkFlowDataModuleTasks.vtTaskTemplateReportFullSequence.AsString;
  for i := 1 to Length(LSequence) do
  begin
    if(LSequence[i] = '.') then
      Inc(LDots);
  end;
  qtFullSeq.Size.Left := 10 * LDots;
  qtFullSeq.Size.Width := 250 - qtFullSeq.Size.Left;

end;

procedure TqrWorkFlowTaskTemplateReport.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   PrintBand := Trim(dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString) <> '';
end;

procedure TqrWorkFlowTaskTemplateReport.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   PrintBand := Trim(dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString) <> '';
end;

end.
