unit InvestmentTransactionNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxCurrencyEdit, StdCtrls, cxLookAndFeelPainters,
  cxButtons, DB, OracleUniProvider, Uni, DBAccess, MemDS, cxButtonEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup,
  cxGraphics, dxStatusBar, cxMemo, Menus, cxLabel, cxCheckBox, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, daDataModule, daSQL, cxLookAndFeels,
  ppParameter, ComCtrls, dxCore, cxDateUtils, ppDesignLayer,
  vcl.Themes, Vcl.ExtCtrls;

  const cniDEPOSIT = 'DEP';
  const cniWITHDRAWAL = 'W/D';
  const cniCHARGE = 'CHG';
  const cniINTEREST = 'INT';
  const cniREVERSAL = 'REV';
  const cniINTERESTWDL = 'INTWDL';

type
  TfrmInvestmentTransactionNew = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxCeAmount: TcxCurrencyEdit;
    cxDeCreated: TcxDateEdit;
    cxBtnSave: TcxButton;
    cxBtnCancel: TcxButton;
    qryInvestmentTrans: TUniQuery;
    Label6: TLabel;
    Label7: TLabel;
    cxEdReference: TcxCurrencyEdit;
    qryCheckBalance: TUniQuery;
    cxEdPayee: TcxButtonEdit;
    dsMRUList: TUniDataSource;
    qryMRUList: TUniQuery;
    Label1: TLabel;
    cxLcMatter: TcxLookupComboBox;
    Label2: TLabel;
    clLcDepositAccount: TcxLookupComboBox;
    qryDepositAccount: TUniQuery;
    dsDepositAccount: TUniDataSource;
    qryInvestmentTransDetails: TUniQuery;
    StatusBar: TdxStatusBar;
    qryBalances: TUniQuery;
    cmbPaymentMethod: TcxComboBox;
    Label8: TLabel;
    qryPaymentMethod: TUniQuery;
    Label9: TLabel;
    memoBankDetails: TcxMemo;
    lbldeposit: TcxLabel;
    cbKeepOpen: TcxCheckBox;
    plDep: TppDBPipeline;
    qryDep: TUniQuery;
    dsDep: TUniDataSource;
    qrySystem: TUniQuery;
    dsSystem: TUniDataSource;
    plSystem: TppDBPipeline;
    cbPrint: TcxCheckBox;
    rpReceipt: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppDBImage2: TppDBImage;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    cxEdDescr: TcxMemo;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Panel1: TPanel;
    rbCapital: TcxRadioButton;
    rbInterest: TcxRadioButton;
    procedure cxBtnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxEdPayeePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxLcMatterPropertiesCloseUp(Sender: TObject);
    procedure clLcDepositAccountPropertiesChange(Sender: TObject);
    procedure cxLcMatterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure rbInterestClick(Sender: TObject);
    procedure rbCapitalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPaymentTypePropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
    iDeposit : integer;
    sType : String;
    iMatter : Integer;
    sFileId : String;
    iTransId : Integer;
    bReverseSign : boolean;
    bReversal: Boolean;
    sTranType: String;
    FBank: string;
    FOldType: string;
    property ABank: string read FBank write FBank;
    function OkToPost: boolean;
    procedure PrintInvReceipt(AInvReceipt: integer);
  public
    { Public declarations }
    procedure setUp(iDeposit,iMatter, iTransId: Integer; sType, OLDsType, sBank: String);
  end;

var
  frmInvestmentTransactionNew: TfrmInvestmentTransactionNew;

implementation

uses axiomData, miscFunc, NSearch,citFunc, MSearch, InvestmentTransactions, Vcl.Styles,
     Vcl.Styles.FormStyleHooks;

{$R *.dfm}

