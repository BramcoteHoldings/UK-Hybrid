unit RptLedgerSundry;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ComCtrls, Buttons, StdCtrls,
  DateChangeButton, NumberEdit, MemDS, OracleUniProvider, Uni, DBAccess, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppProd, ppClass, ppReport, ppParameter, ppDesignLayer,
  ppModule, raCodMod, ppCtrls, ppBands, ppStrtch, ppMemo, ppPrnabl, ppVar,
  ppCache, ppSubRpt;

type
  TfrmRptLedgerSundry = class(TForm)
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
    qrySundLedger: TUniQuery;
    qrySundLedgerSum: TUniQuery;
    chkUnbilled: TCheckBox;
    chkGst: TCheckBox;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    dsMatter: TUniDataSource;
    dsSundLedger: TUniDataSource;
    dsSundLedgerSum: TUniDataSource;
    plMatter: TppDBPipeline;
    plSundLedger: TppDBPipeline;
    plSundLedgerSum: TppDBPipeline;
    ppReport1: TppReport;
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
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLabel20: TppLabel;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLabel7: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText7: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppDBMemo4: TppDBMemo;
    ppLabel18: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMatterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    procedure GetMatter(sFile : string);
  public
    { Public declarations }
    procedure DisplayMatter(sFile : string);
    procedure DisplayArchive(sFile : string);
  end;

var
  hdlActive: HWND;
  sTable : string;

implementation

uses
  AxiomData, MiscFunc, MSearch, citfunc;

{$R *.DFM}


procedure TfrmRptLedgerSundry.DisplayMatter(sFile : string);
begin
  sTable := 'MATTER M, PHONEBOOK P';
  GetMatter(sFile);
  if not Self.Visible then
    ShowModal;
end;


procedure TfrmRptLedgerSundry.DisplayArchive(sFile : string);
begin
  sTable := 'ARCHIVE';
  GetMatter(sFile);
  if not Self.Visible then
    ShowModal;
end;


procedure TfrmRptLedgerSundry.GetMatter(sFile : string);
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


procedure TfrmRptLedgerSundry.FormShow(Sender: TObject);
begin
  dcThisMonth.Click;
  if not qryMatter.Active then
    DisplayMatter(ReopenListLast('MATTER'));
  if qryMatter.Active then
    dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
  chkFrom.Checked := False;
  chkTo.Checked := False;
end;


procedure TfrmRptLedgerSundry.btnPrintClick(Sender: TObject);
begin
  with qrySundLedger do
  begin
    Close;
    SQL.Clear;
    if chkGst.Checked then
