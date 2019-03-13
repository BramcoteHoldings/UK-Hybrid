unit PettyCash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  ExtCtrls, NumberEdit, MemDS, OracleUniProvider, Uni, DateTimeAccount, DBAccess,
  dxGDIPlusClasses, dxDPIAwareUtils;

const
  colLEDGER = 0;
  colLONGDESC = 1;
  colMATTER = 2;
  colREASON = 3;
  colAMOUNT = 4;
  colTAXCODE = 5;
  colTAX = 6;

type
  EPostError = class(Exception);

  TfrmPettyCash = class(TForm)
    Label2: TLabel;
    dtpDate: TDateTimeAccount;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    dsLedger: TUniDataSource;
    dbgrLedger: TDBGrid;
    qryLedger: TUniQuery;
    popGrid: TPopupMenu;
    popDelete: TMenuItem;
    popEdit: TMenuItem;
    tbDesc: TEdit;
    Label8: TLabel;
    tbPettyCash: TEdit;
    Label3: TLabel;
    btnLedger: TBitBtn;
    qryJournal: TUniQuery;
    qrySundry: TUniQuery;
    popGridDateStamp: TMenuItem;
    lblPettyCashDescr: TLabel;
    Label1: TLabel;
    tbDefault: TEdit;
    btnDefault: TBitBtn;
    lblDefaultDescr: TLabel;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    lblTax: TLabel;
    lblBalance: TLabel;
    qryLedgerTYPE: TStringField;
    qryLedgerREFNO: TStringField;
    qryLedgerLONGDESC: TStringField;
    qryLedgerREASON: TStringField;
    qryLedgerAMOUNT: TFloatField;
    qryLedgerDEBIT: TFloatField;
    qryLedgerCREDIT: TFloatField;
    qryLedgerUNIQUEID: TFloatField;
    qryLedgerCREATED: TDateTimeField;
    qryLedgerUNITS: TIntegerField;
    qryLedgerRATE: TFloatField;
    qryLedgerAUTHOR: TStringField;
    qryLedgerBILLED: TStringField;
    qryLedgerTAXCODE: TStringField;
    qryLedgerTAX: TFloatField;
    qryLedgerTAXRATE: TFloatField;
    qryLedgerWITHHOLD: TStringField;
    qryLedgerSUNDRYTYPE: TStringField;
    qryLedgerRCPTNO: TStringField;
    qryLedgerROWID: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure dbgrLedgerEditButtonClick(Sender: TObject);
    procedure popDeleteClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure btnLedgerClick(Sender: TObject);
    procedure popGridDateStampClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrLedgerColExit(Sender: TObject);
    procedure btnDefaultClick(Sender: TObject);
    procedure tbDefaultExit(Sender: TObject);
    procedure tbPettyCashExit(Sender: TObject);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure qryLedgerTAXCODEChange(Sender: TField);
    procedure qryLedgerAMOUNTChange(Sender: TField);
  private
    { Private declarations }
    Balance, Tax, TotalAmt, WithholdTax: currency;
    DefaultTax: string;
    function OKtoPost : Boolean;
    procedure UpdateTotal;
    procedure CalcTax;
  public
    { Public declarations }

  end;


implementation

uses
  Desktop, LSearch, AxiomData, MiscFunc, MSearch, Process, citfunc,glComponentUtil;

{$R *.DFM}


procedure TfrmPettyCash.FormShow(Sender: TObject);
begin
  qryLedger.Open;
  
  Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;

