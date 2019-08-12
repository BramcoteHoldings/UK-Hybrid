unit BudgetEntryDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DB,  OracleUniProvider, Uni, DBAccess, MemDS, DBCtrls,
  Mask, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxCurrencyEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus, cxGraphics,
  cxLookAndFeels, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxClasses, dxLayoutControl;
const
  C_DEPTWHERE = 'AND dept = :dept';
type
  TfmBudgetEntryDialog = class(TForm)
    qBudget: TUniQuery;
    dsBudget: TUniDataSource;
    qEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    qEmployeeCODE: TStringField;
    qEmployeeNAME: TStringField;
    qEmployeeDEPT: TStringField;
    qAccountCodes: TUniQuery;
    dsAccountCodes: TUniDataSource;
    qAccountCodesKEY: TStringField;
    qAccountCodesDISPLAY: TStringField;
    qMonth: TUniQuery;
    dsMonth: TUniDataSource;
    qMonthKEY: TFloatField;
    qMonthVALUE: TStringField;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    cbYear: TcxDBComboBox;
    cbMonth: TcxDBLookupComboBox;
    eBilledFees: TcxDBCurrencyEdit;
    eWIP: TcxDBCurrencyEdit;
    eTime: TcxDBTextEdit;
    eAccountValue: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    qBudgetROWID: TStringField;
    qBudgetNBUDGET: TFloatField;
    qBudgetENTITY: TStringField;
    qBudgetCREATED: TDateTimeField;
    qBudgetPERIOD: TFloatField;
    qBudgetCALENDAR_YEAR: TFloatField;
    qBudgetEMPLOYEE: TStringField;
    qBudgetDEPARTMENT: TStringField;
    qBudgetACCOUNTCODE: TStringField;
    qBudgetACCOUNTVALUE: TFloatField;
    qBudgetBILLEDFEES: TFloatField;
    qBudgetWIP: TFloatField;
    qBudgetTIME: TFloatField;
    qBudgetFINANCIAL_YEAR: TFloatField;
    qBudgetMONTH: TFloatField;
    cbEmployee: TcxDBLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    procedure cbEmployeeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qBudgetBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CancelBtnClick(Sender: TObject);
  private
    FNBudget: Integer;
    FDepartment: String;
    FAccountCode: String;
    FEmployee: String;
    { Private declarations }
  public
    { Public declarations }
    property NBudget: Integer read FNBudget write FNBudget;
    property Employee: String read FEmployee write FEmployee;
    property Department: String read FDepartment write FDepartment;
    property AccountCode: String read FAccountCode write FAccountCode;
  end;

var
  fmBudgetEntryDialog: TfmBudgetEntryDialog;

implementation

uses AxiomData, miscfunc;

{$R *.dfm}

procedure TfmBudgetEntryDialog.cbEmployeeChange(Sender: TObject);
begin
  qBudgetDEPARTMENT.AsString := qEmployeeDEPT.AsString;
end;

procedure TfmBudgetEntryDialog.FormShow(Sender: TObject);
begin
  if(Department <> '') then
  begin
    qEmployee.SQL.Delete(qEmployee.SQL.Count - 2);
    qEmployee.SQL.Insert(qEmployee.SQL.Count - 1,C_DEPTWHERE);
    qEmployee.ParamByName('dept').AsString := Department;
  end;

  qEmployee.ParamByName('entity').AsString := dmAxiom.Entity;
  qEmployee.Open();
  qAccountCodes.ParamByName('entity').AsString := dmAxiom.Entity;
  qAccountCodes.Open();
  qMonth.Open();

  qBudget.Close;
  qBudget.ParamByName('nbudget').AsInteger := NBudget;
  qBudget.Open;
  qBudget.Edit();
  if(NBudget = 0) then
  begin
    qBudgetENTITY.AsString := dmAxiom.Entity;
    if(Employee <> '') then
      qBudgetEMPLOYEE.AsString := Employee;

    if(AccountCode <> '') then
      qBudgetACCOUNTCODE.AsString := AccountCode;
  end;
end;

procedure TfmBudgetEntryDialog.OKBtnClick(Sender: TObject);
begin
   qBudget.Post();
   if(NBudget = 0) then
      NBudget := qBudgetNBUDGET.AsInteger;
   if(qBudget.State in [dsInsert, dsEdit] ) then
      qBudget.Close();
end;

procedure TfmBudgetEntryDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if(qBudget.Active) then
      qBudget.Refresh();
   qEmployee.Close();
   qAccountCodes.Close();
   qMonth.Close();
end;

procedure TfmBudgetEntryDialog.qBudgetBeforePost(DataSet: TDataSet);
begin
   qBudget.FieldByName('DEPARTMENT').AsString := qEmployee.FieldByName('DEPT').AsString;
   qBudget.FieldByName('FINANCIAL_YEAR').AsInteger := cbYear.EditValue;
   qBudget.FieldByName('MONTH').AsInteger := cbMonth.ItemIndex;
end;

procedure TfmBudgetEntryDialog.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if qBudget.Modified then
   begin
      if MsgAsk('Do you want to save your changes?') = mrYes then
         qBudget.Post
      else
         qBudget.Cancel;
   end
   else
      qBudget.Cancel;
end;

procedure TfmBudgetEntryDialog.CancelBtnClick(Sender: TObject);
begin
   Close;
end;

end.
