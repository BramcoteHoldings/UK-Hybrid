unit Journal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  citfunc,ExtCtrls, OracleUniProvider, Uni, DBAccess, MemDS, DateTimeAccount,
  GeneralLedgerObject, variants, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxTextEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxCurrencyEdit, cxGridCustomPopupMenu, cxGridPopupMenu, cxDropDownEdit,
  cxLabel, cxContainer, cxLookAndFeelPainters, cxCheckBox, cxButtons,
  cxMaskEdit, cxGroupBox, cxLookAndFeels, cxCalendar, EnforceCustomDateEdit,
  dxCore, cxNavigator, cxDateUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  dxDateRanges;

const
  colREFNO    = 0;
  colLONGDESC = 1;
  colREASON   = 2;
  colDEBIT    = 3;
  colCREDIT   = 4;
  colTAXCODE  = 5;
  colTAX      = 6;

type
  EPostError = class(Exception);

  TImportFile = array of array of string;

  TfrmJournal = class(TForm)
    Label2: TLabel;
    Label8: TLabel;
    dsJournal: TDataSource;
    lblAmountMsg: TLabel;
    qryJournal: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    lblTotalCredit: TLabel;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qryLedgerREFNO: TStringField;
    qryLedgerLONGDESC: TStringField;
    qryLedgerREASON: TStringField;
    qryLedgerDEBIT: TFloatField;
    qryLedgerCREDIT: TFloatField;
    qryLedgerROWID: TStringField;
    qryLedgerTAXCODE: TStringField;
    Label1: TLabel;
    lblTotalDebit: TLabel;
    Label3: TLabel;
    lblCreditBalance: TLabel;
    lblDebitBalance: TLabel;
    tbDesc: TEdit;
    qryLedgerTAX: TCurrencyField;
    lblDebitTax: TLabel;
    lblCreditTax: TLabel;
    Bevel1: TBevel;
    lblTaxTotal: TLabel;
    qryLedgerTYPE: TStringField;
    qryLedgerALLOW_DIRECT_POSTING: TStringField;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerLONGDESC: TcxGridDBColumn;
    tvLedgerREASON: TcxGridDBColumn;
    tvLedgerDEBIT: TcxGridDBColumn;
    tvLedgerCREDIT: TcxGridDBColumn;
    tvLedgerTAXCODE: TcxGridDBColumn;
    tvLedgerTAX: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    qryLedgerRCPTNO: TStringField;
    btnJournalSplit: TcxButton;
    ckbKeepOpen: TcxCheckBox;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    tvLedgerTYPE: TcxGridDBColumn;
    grpFileImport: TcxGroupBox;
    btnImport: TcxButton;
    cmbFileType: TcxComboBox;
    OpenDialog: TOpenDialog;
    cxLabel2: TcxLabel;
    tvLedgerCHART: TcxGridDBColumn;
    qryLedgerCHART: TStringField;
    dtpDate: TEnforceCustomDateEdit;
    Label4: TLabel;
    dfReference: TEdit;
    chkMarkRecurring: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure dbgrLedgerEditButtonClick(Sender: TObject);
    procedure dbgrLedgerColExit(Sender: TObject);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure qryLedgerDEBITChange(Sender: TField);
    procedure qryLedgerCREDITChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrLedgerColEnter(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryLedgerTAXCODEChange(Sender: TField);
    procedure qryLedgerBeforeInsert(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure tbDescExit(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnJournalSplitClick(Sender: TObject);
    procedure cxGrid1DBTableView1REFNOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1REFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1REASONPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1DEBITPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1CREDITPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1TAXPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure cmbFileTypePropertiesCloseUp(Sender: TObject);
    procedure cmbFileTypePropertiesChange(Sender: TObject);
  private
    DefaultTax   : String;

    foAdminTaxTypes    : TStringlist;
    foNonAdminTaxTypes : TStringlist;

    cTotalDebit  : Currency;
    cTotalCredit : Currency;
    fcBalance    : Currency;

    fbIsDebit    : Boolean;
    fbIsAdmin    : Boolean;
    fbIsJournalSplit : Boolean;

    fOnJournalFormClose : TNotifyEvent;

    procedure UpdateTotal;
    procedure CalcTax;
    procedure SaveJournalEntry;
    procedure ClearEntry;
    procedure SaveTaxAmount(iJournal : Integer; cAmt : Currency; sParent : String);

    procedure CheckAdminRights;
    procedure SetTaxTypesList;
    procedure SetDefaultTaxType;
    procedure ResetGridWith(oChartList : TStringList);

    function  OKtoPost : Boolean;
    function  IsDebit  : Boolean;
    function  IsIncome : Boolean;
    function  HasValidLedgerCodes : Boolean;
    function  IsIncomeOrExpense : Boolean;
    function  CreateGeneralLedgerObj : TGeneralLedgerObj;
    function  GLRecordsValid : Boolean;
    function  IsDirectPostingAllowed(oQuery : TUniQuery) : Boolean;

  public
    property OnJournalFormClose: TNotifyEvent read fOnJournalFormClose write fOnJournalFormClose;
    procedure UpdateDisplayTotals;
  end;

var
  frmJournal: TfrmJournal;


implementation

uses
  MiscFunc, AxiomData, LSearch, MSearch,glComponentUtil;

{$R *.DFM}


procedure TfrmJournal.FormShow(Sender: TObject);
begin
 {
   Added 25.10.2002 GG

   If the user does not have authority to post into a locked period, prevent
   them from changing the transaction date into the locked period
 }
   dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   // Create the Cheque entry - as we are using Cached Updates
   // this won't save until we explicitly ApplyUdates
   qryJournal.ParamByName('P_Acct').AsString := dmAxiom.Entity;
   qryJournal.ParamByName('P_NJournal').AsInteger := -1;
   qryJournal.Open;
   qryJournal.Insert;
   qryJournal.FieldByName('NJOURNAL').AsInteger := -1;

   qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;
   qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
   qryJournal.FieldByName('TYPE').AsString := 'PY';

   tbDesc.MaxLength := qryLedger.FieldByName('REASON').Size;

   qryLedger.Open;
   qryLedger.Insert;
   cTotalDebit := 0;
   cTotalCredit := 0;
   fcBalance := 0;

   if Self.Visible then
      tbDesc.SetFocus;
end;


procedure TfrmJournal.dbgrLedgerEditButtonClick(Sender: TObject);
var
  defaultLedgerTaxCode : String;
begin
 { if dbgrLedger.SelectedIndex = colREFNO then
  begin
  if not FormExists(frmLedgerSearch) then
    Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

    if frmLedgerSearch.ShowModal = mrOk then
    begin
      qryLedger.Edit;
      qryLedger.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      qryLedger.FieldByName('LONGDESC').AsString := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
      qryLedger.FieldByName('TYPE').AsString := frmLedgerSearch.qryLedgers.FieldByName('TYPE').AsString;
      //qryLedger.FieldByName('ALLOW_DIRECT_POSTING').AsString := frmLedgerSearch.qryLedgers.FieldByName('ALLOW_DIRECT_POSTING').AsString;

      if qryLedger.FieldByName('REASON').AsString = '' then
        qryLedger.FieldByName('REASON').AsString := tbDesc.Text;

      // Tony
      // 27/04/2004
      // Obtain default_taxcode (if any)
      defaultLedgerTaxCode := LedgerString(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString, 'DEFAULT_TAXCODE');

      if defaultLedgerTaxCode <> '' then
         qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode
      else
         qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
    end;

  end;  }

end;


procedure TfrmJournal.UpdateTotal;
var
  bmPrevRecord    : TBookmark;
begin
//  if DeletingItems then Exit;		{ don't calculate if deleting all items }
  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }

  try
    qryLedger.DisableControls;

    UpdateDisplayTotals;

  finally
     qryLedger.EnableControls;

     if bmPrevRecord <> nil then
     begin
       qryLedger.GoToBookmark(bmPrevRecord);
       qryLedger.FreeBookmark(bmPrevRecord);
     end;
  end;
end;



function TfrmJournal.OKtoPost : Boolean;
var
  sTmp      : String;
  bOKtoPost : Boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= True;

  sTmp := '';

  if tbDesc.Text = '' then
    sTmp := sTmp + '       Reason ' + Chr(13);

  if (fcBalance <> 0) then
    begin
      sTmp := sTmp + 'Debit allocations must equal Credit allocations' + Chr(13);
      Raise EPostError.Create('Please complete the following Journal details before posting:    ' + Chr(13) + Chr(13) + sTmp);
      bOKtoPost := False
    end
  else
    if (not HasValidLedgerCodes) then
      begin
        sTmp := sTmp + 'No valid Ledger Code Entered, please select a valid code.' + Chr(13);
        Raise EPostError.Create('Please complete the following Journal details before posting:    ' + Chr(13) + Chr(13) + sTmp);
        bOKtoPost := False
      end;    //  end if
  result:= bOKtoPost
end;


procedure TfrmJournal.dbgrLedgerColExit(Sender: TObject);
var
  defaultLedgerTaxCode : String;
begin
{  case dbgrLedger.SelectedIndex of
    colREFNO: // Display the long Description
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;

      if not AllowDirectPost(dbgrLedger.Columns.Items[colREFNO].Field.Text) then
      begin
         MsgErr('You may not post to ledger Reference #' + dbgrLedger.Columns.Items[colREFNO].Field.Text);
         dbgrLedger.Columns.Items[colREFNO].Field.Text := '';
      end
      else
         if not LedgerHead(dbgrLedger.Columns.Items[colREFNO].Field.Text) then
         begin
            qryLedger.FieldByName('LONGDESC').AsString := LedgerString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'REPORT_DESC');
            qryLedger.FieldByName('TYPE').AsString := LedgerString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'TYPE');
            SetTaxTypesList;
            if (not fbIsJournalSplit) then
               fbIsJournalSplit := IsJournalSplittingChart(qryLedger.FieldByName('REFNO').AsString, dmAxiom.Entity);
         end
         else
         begin
            MsgErr('You may not post to a header ledger');
            dbgrLedger.Columns.Items[colREFNO].Field.Text := '';
         end;
         SetDefaultTaxType;
    end;

    colREASON:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      QuickCode(dbgrLedger.Columns.Items[colREASON].Field);
    end;

    colDEBIT, colCREDIT : // update the total amount
      UpdateTotal;

    colTax:
      begin
        if (qryLedger.Modified) then
          UpdateDisplayTotals;
      end;
  end; }
