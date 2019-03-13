unit DepositAccount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MaintAncestor, dxBarDBNav, dxBar, DB, DBAccess, OracleUniProvider, Uni,
  ImgList, ExtCtrls, ComCtrls, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBLabel, cxDBEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter, cxClasses,
  ppDesignLayer, MemDS, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl;

type
  TfrmDepositAccount = class(TfrmMaint)
    dsMRUList: TUniDataSource;
    qryMRUList: TUniQuery;
    cxDBLabel1: TcxDBLabel;
    cxCBMatter: TcxDBLookupComboBox;
    cxCBBank: TcxDBLookupComboBox;
    qryBank: TUniQuery;
    dsBank: TUniDataSource;
    cxTEAccount: TcxDBTextEdit;
    cxTEAccountName: TcxDBTextEdit;
    cxCBAccountType: TcxDBLookupComboBox;
    qryAccountType: TUniQuery;
    dsAccountType: TUniDataSource;
    dxbtnAccountType: TdxBarButton;
    dxBtnInstitute: TdxBarButton;
    cxDBTextEdit3: TcxDBTextEdit;
    qrySourceNDEPOSITACCOUNT: TLargeintField;
    qrySourceNMATTER: TLargeintField;
    qrySourceBANK: TStringField;
    qrySourceACCOUNT_NUMBER: TStringField;
    qrySourceACCOUNT_NAME: TStringField;
    qrySourceACCOUNT_TYPE: TStringField;
    qrySourceNOTES: TStringField;
    qrySourceSYSTEM_DATE: TDateTimeField;
    qrySourceROWID: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarDBNavPost3Click(Sender: TObject);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure cxCBBankPropertiesChange(Sender: TObject);
    procedure cxCBMatterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure qrySourceBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FNMatter: integer;
    FFileID: string;
    FbInsert: boolean;
  public
    { Public declarations }
    property NMatter: integer read FNMatter write FNMatter;
    property FileID: string read FFileID write FFileID;
  end;

var
  frmDepositAccount: TfrmDepositAccount;

implementation

uses MSearch, AxiomData, citfunc, miscFunc, Investment_Request;

{$R *.dfm}

procedure TfrmDepositAccount.cxDBLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
var
  selectedRow : String;
begin
  selectedRow := TcxLookupComboBox(Sender).Text;

  // If search selected, open matter search screen
  if selectedRow = 'SEARCH...' then
  begin
    if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
    if frmMatterSearch.ShowModal = mrOk then
    begin
      if not qrySource.Modified then
        qrySource.Edit;

      qrySource.fieldByName('NMATTER').AsInteger := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
      qryMRUList.Refresh;
    end;
  end;
end;

procedure TfrmDepositAccount.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrySource.Close;
  inherited;
end;

procedure TfrmDepositAccount.FormCreate(Sender: TObject);
begin
  inherited;
  cxCBBank.Properties.OnChange := nil;
  qrySource.Open;
  qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
  qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
  qryMRUList.Open;
  qryBank.open;
  qryAccountType.Open;
  PrimaryField := 'NDEPOSITACCOUNT';
  FbInsert := False;
  cxCBBank.Properties.OnChange := cxCBBankPropertiesChange;
end;

procedure TfrmDepositAccount.FormShow(Sender: TObject);
begin
  inherited;
  if FileID <> '' then
  begin
     cxCBMatter.Text := FileID;
     cxCBMatter.ValidateEdit;
     cxCBMatter.Enabled := False;
  end;
end;

procedure TfrmDepositAccount.dxBarDBNavPost3Click(Sender: TObject);
var
   sTmp : String;
begin
  sTmp := '';
  if cxCBMatter.Text = '' then
        sTmp := sTmp + 'Matter must have a value' + #13;
  if cxCBBank.Text = '' then
        sTmp := sTmp + 'Bank must have a value' + #13;
  if cxTEAccount.Text = '' then
        sTmp := sTmp + 'Account must have a value' + #13;
  if cxTEAccountName.Text = '' then
        sTmp := sTmp + 'Account Name must have a value' + #13;
  if cxCBAccountType.Text = '' then
        sTmp := sTmp + 'Account Type must have a value' + #13;
//  if cxTEInstitute.Text = '' then
//        sTmp := sTmp + 'Institute must have a value' + #13;

  if sTmp <> '' then
  begin
     MsgErr(sTmp);
     exit;
  end;

  if qrySource.FieldByName('NDEPOSITACCOUNT').IsNull then
        qrySource.FieldByName('NDEPOSITACCOUNT').AsString :=dmAxiom.GetSeqNumber('SQNC_NDEPOSITACCOUNT');
  if (FbInsert = True) and (SystemString('GENERATE_INV_FILE') = 'Y') then
     Request_Acct_Create_File(qrySource.FieldByName('NMATTER').AsInteger, StrToInt(MatterString(qrySource.FieldByName('NMATTER').AsInteger,'NCLIENT')));
  inherited;
end;

procedure TfrmDepositAccount.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  //make sure the current matter is on the list
  qryMRUList.ParamByName('STATICMATTER').AsInteger := qrySource.FieldByName('NMATTER').AsInteger;
  if not (qryMRUList.State in [dsInactive]) then
        qryMRUList.Refresh;
end;

procedure TfrmDepositAccount.qrySourceBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  FbInsert := True;
end;

procedure TfrmDepositAccount.cxCBBankPropertiesChange(Sender: TObject);
begin
  inherited;
  if (qrySource.state <> dsInactive) then
  begin
//     if (cxTEInstitute.Text = '') then
//        qrySource.FieldByName('INSTITUTE').AsString := cxCBBank.Text;
     if (cxTEAccountName.Text = '') then
        qrySource.FieldByName('ACCOUNT_NAME').AsString := cxCBBank.Text;
  end;
end;

procedure TfrmDepositAccount.cxCBMatterPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   inmatter : integer;
begin
   inherited;
  // validate
   if (MatterIsCurrent(DisplayValue)) then
   begin
      inmatter := strToInt(MatterString(string(DisplayValue),'NMATTER'));
      qryMRUList.ParamByName('staticmatter').AsInteger := inmatter;
      qryMRUList.Refresh;
   end
   else
   begin
      MsgErr('Matter is not current');
   end;
end;

end.
