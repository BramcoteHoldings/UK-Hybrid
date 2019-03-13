unit InvoiceDebitNote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  ExtCtrls, OracleUniProvider, Uni, DBAccess, MemDS,
  citfunc, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  EnforceCustomDateEdit, NumberEdit, dxCore, cxDateUtils, dxBar, cxClasses,
  cxLabel;

const
  colTYPE = 0;
  colREFNO = 1;
  colLONGDESC = 2;
  colREASON = 3;
  colTAXCODE = 4;
  colAMOUNT = 5;
  colTAX = 6;

type
  TfrmInvoiceDebit = class(TForm)
    Label2: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tbRefno: TEdit;
    tbDesc: TEdit;
    dsAllocs: TUniDataSource;
    dsAccount: TUniDataSource;
    dbgrLedger: TDBGrid;
    qryAccount: TUniQuery;
    qryAllocs: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qryTmp: TUniQuery;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    lblTax: TLabel;
    lblBalance: TLabel;
    Label11: TLabel;
    neAmount: TNumberEdit;
    lblUnallocatedMsg: TLabel;
    lblUnallocated: TLabel;
    qryLedgerTYPE: TStringField;
    qryLedgerREFNO: TStringField;
    qryLedgerLONGDESC: TStringField;
    qryLedgerREASON: TStringField;
    qryLedgerAMOUNT: TFloatField;
    qryLedgerTAXCODE: TStringField;
    qryLedgerTAX: TFloatField;
    qryLedgerWITHHOLD: TStringField;
    qryUpdateInvoice: TUniQuery;
    dtpDate: TEnforceCustomDateEdit;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnOk: TdxBarButton;
    dxBarButton2: TdxBarButton;
    lblCreditor: TcxLabel;
    procedure dbgrLedgerEditButtonClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrLedgerColExit(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbDescExit(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure qryLedgerTAXCODEChange(Sender: TField);
    procedure qryLedgerAMOUNTChange(Sender: TField);
    procedure neAmountExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
  private
    { Private declarations }
    Balance, Tax, TotalAmt, WithholdTax: currency;
    DefaultTax: string;
    function OKtoPost: Boolean;
    procedure UpdateTotal;
    procedure CreateAccount;
    procedure CalcTax;
    procedure SetDefaultTaxType;
  public
    { Public declarations }
    procedure DisplayCreditor(NCreditor: integer);
  end;

implementation

uses
  MSearch, MiscFunc, AxiomData, LSearch, glComponentUtil;

{$R *.DFM}


procedure TfrmInvoiceDebit.CreateAccount;
begin
  TotalAmt := 0;
  // Create the INVOICE entry - as we are using Cached Updates
  // this won't save until we explicitly ApplyUdates
  qryAccount.Open;
  qryAccount.Insert;
//       14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
  qryAccount.FieldByName('NCHEQUE').AsInteger := GetSequenceNumber('SQNC_NCHEQUE');  //GetSeqnum('NCHEQUE');
  qryAccount.FieldByName('INVOICE_DATE').AsDateTime := dtpDate.Date;
  qryAccount.FieldByName('ACCT').AsString := dmAxiom.Entity;
end;


procedure TfrmInvoiceDebit.DisplayCreditor(NCreditor: integer);
begin
  lblCreditor.Caption := TableString('CREDITOR', 'NCREDITOR', NCreditor, 'SEARCH');
  if lblCreditor.Caption = '' then
    Self.Close
  else
  begin
    CreateAccount;
    qryAccount.FieldByName('NCREDITOR').AsInteger := NCreditor;
    Self.Show;
    tbRefno.SetFocus;
  end;
end;


procedure TfrmInvoiceDebit.dxBarButton2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmInvoiceDebit.dbgrLedgerEditButtonClick(Sender: TObject);
begin
  if dbgrLedger.SelectedIndex = colREFNO then
  begin
    if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Matter' then
    begin
      if (not FormExists(frmMatterSearch)) then
        Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOk then
      begin
        qryLedger.Edit;
        qryLedger.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
        qryLedger.FieldByName('LONGDESC').AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString;

        if qryLedger.FieldByName('REASON').AsString = '' then
          qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
      end;
    end;

    if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Ledger' then
    begin
      if not FormExists(frmLedgerSearch) then
        Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

      if frmLedgerSearch.ShowModal = mrOk then
      begin
        qryLedger.Edit;
        qryLedger.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
        qryLedger.FieldByName('LONGDESC').AsString := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;

        if qryLedger.FieldByName('REASON').AsString = '' then
          qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
      end;
    end;
  end;
end;


procedure TfrmInvoiceDebit.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
  bmPrevRecord := qryLedger.GetBookmark; { returns nil if table is empty }
  try
    qryLedger.DisableControls;
    qryLedger.First;
    TotalAmt := 0;
    Balance := 0;
    Tax := 0;
    WithholdTax := 0;
    while not qryLedger.EOF do
    begin
      TotalAmt := TotalAmt + qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency;
      Balance := Balance + qryLedger.FieldByName('AMOUNT').AsCurrency;
      Tax := Tax + qryLedger.FieldByName('TAX').AsCurrency;
      if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
        WithholdTax := WithholdTax + qryLedger.FieldByName('TAX').AsCurrency;
      qryLedger.Next;
    end;
    lblBalance.Caption := Format('%m', [Balance]);
    lblTax.Caption := Format('%m', [Tax]);
    lblTotal.Caption := Format('%m', [TotalAmt]);
  finally
    qryLedger.EnableControls;
    if bmPrevRecord <> nil then
    begin
      qryLedger.GoToBookmark(bmPrevRecord);
      qryLedger.FreeBookmark(bmPrevRecord);
    end;
  end;
  if (neAmount.AsCurrency <> 0) or dmAxiom.Security.Invoice.ForceTally then
    lblUnallocated.Caption := Format('%m', [neAmount.AsCurrency - TotalAmt]);
end;


function TfrmInvoiceDebit.OKtoPost: Boolean;
var
  sTmp: string;
  bOKtoPost: boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost := True;

  sTmp := '';
  if ((neAmount.AsCurrency <> 0) or dmAxiom.Security.Invoice.ForceTally) and (neAmount.AsCurrency <> TotalAmt) then
    sTmp := sTmp + '       Credit Note is not fully allocated' + #13;
  if tbDesc.Text = '' then
    sTmp := sTmp + '       Reason' + #13;
  if tbRefno.Text = '' then
    sTmp := sTmp + '       Reference Number' + #13;
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Credit Note details before posting:    ' + #13 + #13 + sTmp);
    bOKtoPost := False
  end;
  result := bOKtoPost;
end;


procedure TfrmInvoiceDebit.btnOKClick(Sender: TObject);
var
  cTax, cAmt: Double;
  bPostingFailed: Boolean;
  sCreditorCode: string;
  liInvoiceNum: Integer;
  cMatterTotal, cTradeTotal: Double;
  glInstance: TglComponentInstance;
  glComponentSetup: TglComponentSetup;
  sLedgerKey, sLedgerKeyDr: string;
begin

  glComponentSetup := dmAxiom.getGlComponents;

  if OKtoPost then
  begin
    if PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed] then
    begin
      bPostingFailed := False;
      // Create a INVOICE entry
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;

        liInvoiceNum := GetSeqNum('NINVOICE');

        qryAccount.FieldByName('ACCT').AsString := dmAxiom.Entity;
        qryAccount.FieldByName('TYPE').AsString := 'CN';
        qryAccount.FieldByName('CREDITOR').AsString := lblCreditor.Caption;
        qryAccount.FieldByName('AMOUNT').AsCurrency := 0 - TotalAmt;
        qryAccount.FieldByName('CREDITED').AsCurrency := 0;
        qryAccount.FieldByName('REFNO').AsString := tbRefno.Text;
        qryAccount.FieldByName('DESCR').AsString := tbDesc.Text;
        qryAccount.FieldByName('INVOICE_DATE').AsDateTime := dtpDate.Date;
        qryAccount.FieldByName('DUE_DATE').AsDateTime := dtpDate.Date;
        qryAccount.FieldByName('PAY_DATE').AsDateTime := dtpDate.Date;
        qryAccount.FieldByName('HOLD').AsString := 'N';
        qryAccount.FieldByName('OWING').AsCurrency := 0 - TotalAmt;
        qryAccount.FieldByName('NINVOICE').AsInteger := liInvoiceNum;

        qryAccount.Post; // Puts Account into cached buffer

        sCreditorCode := TableString('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'CODE');

        cMatterTotal := 0;
        cTradeTotal := 0;

        // Create Creditor Control Entry
        // 28/05/2004 Tony - Moved this code to after posting of individual
        // accounts to be able to total the amounts for matter and trade
        // and post seperate entries
        {
        PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
          , 0 - (TotalAmt - WithholdTax)
          , 0
          , qryAccount.FieldByName('REFNO').AsString
          , 'INVOICE'
          , qryAccount.FieldByName('NCHEQUE').AsInteger
          , qryAccount.FieldByName('DESCR').AsString
          // 17/05/2004 Tony - Changes for creditors work
          //, TableString('ENTITY', 'CODE', dmAxiom.Entity, 'CREDITORS')
          , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR')
          , ''
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , sCreditorCode
          , qryLedger.FieldByName('TAXCODE').AsString);
        }

        // Now, iterate through the entered Ledger Entries
        qryLedger.First;
        qryAllocs.Open;
        while not qryLedger.EOF do
        begin
          if qryLedger.FieldByName('TYPE').AsString = 'Matter' then
          begin
            qryAllocs.Insert;
            qryAllocs.FieldByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
            qryAllocs.FieldByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
            qryAllocs.FieldByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
            qryAllocs.FieldByName('NMEMO').AsInteger := 0;
            qryAllocs.FieldByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
            qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
            qryAllocs.FieldByName('CLIENT_NAME').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'TITLE');
            qryAllocs.FieldByName('MATTER_DESC').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'SHORTDESCR');
            qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
            qryAllocs.FieldByName('SYSTEM_DATE').AsDateTime := Date;
            qryAllocs.FieldByName('PAYER').AsString := qryAccount.FieldByName('CREDITOR').AsString;
            qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
            qryAllocs.FieldByName('TYPE').AsString := qryAccount.FieldByName('TYPE').AsString;
            { 18/05/2004 Tony - Changes for Creditors (no cheque rec exists with this number,
                                nor should a cheque be created.
            qryAllocs.FieldByName('NCHEQUE').AsInteger := qryAccount.FieldByName('NCHEQUE').AsInteger;
            }
            qryAllocs.FieldByName('NCHEQUE').Clear;
            qryAllocs.FieldByName('NRECEIPT').AsInteger := 0;
            qryAllocs.FieldByName('NJOURNAL').AsInteger := 0;
            qryAllocs.FieldByName('REFNO').AsString := qryAccount.FieldByName('REFNO').AsString;
            qryAllocs.FieldByName('BILLED').AsString := 'N';
            qryAllocs.FieldByName('TRUST').AsString := 'G';
            qryAllocs.FieldByName('AMOUNT').AsCurrency := qryLedger.FieldByName('AMOUNT').AsCurrency;
            qryAllocs.FieldByName('TAX').AsFloat := qryLedger.FieldByName('TAX').AsFloat;
            qryAllocs.FieldByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
            qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
            qryAllocs.FieldByName('NINVOICE').AsInteger := liInvoiceNum;
            { 10/6/2004 Creditor work TH }
            qryAllocs.FieldByName('UPCRED').AsCurrency := qryLedger.FieldByName('AMOUNT').AsCurrency;

            qryAllocs.Post; // Put it into the cached buffer

            MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'UNBILL_DISB', (0 - qryAllocs.FieldByName('AMOUNT').AsCurrency));
            // Now make the General Ledger entry
            if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
            begin
              cAmt := (qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency);
              cTax := 0;
            end
            else begin
              cAmt := qryLedger.FieldByName('AMOUNT').AsCurrency;
              cTax := qryLedger.FieldByName('TAX').AsCurrency;
            end;

            {post components}
            sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR'), '', true, '');


            PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
              , cAmt
              , cTax
              , qryAccount.FieldByName('REFNO').AsString
              , 'INVOICE'
              , qryAccount.FieldByName('NCHEQUE').AsInteger
              , qryAllocs.FieldByName('DESCR').AsString
              , sLedgerKey
              , ''
              , qryAccount.FieldByName('NINVOICE').AsInteger
              , sCreditorCode
              , qryLedger.FieldByName('TAXCODE').AsString);

            cMatterTotal := cMatterTotal + qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency;
          end;

          // Or is it a General Ledger Allocation?
          if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
          begin
            if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
            begin
              cAmt := (qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency);
              cTax := 0;
            end
            else begin
              cAmt := qryLedger.FieldByName('AMOUNT').AsCurrency;
              cTax := qryLedger.FieldByName('TAX').AsCurrency;
            end;

            // lookup the ledger code cased on the value entered
            glInstance := dmAxiom.getGlComponents.parseString(qryLedger.FieldByName('REFNO').AsString, true);

            if not glInstance.valid then
            begin
                // something has gone very wrong !
              raise Exception.create('Error invalid ledger key');
            end;

            PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
              , cAmt
              , cTax
              , qryAccount.FieldByName('REFNO').AsString
              , 'INVOICE'
              , qryAccount.FieldByName('NCHEQUE').AsInteger
              , qryLedger.FieldByName('REASON').AsString
              , glInstance.ledgerKey
              , ''
              , qryAccount.FieldByName('NINVOICE').AsInteger
              , sCreditorCode
              , qryLedger.FieldByName('TAXCODE').AsString);

            glInstance.free;

            cTradeTotal := cTradeTotal + (qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency);
          end;

          if qryLedger.FieldByName('TAX').AsFloat <> 0 then
          begin
            if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
            begin
            {post components}
              sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, '1'), '', true, '');

              PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
                , 0 - qryLedger.FieldByName('TAX').AsCurrency
                , 0
                , qryAccount.FieldByName('REFNO').AsString
                , 'INVOICE'
                , qryAccount.FieldByName('NCHEQUE').AsInteger
                , qryAllocs.FieldByName('DESCR').AsString
                { Creditors work: 10/6/2004 TH Using Ledger not AdjustLedger
                , TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER')
                }
                , sLedgerKey
                , ''
                , qryAccount.FieldByName('NINVOICE').AsInteger
                , sCreditorCode
                , qryLedger.FieldByName('TAXCODE').AsString);
            end
            else
            begin

                {post components}
              sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'), '', true, '');


              PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
                , qryLedger.FieldByName('TAX').AsCurrency
                , 0
                , qryAccount.FieldByName('REFNO').AsString
                , 'INVOICE'
                , qryAccount.FieldByName('NCHEQUE').AsInteger
                , qryAllocs.FieldByName('DESCR').AsString
                { Creditors work: 10/6/2004 TH Using Ledger not AdjustLedger
                , TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'ADJUSTLEDGER')
                }
                , sLedgerKey
                , ''
                , qryAccount.FieldByName('NINVOICE').AsInteger
                , sCreditorCode
                , qryLedger.FieldByName('TAXCODE').AsString);
            end
          end;
          qryLedger.Next;
        end;

        // 28/05/2004 Creditors work: Tony
        // - Create Matter and Trade entries
        // - Unsure as to whether to subtract Withold Tax amount
        // Create Legal (Matter) Creditor Control Entry

        {post components}
        sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR'), '', true, '');


        PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
          , 0 - (cMatterTotal)
          , 0
          , qryAccount.FieldByName('REFNO').AsString
          , 'INVOICE'
          , qryAccount.FieldByName('NCHEQUE').AsInteger
          , qryAccount.FieldByName('DESCR').AsString
                  { 17/05/2004 Tony - Changes for creditors work
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'CREDITORS')
                  }
          , sLedgerKey
          , ''
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , sCreditorCode
          , qryLedger.FieldByName('TAXCODE').AsString);


                {post components}
        sLedgerKey := glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR'), '', true, '');


                // Create Trade (Ledger) Creditor Control Entry
        PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
          , 0 - (cTradeTotal)
          , 0
          , qryAccount.FieldByName('REFNO').AsString
          , 'INVOICE'
          , qryAccount.FieldByName('NCHEQUE').AsInteger
          , qryAccount.FieldByName('DESCR').AsString
                  { 17/05/2004 Tony - Changes for creditors work
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'CREDITORS')
                  }
          , sLedgerKey
          , ''
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , sCreditorCode
          , qryLedger.FieldByName('TAXCODE').AsString);

          {
                with qryInvoiceOld do
                begin
                  Edit;
                  FieldByName('OWING').AsFloat := FieldByName('OWING').AsFloat - TotalAmt;
                  Post;
                  ApplyUpdates;
                end;
          }
        qryAccount.ApplyUpdates;
        qryAllocs.ApplyUpdates;

        CheckLedgerTotal;

