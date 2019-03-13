unit RptLedgerCreditors;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, DB, OracleUniProvider, Uni, DBAccess,
  ppCtrls, ppVar, ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  cxControls, cxContainer, cxEdit, cxCheckBox, Buttons, StdCtrls,
  DateChangeButton, ComCtrls, ppViewr, ppStrtch, ppRegion, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, ppMemo, ppParameter, ppDesignLayer,
  myChkBox, MemDS;

type
  TfrmRptLedgerCreditors = class(TForm)
    lblFrom: TLabel;
    lblTo: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    DateChangeButton1: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    btnPreview: TBitBtn;
    chkUnbilled: TcxCheckBox;
    lblClient: TLabel;
    lblFile: TLabel;
    lblDesc: TLabel;
    Label1: TLabel;
    ppCreditor: TppDBPipeline;
    rbRptCreditor: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel34: TppLabel;
    ppMatter: TppLabel;
    ppCredMatter: TppLabel;
    ppCredClient: TppLabel;
    ppClient: TppLabel;
    ppDescription: TppLabel;
    ppCredDescription: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppCredlblDate: TppLabel;
    ppCredRef: TppLabel;
    ppCredCreditor: TppLabel;
    ppCredDescr: TppLabel;
    ppCredInv: TppLabel;
    ppCredTax: TppLabel;
    ppCredAmt: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLine11: TppLine;
    ppCredTotalAmt: TppLabel;
    ppCredTotalTax: TppLabel;
    ppCredTotal: TppLabel;
    ppCredTotalCalc: TppVariable;
    ppCredSumAmt: TppDBCalc;
    ppCredSumTax: TppDBCalc;
    dsCreditorRpt: TUniDataSource;
    qryCreditorRpt: TUniQuery;
    qryMatter: TUniQuery;
    ppsTotalUnbilledExGST: TppLabel;
    ppTotalUnbilledGST: TppLabel;
    ppTotalUnbilled: TppLabel;
    ppUnbill: TppVariable;
    ppUnbillGST: TppVariable;
    ppUnbillTotal: TppVariable;
    qryGSTBillTotal: TUniQuery;
    chkUnpaid: TcxCheckBox;
    ppLabel1: TppLabel;
    ppRegion1: TppRegion;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    ppDBMemo3: TppDBMemo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    procedure btnPreviewClick(Sender: TObject);
    procedure GetMatter(sFile : string);
    procedure DisplayMatter(sFile : string);
    procedure FormCreate(Sender: TObject);
    procedure rbRptCreditorBeforePrint(Sender: TObject);
    procedure ppCredTotalCalcCalc(Sender: TObject; var Value: Variant);
    procedure ppUnbillCalc(Sender: TObject; var Value: Variant);
    procedure ppUnbillGSTCalc(Sender: TObject; var Value: Variant);
    procedure ppUnbillTotalCalc(Sender: TObject; var Value: Variant);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRptLedgerCreditors: TfrmRptLedgerCreditors;
  sFile, matterID, sTable, credSQL : String;
  billTaxTotal : Boolean;

implementation

{$R *.dfm}

uses
  axiomdata;

procedure TfrmRptLedgerCreditors.btnPreviewClick(Sender: TObject);
var
  firstFilter : Boolean;
begin
  // Reinitialise SQL
  qryCreditorRpt.SQL.Clear;
  qryCreditorRpt.SQL.Text := credSQL;
  firstFilter := True;

  // Check if dates checkboxes have been checked
  if chkFrom.Checked then
  begin
    qryCreditorRpt.SQL.Add(' AND invoice_date >= :DATEFROM');
    qryCreditorRpt.ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
    // ppFilterDate.SetText('Date From ' + QuotedStr(DateToStr(dtpFrom.Date)));
    firstFilter := False;
  end;

  if chkTo.Checked then
  begin
    qryCreditorRpt.SQL.Add(' AND invoice_date < :DATETO');
    qryCreditorRpt.ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;
    // if not firstFilter then ppFilterDate.SetText(ppFilterDate.Text + ', ');
    // ppFilterDate.SetText(ppFilterDate.Text + 'Date To ' + QuotedStr(DateToStr(dtpTo.Date)));
  end;

  if chkUnbilled.Checked = True then
  begin
    qryCreditorRpt.SQL.Add(' AND a.billed = ''N''');

    // Tony: TODO - Disable
    {
    ppsTotalUnbilledExGST.Visible := True;
    ppTotalUnbilledGST.Visible := True;
    ppTotalUnbilled.Visible := True;

    ppUnbill.Visible := True;
    ppUnbillGST.Visible := True;
    ppUnbillTotal.Visible := True;
    }
  end
  else
  begin
    ppsTotalUnbilledExGST.Visible := False;
    ppTotalUnbilledGST.Visible := False;
    ppTotalUnbilled.Visible := False;

    ppUnbill.Visible := False;
    ppUnbillGST.Visible := False;
    ppUnbillTotal.Visible := False;
  end;

  if chkUnpaid.Checked then
  begin
