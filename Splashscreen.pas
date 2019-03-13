unit Splashscreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxImage;

type
  TfrmSplashScreen = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    cxImage1: TcxImage;
    procedure JvImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CreateFlatRoundRgn;
  public
    { Public declarations }
  end;

var
  frmSplashScreen: TfrmSplashScreen;

implementation

{$R *.dfm}

procedure ExcludeRectRgn(var Rgn: HRGN; LeftRect, TopRect, RightRect, BottomRect: Integer);
var
  RgnEx: HRGN;
begin
  RgnEx := CreateRectRgn(LeftRect, TopRect, RightRect, BottomRect);
  CombineRgn(Rgn, Rgn, RgnEx, RGN_OR);
  DeleteObject(RgnEx);
end;

procedure TfrmSplashScreen.CreateFlatRoundRgn;
const
  CORNER_SIZE = 30;
var
  Rgn: HRGN;
begin
  with BoundsRect do
  begin
    Rgn := CreateRoundRectRgn(0, 0, Right - Left + 1, Bottom - Top + 1, CORNER_SIZE, CORNER_SIZE);
    // exclude left-bottom corner
//    ExcludeRectRgn(Rgn, 0, Bottom - Top - CORNER_SIZE div 2, CORNER_SIZE div 2, Bottom - Top + 1);
    // exclude right-bottom corner
//    ExcludeRectRgn(Rgn, Right - Left - CORNER_SIZE div 2, Bottom - Top - CORNER_SIZE div 2, Right - Left , Bottom - Top);
  end;
  // the operating system owns the region, delete the Rgn only SetWindowRgn fails
  if SetWindowRgn(Handle, Rgn, True) = 0 then
    DeleteObject(Rgn);
end;


procedure TfrmSplashScreen.FormCreate(Sender: TObject);
begin
   BorderStyle := bsNone;
   CreateFlatRoundRgn;
end;

procedure TfrmSplashScreen.JvImage1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
   try
      if Button = mbLeft then
      begin
         ReleaseCapture;
         Perform( wm_SysCommand, sc_DragMove, 0 );
//         SendMessage(frmLogin.Handle, WM_SYSCOMMAND, 61458, 0) ;
      end;
   except
   //
   end;
end;

end.
