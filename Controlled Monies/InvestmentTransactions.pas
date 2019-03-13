unit InvestmentTransactions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, MemDS, DBAccess, OracleUniProvider, Uni, dxBar,
  StdCtrls, DateChangeButton, ComCtrls, ImgList, ExtCtrls, cxContainer,
  cxTextEdit, cxCheckBox, cxSplitter, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppBands, ppCache, cxCurrencyEdit, daDataView, daQueryDataView,
  daUniDAC, ppModule, daDataModule, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ActnList, ActnMan, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox,citfunc, cxGridBandedTableView,
  cxGridDBBandedTableView, ppVar, raCodMod, ppParameter, ppStrtch, ppRegion,
  cxGroupBox, Menus, daSQL, cxLookAndFeelPainters, cxLookAndFeels,
  XPStyleActnCtrls, ppFileUtils, ppIniStorage, cxPCdxBarPopupMenu,
  ppDesignLayer, dxCore, cxNavigator, cxCalendar, System.Actions,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmInvestmentTransactions = class(TForm)
    cxPcTransactions: TcxPageControl;
    tabInvestments: TcxTabSheet;
    tabFilter: TcxTabSheet;
    dbgrDepositsDBTableView1: TcxGridDBTableView;
    dbgrDepositsLevel1: TcxGridLevel;
    dbgrDeposits: TcxGrid;
    dbgrTransactions: TcxGrid;
    tvTransactions: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qryDeposit: TUniQuery;
    dsDeposit: TUniDataSource;
    dbgrDepositsDBTableView1DBColumn1: TcxGridDBColumn;
    dbgrDepositsDBTableView1DBColumn2: TcxGridDBColumn;
    dbgrDepositsDBTableView1DBColumn3: TcxGridDBColumn;
    dbgrDepositsDBTableView1DBColumn4: TcxGridDBColumn;
    dbgrDepositsDBTableView1DBColumn5: TcxGridDBColumn;
    dbgrDepositsDBTableView1DBColumn6: TcxGridDBColumn;
    dbgrDepositsDBTableView1DBColumn7: TcxGridDBColumn;
    qryInvestmentTransactions: TUniQuery;
    dsInvestmentTransactions: TUniDataSource;
    dxBarManager1: TdxBarManager;
    tvTransactionsDBColumn1: TcxGridDBColumn;
    tvTransactionsDBColumn2: TcxGridDBColumn;
    tvTransactionsDBColumn3: TcxGridDBColumn;
    tvTransactionsCREDIT: TcxGridDBColumn;
    tvTransactionsDEBIT: TcxGridDBColumn;
    lblBank: TLabel;
    cbBank: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    dxbReceipt: TdxBarButton;
    dxbPayment: TdxBarButton;
    dxBInterest: TdxBarButton;
    dxBFee: TdxBarButton;
    dxBExit: TdxBarButton;
    ilstControlledToolbar: TImageList;
    dxbDebositNew: TdxBarButton;
    dxBDepositEdit: TdxBarButton;
    Label4: TLabel;
    edAccountName: TEdit;
    Label6: TLabel;
    edClient: TEdit;
    tmrSearch: TTimer;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    Label8: TLabel;
    tbClientSearch: TcxTextEdit;
    cbShowChildren: TcxCheckBox;
    Label31: TLabel;
    tbFileSearch: TcxTextEdit;
    dxBDepositReverse: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dsDep: TUniDataSource;
    plDep: TppDBPipeline;
    ActionManager1: TActionManager;
    actReceipt: TAction;
    edMatter: TcxLookupComboBox;
    dsMRUList: TUniDataSource;
    qryMRUList: TUniQuery;
    edAccountNumber: TEdit;
    Label7: TLabel;
    tvTransactionsDBColumn6: TcxGridDBColumn;
    tvDeposits: TcxGridDBBandedTableView;
    tvDepositsNAME: TcxGridDBBandedColumn;
    tvDepositsACCOUNT_NUMBER: TcxGridDBBandedColumn;
    tvDepositsFILEID: TcxGridDBBandedColumn;
    tvDepositsCLIENT: TcxGridDBBandedColumn;
    tvDepositsTOTAL: TcxGridDBBandedColumn;
    tvDepositsCREDIT: TcxGridDBBandedColumn;
    tvDepositsINTCR: TcxGridDBBandedColumn;
    rptCMTrialBalance: TppReport;
    btnCMTrialBalance: TdxBarButton;
    plDepositsRPT: TppDBPipeline;
    qryDepositsRPT: TUniQuery;
    dsDepositsRPT: TUniDataSource;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel9: TppLabel;
    qryGetClientName: TUniQuery;
    ppRegion1: TppRegion;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBText16: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine5: TppLine;
    cbNonZero: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpDateFrom: TDateTimePicker;
    dtpDateTo: TDateTimePicker;
    dcToday: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    tvDepositsNDEPOSITACCOUNT: TcxGridDBBandedColumn;
    popDepGrid: TPopupMenu;
    miChangeDepositDate: TMenuItem;
    qrySystem: TUniQuery;
    dsSystem: TUniDataSource;
    plSystem: TppDBPipeline;
    rpReceipt: TppReport;
    ppDetailBand2: TppDetailBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppDBImage1: TppDBImage;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    qryDep: TUniQuery;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    Report: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    chkDateFrom: TCheckBox;
    chkDateTo: TCheckBox;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    tvTransactionsNINVTRAN: TcxGridDBColumn;
    dxBarButton4: TdxBarButton;
    tvDepositsAPPROVAL_DATE: TcxGridDBBandedColumn;
    dxbReGenerateFile: TdxBarButton;
    ppDBText30: TppDBText;
    ppLabel11: TppLabel;
    ppDBText31: TppDBText;
    tvDepositsBANK: TcxGridDBBandedColumn;
    procedure qryDepositAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dxBExitClick(Sender: TObject);
    procedure dxbReceiptClick(Sender: TObject);
    procedure dxbPaymentClick(Sender: TObject);
    procedure dxBInterestClick(Sender: TObject);
    procedure dxBFeeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBDepositEditClick(Sender: TObject);
    procedure dxbDebositNewClick(Sender: TObject);
    procedure cxPcTransactionsChange(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure tbClientSearchPropertiesChange(Sender: TObject);
    procedure tbFileSearchPropertiesChange(Sender: TObject);
    procedure cbShowChildrenClick(Sender: TObject);
    procedure dxBDepositReverseClick(Sender: TObject);
    procedure tvTransactionsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure actReceiptExecute(Sender: TObject);
    procedure actReceiptUpdate(Sender: TObject);
    procedure edAccountNamePropertiesCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvDepositsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure btnCMTrialBalanceClick(Sender: TObject);
    procedure ppLabel9Print(Sender: TObject);
    procedure tvDepositsFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure miChangeDepositDateClick(Sender: TObject);
    procedure chkDateToClick(Sender: TObject);
    procedure chkDateFromClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxbReGenerateFileClick(Sender: TObject);
    procedure tvDepositsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    sOrderBy: string;
    procedure newTransaction(sType : String);
    procedure MakeSQL;
    procedure PrintInvReceipt(AInvReceipt: integer);
  public
    { Public declarations }
  end;

const
   csSQL = 'select a.NAME,a.account_number,a.nmatter,a.fileid,nvl(a.shortdescr,b.shortdescr) as shortdescr,'+
           'a.ACCOUNT_NAME,a.client,(nvl(a.balance,0) + nvl(b.IntBalance,0)) as total,'+
           'nvl(a.balance,0) as balance,nvl(b.Intbalance,0) as Intbalance,'+
           'NVL(a.NDEPOSITACCOUNT,b.NDEPOSITACCOUNT) as NDEPOSITACCOUNT, '+
           'nvl(to_char(a.approval_date,''dd/mm/yyyy''), ''N/A'') approval_date, a.bank from ';

   csSQL1 = '(select b.NAME,d.account_number,m.nmatter,m.fileid,m.shortdescr,'+
            'd.ACCOUNT_NAME,m.title as client,nvl(sum(ti.AMOUNT),0) as total,'+
            'nvl(sum(ti.AMOUNT),0) as balance,d.NDEPOSITACCOUNT, max(d.approval_date) approval_date, d.bank '+
            'from deposit_account d,investment_trans ti,matter m,bank b '+
            'where d.nmatter = m.nmatter '+
            'and d.bank = b.acct '+
            'and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+) '+
            'and NVL(tran_type,''C'') = ''C'' ';

   csSQL2 = '(select b.NAME,d.account_number,m.nmatter,m.fileid,m.shortdescr,'+
            'd.ACCOUNT_NAME,m.title as client,nvl(sum(ti.AMOUNT),0) as total,'+
            'nvl(sum(ti.AMOUNT),0) as IntBalance,d.NDEPOSITACCOUNT, max(d.approval_date) approval_date, d.bank '+
            'from deposit_account d,investment_trans ti,matter m,bank b '+
            'where d.nmatter = m.nmatter '+
            'and d.bank = b.acct '+
            'and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+) '+
            'and NVL(tran_type,''I'') = ''I'' ';


var
  frmInvestmentTransactions: TfrmInvestmentTransactions;

implementation


uses miscFunc, InvestmentTransactionNew, depositAccount, Reports, AxiomData,
     MSearch, AccountType, Investment_Request;

{$R *.dfm}

procedure TfrmInvestmentTransactions.qryDepositAfterScroll(
  DataSet: TDataSet);
begin
   qryInvestmentTransactions.Close;
   qryInvestmentTransactions.paramByName('ndepositAccount').AsInteger := qryDeposit.fieldByName('ndepositAccount').AsInteger;
   qryInvestmentTransactions.open;
   dxBDepositReverse.Enabled := False;

   //   dxBarSubItem1.Enabled := (not qryDeposit.IsEmpty );
end;

procedure TfrmInvestmentTransactions.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);

   AddBanks(cbBank,'I');
   dctoday.Click;
   sOrderBy := 'order by client,nmatter';

   dxbDebositNew.Enabled := dmAxiom.Security.Matter.ControlledMonies.CanAdd;
   dxBDepositEdit.Enabled := dmAxiom.Security.Matter.ControlledMonies.CanEdit;
   dxbReceipt.Enabled := dmAxiom.Security.Matter.ControlledMonies.CanAddDeposit;
   dxbPayment.Enabled := dmAxiom.Security.Matter.ControlledMonies.CanAddWithdrawl;
   dxBFee.Enabled := dmAxiom.Security.Matter.ControlledMonies.CanAddCharges;
