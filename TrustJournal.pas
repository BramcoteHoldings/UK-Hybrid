unit TrustJournal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  ExtCtrls,citfunc, NumberEdit, OracleUniProvider, Uni, DBAccess, DateTimeAccount,
  Variants, cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxDropDownEdit, cxButtonEdit, cxTextEdit, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxMaskEdit,
  cxLookAndFeels, cxContainer, cxCalendar, EnforceCustomDateEdit, dxCore,
  ppDB, ppParameter, ppDesignLayer, ppBands, ppStrtch, ppMemo, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, MemDS, cxNavigator, cxDateUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

const
  colTYPE = 0;
  colREFNO = 1;
  colLONGDESC = 2;
  colREASON = 3;
  colDEBIT = 4;
  colCREDIT = 5;

type
  EPostError = class(Exception);
  ETrustOverdraw = class(Exception);

  TfrmTrustJournal = class(TForm)
    Label2: TLabel;
    Label8: TLabel;
    tbDesc: TEdit;
    lblAmountMsg: TLabel;
    lblTotalCredit: TLabel;
    qryAllocInsert: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qryJournal: TUniQuery;
    lblTotalDebit: TLabel;
    Label1: TLabel;
    lblBankName: TLabel;
    cbBank: TComboBox;
    qryCheckAlloc: TUniQuery;
    lblWarning: TLabel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    qryCheckMatter: TUniQuery;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerTYPE: TcxGridDBColumn;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerLONGDESC: TcxGridDBColumn;
    tvLedgerREASON: TcxGridDBColumn;
    tvLedgerDEBIT: TcxGridDBColumn;
    tvLedgerCREDIT: TcxGridDBColumn;
    qrySpecPurposeAllocs: TUniQuery;
    dtpDate: TEnforceCustomDateEdit;
    cbPrintJournal: TCheckBox;
    qryJournalPrint: TUniQuery;
    dsJournalPrint: TUniDataSource;
    plJournalPrint: TppDBPipeline;
    rptJournal: TppReport;
    ppHeaderBand2: TppHeaderBand;
    lblCompanyJournals: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine3: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText8: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine4: TppLine;
    ppLabel22: TppLabel;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList2: TppParameterList;
    plAllocPrint: TppDBPipeline;
    dsAllocPrint: TUniDataSource;
    qryAllocPrint: TUniQuery;
    qryNAccountPrint: TUniQuery;
    dsNAccountPrint: TUniDataSource;
    lblEntity: TppLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure dbgrLedger12EditButtonClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrLedger12ColExit(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure dbgrLedger12Exit(Sender: TObject);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrLedger12KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbgrLedger12Enter(Sender: TObject);
    procedure tbDescExit(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure qryLedgerDEBITChange(Sender: TField);
    procedure qryLedgerCREDITChange(Sender: TField);
    procedure cxGrid1DBTableView1REFNO1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1REFNO1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure tvLedgerREASON1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure rptJournalBeforePrint(Sender: TObject);
    procedure tvLedgerDEBITPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure tvLedgerCREDITPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private

    function OKtoPost(bShowError : boolean) : Boolean;
    function CheckAmountAgainstAlloc : Boolean;

    procedure UpdateTotal;
    function CheckClearedTrust: Boolean;
    function IsValidTrustForMatter(AFiledID: string): boolean;
  public
    { Public declarations }

  end;


implementation

uses
  AxiomData, MiscFunc, MSearch;

{$R *.DFM}

var
  cTotalDebit, cTotalCredit : Currency;
  bPostingFailed : boolean;
  { 27/08/2004 TH - Commented out due to warnings
  val: string;
  }

procedure TfrmTrustJournal.btnCancelClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;


procedure TfrmTrustJournal.dbgrLedger12EditButtonClick(Sender: TObject);
begin
{  if dbgrLedger1.SelectedIndex = colREFNO then
  begin
    if (dbgrLedger1.Columns.Items[colTYPE].Field.Text = 'Matter') or (dbgrLedger1.Columns.Items[colTYPE].Field.Text = 'Protected') then
    begin
    if not FormExists(frmMatterSearch) then
        Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOk then
      begin
        // 23/08/2004 TH - Checks added to determine if matter is valid for
        // current entity and bank.
        if not (IsValidMatterForEntity(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
        begin
          MessageDlg('The matter #' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' is not valid for the current Entity.', mtWarning, [mbOK], 0);
          qryLedger.Edit;
          dbgrLedger1.Columns.Items[colREFNO].Field.Text := '';
          dbgrLedger1.Columns.Items[colLONGDESC].Field.Text := '';
        end
        // Check if acct (bank) for matter is valid for selected bank
        else if not (dmAxiom.qryMSearch.FieldByName('ACCT').AsString = cbBank.Text) then
        begin
          MessageDlg('The matter #' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' is not valid for the current Bank', mtWarning, [mbOK], 0);
          qryLedger.Edit;
          dbgrLedger1.Columns.Items[colREFNO].Field.Text := '';
          dbgrLedger1.Columns.Items[colLONGDESC].Field.Text := '';
        end
        else // If all is valid
        begin
          qryLedger.Edit;
          qryLedger.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
          qryLedger.FieldByName('LONGDESC').AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
          if qryLedger.FieldByName('REASON').AsString = '' then
            qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
        end;
      end;
    end;
  end;  }
end;


procedure TfrmTrustJournal.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
//  if DeletingItems then Exit;   { don't calculate if deleting all items }
  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
  try
    qryLedger.DisableControls;
    qryLedger.First;
    cTotalDebit := 0;     { use temp for efficiency }
    cTotalCredit := 0;      { use temp for efficiency }
    while not qryLedger.EOF do
    begin
      cTotalDebit := cTotalDebit + qryLedger.FieldByName('DEBIT').AsCurrency;
      cTotalCredit := cTotalCredit + qryLedger.FieldByName('CREDIT').AsCurrency;
      qryLedger.Next;
    end;
    lblTotalDebit.Caption := Format('%m', [cTotalDebit]);
    lblTotalCredit.Caption := Format('%m', [cTotalCredit]);
  finally
     qryLedger.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qryLedger.GoToBookmark(bmPrevRecord);
       qryLedger.FreeBookmark(bmPrevRecord);
     end;
  end;
end;


function TfrmTrustJournal.OKtoPost(bShowError : boolean) : Boolean;
var
  sTmp : String;
  lsText : String;
  bOKtoPost: boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= True;

  sTmp := '';
  lsText := '';

  if (cTotalDebit <> cTotalCredit) then
  begin
     sTmp := sTmp + '       Journal does not balance' + #13;
     lsText := 'Journal does not balance.';
  end;    // end if

  if (tvLedger.DataController.RowCount = 0) then
  begin
     sTmp := sTmp + '       No entries to process.' + #13;
     lsText := 'No entries to process.';
  end;    // end if

  if sTmp <> '' then
  begin
    if bShowError then
      MsgInfo('Please complete the following Journal details before posting:    ' + Chr(13) + Chr(13) + sTmp);

    lsText := 'Please complete the following Journal details before posting:' + #13#10 + lsText;

    bOKtoPost := False
  end;

  lblWarning.Caption := lsText;

  result:= bOKtoPost;
end;


procedure TfrmTrustJournal.btnOKClick(Sender: TObject);
var
  iJournal,
  Row : integer;
  bFirst : boolean;
begin
   if (tvLedger.DataController.RowCount < 2) then
   begin
      MsgInfo('In order to do a Trust Journal a minimum of 2 entries are needed.  Please enter a corresponding opposite transaction.');
     lblWarning.Caption := 'WARNING: Journal has only 1 side.  Please correct by entering a corresponding opposite transaction.';
   end
   else
   begin
      // clean up grid prior to doing anything.
      tvLedger.BeginUpdate();
      for Row := 0 to tvLedger.DataController.RecordCount - 1 do
      begin
         tvLedger.DataController.FocusedRowIndex := Row;
         if tvLedger.DataController.GetDisplayText(Row, tvLedgerREFNO.Index) = '' then
            tvLedger.DataController.DeleteFocused;
      end;
      tvLedger.EndUpdate;

      // 23/08/2004 TH - Check to determine if bank is valid for current entity
      if not IsValidBankForEntity(cbBank.Text) then
      begin
         MessageDlg('The bank ' + cbBank.Text + ' is not valid for the current Entity.', mtWarning, [mbOK], 0);
         Exit;
      end;

      // 30/08/2004 TH - Validate fields (i.e. Matter Refno, debit and credit amts)
      qryLedger.First;
      while not qryLedger.EOF do
      begin
         if (qryLedger.FieldByName('REFNO').AsString <> '') then
         begin
            // Check if matter is valid for current entity and bank.
            if not (IsValidMatterForEntity(qryLedger.FieldByName('REFNO').AsString)) then
            begin
              MessageDlg('The matter #' + qryLedger.FieldByName('REFNO').AsString + ' is not valid for the current Entity.', mtWarning, [mbOK], 0);
              Exit;
            end;


          if ((qryLedger.FieldByName('DEBIT').AsCurrency > 0) and
             (qryLedger.FieldByName('CREDIT').AsCurrency > 0)) then
          begin
            MessageDlg('A transaction line cannot have a DEBIT and CREDIT amount. Please zero one of the amounts.', mtWarning, [mbOK], 0);
            Exit;
          end;
         {
          if (qryLedger.FieldByName('CREDIT').AsString = '') or
             (qryLedger.FieldByName('CREDIT').AsString = '0') then
          begin
            MessageDlg('Please enter a non zero amount for credit.', mtWarning, [mbOK], 0);
            Exit;
          end;
          }
            if (qryLedger.FieldByName('REASON').AsString = '') then
            begin
               MessageDlg('A reason is required for Trust Journals. Please complete the entries and re-try.', mtWarning, [mbOK], 0);
               Exit;
            end;
         end
         else
            qryLedger.Delete;
         qryLedger.Next;
       end;
      //      if (dbgrLedger1.Columns.Items[colTYPE].Field.Text = 'Matter') or (dbgrLedger1.Columns.Items[colTYPE].Field.Text = 'Protected') then
      //  dbgrLedger1. Columns.Items

       if qryLedger.Modified then
          qryLedger.Post;
      {
        20.09.02 GG

        Re-organised, as the code needs to check all records in the ledger to ensure
        that none of them overdraw trust.

        Moved into if (OKtoPost) to allow journal records to be checked for possible
        trust overdraws.


        if (CheckAmountAgainstAlloc) then
          begin
      }
      {
        20.09.02 GG
        Added initialization to eliminate Compiler Warning
      }
       iJournal:= 0;

       if (OKtoPost(True)) then
       begin
          if (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]) then
          begin
            if (CheckAmountAgainstAlloc) then
            begin
              try
                  bPostingFailed := False;
                  if dmAxiom.uniInsight.InTransaction then
                     dmAxiom.uniInsight.Commit;
                  dmAxiom.uniInsight.StartTransaction;
                  qryJournal.Open;

      //          repeat
                  qryLedger.First;
                  bFirst := True;
                  if CheckClearedTrust then
                  begin
                     while not (qryLedger.EOF) do
                     begin
//                        if qryJournal.FieldByName('REFNO').AsString <> '' then
//                        begin
                          if bFirst then
                          begin
                            bFirst := False;
                            // Set up a journal
                            iJournal := GetJournalTrust(cbBank.Text);
                            //iJournal := GetJournal;

                            if iJournal = -1 then
                              Raise EPostError.Create('Could not get next Journal number for Bank ' + cbBank.Text);

                            qryJournal.Insert;
                            // for trust journal Acct = Bank account
                            // for General journals Acct = Entity
                            // this should be changed by adding an Entity column

                            qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
                            qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;  //  dtpDate.DateTime;
                            qryJournal.FieldByName('ACCT').AsString := cbBank.Text;
                            qryJournal.FieldByName('ENTITY').AsString := dmAxiom.Entity;
                            qryJournal.FieldByName('REASON').AsString := qryLedger.FieldByName('REASON').AsString;
                            qryJournal.FieldByName('TRUST').AsString := 'T';
                            qryJournal.FieldByName('TYPE').AsString := '3';
                            qryJournal.FieldByName('AMOUNT').AsCurrency := cTotalDebit;
                            qryJournal.Post; // Puts journal into cached buffer

                          end;

                          // frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
                          // Create an Alloc for this transaction
                          if qryLedger.FieldByName('DEBIT').AsCurrency > 0 then
                          begin
                            qryAllocInsert.ParamByName('AMOUNT').AsFloat := 0 - qryLedger.FieldByName('DEBIT').AsCurrency;
                            qryAllocInsert.ParamByName('trust_jnl_descr').AsString := '';
                          end
                          else
                          begin
                            qryAllocInsert.ParamByName('AMOUNT').AsFloat := qryLedger.FieldByName('CREDIT').AsCurrency;
                            qryAllocInsert.ParamByName('trust_jnl_descr').AsString := '';
                          end;
                          qryAllocInsert.ParamByName('ACCT').AsString := dmAxiom.Entity;
                          qryAllocInsert.ParamByName('BANK').AsString := cbBank.Text;
                          qryAllocInsert.ParamByName('CLEARED').AsString := 'Y';
                          qryAllocInsert.ParamByName('CREATED').AsDateTime := dtpDate.Date;  //  dtpDate.DateTime;
                          qryAllocInsert.ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
                          qryAllocInsert.ParamByName('REFNO').AsString := IntToStr(iJournal);
                          qryAllocInsert.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
                          qryAllocInsert.ParamByName('NJOURNAL').AsInteger := iJournal;
                          qryAllocInsert.ParamByName('PAYER').AsString := 'Trust Journal ' + IntToStr(iJournal);
                          qryAllocInsert.ParamByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                          qryAllocInsert.ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
                          qryAllocInsert.ParamByName('NALLOC').AsInteger := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
              { Code modified 9.10.2002 GG

                This column is only 40 chars wide, whereas the source coulmn is 85.  Instead
                of messing up reports etc that use the alloc client_name column, we will copy
                the first 40 Chars only from the Client_Name column in the Matter table

                          qryAllocInsert.ParamByName('CLIENT_NAME').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'TITLE');
              }
                          qryAllocInsert.ParamByName('CLIENT_NAME').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'CLIENT_NAME');  //Copy(MatterString(qryLedger.FieldByName('REFNO').AsString, 'CLIENT_NAME'), 1, 40);
                          qryAllocInsert.ParamByName('MATTER_DESC').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'SHORTDESCR');
                          if qryLedger.FieldByName('TYPE').AsString = 'Protected' then
                            qryAllocInsert.ParamByName('SPEC_PURPOSE').AsFloat := qryAllocInsert.ParamByName('AMOUNT').AsFloat
                          else
                            qryAllocInsert.ParamByName('SPEC_PURPOSE').Value := Null;
                          qryAllocInsert.ExecSQL;

                          MatterUpdate(qryAllocInsert.ParamByName('NMATTER').AsInteger, 'TRUST_BAL', qryAllocInsert.ParamByName('AMOUNT').AsFloat);
                          MatterUpdate(qryAllocInsert.ParamByName('NMATTER').AsInteger, 'CL_TRUST_BAL', qryAllocInsert.ParamByName('AMOUNT').AsFloat);
                          if qryAllocInsert.ParamByName('SPEC_PURPOSE').AsFloat <> 0 then
                            MatterUpdate(qryAllocInsert.ParamByName('NMATTER').AsInteger, 'SPEC_PURPOSE', qryAllocInsert.ParamByName('SPEC_PURPOSE').AsFloat);
