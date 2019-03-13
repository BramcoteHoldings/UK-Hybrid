unit AccountNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  ExtCtrls, OracleUniProvider, Uni, DBAccess, MemDS, NumberEdit, DateTimeAccount,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxDropDownEdit, cxButtonEdit, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  cxDBLookupComboBox, cxMaskEdit, cxContainer, cxLabel,
  cxLookAndFeelPainters, cxCheckBox, cxButtons, cxCalendar,
  EnforceCustomDateEdit, cxLookupEdit, cxDBLookupEdit, Variants,
  jpeg, cxImage, DelphiTwain, cxLookAndFeels, dxCore, cxNavigator, cxDateUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxEditorLnks, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPSContainerLnk;

const
  colTYPE = 0;
  colREFNO = 1;
  colLONGDESC = 2;
  colREASON = 3;
  colTAXCODE = 4;
  colAMOUNT = 5;
  colTAX = 6;

type
  TfrmAccountNew = class(TForm)
    tbRefno: TEdit;
    tbDesc: TEdit;
    dsAllocs: TUniDataSource;
    dsAccount: TUniDataSource;
    qryAccount: TUniQuery;
    qryAllocs: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    dtpDueDate: TDateTimePicker;
    dtpPayDate: TDateTimePicker;
    qryTmp: TUniQuery;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    lblTax: TLabel;
    lblBalance: TLabel;
    neAmount: TNumberEdit;
    lblUnallocatedMsg: TLabel;
    lblUnallocated: TLabel;
    qryRefnoCheck: TUniQuery;
    qryLedgerTYPE: TStringField;
    qryLedgerREFNO: TStringField;
    qryLedgerLONGDESC: TStringField;
    qryLedgerREASON: TStringField;
    qryLedgerAMOUNT: TFloatField;
    qryLedgerTAXCODE: TStringField;
    qryLedgerTAX: TFloatField;
    qryLedgerROWID: TStringField;
    qryLedgerWITHHOLD: TStringField;
    qryDefaultTaxcode: TUniQuery;
    qryUpdateInvoice: TUniQuery;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerTYPE: TcxGridDBColumn;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerLONGDESC: TcxGridDBColumn;
    tvLedgerREASON: TcxGridDBColumn;
    tvLedgerTAXCODE: TcxGridDBColumn;
    tvLedgerAMOUNT: TcxGridDBColumn;
    tvLedgerTAX: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    qryTaxCodes: TUniQuery;
    dsTaxCodes: TUniDataSource;
    lblCreditor: TcxLabel;
    dtpDate: TEnforceCustomDateEdit;
    qrySundryType: TUniQuery;
    dsSundryType: TUniDataSource;
    tvLedgerSUNDRYTYPE: TcxGridDBColumn;
    qryLedgerSUNDRYTYPE: TStringField;
    dlFile: TOpenDialog;
    imgDocument: TcxImage;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    btnAcquireDoc: TBitBtn;
    btnAddAttachment: TBitBtn;
    btnCreditor: TBitBtn;
    chkNoExit: TCheckBox;
    dxComponentPrinterAccPayable: TdxComponentPrinter;
    dxComponentPrinterAccPayableLink1: TdxCustomContainerReportLink;
    BitBtn1: TBitBtn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dbgrLedgerEditButtonClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrLedgerColExit(Sender: TObject);
    procedure btnCreditorClick(Sender: TObject);
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
    procedure tbRefnoExit(Sender: TObject);
    procedure dtpDateChange(Sender: TObject);
    procedure qryLedgerBeforeScroll(DataSet: TDataSet);
    procedure qryLedgerBeforeInsert(DataSet: TDataSet);
    procedure cxGrid1DBTableView1REFNOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure tvLedgerREFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1Exit(Sender: TObject);
    procedure tvLedgerAMOUNTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure EnforceCustomDateEdit1PropertiesChange(Sender: TObject);
    procedure tvLedgerDataControllerDataChanged(Sender: TObject);
    procedure btnAddAttachmentClick(Sender: TObject);
    procedure btnAcquireDocClick(Sender: TObject);
    procedure tvLedgerInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    NCreditor: integer;
    Balance, Tax, TotalAmt, WithholdTax: currency;
    DefaultTax, AllocType: string;
    FRefContinue: boolean;
    FRefno: string;
    FInv_Copy_Path: string;
    function OKtoPost(bShowError: Boolean): Boolean;
    procedure UpdateTotal;
    procedure CreateAccount(aCreditor: Integer);
    procedure CalcTax;
    function GetCreditorTerms(aCreditorNum: Integer): Integer;
    procedure SetDefaultTaxType;
    property Inv_Copy_Path: string read FInv_Copy_Path write FInv_Copy_Path;
  public
    { Public declarations }
    procedure DisplayCreditor(sCreditor : string; iCreditorNum : integer);
    procedure DisplayMatter(sFileId: string);
  end;

implementation

uses
  MSearch, MiscFunc, AxiomData, LSearch, CreditorSearch, citfunc,glComponentUtil,
  InvoiceScan;

{$R *.DFM}


procedure TfrmAccountNew.FormShow(Sender: TObject);
begin
  if not qryAccount.Modified then
    CreateAccount(NCreditor);
  Self.Caption := Self.Caption + ' - '+ dmAxiom.EntityName;

