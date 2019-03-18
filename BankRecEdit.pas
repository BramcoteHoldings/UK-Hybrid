unit BankRecEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Db, Menus, Buttons,
  ExtCtrls, MemDS, OracleUniProvider, Uni, DBAccess, Variants,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxDropDownEdit, cxButtonEdit, cxMaskEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  cxLookAndFeelPainters, cxButtons, cxContainer, cxLabel, cxMemo,
  cxDBExtLookupComboBox, cxImageComboBox, cxCalendar, cxLookAndFeels, dxCore,
  ppDB, ppDBPipe, ppParameter, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, VCL.Themes, cxNavigator,
  cxDateUtils, ppDesignLayer,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

const
  // Transaction types
  ttCheque = 'C';
  ttDeposit = 'D';
//  ttMatter = 'M';
//  ttLedger = 'L';
  // Transaction descriptions
  tdCheque = 'Cheque';
  tdDeposit = 'Deposit';
//  tdMatter = 'Matter';
//  tdLedger = 'Ledger';

//  DepTypes: Array[0..3] of string = ('C','D','M','L');
//  DepTypeDesc: Array[0..3] of string = ('Cheque','Deposit','Matter','Ledger');

  DepTypes: Array[0..1] of string = ('C','D');
  DepTypeDesc: Array[0..1] of string = ('Cheque','Deposit');


  colBANKED = 0;
  colTYPE = 1;
  colREFNO = 2;
  colAMOUNT = 3;
  colCASHBOOK = 4;
  colPRESENTED = 5;
  colSTMTPAGE = 6;
  colDESCR = 7;

type
  TStatementRecord = record
    Bank : string;
    Currency : string;
    BankAccount : string;
    Banked : TDateTime;
    TransCode : string;
    TransType : string;
    ChequeNo : string;
    Desc : string;
    Amount : currency;
  end;

  ETrustOverdraw = class(Exception);
  TfrmBankRecEdit = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cbBank: TComboBox;
    lblBankName: TLabel;
    qryCheque: TUniQuery;
    qryBankRec: TUniQuery;
    dsLedger: TUniDataSource;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qryBankRecTypeDesc: TStringField;
    popGridDatestamp: TMenuItem;
    qryTmp: TUniQuery;
    qryFindCheque: TUniQuery;
    qryFindDeposit: TUniQuery;
    qryAllocInsert: TUniQuery;
    qryBankRecMatchedAmount: TFloatField;
    qryBankRecPresentedDate: TDateField;
    Label3: TLabel;
    dtpShowReconciled: TDateTimePicker;
    tmrShowReconciled: TTimer;
    qryBankRecBANK: TStringField;
    qryBankRecBANKED: TDateTimeField;
    qryBankRecTYPE: TStringField;
    qryBankRecREFNO: TStringField;
    qryBankRecDESCR: TStringField;
    qryBankRecAMOUNT: TFloatField;
    qryBankRecRECONDATE: TDateTimeField;
    qryBankRecBANKSTATEMENT: TStringField;
    qryBankRecROWID: TStringField;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerBANKED: TcxGridDBColumn;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerAMOUNT: TcxGridDBColumn;
    tvLedgerMatchedAmount: TcxGridDBColumn;
    tvLedgerPresentedDate: TcxGridDBColumn;
    tvLedgerBANKSTATEMENT: TcxGridDBColumn;
    tvLedgerDESCR: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleR: TcxStyle;
    cxStyleG: TcxStyle;
    cxStyleD: TcxStyle;
    btnLoadStatement: TcxButton;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    OpenDialog: TOpenDialog;
    btnPrint: TcxButton;
    btnProcess: TcxButton;
    lblFileName: TcxLabel;
    cxMemo1: TcxMemo;
    cxGridViewRepository1: TcxGridViewRepository;
    cxGridViewRepository1DBTableView1: TcxGridDBTableView;
    cxGridViewRepository1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1DBColumn2: TcxGridDBColumn;
    tvLedgerTYPE: TcxGridDBColumn;
    dtpDate: TcxDateEdit;
    chkShowReconciled: TCheckBox;
    ppReportBankRec: TppReport;
    plBankRec: TppDBPipeline;
    dsBankRec: TUniDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    procedure cbBankClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure qryBankRecAfterInsert(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
    procedure qryBankRecBeforeScroll(DataSet: TDataSet);
    procedure qryBankRecBeforePost(DataSet: TDataSet);
    procedure qryBankRecCalcFields(DataSet: TDataSet);
    procedure popGridDatestampClick(Sender: TObject);
    procedure qryBankRecAfterScroll(DataSet: TDataSet);
    procedure btnProcessClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure dtpShowReconciledChange(Sender: TObject);
    procedure tmrShowReconciledTimer(Sender: TObject);
    procedure qryBankRecREFNOChange(Sender: TField);
    procedure btnLoadStatementClick(Sender: TObject);
    procedure tvLedgerTypeDescPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerTypeDescPropertiesCloseUp(Sender: TObject);
    procedure tvLedgerREFNOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure dtpDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure chkShowReconciledClick(Sender: TObject);
    procedure tvLedgerStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    sAllocType: string;
    BankStatement: string;
    function CreateBankFee: boolean;
    function MatchCheque(var ChqAmount: Double; var ChqPresDate: TDateTime; Process: Boolean = True): Boolean;
    function MatchDeposit(var DepAmount: Double; var DepDate: TDateTime; Process: Boolean = True): Boolean;
    procedure SetRefnoButton;
    procedure ShowReconciled;
  public
    { Public declarations }

  end;

var
  frmBankRecEdit: TfrmBankRecEdit;
  recStatement : TStatementRecord;

implementation

uses
  MiscFunc, AxiomData, Desktop, LSearch, MSearch,glComponentUtil, citfunc,
  bankstatementimp, Vcl.Styles.FormStyleHooks;

{$R *.DFM}


procedure TfrmBankRecEdit.cbBankClick(Sender: TObject);
var
  sType: string;
  i: integer;
begin
   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cbBank.Text);//set

