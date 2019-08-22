unit CashPay;

{
  Height := 464;
  Width := 607;

}

{
select amt, cnt, tax from
(

SELECT SUM (c.amount) AS amt, COUNT (c.amount) AS cnt
  FROM cheque c
 WHERE C.CREATED >= :P_DateFrom
  AND c.created < :p_dateto
   AND (c.acct = 'I1' OR c.acct = 'G1'  OR c.acct = 'T1')
),
(select sum(amount) * -1 as tax
from transitem t, chart c
where T.CHART = C.CODE
and C.CHARTTYPE = 'GSTINP'
and owner_code = 'CHEQUE'
and ncheque in (SELECT ncheque
  FROM cheque c
 WHERE C.CREATED >= :P_DateFrom AND
  c.created < :p_dateto
   AND (c.acct = 'I1' OR c.acct = 'G1')))

}


interface

uses
  Windows, Forms, SysUtils, Messages, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCurrencyEdit, cxCalendar, cxContainer, Vcl.Dialogs, ppParameter, ppCtrls,
  ppBands, ppVar, ppDesignLayer, raCodMod, ppModule, ppStrtch, ppRegion,
  ppReport, ppSubRpt, ppPrnabl, ppClass, ppCache, ppProd, dxBar, ppDB, ppComm,
  ppRelatv, ppDBPipe, cxClasses, cxGridCustomPopupMenu, cxGridPopupMenu,
  Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.Controls, DBAccess, Uni, MemDS,
  cxCheckBox, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, DateChangeButton,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  cxSplitter, cxPC, System.Classes, citfunc, DateUtils, Variants, ppFileUtils,
  ppIniStorage, dxCore, cxGridExportLink, cxGridDBDataDefinitions,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;




const
  isCASHBOOK = 0;
  isFILTER = 1;
  isPRESENT = 2;

  IDX_CHEQUEPRESENT = 6;
  IDX_CHEQUEUNPRESENT = 7;

  CM_EXPANDGROUPS = WM_USER + 1002;
  CM_SETSELECTION = WM_USER + 1;

