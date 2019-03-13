unit Archives;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Menus, ToolWin, Db, FMXUtils,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, Grids, DBGrids, ComObj,
  citfunc,Qrctrls, quickrpt, NumberLabel, ImgList, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, OraSmart, DBAccess;

type
  TfrmArchive = class(TForm)
    lblMatterNo: TLabel;
    lblClient: TLabel;
    lblPartner: TLabel;
    lblAuthor: TLabel;
    lblPartnerName: TLabel;
    lblType: TLabel;
    lblTypeDesc: TLabel;
    lblDesc: TLabel;
    pageMatter: TPageControl;
    tabGraph: TTabSheet;
    qryFees: TUniQuery;
    tbarToolbar: TToolBar;
    ilstToolbar: TImageList;
    tbtnFind: TToolButton;
    dbchFeePie: TDBChart;
    Series1: TPieSeries;
    dbchTime: TDBChart;
    PieSeries1: TPieSeries;
    qryTime: TUniQuery;
    tbtnSnapshot: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    tbtnHelp: TToolButton;
    tabDiary: TTabSheet;
    tabDocs: TTabSheet;
    qryDiary: TUniQuery;
    dsDiary: TUniDataSource;
    dbgrDiary: TDBGrid;
    qryDocs: TUniQuery;
    dsDocs: TUniDataSource;
    dbgrDocs: TDBGrid;
    qryArchive: TUniQuery;
    dsArchive: TUniDataSource;
    pagLedgers: TPageControl;
    mnuMain: TMainMenu;
    mnuFile: TMenuItem;
    mnuFileReopen: TMenuItem;
    mnuFileLine1: TMenuItem;
    mnuFilePrint: TMenuItem;
    mnuFileLedgers: TMenuItem;
    mnuFileLedgerFees: TMenuItem;
    mnuFileLedgerSundry: TMenuItem;
    mnuFileLedgerDisb: TMenuItem;
    mnuFileLedgerDebtors: TMenuItem;
    mnuFileLedgerTrust: TMenuItem;
    mnuFileLedgerCombo: TMenuItem;
    mnuFileLine2: TMenuItem;
    mnuFileSnapshot: TMenuItem;
    mnuFileExit: TMenuItem;
    mnuHelp: TMenuItem;
    mnuHelpSearch: TMenuItem;
    mnuHelpContents: TMenuItem;
    mnuSearch: TMenuItem;
    mnuSearchFind: TMenuItem;
    mnuSearchLine1: TMenuItem;
    mnuSearchFirst: TMenuItem;
    mnuSearchPrev: TMenuItem;
    mnuSearchNext: TMenuItem;
    mnuSearchLast: TMenuItem;
    tabInvoices: TTabSheet;
    qryInvoices: TUniQuery;
    dsInvoices: TUniDataSource;
    dbgrInvoices: TDBGrid;
    tabLabel: TTabSheet;
    lblClientPhone: TLabel;
    dblblPartner: TDBText;
    dblblAuthor: TDBText;
    dblblType: TDBText;
    lblAuthorName: TLabel;
    btnInvWord: TBitBtn;
    mnuFilePrintLabel: TMenuItem;
    mnuFilePrintDetails: TMenuItem;
    tbtnUnArchive: TToolButton;
    mnuFileUnArchive: TMenuItem;
    ToolButton1: TToolButton;
    tbtnPost: TToolButton;
    tbtnCancel: TToolButton;
    tbtnFirst: TToolButton;
    tbtnPrev: TToolButton;
    tbtnNext: TToolButton;
    tbtnLast: TToolButton;
    Label1: TLabel;
    dblblArchive: TDBText;
    Label2: TLabel;
    dblblOpened: TDBText;
    dblblArchived: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    dblblFileID: TDBText;
    dblblClient: TDBText;
    dblblShortDescr: TDBText;
    dblblLongDescr: TDBText;
    qryDiaryFullDesc: TStringField;
    qryMatterInsert: TUniQuery;
    qrLabel: TQuickRep;
    TitleBand4: TQRBand;
    QRSysData13: TQRSysData;
    QRLabel92: TQRLabel;
    DetailBand4: TQRBand;
    QRLabel93: TQRLabel;
    QRDBText62: TQRDBText;
    QRLabel94: TQRLabel;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRLabel95: TQRLabel;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRLabel96: TQRLabel;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRLabel97: TQRLabel;
    QRDBText78: TQRDBText;
    QRLabel98: TQRLabel;
    QRDBText79: TQRDBText;
    QRLabel99: TQRLabel;
    QRDBText80: TQRDBText;
    QRLabel100: TQRLabel;
    QRDBText81: TQRDBText;
    QRLabel101: TQRLabel;
    QRDBText82: TQRDBText;
    QRLabel102: TQRLabel;
    QRDBText83: TQRDBText;
    QRLabel103: TQRLabel;
    QRDBText85: TQRDBText;
    QRLabel104: TQRLabel;
    QRDBText86: TQRDBText;
    qrlblLabelPartner: TQRLabel;
    qrlblLabelAuthor: TQRLabel;
    qrlblLabelType: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel46: TQRLabel;
    Label27: TLabel;
    btnDisbLedger: TBitBtn;
    btnAntdLedger: TBitBtn;
    btnSundLedger: TBitBtn;
    btnDebtLedger: TBitBtn;
    btnFeeLedger: TBitBtn;
    btnComboLedger: TBitBtn;
    btnTrustLedger: TBitBtn;
    qryTmpSQL: TUniQuery;
    tbtnPrint: TToolButton;
    ToolButton4: TToolButton;
    Label5: TLabel;
    lblControllerName: TLabel;
    dblblController: TDBText;
    tabMisc: TTabSheet;
    dbmNotes: TDBMemo;
    Panel1: TPanel;
    Label6: TLabel;
    dbeBoxNo: TDBEdit;
    Label7: TLabel;
    dbtBoxNo: TDBText;
    Label8: TLabel;
    tbBoxMgmt: TToolButton;
    tbtnClient: TToolButton;
    qryArchiveNARCHIVE: TFloatField;
    qryArchiveNMATTER: TFloatField;
    qryArchiveOPENED: TDateTimeField;
    qryArchiveAUTHOR: TStringField;
    qryArchivePARTNER: TStringField;
    qryArchiveTYPE: TStringField;
    qryArchiveRATE: TFloatField;
    qryArchiveTITLE: TStringField;
    qryArchiveFILEID: TStringField;
    qryArchiveACCT: TStringField;
    qryArchiveTRUSTAUTH: TStringField;
    qryArchivePARTY1: TStringField;
    qryArchivePARTY2: TStringField;
    qryArchivePARTY3: TStringField;
    qryArchiveSHORTDESCR: TStringField;
    qryArchiveLONGDESCR: TStringField;
    qryArchiveOFFICE: TStringField;
    qryArchiveNCLIENT: TFloatField;
    qryArchiveBILL_TO: TStringField;
    qryArchiveLASTTRANS: TDateTimeField;
    qryArchiveLASTTRUST: TDateTimeField;
    qryArchiveREFERREDBY: TStringField;
    qryArchiveARCHIVED: TDateTimeField;
    qryArchiveNOTES: TStringField;
    qryArchiveLITIGATION: TStringField;
    qryArchiveSPECULATION: TStringField;
    qryArchiveAGENCY: TStringField;
    qryArchiveGRATIS: TStringField;
    qryArchiveBILLING_PLAN: TStringField;
    qryArchiveCONTACT: TStringField;
    qryArchiveOPREF: TStringField;
    qryArchiveBILL_FEES: TFloatField;
    qryArchiveRECVD_FEES: TFloatField;
    qryArchivePREV_NCMAUDIT: TFloatField;
    qryArchivePREV_NTRAUDIT: TFloatField;
    qryArchiveCONTROLLER: TStringField;
    qryArchiveCOMPLETED: TDateTimeField;
    qryArchiveEXPECTED_VALUE: TFloatField;
    qryArchiveWORKFLOW: TStringField;
    qryArchiveBOXNO: TStringField;
    qryArchiveFEECODE: TStringField;
    qryArchiveLABELCODE: TStringField;
    qryArchiveBRANCH: TStringField;
    qryArchiveROWID: TStringField;
    qryInvoicesREFNO: TStringField;
    qryInvoicesDISPATCHED: TDateTimeField;
    qryInvoicesNMEMO: TFloatField;
    qryInvoicesGENERATED: TDateTimeField;
    qryInvoicesFEES: TFloatField;
    qryInvoicesDISB: TFloatField;
    qryInvoicesANTD: TFloatField;
    qryInvoicesSUND: TFloatField;
    qryDiaryNDIARY: TFloatField;
    qryDiarySTART_DT: TDateTimeField;
    qryDiaryEND_DT: TDateTimeField;
    qryDiaryREMINDER_FOR: TStringField;
    qryDiaryTIME: TStringField;
    qryDiaryENTERED_BY: TStringField;
    qryDiaryCREATION_DATE: TDateTimeField;
    qryDiaryACKNOWLEDGED: TDateTimeField;
    qryDiaryACK_BY: TStringField;
    qryDiaryCEASE_DATE: TDateTimeField;
    qryDiaryDESCR: TStringField;
    qryDiaryDELETE_DATE: TDateTimeField;
    qryDiaryDEL_ORD_BY: TStringField;
    qryDiarySEARCH_KEY: TStringField;
    qryDiaryPRIORITY: TStringField;
    qryDiaryFILEID: TStringField;
    qryDiaryTASK: TStringField;
    qryDiaryTYPE: TStringField;
    qryDiaryPARTNER: TStringField;
    qryDiaryLOCATION: TStringField;
    qryDiaryJURISDICTION: TStringField;
    qryDiaryEVENT: TStringField;
    qryDiaryDATAFORMFIELD: TStringField;
    qryDiaryNOTIFY: TDateTimeField;
    qryDiaryEVENTPRINTDESCR: TStringField;
    procedure tbtnFindClick(Sender: TObject);
    procedure pageMatterChange(Sender: TObject);
    procedure tbtnSnapshotClick(Sender: TObject);
    procedure dbgrDocsDblClick(Sender: TObject);
    procedure btnFeeLedgerClick(Sender: TObject);
    procedure btnTrustLedgerClick(Sender: TObject);
    procedure mnuFileOpenClick(Sender: TObject);
    procedure mnuFileSnapshotClick(Sender: TObject);
    procedure mnuFileLedgerFeesClick(Sender: TObject);
    procedure mnuFileLedgerSundryClick(Sender: TObject);
    procedure mnuFileLedgerDisbClick(Sender: TObject);
    procedure mnuFileLedgerDebtorsClick(Sender: TObject);
    procedure mnuFileLedgerTrustClick(Sender: TObject);
    procedure mnuFileLedgerComboClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure mnuSearchFindClick(Sender: TObject);
    procedure mnuSearchFirstClick(Sender: TObject);
    procedure mnuSearchPrevClick(Sender: TObject);
    procedure mnuSearchNextClick(Sender: TObject);
    procedure mnuReopen(Sender: TObject);
    procedure mnuSearchLastClick(Sender: TObject);
    procedure qryInvoicesCalcFields(DataSet: TDataSet);
    procedure btnInvOpenClick(Sender: TObject);
    procedure qryArchiveAfterScroll(DataSet: TDataSet);
    procedure tbtnPrintClick(Sender: TObject);
    procedure btnInvWordClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryDiaryCalcFields(DataSet: TDataSet);
    procedure tbtnUnArchiveClick(Sender: TObject);
    procedure btnComboLedgerClick(Sender: TObject);
    procedure qryArchiveLONGDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure mnuFilePrintLabelClick(Sender: TObject);
    procedure btnDebtLedgerClick(Sender: TObject);
    procedure btnSundLedgerClick(Sender: TObject);
    procedure btnDisbLedgerClick(Sender: TObject);
    procedure btnAntdLedgerClick(Sender: TObject);
    procedure qryArchiveAfterEditInsert(DataSet: TDataSet);
    procedure qryArchiveAfterCancelPost(DataSet: TDataSet);
    procedure tbtnPostClick(Sender: TObject);
    procedure tbtnCancelClick(Sender: TObject);
    procedure dbeBoxNoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure mnuFileUnArchiveClick(Sender: TObject);
    procedure tbBoxMgmtClick(Sender: TObject);
    procedure tbtnClientClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcFields;
    procedure SetReopenList;
    procedure NavigateArchive;

  public
    { Public declarations }
    procedure DisplayArchive(sFile : string);
    procedure ChooseArchive;
  end;

