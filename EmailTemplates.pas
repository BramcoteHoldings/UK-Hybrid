unit EmailTemplates;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, Uni, MemDS, dxBar, cxBlobEdit, System.Actions, Vcl.ActnList,
  Vcl.DBActns, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxContainer,
  Vcl.ImgList, dxBarDBNav, cxDBEdit, Vcl.StdCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.Menus, cxButtons, cxMemo, cxRichEdit, cxDBRichEdit,
  dd_HTMLEditor, Vcl.ComCtrls;

type
  TfrmEmailTemplates = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    qryEmailTemplate: TUniQuery;
    dsEmailTemplate: TUniDataSource;
    dxBarButton4: TdxBarButton;
    dlFile: TOpenDialog;
    ActionManager1: TActionManager;
    DatasetDelete1: TDataSetDelete;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton3: TdxBarButton;
    edTempDescr: TcxDBTextEdit;
    Label2: TLabel;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarManager1Bar2: TdxBar;
    ilstToolbar: TImageList;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    HTMLEdit: TddDBHTMLEditor;
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure barbtnEditTemplateClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmailTemplates: TfrmEmailTemplates;

implementation

{$R *.dfm}

uses
   AxiomData, EmailTemplateAddEdit, EmailTemplateRichEdit, GenEditor;

procedure TfrmEmailTemplates.barbtnEditTemplateClick(Sender: TObject);
var
   frmEmailTemplateAddEdit: TfrmEmailTemplateAddEdit;
begin
   try
      frmEmailTemplateAddEdit := TfrmEmailTemplateAddEdit.Create(Self);
      frmEmailTemplateAddEdit.qryEmailTemplate.Open;
      frmEmailTemplateAddEdit.qryEmailTemplate.Edit;
      frmEmailTemplateAddEdit.ShowModal;
   finally
      frmEmailTemplateAddEdit.Free;
      qryEmailTemplate.Refresh;
   end;
end;

procedure TfrmEmailTemplates.dxBarButton1Click(Sender: TObject);
var
   sFileName: string;
   bStream, fStream: TStream;
begin

      dlFile.Filter := 'HTM|*.htm|HTML|*.html';

      if not dlFile.Execute then
         exit;

      sFileName := dlFile.FileName;

      if qryEmailTemplate.State in [dsBrowse] then
         qryEmailTemplate.edit;

      bStream := qryEmailTemplate.CreateBlobStream(qryEmailTemplate.fieldByname('body_text'), bmReadWrite);

      fStream := TFileStream.Create(sFileName, fmOpenRead);
      bStream.CopyFrom(fStream, fStream.Size);
      bStream.free;
      fStream.free;
end;

procedure TfrmEmailTemplates.dxBarButton2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmEmailTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if dmAxiom.uniInsight.InTransaction and qryEmailTemplate.Modified then
    begin
        qryEmailTemplate.Post;
        dmAxiom.uniInsight.Commit;
        qryEmailTemplate.Close;
    end;
end;

procedure TfrmEmailTemplates.FormCreate(Sender: TObject);
begin
   qryEmailTemplate.Open;
end;


end.