type
  TfrmCashpay = class(TForm)
    qryAllocs: TUniQuery;
    dsAllocs: TUniDataSource;
    dsCheques: TUniDataSource;
    qryTotal: TUniQuery;
    qryCheques: TUniQuery;
    qryNaccounts: TUniQuery;
    dsNaccounts: TUniDataSource;
    ilstToolbar: TImageList;
    qryBarCheques: TUniQuery;
    qryBarReceipts: TUniQuery;
    qryBanks: TUniQuery;
    sbarInfo: TStatusBar;
    mMoveMatter: TPopupMenu;
    MoveMatter1: TMenuItem;
    qryCopyAlloc: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarManager1: TdxBarManager;
    tbtnNew: TdxBarButton;
    mnuFilePrintCheque: TdxBarButton;
    mnuFilePrintAllCheques: TdxBarButton;
    mnuFilePrintAllocations: TdxBarButton;
    mnuFilePrintCashBookWithAllocs: TdxBarButton;
    mnuFilePrintCashBookWithoutAllocs: TdxBarButton;
    mnuFilePrintCashBook: TdxBarSubItem;
    tbtnBatchPresent: TdxBarButton;
    tbtnReverse: TdxBarButton;
    mnuFileExit: TdxBarButton;
    File1: TdxBarSubItem;
    Help2: TdxBarButton;
    HowtoCreateaPayment1: TdxBarButton;
    HowtoFindaCheque1: TdxBarButton;
    HowtoCancelaCheque1: TdxBarButton;
    Help1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    tbtnPresent: TdxBarButton;
    plCheqReq: TppDBPipeline;
    plAlloc: TppDBPipeline;
    cxStyleR: TcxStyle;
    cxStyleG: TcxStyle;
    cxStyleD: TcxStyle;
    popCheque: TdxBarPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    bbtnEFTFile: TdxBarButton;
    btnRenumberCheque: TdxBarButton;
    ppPrintpay: TppReport;
    qryChequesRpt: TUniQuery;
    OraDataSource1: TUniDataSource;
    qryAllocsRpt: TUniQuery;
    dsAllocsRpt: TUniDataSource;
    qryNaccountsRpt: TUniQuery;
    dsNaccountsRpt: TUniDataSource;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine1: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    raCodeModule1: TraCodeModule;
    ppFooterBand2: TppFooterBand;
    ppLabel30: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLine6: TppLine;
    ppLabel1: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLine5: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine4: TppLine;
    raCodeModule2: TraCodeModule;
    ppRegion1: TppRegion;
    ppLine2: TppLine;
    ppShape1: TppShape;
    Label19: TLabel;
    dxBarButton2: TdxBarButton;
    OpenDialog: TOpenDialog;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    dxBarButton3: TdxBarButton;
    dxBarPrintSelectedCheque: TdxBarSubItem;
    pagCashbook: TcxPageControl;
    tabCashbook: TcxTabSheet;
    tabPresent: TcxTabSheet;
    tabFilter: TcxTabSheet;
    lblBank: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblAmountFrom: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    Label8: TLabel;
    lblAuthByName: TLabel;
    lblBankName: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    cbBank: TComboBox;
    chkDateFrom: TCheckBox;
    dtpDateFrom: TDateTimePicker;
    chkDateTo: TCheckBox;
    dtpDateTo: TDateTimePicker;
    dcToday: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    rgOrderby: TcxRadioGroup;
    tbChqnoFrom: TEdit;
    tbChqnoTo: TEdit;
    tbChqNoLike: TEdit;
    tbPayee: TEdit;
    tbDesc: TEdit;
    tbAmountFrom: TEdit;
    tbAmountTo: TEdit;
    edtMatter: TEdit;
    cbAuthby: TComboBox;
    chkUnpresented: TcxCheckBox;
    chkUnprinted: TcxCheckBox;
    chkEFTOnly: TcxCheckBox;
    chkPresentedChequesOnly: TcxCheckBox;
    chkNoReversals: TcxCheckBox;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    Label9: TLabel;
    rbMatters: TcxRadioButton;
    rbLedger: TcxRadioButton;
    dbgrAllocations: TcxGrid;
    tvAllocations: TcxGridDBTableView;
    tvAllocationsCODE: TcxGridDBColumn;
    tvAllocationsDESCR: TcxGridDBColumn;
    tvAllocationsAMOUNT: TcxGridDBColumn;
    dbgrAllocationsLevel1: TcxGridLevel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label10: TLabel;
    Label17: TLabel;
    tbSearch: TEdit;
    dbgrCheques: TcxGrid;
    tvCheques: TcxGridDBTableView;
    tvChequesACCT: TcxGridDBColumn;
    tvChequesCREATED: TcxGridDBColumn;
    tvChequesCHQNO: TcxGridDBColumn;
    tvChequesPAYEE: TcxGridDBColumn;
    tvChequesDESCR: TcxGridDBColumn;
    tvChequesAMOUNT: TcxGridDBColumn;
    tvChequesREVERSED: TcxGridDBColumn;
    tvChequesTYPE: TcxGridDBColumn;
    tvChequesPRINTED: TcxGridDBColumn;
    tvChequesPRINTER: TcxGridDBColumn;
    tvChequesNCHEQUE: TcxGridDBColumn;
    tvChequesCHEQUE_NO: TcxGridDBColumn;
    tvChequesPRESENTED: TcxGridDBColumn;
    dbgrChequesLevel1: TcxGridLevel;
    dblblAcct: TDBText;
    dblblAmount: TDBText;
    dblblChqno: TDBText;
    dblblCreated: TDBText;
    dblblDesc: TDBText;
    dblblPayee: TDBText;
    dblblPresented: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btnPresent: TBitBtn;
    dbnPresent: TDBNavigator;
    dtpPresent: TDateTimePicker;
    rbCreditors: TcxRadioButton;
    qryCreditors: TUniQuery;
    dsCreditors: TUniDataSource;
    edClient: TEdit;
    Label23: TLabel;
    ActionManager1: TActionManager;
    actReverse: TAction;
    procedure FormShow(Sender: TObject);
    procedure qryChequesAfterScroll(DataSet: TDataSet);
    procedure mnuFileNewClick(Sender: TObject);
    procedure cbAuthbyClick(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure btnMtdClick(Sender: TObject);
    procedure btnYtdClick(Sender: TObject);
    procedure btnPresentClick(Sender: TObject);
    procedure btnUnPresentClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure qrsubAllocsNeedData(Sender: TObject; var MoreData: Boolean);
    procedure mnuFilePresentClick(Sender: TObject);
    procedure rbMattersClick(Sender: TObject);
    procedure rbLedgerClick(Sender: TObject);
    procedure rbCreditorsClick(Sender: TObject);
    procedure btnLastMonthClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure qrBarGraphAfterPrint(Sender: TObject);
    procedure tbtnBarGraphClick(Sender: TObject);
    procedure mnuFilePrintChequeClick(Sender: TObject);
    procedure qryChequesCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
//    procedure qrBarGraphBeforePrint(Sender: TCustomQuickRep;
 //     var PrintReport: Boolean);
//    procedure qrPrintPayBeforePrint(Sender: TCustomQuickRep;
//      var PrintReport: Boolean);
    procedure tbtnBatchPresentClick(Sender: TObject);
    procedure mnuFilePrintAllocationsClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure mnuFilePrintAllChequesClick(Sender: TObject);
    procedure tbSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbSearchChange(Sender: TObject);
    procedure pagCashbookChange(Sender: TObject);
    procedure tbtnPresentClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tbChqnoToEnter(Sender: TObject);
    procedure MoveMatter1Click(Sender: TObject);
    procedure dbgrChequesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrChequesDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ppPrintpayBeforePrint(Sender: TObject);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppPrintpayPreviewFormCreate(Sender: TObject);
    procedure popChequePopup(Sender: TObject);
    procedure File1Popup(Sender: TObject);
    procedure tvChequesDataControllerGroupingChanged(Sender: TObject);
    procedure bbtnEFTFileClick(Sender: TObject);
    procedure tvChequesFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnRenumberChequeClick(Sender: TObject);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure ppLabel27GetText(Sender: TObject; var Text: String);
    procedure qryChequesRptAfterScroll(DataSet: TDataSet);
    procedure qryChequesRptCalcFields(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvChequesColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure dxBarButton2Click(Sender: TObject);
    procedure tvChequesStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure pagCashbookChanging(Sender: TObject; var AllowChange: Boolean);
    procedure cbBankChange(Sender: TObject);
    procedure mMoveMatterPopup(Sender: TObject);
    procedure pagCashbookPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure actReverseExecute(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
  private
    { Private declarations }
    bPrint: boolean;
    FOrderBy: string;
    procedure CMExpandGroups(var Msg: TMessage); message CM_EXPANDGROUPS;
    procedure CmSetSelection(var Msg: TMessage); message CM_SETSELECTION;
    procedure NewCheque;
    procedure PresentCheque; overload;
    procedure PresentCheque(PresentDate: TDateTime); overload;
    procedure ShowTotal;
    function MakeTitle : string;
    procedure SetPresentButton;
    procedure ShowMatters;
    procedure ShowLedgers;
    procedure ShowCreditors;
    procedure UnpresentCheque;
  public
    { Public declarations }
    procedure MakeSQL(FromGrid: Boolean = False);
  end;

var
  frmCashpay: TfrmCashpay;
  sSQLWhere : string;
  dtLastPresent : TDateTime;
  bShiftState : boolean;

implementation

uses
  Cheque, ChequePresent, ChequePrint, ChequeReverse, MiscFunc, AxiomData,
  PresentedConfirmation, MSearch, resettransaction, BulkCheques, EFTFile,
  chequerenumber;

{$R *.DFM}


procedure TfrmCashpay.FormShow(Sender: TObject);
begin
  cbAuthBy.Items := dmAxiom.Employees;
  AddBanks(cbBank, 'G,T,C');
  dcToday.Click;
{
  MakeSQL;
  qryAllocs.Close;
  qryAllocs.ParamByName('P_Ncheque').AsInteger := qryCheques.FieldByName('NCHEQUE').AsInteger;
  qryAllocs.Open;
  }
  bPrint := False;
 // Height := 464;
 // Width := 607;
{
  Added 19.11.2002 GG

  Ensure that the filter page is showing
}
  pagCashbook.ActivePage:= tabFilter
end;

procedure TfrmCashpay.pagCashbookChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
   // If we are leaving the Filter tab, generate query
   if pagCashbook.ActivePage = tabFilter then
      MakeSQL;
end;

procedure TfrmCashpay.qryChequesAfterScroll(DataSet: TDataSet);
var
   LdtLastPresent: TDateTime;
begin
   if rbMatters.Checked then
   begin
      qryAllocs.Close;
      qryAllocs.ParamByName('P_Ncheque').AsInteger := qryCheques.FieldByName('NCHEQUE').AsInteger;
      qryAllocs.Open;
   end;

   if rbLedger.Checked then
   begin
      qryNaccounts.Close;
      qryNaccounts.ParamByName('P_Ncheque').AsInteger := qryCheques.FieldByName('NCHEQUE').AsInteger;
      qryNaccounts.Open;
   end;

   if rbCreditors.Checked then
   begin
      qryCreditors.Close;
      qryCreditors.ParamByName('P_Ncheque').AsInteger := qryCheques.FieldByName('NCHEQUE').AsInteger;
      qryCreditors.Open;
   end;



   if qryCheques.FieldByName('PRESENTED').AsString = '' then
   begin
      LdtLastPresent := Now - 1;
      Case DayOfTheWeek(LdtLastPresent) of
           DaySaturday: LdtLastPresent := LdtLastPresent - 1;
           DaySunday: LdtLastPresent := LdtLastPresent - 2;
      End;

      dtpPresent.Date := LdtLastPresent;
   end
   else
      dtpPresent.Date := qryCheques.FieldByName('PRESENTED').AsDateTime;

   SetPresentButton();
end;

procedure TfrmCashpay.mnuFileNewClick(Sender: TObject);
begin
  NewCheque;
end;

procedure TfrmCashpay.NewCheque;
begin
  with TfrmCheque.Create(Self) do
    Show;
end;

procedure TfrmCashpay.PresentCheque;
begin
  qryCheques.Edit;
  qryCheques.FieldByName('PRESENTED').AsDateTime := dtpPresent.Date;
  qryCheques.FieldByName('RECONDATE').AsDateTime := dtpPresent.Date;
  qryCheques.Post;
end;

procedure TfrmCashpay.PresentCheque(PresentDate: TDateTime);
begin
  dtpPresent.Date := PresentDate;
  PresentCheque;
end;

procedure TfrmCashpay.ShowTotal;
begin
  if not qryTotal.EOF then
  begin
    sbarInfo.Panels.Items[0].Text := Format('%d Cheques', [qryTotal.FieldByName('CNT').AsInteger]);
    sbarInfo.Panels.Items[1].Text := Format('%m', [qryTotal.FieldByName('AMT').AsCurrency]);
    sbarInfo.Panels.Items[2].Text := Format('%m', [qryTotal.FieldByName('Tax').AsCurrency]);
  end
  else
  begin
    sbarInfo.Panels.Items[0].Text := '';
    sbarInfo.Panels.Items[1].Text := '';
    sbarInfo.Panels.Items[2].Text := '';
  end;
end;

procedure TfrmCashpay.cbAuthbyClick(Sender: TObject);
begin
  lblAuthByName.Caption := TableString('EMPLOYEE', 'CODE', cbAuthBy.Text, 'NAME');
end;

procedure TfrmCashpay.cbBankChange(Sender: TObject);
begin
   if (cbBank.Text = '') then
      lblBankName.Caption := '';
end;

procedure TfrmCashpay.cbBankClick(Sender: TObject);
begin
  lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
end;

procedure TfrmCashpay.MakeSQL(FromGrid: Boolean = False);
var
  sAND, sOR, sTmp : string;
  sSQL, sSQLTotal1, sSQLTotal2 : string;
begin
   // Build the SQL Filter query
   qryCheques.Close;
   qryTotal.Close;
   sAND := ' AND ';
   sSQLWhere := '';

   if (chkPresentedChequesOnly.Checked) then
   begin
      sSQL := 'SELECT case when (reversed = ''Y'') then ' +
          ' case when (type = ''RV'') then ''Reversal'' '+
          ' else ''Cancelled'' end  '+
          ' else ' +
          ' case when (PRESENTED is not null) ' +
          ' then to_char(PRESENTED, ''dd/mm/yyyy'') ' +
          ' else ''Unpresented'' end ' +
          ' end PresentDate, '+
          ' case when (reversed = ''Y'') then 0.00 ' +
          ' else ' +
          ' case when (PRESENTED is not null) '+
          ' then AMOUNT '+
          ' else 0.00 ' +
          ' end end PresentAmount, C.*, C.ROWID FROM CHEQUE C WHERE C.PRESENTED >= :P_DateFrom AND C.PRESENTED < :P_DateTo ';
//      sSQLTotal := 'SELECT SUM(C.AMOUNT) AS AMT, COUNT(C.AMOUNT) AS CNT FROM CHEQUE C WHERE C.PRESENTED >= :P_DateFrom AND C.PRESENTED < :P_DateTo';
      sSQLTotal1 := 'select amt, cnt, tax from (SELECT SUM (c.amount) AS amt, COUNT (c.amount) AS cnt FROM cheque c WHERE C.PRESENTED >= :P_DateFrom AND c.PRESENTED < :p_dateto ';
      sSQLTotal2 := '), (select sum(amount) * -1 as tax from transitem t, chart c where T.CHART = C.CODE and C.CHARTTYPE = ''GSTINP'' and owner_code = ''CHEQUE'' and ncheque in (SELECT ncheque '+
                   ' FROM cheque c WHERE trunc(C.PRESENTED) >= :P_DateFrom AND trunc(c.PRESENTED) < :p_dateto ';
//      QRDBText1.DataField := 'CREATED';
   end
   else
   begin
      sSQL := 'SELECT case when (reversed = ''Y'') then ' +
          ' case when (type = ''RV'') then ''Reversal'' '+
          ' else ''Cancelled'' end  '+
          ' else ' +
          ' case when (PRESENTED is not null) ' +
          ' then to_char(PRESENTED, ''dd/mm/yyyy'') ' +
          ' else ''Unpresented'' end ' +
          ' end PresentDate, '+
          ' case when (reversed = ''Y'') then 0.00 ' +
          ' else ' +
          ' case when (PRESENTED is not null) '+
          ' then AMOUNT '+
          ' else 0.00 ' +
          ' end end PresentAmount, C.*, C.ROWID FROM CHEQUE C WHERE C.CREATED >= :P_DateFrom AND C.CREATED < :P_DateTo ';
//      sSQLTotal := 'SELECT SUM(C.AMOUNT) AS AMT, COUNT(C.AMOUNT) AS CNT FROM CHEQUE C WHERE C.CREATED >= :P_DateFrom AND C.CREATED < :P_DateTo';

      sSQLTotal1 := 'select amt, cnt, tax from (SELECT SUM (c.amount) AS amt, COUNT (c.amount) AS cnt FROM cheque c WHERE trunc(C.CREATED) >= :P_DateFrom AND trunc(c.created) < :p_dateto ';
      sSQLTotal2 := '), (select sum(amount) * -1 as tax from transitem t, chart c where T.CHART = C.CODE and C.CHARTTYPE = ''GSTINP'' and owner_code = ''CHEQUE'' and ncheque in (SELECT ncheque '+
                   ' FROM cheque c WHERE trunc(C.CREATED) >= :P_DateFrom AND trunc(c.created) < :p_dateto ';

//      QRDBText1.DataField := 'CREATED';
   end;

   if edtMatter.Text <> '' then
      sSQLWhere := sSQLWhere + sAND + ' ncheque in (select ncheque from alloc where fileid = :fileid) ';

   if edClient.Text <> '' then
      sSQLWhere := sSQLWhere + sAND + ' ncheque in (select a.ncheque from alloc a, phonebook p where a.nclient = p.nclient and a.NCHEQUE is not null and CONTAINS(dummy,'+ QuotedStr('%'+ edClient.Text + '%') + ', 1) > 0 )';

   if cbBank.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.ACCT = ' + QuotedStr(cbBank.Text)
   else
   begin
     with qryBanks do
     begin
       Close;
       ParamByName('P_Entity').AsString := dmAxiom.Entity;
       Open;
       if not IsEmpty then
       begin
         sOR := '';
         sTmp := '';
         while not EOF do
         begin
           sTmp := sTmp + sOR + 'C.ACCT = ' + QuotedStr(qryBanks.FieldByName('ACCT').AsString);
           sOR := ' OR ';
           Next;
         end;
         sSQLWhere := sSQLWhere + sAND + '(' + sTmp + ')';
         Close;
       end
       else
         sSQLWhere := sSQLWhere + sAND + 'C.ACCT = ''zz''';  // Eliminate all cheques
     end;
   end;
   if cbAuthby.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.REQBY = ' + QuotedStr(cbAuthby.Text);
   if tbChqnoFrom.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.CHQNO >= ' + QuotedStr(tbChqnoFrom.Text);
   if tbChqnoTo.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'C.CHQNO <= ' + QuotedStr(tbChqnoTo.Text);
   if tbChqNoLike.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'CHQNO LIKE ''%' + tbChqNoLike.Text + '%''';
   if tbPayee.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'UPPER(C.PAYEE) LIKE ' + QuotedStr('%' + UpperCase(tbPayee.Text) + '%');
   if tbDesc.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'UPPER(C.DESCR) LIKE ' + QuotedStr('%' + UpperCase(tbDesc.Text) + '%');
   if tbAmountFrom.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'ABS(C.AMOUNT) >= ' + tbAmountFrom.Text;
   if tbAmountTo.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'ABS(C.AMOUNT) <= ' + tbAmountTo.Text;

   if (not ((chkPresentedChequesOnly.Checked) AND (chkUnpresented.Checked))) then
     begin
       if chkPresentedChequesOnly.Checked then
         sSQLWhere := sSQLWhere + sAND + 'C.PRESENTED IS NOT NULL';

       if chkUnpresented.Checked then
         sSQLWhere := sSQLWhere + sAND + 'C.PRESENTED IS NULL';
     end;    //  end if

   if chkNoReversals.Checked then
     sSQLWhere := sSQLWhere + sAND + 'C.REVERSED <> ''Y''';
   if chkUnprinted.Checked then
     sSQLWhere := sSQLWhere + sAND + 'C.PRINTED = ''N''';
   if chkEFTOnly.Checked then
     sSQLWhere := sSQLWhere + sAND + 'C.EFT = ''Y''';

   if (not FromGrid) then
   begin
     case rgOrderby.ItemIndex of
       0:  FOrderBy := ' ORDER BY C.CREATED';
       1:  FOrderBy := ' ORDER BY C.CHEQUE_NO';
     end;
   end;

   qryCheques.SQL.Text := sSQL + sSQLWhere + FOrderBy;

   if chkDateFrom.Checked then
     qryCheques.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
   else
     qryCheques.ParamByName('P_DateFrom').AsDate := 0;

   if chkDateTo.Checked then
     qryCheques.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
   else
     qryCheques.ParamByName('P_DateTo').AsDate := Now() + 1;

   if edtMatter.Text <> '' then
      qryCheques.ParamByName('fileid').AsString := edtMatter.Text;

   if dmAxiom.runningide then
     qryCheques.SQL.SaveToFile('c:\tmp\cheques.sql');

   tvCheques.OnFocusedRecordChanged := nil;
   qryCheques.Open;
   tvCheques.OnFocusedRecordChanged := tvChequesFocusedRecordChanged;

   qryTotal.SQL.Text := sSQLTotal1 + sSQLWhere + sSQLTotal2 + sSQLWhere + '))';


   if chkDateFrom.Checked then
     qryTotal.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
   else
     qryTotal.ParamByName('P_DateFrom').AsDate := 0;

   if chkDateTo.Checked then
     qryTotal.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
   else
     qryTotal.ParamByName('P_DateTo').AsDate := Now() + 1;

   if dmAxiom.runningide then
      qryTotal.SQL.SaveToFile('c:\tmp\total.sql');

   qryTotal.Open;

   ShowTotal;
end;


function TfrmCashpay.MakeTitle : string;
var
  sAND : string;
  sTitle : string;
begin
   sAND := ' and ';

   if (dtpDateFrom.Date = dtpDateTo.Date) and (chkDateFrom.Checked) then
      sTitle := 'For the period ' + FormatDateTime('dddddd', dtpDateFrom.Date)
   else if (chkDateFrom.Checked) and (dtpDateTo.Checked) then
      sTitle := 'For the period ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date) + ' '
   else
      sTitle := 'For the period ' + FormatDateTime('dddddd', dtpDateTo.Date);

   if cbBank.Text <> '' then
      sTitle := sTitle + sAND + 'Bank Account ' + TableString('BANK', 'ACCT', cbBank.Text, 'NAME') + ' (' + cbBank.Text + ')';
   if cbAuthby.Text <> '' then
      sTitle := sTitle + sAND + 'requested by ' + TableString('EMPLOYEE', 'CODE', cbAuthby.Text, 'NAME') + ' (' + cbAuthby.Text + ')';
   if tbChqnoFrom.Text <> '' then
      sTitle := sTitle + sAND + 'Cheque number >= ' + tbChqnoFrom.Text;
   if tbChqnoTo.Text <> '' then
      sTitle := sTitle + sAND + 'Cheque number <= ' + tbChqnoTo.Text;
   if tbPayee.Text <> '' then
      sTitle := sTitle + sAND + 'Payee contains "' + tbPayee.Text + '"';
   if tbDesc.Text <> '' then
      sTitle := sTitle + sAND + 'Description contains "' + tbDesc.Text + '"';
   if tbAmountFrom.Text <> '' then
      sTitle := sTitle + sAND + 'Amount >= ' + tbAmountFrom.Text;
   if tbAmountTo.Text <> '' then
      sTitle := sTitle + sAND + 'Amount <= ' + tbAmountTo.Text;
   if chkPresentedChequesOnly.Checked then
      sTitle := sTitle + sAND + 'presented';
   if chkUnpresented.Checked then
      sTitle := sTitle + sAND + 'unpresented';
   if chkNoReversals.Checked then
      sTitle := sTitle + sAND + 'excluding reversals';

   case rgOrderby.ItemIndex of
      0: sTitle := sTitle + sAND + 'order by Date';
      1: sTitle := sTitle + sAND + 'order by Cheque Number';
   end;
   MakeTitle := sTitle;
end;


procedure TfrmCashpay.btnMtdClick(Sender: TObject);
var
  wYear, wMonth, wDay : Word;
begin
  dtpDateTo.Date :=  Int(Now);
  DecodeDate(Now, wYear, wMonth, wDay);
  dtpDateFrom.Date := (Int(Now) - wDay + 1);
end;


procedure TfrmCashpay.btnYtdClick(Sender: TObject);
var
  wYear, wMonth, wDay : Word;
begin
  dtpDateTo.Date :=  Int(Now);
  DecodeDate(Now, wYear, wMonth, wDay);
  if wMonth < 7 then
    dtpDateFrom.Date := EncodeDate(wYear - 1, 7, 1)
  else
    dtpDateFrom.Date := EncodeDate(wYear, 7, 1);
  dtpDateTo.Date := Now;
end;


procedure TfrmCashpay.btnPresentClick(Sender: TObject);
begin
{
  Added 19.11.2002 GG

  Need to prevent presentation of cheques into a locked period.
}
  if PostIntoLockedPeriod(dtpPresent.Date) in [prNotLocked, prOKToProceed] then
  begin
    PresentCheque();
    qryCheques.Next;
    dtLastPresent := dtpPresent.Date;
  end
end;

procedure TfrmCashpay.btnUnPresentClick(Sender: TObject);
begin
{
  Added 19.11.2002 GG

  Need to prevent presentation of cheques into a locked period.
}
  if PostIntoLockedPeriod(qryCheques.FieldByName('PRESENTED').AsDateTime) in [prNotLocked, prOKToProceed] then
  begin
    qryCheques.Edit;
    qryCheques.FieldByName('PRESENTED').AsString := '';
    qryCheques.FieldByName('RECONDATE').AsString := '';
    qryCheques.Post;
  end
end;


procedure TfrmCashpay.btnClearAllClick(Sender: TObject);
begin
  cbBank.ItemIndex := -1;
  lblBankName.Caption := '';
  tbChqnoFrom.Text := '';
  tbChqnoTo.Text := '';
  tbPayee.Text := '';
  tbDesc.Text := '';
  tbAmountFrom.Text := '';
  tbAmountTo.Text := '';
  cbAuthby.ItemIndex := -1;
  lblAuthByName.Caption := '';
  chkUnprinted.Checked := False;
  chkPresentedChequesOnly.Checked := False;
  chkUnpresented.Checked := False;
  chkNoReversals.Checked := False;
end;

procedure TfrmCashpay.qrsubAllocsNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  qryAllocs.Close;
  qryAllocs.ParamByName('P_Ncheque').AsInteger := qryCheques.FieldByName('NCHEQUE').AsInteger;
  qryAllocs.Open;
end;

procedure TfrmCashpay.mnuFilePresentClick(Sender: TObject);
begin
  qryCheques.Edit;
  qryCheques.FieldByName('PRESENTED').AsDateTime := Now;
  qryCheques.Post;
end;

procedure TfrmCashpay.rbMattersClick(Sender: TObject);
begin
  if rbMatters.Checked then
     ShowMatters
  else if rbCreditors.Checked then
     ShowCreditors
  else
     ShowLedgers;
end;

procedure TfrmCashpay.rbLedgerClick(Sender: TObject);
begin
  if rbLedger.Checked then
     ShowLedgers
  else if rbMatters.Checked then
     ShowMatters
  else
     ShowCreditors;
end;

procedure TfrmCashpay.rbCreditorsClick(Sender: TObject);
begin
  if rbCreditors.Checked then
     ShowCreditors
  else if rbLedger.Checked then
     ShowLedgers
  else
     ShowMatters;
end;

procedure TfrmCashPay.SetPresentButton;
begin
  if qryCheques.FieldByName('PRESENTED').AsString = '' then
  begin
    tbtnPresent.ImageIndex := IDX_CHEQUEPRESENT;
    tbtnPresent.Hint := 'Present this cheque...';
  end
  else
  begin
    tbtnPresent.ImageIndex := IDX_CHEQUEUNPRESENT;
    tbtnPresent.Hint := 'Unpresent this cheque...';
  end;
end;


procedure TfrmCashpay.ShowMatters;
begin
  rbLedger.Checked := False;
  rbCreditors.Checked := False;
  qryNaccounts.Close;
  qryCreditors.Close;
  qryAllocs.ParamByName('P_Ncheque').AsInteger := qryCheques.FieldByName('NCHEQUE').AsInteger;
  qryAllocs.Open;
  tvAllocations.DataController.DataSource := dsAllocs;
end;

procedure TfrmCashpay.UnpresentCheque;
begin
  qryCheques.Edit;
  qryCheques.FieldByName('PRESENTED').Clear;
  qryCheques.FieldByName('RECONDATE').Clear;
  qryCheques.Post;
end;

procedure TfrmCashpay.ShowLedgers;
begin
  // Set the allocation grid to display Allocs
  rbMatters.Checked := False;
  rbCreditors.Checked := False;
  qryAllocs.Close;
  qryCreditors.Close;
  qryNaccounts.ParamByName('P_Ncheque').AsInteger := qryCheques.FieldByName('NCHEQUE').AsInteger;
  qryNaccounts.Open;
  tvAllocations.DataController.DataSource := dsNaccounts;
end;

procedure TfrmCashpay.ShowCreditors;
begin
  // Set the allocation grid to display Allocs
  rbLedger.Checked := False;
  rbMatters.Checked := False;
  qryAllocs.Close;
  qryNaccounts.Close;
  qryCreditors.ParamByName('P_Ncheque').AsInteger := qryCheques.FieldByName('NCHEQUE').AsInteger;
  qryCreditors.Open;
  tvAllocations.DataController.DataSource := dsCreditors;
end;


procedure TfrmCashpay.btnLastMonthClick(Sender: TObject);
var
  wYear, wMonth, wDay : Word;
begin
  dtpDateTo.Date :=  Int(Now);
  DecodeDate(Now, wYear, wMonth, wDay);
  if wMonth = 1 then
  begin
    wMonth := 12;
    wYear := wYear - 1;
  end
  else
    wMonth := wMonth - 1;
  dtpDateFrom.Date := EncodeDate(wYear, wMonth, 1);
  dtpDateTo.Date := EncodeDate(wYear, wMonth + 1, 1) - 1;
end;


procedure TfrmCashpay.tbtnNewClick(Sender: TObject);
begin
  NewCheque;
end;

procedure TfrmCashpay.tbtnPrintClick(Sender: TObject);
begin
   bPrint := True;
   with qryChequesRpt do
   begin
      Close;
      SQL.Text := qryCheques.SQL.Text;
      if chkDateFrom.Checked then
         ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
      else
         ParamByName('P_DateFrom').AsDate := 0;

      if chkDateTo.Checked then
         ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
      else
         ParamByName('P_DateTo').AsDate := Now() + 1;
      Open;
   end;
//   qrPrintpay.PreviewModal;

   if rbMatters.Checked then
   begin
      qryNaccountsRpt.Close;
      qryAllocsRpt.Close;
      qryAllocsRpt.ParamByName('P_Ncheque').AsInteger := qryChequesRpt.FieldByName('NCHEQUE').AsInteger;
      qryAllocsRpt.Open;
      plAlloc.DataSource := dsAllocsRpt;
   end;
   if rbLedger.Checked then
   begin
      qryAllocsRpt.Close;
      qryNaccountsRpt.Close;
      qryNaccountsRpt.ParamByName('P_Ncheque').AsInteger := qryChequesRpt.FieldByName('NCHEQUE').AsInteger;
      qryNaccountsRpt.Open;
      plAlloc.DataSource := dsNaccountsRpt;
   end;

   ppPrintpay.Print;
   bPrint := False;
end;


procedure TfrmCashpay.qrBarGraphAfterPrint(Sender: TObject);
begin
  qryBarCheques.Close;
  qryBarReceipts.Close;
end;

procedure TfrmCashpay.tbtnBarGraphClick(Sender: TObject);
begin
//  qrBarGraph.PreviewModal;
end;

procedure TfrmCashpay.mnuFilePrintChequeClick(Sender: TObject);
var
   LfrmCheque: TfrmCheque;
begin
   if not qryCheques.IsEmpty then
   begin
      if (qryCheques.FieldByName('CHQNO').AsString <> '') then
      begin
         with TfrmChequePrint.Create(Self) do
         begin
            PrinterPath := Self.qryCheques.FieldByName('PRINTER').AsString;
            PrintCheque(Self.qryCheques.FieldByName('NCHEQUE').AsInteger);
            Free;
         end;
      end
      else
      begin
         LfrmCheque := TfrmCheque.Create(frmBulkCheques);
         try
            LfrmCheque.Show;
            LfrmCheque.ChequePrinter := Self.qryCheques.FieldByName('PRINTER').AsString;
            LfrmCheque.ChequeFromPayCashbook(Self.qryCheques.FieldByName('NCHEQUE').AsInteger);
         except
            on e: exception do
               MessageDlg('Insight Error: '#13#10 + e.Message, mtError, [mbOK], 0);
         end;
      end;
   end;
end;

procedure TfrmCashpay.mnuFilePrintAllChequesClick(Sender: TObject);
begin
   qryCheques.First;
   while not qryCheques.EOF do
   begin
      if qryCheques.FieldByName('CHQNO').AsString <> '' then
      begin
         with TfrmChequePrint.Create(Self) do
         begin
            PrinterPath := Self.qryCheques.FieldByName('PRINTER').AsString;
            PrintCheque(Self.qryCheques.FieldByName('NCHEQUE').AsInteger);
         end;
      end;
      qryCheques.Next;
   end;
end;

procedure TfrmCashpay.qryChequesCalcFields(DataSet: TDataSet);
begin
  if qryCheques.FieldByName('REVERSED').AsString = 'Y' then
  begin
    if qryCheques.FieldByName('TYPE').AsString = 'RV' then
      qryCheques.FieldByName('PresentDate').AsString := 'Reversal'
    else
      qryCheques.FieldByName('PresentDate').AsString := 'Cancelled';
    qryCheques.FieldByName('PresentAmount').AsCurrency := 0.00;
  end
  else
    if qryCheques.FieldByName('PRESENTED').AsString <> '' then
    begin
      qryCheques.FieldByName('PresentDate').AsString := FormatDateTime('ddddd', qryCheques.FieldByName('PRESENTED').AsDateTime);
      qryCheques.FieldByName('PresentAmount').AsCurrency := qryCheques.FieldByName('AMOUNT').AsCurrency;
    end
    else
    begin
      qryCheques.FieldByName('PresentDate').AsString := 'Unpresented';
      qryCheques.FieldByName('PresentAmount').AsCurrency := 0.00;
    end;
end;


procedure TfrmCashpay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryCheques.Close;
  qryAllocs.Close;
  qryNAccounts.Close;
  qryCreditors.Close;
  qryTotal.Close;
  qryBarCheques.Close;
  qryBarReceipts.Close;
  qryBanks.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmCashpay.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);
   
  dtLastPresent := Date;

  if dbgrCheques.Font.Size <> dmAxiom.GridFont then
      dbgrCheques.Font.Size := dmAxiom.GridFont;

   if dbgrAllocations.Font.Size <> dmAxiom.GridFont then
      dbgrAllocations.Font.Size := dmAxiom.GridFont;

  tbtnNew.Enabled := dmAxiom.Security.Cheque.Create;
//  mnuFileNew.Visible := dmAxiom.Security.Cheque.Create;
   // 30 Sep 2018 DW no need to enable it when first loading
  //tbtnReverse.Enabled := dmAxiom.Security.Cheque.Reverse;
//  mnuFileReverse.Visible := dmAxiom.Security.Cheque.Reverse;
  tbtnBatchPresent.Enabled := (dmAxiom.Security.Cheque.Present and (pagCashbook.ActivePageIndex = 0));
  tbtnPresent.Enabled := (dmAxiom.Security.Cheque.Present and (pagCashbook.ActivePageIndex = 0));
//  mnuFilePresent.Visible := dmAxiom.Security.Cheque.Present;
  tabPresent.TabVisible := dmAxiom.Security.Cheque.Present;
  //tabPresent.TabVisible := false;
end;



{procedure TfrmCashpay.qrBarGraphBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlblBarGraphTitle.Caption := MakeTitle;
  with qryBarCheques do
  begin
    Close;
    SQL.Text := 'SELECT C.CREATED, SUM(C.AMOUNT) AS TotalChqs FROM CHEQUE C WHERE C.REVERSED <> ''Y'' AND C.CREATED >= :P_DateFrom AND C.CREATED < :P_DateTo ' + sSQLWhere + ' GROUP BY C.CREATED';
    if chkDateFrom.Checked then
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
    else
      ParamByName('P_DateFrom').AsDate := 0;
    if chkDateTo.Checked then
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
    else
      ParamByName('P_DateTo').AsDate := Now()+1;
    //ShowMessage(SQL.Text);
    Open;
  end;
  with qryBarReceipts do
  begin
    Close;
    SQL.Text := 'SELECT C.CREATED, SUM(C.AMOUNT) AS TotalRcpts FROM RECEIPT C WHERE C.REVERSED <> ''Y'' AND C.CREATED >= :P_DateFrom AND C.CREATED < :P_DateTo ' + sSQLWhere + ' GROUP BY C.CREATED';
    if chkDateFrom.Checked then
      ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
    else
      ParamByName('P_DateFrom').AsDate := 0;
    if chkDateTo.Checked then
      ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
    else
      ParamByName('P_DateTo').AsDate := Now()+1;
   //ShowMessage(SQL.Text);
    Open;
  end;
end;

procedure TfrmCashpay.qrPrintPayBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    qrlblPrintPayTitle.Caption := MakeTitle;
  if rbMatters.Checked then
  begin
    qrdblblAllocCode.DataSet := qryAllocs;
    qrdblblAllocAmount.DataSet := qryAllocs;
    qrdblblAllocDesc.DataSet := qryAllocs;
    qrsubAllocs.DataSet := qryAllocs;
  end;
  if rbLedger.Checked then
  begin
    qrdblblAllocCode.DataSet := qryNaccounts;
    qrdblblAllocAmount.DataSet := qryNaccounts;
    qrdblblAllocDesc.DataSet := qryNaccounts;
    qrsubAllocs.DataSet := qryNaccounts;
  end;
end;      }

procedure TfrmCashpay.tbtnBatchPresentClick(Sender: TObject);
begin
  with TfrmChequePresent.Create(Self) do
    Show;
end;

procedure TfrmCashpay.mnuFilePrintAllocationsClick(Sender: TObject);
begin
  if rbMatters.Checked then
  begin
//    qrAllocations.DataSet := qryAllocs;
//    qrdblblAllocationCode.DataSet := qryAllocs;
//    qrdblblAllocationDescr.DataSet := qryAllocs;
//    qrdblblAllocationAmount.DataSet := qryAllocs;
  end;
  if rbLedger.Checked then
  begin
//    qrAllocations.DataSet := qryNaccounts;
//    qrdblblAllocationCode.DataSet := qryNaccounts;
//    qrdblblAllocationDescr.DataSet := qryNaccounts;
//    qrdblblAllocationAmount.DataSet := qryNaccounts;
  end;

//  qrAllocations.PreviewModal;
end;

procedure TfrmCashpay.mMoveMatterPopup(Sender: TObject);
begin
   MoveMatter1.Enabled := rbMatters.Checked and (tvAllocations.ViewData.RowCount > 0);
end;

procedure TfrmCashpay.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCashpay.tbSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN : qryCheques.Next;
    VK_UP : qryCheques.Prior;
  end;
end;

procedure TfrmCashpay.tbSearchChange(Sender: TObject);
begin
  if tbSearch.Text <> '' then
    qryCheques.Locate('CHQNO', tbSearch.Text, [loPartialKey]);
end;

procedure TfrmCashpay.pagCashbookChange(Sender: TObject);
begin
   if pagCashbook.ActivePage = tabCashbook then
   begin
      FormResize(Sender);
      tbSearch.SetFocus;
      tvCheques.OptionsView.GroupByBox := chkEFTOnly.Checked;
      tvCheques.OptionsSelection.MultiSelect := chkEFTOnly.Checked;
      bbtnEFTFile.Enabled := chkEFTOnly.Checked;
      mnuFilePrintCashBookWithAllocs.Enabled := True;
      dxBarPrintSelectedCheque.Enabled := (tvCheques.Controller.SelectedRowCount > 0);
      mnuFilePrintAllCheques.Enabled := ((tvCheques.DataController.RowCount > 0) and (pagCashbook.ActivePageIndex = 0));
      tbtnBatchPresent.Enabled := (dmAxiom.Security.Cheque.Present and (pagCashbook.ActivePageIndex = 0));
      tbtnPresent.Enabled := (dmAxiom.Security.Cheque.Present and (pagCashbook.ActivePageIndex = 0));


      // 30 Sep 2018 dw fix crash acused by clicking on reverse button with no rows displayed
      tbtnReverse.Enabled := False;
      if (tvCheques.DataController.RowCount > 0) then
      begin
         if ((qryCheques.FieldByName('REVERSED').AsString = 'Y') OR
            (qryCheques.FieldByName('TAKE_ON').AsString = 'Y') OR
            (not qryCheques.FieldByName('PRESENTED').IsNull)) then
            tbtnReverse.Enabled := False
         else
            if dmAxiom.Security.Cheque.Reverse then
               tbtnReverse.Enabled := True;
      end;

 {     if chkEFTOnly.Checked then
         tvChequesCHQNO.GroupIndex := 0
      else
         tvChequesCHQNO.GroupIndex := -1;  }
   end
   else
   begin
      tbtnReverse.Enabled := False;
      bbtnEFTFile.Enabled := False;
      mnuFilePrintCashBookWithAllocs.Enabled := False;
      mnuFilePrintAllCheques.Enabled := False;
      tbtnPresent.Enabled := False;
      tbtnBatchPresent.Enabled := False;
   end;
end;

procedure TfrmCashpay.tbtnPresentClick(Sender: TObject);
var
   dtDepositDate: TDateTime;
begin
   if qryCheques.FieldByName('CHQNO').AsString <> '' then
   begin
      case tbtnPresent.ImageIndex of
        IDX_CHEQUEPRESENT:
        begin
    {
      Added 19.11.2002 GG

      Need to prevent presentation of cheques into a locked period.
    }
          with TfrmPresentedConf.Create(Self) do
          begin
            Caption := 'Cheque Present (Cheque No: ' + qryCheques.FieldByName('CHQNO').AsString + ')';
            Amount := qryCheques.FieldByName('AMOUNT').AsFloat;
            dtpDepositDate.DateTime := qryCheques.FieldByName('CREATED').AsDateTime;
            dtDepositDate := qryCheques.FieldByName('CREATED').AsDateTime;  // Now - 1;
            Case DayOfTheWeek(dtDepositDate) of
               DaySaturday: dtDepositDate := dtDepositDate - 1;
               DaySunday: dtDepositDate := dtDepositDate - 2;
            End;

            dtpPresentedDate.Date := dtDepositDate;
            if ShowModal = mrOk then
            begin
    {
      Added 19.11.2002 GG

      Need to prevent presentation of cheques into a locked period.
    }
              dtDepositDate := dtpPresentedDate.Date;
              if PostIntoLockedPeriod(dtDepositDate) in [prNotLocked, prOKToProceed] then
              begin
                PresentCheque(dtDepositDate);
              end
            end
          end
        end;
        IDX_CHEQUEUNPRESENT:
        begin
    {
      Added 19.11.2002 GG

      Need to prevent presentation of cheques into a locked period.
    }
          if PostIntoLockedPeriod(qryCheques.FieldByName('PRESENTED').AsDateTime) in [prNotLocked, prOKToProceed] then
          begin
            UnpresentCheque();
          end
        end;
      end;
      SetPresentButton();
   end;
end;

procedure TfrmCashpay.FormActivate(Sender: TObject);
var
  iNCheque: integer;
begin
   if (pagCashBook.ActivePageIndex = 0) then
   begin
      iNCheque := qryCheques.FieldByName('NCHEQUE').AsInteger;
      MakeSQL;
      qryCheques.Locate('NCHEQUE', iNCheque, []);
   end;
end;

procedure TfrmCashpay.tbChqnoToEnter(Sender: TObject);
begin
  if tbChqnoFrom.Text <> '' then
  begin
    tbChqnoTo.Text := tbChqnoFrom.Text;
    tbChqnoTo.SelectAll;
  end;
end;

procedure TfrmCashpay.MoveMatter1Click(Sender: TObject);
begin
// make sure the alloc is unbilled and not trust !

  if (not qryAllocs.FieldByName('NMEMO').IsNull) then
  begin
    MessageDlg('Cannot move a billed cheque',mtError, [mbOk], 0);
    exit;
  end
  else if qryAllocs.FieldByName('TRUST').AsString = 'T' then
  begin
    MessageDlg('Cannot move a trust cheque',mtError, [mbOk], 0);
    exit;
  end;

  // get the new matter number

  if not FormExists(frmMatterSearch) then
  Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

  if frmMatterSearch.ShowModal = mrOk then
  try
    if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
    begin
       if dmAxiom.uniInsight.InTransaction = True then
          dmAxiom.uniInsight.Rollback;
       dmAxiom.uniInsight.StartTransaction;
       // create an oposite alloc entry

       with qryCopyAlloc do
       begin
         close;
         //ParamByName('FILDID').AsString := frmMatterSearch.qryMatters.ParamByName('FILEID').AsString;
         ParamByName('FILEID').AsString := qryAllocs.FieldByName('CODE').AsString;
         ParamByName('DESCR').AsString := 'Transferred to file ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ':' + qryAllocs.FieldByName('ALLOC_DESCR').AsString;
         ParamByName('ALLOC_OLD').AsInteger := qryAllocs.FieldByName('NALLOC').AsInteger;
         ParamByName('ALLOC_NEW').AsInteger := GetSequenceNumber('SQNC_NALLOC');  //GetSeqNum('NALLOC');
         ParamByName('AMOUNT').AsCurrency := qryAllocs.FieldByName('AMOUNT_EXTAX').AsCurrency;
         ParamByName('TAX').AsCurrency := 0-qryAllocs.FieldByName('TAX').AsCurrency;
         ParamByName('TYPE').AsString := 'RV';
         ParamByName('BILLED').AsString := 'Y';
         ParamByName('PRIVATE').AsString := 'Y';
         ExecSql;
         Close;
       end;

  //   / create a new alloc

       with qryCopyAlloc do
       begin
         close;
         ParamByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
         //ParamByName('FILEID').AsString := qryAllocs.FieldByName('CODE').AsString;
         ParamByName('DESCR').AsString := qryAllocs.FieldByName('ALLOC_DESCR').AsString;
         ParamByName('ALLOC_OLD').AsInteger := qryAllocs.FieldByName('NALLOC').AsInteger;
         ParamByName('ALLOC_NEW').AsInteger := GetSequenceNumber('SQNC_NALLOC');  //GetSeqNum('NALLOC');
         ParamByName('AMOUNT').AsCurrency := 0-qryAllocs.FieldByName('AMOUNT_EXTAX').AsCurrency;
         ParamByName('TAX').AsCurrency := qryAllocs.FieldByName('TAX').AsCurrency;
         ParamByName('TYPE').AsString := qryAllocs.FieldByName('TYPE').AsString;
         ParamByName('BILLED').AsString := 'N';
         ParamByName('PRIVATE').AsString := 'N';
         ExecSql;
         Close;
       end;

       with dmAxiom.qryTmp do
       begin
          Close;
          sql.cLEAR;
          SQL.ADD('UPDATE ALLOC SET BILLED = :billed, PRIVATE = :private ');
          SQL.Add(' WHERE FILEID = :FILEID AND NALLOC = :NALLOC ' );
          ParamByName('BILLED').AsString := 'Y';
          ParamByName('PRIVATE').AsString := 'Y';
          ParamByName('FILEID').AsString := qryAllocs.FieldByName('CODE').AsString;
          ParamByName('NALLOC').AsInteger := qryAllocs.FieldByName('NALLOC').AsInteger;
          ExecSql;
       end;
    end;
  except
     on Exception do
     begin
        dmAxiom.uniInsight.Rollback;
        raise;
     end;
   end;
   dmAxiom.uniInsight.commit;
   qryAllocs.Refresh;
end;

procedure TfrmCashpay.dbgrChequesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl, ssAlt] then
    bShiftState := true
  else
    bShiftState := false;
end;

procedure TfrmCashpay.dbgrChequesDblClick(Sender: TObject);
begin
  if bShiftState then
    begin
      with TfrmResetTransaction.Create(Self) do
      begin
        sType := 'CHEQUE';
        lblBank.Caption := qryCheques.FieldbyName('ACCT').AsString;
        lblNReference.Caption := qryCheques.FieldbyName('NCHEQUE').AsString;
        lblDetails.Caption := qryCheques.FieldbyName('PAYEE').AsString;
        lblAmount.Caption := CurrtoStrF(qryCheques.FieldbyName('AMOUNT').AsCurrency, ffCurrency, 2);
        ShowModal;
      end;
    qryCheques.Close;
    qryCheques.Open;
    end;
  bShiftState := false;
end;

procedure TfrmCashpay.FormResize(Sender: TObject);
var
  ClientWidthRemaining: Integer;
begin
  // set the widths of the cheques grid columns
{  ClientWidthRemaining:= dbgrCheques.ClientWidth -
                         dbgrCheques.Columns.Items[0].Width - 1 -
                         dbgrCheques.Columns.Items[1].Width - 1 -
                         dbgrCheques.Columns.Items[2].Width - 1 -
                         dbgrCheques.Columns.Items[5].Width - 1;
  dbgrCheques.Columns.Items[3].Width:= (ClientWidthRemaining - 2) div 2;
  dbgrCheques.Columns.Items[4].Width:= ((ClientWidthRemaining - 2) div 2) - 1;

  // set the widths of the allocations grid columns
  ClientWidthRemaining:= dbgrAllocations.ClientWidth -
                         dbgrAllocations.Columns.Items[0].Width - 1 -
                         dbgrAllocations.Columns.Items[2].Width - 1;
  dbgrAllocations.Columns.Items[1].Width:= ClientWidthRemaining - 2;  }
end;

procedure TfrmCashpay.ToolButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCashpay.ppPrintpayBeforePrint(Sender: TObject);
begin
//    qrlblPrintPayTitle.Caption := MakeTitle;
{   if rbMatters.Checked then
   begin
      qryNaccountsRpt.Close;
      qryAllocsRpt.Close;
      qryAllocsRpt.ParamByName('P_Ncheque').AsInteger := qryChequesRpt.FieldByName('NCHEQUE').AsInteger;
      qryAllocsRpt.Open;
      ppDBPipeline2.DataSource := dsAllocsRpt;
   end;
   if rbLedger.Checked then
   begin
      qryAllocsRpt.Close;
      qryNaccountsRpt.Close;
      qryNaccountsRpt.ParamByName('P_Ncheque').AsInteger := qryChequesRpt.FieldByName('NCHEQUE').AsInteger;
      qryNaccountsRpt.Open;
      ppDBPipeline2.DataSource := dsNaccountsRpt;
   end;   }
end;

procedure TfrmCashpay.ppLabel14GetText(Sender: TObject; var Text: String);
begin
   Text := MakeTitle;
end;

procedure TfrmCashpay.ppPrintpayPreviewFormCreate(Sender: TObject);
begin
   ppPrintpay.PreviewForm.WindowState := wsMaximized;

//   TppViewer(ppPrintpay.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TfrmCashpay.popChequePopup(Sender: TObject);
begin
   tbtnPresent.Enabled := (qryCheques.FieldByName('CHQNO').AsString <> '') {and
                          (tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesTYPE.Index) = 'BP')};

   if qryCheques.FieldByName('PRESENTED').IsNull then
      tbtnPresent.Caption := 'Present this cheque'
   else
      tbtnPresent.Caption := 'Unpresent this cheque';

   tbtnReverse.Enabled := ((qryCheques.FieldByName('CHQNO').AsString <> '') and
                          (tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesREVERSED.Index) = 'N') and
                          dmAxiom.Security.Cheque.Reverse AND (qryCheques.FieldByName('TAKE_ON').AsString = 'N') AND
                          qryCheques.FieldByName('PRESENTED').IsNull);


   mnuFilePrintCheque.Enabled := {((tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesTYPE.Index) = 'BP') and }
                                 (qryCheques.FieldByName('CHQNO').AsString <> ''){) or
                                 (tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesPRINTED.Index) = 'N')};

   btnRenumberCheque.Enabled := ((qryCheques.FieldByName('CHQNO').AsString <> '') and qryCheques.FieldByName('PRESENTED').IsNull and
                                (tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesREVERSED.Index) = 'N') and
                                (qryCheques.FieldByName('TAKE_ON').AsString = 'N'));
