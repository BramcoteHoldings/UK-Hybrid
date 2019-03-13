unit AutoInv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ComCtrls, ToolWin, Buttons, ImgList, NumberEdit,
  ExtCtrls, OraSmart, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, DBAccess;

type
  TfrmAutoInv = class(TForm)
    ilstToolbar: TImageList;
    qryMatters: TUniQuery;
    dsMatters: TUniDataSource;
    qryTypes: TUniQuery;
    dsTypes: TUniDataSource;
    qryAuthors: TUniQuery;
    dsAuthors: TUniDataSource;
    qryAutoGen: TUniQuery;
    dsAutoGen: TUniDataSource;
    qryNew: TUniQuery;
    qryMatter: TUniQuery;
    pnMain: TPanel;
    qryClients: TUniQuery;
    dsClients: TUniDataSource;
    pnAutoInvWizardLeft: TPanel;
    imWizard: TImage;
    pnAutoInvWizardBtn: TPanel;
    btnFinish: TButton;
    btnNext: TButton;
    btnBack: TButton;
    pnAutoInvWizardBottom: TPanel;
    pagAutoInvWizard: TPageControl;
    tabGeneralSelect: TTabSheet;
    lbInfoMsg0: TLabel;
    Label3: TLabel;
    gbTypes: TGroupBox;
    lbTypesAll: TListBox;
    lbTypesSelected: TListBox;
    btnTypeAll: TBitBtn;
    btnTypeSelect: TBitBtn;
    btnTypeUnselect: TBitBtn;
    btnTypeNone: TBitBtn;
    gbAuthors: TGroupBox;
    lbAuthorsAll: TListBox;
    lbAuthorsSelected: TListBox;
    btnAuthorAll: TBitBtn;
    btnAuthorSelect: TBitBtn;
    btnAuthorUnselect: TBitBtn;
    btnAuthorNone: TBitBtn;
    gbPartners: TGroupBox;
    lbPartnersAll: TListBox;
    lbPartnersSelected: TListBox;
    btnPartnerAll: TBitBtn;
    btnPartnerSelect: TBitBtn;
    btnPartnerUnselect: TBitBtn;
    btnPartnerNone: TBitBtn;
    tbBillingPlan: TEdit;
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
    tabBillingDetails: TTabSheet;
    lbInfoMsg3: TLabel;
    tabFinal: TTabSheet;
    cbTemplate: TCheckBox;
    edCustomTemplate: TEdit;
    odlgFile: TOpenDialog;
    cbAutoPost: TCheckBox;
    gbMattersSelect: TGroupBox;
    lbMattersAll: TListBox;
    Label1: TLabel;
    btnMatterAll: TBitBtn;
    btnMatterSelect: TBitBtn;
    btnMatterUnselect: TBitBtn;
    btnMatterNone: TBitBtn;
    lbMattersSelected: TListBox;
    Label2: TLabel;
    lbInfoMsg4: TLabel;
    lblMatterDescr: TLabel;
    gbBillingDetails: TGroupBox;
    cbFees: TCheckBox;
    cbDisb: TCheckBox;
    cbAntD: TCheckBox;
    cbSundries: TCheckBox;
    nedSundriesBal: TNumberEdit;
    nedAntDBal: TNumberEdit;
    nedDisbBal: TNumberEdit;
    nedFeesBal: TNumberEdit;
    btnBillTemplate: TBitBtn;
    lblInfoMsg5: TLabel;
    cbNoPrint: TCheckBox;
    qryMattersTITLE: TStringField;
    qryMattersFILEID: TStringField;
    qryMattersSHORTDESCR: TStringField;
    qryMattersNMATTER: TFloatField;
    qryMattersTYPE: TStringField;
    qryMattersAUTHOR: TStringField;
    qryMattersPARTNER: TStringField;
    qryMattersBILLING_PLAN: TStringField;
    qryMattersUNBILL_FEES: TFloatField;
    qryMattersUNBILL_DISB: TFloatField;
    qryMattersUNBILL_ANTD: TFloatField;
    qryMattersUNBILL_SUND: TFloatField;
    qryTypesCODE: TStringField;
    qryAuthorsCODE: TStringField;
    qryAutoGenFILEID: TStringField;
    qryAutoGenAMOUNT: TFloatField;
    qryAutoGenDESCR: TStringField;
    qryAutoGenEVERY: TStringField;
    qryAutoGenLASTRUN: TDateTimeField;
    qryAutoGenLASTMODIFIED: TDateTimeField;
    qryAutoGenAUTHOR: TStringField;
    qryAutoGenDEPT: TStringField;
    qryAutoGenUPDATEON: TDateTimeField;
    qryAutoGenBANK: TStringField;
    qryAutoGenFREQ: TIntegerField;
    qryAutoGenTYPE: TStringField;
    qryAutoGenLEDGER: TStringField;
    qryAutoGenPAYEE: TStringField;
    qryAutoGenSUNDRYTYPE: TStringField;
    qryAutoGenFINISH: TDateTimeField;
    qryAutoGenROWID: TStringField;
    qryMattersTitleFile: TStringField;
    procBillCreate: TUniStoredProc;
    procedure qryMattersCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnMatterAllClick(Sender: TObject);
    procedure btnMatterNoneClick(Sender: TObject);
    procedure btnMatterSelectClick(Sender: TObject);
    procedure btnMatterUnselectClick(Sender: TObject);
    procedure btnTypeAllClick(Sender: TObject);
    procedure btnTypeNoneClick(Sender: TObject);
    procedure btnTypeSelectClick(Sender: TObject);
    procedure btnTypeUnselectClick(Sender: TObject);
    procedure btnAuthorAllClick(Sender: TObject);
    procedure btnAuthorNoneClick(Sender: TObject);
    procedure btnAuthorSelectClick(Sender: TObject);
    procedure btnAuthorUnselectClick(Sender: TObject);
    procedure btnPartnerAllClick(Sender: TObject);
    procedure btnPartnerNoneClick(Sender: TObject);
    procedure btnPartnerSelectClick(Sender: TObject);
    procedure btnPartnerUnselectClick(Sender: TObject);
    procedure btnClearFilterClick(Sender: TObject);
    procedure tbtnProcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnWizardClick(Sender: TObject);
    procedure btnClientAllClick(Sender: TObject);
    procedure btnClientSelectClick(Sender: TObject);
    procedure btnClientUnselectClick(Sender: TObject);
    procedure btnClientNoneClick(Sender: TObject);
    procedure lbClientsClick(Sender: TObject);
    procedure lbClientsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTemplateClick(Sender: TObject);
    procedure cbTemplateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbMattersClick(Sender: TObject);
    procedure lbMattersSelectedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbFeesClick(Sender: TObject);
    procedure cbFeesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBillTemplateClick(Sender: TObject);
  private
    FWizardInProg: Boolean;
    function BillingPlanSQL: string;
    function TypesSQL: string;
    function AuthorsSQL: string;
    function PartnersSQL: string;
    function ClientsSQL: string;
    procedure MakeClientSQL;
    procedure MakeSQL;
    procedure MakeInvoices;
    procedure ShowNoMattersMsg;
    procedure AutoInvWizardChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmAutoInv: TfrmAutoInv;
  sAnd: string = ' AND ';

