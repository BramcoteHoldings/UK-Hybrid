unit BankDepositQuery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DateChangeButton, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, Db,
  ToolWin, ExtCtrls, ImgList, OracleUniProvider, Uni, DBAccess, MemDS,
  Menus, MemData, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit,
  cxTextEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, dxBarExtItems, dxBar,
  Variants, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDesignLayer,
  ppParameter, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, cxNavigator,
  cxBarEditItem, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  System.ImageList;

const
  IDX_DEPOSITPRESENT = 0;
  IDX_DEPOSITUNPRESENT = 1;

type
  TfrmBankDepositQuery = class(TForm)
    sbarInfo: TStatusBar;
    qryDeposits: TUniQuery;
    dsDesposits: TUniDataSource;
    qryTotal: TUniQuery;
    qryBanks: TUniQuery;
    qryReceipts: TUniQuery;
    dsReceipts: TUniDataSource;
    pnMain: TPanel;
    ilstToolbar: TImageList;
    qryRcpTotal: TUniQuery;
    qryTmp: TUniQuery;
    qryDepositedReceipts: TUniQuery;
    popItemsGrid: TPopupMenu;
    miTransferReceipt: TMenuItem;
    pagDeposits: TcxPageControl;
    tabDeposits: TcxTabSheet;
    tabFilter: TcxTabSheet;
    lblBank: TLabel;
    cbBank: TComboBox;
    Label1: TLabel;
    dtpDateFrom: TDateTimePicker;
    Label2: TLabel;
    dtpDateTo: TDateTimePicker;
    dcToday: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    tbDepNoFrom: TEdit;
    tbDepNoTo: TEdit;
    tbAmountFrom: TEdit;
    tbAmountTo: TEdit;
    cbReconciled: TCheckBox;
    Label5: TLabel;
    lblAmountFrom: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    btnClearAll: TBitBtn;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    Label9: TLabel;
    Panel2: TPanel;
    Label10: TLabel;
    grdBankDeposits: TcxGrid;
    grdBankDepositsLevel1: TcxGridLevel;
    tvBankDeposits: TcxGridDBTableView;
    tvBankDepositsACCT: TcxGridDBColumn;
    tvBankDepositsDEPOSIT_DATE1: TcxGridDBColumn;
    tvBankDepositsAMOUNT1: TcxGridDBColumn;
    tvBankDepositsNBANKDEP: TcxGridDBColumn;
    tvBankDepositsReconciledState1: TcxGridDBColumn;
    cxStyleRepository3: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    cxStyleStd: TcxStyle;
    dxBarManager1: TdxBarManager;
    tbtPresent: TdxBarButton;
    tbtnPrint: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    edSearch: TEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dbgrItems: TcxGrid;
    tvItems: TcxGridDBTableView;
    tvItemsTYPE1: TcxGridDBColumn;
    tvItemsRCPTNO1: TcxGridDBColumn;
    tvItemsAMOUNT1: TcxGridDBColumn;
    tvItemsPAYOR1: TcxGridDBColumn;
    tvItemsDRAWER1: TcxGridDBColumn;
    tvItemsBANK1: TcxGridDBColumn;
    tvItemsBRANCH1: TcxGridDBColumn;
    tvItemsCHQNO1: TcxGridDBColumn;
    tvItemsBANKED1: TcxGridDBColumn;
    tvItemsCLEARED1: TcxGridDBColumn;
    tvItemsDESCR1: TcxGridDBColumn;
    dbgrItemsLevel1: TcxGridLevel;
    popDepGrid: TPopupMenu;
    miChangeDepositDate: TMenuItem;
    chkDateFrom: TCheckBox;
    chkDateTo: TCheckBox;
    ppReport1: TppReport;
    plDepositedReceipts: TppDBPipeline;
    dsDepositedReceipts: TUniDataSource;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppVarCash: TppVariable;
    ppVarCredit: TppVariable;
    ppLabel11: TppLabel;
    ppVarTotal: TppVariable;
    dsBankDtls: TUniDataSource;
    plBankDtls: TppDBPipeline;
    qryBankDtls: TUniQuery;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabelEntity: TppLabel;
    cxBarEditItem1: TcxBarEditItem;
    UndoDeposit1: TMenuItem;
    N1: TMenuItem;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagDepositsChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtpDateToDblClick(Sender: TObject);
    procedure dtpDateFromDblClick(Sender: TObject);
    procedure tbtPresentClick(Sender: TObject);
    procedure dbgrDepositsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qryDepositsAfterScroll(DataSet: TDataSet);
    procedure edSearchChange(Sender: TObject);
    procedure edSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbtPrintClick(Sender: TObject);
    procedure miTransferReceiptClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure miChangeDepositDateClick(Sender: TObject);
    procedure tvBankDepositsStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure UndoDeposit1Click(Sender: TObject);
  private
    procedure MakeSQL;
    procedure SetPresentationButton;
    procedure ShowItemsTotal;
    procedure ShowTotal;
  public
    { Public declarations }
  end;