{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

  tbDesc.Text := SettingLoadString('Petty Cash', 'Descr');
  tbPettyCash.Text := SettingLoadString('Petty Cash', 'Ledger');
  tbPettyCash.OnExit(Self);
  tbDefault.Text := SettingLoadString('Petty Cash', 'Expense');
  tbDefault.OnExit(Self);
end;


procedure TfrmPettyCash.btnCancelClick(Sender: TObject);
begin
  Self.Close;
//  RemoveFromDesktop(Self);
end;


procedure TfrmPettyCash.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
//  if DeletingItems then Exit;		{ don't calculate if deleting all items }
  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
  try
    qryLedger.DisableControls;
    qryLedger.First;
    TotalAmt := 0;			{ use temp for efficiency }
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
end;


function TfrmPettyCash.OKtoPost : Boolean;
var
  bmPrevRecord: TBookmark;
  sTmp : String;
  bOKtoPost, bErrorFound : boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= True;

  sTmp := '';
  if tbPettyCash.Text = '' then
    sTmp := sTmp + '       Petty Cash Ledger Code' + Chr(13);
  if tbDesc.Text = '' then
    sTmp := sTmp + '       Reason' + Chr(13);
  if qryLedger.isEmpty then
    sTmp := sTmp + '       Transactions' + Chr(13);

  // Make sure all ledger codes are entered
  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
  try
    qryLedger.DisableControls;
    qryLedger.First;
    bErrorFound := False;
    while not qryLedger.EOF and not bErrorFound do
    begin
      if qryLedger.FieldByName('REFNO').AsString = '' then
      begin
        sTmp := sTmp + '       Complete or Delete Ledger allocations' + Chr(13);
        bErrorFound := True;
      end;
      qryLedger.Next;
    end;
  finally
    qryLedger.EnableControls;
    if bmPrevRecord <> nil then
    begin
      qryLedger.GoToBookmark(bmPrevRecord);
      qryLedger.FreeBookmark(bmPrevRecord);
    end;
  end;

  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Petty Cash Batch details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False
  end;
  result:= bOKtoPost;
end;


procedure TfrmPettyCash.btnOKClick(Sender: TObject);
var
  sJournalMessage : string;
  iJournal : integer;
//  frmProcess : TfrmProcess;
  bPostingFailed : boolean;
  glComponentSetup : TglComponentSetup;
  glInstance : TglComponentInstance ;
  sLedgerKey,sLedgerKeyDr : String;
begin

  glComponentSetup := dmAxiom.getGlComponents;

  if qryLedger.Modified then
    qryLedger.Post;
  if OKtoPost then
  begin
    if (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]) then
    begin
  {
    Modified 25.10.2002 GG
    Removed compiler warning
  }
      bPostingFailed:= False;
      try
        // Tell the user what we are doing
  {      frmProcess := TfrmProcess.Create(Self);
        frmProcess.lblProcess.Caption := 'Posting Petty Cash Transactions';
        qryLedger.Last;
        frmProcess.pbProcess.Max := qryLedger.Recno;
        frmProcess.Show;
        Application.ProcessMessages;
  }
        qryJournal.Open;
        qrySundry.Open;
        sJournalMessage := '';
  //      iSundryCount := 0;
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;

        // Set up a journal
        iJournal := GetJournal;
        if iJournal = -1 then
          Raise EPostError.Create('Could not get next Journal number for Entity ' + dmAxiom.Entity);

        qryJournal.Insert;
        qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
        qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
        qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.DateTime;
        qryJournal.FieldByName('REASON').AsString := tbDesc.Text;
        qryJournal.FieldByName('TRUST').AsString := 'G';
        qryJournal.FieldByName('AMOUNT').AsCurrency := TotalAmt;
        qryJournal.Post; // Puts journal into cached buffer

        qryLedger.First;
        while not qryLedger.EOF do
        begin

          // Now load the transactions
          // frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
          if MatterIsCurrent(qryLedger.FieldByName('TYPE').AsString) then
          begin

           
          // lookup the ledger code cased on the value entered
          glInstance := dmAxiom.getGlComponents.parseString(qryLedger.FieldByName('REFNO').AsString,true);

          if not glInstance.valid then
          begin
                // something has gone very wrong !
                raise Exception.create('Error invalid ledger key');
          end;

            PostLedger(dtpDate.DateTime
              , 0 - qryLedger.FieldByName('AMOUNT').AsCurrency
              , 0
              , IntToStr(iJournal)
              , 'JOURNAL'
              , iJournal
              , qryLedger.FieldByName('REASON').AsString
              ,glInstance.ledgerKey
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
              glInstance.free;

            // Add a Sundry if necessary
            if qryLedger.FieldByName('TYPE').AsString <> '' then
            begin
              qrySundry.Insert;
              qrySundry.FieldByName('NSUNDRY').AsString := dmAxiom.GetSeqNumber('SQNC_NSUNDRY');
              qrySundry.FieldByName('CREATED').AsDateTime := dtpDate.DateTime;
              qrySundry.FieldByName('AMOUNT').AsCurrency := qryLedger.FieldByname('AMOUNT').AsCurrency;
              qrySundry.FieldByName('TYPE').AsString := '8';
              qrySundry.FieldByName('ACCT').AsString := dmAxiom.Entity;
              qrySundry.FieldByName('BILLED').AsString := 'N';
              qrySundry.FieldByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
              qrySundry.FieldByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('TYPE').AsString, 'NMATTER');
              qrySundry.FieldByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('TYPE').AsString, 'NCLIENT');
              qrySundry.FieldByName('FILEID').AsString := qryLedger.FieldByName('TYPE').AsString;
              qrySundry.FieldByName('NMEMO').AsInteger := 0;
              qrySundry.FieldByName('PRIVATE').AsString := 'N';
              qrySundry.Post;
    //              iSundryCount := iSundryCount + 1;
            end;

            {post components}
            sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');


            PostLedger(dtpDate.DateTime
              , 0 - qryLedger.FieldByName('TAX').AsFloat
              , 0
              , IntToStr(iJournal)
              , 'JOURNAL'
              , iJournal
              , tbDesc.Text
              , sLedgerKey
              , ''
              , -1
              , ''
              , qryLedger.FieldByName('TAXCODE').AsString);
          end
          else
            raise Exception.Create('Matter ' + qryLedger.FieldByName('TYPE').AsString + ' is not current');

          qryLedger.Next;
        end; // While not EOF loop

        // lookup the ledger code cased on the value entered
        glInstance := dmAxiom.getGlComponents.parseString(tbPettyCash.Text,true);


        if not glInstance.valid then
        begin
                // something has gone very wrong !
                raise Exception.create('Error invalid ledger key');
        end;


        // Post a transaction to petty cash
        PostLedger(dtpDate.DateTime
          , TotalAmt
          , 0
          , IntToStr(iJournal)
          , 'JOURNAL'
          , iJournal
          , tbDesc.Text
          , glInstance.ledgerKey
          , ''
          , -1
          , ''
          , qryLedger.FieldByName('TAXCODE').AsString);
          glInstance.free;

        sJournalMessage := sJournalMessage + 'Posted Journal ' + IntToStr(iJournal) + ' for ' + Format('%m', [TotalAmt]) + ' on ' + FormatDateTime('ddddd', dtpDate.DateTime) + #13;

        // Update the Matter with Sundry balances
  //      frmProcess.lblProcess.Caption := 'Updating Matters';
  //      frmProcess.pbProcess.Max := iSundryCount;
  //      frmProcess.Show;
  //      Application.ProcessMessages;

        qrySundry.First;
        while not qrySundry.EOF do
        begin
  //        frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
          if not MatterUpdate(qrySundry.FieldByName('NMATTER').AsInteger, 'UNBILL_SUND', qrySundry.FieldByName('AMOUNT').AsCurrency) then
            MsgErr('Matter Sundry update failed');
          qrySundry.Next;
        end;

        // Now save the general ledger items
        qryJournal.ApplyUpdates;
        qrySundry.ApplyUpdates;
        qryLedger.CancelUpdates;

    
      CheckLedgerTotal; 

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
        SettingSave('Petty Cash', 'Ledger', tbPettyCash.Text);
        SettingSave('Petty Cash', 'Expense', tbDefault.Text);
        SettingSave('Petty Cash', 'Descr', tbDesc.Text);

        dmAxiom.uniInsight.Commit;

        MsgInfo(sJournalMessage);
        Self.Close;
 //       RemoveFromDesktop(Self);
      end;
    end;
  end
