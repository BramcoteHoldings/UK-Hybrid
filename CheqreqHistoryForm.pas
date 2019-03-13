unit CheqreqHistoryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ImgList, ToolWin, ExtCtrls,
  DB, OracleUniProvider, Uni, DBAccess, MemDS, DBCtrls, ActnList, ActnMan, ActnCtrls, Menus,
  XPStyleActnCtrls;

type
  TfrmCheqreqHistory = class(TForm)
    ImageList: TImageList;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dbgCheqReqs: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btnClose: TButton;
    Splitter1: TSplitter;
    pcCheqReqs: TPageControl;
    tsPayments: TTabSheet;
    dbgPaymentAllocs: TDBGrid;
    StatusBar: TStatusBar;
    tsReceipts: TTabSheet;
    qryMatterDetails: TUniQuery;
    dsMatterDetails: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    lbPartner: TLabel;
    lbLawyer: TLabel;
    lbLegalAsst: TLabel;
    lbMatterType: TLabel;
    lbBranch: TLabel;
    qryCheqReqs: TUniQuery;
    dsCheqReqs: TDataSource;
    dsPaymentAllocs: TDataSource;
    qryPaymentAllocs: TUniQuery;
    rbShowAllForThisMatter: TRadioButton;
    rbShowRelated: TRadioButton;
    dsCheqReqTrans: TDataSource;
    qryCheqReqTrans: TUniQuery;
    dsCheque: TDataSource;
    qryCheque: TUniQuery;
    dsReceipts: TDataSource;
    qryReceipts: TUniQuery;
    ActionManager: TActionManager;
    ActionToolBar: TActionToolBar;
    aFindMatter: TAction;
    aMarkCheqReqAsConverted: TAction;
    pmCheqReqs: TPopupMenu;
    miMarkthisChequeRequestasConverted: TMenuItem;
    aMarkCheqReqAsUnconverted: TAction;
    MarkthisChequeRequestasConverted1: TMenuItem;
    Splitter2: TSplitter;
    gbReceipts: TGroupBox;
    dbgReceipts: TDBGrid;
    Splitter3: TSplitter;
    gbCheques: TGroupBox;
    dbgCheque: TDBGrid;
    rbShowAllForAll: TRadioButton;
    Label9: TLabel;
    gbLegend: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Shape6: TShape;
    Label20: TLabel;
    aMarkAsFromReversedBill: TAction;
    MarkthisCheqreqRequestasbelongingtoaReversedBill1: TMenuItem;
    aMoveTransToOtherCheqreq: TAction;
    pmCheqreqTrans: TPopupMenu;
    ReallocatethisCheqreqTransactiontoanotherChequeRequest1: TMenuItem;
    Panel1: TPanel;
    dbgCheqReqTrans: TDBGrid;
    dbgReceiptAllocs: TDBGrid;
    Splitter4: TSplitter;
    qryReceiptAllocs: TUniQuery;
    dsReceiptAllocs: TDataSource;
    aMoveTransToOtherAlloc: TAction;
    ReallocatethisCheqreqTransactiontoanotherAllocationRecord1: TMenuItem;
    aChangeAmountOfTrans: TAction;
    ChangetheamountofthisChequeRequestTransaction1: TMenuItem;
    aAllocateCheqReqtoCheque: TAction;
    AllocatethisChequeRequesttoanExistingCheque1: TMenuItem;
    aDisburseTransToUnreceiptedCheqReqs: TAction;
    ReallocatethisCheqreqTransactiontounreceiptedCheqreqs1: TMenuItem;
    aDeleteCheqreqTrans: TAction;
    DeletethisCheqreqTransaction1: TMenuItem;
    aDeleteCheqreq: TAction;
    DeletethisChequeRequest1: TMenuItem;
    tsBills: TTabSheet;
    dbgBills: TDBGrid;
    qryBillDetails: TUniQuery;
    dsBillDetails: TDataSource;
    Shape7: TShape;
    Label12: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure qryMatterDetailsAfterOpen(DataSet: TDataSet);
    procedure qryPaymentAllocsBeforeOpen(DataSet: TDataSet);
    procedure qryCheqReqsBeforeScroll(DataSet: TDataSet);
    procedure qryCheqReqsAfterScroll(DataSet: TDataSet);
    procedure qryCheqReqTransBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryChequeBeforeOpen(DataSet: TDataSet);
    procedure rbShowAllForThisMatterClick(Sender: TObject);
    procedure rbShowRelatedClick(Sender: TObject);
    procedure aMarkCheqReqAsConvertedExecute(Sender: TObject);
    procedure aMarkCheqReqAsConvertedUpdate(Sender: TObject);
    procedure aMarkCheqReqAsUnconvertedExecute(Sender: TObject);
    procedure aMarkCheqReqAsUnconvertedUpdate(Sender: TObject);
    procedure aFindMatterExecute(Sender: TObject);
    procedure qryCheqReqTransAfterOpen(DataSet: TDataSet);
    procedure qryPaymentAllocsAfterOpen(DataSet: TDataSet);
    procedure qryReceiptsBeforeOpen(DataSet: TDataSet);
    procedure aMarkAsFromReversedBillUpdate(Sender: TObject);
    procedure aMarkAsFromReversedBillExecute(Sender: TObject);
    procedure aMoveTransToOtherCheqreqUpdate(Sender: TObject);
    procedure aMoveTransToOtherCheqreqExecute(Sender: TObject);
    procedure qryReceiptAllocsAfterOpen(DataSet: TDataSet);
    procedure qryCheqReqsAfterOpen(DataSet: TDataSet);
    procedure qryCheqReqsBeforeClose(DataSet: TDataSet);
    procedure qryCheqReqTransBeforeClose(DataSet: TDataSet);
    procedure qryReceiptAllocsBeforeClose(DataSet: TDataSet);
    procedure qryReceiptAllocsBeforeOpen(DataSet: TDataSet);
    procedure qryPaymentAllocsBeforeClose(DataSet: TDataSet);
    procedure aMoveTransToOtherAllocUpdate(Sender: TObject);
    procedure aChangeAmountOfTransUpdate(Sender: TObject);
    procedure aMoveTransToOtherAllocExecute(Sender: TObject);
    procedure aChangeAmountOfTransExecute(Sender: TObject);
    procedure dbgCheqReqsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure aAllocateCheqReqtoChequeUpdate(Sender: TObject);
    procedure aAllocateCheqReqtoChequeExecute(Sender: TObject);
    procedure aDisburseTransToUnreceiptedCheqReqsExecute(Sender: TObject);
    procedure aDisburseTransToUnreceiptedCheqReqsUpdate(Sender: TObject);
    procedure aDeleteCheqreqTransUpdate(Sender: TObject);
    procedure aDeleteCheqreqTransExecute(Sender: TObject);
    procedure qryCheqReqsAfterPost(DataSet: TDataSet);
    procedure qryMatterDetailsBeforeClose(DataSet: TDataSet);
    procedure aDeleteCheqreqUpdate(Sender: TObject);
    procedure aDeleteCheqreqExecute(Sender: TObject);
    procedure qryBillDetailsBeforeOpen(DataSet: TDataSet);
  private
    procedure RefreshQueries;
    procedure UpdateGridValue(aDBGrid: TDBGrid; aColumn: string);
    procedure ReAllocateCheqreqTrans(aColumn: string);

    function  HasParamFor(sSql : String; sKeyword : String) : Boolean;

  public
    { Public declarations }
  end;

var
  frmCheqreqHistory: TfrmCheqreqHistory;

implementation

uses AxiomData, MiscFunc, MSearch, citfunc;

{$R *.dfm}

procedure TfrmCheqreqHistory.FormCreate(Sender: TObject);
begin
{
  Modified 6.11.2002 GG

  Changed names of the tabsheets to something more relevant.

  pcCheqReqs.ActivePage:= tsCheqReqTrans;
}
  pcCheqReqs.ActivePage:= tsReceipts;

  Height:= 550;
  Width:= 790
end;

procedure TfrmCheqreqHistory.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfrmCheqreqHistory.aFindMatterExecute(Sender: TObject);
  { Use the matter search form to locate the matter we want,
    and then show the details of that matter in this screen}
var
  MatterNum, NewMatterNum: Integer;
begin
  MatterNum:= qryMatterDetails.FieldByName('NMATTER').AsInteger;
  NewMatterNum:= MatterNum;

  // load the matter search form
  if not FormExists(frmMatterSearch) then
    Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

  if frmMatterSearch.ShowModal = mrOk then
    NewMatterNum:= dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;

  // display the matter details
  if NewMatterNum <> MatterNum then
  begin
    qryMatterDetails.Close;
    qryMatterDetails.ParamByName('NMATTER').AsInteger:= NewMatterNum;
    qryMatterDetails.Open

  end;
  