//                        end;
                        qryLedger.Delete;
                     end; // While not EOF loop

                     qryJournal.ApplyUpdates;
                     qryLedger.CancelUpdates;
                     dmAxiom.uniInsight.Commit;

                  end
                  else
                  begin
                     bPostingFailed := True;
                     btnOK.Enabled := OKtoPost(False);
                     MsgErr('Posting failed!');
                  end;
      //          until qryLedger.IsEmpty;

                // Now save the general ledger items
      //          qryJournal.ApplyUpdates;
      //          qryLedger.CancelUpdates;
      //          dmAxiom.uniInsight.Commit;

              except
                on E: Exception do
                begin
                  if qryJournal.UpdatesPending then
                    qryJournal.CancelUpdates;
                  if qryLedger.UpdatesPending then
                    qryLedger.CancelUpdates;
                  dmAxiom.uniInsight.Rollback;
                  bPostingFailed := True;
                  MsgErr('Posting failed:' + chr(13) + chr(13) + E.Message);
                end;
              end;

              if not bPostingFailed then
              begin
                 if cbPrintJournal.Checked then
                 begin
                    try
                       Screen.Cursor := crSQLWait;
                       qryJournalPrint.close;
                       qryJournalPrint.ParamByName('njournal').AsInteger := iJournal;
                       qryJournalPrint.ParamByName('acct').AsString := cbBank.Text;  // dmAxiom.Entity;

                       ppLabel12.Text := 'Journal Matter Allocations';
                       plAllocPrint.DataSource :=  dsAllocPrint;
                       with qryAllocPrint do
                       begin
                          Close;
                          ParamByName('njournal').AsInteger := iJournal;
                          ParamByName('Acct').AsString := cbBank.Text;  // dmAxiom.Entity;
                          Open;
                       end;
                    finally
                       rptJournal.Print;
                    end;
                 end;

                 MsgInfo('Posted Journal ' + IntToStr(iJournal));
                 Self.Close;
              end;
            end
            else
            begin
              if (qryLedger.FieldByName('CREDIT').AsFloat = 0) and
                 (qryLedger.FieldByName('DEBIT').AsFloat = 0) then
              begin
                MessageDlg('Journal entry has 0 Debit and 0 Credit.  Please delete this record and re-try this transaction', mtError, [mbOK], 0);
                lblWarning.Caption := 'WARNING: Journal entry has 0 Debit and 0 Credit.  Please delete this record and re-try this transaction.';
              end
              else
              begin
                MessageDlg('Insufficient Funds in Trust.', mtError, [mbOK], 0);
                lblWarning.Caption := 'WARNING: Insufficient Funds in Trust.';
              end
            end;    //  end if-else
          end;
       end;
   end;
   {
     else
       begin
         MessageDlg('Insufficient Funds in Trust.', mtError, [mbOK], 0);
         lblWarning.Caption := 'WARNING: Insufficient Funds in Trust.';

       end;    //  end if-else
   }
