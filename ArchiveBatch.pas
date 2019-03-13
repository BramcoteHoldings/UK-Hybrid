unit ArchiveBatch;

interface

uses
  Matters, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Db, Buttons, NumberEdit, ImgList, ToolWin,
  ExtCtrls, MemDS, Ora, OracleUniProvider, Uni, MatterLabel, DBAccess, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDesignLayer,
  ppParameter, System.ImageList;

const
  idxFINISHBTN = 1;
  idxNEXTBTN = 2;
  idxBACKBTN = 3;

type
  TLookup = (luUnassigned, luClient, luFileID);

  TfrmArchiveBatch = class(TForm)
    ilstToolbar: TImageList;
    pagReports: TPageControl;
    tabMatterRpt: TTabSheet;
    Panel1: TPanel;
    pagWizard: TPageControl;
    tabArchiveMatters: TTabSheet;
    tabWizard: TTabSheet;
    pnWizard: TPanel;
    pnAutoInvWizardLeft: TPanel;
    imWizard: TImage;
    pnAutoInvWizardBtn: TPanel;
    btnFinish: TButton;
    btnNext: TButton;
    btnBack: TButton;
    pnAutoInvWizardBottom: TPanel;
    pagArchiveWizard: TPageControl;
    tabAuthorsSelect: TTabSheet;
    lbInfoMsg0: TLabel;
    gbAuthors: TGroupBox;
    lbAuthorsAll: TListBox;
    lbAuthorsSelected: TListBox;
    btnAuthorAll: TBitBtn;
    btnAuthorSelect: TBitBtn;
    btnAuthorUnselect: TBitBtn;
    btnAuthorNone: TBitBtn;
    tabClientsSelect: TTabSheet;
    lbInfoMsg1: TLabel;
    gbClients: TGroupBox;
    lblClientDescr: TLabel;
    lbClientsAll: TListBox;
    lbClientsSelected: TListBox;
    btnClientAll: TBitBtn;
    btnClientSelect: TBitBtn;
    btnClientUnselect: TBitBtn;
    btnClientNone: TBitBtn;
    tabFinalToArchive: TTabSheet;
    lblInfoMsg5: TLabel;
    qryAuthors: TUniQuery;
    qryAuthorsCODE: TStringField;
    qryClients: TUniQuery;
    dsClients: TUniDataSource;
    dsAuthors: TUniDataSource;
    dsArchivals: TUniDataSource;
    qryArchivals: TUniQuery;
    tabStart: TTabSheet;
    tabFinalArchived: TTabSheet;
    cbSkipSteps: TCheckBox;
    lblInfoMsg2: TLabel;
    rgWizardChoice: TRadioGroup;
    lblInfoMsg3: TLabel;
    lblInfoMsg4: TLabel;
    gbMatterSpecific: TGroupBox;
    cbDeleteDocs: TCheckBox;
    cbDeleteDiary: TCheckBox;
    gbPrintDetails: TGroupBox;
    cbPrint: TCheckBox;
    cbPrintLabel: TCheckBox;
    cbPrintCombo: TCheckBox;
    cbPrintTrust: TCheckBox;
    lblInfoMsg6: TLabel;
    cbPrintAADetails: TGroupBox;
    cbPrintAA: TCheckBox;
    cbPrintAALabel: TCheckBox;
    cbPrintAACombo: TCheckBox;
    cbPrintAATrust: TCheckBox;
    gbSelectCriteria: TGroupBox;
    cbUsePrevious: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dtpStart: TDateTimePicker;
    dtpEnd: TDateTimePicker;
    nedStartNo: TNumberEdit;
    nedEndNo: TNumberEdit;
    qryArchives: TUniQuery;
    dsArchives: TUniDataSource;
    pnMattersButtons: TPanel;
    pnMattersSplitter: TPanel;
    pnMatterClient: TPanel;
    dbgrMatters: TDBGrid;
    btnPrint: TBitBtn;
    btnArchive: TBitBtn;
    btnWizard: TBitBtn;
    qryTmp: TUniQuery;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnWizardNavClick(Sender: TObject);
    procedure rgWizardChoiceClick(Sender: TObject);
    procedure cbPrintClick(Sender: TObject);
    procedure cbPrintKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPrintAAClick(Sender: TObject);
    procedure cbPrintAAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbUsePreviousClick(Sender: TObject);
    procedure cbUsePreviousKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbClientsAllClick(Sender: TObject);
    procedure lbClientsAllKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnArchiveClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnWizardClick(Sender: TObject);
    procedure cbPrintAALabelClick(Sender: TObject);
    procedure cbPrintAALabelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPrintAAComboClick(Sender: TObject);
    procedure cbPrintAAComboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPrintAATrustClick(Sender: TObject);
    procedure cbPrintAATrustKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAuthorSelectClick(Sender: TObject);
    procedure btnAuthorAllClick(Sender: TObject);
    procedure btnAuthorUnselectClick(Sender: TObject);
    procedure btnAuthorNoneClick(Sender: TObject);
    procedure btnClientAllClick(Sender: TObject);
    procedure btnClientSelectClick(Sender: TObject);
    procedure btnClientUnselectClick(Sender: TObject);
    procedure btnClientNoneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FWizardInProg: Boolean;
    MatterLabel: TMatterLabel;
    function AuthorsSQL: string;
    function ClientsSQL: string;
    procedure ArchiveWizardChange(Sender: TObject);
    procedure MakeArchiveSQL;
    procedure MakeSQL;
    procedure MakeClientSQL;
    procedure PrintLabel(NMatter: Integer = 0; FinalPrint: Boolean = True);
    procedure PrintComboLedger(FileID: string);
    procedure PrintTrustLedger(FileID: string);
    procedure ShowNoMattersMsg;
  public
    { Public declarations }
  end;