end;

procedure TfrmCashpay.File1Popup(Sender: TObject);
begin
   tbtnPresent.Enabled := (qryCheques.FieldByName('CHQNO').AsString <> '') {and
                          (tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesTYPE.Index) = 'BP')};

   tbtnReverse.Enabled := (((qryCheques.FieldByName('CHQNO').AsString <> '') and
                          (tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesREVERSED.Index) = 'N') and
                          dmAxiom.Security.Cheque.Reverse) AND (qryCheques.FieldByName('TAKE_ON').AsString = 'N') AND
                          (qryCheques.FieldByName('PRESENTED').IsNull));

   mnuFilePrintCheque.Enabled := {((tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesTYPE.Index) = 'BP') and  }
                                 (qryCheques.FieldByName('CHQNO').AsString <> ''){) or
                                 (tvCheques.DataController.GetValue(tvCheques.DataController.FocusedRowIndex, tvChequesPRINTED.Index) = 'N')};
end;

procedure TfrmCashpay.tvChequesDataControllerGroupingChanged(
  Sender: TObject);
begin
//   PostMessage(Handle, CM_EXPANDGROUPS, Integer(Sender), 0);
end;

procedure TfrmCashpay.CMExpandGroups(var Msg: TMessage);
begin
   TcxGridDBDataController(Msg.WParam).Groups.FullExpand;