end;


procedure TfrmTrustJournal.dbgrLedger12ColExit(Sender: TObject);
begin
{  case dbgrLedger1.SelectedIndex of
    colTYPE:
    if dbgrLedger1.Columns.Items[colTYPE].Field.Text <> '' then
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      dbgrLedger1.Columns.Items[colTYPE].Field.Text := Trim(dbgrLedger1.Columns.Items[colTYPE].Field.Text);
    end;
    colREFNO: // Display the long Description
    begin
      if dbgrLedger1.Columns.Items[colREFNO].Field.Text <> '' then
      begin
        // Check when user enters matter # manually
        // 25/08/2004 TH - Check if matter is valid for entity
        if not (IsValidMatterForEntity(dbgrLedger1.Columns.Items[colREFNO].Field.Text)) then
        begin
          MessageDlg('The matter #' + dbgrLedger1.Columns.Items[colREFNO].Field.Text + ' is not valid for the current Entity.', mtWarning, [mbOK], 0);
          qryLedger.Edit;
          dbgrLedger1.Columns.Items[colREFNO].Field.Text := '';
          dbgrLedger1.Columns.Items[colLONGDESC].Field.Text := '';
          Exit;
        end;

        // 24/08/2004 TH - Check if acct (bank) for matter is valid for selected bank
        if qryCheckMatter.Active = True then
          qryCheckMatter.Close;
        qryCheckMatter.ParamByName('p_fileid').AsString := dbgrLedger1.Columns.Items[colREFNO].Field.Text;
        qryCheckMatter.Open;

        if not qryCheckMatter.IsEmpty then
        begin
          if not (qryCheckMatter.FieldByName('ACCT').AsString = cbBank.Text) then
          begin
            MessageDlg('The matter #' + dbgrLedger1.Columns.Items[colREFNO].Field.Text + ' is not valid for the current Bank', mtWarning, [mbOK], 0);
            qryLedger.Edit;
            dbgrLedger1.Columns.Items[colREFNO].Field.Text := '';
            dbgrLedger1.Columns.Items[colLONGDESC].Field.Text := '';
            Exit;
          end
          else // If all is valid
          begin
            if not qryLedger.Modified then
              qryLedger.Edit;
            dbgrLedger1.Columns.Items[colREFNO].Field.Text := Trim(dbgrLedger1.Columns.Items[colREFNO].Field.Text);
            dbgrLedger1.Columns.Items[colREFNO].Field.Text := UpperCase(dbgrLedger1.Columns.Items[colREFNO].Field.Text);
            if (dbgrLedger1.Columns.Items[colTYPE].Field.Text = 'Matter') or (dbgrLedger1.Columns.Items[colTYPE].Field.Text = 'Protected') then
              qryLedger.FieldByName('LONGDESC').AsString := MatterString(dbgrLedger1.Columns.Items[colREFNO].Field.Text, 'MATLOCATE');
          end;
        end; // end of if not qryCheckMatter.IsEmpty then
      end;
    end;
    colREASON:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      QuickCode(dbgrLedger1.Columns.Items[colREASON].Field);
    end;
    colDEBIT, colCREDIT: // update the total amount
    begin
      UpdateTotal;
    end;
  end;      }
