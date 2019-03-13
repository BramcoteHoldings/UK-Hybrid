unit RptLedgerCheqReq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ComCtrls, Buttons, StdCtrls,
  DateChangeButton, NumberEdit, OracleUniProvider, Uni, MemDS, DBAccess, NumberLabel, ppDB,
  ppCtrls, ppPrnabl, ppClass, ppVar, ppBands, ppCache, ppDesignLayer,
  ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo, ppModule, raCodMod;

type
  TfrmRptLedgerCheqReq = class(TForm)
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
    qryCheqReqLedger: TUniQuery;
    btnMatter: TBitBtn;
    lblAuthor: TLabel;
    lblAuthorName: TLabel;
    cbAuthor: TComboBox;
    chkBilled: TCheckBox;
    chkRev: TCheckBox;
    NumberLabel1: TNumberLabel;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    dsCheqReqLedger: TUniDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    dsMatter: TUniDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
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
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine1: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDetailBand1: TppDetailBand;
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
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppVariable1: TppVariable;
    ppLine2: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMatterClick(Sender: TObject);
    procedure cbAuthorChange(Sender: TObject);
    procedure DateChangeButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryCheqReqLedgerCalcFields(DataSet: TDataSet);
{    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);  }
  private
    { Private declarations }
    procedure GetMatter(sFile : string);
  public
    { Public declarations }
    procedure DisplayMatter(sFile : string);
    procedure DisplayArchive(sFile : string);
  end;

var
  frmRptLedgerCheqReq: TfrmRptLedgerCheqReq;

implementation

uses
  MiscFunc, AxiomData, MSearch, citfunc;

{$R *.DFM}

var
  sTable : string;

procedure TfrmRptLedgerCheqReq.DisplayMatter(sFile : string);
begin
  sTable := 'MATTER M, PHONEBOOK P';
  GetMatter(sFile);
  if not Self.Visible then
    Self.ShowModal;
end;


procedure TfrmRptLedgerCheqReq.DisplayArchive(sFile : string);
begin
  sTable := 'ARCHIVE';
  GetMatter(sFile);
  if not Self.Visible then
    Self.ShowModal;
end;


procedure TfrmRptLedgerCheqReq.GetMatter(sFile : string);
begin
  with qryMatter do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OPENED, FILEID, P.SEARCH, LONGDESCR, SHORTDESCR, NMATTER');
    SQL.Add('FROM ' + sTable);
    SQL.Add('WHERE FILEID = ' + QuotedStr(sFile));
    SQL.Add('AND M.NCLIENT = P.NCLIENT');
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


procedure TfrmRptLedgerCheqReq.FormShow(Sender: TObject);
begin
  dcThisMonth.Click;
  if not qryMatter.Active then
    DisplayMatter(ReopenListLast('MATTER'));
  if qryMatter.Active then
    dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;

  chkFrom.Checked := False;
  chkTo.Checked := False;
end;