//   Self.Color := BankColour(cbBank.Text);

   lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
   ShowReconciled;
   if qryBankRec.IsEmpty then qryBankRec.Insert;
//   dbgrLedger.Columns[colTYPE].PickList.Clear;
   TcxComboBoxProperties(tvLedgerType.Properties).Items.Clear;
   sType := TableString('BANK', 'ACCT', cbBank.Text, 'TRUST');
   if sType = 'T' then
   begin
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Cheque');
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Deposit');
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Matter');

      for i := 0 to 1 do
      begin
         with TcxImageComboBoxProperties(tvLedgerType.Properties).Items.Add do
         begin
            Description := DepTypeDesc[i];
            Value := DepTypes[i];
         end;
      end;

//      dbgrLedger.Columns[colTYPE].PickList.Add('Cheque');
//      dbgrLedger.Columns[colTYPE].PickList.Add('Deposit');
//      dbgrLedger.Columns[colTYPE].PickList.Add('Matter');
//      dbgrLedger.Columns[colTYPE].DropDownRows := 3;
   end
   else if sType = 'G' then
   begin
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Cheque');
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Deposit');
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Ledger');
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Matter');

      for i := 0 to 1 do
      begin
         with TcxImageComboBoxProperties(tvLedgerType.Properties).Items.Add do
         begin
            Description := DepTypeDesc[i];
            Value := DepTypes[i];
         end;
      end;

//      dbgrLedger.Columns[colTYPE].PickList.Add('Cheque');
//      dbgrLedger.Columns[colTYPE].PickList.Add('Deposit');
//      dbgrLedger.Columns[colTYPE].PickList.Add('Ledger');
//      dbgrLedger.Columns[colTYPE].PickList.Add('Matter');
//      dbgrLedger.Columns[colTYPE].DropDownRows := 4;
   end
   else if sType = 'C' then
   begin
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Cheque');
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Deposit');
//      TcxComboBoxProperties(tvLedgerTypeDesc.Properties).Items.Add('Ledger');

      for i := 0 to 1 do
      begin
         with TcxImageComboBoxProperties(tvLedgerType.Properties).Items.Add do
         begin
            Description := DepTypeDesc[i];
            Value := DepTypes[i];
         end;
      end;
      
//      dbgrLedger.Columns[colTYPE].PickList.Add('Cheque');
//      dbgrLedger.Columns[colTYPE].PickList.Add('Deposit');
//      dbgrLedger.Columns[colTYPE].PickList.Add('Ledger');
//      dbgrLedger.Columns[colTYPE].DropDownRows := 3;
   end;
end;