end;


procedure TfrmTrustJournal.qryLedgerAfterInsert(DataSet: TDataSet);
begin
  qryLedger.FieldByName('CREATED').AsDateTime := dtpDate.Date;  // dtpDate.DateTime;
  qryLedger.FieldByName('TYPE').AsString := 'Matter';
  qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
end;


procedure TfrmTrustJournal.dbgrLedger12Exit(Sender: TObject);
begin
  UpdateTotal;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmTrustJournal.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmTrustJournal.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;


procedure TfrmTrustJournal.popRemoveClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmTrustJournal.popEditClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Edit;
end;


procedure TfrmTrustJournal.FormCreate(Sender: TObject);
begin
  cTotalDebit := 0;
  cTotalCredit := 0;
  lblWarning.Caption := '';

  AddBanks(cbBank, 'T');
  if cbBank.Items.Count > 0 then
  begin
    cbBank.ItemIndex := 0;
    cbBank.OnClick(Self);
  end;

  qryLedger.Open;
  qryLedger.Insert;
end;


procedure TfrmTrustJournal.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = ' ') then
      Quickcode(tbDesc);
end;


procedure TfrmTrustJournal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryJournal.Close;
  qryLedger.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmTrustJournal.dbgrLedger12KeyPress(Sender: TObject; var Key: Char);
