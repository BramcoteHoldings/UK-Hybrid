unit RptLedgerCombo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ComCtrls, Buttons, StdCtrls,
  DateChangeButton, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS, DeskTop,
  ppParameter, ppDesignLayer, ppModule, raCodMod, ppBands, ppVar, ppCtrls,
  ppRegion, ppMemo, ppStrtch, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, ppFileUtils, ppIniStorage, ppSubRpt;

type
  TfrmRptLedgerCombo = class(TForm)
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
    qryTmpLedger: TUniQuery;
    btnMatter: TBitBtn;
    chkFees: TCheckBox;
    chkUnbilled: TCheckBox;
    chkWrap: TCheckBox;
    qryTmpSQL: TUniQuery;
    qryAntdLedger: TUniQuery;
    qrySundLedger: TUniQuery;
    qryFeesLedger: TUniQuery;
    cbHideStripe: TCheckBox;
    chkGst: TCheckBox;
    chkShowSundry: TCheckBox;
    chkRev: TCheckBox;
    qryPhoneBook: TUniQuery;
    dsMatter: TUniDataSource;
    chkOwing: TCheckBox;
    qryRptLedger: TUniQuery;
    cbExcludeNonBillableWIP: TCheckBox;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    dsTmpLedger: TUniDataSource;
    dsPhoneBook: TUniDataSource;
    dsRptLedger: TUniDataSource;
    dsFeesLedger: TUniDataSource;
    dsSundLedger: TUniDataSource;
    dsAntdLedger: TUniDataSource;
    dsTmpSQL: TUniDataSource;
    plTmpLedger: TppDBPipeline;
    plPhoneBook: TppDBPipeline;
    plRptLedger: TppDBPipeline;
    plAntdLedger: TppDBPipeline;
    pltmpSQL: TppDBPipeline;
    plSundLedger: TppDBPipeline;
    plFeesLedger: TppDBPipeline;
    plMatter: TppDBPipeline;
    rptCombo: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    lblTitle: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppMemo1: TppMemo;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText5: TppDBText;
    ppLine4: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel12: TppLabel;
    ppLabel21: TppLabel;
    ppLine3: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine5: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText13: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppDBText18: TppDBText;
    ppVariable1: TppVariable;
    ppDBMemo3: TppDBMemo;
    ppDBText12: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine6: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel32: TppLabel;
    ppLine7: TppLine;
    ppLabel33: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppDBCalc14: TppDBCalc;
    qryPhoneBookNCLIENT: TLargeintField;
    qryPhoneBookCODE: TStringField;
    qryPhoneBookNAME: TStringField;
    qryPhoneBookADDRESS: TStringField;
    qryPhoneBookSUBURB: TStringField;
    qryPhoneBookSTATE: TStringField;
    qryPhoneBookPOSTCODE: TStringField;
    qryPhoneBookCOUNTRY: TStringField;
    qryPhoneBookWHICHADDRESS: TStringField;
    ppFooterBand1: TppFooterBand;
    ppLine8: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    qryTrustCheqreqs: TUniQuery;
    dsTrustCheqreqs: TUniDataSource;
    plTrustCheqreqs: TppDBPipeline;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBCalc15: TppDBCalc;
    ppLine9: TppLine;
    ppLabel1: TppLabel;
    ppLine10: TppLine;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel34: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnMatterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure chkShowSundryClick(Sender: TObject);
    procedure qryMatterAfterOpen(DataSet: TDataSet);
    procedure qryMatterBeforeClose(DataSet: TDataSet);
    procedure ppLabel27Print(Sender: TObject);
    procedure rptComboBeforePrint(Sender: TObject);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppShape1Print(Sender: TObject);
  private
    { Private declarations }
    FArchiveBatchMode: Boolean; // for some reason the TDateTimePicker component is always checked when printing in batch mode
    UserId : String;
    FArchived: Boolean;
    FCaption: String;
    procedure PrepareLedger;
    procedure ResetLedger;
    procedure GetMatter(sFile : string);
  public
    { Public declarations }
    procedure DisplayMatter(sFile : string);
    procedure LoadMatter(sFile : string);
    procedure DisplayArchive(sFile : string);
    procedure LoadArchive(sFile : string);
    procedure Print(AutoPrint : Boolean);
  end;
var
  frmRptLedgerCombo: TfrmRptLedgerCombo;
  
implementation

uses
  AxiomData, MiscFunc, MSearch, citfunc;

{$R *.DFM}

var
  sTable : string;

procedure TfrmRptLedgerCombo.DisplayMatter(sFile : string);
begin
  LoadMatter(sFile);

  if not Visible then
    Show();
end;


procedure TfrmRptLedgerCombo.LoadMatter(sFile : string);
begin
  sTable := 'MATTER M, PHONEBOOK P';
  GetMatter(sFile);
  FArchived := False;
end;


procedure TfrmRptLedgerCombo.DisplayArchive(sFile : string);
begin
  sTable := 'ARCHIVE';
  GetMatter(sFile);
  FArchived := True;
  if not Visible then
    ShowModal();
end;

procedure TfrmRptLedgerCombo.LoadArchive(sFile : string);
begin
  sTable := 'ARCHIVE';
  GetMatter(sFile);
  FArchived := True;

(*  dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
  dtpTo.Date := Now+1;
  dtpFrom.Checked := False;
  dtpTo.Checked := False;*)
  FArchiveBatchMode := True;
end;


procedure TfrmRptLedgerCombo.GetMatter(sFile : string);
begin
  qryMatter.Close;
  qryMatter.SQL.Clear;
  qryMatter.SQL.Text := 'SELECT M.FILEID, M.NCLIENT, M.NMATTER, P.SEARCH, M.SHORTDESCR, '+
                        'M.OPENED, M.LONGDESCR, M.PARTNER, M.AUTHOR, MT.DESCR, M.NARCHIVE, '+
                        'M.ARCHIVED FROM MATTERTYPE MT,' + sTable + ' WHERE M.FILEID = ' + QuotedStr(sFile);
  qryMatter.SQL.Text := qryMatter.SQL.Text + ' AND M.NCLIENT = P.NCLIENT AND M.TYPE = MT.CODE';
  qryMatter.Open;
  if not qryMatter.IsEmpty then
  begin
    lblFile.Caption   := qryMatter.FieldByName('FILEID').AsString;
    lblClient.Caption := qryMatter.FieldByName('SEARCH').AsString;
    lblDesc.Caption   := qryMatter.FieldByName('SHORTDESCR').AsString;
    dtpFrom.Date      := qryMatter.FieldByName('OPENED').AsDateTime;
  end else
  begin
    lblFile.Caption := '';
    lblClient.Caption := '';
    lblDesc.Caption := '';
  end
end;


procedure TfrmRptLedgerCombo.FormShow(Sender: TObject);
begin
  FArchiveBatchMode := False;
  dcThisMonth.Click;
  if not qryMatter.Active then
    DisplayMatter(ReopenListLast('MATTER'));
  if qryMatter.Active then
    dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
  chkFrom.Checked := False;
  chkTo.Checked := False;

end;


procedure TfrmRptLedgerCombo.btnPrintClick(Sender: TObject);
begin
  Print(False);
end;

procedure TfrmRptLedgerCombo.Print(AutoPrint : boolean);
var
   PayableAmount: Currency;