//        dmAxiom.uniInsight.Commit;

        // we need to commit prior to updating the invoice record. cannot update cached record.
        qryUpdateInvoice.ParamByName('LEGAL_CR_AMOUNT').AsFloat := 0 - cMatterTotal;
        qryUpdateInvoice.ParamByName('TRADE_CR_AMOUNT').AsFloat := 0 - cTradeTotal;
        qryUpdateInvoice.ParamByName('NINVOICE').AsInteger := qryAccount.FieldByName('NINVOICE').AsInteger;
        qryUpdateInvoice.ExecSQL;

        dmAxiom.uniInsight.Commit;

        except
          On E: Exception do
          begin
            bPostingFailed := True;
            qryAccount.CancelUpdates;
            qryAllocs.CancelUpdates;
            dmAxiom.uniInsight.Rollback;
            MsgErr('Posting failed:' + #13 + #13 + E.Message);
          end;
        end;


        if not bPostingFailed then
           Self.Close;
      end
   end
end;

procedure TfrmInvoiceDebit.dbgrLedgerColExit(Sender: TObject);
var
  glInstance: TglComponentInstance;
begin
  case dbgrLedger.SelectedIndex of
    colREFNO: // Display the long Description
      begin
        if not qryLedger.Modified then
          qryLedger.Edit;
        if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Matter' then
          qryLedger.FieldByName('LONGDESC').AsString := MatterString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'MATLOCATE');
        if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Ledger' then
        begin
      // lookup the ledger code based on the value entered
          glInstance := dmAxiom.getGlComponents.parseString(dbgrLedger.Columns.Items[colREFNO].Field.Text, true);
          if not glInstance.valid then
          begin
            glInstance.displayError;
            dbgrLedger.Columns.Items[colREFNO].Field.Text := '';
            dbgrLedger.Columns.Items[colLONGDESC].Field.Text := '';
            glInstance.free;
            exit;
          end
          else
          begin
            dbgrLedger.Columns.Items[colREFNO].Field.Text := glInstance.fullCode;
            qryLedger.FieldByName('LONGDESC').AsString := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
          end;

          if not AllowDirectPost(glInstance.ledgerKey) then
          begin
            MsgErr('You may not post to ledger Reference #' + glInstance.fullCode);
            dbgrLedger.Columns.Items[colREFNO].Field.Text := '';
            dbgrLedger.Columns.Items[colLONGDESC].Field.Text := '';
          end;
          SetDefaultTaxType;
        end;
      end;
    colAMOUNT:
      UpdateTotal;
  end;
