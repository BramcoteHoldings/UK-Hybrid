unit TaskItemNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  MemDS, Ora, OracleUniProvider, Uni, DBAccess;

type
  TfrmTaskItemNew = class(TForm)
    lblTypeDesc: TLabel;
    qryTaskItem: TUniQuery;
    Label5: TLabel;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    Label1: TLabel;
    tbCode: TEdit;
    mmoDesc: TMemo;
    Label2: TLabel;
    cbMatterType: TComboBox;
    Label4: TLabel;
    cbType: TComboBox;
    neAmount: TNumberEdit;
    Label6: TLabel;
    Label7: TLabel;
    tbPayee: TEdit;
    lblSundryTypeDesc: TLabel;
    cbSundryType: TComboBox;
    Label9: TLabel;
    chkConfirm: TCheckBox;
    tbPrecedent: TEdit;
    Label8: TLabel;
    Label11: TLabel;
    cbDataForm: TComboBox;
    odlgPrecedent: TOpenDialog;
    btnSelPrecedent: TSpeedButton;
    cbExtSave: TCheckBox;
    btnPrecSearch: TBitBtn;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbMatterTypeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSundryTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbPrecedentMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSelPrecedentClick(Sender: TObject);
    procedure btnPrecSearchClick(Sender: TObject);
  private
    bEditing: Boolean;
    function OKtoPost : Boolean;
    procedure SearchDataSetNotify(DataSet: TDataSet);
  public
    procedure FindTaskItem(ItemCode: string);
  end;

var
  frmTaskItemNew: TfrmTaskItemNew;

implementation

{$R *.DFM}

uses
  MiscFunc, AxiomData, MSearch, NSearch, LSearch, GenericSearch;

function TfrmTaskItemNew.OKtoPost : Boolean;
var
  sTmp : String;
begin
  OKtoPost := True;
  sTmp := '';
  if tbCode.Text = '' then
    sTmp := '       Task Item Code' + Chr(13);
  if cbType.Text = '' then
    sTmp := '       Task Item Type' + Chr(13);
  if mmoDesc.Text = '' then
    sTmp := '       Reason' + Chr(13);
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Task Item details before saving:    ' + Chr(13) + Chr(13) + sTmp);
    OKtoPost := False;
  end;
end;


procedure TfrmTaskItemNew.FindTaskItem(ItemCode: string);
begin
  StringPopulate(cbMatterType.Items, 'MATTERTYPE', 'CODE');
  StringPopulate(cbSundryType.Items, 'SUNDRYTYPE', 'CODE');
  StringPopulate(cbDataForm.Items, 'DATAFORM', 'CODE');
  // we are editing the task item
  bEditing := True;
  with qryTaskItem do
  begin
    Close;
    ParamByName('P_Code').AsString := ItemCode;
    Open;
    tbCode.Text := qryTaskItem.FieldByName('CODE').AsString;
    cbType.ItemIndex := cbType.Items.IndexOf(qryTaskItem.FieldByName('TYPE').AsString);
    cbMatterType.ItemIndex := cbMatterType.Items.IndexOf(qryTaskItem.FieldByName('MATTERTYPE').AsString);
    mmoDesc.Text := qryTaskItem.FieldByName('REASON').AsString;
    neAmount.AsCurrency := qryTaskItem.FieldByName('AMOUNT').AsCurrency;
    tbPrecedent.Text := qryTaskItem.FieldByName('PRECEDENT').AsString;
    cbSundryType.ItemIndex := cbSundryType.Items.IndexOf(qryTaskItem.FieldByName('SUNDRYTYPE').AsString);
    tbPayee.Text := qryTaskItem.FieldByName('PAYEE').AsString;
    if qryTaskItem.FieldByName('CONFIRM').AsString = 'Y' then
      chkConfirm.Checked := True
    else
      chkConfirm.Checked := False;
    cbDataForm.ItemIndex := cbDataForm.Items.IndexOf(qryTaskItem.FieldByName('DATAFORM').AsString);
  end;
end;


