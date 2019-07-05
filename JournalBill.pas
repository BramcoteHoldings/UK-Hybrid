unit JournalBill;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS, DateTimeAccount,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, EnforceCustomDateEdit, Math, AxiomData;

const
  colREFNO = 0;
  colSUBBILL = 1;
  colLONGDESC = 2;
  colREASON = 3;
  colCREDIT = 4;

  pnlDEBTORS = 0;
  pnlTRUST = 1;
  pnlFEES = 2;
  pnlDISB = 3;
  pnlANTD = 4;
  pnlSUND = 5;

type
  EInvalidBill = class(Exception);

  EImbalancedAllocation = class(Exception);

  EInvalidMatter = class(Exception);

  TfrmJournalBill = class(TForm)
    Label2: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    edLedger: TEdit;
    edReason: TEdit;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    qryBill: TUniQuery;
    qryAllocs: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    qryMatters: TUniQuery;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qryBillUpdate: TUniQuery;
    qryTmp: TUniQuery;
    Label11: TLabel;
    neAmount: TNumberEdit;
    lblUnallocatedMsg: TLabel;
    lblUnallocated: TLabel;
    chkNoExit: TCheckBox;
    sbarBalances: TStatusBar;
    popGridLine1: TMenuItem;
    popGridOpenMatter: TMenuItem;
    popGridDistribute: TMenuItem;
    btnLedger: TBitBtn;
    qryJournalInsert: TUniQuery;
    dbgrLedger: TDBGrid;
    qrySubbills: TUniQuery;
    qrySubBillLookup: TUniQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField5: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    StringField6: TStringField;
    DateTimeField1: TDateTimeField;
    StringField7: TStringField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    DateTimeField2: TDateTimeField;
    FloatField54: TFloatField;
    qrySubBillUpdate: TUniQuery;
    dtpDate: TEnforceCustomDateEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dbgrLedgerEditButtonClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrLedgerColExit(Sender: TObject);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure tbPayeeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrLedgerColEnter(Sender: TObject);
    procedure neAmountExit(Sender: TObject);
    procedure edLedgerExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure qryLedgerAfterScroll(DataSet: TDataSet);
    procedure popGridOpenMatterClick(Sender: TObject);
    procedure qryLedgerREFNOChange(Sender: TField);
    procedure popGridDistributeClick(Sender: TObject);
    procedure qryLedgerCREDITChange(Sender: TField);
    procedure btnLedgerClick(Sender: TObject);
    procedure dsLedgerDataChange(Sender: TObject; Field: TField);
    procedure cxdbgrLedgerDBTableView1DBColumn1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxdbgrLedgerExit(Sender: TObject);
    procedure cxdbgrLedgerEnter(Sender: TObject);
    procedure cxdbgrLedgerDBTableView1DBColumn4PropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure qryLedgerAfterOpen(DataSet: TDataSet);
    procedure loadSubbills;
  protected
   procedure CloseFrm(var Message: TMessage); message CM_CLOSEFORM;
  private
    { Private declarations }
    TotalAmt: Currency;
    function OKtoPost(bShowError: boolean): Boolean;
    procedure UpdateTotal;
    procedure DistributeBill(bDoPost : boolean = true);
    procedure StatusDisplay;
    procedure SetupBill;
    procedure setUpSubBill(iNSubBill : Integer);
    procedure setUpdateQuery(updateQuery,billQuery : TUniQuery; dDate : TDateTime);
    procedure DisplayDistributionScreen;

  public
    { Public declarations }
  end;

implementation

uses
  Journals, InvoiceSearch, Matters, MiscFunc, LSearch,
  ReceiptDistribute, citfunc,glComponentUtil;

{$R *.DFM}


procedure TfrmJournalBill.FormShow(Sender: TObject);
begin
  // Create the default entries for a new Receipt
  TotalAmt := 0;

//  lblUnallocatedMsg.Visible := dmAffinity.Security.Receipt.ForceTally;
//  lblUnallocated.Visible := dmAffinity.Security.Receipt.ForceTally;

{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

  edReason.SetFocus;
end;


procedure TfrmJournalBill.btnCancelClick(Sender: TObject);
begin
   PostMessage(Self.Handle, CM_CLOSEFORM, 0, 0);
//   RemoveFromDesktop(Self);
end;


procedure TfrmJournalBill.StatusDisplay;
var
  bDisplayed : boolean;
begin
  bDisplayed := False;
  if qryBill.Active then
    with qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DEBTORS, TRUST_BAL, UNBILL_FEES, UNBILL_DISB, UNBILL_ANTD, UNBILL_SUND');
      SQL.Add('FROM MATTER');
      SQL.Add('WHERE FILEID = ' + QuotedStr(qryBill.FieldByName('FILEID').AsString));
      Open;
      if not IsEmpty then
      begin
        sbarBalances.Panels[pnlDEBTORS].Text := 'Debtors: ' + Format('%m', [FieldByName('DEBTORS').AsFloat]);
        sbarBalances.Panels[pnlTRUST].Text := 'Trust: ' + Format('%m', [FieldByName('TRUST_BAL').AsFloat]);
        sbarBalances.Panels[pnlFEES].Text := 'WIP: ' + Format('%m', [FieldByName('UNBILL_FEES').AsFloat]);
        sbarBalances.Panels[pnlDISB].Text := 'Disb: ' + Format('%m', [FieldByName('UNBILL_DISB').AsFloat]);
        sbarBalances.Panels[pnlANTD].Text := 'AntDisb: ' + Format('%m', [FieldByName('UNBILL_ANTD').AsFloat]);
        sbarBalances.Panels[pnlSUND].Text := 'Sundry: ' + Format('%m', [FieldByName('UNBILL_SUND').AsFloat]);
        bDisplayed := True;
      end;
      Close;
    end;

  if not bDisplayed then
  begin
    sbarBalances.Panels[pnlDEBTORS].Text := '';
    sbarBalances.Panels[pnlTRUST].Text := '';
    sbarBalances.Panels[pnlFEES].Text := '';
    sbarBalances.Panels[pnlDISB].Text := '';
    sbarBalances.Panels[pnlANTD].Text := '';
    sbarBalances.Panels[pnlSUND].Text := '';
  end;
end;


procedure TfrmJournalBill.dbgrLedgerEditButtonClick(Sender: TObject);
begin
  if dbgrLedger.SelectedIndex = colREFNO then
  begin
    dsLedger.OnDataChange := nil;
    if not FormExists(frmInvoiceSearch) then
      Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);
    if frmInvoiceSearch.ShowModal = mrOk then
    begin
      qryBill.Close;
      qryBill.ParamByName('NMEMO').AsInteger := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger;
      qryBill.Open;
      SetupBill;
    end;

    StatusDisplay;

    dsLedger.OnDataChange := dsLedgerDataChange;
  end;
end;


procedure TfrmJournalBill.DistributeBill(bDoPost : boolean = true);
var
  cRemainder : Currency;
begin
   if bDoPost then
      qryLedger.Edit;

   cRemainder := qryLedger.FieldByName('CREDIT').AsFloat;

   if qryLedger.FieldByName('DISBDR').AsFloat <> 0 then
      if qryLedger.FieldByName('DISBDR').AsFloat <= cRemainder  then
      begin
         qryLedger.FieldByName('DISBCR').AsFloat := qryLedger.FieldByName('DISBDR').AsFloat;
         cRemainder := cRemainder - qryLedger.FieldByName('DISBCR').AsFloat;
      end
   else
   begin
      qryLedger.FieldByName('DISBCR').AsFloat := cRemainder;
      cRemainder := 0.0;
   end;

   if qryLedger.FieldByName('UPCREDDR').AsFloat <> 0 then
      if qryLedger.FieldByName('UPCREDDR').AsFloat <= cRemainder then
      begin
         qryLedger.FieldByName('UPCREDCR').AsFloat := qryLedger.FieldByName('UPCREDDR').AsFloat;
         cRemainder := cRemainder - qryLedger.FieldByName('UPCREDCR').AsFloat;
      end
      else
      begin
         qryLedger.FieldByName('UPCREDCR').AsFloat := cRemainder;
         cRemainder := 0.0;
      end;

   if qryLedger.FieldByName('ANTDDR').AsFloat <> 0 then
      if qryLedger.FieldByName('ANTDDR').AsFloat <= cRemainder then
      begin
         qryLedger.FieldByName('ANTDCR').AsFloat := qryLedger.FieldByName('ANTDDR').AsFloat;
         cRemainder := cRemainder - qryLedger.FieldByName('ANTDCR').AsFloat;
      end
      else
      begin
         qryLedger.FieldByName('ANTDCR').AsFloat := cRemainder;
         cRemainder := 0.0;
      end;

   if qryLedger.FieldByName('SUNDDR').AsFloat <> 0 then
      if qryLedger.FieldByName('SUNDDR').AsFloat <= cRemainder then
      begin
         qryLedger.FieldByName('SUNDCR').AsFloat := qryLedger.FieldByName('SUNDDR').AsFloat;
         cRemainder := cRemainder - qryLedger.FieldByName('SUNDCR').AsFloat;
      end
      else
      begin
         qryLedger.FieldByName('SUNDCR').AsFloat := cRemainder;
         cRemainder := 0.0;
      end;
   qryLedger.FieldByName('FEESCR').AsFloat := cRemainder;
   if bDoPost then
      qryLedger.Post;