implementation

uses
  ArchiveSearch, Clients, Desktop, BillNew, AxiomData, Matters, MiscFunc,
  RptLedgerCheqReq, RptLedgerCombo, RptLedgerDebt, RptLedgerDisb,
  RptLedgerFees, RptLedgerSundry, RptLedgerTrust, ArchiveBoxMgmt;

{$R *.DFM}

procedure TfrmArchive.DisplayArchive(sFile : string);
begin
  qryArchive.Close;
  qryArchive.ParamByName('P_File').AsString := sFile;
  qryArchive.Open;
  if not qryArchive.IsEmpty then
  begin
    Show;
    Self.Caption := 'Archived Matter: ' + qryArchive.FieldByName('TITLE').AsString + ' ' + qryArchive.FieldByName('SHORTDESCR').AsString + ' ' + qryArchive.FieldByName('FILEID').AsString;
    CalcFields;
    ReopenListUpdate('ARCHIVE', sFile);
    SetReopenList;
  end
  else
  begin
    ReopenListDelete('ARCHIVE', sFile);
    Self.Close;
  end;
end;


procedure TfrmArchive.ChooseArchive;
begin
  tbtnFind.Click;
  if not qryArchive.Active then
    Self.Close;
end;


procedure TfrmArchive.tbtnFindClick(Sender: TObject);
begin
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if frmArchiveSearch.ShowModal = mrOk then
    NavigateArchive;
