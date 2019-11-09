unit RptLedgerTrust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ComCtrls, Buttons, StdCtrls,
  DateChangeButton, NumberEdit,FMXUtils, OracleUniProvider, Uni, DBAccess, Registry,
  ppVar, ppPrnabl, ppClass, ppCtrls, ppBands, ppDB, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppRegion, ppModule,
  raCodMod, ppSubRpt, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, ppParameter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, ppFileUtils, ppIniStorage, ppDesignLayer, MemDS, ppMemo,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmRptLedgerTrust = class(TForm)
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
    BitBtn1: TBitBtn;
    qryTrustLedger: TUniQuery;
    chkWrap: TCheckBox;
    chInvestments: TCheckBox;
    cbTrust: TCheckBox;
    dsMatter: TUniDataSource;
    dsTrustLedger: TUniDataSource;
    plMatter: TppDBPipeline;
    plTrustLedger: TppDBPipeline;
    rptTrustLedger: TppReport;
    qryCr_View: TUniQuery;
    rgOrderBy: TcxRadioGroup;
    rgSequence: TcxRadioGroup;
    qryTmp: TUniQuery;
    ppParameterList1: TppParameterList;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    pplblReportTitle: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText10: TppDBText;
    ppLabel4: TppLabel;
    ppDBText11: TppDBText;
    ppLabel5: TppLabel;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLabel9: TppLabel;
    ppLabel8: TppLabel;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine3: TppLine;
    ppDetailBand1: TppDetailBand;
    ppRegion4: TppRegion;
    ppLabel15: TppLabel;
    ppDBText7: TppDBText;
    ppRegion2: TppRegion;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppRegion3: TppRegion;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppVariable1: TppVariable;
    memoDescr: TppDBMemo;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppDBText1: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc2: TppDBCalc;
    ppLabel13: TppLabel;
    ppVariable2: TppVariable;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    cmbBanks: TcxLookupComboBox;
    Label4: TLabel;
    qryBanks: TUniQuery;
    dsBanks: TUniDataSource;
    procedure btnPrinClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMatterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryTrustLedgerCalcFields(DataSet: TDataSet);
    procedure rptTrustLedgerBeforePrint(Sender: TObject);
    procedure dbtDescrPrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDBText7Print(Sender: TObject);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure ppLabel12Print(Sender: TObject);
  private
    { Private declarations }
    FArchiveBatchMode: Boolean; // for some reason the TDateTimePicker component is always checked when printing in batch mode
    FClearedFunds: currency;
    procedure GetMatter(sFile : string);
  public
    { Public declarations }
    procedure DisplayMatter(sFile : string);
    procedure LoadMatter(sFile : string);
    procedure DisplayArchive(sFile : string);
    procedure LoadArchive(sFile : string);
    procedure Print(AutoPrint: Boolean);
  end;

const
  cnTransit = 'Transit Register:';

implementation

uses
  AxiomData, MSearch, MiscFunc, citfunc;

{$R *.DFM}

var
  sTable : string;

procedure TfrmRptLedgerTrust.DisplayMatter(sFile : string);
begin
   sTable := 'MATTER M, PHONEBOOK P';
   GetMatter(sFile);
   if not Self.Visible then
      Show;
end;

procedure TfrmRptLedgerTrust.LoadMatter(sFile : string);
begin
   sTable := 'MATTER M, PHONEBOOK P';
   GetMatter(sFile);
end;

procedure TfrmRptLedgerTrust.DisplayArchive(sFile : string);
begin
   FArchiveBatchMode := True;
   sTable := 'ARCHIVE';
   GetMatter(sFile);
   if not Self.Visible then
      ShowModal;
end;

procedure TfrmRptLedgerTrust.LoadArchive(sFile : string);
begin
   sTable := 'ARCHIVE';
   GetMatter(sFile);
end;

