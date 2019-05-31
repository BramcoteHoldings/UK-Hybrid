unit JournalMatter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Db, Menus, Buttons,
  citfunc,ExtCtrls, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxButtonEdit, cxTextEdit, cxCurrencyEdit, cxMaskEdit,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, cxContainer, cxGroupBox, cxRadioGroup,
  cxDropDownEdit, Variants, cxLookAndFeels, cxCalendar,
  EnforceCustomDateEdit, dxCore, cxNavigator, cxDateUtils,
  dxGDIPlusClasses, dxDPIAwareUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

const
  colREFNO = 0;
  colLONGDESC = 1;
  colAUTHOR = 2;
  colREASON = 3;
  colSUNDRYTYPE = 4;
  colDEBIT = 5;
  colCREDIT = 6;
  colTAXCODE = 7;
  colTAX = 8;

  typDISB = 0;
//  typSUND = 1;
  typFEES = 1;
  typDEBT = 4;

type
  EPostError = class(Exception);

  TfrmJournalMatter = class(TForm)
    Label2: TLabel;
    Label8: TLabel;
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
    qrySundryInsert: TUniQuery;
    qryFeeInsert: TUniQuery;
    lblTaxCredit: TLabel;
    Label1: TLabel;
    lblTaxDebit: TLabel;
    rgType: TcxRadioGroup;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerLONGDESC: TcxGridDBColumn;
    tvLedgerAUTHOR: TcxGridDBColumn;
    tvLedgerREASON: TcxGridDBColumn;
    tvLedgerSUNDRYTYPE: TcxGridDBColumn;
    tvLedgerDEBIT: TcxGridDBColumn;
    tvLedgerCREDIT: TcxGridDBColumn;
    tvLedgerTAXCODE: TcxGridDBColumn;
    tvLedgerTAX: TcxGridDBColumn;
    chkNoExit: TcxCheckBox;
    tbDesc: TcxTextEdit;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dtpDate: TEnforceCustomDateEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure dbgrLedgerEditButtonClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrLedgerColExit(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure tbDescExit(Sender: TObject);
    procedure qryLedgerDEBITChange(Sender: TField);
    procedure qryLedgerCREDITChange(Sender: TField);
    procedure rgTypeClick(Sender: TObject);
    procedure dbgrLedgerColEnter(Sender: TObject);
    procedure qryLedgerTAXCODEChange(Sender: TField);
    procedure cxGrid1DBTableView1REFNOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1DEBITPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1CREDITPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerREFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
    TotalDebit, TotalCredit: Double;
    TaxDebit, TaxCredit, WithholdTax: Double;
    DefaultTax: string;
    
    function OKtoPost(bShowError : boolean) : Boolean;
//    function IsValidJournalForCurrentEntity : Boolean;

    procedure UpdateTotal;
    procedure CalcTax;

  public
    { Public declarations }

  end;


implementation

uses
  AxiomData, MiscFunc, MSearch,glComponentUtil;

{$R *.DFM}


procedure TfrmJournalMatter.btnCancelClick(Sender: TObject);
begin
  Self.Close;
//   RemoveFromDesktop(Self);
end;


procedure TfrmJournalMatter.dbgrLedgerEditButtonClick(Sender: TObject);
begin
{  if dbgrLedger.SelectedIndex = colREFNO then
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
  end;     }
end;


procedure TfrmJournalMatter.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
  try
    qryLedger.DisableControls;
    qryLedger.First;
    TotalDebit := 0;			{ use temp for efficiency }
    TotalCredit := 0;			{ use temp for efficiency }
    TaxDebit := 0;
    TaxCredit := 0;
    WithholdTax := 0;
    while not qryLedger.EOF do
    begin
      TotalDebit := TotalDebit + qryLedger.FieldByName('DEBIT').AsCurrency;
      TotalCredit := TotalCredit + qryLedger.FieldByName('CREDIT').AsCurrency;
      if qryLedger.FieldByName('DEBIT').AsCurrency > 0 then
        TaxDebit := TaxDebit + qryLedger.FieldByName('TAX').AsCurrency;
      if qryLedger.FieldByName('CREDIT').AsCurrency > 0 then
        TaxCredit := TaxCredit + qryLedger.FieldByName('TAX').AsCurrency;
      if qryLedger.FieldByName('CREDIT').AsCurrency+qryLedger.FieldByName('DEBIT').AsCurrency = 0 then
      begin
      // made the test here to be <> rather than < or >
      // AES 27/08/2009
        if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
          TaxDebit := TaxDebit + Abs(qryLedger.FieldByName('TAX').AsCurrency);
        if qryLedger.FieldByName('TAX').AsCurrency <> 0 then
          TaxCredit := TaxCredit + qryLedger.FieldByName('TAX').AsCurrency;
      end;
      if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
        WithholdTax := WithholdTax + qryLedger.FieldByName('TAX').AsCurrency;
      qryLedger.Next;
    end;
    lblTotalDebit.Caption := Format('%m', [TotalDebit]);
    lblTotalCredit.Caption := Format('%m', [TotalCredit]);
   // AES 10/6/2005
   // AES 09/06/2009  commented the code 
//    TaxDebit := TaxCalc(TotalDebit, '' ,qryLedger.FieldByName('TAXCODE').AsString, Now);
//    TaxCredit := TaxCalc(TotalCredit, '' ,qryLedger.FieldByName('TAXCODE').AsString, Now);

    lblTaxDebit.Caption := Format('%m', [TaxDebit]);
    lblTaxCredit.Caption := Format('%m', [TaxCredit]);

 //   lblTaxDebit.Caption := Format('%m', [TaxDebit]);
 //   lblTaxCredit.Caption := Format('%m', [TaxCredit]);
  finally
     qryLedger.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qryLedger.GoToBookmark(bmPrevRecord);
       qryLedger.FreeBookmark(bmPrevRecord);
     end;
  end;
end;


function TfrmJournalMatter.OKtoPost(bShowError : boolean) : Boolean;
var
  sTmp : String;
  bOKtoPost: boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= True;

  sTmp := '';
  if ((TotalDebit+TaxDebit) <> (TotalCredit+TaxCredit)) then
    sTmp := sTmp + '       Journal does not balance' + #13;
  if sTmp <> '' then
  begin
    if bShowError then
      MsgInfo('Please complete the following Journal details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False
  end;
  result:= bOKtoPost;
end;


procedure TfrmJournalMatter.btnOKClick(Sender: TObject);
var
  iJournal : integer;
  bFirst, bPostingFailed : boolean;
  sMatter, sLedger : string;
  glComponentSetup : TglComponentSetup;
  sLedgerKey,sLedgerKeyDr : String;
  Row: integer;
begin
  glComponentSetup := dmAxiom.getGlComponents;

  // clean up grid prior to doing anything.
  for Row := 0 to tvLedger.DataController.RecordCount - 1 do
  begin
     tvLedger.DataController.FocusedRowIndex := Row;
     if tvLedger.DataController.GetDisplayText(Row, tvLedgerREFNO.Index) = '' then
        tvLedger.DataController.DeleteFocused;
  end;

  if (IsValidBankForEntity(MatterString(qryLedger.FieldByName('REFNO').AsString, 'ACCT'))) then  //(IsValidJournalForCurrentEntity)
    begin
      iJournal:= 0;
      if qryLedger.Modified then
        qryLedger.Post;
      if OKtoPost(True) then
      begin
        if (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]) then
        begin
            // Tell the user what we are doing
      {      frmProcess := TfrmProcess.Create(Self);
            frmProcess.lblProcess.Caption := 'Posting Petty Cash Transactions';
            qryLedger.Last;
            frmProcess.pbProcess.Max := qryLedger.Recno;
            frmProcess.Show;
            Application.ProcessMessages;
      }
          bPostingFailed := False;
          if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;

          case rgType.ItemIndex of
            typDISB, typDEBT : // Disbursements and Debtors create a journal
              begin
                try
                  qryJournal.Open;

                  qryLedger.First;
                  bFirst := True;
                  while not qryLedger.EOF do
                  begin
                    if bFirst then
                    begin
                      bFirst := False;
                      // Set up a journal
                      iJournal := GetJournal;
                      if iJournal = -1 then
                        Raise EPostError.Create('Could not get next Journal number for Entity ' + dmAxiom.Entity);

                      qryJournal.Insert;
                      qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
                      qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
                      qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                      qryJournal.FieldByName('REASON').AsString := tbDesc.Text;
                      qryJournal.FieldByName('TRUST').AsString := 'G';
                      if rgType.ItemIndex = typDEBT then
                        qryJournal.FieldByName('TYPE').AsString := '1'
                      else
                        qryJournal.FieldByName('TYPE').AsString := '2';
                      qryJournal.FieldByName('AMOUNT').AsCurrency := TotalDebit;
                      qryJournal.Post; // Puts journal into cached buffer

                    end;

                    // frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
                    // Create an Alloc for this transaction
                    with qryAllocInsert do
                    begin
                      if qryLedger.FieldByName('DEBIT').AsCurrency > 0 then
                      begin
                        ParamByName('AMOUNT').AsFloat := 0 - qryLedger.FieldByName('DEBIT').AsFloat;
                        ParamByName('TAX').AsFloat := 0 - qryLedger.FieldByName('TAX').AsFloat;
                      end
                      else
                      begin
                        ParamByName('AMOUNT').AsFloat := qryLedger.FieldByName('CREDIT').AsCurrency;
                        ParamByName('TAX').AsFloat := qryLedger.FieldByName('TAX').AsCurrency;
                      end;
                      ParamByName('ACCT').AsString := dmAxiom.Entity;
                      ParamByName('CREATED').AsDateTime := dtpDate.Date;
                      ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
                      ParamByName('REFNO').AsString := IntToStr(iJournal);
                      ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
                      ParamByName('NJOURNAL').AsInteger := iJournal;
                      ParamByName('TYPE').AsString := 'J' + qryJournal.FieldByName('TYPE').AsString;
                      ParamByName('PAYER').AsString := 'Journal ' + IntToStr(iJournal);
                      ParamByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                      ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
                      ParamByName('NALLOC').AsInteger := GetSeqnum('NALLOC');
                      ParamByName('CLIENT_NAME').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'TITLE');
                      ParamByName('MATTER_DESC').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'SHORTDESCR');
                      ParamByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
                      ParamByName('SUNDRYTYPE').AsString := qryLedger.FieldByName('SUNDRYTYPE').AsString;
                      ExecSQL;
                      case rgType.ItemIndex of
                        typDISB :
                        begin
                          sMatter := 'UNBILL_DISB';
                          sLedger := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR');
                        end;
                        typDEBT :
                        begin
                          sMatter := 'DEBTORS';
                          sLedger := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_DR');
                        end;
                      end;
                      {post components}
                      sLedgerKey :=  glComponentSetup.buildLedgerKey('',sLedger,'',true,'');

                      PostLedger(dtpDate.Date
                        , 0 - ParamByName('AMOUNT').AsFloat
                        , 0
                        , ParamByName('REFNO').AsString
                        , 'JOURNAL'
                        , iJournal
                        , qryLedger.FieldByName('LONGDESC').AsString
                        , sLedgerKey
                        , MatterString(qryLedger.FieldByName('REFNO').AsString, 'AUTHOR')
                        , -1
                        , ''
                        , qryLedger.FieldByName('TAXCODE').AsString);

                      MatterUpdate(ParamByName('NMATTER').AsInteger, sMatter, 0 - ParamByName('AMOUNT').AsFloat);
                    end;

                    qryLedger.Next;
                  end; // While not EOF loop

                  // Now save the general ledger items
                  qryJournal.ApplyUpdates;
                  qryLedger.CancelUpdates;
                  dmAxiom.uniInsight.Commit;
                  MsgInfo('Posted Journal ' + IntToStr(iJournal));
                  //Self.Close;

                except
                  on E: Exception do
                  begin
                    bPostingFailed := True;
                    if qryJournal.UpdatesPending then
                      qryJournal.CancelUpdates;
                    if qryLedger.UpdatesPending then
                      qryLedger.CancelUpdates;
                    dmAxiom.uniInsight.Rollback;
                    MsgErr('Posting failed:' + chr(13) + chr(13) + E.Message);
                  end;
                end;
              end;

           { typSUND : // Sundries create sundries
              begin
                try
                  qryLedger.First;
                  while not qryLedger.EOF do
                  begin
                    with qrySundryInsert do
                    begin
                      ParamByName('ACCT').AsString := dmAxiom.Entity;
                      ParamByName('CREATED').AsDateTime := dtpDate.DateTime;
                      if qryLedger.FieldByName('DEBIT').AsCurrency > 0 then
                      begin
                        ParamByName('AMOUNT').AsFloat := qryLedger.FieldByName('DEBIT').AsFloat;
                        ParamByName('TAX').AsFloat := qryLedger.FieldByName('TAX').AsFloat;
                      end
                      else
                      begin
                        ParamByName('AMOUNT').AsFloat := 0 - qryLedger.FieldByName('CREDIT').AsFloat;
                        ParamByName('TAX').AsFloat := 0 - qryLedger.FieldByName('TAX').AsFloat;
                      end;
                      ParamByName('DESCR').AsString := tbDesc.Text;
                      ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
                      ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
                      ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;

                      ExecSQL;

                      MatterUpdate(ParamByName('NMATTER').AsInteger, 'UNBILL_SUND', ParamByName('AMOUNT').AsFloat);
                    end;

                    qryLedger.Next;
                  end;

                  qryLedger.CancelUpdates;

                  dmAxiom.uniInsight.Commit;

                except
                  on E: Exception do
                  begin
                    bPostingFailed := True;
                    dmAxiom.uniInsight.Rollback;
                    MsgErr('Posting Failed' + #13 + #13 + E.Message);
                  end;
                end;
              end;   }

            typFEES :
              begin
                // Billed fees creates fee items which are billed and a journal
                // to transfer the amounts in the general ledger
                try
                  qryJournal.Open;

                  qryLedger.First;
                  bFirst := True;
                  while not qryLedger.EOF do
                  begin
                    if bFirst then
                    begin
                      bFirst := False;
                      // Set up a journal
                      iJournal := GetJournal;
                      if iJournal = -1 then
                        Raise EPostError.Create('Could not get next Journal number for Entity ' + dmAxiom.Entity);

                      qryJournal.Insert;
                      qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
                      qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
                      qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                      qryJournal.FieldByName('REASON').AsString := tbDesc.Text;
                      qryJournal.FieldByName('TRUST').AsString := 'G';
                      qryJournal.FieldByName('TYPE').AsString := '1';
                      qryJournal.FieldByName('AMOUNT').AsCurrency := TotalDebit;
                      qryJournal.Post; // Puts journal into cached buffer

                    end;

                    // frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
                    // Create an Alloc for this transaction
                    with qryFeeInsert do
                    begin
                      ParamByName('CREATED').AsDateTime := dtpDate.Date;
                      if qryLedger.FieldByName('DEBIT').AsCurrency > 0 then
                      begin
                        ParamByName('AMOUNT').AsFloat := 0 - qryLedger.FieldByName('DEBIT').AsFloat;
                        ParamByName('TAX').AsFloat := 0 - qryLedger.FieldByName('TAX').AsFloat;
                      end
                      else
                      begin
                        ParamByName('AMOUNT').AsFloat := qryLedger.FieldByName('CREDIT').AsFloat;
                        ParamByName('TAX').AsFloat := qryLedger.FieldByName('TAX').AsFloat;
                      end;
                      ParamByName('AUTHOR').AsString := qryLedger.FieldByName('AUTHOR').AsString;
                      ParamByName('PARTNER').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'PARTNER');
                      ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
                      ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', ParamByName('AUTHOR').AsString, 'DEPT');
                      ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', ParamByName('AUTHOR').AsString, 'TYPE');
                      ParamByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                      ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
                      ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
                      ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
                      ExecSQL;

                      {post components}
                      sLedgerKey :=  glComponentSetup.buildLedgerKey(qryLedger.FieldByName('REFNO').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_CR'),qryLedger.FieldByName('AUTHOR').AsString,false,'');


                      PostLedger(dtpDate.Date
                        , 0 - ParamByName('AMOUNT').AsFloat
                        , 0
                        , IntToStr(iJournal)
                        , 'JOURNAL'
                        , iJournal
                        , qryLedger.FieldByName('LONGDESC').AsString
                        , sLedgerKey
                        , qryLedger.FieldByName('AUTHOR').AsString
                        , -1
                        , ''
                        , qryLedger.FieldByName('TAXCODE').AsString);

                      MatterUpdate(ParamByName('NMATTER').AsInteger, 'DEBTORS', 0 - ParamByName('AMOUNT').AsFloat);
                    end;

                    qryLedger.Next;
                  end; // While not EOF loop

                  // Now save the general ledger items
                  qryJournal.ApplyUpdates;
                  qryLedger.CancelUpdates;

                  CheckLedgerTotal;

                  dmAxiom.uniInsight.Commit;
                  MsgInfo('Posted Journal ' + IntToStr(iJournal));
                  //Self.Close;

                except
                  on E: Exception do
                  begin
                    bPostingFailed := True;
                    if qryJournal.UpdatesPending then
                      qryJournal.CancelUpdates;
                    if qryLedger.UpdatesPending then
                      qryLedger.CancelUpdates;
                    dmAxiom.uniInsight.Rollback;
                    MsgErr('Posting failed:' + chr(13) + chr(13) + E.Message);
                  end;
                end;
              end;

          end;

          if not bPostingFailed then
          begin
            if not(chkNoExit.Checked) then
            begin
               Self.Close;
            end
            else
            begin
              // create a new matter journal
              tbDesc.Text := '';
              TotalDebit := 0;
              TotalCredit := 0;
              TaxDebit := 0;
              TaxCredit := 0;
              lblTotalDebit.Caption := '0.00';
              lblTotalCredit.Caption := '0.00';
              lblTaxDebit.Caption := '0.00';
              lblTaxCredit.Caption := '0.00';
            end;
          end;
        end;
      end;
  end
  else    //  end if
     MsgErr('You cannot post a journal against matter (' +
            qryLedger.FieldByName('REFNO').AsString + ') with a' + #13 + #10 +
            'bank account (' + MatterString(qryLedger.FieldByName('REFNO').AsString, 'ACCT') +
            ') different to the selected Entity (' + dmAxiom.Entity + ').');
end;


procedure TfrmJournalMatter.dbgrLedgerColExit(Sender: TObject);
begin
{  case dbgrLedger.SelectedIndex of
    colREFNO: // Display the long Description
    begin
      if dbgrLedger.Columns.Items[colREFNO].Field.Text <> '' then
      begin
         if (IsValidMatterForEntity(qryLedger.FieldByName('REFNO').AsString)) then
            if (MatterIsCurrent(qryLedger.FieldByName('REFNO').AsString)) then
            begin
               if not qryLedger.Modified then
                  qryLedger.Edit;

               dbgrLedger.Columns.Items[colREFNO].Field.Text := Trim(dbgrLedger.Columns.Items[colREFNO].Field.Text);
               dbgrLedger.Columns.Items[colREFNO].Field.Text := UpperCase(dbgrLedger.Columns.Items[colREFNO].Field.Text);
               qryLedger.FieldByName('LONGDESC').AsString := MatterString(dbgrLedger.Columns.Items[colREFNO].Field.Text, 'MATLOCATE');

            end
            else
            begin
               MsgErr('This matter #' + qryLedger.FieldByName('REFNO').AsString +
                          ' is closed or does not exist.');
               qryLedger.Delete;

            end    //  end if-else
         else
         begin
            MsgErr('This matter #' + qryLedger.FieldByName('REFNO').AsString +
                   ' is not valid for the current Entity.');
            qryLedger.Delete;
         end;
      end;
    end;

    colREASON:
    begin
      if not qryLedger.Modified then
        qryLedger.Edit;

      QuickCode(dbgrLedger.Columns.Items[colREASON].Field);

    end;

    colDEBIT, colCREDIT : // update the total amount
      UpdateTotal;

  end;  }

end;


procedure TfrmJournalMatter.qryLedgerAfterInsert(DataSet: TDataSet);
begin
  qryLedger.FieldByName('CREATED').AsDateTime := dtpDate.Date;
  qryLedger.FieldByName('TYPE').AsString := 'Matter';
  qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
  qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
end;


procedure TfrmJournalMatter.dbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
  btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmJournalMatter.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmJournalMatter.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;


procedure TfrmJournalMatter.popRemoveClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmJournalMatter.popEditClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Edit;
end;


procedure TfrmJournalMatter.FormCreate(Sender: TObject);
begin
  TotalDebit := 0;
  TotalCredit := 0;
  TaxDebit := 0;
  TaxCredit := 0;

  rgtype.ItemIndex := 0;

  StringPopulate(TcxComboBoxProperties(tvLedgerTAXCODE.Properties).Items, 'TAXTYPE', 'CODE');
  StringPopulate(TcxComboBoxProperties(tvLedgerSUNDRYTYPE.Properties).Items, 'SUNDRYTYPE', 'CODE');
//  StringPopulate(dbgrLedger.Columns[colSUNDRYTYPE].PickList, 'SUNDRYTYPE', 'CODE');
//  StringPopulate(dbgrLedger.Columns[colTAXCODE].PickList, 'TAXTYPE', 'CODE');

  DefaultTax := dmAxiom.DefaultTax;
end;


procedure TfrmJournalMatter.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(tbDesc);
end;


procedure TfrmJournalMatter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryJournal.Close;
  qryLedger.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmJournalMatter.dbgrLedgerKeyPress(Sender: TObject; var Key: Char);
begin
{  case dbgrLedger.SelectedIndex of
    colCREDIT, colDEBIT, colTAXCODE, colTAX:
      if Key = #13 then
        UpdateTotal;
  end;  }
end;


procedure TfrmJournalMatter.FormShow(Sender: TObject);
begin
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

  qryLedger.open;
end;


procedure TfrmJournalMatter.dbgrLedgerEnter(Sender: TObject);
begin
  if qryLedger.IsEmpty then
    qryLedger.Insert;
end;


procedure TfrmJournalMatter.tbDescExit(Sender: TObject);
begin
  QuickCode(Sender);
end;


procedure TfrmJournalMatter.qryLedgerDEBITChange(Sender: TField);
begin
  if qryLedger.FieldByName('DEBIT').AsCurrency <> 0 then
  begin
    qryLedger.FieldByName('CREDIT').AsCurrency := 0;
    CalcTax;
  end;
end;


procedure TfrmJournalMatter.qryLedgerCREDITChange(Sender: TField);
begin
  if qryLedger.FieldByName('CREDIT').AsCurrency <> 0 then
  begin
    qryLedger.FieldByName('DEBIT').AsCurrency := 0;
    CalcTax;
  end;
end;


procedure TfrmJournalMatter.rgTypeClick(Sender: TObject);
begin
  if qryLedger.UpdatesPending then
    qryLedger.CancelUpdates;
  qryLedger.Close;
  qryLedger.Open;

  case rgType.ItemIndex of
    typFEES :
      begin
        tvLedger.Columns[colREASON].Width := 225;
        tvLedger.Columns[colAUTHOR].Visible := True;
        tvLedger.Columns[colAUTHOR].Width := 55;
        TcxComboBoxProperties(tvLedgerAUTHOR.Properties).Items := dmAxiom.Employees;
      end;
    else
      begin
        tvLedger.Columns[colAUTHOR].Visible := False;
        tvLedger.Columns[colREASON].Width := 270;
      end;
  end;
end;

procedure TfrmJournalMatter.dbgrLedgerColEnter(Sender: TObject);
begin
{  case dbgrLedger.SelectedIndex of
    colREASON:
      if dbgrLedger.Columns[colREASON].Field.Text = '' then
      begin
        if not qryLedger.Modified then
          qryLedger.Edit;
        dbgrLedger.Columns[colREASON].Field.Text := tbDesc.Text;
      end;
  end; }
end;

procedure TfrmJournalMatter.qryLedgerTAXCODEChange(Sender: TField);
begin
  qryLedger.FieldByName('WITHHOLD').AsString := TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'WITHHOLDING');
  CalcTax;