end;

procedure TfrmInvoiceDebit.qryLedgerAfterInsert(DataSet: TDataSet);
begin
  qryLedger.FieldByName('TYPE').AsString := 'Matter';
  qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
  qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
end;

procedure TfrmInvoiceDebit.dbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
end;

procedure TfrmInvoiceDebit.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmInvoiceDebit.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmInvoiceDebit.popRemoveClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmInvoiceDebit.popEditClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Edit;
end;

procedure TfrmInvoiceDebit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLedger.Close;
  qryAccount.Close;
  qryAllocs.Close;

  Self.Release;
end;

procedure TfrmInvoiceDebit.tbDescExit(Sender: TObject);
begin
  Quickcode(tbDesc);
end;

procedure TfrmInvoiceDebit.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(tbDesc);
end;

procedure TfrmInvoiceDebit.dbgrLedgerKeyPress(Sender: TObject;
  var Key: Char);
var
  sType: string;
begin
  if Key = #13 then
    case dbgrLedger.SelectedIndex of
      colAMOUNT, colTAXCODE, colTAX:
        UpdateTotal;
    end;

  // Default the type if a key pressed
  if dbgrLedger.SelectedIndex = colTYPE then
  begin
    sType := '';
    if (Key = 'L') or (Key = 'l') then
      sType := 'Ledger'
    else if (Key = 'M') or (Key = 'm') then
      sType := 'Matter';
    Key := #0;
    if (sType <> '') and (dbgrLedger.Columns.Items[colTYPE].PickList.IndexOf(sType) >= 0) then
    begin
      if not qryLedger.Modified then
        if qryLedger.IsEmpty then
          qryLedger.Insert
        else
          qryLedger.Edit;
      qryLedger.FieldByName('TYPE').AsString := sType;
      dbgrLedger.SelectedIndex := colREFNO;
    end;
  end;