procedure TfrmBankRecEdit.btnCancelClick(Sender: TObject);
begin
  if not(qryBankRec.UpdatesPending) or (MessageDlg('Are you sure you want to cancel the updates to Bank Reconciliation?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    qryBankRec.CancelUpdates;
    Self.Close;
//    RemoveFromDesktop(Self);
  end;
end;


procedure TfrmBankRecEdit.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if not(qryBankRec.UpdatesPending) or (MessageDlg('Are you sure you want to cancel the updates to Bank Reconciliation?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    qryBankRec.CancelUpdates;
    CanClose := True;
  end
  else
    CanClose := False;
end;


procedure TfrmBankRecEdit.btnOKClick(Sender: TObject);
begin
  if qryBankRec.Modified then
    qryBankRec.Post;

  if qryBankRec.UpdatesPending then
    qryBankRec.ApplyUpdates;

  Self.Close;
//  RemoveFromDesktop(Self);
end;


function TfrmBankRecEdit.CreateBankFee: boolean;
var
  sLedger: string;
  glComponentSetup : TglComponentSetup;
  sLedgerKey : String;
begin
   // Creates a cheque direct debit bank fee for this entry
   glComponentSetup := dmAxiom.getGlComponents;
   try
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      // Create the Cheque entry
//       14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
      qryCheque.ParamByName('NCHEQUE').AsInteger := GetSequenceNumber('SQNC_NCHEQUE');  //GetSeqnum('NCHEQUE');
      qryCheque.ParamByName('CREATED').AsDateTime := dtpDate.Date;
      qryCheque.ParamByName('CHQNO').AsString := 'BP' + IntToStr(qryCheque.ParamByName('NCHEQUE').AsInteger);
      qryCheque.ParamByName('PRESENTED').AsDateTime := qryBankRec.FieldByName('BANKED').AsDateTime;
      qryCheque.ParamByName('ACCT').AsString := cbBank.Text;
      qryCheque.ParamByName('APPROVAL').AsString := dmAxiom.UserID;
      qryCheque.ParamByName('PAYEE').AsString := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
      qryCheque.ParamByName('DESCR').AsString := qryBankRec.FieldByName('DESCR').AsString;
      qryCheque.ParamByName('AMOUNT').AsFloat := qryBankRec.FieldByName('AMOUNT').AsCurrency;
      qryCheque.ParamByName('TRUST').AsString := TableString('BANK', 'ACCT', cbBank.Text, 'TRUST');

      qryCheque.ExecSQL;

      // Create Cash At Bank Entry

      {post components}
      sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('BANK', 'ACCT', cbBank.Text, 'CASH_AT_BANK'),'',true,'');


      PostLedger(qryCheque.ParamByName('CREATED').AsDateTime
        , qryBankRec.FieldByName('AMOUNT').AsCurrency
        , 0
        , qryCheque.ParamByName('CHQNO').AsString
        , 'CHEQUE'
        , qryCheque.ParamByName('NCHEQUE').AsInteger
        , qryCheque.ParamByName('DESCR').AsString
        , sLedgerKey
        , ''
        , -1
        , ''
        , '');

      // Update the bank balance
      with qryTmp do
      begin
        SQL.Clear;
        SQL.Add('UPDATE BANK SET BALANCE = (BALANCE + ' + CurrToStrF(qryBankRec.FieldByName('AMOUNT').AsCurrency, ffFixed, 15) + '), CL_BALANCE = (CL_BALANCE + ' + CurrToStrF(qryBankRec.FieldByName('AMOUNT').AsCurrency, ffFixed, 15) + ') ');
        SQL.Add('WHERE ACCT = ' + QuotedStr(cbBank.Text));
        ExecSQL;
      end;

      // Create the disbursement ledger entry
//      if qryBankRec.FieldByName('TYPE').AsString = tdLedger then
//        sLedger := qryBankRec.FieldByName('REFNO').AsString
//      else
        sLedger := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR');

      {post components}
      sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedger,'',true,'');

      PostLedger(dtpDate.Date
        , 0 - qryBankRec.FieldByName('AMOUNT').AsCurrency
        , 0
        , qryCheque.ParamByName('CHQNO').AsString
        , 'CHEQUE'
        , qryCheque.ParamByName('NCHEQUE').AsInteger
        , qryBankRec.FieldByName('DESCR').AsString
        , sLedgerKey
        , ''
        , -1
        , ''
        , '');

      // If it is a matter based disbursment, create the matter ledger entry
 {     if qryBankRec.FieldByName('TYPE').AsString = tdMatter then
      begin
        with qryAllocInsert do
        begin
          ParamByName('AMOUNT').AsFloat := 0 - qryBankRec.FieldByName('AMOUNT').AsCurrency;
          ParamByName('ACCT').AsString := qryCheque.ParamByName('ACCT').AsString;
          ParamByName('CREATED').AsDateTime := qryCheque.ParamByName('CREATED').AsDateTime;
          ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryBankRec.FieldByName('REFNO').AsString, 'NMATTER');
          ParamByName('REFNO').AsString := qryCheque.ParamByName('CHQNO').AsString;
          ParamByName('PAYER').AsString := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
          ParamByName('DESCR').AsString := qryBankRec.FieldByName('DESCR').AsString;
          ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryBankRec.FieldByName('REFNO').AsString, 'NCLIENT');
          ParamByName('NCHEQUE').AsInteger := qryCheque.ParamByName('NCHEQUE').AsInteger;
          ParamByName('FILEID').AsString := qryBankRec.FieldByName('REFNO').AsString;
          ParamByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
          ParamByName('CLIENT_NAME').AsString := MatterString(qryBankRec.FieldByName('REFNO').AsString, 'TITLE');
          ParamByName('MATTER_DESC').AsString := MatterString(qryBankRec.FieldByName('REFNO').AsString, 'SHORTDESCR');

          ExecSQL;
          MatterUpdate(ParamByName('NMATTER').AsInteger, 'UNBILL_DISB', qryBankRec.FieldByName('AMOUNT').AsCurrency);
        end;

      end; }

      CheckLedgerTotal;

      dmAxiom.uniInsight.Commit;
      result:= True;
   except
     on E: Exception do
     begin
       dmAxiom.uniInsight.Rollback;
       MsgErr('Bank Payment posting failed:' + chr(13) + chr(13) + E.Message);
       result:= False;
     end;
   end;
