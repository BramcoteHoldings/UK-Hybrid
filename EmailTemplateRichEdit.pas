unit EmailTemplateRichEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Data.DB, DBAccess, Uni, MemDS, cxTextEdit, cxDBEdit, Vcl.Buttons;

type
  TfrmEmailTemplateRichEdit = class(TForm)
    cxDBTextEdit1: TcxDBTextEdit;
    qryEmailTemplate: TUniQuery;
    dsEmailTemplate: TUniDataSource;
    btRichEdit: TcxButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure btRichEditClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmailTemplateRichEdit: TfrmEmailTemplateRichEdit;

implementation

{$R *.dfm}

uses
  AxiomData, GenEditor;

procedure TfrmEmailTemplateRichEdit.BitBtn1Click(Sender: TObject);
begin
    qryEmailTemplate.FieldByName('TYPE').AsString := 'R';
   qryEmailTemplate.Post;
   dmAxiom.uniInsight.Commit;
   Close;
end;

procedure TfrmEmailTemplateRichEdit.BitBtn2Click(Sender: TObject);
begin
    if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
    Close;
end;

procedure TfrmEmailTemplateRichEdit.btRichEditClick(Sender: TObject);
var
   LfrmNotesMatter: TfrmGenEditor; {TfrmNotesMatter;}
begin
   try
      if not dmAxiom.uniInsight.InTransaction then
      begin
          qryEmailTemplate.Open;
          qryEmailTemplate.Edit;
          dmAxiom.uniInsight.StartTransaction;
      end;
      qryEmailTemplate.FieldByName('TYPE').AsString := 'R';
      qryEmailTemplate.Post;
      dmAxiom.uniInsight.Commit;
      if not dmAxiom.uniInsight.InTransaction then
      begin
          qryEmailTemplate.Open;
          qryEmailTemplate.Edit;
          dmAxiom.uniInsight.StartTransaction;
      end;
      LfrmNotesMatter := TfrmGenEditor.Create(Self);
      LfrmNotesMatter.DisplayEmailNotes(qryEmailTemplate.FieldByName('ID').AsInteger);
      if LfrmNotesMatter.ShowModal = mrOK then
//      dxbtnRefresh.Click;
   finally
      LfrmNotesMatter.Free;
   end;
end;

end.