procedure TfrmInvestmentTransactionNew.setUp(iDeposit,iMatter,iTransId : Integer; sType, OLDsType, sBank : String);
begin
   ABank := sBank;
   self.iMatter := iMatter;
   self.sType := sType;
   self.iDeposit := iDeposit;
   bReverseSign := false;

   sTranType := 'C';
   sFileId := MatterString(iMatter,'fileid');

   if sType = cnIDEPOSIT then
   begin
       self.Caption := 'Deposit';
       cxEdPayee.Text := MatterString(iMatter,'TITLE');
       cxEdDescr.Text := 'Deposit';
       FOldType := sType;
   end
   else if sType = cniWITHDRAWAL then
   begin
       self.Caption := 'Withdrawal';
       bReverseSign := true;
       cxEdPayee.Text := MatterString(iMatter,'TITLE');
       cxEdDescr.Text := 'Capital Withdrawal';
       rbInterest.Enabled := False;
       FOldType := sType;
   end
   else if sType = cnICHARGE then
   begin
       self.Caption := 'Charge';
       bReverseSign := true;
       FOldType := sType;
       rbCapital.Enabled := False;
       rbInterest.Enabled := False;
   end
   else if sType = cniINTEREST then
   begin
       self.Caption := 'Interest';
       FOldType := sType;
   end
   else if sType = cniREVERSAL then
   begin
      self.Caption := 'Reversal';
      qryInvestmentTransDetails.Close;
      qryInvestmentTransDetails.ParamByName('ninvtran').AsInteger := iTransId;
      qryInvestmentTransDetails.Open;
      cxCeAmount.editvalue := qryInvestmentTransDetails.FieldByName('Amount').AsCurrency;
      cxEdDescr.Text :=  'Reversal: ' + qryInvestmentTransDetails.FieldByName('descr').AsString;
      cxEdReference.text := qryInvestmentTransDetails.FieldByName('reference').AsString;
      cxEdPayee.text := qryInvestmentTransDetails.FieldByName('payeepayor').AsString;
      cxDeCreated.Enabled := False;
      cxLcMatter.Enabled := False;
      clLcDepositAccount.Enabled := False;
      cxCeAmount.Enabled := False;
      cxEdPayee.Enabled := False;
      iTransId := 0;
      bReversal := True;
      FOldType := OLDsType;
      sType :=  qryInvestmentTransDetails.FieldByName('type').AsString;
      sTranType := qryInvestmentTransDetails.FieldByName('tran_type').AsString;
      if sType = cnIDEPOSIT then
         rbCapital.Checked := True
      else if sType = cniINTEREST then
         rbInterest.Checked := True
      else if sType = cniINTERESTWDL then
         rbInterest.Checked := True;
      rbCapital.Enabled := False;
      rbInterest.Enabled := False;
   end
   else
       raise Exception.Create('Unknown investment type');

   lbldeposit.Caption := IntToStr(iDeposit);
   qryMRUList.close;
   qryMRUList.Open;
   cxLcMatter.EditValue := sFileId;
   qryDepositAccount.Close;
   qryDepositAccount.ParamByName('nmatter').AsInteger := iMatter;
   qryDepositAccount.open;
   clLcDepositAccount.EditValue := iDeposit;
   qryBalances.Close;
   qryBalances.ParamByName('ndepositaccount').AsInteger := iDeposit;
   qryBalances.open;
   cxLcMatter.Enabled := (cxLcMatter.Text = '');
   clLcDepositAccount.Enabled := (clLcDepositAccount.Text = '');
   StatusBar.Panels.Items[0].Text := 'Capital: '+FormatCurr('$0.00',qryBalances.FieldByName('balance').AsCurrency);
   StatusBar.Panels.Items[1].Text := 'Interest: '+FormatCurr('$0.00',qryBalances.FieldByName('intbalance').AsCurrency);
   StatusBar.Panels.Items[2].Text := 'Total: '+FormatCurr('$0.00',qryBalances.FieldByName('total').AsCurrency);

   if (sType = 'W/D') or (sType = 'REV') then
   begin
      rbCapital.Enabled := (qryBalances.FieldByName('balance').AsCurrency <> 0);
      rbInterest.Enabled := (qryBalances.FieldByName('intbalance').AsCurrency <> 0);
   end;

end;

procedure TfrmInvestmentTransactionNew.cxBtnSaveClick(Sender: TObject);
var
   iAmount,iBalance : currency;
   sTmp : String;
   bBankReceipt: boolean;
