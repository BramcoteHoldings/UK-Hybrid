unit RptLedgerDebt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ComCtrls, Buttons, StdCtrls,
  DateChangeButton, NumberEdit, MemDS, OracleUniProvider, Uni, DBAccess, ppCtrls, ppStrtch,
  ppMemo, ppPrnabl, ppClass, ppVar, ppBands, ppCache, ppDB, ppDesignLayer,
  ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppModule,
  raCodMod;

type
  TfrmRptLedgerDebt = class(TForm)
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
    chkGst: TCheckBox;
    rgSeq: TRadioGroup;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    dsMatter: TUniDataSource;
    dsTmpLedger: TUniDataSource;
    plMatter: TppDBPipeline;
    plTmpLedger: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    pplblPeriod: TppLabel;
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
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppVariable1: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMatterClick(Sender: TObject);
    procedure qryTmpLedgerCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QRLabel53Print(sender: TObject; var Value: String);
    procedure QRDBText51Print(sender: TObject; var Value: String);
    procedure pplblPeriodGetText(Sender: TObject; var Text: String);
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


procedure TfrmRptLedgerDebt.DisplayMatter(sFile : string);
begin
  sTable :=  'MATTER M, PHONEBOOK P'; //'MATTER M';
  GetMatter(sFile);
  if not Self.Visible then
    ShowModal;
end;


procedure TfrmRptLedgerDebt.DisplayArchive(sFile : string);
begin
  sTable := 'ARCHIVE';
  GetMatter(sFile);
  if not Self.Visible then
    ShowModal;
end;


procedure TfrmRptLedgerDebt.GetMatter(sFile : string);
begin
  with qryMatter do
  begin
    Close;
    SQL.Text := 'SELECT M.TITLE, M.FILEID, M.NMATTER, P.SEARCH, M.SHORTDESCR, M.OPENED, M.LONGDESCR '+
                'FROM ' + sTable + '  WHERE M.FILEID = ' + QuotedStr(sFile) +
                ' AND M.NCLIENT = P.NCLIENT ';
//    SQL.Text := 'SELECT OPENED, FILEID, TITLE, LONGDESCR, SHORTDESCR, NMATTER FROM ' + sTable + ' WHERE FILEID = ' + QuotedStr(sFile);
    Prepare;
    Open;

    if not IsEmpty then
    begin
      lblFile.Caption := FieldByName('FILEID').AsString;
      lblClient.Caption := FieldByName('TITLE').AsString;
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


procedure TfrmRptLedgerDebt.FormShow(Sender: TObject);
begin
  dcThisMonth.Click;
  if not qryMatter.Active then
    DisplayMatter(ReopenListLast('MATTER'));
  if qryMatter.Active then
    dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
  chkFrom.Checked := False;
  chkTo.Checked := False;
end;


procedure TfrmRptLedgerDebt.btnPrintClick(Sender: TObject);
begin
  // Load the Debtors ledger
   with qryTmpLedger do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT 2 as report_order, NMEMO.generated as NMEMO_GEN,NMEMO.NMEMO, ALLOC.CREATED, ALLOC.REFNO,');
      SQL.Add(' ALLOC.PAYER, ALLOC.BILLED, NMEMO.REFNO AS BILLNO, (NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)) as AMOUNT, ALLOC.DESCR');
      //rb
      if chkGst.Checked then
      begin
         SQL.ADD(',DECODE(SUBSTR((NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)),0,1),''0'',to_number(NULL),''-'',ABS((NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)) ),to_number(NULL)  ) DEBIT ');
         SQL.ADD(',DECODE(SUBSTR((NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)),0,1),''-'',to_number(NULL),ABS((NVL(ALLOC.AMOUNT,0)+NVL(ALLOC.TAX,0)))  ) CREDIT ');
      end
      else
      begin
         SQL.ADD(',DECODE(SUBSTR((NVL(ALLOC.AMOUNT,0)),0,1),''0'',to_number(NULL),''-'',ABS((NVL(ALLOC.AMOUNT,0))),to_number(NULL)  ) DEBIT ');
         SQL.ADD(',DECODE(SUBSTR((NVL(ALLOC.AMOUNT,0)),0,1),''-'',to_number(NULL),ABS((NVL(ALLOC.AMOUNT,0)))  ) CREDIT ');
      end;
      SQL.Add('FROM ALLOC, NMEMO');
      SQL.Add('WHERE ALLOC.NMEMO = NMEMO.NMEMO(+)');
      SQL.Add('AND ALLOC.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND alloc.disb_nalloc_receipt IS NULL');
      SQL.Add('AND ALLOC.TRUST <> ''T'' AND ALLOC.TYPE <> ''DR'' AND (ALLOC.NRECEIPT <> 0 OR ALLOC.TYPE = ''J1'' OR ALLOC.TYPE = ''RF'') ');
      if chkFrom.Checked then
      begin
         SQL.Add('AND ALLOC.CREATED >= :P_DateFrom ');
         ParamByName('P_DateFrom').AsDate := Trunc(dtpFrom.Date);
      end;
      if chkTo.Checked then
      begin
         SQL.Add('AND ALLOC.CREATED < :P_DateTo ');
         ParamByName('P_DateTo').AsDate := Trunc(dtpTo.Date) + 1;
      end;
      SQL.Add('UNION ALL');
      SQL.Add('SELECT 1 as report_order,NMEMO.generated AS NMEMO_GEN,NMEMO, DISPATCHED "CREATED",');
      SQL.Add(' REFNO, BILL_TO, '' '', REFNO, (NVL(DISCOUNT,0)+NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0))*-1 as AMOUNT, ''Client Bill '' || REFNO');
      //SQL.Add('SELECT DISPATCHED AS CREATED, REFNO, BILL_TO, '' '', REFNO, (FEES+FEESTAX+DISB+DISBTAX+SUND+SUNDTAX+ANTD+ANTDTAX)*-1 as AMOUNT, ''Client Bill '' || REFNO');
      //rb
      if chkGst.Checked then
      begin
         SQL.ADD(',CASE WHEN (total > 0) THEN total END AS debit,');
         SQL.ADD('CASE WHEN (total < 0) THEN total * -1 END AS credit ');
