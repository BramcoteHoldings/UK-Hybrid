unit ReceiptReqNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  NumberEdit,  OracleUniProvider, Uni, DBAccess, MemDS, DateTimeAccount,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxCore, cxDateUtils, cxGridCustomPopupMenu, cxGridPopupMenu, cxStyles,
  cxClasses, cxDropDownEdit, cxCalendar, EnforceCustomDateEdit, dxStatusBar,
  cxMaskEdit, cxButtonEdit, cxTextEdit, cxCurrencyEdit, cxCheckBox, Variants,
  VCL.Themes, DateUtils, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxBarBuiltInMenu, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxMemo, cxLabel, cxDBEdit;

const
  colTYPE = 0;
  colREFNO = 1;
  colLONGDESC = 2;
  colREASON = 3;
  colCREDIT = 4;

  pnlCREDITORS = 0;
  pnlDEBTORS = 1;
  pnlTRUST = 2;
  pnlFEES = 3;
  pnlDISB = 4;
  pnlANTD = 5;
  pnlSUND = 6;

  CM_SHOWNEDITOR = WM_APP + 402;

type
  EInvalidBill = class(Exception);

  EImbalancedAllocation = class(Exception);

  EInvalidMatter = class(Exception);

  EInvalidMatterBank = class(Exception);

  TfrmReceiptReqNew = class(TForm)
    lblBankName: TLabel;
    lblTotal: TLabel;
    qryReceiptReq: TUniQuery;
    qryBanks: TUniQuery;
    qryMatters: TUniQuery;
    qryTmp: TUniQuery;
    qryCheqNCheqReq: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    chkPrint: TcxCheckBox;
    chkNoExit: TcxCheckBox;
    neAmount: TcxCurrencyEdit;
    tbPayee: TcxButtonEdit;
    cbBank: TcxComboBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    styTrustOD: TcxStyle;
    styFooter: TcxStyle;
    sbarBalances: TdxStatusBar;
    dtpDate: TEnforceCustomDateEdit;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    tbFile: TcxButtonEdit;
    lblClient: TLabel;
    lblMatterDescr: TLabel;
    cmbReqBy: TcxLookupComboBox;
    qryReqEmployee: TUniQuery;
    dsReqEmployee: TUniDataSource;
    chkSourceOk: TcxCheckBox;
    teReference: TcxTextEdit;
    beDocument: TcxButtonEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    memoNotes: TcxMemo;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    beSourceofFunds: TcxButtonEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    lblAuthorisedBy: TcxLabel;
    FileOpenDialog: TFileOpenDialog;
    cxLabel1: TcxLabel;
    dxLayoutItem20: TdxLayoutItem;
    tbDesc: TcxButtonEdit;
    dxLayoutGroup6: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure btnPhoneBookClick(Sender: TObject);
    procedure tbPayeeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbPayeeExit(Sender: TObject);
    procedure neAmountExit(Sender: TObject);
    procedure tbRcptnoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure cbBankChange(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure Label12DblClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    function GetEntity(sMatterNo: string): string;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actOkUpdate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure tvLedgerCREDITPropertiesChange(Sender: TObject);
    procedure tvLedgerDataControllerDataChanged(Sender: TObject);
    procedure dtpDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tbFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbBankPropertiesCloseUp(Sender: TObject);
    procedure qryReceiptReqNewRecord(DataSet: TDataSet);
    procedure beDocumentPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure teReferencePropertiesChange(Sender: TObject);
    procedure beDocumentPropertiesChange(Sender: TObject);
    procedure memoNotesPropertiesChange(Sender: TObject);
    procedure chkSourceOkPropertiesChange(Sender: TObject);
    procedure beSourceofFundsPropertiesChange(Sender: TObject);
    procedure cmbReqByPropertiesChange(Sender: TObject);
    procedure beSourceofFundsPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tbDescPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  protected
    procedure CmShownEditor(var Msg: TMessage); message CM_SHOWNEDITOR;
  private
    { Private declarations }

    bUpdateStatus       : Boolean;
    bTrustTrans         : Boolean;
    TotalAmt            : Currency;
    DefaultDescr        : String;
    AllocType           : String;
    DefaultTax          : String;
    sNName              : String;
    sPayee              : String;
    sCheque             : String;
    fsMatter            : String;
    FFileId             : string;
    bAutoReceiptMatter  : Boolean;
    KillForm            : Boolean;
    FFromMatter         : Boolean;
    fsCheqreqList       : TStringList;
    foMatterTotals      : TStringList;
    foMultipleMatters   : TStringList;
    foBillsTotal        : TStringList;

    FBank               : string;

    FCreditorTotal      : currency;

    FSelected: boolean;
    bEditing: boolean;
    FNReceiptReq: integer;
    FMatter: integer;

    procedure UpdateTotal;
    procedure FindBank;

    function  OKtoPost(bShowError: boolean): Boolean;
    function  CheckReceipt(inreceipt : integer) : integer;
    function  IsValidMatterForAccount(sRefNo : String; var lsMessage: string; bFromValidate: boolean = False) : Boolean;
    procedure PopulatePaymentType;
    procedure PopulateReqList(AFileID: string);
    procedure PopulateForm(ANReceiptReq: integer);
    property ReceiptReqNum: integer read FNReceiptReq write FNReceiptReq;
  public
    { Public declarations }

    Created: boolean;
    property FromMatter: boolean read FFromMatter write FFromMatter;
    property NMatter: integer read FMatter write FMatter;
    procedure ReceiptFromReceipts;
    procedure AutoReceiptMatter(FileID: string; Bank: string = '');
    procedure DisplayFile(sFile : string; ANReceiptReq: integer = 0);
  end;

var
  frmReceiptReqNew: TfrmReceiptReqNew;

implementation

uses
  AxiomData,  Matters, MSearch, MiscFunc, LSearch, NSearch,
  Desktop, citfunc, cxGridDBDataDefinitions,
  cxLookupDBGrid, CheqImport, Vcl.Styles.FormStyleHooks,
  MatterNew, GenericSearch;

{$R *.DFM}


procedure TfrmReceiptReqNew.FormShow(Sender: TObject);
var
  sBank : string;
begin
   dtpDate.Properties.MaxDate := Today;
   Screen.Cursor := crSQLWait;
   if not Created then
   begin
      try
         dtpDate.Properties.OnChange := nil;
         AddBanks(cbBank, 'T');

         cbBank.ItemIndex := cbBank.Properties.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
         cbBank.OnClick(Self);
         cbBank.Properties.OnCloseUp(Self);

         TotalAmt := 0;

         dtpDate.Date := Today;

         dtpDate.EnforceLock := not dmAxiom.Security.PriorPeriodTransactions.Post;
      finally
         cbBank.ItemIndex := 0;
         tbPayee.SetFocus;
         Created := True;
      end;
   end;
   Self.Update;
   Self.Repaint;
   Screen.Cursor := crDefault;
end;

procedure TfrmReceiptReqNew.ReceiptFromReceipts;
begin
   KillForm := True;
end;

procedure TfrmReceiptReqNew.cbBankClick(Sender: TObject);
begin
   FindBank;

   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cbBank.Text);//set
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

