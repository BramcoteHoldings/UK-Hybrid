unit MatterGLOfficeJournal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,                                 
  ExtCtrls, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS, DateTimeAccount,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxDropDownEdit, cxButtonEdit, cxTextEdit,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, cxMaskEdit, cxCurrencyEdit, cxContainer, cxGroupBox, cxRadioGroup,
  cxLabel, cxLookAndFeelPainters, cxButtons, dxBar, ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeels, cxCalendar,
  EnforceCustomDateEdit, dxCore, cxNavigator, cxDateUtils, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  System.ImageList;

const
  colTYPE = 0;
  colREFNO = 1;
  colLONGDESC = 2;
  colREASON = 3;
  colAMOUNT = 4;
  colTAXCODE = 5;
  colTAX = 6;
  colSUNDRYTYPE = 7;

type
  EPostError = class(Exception);

  TfrmPettyJournal = class(TForm)
    Label2: TLabel;
    Label8: TLabel;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    qryAllocInsert: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    Label11: TLabel;
    Label3: TLabel;
    lblUnallocatedMsg: TLabel;
    lblUnallocated: TLabel;
    qryJournal: TUniQuery;
    popDateStamp: TMenuItem;
    lblTax: TLabel;
    lblBalance: TLabel;
    qryTmp: TUniQuery;
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    dbgrLedger: TcxGrid;
    dbgrLedgerLevel1: TcxGridLevel;
    tvLedger: TcxGridDBTableView;
    tvLedgerTYPE: TcxGridDBColumn;
    tvLedgerREFNO: TcxGridDBColumn;
    tvLedgerLONGDESC: TcxGridDBColumn;
    tvLedgerREASON: TcxGridDBColumn;
    tvLedgerAMOUNT: TcxGridDBColumn;
    tvLedgerTAXCODE: TcxGridDBColumn;
    tvLedgerTAX: TcxGridDBColumn;
    tvLedgerSUNDRYTYPE: TcxGridDBColumn;
    qryTaxtype: TUniQuery;
    dsTaxtype: TUniDataSource;
    qrySundryType: TUniQuery;
    dsSundryType: TUniDataSource;
    rgSign: TcxRadioGroup;
    neAmount: TcxCurrencyEdit;
    tbDesc: TcxTextEdit;
    tbPettyCash: TcxButtonEdit;
    lblPettyCashDescr: TcxLabel;
    ImageList1: TImageList;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dtpDate: TEnforceCustomDateEdit;
    dxBarManager1: TdxBarManager;
    btnSave: TdxBarButton;
    btnClose: TdxBarButton;
    rgType: TcxRadioGroup;
    tvLedgerLGRALLOC_ID: TcxGridDBColumn;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
    procedure dbgrLedgerExit(Sender: TObject);
    procedure qryLedgerAfterPost(DataSet: TDataSet);
    procedure qryLedgerAfterDelete(DataSet: TDataSet);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure neAmountExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbPettyCashExit(Sender: TObject);
    procedure btnLedgerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure popDateStampClick(Sender: TObject);
    procedure tbDescExit(Sender: TObject);
    procedure qryLedgerBeforeScroll(DataSet: TDataSet);
    procedure qryLedgerTAXCODEChange(Sender: TField);
    procedure qryLedgerAMOUNTChange(Sender: TField);
    procedure cxGrid1DBTableView1REFNOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1TYPEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1AMOUNTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvLedgerREFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvLedgerREASONPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure tvLedgerTAXCODEPropertiesCloseUp(Sender: TObject);
    procedure tbPettyCashPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure tvLedgerAMOUNTPropertiesChange(Sender: TObject);
    procedure tvLedgerAMOUNTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    PostingFailed: boolean;
    AllocType, DefaultTax: string;
    Balance, Tax, TotalAmt, WithholdTax: currency;
    function OKtoPost(bShowError : boolean) : Boolean;
    procedure UpdateTotal;
    procedure CalcTax;
  public
    { Public declarations }

  end;

implementation

uses
  Desktop, LSearch, AxiomData, MiscFunc, MSearch, citfunc,
  cxGridDBDataDefinitions,glComponentUtil;

{$R *.DFM}


procedure TfrmPettyJournal.btnCancelClick(Sender: TObject);
begin
   Self.Close;

end;


