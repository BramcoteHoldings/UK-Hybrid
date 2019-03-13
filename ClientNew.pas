unit ClientNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, OraSmart,
  DBAccess, DBDateTimePicker;

type
  TfrmClientNew = class(TForm)
    dsClient: TUniDataSource;
    Label3: TLabel;
    cbPartner: TComboBox;
    qryClient: TUniQuery;
    lblPartnerName: TLabel;
    lblName: TLabel;
    lblContact: TLabel;
    lblGender: TLabel;
    cbGender: TComboBox;
    qryPhoneBook: TUniQuery;
    dsPhoneBook: TUniDataSource;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    lblACN: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblIntroducerName: TLabel;
    cbIntroducer: TComboBox;
    dtpIntroduced: TDateTimePicker;
    Label6: TLabel;
    dbtbClientCode: TDBEdit;
    dbtbName: TDBEdit;
    dbtbContact: TDBEdit;
    dbtbTaxNo: TDBEdit;
    qryMatterUpdate: TUniQuery;
    Label21: TLabel;
    lblFeeCodeDescr: TLabel;
    cbFeeCode: TComboBox;
    Label22: TLabel;
    Label29: TLabel;
    dbtbDisbThreshold: TDBEdit;
    qryClientCheck: TUniQuery;
    qryCodeRules: TUniQuery;
    btnBillTemplate: TBitBtn;
    dblblBilltemplate: TDBText;
    qryGender: TUniQuery;
    pagPhonebook: TPageControl;
    tabStreet: TTabSheet;
    tabName: TTabSheet;
    lblSearch: TLabel;
    btnFindPhoneBook: TBitBtn;
    dbtbKeyName: TDBEdit;
    dbtbPBName: TDBEdit;
    lblSalutation: TLabel;
    dbtbSalutation: TDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label7: TLabel;
    dbmmoAddress: TDBMemo;
    dbtbSuburb: TDBEdit;
    btnSuburbs: TBitBtn;
    dbtbPostcode: TDBEdit;
    dbtbCountry: TDBEdit;
    dbtbState: TDBEdit;
    tabPostal: TTabSheet;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    dbmmoPostalAddress: TDBMemo;
    dbtbPostalSuburb: TDBEdit;
    btnPostalSuburbs: TBitBtn;
    dbtbPostalPostcode: TDBEdit;
    dbtbPostalCountry: TDBEdit;
    dbtbPostalState: TDBEdit;
    lblPBName: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    dbtbDX: TDBEdit;
    dbtbDXloc: TDBEdit;
    tabPhone: TTabSheet;
    Label15: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    dbtbWorkPhone: TDBEdit;
    dbtbFax: TDBEdit;
    dbtbHomePhone: TDBEdit;
    dbtbMobile: TDBEdit;
    tabInternet: TTabSheet;
    Label11: TLabel;
    Label26: TLabel;
    dbtbEmail: TDBEdit;
    dbtbWWW: TDBEdit;
    tabNotes: TTabSheet;
    dbmmoNotes: TDBMemo;
    lblPBTitle: TLabel;
    lblOccupation: TLabel;
    dbtbTitle: TDBEdit;
    dbtbOccupation: TDBEdit;
    lblLongName: TLabel;
    lblShortName: TLabel;
    dbedLongName: TDBEdit;
    dbedShortName: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label8: TLabel;
    dbDOB: TDBDateTimePicker;
    qryGetCodes: TUniQuery;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbGenderChange(Sender: TObject);
    procedure cbPartnerChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnFindPhoneBookClick(Sender: TObject);
    procedure btnSuburbsClick(Sender: TObject);
    procedure cbIntroducerChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbtbKeyNameEnter(Sender: TObject);
    procedure dbtbPBNameEnter(Sender: TObject);
    procedure dbtbTitleEnter(Sender: TObject);
    procedure dbtbSalutationEnter(Sender: TObject);
    procedure cbFeeCodeChange(Sender: TObject);
    procedure btnPostalSuburbsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbtbClientCodeExit(Sender: TObject);
    procedure btnBillTemplateClick(Sender: TObject);
    procedure dbedLongNameEnter(Sender: TObject);
    procedure dbedShortNameEnter(Sender: TObject);
    procedure dbtbClientCodeEnter(Sender: TObject);

  private
    { Private declarations }
    GenderCode: string;
    function OKToPost : boolean;

  public
    { Public declarations }
    procedure DisplayClient(iNClient : integer);
  end;

