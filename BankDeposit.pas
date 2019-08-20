unit BankDeposit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ComCtrls, ToolWin, Buttons, NumberLabel,
  ExtCtrls, ImgList, OracleUniProvider, Uni, DBAccess, MemDS, VirtualTable,
  cxLookAndFeelPainters, cxButtons, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, cxCheckBox,
  Menus, cxGraphics, cxLookAndFeels, cxClasses, dxCore, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppModule, raCodMod,
  VCL.Themes, cxDateUtils, System.ImageList;

type
  TfrmBankDeposit = class(TForm)
    ilstToolbar: TImageList;
    qryReceipts: TUniQuery;
    dsReceipts: TUniDataSource;
    qryBankDepInsert: TUniQuery;
    Label1: TLabel;
    Label2: TLabel;
    lbReceiptsSelected: TListBox;
    lbReceiptsAll: TListBox;
    Label3: TLabel;
    cbBank: TComboBox;
    lblBankName: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    nlCheques: TNumberLabel;
    nlCash: TNumberLabel;
    nlCredit: TNumberLabel;
    nlTotal: TNumberLabel;
    qryBank: TUniQuery;
    Label8: TLabel;
    qryAdjust: TUniQuery;
    pbUnselect: TcxButton;
    pbNone: TcxButton;
    pbSelectAll: TcxButton;
    pbSelect: TcxButton;
    btnClearTrust: TcxButton;
    deDeposited: TcxDateEdit;
    chkNoExit: TcxCheckBox;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    qryBankDtls: TUniQuery;
    dsBankDtls: TUniDataSource;
    plBankDtls: TppDBPipeline;
    plDepositedReceipts: TppDBPipeline;
    ppReport1: TppReport;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabelEntity: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    qryDepositReceipt: TUniQuery;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText9: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppLabel15: TppLabel;
    raCodeModule1: TraCodeModule;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText11: TppDBText;
    ppLabel18: TppLabel;
    ppTitleBand1: TppTitleBand;
    qryTotals: TUniQuery;
    dsTotals: TUniDataSource;
    plTotals: TppDBPipeline;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    qryReceiptsRpt: TUniQuery;
    ppVarDepDate: TppVariable;
    procedure btnReceiptAllClick(Sender: TObject);
    procedure btnReceiptNoneClick(Sender: TObject);
    procedure btnReceiptSelectClick(Sender: TObject);
    procedure btnReceiptUnselectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbBankChange(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure tbtnProcessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearTrustClick(Sender: TObject);
    procedure tbtnPreviewClick(Sender: TObject);
    procedure deDepositedPropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure ppLabelEntityGetText(Sender: TObject; var Text: String);
    procedure ppVarDepDatePrint(Sender: TObject);
  private
    { Private declarations }
    procedure AdjustTotals(sRcptno : string; iDirection : integer);
    procedure MoveSelected(lbFrom : TListBox; lbTo : TListBox);

    procedure GetReceipts(oReceipts : TStringlist);

//    function  GetBankDepositReport : TqrBankDeposits;

  public
    { Public declarations }
  end;

var
  frmBankDeposit: TfrmBankDeposit;

implementation

uses
  AxiomData, MiscFunc, Bills, Vcl.Styles.FormStyleHooks;

{$R *.DFM}

procedure TfrmBankDeposit.btnReceiptAllClick(Sender: TObject);
begin
  cbBank.OnChange(Self);
end;

procedure TfrmBankDeposit.btnReceiptNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbReceiptsSelected, lbReceiptsAll);
  nlCheques.AsCurrency := 0.0;
  nlCash.AsCurrency := 0.0;
  nlCredit.AsCurrency := 0.0;
  nlTotal.AsCurrency := 0.0;
end;

procedure TfrmBankDeposit.btnReceiptSelectClick(Sender: TObject);
begin
  MoveSelected(lbReceiptsAll, lbReceiptsSelected);
end;

procedure TfrmBankDeposit.MoveSelected(lbFrom : TListBox; lbTo : TListBox);
var
  iCtr, iSel, iDirection : integer;
