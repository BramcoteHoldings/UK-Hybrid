unit EmployeeFindDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  cxRadioGroup, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus,
  cxGraphics, cxLookAndFeels;

type
  TEmployeeType = (etNoFilter, etPartner, etAuthor, etController, etOperator, etParaLegal);
type
  TfmEmployeeFindDialog = class(TForm)
    tbEmployee: TUniTable;
    dsEmployee: TDataSource;
    tbEmployeeCODE: TStringField;
    tbEmployeeNAME: TStringField;
    tbEmployeeTYPE: TStringField;
    tbEmployeeACTIVE: TStringField;
    tbEmployeeISPARTNER: TStringField;
    tbEmployeeISAUTHOR: TStringField;
    tbEmployeeISCONTROLLER: TStringField;
    tbEmployeeISOPERATOR: TStringField;
    Label1: TLabel;
    tbEmployeeDEPT: TStringField;
    tbEmployeeBRANCH: TStringField;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    rbPartner: TcxRadioButton;
    rbAuthor: TcxRadioButton;
    rbController: TcxRadioButton;
    rbOperator: TcxRadioButton;
    rbParaLegal: TcxRadioButton;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    rbCode: TcxRadioButton;
    rbName: TcxRadioButton;
    cbDepartment: TcxCheckBox;
    cbBranch: TcxCheckBox;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    lbEmployees: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RadioChange(Sender: TObject);
    procedure rbCodeClick(Sender: TObject);
    procedure rbNameClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    FLimitToType: Boolean;
    FLimitToEntity: String;
    function GetEmployeeCode: String;
    function GetEmployeeName: String;
    function GetEmployeeType: TEmployeeType;
    procedure SetEmployeeCode(const Value: String);
    procedure SetEmployeeType(const Value: TEmployeeType);
    { Private declarations }

    procedure SetFilter(const Value: TEmployeeType);
  public
    { Public declarations }
    property EmployeeCode: String read GetEmployeeCode write SetEmployeeCode;
    property EmployeeName: String read GetEmployeeName;
    property EmployeeType: TEmployeeType read GetEmployeeType write SetEmployeeType;
    property LimitToType: Boolean read FLimitToType write FLimitToType default False;
    property LimitToEntity: String read FLimitToEntity write FLimitToEntity;
  end;

var
  fmEmployeeFindDialog: TfmEmployeeFindDialog;

implementation

uses AxiomData, MiscFunc, Variants, Dialogs;

{$R *.dfm}

procedure TfmEmployeeFindDialog.FormCreate(Sender: TObject);
  procedure GetLabel(AControl: TRadioButton; AClass, AName: String);
  var
    LTmp: String;
  begin
    Ltmp := GetDisplayName(AClass,AName);
    if(LTmp <> '') then
     AControl.Caption := LTmp;
  end;
begin
  LimitToEntity := '';
  GetLabel(rbPartner,    'MATTER','PARTNER');
  GetLabel(rbOperator,   'MATTER','OPERATOR');
  GetLabel(rbAuthor,     'MATTER','AUTHOR');
  GetLabel(rbController, 'MATTER','CONTROLLER');
  GetLabel(rbParaLegal, 'MATTER','PARA LEGAL');

  tbEmployee.Open();
  rbCode.Checked := True;
  cbDepartment.Checked := True;
end;

procedure TfmEmployeeFindDialog.FormDestroy(Sender: TObject);
begin
  tbEmployee.Close();
end;

function TfmEmployeeFindDialog.GetEmployeeCode: String;
begin
  if(not VarIsNull(lbEmployees.EditValue)) then
    Result := lbEmployees.EditValue
  else
    Result := '';
end;

function TfmEmployeeFindDialog.GetEmployeeName: String;
begin
  if(not VarIsNull(lbEmployees.EditValue)) then
    Result := lbEmployees.Text  //  tbEmployeeNAME.AsString
  else
    Result := '';