implementation

uses
  MiscFunc, Bills, AxiomData, Process, GenericSearch, WaitAnimate;

{$R *.DFM}

procedure TfrmAutoInv.qryMattersCalcFields(DataSet: TDataSet);
begin
  qryMattersTitleFile.Text := qryMatters.FieldByName('TITLE').AsString + ' ' + qryMatters.FieldByName('FILEID').AsString + ' ' + qryMatters.FieldByName('SHORTDESCR').AsString + '=' + IntToStr(qryMatters.FieldByName('NMATTER').AsInteger);
end;


procedure TfrmAutoInv.FormShow(Sender: TObject);
begin
  Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;

  qryTypes.Open;
  qryAuthors.Open;

  //ListBoxSetupData(lbMattersAll, dsMatters, 'TITLEFILE');
  ListBoxSetupData(lbTypesAll, dsTypes, 'CODE');
  ListBoxSetupData(lbAuthorsAll, dsAuthors, 'CODE');
  with qryAuthors do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODE FROM EMPLOYEE WHERE ACTIVE = ''Y'' AND ISPARTNER = ''Y'' ORDER BY CODE');
    Open;
  end;

  ListBoxSetupData(lbPartnersAll, dsAuthors, 'CODE');

  //MakeSQL;
  pagAutoInvWizard.ActivePage := tabGeneralSelect;
  btnBack.Enabled := False;
  btnFinish.Enabled := False;
  FWizardInProg := False;