end;


procedure TfrmArchive.pageMatterChange(Sender: TObject);
begin
  qryFees.Close;
  qryTime.Close;
  qryDiary.Close;
  qryDocs.Close;
  qryInvoices.Close;

  if pageMatter.ActivePage.TabIndex = tabInvoices.PageIndex then
  begin
    qryInvoices.ParamByName('P_Matter').AsInteger := qryArchive.FieldByName('NMATTER').AsInteger;
    qryInvoices.Open;
    if qryInvoices.EOF then
      btnInvWord.Enabled := False
    else
      btnInvWord.Enabled := True;
  end
  else if pageMatter.ActivePage.TabIndex = tabGraph.PageIndex then
  begin
    qryFees.ParamByName('P_Matter').AsInteger := qryArchive.FieldByName('NMATTER').AsInteger;
    qryFees.Open;
    qryTime.ParamByName('P_Matter').AsInteger := qryArchive.FieldByName('NMATTER').AsInteger;
    qryTime.Open;
  end
  else if pageMatter.ActivePage.TabIndex = tabDiary.PageIndex then
  begin
    qryDiary.ParamByName('P_FileID').AsString := qryArchive.FieldByName('FILEID').AsString;
    qryDiary.Open;
  end
  else if pageMatter.ActivePage.TabIndex = tabDocs.PageIndex then
  begin
    qryDocs.ParamByName('P_FILEID').AsString := qryArchive.FieldByName('FILEID').AsString;
    qryDocs.Open;
  end;
