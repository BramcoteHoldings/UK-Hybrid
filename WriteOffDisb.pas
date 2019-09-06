unit WriteOffDisb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  citfunc,ExtCtrls, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS, DateTimeAccount,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxLabel,
  cxDBLabel, cxGridBandedTableView, cxGridDBBandedTableView, cxGroupBox,
  cxRadioGroup, cxLookAndFeelPainters, cxDropDownEdit, cxCalendar,
  EnforceCustomDateEdit, cxButtons, dxBarExtItems, dxBar, cxCurrencyEdit,
  Variants, cxLookAndFeels, dxCore, cxNavigator, cxDateUtils, cxBarEditItem,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

const
  colREFNO = 0;
  colLONGDESC = 1;
  colREASON = 2;
  colAMOUNT = 3;
  colTAXCODE = 5;
  colTAX = 6;

type
  EPostError = class(Exception);

  TfrmWriteOffDisb = class(TForm)
    Label2: TLabel;
    Label8: TLabel;
    qryAllocInsert: TUniQuery;
    qryLedger: TUniQuery;
    dsLedger: TUniDataSource;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qryJournal: TUniQuery;
    Label3: TLabel;
    lblLedgerDescr: TLabel;
    qryCheqReqInsert: TUniQuery;
    lblUnallocated: TLabel;
    qryMatters: TUniQuery;
    qryDisb: TUniQuery;
    dsDisb: TUniDataSource;
    cxGrid1: TcxGrid;
    beMatterNo: TcxButtonEdit;
    dblblMatterDescr: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Level: TcxGridLevel;
    BandedTableView: TcxGridDBBandedTableView;
    BandedTableViewDBBandedCREATED: TcxGridDBBandedColumn;
    BandedTableViewDBBandedDESCR: TcxGridDBBandedColumn;
    BandedTableViewDBBandedAMOUNT: TcxGridDBBandedColumn;
    BandedTableViewDBBandedTAX: TcxGridDBBandedColumn;
    BandedTableViewDBBandedTAXCODE: TcxGridDBBandedColumn;
    BandedTableViewDBBandedWriteOff: TcxGridDBBandedColumn;
    tbDesc: TcxTextEdit;
    rgledgertype: TcxRadioGroup;
    rgType: TcxRadioGroup;
    BandedTableViewDBBandedReason: TcxGridDBBandedColumn;
    dtpDate: TEnforceCustomDateEdit;
    cxStyleRepository1: TcxStyleRepository;
    styChecked: TcxStyle;
    cxStyle1: TcxStyle;
    tbLedger: TcxButtonEdit;
    lblLedgerDesc: TcxLabel;
    dxBarManager1: TdxBarManager;
    btnOK: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    BandedTableViewDBBandedNALLOC: TcxGridDBBandedColumn;
    BandedTableViewDBBandedSUNDRYTYPE: TcxGridDBBandedColumn;
    qryAllocUpdate: TUniQuery;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    BandedTableViewDBBandedNINVOICE: TcxGridDBBandedColumn;
    qryInvoiceUpdate: TUniQuery;
    chkNoExit: TcxBarEditItem;
    BandedTableViewColumn1: TcxGridDBBandedColumn;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgrLedgerEnter(Sender: TObject);
    procedure tbDescExit(Sender: TObject);
    procedure btnLedgerClick(Sender: TObject);
    procedure tbLedgerExit(Sender: TObject);
    procedure qryLedgerDEBITChange(Sender: TField);
    procedure qryLedgerTAXCODEChange(Sender: TField);
    procedure qryLedgerBeforeScroll(DataSet: TDataSet);
    procedure qryLedgerAfterScroll(DataSet: TDataSet);
    procedure rgledgertypeClick(Sender: TObject);
    procedure tbLedgerChange(Sender: TObject);
    procedure cxButtonEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure beLedgerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure beLedgerPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure beLedgerPropertiesChange(Sender: TObject);
    procedure BandedTableViewDBBandedWriteOffPropertiesChange(
      Sender: TObject);
    procedure BandedTableViewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure rgTypePropertiesChange(Sender: TObject);
  private
    { Private declarations }
    Balance, Tax, TotalAmt,TotalAmtEx, WithholdTax, TotalTax: currency;
    DefaultTax: string;
    FLedgerCode: string;
    FFileID: string;
    function OKtoPost(bShowError : boolean) : Boolean;
    procedure UpdateTotal;
    procedure CalcTax;
    procedure GenerateUnboundData;
  public
    { Public declarations }

  end;

implementation

uses
  AxiomData, MiscFunc, MSearch, LSearch,glComponentUtil;

{$R *.DFM}

procedure TfrmWriteOffDisb.btnCancelClick(Sender: TObject);
begin
  Self.Close;
//   RemoveFromDesktop(Self);
end;


procedure TfrmWriteOffDisb.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
  bmPrevRecord := qryLedger.GetBookmark;  { returns nil if table is empty }
  try
    qryLedger.DisableControls;
    qryLedger.First;
    TotalAmt := 0;
    TotalAmtEx := 0;
    Balance := 0;
    Tax := 0;
    WithholdTax := 0;
    while not qryLedger.EOF do
    begin
      TotalAmtEx := TotalAmtEx + qryLedger.FieldByName('DEBIT').AsCurrency;
      TotalAmt := TotalAmt + qryLedger.FieldByName('DEBIT').AsCurrency + qryLedger.FieldByName('TAX').AsCurrency;
      Balance := Balance + qryLedger.FieldByName('DEBIT').AsCurrency;
      Tax := Tax + qryLedger.FieldByName('TAX').AsCurrency;
      if qryLedger.FieldByName('WITHHOLD').AsString = 'Y' then
        WithholdTax := WithholdTax + qryLedger.FieldByName('TAX').AsCurrency;
      qryLedger.Next;
    end;
 //   lblBalance.Caption := Format('%m', [Balance]);
//    lblTax.Caption := Format('%m', [Tax]);
//    lblTotal.Caption := Format('%m', [TotalAmt]);
  finally
     qryLedger.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qryLedger.GoToBookmark(bmPrevRecord);
       qryLedger.FreeBookmark(bmPrevRecord);
     end;
  end;