end;


procedure TfrmJournal.dbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
end;


procedure TfrmJournal.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;


procedure TfrmJournal.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;


procedure TfrmJournal.qryLedgerDEBITChange(Sender: TField);
begin
  if qryLedger.FieldByName('DEBIT').AsCurrency <> 0 then
  begin
    qryLedger.FieldByName('CREDIT').AsCurrency := 0;
    CalcTax;
  end;    //  end if

end;

procedure TfrmJournal.qryLedgerCREDITChange(Sender: TField);
begin
  if qryLedger.FieldByName('CREDIT').AsCurrency <> 0 then
  begin
    qryLedger.FieldByName('DEBIT').AsCurrency := 0;
    CalcTax;
  end;    //  end if

end;

procedure TfrmJournal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryLedger.Close;
  qryJournal.Close;

  FreeAndNil(foAdminTaxTypes);
  FreeAndNil(foNonAdminTaxTypes);

  if(Assigned(FOnJournalFormClose)) then
    FOnJournalFormClose(Self);

  Action := caFree;
end;

procedure TfrmJournal.dbgrLedgerColEnter(Sender: TObject);
begin
{  if (dbgrLedger.SelectedIndex = colREASON) and (dbgrLedger.Columns.Items[colREASON].Field.Text = '') then
  begin
    if not qryLedger.Modified then
      qryLedger.Edit;
    dbgrLedger.Columns.Items[colREASON].Field.Text := tbDesc.Text;
  end;   }
