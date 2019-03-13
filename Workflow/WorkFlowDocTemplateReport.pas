unit WorkFlowDocTemplateReport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrWorkFlowDocTemplateReport = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    qrlAxiomation: TQRLabel;
    lEntity: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    lWorkflowType: TQRLabel;
    QRBand3: TQRBand;
    GroupHeader: TQRGroup;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    lAddressee: TQRLabel;
    lRefersTo: TQRLabel;
    lDocumentName: TQRLabel;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FAdminDocs: Boolean;
    FWorkFlowType: String;
  public
    property AdminDocs: Boolean read FAdminDocs write FAdminDocs;
    property WorkFlowType: String read FWorkFlowType write FWorkFlowType;
  end;

var
  qrWorkFlowDocTemplateReport: TqrWorkFlowDocTemplateReport;

implementation

uses WorkFlowDataModule, MiscFunc;

{$R *.DFM}

procedure TqrWorkFlowDocTemplateReport.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lEntity.Caption := SystemString('COMPANY');
end;

procedure TqrWorkFlowDocTemplateReport.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if(FAdminDocs) then
    lWorkflowType.Caption := 'Admin Documents'
  else
    lWorkflowType.Caption := 'WorkFlow Type: ' + WorkFlowType;
end;

end.