end;

procedure TfrmCheqreqHistory.RefreshQueries;
var
  NCheqReq: Integer;
begin
  NCheqReq:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;

  { Refresh all the queries.  Don't use refresh, because it won't re-bind
    parameters if they have changed}
  qryCheqReqs.Close;

  if (HasParamFor(qryCheqReqs.SQL.Text, ':FILEID')) then
    qryCheqReqs.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  qryCheqReqs.Open;

  // Go back to the original Cheqreq
  qryCheqReqs.Locate('NCHEQREQ', NCheqReq, [])
end;

procedure TfrmCheqreqHistory.qryMatterDetailsAfterOpen(DataSet: TDataSet);
begin
  // retrieve the descriptions of the values returned from the Matter query
  lbPartner.Caption:= TableString('EMPLOYEE', 'CODE', qryMatterDetails.FieldByName('PARTNER').AsString, 'NAME');
  lbLawyer.Caption:= TableString('EMPLOYEE', 'CODE', qryMatterDetails.FieldByName('AUTHOR').AsString, 'NAME');
  lbLegalAsst.Caption:= TableString('EMPLOYEE', 'CODE', qryMatterDetails.FieldByName('OPERATOR').AsString, 'NAME');
  lbMatterType.Caption:= TableString('MATTERTYPE', 'CODE', qryMatterDetails.FieldByName('TYPE').AsInteger, 'DESCR');
  lbBranch.Caption:= TableString('BRANCH', 'CODE', qryMatterDetails.FieldByName('BRANCH').AsInteger, 'DESCR');

  qryCheqReqs.Close;

  if (HasParamFor(qryCheqReqs.SQL.Text, ':FILEID')) then
    qryCheqReqs.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  qryCheqReqs.Open

end;

procedure TfrmCheqreqHistory.qryCheqReqsBeforeScroll(DataSet: TDataSet);
begin
  if rbShowRelated.Checked then
  begin
    qryCheqReqTrans.Close;
    qryPaymentAllocs.Close;
{
  Added 5.11.2002 GG
}
    qryBillDetails.Close
  end
end;

procedure TfrmCheqreqHistory.qryCheqReqsAfterScroll(DataSet: TDataSet);
begin
  if rbShowRelated.Checked then
  begin
    qryCheqReqTrans.Close;

    if (HasParamFor(qryCheqReqTrans.SQL.Text, ':FILEID')) then
      qryCheqReqTrans.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

    qryCheqReqTrans.Open;
    qryPaymentAllocs.Open;
{
  Added 5.11.2002 GG
}
    qryBillDetails.Open
  end
end;

procedure TfrmCheqreqHistory.qryCheqReqTransBeforeOpen(DataSet: TDataSet);
begin
  // set the SQL code for the cheqreq_trans query
  qryCheqReqTrans.SQL.Clear;
  qryCheqReqTrans.SQL.Add('SELECT C.*, C.ROWID FROM CHEQREQ_TRANS C WHERE ');

  if rbShowAllForAll.Checked then
  begin
    qryCheqReqTrans.SQL.Add('C.NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)) ');
    qryCheqReqTrans.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;
    qryCheqReqTrans.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  if rbShowAllForThisMatter.Checked then
  begin
    qryCheqReqTrans.SQL.Add('C.NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)) ');
    qryCheqReqTrans.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;
    qryCheqReqTrans.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  begin
    qryCheqReqTrans.SQL.Add('C.NCHEQREQ = :NCHEQREQ ');
    qryCheqReqTrans.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;

  end;

end;

procedure TfrmCheqreqHistory.qryReceiptAllocsBeforeOpen(DataSet: TDataSet);
begin
  // set the SQL for the Receipt Allocations query
  qryReceiptAllocs.SQL.Clear;
  qryReceiptAllocs.SQL.Add('SELECT * FROM ALLOC WHERE');

  if rbShowAllForAll.Checked then
  begin
    qryReceiptAllocs.SQL.Add('  NALLOC IN (SELECT NALLOC FROM CHEQREQ_TRANS WHERE ');
    qryReceiptAllocs.SQL.Add('             NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)))');
    qryReceiptAllocs.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  if rbShowAllForThisMatter.Checked then
  begin
    qryReceiptAllocs.SQL.Add('  NALLOC IN (SELECT NALLOC FROM CHEQREQ_TRANS WHERE ');
    qryReceiptAllocs.SQL.Add('             NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID))) AND');
    qryReceiptAllocs.SQL.Add('  NMATTER = :NMATTER');
    qryReceiptAllocs.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  begin
    qryReceiptAllocs.SQL.Add('  NALLOC IN (SELECT NALLOC FROM CHEQREQ_TRANS WHERE ');
    qryReceiptAllocs.SQL.Add('             NCHEQREQ = :NCHEQREQ) AND');
    qryReceiptAllocs.SQL.Add('  NMATTER = :NMATTER');
    qryReceiptAllocs.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;

  end;

  qryReceiptAllocs.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;

end;

procedure TfrmCheqreqHistory.qryReceiptsBeforeOpen(DataSet: TDataSet);
begin
  // set the SQL code for the receipts query
  qryReceipts.SQL.Clear;
  qryReceipts.SQL.Add('SELECT * FROM RECEIPT WHERE ');
  qryReceipts.SQL.Add('NRECEIPT IN (SELECT A.NRECEIPT FROM CHEQREQ_TRANS CRT, ALLOC A WHERE ');

  if rbShowAllForAll.Checked then
  begin
    qryReceipts.SQL.Add('CRT.NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)) AND ');
    qryReceipts.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  if rbShowAllForThisMatter.Checked then
  begin
    qryReceipts.SQL.Add('CRT.NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)) AND ');
    qryReceipts.SQL.Add('A.NMATTER = :NMATTER AND ');
    qryReceipts.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  begin
    qryReceipts.SQL.Add('CRT.NCHEQREQ = :NCHEQREQ AND ');
    qryReceipts.SQL.Add('A.NMATTER = :NMATTER AND ');
    qryReceipts.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger

  end;

  qryReceipts.SQL.Add('A.NALLOC = CRT.NALLOC)');
  qryReceipts.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger

end;

procedure TfrmCheqreqHistory.qryPaymentAllocsBeforeOpen(DataSet: TDataSet);
begin
  // set the SQL code for the payment allocs query
  qryPaymentAllocs.SQL.Clear;
  qryPaymentAllocs.SQL.Add('SELECT * FROM ALLOC WHERE ');

  if rbShowAllForAll.Checked then
    begin
      qryPaymentAllocs.SQL.Add('NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID))');
      qryPaymentAllocs.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;
      
    end
  else
  if rbShowAllForThisMatter.Checked then
  begin
    qryPaymentAllocs.SQL.Add('NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)) AND');
    qryPaymentAllocs.SQL.Add('NMATTER = :NMATTER');
    qryPaymentAllocs.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  begin
    qryPaymentAllocs.SQL.Add('NCHEQREQ = :NCHEQREQ AND ');
    qryPaymentAllocs.SQL.Add('NMATTER = :NMATTER');
    qryPaymentAllocs.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger

  end;

  qryPaymentAllocs.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;

end;

procedure TfrmCheqreqHistory.qryChequeBeforeOpen(DataSet: TDataSet);
begin
  // set the SQL code for the cheques query
  qryCheque.SQL.Clear;
  qryCheque.SQL.Add('SELECT * FROM CHEQUE WHERE ');

  if rbShowAllForAll.Checked then
  begin
    qryCheque.SQL.Add('NCHEQUE IN (SELECT NCHEQUE FROM ALLOC WHERE ');
    qryCheque.SQL.Add('            NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)))');
    qryCheque.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  if rbShowAllForThisMatter.Checked then
  begin
    qryCheque.SQL.Add('NCHEQUE IN (SELECT NCHEQUE FROM ALLOC WHERE ');
    qryCheque.SQL.Add('            NCHEQREQ IN (SELECT NCHEQREQ FROM CHEQREQ WHERE NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)) AND');
    qryCheque.SQL.Add('            NMATTER = :NMATTER)');
    qryCheque.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  end
  else
  begin
    qryCheque.SQL.Add('NCHEQUE IN (SELECT NCHEQUE FROM ALLOC WHERE ');
    qryCheque.SQL.Add('            NCHEQREQ = :NCHEQREQ AND');
    qryCheque.SQL.Add('            NMATTER = :NMATTER)');
    qryCheque.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;

  end;

  qryCheque.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;