begin
  if lbFrom = lbReceiptsAll then
    iDirection := 1
  else
    iDirection := -1;

  if lbFrom.SelCount > 0 then
    case lbFrom.SelCount of
      1 : // Only one selected - do it the simple way
      begin
        // Adjust the totals
        AdjustTotals(Copy(lbFrom.Items.Strings[lbFrom.ItemIndex], 0, Pos(' ', lbFrom.Items.Strings[lbFrom.ItemIndex]) - 1), iDirection);
        iCtr := lbFrom.ItemIndex;
        iSel := lbTo.Items.Add(lbFrom.Items.Strings[lbFrom.ItemIndex]);
        lbTo.Selected[iSel] := True;
        lbFrom.Items.Delete(lbFrom.ItemIndex);
        if (lbFrom.Items.Count - 1) < iCtr then
          iCtr := lbFrom.Items.Count - 1;
        lbFrom.ItemIndex := iCtr;
        lbFrom.Selected[iCtr] := True;
      end;
      else  // Multiple selected items
      begin
        for iCtr := (lbFrom.Items.Count - 1) downto 0 do
          if lbFrom.Selected[iCtr] then
          begin
            // Adjust the totals
            AdjustTotals(Copy(lbFrom.Items.Strings[iCtr], 0, Pos(' ', lbFrom.Items.Strings[iCtr]) - 1), iDirection);
            // Move this one
            iSel := lbTo.Items.Add(lbFrom.Items.Strings[iCtr]);
            lbTo.Selected[iSel] := True;
            lbFrom.Items.Delete(iCtr);
          end;
      end;
    end;
end;