var
  frmArchiveBatch: TfrmArchiveBatch;

implementation

uses
  AxiomData, MiscFunc, RptLedgerCombo, WaitAnimate, RptLedgerTrust, Archival;

{$R *.DFM}

var
  sAnd: string = ' AND ';

function TfrmArchiveBatch.AuthorsSQL: string;
var
  iCtr: Integer;
  sOR: string;
begin
  sOR := '';
  Result := '';
  if (lbAuthorsAll.Items.Count > 0) and (lbAuthorsSelected.Items.Count > 0) then
  begin
    sOR := '';
    Result := Result + sAND + '(';
    for iCtr := 0 to lbAuthorsSelected.Items.Count - 1 do
    begin
      Result := Result + sOR + '(M.AUTHOR = ' + QuotedStr(lbAuthorsSelected.Items.Strings[iCtr]) + ')';
      sOR := ' OR '
    end;
    Result := Result + ')';
  end;
end;


function TfrmArchiveBatch.ClientsSQL: string;
var
  iCtr: Integer;
  sOR: string;
begin
  sOR := '';
  Result := '';
  if (lbClientsAll.Items.Count > 0) and (lbClientsSelected.Items.Count > 0) then
  begin
    sOR := '';
    Result := Result + sAND + '(';
    for iCtr := 0 to lbClientsSelected.Items.Count - 1 do
    begin
      Result := Result + sOR + '(M.TITLE = ' + QuotedStr(lbClientsSelected.Items.Strings[iCtr]) + ')';
      sOR := ' OR '
    end;
    Result := Result + ')';
  end;
end;


procedure TfrmArchiveBatch.FormShow(Sender: TObject);
begin
  Self.Caption := 'Matter Archive Wizard';
  pagWizard.ActivePage := tabWizard;
  pagArchiveWizard.ActivePage := tabStart;
  btnBack.Enabled := False;

  qryAuthors.Open;
  ListBoxSetupData(lbAuthorsAll, dsAuthors, 'CODE');
end;