procedure TfrmRptLedgerCheqReq.btnPrintClick(Sender: TObject);
begin
  with qryCheqReqLedger do
  begin
    Close;
    SQL.Clear;
    //add the cheque reqs
    SQL.Add('SELECT CHEQREQ.REQDATE, CHEQREQ.BANK, CHEQREQ.PAYEE, CHEQREQ.DESCR, CHEQREQ.AMOUNT');
    SQL.Add(', CHEQREQ.INVOICEDATE, CHEQREQ.BILLED, CHEQREQ.AUTHOR, CHEQREQ.HELD, CHEQREQ.CONVERTED, CHEQREQ.NOTE');
    SQL.Add(', CHEQREQ.TAX, NMEMO.REFNO AS BILLNO,(nvl(PAYABLE.AMT,0) - nvl(PAID.AMT,0)) as PAYABLE,(nvl(CHEQREQ.AMOUNT,0) + nvl(CHEQREQ.TAX,0))-nvl(PAID.AMT,0) as OWING,nvl(PAID.AMT,0) as PAID');
    //rb
    SQL.Add(', DECODE(CHEQREQ.HELD,''Y'',''Held'',''W'',''Waiting'',NULL) STATUS, CHEQREQ.TAXCODE ');
    SQL.Add('FROM CHEQREQ, NMEMO');
    SQL.Add(',(SELECT SUM(AMOUNT) as AMT,NCHEQREQ FROM CHEQREQ_TRANS GROUP BY NCHEQREQ)  PAYABLE');
    SQL.Add(',(SELECT (SUM(AMOUNT) + SUM(TAX)) *-1 as amt,ncheqreq from alloc where ncheqreq is not null group by ncheqreq)  paid');
    SQL.Add('WHERE CHEQREQ.FILEID = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString));
    SQL.Add('  AND CHEQREQ.TRUST = ''G''');
    SQL.Add('  AND CHEQREQ.ANTICIPATED = ''Y''');
    SQL.Add('  AND CHEQREQ.NCHEQREQ = PAYABLE.NCHEQREQ (+) ');
    SQL.Add('  AND CHEQREQ.NCHEQREQ = PAID.NCHEQREQ (+) ');
    SQL.Add('  AND CHEQREQ.NMEMO = NMEMO.NMEMO(+)');
    if chkFrom.Checked then
      SQL.Add('  AND CHEQREQ.REQDATE >= :DATEFROM');
    if chkTo.Checked then
      SQL.Add('  AND CHEQREQ.REQDATE < :DATETO');
    if cbAuthor.Text <> '' then
      SQL.Add('  AND CHEQREQ.AUTHOR = ' + QuotedStr(cbAuthor.Text));
    if not chkBilled.Checked then
      SQL.Add('  AND CHEQREQ.BILLED = ''N'' ');
    if not chkRev.Checked then
      SQL.Add('  AND REV_NCHEQREQ IS NULL ');
    {
    SQL.Add('UNION');
    SQL.Add('SELECT CREATED, Null, PAYER, REFNO, AMOUNT');
    SQL.Add(', CREATED, Null, Null, Null, Null, Null');
    SQL.Add(', 0-TAX, REFNO');
    SQL.Add(',to_number(NULL),to_number(NULL),to_number(NULL), NULL STATUS, Alloc.TAXCODE ');
    SQL.Add('FROM ALLOC');
    SQL.Add('WHERE FILEID = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString));
    SQL.Add('AND NINVOICE IS NOT NULL');
    }

{
    //add the nmemos for the cheque reqs
    SQL.Add('UNION ALL');
    SQL.Add('SELECT DISPATCHED, Null, BILL_TO, ''Client Bill '' || REFNO, 0-ANTD');
    SQL.Add(', DISPATCHED, Null, Null, Null, Null, Null');
    SQL.Add(', 0-ANTDTAX, REFNO');
    SQL.Add(', NULL STATUS ');
    SQL.Add('FROM NMEMO');
    SQL.Add('WHERE FILEID = ' + QuotedStr(qryMatter.FieldByName('FILEID').AsString));
    SQL.Add('  AND DISPATCHED IS NOT NULL AND ANTD <> 0 AND RV_TYPE <> ''X''');
    if dtpFrom.Checked then
      SQL.Add('  AND DISPATCHED >= :DATEFROM');
    if dtpTo.Checked then
      SQL.Add('  AND DISPATCHED < :DATETO');
}

    //SQL.Add('SELECT CHEQREQ.REQDATE, CHEQREQ.BANK, CHEQREQ.PAYEE, CHEQREQ.DESCR, CHEQREQ.AMOUNT');


    if chkFrom.Checked then
      ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
    if chkTo.Checked then
      ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;

    SQL.Add('ORDER BY 1');
    Open;
  end;
//  qrCheqReqLedger.PreviewModal;
  ppReport1.Print;
  Self.Close;
end;

procedure TfrmRptLedgerCheqReq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qryCheqReqLedger.Close;

  Self.Release;
end;


procedure TfrmRptLedgerCheqReq.btnMatterClick(Sender: TObject);
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
      DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString);  }
end;


procedure TfrmRptLedgerCheqReq.cbAuthorChange(Sender: TObject);
var
  sTmp : string;
begin
  sTmp := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'NAME');
  if sTmp <> '' then
    lblAuthorName.Caption := sTmp
  else
    lblAuthorName.Caption := '(All)'
end;

procedure TfrmRptLedgerCheqReq.DateChangeButton1Click(Sender: TObject);
begin
  chkFrom.Checked := True;
  chkTo.Checked := True;
end;

procedure TfrmRptLedgerCheqReq.FormCreate(Sender: TObject);
begin
  sTable := 'MATTER M, PHONEBOOK P';
end;

procedure TfrmRptLedgerCheqReq.qryCheqReqLedgerCalcFields(
  DataSet: TDataSet);
begin
  if qryCheqReqLedger.FieldByName('HELD').AsString = 'Y' then
    qryCheqReqLedger.FieldByName('Status').AsString := 'Held'
  else if qryCheqReqLedger.FieldByName('HELD').AsString = 'W' then
    qryCheqReqLedger.FieldByName('Status').AsString := 'Waiting'
  else
    qryCheqReqLedger.FieldByName('Status').AsString := '';
end;

{
procedure TfrmRptLedgerCheqReq.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if qryCheqReqLedger.Active then
    if (qryCheqReqLedger.FieldbyName('INVOICEDATE').IsNull) then
      qrlblInvoiceDate.Font.Color := clWhite
    else
      qrlblInvoiceDate.Font.Color := clBlack;
end;

procedure TfrmRptLedgerCheqReq.QRDBText6Print(sender: TObject;
  var Value: String);
begin
   if ((Value = '30/12/1899') or (Value = '30 12 1899') or
       (Value = '30 12 99')) then
      Value := '';
end;  }

end.