end;

procedure TfrmInvestmentTransactions.MakeSQL;
var
  sSQL, sSQL1, sSQL2: string;
begin
   sSQL := csSQL;
   sSQL1 := csSQL1;
   sSQL2 := csSQL2;
   qryDeposit.SQL.Clear;
   {with qryDeposit do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select b.NAME,d.NDEPOSITACCOUNT,d.account_number,m.nmatter,m.fileid,d.ACCOUNT_NAME,m.title as client,nvl(sum(ti.AMOUNT),0) as total,');
      SQL.Add('nvl(sum(decode(substr(ti.AMOUNT,0,1),''-'',0,ti.AMOUNT)),0) as credit,');
      SQL.Add('nvl(sum(decode(substr(ti.AMOUNT,0,1),''-'',0-ti.AMOUNT,0)),0) as debit');
      SQL.Add('from deposit_account d,investment_trans ti,matter m,bank b');
      SQL.Add('where d.nmatter = m.nmatter');
      SQL.Add('and d.bank = b.acct');
      SQL.Add('and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+)');
   end; }

{   sSQL := 'select a.NAME,a.account_number,a.nmatter,a.fileid,nvl(a.shortdescr,b.shortdescr) as shortdescr,'+
           'a.ACCOUNT_NAME,a.client,(a.balance+b.IntBalance ) as total,'+
           'a.balance,b.Intbalance,a.NDEPOSITACCOUNT from ';

   sSQL1 := '(select b.NAME,d.account_number,m.nmatter,m.fileid,m.shortdescr,'+
            'd.ACCOUNT_NAME,m.title as client,nvl(sum(ti.AMOUNT),0) as total,'+
            'nvl(sum(ti.AMOUNT),0) as balance,d.NDEPOSITACCOUNT '+
            'from deposit_account d,investment_trans ti,matter m,bank b '+
            'where d.nmatter = m.nmatter '+
            'and d.bank = b.acct '+
            'and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+) '+
            'and tran_type = ''C'' ';

   sSQL2 := '(select b.NAME,d.account_number,m.nmatter,m.fileid,m.shortdescr,'+
            'd.ACCOUNT_NAME,m.title as client,nvl(sum(ti.AMOUNT),0) as total,'+
            'nvl(sum(ti.AMOUNT),0) as IntBalance,d.NDEPOSITACCOUNT '+
            'from deposit_account d,investment_trans ti,matter m,bank b '+
            'where d.nmatter = m.nmatter '+
            'and d.bank = b.acct '+
            'and d.NDEPOSITACCOUNT = ti.NDEPOSITACCOUNT (+) '+
            'and tran_type = ''I'' ';   }

   with qryInvestmentTransactions do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select created,descr,decode(type,''W/D'',''Withdrawal'',''DEP'',''Deposit'',''CHG'',''Charge'',''INT'',''Interest'', ''REV'', ''Reversal'',''INTWDL'',''Interest Withdrawal'') as TYPE,');
      SQL.Add('decode(substr(AMOUNT,0,1),''-'',0,AMOUNT) as credit,');
      SQL.Add('decode(substr(AMOUNT,0,1),''-'',0-AMOUNT,0) as debit, ninvtran,reference, type as currType ');
      SQL.Add('from INVESTMENT_TRANS');
      SQL.Add('where ndepositaccount = :ndepositaccount');
   end;
   if cbBank.Text <> '' then
   begin
      sSQL1 := sSQL1 + ' and b.acct = ''' + cbBank.Text + '''';
      sSQL2 := sSQL2 + ' and b.acct = ''' + cbBank.Text + '''';
//      qryDeposit.SQL.Add('and b.acct = ''' + cbBank.Text + '''');
   end;

   if edAccountName.Text <> '' then
   begin
      sSQL1 := sSQL1 + ' and d.account_name  like ''%' + edAccountName.Text + '%''';
      sSQL2 := sSQL2 + ' and d.account_name  like ''%' + edAccountName.Text + '%''';
