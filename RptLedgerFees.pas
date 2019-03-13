unit RptLedgerFees;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ComCtrls, Buttons, StdCtrls,
  DateChangeButton, NumberEdit, MemDS, OracleUniProvider, Uni, DBAccess,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppStrtch, ppRegion, ppCtrls, ppPrnabl, ppVar, ppBands, ppCache, ppModule,
  raCodMod, ppSubRpt, ppParameter, ppFileUtils, ppIniStorage, ppDesignLayer,
  ppMemo, ppRichTx;

type
  TfrmRptLedgerFees = class(TForm)
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
    qryFeesLedger: TUniQuery;
    btnMatter: TBitBtn;
    lblAuthor: TLabel;
    lblAuthorName: TLabel;
    cbAuthor: TComboBox;
    lblPartner: TLabel;
    lblPartnerName: TLabel;
    cbPartner: TComboBox;
    Label5: TLabel;
    lblFeeTypeDescr: TLabel;
    cbFeeType: TComboBox;
    qryFeeByAuthor: TUniQuery;
    tmrSuicide: TTimer;
    rgBilled: TRadioGroup;
    rgValue: TRadioGroup;
    chkShowPartner: TCheckBox;
    chkGST: TCheckBox;
    chkSummary: TCheckBox;
    Label6: TLabel;
    edBillNum: TEdit;
    rgBillable: TRadioGroup;
    qryFeeByAuthorNonBillable: TUniQuery;
    ppReport1: TppReport;
    plMatter: TppDBPipeline;
    plFeesLedger: TppDBPipeline;
    plFeesByAuthor: TppDBPipeline;
    plFeeByAuthorNonBillable: TppDBPipeline;
    dsMatter: TUniDataSource;
    dsFeesLedger: TUniDataSource;
    dsFeesByAuthor: TUniDataSource;
    dsFeeByAuthorNonBillable: TUniDataSource;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    ppParameterList1: TppParameterList;
    ppTitleBand4: TppTitleBand;
    ppShape1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText16: TppDBText;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    srFeessLedger: TppSubReport;
    ppChildReport1: TppChildReport;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine7: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel41: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppRegion2: TppRegion;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppRegion3: TppRegion;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText8: TppDBText;
    ppRegion1: TppRegion;
    ppFooterBand1: TppFooterBand;
    ppLine8: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc12: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine3: TppLine;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine1: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLine6: TppLine;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBRichText1: TppDBRichText;
    ppReport2: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape2: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLine4: TppLine;
    ppDetailBand5: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand6: TppDetailBand;
    ppRegion4: TppRegion;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppRegion5: TppRegion;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppRegion6: TppRegion;
    ppDBRichText2: TppDBRichText;
    ppFooterBand2: TppFooterBand;
    ppLine9: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine11: TppLine;
    ppDBCalc7: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine12: TppLine;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLabel48: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    raCodeModule3: TraCodeModule;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppSubReport4: TppSubReport;
    ppChildReport5: TppChildReport;
    ppDetailBand7: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine13: TppLine;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine14: TppLine;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppSubReport5: TppSubReport;
    ppChildReport6: TppChildReport;
    ppDetailBand8: TppDetailBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLine15: TppLine;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine16: TppLine;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    raCodeModule4: TraCodeModule;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppParameterList2: TppParameterList;
    qryFeeItemsLedger: TUniQuery;
    dsFeeItemsLedger: TUniDataSource;
    plFeeItemsLedger: TppDBPipeline;
    qryItemsByAuthor: TUniQuery;
    dsItemsByAuthor: TUniDataSource;
    plItemsByAuthor: TppDBPipeline;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMatterClick(Sender: TObject);
    procedure cbFeeTypeChange(Sender: TObject);
    procedure cbAuthorChange(Sender: TObject);
    procedure cbPartnerChange(Sender: TObject);
    procedure DateChangeButton1Click(Sender: TObject);
    procedure qryFeesLedgerDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