end;

procedure TfrmJournal.qryLedgerAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('REASON').AsString := tbDesc.Text;
end;

procedure TfrmJournal.popRemoveClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmJournal.popEditClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Edit;
end;

procedure TfrmJournal.FormCreate(Sender: TObject);
begin
   grpFileImport.Visible := (SystemString('Journal_Import') = 'Y');
   foAdminTaxTypes    := TStringlist.Create;
   foNonAdminTaxTypes := TStringlist.Create;
   CheckAdminRights;

   StringPopulate(foAdminTaxTypes, 'TAXTYPE', 'CODE');

   foNonAdminTaxTypes.Add('NCR');

   TcxComboBoxProperties(tvLedgerTAXCODE.Properties).Items.Clear;
 //  dbgrLedger.Columns[colTAXCODE].PickList.Clear;

 //  if (fbIsAdmin) then
    TcxComboBoxProperties(tvLedgerTAXCODE.Properties).Items.AddStrings(foAdminTaxTypes);
 //    dbgrLedger.Columns[colTAXCODE].PickList.AddStrings(foAdminTaxTypes);
 //  else
 //    dbgrLedger.Columns[colTAXCODE].PickList.AddStrings(foNonAdminTaxTypes);

   DefaultTax := get_default_gst('GeneralLedger');

   if (DefaultTax = '') then
      DefaultTax := 'NCR';

   lblTotalDebit.Caption := '';
   lblTotalCredit.Caption := '';
   lblDebitBalance.Caption := '';
   lblCreditBalance.Caption := '';
   lblDebitTax.Caption := '';
   lblCreditTax.Caption := '';
   lblTaxTotal.Caption := '';
end;

procedure TfrmJournal.CalcTax;
var
  dAmount: double;
begin
  qryLedgerDEBIT.OnChange := nil;
  qryLedgerCREDIT.OnChange := nil;

  if (not qryLedger.Modified) then
    qryLedger.Edit;

  dAmount := qryLedger.FieldByName('DEBIT').AsCurrency + qryLedger.FieldByName('CREDIT').AsCurrency;
  qryLedger.FieldByName('TAX').AsCurrency := TaxCalc(dAmount, '', qryLedger.FieldByName('TAXCODE').AsString, dtpDate.Date);

  if (qryLedger.FieldByName('DEBIT').AsCurrency > 0) then
    qryLedger.FieldByName('DEBIT').AsCurrency := dAmount;

  if (qryLedger.FieldByName('CREDIT').AsCurrency > 0) then
    qryLedger.FieldByName('CREDIT').AsCurrency := dAmount;

  if (qryLedger.State <> dsInsert) then
    UpdateTotal;

  qryLedgerDEBIT.OnChange := qryLedgerDEBITChange;
  qryLedgerCREDIT.OnChange := qryLedgerCREDITChange;
end;

procedure TfrmJournal.qryLedgerTAXCODEChange(Sender: TField);
begin
  CalcTax;
end;

procedure TfrmJournal.qryLedgerBeforeInsert(DataSet: TDataSet);
begin
//  if (qryLedger.FieldByName('TAXCODE').AsString <> '') then
//    DefaultTax := qryLedger.FieldByName('TAXCODE').AsString;

  fbIsDebit := (DataSet.FieldByName('DEBIT').AsCurrency <> 0);
end;

procedure TfrmJournal.btnOKClick(Sender: TObject);
var
   Row: integer;
begin
   for Row := 0 to tvLedger.DataController.RecordCount - 1 do
   begin
      tvLedger.DataController.FocusedRowIndex := Row;
      if tvLedger.DataController.GetDisplayText(Row, tvLedgerREFNO.Index) = '' then
         tvLedger.DataController.DeleteFocused;
   end;

   try
      if (tbDesc.Text <> '') then
      begin
        if (IsDirectPostingAllowed(qryLedger)) then
          begin
            SaveJournalEntry;

            if (ckbKeepOpen.Checked) then
              ClearEntry
            else
              Close;
          end;    //  end if
      end
      else
      begin
        qryJournal.Edit;
        qryLedger.Edit;
        MessageDlg('Please enter a reason before posting.', mtError, [mbOK], 0);
        tbDesc.SetFocus;
      end;    //  end if-else
   except
      on E: Exception do
      begin
         MsgErr('Posting failed' + #13 + #13 + E.Message);
         qryJournal.Edit;
         qryLedger.Edit;
      end;
   end;
end;

procedure TfrmJournal.SaveJournalEntry;
var
  iJournal,
  iRows : Integer;
  cAmt, cTax     : Currency;
  glInstance : TglComponentInstance ;
begin
   if qryLedger.Modified then
      qryLedger.Post;

   if (OKtoPost = True) then
   begin
      if PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed] then
      begin
        // Create a Journal entry
         try