end;


procedure TfrmArchive.CalcFields;
begin
  if dblblClient.Field.Text <> '' then
    lblClientPhone.Caption := PhoneBookString(qryArchive.FieldByName('TITLE').AsString, 'WORKPHONE')
  else
    lblClientPhone.Caption := '';
  lblPartnerName.Caption := TableString('EMPLOYEE', 'CODE', qryArchive.FieldByName('PARTNER').AsString, 'NAME');
  lblControllerName.Caption := TableString('EMPLOYEE', 'CODE', qryArchive.FieldByName('CONTROLLER').AsString, 'NAME');
  lblAuthorName.Caption := TableString('EMPLOYEE', 'CODE', qryArchive.FieldByName('AUTHOR').AsString, 'NAME');
  lblTypeDesc.Caption := TypeString(qryArchive.FieldByName('TYPE').AsString, 'DESCR');
end;


procedure TfrmArchive.tbtnSnapshotClick(Sender: TObject);
begin
  frmDesktop.AddSnapshot(9, dblblFileID.Field.Text + ' ' + dblblClient.Field.Text + ' ' + qryArchive.FieldByName('SHORTDESCR').AsString);
end;


procedure TfrmArchive.dbgrDocsDblClick(Sender: TObject);
begin
  ExecuteFile(qryDocs.FieldByName('PATH').AsString, '', '.', SW_SHOW);