end;


function TfrmJournalBill.OKtoPost(bShowError : boolean) : Boolean;
var
  sTmp : String;
  bOKtoPost: boolean;
  glInstance : TglComponentInstance ;
  bValidLedger : boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= True;

  glInstance := dmAxiom.getGlComponents.parseString(edLedger.Text,true);
  bValidLedger := glInstance.valid;
  glInstance.free;
  sTmp := '';
  if not bValidLedger then
    sTmp := sTmp + '       Invalid Ledger selected' + #13;
  if ((neAmount.AsCurrency <> 0) {or dmAxiom.Security.Receipt.ForceTally}) and (neAmount.AsCurrency <> TotalAmt) then
    sTmp := sTmp + '       Journal is not fully allocated' + #13;
  if edReason.Text = '' then
    sTmp := sTmp + '       Reason' + #13;
  if sTmp <> '' then
  begin
    if bShowError then
      MsgErr('Please complete the following Receipt details before posting:    ' + #13#13 + sTmp);
  bOKtoPost := False
  end;
  result := bOKtoPost;
end;


procedure TfrmJournalBill.btnOKClick(Sender: TObject);
var
  bProceed, bPostingFailed: boolean;
  cDiff: currency;
  iCtr: integer;
  bFormUpdated: boolean;
  glComponentSetup : TglComponentSetup;
  glInstance : TglComponentInstance ;
  sLedgerKey,sLedgerKeyDr : String;
  SplitPercent: Real;
  TaxCalc: Currency;
begin
   if qryLedger.Modified then
    qryLedger.Post;
   bProceed := OKtoPost(True);
   if bProceed then
    bProceed:= (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]);
   if bProceed then
    if qryLedger.IsEmpty then
    begin
      MsgErr('There are no allocations entered');
      bProceed := False;
    end;
   if bProceed then
   begin

    qryLedger.first;
    while not qryLedger.Eof do
    begin
       qrySubBills.Close;
       qrySubBills.ParamByName('NMEMO').AsInteger := qryLedger.fieldByName('INVOICE').AsInteger;
       qrySubBills.ParamByName('NSUBBILL_ID').AsString := '';
       qrySubBills.ParamByName('DEBTOR_NAME').AsString := '';
       qrySubBills.open;
       if (not qrySubBills.eof) and (qryLedger.fieldByName('NSUBBILL').AsInteger = 0) then
       begin
           MsgErr('Please select a sub bill for bill ' + qryLedger.fieldByName('REFNO').AsString);
           exit;
       end;

       qrySubBills.Close;
       qryLedger.Next;
    end;

    glComponentSetup := dmAxiom.getGlComponents;
    // Create a Journal entry
    try
      bPostingFailed := False;

      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

      // Create the Journal entry - as we are using Cached Updates
      // this won't save until we explicitly ApplyUdates
      with qryJournalInsert do
      begin
        ParamByName('NJOURNAL').AsInteger := GetJournal;
        ParamByName('CREATED').AsDateTime := dtpDate.Date;
        ParamByName('ACCT').AsString := dmAxiom.Entity;
        ParamByName('REASON').AsString := edReason.Text;
        ParamByName('AMOUNT').AsFloat := TotalAmt;

        ExecSQL; // Puts Journal into cached buffer
      end;

      // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(edLedger.Text,true);
      if not glInstance.valid then
      begin
        // something has gone very wrong !
        raise Exception.create('Error invalid ledger key');
      end;

      PostLedger(qryJournalInsert.ParamByName('CREATED').AsDateTime
        , 0 - TotalAmt
        , 0
        , qryJournalInsert.ParamByName('NJOURNAL').AsString
        , 'JOURNAL'
        , qryJournalInsert.ParamByName('NJOURNAL').AsInteger
        , qryJournalInsert.ParamByName('REASON').AsString
        , glInstance.ledgerKey
        , ''
        , -1
        , ''
        , '');
        glInstance.free;

      // Now, iterate through the entered allocations
      qryAllocs.Close;
      qryAllocs.ParamByName('NJournal').AsInteger := qryJournalInsert.ParamByName('NJOURNAL').AsInteger;
      qryAllocs.Open;

      qryLedger.First;
      while not qryLedger.EOF do
      begin
        cDiff := qryLedger.FieldByName('CREDIT').AsFloat - (qryLedger.FieldByName('FEESCR').AsFloat +
                 qryLedger.FieldByName('DISBCR').AsFloat + qryLedger.FieldByName('ANTDCR').AsFloat +
                 qryLedger.FieldByName('SUNDCR').AsFloat + qryLedger.FieldByName('UPCREDCR').AsFloat);
        if cDiff <> 0.0 then
                DistributeBill;

        cDiff := qryLedger.FieldByName('CREDIT').AsFloat - (qryLedger.FieldByName('FEESCR').AsFloat +
                 qryLedger.FieldByName('DISBCR').AsFloat + qryLedger.FieldByName('ANTDCR').AsFloat +
                 qryLedger.FieldByName('SUNDCR').AsFloat + qryLedger.FieldByName('UPCREDCR').AsFloat);
        if cDiff <> 0.0 then
          raise EInvalidBill.Create('Total does not agree with Fees, Disbursements, and Sundries allocation on Bill number : ' + qryLedger.FieldByName('REFNO').AsString + #13 + #13 + 'Posting cancelled');

        try
          with qryBill do
          begin
            Close;
            ParamByName('NMEMO').AsInteger := qryLedger.FieldByName('INVOICE').AsInteger;
            Open;
          end;
        except
          raise EInvalidBill.Create('Invalid Bill number: ' + qryLedger.FieldByName('REFNO').AsString + chr(13) + chr(13) + 'Posting cancelled');
        end;
        if qryBill.IsEmpty then
          raise EInvalidBill.Create('Invalid Bill number: ' + qryLedger.FieldByName('REFNO').AsString + chr(13) + chr(13) + 'Posting cancelled');

        qryMatters.Close;
        qryMatters.ParamByName('P_File').AsString := qryBill.FieldByName('FILEID').AsString;
        qryMatters.Open;

        qryAllocs.Insert;
        qryAllocs.FieldByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
        qryAllocs.FieldByName('NMATTER').AsInteger := qryMatters.FieldByName('NMATTER').AsInteger;
        qryAllocs.FieldByName('NCLIENT').AsInteger := qryMatters.FieldByName('NCLIENT').AsInteger;
        qryAllocs.FieldByName('FILEID').AsString := qryMatters.FieldByName('FILEID').AsString;
        qryAllocs.FieldByName('CLIENT_NAME').AsString := qryMatters.FieldByName('TITLE').AsString;
        qryAllocs.FieldByName('MATTER_DESC').AsString := qryMatters.FieldByName('SHORTDESCR').AsString;
        qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
        qryAllocs.FieldByName('SYSTEM_DATE').AsDateTime := Now;
        qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
        qryAllocs.FieldByName('TRUST').AsString := 'G';
        qryAllocs.FieldByName('PAYER').AsString := 'Journal ' + qryJournalInsert.ParamByName('NJOURNAL').AsString;
        qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
        qryAllocs.FieldByName('TYPE').AsString := 'J1';
        qryAllocs.FieldByName('AMOUNT').AsFloat := qryLedger.FieldByName('CREDIT').AsFloat;
        qryAllocs.FieldByName('TAX').AsFloat := 0;
        qryAllocs.FieldByName('CLEARED').AsString := 'Y';
        qryAllocs.FieldByName('NRECEIPT').AsInteger := 0;
        qryAllocs.FieldByName('REFNO').AsString := qryJournalInsert.ParamByName('NJOURNAL').AsString;
        // AES 08-10-2010 I think this should be set to Y otherwise it appears as unbilled everywhere
        qryAllocs.FieldByName('BILLED').AsString := 'Y';
        qryAllocs.FieldByName('FEE').AsFloat := qryLedger.FieldByName('FEESCR').AsFloat;
        qryAllocs.FieldByName('OUTLAY').AsFloat := qryLedger.FieldByName('DISBCR').AsFloat + qryLedger.FieldByName('ANTDCR').AsFloat;
        qryAllocs.FieldByName('SUNDRY').AsFloat := qryLedger.FieldByName('SUNDCR').AsFloat;
        qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
        qryAllocs.FieldByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
        qryAllocs.FieldByName('NJOURNAL').AsInteger := qryJournalInsert.ParamByName('NJOURNAL').AsInteger;

        qryAllocs.Post;  // Put it into the cached buffer

        // Update the Matter Debtors
        MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'DEBTORS', 0.0 - qryAllocs.FieldByName('AMOUNT').AsFloat);
        // and say we recovered some fees
        MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'RECVD_FEES', qryAllocs.FieldByName('FEE').AsFloat);

        // Now make the General Ledger entries
        // Fees, Disbursements and Sundries
        if qryLedger.FieldByName('FEESCR').AsFloat <> 0.0 then
        begin

          {post components}
          sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_FEE_CR'),'',true,'');


          PostLedger(qryJournalInsert.ParamByName('CREATED').AsDateTime
            , qryLedger.FieldByName('FEESCR').AsFloat
            , 0
            , qryJournalInsert.ParamByName('NJOURNAL').AsString
            , 'JOURNAL'
            , qryJournalInsert.ParamByName('NJOURNAL').AsInteger
            , qryLedger.FieldByName('REASON').AsString
            , sLedgerKey
            , qryMatters.FieldByName('AUTHOR').AsString
            , -1
            , ''
            , '');
        end;
        if qryLedger.FieldByName('DISBCR').AsFloat <> 0.0 then
        begin

          {post components}
          sLedgerKey :=  glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_DISB_CR'),'',true,'');


          PostLedger(qryJournalInsert.ParamByName('CREATED').AsDateTime
            , qryLedger.FieldByName('DISBCR').AsFloat
            , 0
            , qryJournalInsert.ParamByName('NJOURNAL').AsString
            , 'JOURNAL'
            , qryJournalInsert.ParamByName('NJOURNAL').AsInteger
            , qryLedger.FieldByName('REASON').AsString
            , sLedgerKey
            , qryMatters.FieldByName('AUTHOR').AsString
            , -1
            , ''
            , '');

        end;
        if qryLedger.FieldByName('ANTDCR').AsFloat <> 0.0 then
        begin
          {post components}
          sLedgerKey :=  glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_ANTD_CR'),'',true,'');


          PostLedger(qryJournalInsert.ParamByName('CREATED').AsDateTime
            , qryLedger.FieldByName('ANTDCR').AsFloat
            , 0
            , qryJournalInsert.ParamByName('NJOURNAL').AsString
            , 'JOURNAL'
            , qryJournalInsert.ParamByName('NJOURNAL').AsInteger
            , qryLedger.FieldByName('REASON').AsString
            , sLedgerKey
            , qryMatters.FieldByName('AUTHOR').AsString
            , -1
            , ''
            , '');
        end;
        if qryLedger.FieldByName('SUNDCR').AsFloat <> 0.0 then
        begin

          {post components}
          sLedgerKey :=  glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_SUND_CR'),'',true,'');

          PostLedger(qryJournalInsert.ParamByName('CREATED').AsDateTime
            , qryLedger.FieldByName('SUNDCR').AsFloat
            , 0
            , qryJournalInsert.ParamByName('NJOURNAL').AsString
            , 'JOURNAL'
            , qryJournalInsert.ParamByName('NJOURNAL').AsInteger
            , qryLedger.FieldByName('REASON').AsString
            , sLedgerKey
            , qryMatters.FieldByName('AUTHOR').AsString
            , -1
            , ''
            , '');
          end;
        if qryLedger.FieldByName('UPCREDCR').AsFloat <> 0.0 then
        begin

          {post components}
          sLedgerKey :=  glComponentSetup.buildLedgerKey('', TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_UPCRED_CR'),'',true,'');

          PostLedger(qryJournalInsert.ParamByName('CREATED').AsDateTime
            , qryLedger.FieldByName('UPCREDCR').AsFloat
            , 0
            , qryJournalInsert.ParamByName('NJOURNAL').AsString
            , 'JOURNAL'
            , qryJournalInsert.ParamByName('NJOURNAL').AsInteger
            , qryLedger.FieldByName('REASON').AsString
            , sLedgerKey
            , qryMatters.FieldByName('AUTHOR').AsString
            , -1
            , ''
            , '');
          end;

        setUpdateQuery(qryBillUpdate,qryBill,qryJournalInsert.ParamByName('CREATED').AsDateTime);
        qryBillUpdate.ParamByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
        qryBillUpdate.ExecSQL;

        if not qryLedger.FieldByName('nsubbill_id').IsNull then
        begin
          qrySubBills.close;
          qrySubBills.ParamByName('nsubbill_id').AsInteger :=   qryLedger.FieldByName('nsubbill_id').AsInteger;
          qrySubBills.ParamByName('nmemo').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
          qrySubBills.ParamByName('debtor_name').AsString := '';
          qrySubBills.Open;
          setUpdateQuery(qrySubBillUpdate,qrySubBills,qryJournalInsert.ParamByName('CREATED').AsDateTime);
          qrySubBillUpdate.ParamByName('NSUBBILL_ID').AsInteger := qrySubBills.FieldByName('NSUBBILL_ID').AsInteger;
          qrySubBillUpdate.ExecSQL;
        end;

        {
        with qryBillUpdate do
        begin
          ParamByName('DATE_LAST_RECPT').AsDateTime := qryJournalInsert.ParamByName('CREATED').AsDateTime;
          if qryLedger.FieldByName('FEESCR').AsFloat = 0 then
          begin
            ParamByName('FEES_PAID').AsFloat := 0;
            ParamByName('FEESTAX_PAID').AsFloat := 0;
          end
          else
            if qryLedger.FieldByName('FEESCR').AsFloat = (qryBill.FieldByName('FEES').AsFloat - qryBill.FieldByName('FEES_PAID').AsFloat + qryBill.FieldByName('FEESTAX').AsFloat - qryBill.FieldByName('FEESTAX_PAID').AsFloat) then
            begin
              ParamByName('FEES_PAID').AsFloat := qryBill.FieldByName('FEES').AsFloat - qryBill.FieldByName('FEES_PAID').AsFloat;
              ParamByName('FEESTAX_PAID').AsFloat := qryBill.FieldByName('FEESTAX').AsFloat - qryBill.FieldByName('FEESTAX_PAID').AsFloat;
            end
            else
            begin
              // We have to proportion the tax out of the fees
              ParamByName('FEESTAX_PAID').AsFloat := qryLedger.FieldByName('FEESCR').AsFloat * ((qryBill.FieldByName('FEESTAX').AsFloat - qryBill.FieldByName('FEESTAX_PAID').AsFloat) / (qryBill.FieldByName('FEES').AsFloat - qryBill.FieldByName('FEES_PAID').AsFloat + qryBill.FieldByName('FEESTAX').AsFloat - qryBill.FieldByName('FEESTAX_PAID').AsFloat));
              ParamByName('FEES_PAID').AsFloat := qryLedger.FieldByName('FEESCR').AsFloat - ParamByName('FEESTAX_PAID').AsFloat;
            end;
          if qryLedger.FieldByName('DISBCR').AsFloat = 0 then
          begin
            ParamByName('DISB_PAID').AsFloat := 0;
            ParamByName('DISBTAX_PAID').AsFloat := 0;
          end
          else
            if qryLedger.FieldByName('DISBCR').AsFloat = (qryBill.FieldByName('DISB').AsFloat - qryBill.FieldByName('DISB_PAID').AsFloat + qryBill.FieldByName('DISBTAX').AsFloat - qryBill.FieldByName('DISBTAX_PAID').AsFloat) then
            begin
              ParamByName('DISB_PAID').AsFloat := qryBill.FieldByName('DISB').AsFloat - qryBill.FieldByName('DISB_PAID').AsFloat;
              ParamByName('DISBTAX_PAID').AsFloat := qryBill.FieldByName('DISBTAX').AsFloat - qryBill.FieldByName('DISBTAX_PAID').AsFloat;
            end
            else
            begin
              // We have to proportion the tax out of the disbursements
              ParamByName('DISBTAX_PAID').AsFloat := qryLedger.FieldByName('DISBCR').AsFloat * ((qryBill.FieldByName('DISBTAX').AsFloat - qryBill.FieldByName('DISBTAX_PAID').AsFloat) / (qryBill.FieldByName('DISB').AsFloat - qryBill.FieldByName('DISB_PAID').AsFloat + qryBill.FieldByName('DISBTAX').AsFloat - qryBill.FieldByName('DISBTAX_PAID').AsFloat));
              ParamByName('DISB_PAID').AsFloat := qryLedger.FieldByName('DISBCR').AsFloat - ParamByName('DISBTAX_PAID').AsFloat;
            end;
          if qryLedger.FieldByName('ANTDCR').AsFloat = 0 then
          begin
            ParamByName('ANTD_PAID').AsFloat := 0;
            ParamByName('ANTDTAX_PAID').AsFloat := 0;
          end
          else
            if qryLedger.FieldByName('ANTDCR').AsFloat = (qryBill.FieldByName('ANTD').AsFloat - qryBill.FieldByName('ANTD_PAID').AsFloat + qryBill.FieldByName('ANTDTAX').AsFloat - qryBill.FieldByName('ANTDTAX_PAID').AsFloat) then
            begin
              ParamByName('ANTD_PAID').AsFloat := qryBill.FieldByName('ANTD').AsFloat - qryBill.FieldByName('ANTD_PAID').AsFloat;
              ParamByName('ANTDTAX_PAID').AsFloat := qryBill.FieldByName('ANTDTAX').AsFloat - qryBill.FieldByName('ANTDTAX_PAID').AsFloat;
            end
            else
            begin
              // We have to proportion the tax out of the Anticipated Disbursements
              ParamByName('ANTDTAX_PAID').AsFloat := qryLedger.FieldByName('ANTDCR').AsFloat * ((qryBill.FieldByName('ANTDTAX').AsFloat - qryBill.FieldByName('ANTDTAX_PAID').AsFloat) / (qryBill.FieldByName('ANTD').AsFloat - qryBill.FieldByName('ANTD_PAID').AsFloat + qryBill.FieldByName('ANTDTAX').AsFloat - qryBill.FieldByName('ANTDTAX_PAID').AsFloat));
              ParamByName('ANTD_PAID').AsFloat := qryLedger.FieldByName('ANTDCR').AsFloat - ParamByName('ANTDTAX_PAID').AsFloat;
            end;
          if qryLedger.FieldByName('SUNDCR').AsFloat = 0 then
          begin
            ParamByName('SUND_PAID').AsFloat := 0;
            ParamByName('SUNDTAX_PAID').AsFloat := 0;
          end
          else
            if qryLedger.FieldByName('SUNDCR').AsFloat = (qryBill.FieldByName('SUND').AsFloat - qryBill.FieldByName('SUND_PAID').AsFloat + qryBill.FieldByName('SUNDTAX').AsFloat - qryBill.FieldByName('SUNDTAX_PAID').AsFloat) then
            begin
              ParamByName('SUND_PAID').AsFloat := qryBill.FieldByName('SUND').AsFloat - qryBill.FieldByName('SUND_PAID').AsFloat;
              ParamByName('SUNDTAX_PAID').AsFloat := qryBill.FieldByName('SUNDTAX').AsFloat - qryBill.FieldByName('SUNDTAX_PAID').AsFloat;
            end
            else
            begin
              // We have to proportion the tax out of the fees
              ParamByName('SUNDTAX_PAID').AsFloat := qryLedger.FieldByName('SUNDCR').AsFloat * ((qryBill.FieldByName('SUNDTAX').AsFloat - qryBill.FieldByName('SUNDTAX_PAID').AsFloat) / (qryBill.FieldByName('SUND').AsFloat - qryBill.FieldByName('SUND_PAID').AsFloat + qryBill.FieldByName('SUNDTAX').AsFloat - qryBill.FieldByName('SUNDTAX_PAID').AsFloat));
              ParamByName('SUND_PAID').AsFloat := qryLedger.FieldByName('SUNDCR').AsFloat - ParamByName('SUNDTAX_PAID').AsFloat;
            end;
          ParamByName('NMEMO').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
          ExecSQL;
        end;

        }

        if (qryBill.FieldByName('ANTD').AsFloat + qryBill.FieldByName('ANTDTAX').AsFloat - qryBill.FieldByName('ANTD_PAID').AsFloat - qryBill.FieldByName('ANTDTAX_PAID').AsFloat - qryLedger.FieldByName('ANTDCR').AsFloat) = 0 then
          with qryTmp do
          begin
            SQL.Text := 'UPDATE CHEQREQ SET HELD = ''N'' WHERE NMEMO = ' + qryBill.FieldByName('NMEMO').AsString;
            ExecSQL;
          end;

        qryLedger.Next;
      end;

      // Now save the data
      if qryAllocs.UpdatesPending then
        qryAllocs.ApplyUpdates;
      if qryLedger.UpdatesPending then
        qryLedger.CancelUpdates;


    CheckLedgerTotal;

    except
      on E: Exception do
      begin
        bPostingFailed := True;
        if qryAllocs.UpdatesPending then
          qryAllocs.CancelUpdates;
        if qryJournalInsert.UpdatesPending then
          qryJournalInsert.CancelUpdates;
        dmAxiom.uniInsight.Rollback;
        MsgErr('Posting failed:' + #13#13 + E.Message);
      end;
    end;

    if not bPostingFailed then
    begin
      dmAxiom.uniInsight.Commit;
      qryAllocs.Close;

      // Refresh the Journals screen if it is open
      iCtr := 0;
      bFormUpdated := False;
      while (iCtr < Screen.FormCount) and not bFormUpdated do
      begin
        if Screen.Forms[iCtr].ClassName = 'TfrmJournals' then
        begin
          (Screen.Forms[iCtr] as TfrmJournals).MakeSQL;
          bFormUpdated := True;
        end;
        if Screen.Forms[iCtr].ClassName = 'TfrmMatters' then
        begin
          (Screen.Forms[iCtr] as TfrmMatters).dxbtnRefresh.Click;
          bFormUpdated := True;
        end;
        iCtr := iCtr + 1;
      end;

      if not chkNoExit.Checked then
      begin
         Self.Close;
      end
      else
      begin
        // Create a new receipt
        edReason.Text := '';
        neAmount.AsCurrency := 0;
        TotalAmt := 0;
        lblTotal.Caption := '0.00';
        lblUnallocated.Caption := '0.00';
        qryLedger.Close;
        qryLedger.Open;
        edReason.SetFocus;
      end;
    end;
   end;
end;


procedure TfrmJournalBill.dbgrLedgerColExit(Sender: TObject);
begin
  case dbgrLedger.SelectedIndex of
    colREASON:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      QuickCode(dbgrLedger.Columns.Items[colREASON].Field);
    end;
    colCREDIT: // Amount allocated
    begin
      if dbgrLedger.Columns.Items[colCREDIT].Field.AsFloat > qryLedger.FieldByName('DEBIT').AsFloat then
      begin
        if qryLedger.FieldByName('DEBIT').AsFloat <> 0.0 then
          MsgErr('There is only ' + Format('%m', [qryLedger.FieldByName('DEBIT').AsFloat]) + ' owing on this Bill')
        else
          MsgErr('There is nothing owing on this Bill');
        dbgrLedger.Columns.Items[colCREDIT].Field.AsFloat := qryLedger.FieldByName('DEBIT').AsFloat;
      end
      else if dbgrLedger.Columns.Items[colCREDIT].Field.AsFloat <> qryLedger.FieldByName('DEBIT').AsFloat then
      begin
        DisplayDistributionScreen;
      end;
      UpdateTotal;
    end;
    colSUBBILL:
    begin
        qrySubbills.close;
        qrySubbills.paramByName('NMEMO').AsInteger := qryLedger.fieldByname('INVOICE').AsInteger;
        qrySubbills.paramByName('DEBTOR_NAME').AsString := qryLedger.fieldByname('DEBTOR').AsString;
        qrySubBills.ParamByName('nsubbill_id').AsString := '';
        qrySubbills.open;
        if not qryLedger.Modified then
                qryLedger.Edit;
        if not qrySubbills.eof and (qryLedger.fieldByname('DEBTOR').AsString <> '') then
        begin
                qryLedger.FieldByName('NSUBBILL').AsInteger := qrySubbills.fieldByname('NSUBBILL').AsInteger;
                qryLedger.FieldByName('NSUBBILL_ID').AsInteger := qrySubbills.fieldByname('NSUBBILL_ID').AsInteger;
                setUpSubBill(qryLedger.FieldByName('NSUBBILL').AsInteger);
        end
        else
                qryLedger.fieldByname('DEBTOR').AsString := '';

        qrySubbills.Close;
    end;
  end;
end;


procedure TfrmJournalBill.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
//  if DeletingItems then Exit;		{ don't calculate if deleting all items }
  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
  try
    qryLedger.DisableControls;
    qryLedger.First;
    TotalAmt := 0;			{ use temp for efficiency }
    while not qryLedger.EOF do
    begin
      TotalAmt := TotalAmt + qryLedger.FieldByName('CREDIT').AsFloat;
      qryLedger.Next;
    end;
    lblTotal.Caption := Format('%m', [TotalAmt]);
  finally
     qryLedger.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qryLedger.GoToBookmark(bmPrevRecord);
       qryLedger.FreeBookmark(bmPrevRecord);
     end;
  end;
  if (neAmount.AsCurrency <> 0) or dmAxiom.Security.Receipt.ForceTally then
    lblUnallocated.Caption := Format('%m', [neAmount.AsCurrency - TotalAmt]);
  btnOK.Enabled := OKtoPost(False);
end;


procedure TfrmJournalBill.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmJournalBill.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmJournalBill.dbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmJournalBill.qryLedgerAfterInsert(DataSet: TDataSet);
begin
  qryLedger.FieldByName('REASON').AsString := edReason.Text;
  qryLedger.FieldByName('DEBIT').AsFloat := 0.0;
  qryLedger.FieldByName('FEESDR').AsFloat := 0.0;
  qryLedger.FieldByName('ANTDDR').AsFloat := 0.0;
  qryLedger.FieldByName('ANTDDR').AsFloat := 0.0;
  qryLedger.FieldByName('SUNDDR').AsFloat := 0.0;
end;


procedure TfrmJournalBill.popRemoveClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmJournalBill.popEditClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Edit;
end;


procedure TfrmJournalBill.tbPayeeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    QuickCode(Sender);
end;

procedure TfrmJournalBill.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryMatters.Close;
  qryBill.Close;
  qryAllocs.Close;
  qryLedger.Close;
  qryTmp.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmJournalBill.dbgrLedgerColEnter(Sender: TObject);
begin
  case dbgrLedger.SelectedIndex of
    colREASON:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      if dbgrLedger.Columns.Items[colREASON].Field.Text = '' then
        dbgrLedger.Columns.Items[colREASON].Field.Text := edReason.Text;
    end;
  end; // case
end;

procedure TfrmJournalBill.neAmountExit(Sender: TObject);
begin
  if (neAmount.AsCurrency = 0) {and not dmAxiom.Security.Receipt.ForceTally} then
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
  btnOK.Enabled := OKtoPost(False);
end;


procedure TfrmJournalBill.edLedgerExit(Sender: TObject);
var
   stmp : String;
   glInstance : TglComponentInstance ;
begin
   if edLedger.Text <> '' then
   begin

      // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(edLedger.Text,true);

      if not glInstance.valid then
      begin
         glInstance.displayError;
         edLedger.Text := '';
         //lblLedgerDesc.Caption := '';
         glInstance.free;
         edLedger.SetFocus;
      end
      else
      begin
        edLedger.Text := glInstance.fullCode;
        //lblLedgerDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
      end;

   end;

  btnOK.Enabled := OKtoPost(False);
end;


procedure TfrmJournalBill.FormCreate(Sender: TObject);
begin
  qryLedger.Open;

  dbgrLedger.Columns[colSUBBILL].Visible := (SystemString('ALLOW_SPLIT_BILLS') = 'Y');  
end;


procedure TfrmJournalBill.dbgrLedgerEnter(Sender: TObject);
begin
  dbgrLedger.SelectedIndex := colREFNO;
end;


procedure TfrmJournalBill.qryLedgerAfterScroll(DataSet: TDataSet);
begin
  StatusDisplay;
  loadSubbills;
end;


procedure TfrmJournalBill.popGridOpenMatterClick(Sender: TObject);
begin
  if qryBill.Active then
    with TfrmMatters.Create(Self) do
      DisplayMatter(qryBill.FieldByName('FILEID').AsString);
end;


procedure TfrmJournalBill.qryLedgerREFNOChange(Sender: TField);
begin
  dsLedger.OnDataChange := nil;
  if qryLedger.FieldByName('REFNO').AsString <> '' then
  begin
    qryLedger.FieldByName('REFNO').AsString := UpperCase(Trim(qryLedger.FieldByName('REFNO').AsString));
    if (qryLedger.FieldByName('TYPE').AsString = 'Matter') or (qryLedger.FieldByName('TYPE').AsString = 'Disburse') then
      qryLedger.FieldByName('DESCR').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'MATLOCATE');
    with qryTmp do
    begin
      Close;
      SQL.Text := 'SELECT FILEID FROM NMEMO WHERE REFNO = ' + QuotedStr(qryLedger.FieldByName('REFNO').AsString);
      Open;
      qryLedger.FieldByName('DESCR').AsString := MatterString(FieldByName('FILEID').AsString, 'MATLOCATE');
      Close;
    end;
    with qryBill do
    begin
      Close;
      ParamByName('NMEMO').AsInteger := TableInteger('NMEMO', 'REFNO', qryLedger.FieldByName('REFNO').AsString, 'NMEMO');
      Open;
      if not IsEmpty then
        SetupBill;
    end;
  end;

  StatusDisplay;

  dsLedger.OnDataChange := dsLedgerDataChange;
end;


procedure TfrmJournalBill.popGridDistributeClick(Sender: TObject);
begin
        DisplayDistributionScreen;
end;


procedure TfrmJournalBill.DisplayDistributionScreen;
var
  LfrmReceiptDistribute: TfrmReceiptDistribute;
begin
  DistributeBill;
  LfrmReceiptDistribute := TfrmReceiptDistribute.Create(Self);
  try
    if(LfrmReceiptDistribute.SetupDistribution('Journal', qryLedger.FieldByName('INVOICE').AsInteger,0, qryLedger.FieldByName('FEESCR').AsCurrency, qryLedger.FieldByName('DISBCR').AsCurrency, qryLedger.FieldByName('UPCREDCR').AsCurrency, qryLedger.FieldByName('ANTDCR').AsCurrency, qryLedger.FieldByName('SUNDCR').AsCurrency)) then
    begin
      if(LfrmReceiptDistribute.ShowModal = mrOk) then
      begin
        if LfrmReceiptDistribute.Distributed then
        begin
          if not qryLedger.Modified then
            qryLedger.Edit;
          qryLedger.FieldByName('FEESCR').AsFloat := LfrmReceiptDistribute.neFees.Value;
          qryLedger.FieldByName('DISBCR').AsFloat := LfrmReceiptDistribute.neDisb.Value;
          qryLedger.FieldByName('ANTDCR').AsFloat := LfrmReceiptDistribute.neAntd.Value;
          qryLedger.FieldByName('SUNDCR').AsFloat := LfrmReceiptDistribute.neSund.Value;
          qryLedger.FieldByName('UPCREDCR').AsFloat := LfrmReceiptDistribute.neUpCred.Value;
          qryLedger.Post;
        end;
      end;
    end;
  finally
    LfrmReceiptDistribute.Free();
  end;
end;


procedure TfrmJournalBill.SetupBill;
begin
  dsLedger.OnDataChange := nil;
  if not qryLedger.Modified then
    qryLedger.Edit;

  loadSubbills;

  qryLedger.FieldByName('REFNO').AsString := qryBill.FieldByName('REFNO').AsString;
  qryLedger.FieldByName('DESCR').AsString := MatterString(qrybill.FieldByName('FILEID').AsString, 'MATLOCATE');
  if qryLedger.FieldByName('REASON').AsString = '' then
    qryLedger.FieldByName('REASON').AsString := edReason.Text;
  if qryLedger.FieldByName('REASON').AsString = '' then
    qryLedger.FieldByName('REASON').AsString := 'Payment of Bill ' + qryBill.FieldbyName('REFNO').AsString;
  //qryLedger.FieldByName('CREDIT').AsFloat := qryBill.FieldbyName('FEES').AsFloat + qryBill.FieldbyName('DISB').AsFloat + qryBill.FieldbyName('ANTD').AsFloat + qryBill.FieldbyName('SUND').AsFloat + qryBill.FieldbyName('TAX').AsFloat - qryBill.FieldbyName('TRUST').AsFloat - qryBill.FieldbyName('FEES_PAID').AsFloat - qryBill.FieldbyName('DISB_PAID').AsFloat - qryBill.FieldbyName('ANTD_PAID').AsFloat - qryBill.FieldbyName('SUND_PAID').AsFloat - qryBill.FieldByName('TAX_PAID').AsFloat;
  qryLedger.FieldByName('CREDIT').AsFloat := qryBill.FieldbyName('OWING').AsFloat;
  qryLedger.FieldByName('DEBIT').AsFloat := qryLedger.FieldByName('CREDIT').AsFloat;
  qryLedger.FieldByName('FEESDR').AsFloat := qryBill.FieldByName('FEES').AsFloat - qryBill.FieldByName('FEES_PAID').AsFloat + qryBill.FieldByName('FEESTAX').AsFloat - qryBill.FieldByName('FEESTAX_PAID').AsFloat - qryBill.FieldByName('FEES_WOFF').AsFloat - qryBill.FieldByName('FEESTAX_WOFF').AsFloat;
  qryLedger.FieldByName('DISBDR').AsFloat := qryBill.FieldByName('DISB').AsFloat - qryBill.FieldByName('DISB_PAID').AsFloat + qryBill.FieldByName('DISBTAX').AsFloat - qryBill.FieldByName('DISBTAX_PAID').AsFloat - qryBill.FieldByName('DISB_WOFF').AsFloat - qryBill.FieldByName('DISBTAX_WOFF').AsFloat;
  qryLedger.FieldByName('ANTDDR').AsFloat := qryBill.FieldByName('ANTD').AsFloat - qryBill.FieldbyName('ANTD_PAID').AsFloat + qryBill.FieldByName('ANTDTAX').AsFloat - qryBill.FieldByName('ANTDTAX_PAID').AsFloat - qryBill.FieldByName('ANTD_WOFF').AsFloat - qryBill.FieldByName('ANTDTAX_WOFF').AsFloat;
  qryLedger.FieldByName('SUNDDR').AsFloat := qryBill.FieldByName('SUND').AsFloat - qryBill.FieldByName('SUND_PAID').AsFloat + qryBill.FieldByName('SUNDTAX').AsFloat - qryBill.FieldByName('SUNDTAX_PAID').AsFloat - qryBill.FieldByName('SUND_WOFF').AsFloat - qryBill.FieldByName('SUNDTAX_WOFF').AsFloat;
  qryLedger.FieldByName('UPCREDDR').AsFloat := qryBill.FieldByName('UPCRED').AsFloat - qryBill.FieldByName('UPCRED_PAID').AsFloat + qryBill.FieldByName('UPCREDTAX').AsFloat - qryBill.FieldByName('UPCREDTAX_PAID').AsFloat - qryBill.FieldByName('UPCRED_WOFF').AsFloat - qryBill.FieldByName('UPCREDTAX_WOFF').AsFloat;
  qryLedger.FieldByName('INVOICE').AsInteger := qryBill.FieldByName('NMEMO').AsInteger;
  qryLedger.Post;
  DistributeBill;
  dsLedger.OnDataChange := dsLedgerDataChange;
end;

procedure TfrmJournalBill.qryLedgerCREDITChange(Sender: TField);
begin
  dsLedger.OnDataChange := nil;
  if qryLedger.FieldByName('TYPE').AsString = 'Bill' then
    if dbgrLedger.Columns.Items[colCREDIT].Field.AsFloat <> qryLedger.FieldByName('DEBIT').AsFloat then
    begin
      DistributeBill;
      popGridDistribute.Click;
    end;
  dsLedger.OnDataChange := dsLedgerDataChange;
end;

procedure TfrmJournalBill.btnLedgerClick(Sender: TObject);
begin
  with TfrmLedgerSearch.Create(Self) do
    if ShowModal = mrOK then
      edLedger.Text := qryLedgers.FieldByName('CODE').AsString;
end;

procedure TfrmJournalBill.dsLedgerDataChange(Sender: TObject;
  Field: TField);
begin
   if Field <> nil then
   if Field.FieldName = 'REFNO' then
      qryLedgerREFNOChange(Field);

end;

procedure TfrmJournalBill.cxdbgrLedgerDBTableView1DBColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    dsLedger.OnDataChange := nil;
    if not FormExists(frmInvoiceSearch) then
      Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);
    if frmInvoiceSearch.ShowModal = mrOk then
    begin
      qryBill.Close;
      qryBill.ParamByName('NMEMO').AsInteger := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger;
      qryBill.Open;
      SetupBill;
    end;

    StatusDisplay;

    dsLedger.OnDataChange := dsLedgerDataChange;

