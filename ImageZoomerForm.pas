{------------------------------------------------------------------------------}
{ Purposesoft HTMLEdit Demo Application
{ Module ImageZoomerForm
{ Copyright Purposesoft. All rights reserved. http://www.purposesoft.com
{------------------------------------------------------------------------------}
unit ImageZoomerForm;
{------------------------------------------------------------------------------}

{$I 'psDefines.inc'}

{------------------------------------------------------------------------------}
interface
{------------------------------------------------------------------------------}

uses {vcl} Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
           {$IFDEF DELPHI6UP}
           Variants,
           {$ENDIF}
           Dialogs, StdCtrls, ExtCtrls, ComCtrls,
     {HTMLEdit} psHtmlEdit;

type
  Tfrm_ImageZoomer = class(TForm)
    PageControl: TPageControl;
    ts_Zoomer: TTabSheet;
    HtmlEdit: TpsHtmlEdit;
    ts_Source: TTabSheet;
    re_Source: TRichEdit;
    btn_Close: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure HtmlEditRequestImage(iSender:TObject;iImageID,iWidth,iHeight:integer;
                                   var oGraphic:TGraphic;var oGraphicContainer:TObject);
    procedure HtmlEditImageClicked(iSender:TObject;iImage:TpsImage;iButton:TMouseButton;
                                   const iPoint:TPoint;var oSelectImage:boolean);
  private { fields }
    fImage: string;
  public { properties }
    property Image: string read fImage write fImage;
  public { methods }
    function ShowModal():integer; override;
  end;

var
  frm_ImageZoomer: Tfrm_ImageZoomer;

{------------------------------------------------------------------------------}
implementation
{------------------------------------------------------------------------------}

{$R *.dfm}

{------------------------------------------------------------------------------}
{ helper routines
{------------------------------------------------------------------------------}
function HTMLEditBaseDir(): string;
begin
  result := ExtractFilePath(ParamStr(0));
end;

{------------------------------------------------------------------------------}
{------------------------------------------------------------------------------}
{ Tfrm_ImageZoomer
{------------------------------------------------------------------------------}
{------------------------------------------------------------------------------}
function Tfrm_ImageZoomer.ShowModal():integer;
var lSourceFile: TFileStream;
    lSourceString: TStringStream;
    lZoomImage: string;
    lDocument: string;
begin
  { Load the source code of this .pas file into the "Source" tabsheet in order
    to demonstrate how easy it is to get going using the component. }
  re_Source.Clear();
  lSourceFile := TFileStream.Create(HTMLEditBaseDir() + 'ImageZoomerForm.pas',fmOpenRead);
  try
    lSourceString := TStringStream.Create('');
    try
      lSourceString.CopyFrom(lSourceFile,0);
      re_Source.Lines.Add(lSourceString.DataString);
    finally
      FreeAndNil(lSourceString);
    end;
  finally
    FreeAndNil(lSourceFile);
  end;

  { Create a simple HTML document showing the zoom image and assign it to the
    component's "Text" property. }
  lDocument := '<p class="heading1">'+
                 '<b>HTML</b>Edit Image Zoomer' +
               '</p>' +
               '<p class="gray_border_box" style="text-align:center">';
  lZoomImage := HTMLEditBaseDir() + 'Zoom ' + Image;
  if FileExists(lZoomImage) then
    lDocument := lDocument + '<img align="middle" src="Zoom ' + Image + '" /></p>'
  else
    lDocument := lDocument + 'no zoom image available for this image</p>';
  HtmlEdit.Text := lDocument;

  { Activate the "Zoomer" tabsheet and show the form. }
  PageControl.ActivePage := ts_Zoomer;
  result := inherited ShowModal();
end;

{------------------------------------------------------------------------------}
procedure Tfrm_ImageZoomer.HtmlEditRequestImage(iSender:TObject;iImageID,iWidth,iHeight:integer;
  var oGraphic:TGraphic;var oGraphicContainer:TObject);
var lImageFilename: string;
    lPicture: TPicture;
begin
  lImageFilename := HTMLEditBaseDir() + HtmlEdit.GetImageUrl(iImageID);
  if FileExists(lImageFilename) then begin
    lPicture := TPicture.Create();
    try
      lPicture.LoadFromFile(lImageFilename);
      oGraphic := lPicture.Graphic;
    except
      FreeAndNil(lPicture);
    end;
  end
end;

{------------------------------------------------------------------------------}
procedure Tfrm_ImageZoomer.HtmlEditImageClicked(iSender:TObject;iImage:TpsImage;
  iButton:TMouseButton;const iPoint:TPoint;var oSelectImage:boolean);
begin
  oSelectImage := false;
end;

end.