//      qryDeposit.SQL.Add('and d.account_name  like ''%' + edAccountName.Text + '%''');
   end;

   if edMatter.Text <> '' then
   begin
      sSQL1 := sSQL1 + ' and m.fileid  like ''%' + edMatter.Text + '%''';
      sSQL2 := sSQL2 + ' and m.fileid  like ''%' + edMatter.Text + '%''';
//      qryDeposit.SQL.Add('and m.fileid  like ''%' + edMatter.Text + '%''');
   end;

   if edAccountNumber.Text <> '' then
   begin
      sSQL1 := sSQL1 + ' and d.account_number  like ''%' + edAccountNumber.Text + '%''';
      sSQL2 := sSQL2 + ' and d.account_number  like ''%' + edAccountNumber.Text + '%''';
//      qryDeposit.SQL.Add('and d.account_number  like ''%' + edAccountNumber.Text + '%''');
   end;

   if edClient.Text <> '' then
   begin
      if(not cbShowChildren.Checked) then
      begin
         sSQL1 := sSQL1 + ' and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%') + ') ';
         sSQL2 := sSQL2 + ' and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%') + ') ';
//         qryDeposit.SQL.Add('and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%') + ') ')
      end
      else
      begin
         sSQL1 := sSQL1 + ' and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE NNAMEMASTER IN (SELECT NNAME FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%')+ ')) ';
         sSQL2 := sSQL2 + ' and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE NNAMEMASTER IN (SELECT NNAME FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%')+ ')) ';