end;

procedure TfrmCheqreqHistory.rbShowAllForThisMatterClick(Sender: TObject);
begin
{
  Modified 6.11.2002 GG

  Changed names of the tabsheets to something more relevant.

  tsCheqReqTrans.Caption:= 'Receipt Transactions for these Cheque Requests';
  tsAllocs.Caption:= 'Payment Transactions against these Cheque Requests';
}
  tsReceipts.Caption:= 'Receipt Transactions for these Cheque Requests';
  tsPayments.Caption:= 'Payment Transactions against these Cheque Requests';
  tsBills.Caption:=  'Bill details for these Cheque Requests';

  RefreshQueries
end;

procedure TfrmCheqreqHistory.rbShowRelatedClick(Sender: TObject);
begin
{
  Modified 6.11.2002 GG

  Changed names of the tabsheets to something more relevant.

  tsCheqReqTrans.Caption:= 'Cheqreq Transactions for this Cheque Request';
  tsAllocs.Caption:= 'Payment Transactions against this Cheque Request';
}
  tsReceipts.Caption:= 'Receipt Transactions for this Cheque Request';
  tsPayments.Caption:= 'Payment Transactions against this Cheque Request';
  tsBills.Caption:=  'Bill details for this Cheque Request';

  RefreshQueries
end;

procedure TfrmCheqreqHistory.qryCheqReqTransAfterOpen(DataSet: TDataSet);
begin
  // open the receipt allocations query
  qryReceiptAllocs.Close;

  if (HasParamFor(qryReceiptAllocs.SQL.Text, ':FILEID')) then
    qryReceiptAllocs.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  qryReceiptAllocs.Open;
end;

procedure TfrmCheqreqHistory.qryPaymentAllocsAfterOpen(DataSet: TDataSet);
begin
  // open the cheque query
  qryCheque.Open;
end;

procedure TfrmCheqreqHistory.aMarkCheqReqAsConvertedExecute(
  Sender: TObject);

  procedure CreateBlankAllocRec(aPaid, aTaxPaid: Currency);
  var
    qryAddPayment,
    qryReceiptCRT,
    qryMatterDtl: TUniQuery;
    Amount, TaxAmount: Currency;
  begin
    // create an alloc record for this cheqreq - most fields will be blank
    qryAddPayment:= TUniQuery.Create(Self);
    qryReceiptCRT:= TUniQuery.Create(Self);
    qryMatterDtl:= TUniQuery.Create(Self);
    try
      qryAddPayment.Connection:= dmAxiom.uniInsight;
      qryReceiptCRT.Connection:= dmAxiom.uniInsight;
      qryMatterDtl.Connection:= dmAxiom.uniInsight;

      qryReceiptCRT.SQL.Clear;
{
  Modified 22.10.2002 GG

  This was not working when NALLOC is null

      qryReceiptCRT.SQL.Add('SELECT CREATED FROM CHEQREQ_TRANS WHERE NALLOC IS NOT NULL AND NCHEQREQ = :NCHEQREQ');
}
      qryReceiptCRT.SQL.Add('SELECT CREATED FROM CHEQREQ_TRANS WHERE NCHEQREQ = :NCHEQREQ ORDER BY CREATED DESC');
      qryReceiptCRT.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;
      qryReceiptCRT.Open;

      qryMatterDtl.SQL.Clear;
      qryMatterDtl.SQL.Add('SELECT NMATTER, NCLIENT, FILEID, ENTITY FROM MATTER WHERE NMATTER = :NMATTER');
      qryMatterDtl.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;
      qryMatterDtl.Open;

      qryAddPayment.SQL.Clear;
      qryAddPayment.SQL.Add('INSERT INTO ALLOC');
      qryAddPayment.SQL.Add('(NALLOC, NCHEQUE, CREATED, ACCT, BANK, NMATTER, NCLIENT, FILEID, BILLED, NMEMO, TAXCODE, AMOUNT, TAX, NCHEQREQ)');
      qryAddPayment.SQL.Add('VALUES');
      qryAddPayment.SQL.Add('(:NALLOC, :NCHEQUE, :CREATED, :ACCT, :BANK, :NMATTER, :NCLIENT, :FILEID, :BILLED, :NMEMO, :TAXCODE, :AMOUNT, :TAX, :NCHEQREQ)');
      qryAddPayment.ParamByName('NALLOC').AsInteger:= GetSeqnum('NALLOC');
      { Need a non-null value, otherwise this won't appear on the combo ledger.
        Don't know what to set it to, so 0 is as good as any... (0 isn't currently used as a cheque number)}
      qryAddPayment.ParamByName('NCHEQUE').AsInteger:= 0;
      qryAddPayment.ParamByName('ACCT').AsString:= qryMatterDtl.FieldByName('ENTITY').AsString;
      qryAddPayment.ParamByName('BANK').AsString:= qryCheqReqs.FieldByName('BANK').AsString;
      qryAddPayment.ParamByName('CREATED').AsDateTime:= qryReceiptCRT.FieldByName('CREATED').AsDateTime;
      qryAddPayment.ParamByName('NMATTER').AsInteger:= qryMatterDtl.FieldByName('NMATTER').AsInteger;
      qryAddPayment.ParamByName('NCLIENT').AsInteger:= qryMatterDtl.FieldByName('NCLIENT').AsInteger;
      qryAddPayment.ParamByName('FILEID').AsString:= qryMatterDtl.FieldByName('FILEID').AsString;
      qryAddPayment.ParamByName('BILLED').AsString:= qryCheqReqs.FieldByName('BILLED').AsString;
      qryAddPayment.ParamByName('NMEMO').AsInteger:= qryCheqReqs.FieldByName('NMEMO').AsInteger;
      qryAddPayment.ParamByName('TAXCODE').AsString:= qryCheqReqs.FieldByName('TAXCODE').AsString;
      Amount:= (-1 * qryCheqReqs.FieldByName('AMOUNT').AsCurrency) - aPaid;
      TaxAmount:= (-1 * qryCheqReqs.FieldByName('TAX').AsCurrency) - aTaxPaid;
      qryAddPayment.ParamByName('AMOUNT').AsCurrency:= Amount;
      qryAddPayment.ParamByName('TAX').AsCurrency:= TaxAmount;
      qryAddPayment.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;
      qryAddPayment.ExecSQL;
    finally
      qryMatterDtl.Close;
      qryMatterDtl.Free;

      qryReceiptCRT.Close;
      qryReceiptCRT.Free;

      qryAddPayment.Close;
      qryAddPayment.Free
    end
  end;

  procedure UpdateExistingAllocRec(aNAlloc: Integer; aPaid, aTaxPaid: Currency);
  var
    qryUpdatePayment: TUniQuery;
    Amount, TaxAmount: Currency;
  begin
    // update the existing payment record with the amount now payable against this cheqreq
    qryUpdatePayment:= TUniQuery.Create(Self);
    try
      qryUpdatePayment.Connection:= dmAxiom.uniInsight;

      qryUpdatePayment.SQL.Clear;
      qryUpdatePayment.SQL.Add('UPDATE ALLOC');
      qryUpdatePayment.SQL.Add('SET AMOUNT = (AMOUNT + :AMOUNT), TAX = (TAX + :TAX)');
      qryUpdatePayment.SQL.Add('WHERE');
      qryUpdatePayment.SQL.Add('NALLOC = :NALLOC');
      qryUpdatePayment.ParamByName('NALLOC').AsInteger:= aNAlloc;

      Amount:= (-1 * qryCheqReqs.FieldByName('AMOUNT').AsCurrency) - aPaid;
      TaxAmount:= (-1 * qryCheqReqs.FieldByName('TAX').AsCurrency) - aTaxPaid;
      qryUpdatePayment.ParamByName('AMOUNT').AsCurrency:= Amount;
      qryUpdatePayment.ParamByName('TAX').AsCurrency:= TaxAmount;
      qryUpdatePayment.ExecSQL;
    finally
      qryUpdatePayment.Close;
      qryUpdatePayment.Free
    end
  end;

var
  msg: string;
  qryFindPayment: TUniQuery;