//            if dmAxiom.uniInsight.InTransaction then
//                dmAxiom.uniInsight.Commit;
//            dmAxiom.uniInsight.StartTransaction;

            iJournal := GetJournal;

            if iJournal = -1 then
               Raise EPostError.Create('Could not get next Journal number for Entity.  Exiting... ' + dmAxiom.Entity);

            qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
            qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;
            qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
            qryJournal.FieldByName('ENTITY').AsString := dmAxiom.Entity;
            qryJournal.FieldByName('REASON').AsString := tbDesc.Text;
            qryJournal.FieldByName('AMOUNT').AsCurrency := cTotalDebit;
            qryJournal.FieldByName('TRUST').AsString := 'G';
            qryJournal.FieldByName('REFNO').AsString := dfReference.Text;
            if chkMarkRecurring.Checked then
               qryJournal.FieldByName('RECURRING').AsString := 'Y';

            qryJournal.Post; // Puts journal into cached buffer

            // Now, iterate through the entered Ledger Entries
//            qryLedger.First;
            try
               with tvLedger.DataController do
               begin
                  for iRows := 0 to RecordCount - 1 do  // while (not qryLedger.EOF) do
                  begin
                     tvLedger.ViewData.Records[iRows].Focused := True;
                     if  qryLedger.FieldByName('REFNO').AsString <> '' then
                     begin
                        cAmt := qryLedger.FieldByName('CREDIT').AsCurrency - qryLedger.FieldByName('DEBIT').AsCurrency;

                        if cAmt < 0 then
                           cTax := 0 - qryLedger.FieldByName('TAX').AsCurrency
                        else
                           cTax := qryLedger.FieldByName('TAX').AsCurrency;

                        if (qryLedger.FieldByName('REFNO').AsString <> '') then
                        begin
                           // lookup the ledger code cased on the value entered
                           glInstance := dmAxiom.getGlComponents.parseString(qryLedger.FieldByName('REFNO').AsString,true);

                           if not glInstance.valid then
                           begin
                              // something has gone very wrong !
                              raise Exception.create('Error invalid ledger key');
                           end;

                           PostLedger(dtpDate.Date
                              , cAmt
                              , cTax
                              , IntToStr(iJournal)
                              , 'JOURNAL'
                              , iJournal
                              , qryLedger.FieldByName('REASON').AsString
                              , glInstance.ledgerKey
                              , ''
                              , -1
                              , ''
                              , qryLedger.FieldByName('TAXCODE').AsString
                              , IsJournalSplittingChart(qryLedger.FieldByName('CHART').AsString, dmAxiom.Entity)
                              , glInstance.ledgerKey
                              , 0
                              , 0
                              , 0
                              , False
                              , 0
                              , cTax
                              , '' //sTranCurrency
                              , 0 // lcFXRate
                              , 0 //lcValBase
                              , 0 //lcCurrencyTaxValBase
                              , 0 //LcValEntity
                              , 0 //lcCurrencyTaxValEntity
                              , '' //tvLedgerBRANCH.EditValue
                              , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                              , '' //vartostr(tvLedgerDEPT.EditValue)
                              , 'N'
                              );

                        end;    //  end if

                        SaveTaxAmount(iJournal, cAmt,glInstance.ledgerKey);
                     end;
//                     qryLedger.Next;
                  end;
               end;
            finally
               // Alex check totals prior to applying records
               CheckLedgerTotal;

               // Now save the general ledger items
               qryJournal.ApplyUpdates;
               qryJournal.Close;

//            dmAxiom.uniInsight.Commit;
               MsgInfo('Posted Journal ' + IntToStr(iJournal));
            end;
         except
            on E: Exception do
            begin
//               dmAxiom.uniInsight.Rollback;
               Raise;
            end;
         end;
      end;
   end;
end;

{-------------------------------------------------------------------------------
  Name:         ClearEntry
  Description:  Reset the form for new entries.
  Return:       <none>
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         10-01-2003

-------------------------------------------------------------------------------}

procedure TfrmJournal.ClearEntry;
begin
   qryJournal.Close;
   qryJournal.ParamByName('P_Acct').AsString := dmAxiom.Entity;
   qryJournal.ParamByName('P_NJournal').AsInteger := -1;
   qryJournal.Open;
   qryJournal.Insert;
   qryJournal.FieldByName('NJOURNAL').AsInteger := -1;

   qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;
   qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
   qryJournal.FieldByName('TYPE').AsString := 'PY';

   tbDesc.Clear;
   qryLedger.Close;
   qryLedger.Open;

   tbDesc.SetFocus;
end;

{-------------------------------------------------------------------------------
  Name:         HasValidLedgerCodes
  Description:  Checks the entries for valid ledger/account codes.
  Return:       If False, one of the entries does not have a valid code such as
                blank.
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         10-01-2003

-------------------------------------------------------------------------------}

function  TfrmJournal.HasValidLedgerCodes : Boolean;
begin
   Result := TRUE;
   qryLedger.First;

   while not qryLedger.EOF do
   begin
      if (qryLedger.FieldByName('REFNO').AsString = '') then
      begin
         Result := FALSE;
         Break;
      end;    //  end if
      qryLedger.Next;
   end;    //  end while
end;

{-------------------------------------------------------------------------------
  Name:         SaveTaxAmount
  Description:  Save the tax portion of the current entry to the ledger. The
                ledger code will come from the tax type, that is, GST Input or
                GST Output.
  Return:       <none>
  Parameters:   iJournal - The same journal number generated by the system for
                           all the entries.
                cAmt - The amount either credit or debit of the current entry.
  Programmer:   Brendan Jagtenberg
  Date:         10-01-2003

-------------------------------------------------------------------------------}

