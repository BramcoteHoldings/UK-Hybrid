unit WorkFlowEditDataFormDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, DB, MemDS, DBAccess, Uni, OracleUniProvider,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxClasses, dxLayoutControl;

type
  TfmWorkFlowEditDataFormDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    eName: TEdit;
    eCaption: TEdit;
    eDescription: TEdit;
    qParties: TUniQuery;
    qWorkflowTypes: TUniQuery;
    dsWorkflowTypes: TDataSource;
    dsParties: TDataSource;
    ckMatterSpecific: TCheckBox;
    dblWorkflowType: TcxLookupComboBox;
    dblPartyType: TcxLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    procedure eNameKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure bnOkClick(Sender: TObject);
    procedure dblPartyTypeChange(Sender: TObject);
  private
    FDataFormNames: TStringList;
    function GetDataFormCaption: String;
    function GetDataFormDescription: String;
    function GetDataFormWorkFlowType: String;
    function GetDataFormName: String;
    function GetDataFormPartyMatterSpecific: Boolean;
    function GetDataFormPartyType: String;
    function GetDataFormWorkFlowTypeCode: String;
    procedure SetDataFormCaption(const Value: String);
    procedure SetDataFormDescription(const Value: String);
    procedure SetDataFormName(const Value: String);
    procedure SetDataFormPartyMatterSpecific(const Value: Boolean);
    procedure SetDataFormPartyType(const Value: String);
    procedure SetDataFormWorkFlowTypeCode(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property DataFormName:                String   read GetDataFormName                 write SetDataFormName;
    property DataFormCaption:             String   read GetDataFormCaption              write SetDataFormCaption;
    property DataFormDescription:         String   read GetDataFormDescription          write SetDataFormDescription;
    property DataFormWorkFlowTypeCode:    String   read GetDataFormWorkFlowTypeCode     write SetDataFormWorkFlowTypeCode;
    property DataFormWorkFlowType:        String   read GetDataFormWorkFlowType; // read only.
    property DataFormPartyType:           String   read GetDataFormPartyType            write SetDataFormPartyType;
    property DataFormPartyMatterSpecific: Boolean  read GetDataFormPartyMatterSpecific  write SetDataFormPartyMatterSpecific;
    property DataFormNames:               TStringList  read FDataFormNames              write FDataFormNames;
  end;

var
  fmWorkFlowEditDataFormDialog: TfmWorkFlowEditDataFormDialog;

implementation

{$R *.dfm}
uses
  Variants, Dialogs, axiomdata;

procedure TfmWorkFlowEditDataFormDialog.eNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key in ['a'..'z']) then
    Key := UpCase(Key);
  if not (Key in ['A'..'Z','0'..'9','_',#9,#8]) then
    Key := #0;
end;

procedure TfmWorkFlowEditDataFormDialog.FormCreate(Sender: TObject);
begin
  qParties.Open();
  qWorkflowTypes.Open();
end;

function TfmWorkFlowEditDataFormDialog.GetDataFormCaption: String;
begin
  Result := eCaption.Text;
end;

function TfmWorkFlowEditDataFormDialog.GetDataFormDescription: String;
begin
  Result := eDescription.Text;
end;

function TfmWorkFlowEditDataFormDialog.GetDataFormWorkFlowType: String;
begin
  Result := '';
  if(not VarIsNull(dblWorkflowType.EditValue)) then
    Result := dblWorkflowType.Text;
end;

function TfmWorkFlowEditDataFormDialog.GetDataFormName: String;
begin
  Result := eName.Text;
end;

function TfmWorkFlowEditDataFormDialog.GetDataFormPartyMatterSpecific: Boolean;
begin
  Result := ckMatterSpecific.Checked;
end;

function TfmWorkFlowEditDataFormDialog.GetDataFormPartyType: String;
begin
  Result := '';
  if(not VarIsNull(dblPartyType.EditValue)) then
    Result := VarToStr(dblPartyType.EditValue);
end;

function TfmWorkFlowEditDataFormDialog.GetDataFormWorkFlowTypeCode: String;
begin
  Result := '';
  if(not VarIsNull(dblWorkflowType.EditValue)) then
    Result := VarToStr(dblWorkflowType.EditValue);
end;

procedure TfmWorkFlowEditDataFormDialog.SetDataFormCaption(
  const Value: String);
begin
  eCaption.Text := Value;
end;

procedure TfmWorkFlowEditDataFormDialog.SetDataFormDescription(
  const Value: String);
begin
  eDescription.Text := Value;
end;

procedure TfmWorkFlowEditDataFormDialog.SetDataFormName(
  const Value: String);
begin
  eName.Text := Value;
end;

procedure TfmWorkFlowEditDataFormDialog.SetDataFormPartyMatterSpecific(
  const Value: Boolean);
begin
  ckMatterSpecific.Checked := Value;
end;

procedure TfmWorkFlowEditDataFormDialog.SetDataFormPartyType(
  const Value: String);
begin
  if(Value <> '') then
    dblPartyType.EditValue := Value
  else
    dblPartyType.Clear;
end;

procedure TfmWorkFlowEditDataFormDialog.SetDataFormWorkFlowTypeCode(
  const Value: String);
begin
  if(Value <> '') then
    dblWorkflowType.EditValue := Value
  else
    dblWorkflowType.Clear;
end;

procedure TfmWorkFlowEditDataFormDialog.bnOkClick(Sender: TObject);
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

  if(not CheckField(DataFormName,'Name',eName)) then
    Exit;

  if(FDataFormNames.IndexOf(DataFormName) > 0) then
  begin
    MessageBeep(MB_ICONERROR);
    MessageDlg('A Data Form named ''' + DataFormName + ''' already exists!', mtError, [mbOK], 0);
    ActiveControl := eName;
    Exit;
  end;

  if(not CheckField(DataFormCaption,'Caption',eCaption)) then
    Exit;
  if(not CheckField(DataFormDescription,'Description',eDescription)) then
    Exit;
  ModalResult := mrOk;
end;

procedure TfmWorkFlowEditDataFormDialog.dblPartyTypeChange(
  Sender: TObject);
begin
  if(VarIsNull(dblPartyType.EditValue)) then
  begin
    ckMatterSpecific.Enabled := False;
    ckMatterSpecific.Checked := False;
  end else
  begin
    ckMatterSpecific.Enabled := True;
  end;
end;

end.