//    qryCreditorRpt.SQL.Add(' AND c.ncheque is null ');
    qryCreditorRpt.SQL.Add('AND c.owing <> 0  ');
{    qryCreditorRpt.SQL.Add('union  ');
    qryCreditorRpt.SQL.Add('SELECT m.fileid, c.refno as InvRef, c.creditor, a.descr, a.nmemo, invoice_date,  ');
    qryCreditorRpt.SQL.Add('(a.amount * -1) as Amt, (a.tax * -1) as Tax, ((a.amount * -1) + (a.tax * -1)) as AmtIncTax, ');
    qryCreditorRpt.SQL.Add('(select refno from nmemo n where a.billed = ''Y'' and n.nmemo = a.nmemo) as MemoRef,');
    qryCreditorRpt.SQL.Add(' c.last_payment, a.nalloc, decode(nvl(a.trust,''G''),''T'', ''Yes'', ''No'') from_trust ');
    qryCreditorRpt.SQL.Add('FROM matter m, alloc a, invoice c ');
    qryCreditorRpt.SQL.Add('WHERE m.nmatter = :p_nmatter ');
    qryCreditorRpt.SQL.Add('AND   m.nmatter = a.nmatter  ');
    qryCreditorRpt.SQL.Add('AND   a.ninvoice = c.ninvoice(+) ');
    qryCreditorRpt.SQL.Add('AND   a.ninvoice is not null ');
    qryCreditorRpt.SQL.Add('AND   a.billed = ''N''  ');
    qryCreditorRpt.SQL.Add('AND c.owing <> 0  '); }
  end;
  qryCreditorRpt.SQL.Add(' ORDER BY a.created');     // 27/03/2018 AES changed from invoice_date to alloc.created

  with qryCreditorRpt do
   begin
      Close;
      ParamByName('P_NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      Open;
      ppCredMatter.SetText(qryMatter.FieldByName('FILEID').AsString);
      ppCredClient.SetText(qryMatter.FieldByName('SEARCH').AsString);
      ppCredDescription.SetText(qryMatter.FieldByName('LONGDESCR').AsString);
      try
         rbRptCreditor.Print;
      except
         //
      end;
   end;
  Self.Close;
end;

procedure TfrmRptLedgerCreditors.GetMatter(sFile : string);
begin
  with qryMatter do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OPENED, FILEID, P.SEARCH, LONGDESCR, SHORTDESCR, NMATTER');
    SQL.Add('FROM matter M, PHONEBOOK P');
    SQL.Add('WHERE FILEID = ' + QuotedStr(sFile));
    SQL.Add('AND m.NCLIENT = P.NCLIENT');
    Open;

    if not IsEmpty then
    begin
      lblFile.Caption := FieldByName('FILEID').AsString;
      lblClient.Caption := FieldByName('SEARCH').AsString;
      lblDesc.Caption := FieldByName('SHORTDESCR').AsString;
      dtpFrom.Date := FieldByName('OPENED').AsDateTime;
      chkFrom.Checked := False;
      ppCredMatter.SetText(FieldByName('FILEID').AsString);
      ppCredClient.SetText(FieldByName('SEARCH').AsString);
      ppCredDescription.SetText(FieldByName('LONGDESCR').AsString);
    end
    else
    begin
      lblFile.Caption := '';
      lblClient.Caption := '';
      lblDesc.Caption := '';
      ppMatter.SetText('');
      ppClient.SetText('');
      ppDescription.SetText('');
    end;
  end;
end;

procedure TfrmRptLedgerCreditors.DisplayMatter(sFile : string);
begin
  sTable := 'MATTER';
  matterID := sFile;
  GetMatter(sFile);

  qryGSTBillTotal.Open;
  if qryGstBillTotal.FieldByName('GST_Bill_Total').AsString = 'Y' then
    billTaxTotal := True
  else
    billTaxTotal := False;

  if not Self.Visible then
    Self.ShowModal;
end;

procedure TfrmRptLedgerCreditors.FormCreate(Sender: TObject);
begin
  credSQL := qryCreditorRpt.SQL.Text;
end;

procedure TfrmRptLedgerCreditors.rbRptCreditorBeforePrint(Sender: TObject);
begin
  rbRptCreditor.PreviewForm.WindowState := wsMaximized;
//  TppViewer(rbRptCreditor.PreviewForm.Viewer).ZoomSetting := zs100percent;
end;

procedure TfrmRptLedgerCreditors.ppCredTotalCalcCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := ppCredSumAmt.Value + ppCredSumTax.Value;
end;

procedure TfrmRptLedgerCreditors.ppUnbillCalc(Sender: TObject;
  var Value: Variant);
begin
  if chkUnbilled.Checked = True then
  begin
    Value := ppCredTotalCalc.Value;
  end;
end;

procedure TfrmRptLedgerCreditors.ppUnbillGSTCalc(Sender: TObject;
  var Value: Variant);
begin
  if chkUnbilled.Checked = True then
  begin
    if billTaxTotal = True then
      Value := ppCredSumTax.Value * 0.1 / 100
    else
      Value := ppCredSumTax.Value;
  end;
end;

procedure TfrmRptLedgerCreditors.ppUnbillTotalCalc(Sender: TObject;
  var Value: Variant);
begin
  if chkUnbilled.Checked = True then
  begin
    Value := ppUnbill.Value + ppUnbillGST.Value;
  end;
end;

procedure TfrmRptLedgerCreditors.FormShow(Sender: TObject);
begin
   DateChangeButton1.Click;
   chkFrom.Checked := False;
   chkTo.Checked := False;
end;

end.