{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

  if Self.Visible then
    tbRefno.SetFocus;
end;

procedure TfrmAccountNew.CreateAccount(aCreditor: Integer);
//var
//  iTmp : integer;
begin
  TotalAmt := 0;

{
  Modified 3.12.2002

  Due Date should default to the terms set for the creditor, not 30 days.

  dtpDueDate.Date := Now + 30;
}
  dtpDueDate.Date := Now + GetCreditorTerms(aCreditor);
  dtpPayDate.Date := DateBusinessCalc(dtpDueDate.Date, -2);
  // Create the INVOICE entry - as we are using Cached Updates
  // this won't save until we explicitly ApplyUdates
  //iTmp := GetSeqnum('NCHEQUE');
  qryAccount.Open;
  qryAccount.Insert;
  //qryAccount.FieldByName('NCHEQUE').AsInteger := iTmp;
  qryAccount.FieldByName('INVOICE_DATE').AsDateTime := dtpDate.Date;
  qryAccount.FieldByName('ACCT').AsString := dmAxiom.Entity;
end;

procedure TfrmAccountNew.DisplayCreditor(sCreditor : string; iCreditorNum : integer);
begin
  CreateAccount(iCreditorNum);
  lblCreditor.Caption := sCreditor;
  qryAccount.FieldByName('NCREDITOR').AsInteger := iCreditorNum;
  NCreditor := iCreditorNum;
end;

procedure TfrmAccountNew.DisplayMatter(sFileid : string);
begin
   qryLedger.FieldByName('TYPE').AsString := 'Matter';
   qryLedger.FieldByName('REFNO').AsString := sFileid;
   qryLedger.FieldByName('LONGDESC').AsString := MatterString(sFileid,'SHORTDESCR');
end;

procedure TfrmAccountNew.btnCancelClick(Sender: TObject);
begin
  qryLedger.Close;
  qryAccount.Close;
   Self.Close;
//  Self.Release;
//  RemoveFromDesktop(Self);
end;

procedure TfrmAccountNew.dbgrLedgerEditButtonClick(Sender: TObject);
var
  defaultLedgerTaxCode : String;
begin
{  if dbgrLedger.SelectedIndex = colREFNO then
  begin
    if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Matter' then
    begin
      if not FormExists(frmMatterSearch) then
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

        defaultLedgerTaxCode := LedgerString(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString, 'DEFAULT_TAXCODE');

        if defaultLedgerTaxCode <> '' then
          qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode
        else
          qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
      end;
    end;
  end; }
end;

procedure TfrmAccountNew.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
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
    lblBalance.Caption := Format('%.2n', [Balance]);
    lblTax.Caption := Format('%.2n', [Tax]);
    lblTotal.Caption := Format('%.2n', [TotalAmt]);
  finally
     qryLedger.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qryLedger.GoToBookmark(bmPrevRecord);
       qryLedger.FreeBookmark(bmPrevRecord);
     end;
  end;
  if (neAmount.AsCurrency <> 0) or dmAxiom.Security.Invoice.ForceTally then
    lblUnallocated.Caption := Format('%.2n', [neAmount.AsCurrency - TotalAmt]);
  btnOK.Enabled := OKtoPost(False);
end;

function TfrmAccountNew.OKtoPost(bShowError: Boolean): Boolean;
var
  sTmp : String;
  bOKtoPost: boolean;
  bDisbMsgUsed: boolean;
  bRefMsgUsed: Boolean;
  begin
   if qryLedger.Active then
   begin
      bOKtoPost:= True;
      sTmp := '';
      bDisbMsgUsed := False;
      bRefMsgUsed := False;
      qryLedger.First;
      while not qryLedger.EOF do
      begin
         if qryLedger.FieldByName('REFNO').AsString = '' then
            if Not bRefMsgUsed then
            begin
              sTmp := sTmp + 'A Reference number is required for all entries' + #13;
              bRefMsgUsed := True;
            end;
         if (qryLedger.FieldByName('TYPE').AsString = 'Matter') And (qryLedger.FieldByName('SUNDRYTYPE').AsString = '') then
            if Not bDisbMsgUsed then
            begin
              sTmp := sTmp + 'A disbursement code is required for all matter related entries' + #13;
              bDisbMsgUsed := True;
            end;
         qryLedger.Next;
      end;

      if ((neAmount.AsCurrency <> 0) or dmAxiom.Security.Invoice.ForceTally) and (neAmount.AsCurrency <> TotalAmt) then
        sTmp := sTmp + '       Invoice is not fully allocated' + #13;
      if lblCreditor.Caption = '' then
        sTmp := sTmp + '       Creditor' + #13;
      if tbDesc.Text = '' then
        sTmp := sTmp + '       Reason' + #13;
      if tbRefno.Text = '' then
        sTmp := sTmp + '       Invoice Number' + #13
      else
      begin
        if (not FRefContinue) then
        begin
          with qryRefnoCheck do
          begin
            ParamByName('NCREDITOR').AsInteger := NCreditor;
            ParamByName('REFNO').AsString := tbRefno.text;
            Open;
            if not IsEmpty then
            begin
              FRefContinue := MsgAsk('There is already an Invoice entered for this Creditor with reference: ' + tbRefno.text + #13 + #13 + 'Do you want to continue?') = mrYes;
              bOKtoPost := FRefContinue;
            end;
            Close;
          end;
        end;
      end;
      if (sTmp <> '') then
      begin
        if bShowError then
          MsgInfo('Please complete the following Invoice details before posting:    ' + #13 + #13 + sTmp);
        bOKtoPost := False;
      end;
      result:= bOKtoPost;
   end;
end;

procedure TfrmAccountNew.btnOKClick(Sender: TObject);
var
  cAccTotal, cAccTax: Double;
  bPostingFailed, matterPosting: boolean;
  sCreditorCode, sLedgerCode, sLegalCode: string;
  iNINVOICE, nmatter : integer;
  cMatterTotal, cTradeTotal : Double;
  glInstance : TglComponentInstance ;
  glComponentSetup : TglComponentSetup;
  sLedgerKey,sLedgerKeyDr : String;
  iPos: integer;
  bStream, fStream: TStream;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period

  24.10.2003 AES

  modified posting function so that gst is saved for an invoice
}

  glComponentSetup := dmAxiom.getGlComponents;

  if OKtoPost(True) then
  begin
    if PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed] then
    begin
      bPostingFailed := False;
      // Create a INVOICE entry
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;
        if not qryAccount.Modified then
          qryAccount.Edit;

        // 1/06/2004 Creditors work: Tony
        // If there is one or more matter entries, then set to NULL
        // otherwise set it to 'N'
        matterPosting := False;
        qryLedger.First;
        while not qryLedger.EOF do
        begin
          if qryLedger.FieldByName('TYPE').AsString = 'Matter' then
          begin
            matterPosting := True;
            break;
          end;
          qryLedger.Next;
        end;

        iNINVOICE := GetSeqNum('NINVOICE');
        qryAccount.FieldByName('ACCT').AsString := dmAxiom.Entity;
        qryAccount.FieldByName('TYPE').AsString := 'IV';
        qryAccount.FieldByName('CREDITOR').AsString := lblCreditor.Caption;
        qryAccount.FieldByName('AMOUNT').AsCurrency := TotalAmt;
        qryAccount.FieldByName('TAX').AsCurrency := Tax;
        qryAccount.FieldByName('CREDITED').AsCurrency := TotalAmt;
        qryAccount.FieldByName('REFNO').AsString := tbRefno.Text;
        FRefno := tbRefno.Text;
        qryAccount.FieldByName('DESCR').AsString := tbDesc.Text;
        qryAccount.FieldByName('INVOICE_DATE').AsDateTime := dtpDate.Date;
        qryAccount.FieldByName('DUE_DATE').AsDateTime := dtpDueDate.DateTime;
        qryAccount.FieldByName('PAY_DATE').AsDateTime := dtpPayDate.DateTime;
        qryAccount.FieldByName('NCREDITOR').AsInteger := NCreditor;

        // 1/06/2004 Creditors work: Tony
        // If there is one or more matter entries, then set to NULL
        // otherwise set it to 'N'
//        if matterPosting = True then
          qryAccount.FieldByName('HOLD').AsString := TableString('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'HOLD');
//        else
//          qryAccount.FieldByName('HOLD').AsString := 'N';
        qryAccount.FieldByName('NINVOICE').AsInteger := iNINVOICE;
        qryAccount.FieldByName('OWING').AsCurrency := TotalAmt - WithholdTax;

        // RDW - Added COUNSEL_FLAG
        qryAccount.FieldByName('COUNSEL_FLAG').AsString := TableString('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'COUNSEL_FLAG');

        if Inv_Copy_Path <> '' then
        begin
            qryAccount.fieldByname('invoice_copy').Clear;
            // check the document
            qryAccount.FieldByName('INVOICE_COPY_EXT').AsString := Copy(ExtractFileExt(Inv_Copy_Path),2,3);
            bStream := qryAccount.CreateBlobStream(qryAccount.FieldByName('INVOICE_COPY') , bmReadWrite);
            fStream := TFileStream.Create(Inv_Copy_Path, fmOpenRead);
            bStream.CopyFrom(fStream, fStream.Size);
        end;
        qryAccount.Post; // Puts Account into cached buffer

        // check creditor screen first, else use the creditor code from the entity;
{
  Code Modified 20.01.2003 GG

  Now needs to search on entity as well as chart.

        sLedgerCode := TableString('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'CHART');
}
        // 12/05/2004 Tony - Changes for creditors work
        sLedgerCode := TableStringEntity('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'CHART', dmAxiom.Entity);
        if not ValidLedger(dmAxiom.Entity, sLedgerCode) then
           sLedgerCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'CREDITORS');

        sLegalCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR');
        sCreditorCode := TableString('CREDITOR', 'NCREDITOR', qryAccount.FieldByName('NCREDITOR').AsInteger, 'CODE');

        // Initialise the totals for legal (matter) and ledger (trade) creditors amount
        cMatterTotal := 0;
        cTradeTotal  := 0;

        // Create Creditor Control Entry
        {
        PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
          , TotalAmt - WithholdTax
          , 0
          , qryAccount.FieldByName('REFNO').AsString, 'INVOICE'
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , qryAccount.FieldByName('DESCR').AsString
          , sLedgerCode
          , ''
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , sCreditorCode
          , qryLedger.FieldByName('TAXCODE').AsString);
        }

        // 28/05/2004 Tony - Create Trade Control Entry


        // Now, iterate through the entered Ledger Entries
        qryLedger.First;
        qryAllocs.Open;
        while not qryLedger.EOF do
        begin
          if qryLedger.FieldByName('TYPE').AsString = 'Matter' then
          begin
            nmatter := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
            qryAllocs.Insert;
            qryAllocs.FieldByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
            qryAllocs.FieldByName('NMATTER').AsInteger := nmatter; // TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
            qryAllocs.FieldByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
            //qryAllocs.FieldByName('NMEMO').AsInteger := 0;
            qryAllocs.FieldByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
            qryAllocs.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
            qryAllocs.FieldByName('CLIENT_NAME').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'TITLE');
            qryAllocs.FieldByName('MATTER_DESC').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'SHORTDESCR');
            qryAllocs.FieldByName('OVERDRAWN').AsString := 'N';
            qryAllocs.FieldByName('SYSTEM_DATE').AsDateTime := Date;
            qryAllocs.FieldByName('PAYER').AsString := qryAccount.FieldByName('CREDITOR').AsString;
            qryAllocs.FieldByName('ACCT').AsString := dmAxiom.Entity;
            qryAllocs.FieldByName('TYPE').AsString := qryAccount.FieldByName('TYPE').AsString;
            //pb- qryAllocs.FieldByName('NCHEQUE').AsInteger := qryAccount.FieldByName('NCHEQUE').AsInteger;
            qryAllocs.FieldByName('NINVOICE').AsInteger := iNINVOICE;
            //qryAllocs.FieldByName('NRECEIPT').AsInteger := 0;
            //qryAllocs.FieldByName('NJOURNAL').AsInteger := 0;
            qryAllocs.FieldByName('REFNO').AsString := qryAccount.FieldByName('REFNO').AsString;
            qryAllocs.FieldByName('BILLED').AsString := 'N';
            qryAllocs.FieldByName('TRUST').AsString := 'G';
            qryAllocs.FieldByName('AMOUNT').AsCurrency := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;
            qryAllocs.FieldByName('UPCRED').AsCurrency :=  qryLedger.FieldByName('AMOUNT').AsCurrency;
            qryAllocs.FieldByName('TAX').AsFloat := 0 - qryLedger.FieldByName('TAX').AsFloat;
            qryAllocs.FieldByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
            qryAllocs.FieldByName('CREATED').AsDateTime := dtpDate.Date;
            qryAllocs.FieldByName('SUNDRYTYPE').AsString := qryLedger.FieldByName('SUNDRYTYPE').AsString;;

            qryAllocs.Post;  // Put it into the cached bufer

            MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'UNBILL_UPCRED', 0 - (qryAllocs.FieldByName('AMOUNT').AsCurrency));
            MatterUpdate(qryAllocs.FieldByName('NMATTER').AsInteger, 'UNBILL_ANTD', 0 - (qryAllocs.FieldByName('AMOUNT').AsCurrency));

            // Now make the General Ledger entry
            if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
            begin
              cAccTotal := 0 - (qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency);
              cAccTax := 0;
            end
            else
            begin
              cAccTotal := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;
              cAccTax := 0 - qryLedger.FieldByName('TAX').AsCurrency;
            end;

            {post components}
            sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_CR'),'',true,'');


            PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
              , cAccTotal
              , cAccTax
              , qryAccount.FieldByName('REFNO').AsString
              , 'INVOICE'
              , qryAccount.FieldByName('NINVOICE').AsInteger
              , qryAllocs.FieldByName('DESCR').AsString
              //, TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR')
              { 12/05/2004 Tony - Changes for creditors work (above commented out by unknown)
              , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_UPCRED_DR')
              }
              , sLedgerKey
              , ''
              , qryAccount.FieldByName('NINVOICE').AsInteger
              , sCreditorCode
              , qryLedger.FieldByName('TAXCODE').AsString //);
              , FALSE   // bJournalSplit: Default to False
              , '0'     // sParentChart: Default to '0'
              , qryAllocs.FieldByName('NALLOC').AsInteger                                               // nalloc
              , nmatter);  // nmatter

            // Total the legal creditor amount
            cMatterTotal := cMatterTotal + qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency;;

            if qryLedger.FieldByName('TAX').AsFloat <> 0 then
            begin
              if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
              begin

                {post components}
                // Get Tax Code here if counsel Flag = 'Y'     COUNSEL_LEDGER
                if qryAccount.FieldByName('COUNSEL_FLAG').AsString = 'Y' then
                  sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'COUNSEL_LEDGER'),'',true,'')
                else
                  sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');


                PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
                  , qryLedger.FieldByName('TAX').AsCurrency
                  , 0
                  , qryAccount.FieldByName('REFNO').AsString
                  , 'INVOICE'
                  , qryAccount.FieldByName('NINVOICE').AsInteger
                  , qryLedger.FieldByName('REASON').AsString
                  , sLedgerKey
                  , ''
                  , qryAccount.FieldByName('NINVOICE').AsInteger
                  , sCreditorCode
                  , qryLedger.FieldByName('TAXCODE').AsString //)
                  , FALSE   // bJournalSplit: Default to False
                  , '0'     // sParentChart: Default to '0'
                  , qryAllocs.FieldByName('NALLOC').AsInteger   // nalloc
                  , nmatter);
              end                                    // nmatter
              else
              begin

                {post components}
                //sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                // Get Tax Code here if counsel Flag = 'Y'     COUNSEL_LEDGER
                if qryAccount.FieldByName('COUNSEL_FLAG').AsString = 'Y' then
                  sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'COUNSEL_LEDGER'),'',true,'')
                else
                  sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');



                PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
                  , 0 - qryLedger.FieldByName('TAX').AsCurrency
                  , 0
                  , qryAccount.FieldByName('REFNO').AsString
                  , 'INVOICE'
                  , qryAccount.FieldByName('NINVOICE').AsInteger
                  , qryLedger.FieldByName('REASON').AsString
                  , sLedgerKey
                  , ''
                  , qryAccount.FieldByName('NINVOICE').AsInteger
                  , sCreditorCode
                  , qryLedger.FieldByName('TAXCODE').AsString //)
                  , FALSE   // bJournalSplit: Default to False
                  , '0'     // sParentChart: Default to '0'
                  , qryAllocs.FieldByName('NALLOC').AsInteger   // nalloc
                  , nmatter);                                   // nmatter
                end;
            end;

          end;

          // Or is it a General Ledger Allocation?
          if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
          begin
            if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
            begin
              cAccTotal := 0 - (qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency);
              cAccTax := 0;
            end
            else
            begin
              cAccTotal := 0 - qryLedger.FieldByName('AMOUNT').AsCurrency;
              cAccTax := 0 - qryLedger.FieldByName('TAX').AsCurrency;
            end;

            // lookup the ledger code cased on the value entered
            glInstance := dmAxiom.getGlComponents.parseString(qryLedger.FieldByName('REFNO').AsString,true);

            if not glInstance.valid then
            begin
                // something has gone very wrong !
                raise Exception.create('Error invalid ledger key');
            end;

            PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
              , cAccTotal
              , cAccTax
              , glInstance.ledgerKey
              , 'INVOICE'
              , qryAccount.FieldByName('NINVOICE').AsInteger
              , qryLedger.FieldByName('REASON').AsString
              , glInstance.ledgerKey
              , ''
              , qryAccount.FieldByName('NINVOICE').AsInteger
              , sCreditorCode
              , qryLedger.FieldByName('TAXCODE').AsString);

              glInstance.free;

            // Total the trade (legder) creditor amount
            cTradeTotal := cTradeTotal + qryLedger.FieldByName('AMOUNT').AsCurrency +qryLedger.FieldByName('TAX').AsCurrency;

            if qryLedger.FieldByName('TAX').AsFloat <> 0 then
            begin
              if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
              begin
                {post components}
                sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, '1'),'',true,'');

                PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
                  , qryLedger.FieldByName('TAX').AsCurrency
                  , 0
                  , qryAccount.FieldByName('REFNO').AsString
                  , 'INVOICE'
                  , qryAccount.FieldByName('NINVOICE').AsInteger
                  , qryLedger.FieldByName('REASON').AsString
                  , sLedgerKey
                  , ''
                  , qryAccount.FieldByName('NINVOICE').AsInteger
                  , sCreditorCode
                  , qryLedger.FieldByName('TAXCODE').AsString);
                  end
              else
                begin
                {post components}
                //sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');
                // Get Tax Code here if counsel Flag = 'Y'     COUNSEL_LEDGER
                if qryAccount.FieldByName('COUNSEL_FLAG').AsString = 'Y' then
                  sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'COUNSEL_LEDGER'),'',true,'')
                else
                  sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
                  , 0 - qryLedger.FieldByName('TAX').AsCurrency
                  , 0
                  , qryAccount.FieldByName('REFNO').AsString
                  , 'INVOICE'
                  , qryAccount.FieldByName('NINVOICE').AsInteger
                  , qryLedger.FieldByName('REASON').AsString
                  , sLedgerKey
                  , ''
                  , qryAccount.FieldByName('NINVOICE').AsInteger
                  , sCreditorCode
                  , qryLedger.FieldByName('TAXCODE').AsString);
                end;
            end;
          end;

          { 31/05/2004 Tony
            Moved to the respective if statements above (either Matter or Ledger)
          if qryLedger.FieldByName('TAX').AsFloat <> 0 then
          begin
            if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
              PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
                , qryLedger.FieldByName('TAX').AsCurrency
                , 0
                , qryAccount.FieldByName('REFNO').AsString
                , 'INVOICE'
                , qryAccount.FieldByName('NINVOICE').AsInteger
                , qryLedger.FieldByName('REASON').AsString
                , TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                , ''
                , qryAccount.FieldByName('NINVOICE').AsInteger
                , sCreditorCode
                , qryLedger.FieldByName('TAXCODE').AsString)
            else
              PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
                , 0 - qryLedger.FieldByName('TAX').AsCurrency
                , 0
                , qryAccount.FieldByName('REFNO').AsString
                , 'INVOICE'
                , qryAccount.FieldByName('NINVOICE').AsInteger
                , qryLedger.FieldByName('REASON').AsString
                , TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER')
                , ''
                , qryAccount.FieldByName('NINVOICE').AsInteger
                , sCreditorCode
                , qryLedger.FieldByName('TAXCODE').AsString)
          end;
          }

          qryLedger.Next;
        end; // End of while loop

        {post components}
        sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLegalCode,'',true,'');


        // Create Creditor Control Entry
        PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
          , cMatterTotal
          , 0
          , qryAccount.FieldByName('REFNO').AsString
          , 'INVOICE'
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , qryAccount.FieldByName('DESCR').AsString
          , sLedgerKey
          , ''
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , sCreditorCode
          , qryLedger.FieldByName('TAXCODE').AsString);


        {post components}
        sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedgerCode,'',true,'');

        // 28/05/2004 Tony - Create Trade Control Entry
        PostLedger(qryAccount.FieldByName('INVOICE_DATE').AsDateTime
          , cTradeTotal
          , 0
          , qryAccount.FieldByName('REFNO').AsString
          , 'INVOICE'
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , qryAccount.FieldByName('DESCR').AsString
          , sLedgerKey
          , ''
          , qryAccount.FieldByName('NINVOICE').AsInteger
          , sCreditorCode
          , qryLedger.FieldByName('TAXCODE').AsString);


        if qryAccount.UpdatesPending then
          qryAccount.ApplyUpdates;

        if qryAllocs.UpdatesPending then
          qryAllocs.ApplyUpdates;

        CheckLedgerTotal;

        dmAxiom.uniInsight.Commit;

        // we need to commit prior to updating the invoice record. cannot update cached record.
        qryUpdateInvoice.ParamByName('LEGAL_CR_AMOUNT').AsFloat := cMatterTotal;
        qryUpdateInvoice.ParamByName('TRADE_CR_AMOUNT').AsFloat := cTradeTotal;
        qryUpdateInvoice.ParamByName('LEGAL_CR_AMOUNT_OWING').AsFloat := cMatterTotal;
        qryUpdateInvoice.ParamByName('TRADE_CR_AMOUNT_OWING').AsFloat := cTradeTotal;
        qryUpdateInvoice.ParamByName('NINVOICE').AsInteger := qryAccount.FieldByName('NINVOICE').AsInteger;
        qryUpdateInvoice.ExecSQL;

      except
        on E: Exception do
        begin
          bPostingFailed := True;
          if qryAccount.UpdatesPending then
            qryAccount.CancelUpdates;
          if qryAllocs.UpdatesPending then
            qryAllocs.CancelUpdates;
          dmAxiom.uniInsight.Rollback;
          MsgErr('Posting failed:' + #13#13 + E.Message);
        end;
      end;

      if not bPostingFailed then
      begin
        if not chkNoExit.Checked then
        begin
          Self.Close;
        end
        else
        begin
          Inv_Copy_Path := '';
          FRefContinue := True;
          qryAllocs.Close;
          qryAccount.Close;
          CreateAccount(NCreditor);
          qryAccount.FieldByName('NCREDITOR').AsInteger := NCreditor;
          tbRefno.Text := '';
          tbDesc.Text := '';
          neAmount.AsCurrency := 0;
          if qryLedger.UpdatesPending then
            qryLedger.CancelUpdates;
//          tbDesc.SetFocus;
          tbRefno.SetFocus;
          lblBalance.Caption := '';
          lblTax.Caption := '';
          lblUnallocated.Caption := '';
          lblTotal.Caption := '';
        end;
      end;
    end;
  end
end;

procedure TfrmAccountNew.dbgrLedgerColExit(Sender: TObject);
var glInstance : TglComponentInstance ;
begin
  glInstance := nil;
{  case dbgrLedger.SelectedIndex of
    colREFNO: // Display the long Description
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Ledger' then
      begin

        // lookup the ledger code based on the value entered
        glInstance := dmAxiom.getGlComponents.parseString(dbgrLedger.Columns.Items[colREFNO].Field.Text,true);
        if not glInstance.valid then
        begin
           glInstance.displayError;
           qryLedger.FieldByName('REFNO').AsString := '';
           qryLedger.FieldByName('LONGDESC').AsString := '';
           glInstance.free;
           exit;
        end
        else
        begin
                qryLedger.FieldByName('REFNO').AsString  := glInstance.fullCode;
        end;

          if not AllowDirectPost(glInstance.ledgerKey) then
          begin
             MsgErr('You may not post to ledger Reference #' + qryLedger.FieldByName('REFNO').AsString );
             qryLedger.FieldByName('REFNO').AsString := '';
          end
          else
             qryLedger.FieldByName('LONGDESC').AsString := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
       end
       else
          if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Matter' then
            qryLedger.FieldByName('LONGDESC').AsString := MatterString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'MATLOCATE');
          {why? is this needed}
{          if dbgrLedger.Columns.Items[colTYPE].Field.Text = 'Ledger' then
            qryLedger.FieldByName('LONGDESC').AsString := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');

      if glInstance <> nil then
        glInstance.free;
      SetDefaultTaxType;
            {
  Code Added 13.12.2002 GG

  Get the default tax code for this account from the chart table.  If null, use
  the default that is inserted when the new row is created.
}
//      qryDefaultTaxcode.ParamByName('CODE').AsString:=
//        qryLedger.FieldByName('REFNO').AsString;
{
  Code Added 20.01.2003 GG

  Use the current entity as the second part of the primary key
}
//      qryDefaultTaxcode.ParamByName('BANK').AsString:=
//        dmAxiom.Entity;
//      qryDefaultTaxcode.Open;

//      if not qryDefaultTaxcode.FieldByName('DEFAULT_TAXCODE').IsNull then
//      begin
//        qryLedger.FieldByName('TAXCODE').AsString:=
//          qryDefaultTaxcode.FieldByName('DEFAULT_TAXCODE').AsString
//      end;
//      qryDefaultTaxcode.Close;
{    end;
    colAMOUNT:
      UpdateTotal;
  end;  }

end;

procedure TfrmAccountNew.btnCreditorClick(Sender: TObject);
begin
  if not FormExists(frmCreditorSearch) then
    Application.CreateForm(TfrmCreditorSearch, frmCreditorSearch);
  if frmCreditorSearch.ShowModal = mrOk then
  begin
    lblCreditor.Caption := frmCreditorSearch.qryCreditors.FieldByName('NAME').AsString;
//    lblCreditor.Caption := frmCreditorSearch.qryCreditors.FieldByName('SEARCH').AsString;
    qryAccount.FieldByName('NCREDITOR').AsInteger := frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger;
    NCreditor := frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger;
  end;
end;

procedure TfrmAccountNew.qryLedgerAfterInsert(DataSet: TDataSet);
begin
  if AllocType = '' then
    qryLedger.FieldByName('TYPE').AsString := 'Ledger'
  else
    qryLedger.FieldByName('TYPE').AsString := AllocType;
  qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
  qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
end;

procedure TfrmAccountNew.dbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmAccountNew.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmAccountNew.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmAccountNew.popRemoveClick(Sender: TObject);
begin
  if not qryLedger.EOF then
    qryLedger.Delete;
end;

procedure TfrmAccountNew.popEditClick(Sender: TObject);
begin
  if not qryLedger.EOF then
    qryLedger.Edit;
end;

procedure TfrmAccountNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLedger.Close;
  qryAccount.Close;
  qryAllocs.Close;
  qrySundryType.Close;
end;

procedure TfrmAccountNew.tbDescExit(Sender: TObject);
begin
  Quickcode(tbDesc);
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmAccountNew.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(tbDesc);
end;

procedure TfrmAccountNew.dbgrLedgerKeyPress(Sender: TObject;
  var Key: Char);
var
  sType : string;
begin
{  if Key = #13 then
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
  end;   }

end;

procedure TfrmAccountNew.FormCreate(Sender: TObject);
begin
   AllocType := '';
   DefaultTax :=  get_default_gst('CreditorInvoice');
   if DefaultTax = '' then
      DefaultTax := dmAxiom.DefaultTax;
   lblUnallocatedMsg.Visible := dmAxiom.Security.Invoice.ForceTally;
   lblUnallocated.Visible := dmAxiom.Security.Invoice.ForceTally;
   FRefno := '';
{  with qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT CODE FROM TAXTYPE ORDER BY CODE';
    Open;
    while not EOF do
    begin
      dbgrLedger.Columns[colTAXCODE].PickList.Add(FieldByName('CODE').AsString);

      Next;
    end;
  end;  }
   FRefContinue := True;
   qrySundryType.Open;
   qryTaxCodes.Open;
   qryLedger.open;
   qryLedger.Insert;
end;

procedure TfrmAccountNew.qryLedgerTAXCODEChange(Sender: TField);
begin
   qryLedger.FieldByName('WITHHOLD').AsString := TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'WITHHOLDING');
   CalcTax;
end;

procedure TfrmAccountNew.qryLedgerAMOUNTChange(Sender: TField);
begin
   CalcTax;
end;

procedure TfrmAccountNew.CalcTax;
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

procedure TfrmAccountNew.neAmountExit(Sender: TObject);
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

procedure TfrmAccountNew.tbRefnoExit(Sender: TObject);
begin
   with qryRefnoCheck do
   begin
      Close;
      ParamByName('NCREDITOR').AsInteger := NCreditor;
      ParamByName('REFNO').AsString := tbRefno.text;
      Open;
      if not IsEmpty then
         FRefContinue := MsgAsk('There is already an Invoice entered for this Creditor with reference: ' + tbRefno.text + #13 + #13 + 'Do you want to continue?') = mrYes;
      Close;
      if not FRefContinue then
         tbRefno.Clear;
  end;
//  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmAccountNew.dtpDateChange(Sender: TObject);
begin
  dtpDueDate.Date := dtpDate.Date + TableInteger('CREDITOR', 'SEARCH', lblCreditor.Caption, 'CREDIT_TERMS');
  dtpPayDate.Date := DateBusinessCalc(dtpDueDate.Date, -2);
end;

procedure TfrmAccountNew.qryLedgerBeforeScroll(DataSet: TDataSet);
begin
  AllocType := qryLedger.FieldByName('TYPE').AsString;
end;

function TfrmAccountNew.GetCreditorTerms(aCreditorNum: Integer): Integer;
{
 Returns the payment terms stored for a given creditor.
 If a value cannot be found, this value defaults to 30 days.
}
var
  qryCreditorTerms: TUniQuery;
begin
  // set up default terms
  result:= 30;

  qryCreditorTerms:= TUniQuery.Create(self);
  qryCreditorTerms.Connection:= dmAxiom.uniInsight;
  try
    qryCreditorTerms.SQL.Clear;
    qryCreditorTerms.SQL.Add('SELECT CREDIT_TERMS FROM CREDITOR');
    qryCreditorTerms.SQL.Add('WHERE NCREDITOR = :NCREDITOR');
    qryCreditorTerms.ParamByName('NCREDITOR').AsInteger:= aCreditorNum;
    qryCreditorTerms.Open;
    if not qryCreditorTerms.FieldByName('CREDIT_TERMS').IsNull then
      result:= qryCreditorTerms.FieldByName('CREDIT_TERMS').AsInteger
  finally
    qryCreditorTerms.Close;
    qryCreditorTerms.Free
  end
end;

procedure TfrmAccountNew.qryLedgerBeforeInsert(DataSet: TDataSet);
begin
//  if (qryLedger.FieldByName('TAXCODE').AsString <> '') then
//    DefaultTax := qryLedger.FieldByName('TAXCODE').AsString;
end;

procedure TfrmAccountNew.SetDefaultTaxType;
var
   defaultLedgerTaxCode : String;
begin
   defaultLedgerTaxCode := LedgerString(tvLedgerREFNO.DataBinding.Field.Text, 'DEFAULT_TAXCODE');

   if defaultLedgerTaxCode <> '' then
      qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode
   else
      qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
end;

procedure TfrmAccountNew.cxGrid1DBTableView1REFNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   ErrorMessage: string;
   defaultLedgerTaxCode : String;
begin
    if tvLedgerTYPE.DataBinding.Field.Text  = 'Matter' then
    begin
      if not FormExists(frmMatterSearch) then
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
    if tvLedgerTYPE.DataBinding.Field.Text = 'Ledger' then
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

        defaultLedgerTaxCode := LedgerComponentString(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString, 'DEFAULT_TAXCODE');

        if defaultLedgerTaxCode <> '' then
          qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode
        else
          qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
      end;
    end;
end;

procedure TfrmAccountNew.tvLedgerREFNOPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   glInstance : TglComponentInstance ;
   ErrorMessage: string;
   defaultLedgerTaxCode : String;
begin
   if not qryLedger.Modified then
      qryLedger.Edit;

   if tvLedgerTYPE.DataBinding.Field.Text = 'Matter' then
   begin
      if IsValidMatterForEntity(string(DisplayValue)) then
      begin
         if (IsMatterArchived(string(DisplayValue))) then
         begin
            ErrorText := 'You may not enter transaction for a matter that is archived.';
            Error := True;
         end
         else
         begin
            if qryLedger.State = dsBrowse then
               qryLedger.Edit;
            qryLedger.FieldByName('REFNO').AsString := DisplayValue;
            qryLedger.FieldByName('LONGDESC').AsString := MatterString(string(DisplayValue),'TITLE');
         end;
      end
      else
      begin
         ErrorText := ErrorMessage;
         Error := True;
	   end;
   end;

   if tvLedgerTYPE.DataBinding.Field.Text = 'Ledger' then
   begin
      // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(DisplayValue,true);

      if not glInstance.valid then
      begin
         glInstance.displayError;
         qryLedger.FieldByName('REFNO').AsString := '';
         qryLedger.FieldByName('LONGDESC').AsString := '';
         glInstance.free;
         exit;
      end
      else
      begin
        DisplayValue := glInstance.fullCode;
        qryLedger.FieldByName('REFNO').AsString := glInstance.fullCode;
        qryLedger.FieldByName('LONGDESC').AsString := TableString('CHART','COMPONENT_CODE_DISPLAY',String(DisplayValue),'DESCR');
      end;

      defaultLedgerTaxCode := LedgerComponentString(String(DisplayValue), 'DEFAULT_TAXCODE');

      if defaultLedgerTaxCode <> '' then
          qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode
      else
          qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;

      if not AllowDirectPost(glInstance.ledgerkey) then
      begin
          ErrorText := 'You may not post to ledger Reference #' + DisplayValue;
          Error := True;
      end;
      glInstance.free;
   end;
end;

procedure TfrmAccountNew.cxGrid1Exit(Sender: TObject);
begin
   UpdateTotal;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmAccountNew.tvLedgerAMOUNTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if qryLedger.State = dsBrowse then
      qryLedger.Edit;
   qryLedger.FieldByName('AMOUNT').AsCurrency := DisplayValue;
   UpdateTotal;
end;

procedure TfrmAccountNew.dbgrLedgerEnter(Sender: TObject);
begin
   if (qryLedger.State <> dsEdit) or (qryLedger.State <> dsInsert) then
      qryLedger.Edit;
   qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
end;

procedure TfrmAccountNew.EnforceCustomDateEdit1PropertiesChange(
  Sender: TObject);
begin
   dtpDueDate.Date := dtpDate.Date + TableInteger('CREDITOR', 'SEARCH', lblCreditor.Caption, 'CREDIT_TERMS');
   dtpPayDate.Date := DateBusinessCalc(dtpDueDate.Date, -2);
end;

procedure TfrmAccountNew.tvLedgerDataControllerDataChanged(
  Sender: TObject);
begin
//   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmAccountNew.btnAddAttachmentClick(Sender: TObject);
var
   sFileName: string;
  iPos: integer;
  bStream, fStream: TStream;
begin
//   if Save then
//   begin
      if not dlFile.Execute then
         exit;

      Inv_Copy_Path := dlFile.FileName;

{      try
         if (not qryLedger.fieldByname('invoice_copy').IsNull) then
            if MsgAsk('There is an Invoice already attached. Do you want to continue?') = mrNo then
               Exit;

         qryLedger.fieldByname('invoice_copy').Clear;
    // check the document
         qryLedger.FieldByName('INVOICE_COPY_EXT').AsString := Copy(ExtractFileExt(sFileName),2,3);
         bStream := qryLedger.CreateBlobStream(qryLedger.FieldByName('INVOICE_COPY') , bmReadWrite);
         fStream := TFileStream.Create(sFileName, fmOpenRead);
         bStream.CopyFrom(fStream, fStream.Size);

      except
         Raise;
      end;
      bStream.free;
      fStream.free;    }
//   end;
end;

procedure TfrmAccountNew.BitBtn1Click(Sender: TObject);
begin
   dxComponentPrinterAccPayable.Preview;
end;

procedure TfrmAccountNew.btnAcquireDocClick(Sender: TObject);
var
   frmInvScan: TfrmInvScan;
begin
   try
      frmInvScan := TfrmInvScan.Create(Self,qryAccount.fieldByname('NINVOICE').AsInteger);
      frmInvScan.ShowModal;
      frmInvScan.Free;
   finally
//      qryAccounts.Refresh;
   end;

{var
  SourceIndex: Integer;
  Source: TTwainSource;
begin
   //Make sure that the library and Source Manager
   //are loaded
   DelphiTwain1.LibraryLoaded := TRUE;
   DelphiTwain1.SourceManagerLoaded := TRUE;
   //SelectSource method displays a common Twain dialog
   //to allow the user to select one of the avaliable
   //sources and returns it's index or -1 if either
   //the user pressed Cancel or if there were no sources
   SourceIndex := DelphiTwain1.SelectSource();
   if (SourceIndex <> -1) then
   begin
      //Now that we know the index of the source, we'll
      //get the object for this source
      Source := DelphiTwain1.Source[SourceIndex];
      //Load source and acquire image
      Source.Loaded := TRUE;
      Source.Enabled := TRUE;
   end; {if (SourceIndex <> -1)}
end;                              

procedure TfrmAccountNew.tvLedgerInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
begin
   if qryLedger.State = dsBrowse then
      qryLedger.Edit;
end;

end.