//    procedure qrFeesLedgerBeforePrint(Sender: TCustomQuickRep;
//      var PrintReport: Boolean);
//    procedure qrFeeByAuthorBeforePrint(Sender: TCustomQuickRep;
//      var PrintReport: Boolean);
//    procedure qrcrMatterFeeAddReports(Sender: TObject);
    procedure tmrSuicideTimer(Sender: TObject);
    procedure cbPartnerDropDown(Sender: TObject);
    procedure cbAuthorDropDown(Sender: TObject);
    procedure cbFeeTypeDropDown(Sender: TObject);
//    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure p(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppReport2BeforePrint(Sender: TObject);
  private
    { Private declarations }
    LookupTable : string;
    DateField : string;
    hdlActive: HWND;
    procedure GetMatter(sFile : string);
    function WhereClause: string;
    procedure Initialize;
  public
    { Public declarations }
    procedure DisplayMatter(sFile : string);
    procedure DisplayArchive(sFile : string);
    procedure DisplayWIP(sFile: string; bShowGST: boolean);
    procedure DisplayWIPItems(sFile: string; bShowGST: boolean);
  end;

implementation

uses
  AxiomData, MiscFunc, MSearch, citfunc;

{$R *.DFM}

procedure TfrmRptLedgerFees.DisplayMatter(sFile : string);
begin
   LookupTable := 'MATTER M, PHONEBOOK P';
   GetMatter(sFile);
   if qryMatter.Active then
      dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
   chkFrom.Checked := False;
   if not Self.Visible then
      Self.Show;
end;


procedure TfrmRptLedgerFees.DisplayArchive(sFile : string);
begin
  LookupTable := 'ARCHIVE';
  GetMatter(sFile);
  if not Self.Visible then
    Self.Show;
end;

procedure TfrmRptLedgerFees.DisplayWIP(sFile: string; bShowGST: boolean);
begin
  LookupTable := 'MATTER M, PHONEBOOK P';
  GetMatter(sFile);
  rgBilled.ItemIndex := 1;
  rgBillable.ItemIndex := 1;
  chkFrom.Checked := False;
  chkTo.Checked := False;
  chkGST.Checked := bShowGST;
  Initialize;
  ppLabel2.Text := 'W.I.P. Ledger';
  ppReport1.Print;
//  qrcrMatterFee.Preview;
  hdlActive := GetActiveWindow;
  tmrSuicide.Enabled := True; // Kills this window when the report closes
end;

procedure TfrmRptLedgerFees.DisplayWIPItems(sFile: string; bShowGST: boolean);
begin
  LookupTable := 'MATTER M, PHONEBOOK P';
  GetMatter(sFile);
  rgBilled.ItemIndex := 1;
  rgBillable.ItemIndex := 1;
  chkFrom.Checked := False;
  chkTo.Checked := False;
  chkGST.Checked := bShowGST;
  Initialize;
  ppLabel10.Text := 'W.I.P. Ledger - Items';
  ppReport2.Print;
//  qrcrMatterFee.Preview;
  hdlActive := GetActiveWindow;
  tmrSuicide.Enabled := True; // Kills this window when the report closes
end;

procedure TfrmRptLedgerFees.GetMatter(sFile : string);
begin
  //test
  with qryMatter do
  begin
    Close;
    SQL.Text := 'SELECT OPENED, FILEID, P.SEARCH, LONGDESCR, SHORTDESCR, NMATTER FROM ' + LookupTable + ' WHERE FILEID = ' + QuotedStr(sFile);
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


procedure TfrmRptLedgerFees.FormShow(Sender: TObject);
var
   imaxLength: integer;
begin
   dcThisMonth.Click;
   if not qryMatter.Active then
      DisplayMatter(ReopenListLast('MATTER'));
   chkFrom.Checked := False;
   chkTo.Checked := False;
   GetLabel(lblPartner,'MATTER','PARTNER',imaxLength, 'Partner');
   GetLabel(lblAuthor,'MATTER','AUTHOR',imaxLength, 'Author');
end;


procedure TfrmRptLedgerFees.btnPrintClick(Sender: TObject);
begin
  //for summary
//  qrcrMatterFee.Preview;

  Initialize;
  ppReport1.Print;
  hdlActive := GetActiveWindow;
  tmrSuicide.Enabled := True; // Kills this window when the report closes
