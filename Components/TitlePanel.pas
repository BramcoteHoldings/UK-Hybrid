unit TitlePanel;
{ Version 1.0 ( July 2000)

  Copyright (c) 2000, Petter Holmström. All Rights Reserved.

  This is a set of visual components. It may be used freely in any application.
  This software is distributed "AS-IS" without any warranties.

  Components:

  TCustomTitlePanel:       Base class for all other components
  TTitlePanel:             Ms-Outlook- or InstallShield Express 3.0- like page-
                           header with icon and text.
  TSectionTitlePanel:      InstallShield Express 3.0-like section-header with
                           bitmap and text.
  TSectionTitleBevel:      Corel-like dialog group header.

  If you like this software, please notify me.

  My e-mail address: petter.holmstrom@parnet.fi
  My home page: http://www.parnet.fi/~pkh/

}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TIconType = (itCustom, itForm, itApplication);
  TIconAlignment = (iaLeft, iaRight);

  TCustomTitlePanel = class(TGraphicControl)
  private
    { Private declarations }
    EIcon: TIcon;
    EIconAlignment: TIconAlignment;
    EBorder: Boolean;
    EIconType: TIconType;
    ERecord: string;
    ERecFont: TFont;
    procedure SetIcon(Value: TIcon);
    procedure SetIconAlignment(Value: TIconAlignment);
    procedure SetBorder(Value: boolean);
    procedure SetIconType(Value: TIconType);
    procedure SetRecord(Value: string);
    procedure SetRecFont(Value: TFont);
    procedure IconChanged(Sender: TObject);
  protected
    { Protected declarations }
    procedure Paint; override;
    procedure CMTextChanged(var Msg: TMessage); message CM_TEXTCHANGED;
    procedure CMFontChanged(var Msg: TMessage); message CM_FONTCHANGED;
    procedure CMColorChanged(var Msg: TMessage); message CM_COLORCHANGED;
    property Border: boolean read EBorder write SetBorder;
    property Icon: TIcon read EIcon write SetIcon;
    property IconAlignment: TIconAlignment read EIconAlignment write SetIconAlignment;
    property IconType: TIconType read EIconType write SetIconType;
    property RecordText: string read ERecord write SetRecord;
    property RecordFont: TFont read ERecFont write SetRecFont;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
  end;

  TTitlePanel = class(TCustomTitlePanel)
  published
    { Published declarations }
    property Align;
    property Anchors;
    property Border;
    property Caption;
    property Constraints;
    property Color;
    property Enabled;
    property Font;
    property Icon;
    property IconAlignment;
    property IconType;
    property ParentFont;
    property RecordFont;
    property RecordText;
    property Visible;
  end;

  TSectionTitlePanel = class(TCustomTitlePanel)
  private
    { Private declarations }
    EBitmap: TBitmap;
    procedure BitmapChanged(Sender: TObject);
    procedure SetBitmap(Value: TBitmap);
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Align;
    property Anchors;
    property Bitmap: TBitmap read EBitmap write SetBitmap;
    property Border;
    property Caption;
    property Constraints;
    property Color;
    property Enabled;
    property Font;
    property ParentFont;
    property Visible;
  end;

  TSectionTitleBevel = class(TCustomTitlePanel)
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Align;
    property Anchors;
    property Caption;
    property Constraints;
    property Color;
    property Enabled;
    property Font;
    property ParentFont;
    property Visible;
  end;
  
procedure Register;

implementation

{$R *.DCR}

{ TCustomTitlePanel }

constructor TCustomTitlePanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ERecFont := TFont.Create;
  EIcon := TIcon.Create;
  EIcon.OnChange := IconChanged;
  EBorder := True;
  ControlStyle := ControlStyle + [csOpaque];
  Color := clBtnShadow;
  Width := 200;
  Height := 38;
end;

destructor TCustomTitlePanel.Destroy;
begin
  EIcon.Free;
  ERecFont.Free;
  inherited;
end;

procedure TCustomTitlePanel.CMTextChanged(var Msg: TMessage);
begin
  inherited;
  invalidate;
end;

procedure TCustomTitlePanel.CMFontChanged(var Msg: TMessage);
begin
  inherited;
  invalidate;
end;

procedure TCustomTitlePanel.CMColorChanged(var Msg: TMessage);
begin
  inherited;
  invalidate;
end;

procedure TCustomTitlePanel.Paint;
var
  R, BrdR1, BrdR2: TRect;
  x, y: Integer;
begin
  R := ClientRect;
  Canvas.Brush.Color := Self.Color;
  Canvas.FillRect(R);
  if Border then
  begin
    BrdR1 := ClientRect;
    BrdR2 := ClientRect;

    with BrdR2 do
    begin
      Left   := BrdR1.Left +1;
      Top    := BrdR1.Top +1;
      Right  := BrdR1.Right -1;
      Bottom := BrdR1.Bottom -1;
    end;

    Frame3D(Canvas, BrdR1, clBtnShadow, clBtnHighlight, 1);
    Frame3D(Canvas, BrdR2, clBlack, Self.Color, 1);
  end;
  if not EIcon.Empty then
  begin
    y := (ClientHeight - EIcon.Height) div 2;
    case EIconAlignment of
      iaRight:
      begin
        x := ClientWidth - EIcon.Width - 4;
        //Canvas.StretchDraw(Rect(x, y, x + 10, y + 10), EIcon);
        Canvas.Draw(x, y, EIcon);
        R.Left := R.Left + 8;
      end;
      else
      begin
        x := R.Left + 4;
        //Canvas.StretchDraw(Rect(x, y, x + 10, y + 10), EIcon);
         Canvas.Draw(x, y, EIcon);
        R.Left := EIcon.Width + 8;
      end;
    end;
  end
  else
    R.Left := R.Left + 8;
  R.Right := R.Right - 8;
  Canvas.Font.Assign(Self.Font);
  Canvas.Brush.Style := bsClear;
  DrawText(Canvas.Handle, PChar(Caption), Length(Caption), R, DT_SINGLELINE or DT_VCENTER);

  Canvas.Font.Assign(Self.RecordFont);
  Canvas.Brush.Style := bsClear;
  DrawText(Canvas.Handle, PChar(RecordText), Length(RecordText), R, DT_SINGLELINE or DT_VCENTER or DT_RIGHT);
