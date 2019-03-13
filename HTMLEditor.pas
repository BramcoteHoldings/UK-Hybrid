unit HTMLEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxBar, dxBarExtItems, cxClasses,
  dxRibbon, Vcl.StdCtrls, Vcl.ComCtrls, RichEditBrowser, Vcl.OleCtrls,
  SHDocVw_EWB, EwbCore, EmbeddedWB, Vcl.ImgList;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    EmbeddedWB1: TEmbeddedWB;
    RichEditWB1: TRichEditWB;
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarFontNameCombo1: TdxBarFontNameCombo;
    StatusBar1: TStatusBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarButton3: TdxBarButton;
    Images: TImageList;
    dxRibbon1Tab2: TdxRibbonTab;
    barInsert: TdxBar;
    procedure TabSheet2Show(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.dxBarButton1Click(Sender: TObject);
begin
   RichEditWB1.SelectFont;
end;

procedure TForm1.dxBarButton2Click(Sender: TObject);
begin
   RichEditWB1.SetFontColor;
end;

procedure TForm1.dxBarButton3Click(Sender: TObject);
begin
   RichEditWB1.AddBullets;
end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
   RichEditWB1.PreviewInBrowser;
//   EmbeddedWB1. := RichEditWB1.RTFText
//RichEditWB1.SetFontSize;
end;

end.
