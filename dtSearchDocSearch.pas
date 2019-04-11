unit dtSearchDocSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxProgressBar, cxGridCustomTableView,
  cxGridTableView, cxControls, cxGridCustomView, dxBar, cxClasses,
  cxGridLevel, cxGrid, cxPC, dxStatusBar, cxContainer, cxTextEdit,
  cxCheckBox, cxSpinEdit, FMXUtils, cxLabel, cxMaskEdit,
  cxDropDownEdit, ComCtrls, StdCtrls, cxGroupBox, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxNavigator,
  dtengine_TLB, Vcl.Buttons, Vcl.ExtCtrls, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, DBAccess,
  Uni, MemDS, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,
  cxDBEdit, dxDateRanges;

type
  TfrmdtSearch = class(TForm)
    dxBarManager1: TdxBarManager;
    btnClose: TdxBarButton;
    pagdtSearch: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grddtDocs: TcxGrid;
    tvdtDocs: TcxGridTableView;
    tvdtDocsTitle: TcxGridColumn;
    tvdtDocsHits: TcxGridColumn;
    tvdtDocsFilename: TcxGridColumn;
    tvdtDocsRelevance: TcxGridColumn;
    grddtDocsLevel1: TcxGridLevel;
    statusBar: TdxStatusBar;
    tvdtDocsRelevanceNo: TcxGridColumn;
    tvdtDocsDocumentNo: TcxGridColumn;
    tvdtDocsMatter: TcxGridColumn;
    Panel1: TPanel;
    FuzzySearching: TCheckBox;
    PhonicSearching: TCheckBox;
    Stemming: TCheckBox;
    NaturalLanguage: TCheckBox;
    MatchFilename: TCheckBox;
    Label3: TLabel;
    edtFilenameLike: TcxTextEdit;
    Label4: TLabel;
    edContains: TcxTextEdit;
    btnSearch: TBitBtn;
    rgSearchfor: TRadioGroup;
    gbCreated: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    dtpCreatedSince: TDateTimePicker;
    dtpCreatedBefore: TDateTimePicker;
    Versiontext: TLabel;
    Label1: TLabel;
    lkupIndex: TcxLookupComboBox;
    qrySearchIndex: TUniQuery;
    dsSearchIndex: TUniDataSource;
    procedure pagdtSearchChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure Init();
    procedure btnSearchClick(Sender: TObject);
    procedure tvdtDocsDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    m_IServer: IServer;
    FSorted: boolean;
    FTextSearch: string;
    FChosenIndexPath: String;
    function GetRelevanceValueIndex(ARelevance: Integer): Integer;
    procedure DoSearch;
    procedure SetTextField(sSearchText: string);
  public
    { Public declarations }
    stopped: boolean;
    m_fInit: boolean;
    m_ISearchJob: ISearchJob;
    m_IWordListBuilder: IWordListBuilder;
    m_IFileConverter: IFileConverter;
    m_IResults: ISearchResults;

    property TextSearch: string read FTextSearch write SetTextField;
  end;

var
  frmdtSearch: TfrmdtSearch;

implementation

uses
  AxiomData, miscfunc, cxVariants, System.UITypes;

type
  RelevanceBoundary = record
    Lower,
    Upper : Integer;
  end;

const

  RelevanceBounds : array [1..4] of RelevanceBoundary = (
    (Lower: 0;  Upper: 49),   // RelevanceIndexInterest
    (Lower: 50; Upper: 79),   // RelevanceIndexLow
    (Lower: 80; Upper: 99),   // RelevanceIndexMedium
    (Lower: 100; Upper: 100)  // RelevanceIndexHigh
    );

  RelevanceIndexInterest  = 1;
  RelevanceIndexLow       = 2;
  RelevanceIndexMedium    = 3;
  RelevanceIndexHigh      = 4;

  // The index ascends in relevance like the relevance number.
  RelevanceDescription: Array[1..4] of string = (
    'Relevance: May be of interest',
    'Relevance: Low Relevance',
    'Relevance: Medium Relevance',
    'Relevance: Most Relevant' );

{$R *.dfm}

procedure TfrmdtSearch.pagdtSearchChange(Sender: TObject);
begin
  case pagdtSearch.ActivePageIndex of
    0:
      DoSearch;
    1:
      FSorted := False;
  end;
end;

procedure TfrmdtSearch.DoSearch;
  procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
  begin
    tvdtDocs.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
  end;

const
  dtsSearchTypeAnyWords = $20000;
  dtsSearchTypeAllWords = $40000;
var
  i: Integer;