procedure TfrmArchiveBatch.MakeArchiveSQL;
begin
  with qryArchives do
  begin
    // Build the SQL Filter query
    Close;
    SQL.Clear;
    SQL.Add('SELECT A.*');
    SQL.Add('FROM ARCHIVE A');
    if (nedStartNo.AsInteger <> 0) or (nedEndNo.AsInteger <> 0) or (dtpStart.Checked) or (dtpEnd.Checked)then
    begin
      SQL.Add('WHERE');
      if (nedStartNo.AsInteger <> 0) then
        SQL.Add('A.NARCHIVE >= '+IntToStr(nedStartNo.AsInteger)+' AND');
      if (nedEndNo.AsInteger <> 0) then
        SQL.Add('A.NARCHIVE <= '+IntToStr(nedEndNo.AsInteger)+' AND');
      if (dtpStart.Checked) then
        SQL.Add('A.ARCHIVED >= :DateFrom AND');
      if (dtpEnd.Checked) then
        SQL.Add('A.ARCHIVED < :DateTo AND');
      if Copy(SQL.Text, Length(SQL.Text)-5, 4) = ' AND' then
        SQL.Text := Copy(SQL.Text, 1, Length(SQL.Text)-5);
      if (dtpStart.Checked) then
        ParamByName('DateFrom').AsDate := Trunc(dtpStart.Date);
      if (dtpEnd.Checked) then
        ParamByName('DateTo').AsDate := Trunc(dtpEnd.Date+1);
    end;
    Open;
  end;
end;

procedure TfrmArchiveBatch.MakeSQL;
var
  sWhereClause: string;
begin
  sWhereClause := AuthorsSQL+ClientsSQL;
  if Copy(sWhereClause, Length(sWhereClause)-4, 5) = ' AND ' then
    sWhereClause := Copy(sWhereClause, 1, Length(sWhereClause)-4);

  with qryArchivals do
  begin
    // Build the SQL Filter query
    // need to revist this as it is not the best way of doing it ???
    // the most complicated query I have ever written
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('SELECT DISTINCT M.*');
    {$IFDEF DEVELOPMENT}
    SQL.Add('FROM MATTER M');  //for local development as query takes too long to execute locally
    {$ELSE}
    SQL.Add('FROM MATTER M, ALLOC A, CHEQUE C, NMEMO N');
    {$ENDIF}
    SQL.Add('WHERE ');
    if (not SettingLoadBoolean('sys', 'MATTER', 'ARCHIVEUNCLOSED')) then
      SQL.Add('(M.COMPLETED IS NOT NULL) AND ');
    SQL.Add('      ((M.DEBTORS = 0) OR M.DEBTORS IS NULL)');
    SQL.Add('  AND ((M.UNBILL_FEES = 0) OR M.UNBILL_FEES IS NULL)');
    SQL.Add('  AND ((M.UNBILL_SUND = 0) OR M.UNBILL_SUND IS NULL)');
    SQL.Add('  AND ((M.UNBILL_DISB = 0) OR M.UNBILL_DISB IS NULL)');
    SQL.Add('  AND ((M.UNBILL_ANTD = 0) OR M.UNBILL_ANTD IS NULL)');
    SQL.Add('  AND ((M.TRUST_BAL = 0) OR M.TRUST_BAL IS NULL)');
    {$IFNDEF DEVELOPMENT}
    SQL.Add('  AND (M.FILEID = A.FILEID(+))');
    SQL.Add('  AND ((A.NCHEQUE > 0) OR (A.NCHEQUE IS NULL) OR (A.NRECEIPT > 0) OR (A.NJOURNAL > 0))');
    SQL.Add('  AND (A.NCHEQUE = C.NCHEQUE(+))');
    if not SettingLoadBoolean('sys', 'MATTER', 'ALLOWCLOSEUNPRESENTED') then
      SQL.Add('  AND ((C.PRESENTED IS NOT NULL) OR (0 = (SELECT COUNT(*) FROM CHEQUE WHERE NCHEQUE = A.NCHEQUE)))');
    SQL.Add('  AND ((0 = (SELECT SUM(AMOUNT) FROM CHEQREQ WHERE FILEID = M.FILEID AND CONVERTED <> ''Y'')) OR (0 = (SELECT COUNT(AMOUNT) FROM CHEQREQ WHERE FILEID = M.FILEID AND CONVERTED <> ''Y'')))');
    SQL.Add('  AND (M.NMATTER = N.NMATTER(+))');
    SQL.Add('  AND (N.IS_DRAFT <> ''N'' OR N.REFNO IS NULL)');
    {$ENDIF}
    SQL.Add(sWhereClause);
    SQL.Add(')');
    SQL.Add('ORDER BY AUTHOR');
    Open;
  end;
