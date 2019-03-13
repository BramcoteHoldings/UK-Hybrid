unit BankNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  MemDS, OracleUniProvider, Uni, DBAccess, cxLabel, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDBEdit, cxCheckBox, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutcxEditAdapters, cxClasses, dxLayoutControl;

type
  TfrmBankNew = class(TForm)
    dsBank: TUniDataSource;
    qryBank: TUniQuery;
    tbBankName: TEdit;
    tbName: TEdit;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    tbCode: TEdit;
    cbType: TComboBox;
    tbAddress: TEdit;
    tbSuburb: TEdit;
    tbAccount: TEdit;
    tbRcptFrom: TEdit;
    tbRcptTo: TEdit;
    tbLastRcpt: TEdit;
    tbChqFrom: TEdit;
    tbChqTo: TEdit;
    tbLastChq: TEdit;
    tbAbbrev: TEdit;
    tbCAB: TEdit;
    tbBranch: TEdit;
    neClearance: TNumberEdit;
    Label19: TLabel;
    lblEntityName: TcxLabel;
    cbEnforceBSBDD: TcxDBCheckBox;
    teBSB: TcxMaskEdit;
    teABANumber: TcxTextEdit;
    teRemitter: TcxTextEdit;
    cmbAcctType: TComboBox;
    tbBPayCode: TcxTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    lblBPayCode: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    teSortCode: TcxMaskEdit;
    dxLayoutItem18: TdxLayoutItem;
    teSWIFTCode: TcxTextEdit;
    teIBAN: TcxTextEdit;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbCABDblClick(Sender: TObject);
    procedure tbCABEnter(Sender: TObject);
    procedure cxDBMaskEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbTypeClick(Sender: TObject);
    procedure tbBPayCodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    function OKtoPost : Boolean;

  public
    { Public declarations }
  end;

var
  frmBankNew: TfrmBankNew;

implementation

uses
  AxiomData, MiscFunc, MSearch, NSearch, LSearch, citfunc;

{$R *.DFM}


function TfrmBankNew.OKtoPost : Boolean;
var
  sTmp : String;
begin
  OKtoPost := True;
  sTmp := '';
  if tbCode.Text = '' then
    sTmp := '       Bank Account Code' + Chr(13);
  if cbType.Text = '' then
    sTmp := '       Type' + Chr(13);
  if tbName.Text = '' then
    sTmp := sTmp + '       Name of Account' + Chr(13);
  if tbBankName.Text = '' then
    sTmp := sTmp + '       Bank Name' + Chr(13);
  if tbAddress.Text = '' then
    sTmp := sTmp + '       Address of Bank' + Chr(13);
  if tbSuburb.Text = '' then
    sTmp := sTmp + '       Suburb of Bank' + Chr(13);
  if tbAccount.Text = '' then
    sTmp := sTmp + '       Account Number' + Chr(13);
{  if (tbRcptFrom.Text = '') or (tbRcptTo.Text = '') or (tbLastRcpt.Text = '') then
    sTmp := sTmp + '       Receipt Details' + Chr(13);
  if (tbChqFrom.Text = '') or (tbChqTo.Text = '') or (tbLastChq.Text = '') then
    sTmp := sTmp + '       Cheque Details' + Chr(13);}
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Bank Account details before saving:    ' + Chr(13) + Chr(13) + sTmp);
    OKtoPost := False;
  end;
end;


procedure TfrmBankNew.btnSaveClick(Sender: TObject);
begin
  if OKtoPost then
  begin
    with qryBank do
    begin
      Close;
      ParamByName('P_Code').AsString := tbCode.Text;
      Open;
    end;
    if qryBank.EOF then
    begin
      qryBank.Insert;
      qryBank.FieldByName('ENTITY').AsString := dmAxiom.Entity;
      qryBank.FieldByName('ACCT').AsString := tbCode.Text;
      qryBank.FieldByName('TRUST').AsString := Copy(cbType.Text, 1, 1);
      qryBank.FieldByName('NAME').AsString := tbName.Text;
      qryBank.FieldByName('BANKNAME').AsString := tbBankName.Text;
      qryBank.FieldByName('BANK_ABBREV').AsString := tbAbbrev.Text;
      qryBank.FieldByName('BRANCH').AsString := tbBranch.Text;
      qryBank.FieldByName('ADDRESS').AsString := tbAddress.Text;
      qryBank.FieldByName('SUBURB').AsString := tbSuburb.Text;
      qryBank.FieldByName('ACCOUNTNUMBER').AsString := tbAccount.Text;
      qryBank.FieldByName('RCPFROM').AsString := tbRcptFrom.Text;
      qryBank.FieldByName('RCPTO').AsString := tbRcptTo.Text;
      qryBank.FieldByName('LASTRCP').AsString := tbLastRcpt.Text;
      qryBank.FieldByName('CHQFROM').AsString := tbChqFrom.Text;
      qryBank.FieldByName('CHQTO').AsString := tbChqTo.Text;
      qryBank.FieldByName('LASTCHQ').AsString := tbLastChq.Text;
      qryBank.FieldByName('CASH_AT_BANK').AsString := tbCAB.Text;
      qryBank.FieldByName('CLEARANCE').AsInteger := neClearance.AsInteger;
      qryBank.FieldByName('NBANKDEP').AsInteger := 0;
      qryBank.FieldbyName('BDS_REQD').AsString := 'Y';
      qryBank.FieldbyName('BSB').AsString := teBSB.Text;
      qryBank.FieldbyName('ABA_NUMBER').AsString := teABANumber.Text;
      qryBank.FieldbyName('REMITTER').AsString := teRemitter.Text;
      qryBank.FieldByName('ACCT_TYPE').AsString := cmbAcctType.Text;
      qryBank.FieldByName('SORT_CODE').AsString := teSortCode.Text;
      qryBank.FieldByName('SWIFT_CODE').AsString := teSWIFTCode.Text;
      qryBank.FieldByName('IBAN').AsString := teIBAN.Text;
      if tbBPayCode.Text <> '' then
         qryBank.FieldByName('BPAY_BILLER_CODE').AsInteger := StrToInt(tbBPayCode.text);
      qryBank.Post;
      Self.Close;
//      RemoveFromDesktop(Self);
    end
    else
      MsgErr('This Bank Account code has already been entered');
  end;
end;


procedure TfrmBankNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmBankNew.FormShow(Sender: TObject);
begin
  lblEntityName.Caption := dmAxiom.EntityName;
  neClearance.AsInteger := 3;
end;

procedure TfrmBankNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if qryBank.Active then
      qryBank.Close;
//  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmBankNew.FormCreate(Sender: TObject);
begin
   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblBPayCode.Visible := False;
      tbBPayCode.Visible := False;
   end;
end;

procedure TfrmBankNew.tbCABDblClick(Sender: TObject);
begin
  if not FormExists(frmLedgerSearch) then
    Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
  if frmLedgerSearch.ShowModal = mrOK then
    tbCAB.Text := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
end;

procedure TfrmBankNew.tbCABEnter(Sender: TObject);
begin
  if tbCAB.Text = '' then
    tbCAB.OnDblClick(Self);
end;

procedure TfrmBankNew.cxDBMaskEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   ErrorText := 'A valid B.S.B. format is 999-999. Please re-enter.';
end;

procedure TfrmBankNew.cbTypeClick(Sender: TObject);
begin
   cbEnforceBSBDD.Enabled := (cbType.Text = 'Trust');
end;

procedure TfrmBankNew.tbBPayCodeKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9']) then
      Key := #0;
end;

end.