var
  frmBankDepositQuery: TfrmBankDepositQuery;

implementation

uses
  AxiomData, MiscFunc, PresentedConfirmation;

{$R *.DFM}

var
  sSQLWhere : string;

procedure TfrmBankDepositQuery.MakeSQL;
var
  sAND, sOR, sTmp : string;
begin
  // Build the SQL Filter query
  qryDeposits.Close;
  qryTotal.Close;
  qryReceipts.Close;
  qryRcpTotal.Close;
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
      if RecordCount > 0 then
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
      end;
    end;
  end;
  if tbDepNoFrom.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'NBANKDEP >= ''' + tbDepNoFrom.Text + '''';
  if tbDepNoTo.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'NBANKDEP <= ''' + tbDepNoTo.Text + '''';
  if tbAmountFrom.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'AMOUNT >= ' + tbAmountFrom.Text;
  if tbAmountTo.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'AMOUNT <= ' + tbAmountTo.Text;

  qryDeposits.SQL.Clear;
  qryDeposits.SQL.Add('SELECT nbankdep, acct, deposit_date, last_nreceipt, reconciled, recondate, ');
  qryDeposits.SQL.Add('     amount, mod_by, mod_date,');
  qryDeposits.SQL.Add('     CASE ');
  qryDeposits.SQL.Add('        WHEN recondate IS NULL ');
  qryDeposits.SQL.Add('           THEN ''Unreconciled'' ');
  qryDeposits.SQL.Add('        ELSE TO_CHAR (recondate, ''dd/mm/yyyy'') ');
  qryDeposits.SQL.Add('     END AS ReconciledState ');
  qryDeposits.SQL.Add('FROM bankdep ');
  qryDeposits.SQL.Add('WHERE');

  if chkDateFrom.Checked then
    qryDeposits.SQL.Add('DEPOSIT_DATE >= :P_DateFrom');

  if chkDateFrom.Checked and chkDateTo.Checked then
    qryDeposits.SQL.Add('  AND DEPOSIT_DATE < :P_DateTo')
  else if chkDateTo.Checked then
    qryDeposits.SQL.Add('DEPOSIT_DATE < :P_DateTo');

  if qryDeposits.SQL.Strings[qryDeposits.SQL.Count-1] = 'WHERE' then
    Delete(sSQLWhere, 1, 4);
  qryDeposits.SQL.Add(sSQLWhere);
  if cbReconciled.Checked then
    qryDeposits.SQL.Add('  AND RECONDATE IS NULL');
  qryDeposits.SQL.Add('ORDER BY DEPOSIT_DATE DESC');
  
  if chkDateFrom.Checked then
    qryDeposits.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
  if chkDateFrom.Checked and chkDateTo.Checked then
  begin
    qryDeposits.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    qryDeposits.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  end
  else if chkDateTo.Checked then
    qryDeposits.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  qryDeposits.Open;
  qryReceipts.Open;

  qryTotal.SQL.Clear;
  qryTotal.SQL.Add('SELECT SUM(AMOUNT) AS AMT, COUNT(AMOUNT) AS CNT');
  qryTotal.SQL.Add('FROM BANKDEP');
  qryTotal.SQL.Add('WHERE');
  if chkDateFrom.Checked then
    qryTotal.SQL.Add('DEPOSIT_DATE >= :P_DateFrom');
  if chkDateFrom.Checked and chkDateTo.Checked then
    qryTotal.SQL.Add('  AND DEPOSIT_DATE < :P_DateTo')
  else if chkDateTo.Checked then
    qryTotal.SQL.Add('DEPOSIT_DATE < :P_DateTo');
  qryTotal.SQL.Add(sSQLWhere);
  if cbReconciled.Checked then
    qryTotal.SQL.Add('  AND RECONDATE IS NULL');
  if chkDateFrom.Checked then
    qryTotal.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
  if chkDateFrom.Checked and chkDateTo.Checked then
  begin
    qryTotal.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    qryTotal.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  end
  else if chkDateTo.Checked then
    qryTotal.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  qryTotal.Open;
  qryRcpTotal.Open;
  ShowTotal;
  ShowItemsTotal;
end;

procedure TfrmBankDepositQuery.SetPresentationButton;
begin
  if (qryDeposits.FieldByName('ReconciledState').AsString = 'Unreconciled') then
  begin
    tbtPresent.ImageIndex := IDX_DEPOSITPRESENT;
    tbtPresent.Hint := 'Present this deposit...';
  end
  else
  begin
    tbtPresent.ImageIndex := IDX_DEPOSITUNPRESENT;
    tbtPresent.Hint := 'Unpresent this deposit...';
  end;
end;

procedure TfrmBankDepositQuery.ShowItemsTotal;
var
  sSuffix : string;
begin
  if not qryRcpTotal.EOF then
  begin
    if qryRcpTotal.FieldByName('CNT').AsInteger = 1 then
      sSuffix := '';
    sbarInfo.Panels.Items[2].Text := Format('%d Items' + sSuffix, [qryRcpTotal.FieldByName('CNT').AsInteger]);
    sbarInfo.Panels.Items[3].Text := Format('%m', [qryRcpTotal.FieldByName('AMT').AsCurrency]);
  end
  else
  begin
    sbarInfo.Panels.Items[2].Text := '';
    sbarInfo.Panels.Items[3].Text := '';
  end;
end;


procedure TfrmBankDepositQuery.ShowTotal;
var
  sSuffix : string;
begin
  sSuffix := 's';
  if not qryTotal.EOF then
  begin
    if qryTotal.FieldByName('CNT').AsInteger = 1 then
      sSuffix := '';
    sbarInfo.Panels.Items[0].Text := Format('%d Deposit' + sSuffix, [qryTotal.FieldByName('CNT').AsInteger]);
    sbarInfo.Panels.Items[1].Text := Format('%m', [qryTotal.FieldByName('AMT').AsCurrency]);
  end
  else
  begin
    sbarInfo.Panels.Items[0].Text := '';
    sbarInfo.Panels.Items[1].Text := '';
  end;
end;


procedure TfrmBankDepositQuery.btnClearAllClick(Sender: TObject);
begin
  cbBank.Text := '';
  tbDepNoFrom.Text := '';
  tbDepNoTo.Text := '';
  tbAmountFrom.Text := '';
  tbAmountTo.Text := '';
  dtpDateFrom.DateTime := Trunc(Now());
  dtpDateTo.DateTime := Trunc(Now());
end;

procedure TfrmBankDepositQuery.FormShow(Sender: TObject);
begin
//  AddBanks(cbBank, '');

//  dcToday.Click;
//  MakeSQL;
(*  qryNallocs.Close;
  qryNallocs.ParamByName('P_Nreceipt').AsInteger := qryReceipts.FieldByName('NRECEIPT').AsInteger;
  qryNallocs.Open;*)
end;

procedure TfrmBankDepositQuery.pagDepositsChange(Sender: TObject);
begin
   if pagDeposits.ActivePage = tabDeposits then
   begin
      MakeSQL;
      edSearch.Clear;
      edSearch.SetFocus;
      tbtnPrint.Enabled := (qryDeposits.RecordCount > 0);
      tbtPresent.Enabled := (qryDeposits.RecordCount > 0);
   end
   else
   begin
      tbtnPrint.Enabled := False;
      tbtPresent.Enabled := False;
   end;
end;

procedure TfrmBankDepositQuery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
//   Action := caFree;
end;

procedure TfrmBankDepositQuery.FormCreate(Sender: TObject);
begin
  AddBanks(cbBank, '');

  dcToday.Click;
end;

procedure TfrmBankDepositQuery.dtpDateToDblClick(Sender: TObject);
begin
  dtpDateTo.DateTime := dtpDateFrom.DateTime;
end;

procedure TfrmBankDepositQuery.dtpDateFromDblClick(Sender: TObject);
begin
  dtpDateFrom.DateTime := dtpDateTo.DateTime;
end;

procedure TfrmBankDepositQuery.tbtPresentClick(Sender: TObject);
var
  bmPlaceholder: TBookmark;
begin
   case tbtPresent.ImageIndex of
      IDX_DEPOSITPRESENT:
      begin
         with TfrmPresentedConf.Create(Self) do
         begin
           Caption := 'Bank Deposit Presentation...';
           Amount := qryDeposits.FieldByName('AMOUNT').AsFloat;
           dtpDepositDate.DateTime := qryDeposits.FieldByName('DEPOSIT_DATE').AsDateTime;
           dtpPresentedDate.DateTime := qryDeposits.FieldByName('DEPOSIT_DATE').AsDateTime;
           if ShowModal = mrOk then
           begin
             qryTmp.SQL.Clear;
             qryTmp.SQL.Add('UPDATE BANKDEP');
             qryTmp.SQL.Add('SET RECONDATE = :RECONDATE, DEPOSIT_DATE =:DEPOSIT_DATE, RECONCILED = ''Y''');
             qryTmp.SQL.Add('WHERE ACCT = :ACCT');
             //qryTmp.SQL.Add('  AND DEPOSIT_DATE = :DEPOSIT_DATE');
             qryTmp.SQL.Add('  AND NBANKDEP = :NBANKDEP');
             //qryTmp.SQL.Add('  AND AMOUNT = :AMOUNT');
             qryTmp.ParamByName('RECONDATE').AsDateTime := dtpPresentedDate.DateTime;
             qryTmp.ParamByName('DEPOSIT_DATE').AsDateTime := dtpDepositDate.DateTime;
             qryTmp.ParamByName('ACCT').AsString := qryDeposits.FieldByName('ACCT').AsString;
             //qryTmp.ParamByName('DEPOSIT_DATE').AsDateTime := qryDeposits.FieldByName('DEPOSIT_DATE').AsDateTime;
             //qryTmp.ParamByName('AMOUNT').AsString := qryDeposits.FieldByName('AMOUNT').AsString;
             qryTmp.ParamByName('NBANKDEP').AsString := qryDeposits.FieldByName('NBANKDEP').AsString;
             qryTmp.ExecSQL;
             try
               bmPlaceholder := qryDeposits.GetBookmark;
               qryDeposits.Refresh;