end;

procedure TfrmArchiveBatch.MakeClientSQL;
var
  sWhereClause : string;
begin
  // build the client filter query
  sWhereClause := AuthorsSQL;
  if Copy(sWhereClause, Length(sWhereClause)-4, 5) = ' AND ' then
    sWhereClause := Copy(sWhereClause, 1, Length(sWhereClause)-4);

  with qryClients do
  begin
    // need to revist this as it is not the best way of doing it ???
    // the most complicated query I have ever written
    SQL.Clear;
    SQL.Add('SELECT DISTINCT(M.FILEID)');
    {$IFDEF DEVELOPMENT}
    SQL.Add('FROM MATTER M');  //for local development as query takes too long to execute locally
    {$ELSE}
    SQL.Add('FROM MATTER M, ALLOC A, CHEQUE C, NMEMO N');
    {$ENDIF}
    SQL.Add('WHERE ');
    if (not SettingLoadBoolean('sys', 'MATTER', 'ARCHIVEUNCLOSED')) then
      SQL.Add('(M.COMPLETED IS NOT NULL) AND ');
    SQL.Add('      ((M.DEBTORS = 0) OR M.DEBTORS IS NULL)');
    SQL.Add('  AND ((M.UNBILL_FEES = 0) OR M.UNBILL_FEES IS NULL)');
    SQL.Add('  AND ((M.UNBILL_SUND = 0) OR M.UNBILL_SUND IS NULL)');
    SQL.Add('  AND ((M.UNBILL_DISB = 0) OR M.UNBILL_DISB IS NULL)');
    SQL.Add('  AND ((M.UNBILL_ANTD = 0) OR M.UNBILL_ANTD IS NULL)');
    SQL.Add('  AND ((M.TRUST_BAL = 0) OR M.TRUST_BAL IS NULL)');
    {$IFNDEF DEVELOPMENT}
    SQL.Add('  AND (M.FILEID = A.FILEID(+))');
    SQL.Add('  AND ((A.NCHEQUE > 0) OR (A.NCHEQUE IS NULL) OR (A.NRECEIPT > 0) OR (A.NJOURNAL > 0))');
    SQL.Add('  AND (A.NCHEQUE = C.NCHEQUE(+))');
    if not SettingLoadBoolean('sys', 'MATTER', 'ALLOWCLOSEUNPRESENTED') then
      SQL.Add('  AND ((C.PRESENTED IS NOT NULL) OR (0 = (SELECT COUNT(*) FROM CHEQUE WHERE NCHEQUE = A.NCHEQUE)))');
    SQL.Add('  AND ((0 = (SELECT SUM(AMOUNT) FROM CHEQREQ WHERE FILEID = M.FILEID AND CONVERTED <> ''Y'')) OR (0 = (SELECT COUNT(AMOUNT) FROM CHEQREQ WHERE FILEID = M.FILEID AND CONVERTED <> ''Y'')))');
    SQL.Add('  AND M.NMATTER = N.NMATTER(+)');
    SQL.Add('  AND (N.IS_DRAFT <> ''N'' OR N.REFNO IS NULL)');
    {$ENDIF}
    SQL.Add(sWhereClause);
    Open;
    if IsEmpty then
      ShowNoMattersMsg;
  end;
end;

procedure TfrmArchiveBatch.PrintLabel(NMatter: Integer = 0; FinalPrint: Boolean = True);
begin
  if MatterLabel = nil then
    MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
  if not MatterLabel.Cancelled then
    MatterLabel.Print(NMatter);
end;