//         qryDeposit.SQL.Add('and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE NNAMEMASTER IN (SELECT NNAME FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%')+ ')) ');
      end;
   end;

    // check the dates

   if chkDateFrom.Checked then
   begin
      sSQL1 := sSQL1 + ' and trunc(ti.created) >= trunc(:dtFrom)';
      sSQL2 := sSQL2 + ' and trunc(ti.created) >= trunc(:dtFrom)';
//      qryDeposit.SQL.Add('and ti.created >= trunc(:dtFrom)');
      qryInvestmentTransactions.SQL.Add('and trunc(created) >= trunc(:dtFrom)');
//      qryDeposit.paramByname('dtFrom').AsDateTime := dtpDateFrom.DateTime;
      qryInvestmentTransactions.paramByname('dtFrom').AsDateTime := dtpDateFrom.DateTime;
   end;

   if chkDateTo.Checked then
   begin
      sSQL1 := sSQL1 + ' and trunc(ti.created) <= trunc(:dtTo)';
      sSQL2 := sSQL2 + ' and trunc(ti.created) <= trunc(:dtTo)';
//      qryDeposit.SQL.Add('and ti.created <= trunc(:dtTo)');
      qryInvestmentTransactions.SQL.Add('and trunc(created) <= trunc(:dtTo)');
//      qryDeposit.paramByname('dtTo').AsDateTime := dtpDateTo.DateTime;
      qryInvestmentTransactions.paramByname('dtTo').AsDateTime := dtpDateTo.DateTime;
   end;

   sSQL1 := sSQL1 + ' group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_NAME,m.title,d.account_number,m.shortdescr, d.bank';
   sSQL2 := sSQL2 + ' group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_NAME,m.title,d.account_number,m.shortdescr, d.bank';

   if cbNonZero.Checked then
      qryDeposit.SQL.Add(sSQL + sSQL1 + ') a, '+ sSQL2 + ') b where a.NDEPOSITACCOUNT = b.NDEPOSITACCOUNT(+) AND (a.balance+b.IntBalance) <> 0 ')
   else
      qryDeposit.SQL.Add(sSQL + sSQL1 + ') a, '+ sSQL2 + ') b where a.NDEPOSITACCOUNT = b.NDEPOSITACCOUNT(+) ');

   qryInvestmentTransactions.SQL.Add('order by created');

   if chkDateFrom.Checked then
   begin
      qryDeposit.paramByname('dtFrom').AsDateTime := dtpDateFrom.DateTime;
   end;

   if chkDateTo.Checked then
   begin
      qryDeposit.paramByname('dtTo').AsDateTime := dtpDateTo.DateTime;
   end;

//   qryDeposit.SQL.Add('group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_NAME,m.title,d.account_number');

//   qryInvestmentTransactions.SQL.Add('order by created');

    if dmAxiom.runningide then
       qryDeposit.SQL.SaveToFile('c:\tmp\controlledmoney.sql');       

    qryDeposit.open;