//                qryDeposits.Open;
             finally
               qryDeposits.GotoBookmark(bmPlaceholder);
               qryDeposits.FreeBookmark(bmPlaceholder);
             end;
           end;
         end;
      end;
      IDX_DEPOSITUNPRESENT:
      begin
         // Unreconcile this deposit
         qryTmp.SQL.Clear;
         qryTmp.SQL.Add('UPDATE BANKDEP');
         qryTmp.SQL.Add('SET RECONDATE = NULL, RECONCILED = ''N''');
         qryTmp.SQL.Add('WHERE ACCT = :ACCT');
         //qryTmp.SQL.Add('  AND DEPOSIT_DATE = :DEPOSIT_DATE');
         //qryTmp.SQL.Add('  AND AMOUNT = :AMOUNT');
         qryTmp.SQL.Add('  AND NBANKDEP = :NBANKDEP');
         qryTmp.ParamByName('ACCT').AsString := qryDeposits.FieldByName('ACCT').AsString;
         //qryTmp.ParamByName('AMOUNT').AsString := qryDeposits.FieldByName('AMOUNT').AsString;
         qryTmp.ParamByName('NBANKDEP').AsString := qryDeposits.FieldByName('NBANKDEP').AsString;
         qryTmp.ExecSQL;
         // Unreconcile any reconciliation entry for this deposit
         // ??? This is risky, as multiple deposits for the same amount on the same day will
         //     all be unreconciled
         qryTmp.SQL.Clear;
         qryTmp.SQL.Add('UPDATE BANKREC');
         qryTmp.SQL.Add('SET RECONDATE = NULL');
         qryTmp.SQL.Add('WHERE BANK = :Bank');
         qryTmp.SQL.Add('  AND TYPE = ''Deposit''');
         qryTmp.SQL.Add('  AND TRUNC(RECONDATE) = :ReconDate');
         qryTmp.SQL.Add('  AND AMOUNT = :Amount');
         qryTmp.ParamByName('Bank').AsString := qryDeposits.FieldByName('ACCT').AsString;
         qryTmp.ParamByName('ReconDate').AsDateTime := Trunc(qryDeposits.FieldByName('RECONDATE').AsDateTime);
         qryTmp.ParamByName('Amount').AsString := qryDeposits.FieldByName('AMOUNT').AsString;
         qryTmp.ExecSQL;
         try
            bmPlaceholder := qryDeposits.GetBookmark;
            qryDeposits.Refresh;
