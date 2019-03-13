unit ArchiveSearch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, Menus,
  ImgList, ToolWin, ExtCtrls, QuickRpt, Qrctrls, DBAccess;

const
  pnlARCHIVES = 0;
  pnlFILTER = 1;

type
  TLookup = (luUnassigned, luClient, luFileID, luArchiveID);

  TfrmArchiveSearch = class(TForm)
    qryArchives: TUniQuery;
    dsArchives: TUniDataSource;
    pageSearch: TPageControl;
    tabGrid: TTabSheet;
    dbgrMatters: TDBGrid;
    tabFilters: TTabSheet;
    fraEqual: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbPartner: TComboBox;
    cbAuthor: TComboBox;
    cbType: TComboBox;
    fraIncludes: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    tbClient: TEdit;
    tbDesc: TEdit;
    tbOtherParty: TEdit;
    fraLike: TGroupBox;
    Label7: TLabel;
    tbFile: TEdit;
    btnClearAll: TBitBtn;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    Label8: TLabel;
    tbClientSearch: TEdit;
    gbOpened: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    dtpSince: TDateTimePicker;
    dtpBefore: TDateTimePicker;
    Label9: TLabel;
    tbFileSearch: TEdit;
    Label10: TLabel;
    tbArchiveSearch: TEdit;
    tbarMain: TToolBar;
    tbtnRefresh: TToolButton;
    tbtnClearAll: TToolButton;
    ToolButton3: TToolButton;
    tbtnMerge: TToolButton;
    tbtnPrint: TToolButton;
    ToolButton7: TToolButton;
    tbtnHelp: TToolButton;
    ilstToolbar: TImageList;
    mnuMain: TMainMenu;
    mnuFile: TMenuItem;
    mnuRefresh: TMenuItem;
    mnuClearAll: TMenuItem;
    mnuFileLine1: TMenuItem;
    mnuMerge: TMenuItem;
    mnuFilePrint: TMenuItem;
    LabelsAll1: TMenuItem;
    mnuFilePrintLabelSel: TMenuItem;
    mnuFilePrintDetails: TMenuItem;
    mnuFileLine2: TMenuItem;
    mnuFileExit: TMenuItem;
    mnuHelp: TMenuItem;
    mnuHelpContents: TMenuItem;
    mnuHelpSearch: TMenuItem;
    PagReports: TPageControl;
    tabArchiveReport: TTabSheet;
    qrArchives: TQuickRep;
    qrHeader: TQRBand;
    QRSysData1: TQRSysData;
    qrlblCompany: TQRLabel;
    qrlblTitle: TQRLabel;
    QRSysData2: TQRSysData;
    qrchlHeader: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel7: TQRLabel;
    qryTotal: TUniQuery;
    sbarFilter: TStatusBar;
    procedure btnClearAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageSearchChange(Sender: TObject);
    procedure dbgrMattersDblClick(Sender: TObject);
    procedure dbgrMattersColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbClientSearchChange(Sender: TObject);
    procedure tbClientSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbFileSearchChange(Sender: TObject);
    procedure tbArchiveSearchChange(Sender: TObject);
    procedure tabGridShow(Sender: TObject);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tbtnClearAllClick(Sender: TObject);
    procedure tbtnMergeClick(Sender: TObject);
    procedure mnuRefreshClick(Sender: TObject);
    procedure mnuClearAllClick(Sender: TObject);
    procedure mnuMergeClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbPartnerChange(Sender: TObject);
    procedure cbAuthorChange(Sender: TObject);
    procedure cbTypeChange(Sender: TObject);
    procedure dtpSinceChange(Sender: TObject);
    procedure dtpBeforeChange(Sender: TObject);
    procedure tbClientChange(Sender: TObject);
    procedure tbDescChange(Sender: TObject);
    procedure tbOtherPartyChange(Sender: TObject);
    procedure tbFileChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgrMattersTitleClick(Column: TColumn);
    procedure tbtnPrintClick(Sender: TObject);
    procedure mnuFilePrintDetailsClick(Sender: TObject);
    procedure qrArchivesBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    sSQL : string;
    sWhereClause : string;
    sOrderBy : string;
    FLookup: TLookup;
    SaveFilter, SaveConfig: Boolean;
    procedure MakeSQL;
    procedure MakeTitle;
    procedure SearchClear;
    procedure AddTitle(sDescr: string; sValue: string);
  public
    { Public declarations }
  end;

