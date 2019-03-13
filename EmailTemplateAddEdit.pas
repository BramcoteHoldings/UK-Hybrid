unit EmailTemplateAddEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Data.DB, DBAccess, Uni,
  MemDS, cxButtons, Vcl.StdCtrls, cxTextEdit, cxDBEdit,
  Vcl.Buttons, dxCore, dxCoreClasses, dxGDIPlusAPI, dxGDIPlusClasses,
  dxRichEdit.NativeApi, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core;

type
  TfrmEmailTemplateAddEdit = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    btnHTML: TcxButton;
    qryEmailTemplate: TUniQuery;
    dsEmailTemplate: TUniDataSource;
    dlFile: TOpenDialog;
    HTMLTemplate: TdxRichEditControl;
    procedure btnHTMLClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmailTemplateAddEdit: TfrmEmailTemplateAddEdit;

implementation

{$R *.dfm}

uses
   axiomdata;

procedure TfrmEmailTemplateAddEdit.BitBtn1Click(Sender: TObject);
begin
   qryEmailTemplate.Post;
   dmAxiom.uniInsight.Commit;
   Close;
end;

procedure TfrmEmailTemplateAddEdit.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmEmailTemplateAddEdit.btnHTMLClick(Sender: TObject);
var
   sFileName: string;
   bStream, fStream: TStream;
begin
   dlFile.Filter := 'HTM|*.htm|HTML|*.html';

   if not dlFile.Execute then
      exit;

   sFileName := dlFile.FileName;

//   HTMLTemplate.

   if qryEmailTemplate.State in [dsBrowse] then
      qryEmailTemplate.edit;

   bStream := qryEmailTemplate.CreateBlobStream(qryEmailTemplate.fieldByname('body_text'), bmReadWrite);

   fStream := TFileStream.Create(sFileName, fmOpenRead);
   bStream.CopyFrom(fStream, fStream.Size);
   bStream.free;
   fStream.free;
end;

procedure TfrmEmailTemplateAddEdit.FormCreate(Sender: TObject);
begin
   dmAxiom.uniInsight.StartTransaction;
end;

end.