//         qryDeposits.Open;
         finally
            qryDeposits.GotoBookmark(bmPlaceholder);
            qryDeposits.FreeBookmark(bmPlaceholder);
         end;
      end;
   end;
   SetPresentationButton();
end;

procedure TfrmBankDepositQuery.dbgrDepositsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TDBGrid) do
  begin
    if (gdSelected in State) and
       ( (gdFocused in State) or
       (not (gdFocused in State) and (dgAlwaysShowSelection in Options)) ) then
      Canvas.Font.Color := clHighlightText
    else
    begin
      if (qryDeposits.FieldByName('ReconciledState').AsString = 'Unreconciled') then
        Canvas.Font.Color := clRed
      else
        Canvas.Font.Color := clWindowText;
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;
end;

procedure TfrmBankDepositQuery.qryDepositsAfterScroll(DataSet: TDataSet);
begin
  qryRcpTotal.Close;
  qryRcpTotal.Open;
  ShowItemsTotal;
  SetPresentationButton();
end;

procedure TfrmBankDepositQuery.edSearchChange(Sender: TObject);
begin
  try
    if pagDeposits.ActivePage = tabDeposits then
      qryDeposits.LocateEx('NBANKDEP', edSearch.Text, [lxPartialKey]);
  except
    // silent exception
  end;