end;

procedure TfrmJournalBill.cxdbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmJournalBill.cxdbgrLedgerEnter(Sender: TObject);
begin
//cxdbgrLedgerDBTableView1DBColumn1.Focused := true;
end;

procedure TfrmJournalBill.cxdbgrLedgerDBTableView1DBColumn4PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
  var value : Currency;
begin
      value := DisplayValue;
      if value > qryLedger.FieldByName('DEBIT').AsFloat then
      begin
        if qryLedger.FieldByName('DEBIT').AsFloat <> 0.0 then
        begin
          MsgErr('There is only ' + Format('%m', [qryLedger.FieldByName('DEBIT').AsFloat]) + ' owing on this Bill');
          DisplayValue := qryLedger.FieldByName('DEBIT').AsFloat;
        end
        else
          MsgErr('There is nothing owing on this Bill');
        DisplayValue := qryLedger.FieldByName('DEBIT').AsFloat;
      end
      else if DisplayValue <> qryLedger.FieldByName('DEBIT').AsFloat then
      begin
        qryLedger.FieldByName('CREDIT').AsFloat := DisplayValue;
        popGridDistributeClick(self);
      end
      else
          qryLedger.FieldByName('CREDIT').AsFloat := DisplayValue;
      UpdateTotal;
end;