begin
  if MessageDlg('Mark this cheqreq as Converted?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
    try
      qryCheqReqs.Edit;
      qryCheqReqs.FieldByName('CONVERTED').AsString:= 'Y';
      qryCheqReqs.Post;

      qryFindPayment:= TUniQuery.Create(Self);
      try
        qryFindPayment.Connection:= dmAxiom.uniInsight;
        qryFindPayment.SQL.Clear;
        qryFindPayment.SQL.Add('SELECT * FROM ALLOC WHERE NCHEQREQ = :NCHEQREQ and NCHEQUE IS NOT NULL');
        qryFindPayment.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;
        qryFindPayment.Open;

        if qryFindPayment.IsEmpty then
        begin
          msg:= Format('There does not appear to be an ALLOC record for cheqreq# %d.',
                       [qryCheqReqs.FieldByName('NCHEQREQ').AsInteger]) + #13#10#13#10 +
                       'Would you like to create an ALLOC record?' ;
          if MessageDlg(msg, mtWarning, [mbYes,mbNo], 0) = mrYes then
          begin
            CreateBlankAllocRec(0, 0)
          end
        end
        else
        begin
          msg:= Format('There is already an ALLOC record for cheqreq# %d.',
                       [qryCheqReqs.FieldByName('NCHEQREQ').AsInteger]) + #13#10#13#10 +
                       'Would you like to update this ALLOC record?' ;
          if MessageDlg(msg, mtWarning, [mbYes,mbNo], 0) = mrYes then
          begin
            UpdateExistingAllocRec(qryFindPayment.FieldByName('NALLOC').AsInteger,
                                   qryFindPayment.FieldByName('AMOUNT').AsCurrency,
                                   qryFindPayment.FieldByName('TAX').AsCurrency)
          end
          else
          begin
            if MessageDlg('Would you like a blank ALLOC record created instead?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
            begin
              CreateBlankAllocRec(qryFindPayment.FieldByName('AMOUNT').AsCurrency,
                                  qryFindPayment.FieldByName('TAX').AsCurrency)
            end
          end
        end;
      finally
        qryFindPayment.Close;
        qryFindPayment.Free
      end;

      dmAxiom.uniInsight.Commit
    except
      dmAxiom.uniInsight.Rollback;
      raise
    end;
    RefreshQueries
  end
end;

procedure TfrmCheqreqHistory.aMarkCheqReqAsConvertedUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled:= (ActiveControl = dbgCheqReqs) and
                                ((qryCheqReqs.FieldByName('CONVERTED').AsString = 'N') or
                                 (qryCheqReqs.FieldByName('CONVERTED').IsNull))
end;

procedure TfrmCheqreqHistory.aMarkCheqReqAsUnconvertedExecute(
  Sender: TObject);
var
  qryFindMatchingAlloc, qryDeleteMatchingAlloc: TUniQuery;
  OKToUnConvert: Boolean;
  msg, NAllocValues: string;
begin
  if MessageDlg('Mark this Cheque Request as Un-converted?'+#13+#10+'Any related, blank ALLOC records will be deleted.', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
    try
      OKToUnConvert:= True;

      // look for a blank alloc record for this cheqreq
      qryFindMatchingAlloc:= TUniQuery.Create(self);
      try
        qryFindMatchingAlloc.Connection:= dmAxiom.uniInsight;

        qryFindMatchingAlloc.SQL.Clear;
        qryFindMatchingAlloc.SQL.Add('SELECT * FROM ALLOC WHERE ');
        qryFindMatchingAlloc.SQL.Add('NMATTER = :NMATTER AND ');
        qryFindMatchingAlloc.SQL.Add('NCHEQREQ = :NCHEQREQ AND');
        qryFindMatchingAlloc.SQL.Add('NVL(NCHEQUE, 0) = 0');
        qryFindMatchingAlloc.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;
        qryFindMatchingAlloc.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;
        qryFindMatchingAlloc.Open;
        if not qryFindMatchingAlloc.IsEmpty then
        begin
          // this looks like a blank
          if qryFindMatchingAlloc.RecordCount = 1 then
          begin
            msg:= Format('Alloc# %s seems to be a blank alloc record.',
                         [qryFindMatchingAlloc.FieldByName('NALLOC').AsString])+#13+#10+'Do you want to delete it?';
            if not (MessageDlg(msg, mtWarning, [mbYes,mbNo], 0) = mrYes) then
              OKToUnConvert:= False;
          end
          else
          // more than one of them - list them all
          begin
            qryFindMatchingAlloc.First;
            while not qryFindMatchingAlloc.EOF do
            begin
              NAllocValues:= NAllocValues + qryFindMatchingAlloc.FieldByName('NALLOC').AsString;
              qryFindMatchingAlloc.Next;

              if not qryFindMatchingAlloc.EOF then
                NAllocValues:= NAllocValues + ', ';
            end;
            msg:= Format('Alloc#''s %s seem to be blank alloc records.',
                         [qryFindMatchingAlloc.FieldByName('NALLOC').AsString])+#13+#10+'Do you want to delete them?';
            if not (MessageDlg(msg, mtWarning, [mbYes,mbNo], 0) = mrYes) then
              OKToUnConvert:= False;
          end
        end;
        qryFindMatchingAlloc.Close;
      finally
        qryFindMatchingAlloc.Free
      end;

      if OKToUnConvert then
      begin
        // delete the matching alloc record
        qryDeleteMatchingAlloc:= TUniQuery.Create(self);
        try
          qryDeleteMatchingAlloc.SQL.Clear;
          qryDeleteMatchingAlloc.SQL.Add('DELETE FROM ALLOC WHERE');
          qryDeleteMatchingAlloc.SQL.Add('NMATTER = :NMATTER AND ');
          qryDeleteMatchingAlloc.SQL.Add('NCHEQREQ = :NCHEQREQ AND ');
          qryDeleteMatchingAlloc.SQL.Add('NVL(NCHEQUE, 0) = 0');
          qryDeleteMatchingAlloc.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;
          qryDeleteMatchingAlloc.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;

          qryDeleteMatchingAlloc.ExecSQL;
          qryDeleteMatchingAlloc.Close
        finally
          qryDeleteMatchingAlloc.Free
        end;

        // now change the CONVERTED field
        qryCheqReqs.Edit;
        qryCheqReqs.FieldByName('CONVERTED').AsString:= 'N';
        qryCheqReqs.Post;
      end
      else
        MessageDlg('Un-convert operation cancelled at your request', mtInformation, [mbOK], 0);
        
      dmAxiom.uniInsight.Commit
    except
      dmAxiom.uniInsight.Rollback;
      raise
    end;

    // now refresh the display queries
    RefreshQueries
  end
end;

procedure TfrmCheqreqHistory.aMarkCheqReqAsUnconvertedUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled:= (ActiveControl = dbgCheqReqs) and
                                ((qryCheqReqs.FieldByName('CONVERTED').AsString <> 'N') and
                                  (not qryCheqReqs.FieldByName('CONVERTED').IsNull))
end;

procedure TfrmCheqreqHistory.aMarkAsFromReversedBillUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled:= (ActiveControl = dbgCheqReqs) and
                                ((qryCheqReqs.FieldByName('CONVERTED').AsString <> 'R') and
                                 (qryCheqReqs.FieldByName('TRUST').AsString = 'T') and
                                  (not qryCheqReqs.FieldByName('CONVERTED').IsNull))
end;

procedure TfrmCheqreqHistory.aMarkAsFromReversedBillExecute(
  Sender: TObject);
begin
  if MessageDlg('Mark this cheqreq as belonging to a Reversed Bill?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
    try
      qryCheqReqs.Edit;
      qryCheqReqs.FieldByName('CONVERTED').AsString:= 'R';
      qryCheqReqs.Post;

      dmAxiom.uniInsight.Commit
    except
      dmAxiom.uniInsight.Rollback;
      raise
    end
  end
end;

procedure TfrmCheqreqHistory.aMoveTransToOtherCheqreqUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled:= ((ActiveControl = dbgCheqReqTrans) and (not qryCheqReqTrans.IsEmpty))
end;

procedure TfrmCheqreqHistory.qryReceiptAllocsAfterOpen(DataSet: TDataSet);
begin
  // open the Receipt query
  qryReceipts.Open;
end;

procedure TfrmCheqreqHistory.qryCheqReqsAfterOpen(DataSet: TDataSet);
begin
  //  Open the Cheqreq Transactions and Payment Allocations queries
  qryCheqReqTrans.Close;

  if (HasParamFor(qryCheqReqTrans.SQL.Text, ':FILEID')) then
    qryCheqReqTrans.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;

  qryCheqReqTrans.Open;
  qryPaymentAllocs.Open;
{
  Added 5.11.2002 GG
}
  qryBillDetails.Open
end;

procedure TfrmCheqreqHistory.qryCheqReqsBeforeClose(DataSet: TDataSet);
begin
  //   Close the Cheqreq Transactions and Payment Allocations queries
  qryCheqReqTrans.Close;
  qryPaymentAllocs.Close;
{
  Added 5.11.2002 GG
}
  qryBillDetails.Close
end;

procedure TfrmCheqreqHistory.qryCheqReqTransBeforeClose(DataSet: TDataSet);
begin
  // close the receipt allocations query
  qryReceiptAllocs.Close
end;

procedure TfrmCheqreqHistory.qryReceiptAllocsBeforeClose(
  DataSet: TDataSet);
begin
  // close the receipt query
  qryReceipts.Close
end;

procedure TfrmCheqreqHistory.qryPaymentAllocsBeforeClose(
  DataSet: TDataSet);
begin
  // close the Cheques query
  qryCheque.Close
end;

procedure TfrmCheqreqHistory.aMoveTransToOtherAllocUpdate(
  Sender: TObject);
begin
{
  Code modified 14.10.2002 GG

  14.10.02
  Don't want users able to re-allocate cheqreq transactions yet.
  Uncomment this code, and remove the .Visible line of code to make this feature work.

  (Sender as TAction).Enabled:= ((ActiveControl = dbgCheqReqTrans) and (not qryCheqReqTrans.IsEmpty))}

  (Sender as TAction).Visible:= False
end;

procedure TfrmCheqreqHistory.aChangeAmountOfTransUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= ((ActiveControl = dbgCheqReqTrans) and (not qryCheqReqTrans.IsEmpty))
end;

procedure TfrmCheqreqHistory.aMoveTransToOtherCheqreqExecute(
  Sender: TObject);
begin
  // reallocate the selected cheqreqtrans to another cheqreq of the users choice

  ReAllocateCheqreqTrans('NCHEQREQ')
end;

procedure TfrmCheqreqHistory.aMoveTransToOtherAllocExecute(
  Sender: TObject);
begin
  // reallocate the selected cheqreqtrans to another alloc record of the users choice

  ReAllocateCheqreqTrans('NALLOC');
end;

procedure TfrmCheqreqHistory.aChangeAmountOfTransExecute(Sender: TObject);
begin
  // change the amount of the selected cheqreq transaction record to a value of the users choice

  UpdateGridValue(dbgCheqReqTrans, 'AMOUNT');
end;

procedure TfrmCheqreqHistory.UpdateGridValue(aDBGrid: TDBGrid; aColumn: string);
var
  qryUpdate: TUniQuery;
  DataSet: TDataSet;
  Value: string;
  NCheqReq: integer;
begin
  NCheqReq:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;

  DataSet:= aDBGrid.DataSource.DataSet;
  Value:= DataSet.FieldByName(aColumn).AsString;
  if aDBGrid = dbgCheqReqTrans then
  begin
    if InputQuery('Edit CHEQREQ_TRANS record', 'Enter new value for ' + aColumn, Value) then
    begin
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try
        qryUpdate:= TUniQuery.Create(self);
        try
          qryUpdate.Connection:= dmAxiom.uniInsight;
          qryUpdate.SQL.Clear;
{
  Modified 27.11.2002 GG

  Changed this query to use RowID
  
          qryUpdate.SQL.Add('UPDATE CHEQREQ_TRANS SET ' + aColumn + ' = :VALUE' );
          qryUpdate.SQL.Add('WHERE CREATED = :CREATED AND AMOUNT = :AMOUNT AND NALLOC = :NALLOC AND NCHEQREQ = :NCHEQREQ AND OPERATOR = :OPERATOR');
          qryUpdate.ParamByName('VALUE').AsString:= Value;
          qryUpdate.ParamByName('CREATED').AsDateTime:= DataSet.FieldByName('CREATED').AsDateTime;
          qryUpdate.ParamByName('AMOUNT').AsCurrency:= DataSet.FieldByName('AMOUNT').AsCurrency;
          qryUpdate.ParamByName('NALLOC').AsInteger:= DataSet.FieldByName('NALLOC').AsInteger;
          qryUpdate.ParamByName('NCHEQREQ').AsInteger:= DataSet.FieldByName('NCHEQREQ').AsInteger;
          qryUpdate.ParamByName('OPERATOR').Value:= DataSet.FieldByName('OPERATOR').Value;
}
          qryUpdate.SQL.Add('UPDATE CHEQREQ_TRANS SET ' + aColumn + ' = :VALUE' );
          qryUpdate.SQL.Add(Format('WHERE CHEQREQ_TRANS.ROWID = ''%s''', [DataSet.FieldByName('ROWID').AsString]));
          qryUpdate.ParamByName('VALUE').AsString:= Value;
          qryUpdate.ExecSQL;
          qryUpdate.Close
        finally
          qryUpdate.Free
        end;
        dmAxiom.uniInsight.Commit;
      except
        dmAxiom.uniInsight.Rollback;
        raise
      end
    end
  end
  else
  if aDBGrid = dbgCheqReqs then
  begin
    if InputQuery('Edit CHEQREQ record ' + qryCheqReqTrans.FieldByName('NCHEQREQ').AsString, 'Enter new value for ' + aColumn, Value) then
    begin

      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try
        qryUpdate:= TUniQuery.Create(self);
        try
          qryUpdate.Connection:= dmAxiom.uniInsight;
          qryUpdate.SQL.Clear;
          qryUpdate.SQL.Add('UPDATE CHEQREQ SET ' + aColumn + ' = :VALUE' );
          qryUpdate.SQL.Add('WHERE NCHEQREQ = :NCHEQREQ');
          qryUpdate.ParamByName('VALUE').AsString:= Value;
          qryUpdate.ParamByName('NCHEQREQ').AsInteger:= NCheqReq;
          qryUpdate.ExecSQL;
          qryUpdate.Close
        finally
          qryUpdate.Free
        end;
        dmAxiom.uniInsight.Commit;
      except
        dmAxiom.uniInsight.Rollback;
        raise
      end
    end
  end;
  RefreshQueries;
end;

procedure TfrmCheqreqHistory.dbgCheqReqsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  dbGrid: TDBGrid;
begin
(*
  StatusBar.SimpleText:= '';
  if gdSelected in State then
    StatusBar.SimpleText:= 'Selected';
  if gdFocused in State then
  begin
    if StatusBar.SimpleText <> '' then
      StatusBar.SimpleText:= StatusBar.SimpleText + ', ';
    StatusBar.SimpleText:= 'Focused'
  end;
  if gdFixed in State then
  begin
    if StatusBar.SimpleText <> '' then
      StatusBar.SimpleText:= StatusBar.SimpleText + ', ';
    StatusBar.SimpleText:= 'Fixed'
  end;
*)
  dbGrid:= Sender as TDBGrid;

  if (gdSelected in State) and
     ((gdFocused in State) or (not(gdFocused in State) and (dgRowSelect in dbGrid.Options))) then
  begin
    if not dbGrid.DataSource.DataSet.FieldByName('REV_NCHEQREQ').IsNull then
      dbGrid.Canvas.Font.Color := clYellow
    else
      dbGrid.Canvas.Font.Color := clHighlightText
  end
  else
  begin
    if not dbGrid.DataSource.DataSet.FieldByName('REV_NCHEQREQ').IsNull then
      dbGrid.Canvas.Font.Color := clRed
    else
      dbGrid.Canvas.Font.Color := clWindowText
  end;
  dbGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmCheqreqHistory.aAllocateCheqReqtoChequeUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled:= (ActiveControl = dbgCheqReqs)
end;

procedure TfrmCheqreqHistory.aAllocateCheqReqtoChequeExecute(
  Sender: TObject);
begin
  // reallocate the selected cheqreqtrans to another alloc record of the users choice

  UpdateGridValue(dbgCheqReqs, 'NCHEQUE');
end;

procedure TfrmCheqreqHistory.aDisburseTransToUnreceiptedCheqReqsExecute(
  Sender: TObject);
var
  msg: string;
  qryUnreceiptedCheqreqs,
  qryCheqReqTransactions,
  qryUpdateCheqReq,
  qryUpdateCheqReqTrans: TUniQuery;
  CheqReqTransactionsCount: Integer;
  OriginalCRTCreated: TDate;
  OriginalCRTOperator: string;
  OriginalCRTNAlloc,
  OriginalCRTNCheqreq: Integer;
  CheqReqAmount, AmountToReAlloc, sumCRTAmounts,
  OriginalCRTAmount, ReallocAmount, PreviousCRTAmount: Currency;
begin
  // re-allocate this transaction to other unreceipted cheqreqs
  OriginalCRTCreated:= qryCheqReqTrans.FieldByName('CREATED').AsDateTime;
  OriginalCRTAmount:= qryCheqReqTrans.FieldByName('AMOUNT').AsCurrency;
  OriginalCRTNAlloc:= qryCheqReqTrans.FieldByName('NALLOC').AsInteger;
  OriginalCRTNCheqreq:= qryCheqReqTrans.FieldByName('NCHEQREQ').AsInteger;
  OriginalCRTOperator:= qryCheqReqTrans.FieldByName('OPERATOR').AsString;
  AmountToReAlloc:= OriginalCRTAmount;

  msg:= Format('This will re-allocate receipts valuing %m from cheqreq %s to outstanding ',
               [OriginalCRTAmount ,qryCheqReqs.FieldByName('NCHEQREQ').AsString]) +
               'cheqreqs for anticipated disbursements which do not have receipts attached to them.  This '+
               'operation will happen in order of the oldest Ant''d Cheqreq first, and will '+
               'continue until there are no more funds allocated to this cheqreq left to re-allocate.' + #13+#10+#13+#10+
               'Do you want to proceed?';
  if MessageDlg(msg, mtWarning, [mbYes,mbNo], 0) = mrYes then
  // start re-allocating the cheqreqtrans record to other cheqreqs
  begin
    // get the list of un-reversed cheqreqs for this matter
    qryUnreceiptedCheqreqs:= TUniQuery.Create(Self);
    qryUnreceiptedCheqreqs.Connection:= dmAxiom.uniInsight;

    qryCheqReqTransactions:= TUniQuery.Create(Self);
    qryCheqReqTransactions.Connection:= dmAxiom.uniInsight;
    try
      // set up the SQLs required for this activity
      qryUnreceiptedCheqreqs.SQL.Clear;
      qryUnreceiptedCheqreqs.SQL.Add('SELECT NCHEQREQ, NVL(AMOUNT, 0) + NVL(TAX, 0) as AMOUNT ');
      qryUnreceiptedCheqreqs.SQL.Add('FROM CHEQREQ WHERE (NMATTER = :NMATTER OR FILEID = NVL(:FILEID, FILEID)) AND TRUST <> ''T'' ');
      qryUnreceiptedCheqreqs.SQL.Add('AND ANTICIPATED = ''Y'' AND REV_NCHEQREQ IS NULL ');
      qryUnreceiptedCheqreqs.SQL.Add('ORDER BY NCHEQREQ');
      qryUnreceiptedCheqreqs.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;
      qryUnreceiptedCheqreqs.ParamByName('FILEID').AsString := qryMatterDetails.FieldByName('FILEID').AsString;
      qryUnreceiptedCheqreqs.Open;

      if not qryUnreceiptedCheqreqs.IsEmpty then
      begin
        // starting with the first cheqreq ...
        qryUnreceiptedCheqreqs.First;
        try
          if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;
          while not (qryUnreceiptedCheqreqs.EOF) and (AmountToReAlloc > 0) do
          begin
            CheqReqAmount:= qryUnreceiptedCheqreqs.FieldByName('AMOUNT').AsCurrency;
            try
              // ... get the sum of the amount column from the cheqreq_trans records for this cheqreq
              qryCheqReqTransactions.SQL.Clear;
              qryCheqReqTransactions.SQL.Add('SELECT SUM(AMOUNT) AS AMOUNT FROM CHEQREQ_TRANS WHERE NCHEQREQ = :NCHEQREQ');
              qryCheqReqTransactions.ParamByName('NCHEQREQ').AsInteger:= qryUnreceiptedCheqreqs.FieldByName('NCHEQREQ').AsInteger;
              qryCheqReqTransactions.Open;
              sumCRTAmounts:= qryCheqReqTransactions.FieldByName('AMOUNT').AsCurrency;
            finally
              qryCheqReqTransactions.Close
            end;

            // is the total amount already allocated less than the amount of the cheqreq?
            if sumCRTAmounts < CheqReqAmount then
            // if so, this cheqreq is only partly receipted to, so allocate more money to it
            begin
              ReallocAmount:= CheqReqAmount - sumCRTAmounts;
              //  Allocate the lesser of:
              //    - the difference between the amount ot the cheqreq less the total amount allocated so far
              //    - the amount of the original cheqreq transaction record
              if AmountToReAlloc < ReallocAmount then
                ReallocAmount:= AmountToReAlloc;
              AmountToReAlloc:= AmountToReAlloc - ReallocAmount;
              try
                //  is there a pre-existing cheqreq_trans record for the cheqreq we are looking at and the original alloc?
                qryCheqReqTransactions.SQL.Clear;
                qryCheqReqTransactions.SQL.Add('SELECT * FROM CHEQREQ_TRANS WHERE NCHEQREQ = :NCHEQREQ AND NALLOC = :NALLOC');
                qryCheqReqTransactions.ParamByName('NCHEQREQ').AsInteger:= qryUnreceiptedCheqreqs.FieldByName('NCHEQREQ').AsInteger;
                qryCheqReqTransactions.ParamByName('NALLOC').AsInteger:= qryCheqReqTrans.FieldByName('NALLOC').AsInteger;
                qryCheqReqTransactions.Open;
                PreviousCRTAmount:= qryCheqReqTransactions.FieldByname('AMOUNT').AsCurrency;
                CheqReqTransactionsCount:= qryCheqReqTransactions.RecordCount;
  { TODO -oGG : Remove this assert }
                Assert((CheqReqTransactionsCount = 0) or (CheqReqTransactionsCount = 1));

                qryCheqReqTransactions.Close;

                if CheqReqTransactionsCount = 0 then
                //  if not, create a new cheqreq_trans record
                begin
                  try
                    qryCheqReqTransactions.SQL.Clear;
                    qryCheqReqTransactions.SQL.Add('INSERT INTO CHEQREQ_TRANS (CREATED, AMOUNT, NCHEQREQ, NALLOC, OPERATOR) ');
                    qryCheqReqTransactions.SQL.Add('VALUES (:CREATED, :AMOUNT, :NCHEQREQ, :NALLOC, :OPERATOR)');
                    qryCheqReqTransactions.ParamByName('CREATED').AsDateTime:= OriginalCRTCreated;
                    qryCheqReqTransactions.ParamByName('AMOUNT').AsCurrency:= ReallocAmount;
                    qryCheqReqTransactions.ParamByName('NCHEQREQ').AsInteger:= qryUnreceiptedCheqreqs.FieldByName('NCHEQREQ').AsInteger;
                    qryCheqReqTransactions.ParamByName('NALLOC').AsInteger:= OriginalCRTNAlloc;
                    qryCheqReqTransactions.ParamByName('OPERATOR').AsString:= OriginalCRTOperator;
                    qryCheqReqTransactions.ExecSQL;
                  finally
                    qryCheqReqTransactions.Close;
                  end;
                end
                else
                //  if so, add the amount of this re-allocation to the current cheqreq_trans record
                begin
                  try
                    qryCheqReqTransactions.SQL.Clear;
                    qryCheqReqTransactions.SQL.Add('UPDATE CHEQREQ_TRANS SET AMOUNT = :AMOUNT WHERE NCHEQREQ = :NCHEQREQ AND NALLOC = :NALLOC');
                    qryCheqReqTransactions.ParamByName('AMOUNT').AsCurrency:= PreviousCRTAmount + ReallocAmount;
                    qryCheqReqTransactions.ParamByName('NCHEQREQ').AsInteger:= qryUnreceiptedCheqreqs.FieldByName('NCHEQREQ').AsInteger;
                    qryCheqReqTransactions.ParamByName('NALLOC').AsInteger:= OriginalCRTNAlloc;
                    qryCheqReqTransactions.ExecSQL;
                  finally
                    qryCheqReqTransactions.Close;
                  end;
                end;

              finally
                qryCheqReqTransactions.Close
              end;

              //  Has this cheqreq now been receipted to in full?
              try
                // ... get the sum of the amount column from the cheqreq_trans records for this cheqreq
                qryCheqReqTransactions.SQL.Clear;
                qryCheqReqTransactions.SQL.Add('SELECT SUM(AMOUNT) AS AMOUNT FROM CHEQREQ_TRANS WHERE NCHEQREQ = :NCHEQREQ');
                qryCheqReqTransactions.ParamByName('NCHEQREQ').AsInteger:= qryUnreceiptedCheqreqs.FieldByName('NCHEQREQ').AsInteger;
                qryCheqReqTransactions.Open;
                sumCRTAmounts:= qryCheqReqTransactions.FieldByName('AMOUNT').AsCurrency;
              finally
                qryCheqReqTransactions.Close
              end;
              if sumCRTAmounts = CheqReqAmount then
              //  if so, change the held state of the cheqreq to Processable ('N')
              begin
                qryUpdateCheqReq:= TUniQuery.Create(self);
                try
                  qryUpdateCheqReq.Connection:= dmAxiom.uniInsight;
                  qryUpdateCheqReq.SQL.Clear;
                  qryUpdateCheqReq.SQL.Add('UPDATE CHEQREQ SET HELD = ''N'' WHERE NCHEQREQ = :NCHEQREQ');
                  qryUpdateCheqReq.ParamByName('NCHEQREQ').AsInteger:= qryUnreceiptedCheqreqs.FieldByName('NCHEQREQ').AsInteger;
                  qryUpdateCheqReq.ExecSQL;
                finally
                  qryUpdateCheqReq.Free
                end
              end
            end;

            // if not, this cheqreq is fully receipted to, so move on to the next one

            qryUnreceiptedCheqreqs.Next;
          end;
          // Is there any more to Re-allocate from the original cheqreq_trans?
          if AmountToReAlloc > 0 then
          // If so, does the user want to commit this re-allocation?
          begin
            msg:= Format('%m has been re-allocated to outstanding anticipated ',
                         [OriginalCRTAmount - AmountToReAlloc]) +
                  'disbursement cheqreqs.'+#13+#10+#13+#10+
                  Format('I''m not sure what to do with the remaining %m.', [AmountToReAlloc])+#13+#10+
                  'Should I roll back this re-allocation?';
            if not MessageDlg(msg , mtConfirmation, [mbYes,mbNo], 0) = mrYes then
            // if so, reduce the original cheqreq trans record to the remaining value
            begin
              qryUpdateCheqReqTrans:= TUniQuery.Create(Self);
              try
                qryUpdateCheqReqTrans.Connection:= dmAxiom.uniInsight;
                qryUpdateCheqReqTrans.SQL.Clear;
                qryUpdateCheqReqTrans.SQL.Add('UPDATE CHEQREQ_TRANS ');
                qryUpdateCheqReqTrans.SQL.Add('  SET AMOUNT = :NEWAMOUNT ');
                qryUpdateCheqReqTrans.SQL.Add('WHERE CREATED = :CREATED ');
                qryUpdateCheqReqTrans.SQL.Add('AND AMOUNT = :OLDAMOUNT');
                qryUpdateCheqReqTrans.SQL.Add('AND NALLOC = :NALLOC');
                qryUpdateCheqReqTrans.SQL.Add('AND NCHEQREQ = :NCHEQREQ');
                qryUpdateCheqReqTrans.ParamByName('NEWAMOUNT').AsCurrency:= AmountToReAlloc;
                qryUpdateCheqReqTrans.ParamByName('CREATED').AsDateTime:= OriginalCRTCreated;
                qryUpdateCheqReqTrans.ParamByName('OLDAMOUNT').AsCurrency:= OriginalCRTAmount;
                qryUpdateCheqReqTrans.ParamByName('NALLOC').AsInteger:= OriginalCRTNAlloc;
                qryUpdateCheqReqTrans.ParamByName('NCHEQREQ').AsInteger:= OriginalCRTNCheqreq;
                qryUpdateCheqReqTrans.ExecSQL;
              finally
                qryUpdateCheqReqTrans.Close;
                qryUpdateCheqReqTrans.Free
              end
            end
            else
            // if not, roll back the transaction
            begin
              dmAxiom.uniInsight.Rollback;
            end;
          end
          else
          // if not, delete the original cheqreqtrans record
          begin
            qryUpdateCheqReqTrans:= TUniQuery.Create(Self);
            try
              qryUpdateCheqReqTrans.Connection:= dmAxiom.uniInsight;
              qryUpdateCheqReqTrans.SQL.Clear;
              qryUpdateCheqReqTrans.SQL.Add('DELETE FROM CHEQREQ_TRANS ');
              qryUpdateCheqReqTrans.SQL.Add('WHERE CREATED = :CREATED ');
              qryUpdateCheqReqTrans.SQL.Add('AND AMOUNT = :OLDAMOUNT');
              qryUpdateCheqReqTrans.SQL.Add('AND NALLOC = :NALLOC');
              qryUpdateCheqReqTrans.SQL.Add('AND NCHEQREQ = :NCHEQREQ');
              qryUpdateCheqReqTrans.ParamByName('CREATED').AsDateTime:= OriginalCRTCreated;
              qryUpdateCheqReqTrans.ParamByName('OLDAMOUNT').AsCurrency:= OriginalCRTAmount;
              qryUpdateCheqReqTrans.ParamByName('NALLOC').AsInteger:= OriginalCRTNAlloc;
              qryUpdateCheqReqTrans.ParamByName('NCHEQREQ').AsInteger:= OriginalCRTNCheqreq;
              qryUpdateCheqReqTrans.ExecSQL;
            finally
              qryUpdateCheqReqTrans.Close;
              qryUpdateCheqReqTrans.Free
            end;
          end;

          if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
        except
          if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Rollback;
          raise
        end
      end
      else
        MessageDlg('All cheqreqs for this matter have had the full amount of '+#13+#10+'receipted funds allocated to them', mtInformation, [mbOK], 0);
    finally
      qryUnreceiptedCheqreqs.Close;

      qryCheqReqTransactions.Free;
      qryUnreceiptedCheqreqs.Free
    end;
    RefreshQueries;
  end
end;

procedure TfrmCheqreqHistory.aDisburseTransToUnreceiptedCheqReqsUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled:= ((ActiveControl = dbgCheqReqTrans) and (not qryCheqReqTrans.IsEmpty))
end;

procedure TfrmCheqreqHistory.ReAllocateCheqreqTrans(aColumn: string);
var
  strValue: string;
  Value: Integer;
  qryFindExisting,
  qryUpdate: TUniQuery;
begin
  // reallocate a cheqreq_trans record

  strValue:= qryCheqReqTrans.FieldByName(aColumn).AsString;
  Value:= qryCheqReqTrans.FieldByName(aColumn).AsInteger;
  
  // Ask the user for the new value of the column they want to change in this cheqreq transaction
  if InputQuery('Edit CHEQREQ_TRANS record', 'Enter new value for ' + aColumn, strValue) then
  begin
    if StrToInt(strValue) <> Value then
    begin
      Value:= StrToInt(strValue);

      // look for a pre-existing record that matches the new values
      qryFindExisting:= TUniQuery.Create(Self);
      try
        qryFindExisting.Connection:= dmAxiom.uniInsight;
        qryFindExisting.SQL.Clear;
        qryFindExisting.SQL.Add('SELECT * FROM CHEQREQ_TRANS ');
        qryFindExisting.SQL.Add('WHERE NALLOC = :NALLOC AND ');
        qryFindExisting.SQL.Add('NCHEQREQ = :NCHEQREQ');
        if aColumn = 'NALLOC' then
        begin
          qryFindExisting.ParamByName('NALLOC').AsInteger:= Value;
          qryFindExisting.ParamByName('NCHEQREQ').AsInteger:=
                  qryCheqReqTrans.FieldByName('NCHEQREQ').AsInteger;
        end
        else
        begin
          qryFindExisting.ParamByName('NALLOC').AsInteger:=
                  qryCheqReqTrans.FieldByName('NALLOC').AsInteger;
          qryFindExisting.ParamByName('NCHEQREQ').AsInteger:= Value;
        end;
        qryFindExisting.Open;

        qryUpdate:= TUniQuery.Create(Self);
        try
          qryUpdate.Connection:= dmAxiom.uniInsight;

          if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;
          try
            if not qryFindExisting.IsEmpty then
            // if one exists, update that record with the amount from the old record
            begin
              qryUpdate.SQL.Clear;
              qryUpdate.SQL.Add('UPDATE CHEQREQ_TRANS SET AMOUNT = :NEWAMOUNT ');
              if aColumn = 'NALLOC' then
              begin
                qryUpdate.SQL.Add('WHERE NALLOC = :VALUE ');
                qryUpdate.SQL.Add('AND NCHEQREQ = :NCHEQREQ ');
                qryUpdate.ParamByName('VALUE').AsInteger:= Value;
                qryUpdate.ParamByName('NCHEQREQ').AsInteger:=
                        qryCheqReqTrans.FieldByName('NCHEQREQ').AsInteger;
              end
              else
              begin
                qryUpdate.SQL.Add('WHERE NALLOC = :NALLOC ');
                qryUpdate.SQL.Add('AND NCHEQREQ = :VALUE ');
                qryUpdate.ParamByName('NALLOC').AsInteger:=
                    qryCheqReqTrans.FieldByName('NALLOC').AsInteger;
                qryUpdate.ParamByName('VALUE').AsInteger:= Value;
              end;
              qryUpdate.ParamByName('NEWAMOUNT').AsCurrency:=
                qryFindExisting.FieldByName('AMOUNT').AsCurrency +
                qryCheqReqTrans.FieldByName('AMOUNT').AsCurrency;

              qryUpdate.ExecSQL;
            end
            else
            // if not, alter the existing record with the new column value
            begin
              qryUpdate.SQL.Clear;
              qryUpdate.SQL.Add('UPDATE CHEQREQ_TRANS SET ' + aColumn + ' = :NEWVALUE ');
              if aColumn = 'NALLOC' then
              begin
                qryUpdate.SQL.Add('WHERE NALLOC = :OLDVALUE ');
                qryUpdate.SQL.Add('AND NCHEQREQ = :NCHEQREQ ');
                qryUpdate.ParamByName('OLDVALUE').AsInteger:=
                    qryCheqReqTrans.FieldByName('NALLOC').AsInteger;
                qryUpdate.ParamByName('NCHEQREQ').AsInteger:=
                        qryCheqReqTrans.FieldByName('NCHEQREQ').AsInteger;
              end
              else
              begin
                qryUpdate.SQL.Add('WHERE NALLOC = :NALLOC ');
                qryUpdate.SQL.Add('AND NCHEQREQ = :OLDVALUE ');
                qryUpdate.ParamByName('NALLOC').AsInteger:=
                    qryCheqReqTrans.FieldByName('NALLOC').AsInteger;
                qryUpdate.ParamByName('OLDVALUE').AsInteger:=
                        qryCheqReqTrans.FieldByName('NCHEQREQ').AsInteger;
              end;
              qryUpdate.ParamByName('NEWVALUE').AsInteger:= Value;
              qryUpdate.ExecSQL;
            end;
            qryUpdate.Close;

            // now remove the original cheqreq_trans record
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.Add('DELETE FROM CHEQREQ_TRANS');
            qryUpdate.SQL.Add('WHERE CREATED = :CREATED AND AMOUNT = :AMOUNT ');
            qryUpdate.SQL.Add('AND NALLOC = :NALLOC  AND NCHEQREQ = :NCHEQREQ');
            qryUpdate.SQL.Add('AND OPERATOR = :OPERATOR');
            qryUpdate.ParamByName('CREATED').AsDateTime:= qryCheqReqTrans.FieldByName('CREATED').AsDateTime;
            qryUpdate.ParamByName('AMOUNT').AsCurrency:= qryCheqReqTrans.FieldByName('AMOUNT').AsCurrency;
            qryUpdate.ParamByName('NALLOC').AsInteger:= qryCheqReqTrans.FieldByName('NALLOC').AsInteger;
            qryUpdate.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqTrans.FieldByName('NCHEQREQ').AsInteger;
            qryUpdate.ParamByName('OPERATOR').AsString:= qryCheqReqTrans.FieldByName('OPERATOR').AsString;
            qryUpdate.ExecSQL;

            qryUpdate.Close;
            dmAxiom.uniInsight.Commit
          except
            dmAxiom.uniInsight.Rollback;
            raise
          end
        finally
          qryUpdate.Free
        end
      finally
        qryFindExisting.Close;
        qryFindExisting.Free
      end;
      
      RefreshQueries;
    end
    else
      MessageDlg('Cannot re-allocate from an existing transaction record to itself', mtWarning, [mbOK], 0);
  end
end;

procedure TfrmCheqreqHistory.aDeleteCheqreqTransUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= ((ActiveControl = dbgCheqReqTrans) and (not qryCheqReqTrans.IsEmpty))
end;

procedure TfrmCheqreqHistory.aDeleteCheqreqTransExecute(Sender: TObject);
var
  qryDelete: TUniQuery;
  queryString: string;
begin
  // delete the current cheqreq_trans record
  if MessageDlg('I am about to delete this CheqReq_Trans record.'+#13+#10+#13+#10+'Is this what you want me to do?', mtWarning, [mbYes,mbNo], 0) = mrYes then
  begin
    qryDelete:= TUniQuery.Create(Self);
    try
      qryDelete.Connection:= dmAxiom.uniInsight;
      qryDelete.SQL.Clear;
{
  Modified 31.10.2002 GG

  Now uses rowid to isolate the correct cheqreq_trans record

      qryDelete.SQL.Add('DELETE FROM CHEQREQ_TRANS ');
      qryDelete.SQL.Add('WHERE CREATED = :CREATED AND ');
      qryDelete.SQL.Add('AMOUNT = :AMOUNT AND ');
      if qryCheqReqTrans.FieldByName('NALLOC').IsNull then
        qryDelete.SQL.Add('NALLOC IS NULL AND')
      else
        qryDelete.SQL.Add('NALLOC = :NALLOC AND');

      qryDelete.SQL.Add('NCHEQREQ = :NCHEQREQ AND');

      if qryCheqReqTrans.FieldByName('OPERATOR').IsNull then
        qryDelete.SQL.Add('OPERATOR IS NULL')
      else
        qryDelete.SQL.Add('OPERATOR = :OPERATOR');

      qryDelete.ParamByName('CREATED').AsDateTime:= qryCheqReqTrans.FieldByName('CREATED').AsDateTime;
      qryDelete.ParamByName('AMOUNT').AsCurrency:= qryCheqReqTrans.FieldByName('AMOUNT').AsCurrency;

      if not qryCheqReqTrans.FieldByName('NALLOC').IsNull then
        qryDelete.ParamByName('NALLOC').AsInteger:= qryCheqReqTrans.FieldByName('NALLOC').AsInteger;

      qryDelete.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqTrans.FieldByName('NCHEQREQ').AsInteger;

      if not qryCheqReqTrans.FieldByName('OPERATOR').IsNull then
        qryDelete.ParamByName('OPERATOR').AsString:= qryCheqReqTrans.FieldByName('OPERATOR').AsString;
}
      qryDelete.SQL.Add('DELETE FROM CHEQREQ_TRANS ');
      queryString:= Format('WHERE ROWID = ''%s''',
                           [qryCheqReqTrans.FieldByName('ROWID').AsString]);
      qryDelete.SQL.Add(queryString);

      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try
        qryDelete.ExecSQL;
        qryDelete.Close;
        dmAxiom.uniInsight.Commit
      except
        dmAxiom.uniInsight.Rollback;
        raise
      end
    finally
      qryDelete.Free
    end;

    RefreshQueries
  end
end;

procedure TfrmCheqreqHistory.qryCheqReqsAfterPost(DataSet: TDataSet);
begin
  RefreshQueries
end;

procedure TfrmCheqreqHistory.qryMatterDetailsBeforeClose(
  DataSet: TDataSet);
begin
  // Closing qryCheqReq will result in all queries being closed. 
  qryCheqReqs.Close
end;

procedure TfrmCheqreqHistory.aDeleteCheqreqUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= (ActiveControl = dbgCheqReqs)
end;

procedure TfrmCheqreqHistory.aDeleteCheqreqExecute(Sender: TObject);
var
  qryDelete: TUniQuery;
begin
  qryDelete:= TUniQuery.Create(Self);
  try
    qryDelete.Connection:= dmAxiom.uniInsight;
    qryDelete.SQL.Clear;
    qryDelete.SQL.Add('DELETE FROM CHEQREQ WHERE NCHEQREQ = :NCHEQREQ');
    qryDelete.ParamByName('NCHEQREQ').AsInteger:= qryCheqReqs.FieldByName('NCHEQREQ').AsInteger;
    qryDelete.ExecSQL;
    qryDelete.Close;

    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
    try
      qryCheqReqs.Delete;
      dmAxiom.uniInsight.Commit;
    except
      dmAxiom.uniInsight.Rollback
    end;
  finally
    qryDelete.Free;
    RefreshQueries
  end
end;

procedure TfrmCheqreqHistory.qryBillDetailsBeforeOpen(DataSet: TDataSet);
begin
{
  Added 5.11.2002 GG

  New view on bill details for matters
}
  // set the SQL code for the Bills Query
  qryBillDetails.SQL.Clear;
  qryBillDetails.SQL.Add('SELECT * FROM NMEMO WHERE NMATTER = :NMATTER');

  if rbShowRelated.Checked then
  begin
    qryBillDetails.SQL.Add('AND NMEMO = :NMEMO ');
    qryBillDetails.ParamByName('NMEMO').AsInteger:= qryCheqReqs.FieldByName('NMEMO').AsInteger
  end;

  qryBillDetails.ParamByName('NMATTER').AsInteger:= qryMatterDetails.FieldByName('NMATTER').AsInteger;

end;




function TfrmCheqreqHistory.HasParamFor(sSql : String; sKeyword : String) : Boolean;
begin
  Result := (Pos(sKeyword, sSQL) <> 0);

end;


end.