procedure TfrmArchiveBatch.PrintComboLedger(FileID: string);
begin
  with TfrmRptLedgerCombo.Create(Self) do
  begin
    LoadArchive(FileID);
    {$IFNDEF DEVELOPMENT}
    Print(True);
    {$ELSE}
    Print(False);
    {$ENDIF}
    Free;
  end;
end;


procedure TfrmArchiveBatch.PrintTrustLedger(FileID: string);
begin
  with TfrmRptLedgerTrust.Create(Self) do
  begin
    LoadArchive(FileID);
    {$IFNDEF DEVELOPMENT}
    Print(True);
    {$ELSE}
    Print(False);
    {$ENDIF}
    Free;
  end;
end;


procedure TfrmArchiveBatch.ShowNoMattersMsg;
begin
  MessageDlg('There are no matters for archiving that satisfy the criteria you have specified!'+
    #13#10+'                   Use the Back button to redefine your filter.',
    mtWarning, [mbOK], 0);
end;


procedure TfrmArchiveBatch.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmArchiveBatch.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   MatterLabel.Free;
   qryArchivals.Close;
end;

procedure TfrmArchiveBatch.ArchiveWizardChange(Sender: TObject);
begin
  case pagArchiveWizard.ActivePage.Tag of
    1: // Start page
    begin
      btnFinish.Enabled := False;
      btnBack.Enabled := False;
      btnNext.Enabled := True;
    end;
    2: // Authors Select page
    begin
      if (rgWizardChoice.ItemIndex = 0) and (cbSkipSteps.Checked) then
      begin
        pagArchiveWizard.ActivePage := tabFinalToArchive;
        ArchiveWizardChange(Self);
      end
      else if (rgWizardChoice.ItemIndex = 1) then
      begin
        pagArchiveWizard.ActivePage := tabFinalArchived;
        ArchiveWizardChange(Self);
      end
      else
      begin
        btnBack.Enabled := True;
        btnNext.Enabled := True;
        FWizardInProg := False;
      end;
    end;
    3: // Clients Select page
    begin
      btnFinish.Enabled := False;
      with TfrmWaitAnimate.Create(Self) do
      begin
        Show;
        MakeClientSQL();
        Release;
      end;
      if not(FWizardInProg) then
      begin
        lbClientsAll.Clear;
        lbClientsSelected.Clear;
        ListBoxSetupData(lbClientsAll, dsClients, 'FILEID');
        FWizardInProg := True;
      end;
      lblClientDescr.Caption := '';
      btnBack.Enabled := True;
      btnNext.Enabled := True;
    end;
    4: // FinalToArchive page
    begin
      btnFinish.Enabled := True;
      if (rgWizardChoice.ItemIndex = 1) then
      begin
        pagArchiveWizard.ActivePage := tabStart;
        ArchiveWizardChange(Self);
      end
      else
      begin
        btnBack.Enabled := True;
        btnNext.Enabled := False;
      end;
    end;
    5: // FinalArchived page
    begin
      btnFinish.Enabled := True;
      btnBack.Enabled := True;
      btnNext.Enabled := False;
    end;
  end;
end;


procedure TfrmArchiveBatch.btnWizardNavClick(Sender: TObject);
var
  Page: TTabSheet;
begin
  case TButton(Sender).Tag of
    idxFINISHBTN:
    begin
      btnPrint.Enabled := False;
      btnArchive.Enabled := True;
      if pagArchiveWizard.ActivePage.Tag = 4 then {the FinalToArchive page}
      begin
        with TfrmWaitAnimate.Create(Self) do
        begin
          Show;
          MakeSQL();
          Release;
        end;
        Self.Caption := 'Matter Selection for Archiving';
        dbgrMatters.DataSource := dsArchivals;
      end
      else
      begin
        btnPrint.Enabled := True;
        btnArchive.Enabled := False;
        with TfrmWaitAnimate.Create(Self) do
        begin
          Show;
          MakeArchiveSQL();
          Release;
        end;
        dbgrMatters.DataSource := dsArchives;
        Self.Caption := 'Matters Archived for printing';
      end;
      pagWizard.ActivePage := tabArchiveMatters;
      //tbarMain.Visible := True;
    end;
    else
    begin
      Page := pagArchiveWizard.FindNextPage(pagArchiveWizard.ActivePage, TButton(Sender).Name = 'btnNext', False);
      pagArchiveWizard.ActivePage := Page;
      ArchiveWizardChange(Self);
    end;
  end;