end;

function TfmEmployeeFindDialog.GetEmployeeType: TEmployeeType;
begin
  if(rbAuthor.Checked) then
    Result := etAuthor
  else if(rbOperator.Checked) then
    Result := etOperator
  else if(rbPartner.Checked) then
    Result := etPartner
  else if(rbController.Checked) then
    Result := etController
  else if(rbParaLegal.Checked) then
    Result := etParaLegal
end;

procedure TfmEmployeeFindDialog.SetEmployeeCode(const Value: String);
begin
  lbEmployees.EditValue := Value;
end;

procedure TfmEmployeeFindDialog.SetEmployeeType(const Value: TEmployeeType);
begin
  case Value of
    etPartner:     rbPartner.Checked    := True;
    etAuthor:      rbAuthor.Checked     := True;
    etController:  rbController.Checked := True;
    etOperator:    rbOperator.Checked   := True;
    etParaLegal:   rbParaLegal.Checked  := True;
  end;

  if(FLimitToType) then
  begin
    rbPartner.Enabled    := False;
    rbAuthor.Enabled     := False;
    rbController.Enabled := False;
    rbOperator.Enabled   := False;
    rbParaLegal.Enabled  := False;

    case Value of
      etPartner:     rbPartner.Enabled    := True;
      etAuthor:      rbAuthor.Enabled     := True;
      etController:  rbController.Enabled := True;
      etOperator:    rbOperator.Enabled   := True;
      etParaLegal:   rbParaLegal.Checked  := True;
    end;
  end;
end;

procedure TfmEmployeeFindDialog.SetFilter(const Value: TEmployeeType);
var
  LFilter: String;
  LEmp: String;
begin
  if(VarIsNull(lbEmployees.EditValue)) then
    LEmp := dmAxiom.UserID
  else
    LEmp := lbEmployees.EditValue;
  tbEmployee.Filtered := False;
  try
    LFilter := 'active = ''Y''';
    case Value of
      etPartner:     LFilter := LFilter + ' AND ispartner = ''Y''';
      etAuthor:      LFilter := LFilter + ' AND isauthor = ''Y''';
      etController:  LFilter := LFilter + ' AND iscontroller = ''Y''';
      etOperator:    LFilter := LFilter + ' AND isoperator = ''Y''';
      etParaLegal:   LFilter := LFilter + ' AND isparalegal = ''Y''';
    end;
    if(cbBranch.Checked) then
      LFilter := LFilter + ' AND branch = ''' + dmAxiom.UserBranch + '''';
    if(cbDepartment.Checked) then
      LFilter := LFilter + ' AND dept = ''' + dmAxiom.UserDept + '''';
    if(LimitToEntity <> '') then
      LFilter := LFilter + ' AND entity = ''' + LimitToEntity + '''';
    tbEmployee.Filter := LFilter;
  finally
    tbEmployee.Filtered := True;
    lbEmployees.EditValue := LEmp;
  end;
end;

procedure TfmEmployeeFindDialog.RadioChange(Sender: TObject);
begin
  SetFilter(EmployeeType);
end;

procedure TfmEmployeeFindDialog.rbCodeClick(Sender: TObject);
begin
  tbEmployee.OrderFields := 'CODE';
  lbEmployees.Properties.ListFieldIndex := 0;
end;

procedure TfmEmployeeFindDialog.rbNameClick(Sender: TObject);
begin
  tbEmployee.OrderFields := 'NAME';
  lbEmployees.Properties.ListFieldIndex := 1;
end;

procedure TfmEmployeeFindDialog.OKBtnClick(Sender: TObject);
begin
  if(lbEmployees.EditValue = '') then
  begin
    MessageDlg('Please select an employee or select cancel!', mtWarning, [mbOK], 0);
    ActiveControl := lbEmployees;
    ModalResult := mrNone;
  end;
end;

end.