var
  frmClientNew: TfrmClientNew;

implementation

uses
  Clients, CSearch, GenericSearch, MiscFunc, AxiomData, MSearch,
  NSearch, PostcodeSearch, Desktop, citfunc;

{$R *.DFM}

var
  bEditing : boolean;

procedure TfrmClientNew.DisplayClient(iNClient : integer);
begin
  bEditing := True;
  StringPopulate(cbIntroducer.Items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y''');
  StringPopulate(cbPartner.Items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y'' AND ISPARTNER = ''Y''');
  StringPopulate(cbFeeCode.Items, 'FEECODE', 'CODE');
  with qryClient do
  begin
    ParamByName('NCLIENT').AsInteger := iNClient;
    Open;
    if IsEmpty then
      Self.Close;

    cbGender.ItemIndex := cbGender.Items.IndexOf(TableString('GENDER', 'CODE', FieldByName('GENDER').AsString, 'DESCR'));
    dtpIntroduced.DateTime := FieldByName('INTRODUCED').AsDateTime;
    cbPartner.ItemIndex := cbPartner.Items.IndexOf(FieldByName('PARTNER').AsString);
    cbPartner.OnClick(Self);
    cbIntroducer.ItemIndex := cbIntroducer.Items.IndexOf(FieldByName('INTRODUCER').AsString);
    cbIntroducer.OnClick(Self);
    cbFeeCode.ItemIndex := cbFeeCode.Items.IndexOf(FieldByName('FeeCode').AsString);
    cbFeeCode.OnClick(Self);

    Self.Show;
  end;

  cbGenderChange(Self);
end;

procedure TfrmClientNew.FormShow(Sender: TObject);
var
  iNName : integer;