end;


procedure TfrmArchive.btnFeeLedgerClick(Sender: TObject);
begin
  with TfrmRptLedgerFees.Create(Self) do
    DisplayArchive(Self.qryArchive.FieldByName('FILEID').AsString);
end;

procedure TfrmArchive.btnTrustLedgerClick(Sender: TObject);
begin
  with TfrmRptLedgerTrust.Create(Self) do
    DisplayArchive(Self.qryArchive.FieldByName('FILEID').AsString);
end;


procedure TfrmArchive.mnuFileOpenClick(Sender: TObject);
begin
  tbtnFind.Click;
end;

procedure TfrmArchive.mnuFileSnapshotClick(Sender: TObject);
begin
  tbtnSnapshot.Click;
end;

procedure TfrmArchive.mnuFileLedgerFeesClick(Sender: TObject);
begin
  btnFeeLedger.Click;
end;

procedure TfrmArchive.mnuFileLedgerSundryClick(Sender: TObject);
begin
  btnSundLedger.Click;
end;

procedure TfrmArchive.mnuFileLedgerDisbClick(Sender: TObject);
begin
  btnDisbLedger.Click;
end;

procedure TfrmArchive.mnuFileLedgerDebtorsClick(Sender: TObject);
begin
  btnDebtLedger.Click;
end;

procedure TfrmArchive.mnuFileLedgerTrustClick(Sender: TObject);
begin
  btnTrustLedger.Click;
end;

procedure TfrmArchive.mnuFileLedgerComboClick(Sender: TObject);
begin
  btnComboLedger.Click;
end;

procedure TfrmArchive.mnuFileExitClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TfrmArchive.SetReopenList;
var
  iCtr : integer;
begin
  ReopenListSet('ARCHIVE', mnuFileReopen);
  for iCtr := 0 to mnuFileReopen.Count - 1 do
    mnuFileReopen.Items[iCtr].OnClick := mnuReopen;

end;


procedure TfrmArchive.mnuReopen(Sender: TObject);
begin
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if not frmArchiveSearch.qryArchives.Active then
    frmArchiveSearch.qryArchives.Open;
  frmArchiveSearch.qryArchives.Locate('FILEID', (Sender as TMenuItem).Caption, []);
  NavigateArchive;
  DisplayArchive((Sender as TMenuItem).Caption);
end;


procedure TfrmArchive.tbtnFirstClick(Sender: TObject);
begin
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if not frmArchiveSearch.qryArchives.Active then
    frmArchiveSearch.qryArchives.Open;
  frmArchiveSearch.qryArchives.First;
  NavigateArchive;
end;

procedure TfrmArchive.tbtnPrevClick(Sender: TObject);
begin
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if not frmArchiveSearch.qryArchives.Active then
    frmArchiveSearch.qryArchives.Open;
  frmArchiveSearch.qryArchives.Prior;
  NavigateArchive;
end;

procedure TfrmArchive.tbtnNextClick(Sender: TObject);
begin
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if not frmArchiveSearch.qryArchives.Active then
    frmArchiveSearch.qryArchives.Open;
  frmArchiveSearch.qryArchives.Next;
  NavigateArchive;
end;

procedure TfrmArchive.tbtnLastClick(Sender: TObject);
begin
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if not frmArchiveSearch.qryArchives.Active then
    frmArchiveSearch.qryArchives.Open;
  frmArchiveSearch.qryArchives.Last;
  NavigateArchive;
end;


procedure TfrmArchive.NavigateArchive;
begin
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if not frmArchiveSearch.qryArchives.Active then
    frmArchiveSearch.qryArchives.Open;
  DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString);
  SetReopenList;
end;

procedure TfrmArchive.mnuSearchFindClick(Sender: TObject);
begin
  tbtnFind.Click;
end;

procedure TfrmArchive.mnuSearchFirstClick(Sender: TObject);
begin
  tbtnFirst.Click;
end;

procedure TfrmArchive.mnuSearchPrevClick(Sender: TObject);
begin
  tbtnPrev.Click;
