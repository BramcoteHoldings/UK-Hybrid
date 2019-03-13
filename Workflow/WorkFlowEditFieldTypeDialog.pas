unit WorkFlowEditFieldTypeDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TDataFieldType = (dftText, dftCurrency, dftInteger, dftDate);
var
  TDataFieldTypeCode:    array [TDataFieldType] of string = ('T','C','I','D');
  TDataFieldTypeCaption: array [TDataFieldType] of string = ('Text','Currency','Integer','Date');
type
  TfmWorkFlowEditFieldType = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    eName: TEdit;
    lName: TLabel;
    lCaption: TLabel;
    eCaption: TEdit;
    lDesc: TLabel;
    eDescription: TEdit;
    lFormat: TLabel;
    eFormat: TEdit;
    rbText: TRadioButton;
    lType: TLabel;
    rbInteger: TRadioButton;
    rbCurrency: TRadioButton;
    rbDate: TRadioButton;
    procedure bnOkClick(Sender: TObject);
    procedure eNameKeyPress(Sender: TObject; var Key: Char);
    procedure eCaptionExit(Sender: TObject);
  private
    FFieldNames: TStringList;
    function GetFieldCaption: String;
    function GetFieldDescription: String;
    function GetFieldFormat: String;
    function GetFieldName: String;
    function GetFieldType: TDataFieldType;
    procedure SetFieldCaption(const Value: String);
    procedure SetFieldDescription(const Value: String);
    procedure SetFieldFormat(const Value: String);
    procedure SetFieldName(const Value: String);
    procedure SetFieldType(const Value: TDataFieldType);
    { Private declarations }
  public
    { Public declarations }
    property FieldName:         String          read GetFieldName         write SetFieldName;
    property FieldCaption:      String          read GetFieldCaption      write SetFieldCaption;
    property FieldDescription:  String          read GetFieldDescription  write SetFieldDescription;
    property FieldType:         TDataFieldType  read GetFieldType         write SetFieldType;
    property FieldFormat:       String          read GetFieldFormat       write SetFieldFormat;
    property FieldNames:        TStringList     read FFieldNames          write FFieldNames;
  end;

var
  fmWorkFlowEditFieldType: TfmWorkFlowEditFieldType;

implementation

uses
  Dialogs;

{$R *.dfm}

{ TfmWorkFlowEditFieldType }

function TfmWorkFlowEditFieldType.GetFieldCaption: String;
begin
  Result := eCaption.Text;
end;

function TfmWorkFlowEditFieldType.GetFieldDescription: String;
begin
  Result := eDescription.Text;
end;

function TfmWorkFlowEditFieldType.GetFieldFormat: String;
begin
  Result := eFormat.Text;
end;

function TfmWorkFlowEditFieldType.GetFieldName: String;
begin
  Result := eName.Text;
end;

function TfmWorkFlowEditFieldType.GetFieldType: TDataFieldType;
begin
  Result := dftText;
  if(rbText.Checked) then
    Result := dftText;
  if(rbCurrency.Checked) then
    Result := dftCurrency;
  if(rbInteger.Checked) then
    Result := dftInteger;
  if(rbDate.Checked) then
    Result := dftDate;
end;

procedure TfmWorkFlowEditFieldType.SetFieldCaption(const Value: String);
begin
  eCaption.Text := Value;
end;

procedure TfmWorkFlowEditFieldType.SetFieldDescription(
  const Value: String);
begin
  eDescription.Text := Value;
end;

procedure TfmWorkFlowEditFieldType.SetFieldFormat(const Value: String);
begin
  eFormat.Text := Value;
end;

procedure TfmWorkFlowEditFieldType.SetFieldName(const Value: String);
begin
  eName.Text := Value;
end;

procedure TfmWorkFlowEditFieldType.SetFieldType(const Value: TDataFieldType);
begin
  case Value of
    dftText:      rbText.Checked := True;
    dftCurrency:  rbCurrency.Checked := True;
    dftInteger:   rbInteger.Checked := True;
    dftDate:      rbDate.Checked := True;
  end;
end;

procedure TfmWorkFlowEditFieldType.bnOkClick(Sender: TObject);
  function CheckField(AValue, AField: String; AControl: TWinControl): Boolean;
  begin
    Result := Trim(AValue) <> '';
    if(not Result) then
    begin
      MessageBeep(MB_ICONERROR);
      MessageDlg('Please enter a ' + AField + '!', mtError, [mbOK], 0);
      ActiveControl := AControl;
    end;
  end;
begin
  ModalResult := mrNone;

  if(not CheckField(FieldName,'Name',eName)) then
    Exit;

  if(FFieldNames.IndexOf(FieldName) > 0) then
  begin
    MessageBeep(MB_ICONERROR);
    MessageDlg('A Field Type named ''' + FieldName + ''' already exists!', mtError, [mbOK], 0);
    ActiveControl := eName;
    Exit;
  end;

  if(not CheckField(FieldCaption,'Caption',eCaption)) then
    Exit;
  if(not CheckField(FieldDescription,'Description',eDescription)) then
    Exit;

  if((not rbText.Checked) and
     (not rbInteger.Checked) and
     (not rbCurrency.Checked) and
     (not rbDate.Checked)) then
  begin
    MessageBeep(MB_ICONERROR);
    MessageDlg('Please select a field type!', mtError, [mbOK], 0);
    ActiveControl := rbText;
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure TfmWorkFlowEditFieldType.eNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key in ['a'..'z']) then
    Key := UpCase(Key);
  if not (Key in ['A'..'Z','0'..'9','_',#9,#8]) then
    Key := #0;
end;

procedure TfmWorkFlowEditFieldType.eCaptionExit(Sender: TObject);
begin
  if(FieldDescription = '') then
    FieldDescription := FieldCaption;
end;

end.