end;

procedure TfrmCashpay.actReverseExecute(Sender: TObject);
var
//  ChequeBookmark: TBookmark;
  frmChequeReverse: TfrmChequeReverse;
  bReverseContinue : boolean;
begin
//   ChequeBookmark := qryCheques.GetBookmark;
   if (TableString('ALLOC', 'NCHEQUE', qryCheques.FieldByName('NCHEQUE').AsInteger, 'NMEMO') = '') then
   begin
      bReverseContinue := True;
      if qryCheques.FieldByName('CHQNO').AsString <> '' then
      begin
         if rbMatters.Checked then
         begin
            if (IsMatterArchived(qryAllocs.FieldByName('CODE').AsString)) then
            begin
               MsgErr('Cheques cannot be reversed for a matter that has been archived.');
               bReverseContinue := False;
            end;
         end;

         if bReverseContinue then
         begin
            try
               frmChequeReverse := TfrmChequeReverse.Create(Self);
               frmChequeReverse.DisplayCheque(Self.qryCheques.FieldByName('NCheque').AsInteger);
               if frmChequeReverse.ShowModal = mrOK then
               begin
                  qryCheques.Close;
                  qryCheques.Open;
//                  qryCheques.GotoBookmark(ChequeBookmark);
               end;
            finally
               frmChequeReverse.Free ;
            end;
         end;
      end;