procedure TfrmJournal.SaveTaxAmount(iJournal : Integer; cAmt : Currency;sParent : String);
var
  lsLedger      : String;
  lsDefaultTax  : String;
  lsAccountCode : String;
  lcTax         : Currency;
  glComponentSetup : TglComponentSetup;
  sLedgerKey    : String;
begin
   try
      glComponentSetup := dmAxiom.getGlComponents;

      lcTax := qryLedger.FieldByName('TAX').AsCurrency;

      if (lcTax <> 0) then
      begin
         lsDefaultTax := get_default_gst('GeneralLedgerTax');

         if (lsDefaultTax = '') then
            lsDefaultTax := 'NCR';

         if (IsIncome) then
            lsLedger := 'OUTPUTLEDGER'
         else
            lsLedger := 'LEDGER';

         if (IsDebit) then
            lcTax := 0 - lcTax;

         lsAccountCode := TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, lsLedger);

         if (lsAccountCode <> '') then
         begin
            sLedgerKey :=  glComponentSetup.buildLedgerKey('',lsAccountCode,'',true,'');

            PostLedger(dtpDate.Date
                , lcTax
                , 0
                , IntToStr(iJournal)
                , 'JOURNAL'
                , iJournal
                , qryLedger.FieldByName('REASON').AsString
                , sLedgerKey
                , ''
                , -1
                , ''
                , lsDefaultTax
                , IsJournalSplittingChart(qryLedger.FieldByName('CHART').AsString, dmAxiom.Entity)
                , sParent
                , 0
                , 0
                , 0
                , False
                , 0
                , lcTax
                , '' //sTranCurrency
                , 0 // lcFXRate
                , 0 //lcValBase
                , 0 //lcCurrencyTaxValBase
                , 0 //LcValEntity
                , 0 //lcCurrencyTaxValEntity
                , '' //tvLedgerBRANCH.EditValue
                , '' //vartostr(tvLedgerEMP_CODE.EditValue)
                , '' //vartostr(tvLedgerDEPT.EditValue)
                , 'N'
                );
         end;    //  end if
      end;    //  end if
   except
      on E: Exception do
      begin
         Raise;
      end;
   end;
end;

{-------------------------------------------------------------------------------
  Name:         IsDebit
  Description:  Checks to see if the current entry is either a credit or debit.
  Return:       If True, the debit field is not zero.
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         10-01-2003

-------------------------------------------------------------------------------}

function  TfrmJournal.IsDebit : Boolean;
begin
  Result := (qryLedger.FieldByName('DEBIT').AsCurrency <> 0);
end;


{-------------------------------------------------------------------------------
  Name:         tbDescExit
  Description:  On exit from the reason window, first check to see if there are
                any entries. If so, then iterate through them and change the
                reason.
  Return:       <none>
  Parameters:   TForm
  Programmer:   Brendan Jagtenberg
  Date:         10-01-2003

-------------------------------------------------------------------------------}

procedure TfrmJournal.tbDescExit(Sender: TObject);
begin
   if cmbFileType.Text = '' then
   begin
      if (qryLedger.RecordCount > 0) then
      begin
         qryLedger.First;

         while (not qryLedger.Eof) do
         begin
            qryLedger.Edit;
            qryLedger.FieldByName('REASON').AsString := tbDesc.Text;

            qryLedger.Next;
         end;    //  end while
      end;    //  end if
   end;
end;

{-------------------------------------------------------------------------------
  Name:         IsIncome
  Description:  Checks to see if the current entry is either an income or an
                expense.
  Return:       If True, the type is 'I'.
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         13-01-2003

-------------------------------------------------------------------------------}

function  TfrmJournal.IsIncome : Boolean;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;

      try
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('SELECT NVL(CHART_CATEGORY,''I'') AS CHART_CATEGORY FROM CHARTTYPE WHERE CODE = :Code');
         loQry.Params[0].AsString := qryLedger.FieldByName('TYPE').AsString;

         loQry.Open;

         Result := (loQry.FieldByName('CHART_CATEGORY').AsString  = 'I');

      finally
      loQry.Close;
      FreeAndNil(loQry);
    end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
//    Result := (qryLedger.FieldByName('TYPE').AsString  = 'I');
end;


{-------------------------------------------------------------------------------
  Name:         UpdateDisplayTotals
  Description:  Update and re-display the balance and tax totals.
  Return:       <none>
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         13-01-2003

-------------------------------------------------------------------------------}

procedure TfrmJournal.UpdateDisplayTotals;
var
  lcDebitBalance  : Currency;
  lcCreditBalance : Currency;
  lcDebitTax      : Currency;
  lcCreditTax     : Currency;
