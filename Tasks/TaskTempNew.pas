unit TaskTempNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  MemDS, Ora, OracleUniProvider, Uni, DBAccess;

type
  TfrmTaskTempNew = class(TForm)
    qryTask: TUniQuery;
    Label5: TLabel;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    Label1: TLabel;
    tbCode: TEdit;
    mmoDesc: TMemo;
    chkMaster: TCheckBox;
    Label2: TLabel;
    qryTaskItem: TUniQuery;
    tbWorkflowType: TEdit;
    btnWorkflowType: TBitBtn;
    gbSchedule: TGroupBox;
    Label3: TLabel;
    neDays: TNumberEdit;
    Label4: TLabel;
    cbDateField: TComboBox;
    qryTmp: TUniQuery;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnWorkflowTypeClick(Sender: TObject);
    procedure cbDateFieldDropDown(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbDateFieldChange(Sender: TObject);
    procedure cbDateFieldExit(Sender: TObject);
  private
    bEditing, bScheduleFieldTouched: Boolean;
    sOldScheduleFieldValue: string;
    function OKtoPost : Boolean;
  public
    procedure FindTemplate(TemplateCode: string);
  end;

var
  frmTaskTempNew: TfrmTaskTempNew;

implementation

uses
  AxiomData, GenericSearch, MiscFunc;

{$R *.DFM}


function TfrmTaskTempNew.OKtoPost : Boolean;
var
  sTmp : String;
begin
  OKtoPost := True;
  sTmp := '';
  if tbCode.Text = '' then
    sTmp := '       Task Code' + Chr(13);
  if mmoDesc.Text = '' then
    sTmp := '       Description' + Chr(13);
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Task details before saving:    ' + Chr(13) + Chr(13) + sTmp);
    OKtoPost := False;
  end;
end;

procedure TfrmTaskTempNew.FindTemplate(TemplateCode: string);
begin
  // we are editing the template
  bEditing := True;
  with qryTask do
  begin
    ParamByName('P_Code').AsString := TemplateCode;
    Open;
    tbCode.Text := FieldByName('CODE').AsString;
    mmoDesc.Text := FieldByName('DESCR').AsString;
    tbWorkflowType.Text := FieldByName('WORKFLOWTYPE').AsString;
    neDays.AsInteger := FieldByName('DAYS').AsInteger;
    cbDateField.Items.Clear;
    cbDateField.Items.Add(FieldByName('SCHEDULEFIELD').AsString);
    cbDateField.ItemIndex := 0;
    if FieldByName('MASTER').AsString = 'Y' then
      chkMaster.Checked := True
    else
      chkMaster.Checked := False;
  end;
end;


procedure TfrmTaskTempNew.btnSaveClick(Sender: TObject);

  procedure SetTaskTempFields;
  begin
    qryTask.FieldByName('CODE').AsString := tbCode.Text;
    qryTask.FieldByName('DESCR').AsString := mmoDesc.Text;
    qryTask.FieldByName('WORKFLOWTYPE').AsString := tbWorkflowType.Text;
    qryTask.FieldByName('DAYS').AsInteger := neDays.AsInteger;
    if chkMaster.Checked then
      qryTask.FieldByName('MASTER').AsString := 'Y'
    else
      qryTask.FieldByName('MASTER').AsString := 'N';
    qryTask.FieldByName('SCHEDULEFIELD').AsString := cbDateField.Text;
  end;

begin
  if OKtoPost then
  begin
    with qryTask do
    begin
      Close;
      ParamByName('P_Code').AsString := tbCode.Text;
      Prepare;
      Open;
    end;
    if not(bEditing) then
    begin
      // check to see if the template code exists - unusual method
      // if the template code does not exist then insert the newly created code
      if qryTask.EOF then
      begin
        qryTask.Insert;
        SetTaskTempFields();
        qryTask.Post;

        // Make a Task Item for this task
        with qryTaskItem do
        begin
          Close;
          ParamByName('P_Code').AsString := tbCode.Text;
          Prepare;
          Open;
        end;
        if qryTaskItem.EOF then
        begin
          qryTaskItem.Insert;
          qryTaskItem.FieldByName('CODE').AsString := tbCode.Text;
          qryTaskItem.FieldByName('TYPE').AsString := 'Task';
          qryTaskItem.FieldByName('REASON').AsString := mmoDesc.Text;
          qryTaskItem.FieldByName('DAYS').AsInteger := neDays.AsInteger;
          qryTaskItem.FieldByName('CONFIRM').AsString := 'N';
          qryTaskItem.Post;
        end;
      end
      else
        MsgErr('This Task code has already been entered');
    end
    else
    begin
      qryTask.Edit;
      SetTaskTempFields();
      qryTask.Post;
    end;
    Self.Close;
  end;
end;


procedure TfrmTaskTempNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TfrmTaskTempNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryTask.Close;
  qryTaskItem.Close;

  Action := caFree;
end;


procedure TfrmTaskTempNew.btnWorkflowTypeClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM WORKFLOWTYPE ORDER BY CODE';
    if ShowModal = mrOK then
      tbWorkflowType.Text := qrySource.FieldByName('CODE').AsString;
    Release;
  end;
end;


procedure TfrmTaskTempNew.cbDateFieldDropDown(Sender: TObject);
begin
  bScheduleFieldTouched := True;
  sOldScheduleFieldValue := cbDateField.Text;
  cbDateField.Items.Clear;
  with qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT NAME FROM FIELDTYPE WHERE TYPE LIKE ''K%'' OR TYPE LIKE ''D%''';
    Open;
    while not EOF do
    begin
      cbDateField.Items.Add(FieldByName('NAME').AsString);
      Next;
    end;
    Close;
  end;
end;

procedure TfrmTaskTempNew.FormCreate(Sender: TObject);
begin
  // assume that we are creating a new template
  bEditing := False;
  bScheduleFieldTouched := False;
end;


procedure TfrmTaskTempNew.cbDateFieldChange(Sender: TObject);
begin
  // using the bScheduledFieldTouched should be changed as this is not the best way to do this
  bScheduleFieldTouched := False;
end;


procedure TfrmTaskTempNew.cbDateFieldExit(Sender: TObject);
begin
  if bScheduleFieldTouched then
    cbDateField.ItemIndex := cbDateField.Items.IndexOf(sOldScheduleFieldValue);
  bScheduleFieldTouched := False;
end;

end.

