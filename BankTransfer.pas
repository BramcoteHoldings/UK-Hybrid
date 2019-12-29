unit BankTransfer;

{ AES 1/6/2017
made the receipt tax default to FREE
saving the ncheque against the receipt generated}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Data.DB, DBAccess, Uni, MemDS,
  cxButtonEdit, Vcl.Menus, cxButtons, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxClasses, dxLayoutControl,
  cxLabel;

type
  TfrmTransferMoney = class(TForm)
    dtpDate: TDateTimePicker;
    ceAmount: TcxCurrencyEdit;
    tbDesc: TcxTextEdit;
    qryFromBank: TUniQuery;
    qryToBank: TUniQuery;
    dsFromBank: TUniDataSource;
    dstoBank: TUniDataSource;
    UniQuery3: TUniQuery;
    qryCheque: TUniQuery;
    qryBank: TUniQuery;
    qryBankBalance: TUniQuery;
    cmbBankFrom: TcxLookupComboBox;
    cmbBankTo: TcxLookupComboBox;
    qryReceipt: TUniQuery;
    qryBankdepInsert: TUniQuery;
    qryBankClearance: TUniQuery;
    qryTmp: TUniQuery;
    qryBanks: TUniQuery;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionManager1: TActionManager;
    actTransfer: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    lblGLFromDesc: TLabel;
    dxLayoutItem8: TdxLayoutItem;
    lblGLToDesc: TLabel;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    lblFrmBank: TcxLabel;
    dxLayoutItem11: TdxLayoutItem;
    lblToBank: TcxLabel;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure teLedgerREFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure teLedgerREFNOToPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cmbBankFromPropertiesCloseUp(Sender: TObject);
    procedure cmbBankToPropertiesCloseUp(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure actTransferExecute(Sender: TObject);
    procedure actTransferUpdate(Sender: TObject);
  private
    { Private declarations }
    DefaultTax     : String;
    AFromGL,
    AToGL          :String;
    function DoTransfer: boolean;
    function  CheckReceipt(inreceipt : integer) : integer;
  public
    { Public declarations }
  end;

var
  frmTransferMoney: TfrmTransferMoney;

implementation

{$R *.dfm}

uses
  AxiomData, miscfunc, glComponentUtil, LSearch, citfunc;

procedure TfrmTransferMoney.actTransferExecute(Sender: TObject);
begin
   DoTransfer;
end;

procedure TfrmTransferMoney.actTransferUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := ((cmbBankFrom.Text<>'') and (cmbBankTo.Text<>'') and
                               (ceAmount.Value <> Null) and (tbDesc.Text<>'') and
                               (cmbBankFrom.EditValue <> cmbBankTo.EditValue));
end;

procedure TfrmTransferMoney.BitBtn1Click(Sender: TObject);
begin
   DoTransfer;
end;

procedure TfrmTransferMoney.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

function TfrmTransferMoney.DoTransfer: boolean;
var
   iNcheque,
   nAccount,
   NBankdep,
   iReceipt: Integer;
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,
   sSQLWhere,
   sSql,
   sRecPrinter,
   sChqPrinter: string;
   bBankDep: boolean;
begin
   glComponentSetup := dmAxiom.getGlComponents;
   ZeroLedgerTotal;
   if dmAxiom.uniInsight.InTransaction then
      dmAxiom.uniInsight.Commit;
   try
      dmAxiom.uniInsight.StartTransaction;

      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'select code from printer where type = ''C'' and eft_printer = ''Y'' and bank_acct = :bank_acct';
         ParamByName('bank_acct').AsString := cmbBankFrom.EditValue;
         Open;
         sChqPrinter := FieldByName('code').AsString;
         Close;
      end;
      // Create the Cheque entry - as we are using Cached Updates
      // this won't save until we explicitly ApplyUpdates
//       14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
      iNcheque := GetSequenceNumber('SQNC_NCHEQUE');
      qryCheque.ParamByName('P_Ncheque').AsInteger := iNcheque;
      qryCheque.Open;

      qryCheque.Insert;
      qryCheque.FieldByName('NCHEQUE').AsInteger := iNcheque;
      qryCheque.FieldByName('PRINTER').AsString := sChqPrinter;
      qryCheque.FieldByName('CREATED').AsDateTime := dtpDate.Date;
      qryCheque.FieldByName('CHQNO').AsString := 'BP' + IntToStr(iNCheque);
//       qryCheque.FieldByName('PRESENTED').AsDateTime := dtpDate.Date;
       qryCheque.FieldByName('TYPE').AsString := 'BP';
       qryCheque.FieldByName('BANKED').AsString := 'N';
      qryCheque.FieldByName('DESCR').AsString := tbDesc.Text;

//      qryCheque.FieldByName('SYSTEM_DATE').AsDateTime := Date;
      qryCheque.FieldByName('ACCT').AsString := cmbBankFrom.EditValue;
      qryCheque.FieldByName('REQBY').AsString := dmAxiom.UserID;
      qryCheque.FieldByName('PAYEE').AsString := 'Transfer between bank accounts';
      qryCheque.FieldByName('AMOUNT').AsCurrency := ceAmount.Value;
      qryCheque.FieldByName('TRUST').AsString := 'G';
      qryCheque.FieldByName('REVERSED').AsString := 'N';
      qryCheque.FieldByName('PRINTED').AsString := 'N';
      qryCheque.FieldByName('BANK_TRANSFER').AsString := 'Y';
//      qryCheque.FieldbyName('NNAME').AsString := sNName;
//    qryCheque.FieldbyName('EFT').AsString

      qryCheque.Post; // Puts cheque into cached buffer

      // Create Cash At Bank Entry
      nAccount := StrToInt(dmAxiom.GetSeqNumber('sqnc_naccount'));
       // need to save chart used on posting
      qryBanks.close;
      qryBanks.ParamByName('P_Acct').AsString := cmbBankFrom.EditValue;
      qryBanks.Open;

      {post components}
      sLedgerKey :=  glComponentSetup.buildLedgerKey('',qryBanks.FieldByName('CASH_AT_BANK').AsString,'',true,'');
      AFromGL := sLedgerKey;

      PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
            , ceAmount.Value
            , 0
            , qryCheque.FieldByName('CHQNO').AsString
            , 'CHEQUE'
            , qryCheque.FieldByName('NCHEQUE').AsInteger
            , qryCheque.FieldByName('DESCR').AsString
            , sLedgerKey
            , qryCheque.FieldByName('REQBY').AsString
            , -1
            , ''
            , 'FREE'
            , False
            , sLedgerKey
            , 0
            , 0
            , nAccount);

      // Update the last cheque number and balance
      with qryBankBalance do
      begin
         sSQL := 'UPDATE BANK SET BALANCE = ' + CurrToStrF(qryBanks.FieldByName('BALANCE').AsCurrency +
                  qryCheque.FieldByName('AMOUNT').AsCurrency, ffFixed, 15) + ', CL_BALANCE = ' +
                  CurrToStrF(qryBanks.FieldByName('CL_BALANCE').AsCurrency +
                  qryCheque.FieldByName('AMOUNT').AsCurrency, ffFixed, 15);
         sSQLWhere := ' WHERE ACCT = ''' + qryCheque.FieldByName('ACCT').AsString + '''';
         Close;
         SQL.Text := sSQL + sSQLWhere;
         ExecSQL;
         Close;
      end;

      // lookup the ledger code cased on the value entered
{      glInstance := dmAxiom.getGlComponents.parseString(AFromGL,true);

      if not glInstance.valid then
      begin
           // something has gone very wrong !
         raise Exception.create('Error invalid ledger key');
      end;    }

{      PostLedger(qryCheque.FieldByName('CREATED').AsDateTime
          , ceAmount.Value
          , 0
          , qryCheque.FieldByName('CHQNO').AsString
          , 'CHEQUE'
          , qryCheque.FieldByName('NCHEQUE').AsInteger
          , tbDesc.Text
          , sledgerKey
          , qryCheque.FieldByName('REQBY').AsString
          , -1
          , ''
          , 'FREE');    }
//          glInstance.Free;

 //    now receipt side
           with dmAxiom.qryTmp do
           begin
              Close;
              SQL.Text := 'select code from printer where type = ''R'' and bank_acct = :bank_acct';
              ParamByName('bank_acct').AsString := cmbBankTo.EditValue;
              Open;
              sRecPrinter := FieldByName('code').AsString;
              Close;
           end;


          // Create the RECEIPT entry - as we are using Cached Updates
          // this won't save until we explicitly ApplyUdates
          qryReceipt.Close;
          iReceipt := GetSequenceNumber('SQNC_NRECEIPT');
          //iReceipt := GetSeqnum('NRECEIPT');
          qryReceipt.ParamByName('p_nreceipt').AsInteger := iReceipt;
          qryReceipt.Open;

          qryReceipt.Insert;

          qryReceipt.FieldByName('PRINTER').AsString := sRecPrinter;
          qryReceipt.FieldByName('NRECEIPT').AsInteger := iReceipt;
          qryReceipt.FieldByName('CREATED').AsDateTime := dtpDate.Date;
          qryReceipt.FieldByName('ACCT').AsString := cmbBankTo.EditValue;
//          qryReceipt.FieldByName('SYSTEM_DATE').AsDateTime := Now;
          qryReceipt.FieldByName('TYPE').AsString := 'DC';
          qryReceipt.FieldByName('RCPTNO').AsString := IntToStr(iReceipt);
          qryReceipt.FieldByName('PAYOR').AsString := dmAxiom.EntityName + ' - Bank Transfer';
//          qryReceipt.FieldByName('DRAWER').AsString := tbDrawer.Text;
//          qryReceipt.FieldByName('BANK').AsString := tbChqBank.Text;
//          qryReceipt.FieldByName('BRANCH').AsString := tbBranch.Text;
//          qryReceipt.FieldByName('CHQNO').AsString := tbChqno.Text;
          qryReceipt.FieldByName('DESCR').AsString := tbDesc.Text;
          qryReceipt.FieldByName('AMOUNT').AsCurrency := ceAmount.Value;
          qryReceipt.FieldByName('TRUST').AsString := 'G';
          qryReceipt.FieldByName('CLEARED').AsString := 'N';
//          qryReceipt.FieldByName('DCLEARDATE').AsDateTime := Date;
          qryReceipt.FieldByName('BANKED').AsString := 'N';
          qryReceipt.FieldByName('REVERSED').AsString := 'N';
          qryReceipt.FieldByName('NCHEQUE').AsInteger := iNcheque;
//          qryReceipt.FieldByName('NNAME').AsString := sNName;
          qryReceipt.FieldByName('BANKED_DATE').AsDateTime := dtpDate.Date;
          qryReceipt.FieldByName('BANK_TRANSFER').AsString := 'Y';

          qryReceipt.FieldByName('DCLEARDATE').AsDateTime := dtpDate.Date;
          qryReceipt.FieldByName('BANK_TRANSFER_NCHEQUE').AsInteger := iNcheque;

//          if trunc(qryReceipt.FieldByName('DCLEARDATE').AsDateTime) > trunc(Now) then
//              qryReceipt.FieldByName('CLEARED').AsString := 'N';


          with qryBankClearance do
          begin
            bBankDep := False;
            Close;
            ParamByName('CODE').AsString := 'DC';
            Open;
            if EOF = False then
               bBankDep := True;
            Close;
          end;

          // Create a banking for this receipt
          qryBanks.close;
          qryBanks.ParamByName('P_Acct').AsString := cmbBankTo.EditValue;
          qryBanks.Open;

          with qryBankdepInsert do
          begin
            ParamByName('ACCT').AsString := qryReceipt.FieldByName('ACCT').AsString;
            ParamByName('DEPOSIT_DATE').AsDateTime := qryReceipt.FieldByName('CREATED').AsDateTime;
            ParamByName('AMOUNT').AsCurrency := qryReceipt.FieldByName('AMOUNT').AsCurrency;
            ParamByName('LAST_NRECEIPT').AsInteger := qryReceipt.FieldByName('NRECEIPT').AsInteger;
            NBankdep := TableInteger('BANK', 'ACCT', qryReceipt.FieldByName('ACCT').AsString, 'NBANKDEP') + 1;
            ParamByName('NBANKDEP').AsInteger := Nbankdep;
            ExecSQL;
            Close;
          end;
          with qryTmp do
          begin
            SQL.Text := 'UPDATE BANK SET NBANKDEP = (NBANKDEP + 1) WHERE ACCT = ' + QuotedStr(qryReceipt.FieldByName('ACCT').AsString);
            ExecSQL;
            Close;
          end;

          qryReceipt.FieldByName('BANKED').AsString := 'Y';
          qryReceipt.FieldByName('NBANKDEP').AsInteger := NBankdep;

          qryReceipt.FieldByName('PRINTED').AsString := 'N';
          qryReceipt.Post; // Puts Receipt into cached buffer

          nAccount := GetSequenceNumber('sqnc_naccount');

          if qryReceipt.FieldByName('TRUST').AsString <> 'T' then
	   	 begin
          {post components}

             sLedgerKey :=  glComponentSetup.buildLedgerKey('',qryBanks.FieldByName('CASH_AT_BANK').AsString,'',true,'');

             AToGL := sLedgerKey;

             PostLedger(qryReceipt.FieldByName('CREATED').AsDateTime
               , 0 - ceAmount.value
               , 0
               , qryReceipt.FieldByName('RCPTNO').AsString
               , 'RECEIPT'
               , qryReceipt.FieldByName('NRECEIPT').AsInteger
               , qryReceipt.FieldByName('DESCR').AsString
               , sLedgerKey
               , ''
               , -1
               , ''
               , 'FREE'
               , FALSE
               , '0'
               , 0
               , 0
               , nAccount );
	   	 end;
    finally
      qryCheque.ApplyUpdates();
      qryReceipt.ApplyUpdates();
      // UPDATE CHEQUE WITH NRECEIPT
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'update cheque set bank_transfer_nreceipt = :nreceipt where ncheque = :ncheque';
         ParamByName('ncheque').AsInteger := iNcheque;
         ParamByName('nreceipt').AsInteger := iReceipt;
         ExecSQL;
         Close;
      end;
      dmAxiom.uniInsight.Commit;
      Self.Close;
   end;
end;

procedure TfrmTransferMoney.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryFromBank.Close;
   qryToBank.Close;
end;

procedure TfrmTransferMoney.FormCreate(Sender: TObject);
begin
   qryFromBank.ParamByName('entity').AsString := dmAxiom.Entity;
   qryFromBank.Open;
   qryToBank.ParamByName('entity').AsString := dmAxiom.Entity;
   qryToBank.Open;
   dtpDate.Date := Now;
end;

procedure TfrmTransferMoney.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = ' ') then
    Quickcode(tbDesc);
end;

procedure TfrmTransferMoney.teLedgerREFNOPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
begin
   // lookup the ledger code based on the value entered
   glInstance := dmAxiom.getGlComponents.parseString(AFromGL,true);
   if not glInstance.valid then
   begin
      glInstance.displayError;
      AFromGL := '';
      lblGLFromDesc.Caption := '';
      glInstance.free;
      exit;
   end
   else
   begin
      AFromGL := glInstance.fullCode;
   end;

   if not AllowDirectPost(glInstance.ledgerKey) then
   begin
      MsgErr('You may not post to ledger Reference #' + AFromGL);
      DisplayValue := '';
   end
   else
   begin
      if not LedgerHead(glInstance.ledgerKey) then
      begin
         lblGLFromDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');

//         defaultLedgerTaxCode := 'FREE';  // LedgerString(glInstance.ledgerKey, 'DEFAULT_TAXCODE');

//         if defaultLedgerTaxCode <> '' then
//            qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode;
      end
      else
      begin
         MsgErr('You may not post to a header ledger');
         DisplayValue := '';
      end;
   end;
end;

procedure TfrmTransferMoney.teLedgerREFNOToPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
begin
   // lookup the ledger code based on the value entered
   glInstance := dmAxiom.getGlComponents.parseString(AToGL,true);
   if not glInstance.valid then
   begin
      glInstance.displayError;
      AToGL := '';
      lblGLToDesc.Caption := '';
      glInstance.free;
      exit;
   end
   else
   begin
      AToGL := glInstance.fullCode;
   end;

   if not AllowDirectPost(glInstance.ledgerKey) then
   begin
      MsgErr('You may not post to ledger Reference #' + AToGL);
      DisplayValue := '';
   end
   else
   begin
      if not LedgerHead(glInstance.ledgerKey) then
      begin
         lblGLToDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');

      end
      else
      begin
         MsgErr('You may not post to a header ledger');
         DisplayValue := '';
      end;
   end;
end;

function  TfrmTransferMoney.CheckReceipt(inreceipt : integer) : integer;
var
   bok : boolean;
   iret : integer;
begin
   bok := false;
   iret :=  inreceipt;
   while not bok do
   begin
      with TUniQuery.Create(Self) do
      begin
            Connection := dmAxiom.uniInsight;
            Close;
            SQL.Text := 'SELECT COUNT(*) as CNT FROM RECEIPT WHERE NRECEIPT = :NRECEIPT';
            ParamByName('NRECEIPT').AsInteger := iret;
            open;
            bok := FieldByName('CNT').AsInteger = 0;
            close;
            free;
      end;
      iret := GetSeqnum('NRECEIPT');
   end;
   CheckReceipt := iret;
end;

procedure TfrmTransferMoney.cmbBankFromPropertiesCloseUp(Sender: TObject);
begin
   if (cmbBankFrom.Text <> '') then
   begin
      AFromGL := TableString('BANK','ACCT',STRING(cmbBankFrom.EditValue), 'CASH_AT_BANK');
      lblFrmBank.Caption := STRING(cmbBankFrom.EditValue);
   end;
end;

procedure TfrmTransferMoney.cmbBankToPropertiesCloseUp(Sender: TObject);
begin
   if (cmbBanktO.Text <> '') then
   begin
      AtOGL := TableString('BANK','ACCT',STRING(cmbBanktO.EditValue), 'CASH_AT_BANK');
      lblToBank.Caption := STRING(cmbBanktO.EditValue);
   end;
end;

procedure TfrmTransferMoney.cxButton2Click(Sender: TObject);
begin
   Close;
end;

end.
