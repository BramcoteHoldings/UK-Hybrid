unit quickmatter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, cxDBEdit,
  cxButtonEdit, StdCtrls, ComCtrls, DBCtrls, cxPC, ExtCtrls, Mask,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxCalendar, cxMemo, ImgList, cxLookAndFeels, DB, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS,
  DBAccess, OraSmart, SyncObjs, cxCheckBox;

type
  TLikeData = class(TCollectionItem)
  public
    NName: Integer;
    Search,
    SuburbState: String;
  end;

  TLikeThread = class(TThread)
  private
    FQuery: TUniQuery;
    FSearchEvent: THandle;
    FTerminateEvent: THandle;
    FSearch: String;
    FData: TCollection;
    FUpdateDisplayMsg: Cardinal;
    FDisplayWindowHandle: THandle;
    FCS: TCriticalSection;
    FLockOut: Boolean;
    FMasterNName: Integer;
    procedure SetSession(const Value: TUniConnection);
    procedure SetSearch(const Value: String);
    procedure TerminateEvent(Sender: TObject);

  public
    constructor Create();
    destructor Destroy(); override;
    procedure Execute; override;

    function PopulateList(AList: TListBox; ANName: Integer): Integer;

    property OraSession:TUniConnection write SetSession;
    property Search: String read FSearch write SetSearch;
    property UpdateDisplayMsg: Cardinal read FUpdateDisplayMsg write FUpdateDisplayMsg;
    property DisplayWindowHandle: THandle read FDisplayWindowHandle write FDisplayWindowHandle;
    property MasterNName: Integer read FMasterNName write FMasterNName;
  end;

  TfrmQuickMatter = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pbConvertClientFromPhonebook: TcxButton;
    lNamed: TLabel;
    lGender: TLabel;
    cbGender: TcxDBLookupComboBox;
    lSalutation: TLabel;
    eSalutation: TDBEdit;
    eGivenNames: TDBEdit;
    lGivenNames: TLabel;
    lLastName: TLabel;
    eLastName: TDBEdit;
    lName: TLabel;
    eName: TDBEdit;
    eShortName: TDBEdit;
    eLongName: TDBEdit;
    lLongName: TLabel;
    lShortName: TLabel;
    Bevel1: TBevel;
    eSearch: TcxDBTextEdit;
    lSearch: TLabel;
    lSearchMatches: TLabel;
    lbSearchMatches: TListBox;
    lTotalConflicts: TLabel;
    Label14: TLabel;
    Bevel2: TBevel;
    grpAddress: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lStreetAddress: TLabel;
    lStreetSuburb: TLabel;
    lStreetState: TLabel;
    lStreetPostCode: TLabel;
    lStreetCountry: TLabel;
    mStreetAddress: TDBRichEdit;
    ckStreetDefault: TCheckBox;
    eStreetSuburb: TcxDBButtonEdit;
    cbStreetState: TcxDBComboBox;
    eStreetPostCode: TDBEdit;
    cbStreetCountry: TcxDBComboBox;
    btnCopyStreetAddress: TcxButton;
    cxTabSheet2: TcxTabSheet;
    lPostalAddress: TLabel;
    lPostalSuburb: TLabel;
    lPostalState: TLabel;
    lPostalPostCode: TLabel;
    lPostalCountry: TLabel;
    mPostalAddress: TDBRichEdit;
    ePostalSuburb: TcxDBButtonEdit;
    cbPostalState: TcxDBComboBox;
    ePostalPostCode: TDBEdit;
    cbPostalCountry: TcxDBComboBox;
    btnCopyPostalAddress: TcxButton;
    ckPostalDefault: TCheckBox;
    grpMatterDtls: TcxGroupBox;
    lblMatterNo: TLabel;
    lblType: TLabel;
    lblDesc: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    lblSubType: TLabel;
    lblDept: TLabel;
    cbType: TcxDBLookupComboBox;
    cmbSubType: TcxDBLookupComboBox;
    dbcbluBranch: TcxDBLookupComboBox;
    dbtbShortDescr: TcxDBTextEdit;
    dbmmoLongDescr: TcxDBMemo;
    dtpOpen: TcxDBDateEdit;
    dbtbFileID: TcxDBTextEdit;
    cbDepartment: TcxDBLookupComboBox;
    lblTrustBank: TLabel;
    cmbBank: TcxDBLookupComboBox;
    lblEstFee: TLabel;
    dbtbEstFee: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ImageList1: TImageList;
    qPhoneBook: TUniQuery;
    dsPhoneBook: TUniDataSource;
    qryMatter: TUniQuery;
    dsMatter: TUniDataSource;
    qGender: TUniQuery;
    qGenderCODE: TStringField;
    qGenderDESCR: TStringField;
    qGenderSEARCHCAPTION: TStringField;
    qGenderNAMECAPTION: TStringField;
    qGenderLONGNAMECAPTION: TStringField;
    qGenderSHORTNAMECAPTION: TStringField;
    qGenderTITLECAPTION: TStringField;
    qGenderACNCAPTION: TStringField;
    qGenderOCCUPATIONCAPTION: TStringField;
    qGenderCLIENTNAMECAPTION: TStringField;
    qGenderCLIENTCONTACTCAPTION: TStringField;
    qGenderSALUTATIONCAPTION: TStringField;
    dsGender: TDataSource;
    lACN: TLabel;
    eACN: TDBEdit;
    Bevel3: TBevel;
    popCopyPostalAddress: TPopupMenu;
    CopyStreetAddressToCustomAddress: TMenuItem;
    CopyPostalAddressToCustomAddress: TMenuItem;
    popCopyStreetAddress: TPopupMenu;
    CopyToPostalAddress: TMenuItem;
    CopyToCustomAddress: TMenuItem;
    lblCostsAgreement: TLabel;
    cmbCostsAgreement: TcxDBLookupComboBox;
    chkPrintCostsAgreement: TcxCheckBox;
    qryWorkflowDoctemplate: TUniQuery;
    dsWorkflowDoctemplate: TUniDataSource;
    qryMatterType: TUniQuery;
    dsMatterType: TUniDataSource;
    qryMatterSubType: TUniQuery;
    dsMatterSubType: TUniDataSource;
    dsEntityBranches: TUniDataSource;
    qEntityBranches: TUniQuery;
    qEntityBranchesCODE: TStringField;
    qEntityBranchesENTITY: TStringField;
    qEntityBranchesDESCR: TStringField;
    qryDepartment: TUniQuery;
    dsDepartment: TUniDataSource;
    dsBanks: TUniDataSource;
    qryBanks: TUniQuery;
    procedure cbGenderPropertiesChange(Sender: TObject);
    procedure eLastNameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dbtbFileIDEnter(Sender: TObject);
    procedure dbtbFileIDExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pbConvertClientFromPhonebookClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FLastEnteredName: String;
    FLikeThread: TLikeThread;
    FUpdateDisplayMsg: Cardinal;
    FNMatter: Integer;
    FNClient: Integer;
    FNName: Integer;

    function MakeSearch: String;
  public
    { Public declarations }
  end;

