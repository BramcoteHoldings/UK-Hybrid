unit RptLedgerDisb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ComCtrls, Buttons, StdCtrls,
  DateChangeButton, NumberEdit, Grids, DBGrids, OracleUniProvider, Uni, DBAccess, MemDS,
  ppVar, ppDB, ppParameter, ppDesignLayer, ppModule, raCodMod, ppCtrls,
  ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe;

type
  TfrmRptLedgerDisb = class(TForm)                               
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblFile: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    DateChangeButton1: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    dcThisMonth: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    btnPrint: TBitBtn;
    lblClient: TLabel;
    lblDesc: TLabel;
    qryMatter: TUniQuery;
    btnMatter: TBitBtn;
    qryTmpLedger: TUniQuery;
    chkUnbilled: TCheckBox;
    cbAnticipated: TCheckBox;
    chkGst: TCheckBox;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    plMatter: TppDBPipeline;
    dsMatter: TUniDataSource;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    dsTmpLedger: TUniDataSource;
    plTmpLedger: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLine1: TppLine;
    ppDBMemo1: TppDBMemo;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel8: TppLabel;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    pplblPeriod: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText5: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLabel20: TppLabel;
    ppdbInterestAmt: TppDBText;
    pplblInterestMsg: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel14: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBCalc4: TppDBCalc;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMatterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    procedure GetMatter(sFile : string);
  public
    { Public declarations }
    procedure DisplayMatter(sFile : string);
    procedure DisplayArchive(sFile : string);
  end;

implementation

uses
  AxiomData, MiscFunc, MSearch, citfunc;

{$R *.DFM}

var
  sTable : string;


procedure TfrmRptLedgerDisb.DisplayMatter(sFile : string);
begin
  sTable := 'MATTER M, PHONEBOOK P';
  GetMatter(sFile);
  if not Self.Visible then
    ShowModal;
end;


procedure TfrmRptLedgerDisb.DisplayArchive(sFile : string);
begin
  sTable := 'ARCHIVE';
  GetMatter(sFile);
  if not Self.Visible then
    ShowModal;
end;


procedure TfrmRptLedgerDisb.GetMatter(sFile : string);
begin
  with qryMatter do
  begin
    Close;
    SQL.Text := 'SELECT OPENED, FILEID, P.SEARCH, LONGDESCR, SHORTDESCR, NMATTER FROM ' + sTable + ' WHERE FILEID = ' + QuotedStr(sFile);
    SQL.Text := SQL.Text + ' AND M.NCLIENT = P.NCLIENT';
    Prepare;
    Open;

    if not IsEmpty then
    begin
      lblFile.Caption := FieldByName('FILEID').AsString;
      lblClient.Caption := FieldByName('SEARCH').AsString;
      lblDesc.Caption := FieldByName('SHORTDESCR').AsString;
      dtpFrom.Date := FieldByName('OPENED').AsDateTime;
    end
    else
    begin
      lblFile.Caption := '';
      lblClient.Caption := '';
      lblDesc.Caption := '';
    end;
  end;
end;


procedure TfrmRptLedgerDisb.FormShow(Sender: TObject);
begin
  dcThisMonth.Click;
  if not qryMatter.Active then
    DisplayMatter(ReopenListLast('MATTER'));
  if qryMatter.Active then
    dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
  chkFrom.Checked := False;
  chkTo.Checked := False;
end;