end;

procedure TfrmRptLedgerFees.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qryFeesLedger.Close;
  qryFeeByAuthor.Close;
  if hdlActive <> 0 then
    DestroyWindow(hdlActive);
  Self.Release;
end;


procedure TfrmRptLedgerFees.btnMatterClick(Sender: TObject);
begin
   if LookupTable = 'MATTER M, PHONEBOOK P' then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOK then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
{  if LookupTable = 'ARCHIVE' then
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
    if frmArchiveSearch.ShowModal = mrOK then
      DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString);}
end;

procedure TfrmRptLedgerFees.cbFeeTypeChange(Sender: TObject);
var
  sTmp : string;
begin
  sTmp := TableString('FEETYPE', 'CODE', cbFeeType.Text, 'DESCR');
  if sTmp <> '' then
    lblFeeTypeDescr.Caption := sTmp
  else
    lblFeeTypeDescr.Caption := '(All)'
end;

procedure TfrmRptLedgerFees.cbAuthorChange(Sender: TObject);
var
  sTmp : string;
begin
  sTmp := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'NAME');
  if sTmp <> '' then
    lblAuthorName.Caption := sTmp
  else
    lblAuthorName.Caption := '(All)'
end;

procedure TfrmRptLedgerFees.cbPartnerChange(Sender: TObject);
var
  sTmp : string;
begin
  sTmp := TableString('EMPLOYEE', 'CODE', cbPartner.Text, 'NAME');
  if sTmp <> '' then
    lblPartnerName.Caption := sTmp
  else
    lblPartnerName.Caption := '(All)'
end;

procedure TfrmRptLedgerFees.DateChangeButton1Click(Sender: TObject);
begin
//  dtpFrom.Checked := True;
//  dtpTo.Checked := True;
end;

procedure TfrmRptLedgerFees.qryFeesLedgerDESCRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryFeesLedger.FieldByName('DESCR').AsString;
end;             

procedure TfrmRptLedgerFees.FormCreate(Sender: TObject);
var
  lsStorageName: String;
begin
  LookupTable := 'MATTER';
  hdlActive := 0;
  lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
  TppIniStoragePlugIn.SetStorageName(lsStorageName);
end;

{
procedure TfrmRptLedgerFees.qrFeesLedgerBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  with qryFeesLedger do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FEE.CREATED, FEE.BANK_ACCT, FEE.AMOUNT, FEE.DESCR');
    SQL.Add(', FEE.UNITS, FEE.MINS, FEE.INVOICEDATE, FEE.BILLED, FEE.AUTHOR');
    SQL.Add(', FEE.PARTNER, FEE.TAX, FEE.TYPE, NMEMO.REFNO,FEE.ITEMS,SCALECOST.DESCR as TASK_DESCR');
    SQL.Add(', SUM (amount) OVER (PARTITION BY nmatter ORDER BY created ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) "Running Total" ');
    SQL.Add('FROM FEE, NMEMO,SCALECOST');
    SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
    SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO(+)');
    SQL.Add('AND FEE.TASK = SCALECOST.CODE(+)');
//    SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
    SQL.Add(WhereClause);
    SQL.Add(' ORDER BY ' + DateField);
    if chkFrom.Checked then
      ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
    if chkTo.Checked then
      ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;

    Prepare;
    Open;
  end;
end;    }

function TfrmRptLedgerFees.WhereClause: string;
var
   sWhereClause: string;