begin
   if OkToPost then
   begin
      try
         bBankReceipt := False;
         // check input values
         if bReverseSign then
           iAmount := 0-cxCeAmount.Value
         else
           iAmount := cxCeAmount.Value;

         if bReversal then
         begin
           iAmount := iAmount * -1;
         end
         else
         begin
           // check the balance!
           qryCheckBalance.Close;
           qryCheckBalance.ParamByName('NDEPOSITAccount').AsInteger := iDeposit;
           qryCheckBalance.ParamByName('newAmount').AsCurrency := iAmount;
           qryCheckBalance.open;
           iBalance := qryCheckBalance.fieldByname('balance').AsCurrency;
           qryCheckBalance.Close;

           if iBalance < 0 then
               sTmp := sTmp + 'Error this amount will overdraw account';
         end;

         if sTmp <> '' then
         begin
           MsgErr(sTmp);
           exit;
         end;

         if iTransId <= 0 then
         begin
           if TableInteger('BANK','ACCT', ABank,'bank_receipt_seq') > 0 then
           begin
              iTransId := TableInteger('BANK','ACCT', ABank,'bank_receipt_seq');
              bBankReceipt := True;
           end
           else
               iTransId := strToInt(dmAxiom.GetSeqNumber('SQNC_NINVTRAN'));
         end;

         if bReversal then
         begin
           qryInvestmentTransDetails.Edit;
           qryInvestmentTransDetails.FieldByName('REV_NINVTRAN').AsInteger := iTransId;
           qryInvestmentTransDetails.Post;
         end;

         try
           qryInvestmentTrans.Close;
           qryInvestmentTrans.Open;
           qryInvestmentTrans.insert;
           qryInvestmentTrans.FieldByName('NINVTRAN').AsInteger := iTransId;
           qryInvestmentTrans.FieldByName('NMATTER').AsInteger := iMatter;
           qryInvestmentTrans.FieldByName('NDEPOSITACCOUNT').AsInteger := iDeposit;
           // for reversals FOldType = value of transaction being reversed
           // for all other transactions FOldType = stype
           qryInvestmentTrans.FieldByName('TYPE').AsString := FOldType;
           qryInvestmentTrans.FieldByName('CREATED').AsDateTime := cxDeCreated.Date;
           qryInvestmentTrans.FieldByName('DESCR').AsString := cxEdDescr.Text;
           qryInvestmentTrans.FieldByName('Reference').AsString := cxEdReference.Text;
           qryInvestmentTrans.FieldByName('PayeePayor').AsString := cxEdPayee.Text;
           qryInvestmentTrans.FieldByName('AMOUNT').AsCurrency := iAmount;
           qryInvestmentTrans.FieldByName('TRAN_TYPE').AsString := sTranType;
           qryInvestmentTrans.FieldByName('BANK').AsString := ABank;
           qryInvestmentTrans.FieldByName('PAYMENT_METHOD').AsString := cmbPaymentMethod.Text;
           qryInvestmentTrans.FieldByName('PAYMENT_DETAILS').AsString := memoBankDetails.Text;
           if bReversal then
              qryInvestmentTrans.FieldByName('REV_NINVTRAN').AsInteger := qryInvestmentTransDetails.FieldByName('ninvtran').AsInteger;
           qryInvestmentTrans.post;
         except
           Raise;
         end;

         if cbPrint.Checked then
         begin
           PrintInvReceipt(iTransId);

{           qryDep.Close;
           qryDep.ParamByName('ninvtran').AsInteger := iTransId;
           qryDep.open;
           qrySystem.Close;
           qrySystem.ParamByName('entity').AsString := dmAxiom.Entity;
           qrySystem.Open;

           if not dmAxiom.runningide then
              rpReceipt.DeviceType := 'Printer'
           else
              rpReceipt.DeviceType := 'Screen';

           rpReceipt.Print;  }
         end;
      finally
         if bBankReceipt then
         begin
           with dmAxiom.qryTmp do
           begin
              SQL.Text := 'update bank set bank_receipt_seq = :receipt_seq where acct = :bank';
              ParamByName('receipt_seq').AsInteger := iTransId + 1;
              ParamByName('bank').AsString := ABank;
              ExecSQL;
           end;
         end;
      end;

      if cbKeepOpen.Checked then
      begin
        iTransId := 0;
        clLcDepositAccount.Text := '';
//        cxEdDescr.Text := '';
        cxCeAmount.Value := 0;
        cxEdReference.Text := '' ;
//        cxEdPayee.Text := '' ;
        cmbPaymentMethod.EditValue := '';
        memoBankDetails.Lines.Clear;
        ModalResult := mrNone;
      end
      else
        ModalResult := mrOk;
   end;
end;

procedure TfrmInvestmentTransactionNew.FormCreate(Sender: TObject);
begin
   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := clBtnFace;
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

   iTransId := -1;
   cxDeCreated.EditValue := trunc(now);
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
end;

procedure TfrmInvestmentTransactionNew.cxEdPayeePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   Screen.Cursor := crHourGlass;
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      cxEdPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
   end;
   screen.Cursor := crDefault;
end;

