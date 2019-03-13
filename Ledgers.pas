unit Ledgers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Grids, DBGrids, Menus, Buttons,
  ExtCtrls, DBCtrls, DateChangeButton, ToolWin, ImgList,
  MemDS, OracleUniProvider, Uni, DBAccess, receiptInfo, JournalSplitFrm, Budgets,
  LedgersRptDlg, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, dxBar,
  cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxButtons, cxContainer, cxGroupBox, cxPC,
  cxCurrencyEdit, ppCtrls, ppPrnabl, ppClass, ppVar, ppDB, ppBands,
  ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppViewr,
  cxDropDownEdit, cxButtonEdit, dxBarExtDBItems, GLComponentFilterCxGroup,
  cxCheckBox, cxDBLookupComboBox, cxGridExportLink, ppStrtch, ppRegion,
  ppMemo, ppModule, raCodMod, cxLookAndFeels, ppFileUtils, ppIniStorage,
  ppParameter, cxPCdxBarPopupMenu, ppDesignLayer, cxCalendar, daDataView,
  daQueryDataView, daUniDAC, daDataModule, dxCore, cxNavigator,
  dxGDIPlusClasses, dxDPIAwareUtils, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog;

const
  isCASHBOOK = 0;
  isFILTER = 1;
  isPRESENT = 2;