end;

procedure TfrmInvestmentTransactions.dxBExitClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmInvestmentTransactions.newTransaction(sType : String);
var
   frmNewTransaction : TfrmInvestmentTransactionNew;
   iDeposit,iMatter, iTransId : integer;
   sOldType, sBank: string;
begin
   iTransId := 0;
   sOldType := '';
   iDeposit := qryDeposit.fieldByName('NDEPOSITACCOUNT').AsInteger;
   iMatter  := qryDeposit.fieldByName('NMATTER').AsInteger;
   sBank    := qryDeposit.fieldByName('BANK').AsString;
   if qryInvestmentTransactions.Active  then
   begin
      iTransId := qryInvestmentTransactions.FieldByName('ninvtran').AsInteger;
      sOldType := qryInvestmentTransactions.fieldByName('currType').AsString;
   end;
   frmNewTransaction := TfrmInvestmentTransactionNew.Create(self);
   frmNewTransaction.setUp(iDeposit,iMatter,iTransId, sType, sOldType, sBank);
   if frmNewTransaction.showModal = mrOk then
      makeSql;
end;

procedure TfrmInvestmentTransactions.dxbReceiptClick(Sender: TObject);
begin
    newTransaction(cnIDEPOSIT);
end;

procedure TfrmInvestmentTransactions.dxbReGenerateFileClick(Sender: TObject);
begin
   Request_Acct_Create_File(qryDeposit.fieldByName('NMATTER').AsInteger,
               StrToInt(TableString('MATTER', 'NMATTER', qryDeposit.fieldByName('NMATTER').AsInteger, 'NNAME')));
end;

procedure TfrmInvestmentTransactions.dxbPaymentClick(Sender: TObject);
begin
   newTransaction(cniWITHDRAWAL);
end;

procedure TfrmInvestmentTransactions.dxBInterestClick(Sender: TObject);
begin
   newTransaction(cniINTEREST);
end;

procedure TfrmInvestmentTransactions.dxBFeeClick(Sender: TObject);
begin
   newTransaction(cniCharge);
end;

procedure TfrmInvestmentTransactions.FormShow(Sender: TObject);
begin
//   makeSQL;
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
   qryMRUList.open;
   dxBDepositEdit.Enabled := false;
   dxbReceipt.Enabled := false;
   dxbPayment.Enabled := false;
   dxBFee.Enabled := false;

end;

procedure TfrmInvestmentTransactions.dxBDepositEditClick(Sender: TObject);
var frmDeposit : TfrmDepositAccount;
begin
   frmDeposit := TfrmDepositAccount.create(self);
   frmDeposit.locateByKey(qryDeposit.fieldByname('NDEPOSITACCOUNT').AsVariant);
   frmDeposit.FileId := MatterString(qryDeposit.fieldByName('NMATTER').AsInteger, 'FILEID');
   frmDeposit.ShowModal;
   MakeSql;
end;

procedure TfrmInvestmentTransactions.dxbDebositNewClick(Sender: TObject);
var frmDeposit : TfrmDepositAccount;
begin
   frmDeposit := TfrmDepositAccount.create(self);
   frmDeposit.qrySource.Insert;
   frmDeposit.ShowModal;
   MakeSql;
end;

procedure TfrmInvestmentTransactions.cxPcTransactionsChange(
  Sender: TObject);
begin
   if cxPcTransactions.ActivePage = tabInvestments then
   begin
      MakeSql;
      if (tvDeposits.DataController.RowCount > 0) then
      begin
          dxBDepositEdit.Enabled := (not qryDeposit.fieldByName('ndepositAccount').IsNull) and dmAxiom.Security.Matter.ControlledMonies.CanEdit;
          dxbReceipt.Enabled := (not qryDeposit.fieldByName('ndepositAccount').IsNull) and dmAxiom.Security.Matter.ControlledMonies.CanAddDeposit;
          dxbPayment.Enabled := (not qryDeposit.fieldByName('ndepositAccount').IsNull) and dmAxiom.Security.Matter.ControlledMonies.CanAddWithdrawl;
          dxBFee.Enabled := (not qryDeposit.fieldByName('ndepositAccount').IsNull) and dmAxiom.Security.Matter.ControlledMonies.CanAddCharges;
      end
      else
      begin
          dxBDepositEdit.Enabled := false;
          dxbReceipt.Enabled := false;
          dxbPayment.Enabled := false;
          dxBFee.Enabled := false;
      end;
   end
   else
   begin
      dxBDepositEdit.Enabled := False;
      dxbReceipt.Enabled := False;
      dxbPayment.Enabled := False;
      dxBFee.Enabled := False;