begin
    qryLedger.First;

    cTotalDebit := 0;			{ use temp for efficiency }
    cTotalCredit := 0;			{ use temp for efficiency }
    fcBalance := 0;
    lcDebitTax := 0;
    lcCreditTax := 0;

    while not qryLedger.EOF do
    begin
      if (IsDebit) then
         lcDebitTax := lcDebitTax + qryLedger.FieldByName('TAX').AsCurrency
      else
         lcCreditTax := lcCreditTax + qryLedger.FieldByName('TAX').AsCurrency;

      cTotalDebit := cTotalDebit + qryLedger.FieldByName('DEBIT').AsCurrency;
      cTotalCredit := cTotalCredit + qryLedger.FieldByName('CREDIT').AsCurrency;

      qryLedger.Next;

    end;

    lcDebitBalance := cTotalDebit + lcDebitTax;
    lcCreditBalance := cTotalCredit + lcCreditTax;
    fcBalance := lcDebitBalance - lcCreditBalance;

    lblTotalDebit.Caption := Format('%m', [cTotalDebit + lcDebitTax]);
    lblTotalCredit.Caption := Format('%m', [cTotalCredit + lcCreditTax]);
    lblDebitTax.Caption := Format('%m', [lcDebitTax]);
    lblCreditTax.Caption := Format('%m', [lcCreditTax]);
    lblTaxTotal.Caption := Format('%m', [lcDebitTax + lcCreditTax]);

    if (fcBalance <> 0) then
      begin
        if (lcDebitBalance > lcCreditBalance) then
          begin
            lblCreditBalance.Font.Color := clRed;
            lblCreditBalance.Caption := Format('%m', [Abs(fcBalance)]);
            lblCreditBalance.Visible := TRUE;
            lblDebitBalance.Caption := '';
            lblDebitBalance.Visible := FALSE;

          end
        else
          begin
            lblDebitBalance.Font.Color := clRed;
            lblDebitBalance.Caption := Format('%m', [Abs(fcBalance)]);
            lblDebitBalance.Visible := TRUE;
            lblCreditBalance.Caption := '';
            lblCreditBalance.Visible := FALSE;

          end;    //  end if-else

      end
    else
      begin
        lblCreditBalance.Font.Color := clBlack;
        lblCreditBalance.Caption := '-';
        lblCreditBalance.Visible := TRUE;

        lblDebitBalance.Font.Color := clBlack;
        lblDebitBalance.Caption := '-';
        lblDebitBalance.Visible := TRUE;

      end;    //  end if-else

    if ((fcBalance = 0) AND ((cTotalDebit + cTotalCredit) <> 0)) then
      begin
        btnOK.Enabled := TRUE;
        btnJournalSplit.Enabled := fbIsJournalSplit;

      end
    else
      begin
        btnOK.Enabled := FALSE;
        btnJournalSplit.Enabled := FALSE;

      end;    //  end if-else
end;

procedure TfrmJournal.CheckAdminRights;
var
  lsDept : String;
begin
  lsDept := TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'TYPE');

  fbIsAdmin := ((lsDept = 'FAD') OR (lsDept = 'SYS'));

end;

procedure TfrmJournal.SetTaxTypesList;
begin
//  dbgrLedger.Columns[colTAXCODE].PickList.Clear;
   tcxComboBoxProperties(tvLedgerTAXCODE.Properties).Items.Clear;

   tcxComboBoxProperties(tvLedgerTAXCODE.Properties).Items.AddStrings(foAdminTaxTypes);

//   if (IsIncomeOrExpense) then
//      dbgrLedger.Columns[colTAXCODE].PickList.AddStrings(foAdminTaxTypes)
//  else
//    begin
//      if (fbIsAdmin) then
//        dbgrLedger.Columns[colTAXCODE].PickList.AddStrings(foAdminTaxTypes);
//      else
//        dbgrLedger.Columns[colTAXCODE].PickList.AddStrings(foNonAdminTaxTypes);
//    end;    //  end if-else
end;


{-------------------------------------------------------------------------------
  Name:         IsIncomeOrExpense
  Description:  Checks to see if the current entry is either an income or an
                expense.
  Return:       If True, the type is 'I' or 'E'.
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         14-01-2003

-------------------------------------------------------------------------------}

function  TfrmJournal.IsIncomeOrExpense : Boolean;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;

      try
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('SELECT NVL(CHART_CATEGORY,''I'') AS CHART_CATEGORY FROM CHARTTYPE WHERE CODE = :Code');
         loQry.Params[0].AsString := qryLedger.FieldByName('TYPE').AsString;

         loQry.Open;

         Result := ((loQry.FieldByName('CHART_CATEGORY').AsString  = 'I') OR
                    (loQry.FieldByName('CHART_CATEGORY').AsString  = 'E'));

      finally
      loQry.Close;
      FreeAndNil(loQry);
    end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;

//  Result := ((qryLedger.FieldByName('TYPE').AsString  = 'I') OR
//             (qryLedger.FieldByName('TYPE').AsString  = 'E'));
end;


procedure TfrmJournal.btnCancelClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmJournal.SetDefaultTaxType;
var
  lsDefaultTax, defaultLedgerTaxCode : String;
begin
{  if ((not IsIncomeOrExpense) AND (not fbIsAdmin)) then
    begin
      lsDefaultTax := get_default_gst('GeneralLedgerNonAdmin');

      if (lsDefaultTax = '') then
         lsDefaultTax := 'NCR';

      qryLedger.FieldByName('TAXCODE').AsString := lsDefaultTax;

    end
  else
  begin  }
    // Tony
    // 03/05/2004
    // Obtain default_taxcode (if any)
    defaultLedgerTaxCode := LedgerString(tcxComboBoxProperties(tvLedgerTAXCODE.Properties).Items.Text, 'DEFAULT_TAXCODE');

    if defaultLedgerTaxCode <> '' then
      qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode
    else
      qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
//  end;
end;




procedure TfrmJournal.btnJournalSplitClick(Sender: TObject);
var
  loChartList         : TStringList;
  loTGeneralLedgerObj : TGeneralLedgerObj;
begin
  if (GLRecordsValid) then
    begin
      loChartList := nil;
      qryLedger.First;

      try
        loChartList := TStringList.Create;

        while (not qryLedger.Eof) do
          begin
            loTGeneralLedgerObj := CreateGeneralLedgerObj;

            if (IsJournalSplittingChart(loTGeneralLedgerObj.Chart, dmAxiom.Entity)) then
              begin
                JournalSplit(loChartList, loTGeneralLedgerObj);

              end
            else
              loChartList.AddObject(loTGeneralLedgerObj.Chart, TObject(loTGeneralLedgerObj));

            qryLedger.Next;

          end;    //  end while

        ResetGridWith(loChartList);

      finally
        FreeAndNil(loChartList);

      end;    //  end try-finally

    end;    //  end if