begin
  Self.Cursor := crHourGlass;
  Application.ProcessMessages;

  Init();

  with tvdtDocs.DataController do
  begin
    BeginUpdate;
    try
      while RecordCount > 0 do
        DeleteRecord(0);
    finally
      EndUpdate;
    end;
  end;

  m_ISearchJob.IndexesToSearch := FChosenIndexPath;
  m_ISearchJob.Request := edContains.Text;
  case rgSearchfor.ItemIndex of
    0: m_ISearchJob.SearchFlags := dtsSearchTypeAnyWords;
    1: m_ISearchJob.SearchFlags := dtsSearchTypeAllWords;
  end;

  m_ISearchJob.ResultsInMemory := true;
  if (FuzzySearching.Checked) then
    m_ISearchJob.Fuzziness := 3
  else
    m_ISearchJob.Fuzziness := 0;
  m_ISearchJob.PhonicSearching := PhonicSearching.Checked;
  m_ISearchJob.Stemming := Stemming.Checked;
  m_ISearchJob.NaturalLanguage := NaturalLanguage.Checked;
  if (MatchFilename.Checked) then
    m_ISearchJob.FileConditions := 'xfilter(name "' +
       edtFilenameLike.Text + '")'
  else
    m_ISearchJob.FileConditions := '';

  stopped := False;

  m_ISearchJob.Execute();

  m_IResults := m_ISearchJob.Results as ISearchResults;

  if (m_IResults <> nil) then
  begin
    try
      tvdtDocs.BeginUpdate();
      for i := 0 to (m_IResults.Count - 1) do
      begin
        m_IResults.GetNthDoc(i);
        tvdtDocs.DataController.AppendRecord;
        begin
          SetRecordValue(i, tvdtDocsTitle.Index,
             Trim(ExtractFileName(m_IResults.DocName)));
          SetRecordValue(i, tvdtDocsHits.Index, m_IResults.DocHitCount);
          SetRecordValue(i, tvdtDocsFilename.Index, m_IResults.DocName);
          // ToDo: Find where these come from now.
          // At the moment, I don't know.
{
          SetRecordValue(I, tvdtDocsRelevance.Index, IntToStr(dcb.Relevance));
          SetRecordValue(I, tvdtDocsRelevanceNo.Index, IntToStr(dcb.Relevance));
          SetRecordValue(I, tvdtDocsDocumentNo.Index, IntToStr(i));
          SetRecordValue(I, tvdtDocsMatter.Index, TableString('DOC','path', string(filePath), 'fileid'));
}
        end;
      end;
    finally
      tvdtDocs.EndUpdate;
    end;
  end;
  Self.Cursor := crDefault;
  Application.ProcessMessages;
end;

procedure TfrmdtSearch.FormCreate(Sender: TObject);
var
  currDir: string;
begin
  try
    m_IServer := CoServer.Create();
    GetDir(0, currDir);
    m_IServer.HomeDir := currDir;
    m_IServer.PrivateDir := currDir;

    m_IServer.Initialize();
    if (not m_IServer.Initialized) then
    begin
      MessageDlg('Initialization failed', mtError, [mbOk], 0);
    end
    else
      Versiontext.Caption := Format('%d.%d (%d)', [m_IServer.MajorVersion, m_IServer.MinorVersion, m_IServer.Build]);
  except
    on e: exception do
      raise exception.Create(e.message + #13 + #10 +
         'Document Searching not setup.' + #13 + #10 +
         'Please contact BHL Insight.');
  end;
end;

procedure TfrmdtSearch.FormShow(Sender: TObject);
begin
  qrySearchIndex.ParamByName('UserID').AsString := dmAxiom.UserID;
  qrySearchIndex.Open;
  qrySearchIndex.First;
  while not qrySearchIndex.Eof do
  begin
    if qrySearchIndex.FieldByName('DefaultIndex').AsString = 'Y' then
      break;
    qrySearchIndex.Next;
  end;

  lkupindex.EditValue := qrySearchIndex.FieldByName('NDocIndex').AsString;
end;

procedure TfrmdtSearch.SetTextField(sSearchText: string);
begin
  FTextSearch := sSearchText;
  edContains.Text := sSearchText;
end;

procedure TfrmdtSearch.btnSearchClick(Sender: TObject);
begin
  DoSearch;
end;

procedure TfrmdtSearch.cxLookupComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  FChosenIndexPath := qrySearchIndex.FieldByName('Location').AsString;
end;

procedure TfrmdtSearch.btnCloseClick(Sender: TObject);
begin
  Close;
end;

function TfrmdtSearch.GetRelevanceValueIndex(ARelevance: Integer): Integer;
begin
  Result := RelevanceIndexInterest; // default to the lowest level of interest.
  case ARelevance of
    100:
      Result := RelevanceIndexHigh;
    80 .. 99:
      Result := RelevanceIndexMedium;
    50 .. 79:
      Result := RelevanceIndexLow;
    0 .. 49:
      Result := RelevanceIndexInterest;
  end;
end;

procedure TfrmdtSearch.tvdtDocsDblClick(Sender: TObject);
var
  AHandle: THandle;
  DocErrMsg: string;
begin
  DocErrMsg := '';
  AHandle := ExecuteFile(tvdtDocsFilename.EditValue, '', '.', SW_SHOWNORMAL,
     DocErrMsg);
  if (AHandle < 33) then
    MsgInfo('Unable to open Document. - ' + DocErrMsg);
end;

procedure TfrmdtSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RemoveFromDesktop(Self);
end;

procedure TfrmdtSearch.Init();
begin
  if (not m_fInit) then
  begin
    m_ISearchJob := Self.m_IServer.NewSearchJob as ISearchJob;
    m_IWordListBuilder := Self.m_IServer.NewWordListBuilder as IWordListBuilder;
    m_IFileConverter := Self.m_IServer.NewFileConverter as IFileConverter;
    m_fInit := true;
  end;
end;

end.