//      dxBarSubItem1.Enabled := False;
   end;
end;

procedure TfrmInvestmentTransactions.tmrSearchTimer(Sender: TObject);
begin
   tmrSearch.Enabled := false;
   if cxPcTransactions.ActivePage = tabInvestments then
      MakeSQL;
end;

procedure TfrmInvestmentTransactions.tbClientSearchPropertiesChange(
  Sender: TObject);
begin
   tmrSearch.Enabled := true;
   edClient.Text := tbClientSearch.Text;
end;

procedure TfrmInvestmentTransactions.tbFileSearchPropertiesChange(
  Sender: TObject);
begin
   tmrSearch.Enabled := true;
   edMatter.Text := tbFileSearch.Text;
end;

procedure TfrmInvestmentTransactions.cbShowChildrenClick(Sender: TObject);
begin
   tmrSearch.Enabled := true;
end;

procedure TfrmInvestmentTransactions.dxBDepositReverseClick(
  Sender: TObject);
begin
   newTransaction(cniREVERSAL);
end;

procedure TfrmInvestmentTransactions.tvTransactionsCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   dxBDepositReverse.Enabled := True;
end;

procedure TfrmInvestmentTransactions.dxBarButton1Click(Sender: TObject);
var
   frmReports :TfrmReports;
begin
   try
      frmReports := TfrmReports.create(self);
      frmReports.LaunchReport('Controlled Monies');
   finally
      frmReports.Close;
   end;
end;

procedure TfrmInvestmentTransactions.dxBarButton4Click(Sender: TObject);
var
   frmAccountType : TfrmAccountType;
begin
  frmAccountType := TfrmAccountType.Create(self);
  frmAccountType.ShowModal;
  frmAccountType.Free;
end;

procedure TfrmInvestmentTransactions.actReceiptExecute(Sender: TObject);
begin
   if tabInvestments.Visible then
      PrintInvReceipt(qryInvestmentTransactions.fieldByname('ninvtran').AsInteger);

{   begin
      qryDep.Close;
      qryDep.ParamByName('ninvtran').AsInteger := qryInvestmentTransactions.fieldByname('ninvtran').AsInteger;
      qryDep.open;
      qrySystem.Close;
      qrySystem.ParamByName('entity').AsString := dmAxiom.Entity;
      qrySystem.Open;
      if not dmAxiom.runningide then
         rpReceipt.DeviceType := 'Printer'
      else
         rpReceipt.DeviceType := 'Screen';

      rpReceipt.Print;
   end;   }
end;

procedure TfrmInvestmentTransactions.actReceiptUpdate(Sender: TObject);
begin
   try
      dxBarButton3.Enabled := ((qryInvestmentTransactions.fieldByname('TYPE').AsString = 'Deposit') and tabInvestments.Visible);
   except
     //
   end;
end;

procedure TfrmInvestmentTransactions.edAccountNamePropertiesCloseUp(
  Sender: TObject);
var
  selectedRow : String;
begin
   selectedRow := TcxLookupComboBox(Sender).Text;

   // If search selected, open matter search screen
   if selectedRow = 'SEARCH...' then
   begin
     if not FormExists(frmMatterSearch) then
       Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
     if frmMatterSearch.ShowModal = mrOk then
     begin

       edMatter.editValue :=  dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
       qryMRUList.Refresh;
     end;
   end
   else
      edAccountName.Text := '';

end;

procedure TfrmInvestmentTransactions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmInvestmentTransactions.tvDepositsCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   dxbReGenerateFile.Enabled := False;
   if (tvDepositsAPPROVAL_DATE.EditValue = 'N/A') then
   begin
      dxbReGenerateFile.Enabled := dmAxiom.Security.Matter.ControlledMonies.CanAddDeposit;
   end;
end;

procedure TfrmInvestmentTransactions.tvDepositsColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   qryDeposit.Close;
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

procedure TfrmInvestmentTransactions.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
   Text := SystemString('COMPANY');
end;

procedure TfrmInvestmentTransactions.btnCMTrialBalanceClick(
  Sender: TObject);
var
   sSQL,sSQL1,sSQL2: string;