procedure TfrmRptLedgerTrust.GetMatter(sFile : string);
begin
   with qryMatter do
   begin
      Close;
//      SQL.Text := 'SELECT OPENED, FILEID, P.SEARCH, LONGDESCR, SHORTDESCR, NMATTER FROM ' + sTable + ' WHERE FILEID = ' + QuotedStr(sFile);
//      SQL.Text := SQL.Text + ' AND M.NCLIENT = P.NCLIENT';
      ParamByName('p_file').AsString := sFile;
      Prepare;
      Open;

      if not IsEmpty then
      begin
         lblFile.Caption := FieldByName('FILEID').AsString;
         lblClient.Caption := FieldByName('SEARCH').AsString;
         lblDesc.Caption := FieldByName('SHORTDESCR').AsString;
         dtpFrom.Date := FieldByName('OPENED').AsDateTime;
         qryBanks.Close;
         qryBanks.ParamByName('nmatter').AsInteger := FieldByName('nmatter').AsInteger;
         qryBanks.Open;
         cmbBanks.ItemIndex := 0;
      end
      else
      begin
         lblFile.Caption := '';
         lblClient.Caption := '';
         lblDesc.Caption := '';
      end;
   end;
end;

procedure TfrmRptLedgerTrust.btnPrinClick(Sender: TObject);
begin
  Print(False);
end;

procedure TfrmRptLedgerTrust.Print(AutoPrint: Boolean);
var
  sDate,
  sOrder,
  sSQLTrust,
  sdesc: string;
  nJournalTemp,
  nAllocTemp: integer;