//   Self.Color := BankColour(cbBank.Text);
   if not qryBanks.IsEmpty then
   begin
      lblBankName.Caption := qryBanks.FieldByName('NAME').AsString;
   end;
end;

procedure TfrmReceiptReqNew.cbBankPropertiesCloseUp(Sender: TObject);
begin
   if (FBank <> cbBank.Text) then
   begin
      FBank := cbBank.Text;
   end;
end;

procedure TfrmReceiptReqNew.FindBank;
begin
  with qryBanks do
  begin
    Close;
    ParamByName('P_Acct').AsString := cbBank.Text;
    Open;
  end;
end;

function TfrmReceiptReqNew.OKtoPost(bShowError : boolean) : Boolean;
var
  sTmp : String;
  bOKtoPost : boolean;
  i: integer;
begin
   bOKtoPost := True;
   sTmp := '';
   try
      if (not VarIsNull(neAmount.EditValue)) then
      begin
         if (neAmount.EditValue = 0) then
            sTmp := sTmp + '       Receipt Requisition is not fully allocated. Amount allocated is ' + CurrToStr(TotalAmt) + #13;
      end;
   except
      //
   end;

   if (MatterString(NMatter, 'SOURCEOFFUNDSVERIFIED') = 'N') then
      sTmp := sTmp + '       This matter does not have "Source of funds" verified. You cannot create this transaction.' + Chr(13);

   if cbBank.Text = '' then
      sTmp := sTmp + '       Bank Account Code' + Chr(13);

   if tbPayee.Text = '' then
      sTmp := sTmp + '       Payor' + Chr(13);

   if tbDesc.Text = '' then
      sTmp := sTmp + '       Description' + Chr(13);

   if cmbReqBy.Text = '' then
      sTmp := sTmp + '       Req By' + Chr(13);

   if sTmp <> '' then
   begin
      if bShowError then
         MsgErr('Please complete the following Receipt details before posting:    ' + Chr(13) + Chr(13) + sTmp);
      bOKtoPost := False;
   end;

   OKtoPost := bOKtoPost;