var
  frmArchiveSearch: TfrmArchiveSearch;  

implementation

uses
  AxiomData, MiscFunc, WriteMerge;

{$R *.DFM}

var
  sTitle : string;
//  sLastFileID : string;
  sAND : string;



procedure TfrmArchiveSearch.btnClearAllClick(Sender: TObject);
begin
  cbPartner.Text := '';
  cbAuthor.Text := '';
  cbType.Text := '';
  tbClient.Text := '';
  tbDesc.Text := '';
  tbOtherParty.Text := '';
  tbFile.Text := '';
  SearchClear;
end;

procedure TfrmArchiveSearch.SearchClear;
begin
  tbClientSearch.Text := '';
  tbFileSearch.Text := '';
  tbArchiveSearch.Text := '';
end;

procedure TfrmArchiveSearch.FormShow(Sender: TObject);
begin
  pageSearch.ActivePage := tabGrid;
  SearchClear;
  tabGrid.OnShow(Self);
end;


procedure TfrmArchiveSearch.pageSearchChange(Sender: TObject);
begin
  case pageSearch.ActivePage.TabIndex of
    0: // Back to the Grid page
    begin
      MakeSQL;
    end;
  end;
end;

procedure TfrmArchiveSearch.dbgrMattersDblClick(Sender: TObject);
begin
  ReopenListUpdate('ARCHIVE', qryArchives.FieldByName('FILEID').AsString);
  ModalResult := mrOK;
end;

procedure TfrmArchiveSearch.MakeSQL;
var
  sAND : string;