//        SQL.Add('SELECT SUNDRY. ACCT, SUNDRY.CREATED, SUNDRY.AMOUNT + DECODE(SUNDRY.BILLED,''Y'',SUNDRY.TAX,SUNDRY.AMOUNT * (ABS(nvl(TAXRATE.RATE,0))/100)) as AMOUNT, SUNDRY.DESCR, SUNDRY.UNITS, SUNDRY.BILLED, NMEMO.REFNO, SUNDRYTYPE.DESCR AS TYPEDESC')
        SQL.Add('SELECT SUNDRY. ACCT, SUNDRY.CREATED, (SUNDRY.AMOUNT + SUNDRY.TAX) as AMOUNT, SUNDRY.DESCR, SUNDRY.UNITS, SUNDRY.BILLED, NMEMO.REFNO, SUNDRYTYPE.DESCR AS TYPEDESC')
    else
        SQL.Add('SELECT SUNDRY. ACCT, NVL(SUNDRY.CREATED,NULL) AS CREATED, SUNDRY.AMOUNT, SUNDRY.DESCR, SUNDRY.UNITS, SUNDRY.BILLED, NMEMO.REFNO, SUNDRYTYPE.DESCR AS TYPEDESC');
    SQL.Add('FROM SUNDRY, SUNDRYTYPE, NMEMO, TAXRATE');
    SQL.Add('WHERE SUNDRY.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger) + ' AND SUNDRYTYPE.CODE = SUNDRY.TYPE AND SUNDRYTYPE.ENTITY = SUNDRY.ACCT');
    SQL.Add('AND SUNDRY.NMEMO = NMEMO.NMEMO(+)');
    SQL.Add('AND SUNDRY.TAXCODE = TAXRATE.TAXCODE (+) ');
    SQL.Add('AND TRUNC(SUNDRY.CREATED) >= commence and TRUNC(SUNDRY.CREATED) <= nvl(end_period,sysdate + 1000) ');
    if chkFrom.Checked then
    begin
      SQL.Add('AND SUNDRY.CREATED >= :P_DateFrom ');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpFrom.Date);
    end;
    if chkTo.Checked then
    begin
      SQL.Add('AND SUNDRY.CREATED < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpTo.Date) + 1;
    end;
    if chkUnbilled.Checked then
      SQL.Add('  AND SUNDRY.BILLED = ''N''');

    SQL.Add('ORDER BY SUNDRY.CREATED');
    Open;
  end;
  //=====for summary
  with qrySundLedgerSum do
  begin
    Close;
    SQL.Clear;
    if not chkUnbilled.Checked then
    begin
      SQL.Add('SELECT Sundry.Type, Max(SUNDRYTYPE.DESCR) AS TYPEDESC');
      if chkGst.Checked then
//        SQL.Add(', 0 as UnbilledUnits, 0 as Unbilled, Sum(SUNDRY.UNITS) as TotalUnits, Sum(SUNDRY.AMOUNT + DECODE(SUNDRY.BILLED,''Y'',SUNDRY.TAX,SUNDRY.AMOUNT * (TAXRATE.RATE/100))) as Total')
          SQL.Add(', 0 as UnbilledUnits, 0 as Unbilled, Sum(SUNDRY.UNITS) as TotalUnits, Sum(SUNDRY.AMOUNT + SUNDRY.TAX) as Total')
      else
        SQL.Add(', 0 as UnbilledUnits, 0 as Unbilled, Sum(SUNDRY.UNITS) as TotalUnits, Sum(SUNDRY.AMOUNT) as Total');
      SQL.Add('FROM SUNDRY, SUNDRYTYPE,TAXRATE');
      SQL.Add('WHERE sundry.nmatter = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('and Sundry.Type = SundryType.Code(+) AND SUNDRYTYPE.ENTITY = SUNDRY.ACCT');
      SQL.Add('AND SUNDRY.TAXCODE = TAXRATE.TAXCODE(+)');
      SQL.Add('AND TRUNC(SUNDRY.CREATED) >= commence and TRUNC(SUNDRY.CREATED) <= nvl(end_period, sysdate + 1000)');
      if chkFrom.Checked then
      begin
        SQL.Add('AND SUNDRY.CREATED >= :P_DateFrom ');
        ParamByName('P_DateFrom').AsDate := Trunc(dtpFrom.Date);
      end;
      if chkTo.Checked then
      begin
        SQL.Add('AND SUNDRY.CREATED < :P_DateTo ');
        ParamByName('P_DateTo').AsDate := Trunc(dtpTo.Date) + 1;
      end;
      SQL.Add('group by sundry.type');
      SQL.Add('UNION ALL');
    end;

    SQL.Add('SELECT Sundry.Type, Max(SUNDRYTYPE.DESCR) AS TYPEDESC');
    if chkGst.Checked then
    //* AES 23/08/2006
        SQL.Add(', Sum(SUNDRY.UNITS) as UnbilledUnits, Sum(SUNDRY.AMOUNT + SUNDRY.TAX) as Unbilled, 0 as TotalUnits, 0 as Total')
//        SQL.Add(', Sum(SUNDRY.UNITS) as UnbilledUnits, Sum(SUNDRY.AMOUNT + DECODE(SUNDRY.BILLED,''Y'',SUNDRY.TAX,SUNDRY.AMOUNT)) as Unbilled, 0 as TotalUnits, 0 as Total')
    else
        SQL.Add(', Sum(SUNDRY.UNITS) as UnbilledUnits, Sum(SUNDRY.AMOUNT ) as Unbilled, 0 as TotalUnits, 0 as Total');
    SQL.Add('FROM SUNDRY, SUNDRYTYPE,TAXRATE');
    SQL.Add('WHERE sundry.nmatter = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
    SQL.Add('and  Sundry.Type = SundryType.Code(+)  AND SUNDRYTYPE.ENTITY = SUNDRY.ACCT');
    SQL.Add('AND SUNDRY.TAXCODE = TAXRATE.TAXCODE(+)');
    SQL.Add('AND TRUNC(SUNDRY.CREATED) >= commence and TRUNC(SUNDRY.CREATED) <= nvl(end_period, sysdate + 1000) ');
    SQL.Add('and BILLED = ''N''');
    if chkFrom.Checked then
    begin
      SQL.Add('AND SUNDRY.CREATED >= :P_DateFrom ');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpFrom.Date);
    end;
    if chkTo.Checked then
    begin
      SQL.Add('AND SUNDRY.CREATED < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpTo.Date) + 1;
    end;
    SQL.Add('group by sundry.type');
    SQL.Add('order by 1');
    Open;
  end;
  //run composite report
//  qrcrSundryLedger.Preview;
  ppReport1.Print;
  Self.Close;
//  hdlActive:=GetActiveWindow;
//  tmrSuicide.Enabled := True; // Kills this window when the report closes
end;

procedure TfrmRptLedgerSundry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qrySundLedger.Close;
  qrySundLedgerSum.Close;
  DestroyWindow(hdlActive);
  Self.Release;
end;

procedure TfrmRptLedgerSundry.btnMatterClick(Sender: TObject);
begin
   if sTable = 'MATTER M, PHONEBOOK P' then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOK then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
{  if sTable = 'ARCHIVE' then
    if frmArchiveSearch.ShowModal = mrOK then
      DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString);}
end;

procedure TfrmRptLedgerSundry.FormCreate(Sender: TObject);
begin
  sTable := 'MATTER M, PHONEBOOK P';
end;

procedure TfrmRptLedgerSundry.ppLabel18GetText(Sender: TObject;
  var Text: String);
begin
   if chkGst.Checked then
      Text := 'Inc Tax'
   else
      Text := 'Ex Tax';
end;

end.