begin
//  if (dbgrLedger.SelectedIndex = colCREDIT) or (dbgrLedger.SelectedIndex = colDEBIT) then
//    if Key = #13 then
//      UpdateTotal;
end;

procedure TfrmTrustJournal.FormShow(Sender: TObject);
begin

{  AddBanks(cbBank, 'T');
  if cbBank.Items.Count > 0 then
  begin
    cbBank.ItemIndex := 0;
    cbBank.OnClick(Self);
  end;

  qryLedger.Open;
  qryLedger.Insert;    }

{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;
end;

procedure TfrmTrustJournal.dbgrLedger12Enter(Sender: TObject);
begin
   if qryLedger.IsEmpty then
      qryLedger.Insert;
end;

procedure TfrmTrustJournal.tbDescExit(Sender: TObject);
begin
   QuickCode(Sender);
   qryLedger.First;
   if not qryLedger.Modified then
      qryLedger.Edit;
   while (not qryLedger.Eof) do
   begin
      qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
      qryLedger.Next;
      qryLedger.Edit;
   end;
end;

procedure TfrmTrustJournal.cbBankClick(Sender: TObject);
begin
  Self.Color := BankColour(cbBank.Text);
  lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
end;

procedure TfrmTrustJournal.qryLedgerDEBITChange(Sender: TField);
begin
  if qryLedger.FieldByName('DEBIT').AsCurrency <> 0 then
    qryLedger.FieldByName('CREDIT').AsCurrency := 0;
end;

procedure TfrmTrustJournal.qryLedgerCREDITChange(Sender: TField);
begin
  if qryLedger.FieldByName('CREDIT').AsCurrency <> 0 then
    qryLedger.FieldByName('DEBIT').AsCurrency := 0;
end;


function TfrmTrustJournal.CheckAmountAgainstAlloc : Boolean;
var
  LDebit,
  LAmount : Double;

  LMatterTotal: TStringList;
begin
   LMatterTotal := TStringList.Create();
   try
      LAmount := 0.00;
{
  20.09.02 GG
  Removed to eliminate compiler hint

  liDebit := 0.00;
}

{
  Code modified 20.09.02 GG
  Needs to loop through all ledger entries checking every debit journal.
  Stops if one entry will overdraw trust for that matter
}
      qryLedger.First;
      // MGD - 22/9/02 - improved loop handling..
      Result := False;
      while(not qryLedger.EOF) do
      begin
         // if the debit field <> 0
         //  Check if this debit will overdraw trust
         // else
         // if the credit field <> 0
         //  Go to the next record
         // else
         //   Both debit and credit fields are zero
         //   Shouldn't get this, so return false, and let the user remove or correct this problem

         if (qryLedger.FieldByName('DEBIT').AsFloat <> 0)  then
         begin
            // MGD 23/9/02 Makes sure all alloc for matter is calculated.
            if(LMatterTotal.Values[qryLedger.FieldByName('REFNO').AsString] = '') then
               LDebit := 0
            else
               LDebit := StrToFloat(LMatterTotal.Values[qryLedger.FieldByName('REFNO').AsString]);
            LDebit := LDebit + qryLedger.FieldByName('DEBIT').AsFloat;
            LMatterTotal.Values[qryLedger.FieldByName('REFNO').AsString] := FloatToStr(LDebit);
            // MGD END..

      {
        Added 20.09.02 GG
        Safety first - close the query if it is already open.
      }
            if qryCheckAlloc.Active then
            qryCheckAlloc.Close;
      {
        Code added 19.9.02 GG
        This links the qryCheckAlloc to the matter that we want the journal to apply to.
        Without this the query returns a null result, and this method returns False.
      }
            qryCheckAlloc.ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
      {
        End 19.9.02  GG
      }
            qryCheckAlloc.Open;
            qryCheckAlloc.First;

            if (not qryCheckAlloc.Eof) then
               LAmount := qryCheckAlloc.FieldByName('Total_Amount').AsFloat;

      {
        Added 20.09.02 GG
        Should close the query after getting the value we want.
      }
            qryCheckAlloc.Close;

            if(LDebit > LAmount) then
               Exit;
            qryLedger.Next
         end
         else
         if (qryLedger.FieldByName('CREDIT').AsFloat <> 0)  then
            qryLedger.Next
         else
            Exit;
      end;
      Result := True;
   finally
      FreeAndNil(LMatterTotal);
   end;
end;

function TfrmTrustJournal.CheckClearedTrust: boolean;
var
  cTrust, cProtected: Currency;
  // 27/08/2004 TH - Commented out due to warnings
  // cPriorBalance: Currency;
  // sSQL, sSQLWhere : string;
  // sNCreditor, sLedger, sLedgerCode: string;
  // cAmount, iCheqReqAmount, iCheqReqTax: Current;
  // cMatterAmount: Currency;
  // MatterList : TStringList;
  // AmountList : TStringList;
  // n,
  // nAccount: integer;
  LMsg: String;
begin
   Result := True;
   if qryCheckAlloc.Active then
      qryCheckAlloc.Close;
   qryCheckAlloc.ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
   qryCheckAlloc.Open;

   qrySpecPurposeAllocs.Close;
   qrySpecPurposeAllocs.ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
   qrySpecPurposeAllocs.open;


   { 27/08/2004 TH - Commented out due to warnings
   cPriorBalance := qryCheckAlloc.FieldByName('PRIORBALANCE').AsCurrency;
   }

   cTrust := ClearTrust(qryLedger.FieldByName('REFNO').AsString);

   cProtected := qrySpecPurposeAllocs.FieldByName('SPEC_PURPOSE').AsCurrency;
//   cProtected := TableCurrency('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'SPEC_PURPOSE');
   if (qryLedger.FieldByName('TYPE').AsString = 'Matter') then
   begin
      if ((qryLedger.FieldByName('DEBIT').AsCurrency * -1) + cTrust) < 0 then
      begin
        if(cTrust >= 0) then
           LMsg := Format('There is %m in cleared Trust funds on File %s'#13#10'This will result in the Trust funds being overdrawn by %m',
                           [cTrust,qryLedger.FieldByName('REFNO').AsString, -(cTrust - qryLedger.FieldByName('Debit').AsCurrency) ])
         else
           LMsg := Format('The Trust funds for File %s is overdrawn by %m.'#13#10'This will result in the Trust funds being overdrawn by %m',
                           [qryLedger.FieldByName('REFNO').AsString, -(cTrust), -(cTrust - qryLedger.FieldByName('Debit').AsCurrency) ]);
         Application.MessageBox(PChar(LMsg),'Insight',MB_OK + MB_ICONEXCLAMATION);
         Result := False;
      end
      else
      if ((cTrust - Abs(qryLedger.FieldByName('DEBIT').AsCurrency)) - cProtected) < -0.001 then
      begin
        //check to see if it's a stat deposit transaction
        if not (TableInteger('BANK', 'ACCT', cbBank.Text, 'STAT_DEP_MATTER') = qryCheckAlloc.FieldbyName('NMATTER').AsInteger) then
           raise ETrustOverDraw.Create('Not enough unprotected Trust funds on File ' + qryLedger.FieldByName('REFNO').AsString);
           Result := False;
      end
      else if qryLedger.FieldByName('TYPE').AsString = 'Protected' then
      begin
         if Abs(qryLedger.FieldByName('Debit').AsCurrency) > cProtected then
            raise ETrustOverDraw.Create('There is only ' + Format('%m', [cProtected]) + ' in the Protected Trust Balance of File ' + qryLedger.FieldByName('REFNO').AsString);
            Result := False;
      end;
   end;

end;

procedure TfrmTrustJournal.cxGrid1DBTableView1REFNO1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   bValidBank: boolean;
begin
   bValidBank := False;
   if (tvLedgerTYPE.DataBinding.Field.Text = 'Matter') or
      (tvLedgerTYPE.DataBinding.Field.Text = 'Protected') then
   begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOk then
      begin
         bValidBank := IsValidTrustForMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) ;
         if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
         begin
            MessageDlg('The matter #' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' is Archived.  You cannot journal this matter.', mtWarning, [mbOK], 0);
            qryLedger.Edit;
            tvLedgerREFNO.DataBinding.Field.Text := '';
            tvLedgerLONGDESC.DataBinding.Field.Text := '';
         end
         // 23/08/2004 TH - Checks added to determine if matter is valid for
         // current entity and bank.
         else if not (IsValidMatterForEntity(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
         begin
            MessageDlg('The matter #' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' is not valid for the current Entity.', mtWarning, [mbOK], 0);
            qryLedger.Edit;
            tvLedgerREFNO.DataBinding.Field.Text := '';
            tvLedgerLONGDESC.DataBinding.Field.Text := '';
         end
         // Check if acct (bank) for matter is valid for selected bank
         else if bValidBank = False then  // if not (dmAxiom.qryMSearch.FieldByName('ACCT').AsString = cbBank.Text) then
         begin
            MessageDlg('The matter #' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' is not valid for the current Bank', mtWarning, [mbOK], 0);
            qryLedger.Edit;
            tvLedgerREFNO.DataBinding.Field.Text := '';
            tvLedgerLONGDESC.DataBinding.Field.Text := '';
         end
         else // If all is valid
         begin
            qryLedger.Edit;
            qryLedger.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            qryLedger.FieldByName('LONGDESC').AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            if qryLedger.FieldByName('REASON').AsString = '' then
               qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
         end;
      end;
    end;
end;

function TfrmTrustJournal.IsValidTrustForMatter(AFiledID: string): boolean;
begin
   with dmAxiom.qryValidateMatterTrust do
   begin
      Close;
      ParamByName('acct').AsString     := cbBank.Text;
      ParamByName('nmatter').AsInteger := StrToInt(MatterString(AFiledID, 'NMATTER'));
      Open;
      Result := (RecordCount > 0);
      Close;
   end;
end;

procedure TfrmTrustJournal.cxGrid1DBTableView1REFNO1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
   ARefNo: string;
begin
   ARefNo := UpperCase(string(DisplayValue));
   if (IsMatterArchived(ARefNo)) then
   begin
      MessageDlg('The matter #' + ARefNo + ' is Archived.  You cannot journal this matter.', mtWarning, [mbOK], 0);
      qryLedger.Edit;
      tvLedgerREFNO.DataBinding.Field.Text := '';
      tvLedgerLONGDESC.DataBinding.Field.Text := '';
   end
   else if IsValidTrustForMatter(ARefNo) = False then  //not (IsValidMatterForEntity(ARefNo)) then
   begin
      MessageDlg('The matter #' + ARefNo + ' is not valid for the current Entity.', mtWarning, [mbOK], 0);
      qryLedger.Edit;
      DisplayValue := '';
      tvLedgerLONGDESC.DataBinding.Field.Text := '';
      Exit;
   end
   else
      tvLedgerREFNO.DataBinding.Field.Text := ARefNo;

  // 24/08/2004 TH - Check if acct (bank) for matter is valid for selected bank
{   if qryCheckMatter.Active = True then
      qryCheckMatter.Close;
   qryCheckMatter.ParamByName('p_fileid').AsString := ARefNo;
   qryCheckMatter.Open;   }

   if IsValidTrustForMatter(ARefNo) = False {not qryCheckMatter.IsEmpty} then
   begin
      if not (qryCheckMatter.FieldByName('ACCT').AsString = cbBank.Text) then
      begin
         MessageDlg('The matter #' + DisplayValue + ' is not valid for the current Bank', mtWarning, [mbOK], 0);
         qryLedger.Edit;
         DisplayValue := '';
         tvLedgerLONGDESC.DataBinding.Field.Text := '';
         Exit;
      end;
   end
   else // If all is valid
      begin
         if not qryLedger.Modified then
            qryLedger.Edit;
         ARefNo := Trim(ARefNo);
         tvLedgerREFNO.DataBinding.Field.Text := ARefNo;
         if (tvLedgerTYPE.DataBinding.Field.Text = 'Matter') or (tvLedgerTYPE.DataBinding.Field.Text = 'Protected') then
            qryLedger.FieldByName('LONGDESC').AsString := MatterString(ARefNo,'TITLE')+ ' ' + MatterString(ARefNo,'SHORTDESCR')+' ' + ARefNo;
         if qryLedger.FieldByName('REASON').AsString = '' then
            qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
      end;
end;

procedure TfrmTrustJournal.dbgrLedgerExit(Sender: TObject);
begin
   UpdateTotal;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmTrustJournal.tvLedgerCREDITPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   AValue : double;
begin
   if (DisplayValue <> '') then
   begin
      AValue := Strtofloat(DisplayValue);
      if (AValue < 0) then
      begin
         ErrorText := 'Negative Values are not allowed.';
         Error := True;
      end;
   end;
end;

procedure TfrmTrustJournal.tvLedgerDEBITPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   AValue : double;
begin
  if (DisplayValue <> '') then
  begin
     AValue := Strtofloat(DisplayValue);
     if (AValue < 0) then
     begin
        ErrorText := 'Negative Values are not allowed.';
        Error := True;
     end;
  end;
end;

procedure TfrmTrustJournal.tvLedgerREASON1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   QuickCode(tvLedgerREASON.DataBinding.Field,DisplayValue);
end;

procedure TfrmTrustJournal.rptJournalBeforePrint(Sender: TObject);
begin
   lblCompanyJournals.Caption := SystemString('COMPANY');
   ppLabel22.Caption := Application.ExeName;
   lblEntity.Caption := 'For entity: ' + dmAxiom.EntityName;
end;

end.

