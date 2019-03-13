unit ExpenseTemplates;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGroupBox, cxDBLookupComboBox, Vcl.Menus,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxDBEdit, DBAccess,
  Uni, MemDS;

type
  TfrmExpenseTemplates = class(TForm)
    cxGroupBox1: TcxGroupBox;
    tvExpenseTemplates: TcxGridDBTableView;
    lvExpenseTemplates: TcxGridLevel;
    grdExpenseTemplates: TcxGrid;
    cxGroupBox2: TcxGroupBox;
    grdExpenseTemplateLink: TcxGrid;
    tvExpenseTemplateLink: TcxGridDBTableView;
    lvExpenseTemplateLink: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    qryExpenseTemplates: TUniQuery;
    dsExpenseTemplates: TUniDataSource;
    tvExpenseTemplatesCODE: TcxGridDBColumn;
    tvExpenseTemplatesDESCRIPTION: TcxGridDBColumn;
    qryExpenses_Template_Link: TUniQuery;
    dsExpenses_Template_Link: TUniDataSource;
    qrySundryType: TUniQuery;
    dsSundryType: TUniDataSource;
    tvExpenseTemplateLinkEXP_TEMPLATE_CODE: TcxGridDBColumn;
    tvExpenseTemplateLinkEXPENSE_CODE: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    btnNew: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionManager1: TActionManager;
    Action1: TAction;
    DatasetInsert1: TDataSetInsert;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    tvExpenseTemplateLinkEXPENSE_DESCR: TcxGridDBColumn;
    tvExpenseTemplateLinkEXPENSE_AMOUNT: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvExpenseTemplatesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure qryExpenses_Template_LinkNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExpenseTemplates: TfrmExpenseTemplates;

implementation

{$R *.dfm}

uses
   axiomdata, miscfunc;

procedure TfrmExpenseTemplates.dxBarButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmExpenseTemplates.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryExpenseTemplates.Close;
   qrySundryType.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmExpenseTemplates.FormShow(Sender: TObject);
begin
   qrySundryType.ParamByName('entity').AsString := dmAxiom.Entity;
   qrySundryType.Open;
   qryExpenseTemplates.Open;
end;

procedure TfrmExpenseTemplates.qryExpenses_Template_LinkNewRecord(
  DataSet: TDataSet);
begin
   DataSet.FieldByName('EXP_TEMPLATE_CODE').AsString := qryExpenseTemplates.FieldByName('CODE').AsString;
end;

procedure TfrmExpenseTemplates.tvExpenseTemplatesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   qryExpenses_Template_Link.Close;
   qryExpenses_Template_Link.ParamByName('EXP_TEMPLATE_CODE').AsString := qryExpenseTemplates.FieldByName('CODE').AsString;
   qryExpenses_Template_Link.Open;
end;

end.
