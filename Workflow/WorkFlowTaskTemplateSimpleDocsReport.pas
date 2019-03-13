unit WorkFlowTaskTemplateSimpleDocsReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrWorkFlowTaskTemplateSimpleDocsReport = class(TQuickRep)
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
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    Detail: TQRBand;
    lDocumentName: TQRLabel;
    lAddressee: TQRLabel;
    lRefersTo: TQRLabel;
    GroupHeader: TQRGroup;
    qtFullSeq: TQRDBText;
    qtTaskDescription: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FWorkFlowType: String;

  public
    property WorkFlowType: String read FWorkFlowType write FWorkFlowType;

  end;

var
  qrWorkFlowTaskTemplateSimpleDocsReport: TqrWorkFlowTaskTemplateSimpleDocsReport;

implementation

uses WorkFlowDataModule, MiscFunc, WorkFlowDataModuleTasks;

{$R *.DFM}

procedure TqrWorkFlowTaskTemplateSimpleDocsReport.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lEntity.Caption := SystemString('COMPANY');
end;

procedure TqrWorkFlowTaskTemplateSimpleDocsReport.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lWorkflowType.Caption := 'WorkFlow Type: ' + WorkFlowType;
end;

procedure TqrWorkFlowTaskTemplateSimpleDocsReport.DetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := Trim(dmWorkFlowDataModuleTasks.vtTaskTemplateReportDocumentName.AsString) <> '';
end;

procedure TqrWorkFlowTaskTemplateSimpleDocsReport.GroupHeaderBeforePrint(
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
  qtFullSeq.Size.Left := 10 * LDots;
  qtFullSeq.Size.Width := 250 - qtFullSeq.Size.Left;
end;

end.
