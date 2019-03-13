{------------------------------------------------------------------------------}
{ Purposesoft HTMLEdit InsertPictureForm
{ Module InsertPictureForm.pas
{ Copyright Purposesoft. All rights reserved. http://www.purposesoft.com
{------------------------------------------------------------------------------}
unit InsertPictureForm;
{------------------------------------------------------------------------------}

{------------------------------------------------------------------------------}
interface
{------------------------------------------------------------------------------}

uses {vcl} Windows, Messages, SysUtils, Classes, Graphics, Controls,
           Forms, Dialogs, JPEG, StdCtrls, ExtDlgs, ExtCtrls, ComCtrls,
     {$IFDEF USE_3RD_PARTY_IMAGE_COMPONENTS}
           GraphicEX, PNGImage,
     {$ENDIF}
     {HtmlEdit} psDataChunk, psGlobals;

type
  TfrmInsertPicture = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    cbAlignment: TComboBox;
    edtWidth: TEdit;
    edtHeight: TEdit;
    edtPictureSource: TEdit;
    Button1: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    edtAlternateText: TEdit;
    btnOk: TButton;
    btnCancel: TButton;
    Panel1: TPanel;
    Image1: TImage;
    CheckBox1: TCheckBox;
    UDWidth: TUpDown;
    UDHeight: TUpDown;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure cbAlignmentChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtWidthChange(Sender: TObject);
    procedure edtHeightChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    DontChange: Boolean;
  public
    PictureFilePath: string;
    PictureFilename: string;
    PictureWidth: Integer;
    PictureHeight: Integer;
    PictureAlignment: TpsImageAlign;
    PictureOrgWidth, PictureOrgHeight: Integer;
    Alt: string;
  end;

var
  frmInsertPicture: TfrmInsertPicture;

{------------------------------------------------------------------------------}
implementation
{------------------------------------------------------------------------------}

{$R *.dfm}

{------------------------------------------------------------------------------}
procedure TfrmInsertPicture.Button1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    edtPictureSource.Text := OpenPictureDialog1.FileName;
    PictureFilePath := OpenPictureDialog1.FileName;
    PictureFilename := OpenPictureDialog1.FileName;
    Image1.Picture.LoadFromFile(PictureFilePath);
    PictureWidth := Image1.Picture.Width;
    PictureHeight := Image1.Picture.Height;
    PictureOrgHeight := Image1.Picture.Height;
    PictureOrgWidth := Image1.Picture.Width;
    UDWidth.Position := PictureWidth;
    UDHeight.Position := PictureHeight;
    DontChange := False;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertPicture.cbAlignmentChange(Sender: TObject);
begin
  PictureAlignment := TpsImageAlign(cbAlignment.ItemIndex);
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertPicture.FormCreate(Sender: TObject);
begin
  cbAlignment.ItemIndex := 0;
  PictureAlignment := TpsImageAlign(cbAlignment.ItemIndex);
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertPicture.FormActivate(Sender: TObject);
begin
  DontChange := False;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertPicture.edtWidthChange(Sender: TObject);
begin
  if (CheckBox1.Checked) and not (DontChange) and (PictureOrgWidth <> 0) then begin
    DontChange := true;
    if Image1.Picture.Graphic = nil then
      UDHeight.Position := 0
    else
      UDHeight.Position := Round((PictureOrgHeight * UDWidth.Position) / PictureOrgWidth);
    PictureWidth := UDWidth.Position;
    PictureHeight := UDHeight.Position;
    end;
    DontChange := False;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertPicture.edtHeightChange(Sender: TObject);
begin
  if (CheckBox1.Checked) and not (DontChange) and (PictureOrgHeight <> 0) then begin
    DontChange := true;
    if (Image1.Picture.Graphic = nil) then
      UDWidth.Position := 0
    else
      UDWidth.Position := Round((PictureOrgWidth * UDHeight.Position) / PictureOrgHeight);
    PictureWidth := UDWidth.Position;
    PictureHeight := UDHeight.Position;
  end;
    DontChange := False;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertPicture.FormShow(Sender: TObject);
begin
  edtPictureSource.Text := '';
  edtAlternateText.Text := '';
  UDHeight.Position := 0;
  UDWidth.Position := 0;
  Image1.Picture.Graphic := nil;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertPicture.btnOkClick(Sender: TObject);
begin
  Alt := edtAlternateText.Text;
end;

end.