end;

procedure TfrmBankDepositQuery.edSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN:
    begin
      if Trim(edSearch.Text) = '' then
       qryDeposits.Next
      else
        qryDeposits.LocateEx('NBANKDEP', edSearch.Text, [lxNext]);
      Key := 0;
    end;
    VK_UP:
    begin
      if Trim(edSearch.Text) = '' then
       qryDeposits.Prior
      else
        qryDeposits.LocateEx('NBANKDEP', edSearch.Text, [lxUp]);
      Key := 0;
    end;
  end;
end;

procedure TfrmBankDepositQuery.tbtPrintClick(Sender: TObject);
begin
  with qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT SUM(AMOUNT) AS CASH FROM RECEIPT WHERE ACCT = ''' + qryDeposits.FieldByName('ACCT').AsString + ''' AND NBANKDEP = ' + qryDeposits.FieldByName('NBANKDEP').AsString + ' AND TYPE = ''CA''';
    Open;
    ppVarCash.Value := FieldByName('CASH').AsFloat;
    Close;
    SQL.Text := 'SELECT SUM(AMOUNT) AS CREDIT FROM RECEIPT WHERE ACCT = ''' + qryDeposits.FieldByName('ACCT').AsString + ''' AND NBANKDEP = ' + qryDeposits.FieldByName('NBANKDEP').AsString + ' AND TYPE = ''CC''';
    Open;
    ppVarCredit.Value := FieldByName('CREDIT').AsFloat;
    Close;
    SQL.Text := 'SELECT SUM(AMOUNT) AS TOTAL FROM RECEIPT WHERE ACCT = ''' + qryDeposits.FieldByName('ACCT').AsString + ''' AND NBANKDEP = ' + qryDeposits.FieldByName('NBANKDEP').AsString;
    Open;
    ppVarTotal.Value := FieldByName('TOTAL').AsFloat;
    Close;
  end;

  qryBankDtls.Close;
  qryBankDtls.SQL.Text := 'SELECT BANKNAME, NAME, ACCOUNTNUMBER, BRANCH FROM BANK WHERE ACCT = ''' + qryDeposits.FieldByName('ACCT').AsString + '''';
  qryBankDtls.Open;
  qryDepositedReceipts.Open;
  ppLabelEntity.Caption := dmAxiom.EntityName;
//  qrBankDeposit.PreviewModal;
ppReport1.Print;
  qryDepositedReceipts.Close;
  qryTmp.Close;
  qryBankDtls.Close;
end;

procedure TfrmBankDepositQuery.tvBankDepositsStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('ReconciledState');
   if VarToStr(ARecord.Values[AColumn.Index]) = 'Unreconciled' then
      AStyle := cxStyleRed
   else
      AStyle := cxStyleStd;
end;

// AES 5/7/2018 ADDED ACCT TO SQL
procedure TfrmBankDepositQuery.UndoDeposit1Click(Sender: TObject);
begin
   if (MsgAsk('Do you want to undo this Bank Deposit?') = mrYes) then
   begin
      with qryTmp do
      begin
         Close;
         SQL.Clear;
         SQL.Text := 'UPDATE RECEIPT SET NBANKDEP = NULL , BANKED_DATE = NULL, BANKED = ''N''  WHERE NBANKDEP = :NBANKDEP AND ACCT = :ACCT';
         ParambyName('NBANKDEP').AsString := tvBankDepositsNBANKDEP.EditValue;
         ParambyName('ACCT').AsString := tvBankDepositsACCT.EditValue;
         ExecSQL;
         Close;
         SQL.Clear;
         SQL.Text := 'DELETE FROM BANKDEP WHERE NBANKDEP = :NBANKDEP AND ACCT = :ACCT';
         ParambyName('NBANKDEP').AsString := tvBankDepositsNBANKDEP.EditValue;
         ParambyName('ACCT').AsString := tvBankDepositsACCT.EditValue;
         ExecSQL;
         Close;
         qryDeposits.Close;
         qryDeposits.Open;
      end;
   end;
end;

procedure TfrmBankDepositQuery.miTransferReceiptClick(Sender: TObject);
var
  sTmp : string;
{
  Modified 25.10.2002 GG
  Removed compiler hint

  bValid : boolean;
}
begin
  //transfer the receipt to another deposit....
  if (InputQuery('Transfer Deposit', 'Please enter the new deposit number: ',  sTmp)) then
    begin
      //check to see that the deposit is valid - same entity etc
      with qryTmp do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ACCT FROM BANKDEP');
          SQL.Add('WHERE ACCT =:ACCT');
          SQL.Add('AND NBANKDEP =:NBANKDEP');
          ParambyName('ACCT').AsString := qryReceipts.FieldbyName('ACCT').AsString;
          ParambyName('NBANKDEP').AsString := sTmp;
          Open;
          if (RecordCount = 1) then
            begin
              Close;
              SQL.Text := 'UPDATE RECEIPT SET NBANKDEP =:NBANKDEP WHERE NRECEIPT =:NRECEIPT';
              ParambyName('NBANKDEP').AsString := sTmp;
              ParambyName('NRECEIPT').AsString := qryReceipts.FieldbyName('NRECEIPT').AsString;
              ExecSQL;
              Close;
              ShowMessage('Receipt #' + qryReceipts.FieldbyName('RCPTNO').AsString + ' successfully moved from bank deposit # ' + qryReceipts.FieldbyName('NBANKDEP').AsString + ' to deposit # ' + sTmp);
              qryReceipts.Close;
              qryReceipts.Open;
            end
          else
            MessageDlg('Deposit # ' + sTmp + ' is invalid for this bank account', mtError, [mbOK], 0);
          Close;
        end;
    end;
end;

procedure TfrmBankDepositQuery.dxBarButton3Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmBankDepositQuery.miChangeDepositDateClick(Sender: TObject);
var
  sTmp,
  sOrigTmp : TDateTime;
begin
   sTmp := qryDeposits.FieldbyName('DEPOSIT_DATE').AsDateTime;
   sOrigTmp := qryDeposits.FieldbyName('DEPOSIT_DATE').AsDateTime;
   if (InputQueryDate('Change Deposit Date', 'Please enter the new deposit date: ',  sTmp)) then
   begin
      if (sTmp < sOrigTmp) then
         MsgErr('Deposit Date cannot be less than the Receipt Date. Deposit Date not changed.')
      else
      begin
         with qryTmp do
         begin
            Close;
            SQL.Text := 'UPDATE BANKDEP SET DEPOSIT_DATE =:DEPOSIT_DATE WHERE NBANKDEP =:NBANKDEP AND ACCT = :ACCT';
            ParambyName('DEPOSIT_DATE').AsDateTime := sTmp;
            ParambyName('NBANKDEP').AsInteger := qryDeposits.FieldbyName('NBANKDEP').AsInteger;
            ParambyName('ACCT').AsString := tvBankDepositsACCT.EditValue;
            ExecSQL;
            Close;
            ShowMessage('Deposit Date successfully changed');
            qryDeposits.Close;
            qryDeposits.Open;
            Close;
         end;
      end;
   end;
end;

end.

