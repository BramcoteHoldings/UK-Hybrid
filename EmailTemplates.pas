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
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmEmailTemplates = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    barbtnEditTemplate: TdxBarButton;
    qryEmailTemplate: TUniQuery;
    dsEmailTemplate: TUniDataSource;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1BODY_TEXT: TcxGridDBColumn;
    cxGrid1DBTableView1SYSTEM_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1WHO: TcxGridDBColumn;
    dxBarButton4: TdxBarButton;
    dlFile: TOpenDialog;
    ActionManager1: TActionManager;
    DatasetDelete1: TDataSetDelete;
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure barbtnEditTemplateClick(Sender: TObject);
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
   AxiomData, EmailTemplateAddEdit;

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
   frmEmailTemplateAddEdit: TfrmEmailTemplateAddEdit;
begin
   try
      frmEmailTemplateAddEdit := TfrmEmailTemplateAddEdit.Create(Self);
      frmEmailTemplateAddEdit.qryEmailTemplate.Open;
      frmEmailTemplateAddEdit.qryEmailTemplate.Insert;
      frmEmailTemplateAddEdit.ShowModal;
   finally
      frmEmailTemplateAddEdit.Free;
      qryEmailTemplate.Refresh;
   end;
end;

procedure TfrmEmailTemplates.dxBarButton2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmEmailTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryEmailTemplate.Close;
end;

procedure TfrmEmailTemplates.FormCreate(Sender: TObject);
begin
   qryEmailTemplate.Open;
end;

end.