begin
  // Build the SQL Filter query
  tbClientSearch.Text := '';
  qryArchives.Close;
  sWhereClause := '';
  sAND := ' WHERE ';
  if cbPartner.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'PARTNER = ''' + cbPartner.Text + '''';
    sAND := ' AND ';
  end;
  if cbAuthor.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'AUTHOR = ''' + cbAuthor.Text + '''';
    sAND := ' AND ';
  end;
  if cbType.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'TYPE = ''' + cbType.Text + '''';
    sAND := ' AND ';
  end;
  if tbClient.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'TITLE LIKE ' + QuotedStr('%' + tbClient.Text + '%');
    sAND := ' AND ';
  end;
  if tbDesc.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'LONGDESCR LIKE ' + QuotedStr('%' + tbDesc.Text + '%');
    sAND := ' AND ';
  end;
  if tbOtherParty.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'PARTY1 LIKE ' + QuotedStr('%' + tbOtherParty.Text + '%');
    sAND := ' AND ';
  end;
  if tbFile.Text <> '' then
  begin
    sWhereClause := sWhereClause + sAND + 'FILEID LIKE ' + QuotedStr(tbFile.Text + '%');
    sAND := ' AND ';
  end;
  if dtpSince.Checked then
  begin
    sWhereClause := sWhereClause + sAND + 'ARCHIVED >= :SINCE';
    sAND := ' AND ';
  end;
  if dtpBefore.Checked then
  begin
    sWhereClause := sWhereClause + sAND + 'ARCHIVED < :BEFORE';
    sAND := ' AND ';
  end;

  qryArchives.SQL.Clear;
  qryArchives.SQL.Add(sSQL + sWhereClause + sOrderBy);
  if dtpSince.Checked then
    qryArchives.ParamByName('SINCE').AsDate := Trunc(dtpSince.Date);
  if dtpBefore.Checked then
    qryArchives.ParamByName('BEFORE').AsDate := Trunc(dtpBefore.Date) + 1;
  qryArchives.Open;
  qryTotal.SQL.Text := 'SELECT COUNT(ARCHIVE.NARCHIVE) AS CNT ' + sWhereClause;
  if dtpSince.Checked then
    qryTotal.ParamByName('SINCE').AsDate := Trunc(dtpSince.Date);
  if dtpBefore.Checked then
    qryTotal.ParamByName('BEFORE').AsDate := Trunc(dtpBefore.Date) + 1;
  //pb 29/12/2001
  {
  qryTotal.Open;
  sbarFilter.Panels[pnlARCHIVES].Text := qryTotal.FieldByName('CNT').AsString + ' Archive';
  if qryTotal.FieldByName('CNT').AsInteger <> 1 then
    sbarFilter.Panels[pnlARCHIVES].Text := sbarFilter.Panels[pnlARCHIVES].Text + 's';
  qryTotal.Close;
  }
  MakeTitle;
  if sTitle <> 'Archived Matters' then
    sbarFilter.Panels[pnlFILTER].Text := 'Filter = ' + sTitle
  else
    sbarFilter.Panels[pnlFILTER].Text := 'Not Filtered';
 // with TfrmWaitAnimate.Create(Self) do
  begin
    //Show;
    //qryArchives.Locate('FILEID', sLastFileID, [loCaseInsensitive]);
    //Release;
  end;
end;

procedure TfrmArchiveSearch.dbgrMattersColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
var
  bFinished : Boolean;
  iCtr : Integer;
  sComma : string;
begin
  SaveConfig := True;

  qryArchives.Close;
  sOrderBy := 'ORDER BY';
  sComma := ' ';
  bFinished := False;
  iCtr := 0;
  while (iCtr < dbgrMatters.Columns.Count) and (not bFinished) do
  begin
    sOrderBy := sOrderBy + sComma + dbgrMatters.Columns[iCtr].FieldName;
    if (dbgrMatters.Columns[iCtr].FieldName = 'FILEID') or (dbgrMatters.Columns[iCtr].FieldName = 'NMATTER') then
      bFinished := True;
    iCtr := iCtr + 1;
    sComma := ', ';
  end;
  qryArchives.SQL.Clear;
  qryArchives.SQL.Add(sSQL + sWhereClause + sOrderBy);
  qryArchives.Open;
end;

procedure TfrmArchiveSearch.btnOKClick(Sender: TObject);
begin
  ReopenListUpdate('ARCHIVE', qryArchives.FieldByName('FILEID').AsString);
end;

procedure TfrmArchiveSearch.FormCreate(Sender: TObject);
var
  iTmp, iCtr: integer;
  sTmp: string;
begin

  sSQL := 'SELECT FILEID, TITLE, LONGDESCR, NMATTER, PARTNER, AUTHOR, TYPE, NARCHIVE FROM ARCHIVE ';
  sOrderBy := ' ORDER BY TITLE, LONGDESCR, FILEID';

  iTmp := SettingLoadInteger('ARCHIVE SEARCH', 'HEIGHT');
  if iTmp <> 0 then
    Self.Height := iTmp;
  iTmp := SettingLoadInteger('ARCHIVE SEARCH', 'WIDTH');
  if iTmp <> 0 then
    Self.Width := iTmp;

  cbAuthor.Items := dmAxiom.Employees;
  cbPartner.Items := dmAxiom.Employees;
  StringPopulate(cbType.Items, 'MATTERTYPE', 'CODE');
  cbPartner.Text := SettingLoadString('Archive Search', 'Partner');
  cbAuthor.Text := SettingLoadString('Archive Search', 'Author');
  cbType.Text := SettingLoadString('Archive Search', 'Type');
  tbClient.Text := SettingLoadString('Archive Search', 'Client');
  tbDesc.Text := SettingLoadString('Archive Search', 'Descr');
  tbOtherParty.Text := SettingLoadString('Archive Search', 'Other Party');
  tbFile.Text := SettingLoadString('Archive Search', 'FileID');
  case SettingLoadInteger('Archive Search', 'Lookup') of
    0 : FLookup := luUnassigned;
    1 : FLookup := luClient;
    2 : FLookup := luFileID;
    3 : FLookup := luArchiveID;
  end;

  for iCtr := 0 to dbgrMatters.Columns.Count - 1 do
  begin
    sTmp := SettingLoadString('ARCHIVE SEARCH', 'COLUMN' + IntToStr(iCtr));
    if sTmp <> '' then
      dbgrMatters.Columns[iCtr].FieldName := sTmp;
    sTmp := SettingLoadString('ARCHIVE SEARCH', 'COLUMNTITLE' + IntToStr(iCtr));
    if sTmp <> '' then
      dbgrMatters.Columns[iCtr].Title.Caption := sTmp;
    iTmp := SettingLoadInteger('ARCHIVE SEARCH', 'COLUMNWIDTH' + IntToStr(iCtr));
    if iTmp <> 0 then
      dbgrMatters.Columns[iCtr].Width := iTmp;
  end;

  if SettingLoadBoolean(dmAxiom.UserID, 'ARCHIVE SEARCH', 'MAXIMIZED') then
    Self.WindowState := wsMaximized
  else
  begin
    iTmp := SettingLoadInteger(dmAxiom.UserID, 'ARCHIVE SEARCH', 'WIDTH');
    if iTmp <> 0 then
      Self.Width := iTmp;
    iTmp := SettingLoadInteger(dmAxiom.UserID, 'ARCHIVE SEARCH', 'HEIGHT');
    if iTmp <> 0 then
      Self.Height := iTmp;
  end;

  MakeSQL;
  SaveFilter := False;
  SaveConfig := False;
  
end;


procedure TfrmArchiveSearch.tbClientSearchChange(Sender: TObject);
var
  iSel : integer;
begin
  FLookup := luClient;
  if tbClientSearch.Text <> '' then
  begin
    iSel := tbClientSearch.SelStart;
    tbClientSearch.Text := FirstCap(tbClientSearch.Text);
    tbClientSearch.SelStart := iSel;
  end;
  if tbClientSearch.Text <> '' then
    qryArchives.Locate('TITLE', tbClientSearch.Text, [loPartialKey]);
end;

procedure TfrmArchiveSearch.tbClientSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN: qryArchives.Next;
    VK_UP: qryArchives.Prior;
    VK_NEXT: qryArchives.MoveBy(10);
    VK_PRIOR: qryArchives.MoveBy(-10);
    VK_HOME: qryArchives.First;
    VK_END: qryArchives.Last;
  end;
end;

procedure TfrmArchiveSearch.tbFileSearchChange(Sender: TObject);
begin
  FLookup := luFileID;
  if tbFileSearch.Text <> '' then
    qryArchives.Locate('FILEID', tbFileSearch.Text, [loPartialKey]);
end;

procedure TfrmArchiveSearch.tbArchiveSearchChange(Sender: TObject);
begin
  FLookup := luArchiveID;
  if tbArchiveSearch.Text <> '' then
    qryArchives.Locate('NARCHIVE', tbArchiveSearch.Text, [loPartialKey]);
end;

procedure TfrmArchiveSearch.tabGridShow(Sender: TObject);
begin
  case FLookup of
    luUnassigned, luClient: Self.ActiveControl := tbClientSearch;
    luFileID: Self.ActiveControl := tbFileSearch;
    luArchiveID: Self.ActiveControl := tbArchiveSearch;
  end;
end;

procedure TfrmArchiveSearch.tbtnRefreshClick(Sender: TObject);
begin
  qryArchives.Close;
  qryArchives.Open;
end;

procedure TfrmArchiveSearch.tbtnClearAllClick(Sender: TObject);
begin
  btnClearAll.Click;
  MakeSQL;
end;

procedure TfrmArchiveSearch.tbtnMergeClick(Sender: TObject);
var
  sTmpSQL : string;
begin
  with TfrmWriteMerge.Create(Self) do
  begin
    sTmpSQL := 'SELECT ARCHIVED, NARCHIVE, OPENED, PARTNER, AUTHOR, RATE, FILEID, ARCHIVE.TITLE AS CLIENT, PARTY1, PARTY2, PARTY3, SHORTDESCR, LONGDESCR, OFFICE, BILL_TO' + ', LASTTRANS, LASTTRUST, REFERREDBY, NOTES, CONTACT, OPREF, PHONEBOOK.*  FROM ARCHIVE, PHONEBOOK  ' + sWhereClause;
    if sWhereClause = '' then
      sTmpSQL := sTmpSQL + ' WHERE '
    else
      sTmpSQL := sTmpSQL + ' AND ';
    sTmpSQL := sTmpSQL + ' ARCHIVE.NCLIENT = PHONEBOOK.NCLIENT ';
    SQL := sTmpSQL;
    AddSortField('SEARCH');
    AddSortField('SHORTDESCR');
    AddSortField('FILEID');
    Show;
  end;
end;



procedure TfrmArchiveSearch.mnuRefreshClick(Sender: TObject);
begin
  tbtnRefresh.Click;
end;

procedure TfrmArchiveSearch.mnuClearAllClick(Sender: TObject);
begin
  tbtnClearAll.Click;
end;

procedure TfrmArchiveSearch.mnuMergeClick(Sender: TObject);
begin
  tbtnMerge.Click;
end;

procedure TfrmArchiveSearch.FormDestroy(Sender: TObject);
var
  iCtr: integer;
begin
  if SaveFilter then
  begin
    SettingSave('Archive Search', 'Partner', cbPartner.Text);
    SettingSave('Archive Search', 'Author', cbAuthor.Text);
    SettingSave('Archive Search', 'Type', cbType.Text);
    SettingSave('Archive Search', 'Client', tbClient.Text);
    SettingSave('Archive Search', 'Descr', tbDesc.Text);
    SettingSave('Archive Search', 'Other Party', tbOtherParty.Text);
    SettingSave('Archive Search', 'FileID', tbFile.Text);
    SettingSave('Archive Search', 'Lookup', Ord(FLookup));
  end;
  if SaveConfig then
  begin
    if Self.WindowState = wsMaximized then
      SettingSave('ARCHIVE SEARCH', 'MAXIMIZED', True)
    else
    begin
      SettingDelete('ARCHIVE SEARCH', 'MAXIMIZED');
      SettingSave('ARCHIVE SEARCH', 'HEIGHT', Self.Height);
      SettingSave('ARCHIVE SEARCH', 'WIDTH', Self.Width);
    end;

    for iCtr := 0 to dbgrMatters.Columns.Count - 1 do
    begin
      SettingSave('ARCHIVE SEARCH', 'COLUMN' + IntToStr(iCtr), dbgrMatters.Columns[iCtr].FieldName);
      SettingSave('ARCHIVE SEARCH', 'COLUMNTITLE' + IntToStr(iCtr), dbgrMatters.Columns[iCtr].Title.Caption);
      SettingSave('ARCHIVE SEARCH', 'COLUMNWIDTH' + IntToStr(iCtr), dbgrMatters.Columns[iCtr].Width);
    end;
  end;
end;

procedure TfrmArchiveSearch.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Self.ModalResult = mrOK then
  begin
    if tbFileSearch.Text <> '' then
      if tbFileSearch.Text <> Copy(qryArchives.FieldByName('FILEID').AsString, 1, Length(tbFileSearch.Text)) then
      begin
        MsgInfo('The Archived Matter number being searched on does not match the Archived Matter located.' + #13#13 +
                'You may need to clear the filter or refresh the Archived Matters displayed,' + #13 +
                'or the Matter may not be archived.');
        CanClose := False;
      end;
    if CanClose then
      ReopenListUpdate('ARCHIVE', qryArchives.FieldByName('FILEID').AsString)
    else
      tbFileSearch.SelectAll;
  end;
end;

procedure TfrmArchiveSearch.cbPartnerChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.cbAuthorChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.cbTypeChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.dtpSinceChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.dtpBeforeChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.tbClientChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.tbDescChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.tbOtherPartyChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.tbFileChange(Sender: TObject);
begin
  SaveFilter := True;
end;

procedure TfrmArchiveSearch.FormResize(Sender: TObject);
begin
  SaveConfig := True;
end;

procedure TfrmArchiveSearch.dbgrMattersTitleClick(Column: TColumn);
begin
  SaveConfig := True;
end;

procedure TfrmArchiveSearch.tbtnPrintClick(Sender: TObject);
begin
  qrArchives.PreviewModal;
end;


procedure TfrmArchiveSearch.mnuFilePrintDetailsClick(Sender: TObject);
begin
  tbtnPrint.Click;
end;

procedure TfrmArchiveSearch.qrArchivesBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlblCompany.Caption := SystemString('COMPANY');
  MakeTitle;
  qrlblTitle.Caption := sTitle;
end;


procedure TfrmArchiveSearch.MakeTitle;
begin
  sTitle := 'Archived Matters';
  sAnd := ' for ';
  AddTitle('Partner', cbPartner.Text);
  //AddTitle('Controller', cbController.Text);
  AddTitle('Author', cbAuthor.Text);
  AddTitle('Type', cbType.Text);
  //AddTitle('Branch', cbBranch.Text);
  AddTitle('Client containing', tbClient.Text);
  AddTitle('Description containing', tbDesc.Text);
  AddTitle(' containing', tbOtherParty.Text);
  //AddTitle('Contact containing', tbContact.Text);
  AddTitle('File Number like', tbFile.Text);
  //AddTitle('Client Code like', tbClientCode.Text);
  if dtpSince.Checked and dtpBefore.Checked then
    AddTitle('Matters Archived between', FormatDateTime('ddddd', dtpSince.Date) + ' and ' + FormatDateTime('ddddd', dtpBefore.Date))
  else if dtpSince.Checked then
    AddTitle('Matters Archived since', FormatDateTime('ddddd', dtpSince.Date))
  else if dtpBefore.Checked then
    AddTitle('Matters Archived before', FormatDateTime('ddddd', dtpBefore.Date));
  {if chkOnlyCurrent.Checked then
    AddTitle('Only current', 'Matters');
  if dtpCompletedSince.Checked and dtpCompletedBefore.Checked then
    AddTitle('Matters completed between', FormatDateTime('ddddd', dtpCompletedSince.Date) + ' and ' + FormatDateTime('ddddd', dtpCompletedBefore.Date))
  else if dtpCompletedSince.Checked then
    AddTitle('Matters completed since', FormatDateTime('ddddd', dtpCompletedSince.Date))
  else if dtpCompletedBefore.Checked then
    AddTitle('Matters completed before', FormatDateTime('ddddd', dtpOpenedBefore.Date));
  if neWIP.AsCurrency <> 0 then
    AddTitle('WIP >', neWIP.Text);
  if neDebtors.AsCurrency <> 0 then
    AddTitle('Debtors >', neDebtors.Text);
  if neDisb.AsCurrency <> 0 then
    AddTitle('Disbursements >', neDisb.Text);
  if neFeesBilled.AsCurrency <> 0 then
    AddTitle('Fees Billed >', neFeesBilled.Text);
  if neFeesRecvd.AsCurrency <> 0 then
    AddTitle('Fees Received >', neFeesRecvd.Text);
  if neSund.AsCurrency <> 0 then
    AddTitle('Sundries >', neSund.Text);
  if neTrust.AsCurrency <> 0 then
    AddTitle('Trust >', neTrust.Text);
  if neClearTrust.AsCurrency <> 0 then
    AddTitle('Cleared Trust >', neClearTrust.Text);}
end;


procedure TfrmArchiveSearch.AddTitle(sDescr : string; sValue : string);
begin
  if sValue <> '' then
  begin
    sTitle := sTitle + sAnd + sDescr + ' '  + sValue;
    sAnd := ' and ';
  end;
end;  


end.