var
  frmQuickMatter: TfrmQuickMatter;

implementation

uses AxiomData, miscfunc, NSearch, citfunc;

{$R *.dfm}


procedure TfrmQuickMatter.cbGenderPropertiesChange(Sender: TObject);
begin
  lSalutation.Caption := qGender.FieldByName('SALUTATIONCAPTION').AsString  + ':';
  lName.Caption       := qGender.FieldByName('NAMECAPTION').AsString        + ':';
  lNamed.Caption      := qGender.FieldByName('TITLECAPTION').AsString       + ':';
  lShortName.Caption  := qGender.FieldByName('SHORTNAMECAPTION').AsString   + ':';
  lLongName.Caption   := qGender.FieldByName('LONGNAMECAPTION').AsString    + ':';
  lSearch.Caption     := qGender.FieldByName('SEARCHCAPTION').AsString      + ':';
  lACN.Caption        := qGender.FieldByName('ACNCAPTION').AsString         + ':';
//  lOccupation.Caption := qGender.FieldByName('OCCUPATIONCAPTION').AsString  + ':';
end;

procedure TfrmQuickMatter.eLastNameChange(Sender: TObject);
var
  LLast: String;
begin
  if(dsPhoneBook.State in [dsEdit, dsInsert]) then
  begin
    if eLastName.Text <> '' then
    begin
       LLast := FLastEnteredName;
       if((eName.Text = LLast) or (Length(eName.Text) = 0)) then
       begin
         FLastEnteredName := Trim(eSalutation.Text + ' ' + eGivenNames.Text + ' ' + eLastName.Text);
         qPhoneBook.FieldByName('NAME').AsString := FLastEnteredName;
       end;
 
       qPhoneBook.FieldByName('TITLE').AsString := FLastEnteredName;

       FLikeThread.Search := MakeSearch();
    end;
  end;