procedure TfrmBankDeposit.AdjustTotals(sRcptno : string; iDirection : integer);
begin
  with qryAdjust do
  begin
    Close;
    SQL.Text := 'SELECT "TYPE", AMOUNT FROM RECEIPT WHERE ACCT = ''' + cbBank.Text + ''' AND RCPTNO = ''' + sRcptno + '''';
    Open;
    if not EOF then
    begin
      if FieldByName('TYPE').AsString = 'CA' then
        nlCash.AsCurrency := nlCash.AsCurrency + (iDirection * FieldByName('AMOUNT').AsCurrency)
      else if FieldByName('TYPE').AsString = 'CC' then
        nlCredit.AsCurrency := nlCredit.AsCurrency + (iDirection * FieldByName('AMOUNT').AsCurrency)
      else
        nlCheques.AsCurrency := nlCheques.AsCurrency + (iDirection * FieldByName('AMOUNT').AsCurrency);
    end;
    Close;
  end;
  nlTotal.AsCurrency := nlCheques.AsCurrency + nlCash.AsCurrency + nlCredit.AsCurrency;
end;

procedure TfrmBankDeposit.btnReceiptUnselectClick(Sender: TObject);
begin
  MoveSelected(lbReceiptsSelected, lbReceiptsAll);
end;

procedure TfrmBankDeposit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryReceipts.Close;
   qryBank.Close;
   qryAdjust.Close;

   RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmBankDeposit.cbBankChange(Sender: TObject);
begin
   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cbBank.Text);//set
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

//  Self.Color := BankColour(cbBank.Text);

   lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
   with qryBank do
   begin
      Close;
      ParamByName('P_Bank').AsString := cbBank.Text;
      Open;
   end;
   with qryReceipts do
   begin
      Close;
      ParamByName('P_Bank').AsString := cbBank.Text;
//      ParamByName('Deposit').AsDateTime := Trunc(dtpDeposited.Date)+1;
      ParamByName('Deposit').AsDateTime := Trunc(deDeposited.Date)+1;
      Open;
      lbReceiptsAll.Clear;
      lbReceiptsSelected.Clear;
      nlCheques.AsCurrency := 0.0;
      nlCash.AsCurrency := 0.0;
      nlCredit.AsCurrency := 0.0;
      while not EOF do
      begin
         if FieldByName('TYPE').AsString = 'CA' then
            nlCash.AsCurrency := nlCash.AsCurrency + FieldByName('AMOUNT').AsCurrency
         else if FieldByName('TYPE').AsString = 'CC' then
            nlCredit.AsCurrency := nlCredit.AsCurrency + FieldByName('AMOUNT').AsCurrency
         else
            nlCheques.AsCurrency := nlCheques.AsCurrency + FieldByName('AMOUNT').AsCurrency;

         lbReceiptsSelected.Items.Add(FieldByName('RCPTNO').AsString + ' ' +
                                   FormatDateTime('ddddd', FieldByName('CREATED').AsDateTime) + ' ' +
                                   Format('%m', [FieldByName('AMOUNT').AsCurrency]) + ' ' +
                                   FieldByName('PAYOR').AsString + ': ' +
                                   FieldByName('DESCR').AsString);
         Next;
      end;
      nlTotal.AsCurrency := nlCheques.AsCurrency + nlCash.AsCurrency + nlCredit.AsCurrency;
      Close;
   end;
end;

procedure TfrmBankDeposit.tbtnPrintClick(Sender: TObject);
var
//  loTqrBankDeposits : TqrBankDeposits;
   lsReceipts        : String;
   loReceipts        : TStringList;
   liCtr             : integer;
begin
//   loTqrBankDeposits := nil;

   try
      try
         loReceipts := TStringList.Create;
         GetReceipts(loReceipts);
         lsReceipts := QuotedStr(loReceipts.Strings[0]);

         for liCtr := 1 to (loReceipts.Count - 1) do
         begin
            lsReceipts := lsReceipts + ', ' + QuotedStr(loReceipts.Strings[liCtr])
         end;    //  end for

         with qryReceiptsRpt do
         begin
            Close;
            SQL.Clear;
            SQL.Text := 'SELECT RCPTNO, CREATED, case when type = ''CA'' then DESCR else drawer end as descr, TYPE, AMOUNT, PAYOR, BANK, '+
                        'BRANCH, CHQNO, BANKED, NRECEIPT, '+
                        'bank_clearance_days.DESCRIPTION AS TYPE_DESC, '+
//                        'case when type = ''CA'' then ''Cash'' when type = ''CC'' then ''Credit Card'' else ''Cheque'' end as type_desc, '+
                        'case when type = ''CA'' then payor when type = ''CC'' then payor else bank end as pay_bank '+
                        'FROM RECEIPT, bank_clearance_days '+
                        'WHERE ACCT = :P_Bank  '+
                        'AND CREATED < :Deposit '+
                        'AND REVERSED <> ''Y'' '+
                        'AND BANKED <> ''Y'' '+
                        'AND NBANKDEP IS NULL '+
                        'AND TYPE = bank_clearance_days.CODE '+
                        'AND bank_deposit = ''Y'' '+
//                        'AND TYPE IN (''CA'',''CC'',''CQ'',''BC'',''MO'',''OS'') '+
                        'AND RCPTNO in (' + lsReceipts + ')' +
                        'ORDER BY type, RCPTNO  ';
            ParamByName('P_Bank').AsString := cbBank.Text;
            ParamByName('Deposit').AsDateTime := Trunc(deDeposited.Date)+1;
            Open;
         end;

         with qryTotals do
         begin
            Close;
            SQL.Clear;
            SQL.Text := 'select nvl(caamt,0), nvl(ccamt,0), nvl(ccchq,0) from '+
                        '( '+
                        'SELECT sum(AMOUNT) caamt '+
                        'FROM RECEIPT '+
                        'WHERE ACCT = :P_Bank  '+
                        'AND CREATED < :Deposit '+
                        'AND REVERSED <> ''Y''  '+
                        'AND BANKED <> ''Y''  '+
                        'AND NBANKDEP IS NULL  '+
                        'AND RCPTNO in (' + lsReceipts + ')' +
                        'and type = ''CA'' '+
                        '), '+
                        '(  '+
                        'SELECT sum(AMOUNT) ccamt '+
                        'FROM RECEIPT  '+
                        'WHERE ACCT = :P_Bank  '+
                        'AND CREATED < :Deposit '+
                        'AND REVERSED <> ''Y''  '+
                        'AND BANKED <> ''Y''  '+
                        'AND NBANKDEP IS NULL  '+
                        'and type = ''CC'' '+
                        'AND RCPTNO in (' + lsReceipts + ')' +
                        '), '+
                        '(  '+
                        'SELECT sum(AMOUNT) ccchq  '+
                        'FROM RECEIPT  '+
                        'WHERE ACCT = :P_Bank  '+
                        'AND CREATED < :Deposit  '+
                        'AND REVERSED <> ''Y''  '+
                        'AND BANKED <> ''Y'' '+
                        'AND NBANKDEP IS NULL  '+
                        'AND RCPTNO in (' + lsReceipts + ')' +
                        'AND TYPE IN (SELECT CODE FROM BANK_CLEARANCE_DAYS WHERE BANK_DEPOSIT = ''Y'' AND CODE NOT in (''CC'',''CA'') )'+
//                        'and type in (''CA'',''CQ'')  '+
//                        'and type in (''CQ'',''BC'', ''MO'',''OS'')  '+
                        ')  ';
            ParamByName('P_Bank').AsString := cbBank.Text;
            ParamByName('Deposit').AsDateTime := Trunc(deDeposited.Date)+1;
            Open;
         end;

         with qryBankDtls do
         begin
            Close;
            ParamByName('Bank').AsString := cbBank.Text;
            Open;
         end;

//         loTqrBankDeposits := GetBankDepositReport;
//      loTqrBankDeposits.Preview;
         ppReport1.DeviceType := 'Printer';
         ppReport1.Print;
      finally
//         FreeAndNil(loTqrBankDeposits);
         FreeAndNil(loReceipts);
      end;    //  end try-finally
   except
      begin
         Raise;
      end;
   end;    //  end try-except
end;

procedure TfrmBankDeposit.tbtnProcessClick(Sender: TObject);
var
  iCtr, iLastNreceipt: integer;
  bPostingFailed: boolean;
begin
  if MessageDlg('Have you printed your bank deposit slip?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      if lbReceiptsSelected.Items.Count > 0 then
      begin
        try
          if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;
          bPostingFailed := False;

          qryDepositReceipt.ParamByName('NBANKDEP').AsInteger := qryBank.FieldByName('NBANKDEP').AsInteger + 1;

          with qryAdjust do
          begin
            Close;
            SQL.Text := 'UPDATE BANK SET NBANKDEP = (NBANKDEP + 1) WHERE ACCT = ''' + qryBank.FieldByName('ACCT').AsString + '''';
            ExecSQL;
          end;

          iLastNreceipt := 0;
          for iCtr := 0 to lbReceiptsSelected.Items.Count - 1 do
          begin
            qryAdjust.Close;
            qryAdjust.SQL.Text := 'SELECT * FROM RECEIPT WHERE ACCT = ''' + cbBank.Text + ''' AND RCPTNO = ''' + Copy(lbReceiptsSelected.Items.Strings[iCtr], 0, Pos(' ', lbReceiptsSelected.Items.Strings[iCtr]) - 1) + '''';
            qryAdjust.Open;
            if not qryAdjust.EOF then
            begin
              if qryAdjust.FieldByName('NRECEIPT').AsInteger > iLastNreceipt then
                iLastNreceipt := qryAdjust.FieldByName('NRECEIPT').AsInteger;
              qryDepositReceipt.ParamByName('NRECEIPT').AsInteger := qryAdjust.FieldByName('NRECEIPT').AsInteger;
              qryDepositReceipt.ParamByName('BANKED_DATE').AsDateTime := deDeposited.Date;
              qryDepositReceipt.ParamByName('DCLEARDATE').AsDateTime := GetClearDate(deDeposited.Date, qryAdjust.FieldByName('TYPE').AsString);
              if GetClearDate(deDeposited.Date, qryAdjust.FieldByName('TYPE').AsString) > trunc(deDeposited.Date) then
                  qryDepositReceipt.ParamByName('CLEARED').AsString := 'N'
              else
                  qryDepositReceipt.ParamByName('CLEARED').AsString := 'Y';

              qryDepositReceipt.ExecSQL;
            end;
          end;
          qryAdjust.Close;

          with qryBankDepInsert do
          begin
            ParamByName('ACCT').AsString := cbBank.Text;
//             ParamByName('DEPOSIT_DATE').AsDateTime := dtpDeposited.Date;
            ParamByName('DEPOSIT_DATE').AsDateTime := deDeposited.Date;
            ParamByName('AMOUNT').AsFloat := nlTotal.AsCurrency;
            ParamByName('LAST_NRECEIPT').AsInteger := iLastNreceipt;
            ParamByName('NBANKDEP').AsInteger := qryDepositReceipt.ParamByName('NBANKDEP').AsInteger;
            ExecSQL;
          end;
        except
          on E: Exception do
          begin
            dmAxiom.uniInsight.Rollback;
            bPostingFailed := True;
            MsgErr('Posting failed' + #13 + #13 + E.Message);
          end;
        end;

        if (not bPostingFailed) then
        begin
          dmAxiom.uniInsight.Commit;
          MsgInfo('Bank deposit posted as deposit number ' + IntToStr(qryDepositReceipt.ParamByName('NBANKDEP').AsInteger));
          if (not chkNoExit.Checked)then
          begin
            ClearCheques;
            Self.Close;
//            RemoveFromDesktop(Self);
          end
          else
            cbBankChange(Self);
        end;
      end;
    end;    //  end if
end;

procedure TfrmBankDeposit.FormCreate(Sender: TObject);
begin
  Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
//  dtpDeposited.Date := Date;
  deDeposited.Date := Date;
  AddBanks(cbBank, '');

  cbBank.ItemIndex := cbBank.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
  cbBank.OnChange(Self);
//  dtpDeposited.maxDate := Date;
  deDeposited.Properties.MaxDate := Date;
end;

procedure TfrmBankDeposit.btnClearTrustClick(Sender: TObject);
begin
    with TUniQuery.Create(Self) do
    begin
        SQL.Text := 'UPDATE ALLOC SET CLEARED = ''Y'' WHERE CLEARED = ''N'' AND TRUNC(SYSDATE) >= TRUNC(DCLEARDATE) ';
        ExecSQL;
        CLose;

    end;
end;

{function TfrmBankDeposit.GetBankDepositReport : TqrBankDeposits;
var
  loTqrBankDeposits : TqrBankDeposits;
  loReceipts        : TStringList;
begin
  loTqrBankDeposits := nil;
  try
    try
      loReceipts := TStringList.Create;
      GetReceipts(loReceipts);

      loTqrBankDeposits := TqrBankDeposits.Create(self);
      loTqrBankDeposits.Session := dmAxiom.uniInsight;
      loTqrBankDeposits.Bank := cbBank.Text;
      loTqrBankDeposits.Receipts := loReceipts;
      loTqrBankDeposits.Cheque := nlCheques.Caption;
      loTqrBankDeposits.Cash := nlCash.Caption;
      loTqrBankDeposits.Credit := nlCredit.Caption;
      loTqrBankDeposits.Total := nlTotal.Caption;
      loTqrBankDeposits.Deposited := FormatDateTime('ddddd', deDeposited.Date);
      loTqrBankDeposits.RetrieveData;

      Result := loTqrBankDeposits;

    finally
      FreeAndNil(loReceipts);
    end;    //  end try-finally
  except
    begin
      FreeAndNil(loTqrBankDeposits);
      Raise;
    end;
  end;    //  end try-except
end;       }

procedure TfrmBankDeposit.GetReceipts(oReceipts : TStringlist);
var
  liCtr : Integer;
begin
  for liCtr := 0 to (lbReceiptsSelected.Items.Count - 1) do
    begin
      oReceipts.Add(Copy(lbReceiptsSelected.Items.Strings[liCtr], 0, Pos(' ', lbReceiptsSelected.Items.Strings[liCtr]) - 1));

    end;    //  end for
end;

procedure TfrmBankDeposit.tbtnPreviewClick(Sender: TObject);
var
   lsReceipts        : String;
   loReceipts        : TStringList;
   liCtr             : integer;
begin 
   try
      try
         loReceipts := TStringList.Create;
         GetReceipts(loReceipts);
         lsReceipts := QuotedStr(loReceipts.Strings[0]);

         for liCtr := 1 to (loReceipts.Count - 1) do
         begin
            lsReceipts := lsReceipts + ', ' + QuotedStr(loReceipts.Strings[liCtr])
         end;    //  end for

         with qryReceiptsRpt do
         begin
            Close;
            SQL.Clear;
            SQL.Text := 'SELECT RCPTNO, CREATED, case when type = ''CA'' then '+
                        'DESCR when type = ''CC'' then DESCR else drawer end as descr, '+
                        'TYPE, AMOUNT, PAYOR, BANK, '+
                        'case when type = ''CC'' then RCPTNO else BRANCH end as branch, CHQNO, BANKED, NRECEIPT, '+
                        'BANK_CLEARANCE_DAYS.DESCRIPTION AS TYPE_DESC, '+
//                        'case when type = ''CA'' then ''Cash'' when type = ''CC'' then ''Credit Card'' else '+
//                        ' ''Cheque'' end as type_desc, '+
                        'case when type = ''CA'' then payor when type = ''CC'' then payor else bank end as pay_bank '+
                        'FROM RECEIPT, BANK_CLEARANCE_DAYS '+
                        'WHERE ACCT = :P_Bank  '+
                        'AND CREATED < :Deposit '+
                        'AND REVERSED <> ''Y'' '+
                        'AND BANKED <> ''Y'' '+
                        'AND NBANKDEP IS NULL '+
                        'AND TYPE = BANK_CLEARANCE_DAYS.code '+
                        'AND BANK_DEPOSIT = ''Y'' '+
//                        'AND TYPE IN (''CA'',''CC'',''CQ'',''BC'',''MO'',''OS'') '+
                        'AND RCPTNO in (' + lsReceipts + ')' +
                        'ORDER BY type, RCPTNO  ';
            ParamByName('P_Bank').AsString := cbBank.Text;
            ParamByName('Deposit').AsDateTime := Trunc(deDeposited.Date)+1;
            Open;
         end;

         with qryTotals do
         begin
            Close;
            SQL.Clear;
            SQL.Text := 'select nvl(caamt,0), nvl(ccamt,0), nvl(ccchq,0) from '+
                        '( '+
                        'SELECT sum(AMOUNT) caamt '+
                        'FROM RECEIPT '+
                        'WHERE ACCT = :P_Bank  '+
                        'AND CREATED < :Deposit '+
                        'AND REVERSED <> ''Y''  '+
                        'AND BANKED <> ''Y''  '+
                        'AND NBANKDEP IS NULL  '+
                        'AND RCPTNO in (' + lsReceipts + ')' +
                        'and type = ''CA'' '+
                        '), '+
                        '(  '+
                        'SELECT sum(AMOUNT) ccamt '+
                        'FROM RECEIPT  '+
                        'WHERE ACCT = :P_Bank  '+
                        'AND CREATED < :Deposit '+
                        'AND REVERSED <> ''Y''  '+
                        'AND BANKED <> ''Y''  '+
                        'AND NBANKDEP IS NULL  '+
                        'and type = ''CC'' '+
                        'AND RCPTNO in (' + lsReceipts + ')' +
                        '), '+
                        '(  '+
                        'SELECT sum(AMOUNT) ccchq  '+
                        'FROM RECEIPT  '+
                        'WHERE ACCT = :P_Bank  '+
                        'AND CREATED < :Deposit  '+
                        'AND REVERSED <> ''Y''  '+
                        'AND BANKED <> ''Y'' '+
                        'AND NBANKDEP IS NULL  '+
                        'AND RCPTNO in (' + lsReceipts + ')' +
//                        'and type NOT in (''CC'',''CA'')  '+
                        'AND TYPE IN (SELECT CODE FROM BANK_CLEARANCE_DAYS WHERE BANK_DEPOSIT = ''Y'' AND CODE NOT in (''CC'',''CA'') )'+
                        ')  ';
            ParamByName('P_Bank').AsString := cbBank.Text;
            ParamByName('Deposit').AsDateTime := Trunc(deDeposited.Date)+1;
            Open;
         end;

         with qryBankDtls do
         begin
            Close;
            ParamByName('Bank').AsString := cbBank.Text;
            Open;
         end;

         ppReport1.DeviceType := 'Screen';
         ppReport1.Print;
      finally
         FreeAndNil(loReceipts);
      end;    //  end try-finally
   except
      begin
         Raise;
      end;
   end;    //  end try-except
end;

procedure TfrmBankDeposit.deDepositedPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (deDeposited.Date > Date) then
  begin
    deDeposited.Date := Date;
    Exit;
  end;
  cbBankChange(Self);
end;

procedure TfrmBankDeposit.dxBarButton4Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmBankDeposit.ppLabelEntityGetText(Sender: TObject;
  var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

procedure TfrmBankDeposit.ppVarDepDatePrint(Sender: TObject);
begin
    ppVarDepDate.Value := deDeposited.Date;
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmBankDeposit, TFormStyleHookBackground);

finalization
   TStyleManager.Engine.UnRegisterStyleHook(TfrmBankDeposit, TFormStyleHookBackground);

end.