end;


procedure TfrmBankRecEdit.qryBankRecAfterInsert(DataSet: TDataSet);
begin
  if sAllocType = '' then
    qryBankRec.FieldByName('TYPE').AsString := tdCheque
  else
    qryBankRec.FieldByName('TYPE').AsString := sAllocType;
  qryBankRec.FieldByName('BANKSTATEMENT').AsString := BankStatement;
  if qryBankRec.FieldByName('BANKED').Value = Null then
    qryBankRec.FieldByName('BANKED').AsDateTime := Trunc(dtpDate.Date);
  qryBankRec.FieldByName('BANK').AsString := cbBank.Text;
//  dbgrLedger.SelectedIndex := colREFNO;
end;


procedure TfrmBankRecEdit.popRemoveClick(Sender: TObject);
begin
   if not qryBankRec.IsEmpty then
      qryBankRec.Delete;
end;


procedure TfrmBankRecEdit.popEditClick(Sender: TObject);
begin
   if not qryBankRec.IsEmpty then
      qryBankRec.Edit;
end;


procedure TfrmBankRecEdit.FormCreate(Sender: TObject);
begin
   sAllocType := '';
   BankStatement := '';
   dtpShowReconciled.DateTime := Now;
   chkShowReconciled.Checked := False;
   tmrShowReconciled.Enabled := False;

   dtpDate.Date := Now;
   dtpDate.Properties.MaxDate := Date;
   AddBanks(cbBank, '');
   cbBank.ItemIndex := cbBank.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
   cbBank.OnClick(Self);
end;


procedure TfrmBankRecEdit.FormDestroy(Sender: TObject);
begin
   try
      if tmrShowReconciled.Enabled = True then
         tmrShowReconciled.Enabled := False;
   finally
       tmrShowReconciled.Free;
   end;
end;

procedure TfrmBankRecEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryBankRec.Close;
   RemoveFromDesktop(Self);
//  Self.Release;
end;


procedure TfrmBankRecEdit.dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
var
  sType: string;
  sKeyCaps: string;
begin
{  // Default the type if a key pressed
  if dbgrLedger.SelectedIndex = colTYPE then
  begin
    sType := '';
    sKeyCaps := Uppercase(Key);
    if sKeyCaps = ttCheque then
      sType := tdCheque
    else if sKeyCaps = ttDeposit then
      sType := tdDeposit
    else if sKeyCaps = ttLedger then
      sType := tdLedger
    else if sKeyCaps = ttMatter then
      sType := tdMatter;
    Key := #0;
    if (sType <> '') and (dbgrLedger.Columns.Items[colTYPE].PickList.IndexOf(sType) >= 0) then
    begin
      if not qryBankRec.Modified then
        if qryBankRec.IsEmpty then
          qryBankRec.Insert
        else
          qryBankRec.Edit;
      qryBankRec.FieldByName('TypeDesc').AsString := sType;
      dbgrLedger.SelectedIndex := colREFNO;
    end;
  end;      }
end;


procedure TfrmBankRecEdit.qryBankRecBeforeScroll(DataSet: TDataSet);
begin
  sAllocType := qryBankRec.FieldByName('TYPE').AsString;
  BankStatement := qryBankRec.FieldByName('BANKSTATEMENT').AsString;
end;


procedure TfrmBankRecEdit.qryBankRecBeforePost(DataSet: TDataSet);
begin
   if qryBankRec.FieldByName('TypeDesc').AsString = tdCheque then
      qryBankRec.FieldByName('TYPE').AsString := ttCheque
   else if qryBankRec.FieldByName('TypeDesc').AsString = tdDeposit then
      qryBankRec.FieldByName('TYPE').AsString := ttDeposit;