end;

procedure TfrmArchiveBatch.rgWizardChoiceClick(Sender: TObject);
begin
  case rgWizardChoice.ItemIndex of
    0:
    begin
      lblInfoMsg2.Visible := True;
      lblInfoMsg3.Visible := True;
      lblInfoMsg4.Visible := False;
      cbSkipSteps.Visible := True;
    end;
    1:
    begin
      lblInfoMsg2.Visible := False;
      lblInfoMsg3.Visible := False;
      lblInfoMsg4.Visible := True;
      lblInfoMsg4.Top := lblInfoMsg2.Top;
      cbSkipSteps.Visible := False;
    end;
  end;
end;

procedure TfrmArchiveBatch.cbPrintClick(Sender: TObject);
begin
  if cbPrint.Checked then
  begin
    cbPrintLabel.Enabled := False;
    cbPrintCombo.Enabled := False;
    cbPrintTrust.Enabled := False;
  end
  else
  begin
    cbPrintLabel.Enabled := True;
    cbPrintCombo.Enabled := True;
    cbPrintTrust.Enabled := True;
  end;
end;

procedure TfrmArchiveBatch.cbPrintKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_SPACE then
    cbPrintClick(nil);
end;

procedure TfrmArchiveBatch.cbPrintAAClick(Sender: TObject);
begin
  cbPrint.Checked := cbPrintAA.Checked;
  if cbPrintAA.Checked then
  begin
    cbPrintAALabel.Enabled := False;
    cbPrintAACombo.Enabled := False;
    cbPrintAATrust.Enabled := False;
  end
  else
  begin
    cbPrintAALabel.Enabled := True;
    cbPrintAACombo.Enabled := True;
    cbPrintAATrust.Enabled := True;
  end;
end;

procedure TfrmArchiveBatch.cbPrintAAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_SPACE then
    cbPrintAAClick(nil);
end;

procedure TfrmArchiveBatch.cbUsePreviousClick(Sender: TObject);
begin
  if cbUsePrevious.Checked then
  begin
    nedStartNo.AsInteger := SettingLoadInteger('ARCHIVEBATCH', 'LASTSTARTNO');
    nedEndNo.AsInteger := SettingLoadInteger('ARCHIVEBATCH', 'LASTENDNO');
    nedStartNo.Enabled := False;
    nedEndNo.Enabled := False;
    dtpStart.Enabled := False;
    dtpEnd.Enabled := False;
  end
  else
  begin
    nedStartNo.Enabled := True;
    nedEndNo.Enabled := True;
    dtpStart.Enabled := True;
    dtpEnd.Enabled := True;
  end;
end;

procedure TfrmArchiveBatch.cbUsePreviousKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  cbUsePreviousClick(nil);
end;

procedure TfrmArchiveBatch.lbClientsAllClick(Sender: TObject);
begin
  lblClientDescr.Caption := TListBox(Sender).Items.Strings[TListBox(Sender).ItemIndex];
end;

procedure TfrmArchiveBatch.lbClientsAllKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) or (Key = VK_UP) then
    lbClientsAllClick(nil);
end;

procedure TfrmArchiveBatch.btnArchiveClick(Sender: TObject);

  procedure SaveArchiveSetting(Setting: string);
  begin
    qryTmp.SQL.Text := 'SELECT NEXTARCHIVE FROM SYSTEMFILE';
    qryTmp.Open;
    SettingSave('ARCHIVEBATCH', Setting, qryTmp.FieldByName('NEXTARCHIVE').AsInteger);
    qryTmp.Close;
  end;