end;

procedure TfrmArchive.mnuSearchNextClick(Sender: TObject);
begin
  tbtnNext.Click;
end;

procedure TfrmArchive.mnuSearchLastClick(Sender: TObject);
begin
  tbtnLast.Click;
end;

procedure TfrmArchive.qryInvoicesCalcFields(DataSet: TDataSet);
begin
  if qryInvoices.FieldByName('RV_NMEMO').AsInteger > 0 then
    qryInvoices.FieldByName('Reversal').AsString := IntToStr(qryInvoices.FieldByName('RV_NMEMO').AsInteger);
end;

procedure TfrmArchive.btnInvOpenClick(Sender: TObject);
begin
  with TfrmInvoice.Create(Self) do
  begin
    DisplayInvoice(qryInvoices.FieldByname('NMEMO').AsInteger);
    Show;
  end;
end;


procedure TfrmArchive.qryArchiveAfterScroll(DataSet: TDataSet);
begin
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if frmArchiveSearch.qryArchives.EOF then
  begin
    tbtnLast.Enabled := False;
    mnuSearchLast.Enabled := False;
    tbtnNext.Enabled := False;
    mnuSearchNext.Enabled := False;
  end
  else
  begin
    tbtnLast.Enabled := True;
    mnuSearchLast.Enabled := True;
    tbtnNext.Enabled := True;
    mnuSearchNext.Enabled := True;
  end;
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
  if frmArchiveSearch.qryArchives.BOF then
  begin
    tbtnFirst.Enabled := False;
    mnuSearchFirst.Enabled := False;
    tbtnPrev.Enabled := False;
    mnuSearchPrev.Enabled := False;
  end
  else
  begin
    tbtnFirst.Enabled := True;
    mnuSearchFirst.Enabled := True;
    tbtnPrev.Enabled := True;
    mnuSearchPrev.Enabled := True;
  end;
  pageMatter.OnChange(Self);
end;


procedure TfrmArchive.tbtnPrintClick(Sender: TObject);
begin
  qrLabel.PreviewModal;
end;

procedure TfrmArchive.btnInvWordClick(Sender: TObject);
begin
   InvoiceMerge(qryInvoices.FieldByName('NMEMO').AsInteger, qryInvoices.FieldByName('NMATTER').AsInteger);
end;


procedure TfrmArchive.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qryArchive.Modified then
    if MsgAsk('Do you want to save your changes before you quit?') = mrYes then
      qryArchive.Post;
  qryArchive.Close;
  qryFees.Close;
  qryInvoices.Close;
  qryTime.Close;
  qryDiary.Close;
  qryDocs.Close;

  Self.Release;
end;


procedure TfrmArchive.qryDiaryCalcFields(DataSet: TDataSet);
begin
  qryDiary.FieldByName('FullDesc').AsString := qryDiary.FieldByName('DESCR').AsString;
end;


procedure TfrmArchive.tbtnUnArchiveClick(Sender: TObject);
var
  sFileID: string;
  bSuccess: Boolean;
begin
  bSuccess := False;
  if not qryArchive.IsEmpty then
  begin
    if MsgAsk('Do you want to Unarchive Matter ' + qryArchive.FieldByName('FILEID').AsString + '?') = mrYes then
    begin
      try