end;




function  TfrmJournal.CreateGeneralLedgerObj : TGeneralLedgerObj;
var
  loTGeneralLedgerObj : TGeneralLedgerObj;
begin
  loTGeneralLedgerObj := TGeneralLedgerObj.Create;

  loTGeneralLedgerObj.Chart := qryLedger.FieldByName('REFNO').AsString;
  loTGeneralLedgerObj.Description := qryLedger.FieldByName('LONGDESC').AsString;
  loTGeneralLedgerObj.Reason := qryLedger.FieldByName('REASON').AsString;
  loTGeneralLedgerObj.TaxCode := qryLedger.FieldByName('TAXCODE').AsString;
  loTGeneralLedgerObj.ChartType := qryLedger.FieldByName('TYPE').AsString;
  loTGeneralLedgerObj.Debit := qryLedger.FieldByName('DEBIT').AsFloat;
  loTGeneralLedgerObj.Credit := qryLedger.FieldByName('CREDIT').AsFloat;
  loTGeneralLedgerObj.Tax := qryLedger.FieldByName('TAX').AsCurrency;

  Result := loTGeneralLedgerObj;

end;




procedure TfrmJournal.ResetGridWith(oChartList : TStringList);
var
  liCnt : Integer;
  loTGeneralLedgerObj : TGeneralLedgerObj;
begin
  qryLedger.DisableControls;

  qryLedger.Close;
  qryLedger.Open;

  for liCnt := 0 to (oChartList.Count - 1) do
    begin
      loTGeneralLedgerObj := nil;

      try
        loTGeneralLedgerObj := TGeneralLedgerObj(oChartList.Objects[liCnt]);
        qryLedger.Append;

        qryLedger.FieldByName('REFNO').AsString := loTGeneralLedgerObj.Chart;
        qryLedger.FieldByName('LONGDESC').AsString := loTGeneralLedgerObj.Description;
        qryLedger.FieldByName('REASON').AsString := loTGeneralLedgerObj.Reason;
        qryLedger.FieldByName('TAXCODE').AsString := loTGeneralLedgerObj.TaxCode;
        qryLedger.FieldByName('TYPE').AsString := loTGeneralLedgerObj.ChartType;
        qryLedger.FieldByName('DEBIT').AsFloat := loTGeneralLedgerObj.Debit;
        qryLedger.FieldByName('CREDIT').AsFloat := loTGeneralLedgerObj.Credit;
        qryLedger.FieldByName('TAX').AsCurrency := loTGeneralLedgerObj.Tax;

        qryLedger.Post;

      finally
        FreeAndNil(loTGeneralLedgerObj);

      end;    //  end try-finally

    end;    //  end for

  qryLedger.EnableControls;

end;



{-------------------------------------------------------------------------------
  Name:         GLRecordsValid
  Description:  Checks to see if all the GL records are vaild, that is, the
                money going out is the same as the money going in.
  Return:       If true, the journal entry balances.
  Parameters:   <none>
  Programmer:   Brendan Jagtenberg
  Date:         02-07-2003

-------------------------------------------------------------------------------}

function TfrmJournal.GLRecordsValid : Boolean;
var
  liDebit  : Double;
  liCredit : Double;
begin
  Result := TRUE;
  
  while (not qryLedger.Eof) do
    begin
      liDebit := qryLedger.FieldByName('DEBIT').AsFloat;
      liCredit := qryLedger.FieldByName('CREDIT').AsFloat;

      if ((liDebit + liCredit) = 0) then
        begin
          MsgErr('All records must have either a Debit or Credit figure assigned to them.');
          Result := FALSE;
          Break;

        end;    //  end if

      qryLedger.Next;

    end;    //  end while

end;




{-------------------------------------------------------------------------------
  Name:         IsDirectPostingAllow
  Description:  Checks to see if the user can post to a control account.
  Return:       If true, can post to the control account.
                If false, no one can post directly to the account.
  Parameters:   Either a TUniQuery or TUniQuery.
  Programmer:   Brendan Jagtenberg
  Date:         02-07-2003

-------------------------------------------------------------------------------}