begin
   Screen.Cursor := crSQLWait;
   PrepareLedger();

   if chkFees.Checked and not chkShowSundry.Checked then
   begin
      qryFeesLedger.Close;
      qryFeesLedger.SQL.Clear;
      qryFeesLedger.SQL.Add('SELECT distinct F.CREATED, F.BANK_ACCT, F.AMOUNT, ');
      qryFeesLedger.SQL.Add('DECODE(F.BILLED,''Y'',TAX,(F.AMOUNT*(abs(R.RATE)/100))) AS TAX,');
      qryFeesLedger.SQL.Add(' F.DESCR, F.UNITS, F.MINS, F.BILLED, F.AUTHOR, F.PARTNER, F.NMEMO,');
      qryFeesLedger.SQL.Add(' F.TYPE, F.ROWID');
      qryFeesLedger.SQL.Add(' FROM FEE F,TAXRATE R');
      qryFeesLedger.SQL.Add(' WHERE F.NMATTER = ' + qryMatter.FieldByName('NMATTER').AsString);
      qryFeesLedger.SQL.Add(' AND F.TAXCODE = R.TAXCODE (+) ');
      if cbExcludeNonBillableWIP.Checked then
         qryFeesLedger.SQL.Add(' AND F.BILLTYPE = ''Billable'' ');
      if chkFrom.Checked and not(FArchiveBatchMode) then
      begin
         qryFeesLedger.SQL.Add('  AND trunc(CREATED) >= trunc(:FROMDATE)');
         qryFeesLedger.ParamByName('FROMDATE').AsDateTime := dtpFrom.DateTime;
      end;
      if chkTo.Checked and not(FArchiveBatchMode) then
      begin
         qryFeesLedger.SQL.Add('  AND trunc(CREATED) < trunc(:TODATE)');
         qryFeesLedger.ParamByName('TODATE').AsDateTime := dtpTo.DateTime+1;
      end;
      if chkUnbilled.Checked then
         qryFeesLedger.SQL.Add('  AND BILLED = ''N'' AND F.BILLTYPE = ''Billable'' ');
      qryFeesLedger.Open;
      while not qryFeesLedger.EOF do
      begin
         qryTmpLedger.Insert;
         qryTmpLedger.FieldByName('REPORTER').AsString := UserId;
         qryTmpLedger.FieldByName('CREATED').AsDateTime := qryFeesLedger.FieldByName('CREATED').AsDateTime;
         qryTmpLedger.FieldByName('TYPE').AsString := 'Fee';
         qryTmpLedger.FieldByName('REFNO').AsString := qryFeesLedger.FieldByName('AUTHOR').AsString;
         qryTmpLedger.FieldByName('DESCR').AsString := qryFeesLedger.FieldByName('DESCR').AsString;
         qryTmpLedger.FieldByName('BANK').AsString := qryFeesLedger.FieldByName('BANK_ACCT').AsString;
         qryTmpLedger.FieldByName('FEESDR').AsCurrency := qryFeesLedger.FieldByName('AMOUNT').AsCurrency ;
         qryTmpLedger.FieldByName('CODE').AsString := qryFeesLedger.FieldByName('TYPE').AsString ;
         if chkGst.Checked then
            qryTmpLedger.FieldByName('FEESDR').AsCurrency := qryTmpLedger.FieldByName('FEESDR').AsCurrency + qryFeesLedger.FieldByName('TAX').AsCurrency;
         qryTmpLedger.FieldByName('REASON').AsString := TableString('NMEMO', 'NMEMO', qryFeesLedger.FieldByName('NMEMO').AsInteger, 'REFNO');
         qryTmpLedger.Post;

         qryFeesLedger.Next;
      end;

      qryFeesLedger.Close;
   end;

   qrySundLedger.Close;
   qrySundLedger.SQL.Clear;
   qrySundLedger.SQL.Add('SELECT distinct SUNDRY.ACCT, SUNDRY.CREATED,');
   qrySundLedger.SQL.Add(' DECODE(SUNDRY.TYPE ,''wo'', SUNDRY.AMOUNT * -1, SUNDRY.AMOUNT) "AMOUNT", ');
   qrySundLedger.SQL.Add('DECODE(SUNDRY.BILLED,''Y'',DECODE(SUNDRY.TYPE, ''wo'',SUNDRY.TAX*-1, SUNDRY.TAX ),');
   qrySundLedger.SQL.Add('DECODE(SUNDRY.TYPE, ''wo'',(SUNDRY.AMOUNT*(abs(TAXRATE.RATE)/100))*-1,(SUNDRY.AMOUNT*(abs(TAXRATE.RATE)/100)))) AS TAX, ');
   qrySundLedger.SQL.Add('SUNDRY.DESCR, SUNDRY.UNITS, SUNDRY.BILLED, SUNDRY.NMEMO, SUNDRYTYPE.DESCR AS TYPEDESC, SUNDRY.TYPE');
   qrySundLedger.SQL.Add(' FROM SUNDRY, SUNDRYTYPE,TAXRATE');
   qrySundLedger.SQL.Add(' WHERE SUNDRY.NMATTER = ' + qryMatter.FieldByName('NMATTER').AsString);
   qrySundLedger.SQL.Add('  AND SUNDRY.TYPE = SUNDRYTYPE.CODE(+)');
 //  qrySundLedger.SQL.Add('  AND SUNDRY.TYPE <> ''wo''');
   qrySundLedger.SQL.Add('  AND SUNDRY.TAXCODE = TAXRATE.TAXCODE(+) ');
   qrySundLedger.SQL.Add(' AND TRUNC(SUNDRY.CREATED) >= commence and TRUNC(SUNDRY.CREATED) <= nvl(end_period,sysdate + 1000) ');
   if chkFrom.Checked and not(FArchiveBatchMode) then
   begin
      qrySundLedger.SQL.Add('  AND trunc(CREATED) >= trunc(:FROMDATE)');
      qrySundLedger.ParamByName('FROMDATE').AsDateTime := dtpFrom.DateTime;
   end;
   if chkTo.Checked and not(FArchiveBatchMode) then
   begin
      qrySundLedger.SQL.Add('  AND trunc(CREATED) < trunc(:TODATE)');
      qrySundLedger.ParamByName('TODATE').AsDateTime := dtpTo.DateTime+1;
   end;
   if chkUnbilled.Checked then
      qrySundLedger.SQL.Add('  AND BILLED = ''N''');
   qrySundLedger.Open;
   while not qrySundLedger.EOF do
   begin
      qryTmpLedger.Insert;
      qryTmpLedger.FieldByName('REPORTER').AsString := UserId;
      qryTmpLedger.FieldByName('CREATED').AsDateTime := qrySundLedger.FieldByName('CREATED').AsDateTime;
      qryTmpLedger.FieldByName('TYPE').AsString := 'Sundry';
      qryTmpLedger.FieldByName('REFNO').AsString := qrySundLedger.FieldByName('TYPEDESC').AsString;
      qryTmpLedger.FieldByName('BANK').AsString := qrySundLedger.FieldByName('ACCT').AsString;
      qryTmpLedger.FieldByName('DESCR').AsString := qrySundLedger.FieldByName('DESCR').AsString;
      qryTmpLedger.FieldByName('CODE').AsString := qrySundLedger.FieldByName('TYPE').AsString;

      if chkGst.Checked and chkShowSundry.Checked then
      begin
         qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qrySundLedger.FieldByName('TAX').AsCurrency;
         qryTmpLedger.FieldByName('FEESDR').AsCurrency := qrySundLedger.FieldByName('AMOUNT').AsCurrency + qrySundLedger.FieldByName('TAX').AsCurrency;
      end
      else
      if chkGst.Checked then
      begin
         qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qrySundLedger.FieldByName('AMOUNT').AsCurrency + qrySundLedger.FieldByName('TAX').AsCurrency;
         qryTmpLedger.FieldByName('FEESDR').AsCurrency := qrySundLedger.FieldByName('AMOUNT').AsCurrency + qrySundLedger.FieldByName('TAX').AsCurrency;
      end
      else
      if chkShowSundry.Checked then
      begin
         qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qrySundLedger.FieldByName('TAX').AsCurrency;
         qryTmpLedger.FieldByName('FEESDR').AsCurrency := qrySundLedger.FieldByName('AMOUNT').AsCurrency;
      end
      else
         qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qrySundLedger.FieldByName('AMOUNT').AsCurrency;

      qryTmpLedger.FieldByName('REASON').AsString := TableString('NMEMO', 'NMEMO', qrySundLedger.FieldByName('NMEMO').AsInteger, 'REFNO');