end;

function  TfrmReceiptReqNew.CheckReceipt(inreceipt : integer) : integer;
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
      iret := GetSequenceNumber('SQNC_NRECEIPT');  //GetSeqnum('NRECEIPT');
   end;
   CheckReceipt := iret;
end;

procedure TfrmReceiptReqNew.chkSourceOkPropertiesChange(Sender: TObject);
begin
   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.cmbReqByPropertiesChange(Sender: TObject);
begin
   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.AutoReceiptMatter(FileID: string; Bank: string = '');
var
    sTrust : String;
begin
   // This procedure sets up a receipt Automagically from a FileID supplied
   Screen.Cursor := crSQLWait;
   Created := True;
   qryMatters.Close;
   qryMatters.ParamByName('P_File').AsString := FileID;
   qryMatters.Open;
   if (not qryMatters.IsEmpty) then
   begin
      FFileId := FileID;
      PopulateReqList(FFileId);
      if Bank <> '' then
      begin
        cbBank.EditValue := Bank;
        cbBank.Text := Bank;
      end
      else
        cbBank.ItemIndex := cbBank.Properties.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
      cbBankClick(Self);

      sTrust := TableString('BANK','ACCT',Bank,'TRUST');

      bAutoReceiptMatter := True;

      if Self.Visible then
      begin
         if tbDesc.Visible then
            tbDesc.SetFocus;
      end;
   end;
   qryMatters.Close;
   Screen.Cursor := crDefault;
end;

procedure TfrmReceiptReqNew.beDocumentPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if FileOpenDialog.Execute then
      beDocument.Text := FileOpenDialog.FileName;
end;

procedure TfrmReceiptReqNew.beDocumentPropertiesChange(Sender: TObject);
begin
   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.beSourceofFundsPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  LfrmMatterNew: TfrmMatterNew;
begin
   if (tbFile.Text <> '') then
   begin
      try
         LfrmMatterNew := TfrmMatterNew.Create(Self);
         LfrmMatterNew.FromDisplayMatter := True;
         LfrmMatterNew.MatterDisplay(NMATTER);
         if LfrmMatterNew.ShowModal = mrOK then
         begin
            beSourceofFunds.Text := LfrmMatterNew.qryMatter.FieldByName('SOURCE_OF_FUNDS_TXT').AsString;
         end;
      finally
         FreeAndNil(LfrmMatterNew);
      end;
   end;
end;

procedure TfrmReceiptReqNew.beSourceofFundsPropertiesChange(Sender: TObject);
begin
   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.BitBtn1Click(Sender: TObject);
var
   bProceed,
   bPostingFailed: boolean;
   iCtr: integer;
   bFormUpdated: boolean;
   cBalance, cAllocAmnt : Currency;
   nAccount, i, Row, TempCheqReq, nListRow: integer;
   bNegReceipt,
   bBankDep: boolean;
   cAmt,
   cTax: Currency;
   GLDefaultTaxCode,
   AValue,
   sSQL, sSQLWhere,
   sCreditChart, sBank,
   lsMessage, ErrorMessage,
   lSourceOk: string;
   FeeDistCount, TotalFeeDistCount: integer;