begin
  sWhereClause := '';
  DateField := 'FEE.CREATED';
  case rgBilled.ItemIndex of
    1: // Unbilled
      sWhereClause := sWhereClause + ' AND FEE.TYPE = ''N'' AND FEE.BILLED = ''N''';
    2: // Billed
      sWhereClause := sWhereClause + ' AND FEE.BILLED = ''Y''';
    3: // Billings by Invoicedate
    begin
      DateField := 'FEE.INVOICEDATE';
      sWhereClause := sWhereClause + ' AND FEE.BILLED = ''Y''';
    end;
  end;
  case rgValue.ItemIndex of
    1: // Positive Only
      sWhereClause := sWhereClause + ' AND FEE.AMOUNT > 0';
    2: // Negative Only
      sWhereClause := sWhereClause + ' AND FEE.AMOUNT < 0';
    3: // Zero Only
      sWhereClause := sWhereClause + ' AND FEE.AMOUNT = 0';
  end;

  case rgBillable.ItemIndex of
        1:sWhereClause := sWhereClause + ' AND FEE.BILLTYPE = ''Billable''';
        2:sWhereClause := sWhereClause + ' AND FEE.BILLTYPE <> ''Billable''';
  end;

  if cbPartner.Text <> '' then
    sWhereClause := sWhereClause + ' AND FEE.PARTNER = ''' + cbPartner.Text + '''';
  if cbAuthor.Text <> '' then
    sWhereClause := sWhereClause + ' AND FEE.AUTHOR = ''' + cbAuthor.Text + '''';
  if cbPartner.Text <> '' then
    sWhereClause := sWhereClause + ' AND FEE.TYPE = ''' + cbFeeType.Text + '''';
  if chkFrom.Checked then
    sWhereClause := sWhereClause + ' AND ' + DateField + ' >= :DATEFROM';
  if chkTo.Checked then
    sWhereClause := sWhereClause + ' AND ' + DateField + ' < :DATETO';
  if edBillNum.Text <> '' then
    sWhereClause := sWhereClause + ' AND NMEMO.REFNO = ''' + edBillNum.Text + '''';
  WhereClause := sWhereClause;
end;

{
procedure TfrmRptLedgerFees.qrFeeByAuthorBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   with qryFeeByAuthor do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, 0 AS WIPUNITS, 0 as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total');
      SQL.Add('FROM FEE, EMPLOYEE,NMEMO');
      SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND FEE.AUTHOR = EMPLOYEE.CODE(+)');
      SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO (+) ');
      SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
      SQL.Add(WhereClause);
      SQL.Add('Group BY FEE.Author');
      SQL.Add('UNION ALL');
      SQL.Add('SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, SUM(UNITS) AS WIPUNITS, Sum(FEE.AMOUNT) as WIP, 0 AS TOTALUNITS, 0 as Total');
      SQL.Add('FROM FEE, EMPLOYEE,NMEMO');
      SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND FEE.AUTHOR = EMPLOYEE.CODE(+)');
      SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO (+) ');
      SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
      SQL.Add(WhereClause);
      SQL.Add('AND BILLED = ''N''');
      SQL.Add('Group BY FEE.Author');
      SQL.Add('ORDER BY 1');
      if chkFrom.Checked then
         ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
      if chkTo.Checked then
         ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;
      Open;
   end;
end;

procedure TfrmRptLedgerFees.qrcrMatterFeeAddReports(Sender: TObject);
begin
  with qrcrMatterFee do
  begin
    if not chkSummary.checked then
//        Reports.Add(qrFeesLedger);
//    Reports.Add(qrFeeByAuthor);
//    Reports.Add(qrFeeByAuthorNonBillable);
  end;
end;     }

procedure TfrmRptLedgerFees.tmrSuicideTimer(Sender: TObject);
begin
  if not IsWindow(hdlActive) then
  begin
    tmrSuicide.Enabled := False;
    Self.Close;
  end;
end;