end;


function TfrmWriteOffDisb.OKtoPost(bShowError : boolean) : Boolean;
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
  if tbLedger.Text = '' then
    sTmp := sTmp + '       No Ledger Code entered' + #13;
  if sTmp <> '' then
  begin
    if bShowError then
      MsgInfo('Please complete the following Journal details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False
  end;
  result:= bOKtoPost;
end;


procedure TfrmWriteOffDisb.btnOKClick(Sender: TObject);
var
   iJournal,
   nAlloc : integer;
   bFirst, bPostingFailed, bAnySelected: boolean;
   Row: integer;
   glInstance : TglComponentInstance ;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,sLedgerKeyDr : String;
   LTax: Currency;
begin
   glComponentSetup := dmAxiom.getGlComponents;
   nAlloc := 0;
   LTax := 0;
   bAnySelected := False;
   if OKtoPost(True) then
   begin
      if (PostIntoLockedPeriod(dtpDate.Date) in [prNotLocked, prOKToProceed]) then
      begin
         bPostingFailed := False;

         case rgType.ItemIndex of
            0 : // Unbilled Disbursements
               begin
                  if dmAxiom.uniInsight.InTransaction then
                     dmAxiom.uniInsight.Rollback;
                  dmAxiom.uniInsight.StartTransaction;
                  iJournal:= 0;
                  try
                     qryJournal.Open;

                     qryLedger.First;
                     bFirst := True;

                     TotalAmt := 0;
                     TotalAmtEx := 0;
                     for Row := 0 to BandedTableView.DataController.RecordCount - 1 do
                     begin
                        BandedTableView.DataController.FocusedRowIndex := Row;
                        if BandedTableView.DataController.GetValue(Row, BandedTableViewDBBandedWriteOff.Index) = True then
                        begin
                           if VarIsNull(BandedTableViewDBBandedTAX.EditValue) then
                              LTax := 0
                           else
                              LTax := BandedTableViewDBBandedTAX.EditValue;
                           TotalAmt := TotalAmt + BandedTableViewDBBandedAMOUNT.EditValue + LTax;
                           TotalAmtEx := TotalAmtEx + BandedTableViewDBBandedAMOUNT.EditValue;
                           bAnySelected := True;
                        end;
                     end;

                     if bAnySelected then
                     begin
                        iJournal := GetJournal;
                        if iJournal = -1 then
                           Raise EPostError.Create('Could not get next Journal number for Entity ' + dmAxiom.Entity);

                        qryJournal.Insert;
                        qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
                        qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
                        qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                        qryJournal.FieldByName('REASON').AsString := tbDesc.Text;
                        qryJournal.FieldByName('TRUST').AsString := 'G';
                        qryJournal.FieldByName('TYPE').AsString := '2';
                        qryJournal.FieldByName('AMOUNT').AsCurrency := TotalAmt;
                        qryJournal.FieldByName('TRAN_TYPE').AsString := 'WOF';
                        qryJournal.Post; // Puts journal into cached buffer

                        // Create an Alloc for this transaction

                        for Row := 0 to BandedTableView.DataController.RecordCount - 1 do
                        begin
                           BandedTableView.DataController.FocusedRowIndex := Row;
                           if BandedTableView.DataController.GetValue(Row, BandedTableViewDBBandedWriteOff.Index) = True then
                           begin
                              nAlloc := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
                              with qryAllocInsert do
                              begin
                                 ParamByName('AMOUNT').AsCurrency := BandedTableViewDBBandedAMOUNT.EditValue;
                                 if VarIsNull(BandedTableViewDBBandedTAX.EditValue) then
                                    ParamByName('TAX').AsCurrency := 0
                                 else
                                    ParamByName('TAX').AsCurrency := BandedTableViewDBBandedTAX.EditValue;;
                                 ParamByName('TAXCODE').AsString := qryDisb.FieldByName('TAXCODE').AsString;
                                 ParamByName('ACCT').AsString := dmAxiom.Entity;
                                 ParamByName('CREATED').AsDateTime := dtpDate.Date;
                                 ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', FFileID, 'NMATTER');
                                 ParamByName('REFNO').AsString := IntToStr(iJournal);
                                 ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', FFileID, 'NCLIENT');
                                 ParamByName('NJOURNAL').AsInteger := iJournal;
                                 ParamByName('TYPE').AsString := 'J2';
                                 ParamByName('PAYER').AsString := 'Journal ' + IntToStr(iJournal);
                                 ParamByName('DESCR').AsString := BandedTableViewDBBandedReason.EditValue;
                                 ParamByName('FILEID').AsString := FFileID;
                                 ParamByName('NALLOC').AsInteger := nAlloc;
                                 ParamByName('CLIENT_NAME').AsString := MatterString(FFileID, 'TITLE');
                                 ParamByName('MATTER_DESC').AsString := MatterString(FFileID, 'SHORTDESCR');
                                 if not VarIsNull(BandedTableViewDBBandedSUNDRYTYPE.EditValue) then
                                    ParamByName('SUNDRYTYPE').AsString := BandedTableViewDBBandedSUNDRYTYPE.EditValue;
                                 ParamByName('JOURNALTYPE').AsString := 'WOF';
                                 if (SystemString('WOF_DISB_BILLED_FLAG') = 'Y') then
                                    ParamByName('BILLED').AsString := 'Y'
                                 else
                                    ParamByName('BILLED').AsString := 'N';
                                 ParamByName('N_WOFF').AsInteger := BandedTableViewDBBandedNALLOC.EditValue;
                                 ExecSQL;

                                 // 23-Nov-2011 AES un-commented this.  Issue with write-offs.  billed flag should be set to Y i think.
                                 if SystemString('WOF_DISB_BILLED_FLAG') = 'Y' then
                                 begin
                                    qryAllocUpdate.ParamByName('NALLOC').AsInteger := BandedTableViewDBBandedNALLOC.EditValue;
                                    qryAllocUpdate.ParamByName('NWOFF').AsInteger := nAlloc;
                                    qryAllocUpdate.ExecSQL;
                                 end;

                                 {post components}
                                 sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_DISB_DR'),'',true,'');

                                 PostLedger(dtpDate.Date
                                    , BandedTableViewDBBandedAMOUNT.EditValue
                                    , 0
                                    , ParamByName('REFNO').AsString
                                    , 'JOURNAL'
                                    , iJournal
                                    , IntToStr(iJournal) + ':' + BandedTableViewDBBandedReason.EditValue
                                    , sLedgerKey
                                    , MatterString(qryLedger.FieldByName('REFNO').AsString, 'AUTHOR')
                                    , -1
                                    , ''
                                    , qryDisb.FieldByName('TAXCODE').AsString
                                    , FALSE
                                    , '0'
                                    , nAlloc
                                    ,TableInteger('MATTER', 'FILEID', FFileID, 'NMATTER'));

                                 MatterUpdate(ParamByName('NMATTER').AsInteger, 'UNBILL_DISB', 0 - ParamByName('AMOUNT').AsFloat);

                                 // RB - not sure why FLedger code was being used!
                                 //sLedgerKey :=  glComponentSetup.buildLedgerKey(TableString('MATTER', 'FILEID', FFileID, 'NMATTER'),FLedgerCode,'',false,'');

                                 // lookup the ledger code based on the value entered
                                 glInstance := dmAxiom.getGlComponents.parseString(tbLedger.Text,true);
                                 if not glInstance.valid then
                                 begin
                                    // something has gone very wrong !
                                    raise Exception.create('Error invalid ledger key');
                                 end;

                                 // Post to the write off ledger
                                 PostLedger(dtpDate.Date
                                   , 0 - BandedTableViewDBBandedAMOUNT.EditValue
                                   , 0
                                   , IntToStr(iJournal)
                                   , 'JOURNAL'
                                   , iJournal
                                   , IntToStr(iJournal) + ':' + tbDesc.Text
                                   , glInstance.ledgerKey
                                   , ''
                                   , -1
                                   , ''
                                   , qryDisb.FieldByName('TAXCODE').AsString
                                   , FALSE
                                   , '0'
                                   , nAlloc
                                   ,TableInteger('MATTER', 'FILEID', FFileID, 'NMATTER'));
                                   glInstance.Free;
                              end;
                           end;
                        end; // for  loop

                        // Now save the general ledger items
                        qryJournal.ApplyUpdates;
                        qryLedger.CancelUpdates;

                        CheckLedgerTotal;

                        dmAxiom.uniInsight.Commit;
                        MsgInfo('Posted Journal ' + IntToStr(iJournal));
                     end
                     else
                     begin
                        MsgInfo('You must select at least one record to write off');
                        dmAxiom.uniInsight.Rollback;
                     end;
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

{           1 : // Anticipated disbursements
           begin
              if dmAxiom.uniInsight.InTransaction then
                  dmAxiom.uniInsight.Commit;
              dmAxiom.uniInsight.StartTransaction;

              try
                for Row := 0 to BandedTableView.DataController.RecordCount - 1 do
                begin
                   BandedTableView.DataController.FocusedRowIndex := Row;
                   if BandedTableView.DataController.GetValue(Row, BandedTableViewDBBandedWriteOff.Index) = True then
                   begin
                      with qryCheqReqInsert do
                      begin
                         ParamByName('AMOUNT').AsCurrency := 0 - BandedTableViewDBBandedAMOUNT.EditValue;
                         ParamByName('BANK').AsString := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK');
                         ParamByName('AUTHOR').AsString := dmAxiom.UserID;
                         ParamByName('REQDATE').AsDateTime := dtpDate.Date;
                         ParamByName('NCHEQREQ').AsInteger := GetSeqnum('NCHEQREQ');
                         ParamByName('PAYEE').AsString := 'Write Off';
                         ParamByName('DESCR').AsString := BandedTableViewDBBandedReason.EditValue;
                         ParamByName('FILEID').AsString := FFileID;
                         ExecSQL;
                         MatterUpdate(TableInteger('MATTER', 'FILEID', qryLedger.FieldByName('REFNO').AsString, 'NMATTER'), 'UNBILL_DISB', ParamByName('AMOUNT').AsFloat);
                         bAnySelected := True;
                      end;
  //                qryLedger.Next;
                   end;
                 end; // While not EOF loop

                 if bAnySelected then
                 begin
                   // Post to the write off ledger

                   // lookup the ledger code based on the value entered
                   glInstance := dmAxiom.getGlComponents.parseString(tbLedger.Text,true);
                   if not glInstance.valid then
                   begin
                     // something has gone very wrong !
                     raise Exception.create('Error invalid ledger key');
                   end;

                    PostLedger(dtpDate.Date
                     , 0 - TotalAmt
                     , 0
                     , 'W/Off'
                     , 'CHEQREQ'
                     , 0
                     , tbDesc.Text
                     , glInstance.ledgerKey
                     , ''
                     , -1
                     , ''
                     , qryDisb.FieldByName('TAXCODE').AsString
                     , FALSE
                     , '0'
                     , nAlloc);
                     glInstance.free;

                   {post components}
{                   sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_CR'),'',true,'');


                    PostLedger(dtpDate.Date
                     , TotalAmt
                     , 0
                     , 'W/Off'
                     , 'CHEQREQ'
                     , 0
                     , tbDesc.Text
                     , sLedgerKey
                     , ''
                     , -1
                     , ''
                     , qryDisb.FieldByName('TAXCODE').AsString
                     , FALSE
                     , '0'
                     , nAlloc);

  //                 qryLedger.CancelUpdates;
                    dmAxiom.uniInsight.Commit;
                 end
                 else
                 begin
                    MsgInfo('You must select at least one record to write off');
                    dmAxiom.uniInsight.Rollback;
                 end;
              except
                 on E: Exception do
                 begin
                    bPostingFailed := True;
                    if qryLedger.UpdatesPending then
                       qryLedger.CancelUpdates;
                    dmAxiom.uniInsight.Rollback;
                    MsgErr('Posting failed:' + chr(13) + chr(13) + E.Message);
                 end;
              end;
            end;
}
            1 : // Creditor Invoices
               begin

                  if dmAxiom.uniInsight.InTransaction then
                     dmAxiom.uniInsight.Commit;
                  dmAxiom.uniInsight.StartTransaction;
                  iJournal:= 0;
                  try
                     qryJournal.Open;

                     qryLedger.First;
                     bFirst := True;

                     TotalAmt := 0;
                     TotalAmtEx := 0;
                     for Row := 0 to BandedTableView.DataController.RecordCount - 1 do
                     begin
                        BandedTableView.DataController.FocusedRowIndex := Row;
                        if BandedTableView.DataController.GetValue(Row, BandedTableViewDBBandedWriteOff.Index) = True then
                        begin
                           if VarIsNull(BandedTableViewDBBandedTAX.EditValue) then
                              LTax := 0
                           else
                              LTax := BandedTableViewDBBandedTAX.EditValue;
                           TotalAmt := TotalAmt + BandedTableViewDBBandedAMOUNT.EditValue + LTax;
                           TotalAmtEx := TotalAmtEx + BandedTableViewDBBandedAMOUNT.EditValue;
                           bAnySelected := True;
                        end;
                     end;

                     if bAnySelected then
                     begin
                        iJournal := GetJournal;
                        if iJournal = -1 then
                           Raise EPostError.Create('Could not get next Journal number for Entity ' + dmAxiom.Entity);

                        qryJournal.Insert;
                        qryJournal.FieldByName('ACCT').AsString := dmAxiom.Entity;
                        qryJournal.FieldByName('NJOURNAL').AsInteger := iJournal;
                        qryJournal.FieldByName('CREATED').AsDateTime := dtpDate.Date;
                        qryJournal.FieldByName('REASON').AsString := tbDesc.Text;
                        qryJournal.FieldByName('TRUST').AsString := 'G';
                        qryJournal.FieldByName('TYPE').AsString := '2';
                        qryJournal.FieldByName('AMOUNT').AsCurrency := TotalAmt;
                        qryJournal.FieldByName('TRAN_TYPE').AsString := 'WOF';
                        qryJournal.Post; // Puts journal into cached buffer

                        // Create an Alloc for this transaction

                        for Row := 0 to BandedTableView.DataController.RecordCount - 1 do
                        begin
                           BandedTableView.DataController.FocusedRowIndex := Row;
                           if BandedTableView.DataController.GetValue(Row, BandedTableViewDBBandedWriteOff.Index) = True then
                           begin
                              nAlloc := GetSequenceNumber('SQNC_NALLOC'); //GetSeqnum('NALLOC');
                              with qryAllocInsert do
                              begin
                                 ParamByName('AMOUNT').AsCurrency := BandedTableViewDBBandedAMOUNT.EditValue;
                                 if VarIsNull(BandedTableViewDBBandedTAX.EditValue) then
                                    ParamByName('TAX').AsCurrency := 0
                                 else
                                    ParamByName('TAX').AsCurrency := BandedTableViewDBBandedTAX.EditValue;;
                                 ParamByName('TAXCODE').AsString := qryDisb.FieldByName('TAXCODE').AsString;
                                 ParamByName('ACCT').AsString := dmAxiom.Entity;
                                 ParamByName('CREATED').AsDateTime := dtpDate.Date;
                                 ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', FFileID, 'NMATTER');
                                 ParamByName('REFNO').AsString := IntToStr(iJournal);
                                 ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', FFileID, 'NCLIENT');
                                 ParamByName('NJOURNAL').AsInteger := iJournal;
                                 ParamByName('TYPE').AsString := 'IV';  // used to be 'J2';
                                 ParamByName('PAYER').AsString := 'Journal ' + IntToStr(iJournal);
                                 ParamByName('DESCR').AsString := BandedTableViewDBBandedReason.EditValue;
                                 ParamByName('FILEID').AsString := FFileID;
                                 ParamByName('NALLOC').AsInteger := nAlloc;
                                 ParamByName('CLIENT_NAME').AsString := MatterString(FFileID, 'TITLE');
                                 ParamByName('MATTER_DESC').AsString := MatterString(FFileID, 'SHORTDESCR');
                                 if not VarIsNull(BandedTableViewDBBandedSUNDRYTYPE.EditValue) then
                                    ParamByName('SUNDRYTYPE').AsString := BandedTableViewDBBandedSUNDRYTYPE.EditValue;
                                 ParamByName('JOURNALTYPE').AsString := 'WOF';
                                 if (SystemString('WOF_DISB_BILLED_FLAG') = 'Y') then
                                    ParamByName('BILLED').AsString := 'Y'
                                 else
                                    ParamByName('BILLED').AsString := 'N';
                                 ParamByName('NINVOICE').AsInteger := BandedTableViewDBBandedNINVOICE.EditValue;
                                 ParamByName('UPCRED').AsCurrency := BandedTableViewDBBandedAMOUNT.EditValue;
                                 ParamByName('N_WOFF').AsInteger := BandedTableViewDBBandedNALLOC.EditValue;
                                 ExecSQL;

                              // 23-Nov-2011 AES un-commented this.  Issue with write-offs.  billed flag should be set to Y i think.
                                 if SystemString('WOF_DISB_BILLED_FLAG') = 'Y' then
                                 begin
                                    qryAllocUpdate.ParamByName('NALLOC').AsInteger := BandedTableViewDBBandedNALLOC.EditValue;
                                    qryAllocUpdate.ExecSQL;
                                 end;

                                 // 27-Mar-2012 AES need to make the original Invoice paid so that it will not appear again
                                 //qryInvoiceUpdate.ParamByName('ninvoice').AsInteger := BandedTableViewDBBandedNINVOICE.EditValue;
                                 //qryInvoiceUpdate.ExecSQL;

                                 {post components}
                                 sLedgerKey :=  glComponentSetup.buildLedgerKey('',TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_CR'),'',true,'');

                                 PostLedger(dtpDate.Date
                                   , BandedTableViewDBBandedAMOUNT.EditValue
                                   , 0
                                   , ParamByName('REFNO').AsString
                                   , 'JOURNAL'
                                   , iJournal
                                   , IntToStr(iJournal) + ':' + BandedTableViewDBBandedReason.EditValue
                                   , sLedgerKey
                                   , MatterString(qryLedger.FieldByName('REFNO').AsString, 'AUTHOR')
                                   , -1
                                   , ''
                                   , qryDisb.FieldByName('TAXCODE').AsString
                                   , FALSE
                                   , '0'
                                   , nAlloc
                                   ,TableInteger('MATTER', 'FILEID', FFileID, 'NMATTER'));

                                 MatterUpdate(ParamByName('NMATTER').AsInteger, 'UNBILL_CRED', 0 - ParamByName('AMOUNT').AsFloat);

                                 // RB - not sure why FLedger code was being used!
                                 //sLedgerKey :=  glComponentSetup.buildLedgerKey(TableString('MATTER', 'FILEID', FFileID, 'NMATTER'),FLedgerCode,'',false,'');

                                 // lookup the ledger code based on the value entered
                                 glInstance := dmAxiom.getGlComponents.parseString(tbLedger.Text,true);
                                 if not glInstance.valid then
                                 begin
                                    // something has gone very wrong !
                                    raise Exception.create('Error invalid ledger key');
                                 end;

                                 // Post to the write off ledger
                                 PostLedger(dtpDate.Date
                                   , 0 - BandedTableViewDBBandedAMOUNT.EditValue
                                   , 0
                                   , IntToStr(iJournal)
                                   , 'JOURNAL'
                                   , iJournal
                                   , IntToStr(iJournal) + ':' + tbDesc.Text
                                   , glInstance.ledgerKey
                                   , ''
                                   , -1
                                   , ''
                                   , qryDisb.FieldByName('TAXCODE').AsString
                                   , FALSE
                                   , '0'
                                   , nAlloc
                                   ,TableInteger('MATTER', 'FILEID', FFileID, 'NMATTER'));
                                   glInstance.Free;
                              end;
                           end;
                        end; // for  loop

                        // Now save the general ledger items
                        qryJournal.ApplyUpdates;
                        qryLedger.CancelUpdates;

                        CheckLedgerTotal;

                        dmAxiom.uniInsight.Commit;
                        MsgInfo('Posted Journal ' + IntToStr(iJournal));
                     end
                     else
                     begin
                        MsgInfo('You must select at least one record to write off');
                        dmAxiom.uniInsight.Rollback;
                     end;
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

         if (not bPostingFailed) and (bAnySelected) then
         begin
            if not boolean(chkNoExit.EditValue) then
            begin
               Self.Close;
 //            RemoveFromDesktop(Self);
            end
            else
            begin
//               tbDesc.Text := '';
               qryDisb.Close;
               beMatterNo.Text := '';
               dblblMatterDescr.Caption := '';
               TotalAmt := 0;
               Balance := 0;
               Tax := 0;
               FLedgerCode := '';
               FFileID := '';
               lblUnallocated.Caption := '0.00';
               qryLedger.Close;
               qryLedger.Open;
               qryJournal.Close;
               tbDesc.SetFocus;
               cxLabel5.Caption := '$0.00';
               cxLabel6.Caption := '$0.00';
               TotalTax := 0;
            end;
         end;
      end;
   end;
end;


procedure TfrmWriteOffDisb.qryLedgerAfterInsert(DataSet: TDataSet);
begin
   qryLedger.FieldByName('CREATED').AsDateTime := dtpDate.Date;
   qryLedger.FieldByName('TYPE').AsString := 'Matter';
   qryLedger.FieldByName('REASON').AsString := tbDesc.Text;
   qryLedger.FieldByName('TAXCODE').AsString := DefaultTax;
end;

procedure TfrmWriteOffDisb.dbgrLedgerExit(Sender: TObject);
begin
   UpdateTotal;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmWriteOffDisb.qryLedgerAfterPost(DataSet: TDataSet);
begin
   UpdateTotal;
end;

procedure TfrmWriteOffDisb.qryLedgerAfterDelete(DataSet: TDataSet);
begin
   UpdateTotal;
end;

procedure TfrmWriteOffDisb.popRemoveClick(Sender: TObject);
begin
   if not qryLedger.IsEmpty then
      qryLedger.Delete;
end;

procedure TfrmWriteOffDisb.popEditClick(Sender: TObject);
begin
   if not qryLedger.IsEmpty then
      qryLedger.Edit;
end;

procedure TfrmWriteOffDisb.FormCreate(Sender: TObject);
begin
   TotalAmt := 0;
   Balance := 0;
   Tax := 0;
   DefaultTax := dmAxiom.DefaultTax;
//  StringPopulate(dbgrLedger.Columns[colTAXCODE].PickList, 'TAXTYPE', 'CODE');
   qryMatters.SQL.Text := SQL_MATTER;
end;

procedure TfrmWriteOffDisb.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = ' ' then
      Quickcode(tbDesc);
end;

procedure TfrmWriteOffDisb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryJournal.Close;
   qryLedger.Close;
   RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmWriteOffDisb.FormShow(Sender: TObject);
begin
//  tbLedger.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UNDISB_DR');

   qryLedger.Open;
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
   dtpDate.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;
end;

procedure TfrmWriteOffDisb.dbgrLedgerEnter(Sender: TObject);
begin
   if qryLedger.IsEmpty then
      qryLedger.Insert;
end;

procedure TfrmWriteOffDisb.tbDescExit(Sender: TObject);
begin
   QuickCode(Sender);
end;

procedure TfrmWriteOffDisb.btnLedgerClick(Sender: TObject);
begin
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

   if frmLedgerSearch.ShowModal = mrOk then
   begin
      tbLedger.Text := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      lblLedgerDescr.Caption := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
   end;
end;

procedure TfrmWriteOffDisb.tbLedgerExit(Sender: TObject);
var
   sTmp : string;
begin
   if tbLedger.Text <> '' then
   begin
      sTmp := LedgerString(tbLedger.Text, 'REPORT_DESC');
      if sTmp <> '' then
         lblLedgerDescr.Caption := sTmp
      else
      begin
         MsgErr('Invalid Ledger Code');
         tbLedger.SetFocus;
      end;
   end;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmWriteOffDisb.qryLedgerDEBITChange(Sender: TField);
begin
   CalcTax;
end;

procedure TfrmWriteOffDisb.CalcTax;
var
   dAmount: double;
begin
{  qryLedgerDEBIT.OnChange := nil;

  dAmount := qryLedger.FieldByName('DEBIT').AsCurrency;
  qryLedger.FieldByName('TAX').AsFloat := TaxCalc(dAmount, '', qryLedger.FieldByName('TAXCODE').AsString, dtpDate.Date);

  qryLedger.FieldByName('DEBIT').AsCurrency := dAmount;
  if qryLedger.State <> dsInsert then
    UpdateTotal;
  qryLedgerDEBIT.OnChange := qryLedgerDEBITChange;    }
end;

procedure TfrmWriteOffDisb.qryLedgerTAXCODEChange(Sender: TField);
begin
   qryLedger.FieldByName('WITHHOLD').AsString := TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('TAXCODE').AsString, 'WITHHOLDING');
   CalcTax;
end;

procedure TfrmWriteOffDisb.qryLedgerBeforeScroll(DataSet: TDataSet);
begin
//     qryDisb.Close;
end;

procedure TfrmWriteOffDisb.qryLedgerAfterScroll(DataSet: TDataSet);
begin
//   qryDisb.close;
//   qryDisb.ParamByName('p_file').AsString := matterstring(qryLedger.FieldByName('REFNO').AsString,'NMATTER');
//   qryDisb.Open;
end;

procedure TfrmWriteOffDisb.rgledgertypeClick(Sender: TObject);
var glComponentSetup : TglComponentSetup;
glInstance : TglComponentInstance;
begin
   glComponentSetup := dmAxiom.getGlComponents;
   qryMatters.ParamByName('P_FILE').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString,'NMATTER');
   qryMatters.Open;

   if not qryMatters.Eof then
   begin
      if rgledgertype.ItemIndex = 0 then
      begin
         FLedgerCode := tableString('EMPLOYEE','CODE',MatterString(beMatterNo.text, 'AUTHOR'),'DISBWOFF_CHART');
      end
      else
      begin
         FLedgerCode := tableString('EMPLOYEE','CODE',MatterString(beMatterNo.text, 'AUTHOR'),'DISBUNREC_CHART');
      end;
      if (FLedgerCode <> '') then
      begin
         glInstance :=  glComponentSetup.buildLedgerComponent(qryMatters.FieldByName('NMATTER').AsString,FLedgerCode,'',false,'');
         lblLedgerDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
         tbLedger.Text := glInstance.fullCode;
      end;
   end;
   qryMatters.Close;
   glInstance.free;
end;


procedure TfrmWriteOffDisb.rgTypePropertiesChange(Sender: TObject);
var
  AMatterNo : string;
begin
      AMatterNo := beMatterNo.Text;
      if (MatterIsCurrent(AMatterNo)) then
      begin
         qryDisb.close;
         qryDisb.ParamByName('p_file').AsString := matterstring(qryLedger.FieldByName('REFNO').AsString,'NMATTER');
         if rgtype.ItemIndex = 0 then
            qryDisb.ParamByName('w_type').AsString := 'C'
         else
            qryDisb.ParamByName('w_type').AsString := 'I';
         qryDisb.Open;
         GenerateUnboundData;
      end;
end;

procedure TfrmWriteOffDisb.tbLedgerChange(Sender: TObject);
var
stmp : String;
begin
    if tbLedger.Text = '' then
        ShowMessage('Warning, empty ledger code');

  if tbLedger.Text <> '' then
  begin
    sTmp := LedgerString(tbLedger.Text, 'REPORT_DESC');
    if sTmp <> '' then
      lblLedgerDescr.Caption := sTmp;
  end;

end;

procedure TfrmWriteOffDisb.cxButtonEdit1PropertiesValidate(Sender: TObject;
  var   DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  glComponentSetup : TglComponentSetup;
  glInstance : TglComponentInstance;
  AMatterNo: string;
begin
   try
      glComponentSetup := dmAxiom.getGlComponents;
      Screen.Cursor := crSQLWait;
      AMatterNo := string(DisplayValue);
      if (MatterIsCurrent(AMatterNo)) then
      begin
         if not qryLedger.Modified then
            qryLedger.Edit;

//         dbgrLedger.Columns.Items[colREFNO].Field.Text := Trim(dbgrLedger.Columns.Items[colREFNO].Field.Text);
//         dbgrLedger.Columns.Items[colREFNO].Field.Text := UpperCase(dbgrLedger.Columns.Items[colREFNO].Field.Text);
         FFileID := DisplayValue;
//         DisplayValue := FFileID + ' - ' + qryLedger.FieldByName('LONGDESC').AsString;
         qryLedger.FieldByName('REFNO').AsString := AMatterNo;
         qryLedger.FieldByName('LONGDESC').AsString := MatterString(AMatterNo, 'MATLOCATE');

         qryMatters.ParamByName('P_FILE').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString,'NMATTER');
         qryMatters.Open;
         qryLedger.FieldByName('AMOUNT').AsCurrency := (qryMatters.FieldByName('CAL_UNBILL_DISB').AsCurrency + qryMatters.FieldByName('TaxunbillDisb').AsCurrency)  ;
         qryLedger.FieldByName('DEBIT').AsCurrency := qryMatters.FieldByName('CAL_UNBILL_DISB').AsCurrency;


         if rgledgertype.ItemIndex = 0 then
         begin
            FLedgerCode := tableString('EMPLOYEE','CODE',MatterString(AMatterNo, 'AUTHOR'),'DISBWOFF_CHART');
            if FLedgerCode <> '' then
            begin
               // build the ledger code
               {post componsnts}
               glInstance :=  glComponentSetup.buildLedgerComponent(qryMatters.FieldByName('NMATTER').AsString,FLedgerCode,'',false,'');

               lblLedgerDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
               tbLedger.Text := glInstance.fullCode;
               glInstance.Free;
            end;
         end
         else
         begin
            FLedgerCode := tableString('EMPLOYEE','CODE',MatterString(AMatterNo, 'AUTHOR'),'DISBUNREC_CHART');
            if FLedgerCode <> '' then
            begin
               {post componsnts}
               glInstance :=  glComponentSetup.buildLedgerComponent(qryMatters.FieldByName('NMATTER').AsString,FLedgerCode,'',false,'');

               lblLedgerDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
               tbLedger.Text := glInstance.fullCode;
               glInstance.Free;
            end;
         end;

//         if qryMatters.FieldByName('TaxunbillDisb').AsCurrency <> 0.00 then
//            qryLedger.FieldByName('TAXCODE').AsString := 'GST'
//         else
//            qryLedger.FieldByName('TAXCODE').AsString := 'NOTAX';

         qryLedger.FieldByName('TAX').AsCurrency := qryMatters.FieldByName('TaxunbillDisb').AsCurrency;
//         qryLedger.FieldByName('ninvoice').AsInteger := TableInteger(qryMatters.FieldByName('').AsInteger;
//         TableInteger('ALLOC',
         qryMatters.Close;
         qryDisb.close;
         qryDisb.ParamByName('p_file').AsString := matterstring(qryLedger.FieldByName('REFNO').AsString,'NMATTER');
         if rgtype.ItemIndex = 0 then
            qryDisb.ParamByName('w_type').AsString := 'C'
         else
            qryDisb.ParamByName('w_type').AsString := 'I';
         qryDisb.Open;
         GenerateUnboundData;
      end
      else
      begin
         Screen.Cursor := crDefault;
         MessageDlg('This matter #' + AMatterNo + // qryLedger.FieldByName('REFNO').AsString +
                   ' is closed or does not exist.', mtError, [mbOK], 0);
//         qryLedger.Delete;
      end;    //  end if-else
   except on e: TglException do
       MsgErr('Error loading chart information, please check the ledger code on the employee' + #13 + e.Message);
   end;
   Screen.Cursor := crDefault;
end;

procedure TfrmWriteOffDisb.GenerateUnboundData;
   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      BandedTableView.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;
var
  I: Integer;
begin
   BandedTableView.BeginUpdate;
   try
      for I := 0 to BandedTableView.DataController.RecordCount - 1 do
      begin
         SetRecordValue(I, BandedTableViewDBBandedReason.Index, tbDesc.Text);
         SetRecordValue(I, BandedTableViewDBBandedWriteOff.Index, False);
      end;
   finally
      BandedTableView.EndUpdate;
  end;
end;

procedure TfrmWriteOffDisb.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var glComponentSetup : TglComponentSetup;
  glInstance : TglComponentInstance;
begin
   try
   glComponentSetup := dmAxiom.getGlComponents;
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOk then
   begin
      Screen.Cursor := crSQLWait;
      if rgledgertype.ItemIndex = 0 then
      begin
         FLedgerCode := tableString('EMPLOYEE','CODE',dmAxiom.qryMSearch.FieldByName('AUTHOR').AsString,'DISBWOFF_CHART');
         if FLedgerCode <> '' then
         begin
            tbLedger.Text := FLedgerCode;
            lblLedgerDesc.Caption := LedgerString(FLedgerCode, 'REPORT_DESC');
         end;
      end
      else
      begin
         FLedgerCode := tableString('EMPLOYEE','CODE',dmAxiom.qryMSearch.FieldByName('AUTHOR').AsString,'DISBUNREC_CHART');
         if FLedgerCode <> '' then
         begin
            tbLedger.Text := FLedgerCode ;
            lblLedgerDesc.Caption := LedgerString(FLedgerCode, 'REPORT_DESC');
         end;
      end;
      qryLedger.Edit;

//      dbgrLedger.Columns.Items[colREFNO].Field.Text := Trim(dbgrLedger.Columns.Items[colREFNO].Field.Text);
//      dbgrLedger.Columns.Items[colREFNO].Field.Text := UpperCase(dbgrLedger.Columns.Items[colREFNO].Field.Text);
      FFileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
 //     beMatterNo.Text := FFileID;
      beMatterNo.Text := FFileID + ' - ' + dmAxiom.qryMSearch.FieldByName('LONGDESCR').AsString;
      qryLedger.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      qryLedger.FieldByName('LONGDESC').AsString := MatterString(dmAxiom.qryMSearch.FieldByName('FILEID').AsString, 'MATLOCATE');

      qryMatters.ParamByName('P_FILE').AsString := MatterString(qryLedger.FieldByName('REFNO').AsString,'NMATTER');
      qryMatters.Open;
      qryLedger.FieldByName('AMOUNT').AsCurrency := (qryMatters.FieldByName('CAL_UNBILL_DISB').AsCurrency + qryMatters.FieldByName('TaxunbillDisb').AsCurrency)  ;
      qryLedger.FieldByName('DEBIT').AsCurrency := qryMatters.FieldByName('CAL_UNBILL_DISB').AsCurrency;

      if rgledgertype.ItemIndex = 0 then
      begin
         FLedgerCode := tableString('EMPLOYEE','CODE',qryMatters.FieldByName('AUTHOR').AsString,'DISBWOFF_CHART');
                  if FLedgerCode <> '' then
         begin
            // build the ledger code
            {post componsnts}
            glInstance :=  glComponentSetup.buildLedgerComponent(qryMatters.FieldByName('NMATTER').AsString,FLedgerCode,'',false,'');

            lblLedgerDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
            tbLedger.Text := glInstance.fullCode;
            glInstance.Free;
         end;
      end
      else
      begin
         FLedgerCode := tableString('EMPLOYEE','CODE',qryMatters.FieldByName('AUTHOR').AsString,'DISBUNREC_CHART');

         if FLedgerCode <> '' then
         begin
            {post componsnts}
            glInstance :=  glComponentSetup.buildLedgerComponent(qryMatters.FieldByName('NMATTER').AsString,FLedgerCode,'',false,'');

            lblLedgerDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
            tbLedger.Text := glInstance.fullCode;
            glInstance.Free;
         end;
      end;

{      if rgledgertype.ItemIndex = 0 then
      begin
         FLedgerCode := tableString('EMPLOYEE','CODE',qryMatters.FieldByName('AUTHOR').AsString,'DISBWOFF_CHART');
         if FLedgerCode <> '' then
         begin
            tbLedger.Text := FLedgerCode;
            lblLedgerDesc.Caption := LedgerString(FLedgerCode, 'REPORT_DESC');
         end;
      end
      else
      begin
         FLedgerCode := tableString('EMPLOYEE','CODE',qryMatters.FieldByName('AUTHOR').AsString,'DISBUNREC_CHART');
         if FLedgerCode <> '' then
         begin
            tbLedger.Text := FLedgerCode;
            lblLedgerDesc.Caption := LedgerString(FLedgerCode, 'REPORT_DESC');
         end;
      end;
}

      if qryMatters.FieldByName('TaxunbillDisb').AsCurrency <> 0.00 then
         qryLedger.FieldByName('TAXCODE').AsString := 'GST'
      else
         qryLedger.FieldByName('TAXCODE').AsString := 'NOTAX';

      qryLedger.FieldByName('TAX').AsCurrency := qryMatters.FieldByName('TaxunbillDisb').AsCurrency;
      qryMatters.Close;
      qryDisb.close;
      qryDisb.ParamByName('p_file').AsString := matterstring(qryLedger.FieldByName('REFNO').AsString,'NMATTER');
      if rgtype.ItemIndex = 0 then
          qryDisb.ParamByName('w_type').AsString := 'C'
      else
          qryDisb.ParamByName('w_type').AsString := 'I';
      qryDisb.Open;
      GenerateUnboundData;
   end;


   beMatterNo.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;

   except on e: TglException do
       MsgErr('Error loading chart information, please check the ledger code on the employee' + #13 + e.Message);
   end;

   Screen.Cursor := crdefault;
//      qryLedger.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
//      qryLedger.FieldByName('LONGDESC').AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString + ' ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
//      if qryLedger.FieldByName('REASON').AsString = '' then
//         qryLedger.FieldByName('REASON').AsString := tbDesc.Text;

end;

procedure TfrmWriteOffDisb.BandedTableViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   if (ARecord is TcxGridDataRow) and not ARecord.Selected and
      (ARecord.Values[BandedTableViewDBBandedWriteOff.Index] = True) then
      AStyle := styChecked;
end;

procedure TfrmWriteOffDisb.beLedgerPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

   if frmLedgerSearch.ShowModal = mrOk then
   begin
      tbLedger.EditValue := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      lblLedgerDesc.Caption := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
//      lblLedgerDescr.Caption := frmLedgerSearch.qryLedgers.FieldByName('REPORT_DESC').AsString;
  end;
end;

procedure TfrmWriteOffDisb.beLedgerPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   stmp : String;
   glInstance : TglComponentInstance ;
begin
   if DisplayValue <> '' then
   begin

      // lookup the ledger code based on the value entered
      glInstance := dmAxiom.getGlComponents.parseString(DisplayValue,true);

      if not glInstance.valid then
      begin
         glInstance.displayError;
         DisplayValue := '';
         lblLedgerDesc.Caption := '';
         glInstance.free;
         tbLedger.SetFocus;
      end
      else
      begin
        DisplayValue := glInstance.fullCode;
        lblLedgerDesc.Caption := LedgerString(glInstance.ledgerKey, 'REPORT_DESC');
      end;

      //sTmp := LedgerString(tbLedger.Text, 'REPORT_DESC');
      //if sTmp <> '' then
      //   lblLedgerDesc.Caption := sTmp
      //else
      //begin
      //MsgErr('Invalid Ledger Code');
      //tbLedger.SetFocus;
      //end;
   end;
   btnOK.Enabled := OKtoPost(False);
end;

procedure TfrmWriteOffDisb.beLedgerPropertiesChange(Sender: TObject);
var
   stmp : String;
begin
{   if tbLedger.Text = '' then
      ShowMessage('Warning, empty ledger code');

   if tbLedger.Text <> '' then
   begin
      sTmp := LedgerString(tbLedger.Text, 'REPORT_DESC');
      if sTmp <> '' then
         tbLedger.Text := sTmp;
   end;    }
end;

procedure TfrmWriteOffDisb.BandedTableViewDBBandedWriteOffPropertiesChange(
  Sender: TObject);
begin
   BandedTableView.DataController.FocusedRowIndex;
   if BandedTableView.DataController.GetValue(BandedTableView.DataController.FocusedRowIndex, BandedTableViewDBBandedWriteOff.Index) = True then
   begin
      TotalAmt := TotalAmt + BandedTableViewDBBandedAMOUNT.EditValue;
      if VarIsNull(BandedTableViewDBBandedTAX.EditValue) then
         TotalTax := TotalTax + 0
      else
         TotalTax := TotalTax + BandedTableViewDBBandedTAX.EditValue;
   end
   else
   begin
      TotalAmt := TotalAmt - BandedTableViewDBBandedAMOUNT.EditValue;
      if VarIsNull(BandedTableViewDBBandedTAX.EditValue) then
         TotalTax := TotalTax - 0
      else
         TotalTax := TotalTax - BandedTableViewDBBandedTAX.EditValue;
      if TotalAmt < 0 then TotalAmt := 0;
      if TotalTax < 0 then TotalTax := 0;
   end;
   cxLabel5.Caption := CurrToStrF(TotalAmt, ffCurrency, 2);
   cxLabel6.Caption := CurrToStrF(TotalTax, ffCurrency, 2);
end;

end.