begin
   if OkToPost(True) then
   begin
      try
         with qryReceiptReq do
         begin

            if bEditing = True then
            begin
               ParamByName('NRECEIPTREQ').AsInteger := ReceiptReqNum;
               Open;
               Edit;
            end
            else
            begin
               Open;
               Insert;
            end;

            FieldByName('exp_date').AsDateTime := dtpDate.Date;
            FieldByName('BANK').AsString := cbBank.Text;
            FieldByName('FILEID').AsString := tbFile.Text;
            FieldByName('NMATTER').AsInteger := StrToInt(MatterString(tbFile.Text, 'NMATTER'));
            FieldByName('DESCR').AsString := tbDesc.Text;
            FieldByName('AMOUNT').AsCurrency := neAmount.Value;
            FieldByName('PAYOR').AsString := tbPayee.Text;
            FieldByName('who').AsString := cmbReqBy.EditValue;
            lSourceOk := 'N';
            if chkSourceOk.Checked = True then
               lSourceOk := 'Y';
            FieldByName('SOURCE_OF_FUNDS_OK').AsString := lSourceOk;
            if sNName <> '' then
               FieldByName('NNAME').AsString := sNName;
            if memoNotes.Text <> '' then
               FieldByName('NOTES').AsString := memoNotes.Text;
            if beDocument.Text <> '' then
               FieldByName('DOCUMENT').AsString := beDocument.Text;
            if beSourceofFunds.Text <> '' then
               FieldByName('SOURCE_OF_FUNDS_DTLS').AsString := beSourceofFunds.Text;
            if teReference.Text <> '' then
               FieldByName('REFERENCE').AsString := teReference.Text;
            if memoNotes.Text <> '' then
               FieldByName('NOTES').AsString := memoNotes.Text;
            if beDocument.Text <> '' then
               FieldByName('DOCUMENT').AsString := beDocument.Text;
            FieldByName('TRUST').AsString := 'T';
            if VarIsNull(cmbReqBy.EditValue) = False then
               FieldByName('REQBY').AsString := cmbReqBy.EditValue;
            Post;
         end;
      finally
         qryReceiptReq.Close;
         if (chkNoExit.Checked) then
         begin
            tbDesc.Text := '';
            tbPayee.Text := '';
            tbFile.Text := '';
            neAmount.Value := 0;
            bEditing := False;
         end
         else
            Close;
      end;
   end;
end;

procedure TfrmReceiptReqNew.btnCancelClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmReceiptReqNew.UpdateTotal;
var
//  bmPrevRecord: TBookmark;
  Unallocated: Currency;
  Row: integer;
begin
   bUpdateStatus := False;
   TotalAmt := 0;			{ use temp for efficiency }
   lblTotal.Caption := Format('%m', [TotalAmt]);

   if (neAmount.EditValue <> 0) or dmAxiom.Security.Receipt.ForceTally then
   begin
      Unallocated := neAmount.EditValue - TotalAmt; //Format('%m', [neAmount.EditValue - TotalAmt]);
   end;
   btnOk.Enabled := OKtoPost(False);
   bUpdateStatus := True;
//   TotalAmt := 0;
end;


procedure TfrmReceiptReqNew.qryLedgerAfterDelete(DataSet: TDataSet);
begin
//   UpdateTotal;
end;

procedure TfrmReceiptReqNew.qryLedgerAfterPost(DataSet: TDataSet);
begin
//   UpdateTotal;
end;

procedure TfrmReceiptReqNew.btnPhoneBookClick(Sender: TObject);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      sPayee := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      sNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsString;
      tbDesc.SetFocus;
   end;
end;

procedure TfrmReceiptReqNew.tbPayeeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    QuickCode(Sender);
end;

procedure TfrmReceiptReqNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SettingSave('RECEIPT', 'BANK', cbBank.Text);

   qryReceiptReq.Close;
   qryMatters.Close;

   FreeAndNil(foMatterTotals);
   FreeAndNil(foMultipleMatters);
   FreeAndNil(foBillsTotal);
   FreeAndNil(fsCheqreqList);

   if (frmDesktop.pagMainControl.ActivePageIndex = 1) then
      Action := caFree
   else if KillForm then
      Action := caFree
   else
   begin
//      RemoveFromDesktop(Self);
      Action := caFree;
   end;
   TFormStyleHookBackground.BackGroundSettings.Color := clBtnFace;//set
end;

procedure TfrmReceiptReqNew.tbDescPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   LfrmGenericSearch: TfrmGenericSearch;
begin
   try
      LfrmGenericSearch := TfrmGenericSearch.Create(Self);
      with LfrmGenericSearch do
      begin
         SQL := 'SELECT narrativecode as Code, DESCR FROM narrative ORDER BY descr';
         SearchField := sfDescription;
         if ShowModal = mrOK then
         begin
            tbDesc.Text := qrySource.FieldByName('DESCR').AsString;
         end;
      end;
   finally
      LfrmGenericSearch.Free;
   end;
end;