end;


procedure TfrmJournalMatter.CalcTax;
var
  dAmount: double;
begin
//  qryLedgerDEBIT.OnChange := nil;
//  qryLedgerCREDIT.OnChange := nil;
   if not qryLedger.Modified then
      qryLedger.Edit;
   dAmount := qryLedger.FieldByName('DEBIT').AsCurrency + qryLedger.FieldByName('CREDIT').AsCurrency;
   qryLedger.FieldByName('TAX').AsFloat := TaxCalc(dAmount, '', qryLedger.FieldByName('TAXCODE').AsString, dtpDate.Date);
   if qryLedger.FieldByName('DEBIT').AsCurrency > 0 then
      qryLedger.FieldByName('DEBIT').AsCurrency := dAmount;
   if qryLedger.FieldByName('CREDIT').AsCurrency > 0 then
      qryLedger.FieldByName('CREDIT').AsCurrency := dAmount;
   if qryLedger.State <> dsInsert then
      UpdateTotal;
//  qryLedgerDEBIT.OnChange := qryLedgerDEBITChange;
//  qryLedgerCREDIT.OnChange := qryLedgerCREDITChange;
end;


{function TfrmJournalMatter.IsValidJournalForCurrentEntity : Boolean;
var
  lsAcct    : String;
  lsMessage : String;
begin
  Result := TRUE;

  qryLedger.First;

  while not qryLedger.EOF do
    begin
      if (qryLedger.FieldByName('TYPE').AsString = 'Matter') then
        begin
          lsAcct := MatterString(qryLedger.FieldByName('REFNO').AsString, 'ACCT');

          if (lsAcct <> dmAxiom.Entity) then
            begin
              lsMessage := 'You cannot post a journal against a matter (' +
                           qryLedger.FieldByName('REFNO').AsString + ') with a' + #13 + #10 +
                           'bank account (' + lsAcct + ') different to the selected account (' +
                           dmAxiom.Entity + ').';

              MsgErr(lsMessage);

              Result := FALSE;
              Break;

            end;    //  end if

        end;

      qryLedger.Next;

    end;    //  end while

end; }