end;


procedure TfrmPettyCash.qryLedgerAfterInsert(DataSet: TDataSet);
begin
  with qryLedger do
  begin
    qryLedger.FieldByName('CREATED').AsDateTime := dtpDate.Date;
    qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
    qryLedger.FieldByName('REFNO').AsString := tbDefault.Text;
    qryLedger.FieldByName('LONGDESC').AsString := lblDefaultDescr.Caption;
    qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
  end;
end;


procedure TfrmPettyCash.dbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
end;


procedure TfrmPettyCash.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;


procedure TfrmPettyCash.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;


procedure TfrmPettyCash.dbgrLedgerEditButtonClick(Sender: TObject);
begin
   if dbgrLedger.SelectedIndex = colMATTER then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOk then
      begin
         if not qryLedger.Modified then
            qryLedger.Edit;
         qryLedger.FieldByName('TYPE').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
         if qryLedger.FieldByName('REASON').AsString = '' then
            qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
      end;
   end;
   if dbgrLedger.SelectedIndex = colLEDGER then
   begin
      if not FormExists(frmLedgerSearch) then
         Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
      if frmLedgerSearch.ShowModal = mrOk then
      begin
         if not qryLedger.Modified then
            qryLedger.Edit;
         qryLedger.FieldByName('REFNO').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
         qryLedger.FieldByName('LONGDESC').AsString := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
         if qryLedger.FieldByName('REASON').AsString = '' then
            qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
      end;
   end;
