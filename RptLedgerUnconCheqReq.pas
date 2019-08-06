unit RptLedgerUnconCheqReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DateChangeButton, StdCtrls, Buttons, DB, MemDS,
  DBAccess, OracleUniProvider, Uni, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppBands, ppCache, ppPrnabl, ppCtrls, ppTypes, ppVar,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ppViewr, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, ppParameter, ppDesignLayer;

type
  TfrmRptLedgerUnconCheqReq = class(TForm)
    Label1: TLabel;
    lblFrom: TLabel;
    lblTo: TLabel;
    lblRequestedBy: TLabel;
    btnMatter: TBitBtn;
    chkBilled: TCheckBox;
    chkRev: TCheckBox;
    dtpTo: TDateTimePicker;
    qryMatter: TUniQuery;
    btnPreview: TBitBtn;
    lblFile: TLabel;
    lblDesc: TLabel;
    lblClient: TLabel;
    rbRptUnconCheqReq: TppReport;
    qryUnconCheqReq: TUniQuery;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pplblFor: TppLabel;
    pplblBank: TppLabel;
    pplblPayeeDesc: TppLabel;
    pplblReqBy: TppLabel;
    pplblBill: TppLabel;
    pplblStatus: TppLabel;
    pplblAmount: TppLabel;
    ppLabel8: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppBank: TppDBText;
    ppDesc: TppDBText;
    ppAuthor: TppDBText;
    ppBillNo: TppDBText;
    ppAmount: TppDBText;
    ppReqDate: TppDBText;
    pplblMatter: TppLabel;
    pplblDescription: TppLabel;
    ppMatter: TppLabel;
    ppDescription: TppLabel;
    pplblClient: TppLabel;
    ppClient: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    pplblBilled: TppLabel;
    pplblOwing: TppLabel;
    pplblPayable: TppLabel;
    pplblTax: TppLabel;
    pplblPaid: TppLabel;
    ppTax: TppDBText;
    ppPaid: TppDBText;
    ppStatus: TppDBText;
    ppInvoiceDate: TppDBText;
    qryUnconCheqReqREQDATE: TDateTimeField;
    qryUnconCheqReqBANK: TStringField;
    qryUnconCheqReqPAYEE: TStringField;
    qryUnconCheqReqDESCR: TStringField;
    qryUnconCheqReqINVOICEDATE: TDateTimeField;
    qryUnconCheqReqBILLED: TStringField;
    qryUnconCheqReqAUTHOR: TStringField;
    qryUnconCheqReqHELD: TStringField;
    qryUnconCheqReqCONVERTED: TStringField;
    qryUnconCheqReqNOTE: TStringField;
    qryUnconCheqReqAMOUNT: TFloatField;
    qryUnconCheqReqTAX: TFloatField;
    qryUnconCheqReqBILLNO: TStringField;
    qryUnconCheqReqSTATUS: TStringField;
    qryUnconCheqReqPAID: TFloatField;
    qryUnconCheqReqPAYABLE: TFloatField;
    dsUnconCheqReq: TDataSource;
    ppUnconCheqReq: TppDBPipeline;
    ppTotalAmount: TppDBCalc;
    ppTotalTax: TppDBCalc;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppTotal: TppVariable;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    cmbAuthor: TcxLookupComboBox;
    qryAuthor: TUniQuery;
    dsAuthor: TDataSource;
    ppOwing: TppVariable;
    ppPayable: TppVariable;
    ppDBPayable: TppDBText;
    dtpFrom: TDateTimePicker;
    DateChangeButton1: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    chkAntd: TCheckBox;
    ppFor: TppLabel;
    ppFilterDate: TppLabel;
    ppFilter: TppLabel;
    qryUnconCheqReqTAXCODE: TStringField;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLine5: TppLine;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMatterClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure ppTotalCalc(Sender: TObject; var Value: Variant);
    procedure ppOwingCalc(Sender: TObject; var Value: Variant);
    procedure ppPayableCalc(Sender: TObject; var Value: Variant);
    procedure rbRptUnconCheqReqBeforePrint(Sender: TObject);
  private
    { Private declarations }
    procedure GetMatter(sFile : string);
    procedure GetAuthor();
  public
    { Public declarations }
    procedure DisplayMatter(sFile : string);
    procedure DisplayArchive(sFile : string);
  end;