begin
   sSQL := csSQL;
   sSQL1 := csSQL1;
   sSQL2 := csSQL2;

   if cbBank.Text <> '' then
   begin
      sSQL1 := sSQL1 + ' and b.acct = ''' + cbBank.Text + '''';
      sSQL2 := sSQL2 + ' and b.acct = ''' + cbBank.Text + '''';
   end;

   if edAccountName.Text <> '' then
   begin
      sSQL1 := sSQL1 + ' and d.account_name  like ''%' + edAccountName.Text + '%''';
      sSQL2 := sSQL2 + ' and d.account_name  like ''%' + edAccountName.Text + '%''';
   end;

   if edMatter.Text <> '' then
   begin
      sSQL1 := sSQL1 + ' and m.fileid  like ''%' + edMatter.Text + '%''';
      sSQL2 := sSQL2 + ' and m.fileid  like ''%' + edMatter.Text + '%''';
   end;

   if edAccountNumber.Text <> '' then
   begin
      sSQL1 := sSQL1 + ' and d.account_number  like ''%' + edAccountNumber.Text + '%''';
      sSQL2 := sSQL2 + ' and d.account_number  like ''%' + edAccountNumber.Text + '%''';
   end;

   if edClient.Text <> '' then
   begin
      if(not cbShowChildren.Checked) then
      begin
         sSQL1 := sSQL1 + ' and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%') + ') ';
         sSQL2 := sSQL2 + ' and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%') + ') ';
      end
      else
      begin
         sSQL1 := sSQL1 + ' and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE NNAMEMASTER IN (SELECT NNAME FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%')+ ')) ';
         sSQL2 := sSQL2 + ' and m.NCLIENT IN (SELECT NCLIENT FROM PHONEBOOK WHERE NNAMEMASTER IN (SELECT NNAME FROM PHONEBOOK WHERE UPPER(SEARCH) LIKE ' + QuotedStr('%' + Uppercase(edClient.Text) + '%')+ ')) ';
      end;
   end;

   sSQL1 := sSQL1 + ' and trunc(ti.created) <= trunc(:dtTo)';
   sSQL2 := sSQL2 + ' and trunc(ti.created) <= trunc(:dtTo)';

//   sSQL1 := sSQL1 + ' and ti.amount <> 0';
//   sSQL2 := sSQL2 + ' and ti.amount <> 0';

   sSQL1 := sSQL1 + ' group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_NAME,m.title,d.account_number,m.shortdescr';
   sSQL2 := sSQL2 + ' group by b.NAME,d.NDEPOSITACCOUNT,m.nmatter,m.fileid,d.ACCOUNT_NAME,m.title,d.account_number,m.shortdescr';

   qryDepositsRPT.Close;
   qryDepositsRPT.SQL.Clear;
   qryDepositsRPT.SQL.Add(sSQL + sSQL1 + ') a, '+ sSQL2 + ') b where a.NDEPOSITACCOUNT = b.NDEPOSITACCOUNT and (a.balance+b.IntBalance) <> 0 and a.balance <> 0 and b.Intbalance <> 0 ' + sOrderBy);

   qryDepositsRPT.paramByname('dtTo').AsDateTime := Now();

   rptCMTrialBalance.Print;
end;

procedure TfrmInvestmentTransactions.ppLabel9Print(Sender: TObject);
begin
   qryGetClientName.Close;
   qryGetClientName.ParamByName('fileid').AsString := ppDBText15.FieldValue;
   qryGetClientName.Open;

   ppLabel9.Text := qryGetClientName.Fields[0].AsString;
end;

procedure TfrmInvestmentTransactions.tvDepositsFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
   dxbPayment.Enabled := (qryDeposit.FieldByName('TOTAL').AsCurrency > 0);
   dxbFee.Enabled := (qryDeposit.FieldByName('TOTAL').AsCurrency > 0);
end;

procedure TfrmInvestmentTransactions.miChangeDepositDateClick(
  Sender: TObject);
var
  sTmp : TDateTime;
begin
   sTmp := qryInvestmentTransactions.FieldbyName('CREATED').AsDateTime;
   if (InputQueryDate('Change Transaction Date', 'Please enter the new transaction date: ',  sTmp)) then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'UPDATE INVESTMENT_TRANS SET CREATED =:CREATED WHERE NINVTRAN =:NINVTRAN';
         ParambyName('CREATED').AsDateTime := sTmp;
         ParambyName('NINVTRAN').AsInteger := qryInvestmentTransactions.FieldbyName('NINVTRAN').AsInteger;
         ExecSQL;
         Close;
         ShowMessage('Transaction Date successfully changed');
         qryInvestmentTransactions.Close;
         qryInvestmentTransactions.Open;
         Close;
      end;
   end;
end;

procedure TfrmInvestmentTransactions.PrintInvReceipt(AInvReceipt: integer);
var
   sReceipt, nAInvReceipt, NewChar: string;
   acct, Buffer, Dest, sSQL, Bind: string;
   x,i: integer;
   lDataModule: TdaDataModule;
   CompCount, CompTotal: integer;
   lSQL: TdaSQL;
   bNoTemplate: boolean;