begin
  with qryCodeRules do
  begin
    ParamByName('ENTITY').AsString := dmAxiom.Entity;
    Open;
  end;

  if not bEditing then
  begin
    StringPopulate(cbIntroducer.Items,'EMPLOYEE',  'CODE', 'ACTIVE = ''Y''');
    StringPopulate(cbPartner.Items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y'' AND ISPARTNER = ''Y''');
    StringPopulate(cbFeeCode.Items, 'FEECODE', 'CODE');
    with qryClient do
    begin
      Close;
      ParamByName('NCLIENT').AsInteger := -1;
      Open;
      Insert;

      FieldByName('NCLIENT').AsInteger := GetSeqnum('NCLIENT');
    end;
  end;

  with qryPhonebook do
  begin
    Close;
    ParamByName('SEARCH').AsString := qryClient.FieldByName('SEARCH').AsString;
    Open;
    if IsEmpty then
    begin
      Insert;
      iNName := GetSeqnum('NNAME');
      qryPhonebook.FieldByName('NNAME').AsInteger := iNName;
      qryPhonebook.FieldByName('CODE').AsInteger := iNName;
      FieldByName('SUBURB').AsString := SystemString('SUBURB');
      FieldByName('STATE').AsString := SystemString('STATE');
      FieldByName('POSTCODE').AsString := SystemString('POSTCODE');
    end;
  end;
end;


procedure TfrmClientNew.btnOKClick(Sender: TObject);
begin
  if OKToPost then
  begin
    try
      dmAxiom.uniInsight.StartTransaction;
      with qryClient do
      begin
        if not Modified then
          Edit;
        FieldByName('SEARCH').AsString := dbtbKeyName.Text;
        FieldByName('GENDER').AsString := GenderCode;
        FieldByName('PARTNER').AsString := cbPartner.Text;
        FieldByName('INTRODUCER').AsString := cbIntroducer.Text;
        FieldByName('INTRODUCED').AsDateTime := dtpIntroduced.DateTime;
        FieldByName('FEECODE').AsString := cbFeeCode.Text;
        Post;
      end;
      if not qryPhoneBook.IsEmpty then
      begin
        if not qryPhonebook.Modified then
          qryPhoneBook.Edit;
      end
      else
        qryPhoneBook.Insert;
      qryPhoneBook.FieldByName('NCLIENT').AsInteger := qryClient.FieldByName('NCLIENT').AsInteger;
      qryPhoneBook.FieldByName('GENDER').AsString := qryClient.FieldByName('GENDER').AsString;
      qryPhonebook.FieldByName('MOD_BY').AsString := dmAxiom.UserID;
//      if dtpBirthDate.Checked then
//        qryPhonebook.FieldByName('DOB').AsDateTime := Trunc(dtpBirthDate.Date);

      qryPhoneBook.Post;

      {MGD Added to force client group}
      if(not qryPhoneBook.FieldByName('NNAME').IsNull) then
      begin
        dmAxiom.qryTmp.SQL.Text := 'INSERT INTO pbgroupings (nname, category) VALUES (:nname,''Client'')';
        dmAxiom.qryTmp.ParamByName('nname').AsInteger := qryPhoneBook.FieldByName('NNAME').AsInteger;
        dmAxiom.qryTmp.ExecSQL();
      end;


      ReopenListUpdate('CLIENT', qryClient.FieldByName('SEARCH').AsString);
      if qryClient.UpdatesPending then
        qryClient.ApplyUpdates;
      qryPhoneBook.ApplyUpdates;
      dmAxiom.uniInsight.Commit;
      //create the client search screen


      if not formexists(frmClientSearch) then
         frmClientSearch := TfrmClientSearch.Create(self);
      frmClientSearch.qryClients.Close;
      frmClientSearch.qryClients.Open;
      // Display this new client
      if Self.Owner.ClassName = 'TfrmClients' then
        TfrmClients(Self.Owner).DisplayClient(Self.qryClient.FieldByName('NCLIENT').AsInteger)
      else
        TfrmClients.Create(frmDesktop).DisplayClient(Self.qryClient.FieldByName('NCLIENT').AsInteger);

      Self.Close;
    except
      on E: Exception do
      begin
        qryClient.CancelUpdates;
        try
          qryPhoneBook.CancelUpdates;
        except
          // silent exception
        end;
        dmAxiom.uniInsight.Rollback;
        MsgErr('Error creating client:' + #13#13 + E.Message);
      end;
    end;
  end;
end;
//
//

function TfrmClientNew.OKToPost : boolean;
var
  sTmp: String;
begin
  OKtoPost := True;
  sTmp := '';
  if cbGender.Text = '' then
    sTmp := '       Client Type' + #13;
  if dbtbName.Text = '' then
    sTmp := sTmp + '       ' + lblName.Caption + #13;
  //if dbtbKeyName.Text = '' then
    //sTmp := sTmp + '       PhoneBook Key Name' + #13;
  //if dbtbClientCode.Text = '' then
    //sTmp := sTmp + '       Client Code' + #13;
  if dbtbPBName.Text = '' then
    sTmp := sTmp + '       PhoneBook Name' + #13;
  if dbmmoAddress.Text = '' then
    sTmp := sTmp + '       Address' + #13;
  if dbtbSuburb.Text = '' then
    sTmp := sTmp + '       Suburb' + #13;
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Client details before posting:    ' + #13#13 + sTmp);
    OKtoPost := False
  end;
{
  if bOKtoPost then
  begin
    if qryPhoneBook.IsEmpty then
    begin
      // Check to make sure that this PhoneBook Key doesn't exist
      with qryPhoneBook do
      begin
        Close;
        qryPhonebook.SQL.Text := 'SELECT P.*, P.ROWID FROM PHONEBOOK P WHERE P.SEARCH = ' + QuotedStr(dbtbKeyName.Text);
        Open;
        if not qryPhoneBook.IsEmpty then
        begin
          MsgErr('PhoneBook Key Name already exists. It must be unique. Please modify it');
          bOKtoPost := False;
        end;
      end;
    end;
  end;
  OKtoPost := bOKtoPost;
}
end;

procedure TfrmClientNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TfrmClientNew.cbGenderChange(Sender: TObject);
begin
  with qryGender do
  begin
    ParamByName('Gender').AsString := cbGender.Text;
    Open;
    if not IsEmpty then
    begin
      lblName.Caption := FieldByName('CLIENTNAMECAPTION').AsString;
      lblContact.Caption := FieldByName('CLIENTCONTACTCAPTION').AsString;
      lblSearch.Caption := FieldByName('SEARCHCAPTION').AsString;
      lblPBName.Caption := FieldByName('NAMECAPTION').AsString;
      lblLongName.Caption := FieldByName('LONGNAMECAPTION').AsString;
      lblShortName.Caption := FieldByName('SHORTNAMECAPTION').AsString;
      lblPBTitle.Caption := FieldByName('TITLECAPTION').AsString;
      lblOccupation.Caption := FieldByName('OCCUPATIONCAPTION').AsString;
      lblACN.Caption := FieldByName('ACNCAPTION').AsString;
      GenderCode := FieldByName('CODE').AsString;
    end;
    Close;
  end;
end;

procedure TfrmClientNew.cbPartnerChange(Sender: TObject);
begin
  lblPartnerName.Caption := TableString('EMPLOYEE', 'CODE', cbPartner.Text, 'NAME');
end;


procedure TfrmClientNew.btnFindPhoneBookClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOK then
  begin
    with qryPhoneBook do
    begin
      if UpdatesPending then
        CancelUpdates;
      Close;
      ParamByName('SEARCH').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
      Open;
    end;
  end;
end;


procedure TfrmClientNew.btnSuburbsClick(Sender: TObject);
begin
  if not FormExists(frmPostcodeSearch) then
    Application.CreateForm(TfrmPostcodeSearch, frmPostcodeSearch);
  if frmPostcodeSearch.ShowModal = mrOK then
  begin
    if not qryPhonebook.Modified then
      qryPhonebook.Edit;
    qryPhonebook.FieldByName('SUBURB').AsString := frmPostcodeSearch.qryPostcodes.FieldByName('SUBURB').AsString;
    qryPhonebook.FieldByName('STATE').AsString := frmPostcodeSearch.qryPostcodes.FieldByName('STATE').AsString;
    qryPhonebook.FieldByName('POSTCODE').AsString := frmPostcodeSearch.qryPostcodes.FieldByName('PCODE').AsString;
  end;
end;

procedure TfrmClientNew.cbIntroducerChange(Sender: TObject);
begin
  lblIntroducerName.Caption := TableString('EMPLOYEE', 'CODE', cbIntroducer.Text, 'NAME');
end;

procedure TfrmClientNew.FormCreate(Sender: TObject);
begin
  bEditing := False;
  dtpIntroduced.DateTime := Now;
  StringPopulate(cbGender.Items, 'GENDER', 'DESCR');
  //dtpBirthDate.Date := Trunc(Now);
end;

procedure TfrmClientNew.dbtbKeyNameEnter(Sender: TObject);
var
    icount : integer;
    spostfix : string;
begin
  if qryPhonebook.FieldByName('SEARCH').AsString = '' then
  begin
    spostfix := '';
    repeat
      if (GenderCode = 'C') or (GenderCode = 'A') or (GenderCode = 'T') or (GenderCode = 'G') then
        qryPhonebook.FieldByName('SEARCH').AsString := qryClient.FieldByName('NAME').AsString + spostfix
      else if GenderCode = 'E' then
        qryPhonebook.FieldByName('SEARCH').AsString := qryClient.FieldByName('NAME').AsString + ', Mr/Mrs/Ms/Dr ' + Initials(qryClient.FieldByName('CONTACT').AsString, ' ') + spostfix
      else if GenderCode = 'M' then
        qryPhonebook.FieldByName('SEARCH').AsString := qryClient.FieldByName('NAME').AsString + ', Mr ' + Initials(qryClient.FieldByName('CONTACT').AsString, ' ') + spostfix
      else if GenderCode = 'F' then
        qryPhonebook.FieldByName('SEARCH').AsString := qryClient.FieldByName('NAME').AsString + ', Ms ' + Initials(qryClient.FieldByName('CONTACT').AsString, ' ') + spostfix
      else if GenderCode = 'P' then
        qryPhonebook.FieldByName('SEARCH').AsString := qryClient.FieldByName('NAME').AsString + ', Mr & Mrs ' + Initials(qryClient.FieldByName('CONTACT').AsString, ' ') + spostfix
      else if GenderCode = 'W' then
        qryPhonebook.FieldByName('SEARCH').AsString := qryClient.FieldByName('NAME').AsString + ', Mrs ' + Initials(qryClient.FieldByName('CONTACT').AsString, ' ') + spostfix
      else
       qryPhonebook.FieldByName('SEARCH').AsString := qryClient.FieldByName('NAME').AsString + Initials(qryClient.FieldByName('CONTACT').AsString, ' ') + spostfix;
      // make sure the search value is unique 
      with TUniQuery.Create(Self) do
      begin
          SQL.Text := 'SELECT COUNT(*) as CNT FROM PHONEBOOK WHERE SEARCH = :SEARCH';
          ParamByName('SEARCH').AsString := qryPhonebook.FieldByName('SEARCH').AsString;
          open;
          icount := FieldByName('CNT').AsInteger;
          close;
          free;
      end;

      if spostfix = '' then
          spostfix := '0'
      else
          spostfix := inttostr(strtoint(spostfix) + 1);

    until icount = 0;


    // Now highlight the new text
    dbtbKeyName.SelectAll;
  end;
end;


procedure TfrmClientNew.dbtbPBNameEnter(Sender: TObject);
begin
  if qryPhonebook.FieldByName('NAME').AsString = '' then
  begin
    if (GenderCode = 'C') or (GenderCode = 'A') or (GenderCode = 'T') or (GenderCode = 'G') then
      qryPhonebook.FieldByName('NAME').AsString := qryClient.FieldByName('NAME').AsString
    else if GenderCode = 'E' then
      qryPhonebook.FieldByName('NAME').AsString := 'Mr/Mrs/Ms/Dr ' + FirstWord(qryClient.FieldByName('CONTACT').AsString) + ' ' + qryClient.FieldByName('NAME').AsString
    else if GenderCode = 'M' then
      qryPhonebook.FieldByName('NAME').AsString := 'Mr ' + FirstWord(qryClient.FieldByName('CONTACT').AsString) + ' ' + qryClient.FieldByName('NAME').AsString
    else if GenderCode = 'F' then
      qryPhonebook.FieldByName('NAME').AsString := 'Ms ' + FirstWord(qryClient.FieldByName('CONTACT').AsString) + ' ' + qryClient.FieldByName('NAME').AsString
    else if GenderCode = 'P' then
      qryPhonebook.FieldByName('NAME').AsString := 'Mr & Mrs ' + FirstWord(qryClient.FieldByName('CONTACT').AsString) + ' ' + qryClient.FieldByName('NAME').AsString
    else if GenderCode = 'W' then
      qryPhonebook.FieldByName('NAME').AsString := 'Mrs ' + FirstWord(qryClient.FieldByName('CONTACT').AsString) + ' ' + qryClient.FieldByName('NAME').AsString
    else
      qryPhonebook.FieldByName('NAME').AsString :=  FirstWord(qryClient.FieldByName('CONTACT').AsString) + ' ' + qryClient.FieldByName('NAME').AsString;
    dbtbPBName.SelectAll;
  end;
end;


procedure TfrmClientNew.dbtbTitleEnter(Sender: TObject);
begin
  if qryPhonebook.FieldByName('TITLE').AsString = '' then
  begin
    if (GenderCode = 'C') or (GenderCode = 'A') or (GenderCode = 'T') or (GenderCode = 'G') then
      qryPhonebook.FieldByName('TITLE').AsString := qryClient.FieldByName('CONTACT').AsString;
    dbtbTitle.SelectAll;
  end;
end;


procedure TfrmClientNew.dbtbSalutationEnter(Sender: TObject);
begin
  if qryPhonebook.FieldByName('SALUTATION').AsString = '' then
  begin
    if (GenderCode = 'C') or (GenderCode = 'A') or (GenderCode = 'T') or (GenderCode = 'G') then
      qryPhonebook.FieldByName('SALUTATION').AsString := 'Sir/Madam'
    else if (GenderCode = 'E') then
      qryPhonebook.FieldByName('SALUTATION').AsString := 'Sir/Madam'
    else if GenderCode = 'M' then
      qryPhonebook.FieldByName('SALUTATION').AsString := 'Mr ' + qryClient.FieldByName('NAME').AsString
    else if GenderCode = 'F' then
      qryPhonebook.FieldByName('SALUTATION').AsString := 'Ms ' + qryClient.FieldByName('NAME').AsString
    else if GenderCode = 'P' then
      qryPhonebook.FieldByName('SALUTATION').AsString := 'Mr & Mrs ' + qryClient.FieldByName('NAME').AsString
    else if GenderCode = 'W' then
      qryPhonebook.FieldByName('SALUTATION').AsString := 'Mrs ' + qryClient.FieldByName('NAME').AsString;
    dbtbSalutation.SelectAll;
  end;
end;


procedure TfrmClientNew.cbFeeCodeChange(Sender: TObject);
begin
  lblFeeCodeDescr.Caption := FeeCodeString(cbFeeCode.Text, 'DESCR');
end;

procedure TfrmClientNew.btnPostalSuburbsClick(Sender: TObject);
begin
  if not FormExists(frmPostcodeSearch) then
    Application.CreateForm(TfrmPostcodeSearch, frmPostcodeSearch);
  if frmPostcodeSearch.ShowModal = mrOK then
  begin
    if not qryPhonebook.Modified then
      qryPhonebook.Edit;
    qryPhonebook.FieldByName('POSTALSUBURB').AsString := frmPostcodeSearch.qryPostcodes.FieldByName('SUBURB').AsString;
    qryPhonebook.FieldByName('POSTALSTATE').AsString := frmPostcodeSearch.qryPostcodes.FieldByName('STATE').AsString;
    qryPhonebook.FieldByName('POSTALPOSTCODE').AsString := frmPostcodeSearch.qryPostcodes.FieldByName('PCODE').AsString;
  end;
end;

procedure TfrmClientNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryClient.Close;
  qryPhonebook.Close;
  qryClientCheck.Close;

  Self.Release;
end;

procedure TfrmClientNew.dbtbClientCodeExit(Sender: TObject);
begin
  if dbtbClientCode.Text <> '' then
  begin
    with qryClientCheck do
    begin
      Close;
      SQL.Text := 'SELECT SEARCH FROM CLIENT WHERE CODE = ' + QuotedStr(dbtbClientCode.Text) + ' AND NCLIENT <> ' + qryClient.FieldByName('NCLIENT').AsString;
      Open;
      if not IsEmpty then
      begin
        MsgErr('Existing Client "' + qryClientCheck.FieldByName('SEARCH').AsString + '" has code "' + dbtbClientCode.Text + '" already');
        dbtbClientCode.SetFocus;
      end;
      Close;
    end;
  end;
end;

procedure TfrmClientNew.btnBillTemplateClick(Sender: TObject);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR FROM BILLTEMPLATE ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      if not Self.qryClient.Modified then
        Self.qryClient.Edit;
      Self.qryClient.FieldByName('BILLTEMPLATE').AsString := qrySource.FieldByName('CODE').AsString;
    end;
    Release;
  end;
end;

procedure TfrmClientNew.dbedLongNameEnter(Sender: TObject);
begin
  if dbedLongName.Text = '' then
    qryPhonebook.FieldByName('LONGNAME').AsString := qryClient.FieldByName('NAME').AsString;
end;


procedure TfrmClientNew.dbedShortNameEnter(Sender: TObject);
begin
  if dbedShortName.Text = '' then
    qryPhonebook.FieldByName('SHORTNAME').AsString := Copy(qryClient.FieldByName('NAME').AsString, 1, 25);
end;

procedure TfrmClientNew.dbtbClientCodeEnter(Sender: TObject);
var
  sClientCode : string;
{
  Modified 25.10.2002 GG
  Removed compiler hint
}
  sTmp, {sPadding,}sNumStr: string;
  bTakeFirst{, bPadded} : boolean;
  iCtr,iPadNum,iPadding : integer;
begin
  if dbtbClientCode.Text = '' then
  begin
    if not qryClient.Modified then
      qryClient.Edit;
    // Create the Client Code
    sClientCode := '';
    if qryCodeRules.FieldByName('CLIENTCODE').AsString = 'N' then
    begin
      // Use the system number
      with qryClientCheck do
      begin
        Close;
        SQL.Text := 'SELECT NCLIENT FROM SEQNUMS';
        Open;
        sClientCode := IntToStr(qryClientCheck.FieldByName('NCLIENT').AsInteger);
        Close;
      end;
      // and pad it
      if Length(sClientCode) < qryCodeRules.FieldByName('CLIENTPAD').AsInteger then
        sClientCode := Copy('000000' + sClientCode, Length(sClientCode) + 7 - qryCodeRules.FieldByName('CLIENTPAD').AsInteger, qryCodeRules.FieldByName('CLIENTPAD').AsInteger);
    end
    else if qryCodeRules.FieldByName('CLIENTCODE').AsString = 'A' then
    begin

      // We are making a partial name
      bTakeFirst := True;
      if (qryCodeRules.FieldByName('CLIENTACRONYM').AsString = 'Y') and (Pos(' ', dbtbName.Text) > 0) then
      begin
        bTakeFirst := False;
        sClientCode := Uppercase(Copy(dbtbName.Text, 1, 1));
        sTmp := dbtbName.Text;
        // Strip the apostrophes
        while Pos('''', sTmp) > 0 do
          sTmp := Copy(sTmp, 1, Pos('''', sTmp) - 1) + Copy(sTmp, Pos('''', sTmp) + 1, 99);
        iCtr := 1;
        while (Pos(' ', sTmp) > 0) and (iCtr < qryCodeRules.FieldByName('CLIENTLENGTH').AsInteger) do
        begin
          sTmp := Copy(sTmp, Pos(' ', sTmp) + 1, 99);
          sClientCode := sClientCode + Uppercase(Copy(sTmp, 1, 1));
          iCtr := iCtr + 1;
        end;
        if Length(sClientCode) < qryCodeRules.FieldByName('CLIENTLENGTH').AsInteger then
          sClientCode := Uppercase(Copy(dbtbName.Text, 1, qryCodeRules.FieldByName('CLIENTLENGTH').AsInteger - Length(sClientCode) + 1) + Copy(sClientCode, 2, qryCodeRules.FieldByName('CLIENTLENGTH').AsInteger));
      end;

      if bTakeFirst then
      begin
        sTmp := dbtbName.Text;
        // Strip the apostrophes
        while Pos('''', sTmp) > 0 do
          sTmp := Copy(sTmp, 1, Pos('''', sTmp) - 1) + Copy(sTmp, Pos('''', sTmp) + 1, 99);

        sClientCode := Uppercase(Copy(sTmp, 1, qryCodeRules.FieldByName('CLIENTLENGTH').AsInteger));
      end;
      // try this !
      // get all the client codes like this one and loop through them
      iPadding := qryCodeRules.FieldByName('CLIENTPAD').AsInteger;
      iPadNum := 0;
      with qryGetCodes do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT CODE FROM CLIENT WHERE CODE LIKE ''' + sClientCode + '%''');
        Open;
        // find a code thats not in the database
        repeat
                inc(iPadNum);
                sNumStr := intToStr(iPadNum);
                // pad the number string
                for ictr := 1 to (iPadding - Length(sNumStr)) do
                       sNumStr := '0' + sNumStr;

                sTmp := sClientCode + sNumStr;

        until not locate('CODE',sTmp,[]);

      end;

      sClientCode := sTmp;

      // EXIT HERE

     { sPadding := '';
      //if length(sClientCode) < qryCodeRules.FieldByName('CLIENTLENGTH').AsInteger then
        begin
          bPadded := true;
          //for iCtr := length(sClientCode) to qryCodeRules.FieldByName('CLIENTLENGTH').AsInteger do
            sPadding := sPadding + '1';
        end;
      sClientCode := sClientCode + sPadding;
      // Find the smallest suffixed client code number with this prefix
      with qryClientCheck do
      begin
        Close;
        SQL.Text := 'SELECT MAX(replace(CODE,'''','''')) AS MAXCODE FROM CLIENT WHERE CODE LIKE ' + QuotedStr(sClientCode + '%');
        Open;
        if not IsEmpty then
        begin
          sTmp := '';

          for iCtr := 0 to Length(qryClientCheck.FieldByName('MAXCODE').AsString) do
            if Pos(Copy(qryClientCheck.FieldByName('MAXCODE').AsString, iCtr, 1), '0123456789') > 0 then
              sTmp := sTmp + Copy(qryClientCheck.FieldByName('MAXCODE').AsString, iCtr, 1);
          Close;
          if sTmp = '' then
            sTmp := '1'
          else
            sTmp := IntToStr(StrToInt(sTmp) + 1);
        end
        else
          sTmp := '1';
      end;

      if bPadded then
        begin
          //remove the padding characters from the code
          delete(sTmp, 1, length(sPadding));
        end;
      // and pad it
      if Length(sTmp) < qryCodeRules.FieldByName('CLIENTPAD').AsInteger then
        sTmp := Copy('000000' + sTmp, Length(sTmp) + 7 - qryCodeRules.FieldByName('CLIENTPAD').AsInteger, qryCodeRules.FieldByName('CLIENTPAD').AsInteger);
      sClientCode := sClientCode + sTmp;
      }
    end;

    dbtbClientCode.Text := sClientCode;

  end;

end;

end.