procedure TfrmPettyJournal.UpdateTotal;
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

    // this will stop rounding errors
    TotalAmt := round(TotalAmt * 100)/100;

  finally
     qryLedger.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qryLedger.GoToBookmark(bmPrevRecord);
       qryLedger.FreeBookmark(bmPrevRecord);
     end;
  end;
  if neAmount.Value <> 0 then
    lblUnallocated.Caption := Format('%m', [neAmount.Value - TotalAmt]);
  btnSave.Enabled := OKtoPost(False);
end;


function TfrmPettyJournal.OKtoPost(bShowError : boolean) : Boolean;
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
  if (neAmount.Value <> 0) and (neAmount.EditValue <> TotalAmt) then
    sTmp := sTmp + '       Journal is not fully allocated' + #13;
  if tbPettyCash.Text = '' then
    sTmp := sTmp + '       Matter G/L Office Ledger' + #13;
  if sTmp <> '' then
  begin
    if bShowError then
      MsgInfo('Please complete the following Journal details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False
  end;
  result:= bOKtoPost;
end;


procedure TfrmPettyJournal.btnOKClick(Sender: TObject);
var
  sJournalMessage: string;
  iJournal: integer;
  dAmount: double;
  iSign,
  iRows,
  iNalloc: integer;
  glInstance : TglComponentInstance ;
  glComponentSetup : TglComponentSetup;
  sLedgerKey,sLedgerKeyDr : String;
  Row: integer;
begin
   screen.Cursor := crHourGlass;
   glComponentSetup := dmAxiom.getGlComponents;
   if qryLedger.Modified then
      qryLedger.Post;

   for Row := 0 to tvLedger.DataController.RecordCount - 1 do
   begin
      tvLedger.DataController.FocusedRowIndex := Row;
      if tvLedger.DataController.GetDisplayText(Row, tvLedgerREFNO.Index) = '' then
         tvLedger.DataController.DeleteFocused;
   end;

   if OKtoPost(True) then
   begin
      if (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]) then
      begin
  {
      Modified 25.10.2002 GG
      Removed compiler warning
  }
         iSign:= 1;
         try
            case rgSign.itemIndex of
               0: iSign := 1;
               1: iSign := -1;
            end;

            PostingFailed := False;
            if dmAxiom.uniInsight.InTransaction then
               dmAxiom.uniInsight.Rollback;
            dmAxiom.uniInsight.StartTransaction;

        // Set up a journal
            iJournal := GetJournal;
            if iJournal = -1 then
               raise EPostError.Create('Could not get next Journal number for Entity ' + dmAxiom.Entity);

            qryJournal.Open;
            qryJournal.Insert;
            qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
            qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
            qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;
            qryJournal.FieldByName('REASON').AsString := tbDesc.Text;
            qryJournal.FieldByName('TRUST').AsString := 'G';
            if rgType.ItemIndex = 0 then
               qryJournal.FieldByName('TYPE').AsString := '2'
            else
               qryJournal.FieldByName('TYPE').AsString := '1';
            qryJournal.FieldByName('AMOUNT').AsCurrency := iSign * (TotalAmt - WithholdTax);
            qryJournal.Post; // Puts journal into cached buffer

            qryLedger.First;
            while not qryLedger.EOF do
            begin
              // Now load the transactions
               if qryLedger.FieldByName('TYPE').AsString = 'Ledger' then
               begin
                // lookup the ledger code cased on the value entered
                  glInstance := dmAxiom.getGlComponents.parseString(qryLedger.FieldByName('REFNO').AsString,true);

                  if not glInstance.valid then
                  begin
                      // something has gone very wrong !
                      raise Exception.create('Error invalid ledger key');
                  end;

                  // frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
                  PostLedger(dtpDate.Date
                    , iSign * (0 - qryLedger.FieldByName('AMOUNT').AsCurrency)
                    , iSign * (0 - qryLedger.FieldByName('TAX').AsCurrency)
                    , IntToStr(iJournal)
                    , 'JOURNAL'
                    , iJournal
                    , qryLedger.FieldByName('REASON').AsString
                    , glInstance.ledgerKey
                    , ''
                    , -1
                    , ''
                    , qryLedger.FieldByName('TAXCODE').AsString
                    , FALSE
                    , '0'
                    , 0
                    , 0
                    , 0
                    , FALSE
                    , 0
                    , 0
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
                    glInstance.Free;
               end
               else
               if qryLedger.FieldByName('TYPE').AsString = 'Matter' then
               begin
               // frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
                  if MatterIsCurrent(qryLedger.FieldByName('REFNO').AsString) then
                  begin
                     // Create an Alloc for this transaction
                     with qryAllocInsert do
                     begin
                        iNalloc := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
                        ParamByName('ACCT').AsString := dmAxiom.Entity;
                        ParamByName('CREATED').AsDateTime := dtpDate.Date;
                        ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER');
                        ParamByName('REFNO').AsString := IntToStr(iJournal);
                        ParamByName('PAYER').AsString := 'Journal ' + IntToStr(iJournal);
                        ParamByName('DESCR').AsString := qryLedger.FieldByName('REASON').AsString;
                        ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NCLIENT');
                        ParamByName('NJOURNAL').AsInteger := iJournal;
                        ParamByName('FILEID').AsString := qryLedger.FieldByName('REFNO').AsString;
                        ParamByName('NALLOC').AsInteger := iNalloc;
                        ParamByName('CLIENT_NAME').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'TITLE');
                        ParamByName('MATTER_DESC').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString, 'SHORTDESCR');
                        ParamByName('TAX').AsFloat := iSign * (0 - qryLedger.FieldByName('TAX').AsFloat);
                        ParamByName('AMOUNT').AsFloat := iSign * (0 - qryLedger.FieldByName('AMOUNT').AsFloat);
                        ParamByName('SUNDRYTYPE').AsString := qryLedger.FieldByName('SUNDRYTYPE').AsString;
                        ParamByName('TAXCODE').AsString := qryLedger.FieldByName('TAXCODE').AsString;
                        ParamByName('BILLED_TAX_AMOUNT').AsFloat := iSign * (0 - qryLedger.FieldByName('TAX').AsFloat);
                        if rgType.ItemIndex = 0 then
                           ParamByName('TYPE').AsString := 'J2'
                        else
                           ParamByName('TYPE').AsString := 'J1';
                        ExecSQL;
                        MatterUpdate(ParamByName('NMATTER').AsInteger, 'UNBILL_DISB', iSign * (qryLedger.FieldByName('AMOUNT').AsCurrency));
                     end;
                     // Update the ledger (minus withholding tax if applicable)
                     if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
                        dAmount := iSign * (0 - (qryLedger.FieldByName('AMOUNT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency))
                     else
                        dAmount := iSign * (0 - qryLedger.FieldByName('AMOUNT').AsCurrency);

                     {post components}
                     if rgType.ItemIndex = 0 then
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR'),'',true,'')
                     else
                        sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'REC_FEE_CR'),'',true,'');

                     PostLedger(dtpDate.Date
                         , dAmount
                         , iSign * (0 - qryLedger.FieldByName('TAX').AsCurrency)
                         , IntToStr(iJournal)
                         , 'JOURNAL'
                         , iJournal
                         , qryLedger.FieldByName('REASON').AsString
                         , sLedgerKey
                         , ''
                         , -1
                         , ''
                         , qryLedger.FieldByName('TAXCODE').AsString
                         , FALSE
                         , '0'
                         , iNalloc
                         , TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER')
                         , 0
                         , FALSE
                         , 0
                         , 0
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

                  end
                  else
                     raise Exception.Create('Matter ' + qryLedger.FieldByName('REFNO').AsString + ' is not current');
               end;

               // Now post the tax
               if qryLedger.FieldByName('TAX').AsFloat <> 0 then
               begin
                  if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
                  begin
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                     PostLedger(dtpDate.Date
                         , iSign * qryLedger.FieldByName('TAX').AsCurrency
                         , 0
                         , IntToStr(iJournal)
                         , 'JOURNAL'
                         , iJournal
                         , qryLedger.FieldByName('REASON').AsString
                         , sLedgerKey
                         , ''
                         , -1
                         , ''
                         , qryLedger.FieldByName('TAXCODE').AsString
                         , FALSE
                         , '0'
                         , iNalloc
                         , TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER')
                         , 0
                         , FALSE
                         , 0
                         , 0
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
                  end
                  else
                  begin
                     sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'LEDGER'),'',true,'');

                     PostLedger(dtpDate.Date
                         , iSign * (0 - qryLedger.FieldByName('TAX').AsCurrency)
                         , 0
                         , IntToStr(iJournal)
                         , 'JOURNAL'
                         , iJournal
                         , qryLedger.FieldByName('REASON').AsString
                         , sLedgerKey
                         , ''
                         , -1
                         , ''
                         , qryLedger.FieldByName('TAXCODE').AsString
                         , FALSE
                         , '0'
                         , iNalloc
                         , TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER')
                         , 0
                         , FALSE
                         , 0
                         , 0
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
                  end;
               end;
               qryLedger.Next;
            end; // While not EOF loop

        // lookup the ledger code based on the value entered
            glInstance := dmAxiom.getGlComponents.parseString(tbPettyCash.Text   ,true);
            if not glInstance.valid then
            begin
               // something has gone very wrong !
               raise Exception.create('Error invalid ledger key');
            end;

            // Post a transaction to the consolidated ledger
            PostLedger(dtpDate.Date
                , iSign * (TotalAmt - WithholdTax)
                , 0
                , IntToStr(iJournal)
                , 'JOURNAL'
                , iJournal
                , tbDesc.Text
                ,glInstance.ledgerKey
                , ''
                , -1
                , ''
                , qryLedger.FieldByName('TAXCODE').AsString
                , FALSE
                , '0'
                , 0
                , 0
                , 0
                , FALSE
                , 0
                , 0
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

            glInstance.free;

            sJournalMessage := 'Posted Journal ' + IntToStr(iJournal) + ' for ' + Format('%m', [TotalAmt]) + ' on ' + FormatDateTime('ddddd', dtpDate.Date);

            // Now save the general ledger items
            qryJournal.ApplyUpdates;
            qryLedger.CancelUpdates;

            CheckLedgerTotal;

            dmAxiom.uniInsight.Commit;
         except
            on E: Exception do
            begin
               if qryJournal.UpdatesPending then
                  qryJournal.CancelUpdates;
               if qryLedger.UpdatesPending then
                  qryLedger.CancelUpdates;
               dmAxiom.uniInsight.Rollback;
               PostingFailed := True;
               screen.Cursor := crDefault;
               MsgErr('Posting failed:' + chr(13) + chr(13) + E.Message);
            end;
         end;

         if not PostingFailed then
         begin
            SettingSave('Petty Journal', 'Ledger', tbPettyCash.Text);
//        SettingSave('Petty Journal', 'Descr', tbDesc.Text);
            MsgInfo(sJournalMessage);
            screen.Cursor := crDefault;
         Self.Close;
//        RemoveFromDesktop(Self);
         end;
      end;
   end
end;

procedure TfrmPettyJournal.qryLedgerAfterInsert(DataSet: TDataSet);
var
   ADefaultTax: string;
begin
   if AllocType = '' then
      DataSet.FieldByName('TYPE').AsString := 'Matter'
   else
      DataSet.FieldByName('TYPE').AsString := AllocType;

   DataSet.FieldByName('REASON').AsString := tbDesc.Text;

// AES 12/08/2009  Added additional test for default taxcode
   ADefaultTax := LedgerComponentString(tbPettyCash.Text, 'DEFAULT_TAXCODE');
   if ADefaultTax <> '' then
      DataSet.FieldByName('TAXCODE').AsString := ADefaultTax
   else
      DataSet.FieldByName('TAXCODE').AsString := DefaultTax;
end;

procedure TfrmPettyJournal.dbgrLedgerExit(Sender: TObject);
begin
  UpdateTotal;
  btnSave.Enabled := OKtoPost(False);
end;

procedure TfrmPettyJournal.qryLedgerAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmPettyJournal.qryLedgerAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmPettyJournal.popRemoveClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Delete;
end;

procedure TfrmPettyJournal.popEditClick(Sender: TObject);
begin
  if not qryLedger.IsEmpty then
    qryLedger.Edit;
end;


procedure TfrmPettyJournal.FormCreate(Sender: TObject);
begin
  TotalAmt := 0;
  Balance := 0;
  Tax := 0;
  AllocType := '';
  DefaultTax := dmAxiom.DefaultTax;;

  if not qryLedger.Active then
    qryLedger.Open;

  qryTaxtype.Open;
  qrySundryType.Open;

//   tbDesc.Text := SettingLoadString('Petty Journal', 'Descr');
//   tbDesc.Properties.MaxLength := qryLedger.FieldByName('REASON').Size;
   tbPettyCash.Text := SettingLoadString('Petty Journal', 'Ledger');
   tbPettyCash.OnExit(Self);

   qryLedger.Open;
  
//  StringPopulate(dbgrLedger.Columns[colTAXCODE].PickList, 'TAXTYPE', 'CODE');
//  StringPopulate(dbgrLedger.Columns[colSUNDRYTYPE].PickList, 'SUNDRYTYPE', 'CODE');
end;


procedure TfrmPettyJournal.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(tbDesc);
end;


procedure TfrmPettyJournal.neAmountExit(Sender: TObject);
begin
  if neAmount.Value = 0 then
  begin
    lblUnallocatedMsg.Visible := False;
    lblUnallocated.Visible := False;
  end
  else
  begin
    lblUnallocatedMsg.Visible := True;
    lblUnallocated.Visible := True;
  end;
  if not qryLedger.Modified then
     qryLedger.Edit;
  UpdateTotal;
  btnSave.Enabled := OKtoPost(False);
end;

procedure TfrmPettyJournal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryJournal.Close;
   qryLedger.Close;
   qryTaxtype.Close;
   qrySundryType.Close;

   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Action := caFree;
   RemoveFromDesktop(Self);
end;

procedure TfrmPettyJournal.tbPettyCashExit(Sender: TObject);
var
  sTmp : string;
begin
   if tbPettyCash.Text <> '' then
   begin
     sTmp := LedgerComponentString(tbPettyCash.Text, 'REPORT_DESC');
     if sTmp <> '' then
       lblPettyCashDescr.Caption := sTmp
     else
     begin
       MsgErr('Invalid Ledger Code');
       tbPettyCash.SetFocus;
     end;
   end;
   btnSave.Enabled := OKtoPost(False);
end;

procedure TfrmPettyJournal.btnLedgerClick(Sender: TObject);
begin
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

   if frmLedgerSearch.ShowModal = mrOk then
   begin
      tbPettyCash.Text := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      lblPettyCashDescr.Caption := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
   end;
end;

procedure TfrmPettyJournal.FormShow(Sender: TObject);
begin
 {  tbDesc.Text := SettingLoadString('Petty Journal', 'Descr');
   tbDesc.Properties.MaxLength := qryLedger.FieldByName('REASON').Size;
   tbPettyCash.Text := SettingLoadString('Petty Journal', 'Ledger');
   tbPettyCash.OnExit(Self);

   qryLedger.Open;  }

 {
   Added 25.10.2002 GG

   If the user does not have authority to post into a locked period, prevent
   them from changing the transaction date into the locked period
 }
   dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

   btnSave.Enabled := OKtoPost(False);
end;

procedure TfrmPettyJournal.dbgrLedgerEnter(Sender: TObject);
begin
   if qryLedger.IsEmpty then
      qryLedger.Insert;
end;

procedure TfrmPettyJournal.popDateStampClick(Sender: TObject);
begin
  if not qryLedger.Modified then
    qryLedger.Edit;
  qryLedger.FieldByName('CREATED').AsDateTime := dtpDate.Date;
end;

procedure TfrmPettyJournal.tbDescExit(Sender: TObject);
begin
  QuickCode(Sender);
end;

procedure TfrmPettyJournal.qryLedgerBeforeScroll(DataSet: TDataSet);
begin
  AllocType := qryLedger.FieldByName('TYPE').AsString;
end;

procedure TfrmPettyJournal.qryLedgerTAXCODEChange(Sender: TField);
begin
  qryLedger.FieldByName('WITHHOLD').AsString := TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'WITHHOLDING');
  CalcTax;
end;

procedure TfrmPettyJournal.CalcTax;
var
   dAmount: double;
   taxcode: STRING;
begin
   if not qryLedger.Modified then
   begin
      qryLedger.Edit;
//      qryLedgerAMOUNT.OnChange := nil;
      dAmount := qryLedger.FieldByName('AMOUNT').AsCurrency;
      if DefaultTax <> qryLedger.FieldByName('TAXCODE').AsString then
      begin
         taxcode := DefaultTax;
         DefaultTax := qryLedger.FieldByName('TAXCODE').AsString;
      end;
     //calculate the amount of tax as bill_rate
      qryLedger.FieldByName('TAX').AsFloat := TaxCalc(dAmount, '', DefaultTax, dtpDate.Date);
      qryLedger.FieldByName('AMOUNT').AsCurrency := dAmount;
      if qryLedger.State in [dsInsert, dsEdit] then
         UpdateTotal;
//      qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
      if Taxcode <> '' then
         DefaultTax := taxcode;
   end;
 {
  var
  dAmount: currency;
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   qryLedgerAMOUNT.OnChange := nil;
   dAmount := qryLedger.FieldByName('AMOUNT').AsCurrency;
   qryLedger.FieldByName('TAX').AsFloat := TaxCalc(dAmount, '', qryLedger.FieldByName('TAXCODE').AsString, dtpDate.Date);
   qryLedger.FieldByName('AMOUNT').AsCurrency := dAmount;
   if qryLedger.State <> dsInsert then
      UpdateTotal;
   qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
 }
end;

procedure TfrmPettyJournal.qryLedgerAMOUNTChange(Sender: TField);
begin
  CalcTax;
end;

procedure TfrmPettyJournal.cxGrid1DBTableView1REFNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if (tvLedgerTYPE.DataBinding.Field.Text = 'Matter') then
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
   end
   else if (tvLedgerTYPE.DataBinding.Field.Text = 'Ledger') then
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

procedure TfrmPettyJournal.cxGrid1DBTableView1TYPEPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if tvLedgerTYPE.DataBinding.Field.Text <> '' then
   begin
      if not qryLedger.Modified then
         qryLedger.Edit;
      tvLedgerTYPE.DataBinding.Field.Text := Trim(DisplayValue);
   end;
end;

procedure TfrmPettyJournal.cxGrid1DBTableView1AMOUNTPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   qryLedger.FieldByName('AMOUNT').AsCurrency := DisplayValue;
   UpdateTotal;
//   CalcTax;
end;

procedure TfrmPettyJournal.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   ADefaultTax: string;
begin
   if not qryLedger.Modified then
      qryLedger.Edit;

   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

   if frmLedgerSearch.ShowModal = mrOk then
   begin
      tbPettyCash.Text := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      lblPettyCashDescr.Caption := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
   end;

   // AES 12/08/2009  Added additional test for default taxcode
   ADefaultTax := LedgerComponentString(tbPettyCash.Text, 'DEFAULT_TAXCODE');
   if ADefaultTax <> '' then
      qryLedger.FieldByName('TAXCODE').AsString := ADefaultTax
   else
      qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
   
end;

procedure TfrmPettyJournal.tvLedgerREFNOPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);

  var glInstance : TglComponentInstance ;

begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   tvLedgerREFNO.DataBinding.Field.Text := UpperCase(Trim(DisplayValue));
   if (tvLedgerTYPE.DataBinding.Field.Text = 'Matter') then
   begin
     if MatterIsCurrent(DisplayValue) then
     begin
       qryLedger.FieldByName('LONGDESC').AsString := MatterString(string(DisplayValue), 'MATLOCATE');
       if qryLedger.FieldByName('REASON').AsString = '' then
            qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
     end
     else
     begin
       MsgErr(DisplayValue + ' is not a current Matter');
       DisplayValue := '';
       qryLedger.FieldByName('LONGDESC').AsString := '';
//       dbgrLedger.SelectedIndex := colREFNO;
     end;
   end;
   if (tvLedgerTYPE.DataBinding.Field.Text = 'Ledger') then
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
        qryLedger.FieldByName('LONGDESC').AsString := glInstance.chartDescription;
        if qryLedger.FieldByName('REASON').AsString = '' then
            qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
      end;
      glInstance.free;

   end;
      //qryLedger.FieldByName('LONGDESC').AsString := LedgerString(DisplayValue, 'REPORT_DESC');
end;

procedure TfrmPettyJournal.tvLedgerAMOUNTPropertiesChange(Sender: TObject);
begin
//   CalcTax;
end;

procedure TfrmPettyJournal.tvLedgerAMOUNTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   qryLedger.FieldByName('AMOUNT').AsCurrency := DisplayValue;
   UpdateTotal;
   CalcTax;
end;

procedure TfrmPettyJournal.tvLedgerREASONPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   QuickCode(tvLedgerREASON.DataBinding.Field, DisplayValue);;
end;

procedure TfrmPettyJournal.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmPettyJournal.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmPettyJournal.tvLedgerTAXCODEPropertiesCloseUp(
  Sender: TObject);
begin
   if not qryLedger.Modified then
      qryLedger.Edit;
   qryLedger.FieldByName('TAXCODE').AsString := TcxLookupComboBox(Sender).Text;
   UpdateTotal;
   CalcTax;
end;

procedure TfrmPettyJournal.tbPettyCashPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   glInstance : TglComponentInstance ;
   ADefaultTax: string;
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

      // AES 12/08/2009  Added additional test for default taxcode
      ADefaultTax := LedgerComponentString(tbPettyCash.Text, 'DEFAULT_TAXCODE');
      if ADefaultTax <> '' then
         qryLedger.FieldByName('TAXCODE').AsString := ADefaultTax
      else
         qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
   end
   else
   begin
      MsgErr('You may not post to a header ledger');
      DisplayValue := '';
   end;
end;

procedure TfrmPettyJournal.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

end.