//      qryCheques.FreeBookmark(ChequeBookmark);
   end
   else
      MsgErr('This Cheque cannot be reversed. It''s attached to a bill');
end;

procedure TfrmCashpay.actReverseUpdate(Sender: TObject);
begin
   if tabCashbook.Visible then
   begin
      TAction(Sender).Enabled := ((qryCheques.FieldByName('REVERSED').AsString = 'N') OR
                                 (qryCheques.FieldByName('TAKE_ON').AsString = 'N') OR
                                 (qryCheques.FieldByName('PRESENTED').IsNull = True)) and
                                 dmAxiom.Security.Cheque.Reverse = True;
   end;
end;

procedure TfrmCashpay.bbtnEFTFileClick(Sender: TObject);
var
   frmEFTFileGeneration: TfrmEFTFileGeneration;
   EFT_Bank: string;
   GrandTotal: currency;
   Record_Count, nRowCount: integer;
begin
   try
      frmEFTFileGeneration:= TfrmEFTFileGeneration.Create(frmCashpay);
      frmEFTFileGeneration.Open_File;
      EFT_Bank := qryCheques.FieldByName('ACCT').AsString;
      frmEFTFileGeneration.EFT_Bank := EFT_Bank;
      frmEFTFileGeneration.EFT_Header;

      for nRowCount := 0 to tvCheques.DataController.RowCount - 1 do
      begin
         if (tvCheques.ViewData.Records[nRowCount].Level <> 0) then
         begin
            if tvCheques.ViewData.Records[nRowCount].Selected then
            begin
               tvCheques.ViewData.Records[nRowCount].Focused := True;
               frmEFTFileGeneration.FTotal_Amount  := qryCheques.FieldByName('AMOUNT').AsCurrency;
               frmEFTFileGeneration.FCreditor      := TableInteger('INVOICE','NCHEQUE',qryCheques.FieldByName('NCHEQUE').AsInteger,'NCREDITOR');
               frmEFTFileGeneration.RefNo          := qryCheques.FieldByName('CHQNO').AsString;
               frmEFTFileGeneration.EFT_Detail;
               GrandTotal := GrandTotal + qryCheques.FieldByName('AMOUNT').AsCurrency;
               inc(Record_Count);
            end;
         end;
      end;

      frmEFTFileGeneration.FTotal_Amount := GrandTotal;
      frmEFTFileGeneration.FTotal_Credit := GrandTotal;
      frmEFTFileGeneration.FRecord_Count := Record_Count + 1;
      frmEFTFileGeneration.EFT_Total;
      frmEFTFileGeneration.EFT_Tail;
      frmEFTFileGeneration.Close_File;
   finally
      frmEFTFileGeneration.Free;
   end;