procedure TfrmRptLedgerDisb.btnPrintClick(Sender: TObject);
begin
  with qryTmpLedger do
  begin
    Close;
    SQL.Clear;
    //SQL.Add('SELECT ALLOC.CREATED, ALLOC.TAXCODE, ALLOC.REFNO, ALLOC.PAYER, NMEMO.DISPATCHED AS INVOICEDATE, NMEMO.REFNO AS BILL, ALLOC.AMOUNT, ALLOC.DESCR, ALLOC.SUNDRYTYPE, DECODE(ALLOC.BILLED,''Y'',ALLOC.TAX,(ALLOC.AMOUNT * (abs(R.RATE)/100))) AS TAX');
    SQL.Add('SELECT ALLOC.CREATED, ALLOC.TAXCODE, ALLOC.REFNO, ALLOC.PAYER, NMEMO.DISPATCHED AS INVOICEDATE, NMEMO.REFNO AS BILL, ALLOC.AMOUNT, ALLOC.DESCR, ALLOC.SUNDRYTYPE, DECODE(ALLOC.BILLED,''Y'',ALLOC.TAX,');
    SQL.Add(' decode(R.RATE-R.BILL_RATE,''0'',ALLOC.TAX,(ALLOC.AMOUNT * (abs(R.RATE)/100))) ) AS TAX, calc_disb_percent(alloc.nmatter) as disb_percent ');
    // rb
    if chkGst.Checked then
    begin
{      SQL.ADD(',to_number(DECODE(SUBSTR((ALLOC.AMOUNT + NVL(DECODE(ALLOC.BILLED,''Y'',');
      SQL.ADD(' DECODE(ALLOC.BILLED,''Y'',DECODE(ALLOC.BILLED,''Y'',DECODE(ALLOC.BILLED,''Y'',');
      SQL.ADD('ALLOC.TAX,(ALLOC.AMOUNT * (ABS(R.RATE)/100))),(ALLOC.AMOUNT * (ABS(R.RATE)/100))),(ALLOC.AMOUNT * (ABS(R.RATE)/100))),');
      SQL.ADD('(ALLOC.AMOUNT * (ABS(R.RATE)/100))),0)),0,1),''0'',to_number(NULL),''-'',ABS(ALLOC.AMOUNT + NVL(DECODE(ALLOC.BILLED,''Y'',ALLOC.TAX,(ALLOC.AMOUNT * (ABS(R.RATE)/100))),0)),to_number(NULL)  )) DEBIT ');

      SQL.ADD(',to_number(DECODE(SUBSTR((ALLOC.AMOUNT + NVL(DECODE(ALLOC.BILLED,''Y'',');
      SQL.ADD('DECODE(ALLOC.BILLED,''Y'',DECODE(ALLOC.BILLED,''Y'',DECODE(ALLOC.BILLED,''Y'',');
      SQL.ADD('ALLOC.TAX,(ALLOC.AMOUNT * (ABS(R.RATE)/100))),(ALLOC.AMOUNT * (ABS(R.RATE)/100))),(ALLOC.AMOUNT * (ABS(R.RATE)/100))),');
      SQL.ADD('(ALLOC.AMOUNT * (ABS(R.RATE)/100))),0)),0,1),''-'',to_number(NULL),ABS(ALLOC.AMOUNT + NVL(DECODE(ALLOC.BILLED,''Y'',ALLOC.TAX,(ALLOC.AMOUNT * (ABS(R.RATE)/100))),0))  )) CREDIT ');}

      SQL.ADD(',NVL(to_number(DECODE(SUBSTR(ALLOC.AMOUNT + ALLOC.TAX,0,1),''0'',to_number(NULL),''-'',ABS(ALLOC.AMOUNT + ALLOC.TAX))),0) DEBIT ');

      SQL.ADD(',NVL(to_number(DECODE(SUBSTR(ALLOC.AMOUNT + ALLOC.TAX,0,1),''-'',to_number(NULL),ABS(ALLOC.AMOUNT + ALLOC.TAX ))),0) CREDIT ');
      SQL.Add(',(ALLOC.AMOUNT + ALLOC.TAX) *-1 AS BALANCE ');
    end
    else
    begin
      SQL.ADD(',NVL(to_number(DECODE(SUBSTR(ALLOC.AMOUNT,0,1),''0'',to_number(NULL),''-'',ABS(ALLOC.AMOUNT))),0) DEBIT ');
      SQL.ADD(',NVL(to_number(DECODE(SUBSTR(ALLOC.AMOUNT,0,1),''-'',to_number(NULL),ABS(ALLOC.AMOUNT ))),0) CREDIT ');
      SQL.Add(',(ALLOC.AMOUNT*-1) AS BALANCE ')
    end;
    SQL.Add('FROM ALLOC, NMEMO,TAXRATE R');
    SQL.Add('WHERE ALLOC.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
    SQL.Add('  AND ALLOC.TRUST <> ''T'' AND ALLOC.NINVOICE IS NULL AND((ALLOC.NCHEQUE <> 0 AND ALLOC.TYPE <> ''J1'' AND ALLOC.TYPE <> ''RF'') OR ALLOC.TYPE = ''J2'' OR ALLOC.TYPE = ''DR'') ');
    SQL.Add('  AND ALLOC.NMEMO = NMEMO.NMEMO(+)');
    SQL.Add('  AND ALLOC.TAXCODE = R.TAXCODE (+)');
    SQL.Add('  AND TRUNC(ALLOC.CREATED) >= R.COMMENCE and TRUNC(ALLOC.CREATED) <= nvl(end_period,sysdate+1000)');
    if chkFrom.Checked then
    begin
      SQL.Add('  AND ALLOC.CREATED >= :P_DateFrom ');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpFrom.Date);
    end;
    if chkTo.Checked then
    begin
      SQL.Add('  AND ALLOC.CREATED < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpTo.Date) + 1;
    end;
    if chkUnbilled.Checked then
      SQL.Add('  AND ALLOC.BILLED = ''N'' ')
    else
    begin
      SQL.Add('UNION ALL');
      SQL.Add('SELECT DISPATCHED AS CREATED, null AS TAXCODE, REFNO, BILL_TO, DISPATCHED AS INVOICEDATE, REFNO AS BILL, DISB as AMOUNT, ''Client Bill '' || REFNO, NULL as SUNDRYTYPE, DISBTAX AS TAX');
{
  Modified 21.10.2002 GG

  Removed tax component from Debit and Credit figures, because these columns are supposed to show EX-TAX amounts
      //rb
      SQL.ADD(',DECODE(SUBSTR((DISB + NVL(DISBTAX,0)),0,1),''0'',to_number(NULL),''-'',ABS(DISB + NVL(DISBTAX,0)),0  ) DEBIT ');
      //SQL.ADD(',DECODE(SUBSTR((DISB + NVL(DISBTAX,0)),0,1),''0'',DECODE(LENGTH(DISB + NVL(DISBTAX,0)),''1'',to_number(NULL),ABS(DISB + NVL(DISBTAX,0))),''-'',to_number(NULL),ABS(DISB + NVL(DISBTAX,0))  ) CREDIT ');
      SQL.ADD(',DECODE(SUBSTR((DISB + NVL(DISBTAX,0)),0,1),''-'',to_number(NULL),ABS(DISB + NVL(DISBTAX,0))  ) CREDIT ');
}
      SQL.Add(',calc_disb_percent(nmatter) as disb_percent');
      SQL.ADD(',NVL(DECODE(SUBSTR((DISB + NVL(DISBTAX,0)),0,1),''0'',to_number(NULL),''-'',ABS(DISB),0),0) DEBIT ');
      //SQL.ADD(',DECODE(SUBSTR((DISB + NVL(DISBTAX,0)),0,1),''0'',DECODE(LENGTH(DISB + NVL(DISBTAX,0)),''1'',to_number(NULL),ABS(DISB + NVL(DISBTAX,0))),''-'',to_number(NULL),ABS(DISB + NVL(DISBTAX,0))  ) CREDIT ');
      SQL.ADD(',NVL(DECODE(SUBSTR((DISB + NVL(DISBTAX,0)),0,1),''-'',to_number(NULL),ABS(DISB)),0) CREDIT ');
      SQL.Add(',NMEMO.DISB AS BALANCE ');
      SQL.Add('FROM NMEMO');
      SQL.Add('WHERE NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('  AND DISPATCHED IS NOT NULL AND ((DISB <> 0 AND RV_TYPE <> ''D''))'); // OR (ANTD <> 0 AND RV_TYPE = ''C''))');
      if chkFrom.Checked then
        SQL.Add('  AND DISPATCHED >= :P_DateFrom ');
      if chkTo.Checked then
        SQL.Add('  AND DISPATCHED < :P_DateTo ');
      // 25 Jan 2019 dw add in disbursement receipts
      SQL.Add('UNION ALL');
      SQL.Add('SELECT A.CREATED, A.TAXCODE, A.REFNO, A.PAYER, NULL AS INVOICEDATE, '''' AS BILL, A.AMOUNT, A.DESCR, A.SUNDRYTYPE, A.TAX, ');
      SQL.Add(' calc_disb_percent(a.nmatter) as disb_percent ');
      SQL.ADD(',NVL(to_number(DECODE(SUBSTR(A.AMOUNT,0,1),''0'',to_number(NULL),''-'',ABS(A.AMOUNT))),0) DEBIT ');
      SQL.ADD(',NVL(to_number(DECODE(SUBSTR(A.AMOUNT,0,1),''-'',to_number(NULL),ABS(A.AMOUNT ))),0) CREDIT ');
      SQL.Add(',(A.AMOUNT*-1) AS BALANCE ');
      SQL.Add('FROM ALLOC A ' );
      SQL.Add('WHERE A.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('  AND A.TRUST <> ''T'' AND A.NINVOICE IS NULL AND A.NRECEIPT <> 0 AND A.DISB_NALLOC_RECEIPT <> 0 ');
      if chkFrom.Checked then
          SQL.Add('  AND A.CREATED >= :P_DateFrom ');
      if chkTo.Checked then
          SQL.Add('  AND A.CREATED < :P_DateTo ');
      if cbAnticipated.checked then
      begin
        SQL.Add('UNION ALL');
        SQL.Add('SELECT CHEQREQ.REQDATE AS CREATED, ''Anticipated'' as REFNO, TAXCODE, CHEQREQ.PAYEE AS PAYEE, NMEMO.DISPATCHED AS INVOICEDATE, NMEMO.REFNO AS BILL,  CHEQREQ.AMOUNT as AMOUNT, CHEQREQ.DESCR, NULL as SUNDRYTYPE, CHEQREQ.TAX as TAX');
{
  Modified 21.10.2002 GG

  Removed tax component from Debit and Credit figures, because these columns are supposed to show EX-TAX amounts
        //rb
        SQL.ADD(',DECODE(SUBSTR((CHEQREQ.AMOUNT + NVL(CHEQREQ.TAX,0)),0,1),''0'',to_number(NULL),''-'',ABS(CHEQREQ.AMOUNT + NVL(CHEQREQ.TAX,0)),to_number(NULL)  ) DEBIT ');
        SQL.ADD(',DECODE(SUBSTR((CHEQREQ.AMOUNT + NVL(CHEQREQ.TAX,0)),0,1),''-'',to_number(NULL),ABS(CHEQREQ.AMOUNT + NVL(CHEQREQ.TAX,0))  ) CREDIT ');
}
        SQL.Add(',calc_disb_percent(alloc.nmatter) as disb_percent');
        SQL.ADD(',NVL(DECODE(SUBSTR((CHEQREQ.AMOUNT + NVL(CHEQREQ.TAX,0)),0,1),''0'',to_number(NULL),''-'',ABS(CHEQREQ.AMOUNT),to_number(NULL)),0) DEBIT ');
        SQL.ADD(',NVL(DECODE(SUBSTR((CHEQREQ.AMOUNT + NVL(CHEQREQ.TAX,0)),0,1),''-'',to_number(NULL),ABS(CHEQREQ.AMOUNT)),0) CREDIT ');
        SQL.Add(',(CHEQREQ.AMOUNT + CHEQREQ.TAX) *-1 AS BALANCE ');
        SQL.Add('FROM CHEQREQ, NMEMO');
        SQL.Add('WHERE CHEQREQ.FILEID = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString));
        SQL.Add('  AND CHEQREQ.BILLED = ''Y''');
        SQL.Add('  AND CHEQREQ.ANTICIPATED = ''Y''');
        SQL.Add('  AND CHEQREQ.NMEMO = NMEMO.NMEMO(+)');
        if chkFrom.Checked then
          SQL.Add('  AND CHEQREQ.REQDATE >= :P_DateFrom ');
        if chkTo.Checked then
          SQL.Add('  AND CHEQREQ.REQDATE < :P_DateTo ');
      end;

    end;
    SQL.Add('ORDER BY CREATED');
    if dmAxiom.runningide then
       qryTmpLedger.sql.SaveToFile('c:\tmp\rptledgerdisb.sql');
    Open;
  end;

  ppReport1.Print;
//  qrDisbLedger.PreviewModal;
  Self.Close;
end;

procedure TfrmRptLedgerDisb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qryTmpLedger.Close;

  Self.Release;
end;

procedure TfrmRptLedgerDisb.btnMatterClick(Sender: TObject);
begin
   if sTable = 'MATTER M, PHONEBOOK P' then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOK then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;

{  if sTable = 'ARCHIVE' then
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
    if frmArchiveSearch.ShowModal = mrOK then
      DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString);}