//         SQL.ADD(',NVL(DECODE(SUBSTR((((NVL(DISCOUNT,0)+(NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0))*-1 ),0,1),''0'',to_number(NULL),''-'',ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0)) ),to_number(NULL)),0) DEBIT ');
//         SQL.ADD(',NVL(DECODE(SUBSTR((((NVL(DISCOUNT,0)+NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0))*-1 ),0,1),''-'',to_number(NULL),ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0)) )),0) CREDIT ');
      end
      else
      begin
         SQL.ADD(',CASE WHEN (total > 0) THEN (total - NVL(tax,0)) END AS debit,');
         SQL.ADD('CASE WHEN (total < 0) THEN (total - NVL(tax,0)) * -1 END AS credit ');
//         SQL.ADD(',NVL(DECODE(SUBSTR((((NVL(DISCOUNT,0)+NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0))*-1 ),0,1),''0'',to_number(NULL),''-'',ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)) ),to_number(NULL)),0) DEBIT ');
//         SQL.ADD(',NVL(DECODE(SUBSTR((((NVL(DISCOUNT,0)+NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0))*-1 ),0,1),''-'',to_number(NULL),ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)) )),0) CREDIT ');
      end;
      SQL.Add('FROM NMEMO');
      SQL.Add('WHERE NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND DISPATCHED IS NOT NULL ');
      SQL.Add('AND RV_TYPE NOT IN (''D'', ''X'') ');
      if chkFrom.Checked then
         SQL.Add('AND DISPATCHED >= :P_DateFrom ');
      if chkTo.Checked then
         SQL.Add('AND DISPATCHED < :P_DateTo ');
      SQL.Add('UNION ALL');
      SQL.Add('SELECT 1 as report_order,RV.generated AS NMEMO_GEN,RV.NMEMO, RV.DISPATCHED "CREATED",');
      SQL.Add(' RV.REFNO, RV.BILL_TO, '' '', RV.REFNO, (NVL(RV.DISCOUNT,0)+NVL(RV.FEES,0)+NVL(RV.DISB,0)+NVL(RV.SUND,0)+NVL(RV.ANTD,0)+NVL(RV.UPCRED,0)+NVL(RV.TAX,0))*-1 as AMOUNT, ''Credit Note for BILL '' || NMEMO.REFNO');
      //SQL.Add('SELECT DISPATCHED AS CREATED, REFNO, BILL_TO, '' '', REFNO, (FEES+FEESTAX+DISB+DISBTAX+SUND+SUNDTAX+ANTD+ANTDTAX)*-1 as AMOUNT, ''Client Bill '' || REFNO');
      //rb
      if chkGst.Checked then
      begin
         SQL.ADD(',CASE WHEN (RV.total > 0) THEN RV.total END AS debit,');
         SQL.ADD('CASE WHEN (RV.total < 0) THEN RV.total * -1 END AS credit ');
