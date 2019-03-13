unit ExpTemplateSelection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, DBAccess, Uni, MemDS,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCurrencyEdit;

type
  TfrmExpenseTemplateSelection = class(TForm)
    tvExpenseTemplate: TcxGridDBTableView;
    lvExpenseTemplate: TcxGridLevel;
    grdExpenseTemplate: TcxGrid;
    qryTemplates: TUniQuery;
    tvExpenseItems: TcxGridDBTableView;
    lvExpenseItems: TcxGridLevel;
    dsTemplates: TUniDataSource;
    qryExpItems: TUniQuery;
    dsExpItems: TUniDataSource;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    tvExpenseTemplateCODE: TcxGridDBColumn;
    tvExpenseTemplateDESCR: TcxGridDBColumn;
    tvExpenseTemplateTOTAL: TcxGridDBColumn;
    tvExpenseItemsEXP_CODE: TcxGridDBColumn;
    tvExpenseItemsCODE: TcxGridDBColumn;
    tvExpenseItemsDESCR: TcxGridDBColumn;
    tvExpenseItemsRATE: TcxGridDBColumn;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvExpenseTemplateDblClick(Sender: TObject);
  private
    { Private declarations }
    FNMatter: integer;
    bbtnClose: boolean;
    FExpTemplate: string;
  public
    { Public declarations }
    property NMatter: integer read FNMatter write FNMatter;
    property ExpTemplate: string read FExpTemplate write FExpTemplate;
  end;

var
  frmExpenseTemplateSelection: TfrmExpenseTemplateSelection;

implementation

{$R *.dfm}

uses
   axiomdata, miscfunc;

procedure TfrmExpenseTemplateSelection.btnCancelClick(Sender: TObject);
begin
   bbtnClose := True;
   Close;
end;

procedure TfrmExpenseTemplateSelection.btnOKClick(Sender: TObject);
begin
   bbtnClose := False;
end;

procedure TfrmExpenseTemplateSelection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryTemplates.Close;
   qryExpItems.Close;
end;

procedure TfrmExpenseTemplateSelection.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if (bbtnClose = False) then
   begin
      if tvExpenseTemplate.Controller.SelectedRowCount = 1 then
      begin
         FExpTemplate := tvExpenseTemplateCODE.EditValue;
         CanClose := True;
      end
      else
      begin
         MsgInfo('You need to select a Template');
         CanClose := False;
      end;
   end;
end;

procedure TfrmExpenseTemplateSelection.FormCreate(Sender: TObject);
begin
   bbtnClose := False;
end;

procedure TfrmExpenseTemplateSelection.FormShow(Sender: TObject);
begin
   qryTemplates.Open;
   qryExpItems.Open;
   grdExpenseTemplate.Views[0].Focused := True;
   grdExpenseTemplate.FocusedView.DataController.Groups.FullCollapse;
end;

procedure TfrmExpenseTemplateSelection.tvExpenseTemplateDblClick(
  Sender: TObject);
begin
   btnOK.Click
end;

end.
