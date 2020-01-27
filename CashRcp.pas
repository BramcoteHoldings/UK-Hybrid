unit CashRcp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Data.Db, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxCurrencyEdit, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxRadioGroup, cxSplitter, cxGroupBox,
  Vcl.ComCtrls, DateChangeButton, cxCheckBox, Vcl.Buttons, JvExComCtrls,
  JvComCtrls, ppChrt, ppChrtDP, ppDB, ppDBPipe, ppParameter, ppModule, raCodMod,
  ppBands, ppMemo, ppCtrls, ppClass, ppVar, ppDesignLayer, ppReport, ppSubRpt,
  ppPrnabl, ppStrtch, ppRegion, ppCache, ppComm, ppRelatv, ppProd,
  System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan, dxBar,
  cxClasses, Vcl.ImgList, DBAccess, Uni, MemDS, Variants, ppIniStorage, ppFileUtils,
  cxGridExportLink, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxPC, Vcl.ExtCtrls,
  dxDateRanges, System.ImageList, dxScrollbarAnnotations;

type
  TfrmCashRcp = class(TForm)
    qryNallocs: TUniQuery;
    dsNallocs: TUniDataSource;
    dsReceipts: TUniDataSource;
    sbarInfo: TStatusBar;
    qryTotal: TUniQuery;
    qryReceiptsBankDeps: TUniQuery;
    qryNaccounts: TUniQuery;
    dsNaccounts: TUniDataSource;
    ilstToolbar: TImageList;
    qryBarCheques: TUniQuery;
    qryBarReceipts: TUniQuery;
    qryBanks: TUniQuery;
    qryTmp: TUniQuery;
    qryReceipts: TUniQuery;
    dxBarManager1: TdxBarManager;
    tbtnNew: TdxBarButton;
    tbtnClear: TdxBarButton;
    mnuFilePrintCheque: TdxBarButton;
    mnuFilePrintAllCheques: TdxBarButton;
    mnuFilePrintAllocations: TdxBarButton;
    mnuFilePrintCashBook: TdxBarButton;
    tbtnReverse: TdxBarButton;
    mnuFileExit: TdxBarButton;
    File1: TdxBarSubItem;
    Help2: TdxBarButton;
    HowtoCreateaPayment1: TdxBarButton;
    HowtoFindaCheque1: TdxBarButton;
    HowtoCancelaCheque1: TdxBarButton;
    Help1: TdxBarSubItem;
    tbtnBarGraph: TdxBarButton;
    tbtnPrevCashbook: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleR: TcxStyle;
    cxStyleG: TcxStyle;
    cxStyleD: TcxStyle;
    pmReceipts: TdxBarPopupMenu;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    dxBarButton3: TdxBarButton;
    rptCashReceiptsBook: TppReport;
    qryNallocsRpt: TUniQuery;
    OraQuery2: TUniQuery;
    qryReceiptsBankDepsRpt: TUniQuery;
    qryBankedDeposit: TUniQuery;
    dsReceiptsBankDepsRpt: TUniDataSource;
    plReceiptsBankDepsRpt: TppDBPipeline;
    ppParameterList1: TppParameterList;
    dsNallocsRpt: TUniDataSource;
    plNallocsRpt: TppDBPipeline;
    plBankedDeposit: TppDBPipeline;
    dsBankedDeposit: TUniDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppRegion1: TppRegion;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    lblCompanyName: TppLabel;
    ppRegion2: TppRegion;
    ppLabel2: TppLabel;
    ppRegion3: TppRegion;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel20: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppLabel14: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppReceipts: TppDBCalc;
    ppVariable2: TppVariable;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppVariable1: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText8: TppDBText;
    ppDBText12: TppDBText;
    ppLabel22: TppLabel;
    ppDBText14: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppRegion6: TppRegion;
    ppDBCalc4: TppDBCalc;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine5: TppLine;
    ppDBText15: TppDBText;
    ppShape1: TppShape;
    dxBarButton1: TdxBarButton;
    OpenDialog: TOpenDialog;
    rptAllocations: TppReport;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    qryReceiptPrint: TUniQuery;
    dsReceiptPrint: TUniDataSource;
    plReceiptPrint: TppDBPipeline;
    qryAllocPrint: TUniQuery;
    dsAllocPrint: TUniDataSource;
    plAllocPrint: TppDBPipeline;
    dsNAccountPrint: TUniDataSource;
    qryNAccountPrint: TUniQuery;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppLabel25: TppLabel;
    ppDBText17: TppDBText;
    ppLabel26: TppLabel;
    ppDBText18: TppDBText;
    ppLabel27: TppLabel;
    ppDBText19: TppDBText;
    ppLabel28: TppLabel;
    ppDBText20: TppDBText;
    ppLabel29: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel30: TppLabel;
    ppDBText25: TppDBText;
    ppLabel31: TppLabel;
    ppDBText26: TppDBText;
    ppLine3: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDetailBand4: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppReport2: TppReport;
    ppParameterList3: TppParameterList;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppDPTeeChart1: TppDPTeeChart;
    ppLabel35: TppLabel;
    raCodeModule2: TraCodeModule;
    raCodeModule3: TraCodeModule;
    ppDBMemo1: TppDBMemo;
    ppLabel36: TppLabel;
    ppDBText4: TppDBText;
    ppDBText30: TppDBText;
    pagCashbook: TcxPageControl;
    tabCashbook: TcxTabSheet;
    tabFilter: TcxTabSheet;
    DateChangeButton8: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    dtpDateFrom: TDateTimePicker;
    dcToday: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    tbDesc: TEdit;
    tbChqnoTo: TEdit;
    tbRcptNoLike: TEdit;
    tbPayor: TEdit;
    tbChqnoFrom: TEdit;
    rgOrderby: TcxRadioGroup;
    dtpDateTo: TDateTimePicker;
    tbAmountTo: TEdit;
    tbAmountFrom: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    lblAmountFrom: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    chkNoReversals: TcxCheckBox;
    chkDateTo: TCheckBox;
    chkUnprinted: TcxCheckBox;
    chkReversalsOnly: TcxCheckBox;
    chkDateFrom: TCheckBox;
    lblBankName: TLabel;
    lblBank: TLabel;
    cbBank: TComboBox;
    btnClearAll: TBitBtn;
    cxSplitter1: TcxSplitter;
    Panel3: TPanel;
    Panel1: TPanel;
    Label17: TLabel;
    tbSearch: TEdit;
    dbgrReceipts: TcxGrid;
    tvReceipts: TcxGridDBTableView;
    tvReceiptsACCT1: TcxGridDBColumn;
    tvReceiptsCREATED: TcxGridDBColumn;
    tvReceiptsRCPTNO: TcxGridDBColumn;
    tvReceiptsPAYOR1: TcxGridDBColumn;
    tvReceiptsDESCR1: TcxGridDBColumn;
    tvReceiptsAMOUNT1: TcxGridDBColumn;
    tvReceiptsClearance1: TcxGridDBColumn;
    tvReceiptsREVERSED: TcxGridDBColumn;
    tvReceiptsNRECEIPT: TcxGridDBColumn;
    tvReceiptsPRINTER: TcxGridDBColumn;
    tvReceiptsRECEIPT_NO: TcxGridDBColumn;
    tvReceiptsNCHEQUE: TcxGridDBColumn;
    tvReceiptsCHQNO: TcxGridDBColumn;
    tvReceiptsRCPT_BY: TcxGridDBColumn;
    dbgrReceiptsLevel1: TcxGridLevel;
    Panel4: TPanel;
    Panel2: TPanel;
    rbMatters: TcxRadioButton;
    rbLedger: TcxRadioButton;
    dbgrAllocations: TcxGrid;
    tvAllocations: TcxGridDBTableView;
    tvAllocationsCODE1: TcxGridDBColumn;
    tvAllocationsDESCR1: TcxGridDBColumn;
    tvAllocationsAMOUNT1: TcxGridDBColumn;
    dbgrAllocationsLevel1: TcxGridLevel;
    raProgramInfo2: TraProgramInfo;
    procedure FormShow(Sender: TObject);
    procedure qryReceiptsAfterScroll(DataSet: TDataSet);
    procedure mnuFileNewClick(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure pagCashbookChange(Sender: TObject);
    procedure btnMtdClick(Sender: TObject);
    procedure btnYtdClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure mnuFilePrintCashBookClick(Sender: TObject);
    procedure qrsubAllocsNeedData(Sender: TObject; var MoreData: Boolean);
    procedure rbMattersClick(Sender: TObject);
    procedure rbLedgerClick(Sender: TObject);
    procedure btnLastMonthClick(Sender: TObject);
    procedure qryReceiptsCalcFields(DataSet: TDataSet);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnReverseClick(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure tbtnBarGraphClick(Sender: TObject);
    procedure qrBarGraphAfterPrint(Sender: TObject);
    procedure tbtnClearClick(Sender: TObject);
    procedure mnuFilePrintChequeClick(Sender: TObject);
    procedure mnuFilePrintAllocationsClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuFilePrintAllChequesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuFileClearClick(Sender: TObject);
    procedure tbSearchChange(Sender: TObject);
    procedure tbSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReceiptsBankDepsAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure tbChqnoToEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure tbtnPrevCashbookClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure lblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel2Print(Sender: TObject);
    procedure qryReceiptsBankDepsRptAfterScroll(DataSet: TDataSet);
    procedure ppVariable2Print(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure ppReport2BeforePrint(Sender: TObject);
    procedure tvChequesStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cbBankChange(Sender: TObject);
    procedure tvReceiptsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvReceiptsDblClick(Sender: TObject);
    procedure tvReceiptsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FWhere : String;

    function CheckTrustBalance : Boolean;
    function MakeTitle: String;

    procedure NewReceipt;
    procedure ShowTotal;
    procedure ShowMatters;
    procedure ShowLedgers;
//    function GetReport : TqrCashReceiptsBook;
    procedure AfterScroll;

  public
    procedure MakeSQL;

  end;

implementation

uses
  AxiomData, MiscFunc, Receipt, ReceiptPrint, ReceiptReverse,
  resettransaction, chequerenumber, citfunc, ChequeReverse;

{$R *.DFM}

var
  sSQLWhere : string;
  bShiftState : boolean;

procedure TfrmCashRcp.FormShow(Sender: TObject);
begin
   AddBanks(cbBank, 'G,T,C');
   if (pagCashBook.ActivePageIndex = 1) then
   begin
      dcToday.Click;
{      MakeSQL;
      qryNallocs.Close;
      qryNallocs.ParamByName('P_Nreceipt').AsInteger := qryReceipts.FieldByName('NRECEIPT').AsInteger;
      qryNallocs.Open;    }
   end;
end;

procedure TfrmCashRcp.qryReceiptsAfterScroll(DataSet: TDataSet);
begin
   AfterScroll;
end;

procedure TfrmCashRcp.AfterScroll;
begin
   if rbMatters.Checked then
   begin
      qryNallocs.Close;
      qryNallocs.ParamByName('P_Nreceipt').AsInteger := qryReceipts.FieldByName('NRECEIPT').AsInteger;
      qryNallocs.Open;
   end;
   if rbLedger.Checked then
   begin
      qryNaccounts.Close;
      qryNaccounts.ParamByName('P_Nreceipt').AsInteger := qryReceipts.FieldByName('NRECEIPT').AsInteger;
      qryNaccounts.Open;
   end;

   if (qryReceipts.FieldByName('REVERSED').AsString = 'Y') OR
      (qryReceipts.FieldByName('TAKE_ON').AsString = 'Y') OR
      (qryReceipts.FieldByName('WASCONVERTED').AsString = 'Y')  then
       tbtnReverse.Enabled := False
   else
      if dmAxiom.Security.Receipt.Reverse then
         tbtnReverse.Enabled := True;

   if (qryReceipts.FieldByName('BANKED').AsString = 'Y') and
      (qryReceipts.FieldByName('CLEARED').AsString <> 'Y') then
      tbtnClear.Enabled := (dmAxiom.Security.Receipt.Clear)
   else
      tbtnClear.Enabled := False;
end;

procedure TfrmCashRcp.mnuFileNewClick(Sender: TObject);
begin
  NewReceipt;
end;

procedure TfrmCashRcp.NewReceipt;
begin
   if FormExists(frmReceipt) = False then
      Application.CreateForm(TfrmReceipt, frmReceipt);

   frmReceipt.ReceiptFromReceipts;
   frmReceipt.Show;
end;

procedure TfrmCashRcp.ShowTotal;
var
  sSuffix : string;
begin
  sSuffix := 's';
  if not qryTotal.EOF then
  begin
    if qryTotal.FieldByName('CNT').AsInteger = 1 then
      sSuffix := '';
    sbarInfo.Panels.Items[0].Text := Format('%d Receipt' + sSuffix, [qryTotal.FieldByName('CNT').AsInteger]);
    sbarInfo.Panels.Items[1].Text := Format('%m', [qryTotal.FieldByName('AMT').AsCurrency]);
  end
  else
  begin
    sbarInfo.Panels.Items[0].Text := '';
    sbarInfo.Panels.Items[1].Text := '';
  end;
end;

procedure TfrmCashRcp.cbBankChange(Sender: TObject);
begin
   if (cbBank.Text = '') then
      lblBankName.Caption := '';
end;

procedure TfrmCashRcp.cbBankClick(Sender: TObject);
begin
   lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
end;

procedure TfrmCashRcp.MakeSQL;
var
   sAND, sOR, sTmp,
   lsTrustasOffice: string;
begin
   // Build the SQL Filter query
   lsTrustasOffice := SystemString('TRUST_AS_OFFICE');
   FWhere := '';
   qryReceipts.Close;
   qryTotal.Close;
   sSQLWhere := '';
   sAND := ' AND ';

   if cbBank.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'ACCT = ''' + cbBank.Text + ''''
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
           sTmp := sTmp + sOR + 'ACCT = ''' + qryBanks.FieldByName('ACCT').AsString + '''';
           sOR := ' OR ';
           Next;
         end;
         sSQLWhere := sSQLWhere + sAND + '(' + sTmp + ')';
         Close;
       end
       else
         sSQLWhere := sSQLWhere + sAND + 'C.ACCT = ''zz''';  // Eliminate all receipts
     end;
   end;
   if tbChqnoFrom.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'RCPTNO >= ''' + tbChqnoFrom.Text + '''';
   if tbChqnoTo.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'RCPTNO <= ''' + tbChqnoTo.Text + '''';
   if tbRcptNoLike.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'RCPTNO LIKE ''%' + tbRcptNoLike.Text + '%''';
   if tbPayor.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'UPPER(PAYOR) LIKE ' + QuotedStr('%' + UpperCase(tbPayor.Text) + '%');
   if tbDesc.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'UPPER(DESCR) LIKE ' + QuotedStr('%' + UpperCase(tbDesc.Text) + '%');
   if tbAmountFrom.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'ABS(AMOUNT) >= ' + tbAmountFrom.Text;
   if tbAmountTo.Text <> '' then
     sSQLWhere := sSQLWhere + sAND + 'ABS(AMOUNT) <= ' + tbAmountTo.Text;
   if chkNoReversals.Checked then
     sSQLWhere := sSQLWhere + sAND + 'REVERSED <> ''Y''';
   if chkUnprinted.Checked then
     sSQLWhere := sSQLWhere + sAND + 'PRINTED = ''N''';
   if chkReversalsOnly.Checked then
      sSQLWhere := sSQLWhere + sAND + 'REVERSED = ''Y''';

   FWhere := sSQLWhere;
   qryReceipts.SQL.Clear;
 //  iTmp := qryReceipts.SQL.Add('SELECT ACCT, ADATE, CHQNO, PAYEE, "DESC", AMOUNT, REVERSED, PDATE, NRECEIPT FROM NRECEIPT ' + sSQLWhere);
   case rgOrderby.ItemIndex of
    0: begin
          qryReceipts.SQL.Add('SELECT case when (reversed = ''Y'') then ');
          qryReceipts.SQL.Add(' case when (type = ''RV'') then ''Reversal'' ');
          qryReceipts.SQL.Add(' else ''Reversed'' end  ');
          qryReceipts.SQL.Add(' else ');
          qryReceipts.SQL.Add(' case when (cleared = ''N'' and DCLEARDATE is not null) ');
          qryReceipts.SQL.Add(' then to_char(DCLEARDATE, ''dd/mm/yyyy'') ');
          qryReceipts.SQL.Add(' else ''Cleared'' end ');
          qryReceipts.SQL.Add(' end clearance, banked_date, ');
          qryReceipts.SQL.Add(' PRINTER, NRECEIPT, CREATED, TYPE, ACCT, RCPTNO, PAYOR, DRAWER,');
          qryReceipts.SQL.Add(' BANK, BRANCH, CHQNO, REVERSED, RVBY, DCLEARDATE, CCTYPE, BANKED, CLEARED,');
          qryReceipts.SQL.Add(' NTRANS, TRUST, SUFCHQ, DESCR, NBANKDEP, SYSTEM_DATE, PRINTED, NNAME, AMOUNT,');
          qryReceipts.SQL.Add(' DECODE(BANKED,''Y'',AMOUNT,0) AS BANKED_AMT, NCHEQUE, WHO, RECEIPT_NO, TAKE_ON, rvby as rcpt_by, ');
          qryReceipts.SQL.Add(' WASCONVERTED FROM RECEIPT WHERE ');
          qryReceipts.SQL.Add(' CASE WHEN ((:trust = ''T'') AND (:trustasoffice = ''N'') AND (TRUNC(system_date) >= :p_datefrom and TRUNC(system_date) < :p_dateto ) THEN 1 ' );
          qryReceipts.SQL.Add('      WHEN ((:trust = ''T'') AND (:trustasoffice = ''Y'') AND (TRUNC(created) >= :p_datefrom and TRUNC(created) < :p_dateto ) THEN 1 ' );
          qryReceipts.SQL.Add('      WHEN (NVL(:trust, ''G'') <> ''T'') AND (TRUNC(created) >= :p_datefrom and TRUNC(created) < :p_dateto )  THEN 1 ' );
          qryReceipts.SQL.Add(' ELSE 0 ');
          qryReceipts.SQL.Add(' END = 1 ' + sSQLWhere);
//          trunc(CREATED) >= :P_DateFrom AND trunc(CREATED) < :P_DateTo ' + sSQLWhere );
//          qryReceipts.SQL.Add(' ORDER BY trunc(CREATED), RCPTNO  ');
          qryReceipts.SQL.Add(' ORDER BY (CASE WHEN ((:trust = ''T'') AND (:trustasoffice = ''N'')) THEN TRUNC(system_date) ' );
          qryReceipts.SQL.Add('      WHEN ((:trust = ''T'') AND (:trustasoffice = ''Y'')) THEN trunc(created) ' );
          qryReceipts.SQL.Add('      WHEN (NVL(:trust, ''G'') <> ''T'') THEN TRUNC(created) ' );
          qryReceipts.SQL.Add(' ELSE TRUNC(created) ');
          qryReceipts.SQL.Add(' END), RCPTNO ');
          sSQLWhere := sSQLWhere + ' ORDER BY trunc(CREATED), RCPTNO  ';
       end;
    1: begin
          qryReceipts.SQL.Add('SELECT case when (reversed = ''Y'') then ');
          qryReceipts.SQL.Add(' case when (type = ''RV'') then ''Reversal'' ');
          qryReceipts.SQL.Add(' else ''Reversed'' end  ');
          qryReceipts.SQL.Add(' else ');
          qryReceipts.SQL.Add(' case when (cleared = ''N'' and DCLEARDATE is not null) ');
          qryReceipts.SQL.Add(' then to_char(DCLEARDATE, ''dd/mm/yyyy'') ');
          qryReceipts.SQL.Add(' else ''Cleared'' end ');
          qryReceipts.SQL.Add(' end clearance, banked_date, ');
          qryReceipts.SQL.Add(' PRINTER, NRECEIPT, CREATED, TYPE, ACCT, RCPTNO, PAYOR, DRAWER,');
          qryReceipts.SQL.Add(' BANK, BRANCH, CHQNO, REVERSED, RVBY, DCLEARDATE, CCTYPE, BANKED, CLEARED,');
          qryReceipts.SQL.Add(' NTRANS, TRUST, SUFCHQ, DESCR, NBANKDEP, SYSTEM_DATE, PRINTED, NNAME, AMOUNT,');
          qryReceipts.SQL.Add(' DECODE(BANKED,''Y'',AMOUNT,0) AS BANKED_AMT, NCHEQUE, WHO, RECEIPT_NO, TAKE_ON, rvby as rcpt_by, ');
          qryReceipts.SQL.Add(' WASCONVERTED FROM RECEIPT WHERE ');
          qryReceipts.SQL.Add(' CASE WHEN ((:trust = ''T'') AND (:trustasoffice = ''N'') AND (TRUNC(system_date) >= :p_datefrom and TRUNC(system_date) < :p_dateto )) THEN 1 ' );
          qryReceipts.SQL.Add('      WHEN ((:trust = ''T'') AND (:trustasoffice = ''Y'') AND (TRUNC(created) >= :p_datefrom and TRUNC(created) < :p_dateto )) THEN 1 ' );
          qryReceipts.SQL.Add('      WHEN (NVL(:trust, ''G'') <> ''T'') AND (TRUNC(created) >= :p_datefrom and TRUNC(created) < :p_dateto )  THEN 1 ' );
          qryReceipts.SQL.Add(' ELSE 0 ');
          qryReceipts.SQL.Add(' END = 1 ' + sSQLWhere );
          qryReceipts.SQL.Add(' ORDER BY (CASE WHEN ((:trust = ''T'') AND (:trustasoffice = ''N'')) THEN TRUNC(system_date) ' );
          qryReceipts.SQL.Add('      WHEN ((:trust = ''T'') AND (:trustasoffice = ''Y'')) THEN TRUNC(created) ' );
          qryReceipts.SQL.Add('      WHEN (NVL(:trust, ''G'') <> ''T'') THEN TRUNC(created) ' );
          qryReceipts.SQL.Add(' ELSE TRUNC(created) ');
          qryReceipts.SQL.Add(' END), RCPTNO ');
//           qryReceipts.SQL.Add(' ORDER BY trunc(CREATED), RECEIPT_NO ASC ');
//          trunc(CREATED) >= :P_DateFrom AND trunc(CREATED) < :P_DateTo ' + sSQLWhere + ' ORDER BY RECEIPT_NO ASC');
          sSQLWhere := sSQLWhere + ' ORDER BY RECEIPT_NO ASC ';
       end;
   end;

   FWhere := sSQLWhere;
   //  MessageDlg(qryReceipts.SQL.Text, mtinformation, [mbOK], 0);
   if chkDateFrom.Checked then
      qryReceipts.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
   else
      qryReceipts.ParamByName('P_DateFrom').AsDate := 0;
   if chkDateTo.Checked then
      qryReceipts.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
   else
      qryReceipts.ParamByName('P_DateTo').AsDate := trunc(Now()) + 1;

   qryReceipts.ParamByName('trustasoffice').AsString := lsTrustasOffice;

   qryReceipts.ParamByName('trust').Clear;

   if (cbBank.Text <> '') then
   begin
      if IsTrustAccount(cbBank.Text) = True then
      begin
         qryReceipts.ParamByName('trust').AsString := 'T';
      end;
   end;

   if dmAxiom.runningide = True then
      qryReceipts.SQL.SaveToFile('c:\tmp\cashrcp.sql');

   stmp :=  qryReceipts.SQL.Text;

   qryReceipts.Open;

   qryTotal.SQL.Clear;
   qryTotal.SQL.Add('SELECT SUM(AMOUNT) AS AMT, COUNT(AMOUNT) AS CNT FROM ');
   qryTotal.SQL.Add('RECEIPT WHERE ');
   qryTotal.SQL.Add(' CASE WHEN ((:trust = ''T'') AND (:trustasoffice = ''N'') AND (TRUNC(system_date) >= :p_datefrom and TRUNC(system_date) < :p_dateto )) THEN 1 ' );
   qryTotal.SQL.Add('      WHEN ((:trust = ''T'') AND (:trustasoffice = ''Y'') AND (TRUNC(created) >= :p_datefrom and TRUNC(created) < :p_dateto )) THEN 1 ' );
   qryTotal.SQL.Add('      WHEN (nvl(:trust,''G'') <> ''T'') AND (TRUNC(created) >= :p_datefrom and TRUNC(created) < :p_dateto )  THEN 1 ' );
   qryTotal.SQL.Add(' ELSE 0 ');
   qryTotal.SQL.Add(' END = 1 ' + sSQLWhere + '');

//   'CREATED >= :P_DateFrom AND CREATED < :P_DateTo ' + sSQLWhere + '');
 //  MessageDlg(qryTotal.SQL.Text, mtinformation, [mbOK], 0);
   if chkDateFrom.Checked then
      qryTotal.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
   else
      qryTotal.ParamByName('P_DateFrom').AsDate := 0;
   if chkDateTo.Checked then
      qryTotal.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
   else
      qryTotal.ParamByName('P_DateTo').AsDate := Now()+1;

   qryTotal.ParamByName('trustasoffice').AsString := lsTrustasOffice;

   qryTotal.ParamByName('trust').Clear;

   if (cbBank.Text <> '') then
   begin
      if IsTrustAccount(cbBank.Text) = True then
      begin
         qryTotal.ParamByName('trust').AsString := 'T';
      end;
   end;

   if dmAxiom.runningide = True then
      qryTotal.SQL.SaveToFile('c:\tmp\cashrcptotal.sql');

   qryTotal.Open;
   ShowTotal;
end;

function TfrmCashRcp.MakeTitle : string;
var
  sAND : string;
  sTitle : string;
begin
   sTitle := '';
  sAND := ' and ';
  if dtpDateFrom.Date = dtpDateTo.Date then
    sTitle := 'For the period ' + FormatDateTime('dddddd', dtpDateFrom.Date)
  else
    sTitle := 'For the period ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date) + ' ';
  if cbBank.Text <> '' then
    sTitle := sTitle + sAND + 'Bank Account ' + TableString('BANK', 'ACCT', cbBank.Text, 'NAME') + ' (' + cbBank.Text + ')';
  if tbChqnoFrom.Text <> '' then
    sTitle := sTitle + sAND + 'Receipt number >= ' + tbChqnoFrom.Text;
  if tbChqnoTo.Text <> '' then
    sTitle := sTitle + sAND + 'Receipt number <= ' + tbChqnoTo.Text;
  if tbPayor.Text <> '' then
    sTitle := sTitle + sAND + 'Payor contains "' + tbPayor.Text + '"';
  if tbDesc.Text <> '' then
    sTitle := sTitle + sAND + 'Description contains "' + tbDesc.Text + '"';
  if tbAmountFrom.Text <> '' then
    sTitle := sTitle + sAND + 'Amount >= ' + tbAmountFrom.Text;
  if tbAmountTo.Text <> '' then
    sTitle := sTitle + sAND + 'Amount <= ' + tbAmountTo.Text;
  if chkNoReversals.Checked then
    sTitle := sTitle + sAND + 'excluding reversals';

  case rgOrderby.ItemIndex of
     0: sTitle := sTitle + sAND + 'order by Date';
     1: sTitle := sTitle + sAND + 'order by Receipt Number';
  end;

  MakeTitle := sTitle;
end;


procedure TfrmCashRcp.pagCashbookChange(Sender: TObject);
begin
   if pagCashbook.ActivePage = tabCashbook then
   begin
      qryReceipts.AfterScroll := nil;
      FormResize(Sender);
      MakeSQL;
      tbSearch.SetFocus;
      tbtnBarGraph.Enabled := (not qryReceipts.IsEmpty);
      tbtnPrevCashbook.Enabled := (not qryReceipts.IsEmpty);
      mnuFilePrintCashBook.Enabled := (not qryReceipts.IsEmpty);
      mnuFilePrintAllocations.Enabled := (not qryReceipts.IsEmpty);
      qryReceipts.AfterScroll := qryReceiptsAfterScroll;
      tbtnClear.Enabled := dmAxiom.Security.Receipt.Clear;
      tbtnReverse.Enabled := dmAxiom.Security.Receipt.Reverse;
      tbtnReverse.Enabled := False;
      if (tvReceipts.DataController.RowCount > 0) then
      begin
         if (tvReceipts.Controller.SelectedRowCount > 0) then
         begin
           if (qryReceipts.FieldByName('REVERSED').AsString = 'Y') OR
              (qryReceipts.FieldByName('TAKE_ON').AsString = 'Y') OR
              (qryReceipts.FieldByName('WASCONVERTED').AsString = 'Y')  then
               tbtnReverse.Enabled := False
           else
              if dmAxiom.Security.Receipt.Reverse then
                 tbtnReverse.Enabled := True;
           end;
      end;
   end
   else
   begin
      tbtnBarGraph.Enabled := False;
      tbtnPrevCashbook.Enabled := False;
      mnuFilePrintCashBook.Enabled := False;
      mnuFilePrintAllocations.Enabled := False;
      tbtnClear.Enabled := False;
      tbtnReverse.Enabled := False;
   end;
end;


procedure TfrmCashRcp.btnMtdClick(Sender: TObject);
var
  wYear, wMonth, wDay : Word;
begin
  dtpDateTo.Date :=  Int(Now);
  DecodeDate(Now, wYear, wMonth, wDay);
  dtpDateFrom.Date := (Int(Now) - wDay + 1);
end;

procedure TfrmCashRcp.btnYtdClick(Sender: TObject);
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


procedure TfrmCashRcp.btnClearAllClick(Sender: TObject);
begin
  cbBank.Text := '';
  tbChqnoFrom.Text := '';
  tbChqnoTo.Text := '';
  tbPayor.Text := '';
  tbDesc.Text := '';
  tbAmountFrom.Text := '';
  tbAmountTo.Text := '';
  chkUnprinted.Checked := False;
  chkNoReversals.Checked := False;
  lblBankName.Caption := '';
end;

procedure TfrmCashRcp.mnuFilePrintCashBookClick(Sender: TObject);
var
  lsTrustasOffice: string;
begin
   try
      lsTrustasOffice := SystemString('TRUST_AS_OFFICE');
      qryReceiptsBankDepsRpt.Close;
      qryReceiptsBankDepsRpt.SQL.Clear;
      qryReceiptsBankDepsRpt.SQL.Text := qryReceipts.SQL.Text;

      qryReceiptsBankDepsRpt.ParamByName('trustasoffice').AsString := lsTrustasOffice;

      qryReceiptsBankDepsRpt.ParamByName('trust').Clear;

      if (cbBank.Text <> '') then
      begin
         if IsTrustAccount(cbBank.Text) = True then
         begin
            qryReceiptsBankDepsRpt.ParamByName('trust').AsString := 'T';
         end;
      end;

      if chkDateFrom.Checked then
         qryReceiptsBankDepsRpt.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
      else
         qryReceiptsBankDepsRpt.ParamByName('P_DateFrom').AsDate := 0;
      if chkDateTo.Checked then
         qryReceiptsBankDepsRpt.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
      else
         qryReceiptsBankDepsRpt.ParamByName('P_DateTo').AsDate := Now()+1;

      rptCashReceiptsBook.Print;
   except

   end;
end;


procedure TfrmCashRcp.qrsubAllocsNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  qryNallocs.Close;
  qryNallocs.ParamByName('P_Nreceipt').AsInteger := qryReceipts.FieldByName('NRECEIPT').AsInteger;
  qryNallocs.Open;
end;

procedure TfrmCashRcp.rbMattersClick(Sender: TObject);
begin
  if rbMatters.Checked then
    ShowMatters
  else
    ShowLedgers;
end;

procedure TfrmCashRcp.rbLedgerClick(Sender: TObject);
begin
  if rbLedger.Checked then
    ShowLedgers
  else
    ShowMatters;
end;


procedure TfrmCashRcp.ShowMatters;
begin
  rbLedger.Checked := False;
  qryNaccounts.Close;
  qryNallocs.ParamByName('P_Nreceipt').AsInteger := qryReceipts.FieldByName('NRECEIPT').AsInteger;
  qryNallocs.Open;
  tvAllocations.DataController.DataSource := dsNallocs;
end;


procedure TfrmCashRcp.ShowLedgers;
begin
  // Set the allocation grid to display Nallocs
  qryNallocs.Close;
  qryNaccounts.ParamByName('P_Nreceipt').AsInteger := qryReceipts.FieldByName('NRECEIPT').AsInteger;
  qryNaccounts.Open;
  tvAllocations.DataController.DataSource := dsNaccounts;
end;


procedure TfrmCashRcp.btnLastMonthClick(Sender: TObject);
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


procedure TfrmCashRcp.qryReceiptsCalcFields(DataSet: TDataSet);
begin
  if qryReceipts.FieldByName('REVERSED').AsString = 'Y' then
  begin
    if qryReceipts.FieldByName('TYPE').AsString = 'RV' then
      qryReceipts.FieldByName('Clearance').AsString := 'Reversal'
    else
      qryReceipts.FieldByName('Clearance').AsString := 'Reversed';
  end
  else
  begin
    if (qryReceipts.FieldByName('CLEARED').AsString = 'N') and (qryReceipts.FieldByName('DCLEARDATE').AsString <> '') then
      qryReceipts.FieldByName('Clearance').AsString := FormatDateTime('ddddd', qryReceipts.FieldByName('DCLEARDATE').AsDateTime)
    else
      qryReceipts.FieldByName('Clearance').AsString := 'Cleared';
  end;
end;


procedure TfrmCashRcp.tbtnNewClick(Sender: TObject);
begin
  NewReceipt;
end;


procedure TfrmCashRcp.tbtnReverseClick(Sender: TObject);
var
   nret: integer;
begin
{
  Added 3.10.2002 GG

  Check trust balance before reversing trust receipts.
  Need to confirm trust account for each matter has sufficient trust funds
  For GL, don't yet know if we need to worry about it, because Trust amounts
  should never be allocated to GL accounts.
}

   If rbMatters.Checked then
   begin
      if (IsMatterArchived(qryNallocs.FieldByName('CODE').AsString)) then
         MsgErr('Receipts cannot be reversed for a matter that has been archived.')

      else if CheckTrustBalance then
      begin
         with TfrmReceiptReverse.Create(Self) do
         begin
            DisplayReceipt(integer(tvReceiptsNRECEIPT.EditValue));  // Self.qryReceipts.FieldByName('NReceipt').AsInteger);
            nret := ShowModal;
         end;

         if nRet = mrOk then
         begin
        // also need to reverse the cheque if trust transfer

            if (VarIsNull(tvReceiptsNCHEQUE.EditValue)) then //  Self.qryReceipts.FieldByName('NCheque').AsString <> '' then
               if MessageDlg('Do you also want to cancel the trust cheque',mtConfirmation,[mbYes,mbNo],0) = mrYes then
               begin
                  with TfrmChequeReverse.Create(Self) do
                     DisplayCheque(integer(tvReceiptsNCHEQUE.EditValue)); //  Self.qryReceipts.FieldByName('NCheque').AsInteger);
               end;
         end;

         qryReceipts.Close;
         qryReceipts.Open
      end;
   end;
end;

procedure TfrmCashRcp.tbtnPrintClick(Sender: TObject);
//var
//  loTqrCashReceiptsBook : TqrCashReceiptsBook;
begin
{  loTqrCashReceiptsBook := nil;

  try
    try
      loTqrCashReceiptsBook := GetReport;
      loTqrCashReceiptsBook.Print;
      MessageDlg('The report has been printed.', mtInformation, [mbOK], 0);

    finally
      FreeAndNil(loTqrCashReceiptsBook);
    end;    //  end try-finally

  except
    Raise;
  end;    //  end try-except      }
end;

procedure TfrmCashRcp.tbtnBarGraphClick(Sender: TObject);
begin
  ppReport2.Print;
end;

procedure TfrmCashRcp.qrBarGraphAfterPrint(Sender: TObject);
begin
  qryBarCheques.Close;
  qryBarReceipts.Close;
end;

procedure TfrmCashRcp.tbtnClearClick(Sender: TObject);
var
  iNreceipt : integer;
begin
  if qryReceipts.FieldByName('BANKED').AsString = 'Y' then
  begin
    if qryReceipts.FieldByName('CLEARED').AsString <> 'Y' then
    begin
      iNreceipt := qryReceipts.FieldByName('NRECEIPT').AsInteger;
      qryReceipts.Close;
      ReceiptClear(iNreceipt);
      MakeSQL;
      qryReceipts.Locate('NRECEIPT', iNreceipt, []);
    end
    else
      MsgErr('Receipt ' + qryReceipts.FieldByName('RCPTNO').AsString + ' has not yet been banked');
  end
  else
    MsgErr('Receipt ' + qryReceipts.FieldByName('RCPTNO').AsString + ' has not yet been banked');
end;


procedure TfrmCashRcp.mnuFilePrintChequeClick(Sender: TObject);
begin
   if not qryReceipts.IsEmpty then
   begin
      with TfrmReceiptPrint.Create(Self) do
      begin
         if not VarIsNull(tvReceiptsPRINTER.EditValue) then
            PrinterPath := tvReceiptsPRINTER.EditValue; //  Self.qryReceipts.FieldByName('PRINTER').AsString;
         if not VarIsNull(tvReceiptsNRECEIPT.EditValue) then
            PrintReceipt(tvReceiptsNRECEIPT.EditValue {Self.qryReceipts.FieldByName('NRECEIPT').AsInteger});
      end;
   end;
end;


procedure TfrmCashRcp.mnuFilePrintAllocationsClick(Sender: TObject);
var
   SelRec: integer;
   ARowIndex: integer;
   AReceiptList: string;
begin
   qryAllocPrint.Close;
   qryNAccountPrint.Close;
   if tvReceipts.Controller.SelectedRowCount > 1 then
   begin
      tvReceipts.DataController.BeginUpdate;
      for SelRec := 0 to tvReceipts.DataController.GetSelectedCount - 1 do
      begin
         ARowIndex := tvReceipts.DataController.GetSelectedRowIndex(SelRec);
         tvReceipts.ViewData.Records[ARowIndex].Focused := True;
         if AReceiptList <> '' then
            AReceiptList := AReceiptList + ',';
         AReceiptList := AReceiptList + tvReceiptsNRECEIPT.EditValue;
      end;
      tvReceipts.DataController.EndUpdate;
      AReceiptList := '('+AReceiptList+')';
      with qryReceiptPrint do
      begin
         close;
         SQL.Clear;
         SQL.Text := 'SELECT PRINTER, NRECEIPT, CREATED, TYPE, ACCT, RCPTNO, PAYOR, '+
                     'DRAWER, BANK, BRANCH, CHQNO, REVERSED, RVBY, DCLEARDATE, CCTYPE,'+
                     'BANKED, CLEARED, NTRANS, TRUST, SUFCHQ, DESCR, NBANKDEP, SYSTEM_DATE,'+
                     'PRINTED, NNAME, AMOUNT, NCHEQUE, WHO, RECEIPT_NO, TAKE_ON, '+
                     'AMOUNT AS AMOUNT1 '+
                     'FROM RECEIPT WHERE '+
                     'NRECEIPT in '+ AReceiptList;
      end;
      if rbMatters.Checked then
      begin
         plAllocPrint.DataSource :=  dsAllocPrint;
      end
      else if rbLedger.Checked then
      begin
         plAllocPrint.DataSource :=  dsNAccountPrint;
      end;
      rptAllocations.Print;
   end
   else
   begin
      with qryReceiptPrint do
      begin
         close;
         SQL.Clear;
         SQL.Text := 'SELECT PRINTER, NRECEIPT, CREATED, TYPE, ACCT, RCPTNO, PAYOR, '+
                     'DRAWER, BANK, BRANCH, CHQNO, REVERSED, RVBY, DCLEARDATE, CCTYPE,'+
                     'BANKED, CLEARED, NTRANS, TRUST, SUFCHQ, DESCR, NBANKDEP, SYSTEM_DATE,'+
                     'PRINTED, NNAME, AMOUNT, NCHEQUE, WHO, RECEIPT_NO, TAKE_ON, '+
                     'AMOUNT AS AMOUNT1 '+
                     'FROM RECEIPT WHERE '+
                     'NRECEIPT = '+ qryReceipts.FieldByName('nreceipt').AsString;
      end;

      qryAllocPrint.Close;
      qryNAccountPrint.Close;
      rptAllocations.CloseDataPipelines;

      if rbMatters.Checked then
      begin
         plAllocPrint.DataSource :=  dsAllocPrint;
      end
      else if rbLedger.Checked then
      begin
         plAllocPrint.DataSource :=  dsNAccountPrint;
      end;
      rptAllocations.ResolvePipelineReferences;
      rptAllocations.Print;
   end;
end;

procedure TfrmCashRcp.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCashRcp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryReceipts.Close;
  qryNAllocs.Close;
  qryNAccounts.Close;
  qryBarCheques.Close;
  qryBarReceipts.Close;
  qryTotal.Close;
  qryBanks.Close;

  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmCashRcp.mnuFilePrintAllChequesClick(Sender: TObject);
begin
  qryReceipts.First;
  while not qryReceipts.EOF do
  begin
    with TfrmReceiptPrint.Create(Self) do
      begin
        PrinterPath := Self.qryReceipts.FieldByName('PRINTER').AsString;
        PrintReceipt(Self.qryReceipts.FieldByName('NRECEIPT').AsInteger);
      end;
    qryReceipts.Next;
  end;
end;

procedure TfrmCashRcp.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);
   
  if dbgrReceipts.Font.Size <> dmAxiom.GridFont then
      dbgrReceipts.Font.Size := dmAxiom.GridFont;

   if dbgrAllocations.Font.Size <> dmAxiom.GridFont then
      dbgrAllocations.Font.Size := dmAxiom.GridFont;

  tbtnNew.Enabled := dmAxiom.Security.Receipt.Create;
//  mnuFileNew.Visible := dmAxiom.Security.Receipt.Create;
//  tbtnReverse.Enabled := dmAxiom.Security.Receipt.Reverse;
//  mnuFileReverse.Visible := dmAxiom.Security.Receipt.Reverse;
//  tbtnClear.Enabled := dmAxiom.Security.Receipt.Clear;
//  mnuFileClear.Visible := dmAxiom.Security.Receipt.Clear;

end;

procedure TfrmCashRcp.mnuFileClearClick(Sender: TObject);
begin
  tbtnClear.Click;
end;

procedure TfrmCashRcp.tbSearchChange(Sender: TObject);
begin
  if tbSearch.Text <> '' then
    qryReceipts.Locate('RCPTNO', tbSearch.Text, [loPartialKey]);
end;

procedure TfrmCashRcp.tbSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN : qryReceipts.Next;
    VK_UP : qryReceipts.Prior;
  end;
end;

procedure TfrmCashRcp.qryReceiptsBankDepsAfterScroll(DataSet: TDataSet);
begin
  if qryReceiptsBankDeps.FieldByName('PAYOR').AsString <> 'Bank Deposit' then
  begin
    if rbMatters.Checked then
    begin
      qryNallocs.Close;
      qryNallocs.ParamByName('P_Nreceipt').AsInteger := qryReceiptsBankDeps.FieldByName('NRECEIPT').AsInteger;
      qryNallocs.Open;
    end;
    if rbLedger.Checked then
    begin
      qryNaccounts.Close;
      qryNaccounts.ParamByName('P_Nreceipt').AsInteger := qryReceiptsBankDeps.FieldByName('NRECEIPT').AsInteger;
      qryNaccounts.Open;
    end;
  end
  else
  begin
    qryNallocs.Close;
    qryNallocs.ParamByName('P_Nreceipt').AsInteger := 0;
    qryNallocs.Open;
  end;
end;

procedure TfrmCashRcp.FormActivate(Sender: TObject);
var
  iNReceipt: integer;
begin
{   if pagCashbook.ActivePageIndex = 0 then
   begin
      iNReceipt := qryReceipts.FieldByName('NRECEIPT').AsInteger;
      MakeSQL;
      qryReceipts.Locate('NRECEIPT', iNReceipt, []);
   end;}
end;

procedure TfrmCashRcp.tbChqnoToEnter(Sender: TObject);
begin
  if tbChqnoFrom.Text <> '' then
  begin
    tbChqnoTo.Text := tbChqnoFrom.Text;
    tbChqnoTo.SelectAll;
  end;
end;

function TfrmCashRcp.CheckTrustBalance: Boolean;
{
 Check the trust balance.

 Return True if this is not a trust receipt, or if the user gives the correct password.
 Return False if the user has not got the right to overdraw trust, or if they cancel
 the reversal, or they don't give the correct password.
}
const
  MATTER = 'Matter';
  MATTERS = 'Matters';
var
  cTrust: Currency;
  TrustOverdraw: Boolean;
  sMatters, sMatterNums: string;

  LTries: Integer;
  LEntered: String;
  LMsg,
  LTrustODPasswd: String;
begin
  if Self.qryReceipts.FieldByName('TRUST').AsString = 'T' then
  begin
    result:= False;

    { scroll thru nAllocs query comparing matter trust allocations against
     the matter trust balances.  If any of them will end up overdrawing the
     trust account, get the user to enter the trust overdraw password.

     The actual entry of the matter allocations needs to happen when the
     reversal is processed.  See ReceiptReverse.pas for details.
    }
    TrustOverdraw:= False;
    sMatters:= MATTER;
    sMatterNums:= '';
    qryNallocs.First;
    while not qryNallocs.EOF do
    begin
//      cTrust:= TableCurrency('MATTER', 'NMATTER', qryNAllocs.FieldByName('NMATTER').AsString, 'TRUST_BAL');
     if qryNAllocs.FieldByName('CLEARED').AsString = 'Y' then
       cTrust:= ClearTrust(qryNAllocs.FieldByName('CODE').AsString)
     else
       cTrust:= UnClearedTrust(qryNAllocs.FieldByName('CODE').AsString);

      if (qryNAllocs.FieldByName('AMOUNT').AsCurrency > cTrust) then
      begin
        TrustOverdraw:= True;
        if sMatterNums <> '' then
        begin
          if sMatters = MATTER then
            sMatters:= MATTERS;
          sMatterNums:= sMatterNums + ', '
        end;
        sMatterNums:= sMatterNums + qryNAllocs.FieldByName('NMATTER').AsString;
      end;
      qryNallocs.Next
    end;

    if TrustOverdraw then
    begin
      // Does this person have enough access to overdraw trust?
//      if TableInteger('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ACCESSLEVEL') = 0 then
      if dmAxiom.Security.Trust.PasswdOverdraw then
      begin
        LTries := 0;
        while(LTries < 3) do
        begin
          LEntered := '';
          LMsg := Format('This reversal will result in overdrawn trust funds for %s %s.',
                           [sMatters, sMatterNums]);
          if(InputQueryPassword(CN_PROGRAM_NAME, LMsg + #13#10'To continue, please enter the password',LEntered)) then
          begin
            LTrustODPasswd := SystemString('TRUST_OD_PASSWD');
            if LTrustODPasswd = '' then
               LTrustODPasswd := C_OVERDRAWPASSWORD;
            if(LEntered = LTrustODPasswd) then
            begin
              result:= True;
              Break
            end else
            begin
              Inc(LTries)
            end
          end
          else
          begin
            break;
          end
        end;
        if LTries = 3 then
          MessageDlg('Incorrect password given.  You cannot reverse this receipt.', mtWarning, [mbOK], 0);
      end else
        MessageDlg(Format('Trust would have overdrawn on %s %s', [sMatters, sMatterNums]) + #13 + #13 + 'You do not have sufficient access to overdraw Trust Accounts', mtError, [mbOK], 0);
    end
    else
      // trust will not overdraw - calling routine can continue processing
      Result:= True
  end
  else
    // not a trust cheque - calling routine can continue processing
    result:= True
end;

procedure TfrmCashRcp.FormResize(Sender: TObject);
var
  ClientWidthRemaining: Integer;
begin
  // set the widths of the cheques grid columns
{  ClientWidthRemaining:= dbgrCheques.ClientWidth -
                         dbgrCheques.Columns.Items[0].Width - 1 -
                         dbgrCheques.Columns.Items[1].Width - 1 -
                         dbgrCheques.Columns.Items[2].Width - 1 -
                         dbgrCheques.Columns.Items[5].Width - 1 -
                         dbgrCheques.Columns.Items[6].Width - 1;
  dbgrCheques.Columns.Items[3].Width:= (ClientWidthRemaining - 2) div 2;
  dbgrCheques.Columns.Items[4].Width:= ((ClientWidthRemaining - 2) div 2) - 1;

  // set the widths of the allocations grid columns
  ClientWidthRemaining:= dbgrAllocations.ClientWidth -
                         dbgrAllocations.Columns.Items[0].Width - 1 -
                         dbgrAllocations.Columns.Items[2].Width - 1;
  dbgrAllocations.Columns.Items[1].Width:= ClientWidthRemaining - 2;  }
end;

{function TfrmCashRcp.GetReport : TqrCashReceiptsBook;
//var
//  loTqrCashReceiptsBook : TqrCashReceiptsBook;
begin
{  loTqrCashReceiptsBook := nil;

  try
    loTqrCashReceiptsBook := TqrCashReceiptsBook.Create(self);
    loTqrCashReceiptsBook.Session := dmAxiom.uniInsight;

    if (chkDateFrom.Checked) then
      loTqrCashReceiptsBook.FromDate := Trunc(dtpDateFrom.Date)
    else
      loTqrCashReceiptsBook.FromDate := 0;

    if (chkDateTo.Checked) then
      loTqrCashReceiptsBook.ToDate := Trunc(dtpDateTo.Date)
    else
      loTqrCashReceiptsBook.ToDate := 0;

    loTqrCashReceiptsBook.Bank := cbBank.Text;
    loTqrCashReceiptsBook.Where := FWhere;
    loTqrCashReceiptsBook.Receipt := qryReceipts.FieldByName('NRECEIPT').AsInteger;
    loTqrCashReceiptsBook.SQLWhere := sSQLWhere;
    loTqrCashReceiptsBook.Title := MakeTitle;
    loTqrCashReceiptsBook.GetData;

    Result := loTqrCashReceiptsBook;

  except
    begin
      FreeAndNil(loTqrCashReceiptsBook);
      Raise;

    end;

  end;    //  end try-except
end;                            }

procedure TfrmCashRcp.ToolButton2Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCashRcp.tvReceiptsCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if tvReceipts.Controller.FocusedRowIndex = 0 then
      AfterScroll;
end;

procedure TfrmCashRcp.tvReceiptsDblClick(Sender: TObject);
begin
   if bShiftState then
   begin
      with TfrmResetTransaction.Create(Self) do
      begin
        sType := 'RECEIPT';
        lblBank.Caption := qryReceipts.FieldbyName('ACCT').AsString;
        lblNReference.Caption := qryReceipts.FieldbyName('NRECEIPT').AsString;
        lblDetails.Caption := qryReceipts.FieldbyName('PAYOR').AsString;
        lblAmount.Caption := CurrtoStrF(qryReceipts.FieldbyName('AMOUNT').AsCurrency, ffCurrency, 2);
        ShowModal;
      end;
      qryReceipts.Close;
      qryReceipts.Open;
  end;
  bShiftState := false;
end;

procedure TfrmCashRcp.tvReceiptsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Shift = [ssCtrl, ssAlt] then
      bShiftState := true
   else
      bShiftState := false;
end;

procedure TfrmCashRcp.tvChequesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
   AColumn2: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('REVERSED');
   AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('RCPTNO');
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

procedure TfrmCashRcp.tbtnPrevCashbookClick(Sender: TObject);
//var
//  loTqrCashReceiptsBook : TqrCashReceiptsBook;
var
   lsTrustasOffice: string;
begin
   try
      lsTrustasOffice := SystemString('TRUST_AS_OFFICE');
      qryReceiptsBankDepsRpt.Close;
      qryReceiptsBankDepsRpt.SQL.Clear;
      qryReceiptsBankDepsRpt.SQL.Text := qryReceipts.SQL.Text;

      qryReceiptsBankDepsRpt.ParamByName('trustasoffice').AsString := lsTrustasOffice;

      if (cbBank.Text <> '') then
      begin
         if IsTrustAccount(cbBank.Text) = True then
         begin
            qryReceiptsBankDepsRpt.ParamByName('trust').AsString := 'T';
         end;
      end;

      if chkDateFrom.Checked then
         qryReceiptsBankDepsRpt.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date)
      else
         qryReceiptsBankDepsRpt.ParamByName('P_DateFrom').AsDate := 0;
      if chkDateTo.Checked then
         qryReceiptsBankDepsRpt.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1
      else
         qryReceiptsBankDepsRpt.ParamByName('P_DateTo').AsDate := Now()+1;

      rptCashReceiptsBook.Print;
   except
       Raise;
   end;

{  loTqrCashReceiptsBook := nil;

  try
    try
      loTqrCashReceiptsBook := GetReport;
      loTqrCashReceiptsBook.PreviewModal;

    finally
      FreeAndNil(loTqrCashReceiptsBook);

    end;    //  end try-finally
  except
    Raise;
  end;    //  end try-except    }

end;

procedure TfrmCashRcp.dxBarButton3Click(Sender: TObject);
var
   frmChequeRenumber: TfrmChequeRenumber;
begin
   frmChequeRenumber := TfrmChequeRenumber.Create(nil);
   frmChequeRenumber.Printer := tvReceipts.DataController.GetValue(tvReceipts.DataController.FocusedRowIndex, tvReceiptsPRINTER.Index);
   frmChequeRenumber.ChequeNo := tvReceipts.DataController.GetValue(tvReceipts.DataController.FocusedRowIndex, tvReceiptsRCPTNO.Index);
   frmChequeRenumber.ChequeDate := FormatDateTime('dd/mm/yyyy',tvReceipts.DataController.GetValue(tvReceipts.DataController.FocusedRowIndex, tvReceiptsCREATED.Index));
   frmChequeRenumber.NCheque := tvReceipts.DataController.GetValue(tvReceipts.DataController.FocusedRowIndex, tvReceiptsNRECEIPT.Index);
   frmChequeRenumber.FromCheque := False;
   if frmChequeRenumber.ShowModal() = mrOk then
   begin;
      qryReceipts.Close;
      qryReceipts.Open;
   end;
   frmChequeRenumber.Free;

end;

procedure TfrmCashRcp.lblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
   Text := SystemString('COMPANY');
end;

procedure TfrmCashRcp.ppLabel2Print(Sender: TObject);
begin
   ppLabel2.Text := MakeTitle;
end;

procedure TfrmCashRcp.qryReceiptsBankDepsRptAfterScroll(DataSet: TDataSet);
begin
  qryNallocsRpt.Close;
  qryNallocsRpt.ParamByName('P_Nreceipt').AsInteger := Dataset.FieldByName('NRECEIPT').AsInteger;
  qryNallocsRpt.Open;

  qryBankedDeposit.Close;
  qryBankedDeposit.ParamByName('NBANKDEP').AsInteger := Dataset.FieldByName('NBANKDEP').AsInteger;
  qryBankedDeposit.ParamByName('ACCT').AsString := Dataset.FieldByName('ACCT').AsString;
  qryBankedDeposit.Open;
end;

procedure TfrmCashRcp.ppVariable2Print(Sender: TObject);
var
   cBanked: Currency;
begin
   cBanked := currency(ppReceipts.Value) - currency(ppDBCalc2.Value);
   ppVariable2.AsCurrency := cBanked;
end;

procedure TfrmCashRcp.dxBarButton1Click(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrReceipts);
   end;

end;

procedure TfrmCashRcp.ppReport2BeforePrint(Sender: TObject);
begin
//  qrlblBarGraphTitle.Caption := MakeTitle;
  with qryBarCheques do
  begin
    Close;
    SQL.Text := 'SELECT CREATED, SUM(AMOUNT) AS TotalChqs FROM CHEQUE WHERE REVERSED <> ''Y'' AND CREATED >= :P_DateFrom AND CREATED < :P_DateTo ' + sSQLWhere + ' GROUP BY CREATED';
    ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    Open;
  end;
  with qryBarReceipts do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CREATED, SUM(AMOUNT) AS TotalRcpts FROM RECEIPT WHERE REVERSED <> ''Y'' AND CREATED >= :P_DateFrom AND CREATED < :P_DateTo ' + sSQLWhere + ' GROUP BY CREATED');
    ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    Open;
  end;
end;

end.