procedure TfrmJournalBill.qryLedgerAfterOpen(DataSet: TDataSet);
begin
       DataSet.Insert;
end;

procedure TfrmJournalBill.loadSubbills;
var
inmemo : integer;
begin
    inmemo := qryLedger.fieldByName('INVOICE').AsInteger;
    //
    dbgrLedger.Columns[colSUBBILL].PickList.Clear;
    qrySubbills.close;
    qrySubbills.paramByName('nmemo').AsInteger := inmemo;
    qrySubBills.ParamByName('debtor_name').AsString := '';
    qrySubBills.ParamByName('nsubbill_id').AsString := '';
    qrySubbills.open;

    while not qrySubbills.Eof do
    begin
        dbgrLedger.Columns[colSUBBILL].PickList.Add(qrySubbills.fieldbyname('DEBTOR_NAME').AsString);
        qrySubbills.Next;
    end

end;

procedure TfrmJournalBill.setUpSubBill(iNSubBill : Integer);
begin
  qrySubBillLookup.Close;
  qrySubBillLookup.paramByName('NSUBBILL').AsInteger := iNSubBill;
  qrySubBillLookup.paramByName('NMEMO').AsInteger := qryLedger.fieldByName('INVOICE').AsInteger;
  qrySubBillLookup.Open;

  qryLedger.FieldByName('CREDIT').AsFloat := qrySubBillLookup.fieldByName('OWING').AsFloat;
  qryLedger.FieldByName('DEBIT').AsFloat := qryLedger.FieldByName('CREDIT').AsFloat;
  qryLedger.FieldByName('FEESDR').AsFloat := qrySubBillLookup.FieldByName('FEES').AsFloat - qrySubBillLookup.FieldByName('FEES_PAID').AsFloat + qrySubBillLookup.FieldByName('FEESTAX').AsFloat - qrySubBillLookup.FieldByName('FEESTAX_PAID').AsFloat;
  qryLedger.FieldByName('DISBDR').AsFloat := qrySubBillLookup.FieldByName('DISB').AsFloat - qrySubBillLookup.FieldByName('DISB_PAID').AsFloat + qrySubBillLookup.FieldByName('DISBTAX').AsFloat - qrySubBillLookup.FieldByName('DISBTAX_PAID').AsFloat;
  qryLedger.FieldByName('UPCREDDR').AsFloat := qrySubBillLookup.FieldByName('UPCRED').AsFloat - qrySubBillLookup.FieldbyName('UPCRED_PAID').AsFloat + qrySubBillLookup.FieldByName('UPCREDTAX').AsFloat - qrySubBillLookup.FieldByName('UPCREDTAX_PAID').AsFloat;
  qryLedger.FieldByName('ANTDDR').AsFloat := qrySubBillLookup.FieldByName('ANTD').AsFloat - qrySubBillLookup.FieldbyName('ANTD_PAID').AsFloat + qrySubBillLookup.FieldByName('ANTDTAX').AsFloat - qrySubBillLookup.FieldByName('ANTDTAX_PAID').AsFloat;
  qryLedger.FieldByName('SUNDDR').AsFloat := qrySubBillLookup.FieldByName('SUND').AsFloat - qrySubBillLookup.FieldByName('SUND_PAID').AsFloat + qrySubBillLookup.FieldByName('SUNDTAX').AsFloat - qrySubBillLookup.FieldByName('SUNDTAX_PAID').AsFloat;
  DistributeBill(false);

  qrySubBillLookup.close;