procedure TfrmJournalMatter.cxGrid1DBTableView1REFNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
      begin
         MsgErr('You may not Bank money to a matter that is archived.');
         qryLedger.FieldByName('REFNO').AsString := '';
         qryLedger.FieldByName('DESCR').AsString := '';
      end
      else
      begin
      qryLedger.Edit;
      qryLedger.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      qryLedger.FieldByName('LONGDESC').AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      if qryLedger.FieldByName('REASON').AsString = '' then
         qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
   end;
end;
end;

procedure TfrmJournalMatter.cxGrid1DBTableView1DEBITPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   qryLedger.FieldByName('DEBIT').AsCurrency := DisplayValue;
   UpdateTotal;
end;

procedure TfrmJournalMatter.cxGrid1DBTableView1CREDITPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   qryLedger.FieldByName('CREDIT').AsCurrency := DisplayValue;
   UpdateTotal;
end;

procedure TfrmJournalMatter.tvLedgerREFNOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
   ARefNo: string;
begin
   if (not VarIsNull(DisplayValue)) then
   begin
      ARefNo := Uppercase(string(DisplayValue));
      if (IsValidMatterForEntity(ARefNo)) then
         if ((MatterIsCurrent(ARefNo)) and
            not (IsMatterArchived(ARefNo))) then
         begin
            if not qryLedger.Modified then
               qryLedger.Edit;

            tvLedger.Columns[colREFNO].DataBinding.Field.Text := Trim(tvLedger.Columns[colREFNO].DataBinding.Field.Text);
            tvLedger.Columns[colREFNO].DataBinding.Field.Text := UpperCase(tvLedger.Columns[colREFNO].DataBinding.Field.Text);
            qryLedger.FieldByName('LONGDESC').AsString := MatterString(string(DisplayValue), 'MATLOCATE');
            qryLedger.FieldByName('REFNO').AsString := ARefNo;
         end
         else
         begin
            MsgErr('This matter #' + ARefNo +
                             ' is closed or does not exist.');
            qryLedger.Delete;

         end    //  end if-else
      else
         begin
            MsgErr('This matter #' + ARefNo +
                      ' is not valid for the current Entity.');
            qryLedger.Delete;
         end;
   end;
end;

end.