end;

procedure TfrmAutoInv.btnMatterAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbMattersAll, lbMattersSelected);
end;


procedure TfrmAutoInv.btnMatterNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbMattersSelected, lbMattersAll);
end;


procedure TfrmAutoInv.btnMatterSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbMattersAll, lbMattersSelected);
end;


procedure TfrmAutoInv.btnMatterUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbMattersSelected, lbMattersAll);
end;


procedure TfrmAutoInv.btnTypeAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbTypesAll, lbTypesSelected);
end;


procedure TfrmAutoInv.btnTypeNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbTypesSelected, lbTypesAll);
end;


procedure TfrmAutoInv.btnTypeSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbTypesAll, lbTypesSelected);
end;


procedure TfrmAutoInv.btnTypeUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbTypesSelected, lbTypesAll);
end;


procedure TfrmAutoInv.btnAuthorAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbAuthorsAll, lbAuthorsSelected);
end;


procedure TfrmAutoInv.btnAuthorNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbAuthorsSelected, lbAuthorsAll);
end;


procedure TfrmAutoInv.btnAuthorSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbAuthorsAll, lbAuthorsSelected);
end;


procedure TfrmAutoInv.btnAuthorUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbAuthorsSelected, lbAuthorsAll);
end;


procedure TfrmAutoInv.btnPartnerAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbPartnersAll, lbPartnersSelected);
end;


procedure TfrmAutoInv.btnPartnerNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbPartnersSelected, lbPartnersAll);
end;


procedure TfrmAutoInv.btnPartnerSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbPartnersAll, lbPartnersSelected);
end;


procedure TfrmAutoInv.btnPartnerUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbPartnersSelected, lbPartnersAll);
end;


procedure TfrmAutoInv.btnClientAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbClientsAll, lbClientsSelected);
end;


procedure TfrmAutoInv.btnClientSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbClientsAll, lbClientsSelected);
end;


procedure TfrmAutoInv.btnClientUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbClientsSelected, lbClientsAll);
end;


procedure TfrmAutoInv.btnClientNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbClientsSelected, lbClientsAll);
end;


procedure TfrmAutoInv.btnClearFilterClick(Sender: TObject);
begin
  tbBillingPlan.Text := '';
  btnTypeNoneClick(Self);
  btnAuthorNoneClick(Self);
  btnPartnerNoneClick(Self);
end;


function TfrmAutoInv.BillingPlanSQL: string;
var
  iCtr: Integer;
  sOR: string;