end;

procedure TfrmCashpay.tvChequesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
///  21 Nov 2017 - why is this crashing on second cheque reversal
//   PostMessage(Handle, CM_SETSELECTION, Integer(Sender), Integer(AFocusedRecord));
end;

procedure TfrmCashpay.tvChequesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
   AColumn2: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('REVERSED');
   AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('CHQNO');
   if VarToStr(ARecord.Values[AColumn.Index]) = 'Y' then
   begin
      if Pos('RV', VarToStr(ARecord.Values[AColumn2.Index])) > 0 then
         // Reversal entry
         AStyle := cxStyleR
      else
         // Reversed entry
         AStyle := cxStyleG;
    end
    else
      AStyle := cxStyleD;
end;

procedure TfrmCashpay.CmSetSelection(var Msg: TMessage);
var
  AList: TList;
  I: Integer;
  AView: TcxCustomGridTableView;
  AFocusedRecord: TcxCustomGridRecord;
  AKeyFieldValues: Variant;
  ALevel: Integer;
begin
   try
      if (TObject(Msg.WParam) is TcxCustomGridTableView) and
         (TObject(Msg.LParam) is TcxCustomGridRecord) then
      begin
       AView := TcxCustomGridTableView(Msg.WParam);
       AFocusedRecord := TcxCustomGridRecord(Msg.LParam);
       AKeyFieldValues := TcxGridDBTableView(AView).DataController.GetRecordId(AFocusedRecord.RecordIndex);
       ALevel := AFocusedRecord.Level;
       if not AFocusedRecord.IsData then
       begin
         AList := TList.Create;
         AView.OnFocusedRecordChanged := nil;
         try
           with AView.DataController do
           begin
             ClearSelection;
             Groups.LoadRecordIndexesByRowIndex(AList, AFocusedRecord.Index);
               for I := AList.Count - 1 downto 0 do
               begin
                 FocusedRecordIndex := Integer(AList[I]);
                 AView.Controller.FocusedRecord.Selected := True;
               end;
               TcxGridDBTableView(AView).DataController.LocateByKey(AKeyFieldValues);
               with TcxGridDBTableView(AView).Controller do
                 while FocusedRow.Level <> ALevel do
                   FocusedRow := TcxCustomGridRow(FocusedRow.ParentRecord);
               TcxGridDBTableView(AView).Controller.FocusedRow.Selected := True;
             end;
         finally
           AView.OnFocusedRecordChanged := tvChequesFocusedRecordChanged;
           AList.Free;
         end;
       end;
      end;
   except
     //
   end;
