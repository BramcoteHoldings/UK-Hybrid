unit CreditorNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, OraSmart, DBAccess;

type
  TfrmCreditorNew = class(TForm)
    qryCreditor: TUniQuery;
    tbName: TEdit;
    lblName: TLabel;
    lblContact: TLabel;
    lblGender: TLabel;
    lblGenderDesc: TLabel;
    tbContact: TEdit;
    cbGender: TComboBox;
    qryPhoneBook: TUniQuery;
    btnCancel: TBitBtn;
    gbPhoneBook: TGroupBox;
    lblPhoneBookKey: TLabel;
    tbSearch: TEdit;
    tbPBName: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    tbTitle: TEdit;
    tbSalutation: TEdit;
    cbState: TComboBox;
    Label14: TLabel;
    tbPostcode: TEdit;
    Label13: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    tbWorkPhone: TEdit;
    tbFax: TEdit;
    tbHomePhone: TEdit;
    tbDX: TEdit;
    tbDXLoc: TEdit;
    tbUserCode: TEdit;
    tbNote: TEdit;
    Label20: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    btnOK: TBitBtn;
    btnFindPhoneBook: TBitBtn;
    Label2: TLabel;
    neTerms: TNumberEdit;
    neLimit: TNumberEdit;
    Label3: TLabel;
    mmoAddress: TMemo;
    btnSuburbs: TBitBtn;
    tbSuburb: TEdit;
    Label4: TLabel;
    edCreditorCode: TEdit;
    qryCodeRules: TUniQuery;
    qryCreditorCheck: TUniQuery;
    Label5: TLabel;
    edTaxNo: TEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbGenderChange(Sender: TObject);
    procedure tbSearchEnter(Sender: TObject);
    procedure tbPBNameEnter(Sender: TObject);
    procedure tbTitleEnter(Sender: TObject);
    procedure tbSalutationEnter(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnFindPhoneBookClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSuburbsClick(Sender: TObject);
    procedure edCreditorCodeEnter(Sender: TObject);
    procedure edCreditorCodeExit(Sender: TObject);

  private
    { Private declarations }
    function OKToPost : boolean;

  public
    { Public declarations }
  end;

var
  frmCreditorNew: TfrmCreditorNew;

implementation

uses
  MiscFunc, AxiomData, MSearch, NSearch, PostcodeSearch, citfunc;

{$R *.DFM}


procedure TfrmCreditorNew.FormShow(Sender: TObject);
begin
  qryCodeRules.ParamByName('ENTITY').AsString := dmAxiom.Entity;
  qryCodeRules.Open;

  tbSuburb.Text := SystemString('SUBURB');
  cbState.Text := SystemString('STATE');
  tbPostcode.Text := SystemString('POSTCODE');
end;


procedure TfrmCreditorNew.btnOKClick(Sender: TObject);
begin
  if OKToPost() then
  begin
    qryCreditor.Open;
    qryCreditor.Insert;
    qryCreditor.FieldByName('NCREDITOR').AsInteger      := GetSeqnum('NCREDITOR');
    qryCreditor.FieldByName('GENDER').AsString          := cbGender.Text;
    qryCreditor.FieldByName('NAME').AsString            := tbName.Text;
    qryCreditor.FieldByName('CONTACT').AsString         := tbContact.Text;
    qryCreditor.FieldByName('SEARCH').AsString          := tbSearch.Text;
    qryCreditor.FieldByName('CODE').AsString            := edCreditorCode.Text;
    //qryCreditor.FieldByName('CREDGROUP').AsString := cbCreditorGroup.Text;
    qryCreditor.FieldByName('CREDIT_TERMS').AsInteger   := neTerms.AsInteger;
    qryCreditor.FieldByName('CREDIT_LIMIT').AsCurrency  := neLimit.AsCurrency;
    qryCreditor.FieldByName('HOLD').AsString            := 'N';
    qryCreditor.FieldByName('NNAME').AsInteger          := GetSeqnum('NNAME');
    qryCreditor.FieldByName('TAXNO').AsString           := edTaxNo.Text;
    qryCreditor.FieldByName('ENTITY').AsString          := dmAxiom.Entity;
    qryCreditor.Post();
    if not qryPhoneBook.EOF then
      qryPhoneBook.Edit()
    else
      qryPhoneBook.Insert();
    qryPhoneBook.FieldByName('SEARCH').AsString         := tbSearch.Text;
    qryPhoneBook.FieldByName('NAME').AsString           := tbPBName.Text;
    qryPhoneBook.FieldByName('TITLE').AsString          := tbTitle.Text;
    qryPhoneBook.FieldByName('ADDRESS').AsString        := mmoAddress.Text;
    qryPhoneBook.FieldByName('SUBURB').AsString         := tbSuburb.Text;
    qryPhoneBook.FieldByName('STATE').AsString          := cbState.Text;
    qryPhoneBook.FieldByName('POSTCODE').AsString       := tbPostcode.Text;
    qryPhoneBook.FieldByName('WORKPHONE').AsString      := tbWorkPhone.Text;
    qryPhoneBook.FieldByName('HOMEPHONE').AsString      := tbHomePhone.Text;
    qryPhoneBook.FieldByName('FAX').AsString            := tbFax.Text;
    qryPhoneBook.FieldByName('DX').AsString             := tbDX.Text;
    qryPhoneBook.FieldByName('DXLOC').AsString          := tbDXLoc.Text;
    qryPhoneBook.FieldByName('NOTE').AsString           := tbNote.Text;
    qryPhoneBook.FieldByName('CODE').AsString           := tbUserCode.Text;
    qryPhoneBook.FieldByName('NNAME').AsInteger         := qryCreditor.FieldByName('NNAME').AsInteger;
    qryPhoneBook.Post();
    ReopenListUpdate('CREDITOR', qryCreditor.FieldByName('SEARCH').AsString);
    ModalResult := mrOK;
    Self.Close;
  end;
end;


function TfrmCreditorNew.OKToPost : boolean;
var
  sTmp : String;
begin
  Result := False;
  sTmp := '';
  if cbGender.Text = '' then
    sTmp := '       Gender Code' + Chr(13);
  if tbName.Text = '' then
    sTmp := sTmp + '       Name' + Chr(13);
  if tbSearch.Text = '' then
    sTmp := sTmp + '       PhoneBook Key Name' + Chr(13);
  if tbPBName.Text = '' then
    sTmp := sTmp + '       PhoneBook Name' + Chr(13);
  if mmoAddress.Text = '' then
    sTmp := sTmp + '       Address' + Chr(13);
  if tbSuburb.Text = '' then
    sTmp := sTmp + '       Suburb' + Chr(13);
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Creditor details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    Exit;
  end;

  if not qryPhoneBook.Active then
  begin
    // Check to make sure that this PhoneBook Key doesn't exist
    qryPhoneBook.Close;
    qryPhoneBook.SQL.Clear;
    qryPhoneBook.SQL.Add('SELECT P.*, P.ROWID FROM PHONEBOOK P WHERE P.SEARCH = ' + QuotedStr(QuoteFix(tbSearch.Text)));
    qryPhoneBook.Open;
    if not qryPhoneBook.IsEmpty then
    begin
      MsgErr('PhoneBook Key Name already exists. It must be unique. Please modify it');
      qryPhoneBook.Close();
      Result := False;
    end;
  end;
end;


procedure TfrmCreditorNew.btnCancelClick(Sender: TObject);
begin
  Close();
end;


procedure TfrmCreditorNew.cbGenderChange(Sender: TObject);
begin
  lblGenderDesc.Caption := '';
  if cbGender.Text = 'C' then
    lblGenderDesc.Caption := 'Company'
  else if cbGender.Text = 'M' then
    lblGenderDesc.Caption := 'Male'
  else if cbGender.Text = 'F' then
    lblGenderDesc.Caption := 'Female'
  else if cbGender.Text = 'P' then
    lblGenderDesc.Caption := 'Partnership';

  if cbGender.Text = 'C' then
  begin
    lblName.Caption := 'Company Name';
    lblContact.Caption := 'Contact';
  end else
  begin
    lblName.Caption := 'Surname';
    lblContact.Caption := 'First Names';
  end;
end;

procedure TfrmCreditorNew.tbSearchEnter(Sender: TObject);
begin
  if tbSearch.Text = '' then
  begin
    if cbGender.Text = 'C' then
      tbSearch.Text := tbName.Text
    else if cbGender.Text = 'M' then
      tbSearch.Text := tbName.Text + ', Mr ' + Initials(tbContact.Text, ' ')
    else if cbGender.Text = 'F' then
      tbSearch.Text := tbName.Text + ', Ms ' + Initials(tbContact.Text, ' ')
    else if cbGender.Text = 'P' then
      tbSearch.Text := tbName.Text + ', Mr & Mrs ' + Initials(tbContact.Text, ' ');
    // Now highlight the new text
    tbSearch.SelectAll;
    end;
end;

procedure TfrmCreditorNew.tbPBNameEnter(Sender: TObject);
begin
  if tbPBName.Text = '' then
  begin
    if cbGender.Text = 'C' then
      tbPBName.Text := tbName.Text
    else if cbGender.Text = 'M' then
      tbPBName.Text := 'Mr ' + FirstWord(tbContact.Text) + ' ' + tbName.Text
    else if cbGender.Text = 'F' then
      tbPBName.Text := 'Ms ' + FirstWord(tbContact.Text) + ' ' + tbName.Text
    else if cbGender.Text = 'P' then
      tbPBName.Text := 'Mr & Mrs ' + FirstWord(tbContact.Text) + ' ' + tbName.Text;
    tbPBName.SelectAll;
  end;
end;

procedure TfrmCreditorNew.tbTitleEnter(Sender: TObject);
begin
  if tbTitle.Text = '' then
  begin
    if cbGender.Text = 'C' then
      tbTitle.Text := tbContact.Text;
    tbTitle.SelectAll;
  end;
end;

procedure TfrmCreditorNew.tbSalutationEnter(Sender: TObject);
begin
  if tbSalutation.Text = '' then
  begin
    if cbGender.Text = 'C' then
      tbSalutation.Text := 'Sir/Madam'
    else if cbGender.Text = 'M' then
      tbSalutation.Text := 'Mr ' + tbName.Text
    else if cbGender.Text = 'F' then
      tbSalutation.Text := 'Ms ' + tbName.Text
    else if cbGender.Text = 'P' then
      tbSalutation.Text := 'Mr & Mrs ' + tbName.Text;
    tbSalutation.SelectAll;
  end;
end;

procedure TfrmCreditorNew.btnFindPhoneBookClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  if frmPhoneBookSearch.ShowModal = mrOK then
  begin
    qryPhoneBook.Close;
    qryPhoneBook.ParamByName('P_Search').AsString := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
    qryPhoneBook.Open;
    tbSearch.Text     := qryPhoneBook.FieldByName('SEARCH').AsString;
    tbPBName.Text     := qryPhoneBook.FieldByName('NAME').AsString;
    tbSalutation.Text := qryPhoneBook.FieldByName('SALUTATION').AsString;
    mmoAddress.Text   := qryPhoneBook.FieldByName('ADDRESS').AsString;
    tbSuburb.Text     := qryPhoneBook.FieldByName('SUBURB').AsString;
    cbState.Text      := qryPhoneBook.FieldByName('STATE').AsString;
    tbPostcode.Text   := qryPhoneBook.FieldByName('POSTCODE').AsString;
    tbWorkPhone.Text  := qryPhoneBook.FieldByName('WORKPHONE').AsString;
    tbFax.Text        := qryPhoneBook.FieldByName('FAX').AsString;
    tbHomePhone.Text  := qryPhoneBook.FieldByName('HOMEPHONE').AsString;
    tbDX.Text         := qryPhoneBook.FieldByName('DX').AsString;
    tbDXLoc.Text      := qryPhoneBook.FieldByName('DXLOC').AsString;
    tbUserCode.Text   := qryPhoneBook.FieldByName('CODE').AsString;
    tbNote.Text       := qryPhoneBook.FieldByName('NOTE').AsString;
  end;
end;


procedure TfrmCreditorNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryCreditor.Close;
  qryPhonebook.Close;

  Action := caFree;
end;

procedure TfrmCreditorNew.btnSuburbsClick(Sender: TObject);
begin
  if not FormExists(frmPostcodeSearch) then
    Application.CreateForm(TfrmPostcodeSearch, frmPostcodeSearch);
  if frmPostcodeSearch.ShowModal = mrOK then
  begin
    tbSuburb.Text   := frmPostcodeSearch.qryPostcodes.FieldByName('SUBURB').AsString;
    cbState.Text    := frmPostcodeSearch.qryPostcodes.FieldByName('STATE').AsString;
    tbPostcode.Text := frmPostcodeSearch.qryPostcodes.FieldByName('PCODE').AsString;
  end;
end;

procedure TfrmCreditorNew.edCreditorCodeEnter(Sender: TObject);
var
  sCreditorCode : string;
  sTmp : string;
  bTakeFirst : Boolean;
  iCtr : Integer;
begin
  if edCreditorCode.Text = '' then
  begin
    // Create the Creditor Code
    sCreditorCode := '';
    if qryCodeRules.FieldByName('CREDITORCODE').AsString = 'N' then
    begin
      // Use the system number
      qryCreditorCheck.Close;
      qryCreditorCheck.SQL.Text := 'SELECT NCREDITOR FROM SEQNUMS';
      qryCreditorCheck.Open;
      sCreditorCode := IntToStr(qryCreditorCheck.FieldByName('NCREDITOR').AsInteger);
      qryCreditorCheck.Close;
      // and pad it
      if Length(sCreditorCode) < qryCodeRules.FieldByName('CREDITORPAD').AsInteger then
        sCreditorCode := Copy('000000' + sCreditorCode, Length(sCreditorCode) + 7 - qryCodeRules.FieldByName('CREDITORPAD').AsInteger, qryCodeRules.FieldByName('CREDITORPAD').AsInteger);

    end else if qryCodeRules.FieldByName('CREDITORCODE').AsString = 'A' then
    begin
      // We are making a partial name
      bTakeFirst := True;
      if (qryCodeRules.FieldByName('CREDITORACRONYM').AsString = 'Y') and (Pos(' ', tbName.Text) > 0) then
      begin
        bTakeFirst := False;
        sCreditorCode := Uppercase(Copy(tbName.Text, 1, 1));
        sTmp := tbName.Text;
        // Strip the apostrophes
        while Pos('''', sTmp) > 0 do
          sTmp := Copy(sTmp, 1, Pos('''', sTmp) - 1) + Copy(sTmp, Pos('''', sTmp) + 1, 99);
        iCtr := 1;
        while (Pos(' ', sTmp) > 0) and (iCtr < qryCodeRules.FieldByName('CREDITORLENGTH').AsInteger) do
        begin
          sTmp := Copy(sTmp, Pos(' ', sTmp) + 1, 99);
          sCreditorCode := sCreditorCode + Uppercase(Copy(sTmp, 1, 1));
          iCtr := iCtr + 1;
        end;
        if Length(sCreditorCode) < qryCodeRules.FieldByName('CREDITORLENGTH').AsInteger then
          sCreditorCode := Uppercase(Copy(tbName.Text, 1, qryCodeRules.FieldByName('CREDITORLENGTH').AsInteger - Length(sCreditorCode) + 1) + Copy(sCreditorCode, 2, qryCodeRules.FieldByName('CREDITORLENGTH').AsInteger));
      end;

      if bTakeFirst then
      begin
        sTmp := tbName.Text;
        // Strip the apostrophes
        while Pos('''', sTmp) > 0 do
          sTmp := Copy(sTmp, 1, Pos('''', sTmp) - 1) + Copy(sTmp, Pos('''', sTmp) + 1, 99);

        sCreditorCode := Uppercase(Copy(sTmp, 1, qryCodeRules.FieldByName('CREDITORLENGTH').AsInteger));
      end;

      // Find the smallest suffixed client code number with this prefix
      qryCreditorCheck.Close;
      qryCreditorCheck.SQL.Text := 'SELECT MAX(CODE) AS MAXCODE FROM CREDITOR WHERE CODE LIKE ''' + sCreditorCode + '%''';
      qryCreditorCheck.Open;
      if qryCreditorCheck.FieldByName('MAXCODE').AsString <> '' then
        sCreditorCode := NextRefno(qryCreditorCheck.FieldByName('MAXCODE').AsString)
      else
      begin
        // and pad it
        sTmp := Copy('0000001', 8 - qryCodeRules.FieldByName('CREDITORPAD').AsInteger, qryCodeRules.FieldByName('CREDITORPAD').AsInteger);
        sCreditorCode := sCreditorCode + sTmp;
      end;
    end;

    edCreditorCode.Text := sCreditorCode;
  end;
end;

procedure TfrmCreditorNew.edCreditorCodeExit(Sender: TObject);
begin
  if edCreditorCode.Text <> '' then
  begin
    qryCreditorCheck.Close;
    qryCreditorCheck.SQL.Text := 'SELECT SEARCH FROM CREDITOR WHERE CODE = ''' + edCreditorCode.Text + '''';
    qryCreditorCheck.Open;
    if not qryCreditorCheck.IsEmpty then
    begin
      MsgErr('Existing Creditor "' + qryCreditorCheck.FieldByName('SEARCH').AsString + '" has code "' + edCreditorCode.Text + '" already');
      edCreditorCode.SetFocus;
    end;
    qryCreditorCheck.Close;
  end;
end;

end.