//         SQL.ADD(',NVL(DECODE(SUBSTR((((NVL(DISCOUNT,0)+(NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0))*-1 ),0,1),''0'',to_number(NULL),''-'',ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0)) ),to_number(NULL)),0) DEBIT ');
//         SQL.ADD(',NVL(DECODE(SUBSTR((((NVL(DISCOUNT,0)+NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0))*-1 ),0,1),''-'',to_number(NULL),ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)+NVL(TAX,0)) )),0) CREDIT ');
      end
      else
      begin
         SQL.ADD(',CASE WHEN (RV.total > 0) THEN (RV.total - NVL(RV.tax,0)) END AS debit,');
         SQL.ADD('CASE WHEN (RV.total < 0) THEN (RV.total - NVL(RV.tax,0)) * -1 END AS credit ');
//         SQL.ADD(',NVL(DECODE(SUBSTR((((NVL(DISCOUNT,0)+NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0))*-1 ),0,1),''0'',to_number(NULL),''-'',ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)) ),to_number(NULL)),0) DEBIT ');
//         SQL.ADD(',NVL(DECODE(SUBSTR((((NVL(DISCOUNT,0)+NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0))*-1 ),0,1),''-'',to_number(NULL),ABS((NVL(FEES,0)+NVL(DISB,0)+NVL(SUND,0)+NVL(ANTD,0)+NVL(UPCRED,0)) )),0) CREDIT ');
      end;
      SQL.Add('FROM NMEMO, NMEMO RV');
      SQL.Add('WHERE RV.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND RV.DISPATCHED IS NOT NULL ');
      SQL.Add('AND RV.RV_TYPE = ''X'' ');
      SQL.Add('AND RV.RV_NMEMO = NMEMO.NMEMO ');
      if chkFrom.Checked then
         SQL.Add('AND RV.DISPATCHED >= :P_DateFrom ');
      if chkTo.Checked then
         SQL.Add('AND RV.DISPATCHED < :P_DateTo ');

      if rgSeq.ItemIndex = 0 then

//      SQL.Add('ORDER BY NMEMO_GEN,report_order, CREATED')
         SQL.Add('ORDER BY 4 /*CREATED*/, 3 /*NMEMO*/, 2 /*NMEMO_GEN*/, 1 /*report_order*/')
      else
         SQL.Add('ORDER BY CREATED');
      if dmAxiom.runningide then
         qryTmpLedger.SQL.SaveToFile('c:\tmp\rptLedgerDebt.sql');
      Prepare;
      Open;
   end;

//   qrDebtorLedger.PreviewModal;
   ppReport1.Print;

   Self.Close;
end;


procedure TfrmRptLedgerDebt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qryTmpLedger.Close;

  Self.Release;
end;


procedure TfrmRptLedgerDebt.btnMatterClick(Sender: TObject);
begin
   if sTable = 'MATTER M, PHONEBOOK P' then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOK then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
{
  if sTable = 'ARCHIVE' then
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
    if frmArchiveSearch.ShowModal = mrOK then
      DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString); }
end;

procedure TfrmRptLedgerDebt.qryTmpLedgerCalcFields(DataSet: TDataSet);
begin
  if qryTmpLedger.FieldByName('AMOUNT').AsCurrency < 0.0 then
    qryTmpLedger.FieldByName('DEBIT').AsCurrency := 0 - qryTmpLedger.FieldByName('AMOUNT').AsCurrency
  else
    qryTmpLedger.FieldByName('CREDIT').AsCurrency := qryTmpLedger.FieldByName('AMOUNT').AsCurrency;
end;

procedure TfrmRptLedgerDebt.FormCreate(Sender: TObject);
begin
  sTable := 'MATTER M, PHONEBOOK P';

//  Height := 167;
//  Width := 524;
end;

procedure TfrmRptLedgerDebt.QRLabel53Print(sender: TObject;
  var Value: String);
begin
if not chkGst.Checked then
    Value := Value + ' (ex tax)';
end;

procedure TfrmRptLedgerDebt.QRDBText51Print(sender: TObject;
  var Value: String);
begin
   if ((Value = '30/12/1899') or (Value = '30 12 1899') or
       (Value = '30 12 99')) then
      Value := '';
end;

procedure TfrmRptLedgerDebt.pplblPeriodGetText(Sender: TObject;
  var Text: String);
begin
   if chkFrom.Checked and chkTo.Checked then
      Text := 'for the period ' + FormatDateTime('ddddd', dtpFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpTo.Date)
   else if chkFrom.Checked then
      Text := 'from ' + FormatDateTime('ddddd', dtpFrom.Date)
   else if chkTo.Checked then
      Text := 'to ' + FormatDateTime('ddddd', dtpTo.Date)
   else
      Text := 'for all transactions';
end;

end.