end;

const
  C_SELECTLIKE =
    'SELECT '#13#10 +
    '  p.nname, '#13#10 +
    '  p.search, '#13#10 +
    '  DECODE( '#13#10 +
    '    DECODE(p.whichaddress,NULL,NVL(P.whichaddress,m.whichaddress),p.whichaddress), '#13#10 +
    '    ''S'', TRIM( '#13#10 +
    '          NVL(p.suburb, m.suburb) || '#13#10 +
    '       DECODE(NVL(p.suburb, m.suburb),NULL,'''', '', '') || '#13#10 +
    '       NVL(p.state, m.state)), '#13#10 +
    '    ''P'', TRIM( '#13#10 +
    '         NVL(p.postalsuburb, m.postalsuburb) || '#13#10 +
    '       DECODE(NVL(p.postalsuburb, m.postalsuburb),NULL,'''', '', '') || '#13#10 +
    '       NVL(p.postalstate, m.postalstate)), '#13#10 +
    '     TRIM( '#13#10 +
    '         NVL(p.suburb, m.suburb) || '#13#10 +
    '       DECODE(NVL(p.suburb, m.suburb),NULL,'''', '', '') || '#13#10 +
    '       NVL(p.state, m.state))) '#13#10 +
    '    AS suburbstate '#13#10 +
    'FROM '#13#10 +
    '  phonebook p, '#13#10 +
    '  phonebook m '#13#10 +
    'WHERE '#13#10 +
    '  UPPER(p.search) LIKE UPPER(:search) '#13#10 +
    'AND '#13#10 +
    '  p.nnamemaster = m.nname(+) '#13#10 +
    'ORDER BY UPPER(p.search)';

constructor TLikeThread.Create();
begin
  inherited Create(True);
  FData := TCollection.Create(TLikeData);
  FQuery := TUniQuery.Create(nil);
  FCS := TCriticalSection.Create();

  FQuery.SQL.Text := C_SELECTLIKE;
  FSearchEvent    := CreateEvent(nil,False,False,nil);
  FTerminateEvent := CreateEvent(nil,False,False,nil);
  FreeOnTerminate := True;
  OnTerminate := TerminateEvent;
end;

destructor TLikeThread.Destroy;
begin
  FreeAndNil(FData);
  CloseHandle(FSearchEvent);
  CloseHandle(FTerminateEvent);
  FreeAndNil(FQuery);
  FreeAndNil(FCS);
  inherited;
end;

procedure TLikeThread.Execute;
var
  LHandles: TWOHandleArray;
  Lrv: DWORD;
  LLikeData: TLikeData;
begin
  LHandles[0] := FTerminateEvent;
  LHandles[1] := FSearchEvent;
  Lrv := WaitForMultipleObjects(2,@LHandles,False,INFINITE);

  while(not (Lrv in [WAIT_OBJECT_0, WAIT_ABANDONED_0,WAIT_ABANDONED_0])) do
  begin
    if(Lrv = WAIT_OBJECT_0 + 1) then
    begin
//      FCS.Enter();
      try
        if(FLockOut) then
          Sleep(10);
        FData.Clear();
        if(Trim(Search) > '') then
        begin
          FQuery.ParamByName('search').AsString := Search + '%';
          FQuery.Open();
          try
            while(not FQuery.Eof) do
            begin
              LLikeData := TLikeData(FData.Add());
              LLikeData.NName := FQuery.FieldByName('nname').AsInteger;
              LLikeData.Search := FQuery.FieldByName('search').AsString;
              LLikeData.SuburbState := FQuery.FieldByName('suburbstate').AsString;
              if(FData.Count > 100) then
                Break;
              FQuery.Next();
            end;
          finally
            FQuery.Close();
          end;
        end;
      finally
//        FCS.Leave();
      end;
      PostMessage(DisplayWindowHandle,UpdateDisplayMsg,0,FData.Count);
    end;
    Lrv := WaitForMultipleObjects(2,@LHandles,False,INFINITE);
  end;
end;

function TLikeThread.PopulateList(AList: TListBox; ANName: Integer): Integer;
var
  i: Integer;
  LLikeData: TLikeData;
begin
  FCS.Enter();
  FLockOut := True;
  try
    AList.Items.BeginUpdate();
    try
      AList.Items.Clear();
      for i := 0 to FData.Count - 1 do
      begin
        LLikeData := TLikeData(FData.Items[i]);
        if(LLikeData.NName <> ANName) then
          AList.Items.AddObject(IntToStr(LLikeData.NName) + ' ' +  LLikeData.Search + #09 + LLikeData.SuburbState,Pointer(LLikeData.NName));
      end;
    finally
      AList.Items.EndUpdate();
    end;
  finally
    FCS.Leave();
    FLockOut := False;
  end;
  Result := AList.Items.Count;
end;

procedure TLikeThread.SetSearch(const Value: String);
begin
  FCS.Enter();
  try
    if(FSearch <> Value) then
    begin
      FSearch := Value;
      SetEvent(FSearchEvent);
    end;
  finally
    FCS.Leave();
  end;
end;

procedure TLikeThread.SetSession(const Value: TUniConnection);
begin
  FQuery.Session := Value;
end;

procedure TLikeThread.TerminateEvent(Sender: TObject);
begin
  SetEvent(FTerminateEvent);
end;


procedure TfrmQuickMatter.FormCreate(Sender: TObject);
begin
  FUpdateDisplayMsg := RegisterWindowMessage('CM_AXIOMATION_UPDATEPBDISPLAY');
  FLikeThread := TLikeThread.Create();
  FLikeThread.UpdateDisplayMsg := FUpdateDisplayMsg;
  FLikeThread.DisplayWindowHandle := Handle;
  FLikeThread.Resume();
  qGender.Open;
  qryDepartment.Open;
  qryMatterType.Open;
  qryMatterSubType.Open;
  qEntityBranches.Open;
end;

function TfrmQuickMatter.MakeSearch(): String;
var
  LStr: String;
begin
   try
      if(eName.Text = FLastEnteredName) then
      begin
        if(eSalutation.Text = '') then
          LStr := eLastName.Text + ', ' + eGivenNames.Text
        else
          Lstr := eLastName.Text + ', ' + eSalutation.Text + ' ' + eGivenNames.Text;
      end else
        LStr := eName.Text;

      if(Length(Lstr) > 0) and (LStr[1] = ',') then
        LStr := Copy(LStr,2,Length(LStr));
      if(Length(Lstr) > 0) and (LStr[Length(Lstr)] = ',') then
        LStr := Copy(LStr,1,Length(LStr) - 1);

      Result := Trim(LStr);
   except
   //
   end;
end;

procedure TfrmQuickMatter.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmQuickMatter.dbtbFileIDEnter(Sender: TObject);
begin
   dbtbFileID.Style.Color := clWindow;
   if dbtbFileID.Text = AUTO_CAPTION then
   begin
      dbtbFileID.Text := '';
      qryMatter.FieldByName('fileid').AsString := '';
   end;
end;

procedure TfrmQuickMatter.dbtbFileIDExit(Sender: TObject);
begin
  if dbtbFileID.Text = '' then
  begin
    dbtbFileID.Text := AUTO_CAPTION;
    dbtbFileID.Style.Color := clInactiveCaption;
  end;
end;

procedure TfrmQuickMatter.cxButton2Click(Sender: TObject);
begin
   if dbmmoLongDescr.Text = '' then
      qryMatter.FieldByName('LONGDESCR').AsString := dbtbShortDescr.Text;
   FNMATTER := GetMatter;
end;

procedure TfrmQuickMatter.FormShow(Sender: TObject);
begin
//   FNMATTER := GetMatter;
  qPhonebook.Open;
  qPhonebook.Append;
   try
      {if qryBanks.RecordCount = 1 then }
      cmbBank.EditValue := dmAxiom.DefaultTrustBank;
   except
      //  nothing there
   end;
end;

procedure TfrmQuickMatter.pbConvertClientFromPhonebookClick(
  Sender: TObject);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   frmPhoneBookSearch.SelectingCLients := False;
   if(frmPhoneBookSearch.ShowModal() = mrOk) then
   begin
      if (frmPhoneBookSearch.NClient > 0) then
         MsgInfo('Selected entry is a client.  Clients cannot be converted to Creditors.')
      else
      begin
         FNName := frmPhoneBookSearch.NName;
         FNClient := 0;
         pbConvertClientFromPhonebook.Enabled := False;
      end;
   end;
end;

procedure TfrmQuickMatter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qGender.Close;
  qryDepartment.Close;
  qryMatterType.Close;
  qryMatterSubType.Close;
  qEntityBranches.Close;
  qPhonebook.Close;
end;

end.