//      if chkShowSundry.Checked then
//         qryTmpLedger.FieldByName('FEESDR').AsCurrency := qrySundLedger.FieldByName('AMOUNT').AsCurrency + qrySundLedger.FieldByName('TAX').AsCurrency;

      qryTmpLedger.Post;

      qrySundLedger.Next;
   end;

   qrySundLedger.Close;

   qryAntdLedger.Close;
   qryAntdLedger.SQL.Clear;

   qryAntdLedger.SQL.Add('SELECT C.NCHEQREQ, C.REQDATE, C.PAYEE, C.BANK, C.AMOUNT,C.TAX, C.DESCR, C.BILLED, ');
   qryAntdLedger.SQL.Add('C.AUTHOR, C.NMEMO, C.CONVERTED, C.ANTICIPATED ');
   qryAntdLedger.SQL.Add(' FROM CHEQREQ C');
   qryAntdLedger.SQL.Add(' WHERE C.FILEID = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString));
   qryAntdLedger.SQL.Add(' AND C.TRUST <> ''T''');
   qryAntdLedger.SQL.Add(' AND C.REV_NCHEQREQ IS NULL AND C.AMOUNT > 0');

 {  if not chkRev.Checked then
     qryAntdLedger.SQL.Add('  AND C.REV_NCHEQREQ IS NULL ');   }

   if chkFrom.Checked and not(FArchiveBatchMode) then
   begin
      qryAntdLedger.SQL.Add('  AND trunc(REQDATE) >= trunc(:FROMDATE)');
      qryAntdLedger.ParamByName('FROMDATE').AsDateTime := dtpFrom.DateTime;
   end;
   if chkTo.Checked and not(FArchiveBatchMode) then
   begin
      qryAntdLedger.SQL.Add('  AND trunc(REQDATE) < trunc(:TODATE)');
      qryAntdLedger.ParamByName('TODATE').AsDateTime := dtpTo.DateTime+1;
   end;
   if chkUnbilled.Checked then
      qryAntdLedger.SQL.Add('  AND BILLED = ''N''');

   qryAntdLedger.Open;
   while not qryAntdLedger.EOF do
   begin
      if ((qryAntdLedger.FieldByName('NMEMO').AsInteger > 0) and (qryAntdLedger.FieldByName('ANTICIPATED').AsString = 'Y')) or
         (qryAntdLedger.FieldByName('ANTICIPATED').AsString = 'Y') or
         ((qryAntdLedger.FieldByName('ANTICIPATED').AsString = 'N') and (qryAntdLedger.FieldByName('NMEMO').AsInteger > 0)) then
      begin
         qryTmpLedger.Insert;
         qryTmpLedger.FieldByName('REPORTER').AsString := UserId;
         qryTmpLedger.FieldByName('CREATED').AsDateTime := qryAntdLedger.FieldByName('REQDATE').AsDateTime;
         qryTmpLedger.FieldByName('TYPE').AsString := 'CheqReq';
         qryTmpLedger.FieldByName('REFNO').AsString := qryAntdLedger.FieldByName('NCHEQREQ').AsString;
         qryTmpLedger.FieldByName('DESCR').AsString := qryAntdLedger.FieldByName('PAYEE').AsString + #13 + qryAntdLedger.FieldByName('DESCR').AsString;
         qryTmpLedger.FieldByName('BANK').AsString := qryAntdLedger.FieldByName('BANK').AsString;
         qryTmpLedger.FieldByName('DEBIT').AsCurrency := qryAntdLedger.FieldByName('AMOUNT').AsCurrency;
         if chkGst.Checked then
            qryTmpLedger.FieldByName('DEBIT').AsCurrency := qryTmpLedger.FieldByName('DEBIT').AsCurrency + qryAntdLedger.FieldByName('TAX').AsCurrency;
         qryTmpLedger.FieldByName('REASON').AsString := TableString('NMEMO', 'NMEMO', qryAntdLedger.FieldByName('NMEMO').AsInteger, 'REFNO');
         if chkShowSundry.Checked then
            qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qryAntdLedger.FieldByName('TAX').AsCurrency;
       // rb
       //if (qryAntdLedger.FieldByName('NMEMO').AsInteger > 0) and (qryANtDLedger.FieldByName('ANTICIPATED').AsString = 'Y') and (qryANtDLedger.FieldByName('BILLED').AsString = 'Y') then
       //  qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryAntdLedger.FieldByName('AMOUNT').AsCurrency + qryAntdLedger.FieldByName('TAX').AsCurrency;

         qryTmpLedger.Post;
      end;
      qryAntdLedger.Next;
   end;

   qryAntdLedger.Close;

   // Load the Allocs
   qryTmpSQL.Close;
   qryTmpSQL.SQL.Clear;
     //rb
     //SQL.Add('SELECT A.CREATED, A.ACCT, A.AMOUNT,DECODE(A.BILLED,''N'',(A.AMOUNT*(abs(R.RATE)/100)),A.TAX) AS TAX, A.PAYER, A.DESCR, A.REFNO, A.TRUST, A.TYPE, A.FEE, A.OUTLAY, A.SUNDRY, A.NRECEIPT, A.NCHEQUE, A.NJOURNAL, A.NMEMO, A.SPEC_PURPOSE, A.ROWID');

   // 22/06/2004 Creditors work: T.H
   // Adding billed creditors
   qryTmpSQL.SQL.Add('SELECT A.CREATED, A.ACCT, A.AMOUNT, ');
   qryTmpSQL.SQL.Add('DECODE(A.BILLED,''N'',decode(r.RATE-r.BILL_RATE,''0'',A.TAX,(A.AMOUNT*(abs(R.RATE)/100))),A.TAX) AS TAX, A.PAYER,');
   qryTmpSQL.SQL.Add(' A.DESCR, A.REFNO, A.TRUST, A.TYPE, A.FEE, A.OUTLAY, A.SUNDRY, A.NRECEIPT, A.NCHEQUE, A.NJOURNAL, A.NMEMO, A.SPEC_PURPOSE, A.NCHEQREQ, A.ROWID, A.NINVOICE');
   qryTmpSQL.SQL.Add('FROM ALLOC A, TAXRATE R');
   qryTmpSQL.SQL.Add('WHERE A.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
   // AES 13-04-2011 added nvl to taxcode to cater for trust which has no taxcode.
   qryTmpSQL.SQL.Add(' AND NVL(A.TAXCODE,''FREE'') = R.TAXCODE (+) ');
   qryTmpSQL.SQL.Add('AND TRUNC(A.CREATED) >= r.commence and TRUNC(A.CREATED) <= nvl(r.end_period, sysdate + 1000) ');
   qryTmpSQL.SQL.Add(' AND (NCHEQUE IS NOT NULL OR NRECEIPT IS NOT NULL OR NJOURNAL IS NOT NULL OR NINVOICE IS NOT NULL)');
   if chkFrom.Checked and not(FArchiveBatchMode) then
   begin
      qryTmpSQL.SQL.Add('  AND trunc(A.CREATED) >= trunc(:FROMDATE)');
      qryTmpSQL.ParamByName('FROMDATE').AsDateTime := dtpFrom.DateTime;
   end;
   if chkTo.Checked and not(FArchiveBatchMode) then
   begin
      qryTmpSQL.SQL.Add('  AND trunc(A.CREATED) < trunc(:TODATE)');
      qryTmpSQL.ParamByName('TODATE').AsDateTime := dtpTo.DateTime+1;
   end;
   if chkUnbilled.Checked then
   begin
      qryTmpSQL.SQL.Add('  AND A.BILLED = ''N''');
      qryTmpSQL.SQL.Add('  AND A.TRUST <> ''T''');
   end;
   qryTmpSQL.Open;

   if dmAxiom.runningide then
      qryTmpSQL.SQL.SaveToFile('c:\tmp\tmpcomborpt.sql');

   while not qryTmpSQL.EOF do
   begin
      qryTmpLedger.Insert;
      qryTmpLedger.FieldByName('REPORTER').AsString := UserId;
      qryTmpLedger.FieldByName('CREATED').AsDateTime := qryTmpSQL.FieldByName('CREATED').AsDateTime;
      qryTmpLedger.FieldByName('REASON').AsString := TableString('NMEMO', 'NMEMO', qryTmpSQL.FieldByName('NMEMO').AsInteger, 'REFNO');
 {
   Modified 18.10.2002 GG

   This now picks up cheque alloc records which have an ncheque value of 0.
   These are created when the cheqreq history tool converts a cheqreq and the
   user asks for a new alloc record to be created.

     if qryTmpSQL.FieldByName('NCHEQUE').AsInteger > 0 then
 }
      if qryTmpSQL.FieldByName('NCHEQUE').AsInteger >= 0 then
         qryTmpLedger.FieldByName('TYPE').AsString := 'Payment';
      if qryTmpSQL.FieldByName('NRECEIPT').AsInteger > 0 then
         qryTmpLedger.FieldByName('TYPE').AsString := 'Receipt';
      if qryTmpSQL.FieldByName('NJOURNAL').AsInteger > 0 then
         qryTmpLedger.FieldByName('TYPE').AsString := 'Journal';
      if qryTmpSQL.FieldByName('TYPE').AsString = 'RV' then
         qryTmpLedger.FieldByName('TYPE').AsString := 'Reversal';
      if qryTmpSQL.FieldByName('SPEC_PURPOSE').AsCurrency <> 0 then
         qryTmpLedger.FieldByName('REFNO').AsString := '[' + qryTmpSQL.FieldByName('REFNO').AsString + ']'
      else
         qryTmpLedger.FieldByName('REFNO').AsString := qryTmpSQL.FieldByName('REFNO').AsString;

      if qryTmpSQL.FieldByName('PAYER').AsString <> '' then
         qryTmpLedger.FieldByName('DESCR').AsString := qryTmpSQL.FieldByName('PAYER').AsString + #13 + qryTmpSQL.FieldByName('DESCR').AsString
      else
         qryTmpLedger.FieldByName('DESCR').AsString := qryTmpSQL.FieldByName('DESCR').AsString;

      qryTmpLedger.FieldByName('BANK').AsString := qryTmpSQL.FieldByName('ACCT').AsString;
      if qryTmpSQL.FieldByName('TRUST').AsString = 'T' then
      begin
       // Trust transactions
         if qryTmpSQL.FieldByName('AMOUNT').AsCurrency < 0.0 then
            qryTmpLedger.FieldByName('TRUSTDR').AsCurrency := 0 - qryTmpSQL.FieldByName('AMOUNT').AsCurrency
         else
            qryTmpLedger.FieldByName('TRUSTCR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency;
      end
      else if (qryTmpSQL.FieldByName('TYPE').AsString = 'J1') or
              (qryTmpSQL.FieldByName('TYPE').AsString = 'RF') or
              ((qryTmpSQL.FieldByName('NRECEIPT').AsInteger > 0) and (qryTmpSQL.FieldByName('TYPE').AsString <> 'DR')) then
      begin
         // Receipts or Debtors Journals
         // but only if billed
         if not chkUnbilled.Checked then
         begin
            if qryTmpSQL.FieldByName('AMOUNT').AsCurrency < 0.0 then
            begin
               qryTmpLedger.FieldByName('DEBTDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('AMOUNT').AsCurrency );
               if {chkGst.Checked} true then
                  qryTmpLedger.FieldByName('DEBTDR').AsCurrency := qryTmpLedger.FieldByName('DEBTDR').AsCurrency - qryTmpSQL.FieldByName('TAX').AsCurrency;
            end else
            begin
               qryTmpLedger.FieldByName('DEBTCR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency ;
               if {chkGst.Checked} true then
                  qryTmpLedger.FieldByName('DEBTCR').AsCurrency := qryTmpLedger.FieldByName('DEBTCR').AsCurrency + qryTmpSQL.FieldByName('TAX').AsCurrency;
            end;
         end;
         if qryTmpSQL.FieldByName('TYPE').AsString = 'J1' then
         begin
            // Debtor Journal - probably a write off
            if chkFees.Checked then
            begin
               if qryTmpSQL.FieldByName('FEE').AsCurrency <> 0 then
                  qryTmpLedger.FieldByName('FEESDR').AsCurrency := 0; // - qryTmpSQL.FieldByName('FEE').AsCurrency;
            end;
            if qryTmpSQL.FieldByName('SUNDRY').AsCurrency <> 0  then
               qryTmpLedger.FieldByName('SUNDDR').AsCurrency := 0; // - qryTmpSQL.FieldByName('SUNDRY').AsCurrency;
         end;

      end
      else
      if (qryTmpSQL.FieldByName('NINVOICE').AsInteger > 0) or (qryTmpSQL.FieldByName('TYPE').AsString = 'IV') then
      begin
     //    ****************  DEBIT
         qryTmpLedger.FieldByName('DEBIT').AsCurrency := 0 - (qryTmpSQL.FieldByName('AMOUNT').AsCurrency );
         if chkGst.Checked then
            qryTmpLedger.FieldByName('DEBIT').AsCurrency := qryTmpLedger.FieldByName('DEBIT').AsCurrency - qryTmpSQL.FieldByName('TAX').AsCurrency;

      end
 {
   Modified 18.10.2002 GG

   This now picks up cheque alloc records which have an ncheque value of 0.
   These are created when the cheqreq history tool converts a cheqreq and the
   user asks for a new alloc record to be created.

     end else if (qryTmpSQL.FieldByName('NCHEQUE').AsInteger > 0) or (qryTmpSQL.FieldByName('TYPE').AsString = 'J2') or (qryTmpSQL.FieldByName('TYPE').AsString = 'DR') then
 }
      else if (qryTmpSQL.FieldByName('NCHEQUE').AsInteger >= 0) or (qryTmpSQL.FieldByName('TYPE').AsString = 'J2') or (qryTmpSQL.FieldByName('TYPE').AsString = 'DR') then
      begin
       // Cheque or disbursement journal or disbursement receipt
       //if qryTmpSQL.FieldByName('AMOUNT').AsCurrency < 0.0 then
       //begin
         qryTmpLedger.FieldByName('DISBDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('AMOUNT').AsCurrency );
         if chkGst.Checked then
            qryTmpLedger.FieldByName('DISBDR').AsCurrency := qryTmpLedger.FieldByName('DISBDR').AsCurrency - qryTmpSQL.FieldByName('TAX').AsCurrency;
         //pb qryTmpLedger.FieldByName('DISBDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('AMOUNT').AsCurrency)
       //end
       //else
       //begin
       //  qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency ;
       //  if chkGst.Checked then
       //      qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpLedger.FieldByName('DISBCR').AsCurrency + qryTmpSQL.FieldByName('TAX').AsCurrency;
       //
         //pb qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpSQL.FieldByName('AMOUNT').AsCurrency;
       //end;

      end;

     // MGD 26/09/02 -- CheqReq number added to description..
     // MGD 25/10/02 -- Moved outside so it may appear more
      if(qryTmpSQL.FieldByName('NCHEQREQ').AsInteger > 0) then
         qryTmpLedger.FieldByName('DESCR').AsString := 'From CheqReq# ' + qryTmpSQL.FieldByName('NCHEQREQ').AsString +
                                                       #13#10 + qryTmpLedger.FieldByName('DESCR').AsString;

      if chkShowSundry.Checked then
         qryTmpLedger.FieldByName('SUNDDR').AsCurrency := 0-qryTmpSQL.FieldByName('TAX').AsCurrency;

      qryTmpLedger.Post;
      qryTmpSQL.Next;
   end;

   // load the cheqreq_trans items
   if (chkOwing.Checked) and (not chkUnbilled.Checked) then
   begin

      qryTmpSql.Close;
      qryTmpSql.SQL.Clear;
      // MGD 25/10/02 - added ncheqreq to add to the description..
      qryTmpSql.SQL.Add('SELECT T.NCHEQREQ, MAX(nvl(A.DESCR,'' '')) as DESCR,');
      qryTmpSql.SQL.Add('MAX(C.BANK) as BANK,MAX(nvl(A.CREATED,C.REQDATE)) AS CREATED,');
      qryTmpSql.SQL.Add('MAX(nvl(C.REFNO,'' '')) as REFNO,');
      qryTmpSql.SQL.Add('SUM(T.AMOUNT) as AMOUNT,');
//     qryTmpSql.SQL.Add('SUM(T.AMOUNT - GET_TAX(T.AMOUNT,C.TAXCODE)) as AMOUNT,');
      qryTmpSql.SQL.Add('SUM(GET_TAX(T.AMOUNT,C.TAXCODE,C.REQDATE)) as TAX, A.TYPE, C.TAXCODE ');
      qryTmpSql.SQL.Add('FROM CHEQREQ C, CHEQREQ_TRANS T,ALLOC A ');
      qryTmpSql.SQL.Add('WHERE C.NCHEQREQ = T.NCHEQREQ ');
      qryTmpSql.SQL.Add('AND T.NALLOC = A.NALLOC ');
      qryTmpSql.SQL.Add('AND A.TYPE <> ''J1'' ');
      qryTmpSql.SQL.Add('AND C.NMATTER = :NMATTER');
      if chkFrom.Checked and not(FArchiveBatchMode) then
      begin
         qryTmpSql.SQL.Add('  AND trunc(A.CREATED) >= trunc(:FROMDATE)');
         qryTmpSql.ParamByName('FROMDATE').AsDateTime := dtpFrom.DateTime;
      end;
      if chkTo.Checked and not(FArchiveBatchMode) then
      begin
         qryTmpSql.SQL.Add('  AND trunc(A.CREATED) < trunc(:TODATE)');
         qryTmpSql.ParamByName('TODATE').AsDateTime := dtpTo.DateTime+1;
      end;
      qryTmpSql.SQL.Add('GROUP BY T.NCHEQREQ,A.TYPE, C.TAXCODE');
      qryTmpSql.ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryTmpSql.Open();
   end;

   while not qryTmpSQL.EOF do
   begin
      qryTmpLedger.Insert;
      qryTmpLedger.FieldByName('REPORTER').AsString := UserId;
      qryTmpLedger.FieldByName('CREATED').AsDateTime := qryTmpSQL.FieldByName('CREATED').AsDateTime;
      qryTmpLedger.FieldByName('REFNO').AsString := qryTmpSQL.FieldByName('REFNO').AsString;
      qryTmpLedger.FieldByName('CODE').AsString := qryTmpSQL.FieldByName('TYPE').AsString;

     // ADD NCheqReq to the description.
      if(qryTmpSql.FieldByName('NCHEQREQ').AsInteger > 0) then
         qryTmpLedger.FieldByName('DESCR').AsString := 'From CheqReq# ' + qryTmpSql.FieldByName('NCHEQREQ').AsString +
                                                       #13#10 + qryTmpSql.FieldByName('DESCR').AsString;

      dmAxiom.qryGetBillRate.Close;
      dmAxiom.qryGetBillRate.ParamByName('TAXCODE').AsString := qryTmpSQL.FieldByName('TAXCODE').AsString;
      dmAxiom.qryGetBillRate.Open;
      if dmAxiom.qryGetBillRate.FieldByName('BILL_RATE').AsFloat = 0 then
         PayableAmount := qryTmpSQL.FieldByName('AMOUNT').AsCurrency - qryTmpSQL.FieldByName('TAX').AsCurrency
      else
         PayableAmount := qryTmpSQL.FieldByName('AMOUNT').AsCurrency;

      qryTmpLedger.FieldByName('DISBDR').AsCurrency :=  0-PayableAmount;

      qryTmpLedger.FieldByName('TYPE').AsString := 'Payable';
//   ***** AES 19/10/2004 commented - all payables no need to include tax. just use what's in
//   ***** cheqreq_trans.
//     if chkGst.Checked then
//       qryTmpLedger.FieldByName('DISBDR').AsCurrency := qryTmpLedger.FieldByName('DISBDR').AsCurrency + (0-qryTmpSQL.FieldByName('TAX').AsCurrency);

      if chkShowSundry.Checked then
         qryTmpLedger.FieldByName('SUNDDR').AsCurrency := 0-qryTmpSQL.FieldByName('TAX').AsCurrency;

//     if qryTmpSQL.FieldByName('TYPE').AsString = 'J1' then
//       qryTmpLedger.FieldByName('DISBDR').AsCurrency := 0;
      qryTmpLedger.Post;
      qryTmpSQL.Next;
   end;

   // *********  AES
   // load the liability to firm cheqreq_- trans items
   // where a bill is written off but firm still has liability
   // to creditor or anticipated.  This is a reporting requirement
   // only.  no impact on data.
   if (chkOwing.Checked) and (not chkUnbilled.Checked) then
   begin
      qryTmpSql.Close;
      qryTmpSql.SQL.Clear;
      qryTmpSql.SQL.Add('SELECT C.NCHEQREQ, MAX(nvl(C.DESCR,'' '')) as DESCR,');
      qryTmpSql.SQL.Add('MAX(C.BANK) as BANK,MAX(C.REQDATE) AS CREATED,');
      qryTmpSql.SQL.Add('MAX(nvl(C.REFNO,'' '')) as REFNO,');
      qryTmpSql.SQL.Add('SUM(C.AMOUNT) as AMOUNT,');
      qryTmpSql.SQL.Add('SUM(C.TAX) as TAX, C.TAXCODE ');
      qryTmpSql.SQL.Add('FROM CHEQREQ C, NMEMO N ');
      qryTmpSql.SQL.Add('WHERE C.NMATTER = :NMATTER ');
      qryTmpSql.SQL.Add('AND C.NMEMO = N.NMEMO ');
      qryTmpSql.SQL.Add('AND C.CREDIT_NOTE IS NULL ');
      qryTmpSql.SQL.Add('AND NVL( c.REV_NCHEQREQ, 0) = 0 ');
//     qryTmpSql.SQL.Add('AND NVL(c.ncheque, 0) = 0 ');
      qryTmpSql.SQL.Add('AND (N.ANTD + N.DISB + N.FEES + N.SUND + N.UPCRED+ N.TAX) - '+
                       '(N.ANTD_WOFF + N.DISB_WOFF + N.FEES_WOFF + N.SUND_WOFF + N.UPCRED_WOFF + N.TAX_WOFF) - '+
	                    '(N.TAX_PAID + N.ANTD_PAID + N.DISB_PAID + N.FEES_PAID + N.SUND_PAID + N.UPCRED_PAID ) = 0 ');
      qryTmpSql.SQL.Add(' AND (N.ANTD_WOFF + N.DISB_WOFF + N.FEES_WOFF + N.SUND_WOFF + N.UPCRED_WOFF + N.TAX_WOFF) <> 0 ');
      qryTmpSql.SQL.Add('HAVING SUM(c.AMOUNT + c.TAX) > 0 ');
      if chkFrom.Checked and not(FArchiveBatchMode) then
      begin
         qryTmpSql.SQL.Add('  AND trunc(C.REQDATE) >= trunc(:FROMDATE)');
         qryTmpSql.ParamByName('FROMDATE').AsDateTime := dtpFrom.DateTime;
      end;
      if chkTo.Checked and not(FArchiveBatchMode) then
      begin
         qryTmpSql.SQL.Add('  AND trunc(C.REQDATE) < trunc(:TODATE)');
         qryTmpSql.ParamByName('TODATE').AsDateTime := dtpTo.DateTime+1;
      end;
      qryTmpSql.SQL.Add('GROUP BY C.NCHEQREQ, N.NMEMO, C.TAXCODE, C.REQDATE');
      qryTmpSql.ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryTmpSql.Open();
   end;

   while not qryTmpSQL.EOF do
   begin
      qryTmpLedger.Insert;
      qryTmpLedger.FieldByName('REPORTER').AsString := UserId;
      qryTmpLedger.FieldByName('CREATED').AsDateTime := qryTmpSQL.FieldByName('CREATED').AsDateTime;
      qryTmpLedger.FieldByName('REFNO').AsString := qryTmpSQL.FieldByName('REFNO').AsString;
      qryTmpLedger.FieldByName('CODE').AsString := 'J1';

     // ADD NCheqReq to the description.
      if(qryTmpSql.FieldByName('NCHEQREQ').AsInteger > 0) then
         qryTmpLedger.FieldByName('DESCR').AsString := 'From CheqReq# ' + qryTmpSql.FieldByName('NCHEQREQ').AsString +
                                                       #13#10 + qryTmpSql.FieldByName('DESCR').AsString;

//     dmAxiom.qryGetBillRate.Close;
//     dmAxiom.qryGetBillRate.ParamByName('TAXCODE').AsString := qryTmpSQL.FieldByName('TAXCODE').AsString;
//     dmAxiom.qryGetBillRate.Open;
//     if dmAxiom.qryGetBillRate.FieldByName('BILL_RATE').AsFloat = 0 then
//         PayableAmount := qryTmpSQL.FieldByName('AMOUNT').AsCurrency - qryTmpSQL.FieldByName('TAX').AsCurrency
//     else
//         PayableAmount := qryTmpSQL.FieldByName('AMOUNT').AsCurrency;

      if chkGst.Checked then
         qryTmpLedger.FieldByName('DISBDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('AMOUNT').AsCurrency + qryTmpSQL.FieldByName('TAX').AsCurrency)
      else
         qryTmpLedger.FieldByName('DISBDR').AsCurrency :=  0 - qryTmpSQL.FieldByName('AMOUNT').AsCurrency;

      qryTmpLedger.FieldByName('TYPE').AsString := 'Firm Payable';

      if chkShowSundry.Checked then
         qryTmpLedger.FieldByName('SUNDDR').AsCurrency := 0-qryTmpSQL.FieldByName('TAX').AsCurrency;

      qryTmpLedger.Post;
      qryTmpSQL.Next;
   end;

   // If not Print only unbilled -> Print unbilled
   if not chkUnbilled.Checked then
   begin
      // Load the Bills
      qryTmpSql.Close;
      qryTmpSql.SQL.Clear;
      //  11 May 2018 add in cross ref to orginal bill refno for credit note
      //qryTmpSql.SQL.Add('SELECT * ');
      //qryTmpSql.SQL.Add('FROM NMEMO ');
      //qryTmpSql.SQL.Add('WHERE NMATTER = :NMatter ');
      qryTmpSql.SQL.Add('SELECT n.*, x.REFNO as X_REFNO ');
      qryTmpSql.SQL.Add('FROM NMEMO n LEFT OUTER JOIN (SELECT NMEMO, REFNO FROM NMEMO) x ON n.RV_NMEMO = x.NMEMO ');
      qryTmpSql.SQL.Add('WHERE n.NMATTER = :NMatter ');
      qryTmpSql.ParamByName('NMatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      if chkFrom.Checked and not(FArchiveBatchMode) then
      begin
         //qryTmpSql.SQL.Add(' AND DISPATCHED >= :FROMDATE ');
         qryTmpSql.SQL.Add(' AND trunc(n.DISPATCHED) >= trunc(:FROMDATE) ');
         qryTmpSql.ParamByName('FROMDATE').AsDateTime := dtpFrom.DateTime;
      end;
      if chkTo.Checked and not(FArchiveBatchMode) then
      begin
         //qryTmpSql.SQL.Add(' AND DISPATCHED < :TODATE ');
         qryTmpSql.SQL.Add(' AND trunc(n.DISPATCHED) < trunc(:TODATE) ');
         qryTmpSql.ParamByName('TODATE').AsDateTime := dtpTo.DateTime+1;
      end;
     qryTmpSql.Open;

      while not qryTmpSQL.EOF do
      begin
         if qryTmpSQL.FieldByName('DISPATCHED').AsString <> '' then
         begin
            qryTmpLedger.Insert;
            qryTmpLedger.FieldByName('REPORTER').AsString := UserId;
            qryTmpLedger.FieldByName('CREATED').AsDateTime := qryTmpSQL.FieldByName('DISPATCHED').AsDateTime;
            qryTmpLedger.FieldByName('REFNO').AsString := qryTmpSQL.FieldByName('REFNO').AsString;
            qryTmpLedger.FieldByName('BANK').AsString := qryTmpSQL.FieldByName('BANK_ACCT').AsString;
            qryTmpLedger.FieldByName('REASON').AsString := qryTmpSQL.FieldByName('BILL_TO').AsString;
            qryTmpLedger.FieldByName('CODE').AsString := qryTmpSQL.FieldByName('RV_TYPE').AsString;
            if qryTmpSQL.FieldByName('RV_TYPE').AsString = 'D' then
            begin
               qryTmpLedger.FieldByName('DESCR').AsString := 'Disbursement Letter ' + IntToStr(qryTmpSQL.FieldByName('NMEMO').AsInteger);
               qryTmpLedger.FieldByName('TYPE').AsString := 'Letter';
            end else
            begin
               // 11 May 2018 DW separate credit notes from normal bills to ebale labelling
               if qryTmpSQL.FieldByName('RV_TYPE').AsString = 'X' then
               begin
                  qryTmpLedger.FieldByName('DESCR').AsString := 'Credit note on bill ' + qryTmpSQL.FieldByName('X_REFNO').AsString;
                  qryTmpLedger.FieldByName('TYPE').AsString := 'Credit note';
               end
               else
               begin
                  qryTmpLedger.FieldByName('DESCR').AsString := 'Bill ' + qryTmpSQL.FieldByName('REFNO').AsString;
                  qryTmpLedger.FieldByName('TYPE').AsString := 'Bill';
               end;
            end;
         if chkFees.Checked then
         begin
            if qryTmpSQL.FieldByName('FEES').AsCurrency <> 0 then
            begin
               qryTmpLedger.FieldByName('FEESDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('FEES').AsCurrency);
               if chkGst.Checked then
                  qryTmpLedger.FieldByName('FEESDR').AsCurrency := qryTmpLedger.FieldByName('FEESDR').AsCurrency - qryTmpSQL.FieldByName('FEESTAX').AsCurrency
            end;
         end;
         if qryTmpSQL.FieldByName('SUND').AsCurrency <> 0 then
         begin
            qryTmpLedger.FieldByName('SUNDDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('SUND').AsCurrency );
            if chkGst.Checked then
 {
   Modified 4.11.2002 GG

   Should subtract the tax component of this field rather than add it.
   The previous line sends the SUND value -ve when it saves it to SUNDR.

             qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qryTmpLedger.FieldByName('SUNDDR').AsCurrency + qryTmpSQL.FieldByName('SUNDTAX').AsCurrency;
 }
               qryTmpLedger.FieldByName('SUNDDR').AsCurrency := qryTmpLedger.FieldByName('SUNDDR').AsCurrency - qryTmpSQL.FieldByName('SUNDTAX').AsCurrency;
         end;
         if qryTmpSQL.FieldByName('RV_TYPE').AsString <> 'X' then
         begin
            // Ordinary bills
            if qryTmpSQL.FieldByName('ANTD').AsCurrency <> 0 then
               qryTmpLedger.FieldByName('DEBIT').AsCurrency := 0 - (qryTmpSQL.FieldByName('ANTD').AsCurrency)
            else
               qryTmpLedger.FieldByName('DEBIT').AsCurrency := 0;
           // 04/06/2004 Creditors work: Tony
           // For now, add legal creditors to debit (anticipated disbursements)
            if qryTmpSQL.FieldByName('UPCRED').AsCurrency <> 0 then
               qryTmpLedger.FieldByName('DEBIT').AsCurrency := qryTmpLedger.FieldByName('DEBIT').AsCurrency - qryTmpSQL.FieldByName('UPCRED').AsCurrency;

            if chkGst.Checked then
            begin
               if qryTmpSQL.FieldByName('ANTD').AsCurrency <> 0 then
                  qryTmpLedger.FieldByName('DEBIT').AsCurrency := qryTmpLedger.FieldByName('DEBIT').AsCurrency - qryTmpSQL.FieldByName('ANTDTAX').AsCurrency;
               if qryTmpSQL.FieldByName('UPCRED').AsCurrency <> 0 then
                  qryTmpLedger.FieldByName('DEBIT').AsCurrency := qryTmpLedger.FieldByName('DEBIT').AsCurrency - qryTmpSQL.FieldByName('UPCREDTAX').AsCurrency;
            end;

           //if qryTmpSQL.FieldByName('DISB').AsCurrency < 0 then
           //begin
            qryTmpLedger.FieldByName('DISBDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('DISB').AsCurrency);
            if chkGst.Checked then
               qryTmpLedger.FieldByName('DISBDR').AsCurrency := qryTmpLedger.FieldByName('DISBDR').AsCurrency - qryTmpSQL.FieldByName('DISBTAX').AsCurrency;

            if chkShowSundry.Checked then
               qryTmpLedger.FieldByName('SUNDDR').AsCurrency := - (qryTmpSQL.FieldByName('DISBTAX').AsCurrency + qryTmpSQL.FieldByName('ANTDTAX').AsCurrency);


           //end;
             //pb qryTmpLedger.FieldByName('DISBDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('DISB').AsCurrency);
           //if qryTmpSQL.FieldByName('DISB').AsCurrency > 0 then
           //begin
           //  qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpSQL.FieldByName('DISB').AsCurrency ;
           //  if chkGst.Checked then
           //      qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpLedger.FieldByName('DISBCR').AsCurrency + qryTmpSQL.FieldByName('DISBTAX').AsCurrency ;
           //end;
             //pb qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpSQL.FieldByName('DISB').AsCurrency;
         end else
         begin
           // If it is a credit note, treat antdisb as disb
           //if (qryTmpSQL.FieldByName('ANTD').AsCurrency + qryTmpSQL.FieldByName('DISB').AsCurrency) < 0 then
           //begin
            qryTmpLedger.FieldByName('DISBDR').AsCurrency := 0 - (qryTmpSQL.FieldByName('DISB').AsCurrency  + qryTmpSQL.FieldByName('ANTD').AsCurrency );
            if chkGst.Checked then
               qryTmpLedger.FieldByName('DISBDR').AsCurrency := qryTmpLedger.FieldByName('DISBDR').AsCurrency - qryTmpSQL.FieldByName('DISBTAX').AsCurrency - qryTmpSQL.FieldByName('ANTDTAX').AsCurrency;
           //end;
           //if (qryTmpSQL.FieldByName('ANTD').AsCurrency + qryTmpSQL.FieldByName('DISB').AsCurrency) > 0 then
           //begin
           //  qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpSQL.FieldByName('DISB').AsCurrency  + qryTmpSQL.FieldByName('ANTD').AsCurrency ;
           //  if chkGst.Checked then
           //      qryTmpLedger.FieldByName('DISBCR').AsCurrency := qryTmpLedger.FieldByName('DISBCR').AsCurrency + qryTmpSQL.FieldByName('DISBTAX').AsCurrency + qryTmpSQL.FieldByName('ANTDTAX').AsCurrency
           //end;
         end;

         if (qryTmpSQL.FieldByName('FEES').AsCurrency + qryTmpSQL.FieldByName('DISB').AsCurrency + qryTmpSQL.FieldByName('ANTD').AsCurrency + qryTmpSQL.FieldByName('SUND').AsCurrency + qryTmpSQL.FieldByName('UPCRED').AsCurrency) > 0 then
         begin
            qryTmpLedger.FieldByName('DEBTDR').AsCurrency := (qryTmpSQL.FieldByName('FEES').AsCurrency + qryTmpSQL.FieldByName('DISB').AsCurrency + qryTmpSQL.FieldByName('ANTD').AsCurrency + qryTmpSQL.FieldByName('SUND').AsCurrency + qryTmpSQL.FieldByName('UPCRED').AsCurrency);
            if {chkGst.checked} true then
               qryTmpLedger.FieldByName('DEBTDR').AsCurrency := qryTmpLedger.FieldByName('DEBTDR').AsCurrency + qryTmpSQL.FieldByName('TAX').AsCurrency;
         end else
         begin
            qryTmpLedger.FieldByName('DEBTCR').AsCurrency := 0 - (qryTmpSQL.FieldByName('FEES').AsCurrency + qryTmpSQL.FieldByName('DISB').AsCurrency + qryTmpSQL.FieldByName('ANTD').AsCurrency + qryTmpSQL.FieldByName('SUND').AsCurrency + qryTmpSQL.FieldByName('UPCRED').AsCurrency);
            if {chkGst.Checked} true then
               qryTmpLedger.FieldByName('DEBTCR').AsCurrency := qryTmpLedger.FieldByName('DEBTCR').AsCurrency - qryTmpSQL.FieldByName('TAX').AsCurrency;
         end;
         qryTmpLedger.Post;
       end;
       qryTmpSQL.Next;
     end;
   end;

   // MGD 26/9/02 - added to order items correctly when no time on the date..
   // MGD 14/10/02 - modified to union in information from transit table.
   //              - Moved entire SQL into query object as its not dynamic
   qryRptLedger.Close;
   qryRptLedger.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryRptLedger.ParamByName('reporter').AsString := UserId;
   qryRptLedger.Open;

   qryTrustCheqreqs.Close;
   qryTrustCheqreqs.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryTrustCheqreqs.Open;

   if dmAxiom.runningide then
      qryRptLedger.SQL.SaveToFile('c:\tmp\comborpt.sql');

//   qrComboLedger := TqrComboLedger.Create(Self);
   try
//     qrComboLedger.qrlblArchiveMsg.Enabled  := FArchived;
//     qrComboLedger.qrlblArchivedMsg.Enabled := FArchived;
//     qrComboLedger.qrdbtbArchived.Enabled   := FArchived;

      Screen.Cursor := crDefault;
      rptCombo.Print;
{     if AutoPrint then
       qrComboLedger.Print
     else
       qrComboLedger.PreviewModal;  }

   finally
//     FreeAndNil(qrComboLedger);
   end;

   ResetLedger();

   if Visible then
      Close();
end;


procedure TfrmRptLedgerCombo.PrepareLedger;
begin
  qryTmpLedger.Close;
  qryTmpLedger.SQL.Clear;
  qryTmpLedger.SQL.Add('DELETE');
  qryTmpLedger.SQL.Add('FROM LEDGER');
  qryTmpLedger.SQL.Add('WHERE REPORTER = ' + QuotedStr(UserId));
  qryTmpLedger.ExecSQL;
  qryTmpLedger.SQL.Clear;
  qryTmpLedger.SQL.Add('SELECT L.*, L.ROWID');
  qryTmpLedger.SQL.Add('FROM LEDGER L');
  qryTmpLedger.SQL.Add('WHERE L.REPORTER = ' + QuotedStr(UserId));
  qryTmpLedger.Open;
end;


procedure TfrmRptLedgerCombo.ResetLedger;
begin
  qryTmpLedger.Close;
  qryTmpLedger.SQL.Clear;
  qryTmpLedger.SQL.Add('DELETE');
  qryTmpLedger.SQL.Add('FROM LEDGER');
  qryTmpLedger.SQL.Add('WHERE REPORTER = ' + QuotedStr(UserId));
  qryTmpLedger.ExecSQL;
end;


procedure TfrmRptLedgerCombo.btnMatterClick(Sender: TObject);
begin
  if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

  if frmMatterSearch.ShowModal = mrOk then
  begin
     DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
     frmMatterSearch.Free;
  end;

//  if frmMatterSearch.ShowModal = mrOK then
//    DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
end;

procedure TfrmRptLedgerCombo.FormCreate(Sender: TObject);
var
   lsStorageName: String;
begin
   frmRptLedgerCombo := Self;
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);
   sTable := 'MATTER M, PHONEBOOK P';
   //{$IFDEF AXIOM}
   if Assigned(dmAxiom) then
      UserId := dmAxiom.UserId;
   //{$ENDIF}
   chkFees.Checked := SettingLoadBoolean('COMBO LEDGER', 'Fees');
   chkUnbilled.Checked :=SettingLoadBoolean('COMBO LEDGER', 'Unbilled');
   chkWrap.Checked:=SettingLoadBoolean('COMBO LEDGER', 'Wrap');
   cbHideStripe.Checked:=SettingLoadBoolean('COMBO LEDGER', 'Hide');
   chkGst.Checked :=SettingLoadBoolean('COMBO LEDGER', 'Gst');
   chkShowSundry.Checked:=SettingLoadBoolean('COMBO LEDGER', 'Tax');
end;

procedure TfrmRptLedgerCombo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryMatter.Close;
   qryFeesLedger.Close;
   qrySundLedger.Close;
   qryTmpSQL.Close;
   qryTmpLedger.Close;
   qryTrustCheqreqs.Close;
   Action := caFree;
end;

procedure TfrmRptLedgerCombo.FormDestroy(Sender: TObject);
begin
   SettingSave('COMBO LEDGER', 'Fees', chkFees.Checked);
   SettingSave('COMBO LEDGER', 'Unbilled', chkUnbilled.Checked);
   SettingSave('COMBO LEDGER', 'Wrap', chkWrap.Checked);
   SettingSave('COMBO LEDGER', 'Hide', cbHideStripe.Checked);
   SettingSave('COMBO LEDGER', 'Gst', chkGst.Checked);
   SettingSave('COMBO LEDGER', 'Tax', chkShowSundry.Checked);
end;

procedure TfrmRptLedgerCombo.chkShowSundryClick(Sender: TObject);
begin
   if chkShowSundry.Checked then
   begin
      chkFees.Checked := False;
      chkFees.Enabled := False;
   end
   else
      chkFees.Enabled := True;
end;

procedure TfrmRptLedgerCombo.qryMatterAfterOpen(DataSet: TDataSet);
begin
   qryPhoneBook.Open;
end;

procedure TfrmRptLedgerCombo.qryMatterBeforeClose(DataSet: TDataSet);
begin
   qryPhoneBook.Close;
end;

procedure TfrmRptLedgerCombo.ppLabel27Print(Sender: TObject);
begin
   ppLabel27.Text := SystemString('COMPANY');
end;

procedure TfrmRptLedgerCombo.rptComboBeforePrint(Sender: TObject);
begin
  if(FCaption = '') then
  begin
    FCaption := lblTitle.Caption;
    if not chkFees.Checked then
      FCaption := FCaption + ' (without fees)';
    if chkUnbilled.Checked then
      FCaption := FCaption + ' for unbilled items';
  end;
  lblTitle.Caption := FCaption;
  ppDBMemo2.Stretch := chkWrap.Checked;
  ppDBMemo3.Stretch := chkWrap.Checked;
  if (cbHideStripe.Checked = true) then
     ppDetailBand1.Background2.Brush.Color := clWhite
  else
     ppDetailBand1.Background2.Brush.Color := clBtnFace;
end;

procedure TfrmRptLedgerCombo.ppLabel9GetText(Sender: TObject;
  var Text: String);
begin
   if chkShowSundry.Checked then
      Text := 'Sundries';
end;

procedure TfrmRptLedgerCombo.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  if chkShowSundry.Checked then
    Text := 'GST';
end;

procedure TfrmRptLedgerCombo.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  if chkGst.Checked then
    Text := 'Disbursements (inc tax)'
  else
    Text := 'Disbursements (ex tax)';
end;

procedure TfrmRptLedgerCombo.ppShape1Print(Sender: TObject);
begin
{  if not cbHideStripe.Checked then
  begin
    if ppShape1.Brush.Color = clWhite then
      ppShape1.Brush.Color := clLtGray
    else
      ppShape1.Brush.Color := clWhite;
//    qrtbComboDesc1.Color := qrbdCombo.Color;
  end;    }
end;

end.