begin
   case rgOrderBy.ItemIndex of
      1: sOrder := 'alloc.Created';
      0: sOrder := 'alloc.System_Date';
   end;

   // Clear temp table in CASE LAST REPORT FAILED
   try
      with qryTmp do
      begin
         SQL.Clear;
         SQL.Add('DELETE FROM TRUST_LIST_RPT WHERE EMPCODE = '''+ dmAxiom.UserID + '''');
//      qryTmp.ParamByName('AX_USER').AsString := dmAxiom.UserID;
         ExecSQL;
      end;
   except
      // no view found
   end;

   try
      with qryCr_View do
      begin
//        sDate := 'trunc('+ sOrder + ') AS CREATED,  ';
        Close;
        SQL.Clear;
//        SQL.Add('CREATE MATERIALIZED VIEW ' + TableString('EMPLOYEE','CODE',dmAxiom.UserID,'USER_NAME') + '.MVW_TRUST_LIST AS ');
        SQL.Add('INSERT INTO TRUST_LIST_RPT(EMPCODE,ORDTYPE,RTYPE,RTYPETEXT,SYSTEM_DATE,CREATED,DM,NALLOC,AMOUNT,PAYER,SPEC_PURPOSE, ');
  	     SQL.Add('CLEARED,DCLEARDATE,DESCR,REFNO,ALLOCTYPE,DEBIT,CREDIT,X, NJOURNAL) ');
        SQL.Add('SELECT '''+dmAxiom.UserID+''' AS EMPCODE, 2 AS ORDTYPE,1 as RTYPE,''Trust'' as RTYPETEXT,');
        SQL.Add('ALLOC.SYSTEM_DATE, trunc(ALLOC.CREATED), ALLOC.amount * -1 as dm, NALLOC, ALLOC.AMOUNT, PAYER, SPEC_PURPOSE, CLEARED, DCLEARDATE,');
        SQL.Add(' case when (alloc.njournal is null) THEN nvl(cheque.descr, alloc.descr) else ALLOC.DESCR || '' ('' || CLIENT_NAME||'' - ''||FILEID||''-''||MATTER_DESC||'')'' END AS DESCR,');
        SQL.Add(' ALLOC.REFNO, ALLOC.TYPE as ALLOCTYPE');
        //rb
//        SQL.ADD(',DECODE(SUBSTR((ALLOC.AMOUNT),0,1),''0'',to_number(NULL),''-'',ABS(ALLOC.AMOUNT ),to_number(NULL)  ) DEBIT ');
//        SQL.ADD(',DECODE(SUBSTR((ALLOC.AMOUNT),0,1),''-'',to_number(NULL),ABS(ALLOC.AMOUNT)  ) CREDIT, ');
        SQL.Add(',case when ((alloc.amount)+(alloc.tax) < 0) then (0-(alloc.amount))+(0-(alloc.tax)) else null end as debit ');
        SQL.Add(',case when ((alloc.amount)+(alloc.tax) > 0) then (alloc.amount)+(alloc.tax) else null end as credit ' );
        SQL.Add(',alloc.amount + alloc.tax as x, alloc.njournal ');
        SQL.Add('FROM ALLOC, CHEQUE ');
        SQL.Add('WHERE NMATTER = '+ qryMatter.FieldByName('NMATTER').AsString);
        SQL.Add('  AND ALLOC.TRUST = ''T'' ');
        SQL.Add('  and bank = '+ quotedstr(cmbBanks.EditValue) );
        SQL.Add('  and alloc.ncheque = cheque.ncheque(+) ');
        if chkFrom.Checked and not(FArchiveBatchMode) then
            SQL.Add('AND ' + sOrder + ' >= to_date('''+ DateTostr(Trunc(dtpFrom.Date))+''',''dd/mm/yyyy'')');
        if chkTo.Checked and not(FArchiveBatchMode) then
        begin
            SQL.Add('AND ' + sOrder + ' < to_date('''+ DateTostr(Trunc(dtpTo.Date)+1)+''',''dd/mm/yyyy'')');
   //         ParamByName('P_DateTo').AsDate := Trunc(dtpTo.Date) + 1;
        end;
        if chkFrom.Checked and not(FArchiveBatchMode) then
        begin
           SQL.Add('UNION ALL');
           SQL.Add('select '''+dmAxiom.UserID+''' AS EMPCODE,1 AS ORDTYPE, 1 as RTYPE,max(''Trust'') as RTYPETEXT, ');
           SQL.Add('MAX(trunc(SYSTEM_DATE)) AS SYSTEM_DATE, MAX(trunc(CREATED)) AS CREATED, 0 as dm, 0,0 as Amount, max(''Opening Balance'') as Payer, ');
           SQL.Add('SUM(SPEC_PURPOSE) as Spec_Purpose, max(''Y'') as CLEARED, MIN(DCLEARDATE) as DCLEARDATE, max(Null) as Descr, max(Null) as REFNO,max(TYPE) as ALLOCTYPE');
               //rb
//           SQL.ADD(',DECODE(SUBSTR((SUM(AMOUNT)),0,1),''0'',to_number(NULL),''-'',ABS(SUM(AMOUNT) ),to_number(NULL)  ) DEBIT ');
//           SQL.ADD(',DECODE(SUBSTR((SUM(AMOUNT)),0,1),''-'',to_number(NULL),ABS(SUM(AMOUNT))  ) CREDIT, ');
           SQL.Add(',case when (sum(amount)+sum(tax) < 0) then (0-sum(amount))+(0-sum(tax)) else null end as debit ');
           SQL.Add(',case when (sum(amount)+sum(tax) > 0) then sum(amount)+sum(tax) else null end as credit ' );
           SQL.Add(',SUM(amount)+sum(tax) as x, max(njournal) njournal ');
           SQL.Add('from alloc');
           SQL.Add('where nmatter = '+ qryMatter.FieldByName('NMATTER').AsString);
           SQL.Add(' and bank = '+ quotedstr(cmbBanks.EditValue) );
           SQL.Add(' and alloc.trust = ''T'' and ' + sOrder + ' < to_date('''+ DateTostr(Trunc(dtpFrom.Date))+''',''dd/mm/yyyy'')');
           SQL.Add('group by nmatter');
   //       ParamByName('P_DateFrom').AsDate := Trunc(dtpFrom.Date);
        end;
        SQL.Add('UNION ALL');
        SQL.Add('SELECT '''+dmAxiom.UserID+''' AS EMPCODE,2 AS ORDTYPE, 1 as RTYPE,''Trust'' as RTYPETEXT,trunc(SYSTEM_DATE) AS SYSTEM_DATE, trunc(created) AS CREATED, amount * -1 as dm,ntransit, 0 AS AMOUNT,');
        SQL.Add(' ''Transit Register-Received from: '' || Rcvd_from || ''Paid To: ''||paid_to as PAYER, 0 AS SPEC_PURPOSE, '''' AS CLEARED, to_date('''','''') AS DCLEARDATE, ');
        SQL.Add('DESCR || '' (Amount: ''||to_char(amount,''$999,999.99'') ||'')'' as descr, REFNO,null as ALLOCTYPE');
        //rb
        SQL.Add(',to_number(NULL) AS DEBIT,to_number(NULL) as CREDIT, 0, null' );
        SQL.Add('FROM TRANSIT');
        SQL.Add('WHERE NMATTER = '+ qryMatter.FieldByName('NMATTER').AsString);

        if chInvestments.Checked then
        begin
           SQL.Add('UNION ALL');
           if not cbTrust.Checked then
           begin
              SQL.Clear;
              SQL.Add('INSERT INTO TRUST_LIST_RPT(EMPCODE,ORDTYPE,RTYPE,RTYPETEXT,SYSTEM_DATE,CREATED,DM,NALLOC,AMOUNT,PAYER,SPEC_PURPOSE, ');
  	           SQL.Add('CLEARED,DCLEARDATE,DESCR,REFNO,ALLOCTYPE,DEBIT,CREDIT,X, NJOURNAL) ');
           end;

             if chkFrom.Checked then
             begin
                SQL.Add('SELECT '''+dmAxiom.UserID+''' AS EMPCODE,3 AS ORDTYPE, 2 as RTYPE,''Controlled Monies'' as RTYPETEXT,');
                SQL.Add('to_date('''+ DateTostr(Trunc(dtpFrom.Date))+''',''dd/mm/yyyy'') as SYSTEM_DATE, to_date('''+ DateTostr(Trunc(dtpFrom.Date))+''',''dd/mm/yyyy'') as CREATED, 0 as dm,0, 0 as Amount,');
                SQL.Add(' ''Opening Balance'' PAYER, 0 as SPEC_PURPOSE, '''' as CLEARED, ');
                SQL.Add('to_date('''','''') as DCLEARDATE, '''' AS DESCR, null REFNO,null as ALLOCTYPE');
                SQL.ADD(',0 DEBIT ');
                SQL.ADD(',sum(T.AMOUNT) CREDIT, sum(amount) as x, null');
                SQL.Add('FROM INVESTMENT_TRANS t,DEPOSIT_ACCOUNT a');
                SQL.Add('WHERE t.NDEPOSITACCOUNT = a.NDEPOSITACCOUNT');
                SQL.Add('AND a.NMATTER = '+ qryMatter.FieldByName('NMATTER').AsString);
                SQL.Add('AND ' + sOrder + ' < to_date('''+ DateTostr(Trunc(dtpFrom.Date))+''',''dd/mm/yyyy'')');
                SQL.Add('UNION ALL');
            end;
            SQL.Add('SELECT '''+dmAxiom.UserID+''' AS EMPCODE,4 AS ORDTYPE, 2 as RTYPE,''Controlled Monies'' as RTYPETEXT,');
            SQL.Add(' trunc(SYSTEMDATE) AS SYSTEM_DATE,trunc(t.created) AS CREATED,0 dm,ninvtran, T.AMOUNT,');
            SQL.Add(' T.PAYEEPAYOR PAYER, 0 as SPEC_PURPOSE, '''' as CLEARED, to_date('''','''') as DCLEARDATE,');
            SQL.Add(' TYPE || '' : '' || DESCR AS DESCR, to_char(NINVTRAN) as REFNO,null as ALLOCTYPE');
            SQL.ADD(',DECODE(SUBSTR((T.AMOUNT),0,1),''0'',to_number(NULL),''-'',ABS(T.AMOUNT ),to_number(NULL)  ) DEBIT ');
            SQL.ADD(',DECODE(SUBSTR((T.AMOUNT),0,1),''-'',to_number(NULL),ABS(T.AMOUNT)) CREDIT,  ');
            SQL.Add('amount as x, null ');
            SQL.Add('FROM INVESTMENT_TRANS t,DEPOSIT_ACCOUNT a');
            SQL.Add('WHERE t.NDEPOSITACCOUNT = a.NDEPOSITACCOUNT');
            SQL.Add('AND a.NMATTER = '+ qryMatter.FieldByName('NMATTER').AsString);
            if chkFrom.Checked and not(FArchiveBatchMode) then
            begin
               SQL.Add('AND ' + sOrder + ' >= to_date(''' + DateTostr(Trunc(dtpFrom.Date))+''',''dd/mm/yyyy'')');
   //            ParamByName('P_DateFrom').AsDate := Trunc(dtpFrom.Date);
            end;
            if chkTo.Checked and not(FArchiveBatchMode) then
            begin
               SQL.Add('AND ' + sOrder + ' < to_date('''+ DateTostr(Trunc(dtpTo.Date)+1)+''',''dd/mm/yyyy'')');
   //            ParamByName('P_DateTo').AsDate := Trunc(dtpTo.Date) + 1;
            end;
        end;
        case rgOrderby.ItemIndex of
           0: SQL.Add('ORDER BY 2,5,8');  //SQL.Add('ORDER BY 2,4,6,8');
           1: SQL.Add('ORDER BY 2,6,8'); //SQL.Add('ORDER BY 2,5,6,8');
        end;
        if rgSequence.ItemIndex = 1 then
          SQL.Add('DESC');
   // /    ParamByName('P_Matter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
//        showmessage(SQL.Text);
        if dmAxiom.runningide then
           SQL.SaveToFile('c:\tmp\qryLedgerTrustDtl.sql');
        Prepare;
        Execute;
   // /    Open;
      end;

      try
         dmAxiom.qryTmp.Close;
         dmAxiom.qryTmp.SQL.Text := 'select TRUST_LIST_RPT.amount, fileid, matter_desc, client_name, '+
                     'TRUST_LIST_RPT.nalloc, TRUST_LIST_RPT.njournal '+
                     'from TRUST_LIST_RPT, alloc '+
                     'where TRUST_LIST_RPT.njournal is not null '+
                     'and TRUST_LIST_RPT.njournal = alloc.njournal '+
                     'and TRUST_LIST_RPT.nalloc = alloc.nalloc '+
                     'and TRUST_LIST_RPT.empcode = :empcode ' +
                     'order by TRUST_LIST_RPT.njournal, TRUST_LIST_RPT.nalloc ';

         dmAxiom.qryTmp.ParamByName('empcode').AsString := dmAxiom.UserID;
         dmAxiom.qryTmp.Open;
         while (dmAxiom.qryTmp.EOF = False) do
         begin
            nJournalTemp := dmAxiom.qryTmp.FieldByName('njournal').AsInteger;
            nAllocTemp := dmAxiom.qryTmp.FieldByName('nalloc').AsInteger;
            with qryTmp do
            begin
               qryTmp.Close;
               qryTmp.SQL.Text := 'select * from alloc where trust = ''T'' and njournal = :njournal and nalloc <> :nalloc ';
               qryTmp.ParamByName('njournal').AsInteger := nJournalTemp;
               qryTmp.ParamByName('nalloc').AsInteger := nAllocTemp;

               qryTmp.Open;
               sdesc := qryTmp.FieldByName('descr').AsString+' ('+qryTmp.FieldByName('client_name').AsString+
                        ' - '+qryTmp.FieldByName('fileid').AsString +' - '+qryTmp.FieldByName('matter_desc').AsString+')';
               Close;
            end;
            if (sdesc <> '') then
            begin
               qryTmp.Close;
               qryTmp.Sql.Text := 'update TRUST_LIST_RPT set descr = '+quotedstr(sdesc) + ' where nalloc = :nalloc';
               qryTmp.ParamByName('nalloc').AsInteger := nAllocTemp;
               qryTmp.Execute;
               qryTmp.Close;
            end;
            dmAxiom.qryTmp.next;
         end;
      finally
         dmAxiom.qryTmp.Close;
      end;

      case rgOrderby.ItemIndex of
         0: sSQLTrust := 'SELECT ordtype, RTYPE,RTYPETEXT, SYSTEM_DATE,CREATED , dm, '+
                   'NALLOC,AMOUNT, PAYER, SPEC_PURPOSE, CLEARED, '+
                   'DCLEARDATE, DESCR, REFNO,ALLOCTYPE , DEBIT ,CREDIT,SUM(x) '+
                   'OVER (partition by RTYPE  '+
                   'ORDER BY rtype, system_date, nalloc) "Running Total"  '+
                   'from  '+
                   'TRUST_LIST_RPT '+
                   'where EMPCODE = :EMPCODE ';
//                   'order by 1,4,7 ';
         1: sSQLTrust := 'SELECT ordtype, RTYPE,RTYPETEXT, SYSTEM_DATE,CREATED , dm, '+
                   'NALLOC,AMOUNT, PAYER, SPEC_PURPOSE, CLEARED, '+
                   'DCLEARDATE, DESCR, REFNO,ALLOCTYPE , DEBIT ,CREDIT,SUM(x) '+
                   'OVER (partition by RTYPE  '+
                   'ORDER BY rtype, created, nalloc) "Running Total"  '+
                   'from  '+
                   'TRUST_LIST_RPT '+
                   'where EMPCODE = :EMPCODE ';
//                   'order by 1,5,7 ';
      end;

      with qryTrustLedger do
      begin
         Close;
         SQL.Clear;
         SQL.Add(sSQLTrust);
         if dmAxiom.runningide then
           SQL.SaveToFile('c:\tmp\qryLedgerTrust.sql');
         ParamByName('EMPCODE').AsString := dmAxiom.UserId;
         Open;
      end;

   {   if AutoPrint then
        qrTrustLedger.Print
      else
        qrTrustLedger.PreviewModal;  }

      if AutoPrint then
      begin
         rptTrustLedger.DeviceType := 'Printer';
         rptTrustLedger.Print;
      end
      else
         rptTrustLedger.Print;
   finally
      qryCr_View.Close;
      qryTmp.SQL.Clear;
      qryTmp.SQL.Add('DELETE FROM TRUST_LIST_RPT WHERE EMPCODE = :AX_USER');
      qryTmp.ParamByName('AX_USER').AsString := dmAxiom.UserID;
      qryTmp.Prepare;
      qryTmp.Execute;
//      qryCr_View.SQL.Clear;
//      qryCr_View.SQL.Add('DROP MATERIALIZED VIEW ' + TableString('EMPLOYEE','CODE',dmAxiom.UserID,'USER_NAME') + '.MVW_TRUST_LIST');
//      qryCr_View.ExecSQL;
   end;

   if Self.Visible then
     Self.Close;
end;

procedure TfrmRptLedgerTrust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{   dmAxiom.qryTmp.SQL.Clear;
   dmAxiom.qryTmp.SQL.Add('DELETE FROM TRUST_LIST_RPT WHERE EMPCODE = :AX_USER');
   dmAxiom.qryTmp.ParamByName('AX_USER').AsString := dmAxiom.UserID;
   dmAxiom.qryTmp.Prepare;
   dmAxiom.qryTmp.Execute;  }

   SettingSave('RPT_LEDGER_TRUST','ORDER_BY',rgOrderBy.ItemIndex);
   qryMatter.Close;
   qryTrustLedger.Close;
   qryBanks.Close;

   Action := caFree;
end;

procedure TfrmRptLedgerTrust.btnMatterClick(Sender: TObject);
begin
   if sTable = 'MATTER M, PHONEBOOK P' then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOK then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
         {   if sTable = 'ARCHIVE' then
   if not FormExists(frmArchiveSearch) then
      Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
      if frmArchiveSearch.ShowModal = mrOK then
         DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString); }
end;

procedure TfrmRptLedgerTrust.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);

   sTable := 'MATTER M, PHONEBOOK P';

   rgOrderBy.ItemIndex := SettingLoadInteger('RPT_LEDGER_TRUST','ORDER_BY');

   chkFrom.Checked := False;
   chkTo.Checked := False;
   rgOrderBy.Enabled := SystemString('TRUST_AS_OFFICE') = 'Y';
end;

procedure TfrmRptLedgerTrust.BitBtn1Click(Sender: TObject);
var
  regAxiom: TRegistry;
  sNetworkDir: string;
  OldDir: string;
  slReportName,
  DocErrMsg: string;
begin
   SettingSave('TrustStatement', 'FileID', qryMatter.FieldByName('FileID').AsString);
   SettingSave('TrustStatement', 'DateFrom', DateToStr(dtpFrom.Date));
   SettingSave('TrustStatement', 'DateTo', DateToStr(dtpTo.Date));

   OldDir := GetCurrentDir;
   SetCurrentDir(ExtractFilePath(Application.EXEName));

   regAxiom := TRegistry.Create;
   regAxiom.RootKey := HKEY_CURRENT_USER;
   if regAxiom.OpenKey(dmAxiom.RegistryRoot, False) then
   begin
      sNetworkDir := regAxiom.ReadString('NetworkDir');
   end;

   slReportName := SystemString('trust_statement_rpt');
   if (slReportName = '') then
   begin
      ExecuteFile(sNetworkDir + 'Reports\TrustStatement.exe', dmAxiom.UserID, '', SW_SHOW,DocErrMsg);
   end
   else
   begin
      ExecuteFile(sNetworkDir + 'Reports\'+slReportName, dmAxiom.UserID, '', SW_SHOW,DocErrMsg);
   end;
   regAxiom.Free;
   SetCurrentDir(OldDir);
   Self.close;
end;

procedure TfrmRptLedgerTrust.FormShow(Sender: TObject);
begin
   FArchiveBatchMode := False;
   dcThisMonth.Click;
   if not qryMatter.Active then
      DisplayMatter(ReopenListLast('MATTER'));
   if qryMatter.Active then
      dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
   chkFrom.Checked := false;
   chkTo.Checked := false;
end;

procedure TfrmRptLedgerTrust.qryTrustLedgerCalcFields(DataSet: TDataSet);
begin
//  if qryTrustLedger.FieldByName('AMOUNT').AsCurrency < 0.0 then
//    qryTrustLedger.FieldByName('Debit').AsCurrency := 0 - qryTrustLedger.FieldByName('Amount').AsCurrency;
//  if qryTrustLedger.FieldByName('AMOUNT').AsCurrency > 0.0 then
//    qryTrustLedger.FieldByName('Credit').AsCurrency := qryTrustLedger.FieldByName('Amount').AsCurrency;
end;

procedure TfrmRptLedgerTrust.rptTrustLedgerBeforePrint(Sender: TObject);
begin
   if chInvestments.Checked then
      pplblReportTitle.Caption := 'Trust and Controlled Monies Ledger'
   else
      pplblReportTitle.Caption := 'Trust Ledger';

   if qryTrustLedger.FieldByName('SPEC_PURPOSE').AsCurrency <> 0 then
      ppLabel12.Visible := True
   else
      ppLabel12.Visible := False;

   if chkFrom.Checked and chkTo.Checked and not(FArchiveBatchMode) then
      ppLabel2.Caption := 'for the period ' + FormatDateTime('ddddd', dtpFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpTo.Date)
   else if chkFrom.Checked and not(FArchiveBatchMode) then
      ppLabel2.Caption := 'from ' + FormatDateTime('ddddd', dtpFrom.Date)
   else if chkTo.Checked and not(FArchiveBatchMode) then
      ppLabel2.Caption := 'to ' + FormatDateTime('ddddd', dtpTo.Date)
   else
      ppLabel2.Caption := 'for all transactions';
   FClearedFunds := 0;
   memoDescr.Stretch := chkWrap.Checked;
end;

procedure TfrmRptLedgerTrust.dbtDescrPrint(Sender: TObject);
var
   LineNo: integer;
begin
{   dbtDescr.Height := 4.2;
   if chkWrap.Checked then
   begin
      if Length(qryTrustLedger.FieldByName('DESCR').AsString) >= 38 then
      begin
         LineNo := round((Length(qryTrustLedger.FieldByName('DESCR').AsString)/37));
         if LineNo = 0 then LineNo := 1;
         dbtDescr.Height := 4.2 * (LineNo+1);
      end;
   end; }
end;

procedure TfrmRptLedgerTrust.ppDetailBand1BeforePrint(Sender: TObject);
begin
{ if qryTrustLedger.FieldByName('SPEC_PURPOSE').AsCurrency <> 0 then
    qrlblProtected.Enabled := True
  else
    qrlblProtected.Enabled := False;

  FClearedFunds := FClearedFunds + qryTrustLedger.FieldByName('AMOUNT').AsCurrency;
  if qryTrustLedger.FieldByName('PAYER').AsString = cnTransit then
    qrExpBalance.Font.Color := clWhite
  else
    qrExpBalance.Font.Color := clBlack;
  if qryTrustLedger.FieldByName('DEBIT').IsNull then
    qrlblDebit.Font.Color := clWhite
  else
    qrlblDebit.Font.Color := clBlack;
  if qryTrustLedger.FieldByName('CREDIT').IsNull then
    qrlblCredit.Font.Color := clWhite
  else
    qrlblCredit.Font.Color := clBlack;   }
end;

procedure TfrmRptLedgerTrust.ppDBText7Print(Sender: TObject);
var
   bShow: boolean;
begin
   bShow := False;
   ppRegion2.Height := 12.9;
   if qryTrustLedger.FieldByName('CLEARED').AsString = 'N' then
   begin
      if ppDBText7.Text <> '' then
         bShow := True;
//      bShow := not qryTrustLedger.FieldByName('DCLEARDATE').IsNull;
      if bShow then
      begin
         ppRegion2.Height := ppRegion2.Height + 4.5;
         FClearedFunds := FClearedFunds - qryTrustLedger.FieldByName('AMOUNT').AsCurrency;
      end;
      ppLabel15.Visible := bShow;
      ppDBText7.Visible := bShow;
   end
   else
   begin
      ppLabel15.Visible := False;
      ppDBText7.Visible := False;
   end;
end;

procedure TfrmRptLedgerTrust.ppLabel17GetText(Sender: TObject;
  var Text: String);
begin
   case rgOrderBy.ItemIndex of
      1: Text := 'Report order - CREATED DATE';
      0: Text := 'Report order - SYSTEM DATE';
   end;
end;

procedure TfrmRptLedgerTrust.ppLabel12Print(Sender: TObject);
begin
   if qryTrustLedger.FieldByName('SPEC_PURPOSE').AsCurrency <> 0 then
      ppLabel12.Visible := True
   else
      ppLabel12.Visible := False;
end;

end.