end;

procedure TfrmInvoiceDebit.FormCreate(Sender: TObject);
begin
  DefaultTax := dmAxiom.DefaultTax;
  lblUnallocatedMsg.Visible := dmAxiom.Security.Invoice.ForceTally;
  lblUnallocated.Visible := dmAxiom.Security.Invoice.ForceTally;

  with qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT CODE FROM TAXTYPE ORDER BY CODE';
    Open;
    while not EOF do
    begin
      dbgrLedger.Columns[colTAXCODE].PickList.Add(FieldByName('CODE').AsString);

      Next;
    end;
    Close;
  end;

  qryLedger.open;
end;


procedure TfrmInvoiceDebit.qryLedgerTAXCODEChange(Sender: TField);
begin
  qryLedger.FieldByName('WITHHOLD').AsString := TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'WITHHOLDING');
  CalcTax;
end;


procedure TfrmInvoiceDebit.qryLedgerAMOUNTChange(Sender: TField);
begin
  CalcTax;
end;


procedure TfrmInvoiceDebit.CalcTax;
var
  dAmount: double;
begin
  qryLedgerAMOUNT.OnChange := nil;
  dAmount := qryLedger.FieldByName('AMOUNT').AsCurrency;
  qryLedger.FieldByName('TAX').AsFloat := TaxCalc(dAmount, '', qryLedger.FieldByName('TAXCODE').AsString, dtpDate.Date);
  qryLedger.FieldByName('AMOUNT').AsCurrency := dAmount;
  if qryLedger.State <> dsInsert then
    UpdateTotal;
  qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
end;


procedure TfrmInvoiceDebit.neAmountExit(Sender: TObject);
begin
  if (neAmount.AsCurrency = 0) and not dmAxiom.Security.Invoice.ForceTally then
  begin
    lblUnallocatedMsg.Visible := False;
    lblUnallocated.Visible := False;
  end
  else
  begin
    lblUnallocatedMsg.Visible := True;
    lblUnallocated.Visible := True;
  end;
  UpdateTotal;
end;

procedure TfrmInvoiceDebit.FormShow(Sender: TObject);
begin
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpDate.EnforceLock := not dmAxiom.Security.PriorPeriodTransactions.Post;
end;

procedure TfrmInvoiceDebit.SetDefaultTaxType;
var
   defaultLedgerTaxCode : String;
begin
  defaultLedgerTaxCode := LedgerString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'DEFAULT_TAXCODE');

  if defaultLedgerTaxCode <> '' then
    qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode
  else
    qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
end;


end.