procedure TfrmRptLedgerFees.cbPartnerDropDown(Sender: TObject);
begin
  StringPopulate(cbPartner.items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y'' AND ISPARTNER = ''Y''');
end;

procedure TfrmRptLedgerFees.cbAuthorDropDown(Sender: TObject);
begin
  StringPopulate(cbAuthor.items, 'EMPLOYEE', 'CODE');
end;

procedure TfrmRptLedgerFees.cbFeeTypeDropDown(Sender: TObject);
begin
  StringPopulate(cbFeeType.Items, 'MATTERTYPE', 'CODE');
end;

{
procedure TfrmRptLedgerFees.QRDBText6Print(sender: TObject;
  var Value: String);
begin
   if ((Value = '30/12/1899') or (Value = '30 12 1899') or
       (Value = '30 12 99')) then
      Value := '';
end;   }

procedure TfrmRptLedgerFees.p(Sender: TObject);
begin
  ppLabel26.Visible := chkShowPartner.Checked;
  ppDBText12.Visible  := chkShowPartner.Checked;

  ppLabel29.Visible := chkGST.Checked;
  ppDBText15.Visible := chkGST.Checked;
  ppDBCalc12.Visible := chkGST.Checked;

  srFeessLedger.Visible := (not chkSummary.Checked);
end;

procedure TfrmRptLedgerFees.Initialize;
begin
 with qryFeesLedger do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FEE.CREATED, FEE.BANK_ACCT, FEE.AMOUNT, FEE.DESCR');
    SQL.Add(', FEE.UNITS, FEE.MINS, FEE.INVOICEDATE, FEE.BILLED, FEE.AUTHOR');
    SQL.Add(', FEE.PARTNER, FEE.TAX, FEE.TYPE, NMEMO.REFNO,FEE.ITEMS');
    SQL.Add(', SCALECOST.CODE||'' - ''||SCALECOST.DESCR as TASK_DESCR, FEE.NOTES');
    SQL.Add(', SUM (FEE.amount) OVER (PARTITION BY FEE.nmatter ORDER BY FEE.created, fee.nfee ROWS ');
    SQL.Add('BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) "Running Total", FEE.NMATTER ');
    SQL.Add('FROM FEE, NMEMO, SCALECOST');
    SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
    SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO(+)');
    SQL.Add('AND FEE.TASK = SCALECOST.CODE(+)');
//    SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
    SQL.Add(WhereClause);
    SQL.Add(' ORDER BY ' + DateField + ',FEE.NFEE');
    if chkFrom.Checked then
      ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
    if chkTo.Checked then
      ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;

    if dmAxiom.runningide then
       sql.SaveToFile('c:\tmp\rptfeesbillable.sql');

    Prepare;
    Open;
  end;

  with qryFeeItemsLedger do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT FEE.CREATED, FEE.BANK_ACCT, FEE.TASK_AMOUNT AMOUNT, FEE.DESCR');
    SQL.Add(', FEE.ITEMS UNITS, FEE.MINS, FEE.INVOICEDATE, FEE.BILLED, FEE.AUTHOR');
    SQL.Add(', FEE.PARTNER, FEE.TASK_TAX, FEE.TYPE, NMEMO.REFNO,FEE.ITEMS');
    SQL.Add(', SCALECOST.CODE||'' - ''||SCALECOST.DESCR as TASK_DESCR, FEE.NOTES');
    SQL.Add(', SUM (FEE.TASK_amount) OVER (PARTITION BY FEE.nmatter ORDER BY FEE.created, fee.nfee ROWS ');
    SQL.Add('BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) "Running Total", FEE.NMATTER ');
    SQL.Add('FROM FEE, NMEMO, SCALECOST');
    SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
    SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO(+)');
    SQL.Add('AND FEE.TASK = SCALECOST.CODE(+)');
//    SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
    SQL.Add(WhereClause);
    SQL.Add(' ORDER BY ' + DateField + ',FEE.NFEE');
    if chkFrom.Checked then
      ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
    if chkTo.Checked then
      ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;

    if dmAxiom.runningide then
       sql.SaveToFile('c:\tmp\rptfeesitembillable.sql');

    Prepare;
    Open;
  end;

   with qryFeeByAuthor do
   begin
      Close;
      SQL.Clear;
{      SQL.Add('SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, 0 AS WIPUNITS, 0 as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total');
      SQL.Add('FROM FEE, EMPLOYEE,NMEMO');
      SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND FEE.AUTHOR = EMPLOYEE.CODE(+)');
      SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO (+) ');
      SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
      SQL.Add(WhereClause);
      SQL.Add('Group BY FEE.Author');
      SQL.Add('UNION ALL'); }
      SQL.Add('SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, SUM(UNITS) AS WIPUNITS,');
      SQL.Add('Sum(FEE.AMOUNT) as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total,');
      SQL.Add(' MAX(FEE.NMATTER) AS NMATTER');
      SQL.Add('FROM FEE, EMPLOYEE,NMEMO');
      SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND FEE.AUTHOR = EMPLOYEE.CODE(+)');
      SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO (+) ');
      SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
      SQL.Add(WhereClause);
//      SQL.Add('AND BILLED = ''N''');
      SQL.Add('Group BY FEE.Author');
      SQL.Add('ORDER BY 1');
      if chkFrom.Checked then
         ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
      if chkTo.Checked then
         ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;
      Open;
   end;

   with qryItemsByAuthor do
   begin
      Close;
      SQL.Clear;
{      SQL.Add('SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, 0 AS WIPUNITS, 0 as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total');
      SQL.Add('FROM FEE, EMPLOYEE,NMEMO');
      SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND FEE.AUTHOR = EMPLOYEE.CODE(+)');
      SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO (+) ');
      SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
      SQL.Add(WhereClause);
      SQL.Add('Group BY FEE.Author');
      SQL.Add('UNION ALL'); }
      SQL.Add('SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, SUM(ITEMS) AS WIPUNITS,');
      SQL.Add('Sum(FEE.TASK_AMOUNT) as WIP, SUM(ITEMS) AS TOTALUNITS, Sum(FEE.task_AMOUNT) as Total,');
      SQL.Add(' MAX(FEE.NMATTER) AS NMATTER');
      SQL.Add('FROM FEE, EMPLOYEE,NMEMO');
      SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND FEE.AUTHOR = EMPLOYEE.CODE(+)');
      SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO (+) ');
      SQL.Add('AND FEE.BILLTYPE = ''Billable'' ');
      SQL.Add(WhereClause);
