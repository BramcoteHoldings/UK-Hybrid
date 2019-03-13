unit rptViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, ppParameter, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppViewr, ppDesignLayer;

type
  TfrmReportViewer = class(TForm)
    ppViewer1: TppViewer;
    ppReport: TppReport;
    pnlPreviewBar: TPanel;
    spbPreviewPrint: TSpeedButton;
    spbPreviewWhole: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    Bevel1: TBevel;
    mskPreviewPercentage: TMaskEdit;
    mskPreviewPage: TMaskEdit;
    pnlCancelButton: TPanel;
    spbPreviewCancel: TSpeedButton;
    pnlStatusBar: TPanel;
    SpeedButton1: TSpeedButton;
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewFirstClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewLastClick(Sender: TObject);
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure ppViewer1PageChange(Sender: TObject);
    procedure ppViewer1PrintStateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportViewer: TfrmReportViewer;

implementation

uses
   ppTypes;

{$R *.dfm}

procedure TfrmReportViewer.spbPreviewPrintClick(Sender: TObject);
begin
   ppViewer1.Print;
end;

procedure TfrmReportViewer.spbPreviewWholeClick(Sender: TObject);
begin
     ppViewer1.ZoomSetting := zsWholePage;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TfrmReportViewer.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TfrmReportViewer.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TfrmReportViewer.spbPreviewFirstClick(Sender: TObject);
begin
   ppViewer1.FirstPage;
end;

procedure TfrmReportViewer.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
end;

procedure TfrmReportViewer.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
end;

procedure TfrmReportViewer.spbPreviewLastClick(Sender: TObject);
begin
   ppViewer1.LastPage;
end;

procedure TfrmReportViewer.mskPreviewPageKeyPress(Sender: TObject;
  var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);

      ppViewer1.GotoPage(liPage);
    end; {if, carriage return pressed}
end;

procedure TfrmReportViewer.mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
var
  liPercentage: Integer;
begin
  if (Key = #13) then
    begin
      liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

      ppViewer1.ZoomPercentage := liPercentage;

      spbPreviewWhole.Down := False;
      spbPreviewWidth.Down := False;
      spbPreview100Percent.Down := False;

      mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
    end; {if, carriage return pressed}
end;

procedure TfrmReportViewer.ppViewer1PageChange(Sender: TObject);
begin
  mskPreviewPage.Text := IntToStr(ppViewer1.AbsolutePageNo);
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TfrmReportViewer.ppViewer1PrintStateChange(Sender: TObject);
var
  lPosition: TPoint;
begin

  if ppViewer1.Busy then
    begin
      mskPreviewPercentage.Enabled := False;
      mskPreviewPage.Enabled := False;

      pnlPreviewBar.Cursor := crHourGlass;

      ppViewer1.Cursor := crHourGlass;

      pnlStatusBar.Cursor := crHourGlass;

      spbPreviewCancel.Cursor := crArrow;

      spbPreviewCancel.Enabled := True;
    end
  else
    begin
      mskPreviewPercentage.Enabled := True;
      mskPreviewPage.Enabled := True;

      pnlPreviewBar.Cursor := crDefault;

      ppViewer1.Cursor := crDefault;

      pnlStatusBar.Cursor := crDefault;

      spbPreviewCancel.Cursor := crDefault;

      spbPreviewCancel.Enabled := False;
    end;

  {this code will force the cursor to update}
  GetCursorPos(lPosition);
  SetCursorPos(lPosition.X, lPosition.Y);
end;

procedure TfrmReportViewer.SpeedButton1Click(Sender: TObject);
begin
   ppReport.ModalPreview := True;

   ppReport.Print;
end;

end.