procedure TfrmInvestmentTransactionNew.cxLcMatterPropertiesCloseUp(
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
         iMatter := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
         sfileid := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;

         qryMRUList.Refresh;
         cxEdPayee.Text := MatterString(iMatter,'TITLE');

         cxLcMatter.editValue := iMatter;
         qryDepositAccount.Close;
         qryDepositAccount.ParamByName('nmatter').AsInteger := iMatter;
         qryDepositAccount.open;

         clLcDepositAccount.EditValue := 0;
         iDeposit := 0;
      end;
   end;
end;

procedure TfrmInvestmentTransactionNew.clLcDepositAccountPropertiesChange(
  Sender: TObject);
begin
   iDeposit := clLcDepositAccount.editValue;
end;

procedure TfrmInvestmentTransactionNew.cxLcMatterPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   try
      qryDepositAccount.Close;
      qryDepositAccount.ParamByName('nmatter').AsInteger := 0;
      qryDepositAccount.open;

      if (cxLcMatter.text = sFileId) then
         exit;

      sFileId := cxLcMatter.text;

      if MatterIsCurrent(sFileId) then
      begin
         imatter := strtoint(matterString(sFileId,'nmatter'));
         cxEdPayee.Text := MatterString(iMatter,'TITLE');

         qryDepositAccount.Close;
         qryDepositAccount.ParamByName('nmatter').AsInteger := iMatter;
         qryDepositAccount.open;

         clLcDepositAccount.EditValue := 0;
         iDeposit := 0;
      end
      else
      begin
         sFileId := '';
         DisplayValue := '';
         MsgErr('Matter is not current');
      end;
   finally
     //
   end;
end;

function TfrmInvestmentTransactionNew.OkToPost: boolean;
var
   sTmp: string;
   bOKtoPost: boolean;
begin
   sTmp := '';
    bOKtoPost := True;

   if iMatter = 0 then
      sTmp := sTmp + 'Matter must have a value' + #13;
   if iDeposit = 0 then
      sTmp := sTmp + 'Deposit must have a value' + #13;
   if cxDeCreated.editvalue = nullDate then
      sTmp := sTmp + 'Created must have a value' + #13;
   if cxEdDescr.Text = '' then
      sTmp := sTmp + 'Description must have a value' + #13;
   if cxEdReference.text = '' then
      sTmp := sTmp + 'Reference must have a value' + #13;
   if cxEdPayee.text = '' then
      sTmp := sTmp + 'Payee/Payor must have a value' + #13;
   if Length(cmbPaymentMethod.Text) > 30 then
      sTmp := sTmp + 'Payment Method can only be 30 characters in length.' + #13;

   if sTmp <> '' then
   begin
      MsgInfo('Please complete the following Cheque details before posting:    ' + #13 + #13 + sTmp);
      bOKtoPost := False
   end;

   OKtoPost := bOKtoPost;
end;

procedure TfrmInvestmentTransactionNew.rbInterestClick(Sender: TObject);
begin
   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := clMoneyGreen;
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

   Self.Color := clMoneyGreen;
   if sType = 'W/D' then
   begin
      sType := 'INTWDL';
      cxEdDescr.Text := 'Interest Withdrawal';
   end
   else
   begin
      sType := 'INT';
      cxEdDescr.Text := 'Interest';
   end;
   sTranType := 'I';

   FOldType := 'INT';
end;

procedure TfrmInvestmentTransactionNew.rbCapitalClick(Sender: TObject);
begin
   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := clBtnFace;
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

   Self.Color := clBtnFace;
   sTranType := 'C';
   if sType = 'INTWDL' then
   begin
      sType := 'W/D';
      cxEdDescr.Text := 'Capital Withdrawal';
   end
   else
   begin
      sType := 'DEP';
      cxEdDescr.Text := 'Deposit';
   end;
end;

procedure TfrmInvestmentTransactionNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryBalances.Close;
   qryDepositAccount.Close;
   qryMRUList.Close;
   qryInvestmentTrans.Close;
   qryInvestmentTransDetails.Close;
end;

procedure TfrmInvestmentTransactionNew.cmbPaymentTypePropertiesInitPopup(
  Sender: TObject);
begin
   cmbPaymentMethod.Properties.Items.Clear;
   with qryPaymentMethod do
   begin
      close;
      open;
      while not eof do
      begin
         cmbPaymentMethod.Properties.Items.Add(FieldByName('PAYMENT_METHOD').AsString);
         next;
      end;
   end;
end;

procedure TfrmInvestmentTransactionNew.PrintInvReceipt(AInvReceipt: integer);
var
   sReceipt, nAInvReceipt, NewChar: string;
   acct, Buffer, Dest, sSQL, Bind: string;
   x,i: integer;
   lDataModule: TdaDataModule;
   CompCount, CompTotal: integer;
   lSQL: TdaSQL;
   bNoTemplate: boolean;
begin
   dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
   dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
   dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
   dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
   dmAxiom.orsAxiom.Connect;

   sReceipt := 'RECEIPT_INV';
   nAInvReceipt:= IntToStr(AInvReceipt);
   acct := dmAxiom.Entity;
   bNoTemplate := False;

   try
      dmAxiom.qryRB_Items.Close;
      Report.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      Report.Template.DatabaseSettings.NameField := 'ITEM_Name';
      Report.Template.DatabaseSettings.TemplateField := 'Template';
      Report.Template.DatabaseSettings.Name := sReceipt;
      Report.Template.LoadFromDatabase;
   except
      bNoTemplate := True;
   end;

   if bNoTemplate then
   begin
      qryDep.Close;
      qryDep.ParamByName('ninvtran').AsInteger := iTransId;
      qryDep.open;
      qrySystem.Close;
      qrySystem.ParamByName('entity').AsString := dmAxiom.Entity;
      qrySystem.Open;

      if not dmAxiom.runningide then
         rpReceipt.DeviceType := 'Printer'
      else
         rpReceipt.DeviceType := 'Screen';
      rpReceipt.Print;
   end
   else
   begin
      x := 0;
      i := 0;

      try
         lDataModule := daGetDataModule(Report);
      except
         Raise;
      end;

      if (lDataModule <> nil) then
          CompTotal := lDataModule.DataViewCount;

      Dest := '';
      Buffer := '';
      sSQL := '';
      for CompCount := 0 to CompTotal - 1 do
      begin
          {get SQL object}
          Dest := '';
          Buffer := '';
          sSQL := '';
          x := 0;
          i := 0;
          if (GetSQLObject(Report, lSQL, CompCount)) then
          begin
             sSQL := lSQL.SQLText.Text;

             while i < Length(sSQL) do
             begin
                if (sSQL[i] <> ':') then
                begin
                   if sSQL[i] = #10 then
                      Dest := Dest + ' ';
                   if ((sSQL[i] > chr(64)) and (sSQL[i] < chr(91))) or
                      ((sSQL[i] > chr(96)) and (sSQL[i] < chr(123))) or
                      (sSQL[i] = chr(46)) or (sSQL[i] = chr(124)) or (sSQL[i] = chr(40)) or
                      (sSQL[i] = chr(41)) or (sSQL[i] = chr(43)) or (sSQL[i] = chr(45)) or
                      (sSQL[i] = chr(42)) or (sSQL[i] = chr(47)) or
                      ((sSQL[i] > chr(47)) and (sSQL[i] < chr(58)) or
                      (sSQL[i] = chr(60)) or (sSQL[i] = chr(61)) or (sSQL[i] = chr(62))) or
                      (sSQL[i] = chr(32)) or (sSQL[i] = chr(44)) or (sSQL[i] = chr(39)) or
                      (sSQL[i] = chr(95)) or (sSQL[i] = chr(38)) then
                      Dest := Dest + sSQL[i];
                   inc(i);
                end
                else
                begin
                   if (sSQL[i+1] <> ' ') and (sSQL[i+1] <> chr(39)) then
                   begin
                      Buffer := Dest;
                      x := i;
                      Bind := '';
                      NewChar := sSQL[x];
                      while (NewChar <> ' ') and (NewChar <> #10) do
                      begin
                         Bind := Bind + NewChar;
                         inc(x);
                         NewChar := sSQL[x];
                      end;
                      if Trim(UpperCase(Bind)) = ':NINVTRAN' then
                      begin
                         if nAInvReceipt = '' then nAInvReceipt := '0';
                         Dest := Dest + nAInvReceipt + ' ';
                      end;
                      if Trim(UpperCase(Bind)) = ':ENTITY' then
                      begin
                         Dest := Dest + '''' + acct + ''' ';
                      end;
                      i := x;
                   end
                   else
                   begin
                      Dest := Dest + ':';
                      inc(i);
                   end;
                end;
             end;
         end;
         lSQL.DatabaseName := dmAxiom.orsAxiom.Name;
         lSQL.SQLText.Text := Dest;
      end;

      if not dmAxiom.runningide then
         Report.DeviceType := 'Printer'
      else
         Report.DeviceType := 'Screen';
      Report.Print;
   end;
   dmAxiom.orsAxiom.Disconnect;
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmInvestmentTransactionNew, TFormStyleHookBackground);

finalization
   TStyleManager.Engine.UnRegisterStyleHook(TfrmInvestmentTransactionNew, TFormStyleHookBackground);

end.