begin
  with qryArchivals do
  begin
    SaveArchiveSetting('LASTSTARTNO');
    First;
    while not Eof do
    begin
      try
        with TfrmArchival.Create(Self) do
        begin
          ArchiveMatter(FieldByName('FILEID').AsString);
          Free;
        end;
      except
        on E:Exception do
        begin
          MessageDlg('Please report this error to your network administrator.'+#13#10+E.Message, mtError, [mbOK], 0);
        end;
      end;
      if not(cbPrint.Checked) then
      begin
        if cbPrintLabel.Checked then
          PrintLabel(FieldByName('NMATTER').AsInteger, not SettingLoadBoolean('MATTERLABEL', 'COLLATELABLES'));
        if cbPrintCombo.Checked then
          PrintComboLedger(FieldByName('FILEID').AsString);
        if cbPrintTrust.Checked then
          PrintTrustLedger(FieldByName('FILEID').AsString);
      end;
      Next;
    end;
    SaveArchiveSetting('LASTENDNO');
  end;
  if SettingLoadBoolean('MATTERLABEL', 'COLLATELABLES') then
    PrintLabel;
  Close;
end;

procedure TfrmArchiveBatch.btnPrintClick(Sender: TObject);
begin
  //qrMatters.PreviewModal;
  with qryArchives do
  begin
    First;
    while not Eof do
    begin
      if not(cbPrint.Checked) then
      begin
        if cbPrintLabel.Checked then
          PrintLabel(FieldByName('NMATTER').AsInteger, not SettingLoadBoolean('MATTERLABEL', 'COLLATELABLES'));
        if cbPrintCombo.Checked then
          PrintComboLedger(FieldByName('FILEID').AsString);
        if cbPrintTrust.Checked then
          PrintTrustLedger(FieldByName('FILEID').AsString);
      end;
      Next;
    end;
  end;
  if (SettingLoadBoolean('MATTERLABEL', 'COLLATELABLES')) and (cbPrintLabel.Checked) then
    PrintLabel;
  Close;
end;

procedure TfrmArchiveBatch.btnWizardClick(Sender: TObject);
begin
  pagWizard.ActivePage := tabWizard;
end;

procedure TfrmArchiveBatch.cbPrintAALabelClick(Sender: TObject);
begin
  cbPrintLabel.Checked := cbPrintAALabel.Checked;
end;

procedure TfrmArchiveBatch.cbPrintAALabelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then
    cbPrintAALabelClick(nil);
end;

procedure TfrmArchiveBatch.cbPrintAAComboClick(Sender: TObject);
begin
  cbPrintCombo.Checked := cbPrintAACombo.Checked;
end;

procedure TfrmArchiveBatch.cbPrintAAComboKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then
    cbPrintAAComboClick(nil);
end;

procedure TfrmArchiveBatch.cbPrintAATrustClick(Sender: TObject);
begin
  cbPrintTrust.Checked := cbPrintAATrust.Checked;
end;

procedure TfrmArchiveBatch.cbPrintAATrustKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then
    cbPrintAATrustClick(nil);
end;

procedure TfrmArchiveBatch.btnAuthorSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbAuthorsAll, lbAuthorsSelected);
end;

procedure TfrmArchiveBatch.btnAuthorAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbAuthorsAll, lbAuthorsSelected);
end;

procedure TfrmArchiveBatch.btnAuthorUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbAuthorsSelected, lbAuthorsAll);
end;

procedure TfrmArchiveBatch.btnAuthorNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbAuthorsSelected, lbAuthorsAll);
end;

procedure TfrmArchiveBatch.btnClientAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbClientsAll, lbClientsSelected);
end;

procedure TfrmArchiveBatch.btnClientSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbClientsAll, lbClientsSelected);
end;

procedure TfrmArchiveBatch.btnClientUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbClientsSelected, lbClientsAll);
end;

procedure TfrmArchiveBatch.btnClientNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbClientsSelected, lbClientsAll);
end;

procedure TfrmArchiveBatch.FormCreate(Sender: TObject);
begin
  dtpStart.Date := Date;
  dtpStart.Checked := False;
  dtpEnd.Date := Date;
  dtpEnd.Checked := False;
end;

end.