end;

procedure TfrmRptLedgerDisb.FormCreate(Sender: TObject);
begin
  sTable := 'MATTER M, PHONEBOOK P';
end;

procedure TfrmRptLedgerDisb.ppReport1BeforePrint(Sender: TObject);
begin
   if chkFrom.Checked and chkTo.Checked then
      pplblPeriod.Caption := 'for the period ' + FormatDateTime('ddddd', dtpFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpTo.Date)
   else if chkFrom.Checked then
      pplblPeriod.Caption := 'from ' + FormatDateTime('ddddd', dtpFrom.Date)
   else if chkTo.Checked then
      pplblPeriod.Caption := 'to ' + FormatDateTime('ddddd', dtpTo.Date)
   else
      pplblPeriod.Caption := 'for all transactions';
   // display interest on disb only if sundry type set in system table
   // AES  08.07.2009
   if SystemString('DFLT_DISB_SUNDRY') = '' then
   begin
      pplblInterestMsg.Visible := False;
      ppdbInterestAmt.Visible := False;
   end
   else
   begin
      pplblInterestMsg.Visible := True;
      ppdbInterestAmt.Visible := True;
   end;
end;

procedure TfrmRptLedgerDisb.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
   if chkGst.Checked then
      Text := 'Inc Tax'
   else
      Text := 'Ex Tax';
end;

procedure TfrmRptLedgerDisb.ppLabel18GetText(Sender: TObject;
  var Text: String);
begin
   if chkGst.Checked then
      Text := 'Inc Tax'
   else
      Text := 'Ex Tax';
end;

end.