//      SQL.Add('AND BILLED = ''N''');
      SQL.Add('Group BY FEE.Author');
      SQL.Add('ORDER BY 1');
      if chkFrom.Checked then
         ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
      if chkTo.Checked then
         ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;
      Open;
   end;

  with qryFeeByAuthorNonBillable do
  begin
      Close;
      SQL.Clear;
{      SQL.Add('SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, 0 AS WIPUNITS, 0 as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total');
      SQL.Add('FROM FEE, EMPLOYEE,NMEMO');
      SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND FEE.AUTHOR = EMPLOYEE.CODE(+)');
      SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO (+) ');
      SQL.Add('AND FEE.BILLTYPE = ''NonBillable'' ');
      SQL.Add(WhereClause);
      SQL.Add('Group BY FEE.Author');
      SQL.Add('UNION ALL');        }
      SQL.Add('SELECT FEE.AUTHOR, MAX(EMPLOYEE.NAME) as NAME, SUM(UNITS) AS WIPUNITS, ');
      SQL.Add('Sum(FEE.AMOUNT) as WIP, SUM(UNITS) AS TOTALUNITS, Sum(FEE.AMOUNT) as Total,');
      SQL.Add(' MAX(FEE.NMATTER) AS NMATTER');
      SQL.Add('FROM FEE, EMPLOYEE,NMEMO');
      SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(qryMatter.FieldByName('NMATTER').AsInteger));
      SQL.Add('AND FEE.AUTHOR = EMPLOYEE.CODE(+)');
      SQL.Add('AND FEE.NMEMO = NMEMO.NMEMO (+) ');
      SQL.Add('AND FEE.BILLTYPE <> ''Billable'' ');
      SQL.Add(WhereClause);
      SQL.Add('AND BILLED = ''N''');
      SQL.Add('Group BY FEE.Author');
      SQL.Add('ORDER BY 1');
      if chkFrom.Checked then
         ParamByName('DATEFROM').AsDate := Trunc(dtpFrom.Date);
      if chkTo.Checked then
         ParamByName('DATETO').AsDate := Trunc(dtpTo.Date) + 1;
      Open;
  end;
end;

procedure TfrmRptLedgerFees.ppLabel7GetText(Sender: TObject;
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

procedure TfrmRptLedgerFees.ppReport2BeforePrint(Sender: TObject);
begin
  ppLabel25.Visible := chkShowPartner.Checked;
  ppDBText31.Visible  := chkShowPartner.Checked;

  ppLabel37.Visible := chkGST.Checked;
  ppDBText34.Visible := chkGST.Checked;
  ppDBCalc7.Visible := chkGST.Checked;

  srFeessLedger.Visible := (not chkSummary.Checked);
end;

end.
