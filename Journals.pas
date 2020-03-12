unit Journals;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Grids, DBGrids, Menus, Buttons,
  ExtCtrls, DBCtrls, NumberEdit, DateChangeButton,
  ImgList, ToolWin, OracleUniProvider, Uni, DBAccess, MemDS, ActnList, ActnMan, dxBar,
  cxControls, cxSplitter, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxRadioGroup,
  cxLookAndFeels, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxCurrencyEdit, cxContainer, cxGroupBox, cxPC, dxStatusBar, cxButtonEdit,
  cxDropDownEdit, Variants, cxLookAndFeelPainters, XPStyleActnCtrls, cxGridExportLink,
  cxPCdxBarPopupMenu, ppCtrls, ppBands, ppVar, ppMemo, ppReport, ppStrtch,
  ppSubRpt, ppPrnabl, ppClass, ppCache, ppDB, ppDesignLayer, ppParameter,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppModule, raCodMod, dxCore, cxNavigator,
  cxCheckBox, cxGridBandedTableView, cxGridDBBandedTableView, System.Actions,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, System.ImageList, dxScrollbarAnnotations;

const
  isCASHBOOK = 0;
  isFILTER = 1;

type
  TfrmJournals = class(TForm)
    qryAllocs: TUniQuery;
    dsAllocs: TUniDataSource;
    dsJournals: TUniDataSource;
    qryTotal: TUniQuery;
    qryJournals: TUniQuery;
    qryNaccounts: TUniQuery;
    dsNaccounts: TUniDataSource;
    ilstToolbar: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxReverse: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    ActionManager1: TActionManager;
    actReverseJournal: TAction;
    actNewJournal: TAction;
    actPrintAllJournals: TAction;
    actPrintCurrJournal: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pagJournal: TcxPageControl;
    tabCashbook: TcxTabSheet;
    pnlAllocations: TPanel;
    cxSplitter1: TcxSplitter;
    pnlJournals: TPanel;
    pnlJournalHead: TPanel;
    Label10: TLabel;
    pnlAllocRB: TPanel;
    Label9: TLabel;
    rbLedger: TcxRadioButton;
    rbMatters: TcxRadioButton;
    dbgrAllocations: TcxGrid;
    tvAllocations: TcxGridDBTableView;
    tvAllocationsCODE: TcxGridDBColumn;
    tvAllocationsDESCR: TcxGridDBColumn;
    tvAllocationsDebit: TcxGridDBColumn;
    tvAllocationsCredit: TcxGridDBColumn;
    dbgrAllocationsLevel1: TcxGridLevel;
    tabFilter: TcxTabSheet;
    lblBank: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    lblAmountFrom: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    edRefNo: TEdit;
    neAmountTo: TNumberEdit;
    neAmountFrom: TNumberEdit;
    tbDesc: TEdit;
    neJnlTo: TNumberEdit;
    neJnlFrom: TNumberEdit;
    dtpDateTo: TDateTimePicker;
    dtpDateFrom: TDateTimePicker;
    edAcct: TEdit;
    dcToday: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    rgJournalType: TcxRadioGroup;
    sbarInfo: TdxStatusBar;
    dxBarButton5: TdxBarButton;
    styRevJournal: TcxStyle;
    styNotRevJournal: TcxStyle;
    dbgrJournals: TcxGrid;
    dbgrJournalsLevel1: TcxGridLevel;
    tvJournals: TcxGridDBTableView;
    tvJournalsACCT1: TcxGridDBColumn;
    tvJournalsCREATED1: TcxGridDBColumn;
    tvJournalsNJOURNAL1: TcxGridDBColumn;
    tvJournalsREFNO1: TcxGridDBColumn;
    tvJournalsREASON1: TcxGridDBColumn;
    tvJournalsTYPE1: TcxGridDBColumn;
    tvJournalsAMOUNT1: TcxGridDBColumn;
    cxStyleR: TcxStyle;
    cxStyleD: TcxStyle;
    tvJournalsREV_NJOURNAL: TcxGridDBColumn;
    dxBarSubItem2: TdxBarSubItem;
    tvAllocationsColumn1: TcxGridDBColumn;
    chkDateFrom: TCheckBox;
    chkDateTo: TCheckBox;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxbtnPrintToExcel: TdxBarButton;
    OpenDialog: TOpenDialog;
    dsJournalsPrint: TUniDataSource;
    qryJournalsPrint: TUniQuery;
    plJournalsPrint: TppDBPipeline;
    rptJournals: TppReport;
    qryAllocsPrint: TUniQuery;
    dsAllocsPrint: TUniDataSource;
    plAllocsPrint: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    lblCompany: TppLabel;
    ppShape1: TppShape;
    lblEntity: TppLabel;
    pplblTitle: TppLabel;
    ppDBText1: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand2: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    lblFileName: TppLabel;
    ppDBText5: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppShape2: TppShape;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    qryNAccountsPrint: TUniQuery;
    dsNAccountsPrint: TUniDataSource;
    qryJournalPrint: TUniQuery;
    qryAllocPrint: TUniQuery;
    qryNAccountPrint: TUniQuery;
    dsJournalPrint: TUniDataSource;
    dsAllocPrint: TUniDataSource;
    dsNAccountPrint: TUniDataSource;
    plJournalPrint: TppDBPipeline;
    plAllocPrint: TppDBPipeline;
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
    ppDetailBand3: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppLabel22: TppLabel;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppDBText9: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppLabel3: TppLabel;
    btnMarkRecurring: TdxBarButton;
    tvJournalsRECURRING: TcxGridDBColumn;
    dbgrJournalsDBBandedTableView1: TcxGridDBBandedTableView;
    dbgrJournalsDBBandedTableView1REFNO: TcxGridDBBandedColumn;
    dbgrJournalsDBBandedTableView1ACCT: TcxGridDBBandedColumn;
    dbgrJournalsDBBandedTableView1NJOURNAL: TcxGridDBBandedColumn;
    dbgrJournalsDBBandedTableView1AMOUNT: TcxGridDBBandedColumn;
    dbgrJournalsDBBandedTableView1REASON: TcxGridDBBandedColumn;
    dbgrJournalsDBBandedTableView1TYPE: TcxGridDBBandedColumn;
    dbgrJournalsDBBandedTableView1REV_NJOURNAL: TcxGridDBBandedColumn;
    dbgrJournalsDBBandedTableView1RECURRING: TcxGridDBBandedColumn;
    qryCreateRecurring: TUniQuery;
    qryCreateRecurringItems: TUniQuery;
    raCodeModule1: TraCodeModule;
    raCodeModule2: TraCodeModule;
    ppDBText16: TppDBText;
    ppLabel11: TppLabel;
    qryTrustAllocs: TUniQuery;
    dsTrustAllocs: TUniDataSource;
    tvJournalsTRUST1: TcxGridDBColumn;
    mMoveMatter: TPopupMenu;
    MoveMatter1: TMenuItem;
    qryCopyAlloc: TUniQuery;
    tvAllocationsColumn2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure qryJournalsAfterScroll(DataSet: TDataSet);
    procedure pagJournalChange(Sender: TObject);
    procedure btnMtdClick(Sender: TObject);
    procedure btnYtdClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure qrsubAllocsNeedData(Sender: TObject; var MoreData: Boolean);
    procedure rbMattersClick(Sender: TObject);
    procedure rbLedgerClick(Sender: TObject);
    procedure btnLastMonthClick(Sender: TObject);
    procedure qryAllocsCalcFields(DataSet: TDataSet);
    procedure qryNaccountsCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrJournalsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qryJournalsAfterOpen(DataSet: TDataSet);
    procedure actReverseJournalExecute(Sender: TObject);
    procedure actNewJournalExecute(Sender: TObject);
    procedure actPrintCurrJournalExecute(Sender: TObject);
    procedure actPrintAllJournalsExecute(Sender: TObject);
    procedure actReverseJournalUpdate(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure tvJournalsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvJournalsSelectionChanged(Sender: TcxCustomGridTableView);
    procedure tvJournalsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure dxbtnPrintToExcelClick(Sender: TObject);
    procedure rptJournalsBeforePrint(Sender: TObject);
    procedure rptJournalBeforePrint(Sender: TObject);
    procedure tvJournalsStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnMarkRecurringClick(Sender: TObject);
    procedure tvJournalsRECURRINGPropertiesChange(Sender: TObject);
    procedure MoveMatter1Click(Sender: TObject);
    procedure mMoveMatterPopup(Sender: TObject);
  private
    { Private declarations }
    sOrderBy: string;
    procedure NewJournal;
    procedure ShowTotal;
    procedure ShowMatters;
    procedure ShowLedgers;
    procedure SetButtons;
    procedure UpdateJournals(Sender: TObject);
    function JournalHasMatters(sJournal : String) : Boolean;
    procedure NewRecurringJournal;
    procedure UpdateAllocs;
  public
    { Public declarations }
    procedure MakeSQL;

  end;

var
  frmJournals: TfrmJournals;

implementation

uses
  Journal, JournalReverse, AxiomData, MiscFunc, MSearch, citfunc;

{$R *.DFM}



procedure TfrmJournals.FormShow(Sender: TObject);
begin
   dcToday.Click;
//   if pagCashbook.ActivePageIndex = 1 then
//      MakeSQL;
{   if rbLedger.Checked then
      ShowLedgers
   else
      ShowMatters; }
end;


procedure TfrmJournals.qryJournalsAfterScroll(DataSet: TDataSet);
begin
exit;
  try
    Screen.Cursor := crSQLWait;
    if rbMatters.Checked then
    begin
      ShowMatters;
{      qryAllocs.Close;
      qryAllocs.ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
      qryAllocs.ParamByName('P_NJournal').AsInteger := qryJournals.FieldByName('NJOURNAL').AsInteger;
      qryAllocs.Open;
 //     if tvAllocations.DataController.DataSource <> dsAllocs then
        tvAllocations.DataController.DataSource := dsAllocs;  }
    end;

    if rbLedger.Checked then
    begin
      ShowLedgers;
 {     qryNaccounts.Close;
      qryNaccounts.ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
      qryNaccounts.ParamByName('P_NJournal').AsInteger := qryJournals.FieldByName('NJOURNAL').AsInteger;
      qryNaccounts.Open;
//      if tvAllocations.DataController.DataSource <> dsNaccounts then
        tvAllocations.DataController.DataSource := dsNaccounts;    }
    end;
  except
    // exception handler for handling premature termination of report preview, especially the
    // matter allocation report as it takes quite a long time to complete
  end;

{
  Added 24.10.2002 GG

  Disable the Journal Reverse Button if the journal has already been reversed
}
//  SetButtons;
  Screen.Cursor := crDefault;
end;


procedure TfrmJournals.NewJournal;
var
  frmNewJournal : TfrmJournal;
begin
  frmNewJournal := TfrmJournal.Create(Self);
  frmNewJournal.OnJournalFormClose := UpdateJournals;
  frmNewJournal.Show;
end;

procedure TfrmJournals.NewRecurringJournal;
var
  frmNewJournal : TfrmJournal;
begin
  frmNewJournal := TfrmJournal.Create(Self);
  frmNewJournal.OnJournalFormClose := UpdateJournals;
  with qryCreateRecurring do
  begin
     Close;
     ParamByName('njournal').AsInteger := tvJournalsNJOURNAL1.EditValue;
     ParamByName('acct').AsInteger := tvJournalsACCT1.EditValue;
     Open;
     frmNewJournal.tbDesc.Text := FieldByName('REASON').AsString;
     frmNewJournal.dfReference.Text := FieldByName('REFNO').AsString;
     Close;
  end;

  try
    frmNewJournal.tvLedger.BeginUpdate;
    with qryCreateRecurringItems do
    begin
       Close;
       ParamByName('njournal').AsInteger := tvJournalsNJOURNAL1.EditValue;
       ParamByName('acct').AsInteger := tvJournalsACCT1.EditValue;
       Open;
       frmNewJournal.qryLedger.Open;
       while (EOF = False) do
       begin
//          if (frmNewJournal.tvLedger.DataController.RowCount > 1) then
             frmNewJournal.qryLedger.Insert;
          frmNewJournal.qryLedger.FieldByName('REFNO').AsString := qryCreateRecurringItems.FieldByName('REFNO').AsString;
          frmNewJournal.qryLedger.FieldByName('LONGDESC').AsString := qryCreateRecurringItems.FieldByName('DESCR').AsString;
          frmNewJournal.qryLedger.FieldByName('Reason').AsString := qryCreateRecurringItems.FieldByName('TDESCR').AsString;
          frmNewJournal.qryLedger.FieldByName('DEBIT').AsString := qryCreateRecurringItems.FieldByName('DEBIT').AsString;
          frmNewJournal.qryLedger.FieldByName('CREDIT').AsString := qryCreateRecurringItems.FieldByName('CREDIT').AsString;
          frmNewJournal.qryLedger.FieldByName('TAXCODE').AsString := qryCreateRecurringItems.FieldByName('TAXCODE').AsString;
          frmNewJournal.qryLedger.FieldByName('CHART').AsString := qryCreateRecurringItems.FieldByName('CHART').AsString;
          qryCreateRecurringItems.Next;
       end;
       frmNewJournal.UpdateDisplayTotals;
    end;
  finally
     frmNewJournal.tvLedger.EndUpdate;
  end;

  frmNewJournal.Show;

end;

procedure TfrmJournals.UpdateJournals(Sender: TObject);
begin
  qryJournals.Close;
  qryJournals.Open;
end;


procedure TfrmJournals.ShowTotal;
begin
  if not qryTotal.EOF then
  begin
    sbarInfo.Panels.Items[0].Text := Format('%d Journal(s)', [qryTotal.FieldByName('CNT').AsInteger]);
    sbarInfo.Panels.Items[1].Text := Format('%m', [qryTotal.FieldByName('AMT').AsCurrency]);
  end
  else
  begin
    sbarInfo.Panels.Items[0].Text := '';
    sbarInfo.Panels.Items[1].Text := '';
  end;
end;


procedure TfrmJournals.MakeSQL;
var
  sSQLWhere : string;
  sAND : string;
  sOR: string;
begin
  // Build the SQL Filter query
  Screen.Cursor := crSQLWait;
  qryJournals.Close;
  qryTotal.Close;
  sAND := ' AND ';

{
  Added 25.9.2002 GG
}
  sOR:= ' OR ';

  if edAcct.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'ACCT = ''' + edAcct.Text + ''''
{
  Code Modified 25.9.2002 GG

  Added extra clause to choose journal entries where Acct field contains either
  the Entity (eg, 'SG') or the Account belonging to the entity (eg, 'SG' owns
  account 'GA')
}
  else
  begin
    sSQLWhere := sSQLWhere + sAND + '(ACCT = ''' + dmAxiom.Entity + '''';
    sSQLWhere := sSQLWhere + sOR + 'ACCT in (select acct from bank where entity = ''' + dmAxiom.Entity + '''))';
  end;
  if neJnlFrom.AsInteger <> 0 then
    sSQLWhere := sSQLWhere + sAND + 'NJOURNAL >= ' + neJnlFrom.EditText;
  if neJnlTo.AsInteger <> 0 then
    sSQLWhere := sSQLWhere + sAND + 'NJOURNAL <= ' + neJnlTo.EditText;
  if tbDesc.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'REASON LIKE ' + QuotedStr('%' + tbDesc.Text + '%');
  if neAmountFrom.AsCurrency <> 0 then
    sSQLWhere := sSQLWhere + sAND + 'AMOUNT >= ' + neAmountFrom.Text;
  if neAmountTo.AsCurrency <> 0 then
    sSQLWhere := sSQLWhere + sAND + 'AMOUNT <= ' + neAmountTo.Text;
  if edRefNo.Text <> '' then
    sSqlWhere :=  sSQLWhere + sAND + 'nvl(REFNO,njournal) = ''' + edRefNo.Text + '''';
{
  Code Added 25.9.2002 GG

  Added Journal Type Radio Group so that different journal types could be filtered out
}
  if rgJournalType.ItemIndex > 0 then
  begin
    case rgJournalType.ItemIndex of
      3: sSqlWhere :=  sSQLWhere + sAND + 'trust = ''T''';
      6: sSqlWhere :=  sSQLWhere + sAND + 'recurring = ''Y''';      //AES 11/12/2013
    else
      sSqlWhere :=  sSQLWhere + sAND + 'type = ''' + IntToStr(rgJournalType.ItemIndex) + '''';
    end;
  end;

  qryJournals.SQL.Clear;
  qryJournals.SQL.Add('SELECT REFNO,ACCT, CREATED, NJOURNAL, AMOUNT, REASON, TYPE, ');
  qryJournals.SQL.Add('REV_NJOURNAL, NMEMO, TRUST, RECURRING, WASCONVERTED, ROWID FROM JOURNAL WHERE ');
  qryJournals.SQL.Add('((trunc(CREATED) >= nvl(:P_DateFrom, CREATED) AND trunc(CREATED) <= nvl(:P_DateTo, CREATED)) OR  :P_DateFrom is null) ' + sSQLWhere + sOrderBy);
  if (chkDateFrom.Checked and chkDateTo.Checked) then
  begin
     qryJournals.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
     qryJournals.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
  end
  else
  if (chkDateFrom.Checked and (not chkDateTo.Checked)) then
  begin
     qryJournals.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
//     qryJournals.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  end
  else
  if ((not chkDateFrom.Checked) and chkDateTo.Checked) then
  begin
//     qryJournals.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
     qryJournals.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
  end;

  qryJournals.Open;

  qryTotal.SQL.Clear;
  qryTotal.SQL.Add('SELECT SUM(AMOUNT) AS AMT, COUNT(AMOUNT) AS CNT FROM JOURNAL WHERE ((trunc(CREATED) >= nvl(:P_DateFrom, CREATED) AND trunc(CREATED) <= nvl(:P_DateTo, CREATED)) OR  :P_DateFrom is null) ' + sSQLWhere);
  if (chkDateFrom.Checked and chkDateTo.Checked) then
  begin
     qryJournals.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
     qryJournals.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
     qryTotal.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
     qryTotal.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
  end
  else
  if (chkDateFrom.Checked and (not chkDateTo.Checked)) then
  begin
     qryJournals.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
     qryTotal.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
//     qryJournals.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  end
  else
  if ((not chkDateFrom.Checked) and chkDateTo.Checked) then
  begin
//     qryJournals.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
     qryJournals.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
     qryTotal.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date);
  end;
  qryTotal.Open;
  ShowTotal;
  Screen.Cursor := crDefault;
end;

procedure TfrmJournals.mMoveMatterPopup(Sender: TObject);
begin
   MoveMatter1.Enabled := (rbMatters.Checked = True);
end;

procedure TfrmJournals.MoveMatter1Click(Sender: TObject);
var
   iMrv_Alloc: integer;
begin
// make sure the alloc is unbilled and not trust !

   if (not qryAllocs.FieldByName('NMEMO').IsNull) then
   begin
      MessageDlg('Cannot move a billed Journal',mtError, [mbOk], 0);
      exit;
   end
   else if qryAllocs.FieldByName('TRUST').AsString = 'T' then
   begin
      MessageDlg('Cannot move a trust Journal',mtError, [mbOk], 0);
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
            iMrv_Alloc := GetSequenceNumber('SQNC_NALLOC');
            ParamByName('FILEID').AsString := qryAllocs.FieldByName('CODE').AsString;
            ParamByName('DESCR').AsString := 'Transferred to file ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ':' + qryAllocs.FieldByName('ALLOC_DESCR').AsString;
            ParamByName('ALLOC_OLD').AsInteger := qryAllocs.FieldByName('NALLOC').AsInteger;
            ParamByName('ALLOC_NEW').AsInteger := iMrv_Alloc;   //GetSeqNum('NALLOC');
            ParamByName('AMOUNT').AsCurrency := qryAllocs.FieldByName('AMOUNT_EXTAX').AsCurrency;
            ParamByName('TAX').AsCurrency := 0-qryAllocs.FieldByName('TAX').AsCurrency;
            ParamByName('TYPE').AsString := 'RV';
            ParamByName('BILLED').AsString := 'Y';
            ParamByName('PRIVATE').AsString := 'Y';
            ParamByName('MRV_NALLOC').AsInteger := qryAllocs.FieldByName('NALLOC').AsInteger;
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
            ParamByName('AMOUNT').AsCurrency := 0 - qryAllocs.FieldByName('AMOUNT_EXTAX').AsCurrency;
            ParamByName('TAX').AsCurrency := qryAllocs.FieldByName('TAX').AsCurrency;
            ParamByName('TYPE').AsString := qryAllocs.FieldByName('TYPE').AsString;
            ParamByName('BILLED').AsString := 'N';
            ParamByName('PRIVATE').AsString := 'N';
            ParamByName('MRV_NALLOC').Clear;
            ExecSql;
            Close;
         end;

         with dmAxiom.qryTmp do
         begin
            Close;
            sql.cLEAR;
            SQL.ADD('UPDATE ALLOC SET BILLED = :billed, PRIVATE = :private, mrv_nalloc = :mrv_nalloc ');
            SQL.Add(' WHERE FILEID = :FILEID AND NALLOC = :NALLOC ' );
            ParamByName('BILLED').AsString := 'Y';
            ParamByName('PRIVATE').AsString := 'Y';
            ParamByName('FILEID').AsString := qryAllocs.FieldByName('CODE').AsString;
            ParamByName('NALLOC').AsInteger := qryAllocs.FieldByName('NALLOC').AsInteger;
            ParamByName('MRV_NALLOC').AsInteger := iMrv_Alloc;
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

procedure TfrmJournals.pagJournalChange(Sender: TObject);
begin
  case pagJournal.ActivePage.TabIndex of
    isCASHBOOK: // Back to the Grid page
    begin
      MakeSQL;
      if rbLedger.Checked then
         ShowLedgers
      else
         ShowMatters;
      dxBarSubItem2.Enabled := True;
    end;
    isFILTER:
    begin
       dxBarSubItem2.Enabled := False;
    end;
  end;
end;

procedure TfrmJournals.btnMarkRecurringClick(Sender: TObject);
begin
{  with dmAxiom.qryTmp do
  begin
    Close;
    SQL.Text := 'update journal set recurring = ''Y'' where njournal = :njournal and acct = :acct';
    ParamByName('njournal').AsInteger := tvJournalsNJOURNAL1.EditValue;
    ParamByName('acct').AsInteger := tvJournalsACCT1.EditValue;
    Execute;
  end; }
  NewRecurringJournal;
end;

procedure TfrmJournals.btnMtdClick(Sender: TObject);
var
  wYear, wMonth, wDay : Word;
begin
  dtpDateTo.Date :=  Int(Now);
  DecodeDate(Now, wYear, wMonth, wDay);
  dtpDateFrom.Date := (Int(Now) - wDay + 1);
end;

procedure TfrmJournals.btnYtdClick(Sender: TObject);
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


procedure TfrmJournals.btnClearAllClick(Sender: TObject);
begin
  neJnlFrom.AsCurrency := 0;
  neJnlTo.AsCurrency := 0;
  tbDesc.Text := '';
  neAmountFrom.AsCurrency := 0;
  neAmountTo.AsCurrency := 0;
end;

procedure TfrmJournals.qrsubAllocsNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  qryAllocs.Close;
  qryAllocs.ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
  qryAllocs.ParamByName('P_NJournal').AsInteger := qryJournals.FieldByName('NJOURNAL').AsInteger;
  qryAllocs.Open;
end;


procedure TfrmJournals.rbMattersClick(Sender: TObject);
begin
  if rbMatters.Checked then
    ShowMatters
  else
    ShowLedgers;
end;


procedure TfrmJournals.rbLedgerClick(Sender: TObject);
begin
  if rbLedger.Checked then
    ShowLedgers
  else
    ShowMatters;
end;


procedure TfrmJournals.ShowMatters;
begin
  Screen.Cursor := crSQLWait;
//  rbLedger.Checked := False;
  qryNaccounts.Close;
  if ((tvJournals = nil) or (qryJournals.Active = False)) then
     exit;
{
  Code Modified 25.9.2002 GG

  The ACCT filed in Journals contains both entities and account codes.
  The ACCT field in TransItem contains only entities
  This code needs to use the entity we are interested in, not the acct code from
  our journal record

  qryAllocs.ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
}
  if (tvJournals.Controller.FocusedRecord.Values[tvJournalsTRUST1.Index] = 'T') then
  begin
      if not varisnull(tvJournals.Controller.FocusedRecord.Values[tvJournalsNJOURNAL1.Index]) then
      begin
          qryTrustAllocs.Close;
          //qryTrustAllocs.ParamByName('P_Bank').AsString := qryJournals.FieldByName('ACCT').AsString;
          qryTrustAllocs.ParamByName('P_Bank').AsString := tvJournals.Controller.FocusedRecord.Values[tvJournalsACCT1.Index];
          qryTrustAllocs.ParamByName('P_NJournal').AsInteger := tvJournals.Controller.FocusedRecord.Values[tvJournalsNJOURNAL1.Index];
          qryTrustAllocs.ParamByName('P_trust').AsString := tvJournals.Controller.FocusedRecord.Values[tvJournalsTRUST1.Index];
          tvAllocations.DataController.DataSource := dsTrustAllocs;
          qryTrustAllocs.Open;
      end;
  end
  else
  begin
      if not varisnull(tvJournals.Controller.FocusedRecord.Values[tvJournalsNJOURNAL1.Index]) then
      begin
        qryAllocs.Close;
        qryAllocs.ParamByName('P_Acct').AsString := tvJournals.Controller.FocusedRecord.Values[tvJournalsACCT1.Index];
        qryAllocs.ParamByName('P_NJournal').AsInteger := tvJournals.Controller.FocusedRecord.Values[tvJournalsNJOURNAL1.Index];
        qryAllocs.ParamByName('P_trust').AsString := tvJournals.Controller.FocusedRecord.Values[tvJournalsTRUST1.Index];
        tvAllocations.DataController.DataSource := dsAllocs;
        qryAllocs.Open;
      end;
  end;
  Screen.Cursor := crDefault;
end;


procedure TfrmJournals.ShowLedgers;
begin
  // Set the allocation grid to display Allocs
   if dmAxiom.bShutDown = False then
   begin
      Screen.Cursor := crSQLWait;
      qryAllocs.Close;
      qryTrustAllocs.Close;
      qryNaccounts.Close;
      qryNaccounts.ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
      qryNaccounts.ParamByName('P_NJournal').AsInteger := qryJournals.FieldByName('NJOURNAL').AsInteger;
      tvAllocations.DataController.DataSource := dsNaccounts;
      qryNaccounts.Open;
      Screen.Cursor := crDefault;
   end;
end;


procedure TfrmJournals.btnLastMonthClick(Sender: TObject);
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


procedure TfrmJournals.qryAllocsCalcFields(DataSet: TDataSet);
begin
  if qryAllocs.FieldByName('AMOUNT').AsCurrency < 0.0 then
    qryAllocs.FieldByName('Debit').AsCurrency := qryAllocs.FieldByName('AMOUNT').AsCurrency;
  if qryAllocs.FieldByName('AMOUNT').AsCurrency > 0.0 then
    qryAllocs.FieldByName('Credit').AsCurrency := qryAllocs.FieldByName('AMOUNT').AsCurrency;
end;

procedure TfrmJournals.qryNaccountsCalcFields(DataSet: TDataSet);
begin
  if qryNaccounts.FieldByName('AMOUNT').AsCurrency < 0.0 then
    qryNaccounts.FieldByName('Debit').AsCurrency := qryNaccounts.FieldByName('AMOUNT').AsCurrency * -1;
  if qryNaccounts.FieldByName('AMOUNT').AsCurrency > 0.0 then
    qryNaccounts.FieldByName('Credit').AsCurrency := qryNaccounts.FieldByName('AMOUNT').AsCurrency * -1;
end;


procedure TfrmJournals.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryJournals.Close;
  qryAllocs.Close;
  qryTotal.Close;
  qryNAccounts.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmJournals.SetButtons;
begin
{
  Disable the Journal Reverse button if the journal has already been reversed,
  or the user doesn't have reversing priviledges
}
  actReverseJournal.Enabled := ((qryJournals.FieldByName('REV_NJOURNAL').IsNull) and (dmAxiom.Security.Journal.Reverse));
end;

procedure TfrmJournals.dbgrJournalsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  dbGrid: TDBGrid;
begin
  dbGrid:= Sender as TDBGrid;

  if (gdSelected in State) and
     ((gdFocused in State) or (not(gdFocused in State) and (dgRowSelect in dbGrid.Options))) then
  begin
    if not dbGrid.DataSource.DataSet.FieldByName('REV_NJOURNAL').IsNull then
      dbGrid.Canvas.Font.Color := clYellow
    else
      dbGrid.Canvas.Font.Color := clHighlightText
  end
  else
  begin
    if not dbGrid.DataSource.DataSet.FieldByName('REV_NJOURNAL').IsNull then
      dbGrid.Canvas.Font.Color := clRed
    else
      dbGrid.Canvas.Font.Color := clWindowText
  end;
  dbGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmJournals.qryJournalsAfterOpen(DataSet: TDataSet);
begin
{
  Added 24.10.2002 GG
  
  Disable the Journal Reverse Button if the journal has already been reversed
}
  SetButtons;
end;

procedure TfrmJournals.actReverseJournalExecute(Sender: TObject);
begin
   with TfrmJournalReverse.Create(Self) do
   begin
//      MsgInfo('This action will reverse the complete journal.');
      DisplayJournal(Self.qryJournals.FieldByName('NJOURNAL').AsInteger,
                     Self.qryJournals.FieldByName('NMEMO').AsInteger,
                     Self.qryJournals.FieldByName('ACCT').AsString );
   end;

   qryJournals.Close;
   qryJournals.Open;
end;

procedure TfrmJournals.actNewJournalExecute(Sender: TObject);
begin
   NewJournal;
end;

procedure TfrmJournals.actPrintCurrJournalExecute(Sender: TObject);
begin
   Screen.Cursor := crSQLWait;
   qryJournalPrint.close;
   qryJournalPrint.ParamByName('njournal').AsInteger := qryJournals.FieldByName('njournal').AsInteger;
   qryJournalPrint.ParamByName('acct').AsString := qryJournals.FieldByName('acct').AsString;  //dmAxiom.Entity;
   qryJournalPrint.ParamByName('trust').AsString := qryJournals.FieldByName('trust').AsString;
   qryJournalPrint.open;
   if (rbMatters.Checked = True)then
   begin
      ppLabel12.Text := 'Journal Matter Allocations';
      plAllocPrint.DataSource :=  dsAllocPrint;
      with qryAllocPrint do
      begin
         Close;
         ParamByName('P_Acct').AsString := qryJournals.FieldByName('acct').AsString;  //dmAxiom.Entity;
         ParamByName('P_NJournal').AsInteger := qryJournalPrint.FieldByName('NJOURNAL').AsInteger;
         ParamByName('P_trust').AsString := qryJournalPrint.FieldByName('TRUST').AsString;
         Open;
      end;

{     qrJournal.DataSet := qryAllocs;
     qrdblblJournalCode.DataSet := qryAllocs;
     qrdblblJournalDescr.DataSet := qryAllocs;
     qrdblblJournalDebit.DataSet := qryAllocs;
     qrdblblJournalCredit.DataSet := qryAllocs;  }
   end;

   if (rbLedger.Checked = True) then
   begin
      ppLabel12.Text := 'Journal General Ledger Allocations';
      plAllocPrint.DataSource :=  dsNAccountPrint;
      with qryNAccountPrint do
      begin
         Close;
         ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
         Open;
      end;
{     qrJournal.DataSet := qryNAccounts;
     qrdblblJournalCode.DataSet := qryNAccounts;
     qrdblblJournalDescr.DataSet := qryNAccounts;
     qrdblblJournalDebit.DataSet := qryNAccounts;
     qrdblblJournalCredit.DataSet := qryNAccounts;  }
   end;
   Screen.Cursor := crDefault;
   rptJournal.Print;
//   qrJournal.PreviewModal;
end;

procedure TfrmJournals.actPrintAllJournalsExecute(Sender: TObject);
begin
   Screen.Cursor := crSQLWait;
   try
      with qryJournalsPrint do
      begin
         Close;
         SQL.Text := qryJournals.SQL.Text;
         if chkDateFrom.Checked then
         begin
            ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
            ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
//            if edAcct.Text <> '' then
//               ParamByName('ACCT').AsString :=
         end;
         Open;
      end;
      if rbMatters.Checked then
      begin
         pplblTitle.Text := 'Journal report with Matter Allocations';
         plAllocsPrint.DataSource :=  dsAllocsPrint;
         with qryAllocsPrint do
         begin
            Close;
//            SQL.Text := qryAllocs.SQL.Text;
            ParamByName('P_Acct').AsString := dmAxiom.Entity;
//            ParamByName('P_NJournal').AsInteger := qryJournals.FieldByName('NJOURNAL').AsInteger;
            Open;
         end;
      end;

      if rbLedger.Checked then
      begin
         pplblTitle.Text := 'Journal report with General Ledger Allocations';
         plAllocsPrint.DataSource :=  dsNAccountsPrint;
         with qryNAccountsPrint do
         begin
            Close;
//            SQL.Text := qryNAccounts.SQL.Text;
            ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
//            ParamByName('P_NJournal').AsInteger := qryJournals.FieldByName('NJOURNAL').AsInteger;
            Open;
         end;
      end;
      Screen.Cursor := crDefault;
      rptJournals.Print;

   finally
//      qrJournals.Free;
   end;
end;

procedure TfrmJournals.actReverseJournalUpdate(Sender: TObject);
begin
//   actReverseJournal.Enabled := ((tabCashbook.Visible) and (not qryJournals.IsEmpty) and
//                                 (qryJournals.FieldByName('TYPE').AsString <> '2') and
//                                 (not IsTrustAccount(qryJournals.FieldByName('ACCT').AsString)));
end;

procedure TfrmJournals.dxBarButton5Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmJournals.tvJournalsCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
{   dxReverse.Enabled := ((tabCashbook.Visible) and (not qryJournals.IsEmpty) and
                        (qryJournals.FieldByName('TYPE').AsString <> '2') and
                        (not IsTrustAccount(qryJournals.FieldByName('ACCT').AsString)) and
                        (not JournalHasMatters(qryJournals.FieldByName('NJOURNAL').AsString))); }

   dxReverse.Enabled := ((tabCashbook.Visible) and (not qryJournals.IsEmpty) and
    //                    (qryJournals.FieldByName('TYPE').AsString <> '2') and
                        (qryJournals.FieldByName('TRUST').AsString <> 'T') and
                        (qryJournals.FieldByName('WASCONVERTED').AsString = 'N') and
 //                       (not JournalHasMatters(qryJournals.FieldByName('NJOURNAL').AsString)) and
                        (tvJournals.Controller.SelectedRowCount > 0) and
                        (qryJournals.FieldByName('REV_NJOURNAL').IsNull = True));
   btnMarkRecurring.Enabled := (tvJournalsRECURRING.EditValue = 'Y');
end;

procedure TfrmJournals.tvJournalsSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
 {  dxReverse.Enabled := ((tabCashbook.Visible) and (not qryJournals.IsEmpty) and
                        (qryJournals.FieldByName('TYPE').AsString <> '2') and
                        (not IsTrustAccount(qryJournals.FieldByName('ACCT').AsString)) and
                        (not JournalHasMatters(qryJournals.FieldByName('NJOURNAL').AsString))); }

   dxReverse.Enabled := ((tabCashbook.Visible) and (not qryJournals.IsEmpty) and
 //                       (qryJournals.FieldByName('TYPE').AsString <> '2') and
                        (qryJournals.FieldByName('TRUST').AsString <> 'T') and
                        (qryJournals.FieldByName('WASCONVERTED').AsString = 'N') and
 //                       (not JournalHasMatters(qryJournals.FieldByName('NJOURNAL').AsString)) and
                        (tvJournals.Controller.SelectedRowCount > 0) and
                        (qryJournals.FieldByName('REV_NJOURNAL').IsNull = True));
   UpdateAllocs();

end;

procedure TfrmJournals.tvJournalsStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('REV_NJOURNAL');
   if VarIsNull(ARecord.Values[AColumn.Index]) then
      AStyle := cxStyleD
    else
      AStyle := cxStyleR;
end;

procedure TfrmJournals.tvJournalsColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
//   SaveConfig := True;
   qryJournals.Close;
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

procedure TfrmJournals.tvJournalsRECURRINGPropertiesChange(Sender: TObject);
begin
  if (tvJournalsTYPE1.EditValue <> 'P') then
  begin
     MsgInfo('Only G/L journals can be made recurring');
     tvJournalsTYPE1.EditValue := 'N';
  end;
end;

function TfrmJournals.JournalHasMatters(sJournal : String) : Boolean;
var
  loQry : TUniQuery;
begin
  loQry := nil;

  try
    loQry := TUniQuery.Create(nil);
    loQry.Connection := dmAxiom.uniInsight;

    loQry.Close;
    loQry.SQL.Clear;
    loQry.SQL.Add('SELECT ''x'' ');
    loQry.SQL.Add('FROM ALLOC');
    loQry.SQL.Add('WHERE NJOURNAL = :NJOURNAL ');
    loQry.SQL.Add('AND ACCT = :ACCT');
    loQry.Params[0].AsString := sJournal;
    loQry.Params[1].AsString := qryJournals.FieldByName('ACCT').AsString;
    loQry.Open;

    Result := (not loQry.IsEmpty);
  finally
    loQry.Close;
    FreeAndNil(loQry);
  end;    //  end try-finally
end;

procedure TfrmJournals.dxbtnPrintToExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrJournals, True, True,True,'xls');
   end; 
end;

procedure TfrmJournals.rptJournalsBeforePrint(Sender: TObject);
begin
  lblCompany.Caption := SystemString('COMPANY');
  lblFileName.Caption := Application.ExeName;
  lblEntity.Caption := 'For entity: ' + dmAxiom.EntityName;
end;

procedure TfrmJournals.rptJournalBeforePrint(Sender: TObject);
begin
   ppLabel3.Caption := 'For entity: ' + dmAxiom.EntityName;
   lblCompanyJournals.Caption := SystemString('COMPANY');
   ppLabel22.Caption := Application.ExeName;
end;

procedure TfrmJournals.UpdateAllocs();
Begin
  try
    Screen.Cursor := crSQLWait;
    if rbMatters.Checked then
    begin
      ShowMatters;
{      qryAllocs.Close;
      qryAllocs.ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
      qryAllocs.ParamByName('P_NJournal').AsInteger := qryJournals.FieldByName('NJOURNAL').AsInteger;
      qryAllocs.Open;
 //     if tvAllocations.DataController.DataSource <> dsAllocs then
        tvAllocations.DataController.DataSource := dsAllocs;  }
    end;

    if rbLedger.Checked then
    begin
      ShowLedgers;
 {     qryNaccounts.Close;
      qryNaccounts.ParamByName('P_Acct').AsString := qryJournals.FieldByName('ACCT').AsString;
      qryNaccounts.ParamByName('P_NJournal').AsInteger := qryJournals.FieldByName('NJOURNAL').AsInteger;
      qryNaccounts.Open;
//      if tvAllocations.DataController.DataSource <> dsNaccounts then
        tvAllocations.DataController.DataSource := dsNaccounts;    }
    end;
  except
    // exception handler for handling premature termination of report preview, especially the
    // matter allocation report as it takes quite a long time to complete
  end;

{
  Added 24.10.2002 GG

  Disable the Journal Reverse Button if the journal has already been reversed
}
//  SetButtons;
  Screen.Cursor := crDefault;

End;
end.