var
  frmRptLedgerUnconCheqReq: TfrmRptLedgerUnconCheqReq;
  matterID : String;
  unconSQL : String;

implementation

uses
  MiscFunc, AxiomData, MSearch, citfunc;

{$R *.dfm}

var
  sTable: String;

procedure TfrmRptLedgerUnconCheqReq.FormCreate(Sender: TObject);
begin
  sTable := 'MATTER';
  unconSQL := qryUnconCheqReq.SQL.Text;
end;

procedure TfrmRptLedgerUnconCheqReq.FormShow(Sender: TObject);
begin
  // dcThisMonth.Click;
  if not qryMatter.Active then
    DisplayMatter(ReopenListLast('MATTER'));

  if qryMatter.Active then
  begin
    dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
    chkFrom.Checked := False;
  end;
end;

procedure TfrmRptLedgerUnconCheqReq.DisplayMatter(sFile : string);
begin
  sTable := 'MATTER';
  matterID := sFile;
  GetMatter(sFile);

  if not qryAuthor.Active then
    GetAuthor();

  if not Self.Visible then
    Self.ShowModal;
end;

procedure TfrmRptLedgerUnconCheqReq.GetMatter(sFile : string);
begin
  with qryMatter do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OPENED, FILEID, TITLE, LONGDESCR, SHORTDESCR, NMATTER, SEARCH');
    SQL.Add('FROM ' + sTable + ', CLIENT');
    SQL.Add('WHERE FILEID = ' + QuotedStr(sFile));
    SQL.Add('AND ' + sTable + '.CLIENTID = CLIENT.CODE');
    Open;

    if not IsEmpty then
    begin
      lblFile.Caption := FieldByName('FILEID').AsString;
      lblClient.Caption := FieldByName('TITLE').AsString;
      lblDesc.Caption := FieldByName('SHORTDESCR').AsString;
      dtpFrom.Date := FieldByName('OPENED').AsDateTime;
      chkFrom.Checked := False;
      ppMatter.SetText(FieldByName('FILEID').AsString);
      ppClient.SetText(FieldByName('SEARCH').AsString);
      ppDescription.SetText(FieldByName('LONGDESCR').AsString);
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

procedure TfrmRptLedgerUnconCheqReq.GetAuthor();
begin
  qryAuthor.Open;
end;

procedure TfrmRptLedgerUnconCheqReq.btnMatterClick(Sender: TObject);
begin
   if sTable = 'MATTER' then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOK then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
      {  if sTable = 'ARCHIVE' then
  begin
    if not FormExists(frmArchiveSearch) or (frmArchiveSearch = nil) then
      Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
    if frmArchiveSearch.ShowModal = mrOK then
      DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString);
  end;  }
end;

procedure TfrmRptLedgerUnconCheqReq.DisplayArchive(sFile : string);
begin
  sTable := 'ARCHIVE';
  GetMatter(sFile);
  if not Self.Visible then
    Self.ShowModal;
end;

procedure TfrmRptLedgerUnconCheqReq.btnPreviewClick(Sender: TObject);
var
  firstFilter : Boolean;