y        dmAxiom.uniInsight.StartTransaction;
        qryMatterInsert.ParamByName('NARCHIVE').AsInteger := qryArchive.FieldByName('NARCHIVE').AsInteger;
        qryMatterInsert.ParamByName('NMATTER').AsInteger := qryArchive.FieldByName('NMATTER').AsInteger;
        qryMatterInsert.ParamByName('OPENED').AsDateTime := qryArchive.FieldByName('OPENED').AsDateTime;
        qryMatterInsert.ParamByName('AUTHOR').AsString := qryArchive.FieldByName('AUTHOR').AsString;
        qryMatterInsert.ParamByName('CONTROLLER').AsString := qryArchive.FieldByName('CONTROLLER').AsString;
        qryMatterInsert.ParamByName('PARTNER').AsString := qryArchive.FieldByName('PARTNER').AsString;
        qryMatterInsert.ParamByName('TYPE').AsString := qryArchive.FieldByName('TYPE').AsString;
        qryMatterInsert.ParamByName('RATE').AsFloat := qryArchive.FieldByName('RATE').AsFloat;
        qryMatterInsert.ParamByName('TITLE').AsString := qryArchive.FieldByName('TITLE').AsString;
        qryMatterInsert.ParamByName('FILEID').AsString := qryArchive.FieldByName('FILEID').AsString;
        qryMatterInsert.ParamByName('ACCT').AsString := qryArchive.FieldByName('ACCT').AsString;
        qryMatterInsert.ParamByName('TRUSTAUTH').AsString := qryArchive.FieldByName('TRUSTAUTH').AsString;
        qryMatterInsert.ParamByName('PARTY1').AsString := qryArchive.FieldByName('PARTY1').AsString;
        qryMatterInsert.ParamByName('PARTY2').AsString := qryArchive.FieldByName('PARTY2').AsString;
        qryMatterInsert.ParamByName('PARTY3').AsString := qryArchive.FieldByName('PARTY3').AsString;
        qryMatterInsert.ParamByName('SHORTDESCR').AsString := qryArchive.FieldByName('SHORTDESCR').AsString;
        qryMatterInsert.ParamByName('LONGDESCR').AsString := qryArchive.FieldByName('LONGDESCR').AsString;
        qryMatterInsert.ParamByName('OFFICE').AsString := qryArchive.FieldByName('OFFICE').AsString;
        qryMatterInsert.ParamByName('NCLIENT').AsInteger := qryArchive.FieldByName('NCLIENT').AsInteger;
        qryMatterInsert.ParamByName('BILL_TO').AsString := qryArchive.FieldByName('BILL_TO').AsString;
        qryMatterInsert.ParamByName('LASTTRANS').Value := qryArchive.FieldByName('LASTTRANS').Value;
        qryMatterInsert.ParamByName('LASTTRUST').Value := qryArchive.FieldByName('LASTTRUST').Value;
        qryMatterInsert.ParamByName('REFERREDBY').AsString := qryArchive.FieldByName('REFERREDBY').AsString;
        qryMatterInsert.ParamByName('ARCHIVED').AsDateTime := qryArchive.FieldByName('ARCHIVED').AsDateTime;
        qryMatterInsert.ParamByName('NOTES').AsString := qryArchive.FieldByName('NOTES').AsString;
        qryMatterInsert.ParamByName('LITIGATION').AsString := qryArchive.FieldByName('LITIGATION').AsString;
        qryMatterInsert.ParamByName('SPECULATION').AsString := qryArchive.FieldByName('SPECULATION').AsString;
        qryMatterInsert.ParamByName('AGENCY').AsString := qryArchive.FieldByName('AGENCY').AsString;
        qryMatterInsert.ParamByName('GRATIS').AsString := qryArchive.FieldByName('GRATIS').AsString;
        qryMatterInsert.ParamByName('BILLING_PLAN').AsString := qryArchive.FieldByName('BILLING_PLAN').AsString;
        qryMatterInsert.ParamByName('CONTACT').AsString := qryArchive.FieldByName('CONTACT').AsString;
        qryMatterInsert.ParamByName('OPREF').AsString := qryArchive.FieldByName('OPREF').AsString;
        qryMatterInsert.ParamByName('BILL_FEES').AsFloat := qryArchive.FieldByName('BILL_FEES').AsFloat;
        qryMatterInsert.ParamByName('RECVD_FEES').AsFloat := qryArchive.FieldByName('RECVD_FEES').AsFloat;
        qryMatterInsert.ParamByName('PREV_NCMAUDIT').AsInteger := qryArchive.FieldByName('PREV_NCMAUDIT').AsInteger;
        qryMatterInsert.ParamByName('PREV_NTRAUDIT').AsInteger := qryArchive.FieldByName('PREV_NTRAUDIT').AsInteger;
        qryMatterInsert.ParamByName('FEECODE').AsString := qryArchive.FieldByName('FEECODE').AsString;
        qryMatterInsert.ParamByName('LABELCODE').AsString := qryArchive.FieldByName('LABELCODE').AsString;
        qryMatterInsert.ParamByName('MODBY').AsString := dmAxiom.UserID;
        qryMatterInsert.ParamByName('ENTITY').AsString := dmAxiom.Entity;
        qryMatterInsert.ExecSQL;
        // Now delete this Archived Matter
        sFileID := qryArchive.FieldByName('FILEID').AsString;
        with qryTmpSQL do
        begin
          Close;
          SQL.Text := 'DELETE FROM ARCHIVE WHERE FILEID = ' + QuotedStr(sFileID);
          ExecSQL;
        end;
        ReopenListDelete('ARCHIVE', sFileID);
        dmAxiom.uniInsight.Commit;
        bSuccess := True;
      except
        on E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          MsgErr('Archival failed:'#13#13 + E.Message);
        end;
      end;
      if bSuccess then
      begin
        with TfrmMatters.Create(nil) do
          DisplayMatter(sFileID);
        Self.Close;
      end;
    end;
  end
  else
    MsgErr('Please select a Matter to Unarchive');
end;

procedure TfrmArchive.btnComboLedgerClick(Sender: TObject);
begin
  with TfrmRptLedgerCombo.Create(Self) do
    DisplayArchive(Self.qryArchive.FieldByName('FILEID').AsString);
end;

procedure TfrmArchive.qryArchiveLONGDESCRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := qryArchive.FieldByName('LONGDESCR').AsString;
end;

procedure TfrmArchive.mnuFilePrintLabelClick(Sender: TObject);
begin
  tbtnPrint.Click;
end;

procedure TfrmArchive.btnDebtLedgerClick(Sender: TObject);
begin
  with TfrmRptLedgerDebt.Create(Self) do
    DisplayArchive(Self.qryArchive.FieldByName('FILEID').AsString);
end;

procedure TfrmArchive.btnSundLedgerClick(Sender: TObject);
begin
  with TfrmRptLedgerSundry.Create(Self) do
    DisplayArchive(Self.qryArchive.FieldByName('FILEID').AsString);
end;

procedure TfrmArchive.btnDisbLedgerClick(Sender: TObject);
begin
  with TfrmRptLedgerDisb.Create(Self) do
    DisplayArchive(Self.qryArchive.FieldByName('FILEID').AsString);
end;

procedure TfrmArchive.btnAntdLedgerClick(Sender: TObject);
begin
  with TfrmRptLedgerCheqReq.Create(Self) do
    DisplayArchive(Self.qryArchive.FieldByName('FILEID').AsString);
end;

procedure TfrmArchive.qryArchiveAfterEditInsert(DataSet: TDataSet);
begin
  tbtnPost.Visible := True;
  tbtnCancel.Visible := True;
end;

procedure TfrmArchive.qryArchiveAfterCancelPost(DataSet: TDataSet);
begin
  tbtnPost.Visible := False;
  tbtnCancel.Visible := False;
end;

procedure TfrmArchive.tbtnPostClick(Sender: TObject);
begin
  qryArchive.Post;
end;

procedure TfrmArchive.tbtnCancelClick(Sender: TObject);
begin
  qryArchive.Cancel;
end;

procedure TfrmArchive.dbeBoxNoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if qryArchive.State = dsEdit then
      qryArchive.Post;
    Key := #0;
  end;
end;

procedure TfrmArchive.FormCreate(Sender: TObject);
begin
  tbtnUnArchive.Visible := dmAxiom.Security.Matter.Reopen;
  tbBoxMgmt.Visible := dmAxiom.Security.Matter.Reopen;
  mnuFileUnArchive.Visible := dmAxiom.Security.Matter.Reopen;
  dbeBoxNo.Enabled := dmAxiom.Security.Matter.Edit;
  dbmNotes.Enabled := dmAxiom.Security.Matter.Edit;
end;

procedure TfrmArchive.mnuFileUnArchiveClick(Sender: TObject);
begin
  tbtnUnArchive.Click;
end;

procedure TfrmArchive.tbBoxMgmtClick(Sender: TObject);
begin
  with TfrmArchiveBoxMgmt.Create(Self) do
    ShowModal;
end;

procedure TfrmArchive.tbtnClientClick(Sender: TObject);
begin
  with TfrmClients.Create(Application) do
    DisplayClient(qryArchive.FieldByName('NCLIENT').AsInteger);
end;

end.