function TfrmJournal.IsDirectPostingAllowed(oQuery : TUniQuery) : Boolean;
begin
  Result := TRUE;

  oQuery.First;

  while (not oQuery.EOF) do
  begin
    if ((oQuery.FieldByName('ALLOW_DIRECT_POSTING').AsString) = 'N') then
      begin
        Result := FALSE;
        MessageDlg('You cannot post directly to the Account ' + oQuery.FieldByName('REFNO').AsString
                   + #13 + #10 + 'The ledger has been designated a control account.', mtWarning, [mbOK], 0);
        Break;

      end;    //  end if

    oQuery.Next;

  end;

end;


procedure TfrmJournal.cxGrid1DBTableView1REFNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   defaultLedgerTaxCode : String;
begin
   if not FormExists(frmLedgerSearch) then
    Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

    if frmLedgerSearch.ShowModal = mrOk then
    begin
      qryLedger.Edit;
      qryLedger.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      qryLedger.FieldByName('CHART').AsString := frmLedgerSearch.qryLedgers.FieldByName('CHART').AsString;
      qryLedger.FieldByName('LONGDESC').AsString := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
      qryLedger.FieldByName('TYPE').AsString := frmLedgerSearch.qryLedgers.FieldByName('TYPE').AsString;
      //qryLedger.FieldByName('ALLOW_DIRECT_POSTING').AsString := frmLedgerSearch.qryLedgers.FieldByName('ALLOW_DIRECT_POSTING').AsString;

      if qryLedger.FieldByName('REASON').AsString = '' then
        qryLedger.FieldByName('REASON').AsString := tbDesc.Text;

      // Tony
      // 27/04/2004
      // Obtain default_taxcode (if any)
      defaultLedgerTaxCode := LedgerString(frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString, 'DEFAULT_TAXCODE');

      if defaultLedgerTaxCode <> '' then
         qryLedger.FieldByName('TAXCODE').AsString := defaultLedgerTaxCode
      else
         qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
    end;
end;

procedure TfrmJournal.cxGrid1DBTableView1REFNOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
  var
     glInstance : TglComponentInstance ;
begin
   if not qryLedger.Modified then
      qryLedger.Edit;

   // lookup the ledger code based on the value entered
   glInstance := dmAxiom.getGlComponents.parseString(DisplayValue,true);

   if not glInstance.valid then
   begin
      glInstance.displayError;
      qryLedger.FieldByName('REFNO').AsString := '';
      qryLedger.FieldByName('LONGDESC').AsString := '';
      qryLedger.FieldByName('TYPE').AsString := '';
      glInstance.free;
      exit;
   end
   else
   begin
     DisplayValue := glInstance.fullCode;
   end;

   if not AllowDirectPost(glInstance.ledgerKey) then
   begin
      MsgErr('You may not post to ledger Reference #' + DisplayValue);
      DisplayValue := '';
   end
   else
   if not LedgerHead(glInstance.ledgerKey) then
   begin
      qryLedger.FieldByName('REFNO').AsString := DisplayValue;
      qryLedger.FieldByName('CHART').AsString := LedgerComponentString(DisplayValue,'CODE');
      qryLedger.FieldByName('LONGDESC').AsString := LedgerComponentString(DisplayValue, 'REPORT_DESC');
      qryLedger.FieldByName('TYPE').AsString := LedgerComponentString(DisplayValue, 'TYPE');
      SetTaxTypesList;
      if (not fbIsJournalSplit) then
         fbIsJournalSplit := IsJournalSplittingChart(glInstance.ledgerKey, dmAxiom.Entity);
   end
   else
   begin
      MsgErr('You may not post to a header ledger');
      DisplayValue := '';
   end;
   SetDefaultTaxType;
end;

procedure TfrmJournal.cxGrid1DBTableView1REASONPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   QuickCode(tvLedgerREASON.DataBinding.Field, DisplayValue);
end;

procedure TfrmJournal.cxGrid1DBTableView1CREDITPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if qryLedger.State = dsBrowse then
      qryLedger.Edit;
   qryLedger.FieldByName('CREDIT').AsCurrency := DisplayValue;
   UpdateTotal;
end;

procedure TfrmJournal.cxGrid1DBTableView1DEBITPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if qryLedger.State = dsBrowse then
      qryLedger.Edit;
   qryLedger.FieldByName('DEBIT').AsCurrency := DisplayValue;
   UpdateTotal;
end;

procedure TfrmJournal.cxGrid1DBTableView1TAXPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if (qryLedger.Modified) then
      UpdateDisplayTotals;
end;

procedure TfrmJournal.dbgrLedgerEnter(Sender: TObject);
begin
   if (tvLedgerREASON.DataBinding.Field.Text = '') then
   begin
      if not qryLedger.Modified then
         qryLedger.Edit;
      tvLedgerREASON.DataBinding.Field.Text := tbDesc.Text;
   end;
end;

procedure TfrmJournal.btnImportClick(Sender: TObject);
var
   slImport: TStrings;
   StatementFileName: string;
   fStatement : TextFile;
   sNewline, Month,Year,Day,NewDate, sWord:  string;
   LImportFile: TImportFile;
   i, iWords: integer;
begin
   if OpenDialog.Execute then
   begin
      try
         iWords := 0;
         StatementFileName := OpenDialog.FileName;
         SlImport := TStringList.Create;
         slImport.LoadFromFile(StatementFileName);
         SetLength(LImportFile,slImport.Count, 5);
         application.processmessages;
         for i := 0 to slImport.Count - 1 do
         begin
            sNewline := slImport.Strings[i];
            while getnextword(sNewline ,sWord) do
            begin
               LImportFile[i,iWords] := sWord;
               inc(iWords);
            end;
            iWords := 0;
         end;

         tvLedger.BeginUpdate;
         for I := Low(LImportFile) to High(LImportFile) do
         begin
            qryLedger.Insert;
            qryLedger.FieldByName('REFNO').AsString := LImportFile[i,1];
            qryLedger.FieldByName('LONGDESC').AsString := LedgerComponentString(LImportFile[i,1],'DESCR');
            qryLedger.FieldByName('Reason').AsString := LImportFile[i,2];
            qryLedger.FieldByName('DEBIT').AsString := LImportFile[i,3];
            qryLedger.FieldByName('CREDIT').AsString := LImportFile[i,4];
            qryLedger.FieldByName('TAXCODE').AsString := 'N/A';
            qryLedger.FieldByName('CHART').AsString := LedgerComponentString(LImportFile[i,1],'CODE');
            UpdateDisplayTotals;
         end;
      except
        //
      end;
      tvLedger.EndUpdate;
   end;
   slImport.Free;
end;

procedure TfrmJournal.cmbFileTypePropertiesCloseUp(Sender: TObject);
begin
   try
      btnImport.Enabled := (cmbFileType.Text <> '');
   except
      raise
   end;
end;

procedure TfrmJournal.cmbFileTypePropertiesChange(Sender: TObject);
begin
   try
      btnImport.Enabled := (cmbFileType.Text <> '');
   except
      raise
   end;
end;


end.