begin
  // Reinitialise the query
  qryUnconCheqReq.SQL.Clear;
  qryUnconCheqReq.SQL.Text := unconSQL;

  ppFilter.SetText('');
  ppFilterDate.SetText('');
  firstFilter := True;

  // Check if dates checkboxes have been checked
  if chkFrom.Checked then
  begin
    qryUnconCheqReq.SQL.Add('  AND c.REQDATE >= :DATEFROM');
    qryUnconCheqReq.ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
    ppFilterDate.SetText('Date From ' + QuotedStr(DateToStr(dtpFrom.Date)));
    firstFilter := False;
  end;

  if chkTo.Checked then
  begin
    qryUnconCheqReq.SQL.Add('  AND c.REQDATE < :DATETO');
    qryUnconCheqReq.ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;
    if not firstFilter then ppFilterDate.SetText(ppFilterDate.Text + ', ');
    ppFilterDate.SetText(ppFilterDate.Text + 'Date To ' + QuotedStr(DateToStr(dtpTo.Date)));
  end;

  // Reset for other fields (non date fields)
  firstFilter := True;

  // Check if author is selected
  if not VarIsNull(cmbAuthor.EditValue) then
  begin
    qryUnconCheqReq.SQL.Add('  AND c.AUTHOR = ' + QuotedStr(cmbAuthor.EditValue));
    if not firstFilter then ppFilter.SetText(ppFilter.Text + ', ');
    ppFilter.SetText(ppFilter.Text + 'Author ' + QuotedStr(cmbAuthor.Text));
    firstFilter := False;
  end;

  if not chkBilled.Checked OR not chkAntd.Checked then
  begin
    // Add billed query if not checked
    if chkBilled.Checked then
    begin
      qryUnconCheqReq.SQL.Add('  AND c.BILLED = ''Y'' ');
      if not firstFilter then ppFilter.SetText(ppFilter.Text + ', ');
      ppFilter.SetText(ppFilter.Text + 'Show Billed Items');
      firstFilter := False;
    end
    else
      qryUnconCheqReq.SQL.Add('  AND c.BILLED = ''N'' ');

    // Add anticipated query if not checked
    if chkAntd.Checked then
    begin
      qryUnconCheqReq.SQL.Add('  AND c.ANTICIPATED = ''Y'' ');
      if not firstFilter then ppFilter.SetText(ppFilter.Text + ', ');
      ppFilter.SetText(ppFilter.Text + 'Show Anticipated Disbursement');
      firstFilter := False;
    end
    else
      qryUnconCheqReq.SQL.Add('  AND c.ANTICIPATED = ''N'' ');
  end
  else
  begin
    if not firstFilter then ppFilter.SetText(ppFilter.Text + ', ');
    ppFilter.SetText(ppFilter.Text + 'Show Billed Items, Show Anticipated Disbursement');
    firstFilter := False;
  end;

  // Add Reverse if not checked
  if not chkRev.Checked then
    qryUnconCheqReq.SQL.Add('  AND c.REV_NCHEQREQ IS NULL ')
  else
  begin
    if not firstFilter then ppFilter.SetText(ppFilter.Text + ', ');
    ppFilter.SetText(ppFilter.Text + 'Show Reverse Items');
  end;

  // Add group by clause
  qryUnconCheqReq.SQL.Add(' GROUP BY c.REQDATE, c.BANK, c.PAYEE, c.DESCR,');
  qryUnconCheqReq.SQL.Add('         c.INVOICEDATE, c.BILLED, c.AUTHOR, c.HELD, c.CONVERTED, c.NOTE,');
  qryUnconCheqReq.SQL.Add('         c.TAXCODE, n.REFNO, c.HELD, c.AMOUNT, c.TAX');
  // Pass matterId argument
  qryUnconCheqReq.ParamByName('FileId').AsString := matterID;
  qryUnconCheqReq.Open;

  // Print to screen (dtScreen is part of ppTypes)
  rbRptUnconCheqReq.DeviceType := dtScreen;
  rbRptUnconCheqReq.Print;
end;

// Report: calculation of total
procedure TfrmRptLedgerUnconCheqReq.ppTotalCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := ppTotalAmount.Value + ppTotalTax.Value;
end;

// Report: calculation of owing for each row
procedure TfrmRptLedgerUnconCheqReq.ppOwingCalc(Sender: TObject;
  var Value: Variant);
begin
   if not (VarIsNull(ppAmount.FieldValue) or VarIsNull(ppTax.FieldValue) or
          VarIsNull(ppPaid.FieldValue)) then
      Value := ppAmount.FieldValue + ppTax.FieldValue - ppPaid.FieldValue
   else
      Value := 0;
end;

// Report: calculation of payable for each row
procedure TfrmRptLedgerUnconCheqReq.ppPayableCalc(Sender: TObject;
  var Value: Variant);
begin
   if not (VarIsNull(ppDBPayable.FieldValue) or VarIsNull(ppPaid.FieldValue)) then
      Value := ppDBPayable.FieldValue - ppPaid.FieldValue
   else
      Value := 0;
end;

// Maximise report window
procedure TfrmRptLedgerUnconCheqReq.rbRptUnconCheqReqBeforePrint(
  Sender: TObject);
begin
  rbRptUnconCheqReq.PreviewForm.WindowState := wsMaximized;
  TppViewer(rbRptUnconCheqReq.PreviewForm.Viewer).ZoomSetting := zs100percent;
end;

end.