begin
   if (dmAxiom.orsAxiom.Connected = True) then
      dmAxiom.orsAxiom.Disconnect;
   dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
   dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
   dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
   dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
   dmAxiom.orsAxiom.Connect;

   sReceipt := 'RECEIPT_INV';
   nAInvReceipt:= IntToStr(AInvReceipt);
   acct := dmAxiom.Entity;
   bNoTemplate := False;

   try
      dmAxiom.qryRB_Items.Close;
      Report.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      Report.Template.DatabaseSettings.NameField := 'ITEM_Name';
      Report.Template.DatabaseSettings.TemplateField := 'Template';
      Report.Template.DatabaseSettings.Name := sReceipt;
      Report.Template.LoadFromDatabase;
   except
      bNoTemplate := True;
   end;

   if bNoTemplate then
   begin
      qryDep.Close;
      qryDep.ParamByName('ninvtran').AsInteger := AInvReceipt;
      qryDep.open;
      qrySystem.Close;
      qrySystem.ParamByName('entity').AsString := acct;
      qrySystem.Open;

      if not dmAxiom.runningide then
         rpReceipt.DeviceType := 'Printer'
      else
         rpReceipt.DeviceType := 'Screen';
      rpReceipt.Print;
   end
   else
   begin
      if (Report.Parameters.Count > 0) then
      begin
         with Report.Parameters do
         begin
            Items['ninvtran'].Value := AInvReceipt;
            Items['ENTITY'].Value := acct;
         end;
      end
      else
      begin
         x := 0;
         i := 0;

         try
            lDataModule := daGetDataModule(Report);
         except
            Raise;
         end;

         if (lDataModule <> nil) then
             CompTotal := lDataModule.DataViewCount;

         Dest := '';
         Buffer := '';
         sSQL := '';
         for CompCount := 0 to CompTotal - 1 do
         begin
             {get SQL object}
             Dest := '';
             Buffer := '';
             sSQL := '';
             x := 0;
             i := 0;
             if (GetSQLObject(Report, lSQL, CompCount)) then
             begin
                sSQL := lSQL.SQLText.Text;

                while i < Length(sSQL) do
                begin
                   if (sSQL[i] <> ':') then
                   begin
                      if sSQL[i] = #10 then
                         Dest := Dest + ' ';
                      if ((sSQL[i] > chr(64)) and (sSQL[i] < chr(91))) or
                         ((sSQL[i] > chr(96)) and (sSQL[i] < chr(123))) or
                         (sSQL[i] = chr(46)) or (sSQL[i] = chr(124)) or (sSQL[i] = chr(40)) or
                         (sSQL[i] = chr(41)) or (sSQL[i] = chr(43)) or (sSQL[i] = chr(45)) or
                         (sSQL[i] = chr(42)) or (sSQL[i] = chr(47)) or
                         ((sSQL[i] > chr(47)) and (sSQL[i] < chr(58)) or
                         (sSQL[i] = chr(60)) or (sSQL[i] = chr(61)) or (sSQL[i] = chr(62))) or
                         (sSQL[i] = chr(32)) or (sSQL[i] = chr(44)) or (sSQL[i] = chr(39)) or
                         (sSQL[i] = chr(95)) or (sSQL[i] = chr(38)) then
                         Dest := Dest + sSQL[i];
                      inc(i);
                   end
                   else
                   begin
                      if (sSQL[i+1] <> ' ') and (sSQL[i+1] <> chr(39)) then
                      begin
                         Buffer := Dest;
                         x := i;
                         Bind := '';
                         NewChar := sSQL[x];
                         while (NewChar <> ' ') and (NewChar <> #10) do
                         begin
                            Bind := Bind + NewChar;
                            inc(x);
                            NewChar := sSQL[x];
                         end;
                         if Trim(UpperCase(Bind)) = ':NINVTRAN' then
                         begin
                            if nAInvReceipt = '' then nAInvReceipt := '0';
                            Dest := Dest + nAInvReceipt + ' ';
                         end;
                         if Trim(UpperCase(Bind)) = ':ENTITY' then
                         begin
                            Dest := Dest + '''' + acct + ''' ';
                         end;
                         i := x;
                      end
                      else
                      begin
                         Dest := Dest + ':';
                         inc(i);
                      end;
                   end;
                end;
            end;
            lSQL.DatabaseName := dmAxiom.orsAxiom.Name;
            lSQL.SQLText.Text := Dest;
         end;
      end;

      if not dmAxiom.runningide then
         Report.DeviceType := 'Printer'
      else
         Report.DeviceType := 'Screen';
      Report.Print;
   end;
   dmAxiom.orsAxiom.Disconnect;
end;

procedure TfrmInvestmentTransactions.chkDateToClick(Sender: TObject);
begin
  dtpDateTo.Enabled := chkDateTo.Checked;
end;

procedure TfrmInvestmentTransactions.chkDateFromClick(Sender: TObject);
begin
  dtpDateFrom.Enabled := chkDateFrom.Checked;
end;

end.