//   else if qryBankRec.FieldByName('TypeDesc').AsString = tdLedger then
//      qryBankRec.FieldByName('TYPE').AsString := ttLedger
//   else if qryBankRec.FieldByName('TypeDesc').AsString = tdMatter then
//      qryBankRec.FieldByName('TYPE').AsString := ttMatter;
end;


procedure TfrmBankRecEdit.qryBankRecCalcFields(DataSet: TDataSet);
var
  dChequeAmount, dDepositAmount: Double;
  dtPresentedDate: TDateTime;
begin
   qryBankRec.FieldByName('MatchedAmount').AsFloat := 0;
   try
      if qryBankRec.FieldByName('TYPE').AsString = ttCheque then
      begin
         qryBankRec.FieldByName('TypeDesc').AsString := tdCheque;
         if qryBankRec.FieldByName('AMOUNT').AsFloat <> 0 then
         begin
            MatchCheque(dChequeAmount, dtPresentedDate, False);

            if dChequeAmount <> 0 then
               qryBankRec.FieldByName('MatchedAmount').AsFloat := dChequeAmount;
            if dtPresentedDate <> 0 then
               qryBankRec.FieldByName('PresentedDate').AsDateTime := dtPresentedDate;
         end;
      end
      else if qryBankRec.FieldByName('TYPE').AsString = ttDeposit then
      begin
         qryBankRec.FieldByName('TypeDesc').AsString := tdDeposit;
         if qryBankRec.FieldByName('AMOUNT').AsFloat <> 0 then
         begin
            MatchDeposit(dDepositAmount, dtPresentedDate, False);
            if dDepositAmount <> 0 then
               qryBankRec.FieldByName('MatchedAmount').AsFloat := dDepositAmount;
            if dtPresentedDate <> 0 then
               qryBankRec.FieldByName('PresentedDate').AsDateTime := dtPresentedDate;
         end;
      end;
//      else if qryBankRec.FieldByName('TYPE').AsString = ttLedger then
//         qryBankRec.FieldByName('TypeDesc').AsString := tdLedger
//      else if qryBankRec.FieldByName('TYPE').AsString = ttMatter then
//         qryBankRec.FieldByName('TypeDesc').AsString := tdMatter;
   except
    // silent exception
   end;
end;


procedure TfrmBankRecEdit.popGridDateStampClick(Sender: TObject);
begin
   if not qryBankrec.IsEmpty then
   begin
      if not qryBankrec.Modified then
         qryBankrec.Edit;
//      qryBankrec.FieldByName('BANKED').AsDateTime := Trunc(dtpDate.Date);
      if qryBankRec.FieldByName('RECONDATE').IsNull then
      begin
         qryBankrec.FieldByName('RECONDATE').AsDateTime := Trunc(dtpDate.Date);
         qryBankrec.FieldByName('PresentedDate').AsDateTime := dtpDate.Date;
         with qryTmp do
         begin
            SQL.Text := 'UPDATE CHEQUE SET PRESENTED = :Presented WHERE ACCT = ' + QuotedStr(cbBank.Text) + ' AND CHQNO = ' + QuotedStr(qryBankRec.FieldByName('REFNO').AsString);
            ParamByName('Presented').AsDateTime := Trunc(dtpDate.Date);
            ExecSQL;
         end;
      end;
   end;
end;


procedure TfrmBankRecEdit.qryBankRecAfterScroll(DataSet: TDataSet);
begin
   SetRefnoButton;
end;


procedure TfrmBankRecEdit.SetRefnoButton;
begin
//   if (qryBankRec.FieldByName('TYPE').AsString = tdLedger) or
//      (qryBankRec.FieldByName('TYPE').AsString = tdMatter) then
//      TcxButtonEditProperties(tvLedgerREFNO.Properties).Buttons.Items[0].Visible := True
//   else
      TcxButtonEditProperties(tvLedgerREFNO.Properties).Buttons.Items[0].Visible := False;
end;