procedure TfrmReceiptReqNew.tbFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      if IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
      begin
         MsgErr('A new receipt requisition cannot be created for this matter. '+
                'This matter is Archived.');
         tbFile.Text := '';
      end
      else
      begin
         NMatter := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
         DisplayFile(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
         PopulateReqList(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
      end;
   end;
end;

procedure TfrmReceiptReqNew.tbPayeeExit(Sender: TObject);
begin
  Quickcode(Sender);
  btnOk.Enabled := OKtoPost(False);
  if DefaultDescr = '' then
     DefaultDescr := tbDesc.Text;
end;

procedure TfrmReceiptReqNew.neAmountExit(Sender: TObject);
begin
  if (neAmount.EditValue = 0) and not dmAxiom.Security.Receipt.ForceTally then
  begin
//    lblUnallocatedMsg.Visible := False;
//    lblUnallocated.Visible := False;
  end
  else
  begin
//    lblUnallocatedMsg.Visible := True;
//    lblUnallocated.Visible := True;
  end;
//  UpdateTotal;
  btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.tbRcptnoExit(Sender: TObject);
begin
  btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.teReferencePropertiesChange(Sender: TObject);
begin
   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.FormCreate(Sender: TObject);
var
  sBank : string;
begin
   sNName:='';
   sPayee:='';
   bTrustTrans := False;
   AllocType := '';
   DefaultDescr := '';
   neAmount.EditValue := 0;
   FFileId := '';
   KillForm := False;

   FSelected := False;

   Screen.Cursor := crSQLWait;

   DefaultTax := get_default_gst('Receipt');
   if DefaultTax = '' then
      DefaultTax := 'NOTAX';
   //rb
//  qryMatterTotals.SQL.Text := SQL_MATTER;
   bUpdateStatus := True;
   AddBanks(cbBank, 'T');

   foMatterTotals := TStringList.Create;
   foMultipleMatters := TStringList.Create;
   foBillsTotal := TStringList.Create;

   Created := False;
   bEditing := False;
   Screen.Cursor := crDefault;
end;

procedure TfrmReceiptReqNew.dbgrLedgerEnter(Sender: TObject);
begin
  if DefaultDescr = '' then
    DefaultDescr := tbDesc.Text;
end;


procedure TfrmReceiptReqNew.cbBankChange(Sender: TObject);
begin
   // this is to stop the qryledger being reset during a trust transfer
end;

procedure TfrmReceiptReqNew.qryReceiptReqNewRecord(DataSet: TDataSet);
begin
   Dataset.FieldByName('NRECEIPTREQ').AsInteger := GetSequenceNumber('sqnc_nreceiptreq');
end;

procedure TfrmReceiptReqNew.btnQueryClick(Sender: TObject);
begin
   ActiveSmartQuery(self);
end;

procedure TfrmReceiptReqNew.Label12DblClick(Sender: TObject);
begin
   ActiveSmartQuery(self);
end;

procedure TfrmReceiptReqNew.memoNotesPropertiesChange(Sender: TObject);
begin
   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.btnImportClick(Sender: TObject);
var
   sNCheque : string;
   sDesc : String;
   frmChequeImport: TfrmChequeImport;
   bChequeFound: boolean;
begin
   bChequeFound := True;
end;

function TfrmReceiptReqNew.IsValidMatterForAccount(sRefNo: string; var lsMessage: string; bFromValidate: boolean) : Boolean;
var
   lsAcct    : String;
begin
   Result := TRUE;
   if (IsTrustAccount(cbBank.Text)) then
   begin
      lsAcct := MatterString(sRefNo, 'ACCT');
      if (lsAcct <> cbBank.Text) then
      begin
         lsMessage := 'You cannot post a receipt against a matter (' +
                      sRefNo + ') with a' + #13 + #10 +
                      'trust bank account (' + lsAcct + ') different to the selected trust account (' +
                      cbBank.Text + ').';

         if bFromValidate then
            lsMessage := lsMessage  + #13 + #10 + 'Press the Esc key to cancel.';
         Result := False;
      end;
   end;
end;

function TfrmReceiptReqNew.GetEntity(sMatterNo: string): string;
var
  loQry : TUniQuery;
begin
  loQry := nil;

  try
    loQry := TUniQuery.Create(nil);
    loQry.Connection := dmAxiom.uniInsight;

    loQry.Close;
    loQry.SQL.Clear;
    loQry.SQL.Add('SELECT ENTITY');
    loQry.SQL.Add('FROM MATTER ');
    loQry.SQL.Add('WHERE NMATTER = :MatterNo ');
    loQry.Params[0].AsString := sMatterNo;
    loQry.Open;

    Result := (loQry.FieldByName('ENTITY').AsString);
  finally
    loQry.Close;
    FreeAndNil(loQry);
  end;    //  end try-finally
end;

procedure TfrmReceiptReqNew.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Screen.Cursor := crHourGlass;
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      sPayee := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      tbPayee.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString;
      sNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsString;
      tbDesc.SetFocus;
   end;
   screen.Cursor := crDefault;
end;

procedure TfrmReceiptReqNew.actOkUpdate(Sender: TObject);
begin
   btnOk.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.actCancelExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmReceiptReqNew.CmShownEditor(var Msg: TMessage);
begin
  if TObject(Msg.WParam) is TcxCustomEdit then
    TcxCustomEdit(Msg.WParam).ModifiedAfterEnter := True;
end;

procedure TfrmReceiptReqNew.tvLedgerCREDITPropertiesChange(Sender: TObject);
begin
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.PopulatePaymentType;
begin

end;

procedure TfrmReceiptReqNew.tvLedgerDataControllerDataChanged(Sender: TObject);
begin
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmReceiptReqNew.dtpDatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if DisplayValue > TcxDateEdit(Sender).Properties.MaxDate  then
      DisplayValue := DateToStr(TcxDateEdit(Sender).Properties.MaxDate);
end;

procedure TfrmReceiptReqNew.DisplayFile(sFile : string; ANReceiptReq: integer);
begin
   tbFile.Text := sFile;
   lblClient.Caption := MatterString(sFile, 'TITLE');
   lblMatterDescr.Caption := MatterString(sFile, 'SHORTDESCR');
   cbBank.Text := MatterString(sFile, 'ACCT');
   if (ANReceiptReq > 0) then
      PopulateForm(ANReceiptReq);
   PopulateReqList(sFile);
end;

procedure TfrmReceiptReqNew.PopulateReqList(AFileID: string);
begin
   with qryReqEmployee do
   begin
      Close;
      ParamByName('NMATTER').AsInteger := StrToInt(MatterString(AFileID, 'NMATTER'));
      ParamByName('defaultentity').AsString := dmAxiom.EmpEntity;
      ParamByName('AUTHOR').AsString := dmAxiom.UserID;
      Open;
   end;
end;

procedure TfrmReceiptReqNew.PopulateForm(ANReceiptReq: integer);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'SELECT R.exp_date, r.descr, r.amount, r.fileid, r.nname, '+
                  'r.bank, r.payor, r.nmatter, r.who, r.SOURCE_OF_FUNDS_OK, r.NRECEIPTREQ, R.REFERENCE, '+
                  'R.NOTES, R.DOCUMENT, R.SOURCE_OF_FUNDS_DTLS, R.AUTHORISED_BY '+
                  'FROM RECEIPT_REQ R WHERE NRECEIPTREQ = :NRECEIPTREQ ';
      ParamByName('NRECEIPTREQ').AsInteger := ANReceiptReq;
      Open;
      dtpDate.Date         := FieldByName('EXP_DATE').AsDateTime;
      cbBank.Text          := FieldByName('BANK').AsString ;
      tbFile.Text          := FieldByName('FILEID').AsString ;

      tbDesc.Text          := FieldByName('DESCR').AsString ;
      neAmount.Value       := FieldByName('AMOUNT').AsCurrency ;
      tbPayee.Text         := FieldByName('PAYOR').AsString ;
      cmbReqBy.EditValue   := FieldByName('who').AsString ;
      chkSourceOk.Checked  := FieldByName('SOURCE_OF_FUNDS_OK').AsString  = 'Y';
      ReceiptReqNum        := ANReceiptReq;
      teReference.Text     := FieldByName('REFERENCE').AsString ;
      memonotes.Text       := FieldByName('notes').AsString ;
      beDocument.Text      := FieldByName('DOCUMENT').AsString;
      bEditing             := True;
   end;
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmReceiptReqNew, TFormStyleHookBackground);

finalization
//   TStyleManager.Engine.UnRegisterStyleHook(TfrmReceipt, TFormStyleHookBackground);

end.