type
  TfrmLedgers = class(TForm)
    dsCharts: TUniDataSource;
    sbarInfo: TStatusBar;
    qryCharts: TUniQuery;
    qryNaccounts: TUniQuery;
    dsNaccounts: TUniDataSource;
    qryChartDelete: TUniQuery;
    qryTransitems: TUniQuery;
    ilstToolbar: TImageList;
    qryTmp: TUniQuery;
    qryChartBalance: TUniQuery;
    qryReceiptInsert: TUniQuery;
    qryChequeInsert: TUniQuery;
    pagCashbook: TcxPageControl;
    tabLedger: TcxTabSheet;
    tabFilter: TcxTabSheet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGroupBox1: TcxGroupBox;
    Label3: TLabel;
    tbTypes: TEdit;
    Label14: TLabel;
    tbReportLevel: TEdit;
    Label8: TLabel;
    Label12: TLabel;
    chkNonzero: TCheckBox;
    tbColumn: TEdit;
    tbChartDesc: TEdit;
    cxGroupBox2: TcxGroupBox;
    Label11: TLabel;
    dtpdummyfrom: TDateTimePicker;
    Label15: TLabel;
    dtpdummyto: TDateTimePicker;
    dummydt: TDateChangeButton;
    DateChangeButton10: TDateChangeButton;
    DateChangeButton9: TDateChangeButton;
    DateChangeButton11: TDateChangeButton;
    btnClearAll: TcxButton;
    grpTrans: TcxGroupBox;
    Label1: TLabel;
    dtpDateFrom: TDateTimePicker;
    Label2: TLabel;
    dtpDateTo: TDateTimePicker;
    DateChangeButton1: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    lblAmountFrom: TLabel;
    tbTransAmtFrom: TEdit;
    Label5: TLabel;
    tbTransAmtTo: TEdit;
    Label4: TLabel;
    tbTransDesc: TEdit;
    Panel1: TPanel;
    Label17: TLabel;
    grdTransactions: TcxGrid;
    tvTransactions: TcxGridDBTableView;
    tvTransactionsCREATED: TcxGridDBColumn;
    tvTransactionsType: TcxGridDBColumn;
    tvTransactionsREFNO: TcxGridDBColumn;
    tvTransactionsDESCR: TcxGridDBColumn;
    tvTransactionsCREDITORCODE: TcxGridDBColumn;
    tvTransactionsDebit: TcxGridDBColumn;
    tvTransactionsCredit: TcxGridDBColumn;
    grdTransactionsLevel1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label16: TLabel;
    grdLedgers: TcxGrid;
    tvLedgers: TcxGridDBTableView;
    tvLedgersCODE: TcxGridDBColumn;
    tvLedgersREPORT_DESC: TcxGridDBColumn;
    tvLedgersTYPEDESCR: TcxGridDBColumn;
    tvLedgersBANK: TcxGridDBColumn;
    tvLedgersDEFAULT_TAXCODE: TcxGridDBColumn;
    tvLedgersOIFDEFAULTCODE: TcxGridDBColumn;
    tvLedgersCHARTTYPE: TcxGridDBColumn;
    grdLedgersLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Label13: TLabel;
    tbLedgerSearch: TEdit;
    dxBarManager1: TdxBarManager;
    mnuFileNewLedger: TdxBarButton;
    mnuFileEdit: TdxBarButton;
    mnuFileDelete: TdxBarButton;
    mnuFileJournal: TdxBarButton;
    mnuFilePrintAllCheques: TdxBarButton;
    PrintLedgerBalances1: TdxBarButton;
    mnuFilePrintAllocations: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuFile: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    btnBudget: TdxBarButton;
    dxBarButton2: TdxBarButton;
    tbtnJournalSplit: TdxBarButton;
    tvLedgersACCOUNTVALUE: TcxGridDBColumn;
    rptGeneralLedger: TppReport;
    plGeneralLedger: TppDBPipeline;
    qryChartReport: TUniQuery;
    dsChartReport: TUniDataSource;
    dxBarButton3: TdxBarButton;
    qryBudgetTotal: TUniQuery;
    dxBarButton4: TdxBarButton;
    dxBarLookupCombo1: TdxBarLookupCombo;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxmunAllocation: TdxBarButton;
    glComponentFilter: TGLComponentFilterCxGroup;
    Label6: TLabel;
    tbReportSearch: TEdit;
    tmrSearch: TTimer;
    Label7: TLabel;
    tbReference: TEdit;
    chMovementOnly: TCheckBox;
    chkShowBudgets: TCheckBox;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText5: TppDBText;
    pmCreateCheque: TdxBarPopupMenu;
    btnXLSExport: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton6: TdxBarButton;
    OpenDialog: TOpenDialog;
    dsGeneralLedger: TUniDataSource;
    chkGroupBy: TcxCheckBox;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppVariable3: TppVariable;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppDBText9: TppDBText;
    ppLine3: TppLine;
    ppRegion1: TppRegion;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine2: TppLine;
    ppMemo1: TppMemo;
    ppDBText15: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    lblMovementDebit: TppVariable;
    lblMovementCredit: TppVariable;
    ppLine5: TppLine;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel9: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    raCodeModule1: TraCodeModule;
    daDataModule1: TdaDataModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    tvLedgersLKEY: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure pagCashbook1Change(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure qryChartsAfterScroll(DataSet: TDataSet);
    procedure qryChartsCalcFields(DataSet: TDataSet);
    procedure mnuFilePrintAllChequesClick(Sender: TObject);
    procedure qryNaccountsCalcFields(DataSet: TDataSet);
    procedure mnuFilePrintAllocationsClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure mnuFileNewLedgerClick(Sender: TObject);
{    procedure rptChartBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure rptTransBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);      }
    procedure tbLedgerSearchChange(Sender: TObject);
    procedure tbLedgerSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryTransitemsCalcFields(DataSet: TDataSet);
    procedure tbtnJournalClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure mnuFileDeleteClick(Sender: TObject);
    procedure mnuFileJournalClick(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure tbtnBudgetClick(Sender: TObject);
    procedure tbtnEditClick(Sender: TObject);
    procedure mnuFileEditClick(Sender: TObject);
    procedure tbtnLedgerTypesClick(Sender: TObject);
    procedure tbLedgerToEnter(Sender: TObject);
    procedure PrintLedgerBalances1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CreateReceiptForTransaction1Click(Sender: TObject);
    procedure CreateChequeForTransaction1Click(Sender: TObject);
    procedure tbtnJournalSplitClick(Sender: TObject);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure qrlblCloseDebitPrint(sender: TObject; var Value: String);
    procedure qrlblCloseCreditPrint(sender: TObject; var Value: String);
    procedure btnBudgetClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure tvLedgersColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure dxmunAllocationClick(Sender: TObject);
    procedure tbReportSearchChange(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure btnXLSExportClick(Sender: TObject);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDBText6Print(Sender: TObject);
    procedure ppDBText7Print(Sender: TObject);
    procedure chkGroupByClick(Sender: TObject);
    procedure tvLedgersCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    TotalCredits   : Currency;
    TotalDebits    : Currency;
    OpeningBalance : Currency;
    Movement       : Currency;
    Balance        : Currency;
    fcLocalCredits : Currency;
    fcLocalDebits  : Currency;
    LastChart      : String;
    fsReportDate   : String;
    bPrintDetail   : Boolean;
//    FCode          : String;
    iFinYearStart  : Integer;

    procedure MakeSQL;
    procedure OnLedgersDlgClose(Sender : TObject);

    function MakeTitle : string;
    function MakeTransTitle : string;
    function SQLWhere(bFromReport: boolean = False): string;

    function CanJournalSplit : Boolean;
    function IsCreatedDate   : Boolean;

    procedure ResetButtons(AValue: boolean);
    procedure RefreshTransactions;

  public
    { Public declarations }
  end;

implementation

uses
  Receipt, MiscFunc, LedgerBudget, LedgerNew, Journal, AxiomData, ChartTypes,
  ExpenseAllocation,FinYearStartReg;

{$R *.DFM}

var
   sOrderBy : string;

procedure TfrmLedgers.FormShow(Sender: TObject);
var
  wYear, wMonth, wDay : Word;
begin
   if pagCashbook.ActivePage = tabLedger then
      tbLedgerSearch.SetFocus;
   if pagCashbook.ActivePage = tabFilter then
   begin
      tbTypes.SetFocus;
      dummydt.Click;
      dtpDateTo.Date :=  Int(Now);
      DecodeDate(Now, wYear, wMonth, wDay);
      dtpDateFrom.Date := (Int(Now) - wDay + 1);
   end;
   sOrderBy := '';
//   dummydt.Click;
end;

function TfrmLedgers.SQLWhere(bFromReport: boolean): string;
var
  iCtr
  , RecIdx : integer;
  sSQLWhere,sInnerQuery : string;
  sOR
  ,sLedgerCode
  ,sLedgerCodeList : string;
  sChartWhere : String;
  ARowInfo: TcxRowInfo;
begin
  // Build the SQL Filter query for the Charts
  sSQLWhere := '';

{  sSQLWhere := ' AND add_months(to_date(''01-''||nvl(b.month,TO_CHAR(SYSDATE,''MM''))||''-''||nvl(b.year, CAST(TO_CHAR(SYSDATE,''YYYY'') AS INTEGER)), ''DD-MM-YYYY''),decode(CAST(TO_CHAR(SYSDATE,''MM'') AS INTEGER),1,5,2,4,3,3,4,2,5,1,6)) between '+
               ' to_date(''01-07-'' || (TO_CHAR(CAST(TO_CHAR(SYSDATE,''YYYY'') AS INTEGER)-1)),''DD-MM-YYYY'')  AND ' +
               ' to_date(''30-06-'' || TO_CHAR(SYSDATE,''YYYY''),''DD-MM-YYYY'')' ;
 }
  if chkNonzero.State = cbChecked then
    sSQLWhere := sSQLWhere + ' AND SUM(T.AMOUNT) <> 0';

  if Length(tbTypes.Text) > 0 then
  begin
    sOR := '';
    sSQLWhere := sSQLWhere + ' AND (';
    for iCtr := 1 to Length(tbTypes.Text) do
    begin
      sSQLWhere := sSQLWhere + sOR + '(C.TYPE = ''' + Uppercase(Copy(tbTypes.Text, iCtr, 1)) + ''')';
      sOR := ' OR '
    end;
    sSQLWhere := sSQLWhere + ')';
  end;

  {rb. change the code filter to component_code_display}

  sChartWhere := glComponentFilter.getChartWhereClause('C');
  if sChartWhere <> '' then
        sSQLWhere := sSQLWhere + ' AND ' + sChartWhere;

  //if tbLedgerFrom.Text <> '' then
  //  sSQLWhere := sSQLWhere + ' AND nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) >= ' + QuotedStr(tbLedgerFrom.Text);
  //if tbLedgerTo.Text <> '' then
  //  sSQLWhere := sSQLWhere + ' AND nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) <= ' + QuotedStr(tbLedgerTo.Text);
  if tbChartDesc.Text <> '' then
    sSQLWhere := sSQLWhere + ' AND UPPER(C.REPORT_DESC) LIKE ' + QuotedStr('%' + Uppercase(tbChartDesc.Text) + '%');
  if tbColumn.Text <> '' then
    sSQLWhere := sSQLWhere + ' AND C.COL = ' + tbColumn.Text;
  if tbReportLevel.Text <> '' then
    sSQLWhere := sSQLWhere + ' AND C.REPORT_LEVEL <= ' + tbReportLevel.Text;

  if (tbLedgerSearch.Text <> '') then
  begin
     sSQLWhere := sSQLWhere + ' AND contains(c.dummy,' + QuotedStr('%'+tbLedgerSearch.Text+'%') + ',1) > 0';    //sSQLWhere + ' AND C.COMPONENT_CODE_DISPLAY like ''%' + tbLedgerSearch.Text + '%''';
  end
  else
  if bFromReport then
  begin
     if tvLedgers.DataController.GetSelectedCount > 0 then
     begin
         for iCtr := 0 to tvLedgers.DataController.GetSelectedCount - 1 do
         begin
            RecIdx := tvLedgers.DataController.GetSelectedRowIndex(iCtr);
            ARowInfo := tvLedgers.DataController.GetRowInfo(RecIdx);
            sLedgerCode :=  tvLedgers.DataController.Values[ARowInfo.RecordIndex, tvLedgersCODE.Index];
            if sLedgerCodeList <> '' then
               sLedgerCodeList := sLedgerCodeList + ',';
            sLedgerCodeList := sLedgerCodeList + '%'+sLedgerCode+'%';
         end;
         if (tbLedgerSearch.Text <> '') then
            sSQLWhere := sSQLWhere + ' AND contains(c.dummy,' + QuotedStr(sLedgerCodeList) + ',1) > 0';
     end;
  end;

  if chMovementOnly.Checked then
  begin
     sInnerQuery := ' select * from transitem t ' +
                    ' where t.chart = c.code ' +
                    ' and t.acct = c.bank ' +
                    ' and CREATED >= :P_DateFrom AND CREATED < :P_DateTo';
     if tbTransDesc.Text <> '' then
             sInnerQuery := sInnerQuery  + ' AND DESCR LIKE ' + QuotedStr('%' + tbTransDesc.Text + '%');
     if tbTransAmtFrom.Text <> '' then
             sInnerQuery := sInnerQuery + ' AND AMOUNT >= ' + tbTransAmtFrom.Text;
     if tbTransAmtTo.Text <> '' then
             sInnerQuery := sInnerQuery  + ' AND AMOUNT <= ' + tbTransAmtTo.Text;
     if tbReference.Text <> '' then
             sInnerQuery := sInnerQuery  + ' AND REFNO = ' + QuotedStr(tbReference.Text);

     sSQLWhere := sSQLWhere + ' AND EXISTS (' + sInnerQuery + ')';
  end;

  SQLWhere := sSQLWhere;
end;


procedure TfrmLedgers.MakeSQL;
var
   s: string;
begin
  Screen.Cursor := crHourGlass;
  if qryNaccounts.Active then
      qryNaccounts.Close;

  with qryChartBalance do
  begin
    // Set these up so we don't have to do it in OnCalcFields
    ParamByName('Entity').AsString := dmAxiom.Entity;
    ParamByName('DateFrom').AsDateTime := Trunc(dtpDateFrom.Date);
    ParamByName('DateTo').AsDateTime := Trunc(dtpDateTo.Date) + 1;
  end;

  {rb. change the code component_code_display}

  with qryCharts do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CT.REPORTTYPE,CT.DESCR AS TYPEDESCR, C.BANK AS BANK');
    SQL.Add('     , nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) AS CODE,C.CODE as LKEY, C.TYPE AS TYPE');
    SQL.Add('     , C.REPORT_DESC AS REPORT_DESC');
    SQL.Add('     , C.ADDTO AS ADDTO');
    SQL.Add('     , C.IS_JOURNAL_SPLIT');
//    SQL.Add('     , nvl(bal.amount,0)  AS BALANCE');
//    SQL.Add('     ,decode(instr(bal.amount,''-''),''0'',bal.amount,''0'') as credit ');
//    SQL.Add('     ,decode(instr(bal.amount,''-''),''0'',''0'',bal.amount*-1) as debit ');
    SQL.Add('     ,DECODE(TRIM(C.OIFDEFAULTCODE),''O'',''Operating'',''I'',''Investing'',''F'',''Financing'',NULL) AS OIFDEFAULTCODE ');
    SQL.Add('     ,DECODE(TRIM(C.CHARTTYPE),''DISB'', ''Disbursement Control'', ''DEBT'', ''Debtor Control'', ''GSTINP'' , ''GST Input Control'',''GSTOUT'',''GST Output Control'', ''CRED'', ''Creditor Control'', ''BANK'',');
    SQL.Add('     ''Bank Control'', ''FEE'' , ''Fee Account'', ''GEN'' , ''General'',''SUND'',''Sundry Account'', NULL) AS CHARTTYPE ');
//    SQL.Add('     ,NVL(budget,0) AS ACCOUNTVALUE');
    SQL.Add('     ,nvl(b.ACCOUNTVALUE,0) AS ACCOUNTVALUE');
  {
  Code Added 13.12.2002 GG

  TChartTypeCodes: array[0..8] of string = ('GSTINP', 'GSTOUT', 'CRED', 'BANK', 'FEE', 'SUND');
  TChartTypeDescr: array[0..8] of string = ('GST Input Control', 'GST Output Control', 'Creditor Control', 'Bank Control', 'Fee Account', 'Sundry Account');

  Retrieve the Default Taxcode for this account. }
    SQL.Add('     , C.DEFAULT_TAXCODE AS DEFAULT_TAXCODE, C.CODE AS CODE_IDX');
    SQL.Add('FROM CHART C, CHARTTYPE CT');
    SQL.Add(', (select sum(accountvalue) as accountvalue ,accountcode, entity  from budget where financial_year = get_fin_year(sysdate) group by entity, accountcode ) B');
//    SQL.Add('FROM CHART C, CHARTTYPE CT,');
//    SQL.Add('(select sum(amount) amount ,chart from transitem where trunc(created) >= :DateFrom and trunc(created) < :DateTo and acct = ''' + dmAxiom.Entity + ''' group by chart) bal');
    SQL.Add('WHERE C.BANK = ''' + dmAxiom.Entity + '''');
    SQL.Add('  AND C.TYPE = CT.CODE');
    SQL.Add('  AND C.CODE = B.ACCOUNTCODE(+)');
    SQL.Add('  AND C.BANK = B.ENTITY(+)');
//    SQL.Add('  AND C.CODE = BAL.CHART (+)');

    SQL.Add(SQLWhere);
    SQL.Add('group by CT.REPORTTYPE,CT.DESCR, C.BANK , nvl(C.COMPONENT_CODE_DISPLAY,C.CODE),C.CODE, C.TYPE, C.REPORT_DESC, C.ADDTO, C.IS_JOURNAL_SPLIT '+
	         ',DECODE(TRIM(C.OIFDEFAULTCODE),''O'',''Operating'',''I'',''Investing'',''F'',''Financing'',NULL) '+
	         //',DECODE(TRIM(C.CHARTTYPE),''DISB'', ''Disbursement Control'', ''DEBT'', ''Debtor Control'', ''GST'' , ''Bank Control'', ''CRED'', ''GST Control'', ''BANK'', ''Fee Control'', ''FEE'', ''Creditor Control'', ''GEN'', ''General'', NULL) '+
                 ',DECODE(TRIM(C.CHARTTYPE),''DISB'', ''Disbursement Control'', ''DEBT'', ''Debtor Control'', ''GSTINP'' , ''GST Input Control'',''GSTOUT'',''GST Output Control'', ''CRED'', ''Creditor Control'', ''BANK'',' +
                 '''Bank Control'', ''FEE'' , ''Fee Account'', ''GEN'' , ''General'',''SUND'',''Sundry Account'', NULL) ' +
            ', C.DEFAULT_TAXCODE, b.accountvalue ' );
//	         ', C.DEFAULT_TAXCODE, nvl(b.ACCOUNTVALUE,0), C.CODE ' );
    if sOrderBy = '' then
      SQL.Add('ORDER BY nvl(C.COMPONENT_CODE_DISPLAY,C.CODE)')
    else
      SQL.Add( sOrderBy );
    s := SQL.Text;

    if chMovementOnly.Checked then
    begin
        qryCharts.ParamByName('P_DateFrom').AsDateTime := Trunc(dtpDateFrom.Date);
        qryCharts.ParamByName('P_DateTo').AsDateTime := Trunc(dtpDateTo.Date) + 1;
    end;

    if (dmAxiom.runningide) then
          qryCharts.SQL.SaveToFile('C:\tmp\qryCharts.sql');

    qryCharts.Open;
  end;
  Screen.Cursor := crDefault;
  //C.REPORT_LEVEL AS REPORT_LEVEL,
  //, C.SUBLEDGERS as SUBLEDGERS
end;


function TfrmLedgers.MakeTitle : string;
var
  sTitle, sComma : string;
begin
  // Build the Title for the Reports
  sTitle := sTitle + sComma + 'For Entity ' + dmAxiom.EntityName + ' (' + dmAxiom.Entity + ') ';
  sComma := ', ';

  if tbTypes.Text <> '' then
  begin
    sTitle := sTitle + 'for Chart Types ' + tbTypes.Text;
    sComma := ', ';
  end;
  //if tbLedgerFrom.Text <> '' then
  //begin
  //  sTitle := sTitle + sComma + 'for Ledgers from ' + tbLedgerFrom.Text;
  //  sComma := ', ';
  //end;
  //if tbLedgerTo.Text <> '' then
  //begin
  //  if tbLedgerFrom.Text <> '' then
  //    sTitle := sTitle + ' to ' + tbLedgerTo.Text
  //  else
  //    sTitle := sTitle + sComma + 'for Ledgers to ' + tbLedgerTo.Text;
  //  sComma := ', ';
  //end;
  if tbChartDesc.Text <> '' then
  begin
    sTitle := sTitle + sComma + 'for description like ' + tbChartDesc.Text;
    sComma := ', ';
  end;
  if tbColumn.Text <> '' then
  begin
    sTitle := sTitle + sComma + 'for column ' + tbColumn.Text;
    sComma := ', ';
  end;
  if chkNonzero.State = cbChecked then
  begin
    sTitle := sTitle + sComma + 'excluding zero balances';
    sComma := ', ';
  end;

  MakeTitle := sTitle;
end;


function TfrmLedgers.MakeTransTitle : string;
var
  sTitle, sComma : string;
begin
  sTitle := 'for the period ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date);
  sComma := ', ';

  if tbTransDesc.Text <> '' then
  begin
    sTitle := sTitle + sComma + 'where transaction description is like ' + tbTransDesc.Text;
    sComma := ', ';
  end;
  if tbTransAmtFrom.Text <> '' then
  begin
    sTitle := sTitle + sComma + 'for Amount >= ' + tbTransAmtFrom.Text;
    sComma := ', ';
  end;
  if tbTransAmtTo.Text <> '' then
  begin
    sTitle := sTitle + sComma + 'for Amount <= ' + tbTransAmtTo.Text;
    sComma := ', ';
  end;

  MakeTransTitle := sTitle
end;


procedure TfrmLedgers.pagCashbook1Change(Sender: TObject);
begin
  tbLedgerSearch.Text := '';
  tbReportSearch.Text := '';
  ResetButtons(False);
  case pagCashbook.ActivePage.TabIndex of
    isCASHBOOK: // Back to the Grid page
    begin
      qryCharts.AfterScroll := nil;
      MakeSQL;
      qryCharts.AfterScroll := qryChartsAfterScroll;
      tbLedgerSearch.SetFocus;
      ResetButtons(True);
    end;
  end;
end;

procedure TfrmLedgers.btnClearAllClick(Sender: TObject);
begin
  tbTypes.Text := '';
  //tbLedgerFrom.Text := '';
  //tbLedgerTo.Text := '';
  tbChartDesc.Text := '';
  tbTransAmtFrom.Text := '';
  tbTransAmtTo.Text := '';
  tbTransDesc.Text := '';
  tbReference.Text := '';
  chMovementOnly.Checked := false;
  chkNonzero.State := cbUnchecked;
  glComponentFilter.clearFields;
end;

procedure TfrmLedgers.qryChartsAfterScroll(DataSet: TDataSet);
begin
   RefreshTransactions;
end;

procedure TfrmLedgers.qryChartsCalcFields(DataSet: TDataSet);
begin
    if chkShowBudgets.Checked then
    begin
        qryBudgetTotal.ParamByName('CODE').AsString := qryCharts.fieldByname('LKEY').AsString;//tvLedgers.Columns[0].EditValue;//  CODE.Text;
        qryBudgetTotal.ExecSQL;
        qryCharts.FieldByName('ACCOUNTVALUE').AsString := qryBudgetTotal.FieldByName('ACCOUNTVALUE').AsString;
   end;
{
  with qryChartBalance do
  begin
    ParamByName('Chart').AsString := qryCharts.FieldByName('CODE').AsString;
    Open;
    qryCharts.FieldByName('BALANCE').AsCurrency := FieldByName('BALANCE').AsFloat;
    Close;
  end;

  if qryCharts.FieldByName('BALANCE').AsCurrency < 0.0 then
    qryCharts.FieldByName('Debit').AsCurrency := Abs(qryCharts.FieldByName('BALANCE').AsCurrency);
  if qryCharts.FieldByName('BALANCE').AsCurrency >= 0.0 then
    qryCharts.FieldByName('Credit').AsCurrency := qryCharts.FieldByName('BALANCE').AsCurrency;   }

end;

procedure TfrmLedgers.mnuFilePrintAllChequesClick(Sender: TObject);
begin
//  rptChart.PreviewModal;
   qryChartReport.SQL.Clear;
   qryChartReport.SQL := qryCharts.SQL;
   rptGeneralLedger.Print;

end;

procedure TfrmLedgers.qryNaccountsCalcFields(DataSet: TDataSet);
begin
  if qryNaccounts.FieldByName('AMOUNT').AsCurrency < 0.0 then
    qryNaccounts.FieldByName('Debit').AsCurrency := Abs(qryNaccounts.FieldByName('AMOUNT').AsCurrency);
  if qryNaccounts.FieldByName('AMOUNT').AsCurrency > 0.0 then
    qryNaccounts.FieldByName('Credit').AsCurrency := qryNaccounts.FieldByName('AMOUNT').AsCurrency;
  if qryNaccounts.FieldByName('OWNER_CODE').AsString = 'CHEQUE' then
    qryNaccounts.FieldByName('Type').AsString := 'CHQ'
  else if qryNaccounts.FieldByName('OWNER_CODE').AsString = 'RECEIPT' then
    qryNaccounts.FieldByName('Type').AsString := 'RCP'
  else if qryNaccounts.FieldByName('OWNER_CODE').AsString = 'NMEMO' then
    qryNaccounts.FieldByName('Type').AsString := 'BLL'
  else if qryNaccounts.FieldByName('OWNER_CODE').AsString = 'JOURNAL' then
    qryNaccounts.FieldByName('Type').AsString := 'JNL'
  else if qryNaccounts.FieldByName('OWNER_CODE').AsString = 'CHEQREQ' then
    qryNaccounts.FieldByName('Type').AsString := 'CRQ'
  else
    qryNaccounts.FieldByName('Type').AsString := Copy(qryNaccounts.FieldByName('OWNER_CODE').AsString, 1, 3);
end;

procedure TfrmLedgers.mnuFilePrintAllocationsClick(Sender: TObject);
var
  dtFinYearStart   : TDateTime;
  wYear, wMonth, wDay : Word;
  sSELECT          : String;
  loTfrmLedgersDlg : TfrmLedgersDlg;
begin
   loTfrmLedgersDlg := TfrmLedgersDlg.Create(self);
   loTfrmLedgersDlg.OnDlgClose := OnLedgersDlgClose;
   loTfrmLedgersDlg.ShowModal;

   if (loTfrmLedgersDlg.ModalResult = mrOK) then
   begin
      try
         with qryTransitems do
         begin
          // Now find the Transactions for this Period
          Close;
          SQL.Clear;
          {
            Code Modified 26.9.2002 GG

            Made this so that it works in a similar way to the query showing in the allocs grid
          }

          DecodeDate(dtpDateFrom.Date, wYear, wMonth, wDay);
          if wMonth < iFinYearStart then
            dtFinYearStart := EncodeDate(wYear - 1, iFinYearStart, 1)
          else
            dtFinYearStart := EncodeDate(wYear, iFinYearStart, 1);
          SQL.Clear;

          {
            Code modified 26.9.2002 GG

            Should show the opening balance as at 1st of month, not the date of the last transaction in the previous month

              SQL.Add('SELECT CHART, MAX(CREATED) as CREATED, ''Opening Balance'' as DESCR, nvl(SUM(AMOUNT),0) as AMOUNT, '''' as REFNO, ''BBF'' as OWNER_CODE, 0 as NOWNER, Null as CREDITORCODE');

            Should also compute opening balance as does the allocations grid
          }

          (*
          SELECT C.CODE, TO_DATE('01-Jul-02') as CREATED, 'Opening Balance' as DESCR, SUM(nvl(T.AMOUNT, 0)) as AMOUNT, '' as REFNO, 'BBF' as OWNER_CODE, 0 as NOWNER, Null as CREDITORCODE
          FROM CHART C, TRANSITEM T
          WHERE
            T.CHART(+) = C.CODE AND
            T.ACCT(+) = C.BANK AND
            C.BANK = 'SG' AND
            C.CODE = '1005'

            AND (T.CREATED(+) >=:P_DateStart AND T.CREATED(+) < :P_DATEFROM)
          GROUP BY C.CODE
          *)

  //        if ((qryCharts.FieldByName('TYPE').AsString = 'E') or (qryCharts.FieldByName('TYPE').AsString = 'I')) and (Trunc(dtpDateFrom.Date) = Trunc(dtFinYearStart)) then

          sSELECT := 'insert into GL_REPORT_TRANS( CHART,CREATED,DESCR,DEBIT,CREDIT,AMOUNT,REFNO,OWNER_CODE,NOWNER,CREDITORCODE,REPORT_DESC,TAXCODE,empcode,ordtype,x, code, naccount, type,chart_desc) ';
          if (qryCharts.FieldByName('REPORTTYPE').AsString = 'P') and (Trunc(dtpDateFrom.Date) = Trunc(dtFinYearStart)) then
          begin
            // we want this case to return an opening balance of zero - hence nvl(sum(amount) * 0, 0) in this line : GG 26.9.02.
               if (IsCreatedDate) then
                 sSELECT:= sSELECT +'SELECT nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) AS CHART, TO_DATE('''+ FormatDateTime('DD-MMM-YY',dtpDateFrom.Date) + ''') as CREATED, ''Opening Balance'' as DESCR,'+
                         'DECODE(SUBSTR((nvl(SUM(T.AMOUNT), 0)),0,1),''0'',to_number(NULL),''-'',ABS(nvl(SUM(T.AMOUNT), 0) ),to_number(NULL)) DEBIT, '+
                         'DECODE(SUBSTR((nvl(SUM(T.AMOUNT), 0)),0,1),''-'',to_number(NULL),ABS(nvl(SUM(T.AMOUNT), 0))) CREDIT, '+
                         'nvl(SUM(T.AMOUNT) * 0, 0) as AMOUNT, '''' as REFNO, ''BBF'' as OWNER_CODE, 0 as NOWNER, Null as CREDITORCODE,REPORT_DESC, NULL AS TAXCODE,'''+
                         dmAxiom.UserID+''' as empcode, 1 as ordtype, DECODE(SUBSTR((sum(T.AMOUNT)),0,1),''-'',ABS(sum(T.Amount)),sum(T.AMOUNT) * -1) as x, c.code,1 as naccount, ''BBF'' as type, c.descr as chart_desc '
               else
                 sSELECT:= sSELECT + 'SELECT nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) AS CHART, TO_DATE('''+ FormatDateTime('DD-MMM-YY',dtpDateFrom.Date) + ''') as CREATED, ''Opening Balance'' as DESCR,'+
                         'DECODE(SUBSTR((nvl(SUM(T.AMOUNT), 0)),0,1),''0'',to_number(NULL),''-'',ABS(nvl(SUM(T.AMOUNT), 0) ),to_number(NULL)) DEBIT, '+
                         'DECODE(SUBSTR((nvl(SUM(T.AMOUNT), 0)),0,1),''-'',to_number(NULL),ABS(nvl(SUM(T.AMOUNT), 0))) CREDIT, '+
                         'nvl(SUM(T.AMOUNT) * 0, 0) as AMOUNT, '''' as REFNO, ''BBF'' as OWNER_CODE, 0 as NOWNER, Null as CREDITORCODE,REPORT_DESC, max(T.TAXCODE) as TAXCODE,'''+
                         dmAxiom.UserID+''' as empcode, 1 as ordtype, DECODE(SUBSTR((sum(T.AMOUNT)),0,1),''-'',ABS(sum(T.Amount)),sum(T.AMOUNT) * -1) as x, c.code,1 as naccount, ''BBF'' as type, c.descr as chart_desc ';
            end
          else
            begin
              if (IsCreatedDate) then
                sSELECT:= sSELECT + 'SELECT nvl(C.COMPONENT_CODE_DISPLAY,C.CODE)  AS CHART, TO_DATE('''+ FormatDateTime('DD-MMM-YY',dtpDateFrom.Date) + ''') as CREATED, ''Opening Balance'' as DESCR,'+
                          'DECODE(SUBSTR((nvl(SUM(T.AMOUNT), 0)),0,1),''0'',to_number(NULL),''-'',ABS(nvl(SUM(T.AMOUNT), 0) ),to_number(NULL)) DEBIT, '+
                          'DECODE(SUBSTR((nvl(SUM(T.AMOUNT), 0)),0,1),''-'',to_number(NULL),ABS(nvl(SUM(T.AMOUNT), 0))) CREDIT, '+
                          'nvl(SUM(T.AMOUNT), 0) as AMOUNT, '''' as REFNO, ''BBF'' as OWNER_CODE, 0 as NOWNER, Null as CREDITORCODE,REPORT_DESC, NULL AS TAXCODE,'''+
                          dmAxiom.UserID+''' as empcode, 1 as ordtype, DECODE(SUBSTR((sum(T.AMOUNT)),0,1),''-'',ABS(sum(T.Amount)),sum(T.AMOUNT) * -1) as x, c.code,1 as naccount, ''BBF'' as type, c.descr as chart_desc '
              else
                sSELECT:= sSELECT + 'SELECT nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) as CHART, TO_DATE('''+ FormatDateTime('DD-MMM-YY',dtpDateFrom.Date) + ''') as CREATED, ''Opening Balance'' as DESCR,'+
                          'DECODE(SUBSTR((nvl(SUM(T.AMOUNT), 0)),0,1),''0'',to_number(NULL),''-'',ABS(nvl(SUM(T.AMOUNT), 0) ),to_number(NULL)) DEBIT, '+
                          'DECODE(SUBSTR((nvl(SUM(T.AMOUNT), 0)),0,1),''-'',to_number(NULL),ABS(nvl(SUM(T.AMOUNT), 0))) CREDIT, '+
                          'nvl(SUM(T.AMOUNT), 0) as AMOUNT, '''' as REFNO, ''BBF'' as OWNER_CODE, 0 as NOWNER, Null as CREDITORCODE,REPORT_DESC, max(T.TAXCODE) as TAXCODE,'''+
                          dmAxiom.UserID+''' as empcode, 1 as ordtype, DECODE(SUBSTR((sum(T.AMOUNT)),0,1),''-'',ABS(sum(T.Amount)),sum(T.AMOUNT) * -1) as x, c.code,1 as naccount, ''BBF'' as type, c.descr as chart_desc ';
            end;    //  end if-else

          SQL.Add(sSELECT);
          SQL.Add('FROM TRANSITEM T, CHARTTYPE CT, CHART C ');

          {  Code Modified 25.9.2002 GG
             Want to start from beginning of time for non-P&L accounts

              SQL.Add('WHERE CREATED < :P_DateFrom AND CREATED >= :P_DateStart ');
              SQL.Add('WHERE CREATED < :P_DateFrom ');
          }

          SQL.Add('WHERE');
          SQL.Add('  T.CHART(+) = C.CODE AND');
          SQL.Add('  T.ACCT(+) = C.BANK AND');
          SQL.ADD('  C.TYPE = CT.CODE(+) ');
          //    SQL.Add('  C.BANK = ''' + dmAxiom.Entity + ''' AND');
          //    SQL.Add('  C.CODE BETWEEN ''' + tbLedgerFrom.Text ''' AND ''' + tbLedgerTo.Text + '''');
          SQL.Add('  AND C.BANK = ''' + dmAxiom.Entity + '''');
          SQL.Add(       SQLWhere(True));

  //        if (qryCharts.FieldByName('TYPE').AsString = 'E') or (qryCharts.FieldByName('TYPE').AsString = 'I')  then
         if (IsCreatedDate) then
         begin
            SQL.Add(' AND trunc(T.created) >= ');
            // P_DateStart is financial year start
            SQL.Add('case when (reporttype = ''P'') then :P_DateStart  ');
            SQL.Add('   else  :P_OldDate ');
	         SQL.Add('end  ');
//********* opening balance should always be transactions less than from date chosen
            SQL.Add(' AND trunc(T.created) < :P_DateFrom ');
//            SQL.Add('case when (reporttype = ''P'' ) then  to_date(null) ');
//            SQL.Add('   else  :P_DateFrom  ');
//	         SQL.Add('end  ');
//            SQL.Add(' AND trunc(T.created) < :P_DateFrom ');
         end
         else
         begin
            SQL.Add(' AND trunc(T.SYSTEMDATE) >= ');
            // P_DateStart is financial year start
            SQL.Add('case when (reporttype = ''P'') then :P_DateStart  ');
            SQL.Add('   else  :P_OldDate ');
	         SQL.Add('end  ');
//          opening balance should always be transactions less than from date chosen
            SQL.Add(' AND trunc(T.SYSTEMDATE) < :P_DateFrom ');

//            SQL.Add('case when (reporttype = ''P'' ) then to_date(null) ');
//            SQL.Add('   else  :P_DateFrom  ');
//	         SQL.Add('end  ');
//            SQL.Add(' AND trunc(T.SYSTEMDATE) < :P_DateFrom ');
         end;


 {         if (qryCharts.FieldByName('REPORTTYPE').AsString = 'P') then
            begin
              if (IsCreatedDate) then
                SQL.Add('AND trunc(T.created) >=  :P_DateStart AND trunc(T.created) < :P_DateFrom' )
  //              SQL.Add('AND TRUNC(T.CREATED(+)) BETWEEN :P_DateStart AND :P_DateFrom')
              else
  //              SQL.Add('AND TRUNC(T.SYSTEMDATE(+)) BETWEEN :P_DateStart AND :P_DateFrom')
                SQL.Add('AND trunc(T.SYSTEMDATE) >=  :P_DateStart AND trunc(T.created) < :P_DateFrom ')
            end
          else
            begin
              if (IsCreatedDate) then
                SQL.Add('AND TRUNC(T.CREATED) < :P_DateFrom')
              else
                SQL.Add('AND TRUNC(T.SYSTEMDATE) < :P_DateFrom')

            end;    //  end if-else    }

          SQL.Add('GROUP BY c.code, nvl(C.COMPONENT_CODE_DISPLAY,C.CODE),REPORT_DESC, c.descr ');

          // *******************************************************************************
          //**** all of this is not needed handled by the sql above.  this duplicates the opening balance
          //******  AES  ************
 {         SQL.Add('UNION ');
          sSELECT:= 'SELECT nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) AS CHART, TO_DATE('''+ FormatDateTime('DD-MMM-YY',dtpDateFrom.Date) + ''') as CREATED, ''Opening Balance'' as DESCR,'+
                    '0 as DEBIT, 0 as CREDIT, '+
                    '0 as AMOUNT, '''' as REFNO, ''BBF'' as OWNER_CODE, 0 as NOWNER, Null as CREDITORCODE,REPORT_DESC, NULL AS TAXCODE,'''+
                     dmAxiom.UserID+''' as empcode, 1 as ordtype, 0 as x, c.code,1 as naccount, ''BBF'' as type ';

          SQL.Add(sSELECT);
          SQL.Add('FROM TRANSITEM T, CHARTTYPE CT, CHART C ');

          SQL.Add('WHERE');
          SQL.Add('  T.CHART(+) = C.CODE AND');
          SQL.Add('  T.ACCT(+) = C.BANK AND');
          SQL.ADD('  C.TYPE = CT.CODE ');
          SQL.Add('  AND reporttype = ''P'' ');
          SQL.Add('  AND C.BANK = ''' + dmAxiom.Entity + '''');
          SQL.Add(       SQLWhere);
          SQL.Add('GROUP BY c.code, nvl(C.COMPONENT_CODE_DISPLAY,C.CODE),REPORT_DESC ');      }

          SQL.Add('UNION ALL');

          if (IsCreatedDate) then
            SQL.Add('SELECT nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) as CHART, T.CREATED, T.DESCR,'+
                    'DECODE(SUBSTR((T.AMOUNT),0,1),''0'',to_number(NULL),''-'',ABS(T.AMOUNT ),to_number(NULL)) DEBIT,'+
                    'DECODE(SUBSTR((T.AMOUNT),0,1),''-'',to_number(NULL),ABS(T.AMOUNT)) CREDIT,t.amount,'+
                    'T.REFNO, T.OWNER_CODE,T.NOWNER, T.CREDITORCODE,REPORT_DESC, T.TAXCODE,'''+
                    dmAxiom.UserID + ''' AS EMPCODE, 2 as ordtype, '+
                    'DECODE(SUBSTR((T.AMOUNT),0,1),''-'',ABS(T.Amount),T.AMOUNT * -1) as x, c.code, t.naccount,'+
                    'case when (owner_code = ''CHEQUE'') then ''CHQ'' '+
                    '     when (owner_code = ''RECEIPT'') then ''RCP'' '+
	                 '     when (owner_code = ''NMEMO'') then ''BLL'' '+
	                 '     when (owner_code = ''JOURNAL'') then ''JNL'' '+
	                 '     when (owner_code = ''CHEQREQ'') then ''CRQ'' '+
                    'ELSE  '+
                    '     substr(owner_code,1,3) '+
                    'end as type, c.descr as chart_desc' )
          else
            SQL.Add('SELECT nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) as CHART, T.SYSTEMDATE AS CREATED, T.DESCR,'+
                    'DECODE(SUBSTR((T.AMOUNT),0,1),''0'',to_number(NULL),''-'',ABS(T.AMOUNT ),to_number(NULL)) DEBIT,'+
                    'DECODE(SUBSTR((T.AMOUNT),0,1),''-'',to_number(NULL),ABS(T.AMOUNT)) CREDIT,t.amount,'+
                    'T.REFNO, T.OWNER_CODE, T.NOWNER, T.CREDITORCODE,REPORT_DESC, T.TAXCODE,'''+
                    dmAxiom.UserID + ''' AS EMPCODE, 2 as ordtype, '+
                    'DECODE(SUBSTR((T.AMOUNT),0,1),''-'',ABS(T.Amount),T.AMOUNT * -1) as x, c.code, t.naccount, '+
                    'case when (owner_code = ''CHEQUE'') then ''CHQ'' '+
                    '     when (owner_code = ''RECEIPT'') then ''RCP'' '+
	                 '     when (owner_code = ''NMEMO'') then ''BLL'' '+
	                 '     when (owner_code = ''JOURNAL'') then ''JNL'' '+
	                 '     when (owner_code = ''CHEQREQ'') then ''CRQ'' '+
                    'ELSE  '+
                    '     substr(owner_code,1,3) '+
                    'end as type , c.descr as chart_desc' );
          SQL.Add('FROM TRANSITEM T, CHART C');

          if (IsCreatedDate) then
            SQL.Add('WHERE TRUNC(T.CREATED) BETWEEN :P_DateFrom AND :P_DateTo')
          else
            SQL.Add('WHERE TRUNC(T.SYSTEMDATE) BETWEEN :P_DateFrom AND :P_DateTo');

          SQL.Add('  AND T.CHART = C.CODE ');
          SQL.Add('  AND T.ACCT = C.BANK ');
          SQL.Add('  AND NVL(T.REFNO,''*'') <> ''BBF''');
          SQL.Add('  AND T.ACCT = ' + QuotedStr(dmAxiom.Entity));
          SQL.Add('  AND T.CHART IN ');
          SQL.Add('  (');
          SQL.Add('    SELECT C.CODE AS CODE');
          SQL.Add('    FROM CHART C');
          SQL.Add('    WHERE ');
          SQL.Add('    C.BANK = ''' + dmAxiom.Entity + '''');
          SQL.Add(       SQLWhere(True));
          SQL.Add('  )');

          if (IsCreatedDate) then
            SQL.Add('ORDER BY CHART, CREATED')
          else
            SQL.Add('ORDER BY CHART, SYSTEMDATE');


//          if chMovementOnly.Checked then
//          begin
            ParamByName('P_DateFrom').AsDateTime := Trunc(dtpDateFrom.Date);
            ParamByName('P_DateTo').AsDateTime := Trunc(dtpDateTo.Date);
//         end;

//          ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
//          ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);

  //        if (qryCharts.FieldByName('TYPE').AsString = 'E') or (qryCharts.FieldByName('TYPE').AsString = 'I')  then

  //          if (qryCharts.FieldByName('REPORTTYPE').AsString = 'P') then

          ParamByName('P_DateStart').AsDate := Trunc(dtFinYearStart);

          ParamByName('P_OldDate').AsDate := StrToDate('01/01/1899');

          if (dmAxiom.runningide) then
             qryTransitems.SQL.SaveToFile('C:\tmp\qryTransitems.sql');

          Prepare;
          try
            ExecSQL;
          except
             //
          end;
//          Open;
        end;

         with qryTransitems do
         begin
            Close;
            SQL.Clear;
            SQL.Add('select ordtype, CHART, CREATED, DESCR, AMOUNT, REFNO, OWNER_CODE,NOWNER,');
            SQL.Add('CREDITORCODE,REPORT_DESC, TAXCODE, DEBIT ,CREDIT,type, payee, Running_total, chart_desc,');
            SQL.Add('case when (running_total >=0) then to_char(abs(running_total),''$999,999,999.99'')||'' DR'' ');
            SQL.Add('when (running_total < 0) then to_char(abs(running_total),''$999,999,999.99'')||'' CR'' ');
            SQL.Add('end as disp_running_total ');
            SQL.Add('from ');
            SQL.Add('(SELECT CR.ordtype, CR.CHART, CR.CREATED, ');
            SQL.Add(' CR.DESCR, CR.AMOUNT, CR.REFNO, CR.OWNER_CODE,CR.NOWNER,');
            SQL.Add(' CR.CREDITORCODE,REPORT_DESC, CR.TAXCODE, ');
            SQL.Add(' CR.DEBIT ,CR.CREDIT,type,CR.X,CR.CODE,CR.CHART_DESC,');
            SQL.Add('case when (type = ''CHQ'') then (SELECT PAYEE FROM CHEQUE WHERE NCHEQUE = CR.NOWNER)');
            SQL.Add('when (type = ''RCP'') then (SELECT PAYOR FROM RECEIPT WHERE NRECEIPT = CR.NOWNER) ');
            SQL.Add('end as payee, ');
            SQL.Add(' SUM(CR.x) ');
            SQL.Add('  OVER (partition by CR.CODE  ');
            SQL.Add('  ORDER BY CR.code,CR.created, naccount) as Running_Total ');
            SQL.Add('from  ');
            SQL.Add('GL_REPORT_TRANS CR ');
            SQL.Add('where CR.EMPCODE = :EMPCODE ');
            SQL.Add('order by chart,created,naccount, ordtype) ');

            ParamByName('EMPCODE').AsString := dmAxiom.UserId;

            if (dmAxiom.runningide) then
               qryTransitems.SQL.SaveToFile('C:\tmp\qryReport1.sql');
            ExecSQL;
         end;

         //MessageDlg('Record Number: ' + IntToStr(qryTransitems.RecordCount), mtInformation, [mbOK], 0);
         LastChart := 'zzzzzzzz';
//         rptTrans.PreviewModal;
//         qryTransitems.Open;
         rptGeneralLedger.Print;
//         qrdetTransaction.Enabled := True;
         bPrintDetail := True;
//         QRLabel5.Caption := 'General Ledger Transactions';
      finally
         qryTmp.SQL.Clear;
         qryTmp.SQL.Add('DELETE FROM GL_REPORT_TRANS WHERE EMPCODE = :AX_USER');
         qryTmp.ParamByName('AX_USER').AsString := dmAxiom.UserID;
         qryTmp.Prepare;
         qryTmp.Execute;
      end;
    end;    //  end if
end;

procedure TfrmLedgers.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmLedgers.mnuFileNewLedgerClick(Sender: TObject);
var
  LfrmLedgerNew : TfrmLedgerNew;
begin
  LfrmLedgerNew := TfrmLedgerNew.Create(Self);
  try
    if (LfrmLedgerNew.ShowModal = mrOk) then
    begin
      qryCharts.DisableControls;
      qryCharts.Close;
      qryCharts.Open;
      qryCharts.EnableControls;
    end;    //  end if
  finally
    FreeAndNil(LfrmLedgerNew);
  end;    //  end try-finally
end;



procedure TfrmLedgers.tbLedgerSearchChange(Sender: TObject);
begin
// change this to actually filter the search

   tmrSearch.Enabled := true;

{  if tbLedgerSearch.Text <> '' then
    qryCharts.Locate('CODE', tbLedgerSearch.Text, [loPartialKey]);
    }
end;

procedure TfrmLedgers.tbLedgerSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if Key in [VK_DOWN, VK_UP, VK_NEXT, VK_PRIOR, VK_HOME, VK_END] then
  begin
    case Key of
      VK_DOWN : qryCharts.Next;
      VK_UP : qryCharts.Prior;
      VK_NEXT: qryCharts.MoveBy(15);
      VK_PRIOR: qryCharts.MoveBy(-15);
      VK_HOME: qryCharts.First;
      VK_END: qryCharts.Last;
    end;
    tbLedgerSearch.Text := '';
  end;  }
end;

procedure TfrmLedgers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   tvLedgersTYPEDESCR.GroupIndex := -1;
   SettingSaveStream(dmAxiom.UserID, 'LEDGERS', tvLedgers);
   SettingSaveStream(dmAxiom.UserID, 'GLTRANSACTIONS', tvTransactions);
   qryCharts.Close;
   qryNaccounts.Close;
   qryTransitems.Close;

//  Self.Release;
  RemoveFromDesktop(Self);
end;


procedure TfrmLedgers.qryTransitemsCalcFields(DataSet: TDataSet);
begin
{  if qryTransitems.FieldByName('AMOUNT').AsCurrency < 0.0 then
    qryTransitems.FieldByName('Debit').AsCurrency := Abs(qryTransitems.FieldByName('AMOUNT').AsCurrency);

  if qryTransitems.FieldByName('AMOUNT').AsCurrency > 0.0 then
    qryTransitems.FieldByName('Credit').AsCurrency := qryTransitems.FieldByName('AMOUNT').AsCurrency;

  if qryTransitems.FieldByName('OWNER_CODE').AsString = 'CHEQUE' then
  begin
    qryTransitems.FieldByName('Type').AsString := 'CHQ';

    with qryTmp do
    begin
      SQL.Text := 'SELECT PAYEE FROM CHEQUE WHERE NCHEQUE = ' + qryTransitems.FieldByName('NOWNER').AsString;
      Open;
      qrytransitems.FieldByName('Payee').AsString := FieldByName('PAYEE').AsString;
      Close;

    end;
  end
  else if qryTransitems.FieldByName('OWNER_CODE').AsString = 'RECEIPT' then
  begin
    qryTransitems.FieldByName('Type').AsString := 'RCP';

    with qryTmp do
    begin
      SQL.Text := 'SELECT PAYOR FROM RECEIPT WHERE NRECEIPT = ' + qryTransitems.FieldByName('NOWNER').AsString;
      Open;
      qrytransitems.FieldByName('Payee').AsString := FieldByName('PAYOR').AsString;
      Close;
    end;

  end
  else if qryTransitems.FieldByName('OWNER_CODE').AsString = 'NMEMO' then
    qryTransitems.FieldByName('Type').AsString := 'BLL'

  else if qryTransitems.FieldByName('OWNER_CODE').AsString = 'JOURNAL' then
    qryTransitems.FieldByName('Type').AsString := 'JNL'

  else if qryTransitems.FieldByName('OWNER_CODE').AsString = 'CHEQREQ' then
    qryTransitems.FieldByName('Type').AsString := 'CRQ'
  else
    qryTransitems.FieldByName('Type').AsString := Copy(qryTransitems.FieldByName('OWNER_CODE').AsString, 1, 3);   }

end;


procedure TfrmLedgers.tbtnJournalClick(Sender: TObject);
var
  loTfrmJournal : TfrmJournal;
begin
  loTfrmJournal := TfrmJournal.Create(Self);

  loTfrmJournal.Show;

end;

procedure TfrmLedgers.tbtnDeleteClick(Sender: TObject);
begin
  if MsgAsk('Do you want to delete ledger ' + qryCharts.FieldByName('CODE').AsString + '?') = mrYes then
  begin
    with qryChartDelete do
    begin
      ParamByName('BANK').AsString := qryCharts.FieldByName('BANK').AsString;
      ParamByName('CODE').AsString := qryCharts.FieldByName('CODE').AsString;
      ExecSQL;
    end;
    qryCharts.Close;
    qryCharts.Open;
  end;
end;

procedure TfrmLedgers.tbtnNewClick(Sender: TObject);
var
  LfrmLedgerNew : TfrmLedgerNew;
begin
  LfrmLedgerNew := TfrmLedgerNew.Create(Self);
  try
    if (LfrmLedgerNew.ShowModal = mrOk) then
    begin
      qryCharts.DisableControls;
      qryCharts.Close;
      qryCharts.Open;
      qryCharts.EnableControls;
    end;    //  end if
  finally
    FreeAndNil(LfrmLedgerNew);
  end;    //  end try-finally
end;

procedure TfrmLedgers.mnuFileDeleteClick(Sender: TObject);
begin
   if MsgAsk('Do you want to delete ledger ' + qryCharts.FieldByName('CODE').AsString + '?') = mrYes then
  begin
    with qryChartDelete do
    begin
      ParamByName('BANK').AsString := qryCharts.FieldByName('BANK').AsString;
      ParamByName('CODE').AsString := tvLedgersLKEY.EditValue;  //qryCharts.FieldByName('LKEY').AsString;
      ExecSQL;
    end;
    qryCharts.Close;
    qryCharts.Open;
  end;
end;

procedure TfrmLedgers.mnuFileJournalClick(Sender: TObject);
var
  loTfrmJournal : TfrmJournal;
begin
  loTfrmJournal := TfrmJournal.Create(Self);

  loTfrmJournal.Show;
end;

procedure TfrmLedgers.tbtnPrintClick(Sender: TObject);
begin
  mnuFilePrintAllocations.Click;
end;

procedure TfrmLedgers.tbtnBudgetClick(Sender: TObject);
var
  loTfmBudgets : TfmBudgets;
begin

  loTfmBudgets := TfmBudgets.Create(self);
  loTfmBudgets.setForAccountCode(qryCharts.FieldByName('CODE').AsString);

  loTfmBudgets.Show;

{
  Old, therefore, not needed. Mathew has created a new Budget screen.

  Brendan J.
  03/04/2003

  if not qryCharts.IsEmpty then
    with TfrmLedgerBudget.Create(Self) do
    begin
      ShowLedger(qryCharts.FieldByName('CODE').AsString, qryCharts.FieldByName('ADDTO').AsString,qryCharts.FieldByName('BANK').AsString);
      ShowModal;
      Free;
    end;
}

end;

procedure TfrmLedgers.tbtnEditClick(Sender: TObject);
var
  LfrmLedgerNew : TfrmLedgerNew;
begin
  if (not qryCharts.IsEmpty) then
  begin
    LfrmLedgerNew := TfrmLedgerNew.Create(Self);
    try
      LfrmLedgerNew.DisplayLedger(qryCharts.FieldByName('CODE').AsString);
      if (LfrmLedgerNew.ShowModal = mrOk) then
      begin
        qryCharts.DisableControls;
        qryCharts.Close;
        qryCharts.Open;
        qryCharts.EnableControls;
      end;    //  end if
    finally
      FreeAndNil(LfrmLedgerNew);
    end;    //  end try-finally
  end;    //  end if
end;

procedure TfrmLedgers.mnuFileEditClick(Sender: TObject);
var
  LfrmLedgerNew : TfrmLedgerNew;
begin
  if (not qryCharts.IsEmpty) then
  begin
    LfrmLedgerNew := TfrmLedgerNew.Create(Self);
    try
      LfrmLedgerNew.DisplayLedger(qryCharts.FieldByName('LKEY').AsString);
      if (LfrmLedgerNew.ShowModal = mrOk) then
      begin
        qryCharts.DisableControls;
        qryCharts.Close;
        qryCharts.Open;
        qryCharts.EnableControls;
      end;    //  end if
    finally
      FreeAndNil(LfrmLedgerNew);
    end;    //  end try-finally
  end;    //  end if
end;

procedure TfrmLedgers.tbtnLedgerTypesClick(Sender: TObject);
begin
  with TfrmChartTypes.Create(Self) do
  Show;
end;

procedure TfrmLedgers.tbLedgerToEnter(Sender: TObject);
begin
  //if tbLedgerFrom.Text <> '' then
  //begin
  //  tbLedgerTo.Text := tbLedgerFrom.Text;
 //   tbLedgerTo.SelectAll;
  //end;
end;


procedure TfrmLedgers.PrintLedgerBalances1Click(Sender: TObject);
begin
  //qrdetTransaction.Enabled := False;
  bPrintDetail := False;
//  QRLabel5.Caption := 'Ledger Balances';
  mnuFilePrintAllocationsClick(Sender);
end;

procedure TfrmLedgers.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);

   TFormatSettings.Create;

   ResetButtons(False);

   SettingLoadStream(dmAxiom.UserID, 'LEDGERS', tvLedgers);
   SettingLoadStream(dmAxiom.UserID, 'GLTRANSACTIONS', tvTransactions);

   bPrintDetail := True;
   glComponentFilter.glComponentSetup := dmAxiom.getGlComponents;
   if finYearStart <> nil then
      iFinYearStart := finYearStart.FinYearStart
   else
      iFinYearStart := 7;
end;

procedure TfrmLedgers.CreateReceiptForTransaction1Click(Sender: TObject);
begin
// -- create a receipt for this ledger item

   if qryNaccounts.FieldByName('OWNER_CODE').AsString = '' then
   begin
     with TfrmReceiptInfo.Create(Self) do
     begin
       ShowModal;

       qryReceiptInsert.Prepare;

       qryReceiptInsert.ParamByName('NRECEIPT').AsInteger := GetSeqnum('NRECEIPT');
       qryReceiptInsert.ParamByName('AMOUNT').AsCurrency := qryNaccounts.FieldByName('AMOUNT').AsCurrency;
       //qryReceiptInsert.ParamByName('ACCT').AsString :=  qryNaccounts.FieldByName('ACCT').AsString;
       qryReceiptInsert.ParamByName('PRINTED').AsString := 'N';
       qryReceiptInsert.ParamByName('REVERSED').AsString := 'N';
       qryReceiptInsert.ParamByName('ACCT').AsString := cmbBanks.Text;
       qryReceiptInsert.ParamByName('TYPE').AsString := 'CQ';
       qryReceiptInsert.ParamByName('DESCR').AsString := qryNaccounts.FieldByName('DESCR').AsString;
       qryReceiptInsert.ParamByName('RCPTNO').AsString := qryNaccounts.FieldByName('REFNO').AsString;
       qryReceiptInsert.ParamByName('CREATED').AsDateTime := qryNaccounts.FieldByName('CREATED').AsDateTime;
       qryReceiptInsert.ParamByName('DCLEARDATE').AsDateTime := qryNaccounts.FieldByName('CREATED').AsDateTime;
       qryReceiptInsert.ExecSql;
       Free;

       with dmAxiom.qryTmp do
       begin
         close;                   {
     Modified 23.10.2002 GG

         SQL.Text := 'UPDATE TRANSITEM SET OWNER_CODE = ''RECEIPT'',NOWNER = :NRECEIPT,NRECEIPT = :NRECEIPT' +
   }
         SQL.Text := 'UPDATE TRANSITEM SET OWNER_CODE = ''RECEIPT'',NOWNER = :NRECEIPT,NRECEIPT = :NRECEIPT, WHO = :WHO ' +
                     ' WHERE NACCOUNT = :NACCOUNT';
         Prepare;
         ParamByName('NRECEIPT').AsString := qryReceiptInsert.ParamByName('NRECEIPT').AsString;
         ParamByName('NACCOUNT').AsString :=  qryNaccounts.FieldByName('NACCOUNT').AsString;
   {
     Added 23.10.2002 GG

     New Parameter 'WHO' holds the UserID of the current user
   }
         ParamByName('WHO').AsString := dmAxiom.UserID;
         ExecSql;
         close;
       end;

     end;
     qryNaccounts.Close;
     qryNaccounts.Open;

   end
   else
        ShowMessage('Error Transaction already has a receipt');
end;

procedure TfrmLedgers.CreateChequeForTransaction1Click(Sender: TObject);
begin
   if qryNaccounts.FieldByName('OWNER_CODE').AsString = '' then
   begin
     with TfrmReceiptInfo.Create(Self) do
     begin
       Caption := 'Cheque Info';
       ShowModal;

       qryChequeInsert.Prepare;
//       14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
       qryChequeInsert.ParamByName('NCHEQUE').AsInteger := GetSequenceNumber('SQNC_NCHEQUE');  //GetSeqnum('NCHEQUE');
       qryChequeInsert.ParamByName('AMOUNT').AsCurrency := qryNaccounts.FieldByName('AMOUNT').AsCurrency * -1;
       //qryReceiptInsert.ParamByName('ACCT').AsString :=  qryNaccounts.FieldByName('ACCT').AsString;
       qryChequeInsert.ParamByName('PRINTED').AsString := 'N';
       qryChequeInsert.ParamByName('REVERSED').AsString := 'N';
       qryChequeInsert.ParamByName('BANKED').AsString := 'Y';
       qryChequeInsert.ParamByName('ACCT').AsString := cmbBanks.Text;
       qryChequeInsert.ParamByName('TYPE').AsString := 'PY';
       qryChequeInsert.ParamByName('TRUST').AsString := TableString('BANK','ACCT',cmbBanks.Text,'TRUST');
       qryChequeInsert.ParamByName('DESCR').AsString := qryNaccounts.FieldByName('DESCR').AsString;
       qryChequeInsert.ParamByName('CHQNO').AsString := qryNaccounts.FieldByName('REFNO').AsString;
       qryChequeInsert.ParamByName('CREATED').AsDateTime := qryNaccounts.FieldByName('CREATED').AsDateTime;
       //qryChequeInsert.ParamByName('DCLEARDATE').AsDateTime := qryNaccounts.FieldByName('CREATED').AsDateTime;
       qryChequeInsert.ExecSql;

       Free;
       with dmAxiom.qryTmp do
       begin
         close;
 {
   Modified 23.10.2002 GG

         SQL.Text := 'UPDATE TRANSITEM SET OWNER_CODE = ''CHEQUE'',NOWNER = :NRECEIPT,NCHEQUE = :NRECEIPT ' +
                     ' WHERE NACCOUNT = :NACCOUNT';
 }
         SQL.Text := 'UPDATE TRANSITEM SET OWNER_CODE = ''CHEQUE'',NOWNER = :NRECEIPT,NCHEQUE = :NRECEIPT, WHO = :WHO ' +
                     ' WHERE NACCOUNT = :NACCOUNT';
         Prepare;
         ParamByName('NRECEIPT').AsString := qryChequeInsert.ParamByName('NCHEQUE').AsString;
         ParamByName('NACCOUNT').AsString :=  qryNaccounts.FieldByName('NACCOUNT').AsString;
 {
   Added 23.10.2002 GG

   New Parameter 'WHO' holds the UserID of the current user
 }
       ParamByName('WHO').AsString := dmAxiom.UserID;
         ExecSql;
         close;
       end;
     end;
     qryNaccounts.Close;
     qryNaccounts.Open;
   end
   else
      ShowMessage('Error Transaction already has a cheque');
end;

procedure TfrmLedgers.tbtnJournalSplitClick(Sender: TObject);
var
  loTfrmJournalSplit : TfrmJournalSplit;
begin
  if (CanJournalSplit) then
    begin
      loTfrmJournalSplit := nil;

      try
        loTfrmJournalSplit := TfrmJournalSplit.Create(self);
        loTfrmJournalSplit.EntityCode := qryCharts.FieldByName('BANK').AsString;
        loTfrmJournalSplit.EntityName := TableString('ENTITY', 'CODE',
                                         qryCharts.FieldByName('BANK').AsString,
                                         'NAME');

        loTfrmJournalSplit.ChartCode := qryCharts.FieldByName('CODE').AsString;
        loTfrmJournalSplit.ChartDescr := qryCharts.FieldByName('REPORT_DESC').AsString;

        loTfrmJournalSplit.ShowModal;

      finally
        FreeAndNil(loTfrmJournalSplit);

      end;    //  end if

    end
  else
    MsgErr('This Journal cannot be split.' + #13#10 + 'The Journal Split option has been disabled.');
end;

function TfrmLedgers.CanJournalSplit : Boolean;
begin
  Result := IsJournalSplittingChart(qryCharts.FieldByName('CODE').AsString, dmAxiom.Entity);
end;

procedure TfrmLedgers.OnLedgersDlgClose(Sender : TObject);
begin
  fsReportDate := TfrmLedgersDlg(Sender).ReportDate;

end;

function TfrmLedgers.IsCreatedDate : Boolean;
begin
  Result := (fsReportDate = 'CreatedDate');

end;

procedure TfrmLedgers.QRDBText9Print(sender: TObject; var Value: String);
begin
  fcLocalDebits := fcLocalDebits + qryTransitems.FieldByName('DEBIT').AsCurrency;;
end;

procedure TfrmLedgers.QRDBText11Print(sender: TObject; var Value: String);
begin
  fcLocalCredits := fcLocalCredits + qryTransitems.FieldByName('CREDIT').AsCurrency;;

end;

procedure TfrmLedgers.qrlblCloseDebitPrint(sender: TObject;
  var Value: String);
//var
//  lcClosingBalance : Currency;
begin
  //Value := FloatToStrF(Abs(fcLocalDebits), ffCurrency, 15, CurrencyDecimals);

  //fcLocalDebits := 0;

{
  lcClosingBalance := fcLocalDebits + fcLocalCredits;

  if (lcClosingBalance < 0) then
    begin
      Value := FloatToStrF(Abs(lcClosingBalance), ffCurrency, 15, CurrencyDecimals);

    end;    //  end if
}
end;

procedure TfrmLedgers.qrlblCloseCreditPrint(sender: TObject;
  var Value: String);
//var
//  lcClosingBalance : Currency;
begin
  //Value := FloatToStrF(Abs(fcLocalCredits), ffCurrency, 15, CurrencyDecimals);

  //fcLocalCredits := 0;

{
  lcClosingBalance := fcLocalDebits + fcLocalCredits;

  if (lcClosingBalance > 0) then
    begin
      Value := FloatToStrF(Abs(lcClosingBalance), ffCurrency, 15, CurrencyDecimals);

    end;    //  end if
}
end;

procedure TfrmLedgers.btnBudgetClick(Sender: TObject);
var
  loTfmBudgets : TfmBudgets;
begin
  loTfmBudgets := TfmBudgets.Create(self);
  loTfmBudgets.setForAccountCode(qryCharts.FieldByName('LKEY').AsString);

  loTfmBudgets.Show;
end;

procedure TfrmLedgers.dxBarButton2Click(Sender: TObject);
begin
   with TfrmChartTypes.Create(Self) do
      Show;
end;

procedure TfrmLedgers.dxBarButton3Click(Sender: TObject);
var
  loTfrmJournalSplit : TfrmJournalSplit;
begin
  if (CanJournalSplit) then
    begin
      loTfrmJournalSplit := nil;

      try
        loTfrmJournalSplit := TfrmJournalSplit.Create(self);
        loTfrmJournalSplit.EntityCode := qryCharts.FieldByName('BANK').AsString;
        loTfrmJournalSplit.EntityName := TableString('ENTITY', 'CODE',
                                         qryCharts.FieldByName('BANK').AsString,
                                         'NAME');

        loTfrmJournalSplit.ChartCode := qryCharts.FieldByName('CODE').AsString;
        loTfrmJournalSplit.ChartDescr := qryCharts.FieldByName('REPORT_DESC').AsString;

        loTfrmJournalSplit.ShowModal;

      finally
        FreeAndNil(loTfrmJournalSplit);

      end;    //  end if

    end
  else
    MsgErr('This Journal cannot be split.' + #13#10 + 'The Journal Split option has been disabled.');
end;

procedure TfrmLedgers.tvLedgersColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
//   SaveConfig := True;
   dmAxiom.qryCharts.Close;
   sOrderBy := ' ORDER BY ';

   sOrderBy := sOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      sOrderBy := sOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      sOrderBy := sOrderBy + ' ASC';
   end
   else
   begin
      sOrderBy := sOrderBy + ' DESC';
   end;

   MakeSql();
end;

procedure TfrmLedgers.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := MakeTitle;
end;

procedure TfrmLedgers.dxmunAllocationClick(Sender: TObject);
var lofrmExpenseAllocations : TfrmExpenseAllocations;
begin
   lofrmExpenseAllocations := TfrmExpenseAllocations.create(self);
   lofrmExpenseAllocations.loadChart(qryCharts.FieldByName('LKEY').AsString,qryCharts.FieldByName('BANK').AsString,qryCharts.FieldByName('CODE').AsString);
   lofrmExpenseAllocations.show;
end;

procedure TfrmLedgers.tbReportSearchChange(Sender: TObject);
begin
//  if tbReportSearch.Text <> '' then
//    qryCharts.Locate('REPORT_DESC', tbReportSearch.Text, [loPartialKey]);
   tmrSearch.Enabled := true;
   tbChartDesc.Text := tbReportSearch.Text;
end;

procedure TfrmLedgers.tmrSearchTimer(Sender: TObject);
begin
  tmrSearch.Enabled := false;
  MakeSQL;
end;

procedure TfrmLedgers.ResetButtons(AValue: boolean);
begin
   mnuFileNewLedger.Enabled := dmAxiom.Security.Ledger.Create;
   mnuFileEdit.Enabled := AValue and dmAxiom.Security.Ledger.Edit;
   mnuFileDelete.Enabled := AValue and dmAxiom.Security.Ledger.Delete;
   btnBudget.Enabled := Avalue;
   tbtnJournalSplit.Enabled := AValue and dmAxiom.Security.Ledger.JournalSplit;
   dxmunAllocation.Enabled := AValue;
   mnuFilePrintAllocations.Enabled := AValue;
end;

procedure TfrmLedgers.btnXLSExportClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,grdTransactions, True, True,True,'xls');
   end;
end;

procedure TfrmLedgers.QRExpr1Print(sender: TObject; var Value: String);
begin
   Value := FloatToStrF(Abs(StrToCurr(Value)), ffCurrency, 15, FormatSettings.CurrencyDecimals);
end;

procedure TfrmLedgers.QRExpr4Print(sender: TObject; var Value: String);
begin
   Value := FloatToStrF(Abs(StrToCurr(Value)), ffCurrency, 15, FormatSettings.CurrencyDecimals);
end;

procedure TfrmLedgers.ppSummaryBand1BeforePrint(Sender: TObject);
begin
//   lblCreditsTotal.Caption := FloatToStrF(Abs(TotalCredits), ffCurrency, 15, CurrencyDecimals);
//   lblDebitsTotal.Caption := FloatToStrF(Abs(TotalDebits), ffCurrency, 15, CurrencyDecimals);


  Movement:=   TotalDebits + TotalCredits;
  if Movement > 0 then
  begin
    lblMovementCredit.Caption:= FloatToStrF(Abs(Movement), ffCurrency, 15, FormatSettings.CurrencyDecimals);
    lblMovementDebit.Caption:= '';
  end
  else
  if Movement < 0 then
  begin
    lblMovementDebit.Caption:= FloatToStrF(Abs(Movement), ffCurrency, 15, FormatSettings.CurrencyDecimals);
    lblMovementCredit.Caption:= '';
  end
  else
  if Movement = 0 then
  begin
    if OpeningBalance < 0 then
    begin
      lblMovementDebit.Caption:= FloatToStrF(Movement, ffCurrency, 15, FormatSettings.CurrencyDecimals);
      lblMovementCredit.Caption:= '';
    end
    else
    begin
      lblMovementCredit.Caption:= FloatToStrF(Movement, ffCurrency, 15, FormatSettings.CurrencyDecimals);
      lblMovementDebit.Caption:= '';
    end
  end
end;

procedure TfrmLedgers.ppDBText6Print(Sender: TObject);
begin
   fcLocalDebits := fcLocalDebits + qryTransitems.FieldByName('DEBIT').AsCurrency;
end;

procedure TfrmLedgers.ppDBText7Print(Sender: TObject);
begin
   fcLocalCredits := fcLocalCredits + qryTransitems.FieldByName('CREDIT').AsCurrency;;
end;

procedure TfrmLedgers.chkGroupByClick(Sender: TObject);
begin
   if chkGroupBy.Checked then
   begin
      tvLedgersTYPEDESCR.GroupIndex := 0;
      grdLedgers.FocusedView.DataController.Groups.FullExpand;
   end
   else
      tvLedgersTYPEDESCR.GroupIndex := -1;
end;

procedure TfrmLedgers.tvLedgersCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if (TcxCustomGridTableView(Sender).DataController.FocusedRowIndex = 0) then
      RefreshTransactions;
      
{   with qryChartBalance do
   begin
     close;
     ParamByName('Chart').AsString := qryCharts.FieldByName('CODE_IDX').AsString;
     ParamByName('Entity').AsString := dmAxiom.Entity;
     ParamByName('DateFrom').AsDateTime := Trunc(dtpDateFrom.Date);
     ParamByName('DateTo').AsDateTime := Trunc(dtpDateTo.Date) + 1;
     Open;
     sbarInfo.Panels[1].Text := 'Total for period = ' + formatfloat('$##0,.00',qryChartBalance.FieldByName('balance').AsCurrency*-1);
   end;  }
end;

procedure TfrmLedgers.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
   if ppDBText15.FieldValue >= 0 then
   begin
      ppVariable1.Value := ppDBText15.FieldValue;
      ppVariable2.value := 0;
   end
   else
   begin
      ppVariable2.Value := -ppDBText15.FieldValue;
      ppVariable1.Value := 0;
   end;
end;


procedure TfrmLedgers.RefreshTransactions;
var
  sAND, sSQLWhere, sSELECT, FmtString : string;
  wYear, wMonth, wDay : Word;
  dtFinYearStart : TDateTime;
  cTotal : Currency;

begin     
  dxmunAllocation.Enabled := qryCharts.fieldByName('REPORTTYPE').AsString = 'P';

  sAND := ' AND ';
  qryNaccounts.Close;
  // Now find the Transactions for this Chart
  sSQLWhere := ' AND ACCT = ''' + qryCharts.FieldByName('BANK').AsString + ''' AND CHART = ''' + qryCharts.FieldByName('LKEY').AsString + '''';
  if tbTransDesc.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'DESCR LIKE ' + QuotedStr('%' + tbTransDesc.Text + '%');
  if tbTransAmtFrom.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'AMOUNT >= ' + tbTransAmtFrom.Text;
  if tbTransAmtTo.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'AMOUNT <= ' + tbTransAmtTo.Text;
  if tbReference.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'REFNO = ' + QuotedStr(tbReference.Text);

  DecodeDate(dtpDateFrom.Date, wYear, wMonth, wDay);
  if wMonth < iFinYearStart then
    dtFinYearStart := EncodeDate(wYear - 1, iFinYearStart, 1)
  else
    dtFinYearStart := EncodeDate(wYear, iFinYearStart, 1);
  qryNaccounts.SQL.Clear;
  // do not calculate balance for previous year if it is an expense or income account
{
  Code Modified 26.9.2002 GG

    qryNaccounts.SQL.Add('SELECT TO_DATE('''+ FormatDateTime('DD-MMM-YY',dtpDateFrom.Date) + ''') as CREATED, ''Opening Balance'' as DESCR, NVL(SUM(AMOUNT),0) as AMOUNT, '''' as REFNO, 0 as NTRANS, Null as CREDITORCODE, ''BBF'' as OWNER_CODE,null as ACCT,to_number(null) as NACCOUNT ');
}

//  if ((qryCharts.FieldByName('TYPE').AsString = 'E') or (qryCharts.FieldByName('TYPE').AsString = 'I')) and (Trunc(dtpDateFrom.Date) = Trunc(dtFinYearStart)) then
  if (qryCharts.FieldByName('REPORTTYPE').AsString = 'P') and (Trunc(dtpDateFrom.Date) = Trunc(dtFinYearStart)) then
    // we want this case to return an opening balance of zero - hence nvl(sum(amount) * 0, 0) in this line : GG 26.9.02.
     sSELECT:= 'SELECT TO_DATE('''+ FormatDateTime('DD-MMM-YY',dtpDateFrom.Date) + ''') as CREATED, '+
               '''Opening Balance'' as DESCR, NVL(SUM(AMOUNT) * 0 ,0) as AMOUNT, '''' as REFNO, 0 as NTRANS, '+
               'Null as CREDITORCODE, ''BBF'' as OWNER_CODE,null as ACCT,0 as NACCOUNT, ' +
               ' CASE WHEN (NVL (SUM (amount), 0) < 0) THEN ABS (NVL (SUM (amount), 0)) END AS debit, '+
               ' CASE WHEN (NVL (SUM (amount), 0) > 0) THEN NVL (SUM (amount), 0) END AS credit, '+
               ' '''' AS TYPE '
  else
     sSELECT:= 'SELECT TO_DATE('''+ FormatDateTime('DD-MMM-YY',dtpDateFrom.Date) + ''') as CREATED, '+
               '''Opening Balance'' as DESCR, NVL(SUM(AMOUNT),0) as AMOUNT, '''' as REFNO, 0 as NTRANS, '+
               'Null as CREDITORCODE, ''BBF'' as OWNER_CODE,null as ACCT,0 as NACCOUNT, ' +
               ' CASE WHEN (NVL (SUM (amount), 0) < 0) THEN ABS (NVL (SUM (amount), 0)) END AS debit, '+
               ' CASE WHEN (NVL (SUM (amount), 0) > 0) THEN NVL (SUM (amount), 0) END AS credit, '+
               ' '''' AS TYPE ';
  qryNaccounts.SQL.Add(sSELECT);
  qryNaccounts.SQL.Add('FROM TRANSITEM');
{
  Comment Added 26.9.2002 GG

  This code contributes to the above code in that it will return a single record
  for opening balance for account type I or E.  It uses the data from the previous
  months because there may not have been any transactions on this account this month.
}
{
   Comment Added 11/07/2005  AES

   The account type being tested should be report type from the charttype table not
   type from the chart table.  Transactions should be P/L, Balance sheet etc.

}
//  if (qryCharts.FieldByName('TYPE').AsString = 'E') or (qryCharts.FieldByName('TYPE').AsString = 'I')  then
  if (qryCharts.FieldByName('REPORTTYPE').AsString = 'P') then
    qryNaccounts.SQL.Add('WHERE CREATED < :P_DateFrom AND CREATED >=:P_DateStart ')
  else
    qryNaccounts.SQL.Add('WHERE CREATED < :P_DateFrom');

  qryNaccounts.SQL.Add('  AND ACCT = ''' + qryCharts.FieldByName('BANK').AsString + ''' AND CHART = ''' + qryCharts.FieldByName('LKEY').AsString + '''');
  qryNaccounts.SQL.Add('UNION ALL');

  qryNaccounts.SQL.Add('SELECT CREATED, DESCR, AMOUNT, REFNO, NTRANS, CREDITORCODE,');
  qryNaccounts.SQL.Add(' OWNER_CODE,ACCT,NACCOUNT,');
  qryNaccounts.SQL.Add('CASE WHEN amount < 0 THEN ABS (amount) END AS debit, ');
  qryNaccounts.SQL.Add('CASE WHEN (amount > 0) THEN amount END AS credit, ');
  qryNaccounts.SQL.Add('CASE WHEN (owner_code = ''CHEQUE'') THEN ''CHQ'' ');
  qryNaccounts.SQL.Add('     WHEN (owner_code = ''RECEIPT'') THEN ''RCP''');
  qryNaccounts.SQL.Add('     WHEN (owner_code = ''NMEMO'') THEN ''BLL'' ');
  qryNaccounts.SQL.Add('     WHEN (owner_code = ''JOURNAL'') THEN ''JNL'' ');
  qryNaccounts.SQL.Add('     WHEN (owner_code = ''CHEQREQ'') THEN ''CRQ''');
  qryNaccounts.SQL.Add('     ELSE SUBSTR (owner_code, 1, 3)  END AS TYPE ');
  qryNaccounts.SQL.Add('FROM TRANSITEM');
  qryNaccounts.SQL.Add('WHERE CREATED >= :P_DateFrom AND CREATED < :P_DateTo ' + sSQLWhere + '');
  qryNaccounts.SQL.Add('ORDER BY 9, 1');

  if (dmAxiom.runningide) then
     qryNaccounts.SQL.SaveToFile('C:\tmp\qryNaccounts.sql');

  qryNaccounts.Prepare;

//  if (qryCharts.FieldByName('TYPE').AsString = 'E') or (qryCharts.FieldByName('TYPE').AsString = 'I')  then
  if (qryCharts.FieldByName('REPORTTYPE').AsString = 'P') then
    qryNaccounts.ParamByName('P_DateStart').AsDateTime := Trunc(dtFinYearStart);
    
  qryNaccounts.ParamByName('P_DateFrom').AsDateTime := Trunc(dtpDateFrom.Date);
  qryNaccounts.ParamByName('P_DateTo').AsDateTime := Trunc(dtpDateTo.Date) + 1;

  if (dmAxiom.runningide) then
     qryNaccounts.SQL.SaveToFile('C:\tmp\qryNaccounts.sql');

  qryNaccounts.Open;
  cTotal := 0.0;

  qryNaccounts.First;

{
  Added 26.9.2002 GG

  Disable the Allocations Grid so it doesn't scroll when calculating the total
}
  qryNaccounts.DisableControls;

  while not qryNaccounts.eof do
  begin
    cTotal := cTotal + qryNaccounts.FieldByName('AMOUNT').AsCurrency;
    qryNaccounts.Next;
  end;
   qryNaccounts.First;

{
  Code Modified 26.9.2002 GG

  This should display as two significant decimals.

  sbarInfo.Panels[0].Text := 'Total = ' + formatfloat('$###,.##',cTotal);
}
   // AES 07/09/2017 Added localization to formatting string
   FmtString := GetCurrencySymbol + '#,##0.00;('+GetCurrencySymbol+'#,##0.00)';
   sbarInfo.Panels[0].Text := 'Total = ' + formatfloat(FmtString, cTotal*-1);

{   with qryChartBalance do
   begin
     close;
     ParamByName('Chart').AsString := qryCharts.FieldByName('CODE_IDX').AsString;
     ParamByName('Entity').AsString := dmAxiom.Entity;
     ParamByName('DateFrom').AsDateTime := Trunc(dtpDateFrom.Date);
     ParamByName('DateTo').AsDateTime := Trunc(dtpDateTo.Date) + 1;
     Open;
     sbarInfo.Panels[1].Text := 'Total for period = ' + formatfloat('$##0,.00',qryChartBalance.FieldByName('balance').AsCurrency*-1);
   end;

   }

{
  Added 26.9.2002 GG

  Enable the allocations grid now.
}
  qryNaccounts.EnableControls;

end;

procedure TfrmLedgers.ppLabel14GetText(Sender: TObject; var Text: String);
begin
   Text := 'for the period ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date);
end;

end.