procedure TfrmTaskItemNew.btnSaveClick(Sender: TObject);

  procedure SetTaskItemFields;
  begin
    qryTaskItem.FieldByName('CODE').AsString := tbCode.Text;
    qryTaskItem.FieldByName('TYPE').AsString := cbType.Text;
    qryTaskItem.FieldByName('MATTERTYPE').AsString := cbMatterType.Text;
    qryTaskItem.FieldByName('REASON').AsString := mmoDesc.Text;
    qryTaskItem.FieldByName('AMOUNT').AsCurrency := neAmount.AsCurrency;
    qryTaskItem.FieldByName('PRECEDENT').AsString := tbPrecedent.Text;
    qryTaskItem.FieldByName('SUNDRYTYPE').AsString := cbSundryType.Text;
    qryTaskItem.FieldByName('PAYEE').AsString := tbPayee.Text;
    if chkConfirm.Checked then
      qryTaskItem.FieldByName('CONFIRM').AsString := 'Y'
    else
      qryTaskItem.FieldByName('CONFIRM').AsString := 'N';
    qryTaskItem.FieldByName('DATAFORM').AsString := cbDataForm.Text;
  end;

begin
  // ??? need to change this so that it will only post if modified
  // best to use a TQuery component with a TUpdateSQL component
  if OKtoPost then
  begin
    with qryTaskItem do
    begin
      Close;
      ParamByName('P_Code').AsString := tbCode.Text;
      Open;
    end;
    if not(bEditing) then
    begin
      if qryTaskItem.EOF then
      begin
        qryTaskItem.Insert;
        SetTaskItemFields();
        qryTaskItem.Post;
        Self.Close;
      end
      else
        MsgErr('This Task Item code has already been entered');
    end
    else
    begin
      qryTaskItem.Edit;
      SetTaskItemFields();
      qryTaskItem.Post;
    end;
    Self.Close;
  end;
end;


procedure TfrmTaskItemNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TfrmTaskItemNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryTaskItem.Close;

  Action := caFree;
end;


procedure TfrmTaskItemNew.cbMatterTypeClick(Sender: TObject);
begin
  lblTypeDesc.Caption := TypeString(cbMatterType.Text, 'DESCR');
end;


procedure TfrmTaskItemNew.FormShow(Sender: TObject);
begin
  if not(bEditing) then
  begin
    StringPopulate(cbMatterType.Items, 'MATTERTYPE', 'CODE');
    StringPopulate(cbSundryType.Items, 'SUNDRYTYPE', 'CODE');
    StringPopulate(cbDataForm.Items, 'DATAFORM', 'CODE');
  end;
end;


procedure TfrmTaskItemNew.cbSundryTypeClick(Sender: TObject);
begin
  lblSundryTypeDesc.Caption := TableString('SUNDRYTYPE', 'CODE', cbSundryType.Text, 'DESCR');
end;


procedure TfrmTaskItemNew.FormCreate(Sender: TObject);
begin
  // assume that we are creating a task item
  bEditing := False;
end;

procedure TfrmTaskItemNew.tbPrecedentMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  TWinControl(Sender).Hint := tbPrecedent.Text;;
end;

procedure TfrmTaskItemNew.btnSelPrecedentClick(Sender: TObject);
begin
  if odlgPrecedent.Execute then
    tbPrecedent.Text := odlgPrecedent.FileName;
end;

procedure TfrmTaskItemNew.btnPrecSearchClick(Sender: TObject);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT PATH AS ORGCODE, DESCR, ''N'' AS DEFAULTITEM FROM PREC ORDER BY PATH';

    Caption := 'Precedent Selection';
    TableName := 'PREC';
    qrySource.Close;
    (* this sould be moved to the form at a later stage for full encapsulation ??? *)
    with SourceFieldList do
    begin
      SourceFieldList.Add(TStringField.Create(qrySource));
      with TField(SourceFieldList.Items[0]) do
      begin
        FieldName := 'ORGCODE';
        DataSet := qrySource;
      end;
      SourceFieldList.Add(TStringField.Create(qrySource));
      with TField(SourceFieldList.Items[1]) do
      begin
        FieldName := 'DESCR';
        DataSet := qrySource;
      end;
      SourceFieldList.Add(TStringField.Create(qrySource));
      with TField(SourceFieldList.Items[2]) do
      begin
        Calculated := True;
        FieldKind := fkCalculated;
        FieldName := 'CODE';
        DataSet := qrySource;
      end;
    end;

    qrySource.OnCalcFields := SearchDataSetNotify;
    qrySource.Open;
    if ShowModal = mrOK then
      tbPrecedent.Text := qrySource.FieldByName('ORGCODE').AsString;
  end;
end;

procedure TfrmTaskItemNew.SearchDataSetNotify(DataSet: TDataSet);
begin
  TUniQuery(DataSet).FieldByName('CODE').AsString :=
    ExtractFileName(TUniQuery(DataSet).FieldByName('ORGCODE').AsString);
end;

end.