end;

procedure TfrmCashpay.pagCashbookPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
   if pagCashbook.ActivePage = tabFilter then
      MakeSQL;
end;

procedure TfrmCashpay.btnRenumberChequeClick(Sender: TObject);
var
   frmChequeRenumber: TfrmChequeRenumber;
   ARowInfo: TcxRowInfo;
begin
   ARowInfo := tvCheques.DataController.GetRowInfo(tvCheques.DataController.FocusedRowIndex);
   frmChequeRenumber := TfrmChequeRenumber.Create(nil);
   frmChequeRenumber.Printer := tvCheques.DataController.GetRowValue(ARowInfo, tvChequesPRINTER.Index);
   frmChequeRenumber.ChequeNo := tvCheques.DataController.GetRowValue(ARowInfo, tvChequesCHQNO.Index);
   frmChequeRenumber.ChequeDate := FormatDateTime('dd/mm/yyyy',tvCheques.DataController.GetRowValue(ARowInfo, tvChequesCREATED.Index));
   frmChequeRenumber.NCheque := tvCheques.DataController.GetRowValue(ARowInfo, tvChequesNCHEQUE.Index);
   frmChequeRenumber.FromCheque := True;
   if frmChequeRenumber.ShowModal() = mrOk then
   begin
      qryCheques.Close;
      qryCheques.Open;
   end;
   frmChequeRenumber.Free;