end;


procedure TfrmPettyCash.popDeleteClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmPettyCash.popEditClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Edit;
end;

procedure TfrmPettyCash.btnLedgerClick(Sender: TObject);
begin
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
   if frmLedgerSearch.ShowModal = mrOk then
   begin
      tbPettyCash.Text := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      lblPettyCashDescr.Caption := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
   end;
end;



procedure TfrmPettyCash.popGridDateStampClick(Sender: TObject);
begin
  if not qryLedger.Modified then
    qryLedger.Edit;
  qryLedger.FieldByName('CREATED').AsDateTime := dtpDate.Date;
end;

procedure TfrmPettyCash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLedger.Close;
  qryJournal.Close;
  qrySundry.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmPettyCash.dbgrLedgerColExit(Sender: TObject);
var
glInstance : TglComponentInstance ;
begin
  case dbgrLedger.SelectedIndex of
    colLEDGER: // Display the long Description
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;

      if dbgrLedger.Columns.Items[colLEDGER].Field.Text <> '' then
      begin

      // lookup the ledger code based on the value entered
        glInstance := dmAxiom.getGlComponents.parseString(dbgrLedger.Columns.Items[colLEDGER].Field.Text,true);
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
                dbgrLedger.Columns.Items[colLEDGER].Field.Text := glInstance.fullCode;
                qryLedger.FieldByName('LONGDESC').AsString := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
        end;
      end;
    end;
    colREASON:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      QuickCode(dbgrLedger.Columns.Items[colREASON].Field);
    end;
    colMATTER:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;
      dbgrLedger.Columns.Items[colMATTER].Field.Text := UpperCase(Trim(dbgrLedger.Columns.Items[colMATTER].Field.Text));
    end;
    colAMOUNT : // update the total amount
      UpdateTotal;
  end;

end;

procedure TfrmPettyCash.btnDefaultClick(Sender: TObject);
begin
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
   if frmLedgerSearch.ShowModal = mrOk then
   begin
      tbDefault.Text := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      lblDefaultDescr.Caption := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
   end;
end;

procedure TfrmPettyCash.tbDefaultExit(Sender: TObject);
var
  sTmp : string;
  glInstance : TglComponentInstance ;
begin

   if tbDefault.Text <> '' then
   begin
      // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(tbDefault.Text,true);

      if not glInstance.valid then
      begin
         glInstance.displayError;
         tbDefault.Text := '';
         lblDefaultDescr.Caption := '';
         glInstance.free;
         tbDefault.SetFocus;
      end
      else
      begin
        tbDefault.Text := glInstance.fullCode;
        lblDefaultDescr.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
      end;

   end;
end;

procedure TfrmPettyCash.tbPettyCashExit(Sender: TObject);
var
  sTmp : string;
  glInstance : TglComponentInstance ;
begin

   if tbPettyCash.Text <> '' then
   begin

      // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(tbPettyCash.Text,true);

      if not glInstance.valid then
      begin
         glInstance.displayError;
         tbPettyCash.Text := '';
         lblPettyCashDescr.Caption := '';
         glInstance.free;
         tbPettyCash.SetFocus;
      end
      else
      begin
        tbPettyCash.Text := glInstance.fullCode;
        lblPettyCashDescr.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
      end;

   end;

end;

procedure TfrmPettyCash.dbgrLedgerEnter(Sender: TObject);
begin
  if qryLedger.IsEmpty then
    qryLedger.Insert;
end;

procedure TfrmPettyCash.dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
begin
  if dbgrLedger.SelectedIndex = colAMOUNT then
    if Key = #13 then
      UpdateTotal;
end;

procedure TfrmPettyCash.FormCreate(Sender: TObject);
begin
  TotalAmt := 0;
  Balance := 0;
  Tax := 0;
  DefaultTax := dmAxiom.DefaultTax;;

  if not qryLedger.Active then
    qryLedger.Open;

  StringPopulate(dbgrLedger.Columns[colTAXCODE].PickList, 'TAXTYPE', 'CODE');
end;

procedure TfrmPettyCash.CalcTax;
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

procedure TfrmPettyCash.qryLedgerTAXCODEChange(Sender: TField);
begin
  qryLedger.FieldByName('WITHHOLD').AsString := TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'WITHHOLDING');
  CalcTax;
end;

procedure TfrmPettyCash.qryLedgerAMOUNTChange(Sender: TField);
begin
  CalcTax;
end;

end.