procedure TfrmBankRecEdit.btnProcessClick(Sender: TObject);
var
  bGetNext: Boolean;
  dChequeAmount, dDepositAmount: Double;
  dtPresentedDate: TDateTime;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}

  if PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed] then
  begin
    if not(chkShowReconciled.Checked) then
    begin
      if qryBankRec.Modified then
        qryBankRec.Post;

      qryBankRec.First;
      while not qryBankRec.EOF do
      begin
        bGetNext := True;
       { if (qryBankRec.FieldByName('TYPE').AsString = ttLedger) or (qryBankRec.FieldByName('TYPE').AsString = ttMatter) then
        begin
          if ValidLedger(dmAxiom.Entity, qryBankRec.FieldByName('REFNO').AsString) then
          begin
            if CreateBankFee then
            begin
              bGetNext := False;
              qryBankRec.Delete;
            end;
          end
          else
            MsgErr('Invalid Ledger code reference for Bank Fee' + #13 + #13 + FormatDateTime('ddddd', qryBankRec.FieldByName('banked').AsDateTime) + #13 + qryBankRec.FieldByName('DESCR').AsString + #13 + Format('%m', [qryBankRec.FieldByName('AMOUNT').AsCurrency]));
        end
        else} if qryBankRec.FieldByName('TYPE').AsString = ttCheque then
        begin
          if MatchCheque(dChequeAmount, dtPresentedDate) then
            with qryBankRec do
            begin
              Edit;
              FieldByName('RECONDATE').AsDateTime := dtPresentedDate;
              Post;
            end;
        end
        else if qryBankRec.FieldByName('TYPE').AsString = ttDeposit then
        begin
          if MatchDeposit(dDepositAmount, dtPresentedDate) then
            with qryBankRec do
            begin
              Edit;
              FieldByName('RECONDATE').AsDateTime := dtPresentedDate;
              Post;
            end;
        end;

        if bGetNext then
          qryBankRec.Next;
      end;

      try
        if qryBankRec.UpdatesPending then
          qryBankRec.ApplyUpdates;
      except
        //silent exception
      end;

      qryBankRec.Close;
      qryBankRec.Open;
    end
    else
      MsgErr('You must turn the "Show Reconciled Entries" option off before you can '
        + #13#10 + 'process the Bank Statement!');
  end
end;


function TfrmBankRecEdit.MatchCheque(var ChqAmount: Double; var ChqPresDate: TDateTime; Process: Boolean = True): Boolean;
begin
  with qryFindCheque do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NCHEQUE, AMOUNT, PRESENTED');
    SQL.Add('FROM CHEQUE');
    SQL.Add('WHERE ACCT = :ACCT');
    if Process then
      SQL.Add('  AND AMOUNT = :AMOUNT');
    SQL.Add('  AND CHQNO = :CHQNO');
    ParamByName('ACCT').AsString := cbBank.Text;
    if Process then
      ParamByName('AMOUNT').AsFloat := qryBankRec.FieldByName('AMOUNT').AsCurrency;
    ParamByName('CHQNO').AsString := qryBankRec.FieldByName('REFNO').AsString;
    Open;
    if IsEmpty then
    begin
      MatchCheque := False;
      ChqAmount := 0;
      ChqPresDate := 0;
    end
    else
    begin
      if Process then
      begin
        qryTmp.SQL.Text := 'UPDATE CHEQUE SET PRESENTED = :PRESENTED, RECONDATE = :PRESENTED WHERE NCHEQUE = ' + IntToStr(FieldByName('NCHEQUE').AsInteger);
        qryTmp.ParamByName('PRESENTED').AsDateTime := qryBankRec.FieldByName('BANKED').AsDateTime;
        qryTmp.ExecSQL;
      end;
      ChqAmount := FieldByName('AMOUNT').AsFloat;
      ChqPresDate := Trunc(FieldByName('PRESENTED').AsDateTime);
      MatchCheque := True;
    end;
    Close;
  end;
end;


function TfrmBankRecEdit.MatchDeposit(var DepAmount: Double; var DepDate: TDateTime; Process: Boolean = True): Boolean;
begin
  with qryFindDeposit do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NBANKDEP, AMOUNT, DEPOSIT_DATE');
    SQL.Add('FROM BANKDEP');
    SQL.Add('WHERE ACCT = :ACCT');
    SQL.Add('  AND RECONDATE IS NULL');
    if Process then
    begin
      SQL.Add('  AND AMOUNT = :AMOUNT');
      ParamByName('AMOUNT').AsFloat := qryBankRec.FieldByName('AMOUNT').AsCurrency
    end
    else
    begin
      SQL.Add('  AND DEPOSIT_DATE = :DEPOSIT_DATE');
      ParamByName('DEPOSIT_DATE').AsDateTime := qryBankRec.FieldByName('BANKED').AsDateTime;
    end;
    ParamByName('ACCT').AsString := cbBank.Text;
    Open;
    if IsEmpty then
    begin
      MatchDeposit := False;
      DepAmount := 0;
      DepDate := 0;
    end
    else
    begin
      if Process then
      begin
        qryTmp.SQL.Text := 'UPDATE BANKDEP SET RECONCILED = ''Y'', RECONDATE = :ReconDate WHERE ACCT = ''' + cbBank.Text + ''' AND NBANKDEP = ' + IntToStr(FieldByName('NBANKDEP').AsInteger);
        qryTmp.ParamByName('ReconDate').AsDateTime := qryBankRec.FieldByName('BANKED').AsDateTime;
        qryTmp.ExecSQL;
      end;
      DepAmount := FieldByName('AMOUNT').AsFloat;
      DepDate := Trunc(FieldByName('DEPOSIT_DATE').AsDateTime);
      MatchDeposit := True;
    end;
    Close;
  end;
end;

procedure TfrmBankRecEdit.btnPrintClick(Sender: TObject);
begin
  qryBankRec.DisableControls;
  ppReportBankRec.Print;
  qryBankRec.EnableControls;
end;

procedure TfrmBankRecEdit.tmrShowReconciledTimer(Sender: TObject);
begin
  tmrShowReconciled.Enabled := False;
  ShowReconciled;
end;

procedure TfrmBankRecEdit.ShowReconciled;
begin
  with qryBankRec do
  begin
    if UpdatesPending then
      ApplyUpdates;
    if chkShowReconciled.Checked then
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT B.*, B.ROWID');
      SQL.Add('FROM BANKREC B');
      SQL.Add('WHERE B.BANK = ' + QuotedStr(cbBank.Text));
      SQL.Add('  AND B.BANKED >= :DateFrom');
      SQL.Add('  AND B.BANKED < :DateTo');
      SQL.Add('ORDER BY TRUNC(B.BANKED), B.REFNO');
      ParamByName('DateFrom').AsDateTime := Trunc(dtpShowReconciled.Date);
      ParamByName('DateTo').AsDateTime := Trunc(dtpDate.Date) + 1;
      Open;
    end
    else
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT B.*, B.ROWID');
      SQL.Add('FROM BANKREC B');
      SQL.Add('WHERE B.BANK = ' + QuotedStr(cbBank.Text));
      SQL.Add('  AND B.RECONDATE IS NULL');
      SQL.Add('ORDER BY BANKED ASC');
      Open;
    end;
  end;
end;

procedure TfrmBankRecEdit.dtpShowReconciledChange(Sender: TObject);
begin
  tmrShowReconciled.Enabled := True;
end;


procedure TfrmBankRecEdit.qryBankRecREFNOChange(Sender: TField);
begin
  if qryBankRec.State = dsInsert then
  begin
    if qryBankRec.FieldByName('REFNO').AsString <> '' then
      with qryTmp do
      begin
        SQL.Text := 'SELECT BANKED FROM BANKREC WHERE BANK = ' + QuotedStr(cbBank.Text) + ' AND REFNO = ' + QuotedStr(qryBankRec.FieldByName('REFNO').AsString);
        Open;
        if not IsEmpty then
        begin
          MsgErr(qryBankRec.FieldByName('REFNO').AsString + ' has already been entered on ' + FormatDateTime('ddddd', FieldByName('BANKED').AsDateTime));
          qryBankRec.FieldByName('REFNO').AsString := '';
        end;
        Close;
      end;
  end;
end;


procedure TfrmBankRecEdit.btnLoadStatementClick(Sender: TObject);
var
   StatementFileName: string;
   fStatement : TextFile;
   sNewline, Month,Year,Day,NewDate:  string;
begin
   if (dmAxiom.DefaultBankName <> 'NAB') and
      (dmAxiom.DefaultBankName <> 'MBL') and
      (dmAxiom.DefaultBankName <> 'WBC') then
   begin
      MsgInfo('This functionality is currently not supported for the Bank that you use.' + #13 +
              'If you require this functionality, please call BHL Insight.');
   end
   else
      if (SystemString('BANK_STATEMENT_IMP') = C_BANKSTMNTIMPORTPASSWORD) then
      begin
         try
            frmBankStmntImport := TfrmBankStmntImport.Create(Self);
            frmBankStmntImport.ABank := cbBank.Text;
            frmBankStmntImport.ShowModal();
         finally
            frmBankStmntImport.Free;
         end;
      end
      else
      // old way of doing imports
      try
         if OpenDialog.Execute then
         begin
            StatementFileName := OpenDialog.FileName;
            lblFileName.Caption := 'File being imported: ' + StatementFileName;
            AssignFile(fStatement, StatementFileName);
            Reset(fStatement);
            while not Eof(fStatement) do
            begin
               cxMemo1.Clear;
               Readln(fStatement, sNewline);
               ExtractStrings([',','"'],[' '], PChar(sNewLine),cxMemo1.Lines);
               with qryBankRec do
               begin
                  if (StringReplace(cxMemo1.Lines.Strings[4],'"','',[rfReplaceAll]) = '475') or
                     (StringReplace(cxMemo1.Lines.Strings[4],'"','',[rfReplaceAll]) = '911') then
                  begin
                     Insert;
                     FieldByName('BANK').AsString := cbBank.Text;
                     Year := Copy(StringReplace(cxMemo1.Lines.Strings[3],'"','',[rfReplaceAll]),0,2);
                     Month := Copy(StringReplace(cxMemo1.Lines.Strings[3],'"','',[rfReplaceAll]),4,2);
                     Day := Copy(StringReplace(cxMemo1.Lines.Strings[3],'"','',[rfReplaceAll]),7,2);
                     NewDate := Day +'/'+Month+'/'+Year;
                     FieldByName('BANKED').AsDateTime := StrToDate(NewDate);
                     if (StringReplace(cxMemo1.Lines.Strings[4],'"','',[rfReplaceAll]) = '475') then
                     begin
                        FieldByName('TYPE').AsString := 'Cheque';
                        FieldByName('AMOUNT').AsCurrency := StrToCurr(StringReplace(cxMemo1.Lines.Strings[8],'"','',[rfReplaceAll])) * -1;
                     end
                     else
                     begin
                        FieldByName('TYPE').AsString := 'Deposit';
                        FieldByName('AMOUNT').AsCurrency := StrToCurr(StringReplace(cxMemo1.Lines.Strings[8],'"','',[rfReplaceAll]));
                     end;
                     FieldByName('REFNO').AsString := Copy(StringReplace(cxMemo1.Lines.Strings[6],'"','',[rfReplaceAll]),length(StringReplace(cxMemo1.Lines.Strings[6],'"','',[rfReplaceAll]))-4,5);
                     if FieldByName('REFNO').AsString = '' then
                        FieldByName('REFNO').AsString := NewDate + '-' + 'IMP';
                     FieldByName('DESCR').AsString := StringReplace(cxMemo1.Lines.Strings[7],'"','',[rfReplaceAll]);
                  end;
               end;
            end;
            lblFileName.Caption := 'File imported';
            CloseFile(fStatement);
         end;
      except
        //
      end;
end;

procedure TfrmBankRecEdit.tvLedgerTypeDescPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if qryBankRec.State = dsBrowse then qryBankRec.Edit;
   SetRefnoButton;
end;

procedure TfrmBankRecEdit.tvLedgerTypeDescPropertiesCloseUp(Sender: TObject);
var
   sText: string;
begin
   if qryBankRec.State = dsBrowse then qryBankRec.Edit;
   sText := TcxComboBox(Sender).Text;
   qryBankRec.FieldByName('type').AsString := DepTypes[TcxComboBox(Sender).ItemIndex];
   TcxComboBox(Sender).Text := sText;
   SetRefnoButton;
end;

procedure TfrmBankRecEdit.tvLedgerREFNOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
{   if tvLedger.Columns[colTYPE].DataBinding.Field.Text = tdLedger then
   begin
      if not FormExists(frmLedgerSearch) then
         Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
      if frmLedgerSearch.ShowModal = mrOk then
      begin
         qryBankRec.Edit;
         qryBankRec.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CHART').AsString;
      end;
   end
   else if tvLedger.Columns[colTYPE].DataBinding.Field.Text = tdMatter then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOk then
      begin
        qryBankRec.Edit;
        qryBankRec.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      end;
   end;  }
end;

procedure TfrmBankRecEdit.tvLedgerStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn, AColumn1, AColumn2: TcxCustomGridTableItem;
begin
   if not qryBankRec.Eof then
   begin
      AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('AMOUNT');
      AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('MatchedAmount');
      AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('PresentedDate');

      if (VarToStr(ARecord.Values[AColumn.Index]) <> VarToStr(ARecord.Values[AColumn1.Index])) and
         (not VarIsNull(ARecord.Values[AColumn.Index])) then
         AStyle := cxStyleR
      else if (not VarIsNull(ARecord.Values[AColumn2.Index])) and (VarToStr(ARecord.Values[AColumn.Index]) = VarToStr(ARecord.Values[AColumn1.Index])) and
              (VarIsNull(ARecord.Values[AColumn.Index])) then
         AStyle := cxStyleG
      else if (VarIsNull(ARecord.Values[AColumn2.Index])) then
         AStyle := cxStyleD;
   end;
end;

procedure TfrmBankRecEdit.dbgrLedgerEnter(Sender: TObject);
begin
   if qryBankRec.IsEmpty then qryBankRec.Insert;
end;

procedure TfrmBankRecEdit.dtpDatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue > TcxDateEdit(Sender).Properties.MaxDate  then
      DisplayValue := DateToStr(TcxDateEdit(Sender).Properties.MaxDate);
end;

procedure TfrmBankRecEdit.chkShowReconciledClick(Sender: TObject);
begin
  dtpShowReconciled.Enabled := chkShowReconciled.Checked;
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmBankRecEdit, TFormStyleHookBackground);

end.