begin
  sOR := '';
  Result := '';
  if Length(tbBillingPlan.Text) > 0 then
  begin
    Result := Result + sAND + '(';
    for iCtr := 1 to Length(tbBillingPlan.Text) do
    begin
      Result := Result + sOR + '(M.BILLING_PLAN = ''' + Uppercase(Copy(tbBillingPlan.Text, iCtr, 1)) + ''')';
      sOR := ' OR '
    end;
    Result := Result + ')';
  end;
end;


function TfrmAutoInv.TypesSQL: string;
var
  iCtr: Integer;
  sOR: string;
begin
  sOR := '';
  Result := '';
  if (lbTypesAll.Items.Count > 0) and (lbTypesSelected.Items.Count > 0) then
  begin
    sOR := '';
    Result := Result + sAND + '(';
    for iCtr := 0 to lbTypesSelected.Items.Count - 1 do
    begin
      Result := Result + sOR + '(M.TYPE = ''' + lbTypesSelected.Items.Strings[iCtr] + ''')';
      sOR := ' OR '
    end;
    Result := Result + ')';
  end;
end;


function TfrmAutoInv.AuthorsSQL: string;
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
      Result := Result + sOR + '(M.AUTHOR = ''' + lbAuthorsSelected.Items.Strings[iCtr] + ''')';
      sOR := ' OR '
    end;
    Result := Result + ')';
  end;
end;


function TfrmAutoInv.PartnersSQL: string;
var
  iCtr: Integer;
  sOR: string;
begin
  sOR := '';
  Result := '';
  if (lbPartnersAll.Items.Count > 0) and (lbPartnersSelected.Items.Count > 0) then
  begin
    sOR := '';
    Result := Result + sAND + '(';
    for iCtr := 0 to lbPartnersSelected.Items.Count - 1 do
    begin
      Result := Result + sOR + '(M.PARTNER = ''' + lbPartnersSelected.Items.Strings[iCtr] + ''')';
      sOR := ' OR '
    end;
    Result := Result + ')';
  end;
end;


function TfrmAutoInv.ClientsSQL: string;
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


procedure TfrmAutoInv.MakeSQL;
var
  sWhereClause : string;
begin
  // Build the SQL Filter query
  sWhereClause := BillingPlanSQL+TypesSQL+AuthorsSQL+PartnersSQL+ClientsSQL;
  if Copy(sWhereClause, Length(sWhereClause)-4, 5) = ' AND ' then
    sWhereClause := Copy(sWhereClause, 1, Length(sWhereClause)-4);

  with qryMatters do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(M.TITLE) AS TITLE, MAX(M.FILEID) AS FILEID, MAX(M.SHORTDESCR) AS SHORTDESCR,');
    SQL.Add('MAX(M.NMATTER) AS NMATTER, MAX(M.TYPE) AS TYPE, MAX(M.AUTHOR) AS AUTHOR,');
    SQL.Add('MAX(M.PARTNER) AS PARTNER, MAX(M.BILLING_PLAN) AS BILLING_PLAN,');
    SQL.Add('SUM(B.UNBILL_FEES) AS UNBILL_FEES, SUM(B.UNBILL_DISB) AS UNBILL_DISB,');
    SQL.Add('SUM(B.UNBILL_ANTD) AS UNBILL_ANTD, SUM(B.UNBILL_SUND) AS UNBILL_SUND');
    SQL.Add('FROM MATTER M, AUTOBILL B');
    SQL.Add('WHERE (M.NMATTER = B.NMATTER)');
    SQL.Add('  AND (M.COMPLETED IS NULL)');
    SQL.Add(sWhereClause);
    SQL.Add('GROUP BY B.NMATTER');
    if cbFees.Checked and (nedFeesBal.AsCurrency > 0 ) then
      AddWhere('(B.UNBILL_FEES >= '+FloatToStr(nedFeesBal.AsCurrency)+')');
    if cbDisb.Checked and (nedDisbBal.AsCurrency > 0 ) then
      AddWhere('(B.UNBILL_DISB >= '+FloatToStr(nedDisbBal.AsCurrency)+')');
    if cbAntD.Checked and (nedAntDBal.AsCurrency > 0) then
      AddWhere('(B.UNBILL_ANTD >= '+FloatToStr(nedAntDBal.AsCurrency)+')');
    if cbSundries.Checked and (nedSundriesBal.AsCurrency > 0) then
      AddWhere('(B.UNBILL_SUND >= '+FloatToStr(nedSundriesBal.AsCurrency)+')');
    Open;
    if IsEmpty then
      ShowNoMattersMsg;
  end;
  ListBoxSetupData(lbMattersAll, dsMatters, 'TITLEFILE');
  lbMattersSelected.Clear;
end;


procedure TfrmAutoInv.MakeClientSQL;
var
  sWhereClause : string;
begin
  // build the client filter query
  sWhereClause := BillingPlanSQL+TypesSQL+AuthorsSQL+PartnersSQL;
  if Copy(sWhereClause, Length(sWhereClause)-4, 5) = ' AND ' then
    sWhereClause := Copy(sWhereClause, 1, Length(sWhereClause)-4);

  with qryClients do
  begin
    SQL.Clear;
    SQL.Add('SELECT DISTINCT(M.TITLE)');
    SQL.Add('FROM MATTER M, AUTOBILL B');
    SQL.Add('WHERE (M.NMATTER = B.NMATTER)');
    SQL.Add('  AND (M.COMPLETED IS NULL)');
    SQL.Add(sWhereClause);
    SQL.Add('ORDER BY M.TITLE');
    Open;
    if IsEmpty then
      ShowNoMattersMsg;
  end;
end;


procedure TfrmAutoInv.MakeInvoices;
var
  iCtr, iInvoiceMin, iInvoiceMax : Integer;
begin
  if lbMattersSelected.Items.Count > 0 then
  begin
    try
      try
        Self.Cursor :=  crHourGlass;
        LockWindowUpdate(Self.Handle);
        iInvoiceMin := 0;
        iInvoiceMax := 0;
        for iCtr := 0 to lbMattersSelected.Items.Count - 1 do
        begin
          with procBillCreate do
          begin
            ParamByName('P_Entity').AsString := dmAxiom.Entity;
            ParamByName('P_NMatter').AsInteger := StrToInt(lbMattersSelected.Items.Values[lbMattersSelected.Items.Names[iCtr]]);
            ParamByName('P_AddFees').AsInteger := Ord(cbFees.Checked);
            ParamByName('P_AddDisb').AsInteger := Ord(cbDisb.Checked);
            ParamByName('P_AddAntd').AsInteger := Ord(cbAntD.Checked);
            ParamByName('P_AddSund').AsInteger := Ord(cbSundries.Checked);
            if (cbTemplate.Checked) and (edCustomTemplate.Text <> '') then
              ParamByName('P_BIllTemplate').AsString := edCustomTemplate.Text;
            Execute;
            iInvoiceMax := ParamByName('Result').AsInteger;
          end;
          if iInvoiceMin = 0 then
            iInvoiceMin := iInvoiceMax;
        end;
        // Now display them
        with TfrmBills.Create(Self) do
        begin
          DisplayRange(iInvoiceMin, iInvoiceMax);
          if not(cbNoPrint.Checked) then
            Merge(bsAll, True);
          if cbAutoPost.Checked then
            Post(bsAll);
          Free;
        end;
      finally
        Self.Cursor :=  crDefault;
        LockWindowUpdate(0);
      end;
    except
      // silent exception
    end;
    //lbMattersSelected.Clear;
  end;
end;


procedure TfrmAutoInv.tbtnProcessClick(Sender: TObject);
var
  wYear, wMonth, wDay : Word;
  iMax : integer;
  dtUpdate : TDateTime;
  sDesc : string;
  bModified : boolean;
  frmProcess : TfrmProcess;
begin
  with qryNew do
  begin
    Close;
    SQL.Text := 'SELECT COUNT(AMOUNT) AS CNT, ROWID FROM AUTOGEN';
    Open;
    if IsEmpty then
      iMax := 0
    else
      iMax := FieldByName('CNT').AsInteger;
    Close;
  end;
  if iMax > 0 then
  begin
    frmProcess := TfrmProcess.Create(Self);
    frmProcess.lblProcess.Caption := 'Generating Automatic Transactions';
    frmProcess.pbProcess.Max := iMax;
    frmProcess.Show;
    Application.ProcessMessages;

    with qryAutoGen do
    begin
      Close;
      Open;
      while not EOF do
      begin
        frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
        Application.ProcessMessages;
        dtUpdate := FieldByName('UPDATEON').AsDateTime;
        if not FieldByName('FINISH').IsNull then
          dtUpdate := Date + 20;
        while dtUpdate <= Date do
        begin
          // Insert fields into the description
          if Pos('[', FieldByName('DESCR').AsString) > 0 then
          begin
            sDesc := FieldByName('DESCR').AsString;
            repeat
              bModified := False;
              if Pos('[DATE]', sDesc) > 0 then
              begin
                sDesc := Copy(sDesc, 1, Pos('[DATE]', sDesc) - 1) + FormatDateTime('ddddd', dtUpdate) + Copy(sDesc, Pos('[DATE]', sDesc) + 6, 999);
                bModified := True;
              end;
              if Pos('[LONGDATE]', sDesc) > 0 then
              begin
                sDesc := Copy(sDesc, 1, Pos('[LONGDATE]', sDesc) - 1) + FormatDateTime('dddddd', dtUpdate) + Copy(sDesc, Pos('[LONGDATE]', sDesc) + 10, 999);
                bModified := True;
              end;
              if Pos('[MONTH]', sDesc) > 0 then
              begin
                sDesc := Copy(sDesc, 1, Pos('[MONTH]', sDesc) - 1) + FormatDateTime('mmmm', dtUpdate) + Copy(sDesc, Pos('[MONTH]', sDesc) + 7, 999);
                bModified := True;
              end;
              if Pos('[YEAR]', sDesc) > 0 then
              begin
                sDesc := Copy(sDesc, 1, Pos('[YEAR]', sDesc) - 1) + FormatDateTime('yyyy', dtUpdate) + Copy(sDesc, Pos('[YEAR]', sDesc) + 6, 999);
                bModified := True;
              end;
            until not bModified;
          end;
          // Now make the actual transaction
          if FieldByName('TYPE').AsString = 'Fee' then
          begin
            // Find the matter
            qryMatter.Close;
            qryMatter.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
            qryMatter.Open;
            if not qryMatter.IsEmpty then
            begin
              // Insert the new fee
              qryNew.SQL.Text := 'SELECT F.*, F.ROWID FROM FEE F WHERE F.NFEE = -1';
              qryNew.Open;
              qryNew.Insert;
              qryNew.FieldByName('CREATED').AsDateTime := dtUpdate;
              qryNew.FieldByName('AMOUNT').AsCurrency := FieldByName('AMOUNT').AsCurrency;
              qryNew.FieldByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
              qryNew.FieldByName('PARTNER').AsString :=  qryMatter.FieldByName('PARTNER').AsString;
              qryNew.FieldByName('BANK_ACCT').AsString := FieldByName('BANK').AsString;
              qryNew.FieldByName('BILLED').AsString := 'N';
              qryNew.FieldByName('DEPT').AsString := FieldByName('DEPT').AsString;
              qryNew.FieldByName('DESCR').AsString := sDesc;
              qryNew.FieldByName('FILEID').AsString := FieldByName('FILEID').AsString;
              qryNew.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
              qryNew.FieldByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
              qryNew.FieldByName('NMEMO').AsInteger := 0;
              qryNew.FieldByName('PRIVATE').AsString := 'N';
              qryNew.Post;
              MatterUpdate(qryNew.FieldByName('NMATTER').AsInteger, 'UNBILL_FEES', FieldByName('AMOUNT').AsCurrency);
              if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR') <> '' then
                PostLedgers(dtUpdate
                  , qryNew.FieldByName('AMOUNT').AsCurrency
                  , qryNew.FieldByName('FILEID').AsString
                  , 'FEE'
                  , qryNew.FieldByName('NFEE').AsInteger
                  , sDesc
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR')
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR')
                  , FieldByName('AUTHOR').AsString
                  , '');

              qryNew.Close;

            end;

            qryMatter.Close;

          end
          else if FieldByName('TYPE').AsString = 'Sundry' then
          begin
            // Find the matter
            qryMatter.Close;
            qryMatter.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
            Open;
            if not qryMatter.IsEmpty then
            begin
              // Insert the sundry
              qryNew.SQL.Text := 'SELECT S.*, S.ROWID FROM SUNDRY S WHERE S.NSUNDRY = -1';
              qryNew.Open;
              qryNew.Insert;
              qryNew.FieldByName('CREATED').AsDateTime := dtUpdate;
              qryNew.FieldByName('AMOUNT').AsCurrency := FieldByName('AMOUNT').AsCurrency;
              qryNew.FieldByName('TYPE').AsString := '8';
              qryNew.FieldByName('ACCT').AsString := FieldByName('BANK').AsString;
              qryNew.FieldByName('BILLED').AsString := 'N';
              qryNew.FieldByName('DESCR').AsString := sDesc;
              qryNew.FieldByName('FILEID').AsString := FieldByName('FILEID').AsString;
              qryNew.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
              qryNew.FieldByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
              qryNew.FieldByName('NMEMO').AsInteger := 0;
              qryNew.Post;
              MatterUpdate(qryNew.FieldByName('NMATTER').AsInteger, 'UNBILL_SUND', qryNew.FieldByName('AMOUNT').AsCurrency);
              if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
                PostLedgers(dtUpdate
                  , FieldByName('AMOUNT').AsCurrency
                  , qryNew.FieldByName('NMATTER').AsString
                  , 'SUNDRY'
                  , qryNew.FieldByName('NSUNDRY').AsInteger
                  , sDesc
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
                  , MatterString(FieldByName('FILEID').AsString, 'PARTNER')
                  , '');

               qryNew.Close;

            end;

            qryMatter.Close;

          end
          else if FieldByName('TYPE').AsString = 'Cheque Requisition' then
          begin
            qryNew.SQL.Text := 'SELECT C.*, C.ROWID FROM CHEQREQ C WHERE C.AMOUNT = -1';
            qryNew.Insert;
            qryNew.FieldByName('REQDATE').AsDateTime := dtUpdate;
            qryNew.FieldByName('BANK').AsString := FieldByName('BANK').AsString;
            qryNew.FieldByName('FILEID').AsString := FieldByName('FILEID').AsString;
            qryNew.FieldByName('PAYEE').AsString := 'CheqReq from AutoGen';
            qryNew.FieldByName('DESCR').AsString := sDesc;
            qryNew.FieldByName('AMOUNT').AsCurrency := FieldByName('AMOUNT').AsCurrency;
            qryNew.FieldByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
            qryNew.FieldByName('HELD').AsString := 'N';
            qryNew.FieldByName('GROUPABLE').AsString := 'Y';
            qryNew.Post;
            qryNew.Close;
          end;

          // Update the date of the next time to AutoGen
          DecodeDate(dtUpdate, wYear, wMonth, wDay);
          if FieldByName('EVERY').AsString = 'Days' then
            dtUpdate := dtUpdate + FieldByName('FREQ').AsInteger
          else if FieldByName('EVERY').AsString = 'Weeks' then
            dtUpdate := dtUpdate + (FieldByName('FREQ').AsInteger * 7)
          else if FieldByName('EVERY').AsString = 'Months' then
          begin
            wMonth := wMonth + FieldByName('FREQ').AsInteger;
            while wMonth > 12 do
            begin
              wYear := wYear + 1;
              wMonth := wMonth - 12;
            end;
            dtUpdate := EncodeDate(wYear, wMonth, wDay);
          end
          else if FieldByName('EVERY').AsString = 'Years' then
          begin
            wYear := wYear + FieldByName('FREQ').AsInteger;
            dtUpdate := EncodeDate(wYear, wMonth, wDay);
          end;

          Edit;
          FieldByName('LASTRUN').AsDateTime := Date;
          FieldByName('UPDATEON').AsDateTime := dtUpdate;
          Post;

        end;

        Next;
      end;
    end;
    frmProcess.Release;
  end;

  CheckLedgerTotal;
end;


procedure TfrmAutoInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryMatters.Close;
  qryTypes.Close;
  qryAuthors.Close;
  qryAutoGen.Close;
  qryMatter.Close;
  qryNew.Close;

  Action := caFree;
end;


procedure TfrmAutoInv.btnWizardClick(Sender: TObject);
var
  Page: TTabSheet;
begin
  case TButton(Sender).Tag of
    1: // Finish button
    begin
      SettingSave('AUTOINV', 'AUTOPOST', cbAutoPost.Checked);
      SettingSave('AUTOINV', 'CUSTTEMPSEL', cbTemplate.Checked);
      SettingSave('AUTOINV', 'CUSTOMTEMPLATE', edCustomTemplate.Text);
      MakeInvoices();
      Self.Close;
    end;
    else // Either the Next or Back button
    begin
      Page := pagAutoInvWizard.FindNextPage(pagAutoInvWizard.ActivePage, TButton(Sender).Name = 'btnNext', False);
      pagAutoInvWizard.ActivePage := Page;
      AutoInvWizardChange(Self);
    end;
  end;
end;


procedure TfrmAutoInv.ShowNoMattersMsg;
begin
  MessageDlg('There are no matters for billing that satisfy the criteria you have specified!'+
    #13+#10+'                   Use the Back button to redefine your filter.',
    mtWarning, [mbOK], 0);
end;


procedure TfrmAutoInv.AutoInvWizardChange(Sender: TObject);
begin
  case pagAutoInvWizard.ActivePage.Tag of
    1: // General Select page
    begin
      btnBack.Enabled := False;
      btnNext.Enabled := True;
      FWizardInProg := False;
    end;
    2: // Clients Select page
    begin
      btnBack.Enabled := True;
      btnNext.Enabled := True;

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
        ListBoxSetupData(lbClientsAll, dsClients, 'TITLE');
        FWizardInProg := True;
      end;
      lblClientDescr.Caption := '';
    end;
    3: // Billing Details page
    begin
      cbFees.Checked := SettingLoadBoolean('AUTOINV', 'FEESSELECT');
      cbDisb.Checked := SettingLoadBoolean('AUTOINV', 'DISBSELECT');
      cbAntD.Checked := SettingLoadBoolean('AUTOINV', 'ANTDSELECT');
      cbSundries.Checked := SettingLoadBoolean('AUTOINV', 'SUNDSELECT');
      nedFeesBal.EditText := SettingLoadString('AUTOINV', 'FEESVAL');
      nedDisbBal.EditText := SettingLoadString('AUTOINV', 'DISBVAL');
      nedAntDBal.EditText := SettingLoadString('AUTOINV', 'ANTDVAL');
      nedSundriesBal.EditText := SettingLoadString('AUTOINV', 'SUNDRIESVAL');
    end;
    4: // Matters Select page
    begin
      SettingSave('AUTOINV', 'FEESSELECT', cbFees.Checked);
      SettingSave('AUTOINV', 'DISBSELECT', cbDisb.Checked);
      SettingSave('AUTOINV', 'ANTDSELECT', cbAntD.Checked);
      SettingSave('AUTOINV', 'SUNDSELECT', cbSundries.Checked);
      SettingSave('AUTOINV', 'FEESVAL', nedFeesBal.EditText);
      SettingSave('AUTOINV', 'DISBVAL', nedDisbBal.EditText);
      SettingSave('AUTOINV', 'ANTDVAL', nedAntDBal.EditText);
      SettingSave('AUTOINV', 'SUNDRIESVAL', nedSundriesBal.EditText);

      btnBack.Enabled := True;
      btnNext.Enabled := True;
      btnFinish.Enabled := False;

      with TfrmWaitAnimate.Create(Self) do
      begin
        Show;
        MakeSQL;
        Release;
      end;
      ListBoxMoveAll(lbMattersAll, lbMattersSelected);
    end;
    5: // Final page
    begin
      btnBack.Enabled := True;
      btnNext.Enabled := False;
      btnFinish.Enabled := True;

      cbAutoPost.Checked := SettingLoadBoolean('AUTOINV', 'AUTOPOST');
      cbTemplate.Checked := SettingLoadBoolean('AUTOINV', 'CUSTTEMPSEL');
      edCustomTemplate.Text := SettingLoadString('AUTOINV', 'CUSTOMTEMPLATE');
    end;
  end;
end;


procedure TfrmAutoInv.lbClientsClick(Sender: TObject);
begin
  lblClientDescr.Caption := TListBox(Sender).Items.Strings[TListBox(Sender).ItemIndex];
end;


procedure TfrmAutoInv.lbClientsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lbClientsClick(Sender);
end;


procedure TfrmAutoInv.cbTemplateClick(Sender: TObject);
begin
  edCustomTemplate.Enabled := cbTemplate.Checked;
  btnBillTemplate.Enabled := cbTemplate.Checked;
end;


procedure TfrmAutoInv.cbTemplateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_SPACE then
    cbTemplateClick(Self);
end;


procedure TfrmAutoInv.lbMattersClick(Sender: TObject);
begin
  lblMatterDescr.Caption := TListBox(Sender).Items.Strings[TListBox(Sender).ItemIndex];
end;


procedure TfrmAutoInv.lbMattersSelectedKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  lbMattersClick(Sender);
end;


procedure TfrmAutoInv.cbFeesClick(Sender: TObject);
begin
  nedFeesBal.Enabled := cbFees.Checked;
  nedDisbBal.Enabled := cbDisb.Checked;
  nedAntDBal.Enabled := cbAntD.Checked;
  nedSundriesBal.Enabled := cbSundries.Checked;
(*   if not(cbFees.Checked) then
    nedFeesBal.AsInteger := 0;
  if not(cbDisb.Checked) then
    nedDisbBal.AsInteger := 0;
  if not(cbAntD.Checked) then
    nedAntDBal.AsInteger := 0;
  if not(cbSundries.Checked) then
    nedSundriesBal.AsInteger := 0; *)
end;


procedure TfrmAutoInv.cbFeesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_SPACE then
    cbFeesClick(Self);
end;


procedure TfrmAutoInv.btnBillTemplateClick(Sender: TObject);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR FROM BILLTEMPLATE ORDER BY CODE';
    if ShowModal = mrOK then
      edCustomTemplate.Text := qrySource.FieldByName('CODE').AsString;
    Release;
  end;
end;

end.