end;

procedure TfrmCashpay.ppLabel15GetText(Sender: TObject; var Text: String);
begin
   Text := SystemString('Company');
end;

procedure TfrmCashpay.ppLabel27GetText(Sender: TObject; var Text: String);
begin
   Text := SystemString('Company');
end;

procedure TfrmCashpay.qryChequesRptAfterScroll(DataSet: TDataSet);
begin
   if rbMatters.Checked then
   begin
      qryAllocsRpt.Close;
      qryAllocsRpt.ParamByName('P_Ncheque').AsInteger := DataSet.FieldByName('NCHEQUE').AsInteger;
      qryAllocsRpt.Open;
   end;

   if rbLedger.Checked then
   begin
      qryNaccountsRpt.Close;
      qryNaccountsRpt.ParamByName('P_Ncheque').AsInteger := DataSet.FieldByName('NCHEQUE').AsInteger;
      qryNaccountsRpt.Open;
   end;
end;

procedure TfrmCashpay.qryChequesRptCalcFields(DataSet: TDataSet);
begin
   if DataSet.FieldByName('REVERSED').AsString = 'Y' then
  begin
    if DataSet.FieldByName('TYPE').AsString = 'RV' then
      DataSet.FieldByName('PresentDate').AsString := 'Reversal'
    else
      DataSet.FieldByName('PresentDate').AsString := 'Cancelled';
    DataSet.FieldByName('PresentAmount').AsCurrency := 0.00;
  end
  else
    if DataSet.FieldByName('PRESENTED').AsString <> '' then
    begin
      DataSet.FieldByName('PresentDate').AsString := FormatDateTime('ddddd', DataSet.FieldByName('PRESENTED').AsDateTime);
      DataSet.FieldByName('PresentAmount').AsCurrency := DataSet.FieldByName('AMOUNT').AsCurrency;
    end
    else
    begin
      DataSet.FieldByName('PresentDate').AsString := 'Unpresented';
      DataSet.FieldByName('PresentAmount').AsCurrency := 0.00;
    end;
end;

procedure TfrmCashpay.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := CN_PROGRAM_NAME + ' version ' + dmAxiom.GetBuildInfo ;
end;

procedure TfrmCashpay.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssCtrl in Shift) and (key = VK_F4) then
      Self.Close;
end;

procedure TfrmCashpay.tvChequesColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
   qryCheques.Close;
   FOrderBy := ' ORDER BY ';

   FOrderBy := FOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      FOrderBy := FOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      FOrderBy := FOrderBy + ' ASC';
   end
   else
   begin
      FOrderBy := FOrderBy + ' DESC';
   end;

   MakeSQL(True);
end;

procedure TfrmCashpay.dxBarButton2Click(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrCheques);
   end;
end;

end.