end;

procedure TfrmJournalBill.setUpdateQuery(updateQuery, billQuery : TUniQuery; dDate: TDateTime);
var
   SplitPercent: real;
   TaxCalc: Currency;
begin
   with updateQuery do
   begin
      ParamByName('DATE_LAST_RECPT').AsDateTime := dDate;

      if qryLedger.FieldByName('FEESCR').AsFloat = 0 then
      begin
         ParamByName('FEES_PAID').AsFloat := 0;
         ParamByName('FEESTAX_PAID').AsFloat := 0;
      end
      else
      begin
         try
         SplitPercent := RoundTo(qryLedger.FieldByName('FEESCR').AsCurrency/(billQuery.FieldByName('FEES').AsCurrency + billQuery.FieldByName('FEESTAX').AsCurrency),-2);
         except
            SplitPercent := 0;
         end;


         TaxCalc := RoundTo((billQuery.FieldByName('FEESTAX').AsCurrency * SplitPercent),-2);
         ParamByName('FEESTAX_PAID').AsCurrency := TaxCalc;
         ParamByName('FEES_PAID').AsCurrency := (qryLedger.FieldByName('FEESCR').AsCurrency - TaxCalc);

    {  if qryLedger.FieldByName('FEESCR').AsFloat = (billQuery.FieldByName('FEES').AsFloat - billQuery.FieldByName('FEES_PAID').AsFloat + billQuery.FieldByName('FEESTAX').AsFloat - billQuery.FieldByName('FEESTAX_PAID').AsFloat) then
      begin
         ParamByName('FEES_PAID').AsFloat := billQuery.FieldByName('FEES').AsFloat - billQuery.FieldByName('FEES_PAID').AsFloat;
         ParamByName('FEESTAX_PAID').AsFloat := billQuery.FieldByName('FEESTAX').AsFloat - billQuery.FieldByName('FEESTAX_PAID').AsFloat;
      end
      else
      begin
      // We have to proportion the tax out of the fees
         if (billQuery.FieldByName('FEESTAX').AsFloat - billQuery.FieldByName('FEESTAX_PAID').AsFloat) <> 0 then
            ParamByName('FEESTAX_PAID').AsFloat := qryLedger.FieldByName('FEESCR').AsFloat * ((billQuery.FieldByName('FEESTAX').AsFloat - billQuery.FieldByName('FEESTAX_PAID').AsFloat) / (billQuery.FieldByName('FEES').AsFloat - billQuery.FieldByName('FEES_PAID').AsFloat + billQuery.FieldByName('FEESTAX').AsFloat - billQuery.FieldByName('FEESTAX_PAID').AsFloat))
         else
            { if we put a -ve amount into the journal we need to make sure fees has a value
            as all the amount will get put against fees }
         {   if billQuery.FieldByName('FEES').AsFloat <> 0 then
               ParamByName('FEESTAX_PAID').AsFloat := qryLedger.FieldByName('FEESCR').AsFloat * (billQuery.FieldByName('FEESTAX').AsFloat/billQuery.FieldByName('FEES').AsFloat)
            else
               ParamByName('FEESTAX_PAID').AsFloat := 0.0;

         ParamByName('FEES_PAID').AsFloat := qryLedger.FieldByName('FEESCR').AsFloat - ParamByName('FEESTAX_PAID').AsFloat;
      end;   }
      end;

      if qryLedger.FieldByName('DISBCR').AsFloat = 0 then
      begin
         ParamByName('DISB_PAID').AsFloat := 0;
         ParamByName('DISBTAX_PAID').AsFloat := 0;
      end
      else
      begin
         try
         SplitPercent := RoundTo(qryLedger.FieldByName('DISBCR').AsCurrency/(billQuery.FieldByName('DISB').AsCurrency + billQuery.FieldByName('DISBTAX').AsCurrency),-2);
         except
            SplitPercent := 0;
         end;

         TaxCalc := RoundTo((billQuery.FieldByName('DISBTAX').AsCurrency * SplitPercent),-2);
         ParamByName('DISBTAX_PAID').AsCurrency := TaxCalc;
         ParamByName('DISB_PAID').AsCurrency := (qryLedger.FieldByName('DISBCR').AsCurrency - TaxCalc);

     {    if qryLedger.FieldByName('DISBCR').AsFloat = (billQuery.FieldByName('DISB').AsFloat - billQuery.FieldByName('DISB_PAID').AsFloat + billQuery.FieldByName('DISBTAX').AsFloat - billQuery.FieldByName('DISBTAX_PAID').AsFloat) then
         begin

           ParamByName('DISB_PAID').AsFloat := billQuery.FieldByName('DISB').AsFloat - billQuery.FieldByName('DISB_PAID').AsFloat;
           ParamByName('DISBTAX_PAID').AsFloat := billQuery.FieldByName('DISBTAX').AsFloat - billQuery.FieldByName('DISBTAX_PAID').AsFloat;
         end
         else
         begin
           // We have to proportion the tax out of the disbursements
           if (billQuery.FieldByName('DISBTAX').AsFloat - billQuery.FieldByName('DISBTAX_PAID').AsFloat) <> 0 then
             ParamByName('DISBTAX_PAID').AsFloat := qryLedger.FieldByName('DISBCR').AsFloat * ((billQuery.FieldByName('DISBTAX').AsFloat - billQuery.FieldByName('DISBTAX_PAID').AsFloat) / (billQuery.FieldByName('DISB').AsFloat - billQuery.FieldByName('DISB_PAID').AsFloat + billQuery.FieldByName('DISBTAX').AsFloat - billQuery.FieldByName('DISBTAX_PAID').AsFloat))
           else
             if billQuery.FieldByName('DISB').AsFloat <> 0 then
                     ParamByName('DISBTAX_PAID').AsFloat := qryLedger.FieldByName('DISBCR').AsFloat * (billQuery.FieldByName('DISBTAX').AsFloat/billQuery.FieldByName('DISB').AsFloat)
             else
             ParamByName('DISBTAX_PAID').AsFloat := 0;

           ParamByName('DISB_PAID').AsFloat := qryLedger.FieldByName('DISBCR').AsFloat - ParamByName('DISBTAX_PAID').AsFloat;
         end; }
      end;

      if qryLedger.FieldByName('UPCREDCR').AsFloat = 0 then
      begin
         ParamByName('UPCRED_PAID').AsFloat := 0;
         ParamByName('UPCREDTAX_PAID').AsFloat := 0;
      end
      else
      begin
         try
         SplitPercent := RoundTo(qryLedger.FieldByName('UPCREDCR').AsCurrency/(billQuery.FieldByName('UPCRED').AsCurrency + billQuery.FieldByName('UPCREDTAX').AsCurrency),-2);
         except
            SplitPercent := 0;
         end;

         TaxCalc := RoundTo((billQuery.FieldByName('UPCREDTAX').AsCurrency * SplitPercent),-2);
         ParamByName('UPCREDTAX_PAID').AsCurrency := TaxCalc;
         ParamByName('UPCRED_PAID').AsCurrency := (qryLedger.FieldByName('UPCREDCR').AsCurrency - TaxCalc);

        { if qryLedger.FieldByName('UPCREDCR').AsFloat = (billQuery.FieldByName('UPCRED').AsFloat - billQuery.FieldByName('UPCRED_PAID').AsFloat + billQuery.FieldByName('UPCREDTAX').AsFloat - billQuery.FieldByName('UPCREDTAX_PAID').AsFloat) then
         begin
           ParamByName('UPCRED_PAID').AsFloat := billQuery.FieldByName('UPCRED').AsFloat - billQuery.FieldByName('UPCRED_PAID').AsFloat;
           ParamByName('UPCREDTAX_PAID').AsFloat := billQuery.FieldByName('UPCREDTAX').AsFloat - billQuery.FieldByName('UPCREDTAX_PAID').AsFloat;
         end
         else
         begin
           // We have to proportion the tax out of the Anticipated Disbursements
             if (billQuery.FieldByName('UPCREDTAX').AsFloat - billQuery.FieldByName('UPCREDTAX_PAID').AsFloat) <> 0 then
             ParamByName('UPCREDTAX_PAID').AsFloat := qryLedger.FieldByName('UPCREDCR').AsFloat * ((billQuery.FieldByName('UPCREDTAX').AsFloat - billQuery.FieldByName('UPCREDTAX_PAID').AsFloat) / (billQuery.FieldByName('UPCRED').AsFloat - billQuery.FieldByName('UPCRED_PAID').AsFloat + billQuery.FieldByName('UPCREDTAX').AsFloat - billQuery.FieldByName('UPCREDTAX_PAID').AsFloat))
           else
             if billQuery.FieldByName('UPCRED').AsFloat <> 0 then
                     ParamByName('UPCREDTAX_PAID').AsFloat := qryLedger.FieldByName('UPCREDCR').AsFloat * (billQuery.FieldByName('UPCREDTAX').AsFloat/billQuery.FieldByName('UPCRED').AsFloat)
             else
                     ParamByName('UPCREDTAX_PAID').AsFloat := 0;


           ParamByName('UPCRED_PAID').AsFloat := qryLedger.FieldByName('UPCREDCR').AsFloat - ParamByName('UPCREDTAX_PAID').AsFloat;
         end;}
      end;

      if qryLedger.FieldByName('ANTDCR').AsFloat = 0 then
      begin
         ParamByName('ANTD_PAID').AsFloat := 0;
         ParamByName('ANTDTAX_PAID').AsFloat := 0;
      end
      else
      begin
         try
         SplitPercent := RoundTo(qryLedger.FieldByName('ANTDCR').AsCurrency/(billQuery.FieldByName('ANTD').AsCurrency + billQuery.FieldByName('ANTDTAX').AsCurrency),-2);
         except
            SplitPercent := 0;
         end;

         TaxCalc := RoundTo((billQuery.FieldByName('ANTDTAX').AsCurrency * SplitPercent),-2);
         ParamByName('ANTDTAX_PAID').AsCurrency := TaxCalc;
         ParamByName('ANTD_PAID').AsCurrency := (qryLedger.FieldByName('ANTDCR').AsCurrency - TaxCalc);

        { if qryLedger.FieldByName('ANTDCR').AsFloat = (billQuery.FieldByName('ANTD').AsFloat - billQuery.FieldByName('ANTD_PAID').AsFloat + billQuery.FieldByName('ANTDTAX').AsFloat - billQuery.FieldByName('ANTDTAX_PAID').AsFloat) then
         begin
           ParamByName('ANTD_PAID').AsFloat := billQuery.FieldByName('ANTD').AsFloat - billQuery.FieldByName('ANTD_PAID').AsFloat;
           ParamByName('ANTDTAX_PAID').AsFloat := billQuery.FieldByName('ANTDTAX').AsFloat - billQuery.FieldByName('ANTDTAX_PAID').AsFloat;
         end
         else
         begin
           // We have to proportion the tax out of the Anticipated Disbursements
             if (billQuery.FieldByName('ANTDTAX').AsFloat - billQuery.FieldByName('ANTDTAX_PAID').AsFloat) <> 0 then
             ParamByName('ANTDTAX_PAID').AsFloat := qryLedger.FieldByName('ANTDCR').AsFloat * ((billQuery.FieldByName('ANTDTAX').AsFloat - billQuery.FieldByName('ANTDTAX_PAID').AsFloat) / (billQuery.FieldByName('ANTD').AsFloat - billQuery.FieldByName('ANTD_PAID').AsFloat + billQuery.FieldByName('ANTDTAX').AsFloat - billQuery.FieldByName('ANTDTAX_PAID').AsFloat))
           else
             if billQuery.FieldByName('ANTD').AsFloat <> 0 then
                     ParamByName('ANTDTAX_PAID').AsFloat := qryLedger.FieldByName('ANTDCR').AsFloat * (billQuery.FieldByName('ANTDTAX').AsFloat/billQuery.FieldByName('ANTD').AsFloat)
             else
                ParamByName('ANTDTAX_PAID').AsFloat := 0;

           ParamByName('ANTD_PAID').AsFloat := qryLedger.FieldByName('ANTDCR').AsFloat - ParamByName('ANTDTAX_PAID').AsFloat;
         end; }
      end;

      if qryLedger.FieldByName('SUNDCR').AsFloat = 0 then
      begin
         ParamByName('SUND_PAID').AsFloat := 0;
         ParamByName('SUNDTAX_PAID').AsFloat := 0;
      end
      else
      begin
         try
         SplitPercent := RoundTo(qryLedger.FieldByName('SUNDCR').AsCurrency/(billQuery.FieldByName('SUND').AsCurrency + billQuery.FieldByName('SUNDTAX').AsCurrency),-2);
         except
            SplitPercent := 0;
         end;

         TaxCalc := RoundTo((billQuery.FieldByName('SUNDTAX').AsCurrency * SplitPercent),-2);
         ParamByName('SUNDTAX_PAID').AsCurrency := TaxCalc;
         ParamByName('SUND_PAID').AsCurrency := (qryLedger.FieldByName('SUNDCR').AsCurrency - TaxCalc);

         {if qryLedger.FieldByName('SUNDCR').AsFloat = (billQuery.FieldByName('SUND').AsFloat - billQuery.FieldByName('SUND_PAID').AsFloat + billQuery.FieldByName('SUNDTAX').AsFloat - billQuery.FieldByName('SUNDTAX_PAID').AsFloat) then
         begin
           ParamByName('SUND_PAID').AsFloat := billQuery.FieldByName('SUND').AsFloat - billQuery.FieldByName('SUND_PAID').AsFloat;
           ParamByName('SUNDTAX_PAID').AsFloat := billQuery.FieldByName('SUNDTAX').AsFloat - billQuery.FieldByName('SUNDTAX_PAID').AsFloat;
         end
         else
         begin
           // We have to proportion the tax out of the fees
           if (billQuery.FieldByName('SUNDTAX').AsFloat - billQuery.FieldByName('SUNDTAX_PAID').AsFloat) <> 0 then
             ParamByName('SUNDTAX_PAID').AsFloat := qryLedger.FieldByName('SUNDCR').AsFloat * ((billQuery.FieldByName('SUNDTAX').AsFloat - billQuery.FieldByName('SUNDTAX_PAID').AsFloat) / (billQuery.FieldByName('SUND').AsFloat - billQuery.FieldByName('SUND_PAID').AsFloat + billQuery.FieldByName('SUNDTAX').AsFloat - billQuery.FieldByName('SUNDTAX_PAID').AsFloat))
           else
              if billQuery.FieldByName('SUND').AsFloat <> 0 then
              ParamByName('SUNDTAX_PAID').AsFloat := qryLedger.FieldByName('SUNDCR').AsFloat * (billQuery.FieldByName('SUNDTAX').AsFloat/billQuery.FieldByName('SUND').AsFloat)
              else
              ParamByName('SUNDTAX_PAID').AsFloat := 0;

           ParamByName('SUND_PAID').AsFloat := qryLedger.FieldByName('SUNDCR').AsFloat - ParamByName('SUNDTAX_PAID').AsFloat;
         end;}
      end;
    //ParamByName('NMEMO').AsInteger := billQuery.FieldByName('NMEMO').AsInteger;
    //ExecSQL;
   end;
end;

procedure TfrmJournalBill.CloseFrm(var Message: TMessage);
begin
   RemoveFromDesktop(Self);
end;

end.