end;

procedure TCustomTitlePanel.IconChanged(Sender: TObject);
begin
  Invalidate;
end;

procedure TCustomTitlePanel.SetIcon(Value: TIcon);
begin
  if EIcon <> Value then
  begin
    EIcon.Assign(Value);
    if (Owner is TForm) and (EIcon = TForm(Owner).Icon) then
      EIconType := itForm
    else if EIcon = Application.Icon then
      EIconType := itApplication
    else
      EIconType := itCustom;
  end;
end;

procedure TCustomTitlePanel.SetIconAlignment(Value: TIconAlignment);
begin
  EIconAlignment := Value;
  Invalidate;
end;

procedure TCustomTitlePanel.SetBorder(Value: boolean);
begin
  EBorder := Value;
  Invalidate;
end;

procedure TCustomTitlePanel.SetIconType(Value: TIconType);
begin
  if (Value = itForm) and (Owner is TForm) and (not TForm(Owner).Icon.Empty) then
    EIcon.Assign(TForm(Owner).Icon)
  else if Value = itApplication then
    EIcon.Assign(Application.Icon)
  else if Value = itCustom then
    // Do nothing
  else
    Exit;
  EIconType := Value;
end;

procedure TCustomTitlePanel.SetRecord(Value: string);
begin
  if ERecord <> Value then
  begin
    ERecord := Value;
    Invalidate;
  end;
end;

procedure TCustomTitlePanel.SetRecFont(Value: TFont);
begin
  if ERecFont <> Value then
  begin
    ERecFont.Assign(Value);
    Invalidate;
  end;
end;

procedure TCustomTitlePanel.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  inherited SetBounds(Aleft,ATop,AWidth,AHeight);
  Invalidate;
end;

{ TSectionTitlePanel }

constructor TSectionTitlePanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  EBitmap := TBitmap.Create;
  EBitmap.OnChange := BitmapChanged;
  EBitmap.TransparentMode := tmAuto;
  EBitmap.Transparent := True;
  Color := clBtnFace;
  Height := 20;
end;

destructor TSectionTitlePanel.Destroy;
begin
  EBitmap.Free;
  inherited;
end;

procedure TSectionTitlePanel.BitmapChanged(Sender: TObject);
begin
  Bitmap.Transparent := True;
  Invalidate;
end;

procedure TSectionTitlePanel.SetBitmap(Value: TBitmap);
begin
  if EBitmap <> Value then
    EBitmap.Assign(Value);
end;

procedure TSectionTitlePanel.Paint;
var
  R, BrdR1: TRect;
  y: Integer;
begin
  R := ClientRect;
  Canvas.Brush.Color := Self.Color;
  Canvas.FillRect(R);
  if Border then
  begin
    BrdR1 := ClientRect;
    Frame3D(Canvas, BrdR1, clBtnShadow, clBtnHighlight, 1);
  end;
  if not EBitmap.Empty then
  begin
    y := (Clientheight - EBitmap.height) div 2;
    Canvas.Draw(R.Right - EBitmap.Width - 8, y, EBitmap);
  end;
  R.Left := R.Left + 8;
  Canvas.Font.Assign(Self.Font);
  Canvas.Brush.Style := bsClear;
  DrawText(Canvas.Handle, PChar(Caption), Length(Caption), R, DT_SINGLELINE or DT_VCENTER);
end;

{ TSectionTitleBevel }

constructor TSectionTitleBevel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Color := clBtnFace;
  Height := 17;
end;

procedure TSectionTitleBevel.Paint;
var
  R: TRect;
  Y: integer;
begin
  R := ClientRect;
  Canvas.Brush.Color := Self.Color;
  Canvas.FillRect(R);
  // Draw text
  R.Left := R.Left + 8;
  Canvas.Font.Assign(Self.Font);
  Canvas.Brush.Style := bsClear;
  DrawText(Canvas.Handle, PChar(Caption), Length(Caption), R, DT_SINGLELINE or DT_VCENTER);
  // Draw border
  R.Left := R.Left + Canvas.TextWidth(Caption) + 8;
  Y := (R.Bottom - R.Top) div 2;
  Canvas.Pen.Color := clBtnShadow;
  Canvas.MoveTo(R.Left,Y);
  Canvas.LineTo(R.Right, Y);
  Canvas.Pen.Color := clBtnHighlight;
  Canvas.MoveTo(R.Left, Y+1);
  Canvas.LineTo(R.Right, Y+1);
end;

{ Procedures and Functions }

procedure Register;
begin
  RegisterComponents('3rd Party', [TTitlePanel, TSectionTitlePanel, TSectionTitleBevel]);
end;

end.


